	.file	"c-common.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 c-common.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	parse_in,8,8
	.comm	c_language,4,4
	.comm	c_global_trees,256,32
	.comm	flag_no_builtin,4,4
	.comm	flag_no_nonansi_builtin,4,4
	.comm	flag_short_double,4,4
	.comm	flag_short_wchar,4,4
	.comm	warn_sequence_point,4,4
	.globl	warn_div_by_zero
	.data
	.align 4
	.type	warn_div_by_zero, @object
	.size	warn_div_by_zero, 4
warn_div_by_zero:
	.long	1
	.comm	ridpointers,8,8
	.comm	make_fname_decl,8,8
	.comm	lang_statement_code_p,8,8
	.comm	lang_expand_function_end,8,8
	.comm	skip_evaluation,4,4
	.globl	fname_vars
	.section	.rodata
	.align 32
	.type	fname_vars, @object
	.size	fname_vars, 64
fname_vars:
# decl:
	.quad	c_global_trees+232
# rid:
	.long	64
# pretty:
	.long	0
# decl:
	.quad	c_global_trees+216
# rid:
	.long	62
# pretty:
	.long	0
# decl:
	.quad	c_global_trees+224
# rid:
	.long	63
# pretty:
	.long	1
# decl:
	.quad	0
# rid:
	.long	0
# pretty:
	.long	0
	.local	if_stack
	.comm	if_stack,8,8
	.local	if_stack_space
	.comm	if_stack_space,4,4
	.local	if_stack_pointer
	.comm	if_stack_pointer,4,4
	.text
	.globl	c_expand_start_cond
	.type	c_expand_start_cond, @function
c_expand_start_cond:
.LFB2:
	.file 1 "c-common.c"
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# cond, cond
	movl	%esi, -12(%rbp)	# compstmt_count, compstmt_count
	movq	%rdx, -24(%rbp)	# if_stmt, if_stmt
	.loc 1 286 0
	movl	if_stack_space(%rip), %eax	# if_stack_space, if_stack_space.0
	testl	%eax, %eax	# if_stack_space.0
	jne	.L2	#,
	.loc 1 288 0
	movl	$10, if_stack_space(%rip)	#, if_stack_space
	.loc 1 289 0
	movl	$320, %edi	#,
	call	xmalloc	#
	movq	%rax, if_stack(%rip)	# if_stack.1, if_stack
	jmp	.L3	#
.L2:
	.loc 1 291 0
	movl	if_stack_space(%rip), %edx	# if_stack_space, if_stack_space.2
	movl	if_stack_pointer(%rip), %eax	# if_stack_pointer, if_stack_pointer.3
	cmpl	%eax, %edx	# if_stack_pointer.3, if_stack_space.2
	jne	.L3	#,
	.loc 1 293 0
	movl	if_stack_space(%rip), %eax	# if_stack_space, if_stack_space.4
	addl	$10, %eax	#, if_stack_space.5
	movl	%eax, if_stack_space(%rip)	# if_stack_space.5, if_stack_space
	.loc 1 294 0
	movl	if_stack_space(%rip), %eax	# if_stack_space, if_stack_space.6
	cltq
	salq	$5, %rax	#, D.19563
	movq	%rax, %rdx	# D.19563, D.19563
	movq	if_stack(%rip), %rax	# if_stack, if_stack.7
	movq	%rdx, %rsi	# D.19563,
	movq	%rax, %rdi	# if_stack.7,
	call	xrealloc	#
	movq	%rax, if_stack(%rip)	# if_stack.8, if_stack
.L3:
	.loc 1 297 0
	movq	-24(%rbp), %rax	# if_stmt, tmp100
	movq	-8(%rbp), %rdx	# cond, tmp101
	movq	%rdx, 32(%rax)	# tmp101, if_stmt_12(D)->exp.operands
	.loc 1 298 0
	movq	-24(%rbp), %rax	# if_stmt, tmp102
	movq	%rax, %rdi	# tmp102,
	call	add_stmt	#
	.loc 1 301 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.9
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.10
	movslq	%edx, %rdx	# if_stack_pointer.10, D.19563
	salq	$5, %rdx	#, D.19563
	addq	%rax, %rdx	# if_stack.9, D.19564
	movl	-12(%rbp), %eax	# compstmt_count, tmp103
	movl	%eax, (%rdx)	# tmp103, _18->compstmt_count
	.loc 1 302 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.11
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.12
	movslq	%edx, %rdx	# if_stack_pointer.12, D.19563
	salq	$5, %rdx	#, D.19563
	addq	%rax, %rdx	# if_stack.11, D.19564
	movq	input_filename(%rip), %rax	# input_filename, input_filename.13
	movq	%rax, 8(%rdx)	# input_filename.13, _24->file
	.loc 1 303 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.14
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.15
	movslq	%edx, %rdx	# if_stack_pointer.15, D.19563
	salq	$5, %rdx	#, D.19563
	addq	%rax, %rdx	# if_stack.14, D.19564
	movl	lineno(%rip), %eax	# lineno, lineno.16
	movl	%eax, 4(%rdx)	# lineno.16, _30->line
	.loc 1 304 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.17
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.18
	movslq	%edx, %rdx	# if_stack_pointer.18, D.19563
	salq	$5, %rdx	#, D.19563
	addq	%rdx, %rax	# D.19563, D.19564
	movl	$0, 16(%rax)	#, _36->needs_warning
	.loc 1 305 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.19
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.20
	movslq	%edx, %rdx	# if_stack_pointer.20, D.19563
	salq	$5, %rdx	#, D.19563
	addq	%rax, %rdx	# if_stack.19, D.19564
	movq	-24(%rbp), %rax	# if_stmt, tmp104
	movq	%rax, 24(%rdx)	# tmp104, _41->if_stmt
	.loc 1 306 0
	movl	if_stack_pointer(%rip), %eax	# if_stack_pointer, if_stack_pointer.21
	addl	$1, %eax	#, if_stack_pointer.22
	movl	%eax, if_stack_pointer(%rip)	# if_stack_pointer.22, if_stack_pointer
	.loc 1 307 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	c_expand_start_cond, .-c_expand_start_cond
	.globl	c_finish_then
	.type	c_finish_then, @function
c_finish_then:
.LFB3:
	.loc 1 313 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 314 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.23
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.24
	movslq	%edx, %rdx	# if_stack_pointer.24, D.19565
	salq	$5, %rdx	#, D.19565
	subq	$32, %rdx	#, D.19566
	addq	%rdx, %rax	# D.19566, D.19567
	movq	24(%rax), %rax	# _6->if_stmt, tmp67
	movq	%rax, -8(%rbp)	# tmp67, if_stmt
	.loc 1 315 0
	movq	-8(%rbp), %rax	# if_stmt, tmp68
	movq	(%rax), %rdx	# if_stmt_7->common.chain, D.19568
	movq	-8(%rbp), %rax	# if_stmt, tmp69
	movq	%rdx, 40(%rax)	# D.19568, if_stmt_7->exp.operands
	movq	-8(%rbp), %rax	# if_stmt, tmp70
	movq	$0, (%rax)	#, if_stmt_7->common.chain
	call	current_stmt_tree	#
	movq	-8(%rbp), %rdx	# if_stmt, tmp71
	movq	%rdx, (%rax)	# tmp71, _9->x_last_stmt
	.loc 1 316 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	c_finish_then, .-c_finish_then
	.section	.rodata
	.align 8
.LC0:
	.string	"suggest explicit braces to avoid ambiguous `else'"
	.text
	.globl	c_expand_end_cond
	.type	c_expand_end_cond, @function
c_expand_end_cond:
.LFB4:
	.loc 1 323 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 324 0
	movl	if_stack_pointer(%rip), %eax	# if_stack_pointer, if_stack_pointer.25
	subl	$1, %eax	#, if_stack_pointer.26
	movl	%eax, if_stack_pointer(%rip)	# if_stack_pointer.26, if_stack_pointer
	.loc 1 325 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.27
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.28
	movslq	%edx, %rdx	# if_stack_pointer.28, D.19570
	salq	$5, %rdx	#, D.19570
	addq	%rdx, %rax	# D.19570, D.19571
	movl	16(%rax), %eax	# _7->needs_warning, D.19572
	testl	%eax, %eax	# D.19572
	je	.L6	#,
	.loc 1 327 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.29
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.30
	movslq	%edx, %rdx	# if_stack_pointer.30, D.19570
	salq	$5, %rdx	#, D.19570
	addq	%rdx, %rax	# D.19570, D.19571
	.loc 1 326 0
	movl	4(%rax), %ecx	# _13->line, D.19572
	movq	if_stack(%rip), %rax	# if_stack, if_stack.31
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.32
	movslq	%edx, %rdx	# if_stack_pointer.32, D.19570
	salq	$5, %rdx	#, D.19570
	addq	%rdx, %rax	# D.19570, D.19571
	movq	8(%rax), %rax	# _19->file, D.19573
	movl	$.LC0, %edx	#,
	movl	%ecx, %esi	# D.19572,
	movq	%rax, %rdi	# D.19573,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
.L6:
	.loc 1 329 0
	call	current_stmt_tree	#
	movq	$0, 8(%rax)	#, _21->x_last_expr_type
	.loc 1 330 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	c_expand_end_cond, .-c_expand_end_cond
	.globl	c_expand_start_else
	.type	c_expand_start_else, @function
c_expand_start_else:
.LFB5:
	.loc 1 337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 340 0
	movl	warn_parentheses(%rip), %eax	# warn_parentheses, warn_parentheses.33
	testl	%eax, %eax	# warn_parentheses.33
	je	.L8	#,
	.loc 1 341 0
	movl	if_stack_pointer(%rip), %eax	# if_stack_pointer, if_stack_pointer.34
	cmpl	$1, %eax	#, if_stack_pointer.34
	jle	.L8	#,
	.loc 1 342 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.35
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.36
	movslq	%edx, %rdx	# if_stack_pointer.36, D.19576
	salq	$5, %rdx	#, D.19576
	subq	$32, %rdx	#, D.19577
	addq	%rdx, %rax	# D.19577, D.19578
	movl	(%rax), %edx	# _8->compstmt_count, D.19579
	.loc 1 343 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.37
	movl	if_stack_pointer(%rip), %ecx	# if_stack_pointer, if_stack_pointer.38
	movslq	%ecx, %rcx	# if_stack_pointer.38, D.19576
	salq	$5, %rcx	#, D.19576
	subq	$64, %rcx	#, D.19577
	addq	%rcx, %rax	# D.19577, D.19578
	movl	(%rax), %eax	# _15->compstmt_count, D.19579
	.loc 1 342 0
	cmpl	%eax, %edx	# D.19579, D.19579
	jne	.L8	#,
	.loc 1 344 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.39
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.40
	movslq	%edx, %rdx	# if_stack_pointer.40, D.19576
	salq	$5, %rdx	#, D.19576
	subq	$64, %rdx	#, D.19577
	addq	%rdx, %rax	# D.19577, D.19578
	movl	$1, 16(%rax)	#, _22->needs_warning
.L8:
	.loc 1 349 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.41
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.42
	movslq	%edx, %rdx	# if_stack_pointer.42, D.19576
	salq	$5, %rdx	#, D.19576
	subq	$32, %rdx	#, D.19577
	addq	%rdx, %rax	# D.19577, D.19578
	movl	$0, 16(%rax)	#, _28->needs_warning
	.loc 1 350 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.43
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.44
	movslq	%edx, %rdx	# if_stack_pointer.44, D.19576
	salq	$5, %rdx	#, D.19576
	subq	$32, %rdx	#, D.19577
	addq	%rdx, %rax	# D.19577, D.19578
	movl	(%rax), %edx	# _34->compstmt_count, D.19579
	subl	$1, %edx	#, D.19579
	movl	%edx, (%rax)	# D.19579, _34->compstmt_count
	.loc 1 351 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	c_expand_start_else, .-c_expand_start_else
	.globl	c_finish_else
	.type	c_finish_else, @function
c_finish_else:
.LFB6:
	.loc 1 357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 358 0
	movq	if_stack(%rip), %rax	# if_stack, if_stack.45
	movl	if_stack_pointer(%rip), %edx	# if_stack_pointer, if_stack_pointer.46
	movslq	%edx, %rdx	# if_stack_pointer.46, D.19580
	salq	$5, %rdx	#, D.19580
	subq	$32, %rdx	#, D.19581
	addq	%rdx, %rax	# D.19581, D.19582
	movq	24(%rax), %rax	# _6->if_stmt, tmp67
	movq	%rax, -8(%rbp)	# tmp67, if_stmt
	.loc 1 359 0
	movq	-8(%rbp), %rax	# if_stmt, tmp68
	movq	(%rax), %rdx	# if_stmt_7->common.chain, D.19583
	movq	-8(%rbp), %rax	# if_stmt, tmp69
	movq	%rdx, 48(%rax)	# D.19583, if_stmt_7->exp.operands
	movq	-8(%rbp), %rax	# if_stmt, tmp70
	movq	$0, (%rax)	#, if_stmt_7->common.chain
	call	current_stmt_tree	#
	movq	-8(%rbp), %rdx	# if_stmt, tmp71
	movq	%rdx, (%rax)	# tmp71, _9->x_last_stmt
	.loc 1 360 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	c_finish_else, .-c_finish_else
	.globl	c_begin_if_stmt
	.type	c_begin_if_stmt, @function
c_begin_if_stmt:
.LFB7:
	.loc 1 372 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 374 0
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$155, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, -8(%rbp)	# tmp61, r
	.loc 1 375 0
	movq	-8(%rbp), %rax	# r, D.19585
	.loc 1 376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	c_begin_if_stmt, .-c_begin_if_stmt
	.globl	c_begin_while_stmt
	.type	c_begin_while_stmt, @function
c_begin_while_stmt:
.LFB8:
	.loc 1 388 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 390 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$157, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, -8(%rbp)	# tmp61, r
	.loc 1 391 0
	movq	-8(%rbp), %rax	# r, D.19586
	.loc 1 392 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	c_begin_while_stmt, .-c_begin_while_stmt
	.globl	c_finish_while_stmt_cond
	.type	c_finish_while_stmt_cond, @function
c_finish_while_stmt_cond:
.LFB9:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# cond, cond
	movq	%rsi, -16(%rbp)	# while_stmt, while_stmt
	.loc 1 399 0
	movq	-16(%rbp), %rax	# while_stmt, tmp59
	movq	-8(%rbp), %rdx	# cond, tmp60
	movq	%rdx, 32(%rax)	# tmp60, while_stmt_1(D)->exp.operands
	.loc 1 400 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	c_finish_while_stmt_cond, .-c_finish_while_stmt_cond
	.globl	start_fname_decls
	.type	start_fname_decls, @function
start_fname_decls:
.LFB10:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 408 0
	movq	$0, -16(%rbp)	#, saved
	.loc 1 410 0
	movl	$0, -20(%rbp)	#, ix
	jmp	.L16	#
.L18:
.LBB2:
	.loc 1 412 0
	movl	-20(%rbp), %eax	# ix, tmp67
	salq	$4, %rax	#, tmp68
	addq	$fname_vars, %rax	#, tmp69
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19587
	movq	(%rax), %rax	# *_7, tmp70
	movq	%rax, -8(%rbp)	# tmp70, decl
	.loc 1 414 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L17	#,
	.loc 1 416 0
	movl	-20(%rbp), %eax	# ix, D.19588
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19588,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.19589
	movq	-16(%rbp), %rdx	# saved, tmp71
	movq	-8(%rbp), %rax	# decl, tmp72
	movq	%rcx, %rsi	# D.19589,
	movq	%rax, %rdi	# tmp72,
	call	tree_cons	#
	movq	%rax, -16(%rbp)	# tmp73, saved
	.loc 1 417 0
	movl	-20(%rbp), %eax	# ix, tmp74
	salq	$4, %rax	#, tmp75
	addq	$fname_vars, %rax	#, tmp76
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19587
	movq	$0, (%rax)	#, *_12
.L17:
.LBE2:
	.loc 1 410 0
	addl	$1, -20(%rbp)	#, ix
.L16:
	.loc 1 410 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# ix, tmp77
	salq	$4, %rax	#, tmp78
	addq	$fname_vars, %rax	#, tmp79
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19587
	testq	%rax, %rax	# D.19587
	jne	.L18	#,
	.loc 1 420 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, saved
	jne	.L19	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movq	c_global_trees+240(%rip), %rax	# c_global_trees, D.19589
	testq	%rax, %rax	# D.19589
	je	.L15	#,
.L19:
	.loc 1 423 0 is_stmt 1
	movq	c_global_trees+240(%rip), %rdx	# c_global_trees, D.19589
	movq	-16(%rbp), %rax	# saved, tmp80
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	tree_cons	#
	movq	%rax, c_global_trees+240(%rip)	# D.19589, c_global_trees
.L15:
	.loc 1 425 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	start_fname_decls, .-start_fname_decls
	.globl	finish_fname_decls
	.type	finish_fname_decls, @function
finish_fname_decls:
.LFB11:
	.loc 1 436 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 438 0
	movq	$0, -32(%rbp)	#, body
	.loc 1 439 0
	movq	c_global_trees+240(%rip), %rax	# c_global_trees, tmp71
	movq	%rax, -24(%rbp)	# tmp71, stack
	.loc 1 441 0
	jmp	.L22	#
.L24:
	.loc 1 442 0 discriminator 1
	movq	-24(%rbp), %rax	# stack, tmp72
	movq	32(%rax), %rax	# stack_3->list.value, D.19590
	movq	-32(%rbp), %rdx	# body, tmp73
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# D.19590,
	call	chainon	#
	movq	%rax, -32(%rbp)	# tmp74, body
	.loc 1 441 0 discriminator 1
	movq	-24(%rbp), %rax	# stack, tmp75
	movq	(%rax), %rax	# stack_3->common.chain, tmp76
	movq	%rax, -24(%rbp)	# tmp76, stack
.L22:
	cmpq	$0, -24(%rbp)	#, stack
	je	.L23	#,
	.loc 1 441 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# stack, tmp77
	movq	32(%rax), %rax	# stack_3->list.value, D.19590
	testq	%rax, %rax	# D.19590
	jne	.L24	#,
.L23:
	.loc 1 444 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, body
	je	.L25	#,
	.loc 1 448 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.47
	movq	168(%rax), %rax	# current_function_decl.47_12->decl.saved_tree, D.19590
	.loc 1 447 0
	movq	(%rax), %rdx	# _13->common.chain, D.19590
	movq	-32(%rbp), %rax	# body, tmp78
	movq	%rdx, %rsi	# D.19590,
	movq	%rax, %rdi	# tmp78,
	call	chainon	#
	movq	%rax, -32(%rbp)	# tmp79, body
	.loc 1 449 0
	movq	-32(%rbp), %rax	# body, tmp80
	movq	%rax, %rsi	# tmp80,
	movl	$153, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, -32(%rbp)	# tmp81, body
	.loc 1 451 0
	movq	-32(%rbp), %rax	# body, tmp82
	movzbl	19(%rax), %edx	#, tmp85
	orl	$1, %edx	#, tmp86
	movb	%dl, 19(%rax)	# tmp86,
	.loc 1 452 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.48
	movq	168(%rax), %rax	# current_function_decl.48_17->decl.saved_tree, D.19590
	movq	-32(%rbp), %rdx	# body, tmp87
	movq	%rdx, (%rax)	# tmp87, _18->common.chain
.L25:
	.loc 1 455 0
	movl	$0, -40(%rbp)	#, ix
	jmp	.L26	#
.L27:
	.loc 1 456 0 discriminator 2
	movl	-40(%rbp), %eax	# ix, tmp88
	salq	$4, %rax	#, tmp89
	addq	$fname_vars, %rax	#, tmp90
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19591
	movq	$0, (%rax)	#, *_21
	.loc 1 455 0 discriminator 2
	addl	$1, -40(%rbp)	#, ix
.L26:
	.loc 1 455 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# ix, tmp91
	salq	$4, %rax	#, tmp92
	addq	$fname_vars, %rax	#, tmp93
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19591
	testq	%rax, %rax	# D.19591
	jne	.L27	#,
	.loc 1 458 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, stack
	je	.L28	#,
.LBB3:
	.loc 1 463 0
	movq	-24(%rbp), %rax	# stack, tmp94
	movq	24(%rax), %rax	# stack_3->list.purpose, tmp95
	movq	%rax, -16(%rbp)	# tmp95, saved
	jmp	.L29	#
.L30:
.LBB4:
	.loc 1 465 0 discriminator 2
	movq	-16(%rbp), %rax	# saved, tmp96
	movq	24(%rax), %rax	# saved_5->list.purpose, tmp97
	movq	%rax, -8(%rbp)	# tmp97, decl
	.loc 1 466 0 discriminator 2
	movq	-16(%rbp), %rax	# saved, tmp98
	movq	32(%rax), %rax	# saved_5->list.value, D.19590
	movq	32(%rax), %rax	# _25->int_cst.int_cst.low, D.19592
	movl	%eax, -36(%rbp)	# D.19592, ix
	.loc 1 468 0 discriminator 2
	movl	-36(%rbp), %eax	# ix, tmp99
	salq	$4, %rax	#, tmp100
	addq	$fname_vars, %rax	#, tmp101
	movq	(%rax), %rax	# fname_vars[ix_27].decl, D.19591
	movq	-8(%rbp), %rdx	# decl, tmp102
	movq	%rdx, (%rax)	# tmp102, *_28
.LBE4:
	.loc 1 463 0 discriminator 2
	movq	-16(%rbp), %rax	# saved, tmp103
	movq	(%rax), %rax	# saved_5->common.chain, tmp104
	movq	%rax, -16(%rbp)	# tmp104, saved
.L29:
	.loc 1 463 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, saved
	jne	.L30	#,
	.loc 1 470 0 is_stmt 1
	movq	-24(%rbp), %rax	# stack, tmp105
	movq	(%rax), %rax	# stack_3->common.chain, tmp106
	movq	%rax, -24(%rbp)	# tmp106, stack
.L28:
.LBE3:
	.loc 1 472 0
	movq	-24(%rbp), %rax	# stack, tmp107
	movq	%rax, c_global_trees+240(%rip)	# tmp107, c_global_trees
	.loc 1 473 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	finish_fname_decls, .-finish_fname_decls
	.section	.rodata
.LC1:
	.string	"top level"
.LC2:
	.string	""
	.text
	.globl	fname_as_string
	.type	fname_as_string, @function
fname_as_string:
.LFB12:
	.loc 1 481 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pretty_p, pretty_p
	.loc 1 482 0
	movq	$0, -8(%rbp)	#, name
	.loc 1 484 0
	cmpl	$0, -20(%rbp)	#, pretty_p
	je	.L32	#,
	.loc 1 486 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.50
	.loc 1 487 0
	testq	%rax, %rax	# current_function_decl.50
	je	.L33	#,
	.loc 1 486 0
	movq	decl_printable_name(%rip), %rax	# decl_printable_name, decl_printable_name.51
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.52
	.loc 1 487 0
	movl	$2, %esi	#,
	movq	%rdx, %rdi	# current_function_decl.52,
	call	*%rax	# decl_printable_name.51
	jmp	.L34	#
.L33:
	.loc 1 487 0 is_stmt 0 discriminator 1
	movl	$.LC1, %eax	#, iftmp.49
.L34:
	.loc 1 485 0 is_stmt 1 discriminator 1
	movq	%rax, -8(%rbp)	# iftmp.49, name
	jmp	.L35	#
.L32:
	.loc 1 488 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.53
	testq	%rax, %rax	# current_function_decl.53
	je	.L36	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.54
	movq	72(%rax), %rax	# current_function_decl.54_12->decl.name, D.19593
	testq	%rax, %rax	# D.19593
	je	.L36	#,
	.loc 1 489 0 is_stmt 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.55
	movq	72(%rax), %rax	# current_function_decl.55_14->decl.name, D.19593
	movq	32(%rax), %rax	# _15->identifier.id.str, tmp70
	movq	%rax, -8(%rbp)	# tmp70, name
	jmp	.L35	#
.L36:
	.loc 1 491 0
	movq	$.LC2, -8(%rbp)	#, name
.L35:
	.loc 1 492 0
	movq	-8(%rbp), %rax	# name, D.19594
	.loc 1 493 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fname_as_string, .-fname_as_string
	.globl	fname_string
	.type	fname_string, @function
fname_string:
.LFB13:
	.loc 1 501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# rid, rid
	.loc 1 504 0
	movl	$0, -4(%rbp)	#, ix
	jmp	.L39	#
.L42:
	.loc 1 505 0
	movl	-4(%rbp), %eax	# ix, tmp64
	salq	$4, %rax	#, tmp65
	addq	$fname_vars, %rax	#, tmp66
	movl	8(%rax), %eax	# fname_vars[ix_1].rid, D.19598
	cmpl	-20(%rbp), %eax	# rid, D.19598
	jne	.L40	#,
	.loc 1 506 0
	jmp	.L41	#
.L40:
	.loc 1 504 0
	addl	$1, -4(%rbp)	#, ix
.L39:
	.loc 1 504 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# ix, tmp67
	salq	$4, %rax	#, tmp68
	addq	$fname_vars, %rax	#, tmp69
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19597
	testq	%rax, %rax	# D.19597
	jne	.L42	#,
.L41:
	.loc 1 507 0 is_stmt 1
	movl	-4(%rbp), %eax	# ix, tmp70
	salq	$4, %rax	#, tmp71
	addq	$fname_vars, %rax	#, tmp72
	movl	12(%rax), %eax	# fname_vars[ix_1].pretty, D.19599
	movl	%eax, %edi	# D.19599,
	call	fname_as_string	#
	.loc 1 508 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fname_string, .-fname_string
	.section	.rodata
	.align 8
.LC3:
	.string	"`%s' is not defined outside of function scope"
	.text
	.globl	fname_decl
	.type	fname_decl, @function
fname_decl:
.LFB14:
	.loc 1 521 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# rid, rid
	movq	%rsi, -48(%rbp)	# id, id
	.loc 1 523 0
	movq	$0, -24(%rbp)	#, decl
	.loc 1 525 0
	movl	$0, -28(%rbp)	#, ix
	jmp	.L45	#
.L48:
	.loc 1 526 0
	movl	-28(%rbp), %eax	# ix, tmp74
	salq	$4, %rax	#, tmp75
	addq	$fname_vars, %rax	#, tmp76
	movl	8(%rax), %eax	# fname_vars[ix_1].rid, D.19602
	cmpl	-36(%rbp), %eax	# rid, D.19602
	jne	.L46	#,
	.loc 1 527 0
	jmp	.L47	#
.L46:
	.loc 1 525 0
	addl	$1, -28(%rbp)	#, ix
.L45:
	.loc 1 525 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# ix, tmp77
	salq	$4, %rax	#, tmp78
	addq	$fname_vars, %rax	#, tmp79
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19601
	testq	%rax, %rax	# D.19601
	jne	.L48	#,
.L47:
	.loc 1 529 0 is_stmt 1
	movl	-28(%rbp), %eax	# ix, tmp80
	salq	$4, %rax	#, tmp81
	addq	$fname_vars, %rax	#, tmp82
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19601
	movq	(%rax), %rax	# *_9, tmp83
	movq	%rax, -24(%rbp)	# tmp83, decl
	.loc 1 530 0
	cmpq	$0, -24(%rbp)	#, decl
	jne	.L49	#,
.LBB5:
	.loc 1 532 0
	call	current_stmt_tree	#
	movq	(%rax), %rax	# _11->x_last_stmt, tmp84
	movq	%rax, -16(%rbp)	# tmp84, saved_last_tree
	.loc 1 534 0
	movq	make_fname_decl(%rip), %rax	# make_fname_decl, make_fname_decl.56
	movl	-28(%rbp), %edx	# ix, tmp85
	salq	$4, %rdx	#, tmp86
	addq	$fname_vars, %rdx	#, tmp87
	movl	12(%rdx), %ecx	# fname_vars[ix_1].pretty, D.19604
	movq	-48(%rbp), %rdx	# id, tmp88
	movl	%ecx, %esi	# D.19604,
	movq	%rdx, %rdi	# tmp88,
	call	*%rax	# make_fname_decl.56
	movq	%rax, -24(%rbp)	# tmp89, decl
	.loc 1 535 0
	call	current_stmt_tree	#
	movq	(%rax), %rax	# _17->x_last_stmt, D.19605
	cmpq	-16(%rbp), %rax	# saved_last_tree, D.19605
	je	.L50	#,
.LBB6:
	.loc 1 540 0
	movq	-16(%rbp), %rax	# saved_last_tree, tmp90
	movq	(%rax), %rax	# saved_last_tree_12->common.chain, tmp91
	movq	%rax, -8(%rbp)	# tmp91, stmts
	.loc 1 542 0
	movq	-16(%rbp), %rax	# saved_last_tree, tmp92
	movq	$0, (%rax)	#, saved_last_tree_12->common.chain
	.loc 1 543 0
	call	current_stmt_tree	#
	movq	-16(%rbp), %rdx	# saved_last_tree, tmp93
	movq	%rdx, (%rax)	# tmp93, _20->x_last_stmt
	.loc 1 544 0
	movq	c_global_trees+240(%rip), %rdx	# c_global_trees, D.19605
	movq	-8(%rbp), %rcx	# stmts, tmp94
	movq	-24(%rbp), %rax	# decl, tmp95
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	tree_cons	#
	movq	%rax, c_global_trees+240(%rip)	# D.19605, c_global_trees
.L50:
.LBE6:
	.loc 1 547 0
	movl	-28(%rbp), %eax	# ix, tmp96
	salq	$4, %rax	#, tmp97
	addq	$fname_vars, %rax	#, tmp98
	movq	(%rax), %rax	# fname_vars[ix_1].decl, D.19601
	movq	-24(%rbp), %rdx	# decl, tmp99
	movq	%rdx, (%rax)	# tmp99, *_23
.L49:
.LBE5:
	.loc 1 549 0
	cmpl	$0, -28(%rbp)	#, ix
	jne	.L51	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.57
	testq	%rax, %rax	# current_function_decl.57
	jne	.L51	#,
	.loc 1 550 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp100
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	pedwarn_with_decl	#
.L51:
	.loc 1 552 0
	movq	-24(%rbp), %rax	# decl, D.19606
	.loc 1 553 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fname_decl, .-fname_decl
	.section	.rodata
	.align 8
.LC4:
	.string	"concatenation of string literals with __FUNCTION__ is deprecated"
	.align 8
.LC5:
	.string	"string length `%d' is greater than the length `%d' ISO C%d compilers are required to support"
	.text
	.globl	combine_strings
	.type	combine_strings, @function
combine_strings:
.LFB15:
	.loc 1 562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# strings, strings
	.loc 1 564 0
	movl	$1, -80(%rbp)	#, length
	.loc 1 565 0
	movl	$0, -76(%rbp)	#, wide_length
	.loc 1 566 0
	movl	$0, -72(%rbp)	#, wide_flag
	.loc 1 567 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19608
	movzwl	60(%rax), %eax	# *_30, tmp129
	andw	$511, %ax	#, D.19609
	movzwl	%ax, %eax	# D.19609, D.19610
	leal	7(%rax), %edx	#, tmp131
	testl	%eax, %eax	# tmp130
	cmovs	%edx, %eax	# tmp131,, tmp130
	sarl	$3, %eax	#, tmp132
	movl	%eax, -56(%rbp)	# tmp132, wchar_bytes
	.loc 1 569 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.59
	testl	%eax, %eax	# flag_isoc99.59
	je	.L54	#,
	.loc 1 569 0 is_stmt 0 discriminator 1
	movl	$4095, %eax	#, iftmp.58
	jmp	.L55	#
.L54:
	.loc 1 569 0 discriminator 2
	movl	$509, %eax	#, iftmp.58
.L55:
	.loc 1 569 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.58, nchars_max
	.loc 1 571 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# strings, tmp133
	movq	(%rax), %rax	# strings_38(D)->common.chain, D.19608
	testq	%rax, %rax	# D.19608
	je	.L56	#,
.LBB7:
	.loc 1 579 0
	movq	-88(%rbp), %rax	# strings, tmp134
	movq	%rax, -32(%rbp)	# tmp134, t
	jmp	.L57	#
.L60:
	.loc 1 581 0
	movq	-32(%rbp), %rax	# t, tmp135
	movq	8(%rax), %rdx	# t_2->common.type, D.19608
	movq	c_global_trees+96(%rip), %rax	# c_global_trees, D.19608
	cmpq	%rax, %rdx	# D.19608, D.19608
	jne	.L58	#,
	.loc 1 583 0
	movq	-32(%rbp), %rax	# t, tmp136
	movl	32(%rax), %eax	# t_2->string.length, D.19610
	subl	-56(%rbp), %eax	# wchar_bytes, D.19610
	addl	%eax, -76(%rbp)	# D.19610, wide_length
	.loc 1 584 0
	movl	$1, -72(%rbp)	#, wide_flag
	jmp	.L59	#
.L58:
	.loc 1 588 0
	movq	-32(%rbp), %rax	# t, tmp137
	movl	32(%rax), %eax	# t_2->string.length, D.19610
	subl	$1, %eax	#, D.19610
	addl	%eax, -80(%rbp)	# D.19610, length
	.loc 1 589 0
	movq	-32(%rbp), %rax	# t, tmp138
	movzbl	19(%rax), %eax	# *t_2, D.19611
	andl	$1, %eax	#, D.19611
	testb	%al, %al	# D.19611
	je	.L59	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.60
	testl	%eax, %eax	# in_system_header.60
	jne	.L59	#,
	.loc 1 590 0 is_stmt 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L59:
	.loc 1 579 0
	movq	-32(%rbp), %rax	# t, tmp139
	movq	(%rax), %rax	# t_2->common.chain, tmp140
	movq	%rax, -32(%rbp)	# tmp140, t
.L57:
	.loc 1 579 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, t
	jne	.L60	#,
	.loc 1 596 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, wide_flag
	je	.L61	#,
	.loc 1 597 0
	movl	-80(%rbp), %eax	# length, tmp141
	imull	-56(%rbp), %eax	# wchar_bytes, D.19610
	movl	%eax, %edx	# D.19610, D.19610
	movl	-76(%rbp), %eax	# wide_length, tmp145
	addl	%edx, %eax	# D.19610, tmp144
	movl	%eax, -80(%rbp)	# tmp144, length
.L61:
	.loc 1 599 0
	movl	-80(%rbp), %eax	# length, tmp146
	cltq
	movq	%rax, %rdi	# D.19612,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp147, p
	.loc 1 605 0
	movq	-16(%rbp), %rax	# p, tmp148
	movq	%rax, -24(%rbp)	# tmp148, q
	.loc 1 606 0
	movq	-88(%rbp), %rax	# strings, tmp149
	movq	%rax, -32(%rbp)	# tmp149, t
	jmp	.L62	#
.L71:
.LBB8:
	.loc 1 608 0
	movq	-32(%rbp), %rax	# t, tmp150
	movl	32(%rax), %edx	# t_3->string.length, D.19610
	.loc 1 609 0
	movq	-32(%rbp), %rax	# t, tmp151
	movq	8(%rax), %rcx	# t_3->common.type, D.19608
	movq	c_global_trees+96(%rip), %rax	# c_global_trees, D.19608
	.loc 1 610 0
	cmpq	%rax, %rcx	# D.19608, D.19608
	jne	.L63	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# wchar_bytes, iftmp.61
	jmp	.L64	#
.L63:
	.loc 1 610 0 discriminator 2
	movl	$1, %eax	#, iftmp.61
.L64:
	.loc 1 608 0 is_stmt 1
	subl	%eax, %edx	# iftmp.61, tmp152
	movl	%edx, %eax	# tmp152, tmp152
	movl	%eax, -48(%rbp)	# tmp152, len
	.loc 1 611 0
	movq	-32(%rbp), %rax	# t, tmp153
	movq	8(%rax), %rdx	# t_3->common.type, D.19608
	movq	c_global_trees+96(%rip), %rax	# c_global_trees, D.19608
	cmpq	%rax, %rdx	# D.19608, D.19608
	sete	%al	#, D.19613
	movzbl	%al, %eax	# D.19613, D.19610
	cmpl	-72(%rbp), %eax	# wide_flag, D.19610
	jne	.L65	#,
	.loc 1 613 0
	movl	-48(%rbp), %eax	# len, tmp154
	movslq	%eax, %rdx	# tmp154, D.19612
	movq	-32(%rbp), %rax	# t, tmp155
	movq	40(%rax), %rcx	# t_3->string.pointer, D.19614
	movq	-24(%rbp), %rax	# q, tmp156
	movq	%rcx, %rsi	# D.19614,
	movq	%rax, %rdi	# tmp156,
	call	memcpy	#
	.loc 1 614 0
	movl	-48(%rbp), %eax	# len, tmp157
	cltq
	addq	%rax, -24(%rbp)	# D.19615, q
	jmp	.L66	#
.L65:
.LBB9:
	.loc 1 619 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L67	#
.L70:
	.loc 1 629 0
	movq	-24(%rbp), %rax	# q, q.64
	leaq	1(%rax), %rdx	#, tmp158
	movq	%rdx, -24(%rbp)	# tmp158, q
	movq	-32(%rbp), %rdx	# t, tmp159
	movq	40(%rdx), %rcx	# t_3->string.pointer, D.19614
	movl	-68(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, D.19615
	addq	%rcx, %rdx	# D.19614, D.19614
	movzbl	(%rdx), %edx	# *_79, D.19616
	movb	%dl, (%rax)	# D.19616, *q.64_75
	.loc 1 630 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L68	#
.L69:
	.loc 1 631 0 discriminator 2
	movq	-24(%rbp), %rax	# q, q.65
	leaq	1(%rax), %rdx	#, tmp161
	movq	%rdx, -24(%rbp)	# tmp161, q
	movb	$0, (%rax)	#, *q.65_87
	.loc 1 630 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L68:
	.loc 1 630 0 is_stmt 0 discriminator 1
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19608
	movzwl	60(%rax), %eax	# *_82, tmp164
	andw	$511, %ax	#, D.19609
	movzwl	%ax, %eax	# D.19609, D.19610
	leal	7(%rax), %edx	#, tmp166
	testl	%eax, %eax	# tmp165
	cmovs	%edx, %eax	# tmp166,, tmp165
	sarl	$3, %eax	#, tmp167
	subl	$1, %eax	#, D.19610
	cmpl	-64(%rbp), %eax	# j, D.19610
	jg	.L69	#,
	.loc 1 619 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L67:
	.loc 1 619 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp168
	cmpl	-48(%rbp), %eax	# len, tmp168
	jl	.L70	#,
.L66:
.LBE9:
.LBE8:
	.loc 1 606 0 is_stmt 1
	movq	-32(%rbp), %rax	# t, tmp169
	movq	(%rax), %rax	# t_3->common.chain, tmp170
	movq	%rax, -32(%rbp)	# tmp170, t
.L62:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, t
	jne	.L71	#,
	.loc 1 636 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, wide_flag
	je	.L72	#,
.LBB10:
	.loc 1 639 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 640 0 discriminator 2
	movq	-24(%rbp), %rax	# q, q.66
	leaq	1(%rax), %rdx	#, tmp171
	movq	%rdx, -24(%rbp)	# tmp171, q
	movb	$0, (%rax)	#, *q.66_93
	.loc 1 639 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L73:
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp172
	cmpl	-56(%rbp), %eax	# wchar_bytes, tmp172
	jl	.L74	#,
.LBE10:
	jmp	.L75	#
.L72:
	.loc 1 643 0 is_stmt 1
	movq	-24(%rbp), %rax	# q, tmp173
	movb	$0, (%rax)	#, *q_16
.L75:
	.loc 1 645 0 discriminator 1
	movq	-16(%rbp), %rdx	# p, tmp174
	movl	-80(%rbp), %eax	# length, tmp175
	movq	%rdx, %rsi	# tmp174,
	movl	%eax, %edi	# tmp175,
	call	build_string	#
	movq	%rax, -40(%rbp)	# tmp176, value
	.loc 1 646 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp177
	movq	%rax, %rdi	# tmp177,
	call	free	#
.LBE7:
	jmp	.L76	#
.L56:
	.loc 1 650 0
	movq	-88(%rbp), %rax	# strings, tmp178
	movq	%rax, -40(%rbp)	# tmp178, value
	.loc 1 651 0
	movq	-40(%rbp), %rax	# value, tmp179
	movl	32(%rax), %eax	# value_97->string.length, tmp180
	movl	%eax, -80(%rbp)	# tmp180, length
	.loc 1 652 0
	movq	-40(%rbp), %rax	# value, tmp181
	movq	8(%rax), %rdx	# value_97->common.type, D.19608
	movq	c_global_trees+96(%rip), %rax	# c_global_trees, D.19608
	cmpq	%rax, %rdx	# D.19608, D.19608
	jne	.L76	#,
	.loc 1 653 0
	movl	$1, -72(%rbp)	#, wide_flag
.L76:
	.loc 1 657 0
	cmpl	$0, -72(%rbp)	#, wide_flag
	je	.L77	#,
	.loc 1 657 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# length, tmp184
	cltd
	idivl	-56(%rbp)	# wchar_bytes
	jmp	.L78	#
.L77:
	.loc 1 657 0 discriminator 2
	movl	-80(%rbp), %eax	# length, iftmp.67
.L78:
	.loc 1 657 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.67, nchars
	.loc 1 659 0 is_stmt 1 discriminator 3
	movl	pedantic(%rip), %eax	# pedantic, pedantic.68
	testl	%eax, %eax	# pedantic.68
	je	.L79	#,
	.loc 1 659 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# nchars, tmp185
	subl	$1, %eax	#, D.19610
	cmpl	-52(%rbp), %eax	# nchars_max, D.19610
	jle	.L79	#,
	movl	c_language(%rip), %eax	# c_language, c_language.69
	testl	%eax, %eax	# c_language.69
	jne	.L79	#,
	.loc 1 661 0 is_stmt 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.71
	.loc 1 660 0
	testl	%eax, %eax	# flag_isoc99.71
	je	.L80	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	movl	$99, %eax	#, iftmp.70
	jmp	.L81	#
.L80:
	.loc 1 660 0 discriminator 2
	movl	$89, %eax	#, iftmp.70
.L81:
	.loc 1 660 0 discriminator 3
	movl	-44(%rbp), %edx	# nchars, tmp186
	leal	-1(%rdx), %esi	#, D.19610
	movl	-52(%rbp), %edx	# nchars_max, tmp187
	movl	%eax, %ecx	# iftmp.70,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L79:
	.loc 1 667 0 is_stmt 1
	movl	flag_const_strings(%rip), %eax	# flag_const_strings, flag_const_strings.72
	testl	%eax, %eax	# flag_const_strings.72
	je	.L82	#,
	.loc 1 668 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.73
	testl	%eax, %eax	# flag_traditional.73
	jne	.L82	#,
	.loc 1 668 0 is_stmt 0 discriminator 1
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.74
	testl	%eax, %eax	# flag_writable_strings.74
	jne	.L82	#,
.LBB11:
	.loc 1 671 0 is_stmt 1
	cmpl	$0, -72(%rbp)	#, wide_flag
	je	.L83	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	movq	c_global_trees(%rip), %rax	# c_global_trees, iftmp.75
	jmp	.L84	#
.L83:
	.loc 1 671 0 discriminator 2
	movq	integer_types(%rip), %rax	# integer_types, iftmp.75
.L84:
	.loc 1 670 0 is_stmt 1
	movl	$1, %esi	#,
	movq	%rax, %rdi	# iftmp.75,
	call	build_qualified_type	#
	movq	%rax, -8(%rbp)	# tmp188, elements
	.loc 1 675 0
	movl	-44(%rbp), %eax	# nchars, tmp189
	subl	$1, %eax	#, D.19610
	.loc 1 674 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19612,
	call	build_int_2_wide	#
	movq	%rax, %rdi	# D.19608,
	call	build_index_type	#
	movq	%rax, %rdx	#, D.19608
	movq	-8(%rbp), %rax	# elements, tmp190
	movq	%rdx, %rsi	# D.19608,
	movq	%rax, %rdi	# tmp190,
	call	build_array_type	#
	movq	-40(%rbp), %rdx	# value, tmp191
	movq	%rax, 8(%rdx)	# D.19608, value_1->common.type
.LBE11:
	.loc 1 669 0
	jmp	.L85	#
.L82:
	.loc 1 680 0
	movl	-44(%rbp), %eax	# nchars, tmp192
	subl	$1, %eax	#, D.19610
	.loc 1 679 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19612,
	call	build_int_2_wide	#
	movq	%rax, %rdi	# D.19608,
	call	build_index_type	#
	movq	%rax, %rdx	#, D.19608
	cmpl	$0, -72(%rbp)	#, wide_flag
	je	.L86	#,
	.loc 1 679 0 is_stmt 0 discriminator 1
	movq	c_global_trees(%rip), %rax	# c_global_trees, iftmp.76
	jmp	.L87	#
.L86:
	.loc 1 679 0 discriminator 2
	movq	integer_types(%rip), %rax	# integer_types, iftmp.76
.L87:
	.loc 1 679 0 discriminator 3
	movq	%rdx, %rsi	# D.19608,
	movq	%rax, %rdi	# iftmp.76,
	call	build_array_type	#
	movq	-40(%rbp), %rdx	# value, tmp193
	movq	%rax, 8(%rdx)	# D.19608, value_1->common.type
.L85:
	.loc 1 682 0 is_stmt 1
	movq	-40(%rbp), %rax	# value, tmp194
	movzbl	17(%rax), %edx	#, tmp197
	orl	$2, %edx	#, tmp198
	movb	%dl, 17(%rax)	# tmp198,
	.loc 1 683 0
	movl	flag_writable_strings(%rip), %eax	# flag_writable_strings, flag_writable_strings.77
	testl	%eax, %eax	# flag_writable_strings.77
	sete	%dl	#, D.19613
	movq	-40(%rbp), %rax	# value, tmp199
	andl	$1, %edx	#, tmp201
	movl	%edx, %ecx	# tmp201, tmp202
	sall	$4, %ecx	#, tmp202
	movzbl	17(%rax), %edx	#, tmp203
	andl	$-17, %edx	#, tmp204
	orl	%ecx, %edx	# tmp202, tmp205
	movb	%dl, 17(%rax)	# tmp205,
	.loc 1 684 0
	movq	-40(%rbp), %rax	# value, tmp206
	movzbl	18(%rax), %edx	#, tmp209
	orl	$4, %edx	#, tmp210
	movb	%dl, 18(%rax)	# tmp210,
	.loc 1 685 0
	movq	-40(%rbp), %rax	# value, D.19617
	.loc 1 686 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	combine_strings, .-combine_strings
	.section	.rodata
	.align 8
.LC6:
	.string	"overflow in constant expression"
	.text
	.globl	constant_expression_warning
	.type	constant_expression_warning, @function
constant_expression_warning:
.LFB16:
	.loc 1 704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# value, value
	.loc 1 705 0
	movq	-8(%rbp), %rax	# value, tmp66
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19620
	cmpb	$25, %al	#, D.19620
	je	.L90	#,
	.loc 1 705 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp67
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19620
	cmpb	$26, %al	#, D.19620
	je	.L90	#,
	.loc 1 706 0 is_stmt 1
	movq	-8(%rbp), %rax	# value, tmp68
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19620
	cmpb	$28, %al	#, D.19620
	je	.L90	#,
	.loc 1 707 0
	movq	-8(%rbp), %rax	# value, tmp69
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19620
	cmpb	$27, %al	#, D.19620
	jne	.L89	#,
.L90:
	.loc 1 708 0
	movq	-8(%rbp), %rax	# value, tmp70
	movzbl	18(%rax), %eax	# *value_1(D), D.19620
	andl	$4, %eax	#, D.19620
	testb	%al, %al	# D.19620
	je	.L89	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.78
	testl	%eax, %eax	# pedantic.78
	je	.L89	#,
	.loc 1 709 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L89:
	.loc 1 710 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	constant_expression_warning, .-constant_expression_warning
	.section	.rodata
	.align 8
.LC7:
	.string	"integer overflow in expression"
	.align 8
.LC8:
	.string	"floating point overflow in expression"
.LC9:
	.string	"vector overflow in expression"
	.text
	.globl	overflow_warning
	.type	overflow_warning, @function
overflow_warning:
.LFB17:
	.loc 1 722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# value, value
	.loc 1 723 0
	movq	-8(%rbp), %rax	# value, tmp77
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19622
	cmpb	$25, %al	#, D.19622
	je	.L93	#,
	.loc 1 724 0
	movq	-8(%rbp), %rax	# value, tmp78
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19622
	cmpb	$27, %al	#, D.19622
	jne	.L94	#,
	.loc 1 725 0
	movq	-8(%rbp), %rax	# value, tmp79
	movq	32(%rax), %rax	# value_1(D)->complex.real, D.19623
	movzbl	16(%rax), %eax	# _4->common.code, D.19622
	cmpb	$25, %al	#, D.19622
	jne	.L94	#,
.L93:
	.loc 1 726 0
	movq	-8(%rbp), %rax	# value, tmp80
	movzbl	18(%rax), %eax	# *value_1(D), D.19622
	andl	$8, %eax	#, D.19622
	testb	%al, %al	# D.19622
	je	.L94	#,
	.loc 1 728 0
	movq	-8(%rbp), %rax	# value, tmp81
	movzbl	18(%rax), %edx	#, tmp84
	andl	$-9, %edx	#, tmp85
	movb	%dl, 18(%rax)	# tmp85,
	.loc 1 729 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.79
	testl	%eax, %eax	# skip_evaluation.79
	jne	.L95	#,
	.loc 1 730 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 729 0
	jmp	.L92	#
.L95:
	.loc 1 729 0 is_stmt 0 discriminator 1
	jmp	.L92	#
.L94:
	.loc 1 732 0 is_stmt 1
	movq	-8(%rbp), %rax	# value, tmp86
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19622
	cmpb	$26, %al	#, D.19622
	je	.L97	#,
	.loc 1 733 0
	movq	-8(%rbp), %rax	# value, tmp87
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19622
	cmpb	$27, %al	#, D.19622
	jne	.L98	#,
	.loc 1 734 0
	movq	-8(%rbp), %rax	# value, tmp88
	movq	32(%rax), %rax	# value_1(D)->complex.real, D.19623
	movzbl	16(%rax), %eax	# _11->common.code, D.19622
	cmpb	$26, %al	#, D.19622
	jne	.L98	#,
.L97:
	.loc 1 735 0
	movq	-8(%rbp), %rax	# value, tmp89
	movzbl	18(%rax), %eax	# *value_1(D), D.19622
	andl	$8, %eax	#, D.19622
	testb	%al, %al	# D.19622
	je	.L98	#,
	.loc 1 737 0
	movq	-8(%rbp), %rax	# value, tmp90
	movzbl	18(%rax), %edx	#, tmp93
	andl	$-9, %edx	#, tmp94
	movb	%dl, 18(%rax)	# tmp94,
	.loc 1 738 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.80
	testl	%eax, %eax	# skip_evaluation.80
	jne	.L99	#,
	.loc 1 739 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 738 0
	jmp	.L92	#
.L99:
	.loc 1 738 0 is_stmt 0 discriminator 1
	jmp	.L92	#
.L98:
	.loc 1 741 0 is_stmt 1
	movq	-8(%rbp), %rax	# value, tmp95
	movzbl	16(%rax), %eax	# value_1(D)->common.code, D.19622
	cmpb	$28, %al	#, D.19622
	jne	.L92	#,
	.loc 1 741 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp96
	movzbl	18(%rax), %eax	# *value_1(D), D.19622
	andl	$8, %eax	#, D.19622
	testb	%al, %al	# D.19622
	je	.L92	#,
	.loc 1 743 0 is_stmt 1
	movq	-8(%rbp), %rax	# value, tmp97
	movzbl	18(%rax), %edx	#, tmp100
	andl	$-9, %edx	#, tmp101
	movb	%dl, 18(%rax)	# tmp101,
	.loc 1 744 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.81
	testl	%eax, %eax	# skip_evaluation.81
	jne	.L92	#,
	.loc 1 745 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L92:
	.loc 1 747 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	overflow_warning, .-overflow_warning
	.section	.rodata
	.align 8
.LC10:
	.string	"large integer implicitly truncated to unsigned type"
	.align 8
.LC11:
	.string	"negative integer implicitly converted to unsigned type"
	.text
	.globl	unsigned_conversion_warning
	.type	unsigned_conversion_warning, @function
unsigned_conversion_warning:
.LFB18:
	.loc 1 757 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# result, result
	movq	%rsi, -16(%rbp)	# operand, operand
	.loc 1 758 0
	movq	-16(%rbp), %rax	# operand, tmp72
	movzbl	16(%rax), %eax	# operand_1(D)->common.code, D.19627
	cmpb	$25, %al	#, D.19627
	jne	.L100	#,
	.loc 1 759 0
	movq	-8(%rbp), %rax	# result, tmp73
	movq	8(%rax), %rax	# result_3(D)->common.type, D.19628
	movzbl	16(%rax), %eax	# _4->common.code, D.19627
	cmpb	$6, %al	#, D.19627
	jne	.L100	#,
	.loc 1 760 0
	movq	-8(%rbp), %rax	# result, tmp74
	movq	8(%rax), %rax	# result_3(D)->common.type, D.19628
	movzbl	17(%rax), %eax	# *_6, D.19627
	andl	$32, %eax	#, D.19627
	testb	%al, %al	# D.19627
	je	.L100	#,
	.loc 1 761 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.82
	testl	%eax, %eax	# skip_evaluation.82
	jne	.L100	#,
	.loc 1 762 0
	movq	-8(%rbp), %rax	# result, tmp75
	movq	8(%rax), %rdx	# result_3(D)->common.type, D.19628
	movq	-16(%rbp), %rax	# operand, tmp76
	movq	%rdx, %rsi	# D.19628,
	movq	%rax, %rdi	# tmp76,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.19629
	jne	.L100	#,
	.loc 1 764 0
	movq	-8(%rbp), %rax	# result, tmp77
	movq	8(%rax), %rax	# result_3(D)->common.type, D.19628
	movq	%rax, %rdi	# D.19628,
	call	signed_type	#
	movq	%rax, %rdx	#, D.19628
	movq	-16(%rbp), %rax	# operand, tmp78
	movq	%rdx, %rsi	# D.19628,
	movq	%rax, %rdi	# tmp78,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.19629
	jne	.L102	#,
	.loc 1 766 0
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L100	#
.L102:
	.loc 1 767 0
	movl	warn_conversion(%rip), %eax	# warn_conversion, warn_conversion.83
	testl	%eax, %eax	# warn_conversion.83
	je	.L100	#,
	.loc 1 768 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L100:
	.loc 1 770 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	unsigned_conversion_warning, .-unsigned_conversion_warning
	.type	constant_fits_type_p, @function
constant_fits_type_p:
.LFB19:
	.loc 1 778 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# type, type
	.loc 1 779 0
	movq	-8(%rbp), %rax	# c, tmp65
	movzbl	16(%rax), %eax	# c_2(D)->common.code, D.19633
	cmpb	$25, %al	#, D.19633
	jne	.L104	#,
	.loc 1 780 0
	movq	-16(%rbp), %rdx	# type, tmp66
	movq	-8(%rbp), %rax	# c, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	int_fits_type_p	#
	jmp	.L105	#
.L104:
	.loc 1 782 0
	movq	-8(%rbp), %rdx	# c, tmp68
	movq	-16(%rbp), %rax	# type, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp70, c
	.loc 1 783 0
	movq	-8(%rbp), %rax	# c, tmp71
	movzbl	18(%rax), %eax	# *c_6, D.19633
	andl	$8, %eax	#, D.19633
	testb	%al, %al	# D.19633
	sete	%al	#, D.19634
	movzbl	%al, %eax	# D.19634, D.19632
.L105:
	.loc 1 784 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	constant_fits_type_p, .-constant_fits_type_p
	.section	.rodata
	.align 8
.LC12:
	.string	"overflow in implicit constant conversion"
	.text
	.globl	convert_and_check
	.type	convert_and_check, @function
convert_and_check:
.LFB20:
	.loc 1 793 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	movq	%rsi, -32(%rbp)	# expr, expr
	.loc 1 794 0
	movq	-32(%rbp), %rdx	# expr, tmp81
	movq	-24(%rbp), %rax	# type, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp83, t
	.loc 1 795 0
	movq	-8(%rbp), %rax	# t, tmp84
	movzbl	16(%rax), %eax	# t_3->common.code, D.19635
	cmpb	$25, %al	#, D.19635
	jne	.L107	#,
	.loc 1 797 0
	movq	-8(%rbp), %rax	# t, tmp85
	movzbl	18(%rax), %eax	# *t_3, D.19635
	andl	$8, %eax	#, D.19635
	testb	%al, %al	# D.19635
	je	.L108	#,
	.loc 1 799 0
	movq	-8(%rbp), %rax	# t, tmp86
	movzbl	18(%rax), %edx	#, tmp89
	andl	$-9, %edx	#, tmp90
	movb	%dl, 18(%rax)	# tmp90,
	.loc 1 803 0
	movq	-32(%rbp), %rax	# expr, tmp91
	movzbl	18(%rax), %eax	# *expr_2(D), tmp94
	shrb	$2, %al	#, D.19636
	andl	$1, %eax	#, D.19636
	movq	-8(%rbp), %rdx	# t, tmp95
	andl	$1, %eax	#, tmp97
	leal	0(,%rax,4), %ecx	#, tmp98
	movzbl	18(%rdx), %eax	#, tmp99
	andl	$-5, %eax	#, tmp100
	orl	%ecx, %eax	# tmp98, tmp101
	movb	%al, 18(%rdx)	# tmp101,
	.loc 1 806 0
	movq	-24(%rbp), %rax	# type, tmp102
	movzbl	17(%rax), %eax	# *type_1(D), tmp105
	shrb	$5, %al	#, D.19636
	andl	$1, %eax	#, D.19636
	movzbl	%al, %edx	# D.19636, D.19637
	movq	-32(%rbp), %rax	# expr, tmp106
	movq	8(%rax), %rax	# expr_2(D)->common.type, D.19638
	movzbl	17(%rax), %eax	# *_10, tmp109
	shrb	$5, %al	#, D.19636
	andl	$1, %eax	#, D.19636
	movzbl	%al, %eax	# D.19636, D.19637
	cmpl	%eax, %edx	# D.19637, D.19637
	jge	.L109	#,
	.loc 1 807 0
	movq	-32(%rbp), %rax	# expr, tmp110
	movq	8(%rax), %rax	# expr_2(D)->common.type, D.19638
	movzbl	16(%rax), %eax	# _13->common.code, D.19635
	cmpb	$6, %al	#, D.19635
	jne	.L109	#,
	.loc 1 808 0
	movq	-24(%rbp), %rax	# type, tmp111
	movzwl	60(%rax), %eax	# *type_1(D), tmp114
	andw	$511, %ax	#, D.19639
	movl	%eax, %edx	# D.19639, D.19639
	movq	-32(%rbp), %rax	# expr, tmp115
	movq	8(%rax), %rax	# expr_2(D)->common.type, D.19638
	movzwl	60(%rax), %eax	# *_16, tmp118
	andw	$511, %ax	#, D.19639
	.loc 1 806 0
	cmpw	%ax, %dx	# D.19639, D.19639
	je	.L107	#,
.L109:
	.loc 1 811 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.84
	testl	%eax, %eax	# pedantic.84
	jne	.L111	#,
	.loc 1 812 0
	movq	-24(%rbp), %rax	# type, tmp119
	movzbl	17(%rax), %eax	# *type_1(D), D.19635
	andl	$32, %eax	#, D.19635
	testb	%al, %al	# D.19635
	jne	.L111	#,
	.loc 1 813 0
	movq	-24(%rbp), %rax	# type, tmp120
	movq	%rax, %rdi	# tmp120,
	call	unsigned_type	#
	movq	%rax, %rdx	#, D.19638
	movq	-32(%rbp), %rax	# expr, tmp121
	movq	%rdx, %rsi	# D.19638,
	movq	%rax, %rdi	# tmp121,
	call	constant_fits_type_p	#
	testl	%eax, %eax	# D.19637
	jne	.L107	#,
.L111:
	.loc 1 814 0
	movl	skip_evaluation(%rip), %eax	# skip_evaluation, skip_evaluation.85
	testl	%eax, %eax	# skip_evaluation.85
	jne	.L107	#,
	.loc 1 815 0
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L107	#
.L108:
	.loc 1 818 0
	movq	-32(%rbp), %rdx	# expr, tmp122
	movq	-8(%rbp), %rax	# t, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	unsigned_conversion_warning	#
.L107:
	.loc 1 820 0
	movq	-8(%rbp), %rax	# t, D.19640
	.loc 1 821 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	convert_and_check, .-convert_and_check
	.local	tlist_obstack
	.comm	tlist_obstack,88,32
	.local	tlist_firstobj
	.comm	tlist_firstobj,8,8
	.local	warned_ids
	.comm	warned_ids,8,8
	.local	save_expr_cache
	.comm	save_expr_cache,8,8
	.type	new_tlist, @function
new_tlist:
.LFB21:
	.loc 1 869 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# next, next
	movq	%rsi, -64(%rbp)	# t, t
	movq	%rdx, -72(%rbp)	# writer, writer
.LBB12:
	.loc 1 871 0
	movq	$tlist_obstack, -40(%rbp)	#, __h
.LBB13:
	movq	-40(%rbp), %rax	# __h, tmp95
	movq	%rax, -32(%rbp)	# tmp95, __o
	movl	$24, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp96
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.19642
	movq	%rax, %rdx	# D.19642, D.19643
	movq	-32(%rbp), %rax	# __o, tmp97
	movq	24(%rax), %rax	# __o_2->next_free, D.19642
	subq	%rax, %rdx	# D.19643, D.19643
	movl	-44(%rbp), %eax	# __len, tmp98
	cltq
	cmpq	%rax, %rdx	# D.19643, D.19643
	jge	.L114	#,
	.loc 1 871 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp99
	movq	-32(%rbp), %rax	# __o, tmp100
	movl	%edx, %esi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	_obstack_newchunk	#
.L114:
	.loc 1 871 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp101
	movq	24(%rax), %rdx	# __o_2->next_free, D.19642
	movl	-44(%rbp), %eax	# __len, tmp102
	cltq
	addq	%rax, %rdx	# D.19644, D.19642
	movq	-32(%rbp), %rax	# __o, tmp103
	movq	%rdx, 24(%rax)	# D.19642, __o_2->next_free
.LBE13:
.LBB14:
	movq	-40(%rbp), %rax	# __h, tmp104
	movq	%rax, -24(%rbp)	# tmp104, __o1
	movq	-24(%rbp), %rax	# __o1, tmp105
	movq	16(%rax), %rax	# __o1_13->object_base, tmp106
	movq	%rax, -16(%rbp)	# tmp106, value
	movq	-24(%rbp), %rax	# __o1, tmp107
	movq	24(%rax), %rax	# __o1_13->next_free, D.19642
	cmpq	-16(%rbp), %rax	# value, D.19642
	jne	.L115	#,
	.loc 1 871 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp108
	movzbl	80(%rax), %edx	# __o1_13->maybe_empty_object, tmp111
	orl	$2, %edx	#, tmp112
	movb	%dl, 80(%rax)	# tmp112, __o1_13->maybe_empty_object
.L115:
	.loc 1 871 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp113
	movq	24(%rax), %rax	# __o1_13->next_free, D.19642
	movq	%rax, %rdx	# D.19642, D.19643
	movq	-24(%rbp), %rax	# __o1, tmp114
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.19645
	cltq
	addq	%rax, %rdx	# D.19643, D.19643
	movq	-24(%rbp), %rax	# __o1, tmp115
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.19645
	notl	%eax	# D.19645
	cltq
	andq	%rdx, %rax	# D.19643, D.19643
	movq	%rax, %rdx	# D.19643, D.19642
	movq	-24(%rbp), %rax	# __o1, tmp116
	movq	%rdx, 24(%rax)	# D.19642, __o1_13->next_free
	movq	-24(%rbp), %rax	# __o1, tmp117
	movq	24(%rax), %rax	# __o1_13->next_free, D.19642
	movq	%rax, %rdx	# D.19642, D.19643
	movq	-24(%rbp), %rax	# __o1, tmp118
	movq	8(%rax), %rax	# __o1_13->chunk, D.19646
	movq	%rdx, %rcx	# D.19643, D.19643
	subq	%rax, %rcx	# D.19643, D.19643
	movq	-24(%rbp), %rax	# __o1, tmp119
	movq	32(%rax), %rax	# __o1_13->chunk_limit, D.19642
	movq	%rax, %rdx	# D.19642, D.19643
	movq	-24(%rbp), %rax	# __o1, tmp120
	movq	8(%rax), %rax	# __o1_13->chunk, D.19646
	subq	%rax, %rdx	# D.19643, D.19643
	movq	%rdx, %rax	# D.19643, D.19643
	cmpq	%rax, %rcx	# D.19643, D.19643
	jle	.L116	#,
	.loc 1 871 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp121
	movq	32(%rax), %rdx	# __o1_13->chunk_limit, D.19642
	movq	-24(%rbp), %rax	# __o1, tmp122
	movq	%rdx, 24(%rax)	# D.19642, __o1_13->next_free
.L116:
	.loc 1 871 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp123
	movq	24(%rax), %rdx	# __o1_13->next_free, D.19642
	movq	-24(%rbp), %rax	# __o1, tmp124
	movq	%rdx, 16(%rax)	# D.19642, __o1_13->object_base
	movq	-16(%rbp), %rax	# value, D.19647
.LBE14:
.LBE12:
	movq	%rax, -8(%rbp)	# l.86, l
	.loc 1 872 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# l, tmp125
	movq	-56(%rbp), %rdx	# next, tmp126
	movq	%rdx, (%rax)	# tmp126, l_40->next
	.loc 1 873 0 discriminator 2
	movq	-8(%rbp), %rax	# l, tmp127
	movq	-64(%rbp), %rdx	# t, tmp128
	movq	%rdx, 8(%rax)	# tmp128, l_40->expr
	.loc 1 874 0 discriminator 2
	movq	-8(%rbp), %rax	# l, tmp129
	movq	-72(%rbp), %rdx	# writer, tmp130
	movq	%rdx, 16(%rax)	# tmp130, l_40->writer
	.loc 1 875 0 discriminator 2
	movq	-8(%rbp), %rax	# l, D.19648
	.loc 1 876 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	new_tlist, .-new_tlist
	.type	add_tlist, @function
add_tlist:
.LFB22:
	.loc 1 887 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# to, to
	movq	%rsi, -32(%rbp)	# add, add
	movq	%rdx, -40(%rbp)	# exclude_writer, exclude_writer
	movl	%ecx, -44(%rbp)	# copy, copy
	.loc 1 888 0
	jmp	.L119	#
.L125:
.LBB15:
	.loc 1 890 0
	movq	-32(%rbp), %rax	# add, tmp65
	movq	(%rax), %rax	# add_1->next, tmp66
	movq	%rax, -8(%rbp)	# tmp66, next
	.loc 1 891 0
	cmpl	$0, -44(%rbp)	#, copy
	jne	.L120	#,
	.loc 1 892 0
	movq	-24(%rbp), %rax	# to, tmp67
	movq	(%rax), %rdx	# *to_6(D), D.19649
	movq	-32(%rbp), %rax	# add, tmp68
	movq	%rdx, (%rax)	# D.19649, add_1->next
.L120:
	.loc 1 893 0
	cmpq	$0, -40(%rbp)	#, exclude_writer
	je	.L121	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# add, tmp69
	movq	16(%rax), %rax	# add_1->writer, D.19650
	cmpq	-40(%rbp), %rax	# exclude_writer, D.19650
	je	.L122	#,
.L121:
	.loc 1 894 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, copy
	je	.L123	#,
	.loc 1 894 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# add, tmp70
	movq	16(%rax), %rdx	# add_1->writer, D.19650
	movq	-32(%rbp), %rax	# add, tmp71
	movq	8(%rax), %rcx	# add_1->expr, D.19650
	movq	-24(%rbp), %rax	# to, tmp72
	movq	(%rax), %rax	# *to_6(D), D.19649
	movq	%rcx, %rsi	# D.19650,
	movq	%rax, %rdi	# D.19649,
	call	new_tlist	#
	jmp	.L124	#
.L123:
	.loc 1 894 0 discriminator 2
	movq	-32(%rbp), %rax	# add, iftmp.87
.L124:
	.loc 1 894 0 discriminator 3
	movq	-24(%rbp), %rdx	# to, tmp73
	movq	%rax, (%rdx)	# iftmp.87, *to_6(D)
.L122:
	.loc 1 895 0 is_stmt 1
	movq	-8(%rbp), %rax	# next, tmp74
	movq	%rax, -32(%rbp)	# tmp74, add
.L119:
.LBE15:
	.loc 1 888 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, add
	jne	.L125	#,
	.loc 1 897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	add_tlist, .-add_tlist
	.type	merge_tlist, @function
merge_tlist:
.LFB23:
	.loc 1 910 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# to, to
	movq	%rsi, -48(%rbp)	# add, add
	movl	%edx, -52(%rbp)	# copy, copy
	.loc 1 911 0
	movq	-40(%rbp), %rax	# to, tmp69
	movq	%rax, -24(%rbp)	# tmp69, end
	.loc 1 913 0
	jmp	.L127	#
.L128:
	.loc 1 914 0
	movq	-24(%rbp), %rax	# end, tmp70
	movq	(%rax), %rax	# *end_2, D.19651
	movq	%rax, -24(%rbp)	# D.19651, end
.L127:
	.loc 1 913 0 discriminator 1
	movq	-24(%rbp), %rax	# end, tmp71
	movq	(%rax), %rax	# *end_2, D.19651
	testq	%rax, %rax	# D.19651
	jne	.L128	#,
	.loc 1 916 0
	jmp	.L129	#
.L136:
.LBB16:
	.loc 1 918 0
	movl	$0, -28(%rbp)	#, found
	.loc 1 920 0
	movq	-48(%rbp), %rax	# add, tmp72
	movq	(%rax), %rax	# add_1->next, tmp73
	movq	%rax, -8(%rbp)	# tmp73, next
	.loc 1 922 0
	movq	-40(%rbp), %rax	# to, tmp74
	movq	(%rax), %rax	# *to_9(D), tmp75
	movq	%rax, -16(%rbp)	# tmp75, tmp2
	jmp	.L130	#
.L132:
	.loc 1 923 0
	movq	-16(%rbp), %rax	# tmp2, tmp76
	movq	8(%rax), %rdx	# tmp2_7->expr, D.19652
	movq	-48(%rbp), %rax	# add, tmp77
	movq	8(%rax), %rax	# add_1->expr, D.19652
	cmpq	%rax, %rdx	# D.19652, D.19652
	jne	.L131	#,
	.loc 1 925 0
	movl	$1, -28(%rbp)	#, found
	.loc 1 926 0
	movq	-16(%rbp), %rax	# tmp2, tmp78
	movq	16(%rax), %rax	# tmp2_7->writer, D.19652
	testq	%rax, %rax	# D.19652
	jne	.L131	#,
	.loc 1 927 0
	movq	-48(%rbp), %rax	# add, tmp79
	movq	16(%rax), %rdx	# add_1->writer, D.19652
	movq	-16(%rbp), %rax	# tmp2, tmp80
	movq	%rdx, 16(%rax)	# D.19652, tmp2_7->writer
.L131:
	.loc 1 922 0
	movq	-16(%rbp), %rax	# tmp2, tmp81
	movq	(%rax), %rax	# tmp2_7->next, tmp82
	movq	%rax, -16(%rbp)	# tmp82, tmp2
.L130:
	.loc 1 922 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, tmp2
	jne	.L132	#,
	.loc 1 929 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, found
	jne	.L133	#,
	.loc 1 931 0
	cmpl	$0, -52(%rbp)	#, copy
	jne	.L134	#,
	.loc 1 931 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# add, tmp83
	movq	16(%rax), %rdx	# add_1->writer, D.19652
	movq	-48(%rbp), %rax	# add, tmp84
	movq	8(%rax), %rax	# add_1->expr, D.19652
	movq	%rax, %rsi	# D.19652,
	movl	$0, %edi	#,
	call	new_tlist	#
	jmp	.L135	#
.L134:
	.loc 1 931 0 discriminator 2
	movq	-48(%rbp), %rax	# add, iftmp.88
.L135:
	.loc 1 931 0 discriminator 3
	movq	-24(%rbp), %rdx	# end, tmp85
	movq	%rax, (%rdx)	# iftmp.88, *end_4
	.loc 1 932 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# end, tmp86
	movq	(%rax), %rax	# *end_4, D.19651
	movq	%rax, -24(%rbp)	# D.19651, end
	.loc 1 933 0 discriminator 3
	movq	-24(%rbp), %rax	# end, tmp87
	movq	$0, (%rax)	#, *end_30
.L133:
	.loc 1 935 0
	movq	-8(%rbp), %rax	# next, tmp88
	movq	%rax, -48(%rbp)	# tmp88, add
.L129:
.LBE16:
	.loc 1 916 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, add
	jne	.L136	#,
	.loc 1 937 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	merge_tlist, .-merge_tlist
	.section	.rodata
	.align 8
.LC13:
	.string	"operation on `%s' may be undefined"
	.text
	.type	warn_for_collisions_1, @function
warn_for_collisions_1:
.LFB24:
	.loc 1 948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# written, written
	movq	%rsi, -32(%rbp)	# writer, writer
	movq	%rdx, -40(%rbp)	# list, list
	movl	%ecx, -44(%rbp)	# only_writes, only_writes
	.loc 1 952 0
	movq	warned_ids(%rip), %rax	# warned_ids, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tmp
	jmp	.L138	#
.L141:
	.loc 1 953 0
	movq	-8(%rbp), %rax	# tmp, tmp69
	movq	8(%rax), %rax	# tmp_2->expr, D.19653
	cmpq	-24(%rbp), %rax	# written, D.19653
	jne	.L139	#,
	.loc 1 954 0
	jmp	.L137	#
.L139:
	.loc 1 952 0
	movq	-8(%rbp), %rax	# tmp, tmp70
	movq	(%rax), %rax	# tmp_2->next, tmp71
	movq	%rax, -8(%rbp)	# tmp71, tmp
.L138:
	.loc 1 952 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tmp
	jne	.L141	#,
	.loc 1 956 0 is_stmt 1
	jmp	.L142	#
.L145:
	.loc 1 958 0
	movq	-40(%rbp), %rax	# list, tmp72
	movq	8(%rax), %rax	# list_1->expr, D.19653
	cmpq	-24(%rbp), %rax	# written, D.19653
	jne	.L143	#,
	.loc 1 959 0
	movq	-40(%rbp), %rax	# list, tmp73
	movq	16(%rax), %rax	# list_1->writer, D.19653
	cmpq	-32(%rbp), %rax	# writer, D.19653
	je	.L143	#,
	.loc 1 960 0
	cmpl	$0, -44(%rbp)	#, only_writes
	je	.L144	#,
	.loc 1 960 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# list, tmp74
	movq	16(%rax), %rax	# list_1->writer, D.19653
	testq	%rax, %rax	# D.19653
	je	.L143	#,
.L144:
	.loc 1 962 0 is_stmt 1
	movq	warned_ids(%rip), %rax	# warned_ids, warned_ids.89
	movq	-24(%rbp), %rcx	# written, tmp75
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# warned_ids.89,
	call	new_tlist	#
	movq	%rax, warned_ids(%rip)	# warned_ids.90, warned_ids
	.loc 1 964 0
	movq	-40(%rbp), %rax	# list, tmp76
	movq	8(%rax), %rax	# list_1->expr, D.19653
	movq	72(%rax), %rax	# _15->decl.name, D.19653
	movq	32(%rax), %rax	# _16->identifier.id.str, D.19654
	.loc 1 963 0
	movq	%rax, %rsi	# D.19654,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L143:
	.loc 1 966 0
	movq	-40(%rbp), %rax	# list, tmp77
	movq	(%rax), %rax	# list_1->next, tmp78
	movq	%rax, -40(%rbp)	# tmp78, list
.L142:
	.loc 1 956 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, list
	jne	.L145	#,
.L137:
	.loc 1 968 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	warn_for_collisions_1, .-warn_for_collisions_1
	.type	warn_for_collisions, @function
warn_for_collisions:
.LFB25:
	.loc 1 976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# list, list
	.loc 1 979 0
	movq	-24(%rbp), %rax	# list, tmp62
	movq	%rax, -8(%rbp)	# tmp62, tmp
	jmp	.L147	#
.L149:
	.loc 1 981 0
	movq	-8(%rbp), %rax	# tmp, tmp63
	movq	16(%rax), %rax	# tmp_1->writer, D.19656
	testq	%rax, %rax	# D.19656
	je	.L148	#,
	.loc 1 982 0
	movq	-8(%rbp), %rax	# tmp, tmp64
	movq	16(%rax), %rsi	# tmp_1->writer, D.19656
	movq	-8(%rbp), %rax	# tmp, tmp65
	movq	8(%rax), %rax	# tmp_1->expr, D.19656
	movq	-24(%rbp), %rdx	# list, tmp66
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19656,
	call	warn_for_collisions_1	#
.L148:
	.loc 1 979 0
	movq	-8(%rbp), %rax	# tmp, tmp67
	movq	(%rax), %rax	# tmp_1->next, tmp68
	movq	%rax, -8(%rbp)	# tmp68, tmp
.L147:
	.loc 1 979 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tmp
	jne	.L149	#,
	.loc 1 984 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	warn_for_collisions, .-warn_for_collisions
	.type	warning_candidate_p, @function
warning_candidate_p:
.LFB26:
	.loc 1 991 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 992 0
	movq	-8(%rbp), %rax	# x, tmp64
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.19657
	cmpb	$34, %al	#, D.19657
	je	.L151	#,
	.loc 1 992 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# x, tmp65
	movzbl	16(%rax), %eax	# x_2(D)->common.code, D.19657
	cmpb	$35, %al	#, D.19657
	jne	.L152	#,
.L151:
	.loc 1 992 0 discriminator 1
	movl	$1, %eax	#, iftmp.91
	jmp	.L153	#
.L152:
	.loc 1 992 0 discriminator 3
	movl	$0, %eax	#, iftmp.91
.L153:
	.loc 1 993 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	warning_candidate_p, .-warning_candidate_p
	.type	verify_tree, @function
verify_tree:
.LFB27:
	.loc 1 1025 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# x, x
	movq	%rsi, -128(%rbp)	# pbefore_sp, pbefore_sp
	movq	%rdx, -136(%rbp)	# pno_sp, pno_sp
	movq	%rcx, -144(%rbp)	# writer, writer
	.loc 1 1032 0
	cmpq	$0, -120(%rbp)	#, x
	jne	.L156	#,
	.loc 1 1033 0
	jmp	.L155	#
.L156:
	.loc 1 1036 0
	movq	-120(%rbp), %rax	# x, tmp171
	movzbl	16(%rax), %eax	# x_1->common.code, D.19659
	movzbl	%al, %eax	# D.19659, tmp172
	movl	%eax, -92(%rbp)	# tmp172, code
	.loc 1 1037 0
	movl	-92(%rbp), %eax	# code, code.92
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, tmp174
	movb	%al, -97(%rbp)	# tmp174, class
	.loc 1 1039 0
	movq	-120(%rbp), %rax	# x, tmp175
	movq	%rax, %rdi	# tmp175,
	call	warning_candidate_p	#
	testl	%eax, %eax	# D.19660
	je	.L158	#,
	.loc 1 1041 0
	movq	-136(%rbp), %rax	# pno_sp, tmp176
	movq	(%rax), %rax	# *pno_sp_14(D), D.19661
	movq	-144(%rbp), %rdx	# writer, tmp177
	movq	-120(%rbp), %rcx	# x, tmp178
	movq	%rcx, %rsi	# tmp178,
	movq	%rax, %rdi	# D.19661,
	call	new_tlist	#
	movq	-136(%rbp), %rdx	# pno_sp, tmp179
	movq	%rax, (%rdx)	# D.19661, *pno_sp_14(D)
	.loc 1 1042 0
	jmp	.L155	#
.L158:
	.loc 1 1045 0
	movl	-92(%rbp), %eax	# code, code
	cmpl	$53, %eax	#, code
	je	.L160	#,
	cmpl	$53, %eax	#, code
	ja	.L161	#,
	cmpl	$47, %eax	#, code
	je	.L162	#,
	cmpl	$47, %eax	#, code
	ja	.L163	#,
	cmpl	$2, %eax	#, code
	je	.L173	#,
	cmpl	$46, %eax	#, code
	je	.L195	#,
	.loc 1 1179 0
	jmp	.L196	#
.L163:
	.loc 1 1045 0
	cmpl	$48, %eax	#, code
	je	.L166	#,
	cmpl	$51, %eax	#, code
	je	.L167	#,
	.loc 1 1179 0
	jmp	.L196	#
.L161:
	.loc 1 1045 0
	cmpl	$118, %eax	#, code
	je	.L168	#,
	cmpl	$118, %eax	#, code
	ja	.L169	#,
	subl	$91, %eax	#, tmp181
	cmpl	$1, %eax	#, tmp181
	ja	.L196	#,
	jmp	.L162	#
.L169:
	subl	$129, %eax	#, tmp182
	cmpl	$3, %eax	#, tmp182
	ja	.L196	#,
	jmp	.L194	#
.L162:
	.loc 1 1053 0
	movq	$0, -56(%rbp)	#, tmp_list3
	movq	-56(%rbp), %rax	# tmp_list3, tmp_list3.93
	movq	%rax, -72(%rbp)	# tmp_list3.93, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.94
	movq	%rax, -80(%rbp)	# tmp_nosp.94, tmp_before
	.loc 1 1054 0
	movq	-120(%rbp), %rax	# x, tmp183
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp184
	leaq	-80(%rbp), %rsi	#, tmp185
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1055 0
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.95
	movq	%rax, %rdi	# tmp_nosp.95,
	call	warn_for_collisions	#
	.loc 1 1056 0
	movq	-80(%rbp), %rcx	# tmp_before, tmp_before.96
	movq	-128(%rbp), %rax	# pbefore_sp, tmp186
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_before.96,
	movq	%rax, %rdi	# tmp186,
	call	merge_tlist	#
	.loc 1 1057 0
	movq	-72(%rbp), %rcx	# tmp_nosp, tmp_nosp.97
	movq	-128(%rbp), %rax	# pbefore_sp, tmp187
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_nosp.97,
	movq	%rax, %rdi	# tmp187,
	call	merge_tlist	#
	.loc 1 1058 0
	movq	-120(%rbp), %rax	# x, tmp188
	movq	40(%rax), %rax	# x_1->exp.operands, D.19662
	movq	-136(%rbp), %rdx	# pno_sp, tmp189
	leaq	-56(%rbp), %rsi	#, tmp190
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1059 0
	movq	-56(%rbp), %rcx	# tmp_list3, tmp_list3.98
	movq	-128(%rbp), %rax	# pbefore_sp, tmp191
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_list3.98,
	movq	%rax, %rdi	# tmp191,
	call	merge_tlist	#
	.loc 1 1060 0
	jmp	.L155	#
.L167:
	.loc 1 1063 0
	movq	$0, -64(%rbp)	#, tmp_list2
	movq	-64(%rbp), %rax	# tmp_list2, tmp_list2.99
	movq	%rax, -80(%rbp)	# tmp_list2.99, tmp_before
	.loc 1 1064 0
	movq	-120(%rbp), %rax	# x, tmp192
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-64(%rbp), %rdx	#, tmp193
	leaq	-80(%rbp), %rsi	#, tmp194
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1065 0
	movq	-64(%rbp), %rax	# tmp_list2, tmp_list2.100
	movq	%rax, %rdi	# tmp_list2.100,
	call	warn_for_collisions	#
	.loc 1 1066 0
	movq	-80(%rbp), %rcx	# tmp_before, tmp_before.101
	movq	-128(%rbp), %rax	# pbefore_sp, tmp195
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_before.101,
	movq	%rax, %rdi	# tmp195,
	call	merge_tlist	#
	.loc 1 1067 0
	movq	-64(%rbp), %rcx	# tmp_list2, tmp_list2.102
	movq	-128(%rbp), %rax	# pbefore_sp, tmp196
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp_list2.102,
	movq	%rax, %rdi	# tmp196,
	call	merge_tlist	#
	.loc 1 1069 0
	movq	$0, -72(%rbp)	#, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.103
	movq	%rax, -56(%rbp)	# tmp_nosp.103, tmp_list3
	.loc 1 1070 0
	movq	-120(%rbp), %rax	# x, tmp197
	movq	40(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp198
	leaq	-56(%rbp), %rsi	#, tmp199
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1071 0
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.104
	movq	%rax, %rdi	# tmp_nosp.104,
	call	warn_for_collisions	#
	.loc 1 1072 0
	movq	-56(%rbp), %rcx	# tmp_list3, tmp_list3.105
	movq	-128(%rbp), %rax	# pbefore_sp, tmp200
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_list3.105,
	movq	%rax, %rdi	# tmp200,
	call	merge_tlist	#
	.loc 1 1074 0
	movq	$0, -64(%rbp)	#, tmp_list2
	movq	-64(%rbp), %rax	# tmp_list2, tmp_list2.106
	movq	%rax, -56(%rbp)	# tmp_list2.106, tmp_list3
	.loc 1 1075 0
	movq	-120(%rbp), %rax	# x, tmp201
	movq	48(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-64(%rbp), %rdx	#, tmp202
	leaq	-56(%rbp), %rsi	#, tmp203
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1076 0
	movq	-64(%rbp), %rax	# tmp_list2, tmp_list2.107
	movq	%rax, %rdi	# tmp_list2.107,
	call	warn_for_collisions	#
	.loc 1 1077 0
	movq	-56(%rbp), %rcx	# tmp_list3, tmp_list3.108
	movq	-128(%rbp), %rax	# pbefore_sp, tmp204
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_list3.108,
	movq	%rax, %rdi	# tmp204,
	call	merge_tlist	#
	.loc 1 1080 0
	movq	-64(%rbp), %rcx	# tmp_list2, tmp_list2.109
	leaq	-72(%rbp), %rax	#, tmp205
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_list2.109,
	movq	%rax, %rdi	# tmp205,
	call	merge_tlist	#
	.loc 1 1081 0
	movq	-72(%rbp), %rsi	# tmp_nosp, tmp_nosp.110
	movq	-136(%rbp), %rax	# pno_sp, tmp206
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp206,
	call	add_tlist	#
	.loc 1 1082 0
	jmp	.L155	#
.L194:
	.loc 1 1088 0
	movq	-120(%rbp), %rax	# x, tmp207
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	movq	-120(%rbp), %rcx	# x, tmp208
	movq	-136(%rbp), %rdx	# pno_sp, tmp209
	movq	-136(%rbp), %rsi	# pno_sp, tmp210
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1089 0
	jmp	.L155	#
.L166:
	.loc 1 1092 0
	movq	$0, -56(%rbp)	#, tmp_list3
	movq	-56(%rbp), %rax	# tmp_list3, tmp_list3.111
	movq	%rax, -72(%rbp)	# tmp_list3.111, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.112
	movq	%rax, -80(%rbp)	# tmp_nosp.112, tmp_before
	.loc 1 1093 0
	movq	-120(%rbp), %rax	# x, tmp211
	movq	40(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp212
	leaq	-80(%rbp), %rsi	#, tmp213
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1094 0
	movq	-120(%rbp), %rax	# x, tmp214
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	movq	-120(%rbp), %rcx	# x, tmp215
	leaq	-56(%rbp), %rdx	#, tmp216
	leaq	-56(%rbp), %rsi	#, tmp217
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1103 0
	movq	-56(%rbp), %rsi	# tmp_list3, tmp_list3.113
	movq	-120(%rbp), %rdx	# x, tmp218
	leaq	-80(%rbp), %rax	#, tmp219
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp219,
	call	add_tlist	#
	.loc 1 1104 0
	movq	-80(%rbp), %rax	# tmp_before, tmp_before.114
	movq	%rax, %rdi	# tmp_before.114,
	call	warn_for_collisions	#
	.loc 1 1109 0
	movq	-56(%rbp), %rsi	# tmp_list3, tmp_list3.115
	movq	-120(%rbp), %rdx	# x, tmp220
	movq	-136(%rbp), %rax	# pno_sp, tmp221
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp221,
	call	add_tlist	#
	.loc 1 1110 0
	movq	-72(%rbp), %rdx	# tmp_nosp, tmp_nosp.116
	movq	-120(%rbp), %rax	# x, tmp222
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	movq	-120(%rbp), %rsi	# x, tmp223
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	warn_for_collisions_1	#
	.loc 1 1112 0
	movq	-80(%rbp), %rcx	# tmp_before, tmp_before.117
	movq	-128(%rbp), %rax	# pbefore_sp, tmp224
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_before.117,
	movq	%rax, %rdi	# tmp224,
	call	merge_tlist	#
	.loc 1 1113 0
	movq	-120(%rbp), %rax	# x, tmp225
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	movq	%rax, %rdi	# D.19662,
	call	warning_candidate_p	#
	testl	%eax, %eax	# D.19660
	je	.L171	#,
	.loc 1 1114 0
	movq	-120(%rbp), %rax	# x, tmp226
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	movq	-120(%rbp), %rdx	# x, tmp227
	movq	%rax, %rsi	# D.19662,
	movl	$0, %edi	#,
	call	new_tlist	#
	movq	%rax, %rcx	#, D.19661
	leaq	-72(%rbp), %rax	#, tmp228
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.19661,
	movq	%rax, %rdi	# tmp228,
	call	merge_tlist	#
.L171:
	.loc 1 1115 0
	movq	-72(%rbp), %rsi	# tmp_nosp, tmp_nosp.118
	movq	-136(%rbp), %rax	# pno_sp, tmp229
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp229,
	call	add_tlist	#
	.loc 1 1116 0
	jmp	.L155	#
.L160:
	.loc 1 1122 0
	movq	$0, -56(%rbp)	#, tmp_list3
	movq	-56(%rbp), %rax	# tmp_list3, tmp_list3.119
	movq	%rax, -64(%rbp)	# tmp_list3.119, tmp_list2
	movq	-64(%rbp), %rax	# tmp_list2, tmp_list2.120
	movq	%rax, -72(%rbp)	# tmp_list2.120, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.121
	movq	%rax, -80(%rbp)	# tmp_nosp.121, tmp_before
	.loc 1 1123 0
	movq	-120(%rbp), %rax	# x, tmp230
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp231
	leaq	-80(%rbp), %rsi	#, tmp232
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1124 0
	movq	-120(%rbp), %rax	# x, tmp233
	movq	40(%rax), %rax	# x_1->exp.operands, D.19662
	testq	%rax, %rax	# D.19662
	je	.L172	#,
	.loc 1 1125 0
	movq	-120(%rbp), %rax	# x, tmp234
	movq	40(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-56(%rbp), %rdx	#, tmp235
	leaq	-64(%rbp), %rsi	#, tmp236
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
.L172:
	.loc 1 1126 0
	movq	-64(%rbp), %rcx	# tmp_list2, tmp_list2.122
	leaq	-56(%rbp), %rax	#, tmp237
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_list2.122,
	movq	%rax, %rdi	# tmp237,
	call	merge_tlist	#
	.loc 1 1127 0
	movq	-56(%rbp), %rsi	# tmp_list3, tmp_list3.123
	leaq	-80(%rbp), %rax	#, tmp238
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp238,
	call	add_tlist	#
	.loc 1 1128 0
	movq	-72(%rbp), %rsi	# tmp_nosp, tmp_nosp.124
	leaq	-80(%rbp), %rax	#, tmp239
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp239,
	call	add_tlist	#
	.loc 1 1129 0
	movq	-80(%rbp), %rax	# tmp_before, tmp_before.125
	movq	%rax, %rdi	# tmp_before.125,
	call	warn_for_collisions	#
	.loc 1 1130 0
	movq	-80(%rbp), %rsi	# tmp_before, tmp_before.126
	movq	-128(%rbp), %rax	# pbefore_sp, tmp240
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp240,
	call	add_tlist	#
	.loc 1 1131 0
	jmp	.L155	#
.L174:
	.loc 1 1137 0
	movq	$0, -72(%rbp)	#, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.127
	movq	%rax, -80(%rbp)	# tmp_nosp.127, tmp_before
	.loc 1 1138 0
	movq	-120(%rbp), %rax	# x, tmp241
	movq	32(%rax), %rax	# x_2->list.value, D.19662
	leaq	-72(%rbp), %rdx	#, tmp242
	leaq	-80(%rbp), %rsi	#, tmp243
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1139 0
	movq	-80(%rbp), %rcx	# tmp_before, tmp_before.128
	leaq	-72(%rbp), %rax	#, tmp244
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_before.128,
	movq	%rax, %rdi	# tmp244,
	call	merge_tlist	#
	.loc 1 1140 0
	movq	-72(%rbp), %rsi	# tmp_nosp, tmp_nosp.129
	movq	-136(%rbp), %rax	# pno_sp, tmp245
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp245,
	call	add_tlist	#
	.loc 1 1141 0
	movq	-120(%rbp), %rax	# x, tmp246
	movq	(%rax), %rax	# x_2->common.chain, tmp247
	movq	%rax, -120(%rbp)	# tmp247, x
.L173:
	.loc 1 1135 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, x
	jne	.L174	#,
	.loc 1 1143 0
	jmp	.L155	#
.L168:
.LBB17:
	.loc 1 1148 0
	movq	save_expr_cache(%rip), %rax	# save_expr_cache, tmp248
	movq	%rax, -48(%rbp)	# tmp248, t
	jmp	.L175	#
.L178:
	.loc 1 1149 0
	movq	-48(%rbp), %rax	# t, tmp249
	movq	24(%rax), %rax	# t_4->expr, D.19662
	cmpq	-120(%rbp), %rax	# x, D.19662
	jne	.L176	#,
	.loc 1 1150 0
	jmp	.L177	#
.L176:
	.loc 1 1148 0
	movq	-48(%rbp), %rax	# t, tmp250
	movq	(%rax), %rax	# t_4->next, tmp251
	movq	%rax, -48(%rbp)	# tmp251, t
.L175:
	.loc 1 1148 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, t
	jne	.L178	#,
.L177:
	.loc 1 1152 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, t
	jne	.L179	#,
.LBB18:
	.loc 1 1154 0
	movq	$tlist_obstack, -40(%rbp)	#, __h
.LBB19:
	movq	-40(%rbp), %rax	# __h, tmp252
	movq	%rax, -32(%rbp)	# tmp252, __o
	movl	$32, -88(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp253
	movq	32(%rax), %rax	# __o_77->chunk_limit, D.19663
	movq	%rax, %rdx	# D.19663, D.19664
	movq	-32(%rbp), %rax	# __o, tmp254
	movq	24(%rax), %rax	# __o_77->next_free, D.19663
	subq	%rax, %rdx	# D.19664, D.19664
	movl	-88(%rbp), %eax	# __len, tmp255
	cltq
	cmpq	%rax, %rdx	# D.19664, D.19664
	jge	.L180	#,
	.loc 1 1154 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %edx	# __len, tmp256
	movq	-32(%rbp), %rax	# __o, tmp257
	movl	%edx, %esi	# tmp256,
	movq	%rax, %rdi	# tmp257,
	call	_obstack_newchunk	#
.L180:
	.loc 1 1154 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp258
	movq	24(%rax), %rdx	# __o_77->next_free, D.19663
	movl	-88(%rbp), %eax	# __len, tmp259
	cltq
	addq	%rax, %rdx	# D.19665, D.19663
	movq	-32(%rbp), %rax	# __o, tmp260
	movq	%rdx, 24(%rax)	# D.19663, __o_77->next_free
.LBE19:
.LBB20:
	movq	-40(%rbp), %rax	# __h, tmp261
	movq	%rax, -24(%rbp)	# tmp261, __o1
	movq	-24(%rbp), %rax	# __o1, tmp262
	movq	16(%rax), %rax	# __o1_88->object_base, tmp263
	movq	%rax, -16(%rbp)	# tmp263, value
	movq	-24(%rbp), %rax	# __o1, tmp264
	movq	24(%rax), %rax	# __o1_88->next_free, D.19663
	cmpq	-16(%rbp), %rax	# value, D.19663
	jne	.L181	#,
	.loc 1 1154 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp265
	movzbl	80(%rax), %edx	# __o1_88->maybe_empty_object, tmp268
	orl	$2, %edx	#, tmp269
	movb	%dl, 80(%rax)	# tmp269, __o1_88->maybe_empty_object
.L181:
	.loc 1 1154 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp270
	movq	24(%rax), %rax	# __o1_88->next_free, D.19663
	movq	%rax, %rdx	# D.19663, D.19664
	movq	-24(%rbp), %rax	# __o1, tmp271
	movl	48(%rax), %eax	# __o1_88->alignment_mask, D.19660
	cltq
	addq	%rax, %rdx	# D.19664, D.19664
	movq	-24(%rbp), %rax	# __o1, tmp272
	movl	48(%rax), %eax	# __o1_88->alignment_mask, D.19660
	notl	%eax	# D.19660
	cltq
	andq	%rdx, %rax	# D.19664, D.19664
	movq	%rax, %rdx	# D.19664, D.19663
	movq	-24(%rbp), %rax	# __o1, tmp273
	movq	%rdx, 24(%rax)	# D.19663, __o1_88->next_free
	movq	-24(%rbp), %rax	# __o1, tmp274
	movq	24(%rax), %rax	# __o1_88->next_free, D.19663
	movq	%rax, %rdx	# D.19663, D.19664
	movq	-24(%rbp), %rax	# __o1, tmp275
	movq	8(%rax), %rax	# __o1_88->chunk, D.19666
	movq	%rdx, %rcx	# D.19664, D.19664
	subq	%rax, %rcx	# D.19664, D.19664
	movq	-24(%rbp), %rax	# __o1, tmp276
	movq	32(%rax), %rax	# __o1_88->chunk_limit, D.19663
	movq	%rax, %rdx	# D.19663, D.19664
	movq	-24(%rbp), %rax	# __o1, tmp277
	movq	8(%rax), %rax	# __o1_88->chunk, D.19666
	subq	%rax, %rdx	# D.19664, D.19664
	movq	%rdx, %rax	# D.19664, D.19664
	cmpq	%rax, %rcx	# D.19664, D.19664
	jle	.L182	#,
	.loc 1 1154 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp278
	movq	32(%rax), %rdx	# __o1_88->chunk_limit, D.19663
	movq	-24(%rbp), %rax	# __o1, tmp279
	movq	%rdx, 24(%rax)	# D.19663, __o1_88->next_free
.L182:
	.loc 1 1154 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp280
	movq	24(%rax), %rdx	# __o1_88->next_free, D.19663
	movq	-24(%rbp), %rax	# __o1, tmp281
	movq	%rdx, 16(%rax)	# D.19663, __o1_88->object_base
	movq	-16(%rbp), %rax	# value, D.19667
.LBE20:
.LBE18:
	movq	%rax, -48(%rbp)	# t.130, t
	.loc 1 1156 0 is_stmt 1 discriminator 2
	movq	save_expr_cache(%rip), %rdx	# save_expr_cache, save_expr_cache.131
	movq	-48(%rbp), %rax	# t, tmp282
	movq	%rdx, (%rax)	# save_expr_cache.131, t_115->next
	.loc 1 1157 0 discriminator 2
	movq	-48(%rbp), %rax	# t, tmp283
	movq	-120(%rbp), %rdx	# x, tmp284
	movq	%rdx, 24(%rax)	# tmp284, t_115->expr
	.loc 1 1158 0 discriminator 2
	movq	-48(%rbp), %rax	# t, tmp285
	movq	%rax, save_expr_cache(%rip)	# tmp285, save_expr_cache
	.loc 1 1160 0 discriminator 2
	movq	$0, -72(%rbp)	#, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.132
	movq	%rax, -80(%rbp)	# tmp_nosp.132, tmp_before
	.loc 1 1161 0 discriminator 2
	movq	-120(%rbp), %rax	# x, tmp286
	movq	32(%rax), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp287
	leaq	-80(%rbp), %rsi	#, tmp288
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1162 0 discriminator 2
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.133
	movq	%rax, %rdi	# tmp_nosp.133,
	call	warn_for_collisions	#
	.loc 1 1164 0 discriminator 2
	movq	$0, -56(%rbp)	#, tmp_list3
	.loc 1 1165 0 discriminator 2
	jmp	.L183	#
.L184:
.LBB21:
	.loc 1 1167 0
	movq	-72(%rbp), %rax	# tmp_nosp, tmp289
	movq	%rax, -8(%rbp)	# tmp289, t
	.loc 1 1168 0
	movq	-8(%rbp), %rax	# t, tmp290
	movq	(%rax), %rax	# t_121->next, tmp_nosp.134
	movq	%rax, -72(%rbp)	# tmp_nosp.134, tmp_nosp
	.loc 1 1169 0
	movq	-8(%rbp), %rcx	# t, tmp291
	leaq	-56(%rbp), %rax	#, tmp292
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp291,
	movq	%rax, %rdi	# tmp292,
	call	merge_tlist	#
.L183:
.LBE21:
	.loc 1 1165 0 discriminator 1
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.135
	testq	%rax, %rax	# tmp_nosp.135
	jne	.L184	#,
	.loc 1 1171 0
	movq	-80(%rbp), %rdx	# tmp_before, tmp_before.136
	movq	-48(%rbp), %rax	# t, tmp293
	movq	%rdx, 8(%rax)	# tmp_before.136, t_115->cache_before_sp
	.loc 1 1172 0
	movq	-56(%rbp), %rdx	# tmp_list3, tmp_list3.137
	movq	-48(%rbp), %rax	# t, tmp294
	movq	%rdx, 16(%rax)	# tmp_list3.137, t_115->cache_after_sp
.L179:
	.loc 1 1174 0
	movq	-48(%rbp), %rax	# t, tmp295
	movq	8(%rax), %rcx	# t_5->cache_before_sp, D.19661
	movq	-128(%rbp), %rax	# pbefore_sp, tmp296
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.19661,
	movq	%rax, %rdi	# tmp296,
	call	merge_tlist	#
	.loc 1 1175 0
	movq	-48(%rbp), %rax	# t, tmp297
	movq	16(%rax), %rsi	# t_5->cache_after_sp, D.19661
	movq	-136(%rbp), %rax	# pno_sp, tmp298
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp298,
	call	add_tlist	#
	.loc 1 1176 0
	jmp	.L155	#
.L196:
.LBE17:
	.loc 1 1179 0
	nop
	.loc 1 1182 0
	cmpb	$49, -97(%rbp)	#, class
	jne	.L185	#,
	.loc 1 1184 0
	movl	-92(%rbp), %eax	# code, tmp299
	movl	%eax, %edi	# tmp299,
	call	first_rtl_op	#
	testl	%eax, %eax	# D.19660
	jne	.L186	#,
	.loc 1 1185 0
	jmp	.L155	#
.L186:
	.loc 1 1186 0
	movq	-120(%rbp), %rax	# x, tmp300
	movq	32(%rax), %rax	# x_1->exp.operands, tmp301
	movq	%rax, -120(%rbp)	# tmp301, x
	.loc 1 1187 0
	movq	$0, -144(%rbp)	#, writer
	.loc 1 1188 0
	jmp	.L156	#
.L185:
	.loc 1 1191 0
	movsbl	-97(%rbp), %eax	# class, D.19660
	subl	$50, %eax	#, tmp302
	cmpl	$70, %eax	#, tmp302
	ja	.L155	#,
	movl	%eax, %eax	# tmp302, tmp303
	movq	.L189(,%rax,8), %rax	#, tmp304
	jmp	*%rax	# tmp304
	.section	.rodata
	.align 8
	.align 4
.L189:
	.quad	.L188
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L188
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L188
	.quad	.L155
	.quad	.L155
	.quad	.L188
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L188
	.quad	.L188
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L155
	.quad	.L188
	.text
.L188:
.LBB22:
	.loc 1 1202 0
	movq	-120(%rbp), %rax	# x, tmp305
	movzbl	16(%rax), %eax	# x_1->common.code, D.19659
	movzbl	%al, %eax	# D.19659, D.19668
	movl	%eax, %edi	# D.19668,
	call	first_rtl_op	#
	movl	%eax, -84(%rbp)	# tmp306, max
	.loc 1 1203 0
	movl	$0, -96(%rbp)	#, lp
	jmp	.L190	#
.L191:
	.loc 1 1205 0 discriminator 2
	movq	$0, -72(%rbp)	#, tmp_nosp
	movq	-72(%rbp), %rax	# tmp_nosp, tmp_nosp.138
	movq	%rax, -80(%rbp)	# tmp_nosp.138, tmp_before
	.loc 1 1206 0 discriminator 2
	movq	-120(%rbp), %rax	# x, tmp307
	movl	-96(%rbp), %edx	# lp, tmp309
	movslq	%edx, %rdx	# tmp309, tmp308
	addq	$4, %rdx	#, tmp310
	movq	(%rax,%rdx,8), %rax	# x_1->exp.operands, D.19662
	leaq	-72(%rbp), %rdx	#, tmp311
	leaq	-80(%rbp), %rsi	#, tmp312
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.19662,
	call	verify_tree	#
	.loc 1 1207 0 discriminator 2
	movq	-80(%rbp), %rcx	# tmp_before, tmp_before.139
	leaq	-72(%rbp), %rax	#, tmp313
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp_before.139,
	movq	%rax, %rdi	# tmp313,
	call	merge_tlist	#
	.loc 1 1208 0 discriminator 2
	movq	-72(%rbp), %rsi	# tmp_nosp, tmp_nosp.140
	movq	-136(%rbp), %rax	# pno_sp, tmp314
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp314,
	call	add_tlist	#
	.loc 1 1203 0 discriminator 2
	addl	$1, -96(%rbp)	#, lp
.L190:
	.loc 1 1203 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# lp, tmp315
	cmpl	-84(%rbp), %eax	# max, tmp315
	jl	.L191	#,
	.loc 1 1210 0 is_stmt 1
	nop
	jmp	.L155	#
.L195:
.LBE22:
	.loc 1 1048 0
	nop
.L155:
	.loc 1 1213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	verify_tree, .-verify_tree
	.type	verify_sequence_points, @function
verify_sequence_points:
.LFB28:
	.loc 1 1221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# expr, expr
	.loc 1 1222 0
	movq	$0, -64(%rbp)	#, before_sp
	movq	$0, -56(%rbp)	#, after_sp
	.loc 1 1224 0
	movq	$0, warned_ids(%rip)	#, warned_ids
	.loc 1 1225 0
	movq	$0, save_expr_cache(%rip)	#, save_expr_cache
	.loc 1 1226 0
	movq	tlist_firstobj(%rip), %rax	# tlist_firstobj, tlist_firstobj.141
	testq	%rax, %rax	# tlist_firstobj.141
	jne	.L198	#,
	.loc 1 1228 0
	movl	$tlist_obstack, %edi	#,
	call	gcc_obstack_init	#
.LBB23:
	.loc 1 1229 0
	movq	$tlist_obstack, -48(%rbp)	#, __h
.LBB24:
	movq	-48(%rbp), %rax	# __h, tmp98
	movq	%rax, -40(%rbp)	# tmp98, __o
	movl	$0, -68(%rbp)	#, __len
	movq	-40(%rbp), %rax	# __o, tmp99
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.19672
	movq	%rax, %rdx	# D.19672, D.19673
	movq	-40(%rbp), %rax	# __o, tmp100
	movq	24(%rax), %rax	# __o_3->next_free, D.19672
	subq	%rax, %rdx	# D.19673, D.19673
	movl	-68(%rbp), %eax	# __len, tmp101
	cltq
	cmpq	%rax, %rdx	# D.19673, D.19673
	jge	.L199	#,
	.loc 1 1229 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# __len, tmp102
	movq	-40(%rbp), %rax	# __o, tmp103
	movl	%edx, %esi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	_obstack_newchunk	#
.L199:
	.loc 1 1229 0 discriminator 2
	movq	-40(%rbp), %rax	# __o, tmp104
	movq	24(%rax), %rdx	# __o_3->next_free, D.19672
	movl	-68(%rbp), %eax	# __len, tmp105
	cltq
	addq	%rax, %rdx	# D.19674, D.19672
	movq	-40(%rbp), %rax	# __o, tmp106
	movq	%rdx, 24(%rax)	# D.19672, __o_3->next_free
.LBE24:
.LBB25:
	movq	-48(%rbp), %rax	# __h, tmp107
	movq	%rax, -32(%rbp)	# tmp107, __o1
	movq	-32(%rbp), %rax	# __o1, tmp108
	movq	16(%rax), %rax	# __o1_14->object_base, tmp109
	movq	%rax, -24(%rbp)	# tmp109, value
	movq	-32(%rbp), %rax	# __o1, tmp110
	movq	24(%rax), %rax	# __o1_14->next_free, D.19672
	cmpq	-24(%rbp), %rax	# value, D.19672
	jne	.L200	#,
	.loc 1 1229 0 discriminator 1
	movq	-32(%rbp), %rax	# __o1, tmp111
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp114
	orl	$2, %edx	#, tmp115
	movb	%dl, 80(%rax)	# tmp115, __o1_14->maybe_empty_object
.L200:
	.loc 1 1229 0 discriminator 2
	movq	-32(%rbp), %rax	# __o1, tmp116
	movq	24(%rax), %rax	# __o1_14->next_free, D.19672
	movq	%rax, %rdx	# D.19672, D.19673
	movq	-32(%rbp), %rax	# __o1, tmp117
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.19675
	cltq
	addq	%rax, %rdx	# D.19673, D.19673
	movq	-32(%rbp), %rax	# __o1, tmp118
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.19675
	notl	%eax	# D.19675
	cltq
	andq	%rdx, %rax	# D.19673, D.19673
	movq	%rax, %rdx	# D.19673, D.19672
	movq	-32(%rbp), %rax	# __o1, tmp119
	movq	%rdx, 24(%rax)	# D.19672, __o1_14->next_free
	movq	-32(%rbp), %rax	# __o1, tmp120
	movq	24(%rax), %rax	# __o1_14->next_free, D.19672
	movq	%rax, %rdx	# D.19672, D.19673
	movq	-32(%rbp), %rax	# __o1, tmp121
	movq	8(%rax), %rax	# __o1_14->chunk, D.19676
	movq	%rdx, %rcx	# D.19673, D.19673
	subq	%rax, %rcx	# D.19673, D.19673
	movq	-32(%rbp), %rax	# __o1, tmp122
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.19672
	movq	%rax, %rdx	# D.19672, D.19673
	movq	-32(%rbp), %rax	# __o1, tmp123
	movq	8(%rax), %rax	# __o1_14->chunk, D.19676
	subq	%rax, %rdx	# D.19673, D.19673
	movq	%rdx, %rax	# D.19673, D.19673
	cmpq	%rax, %rcx	# D.19673, D.19673
	jle	.L201	#,
	.loc 1 1229 0 discriminator 1
	movq	-32(%rbp), %rax	# __o1, tmp124
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.19672
	movq	-32(%rbp), %rax	# __o1, tmp125
	movq	%rdx, 24(%rax)	# D.19672, __o1_14->next_free
.L201:
	.loc 1 1229 0 discriminator 2
	movq	-32(%rbp), %rax	# __o1, tmp126
	movq	24(%rax), %rdx	# __o1_14->next_free, D.19672
	movq	-32(%rbp), %rax	# __o1, tmp127
	movq	%rdx, 16(%rax)	# D.19672, __o1_14->object_base
	movq	-24(%rbp), %rax	# value, D.19677
.LBE25:
.LBE23:
	movq	%rax, tlist_firstobj(%rip)	# tlist_firstobj.142, tlist_firstobj
.L198:
	.loc 1 1232 0 is_stmt 1
	leaq	-56(%rbp), %rdx	#, tmp128
	leaq	-64(%rbp), %rsi	#, tmp129
	movq	-88(%rbp), %rax	# expr, tmp130
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp130,
	call	verify_tree	#
	.loc 1 1233 0
	movq	-56(%rbp), %rax	# after_sp, after_sp.143
	movq	%rax, %rdi	# after_sp.143,
	call	warn_for_collisions	#
.LBB26:
	.loc 1 1234 0
	movq	$tlist_obstack, -16(%rbp)	#, __o
	movq	tlist_firstobj(%rip), %rax	# tlist_firstobj, tmp131
	movq	%rax, -8(%rbp)	# tmp131, __obj
	movq	-16(%rbp), %rax	# __o, tmp132
	movq	8(%rax), %rax	# __o_43->chunk, D.19676
	cmpq	-8(%rbp), %rax	# __obj, D.19676
	jae	.L202	#,
	.loc 1 1234 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp133
	movq	32(%rax), %rax	# __o_43->chunk_limit, D.19672
	cmpq	-8(%rbp), %rax	# __obj, D.19672
	jbe	.L202	#,
	movq	-16(%rbp), %rax	# __o, tmp134
	movq	-8(%rbp), %rdx	# __obj, tmp135
	movq	%rdx, 16(%rax)	# tmp135, __o_43->object_base
	movq	-16(%rbp), %rax	# __o, tmp136
	movq	16(%rax), %rdx	# __o_43->object_base, D.19672
	movq	-16(%rbp), %rax	# __o, tmp137
	movq	%rdx, 24(%rax)	# D.19672, __o_43->next_free
	jmp	.L197	#
.L202:
	.loc 1 1234 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp138
	movq	-16(%rbp), %rax	# __o, tmp139
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	obstack_free	#
.L197:
.LBE26:
	.loc 1 1235 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	verify_sequence_points, .-verify_sequence_points
	.section	.rodata
	.align 8
.LC14:
	.string	"expression statement has incomplete type"
	.text
	.globl	c_expand_expr_stmt
	.type	c_expand_expr_stmt, @function
c_expand_expr_stmt:
.LFB29:
	.loc 1 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# expr, expr
	.loc 1 1243 0
	movq	-8(%rbp), %rax	# expr, tmp79
	movq	8(%rax), %rax	# expr_2(D)->common.type, D.19678
	movzbl	16(%rax), %eax	# _3->common.code, D.19679
	cmpb	$18, %al	#, D.19679
	jne	.L205	#,
	.loc 1 1244 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.144
	testl	%eax, %eax	# flag_isoc99.144
	jne	.L206	#,
	.loc 1 1244 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# expr, tmp80
	movq	%rax, %rdi	# tmp80,
	call	lvalue_p	#
	testl	%eax, %eax	# D.19680
	jne	.L206	#,
.L205:
	.loc 1 1245 0 is_stmt 1
	movq	-8(%rbp), %rax	# expr, tmp81
	movq	8(%rax), %rax	# expr_2(D)->common.type, D.19678
	movzbl	16(%rax), %eax	# _7->common.code, D.19679
	cmpb	$23, %al	#, D.19679
	jne	.L207	#,
.L206:
	.loc 1 1246 0
	movq	-8(%rbp), %rax	# expr, tmp82
	movq	%rax, %rdi	# tmp82,
	call	default_conversion	#
	movq	%rax, -8(%rbp)	# tmp83, expr
.L207:
	.loc 1 1248 0
	movl	warn_sequence_point(%rip), %eax	# warn_sequence_point, warn_sequence_point.145
	testl	%eax, %eax	# warn_sequence_point.145
	je	.L208	#,
	.loc 1 1249 0
	movq	-8(%rbp), %rax	# expr, tmp84
	movq	%rax, %rdi	# tmp84,
	call	verify_sequence_points	#
.L208:
	.loc 1 1251 0
	movq	-8(%rbp), %rax	# expr, tmp85
	movq	8(%rax), %rdx	# expr_1->common.type, D.19678
	movq	global_trees(%rip), %rax	# global_trees, D.19678
	cmpq	%rax, %rdx	# D.19678, D.19678
	je	.L209	#,
	.loc 1 1252 0
	movq	-8(%rbp), %rax	# expr, tmp86
	movq	8(%rax), %rax	# expr_1->common.type, D.19678
	movq	32(%rax), %rax	# _13->type.size, D.19678
	testq	%rax, %rax	# D.19678
	jne	.L209	#,
	.loc 1 1252 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# expr, tmp87
	movq	8(%rax), %rax	# expr_1->common.type, D.19678
	movzbl	16(%rax), %eax	# _15->common.code, D.19679
	cmpb	$5, %al	#, D.19679
	je	.L209	#,
	.loc 1 1253 0 is_stmt 1
	movq	-8(%rbp), %rax	# expr, tmp88
	movq	8(%rax), %rax	# expr_1->common.type, D.19678
	movzbl	16(%rax), %eax	# _17->common.code, D.19679
	cmpb	$18, %al	#, D.19679
	je	.L209	#,
	.loc 1 1254 0
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L209:
	.loc 1 1256 0
	call	current_stmt_tree	#
	movq	-8(%rbp), %rdx	# expr, tmp89
	movq	8(%rdx), %rdx	# expr_1->common.type, D.19678
	movq	%rdx, 8(%rax)	# D.19678, _19->x_last_expr_type
	.loc 1 1257 0
	movq	-8(%rbp), %rax	# expr, tmp90
	movq	%rax, %rsi	# tmp90,
	movl	$152, %edi	#,
	movl	$0, %eax	#,
	call	build_stmt	#
	movq	%rax, %rdi	# D.19678,
	call	add_stmt	#
	.loc 1 1258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	c_expand_expr_stmt, .-c_expand_expr_stmt
	.section	.rodata
	.align 8
.LC15:
	.string	"case label does not reduce to an integer constant"
	.text
	.globl	check_case_value
	.type	check_case_value, @function
check_case_value:
.LFB30:
	.loc 1 1265 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# value, value
	.loc 1 1266 0
	cmpq	$0, -8(%rbp)	#, value
	jne	.L212	#,
	.loc 1 1267 0
	movq	-8(%rbp), %rax	# value, D.19684
	jmp	.L213	#
.L212:
	.loc 1 1270 0
	jmp	.L214	#
.L217:
	.loc 1 1270 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp80
	movq	32(%rax), %rax	# value_1->exp.operands, tmp81
	movq	%rax, -8(%rbp)	# tmp81, value
.L214:
	movq	-8(%rbp), %rax	# value, tmp82
	movzbl	16(%rax), %eax	# value_1->common.code, D.19685
	cmpb	$115, %al	#, D.19685
	je	.L215	#,
	.loc 1 1270 0 discriminator 3
	movq	-8(%rbp), %rax	# value, tmp83
	movzbl	16(%rax), %eax	# value_1->common.code, D.19685
	cmpb	$114, %al	#, D.19685
	je	.L215	#,
	.loc 1 1270 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp84
	movzbl	16(%rax), %eax	# value_1->common.code, D.19685
	cmpb	$116, %al	#, D.19685
	jne	.L216	#,
.L215:
	.loc 1 1270 0 discriminator 2
	movq	-8(%rbp), %rax	# value, tmp85
	movq	32(%rax), %rdx	# value_1->exp.operands, D.19686
	movq	global_trees(%rip), %rax	# global_trees, D.19686
	cmpq	%rax, %rdx	# D.19686, D.19686
	je	.L216	#,
	.loc 1 1270 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp86
	movq	8(%rax), %rdx	# value_1->common.type, D.19686
	movq	-8(%rbp), %rax	# value, tmp87
	movq	32(%rax), %rax	# value_1->exp.operands, D.19686
	movq	8(%rax), %rax	# _14->common.type, D.19686
	cmpq	%rax, %rdx	# D.19686, D.19686
	je	.L217	#,
.L216:
	.loc 1 1277 0 is_stmt 1
	movl	c_language(%rip), %eax	# c_language, c_language.146
	cmpl	$1, %eax	#, c_language.146
	jne	.L218	#,
	.loc 1 1279 0
	movq	-8(%rbp), %rax	# value, tmp88
	movq	%rax, %rdi	# tmp88,
	call	decl_constant_value	#
	movq	%rax, -8(%rbp)	# tmp89, value
	.loc 1 1280 0
	jmp	.L219	#
.L222:
	.loc 1 1280 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp90
	movq	32(%rax), %rax	# value_2->exp.operands, tmp91
	movq	%rax, -8(%rbp)	# tmp91, value
.L219:
	movq	-8(%rbp), %rax	# value, tmp92
	movzbl	16(%rax), %eax	# value_2->common.code, D.19685
	cmpb	$115, %al	#, D.19685
	je	.L220	#,
	.loc 1 1280 0 discriminator 3
	movq	-8(%rbp), %rax	# value, tmp93
	movzbl	16(%rax), %eax	# value_2->common.code, D.19685
	cmpb	$114, %al	#, D.19685
	je	.L220	#,
	.loc 1 1280 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp94
	movzbl	16(%rax), %eax	# value_2->common.code, D.19685
	cmpb	$116, %al	#, D.19685
	jne	.L221	#,
.L220:
	.loc 1 1280 0 discriminator 2
	movq	-8(%rbp), %rax	# value, tmp95
	movq	32(%rax), %rdx	# value_2->exp.operands, D.19686
	movq	global_trees(%rip), %rax	# global_trees, D.19686
	cmpq	%rax, %rdx	# D.19686, D.19686
	je	.L221	#,
	.loc 1 1280 0 discriminator 1
	movq	-8(%rbp), %rax	# value, tmp96
	movq	8(%rax), %rdx	# value_2->common.type, D.19686
	movq	-8(%rbp), %rax	# value, tmp97
	movq	32(%rax), %rax	# value_2->exp.operands, D.19686
	movq	8(%rax), %rax	# _25->common.type, D.19686
	cmpq	%rax, %rdx	# D.19686, D.19686
	je	.L222	#,
.L221:
	.loc 1 1281 0 is_stmt 1
	movq	-8(%rbp), %rax	# value, tmp98
	movq	%rax, %rdi	# tmp98,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp99, value
.L218:
	.loc 1 1284 0
	movq	-8(%rbp), %rax	# value, tmp100
	movzbl	16(%rax), %eax	# value_3->common.code, D.19685
	cmpb	$25, %al	#, D.19685
	je	.L223	#,
	.loc 1 1285 0
	movq	global_trees(%rip), %rax	# global_trees, D.19686
	cmpq	-8(%rbp), %rax	# value, D.19686
	je	.L223	#,
	.loc 1 1287 0
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1288 0
	movq	global_trees(%rip), %rax	# global_trees, tmp101
	movq	%rax, -8(%rbp)	# tmp101, value
	jmp	.L224	#
.L223:
	.loc 1 1292 0
	movq	-8(%rbp), %rax	# value, tmp102
	movq	%rax, %rdi	# tmp102,
	call	default_conversion	#
	movq	%rax, -8(%rbp)	# tmp103, value
.L224:
	.loc 1 1294 0
	movq	-8(%rbp), %rax	# value, tmp104
	movq	%rax, %rdi	# tmp104,
	call	constant_expression_warning	#
	.loc 1 1296 0
	movq	-8(%rbp), %rax	# value, D.19684
.L213:
	.loc 1 1297 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	check_case_value, .-check_case_value
	.globl	type_for_size
	.type	type_for_size, @function
type_for_size:
.LFB31:
	.loc 1 1306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# bits, bits
	movl	%esi, -8(%rbp)	# unsignedp, unsignedp
	.loc 1 1307 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19689
	movzwl	60(%rax), %eax	# *_12, tmp103
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L226	#,
	.loc 1 1308 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L227	#,
	.loc 1 1308 0 is_stmt 0 discriminator 1
	movq	integer_types+48(%rip), %rax	# integer_types, iftmp.147
	jmp	.L228	#
.L227:
	.loc 1 1308 0 discriminator 2
	movq	integer_types+40(%rip), %rax	# integer_types, iftmp.147
.L228:
	.loc 1 1308 0 discriminator 3
	jmp	.L229	#
.L226:
	.loc 1 1310 0 is_stmt 1
	movq	integer_types+8(%rip), %rax	# integer_types, D.19689
	movzwl	60(%rax), %eax	# *_20, tmp106
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L230	#,
	.loc 1 1311 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L231	#,
	.loc 1 1311 0 is_stmt 0 discriminator 1
	movq	integer_types+16(%rip), %rax	# integer_types, iftmp.148
	jmp	.L232	#
.L231:
	.loc 1 1311 0 discriminator 2
	movq	integer_types+8(%rip), %rax	# integer_types, iftmp.148
.L232:
	.loc 1 1311 0 discriminator 3
	jmp	.L229	#
.L230:
	.loc 1 1313 0 is_stmt 1
	movq	integer_types+24(%rip), %rax	# integer_types, D.19689
	movzwl	60(%rax), %eax	# *_26, tmp109
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L233	#,
	.loc 1 1314 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L234	#,
	.loc 1 1314 0 is_stmt 0 discriminator 1
	movq	integer_types+32(%rip), %rax	# integer_types, iftmp.149
	jmp	.L235	#
.L234:
	.loc 1 1314 0 discriminator 2
	movq	integer_types+24(%rip), %rax	# integer_types, iftmp.149
.L235:
	.loc 1 1314 0 discriminator 3
	jmp	.L229	#
.L233:
	.loc 1 1316 0 is_stmt 1
	movq	integer_types+56(%rip), %rax	# integer_types, D.19689
	movzwl	60(%rax), %eax	# *_32, tmp112
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L236	#,
	.loc 1 1317 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L237	#,
	.loc 1 1317 0 is_stmt 0 discriminator 1
	movq	integer_types+64(%rip), %rax	# integer_types, iftmp.150
	jmp	.L238	#
.L237:
	.loc 1 1317 0 discriminator 2
	movq	integer_types+56(%rip), %rax	# integer_types, iftmp.150
.L238:
	.loc 1 1317 0 discriminator 3
	jmp	.L229	#
.L236:
	.loc 1 1319 0 is_stmt 1
	movq	integer_types+72(%rip), %rax	# integer_types, D.19689
	movzwl	60(%rax), %eax	# *_38, tmp115
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L239	#,
	.loc 1 1321 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L240	#,
	.loc 1 1321 0 is_stmt 0 discriminator 1
	movq	integer_types+80(%rip), %rax	# integer_types, iftmp.151
	jmp	.L241	#
.L240:
	.loc 1 1321 0 discriminator 2
	movq	integer_types+72(%rip), %rax	# integer_types, iftmp.151
.L241:
	.loc 1 1320 0 is_stmt 1
	jmp	.L229	#
.L239:
	.loc 1 1323 0
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19689
	movzwl	60(%rax), %eax	# *_44, tmp118
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jne	.L242	#,
	.loc 1 1325 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L243	#,
	.loc 1 1325 0 is_stmt 0 discriminator 1
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, iftmp.152
	jmp	.L244	#
.L243:
	.loc 1 1325 0 discriminator 2
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, iftmp.152
.L244:
	.loc 1 1324 0 is_stmt 1
	jmp	.L229	#
.L242:
	.loc 1 1327 0
	movq	global_trees+8(%rip), %rax	# global_trees, D.19689
	movzwl	60(%rax), %eax	# *_50, tmp121
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jb	.L245	#,
	.loc 1 1328 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L246	#,
	.loc 1 1328 0 is_stmt 0 discriminator 1
	movq	global_trees+48(%rip), %rax	# global_trees, iftmp.153
	jmp	.L247	#
.L246:
	.loc 1 1328 0 discriminator 2
	movq	global_trees+8(%rip), %rax	# global_trees, iftmp.153
.L247:
	.loc 1 1328 0 discriminator 3
	jmp	.L229	#
.L245:
	.loc 1 1330 0 is_stmt 1
	movq	global_trees+16(%rip), %rax	# global_trees, D.19689
	movzwl	60(%rax), %eax	# *_56, tmp124
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jb	.L248	#,
	.loc 1 1331 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L249	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movq	global_trees+56(%rip), %rax	# global_trees, iftmp.154
	jmp	.L250	#
.L249:
	.loc 1 1331 0 discriminator 2
	movq	global_trees+16(%rip), %rax	# global_trees, iftmp.154
.L250:
	.loc 1 1331 0 discriminator 3
	jmp	.L229	#
.L248:
	.loc 1 1333 0 is_stmt 1
	movq	global_trees+24(%rip), %rax	# global_trees, D.19689
	movzwl	60(%rax), %eax	# *_62, tmp127
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jb	.L251	#,
	.loc 1 1334 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L252	#,
	.loc 1 1334 0 is_stmt 0 discriminator 1
	movq	global_trees+64(%rip), %rax	# global_trees, iftmp.155
	jmp	.L253	#
.L252:
	.loc 1 1334 0 discriminator 2
	movq	global_trees+24(%rip), %rax	# global_trees, iftmp.155
.L253:
	.loc 1 1334 0 discriminator 3
	jmp	.L229	#
.L251:
	.loc 1 1336 0 is_stmt 1
	movq	global_trees+32(%rip), %rax	# global_trees, D.19689
	movzwl	60(%rax), %eax	# *_68, tmp130
	andw	$511, %ax	#, D.19690
	movzwl	%ax, %eax	# D.19690, D.19691
	cmpl	-4(%rbp), %eax	# bits, D.19691
	jb	.L254	#,
	.loc 1 1337 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L255	#,
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movq	global_trees+72(%rip), %rax	# global_trees, iftmp.156
	jmp	.L256	#
.L255:
	.loc 1 1337 0 discriminator 2
	movq	global_trees+32(%rip), %rax	# global_trees, iftmp.156
.L256:
	.loc 1 1337 0 discriminator 3
	jmp	.L229	#
.L254:
	.loc 1 1339 0 is_stmt 1
	movl	$0, %eax	#, D.19688
.L229:
	.loc 1 1340 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	type_for_size, .-type_for_size
	.globl	type_for_mode
	.type	type_for_mode, @function
type_for_mode:
.LFB32:
	.loc 1 1350 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movl	%esi, -8(%rbp)	# unsignedp, unsignedp
	.loc 1 1351 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19693
	movzbl	61(%rax), %eax	# *_19, tmp128
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L258	#,
	.loc 1 1352 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L259	#,
	.loc 1 1352 0 is_stmt 0 discriminator 1
	movq	integer_types+48(%rip), %rax	# integer_types, iftmp.157
	jmp	.L260	#
.L259:
	.loc 1 1352 0 discriminator 2
	movq	integer_types+40(%rip), %rax	# integer_types, iftmp.157
.L260:
	.loc 1 1352 0 discriminator 3
	jmp	.L261	#
.L258:
	.loc 1 1354 0 is_stmt 1
	movq	integer_types+8(%rip), %rax	# integer_types, D.19693
	movzbl	61(%rax), %eax	# *_27, tmp131
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L262	#,
	.loc 1 1355 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L263	#,
	.loc 1 1355 0 is_stmt 0 discriminator 1
	movq	integer_types+16(%rip), %rax	# integer_types, iftmp.158
	jmp	.L264	#
.L263:
	.loc 1 1355 0 discriminator 2
	movq	integer_types+8(%rip), %rax	# integer_types, iftmp.158
.L264:
	.loc 1 1355 0 discriminator 3
	jmp	.L261	#
.L262:
	.loc 1 1357 0 is_stmt 1
	movq	integer_types+24(%rip), %rax	# integer_types, D.19693
	movzbl	61(%rax), %eax	# *_33, tmp134
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L265	#,
	.loc 1 1358 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L266	#,
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movq	integer_types+32(%rip), %rax	# integer_types, iftmp.159
	jmp	.L267	#
.L266:
	.loc 1 1358 0 discriminator 2
	movq	integer_types+24(%rip), %rax	# integer_types, iftmp.159
.L267:
	.loc 1 1358 0 discriminator 3
	jmp	.L261	#
.L265:
	.loc 1 1360 0 is_stmt 1
	movq	integer_types+56(%rip), %rax	# integer_types, D.19693
	movzbl	61(%rax), %eax	# *_39, tmp137
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L268	#,
	.loc 1 1361 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L269	#,
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movq	integer_types+64(%rip), %rax	# integer_types, iftmp.160
	jmp	.L270	#
.L269:
	.loc 1 1361 0 discriminator 2
	movq	integer_types+56(%rip), %rax	# integer_types, iftmp.160
.L270:
	.loc 1 1361 0 discriminator 3
	jmp	.L261	#
.L268:
	.loc 1 1363 0 is_stmt 1
	movq	integer_types+72(%rip), %rax	# integer_types, D.19693
	movzbl	61(%rax), %eax	# *_45, tmp140
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L271	#,
	.loc 1 1364 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L272	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movq	integer_types+80(%rip), %rax	# integer_types, iftmp.161
	jmp	.L273	#
.L272:
	.loc 1 1364 0 discriminator 2
	movq	integer_types+72(%rip), %rax	# integer_types, iftmp.161
.L273:
	.loc 1 1364 0 discriminator 3
	jmp	.L261	#
.L271:
	.loc 1 1366 0 is_stmt 1
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19693
	movzbl	61(%rax), %eax	# *_51, tmp143
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L274	#,
	.loc 1 1368 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L275	#,
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, iftmp.162
	jmp	.L276	#
.L275:
	.loc 1 1368 0 discriminator 2
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, iftmp.162
.L276:
	.loc 1 1367 0 is_stmt 1
	jmp	.L261	#
.L274:
	.loc 1 1370 0
	cmpl	$2, -4(%rbp)	#, mode
	jne	.L277	#,
	.loc 1 1371 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L278	#,
	.loc 1 1371 0 is_stmt 0 discriminator 1
	movq	global_trees+48(%rip), %rax	# global_trees, iftmp.163
	jmp	.L279	#
.L278:
	.loc 1 1371 0 discriminator 2
	movq	global_trees+8(%rip), %rax	# global_trees, iftmp.163
.L279:
	.loc 1 1371 0 discriminator 3
	jmp	.L261	#
.L277:
	.loc 1 1373 0 is_stmt 1
	cmpl	$3, -4(%rbp)	#, mode
	jne	.L280	#,
	.loc 1 1374 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L281	#,
	.loc 1 1374 0 is_stmt 0 discriminator 1
	movq	global_trees+56(%rip), %rax	# global_trees, iftmp.164
	jmp	.L282	#
.L281:
	.loc 1 1374 0 discriminator 2
	movq	global_trees+16(%rip), %rax	# global_trees, iftmp.164
.L282:
	.loc 1 1374 0 discriminator 3
	jmp	.L261	#
.L280:
	.loc 1 1376 0 is_stmt 1
	cmpl	$4, -4(%rbp)	#, mode
	jne	.L283	#,
	.loc 1 1377 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L284	#,
	.loc 1 1377 0 is_stmt 0 discriminator 1
	movq	global_trees+64(%rip), %rax	# global_trees, iftmp.165
	jmp	.L285	#
.L284:
	.loc 1 1377 0 discriminator 2
	movq	global_trees+24(%rip), %rax	# global_trees, iftmp.165
.L285:
	.loc 1 1377 0 discriminator 3
	jmp	.L261	#
.L283:
	.loc 1 1379 0 is_stmt 1
	cmpl	$5, -4(%rbp)	#, mode
	jne	.L286	#,
	.loc 1 1380 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L287	#,
	.loc 1 1380 0 is_stmt 0 discriminator 1
	movq	global_trees+72(%rip), %rax	# global_trees, iftmp.166
	jmp	.L288	#
.L287:
	.loc 1 1380 0 discriminator 2
	movq	global_trees+32(%rip), %rax	# global_trees, iftmp.166
.L288:
	.loc 1 1380 0 discriminator 3
	jmp	.L261	#
.L286:
	.loc 1 1383 0 is_stmt 1
	movq	global_trees+40(%rip), %rax	# global_trees, D.19693
	movzbl	61(%rax), %eax	# *_69, tmp146
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L289	#,
	.loc 1 1384 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L290	#,
	.loc 1 1384 0 is_stmt 0 discriminator 1
	movq	global_trees+80(%rip), %rax	# global_trees, iftmp.167
	jmp	.L291	#
.L290:
	.loc 1 1384 0 discriminator 2
	movq	global_trees+40(%rip), %rax	# global_trees, iftmp.167
.L291:
	.loc 1 1384 0 discriminator 3
	jmp	.L261	#
.L289:
	.loc 1 1387 0 is_stmt 1
	movq	global_trees+192(%rip), %rax	# global_trees, D.19693
	movzbl	61(%rax), %eax	# *_75, tmp149
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L292	#,
	.loc 1 1388 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L292:
	.loc 1 1390 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.19693
	movzbl	61(%rax), %eax	# *_79, tmp152
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L293	#,
	.loc 1 1391 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L293:
	.loc 1 1393 0
	movq	global_trees+208(%rip), %rax	# global_trees, D.19693
	movzbl	61(%rax), %eax	# *_83, tmp155
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L294	#,
	.loc 1 1394 0
	movq	global_trees+208(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L294:
	.loc 1 1396 0
	movq	integer_types(%rip), %rax	# integer_types, D.19693
	movq	%rax, %rdi	# D.19693,
	call	build_pointer_type	#
	movzbl	61(%rax), %eax	# *_88, tmp158
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L295	#,
	.loc 1 1397 0
	movq	integer_types(%rip), %rax	# integer_types, D.19693
	movq	%rax, %rdi	# D.19693,
	call	build_pointer_type	#
	jmp	.L261	#
.L295:
	.loc 1 1399 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19693
	movq	%rax, %rdi	# D.19693,
	call	build_pointer_type	#
	movzbl	61(%rax), %eax	# *_94, tmp161
	shrb	%al	# D.19694
	movzbl	%al, %eax	# D.19694, D.19695
	cmpl	-4(%rbp), %eax	# mode, D.19695
	jne	.L296	#,
	.loc 1 1400 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19693
	movq	%rax, %rdi	# D.19693,
	call	build_pointer_type	#
	jmp	.L261	#
.L296:
	.loc 1 1403 0
	cmpl	$6, -4(%rbp)	#, mode
	je	.L297	#,
	.loc 1 1403 0 is_stmt 0 discriminator 2
	cmpl	$46, -4(%rbp)	#, mode
	je	.L297	#,
	.loc 1 1403 0 discriminator 1
	cmpl	$37, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$15, -4(%rbp)	#, mode
	je	.L297	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.168
	andl	$262144, %eax	#, D.19696
	testl	%eax, %eax	# D.19696
	je	.L298	#,
	cmpl	$16, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$5, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$39, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$36, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$33, -4(%rbp)	#, mode
	je	.L297	#,
	cmpl	$4, -4(%rbp)	#, mode
	jne	.L298	#,
.L297:
	movl	target_flags(%rip), %eax	# target_flags, target_flags.169
	andl	$327680, %eax	#, D.19696
	testl	%eax, %eax	# D.19696
	jne	.L299	#,
.L298:
	.loc 1 1403 0 discriminator 2
	cmpl	$5, -4(%rbp)	#, mode
	je	.L300	#,
	cmpl	$39, -4(%rbp)	#, mode
	je	.L300	#,
	.loc 1 1403 0 discriminator 1
	cmpl	$36, -4(%rbp)	#, mode
	je	.L300	#,
	cmpl	$33, -4(%rbp)	#, mode
	je	.L300	#,
	cmpl	$4, -4(%rbp)	#, mode
	jne	.L301	#,
.L300:
	movl	target_flags(%rip), %eax	# target_flags, target_flags.170
	andl	$16384, %eax	#, D.19696
	testl	%eax, %eax	# D.19696
	jne	.L299	#,
.L301:
	cmpl	$44, -4(%rbp)	#, mode
	je	.L302	#,
	.loc 1 1403 0 discriminator 4
	cmpl	$15, -4(%rbp)	#, mode
	jne	.L303	#,
.L302:
	.loc 1 1403 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.171
	andl	$1048576, %eax	#, D.19696
	testl	%eax, %eax	# D.19696
	je	.L303	#,
.L299:
	.loc 1 1405 0 is_stmt 1
	movl	-4(%rbp), %eax	# mode, tmp163
	subl	$33, %eax	#, tmp162
	cmpl	$17, %eax	#, tmp162
	ja	.L327	#,
	movl	%eax, %eax	# tmp162, tmp164
	movq	.L306(,%rax,8), %rax	#, tmp165
	jmp	*%rax	# tmp165
	.section	.rodata
	.align 8
	.align 4
.L306:
	.quad	.L305
	.quad	.L327
	.quad	.L327
	.quad	.L307
	.quad	.L308
	.quad	.L327
	.quad	.L309
	.quad	.L310
	.quad	.L327
	.quad	.L327
	.quad	.L311
	.quad	.L312
	.quad	.L327
	.quad	.L313
	.quad	.L327
	.quad	.L327
	.quad	.L327
	.quad	.L314
	.text
.L311:
	.loc 1 1408 0
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L315	#,
	.loc 1 1408 0 is_stmt 0 discriminator 1
	movq	global_trees+320(%rip), %rax	# global_trees, iftmp.172
	jmp	.L316	#
.L315:
	.loc 1 1408 0 discriminator 2
	movq	global_trees+392(%rip), %rax	# global_trees, iftmp.172
.L316:
	.loc 1 1408 0 discriminator 3
	jmp	.L261	#
.L310:
	.loc 1 1410 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L317	#,
	.loc 1 1410 0 is_stmt 0 discriminator 1
	movq	global_trees+280(%rip), %rax	# global_trees, iftmp.173
	jmp	.L318	#
.L317:
	.loc 1 1410 0 discriminator 2
	movq	global_trees+352(%rip), %rax	# global_trees, iftmp.173
.L318:
	.loc 1 1410 0 discriminator 3
	jmp	.L261	#
.L308:
	.loc 1 1412 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L319	#,
	.loc 1 1412 0 is_stmt 0 discriminator 1
	movq	global_trees+272(%rip), %rax	# global_trees, iftmp.174
	jmp	.L320	#
.L319:
	.loc 1 1412 0 discriminator 2
	movq	global_trees+344(%rip), %rax	# global_trees, iftmp.174
.L320:
	.loc 1 1412 0 discriminator 3
	jmp	.L261	#
.L305:
	.loc 1 1414 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L321	#,
	.loc 1 1414 0 is_stmt 0 discriminator 1
	movq	global_trees+304(%rip), %rax	# global_trees, iftmp.175
	jmp	.L322	#
.L321:
	.loc 1 1414 0 discriminator 2
	movq	global_trees+376(%rip), %rax	# global_trees, iftmp.175
.L322:
	.loc 1 1414 0 discriminator 3
	jmp	.L261	#
.L307:
	.loc 1 1416 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L323	#,
	.loc 1 1416 0 is_stmt 0 discriminator 1
	movq	global_trees+296(%rip), %rax	# global_trees, iftmp.176
	jmp	.L324	#
.L323:
	.loc 1 1416 0 discriminator 2
	movq	global_trees+368(%rip), %rax	# global_trees, iftmp.176
.L324:
	.loc 1 1416 0 discriminator 3
	jmp	.L261	#
.L309:
	.loc 1 1418 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, unsignedp
	je	.L325	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	movq	global_trees+288(%rip), %rax	# global_trees, iftmp.177
	jmp	.L326	#
.L325:
	.loc 1 1418 0 discriminator 2
	movq	global_trees+360(%rip), %rax	# global_trees, iftmp.177
.L326:
	.loc 1 1418 0 discriminator 3
	jmp	.L261	#
.L314:
	.loc 1 1420 0 is_stmt 1
	movq	global_trees+336(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L313:
	.loc 1 1422 0
	movq	global_trees+328(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L312:
	.loc 1 1424 0
	movq	global_trees+384(%rip), %rax	# global_trees, D.19692
	jmp	.L261	#
.L327:
	.loc 1 1426 0
	nop
.L303:
	.loc 1 1431 0
	movl	$0, %eax	#, D.19692
.L261:
	.loc 1 1432 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	type_for_mode, .-type_for_mode
	.globl	unsigned_type
	.type	unsigned_type, @function
unsigned_type:
.LFB33:
	.loc 1 1438 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 1439 0
	movq	-24(%rbp), %rax	# type, tmp73
	movq	128(%rax), %rax	# type_2(D)->type.main_variant, tmp74
	movq	%rax, -8(%rbp)	# tmp74, type1
	.loc 1 1440 0
	movq	integer_types+8(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	je	.L329	#,
	.loc 1 1440 0 is_stmt 0 discriminator 1
	movq	integer_types(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L330	#,
.L329:
	.loc 1 1441 0 is_stmt 1
	movq	integer_types+16(%rip), %rax	# integer_types, D.19697
	jmp	.L331	#
.L330:
	.loc 1 1442 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L332	#,
	.loc 1 1443 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.19697
	jmp	.L331	#
.L332:
	.loc 1 1444 0
	movq	integer_types+24(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L333	#,
	.loc 1 1445 0
	movq	integer_types+32(%rip), %rax	# integer_types, D.19697
	jmp	.L331	#
.L333:
	.loc 1 1446 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L334	#,
	.loc 1 1447 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.19697
	jmp	.L331	#
.L334:
	.loc 1 1448 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L335	#,
	.loc 1 1449 0
	movq	integer_types+80(%rip), %rax	# integer_types, D.19697
	jmp	.L331	#
.L335:
	.loc 1 1450 0
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L336	#,
	.loc 1 1451 0
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, D.19697
	jmp	.L331	#
.L336:
	.loc 1 1453 0
	movq	global_trees+40(%rip), %rax	# global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L337	#,
	.loc 1 1454 0
	movq	global_trees+80(%rip), %rax	# global_trees, D.19697
	jmp	.L331	#
.L337:
	.loc 1 1456 0
	movq	global_trees+32(%rip), %rax	# global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L338	#,
	.loc 1 1457 0
	movq	global_trees+72(%rip), %rax	# global_trees, D.19697
	jmp	.L331	#
.L338:
	.loc 1 1458 0
	movq	global_trees+24(%rip), %rax	# global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L339	#,
	.loc 1 1459 0
	movq	global_trees+64(%rip), %rax	# global_trees, D.19697
	jmp	.L331	#
.L339:
	.loc 1 1460 0
	movq	global_trees+16(%rip), %rax	# global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L340	#,
	.loc 1 1461 0
	movq	global_trees+56(%rip), %rax	# global_trees, D.19697
	jmp	.L331	#
.L340:
	.loc 1 1462 0
	movq	global_trees+8(%rip), %rax	# global_trees, D.19698
	cmpq	-8(%rbp), %rax	# type1, D.19698
	jne	.L341	#,
	.loc 1 1463 0
	movq	global_trees+48(%rip), %rax	# global_trees, D.19697
	jmp	.L331	#
.L341:
	.loc 1 1465 0
	movq	-24(%rbp), %rax	# type, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$1, %edi	#,
	call	signed_or_unsigned_type	#
.L331:
	.loc 1 1466 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	unsigned_type, .-unsigned_type
	.globl	signed_type
	.type	signed_type, @function
signed_type:
.LFB34:
	.loc 1 1473 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 1474 0
	movq	-24(%rbp), %rax	# type, tmp73
	movq	128(%rax), %rax	# type_2(D)->type.main_variant, tmp74
	movq	%rax, -8(%rbp)	# tmp74, type1
	.loc 1 1475 0
	movq	integer_types+16(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	je	.L343	#,
	.loc 1 1475 0 is_stmt 0 discriminator 1
	movq	integer_types(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L344	#,
.L343:
	.loc 1 1476 0 is_stmt 1
	movq	integer_types+8(%rip), %rax	# integer_types, D.19699
	jmp	.L345	#
.L344:
	.loc 1 1477 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L346	#,
	.loc 1 1478 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19699
	jmp	.L345	#
.L346:
	.loc 1 1479 0
	movq	integer_types+32(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L347	#,
	.loc 1 1480 0
	movq	integer_types+24(%rip), %rax	# integer_types, D.19699
	jmp	.L345	#
.L347:
	.loc 1 1481 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L348	#,
	.loc 1 1482 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.19699
	jmp	.L345	#
.L348:
	.loc 1 1483 0
	movq	integer_types+80(%rip), %rax	# integer_types, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L349	#,
	.loc 1 1484 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.19699
	jmp	.L345	#
.L349:
	.loc 1 1485 0
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L350	#,
	.loc 1 1486 0
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19699
	jmp	.L345	#
.L350:
	.loc 1 1488 0
	movq	global_trees+80(%rip), %rax	# global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L351	#,
	.loc 1 1489 0
	movq	global_trees+40(%rip), %rax	# global_trees, D.19699
	jmp	.L345	#
.L351:
	.loc 1 1491 0
	movq	global_trees+72(%rip), %rax	# global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L352	#,
	.loc 1 1492 0
	movq	global_trees+32(%rip), %rax	# global_trees, D.19699
	jmp	.L345	#
.L352:
	.loc 1 1493 0
	movq	global_trees+64(%rip), %rax	# global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L353	#,
	.loc 1 1494 0
	movq	global_trees+24(%rip), %rax	# global_trees, D.19699
	jmp	.L345	#
.L353:
	.loc 1 1495 0
	movq	global_trees+56(%rip), %rax	# global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L354	#,
	.loc 1 1496 0
	movq	global_trees+16(%rip), %rax	# global_trees, D.19699
	jmp	.L345	#
.L354:
	.loc 1 1497 0
	movq	global_trees+48(%rip), %rax	# global_trees, D.19700
	cmpq	-8(%rbp), %rax	# type1, D.19700
	jne	.L355	#,
	.loc 1 1498 0
	movq	global_trees+8(%rip), %rax	# global_trees, D.19699
	jmp	.L345	#
.L355:
	.loc 1 1500 0
	movq	-24(%rbp), %rax	# type, tmp75
	movq	%rax, %rsi	# tmp75,
	movl	$0, %edi	#,
	call	signed_or_unsigned_type	#
.L345:
	.loc 1 1501 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	signed_type, .-signed_type
	.globl	signed_or_unsigned_type
	.type	signed_or_unsigned_type, @function
signed_or_unsigned_type:
.LFB35:
	.loc 1 1510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# unsignedp, unsignedp
	movq	%rsi, -16(%rbp)	# type, type
	.loc 1 1511 0
	movq	-16(%rbp), %rax	# type, tmp111
	movzbl	16(%rax), %eax	# type_13(D)->common.code, D.19702
	cmpb	$6, %al	#, D.19702
	je	.L357	#,
	.loc 1 1511 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp112
	movzbl	16(%rax), %eax	# type_13(D)->common.code, D.19702
	cmpb	$10, %al	#, D.19702
	je	.L357	#,
	movq	-16(%rbp), %rax	# type, tmp113
	movzbl	16(%rax), %eax	# type_13(D)->common.code, D.19702
	cmpb	$11, %al	#, D.19702
	je	.L357	#,
	movq	-16(%rbp), %rax	# type, tmp114
	movzbl	16(%rax), %eax	# type_13(D)->common.code, D.19702
	cmpb	$12, %al	#, D.19702
	jne	.L358	#,
.L357:
	.loc 1 1512 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp115
	movzbl	17(%rax), %eax	# *type_13(D), tmp118
	shrb	$5, %al	#, D.19703
	andl	$1, %eax	#, D.19703
	movzbl	%al, %eax	# D.19703, D.19704
	cmpl	-4(%rbp), %eax	# unsignedp, D.19704
	jne	.L359	#,
.L358:
	.loc 1 1513 0
	movq	-16(%rbp), %rax	# type, D.19701
	jmp	.L360	#
.L359:
	.loc 1 1515 0
	movq	-16(%rbp), %rax	# type, tmp119
	movzwl	60(%rax), %eax	# *type_13(D), tmp122
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	integer_types+8(%rip), %rax	# integer_types, D.19706
	movzwl	60(%rax), %eax	# *_22, tmp125
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L361	#,
	.loc 1 1516 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L362	#,
	.loc 1 1516 0 is_stmt 0 discriminator 1
	movq	integer_types+16(%rip), %rax	# integer_types, iftmp.178
	jmp	.L363	#
.L362:
	.loc 1 1516 0 discriminator 2
	movq	integer_types+8(%rip), %rax	# integer_types, iftmp.178
.L363:
	.loc 1 1516 0 discriminator 3
	jmp	.L360	#
.L361:
	.loc 1 1517 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp126
	movzwl	60(%rax), %eax	# *type_13(D), tmp129
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	integer_types+40(%rip), %rax	# integer_types, D.19706
	movzwl	60(%rax), %eax	# *_28, tmp132
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L364	#,
	.loc 1 1518 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L365	#,
	.loc 1 1518 0 is_stmt 0 discriminator 1
	movq	integer_types+48(%rip), %rax	# integer_types, iftmp.179
	jmp	.L366	#
.L365:
	.loc 1 1518 0 discriminator 2
	movq	integer_types+40(%rip), %rax	# integer_types, iftmp.179
.L366:
	.loc 1 1518 0 discriminator 3
	jmp	.L360	#
.L364:
	.loc 1 1519 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp133
	movzwl	60(%rax), %eax	# *type_13(D), tmp136
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	integer_types+24(%rip), %rax	# integer_types, D.19706
	movzwl	60(%rax), %eax	# *_34, tmp139
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L367	#,
	.loc 1 1520 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L368	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movq	integer_types+32(%rip), %rax	# integer_types, iftmp.180
	jmp	.L369	#
.L368:
	.loc 1 1520 0 discriminator 2
	movq	integer_types+24(%rip), %rax	# integer_types, iftmp.180
.L369:
	.loc 1 1520 0 discriminator 3
	jmp	.L360	#
.L367:
	.loc 1 1521 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp140
	movzwl	60(%rax), %eax	# *type_13(D), tmp143
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	integer_types+56(%rip), %rax	# integer_types, D.19706
	movzwl	60(%rax), %eax	# *_40, tmp146
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L370	#,
	.loc 1 1522 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L371	#,
	.loc 1 1522 0 is_stmt 0 discriminator 1
	movq	integer_types+64(%rip), %rax	# integer_types, iftmp.181
	jmp	.L372	#
.L371:
	.loc 1 1522 0 discriminator 2
	movq	integer_types+56(%rip), %rax	# integer_types, iftmp.181
.L372:
	.loc 1 1522 0 discriminator 3
	jmp	.L360	#
.L370:
	.loc 1 1523 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp147
	movzwl	60(%rax), %eax	# *type_13(D), tmp150
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	integer_types+72(%rip), %rax	# integer_types, D.19706
	movzwl	60(%rax), %eax	# *_46, tmp153
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L373	#,
	.loc 1 1525 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L374	#,
	.loc 1 1525 0 is_stmt 0 discriminator 1
	movq	integer_types+80(%rip), %rax	# integer_types, iftmp.182
	jmp	.L375	#
.L374:
	.loc 1 1525 0 discriminator 2
	movq	integer_types+72(%rip), %rax	# integer_types, iftmp.182
.L375:
	.loc 1 1524 0 is_stmt 1
	jmp	.L360	#
.L373:
	.loc 1 1526 0
	movq	-16(%rbp), %rax	# type, tmp154
	movzwl	60(%rax), %eax	# *type_13(D), tmp157
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19706
	movzwl	60(%rax), %eax	# *_52, tmp160
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L376	#,
	.loc 1 1528 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L377	#,
	.loc 1 1528 0 is_stmt 0 discriminator 1
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, iftmp.183
	jmp	.L378	#
.L377:
	.loc 1 1528 0 discriminator 2
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, iftmp.183
.L378:
	.loc 1 1527 0 is_stmt 1
	jmp	.L360	#
.L376:
	.loc 1 1531 0
	movq	-16(%rbp), %rax	# type, tmp161
	movzwl	60(%rax), %eax	# *type_13(D), tmp164
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	global_trees+40(%rip), %rax	# global_trees, D.19706
	movzwl	60(%rax), %eax	# *_58, tmp167
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L379	#,
	.loc 1 1532 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L380	#,
	.loc 1 1532 0 is_stmt 0 discriminator 1
	movq	global_trees+80(%rip), %rax	# global_trees, iftmp.184
	jmp	.L381	#
.L380:
	.loc 1 1532 0 discriminator 2
	movq	global_trees+40(%rip), %rax	# global_trees, iftmp.184
.L381:
	.loc 1 1532 0 discriminator 3
	jmp	.L360	#
.L379:
	.loc 1 1534 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp168
	movzwl	60(%rax), %eax	# *type_13(D), tmp171
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	global_trees+32(%rip), %rax	# global_trees, D.19706
	movzwl	60(%rax), %eax	# *_64, tmp174
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L382	#,
	.loc 1 1535 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L383	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movq	global_trees+72(%rip), %rax	# global_trees, iftmp.185
	jmp	.L384	#
.L383:
	.loc 1 1535 0 discriminator 2
	movq	global_trees+32(%rip), %rax	# global_trees, iftmp.185
.L384:
	.loc 1 1535 0 discriminator 3
	jmp	.L360	#
.L382:
	.loc 1 1536 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp175
	movzwl	60(%rax), %eax	# *type_13(D), tmp178
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	global_trees+24(%rip), %rax	# global_trees, D.19706
	movzwl	60(%rax), %eax	# *_70, tmp181
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L385	#,
	.loc 1 1537 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L386	#,
	.loc 1 1537 0 is_stmt 0 discriminator 1
	movq	global_trees+64(%rip), %rax	# global_trees, iftmp.186
	jmp	.L387	#
.L386:
	.loc 1 1537 0 discriminator 2
	movq	global_trees+24(%rip), %rax	# global_trees, iftmp.186
.L387:
	.loc 1 1537 0 discriminator 3
	jmp	.L360	#
.L385:
	.loc 1 1538 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp182
	movzwl	60(%rax), %eax	# *type_13(D), tmp185
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	global_trees+16(%rip), %rax	# global_trees, D.19706
	movzwl	60(%rax), %eax	# *_76, tmp188
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L388	#,
	.loc 1 1539 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L389	#,
	.loc 1 1539 0 is_stmt 0 discriminator 1
	movq	global_trees+56(%rip), %rax	# global_trees, iftmp.187
	jmp	.L390	#
.L389:
	.loc 1 1539 0 discriminator 2
	movq	global_trees+16(%rip), %rax	# global_trees, iftmp.187
.L390:
	.loc 1 1539 0 discriminator 3
	jmp	.L360	#
.L388:
	.loc 1 1540 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp189
	movzwl	60(%rax), %eax	# *type_13(D), tmp192
	andw	$511, %ax	#, D.19705
	movl	%eax, %edx	# D.19705, D.19705
	movq	global_trees+8(%rip), %rax	# global_trees, D.19706
	movzwl	60(%rax), %eax	# *_82, tmp195
	andw	$511, %ax	#, D.19705
	cmpw	%ax, %dx	# D.19705, D.19705
	jne	.L391	#,
	.loc 1 1541 0
	cmpl	$0, -4(%rbp)	#, unsignedp
	je	.L392	#,
	.loc 1 1541 0 is_stmt 0 discriminator 1
	movq	global_trees+48(%rip), %rax	# global_trees, iftmp.188
	jmp	.L393	#
.L392:
	.loc 1 1541 0 discriminator 2
	movq	global_trees+8(%rip), %rax	# global_trees, iftmp.188
.L393:
	.loc 1 1541 0 discriminator 3
	jmp	.L360	#
.L391:
	.loc 1 1543 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, D.19701
.L360:
	.loc 1 1544 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	signed_or_unsigned_type, .-signed_or_unsigned_type
	.globl	min_precision
	.type	min_precision, @function
min_precision:
.LFB36:
	.loc 1 1553 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	movl	%esi, -28(%rbp)	# unsignedp, unsignedp
	.loc 1 1561 0
	movq	-24(%rbp), %rax	# value, tmp69
	movq	%rax, %rdi	# tmp69,
	call	tree_int_cst_sgn	#
	testl	%eax, %eax	# D.19707
	jns	.L395	#,
	.loc 1 1562 0
	movq	-24(%rbp), %rax	# value, tmp70
	movq	8(%rax), %rax	# value_3(D)->common.type, D.19708
	movq	-24(%rbp), %rdx	# value, tmp71
	movq	%rax, %rsi	# D.19708,
	movl	$90, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.19708,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp72, value
.L395:
	.loc 1 1567 0
	movq	-24(%rbp), %rax	# value, tmp73
	movq	%rax, %rdi	# tmp73,
	call	integer_zerop	#
	testl	%eax, %eax	# D.19707
	je	.L396	#,
	.loc 1 1568 0
	movl	$0, -4(%rbp)	#, log
	jmp	.L397	#
.L396:
	.loc 1 1570 0
	movq	-24(%rbp), %rax	# value, tmp74
	movq	%rax, %rdi	# tmp74,
	call	tree_floor_log2	#
	movl	%eax, -4(%rbp)	# tmp75, log
.L397:
	.loc 1 1572 0
	movl	-4(%rbp), %eax	# log, tmp76
	leal	1(%rax), %edx	#, D.19707
	cmpl	$0, -28(%rbp)	#, unsignedp
	sete	%al	#, D.19709
	movzbl	%al, %eax	# D.19709, D.19707
	addl	%edx, %eax	# D.19707, D.19707
	.loc 1 1573 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	min_precision, .-min_precision
	.section	.rodata
	.align 8
.LC16:
	.string	"invalid truth-value expression"
.LC17:
	.string	"+"
.LC18:
	.string	"-"
.LC19:
	.string	"*"
.LC20:
	.string	"max"
.LC21:
	.string	"min"
.LC22:
	.string	"=="
.LC23:
	.string	"!="
.LC24:
	.string	"<="
.LC25:
	.string	">="
.LC26:
	.string	"<"
.LC27:
	.string	">"
.LC28:
	.string	"<<"
.LC29:
	.string	">>"
.LC30:
	.string	"%"
.LC31:
	.string	"/"
.LC32:
	.string	"&"
.LC33:
	.string	"|"
.LC34:
	.string	"&&"
.LC35:
	.string	"||"
.LC36:
	.string	"^"
.LC37:
	.string	"rotate"
.LC38:
	.string	"unknown"
.LC39:
	.string	"invalid operands to binary %s"
	.text
	.globl	binary_op_error
	.type	binary_op_error, @function
binary_op_error:
.LFB37:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	.loc 1 1584 0
	movl	-20(%rbp), %eax	# code, tmp60
	subl	$59, %eax	#, tmp59
	cmpl	$56, %eax	#, tmp59
	ja	.L400	#,
	movl	%eax, %eax	# tmp59, tmp61
	movq	.L402(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L402:
	.quad	.L401
	.quad	.L403
	.quad	.L404
	.quad	.L405
	.quad	.L400
	.quad	.L405
	.quad	.L400
	.quad	.L406
	.quad	.L400
	.quad	.L406
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L407
	.quad	.L408
	.quad	.L400
	.quad	.L400
	.quad	.L409
	.quad	.L410
	.quad	.L411
	.quad	.L411
	.quad	.L412
	.quad	.L413
	.quad	.L414
	.quad	.L400
	.quad	.L400
	.quad	.L415
	.quad	.L416
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L417
	.quad	.L418
	.quad	.L419
	.quad	.L420
	.quad	.L421
	.quad	.L422
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L400
	.quad	.L423
	.text
.L423:
	.loc 1 1587 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1588 0
	jmp	.L399	#
.L401:
	.loc 1 1591 0
	movq	$.LC17, -8(%rbp)	#, opname
	jmp	.L425	#
.L403:
	.loc 1 1593 0
	movq	$.LC18, -8(%rbp)	#, opname
	jmp	.L425	#
.L404:
	.loc 1 1595 0
	movq	$.LC19, -8(%rbp)	#, opname
	jmp	.L425	#
.L408:
	.loc 1 1597 0
	movq	$.LC20, -8(%rbp)	#, opname
	jmp	.L425	#
.L407:
	.loc 1 1599 0
	movq	$.LC21, -8(%rbp)	#, opname
	jmp	.L425	#
.L421:
	.loc 1 1601 0
	movq	$.LC22, -8(%rbp)	#, opname
	jmp	.L425	#
.L422:
	.loc 1 1603 0
	movq	$.LC23, -8(%rbp)	#, opname
	jmp	.L425	#
.L418:
	.loc 1 1605 0
	movq	$.LC24, -8(%rbp)	#, opname
	jmp	.L425	#
.L420:
	.loc 1 1607 0
	movq	$.LC25, -8(%rbp)	#, opname
	jmp	.L425	#
.L417:
	.loc 1 1609 0
	movq	$.LC26, -8(%rbp)	#, opname
	jmp	.L425	#
.L419:
	.loc 1 1611 0
	movq	$.LC27, -8(%rbp)	#, opname
	jmp	.L425	#
.L409:
	.loc 1 1613 0
	movq	$.LC28, -8(%rbp)	#, opname
	jmp	.L425	#
.L410:
	.loc 1 1615 0
	movq	$.LC29, -8(%rbp)	#, opname
	jmp	.L425	#
.L406:
	.loc 1 1618 0
	movq	$.LC30, -8(%rbp)	#, opname
	jmp	.L425	#
.L405:
	.loc 1 1621 0
	movq	$.LC31, -8(%rbp)	#, opname
	jmp	.L425	#
.L414:
	.loc 1 1623 0
	movq	$.LC32, -8(%rbp)	#, opname
	jmp	.L425	#
.L412:
	.loc 1 1625 0
	movq	$.LC33, -8(%rbp)	#, opname
	jmp	.L425	#
.L415:
	.loc 1 1627 0
	movq	$.LC34, -8(%rbp)	#, opname
	jmp	.L425	#
.L416:
	.loc 1 1629 0
	movq	$.LC35, -8(%rbp)	#, opname
	jmp	.L425	#
.L413:
	.loc 1 1631 0
	movq	$.LC36, -8(%rbp)	#, opname
	jmp	.L425	#
.L411:
	.loc 1 1634 0
	movq	$.LC37, -8(%rbp)	#, opname
	jmp	.L425	#
.L400:
	.loc 1 1636 0
	movq	$.LC38, -8(%rbp)	#, opname
	nop
.L425:
	.loc 1 1638 0
	movq	-8(%rbp), %rax	# opname, tmp63
	movq	%rax, %rsi	# tmp63,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L399:
	.loc 1 1639 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	binary_op_error, .-binary_op_error
	.section	.rodata
	.align 8
.LC40:
	.string	"comparison is always false due to limited range of data type"
	.align 8
.LC41:
	.string	"comparison is always true due to limited range of data type"
	.align 8
.LC42:
	.string	"comparison of unsigned expression >= 0 is always true"
	.align 8
.LC43:
	.string	"comparison of unsigned expression < 0 is always false"
	.text
	.globl	shorten_compare
	.type	shorten_compare, @function
shorten_compare:
.LFB38:
	.loc 1 1660 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -136(%rbp)	# op0_ptr, op0_ptr
	movq	%rsi, -144(%rbp)	# op1_ptr, op1_ptr
	movq	%rdx, -152(%rbp)	# restype_ptr, restype_ptr
	movq	%rcx, -160(%rbp)	# rescode_ptr, rescode_ptr
	.loc 1 1662 0
	movq	-136(%rbp), %rax	# op0_ptr, tmp238
	movq	(%rax), %rax	# *op0_ptr_46(D), tmp239
	movq	%rax, -72(%rbp)	# tmp239, op0
	.loc 1 1663 0
	movq	-144(%rbp), %rax	# op1_ptr, tmp240
	movq	(%rax), %rax	# *op1_ptr_48(D), tmp241
	movq	%rax, -64(%rbp)	# tmp241, op1
	.loc 1 1667 0
	movq	-160(%rbp), %rax	# rescode_ptr, tmp242
	movl	(%rax), %eax	# *rescode_ptr_50(D), tmp243
	movl	%eax, -108(%rbp)	# tmp243, code
	.loc 1 1672 0
	leaq	-124(%rbp), %rdx	#, tmp244
	movq	-72(%rbp), %rax	# op0, tmp245
	movq	%rdx, %rsi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	get_narrower	#
	movq	%rax, -56(%rbp)	# tmp246, primop0
	.loc 1 1673 0
	leaq	-120(%rbp), %rdx	#, tmp247
	movq	-64(%rbp), %rax	# op1, tmp248
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# tmp248,
	call	get_narrower	#
	movq	%rax, -48(%rbp)	# tmp249, primop1
	.loc 1 1678 0
	movq	-72(%rbp), %rax	# op0, tmp250
	cmpq	-56(%rbp), %rax	# primop0, tmp250
	jne	.L427	#,
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp251
	movq	8(%rax), %rdx	# op0_47->common.type, D.19736
	movq	-152(%rbp), %rax	# restype_ptr, tmp252
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	cmpq	%rax, %rdx	# D.19736, D.19736
	je	.L427	#,
	.loc 1 1679 0 is_stmt 1
	movq	-72(%rbp), %rax	# op0, tmp253
	movq	8(%rax), %rax	# op0_47->common.type, D.19736
	movzbl	17(%rax), %eax	# *_57, tmp256
	shrb	$5, %al	#, D.19737
	andl	$1, %eax	#, D.19737
	movzbl	%al, %eax	# D.19737, unsignedp0.189
	movl	%eax, -124(%rbp)	# unsignedp0.189, unsignedp0
.L427:
	.loc 1 1680 0
	movq	-64(%rbp), %rax	# op1, tmp257
	cmpq	-48(%rbp), %rax	# primop1, tmp257
	jne	.L428	#,
	.loc 1 1680 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# op1, tmp258
	movq	8(%rax), %rdx	# op1_49->common.type, D.19736
	movq	-152(%rbp), %rax	# restype_ptr, tmp259
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	cmpq	%rax, %rdx	# D.19736, D.19736
	je	.L428	#,
	.loc 1 1681 0 is_stmt 1
	movq	-64(%rbp), %rax	# op1, tmp260
	movq	8(%rax), %rax	# op1_49->common.type, D.19736
	movzbl	17(%rax), %eax	# *_62, tmp263
	shrb	$5, %al	#, D.19737
	andl	$1, %eax	#, D.19737
	movzbl	%al, %eax	# D.19737, unsignedp1.190
	movl	%eax, -120(%rbp)	# unsignedp1.190, unsignedp1
.L428:
	.loc 1 1684 0
	movq	-56(%rbp), %rax	# primop0, tmp264
	movq	8(%rax), %rax	# primop0_52->common.type, D.19736
	movzbl	16(%rax), %eax	# _65->common.code, D.19738
	cmpb	$7, %al	#, D.19738
	sete	%al	#, D.19739
	movzbl	%al, %eax	# D.19739, tmp265
	movl	%eax, -116(%rbp)	# tmp265, real1
	.loc 1 1685 0
	movq	-48(%rbp), %rax	# primop1, tmp266
	movq	8(%rax), %rax	# primop1_53->common.type, D.19736
	movzbl	16(%rax), %eax	# _69->common.code, D.19738
	cmpb	$7, %al	#, D.19738
	sete	%al	#, D.19739
	movzbl	%al, %eax	# D.19739, tmp267
	movl	%eax, -112(%rbp)	# tmp267, real2
	.loc 1 1691 0
	movq	-56(%rbp), %rax	# primop0, tmp268
	movzbl	17(%rax), %eax	# *primop0_52, D.19738
	andl	$2, %eax	#, D.19738
	testb	%al, %al	# D.19738
	je	.L429	#,
	.loc 1 1692 0
	movq	-48(%rbp), %rax	# primop1, tmp269
	movq	%rax, %rdi	# tmp269,
	call	integer_zerop	#
	testl	%eax, %eax	# D.19740
	jne	.L429	#,
	.loc 1 1692 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# primop1, tmp270
	movq	%rax, %rdi	# tmp270,
	call	real_zerop	#
	testl	%eax, %eax	# D.19740
	jne	.L429	#,
.LBB27:
	.loc 1 1694 0 is_stmt 1
	movq	-56(%rbp), %rax	# primop0, tmp271
	movq	%rax, -8(%rbp)	# tmp271, tem
	.loc 1 1695 0
	movl	-124(%rbp), %eax	# unsignedp0, tmp272
	movl	%eax, -88(%rbp)	# tmp272, temi
	.loc 1 1696 0
	movq	-48(%rbp), %rax	# primop1, tmp273
	movq	%rax, -56(%rbp)	# tmp273, primop0
	.loc 1 1697 0
	movq	-8(%rbp), %rax	# tem, tmp274
	movq	%rax, -48(%rbp)	# tmp274, primop1
	.loc 1 1698 0
	movq	-72(%rbp), %rax	# op0, tmp275
	movq	%rax, -8(%rbp)	# tmp275, tem
	.loc 1 1699 0
	movq	-64(%rbp), %rax	# op1, tmp276
	movq	%rax, -72(%rbp)	# tmp276, op0
	.loc 1 1700 0
	movq	-8(%rbp), %rax	# tem, tmp277
	movq	%rax, -64(%rbp)	# tmp277, op1
	.loc 1 1701 0
	movq	-136(%rbp), %rax	# op0_ptr, tmp278
	movq	-72(%rbp), %rdx	# op0, tmp279
	movq	%rdx, (%rax)	# tmp279, *op0_ptr_46(D)
	.loc 1 1702 0
	movq	-144(%rbp), %rax	# op1_ptr, tmp280
	movq	-64(%rbp), %rdx	# op1, tmp281
	movq	%rdx, (%rax)	# tmp281, *op1_ptr_48(D)
	.loc 1 1703 0
	movl	-120(%rbp), %eax	# unsignedp1, unsignedp1.191
	movl	%eax, -124(%rbp)	# unsignedp1.191, unsignedp0
	.loc 1 1704 0
	movl	-88(%rbp), %eax	# temi, tmp282
	movl	%eax, -120(%rbp)	# tmp282, unsignedp1
	.loc 1 1705 0
	movl	-116(%rbp), %eax	# real1, tmp283
	movl	%eax, -88(%rbp)	# tmp283, temi
	.loc 1 1706 0
	movl	-112(%rbp), %eax	# real2, tmp284
	movl	%eax, -116(%rbp)	# tmp284, real1
	.loc 1 1707 0
	movl	-88(%rbp), %eax	# temi, tmp285
	movl	%eax, -112(%rbp)	# tmp285, real2
	.loc 1 1709 0
	movl	-108(%rbp), %eax	# code, code
	cmpl	$98, %eax	#, code
	je	.L431	#,
	cmpl	$98, %eax	#, code
	ja	.L432	#,
	cmpl	$97, %eax	#, code
	je	.L433	#,
	.loc 1 1724 0
	jmp	.L436	#
.L432:
	.loc 1 1709 0
	cmpl	$99, %eax	#, code
	je	.L434	#,
	cmpl	$100, %eax	#, code
	je	.L435	#,
	.loc 1 1724 0
	jmp	.L436	#
.L433:
	.loc 1 1712 0
	movl	$99, -108(%rbp)	#, code
	.loc 1 1713 0
	jmp	.L436	#
.L434:
	.loc 1 1715 0
	movl	$97, -108(%rbp)	#, code
	.loc 1 1716 0
	jmp	.L436	#
.L431:
	.loc 1 1718 0
	movl	$100, -108(%rbp)	#, code
	.loc 1 1719 0
	jmp	.L436	#
.L435:
	.loc 1 1721 0
	movl	$98, -108(%rbp)	#, code
	.loc 1 1722 0
	nop
.L436:
	.loc 1 1726 0
	movq	-160(%rbp), %rax	# rescode_ptr, tmp287
	movl	-108(%rbp), %edx	# code, tmp288
	movl	%edx, (%rax)	# tmp288, *rescode_ptr_50(D)
.L429:
.LBE27:
	.loc 1 1746 0
	cmpl	$0, -116(%rbp)	#, real1
	jne	.L437	#,
	.loc 1 1746 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, real2
	jne	.L437	#,
	.loc 1 1747 0 is_stmt 1
	movq	-48(%rbp), %rax	# primop1, tmp289
	movzbl	16(%rax), %eax	# primop1_10->common.code, D.19738
	cmpb	$25, %al	#, D.19738
	jne	.L437	#,
	.loc 1 1748 0
	movq	-56(%rbp), %rax	# primop0, tmp290
	movq	8(%rax), %rax	# primop0_8->common.type, D.19736
	movzwl	60(%rax), %eax	# *_93, tmp293
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %edx	# D.19741, D.19740
	movq	-152(%rbp), %rax	# restype_ptr, tmp294
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzwl	60(%rax), %eax	# *_96, tmp297
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %eax	# D.19741, D.19740
	cmpl	%eax, %edx	# D.19740, D.19740
	jge	.L437	#,
.LBB28:
	.loc 1 1753 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp298
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzbl	17(%rax), %eax	# *_99, tmp301
	shrb	$5, %al	#, D.19737
	andl	$1, %eax	#, D.19737
	movzbl	%al, %eax	# D.19737, tmp302
	movl	%eax, -84(%rbp)	# tmp302, unsignedp
	.loc 1 1756 0
	movq	-56(%rbp), %rax	# primop0, tmp303
	movq	8(%rax), %rdx	# primop0_8->common.type, D.19736
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.192
	movq	%rdx, %rsi	# D.19736,
	movl	%eax, %edi	# unsignedp0.192,
	call	signed_or_unsigned_type	#
	movq	%rax, -80(%rbp)	# tmp304, type
	.loc 1 1761 0
	movq	-80(%rbp), %rax	# type, tmp305
	movzbl	16(%rax), %eax	# type_104->common.code, D.19738
	cmpb	$10, %al	#, D.19738
	jne	.L438	#,
	.loc 1 1762 0
	movl	-124(%rbp), %edx	# unsignedp0, unsignedp0.193
	movq	-80(%rbp), %rax	# type, tmp306
	movzwl	60(%rax), %eax	# *type_104, tmp309
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %eax	# D.19741, D.19742
	movl	%edx, %esi	# unsignedp0.193,
	movl	%eax, %edi	# D.19742,
	call	type_for_size	#
	movq	%rax, -80(%rbp)	# tmp310, type
.L438:
	.loc 1 1764 0
	movq	-80(%rbp), %rax	# type, tmp311
	movq	112(%rax), %rax	# type_1->type.maxval, tmp312
	movq	%rax, -40(%rbp)	# tmp312, maxval
	.loc 1 1765 0
	movq	-80(%rbp), %rax	# type, tmp313
	movq	104(%rax), %rax	# type_1->type.minval, tmp314
	movq	%rax, -32(%rbp)	# tmp314, minval
	.loc 1 1767 0
	cmpl	$0, -84(%rbp)	#, unsignedp
	je	.L439	#,
	.loc 1 1767 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.194
	testl	%eax, %eax	# unsignedp0.194
	jne	.L439	#,
	.loc 1 1768 0 is_stmt 1
	movq	-152(%rbp), %rax	# restype_ptr, tmp315
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movq	%rax, %rdi	# D.19736,
	call	signed_type	#
	movq	-152(%rbp), %rdx	# restype_ptr, tmp316
	movq	%rax, (%rdx)	# D.19736, *restype_ptr_55(D)
.L439:
	.loc 1 1770 0
	movq	-48(%rbp), %rax	# primop1, tmp317
	movq	8(%rax), %rdx	# primop1_10->common.type, D.19736
	movq	-152(%rbp), %rax	# restype_ptr, tmp318
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	cmpq	%rax, %rdx	# D.19736, D.19736
	je	.L440	#,
	.loc 1 1771 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp319
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movq	-48(%rbp), %rdx	# primop1, tmp320
	movq	%rdx, %rsi	# tmp320,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movq	%rax, -48(%rbp)	# tmp321, primop1
.L440:
	.loc 1 1772 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp322
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	cmpq	-80(%rbp), %rax	# type, D.19736
	je	.L441	#,
	.loc 1 1774 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp323
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movq	-32(%rbp), %rdx	# minval, tmp324
	movq	%rdx, %rsi	# tmp324,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movq	%rax, -32(%rbp)	# tmp325, minval
	.loc 1 1775 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp326
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movq	-40(%rbp), %rdx	# maxval, tmp327
	movq	%rdx, %rsi	# tmp327,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movq	%rax, -40(%rbp)	# tmp328, maxval
.L441:
	.loc 1 1778 0
	cmpl	$0, -84(%rbp)	#, unsignedp
	je	.L442	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.195
	testl	%eax, %eax	# unsignedp0.195
	je	.L442	#,
	.loc 1 1780 0 is_stmt 1
	movq	-48(%rbp), %rax	# primop1, tmp329
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	movq	%rax, %rdx	# D.19743, D.19744
	movq	-32(%rbp), %rax	# minval, tmp330
	movq	40(%rax), %rax	# minval_22->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19744, D.19744
	jb	.L443	#,
	.loc 1 1780 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# primop1, tmp331
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-32(%rbp), %rax	# minval, tmp332
	movq	40(%rax), %rax	# minval_22->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L444	#,
	.loc 1 1780 0 discriminator 3
	movq	-48(%rbp), %rax	# primop1, tmp333
	movq	32(%rax), %rdx	# primop1_11->int_cst.int_cst.low, D.19744
	movq	-32(%rbp), %rax	# minval, tmp334
	movq	32(%rax), %rax	# minval_22->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L444	#,
.L443:
	.loc 1 1780 0 discriminator 1
	movl	$1, %eax	#, iftmp.196
	jmp	.L445	#
.L444:
	.loc 1 1780 0 discriminator 4
	movl	$0, %eax	#, iftmp.196
.L445:
	.loc 1 1780 0 discriminator 5
	movl	%eax, -104(%rbp)	# iftmp.196, min_gt
	.loc 1 1781 0 is_stmt 1 discriminator 5
	movq	-48(%rbp), %rax	# primop1, tmp335
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	movq	%rax, %rdx	# D.19743, D.19744
	movq	-40(%rbp), %rax	# maxval, tmp336
	movq	40(%rax), %rax	# maxval_21->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19744, D.19744
	jb	.L446	#,
	.loc 1 1781 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# primop1, tmp337
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-40(%rbp), %rax	# maxval, tmp338
	movq	40(%rax), %rax	# maxval_21->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L447	#,
	.loc 1 1781 0 discriminator 3
	movq	-48(%rbp), %rax	# primop1, tmp339
	movq	32(%rax), %rdx	# primop1_11->int_cst.int_cst.low, D.19744
	movq	-40(%rbp), %rax	# maxval, tmp340
	movq	32(%rax), %rax	# maxval_21->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L447	#,
.L446:
	.loc 1 1781 0 discriminator 1
	movl	$1, %eax	#, iftmp.197
	jmp	.L448	#
.L447:
	.loc 1 1781 0 discriminator 4
	movl	$0, %eax	#, iftmp.197
.L448:
	.loc 1 1781 0 discriminator 5
	movl	%eax, -100(%rbp)	# iftmp.197, max_gt
	.loc 1 1782 0 is_stmt 1 discriminator 5
	movq	-32(%rbp), %rax	# minval, tmp341
	movq	40(%rax), %rax	# minval_22->int_cst.int_cst.high, D.19743
	movq	%rax, %rdx	# D.19743, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp342
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19744, D.19744
	jb	.L449	#,
	.loc 1 1782 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# minval, tmp343
	movq	40(%rax), %rdx	# minval_22->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp344
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L450	#,
	.loc 1 1782 0 discriminator 3
	movq	-32(%rbp), %rax	# minval, tmp345
	movq	32(%rax), %rdx	# minval_22->int_cst.int_cst.low, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp346
	movq	32(%rax), %rax	# primop1_11->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L450	#,
.L449:
	.loc 1 1782 0 discriminator 1
	movl	$1, %eax	#, iftmp.198
	jmp	.L451	#
.L450:
	.loc 1 1782 0 discriminator 4
	movl	$0, %eax	#, iftmp.198
.L451:
	.loc 1 1782 0 discriminator 5
	movl	%eax, -96(%rbp)	# iftmp.198, min_lt
	.loc 1 1783 0 is_stmt 1 discriminator 5
	movq	-40(%rbp), %rax	# maxval, tmp347
	movq	40(%rax), %rax	# maxval_21->int_cst.int_cst.high, D.19743
	movq	%rax, %rdx	# D.19743, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp348
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19744, D.19744
	jb	.L452	#,
	.loc 1 1783 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# maxval, tmp349
	movq	40(%rax), %rdx	# maxval_21->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp350
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L453	#,
	.loc 1 1783 0 discriminator 3
	movq	-40(%rbp), %rax	# maxval, tmp351
	movq	32(%rax), %rdx	# maxval_21->int_cst.int_cst.low, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp352
	movq	32(%rax), %rax	# primop1_11->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L453	#,
.L452:
	.loc 1 1783 0 discriminator 1
	movl	$1, %eax	#, iftmp.199
	jmp	.L454	#
.L453:
	.loc 1 1783 0 discriminator 4
	movl	$0, %eax	#, iftmp.199
.L454:
	.loc 1 1783 0 discriminator 5
	movl	%eax, -92(%rbp)	# iftmp.199, max_lt
	jmp	.L455	#
.L442:
	.loc 1 1787 0 is_stmt 1
	movq	-48(%rbp), %rax	# primop1, tmp353
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-32(%rbp), %rax	# minval, tmp354
	movq	40(%rax), %rax	# minval_22->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jl	.L456	#,
	.loc 1 1787 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# primop1, tmp355
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-32(%rbp), %rax	# minval, tmp356
	movq	40(%rax), %rax	# minval_22->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L457	#,
	.loc 1 1787 0 discriminator 3
	movq	-48(%rbp), %rax	# primop1, tmp357
	movq	32(%rax), %rdx	# primop1_11->int_cst.int_cst.low, D.19744
	movq	-32(%rbp), %rax	# minval, tmp358
	movq	32(%rax), %rax	# minval_22->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L457	#,
.L456:
	.loc 1 1787 0 discriminator 1
	movl	$1, %eax	#, iftmp.200
	jmp	.L458	#
.L457:
	.loc 1 1787 0 discriminator 4
	movl	$0, %eax	#, iftmp.200
.L458:
	.loc 1 1787 0 discriminator 5
	movl	%eax, -104(%rbp)	# iftmp.200, min_gt
	.loc 1 1788 0 is_stmt 1 discriminator 5
	movq	-48(%rbp), %rax	# primop1, tmp359
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-40(%rbp), %rax	# maxval, tmp360
	movq	40(%rax), %rax	# maxval_21->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jl	.L459	#,
	.loc 1 1788 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# primop1, tmp361
	movq	40(%rax), %rdx	# primop1_11->int_cst.int_cst.high, D.19743
	movq	-40(%rbp), %rax	# maxval, tmp362
	movq	40(%rax), %rax	# maxval_21->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L460	#,
	.loc 1 1788 0 discriminator 3
	movq	-48(%rbp), %rax	# primop1, tmp363
	movq	32(%rax), %rdx	# primop1_11->int_cst.int_cst.low, D.19744
	movq	-40(%rbp), %rax	# maxval, tmp364
	movq	32(%rax), %rax	# maxval_21->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L460	#,
.L459:
	.loc 1 1788 0 discriminator 1
	movl	$1, %eax	#, iftmp.201
	jmp	.L461	#
.L460:
	.loc 1 1788 0 discriminator 4
	movl	$0, %eax	#, iftmp.201
.L461:
	.loc 1 1788 0 discriminator 5
	movl	%eax, -100(%rbp)	# iftmp.201, max_gt
	.loc 1 1789 0 is_stmt 1 discriminator 5
	movq	-32(%rbp), %rax	# minval, tmp365
	movq	40(%rax), %rdx	# minval_22->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp366
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jl	.L462	#,
	.loc 1 1789 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# minval, tmp367
	movq	40(%rax), %rdx	# minval_22->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp368
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L463	#,
	.loc 1 1789 0 discriminator 3
	movq	-32(%rbp), %rax	# minval, tmp369
	movq	32(%rax), %rdx	# minval_22->int_cst.int_cst.low, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp370
	movq	32(%rax), %rax	# primop1_11->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L463	#,
.L462:
	.loc 1 1789 0 discriminator 1
	movl	$1, %eax	#, iftmp.202
	jmp	.L464	#
.L463:
	.loc 1 1789 0 discriminator 4
	movl	$0, %eax	#, iftmp.202
.L464:
	.loc 1 1789 0 discriminator 5
	movl	%eax, -96(%rbp)	# iftmp.202, min_lt
	.loc 1 1790 0 is_stmt 1 discriminator 5
	movq	-40(%rbp), %rax	# maxval, tmp371
	movq	40(%rax), %rdx	# maxval_21->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp372
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jl	.L465	#,
	.loc 1 1790 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# maxval, tmp373
	movq	40(%rax), %rdx	# maxval_21->int_cst.int_cst.high, D.19743
	movq	-48(%rbp), %rax	# primop1, tmp374
	movq	40(%rax), %rax	# primop1_11->int_cst.int_cst.high, D.19743
	cmpq	%rax, %rdx	# D.19743, D.19743
	jne	.L466	#,
	.loc 1 1790 0 discriminator 3
	movq	-40(%rbp), %rax	# maxval, tmp375
	movq	32(%rax), %rdx	# maxval_21->int_cst.int_cst.low, D.19744
	movq	-48(%rbp), %rax	# primop1, tmp376
	movq	32(%rax), %rax	# primop1_11->int_cst.int_cst.low, D.19744
	cmpq	%rax, %rdx	# D.19744, D.19744
	jae	.L466	#,
.L465:
	.loc 1 1790 0 discriminator 1
	movl	$1, %eax	#, iftmp.203
	jmp	.L467	#
.L466:
	.loc 1 1790 0 discriminator 4
	movl	$0, %eax	#, iftmp.203
.L467:
	.loc 1 1790 0 discriminator 5
	movl	%eax, -92(%rbp)	# iftmp.203, max_lt
.L455:
	.loc 1 1793 0 is_stmt 1
	movq	$0, -24(%rbp)	#, val
	.loc 1 1795 0
	cmpl	$102, -108(%rbp)	#, code
	jne	.L468	#,
	.loc 1 1797 0
	cmpl	$0, -92(%rbp)	#, max_lt
	jne	.L469	#,
	.loc 1 1797 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, min_gt
	je	.L471	#,
.L469:
	.loc 1 1798 0 is_stmt 1
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp377
	movq	%rax, -24(%rbp)	# tmp377, val
	jmp	.L471	#
.L468:
	.loc 1 1800 0
	cmpl	$101, -108(%rbp)	#, code
	jne	.L472	#,
	.loc 1 1802 0
	cmpl	$0, -92(%rbp)	#, max_lt
	jne	.L473	#,
	.loc 1 1802 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, min_gt
	je	.L471	#,
.L473:
	.loc 1 1803 0 is_stmt 1
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp378
	movq	%rax, -24(%rbp)	# tmp378, val
	jmp	.L471	#
.L472:
	.loc 1 1805 0
	cmpl	$97, -108(%rbp)	#, code
	jne	.L475	#,
	.loc 1 1807 0
	cmpl	$0, -92(%rbp)	#, max_lt
	je	.L476	#,
	.loc 1 1808 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp379
	movq	%rax, -24(%rbp)	# tmp379, val
.L476:
	.loc 1 1809 0
	cmpl	$0, -96(%rbp)	#, min_lt
	jne	.L471	#,
	.loc 1 1810 0
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp380
	movq	%rax, -24(%rbp)	# tmp380, val
	jmp	.L471	#
.L475:
	.loc 1 1812 0
	cmpl	$99, -108(%rbp)	#, code
	jne	.L478	#,
	.loc 1 1814 0
	cmpl	$0, -104(%rbp)	#, min_gt
	je	.L479	#,
	.loc 1 1815 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp381
	movq	%rax, -24(%rbp)	# tmp381, val
.L479:
	.loc 1 1816 0
	cmpl	$0, -100(%rbp)	#, max_gt
	jne	.L471	#,
	.loc 1 1817 0
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp382
	movq	%rax, -24(%rbp)	# tmp382, val
	jmp	.L471	#
.L478:
	.loc 1 1819 0
	cmpl	$98, -108(%rbp)	#, code
	jne	.L481	#,
	.loc 1 1821 0
	cmpl	$0, -100(%rbp)	#, max_gt
	jne	.L482	#,
	.loc 1 1822 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp383
	movq	%rax, -24(%rbp)	# tmp383, val
.L482:
	.loc 1 1823 0
	cmpl	$0, -104(%rbp)	#, min_gt
	je	.L471	#,
	.loc 1 1824 0
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp384
	movq	%rax, -24(%rbp)	# tmp384, val
	jmp	.L471	#
.L481:
	.loc 1 1826 0
	cmpl	$100, -108(%rbp)	#, code
	jne	.L471	#,
	.loc 1 1828 0
	cmpl	$0, -96(%rbp)	#, min_lt
	jne	.L484	#,
	.loc 1 1829 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp385
	movq	%rax, -24(%rbp)	# tmp385, val
.L484:
	.loc 1 1830 0
	cmpl	$0, -92(%rbp)	#, max_lt
	je	.L471	#,
	.loc 1 1831 0
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp386
	movq	%rax, -24(%rbp)	# tmp386, val
.L471:
	.loc 1 1845 0
	cmpl	$0, -84(%rbp)	#, unsignedp
	je	.L485	#,
	.loc 1 1845 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.204
	testl	%eax, %eax	# unsignedp0.204
	jne	.L485	#,
	.loc 1 1847 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, val
	je	.L486	#,
	.loc 1 1848 0
	movl	-108(%rbp), %eax	# code, code
	cmpl	$99, %eax	#, code
	ja	.L488	#,
	cmpl	$98, %eax	#, code
	jae	.L489	#,
	cmpl	$97, %eax	#, code
	je	.L490	#,
	.loc 1 1863 0
	jmp	.L486	#
.L488:
	.loc 1 1848 0
	cmpl	$100, %eax	#, code
	je	.L490	#,
	.loc 1 1863 0
	jmp	.L486	#
.L490:
	.loc 1 1852 0
	movq	-80(%rbp), %rax	# type, tmp388
	movq	104(%rax), %rax	# type_1->type.minval, tmp389
	movq	%rax, -48(%rbp)	# tmp389, primop1
	.loc 1 1853 0
	movq	$0, -24(%rbp)	#, val
	.loc 1 1854 0
	jmp	.L486	#
.L489:
	.loc 1 1858 0
	movq	-80(%rbp), %rax	# type, tmp390
	movq	112(%rax), %rax	# type_1->type.maxval, tmp391
	movq	%rax, -48(%rbp)	# tmp391, primop1
	.loc 1 1859 0
	movq	$0, -24(%rbp)	#, val
	.loc 1 1860 0
	nop
.L486:
	.loc 1 1865 0
	movq	-80(%rbp), %rax	# type, tmp392
	movq	%rax, %rdi	# tmp392,
	call	unsigned_type	#
	movq	%rax, -80(%rbp)	# tmp393, type
.L485:
	.loc 1 1868 0
	cmpl	$0, -100(%rbp)	#, max_gt
	jne	.L491	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.205
	testl	%eax, %eax	# unsignedp0.205
	jne	.L491	#,
	movq	-56(%rbp), %rax	# primop0, tmp394
	movzbl	16(%rax), %eax	# primop0_8->common.code, D.19738
	cmpb	$25, %al	#, D.19738
	je	.L491	#,
	.loc 1 1872 0 is_stmt 1
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, D.19736
	cmpq	-24(%rbp), %rax	# val, D.19736
	jne	.L492	#,
	.loc 1 1873 0
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L492:
	.loc 1 1874 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, D.19736
	cmpq	-24(%rbp), %rax	# val, D.19736
	jne	.L491	#,
	.loc 1 1875 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L491:
	.loc 1 1878 0
	cmpl	$0, -96(%rbp)	#, min_lt
	jne	.L493	#,
	.loc 1 1878 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.206
	testl	%eax, %eax	# unsignedp0.206
	je	.L493	#,
	movq	-56(%rbp), %rax	# primop0, tmp395
	movzbl	16(%rax), %eax	# primop0_8->common.code, D.19738
	cmpb	$25, %al	#, D.19738
	je	.L493	#,
	.loc 1 1881 0 is_stmt 1
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, D.19736
	cmpq	-24(%rbp), %rax	# val, D.19736
	jne	.L494	#,
	.loc 1 1882 0
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L494:
	.loc 1 1883 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, D.19736
	cmpq	-24(%rbp), %rax	# val, D.19736
	jne	.L493	#,
	.loc 1 1884 0
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L493:
	.loc 1 1887 0
	cmpq	$0, -24(%rbp)	#, val
	je	.L495	#,
	.loc 1 1890 0
	movq	-56(%rbp), %rax	# primop0, tmp396
	movzbl	17(%rax), %eax	# *primop0_8, D.19738
	andl	$1, %eax	#, D.19738
	testb	%al, %al	# D.19738
	je	.L496	#,
	.loc 1 1891 0
	movq	-24(%rbp), %rax	# val, tmp397
	movq	8(%rax), %rax	# val_34->common.type, D.19736
	movq	-24(%rbp), %rcx	# val, tmp398
	movq	-56(%rbp), %rdx	# primop0, tmp399
	movq	%rax, %rsi	# D.19736,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L513	#
.L496:
	.loc 1 1892 0
	movq	-24(%rbp), %rax	# val, D.19735
	jmp	.L513	#
.L495:
.LBE28:
	.loc 1 1749 0
	jmp	.L498	#
.L437:
	.loc 1 1899 0
	cmpl	$0, -116(%rbp)	#, real1
	je	.L499	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, real2
	je	.L499	#,
	.loc 1 1900 0 is_stmt 1
	movq	-56(%rbp), %rax	# primop0, tmp400
	movq	8(%rax), %rax	# primop0_8->common.type, D.19736
	movzwl	60(%rax), %eax	# *_235, tmp403
	andw	$511, %ax	#, D.19741
	movl	%eax, %edx	# D.19741, D.19741
	.loc 1 1901 0
	movq	-48(%rbp), %rax	# primop1, tmp404
	movq	8(%rax), %rax	# primop1_10->common.type, D.19736
	movzwl	60(%rax), %eax	# *_237, tmp407
	andw	$511, %ax	#, D.19741
	.loc 1 1900 0
	cmpw	%ax, %dx	# D.19741, D.19741
	jne	.L499	#,
	.loc 1 1902 0
	movq	-56(%rbp), %rax	# primop0, tmp408
	movq	8(%rax), %rax	# primop0_8->common.type, tmp409
	movq	%rax, -80(%rbp)	# tmp409, type
	jmp	.L498	#
.L499:
	.loc 1 1912 0
	movl	-124(%rbp), %edx	# unsignedp0, unsignedp0.207
	movl	-120(%rbp), %eax	# unsignedp1, unsignedp1.208
	cmpl	%eax, %edx	# unsignedp1.208, unsignedp0.207
	jne	.L500	#,
	.loc 1 1912 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# real1, tmp410
	cmpl	-112(%rbp), %eax	# real2, tmp410
	jne	.L500	#,
	.loc 1 1913 0 is_stmt 1
	movq	-56(%rbp), %rax	# primop0, tmp411
	movq	8(%rax), %rax	# primop0_8->common.type, D.19736
	movzwl	60(%rax), %eax	# *_242, tmp414
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %edx	# D.19741, D.19740
	movq	-152(%rbp), %rax	# restype_ptr, tmp415
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzwl	60(%rax), %eax	# *_245, tmp418
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %eax	# D.19741, D.19740
	cmpl	%eax, %edx	# D.19740, D.19740
	jge	.L500	#,
	.loc 1 1914 0
	movq	-48(%rbp), %rax	# primop1, tmp419
	movq	8(%rax), %rax	# primop1_10->common.type, D.19736
	movzwl	60(%rax), %eax	# *_248, tmp422
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %edx	# D.19741, D.19740
	movq	-152(%rbp), %rax	# restype_ptr, tmp423
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzwl	60(%rax), %eax	# *_251, tmp426
	andw	$511, %ax	#, D.19741
	movzwl	%ax, %eax	# D.19741, D.19740
	cmpl	%eax, %edx	# D.19740, D.19740
	jge	.L500	#,
	.loc 1 1916 0
	movq	-48(%rbp), %rax	# primop1, tmp427
	movq	8(%rax), %rdx	# primop1_10->common.type, D.19736
	movq	-56(%rbp), %rax	# primop0, tmp428
	movq	8(%rax), %rax	# primop0_8->common.type, D.19736
	movq	%rdx, %rsi	# D.19736,
	movq	%rax, %rdi	# D.19736,
	call	common_type	#
	movq	%rax, -80(%rbp)	# tmp429, type
	.loc 1 1917 0
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.210
	testl	%eax, %eax	# unsignedp0.210
	jne	.L501	#,
	.loc 1 1918 0 discriminator 2
	movq	-152(%rbp), %rax	# restype_ptr, tmp430
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzbl	17(%rax), %eax	# *_258, D.19738
	andl	$32, %eax	#, D.19738
	.loc 1 1917 0 discriminator 2
	testb	%al, %al	# D.19738
	je	.L502	#,
.L501:
	.loc 1 1917 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.209
	jmp	.L503	#
.L502:
	.loc 1 1917 0 discriminator 3
	movl	$0, %eax	#, iftmp.209
.L503:
	.loc 1 1917 0 discriminator 4
	movq	-80(%rbp), %rdx	# type, tmp431
	movq	%rdx, %rsi	# tmp431,
	movl	%eax, %edi	# iftmp.209,
	call	signed_or_unsigned_type	#
	movq	%rax, -80(%rbp)	# tmp432, type
	.loc 1 1922 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# primop0, tmp433
	movq	8(%rax), %rdx	# primop0_8->common.type, D.19736
	movl	-124(%rbp), %eax	# unsignedp0, unsignedp0.211
	movq	%rdx, %rsi	# D.19736,
	movl	%eax, %edi	# unsignedp0.211,
	call	signed_or_unsigned_type	#
	movq	-56(%rbp), %rdx	# primop0, tmp434
	movq	%rdx, %rsi	# tmp434,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movq	%rax, -56(%rbp)	# tmp435, primop0
	.loc 1 1924 0 discriminator 4
	movq	-48(%rbp), %rax	# primop1, tmp436
	movq	8(%rax), %rdx	# primop1_10->common.type, D.19736
	movl	-120(%rbp), %eax	# unsignedp1, unsignedp1.212
	movq	%rdx, %rsi	# D.19736,
	movl	%eax, %edi	# unsignedp1.212,
	call	signed_or_unsigned_type	#
	movq	-48(%rbp), %rdx	# primop1, tmp437
	movq	%rdx, %rsi	# tmp437,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movq	%rax, -48(%rbp)	# tmp438, primop1
	jmp	.L498	#
.L500:
	.loc 1 1931 0
	movq	-152(%rbp), %rax	# restype_ptr, tmp439
	movq	(%rax), %rax	# *restype_ptr_55(D), tmp440
	movq	%rax, -80(%rbp)	# tmp440, type
	.loc 1 1932 0
	movq	-72(%rbp), %rax	# op0, tmp441
	movq	%rax, -56(%rbp)	# tmp441, primop0
	.loc 1 1933 0
	movq	-64(%rbp), %rax	# op1, tmp442
	movq	%rax, -48(%rbp)	# tmp442, primop1
	.loc 1 1935 0
	cmpl	$0, -116(%rbp)	#, real1
	jne	.L498	#,
	.loc 1 1935 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, real2
	jne	.L498	#,
	movq	-48(%rbp), %rax	# primop1, tmp443
	movq	%rax, %rdi	# tmp443,
	call	integer_zerop	#
	testl	%eax, %eax	# D.19740
	je	.L498	#,
	.loc 1 1936 0 is_stmt 1
	movq	-152(%rbp), %rax	# restype_ptr, tmp444
	movq	(%rax), %rax	# *restype_ptr_55(D), D.19736
	movzbl	17(%rax), %eax	# *_276, D.19738
	andl	$32, %eax	#, D.19738
	testb	%al, %al	# D.19738
	je	.L498	#,
.LBB29:
	.loc 1 1938 0
	movq	$0, -16(%rbp)	#, value
	.loc 1 1939 0
	movl	-108(%rbp), %eax	# code, code
	cmpl	$97, %eax	#, code
	je	.L505	#,
	cmpl	$100, %eax	#, code
	je	.L506	#,
	.loc 1 1964 0
	jmp	.L509	#
.L506:
	.loc 1 1946 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.213
	testl	%eax, %eax	# extra_warnings.213
	je	.L507	#,
	.loc 1 1946 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.214
	testl	%eax, %eax	# in_system_header.214
	jne	.L507	#,
	.loc 1 1947 0 is_stmt 1
	movq	-56(%rbp), %rax	# primop0, tmp446
	movzbl	16(%rax), %eax	# primop0_273->common.code, D.19738
	cmpb	$25, %al	#, D.19738
	jne	.L508	#,
	.loc 1 1948 0 discriminator 1
	movq	-80(%rbp), %rax	# type, tmp447
	movq	%rax, %rdi	# tmp447,
	call	signed_type	#
	movq	-56(%rbp), %rdx	# primop0, tmp448
	movq	%rdx, %rsi	# tmp448,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movzbl	18(%rax), %eax	# *_284, D.19738
	andl	$8, %eax	#, D.19738
	.loc 1 1947 0 discriminator 1
	testb	%al, %al	# D.19738
	je	.L507	#,
.L508:
	.loc 1 1950 0
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L507:
	.loc 1 1951 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, tmp449
	movq	%rax, -16(%rbp)	# tmp449, value
	.loc 1 1952 0
	jmp	.L509	#
.L505:
	.loc 1 1955 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.215
	testl	%eax, %eax	# extra_warnings.215
	je	.L510	#,
	.loc 1 1955 0 is_stmt 0 discriminator 1
	movl	in_system_header(%rip), %eax	# in_system_header, in_system_header.216
	testl	%eax, %eax	# in_system_header.216
	jne	.L510	#,
	.loc 1 1956 0 is_stmt 1
	movq	-56(%rbp), %rax	# primop0, tmp450
	movzbl	16(%rax), %eax	# primop0_273->common.code, D.19738
	cmpb	$25, %al	#, D.19738
	jne	.L511	#,
	.loc 1 1957 0 discriminator 1
	movq	-80(%rbp), %rax	# type, tmp451
	movq	%rax, %rdi	# tmp451,
	call	signed_type	#
	movq	-56(%rbp), %rdx	# primop0, tmp452
	movq	%rdx, %rsi	# tmp452,
	movq	%rax, %rdi	# D.19736,
	call	convert	#
	movzbl	18(%rax), %eax	# *_292, D.19738
	andl	$8, %eax	#, D.19738
	.loc 1 1956 0 discriminator 1
	testb	%al, %al	# D.19738
	je	.L510	#,
.L511:
	.loc 1 1959 0
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L510:
	.loc 1 1960 0
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, tmp453
	movq	%rax, -16(%rbp)	# tmp453, value
	.loc 1 1961 0
	nop
.L509:
	.loc 1 1967 0
	cmpq	$0, -16(%rbp)	#, value
	je	.L498	#,
	.loc 1 1970 0
	movq	-56(%rbp), %rax	# primop0, tmp454
	movzbl	17(%rax), %eax	# *primop0_273, D.19738
	andl	$1, %eax	#, D.19738
	testb	%al, %al	# D.19738
	je	.L512	#,
	.loc 1 1971 0
	movq	-16(%rbp), %rax	# value, tmp455
	movq	8(%rax), %rax	# value_35->common.type, D.19736
	movq	-16(%rbp), %rcx	# value, tmp456
	movq	-56(%rbp), %rdx	# primop0, tmp457
	movq	%rax, %rsi	# D.19736,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L513	#
.L512:
	.loc 1 1973 0
	movq	-16(%rbp), %rax	# value, D.19735
	jmp	.L513	#
.L498:
.LBE29:
	.loc 1 1978 0
	movq	-56(%rbp), %rdx	# primop0, tmp458
	movq	-80(%rbp), %rax	# type, tmp459
	movq	%rdx, %rsi	# tmp458,
	movq	%rax, %rdi	# tmp459,
	call	convert	#
	movq	-136(%rbp), %rdx	# op0_ptr, tmp460
	movq	%rax, (%rdx)	# D.19736, *op0_ptr_46(D)
	.loc 1 1979 0
	movq	-48(%rbp), %rdx	# primop1, tmp461
	movq	-80(%rbp), %rax	# type, tmp462
	movq	%rdx, %rsi	# tmp461,
	movq	%rax, %rdi	# tmp462,
	call	convert	#
	movq	-144(%rbp), %rdx	# op1_ptr, tmp463
	movq	%rax, (%rdx)	# D.19736, *op1_ptr_48(D)
	.loc 1 1981 0
	movq	c_global_trees+128(%rip), %rdx	# c_global_trees, D.19736
	movq	-152(%rbp), %rax	# restype_ptr, tmp464
	movq	%rdx, (%rax)	# D.19736, *restype_ptr_55(D)
	.loc 1 1983 0
	movl	$0, %eax	#, D.19735
.L513:
	.loc 1 1984 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	shorten_compare, .-shorten_compare
	.section	.rodata
	.align 8
.LC44:
	.string	"pointer of type `void *' used in arithmetic"
	.align 8
.LC45:
	.string	"pointer to a function used in arithmetic"
	.align 8
.LC46:
	.string	"pointer to member function used in arithmetic"
	.align 8
.LC47:
	.string	"pointer to a member used in arithmetic"
	.text
	.globl	pointer_int_sum
	.type	pointer_int_sum, @function
pointer_int_sum:
.LFB39:
	.loc 1 1993 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# resultcode, resultcode
	movq	%rsi, -64(%rbp)	# ptrop, ptrop
	movq	%rdx, -72(%rbp)	# intop, intop
	.loc 1 2001 0
	movq	-64(%rbp), %rax	# ptrop, tmp126
	movq	8(%rax), %rax	# ptrop_7(D)->common.type, tmp127
	movq	%rax, -32(%rbp)	# tmp127, result_type
	.loc 1 2003 0
	movq	-32(%rbp), %rax	# result_type, tmp128
	movq	8(%rax), %rax	# result_type_8->common.type, D.19751
	movzbl	16(%rax), %eax	# _9->common.code, D.19752
	cmpb	$5, %al	#, D.19752
	jne	.L515	#,
	.loc 1 2005 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.217
	testl	%eax, %eax	# pedantic.217
	jne	.L516	#,
	.loc 1 2005 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.218
	testl	%eax, %eax	# warn_pointer_arith.218
	je	.L517	#,
.L516:
	.loc 1 2006 0 is_stmt 1
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L517:
	.loc 1 2007 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp129
	movq	%rax, -40(%rbp)	# tmp129, size_exp
	jmp	.L518	#
.L515:
	.loc 1 2009 0
	movq	-32(%rbp), %rax	# result_type, tmp130
	movq	8(%rax), %rax	# result_type_8->common.type, D.19751
	movzbl	16(%rax), %eax	# _14->common.code, D.19752
	cmpb	$23, %al	#, D.19752
	jne	.L519	#,
	.loc 1 2011 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.219
	testl	%eax, %eax	# pedantic.219
	jne	.L520	#,
	.loc 1 2011 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.220
	testl	%eax, %eax	# warn_pointer_arith.220
	je	.L521	#,
.L520:
	.loc 1 2012 0 is_stmt 1
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L521:
	.loc 1 2013 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp131
	movq	%rax, -40(%rbp)	# tmp131, size_exp
	jmp	.L518	#
.L519:
	.loc 1 2015 0
	movq	-32(%rbp), %rax	# result_type, tmp132
	movq	8(%rax), %rax	# result_type_8->common.type, D.19751
	movzbl	16(%rax), %eax	# _19->common.code, D.19752
	cmpb	$16, %al	#, D.19752
	jne	.L522	#,
	.loc 1 2017 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.221
	testl	%eax, %eax	# pedantic.221
	jne	.L523	#,
	.loc 1 2017 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.222
	testl	%eax, %eax	# warn_pointer_arith.222
	je	.L524	#,
.L523:
	.loc 1 2018 0 is_stmt 1
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L524:
	.loc 1 2019 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp133
	movq	%rax, -40(%rbp)	# tmp133, size_exp
	jmp	.L518	#
.L522:
	.loc 1 2021 0
	movq	-32(%rbp), %rax	# result_type, tmp134
	movq	8(%rax), %rax	# result_type_8->common.type, D.19751
	movzbl	16(%rax), %eax	# _24->common.code, D.19752
	cmpb	$14, %al	#, D.19752
	jne	.L525	#,
	.loc 1 2023 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.223
	testl	%eax, %eax	# pedantic.223
	jne	.L526	#,
	.loc 1 2023 0 is_stmt 0 discriminator 1
	movl	warn_pointer_arith(%rip), %eax	# warn_pointer_arith, warn_pointer_arith.224
	testl	%eax, %eax	# warn_pointer_arith.224
	je	.L527	#,
.L526:
	.loc 1 2024 0 is_stmt 1
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L527:
	.loc 1 2025 0
	movq	global_trees+96(%rip), %rax	# global_trees, tmp135
	movq	%rax, -40(%rbp)	# tmp135, size_exp
	jmp	.L518	#
.L525:
	.loc 1 2028 0
	movq	-32(%rbp), %rax	# result_type, tmp136
	movq	8(%rax), %rax	# result_type_8->common.type, D.19751
	movq	%rax, %rdi	# D.19751,
	call	size_in_bytes	#
	movq	%rax, -40(%rbp)	# tmp137, size_exp
.L518:
	.loc 1 2035 0
	movq	-72(%rbp), %rax	# intop, tmp138
	movzbl	16(%rax), %eax	# intop_31(D)->common.code, D.19752
	cmpb	$59, %al	#, D.19752
	je	.L528	#,
	.loc 1 2035 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# intop, tmp139
	movzbl	16(%rax), %eax	# intop_31(D)->common.code, D.19752
	cmpb	$60, %al	#, D.19752
	jne	.L529	#,
.L528:
	.loc 1 2036 0 is_stmt 1
	movq	-72(%rbp), %rax	# intop, tmp140
	movzbl	17(%rax), %eax	# *intop_31(D), D.19752
	andl	$2, %eax	#, D.19752
	testb	%al, %al	# D.19752
	jne	.L529	#,
	.loc 1 2037 0
	movq	-72(%rbp), %rax	# intop, tmp141
	movq	40(%rax), %rax	# intop_31(D)->exp.operands, D.19751
	movzbl	17(%rax), %eax	# *_36, D.19752
	andl	$2, %eax	#, D.19752
	testb	%al, %al	# D.19752
	je	.L529	#,
	.loc 1 2038 0
	movq	-40(%rbp), %rax	# size_exp, tmp142
	movzbl	17(%rax), %eax	# *size_exp_4, D.19752
	andl	$2, %eax	#, D.19752
	testb	%al, %al	# D.19752
	je	.L529	#,
	.loc 1 2041 0
	movq	-72(%rbp), %rax	# intop, tmp143
	movq	32(%rax), %rax	# intop_31(D)->exp.operands, D.19751
	movq	8(%rax), %rax	# _41->common.type, D.19751
	movzbl	16(%rax), %eax	# _42->common.code, D.19752
	cmpb	$6, %al	#, D.19752
	jne	.L529	#,
	.loc 1 2045 0
	movq	-72(%rbp), %rax	# intop, tmp144
	movq	8(%rax), %rax	# intop_31(D)->common.type, D.19751
	movzbl	17(%rax), %eax	# *_44, D.19752
	andl	$32, %eax	#, D.19752
	testb	%al, %al	# D.19752
	je	.L530	#,
	.loc 1 2046 0
	movq	-72(%rbp), %rax	# intop, tmp145
	movq	8(%rax), %rax	# intop_31(D)->common.type, D.19751
	movzwl	60(%rax), %eax	# *_47, tmp148
	andw	$511, %ax	#, D.19753
	movl	%eax, %edx	# D.19753, D.19753
	.loc 1 2047 0
	movq	-64(%rbp), %rax	# ptrop, tmp149
	movq	8(%rax), %rax	# ptrop_7(D)->common.type, D.19751
	movzwl	60(%rax), %eax	# *_49, tmp152
	andw	$511, %ax	#, D.19753
	.loc 1 2046 0
	cmpw	%ax, %dx	# D.19753, D.19753
	jne	.L529	#,
.L530:
.LBB30:
	.loc 1 2049 0
	movl	-52(%rbp), %eax	# resultcode, tmp153
	movl	%eax, -44(%rbp)	# tmp153, subcode
	.loc 1 2050 0
	movq	-72(%rbp), %rax	# intop, tmp154
	movq	8(%rax), %rax	# intop_31(D)->common.type, tmp155
	movq	%rax, -24(%rbp)	# tmp155, int_type
	.loc 1 2051 0
	movq	-72(%rbp), %rax	# intop, tmp156
	movzbl	16(%rax), %eax	# intop_31(D)->common.code, D.19752
	cmpb	$60, %al	#, D.19752
	jne	.L531	#,
	.loc 1 2052 0
	cmpl	$59, -44(%rbp)	#, subcode
	jne	.L532	#,
	.loc 1 2052 0 is_stmt 0 discriminator 1
	movl	$60, %eax	#, iftmp.225
	jmp	.L533	#
.L532:
	.loc 1 2052 0 discriminator 2
	movl	$59, %eax	#, iftmp.225
.L533:
	.loc 1 2052 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.225, subcode
.L531:
	.loc 1 2056 0 is_stmt 1
	movq	-72(%rbp), %rax	# intop, tmp157
	movq	40(%rax), %rdx	# intop_31(D)->exp.operands, D.19751
	movq	-24(%rbp), %rax	# int_type, tmp158
	movq	%rdx, %rsi	# D.19751,
	movq	%rax, %rdi	# tmp158,
	call	convert	#
	movq	%rax, %rdx	#, D.19751
	movq	-64(%rbp), %rsi	# ptrop, tmp159
	movl	-44(%rbp), %eax	# subcode, tmp160
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp160,
	call	build_binary_op	#
	movq	%rax, -64(%rbp)	# tmp161, ptrop
	.loc 1 2058 0
	movq	-72(%rbp), %rax	# intop, tmp162
	movq	32(%rax), %rdx	# intop_31(D)->exp.operands, D.19751
	movq	-24(%rbp), %rax	# int_type, tmp163
	movq	%rdx, %rsi	# D.19751,
	movq	%rax, %rdi	# tmp163,
	call	convert	#
	movq	%rax, -72(%rbp)	# tmp164, intop
.L529:
.LBE30:
	.loc 1 2064 0
	movq	-72(%rbp), %rax	# intop, tmp165
	movq	8(%rax), %rax	# intop_2->common.type, D.19751
	movzwl	60(%rax), %eax	# *_63, tmp168
	andw	$511, %ax	#, D.19753
	movl	%eax, %edx	# D.19753, D.19753
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.19751
	movzwl	60(%rax), %eax	# *_65, tmp171
	andw	$511, %ax	#, D.19753
	cmpw	%ax, %dx	# D.19753, D.19753
	jne	.L534	#,
	.loc 1 2065 0
	movq	-72(%rbp), %rax	# intop, tmp172
	movq	8(%rax), %rax	# intop_2->common.type, D.19751
	movzbl	17(%rax), %eax	# *_67, tmp175
	shrb	$5, %al	#, D.19754
	movl	%eax, %edx	# D.19754, D.19754
	andl	$1, %edx	#, D.19754
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.19751
	movzbl	17(%rax), %eax	# *_69, tmp178
	shrb	$5, %al	#, D.19754
	andl	$1, %eax	#, D.19754
	cmpb	%al, %dl	# D.19754, D.19754
	je	.L535	#,
.L534:
	.loc 1 2067 0
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.19751
	movzbl	17(%rax), %eax	# *_71, tmp181
	shrb	$5, %al	#, D.19754
	andl	$1, %eax	#, D.19754
	.loc 1 2066 0
	movzbl	%al, %edx	# D.19754, D.19755
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, D.19751
	movzwl	60(%rax), %eax	# *_74, tmp184
	andw	$511, %ax	#, D.19753
	movzwl	%ax, %eax	# D.19753, D.19756
	movl	%edx, %esi	# D.19755,
	movl	%eax, %edi	# D.19756,
	call	type_for_size	#
	movq	-72(%rbp), %rdx	# intop, tmp185
	movq	%rdx, %rsi	# tmp185,
	movq	%rax, %rdi	# D.19751,
	call	convert	#
	movq	%rax, -72(%rbp)	# tmp186, intop
.L535:
	.loc 1 2073 0
	movq	-72(%rbp), %rax	# intop, tmp187
	movq	8(%rax), %rax	# intop_3->common.type, D.19751
	movq	-40(%rbp), %rdx	# size_exp, tmp188
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# D.19751,
	call	convert	#
	movq	%rax, %rdx	#, D.19751
	movq	-72(%rbp), %rax	# intop, tmp189
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# tmp189,
	movl	$61, %edi	#,
	call	build_binary_op	#
	movq	%rax, %rdx	#, D.19751
	movq	-32(%rbp), %rax	# result_type, tmp190
	movq	%rdx, %rsi	# D.19751,
	movq	%rax, %rdi	# tmp190,
	call	convert	#
	movq	%rax, -72(%rbp)	# tmp191, intop
	.loc 1 2079 0
	movq	-72(%rbp), %rcx	# intop, tmp192
	movq	-64(%rbp), %rdx	# ptrop, tmp193
	movq	-32(%rbp), %rsi	# result_type, tmp194
	movl	-52(%rbp), %eax	# resultcode, tmp195
	movl	%eax, %edi	# tmp195,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp196, result
	.loc 1 2081 0
	movq	-16(%rbp), %rax	# result, tmp197
	movq	%rax, %rdi	# tmp197,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp198, folded
	.loc 1 2082 0
	movq	-8(%rbp), %rax	# folded, tmp199
	cmpq	-16(%rbp), %rax	# result, tmp199
	jne	.L536	#,
	.loc 1 2083 0
	movq	-64(%rbp), %rax	# ptrop, tmp200
	movzbl	17(%rax), %eax	# *ptrop_1, tmp203
	shrb	%al	# D.19754
	andl	$1, %eax	#, D.19754
	movl	%eax, %edx	# D.19754, D.19752
	movq	-72(%rbp), %rax	# intop, tmp204
	movzbl	17(%rax), %eax	# *intop_82, tmp207
	shrb	%al	# D.19754
	andl	$1, %eax	#, D.19754
	andl	%edx, %eax	# D.19752, D.19752
	andl	$1, %eax	#, D.19754
	movl	%eax, %edx	# D.19754, D.19754
	movq	-8(%rbp), %rax	# folded, tmp208
	andl	$1, %edx	#, tmp210
	leal	(%rdx,%rdx), %ecx	#, tmp211
	movzbl	17(%rax), %edx	#, tmp212
	andl	$-3, %edx	#, tmp213
	orl	%ecx, %edx	# tmp211, tmp214
	movb	%dl, 17(%rax)	# tmp214,
.L536:
	.loc 1 2084 0
	movq	-8(%rbp), %rax	# folded, D.19757
	.loc 1 2085 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	pointer_int_sum, .-pointer_int_sum
	.section	.rodata
	.align 8
.LC48:
	.string	"suggest parentheses around assignment used as truth value"
	.text
	.globl	truthvalue_conversion
	.type	truthvalue_conversion, @function
truthvalue_conversion:
.LFB40:
	.loc 1 2101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# expr, expr
	.loc 1 2102 0
	movq	-40(%rbp), %rax	# expr, tmp150
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19763
	testb	%al, %al	# D.19763
	jne	.L539	#,
	.loc 1 2103 0
	movq	-40(%rbp), %rax	# expr, D.19762
	jmp	.L540	#
.L539:
	.loc 1 2127 0
	movq	-40(%rbp), %rax	# expr, tmp151
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19763
	movzbl	%al, %eax	# D.19763, D.19764
	cmpl	$125, %eax	#, D.19764
	ja	.L575	#,
	movl	%eax, %eax	# D.19764, tmp152
	movq	.L543(,%rax,8), %rax	#, tmp153
	jmp	*%rax	# tmp153
	.section	.rodata
	.align 8
	.align 4
.L543:
	.quad	.L542
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L544
	.quad	.L545
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L546
	.quad	.L575
	.quad	.L575
	.quad	.L547
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L548
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L549
	.quad	.L549
	.quad	.L575
	.quad	.L575
	.quad	.L549
	.quad	.L549
	.quad	.L575
	.quad	.L575
	.quad	.L550
	.quad	.L550
	.quad	.L575
	.quad	.L551
	.quad	.L552
	.quad	.L575
	.quad	.L575
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L553
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L554
	.quad	.L555
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L556
	.quad	.L575
	.quad	.L575
	.quad	.L575
	.quad	.L557
	.text
.L553:
	.loc 1 2137 0
	movq	c_global_trees+128(%rip), %rdx	# c_global_trees, D.19765
	movq	-40(%rbp), %rax	# expr, tmp154
	movq	%rdx, 8(%rax)	# D.19765, expr_6(D)->common.type
	.loc 1 2138 0
	movq	-40(%rbp), %rax	# expr, D.19762
	jmp	.L540	#
.L542:
	.loc 1 2141 0
	movq	-40(%rbp), %rax	# expr, D.19762
	jmp	.L540	#
.L544:
	.loc 1 2144 0
	movq	-40(%rbp), %rax	# expr, tmp155
	movq	%rax, %rdi	# tmp155,
	call	integer_zerop	#
	testl	%eax, %eax	# D.19766
	je	.L558	#,
	.loc 1 2144 0 is_stmt 0 discriminator 1
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, iftmp.226
	jmp	.L559	#
.L558:
	.loc 1 2144 0 discriminator 2
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, iftmp.226
.L559:
	.loc 1 2144 0 discriminator 3
	jmp	.L540	#
.L545:
	.loc 1 2147 0 is_stmt 1
	movq	-40(%rbp), %rax	# expr, tmp156
	movq	%rax, %rdi	# tmp156,
	call	real_zerop	#
	testl	%eax, %eax	# D.19766
	je	.L560	#,
	.loc 1 2147 0 is_stmt 0 discriminator 1
	movq	c_global_trees+144(%rip), %rax	# c_global_trees, iftmp.227
	jmp	.L561	#
.L560:
	.loc 1 2147 0 discriminator 2
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, iftmp.227
.L561:
	.loc 1 2147 0 discriminator 3
	jmp	.L540	#
.L556:
	.loc 1 2152 0 is_stmt 1
	movq	-40(%rbp), %rax	# expr, tmp157
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movzbl	16(%rax), %eax	# _22->common.code, D.19763
	movzbl	%al, %eax	# D.19763, D.19766
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.19767
	cmpb	$100, %al	#, D.19767
	jne	.L562	#,
	.loc 1 2153 0
	movq	-40(%rbp), %rax	# expr, tmp159
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movzbl	49(%rax), %eax	# *_26, D.19763
	andl	$1, %eax	#, D.19763
	testb	%al, %al	# D.19763
	je	.L562	#,
	.loc 1 2154 0
	jmp	.L563	#
.L562:
	.loc 1 2156 0
	movq	-40(%rbp), %rax	# expr, tmp160
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movzbl	17(%rax), %eax	# *_29, D.19763
	andl	$1, %eax	#, D.19763
	testb	%al, %al	# D.19763
	je	.L564	#,
	.loc 1 2157 0
	movq	c_global_trees+136(%rip), %rcx	# c_global_trees, D.19765
	movq	-40(%rbp), %rax	# expr, tmp161
	movq	32(%rax), %rdx	# expr_6(D)->exp.operands, D.19765
	movq	c_global_trees+128(%rip), %rax	# c_global_trees, D.19765
	movq	%rax, %rsi	# D.19765,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L540	#
.L564:
	.loc 1 2160 0
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, D.19762
	jmp	.L540	#
.L557:
	.loc 1 2163 0
	movq	-40(%rbp), %rax	# expr, tmp162
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rbx	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp163
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rsi	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp164
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	.loc 1 2164 0
	movzbl	17(%rax), %eax	# *_41, D.19763
	andl	$1, %eax	#, D.19763
	.loc 1 2163 0
	testb	%al, %al	# D.19763
	je	.L565	#,
	.loc 1 2163 0 is_stmt 0 discriminator 1
	movl	$94, %eax	#, iftmp.228
	jmp	.L566	#
.L565:
	.loc 1 2163 0 discriminator 2
	movl	$92, %eax	#, iftmp.228
.L566:
	.loc 1 2163 0 discriminator 3
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.19765,
	movl	%eax, %edi	# iftmp.228,
	call	build_binary_op	#
	jmp	.L540	#
.L549:
	.loc 1 2174 0 is_stmt 1
	movq	-40(%rbp), %rax	# expr, tmp165
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	jmp	.L540	#
.L550:
	.loc 1 2180 0
	movq	-40(%rbp), %rax	# expr, tmp166
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movzbl	17(%rax), %eax	# *_49, D.19763
	andl	$1, %eax	#, D.19763
	testb	%al, %al	# D.19763
	je	.L567	#,
	.loc 1 2181 0
	movq	-40(%rbp), %rax	# expr, tmp167
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rcx	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp168
	movq	40(%rax), %rdx	# expr_6(D)->exp.operands, D.19765
	movq	c_global_trees+128(%rip), %rax	# c_global_trees, D.19765
	movq	%rax, %rsi	# D.19765,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	jmp	.L540	#
.L567:
	.loc 1 2184 0
	movq	-40(%rbp), %rax	# expr, tmp169
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	jmp	.L540	#
.L547:
	.loc 1 2188 0
	movq	-40(%rbp), %rax	# expr, tmp170
	movq	48(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rbx	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp171
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rcx	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp172
	movq	32(%rax), %rdx	# expr_6(D)->exp.operands, D.19765
	movq	c_global_trees+128(%rip), %rax	# c_global_trees, D.19765
	movq	%rbx, %r8	# D.19765,
	movq	%rax, %rsi	# D.19765,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.19765,
	call	fold	#
	jmp	.L540	#
.L554:
	.loc 1 2195 0
	movq	-40(%rbp), %rax	# expr, tmp173
	movq	8(%rax), %rax	# expr_6(D)->common.type, D.19765
	movzbl	16(%rax), %eax	# _67->common.code, D.19763
	cmpb	$15, %al	#, D.19763
	je	.L563	#,
	.loc 1 2196 0
	movq	-40(%rbp), %rax	# expr, tmp174
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	8(%rax), %rax	# _69->common.type, D.19765
	movzbl	16(%rax), %eax	# _70->common.code, D.19763
	cmpb	$15, %al	#, D.19763
	je	.L563	#,
.L555:
	.loc 1 2201 0
	movq	-40(%rbp), %rax	# expr, tmp175
	movq	8(%rax), %rax	# expr_6(D)->common.type, D.19765
	movzwl	60(%rax), %eax	# *_72, tmp178
	andw	$511, %ax	#, D.19768
	.loc 1 2202 0
	movzwl	%ax, %edx	# D.19768, D.19766
	movq	-40(%rbp), %rax	# expr, tmp179
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	8(%rax), %rax	# _75->common.type, D.19765
	movzwl	60(%rax), %eax	# *_76, tmp182
	andw	$511, %ax	#, D.19768
	movzwl	%ax, %eax	# D.19768, D.19766
	.loc 1 2201 0
	cmpl	%eax, %edx	# D.19766, D.19766
	jl	.L568	#,
	.loc 1 2203 0
	movq	-40(%rbp), %rax	# expr, tmp183
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	jmp	.L540	#
.L568:
	.loc 1 2204 0
	jmp	.L563	#
.L548:
	.loc 1 2210 0
	movq	-40(%rbp), %rax	# expr, tmp184
	movq	8(%rax), %rax	# expr_6(D)->common.type, D.19765
	movzbl	16(%rax), %eax	# _81->common.code, D.19763
	.loc 1 2209 0
	cmpb	$7, %al	#, D.19763
	jne	.L551	#,
	.loc 1 2211 0
	jmp	.L563	#
.L551:
	.loc 1 2216 0
	movq	-40(%rbp), %rax	# expr, tmp185
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	8(%rax), %rdx	# _83->common.type, D.19765
	.loc 1 2217 0
	movq	-40(%rbp), %rax	# expr, tmp186
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	8(%rax), %rax	# _85->common.type, D.19765
	.loc 1 2216 0
	cmpq	%rax, %rdx	# D.19765, D.19765
	jne	.L569	#,
	.loc 1 2218 0
	movq	-40(%rbp), %rax	# expr, tmp187
	movq	40(%rax), %rdx	# expr_6(D)->exp.operands, D.19765
	movq	-40(%rbp), %rax	# expr, tmp188
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.19765,
	movl	$102, %edi	#,
	call	build_binary_op	#
	jmp	.L540	#
.L569:
	.loc 1 2220 0
	movq	-40(%rbp), %rax	# expr, tmp189
	movq	40(%rax), %rdx	# expr_6(D)->exp.operands, D.19765
	.loc 1 2222 0
	movq	-40(%rbp), %rax	# expr, tmp190
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	.loc 1 2220 0
	movq	8(%rax), %rax	# _91->common.type, D.19765
	movq	%rax, %rsi	# D.19765,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.19765,
	call	fold	#
	movq	%rax, %rdx	#, D.19765
	movq	-40(%rbp), %rax	# expr, tmp191
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# D.19765,
	movl	$102, %edi	#,
	call	build_binary_op	#
	jmp	.L540	#
.L552:
	.loc 1 2226 0
	movq	-40(%rbp), %rax	# expr, tmp192
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19765
	movq	%rax, %rdi	# D.19765,
	call	integer_onep	#
	testl	%eax, %eax	# D.19766
	je	.L570	#,
	.loc 1 2227 0
	movq	-40(%rbp), %rax	# expr, tmp193
	movq	8(%rax), %rdx	# expr_6(D)->common.type, D.19765
	movq	c_global_trees+128(%rip), %rax	# c_global_trees, D.19765
	cmpq	%rax, %rdx	# D.19765, D.19765
	je	.L570	#,
	.loc 1 2229 0
	movq	c_global_trees+128(%rip), %rax	# c_global_trees, D.19765
	movq	-40(%rbp), %rdx	# expr, tmp194
	movq	%rax, %rsi	# D.19765,
	movl	$115, %edi	#,
	call	build1	#
	jmp	.L540	#
.L570:
	.loc 1 2230 0
	jmp	.L563	#
.L546:
	.loc 1 2233 0
	movl	warn_parentheses(%rip), %eax	# warn_parentheses, warn_parentheses.229
	testl	%eax, %eax	# warn_parentheses.229
	je	.L571	#,
	.loc 1 2233 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# expr, tmp195
	movl	24(%rax), %eax	# expr_6(D)->exp.complexity, D.19766
	cmpl	$48, %eax	#, D.19766
	jne	.L571	#,
	.loc 1 2234 0 is_stmt 1
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 2235 0
	jmp	.L563	#
.L571:
	jmp	.L563	#
.L575:
	.loc 1 2238 0
	nop
.L563:
	.loc 1 2241 0
	movq	-40(%rbp), %rax	# expr, tmp196
	movq	8(%rax), %rax	# expr_6(D)->common.type, D.19765
	movzbl	16(%rax), %eax	# _105->common.code, D.19763
	cmpb	$8, %al	#, D.19763
	jne	.L572	#,
.LBB31:
	.loc 1 2243 0
	movq	-40(%rbp), %rax	# expr, tmp197
	movq	%rax, %rdi	# tmp197,
	call	save_expr	#
	movq	%rax, -24(%rbp)	# tmp198, tem
	.loc 1 2245 0
	movq	-24(%rbp), %rax	# tem, tmp199
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp199,
	movl	$128, %edi	#,
	call	build_unary_op	#
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rbx	#, D.19765
	movq	-24(%rbp), %rax	# tem, tmp200
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp200,
	movl	$127, %edi	#,
	call	build_unary_op	#
	movq	%rax, %rdi	# D.19765,
	call	truthvalue_conversion	#
	movq	%rax, %rsi	#, D.19765
	.loc 1 2246 0
	movq	-40(%rbp), %rax	# expr, tmp201
	movzbl	17(%rax), %eax	# *expr_6(D), D.19763
	andl	$1, %eax	#, D.19763
	.loc 1 2245 0
	testb	%al, %al	# D.19763
	je	.L573	#,
	.loc 1 2245 0 is_stmt 0 discriminator 1
	movl	$94, %eax	#, iftmp.230
	jmp	.L574	#
.L573:
	.loc 1 2245 0 discriminator 2
	movl	$92, %eax	#, iftmp.230
.L574:
	.loc 1 2244 0 is_stmt 1
	movl	$0, %ecx	#,
	movq	%rbx, %rdx	# D.19765,
	movl	%eax, %edi	# iftmp.230,
	call	build_binary_op	#
	jmp	.L540	#
.L572:
.LBE31:
	.loc 1 2252 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.19765
	movq	-40(%rbp), %rax	# expr, tmp202
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# tmp202,
	movl	$102, %edi	#,
	call	build_binary_op	#
.L540:
	.loc 1 2253 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	truthvalue_conversion, .-truthvalue_conversion
	.section	.rodata
.LC49:
	.string	"invalid use of `restrict'"
	.text
	.globl	c_build_qualified_type
	.type	c_build_qualified_type, @function
c_build_qualified_type:
.LFB41:
	.loc 1 2266 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# type, type
	movl	%esi, -28(%rbp)	# type_quals, type_quals
	.loc 1 2274 0
	movl	-28(%rbp), %eax	# type_quals, tmp70
	andl	$4, %eax	#, D.19771
	testl	%eax, %eax	# D.19771
	je	.L577	#,
	.loc 1 2275 0
	movq	-24(%rbp), %rax	# type, tmp71
	movzbl	16(%rax), %eax	# type_5(D)->common.code, D.19772
	cmpb	$13, %al	#, D.19772
	je	.L578	#,
	.loc 1 2275 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# type, tmp72
	movzbl	16(%rax), %eax	# type_5(D)->common.code, D.19772
	cmpb	$15, %al	#, D.19772
	jne	.L579	#,
.L578:
	.loc 1 2276 0 is_stmt 1
	movq	-24(%rbp), %rax	# type, tmp73
	movq	8(%rax), %rax	# type_5(D)->common.type, D.19773
	movzbl	16(%rax), %eax	# _8->common.code, D.19772
	cmpb	$23, %al	#, D.19772
	jne	.L577	#,
.L579:
	.loc 1 2278 0
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2279 0
	andl	$-5, -28(%rbp)	#, type_quals
.L577:
	.loc 1 2282 0
	movq	-24(%rbp), %rax	# type, tmp74
	movzbl	16(%rax), %eax	# type_5(D)->common.code, D.19772
	cmpb	$18, %al	#, D.19772
	jne	.L580	#,
	.loc 1 2283 0
	movq	-24(%rbp), %rax	# type, tmp75
	movq	24(%rax), %rbx	# type_5(D)->type.values, D.19773
	movq	-24(%rbp), %rax	# type, tmp76
	movq	8(%rax), %rax	# type_5(D)->common.type, D.19773
	movl	-28(%rbp), %edx	# type_quals, tmp77
	movl	%edx, %esi	# tmp77,
	movq	%rax, %rdi	# D.19773,
	call	c_build_qualified_type	#
	movq	%rbx, %rsi	# D.19773,
	movq	%rax, %rdi	# D.19773,
	call	build_array_type	#
	jmp	.L581	#
.L580:
	.loc 1 2286 0
	movl	-28(%rbp), %edx	# type_quals, tmp78
	movq	-24(%rbp), %rax	# type, tmp79
	movl	%edx, %esi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	build_qualified_type	#
.L581:
	.loc 1 2287 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	c_build_qualified_type, .-c_build_qualified_type
	.globl	c_apply_type_quals_to_decl
	.type	c_apply_type_quals_to_decl, @function
c_apply_type_quals_to_decl:
.LFB42:
	.loc 1 2295 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# type_quals, type_quals
	movq	%rsi, -16(%rbp)	# decl, decl
	.loc 1 2296 0
	movl	-4(%rbp), %eax	# type_quals, tmp74
	andl	$1, %eax	#, D.19775
	testl	%eax, %eax	# D.19775
	jne	.L583	#,
	.loc 1 2297 0
	movq	-16(%rbp), %rax	# decl, tmp75
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	testq	%rax, %rax	# D.19776
	je	.L584	#,
	.loc 1 2298 0
	movq	-16(%rbp), %rax	# decl, tmp76
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	movzbl	16(%rax), %eax	# _5->common.code, D.19777
	cmpb	$15, %al	#, D.19777
	jne	.L584	#,
.L583:
	.loc 1 2299 0
	movq	-16(%rbp), %rax	# decl, tmp77
	movzbl	17(%rax), %edx	#, tmp80
	orl	$16, %edx	#, tmp81
	movb	%dl, 17(%rax)	# tmp81,
.L584:
	.loc 1 2300 0
	movl	-4(%rbp), %eax	# type_quals, tmp82
	andl	$2, %eax	#, D.19775
	testl	%eax, %eax	# D.19775
	je	.L585	#,
	.loc 1 2302 0
	movq	-16(%rbp), %rax	# decl, tmp83
	movzbl	17(%rax), %edx	#, tmp86
	orl	$1, %edx	#, tmp87
	movb	%dl, 17(%rax)	# tmp87,
	.loc 1 2303 0
	movq	-16(%rbp), %rax	# decl, tmp88
	movzbl	17(%rax), %edx	#, tmp91
	orl	$8, %edx	#, tmp92
	movb	%dl, 17(%rax)	# tmp92,
.L585:
	.loc 1 2305 0
	movl	-4(%rbp), %eax	# type_quals, tmp93
	andl	$4, %eax	#, D.19775
	testl	%eax, %eax	# D.19775
	je	.L582	#,
	.loc 1 2307 0
	movq	-16(%rbp), %rax	# decl, tmp94
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	testq	%rax, %rax	# D.19776
	je	.L587	#,
	.loc 1 2308 0
	movq	-16(%rbp), %rax	# decl, tmp95
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	movzbl	16(%rax), %eax	# _10->common.code, D.19777
	cmpb	$13, %al	#, D.19777
	je	.L588	#,
	.loc 1 2308 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp96
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	movzbl	16(%rax), %eax	# _12->common.code, D.19777
	cmpb	$15, %al	#, D.19777
	jne	.L587	#,
.L588:
	.loc 1 2309 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp97
	movq	8(%rax), %rax	# decl_3(D)->common.type, D.19776
	movq	8(%rax), %rax	# _14->common.type, D.19776
	movzbl	16(%rax), %eax	# _15->common.code, D.19777
	cmpb	$23, %al	#, D.19777
	jne	.L589	#,
.L587:
	.loc 1 2310 0
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L582	#
.L589:
	.loc 1 2311 0
	movl	flag_strict_aliasing(%rip), %eax	# flag_strict_aliasing, flag_strict_aliasing.231
	testl	%eax, %eax	# flag_strict_aliasing.231
	je	.L582	#,
	.loc 1 2315 0
	movq	-16(%rbp), %rax	# decl, tmp98
	movq	$-2, 192(%rax)	#, decl_3(D)->decl.pointer_alias_set
.L582:
	.loc 1 2317 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	c_apply_type_quals_to_decl, .-c_apply_type_quals_to_decl
	.globl	c_common_get_alias_set
	.type	c_common_get_alias_set, @function
c_common_get_alias_set:
.LFB43:
	.loc 1 2326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# t, t
	.loc 1 2335 0
	movq	-40(%rbp), %rax	# t, tmp78
	movq	%rax, -24(%rbp)	# tmp78, u
	jmp	.L591	#
.L594:
	.loc 1 2338 0
	movq	-24(%rbp), %rax	# u, tmp79
	movzbl	16(%rax), %eax	# u_1->common.code, D.19779
	cmpb	$39, %al	#, D.19779
	jne	.L592	#,
	.loc 1 2339 0
	movq	-24(%rbp), %rax	# u, tmp80
	movq	32(%rax), %rax	# u_1->exp.operands, D.19782
	movq	8(%rax), %rax	# _26->common.type, D.19782
	movzbl	16(%rax), %eax	# _27->common.code, D.19779
	cmpb	$21, %al	#, D.19779
	jne	.L592	#,
	.loc 1 2340 0
	movl	$0, %eax	#, D.19778
	jmp	.L593	#
.L592:
	.loc 1 2337 0
	movq	-24(%rbp), %rax	# u, tmp81
	movq	32(%rax), %rax	# u_1->exp.operands, tmp82
	movq	%rax, -24(%rbp)	# tmp82, u
.L591:
	.loc 1 2336 0 discriminator 1
	movq	-24(%rbp), %rax	# u, tmp83
	movzbl	16(%rax), %eax	# u_1->common.code, D.19779
	.loc 1 2335 0 discriminator 1
	cmpb	$39, %al	#, D.19779
	je	.L594	#,
	.loc 1 2336 0
	movq	-24(%rbp), %rax	# u, tmp84
	movzbl	16(%rax), %eax	# u_1->common.code, D.19779
	cmpb	$43, %al	#, D.19779
	je	.L594	#,
	.loc 1 2343 0
	movq	-40(%rbp), %rax	# t, tmp85
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.19779
	movzbl	%al, %eax	# D.19779, D.19780
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.19781
	cmpb	$116, %al	#, D.19781
	je	.L595	#,
	.loc 1 2344 0
	movq	$-1, %rax	#, D.19778
	jmp	.L593	#
.L595:
	.loc 1 2348 0
	movq	integer_types(%rip), %rax	# integer_types, D.19782
	cmpq	-40(%rbp), %rax	# t, D.19782
	je	.L596	#,
	.loc 1 2349 0
	movq	integer_types+8(%rip), %rax	# integer_types, D.19782
	cmpq	-40(%rbp), %rax	# t, D.19782
	je	.L596	#,
	.loc 1 2350 0
	movq	integer_types+16(%rip), %rax	# integer_types, D.19782
	cmpq	-40(%rbp), %rax	# t, D.19782
	jne	.L597	#,
.L596:
	.loc 1 2351 0
	movl	$0, %eax	#, D.19778
	jmp	.L593	#
.L597:
	.loc 1 2356 0
	movq	-40(%rbp), %rax	# t, tmp87
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.19779
	cmpb	$6, %al	#, D.19779
	jne	.L598	#,
	.loc 1 2356 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp88
	movzbl	17(%rax), %eax	# *t_3(D), D.19779
	andl	$32, %eax	#, D.19779
	testb	%al, %al	# D.19779
	je	.L598	#,
.LBB32:
	.loc 1 2358 0 is_stmt 1
	movq	-40(%rbp), %rax	# t, tmp89
	movq	%rax, %rdi	# tmp89,
	call	signed_type	#
	movq	%rax, -16(%rbp)	# tmp90, t1
	.loc 1 2361 0
	movq	-16(%rbp), %rax	# t1, tmp91
	cmpq	-40(%rbp), %rax	# t, tmp91
	je	.L599	#,
	.loc 1 2362 0
	movq	-16(%rbp), %rax	# t1, tmp92
	movq	%rax, %rdi	# tmp92,
	call	get_alias_set	#
	jmp	.L593	#
.L599:
.LBE32:
	.loc 1 2357 0
	jmp	.L600	#
.L598:
	.loc 1 2364 0
	movq	-40(%rbp), %rax	# t, tmp93
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.19779
	cmpb	$13, %al	#, D.19779
	je	.L601	#,
	.loc 1 2364 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp94
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.19779
	cmpb	$15, %al	#, D.19779
	jne	.L600	#,
.L601:
.LBB33:
	.loc 1 2391 0 is_stmt 1
	movq	-40(%rbp), %rax	# t, tmp95
	movq	%rax, %rdi	# tmp95,
	call	build_type_no_quals	#
	movq	%rax, -8(%rbp)	# tmp96, t1
	.loc 1 2392 0
	movq	-8(%rbp), %rax	# t1, tmp97
	cmpq	-40(%rbp), %rax	# t, tmp97
	je	.L600	#,
	.loc 1 2393 0
	movq	-8(%rbp), %rax	# t1, tmp98
	movq	%rax, %rdi	# tmp98,
	call	get_alias_set	#
	jmp	.L593	#
.L600:
.LBE33:
	.loc 1 2396 0
	movq	$-1, %rax	#, D.19778
.L593:
	.loc 1 2397 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	c_common_get_alias_set, .-c_common_get_alias_set
	.section	.rodata
	.align 8
.LC50:
	.string	"__alignof__ applied to an incomplete type"
	.text
	.globl	c_alignof
	.type	c_alignof, @function
c_alignof:
.LFB44:
	.loc 1 2405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# type, type
	.loc 1 2406 0
	movq	-24(%rbp), %rax	# type, tmp69
	movzbl	16(%rax), %eax	# type_4(D)->common.code, D.19783
	movzbl	%al, %eax	# D.19783, tmp70
	movl	%eax, -12(%rbp)	# tmp70, code
	.loc 1 2410 0
	cmpl	$15, -12(%rbp)	#, code
	jne	.L603	#,
	.loc 1 2412 0
	movq	-24(%rbp), %rax	# type, tmp71
	movq	8(%rax), %rax	# type_4(D)->common.type, tmp72
	movq	%rax, -24(%rbp)	# tmp72, type
	.loc 1 2413 0
	movq	-24(%rbp), %rax	# type, tmp73
	movzbl	16(%rax), %eax	# type_7->common.code, D.19783
	movzbl	%al, %eax	# D.19783, tmp74
	movl	%eax, -12(%rbp)	# tmp74, code
.L603:
	.loc 1 2416 0
	cmpl	$23, -12(%rbp)	#, code
	jne	.L604	#,
	.loc 1 2417 0
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	size_int_wide	#
	movq	%rax, -8(%rbp)	# tmp75, t
	jmp	.L605	#
.L604:
	.loc 1 2418 0
	cmpl	$5, -12(%rbp)	#, code
	je	.L606	#,
	.loc 1 2418 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, code
	jne	.L607	#,
.L606:
	.loc 1 2419 0 is_stmt 1
	movq	global_trees+128(%rip), %rax	# global_trees, tmp76
	movq	%rax, -8(%rbp)	# tmp76, t
	jmp	.L605	#
.L607:
	.loc 1 2420 0
	movq	-24(%rbp), %rax	# type, tmp77
	movq	32(%rax), %rax	# type_1->type.size, D.19784
	testq	%rax, %rax	# D.19784
	jne	.L608	#,
	.loc 1 2422 0
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2423 0
	movq	global_trees+120(%rip), %rax	# global_trees, tmp78
	movq	%rax, -8(%rbp)	# tmp78, t
	jmp	.L605	#
.L608:
	.loc 1 2426 0
	movq	-24(%rbp), %rax	# type, tmp79
	movl	64(%rax), %eax	# type_1->type.align, D.19785
	shrl	$3, %eax	#, D.19785
	movl	%eax, %eax	# D.19785, D.19786
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19786,
	call	size_int_wide	#
	movq	%rax, -8(%rbp)	# tmp80, t
.L605:
	.loc 1 2428 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.19784
	movq	-8(%rbp), %rdx	# t, tmp81
	movq	%rax, %rsi	# D.19784,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.19784,
	call	fold	#
	.loc 1 2429 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	c_alignof, .-c_alignof
	.section	.rodata
	.align 8
.LC51:
	.string	"`__alignof' applied to a bit-field"
	.text
	.globl	c_alignof_expr
	.type	c_alignof_expr, @function
c_alignof_expr:
.LFB45:
	.loc 1 2439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# expr, expr
	.loc 1 2442 0
	movq	-40(%rbp), %rax	# expr, tmp94
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19790
	cmpb	$34, %al	#, D.19790
	jne	.L611	#,
	.loc 1 2443 0
	movq	-40(%rbp), %rax	# expr, tmp95
	movl	56(%rax), %eax	# *expr_6(D), tmp98
	andl	$16777215, %eax	#, D.19791
	leal	7(%rax), %edx	#, tmp100
	testl	%eax, %eax	# tmp99
	cmovs	%edx, %eax	# tmp100,, tmp99
	sarl	$3, %eax	#, tmp101
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19793,
	call	size_int_wide	#
	movq	%rax, -24(%rbp)	# tmp102, t
	jmp	.L612	#
.L611:
	.loc 1 2445 0
	movq	-40(%rbp), %rax	# expr, tmp103
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19790
	cmpb	$39, %al	#, D.19790
	jne	.L613	#,
	.loc 1 2446 0
	movq	-40(%rbp), %rax	# expr, tmp104
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19794
	movzbl	53(%rax), %eax	# *_14, D.19790
	andl	$2, %eax	#, D.19790
	testb	%al, %al	# D.19790
	je	.L613	#,
	.loc 1 2448 0
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2449 0
	movq	global_trees+128(%rip), %rax	# global_trees, tmp105
	movq	%rax, -24(%rbp)	# tmp105, t
	jmp	.L612	#
.L613:
	.loc 1 2451 0
	movq	-40(%rbp), %rax	# expr, tmp106
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19790
	cmpb	$39, %al	#, D.19790
	jne	.L614	#,
	.loc 1 2452 0
	movq	-40(%rbp), %rax	# expr, tmp107
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19794
	movzbl	16(%rax), %eax	# _19->common.code, D.19790
	cmpb	$37, %al	#, D.19790
	jne	.L614	#,
	.loc 1 2453 0
	movq	-40(%rbp), %rax	# expr, tmp108
	movq	40(%rax), %rax	# expr_6(D)->exp.operands, D.19794
	movl	56(%rax), %eax	# *_21, tmp111
	andl	$16777215, %eax	#, D.19791
	leal	7(%rax), %edx	#, tmp113
	testl	%eax, %eax	# tmp112
	cmovs	%edx, %eax	# tmp113,, tmp112
	sarl	$3, %eax	#, tmp114
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19793,
	call	size_int_wide	#
	movq	%rax, -24(%rbp)	# tmp115, t
	jmp	.L612	#
.L614:
	.loc 1 2455 0
	movq	-40(%rbp), %rax	# expr, tmp116
	movzbl	16(%rax), %eax	# expr_6(D)->common.code, D.19790
	cmpb	$41, %al	#, D.19790
	jne	.L615	#,
.LBB34:
	.loc 1 2457 0
	movq	-40(%rbp), %rax	# expr, tmp117
	movq	32(%rax), %rax	# expr_6(D)->exp.operands, tmp118
	movq	%rax, -16(%rbp)	# tmp118, t
	.loc 1 2458 0
	movq	-16(%rbp), %rax	# t, tmp119
	movq	%rax, -8(%rbp)	# tmp119, best
	.loc 1 2459 0
	movq	-16(%rbp), %rax	# t, tmp120
	movq	8(%rax), %rax	# t_28->common.type, D.19794
	movq	8(%rax), %rax	# _30->common.type, D.19794
	movl	64(%rax), %eax	# _31->type.align, D.19795
	movl	%eax, -32(%rbp)	# D.19795, bestalign
	.loc 1 2461 0
	jmp	.L616	#
.L618:
.LBB35:
	.loc 1 2466 0
	movq	-16(%rbp), %rax	# t, tmp121
	movq	32(%rax), %rax	# t_2->exp.operands, tmp122
	movq	%rax, -16(%rbp)	# tmp122, t
	.loc 1 2467 0
	movq	-16(%rbp), %rax	# t, tmp123
	movq	8(%rax), %rax	# t_38->common.type, D.19794
	movq	8(%rax), %rax	# _39->common.type, D.19794
	movl	64(%rax), %eax	# _40->type.align, D.19795
	movl	%eax, -28(%rbp)	# D.19795, thisalign
	.loc 1 2468 0
	movl	-28(%rbp), %eax	# thisalign, tmp124
	cmpl	-32(%rbp), %eax	# bestalign, tmp124
	jle	.L616	#,
	.loc 1 2469 0
	movq	-16(%rbp), %rax	# t, tmp125
	movq	%rax, -8(%rbp)	# tmp125, best
	movl	-28(%rbp), %eax	# thisalign, tmp126
	movl	%eax, -32(%rbp)	# tmp126, bestalign
.L616:
.LBE35:
	.loc 1 2461 0 discriminator 1
	movq	-16(%rbp), %rax	# t, tmp127
	movzbl	16(%rax), %eax	# t_2->common.code, D.19790
	cmpb	$115, %al	#, D.19790
	jne	.L617	#,
	.loc 1 2462 0
	movq	-16(%rbp), %rax	# t, tmp128
	movq	32(%rax), %rax	# t_2->exp.operands, D.19794
	movq	8(%rax), %rax	# _35->common.type, D.19794
	movzbl	16(%rax), %eax	# _36->common.code, D.19790
	cmpb	$13, %al	#, D.19790
	je	.L618	#,
.L617:
	.loc 1 2471 0
	movq	-8(%rbp), %rax	# best, tmp129
	movq	8(%rax), %rax	# best_3->common.type, D.19794
	movq	8(%rax), %rax	# _45->common.type, D.19794
	movq	%rax, %rdi	# D.19794,
	call	c_alignof	#
	jmp	.L619	#
.L615:
.LBE34:
	.loc 1 2474 0
	movq	-40(%rbp), %rax	# expr, tmp130
	movq	8(%rax), %rax	# expr_6(D)->common.type, D.19794
	movq	%rax, %rdi	# D.19794,
	call	c_alignof	#
	jmp	.L619	#
.L612:
	.loc 1 2476 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.19794
	movq	-24(%rbp), %rdx	# t, tmp131
	movq	%rax, %rsi	# D.19794,
	movl	$115, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.19794,
	call	fold	#
.L619:
	.loc 1 2477 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	c_alignof_expr, .-c_alignof_expr
	.section	.rodata
.LC52:
	.string	"format"
.LC53:
	.string	"format_arg"
	.align 32
	.type	c_format_attribute_table, @object
	.size	c_format_attribute_table, 96
c_format_attribute_table:
# name:
	.quad	.LC52
# min_length:
	.long	3
# max_length:
	.long	3
# decl_required:
	.byte	0
# type_required:
	.byte	1
# function_type_required:
	.byte	1
# handler:
	.zero	5
	.quad	handle_format_attribute
# name:
	.quad	.LC53
# min_length:
	.long	1
# max_length:
	.long	1
# decl_required:
	.byte	0
# type_required:
	.byte	1
# function_type_required:
	.byte	1
# handler:
	.zero	5
	.quad	handle_format_arg_attribute
# name:
	.quad	0
# min_length:
	.long	0
# max_length:
	.long	0
# decl_required:
	.byte	0
# type_required:
	.byte	0
# function_type_required:
	.byte	0
# handler:
	.zero	5
	.quad	0
.LC54:
	.string	"char"
.LC55:
	.string	"long int"
.LC56:
	.string	"unsigned int"
.LC57:
	.string	"long unsigned int"
.LC58:
	.string	"unsigned long"
.LC59:
	.string	"long long int"
.LC60:
	.string	"long long unsigned int"
.LC61:
	.string	"long long unsigned"
.LC62:
	.string	"short int"
.LC63:
	.string	"short unsigned int"
.LC64:
	.string	"unsigned short"
.LC65:
	.string	"signed char"
.LC66:
	.string	"unsigned char"
.LC67:
	.string	"__int128_t"
.LC68:
	.string	"__uint128_t"
.LC69:
	.string	"long double"
.LC70:
	.string	"complex int"
.LC71:
	.string	"complex float"
.LC72:
	.string	"complex double"
.LC73:
	.string	"complex long double"
.LC74:
	.string	"int"
.LC75:
	.string	"wchar_t"
.LC76:
	.string	"__builtin_va_list"
.LC77:
	.string	"__builtin_ptrdiff_t"
.LC78:
	.string	"__builtin_size_t"
.LC79:
	.string	"__builtin_alloca"
.LC80:
	.string	"__builtin_abs"
.LC81:
	.string	"__builtin_labs"
.LC82:
	.string	"__builtin_fabs"
.LC83:
	.string	"__builtin_fabsf"
.LC84:
	.string	"__builtin_fabsl"
.LC85:
	.string	"__builtin_llabs"
.LC86:
	.string	"__builtin_imaxabs"
.LC87:
	.string	"__builtin_conj"
.LC88:
	.string	"__builtin_conjf"
.LC89:
	.string	"__builtin_conjl"
.LC90:
	.string	"__builtin_creal"
.LC91:
	.string	"__builtin_crealf"
.LC92:
	.string	"__builtin_creall"
.LC93:
	.string	"__builtin_cimag"
.LC94:
	.string	"__builtin_cimagf"
.LC95:
	.string	"__builtin_cimagl"
.LC96:
	.string	"__builtin_bzero"
.LC97:
	.string	"__builtin_bcmp"
.LC98:
	.string	"__builtin_ffs"
.LC99:
	.string	"__builtin_index"
.LC100:
	.string	"__builtin_rindex"
.LC101:
	.string	"__builtin_memcpy"
.LC102:
	.string	"__builtin_memcmp"
.LC103:
	.string	"__builtin_memset"
.LC104:
	.string	"__builtin_strcat"
.LC105:
	.string	"__builtin_strncat"
.LC106:
	.string	"__builtin_strcpy"
.LC107:
	.string	"__builtin_strncpy"
.LC108:
	.string	"__builtin_strcmp"
.LC109:
	.string	"__builtin_strncmp"
.LC110:
	.string	"__builtin_strlen"
.LC111:
	.string	"__builtin_strstr"
.LC112:
	.string	"__builtin_strpbrk"
.LC113:
	.string	"__builtin_strspn"
.LC114:
	.string	"__builtin_strcspn"
.LC115:
	.string	"__builtin_strchr"
.LC116:
	.string	"__builtin_strrchr"
.LC117:
	.string	"__builtin_sqrt"
.LC118:
	.string	"__builtin_sin"
.LC119:
	.string	"__builtin_cos"
.LC120:
	.string	"__builtin_sqrtf"
.LC121:
	.string	"__builtin_sinf"
.LC122:
	.string	"__builtin_cosf"
.LC123:
	.string	"__builtin_sqrtl"
.LC124:
	.string	"__builtin_sinl"
.LC125:
	.string	"__builtin_cosl"
.LC126:
	.string	"__builtin_saveregs"
.LC127:
	.string	"__builtin_classify_type"
.LC128:
	.string	"__builtin_next_arg"
.LC129:
	.string	"__builtin_args_info"
.LC130:
	.string	"__builtin_constant_p"
.LC131:
	.string	"__builtin_frame_address"
.LC132:
	.string	"__builtin_return_address"
	.align 8
.LC133:
	.string	"__builtin_aggregate_incoming_address"
.LC134:
	.string	"__builtin_apply_args"
.LC135:
	.string	"__builtin_apply"
.LC136:
	.string	"__builtin_return"
.LC137:
	.string	"__builtin_setjmp"
.LC138:
	.string	"__builtin_longjmp"
.LC139:
	.string	"__builtin_trap"
.LC140:
	.string	"__builtin_prefetch"
.LC141:
	.string	"__builtin_putchar"
.LC142:
	.string	"__builtin_puts"
.LC143:
	.string	"__builtin_printf"
.LC144:
	.string	"__builtin_fputc"
.LC145:
	.string	"__builtin_fputs"
.LC146:
	.string	"__builtin_fwrite"
.LC147:
	.string	"__builtin_fprintf"
.LC148:
	.string	"__builtin_putchar_unlocked"
.LC149:
	.string	"__builtin_puts_unlocked"
.LC150:
	.string	"__builtin_printf_unlocked"
.LC151:
	.string	"__builtin_fputc_unlocked"
.LC152:
	.string	"__builtin_fputs_unlocked"
.LC153:
	.string	"__builtin_fwrite_unlocked"
.LC154:
	.string	"__builtin_fprintf_unlocked"
.LC155:
	.string	"__builtin_isgreater"
.LC156:
	.string	"__builtin_isgreaterequal"
.LC157:
	.string	"__builtin_isless"
.LC158:
	.string	"__builtin_islessequal"
.LC159:
	.string	"__builtin_islessgreater"
.LC160:
	.string	"__builtin_isunordered"
.LC161:
	.string	"__builtin_unwind_init"
.LC162:
	.string	"__builtin_dwarf_cfa"
.LC163:
	.string	"__builtin_dwarf_fp_regnum"
	.align 8
.LC164:
	.string	"__builtin_init_dwarf_reg_size_table"
.LC165:
	.string	"__builtin_frob_return_addr"
.LC166:
	.string	"__builtin_extract_return_addr"
.LC167:
	.string	"__builtin_eh_return"
	.align 8
.LC168:
	.string	"__builtin_eh_return_data_regno"
.LC169:
	.string	"__builtin_varargs_start"
.LC170:
	.string	"__builtin_stdarg_start"
.LC171:
	.string	"__builtin_va_end"
.LC172:
	.string	"__builtin_va_copy"
.LC173:
	.string	"__builtin_expect"
.LC174:
	.string	"_exit"
.LC175:
	.string	"_Exit"
.LC176:
	.string	"abort"
.LC177:
	.string	"exit"
.LC178:
	.string	"main"
	.text
	.globl	c_common_nodes_and_builtins
	.type	c_common_nodes_and_builtins, @function
c_common_nodes_and_builtins:
.LFB46:
	.loc 1 2497 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1480, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2539 0
	movq	$c_format_attribute_table, format_attribute_table(%rip)	#, format_attribute_table
	.loc 1 2542 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$27, %edi	#,
	call	record_builtin_type	#
	.loc 1 2543 0
	movq	integer_types(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC54, %esi	#,
	movl	$28, %edi	#,
	call	record_builtin_type	#
	.loc 1 2548 0
	movl	c_language(%rip), %eax	# c_language, c_language.232
	cmpl	$1, %eax	#, c_language.232
	jne	.L621	#,
	.loc 1 2549 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$10, %edi	#,
	call	record_builtin_type	#
.L621:
	.loc 1 2550 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC55, %esi	#,
	movl	$2, %edi	#,
	call	record_builtin_type	#
	.loc 1 2551 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC56, %esi	#,
	movl	$1, %edi	#,
	call	record_builtin_type	#
	.loc 1 2552 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC57, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2554 0
	movl	c_language(%rip), %eax	# c_language, c_language.233
	cmpl	$1, %eax	#, c_language.233
	jne	.L622	#,
	.loc 1 2555 0
	movq	integer_types+64(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC58, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
.L622:
	.loc 1 2556 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC59, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2558 0
	movq	integer_types+80(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC60, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2560 0
	movl	c_language(%rip), %eax	# c_language, c_language.234
	cmpl	$1, %eax	#, c_language.234
	jne	.L623	#,
	.loc 1 2561 0
	movq	integer_types+80(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC61, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
.L623:
	.loc 1 2563 0
	movq	integer_types+24(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC62, %esi	#,
	movl	$7, %edi	#,
	call	record_builtin_type	#
	.loc 1 2564 0
	movq	integer_types+32(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC63, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2566 0
	movl	c_language(%rip), %eax	# c_language, c_language.235
	cmpl	$1, %eax	#, c_language.235
	jne	.L624	#,
	.loc 1 2567 0
	movq	integer_types+32(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC64, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
.L624:
	.loc 1 2571 0
	movq	integer_types+8(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC65, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2572 0
	movq	integer_types+16(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC66, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2575 0
	movq	global_trees+8(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2576 0
	movq	global_trees+16(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2577 0
	movq	global_trees+24(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2578 0
	movq	global_trees+32(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2580 0
	movq	global_trees+40(%rip), %rbx	# global_trees, D.19799
	movl	$.LC67, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2582 0
	movq	global_trees+48(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2583 0
	movq	global_trees+56(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2584 0
	movq	global_trees+64(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2585 0
	movq	global_trees+72(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2587 0
	movq	global_trees+80(%rip), %rbx	# global_trees, D.19799
	movl	$.LC68, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2592 0
	movl	$128, %edi	#,
	call	make_signed_type	#
	movq	%rax, c_global_trees+72(%rip)	# D.19799, c_global_trees
	.loc 1 2593 0
	movq	c_global_trees+72(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2597 0
	movl	$128, %edi	#,
	call	make_unsigned_type	#
	movq	%rax, c_global_trees+80(%rip)	# D.19799, c_global_trees
	.loc 1 2598 0
	movq	c_global_trees+80(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2605 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.237
	andl	$33554432, %eax	#, D.19800
	testl	%eax, %eax	# D.19800
	je	.L625	#,
	.loc 1 2605 0 is_stmt 0 discriminator 1
	movl	$.LC57, %eax	#, iftmp.236
	jmp	.L626	#
.L625:
	.loc 1 2605 0 discriminator 2
	movl	$.LC56, %eax	#, iftmp.236
.L626:
	.loc 1 2605 0 discriminator 3
	movq	%rax, %rdi	# iftmp.236,
	call	get_identifier	#
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _65->common.type, D.19799
	.loc 1 2604 0 is_stmt 1 discriminator 3
	movq	%rax, c_global_trees+32(%rip)	# D.19799, c_global_trees
	.loc 1 2606 0 discriminator 3
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	signed_type	#
	movq	%rax, c_global_trees+40(%rip)	# D.19799, c_global_trees
	.loc 1 2607 0 discriminator 3
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.238
	testl	%eax, %eax	# flag_traditional.238
	je	.L627	#,
	.loc 1 2608 0
	movq	c_global_trees+40(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, c_global_trees+32(%rip)	# D.19799, c_global_trees
.L627:
	.loc 1 2609 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	set_sizetype	#
	.loc 1 2611 0
	movl	flag_short_double(%rip), %eax	# flag_short_double, flag_short_double.239
	movl	%eax, %edi	# flag_short_double.239,
	call	build_common_tree_nodes_2	#
	.loc 1 2613 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$29, %edi	#,
	call	record_builtin_type	#
	.loc 1 2614 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$30, %edi	#,
	call	record_builtin_type	#
	.loc 1 2615 0
	movq	global_trees+208(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC69, %esi	#,
	movl	$114, %edi	#,
	call	record_builtin_type	#
	.loc 1 2617 0
	movq	global_trees+160(%rip), %rbx	# global_trees, D.19799
	movl	$.LC70, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2619 0
	movq	global_trees+168(%rip), %rbx	# global_trees, D.19799
	movl	$.LC71, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2621 0
	movq	global_trees+176(%rip), %rbx	# global_trees, D.19799
	movl	$.LC72, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2623 0
	movq	global_trees+184(%rip), %rbx	# global_trees, D.19799
	movl	$.LC73, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2626 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	record_builtin_type	#
	.loc 1 2628 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, c_global_trees+248(%rip)	# D.19799, c_global_trees
	.loc 1 2629 0
	movq	c_global_trees+248(%rip), %rax	# c_global_trees, D.19799
	movq	global_trees+216(%rip), %rdx	# global_trees, D.19799
	movq	%rdx, 8(%rax)	# D.19799, _90->common.type
	.loc 1 2631 0
	call	build_void_list_node	#
	movq	%rax, global_trees+256(%rip)	# D.19799, global_trees
	.loc 1 2638 0
	movl	$0, %esi	#,
	movl	$200, %edi	#,
	call	size_int_wide	#
	movq	%rax, %rdi	# D.19799,
	call	build_index_type	#
	movq	%rax, -1432(%rbp)	# tmp747, array_domain_type
	.loc 1 2644 0
	movq	integer_types(%rip), %rax	# integer_types, D.19799
	movq	-1432(%rbp), %rdx	# array_domain_type, tmp748
	movq	%rdx, %rsi	# tmp748,
	movq	%rax, %rdi	# D.19799,
	call	build_array_type	#
	movq	%rax, c_global_trees+88(%rip)	# D.19799, c_global_trees
	.loc 1 2648 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19799
	movq	-1432(%rbp), %rdx	# array_domain_type, tmp749
	movq	%rdx, %rsi	# tmp749,
	movq	%rax, %rdi	# D.19799,
	call	build_array_type	#
	movq	%rax, c_global_trees+104(%rip)	# D.19799, c_global_trees
	.loc 1 2650 0
	movq	integer_types(%rip), %rax	# integer_types, D.19799
	movq	%rax, %rdi	# D.19799,
	call	build_pointer_type	#
	movq	%rax, c_global_trees+112(%rip)	# D.19799, c_global_trees
	.loc 1 2652 0
	movq	integer_types(%rip), %rax	# integer_types, D.19799
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.19799,
	call	build_qualified_type	#
	movq	%rax, %rdi	# D.19799,
	call	build_pointer_type	#
	movq	%rax, c_global_trees+120(%rip)	# D.19799, c_global_trees
	.loc 1 2655 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.241
	.loc 1 2657 0
	testl	%eax, %eax	# flag_traditional.241
	je	.L628	#,
	.loc 1 2656 0
	movl	c_language(%rip), %eax	# c_language, c_language.242
	.loc 1 2655 0
	cmpl	$1, %eax	#, c_language.242
	je	.L628	#,
	.loc 1 2657 0
	movq	c_global_trees+112(%rip), %rax	# c_global_trees, iftmp.240
	jmp	.L629	#
.L628:
	.loc 1 2657 0 is_stmt 0 discriminator 1
	movq	global_trees+224(%rip), %rax	# global_trees, iftmp.240
.L629:
	.loc 1 2655 0 is_stmt 1
	movq	%rax, -1424(%rbp)	# iftmp.240, traditional_ptr_type_node
	.loc 1 2658 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.244
	.loc 1 2660 0
	testl	%eax, %eax	# flag_traditional.244
	je	.L630	#,
	.loc 1 2659 0
	movl	c_language(%rip), %eax	# c_language, c_language.245
	.loc 1 2658 0
	cmpl	$1, %eax	#, c_language.245
	je	.L630	#,
	.loc 1 2660 0
	movq	c_global_trees+120(%rip), %rax	# c_global_trees, iftmp.243
	jmp	.L631	#
.L630:
	.loc 1 2660 0 is_stmt 0 discriminator 1
	movq	global_trees+232(%rip), %rax	# global_trees, iftmp.243
.L631:
	.loc 1 2658 0 is_stmt 1
	movq	%rax, -1416(%rbp)	# iftmp.243, traditional_cptr_type_node
	.loc 1 2662 0
	movq	targetm+304(%rip), %rax	# targetm.init_builtins, D.19801
	call	*%rax	# D.19801
	.loc 1 2666 0
	movl	flag_short_wchar(%rip), %eax	# flag_short_wchar, flag_short_wchar.247
	.loc 1 2665 0
	testl	%eax, %eax	# flag_short_wchar.247
	je	.L632	#,
	.loc 1 2665 0 is_stmt 0 discriminator 1
	movl	$.LC63, %eax	#, iftmp.246
	jmp	.L633	#
.L632:
	.loc 1 2665 0 discriminator 2
	movl	$.LC74, %eax	#, iftmp.246
.L633:
	.loc 1 2665 0 discriminator 3
	movq	%rax, %rdi	# iftmp.246,
	call	get_identifier	#
	movq	%rax, c_global_trees(%rip)	# D.19799, c_global_trees
	.loc 1 2668 0 is_stmt 1 discriminator 3
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _120->common.type, D.19799
	movq	%rax, c_global_trees(%rip)	# D.19799, c_global_trees
	.loc 1 2669 0 discriminator 3
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movzwl	60(%rax), %eax	# *_122, tmp752
	andw	$511, %ax	#, D.19802
	movzwl	%ax, %eax	# D.19802, tmp753
	movl	%eax, -1452(%rbp)	# tmp753, wchar_type_size
	.loc 1 2670 0 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.248
	cmpl	$1, %eax	#, c_language.248
	jne	.L634	#,
	.loc 1 2672 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movzbl	17(%rax), %eax	# *_126, D.19803
	andl	$32, %eax	#, D.19803
	testb	%al, %al	# D.19803
	je	.L635	#,
	.loc 1 2673 0
	movl	-1452(%rbp), %eax	# wchar_type_size, tmp754
	movl	%eax, %edi	# tmp754,
	call	make_unsigned_type	#
	movq	%rax, c_global_trees(%rip)	# D.19799, c_global_trees
	jmp	.L636	#
.L635:
	.loc 1 2675 0
	movl	-1452(%rbp), %eax	# wchar_type_size, tmp755
	movl	%eax, %edi	# tmp755,
	call	make_signed_type	#
	movq	%rax, c_global_trees(%rip)	# D.19799, c_global_trees
.L636:
	.loc 1 2676 0 discriminator 1
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdx	# D.19799,
	movl	$.LC75, %esi	#,
	movl	$66, %edi	#,
	call	record_builtin_type	#
	jmp	.L637	#
.L634:
	.loc 1 2680 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	signed_type	#
	movq	%rax, c_global_trees+8(%rip)	# D.19799, c_global_trees
	.loc 1 2681 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	unsigned_type	#
	movq	%rax, c_global_trees+16(%rip)	# D.19799, c_global_trees
.L637:
	.loc 1 2686 0
	movq	c_global_trees(%rip), %rax	# c_global_trees, D.19799
	movq	-1432(%rbp), %rdx	# array_domain_type, tmp756
	movq	%rdx, %rsi	# tmp756,
	movq	%rax, %rdi	# D.19799,
	call	build_array_type	#
	movq	%rax, c_global_trees+96(%rip)	# D.19799, c_global_trees
	.loc 1 2689 0
	movl	$.LC56, %edi	#,
	call	get_identifier	#
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _139->common.type, D.19799
	.loc 1 2688 0
	movq	%rax, c_global_trees+24(%rip)	# D.19799, c_global_trees
	.loc 1 2692 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.250
	andl	$33554432, %eax	#, D.19800
	testl	%eax, %eax	# D.19800
	je	.L638	#,
	.loc 1 2692 0 is_stmt 0 discriminator 1
	movl	$.LC55, %eax	#, iftmp.249
	jmp	.L639	#
.L638:
	.loc 1 2692 0 discriminator 2
	movl	$.LC59, %eax	#, iftmp.249
.L639:
	.loc 1 2692 0 discriminator 3
	movq	%rax, %rdi	# iftmp.249,
	call	get_identifier	#
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _146->common.type, D.19799
	.loc 1 2691 0 is_stmt 1 discriminator 3
	movq	%rax, c_global_trees+56(%rip)	# D.19799, c_global_trees
	.loc 1 2694 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.252
	andl	$33554432, %eax	#, D.19800
	testl	%eax, %eax	# D.19800
	je	.L640	#,
	.loc 1 2694 0 is_stmt 0 discriminator 1
	movl	$.LC57, %eax	#, iftmp.251
	jmp	.L641	#
.L640:
	.loc 1 2694 0 discriminator 2
	movl	$.LC60, %eax	#, iftmp.251
.L641:
	.loc 1 2694 0 discriminator 3
	movq	%rax, %rdi	# iftmp.251,
	call	get_identifier	#
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _153->common.type, D.19799
	.loc 1 2693 0 is_stmt 1 discriminator 3
	movq	%rax, c_global_trees+64(%rip)	# D.19799, c_global_trees
	.loc 1 2696 0 discriminator 3
	movq	integer_types+40(%rip), %rax	# integer_types, D.19799
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, c_global_trees+176(%rip)	# D.19799, c_global_trees
	.loc 1 2698 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.254
	andl	$33554432, %eax	#, D.19800
	testl	%eax, %eax	# D.19800
	je	.L642	#,
	.loc 1 2698 0 is_stmt 0 discriminator 1
	movl	$.LC55, %eax	#, iftmp.253
	jmp	.L643	#
.L642:
	.loc 1 2698 0 discriminator 2
	movl	$.LC74, %eax	#, iftmp.253
.L643:
	.loc 1 2698 0 discriminator 3
	movq	%rax, %rdi	# iftmp.253,
	call	get_identifier	#
	movq	%rax, %rdi	# D.19799,
	call	identifier_global_value	#
	movq	8(%rax), %rax	# _162->common.type, D.19799
	movq	%rax, global_trees+240(%rip)	# D.19799, global_trees
	.loc 1 2699 0 is_stmt 1 discriminator 3
	movq	global_trees+240(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	unsigned_type	#
	movq	%rax, c_global_trees+48(%rip)	# D.19799, c_global_trees
	.loc 1 2701 0 discriminator 3
	movq	global_trees+248(%rip), %rbx	# global_trees, D.19799
	movl	$.LC76, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2704 0 discriminator 3
	movq	global_trees+240(%rip), %rbx	# global_trees, D.19799
	movl	$.LC77, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2707 0 discriminator 3
	movq	sizetype_tab(%rip), %rbx	# sizetype_tab, D.19799
	movl	$.LC78, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.19799,
	movq	%rax, %rsi	# D.19799,
	movl	$33, %edi	#,
	call	build_decl	#
	movq	%rax, %rdi	# D.19799,
	call	pushdecl	#
	.loc 1 2710 0 discriminator 3
	movq	global_trees+248(%rip), %rax	# global_trees, D.19799
	movzbl	16(%rax), %eax	# _175->common.code, D.19803
	cmpb	$18, %al	#, D.19803
	jne	.L644	#,
	.loc 1 2713 0
	movq	global_trees+248(%rip), %rax	# global_trees, D.19799
	movq	8(%rax), %rax	# _177->common.type, D.19799
	.loc 1 2712 0
	movq	%rax, %rdi	# D.19799,
	call	build_pointer_type	#
	movq	%rax, -1448(%rbp)	# tmp757, va_list_ref_type_node
	movq	-1448(%rbp), %rax	# va_list_ref_type_node, tmp758
	movq	%rax, -1440(%rbp)	# tmp758, va_list_arg_type_node
	jmp	.L645	#
.L644:
	.loc 1 2717 0
	movq	global_trees+248(%rip), %rax	# global_trees, tmp759
	movq	%rax, -1440(%rbp)	# tmp759, va_list_arg_type_node
	.loc 1 2718 0
	movq	global_trees+248(%rip), %rax	# global_trees, D.19799
	movq	%rax, %rdi	# D.19799,
	call	build_reference_type	#
	movq	%rax, -1448(%rbp)	# tmp760, va_list_ref_type_node
.L645:
	.loc 1 2721 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.256
	.loc 1 2723 0
	testl	%eax, %eax	# flag_traditional.256
	je	.L646	#,
	.loc 1 2722 0
	movl	c_language(%rip), %eax	# c_language, c_language.257
	.loc 1 2721 0
	cmpl	$1, %eax	#, c_language.257
	je	.L646	#,
	.loc 1 2723 0
	movq	integer_types+40(%rip), %rax	# integer_types, iftmp.255
	jmp	.L647	#
.L646:
	.loc 1 2723 0 is_stmt 0 discriminator 1
	movq	sizetype_tab(%rip), %rax	# sizetype_tab, iftmp.255
.L647:
	.loc 1 2721 0 is_stmt 1
	movq	%rax, -1408(%rbp)	# iftmp.255, traditional_len_type_node
	.file 2 "builtin-types.def"
	.loc 2 61 0
	movq	global_trees+216(%rip), %rax	# global_trees, D.19799
	movq	%rax, -640(%rbp)	# D.19799, builtin_types
	.loc 2 62 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19799
	movq	%rax, -632(%rbp)	# D.19799, builtin_types
	.loc 2 63 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.19799
	movq	%rax, -624(%rbp)	# D.19799, builtin_types
	.loc 2 64 0
	movq	integer_types+56(%rip), %rax	# integer_types, D.19799
	movq	%rax, -616(%rbp)	# D.19799, builtin_types
	.loc 2 65 0
	movq	integer_types+72(%rip), %rax	# integer_types, D.19799
	movq	%rax, -608(%rbp)	# D.19799, builtin_types
	.loc 2 66 0
	movq	global_trees+192(%rip), %rax	# global_trees, D.19799
	movq	%rax, -600(%rbp)	# D.19799, builtin_types
	.loc 2 67 0
	movq	c_global_trees+56(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, -592(%rbp)	# D.19799, builtin_types
	.loc 2 68 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.19799
	movq	%rax, -584(%rbp)	# D.19799, builtin_types
	.loc 2 69 0
	movq	global_trees+208(%rip), %rax	# global_trees, D.19799
	movq	%rax, -576(%rbp)	# D.19799, builtin_types
	.loc 2 70 0
	movq	global_trees+168(%rip), %rax	# global_trees, D.19799
	movq	%rax, -568(%rbp)	# D.19799, builtin_types
	.loc 2 71 0
	movq	global_trees+176(%rip), %rax	# global_trees, D.19799
	movq	%rax, -560(%rbp)	# D.19799, builtin_types
	.loc 2 72 0
	movq	global_trees+184(%rip), %rax	# global_trees, D.19799
	movq	%rax, -552(%rbp)	# D.19799, builtin_types
	.loc 2 74 0
	movq	global_trees+224(%rip), %rax	# global_trees, D.19799
	movq	%rax, -544(%rbp)	# D.19799, builtin_types
	.loc 2 75 0
	movq	global_trees+232(%rip), %rax	# global_trees, D.19799
	movq	%rax, -536(%rbp)	# D.19799, builtin_types
	.loc 2 76 0
	movq	-1424(%rbp), %rax	# traditional_ptr_type_node, tmp761
	movq	%rax, -528(%rbp)	# tmp761, builtin_types
	.loc 2 77 0
	movq	-1416(%rbp), %rax	# traditional_cptr_type_node, tmp762
	movq	%rax, -520(%rbp)	# tmp762, builtin_types
	.loc 2 78 0
	movl	ptr_mode(%rip), %eax	# ptr_mode, ptr_mode.258
	movl	$0, %esi	#,
	movl	%eax, %edi	# ptr_mode.258,
	call	type_for_mode	#
	movq	%rax, -512(%rbp)	# D.19799, builtin_types
	.loc 2 79 0
	movq	c_global_trees+32(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, -504(%rbp)	# D.19799, builtin_types
	.loc 2 80 0
	movq	c_global_trees+112(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, -496(%rbp)	# D.19799, builtin_types
	.loc 2 81 0
	movq	c_global_trees+120(%rip), %rax	# c_global_trees, D.19799
	movq	%rax, -488(%rbp)	# D.19799, builtin_types
	.loc 2 82 0
	movq	-1408(%rbp), %rax	# traditional_len_type_node, tmp763
	movq	%rax, -480(%rbp)	# tmp763, builtin_types
	.loc 2 84 0
	movq	-1448(%rbp), %rax	# va_list_ref_type_node, tmp764
	movq	%rax, -472(%rbp)	# tmp764, builtin_types
	.loc 2 85 0
	movq	-1440(%rbp), %rax	# va_list_arg_type_node, tmp765
	movq	%rax, -464(%rbp)	# tmp765, builtin_types
	.loc 2 87 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -456(%rbp)	# D.19799, builtin_types
	.loc 2 88 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -448(%rbp)	# D.19799, builtin_types
	.loc 2 89 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-624(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -440(%rbp)	# D.19799, builtin_types
	.loc 2 91 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-616(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-616(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -432(%rbp)	# D.19799, builtin_types
	.loc 2 92 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-608(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-608(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -424(%rbp)	# D.19799, builtin_types
	.loc 2 93 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-592(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-592(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -416(%rbp)	# D.19799, builtin_types
	.loc 2 94 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-600(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-600(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -408(%rbp)	# D.19799, builtin_types
	.loc 2 95 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-584(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-584(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -400(%rbp)	# D.19799, builtin_types
	.loc 2 96 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-576(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-576(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -392(%rbp)	# D.19799, builtin_types
	.loc 2 98 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-568(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-568(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -384(%rbp)	# D.19799, builtin_types
	.loc 2 100 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-560(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-560(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -376(%rbp)	# D.19799, builtin_types
	.loc 2 102 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-552(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-552(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -368(%rbp)	# D.19799, builtin_types
	.loc 2 104 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-568(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-600(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -360(%rbp)	# D.19799, builtin_types
	.loc 2 106 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-560(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-584(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -352(%rbp)	# D.19799, builtin_types
	.loc 2 108 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-552(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-576(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -344(%rbp)	# D.19799, builtin_types
	.loc 2 110 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-624(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -336(%rbp)	# D.19799, builtin_types
	.loc 2 111 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -328(%rbp)	# D.19799, builtin_types
	.loc 2 112 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -320(%rbp)	# D.19799, builtin_types
	.loc 2 113 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -312(%rbp)	# D.19799, builtin_types
	.loc 2 114 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -304(%rbp)	# D.19799, builtin_types
	.loc 2 115 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-480(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -296(%rbp)	# D.19799, builtin_types
	.loc 2 116 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -288(%rbp)	# D.19799, builtin_types
	.loc 2 117 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -280(%rbp)	# D.19799, builtin_types
	.loc 2 118 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-472(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -272(%rbp)	# D.19799, builtin_types
	.loc 2 119 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -264(%rbp)	# D.19799, builtin_types
	.loc 2 121 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -256(%rbp)	# D.19799, builtin_types
	.loc 2 122 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -248(%rbp)	# D.19799, builtin_types
	.loc 2 124 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -240(%rbp)	# D.19799, builtin_types
	.loc 2 126 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -232(%rbp)	# D.19799, builtin_types
	.loc 2 128 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -224(%rbp)	# D.19799, builtin_types
	.loc 2 130 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -216(%rbp)	# D.19799, builtin_types
	.loc 2 132 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -208(%rbp)	# D.19799, builtin_types
	.loc 2 134 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -200(%rbp)	# D.19799, builtin_types
	.loc 2 136 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-512(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -192(%rbp)	# D.19799, builtin_types
	.loc 2 138 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-464(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-472(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -184(%rbp)	# D.19799, builtin_types
	.loc 2 140 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-616(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-616(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-616(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -176(%rbp)	# D.19799, builtin_types
	.loc 2 142 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -168(%rbp)	# D.19799, builtin_types
	.loc 2 144 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-480(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-528(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -160(%rbp)	# D.19799, builtin_types
	.loc 2 147 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-496(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -152(%rbp)	# D.19799, builtin_types
	.loc 2 149 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -144(%rbp)	# D.19799, builtin_types
	.loc 2 151 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-536(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-528(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -136(%rbp)	# D.19799, builtin_types
	.loc 2 153 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-536(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-536(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -128(%rbp)	# D.19799, builtin_types
	.loc 2 155 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-528(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -120(%rbp)	# D.19799, builtin_types
	.loc 2 157 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-480(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-520(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-520(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -112(%rbp)	# D.19799, builtin_types
	.loc 2 159 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -104(%rbp)	# D.19799, builtin_types
	.loc 2 161 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-536(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -96(%rbp)	# D.19799, builtin_types
	.loc 2 164 0
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -88(%rbp)	# D.19799, builtin_types
	.loc 2 165 0
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -80(%rbp)	# D.19799, builtin_types
	.loc 2 166 0
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -72(%rbp)	# D.19799, builtin_types
	.loc 2 168 0
	movq	-472(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -64(%rbp)	# D.19799, builtin_types
	.loc 2 170 0
	movq	-536(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-640(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -56(%rbp)	# D.19799, builtin_types
	.loc 2 172 0
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -48(%rbp)	# D.19799, builtin_types
	.loc 2 175 0
	movq	-488(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-632(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -40(%rbp)	# D.19799, builtin_types
	.loc 2 178 0
	movq	-88(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rdi	# D.19799,
	call	build_pointer_type	#
	movq	%rax, -32(%rbp)	# D.19799, builtin_types
	.loc 2 179 0
	movq	global_trees+256(%rip), %rdx	# global_trees, D.19799
	movq	-504(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-32(%rbp), %rax	# builtin_types, D.19799
	movq	%rax, %rsi	# D.19799,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.19799
	movq	-544(%rbp), %rax	# builtin_types, D.19799
	movq	%rdx, %rsi	# D.19799,
	movq	%rax, %rdi	# D.19799,
	call	build_function_type	#
	movq	%rax, -24(%rbp)	# D.19799, builtin_types
.LBB36:
	.file 3 "builtins.def"
	.loc 3 145 0
	movq	-328(%rbp), %rdx	# builtin_types, D.19799
	movq	-328(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC79+10, %esi	#,
	movl	$.LC79, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1400(%rbp)	# tmp766, decl
	movq	-1400(%rbp), %rax	# decl, tmp767
	movq	%rax, built_in_decls(%rip)	# tmp767, built_in_decls
.LBE36:
.LBB37:
	.loc 3 150 0
	movq	-320(%rbp), %rdx	# builtin_types, D.19799
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$1, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC80+10, %esi	#,
	movl	$.LC80, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1392(%rbp)	# tmp768, decl
	movq	-1392(%rbp), %rax	# decl, tmp769
	movq	%rax, built_in_decls+8(%rip)	# tmp769, built_in_decls
.LBE37:
.LBB38:
	.loc 3 153 0
	movq	-432(%rbp), %rdx	# builtin_types, D.19799
	movq	-432(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$2, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC81+10, %esi	#,
	movl	$.LC81, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1384(%rbp)	# tmp770, decl
	movq	-1384(%rbp), %rax	# decl, tmp771
	movq	%rax, built_in_decls+16(%rip)	# tmp771, built_in_decls
.LBE38:
.LBB39:
	.loc 3 157 0
	movq	-400(%rbp), %rdx	# builtin_types, D.19799
	movq	-400(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$3, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC82+10, %esi	#,
	movl	$.LC82, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1376(%rbp)	# tmp772, decl
	movq	-1376(%rbp), %rax	# decl, tmp773
	movq	%rax, built_in_decls+24(%rip)	# tmp773, built_in_decls
.LBE39:
.LBB40:
	.loc 3 160 0
	movq	-408(%rbp), %rdx	# builtin_types, D.19799
	movq	-408(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$4, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC83+10, %esi	#,
	movl	$.LC83, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1368(%rbp)	# tmp774, decl
	movq	-1368(%rbp), %rax	# decl, tmp775
	movq	%rax, built_in_decls+32(%rip)	# tmp775, built_in_decls
.LBE40:
.LBB41:
	.loc 3 163 0
	movq	-392(%rbp), %rdx	# builtin_types, D.19799
	movq	-392(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$5, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC84+10, %esi	#,
	movl	$.LC84, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1360(%rbp)	# tmp776, decl
	movq	-1360(%rbp), %rax	# decl, tmp777
	movq	%rax, built_in_decls+40(%rip)	# tmp777, built_in_decls
.LBE41:
.LBB42:
	.loc 3 167 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.261
	testl	%eax, %eax	# flag_isoc99.261
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-424(%rbp), %rdx	# builtin_types, D.19799
	movq	-424(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$6, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC85+10, %esi	#,
	movl	$.LC85, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1352(%rbp)	# tmp778, decl
	movq	-1352(%rbp), %rax	# decl, tmp779
	movq	%rax, built_in_decls+48(%rip)	# tmp779, built_in_decls
.LBE42:
.LBB43:
	.loc 3 170 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.264
	testl	%eax, %eax	# flag_isoc99.264
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-416(%rbp), %rdx	# builtin_types, D.19799
	movq	-416(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$7, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC86+10, %esi	#,
	movl	$.LC86, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1344(%rbp)	# tmp780, decl
	movq	-1344(%rbp), %rax	# decl, tmp781
	movq	%rax, built_in_decls+56(%rip)	# tmp781, built_in_decls
.LBE43:
.LBB44:
	.loc 3 173 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.267
	testl	%eax, %eax	# flag_isoc99.267
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-376(%rbp), %rdx	# builtin_types, D.19799
	movq	-376(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$8, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC87+10, %esi	#,
	movl	$.LC87, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1336(%rbp)	# tmp782, decl
	movq	-1336(%rbp), %rax	# decl, tmp783
	movq	%rax, built_in_decls+64(%rip)	# tmp783, built_in_decls
.LBE44:
.LBB45:
	.loc 3 176 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.270
	testl	%eax, %eax	# flag_isoc99.270
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-384(%rbp), %rdx	# builtin_types, D.19799
	movq	-384(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$9, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC88+10, %esi	#,
	movl	$.LC88, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1328(%rbp)	# tmp784, decl
	movq	-1328(%rbp), %rax	# decl, tmp785
	movq	%rax, built_in_decls+72(%rip)	# tmp785, built_in_decls
.LBE45:
.LBB46:
	.loc 3 179 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.273
	testl	%eax, %eax	# flag_isoc99.273
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-368(%rbp), %rdx	# builtin_types, D.19799
	movq	-368(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$10, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC89+10, %esi	#,
	movl	$.LC89, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1320(%rbp)	# tmp786, decl
	movq	-1320(%rbp), %rax	# decl, tmp787
	movq	%rax, built_in_decls+80(%rip)	# tmp787, built_in_decls
.LBE46:
.LBB47:
	.loc 3 182 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.276
	testl	%eax, %eax	# flag_isoc99.276
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-352(%rbp), %rdx	# builtin_types, D.19799
	movq	-352(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$11, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC90+10, %esi	#,
	movl	$.LC90, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1312(%rbp)	# tmp788, decl
	movq	-1312(%rbp), %rax	# decl, tmp789
	movq	%rax, built_in_decls+88(%rip)	# tmp789, built_in_decls
.LBE47:
.LBB48:
	.loc 3 185 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.279
	testl	%eax, %eax	# flag_isoc99.279
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-360(%rbp), %rdx	# builtin_types, D.19799
	movq	-360(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$12, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC91+10, %esi	#,
	movl	$.LC91, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1304(%rbp)	# tmp790, decl
	movq	-1304(%rbp), %rax	# decl, tmp791
	movq	%rax, built_in_decls+96(%rip)	# tmp791, built_in_decls
.LBE48:
.LBB49:
	.loc 3 188 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.282
	testl	%eax, %eax	# flag_isoc99.282
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-344(%rbp), %rdx	# builtin_types, D.19799
	movq	-344(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$13, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC92+10, %esi	#,
	movl	$.LC92, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1296(%rbp)	# tmp792, decl
	movq	-1296(%rbp), %rax	# decl, tmp793
	movq	%rax, built_in_decls+104(%rip)	# tmp793, built_in_decls
.LBE49:
.LBB50:
	.loc 3 191 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.285
	testl	%eax, %eax	# flag_isoc99.285
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-352(%rbp), %rdx	# builtin_types, D.19799
	movq	-352(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$14, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC93+10, %esi	#,
	movl	$.LC93, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1288(%rbp)	# tmp794, decl
	movq	-1288(%rbp), %rax	# decl, tmp795
	movq	%rax, built_in_decls+112(%rip)	# tmp795, built_in_decls
.LBE50:
.LBB51:
	.loc 3 194 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.288
	testl	%eax, %eax	# flag_isoc99.288
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-360(%rbp), %rdx	# builtin_types, D.19799
	movq	-360(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$15, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC94+10, %esi	#,
	movl	$.LC94, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1280(%rbp)	# tmp796, decl
	movq	-1280(%rbp), %rax	# decl, tmp797
	movq	%rax, built_in_decls+120(%rip)	# tmp797, built_in_decls
.LBE51:
.LBB52:
	.loc 3 197 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.291
	testl	%eax, %eax	# flag_isoc99.291
	sete	%al	#, D.19804
	movzbl	%al, %ecx	# D.19804, D.19800
	movq	-344(%rbp), %rdx	# builtin_types, D.19799
	movq	-344(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	%ecx, (%rsp)	# D.19800,
	movl	$3, %r9d	#,
	movl	$16, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC95+10, %esi	#,
	movl	$.LC95, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1272(%rbp)	# tmp798, decl
	movq	-1272(%rbp), %rax	# decl, tmp799
	movq	%rax, built_in_decls+128(%rip)	# tmp799, built_in_decls
.LBE52:
.LBB53:
	.loc 3 214 0
	movq	-88(%rbp), %rdx	# builtin_types, D.19799
	movq	-160(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$17, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC96+10, %esi	#,
	movl	$.LC96, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1264(%rbp)	# tmp800, decl
	movq	-1264(%rbp), %rax	# decl, tmp801
	movq	%rax, built_in_decls+136(%rip)	# tmp801, built_in_decls
.LBE53:
.LBB54:
	.loc 3 220 0
	movq	-80(%rbp), %rdx	# builtin_types, D.19799
	movq	-112(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$18, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC97+10, %esi	#,
	movl	$.LC97, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1256(%rbp)	# tmp802, decl
	movq	-1256(%rbp), %rax	# decl, tmp803
	movq	%rax, built_in_decls+144(%rip)	# tmp803, built_in_decls
.LBE54:
.LBB55:
	.loc 3 227 0
	movq	-320(%rbp), %rdx	# builtin_types, D.19799
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$19, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC98+10, %esi	#,
	movl	$.LC98, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1248(%rbp)	# tmp804, decl
	movq	-1248(%rbp), %rax	# decl, tmp805
	movq	%rax, built_in_decls+152(%rip)	# tmp805, built_in_decls
.LBE55:
.LBB56:
	.loc 3 230 0
	movq	-216(%rbp), %rdx	# builtin_types, D.19799
	movq	-216(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$20, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC99+10, %esi	#,
	movl	$.LC99, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1240(%rbp)	# tmp806, decl
	movq	-1240(%rbp), %rax	# decl, tmp807
	movq	%rax, built_in_decls+160(%rip)	# tmp807, built_in_decls
.LBE56:
.LBB57:
	.loc 3 233 0
	movq	-216(%rbp), %rdx	# builtin_types, D.19799
	movq	-216(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$21, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC100+10, %esi	#,
	movl	$.LC100, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1232(%rbp)	# tmp808, decl
	movq	-1232(%rbp), %rax	# decl, tmp809
	movq	%rax, built_in_decls+168(%rip)	# tmp809, built_in_decls
.LBE57:
.LBB58:
	.loc 3 237 0
	movq	-136(%rbp), %rdx	# builtin_types, D.19799
	movq	-136(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$22, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC101+10, %esi	#,
	movl	$.LC101, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1224(%rbp)	# tmp810, decl
	movq	-1224(%rbp), %rax	# decl, tmp811
	movq	%rax, built_in_decls+176(%rip)	# tmp811, built_in_decls
.LBE58:
.LBB59:
	.loc 3 240 0
	movq	-128(%rbp), %rdx	# builtin_types, D.19799
	movq	-128(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$23, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC102+10, %esi	#,
	movl	$.LC102, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1216(%rbp)	# tmp812, decl
	movq	-1216(%rbp), %rax	# decl, tmp813
	movq	%rax, built_in_decls+184(%rip)	# tmp813, built_in_decls
.LBE59:
.LBB60:
	.loc 3 243 0
	movq	-120(%rbp), %rdx	# builtin_types, D.19799
	movq	-120(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$24, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC103+10, %esi	#,
	movl	$.LC103, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1208(%rbp)	# tmp814, decl
	movq	-1208(%rbp), %rax	# decl, tmp815
	movq	%rax, built_in_decls+192(%rip)	# tmp815, built_in_decls
.LBE60:
.LBB61:
	.loc 3 247 0
	movq	-248(%rbp), %rdx	# builtin_types, D.19799
	movq	-248(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$25, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC104+10, %esi	#,
	movl	$.LC104, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1200(%rbp)	# tmp816, decl
	movq	-1200(%rbp), %rax	# decl, tmp817
	movq	%rax, built_in_decls+200(%rip)	# tmp817, built_in_decls
.LBE61:
.LBB62:
	.loc 3 250 0
	movq	-152(%rbp), %rdx	# builtin_types, D.19799
	movq	-152(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$26, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC105+10, %esi	#,
	movl	$.LC105, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1192(%rbp)	# tmp818, decl
	movq	-1192(%rbp), %rax	# decl, tmp819
	movq	%rax, built_in_decls+208(%rip)	# tmp819, built_in_decls
.LBE62:
.LBB63:
	.loc 3 253 0
	movq	-248(%rbp), %rdx	# builtin_types, D.19799
	movq	-248(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$27, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC106+10, %esi	#,
	movl	$.LC106, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1184(%rbp)	# tmp820, decl
	movq	-1184(%rbp), %rax	# decl, tmp821
	movq	%rax, built_in_decls+216(%rip)	# tmp821, built_in_decls
.LBE63:
.LBB64:
	.loc 3 256 0
	movq	-152(%rbp), %rdx	# builtin_types, D.19799
	movq	-152(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$28, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC107+10, %esi	#,
	movl	$.LC107, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1176(%rbp)	# tmp822, decl
	movq	-1176(%rbp), %rax	# decl, tmp823
	movq	%rax, built_in_decls+224(%rip)	# tmp823, built_in_decls
.LBE64:
.LBB65:
	.loc 3 259 0
	movq	-240(%rbp), %rdx	# builtin_types, D.19799
	movq	-240(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$29, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC108+10, %esi	#,
	movl	$.LC108, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1168(%rbp)	# tmp824, decl
	movq	-1168(%rbp), %rax	# decl, tmp825
	movq	%rax, built_in_decls+232(%rip)	# tmp825, built_in_decls
.LBE65:
.LBB66:
	.loc 3 262 0
	movq	-144(%rbp), %rdx	# builtin_types, D.19799
	movq	-144(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$30, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC109+10, %esi	#,
	movl	$.LC109, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1160(%rbp)	# tmp826, decl
	movq	-1160(%rbp), %rax	# decl, tmp827
	movq	%rax, built_in_decls+240(%rip)	# tmp827, built_in_decls
.LBE66:
.LBB67:
	.loc 3 265 0
	movq	-296(%rbp), %rdx	# builtin_types, D.19799
	movq	-296(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$31, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC110+10, %esi	#,
	movl	$.LC110, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1152(%rbp)	# tmp828, decl
	movq	-1152(%rbp), %rax	# decl, tmp829
	movq	%rax, built_in_decls+248(%rip)	# tmp829, built_in_decls
.LBE67:
.LBB68:
	.loc 3 268 0
	movq	-232(%rbp), %rdx	# builtin_types, D.19799
	movq	-232(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$32, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC111+10, %esi	#,
	movl	$.LC111, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1144(%rbp)	# tmp830, decl
	movq	-1144(%rbp), %rax	# decl, tmp831
	movq	%rax, built_in_decls+256(%rip)	# tmp831, built_in_decls
.LBE68:
.LBB69:
	.loc 3 271 0
	movq	-232(%rbp), %rdx	# builtin_types, D.19799
	movq	-232(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$33, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC112+10, %esi	#,
	movl	$.LC112, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1136(%rbp)	# tmp832, decl
	movq	-1136(%rbp), %rax	# decl, tmp833
	movq	%rax, built_in_decls+264(%rip)	# tmp833, built_in_decls
.LBE69:
.LBB70:
	.loc 3 274 0
	movq	-224(%rbp), %rdx	# builtin_types, D.19799
	movq	-224(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$34, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC113+10, %esi	#,
	movl	$.LC113, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1128(%rbp)	# tmp834, decl
	movq	-1128(%rbp), %rax	# decl, tmp835
	movq	%rax, built_in_decls+272(%rip)	# tmp835, built_in_decls
.LBE70:
.LBB71:
	.loc 3 277 0
	movq	-224(%rbp), %rdx	# builtin_types, D.19799
	movq	-224(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$35, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC114+10, %esi	#,
	movl	$.LC114, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1120(%rbp)	# tmp836, decl
	movq	-1120(%rbp), %rax	# decl, tmp837
	movq	%rax, built_in_decls+280(%rip)	# tmp837, built_in_decls
.LBE71:
.LBB72:
	.loc 3 280 0
	movq	-216(%rbp), %rdx	# builtin_types, D.19799
	movq	-216(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$36, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC115+10, %esi	#,
	movl	$.LC115, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1112(%rbp)	# tmp838, decl
	movq	-1112(%rbp), %rax	# decl, tmp839
	movq	%rax, built_in_decls+288(%rip)	# tmp839, built_in_decls
.LBE72:
.LBB73:
	.loc 3 283 0
	movq	-216(%rbp), %rdx	# builtin_types, D.19799
	movq	-216(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$37, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC116+10, %esi	#,
	movl	$.LC116, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1104(%rbp)	# tmp840, decl
	movq	-1104(%rbp), %rax	# decl, tmp841
	movq	%rax, built_in_decls+296(%rip)	# tmp841, built_in_decls
.LBE73:
.LBB74:
	.loc 3 287 0
	movq	-400(%rbp), %rdx	# builtin_types, D.19799
	movq	-400(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$38, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC117+10, %esi	#,
	movl	$.LC117, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1096(%rbp)	# tmp842, decl
	movq	-1096(%rbp), %rax	# decl, tmp843
	movq	%rax, built_in_decls+304(%rip)	# tmp843, built_in_decls
.LBE74:
.LBB75:
	.loc 3 290 0
	movq	-400(%rbp), %rdx	# builtin_types, D.19799
	movq	-400(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$39, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC118+10, %esi	#,
	movl	$.LC118, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1088(%rbp)	# tmp844, decl
	movq	-1088(%rbp), %rax	# decl, tmp845
	movq	%rax, built_in_decls+312(%rip)	# tmp845, built_in_decls
.LBE75:
.LBB76:
	.loc 3 293 0
	movq	-400(%rbp), %rdx	# builtin_types, D.19799
	movq	-400(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$40, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC119+10, %esi	#,
	movl	$.LC119, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1080(%rbp)	# tmp846, decl
	movq	-1080(%rbp), %rax	# decl, tmp847
	movq	%rax, built_in_decls+320(%rip)	# tmp847, built_in_decls
.LBE76:
.LBB77:
	.loc 3 296 0
	movq	-408(%rbp), %rdx	# builtin_types, D.19799
	movq	-408(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$41, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC120+10, %esi	#,
	movl	$.LC120, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1072(%rbp)	# tmp848, decl
	movq	-1072(%rbp), %rax	# decl, tmp849
	movq	%rax, built_in_decls+328(%rip)	# tmp849, built_in_decls
.LBE77:
.LBB78:
	.loc 3 299 0
	movq	-408(%rbp), %rdx	# builtin_types, D.19799
	movq	-408(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$42, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC121+10, %esi	#,
	movl	$.LC121, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1064(%rbp)	# tmp850, decl
	movq	-1064(%rbp), %rax	# decl, tmp851
	movq	%rax, built_in_decls+336(%rip)	# tmp851, built_in_decls
.LBE78:
.LBB79:
	.loc 3 302 0
	movq	-408(%rbp), %rdx	# builtin_types, D.19799
	movq	-408(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$43, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC122+10, %esi	#,
	movl	$.LC122, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1056(%rbp)	# tmp852, decl
	movq	-1056(%rbp), %rax	# decl, tmp853
	movq	%rax, built_in_decls+344(%rip)	# tmp853, built_in_decls
.LBE79:
.LBB80:
	.loc 3 305 0
	movq	-392(%rbp), %rdx	# builtin_types, D.19799
	movq	-392(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$44, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC123+10, %esi	#,
	movl	$.LC123, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1048(%rbp)	# tmp854, decl
	movq	-1048(%rbp), %rax	# decl, tmp855
	movq	%rax, built_in_decls+352(%rip)	# tmp855, built_in_decls
.LBE80:
.LBB81:
	.loc 3 308 0
	movq	-392(%rbp), %rdx	# builtin_types, D.19799
	movq	-392(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$45, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC124+10, %esi	#,
	movl	$.LC124, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1040(%rbp)	# tmp856, decl
	movq	-1040(%rbp), %rax	# decl, tmp857
	movq	%rax, built_in_decls+360(%rip)	# tmp857, built_in_decls
.LBE81:
.LBB82:
	.loc 3 311 0
	movq	-392(%rbp), %rdx	# builtin_types, D.19799
	movq	-392(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$46, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC125+10, %esi	#,
	movl	$.LC125, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -1032(%rbp)	# tmp858, decl
	movq	-1032(%rbp), %rax	# decl, tmp859
	movq	%rax, built_in_decls+368(%rip)	# tmp859, built_in_decls
.LBE82:
.LBB83:
	.loc 3 321 0
	movq	-72(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$47, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC126, %edi	#,
	call	builtin_function	#
	movq	%rax, -1024(%rbp)	# tmp860, decl
	movq	-1024(%rbp), %rax	# decl, tmp861
	movq	%rax, built_in_decls+376(%rip)	# tmp861, built_in_decls
.LBE83:
.LBB84:
	.loc 3 324 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$48, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC127, %edi	#,
	call	builtin_function	#
	movq	%rax, -1016(%rbp)	# tmp862, decl
	movq	-1016(%rbp), %rax	# decl, tmp863
	movq	%rax, built_in_decls+384(%rip)	# tmp863, built_in_decls
.LBE84:
.LBB85:
	.loc 3 327 0
	movq	-72(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$49, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC128, %edi	#,
	call	builtin_function	#
	movq	%rax, -1008(%rbp)	# tmp864, decl
	movq	-1008(%rbp), %rax	# decl, tmp865
	movq	%rax, built_in_decls+392(%rip)	# tmp865, built_in_decls
.LBE85:
.LBB86:
	.loc 3 330 0
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$50, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC129, %edi	#,
	call	builtin_function	#
	movq	%rax, -1000(%rbp)	# tmp866, decl
	movq	-1000(%rbp), %rax	# decl, tmp867
	movq	%rax, built_in_decls+400(%rip)	# tmp867, built_in_decls
.LBE86:
.LBB87:
	.loc 3 333 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$51, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC130, %edi	#,
	call	builtin_function	#
	movq	%rax, -992(%rbp)	# tmp868, decl
	movq	-992(%rbp), %rax	# decl, tmp869
	movq	%rax, built_in_decls+408(%rip)	# tmp869, built_in_decls
.LBE87:
.LBB88:
	.loc 3 336 0
	movq	-336(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$52, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC131, %edi	#,
	call	builtin_function	#
	movq	%rax, -984(%rbp)	# tmp870, decl
	movq	-984(%rbp), %rax	# decl, tmp871
	movq	%rax, built_in_decls+416(%rip)	# tmp871, built_in_decls
.LBE88:
.LBB89:
	.loc 3 339 0
	movq	-336(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$53, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC132, %edi	#,
	call	builtin_function	#
	movq	%rax, -976(%rbp)	# tmp872, decl
	movq	-976(%rbp), %rax	# decl, tmp873
	movq	%rax, built_in_decls+424(%rip)	# tmp873, built_in_decls
.LBE89:
.LBB90:
	.loc 3 342 0
	movq	-72(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$54, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC133, %edi	#,
	call	builtin_function	#
	movq	%rax, -968(%rbp)	# tmp874, decl
	movq	-968(%rbp), %rax	# decl, tmp875
	movq	%rax, built_in_decls+432(%rip)	# tmp875, built_in_decls
.LBE90:
.LBB91:
	.loc 3 345 0
	movq	-72(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$55, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC134, %edi	#,
	call	builtin_function	#
	movq	%rax, -960(%rbp)	# tmp876, decl
	movq	-960(%rbp), %rax	# decl, tmp877
	movq	%rax, built_in_decls+440(%rip)	# tmp877, built_in_decls
.LBE91:
.LBB92:
	.loc 3 348 0
	movq	-24(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$56, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC135, %edi	#,
	call	builtin_function	#
	movq	%rax, -952(%rbp)	# tmp878, decl
	movq	-952(%rbp), %rax	# decl, tmp879
	movq	%rax, built_in_decls+448(%rip)	# tmp879, built_in_decls
.LBE92:
.LBB93:
	.loc 3 351 0
	movq	-304(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$57, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC136, %edi	#,
	call	builtin_function	#
	movq	%rax, -944(%rbp)	# tmp880, decl
	movq	-944(%rbp), %rax	# decl, tmp881
	movq	%rax, built_in_decls+456(%rip)	# tmp881, built_in_decls
.LBE93:
.LBB94:
	.loc 3 354 0
	movq	-312(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$58, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC137, %edi	#,
	call	builtin_function	#
	movq	%rax, -936(%rbp)	# tmp882, decl
	movq	-936(%rbp), %rax	# decl, tmp883
	movq	%rax, built_in_decls+464(%rip)	# tmp883, built_in_decls
.LBE94:
.LBB95:
	.loc 3 357 0
	movq	-256(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$59, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC138, %edi	#,
	call	builtin_function	#
	movq	%rax, -928(%rbp)	# tmp884, decl
	movq	-928(%rbp), %rax	# decl, tmp885
	movq	%rax, built_in_decls+472(%rip)	# tmp885, built_in_decls
.LBE95:
.LBB96:
	.loc 3 360 0
	movq	-456(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$60, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC139, %edi	#,
	call	builtin_function	#
	movq	%rax, -920(%rbp)	# tmp886, decl
	movq	-920(%rbp), %rax	# decl, tmp887
	movq	%rax, built_in_decls+480(%rip)	# tmp887, built_in_decls
.LBE96:
.LBB97:
	.loc 3 363 0
	movq	-56(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$61, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC140, %edi	#,
	call	builtin_function	#
	movq	%rax, -912(%rbp)	# tmp888, decl
	movq	-912(%rbp), %rax	# decl, tmp889
	movq	%rax, built_in_decls+488(%rip)	# tmp889, built_in_decls
.LBE97:
.LBB98:
	.loc 3 368 0
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC141+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$62, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC141, %edi	#,
	call	builtin_function	#
	movq	%rax, -904(%rbp)	# tmp890, decl
	movq	-904(%rbp), %rax	# decl, tmp891
	movq	%rax, built_in_decls+496(%rip)	# tmp891, built_in_decls
.LBE98:
.LBB99:
	.loc 3 371 0
	movq	-288(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC142+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$63, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC142, %edi	#,
	call	builtin_function	#
	movq	%rax, -896(%rbp)	# tmp892, decl
	movq	-896(%rbp), %rax	# decl, tmp893
	movq	%rax, built_in_decls+504(%rip)	# tmp893, built_in_decls
.LBE99:
.LBB100:
	.loc 3 374 0
	movq	-48(%rbp), %rdx	# builtin_types, D.19799
	movq	-48(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$64, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC143+10, %esi	#,
	movl	$.LC143, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -888(%rbp)	# tmp894, decl
	movq	-888(%rbp), %rax	# decl, tmp895
	movq	%rax, built_in_decls+512(%rip)	# tmp895, built_in_decls
.LBE100:
.LBB101:
	.loc 3 377 0
	movq	-200(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC144+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$65, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC144, %edi	#,
	call	builtin_function	#
	movq	%rax, -880(%rbp)	# tmp896, decl
	movq	-880(%rbp), %rax	# decl, tmp897
	movq	%rax, built_in_decls+520(%rip)	# tmp897, built_in_decls
.LBE101:
.LBB102:
	.loc 3 384 0
	movq	-80(%rbp), %rdx	# builtin_types, D.19799
	movq	-208(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$66, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC145+10, %esi	#,
	movl	$.LC145, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -872(%rbp)	# tmp898, decl
	movq	-872(%rbp), %rax	# decl, tmp899
	movq	%rax, built_in_decls+528(%rip)	# tmp899, built_in_decls
.LBE102:
.LBB103:
	.loc 3 390 0
	movq	-96(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC146+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$67, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC146, %edi	#,
	call	builtin_function	#
	movq	%rax, -864(%rbp)	# tmp900, decl
	movq	-864(%rbp), %rax	# decl, tmp901
	movq	%rax, built_in_decls+536(%rip)	# tmp901, built_in_decls
.LBE103:
.LBB104:
	.loc 3 393 0
	movq	-40(%rbp), %rdx	# builtin_types, D.19799
	movq	-40(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$68, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC147+10, %esi	#,
	movl	$.LC147, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -856(%rbp)	# tmp902, decl
	movq	-856(%rbp), %rax	# decl, tmp903
	movq	%rax, built_in_decls+544(%rip)	# tmp903, built_in_decls
.LBE104:
.LBB105:
	.loc 3 399 0
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC148+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$69, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC148, %edi	#,
	call	builtin_function	#
	movq	%rax, -848(%rbp)	# tmp904, decl
	movq	-848(%rbp), %rax	# decl, tmp905
	movq	%rax, built_in_decls+552(%rip)	# tmp905, built_in_decls
.LBE105:
.LBB106:
	.loc 3 402 0
	movq	-288(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC149+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$70, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC149, %edi	#,
	call	builtin_function	#
	movq	%rax, -840(%rbp)	# tmp906, decl
	movq	-840(%rbp), %rax	# decl, tmp907
	movq	%rax, built_in_decls+560(%rip)	# tmp907, built_in_decls
.LBE106:
.LBB107:
	.loc 3 405 0
	movq	-48(%rbp), %rdx	# builtin_types, D.19799
	movq	-48(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$71, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC150+10, %esi	#,
	movl	$.LC150, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -832(%rbp)	# tmp908, decl
	movq	-832(%rbp), %rax	# decl, tmp909
	movq	%rax, built_in_decls+568(%rip)	# tmp909, built_in_decls
.LBE107:
.LBB108:
	.loc 3 408 0
	movq	-200(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC151+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$72, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC151, %edi	#,
	call	builtin_function	#
	movq	%rax, -824(%rbp)	# tmp910, decl
	movq	-824(%rbp), %rax	# decl, tmp911
	movq	%rax, built_in_decls+576(%rip)	# tmp911, built_in_decls
.LBE108:
.LBB109:
	.loc 3 415 0
	movq	-80(%rbp), %rdx	# builtin_types, D.19799
	movq	-208(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$3, %r9d	#,
	movl	$73, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC152+10, %esi	#,
	movl	$.LC152, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -816(%rbp)	# tmp912, decl
	movq	-816(%rbp), %rax	# decl, tmp913
	movq	%rax, built_in_decls+584(%rip)	# tmp913, built_in_decls
.LBE109:
.LBB110:
	.loc 3 421 0
	movq	-96(%rbp), %rax	# builtin_types, D.19799
	movl	$.LC153+10, %r8d	#,
	movl	$3, %ecx	#,
	movl	$74, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC153, %edi	#,
	call	builtin_function	#
	movq	%rax, -808(%rbp)	# tmp914, decl
	movq	-808(%rbp), %rax	# decl, tmp915
	movq	%rax, built_in_decls+592(%rip)	# tmp915, built_in_decls
.LBE110:
.LBB111:
	.loc 3 424 0
	movq	-40(%rbp), %rdx	# builtin_types, D.19799
	movq	-40(%rbp), %rax	# builtin_types, D.19799
	movl	$0, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$75, %r8d	#,
	movq	%rdx, %rcx	# D.19799,
	movq	%rax, %rdx	# D.19799,
	movl	$.LC154+10, %esi	#,
	movl	$.LC154, %edi	#,
	call	builtin_function_2	#
	movq	%rax, -800(%rbp)	# tmp916, decl
	movq	-800(%rbp), %rax	# decl, tmp917
	movq	%rax, built_in_decls+600(%rip)	# tmp917, built_in_decls
.LBE111:
.LBB112:
	.loc 3 429 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$76, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC155, %edi	#,
	call	builtin_function	#
	movq	%rax, -792(%rbp)	# tmp918, decl
	movq	-792(%rbp), %rax	# decl, tmp919
	movq	%rax, built_in_decls+608(%rip)	# tmp919, built_in_decls
.LBE112:
.LBB113:
	.loc 3 432 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$77, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC156, %edi	#,
	call	builtin_function	#
	movq	%rax, -784(%rbp)	# tmp920, decl
	movq	-784(%rbp), %rax	# decl, tmp921
	movq	%rax, built_in_decls+616(%rip)	# tmp921, built_in_decls
.LBE113:
.LBB114:
	.loc 3 435 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$78, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC157, %edi	#,
	call	builtin_function	#
	movq	%rax, -776(%rbp)	# tmp922, decl
	movq	-776(%rbp), %rax	# decl, tmp923
	movq	%rax, built_in_decls+624(%rip)	# tmp923, built_in_decls
.LBE114:
.LBB115:
	.loc 3 438 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$79, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC158, %edi	#,
	call	builtin_function	#
	movq	%rax, -768(%rbp)	# tmp924, decl
	movq	-768(%rbp), %rax	# decl, tmp925
	movq	%rax, built_in_decls+632(%rip)	# tmp925, built_in_decls
.LBE115:
.LBB116:
	.loc 3 441 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$80, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC159, %edi	#,
	call	builtin_function	#
	movq	%rax, -760(%rbp)	# tmp926, decl
	movq	-760(%rbp), %rax	# decl, tmp927
	movq	%rax, built_in_decls+640(%rip)	# tmp927, built_in_decls
.LBE116:
.LBB117:
	.loc 3 444 0
	movq	-80(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$81, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC160, %edi	#,
	call	builtin_function	#
	movq	%rax, -752(%rbp)	# tmp928, decl
	movq	-752(%rbp), %rax	# decl, tmp929
	movq	%rax, built_in_decls+648(%rip)	# tmp929, built_in_decls
.LBE117:
.LBB118:
	.loc 3 449 0
	movq	-456(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$82, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC161, %edi	#,
	call	builtin_function	#
	movq	%rax, -744(%rbp)	# tmp930, decl
	movq	-744(%rbp), %rax	# decl, tmp931
	movq	%rax, built_in_decls+656(%rip)	# tmp931, built_in_decls
.LBE118:
.LBB119:
	.loc 3 452 0
	movq	-448(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$83, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC162, %edi	#,
	call	builtin_function	#
	movq	%rax, -736(%rbp)	# tmp932, decl
	movq	-736(%rbp), %rax	# decl, tmp933
	movq	%rax, built_in_decls+664(%rip)	# tmp933, built_in_decls
.LBE119:
.LBB120:
	.loc 3 455 0
	movq	-440(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$84, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC163, %edi	#,
	call	builtin_function	#
	movq	%rax, -728(%rbp)	# tmp934, decl
	movq	-728(%rbp), %rax	# decl, tmp935
	movq	%rax, built_in_decls+672(%rip)	# tmp935, built_in_decls
.LBE120:
.LBB121:
	.loc 3 458 0
	movq	-304(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$85, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC164, %edi	#,
	call	builtin_function	#
	movq	%rax, -720(%rbp)	# tmp936, decl
	movq	-720(%rbp), %rax	# decl, tmp937
	movq	%rax, built_in_decls+680(%rip)	# tmp937, built_in_decls
.LBE121:
.LBB122:
	.loc 3 461 0
	movq	-280(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$86, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC165, %edi	#,
	call	builtin_function	#
	movq	%rax, -712(%rbp)	# tmp938, decl
	movq	-712(%rbp), %rax	# decl, tmp939
	movq	%rax, built_in_decls+688(%rip)	# tmp939, built_in_decls
.LBE122:
.LBB123:
	.loc 3 464 0
	movq	-280(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$87, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC166, %edi	#,
	call	builtin_function	#
	movq	%rax, -704(%rbp)	# tmp940, decl
	movq	-704(%rbp), %rax	# decl, tmp941
	movq	%rax, built_in_decls+696(%rip)	# tmp941, built_in_decls
.LBE123:
.LBB124:
	.loc 3 467 0
	movq	-192(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$88, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC167, %edi	#,
	call	builtin_function	#
	movq	%rax, -696(%rbp)	# tmp942, decl
	movq	-696(%rbp), %rax	# decl, tmp943
	movq	%rax, built_in_decls+704(%rip)	# tmp943, built_in_decls
.LBE124:
.LBB125:
	.loc 3 470 0
	movq	-320(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$89, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC168, %edi	#,
	call	builtin_function	#
	movq	%rax, -688(%rbp)	# tmp944, decl
	movq	-688(%rbp), %rax	# decl, tmp945
	movq	%rax, built_in_decls+712(%rip)	# tmp945, built_in_decls
.LBE125:
.LBB126:
	.loc 3 474 0
	movq	-272(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$90, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC169, %edi	#,
	call	builtin_function	#
	movq	%rax, -680(%rbp)	# tmp946, decl
	movq	-680(%rbp), %rax	# decl, tmp947
	movq	%rax, built_in_decls+720(%rip)	# tmp947, built_in_decls
.LBE126:
.LBB127:
	.loc 3 477 0
	movq	-64(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$91, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC170, %edi	#,
	call	builtin_function	#
	movq	%rax, -672(%rbp)	# tmp948, decl
	movq	-672(%rbp), %rax	# decl, tmp949
	movq	%rax, built_in_decls+728(%rip)	# tmp949, built_in_decls
.LBE127:
.LBB128:
	.loc 3 480 0
	movq	-272(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$92, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC171, %edi	#,
	call	builtin_function	#
	movq	%rax, -664(%rbp)	# tmp950, decl
	movq	-664(%rbp), %rax	# decl, tmp951
	movq	%rax, built_in_decls+736(%rip)	# tmp951, built_in_decls
.LBE128:
.LBB129:
	.loc 3 483 0
	movq	-184(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$93, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC172, %edi	#,
	call	builtin_function	#
	movq	%rax, -656(%rbp)	# tmp952, decl
	movq	-656(%rbp), %rax	# decl, tmp953
	movq	%rax, built_in_decls+744(%rip)	# tmp953, built_in_decls
.LBE129:
.LBB130:
	.loc 3 486 0
	movq	-176(%rbp), %rax	# builtin_types, D.19799
	movl	$0, %r8d	#,
	movl	$3, %ecx	#,
	movl	$94, %edx	#,
	movq	%rax, %rsi	# D.19799,
	movl	$.LC173, %edi	#,
	call	builtin_function	#
	movq	%rax, -648(%rbp)	# tmp954, decl
	movq	-648(%rbp), %rax	# decl, tmp955
	movq	%rax, built_in_decls+752(%rip)	# tmp955, built_in_decls
.LBE130:
	.loc 1 2835 0
	movq	-264(%rbp), %rax	# builtin_types, D.19799
	movl	$1, 16(%rsp)	#,
	movl	$1, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rcx	# D.19799,
	movl	$0, %edx	#,
	movl	$.LC174, %esi	#,
	movl	$0, %edi	#,
	call	builtin_function_2	#
	.loc 1 2838 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.292
	testl	%eax, %eax	# flag_isoc99.292
	sete	%al	#, D.19804
	movzbl	%al, %edx	# D.19804, D.19800
	movq	-264(%rbp), %rax	# builtin_types, D.19799
	movl	$1, 16(%rsp)	#,
	movl	%edx, 8(%rsp)	# D.19800,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rcx	# D.19799,
	movl	$0, %edx	#,
	movl	$.LC175, %esi	#,
	movl	$0, %edi	#,
	call	builtin_function_2	#
	.loc 1 2845 0
	movl	c_language(%rip), %eax	# c_language, c_language.294
	.loc 1 2844 0
	cmpl	$1, %eax	#, c_language.294
	jne	.L648	#,
	.loc 1 2844 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# builtin_types, iftmp.293
	jmp	.L649	#
.L648:
	.loc 1 2844 0 discriminator 2
	movq	-88(%rbp), %rax	# builtin_types, iftmp.293
.L649:
	.loc 1 2844 0 discriminator 3
	movl	$1, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rcx	# iftmp.293,
	movl	$0, %edx	#,
	movl	$.LC176, %esi	#,
	movl	$0, %edi	#,
	call	builtin_function_2	#
	.loc 1 2851 0 is_stmt 1 discriminator 3
	movl	c_language(%rip), %eax	# c_language, c_language.296
	.loc 1 2850 0 discriminator 3
	cmpl	$1, %eax	#, c_language.296
	jne	.L650	#,
	.loc 1 2850 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# builtin_types, iftmp.295
	jmp	.L651	#
.L650:
	.loc 1 2850 0 discriminator 2
	movq	-88(%rbp), %rax	# builtin_types, iftmp.295
.L651:
	.loc 1 2850 0 discriminator 3
	movl	$1, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rax, %rcx	# iftmp.295,
	movl	$0, %edx	#,
	movl	$.LC177, %esi	#,
	movl	$0, %edi	#,
	call	builtin_function_2	#
	.loc 1 2856 0 is_stmt 1 discriminator 3
	movl	$.LC178, %edi	#,
	call	get_identifier	#
	movq	%rax, global_trees+400(%rip)	# D.19799, global_trees
	.loc 1 2860 0 discriminator 3
	movq	$simple_type_promotes_to, lang_type_promotes_to(%rip)	#, lang_type_promotes_to
	.loc 1 2861 0 discriminator 3
	addq	$1480, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	c_common_nodes_and_builtins, .-c_common_nodes_and_builtins
	.globl	build_va_arg
	.type	build_va_arg, @function
build_va_arg:
.LFB47:
	.loc 1 2866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# expr, expr
	movq	%rsi, -16(%rbp)	# type, type
	.loc 1 2867 0
	movq	-8(%rbp), %rdx	# expr, tmp61
	movq	-16(%rbp), %rax	# type, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$133, %edi	#,
	call	build1	#
	.loc 1 2868 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	build_va_arg, .-build_va_arg
	.local	disabled_builtins
	.comm	disabled_builtins,8,8
	.section	.rodata
.LC179:
	.string	"__builtin_"
	.align 8
.LC180:
	.string	"cannot disable built-in function `%s'"
	.text
	.globl	disable_builtin_function
	.type	disable_builtin_function, @function
disable_builtin_function:
.LFB48:
	.loc 1 2888 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 2889 0
	movq	-24(%rbp), %rax	# name, tmp61
	movl	$10, %edx	#,
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	strncmp	#
	testl	%eax, %eax	# D.19931
	jne	.L655	#,
	.loc 1 2890 0
	movq	-24(%rbp), %rax	# name, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC180, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L654	#
.L655:
.LBB131:
	.loc 1 2893 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp63, new
	.loc 1 2894 0
	movq	-8(%rbp), %rax	# new, tmp64
	movq	-24(%rbp), %rdx	# name, tmp65
	movq	%rdx, (%rax)	# tmp65, new_3->name
	.loc 1 2895 0
	movq	disabled_builtins(%rip), %rdx	# disabled_builtins, disabled_builtins.297
	movq	-8(%rbp), %rax	# new, tmp66
	movq	%rdx, 8(%rax)	# disabled_builtins.297, new_3->next
	.loc 1 2896 0
	movq	-8(%rbp), %rax	# new, tmp67
	movq	%rax, disabled_builtins(%rip)	# tmp67, disabled_builtins
.L654:
.LBE131:
	.loc 1 2898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	disable_builtin_function, .-disable_builtin_function
	.type	builtin_function_disabled_p, @function
builtin_function_disabled_p:
.LFB49:
	.loc 1 2907 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 2909 0
	movq	disabled_builtins(%rip), %rax	# disabled_builtins, tmp63
	movq	%rax, -8(%rbp)	# tmp63, p
	jmp	.L658	#
.L661:
	.loc 1 2911 0
	movq	-8(%rbp), %rax	# p, tmp64
	movq	(%rax), %rdx	# p_1->name, D.19935
	movq	-24(%rbp), %rax	# name, tmp65
	movq	%rdx, %rsi	# D.19935,
	movq	%rax, %rdi	# tmp65,
	call	strcmp	#
	testl	%eax, %eax	# D.19936
	jne	.L659	#,
	.loc 1 2912 0
	movl	$1, %eax	#, D.19934
	jmp	.L660	#
.L659:
	.loc 1 2909 0
	movq	-8(%rbp), %rax	# p, tmp66
	movq	8(%rax), %rax	# p_1->next, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
.L658:
	.loc 1 2909 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L661	#,
	.loc 1 2914 0 is_stmt 1
	movl	$0, %eax	#, D.19934
.L660:
	.loc 1 2915 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	builtin_function_disabled_p, .-builtin_function_disabled_p
	.type	builtin_function_2, @function
builtin_function_2:
.LFB50:
	.loc 1 2945 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# builtin_name, builtin_name
	movq	%rsi, -32(%rbp)	# name, name
	movq	%rdx, -40(%rbp)	# builtin_type, builtin_type
	movq	%rcx, -48(%rbp)	# type, type
	movl	%r8d, -52(%rbp)	# function_code, function_code
	movl	%r9d, -56(%rbp)	# class, class
	.loc 1 2946 0
	movq	$0, -16(%rbp)	#, bdecl
	.loc 1 2947 0
	movq	$0, -8(%rbp)	#, decl
	.loc 1 2948 0
	cmpq	$0, -24(%rbp)	#, builtin_name
	je	.L663	#,
	.loc 1 2950 0
	cmpl	$0, 16(%rbp)	#, library_name_p
	je	.L664	#,
	.loc 1 2950 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# name, iftmp.298
	jmp	.L665	#
.L664:
	.loc 1 2950 0 discriminator 2
	movl	$0, %eax	#, iftmp.298
.L665:
	.loc 1 2950 0 discriminator 3
	movl	-56(%rbp), %ecx	# class, tmp67
	movl	-52(%rbp), %edx	# function_code, tmp68
	movq	-40(%rbp), %rsi	# builtin_type, tmp69
	movq	-24(%rbp), %rdi	# builtin_name, tmp70
	movq	%rax, %r8	# iftmp.298,
	call	builtin_function	#
	movq	%rax, -16(%rbp)	# tmp71, bdecl
	.loc 1 2952 0 is_stmt 1 discriminator 3
	cmpl	$0, 32(%rbp)	#, noreturn_p
	je	.L663	#,
	.loc 1 2954 0
	movq	-16(%rbp), %rax	# bdecl, tmp72
	movzbl	17(%rax), %edx	#, tmp75
	orl	$8, %edx	#, tmp76
	movb	%dl, 17(%rax)	# tmp76,
	.loc 1 2955 0
	movq	-16(%rbp), %rax	# bdecl, tmp77
	movzbl	17(%rax), %edx	#, tmp80
	orl	$1, %edx	#, tmp81
	movb	%dl, 17(%rax)	# tmp81,
.L663:
	.loc 1 2958 0
	cmpq	$0, -32(%rbp)	#, name
	je	.L666	#,
	.loc 1 2958 0 is_stmt 0 discriminator 1
	movl	flag_no_builtin(%rip), %eax	# flag_no_builtin, flag_no_builtin.299
	testl	%eax, %eax	# flag_no_builtin.299
	jne	.L666	#,
	movq	-32(%rbp), %rax	# name, tmp82
	movq	%rax, %rdi	# tmp82,
	call	builtin_function_disabled_p	#
	xorl	$1, %eax	#, D.19937
	testb	%al, %al	# D.19937
	je	.L666	#,
	.loc 1 2959 0 is_stmt 1
	cmpl	$0, 24(%rbp)	#, nonansi_p
	je	.L667	#,
	.loc 1 2959 0 is_stmt 0 discriminator 1
	movl	flag_no_nonansi_builtin(%rip), %eax	# flag_no_nonansi_builtin, flag_no_nonansi_builtin.300
	testl	%eax, %eax	# flag_no_nonansi_builtin.300
	jne	.L666	#,
.L667:
	.loc 1 2961 0 is_stmt 1
	movl	-56(%rbp), %ecx	# class, tmp83
	movl	-52(%rbp), %edx	# function_code, tmp84
	movq	-48(%rbp), %rsi	# type, tmp85
	movq	-32(%rbp), %rax	# name, tmp86
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp86,
	call	builtin_function	#
	movq	%rax, -8(%rbp)	# tmp87, decl
	.loc 1 2962 0
	cmpl	$0, 24(%rbp)	#, nonansi_p
	je	.L668	#,
	.loc 1 2963 0
	movq	-8(%rbp), %rax	# decl, tmp88
	movzbl	17(%rax), %edx	#, tmp91
	orl	$32, %edx	#, tmp92
	movb	%dl, 17(%rax)	# tmp92,
.L668:
	.loc 1 2964 0
	cmpl	$0, 32(%rbp)	#, noreturn_p
	je	.L666	#,
	.loc 1 2966 0
	movq	-8(%rbp), %rax	# decl, tmp93
	movzbl	17(%rax), %edx	#, tmp96
	orl	$8, %edx	#, tmp97
	movb	%dl, 17(%rax)	# tmp97,
	.loc 1 2967 0
	movq	-8(%rbp), %rax	# decl, tmp98
	movzbl	17(%rax), %edx	#, tmp101
	orl	$1, %edx	#, tmp102
	movb	%dl, 17(%rax)	# tmp102,
.L666:
	.loc 1 2970 0
	cmpq	$0, -16(%rbp)	#, bdecl
	je	.L669	#,
	.loc 1 2970 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# bdecl, iftmp.301
	jmp	.L670	#
.L669:
	.loc 1 2970 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, iftmp.301
.L670:
	.loc 1 2971 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	builtin_function_2, .-builtin_function_2
	.globl	c_promoting_integer_type_p
	.type	c_promoting_integer_type_p, @function
c_promoting_integer_type_p:
.LFB51:
	.loc 1 2979 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 2980 0
	movq	-8(%rbp), %rax	# t, tmp84
	movzbl	16(%rax), %eax	# t_3(D)->common.code, D.19940
	movzbl	%al, %eax	# D.19940, D.19941
	cmpl	$10, %eax	#, D.19941
	je	.L674	#,
	cmpl	$11, %eax	#, D.19941
	je	.L675	#,
	cmpl	$6, %eax	#, D.19941
	jne	.L681	#,
	.loc 1 2983 0
	movq	-8(%rbp), %rax	# t, tmp85
	movq	128(%rax), %rdx	# t_3(D)->type.main_variant, D.19942
	movq	integer_types(%rip), %rax	# integer_types, D.19942
	.loc 1 2988 0
	cmpq	%rax, %rdx	# D.19942, D.19942
	je	.L677	#,
	.loc 1 2984 0
	movq	-8(%rbp), %rax	# t, tmp86
	movq	128(%rax), %rdx	# t_3(D)->type.main_variant, D.19942
	movq	integer_types+8(%rip), %rax	# integer_types, D.19942
	cmpq	%rax, %rdx	# D.19942, D.19942
	je	.L677	#,
	.loc 1 2985 0
	movq	-8(%rbp), %rax	# t, tmp87
	movq	128(%rax), %rdx	# t_3(D)->type.main_variant, D.19942
	movq	integer_types+16(%rip), %rax	# integer_types, D.19942
	cmpq	%rax, %rdx	# D.19942, D.19942
	je	.L677	#,
	.loc 1 2986 0
	movq	-8(%rbp), %rax	# t, tmp88
	movq	128(%rax), %rdx	# t_3(D)->type.main_variant, D.19942
	movq	integer_types+24(%rip), %rax	# integer_types, D.19942
	cmpq	%rax, %rdx	# D.19942, D.19942
	je	.L677	#,
	.loc 1 2987 0
	movq	-8(%rbp), %rax	# t, tmp89
	movq	128(%rax), %rdx	# t_3(D)->type.main_variant, D.19942
	movq	integer_types+32(%rip), %rax	# integer_types, D.19942
	cmpq	%rax, %rdx	# D.19942, D.19942
	je	.L677	#,
	.loc 1 2988 0
	movq	-8(%rbp), %rax	# t, tmp90
	movzwl	60(%rax), %eax	# *t_3(D), tmp93
	andw	$511, %ax	#, D.19943
	movzwl	%ax, %edx	# D.19943, D.19944
	movq	integer_types+40(%rip), %rax	# integer_types, D.19942
	movzwl	60(%rax), %eax	# *_18, tmp96
	andw	$511, %ax	#, D.19943
	movzwl	%ax, %eax	# D.19943, D.19944
	cmpl	%eax, %edx	# D.19944, D.19944
	jge	.L678	#,
.L677:
	.loc 1 2988 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.302
	jmp	.L679	#
.L678:
	.loc 1 2988 0 discriminator 2
	movl	$0, %eax	#, iftmp.302
.L679:
	.loc 1 2983 0 is_stmt 1
	andl	$1, %eax	#, D.19939
	jmp	.L680	#
.L674:
	.loc 1 2994 0
	movq	-8(%rbp), %rax	# t, tmp97
	movzwl	60(%rax), %eax	# *t_3(D), tmp100
	andw	$511, %ax	#, D.19943
	movzwl	%ax, %edx	# D.19943, D.19944
	movq	integer_types+40(%rip), %rax	# integer_types, D.19942
	movzwl	60(%rax), %eax	# *_26, tmp103
	andw	$511, %ax	#, D.19943
	movzwl	%ax, %eax	# D.19943, D.19944
	cmpl	%eax, %edx	# D.19944, D.19944
	setl	%al	#, D.19939
	jmp	.L680	#
.L675:
	.loc 1 2997 0
	movl	$1, %eax	#, D.19939
	jmp	.L680	#
.L681:
	.loc 1 3000 0
	movl	$0, %eax	#, D.19939
.L680:
	.loc 1 3002 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	c_promoting_integer_type_p, .-c_promoting_integer_type_p
	.globl	simple_type_promotes_to
	.type	simple_type_promotes_to, @function
simple_type_promotes_to:
.LFB52:
	.loc 1 3014 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# type, type
	.loc 1 3015 0
	movq	-8(%rbp), %rax	# type, tmp70
	movq	128(%rax), %rdx	# type_2(D)->type.main_variant, D.19946
	movq	global_trees+192(%rip), %rax	# global_trees, D.19946
	cmpq	%rax, %rdx	# D.19946, D.19946
	jne	.L683	#,
	.loc 1 3016 0
	movq	global_trees+200(%rip), %rax	# global_trees, D.19945
	jmp	.L684	#
.L683:
	.loc 1 3018 0
	movq	-8(%rbp), %rax	# type, tmp71
	movq	%rax, %rdi	# tmp71,
	call	c_promoting_integer_type_p	#
	testb	%al, %al	# D.19947
	je	.L685	#,
	.loc 1 3022 0
	movq	-8(%rbp), %rax	# type, tmp72
	movzbl	17(%rax), %eax	# *type_2(D), D.19948
	andl	$32, %eax	#, D.19948
	testb	%al, %al	# D.19948
	je	.L686	#,
	.loc 1 3023 0
	movl	flag_traditional(%rip), %eax	# flag_traditional, flag_traditional.303
	testl	%eax, %eax	# flag_traditional.303
	jne	.L687	#,
	.loc 1 3024 0
	movq	-8(%rbp), %rax	# type, tmp73
	movzwl	60(%rax), %eax	# *type_2(D), tmp76
	andw	$511, %ax	#, D.19949
	movl	%eax, %edx	# D.19949, D.19949
	movq	integer_types+40(%rip), %rax	# integer_types, D.19946
	movzwl	60(%rax), %eax	# *_11, tmp79
	andw	$511, %ax	#, D.19949
	cmpw	%ax, %dx	# D.19949, D.19949
	jne	.L686	#,
.L687:
	.loc 1 3025 0
	movq	integer_types+48(%rip), %rax	# integer_types, D.19945
	jmp	.L684	#
.L686:
	.loc 1 3026 0
	movq	integer_types+40(%rip), %rax	# integer_types, D.19945
	jmp	.L684	#
.L685:
	.loc 1 3029 0
	movl	$0, %eax	#, D.19945
.L684:
	.loc 1 3030 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	simple_type_promotes_to, .-simple_type_promotes_to
	.globl	self_promoting_args_p
	.type	self_promoting_args_p, @function
self_promoting_args_p:
.LFB53:
	.loc 1 3038 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# parms, parms
	.loc 1 3040 0
	movq	-24(%rbp), %rax	# parms, tmp66
	movq	%rax, -16(%rbp)	# tmp66, t
	jmp	.L689	#
.L695:
.LBB132:
	.loc 1 3042 0
	movq	-16(%rbp), %rax	# t, tmp67
	movq	32(%rax), %rax	# t_1->list.value, tmp68
	movq	%rax, -8(%rbp)	# tmp68, type
	.loc 1 3044 0
	movq	-16(%rbp), %rax	# t, tmp69
	movq	(%rax), %rax	# t_1->common.chain, D.19951
	testq	%rax, %rax	# D.19951
	jne	.L690	#,
	.loc 1 3044 0 is_stmt 0 discriminator 1
	movq	global_trees+216(%rip), %rax	# global_trees, D.19951
	cmpq	-8(%rbp), %rax	# type, D.19951
	je	.L690	#,
	.loc 1 3045 0 is_stmt 1
	movl	$0, %eax	#, D.19950
	jmp	.L691	#
.L690:
	.loc 1 3047 0
	cmpq	$0, -8(%rbp)	#, type
	jne	.L692	#,
	.loc 1 3048 0
	movl	$0, %eax	#, D.19950
	jmp	.L691	#
.L692:
	.loc 1 3050 0
	movq	-8(%rbp), %rax	# type, tmp70
	movq	128(%rax), %rdx	# type_5->type.main_variant, D.19951
	movq	global_trees+192(%rip), %rax	# global_trees, D.19951
	cmpq	%rax, %rdx	# D.19951, D.19951
	jne	.L693	#,
	.loc 1 3051 0
	movl	$0, %eax	#, D.19950
	jmp	.L691	#
.L693:
	.loc 1 3053 0
	movq	-8(%rbp), %rax	# type, tmp71
	movq	%rax, %rdi	# tmp71,
	call	c_promoting_integer_type_p	#
	testb	%al, %al	# D.19952
	je	.L694	#,
	.loc 1 3054 0
	movl	$0, %eax	#, D.19950
	jmp	.L691	#
.L694:
.LBE132:
	.loc 1 3040 0
	movq	-16(%rbp), %rax	# t, tmp72
	movq	(%rax), %rax	# t_1->common.chain, tmp73
	movq	%rax, -16(%rbp)	# tmp73, t
.L689:
	.loc 1 3040 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	jne	.L695	#,
	.loc 1 3056 0 is_stmt 1
	movl	$1, %eax	#, D.19950
.L691:
	.loc 1 3057 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	self_promoting_args_p, .-self_promoting_args_p
	.globl	strip_array_types
	.type	strip_array_types, @function
strip_array_types:
.LFB54:
	.loc 1 3065 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# type, type
	.loc 1 3066 0
	jmp	.L697	#
.L698:
	.loc 1 3067 0
	movq	-8(%rbp), %rax	# type, tmp62
	movq	8(%rax), %rax	# type_1->common.type, tmp63
	movq	%rax, -8(%rbp)	# tmp63, type
.L697:
	.loc 1 3066 0 discriminator 1
	movq	-8(%rbp), %rax	# type, tmp64
	movzbl	16(%rax), %eax	# type_1->common.code, D.19953
	cmpb	$18, %al	#, D.19953
	je	.L698	#,
	.loc 1 3069 0
	movq	-8(%rbp), %rax	# type, D.19954
	.loc 1 3070 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	strip_array_types, .-strip_array_types
	.section	.rodata
	.align 8
.LC181:
	.string	"too few arguments to function `%s'"
	.align 8
.LC182:
	.string	"too many arguments to function `%s'"
	.text
	.globl	expand_tree_builtin
	.type	expand_tree_builtin, @function
expand_tree_builtin:
.LFB55:
	.loc 1 3083 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# function, function
	movq	%rsi, -48(%rbp)	# params, params
	movq	%rdx, -56(%rbp)	# coerced_params, coerced_params
	.loc 1 3086 0
	movq	-40(%rbp), %rax	# function, tmp76
	movzbl	51(%rax), %eax	# *function_4(D), D.19956
	andl	$96, %eax	#, D.19956
	cmpb	$96, %al	#, D.19956
	je	.L701	#,
	.loc 1 3087 0
	movl	$0, %eax	#, D.19955
	jmp	.L702	#
.L701:
	.loc 1 3089 0
	movq	-40(%rbp), %rax	# function, tmp77
	movl	56(%rax), %eax	# function_4(D)->decl.u1.f, D.19957
	cmpl	$81, %eax	#, D.19957
	ja	.L725	#,
	movl	%eax, %eax	# D.19957, tmp78
	movq	.L705(,%rax,8), %rax	#, tmp79
	jmp	*%rax	# tmp79
	.section	.rodata
	.align 8
	.align 4
.L705:
	.quad	.L725
	.quad	.L704
	.quad	.L704
	.quad	.L704
	.quad	.L704
	.quad	.L704
	.quad	.L704
	.quad	.L704
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L707
	.quad	.L707
	.quad	.L707
	.quad	.L708
	.quad	.L708
	.quad	.L708
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L725
	.quad	.L709
	.quad	.L710
	.quad	.L711
	.quad	.L712
	.quad	.L713
	.quad	.L714
	.text
.L704:
	.loc 1 3098 0
	cmpq	$0, -56(%rbp)	#, coerced_params
	jne	.L715	#,
	.loc 1 3099 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L715:
	.loc 1 3100 0
	movq	-56(%rbp), %rax	# coerced_params, tmp80
	movq	32(%rax), %rax	# coerced_params_9(D)->list.value, D.19958
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19958,
	movl	$80, %edi	#,
	call	build_unary_op	#
	jmp	.L702	#
.L706:
	.loc 1 3105 0
	cmpq	$0, -56(%rbp)	#, coerced_params
	jne	.L716	#,
	.loc 1 3106 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L716:
	.loc 1 3107 0
	movq	-56(%rbp), %rax	# coerced_params, tmp81
	movq	32(%rax), %rax	# coerced_params_9(D)->list.value, D.19958
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19958,
	movl	$126, %edi	#,
	call	build_unary_op	#
	jmp	.L702	#
.L707:
	.loc 1 3112 0
	cmpq	$0, -56(%rbp)	#, coerced_params
	jne	.L717	#,
	.loc 1 3113 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L717:
	.loc 1 3114 0
	movq	-56(%rbp), %rax	# coerced_params, tmp82
	movq	32(%rax), %rax	# coerced_params_9(D)->list.value, D.19958
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19958,
	movl	$127, %edi	#,
	call	build_unary_op	#
	jmp	.L702	#
.L708:
	.loc 1 3119 0
	cmpq	$0, -56(%rbp)	#, coerced_params
	jne	.L718	#,
	.loc 1 3120 0
	movq	global_trees+88(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L718:
	.loc 1 3121 0
	movq	-56(%rbp), %rax	# coerced_params, tmp83
	movq	32(%rax), %rax	# coerced_params_9(D)->list.value, D.19958
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.19958,
	movl	$128, %edi	#,
	call	build_unary_op	#
	jmp	.L702	#
.L709:
	.loc 1 3125 0
	movl	$106, -20(%rbp)	#, code
	.loc 1 3128 0
	jmp	.L719	#
.L710:
	.loc 1 3132 0
	movl	$105, -20(%rbp)	#, code
	.loc 1 3135 0
	jmp	.L719	#
.L711:
	.loc 1 3139 0
	movl	$108, -20(%rbp)	#, code
	.loc 1 3142 0
	jmp	.L719	#
.L712:
	.loc 1 3146 0
	movl	$107, -20(%rbp)	#, code
	.loc 1 3149 0
	jmp	.L719	#
.L713:
	.loc 1 3153 0
	movl	$109, -20(%rbp)	#, code
	.loc 1 3156 0
	jmp	.L719	#
.L714:
	.loc 1 3161 0
	movl	$103, -20(%rbp)	#, code
	.loc 1 3162 0
	nop
.L719:
.LBB133:
	.loc 1 3168 0
	cmpq	$0, -48(%rbp)	#, params
	je	.L720	#,
	.loc 1 3169 0
	movq	-48(%rbp), %rax	# params, tmp84
	movq	(%rax), %rax	# params_28(D)->common.chain, D.19958
	testq	%rax, %rax	# D.19958
	jne	.L721	#,
.L720:
	.loc 1 3172 0
	movq	-40(%rbp), %rax	# function, tmp85
	movq	72(%rax), %rax	# function_4(D)->decl.name, D.19958
	movq	32(%rax), %rax	# _41->identifier.id.str, D.19959
	.loc 1 3171 0
	movq	%rax, %rsi	# D.19959,
	movl	$.LC181, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3173 0
	movq	global_trees(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L721:
	.loc 1 3175 0
	movq	-48(%rbp), %rax	# params, tmp86
	movq	(%rax), %rax	# params_28(D)->common.chain, D.19958
	movq	(%rax), %rax	# _30->common.chain, D.19958
	testq	%rax, %rax	# D.19958
	je	.L722	#,
	.loc 1 3178 0
	movq	-40(%rbp), %rax	# function, tmp87
	movq	72(%rax), %rax	# function_4(D)->decl.name, D.19958
	movq	32(%rax), %rax	# _32->identifier.id.str, D.19959
	.loc 1 3177 0
	movq	%rax, %rsi	# D.19959,
	movl	$.LC182, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3179 0
	movq	global_trees(%rip), %rax	# global_trees, D.19955
	jmp	.L702	#
.L722:
	.loc 1 3182 0
	movq	-48(%rbp), %rax	# params, tmp88
	movq	32(%rax), %rax	# params_28(D)->list.value, tmp89
	movq	%rax, -16(%rbp)	# tmp89, arg0
	.loc 1 3183 0
	movq	-48(%rbp), %rax	# params, tmp90
	movq	(%rax), %rax	# params_28(D)->common.chain, D.19958
	movq	32(%rax), %rax	# _36->list.value, tmp91
	movq	%rax, -8(%rbp)	# tmp91, arg1
	.loc 1 3184 0
	movq	-8(%rbp), %rdx	# arg1, tmp92
	movq	-16(%rbp), %rsi	# arg0, tmp93
	movl	-20(%rbp), %eax	# code, tmp94
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp94,
	call	build_binary_op	#
	movq	%rax, -16(%rbp)	# tmp95, arg0
	.loc 1 3185 0
	cmpl	$103, -20(%rbp)	#, code
	je	.L723	#,
	.loc 1 3186 0
	movq	-16(%rbp), %rax	# arg0, tmp96
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp96,
	movl	$96, %edi	#,
	call	build_unary_op	#
	movq	%rax, -16(%rbp)	# tmp97, arg0
.L723:
	.loc 1 3187 0
	movq	-16(%rbp), %rax	# arg0, D.19955
	jmp	.L702	#
.L725:
.LBE133:
	.loc 1 3192 0
	nop
	.loc 1 3195 0
	movl	$0, %eax	#, D.19955
.L702:
	.loc 1 3196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	expand_tree_builtin, .-expand_tree_builtin
	.globl	statement_code_p
	.type	statement_code_p, @function
statement_code_p:
.LFB56:
	.loc 1 3203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 3204 0
	movl	-4(%rbp), %eax	# code, code
	cmpl	$152, %eax	#, code
	jb	.L727	#,
	cmpl	$168, %eax	#, code
	jbe	.L728	#,
	cmpl	$171, %eax	#, code
	jne	.L727	#,
.L728:
	.loc 1 3224 0
	movl	$1, %eax	#, D.19962
	jmp	.L729	#
.L727:
	.loc 1 3227 0
	movq	lang_statement_code_p(%rip), %rax	# lang_statement_code_p, lang_statement_code_p.304
	testq	%rax, %rax	# lang_statement_code_p.304
	je	.L730	#,
	.loc 1 3228 0
	movq	lang_statement_code_p(%rip), %rax	# lang_statement_code_p, lang_statement_code_p.305
	movl	-4(%rbp), %edx	# code, tmp64
	movl	%edx, %edi	# tmp64,
	call	*%rax	# lang_statement_code_p.305
	jmp	.L729	#
.L730:
	.loc 1 3229 0
	movl	$0, %eax	#, D.19962
.L729:
	.loc 1 3231 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	statement_code_p, .-statement_code_p
	.globl	walk_stmt_tree
	.type	walk_stmt_tree, @function
walk_stmt_tree:
.LFB57:
	.loc 1 3248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# tp, tp
	movq	%rsi, -48(%rbp)	# func, func
	movq	%rdx, -56(%rbp)	# data, data
	.loc 1 3264 0
	movq	-40(%rbp), %rax	# tp, tmp75
	movq	(%rax), %rax	# *tp_3(D), D.19964
	testq	%rax, %rax	# D.19964
	jne	.L732	#,
	.loc 1 3265 0
	movl	$0, %eax	#, D.19963
	jmp	.L741	#
.L732:
	.loc 1 3268 0
	movq	-40(%rbp), %rax	# tp, tmp76
	movq	(%rax), %rax	# *tp_3(D), D.19964
	movzbl	16(%rax), %eax	# _6->common.code, D.19965
	movzbl	%al, %eax	# D.19965, D.19966
	movl	%eax, %edi	# D.19966,
	call	statement_code_p	#
	testl	%eax, %eax	# D.19967
	jne	.L734	#,
	.loc 1 3269 0
	movl	$0, %eax	#, D.19963
	jmp	.L741	#
.L734:
	.loc 1 3272 0
	movl	$1, -24(%rbp)	#, walk_subtrees
	.loc 1 3273 0
	movq	-56(%rbp), %rdx	# data, tmp77
	leaq	-24(%rbp), %rsi	#, tmp78
	movq	-40(%rbp), %rcx	# tp, tmp79
	movq	-48(%rbp), %rax	# func, tmp80
	movq	%rcx, %rdi	# tmp79,
	call	*%rax	# tmp80
	movq	%rax, -8(%rbp)	# tmp81, result
	.loc 1 3276 0
	cmpq	$0, -8(%rbp)	#, result
	je	.L735	#,
	.loc 1 3277 0
	movq	-8(%rbp), %rax	# result, D.19963
	jmp	.L741	#
.L735:
	.loc 1 3281 0
	movq	-40(%rbp), %rax	# tp, tmp82
	movq	(%rax), %rax	# *tp_3(D), D.19964
	movzbl	16(%rax), %eax	# _15->common.code, D.19965
	movzbl	%al, %eax	# D.19965, tmp83
	movl	%eax, -16(%rbp)	# tmp83, code
	.loc 1 3282 0
	movl	-16(%rbp), %eax	# code, tmp84
	movl	%eax, %edi	# tmp84,
	call	statement_code_p	#
	testl	%eax, %eax	# D.19967
	jne	.L736	#,
	.loc 1 3283 0
	movl	$0, %eax	#, D.19963
	jmp	.L741	#
.L736:
	.loc 1 3287 0
	movl	-24(%rbp), %eax	# walk_subtrees, walk_subtrees.306
	testl	%eax, %eax	# walk_subtrees.306
	je	.L737	#,
	.loc 1 3291 0
	movl	-16(%rbp), %eax	# code, code.307
	cltq
	movl	tree_code_length(,%rax,4), %eax	# tree_code_length, tmp86
	movl	%eax, -12(%rbp)	# tmp86, len
	.loc 1 3295 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L738	#
.L740:
	.loc 1 3296 0
	movq	-40(%rbp), %rax	# tp, tmp87
	movq	(%rax), %rax	# *tp_3(D), D.19964
	movl	-20(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, tmp88
	addq	$4, %rdx	#, tmp90
	salq	$3, %rdx	#, tmp91
	leaq	(%rax,%rdx), %rcx	#, D.19968
	movq	-56(%rbp), %rdx	# data, tmp92
	movq	-48(%rbp), %rax	# func, tmp93
	movq	%rax, %rsi	# tmp93,
	movq	%rcx, %rdi	# D.19968,
	call	walk_stmt_tree	#
	movq	%rax, -8(%rbp)	# tmp94, result
	cmpq	$0, -8(%rbp)	#, result
	je	.L739	#,
	.loc 1 3296 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# result, D.19963
	jmp	.L741	#
.L739:
	.loc 1 3295 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
.L738:
	.loc 1 3295 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp95
	cmpl	-12(%rbp), %eax	# len, tmp95
	jl	.L740	#,
.L737:
	.loc 1 3301 0 is_stmt 1
	movq	-40(%rbp), %rax	# tp, tmp96
	movq	(%rax), %rax	# *tp_3(D), D.19964
	movq	-56(%rbp), %rdx	# data, tmp97
	movq	-48(%rbp), %rcx	# func, tmp98
	movq	%rcx, %rsi	# tmp98,
	movq	%rax, %rdi	# D.19968,
	call	walk_stmt_tree	#
.L741:
	.loc 1 3304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	walk_stmt_tree, .-walk_stmt_tree
	.globl	case_compare
	.type	case_compare, @function
case_compare:
.LFB58:
	.loc 1 3315 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# k1, k1
	movq	%rsi, -16(%rbp)	# k2, k2
	.loc 1 3318 0
	cmpq	$0, -8(%rbp)	#, k1
	jne	.L743	#,
	.loc 1 3319 0
	cmpq	$0, -16(%rbp)	#, k2
	je	.L744	#,
	.loc 1 3319 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.308
	jmp	.L745	#
.L744:
	.loc 1 3319 0 discriminator 2
	movl	$0, %eax	#, iftmp.308
.L745:
	.loc 1 3319 0 discriminator 3
	jmp	.L746	#
.L743:
	.loc 1 3320 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, k2
	jne	.L747	#,
	.loc 1 3321 0
	cmpq	$0, -8(%rbp)	#, k1
	setne	%al	#, D.19970
	movzbl	%al, %eax	# D.19970, D.19969
	jmp	.L746	#
.L747:
	.loc 1 3323 0
	movq	-16(%rbp), %rdx	# k2, k2.309
	movq	-8(%rbp), %rax	# k1, k1.310
	movq	%rdx, %rsi	# k2.309,
	movq	%rax, %rdi	# k1.310,
	call	tree_int_cst_compare	#
.L746:
	.loc 1 3324 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	case_compare, .-case_compare
	.section	.rodata
	.align 8
.LC183:
	.string	"pointers are not permitted as case values"
	.align 8
.LC184:
	.string	"ISO C++ forbids range expressions in switch statements"
	.align 8
.LC185:
	.string	"ISO C forbids range expressions in switch statements"
.LC186:
	.string	"empty range specified"
	.align 8
.LC187:
	.string	"duplicate (or overlapping) case value"
	.align 8
.LC188:
	.string	"this is the first entry overlapping that value"
.LC189:
	.string	"duplicate case value"
.LC190:
	.string	"previously used here"
	.align 8
.LC191:
	.string	"multiple default labels in one switch"
	.align 8
.LC192:
	.string	"this is the first default label"
	.text
	.globl	c_add_case_label
	.type	c_add_case_label, @function
c_add_case_label:
.LFB59:
	.loc 1 3341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# cases, cases
	movq	%rsi, -80(%rbp)	# cond, cond
	movq	%rdx, -88(%rbp)	# low_value, low_value
	movq	%rcx, -96(%rbp)	# high_value, high_value
	.loc 1 3348 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	build_decl	#
	movq	%rax, -48(%rbp)	# tmp103, label
	.loc 1 3349 0
	movq	current_function_decl(%rip), %rdx	# current_function_decl, current_function_decl.311
	movq	-48(%rbp), %rax	# label, tmp104
	movq	%rdx, 80(%rax)	# current_function_decl.311, label_6->decl.context
	.loc 1 3353 0
	cmpq	$0, -80(%rbp)	#, cond
	je	.L749	#,
	.loc 1 3353 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.19972
	cmpq	-80(%rbp), %rax	# cond, D.19972
	jne	.L750	#,
.L749:
	.loc 1 3357 0 is_stmt 1
	movq	-72(%rbp), %rax	# cases, tmp105
	movq	(%rax), %rax	# cases_35(D)->root, D.19976
	testq	%rax, %rax	# D.19976
	jne	.L751	#,
	.loc 1 3358 0
	movq	-48(%rbp), %rax	# label, tmp106
	movq	%rax, %rdx	# tmp106,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_case_label	#
	movq	%rax, %rdi	# D.19972,
	call	add_stmt	#
.L751:
	.loc 1 3359 0
	movq	global_trees(%rip), %rax	# global_trees, D.19971
	jmp	.L752	#
.L750:
	.loc 1 3362 0
	cmpq	$0, -88(%rbp)	#, low_value
	je	.L753	#,
	.loc 1 3362 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# low_value, tmp107
	movq	8(%rax), %rax	# low_value_10(D)->common.type, D.19972
	testq	%rax, %rax	# D.19972
	je	.L753	#,
	.loc 1 3363 0 is_stmt 1
	movq	-88(%rbp), %rax	# low_value, tmp108
	movq	8(%rax), %rax	# low_value_10(D)->common.type, D.19972
	movzbl	16(%rax), %eax	# _12->common.code, D.19973
	cmpb	$13, %al	#, D.19973
	je	.L754	#,
	.loc 1 3363 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# low_value, tmp109
	movq	8(%rax), %rax	# low_value_10(D)->common.type, D.19972
	movzbl	16(%rax), %eax	# _14->common.code, D.19973
	cmpb	$15, %al	#, D.19973
	je	.L754	#,
.L753:
	.loc 1 3364 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L755	#,
	.loc 1 3364 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# high_value, tmp110
	movq	8(%rax), %rax	# high_value_16(D)->common.type, D.19972
	testq	%rax, %rax	# D.19972
	je	.L755	#,
	.loc 1 3365 0 is_stmt 1
	movq	-96(%rbp), %rax	# high_value, tmp111
	movq	8(%rax), %rax	# high_value_16(D)->common.type, D.19972
	movzbl	16(%rax), %eax	# _18->common.code, D.19973
	cmpb	$13, %al	#, D.19973
	je	.L754	#,
	.loc 1 3365 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# high_value, tmp112
	movq	8(%rax), %rax	# high_value_16(D)->common.type, D.19972
	movzbl	16(%rax), %eax	# _20->common.code, D.19973
	cmpb	$15, %al	#, D.19973
	jne	.L755	#,
.L754:
	.loc 1 3366 0 is_stmt 1
	movl	$.LC183, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L755:
	.loc 1 3369 0
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L756	#,
	.loc 1 3369 0 is_stmt 0 discriminator 1
	movl	pedantic(%rip), %eax	# pedantic, pedantic.312
	testl	%eax, %eax	# pedantic.312
	je	.L756	#,
	.loc 1 3371 0 is_stmt 1
	movl	c_language(%rip), %eax	# c_language, c_language.313
	cmpl	$1, %eax	#, c_language.313
	jne	.L757	#,
	.loc 1 3372 0
	movl	$.LC184, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L756	#
.L757:
	.loc 1 3374 0
	movl	$.LC185, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L756:
	.loc 1 3377 0
	movq	-80(%rbp), %rax	# cond, tmp113
	movq	8(%rax), %rax	# cond_8(D)->common.type, tmp114
	movq	%rax, -40(%rbp)	# tmp114, type
	.loc 1 3378 0
	cmpq	$0, -88(%rbp)	#, low_value
	je	.L758	#,
	.loc 1 3380 0
	movq	-88(%rbp), %rax	# low_value, tmp115
	movq	%rax, %rdi	# tmp115,
	call	check_case_value	#
	movq	%rax, -88(%rbp)	# tmp116, low_value
	.loc 1 3381 0
	movq	-88(%rbp), %rdx	# low_value, tmp117
	movq	-40(%rbp), %rax	# type, tmp118
	movq	%rdx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	convert_and_check	#
	movq	%rax, -88(%rbp)	# tmp119, low_value
.L758:
	.loc 1 3383 0
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L759	#,
	.loc 1 3385 0
	movq	-96(%rbp), %rax	# high_value, tmp120
	movq	%rax, %rdi	# tmp120,
	call	check_case_value	#
	movq	%rax, -96(%rbp)	# tmp121, high_value
	.loc 1 3386 0
	movq	-96(%rbp), %rdx	# high_value, tmp122
	movq	-40(%rbp), %rax	# type, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	convert_and_check	#
	movq	%rax, -96(%rbp)	# tmp124, high_value
.L759:
	.loc 1 3390 0
	movq	global_trees(%rip), %rax	# global_trees, D.19972
	cmpq	-88(%rbp), %rax	# low_value, D.19972
	je	.L760	#,
	.loc 1 3390 0 is_stmt 0 discriminator 1
	movq	global_trees(%rip), %rax	# global_trees, D.19972
	cmpq	-96(%rbp), %rax	# high_value, D.19972
	jne	.L761	#,
.L760:
	.loc 1 3392 0 is_stmt 1
	movq	-72(%rbp), %rax	# cases, tmp125
	movq	(%rax), %rax	# cases_35(D)->root, D.19976
	testq	%rax, %rax	# D.19976
	jne	.L762	#,
	.loc 1 3393 0
	movq	-48(%rbp), %rax	# label, tmp126
	movq	%rax, %rdx	# tmp126,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_case_label	#
	movq	%rax, %rdi	# D.19972,
	call	add_stmt	#
.L762:
	.loc 1 3394 0
	movq	global_trees(%rip), %rax	# global_trees, D.19971
	jmp	.L752	#
.L761:
	.loc 1 3400 0
	movq	-96(%rbp), %rdx	# high_value, tmp127
	movq	-88(%rbp), %rax	# low_value, tmp128
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.19974
	je	.L763	#,
	.loc 1 3401 0
	movq	$0, -96(%rbp)	#, high_value
.L763:
	.loc 1 3402 0
	cmpq	$0, -88(%rbp)	#, low_value
	je	.L764	#,
	.loc 1 3402 0 is_stmt 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L764	#,
	.loc 1 3403 0 is_stmt 1
	movq	-96(%rbp), %rdx	# high_value, tmp129
	movq	-88(%rbp), %rax	# low_value, tmp130
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.19974
	jne	.L764	#,
	.loc 1 3404 0
	movl	$.LC186, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L764:
	.loc 1 3408 0
	movq	-88(%rbp), %rdx	# low_value, low_value.314
	movq	-72(%rbp), %rax	# cases, tmp131
	movq	%rdx, %rsi	# low_value.314,
	movq	%rax, %rdi	# tmp131,
	call	splay_tree_lookup	#
	movq	%rax, -56(%rbp)	# tmp132, node
	.loc 1 3412 0
	cmpq	$0, -56(%rbp)	#, node
	jne	.L765	#,
	.loc 1 3412 0 is_stmt 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, low_value
	jne	.L766	#,
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L765	#,
.L766:
.LBB134:
	.loc 1 3424 0 is_stmt 1
	movq	-88(%rbp), %rdx	# low_value, low_value.315
	movq	-72(%rbp), %rax	# cases, tmp133
	movq	%rdx, %rsi	# low_value.315,
	movq	%rax, %rdi	# tmp133,
	call	splay_tree_predecessor	#
	movq	%rax, -32(%rbp)	# tmp134, low_bound
	.loc 1 3426 0
	movq	-88(%rbp), %rdx	# low_value, low_value.316
	movq	-72(%rbp), %rax	# cases, tmp135
	movq	%rdx, %rsi	# low_value.316,
	movq	%rax, %rdi	# tmp135,
	call	splay_tree_successor	#
	movq	%rax, -24(%rbp)	# tmp136, high_bound
	.loc 1 3432 0
	cmpq	$0, -32(%rbp)	#, low_bound
	je	.L767	#,
	.loc 1 3433 0
	movq	-32(%rbp), %rax	# low_bound, tmp137
	movq	8(%rax), %rax	# low_bound_38->value, D.19975
	movq	40(%rax), %rax	# _42->exp.operands, D.19972
	testq	%rax, %rax	# D.19972
	je	.L767	#,
	.loc 1 3434 0
	movq	-32(%rbp), %rax	# low_bound, tmp138
	movq	8(%rax), %rax	# low_bound_38->value, D.19975
	movq	40(%rax), %rax	# _45->exp.operands, D.19972
	movq	-88(%rbp), %rdx	# low_value, tmp139
	movq	%rdx, %rsi	# tmp139,
	movq	%rax, %rdi	# D.19972,
	call	tree_int_cst_compare	#
	testl	%eax, %eax	# D.19974
	js	.L767	#,
	.loc 1 3436 0
	movq	-32(%rbp), %rax	# low_bound, tmp140
	movq	%rax, -56(%rbp)	# tmp140, node
	jmp	.L765	#
.L767:
	.loc 1 3441 0
	cmpq	$0, -24(%rbp)	#, high_bound
	je	.L765	#,
	.loc 1 3442 0
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L765	#,
	.loc 1 3443 0
	movq	-24(%rbp), %rax	# high_bound, tmp141
	movq	(%rax), %rax	# high_bound_40->key, D.19975
	movq	-96(%rbp), %rdx	# high_value, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# D.19972,
	call	tree_int_cst_compare	#
	testl	%eax, %eax	# D.19974
	jg	.L765	#,
	.loc 1 3446 0
	movq	-24(%rbp), %rax	# high_bound, tmp143
	movq	%rax, -56(%rbp)	# tmp143, node
.L765:
.LBE134:
	.loc 1 3449 0
	cmpq	$0, -56(%rbp)	#, node
	je	.L768	#,
.LBB135:
	.loc 1 3451 0
	movq	-56(%rbp), %rax	# node, tmp144
	movq	8(%rax), %rax	# node_4->value, D.19975
	movq	48(%rax), %rax	# _54->exp.operands, tmp145
	movq	%rax, -16(%rbp)	# tmp145, duplicate
	.loc 1 3453 0
	cmpq	$0, -96(%rbp)	#, high_value
	je	.L769	#,
	.loc 1 3455 0
	movl	$.LC187, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3456 0
	movq	-16(%rbp), %rax	# duplicate, tmp146
	movl	$.LC188, %esi	#,
	movq	%rax, %rdi	# tmp146,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L770	#
.L769:
	.loc 1 3459 0
	cmpq	$0, -88(%rbp)	#, low_value
	je	.L771	#,
	.loc 1 3461 0
	movl	$.LC189, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3462 0
	movq	-16(%rbp), %rax	# duplicate, tmp147
	movl	$.LC190, %esi	#,
	movq	%rax, %rdi	# tmp147,
	movl	$0, %eax	#,
	call	error_with_decl	#
	jmp	.L770	#
.L771:
	.loc 1 3466 0
	movl	$.LC191, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 3467 0
	movq	-16(%rbp), %rax	# duplicate, tmp148
	movl	$.LC192, %esi	#,
	movq	%rax, %rdi	# tmp148,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L770:
	.loc 1 3469 0
	movq	-72(%rbp), %rax	# cases, tmp149
	movq	(%rax), %rax	# cases_35(D)->root, D.19976
	testq	%rax, %rax	# D.19976
	jne	.L768	#,
	.loc 1 3470 0
	movq	-48(%rbp), %rax	# label, tmp150
	movq	%rax, %rdx	# tmp150,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_case_label	#
	movq	%rax, %rdi	# D.19972,
	call	add_stmt	#
.L768:
.LBE135:
	.loc 1 3474 0
	movq	-48(%rbp), %rdx	# label, tmp151
	movq	-96(%rbp), %rcx	# high_value, tmp152
	movq	-88(%rbp), %rax	# low_value, tmp153
	movq	%rcx, %rsi	# tmp152,
	movq	%rax, %rdi	# tmp153,
	call	build_case_label	#
	movq	%rax, %rdi	# D.19972,
	call	add_stmt	#
	movq	%rax, -8(%rbp)	# tmp154, case_label
	.loc 1 3476 0
	movq	-8(%rbp), %rdx	# case_label, case_label.317
	movq	-88(%rbp), %rcx	# low_value, low_value.318
	movq	-72(%rbp), %rax	# cases, tmp155
	movq	%rcx, %rsi	# low_value.318,
	movq	%rax, %rdi	# tmp155,
	call	splay_tree_insert	#
	.loc 1 3480 0
	movq	-8(%rbp), %rax	# case_label, D.19971
.L752:
	.loc 1 3481 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	c_add_case_label, .-c_add_case_label
	.section	.rodata
	.align 8
.LC193:
	.string	"ISO C++ forbids taking the address of a label"
	.align 8
.LC194:
	.string	"ISO C forbids taking the address of a label"
	.text
	.globl	finish_label_address_expr
	.type	finish_label_address_expr, @function
finish_label_address_expr:
.LFB60:
	.loc 1 3489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# label, label
	.loc 1 3492 0
	movl	pedantic(%rip), %eax	# pedantic, pedantic.319
	testl	%eax, %eax	# pedantic.319
	je	.L773	#,
	.loc 1 3494 0
	movl	c_language(%rip), %eax	# c_language, c_language.320
	cmpl	$1, %eax	#, c_language.320
	jne	.L774	#,
	.loc 1 3495 0
	movl	$.LC193, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
	jmp	.L773	#
.L774:
	.loc 1 3497 0
	movl	$.LC194, %edi	#,
	movl	$0, %eax	#,
	call	pedwarn	#
.L773:
	.loc 1 3500 0
	movq	-24(%rbp), %rax	# label, tmp64
	movq	%rax, %rdi	# tmp64,
	call	lookup_label	#
	movq	%rax, -24(%rbp)	# tmp65, label
	.loc 1 3501 0
	cmpq	$0, -24(%rbp)	#, label
	jne	.L775	#,
	.loc 1 3502 0
	movq	global_trees+112(%rip), %rax	# global_trees, tmp66
	movq	%rax, -8(%rbp)	# tmp66, result
	jmp	.L776	#
.L775:
	.loc 1 3505 0
	movq	-24(%rbp), %rax	# label, tmp67
	movzbl	18(%rax), %edx	#, tmp70
	orl	$1, %edx	#, tmp71
	movb	%dl, 18(%rax)	# tmp71,
	.loc 1 3506 0
	movq	global_trees+224(%rip), %rax	# global_trees, D.19987
	movq	-24(%rbp), %rdx	# label, tmp72
	movq	%rax, %rsi	# D.19987,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, -8(%rbp)	# tmp73, result
	.loc 1 3507 0
	movq	-8(%rbp), %rax	# result, tmp74
	movzbl	17(%rax), %edx	#, tmp77
	orl	$2, %edx	#, tmp78
	movb	%dl, 17(%rax)	# tmp78,
.L776:
	.loc 1 3513 0
	movq	-8(%rbp), %rax	# result, D.19988
	.loc 1 3514 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	finish_label_address_expr, .-finish_label_address_expr
	.globl	mark_stmt_tree
	.type	mark_stmt_tree, @function
mark_stmt_tree:
.LFB61:
	.loc 1 3523 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 3524 0
	movq	-40(%rbp), %rax	# p, tmp87
	movq	%rax, -24(%rbp)	# tmp87, st
.LBB136:
	.loc 1 3526 0
	movq	-24(%rbp), %rax	# st, tmp88
	movq	(%rax), %rax	# st_2->x_last_stmt, tmp89
	movq	%rax, -16(%rbp)	# tmp89, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L779	#,
	.loc 1 3526 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp90
	movq	%rax, %rdi	# tmp90,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19991
	jne	.L779	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.321
	movq	8(%rax), %rdx	# ggc_pending_trees.321_5->elements_used, D.19992
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.322
	movq	(%rax), %rax	# ggc_pending_trees.322_7->num_elements, D.19992
	cmpq	%rax, %rdx	# D.19992, D.19992
	jb	.L780	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.323
	movq	(%rax), %rax	# ggc_pending_trees.323_9->num_elements, D.19992
	leaq	(%rax,%rax), %rdx	#, D.19992
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.324
	movq	%rdx, %rsi	# D.19992,
	movq	%rax, %rdi	# ggc_pending_trees.324,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.325, ggc_pending_trees
.L780:
	.loc 1 3526 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.326
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.327
	movq	8(%rax), %rdx	# ggc_pending_trees.327_15->elements_used, D.19992
	leaq	1(%rdx), %rsi	#, D.19992
	movq	%rsi, 8(%rax)	# D.19992, ggc_pending_trees.327_15->elements_used
	addq	$4, %rdx	#, tmp91
	movq	-16(%rbp), %rax	# t__, tmp92
	movq	%rax, (%rcx,%rdx,8)	# tmp92, ggc_pending_trees.326_14->data.tree
.L779:
.LBE136:
.LBB137:
	.loc 1 3527 0 is_stmt 1
	movq	-24(%rbp), %rax	# st, tmp93
	movq	8(%rax), %rax	# st_2->x_last_expr_type, tmp94
	movq	%rax, -8(%rbp)	# tmp94, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L778	#,
	.loc 1 3527 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp95
	movq	%rax, %rdi	# tmp95,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19991
	jne	.L778	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.328
	movq	8(%rax), %rdx	# ggc_pending_trees.328_21->elements_used, D.19992
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.329
	movq	(%rax), %rax	# ggc_pending_trees.329_23->num_elements, D.19992
	cmpq	%rax, %rdx	# D.19992, D.19992
	jb	.L782	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.330
	movq	(%rax), %rax	# ggc_pending_trees.330_25->num_elements, D.19992
	leaq	(%rax,%rax), %rdx	#, D.19992
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.331
	movq	%rdx, %rsi	# D.19992,
	movq	%rax, %rdi	# ggc_pending_trees.331,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.332, ggc_pending_trees
.L782:
	.loc 1 3527 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.333
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.334
	movq	8(%rax), %rdx	# ggc_pending_trees.334_31->elements_used, D.19992
	leaq	1(%rdx), %rsi	#, D.19992
	movq	%rsi, 8(%rax)	# D.19992, ggc_pending_trees.334_31->elements_used
	addq	$4, %rdx	#, tmp96
	movq	-8(%rbp), %rax	# t__, tmp97
	movq	%rax, (%rcx,%rdx,8)	# tmp97, ggc_pending_trees.333_30->data.tree
.L778:
.LBE137:
	.loc 1 3528 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	mark_stmt_tree, .-mark_stmt_tree
	.globl	c_mark_lang_decl
	.type	c_mark_lang_decl, @function
c_mark_lang_decl:
.LFB62:
	.loc 1 3535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 3536 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	c_mark_lang_decl, .-c_mark_lang_decl
	.globl	mark_c_language_function
	.type	mark_c_language_function, @function
mark_c_language_function:
.LFB63:
	.loc 1 3543 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	.loc 1 3544 0
	cmpq	$0, -24(%rbp)	#, f
	jne	.L785	#,
	.loc 1 3545 0
	jmp	.L784	#
.L785:
	.loc 1 3547 0
	movq	-24(%rbp), %rax	# f, D.19993
	movq	%rax, %rdi	# D.19993,
	call	mark_stmt_tree	#
.LBB138:
	.loc 1 3548 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	32(%rax), %rax	# f_1(D)->x_scope_stmt_stack, tmp75
	movq	%rax, -8(%rbp)	# tmp75, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L784	#,
	.loc 1 3548 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp76
	movq	%rax, %rdi	# tmp76,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.19994
	jne	.L784	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.335
	movq	8(%rax), %rdx	# ggc_pending_trees.335_5->elements_used, D.19995
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.336
	movq	(%rax), %rax	# ggc_pending_trees.336_7->num_elements, D.19995
	cmpq	%rax, %rdx	# D.19995, D.19995
	jb	.L787	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.337
	movq	(%rax), %rax	# ggc_pending_trees.337_9->num_elements, D.19995
	leaq	(%rax,%rax), %rdx	#, D.19995
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.338
	movq	%rdx, %rsi	# D.19995,
	movq	%rax, %rdi	# ggc_pending_trees.338,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.339, ggc_pending_trees
.L787:
	.loc 1 3548 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.340
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.341
	movq	8(%rax), %rdx	# ggc_pending_trees.341_15->elements_used, D.19995
	leaq	1(%rdx), %rsi	#, D.19995
	movq	%rsi, 8(%rax)	# D.19995, ggc_pending_trees.341_15->elements_used
	addq	$4, %rdx	#, tmp77
	movq	-8(%rbp), %rax	# t__, tmp78
	movq	%rax, (%rcx,%rdx,8)	# tmp78, ggc_pending_trees.340_14->data.tree
.L784:
.LBE138:
	.loc 1 3549 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	mark_c_language_function, .-mark_c_language_function
	.section	.rodata
.LC195:
	.string	"c-common.c"
	.text
	.globl	c_expand_expr
	.type	c_expand_expr, @function
c_expand_expr:
.LFB64:
	.loc 1 3559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# target, target
	movl	%edx, -68(%rbp)	# tmode, tmode
	movl	%ecx, -72(%rbp)	# modifier, modifier
	.loc 1 3560 0
	movq	-56(%rbp), %rax	# exp, tmp96
	movzbl	16(%rax), %eax	# exp_6(D)->common.code, D.19997
	movzbl	%al, %eax	# D.19997, D.19998
	cmpl	$169, %eax	#, D.19998
	je	.L790	#,
	cmpl	$170, %eax	#, D.19998
	je	.L791	#,
	cmpl	$53, %eax	#, D.19998
	je	.L792	#,
	jmp	.L801	#
.L790:
.LBB139:
	.loc 1 3566 0
	movb	$0, -41(%rbp)	#, preserve_result
	.loc 1 3573 0
	call	push_temp_slots	#
	.loc 1 3574 0
	movq	-56(%rbp), %rax	# exp, tmp97
	movzbl	19(%rax), %eax	# *exp_6(D), D.19997
	andl	$1, %eax	#, D.19997
	testb	%al, %al	# D.19997
	sete	%al	#, D.19999
	movzbl	%al, %eax	# D.19999, D.20000
	movl	%eax, %edi	# D.20000,
	call	expand_start_stmt_expr	#
	movq	%rax, -16(%rbp)	# tmp98, rtl_expr
	.loc 1 3578 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.20001
	cmpq	-64(%rbp), %rax	# target, D.20001
	je	.L793	#,
	.loc 1 3579 0
	movq	-56(%rbp), %rax	# exp, tmp99
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movzbl	16(%rax), %eax	# _17->common.code, D.19997
	cmpb	$-103, %al	#, D.19997
	jne	.L793	#,
	.loc 1 3580 0
	movq	-56(%rbp), %rax	# exp, tmp100
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _19->exp.operands, D.20002
	movzbl	16(%rax), %eax	# _20->common.code, D.19997
	cmpb	$-90, %al	#, D.19997
	jne	.L793	#,
.LBB140:
	.loc 1 3582 0
	movq	-56(%rbp), %rax	# exp, tmp101
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _22->exp.operands, tmp102
	movq	%rax, -32(%rbp)	# tmp102, expr
	.loc 1 3583 0
	movq	-32(%rbp), %rax	# expr, tmp103
	movq	(%rax), %rax	# expr_23->common.chain, tmp104
	movq	%rax, -24(%rbp)	# tmp104, last
	.loc 1 3585 0
	jmp	.L794	#
.L795:
	.loc 1 3587 0
	movq	-24(%rbp), %rax	# last, tmp105
	movq	%rax, -32(%rbp)	# tmp105, expr
	.loc 1 3588 0
	movq	-24(%rbp), %rax	# last, tmp106
	movq	(%rax), %rax	# last_4->common.chain, tmp107
	movq	%rax, -24(%rbp)	# tmp107, last
.L794:
	.loc 1 3585 0 discriminator 1
	movq	-24(%rbp), %rax	# last, tmp108
	movq	(%rax), %rax	# last_4->common.chain, D.20002
	testq	%rax, %rax	# D.20002
	jne	.L795	#,
	.loc 1 3591 0
	movq	-24(%rbp), %rax	# last, tmp109
	movzbl	16(%rax), %eax	# last_4->common.code, D.19997
	cmpb	$-90, %al	#, D.19997
	jne	.L793	#,
	.loc 1 3592 0
	movq	-32(%rbp), %rax	# expr, tmp110
	movzbl	16(%rax), %eax	# expr_3->common.code, D.19997
	cmpb	$-104, %al	#, D.19997
	jne	.L793	#,
	.loc 1 3594 0
	movq	-32(%rbp), %rax	# expr, tmp111
	movzbl	17(%rax), %edx	#, tmp114
	orl	$4, %edx	#, tmp115
	movb	%dl, 17(%rax)	# tmp115,
	.loc 1 3595 0
	movb	$1, -41(%rbp)	#, preserve_result
.L793:
.LBE140:
	.loc 1 3599 0
	movq	-56(%rbp), %rax	# exp, tmp116
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	%rax, %rdi	# D.20002,
	call	expand_stmt	#
	.loc 1 3600 0
	movq	-16(%rbp), %rax	# rtl_expr, tmp117
	movq	%rax, %rdi	# tmp117,
	call	expand_end_stmt_expr	#
	.loc 1 3602 0
	movl	-72(%rbp), %ecx	# modifier, tmp118
	movl	-68(%rbp), %edx	# tmode, tmp119
	movq	-64(%rbp), %rsi	# target, tmp120
	movq	-16(%rbp), %rax	# rtl_expr, tmp121
	movq	%rax, %rdi	# tmp121,
	call	expand_expr	#
	movq	%rax, -40(%rbp)	# tmp122, result
	.loc 1 3603 0
	cmpb	$0, -41(%rbp)	#, preserve_result
	je	.L796	#,
	.loc 1 3603 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# result, tmp123
	movzwl	(%rax), %eax	# result_34->code, D.20003
	cmpw	$66, %ax	#, D.20003
	jne	.L796	#,
	.loc 1 3605 0 is_stmt 1
	movq	-40(%rbp), %rax	# result, tmp124
	movzbl	2(%rax), %eax	# result_34->mode, D.19997
	cmpb	$51, %al	#, D.19997
	je	.L797	#,
	.loc 1 3606 0
	movq	-40(%rbp), %rax	# result, tmp125
	movq	%rax, %rdi	# tmp125,
	call	copy_to_reg	#
	movq	%rax, -40(%rbp)	# tmp126, result
	jmp	.L796	#
.L797:
	.loc 1 3608 0
	movq	-40(%rbp), %rax	# result, tmp127
	movq	%rax, %rdi	# tmp127,
	call	preserve_temp_slots	#
.L796:
	.loc 1 3614 0
	movq	-56(%rbp), %rax	# exp, tmp128
	movzbl	19(%rax), %eax	# *exp_6(D), D.19997
	andl	$1, %eax	#, D.19997
	testb	%al, %al	# D.19997
	je	.L798	#,
	.loc 1 3615 0
	movl	$0, %edi	#,
	call	preserve_temp_slots	#
.L798:
	.loc 1 3617 0
	call	pop_temp_slots	#
	.loc 1 3618 0
	movq	-40(%rbp), %rax	# result, D.19996
	jmp	.L799	#
.L792:
.LBE139:
	.loc 1 3624 0
	movq	-56(%rbp), %rax	# exp, tmp129
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movzbl	16(%rax), %eax	# _41->common.code, D.19997
	cmpb	$121, %al	#, D.19997
	jne	.L800	#,
	.loc 1 3625 0
	movq	-56(%rbp), %rax	# exp, tmp130
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _43->exp.operands, D.20002
	movzbl	16(%rax), %eax	# _44->common.code, D.19997
	cmpb	$30, %al	#, D.19997
	jne	.L800	#,
	.loc 1 3627 0
	movq	-56(%rbp), %rax	# exp, tmp131
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _46->exp.operands, D.20002
	movzbl	51(%rax), %eax	# *_47, D.19997
	andl	$96, %eax	#, D.19997
	testb	%al, %al	# D.19997
	je	.L800	#,
	.loc 1 3628 0
	movq	-56(%rbp), %rax	# exp, tmp132
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _50->exp.operands, D.20002
	.loc 1 3629 0
	movzbl	51(%rax), %eax	# *_51, D.19997
	andl	$96, %eax	#, D.19997
	.loc 1 3628 0
	cmpb	$32, %al	#, D.19997
	jne	.L800	#,
	.loc 1 3630 0
	movl	-72(%rbp), %ecx	# modifier, tmp133
	movl	-68(%rbp), %edx	# tmode, tmp134
	movq	-64(%rbp), %rsi	# target, tmp135
	movq	-56(%rbp), %rax	# exp, tmp136
	movq	%rax, %rdi	# tmp136,
	call	c_expand_builtin	#
	jmp	.L799	#
.L800:
	.loc 1 3632 0
	movl	$__FUNCTION__.14395, %edx	#,
	movl	$3632, %esi	#,
	movl	$.LC195, %edi	#,
	call	fancy_abort	#
.L791:
.LBB141:
	.loc 1 3640 0
	movq	-56(%rbp), %rax	# exp, tmp137
	movq	32(%rax), %rax	# exp_6(D)->exp.operands, D.20002
	movq	32(%rax), %rax	# _55->exp.operands, tmp138
	movq	%rax, -8(%rbp)	# tmp138, decl
	.loc 1 3641 0
	movq	-8(%rbp), %rax	# decl, tmp139
	movq	%rax, %rdi	# tmp139,
	call	emit_local_var	#
	.loc 1 3642 0
	movl	-72(%rbp), %ecx	# modifier, tmp140
	movl	-68(%rbp), %edx	# tmode, tmp141
	movq	-64(%rbp), %rsi	# target, tmp142
	movq	-8(%rbp), %rax	# decl, tmp143
	movq	%rax, %rdi	# tmp143,
	call	expand_expr	#
	jmp	.L799	#
.L801:
.LBE141:
	.loc 1 3646 0
	movl	$__FUNCTION__.14395, %edx	#,
	movl	$3646, %esi	#,
	movl	$.LC195, %edi	#,
	call	fancy_abort	#
.L799:
	.loc 1 3651 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	c_expand_expr, .-c_expand_expr
	.globl	c_safe_from_p
	.type	c_safe_from_p, @function
c_safe_from_p:
.LFB65:
	.loc 1 3659 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# exp, exp
	.loc 1 3663 0
	movq	-32(%rbp), %rax	# exp, tmp71
	movzbl	16(%rax), %eax	# exp_2(D)->common.code, D.20006
	cmpb	$-102, %al	#, D.20006
	jne	.L803	#,
.LBB142:
	.loc 1 3665 0
	movq	-32(%rbp), %rax	# exp, tmp72
	movq	32(%rax), %rax	# exp_2(D)->exp.operands, tmp73
	movq	%rax, -8(%rbp)	# tmp73, decl
	.loc 1 3667 0
	movq	-8(%rbp), %rax	# decl, tmp74
	movzbl	16(%rax), %eax	# decl_4->common.code, D.20006
	cmpb	$34, %al	#, D.20006
	jne	.L803	#,
	.loc 1 3668 0
	movq	-8(%rbp), %rax	# decl, tmp75
	movq	104(%rax), %rax	# decl_4->decl.initial, D.20007
	testq	%rax, %rax	# D.20007
	je	.L803	#,
	.loc 1 3669 0
	movq	-8(%rbp), %rax	# decl, tmp76
	movq	104(%rax), %rcx	# decl_4->decl.initial, D.20007
	movq	-24(%rbp), %rax	# target, tmp77
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20007,
	movq	%rax, %rdi	# tmp77,
	call	safe_from_p	#
	testl	%eax, %eax	# D.20005
	jne	.L803	#,
	.loc 1 3670 0
	movl	$0, %eax	#, D.20005
	jmp	.L804	#
.L803:
.LBE142:
	.loc 1 3674 0
	movq	-32(%rbp), %rax	# exp, tmp78
	movzbl	16(%rax), %eax	# exp_2(D)->common.code, D.20006
	movzbl	%al, %eax	# D.20006, D.20008
	movl	%eax, %edi	# D.20008,
	call	statement_code_p	#
	testl	%eax, %eax	# D.20005
	je	.L805	#,
	.loc 1 3674 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# exp, tmp79
	movq	(%rax), %rax	# exp_2(D)->common.chain, D.20007
	testq	%rax, %rax	# D.20007
	je	.L805	#,
	.loc 1 3675 0 is_stmt 1
	movq	-32(%rbp), %rax	# exp, tmp80
	movq	(%rax), %rcx	# exp_2(D)->common.chain, D.20007
	movq	-24(%rbp), %rax	# target, tmp81
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20007,
	movq	%rax, %rdi	# tmp81,
	call	safe_from_p	#
	jmp	.L804	#
.L805:
	.loc 1 3678 0
	movl	$1, %eax	#, D.20005
.L804:
	.loc 1 3679 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	c_safe_from_p, .-c_safe_from_p
	.globl	c_unsafe_for_reeval
	.type	c_unsafe_for_reeval, @function
c_unsafe_for_reeval:
.LFB66:
	.loc 1 3686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# exp, exp
	.loc 1 3689 0
	movq	-8(%rbp), %rax	# exp, tmp63
	movzbl	16(%rax), %eax	# exp_2(D)->common.code, D.20010
	cmpb	$-87, %al	#, D.20010
	je	.L807	#,
	.loc 1 3690 0
	movq	-8(%rbp), %rax	# exp, tmp64
	movzbl	16(%rax), %eax	# exp_2(D)->common.code, D.20010
	cmpb	$-86, %al	#, D.20010
	jne	.L808	#,
.L807:
	.loc 1 3691 0
	movl	$2, %eax	#, D.20009
	jmp	.L809	#
.L808:
	.loc 1 3694 0
	movl	$-1, %eax	#, D.20009
.L809:
	.loc 1 3695 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	c_unsafe_for_reeval, .-c_unsafe_for_reeval
	.globl	c_staticp
	.type	c_staticp, @function
c_staticp:
.LFB67:
	.loc 1 3702 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# exp, exp
	.loc 1 3703 0
	movq	-8(%rbp), %rax	# exp, tmp66
	movzbl	16(%rax), %eax	# exp_2(D)->common.code, D.20012
	cmpb	$-86, %al	#, D.20012
	jne	.L811	#,
	.loc 1 3704 0
	movq	-8(%rbp), %rax	# exp, tmp67
	movq	32(%rax), %rax	# exp_2(D)->exp.operands, D.20013
	movq	32(%rax), %rax	# _4->exp.operands, D.20013
	movzbl	18(%rax), %eax	# *_5, D.20012
	andl	$4, %eax	#, D.20012
	testb	%al, %al	# D.20012
	je	.L811	#,
	.loc 1 3705 0
	movl	$1, %eax	#, D.20011
	jmp	.L812	#
.L811:
	.loc 1 3706 0
	movl	$0, %eax	#, D.20011
.L812:
	.loc 1 3707 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	c_staticp, .-c_staticp
	.section	.rodata
	.align 16
	.type	c_tree_code_type, @object
	.size	c_tree_code_type, 25
c_tree_code_type:
	.byte	120
	.byte	120
	.byte	49
	.byte	101
	.byte	49
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.byte	101
	.align 32
	.type	c_tree_code_length, @object
	.size	c_tree_code_length, 100
c_tree_code_length:
	.long	0
	.long	2
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	3
	.long	4
	.long	2
	.long	2
	.long	1
	.long	0
	.long	0
	.long	3
	.long	1
	.long	1
	.long	5
	.long	1
	.long	1
	.long	3
	.long	1
	.long	1
	.long	2
.LC196:
	.string	"@@dummy"
.LC197:
	.string	"srcloc"
.LC198:
	.string	"sizeof_expr"
.LC199:
	.string	"arrow_expr"
.LC200:
	.string	"alignof_expr"
.LC201:
	.string	"expr_stmt"
.LC202:
	.string	"compound_stmt"
.LC203:
	.string	"decl_stmt"
.LC204:
	.string	"if_stmt"
.LC205:
	.string	"for_stmt"
.LC206:
	.string	"while_stmt"
.LC207:
	.string	"do_stmt"
.LC208:
	.string	"return_stmt"
.LC209:
	.string	"break_stmt"
.LC210:
	.string	"continue_stmt"
.LC211:
	.string	"switch_stmt"
.LC212:
	.string	"goto_stmt"
.LC213:
	.string	"label_stmt"
.LC214:
	.string	"asm_stmt"
.LC215:
	.string	"scope_stmt"
.LC216:
	.string	"file_stmt"
.LC217:
	.string	"case_label"
.LC218:
	.string	"stmt_expr"
.LC219:
	.string	"compound_literal_expr"
.LC220:
	.string	"cleanup_stmt"
	.align 32
	.type	c_tree_code_name, @object
	.size	c_tree_code_name, 200
c_tree_code_name:
	.quad	.LC196
	.quad	.LC197
	.quad	.LC198
	.quad	.LC199
	.quad	.LC200
	.quad	.LC201
	.quad	.LC202
	.quad	.LC203
	.quad	.LC204
	.quad	.LC205
	.quad	.LC206
	.quad	.LC207
	.quad	.LC208
	.quad	.LC209
	.quad	.LC210
	.quad	.LC211
	.quad	.LC212
	.quad	.LC213
	.quad	.LC214
	.quad	.LC215
	.quad	.LC216
	.quad	.LC217
	.quad	.LC218
	.quad	.LC219
	.quad	.LC220
	.text
	.globl	add_c_tree_codes
	.type	add_c_tree_codes, @function
add_c_tree_codes:
.LFB68:
	.loc 1 3746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3747 0
	movl	$tree_code_type+147, %eax	#, D.20039
	movq	c_tree_code_type(%rip), %rdx	# MEM[(char * {ref-all})&c_tree_code_type], tmp61
	movq	%rdx, (%rax)	# tmp61, MEM[(char * {ref-all})_1]
	movq	c_tree_code_type+8(%rip), %rdx	# MEM[(char * {ref-all})&c_tree_code_type], tmp62
	movq	%rdx, 8(%rax)	# tmp62, MEM[(char * {ref-all})_1]
	movq	c_tree_code_type+16(%rip), %rdx	# MEM[(char * {ref-all})&c_tree_code_type], tmp63
	movq	%rdx, 16(%rax)	# tmp63, MEM[(char * {ref-all})_1]
	movzbl	c_tree_code_type+24(%rip), %edx	# MEM[(char * {ref-all})&c_tree_code_type], tmp64
	movb	%dl, 24(%rax)	# tmp64, MEM[(char * {ref-all})_1]
	.loc 1 3750 0
	movq	c_tree_code_length(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp67
	movq	%rax, tree_code_length+588(%rip)	# tmp67, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+8(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp68
	movq	%rax, tree_code_length+596(%rip)	# tmp68, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+16(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp69
	movq	%rax, tree_code_length+604(%rip)	# tmp69, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+24(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp70
	movq	%rax, tree_code_length+612(%rip)	# tmp70, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+32(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp71
	movq	%rax, tree_code_length+620(%rip)	# tmp71, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+40(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp72
	movq	%rax, tree_code_length+628(%rip)	# tmp72, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+48(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp73
	movq	%rax, tree_code_length+636(%rip)	# tmp73, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+56(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp74
	movq	%rax, tree_code_length+644(%rip)	# tmp74, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+64(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp75
	movq	%rax, tree_code_length+652(%rip)	# tmp75, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+72(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp76
	movq	%rax, tree_code_length+660(%rip)	# tmp76, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+80(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp77
	movq	%rax, tree_code_length+668(%rip)	# tmp77, MEM[(char * {ref-all})&tree_code_length + 588B]
	movq	c_tree_code_length+88(%rip), %rax	# MEM[(char * {ref-all})&c_tree_code_length], tmp78
	movq	%rax, tree_code_length+676(%rip)	# tmp78, MEM[(char * {ref-all})&tree_code_length + 588B]
	movl	c_tree_code_length+96(%rip), %eax	# MEM[(char * {ref-all})&c_tree_code_length], tmp79
	movl	%eax, tree_code_length+684(%rip)	# tmp79, MEM[(char * {ref-all})&tree_code_length + 588B]
	.loc 1 3753 0
	movl	$tree_code_name+1176, %edx	#, tmp80
	movl	$c_tree_code_name, %esi	#, tmp81
	movl	$25, %eax	#, tmp82
	movq	%rdx, %rdi	# tmp80, tmp80
	movq	%rax, %rcx	# tmp82, tmp82
	rep movsq
	.loc 1 3756 0
	movq	$c_unsafe_for_reeval, lang_unsafe_for_reeval(%rip)	#, lang_unsafe_for_reeval
	.loc 1 3757 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	add_c_tree_codes, .-add_c_tree_codes
	.section	.rodata
	.align 8
.LC221:
	.string	"built-in function `%s' not currently supported"
	.text
	.type	c_expand_builtin, @function
c_expand_builtin:
.LFB69:
	.loc 1 3768 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# exp, exp
	movq	%rsi, -64(%rbp)	# target, target
	movl	%edx, -68(%rbp)	# tmode, tmode
	movl	%ecx, -72(%rbp)	# modifier, modifier
	.loc 1 3769 0
	movq	-56(%rbp), %rax	# exp, tmp72
	movq	8(%rax), %rax	# exp_4(D)->common.type, tmp73
	movq	%rax, -24(%rbp)	# tmp73, type
	.loc 1 3770 0
	movq	-56(%rbp), %rax	# exp, tmp74
	movq	32(%rax), %rax	# exp_4(D)->exp.operands, D.20041
	movq	32(%rax), %rax	# _6->exp.operands, tmp75
	movq	%rax, -16(%rbp)	# tmp75, fndecl
	.loc 1 3771 0
	movq	-56(%rbp), %rax	# exp, tmp76
	movq	40(%rax), %rax	# exp_4(D)->exp.operands, tmp77
	movq	%rax, -8(%rbp)	# tmp77, arglist
	.loc 1 3772 0
	movq	-16(%rbp), %rax	# fndecl, tmp78
	movl	56(%rax), %eax	# fndecl_7->decl.u1.f, tmp79
	movl	%eax, -36(%rbp)	# tmp79, fcode
	.loc 1 3773 0
	movq	-56(%rbp), %rax	# exp, tmp80
	movzbl	16(%rax), %eax	# exp_4(D)->common.code, D.20042
	movzbl	%al, %eax	# D.20042, tmp81
	movl	%eax, -32(%rbp)	# tmp81, code
	.loc 1 3774 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.20043
	.loc 1 3775 0
	cmpq	-64(%rbp), %rax	# target, D.20043
	je	.L815	#,
	.loc 1 3775 0 is_stmt 0 discriminator 2
	cmpl	$116, -32(%rbp)	#, code
	je	.L816	#,
	.loc 1 3775 0 discriminator 3
	cmpl	$115, -32(%rbp)	#, code
	je	.L816	#,
	.loc 1 3776 0 is_stmt 1
	cmpl	$114, -32(%rbp)	#, code
	je	.L816	#,
	.loc 1 3776 0 is_stmt 0 discriminator 1
	cmpl	$122, -32(%rbp)	#, code
	je	.L816	#,
	.loc 1 3777 0 is_stmt 1
	cmpl	$51, -32(%rbp)	#, code
	jne	.L817	#,
.L816:
	.loc 1 3778 0
	movq	-24(%rbp), %rax	# type, tmp82
	movzbl	16(%rax), %eax	# type_5->common.code, D.20042
	cmpb	$5, %al	#, D.20042
	jne	.L817	#,
.L815:
	.loc 1 3775 0 discriminator 1
	movl	$1, %eax	#, iftmp.342
	jmp	.L818	#
.L817:
	.loc 1 3775 0 is_stmt 0
	movl	$0, %eax	#, iftmp.342
.L818:
	.loc 1 3774 0 is_stmt 1
	movl	%eax, -28(%rbp)	# iftmp.342, ignore
	.loc 1 3780 0
	movl	optimize(%rip), %eax	# optimize, optimize.343
	testl	%eax, %eax	# optimize.343
	jne	.L819	#,
	.loc 1 3780 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# fndecl, tmp83
	movq	72(%rax), %rax	# fndecl_7->decl.name, D.20041
	movq	32(%rax), %rax	# _19->identifier.id.str, D.20044
	movl	$10, %edx	#,
	movl	$.LC179, %esi	#,
	movq	%rax, %rdi	# D.20044,
	call	strncmp	#
	testl	%eax, %eax	# D.20045
	je	.L819	#,
	.loc 1 3781 0 is_stmt 1
	movl	-28(%rbp), %edx	# ignore, tmp84
	movq	-64(%rbp), %rcx	# target, tmp85
	movq	-56(%rbp), %rax	# exp, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	expand_call	#
	jmp	.L820	#
.L819:
	.loc 1 3783 0
	movl	-36(%rbp), %eax	# fcode, fcode
	cmpl	$68, %eax	#, fcode
	je	.L822	#,
	cmpl	$68, %eax	#, fcode
	ja	.L823	#,
	cmpl	$64, %eax	#, fcode
	je	.L824	#,
	jmp	.L821	#
.L823:
	cmpl	$71, %eax	#, fcode
	je	.L825	#,
	cmpl	$75, %eax	#, fcode
	je	.L826	#,
	jmp	.L821	#
.L824:
	.loc 1 3786 0
	movl	-28(%rbp), %edi	# ignore, tmp88
	movl	-72(%rbp), %ecx	# modifier, tmp89
	movl	-68(%rbp), %edx	# tmode, tmp90
	movq	-64(%rbp), %rsi	# target, tmp91
	movq	-8(%rbp), %rax	# arglist, tmp92
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp88,
	movq	%rax, %rdi	# tmp92,
	call	c_expand_builtin_printf	#
	movq	%rax, -64(%rbp)	# tmp93, target
	.loc 1 3788 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L827	#,
	.loc 1 3789 0
	movq	-64(%rbp), %rax	# target, D.20040
	jmp	.L820	#
.L827:
	.loc 1 3790 0
	jmp	.L828	#
.L825:
	.loc 1 3793 0
	movl	-28(%rbp), %edi	# ignore, tmp94
	movl	-72(%rbp), %ecx	# modifier, tmp95
	movl	-68(%rbp), %edx	# tmode, tmp96
	movq	-64(%rbp), %rsi	# target, tmp97
	movq	-8(%rbp), %rax	# arglist, tmp98
	movl	$1, %r9d	#,
	movl	%edi, %r8d	# tmp94,
	movq	%rax, %rdi	# tmp98,
	call	c_expand_builtin_printf	#
	movq	%rax, -64(%rbp)	# tmp99, target
	.loc 1 3795 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L829	#,
	.loc 1 3796 0
	movq	-64(%rbp), %rax	# target, D.20040
	jmp	.L820	#
.L829:
	.loc 1 3797 0
	jmp	.L828	#
.L822:
	.loc 1 3800 0
	movl	-28(%rbp), %edi	# ignore, tmp100
	movl	-72(%rbp), %ecx	# modifier, tmp101
	movl	-68(%rbp), %edx	# tmode, tmp102
	movq	-64(%rbp), %rsi	# target, tmp103
	movq	-8(%rbp), %rax	# arglist, tmp104
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp100,
	movq	%rax, %rdi	# tmp104,
	call	c_expand_builtin_fprintf	#
	movq	%rax, -64(%rbp)	# tmp105, target
	.loc 1 3802 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L830	#,
	.loc 1 3803 0
	movq	-64(%rbp), %rax	# target, D.20040
	jmp	.L820	#
.L830:
	.loc 1 3804 0
	jmp	.L828	#
.L826:
	.loc 1 3807 0
	movl	-28(%rbp), %edi	# ignore, tmp106
	movl	-72(%rbp), %ecx	# modifier, tmp107
	movl	-68(%rbp), %edx	# tmode, tmp108
	movq	-64(%rbp), %rsi	# target, tmp109
	movq	-8(%rbp), %rax	# arglist, tmp110
	movl	$1, %r9d	#,
	movl	%edi, %r8d	# tmp106,
	movq	%rax, %rdi	# tmp110,
	call	c_expand_builtin_fprintf	#
	movq	%rax, -64(%rbp)	# tmp111, target
	.loc 1 3809 0
	cmpq	$0, -64(%rbp)	#, target
	je	.L831	#,
	.loc 1 3810 0
	movq	-64(%rbp), %rax	# target, D.20040
	jmp	.L820	#
.L831:
	.loc 1 3811 0
	jmp	.L828	#
.L821:
	.loc 1 3815 0
	movq	-16(%rbp), %rax	# fndecl, tmp112
	movq	72(%rax), %rax	# fndecl_7->decl.name, D.20041
	movq	32(%rax), %rax	# _33->identifier.id.str, D.20044
	.loc 1 3814 0
	movq	%rax, %rsi	# D.20044,
	movl	$.LC221, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L828:
	.loc 1 3820 0
	movl	-28(%rbp), %edx	# ignore, tmp113
	movq	-64(%rbp), %rcx	# target, tmp114
	movq	-56(%rbp), %rax	# exp, tmp115
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	expand_call	#
.L820:
	.loc 1 3821 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	c_expand_builtin, .-c_expand_builtin
	.section	.rodata
.LC222:
	.string	"printf"
	.text
	.type	is_valid_printf_arglist, @function
is_valid_printf_arglist:
.LFB70:
	.loc 1 3829 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# arglist, arglist
	.loc 1 3831 0
	movl	pedantic(%rip), %eax	# pedantic, tmp70
	movl	%eax, -28(%rbp)	# tmp70, SAVE_pedantic
	.loc 1 3832 0
	movl	$0, -32(%rbp)	#, diagnostic_occurred
	.loc 1 3837 0
	movl	$1, pedantic(%rip)	#, pedantic
	.loc 1 3839 0
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	build_int_2_wide	#
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.20048,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rdx	#, D.20048
	movq	global_trees+96(%rip), %rax	# global_trees, D.20048
	movq	%rax, %rsi	# D.20048,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rbx	#, D.20048
	movl	$.LC222, %edi	#,
	call	get_identifier	#
	movq	%rbx, %rdx	# D.20048,
	movq	%rax, %rsi	# D.20048,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, %rbx	#, D.20048
	movl	$.LC52, %edi	#,
	call	get_identifier	#
	movl	$0, %edx	#,
	movq	%rbx, %rsi	# D.20048,
	movq	%rax, %rdi	# D.20048,
	call	tree_cons	#
	movq	%rax, -24(%rbp)	# tmp71, attrs
	.loc 1 3848 0
	movq	-40(%rbp), %rdx	# arglist, tmp72
	movq	-24(%rbp), %rcx	# attrs, tmp73
	leaq	-32(%rbp), %rax	#, tmp74
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	check_function_format	#
	.loc 1 3851 0
	movl	-28(%rbp), %eax	# SAVE_pedantic, tmp75
	movl	%eax, pedantic(%rip)	# tmp75, pedantic
	.loc 1 3855 0
	movl	-32(%rbp), %eax	# diagnostic_occurred, diagnostic_occurred.344
	testl	%eax, %eax	# diagnostic_occurred.344
	sete	%al	#, D.20049
	movzbl	%al, %eax	# D.20049, D.20050
	.loc 1 3856 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	is_valid_printf_arglist, .-is_valid_printf_arglist
	.section	.rodata
.LC223:
	.string	"%s\n"
.LC224:
	.string	"%c"
	.text
	.type	c_expand_builtin_printf, @function
c_expand_builtin_printf:
.LFB71:
	.loc 1 3868 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# arglist, arglist
	movq	%rsi, -96(%rbp)	# target, target
	movl	%edx, -100(%rbp)	# tmode, tmode
	movl	%ecx, -104(%rbp)	# modifier, modifier
	movl	%r8d, -108(%rbp)	# ignore, ignore
	movl	%r9d, -112(%rbp)	# unlocked, unlocked
	.loc 1 3870 0
	cmpl	$0, -112(%rbp)	#, unlocked
	je	.L835	#,
	.loc 1 3870 0 is_stmt 0 discriminator 1
	movq	built_in_decls+552(%rip), %rax	# built_in_decls, iftmp.345
	jmp	.L836	#
.L835:
	.loc 1 3870 0 discriminator 2
	movq	built_in_decls+496(%rip), %rax	# built_in_decls, iftmp.345
.L836:
	.loc 1 3869 0 is_stmt 1
	movq	%rax, -48(%rbp)	# iftmp.345, fn_putchar
	.loc 1 3872 0
	cmpl	$0, -112(%rbp)	#, unlocked
	je	.L837	#,
	.loc 1 3872 0 is_stmt 0 discriminator 1
	movq	built_in_decls+560(%rip), %rax	# built_in_decls, iftmp.346
	jmp	.L838	#
.L837:
	.loc 1 3872 0 discriminator 2
	movq	built_in_decls+504(%rip), %rax	# built_in_decls, iftmp.346
.L838:
	.loc 1 3871 0 is_stmt 1
	movq	%rax, -40(%rbp)	# iftmp.346, fn_puts
	.loc 1 3877 0
	cmpl	$0, -108(%rbp)	#, ignore
	je	.L839	#,
	.loc 1 3877 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, fn_putchar
	je	.L839	#,
	cmpq	$0, -40(%rbp)	#, fn_puts
	jne	.L840	#,
.L839:
	.loc 1 3878 0 is_stmt 1
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L840:
	.loc 1 3881 0
	cmpq	$0, -88(%rbp)	#, arglist
	je	.L842	#,
	.loc 1 3882 0
	movq	-88(%rbp), %rax	# arglist, tmp107
	movq	32(%rax), %rax	# arglist_17(D)->list.value, D.20053
	movq	8(%rax), %rax	# _18->common.type, D.20053
	movzbl	16(%rax), %eax	# _19->common.code, D.20054
	cmpb	$13, %al	#, D.20054
	je	.L843	#,
.L842:
	.loc 1 3883 0
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L843:
	.loc 1 3886 0
	movq	-88(%rbp), %rax	# arglist, tmp108
	movq	%rax, %rdi	# tmp108,
	call	is_valid_printf_arglist	#
	testl	%eax, %eax	# D.20055
	jne	.L844	#,
	.loc 1 3887 0
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L844:
	.loc 1 3889 0
	movq	-88(%rbp), %rax	# arglist, tmp109
	movq	32(%rax), %rax	# arglist_17(D)->list.value, tmp110
	movq	%rax, -32(%rbp)	# tmp110, format_arg
	.loc 1 3890 0
	movq	-32(%rbp), %rax	# format_arg, tmp111
	movq	%rax, -56(%rbp)	# tmp111, stripped_string
	.loc 1 3891 0
	jmp	.L845	#
.L848:
	.loc 1 3891 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# stripped_string, tmp112
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, tmp113
	movq	%rax, -56(%rbp)	# tmp113, stripped_string
.L845:
	movq	-56(%rbp), %rax	# stripped_string, tmp114
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20054
	cmpb	$115, %al	#, D.20054
	je	.L846	#,
	.loc 1 3891 0 discriminator 3
	movq	-56(%rbp), %rax	# stripped_string, tmp115
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20054
	cmpb	$114, %al	#, D.20054
	je	.L846	#,
	.loc 1 3891 0 discriminator 1
	movq	-56(%rbp), %rax	# stripped_string, tmp116
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20054
	cmpb	$116, %al	#, D.20054
	jne	.L847	#,
.L846:
	.loc 1 3891 0 discriminator 2
	movq	-56(%rbp), %rax	# stripped_string, tmp117
	movq	32(%rax), %rdx	# stripped_string_3->exp.operands, D.20053
	movq	global_trees(%rip), %rax	# global_trees, D.20053
	cmpq	%rax, %rdx	# D.20053, D.20053
	je	.L847	#,
	.loc 1 3891 0 discriminator 1
	movq	-56(%rbp), %rax	# stripped_string, tmp118
	movq	8(%rax), %rax	# stripped_string_3->common.type, D.20053
	movzbl	61(%rax), %eax	# *_30, tmp121
	shrb	%al	# D.20056
	movl	%eax, %edx	# D.20056, D.20056
	movq	-56(%rbp), %rax	# stripped_string, tmp122
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, D.20053
	movq	8(%rax), %rax	# _32->common.type, D.20053
	movzbl	61(%rax), %eax	# *_33, tmp125
	shrb	%al	# D.20056
	cmpb	%al, %dl	# D.20056, D.20056
	je	.L848	#,
.L847:
	.loc 1 3892 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, stripped_string
	je	.L849	#,
	.loc 1 3892 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# stripped_string, tmp126
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20054
	cmpb	$121, %al	#, D.20054
	jne	.L849	#,
	.loc 1 3893 0 is_stmt 1
	movq	-56(%rbp), %rax	# stripped_string, tmp127
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, tmp128
	movq	%rax, -56(%rbp)	# tmp128, stripped_string
.L849:
	.loc 1 3896 0
	movq	-56(%rbp), %rax	# stripped_string, tmp129
	movzbl	16(%rax), %eax	# stripped_string_4->common.code, D.20054
	cmpb	$29, %al	#, D.20054
	je	.L850	#,
	.loc 1 3897 0
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L850:
	.loc 1 3902 0
	movq	-56(%rbp), %rax	# stripped_string, tmp130
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20057
	movl	$.LC223, %esi	#,
	movq	%rax, %rdi	# D.20057,
	call	strcmp	#
	testl	%eax, %eax	# D.20055
	jne	.L851	#,
	.loc 1 3904 0
	movq	-88(%rbp), %rax	# arglist, tmp131
	movq	(%rax), %rax	# arglist_17(D)->common.chain, tmp132
	movq	%rax, -88(%rbp)	# tmp132, arglist
	.loc 1 3905 0
	movq	-40(%rbp), %rax	# fn_puts, tmp133
	movq	%rax, -64(%rbp)	# tmp133, fn
	jmp	.L852	#
.L851:
	.loc 1 3908 0
	movq	-56(%rbp), %rax	# stripped_string, tmp134
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20057
	movl	$.LC224, %esi	#,
	movq	%rax, %rdi	# D.20057,
	call	strcmp	#
	testl	%eax, %eax	# D.20055
	jne	.L853	#,
	.loc 1 3910 0
	movq	-88(%rbp), %rax	# arglist, tmp135
	movq	(%rax), %rax	# arglist_17(D)->common.chain, tmp136
	movq	%rax, -88(%rbp)	# tmp136, arglist
	.loc 1 3911 0
	movq	-48(%rbp), %rax	# fn_putchar, tmp137
	movq	%rax, -64(%rbp)	# tmp137, fn
	jmp	.L852	#
.L853:
	.loc 1 3916 0
	movq	-56(%rbp), %rax	# stripped_string, tmp138
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20057
	movl	$37, %esi	#,
	movq	%rax, %rdi	# D.20057,
	call	strchr	#
	testq	%rax, %rax	# D.20058
	je	.L854	#,
	.loc 1 3917 0
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L854:
	.loc 1 3922 0
	movq	-56(%rbp), %rax	# stripped_string, tmp139
	movl	32(%rax), %eax	# stripped_string_4->string.length, D.20055
	cmpl	$2, %eax	#, D.20055
	jne	.L855	#,
	.loc 1 3927 0
	movq	-56(%rbp), %rax	# stripped_string, tmp140
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20057
	movzbl	(%rax), %eax	# *_52, D.20059
	movsbq	%al, %rax	# D.20059, D.20060
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20060,
	call	build_int_2_wide	#
	movq	%rax, -88(%rbp)	# tmp141, arglist
	.loc 1 3928 0
	movq	-88(%rbp), %rax	# arglist, tmp142
	movq	%rax, %rsi	# tmp142,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, -88(%rbp)	# tmp143, arglist
	.loc 1 3930 0
	movq	-48(%rbp), %rax	# fn_putchar, tmp144
	movq	%rax, -64(%rbp)	# tmp144, fn
	jmp	.L852	#
.L855:
	.loc 1 3936 0
	movq	-56(%rbp), %rax	# stripped_string, tmp145
	movl	32(%rax), %eax	# stripped_string_4->string.length, D.20055
	cmpl	$2, %eax	#, D.20055
	jle	.L856	#,
	.loc 1 3937 0
	movq	-56(%rbp), %rax	# stripped_string, tmp146
	movq	40(%rax), %rdx	# stripped_string_4->string.pointer, D.20057
	.loc 1 3938 0
	movq	-56(%rbp), %rax	# stripped_string, tmp147
	movl	32(%rax), %eax	# stripped_string_4->string.length, D.20055
	cltq
	subq	$2, %rax	#, D.20061
	addq	%rdx, %rax	# D.20057, D.20057
	movzbl	(%rax), %eax	# *_63, D.20059
	.loc 1 3937 0
	cmpb	$10, %al	#, D.20059
	jne	.L856	#,
.LBB143:
	.loc 1 3942 0
	movq	-56(%rbp), %rax	# stripped_string, tmp148
	movl	32(%rax), %eax	# stripped_string_4->string.length, D.20055
	subl	$1, %eax	#, tmp149
	movl	%eax, -68(%rbp)	# tmp149, newlen
	.loc 1 3943 0
	movl	-68(%rbp), %eax	# newlen, tmp150
	cltq
	leaq	15(%rax), %rdx	#, tmp151
	movl	$16, %eax	#, tmp178
	subq	$1, %rax	#, tmp152
	addq	%rdx, %rax	# tmp151, tmp153
	movl	$16, %ebx	#, tmp179
	movl	$0, %edx	#, tmp156
	divq	%rbx	# tmp179
	imulq	$16, %rax, %rax	#, tmp155, tmp157
	subq	%rax, %rsp	# tmp157,
	movq	%rsp, %rax	#, tmp158
	addq	$15, %rax	#, tmp159
	shrq	$4, %rax	#, tmp160
	salq	$4, %rax	#, tmp161
	movq	%rax, -24(%rbp)	# tmp161, newstr
	.loc 1 3944 0
	movl	-68(%rbp), %eax	# newlen, tmp162
	subl	$1, %eax	#, D.20055
	movslq	%eax, %rdx	# D.20055, D.20060
	movq	-56(%rbp), %rax	# stripped_string, tmp163
	movq	40(%rax), %rcx	# stripped_string_4->string.pointer, D.20057
	movq	-24(%rbp), %rax	# newstr, tmp164
	movq	%rcx, %rsi	# D.20057,
	movq	%rax, %rdi	# tmp164,
	call	memcpy	#
	.loc 1 3945 0
	movl	-68(%rbp), %eax	# newlen, tmp165
	cltq
	leaq	-1(%rax), %rdx	#, D.20061
	movq	-24(%rbp), %rax	# newstr, tmp166
	addq	%rdx, %rax	# D.20061, D.20058
	movb	$0, (%rax)	#, *_74
	.loc 1 3947 0
	movq	-24(%rbp), %rdx	# newstr, tmp167
	movl	-68(%rbp), %eax	# newlen, tmp168
	movq	%rdx, %rsi	# tmp167,
	movl	%eax, %edi	# tmp168,
	call	build_string	#
	movq	%rax, %rdi	# D.20053,
	call	combine_strings	#
	movq	%rax, -88(%rbp)	# tmp169, arglist
	.loc 1 3948 0
	movq	-88(%rbp), %rax	# arglist, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, -88(%rbp)	# tmp171, arglist
	.loc 1 3949 0
	movq	-40(%rbp), %rax	# fn_puts, tmp172
	movq	%rax, -64(%rbp)	# tmp172, fn
.LBE143:
	.loc 1 3939 0
	jmp	.L852	#
.L856:
	.loc 1 3954 0
	movl	$0, %eax	#, D.20052
	jmp	.L841	#
.L852:
	.loc 1 3957 0
	cmpl	$0, -108(%rbp)	#, ignore
	je	.L857	#,
	.loc 1 3957 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, iftmp.347
	jmp	.L858	#
.L857:
	.loc 1 3957 0 discriminator 2
	movq	-96(%rbp), %rbx	# target, iftmp.347
.L858:
	.loc 1 3957 0 discriminator 3
	movq	-88(%rbp), %rdx	# arglist, tmp173
	movq	-64(%rbp), %rax	# fn, tmp174
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# tmp174,
	call	build_function_call	#
	movl	-104(%rbp), %ecx	# modifier, tmp175
	movl	-100(%rbp), %edx	# tmode, tmp176
	movq	%rbx, %rsi	# iftmp.347,
	movq	%rax, %rdi	# D.20053,
	call	expand_expr	#
.L841:
	.loc 1 3960 0 is_stmt 1
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	c_expand_builtin_printf, .-c_expand_builtin_printf
	.section	.rodata
.LC225:
	.string	"%s"
	.text
	.type	c_expand_builtin_fprintf, @function
c_expand_builtin_fprintf:
.LFB72:
	.loc 1 3972 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# arglist, arglist
	movq	%rsi, -96(%rbp)	# target, target
	movl	%edx, -100(%rbp)	# tmode, tmode
	movl	%ecx, -104(%rbp)	# modifier, modifier
	movl	%r8d, -108(%rbp)	# ignore, ignore
	movl	%r9d, -112(%rbp)	# unlocked, unlocked
	.loc 1 3974 0
	cmpl	$0, -112(%rbp)	#, unlocked
	je	.L860	#,
	.loc 1 3974 0 is_stmt 0 discriminator 1
	movq	built_in_decls+576(%rip), %rax	# built_in_decls, iftmp.348
	jmp	.L861	#
.L860:
	.loc 1 3974 0 discriminator 2
	movq	built_in_decls+520(%rip), %rax	# built_in_decls, iftmp.348
.L861:
	.loc 1 3973 0 is_stmt 1
	movq	%rax, -56(%rbp)	# iftmp.348, fn_fputc
	.loc 1 3976 0
	cmpl	$0, -112(%rbp)	#, unlocked
	je	.L862	#,
	.loc 1 3976 0 is_stmt 0 discriminator 1
	movq	built_in_decls+584(%rip), %rax	# built_in_decls, iftmp.349
	jmp	.L863	#
.L862:
	.loc 1 3976 0 discriminator 2
	movq	built_in_decls+528(%rip), %rax	# built_in_decls, iftmp.349
.L863:
	.loc 1 3975 0 is_stmt 1
	movq	%rax, -48(%rbp)	# iftmp.349, fn_fputs
	.loc 1 3981 0
	cmpl	$0, -108(%rbp)	#, ignore
	je	.L864	#,
	.loc 1 3981 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, fn_fputc
	je	.L864	#,
	cmpq	$0, -48(%rbp)	#, fn_fputs
	jne	.L865	#,
.L864:
	.loc 1 3982 0 is_stmt 1
	movl	$0, %eax	#, D.20065
	jmp	.L866	#
.L865:
	.loc 1 3985 0
	cmpq	$0, -88(%rbp)	#, arglist
	je	.L867	#,
	.loc 1 3986 0
	movq	-88(%rbp), %rax	# arglist, tmp106
	movq	32(%rax), %rax	# arglist_17(D)->list.value, D.20066
	movq	8(%rax), %rax	# _18->common.type, D.20066
	movzbl	16(%rax), %eax	# _19->common.code, D.20067
	cmpb	$13, %al	#, D.20067
	jne	.L867	#,
	.loc 1 3987 0
	movq	-88(%rbp), %rax	# arglist, tmp107
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	testq	%rax, %rax	# D.20066
	je	.L867	#,
	.loc 1 3988 0
	movq	-88(%rbp), %rax	# arglist, tmp108
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	32(%rax), %rax	# _22->list.value, D.20066
	movq	8(%rax), %rax	# _23->common.type, D.20066
	movzbl	16(%rax), %eax	# _24->common.code, D.20067
	cmpb	$13, %al	#, D.20067
	je	.L868	#,
.L867:
	.loc 1 3990 0
	movl	$0, %eax	#, D.20065
	jmp	.L866	#
.L868:
	.loc 1 3993 0
	movq	-88(%rbp), %rax	# arglist, tmp109
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	%rax, %rdi	# D.20066,
	call	is_valid_printf_arglist	#
	testl	%eax, %eax	# D.20068
	jne	.L869	#,
	.loc 1 3994 0
	movl	$0, %eax	#, D.20065
	jmp	.L866	#
.L869:
	.loc 1 3996 0
	movq	-88(%rbp), %rax	# arglist, tmp110
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	32(%rax), %rax	# _29->list.value, tmp111
	movq	%rax, -40(%rbp)	# tmp111, format_arg
	.loc 1 3997 0
	movq	-40(%rbp), %rax	# format_arg, tmp112
	movq	%rax, -64(%rbp)	# tmp112, stripped_string
	.loc 1 3998 0
	jmp	.L870	#
.L873:
	.loc 1 3998 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# stripped_string, tmp113
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, tmp114
	movq	%rax, -64(%rbp)	# tmp114, stripped_string
.L870:
	movq	-64(%rbp), %rax	# stripped_string, tmp115
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20067
	cmpb	$115, %al	#, D.20067
	je	.L871	#,
	.loc 1 3998 0 discriminator 3
	movq	-64(%rbp), %rax	# stripped_string, tmp116
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20067
	cmpb	$114, %al	#, D.20067
	je	.L871	#,
	.loc 1 3998 0 discriminator 1
	movq	-64(%rbp), %rax	# stripped_string, tmp117
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20067
	cmpb	$116, %al	#, D.20067
	jne	.L872	#,
.L871:
	.loc 1 3998 0 discriminator 2
	movq	-64(%rbp), %rax	# stripped_string, tmp118
	movq	32(%rax), %rdx	# stripped_string_3->exp.operands, D.20066
	movq	global_trees(%rip), %rax	# global_trees, D.20066
	cmpq	%rax, %rdx	# D.20066, D.20066
	je	.L872	#,
	.loc 1 3998 0 discriminator 1
	movq	-64(%rbp), %rax	# stripped_string, tmp119
	movq	8(%rax), %rax	# stripped_string_3->common.type, D.20066
	movzbl	61(%rax), %eax	# *_37, tmp122
	shrb	%al	# D.20069
	movl	%eax, %edx	# D.20069, D.20069
	movq	-64(%rbp), %rax	# stripped_string, tmp123
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, D.20066
	movq	8(%rax), %rax	# _39->common.type, D.20066
	movzbl	61(%rax), %eax	# *_40, tmp126
	shrb	%al	# D.20069
	cmpb	%al, %dl	# D.20069, D.20069
	je	.L873	#,
.L872:
	.loc 1 3999 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, stripped_string
	je	.L874	#,
	.loc 1 3999 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# stripped_string, tmp127
	movzbl	16(%rax), %eax	# stripped_string_3->common.code, D.20067
	cmpb	$121, %al	#, D.20067
	jne	.L874	#,
	.loc 1 4000 0 is_stmt 1
	movq	-64(%rbp), %rax	# stripped_string, tmp128
	movq	32(%rax), %rax	# stripped_string_3->exp.operands, tmp129
	movq	%rax, -64(%rbp)	# tmp129, stripped_string
.L874:
	.loc 1 4003 0
	movq	-64(%rbp), %rax	# stripped_string, tmp130
	movzbl	16(%rax), %eax	# stripped_string_4->common.code, D.20067
	cmpb	$29, %al	#, D.20067
	je	.L875	#,
	.loc 1 4004 0
	movl	$0, %eax	#, D.20065
	jmp	.L866	#
.L875:
	.loc 1 4009 0
	movq	-64(%rbp), %rax	# stripped_string, tmp131
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20070
	movl	$.LC225, %esi	#,
	movq	%rax, %rdi	# D.20070,
	call	strcmp	#
	testl	%eax, %eax	# D.20068
	jne	.L876	#,
.LBB144:
	.loc 1 4011 0
	movq	-88(%rbp), %rax	# arglist, tmp132
	movq	32(%rax), %rax	# arglist_17(D)->list.value, D.20066
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, -32(%rbp)	# tmp133, newarglist
	.loc 1 4013 0
	movq	-88(%rbp), %rax	# arglist, tmp134
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	(%rax), %rax	# _51->common.chain, D.20066
	.loc 1 4012 0
	movq	32(%rax), %rax	# _52->list.value, D.20066
	movq	-32(%rbp), %rdx	# newarglist, tmp135
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -88(%rbp)	# tmp136, arglist
	.loc 1 4015 0
	movq	-48(%rbp), %rax	# fn_fputs, tmp137
	movq	%rax, -72(%rbp)	# tmp137, fn
.LBE144:
	jmp	.L877	#
.L876:
	.loc 1 4018 0
	movq	-64(%rbp), %rax	# stripped_string, tmp138
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20070
	movl	$.LC224, %esi	#,
	movq	%rax, %rdi	# D.20070,
	call	strcmp	#
	testl	%eax, %eax	# D.20068
	jne	.L878	#,
.LBB145:
	.loc 1 4020 0
	movq	-88(%rbp), %rax	# arglist, tmp139
	movq	32(%rax), %rax	# arglist_17(D)->list.value, D.20066
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, -24(%rbp)	# tmp140, newarglist
	.loc 1 4022 0
	movq	-88(%rbp), %rax	# arglist, tmp141
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	(%rax), %rax	# _60->common.chain, D.20066
	.loc 1 4021 0
	movq	32(%rax), %rax	# _61->list.value, D.20066
	movq	-24(%rbp), %rdx	# newarglist, tmp142
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -88(%rbp)	# tmp143, arglist
	.loc 1 4024 0
	movq	-56(%rbp), %rax	# fn_fputc, tmp144
	movq	%rax, -72(%rbp)	# tmp144, fn
.LBE145:
	jmp	.L877	#
.L878:
	.loc 1 4029 0
	movq	-64(%rbp), %rax	# stripped_string, tmp145
	movq	40(%rax), %rax	# stripped_string_4->string.pointer, D.20070
	movl	$37, %esi	#,
	movq	%rax, %rdi	# D.20070,
	call	strchr	#
	testq	%rax, %rax	# D.20071
	je	.L879	#,
	.loc 1 4030 0
	movl	$0, %eax	#, D.20065
	jmp	.L866	#
.L879:
	.loc 1 4035 0
	movq	-88(%rbp), %rax	# arglist, tmp146
	movq	32(%rax), %rax	# arglist_17(D)->list.value, D.20066
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	build_tree_list	#
	movq	%rax, %rdx	#, D.20066
	movq	-88(%rbp), %rax	# arglist, tmp147
	movq	(%rax), %rax	# arglist_17(D)->common.chain, D.20066
	movq	32(%rax), %rax	# _70->list.value, D.20066
	movq	%rax, %rsi	# D.20066,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -88(%rbp)	# tmp148, arglist
	.loc 1 4037 0
	movq	-48(%rbp), %rax	# fn_fputs, tmp149
	movq	%rax, -72(%rbp)	# tmp149, fn
.L877:
	.loc 1 4040 0
	cmpl	$0, -108(%rbp)	#, ignore
	je	.L880	#,
	.loc 1 4040 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, iftmp.350
	jmp	.L881	#
.L880:
	.loc 1 4040 0 discriminator 2
	movq	-96(%rbp), %rbx	# target, iftmp.350
.L881:
	.loc 1 4040 0 discriminator 3
	movq	-88(%rbp), %rdx	# arglist, tmp150
	movq	-72(%rbp), %rax	# fn, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	build_function_call	#
	movl	-104(%rbp), %ecx	# modifier, tmp152
	movl	-100(%rbp), %edx	# tmode, tmp153
	movq	%rbx, %rsi	# iftmp.350,
	movq	%rax, %rdi	# D.20066,
	call	expand_expr	#
.L866:
	.loc 1 4043 0 is_stmt 1
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	c_expand_builtin_fprintf, .-c_expand_builtin_fprintf
	.globl	boolean_increment
	.type	boolean_increment, @function
boolean_increment:
.LFB73:
	.loc 1 4053 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# arg, arg
	.loc 1 4055 0
	movl	c_language(%rip), %eax	# c_language, c_language.352
	.loc 1 4057 0
	cmpl	$1, %eax	#, c_language.352
	jne	.L883	#,
	.loc 1 4057 0 is_stmt 0 discriminator 1
	movq	c_global_trees+136(%rip), %rax	# c_global_trees, iftmp.351
	jmp	.L884	#
.L883:
	.loc 1 4057 0 discriminator 2
	movq	c_global_trees+160(%rip), %rax	# c_global_trees, iftmp.351
.L884:
	.loc 1 4055 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.351, true_res
	.loc 1 4058 0
	movq	-32(%rbp), %rax	# arg, tmp73
	movq	%rax, %rdi	# tmp73,
	call	stabilize_reference	#
	movq	%rax, -32(%rbp)	# tmp74, arg
	.loc 1 4059 0
	movl	-20(%rbp), %eax	# code, code
	cmpl	$130, %eax	#, code
	je	.L886	#,
	cmpl	$130, %eax	#, code
	ja	.L887	#,
	cmpl	$129, %eax	#, code
	je	.L888	#,
	jmp	.L885	#
.L887:
	cmpl	$131, %eax	#, code
	je	.L889	#,
	cmpl	$132, %eax	#, code
	je	.L890	#,
	jmp	.L885	#
.L886:
	.loc 1 4062 0
	movq	-32(%rbp), %rax	# arg, tmp76
	movq	8(%rax), %rax	# arg_8->common.type, D.20073
	movq	-8(%rbp), %rcx	# true_res, tmp77
	movq	-32(%rbp), %rdx	# arg, tmp78
	movq	%rax, %rsi	# D.20073,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp79, val
	.loc 1 4063 0
	jmp	.L891	#
.L890:
	.loc 1 4065 0
	movq	-32(%rbp), %rax	# arg, tmp80
	movq	8(%rax), %rax	# arg_8->common.type, D.20073
	movq	-8(%rbp), %rcx	# true_res, tmp81
	movq	-32(%rbp), %rdx	# arg, tmp82
	movq	%rax, %rsi	# D.20073,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp83, val
	.loc 1 4066 0
	movq	-32(%rbp), %rax	# arg, tmp84
	movq	%rax, %rdi	# tmp84,
	call	save_expr	#
	movq	%rax, -32(%rbp)	# tmp85, arg
	.loc 1 4067 0
	movq	-32(%rbp), %rax	# arg, tmp86
	movq	8(%rax), %rax	# arg_14->common.type, D.20073
	movq	-32(%rbp), %rcx	# arg, tmp87
	movq	-16(%rbp), %rdx	# val, tmp88
	movq	%rax, %rsi	# D.20073,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp89, val
	.loc 1 4068 0
	movq	-32(%rbp), %rax	# arg, tmp90
	movq	8(%rax), %rax	# arg_14->common.type, D.20073
	movq	-16(%rbp), %rcx	# val, tmp91
	movq	-32(%rbp), %rdx	# arg, tmp92
	movq	%rax, %rsi	# D.20073,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp93, val
	.loc 1 4069 0
	jmp	.L891	#
.L888:
	.loc 1 4071 0
	movq	-32(%rbp), %rax	# arg, tmp94
	movq	%rax, %rdi	# tmp94,
	call	invert_truthvalue	#
	movq	%rax, %rcx	#, D.20073
	movq	-32(%rbp), %rax	# arg, tmp95
	movq	8(%rax), %rax	# arg_8->common.type, D.20073
	movq	-32(%rbp), %rdx	# arg, tmp96
	movq	%rax, %rsi	# D.20073,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp97, val
	.loc 1 4072 0
	jmp	.L891	#
.L889:
	.loc 1 4074 0
	movq	-32(%rbp), %rax	# arg, tmp98
	movq	%rax, %rdi	# tmp98,
	call	invert_truthvalue	#
	movq	%rax, %rcx	#, D.20073
	movq	-32(%rbp), %rax	# arg, tmp99
	movq	8(%rax), %rax	# arg_8->common.type, D.20073
	movq	-32(%rbp), %rdx	# arg, tmp100
	movq	%rax, %rsi	# D.20073,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp101, val
	.loc 1 4075 0
	movq	-32(%rbp), %rax	# arg, tmp102
	movq	%rax, %rdi	# tmp102,
	call	save_expr	#
	movq	%rax, -32(%rbp)	# tmp103, arg
	.loc 1 4076 0
	movq	-32(%rbp), %rax	# arg, tmp104
	movq	8(%rax), %rax	# arg_25->common.type, D.20073
	movq	-32(%rbp), %rcx	# arg, tmp105
	movq	-16(%rbp), %rdx	# val, tmp106
	movq	%rax, %rsi	# D.20073,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp107, val
	.loc 1 4077 0
	movq	-32(%rbp), %rax	# arg, tmp108
	movq	8(%rax), %rax	# arg_25->common.type, D.20073
	movq	-16(%rbp), %rcx	# val, tmp109
	movq	-32(%rbp), %rdx	# arg, tmp110
	movq	%rax, %rsi	# D.20073,
	movl	$47, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -16(%rbp)	# tmp111, val
	.loc 1 4078 0
	jmp	.L891	#
.L885:
	.loc 1 4080 0
	movl	$__FUNCTION__.14487, %edx	#,
	movl	$4080, %esi	#,
	movl	$.LC195, %edi	#,
	call	fancy_abort	#
.L891:
	.loc 1 4082 0
	movq	-16(%rbp), %rax	# val, tmp112
	movzbl	17(%rax), %edx	#, tmp115
	orl	$1, %edx	#, tmp116
	movb	%dl, 17(%rax)	# tmp116,
	.loc 1 4083 0
	movq	-16(%rbp), %rax	# val, D.20074
	.loc 1 4084 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	boolean_increment, .-boolean_increment
	.local	built_in_attributes
	.comm	built_in_attributes,592,32
	.local	c_attrs_initialized
	.comm	c_attrs_initialized,1,1
	.globl	c_common_init_options
	.type	c_common_init_options, @function
c_common_init_options:
.LFB74:
	.loc 1 4114 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# lang, lang
	.loc 1 4115 0
	movl	-4(%rbp), %eax	# lang, tmp62
	movl	%eax, c_language(%rip)	# tmp62, c_language
	.loc 1 4116 0
	cmpl	$0, -4(%rbp)	#, lang
	je	.L894	#,
	.loc 1 4116 0 is_stmt 0 discriminator 1
	cmpl	$1, -4(%rbp)	#, lang
	jne	.L895	#,
	.loc 1 4116 0 discriminator 3
	movl	$5, %eax	#, iftmp.354
	jmp	.L897	#
.L895:
	.loc 1 4116 0 discriminator 4
	movl	$7, %eax	#, iftmp.354
	jmp	.L897	#
.L894:
	.loc 1 4116 0 discriminator 2
	movl	$0, %eax	#, iftmp.353
.L897:
	.loc 1 4116 0 discriminator 5
	movl	%eax, %edi	# iftmp.353,
	call	cpp_create_reader	#
	movq	%rax, parse_in(%rip)	# parse_in.355, parse_in
	.loc 1 4120 0 is_stmt 1 discriminator 5
	movl	$-1, flag_bounds_check(%rip)	#, flag_bounds_check
	.loc 1 4121 0 discriminator 5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	c_common_init_options, .-c_common_init_options
	.section	.rodata
	.align 8
.LC226:
	.string	"-Wformat-y2k ignored without -Wformat"
	.align 8
.LC227:
	.string	"-Wformat-extra-args ignored without -Wformat"
	.align 8
.LC228:
	.string	"-Wformat-nonliteral ignored without -Wformat"
	.align 8
.LC229:
	.string	"-Wformat-security ignored without -Wformat"
	.align 8
.LC230:
	.string	"-Wmissing-format-attribute ignored without -Wformat"
	.text
	.globl	c_common_post_options
	.type	c_common_post_options, @function
c_common_post_options:
.LFB75:
	.loc 1 4126 0
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
	.loc 1 4127 0
	movq	parse_in(%rip), %rax	# parse_in, parse_in.356
	movq	%rax, %rdi	# parse_in.356,
	call	cpp_post_options	#
	.loc 1 4129 0
	movl	$1, flag_inline_trees(%rip)	#, flag_inline_trees
	.loc 1 4133 0
	movl	flag_instrument_function_entry_exit(%rip), %eax	# flag_instrument_function_entry_exit, flag_instrument_function_entry_exit.357
	testl	%eax, %eax	# flag_instrument_function_entry_exit.357
	jne	.L899	#,
	.loc 1 4135 0
	movl	flag_no_inline(%rip), %eax	# flag_no_inline, flag_no_inline.358
	testl	%eax, %eax	# flag_no_inline.358
	jne	.L900	#,
	.loc 1 4136 0
	movl	$1, flag_no_inline(%rip)	#, flag_no_inline
.L900:
	.loc 1 4137 0
	movl	flag_inline_functions(%rip), %eax	# flag_inline_functions, flag_inline_functions.359
	testl	%eax, %eax	# flag_inline_functions.359
	je	.L899	#,
	.loc 1 4139 0
	movl	$2, flag_inline_trees(%rip)	#, flag_inline_trees
	.loc 1 4140 0
	movl	$0, flag_inline_functions(%rip)	#, flag_inline_functions
.L899:
	.loc 1 4145 0
	movl	flag_bounds_check(%rip), %eax	# flag_bounds_check, flag_bounds_check.360
	cmpl	$-1, %eax	#, flag_bounds_check.360
	jne	.L901	#,
	.loc 1 4146 0
	movl	flag_bounded_pointers(%rip), %eax	# flag_bounded_pointers, flag_bounded_pointers.361
	movl	%eax, flag_bounds_check(%rip)	# flag_bounded_pointers.361, flag_bounds_check
.L901:
	.loc 1 4150 0
	movl	warn_format_y2k(%rip), %eax	# warn_format_y2k, warn_format_y2k.362
	testl	%eax, %eax	# warn_format_y2k.362
	je	.L902	#,
	.loc 1 4150 0 is_stmt 0 discriminator 1
	movl	warn_format(%rip), %eax	# warn_format, warn_format.363
	testl	%eax, %eax	# warn_format.363
	jne	.L902	#,
	.loc 1 4151 0 is_stmt 1
	movl	$.LC226, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L902:
	.loc 1 4152 0
	movl	warn_format_extra_args(%rip), %eax	# warn_format_extra_args, warn_format_extra_args.364
	testl	%eax, %eax	# warn_format_extra_args.364
	je	.L903	#,
	.loc 1 4152 0 is_stmt 0 discriminator 1
	movl	warn_format(%rip), %eax	# warn_format, warn_format.365
	testl	%eax, %eax	# warn_format.365
	jne	.L903	#,
	.loc 1 4153 0 is_stmt 1
	movl	$.LC227, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L903:
	.loc 1 4154 0
	movl	warn_format_nonliteral(%rip), %eax	# warn_format_nonliteral, warn_format_nonliteral.366
	testl	%eax, %eax	# warn_format_nonliteral.366
	je	.L904	#,
	.loc 1 4154 0 is_stmt 0 discriminator 1
	movl	warn_format(%rip), %eax	# warn_format, warn_format.367
	testl	%eax, %eax	# warn_format.367
	jne	.L904	#,
	.loc 1 4155 0 is_stmt 1
	movl	$.LC228, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L904:
	.loc 1 4156 0
	movl	warn_format_security(%rip), %eax	# warn_format_security, warn_format_security.368
	testl	%eax, %eax	# warn_format_security.368
	je	.L905	#,
	.loc 1 4156 0 is_stmt 0 discriminator 1
	movl	warn_format(%rip), %eax	# warn_format, warn_format.369
	testl	%eax, %eax	# warn_format.369
	jne	.L905	#,
	.loc 1 4157 0 is_stmt 1
	movl	$.LC229, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L905:
	.loc 1 4158 0
	movl	warn_missing_format_attribute(%rip), %eax	# warn_missing_format_attribute, warn_missing_format_attribute.370
	testl	%eax, %eax	# warn_missing_format_attribute.370
	je	.L906	#,
	.loc 1 4158 0 is_stmt 0 discriminator 1
	movl	warn_format(%rip), %eax	# warn_format, warn_format.371
	testl	%eax, %eax	# warn_format.371
	jne	.L906	#,
	.loc 1 4159 0 is_stmt 1
	movl	$.LC230, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L906:
	.loc 1 4163 0
	movq	global_dc(%rip), %rbx	# global_dc, global_dc.372
	movq	global_dc(%rip), %rax	# global_dc, global_dc.373
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.373_18].state.diagnostic_count, D.20076
	movl	%eax, %r12d	# D.20076, D.20077
	movq	parse_in(%rip), %rax	# parse_in, parse_in.374
	movq	%rax, %rdi	# parse_in.374,
	call	cpp_errors	#
	addl	%r12d, %eax	# D.20077, D.20077
	movl	%eax, 60(%rbx)	# D.20076, MEM[(struct output_buffer *)global_dc.372_17].state.diagnostic_count
	.loc 1 4164 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	c_common_post_options, .-c_common_post_options
	.globl	c_common_init
	.type	c_common_init, @function
c_common_init:
.LFB76:
	.loc 1 4170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	.loc 1 4173 0
	movq	-8(%rbp), %rax	# filename, tmp63
	movq	%rax, %rdi	# tmp63,
	call	init_c_lex	#
	movq	%rax, -8(%rbp)	# tmp64, filename
	.loc 1 4175 0
	call	init_pragma	#
	.loc 1 4177 0
	movzbl	c_attrs_initialized(%rip), %eax	# c_attrs_initialized, c_attrs_initialized.375
	xorl	$1, %eax	#, D.20083
	testb	%al, %al	# D.20083
	je	.L908	#,
	.loc 1 4178 0
	call	c_init_attributes	#
.L908:
	.loc 1 4180 0
	movq	-8(%rbp), %rax	# filename, D.20084
	.loc 1 4181 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	c_common_init, .-c_common_init
	.globl	c_common_finish
	.type	c_common_finish, @function
c_common_finish:
.LFB77:
	.loc 1 4186 0
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
	.loc 1 4187 0
	movq	parse_in(%rip), %rax	# parse_in, parse_in.376
	movq	%rax, %rdi	# parse_in.376,
	call	cpp_finish	#
	.loc 1 4191 0
	movq	global_dc(%rip), %rbx	# global_dc, global_dc.377
	movq	global_dc(%rip), %rax	# global_dc, global_dc.378
	movl	60(%rax), %eax	# MEM[(struct output_buffer *)global_dc.378_3].state.diagnostic_count, D.20085
	movl	%eax, %r12d	# D.20085, D.20086
	movq	parse_in(%rip), %rax	# parse_in, parse_in.379
	movq	%rax, %rdi	# parse_in.379,
	call	cpp_errors	#
	addl	%r12d, %eax	# D.20086, D.20086
	movl	%eax, 60(%rbx)	# D.20085, MEM[(struct output_buffer *)global_dc.377_2].state.diagnostic_count
	.loc 1 4192 0
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	c_common_finish, .-c_common_finish
	.section	.rodata
.LC231:
	.string	"scanf"
.LC232:
	.string	"strftime"
.LC233:
	.string	"strfmon"
.LC234:
	.string	"fprintf"
.LC235:
	.string	"sprintf"
.LC236:
	.string	"fscanf"
.LC237:
	.string	"sscanf"
.LC238:
	.string	"vprintf"
.LC239:
	.string	"vfprintf"
.LC240:
	.string	"vsprintf"
.LC241:
	.string	"snprintf"
.LC242:
	.string	"vsnprintf"
.LC243:
	.string	"vscanf"
.LC244:
	.string	"vfscanf"
.LC245:
	.string	"vsscanf"
.LC246:
	.string	"gettext"
.LC247:
	.string	"dgettext"
.LC248:
	.string	"dcgettext"
.LC249:
	.string	"printf_unlocked"
.LC250:
	.string	"fprintf_unlocked"
	.text
	.type	c_init_attributes, @function
c_init_attributes:
.LFB78:
	.loc 1 4196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.file 4 "builtin-attrs.def"
	.loc 4 52 0
	movq	$0, built_in_attributes(%rip)	#, built_in_attributes
	.loc 4 61 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, built_in_attributes+8(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+8(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+16(%rip)	# D.20087, built_in_attributes
	.loc 4 62 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, built_in_attributes+24(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+24(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+32(%rip)	# D.20087, built_in_attributes
	.loc 4 63 0
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, built_in_attributes+40(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+40(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+48(%rip)	# D.20087, built_in_attributes
	.loc 4 64 0
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, built_in_attributes+56(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+56(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+64(%rip)	# D.20087, built_in_attributes
	.loc 4 65 0
	movl	$0, %esi	#,
	movl	$4, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, built_in_attributes+72(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+72(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+80(%rip)	# D.20087, built_in_attributes
	.loc 4 72 0
	movq	built_in_attributes+16(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+24(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+88(%rip)	# D.20087, built_in_attributes
	.loc 4 73 0
	movq	built_in_attributes+48(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+24(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+96(%rip)	# D.20087, built_in_attributes
	.loc 4 74 0
	movq	built_in_attributes+16(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+40(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+104(%rip)	# D.20087, built_in_attributes
	.loc 4 75 0
	movq	built_in_attributes+64(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+40(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+112(%rip)	# D.20087, built_in_attributes
	.loc 4 76 0
	movq	built_in_attributes+16(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+56(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+120(%rip)	# D.20087, built_in_attributes
	.loc 4 77 0
	movq	built_in_attributes+80(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+56(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+128(%rip)	# D.20087, built_in_attributes
	.loc 4 80 0
	movl	$.LC222, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+136(%rip)	# D.20087, built_in_attributes
	.loc 4 81 0
	movl	$.LC231, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+144(%rip)	# D.20087, built_in_attributes
	.loc 4 82 0
	movl	$.LC232, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+152(%rip)	# D.20087, built_in_attributes
	.loc 4 83 0
	movl	$.LC233, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+160(%rip)	# D.20087, built_in_attributes
	.loc 4 85 0
	movl	$.LC52, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+168(%rip)	# D.20087, built_in_attributes
	.loc 4 86 0
	movl	$.LC53, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+176(%rip)	# D.20087, built_in_attributes
	.loc 4 94 0
	movq	built_in_attributes+88(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+184(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+184(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+192(%rip)	# D.20087, built_in_attributes
	.loc 4 95 0
	movq	built_in_attributes+96(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+200(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+200(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+208(%rip)	# D.20087, built_in_attributes
	.loc 4 96 0
	movq	built_in_attributes+104(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+216(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+216(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+224(%rip)	# D.20087, built_in_attributes
	.loc 4 97 0
	movq	built_in_attributes+112(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+232(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+232(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+240(%rip)	# D.20087, built_in_attributes
	.loc 4 98 0
	movq	built_in_attributes+120(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+248(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+248(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+256(%rip)	# D.20087, built_in_attributes
	.loc 4 99 0
	movq	built_in_attributes+128(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+136(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+264(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+264(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+272(%rip)	# D.20087, built_in_attributes
	.loc 4 100 0
	movq	built_in_attributes+88(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+144(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+280(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+280(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+288(%rip)	# D.20087, built_in_attributes
	.loc 4 101 0
	movq	built_in_attributes+96(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+144(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+296(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+296(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+304(%rip)	# D.20087, built_in_attributes
	.loc 4 102 0
	movq	built_in_attributes+104(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+144(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+312(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+312(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+320(%rip)	# D.20087, built_in_attributes
	.loc 4 103 0
	movq	built_in_attributes+112(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+144(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+328(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+328(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+336(%rip)	# D.20087, built_in_attributes
	.loc 4 104 0
	movq	built_in_attributes+120(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+152(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+344(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+344(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+352(%rip)	# D.20087, built_in_attributes
	.loc 4 105 0
	movq	built_in_attributes+128(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+160(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+360(%rip)	# D.20087, built_in_attributes
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+360(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+168(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+368(%rip)	# D.20087, built_in_attributes
	.loc 4 108 0
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+32(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+176(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+376(%rip)	# D.20087, built_in_attributes
	.loc 4 109 0
	movq	built_in_attributes(%rip), %rdx	# built_in_attributes, D.20087
	movq	built_in_attributes+48(%rip), %rcx	# built_in_attributes, D.20087
	movq	built_in_attributes+176(%rip), %rax	# built_in_attributes, D.20087
	movq	%rcx, %rsi	# D.20087,
	movq	%rax, %rdi	# D.20087,
	call	tree_cons	#
	movq	%rax, built_in_attributes+384(%rip)	# D.20087, built_in_attributes
	.loc 4 126 0
	movl	$.LC143, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+392(%rip)	# D.20087, built_in_attributes
	.loc 4 127 0
	movl	$.LC147, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+400(%rip)	# D.20087, built_in_attributes
	.loc 4 128 0
	movl	$.LC150, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+408(%rip)	# D.20087, built_in_attributes
	.loc 4 129 0
	movl	$.LC154, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+416(%rip)	# D.20087, built_in_attributes
	.loc 4 133 0
	movl	$.LC222, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+424(%rip)	# D.20087, built_in_attributes
	.loc 4 134 0
	movl	$.LC234, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+432(%rip)	# D.20087, built_in_attributes
	.loc 4 135 0
	movl	$.LC235, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+440(%rip)	# D.20087, built_in_attributes
	.loc 4 136 0
	movl	$.LC231, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+448(%rip)	# D.20087, built_in_attributes
	.loc 4 137 0
	movl	$.LC236, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+456(%rip)	# D.20087, built_in_attributes
	.loc 4 138 0
	movl	$.LC237, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+464(%rip)	# D.20087, built_in_attributes
	.loc 4 139 0
	movl	$.LC238, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+472(%rip)	# D.20087, built_in_attributes
	.loc 4 140 0
	movl	$.LC239, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+480(%rip)	# D.20087, built_in_attributes
	.loc 4 141 0
	movl	$.LC240, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+488(%rip)	# D.20087, built_in_attributes
	.loc 4 142 0
	movl	$.LC232, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+496(%rip)	# D.20087, built_in_attributes
	.loc 4 150 0
	movl	$.LC241, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+504(%rip)	# D.20087, built_in_attributes
	.loc 4 151 0
	movl	$.LC242, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+512(%rip)	# D.20087, built_in_attributes
	.loc 4 152 0
	movl	$.LC243, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+520(%rip)	# D.20087, built_in_attributes
	.loc 4 153 0
	movl	$.LC244, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+528(%rip)	# D.20087, built_in_attributes
	.loc 4 154 0
	movl	$.LC245, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+536(%rip)	# D.20087, built_in_attributes
	.loc 4 162 0
	movl	$.LC246, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+544(%rip)	# D.20087, built_in_attributes
	.loc 4 163 0
	movl	$.LC247, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+552(%rip)	# D.20087, built_in_attributes
	.loc 4 164 0
	movl	$.LC248, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+560(%rip)	# D.20087, built_in_attributes
	.loc 4 166 0
	movl	$.LC233, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+568(%rip)	# D.20087, built_in_attributes
	.loc 4 168 0
	movl	$.LC249, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+576(%rip)	# D.20087, built_in_attributes
	.loc 4 169 0
	movl	$.LC250, %edi	#,
	call	get_identifier	#
	movq	%rax, built_in_attributes+584(%rip)	# D.20087, built_in_attributes
	.loc 1 4216 0
	movl	$74, %esi	#,
	movl	$built_in_attributes, %edi	#,
	call	ggc_add_tree_root	#
	.loc 1 4217 0
	movb	$1, c_attrs_initialized(%rip)	#, c_attrs_initialized
	.loc 1 4218 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	c_init_attributes, .-c_init_attributes
	.globl	c_common_insert_default_attributes
	.type	c_common_insert_default_attributes, @function
c_common_insert_default_attributes:
.LFB79:
	.loc 1 4225 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 4226 0
	movq	-24(%rbp), %rax	# decl, decl.380
	movq	72(%rax), %rax	# decl.380_1->decl.name, tmp149
	movq	%rax, -8(%rbp)	# tmp149, name
	.loc 1 4228 0
	movzbl	c_attrs_initialized(%rip), %eax	# c_attrs_initialized, c_attrs_initialized.381
	xorl	$1, %eax	#, D.20108
	testb	%al, %al	# D.20108
	je	.L913	#,
	.loc 1 4229 0
	call	c_init_attributes	#
.L913:
	.loc 4 126 0
	movq	built_in_attributes+392(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L914	#,
	.loc 4 126 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+208(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp150
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp150,
	call	decl_attributes	#
.L914:
	.loc 4 127 0 is_stmt 1
	movq	built_in_attributes+400(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L915	#,
	.loc 4 127 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+240(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp151
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp151,
	call	decl_attributes	#
.L915:
	.loc 4 128 0 is_stmt 1
	movq	built_in_attributes+408(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L916	#,
	.loc 4 128 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+208(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp152
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp152,
	call	decl_attributes	#
.L916:
	.loc 4 129 0 is_stmt 1
	movq	built_in_attributes+416(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L917	#,
	.loc 4 129 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+240(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp153
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp153,
	call	decl_attributes	#
.L917:
	.loc 4 133 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.382
	testl	%eax, %eax	# flag_hosted.382
	je	.L918	#,
	.loc 4 133 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+424(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L918	#,
	movq	built_in_attributes+208(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp154
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp154,
	call	decl_attributes	#
.L918:
	.loc 4 134 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.383
	testl	%eax, %eax	# flag_hosted.383
	je	.L919	#,
	.loc 4 134 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+432(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L919	#,
	movq	built_in_attributes+240(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp155
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp155,
	call	decl_attributes	#
.L919:
	.loc 4 135 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.384
	testl	%eax, %eax	# flag_hosted.384
	je	.L920	#,
	.loc 4 135 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+440(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L920	#,
	movq	built_in_attributes+240(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp156
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp156,
	call	decl_attributes	#
.L920:
	.loc 4 136 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.385
	testl	%eax, %eax	# flag_hosted.385
	je	.L921	#,
	.loc 4 136 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+448(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L921	#,
	movq	built_in_attributes+304(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp157
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp157,
	call	decl_attributes	#
.L921:
	.loc 4 137 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.386
	testl	%eax, %eax	# flag_hosted.386
	je	.L922	#,
	.loc 4 137 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+456(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L922	#,
	movq	built_in_attributes+336(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp158
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp158,
	call	decl_attributes	#
.L922:
	.loc 4 138 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.387
	testl	%eax, %eax	# flag_hosted.387
	je	.L923	#,
	.loc 4 138 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+464(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L923	#,
	movq	built_in_attributes+336(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp159
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp159,
	call	decl_attributes	#
.L923:
	.loc 4 139 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.388
	testl	%eax, %eax	# flag_hosted.388
	je	.L924	#,
	.loc 4 139 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+472(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L924	#,
	movq	built_in_attributes+192(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp160
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp160,
	call	decl_attributes	#
.L924:
	.loc 4 140 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.389
	testl	%eax, %eax	# flag_hosted.389
	je	.L925	#,
	.loc 4 140 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+480(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L925	#,
	movq	built_in_attributes+224(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp161
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp161,
	call	decl_attributes	#
.L925:
	.loc 4 141 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.390
	testl	%eax, %eax	# flag_hosted.390
	je	.L926	#,
	.loc 4 141 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+488(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L926	#,
	movq	built_in_attributes+224(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp162
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp162,
	call	decl_attributes	#
.L926:
	.loc 4 142 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.391
	testl	%eax, %eax	# flag_hosted.391
	je	.L927	#,
	.loc 4 142 0 is_stmt 0 discriminator 1
	movq	built_in_attributes+496(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L927	#,
	movq	built_in_attributes+352(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp163
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp163,
	call	decl_attributes	#
.L927:
	.loc 4 150 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.392
	testl	%eax, %eax	# flag_hosted.392
	je	.L928	#,
	.loc 4 150 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.393
	testl	%eax, %eax	# flag_isoc99.393
	jne	.L929	#,
	.loc 4 150 0 discriminator 2
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.394
	testl	%eax, %eax	# flag_noniso_default_format_attributes.394
	je	.L928	#,
.L929:
	.loc 4 150 0 discriminator 1
	movq	built_in_attributes+504(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L928	#,
	movq	built_in_attributes+272(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp164
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp164,
	call	decl_attributes	#
.L928:
	.loc 4 151 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.395
	testl	%eax, %eax	# flag_hosted.395
	je	.L930	#,
	.loc 4 151 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.396
	testl	%eax, %eax	# flag_isoc99.396
	jne	.L931	#,
	.loc 4 151 0 discriminator 2
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.397
	testl	%eax, %eax	# flag_noniso_default_format_attributes.397
	je	.L930	#,
.L931:
	.loc 4 151 0 discriminator 1
	movq	built_in_attributes+512(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L930	#,
	movq	built_in_attributes+256(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp165
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp165,
	call	decl_attributes	#
.L930:
	.loc 4 152 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.398
	testl	%eax, %eax	# flag_hosted.398
	je	.L932	#,
	.loc 4 152 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.399
	testl	%eax, %eax	# flag_isoc99.399
	jne	.L933	#,
	.loc 4 152 0 discriminator 2
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.400
	testl	%eax, %eax	# flag_noniso_default_format_attributes.400
	je	.L932	#,
.L933:
	.loc 4 152 0 discriminator 1
	movq	built_in_attributes+520(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L932	#,
	movq	built_in_attributes+288(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp166
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp166,
	call	decl_attributes	#
.L932:
	.loc 4 153 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.401
	testl	%eax, %eax	# flag_hosted.401
	je	.L934	#,
	.loc 4 153 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.402
	testl	%eax, %eax	# flag_isoc99.402
	jne	.L935	#,
	.loc 4 153 0 discriminator 2
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.403
	testl	%eax, %eax	# flag_noniso_default_format_attributes.403
	je	.L934	#,
.L935:
	.loc 4 153 0 discriminator 1
	movq	built_in_attributes+528(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L934	#,
	movq	built_in_attributes+320(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp167
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp167,
	call	decl_attributes	#
.L934:
	.loc 4 154 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.404
	testl	%eax, %eax	# flag_hosted.404
	je	.L936	#,
	.loc 4 154 0 is_stmt 0 discriminator 1
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.405
	testl	%eax, %eax	# flag_isoc99.405
	jne	.L937	#,
	.loc 4 154 0 discriminator 2
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.406
	testl	%eax, %eax	# flag_noniso_default_format_attributes.406
	je	.L936	#,
.L937:
	.loc 4 154 0 discriminator 1
	movq	built_in_attributes+536(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L936	#,
	movq	built_in_attributes+320(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp168
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp168,
	call	decl_attributes	#
.L936:
	.loc 4 162 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.407
	testl	%eax, %eax	# flag_hosted.407
	je	.L938	#,
	.loc 4 162 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.408
	testl	%eax, %eax	# flag_noniso_default_format_attributes.408
	je	.L938	#,
	movq	built_in_attributes+544(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L938	#,
	movq	built_in_attributes+376(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp169
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp169,
	call	decl_attributes	#
.L938:
	.loc 4 163 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.409
	testl	%eax, %eax	# flag_hosted.409
	je	.L939	#,
	.loc 4 163 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.410
	testl	%eax, %eax	# flag_noniso_default_format_attributes.410
	je	.L939	#,
	movq	built_in_attributes+552(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L939	#,
	movq	built_in_attributes+384(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp170
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp170,
	call	decl_attributes	#
.L939:
	.loc 4 164 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.411
	testl	%eax, %eax	# flag_hosted.411
	je	.L940	#,
	.loc 4 164 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.412
	testl	%eax, %eax	# flag_noniso_default_format_attributes.412
	je	.L940	#,
	movq	built_in_attributes+560(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L940	#,
	movq	built_in_attributes+384(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp171
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp171,
	call	decl_attributes	#
.L940:
	.loc 4 166 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.413
	testl	%eax, %eax	# flag_hosted.413
	je	.L941	#,
	.loc 4 166 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.414
	testl	%eax, %eax	# flag_noniso_default_format_attributes.414
	je	.L941	#,
	movq	built_in_attributes+568(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L941	#,
	movq	built_in_attributes+368(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp172
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp172,
	call	decl_attributes	#
.L941:
	.loc 4 168 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.415
	testl	%eax, %eax	# flag_hosted.415
	je	.L942	#,
	.loc 4 168 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.416
	testl	%eax, %eax	# flag_noniso_default_format_attributes.416
	je	.L942	#,
	movq	built_in_attributes+576(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L942	#,
	movq	built_in_attributes+208(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp173
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp173,
	call	decl_attributes	#
.L942:
	.loc 4 169 0 is_stmt 1
	movl	flag_hosted(%rip), %eax	# flag_hosted, flag_hosted.417
	testl	%eax, %eax	# flag_hosted.417
	je	.L912	#,
	.loc 4 169 0 is_stmt 0 discriminator 1
	movl	flag_noniso_default_format_attributes(%rip), %eax	# flag_noniso_default_format_attributes, flag_noniso_default_format_attributes.418
	testl	%eax, %eax	# flag_noniso_default_format_attributes.418
	je	.L912	#,
	movq	built_in_attributes+584(%rip), %rax	# built_in_attributes, D.20109
	cmpq	-8(%rbp), %rax	# name, D.20109
	jne	.L912	#,
	movq	built_in_attributes+240(%rip), %rcx	# built_in_attributes, D.20109
	leaq	-24(%rbp), %rax	#, tmp174
	movl	$16, %edx	#,
	movq	%rcx, %rsi	# D.20109,
	movq	%rax, %rdi	# tmp174,
	call	decl_attributes	#
.L912:
	.loc 1 4245 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	c_common_insert_default_attributes, .-c_common_insert_default_attributes
	.section	.rodata
	.align 8
.LC251:
	.string	"declaration of `%s' shadows %s"
.LC252:
	.string	"shadowed declaration is here"
	.text
	.globl	shadow_warning
	.type	shadow_warning, @function
shadow_warning:
.LFB80:
	.loc 1 4253 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# msgid, msgid
	movq	%rsi, -16(%rbp)	# name, name
	movq	%rdx, -24(%rbp)	# decl, decl
	.loc 1 4254 0
	movq	-16(%rbp), %rax	# name, tmp62
	movq	32(%rax), %rax	# name_1(D)->identifier.id.str, D.20110
	movq	-8(%rbp), %rdx	# msgid, tmp63
	movq	%rax, %rsi	# D.20110,
	movl	$.LC251, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	.loc 1 4255 0
	movq	-24(%rbp), %rax	# decl, tmp64
	movl	32(%rax), %ecx	# decl_4(D)->decl.linenum, D.20111
	movq	-24(%rbp), %rax	# decl, tmp65
	movq	24(%rax), %rax	# decl_4(D)->decl.filename, D.20112
	movl	$.LC252, %edx	#,
	movl	%ecx, %esi	# D.20111,
	movq	%rax, %rdi	# D.20112,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
	.loc 1 4258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	shadow_warning, .-shadow_warning
	.section	.rodata
	.type	__FUNCTION__.14395, @object
	.size	__FUNCTION__.14395, 14
__FUNCTION__.14395:
	.string	"c_expand_expr"
	.align 16
	.type	__FUNCTION__.14487, @object
	.size	__FUNCTION__.14487, 18
__FUNCTION__.14487:
	.string	"boolean_increment"
	.text
.Letext0:
	.file 5 "rtl.h"
	.file 6 "config.h"
	.file 7 "tree.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 9 "<built-in>"
	.file 10 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 12 "/usr/include/stdio.h"
	.file 13 "/usr/include/libio.h"
	.file 14 "machmode.h"
	.file 15 "real.h"
	.file 16 "obstack.h"
	.file 17 "hashtable.h"
	.file 18 "c-pragma.h"
	.file 19 "varray.h"
	.file 20 "expr.h"
	.file 21 "splay-tree.h"
	.file 22 "cpplib.h"
	.file 23 "c-common.h"
	.file 24 "diagnostic.h"
	.file 25 "target.h"
	.file 26 "i386.h"
	.file 27 "flags.h"
	.file 28 "ggc.h"
	.file 29 "tree-inline.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6c08
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1533
	.byte	0x1
	.long	.LASF1534
	.long	.LASF1535
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x5
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x5
	.byte	0x7d
	.long	0x249
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x5
	.byte	0x80
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x5
	.byte	0x87
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x5
	.byte	0x8a
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x5
	.byte	0x95
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x5
	.byte	0x9d
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x5
	.byte	0xaf
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x5
	.byte	0xb6
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x5
	.byte	0xbb
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x5
	.byte	0xc4
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x5
	.byte	0xc9
	.long	0x21be
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x6
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x5
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xdf
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xe0
	.long	0x21ce
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x6
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF780
	.byte	0xd0
	.byte	0x7
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x7
	.value	0x746
	.long	0xd03
	.uleb128 0xa
	.long	.LASF17
	.byte	0x7
	.value	0x747
	.long	0xec3
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.value	0x748
	.long	0xf26
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.value	0x749
	.long	0xfdf
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.value	0x74a
	.long	0xf5b
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.value	0x74b
	.long	0xf9d
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.value	0x74c
	.long	0x1162
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.value	0x74d
	.long	0x15a0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.value	0x74e
	.long	0x12f1
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.value	0x74f
	.long	0x1189
	.uleb128 0xb
	.string	"vec"
	.byte	0x7
	.value	0x750
	.long	0x11be
	.uleb128 0xb
	.string	"exp"
	.byte	0x7
	.value	0x751
	.long	0x1201
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.value	0x752
	.long	0x1236
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
	.uleb128 0x7
	.long	.LASF28
	.byte	0x8
	.byte	0x28
	.long	0x1fc
	.uleb128 0xf
	.long	0x20c
	.long	0x20c
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x18
	.byte	0x9
	.byte	0
	.long	0x249
	.uleb128 0x8
	.long	.LASF30
	.byte	0x9
	.byte	0
	.long	0x249
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x9
	.byte	0
	.long	0x249
	.byte	0x4
	.uleb128 0x8
	.long	.LASF32
	.byte	0x9
	.byte	0
	.long	0x250
	.byte	0x8
	.uleb128 0x8
	.long	.LASF33
	.byte	0x9
	.byte	0
	.long	0x250
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF34
	.uleb128 0x11
	.byte	0x8
	.uleb128 0x7
	.long	.LASF35
	.byte	0x8
	.byte	0x62
	.long	0x1f1
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF36
	.uleb128 0x7
	.long	.LASF37
	.byte	0xa
	.byte	0xd4
	.long	0x26f
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF38
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF39
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF40
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF41
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF42
	.uleb128 0x7
	.long	.LASF43
	.byte	0xb
	.byte	0x8c
	.long	0x25d
	.uleb128 0x7
	.long	.LASF44
	.byte	0xb
	.byte	0x8d
	.long	0x25d
	.uleb128 0x3
	.byte	0x8
	.long	0x2ae
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF45
	.uleb128 0x7
	.long	.LASF46
	.byte	0xc
	.byte	0x30
	.long	0x2c0
	.uleb128 0x4
	.long	.LASF47
	.byte	0xd8
	.byte	0xd
	.byte	0xf6
	.long	0x441
	.uleb128 0x8
	.long	.LASF48
	.byte	0xd
	.byte	0xf7
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0xd
	.byte	0xfc
	.long	0x2a8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0xd
	.byte	0xfd
	.long	0x2a8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF51
	.byte	0xd
	.byte	0xfe
	.long	0x2a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF52
	.byte	0xd
	.byte	0xff
	.long	0x2a8
	.byte	0x20
	.uleb128 0x12
	.long	.LASF53
	.byte	0xd
	.value	0x100
	.long	0x2a8
	.byte	0x28
	.uleb128 0x12
	.long	.LASF54
	.byte	0xd
	.value	0x101
	.long	0x2a8
	.byte	0x30
	.uleb128 0x12
	.long	.LASF55
	.byte	0xd
	.value	0x102
	.long	0x2a8
	.byte	0x38
	.uleb128 0x12
	.long	.LASF56
	.byte	0xd
	.value	0x103
	.long	0x2a8
	.byte	0x40
	.uleb128 0x12
	.long	.LASF57
	.byte	0xd
	.value	0x105
	.long	0x2a8
	.byte	0x48
	.uleb128 0x12
	.long	.LASF58
	.byte	0xd
	.value	0x106
	.long	0x2a8
	.byte	0x50
	.uleb128 0x12
	.long	.LASF59
	.byte	0xd
	.value	0x107
	.long	0x2a8
	.byte	0x58
	.uleb128 0x12
	.long	.LASF60
	.byte	0xd
	.value	0x109
	.long	0x489
	.byte	0x60
	.uleb128 0x12
	.long	.LASF61
	.byte	0xd
	.value	0x10b
	.long	0x48f
	.byte	0x68
	.uleb128 0x12
	.long	.LASF62
	.byte	0xd
	.value	0x10d
	.long	0x1e3
	.byte	0x70
	.uleb128 0x12
	.long	.LASF63
	.byte	0xd
	.value	0x111
	.long	0x1e3
	.byte	0x74
	.uleb128 0x12
	.long	.LASF64
	.byte	0xd
	.value	0x113
	.long	0x292
	.byte	0x78
	.uleb128 0x12
	.long	.LASF65
	.byte	0xd
	.value	0x117
	.long	0x27d
	.byte	0x80
	.uleb128 0x12
	.long	.LASF66
	.byte	0xd
	.value	0x118
	.long	0x284
	.byte	0x82
	.uleb128 0x12
	.long	.LASF67
	.byte	0xd
	.value	0x119
	.long	0x495
	.byte	0x83
	.uleb128 0x12
	.long	.LASF68
	.byte	0xd
	.value	0x11d
	.long	0x4a5
	.byte	0x88
	.uleb128 0x12
	.long	.LASF69
	.byte	0xd
	.value	0x126
	.long	0x29d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF70
	.byte	0xd
	.value	0x12f
	.long	0x250
	.byte	0x98
	.uleb128 0x12
	.long	.LASF71
	.byte	0xd
	.value	0x130
	.long	0x250
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF72
	.byte	0xd
	.value	0x131
	.long	0x250
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF73
	.byte	0xd
	.value	0x132
	.long	0x250
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF74
	.byte	0xd
	.value	0x133
	.long	0x264
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF75
	.byte	0xd
	.value	0x135
	.long	0x1e3
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF76
	.byte	0xd
	.value	0x137
	.long	0x4ab
	.byte	0xc4
	.byte	0
	.uleb128 0xf
	.long	0x2ae
	.long	0x451
	.uleb128 0x10
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF1536
	.byte	0xd
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF77
	.byte	0x18
	.byte	0xd
	.byte	0xa1
	.long	0x489
	.uleb128 0x8
	.long	.LASF78
	.byte	0xd
	.byte	0xa2
	.long	0x489
	.byte	0
	.uleb128 0x8
	.long	.LASF79
	.byte	0xd
	.byte	0xa3
	.long	0x48f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF80
	.byte	0xd
	.byte	0xa7
	.long	0x1e3
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x458
	.uleb128 0x3
	.byte	0x8
	.long	0x2c0
	.uleb128 0xf
	.long	0x2ae
	.long	0x4a5
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x451
	.uleb128 0xf
	.long	0x2ae
	.long	0x4bb
	.uleb128 0x10
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c1
	.uleb128 0xc
	.long	0x2ae
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF81
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF82
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x14
	.long	.LASF143
	.byte	0x4
	.byte	0xe
	.byte	0x1d
	.long	0x64f
	.uleb128 0x15
	.long	.LASF83
	.sleb128 0
	.uleb128 0x15
	.long	.LASF84
	.sleb128 1
	.uleb128 0x15
	.long	.LASF85
	.sleb128 2
	.uleb128 0x15
	.long	.LASF86
	.sleb128 3
	.uleb128 0x15
	.long	.LASF87
	.sleb128 4
	.uleb128 0x15
	.long	.LASF88
	.sleb128 5
	.uleb128 0x15
	.long	.LASF89
	.sleb128 6
	.uleb128 0x15
	.long	.LASF90
	.sleb128 7
	.uleb128 0x15
	.long	.LASF91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF92
	.sleb128 9
	.uleb128 0x15
	.long	.LASF93
	.sleb128 10
	.uleb128 0x15
	.long	.LASF94
	.sleb128 11
	.uleb128 0x15
	.long	.LASF95
	.sleb128 12
	.uleb128 0x15
	.long	.LASF96
	.sleb128 13
	.uleb128 0x15
	.long	.LASF97
	.sleb128 14
	.uleb128 0x15
	.long	.LASF98
	.sleb128 15
	.uleb128 0x15
	.long	.LASF99
	.sleb128 16
	.uleb128 0x15
	.long	.LASF100
	.sleb128 17
	.uleb128 0x15
	.long	.LASF101
	.sleb128 18
	.uleb128 0x15
	.long	.LASF102
	.sleb128 19
	.uleb128 0x15
	.long	.LASF103
	.sleb128 20
	.uleb128 0x15
	.long	.LASF104
	.sleb128 21
	.uleb128 0x15
	.long	.LASF105
	.sleb128 22
	.uleb128 0x15
	.long	.LASF106
	.sleb128 23
	.uleb128 0x15
	.long	.LASF107
	.sleb128 24
	.uleb128 0x15
	.long	.LASF108
	.sleb128 25
	.uleb128 0x15
	.long	.LASF109
	.sleb128 26
	.uleb128 0x15
	.long	.LASF110
	.sleb128 27
	.uleb128 0x15
	.long	.LASF111
	.sleb128 28
	.uleb128 0x15
	.long	.LASF112
	.sleb128 29
	.uleb128 0x15
	.long	.LASF113
	.sleb128 30
	.uleb128 0x15
	.long	.LASF114
	.sleb128 31
	.uleb128 0x15
	.long	.LASF115
	.sleb128 32
	.uleb128 0x15
	.long	.LASF116
	.sleb128 33
	.uleb128 0x15
	.long	.LASF117
	.sleb128 34
	.uleb128 0x15
	.long	.LASF118
	.sleb128 35
	.uleb128 0x15
	.long	.LASF119
	.sleb128 36
	.uleb128 0x15
	.long	.LASF120
	.sleb128 37
	.uleb128 0x15
	.long	.LASF121
	.sleb128 38
	.uleb128 0x15
	.long	.LASF122
	.sleb128 39
	.uleb128 0x15
	.long	.LASF123
	.sleb128 40
	.uleb128 0x15
	.long	.LASF124
	.sleb128 41
	.uleb128 0x15
	.long	.LASF125
	.sleb128 42
	.uleb128 0x15
	.long	.LASF126
	.sleb128 43
	.uleb128 0x15
	.long	.LASF127
	.sleb128 44
	.uleb128 0x15
	.long	.LASF128
	.sleb128 45
	.uleb128 0x15
	.long	.LASF129
	.sleb128 46
	.uleb128 0x15
	.long	.LASF130
	.sleb128 47
	.uleb128 0x15
	.long	.LASF131
	.sleb128 48
	.uleb128 0x15
	.long	.LASF132
	.sleb128 49
	.uleb128 0x15
	.long	.LASF133
	.sleb128 50
	.uleb128 0x15
	.long	.LASF134
	.sleb128 51
	.uleb128 0x15
	.long	.LASF135
	.sleb128 52
	.uleb128 0x15
	.long	.LASF136
	.sleb128 53
	.uleb128 0x15
	.long	.LASF137
	.sleb128 54
	.uleb128 0x15
	.long	.LASF138
	.sleb128 55
	.uleb128 0x15
	.long	.LASF139
	.sleb128 56
	.uleb128 0x15
	.long	.LASF140
	.sleb128 57
	.uleb128 0x15
	.long	.LASF141
	.sleb128 58
	.uleb128 0x15
	.long	.LASF142
	.sleb128 59
	.byte	0
	.uleb128 0x14
	.long	.LASF144
	.byte	0x4
	.byte	0xe
	.byte	0x2c
	.long	0x698
	.uleb128 0x15
	.long	.LASF145
	.sleb128 0
	.uleb128 0x15
	.long	.LASF146
	.sleb128 1
	.uleb128 0x15
	.long	.LASF147
	.sleb128 2
	.uleb128 0x15
	.long	.LASF148
	.sleb128 3
	.uleb128 0x15
	.long	.LASF149
	.sleb128 4
	.uleb128 0x15
	.long	.LASF150
	.sleb128 5
	.uleb128 0x15
	.long	.LASF151
	.sleb128 6
	.uleb128 0x15
	.long	.LASF152
	.sleb128 7
	.uleb128 0x15
	.long	.LASF153
	.sleb128 8
	.uleb128 0x15
	.long	.LASF154
	.sleb128 9
	.byte	0
	.uleb128 0x14
	.long	.LASF155
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.long	0xa71
	.uleb128 0x15
	.long	.LASF156
	.sleb128 0
	.uleb128 0x15
	.long	.LASF157
	.sleb128 1
	.uleb128 0x15
	.long	.LASF158
	.sleb128 2
	.uleb128 0x15
	.long	.LASF159
	.sleb128 3
	.uleb128 0x15
	.long	.LASF160
	.sleb128 4
	.uleb128 0x15
	.long	.LASF161
	.sleb128 5
	.uleb128 0x15
	.long	.LASF162
	.sleb128 6
	.uleb128 0x15
	.long	.LASF163
	.sleb128 7
	.uleb128 0x15
	.long	.LASF164
	.sleb128 8
	.uleb128 0x15
	.long	.LASF165
	.sleb128 9
	.uleb128 0x15
	.long	.LASF166
	.sleb128 10
	.uleb128 0x15
	.long	.LASF167
	.sleb128 11
	.uleb128 0x15
	.long	.LASF168
	.sleb128 12
	.uleb128 0x15
	.long	.LASF169
	.sleb128 13
	.uleb128 0x15
	.long	.LASF170
	.sleb128 14
	.uleb128 0x15
	.long	.LASF171
	.sleb128 15
	.uleb128 0x15
	.long	.LASF172
	.sleb128 16
	.uleb128 0x15
	.long	.LASF173
	.sleb128 17
	.uleb128 0x15
	.long	.LASF174
	.sleb128 18
	.uleb128 0x15
	.long	.LASF175
	.sleb128 19
	.uleb128 0x15
	.long	.LASF176
	.sleb128 20
	.uleb128 0x15
	.long	.LASF177
	.sleb128 21
	.uleb128 0x15
	.long	.LASF178
	.sleb128 22
	.uleb128 0x15
	.long	.LASF179
	.sleb128 23
	.uleb128 0x15
	.long	.LASF180
	.sleb128 24
	.uleb128 0x15
	.long	.LASF181
	.sleb128 25
	.uleb128 0x15
	.long	.LASF182
	.sleb128 26
	.uleb128 0x15
	.long	.LASF183
	.sleb128 27
	.uleb128 0x15
	.long	.LASF184
	.sleb128 28
	.uleb128 0x15
	.long	.LASF185
	.sleb128 29
	.uleb128 0x15
	.long	.LASF186
	.sleb128 30
	.uleb128 0x15
	.long	.LASF187
	.sleb128 31
	.uleb128 0x15
	.long	.LASF188
	.sleb128 32
	.uleb128 0x15
	.long	.LASF189
	.sleb128 33
	.uleb128 0x15
	.long	.LASF190
	.sleb128 34
	.uleb128 0x15
	.long	.LASF191
	.sleb128 35
	.uleb128 0x15
	.long	.LASF192
	.sleb128 36
	.uleb128 0x15
	.long	.LASF193
	.sleb128 37
	.uleb128 0x15
	.long	.LASF194
	.sleb128 38
	.uleb128 0x15
	.long	.LASF195
	.sleb128 39
	.uleb128 0x15
	.long	.LASF196
	.sleb128 40
	.uleb128 0x15
	.long	.LASF197
	.sleb128 41
	.uleb128 0x15
	.long	.LASF198
	.sleb128 42
	.uleb128 0x15
	.long	.LASF199
	.sleb128 43
	.uleb128 0x15
	.long	.LASF200
	.sleb128 44
	.uleb128 0x15
	.long	.LASF201
	.sleb128 45
	.uleb128 0x15
	.long	.LASF202
	.sleb128 46
	.uleb128 0x15
	.long	.LASF203
	.sleb128 47
	.uleb128 0x15
	.long	.LASF204
	.sleb128 48
	.uleb128 0x15
	.long	.LASF205
	.sleb128 49
	.uleb128 0x15
	.long	.LASF206
	.sleb128 50
	.uleb128 0x15
	.long	.LASF207
	.sleb128 51
	.uleb128 0x15
	.long	.LASF208
	.sleb128 52
	.uleb128 0x15
	.long	.LASF209
	.sleb128 53
	.uleb128 0x15
	.long	.LASF210
	.sleb128 54
	.uleb128 0x15
	.long	.LASF211
	.sleb128 55
	.uleb128 0x15
	.long	.LASF212
	.sleb128 56
	.uleb128 0x15
	.long	.LASF213
	.sleb128 57
	.uleb128 0x15
	.long	.LASF214
	.sleb128 58
	.uleb128 0x15
	.long	.LASF215
	.sleb128 59
	.uleb128 0x15
	.long	.LASF216
	.sleb128 60
	.uleb128 0x15
	.long	.LASF217
	.sleb128 61
	.uleb128 0x15
	.long	.LASF218
	.sleb128 62
	.uleb128 0x15
	.long	.LASF219
	.sleb128 63
	.uleb128 0x15
	.long	.LASF220
	.sleb128 64
	.uleb128 0x15
	.long	.LASF221
	.sleb128 65
	.uleb128 0x15
	.long	.LASF222
	.sleb128 66
	.uleb128 0x15
	.long	.LASF223
	.sleb128 67
	.uleb128 0x15
	.long	.LASF224
	.sleb128 68
	.uleb128 0x15
	.long	.LASF225
	.sleb128 69
	.uleb128 0x15
	.long	.LASF226
	.sleb128 70
	.uleb128 0x15
	.long	.LASF227
	.sleb128 71
	.uleb128 0x15
	.long	.LASF228
	.sleb128 72
	.uleb128 0x15
	.long	.LASF229
	.sleb128 73
	.uleb128 0x15
	.long	.LASF230
	.sleb128 74
	.uleb128 0x15
	.long	.LASF231
	.sleb128 75
	.uleb128 0x15
	.long	.LASF232
	.sleb128 76
	.uleb128 0x15
	.long	.LASF233
	.sleb128 77
	.uleb128 0x15
	.long	.LASF234
	.sleb128 78
	.uleb128 0x15
	.long	.LASF235
	.sleb128 79
	.uleb128 0x15
	.long	.LASF236
	.sleb128 80
	.uleb128 0x15
	.long	.LASF237
	.sleb128 81
	.uleb128 0x15
	.long	.LASF238
	.sleb128 82
	.uleb128 0x15
	.long	.LASF239
	.sleb128 83
	.uleb128 0x15
	.long	.LASF240
	.sleb128 84
	.uleb128 0x15
	.long	.LASF241
	.sleb128 85
	.uleb128 0x15
	.long	.LASF242
	.sleb128 86
	.uleb128 0x15
	.long	.LASF243
	.sleb128 87
	.uleb128 0x15
	.long	.LASF244
	.sleb128 88
	.uleb128 0x15
	.long	.LASF245
	.sleb128 89
	.uleb128 0x15
	.long	.LASF246
	.sleb128 90
	.uleb128 0x15
	.long	.LASF247
	.sleb128 91
	.uleb128 0x15
	.long	.LASF248
	.sleb128 92
	.uleb128 0x15
	.long	.LASF249
	.sleb128 93
	.uleb128 0x15
	.long	.LASF250
	.sleb128 94
	.uleb128 0x15
	.long	.LASF251
	.sleb128 95
	.uleb128 0x15
	.long	.LASF252
	.sleb128 96
	.uleb128 0x15
	.long	.LASF253
	.sleb128 97
	.uleb128 0x15
	.long	.LASF254
	.sleb128 98
	.uleb128 0x15
	.long	.LASF255
	.sleb128 99
	.uleb128 0x15
	.long	.LASF256
	.sleb128 100
	.uleb128 0x15
	.long	.LASF257
	.sleb128 101
	.uleb128 0x15
	.long	.LASF258
	.sleb128 102
	.uleb128 0x15
	.long	.LASF259
	.sleb128 103
	.uleb128 0x15
	.long	.LASF260
	.sleb128 104
	.uleb128 0x15
	.long	.LASF261
	.sleb128 105
	.uleb128 0x15
	.long	.LASF262
	.sleb128 106
	.uleb128 0x15
	.long	.LASF263
	.sleb128 107
	.uleb128 0x15
	.long	.LASF264
	.sleb128 108
	.uleb128 0x15
	.long	.LASF265
	.sleb128 109
	.uleb128 0x15
	.long	.LASF266
	.sleb128 110
	.uleb128 0x15
	.long	.LASF267
	.sleb128 111
	.uleb128 0x15
	.long	.LASF268
	.sleb128 112
	.uleb128 0x15
	.long	.LASF269
	.sleb128 113
	.uleb128 0x15
	.long	.LASF270
	.sleb128 114
	.uleb128 0x15
	.long	.LASF271
	.sleb128 115
	.uleb128 0x15
	.long	.LASF272
	.sleb128 116
	.uleb128 0x15
	.long	.LASF273
	.sleb128 117
	.uleb128 0x15
	.long	.LASF274
	.sleb128 118
	.uleb128 0x15
	.long	.LASF275
	.sleb128 119
	.uleb128 0x15
	.long	.LASF276
	.sleb128 120
	.uleb128 0x15
	.long	.LASF277
	.sleb128 121
	.uleb128 0x15
	.long	.LASF278
	.sleb128 122
	.uleb128 0x15
	.long	.LASF279
	.sleb128 123
	.uleb128 0x15
	.long	.LASF280
	.sleb128 124
	.uleb128 0x15
	.long	.LASF281
	.sleb128 125
	.uleb128 0x15
	.long	.LASF282
	.sleb128 126
	.uleb128 0x15
	.long	.LASF283
	.sleb128 127
	.uleb128 0x15
	.long	.LASF284
	.sleb128 128
	.uleb128 0x15
	.long	.LASF285
	.sleb128 129
	.uleb128 0x15
	.long	.LASF286
	.sleb128 130
	.uleb128 0x15
	.long	.LASF287
	.sleb128 131
	.uleb128 0x15
	.long	.LASF288
	.sleb128 132
	.uleb128 0x15
	.long	.LASF289
	.sleb128 133
	.uleb128 0x15
	.long	.LASF290
	.sleb128 134
	.uleb128 0x15
	.long	.LASF291
	.sleb128 135
	.uleb128 0x15
	.long	.LASF292
	.sleb128 136
	.uleb128 0x15
	.long	.LASF293
	.sleb128 137
	.uleb128 0x15
	.long	.LASF294
	.sleb128 138
	.uleb128 0x15
	.long	.LASF295
	.sleb128 139
	.uleb128 0x15
	.long	.LASF296
	.sleb128 140
	.uleb128 0x15
	.long	.LASF297
	.sleb128 141
	.uleb128 0x15
	.long	.LASF298
	.sleb128 142
	.uleb128 0x15
	.long	.LASF299
	.sleb128 143
	.uleb128 0x15
	.long	.LASF300
	.sleb128 144
	.uleb128 0x15
	.long	.LASF301
	.sleb128 145
	.uleb128 0x15
	.long	.LASF302
	.sleb128 146
	.uleb128 0x15
	.long	.LASF303
	.sleb128 147
	.byte	0
	.uleb128 0x14
	.long	.LASF304
	.byte	0x4
	.byte	0x7
	.byte	0x45
	.long	0xa96
	.uleb128 0x15
	.long	.LASF305
	.sleb128 0
	.uleb128 0x15
	.long	.LASF306
	.sleb128 1
	.uleb128 0x15
	.long	.LASF307
	.sleb128 2
	.uleb128 0x15
	.long	.LASF308
	.sleb128 3
	.byte	0
	.uleb128 0x14
	.long	.LASF309
	.byte	0x4
	.byte	0x7
	.byte	0x54
	.long	0xd03
	.uleb128 0x15
	.long	.LASF310
	.sleb128 0
	.uleb128 0x15
	.long	.LASF311
	.sleb128 1
	.uleb128 0x15
	.long	.LASF312
	.sleb128 2
	.uleb128 0x15
	.long	.LASF313
	.sleb128 3
	.uleb128 0x15
	.long	.LASF314
	.sleb128 4
	.uleb128 0x15
	.long	.LASF315
	.sleb128 5
	.uleb128 0x15
	.long	.LASF316
	.sleb128 6
	.uleb128 0x15
	.long	.LASF317
	.sleb128 7
	.uleb128 0x15
	.long	.LASF318
	.sleb128 8
	.uleb128 0x15
	.long	.LASF319
	.sleb128 9
	.uleb128 0x15
	.long	.LASF320
	.sleb128 10
	.uleb128 0x15
	.long	.LASF321
	.sleb128 11
	.uleb128 0x15
	.long	.LASF322
	.sleb128 12
	.uleb128 0x15
	.long	.LASF323
	.sleb128 13
	.uleb128 0x15
	.long	.LASF324
	.sleb128 14
	.uleb128 0x15
	.long	.LASF325
	.sleb128 15
	.uleb128 0x15
	.long	.LASF326
	.sleb128 16
	.uleb128 0x15
	.long	.LASF327
	.sleb128 17
	.uleb128 0x15
	.long	.LASF328
	.sleb128 18
	.uleb128 0x15
	.long	.LASF329
	.sleb128 19
	.uleb128 0x15
	.long	.LASF330
	.sleb128 20
	.uleb128 0x15
	.long	.LASF331
	.sleb128 21
	.uleb128 0x15
	.long	.LASF332
	.sleb128 22
	.uleb128 0x15
	.long	.LASF333
	.sleb128 23
	.uleb128 0x15
	.long	.LASF334
	.sleb128 24
	.uleb128 0x15
	.long	.LASF335
	.sleb128 25
	.uleb128 0x15
	.long	.LASF336
	.sleb128 26
	.uleb128 0x15
	.long	.LASF337
	.sleb128 27
	.uleb128 0x15
	.long	.LASF338
	.sleb128 28
	.uleb128 0x15
	.long	.LASF339
	.sleb128 29
	.uleb128 0x15
	.long	.LASF340
	.sleb128 30
	.uleb128 0x15
	.long	.LASF341
	.sleb128 31
	.uleb128 0x15
	.long	.LASF342
	.sleb128 32
	.uleb128 0x15
	.long	.LASF343
	.sleb128 33
	.uleb128 0x15
	.long	.LASF344
	.sleb128 34
	.uleb128 0x15
	.long	.LASF345
	.sleb128 35
	.uleb128 0x15
	.long	.LASF346
	.sleb128 36
	.uleb128 0x15
	.long	.LASF347
	.sleb128 37
	.uleb128 0x15
	.long	.LASF348
	.sleb128 38
	.uleb128 0x15
	.long	.LASF349
	.sleb128 39
	.uleb128 0x15
	.long	.LASF350
	.sleb128 40
	.uleb128 0x15
	.long	.LASF351
	.sleb128 41
	.uleb128 0x15
	.long	.LASF352
	.sleb128 42
	.uleb128 0x15
	.long	.LASF353
	.sleb128 43
	.uleb128 0x15
	.long	.LASF354
	.sleb128 44
	.uleb128 0x15
	.long	.LASF355
	.sleb128 45
	.uleb128 0x15
	.long	.LASF356
	.sleb128 46
	.uleb128 0x15
	.long	.LASF357
	.sleb128 47
	.uleb128 0x15
	.long	.LASF358
	.sleb128 48
	.uleb128 0x15
	.long	.LASF359
	.sleb128 49
	.uleb128 0x15
	.long	.LASF360
	.sleb128 50
	.uleb128 0x15
	.long	.LASF361
	.sleb128 51
	.uleb128 0x15
	.long	.LASF362
	.sleb128 52
	.uleb128 0x15
	.long	.LASF363
	.sleb128 53
	.uleb128 0x15
	.long	.LASF364
	.sleb128 54
	.uleb128 0x15
	.long	.LASF365
	.sleb128 55
	.uleb128 0x15
	.long	.LASF366
	.sleb128 56
	.uleb128 0x15
	.long	.LASF367
	.sleb128 57
	.uleb128 0x15
	.long	.LASF368
	.sleb128 58
	.uleb128 0x15
	.long	.LASF369
	.sleb128 59
	.uleb128 0x15
	.long	.LASF370
	.sleb128 60
	.uleb128 0x15
	.long	.LASF371
	.sleb128 61
	.uleb128 0x15
	.long	.LASF372
	.sleb128 62
	.uleb128 0x15
	.long	.LASF373
	.sleb128 63
	.uleb128 0x15
	.long	.LASF374
	.sleb128 64
	.uleb128 0x15
	.long	.LASF375
	.sleb128 65
	.uleb128 0x15
	.long	.LASF376
	.sleb128 66
	.uleb128 0x15
	.long	.LASF377
	.sleb128 67
	.uleb128 0x15
	.long	.LASF378
	.sleb128 68
	.uleb128 0x15
	.long	.LASF379
	.sleb128 69
	.uleb128 0x15
	.long	.LASF380
	.sleb128 70
	.uleb128 0x15
	.long	.LASF381
	.sleb128 71
	.uleb128 0x15
	.long	.LASF382
	.sleb128 72
	.uleb128 0x15
	.long	.LASF383
	.sleb128 73
	.uleb128 0x15
	.long	.LASF384
	.sleb128 74
	.uleb128 0x15
	.long	.LASF385
	.sleb128 75
	.uleb128 0x15
	.long	.LASF386
	.sleb128 76
	.uleb128 0x15
	.long	.LASF387
	.sleb128 77
	.uleb128 0x15
	.long	.LASF388
	.sleb128 78
	.uleb128 0x15
	.long	.LASF389
	.sleb128 79
	.uleb128 0x15
	.long	.LASF390
	.sleb128 80
	.uleb128 0x15
	.long	.LASF391
	.sleb128 81
	.uleb128 0x15
	.long	.LASF392
	.sleb128 82
	.uleb128 0x15
	.long	.LASF393
	.sleb128 83
	.uleb128 0x15
	.long	.LASF394
	.sleb128 84
	.uleb128 0x15
	.long	.LASF395
	.sleb128 85
	.uleb128 0x15
	.long	.LASF396
	.sleb128 86
	.uleb128 0x15
	.long	.LASF397
	.sleb128 87
	.uleb128 0x15
	.long	.LASF398
	.sleb128 88
	.uleb128 0x15
	.long	.LASF399
	.sleb128 89
	.uleb128 0x15
	.long	.LASF400
	.sleb128 90
	.uleb128 0x15
	.long	.LASF401
	.sleb128 91
	.uleb128 0x15
	.long	.LASF402
	.sleb128 92
	.uleb128 0x15
	.long	.LASF403
	.sleb128 93
	.uleb128 0x15
	.long	.LASF404
	.sleb128 94
	.uleb128 0x15
	.long	.LASF405
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF406
	.byte	0x18
	.byte	0x7
	.byte	0x79
	.long	0xe9f
	.uleb128 0x8
	.long	.LASF407
	.byte	0x7
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x7
	.byte	0x7e
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF408
	.byte	0x7
	.byte	0x80
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF409
	.byte	0x7
	.byte	0x81
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF410
	.byte	0x7
	.byte	0x82
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF411
	.byte	0x7
	.byte	0x83
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF412
	.byte	0x7
	.byte	0x84
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF413
	.byte	0x7
	.byte	0x85
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF414
	.byte	0x7
	.byte	0x86
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF415
	.byte	0x7
	.byte	0x87
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF416
	.byte	0x7
	.byte	0x89
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF417
	.byte	0x7
	.byte	0x8a
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF418
	.byte	0x7
	.byte	0x8b
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF419
	.byte	0x7
	.byte	0x8c
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF420
	.byte	0x7
	.byte	0x8d
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF421
	.byte	0x7
	.byte	0x8e
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF422
	.byte	0x7
	.byte	0x8f
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF423
	.byte	0x7
	.byte	0x90
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF424
	.byte	0x7
	.byte	0x92
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF425
	.byte	0x7
	.byte	0x93
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF426
	.byte	0x7
	.byte	0x94
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF427
	.byte	0x7
	.byte	0x95
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF428
	.byte	0x7
	.byte	0x96
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF429
	.byte	0x7
	.byte	0x97
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF430
	.byte	0x7
	.byte	0x98
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF431
	.byte	0x7
	.byte	0x99
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.byte	0x10
	.byte	0x7
	.value	0x2c9
	.long	0xec3
	.uleb128 0x17
	.string	"low"
	.byte	0x7
	.value	0x2ca
	.long	0x26f
	.byte	0
	.uleb128 0x12
	.long	.LASF432
	.byte	0x7
	.value	0x2cb
	.long	0x25d
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF433
	.byte	0x30
	.byte	0x7
	.value	0x2c1
	.long	0xef8
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x2c3
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x7
	.value	0x2cc
	.long	0xe9f
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.byte	0x18
	.byte	0xf
	.byte	0x6b
	.long	0xf0b
	.uleb128 0x6
	.string	"r"
	.byte	0xf
	.byte	0x6c
	.long	0xf0b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x25d
	.long	0xf1b
	.uleb128 0x10
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF434
	.byte	0xf
	.byte	0x6d
	.long	0xef8
	.uleb128 0x18
	.long	.LASF435
	.byte	0x38
	.byte	0x7
	.value	0x2de
	.long	0xf5b
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x2e0
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x7
	.value	0x2e2
	.long	0xf1b
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF436
	.byte	0x30
	.byte	0x7
	.value	0x2e9
	.long	0xf9d
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x2eb
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF437
	.byte	0x7
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF438
	.byte	0x7
	.value	0x2ee
	.long	0x4bb
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	.LASF439
	.byte	0x30
	.byte	0x7
	.value	0x2f5
	.long	0xfdf
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x2f7
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF440
	.byte	0x7
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF441
	.byte	0x7
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	.LASF442
	.byte	0x28
	.byte	0x7
	.value	0x300
	.long	0x1014
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x302
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF443
	.byte	0x7
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF444
	.byte	0x18
	.byte	0x10
	.byte	0xa1
	.long	0x1045
	.uleb128 0x8
	.long	.LASF445
	.byte	0x10
	.byte	0xa3
	.long	0x2a8
	.byte	0
	.uleb128 0x8
	.long	.LASF446
	.byte	0x10
	.byte	0xa4
	.long	0x1045
	.byte	0x8
	.uleb128 0x8
	.long	.LASF447
	.byte	0x10
	.byte	0xa5
	.long	0x441
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1014
	.uleb128 0x4
	.long	.LASF448
	.byte	0x58
	.byte	0x10
	.byte	0xa8
	.long	0x10fd
	.uleb128 0x8
	.long	.LASF449
	.byte	0x10
	.byte	0xaa
	.long	0x25d
	.byte	0
	.uleb128 0x8
	.long	.LASF450
	.byte	0x10
	.byte	0xab
	.long	0x1045
	.byte	0x8
	.uleb128 0x8
	.long	.LASF451
	.byte	0x10
	.byte	0xac
	.long	0x2a8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF452
	.byte	0x10
	.byte	0xad
	.long	0x2a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF453
	.byte	0x10
	.byte	0xae
	.long	0x2a8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF454
	.byte	0x10
	.byte	0xaf
	.long	0x25d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF455
	.byte	0x10
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF456
	.byte	0x10
	.byte	0xb5
	.long	0x1111
	.byte	0x38
	.uleb128 0x8
	.long	.LASF457
	.byte	0x10
	.byte	0xb6
	.long	0x1127
	.byte	0x40
	.uleb128 0x8
	.long	.LASF458
	.byte	0x10
	.byte	0xb7
	.long	0x250
	.byte	0x48
	.uleb128 0x5
	.long	.LASF459
	.byte	0x10
	.byte	0xbd
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF460
	.byte	0x10
	.byte	0xbe
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF461
	.byte	0x10
	.byte	0xc2
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.long	0x1045
	.long	0x1111
	.uleb128 0x1b
	.long	0x250
	.uleb128 0x1b
	.long	0x25d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10fd
	.uleb128 0x1c
	.long	0x1127
	.uleb128 0x1b
	.long	0x250
	.uleb128 0x1b
	.long	0x1045
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1117
	.uleb128 0x4
	.long	.LASF462
	.byte	0x10
	.byte	0x11
	.byte	0x1a
	.long	0x1152
	.uleb128 0x6
	.string	"len"
	.byte	0x11
	.byte	0x1c
	.long	0x249
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x11
	.byte	0x1d
	.long	0x1152
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1158
	.uleb128 0xc
	.long	0x276
	.uleb128 0x1d
	.long	.LASF509
	.uleb128 0x18
	.long	.LASF463
	.byte	0x28
	.byte	0x7
	.value	0x317
	.long	0x1189
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x319
	.long	0xd03
	.byte	0
	.uleb128 0x17
	.string	"id"
	.byte	0x7
	.value	0x31a
	.long	0x112d
	.byte	0x18
	.byte	0
	.uleb128 0x18
	.long	.LASF464
	.byte	0x28
	.byte	0x7
	.value	0x321
	.long	0x11be
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x323
	.long	0xd03
	.byte	0
	.uleb128 0x12
	.long	.LASF465
	.byte	0x7
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF466
	.byte	0x7
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF467
	.byte	0x28
	.byte	0x7
	.value	0x32e
	.long	0x11f1
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x330
	.long	0xd03
	.byte	0
	.uleb128 0x12
	.long	.LASF437
	.byte	0x7
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x17
	.string	"a"
	.byte	0x7
	.value	0x332
	.long	0x11f1
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	0x123
	.long	0x1201
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF468
	.byte	0x28
	.byte	0x7
	.value	0x36f
	.long	0x1236
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x371
	.long	0xd03
	.byte	0
	.uleb128 0x12
	.long	.LASF469
	.byte	0x7
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF470
	.byte	0x7
	.value	0x373
	.long	0x11f1
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF471
	.byte	0x50
	.byte	0x7
	.value	0x3a3
	.long	0x12cf
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x3a5
	.long	0xd03
	.byte	0
	.uleb128 0x1e
	.long	.LASF472
	.byte	0x7
	.value	0x3a7
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x7
	.value	0x3a8
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF474
	.byte	0x7
	.value	0x3a9
	.long	0x249
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF475
	.byte	0x7
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF476
	.byte	0x7
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF477
	.byte	0x7
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF478
	.byte	0x7
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF479
	.byte	0x7
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF480
	.byte	0x7
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.byte	0x7
	.value	0x4d8
	.long	0x12f1
	.uleb128 0xa
	.long	.LASF481
	.byte	0x7
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF438
	.byte	0x7
	.value	0x4d8
	.long	0x2a8
	.byte	0
	.uleb128 0x18
	.long	.LASF482
	.byte	0xa8
	.byte	0x7
	.value	0x4b8
	.long	0x1506
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x4ba
	.long	0xd03
	.byte	0
	.uleb128 0x12
	.long	.LASF483
	.byte	0x7
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF484
	.byte	0x7
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF485
	.byte	0x7
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF486
	.byte	0x7
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x17
	.string	"uid"
	.byte	0x7
	.value	0x4bf
	.long	0x249
	.byte	0x38
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x7
	.value	0x4c1
	.long	0x249
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x7
	.value	0x4c2
	.long	0x249
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x7
	.value	0x4c4
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x7
	.value	0x4c5
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x7
	.value	0x4c6
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x7
	.value	0x4c7
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x7
	.value	0x4c8
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x7
	.value	0x4c9
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x7
	.value	0x4ca
	.long	0x249
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x7
	.value	0x4cc
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF425
	.byte	0x7
	.value	0x4cd
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF426
	.byte	0x7
	.value	0x4ce
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x7
	.value	0x4cf
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF428
	.byte	0x7
	.value	0x4d0
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF429
	.byte	0x7
	.value	0x4d1
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF430
	.byte	0x7
	.value	0x4d2
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x7
	.value	0x4d3
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF496
	.byte	0x7
	.value	0x4d5
	.long	0x249
	.byte	0x40
	.uleb128 0x12
	.long	.LASF497
	.byte	0x7
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF498
	.byte	0x7
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF499
	.byte	0x7
	.value	0x4d8
	.long	0x12cf
	.byte	0x58
	.uleb128 0x12
	.long	.LASF500
	.byte	0x7
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF501
	.byte	0x7
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF502
	.byte	0x7
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF503
	.byte	0x7
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF504
	.byte	0x7
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF505
	.byte	0x7
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF506
	.byte	0x7
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF507
	.byte	0x7
	.value	0x4e0
	.long	0x25d
	.byte	0x98
	.uleb128 0x12
	.long	.LASF508
	.byte	0x7
	.value	0x4e2
	.long	0x150b
	.byte	0xa0
	.byte	0
	.uleb128 0x1d
	.long	.LASF510
	.uleb128 0x3
	.byte	0x8
	.long	0x1506
	.uleb128 0x16
	.byte	0x4
	.byte	0x7
	.value	0x717
	.long	0x153b
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x7
	.value	0x717
	.long	0x249
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x7
	.value	0x717
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.byte	0x7
	.value	0x70e
	.long	0x1563
	.uleb128 0xb
	.string	"f"
	.byte	0x7
	.value	0x711
	.long	0xa96
	.uleb128 0xb
	.string	"i"
	.byte	0x7
	.value	0x714
	.long	0x25d
	.uleb128 0xb
	.string	"a"
	.byte	0x7
	.value	0x717
	.long	0x1511
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.byte	0x7
	.value	0x72c
	.long	0x1595
	.uleb128 0xb
	.string	"f"
	.byte	0x7
	.value	0x72d
	.long	0x159a
	.uleb128 0xb
	.string	"r"
	.byte	0x7
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x7
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x7
	.value	0x730
	.long	0x1e3
	.byte	0
	.uleb128 0x1d
	.long	.LASF512
	.uleb128 0x3
	.byte	0x8
	.long	0x1595
	.uleb128 0x18
	.long	.LASF513
	.byte	0xd0
	.byte	0x7
	.value	0x6dc
	.long	0x1924
	.uleb128 0x12
	.long	.LASF16
	.byte	0x7
	.value	0x6de
	.long	0xd03
	.byte	0
	.uleb128 0x12
	.long	.LASF514
	.byte	0x7
	.value	0x6df
	.long	0x4bb
	.byte	0x18
	.uleb128 0x12
	.long	.LASF515
	.byte	0x7
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x17
	.string	"uid"
	.byte	0x7
	.value	0x6e1
	.long	0x249
	.byte	0x24
	.uleb128 0x12
	.long	.LASF484
	.byte	0x7
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1e
	.long	.LASF1
	.byte	0x7
	.value	0x6e3
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x7
	.value	0x6e5
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x7
	.value	0x6e6
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x7
	.value	0x6e7
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x7
	.value	0x6e8
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF520
	.byte	0x7
	.value	0x6e9
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF521
	.byte	0x7
	.value	0x6ea
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF522
	.byte	0x7
	.value	0x6eb
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x7
	.value	0x6ec
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF523
	.byte	0x7
	.value	0x6ee
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x7
	.value	0x6ef
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF525
	.byte	0x7
	.value	0x6f0
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x7
	.value	0x6f1
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF527
	.byte	0x7
	.value	0x6f2
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF528
	.byte	0x7
	.value	0x6f3
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x7
	.value	0x6f4
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF530
	.byte	0x7
	.value	0x6f5
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF531
	.byte	0x7
	.value	0x6f7
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF532
	.byte	0x7
	.value	0x6f8
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF533
	.byte	0x7
	.value	0x6f9
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF534
	.byte	0x7
	.value	0x6fa
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF535
	.byte	0x7
	.value	0x6fb
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF304
	.byte	0x7
	.value	0x6fc
	.long	0x249
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF536
	.byte	0x7
	.value	0x6fd
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x7
	.value	0x6ff
	.long	0x249
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF537
	.byte	0x7
	.value	0x700
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x7
	.value	0x701
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF538
	.byte	0x7
	.value	0x702
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x7
	.value	0x705
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF425
	.byte	0x7
	.value	0x706
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF426
	.byte	0x7
	.value	0x707
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x7
	.value	0x708
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF428
	.byte	0x7
	.value	0x709
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF429
	.byte	0x7
	.value	0x70a
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF430
	.byte	0x7
	.value	0x70b
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF539
	.byte	0x7
	.value	0x70c
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x17
	.string	"u1"
	.byte	0x7
	.value	0x718
	.long	0x153b
	.byte	0x38
	.uleb128 0x12
	.long	.LASF485
	.byte	0x7
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF500
	.byte	0x7
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF506
	.byte	0x7
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF540
	.byte	0x7
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF541
	.byte	0x7
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF542
	.byte	0x7
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF478
	.byte	0x7
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF543
	.byte	0x7
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF544
	.byte	0x7
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF486
	.byte	0x7
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x17
	.string	"rtl"
	.byte	0x7
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF545
	.byte	0x7
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x17
	.string	"u2"
	.byte	0x7
	.value	0x731
	.long	0x1563
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF546
	.byte	0x7
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF547
	.byte	0x7
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF548
	.byte	0x7
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF549
	.byte	0x7
	.value	0x73b
	.long	0x25d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF508
	.byte	0x7
	.value	0x73d
	.long	0x1929
	.byte	0xc8
	.byte	0
	.uleb128 0x1d
	.long	.LASF550
	.uleb128 0x3
	.byte	0x8
	.long	0x1924
	.uleb128 0x20
	.long	.LASF551
	.byte	0x4
	.byte	0x7
	.value	0x757
	.long	0x1a75
	.uleb128 0x15
	.long	.LASF552
	.sleb128 0
	.uleb128 0x15
	.long	.LASF553
	.sleb128 1
	.uleb128 0x15
	.long	.LASF554
	.sleb128 2
	.uleb128 0x15
	.long	.LASF555
	.sleb128 3
	.uleb128 0x15
	.long	.LASF556
	.sleb128 4
	.uleb128 0x15
	.long	.LASF557
	.sleb128 5
	.uleb128 0x15
	.long	.LASF558
	.sleb128 6
	.uleb128 0x15
	.long	.LASF559
	.sleb128 7
	.uleb128 0x15
	.long	.LASF560
	.sleb128 8
	.uleb128 0x15
	.long	.LASF561
	.sleb128 9
	.uleb128 0x15
	.long	.LASF562
	.sleb128 10
	.uleb128 0x15
	.long	.LASF563
	.sleb128 11
	.uleb128 0x15
	.long	.LASF564
	.sleb128 12
	.uleb128 0x15
	.long	.LASF565
	.sleb128 13
	.uleb128 0x15
	.long	.LASF566
	.sleb128 14
	.uleb128 0x15
	.long	.LASF567
	.sleb128 15
	.uleb128 0x15
	.long	.LASF568
	.sleb128 16
	.uleb128 0x15
	.long	.LASF569
	.sleb128 17
	.uleb128 0x15
	.long	.LASF570
	.sleb128 18
	.uleb128 0x15
	.long	.LASF571
	.sleb128 19
	.uleb128 0x15
	.long	.LASF572
	.sleb128 20
	.uleb128 0x15
	.long	.LASF573
	.sleb128 21
	.uleb128 0x15
	.long	.LASF574
	.sleb128 22
	.uleb128 0x15
	.long	.LASF575
	.sleb128 23
	.uleb128 0x15
	.long	.LASF576
	.sleb128 24
	.uleb128 0x15
	.long	.LASF577
	.sleb128 25
	.uleb128 0x15
	.long	.LASF578
	.sleb128 26
	.uleb128 0x15
	.long	.LASF579
	.sleb128 27
	.uleb128 0x15
	.long	.LASF580
	.sleb128 28
	.uleb128 0x15
	.long	.LASF581
	.sleb128 29
	.uleb128 0x15
	.long	.LASF582
	.sleb128 30
	.uleb128 0x15
	.long	.LASF583
	.sleb128 31
	.uleb128 0x15
	.long	.LASF584
	.sleb128 32
	.uleb128 0x15
	.long	.LASF585
	.sleb128 33
	.uleb128 0x15
	.long	.LASF586
	.sleb128 34
	.uleb128 0x15
	.long	.LASF587
	.sleb128 35
	.uleb128 0x15
	.long	.LASF588
	.sleb128 36
	.uleb128 0x15
	.long	.LASF589
	.sleb128 37
	.uleb128 0x15
	.long	.LASF590
	.sleb128 38
	.uleb128 0x15
	.long	.LASF591
	.sleb128 39
	.uleb128 0x15
	.long	.LASF592
	.sleb128 40
	.uleb128 0x15
	.long	.LASF593
	.sleb128 41
	.uleb128 0x15
	.long	.LASF594
	.sleb128 42
	.uleb128 0x15
	.long	.LASF595
	.sleb128 43
	.uleb128 0x15
	.long	.LASF596
	.sleb128 44
	.uleb128 0x15
	.long	.LASF597
	.sleb128 45
	.uleb128 0x15
	.long	.LASF598
	.sleb128 46
	.uleb128 0x15
	.long	.LASF599
	.sleb128 47
	.uleb128 0x15
	.long	.LASF600
	.sleb128 48
	.uleb128 0x15
	.long	.LASF601
	.sleb128 49
	.uleb128 0x15
	.long	.LASF602
	.sleb128 50
	.uleb128 0x15
	.long	.LASF603
	.sleb128 51
	.byte	0
	.uleb128 0x20
	.long	.LASF604
	.byte	0x4
	.byte	0x7
	.value	0x7e4
	.long	0x1acb
	.uleb128 0x15
	.long	.LASF605
	.sleb128 0
	.uleb128 0x15
	.long	.LASF606
	.sleb128 1
	.uleb128 0x15
	.long	.LASF607
	.sleb128 2
	.uleb128 0x15
	.long	.LASF608
	.sleb128 3
	.uleb128 0x15
	.long	.LASF609
	.sleb128 4
	.uleb128 0x15
	.long	.LASF610
	.sleb128 5
	.uleb128 0x15
	.long	.LASF611
	.sleb128 6
	.uleb128 0x15
	.long	.LASF612
	.sleb128 7
	.uleb128 0x15
	.long	.LASF613
	.sleb128 8
	.uleb128 0x15
	.long	.LASF614
	.sleb128 9
	.uleb128 0x15
	.long	.LASF615
	.sleb128 10
	.uleb128 0x15
	.long	.LASF616
	.sleb128 11
	.byte	0
	.uleb128 0x18
	.long	.LASF617
	.byte	0x20
	.byte	0x7
	.value	0x885
	.long	0x1b34
	.uleb128 0x12
	.long	.LASF500
	.byte	0x7
	.value	0x889
	.long	0x1b34
	.byte	0
	.uleb128 0x12
	.long	.LASF618
	.byte	0x7
	.value	0x88b
	.long	0x1de
	.byte	0x8
	.uleb128 0x12
	.long	.LASF619
	.byte	0x7
	.value	0x88e
	.long	0x1de
	.byte	0xc
	.uleb128 0x12
	.long	.LASF620
	.byte	0x7
	.value	0x896
	.long	0x1b39
	.byte	0x10
	.uleb128 0x12
	.long	.LASF621
	.byte	0x7
	.value	0x899
	.long	0x1b39
	.byte	0x11
	.uleb128 0x12
	.long	.LASF622
	.byte	0x7
	.value	0x89e
	.long	0x1b39
	.byte	0x12
	.uleb128 0x12
	.long	.LASF623
	.byte	0x7
	.value	0x8ad
	.long	0x1b74
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x4bb
	.uleb128 0xc
	.long	0x1b3e
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF624
	.uleb128 0x1a
	.long	0x123
	.long	0x1b68
	.uleb128 0x1b
	.long	0x1b68
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x1b6e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x1b3e
	.uleb128 0xc
	.long	0x1b79
	.uleb128 0x3
	.byte	0x8
	.long	0x1b45
	.uleb128 0x20
	.long	.LASF625
	.byte	0x4
	.byte	0x7
	.value	0x8b5
	.long	0x1bab
	.uleb128 0x15
	.long	.LASF626
	.sleb128 1
	.uleb128 0x15
	.long	.LASF627
	.sleb128 2
	.uleb128 0x15
	.long	.LASF628
	.sleb128 4
	.uleb128 0x15
	.long	.LASF629
	.sleb128 8
	.uleb128 0x15
	.long	.LASF630
	.sleb128 16
	.byte	0
	.uleb128 0x20
	.long	.LASF631
	.byte	0x4
	.byte	0x7
	.value	0x972
	.long	0x1be3
	.uleb128 0x15
	.long	.LASF632
	.sleb128 0
	.uleb128 0x15
	.long	.LASF633
	.sleb128 1
	.uleb128 0x15
	.long	.LASF634
	.sleb128 2
	.uleb128 0x15
	.long	.LASF635
	.sleb128 3
	.uleb128 0x15
	.long	.LASF636
	.sleb128 4
	.uleb128 0x15
	.long	.LASF637
	.sleb128 5
	.uleb128 0x15
	.long	.LASF638
	.sleb128 6
	.byte	0
	.uleb128 0x21
	.long	.LASF639
	.byte	0x7
	.value	0xc44
	.long	0x1bef
	.uleb128 0x3
	.byte	0x8
	.long	0x1bf5
	.uleb128 0x1a
	.long	0x123
	.long	0x1c0e
	.uleb128 0x1b
	.long	0x1b68
	.uleb128 0x1b
	.long	0x4d4
	.uleb128 0x1b
	.long	0x250
	.byte	0
	.uleb128 0x7
	.long	.LASF509
	.byte	0x12
	.byte	0x31
	.long	0x115d
	.uleb128 0x14
	.long	.LASF640
	.byte	0x4
	.byte	0x5
	.byte	0x29
	.long	0x2015
	.uleb128 0x15
	.long	.LASF641
	.sleb128 0
	.uleb128 0x22
	.string	"NIL"
	.sleb128 1
	.uleb128 0x15
	.long	.LASF642
	.sleb128 2
	.uleb128 0x15
	.long	.LASF643
	.sleb128 3
	.uleb128 0x15
	.long	.LASF644
	.sleb128 4
	.uleb128 0x15
	.long	.LASF645
	.sleb128 5
	.uleb128 0x15
	.long	.LASF646
	.sleb128 6
	.uleb128 0x15
	.long	.LASF647
	.sleb128 7
	.uleb128 0x15
	.long	.LASF648
	.sleb128 8
	.uleb128 0x15
	.long	.LASF649
	.sleb128 9
	.uleb128 0x15
	.long	.LASF650
	.sleb128 10
	.uleb128 0x15
	.long	.LASF651
	.sleb128 11
	.uleb128 0x15
	.long	.LASF652
	.sleb128 12
	.uleb128 0x15
	.long	.LASF653
	.sleb128 13
	.uleb128 0x15
	.long	.LASF654
	.sleb128 14
	.uleb128 0x15
	.long	.LASF655
	.sleb128 15
	.uleb128 0x15
	.long	.LASF656
	.sleb128 16
	.uleb128 0x15
	.long	.LASF657
	.sleb128 17
	.uleb128 0x15
	.long	.LASF658
	.sleb128 18
	.uleb128 0x15
	.long	.LASF659
	.sleb128 19
	.uleb128 0x15
	.long	.LASF660
	.sleb128 20
	.uleb128 0x15
	.long	.LASF661
	.sleb128 21
	.uleb128 0x15
	.long	.LASF662
	.sleb128 22
	.uleb128 0x15
	.long	.LASF663
	.sleb128 23
	.uleb128 0x15
	.long	.LASF664
	.sleb128 24
	.uleb128 0x15
	.long	.LASF665
	.sleb128 25
	.uleb128 0x15
	.long	.LASF666
	.sleb128 26
	.uleb128 0x15
	.long	.LASF667
	.sleb128 27
	.uleb128 0x15
	.long	.LASF668
	.sleb128 28
	.uleb128 0x15
	.long	.LASF669
	.sleb128 29
	.uleb128 0x15
	.long	.LASF670
	.sleb128 30
	.uleb128 0x15
	.long	.LASF671
	.sleb128 31
	.uleb128 0x15
	.long	.LASF672
	.sleb128 32
	.uleb128 0x15
	.long	.LASF673
	.sleb128 33
	.uleb128 0x15
	.long	.LASF674
	.sleb128 34
	.uleb128 0x15
	.long	.LASF675
	.sleb128 35
	.uleb128 0x15
	.long	.LASF676
	.sleb128 36
	.uleb128 0x15
	.long	.LASF677
	.sleb128 37
	.uleb128 0x15
	.long	.LASF678
	.sleb128 38
	.uleb128 0x15
	.long	.LASF679
	.sleb128 39
	.uleb128 0x15
	.long	.LASF680
	.sleb128 40
	.uleb128 0x15
	.long	.LASF681
	.sleb128 41
	.uleb128 0x15
	.long	.LASF682
	.sleb128 42
	.uleb128 0x15
	.long	.LASF683
	.sleb128 43
	.uleb128 0x15
	.long	.LASF684
	.sleb128 44
	.uleb128 0x15
	.long	.LASF685
	.sleb128 45
	.uleb128 0x15
	.long	.LASF686
	.sleb128 46
	.uleb128 0x22
	.string	"SET"
	.sleb128 47
	.uleb128 0x22
	.string	"USE"
	.sleb128 48
	.uleb128 0x15
	.long	.LASF687
	.sleb128 49
	.uleb128 0x15
	.long	.LASF688
	.sleb128 50
	.uleb128 0x15
	.long	.LASF689
	.sleb128 51
	.uleb128 0x15
	.long	.LASF690
	.sleb128 52
	.uleb128 0x15
	.long	.LASF691
	.sleb128 53
	.uleb128 0x15
	.long	.LASF692
	.sleb128 54
	.uleb128 0x15
	.long	.LASF693
	.sleb128 55
	.uleb128 0x15
	.long	.LASF694
	.sleb128 56
	.uleb128 0x15
	.long	.LASF695
	.sleb128 57
	.uleb128 0x15
	.long	.LASF696
	.sleb128 58
	.uleb128 0x22
	.string	"PC"
	.sleb128 59
	.uleb128 0x15
	.long	.LASF697
	.sleb128 60
	.uleb128 0x22
	.string	"REG"
	.sleb128 61
	.uleb128 0x15
	.long	.LASF698
	.sleb128 62
	.uleb128 0x15
	.long	.LASF699
	.sleb128 63
	.uleb128 0x15
	.long	.LASF700
	.sleb128 64
	.uleb128 0x15
	.long	.LASF701
	.sleb128 65
	.uleb128 0x22
	.string	"MEM"
	.sleb128 66
	.uleb128 0x15
	.long	.LASF702
	.sleb128 67
	.uleb128 0x15
	.long	.LASF703
	.sleb128 68
	.uleb128 0x22
	.string	"CC0"
	.sleb128 69
	.uleb128 0x15
	.long	.LASF704
	.sleb128 70
	.uleb128 0x15
	.long	.LASF705
	.sleb128 71
	.uleb128 0x15
	.long	.LASF706
	.sleb128 72
	.uleb128 0x15
	.long	.LASF707
	.sleb128 73
	.uleb128 0x15
	.long	.LASF708
	.sleb128 74
	.uleb128 0x15
	.long	.LASF709
	.sleb128 75
	.uleb128 0x15
	.long	.LASF710
	.sleb128 76
	.uleb128 0x22
	.string	"NEG"
	.sleb128 77
	.uleb128 0x15
	.long	.LASF711
	.sleb128 78
	.uleb128 0x22
	.string	"DIV"
	.sleb128 79
	.uleb128 0x22
	.string	"MOD"
	.sleb128 80
	.uleb128 0x15
	.long	.LASF712
	.sleb128 81
	.uleb128 0x15
	.long	.LASF713
	.sleb128 82
	.uleb128 0x22
	.string	"AND"
	.sleb128 83
	.uleb128 0x22
	.string	"IOR"
	.sleb128 84
	.uleb128 0x22
	.string	"XOR"
	.sleb128 85
	.uleb128 0x22
	.string	"NOT"
	.sleb128 86
	.uleb128 0x15
	.long	.LASF714
	.sleb128 87
	.uleb128 0x15
	.long	.LASF715
	.sleb128 88
	.uleb128 0x15
	.long	.LASF716
	.sleb128 89
	.uleb128 0x15
	.long	.LASF717
	.sleb128 90
	.uleb128 0x15
	.long	.LASF718
	.sleb128 91
	.uleb128 0x15
	.long	.LASF719
	.sleb128 92
	.uleb128 0x15
	.long	.LASF720
	.sleb128 93
	.uleb128 0x15
	.long	.LASF721
	.sleb128 94
	.uleb128 0x15
	.long	.LASF722
	.sleb128 95
	.uleb128 0x15
	.long	.LASF723
	.sleb128 96
	.uleb128 0x15
	.long	.LASF724
	.sleb128 97
	.uleb128 0x15
	.long	.LASF725
	.sleb128 98
	.uleb128 0x15
	.long	.LASF726
	.sleb128 99
	.uleb128 0x15
	.long	.LASF727
	.sleb128 100
	.uleb128 0x15
	.long	.LASF728
	.sleb128 101
	.uleb128 0x22
	.string	"NE"
	.sleb128 102
	.uleb128 0x22
	.string	"EQ"
	.sleb128 103
	.uleb128 0x22
	.string	"GE"
	.sleb128 104
	.uleb128 0x22
	.string	"GT"
	.sleb128 105
	.uleb128 0x22
	.string	"LE"
	.sleb128 106
	.uleb128 0x22
	.string	"LT"
	.sleb128 107
	.uleb128 0x22
	.string	"GEU"
	.sleb128 108
	.uleb128 0x22
	.string	"GTU"
	.sleb128 109
	.uleb128 0x22
	.string	"LEU"
	.sleb128 110
	.uleb128 0x22
	.string	"LTU"
	.sleb128 111
	.uleb128 0x15
	.long	.LASF729
	.sleb128 112
	.uleb128 0x15
	.long	.LASF730
	.sleb128 113
	.uleb128 0x15
	.long	.LASF731
	.sleb128 114
	.uleb128 0x15
	.long	.LASF732
	.sleb128 115
	.uleb128 0x15
	.long	.LASF733
	.sleb128 116
	.uleb128 0x15
	.long	.LASF734
	.sleb128 117
	.uleb128 0x15
	.long	.LASF735
	.sleb128 118
	.uleb128 0x15
	.long	.LASF736
	.sleb128 119
	.uleb128 0x15
	.long	.LASF737
	.sleb128 120
	.uleb128 0x15
	.long	.LASF738
	.sleb128 121
	.uleb128 0x15
	.long	.LASF739
	.sleb128 122
	.uleb128 0x15
	.long	.LASF740
	.sleb128 123
	.uleb128 0x15
	.long	.LASF741
	.sleb128 124
	.uleb128 0x15
	.long	.LASF742
	.sleb128 125
	.uleb128 0x22
	.string	"FIX"
	.sleb128 126
	.uleb128 0x15
	.long	.LASF743
	.sleb128 127
	.uleb128 0x15
	.long	.LASF744
	.sleb128 128
	.uleb128 0x22
	.string	"ABS"
	.sleb128 129
	.uleb128 0x15
	.long	.LASF745
	.sleb128 130
	.uleb128 0x22
	.string	"FFS"
	.sleb128 131
	.uleb128 0x15
	.long	.LASF746
	.sleb128 132
	.uleb128 0x15
	.long	.LASF747
	.sleb128 133
	.uleb128 0x15
	.long	.LASF748
	.sleb128 134
	.uleb128 0x15
	.long	.LASF749
	.sleb128 135
	.uleb128 0x15
	.long	.LASF750
	.sleb128 136
	.uleb128 0x15
	.long	.LASF751
	.sleb128 137
	.uleb128 0x15
	.long	.LASF752
	.sleb128 138
	.uleb128 0x15
	.long	.LASF753
	.sleb128 139
	.uleb128 0x15
	.long	.LASF754
	.sleb128 140
	.uleb128 0x15
	.long	.LASF755
	.sleb128 141
	.uleb128 0x15
	.long	.LASF756
	.sleb128 142
	.uleb128 0x15
	.long	.LASF757
	.sleb128 143
	.uleb128 0x15
	.long	.LASF758
	.sleb128 144
	.uleb128 0x15
	.long	.LASF759
	.sleb128 145
	.uleb128 0x15
	.long	.LASF760
	.sleb128 146
	.uleb128 0x15
	.long	.LASF761
	.sleb128 147
	.uleb128 0x15
	.long	.LASF762
	.sleb128 148
	.uleb128 0x15
	.long	.LASF763
	.sleb128 149
	.uleb128 0x15
	.long	.LASF764
	.sleb128 150
	.uleb128 0x15
	.long	.LASF765
	.sleb128 151
	.uleb128 0x22
	.string	"PHI"
	.sleb128 152
	.uleb128 0x15
	.long	.LASF766
	.sleb128 153
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x5
	.byte	0x44
	.long	0x2096
	.uleb128 0x5
	.long	.LASF767
	.byte	0x5
	.byte	0x47
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF768
	.byte	0x5
	.byte	0x49
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF769
	.byte	0x5
	.byte	0x4a
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF770
	.byte	0x5
	.byte	0x4c
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF771
	.byte	0x5
	.byte	0x4e
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF772
	.byte	0x5
	.byte	0x50
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF773
	.byte	0x5
	.byte	0x53
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF774
	.byte	0x5
	.byte	0x55
	.long	0x249
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF775
	.byte	0x5
	.byte	0x56
	.long	0x2015
	.uleb128 0x19
	.byte	0x28
	.byte	0x5
	.byte	0x5c
	.long	0x20e6
	.uleb128 0x8
	.long	.LASF776
	.byte	0x5
	.byte	0x5e
	.long	0x25d
	.byte	0
	.uleb128 0x8
	.long	.LASF777
	.byte	0x5
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF778
	.byte	0x5
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF484
	.byte	0x5
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF496
	.byte	0x5
	.byte	0x62
	.long	0x249
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF779
	.byte	0x5
	.byte	0x63
	.long	0x20a1
	.uleb128 0x23
	.long	.LASF781
	.byte	0x8
	.byte	0x5
	.byte	0x67
	.long	0x218c
	.uleb128 0x24
	.long	.LASF782
	.byte	0x5
	.byte	0x69
	.long	0x25d
	.uleb128 0x24
	.long	.LASF783
	.byte	0x5
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x24
	.long	.LASF784
	.byte	0x5
	.byte	0x6b
	.long	0x249
	.uleb128 0x24
	.long	.LASF785
	.byte	0x5
	.byte	0x6c
	.long	0x4bb
	.uleb128 0x25
	.string	"rtx"
	.byte	0x5
	.byte	0x6d
	.long	0x2d
	.uleb128 0x24
	.long	.LASF10
	.byte	0x5
	.byte	0x6e
	.long	0xed
	.uleb128 0x24
	.long	.LASF786
	.byte	0x5
	.byte	0x6f
	.long	0x4da
	.uleb128 0x24
	.long	.LASF787
	.byte	0x5
	.byte	0x70
	.long	0x2096
	.uleb128 0x24
	.long	.LASF788
	.byte	0x5
	.byte	0x71
	.long	0x2191
	.uleb128 0x24
	.long	.LASF789
	.byte	0x5
	.byte	0x72
	.long	0x219c
	.uleb128 0x24
	.long	.LASF790
	.byte	0x5
	.byte	0x73
	.long	0x123
	.uleb128 0x25
	.string	"bb"
	.byte	0x5
	.byte	0x74
	.long	0x21a7
	.uleb128 0x24
	.long	.LASF791
	.byte	0x5
	.byte	0x75
	.long	0x21ad
	.byte	0
	.uleb128 0x1d
	.long	.LASF792
	.uleb128 0x3
	.byte	0x8
	.long	0x218c
	.uleb128 0x1d
	.long	.LASF793
	.uleb128 0x3
	.byte	0x8
	.long	0x2197
	.uleb128 0x1d
	.long	.LASF794
	.uleb128 0x3
	.byte	0x8
	.long	0x21a2
	.uleb128 0x3
	.byte	0x8
	.long	0x20e6
	.uleb128 0x7
	.long	.LASF795
	.byte	0x5
	.byte	0x76
	.long	0x20f1
	.uleb128 0xf
	.long	0x21b3
	.long	0x21ce
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0x21de
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF796
	.byte	0x4
	.byte	0x5
	.value	0x297
	.long	0x228d
	.uleb128 0x15
	.long	.LASF797
	.sleb128 -100
	.uleb128 0x15
	.long	.LASF798
	.sleb128 -99
	.uleb128 0x15
	.long	.LASF799
	.sleb128 -98
	.uleb128 0x15
	.long	.LASF800
	.sleb128 -97
	.uleb128 0x15
	.long	.LASF801
	.sleb128 -96
	.uleb128 0x15
	.long	.LASF802
	.sleb128 -95
	.uleb128 0x15
	.long	.LASF803
	.sleb128 -94
	.uleb128 0x15
	.long	.LASF804
	.sleb128 -93
	.uleb128 0x15
	.long	.LASF805
	.sleb128 -92
	.uleb128 0x15
	.long	.LASF806
	.sleb128 -91
	.uleb128 0x15
	.long	.LASF807
	.sleb128 -90
	.uleb128 0x15
	.long	.LASF808
	.sleb128 -89
	.uleb128 0x15
	.long	.LASF809
	.sleb128 -88
	.uleb128 0x15
	.long	.LASF810
	.sleb128 -87
	.uleb128 0x15
	.long	.LASF811
	.sleb128 -86
	.uleb128 0x15
	.long	.LASF812
	.sleb128 -85
	.uleb128 0x15
	.long	.LASF813
	.sleb128 -84
	.uleb128 0x15
	.long	.LASF814
	.sleb128 -83
	.uleb128 0x15
	.long	.LASF815
	.sleb128 -82
	.uleb128 0x15
	.long	.LASF816
	.sleb128 -81
	.uleb128 0x15
	.long	.LASF817
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF818
	.sleb128 -79
	.uleb128 0x15
	.long	.LASF819
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x20
	.long	.LASF820
	.byte	0x4
	.byte	0x5
	.value	0x630
	.long	0x22e9
	.uleb128 0x15
	.long	.LASF821
	.sleb128 0
	.uleb128 0x15
	.long	.LASF822
	.sleb128 1
	.uleb128 0x15
	.long	.LASF823
	.sleb128 2
	.uleb128 0x15
	.long	.LASF824
	.sleb128 3
	.uleb128 0x15
	.long	.LASF825
	.sleb128 4
	.uleb128 0x15
	.long	.LASF826
	.sleb128 5
	.uleb128 0x15
	.long	.LASF827
	.sleb128 6
	.uleb128 0x15
	.long	.LASF828
	.sleb128 7
	.uleb128 0x15
	.long	.LASF829
	.sleb128 8
	.uleb128 0x15
	.long	.LASF830
	.sleb128 9
	.uleb128 0x15
	.long	.LASF831
	.sleb128 10
	.uleb128 0x15
	.long	.LASF832
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF833
	.byte	0x10
	.byte	0x13
	.byte	0x24
	.long	0x230e
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
	.long	0x249
	.byte	0x8
	.byte	0
	.uleb128 0x23
	.long	.LASF834
	.byte	0x10
	.byte	0x13
	.byte	0x3a
	.long	0x23f3
	.uleb128 0x25
	.string	"c"
	.byte	0x13
	.byte	0x3b
	.long	0x495
	.uleb128 0x25
	.string	"uc"
	.byte	0x13
	.byte	0x3c
	.long	0x23f3
	.uleb128 0x25
	.string	"s"
	.byte	0x13
	.byte	0x3d
	.long	0x2403
	.uleb128 0x25
	.string	"us"
	.byte	0x13
	.byte	0x3e
	.long	0x2413
	.uleb128 0x25
	.string	"i"
	.byte	0x13
	.byte	0x3f
	.long	0x2423
	.uleb128 0x25
	.string	"u"
	.byte	0x13
	.byte	0x40
	.long	0x2433
	.uleb128 0x25
	.string	"l"
	.byte	0x13
	.byte	0x41
	.long	0x2443
	.uleb128 0x25
	.string	"ul"
	.byte	0x13
	.byte	0x42
	.long	0x2453
	.uleb128 0x24
	.long	.LASF835
	.byte	0x13
	.byte	0x43
	.long	0x2443
	.uleb128 0x24
	.long	.LASF836
	.byte	0x13
	.byte	0x44
	.long	0x2453
	.uleb128 0x24
	.long	.LASF837
	.byte	0x13
	.byte	0x45
	.long	0x2463
	.uleb128 0x24
	.long	.LASF838
	.byte	0x13
	.byte	0x46
	.long	0x2473
	.uleb128 0x25
	.string	"rtx"
	.byte	0x13
	.byte	0x47
	.long	0x2483
	.uleb128 0x24
	.long	.LASF10
	.byte	0x13
	.byte	0x48
	.long	0x2493
	.uleb128 0x24
	.long	.LASF15
	.byte	0x13
	.byte	0x49
	.long	0x24a3
	.uleb128 0x24
	.long	.LASF839
	.byte	0x13
	.byte	0x4a
	.long	0x24b3
	.uleb128 0x24
	.long	.LASF840
	.byte	0x13
	.byte	0x4b
	.long	0x24c3
	.uleb128 0x25
	.string	"reg"
	.byte	0x13
	.byte	0x4c
	.long	0x24de
	.uleb128 0x24
	.long	.LASF841
	.byte	0x13
	.byte	0x4d
	.long	0x24f9
	.uleb128 0x25
	.string	"bb"
	.byte	0x13
	.byte	0x4e
	.long	0x2509
	.uleb128 0x25
	.string	"te"
	.byte	0x13
	.byte	0x4f
	.long	0x2519
	.byte	0
	.uleb128 0xf
	.long	0x276
	.long	0x2403
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x28b
	.long	0x2413
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x27d
	.long	0x2423
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1e3
	.long	0x2433
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x249
	.long	0x2443
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x25d
	.long	0x2453
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x26f
	.long	0x2463
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x250
	.long	0x2473
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2a8
	.long	0x2483
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0x2493
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0x24a3
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0x24b3
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x219c
	.long	0x24c3
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x24d3
	.long	0x24d3
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x24d9
	.uleb128 0x1d
	.long	.LASF842
	.uleb128 0xf
	.long	0x24ee
	.long	0x24ee
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x24f4
	.uleb128 0x1d
	.long	.LASF843
	.uleb128 0xf
	.long	0x22e9
	.long	0x2509
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x21a7
	.long	0x2519
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2529
	.long	0x2529
	.uleb128 0x10
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x252f
	.uleb128 0x1d
	.long	.LASF844
	.uleb128 0x7
	.long	.LASF845
	.byte	0x13
	.byte	0x50
	.long	0x230e
	.uleb128 0x4
	.long	.LASF846
	.byte	0x30
	.byte	0x13
	.byte	0x53
	.long	0x2588
	.uleb128 0x8
	.long	.LASF847
	.byte	0x13
	.byte	0x54
	.long	0x264
	.byte	0
	.uleb128 0x8
	.long	.LASF848
	.byte	0x13
	.byte	0x55
	.long	0x264
	.byte	0x8
	.uleb128 0x8
	.long	.LASF849
	.byte	0x13
	.byte	0x57
	.long	0x264
	.byte	0x10
	.uleb128 0x8
	.long	.LASF500
	.byte	0x13
	.byte	0x58
	.long	0x4bb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF850
	.byte	0x13
	.byte	0x59
	.long	0x2534
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF851
	.byte	0x13
	.byte	0x5a
	.long	0x2593
	.uleb128 0x3
	.byte	0x8
	.long	0x253f
	.uleb128 0x14
	.long	.LASF852
	.byte	0x4
	.byte	0x14
	.byte	0x34
	.long	0x25c4
	.uleb128 0x15
	.long	.LASF853
	.sleb128 0
	.uleb128 0x15
	.long	.LASF854
	.sleb128 1
	.uleb128 0x15
	.long	.LASF855
	.sleb128 2
	.uleb128 0x15
	.long	.LASF856
	.sleb128 3
	.uleb128 0x15
	.long	.LASF857
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.long	.LASF858
	.byte	0x15
	.byte	0x31
	.long	0x26f
	.uleb128 0x7
	.long	.LASF859
	.byte	0x15
	.byte	0x32
	.long	0x26f
	.uleb128 0x7
	.long	.LASF860
	.byte	0x15
	.byte	0x36
	.long	0x25e5
	.uleb128 0x3
	.byte	0x8
	.long	0x25eb
	.uleb128 0x4
	.long	.LASF861
	.byte	0x20
	.byte	0x15
	.byte	0x54
	.long	0x2628
	.uleb128 0x6
	.string	"key"
	.byte	0x15
	.byte	0x57
	.long	0x25c4
	.byte	0
	.uleb128 0x8
	.long	.LASF466
	.byte	0x15
	.byte	0x5a
	.long	0x25cf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF862
	.byte	0x15
	.byte	0x5d
	.long	0x25da
	.byte	0x10
	.uleb128 0x8
	.long	.LASF863
	.byte	0x15
	.byte	0x5e
	.long	0x25da
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF864
	.byte	0x15
	.byte	0x3a
	.long	0x2633
	.uleb128 0x3
	.byte	0x8
	.long	0x2639
	.uleb128 0x1a
	.long	0x1e3
	.long	0x264d
	.uleb128 0x1b
	.long	0x25c4
	.uleb128 0x1b
	.long	0x25c4
	.byte	0
	.uleb128 0x7
	.long	.LASF865
	.byte	0x15
	.byte	0x3e
	.long	0x2658
	.uleb128 0x3
	.byte	0x8
	.long	0x265e
	.uleb128 0x1c
	.long	0x2669
	.uleb128 0x1b
	.long	0x25c4
	.byte	0
	.uleb128 0x7
	.long	.LASF866
	.byte	0x15
	.byte	0x42
	.long	0x2674
	.uleb128 0x3
	.byte	0x8
	.long	0x267a
	.uleb128 0x1c
	.long	0x2685
	.uleb128 0x1b
	.long	0x25cf
	.byte	0
	.uleb128 0x7
	.long	.LASF867
	.byte	0x15
	.byte	0x4b
	.long	0x2690
	.uleb128 0x3
	.byte	0x8
	.long	0x2696
	.uleb128 0x1a
	.long	0x250
	.long	0x26aa
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x250
	.byte	0
	.uleb128 0x7
	.long	.LASF868
	.byte	0x15
	.byte	0x51
	.long	0x26b5
	.uleb128 0x3
	.byte	0x8
	.long	0x26bb
	.uleb128 0x1c
	.long	0x26cb
	.uleb128 0x1b
	.long	0x250
	.uleb128 0x1b
	.long	0x250
	.byte	0
	.uleb128 0x4
	.long	.LASF869
	.byte	0x38
	.byte	0x15
	.byte	0x62
	.long	0x272c
	.uleb128 0x8
	.long	.LASF870
	.byte	0x15
	.byte	0x65
	.long	0x25da
	.byte	0
	.uleb128 0x8
	.long	.LASF871
	.byte	0x15
	.byte	0x68
	.long	0x2628
	.byte	0x8
	.uleb128 0x8
	.long	.LASF872
	.byte	0x15
	.byte	0x6b
	.long	0x264d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF873
	.byte	0x15
	.byte	0x6e
	.long	0x2669
	.byte	0x18
	.uleb128 0x8
	.long	.LASF874
	.byte	0x15
	.byte	0x71
	.long	0x2685
	.byte	0x20
	.uleb128 0x8
	.long	.LASF875
	.byte	0x15
	.byte	0x72
	.long	0x26aa
	.byte	0x28
	.uleb128 0x8
	.long	.LASF876
	.byte	0x15
	.byte	0x73
	.long	0x250
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF877
	.byte	0x15
	.byte	0x75
	.long	0x2737
	.uleb128 0x3
	.byte	0x8
	.long	0x26cb
	.uleb128 0x14
	.long	.LASF878
	.byte	0x4
	.byte	0x16
	.byte	0x98
	.long	0x2786
	.uleb128 0x15
	.long	.LASF879
	.sleb128 0
	.uleb128 0x15
	.long	.LASF880
	.sleb128 1
	.uleb128 0x15
	.long	.LASF881
	.sleb128 2
	.uleb128 0x15
	.long	.LASF882
	.sleb128 3
	.uleb128 0x15
	.long	.LASF883
	.sleb128 4
	.uleb128 0x15
	.long	.LASF884
	.sleb128 5
	.uleb128 0x15
	.long	.LASF885
	.sleb128 6
	.uleb128 0x15
	.long	.LASF886
	.sleb128 7
	.uleb128 0x15
	.long	.LASF887
	.sleb128 8
	.uleb128 0x15
	.long	.LASF888
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c0e
	.uleb128 0x26
	.string	"rid"
	.byte	0x4
	.byte	0x17
	.byte	0x33
	.long	0x2aa4
	.uleb128 0x15
	.long	.LASF889
	.sleb128 0
	.uleb128 0x15
	.long	.LASF890
	.sleb128 1
	.uleb128 0x15
	.long	.LASF891
	.sleb128 2
	.uleb128 0x15
	.long	.LASF892
	.sleb128 3
	.uleb128 0x15
	.long	.LASF893
	.sleb128 4
	.uleb128 0x15
	.long	.LASF894
	.sleb128 5
	.uleb128 0x15
	.long	.LASF895
	.sleb128 6
	.uleb128 0x15
	.long	.LASF896
	.sleb128 7
	.uleb128 0x15
	.long	.LASF897
	.sleb128 8
	.uleb128 0x15
	.long	.LASF898
	.sleb128 9
	.uleb128 0x15
	.long	.LASF899
	.sleb128 10
	.uleb128 0x15
	.long	.LASF900
	.sleb128 11
	.uleb128 0x15
	.long	.LASF901
	.sleb128 12
	.uleb128 0x15
	.long	.LASF902
	.sleb128 13
	.uleb128 0x15
	.long	.LASF903
	.sleb128 14
	.uleb128 0x15
	.long	.LASF904
	.sleb128 15
	.uleb128 0x15
	.long	.LASF905
	.sleb128 16
	.uleb128 0x15
	.long	.LASF906
	.sleb128 17
	.uleb128 0x15
	.long	.LASF907
	.sleb128 18
	.uleb128 0x15
	.long	.LASF908
	.sleb128 19
	.uleb128 0x15
	.long	.LASF909
	.sleb128 20
	.uleb128 0x15
	.long	.LASF910
	.sleb128 21
	.uleb128 0x15
	.long	.LASF911
	.sleb128 22
	.uleb128 0x15
	.long	.LASF912
	.sleb128 23
	.uleb128 0x15
	.long	.LASF913
	.sleb128 24
	.uleb128 0x15
	.long	.LASF914
	.sleb128 25
	.uleb128 0x15
	.long	.LASF915
	.sleb128 26
	.uleb128 0x15
	.long	.LASF916
	.sleb128 27
	.uleb128 0x15
	.long	.LASF917
	.sleb128 28
	.uleb128 0x15
	.long	.LASF918
	.sleb128 29
	.uleb128 0x15
	.long	.LASF919
	.sleb128 30
	.uleb128 0x15
	.long	.LASF920
	.sleb128 31
	.uleb128 0x15
	.long	.LASF921
	.sleb128 32
	.uleb128 0x15
	.long	.LASF922
	.sleb128 33
	.uleb128 0x15
	.long	.LASF923
	.sleb128 34
	.uleb128 0x15
	.long	.LASF924
	.sleb128 35
	.uleb128 0x15
	.long	.LASF925
	.sleb128 36
	.uleb128 0x15
	.long	.LASF926
	.sleb128 37
	.uleb128 0x15
	.long	.LASF927
	.sleb128 38
	.uleb128 0x15
	.long	.LASF928
	.sleb128 39
	.uleb128 0x15
	.long	.LASF929
	.sleb128 40
	.uleb128 0x15
	.long	.LASF930
	.sleb128 41
	.uleb128 0x15
	.long	.LASF931
	.sleb128 42
	.uleb128 0x15
	.long	.LASF932
	.sleb128 43
	.uleb128 0x15
	.long	.LASF933
	.sleb128 44
	.uleb128 0x15
	.long	.LASF934
	.sleb128 45
	.uleb128 0x15
	.long	.LASF935
	.sleb128 46
	.uleb128 0x15
	.long	.LASF936
	.sleb128 47
	.uleb128 0x15
	.long	.LASF937
	.sleb128 48
	.uleb128 0x15
	.long	.LASF938
	.sleb128 49
	.uleb128 0x15
	.long	.LASF939
	.sleb128 50
	.uleb128 0x15
	.long	.LASF940
	.sleb128 51
	.uleb128 0x15
	.long	.LASF941
	.sleb128 52
	.uleb128 0x15
	.long	.LASF942
	.sleb128 53
	.uleb128 0x15
	.long	.LASF943
	.sleb128 54
	.uleb128 0x15
	.long	.LASF944
	.sleb128 55
	.uleb128 0x15
	.long	.LASF945
	.sleb128 56
	.uleb128 0x15
	.long	.LASF946
	.sleb128 57
	.uleb128 0x15
	.long	.LASF947
	.sleb128 58
	.uleb128 0x15
	.long	.LASF948
	.sleb128 59
	.uleb128 0x15
	.long	.LASF949
	.sleb128 60
	.uleb128 0x15
	.long	.LASF950
	.sleb128 61
	.uleb128 0x15
	.long	.LASF951
	.sleb128 62
	.uleb128 0x15
	.long	.LASF952
	.sleb128 63
	.uleb128 0x15
	.long	.LASF953
	.sleb128 64
	.uleb128 0x15
	.long	.LASF954
	.sleb128 65
	.uleb128 0x15
	.long	.LASF955
	.sleb128 66
	.uleb128 0x15
	.long	.LASF956
	.sleb128 67
	.uleb128 0x15
	.long	.LASF957
	.sleb128 68
	.uleb128 0x15
	.long	.LASF958
	.sleb128 69
	.uleb128 0x15
	.long	.LASF959
	.sleb128 70
	.uleb128 0x15
	.long	.LASF960
	.sleb128 71
	.uleb128 0x15
	.long	.LASF961
	.sleb128 72
	.uleb128 0x15
	.long	.LASF962
	.sleb128 73
	.uleb128 0x15
	.long	.LASF963
	.sleb128 74
	.uleb128 0x15
	.long	.LASF964
	.sleb128 75
	.uleb128 0x15
	.long	.LASF965
	.sleb128 76
	.uleb128 0x15
	.long	.LASF966
	.sleb128 77
	.uleb128 0x15
	.long	.LASF967
	.sleb128 78
	.uleb128 0x15
	.long	.LASF968
	.sleb128 79
	.uleb128 0x15
	.long	.LASF969
	.sleb128 80
	.uleb128 0x15
	.long	.LASF970
	.sleb128 81
	.uleb128 0x15
	.long	.LASF971
	.sleb128 82
	.uleb128 0x15
	.long	.LASF972
	.sleb128 83
	.uleb128 0x15
	.long	.LASF973
	.sleb128 84
	.uleb128 0x15
	.long	.LASF974
	.sleb128 85
	.uleb128 0x15
	.long	.LASF975
	.sleb128 86
	.uleb128 0x15
	.long	.LASF976
	.sleb128 87
	.uleb128 0x15
	.long	.LASF977
	.sleb128 88
	.uleb128 0x15
	.long	.LASF978
	.sleb128 89
	.uleb128 0x15
	.long	.LASF979
	.sleb128 90
	.uleb128 0x15
	.long	.LASF980
	.sleb128 91
	.uleb128 0x15
	.long	.LASF981
	.sleb128 92
	.uleb128 0x15
	.long	.LASF982
	.sleb128 93
	.uleb128 0x15
	.long	.LASF983
	.sleb128 94
	.uleb128 0x15
	.long	.LASF984
	.sleb128 95
	.uleb128 0x15
	.long	.LASF985
	.sleb128 96
	.uleb128 0x15
	.long	.LASF986
	.sleb128 97
	.uleb128 0x15
	.long	.LASF987
	.sleb128 98
	.uleb128 0x15
	.long	.LASF988
	.sleb128 99
	.uleb128 0x15
	.long	.LASF989
	.sleb128 100
	.uleb128 0x15
	.long	.LASF990
	.sleb128 101
	.uleb128 0x15
	.long	.LASF991
	.sleb128 102
	.uleb128 0x15
	.long	.LASF992
	.sleb128 103
	.uleb128 0x15
	.long	.LASF993
	.sleb128 104
	.uleb128 0x15
	.long	.LASF994
	.sleb128 105
	.uleb128 0x15
	.long	.LASF995
	.sleb128 106
	.uleb128 0x15
	.long	.LASF996
	.sleb128 107
	.uleb128 0x15
	.long	.LASF997
	.sleb128 108
	.uleb128 0x15
	.long	.LASF998
	.sleb128 109
	.uleb128 0x15
	.long	.LASF999
	.sleb128 110
	.uleb128 0x15
	.long	.LASF1000
	.sleb128 111
	.uleb128 0x15
	.long	.LASF1001
	.sleb128 112
	.uleb128 0x15
	.long	.LASF1002
	.sleb128 113
	.uleb128 0x15
	.long	.LASF1003
	.sleb128 114
	.uleb128 0x15
	.long	.LASF1004
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1005
	.sleb128 26
	.uleb128 0x15
	.long	.LASF1006
	.sleb128 102
	.uleb128 0x15
	.long	.LASF1007
	.sleb128 113
	.uleb128 0x15
	.long	.LASF1008
	.sleb128 21
	.uleb128 0x15
	.long	.LASF1009
	.sleb128 26
	.byte	0
	.uleb128 0x14
	.long	.LASF1010
	.byte	0x4
	.byte	0x17
	.byte	0x85
	.long	0x2b77
	.uleb128 0x15
	.long	.LASF1011
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1012
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1013
	.sleb128 2
	.uleb128 0x15
	.long	.LASF1014
	.sleb128 3
	.uleb128 0x15
	.long	.LASF1015
	.sleb128 4
	.uleb128 0x15
	.long	.LASF1016
	.sleb128 5
	.uleb128 0x15
	.long	.LASF1017
	.sleb128 6
	.uleb128 0x15
	.long	.LASF1018
	.sleb128 7
	.uleb128 0x15
	.long	.LASF1019
	.sleb128 8
	.uleb128 0x15
	.long	.LASF1020
	.sleb128 9
	.uleb128 0x15
	.long	.LASF1021
	.sleb128 10
	.uleb128 0x15
	.long	.LASF1022
	.sleb128 11
	.uleb128 0x15
	.long	.LASF1023
	.sleb128 12
	.uleb128 0x15
	.long	.LASF1024
	.sleb128 13
	.uleb128 0x15
	.long	.LASF1025
	.sleb128 14
	.uleb128 0x15
	.long	.LASF1026
	.sleb128 15
	.uleb128 0x15
	.long	.LASF1027
	.sleb128 16
	.uleb128 0x15
	.long	.LASF1028
	.sleb128 17
	.uleb128 0x15
	.long	.LASF1029
	.sleb128 18
	.uleb128 0x15
	.long	.LASF1030
	.sleb128 19
	.uleb128 0x15
	.long	.LASF1031
	.sleb128 20
	.uleb128 0x15
	.long	.LASF1032
	.sleb128 21
	.uleb128 0x15
	.long	.LASF1033
	.sleb128 22
	.uleb128 0x15
	.long	.LASF1034
	.sleb128 23
	.uleb128 0x15
	.long	.LASF1035
	.sleb128 24
	.uleb128 0x15
	.long	.LASF1036
	.sleb128 25
	.uleb128 0x15
	.long	.LASF1037
	.sleb128 26
	.uleb128 0x15
	.long	.LASF1038
	.sleb128 27
	.uleb128 0x15
	.long	.LASF1039
	.sleb128 28
	.uleb128 0x15
	.long	.LASF1040
	.sleb128 29
	.uleb128 0x15
	.long	.LASF1041
	.sleb128 30
	.uleb128 0x15
	.long	.LASF1042
	.sleb128 31
	.uleb128 0x15
	.long	.LASF1043
	.sleb128 32
	.byte	0
	.uleb128 0x14
	.long	.LASF1044
	.byte	0x4
	.byte	0x17
	.byte	0xf4
	.long	0x2b96
	.uleb128 0x15
	.long	.LASF1045
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1046
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1047
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF1048
	.byte	0x20
	.byte	0x17
	.byte	0xff
	.long	0x2bd7
	.uleb128 0x12
	.long	.LASF1049
	.byte	0x17
	.value	0x101
	.long	0x123
	.byte	0
	.uleb128 0x12
	.long	.LASF1050
	.byte	0x17
	.value	0x104
	.long	0x123
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1051
	.byte	0x17
	.value	0x106
	.long	0x4bb
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1052
	.byte	0x17
	.value	0x115
	.long	0x1e3
	.byte	0x18
	.byte	0
	.uleb128 0x21
	.long	.LASF1053
	.byte	0x17
	.value	0x118
	.long	0x2be3
	.uleb128 0x3
	.byte	0x8
	.long	0x2b96
	.uleb128 0x18
	.long	.LASF1054
	.byte	0x28
	.byte	0x17
	.value	0x11d
	.long	0x2c11
	.uleb128 0x12
	.long	.LASF1055
	.byte	0x17
	.value	0x120
	.long	0x2b96
	.byte	0
	.uleb128 0x12
	.long	.LASF1056
	.byte	0x17
	.value	0x122
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.long	.LASF1057
	.byte	0x4
	.byte	0x17
	.value	0x165
	.long	0x2c2f
	.uleb128 0x1e
	.long	.LASF1058
	.byte	0x17
	.value	0x166
	.long	0x249
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF1059
	.byte	0x4
	.byte	0x17
	.value	0x2e3
	.long	0x2cf3
	.uleb128 0x15
	.long	.LASF1060
	.sleb128 147
	.uleb128 0x15
	.long	.LASF1061
	.sleb128 148
	.uleb128 0x15
	.long	.LASF1062
	.sleb128 149
	.uleb128 0x15
	.long	.LASF1063
	.sleb128 150
	.uleb128 0x15
	.long	.LASF1064
	.sleb128 151
	.uleb128 0x15
	.long	.LASF1065
	.sleb128 152
	.uleb128 0x15
	.long	.LASF1066
	.sleb128 153
	.uleb128 0x15
	.long	.LASF1067
	.sleb128 154
	.uleb128 0x15
	.long	.LASF1068
	.sleb128 155
	.uleb128 0x15
	.long	.LASF1069
	.sleb128 156
	.uleb128 0x15
	.long	.LASF1070
	.sleb128 157
	.uleb128 0x15
	.long	.LASF1071
	.sleb128 158
	.uleb128 0x15
	.long	.LASF1072
	.sleb128 159
	.uleb128 0x15
	.long	.LASF1073
	.sleb128 160
	.uleb128 0x15
	.long	.LASF1074
	.sleb128 161
	.uleb128 0x15
	.long	.LASF1075
	.sleb128 162
	.uleb128 0x15
	.long	.LASF1076
	.sleb128 163
	.uleb128 0x15
	.long	.LASF1077
	.sleb128 164
	.uleb128 0x15
	.long	.LASF1078
	.sleb128 165
	.uleb128 0x15
	.long	.LASF1079
	.sleb128 166
	.uleb128 0x15
	.long	.LASF1080
	.sleb128 167
	.uleb128 0x15
	.long	.LASF1081
	.sleb128 168
	.uleb128 0x15
	.long	.LASF1082
	.sleb128 169
	.uleb128 0x15
	.long	.LASF1083
	.sleb128 170
	.uleb128 0x15
	.long	.LASF1084
	.sleb128 171
	.uleb128 0x15
	.long	.LASF1085
	.sleb128 172
	.byte	0
	.uleb128 0x7
	.long	.LASF1086
	.byte	0x18
	.byte	0x1c
	.long	0x2cfe
	.uleb128 0x27
	.long	.LASF1086
	.value	0x140
	.byte	0x18
	.byte	0x63
	.long	0x2d55
	.uleb128 0x8
	.long	.LASF1087
	.byte	0x18
	.byte	0x69
	.long	0x2f1a
	.byte	0
	.uleb128 0x8
	.long	.LASF1088
	.byte	0x18
	.byte	0x6c
	.long	0x2f25
	.byte	0x50
	.uleb128 0x8
	.long	.LASF448
	.byte	0x18
	.byte	0x6f
	.long	0x104b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1089
	.byte	0x18
	.byte	0x72
	.long	0x1e3
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF1090
	.byte	0x18
	.byte	0x76
	.long	0x2f2b
	.byte	0xb4
	.uleb128 0x28
	.long	.LASF1091
	.byte	0x18
	.byte	0x82
	.long	0x2e63
	.value	0x138
	.byte	0
	.uleb128 0x7
	.long	.LASF1092
	.byte	0x18
	.byte	0x1d
	.long	0x2d60
	.uleb128 0x27
	.long	.LASF1092
	.value	0x178
	.byte	0x18
	.byte	0xa2
	.long	0x2de2
	.uleb128 0x8
	.long	.LASF1093
	.byte	0x18
	.byte	0xa7
	.long	0x2cf3
	.byte	0
	.uleb128 0x28
	.long	.LASF1094
	.byte	0x18
	.byte	0xaa
	.long	0x4bb
	.value	0x140
	.uleb128 0x28
	.long	.LASF1095
	.byte	0x18
	.byte	0xae
	.long	0x2f04
	.value	0x148
	.uleb128 0x28
	.long	.LASF1096
	.byte	0x18
	.byte	0xb1
	.long	0x4bb
	.value	0x150
	.uleb128 0x28
	.long	.LASF1097
	.byte	0x18
	.byte	0xb4
	.long	0x1e3
	.value	0x158
	.uleb128 0x28
	.long	.LASF1098
	.byte	0x18
	.byte	0xb7
	.long	0x1e3
	.value	0x15c
	.uleb128 0x28
	.long	.LASF1099
	.byte	0x18
	.byte	0xc0
	.long	0x2de2
	.value	0x160
	.uleb128 0x28
	.long	.LASF1100
	.byte	0x18
	.byte	0xc3
	.long	0x2de2
	.value	0x168
	.uleb128 0x28
	.long	.LASF1101
	.byte	0x18
	.byte	0xc6
	.long	0x250
	.value	0x170
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2de8
	.uleb128 0x1c
	.long	0x2df8
	.uleb128 0x1b
	.long	0x2df8
	.uleb128 0x1b
	.long	0x2dfe
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cf3
	.uleb128 0x3
	.byte	0x8
	.long	0x2d55
	.uleb128 0x29
	.byte	0x4
	.byte	0x18
	.byte	0x23
	.long	0x2e3d
	.uleb128 0x15
	.long	.LASF1102
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1103
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1104
	.sleb128 2
	.uleb128 0x15
	.long	.LASF1105
	.sleb128 3
	.uleb128 0x15
	.long	.LASF1106
	.sleb128 4
	.uleb128 0x15
	.long	.LASF1107
	.sleb128 5
	.uleb128 0x15
	.long	.LASF1108
	.sleb128 6
	.uleb128 0x15
	.long	.LASF1109
	.sleb128 7
	.byte	0
	.uleb128 0x29
	.byte	0x4
	.byte	0x18
	.byte	0x32
	.long	0x2e58
	.uleb128 0x15
	.long	.LASF1110
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1111
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1112
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF1113
	.byte	0x18
	.byte	0x36
	.long	0x2e3d
	.uleb128 0x7
	.long	.LASF1114
	.byte	0x18
	.byte	0x3b
	.long	0x2e6e
	.uleb128 0x3
	.byte	0x8
	.long	0x2e74
	.uleb128 0x1a
	.long	0x1e3
	.long	0x2e83
	.uleb128 0x1b
	.long	0x2df8
	.byte	0
	.uleb128 0x19
	.byte	0x50
	.byte	0x18
	.byte	0x3e
	.long	0x2f04
	.uleb128 0x8
	.long	.LASF1115
	.byte	0x18
	.byte	0x41
	.long	0x4bb
	.byte	0
	.uleb128 0x8
	.long	.LASF1116
	.byte	0x18
	.byte	0x45
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1117
	.byte	0x18
	.byte	0x49
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1118
	.byte	0x18
	.byte	0x4c
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1119
	.byte	0x18
	.byte	0x4f
	.long	0x1b3e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1120
	.byte	0x18
	.byte	0x52
	.long	0x1b3e
	.byte	0x15
	.uleb128 0x8
	.long	.LASF1121
	.byte	0x18
	.byte	0x55
	.long	0x2e58
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1122
	.byte	0x18
	.byte	0x59
	.long	0x4bb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1123
	.byte	0x18
	.byte	0x5c
	.long	0x2f04
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1124
	.byte	0x18
	.byte	0x5f
	.long	0x2f0a
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x252
	.uleb128 0xf
	.long	0x1e3
	.long	0x2f1a
	.uleb128 0x10
	.long	0x1ea
	.byte	0x6
	.byte	0
	.uleb128 0x7
	.long	.LASF1125
	.byte	0x18
	.byte	0x60
	.long	0x2e83
	.uleb128 0x3
	.byte	0x8
	.long	0x2b5
	.uleb128 0xf
	.long	0x2ae
	.long	0x2f3b
	.uleb128 0x10
	.long	0x1ea
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.long	.LASF1126
	.byte	0x20
	.byte	0x19
	.byte	0x39
	.long	0x2f74
	.uleb128 0x6
	.string	"hi"
	.byte	0x19
	.byte	0x3b
	.long	0x4bb
	.byte	0
	.uleb128 0x6
	.string	"si"
	.byte	0x19
	.byte	0x3c
	.long	0x4bb
	.byte	0x8
	.uleb128 0x6
	.string	"di"
	.byte	0x19
	.byte	0x3d
	.long	0x4bb
	.byte	0x10
	.uleb128 0x6
	.string	"ti"
	.byte	0x19
	.byte	0x3e
	.long	0x4bb
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	.LASF1127
	.byte	0xa8
	.byte	0x19
	.byte	0x32
	.long	0x3035
	.uleb128 0x8
	.long	.LASF1128
	.byte	0x19
	.byte	0x35
	.long	0x4bb
	.byte	0
	.uleb128 0x8
	.long	.LASF1129
	.byte	0x19
	.byte	0x35
	.long	0x4bb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1130
	.byte	0x19
	.byte	0x38
	.long	0x4bb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1131
	.byte	0x19
	.byte	0x3f
	.long	0x2f3b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1132
	.byte	0x19
	.byte	0x3f
	.long	0x2f3b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1133
	.byte	0x19
	.byte	0x46
	.long	0x304e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF1134
	.byte	0x19
	.byte	0x49
	.long	0x3064
	.byte	0x60
	.uleb128 0x8
	.long	.LASF1135
	.byte	0x19
	.byte	0x4c
	.long	0x3075
	.byte	0x68
	.uleb128 0x8
	.long	.LASF1136
	.byte	0x19
	.byte	0x4f
	.long	0x3075
	.byte	0x70
	.uleb128 0x8
	.long	.LASF1137
	.byte	0x19
	.byte	0x52
	.long	0x3064
	.byte	0x78
	.uleb128 0x8
	.long	.LASF1138
	.byte	0x19
	.byte	0x56
	.long	0x308b
	.byte	0x80
	.uleb128 0x8
	.long	.LASF1139
	.byte	0x19
	.byte	0x59
	.long	0x3092
	.byte	0x88
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x19
	.byte	0x5c
	.long	0x3092
	.byte	0x90
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x19
	.byte	0x5f
	.long	0x30a8
	.byte	0x98
	.uleb128 0x8
	.long	.LASF1142
	.byte	0x19
	.byte	0x62
	.long	0x30a8
	.byte	0xa0
	.byte	0
	.uleb128 0x1a
	.long	0x1b3e
	.long	0x304e
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x249
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3035
	.uleb128 0x1c
	.long	0x3064
	.uleb128 0x1b
	.long	0x2f25
	.uleb128 0x1b
	.long	0x25d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3054
	.uleb128 0x1c
	.long	0x3075
	.uleb128 0x1b
	.long	0x2f25
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x306a
	.uleb128 0x1c
	.long	0x308b
	.uleb128 0x1b
	.long	0x4bb
	.uleb128 0x1b
	.long	0x249
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x307b
	.uleb128 0x2a
	.uleb128 0x3
	.byte	0x8
	.long	0x3091
	.uleb128 0x1c
	.long	0x30a8
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3098
	.uleb128 0x4
	.long	.LASF840
	.byte	0x48
	.byte	0x19
	.byte	0x66
	.long	0x3127
	.uleb128 0x8
	.long	.LASF1143
	.byte	0x19
	.byte	0x6b
	.long	0x3145
	.byte	0
	.uleb128 0x8
	.long	.LASF1144
	.byte	0x19
	.byte	0x6f
	.long	0x315f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1145
	.byte	0x19
	.byte	0x74
	.long	0x316a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1146
	.byte	0x19
	.byte	0x78
	.long	0x318e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1147
	.byte	0x19
	.byte	0x7b
	.long	0x31a9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1148
	.byte	0x19
	.byte	0x7e
	.long	0x31bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1149
	.byte	0x19
	.byte	0x82
	.long	0x31e8
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1150
	.byte	0x19
	.byte	0x83
	.long	0x31e8
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1151
	.byte	0x19
	.byte	0x8a
	.long	0x3202
	.byte	0x40
	.byte	0
	.uleb128 0x1a
	.long	0x1e3
	.long	0x3145
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3127
	.uleb128 0x1a
	.long	0x1e3
	.long	0x315f
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x314b
	.uleb128 0x2b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x3165
	.uleb128 0x1a
	.long	0x1e3
	.long	0x318e
	.uleb128 0x1b
	.long	0x2f25
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3170
	.uleb128 0x1c
	.long	0x31a9
	.uleb128 0x1b
	.long	0x2f25
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3194
	.uleb128 0x1c
	.long	0x31bf
	.uleb128 0x1b
	.long	0x2f25
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31af
	.uleb128 0x1a
	.long	0x1e3
	.long	0x31e8
	.uleb128 0x1b
	.long	0x2f25
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x228d
	.uleb128 0x1b
	.long	0x4d4
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31c5
	.uleb128 0x1a
	.long	0x2d
	.long	0x3202
	.uleb128 0x1b
	.long	0x1e3
	.uleb128 0x1b
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31ee
	.uleb128 0x27
	.long	.LASF1152
	.value	0x158
	.byte	0x19
	.byte	0x2f
	.long	0x32e2
	.uleb128 0x8
	.long	.LASF1127
	.byte	0x19
	.byte	0x63
	.long	0x2f74
	.byte	0
	.uleb128 0x8
	.long	.LASF840
	.byte	0x19
	.byte	0x8b
	.long	0x30ae
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF1153
	.byte	0x19
	.byte	0x8e
	.long	0x32f6
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF1154
	.byte	0x19
	.byte	0x91
	.long	0x32f6
	.byte	0xf8
	.uleb128 0x28
	.long	.LASF1155
	.byte	0x19
	.byte	0x94
	.long	0x32fc
	.value	0x100
	.uleb128 0x28
	.long	.LASF1156
	.byte	0x19
	.byte	0x99
	.long	0x331b
	.value	0x108
	.uleb128 0x28
	.long	.LASF1157
	.byte	0x19
	.byte	0x9c
	.long	0x332c
	.value	0x110
	.uleb128 0x28
	.long	.LASF1158
	.byte	0x19
	.byte	0x9f
	.long	0x3342
	.value	0x118
	.uleb128 0x28
	.long	.LASF1159
	.byte	0x19
	.byte	0xa3
	.long	0x3357
	.value	0x120
	.uleb128 0x28
	.long	.LASF1160
	.byte	0x19
	.byte	0xa7
	.long	0x3357
	.value	0x128
	.uleb128 0x28
	.long	.LASF1161
	.byte	0x19
	.byte	0xaa
	.long	0x3092
	.value	0x130
	.uleb128 0x28
	.long	.LASF1162
	.byte	0x19
	.byte	0xad
	.long	0x3380
	.value	0x138
	.uleb128 0x28
	.long	.LASF1163
	.byte	0x19
	.byte	0xb3
	.long	0x339f
	.value	0x140
	.uleb128 0x28
	.long	.LASF1164
	.byte	0x19
	.byte	0xb6
	.long	0x1b3e
	.value	0x148
	.uleb128 0x28
	.long	.LASF1165
	.byte	0x19
	.byte	0xba
	.long	0x1b3e
	.value	0x149
	.uleb128 0x28
	.long	.LASF1166
	.byte	0x19
	.byte	0xbe
	.long	0x33aa
	.value	0x150
	.byte	0
	.uleb128 0x1a
	.long	0x123
	.long	0x32f6
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32e2
	.uleb128 0x3
	.byte	0x8
	.long	0x3302
	.uleb128 0xc
	.long	0x1acb
	.uleb128 0x1a
	.long	0x1e3
	.long	0x331b
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3307
	.uleb128 0x1c
	.long	0x332c
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3321
	.uleb128 0x1c
	.long	0x3342
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1b68
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3332
	.uleb128 0x1a
	.long	0x1b3e
	.long	0x3357
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3348
	.uleb128 0x1a
	.long	0x2d
	.long	0x3380
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x2d
	.uleb128 0x1b
	.long	0x4da
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x335d
	.uleb128 0x1a
	.long	0x249
	.long	0x339f
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x4bb
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3386
	.uleb128 0x2b
	.long	0x1b3e
	.uleb128 0x3
	.byte	0x8
	.long	0x33a5
	.uleb128 0x4
	.long	.LASF1167
	.byte	0x10
	.byte	0x1
	.byte	0xe2
	.long	0x33e1
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0xe4
	.long	0x33e1
	.byte	0
	.uleb128 0x6
	.string	"rid"
	.byte	0x1
	.byte	0xe5
	.long	0x33e6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1168
	.byte	0x1
	.byte	0xe6
	.long	0x1de
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	0x1b68
	.uleb128 0xc
	.long	0x249
	.uleb128 0x19
	.byte	0x20
	.byte	0x1
	.byte	0xfd
	.long	0x3434
	.uleb128 0x8
	.long	.LASF1169
	.byte	0x1
	.byte	0xff
	.long	0x1e3
	.byte	0
	.uleb128 0x12
	.long	.LASF1097
	.byte	0x1
	.value	0x100
	.long	0x1e3
	.byte	0x4
	.uleb128 0x12
	.long	.LASF1096
	.byte	0x1
	.value	0x101
	.long	0x4bb
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1170
	.byte	0x1
	.value	0x102
	.long	0x1e3
	.byte	0x10
	.uleb128 0x12
	.long	.LASF1171
	.byte	0x1
	.value	0x103
	.long	0x123
	.byte	0x18
	.byte	0
	.uleb128 0x21
	.long	.LASF1172
	.byte	0x1
	.value	0x104
	.long	0x33eb
	.uleb128 0x18
	.long	.LASF1173
	.byte	0x18
	.byte	0x1
	.value	0x33a
	.long	0x3475
	.uleb128 0x12
	.long	.LASF1174
	.byte	0x1
	.value	0x33c
	.long	0x3475
	.byte	0
	.uleb128 0x12
	.long	.LASF777
	.byte	0x1
	.value	0x33d
	.long	0x123
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1175
	.byte	0x1
	.value	0x33d
	.long	0x123
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3440
	.uleb128 0x18
	.long	.LASF1176
	.byte	0x20
	.byte	0x1
	.value	0x342
	.long	0x34bd
	.uleb128 0x12
	.long	.LASF1174
	.byte	0x1
	.value	0x344
	.long	0x34bd
	.byte	0
	.uleb128 0x12
	.long	.LASF1177
	.byte	0x1
	.value	0x345
	.long	0x3475
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1178
	.byte	0x1
	.value	0x346
	.long	0x3475
	.byte	0x10
	.uleb128 0x12
	.long	.LASF777
	.byte	0x1
	.value	0x347
	.long	0x123
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x347b
	.uleb128 0x18
	.long	.LASF1179
	.byte	0x10
	.byte	0x1
	.value	0xb39
	.long	0x34eb
	.uleb128 0x12
	.long	.LASF500
	.byte	0x1
	.value	0xb3b
	.long	0x4bb
	.byte	0
	.uleb128 0x12
	.long	.LASF1174
	.byte	0x1
	.value	0xb3c
	.long	0x34eb
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34c3
	.uleb128 0x21
	.long	.LASF1179
	.byte	0x1
	.value	0xb3d
	.long	0x34c3
	.uleb128 0x20
	.long	.LASF1180
	.byte	0x4
	.byte	0x1
	.value	0xff8
	.long	0x36d8
	.uleb128 0x15
	.long	.LASF1181
	.sleb128 0
	.uleb128 0x15
	.long	.LASF1182
	.sleb128 1
	.uleb128 0x15
	.long	.LASF1183
	.sleb128 2
	.uleb128 0x15
	.long	.LASF1184
	.sleb128 3
	.uleb128 0x15
	.long	.LASF1185
	.sleb128 4
	.uleb128 0x15
	.long	.LASF1186
	.sleb128 5
	.uleb128 0x15
	.long	.LASF1187
	.sleb128 6
	.uleb128 0x15
	.long	.LASF1188
	.sleb128 7
	.uleb128 0x15
	.long	.LASF1189
	.sleb128 8
	.uleb128 0x15
	.long	.LASF1190
	.sleb128 9
	.uleb128 0x15
	.long	.LASF1191
	.sleb128 10
	.uleb128 0x15
	.long	.LASF1192
	.sleb128 11
	.uleb128 0x15
	.long	.LASF1193
	.sleb128 12
	.uleb128 0x15
	.long	.LASF1194
	.sleb128 13
	.uleb128 0x15
	.long	.LASF1195
	.sleb128 14
	.uleb128 0x15
	.long	.LASF1196
	.sleb128 15
	.uleb128 0x15
	.long	.LASF1197
	.sleb128 16
	.uleb128 0x15
	.long	.LASF1198
	.sleb128 17
	.uleb128 0x15
	.long	.LASF1199
	.sleb128 18
	.uleb128 0x15
	.long	.LASF1200
	.sleb128 19
	.uleb128 0x15
	.long	.LASF1201
	.sleb128 20
	.uleb128 0x15
	.long	.LASF1202
	.sleb128 21
	.uleb128 0x15
	.long	.LASF1203
	.sleb128 22
	.uleb128 0x15
	.long	.LASF1204
	.sleb128 23
	.uleb128 0x15
	.long	.LASF1205
	.sleb128 24
	.uleb128 0x15
	.long	.LASF1206
	.sleb128 25
	.uleb128 0x15
	.long	.LASF1207
	.sleb128 26
	.uleb128 0x15
	.long	.LASF1208
	.sleb128 27
	.uleb128 0x15
	.long	.LASF1209
	.sleb128 28
	.uleb128 0x15
	.long	.LASF1210
	.sleb128 29
	.uleb128 0x15
	.long	.LASF1211
	.sleb128 30
	.uleb128 0x15
	.long	.LASF1212
	.sleb128 31
	.uleb128 0x15
	.long	.LASF1213
	.sleb128 32
	.uleb128 0x15
	.long	.LASF1214
	.sleb128 33
	.uleb128 0x15
	.long	.LASF1215
	.sleb128 34
	.uleb128 0x15
	.long	.LASF1216
	.sleb128 35
	.uleb128 0x15
	.long	.LASF1217
	.sleb128 36
	.uleb128 0x15
	.long	.LASF1218
	.sleb128 37
	.uleb128 0x15
	.long	.LASF1219
	.sleb128 38
	.uleb128 0x15
	.long	.LASF1220
	.sleb128 39
	.uleb128 0x15
	.long	.LASF1221
	.sleb128 40
	.uleb128 0x15
	.long	.LASF1222
	.sleb128 41
	.uleb128 0x15
	.long	.LASF1223
	.sleb128 42
	.uleb128 0x15
	.long	.LASF1224
	.sleb128 43
	.uleb128 0x15
	.long	.LASF1225
	.sleb128 44
	.uleb128 0x15
	.long	.LASF1226
	.sleb128 45
	.uleb128 0x15
	.long	.LASF1227
	.sleb128 46
	.uleb128 0x15
	.long	.LASF1228
	.sleb128 47
	.uleb128 0x15
	.long	.LASF1229
	.sleb128 48
	.uleb128 0x15
	.long	.LASF1230
	.sleb128 49
	.uleb128 0x15
	.long	.LASF1231
	.sleb128 50
	.uleb128 0x15
	.long	.LASF1232
	.sleb128 51
	.uleb128 0x15
	.long	.LASF1233
	.sleb128 52
	.uleb128 0x15
	.long	.LASF1234
	.sleb128 53
	.uleb128 0x15
	.long	.LASF1235
	.sleb128 54
	.uleb128 0x15
	.long	.LASF1236
	.sleb128 55
	.uleb128 0x15
	.long	.LASF1237
	.sleb128 56
	.uleb128 0x15
	.long	.LASF1238
	.sleb128 57
	.uleb128 0x15
	.long	.LASF1239
	.sleb128 58
	.uleb128 0x15
	.long	.LASF1240
	.sleb128 59
	.uleb128 0x15
	.long	.LASF1241
	.sleb128 60
	.uleb128 0x15
	.long	.LASF1242
	.sleb128 61
	.uleb128 0x15
	.long	.LASF1243
	.sleb128 62
	.uleb128 0x15
	.long	.LASF1244
	.sleb128 63
	.uleb128 0x15
	.long	.LASF1245
	.sleb128 64
	.uleb128 0x15
	.long	.LASF1246
	.sleb128 65
	.uleb128 0x15
	.long	.LASF1247
	.sleb128 66
	.uleb128 0x15
	.long	.LASF1248
	.sleb128 67
	.uleb128 0x15
	.long	.LASF1249
	.sleb128 68
	.uleb128 0x15
	.long	.LASF1250
	.sleb128 69
	.uleb128 0x15
	.long	.LASF1251
	.sleb128 70
	.uleb128 0x15
	.long	.LASF1252
	.sleb128 71
	.uleb128 0x15
	.long	.LASF1253
	.sleb128 72
	.uleb128 0x15
	.long	.LASF1254
	.sleb128 73
	.uleb128 0x15
	.long	.LASF1255
	.sleb128 74
	.byte	0
	.uleb128 0x2c
	.long	.LASF1257
	.byte	0x1
	.value	0x118
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3724
	.uleb128 0x2d
	.long	.LASF1256
	.byte	0x1
	.value	0x119
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1169
	.byte	0x1
	.value	0x11a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.long	.LASF1171
	.byte	0x1
	.value	0x11b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2c
	.long	.LASF1258
	.byte	0x1
	.value	0x138
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3752
	.uleb128 0x2e
	.long	.LASF1171
	.byte	0x1
	.value	0x13a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1259
	.byte	0x1
	.value	0x142
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1260
	.byte	0x1
	.value	0x150
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF1261
	.byte	0x1
	.value	0x164
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b4
	.uleb128 0x2e
	.long	.LASF1171
	.byte	0x1
	.value	0x166
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1262
	.byte	0x1
	.value	0x173
	.long	0x123
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e4
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0x175
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1263
	.byte	0x1
	.value	0x183
	.long	0x123
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3814
	.uleb128 0x32
	.string	"r"
	.byte	0x1
	.value	0x185
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1264
	.byte	0x1
	.value	0x18b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3851
	.uleb128 0x2d
	.long	.LASF1256
	.byte	0x1
	.value	0x18d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1265
	.byte	0x1
	.value	0x18c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF1266
	.byte	0x1
	.value	0x195
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x38ae
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.value	0x197
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF1267
	.byte	0x1
	.value	0x198
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x19c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1268
	.byte	0x1
	.value	0x1b3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3949
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.value	0x1b5
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1269
	.byte	0x1
	.value	0x1b6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1270
	.byte	0x1
	.value	0x1b7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2e
	.long	.LASF1267
	.byte	0x1
	.value	0x1cd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x1d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.value	0x1d2
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1271
	.byte	0x1
	.value	0x1df
	.long	0x4bb
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x398a
	.uleb128 0x2d
	.long	.LASF1272
	.byte	0x1
	.value	0x1e0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF500
	.byte	0x1
	.value	0x1e2
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1273
	.byte	0x1
	.value	0x1f3
	.long	0x4bb
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x39ca
	.uleb128 0x35
	.string	"rid"
	.byte	0x1
	.value	0x1f4
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.value	0x1f6
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1274
	.byte	0x1
	.value	0x206
	.long	0x123
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a69
	.uleb128 0x35
	.string	"rid"
	.byte	0x1
	.value	0x207
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.string	"id"
	.byte	0x1
	.value	0x208
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"ix"
	.byte	0x1
	.value	0x20a
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0x20b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2e
	.long	.LASF1275
	.byte	0x1
	.value	0x214
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2e
	.long	.LASF1276
	.byte	0x1
	.value	0x21c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1277
	.byte	0x1
	.value	0x230
	.long	0x123
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bdb
	.uleb128 0x2d
	.long	.LASF1278
	.byte	0x1
	.value	0x231
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x233
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x233
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF437
	.byte	0x1
	.value	0x234
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF1279
	.byte	0x1
	.value	0x235
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.long	.LASF1280
	.byte	0x1
	.value	0x236
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1281
	.byte	0x1
	.value	0x237
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1282
	.byte	0x1
	.value	0x238
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.LASF1283
	.byte	0x1
	.value	0x239
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x3bb9
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0x23e
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.string	"q"
	.byte	0x1
	.value	0x23e
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x3b98
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0x260
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x26a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.string	"j"
	.byte	0x1
	.value	0x26a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0x27e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2e
	.long	.LASF443
	.byte	0x1
	.value	0x29e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1284
	.byte	0x1
	.value	0x2be
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c09
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x2bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1285
	.byte	0x1
	.value	0x2d0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c37
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x2d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1286
	.byte	0x1
	.value	0x2f3
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c74
	.uleb128 0x2d
	.long	.LASF541
	.byte	0x1
	.value	0x2f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1287
	.byte	0x1
	.value	0x2f4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF1289
	.byte	0x1
	.value	0x308
	.long	0x1e3
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cb3
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0x309
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x309
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF1288
	.byte	0x1
	.value	0x317
	.long	0x123
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d01
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x318
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x318
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x31a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1290
	.byte	0x1
	.value	0x361
	.long	0x3475
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3de4
	.uleb128 0x2d
	.long	.LASF1174
	.byte	0x1
	.value	0x362
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x363
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1175
	.byte	0x1
	.value	0x364
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"l"
	.byte	0x1
	.value	0x366
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x32
	.string	"__h"
	.byte	0x1
	.value	0x367
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x3db2
	.uleb128 0x32
	.string	"__o"
	.byte	0x1
	.value	0x367
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1291
	.byte	0x1
	.value	0x367
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x34
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2e
	.long	.LASF1292
	.byte	0x1
	.value	0x367
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x367
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x104b
	.uleb128 0x38
	.long	.LASF1295
	.byte	0x1
	.value	0x372
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e65
	.uleb128 0x35
	.string	"to"
	.byte	0x1
	.value	0x373
	.long	0x3e65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"add"
	.byte	0x1
	.value	0x374
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1293
	.byte	0x1
	.value	0x375
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1294
	.byte	0x1
	.value	0x376
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2e
	.long	.LASF1174
	.byte	0x1
	.value	0x37a
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3475
	.uleb128 0x38
	.long	.LASF1296
	.byte	0x1
	.value	0x38a
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f05
	.uleb128 0x35
	.string	"to"
	.byte	0x1
	.value	0x38b
	.long	0x3e65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.string	"add"
	.byte	0x1
	.value	0x38c
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1294
	.byte	0x1
	.value	0x38d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x32
	.string	"end"
	.byte	0x1
	.value	0x38f
	.long	0x3e65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2e
	.long	.LASF1297
	.byte	0x1
	.value	0x396
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF1298
	.byte	0x1
	.value	0x397
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1174
	.byte	0x1
	.value	0x398
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1299
	.byte	0x1
	.value	0x3b0
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f6f
	.uleb128 0x2d
	.long	.LASF1300
	.byte	0x1
	.value	0x3b1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1175
	.byte	0x1
	.value	0x3b1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF25
	.byte	0x1
	.value	0x3b2
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1301
	.byte	0x1
	.value	0x3b3
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x3b5
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1302
	.byte	0x1
	.value	0x3ce
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fac
	.uleb128 0x2d
	.long	.LASF25
	.byte	0x1
	.value	0x3cf
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"tmp"
	.byte	0x1
	.value	0x3d1
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1303
	.byte	0x1
	.value	0x3dd
	.long	0x1e3
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fdc
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x3de
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1304
	.byte	0x1
	.value	0x3fd
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x41a6
	.uleb128 0x35
	.string	"x"
	.byte	0x1
	.value	0x3fe
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.long	.LASF1305
	.byte	0x1
	.value	0x3ff
	.long	0x3e65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.long	.LASF1306
	.byte	0x1
	.value	0x3ff
	.long	0x3e65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1175
	.byte	0x1
	.value	0x400
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2e
	.long	.LASF1307
	.byte	0x1
	.value	0x402
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF1308
	.byte	0x1
	.value	0x402
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1309
	.byte	0x1
	.value	0x402
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1310
	.byte	0x1
	.value	0x402
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x403
	.long	0x698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF1311
	.byte	0x1
	.value	0x404
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x3a
	.long	.LASF1392
	.byte	0x1
	.value	0x40b
	.quad	.L156
	.uleb128 0x36
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x4174
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x47b
	.long	0x34bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x4154
	.uleb128 0x32
	.string	"__h"
	.byte	0x1
	.value	0x482
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x4123
	.uleb128 0x32
	.string	"__o"
	.byte	0x1
	.value	0x482
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1291
	.byte	0x1
	.value	0x482
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x34
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2e
	.long	.LASF1292
	.byte	0x1
	.value	0x482
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x482
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x48f
	.long	0x3475
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x32
	.string	"lp"
	.byte	0x1
	.value	0x4b1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.string	"max"
	.byte	0x1
	.value	0x4b2
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1312
	.byte	0x1
	.value	0x4c3
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x42af
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x4c4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF1313
	.byte	0x1
	.value	0x4c6
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1314
	.byte	0x1
	.value	0x4c6
	.long	0x3475
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x427e
	.uleb128 0x32
	.string	"__h"
	.byte	0x1
	.value	0x4cd
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x424d
	.uleb128 0x32
	.string	"__o"
	.byte	0x1
	.value	0x4cd
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1291
	.byte	0x1
	.value	0x4cd
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x34
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2e
	.long	.LASF1292
	.byte	0x1
	.value	0x4cd
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x4cd
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x32
	.string	"__o"
	.byte	0x1
	.value	0x4d2
	.long	0x3de4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1315
	.byte	0x1
	.value	0x4d2
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1316
	.byte	0x1
	.value	0x4d6
	.long	0x123
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x42e1
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x4d7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1317
	.byte	0x1
	.value	0x4ef
	.long	0x123
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4313
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x4f0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1318
	.byte	0x1
	.value	0x517
	.long	0x123
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4354
	.uleb128 0x2d
	.long	.LASF1319
	.byte	0x1
	.value	0x518
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF1320
	.byte	0x1
	.value	0x519
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1321
	.byte	0x1
	.value	0x543
	.long	0x123
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4395
	.uleb128 0x2d
	.long	.LASF1
	.byte	0x1
	.value	0x544
	.long	0x4da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF1320
	.byte	0x1
	.value	0x545
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1322
	.byte	0x1
	.value	0x59c
	.long	0x123
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d6
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x59d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1323
	.byte	0x1
	.value	0x59f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1324
	.byte	0x1
	.value	0x5bf
	.long	0x123
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4417
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x5c0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1323
	.byte	0x1
	.value	0x5c2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1325
	.byte	0x1
	.value	0x5e3
	.long	0x123
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4458
	.uleb128 0x2d
	.long	.LASF1320
	.byte	0x1
	.value	0x5e4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x5e5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF1326
	.byte	0x1
	.value	0x60e
	.long	0x249
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x44a8
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x1
	.value	0x60f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1320
	.byte	0x1
	.value	0x610
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.string	"log"
	.byte	0x1
	.value	0x612
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF1327
	.byte	0x1
	.value	0x62b
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x44e5
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0x62c
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF1328
	.byte	0x1
	.value	0x62e
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1329
	.byte	0x1
	.value	0x678
	.long	0x123
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x46d0
	.uleb128 0x2d
	.long	.LASF1330
	.byte	0x1
	.value	0x679
	.long	0x1b68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1331
	.byte	0x1
	.value	0x679
	.long	0x1b68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2d
	.long	.LASF1332
	.byte	0x1
	.value	0x67a
	.long	0x1b68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2d
	.long	.LASF1333
	.byte	0x1
	.value	0x67b
	.long	0x46d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0x67d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.string	"op0"
	.byte	0x1
	.value	0x67e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x32
	.string	"op1"
	.byte	0x1
	.value	0x67f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1334
	.byte	0x1
	.value	0x680
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2e
	.long	.LASF1335
	.byte	0x1
	.value	0x680
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2e
	.long	.LASF1336
	.byte	0x1
	.value	0x681
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2e
	.long	.LASF1337
	.byte	0x1
	.value	0x681
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF1338
	.byte	0x1
	.value	0x682
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1339
	.byte	0x1
	.value	0x682
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x683
	.long	0x698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x36
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x461b
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x69e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1340
	.byte	0x1
	.value	0x69f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x36
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x46ae
	.uleb128 0x2e
	.long	.LASF1341
	.byte	0x1
	.value	0x6d6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.long	.LASF1342
	.byte	0x1
	.value	0x6d6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2e
	.long	.LASF1343
	.byte	0x1
	.value	0x6d6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF1344
	.byte	0x1
	.value	0x6d6
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.long	.LASF502
	.byte	0x1
	.value	0x6d7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF501
	.byte	0x1
	.value	0x6d7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1320
	.byte	0x1
	.value	0x6d9
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0x6da
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x792
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x698
	.uleb128 0x31
	.long	.LASF1345
	.byte	0x1
	.value	0x7c6
	.long	0x123
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4795
	.uleb128 0x2d
	.long	.LASF1346
	.byte	0x1
	.value	0x7c7
	.long	0x698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1347
	.byte	0x1
	.value	0x7c8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1348
	.byte	0x1
	.value	0x7c8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1349
	.byte	0x1
	.value	0x7ca
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF541
	.byte	0x1
	.value	0x7cc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1350
	.byte	0x1
	.value	0x7cd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1351
	.byte	0x1
	.value	0x7d1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x2e
	.long	.LASF1352
	.byte	0x1
	.value	0x801
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.long	.LASF1353
	.byte	0x1
	.value	0x802
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1354
	.byte	0x1
	.value	0x833
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x47e8
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x834
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x32
	.string	"tem"
	.byte	0x1
	.value	0x8c3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1355
	.byte	0x1
	.value	0x8d7
	.long	0x123
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4829
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x8d8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF1356
	.byte	0x1
	.value	0x8d9
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2c
	.long	.LASF1357
	.byte	0x1
	.value	0x8f4
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4866
	.uleb128 0x2d
	.long	.LASF1356
	.byte	0x1
	.value	0x8f5
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x8f6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF1358
	.byte	0x1
	.value	0x914
	.long	0x25d
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x48e7
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0x915
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"u"
	.byte	0x1
	.value	0x917
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x48c6
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.value	0x936
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x32
	.string	"t1"
	.byte	0x1
	.value	0x93e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1359
	.byte	0x1
	.value	0x963
	.long	0x123
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4935
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0x964
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0x966
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x967
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1360
	.byte	0x1
	.value	0x985
	.long	0x123
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x49d2
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0x986
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x988
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0x999
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1361
	.byte	0x1
	.value	0x99a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1362
	.byte	0x1
	.value	0x99b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2e
	.long	.LASF1363
	.byte	0x1
	.value	0x9a0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1364
	.byte	0x1
	.value	0x9c0
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x5874
	.uleb128 0x2e
	.long	.LASF1365
	.byte	0x1
	.value	0x9de
	.long	0x5874
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x2e
	.long	.LASF1366
	.byte	0x1
	.value	0x9df
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1468
	.uleb128 0x2e
	.long	.LASF1367
	.byte	0x1
	.value	0x9e0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1448
	.uleb128 0x2e
	.long	.LASF1368
	.byte	0x1
	.value	0x9e2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1440
	.uleb128 0x2e
	.long	.LASF1369
	.byte	0x1
	.value	0x9e4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1432
	.uleb128 0x2e
	.long	.LASF1370
	.byte	0x1
	.value	0x9e5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1424
	.uleb128 0x2e
	.long	.LASF1371
	.byte	0x1
	.value	0x9e6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1464
	.uleb128 0x2e
	.long	.LASF1372
	.byte	0x1
	.value	0x9e7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1456
	.uleb128 0x3c
	.long	.LASF1449
	.long	0x5894
	.uleb128 0x36
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x4a9e
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0x91
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1416
	.byte	0
	.uleb128 0x36
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x4ac3
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0x96
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1408
	.byte	0
	.uleb128 0x36
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x4ae8
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0x99
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1400
	.byte	0
	.uleb128 0x36
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x4b0d
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0x9d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1392
	.byte	0
	.uleb128 0x36
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x4b32
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xa0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1384
	.byte	0
	.uleb128 0x36
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x4b57
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xa3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1376
	.byte	0
	.uleb128 0x36
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x4b7c
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xa7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1368
	.byte	0
	.uleb128 0x36
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x4ba1
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xaa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1360
	.byte	0
	.uleb128 0x36
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x4bc6
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xad
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1352
	.byte	0
	.uleb128 0x36
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x4beb
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xb0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.byte	0
	.uleb128 0x36
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x4c10
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xb3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.byte	0
	.uleb128 0x36
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x4c35
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xb6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.byte	0
	.uleb128 0x36
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x4c5a
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xb9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.byte	0
	.uleb128 0x36
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x4c7f
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xbc
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.byte	0
	.uleb128 0x36
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x4ca4
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xbf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.byte	0
	.uleb128 0x36
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x4cc9
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xc2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x36
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x4cee
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xc5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.byte	0
	.uleb128 0x36
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x4d13
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xd6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.byte	0
	.uleb128 0x36
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x4d38
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xdc
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.byte	0
	.uleb128 0x36
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x4d5d
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xe3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1264
	.byte	0
	.uleb128 0x36
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x4d82
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xe6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1256
	.byte	0
	.uleb128 0x36
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x4da7
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xe9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.byte	0
	.uleb128 0x36
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x4dcc
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xed
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.byte	0
	.uleb128 0x36
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x4df1
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xf0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.byte	0
	.uleb128 0x36
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x4e16
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xf3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.byte	0
	.uleb128 0x36
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x4e3b
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xf7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.byte	0
	.uleb128 0x36
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x4e60
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xfa
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.byte	0
	.uleb128 0x36
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x4e85
	.uleb128 0x3d
	.long	.LASF23
	.byte	0x3
	.byte	0xfd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.byte	0
	.uleb128 0x36
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x4eab
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x100
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.byte	0
	.uleb128 0x36
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.long	0x4ed1
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x103
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.byte	0
	.uleb128 0x36
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x4ef7
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x106
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.byte	0
	.uleb128 0x36
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x4f1d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x109
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.byte	0
	.uleb128 0x36
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x4f43
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x10c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.byte	0
	.uleb128 0x36
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x4f69
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x10f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.byte	0
	.uleb128 0x36
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x4f8f
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x112
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.byte	0
	.uleb128 0x36
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x4fb5
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x115
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.byte	0
	.uleb128 0x36
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x4fdb
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x118
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.byte	0
	.uleb128 0x36
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x5001
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x11b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x36
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x5027
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x11f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.byte	0
	.uleb128 0x36
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x504d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x122
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.byte	0
	.uleb128 0x36
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x5073
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x125
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.byte	0
	.uleb128 0x36
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x5099
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x128
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.byte	0
	.uleb128 0x36
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x50bf
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x12b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.byte	0
	.uleb128 0x36
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.long	0x50e5
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x12e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x36
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x510b
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x131
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x36
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.long	0x5131
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x134
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.uleb128 0x36
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.long	0x5157
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x137
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0x36
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x517d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x141
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.byte	0
	.uleb128 0x36
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x51a3
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x144
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.byte	0
	.uleb128 0x36
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x51c9
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x147
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.byte	0
	.uleb128 0x36
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.long	0x51ef
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x14a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.byte	0
	.uleb128 0x36
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x5215
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x14d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.byte	0
	.uleb128 0x36
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.long	0x523b
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x150
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.byte	0
	.uleb128 0x36
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0x5261
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x153
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.byte	0
	.uleb128 0x36
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.long	0x5287
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x156
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -984
	.byte	0
	.uleb128 0x36
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x52ad
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x159
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -976
	.byte	0
	.uleb128 0x36
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.long	0x52d3
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x15c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -968
	.byte	0
	.uleb128 0x36
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x52f9
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x15f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.byte	0
	.uleb128 0x36
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x531f
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x162
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -952
	.byte	0
	.uleb128 0x36
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x5345
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x165
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.byte	0
	.uleb128 0x36
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x536b
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x168
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.byte	0
	.uleb128 0x36
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x5391
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x16b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x36
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x53b7
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x170
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.byte	0
	.uleb128 0x36
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x53dd
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x173
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.byte	0
	.uleb128 0x36
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x5403
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x176
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.byte	0
	.uleb128 0x36
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x5429
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x179
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.byte	0
	.uleb128 0x36
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x544f
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x180
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.byte	0
	.uleb128 0x36
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0x5475
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x186
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.byte	0
	.uleb128 0x36
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.long	0x549b
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x189
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.byte	0
	.uleb128 0x36
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.long	0x54c1
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x18f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.byte	0
	.uleb128 0x36
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.long	0x54e7
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x192
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.byte	0
	.uleb128 0x36
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.long	0x550d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x195
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.byte	0
	.uleb128 0x36
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0x5533
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x198
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.byte	0
	.uleb128 0x36
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x5559
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x19f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.byte	0
	.uleb128 0x36
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.long	0x557f
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1a5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.byte	0
	.uleb128 0x36
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x55a5
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1a8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.byte	0
	.uleb128 0x36
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.long	0x55cb
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1ad
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.byte	0
	.uleb128 0x36
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.long	0x55f1
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1b0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.byte	0
	.uleb128 0x36
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.long	0x5617
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1b3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.byte	0
	.uleb128 0x36
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x563d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1b6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.byte	0
	.uleb128 0x36
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.long	0x5663
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1b9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.byte	0
	.uleb128 0x36
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.long	0x5689
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1bc
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.byte	0
	.uleb128 0x36
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x56af
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1c1
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.byte	0
	.uleb128 0x36
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.long	0x56d5
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1c4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.byte	0
	.uleb128 0x36
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.long	0x56fb
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1c7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.byte	0
	.uleb128 0x36
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.long	0x5721
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1ca
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0x36
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x5747
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1cd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.byte	0
	.uleb128 0x36
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.long	0x576d
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1d0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x36
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.long	0x5793
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1d3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.uleb128 0x36
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.long	0x57b9
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1d6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x36
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.long	0x57df
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1da
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.uleb128 0x36
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.long	0x5805
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1dd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.uleb128 0x36
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0x582b
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1e0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.uleb128 0x36
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.long	0x5851
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1e3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.byte	0
	.uleb128 0x34
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x3
	.value	0x1e6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x123
	.long	0x5884
	.uleb128 0x10
	.long	0x1ea
	.byte	0x4d
	.byte	0
	.uleb128 0xf
	.long	0x2ae
	.long	0x5894
	.uleb128 0x10
	.long	0x1ea
	.byte	0x1b
	.byte	0
	.uleb128 0xc
	.long	0x5884
	.uleb128 0x31
	.long	.LASF1373
	.byte	0x1
	.value	0xb30
	.long	0x123
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x58da
	.uleb128 0x2d
	.long	.LASF777
	.byte	0x1
	.value	0xb31
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0xb31
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF1374
	.byte	0x1
	.value	0xb46
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x5929
	.uleb128 0x2d
	.long	.LASF500
	.byte	0x1
	.value	0xb47
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.uleb128 0x32
	.string	"new"
	.byte	0x1
	.value	0xb4d
	.long	0x5929
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x34f1
	.uleb128 0x37
	.long	.LASF1375
	.byte	0x1
	.value	0xb59
	.long	0x1b3e
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x596e
	.uleb128 0x2d
	.long	.LASF500
	.byte	0x1
	.value	0xb5a
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"p"
	.byte	0x1
	.value	0xb5c
	.long	0x5929
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1376
	.byte	0x1
	.value	0xb76
	.long	0x123
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a38
	.uleb128 0x2d
	.long	.LASF1377
	.byte	0x1
	.value	0xb78
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF500
	.byte	0x1
	.value	0xb79
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1378
	.byte	0x1
	.value	0xb7a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0xb7b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1379
	.byte	0x1
	.value	0xb7c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1311
	.byte	0x1
	.value	0xb7d
	.long	0xa71
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1380
	.byte	0x1
	.value	0xb7e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF1381
	.byte	0x1
	.value	0xb7f
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF1382
	.byte	0x1
	.value	0xb80
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF1383
	.byte	0x1
	.value	0xb82
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0xb83
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1384
	.byte	0x1
	.value	0xba1
	.long	0x1b3e
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a68
	.uleb128 0x35
	.string	"t"
	.byte	0x1
	.value	0xba2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1385
	.byte	0x1
	.value	0xbc4
	.long	0x123
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a9a
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0xbc5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1386
	.byte	0x1
	.value	0xbdc
	.long	0x1e3
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x5afa
	.uleb128 0x2d
	.long	.LASF1387
	.byte	0x1
	.value	0xbdd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.value	0xbdf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0xbe2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF1388
	.byte	0x1
	.value	0xbf7
	.long	0x123
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b2c
	.uleb128 0x2d
	.long	.LASF24
	.byte	0x1
	.value	0xbf8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1389
	.byte	0x1
	.value	0xc09
	.long	0x123
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bcc
	.uleb128 0x2d
	.long	.LASF512
	.byte	0x1
	.value	0xc0a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1390
	.byte	0x1
	.value	0xc0a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1391
	.byte	0x1
	.value	0xc0a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xc0c
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3a
	.long	.LASF1393
	.byte	0x1
	.value	0xc5c
	.quad	.L719
	.uleb128 0x34
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.uleb128 0x2e
	.long	.LASF1394
	.byte	0x1
	.value	0xc5e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1395
	.byte	0x1
	.value	0xc5e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1396
	.byte	0x1
	.value	0xc81
	.long	0x1e3
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bfe
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0xc82
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1397
	.byte	0x1
	.value	0xcac
	.long	0x123
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c97
	.uleb128 0x35
	.string	"tp"
	.byte	0x1
	.value	0xcad
	.long	0x1b68
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.long	.LASF1398
	.byte	0x1
	.value	0xcae
	.long	0x1be3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF850
	.byte	0x1
	.value	0xcaf
	.long	0x250
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xcb1
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1399
	.byte	0x1
	.value	0xcb2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF541
	.byte	0x1
	.value	0xcb3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.value	0xcb4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.string	"len"
	.byte	0x1
	.value	0xcb4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF1400
	.byte	0x1
	.value	0xcf0
	.long	0x1e3
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd6
	.uleb128 0x35
	.string	"k1"
	.byte	0x1
	.value	0xcf1
	.long	0x25c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.string	"k2"
	.byte	0x1
	.value	0xcf2
	.long	0x25c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF1401
	.byte	0x1
	.value	0xd08
	.long	0x123
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dcb
	.uleb128 0x2d
	.long	.LASF1402
	.byte	0x1
	.value	0xd09
	.long	0x272c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.long	.LASF1256
	.byte	0x1
	.value	0xd0a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.long	.LASF1403
	.byte	0x1
	.value	0xd0b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1404
	.byte	0x1
	.value	0xd0c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0xd0e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1405
	.byte	0x1
	.value	0xd0f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF1406
	.byte	0x1
	.value	0xd10
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1407
	.byte	0x1
	.value	0xd11
	.long	0x25da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.long	0x5da9
	.uleb128 0x2e
	.long	.LASF1408
	.byte	0x1
	.value	0xd56
	.long	0x25da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1409
	.byte	0x1
	.value	0xd57
	.long	0x25da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.uleb128 0x2e
	.long	.LASF1410
	.byte	0x1
	.value	0xd7b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1411
	.byte	0x1
	.value	0xd9f
	.long	0x123
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e0c
	.uleb128 0x2d
	.long	.LASF1405
	.byte	0x1
	.value	0xda0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF541
	.byte	0x1
	.value	0xda2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1412
	.byte	0x1
	.value	0xdc1
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e8c
	.uleb128 0x35
	.string	"p"
	.byte	0x1
	.value	0xdc2
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"st"
	.byte	0x1
	.value	0xdc4
	.long	0x2bd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.long	0x5e6a
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xdc6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xdc7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1413
	.byte	0x1
	.value	0xdcd
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eb8
	.uleb128 0x35
	.string	"c"
	.byte	0x1
	.value	0xdce
	.long	0x5eb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2c11
	.uleb128 0x2c
	.long	.LASF1414
	.byte	0x1
	.value	0xdd5
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f0b
	.uleb128 0x35
	.string	"f"
	.byte	0x1
	.value	0xdd6
	.long	0x5f0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.uleb128 0x32
	.string	"t__"
	.byte	0x1
	.value	0xddc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2be9
	.uleb128 0x31
	.long	.LASF1415
	.byte	0x1
	.value	0xde2
	.long	0x2d
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x601b
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0xde3
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0xde4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1417
	.byte	0x1
	.value	0xde5
	.long	0x4da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF1418
	.byte	0x1
	.value	0xde6
	.long	0x2599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3e
	.long	.LASF1449
	.long	0x602b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14395
	.uleb128 0x36
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.long	0x5ff9
	.uleb128 0x2e
	.long	.LASF1419
	.byte	0x1
	.value	0xdec
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF541
	.byte	0x1
	.value	0xded
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1420
	.byte	0x1
	.value	0xdee
	.long	0x1b3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x34
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.uleb128 0x2e
	.long	.LASF777
	.byte	0x1
	.value	0xdfe
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1421
	.byte	0x1
	.value	0xdff
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0xe38
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2ae
	.long	0x602b
	.uleb128 0x10
	.long	0x1ea
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	0x601b
	.uleb128 0x31
	.long	.LASF1422
	.byte	0x1
	.value	0xe48
	.long	0x1e3
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x6092
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0xe49
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0xe4a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.uleb128 0x2e
	.long	.LASF23
	.byte	0x1
	.value	0xe51
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF1423
	.byte	0x1
	.value	0xe64
	.long	0x1e3
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x60c4
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0xe65
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF1424
	.byte	0x1
	.value	0xe74
	.long	0x1e3
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x60f6
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0xe75
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF1425
	.byte	0x1
	.value	0xea1
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1426
	.byte	0x1
	.value	0xeb3
	.long	0x2d
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x61cd
	.uleb128 0x35
	.string	"exp"
	.byte	0x1
	.value	0xeb4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0xeb5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.long	.LASF1417
	.byte	0x1
	.value	0xeb6
	.long	0x4da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.long	.LASF1418
	.byte	0x1
	.value	0xeb7
	.long	0x2599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF24
	.byte	0x1
	.value	0xeb9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF1427
	.byte	0x1
	.value	0xeba
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1428
	.byte	0x1
	.value	0xebb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF1429
	.byte	0x1
	.value	0xebc
	.long	0xa96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.long	.LASF0
	.byte	0x1
	.value	0xebd
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1430
	.byte	0x1
	.value	0xebe
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x37
	.long	.LASF1431
	.byte	0x1
	.value	0xef3
	.long	0x1e3
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x622c
	.uleb128 0x2d
	.long	.LASF1428
	.byte	0x1
	.value	0xef4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1432
	.byte	0x1
	.value	0xef7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	.LASF1433
	.byte	0x1
	.value	0xef8
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1434
	.byte	0x1
	.value	0xef9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1435
	.byte	0x1
	.value	0xf15
	.long	0x2d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x632c
	.uleb128 0x2d
	.long	.LASF1428
	.byte	0x1
	.value	0xf16
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0xf17
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF1417
	.byte	0x1
	.value	0xf18
	.long	0x4da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF1418
	.byte	0x1
	.value	0xf19
	.long	0x2599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1430
	.byte	0x1
	.value	0xf1a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF1436
	.byte	0x1
	.value	0xf1b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF1437
	.byte	0x1
	.value	0xf1d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF1438
	.byte	0x1
	.value	0xf1f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0xf21
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF1439
	.byte	0x1
	.value	0xf21
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF1440
	.byte	0x1
	.value	0xf21
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x34
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.uleb128 0x2e
	.long	.LASF1441
	.byte	0x1
	.value	0xf66
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.long	.LASF1442
	.byte	0x1
	.value	0xf67
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1443
	.byte	0x1
	.value	0xf7d
	.long	0x2d
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x6442
	.uleb128 0x2d
	.long	.LASF1428
	.byte	0x1
	.value	0xf7e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0xf7f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.long	.LASF1417
	.byte	0x1
	.value	0xf80
	.long	0x4da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2d
	.long	.LASF1418
	.byte	0x1
	.value	0xf81
	.long	0x2599
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2d
	.long	.LASF1430
	.byte	0x1
	.value	0xf82
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2d
	.long	.LASF1436
	.byte	0x1
	.value	0xf83
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2e
	.long	.LASF1444
	.byte	0x1
	.value	0xf85
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF1445
	.byte	0x1
	.value	0xf87
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.string	"fn"
	.byte	0x1
	.value	0xf89
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF1439
	.byte	0x1
	.value	0xf89
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF1440
	.byte	0x1
	.value	0xf89
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.long	0x6420
	.uleb128 0x2e
	.long	.LASF1446
	.byte	0x1
	.value	0xfab
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.uleb128 0x2e
	.long	.LASF1446
	.byte	0x1
	.value	0xfb4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1447
	.byte	0x1
	.value	0xfd2
	.long	0x123
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x64b4
	.uleb128 0x2d
	.long	.LASF0
	.byte	0x1
	.value	0xfd3
	.long	0x698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0xfd4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"val"
	.byte	0x1
	.value	0xfd6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF1448
	.byte	0x1
	.value	0xfd7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.long	.LASF1449
	.long	0x64c4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14487
	.byte	0
	.uleb128 0xf
	.long	0x2ae
	.long	0x64c4
	.uleb128 0x10
	.long	0x1ea
	.byte	0x11
	.byte	0
	.uleb128 0xc
	.long	0x64b4
	.uleb128 0x2c
	.long	.LASF1450
	.byte	0x1
	.value	0x1010
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x64f7
	.uleb128 0x2d
	.long	.LASF1451
	.byte	0x1
	.value	0x1011
	.long	0x2b77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF1452
	.byte	0x1
	.value	0x101d
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1453
	.byte	0x1
	.value	0x1048
	.long	0x4bb
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x6543
	.uleb128 0x2d
	.long	.LASF514
	.byte	0x1
	.value	0x1049
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF1454
	.byte	0x1
	.value	0x1059
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.long	.LASF1537
	.byte	0x1
	.value	0x1063
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF1455
	.byte	0x1
	.value	0x107f
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x65b4
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x1080
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF500
	.byte	0x1
	.value	0x1082
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1456
	.byte	0x1
	.value	0x109a
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x6600
	.uleb128 0x2d
	.long	.LASF1457
	.byte	0x1
	.value	0x109b
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF500
	.byte	0x1
	.value	0x109c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF23
	.byte	0x1
	.value	0x109c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF1458
	.byte	0x1
	.value	0x106
	.long	0x6616
	.uleb128 0x9
	.byte	0x3
	.quad	if_stack
	.uleb128 0x3
	.byte	0x8
	.long	0x3434
	.uleb128 0x2e
	.long	.LASF1459
	.byte	0x1
	.value	0x109
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	if_stack_space
	.uleb128 0x2e
	.long	.LASF1460
	.byte	0x1
	.value	0x10c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	if_stack_pointer
	.uleb128 0x2e
	.long	.LASF1461
	.byte	0x1
	.value	0x34c
	.long	0x104b
	.uleb128 0x9
	.byte	0x3
	.quad	tlist_obstack
	.uleb128 0x2e
	.long	.LASF1462
	.byte	0x1
	.value	0x34d
	.long	0x2a8
	.uleb128 0x9
	.byte	0x3
	.quad	tlist_firstobj
	.uleb128 0x2e
	.long	.LASF1463
	.byte	0x1
	.value	0x351
	.long	0x3475
	.uleb128 0x9
	.byte	0x3
	.quad	warned_ids
	.uleb128 0x2e
	.long	.LASF1464
	.byte	0x1
	.value	0x354
	.long	0x34bd
	.uleb128 0x9
	.byte	0x3
	.quad	save_expr_cache
	.uleb128 0xf
	.long	0x1acb
	.long	0x66b0
	.uleb128 0x10
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x2e
	.long	.LASF1465
	.byte	0x1
	.value	0x9b2
	.long	0x66c6
	.uleb128 0x9
	.byte	0x3
	.quad	c_format_attribute_table
	.uleb128 0xc
	.long	0x66a0
	.uleb128 0x2e
	.long	.LASF1466
	.byte	0x1
	.value	0xb3e
	.long	0x5929
	.uleb128 0x9
	.byte	0x3
	.quad	disabled_builtins
	.uleb128 0xf
	.long	0x2ae
	.long	0x66f1
	.uleb128 0x10
	.long	0x1ea
	.byte	0x18
	.byte	0
	.uleb128 0x2e
	.long	.LASF1467
	.byte	0x1
	.value	0xe81
	.long	0x6707
	.uleb128 0x9
	.byte	0x3
	.quad	c_tree_code_type
	.uleb128 0xc
	.long	0x66e1
	.uleb128 0xf
	.long	0x1e3
	.long	0x671c
	.uleb128 0x10
	.long	0x1ea
	.byte	0x18
	.byte	0
	.uleb128 0x2e
	.long	.LASF1468
	.byte	0x1
	.value	0xe8d
	.long	0x6732
	.uleb128 0x9
	.byte	0x3
	.quad	c_tree_code_length
	.uleb128 0xc
	.long	0x670c
	.uleb128 0xf
	.long	0x4bb
	.long	0x6747
	.uleb128 0x10
	.long	0x1ea
	.byte	0x18
	.byte	0
	.uleb128 0x2e
	.long	.LASF1469
	.byte	0x1
	.value	0xe97
	.long	0x675d
	.uleb128 0x9
	.byte	0x3
	.quad	c_tree_code_name
	.uleb128 0xc
	.long	0x6737
	.uleb128 0xf
	.long	0x123
	.long	0x6772
	.uleb128 0x10
	.long	0x1ea
	.byte	0x49
	.byte	0
	.uleb128 0x2e
	.long	.LASF1470
	.byte	0x1
	.value	0x1008
	.long	0x6762
	.uleb128 0x9
	.byte	0x3
	.quad	built_in_attributes
	.uleb128 0x2e
	.long	.LASF1471
	.byte	0x1
	.value	0x100a
	.long	0x1b3e
	.uleb128 0x9
	.byte	0x3
	.quad	c_attrs_initialized
	.uleb128 0x40
	.long	.LASF1472
	.byte	0x1a
	.byte	0x62
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1473
	.byte	0xe
	.byte	0xa5
	.long	0x4da
	.uleb128 0xf
	.long	0x2ae
	.long	0x67c4
	.uleb128 0x10
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x40
	.long	.LASF1474
	.byte	0x7
	.byte	0x31
	.long	0x67b4
	.uleb128 0xf
	.long	0x1e3
	.long	0x67df
	.uleb128 0x10
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x40
	.long	.LASF1475
	.byte	0x7
	.byte	0x3c
	.long	0x67cf
	.uleb128 0xf
	.long	0x4bb
	.long	0x67fa
	.uleb128 0x10
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x40
	.long	.LASF1476
	.byte	0x7
	.byte	0x41
	.long	0x67ea
	.uleb128 0xf
	.long	0x123
	.long	0x6815
	.uleb128 0x10
	.long	0x1ea
	.byte	0x5e
	.byte	0
	.uleb128 0x40
	.long	.LASF1477
	.byte	0x7
	.byte	0x61
	.long	0x6805
	.uleb128 0xf
	.long	0x123
	.long	0x6830
	.uleb128 0x10
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x41
	.long	.LASF1478
	.byte	0x7
	.value	0x79b
	.long	0x6820
	.uleb128 0xf
	.long	0x123
	.long	0x684c
	.uleb128 0x10
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x41
	.long	.LASF1479
	.byte	0x7
	.value	0x7f8
	.long	0x683c
	.uleb128 0xf
	.long	0x123
	.long	0x6868
	.uleb128 0x10
	.long	0x1ea
	.byte	0x5
	.byte	0
	.uleb128 0x41
	.long	.LASF1480
	.byte	0x7
	.value	0x97c
	.long	0x6858
	.uleb128 0x1a
	.long	0x1e3
	.long	0x6883
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x41
	.long	.LASF1481
	.byte	0x7
	.value	0xa05
	.long	0x688f
	.uleb128 0x3
	.byte	0x8
	.long	0x6874
	.uleb128 0x41
	.long	.LASF1482
	.byte	0x7
	.value	0xa87
	.long	0x4bb
	.uleb128 0x41
	.long	.LASF1483
	.byte	0x7
	.value	0xa8a
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1484
	.byte	0x7
	.value	0xa98
	.long	0x123
	.uleb128 0x1a
	.long	0x4bb
	.long	0x68cd
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x41
	.long	.LASF1485
	.byte	0x7
	.value	0xaa9
	.long	0x68d9
	.uleb128 0x3
	.byte	0x8
	.long	0x68b9
	.uleb128 0x1a
	.long	0x123
	.long	0x68ee
	.uleb128 0x1b
	.long	0x123
	.byte	0
	.uleb128 0x41
	.long	.LASF1486
	.byte	0x7
	.value	0xb2c
	.long	0x68fa
	.uleb128 0x3
	.byte	0x8
	.long	0x68df
	.uleb128 0x41
	.long	.LASF1487
	.byte	0x7
	.value	0xbd8
	.long	0x32fc
	.uleb128 0x40
	.long	.LASF1488
	.byte	0x1b
	.byte	0x3d
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1489
	.byte	0x1b
	.byte	0x5b
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1490
	.byte	0x1b
	.byte	0xcc
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1491
	.byte	0x1b
	.byte	0xd1
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1492
	.byte	0x1b
	.value	0x12f
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1493
	.byte	0x1b
	.value	0x16f
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1494
	.byte	0x1b
	.value	0x17d
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1495
	.byte	0x1b
	.value	0x213
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1496
	.byte	0x1b
	.value	0x21d
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1497
	.byte	0x1b
	.value	0x22a
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1498
	.byte	0x1b
	.value	0x232
	.long	0x1e3
	.uleb128 0xf
	.long	0x2d
	.long	0x699c
	.uleb128 0x10
	.long	0x1ea
	.byte	0x80
	.byte	0
	.uleb128 0x41
	.long	.LASF1499
	.byte	0x5
	.value	0x611
	.long	0x698c
	.uleb128 0x40
	.long	.LASF1500
	.byte	0x1c
	.byte	0x2f
	.long	0x2588
	.uleb128 0x42
	.long	.LASF1501
	.byte	0x1
	.byte	0xd1
	.long	0x1b68
	.uleb128 0x9
	.byte	0x3
	.quad	ridpointers
	.uleb128 0xf
	.long	0x123
	.long	0x69d8
	.uleb128 0x10
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0x42
	.long	.LASF1502
	.byte	0x1
	.byte	0xb5
	.long	0x69c8
	.uleb128 0x9
	.byte	0x3
	.quad	c_global_trees
	.uleb128 0x1a
	.long	0x1e3
	.long	0x69fc
	.uleb128 0x1b
	.long	0x698
	.byte	0
	.uleb128 0x42
	.long	.LASF1503
	.byte	0x1
	.byte	0xd7
	.long	0x6a11
	.uleb128 0x9
	.byte	0x3
	.quad	lang_statement_code_p
	.uleb128 0x3
	.byte	0x8
	.long	0x69ed
	.uleb128 0x42
	.long	.LASF1504
	.byte	0x1
	.byte	0xdb
	.long	0x3092
	.uleb128 0x9
	.byte	0x3
	.quad	lang_expand_function_end
	.uleb128 0x42
	.long	.LASF1505
	.byte	0x1
	.byte	0x55
	.long	0x2b77
	.uleb128 0x9
	.byte	0x3
	.quad	c_language
	.uleb128 0x41
	.long	.LASF1506
	.byte	0x17
	.value	0x17a
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1507
	.byte	0x1
	.byte	0xc2
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_short_double
	.uleb128 0x42
	.long	.LASF1508
	.byte	0x1
	.byte	0xc6
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_short_wchar
	.uleb128 0x41
	.long	.LASF1509
	.byte	0x17
	.value	0x186
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1510
	.byte	0x17
	.value	0x18a
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1511
	.byte	0x17
	.value	0x18e
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1512
	.byte	0x17
	.value	0x192
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1513
	.byte	0x17
	.value	0x196
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1514
	.byte	0x1
	.byte	0xca
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_sequence_point
	.uleb128 0x41
	.long	.LASF1515
	.byte	0x17
	.value	0x19e
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1516
	.byte	0x17
	.value	0x1a3
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1517
	.byte	0x1
	.byte	0xcd
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	warn_div_by_zero
	.uleb128 0x41
	.long	.LASF1518
	.byte	0x17
	.value	0x1aa
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1519
	.byte	0x17
	.value	0x1b2
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1520
	.byte	0x17
	.value	0x1b6
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1521
	.byte	0x17
	.value	0x1bb
	.long	0x1e3
	.uleb128 0x42
	.long	.LASF1522
	.byte	0x1
	.byte	0xb9
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_builtin
	.uleb128 0x42
	.long	.LASF1523
	.byte	0x1
	.byte	0xbe
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	flag_no_nonansi_builtin
	.uleb128 0x41
	.long	.LASF1524
	.byte	0x17
	.value	0x1c8
	.long	0x1e3
	.uleb128 0x41
	.long	.LASF1525
	.byte	0x17
	.value	0x1cc
	.long	0x1e3
	.uleb128 0x1a
	.long	0x123
	.long	0x6b7b
	.uleb128 0x1b
	.long	0x123
	.uleb128 0x1b
	.long	0x1e3
	.byte	0
	.uleb128 0x42
	.long	.LASF1526
	.byte	0x1
	.byte	0xd3
	.long	0x6b90
	.uleb128 0x9
	.byte	0x3
	.quad	make_fname_decl
	.uleb128 0x3
	.byte	0x8
	.long	0x6b67
	.uleb128 0x40
	.long	.LASF1527
	.byte	0x1d
	.byte	0x28
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1528
	.byte	0x18
	.byte	0xf4
	.long	0x2dfe
	.uleb128 0x42
	.long	.LASF1529
	.byte	0x1
	.byte	0x28
	.long	0x2786
	.uleb128 0x9
	.byte	0x3
	.quad	parse_in
	.uleb128 0x40
	.long	.LASF1530
	.byte	0x19
	.byte	0xc1
	.long	0x3208
	.uleb128 0x42
	.long	.LASF1531
	.byte	0x1
	.byte	0xdf
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	skip_evaluation
	.uleb128 0xf
	.long	0x33b0
	.long	0x6bf1
	.uleb128 0x10
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.long	.LASF1532
	.byte	0x1
	.byte	0xeb
	.long	0x6c06
	.uleb128 0x9
	.byte	0x3
	.quad	fname_vars
	.uleb128 0xc
	.long	0x6be1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2117
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
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
.LASF397:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF592:
	.string	"TI_UV16QI_TYPE"
.LASF318:
	.string	"BUILT_IN_CONJ"
.LASF785:
	.string	"rtstr"
.LASF607:
	.string	"itk_unsigned_char"
.LASF211:
	.string	"WITH_CLEANUP_EXPR"
.LASF201:
	.string	"VTABLE_REF"
.LASF1253:
	.string	"ATTR_printf_unlocked"
.LASF940:
	.string	"RID_ATTRIBUTE"
.LASF798:
	.string	"NOTE_INSN_DELETED"
.LASF894:
	.string	"RID_REGISTER"
.LASF364:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF76:
	.string	"_unused2"
.LASF713:
	.string	"UMOD"
.LASF767:
	.string	"min_align"
.LASF288:
	.string	"POSTINCREMENT_EXPR"
.LASF1388:
	.string	"strip_array_types"
.LASF314:
	.string	"BUILT_IN_FABSF"
.LASF224:
	.string	"FLOOR_MOD_EXPR"
.LASF62:
	.string	"_fileno"
.LASF1202:
	.string	"ATTR_FORMAT"
.LASF315:
	.string	"BUILT_IN_FABSL"
.LASF1094:
	.string	"message"
.LASF834:
	.string	"varray_data_tag"
.LASF1051:
	.string	"x_last_expr_filename"
.LASF874:
	.string	"allocate"
.LASF1061:
	.string	"SRCLOC"
.LASF599:
	.string	"TI_V2SI_TYPE"
.LASF1240:
	.string	"ATTR_vprintf"
.LASF1346:
	.string	"resultcode"
.LASF620:
	.string	"decl_required"
.LASF1446:
	.string	"newarglist"
.LASF1332:
	.string	"restype_ptr"
.LASF1465:
	.string	"c_format_attribute_table"
.LASF560:
	.string	"TI_UINTSI_TYPE"
.LASF183:
	.string	"COMPLEX_CST"
.LASF482:
	.string	"tree_type"
.LASF241:
	.string	"RROTATE_EXPR"
.LASF277:
	.string	"ADDR_EXPR"
.LASF1382:
	.string	"noreturn_p"
.LASF1174:
	.string	"next"
.LASF1298:
	.string	"tmp2"
.LASF26:
	.string	"block"
.LASF1275:
	.string	"saved_last_tree"
.LASF624:
	.string	"_Bool"
.LASF1083:
	.string	"COMPOUND_LITERAL_EXPR"
.LASF1155:
	.string	"attribute_table"
.LASF784:
	.string	"rtuint"
.LASF1386:
	.string	"self_promoting_args_p"
.LASF536:
	.string	"pure_flag"
.LASF1483:
	.string	"lineno"
.LASF788:
	.string	"rt_cselib"
.LASF657:
	.string	"DEFINE_PEEPHOLE2"
.LASF1196:
	.string	"ATTR_LIST_3_0"
.LASF12:
	.string	"rtvec_def"
.LASF266:
	.string	"IN_EXPR"
.LASF717:
	.string	"LSHIFTRT"
.LASF1149:
	.string	"reorder"
.LASF16:
	.string	"common"
.LASF1460:
	.string	"if_stack_pointer"
.LASF398:
	.string	"BUILT_IN_EH_RETURN"
.LASF651:
	.string	"MATCH_PAR_DUP"
.LASF67:
	.string	"_shortbuf"
.LASF1535:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF712:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF559:
	.string	"TI_UINTHI_TYPE"
.LASF1430:
	.string	"ignore"
.LASF249:
	.string	"TRUTH_AND_EXPR"
.LASF1427:
	.string	"fndecl"
.LASF337:
	.string	"BUILT_IN_STRCPY"
.LASF1478:
	.string	"global_trees"
.LASF1318:
	.string	"type_for_size"
.LASF645:
	.string	"MATCH_OPERAND"
.LASF1080:
	.string	"FILE_STMT"
.LASF955:
	.string	"RID_WCHAR"
.LASF579:
	.string	"TI_VOID_TYPE"
.LASF1355:
	.string	"c_build_qualified_type"
.LASF400:
	.string	"BUILT_IN_VARARGS_START"
.LASF441:
	.string	"imag"
.LASF628:
	.string	"ATTR_FLAG_ARRAY_NEXT"
.LASF293:
	.string	"LABEL_EXPR"
.LASF734:
	.string	"UNLE"
.LASF772:
	.string	"max_after_base"
.LASF440:
	.string	"real"
.LASF566:
	.string	"TI_NULL_POINTER"
.LASF735:
	.string	"UNLT"
.LASF1333:
	.string	"rescode_ptr"
.LASF173:
	.string	"FILE_TYPE"
.LASF480:
	.string	"fragment_chain"
.LASF998:
	.string	"RID_AT_PUBLIC"
.LASF436:
	.string	"tree_string"
.LASF489:
	.string	"no_force_blk_flag"
.LASF1330:
	.string	"op0_ptr"
.LASF956:
	.string	"RID_CLASS"
.LASF479:
	.string	"fragment_origin"
.LASF595:
	.string	"TI_V4SI_TYPE"
.LASF1428:
	.string	"arglist"
.LASF377:
	.string	"BUILT_IN_FWRITE"
.LASF32:
	.string	"overflow_arg_area"
.LASF1406:
	.string	"case_label"
.LASF112:
	.string	"CTImode"
.LASF48:
	.string	"_flags"
.LASF942:
	.string	"RID_EXTENSION"
.LASF251:
	.string	"TRUTH_XOR_EXPR"
.LASF528:
	.string	"static_dtor_flag"
.LASF437:
	.string	"length"
.LASF213:
	.string	"PLACEHOLDER_EXPR"
.LASF1123:
	.string	"format_args"
.LASF889:
	.string	"RID_STATIC"
.LASF872:
	.string	"delete_key"
.LASF510:
	.string	"lang_type"
.LASF33:
	.string	"reg_save_area"
.LASF43:
	.string	"__off_t"
.LASF232:
	.string	"FLOAT_EXPR"
.LASF519:
	.string	"inline_flag"
.LASF1384:
	.string	"c_promoting_integer_type_p"
.LASF817:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF569:
	.string	"TI_BITSIZE_ZERO"
.LASF191:
	.string	"PARM_DECL"
.LASF875:
	.string	"deallocate"
.LASF1099:
	.string	"begin_diagnostic"
.LASF110:
	.string	"CSImode"
.LASF1522:
	.string	"flag_no_builtin"
.LASF356:
	.string	"BUILT_IN_COSL"
.LASF756:
	.string	"VEC_MERGE"
.LASF811:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF950:
	.string	"RID_TYPES_COMPATIBLE_P"
.LASF1409:
	.string	"high_bound"
.LASF1324:
	.string	"signed_type"
.LASF282:
	.string	"CONJ_EXPR"
.LASF68:
	.string	"_lock"
.LASF836:
	.string	"uhint"
.LASF689:
	.string	"RETURN"
.LASF327:
	.string	"BUILT_IN_BZERO"
.LASF954:
	.string	"RID_BOOL"
.LASF1422:
	.string	"c_safe_from_p"
.LASF298:
	.string	"LABELED_BLOCK_EXPR"
.LASF1292:
	.string	"__o1"
.LASF837:
	.string	"generic"
.LASF1009:
	.string	"RID_LAST_PQ"
.LASF360:
	.string	"BUILT_IN_ARGS_INFO"
.LASF987:
	.string	"RID_BITAND"
.LASF14:
	.string	"elem"
.LASF1377:
	.string	"builtin_name"
.LASF1419:
	.string	"rtl_expr"
.LASF630:
	.string	"ATTR_FLAG_BUILT_IN"
.LASF147:
	.string	"MODE_FLOAT"
.LASF333:
	.string	"BUILT_IN_MEMCMP"
.LASF375:
	.string	"BUILT_IN_FPUTC"
.LASF367:
	.string	"BUILT_IN_RETURN"
.LASF972:
	.string	"RID_TYPENAME"
.LASF415:
	.string	"unused_0"
.LASF431:
	.string	"unused_1"
.LASF867:
	.string	"splay_tree_allocate_fn"
.LASF557:
	.string	"TI_INTTI_TYPE"
.LASF376:
	.string	"BUILT_IN_FPUTS"
.LASF299:
	.string	"EXIT_BLOCK_EXPR"
.LASF1495:
	.string	"flag_strict_aliasing"
.LASF776:
	.string	"alias"
.LASF1038:
	.string	"CTI_FUNCTION_NAME_DECL"
.LASF773:
	.string	"offset_unsigned"
.LASF116:
	.string	"V2SImode"
.LASF382:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF1514:
	.string	"warn_sequence_point"
.LASF1304:
	.string	"verify_tree"
.LASF170:
	.string	"OFFSET_TYPE"
.LASF1108:
	.string	"DK_NOTE"
.LASF576:
	.string	"TI_FLOAT_TYPE"
.LASF1266:
	.string	"start_fname_decls"
.LASF19:
	.string	"vector"
.LASF297:
	.string	"LOOP_EXPR"
.LASF676:
	.string	"CODE_LABEL"
.LASF383:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF111:
	.string	"CDImode"
.LASF682:
	.string	"UNSPEC"
.LASF289:
	.string	"VA_ARG_EXPR"
.LASF349:
	.string	"BUILT_IN_SIN"
.LASF408:
	.string	"side_effects_flag"
.LASF582:
	.string	"TI_PTRDIFF_TYPE"
.LASF804:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF678:
	.string	"COND_EXEC"
.LASF1293:
	.string	"exclude_writer"
.LASF692:
	.string	"CONST_INT"
.LASF688:
	.string	"CALL"
.LASF853:
	.string	"EXPAND_NORMAL"
.LASF1416:
	.string	"target"
.LASF1448:
	.string	"true_res"
.LASF538:
	.string	"uninlinable"
.LASF1092:
	.string	"diagnostic_context"
.LASF1501:
	.string	"ridpointers"
.LASF206:
	.string	"TARGET_EXPR"
.LASF118:
	.string	"V4QImode"
.LASF1511:
	.string	"warn_format_extra_args"
.LASF667:
	.string	"ATTR"
.LASF396:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF786:
	.string	"rttype"
.LASF1141:
	.string	"constructor"
.LASF1137:
	.string	"function_epilogue"
.LASF1241:
	.string	"ATTR_vfprintf"
.LASF916:
	.string	"RID_INT"
.LASF943:
	.string	"RID_IMAGPART"
.LASF1527:
	.string	"flag_inline_trees"
.LASF1169:
	.string	"compstmt_count"
.LASF1534:
	.string	"c-common.c"
.LASF828:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF483:
	.string	"values"
.LASF433:
	.string	"tree_int_cst"
.LASF1519:
	.string	"flag_isoc99"
.LASF958:
	.string	"RID_PRIVATE"
.LASF1344:
	.string	"max_lt"
.LASF1530:
	.string	"targetm"
.LASF352:
	.string	"BUILT_IN_SINF"
.LASF117:
	.string	"V2DImode"
.LASF1054:
	.string	"language_function"
.LASF1252:
	.string	"ATTR_strfmon"
.LASF355:
	.string	"BUILT_IN_SINL"
.LASF412:
	.string	"readonly_flag"
.LASF988:
	.string	"RID_BITOR"
.LASF227:
	.string	"EXACT_DIV_EXPR"
.LASF851:
	.string	"varray_type"
.LASF779:
	.string	"mem_attrs"
.LASF54:
	.string	"_IO_write_end"
.LASF1438:
	.string	"fn_puts"
.LASF660:
	.string	"DEFINE_DELAY"
.LASF710:
	.string	"MINUS"
.LASF892:
	.string	"RID_CONST"
.LASF1366:
	.string	"wchar_type_size"
.LASF1233:
	.string	"ATTR___builtin_fprintf_unlocked"
.LASF29:
	.string	"__va_list_tag"
.LASF332:
	.string	"BUILT_IN_MEMCPY"
.LASF194:
	.string	"NAMESPACE_DECL"
.LASF906:
	.string	"RID_VIRTUAL"
.LASF700:
	.string	"STRICT_LOW_PART"
.LASF969:
	.string	"RID_THROW"
.LASF1219:
	.string	"ATTR_FORMAT_SCANF_1_2"
.LASF1485:
	.string	"decl_printable_name"
.LASF1291:
	.string	"__len"
.LASF1116:
	.string	"maximum_length"
.LASF199:
	.string	"ARRAY_REF"
.LASF1242:
	.string	"ATTR_vsprintf"
.LASF1415:
	.string	"c_expand_expr"
.LASF824:
	.string	"GR_FRAME_POINTER"
.LASF407:
	.string	"chain"
.LASF738:
	.string	"ZERO_EXTEND"
.LASF1068:
	.string	"IF_STMT"
.LASF361:
	.string	"BUILT_IN_CONSTANT_P"
.LASF741:
	.string	"FLOAT_TRUNCATE"
.LASF1378:
	.string	"builtin_type"
.LASF387:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF393:
	.string	"BUILT_IN_DWARF_CFA"
.LASF179:
	.string	"FUNCTION_TYPE"
.LASF1482:
	.string	"input_filename"
.LASF1131:
	.string	"aligned_op"
.LASF513:
	.string	"tree_decl"
.LASF30:
	.string	"gp_offset"
.LASF1400:
	.string	"case_compare"
.LASF821:
	.string	"GR_PC"
.LASF1392:
	.string	"restart"
.LASF127:
	.string	"V2SFmode"
.LASF845:
	.string	"varray_data"
.LASF926:
	.string	"RID_WHILE"
.LASF742:
	.string	"FLOAT"
.LASF1138:
	.string	"named_section"
.LASF1401:
	.string	"c_add_case_label"
.LASF1424:
	.string	"c_staticp"
.LASF143:
	.string	"machine_mode"
.LASF1041:
	.string	"CTI_SAVED_FUNCTION_NAME_DECLS"
.LASF1001:
	.string	"RID_AT_INTERFACE"
.LASF178:
	.string	"QUAL_UNION_TYPE"
.LASF1165:
	.string	"have_ctors_dtors"
.LASF1218:
	.string	"ATTR_SCANF_1_2"
.LASF639:
	.string	"walk_tree_fn"
.LASF450:
	.string	"chunk"
.LASF1399:
	.string	"walk_subtrees"
.LASF1235:
	.string	"ATTR_fprintf"
.LASF918:
	.string	"RID_FLOAT"
.LASF791:
	.string	"rtmem"
.LASF1529:
	.string	"parse_in"
.LASF1064:
	.string	"ALIGNOF_EXPR"
.LASF1075:
	.string	"SWITCH_STMT"
.LASF1029:
	.string	"CTI_BOOLEAN_FALSE"
.LASF751:
	.string	"RANGE_REG"
.LASF789:
	.string	"rtbit"
.LASF294:
	.string	"GOTO_EXPR"
.LASF1423:
	.string	"c_unsafe_for_reeval"
.LASF3:
	.string	"call"
.LASF89:
	.string	"TImode"
.LASF1443:
	.string	"c_expand_builtin_fprintf"
.LASF727:
	.string	"PRE_MODIFY"
.LASF1031:
	.string	"CTI_C_BOOL_TRUE"
.LASF205:
	.string	"INIT_EXPR"
.LASF1143:
	.string	"adjust_cost"
.LASF240:
	.string	"LROTATE_EXPR"
.LASF1036:
	.string	"CTI_G77_LONGINT_TYPE"
.LASF434:
	.string	"realvaluetype"
.LASF740:
	.string	"FLOAT_EXTEND"
.LASF330:
	.string	"BUILT_IN_INDEX"
.LASF1517:
	.string	"warn_div_by_zero"
.LASF1425:
	.string	"add_c_tree_codes"
.LASF271:
	.string	"NOP_EXPR"
.LASF535:
	.string	"no_limit_stack"
.LASF1475:
	.string	"tree_code_length"
.LASF6:
	.string	"in_struct"
.LASF1086:
	.string	"output_buffer"
.LASF799:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1267:
	.string	"saved"
.LASF87:
	.string	"SImode"
.LASF684:
	.string	"ADDR_VEC"
.LASF128:
	.string	"V2DFmode"
.LASF225:
	.string	"ROUND_MOD_EXPR"
.LASF766:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1121:
	.string	"prefixing_rule"
.LASF1411:
	.string	"finish_label_address_expr"
.LASF421:
	.string	"protected_flag"
.LASF1471:
	.string	"c_attrs_initialized"
.LASF1361:
	.string	"best"
.LASF24:
	.string	"type"
.LASF1383:
	.string	"bdecl"
.LASF221:
	.string	"ROUND_DIV_EXPR"
.LASF703:
	.string	"SYMBOL_REF"
.LASF884:
	.string	"CLK_GNUCXX"
.LASF797:
	.string	"NOTE_INSN_BIAS"
.LASF115:
	.string	"V2HImode"
.LASF550:
	.string	"lang_decl"
.LASF236:
	.string	"ABS_EXPR"
.LASF819:
	.string	"NOTE_INSN_MAX"
.LASF1326:
	.string	"min_precision"
.LASF474:
	.string	"block_num"
.LASF1186:
	.string	"ATTR_2"
.LASF1328:
	.string	"opname"
.LASF1028:
	.string	"CTI_BOOLEAN_TRUE"
.LASF656:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF1468:
	.string	"c_tree_code_length"
.LASF246:
	.string	"BIT_NOT_EXPR"
.LASF736:
	.string	"LTGT"
.LASF1340:
	.string	"temi"
.LASF468:
	.string	"tree_exp"
.LASF1238:
	.string	"ATTR_fscanf"
.LASF454:
	.string	"temp"
.LASF1320:
	.string	"unsignedp"
.LASF1283:
	.string	"nchars_max"
.LASF1011:
	.string	"CTI_WCHAR_TYPE"
.LASF748:
	.string	"HIGH"
.LASF705:
	.string	"QUEUED"
.LASF1447:
	.string	"boolean_increment"
.LASF1347:
	.string	"ptrop"
.LASF1363:
	.string	"thisalign"
.LASF1:
	.string	"mode"
.LASF88:
	.string	"DImode"
.LASF444:
	.string	"_obstack_chunk"
.LASF248:
	.string	"TRUTH_ORIF_EXPR"
.LASF310:
	.string	"BUILT_IN_ALLOCA"
.LASF1480:
	.string	"sizetype_tab"
.LASF833:
	.string	"const_equiv_data"
.LASF28:
	.string	"__gnuc_va_list"
.LASF1153:
	.string	"merge_decl_attributes"
.LASF1491:
	.string	"in_system_header"
.LASF613:
	.string	"itk_unsigned_long"
.LASF61:
	.string	"_chain"
.LASF621:
	.string	"type_required"
.LASF1147:
	.string	"md_init"
.LASF1268:
	.string	"finish_fname_decls"
.LASF1444:
	.string	"fn_fputc"
.LASF726:
	.string	"POST_INC"
.LASF1078:
	.string	"ASM_STMT"
.LASF210:
	.string	"METHOD_CALL_EXPR"
.LASF562:
	.string	"TI_UINTTI_TYPE"
.LASF895:
	.string	"RID_TYPEDEF"
.LASF527:
	.string	"static_ctor_flag"
.LASF101:
	.string	"TFmode"
.LASF176:
	.string	"RECORD_TYPE"
.LASF39:
	.string	"unsigned char"
.LASF1381:
	.string	"nonansi_p"
.LASF413:
	.string	"unsigned_flag"
.LASF1089:
	.string	"line_length"
.LASF1062:
	.string	"SIZEOF_EXPR"
.LASF540:
	.string	"arguments"
.LASF1274:
	.string	"fname_decl"
.LASF1070:
	.string	"WHILE_STMT"
.LASF1012:
	.string	"CTI_SIGNED_WCHAR_TYPE"
.LASF1221:
	.string	"ATTR_FORMAT_SCANF_2_0"
.LASF1265:
	.string	"while_stmt"
.LASF1536:
	.string	"_IO_lock_t"
.LASF581:
	.string	"TI_CONST_PTR_TYPE"
.LASF508:
	.string	"lang_specific"
.LASF1370:
	.string	"traditional_len_type_node"
.LASF1311:
	.string	"class"
.LASF449:
	.string	"chunk_size"
.LASF617:
	.string	"attribute_spec"
.LASF84:
	.string	"BImode"
.LASF507:
	.string	"alias_set"
.LASF98:
	.string	"SFmode"
.LASF1128:
	.string	"open_paren"
.LASF556:
	.string	"TI_INTDI_TYPE"
.LASF870:
	.string	"root"
.LASF948:
	.string	"RID_PTRVALUE"
.LASF492:
	.string	"packed_flag"
.LASF242:
	.string	"BIT_IOR_EXPR"
.LASF311:
	.string	"BUILT_IN_ABS"
.LASF188:
	.string	"CONST_DECL"
.LASF435:
	.string	"tree_real_cst"
.LASF193:
	.string	"FIELD_DECL"
.LASF673:
	.string	"JUMP_INSN"
.LASF1353:
	.string	"int_type"
.LASF609:
	.string	"itk_unsigned_short"
.LASF995:
	.string	"RID_AT_DEFS"
.LASF1284:
	.string	"constant_expression_warning"
.LASF321:
	.string	"BUILT_IN_CREAL"
.LASF902:
	.string	"RID_BOUNDED"
.LASF151:
	.string	"MODE_COMPLEX_FLOAT"
.LASF984:
	.string	"RID_OR_EQ"
.LASF1191:
	.string	"ATTR_LIST_4"
.LASF790:
	.string	"rttree"
.LASF518:
	.string	"regdecl_flag"
.LASF1013:
	.string	"CTI_UNSIGNED_WCHAR_TYPE"
.LASF317:
	.string	"BUILT_IN_IMAXABS"
.LASF907:
	.string	"RID_EXPLICIT"
.LASF167:
	.string	"BOOLEAN_TYPE"
.LASF326:
	.string	"BUILT_IN_CIMAGL"
.LASF1183:
	.string	"ATTR_LIST_0"
.LASF1185:
	.string	"ATTR_LIST_1"
.LASF1187:
	.string	"ATTR_LIST_2"
.LASF1189:
	.string	"ATTR_LIST_3"
.LASF451:
	.string	"object_base"
.LASF796:
	.string	"insn_note"
.LASF1362:
	.string	"bestalign"
.LASF1287:
	.string	"operand"
.LASF1071:
	.string	"DO_STMT"
.LASF815:
	.string	"NOTE_INSN_RANGE_END"
.LASF655:
	.string	"DEFINE_SPLIT"
.LASF909:
	.string	"RID_MUTABLE"
.LASF1476:
	.string	"tree_code_name"
.LASF386:
	.string	"BUILT_IN_ISGREATER"
.LASF1417:
	.string	"tmode"
.LASF370:
	.string	"BUILT_IN_TRAP"
.LASF1410:
	.string	"duplicate"
.LASF694:
	.string	"CONST_VECTOR"
.LASF274:
	.string	"SAVE_EXPR"
.LASF652:
	.string	"MATCH_INSN"
.LASF930:
	.string	"RID_CASE"
.LASF432:
	.string	"high"
.LASF306:
	.string	"BUILT_IN_FRONTEND"
.LASF598:
	.string	"TI_V4HI_TYPE"
.LASF1079:
	.string	"SCOPE_STMT"
.LASF1403:
	.string	"low_value"
.LASF99:
	.string	"DFmode"
.LASF1049:
	.string	"x_last_stmt"
.LASF37:
	.string	"size_t"
.LASF686:
	.string	"PREFETCH"
.LASF93:
	.string	"PSImode"
.LASF1254:
	.string	"ATTR_fprintf_unlocked"
.LASF336:
	.string	"BUILT_IN_STRNCAT"
.LASF750:
	.string	"RANGE_INFO"
.LASF941:
	.string	"RID_VA_ARG"
.LASF633:
	.string	"SSIZETYPE"
.LASF1107:
	.string	"DK_ANACHRONISM"
.LASF781:
	.string	"rtunion_def"
.LASF1300:
	.string	"written"
.LASF186:
	.string	"FUNCTION_DECL"
.LASF857:
	.string	"EXPAND_WRITE"
.LASF389:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF666:
	.string	"DEFINE_ATTR"
.LASF634:
	.string	"USIZETYPE"
.LASF207:
	.string	"COND_EXPR"
.LASF668:
	.string	"SET_ATTR"
.LASF107:
	.string	"TCmode"
.LASF228:
	.string	"FIX_TRUNC_EXPR"
.LASF743:
	.string	"UNSIGNED_FLOAT"
.LASF1154:
	.string	"merge_type_attributes"
.LASF1434:
	.string	"attrs"
.LASF792:
	.string	"cselib_val_struct"
.LASF818:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1194:
	.string	"ATTR_LIST_2_0"
.LASF53:
	.string	"_IO_write_ptr"
.LASF1195:
	.string	"ATTR_LIST_2_3"
.LASF447:
	.string	"contents"
.LASF164:
	.string	"COMPLEX_TYPE"
.LASF715:
	.string	"ROTATE"
.LASF925:
	.string	"RID_ELSE"
.LASF371:
	.string	"BUILT_IN_PREFETCH"
.LASF238:
	.string	"LSHIFT_EXPR"
.LASF739:
	.string	"TRUNCATE"
.LASF1201:
	.string	"ATTR_STRFMON"
.LASF104:
	.string	"SCmode"
.LASF1136:
	.string	"function_begin_epilogue"
.LASF1484:
	.string	"current_function_decl"
.LASF1182:
	.string	"ATTR_0"
.LASF1184:
	.string	"ATTR_1"
.LASF829:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF1188:
	.string	"ATTR_3"
.LASF1190:
	.string	"ATTR_4"
.LASF604:
	.string	"integer_type_kind"
.LASF35:
	.string	"va_list"
.LASF971:
	.string	"RID_TRY"
.LASF931:
	.string	"RID_DEFAULT"
.LASF181:
	.string	"INTEGER_CST"
.LASF189:
	.string	"TYPE_DECL"
.LASF573:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF839:
	.string	"bitmap"
.LASF1072:
	.string	"RETURN_STMT"
.LASF1234:
	.string	"ATTR_printf"
.LASF809:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1044:
	.string	"c_language_kind"
.LASF1114:
	.string	"printer_fn"
.LASF1097:
	.string	"line"
.LASF1341:
	.string	"min_gt"
.LASF504:
	.string	"main_variant"
.LASF285:
	.string	"PREDECREMENT_EXPR"
.LASF565:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF578:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF410:
	.string	"addressable_flag"
.LASF670:
	.string	"EQ_ATTR"
.LASF982:
	.string	"RID_NOT_EQ"
.LASF1198:
	.string	"ATTR_PRINTF"
.LASF304:
	.string	"built_in_class"
.LASF936:
	.string	"RID_SIZEOF"
.LASF575:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF1258:
	.string	"c_finish_then"
.LASF137:
	.string	"CCGOCmode"
.LASF701:
	.string	"CONCAT"
.LASF347:
	.string	"BUILT_IN_STRRCHR"
.LASF484:
	.string	"size"
.LASF594:
	.string	"TI_V16SF_TYPE"
.LASF769:
	.string	"min_after_vec"
.LASF574:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF46:
	.string	"FILE"
.LASF707:
	.string	"COND"
.LASF165:
	.string	"VECTOR_TYPE"
.LASF148:
	.string	"MODE_PARTIAL_INT"
.LASF887:
	.string	"CLK_OBJCXX"
.LASF863:
	.string	"right"
.LASF1245:
	.string	"ATTR_vsnprintf"
.LASF328:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF105:
	.string	"DCmode"
.LASF1035:
	.string	"CTI_G77_UINTEGER_TYPE"
.LASF897:
	.string	"RID_INLINE"
.LASF1281:
	.string	"wchar_bytes"
.LASF658:
	.string	"DEFINE_COMBINE"
.LASF1470:
	.string	"built_in_attributes"
.LASF1533:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF245:
	.string	"BIT_ANDTC_EXPR"
.LASF580:
	.string	"TI_PTR_TYPE"
.LASF1226:
	.string	"ATTR_STRFMON_3_4"
.LASF1368:
	.string	"traditional_ptr_type_node"
.LASF22:
	.string	"identifier"
.LASF716:
	.string	"ASHIFTRT"
.LASF860:
	.string	"splay_tree_node"
.LASF1532:
	.string	"fname_vars"
.LASF927:
	.string	"RID_DO"
.LASF1042:
	.string	"CTI_VOID_ZERO"
.LASF1432:
	.string	"SAVE_pedantic"
.LASF1369:
	.string	"traditional_cptr_type_node"
.LASF135:
	.string	"CCmode"
.LASF399:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF391:
	.string	"BUILT_IN_ISUNORDERED"
.LASF1098:
	.string	"warn"
.LASF1509:
	.string	"warn_format"
.LASF1101:
	.string	"x_data"
.LASF802:
	.string	"NOTE_INSN_LOOP_END"
.LASF1003:
	.string	"RID_MAX"
.LASF133:
	.string	"V16SFmode"
.LASF1014:
	.string	"CTI_WINT_TYPE"
.LASF878:
	.string	"c_lang"
.LASF760:
	.string	"SS_PLUS"
.LASF542:
	.string	"initial"
.LASF1020:
	.string	"CTI_WIDEST_INT_LIT_TYPE"
.LASF247:
	.string	"TRUTH_ANDIF_EXPR"
.LASF816:
	.string	"NOTE_INSN_LIVE"
.LASF1077:
	.string	"LABEL_STMT"
.LASF663:
	.string	"DEFINE_COND_EXEC"
.LASF1067:
	.string	"DECL_STMT"
.LASF1321:
	.string	"type_for_mode"
.LASF905:
	.string	"RID_FRIEND"
.LASF57:
	.string	"_IO_save_base"
.LASF632:
	.string	"SIZETYPE"
.LASF1331:
	.string	"op1_ptr"
.LASF1074:
	.string	"CONTINUE_STMT"
.LASF1502:
	.string	"c_global_trees"
.LASF1177:
	.string	"cache_before_sp"
.LASF252:
	.string	"TRUTH_NOT_EXPR"
.LASF659:
	.string	"DEFINE_EXPAND"
.LASF233:
	.string	"NEGATE_EXPR"
.LASF1025:
	.string	"CTI_STRING_TYPE"
.LASF1359:
	.string	"c_alignof"
.LASF848:
	.string	"elements_used"
.LASF1524:
	.string	"warn_parentheses"
.LASF124:
	.string	"V8SImode"
.LASF1445:
	.string	"fn_fputs"
.LASF672:
	.string	"INSN"
.LASF783:
	.string	"rtint"
.LASF401:
	.string	"BUILT_IN_STDARG_START"
.LASF1225:
	.string	"ATTR_FORMAT_STRFTIME_3_0"
.LASF533:
	.string	"comdat_flag"
.LASF702:
	.string	"LABEL_REF"
.LASF1159:
	.string	"function_attribute_inlinable_p"
.LASF561:
	.string	"TI_UINTDI_TYPE"
.LASF174:
	.string	"ARRAY_TYPE"
.LASF571:
	.string	"TI_BITSIZE_UNIT"
.LASF1314:
	.string	"after_sp"
.LASF844:
	.string	"elt_list"
.LASF308:
	.string	"BUILT_IN_NORMAL"
.LASF847:
	.string	"num_elements"
.LASF1096:
	.string	"file"
.LASF1457:
	.string	"msgid"
.LASF1433:
	.string	"diagnostic_occurred"
.LASF255:
	.string	"GT_EXPR"
.LASF71:
	.string	"__pad2"
.LASF268:
	.string	"CARD_EXPR"
.LASF1157:
	.string	"set_default_type_attributes"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF1152:
	.string	"gcc_target"
.LASF1507:
	.string	"flag_short_double"
.LASF577:
	.string	"TI_DOUBLE_TYPE"
.LASF1197:
	.string	"ATTR_LIST_3_4"
.LASF369:
	.string	"BUILT_IN_LONGJMP"
.LASF912:
	.string	"RID_INOUT"
.LASF442:
	.string	"tree_vector"
.LASF973:
	.string	"RID_TYPEID"
.LASF172:
	.string	"METHOD_TYPE"
.LASF1037:
	.string	"CTI_G77_ULONGINT_TYPE"
.LASF1343:
	.string	"min_lt"
.LASF136:
	.string	"CCGCmode"
.LASF961:
	.string	"RID_NULL"
.LASF1414:
	.string	"mark_c_language_function"
.LASF25:
	.string	"list"
.LASF270:
	.string	"CONVERT_EXPR"
.LASF979:
	.string	"RID_AND"
.LASF698:
	.string	"SCRATCH"
.LASF122:
	.string	"V8QImode"
.LASF222:
	.string	"TRUNC_MOD_EXPR"
.LASF125:
	.string	"V8DImode"
.LASF154:
	.string	"MAX_MODE_CLASS"
.LASF1466:
	.string	"disabled_builtins"
.LASF1358:
	.string	"c_common_get_alias_set"
.LASF1272:
	.string	"pretty_p"
.LASF615:
	.string	"itk_unsigned_long_long"
.LASF997:
	.string	"RID_AT_PROTECTED"
.LASF1452:
	.string	"c_common_post_options"
.LASF218:
	.string	"TRUNC_DIV_EXPR"
.LASF1337:
	.string	"real2"
.LASF737:
	.string	"SIGN_EXTEND"
.LASF1473:
	.string	"ptr_mode"
.LASF1510:
	.string	"warn_format_y2k"
.LASF957:
	.string	"RID_PUBLIC"
.LASF275:
	.string	"UNSAVE_EXPR"
.LASF1040:
	.string	"CTI_C99_FUNCTION_NAME_DECL"
.LASF1413:
	.string	"c_mark_lang_decl"
.LASF877:
	.string	"splay_tree"
.LASF217:
	.string	"MULT_EXPR"
.LASF466:
	.string	"value"
.LASF1499:
	.string	"const_int_rtx"
.LASF759:
	.string	"VEC_DUPLICATE"
.LASF256:
	.string	"GE_EXPR"
.LASF991:
	.string	"RID_AT_ENCODE"
.LASF1334:
	.string	"unsignedp0"
.LASF156:
	.string	"ERROR_MARK"
.LASF78:
	.string	"_next"
.LASF1255:
	.string	"ATTR_LAST"
.LASF1303:
	.string	"warning_candidate_p"
.LASF1243:
	.string	"ATTR_strftime"
.LASF343:
	.string	"BUILT_IN_STRPBRK"
.LASF1390:
	.string	"params"
.LASF1172:
	.string	"if_elt"
.LASF278:
	.string	"REFERENCE_EXPR"
.LASF647:
	.string	"MATCH_DUP"
.LASF1230:
	.string	"ATTR___builtin_printf"
.LASF223:
	.string	"CEIL_MOD_EXPR"
.LASF924:
	.string	"RID_IF"
.LASF812:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF481:
	.string	"address"
.LASF910:
	.string	"RID_IN"
.LASF456:
	.string	"chunkfun"
.LASF372:
	.string	"BUILT_IN_PUTCHAR"
.LASF622:
	.string	"function_type_required"
.LASF1016:
	.string	"CTI_SIGNED_SIZE_TYPE"
.LASF1335:
	.string	"unsignedp1"
.LASF1371:
	.string	"va_list_ref_type_node"
.LASF962:
	.string	"RID_CATCH"
.LASF1168:
	.string	"pretty"
.LASF131:
	.string	"V8SFmode"
.LASF1262:
	.string	"c_begin_if_stmt"
.LASF219:
	.string	"CEIL_DIV_EXPR"
.LASF1295:
	.string	"add_tlist"
.LASF642:
	.string	"INCLUDE"
.LASF362:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF777:
	.string	"expr"
.LASF1119:
	.string	"emitted_prefix_p"
.LASF1117:
	.string	"ideal_maximum_length"
.LASF681:
	.string	"ASM_OPERANDS"
.LASF888:
	.string	"CLK_ASM"
.LASF1043:
	.string	"CTI_MAX"
.LASF1260:
	.string	"c_expand_start_else"
.LASF501:
	.string	"minval"
.LASF1167:
	.string	"fname_var_t"
.LASF139:
	.string	"CCZmode"
.LASF1133:
	.string	"integer"
.LASF803:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1316:
	.string	"c_expand_expr_stmt"
.LASF637:
	.string	"UBITSIZETYPE"
.LASF220:
	.string	"FLOOR_DIV_EXPR"
.LASF158:
	.string	"TREE_LIST"
.LASF1402:
	.string	"cases"
.LASF952:
	.string	"RID_PRETTY_FUNCTION_NAME"
.LASF653:
	.string	"DEFINE_INSN"
.LASF1006:
	.string	"RID_FIRST_AT"
.LASF553:
	.string	"TI_INTQI_TYPE"
.LASF1134:
	.string	"function_prologue"
.LASF478:
	.string	"abstract_origin"
.LASF185:
	.string	"STRING_CST"
.LASF253:
	.string	"LT_EXPR"
.LASF1345:
	.string	"pointer_int_sum"
.LASF685:
	.string	"ADDR_DIFF_VEC"
.LASF243:
	.string	"BIT_XOR_EXPR"
.LASF1487:
	.string	"format_attribute_table"
.LASF301:
	.string	"SWITCH_EXPR"
.LASF250:
	.string	"TRUTH_OR_EXPR"
.LASF747:
	.string	"ZERO_EXTRACT"
.LASF1057:
	.string	"c_lang_decl"
.LASF835:
	.string	"hint"
.LASF680:
	.string	"ASM_INPUT"
.LASF292:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF462:
	.string	"ht_identifier"
.LASF730:
	.string	"ORDERED"
.LASF132:
	.string	"V8DFmode"
.LASF903:
	.string	"RID_UNBOUNDED"
.LASF543:
	.string	"assembler_name"
.LASF1248:
	.string	"ATTR_vsscanf"
.LASF859:
	.string	"splay_tree_value"
.LASF1247:
	.string	"ATTR_vfscanf"
.LASF1441:
	.string	"newlen"
.LASF996:
	.string	"RID_AT_PRIVATE"
.LASF234:
	.string	"MIN_EXPR"
.LASF629:
	.string	"ATTR_FLAG_TYPE_IN_PLACE"
.LASF586:
	.string	"TI_UV4SI_TYPE"
.LASF1356:
	.string	"type_quals"
.LASF490:
	.string	"needs_constructing_flag"
.LASF1055:
	.string	"x_stmt_tree"
.LASF744:
	.string	"UNSIGNED_FIX"
.LASF229:
	.string	"FIX_CEIL_EXPR"
.LASF923:
	.string	"RID_UNION"
.LASF340:
	.string	"BUILT_IN_STRNCMP"
.LASF1505:
	.string	"c_language"
.LASF1297:
	.string	"found"
.LASF1323:
	.string	"type1"
.LASF439:
	.string	"tree_complex"
.LASF1436:
	.string	"unlocked"
.LASF1512:
	.string	"warn_format_nonliteral"
.LASF919:
	.string	"RID_DOUBLE"
.LASF675:
	.string	"BARRIER"
.LASF1142:
	.string	"destructor"
.LASF627:
	.string	"ATTR_FLAG_FUNCTION_NEXT"
.LASF1508:
	.string	"flag_short_wchar"
.LASF140:
	.string	"CCFPmode"
.LASF1076:
	.string	"GOTO_STMT"
.LASF254:
	.string	"LE_EXPR"
.LASF674:
	.string	"CALL_INSN"
.LASF1158:
	.string	"insert_attributes"
.LASF541:
	.string	"result"
.LASF669:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF626:
	.string	"ATTR_FLAG_DECL_NEXT"
.LASF500:
	.string	"name"
.LASF644:
	.string	"INSN_LIST"
.LASF980:
	.string	"RID_AND_EQ"
.LASF79:
	.string	"_sbuf"
.LASF1374:
	.string	"disable_builtin_function"
.LASF752:
	.string	"RANGE_VAR"
.LASF1440:
	.string	"stripped_string"
.LASF59:
	.string	"_IO_save_end"
.LASF1130:
	.string	"byte_op"
.LASF1150:
	.string	"reorder2"
.LASF146:
	.string	"MODE_INT"
.LASF849:
	.string	"element_size"
.LASF1200:
	.string	"ATTR_STRFTIME"
.LASF18:
	.string	"real_cst"
.LASF938:
	.string	"RID_TYPEOF"
.LASF235:
	.string	"MAX_EXPR"
.LASF1106:
	.string	"DK_WARNING"
.LASF2:
	.string	"jump"
.LASF471:
	.string	"tree_block"
.LASF1461:
	.string	"tlist_obstack"
.LASF1325:
	.string	"signed_or_unsigned_type"
.LASF567:
	.string	"TI_SIZE_ZERO"
.LASF986:
	.string	"RID_XOR_EQ"
.LASF1146:
	.string	"variable_issue"
.LASF476:
	.string	"subblocks"
.LASF1063:
	.string	"ARROW_EXPR"
.LASF608:
	.string	"itk_short"
.LASF31:
	.string	"fp_offset"
.LASF334:
	.string	"BUILT_IN_MEMSET"
.LASF753:
	.string	"RANGE_LIVE"
.LASF1442:
	.string	"newstr"
.LASF226:
	.string	"RDIV_EXPR"
.LASF9:
	.string	"frame_related"
.LASF521:
	.string	"virtual_flag"
.LASF841:
	.string	"const_equiv"
.LASF494:
	.string	"pointer_depth"
.LASF438:
	.string	"pointer"
.LASF1477:
	.string	"built_in_decls"
.LASF187:
	.string	"LABEL_DECL"
.LASF1090:
	.string	"digit_buffer"
.LASF405:
	.string	"END_BUILTINS"
.LASF643:
	.string	"EXPR_LIST"
.LASF635:
	.string	"BITSIZETYPE"
.LASF826:
	.string	"GR_ARG_POINTER"
.LASF966:
	.string	"RID_NEW"
.LASF1504:
	.string	"lang_expand_function_end"
.LASF27:
	.string	"sizetype"
.LASF1408:
	.string	"low_bound"
.LASF762:
	.string	"SS_MINUS"
.LASF1179:
	.string	"disabled_builtin"
.LASF1431:
	.string	"is_valid_printf_arglist"
.LASF625:
	.string	"attribute_flags"
.LASF922:
	.string	"RID_STRUCT"
.LASF1231:
	.string	"ATTR___builtin_fprintf"
.LASF649:
	.string	"MATCH_PARALLEL"
.LASF120:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1523:
	.string	"flag_no_nonansi_builtin"
.LASF1203:
	.string	"ATTR_FORMAT_ARG"
.LASF1458:
	.string	"if_stack"
.LASF406:
	.string	"tree_common"
.LASF505:
	.string	"binfo"
.LASF570:
	.string	"TI_BITSIZE_ONE"
.LASF869:
	.string	"splay_tree_s"
.LASF40:
	.string	"short unsigned int"
.LASF978:
	.string	"RID_STATCAST"
.LASF983:
	.string	"RID_OR"
.LASF41:
	.string	"signed char"
.LASF921:
	.string	"RID_ENUM"
.LASF564:
	.string	"TI_INTEGER_ONE"
.LASF648:
	.string	"MATCH_OPERATOR"
.LASF1474:
	.string	"tree_code_type"
.LASF1110:
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
.LASF720:
	.string	"SMAX"
.LASF465:
	.string	"purpose"
.LASF914:
	.string	"RID_BYREF"
.LASF1251:
	.string	"ATTR_dcgettext"
.LASF554:
	.string	"TI_INTHI_TYPE"
.LASF846:
	.string	"varray_head_tag"
.LASF497:
	.string	"pointer_to"
.LASF1308:
	.string	"tmp_nosp"
.LASF530:
	.string	"weak_flag"
.LASF546:
	.string	"saved_tree"
.LASF467:
	.string	"tree_vec"
.LASF1171:
	.string	"if_stmt"
.LASF514:
	.string	"filename"
.LASF1180:
	.string	"built_in_attribute"
.LASF871:
	.string	"comp"
.LASF764:
	.string	"SS_TRUNCATE"
.LASF287:
	.string	"POSTDECREMENT_EXPR"
.LASF886:
	.string	"CLK_OBJC"
.LASF305:
	.string	"NOT_BUILT_IN"
.LASF380:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF901:
	.string	"RID_RESTRICT"
.LASF1426:
	.string	"c_expand_builtin"
.LASF384:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF768:
	.string	"base_after_vec"
.LASF1010:
	.string	"c_tree_index"
.LASF1286:
	.string	"unsigned_conversion_warning"
.LASF44:
	.string	"__off64_t"
.LASF469:
	.string	"complexity"
.LASF603:
	.string	"TI_MAX"
.LASF121:
	.string	"V4DImode"
.LASF858:
	.string	"splay_tree_key"
.LASF1531:
	.string	"skip_evaluation"
.LASF460:
	.string	"maybe_empty_object"
.LASF417:
	.string	"nothrow_flag"
.LASF1387:
	.string	"parms"
.LASF1256:
	.string	"cond"
.LASF51:
	.string	"_IO_read_base"
.LASF852:
	.string	"expand_modifier"
.LASF291:
	.string	"TRY_FINALLY_EXPR"
.LASF69:
	.string	"_offset"
.LASF1479:
	.string	"integer_types"
.LASF20:
	.string	"string"
.LASF827:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF1087:
	.string	"state"
.LASF56:
	.string	"_IO_buf_end"
.LASF499:
	.string	"symtab"
.LASF662:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF763:
	.string	"US_MINUS"
.LASF1336:
	.string	"real1"
.LASF1228:
	.string	"ATTR_FORMAT_ARG_1"
.LASF1229:
	.string	"ATTR_FORMAT_ARG_2"
.LASF1380:
	.string	"library_name_p"
.LASF588:
	.string	"TI_UV8QI_TYPE"
.LASF1373:
	.string	"build_va_arg"
.LASF1453:
	.string	"c_common_init"
.LASF257:
	.string	"EQ_EXPR"
.LASF195:
	.string	"COMPONENT_REF"
.LASF746:
	.string	"SIGN_EXTRACT"
.LASF545:
	.string	"live_range_rtl"
.LASF8:
	.string	"integrated"
.LASF216:
	.string	"MINUS_EXPR"
.LASF1264:
	.string	"c_finish_while_stmt_cond"
.LASF935:
	.string	"RID_GOTO"
.LASF687:
	.string	"CLOBBER"
.LASF503:
	.string	"next_variant"
.LASF75:
	.string	"_mode"
.LASF152:
	.string	"MODE_VECTOR_INT"
.LASF52:
	.string	"_IO_write_base"
.LASF94:
	.string	"PDImode"
.LASF1367:
	.string	"array_domain_type"
.LASF755:
	.string	"CALL_PLACEHOLDER"
.LASF512:
	.string	"function"
.LASF344:
	.string	"BUILT_IN_STRSPN"
.LASF1398:
	.string	"func"
.LASF129:
	.string	"V4SFmode"
.LASF418:
	.string	"static_flag"
.LASF203:
	.string	"COMPOUND_EXPR"
.LASF1481:
	.string	"lang_unsafe_for_reeval"
.LASF896:
	.string	"RID_SHORT"
.LASF898:
	.string	"RID_VOLATILE"
.LASF558:
	.string	"TI_UINTQI_TYPE"
.LASF1469:
	.string	"c_tree_code_name"
.LASF1349:
	.string	"size_exp"
.LASF1109:
	.string	"DK_LAST_DIAGNOSTIC_KIND"
.LASF1124:
	.string	"diagnostic_count"
.LASF363:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF485:
	.string	"size_unit"
.LASF379:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF709:
	.string	"PLUS"
.LASF331:
	.string	"BUILT_IN_RINDEX"
.LASF1294:
	.string	"copy"
.LASF1007:
	.string	"RID_LAST_AT"
.LASF960:
	.string	"RID_TEMPLATE"
.LASF725:
	.string	"POST_DEC"
.LASF1319:
	.string	"bits"
.LASF86:
	.string	"HImode"
.LASF1050:
	.string	"x_last_expr_type"
.LASF795:
	.string	"rtunion"
.LASF805:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF974:
	.string	"RID_USING"
.LASF864:
	.string	"splay_tree_compare_fn"
.LASF150:
	.string	"MODE_COMPLEX_INT"
.LASF1023:
	.string	"CTI_WCHAR_ARRAY_TYPE"
.LASF963:
	.string	"RID_DELETE"
.LASF1022:
	.string	"CTI_CHAR_ARRAY_TYPE"
.LASF303:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF842:
	.string	"sched_info_tag"
.LASF1518:
	.string	"flag_traditional"
.LASF36:
	.string	"long int"
.LASF831:
	.string	"GR_VIRTUAL_CFA"
.LASF169:
	.string	"POINTER_TYPE"
.LASF237:
	.string	"FFS_EXPR"
.LASF1490:
	.string	"pedantic"
.LASF161:
	.string	"VOID_TYPE"
.LASF273:
	.string	"VIEW_CONVERT_EXPR"
.LASF552:
	.string	"TI_ERROR_MARK"
.LASF1129:
	.string	"close_paren"
.LASF77:
	.string	"_IO_marker"
.LASF100:
	.string	"XFmode"
.LASF1162:
	.string	"expand_builtin"
.LASF445:
	.string	"limit"
.LASF913:
	.string	"RID_BYCOPY"
.LASF130:
	.string	"V4DFmode"
.LASF855:
	.string	"EXPAND_CONST_ADDRESS"
.LASF1372:
	.string	"va_list_arg_type_node"
.LASF1084:
	.string	"CLEANUP_STMT"
.LASF4:
	.string	"unchanging"
.LASF525:
	.string	"defer_output"
.LASF600:
	.string	"TI_V2SF_TYPE"
.LASF994:
	.string	"RID_AT_ALIAS"
.LASF800:
	.string	"NOTE_INSN_BLOCK_END"
.LASF1450:
	.string	"c_common_init_options"
.LASF944:
	.string	"RID_REALPART"
.LASF619:
	.string	"max_length"
.LASF1405:
	.string	"label"
.LASF1166:
	.string	"cannot_modify_jumps_p"
.LASF506:
	.string	"context"
.LASF1488:
	.string	"optimize"
.LASF1082:
	.string	"STMT_EXPR"
.LASF1223:
	.string	"ATTR_FORMAT_SCANF_2_3"
.LASF1315:
	.string	"__obj"
.LASF640:
	.string	"rtx_code"
.LASF920:
	.string	"RID_VOID"
.LASF214:
	.string	"WITH_RECORD_EXPR"
.LASF1421:
	.string	"last"
.LASF551:
	.string	"tree_index"
.LASF893:
	.string	"RID_EXTERN"
.LASF1342:
	.string	"max_gt"
.LASF1156:
	.string	"comp_type_attributes"
.LASF1285:
	.string	"overflow_warning"
.LASF472:
	.string	"handler_block_flag"
.LASF537:
	.string	"non_addressable"
.LASF1161:
	.string	"init_builtins"
.LASF1176:
	.string	"tlist_cache"
.LASF1033:
	.string	"CTI_DEFAULT_FUNCTION_TYPE"
.LASF945:
	.string	"RID_LABEL"
.LASF1528:
	.string	"global_dc"
.LASF1192:
	.string	"ATTR_LIST_1_0"
.LASF1263:
	.string	"c_begin_while_stmt"
.LASF1420:
	.string	"preserve_result"
.LASF1193:
	.string	"ATTR_LIST_1_2"
.LASF1418:
	.string	"modifier"
.LASF395:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF1181:
	.string	"ATTR_NULL"
.LASF1140:
	.string	"eh_frame_section"
.LASF455:
	.string	"alignment_mask"
.LASF1015:
	.string	"CTI_C_SIZE_TYPE"
.LASF683:
	.string	"UNSPEC_VOLATILE"
.LASF200:
	.string	"ARRAY_RANGE_REF"
.LASF638:
	.string	"TYPE_KIND_LAST"
.LASF985:
	.string	"RID_XOR"
.LASF939:
	.string	"RID_ALIGNOF"
.LASF342:
	.string	"BUILT_IN_STRSTR"
.LASF524:
	.string	"common_flag"
.LASF457:
	.string	"freefun"
.LASF808:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF38:
	.string	"long unsigned int"
.LASF532:
	.string	"no_instrument_function_entry_exit"
.LASF414:
	.string	"asm_written_flag"
.LASF307:
	.string	"BUILT_IN_MD"
.LASF11:
	.string	"rtx_def"
.LASF155:
	.string	"tree_code"
.LASF96:
	.string	"HFmode"
.LASF378:
	.string	"BUILT_IN_FPRINTF"
.LASF949:
	.string	"RID_CHOOSE_EXPR"
.LASF409:
	.string	"constant_flag"
.LASF350:
	.string	"BUILT_IN_COS"
.LASF690:
	.string	"TRAP_IF"
.LASF1206:
	.string	"ATTR_PRINTF_1_2"
.LASF1279:
	.string	"wide_length"
.LASF917:
	.string	"RID_CHAR"
.LASF1463:
	.string	"warned_ids"
.LASF422:
	.string	"bounded_flag"
.LASF192:
	.string	"RESULT_DECL"
.LASF290:
	.string	"TRY_CATCH_EXPR"
.LASF1065:
	.string	"EXPR_STMT"
.LASF593:
	.string	"TI_V4SF_TYPE"
.LASF464:
	.string	"tree_list"
.LASF1397:
	.string	"walk_stmt_tree"
.LASF1048:
	.string	"stmt_tree_s"
.LASF108:
	.string	"CQImode"
.LASF509:
	.string	"cpp_reader"
.LASF879:
	.string	"CLK_GNUC89"
.LASF1175:
	.string	"writer"
.LASF45:
	.string	"char"
.LASF1139:
	.string	"exception_section"
.LASF106:
	.string	"XCmode"
.LASF908:
	.string	"RID_EXPORT"
.LASF390:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF459:
	.string	"use_extra_arg"
.LASF309:
	.string	"built_in_function"
.LASF1058:
	.string	"declared_inline"
.LASF272:
	.string	"NON_LVALUE_EXPR"
.LASF1034:
	.string	"CTI_G77_INTEGER_TYPE"
.LASF782:
	.string	"rtwint"
.LASF452:
	.string	"next_free"
.LASF534:
	.string	"malloc_flag"
.LASF981:
	.string	"RID_NOT"
.LASF55:
	.string	"_IO_buf_base"
.LASF718:
	.string	"ROTATERT"
.LASF880:
	.string	"CLK_GNUC99"
.LASF1365:
	.string	"builtin_types"
.LASF487:
	.string	"precision"
.LASF704:
	.string	"ADDRESSOF"
.LASF1005:
	.string	"RID_LAST_MODIFIER"
.LASF197:
	.string	"INDIRECT_REF"
.LASF1204:
	.string	"ATTR_PRINTF_1_0"
.LASF1376:
	.string	"builtin_function_2"
.LASF114:
	.string	"V2QImode"
.LASF295:
	.string	"RETURN_EXPR"
.LASF324:
	.string	"BUILT_IN_CIMAG"
.LASF365:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF92:
	.string	"PHImode"
.LASF50:
	.string	"_IO_read_end"
.LASF1305:
	.string	"pbefore_sp"
.LASF946:
	.string	"RID_PTRBASE"
.LASF491:
	.string	"transparent_union_flag"
.LASF1024:
	.string	"CTI_INT_ARRAY_TYPE"
.LASF631:
	.string	"size_type_kind"
.LASF843:
	.string	"reg_info_def"
.LASF113:
	.string	"COImode"
.LASF723:
	.string	"PRE_DEC"
.LASF1351:
	.string	"result_type"
.LASF876:
	.string	"allocate_data"
.LASF1407:
	.string	"node"
.LASF1008:
	.string	"RID_FIRST_PQ"
.LASF47:
	.string	"_IO_FILE"
.LASF1309:
	.string	"tmp_list2"
.LASF977:
	.string	"RID_REINTCAST"
.LASF807:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF1178:
	.string	"cache_after_sp"
.LASF825:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1095:
	.string	"args_ptr"
.LASF496:
	.string	"align"
.LASF1526:
	.string	"make_fname_decl"
.LASF1312:
	.string	"verify_sequence_points"
.LASF392:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF885:
	.string	"CLK_CXX98"
.LASF605:
	.string	"itk_char"
.LASF1151:
	.string	"cycle_display"
.LASF572:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF1000:
	.string	"RID_AT_SELECTOR"
.LASF1329:
	.string	"shorten_compare"
.LASF145:
	.string	"MODE_RANDOM"
.LASF761:
	.string	"US_PLUS"
.LASF904:
	.string	"RID_COMPLEX"
.LASF1093:
	.string	"buffer"
.LASF951:
	.string	"RID_FUNCTION_NAME"
.LASF967:
	.string	"RID_OPERATOR"
.LASF900:
	.string	"RID_AUTO"
.LASF1127:
	.string	"asm_out"
.LASF134:
	.string	"BLKmode"
.LASF1273:
	.string	"fname_string"
.LASF1492:
	.string	"flag_writable_strings"
.LASF1537:
	.string	"c_init_attributes"
.LASF103:
	.string	"HCmode"
.LASF208:
	.string	"BIND_EXPR"
.LASF1104:
	.string	"DK_SORRY"
.LASF280:
	.string	"FDESC_EXPR"
.LASF591:
	.string	"TI_UV2SF_TYPE"
.LASF1113:
	.string	"diagnostic_prefixing_rule_t"
.LASF215:
	.string	"PLUS_EXPR"
.LASF597:
	.string	"TI_V8QI_TYPE"
.LASF1302:
	.string	"warn_for_collisions"
.LASF1220:
	.string	"ATTR_SCANF_2_0"
.LASF989:
	.string	"RID_COMPL"
.LASF602:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1222:
	.string	"ATTR_SCANF_2_3"
.LASF341:
	.string	"BUILT_IN_STRLEN"
.LASF177:
	.string	"UNION_TYPE"
.LASF1276:
	.string	"stmts"
.LASF1126:
	.string	"asm_int_op"
.LASF695:
	.string	"CONST_STRING"
.LASF758:
	.string	"VEC_CONCAT"
.LASF1105:
	.string	"DK_ERROR"
.LASF279:
	.string	"ENTRY_VALUE_EXPR"
.LASF890:
	.string	"RID_UNSIGNED"
.LASF359:
	.string	"BUILT_IN_NEXT_ARG"
.LASF70:
	.string	"__pad1"
.LASF72:
	.string	"__pad3"
.LASF73:
	.string	"__pad4"
.LASF74:
	.string	"__pad5"
.LASF1498:
	.string	"flag_bounds_check"
.LASF522:
	.string	"ignored_flag"
.LASF671:
	.string	"ATTR_FLAG"
.LASF976:
	.string	"RID_DYNCAST"
.LASF754:
	.string	"CONSTANT_P_RTX"
.LASF856:
	.string	"EXPAND_INITIALIZER"
.LASF141:
	.string	"CCFPUmode"
.LASF1317:
	.string	"check_case_value"
.LASF661:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1521:
	.string	"flag_noniso_default_format_attributes"
.LASF1454:
	.string	"c_common_finish"
.LASF529:
	.string	"artificial_flag"
.LASF1379:
	.string	"function_code"
.LASF1224:
	.string	"ATTR_STRFTIME_3_0"
.LASF60:
	.string	"_markers"
.LASF80:
	.string	"_pos"
.LASF1277:
	.string	"combine_strings"
.LASF665:
	.string	"ADDRESS"
.LASF1118:
	.string	"indent_skip"
.LASF260:
	.string	"ORDERED_EXPR"
.LASF403:
	.string	"BUILT_IN_VA_COPY"
.LASF1060:
	.string	"C_DUMMY_TREE_CODE"
.LASF21:
	.string	"complex"
.LASF461:
	.string	"alloc_failed"
.LASF806:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF1205:
	.string	"ATTR_FORMAT_PRINTF_1_0"
.LASF1207:
	.string	"ATTR_FORMAT_PRINTF_1_2"
.LASF1520:
	.string	"flag_hosted"
.LASF1208:
	.string	"ATTR_PRINTF_2_0"
.LASF838:
	.string	"cptr"
.LASF1395:
	.string	"arg1"
.LASF171:
	.string	"REFERENCE_TYPE"
.LASF793:
	.string	"bitmap_head_def"
.LASF477:
	.string	"supercontext"
.LASF404:
	.string	"BUILT_IN_EXPECT"
.LASF937:
	.string	"RID_ASM"
.LASF1125:
	.string	"output_state"
.LASF502:
	.string	"maxval"
.LASF1396:
	.string	"statement_code_p"
.LASF259:
	.string	"UNORDERED_EXPR"
.LASF1357:
	.string	"c_apply_type_quals_to_decl"
.LASF932:
	.string	"RID_BREAK"
.LASF585:
	.string	"TI_UV4SF_TYPE"
.LASF929:
	.string	"RID_SWITCH"
.LASF765:
	.string	"US_TRUNCATE"
.LASF426:
	.string	"lang_flag_2"
.LASF993:
	.string	"RID_AT_CLASS"
.LASF1026:
	.string	"CTI_CONST_STRING_TYPE"
.LASF345:
	.string	"BUILT_IN_STRCSPN"
.LASF1030:
	.string	"CTI_C_BOOL_TYPE"
.LASF1393:
	.string	"unordered_cmp"
.LASF267:
	.string	"SET_LE_EXPR"
.LASF1412:
	.string	"mark_stmt_tree"
.LASF601:
	.string	"TI_V16QI_TYPE"
.LASF1239:
	.string	"ATTR_sscanf"
.LASF614:
	.string	"itk_long_long"
.LASF722:
	.string	"UMAX"
.LASF286:
	.string	"PREINCREMENT_EXPR"
.LASF1164:
	.string	"have_named_sections"
.LASF774:
	.string	"scale"
.LASF515:
	.string	"linenum"
.LASF85:
	.string	"QImode"
.LASF1259:
	.string	"c_expand_end_cond"
.LASF1173:
	.string	"tlist"
.LASF1472:
	.string	"target_flags"
.LASF263:
	.string	"UNGT_EXPR"
.LASF708:
	.string	"COMPARE"
.LASF850:
	.string	"data"
.LASF823:
	.string	"GR_STACK_POINTER"
.LASF1459:
	.string	"if_stack_space"
.LASF1144:
	.string	"adjust_priority"
.LASF495:
	.string	"user_align"
.LASF312:
	.string	"BUILT_IN_LABS"
.LASF959:
	.string	"RID_PROTECTED"
.LASF97:
	.string	"TQFmode"
.LASF1249:
	.string	"ATTR_gettext"
.LASF947:
	.string	"RID_PTREXTENT"
.LASF1027:
	.string	"CTI_BOOLEAN_TYPE"
.LASF411:
	.string	"volatile_flag"
.LASF1375:
	.string	"builtin_function_disabled_p"
.LASF934:
	.string	"RID_RETURN"
.LASF335:
	.string	"BUILT_IN_STRCAT"
.LASF351:
	.string	"BUILT_IN_SQRTF"
.LASF1506:
	.string	"flag_const_strings"
.LASF771:
	.string	"min_after_base"
.LASF354:
	.string	"BUILT_IN_SQRTL"
.LASF1227:
	.string	"ATTR_FORMAT_STRFMON_3_4"
.LASF840:
	.string	"sched"
.LASF611:
	.string	"itk_unsigned_int"
.LASF511:
	.string	"off_align"
.LASF1237:
	.string	"ATTR_scanf"
.LASF302:
	.string	"EXC_PTR_EXPR"
.LASF1486:
	.string	"lang_type_promotes_to"
.LASF453:
	.string	"chunk_limit"
.LASF1301:
	.string	"only_writes"
.LASF1135:
	.string	"function_end_prologue"
.LASF992:
	.string	"RID_AT_END"
.LASF820:
	.string	"global_rtl_index"
.LASF329:
	.string	"BUILT_IN_FFS"
.LASF866:
	.string	"splay_tree_delete_value_fn"
.LASF416:
	.string	"used_flag"
.LASF374:
	.string	"BUILT_IN_PRINTF"
.LASF168:
	.string	"CHAR_TYPE"
.LASF862:
	.string	"left"
.LASF486:
	.string	"attributes"
.LASF596:
	.string	"TI_V8HI_TYPE"
.LASF1017:
	.string	"CTI_UNSIGNED_PTRDIFF_TYPE"
.LASF230:
	.string	"FIX_FLOOR_EXPR"
.LASF1102:
	.string	"DK_FATAL"
.LASF90:
	.string	"OImode"
.LASF1271:
	.string	"fname_as_string"
.LASF420:
	.string	"private_flag"
.LASF381:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF1496:
	.string	"flag_instrument_function_entry_exit"
.LASF424:
	.string	"lang_flag_0"
.LASF425:
	.string	"lang_flag_1"
.LASF196:
	.string	"BIT_FIELD_REF"
.LASF427:
	.string	"lang_flag_3"
.LASF428:
	.string	"lang_flag_4"
.LASF429:
	.string	"lang_flag_5"
.LASF430:
	.string	"lang_flag_6"
.LASF539:
	.string	"lang_flag_7"
.LASF1111:
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
.LASF264:
	.string	"UNGE_EXPR"
.LASF549:
	.string	"pointer_alias_set"
.LASF757:
	.string	"VEC_SELECT"
.LASF1278:
	.string	"strings"
.LASF316:
	.string	"BUILT_IN_LLABS"
.LASF589:
	.string	"TI_UV4HI_TYPE"
.LASF190:
	.string	"VAR_DECL"
.LASF470:
	.string	"operands"
.LASF1112:
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
.LASF1122:
	.string	"cursor"
.LASF204:
	.string	"MODIFY_EXPR"
.LASF1021:
	.string	"CTI_WIDEST_UINT_LIT_TYPE"
.LASF463:
	.string	"tree_identifier"
.LASF153:
	.string	"MODE_VECTOR_FLOAT"
.LASF159:
	.string	"TREE_VEC"
.LASF728:
	.string	"POST_MODIFY"
.LASF1232:
	.string	"ATTR___builtin_printf_unlocked"
.LASF1052:
	.string	"stmts_are_full_exprs_p"
.LASF1299:
	.string	"warn_for_collisions_1"
.LASF1364:
	.string	"c_common_nodes_and_builtins"
.LASF357:
	.string	"BUILT_IN_SAVEREGS"
.LASF873:
	.string	"delete_value"
.LASF296:
	.string	"EXIT_EXPR"
.LASF1132:
	.string	"unaligned_op"
.LASF319:
	.string	"BUILT_IN_CONJF"
.LASF239:
	.string	"RSHIFT_EXPR"
.LASF320:
	.string	"BUILT_IN_CONJL"
.LASF654:
	.string	"DEFINE_PEEPHOLE"
.LASF1018:
	.string	"CTI_INTMAX_TYPE"
.LASF81:
	.string	"long long unsigned int"
.LASF814:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF778:
	.string	"offset"
.LASF1103:
	.string	"DK_ICE"
.LASF775:
	.string	"addr_diff_vec_flags"
.LASF65:
	.string	"_cur_column"
.LASF1389:
	.string	"expand_tree_builtin"
.LASF1085:
	.string	"LAST_C_TREE_CODE"
.LASF650:
	.string	"MATCH_OP_DUP"
.LASF664:
	.string	"SEQUENCE"
.LASF157:
	.string	"IDENTIFIER_NODE"
.LASF1404:
	.string	"high_value"
.LASF1296:
	.string	"merge_tlist"
.LASF854:
	.string	"EXPAND_SUM"
.LASF1145:
	.string	"issue_rate"
.LASF95:
	.string	"QFmode"
.LASF1073:
	.string	"BREAK_STMT"
.LASF1217:
	.string	"ATTR_FORMAT_SCANF_1_0"
.LASF544:
	.string	"section_name"
.LASF1360:
	.string	"c_alignof_expr"
.LASF1081:
	.string	"CASE_LABEL"
.LASF999:
	.string	"RID_AT_PROTOCOL"
.LASF1464:
	.string	"save_expr_cache"
.LASF261:
	.string	"UNLT_EXPR"
.LASF1091:
	.string	"format_decoder"
.LASF623:
	.string	"handler"
.LASF990:
	.string	"RID_ID"
.LASF180:
	.string	"LANG_TYPE"
.LASF691:
	.string	"RESX"
.LASF1209:
	.string	"ATTR_FORMAT_PRINTF_2_0"
.LASF1211:
	.string	"ATTR_FORMAT_PRINTF_2_3"
.LASF1212:
	.string	"ATTR_PRINTF_3_0"
.LASF679:
	.string	"PARALLEL"
.LASF1069:
	.string	"FOR_STMT"
.LASF1250:
	.string	"ATTR_dgettext"
.LASF1214:
	.string	"ATTR_PRINTF_3_4"
.LASF13:
	.string	"num_elem"
.LASF563:
	.string	"TI_INTEGER_ZERO"
.LASF1489:
	.string	"extra_warnings"
.LASF1467:
	.string	"c_tree_code_type"
.LASF58:
	.string	"_IO_backup_base"
.LASF729:
	.string	"UNORDERED"
.LASF142:
	.string	"MAX_MACHINE_MODE"
.LASF49:
	.string	"_IO_read_ptr"
.LASF1439:
	.string	"format_arg"
.LASF1348:
	.string	"intop"
.LASF1039:
	.string	"CTI_PRETTY_FUNCTION_NAME_DECL"
.LASF610:
	.string	"itk_int"
.LASF1246:
	.string	"ATTR_vscanf"
.LASF964:
	.string	"RID_FALSE"
.LASF358:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF419:
	.string	"public_flag"
.LASF696:
	.string	"CONST"
.LASF745:
	.string	"SQRT"
.LASF488:
	.string	"string_flag"
.LASF899:
	.string	"RID_SIGNED"
.LASF822:
	.string	"GR_CC0"
.LASF144:
	.string	"mode_class"
.LASF711:
	.string	"MULT"
.LASF175:
	.string	"SET_TYPE"
.LASF149:
	.string	"MODE_CC"
.LASF475:
	.string	"vars"
.LASF646:
	.string	"MATCH_SCRATCH"
.LASF1313:
	.string	"before_sp"
.LASF209:
	.string	"CALL_EXPR"
.LASF91:
	.string	"PQImode"
.LASF244:
	.string	"BIT_AND_EXPR"
.LASF1053:
	.string	"stmt_tree"
.LASF283:
	.string	"REALPART_EXPR"
.LASF911:
	.string	"RID_OUT"
.LASF123:
	.string	"V8HImode"
.LASF1322:
	.string	"unsigned_type"
.LASF1045:
	.string	"clk_c"
.LASF1493:
	.string	"flag_inline_functions"
.LASF555:
	.string	"TI_INTSI_TYPE"
.LASF325:
	.string	"BUILT_IN_CIMAGF"
.LASF517:
	.string	"nonlocal_flag"
.LASF64:
	.string	"_old_offset"
.LASF423:
	.string	"deprecated_flag"
.LASF1210:
	.string	"ATTR_PRINTF_2_3"
.LASF975:
	.string	"RID_CONSTCAST"
.LASF1307:
	.string	"tmp_before"
.LASF699:
	.string	"SUBREG"
.LASF493:
	.string	"restrict_flag"
.LASF891:
	.string	"RID_LONG"
.LASF1435:
	.string	"c_expand_builtin_printf"
.LASF126:
	.string	"V16QImode"
.LASF448:
	.string	"obstack"
.LASF313:
	.string	"BUILT_IN_FABS"
.LASF1004:
	.string	"RID_FIRST_MODIFIER"
.LASF23:
	.string	"decl"
.LASF1391:
	.string	"coerced_params"
.LASF284:
	.string	"IMAGPART_EXPR"
.LASF82:
	.string	"long long int"
.LASF590:
	.string	"TI_UV2SI_TYPE"
.LASF1216:
	.string	"ATTR_SCANF_1_0"
.LASF547:
	.string	"inlined_fns"
.LASF616:
	.string	"itk_none"
.LASF1494:
	.string	"flag_no_inline"
.LASF63:
	.string	"_flags2"
.LASF636:
	.string	"SBITSIZETYPE"
.LASF1515:
	.string	"warn_missing_format_attribute"
.LASF102:
	.string	"QCmode"
.LASF697:
	.string	"VALUE"
.LASF915:
	.string	"RID_ONEWAY"
.LASF677:
	.string	"NOTE"
.LASF861:
	.string	"splay_tree_node_s"
.LASF212:
	.string	"CLEANUP_POINT_EXPR"
.LASF1115:
	.string	"prefix"
.LASF832:
	.string	"GR_MAX"
.LASF1066:
	.string	"COMPOUND_STMT"
.LASF1282:
	.string	"nchars"
.LASF721:
	.string	"UMIN"
.LASF587:
	.string	"TI_UV8HI_TYPE"
.LASF182:
	.string	"REAL_CST"
.LASF388:
	.string	"BUILT_IN_ISLESS"
.LASF346:
	.string	"BUILT_IN_STRCHR"
.LASF1170:
	.string	"needs_warning"
.LASF1032:
	.string	"CTI_C_BOOL_FALSE"
.LASF402:
	.string	"BUILT_IN_VA_END"
.LASF1350:
	.string	"folded"
.LASF794:
	.string	"basic_block_def"
.LASF928:
	.string	"RID_FOR"
.LASF1310:
	.string	"tmp_list3"
.LASF1451:
	.string	"lang"
.LASF1270:
	.string	"stack"
.LASF498:
	.string	"reference_to"
.LASF1456:
	.string	"shadow_warning"
.LASF965:
	.string	"RID_NAMESPACE"
.LASF231:
	.string	"FIX_ROUND_EXPR"
.LASF1163:
	.string	"section_type_flags"
.LASF258:
	.string	"NE_EXPR"
.LASF1462:
	.string	"tlist_firstobj"
.LASF366:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1269:
	.string	"body"
.LASF353:
	.string	"BUILT_IN_COSF"
.LASF166:
	.string	"ENUMERAL_TYPE"
.LASF1059:
	.string	"c_tree_code"
.LASF1280:
	.string	"wide_flag"
.LASF801:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1257:
	.string	"c_expand_start_cond"
.LASF1327:
	.string	"binary_op_error"
.LASF109:
	.string	"CHImode"
.LASF322:
	.string	"BUILT_IN_CREALF"
.LASF202:
	.string	"CONSTRUCTOR"
.LASF473:
	.string	"abstract_flag"
.LASF881:
	.string	"CLK_STDC89"
.LASF323:
	.string	"BUILT_IN_CREALL"
.LASF531:
	.string	"non_addr_const_p"
.LASF1429:
	.string	"fcode"
.LASF1056:
	.string	"x_scope_stmt_stack"
.LASF443:
	.string	"elements"
.LASF606:
	.string	"itk_signed_char"
.LASF1516:
	.string	"warn_pointer_arith"
.LASF1500:
	.string	"ggc_pending_trees"
.LASF693:
	.string	"CONST_DOUBLE"
.LASF368:
	.string	"BUILT_IN_SETJMP"
.LASF865:
	.string	"splay_tree_delete_key_fn"
.LASF385:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF612:
	.string	"itk_long"
.LASF138:
	.string	"CCNOmode"
.LASF119:
	.string	"V4HImode"
.LASF1503:
	.string	"lang_statement_code_p"
.LASF1236:
	.string	"ATTR_sprintf"
.LASF731:
	.string	"UNEQ"
.LASF1047:
	.string	"clk_objective_c"
.LASF1385:
	.string	"simple_type_promotes_to"
.LASF160:
	.string	"BLOCK"
.LASF1352:
	.string	"subcode"
.LASF714:
	.string	"ASHIFT"
.LASF584:
	.string	"TI_VOID_LIST_NODE"
.LASF882:
	.string	"CLK_STDC94"
.LASF719:
	.string	"SMIN"
.LASF1449:
	.string	"__FUNCTION__"
.LASF883:
	.string	"CLK_STDC99"
.LASF706:
	.string	"IF_THEN_ELSE"
.LASF970:
	.string	"RID_TRUE"
.LASF520:
	.string	"bit_field_flag"
.LASF373:
	.string	"BUILT_IN_PUTS"
.LASF1002:
	.string	"RID_AT_IMPLEMENTATION"
.LASF1354:
	.string	"truthvalue_conversion"
.LASF1437:
	.string	"fn_putchar"
.LASF1394:
	.string	"arg0"
.LASF523:
	.string	"in_system_header_flag"
.LASF1213:
	.string	"ATTR_FORMAT_PRINTF_3_0"
.LASF1215:
	.string	"ATTR_FORMAT_PRINTF_3_4"
.LASF526:
	.string	"transparent_union"
.LASF641:
	.string	"UNKNOWN"
.LASF813:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF548:
	.string	"vindex"
.LASF458:
	.string	"extra_arg"
.LASF810:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1306:
	.string	"pno_sp"
.LASF184:
	.string	"VECTOR_CST"
.LASF34:
	.string	"unsigned int"
.LASF276:
	.string	"RTL_EXPR"
.LASF780:
	.string	"tree_node"
.LASF1088:
	.string	"stream"
.LASF724:
	.string	"PRE_INC"
.LASF265:
	.string	"UNEQ_EXPR"
.LASF338:
	.string	"BUILT_IN_STRNCPY"
.LASF868:
	.string	"splay_tree_deallocate_fn"
.LASF1120:
	.string	"need_newline_p"
.LASF1244:
	.string	"ATTR_snprintf"
.LASF770:
	.string	"max_after_vec"
.LASF162:
	.string	"INTEGER_TYPE"
.LASF732:
	.string	"UNGE"
.LASF1100:
	.string	"end_diagnostic"
.LASF1148:
	.string	"md_finish"
.LASF1019:
	.string	"CTI_UINTMAX_TYPE"
.LASF1199:
	.string	"ATTR_SCANF"
.LASF516:
	.string	"external_flag"
.LASF42:
	.string	"short int"
.LASF269:
	.string	"RANGE_EXPR"
.LASF733:
	.string	"UNGT"
.LASF1338:
	.string	"primop0"
.LASF1339:
	.string	"primop1"
.LASF348:
	.string	"BUILT_IN_SQRT"
.LASF198:
	.string	"BUFFER_REF"
.LASF1261:
	.string	"c_finish_else"
.LASF933:
	.string	"RID_CONTINUE"
.LASF446:
	.string	"prev"
.LASF66:
	.string	"_vtable_offset"
.LASF281:
	.string	"COMPLEX_EXPR"
.LASF394:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1289:
	.string	"constant_fits_type_p"
.LASF262:
	.string	"UNLE_EXPR"
.LASF953:
	.string	"RID_C99_FUNCTION_NAME"
.LASF1290:
	.string	"new_tlist"
.LASF83:
	.string	"VOIDmode"
.LASF787:
	.string	"rt_addr_diff_vec_flags"
.LASF583:
	.string	"TI_VA_LIST_TYPE"
.LASF618:
	.string	"min_length"
.LASF1497:
	.string	"flag_bounded_pointers"
.LASF830:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF749:
	.string	"LO_SUM"
.LASF1160:
	.string	"ms_bitfield_layout_p"
.LASF339:
	.string	"BUILT_IN_STRCMP"
.LASF1046:
	.string	"clk_cplusplus"
.LASF163:
	.string	"REAL_TYPE"
.LASF1288:
	.string	"convert_and_check"
.LASF568:
	.string	"TI_SIZE_ONE"
.LASF1455:
	.string	"c_common_insert_default_attributes"
.LASF968:
	.string	"RID_THIS"
.LASF1513:
	.string	"warn_format_security"
.LASF1525:
	.string	"warn_conversion"
.LASF300:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
