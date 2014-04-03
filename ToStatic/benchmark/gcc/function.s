	.file	"function.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 function.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	current_function_is_leaf,4,4
	.comm	current_function_nothrow,4,4
	.comm	current_function_sp_is_unchanging,4,4
	.comm	current_function_uses_only_leaf_regs,4,4
	.comm	virtuals_instantiated,4,4
	.local	profile_label_no
	.comm	profile_label_no,4,4
	.comm	init_machine_status,8,8
	.comm	free_machine_status,8,8
	.comm	mark_machine_status,8,8
	.comm	init_lang_status,8,8
	.comm	save_lang_status,8,8
	.comm	restore_lang_status,8,8
	.comm	mark_lang_status,8,8
	.comm	free_lang_status,8,8
	.comm	inline_function_decl,8,8
	.globl	cfun
	.bss
	.align 8
	.type	cfun, @object
	.size	cfun, 8
cfun:
	.zero	8
	.local	prologue
	.comm	prologue,8,8
	.local	epilogue
	.comm	epilogue,8,8
	.local	sibcall_epilogue
	.comm	sibcall_epilogue,8,8
	.local	outer_function_chain
	.comm	outer_function_chain,8,8
	.section	.rodata
.LC0:
	.string	"function.c"
	.text
	.globl	find_function_data
	.type	find_function_data, @function
find_function_data:
.LFB2:
	.file 1 "function.c"
	.loc 1 322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 325 0
	movq	outer_function_chain(%rip), %rax	# outer_function_chain, tmp62
	movq	%rax, -8(%rbp)	# tmp62, p
	jmp	.L2	#
.L5:
	.loc 1 326 0
	movq	-8(%rbp), %rax	# p, tmp63
	movq	48(%rax), %rax	# p_1->decl, D.21929
	cmpq	-24(%rbp), %rax	# decl, D.21929
	jne	.L3	#,
	.loc 1 327 0
	movq	-8(%rbp), %rax	# p, D.21930
	jmp	.L6	#
.L3:
	.loc 1 325 0
	movq	-8(%rbp), %rax	# p, tmp64
	movq	56(%rax), %rax	# p_1->outer, tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
.L2:
	.loc 1 325 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L5	#,
	.loc 1 329 0 is_stmt 1
	movl	$__FUNCTION__.13808, %edx	#,
	movl	$329, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L6:
	.loc 1 330 0 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	find_function_data, .-find_function_data
	.globl	push_function_context_to
	.type	push_function_context_to, @function
push_function_context_to:
.LFB3:
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# context, context
	.loc 1 344 0
	cmpq	$0, -24(%rbp)	#, context
	je	.L8	#,
	.loc 1 346 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.0
	cmpq	%rax, -24(%rbp)	# current_function_decl.0, context
	jne	.L9	#,
	.loc 1 347 0
	movq	cfun(%rip), %rax	# cfun, cfun.1
	movzbl	425(%rax), %edx	#, tmp67
	orl	$4, %edx	#, tmp68
	movb	%dl, 425(%rax)	# tmp68,
	jmp	.L8	#
.L9:
.LBB2:
	.loc 1 350 0
	movq	-24(%rbp), %rax	# context, tmp69
	movq	%rax, %rdi	# tmp69,
	call	find_function_data	#
	movq	%rax, -16(%rbp)	# tmp70, containing
	.loc 1 351 0
	movq	-16(%rbp), %rax	# containing, tmp71
	movzbl	425(%rax), %edx	#, tmp74
	orl	$4, %edx	#, tmp75
	movb	%dl, 425(%rax)	# tmp75,
.L8:
.LBE2:
	.loc 1 355 0
	movq	cfun(%rip), %rax	# cfun, cfun.2
	testq	%rax, %rax	# cfun.2
	jne	.L10	#,
	.loc 1 356 0
	call	init_dummy_function_start	#
.L10:
	.loc 1 357 0
	movq	cfun(%rip), %rax	# cfun, tmp76
	movq	%rax, -8(%rbp)	# tmp76, p
	.loc 1 359 0
	movq	outer_function_chain(%rip), %rdx	# outer_function_chain, outer_function_chain.3
	movq	-8(%rbp), %rax	# p, tmp77
	movq	%rdx, 56(%rax)	# outer_function_chain.3, p_6->outer
	.loc 1 360 0
	movq	-8(%rbp), %rax	# p, tmp78
	movq	%rax, outer_function_chain(%rip)	# tmp78, outer_function_chain
	.loc 1 361 0
	movq	-8(%rbp), %rax	# p, tmp79
	movq	$0, 344(%rax)	#, p_6->fixup_var_refs_queue
	.loc 1 363 0
	movq	save_lang_status(%rip), %rax	# save_lang_status, save_lang_status.4
	testq	%rax, %rax	# save_lang_status.4
	je	.L11	#,
	.loc 1 364 0
	movq	save_lang_status(%rip), %rax	# save_lang_status, save_lang_status.5
	movq	-8(%rbp), %rdx	# p, tmp80
	movq	%rdx, %rdi	# tmp80,
	call	*%rax	# save_lang_status.5
.L11:
	.loc 1 366 0
	movq	$0, cfun(%rip)	#, cfun
	.loc 1 367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	push_function_context_to, .-push_function_context_to
	.globl	push_function_context
	.type	push_function_context, @function
push_function_context:
.LFB4:
	.loc 1 371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 372 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.6
	movq	%rax, %rdi	# current_function_decl.6,
	call	push_function_context_to	#
	.loc 1 373 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	push_function_context, .-push_function_context
	.globl	pop_function_context_from
	.type	pop_function_context_from, @function
pop_function_context_from:
.LFB5:
	.loc 1 381 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# context, context
	.loc 1 382 0
	movq	outer_function_chain(%rip), %rax	# outer_function_chain, tmp78
	movq	%rax, -8(%rbp)	# tmp78, p
	.loc 1 385 0
	movq	-8(%rbp), %rax	# p, tmp79
	movq	%rax, cfun(%rip)	# tmp79, cfun
	.loc 1 386 0
	movq	-8(%rbp), %rax	# p, tmp80
	movq	56(%rax), %rax	# p_4->outer, outer_function_chain.7
	movq	%rax, outer_function_chain(%rip)	# outer_function_chain.7, outer_function_chain
	.loc 1 388 0
	movq	-8(%rbp), %rax	# p, tmp81
	movq	48(%rax), %rax	# p_4->decl, current_function_decl.8
	movq	%rax, current_function_decl(%rip)	# current_function_decl.8, current_function_decl
	.loc 1 389 0
	movq	$0, reg_renumber(%rip)	#, reg_renumber
	.loc 1 391 0
	movq	-8(%rbp), %rax	# p, tmp82
	movq	%rax, %rdi	# tmp82,
	call	restore_emit_status	#
	.loc 1 393 0
	movq	restore_lang_status(%rip), %rax	# restore_lang_status, restore_lang_status.9
	testq	%rax, %rax	# restore_lang_status.9
	je	.L14	#,
	.loc 1 394 0
	movq	restore_lang_status(%rip), %rax	# restore_lang_status, restore_lang_status.10
	movq	-8(%rbp), %rdx	# p, tmp83
	movq	%rdx, %rdi	# tmp83,
	call	*%rax	# restore_lang_status.10
.L14:
	.loc 1 400 0
	movq	-8(%rbp), %rax	# p, tmp84
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	testq	%rax, %rax	# D.21932
	je	.L15	#,
	.loc 1 402 0
	movq	-8(%rbp), %rax	# p, tmp85
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	movq	16(%rax), %rax	# _10->next, D.21932
	testq	%rax, %rax	# D.21932
	jne	.L16	#,
	.loc 1 406 0
	movq	-8(%rbp), %rax	# p, tmp86
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	.loc 1 403 0
	movq	(%rax), %rcx	# _12->modified, D.21933
	.loc 1 405 0
	movq	-8(%rbp), %rax	# p, tmp87
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	.loc 1 403 0
	movl	12(%rax), %edx	# _14->unsignedp, D.21934
	.loc 1 404 0
	movq	-8(%rbp), %rax	# p, tmp88
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	.loc 1 403 0
	movl	8(%rax), %esi	# _16->promoted_mode, D.21935
	movq	-8(%rbp), %rax	# p, tmp89
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, D.21932
	movq	(%rax), %rax	# _18->modified, D.21933
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# D.21933,
	call	fixup_var_refs	#
	jmp	.L15	#
.L16:
.LBB3:
	.loc 1 409 0
	movq	$0, -16(%rbp)	#, list
	.loc 1 411 0
	movq	-8(%rbp), %rax	# p, tmp90
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, tmp91
	movq	%rax, -24(%rbp)	# tmp91, queue
	jmp	.L17	#
.L18:
	.loc 1 412 0 discriminator 2
	movq	-24(%rbp), %rax	# queue, tmp92
	movq	(%rax), %rax	# queue_1->modified, D.21933
	movq	-16(%rbp), %rdx	# list, tmp93
	movq	%rdx, %rcx	# tmp93,
	movq	%rax, %rdx	# D.21933,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -16(%rbp)	# tmp94, list
	.loc 1 411 0 discriminator 2
	movq	-24(%rbp), %rax	# queue, tmp95
	movq	16(%rax), %rax	# queue_1->next, tmp96
	movq	%rax, -24(%rbp)	# tmp96, queue
.L17:
	.loc 1 411 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, queue
	jne	.L18	#,
	.loc 1 414 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp97
	movq	344(%rax), %rax	# p_4->fixup_var_refs_queue, tmp98
	movq	%rax, -24(%rbp)	# tmp98, queue
	jmp	.L19	#
.L20:
	.loc 1 415 0 discriminator 2
	movq	-24(%rbp), %rax	# queue, tmp99
	movl	12(%rax), %edx	# queue_2->unsignedp, D.21934
	movq	-24(%rbp), %rax	# queue, tmp100
	movl	8(%rax), %esi	# queue_2->promoted_mode, D.21935
	movq	-24(%rbp), %rax	# queue, tmp101
	movq	(%rax), %rax	# queue_2->modified, D.21933
	movq	-16(%rbp), %rcx	# list, tmp102
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# D.21933,
	call	fixup_var_refs	#
	.loc 1 414 0 discriminator 2
	movq	-24(%rbp), %rax	# queue, tmp103
	movq	16(%rax), %rax	# queue_2->next, tmp104
	movq	%rax, -24(%rbp)	# tmp104, queue
.L19:
	.loc 1 414 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, queue
	jne	.L20	#,
.L15:
.LBE3:
	.loc 1 420 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp105
	movq	$0, 344(%rax)	#, p_4->fixup_var_refs_queue
	.loc 1 423 0
	movl	$1, rtx_equal_function_value_matters(%rip)	#, rtx_equal_function_value_matters
	.loc 1 424 0
	movl	$0, virtuals_instantiated(%rip)	#, virtuals_instantiated
	.loc 1 425 0
	movl	$1, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 426 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	pop_function_context_from, .-pop_function_context_from
	.globl	pop_function_context
	.type	pop_function_context, @function
pop_function_context:
.LFB6:
	.loc 1 430 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 431 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.11
	movq	%rax, %rdi	# current_function_decl.11,
	call	pop_function_context_from	#
	.loc 1 432 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pop_function_context, .-pop_function_context
	.globl	free_after_parsing
	.type	free_after_parsing, @function
free_after_parsing:
.LFB7:
	.loc 1 441 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 447 0
	movq	free_lang_status(%rip), %rax	# free_lang_status, free_lang_status.12
	testq	%rax, %rax	# free_lang_status.12
	je	.L23	#,
	.loc 1 448 0
	movq	free_lang_status(%rip), %rax	# free_lang_status, free_lang_status.13
	movq	-8(%rbp), %rdx	# f, tmp61
	movq	%rdx, %rdi	# tmp61,
	call	*%rax	# free_lang_status.13
.L23:
	.loc 1 449 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	%rax, %rdi	# tmp62,
	call	free_stmt_status	#
	.loc 1 450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	free_after_parsing, .-free_after_parsing
	.globl	free_after_compilation
	.type	free_after_compilation, @function
free_after_compilation:
.LFB8:
	.loc 1 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 460 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free_eh_status	#
	.loc 1 461 0
	movq	-8(%rbp), %rax	# f, tmp64
	movq	%rax, %rdi	# tmp64,
	call	free_expr_status	#
	.loc 1 462 0
	movq	-8(%rbp), %rax	# f, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free_emit_status	#
	.loc 1 463 0
	movq	-8(%rbp), %rax	# f, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free_varasm_status	#
	.loc 1 465 0
	movq	free_machine_status(%rip), %rax	# free_machine_status, free_machine_status.14
	testq	%rax, %rax	# free_machine_status.14
	je	.L25	#,
	.loc 1 466 0
	movq	free_machine_status(%rip), %rax	# free_machine_status, free_machine_status.15
	movq	-8(%rbp), %rdx	# f, tmp67
	movq	%rdx, %rdi	# tmp67,
	call	*%rax	# free_machine_status.15
.L25:
	.loc 1 468 0
	movq	-8(%rbp), %rax	# f, tmp68
	movq	312(%rax), %rax	# f_1(D)->x_parm_reg_stack_loc, D.21936
	testq	%rax, %rax	# D.21936
	je	.L26	#,
	.loc 1 469 0
	movq	-8(%rbp), %rax	# f, tmp69
	movq	312(%rax), %rax	# f_1(D)->x_parm_reg_stack_loc, D.21936
	movq	%rax, %rdi	# D.21936,
	call	free	#
.L26:
	.loc 1 471 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	$0, 320(%rax)	#, f_1(D)->x_temp_slots
	.loc 1 472 0
	movq	-8(%rbp), %rax	# f, tmp71
	movq	$0, 80(%rax)	#, f_1(D)->arg_offset_rtx
	.loc 1 473 0
	movq	-8(%rbp), %rax	# f, tmp72
	movq	$0, 120(%rax)	#, f_1(D)->return_rtx
	.loc 1 474 0
	movq	-8(%rbp), %rax	# f, tmp73
	movq	$0, 128(%rax)	#, f_1(D)->internal_arg_pointer
	.loc 1 475 0
	movq	-8(%rbp), %rax	# f, tmp74
	movq	$0, 160(%rax)	#, f_1(D)->x_nonlocal_labels
	.loc 1 476 0
	movq	-8(%rbp), %rax	# f, tmp75
	movq	$0, 168(%rax)	#, f_1(D)->x_nonlocal_goto_handler_slots
	.loc 1 477 0
	movq	-8(%rbp), %rax	# f, tmp76
	movq	$0, 176(%rax)	#, f_1(D)->x_nonlocal_goto_handler_labels
	.loc 1 478 0
	movq	-8(%rbp), %rax	# f, tmp77
	movq	$0, 184(%rax)	#, f_1(D)->x_nonlocal_goto_stack_level
	.loc 1 479 0
	movq	-8(%rbp), %rax	# f, tmp78
	movq	$0, 192(%rax)	#, f_1(D)->x_cleanup_label
	.loc 1 480 0
	movq	-8(%rbp), %rax	# f, tmp79
	movq	$0, 200(%rax)	#, f_1(D)->x_return_label
	.loc 1 481 0
	movq	-8(%rbp), %rax	# f, tmp80
	movq	$0, 208(%rax)	#, f_1(D)->x_save_expr_regs
	.loc 1 482 0
	movq	-8(%rbp), %rax	# f, tmp81
	movq	$0, 216(%rax)	#, f_1(D)->x_stack_slot_list
	.loc 1 483 0
	movq	-8(%rbp), %rax	# f, tmp82
	movq	$0, 224(%rax)	#, f_1(D)->x_rtl_expr_chain
	.loc 1 484 0
	movq	-8(%rbp), %rax	# f, tmp83
	movq	$0, 232(%rax)	#, f_1(D)->x_tail_recursion_label
	.loc 1 485 0
	movq	-8(%rbp), %rax	# f, tmp84
	movq	$0, 240(%rax)	#, f_1(D)->x_tail_recursion_reentry
	.loc 1 486 0
	movq	-8(%rbp), %rax	# f, tmp85
	movq	$0, 248(%rax)	#, f_1(D)->x_arg_pointer_save_area
	.loc 1 487 0
	movq	-8(%rbp), %rax	# f, tmp86
	movq	$0, 256(%rax)	#, f_1(D)->x_clobber_return_insn
	.loc 1 488 0
	movq	-8(%rbp), %rax	# f, tmp87
	movq	$0, 272(%rax)	#, f_1(D)->x_context_display
	.loc 1 489 0
	movq	-8(%rbp), %rax	# f, tmp88
	movq	$0, 280(%rax)	#, f_1(D)->x_trampoline_list
	.loc 1 490 0
	movq	-8(%rbp), %rax	# f, tmp89
	movq	$0, 288(%rax)	#, f_1(D)->x_parm_birth_insn
	.loc 1 491 0
	movq	-8(%rbp), %rax	# f, tmp90
	movq	$0, 296(%rax)	#, f_1(D)->x_last_parm_insn
	.loc 1 492 0
	movq	-8(%rbp), %rax	# f, tmp91
	movq	$0, 312(%rax)	#, f_1(D)->x_parm_reg_stack_loc
	.loc 1 493 0
	movq	-8(%rbp), %rax	# f, tmp92
	movq	$0, 344(%rax)	#, f_1(D)->fixup_var_refs_queue
	.loc 1 494 0
	movq	-8(%rbp), %rax	# f, tmp93
	movq	$0, 360(%rax)	#, f_1(D)->original_arg_vector
	.loc 1 495 0
	movq	-8(%rbp), %rax	# f, tmp94
	movq	$0, 368(%rax)	#, f_1(D)->original_decl_initial
	.loc 1 496 0
	movq	-8(%rbp), %rax	# f, tmp95
	movq	$0, 376(%rax)	#, f_1(D)->inl_last_parm_insn
	.loc 1 497 0
	movq	-8(%rbp), %rax	# f, tmp96
	movq	$0, 416(%rax)	#, f_1(D)->epilogue_delay_list
	.loc 1 498 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_after_compilation, .-free_after_compilation
	.globl	get_func_frame_size
	.type	get_func_frame_size, @function
get_func_frame_size:
.LFB9:
	.loc 1 510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 512 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	264(%rax), %rax	# f_1(D)->x_frame_offset, D.21937
	negq	%rax	# D.21937
	.loc 1 516 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_func_frame_size, .-get_func_frame_size
	.globl	get_frame_size
	.type	get_frame_size, @function
get_frame_size:
.LFB10:
	.loc 1 523 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 524 0
	movq	cfun(%rip), %rax	# cfun, cfun.16
	movq	%rax, %rdi	# cfun.16,
	call	get_func_frame_size	#
	.loc 1 525 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_frame_size, .-get_frame_size
	.type	assign_stack_local_1, @function
assign_stack_local_1:
.LFB11:
	.loc 1 545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# mode, mode
	movq	%rsi, -64(%rbp)	# size, size
	movl	%edx, -56(%rbp)	# align, align
	movq	%rcx, -72(%rbp)	# function, function
	.loc 1 547 0
	movl	$0, -40(%rbp)	#, bigend_correction
	.loc 1 551 0
	cmpl	$0, -56(%rbp)	#, align
	jne	.L32	#,
.LBB4:
	.loc 1 555 0
	cmpl	$51, -52(%rbp)	#, mode
	jne	.L33	#,
	.loc 1 556 0
	movl	$128, -44(%rbp)	#, alignment
	jmp	.L34	#
.L33:
	.loc 1 558 0
	movl	-52(%rbp), %eax	# mode, tmp98
	movl	%eax, %edi	# tmp98,
	call	get_mode_alignment	#
	movl	%eax, -44(%rbp)	# D.21939, alignment
.L34:
	.loc 1 562 0
	movl	-52(%rbp), %eax	# mode, tmp99
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp99,
	call	type_for_mode	#
	movq	%rax, -16(%rbp)	# tmp100, type
	.loc 1 563 0
	cmpq	$0, -16(%rbp)	#, type
	je	.L35	#,
	.loc 1 564 0
	movl	-44(%rbp), %edx	# alignment, tmp101
	movq	-16(%rbp), %rax	# type, tmp102
	movl	%edx, %esi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	ix86_local_alignment	#
	movl	%eax, -44(%rbp)	# tmp103, alignment
.L35:
	.loc 1 566 0
	movl	-44(%rbp), %eax	# alignment, tmp105
	leal	7(%rax), %edx	#, tmp107
	testl	%eax, %eax	# tmp106
	cmovs	%edx, %eax	# tmp107,, tmp106
	sarl	$3, %eax	#, tmp108
	movl	%eax, -44(%rbp)	# tmp108, alignment
.LBE4:
	jmp	.L36	#
.L32:
	.loc 1 568 0
	cmpl	$-1, -56(%rbp)	#, align
	jne	.L37	#,
	.loc 1 570 0
	movl	$16, -44(%rbp)	#, alignment
	.loc 1 571 0
	movl	-44(%rbp), %eax	# alignment, tmp109
	movslq	%eax, %rdx	# tmp109, D.21940
	movq	-64(%rbp), %rax	# size, tmp110
	addq	%rdx, %rax	# D.21940, D.21940
	leaq	-1(%rax), %rdx	#, D.21940
	movl	-44(%rbp), %eax	# alignment, tmp111
	negl	%eax	# D.21941
	cltq
	andq	%rdx, %rax	# D.21940, tmp112
	movq	%rax, -64(%rbp)	# tmp112, size
	jmp	.L36	#
.L37:
	.loc 1 574 0
	movl	-56(%rbp), %eax	# align, tmp114
	leal	7(%rax), %edx	#, tmp116
	testl	%eax, %eax	# tmp115
	cmovs	%edx, %eax	# tmp116,, tmp115
	sarl	$3, %eax	#, tmp117
	movl	%eax, -44(%rbp)	# tmp117, alignment
.L36:
	.loc 1 577 0
	movq	-72(%rbp), %rax	# function, tmp118
	movq	264(%rax), %rax	# function_26(D)->x_frame_offset, D.21940
	subq	-64(%rbp), %rax	# size, D.21940
	movq	%rax, %rdx	# D.21940, D.21940
	movq	-72(%rbp), %rax	# function, tmp119
	movq	%rdx, 264(%rax)	# D.21940, function_26(D)->x_frame_offset
	.loc 1 581 0
	movl	-44(%rbp), %eax	# alignment, tmp120
	leal	0(,%rax,8), %edx	#, D.21941
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.17
	cmpl	%eax, %edx	# ix86_preferred_stack_boundary.17, D.21941
	jle	.L38	#,
	.loc 1 582 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.18
	leal	7(%rax), %edx	#, tmp122
	testl	%eax, %eax	# tmp121
	cmovs	%edx, %eax	# tmp122,, tmp121
	sarl	$3, %eax	#, tmp123
	movl	%eax, -44(%rbp)	# tmp123, alignment
.L38:
	.loc 1 584 0
	movq	-72(%rbp), %rax	# function, tmp124
	movl	400(%rax), %eax	# function_26(D)->stack_alignment_needed, D.21941
	movl	-44(%rbp), %edx	# alignment, tmp125
	sall	$3, %edx	#, D.21941
	cmpl	%edx, %eax	# D.21941, D.21941
	jge	.L39	#,
	.loc 1 585 0
	movl	-44(%rbp), %eax	# alignment, tmp126
	leal	0(,%rax,8), %edx	#, D.21941
	movq	-72(%rbp), %rax	# function, tmp127
	movl	%edx, 400(%rax)	# D.21941, function_26(D)->stack_alignment_needed
.L39:
	.loc 1 589 0
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.19
	leal	7(%rax), %edx	#, tmp129
	testl	%eax, %eax	# tmp128
	cmovs	%edx, %eax	# tmp129,, tmp128
	sarl	$3, %eax	#, tmp130
	movl	%eax, -36(%rbp)	# tmp130, frame_alignment
	.loc 1 590 0
	movl	$0, -32(%rbp)	#, frame_off
	.loc 1 591 0
	cmpl	$0, -32(%rbp)	#, frame_off
	je	.L40	#,
	.loc 1 591 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# frame_off, tmp131
	movl	-36(%rbp), %edx	# frame_alignment, tmp132
	subl	%eax, %edx	# tmp131, iftmp.20
	movl	%edx, %eax	# iftmp.20, iftmp.20
	jmp	.L41	#
.L40:
	.loc 1 591 0 discriminator 2
	movl	$0, %eax	#, iftmp.20
.L41:
	.loc 1 591 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.20, frame_phase
	.loc 1 599 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# function, tmp133
	movq	264(%rax), %rdx	# function_26(D)->x_frame_offset, D.21940
	movl	-28(%rbp), %eax	# frame_phase, tmp134
	cltq
	subq	%rax, %rdx	# D.21940, D.21940
	movl	-44(%rbp), %eax	# alignment, tmp135
	negl	%eax	# D.21941
	cltq
	andq	%rax, %rdx	# D.21940, D.21940
	movl	-28(%rbp), %eax	# frame_phase, tmp136
	cltq
	addq	%rax, %rdx	# D.21940, D.21940
	movq	-72(%rbp), %rax	# function, tmp137
	movq	%rdx, 264(%rax)	# D.21940, function_26(D)->x_frame_offset
	.loc 1 611 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.22
	cmpq	%rax, -72(%rbp)	# cfun.22, function
	jne	.L42	#,
	.loc 1 611 0 is_stmt 0 discriminator 1
	movl	virtuals_instantiated(%rip), %eax	# virtuals_instantiated, virtuals_instantiated.23
	testl	%eax, %eax	# virtuals_instantiated.23
	je	.L42	#,
	.loc 1 612 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.24
	movq	264(%rax), %rdx	# cfun.24_52->x_frame_offset, D.21940
	movl	-40(%rbp), %eax	# bigend_correction, tmp138
	cltq
	addq	%rax, %rdx	# D.21940, D.21940
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.21942
	movq	%rdx, %rsi	# D.21940,
	movq	%rax, %rdi	# D.21942,
	call	plus_constant_wide	#
	movq	%rax, -24(%rbp)	# tmp139, addr
	jmp	.L43	#
.L42:
	.loc 1 616 0
	movq	-72(%rbp), %rax	# function, tmp140
	movq	264(%rax), %rdx	# function_26(D)->x_frame_offset, D.21940
	movl	-40(%rbp), %eax	# bigend_correction, tmp141
	cltq
	addq	%rax, %rdx	# D.21940, D.21940
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.21942
	movq	%rdx, %rsi	# D.21940,
	movq	%rax, %rdi	# D.21942,
	call	plus_constant_wide	#
	movq	%rax, -24(%rbp)	# tmp142, addr
.L43:
	.loc 1 623 0
	movq	-24(%rbp), %rdx	# addr, tmp143
	movl	-52(%rbp), %eax	# mode, tmp144
	movq	%rdx, %rsi	# tmp143,
	movl	%eax, %edi	# tmp144,
	call	gen_rtx_MEM	#
	movq	%rax, -8(%rbp)	# tmp145, x
	.loc 1 626 0
	movq	-72(%rbp), %rax	# function, tmp146
	movq	216(%rax), %rdx	# function_26(D)->x_stack_slot_list, D.21942
	movq	-8(%rbp), %rax	# x, tmp147
	movq	%rdx, %rcx	# D.21942,
	movq	%rax, %rdx	# tmp147,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-72(%rbp), %rdx	# function, tmp148
	movq	%rax, 216(%rdx)	# D.21942, function_26(D)->x_stack_slot_list
	.loc 1 628 0
	movq	-8(%rbp), %rax	# x, D.21943
	.loc 1 629 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	assign_stack_local_1, .-assign_stack_local_1
	.globl	assign_stack_local
	.type	assign_stack_local, @function
assign_stack_local:
.LFB12:
	.loc 1 639 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# size, size
	movl	%edx, -8(%rbp)	# align, align
	.loc 1 640 0
	movq	cfun(%rip), %rcx	# cfun, cfun.25
	movl	-8(%rbp), %edx	# align, tmp62
	movq	-16(%rbp), %rsi	# size, tmp63
	movl	-4(%rbp), %eax	# mode, tmp64
	movl	%eax, %edi	# tmp64,
	call	assign_stack_local_1	#
	.loc 1 641 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	assign_stack_local, .-assign_stack_local
	.globl	assign_stack_temp_for_type
	.type	assign_stack_temp_for_type, @function
assign_stack_temp_for_type:
.LFB13:
	.loc 1 666 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# mode, mode
	movq	%rsi, -80(%rbp)	# size, size
	movl	%edx, -72(%rbp)	# keep, keep
	movq	%rcx, -88(%rbp)	# type, type
	.loc 1 668 0
	movq	$0, -48(%rbp)	#, best_p
	.loc 1 673 0
	cmpq	$-1, -80(%rbp)	#, size
	jne	.L48	#,
	.loc 1 674 0
	movl	$__FUNCTION__.13870, %edx	#,
	movl	$674, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L48:
	.loc 1 676 0
	cmpl	$51, -68(%rbp)	#, mode
	jne	.L49	#,
	.loc 1 677 0
	movl	$128, -64(%rbp)	#, align
	jmp	.L50	#
.L49:
	.loc 1 679 0
	movl	-68(%rbp), %eax	# mode, tmp158
	movl	%eax, %edi	# tmp158,
	call	get_mode_alignment	#
	movl	%eax, -64(%rbp)	# tmp159, align
.L50:
	.loc 1 681 0
	cmpq	$0, -88(%rbp)	#, type
	jne	.L51	#,
	.loc 1 682 0
	movl	-68(%rbp), %eax	# mode, tmp160
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp160,
	call	type_for_mode	#
	movq	%rax, -88(%rbp)	# tmp161, type
.L51:
	.loc 1 684 0
	cmpq	$0, -88(%rbp)	#, type
	je	.L52	#,
	.loc 1 685 0
	movl	-64(%rbp), %edx	# align, align.26
	movq	-88(%rbp), %rax	# type, tmp162
	movl	%edx, %esi	# align.26,
	movq	%rax, %rdi	# tmp162,
	call	ix86_local_alignment	#
	movl	%eax, -64(%rbp)	# D.21945, align
.L52:
	.loc 1 690 0
	movq	cfun(%rip), %rax	# cfun, cfun.27
	movq	320(%rax), %rax	# cfun.27_22->x_temp_slots, tmp163
	movq	%rax, -56(%rbp)	# tmp163, p
	jmp	.L53	#
.L58:
	.loc 1 691 0
	movq	-56(%rbp), %rax	# p, tmp164
	movl	24(%rax), %eax	# p_4->align, D.21946
	cmpl	-64(%rbp), %eax	# align, D.21946
	jb	.L54	#,
	.loc 1 691 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp165
	movq	32(%rax), %rax	# p_4->size, D.21947
	cmpq	-80(%rbp), %rax	# size, D.21947
	jl	.L54	#,
	movq	-56(%rbp), %rax	# p, tmp166
	movq	8(%rax), %rax	# p_4->slot, D.21948
	movzbl	2(%rax), %eax	# _26->mode, D.21949
	movzbl	%al, %eax	# D.21949, D.21946
	cmpl	-68(%rbp), %eax	# mode, D.21946
	jne	.L54	#,
	.loc 1 692 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp167
	movzbl	56(%rax), %eax	# p_4->in_use, D.21950
	testb	%al, %al	# D.21950
	jne	.L54	#,
	.loc 1 693 0
	movq	-56(%rbp), %rax	# p, tmp168
	movq	40(%rax), %rax	# p_4->type, D.21951
	movq	-88(%rbp), %rdx	# type, tmp169
	movq	%rdx, %rsi	# tmp169,
	movq	%rax, %rdi	# D.21951,
	call	objects_must_conflict_p	#
	testl	%eax, %eax	# D.21945
	je	.L54	#,
	.loc 1 694 0
	cmpq	$0, -48(%rbp)	#, best_p
	je	.L55	#,
	.loc 1 694 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# best_p, tmp170
	movq	32(%rax), %rdx	# best_p_8->size, D.21947
	movq	-56(%rbp), %rax	# p, tmp171
	movq	32(%rax), %rax	# p_4->size, D.21947
	cmpq	%rax, %rdx	# D.21947, D.21947
	jg	.L55	#,
	.loc 1 695 0 is_stmt 1
	movq	-48(%rbp), %rax	# best_p, tmp172
	movq	32(%rax), %rdx	# best_p_8->size, D.21947
	movq	-56(%rbp), %rax	# p, tmp173
	movq	32(%rax), %rax	# p_4->size, D.21947
	cmpq	%rax, %rdx	# D.21947, D.21947
	jne	.L54	#,
	.loc 1 695 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# best_p, tmp174
	movl	24(%rax), %edx	# best_p_8->align, D.21946
	movq	-56(%rbp), %rax	# p, tmp175
	movl	24(%rax), %eax	# p_4->align, D.21946
	cmpl	%eax, %edx	# D.21946, D.21946
	jbe	.L54	#,
.L55:
	.loc 1 697 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp176
	movl	24(%rax), %eax	# p_4->align, D.21946
	cmpl	-64(%rbp), %eax	# align, D.21946
	jne	.L56	#,
	.loc 1 697 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp177
	movq	32(%rax), %rax	# p_4->size, D.21947
	cmpq	-80(%rbp), %rax	# size, D.21947
	jne	.L56	#,
	.loc 1 699 0 is_stmt 1
	movq	$0, -48(%rbp)	#, best_p
	.loc 1 700 0
	jmp	.L57	#
.L56:
	.loc 1 702 0
	movq	-56(%rbp), %rax	# p, tmp178
	movq	%rax, -48(%rbp)	# tmp178, best_p
.L54:
	.loc 1 690 0
	movq	-56(%rbp), %rax	# p, tmp179
	movq	(%rax), %rax	# p_4->next, tmp180
	movq	%rax, -56(%rbp)	# tmp180, p
.L53:
	.loc 1 690 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, p
	jne	.L58	#,
.L57:
	.loc 1 706 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, best_p
	je	.L59	#,
	.loc 1 711 0
	movq	-48(%rbp), %rax	# best_p, tmp181
	movq	8(%rax), %rax	# best_p_9->slot, D.21948
	movzbl	2(%rax), %eax	# _43->mode, D.21949
	cmpb	$51, %al	#, D.21949
	jne	.L60	#,
.LBB5:
	.loc 1 713 0
	movq	-48(%rbp), %rax	# best_p, tmp182
	movl	24(%rax), %eax	# best_p_9->align, D.21946
	shrl	$3, %eax	#, D.21946
	movl	%eax, -60(%rbp)	# D.21946, alignment
	.loc 1 714 0
	movl	-60(%rbp), %eax	# alignment, tmp183
	movslq	%eax, %rdx	# tmp183, D.21947
	movq	-80(%rbp), %rax	# size, tmp184
	addq	%rdx, %rax	# D.21947, D.21947
	leaq	-1(%rax), %rdx	#, D.21947
	movl	-60(%rbp), %eax	# alignment, tmp185
	negl	%eax	# D.21945
	cltq
	andq	%rdx, %rax	# D.21947, tmp186
	movq	%rax, -40(%rbp)	# tmp186, rounded_size
	.loc 1 716 0
	movq	-48(%rbp), %rax	# best_p, tmp187
	movq	32(%rax), %rax	# best_p_9->size, D.21947
	subq	-40(%rbp), %rax	# rounded_size, D.21947
	movq	%rax, %rdx	# D.21947, D.21947
	movl	-60(%rbp), %eax	# alignment, tmp188
	cltq
	cmpq	%rax, %rdx	# D.21947, D.21947
	jl	.L60	#,
	.loc 1 718 0
	movl	$88, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -56(%rbp)	# tmp189, p
	.loc 1 719 0
	movq	-56(%rbp), %rax	# p, tmp190
	movb	$0, 57(%rax)	#, p_57->addr_taken
	movq	-56(%rbp), %rax	# p, tmp191
	movzbl	57(%rax), %edx	# p_57->addr_taken, D.21950
	movq	-56(%rbp), %rax	# p, tmp192
	movb	%dl, 56(%rax)	# D.21950, p_57->in_use
	.loc 1 720 0
	movq	-48(%rbp), %rax	# best_p, tmp193
	movq	32(%rax), %rax	# best_p_9->size, D.21947
	subq	-40(%rbp), %rax	# rounded_size, D.21947
	movq	%rax, %rdx	# D.21947, D.21947
	movq	-56(%rbp), %rax	# p, tmp194
	movq	%rdx, 32(%rax)	# D.21947, p_57->size
	.loc 1 721 0
	movq	-48(%rbp), %rax	# best_p, tmp195
	movq	72(%rax), %rdx	# best_p_9->base_offset, D.21947
	movq	-40(%rbp), %rax	# rounded_size, tmp196
	addq	%rax, %rdx	# tmp196, D.21947
	movq	-56(%rbp), %rax	# p, tmp197
	movq	%rdx, 72(%rax)	# D.21947, p_57->base_offset
	.loc 1 722 0
	movq	-48(%rbp), %rax	# best_p, tmp198
	movq	80(%rax), %rax	# best_p_9->full_size, D.21947
	subq	-40(%rbp), %rax	# rounded_size, D.21947
	movq	%rax, %rdx	# D.21947, D.21947
	movq	-56(%rbp), %rax	# p, tmp199
	movq	%rdx, 80(%rax)	# D.21947, p_57->full_size
	.loc 1 724 0
	movq	-48(%rbp), %rax	# best_p, tmp200
	movq	8(%rax), %rax	# best_p_9->slot, D.21948
	.loc 1 723 0
	movq	8(%rax), %rax	# _65->fld[0].rtx, D.21948
	movq	-40(%rbp), %rdx	# rounded_size, tmp201
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# D.21948,
	call	plus_constant_wide	#
	movq	%rax, %rsi	# D.21948,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	-56(%rbp), %rdx	# p, tmp202
	movq	%rax, 8(%rdx)	# D.21948, p_57->slot
	.loc 1 726 0
	movq	-48(%rbp), %rax	# best_p, tmp203
	movl	24(%rax), %edx	# best_p_9->align, D.21946
	movq	-56(%rbp), %rax	# p, tmp204
	movl	%edx, 24(%rax)	# D.21946, p_57->align
	.loc 1 727 0
	movq	-56(%rbp), %rax	# p, tmp205
	movq	$0, 16(%rax)	#, p_57->address
	.loc 1 728 0
	movq	-56(%rbp), %rax	# p, tmp206
	movq	$0, 48(%rax)	#, p_57->rtl_expr
	.loc 1 729 0
	movq	-48(%rbp), %rax	# best_p, tmp207
	movq	40(%rax), %rdx	# best_p_9->type, D.21951
	movq	-56(%rbp), %rax	# p, tmp208
	movq	%rdx, 40(%rax)	# D.21951, p_57->type
	.loc 1 730 0
	movq	cfun(%rip), %rax	# cfun, cfun.28
	movq	320(%rax), %rdx	# cfun.28_71->x_temp_slots, D.21952
	movq	-56(%rbp), %rax	# p, tmp209
	movq	%rdx, (%rax)	# D.21952, p_57->next
	.loc 1 731 0
	movq	cfun(%rip), %rax	# cfun, cfun.29
	movq	-56(%rbp), %rdx	# p, tmp210
	movq	%rdx, 320(%rax)	# tmp210, cfun.29_73->x_temp_slots
	.loc 1 733 0
	movq	cfun(%rip), %rbx	# cfun, cfun.30
	movq	cfun(%rip), %rax	# cfun, cfun.31
	movq	216(%rax), %rdx	# cfun.31_75->x_stack_slot_list, D.21948
	movq	-56(%rbp), %rax	# p, tmp211
	movq	8(%rax), %rax	# p_57->slot, D.21948
	movq	%rdx, %rcx	# D.21948,
	movq	%rax, %rdx	# D.21948,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, 216(%rbx)	# D.21948, cfun.30_74->x_stack_slot_list
	.loc 1 736 0
	movq	-48(%rbp), %rax	# best_p, tmp212
	movq	-40(%rbp), %rdx	# rounded_size, tmp213
	movq	%rdx, 32(%rax)	# tmp213, best_p_9->size
	.loc 1 737 0
	movq	-48(%rbp), %rax	# best_p, tmp214
	movq	-40(%rbp), %rdx	# rounded_size, tmp215
	movq	%rdx, 80(%rax)	# tmp215, best_p_9->full_size
.L60:
.LBE5:
	.loc 1 741 0
	movq	-48(%rbp), %rax	# best_p, tmp216
	movq	%rax, -56(%rbp)	# tmp216, p
.L59:
	.loc 1 745 0
	cmpq	$0, -56(%rbp)	#, p
	jne	.L61	#,
.LBB6:
	.loc 1 747 0
	movq	cfun(%rip), %rax	# cfun, cfun.32
	movq	264(%rax), %rax	# cfun.32_80->x_frame_offset, tmp217
	movq	%rax, -32(%rbp)	# tmp217, frame_offset_old
	.loc 1 749 0
	movl	$88, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -56(%rbp)	# tmp218, p
	.loc 1 758 0
	cmpl	$51, -68(%rbp)	#, mode
	jne	.L62	#,
	.loc 1 758 0 is_stmt 0 discriminator 1
	cmpl	$127, -64(%rbp)	#, align
	ja	.L62	#,
	.loc 1 759 0 is_stmt 1
	movl	$__FUNCTION__.13870, %edx	#,
	movl	$759, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L62:
	.loc 1 760 0
	movl	-64(%rbp), %edx	# align, align.33
	cmpl	$51, -68(%rbp)	#, mode
	jne	.L63	#,
	.loc 1 762 0
	movl	-64(%rbp), %eax	# align, tmp219
	shrl	$3, %eax	#, D.21946
	movl	%eax, %ecx	# D.21946, D.21947
	movq	-80(%rbp), %rax	# size, tmp220
	addq	%rcx, %rax	# D.21947, D.21947
	leaq	-1(%rax), %rcx	#, D.21947
	movl	-64(%rbp), %eax	# align, tmp221
	shrl	$3, %eax	#, D.21946
	negl	%eax	# D.21946
	movl	%eax, %eax	# D.21946, D.21947
	.loc 1 760 0
	andq	%rcx, %rax	# D.21947, iftmp.34
	jmp	.L64	#
.L63:
	.loc 1 760 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# size, iftmp.34
.L64:
	.loc 1 760 0 discriminator 2
	movl	-68(%rbp), %ecx	# mode, tmp222
	movq	%rax, %rsi	# iftmp.34,
	movl	%ecx, %edi	# tmp222,
	call	assign_stack_local	#
	movq	-56(%rbp), %rdx	# p, tmp223
	movq	%rax, 8(%rdx)	# D.21948, p_82->slot
	.loc 1 766 0 is_stmt 1 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp224
	movl	-64(%rbp), %edx	# align, tmp225
	movl	%edx, 24(%rax)	# tmp225, p_82->align
	.loc 1 776 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.35
	movq	264(%rax), %rax	# cfun.35_94->x_frame_offset, D.21947
	movq	-32(%rbp), %rdx	# frame_offset_old, tmp226
	subq	%rax, %rdx	# D.21947, D.21947
	movq	-56(%rbp), %rax	# p, tmp227
	movq	%rdx, 32(%rax)	# D.21947, p_82->size
	.loc 1 783 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.36
	movq	264(%rax), %rdx	# cfun.36_97->x_frame_offset, D.21947
	movq	-56(%rbp), %rax	# p, tmp228
	movq	%rdx, 72(%rax)	# D.21947, p_82->base_offset
	.loc 1 784 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.37
	movq	264(%rax), %rax	# cfun.37_99->x_frame_offset, D.21947
	movq	-32(%rbp), %rdx	# frame_offset_old, tmp229
	subq	%rax, %rdx	# D.21947, D.21947
	movq	-56(%rbp), %rax	# p, tmp230
	movq	%rdx, 80(%rax)	# D.21947, p_82->full_size
	.loc 1 789 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp231
	movq	$0, 16(%rax)	#, p_82->address
	.loc 1 790 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.38
	movq	320(%rax), %rdx	# cfun.38_102->x_temp_slots, D.21952
	movq	-56(%rbp), %rax	# p, tmp232
	movq	%rdx, (%rax)	# D.21952, p_82->next
	.loc 1 791 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.39
	movq	-56(%rbp), %rdx	# p, tmp233
	movq	%rdx, 320(%rax)	# tmp233, cfun.39_104->x_temp_slots
.L61:
.LBE6:
	.loc 1 794 0
	movq	-56(%rbp), %rax	# p, tmp234
	movb	$1, 56(%rax)	#, p_6->in_use
	.loc 1 795 0
	movq	-56(%rbp), %rax	# p, tmp235
	movb	$0, 57(%rax)	#, p_6->addr_taken
	.loc 1 796 0
	movq	cfun(%rip), %rax	# cfun, cfun.40
	movq	24(%rax), %rax	# cfun.40_105->emit, D.21953
	movq	24(%rax), %rdx	# _106->sequence_rtl_expr, D.21951
	movq	-56(%rbp), %rax	# p, tmp236
	movq	%rdx, 48(%rax)	# D.21951, p_6->rtl_expr
	.loc 1 797 0
	movq	-56(%rbp), %rax	# p, tmp237
	movq	-88(%rbp), %rdx	# type, tmp238
	movq	%rdx, 40(%rax)	# tmp238, p_6->type
	.loc 1 799 0
	cmpl	$2, -72(%rbp)	#, keep
	jne	.L65	#,
	.loc 1 801 0
	movq	cfun(%rip), %rax	# cfun, cfun.41
	movl	336(%rax), %edx	# cfun.41_109->x_target_temp_slot_level, D.21945
	movq	-56(%rbp), %rax	# p, tmp239
	movl	%edx, 60(%rax)	# D.21945, p_6->level
	.loc 1 802 0
	movq	-56(%rbp), %rax	# p, tmp240
	movl	$0, 64(%rax)	#, p_6->keep
	jmp	.L66	#
.L65:
	.loc 1 804 0
	cmpl	$3, -72(%rbp)	#, keep
	jne	.L67	#,
	.loc 1 806 0
	movq	cfun(%rip), %rax	# cfun, cfun.42
	movl	332(%rax), %edx	# cfun.42_111->x_var_temp_slot_level, D.21945
	movq	-56(%rbp), %rax	# p, tmp241
	movl	%edx, 60(%rax)	# D.21945, p_6->level
	.loc 1 807 0
	movq	-56(%rbp), %rax	# p, tmp242
	movl	$0, 64(%rax)	#, p_6->keep
	jmp	.L66	#
.L67:
	.loc 1 811 0
	movq	cfun(%rip), %rax	# cfun, cfun.43
	movl	328(%rax), %edx	# cfun.43_113->x_temp_slot_level, D.21945
	movq	-56(%rbp), %rax	# p, tmp243
	movl	%edx, 60(%rax)	# D.21945, p_6->level
	.loc 1 812 0
	movq	-56(%rbp), %rax	# p, tmp244
	movl	-72(%rbp), %edx	# keep, tmp245
	movl	%edx, 64(%rax)	# tmp245, p_6->keep
.L66:
	.loc 1 817 0
	movq	-56(%rbp), %rax	# p, tmp246
	movq	8(%rax), %rax	# p_6->slot, D.21948
	movq	8(%rax), %rdx	# _115->fld[0].rtx, D.21948
	movl	-68(%rbp), %eax	# mode, tmp247
	movq	%rdx, %rsi	# D.21948,
	movl	%eax, %edi	# tmp247,
	call	gen_rtx_MEM	#
	movq	%rax, -24(%rbp)	# tmp248, slot
	.loc 1 818 0
	movq	cfun(%rip), %rbx	# cfun, cfun.44
	movq	cfun(%rip), %rax	# cfun, cfun.45
	movq	216(%rax), %rdx	# cfun.45_119->x_stack_slot_list, D.21948
	movq	-24(%rbp), %rax	# slot, tmp249
	movq	%rdx, %rcx	# D.21948,
	movq	%rax, %rdx	# tmp249,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, 216(%rbx)	# D.21948, cfun.44_118->x_stack_slot_list
	.loc 1 823 0
	cmpq	$0, -88(%rbp)	#, type
	je	.L68	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# type, tmp250
	movq	%rax, %rdi	# tmp250,
	call	get_alias_set	#
	jmp	.L69	#
.L68:
	.loc 1 823 0 discriminator 2
	movl	$0, %eax	#, iftmp.46
.L69:
	.loc 1 823 0 discriminator 3
	movq	-24(%rbp), %rdx	# slot, tmp251
	movq	%rax, %rsi	# iftmp.46,
	movq	%rdx, %rdi	# tmp251,
	call	set_mem_alias_set	#
	.loc 1 824 0 is_stmt 1 discriminator 3
	movl	-64(%rbp), %edx	# align, tmp252
	movq	-24(%rbp), %rax	# slot, tmp253
	movl	%edx, %esi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	set_mem_align	#
	.loc 1 827 0 discriminator 3
	cmpq	$0, -88(%rbp)	#, type
	je	.L70	#,
	.loc 1 829 0
	movq	-88(%rbp), %rax	# type, tmp254
	movzbl	17(%rax), %eax	# *type_1, tmp257
	shrb	$4, %al	#, D.21954
	andl	$1, %eax	#, D.21954
	movq	-24(%rbp), %rdx	# slot, tmp258
	andl	$1, %eax	#, tmp260
	leal	0(,%rax,4), %ecx	#, tmp261
	movzbl	3(%rdx), %eax	# slot_117->unchanging, tmp262
	andl	$-5, %eax	#, tmp263
	orl	%ecx, %eax	# tmp261, tmp264
	movb	%al, 3(%rdx)	# tmp264, slot_117->unchanging
	.loc 1 830 0
	movq	-88(%rbp), %rax	# type, tmp265
	movzbl	17(%rax), %eax	# *type_1, tmp268
	shrb	$3, %al	#, D.21954
	andl	$1, %eax	#, D.21954
	movq	-24(%rbp), %rdx	# slot, tmp269
	andl	$1, %eax	#, tmp271
	leal	0(,%rax,8), %ecx	#, tmp272
	movzbl	3(%rdx), %eax	# slot_117->volatil, tmp273
	andl	$-9, %eax	#, tmp274
	orl	%ecx, %eax	# tmp272, tmp275
	movb	%al, 3(%rdx)	# tmp275, slot_117->volatil
	.loc 1 831 0
	movq	-88(%rbp), %rax	# type, tmp276
	movzbl	16(%rax), %eax	# type_1->common.code, D.21949
	cmpb	$18, %al	#, D.21949
	je	.L71	#,
	.loc 1 831 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# type, tmp277
	movzbl	16(%rax), %eax	# type_1->common.code, D.21949
	cmpb	$20, %al	#, D.21949
	je	.L71	#,
	.loc 1 831 0 discriminator 1
	movq	-88(%rbp), %rax	# type, tmp278
	movzbl	16(%rax), %eax	# type_1->common.code, D.21949
	cmpb	$21, %al	#, D.21949
	je	.L71	#,
	movq	-88(%rbp), %rax	# type, tmp279
	movzbl	16(%rax), %eax	# type_1->common.code, D.21949
	cmpb	$22, %al	#, D.21949
	je	.L71	#,
	movq	-88(%rbp), %rax	# type, tmp280
	movzbl	16(%rax), %eax	# type_1->common.code, D.21949
	cmpb	$19, %al	#, D.21949
	jne	.L72	#,
.L71:
	movq	-24(%rbp), %rax	# slot, tmp281
	movzbl	3(%rax), %edx	# slot_117->in_struct, tmp284
	orl	$16, %edx	#, tmp285
	movb	%dl, 3(%rax)	# tmp285, slot_117->in_struct
	movq	-24(%rbp), %rax	# slot, tmp286
	movzbl	3(%rax), %edx	# slot_117->frame_related, tmp289
	andl	$127, %edx	#, tmp290
	movb	%dl, 3(%rax)	# tmp290, slot_117->frame_related
	jmp	.L70	#
.L72:
	movq	-24(%rbp), %rax	# slot, tmp291
	movzbl	3(%rax), %edx	# slot_117->in_struct, tmp294
	andl	$-17, %edx	#, tmp295
	movb	%dl, 3(%rax)	# tmp295, slot_117->in_struct
	movq	-24(%rbp), %rax	# slot, tmp296
	movzbl	3(%rax), %edx	# slot_117->frame_related, tmp299
	orl	$-128, %edx	#, tmp300
	movb	%dl, 3(%rax)	# tmp300, slot_117->frame_related
.L70:
	.loc 1 834 0 is_stmt 1
	movq	-24(%rbp), %rax	# slot, D.21955
	.loc 1 835 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	assign_stack_temp_for_type, .-assign_stack_temp_for_type
	.globl	assign_stack_temp
	.type	assign_stack_temp, @function
assign_stack_temp:
.LFB14:
	.loc 1 845 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# mode, mode
	movq	%rsi, -16(%rbp)	# size, size
	movl	%edx, -8(%rbp)	# keep, keep
	.loc 1 846 0
	movl	-8(%rbp), %edx	# keep, tmp61
	movq	-16(%rbp), %rsi	# size, tmp62
	movl	-4(%rbp), %eax	# mode, tmp63
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp63,
	call	assign_stack_temp_for_type	#
	.loc 1 847 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	assign_stack_temp, .-assign_stack_temp
	.section	.rodata
	.align 8
.LC1:
	.string	"size of variable `%s' is too large"
	.text
	.globl	assign_temp
	.type	assign_temp, @function
assign_temp:
.LFB15:
	.loc 1 865 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# type_or_decl, type_or_decl
	movl	%esi, -60(%rbp)	# keep, keep
	movl	%edx, -64(%rbp)	# memory_required, memory_required
	movl	%ecx, -68(%rbp)	# dont_promote, dont_promote
	.loc 1 872 0
	movq	-56(%rbp), %rax	# type_or_decl, tmp74
	movzbl	16(%rax), %eax	# type_or_decl_8(D)->common.code, D.21958
	movzbl	%al, %eax	# D.21958, D.21959
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.21960
	cmpb	$100, %al	#, D.21960
	jne	.L77	#,
	.loc 1 873 0
	movq	-56(%rbp), %rax	# type_or_decl, tmp76
	movq	%rax, -24(%rbp)	# tmp76, decl
	movq	-24(%rbp), %rax	# decl, tmp77
	movq	8(%rax), %rax	# decl_12->common.type, tmp78
	movq	%rax, -32(%rbp)	# tmp78, type
	jmp	.L78	#
.L77:
	.loc 1 875 0
	movq	$0, -24(%rbp)	#, decl
	movq	-56(%rbp), %rax	# type_or_decl, tmp79
	movq	%rax, -32(%rbp)	# tmp79, type
.L78:
	.loc 1 877 0
	movq	-32(%rbp), %rax	# type, tmp80
	movzbl	61(%rax), %eax	# *type_1, tmp83
	shrb	%al	# D.21961
	movzbl	%al, %eax	# D.21961, tmp84
	movl	%eax, -36(%rbp)	# tmp84, mode
	.loc 1 879 0
	movq	-32(%rbp), %rax	# type, tmp85
	movzbl	17(%rax), %eax	# *type_1, tmp88
	shrb	$5, %al	#, D.21962
	andl	$1, %eax	#, D.21962
	movzbl	%al, %eax	# D.21962, unsignedp.47
	movl	%eax, -40(%rbp)	# unsignedp.47, unsignedp
	.loc 1 882 0
	cmpl	$51, -36(%rbp)	#, mode
	je	.L79	#,
	.loc 1 882 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, memory_required
	je	.L80	#,
.L79:
.LBB7:
	.loc 1 884 0 is_stmt 1
	movq	-32(%rbp), %rax	# type, tmp89
	movq	%rax, %rdi	# tmp89,
	call	int_size_in_bytes	#
	movq	%rax, -16(%rbp)	# tmp90, size
	.loc 1 889 0
	cmpq	$0, -16(%rbp)	#, size
	jne	.L81	#,
	.loc 1 890 0
	movq	$1, -16(%rbp)	#, size
.L81:
	.loc 1 896 0
	cmpq	$-1, -16(%rbp)	#, size
	jne	.L82	#,
	.loc 1 896 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# type, tmp91
	movzbl	16(%rax), %eax	# type_1->common.code, D.21958
	cmpb	$18, %al	#, D.21958
	jne	.L82	#,
	.loc 1 897 0 is_stmt 1
	movq	-32(%rbp), %rax	# type, tmp92
	movq	112(%rax), %rax	# type_1->type.maxval, D.21963
	testq	%rax, %rax	# D.21963
	je	.L82	#,
	.loc 1 898 0
	movq	-32(%rbp), %rax	# type, tmp93
	movq	112(%rax), %rax	# type_1->type.maxval, D.21963
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21963,
	call	host_integerp	#
	testl	%eax, %eax	# D.21959
	je	.L82	#,
	.loc 1 899 0
	movq	-32(%rbp), %rax	# type, tmp94
	movq	112(%rax), %rax	# type_1->type.maxval, D.21963
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21963,
	call	tree_low_cst	#
	movq	%rax, -16(%rbp)	# tmp95, size
.L82:
	.loc 1 905 0
	cmpq	$0, -24(%rbp)	#, decl
	je	.L83	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	cmpq	$-1, -16(%rbp)	#, size
	jne	.L83	#,
	.loc 1 906 0 is_stmt 1
	movq	-32(%rbp), %rax	# type, tmp96
	movq	40(%rax), %rax	# type_1->type.size_unit, D.21963
	movzbl	16(%rax), %eax	# _32->common.code, D.21958
	cmpb	$25, %al	#, D.21958
	jne	.L83	#,
	.loc 1 908 0
	movq	-24(%rbp), %rax	# decl, tmp97
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 909 0
	movq	$1, -16(%rbp)	#, size
.L83:
	.loc 1 912 0
	movq	-32(%rbp), %rcx	# type, tmp98
	movl	-60(%rbp), %edx	# keep, tmp99
	movq	-16(%rbp), %rsi	# size, tmp100
	movl	-36(%rbp), %eax	# mode, tmp101
	movl	%eax, %edi	# tmp101,
	call	assign_stack_temp_for_type	#
	movq	%rax, -8(%rbp)	# tmp102, tmp
	.loc 1 913 0
	movq	-8(%rbp), %rax	# tmp, D.21957
	jmp	.L86	#
.L80:
.LBE7:
	.loc 1 917 0
	cmpl	$0, -68(%rbp)	#, dont_promote
	jne	.L85	#,
	.loc 1 918 0
	leaq	-40(%rbp), %rdx	#, tmp103
	movl	-36(%rbp), %esi	# mode, tmp104
	movq	-32(%rbp), %rax	# type, tmp105
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp105,
	call	promote_mode	#
	movl	%eax, -36(%rbp)	# tmp106, mode
.L85:
	.loc 1 921 0
	movl	-36(%rbp), %eax	# mode, tmp107
	movl	%eax, %edi	# tmp107,
	call	gen_reg_rtx	#
.L86:
	.loc 1 922 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	assign_temp, .-assign_temp
	.globl	combine_temp_slots
	.type	combine_temp_slots, @function
combine_temp_slots:
.LFB16:
	.loc 1 932 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 939 0
	movl	flag_strict_aliasing(%rip), %eax	# flag_strict_aliasing, flag_strict_aliasing.48
	testl	%eax, %eax	# flag_strict_aliasing.48
	je	.L88	#,
	.loc 1 940 0
	jmp	.L87	#
.L88:
	.loc 1 944 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.49
	testl	%eax, %eax	# flag_expensive_optimizations.49
	jne	.L90	#,
	.loc 1 945 0
	movq	cfun(%rip), %rax	# cfun, cfun.50
	movq	320(%rax), %rax	# cfun.50_14->x_temp_slots, tmp96
	movq	%rax, -32(%rbp)	# tmp96, p
	movl	$0, -44(%rbp)	#, num_slots
	jmp	.L91	#
.L94:
	.loc 1 946 0
	cmpl	$100, -44(%rbp)	#, num_slots
	jg	.L92	#,
	.loc 1 946 0 is_stmt 0 discriminator 1
	cmpl	$10, -44(%rbp)	#, num_slots
	jle	.L93	#,
	movl	optimize(%rip), %eax	# optimize, optimize.51
	testl	%eax, %eax	# optimize.51
	jne	.L93	#,
.L92:
	.loc 1 947 0 is_stmt 1
	jmp	.L87	#
.L93:
	.loc 1 945 0
	movq	-32(%rbp), %rax	# p, tmp97
	movq	(%rax), %rax	# p_1->next, tmp98
	movq	%rax, -32(%rbp)	# tmp98, p
	addl	$1, -44(%rbp)	#, num_slots
.L91:
	.loc 1 945 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L94	#,
.L90:
	.loc 1 949 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.52
	movq	320(%rax), %rax	# cfun.52_20->x_temp_slots, tmp99
	movq	%rax, -32(%rbp)	# tmp99, p
	movq	$0, -16(%rbp)	#, prev_p
	jmp	.L95	#
.L109:
.LBB8:
	.loc 1 951 0
	movl	$0, -40(%rbp)	#, delete_p
	.loc 1 953 0
	movq	-32(%rbp), %rax	# p, tmp100
	movzbl	56(%rax), %eax	# p_2->in_use, D.21965
	testb	%al, %al	# D.21965
	jne	.L96	#,
	.loc 1 953 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp101
	movq	8(%rax), %rax	# p_2->slot, D.21966
	movzbl	2(%rax), %eax	# _25->mode, D.21967
	cmpb	$51, %al	#, D.21967
	jne	.L96	#,
	.loc 1 954 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp102
	movq	(%rax), %rax	# p_2->next, tmp103
	movq	%rax, -24(%rbp)	# tmp103, q
	movq	-32(%rbp), %rax	# p, tmp104
	movq	%rax, -8(%rbp)	# tmp104, prev_q
	jmp	.L97	#
.L102:
.LBB9:
	.loc 1 956 0
	movl	$0, -36(%rbp)	#, delete_q
	.loc 1 957 0
	movq	-24(%rbp), %rax	# q, tmp105
	movzbl	56(%rax), %eax	# q_3->in_use, D.21965
	testb	%al, %al	# D.21965
	jne	.L98	#,
	.loc 1 957 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# q, tmp106
	movq	8(%rax), %rax	# q_3->slot, D.21966
	movzbl	2(%rax), %eax	# _31->mode, D.21967
	cmpb	$51, %al	#, D.21967
	jne	.L98	#,
	.loc 1 959 0 is_stmt 1
	movq	-32(%rbp), %rax	# p, tmp107
	movq	72(%rax), %rdx	# p_2->base_offset, D.21968
	movq	-32(%rbp), %rax	# p, tmp108
	movq	80(%rax), %rax	# p_2->full_size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-24(%rbp), %rax	# q, tmp109
	movq	72(%rax), %rax	# q_3->base_offset, D.21968
	cmpq	%rax, %rdx	# D.21968, D.21968
	jne	.L99	#,
	.loc 1 962 0
	movq	-32(%rbp), %rax	# p, tmp110
	movq	32(%rax), %rdx	# p_2->size, D.21968
	movq	-24(%rbp), %rax	# q, tmp111
	movq	32(%rax), %rax	# q_3->size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-32(%rbp), %rax	# p, tmp112
	movq	%rdx, 32(%rax)	# D.21968, p_2->size
	.loc 1 963 0
	movq	-32(%rbp), %rax	# p, tmp113
	movq	80(%rax), %rdx	# p_2->full_size, D.21968
	movq	-24(%rbp), %rax	# q, tmp114
	movq	80(%rax), %rax	# q_3->full_size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-32(%rbp), %rax	# p, tmp115
	movq	%rdx, 80(%rax)	# D.21968, p_2->full_size
	.loc 1 964 0
	movl	$1, -36(%rbp)	#, delete_q
	jmp	.L98	#
.L99:
	.loc 1 966 0
	movq	-24(%rbp), %rax	# q, tmp116
	movq	72(%rax), %rdx	# q_3->base_offset, D.21968
	movq	-24(%rbp), %rax	# q, tmp117
	movq	80(%rax), %rax	# q_3->full_size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-32(%rbp), %rax	# p, tmp118
	movq	72(%rax), %rax	# p_2->base_offset, D.21968
	cmpq	%rax, %rdx	# D.21968, D.21968
	jne	.L98	#,
	.loc 1 969 0
	movq	-24(%rbp), %rax	# q, tmp119
	movq	32(%rax), %rdx	# q_3->size, D.21968
	movq	-32(%rbp), %rax	# p, tmp120
	movq	32(%rax), %rax	# p_2->size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-24(%rbp), %rax	# q, tmp121
	movq	%rdx, 32(%rax)	# D.21968, q_3->size
	.loc 1 970 0
	movq	-24(%rbp), %rax	# q, tmp122
	movq	80(%rax), %rdx	# q_3->full_size, D.21968
	movq	-32(%rbp), %rax	# p, tmp123
	movq	80(%rax), %rax	# p_2->full_size, D.21968
	addq	%rax, %rdx	# D.21968, D.21968
	movq	-24(%rbp), %rax	# q, tmp124
	movq	%rdx, 80(%rax)	# D.21968, q_3->full_size
	.loc 1 971 0
	movl	$1, -40(%rbp)	#, delete_p
	.loc 1 972 0
	jmp	.L96	#
.L98:
	.loc 1 976 0
	cmpl	$0, -36(%rbp)	#, delete_q
	je	.L100	#,
	.loc 1 977 0
	movq	-24(%rbp), %rax	# q, tmp125
	movq	(%rax), %rdx	# q_3->next, D.21969
	movq	-8(%rbp), %rax	# prev_q, tmp126
	movq	%rdx, (%rax)	# D.21969, prev_q_7->next
	jmp	.L101	#
.L100:
	.loc 1 979 0
	movq	-24(%rbp), %rax	# q, tmp127
	movq	%rax, -8(%rbp)	# tmp127, prev_q
.L101:
.LBE9:
	.loc 1 954 0
	movq	-8(%rbp), %rax	# prev_q, tmp128
	movq	(%rax), %rax	# prev_q_6->next, tmp129
	movq	%rax, -24(%rbp)	# tmp129, q
.L97:
	.loc 1 954 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, q
	jne	.L102	#,
.L96:
	.loc 1 982 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, delete_p
	je	.L103	#,
	.loc 1 984 0
	cmpq	$0, -16(%rbp)	#, prev_p
	je	.L104	#,
	.loc 1 985 0
	movq	-32(%rbp), %rax	# p, tmp130
	movq	(%rax), %rdx	# p_2->next, D.21969
	movq	-16(%rbp), %rax	# prev_p, tmp131
	movq	%rdx, (%rax)	# D.21969, prev_p_5->next
	jmp	.L106	#
.L104:
	.loc 1 987 0
	movq	cfun(%rip), %rax	# cfun, cfun.53
	movq	-32(%rbp), %rdx	# p, tmp132
	movq	(%rdx), %rdx	# p_2->next, D.21969
	movq	%rdx, 320(%rax)	# D.21969, cfun.53_59->x_temp_slots
	jmp	.L106	#
.L103:
	.loc 1 990 0
	movq	-32(%rbp), %rax	# p, tmp133
	movq	%rax, -16(%rbp)	# tmp133, prev_p
.L106:
.LBE8:
	.loc 1 949 0
	cmpq	$0, -16(%rbp)	#, prev_p
	je	.L107	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# prev_p, tmp134
	movq	(%rax), %rax	# prev_p_4->next, iftmp.54
	jmp	.L108	#
.L107:
	.loc 1 949 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.55
	movq	320(%rax), %rax	# cfun.55_63->x_temp_slots, iftmp.54
.L108:
	.loc 1 949 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.54, p
.L95:
	.loc 1 949 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, p
	jne	.L109	#,
.L87:
	.loc 1 992 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	combine_temp_slots, .-combine_temp_slots
	.type	find_temp_slot_from_address, @function
find_temp_slot_from_address:
.LFB17:
	.loc 1 999 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1003 0
	movq	cfun(%rip), %rax	# cfun, cfun.56
	movq	320(%rax), %rax	# cfun.56_4->x_temp_slots, tmp91
	movq	%rax, -16(%rbp)	# tmp91, p
	jmp	.L111	#
.L120:
	.loc 1 1005 0
	movq	-16(%rbp), %rax	# p, tmp92
	movzbl	56(%rax), %eax	# p_1->in_use, D.21971
	testb	%al, %al	# D.21971
	jne	.L112	#,
	.loc 1 1006 0
	jmp	.L113	#
.L112:
	.loc 1 1008 0
	movq	-16(%rbp), %rax	# p, tmp93
	movq	8(%rax), %rax	# p_1->slot, D.21972
	movq	8(%rax), %rax	# _7->fld[0].rtx, D.21972
	cmpq	-24(%rbp), %rax	# x, D.21972
	je	.L114	#,
	.loc 1 1009 0
	movq	-16(%rbp), %rax	# p, tmp94
	movq	16(%rax), %rax	# p_1->address, D.21972
	cmpq	-24(%rbp), %rax	# x, D.21972
	je	.L114	#,
	.loc 1 1010 0
	movq	-24(%rbp), %rax	# x, tmp95
	movzwl	(%rax), %eax	# x_9(D)->code, D.21973
	cmpw	$75, %ax	#, D.21973
	jne	.L115	#,
	.loc 1 1011 0
	movq	-24(%rbp), %rax	# x, tmp96
	movq	8(%rax), %rdx	# x_9(D)->fld[0].rtx, D.21972
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.21972
	cmpq	%rax, %rdx	# D.21972, D.21972
	jne	.L115	#,
	.loc 1 1012 0
	movq	-24(%rbp), %rax	# x, tmp97
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, D.21972
	movzwl	(%rax), %eax	# _14->code, D.21973
	cmpw	$54, %ax	#, D.21973
	jne	.L115	#,
	.loc 1 1013 0
	movq	-24(%rbp), %rax	# x, tmp98
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, D.21972
	movq	8(%rax), %rdx	# _16->fld[0].rtwint, D.21974
	movq	-16(%rbp), %rax	# p, tmp99
	movq	72(%rax), %rax	# p_1->base_offset, D.21974
	cmpq	%rax, %rdx	# D.21974, D.21974
	jl	.L115	#,
	.loc 1 1014 0
	movq	-24(%rbp), %rax	# x, tmp100
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, D.21972
	movq	8(%rax), %rdx	# _19->fld[0].rtwint, D.21974
	movq	-16(%rbp), %rax	# p, tmp101
	movq	72(%rax), %rcx	# p_1->base_offset, D.21974
	movq	-16(%rbp), %rax	# p, tmp102
	movq	80(%rax), %rax	# p_1->full_size, D.21974
	addq	%rcx, %rax	# D.21974, D.21974
	cmpq	%rax, %rdx	# D.21974, D.21974
	jge	.L115	#,
.L114:
	.loc 1 1015 0
	movq	-16(%rbp), %rax	# p, D.21970
	jmp	.L116	#
.L115:
	.loc 1 1017 0
	movq	-16(%rbp), %rax	# p, tmp103
	movq	16(%rax), %rax	# p_1->address, D.21972
	testq	%rax, %rax	# D.21972
	je	.L113	#,
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp104
	movq	16(%rax), %rax	# p_1->address, D.21972
	movzwl	(%rax), %eax	# _25->code, D.21973
	cmpw	$3, %ax	#, D.21973
	jne	.L113	#,
	.loc 1 1018 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp105
	movq	16(%rax), %rax	# p_1->address, tmp106
	movq	%rax, -8(%rbp)	# tmp106, next
	jmp	.L117	#
.L119:
	.loc 1 1019 0
	movq	-8(%rbp), %rax	# next, tmp107
	movq	8(%rax), %rax	# next_2->fld[0].rtx, D.21972
	cmpq	-24(%rbp), %rax	# x, D.21972
	jne	.L118	#,
	.loc 1 1020 0
	movq	-16(%rbp), %rax	# p, D.21970
	jmp	.L116	#
.L118:
	.loc 1 1018 0
	movq	-8(%rbp), %rax	# next, tmp108
	movq	16(%rax), %rax	# next_2->fld[1].rtx, tmp109
	movq	%rax, -8(%rbp)	# tmp109, next
.L117:
	.loc 1 1018 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, next
	jne	.L119	#,
.L113:
	.loc 1 1003 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp110
	movq	(%rax), %rax	# p_1->next, tmp111
	movq	%rax, -16(%rbp)	# tmp111, p
.L111:
	.loc 1 1003 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L120	#,
	.loc 1 1025 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp112
	movzwl	(%rax), %eax	# x_9(D)->code, D.21973
	cmpw	$75, %ax	#, D.21973
	jne	.L121	#,
	.loc 1 1025 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp113
	movq	8(%rax), %rax	# x_9(D)->fld[0].rtx, D.21972
	movzwl	(%rax), %eax	# _34->code, D.21973
	cmpw	$61, %ax	#, D.21973
	jne	.L121	#,
	.loc 1 1026 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp114
	movq	8(%rax), %rax	# x_9(D)->fld[0].rtx, D.21972
	movq	%rax, %rdi	# D.21972,
	call	find_temp_slot_from_address	#
	movq	%rax, -16(%rbp)	# tmp115, p
	cmpq	$0, -16(%rbp)	#, p
	je	.L121	#,
	.loc 1 1027 0
	movq	-16(%rbp), %rax	# p, D.21970
	jmp	.L116	#
.L121:
	.loc 1 1028 0
	movq	-24(%rbp), %rax	# x, tmp116
	movzwl	(%rax), %eax	# x_9(D)->code, D.21973
	cmpw	$75, %ax	#, D.21973
	jne	.L122	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp117
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, D.21972
	movzwl	(%rax), %eax	# _40->code, D.21973
	cmpw	$61, %ax	#, D.21973
	jne	.L122	#,
	.loc 1 1029 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp118
	movq	16(%rax), %rax	# x_9(D)->fld[1].rtx, D.21972
	movq	%rax, %rdi	# D.21972,
	call	find_temp_slot_from_address	#
	movq	%rax, -16(%rbp)	# tmp119, p
	cmpq	$0, -16(%rbp)	#, p
	je	.L122	#,
	.loc 1 1030 0
	movq	-16(%rbp), %rax	# p, D.21970
	jmp	.L116	#
.L122:
	.loc 1 1032 0
	movl	$0, %eax	#, D.21970
.L116:
	.loc 1 1033 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	find_temp_slot_from_address, .-find_temp_slot_from_address
	.globl	update_temp_slot_address
	.type	update_temp_slot_address, @function
update_temp_slot_address:
.LFB18:
	.loc 1 1041 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# old, old
	movq	%rsi, -32(%rbp)	# new, new
	.loc 1 1044 0
	movq	-32(%rbp), %rdx	# new, tmp92
	movq	-24(%rbp), %rax	# old, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21975
	je	.L124	#,
	.loc 1 1045 0
	jmp	.L123	#
.L124:
	.loc 1 1047 0
	movq	-24(%rbp), %rax	# old, tmp94
	movq	%rax, %rdi	# tmp94,
	call	find_temp_slot_from_address	#
	movq	%rax, -8(%rbp)	# tmp95, p
	.loc 1 1054 0
	cmpq	$0, -8(%rbp)	#, p
	jne	.L126	#,
	.loc 1 1056 0
	movq	-24(%rbp), %rax	# old, tmp96
	movzwl	(%rax), %eax	# old_1(D)->code, D.21976
	cmpw	$75, %ax	#, D.21976
	je	.L127	#,
	.loc 1 1057 0
	jmp	.L123	#
.L127:
	.loc 1 1059 0
	movq	-32(%rbp), %rax	# new, tmp97
	movzwl	(%rax), %eax	# new_2(D)->code, D.21976
	cmpw	$61, %ax	#, D.21976
	jne	.L128	#,
	.loc 1 1061 0
	movq	-24(%rbp), %rax	# old, tmp98
	movq	8(%rax), %rax	# old_1(D)->fld[0].rtx, D.21977
	movq	-32(%rbp), %rdx	# new, tmp99
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	.loc 1 1062 0
	movq	-24(%rbp), %rax	# old, tmp100
	movq	16(%rax), %rax	# old_1(D)->fld[1].rtx, D.21977
	movq	-32(%rbp), %rdx	# new, tmp101
	movq	%rdx, %rsi	# tmp101,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	.loc 1 1063 0
	jmp	.L123	#
.L128:
	.loc 1 1065 0
	movq	-32(%rbp), %rax	# new, tmp102
	movzwl	(%rax), %eax	# new_2(D)->code, D.21976
	cmpw	$75, %ax	#, D.21976
	je	.L129	#,
	.loc 1 1066 0
	jmp	.L123	#
.L129:
	.loc 1 1068 0
	movq	-32(%rbp), %rax	# new, tmp103
	movq	8(%rax), %rdx	# new_2(D)->fld[0].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp104
	movq	8(%rax), %rax	# old_1(D)->fld[0].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21975
	je	.L130	#,
	.loc 1 1069 0
	movq	-32(%rbp), %rax	# new, tmp105
	movq	16(%rax), %rdx	# new_2(D)->fld[1].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp106
	movq	16(%rax), %rax	# old_1(D)->fld[1].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	jmp	.L131	#
.L130:
	.loc 1 1070 0
	movq	-32(%rbp), %rax	# new, tmp107
	movq	8(%rax), %rdx	# new_2(D)->fld[0].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp108
	movq	16(%rax), %rax	# old_1(D)->fld[1].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21975
	je	.L132	#,
	.loc 1 1071 0
	movq	-32(%rbp), %rax	# new, tmp109
	movq	16(%rax), %rdx	# new_2(D)->fld[1].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp110
	movq	8(%rax), %rax	# old_1(D)->fld[0].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	jmp	.L131	#
.L132:
	.loc 1 1072 0
	movq	-32(%rbp), %rax	# new, tmp111
	movq	16(%rax), %rdx	# new_2(D)->fld[1].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp112
	movq	8(%rax), %rax	# old_1(D)->fld[0].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21975
	je	.L133	#,
	.loc 1 1073 0
	movq	-32(%rbp), %rax	# new, tmp113
	movq	8(%rax), %rdx	# new_2(D)->fld[0].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp114
	movq	16(%rax), %rax	# old_1(D)->fld[1].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	jmp	.L131	#
.L133:
	.loc 1 1074 0
	movq	-32(%rbp), %rax	# new, tmp115
	movq	16(%rax), %rdx	# new_2(D)->fld[1].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp116
	movq	16(%rax), %rax	# old_1(D)->fld[1].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21975
	je	.L131	#,
	.loc 1 1075 0
	movq	-32(%rbp), %rax	# new, tmp117
	movq	8(%rax), %rdx	# new_2(D)->fld[0].rtx, D.21977
	movq	-24(%rbp), %rax	# old, tmp118
	movq	8(%rax), %rax	# old_1(D)->fld[0].rtx, D.21977
	movq	%rdx, %rsi	# D.21977,
	movq	%rax, %rdi	# D.21977,
	call	update_temp_slot_address	#
	.loc 1 1077 0
	jmp	.L123	#
.L131:
	jmp	.L123	#
.L126:
	.loc 1 1081 0
	movq	-8(%rbp), %rax	# p, tmp119
	movq	16(%rax), %rax	# p_4->address, D.21977
	testq	%rax, %rax	# D.21977
	jne	.L134	#,
	.loc 1 1082 0
	movq	-8(%rbp), %rax	# p, tmp120
	movq	-32(%rbp), %rdx	# new, tmp121
	movq	%rdx, 16(%rax)	# tmp121, p_4->address
	jmp	.L123	#
.L134:
	.loc 1 1085 0
	movq	-8(%rbp), %rax	# p, tmp122
	movq	16(%rax), %rax	# p_4->address, D.21977
	movzwl	(%rax), %eax	# _31->code, D.21976
	cmpw	$3, %ax	#, D.21976
	je	.L135	#,
	.loc 1 1086 0
	movq	-8(%rbp), %rax	# p, tmp123
	movq	16(%rax), %rax	# p_4->address, D.21977
	movl	$0, %ecx	#,
	movq	%rax, %rdx	# D.21977,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-8(%rbp), %rdx	# p, tmp124
	movq	%rax, 16(%rdx)	# D.21977, p_4->address
.L135:
	.loc 1 1088 0
	movq	-8(%rbp), %rax	# p, tmp125
	movq	16(%rax), %rdx	# p_4->address, D.21977
	movq	-32(%rbp), %rax	# new, tmp126
	movq	%rdx, %rcx	# D.21977,
	movq	%rax, %rdx	# tmp126,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-8(%rbp), %rdx	# p, tmp127
	movq	%rax, 16(%rdx)	# D.21977, p_4->address
.L123:
	.loc 1 1090 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	update_temp_slot_address, .-update_temp_slot_address
	.globl	mark_temp_addr_taken
	.type	mark_temp_addr_taken, @function
mark_temp_addr_taken:
.LFB19:
	.loc 1 1098 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1101 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L137	#,
	.loc 1 1102 0
	jmp	.L136	#
.L137:
	.loc 1 1106 0
	movq	-24(%rbp), %rax	# x, tmp77
	movzwl	(%rax), %eax	# x_1(D)->code, D.21978
	cmpw	$66, %ax	#, D.21978
	jne	.L139	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp78
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _3->code, D.21978
	cmpw	$67, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp79
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _5->code, D.21978
	cmpw	$68, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp80
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _7->code, D.21978
	cmpw	$54, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp81
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _9->code, D.21978
	cmpw	$55, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _11->code, D.21978
	cmpw	$58, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp83
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _13->code, D.21978
	cmpw	$134, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp84
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _15->code, D.21978
	cmpw	$56, %ax	#, D.21978
	je	.L139	#,
	movq	-24(%rbp), %rax	# x, tmp85
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movzwl	(%rax), %eax	# _17->code, D.21978
	cmpw	$140, %ax	#, D.21978
	jne	.L140	#,
.L139:
	.loc 1 1107 0 is_stmt 1
	jmp	.L136	#
.L140:
	.loc 1 1109 0
	movq	-24(%rbp), %rax	# x, tmp86
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21979
	movq	%rax, %rdi	# D.21979,
	call	find_temp_slot_from_address	#
	movq	%rax, -8(%rbp)	# tmp87, p
	.loc 1 1110 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L136	#,
	.loc 1 1111 0
	movq	-8(%rbp), %rax	# p, tmp88
	movb	$1, 57(%rax)	#, p_20->addr_taken
.L136:
	.loc 1 1112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mark_temp_addr_taken, .-mark_temp_addr_taken
	.globl	preserve_temp_slots
	.type	preserve_temp_slots, @function
preserve_temp_slots:
.LFB20:
	.loc 1 1126 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1127 0
	movq	$0, -16(%rbp)	#, p
	.loc 1 1131 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L142	#,
	.loc 1 1133 0
	movq	cfun(%rip), %rax	# cfun, cfun.57
	movq	320(%rax), %rax	# cfun.57_9->x_temp_slots, tmp115
	movq	%rax, -16(%rbp)	# tmp115, p
	jmp	.L143	#
.L145:
	.loc 1 1134 0
	movq	-16(%rbp), %rax	# p, tmp116
	movzbl	56(%rax), %eax	# p_1->in_use, D.21980
	testb	%al, %al	# D.21980
	je	.L144	#,
	.loc 1 1134 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp117
	movl	60(%rax), %edx	# p_1->level, D.21981
	movq	cfun(%rip), %rax	# cfun, cfun.58
	movl	328(%rax), %eax	# cfun.58_13->x_temp_slot_level, D.21981
	cmpl	%eax, %edx	# D.21981, D.21981
	jne	.L144	#,
	movq	-16(%rbp), %rax	# p, tmp118
	movzbl	57(%rax), %eax	# p_1->addr_taken, D.21980
	testb	%al, %al	# D.21980
	je	.L144	#,
	.loc 1 1135 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp119
	movl	60(%rax), %eax	# p_1->level, D.21981
	leal	-1(%rax), %edx	#, D.21981
	movq	-16(%rbp), %rax	# p, tmp120
	movl	%edx, 60(%rax)	# D.21981, p_1->level
.L144:
	.loc 1 1133 0
	movq	-16(%rbp), %rax	# p, tmp121
	movq	(%rax), %rax	# p_1->next, tmp122
	movq	%rax, -16(%rbp)	# tmp122, p
.L143:
	.loc 1 1133 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L145	#,
	.loc 1 1137 0 is_stmt 1
	jmp	.L141	#
.L142:
	.loc 1 1144 0
	movq	-24(%rbp), %rax	# x, tmp123
	movzwl	(%rax), %eax	# x_8(D)->code, D.21982
	cmpw	$61, %ax	#, D.21982
	jne	.L147	#,
	.loc 1 1144 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp124
	movzbl	3(%rax), %eax	# *x_8(D), D.21983
	andl	$-128, %eax	#, D.21983
	testb	%al, %al	# D.21983
	je	.L147	#,
	.loc 1 1145 0 is_stmt 1
	movq	-24(%rbp), %rax	# x, tmp125
	movq	%rax, %rdi	# tmp125,
	call	find_temp_slot_from_address	#
	movq	%rax, -16(%rbp)	# tmp126, p
.L147:
	.loc 1 1150 0
	cmpq	$0, -16(%rbp)	#, p
	jne	.L148	#,
	.loc 1 1150 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp127
	movzwl	(%rax), %eax	# x_8(D)->code, D.21982
	cmpw	$66, %ax	#, D.21982
	jne	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp128
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _24->code, D.21982
	cmpw	$67, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp129
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _26->code, D.21982
	cmpw	$68, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp130
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _28->code, D.21982
	cmpw	$54, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp131
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _30->code, D.21982
	cmpw	$55, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp132
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _32->code, D.21982
	cmpw	$58, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp133
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _34->code, D.21982
	cmpw	$134, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp134
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _36->code, D.21982
	cmpw	$56, %ax	#, D.21982
	je	.L149	#,
	movq	-24(%rbp), %rax	# x, tmp135
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movzwl	(%rax), %eax	# _38->code, D.21982
	cmpw	$140, %ax	#, D.21982
	jne	.L148	#,
.L149:
	.loc 1 1152 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.59
	movq	320(%rax), %rax	# cfun.59_40->x_temp_slots, tmp136
	movq	%rax, -16(%rbp)	# tmp136, p
	jmp	.L150	#
.L152:
	.loc 1 1153 0
	movq	-16(%rbp), %rax	# p, tmp137
	movzbl	56(%rax), %eax	# p_3->in_use, D.21980
	testb	%al, %al	# D.21980
	je	.L151	#,
	.loc 1 1153 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp138
	movl	60(%rax), %edx	# p_3->level, D.21981
	movq	cfun(%rip), %rax	# cfun, cfun.60
	movl	328(%rax), %eax	# cfun.60_44->x_temp_slot_level, D.21981
	cmpl	%eax, %edx	# D.21981, D.21981
	jne	.L151	#,
	movq	-16(%rbp), %rax	# p, tmp139
	movzbl	57(%rax), %eax	# p_3->addr_taken, D.21980
	testb	%al, %al	# D.21980
	je	.L151	#,
	.loc 1 1154 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp140
	movl	60(%rax), %eax	# p_3->level, D.21981
	leal	-1(%rax), %edx	#, D.21981
	movq	-16(%rbp), %rax	# p, tmp141
	movl	%edx, 60(%rax)	# D.21981, p_3->level
.L151:
	.loc 1 1152 0
	movq	-16(%rbp), %rax	# p, tmp142
	movq	(%rax), %rax	# p_3->next, tmp143
	movq	%rax, -16(%rbp)	# tmp143, p
.L150:
	.loc 1 1152 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L152	#,
	.loc 1 1156 0 is_stmt 1
	jmp	.L141	#
.L148:
	.loc 1 1160 0
	cmpq	$0, -16(%rbp)	#, p
	jne	.L153	#,
	.loc 1 1161 0
	movq	-24(%rbp), %rax	# x, tmp144
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.21984
	movq	%rax, %rdi	# D.21984,
	call	find_temp_slot_from_address	#
	movq	%rax, -16(%rbp)	# tmp145, p
.L153:
	.loc 1 1163 0
	cmpq	$0, -16(%rbp)	#, p
	je	.L154	#,
.LBB10:
	.loc 1 1169 0
	movq	-16(%rbp), %rax	# p, tmp146
	movl	60(%rax), %edx	# p_4->level, D.21981
	movq	cfun(%rip), %rax	# cfun, cfun.61
	movl	328(%rax), %eax	# cfun.61_53->x_temp_slot_level, D.21981
	cmpl	%eax, %edx	# D.21981, D.21981
	jne	.L155	#,
	.loc 1 1171 0
	movq	cfun(%rip), %rax	# cfun, cfun.62
	movq	320(%rax), %rax	# cfun.62_55->x_temp_slots, tmp147
	movq	%rax, -8(%rbp)	# tmp147, q
	jmp	.L156	#
.L158:
	.loc 1 1172 0
	movq	-8(%rbp), %rax	# q, tmp148
	cmpq	-16(%rbp), %rax	# p, tmp148
	je	.L157	#,
	.loc 1 1172 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# q, tmp149
	movzbl	57(%rax), %eax	# q_6->addr_taken, D.21980
	testb	%al, %al	# D.21980
	je	.L157	#,
	movq	-8(%rbp), %rax	# q, tmp150
	movl	60(%rax), %edx	# q_6->level, D.21981
	movq	-16(%rbp), %rax	# p, tmp151
	movl	60(%rax), %eax	# p_4->level, D.21981
	cmpl	%eax, %edx	# D.21981, D.21981
	jne	.L157	#,
	.loc 1 1173 0 is_stmt 1
	movq	-8(%rbp), %rax	# q, tmp152
	movl	60(%rax), %eax	# q_6->level, D.21981
	leal	-1(%rax), %edx	#, D.21981
	movq	-8(%rbp), %rax	# q, tmp153
	movl	%edx, 60(%rax)	# D.21981, q_6->level
.L157:
	.loc 1 1171 0
	movq	-8(%rbp), %rax	# q, tmp154
	movq	(%rax), %rax	# q_6->next, tmp155
	movq	%rax, -8(%rbp)	# tmp155, q
.L156:
	.loc 1 1171 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, q
	jne	.L158	#,
	.loc 1 1175 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp156
	movl	60(%rax), %eax	# p_4->level, D.21981
	leal	-1(%rax), %edx	#, D.21981
	movq	-16(%rbp), %rax	# p, tmp157
	movl	%edx, 60(%rax)	# D.21981, p_4->level
	.loc 1 1176 0
	movq	-16(%rbp), %rax	# p, tmp158
	movb	$0, 57(%rax)	#, p_4->addr_taken
	.loc 1 1178 0
	jmp	.L141	#
.L155:
	jmp	.L141	#
.L154:
.LBE10:
	.loc 1 1182 0
	movq	cfun(%rip), %rax	# cfun, cfun.63
	movq	320(%rax), %rax	# cfun.63_65->x_temp_slots, tmp159
	movq	%rax, -16(%rbp)	# tmp159, p
	jmp	.L159	#
.L161:
	.loc 1 1183 0
	movq	-16(%rbp), %rax	# p, tmp160
	movzbl	56(%rax), %eax	# p_5->in_use, D.21980
	testb	%al, %al	# D.21980
	je	.L160	#,
	.loc 1 1183 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp161
	movl	60(%rax), %edx	# p_5->level, D.21981
	movq	cfun(%rip), %rax	# cfun, cfun.64
	movl	328(%rax), %eax	# cfun.64_69->x_temp_slot_level, D.21981
	cmpl	%eax, %edx	# D.21981, D.21981
	jne	.L160	#,
	movq	-16(%rbp), %rax	# p, tmp162
	movl	64(%rax), %eax	# p_5->keep, D.21981
	testl	%eax, %eax	# D.21981
	jne	.L160	#,
	.loc 1 1184 0 is_stmt 1
	movq	-16(%rbp), %rax	# p, tmp163
	movl	60(%rax), %eax	# p_5->level, D.21981
	leal	-1(%rax), %edx	#, D.21981
	movq	-16(%rbp), %rax	# p, tmp164
	movl	%edx, 60(%rax)	# D.21981, p_5->level
.L160:
	.loc 1 1182 0
	movq	-16(%rbp), %rax	# p, tmp165
	movq	(%rax), %rax	# p_5->next, tmp166
	movq	%rax, -16(%rbp)	# tmp166, p
.L159:
	.loc 1 1182 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, p
	jne	.L161	#,
.L141:
	.loc 1 1185 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	preserve_temp_slots, .-preserve_temp_slots
	.globl	preserve_rtl_expr_result
	.type	preserve_rtl_expr_result, @function
preserve_rtl_expr_result:
.LFB21:
	.loc 1 1195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 1200 0
	cmpq	$0, -24(%rbp)	#, x
	je	.L163	#,
	.loc 1 1200 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp81
	movzwl	(%rax), %eax	# x_1(D)->code, D.21985
	cmpw	$66, %ax	#, D.21985
	jne	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp82
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _3->code, D.21985
	cmpw	$67, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp83
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _5->code, D.21985
	cmpw	$68, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp84
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _7->code, D.21985
	cmpw	$54, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp85
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _9->code, D.21985
	cmpw	$55, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp86
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _11->code, D.21985
	cmpw	$58, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp87
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _13->code, D.21985
	cmpw	$134, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp88
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _15->code, D.21985
	cmpw	$56, %ax	#, D.21985
	je	.L163	#,
	movq	-24(%rbp), %rax	# x, tmp89
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movzwl	(%rax), %eax	# _17->code, D.21985
	cmpw	$140, %ax	#, D.21985
	jne	.L164	#,
.L163:
	.loc 1 1201 0 is_stmt 1
	jmp	.L162	#
.L164:
	.loc 1 1205 0
	movq	-24(%rbp), %rax	# x, tmp90
	movq	8(%rax), %rax	# x_1(D)->fld[0].rtx, D.21986
	movq	%rax, %rdi	# D.21986,
	call	find_temp_slot_from_address	#
	movq	%rax, -8(%rbp)	# tmp91, p
	.loc 1 1206 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L166	#,
	.loc 1 1208 0
	movq	cfun(%rip), %rax	# cfun, cfun.65
	movl	328(%rax), %edx	# cfun.65_21->x_temp_slot_level, D.21987
	movq	-8(%rbp), %rax	# p, tmp92
	movl	60(%rax), %eax	# p_20->level, D.21987
	cmpl	%eax, %edx	# D.21987, D.21987
	cmovg	%eax, %edx	# D.21987,, D.21987, D.21987
	movq	-8(%rbp), %rax	# p, tmp93
	movl	%edx, 60(%rax)	# D.21987, p_20->level
	.loc 1 1209 0
	movq	-8(%rbp), %rax	# p, tmp94
	movq	$0, 48(%rax)	#, p_20->rtl_expr
.L166:
	.loc 1 1212 0
	nop
.L162:
	.loc 1 1213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	preserve_rtl_expr_result, .-preserve_rtl_expr_result
	.globl	free_temp_slots
	.type	free_temp_slots, @function
free_temp_slots:
.LFB22:
	.loc 1 1224 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1227 0
	movq	cfun(%rip), %rax	# cfun, cfun.66
	movq	320(%rax), %rax	# cfun.66_2->x_temp_slots, tmp66
	movq	%rax, -8(%rbp)	# tmp66, p
	jmp	.L168	#
.L170:
	.loc 1 1228 0
	movq	-8(%rbp), %rax	# p, tmp67
	movzbl	56(%rax), %eax	# p_1->in_use, D.21988
	testb	%al, %al	# D.21988
	je	.L169	#,
	.loc 1 1228 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp68
	movl	60(%rax), %edx	# p_1->level, D.21989
	movq	cfun(%rip), %rax	# cfun, cfun.67
	movl	328(%rax), %eax	# cfun.67_6->x_temp_slot_level, D.21989
	cmpl	%eax, %edx	# D.21989, D.21989
	jne	.L169	#,
	movq	-8(%rbp), %rax	# p, tmp69
	movl	64(%rax), %eax	# p_1->keep, D.21989
	testl	%eax, %eax	# D.21989
	jne	.L169	#,
	.loc 1 1229 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp70
	movq	48(%rax), %rax	# p_1->rtl_expr, D.21990
	testq	%rax, %rax	# D.21990
	jne	.L169	#,
	.loc 1 1230 0
	movq	-8(%rbp), %rax	# p, tmp71
	movb	$0, 56(%rax)	#, p_1->in_use
.L169:
	.loc 1 1227 0
	movq	-8(%rbp), %rax	# p, tmp72
	movq	(%rax), %rax	# p_1->next, tmp73
	movq	%rax, -8(%rbp)	# tmp73, p
.L168:
	.loc 1 1227 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L170	#,
	.loc 1 1232 0 is_stmt 1
	call	combine_temp_slots	#
	.loc 1 1233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	free_temp_slots, .-free_temp_slots
	.globl	free_temps_for_rtl_expr
	.type	free_temps_for_rtl_expr, @function
free_temps_for_rtl_expr:
.LFB23:
	.loc 1 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# t, t
	.loc 1 1243 0
	movq	cfun(%rip), %rax	# cfun, cfun.68
	movq	320(%rax), %rax	# cfun.68_2->x_temp_slots, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	jmp	.L172	#
.L175:
	.loc 1 1244 0
	movq	-8(%rbp), %rax	# p, tmp65
	movq	48(%rax), %rax	# p_1->rtl_expr, D.21991
	cmpq	-24(%rbp), %rax	# t, D.21991
	jne	.L173	#,
	.loc 1 1250 0
	movq	cfun(%rip), %rax	# cfun, cfun.69
	movl	328(%rax), %edx	# cfun.69_6->x_temp_slot_level, D.21992
	movq	-8(%rbp), %rax	# p, tmp66
	movl	60(%rax), %eax	# p_1->level, D.21992
	cmpl	%eax, %edx	# D.21992, D.21992
	jg	.L174	#,
	.loc 1 1251 0
	movq	-8(%rbp), %rax	# p, tmp67
	movb	$0, 56(%rax)	#, p_1->in_use
	jmp	.L173	#
.L174:
	.loc 1 1253 0
	movq	-8(%rbp), %rax	# p, tmp68
	movq	$0, 48(%rax)	#, p_1->rtl_expr
.L173:
	.loc 1 1243 0
	movq	-8(%rbp), %rax	# p, tmp69
	movq	(%rax), %rax	# p_1->next, tmp70
	movq	%rax, -8(%rbp)	# tmp70, p
.L172:
	.loc 1 1243 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L175	#,
	.loc 1 1256 0 is_stmt 1
	call	combine_temp_slots	#
	.loc 1 1257 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	free_temps_for_rtl_expr, .-free_temps_for_rtl_expr
	.globl	mark_all_temps_used
	.type	mark_all_temps_used, @function
mark_all_temps_used:
.LFB24:
	.loc 1 1264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1267 0
	movq	cfun(%rip), %rax	# cfun, cfun.70
	movq	320(%rax), %rax	# cfun.70_2->x_temp_slots, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	jmp	.L177	#
.L178:
	.loc 1 1269 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp65
	movl	$1, 64(%rax)	#, p_1->keep
	movq	-8(%rbp), %rax	# p, tmp66
	movb	$1, 56(%rax)	#, p_1->in_use
	.loc 1 1270 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.71
	movl	328(%rax), %edx	# cfun.71_4->x_temp_slot_level, D.21993
	movq	-8(%rbp), %rax	# p, tmp67
	movl	60(%rax), %eax	# p_1->level, D.21993
	cmpl	%eax, %edx	# D.21993, D.21993
	cmovg	%eax, %edx	# D.21993,, D.21993, D.21993
	movq	-8(%rbp), %rax	# p, tmp68
	movl	%edx, 60(%rax)	# D.21993, p_1->level
	.loc 1 1267 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp69
	movq	(%rax), %rax	# p_1->next, tmp70
	movq	%rax, -8(%rbp)	# tmp70, p
.L177:
	.loc 1 1267 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L178	#,
	.loc 1 1272 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	mark_all_temps_used, .-mark_all_temps_used
	.globl	push_temp_slots
	.type	push_temp_slots, @function
push_temp_slots:
.LFB25:
	.loc 1 1278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1279 0
	movq	cfun(%rip), %rax	# cfun, cfun.72
	movl	328(%rax), %edx	# cfun.72_1->x_temp_slot_level, D.21994
	addl	$1, %edx	#, D.21994
	movl	%edx, 328(%rax)	# D.21994, cfun.72_1->x_temp_slot_level
	.loc 1 1280 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	push_temp_slots, .-push_temp_slots
	.globl	pop_temp_slots
	.type	pop_temp_slots, @function
pop_temp_slots:
.LFB26:
	.loc 1 1327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1330 0
	movq	cfun(%rip), %rax	# cfun, cfun.73
	movq	320(%rax), %rax	# cfun.73_2->x_temp_slots, tmp68
	movq	%rax, -8(%rbp)	# tmp68, p
	jmp	.L181	#
.L183:
	.loc 1 1331 0
	movq	-8(%rbp), %rax	# p, tmp69
	movzbl	56(%rax), %eax	# p_1->in_use, D.21995
	testb	%al, %al	# D.21995
	je	.L182	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp70
	movl	60(%rax), %edx	# p_1->level, D.21996
	movq	cfun(%rip), %rax	# cfun, cfun.74
	movl	328(%rax), %eax	# cfun.74_6->x_temp_slot_level, D.21996
	cmpl	%eax, %edx	# D.21996, D.21996
	jne	.L182	#,
	movq	-8(%rbp), %rax	# p, tmp71
	movq	48(%rax), %rax	# p_1->rtl_expr, D.21997
	testq	%rax, %rax	# D.21997
	jne	.L182	#,
	.loc 1 1332 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp72
	movb	$0, 56(%rax)	#, p_1->in_use
.L182:
	.loc 1 1330 0
	movq	-8(%rbp), %rax	# p, tmp73
	movq	(%rax), %rax	# p_1->next, tmp74
	movq	%rax, -8(%rbp)	# tmp74, p
.L181:
	.loc 1 1330 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L183	#,
	.loc 1 1334 0 is_stmt 1
	call	combine_temp_slots	#
	.loc 1 1336 0
	movq	cfun(%rip), %rax	# cfun, cfun.75
	movl	328(%rax), %edx	# cfun.75_10->x_temp_slot_level, D.21996
	subl	$1, %edx	#, D.21996
	movl	%edx, 328(%rax)	# D.21996, cfun.75_10->x_temp_slot_level
	.loc 1 1337 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	pop_temp_slots, .-pop_temp_slots
	.globl	init_temp_slots
	.type	init_temp_slots, @function
init_temp_slots:
.LFB27:
	.loc 1 1343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1345 0
	movq	cfun(%rip), %rax	# cfun, cfun.76
	movq	$0, 320(%rax)	#, cfun.76_1->x_temp_slots
	.loc 1 1346 0
	movq	cfun(%rip), %rax	# cfun, cfun.77
	movl	$0, 328(%rax)	#, cfun.77_2->x_temp_slot_level
	.loc 1 1347 0
	movq	cfun(%rip), %rax	# cfun, cfun.78
	movl	$0, 332(%rax)	#, cfun.78_3->x_var_temp_slot_level
	.loc 1 1348 0
	movq	cfun(%rip), %rax	# cfun, cfun.79
	movl	$0, 336(%rax)	#, cfun.79_4->x_target_temp_slot_level
	.loc 1 1349 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	init_temp_slots, .-init_temp_slots
	.globl	put_var_into_stack
	.type	put_var_into_stack, @function
put_var_into_stack:
.LFB28:
	.loc 1 1357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# decl, decl
	.loc 1 1360 0
	movq	$0, -40(%rbp)	#, function
	.loc 1 1363 0
	movq	-88(%rbp), %rax	# decl, tmp116
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	cmpb	$118, %al	#, D.21998
	je	.L186	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp117
	movzbl	17(%rax), %eax	# *decl_15(D), D.21998
	andl	$8, %eax	#, D.21998
	testb	%al, %al	# D.21998
	je	.L186	#,
	.loc 1 1363 0 discriminator 3
	movl	$1, %eax	#, iftmp.80
	jmp	.L187	#
.L186:
	.loc 1 1363 0 discriminator 2
	movl	$0, %eax	#, iftmp.80
.L187:
	.loc 1 1363 0 discriminator 4
	movl	%eax, -64(%rbp)	# iftmp.80, volatilep
	.loc 1 1364 0 is_stmt 1 discriminator 4
	movq	-88(%rbp), %rax	# decl, tmp118
	movzbl	18(%rax), %eax	# *decl_15(D), D.21998
	andl	$1, %eax	#, D.21998
	.loc 1 1365 0 discriminator 4
	testb	%al, %al	# D.21998
	jne	.L188	#,
	.loc 1 1365 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp119
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	cmpb	$118, %al	#, D.21998
	je	.L189	#,
	.loc 1 1365 0 discriminator 3
	movq	-88(%rbp), %rax	# decl, tmp120
	movq	104(%rax), %rax	# decl_15(D)->decl.initial, D.21999
	testq	%rax, %rax	# D.21999
	je	.L189	#,
.L188:
	.loc 1 1365 0 discriminator 1
	movl	$1, %eax	#, iftmp.81
	jmp	.L190	#
.L189:
	.loc 1 1365 0 discriminator 4
	movl	$0, %eax	#, iftmp.81
.L190:
	.loc 1 1364 0 is_stmt 1
	movl	%eax, -60(%rbp)	# iftmp.81, usedp
	.loc 1 1367 0
	movq	-88(%rbp), %rax	# decl, tmp121
	movq	%rax, %rdi	# tmp121,
	call	decl_function_context	#
	movq	%rax, -32(%rbp)	# tmp122, context
	.loc 1 1370 0
	movq	-88(%rbp), %rax	# decl, tmp123
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	.loc 1 1372 0
	cmpb	$118, %al	#, D.21998
	jne	.L191	#,
	.loc 1 1372 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp124
	movq	48(%rax), %rax	# decl_15(D)->exp.operands, iftmp.82
	jmp	.L192	#
.L191:
	.loc 1 1372 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp125
	movq	144(%rax), %rax	# decl_15(D)->decl.rtl, D.22000
	testq	%rax, %rax	# D.22000
	je	.L193	#,
	.loc 1 1372 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp126
	movq	144(%rax), %rax	# decl_15(D)->decl.rtl, D.22000
	testq	%rax, %rax	# D.22000
	je	.L194	#,
	movq	-88(%rbp), %rax	# decl, tmp127
	movq	144(%rax), %rax	# decl_15(D)->decl.rtl, iftmp.84
	jmp	.L192	#
.L194:
	.loc 1 1372 0 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp128
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	make_decl_rtl	#
	movq	-88(%rbp), %rax	# decl, tmp129
	movq	144(%rax), %rax	# decl_15(D)->decl.rtl, iftmp.84
	jmp	.L192	#
.L193:
	movl	$0, %eax	#, iftmp.83
.L192:
	.loc 1 1370 0 is_stmt 1
	movq	%rax, -48(%rbp)	# iftmp.82, reg
	.loc 1 1377 0
	cmpq	$0, -48(%rbp)	#, reg
	jne	.L197	#,
	.loc 1 1378 0
	jmp	.L185	#
.L197:
	.loc 1 1381 0
	movq	-88(%rbp), %rax	# decl, tmp130
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	cmpb	$118, %al	#, D.21998
	jne	.L199	#,
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp131
	movq	8(%rax), %rax	# decl_15(D)->common.type, D.21999
	movzbl	61(%rax), %eax	# *_41, tmp134
	shrb	%al	# D.22001
	movzbl	%al, %eax	# D.22001, iftmp.85
	jmp	.L200	#
.L199:
	.loc 1 1382 0 is_stmt 1 discriminator 2
	movq	-88(%rbp), %rax	# decl, tmp135
	movzbl	48(%rax), %eax	# decl_15(D)->decl.mode, D.21998
	.loc 1 1381 0 discriminator 2
	movzbl	%al, %eax	# D.21998, iftmp.85
.L200:
	.loc 1 1381 0 is_stmt 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.85, decl_mode
	.loc 1 1384 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# reg, tmp136
	movzbl	2(%rax), %eax	# reg_39->mode, D.21998
	movzbl	%al, %eax	# D.21998, tmp137
	movl	%eax, -72(%rbp)	# tmp137, promoted_mode
	.loc 1 1391 0 discriminator 3
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.86
	cmpq	%rax, -32(%rbp)	# current_function_decl.86, context
	je	.L201	#,
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movq	inline_function_decl(%rip), %rax	# inline_function_decl, inline_function_decl.87
	cmpq	%rax, -32(%rbp)	# inline_function_decl.87, context
	je	.L201	#,
	.loc 1 1392 0 is_stmt 1
	movq	outer_function_chain(%rip), %rax	# outer_function_chain, tmp138
	movq	%rax, -40(%rbp)	# tmp138, function
	jmp	.L202	#
.L204:
	.loc 1 1393 0
	movq	-40(%rbp), %rax	# function, tmp139
	movq	48(%rax), %rax	# function_5->decl, D.21999
	cmpq	-32(%rbp), %rax	# context, D.21999
	jne	.L203	#,
	.loc 1 1394 0
	jmp	.L201	#
.L203:
	.loc 1 1392 0
	movq	-40(%rbp), %rax	# function, tmp140
	movq	56(%rax), %rax	# function_5->outer, tmp141
	movq	%rax, -40(%rbp)	# tmp141, function
.L202:
	.loc 1 1392 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, function
	jne	.L204	#,
.L201:
	.loc 1 1398 0 is_stmt 1
	movq	-88(%rbp), %rax	# decl, tmp142
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	cmpb	$118, %al	#, D.21998
	je	.L205	#,
	.loc 1 1398 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# decl, tmp143
	movzbl	49(%rax), %eax	# *decl_15(D), D.21998
	andl	$2, %eax	#, D.21998
	testb	%al, %al	# D.21998
	je	.L205	#,
	.loc 1 1399 0 is_stmt 1
	movq	-48(%rbp), %rax	# reg, tmp144
	movzwl	(%rax), %eax	# reg_39->code, D.22002
	cmpw	$66, %ax	#, D.22002
	jne	.L205	#,
	.loc 1 1400 0
	movq	-48(%rbp), %rax	# reg, tmp145
	movq	8(%rax), %rax	# reg_39->fld[0].rtx, D.22000
	movzwl	(%rax), %eax	# _58->code, D.22002
	cmpw	$61, %ax	#, D.22002
	jne	.L205	#,
	.loc 1 1401 0
	movq	-48(%rbp), %rax	# reg, tmp146
	movq	8(%rax), %rax	# reg_39->fld[0].rtx, D.22000
	movl	8(%rax), %eax	# _60->fld[0].rtuint, D.22003
	cmpl	$57, %eax	#, D.22003
	jbe	.L205	#,
	.loc 1 1403 0
	movq	-48(%rbp), %rax	# reg, tmp147
	movq	8(%rax), %rax	# reg_39->fld[0].rtx, tmp148
	movq	%rax, -48(%rbp)	# tmp148, reg
	.loc 1 1404 0
	movq	-48(%rbp), %rax	# reg, tmp149
	movzbl	2(%rax), %eax	# reg_62->mode, D.21998
	movzbl	%al, %eax	# D.21998, tmp150
	movl	%eax, -72(%rbp)	# tmp150, promoted_mode
	movl	-72(%rbp), %eax	# promoted_mode, tmp151
	movl	%eax, -68(%rbp)	# tmp151, decl_mode
.L205:
	.loc 1 1411 0
	cmpq	$0, -40(%rbp)	#, function
	jne	.L206	#,
	.loc 1 1409 0
	movl	optimize(%rip), %eax	# optimize, optimize.89
	testl	%eax, %eax	# optimize.89
	jle	.L206	#,
	.loc 1 1411 0
	movl	-68(%rbp), %eax	# decl_mode, tmp152
	cmpl	-72(%rbp), %eax	# promoted_mode, tmp152
	jne	.L206	#,
	.loc 1 1411 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.88
	jmp	.L207	#
.L206:
	.loc 1 1411 0 discriminator 1
	movl	$0, %eax	#, iftmp.88
.L207:
	.loc 1 1408 0 is_stmt 1
	movl	%eax, -56(%rbp)	# iftmp.88, can_use_addressof
	.loc 1 1419 0
	cmpl	$0, -56(%rbp)	#, can_use_addressof
	jne	.L208	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg, tmp153
	movzwl	(%rax), %eax	# reg_1->code, D.22002
	cmpw	$66, %ax	#, D.22002
	jne	.L208	#,
	.loc 1 1420 0 is_stmt 1
	movq	-48(%rbp), %rax	# reg, tmp154
	movq	8(%rax), %rax	# reg_1->fld[0].rtx, D.22000
	movzwl	(%rax), %eax	# _71->code, D.22002
	cmpw	$70, %ax	#, D.22002
	jne	.L208	#,
	.loc 1 1421 0
	movq	-48(%rbp), %rax	# reg, tmp155
	movq	8(%rax), %rax	# reg_1->fld[0].rtx, D.22000
	movq	8(%rax), %rax	# _73->fld[0].rtx, tmp156
	movq	%rax, -48(%rbp)	# tmp156, reg
.L208:
	.loc 1 1425 0
	movq	-48(%rbp), %rax	# reg, tmp157
	movzwl	(%rax), %eax	# reg_2->code, D.22002
	cmpw	$61, %ax	#, D.22002
	jne	.L209	#,
	.loc 1 1430 0
	cmpl	$0, -56(%rbp)	#, can_use_addressof
	je	.L210	#,
	.loc 1 1431 0
	movq	-88(%rbp), %rdx	# decl, tmp158
	movq	-48(%rbp), %rax	# reg, tmp159
	movq	%rdx, %rsi	# tmp158,
	movq	%rax, %rdi	# tmp159,
	call	gen_mem_addressof	#
	jmp	.L185	#
.L210:
	.loc 1 1433 0
	movq	-88(%rbp), %rax	# decl, tmp160
	movq	8(%rax), %rdx	# decl_15(D)->common.type, D.21999
	movl	-64(%rbp), %r9d	# volatilep, tmp161
	movl	-68(%rbp), %r8d	# decl_mode, tmp162
	movl	-72(%rbp), %ecx	# promoted_mode, tmp163
	movq	-48(%rbp), %rsi	# reg, tmp164
	movq	-40(%rbp), %rax	# function, tmp165
	movq	$0, 16(%rsp)	#,
	movl	-60(%rbp), %edi	# usedp, tmp166
	movl	%edi, 8(%rsp)	# tmp166,
	movl	$0, (%rsp)	#,
	movq	%rax, %rdi	# tmp165,
	call	put_reg_into_stack	#
	jmp	.L185	#
.L209:
	.loc 1 1436 0
	movq	-48(%rbp), %rax	# reg, tmp167
	movzwl	(%rax), %eax	# reg_2->code, D.22002
	cmpw	$65, %ax	#, D.22002
	jne	.L212	#,
.LBB11:
	.loc 1 1443 0
	movq	-48(%rbp), %rax	# reg, tmp168
	movq	8(%rax), %rax	# reg_2->fld[0].rtx, D.22000
	movzbl	2(%rax), %eax	# _78->mode, D.21998
	movzbl	%al, %eax	# D.21998, tmp169
	movl	%eax, -52(%rbp)	# tmp169, part_mode
	.loc 1 1444 0
	movl	-52(%rbp), %eax	# part_mode, tmp170
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp170,
	call	type_for_mode	#
	movq	%rax, -24(%rbp)	# tmp171, part_type
	.loc 1 1445 0
	movq	-48(%rbp), %rax	# reg, tmp172
	movq	8(%rax), %rax	# reg_2->fld[0].rtx, tmp173
	movq	%rax, -16(%rbp)	# tmp173, lopart
	.loc 1 1446 0
	movq	-48(%rbp), %rax	# reg, tmp174
	movq	16(%rax), %rax	# reg_2->fld[1].rtx, tmp175
	movq	%rax, -8(%rbp)	# tmp175, hipart
	.loc 1 1449 0
	movl	-64(%rbp), %r8d	# volatilep, tmp176
	movl	-52(%rbp), %edi	# part_mode, tmp177
	movl	-52(%rbp), %ecx	# part_mode, tmp178
	movq	-24(%rbp), %rdx	# part_type, tmp179
	movq	-8(%rbp), %rsi	# hipart, tmp180
	movq	-40(%rbp), %rax	# function, tmp181
	movq	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	%r8d, %r9d	# tmp176,
	movl	%edi, %r8d	# tmp177,
	movq	%rax, %rdi	# tmp181,
	call	put_reg_into_stack	#
	.loc 1 1451 0
	movl	-64(%rbp), %r8d	# volatilep, tmp182
	movl	-52(%rbp), %edi	# part_mode, tmp183
	movl	-52(%rbp), %ecx	# part_mode, tmp184
	movq	-24(%rbp), %rdx	# part_type, tmp185
	movq	-16(%rbp), %rsi	# lopart, tmp186
	movq	-40(%rbp), %rax	# function, tmp187
	movq	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	%r8d, %r9d	# tmp182,
	movl	%edi, %r8d	# tmp183,
	movq	%rax, %rdi	# tmp187,
	call	put_reg_into_stack	#
	.loc 1 1461 0
	movq	-48(%rbp), %rax	# reg, tmp188
	movw	$66, (%rax)	#, reg_2->code
	.loc 1 1462 0
	movq	-48(%rbp), %rax	# reg, tmp189
	movq	$0, 16(%rax)	#, reg_2->fld[1].rtmem
	.loc 1 1466 0
	movq	-88(%rbp), %rax	# decl, tmp190
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	movzbl	%al, %eax	# D.21998, D.22004
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22005
	cmpb	$100, %al	#, D.22005
	jne	.L213	#,
	.loc 1 1467 0
	movq	-88(%rbp), %rax	# decl, tmp192
	movq	$0, 144(%rax)	#, decl_15(D)->decl.rtl
.L213:
	.loc 1 1468 0
	movq	-88(%rbp), %rcx	# decl, tmp193
	movq	-48(%rbp), %rax	# reg, tmp194
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	set_mem_attributes	#
	.loc 1 1469 0
	movq	-88(%rbp), %rax	# decl, tmp195
	movzbl	16(%rax), %eax	# decl_15(D)->common.code, D.21998
	movzbl	%al, %eax	# D.21998, D.22004
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22005
	cmpb	$100, %al	#, D.22005
	jne	.L214	#,
	.loc 1 1470 0
	movq	-88(%rbp), %rax	# decl, tmp197
	movq	-48(%rbp), %rdx	# reg, tmp198
	movq	%rdx, 144(%rax)	# tmp198, decl_15(D)->decl.rtl
.L214:
	.loc 1 1474 0
	movq	-48(%rbp), %rax	# reg, tmp199
	movq	8(%rax), %rax	# reg_2->fld[0].rtx, D.22000
	movq	8(%rax), %rdx	# _90->fld[0].rtx, D.22000
	movq	-48(%rbp), %rax	# reg, tmp200
	movq	%rdx, 8(%rax)	# D.22000, reg_2->fld[0].rtx
	.loc 1 1476 0
	movq	-48(%rbp), %rax	# reg, tmp201
	movq	8(%rax), %rax	# reg_2->fld[0].rtx, D.22000
	movzwl	(%rax), %eax	# _92->code, D.22002
	cmpw	$75, %ax	#, D.22002
	jne	.L215	#,
	.loc 1 1477 0
	movq	-48(%rbp), %rax	# reg, tmp202
	movq	8(%rax), %rax	# reg_2->fld[0].rtx, D.22000
	movq	%rax, %rdi	# D.22000,
	call	copy_rtx	#
	movq	-48(%rbp), %rdx	# reg, tmp203
	movq	%rax, 8(%rdx)	# D.22000, reg_2->fld[0].rtx
.L215:
	.loc 1 1478 0
	cmpl	$0, -60(%rbp)	#, usedp
	je	.L216	#,
	.loc 1 1480 0
	movq	-88(%rbp), %rax	# decl, tmp204
	movq	8(%rax), %rdx	# decl_15(D)->common.type, D.21999
	movl	-72(%rbp), %ecx	# promoted_mode, tmp205
	movq	-48(%rbp), %rsi	# reg, tmp206
	movq	-40(%rbp), %rax	# function, tmp207
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp207,
	call	schedule_fixup_var_refs	#
	.loc 1 1482 0
	movl	-52(%rbp), %ecx	# part_mode, tmp208
	movq	-24(%rbp), %rdx	# part_type, tmp209
	movq	-16(%rbp), %rsi	# lopart, tmp210
	movq	-40(%rbp), %rax	# function, tmp211
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp211,
	call	schedule_fixup_var_refs	#
	.loc 1 1483 0
	movl	-52(%rbp), %ecx	# part_mode, tmp212
	movq	-24(%rbp), %rdx	# part_type, tmp213
	movq	-8(%rbp), %rsi	# hipart, tmp214
	movq	-40(%rbp), %rax	# function, tmp215
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp215,
	call	schedule_fixup_var_refs	#
.LBE11:
	jmp	.L185	#
.L216:
	jmp	.L185	#
.L212:
	.loc 1 1487 0
	nop
.L185:
	.loc 1 1488 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	put_var_into_stack, .-put_var_into_stack
	.type	put_reg_into_stack, @function
put_reg_into_stack:
.LFB29:
	.loc 1 1508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# function, function
	movq	%rsi, -48(%rbp)	# reg, reg
	movq	%rdx, -56(%rbp)	# type, type
	movl	%ecx, -60(%rbp)	# promoted_mode, promoted_mode
	movl	%r8d, -64(%rbp)	# decl_mode, decl_mode
	movl	%r9d, -68(%rbp)	# volatile_p, volatile_p
	.loc 1 1509 0
	cmpq	$0, -40(%rbp)	#, function
	je	.L218	#,
	.loc 1 1509 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# function, iftmp.90
	jmp	.L219	#
.L218:
	.loc 1 1509 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, iftmp.90
.L219:
	.loc 1 1509 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.90, func
	.loc 1 1510 0 is_stmt 1 discriminator 3
	movq	$0, -16(%rbp)	#, new
	.loc 1 1511 0 discriminator 3
	movl	16(%rbp), %eax	# original_regno, tmp80
	movl	%eax, -20(%rbp)	# tmp80, regno
	.loc 1 1513 0 discriminator 3
	cmpl	$0, -20(%rbp)	#, regno
	jne	.L220	#,
	.loc 1 1514 0
	movq	-48(%rbp), %rax	# reg, tmp81
	movl	8(%rax), %eax	# reg_12(D)->fld[0].rtuint, tmp82
	movl	%eax, -20(%rbp)	# tmp82, regno
.L220:
	.loc 1 1516 0
	movq	-8(%rbp), %rax	# func, tmp83
	movl	304(%rax), %eax	# func_8->x_max_parm_reg, D.22006
	cmpl	-20(%rbp), %eax	# regno, D.22006
	jbe	.L221	#,
	.loc 1 1517 0
	movq	-8(%rbp), %rax	# func, tmp84
	movq	312(%rax), %rax	# func_8->x_parm_reg_stack_loc, D.22007
	movl	-20(%rbp), %edx	# regno, D.22008
	salq	$3, %rdx	#, D.22008
	addq	%rdx, %rax	# D.22008, D.22007
	movq	(%rax), %rax	# *_18, tmp85
	movq	%rax, -16(%rbp)	# tmp85, new
.L221:
	.loc 1 1519 0
	cmpq	$0, -16(%rbp)	#, new
	jne	.L222	#,
	.loc 1 1520 0
	movl	-64(%rbp), %eax	# decl_mode, decl_mode.91
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22009
	movzbl	%al, %esi	# D.22009, D.22010
	movq	-8(%rbp), %rdx	# func, tmp87
	movl	-64(%rbp), %eax	# decl_mode, tmp88
	movq	%rdx, %rcx	# tmp87,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp88,
	call	assign_stack_local_1	#
	movq	%rax, -16(%rbp)	# tmp89, new
.L222:
	.loc 1 1522 0
	movq	-48(%rbp), %rax	# reg, tmp90
	movw	$66, (%rax)	#, reg_12(D)->code
	.loc 1 1523 0
	movl	-64(%rbp), %eax	# decl_mode, tmp91
	movl	%eax, %edx	# tmp91, D.22009
	movq	-48(%rbp), %rax	# reg, tmp92
	movb	%dl, 2(%rax)	# D.22009, reg_12(D)->mode
	.loc 1 1524 0
	movq	-16(%rbp), %rax	# new, tmp93
	movq	8(%rax), %rdx	# new_2->fld[0].rtx, D.22011
	movq	-48(%rbp), %rax	# reg, tmp94
	movq	%rdx, 8(%rax)	# D.22011, reg_12(D)->fld[0].rtx
	.loc 1 1525 0
	movq	-48(%rbp), %rax	# reg, tmp95
	movq	$0, 16(%rax)	#, reg_12(D)->fld[1].rtmem
	.loc 1 1527 0
	movl	-68(%rbp), %eax	# volatile_p, tmp96
	andl	$1, %eax	#, D.22012
	movl	%eax, %edx	# D.22012, D.22012
	movq	-48(%rbp), %rax	# reg, tmp97
	andl	$1, %edx	#, tmp99
	leal	0(,%rdx,8), %ecx	#, tmp100
	movzbl	3(%rax), %edx	# reg_12(D)->volatil, tmp101
	andl	$-9, %edx	#, tmp102
	orl	%ecx, %edx	# tmp100, tmp103
	movb	%dl, 3(%rax)	# tmp103, reg_12(D)->volatil
	.loc 1 1534 0
	cmpq	$0, -56(%rbp)	#, type
	je	.L223	#,
	.loc 1 1536 0
	movq	-56(%rbp), %rax	# type, tmp104
	movzbl	16(%rax), %eax	# type_30(D)->common.code, D.22009
	cmpb	$18, %al	#, D.22009
	je	.L224	#,
	.loc 1 1536 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# type, tmp105
	movzbl	16(%rax), %eax	# type_30(D)->common.code, D.22009
	cmpb	$20, %al	#, D.22009
	je	.L224	#,
	.loc 1 1536 0 discriminator 1
	movq	-56(%rbp), %rax	# type, tmp106
	movzbl	16(%rax), %eax	# type_30(D)->common.code, D.22009
	cmpb	$21, %al	#, D.22009
	je	.L224	#,
	movq	-56(%rbp), %rax	# type, tmp107
	movzbl	16(%rax), %eax	# type_30(D)->common.code, D.22009
	cmpb	$22, %al	#, D.22009
	je	.L224	#,
	movq	-56(%rbp), %rax	# type, tmp108
	movzbl	16(%rax), %eax	# type_30(D)->common.code, D.22009
	cmpb	$19, %al	#, D.22009
	je	.L224	#,
	movq	-16(%rbp), %rax	# new, tmp109
	movzbl	3(%rax), %eax	# *new_2, D.22009
	andl	$16, %eax	#, D.22009
	testb	%al, %al	# D.22009
	je	.L225	#,
.L224:
	movq	-48(%rbp), %rax	# reg, tmp110
	movzbl	3(%rax), %edx	# reg_12(D)->in_struct, tmp113
	orl	$16, %edx	#, tmp114
	movb	%dl, 3(%rax)	# tmp114, reg_12(D)->in_struct
	movq	-48(%rbp), %rax	# reg, tmp115
	movzbl	3(%rax), %edx	# reg_12(D)->frame_related, tmp118
	andl	$127, %edx	#, tmp119
	movb	%dl, 3(%rax)	# tmp119, reg_12(D)->frame_related
	jmp	.L226	#
.L225:
	movq	-48(%rbp), %rax	# reg, tmp120
	movzbl	3(%rax), %edx	# reg_12(D)->in_struct, tmp123
	andl	$-17, %edx	#, tmp124
	movb	%dl, 3(%rax)	# tmp124, reg_12(D)->in_struct
	movq	-48(%rbp), %rax	# reg, tmp125
	movzbl	3(%rax), %edx	# reg_12(D)->frame_related, tmp128
	orl	$-128, %edx	#, tmp129
	movb	%dl, 3(%rax)	# tmp129, reg_12(D)->frame_related
.L226:
	.loc 1 1538 0 is_stmt 1
	movq	-56(%rbp), %rax	# type, tmp130
	movq	%rax, %rdi	# tmp130,
	call	get_alias_set	#
	movq	%rax, %rdx	#, D.22010
	movq	-48(%rbp), %rax	# reg, tmp131
	movq	%rdx, %rsi	# D.22010,
	movq	%rax, %rdi	# tmp131,
	call	set_mem_alias_set	#
.L223:
	.loc 1 1541 0
	cmpl	$0, 24(%rbp)	#, used_p
	je	.L217	#,
	.loc 1 1542 0
	movq	32(%rbp), %rdi	# ht, tmp132
	movl	-60(%rbp), %ecx	# promoted_mode, tmp133
	movq	-56(%rbp), %rdx	# type, tmp134
	movq	-48(%rbp), %rsi	# reg, tmp135
	movq	-40(%rbp), %rax	# function, tmp136
	movq	%rdi, %r8	# tmp132,
	movq	%rax, %rdi	# tmp136,
	call	schedule_fixup_var_refs	#
.L217:
	.loc 1 1543 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	put_reg_into_stack, .-put_reg_into_stack
	.type	schedule_fixup_var_refs, @function
schedule_fixup_var_refs:
.LFB30:
	.loc 1 1556 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# function, function
	movq	%rsi, -32(%rbp)	# reg, reg
	movq	%rdx, -40(%rbp)	# type, type
	movl	%ecx, -44(%rbp)	# promoted_mode, promoted_mode
	movq	%r8, -56(%rbp)	# ht, ht
	.loc 1 1557 0
	cmpq	$0, -40(%rbp)	#, type
	je	.L229	#,
	.loc 1 1557 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# type, tmp62
	movzbl	17(%rax), %eax	# *type_2(D), tmp65
	shrb	$5, %al	#, D.22013
	andl	$1, %eax	#, D.22013
	movzbl	%al, %eax	# D.22013, iftmp.92
	jmp	.L230	#
.L229:
	.loc 1 1557 0 discriminator 2
	movl	$0, %eax	#, iftmp.92
.L230:
	.loc 1 1557 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.92, unsigned_p
	.loc 1 1559 0 is_stmt 1 discriminator 3
	cmpq	$0, -24(%rbp)	#, function
	je	.L231	#,
.LBB12:
	.loc 1 1564 0
	movl	$24, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -8(%rbp)	# tmp66, temp
	.loc 1 1565 0
	movq	-8(%rbp), %rax	# temp, tmp67
	movq	-32(%rbp), %rdx	# reg, tmp68
	movq	%rdx, (%rax)	# tmp68, temp_8->modified
	.loc 1 1566 0
	movq	-8(%rbp), %rax	# temp, tmp69
	movl	-44(%rbp), %edx	# promoted_mode, tmp70
	movl	%edx, 8(%rax)	# tmp70, temp_8->promoted_mode
	.loc 1 1567 0
	movq	-8(%rbp), %rax	# temp, tmp71
	movl	-12(%rbp), %edx	# unsigned_p, tmp72
	movl	%edx, 12(%rax)	# tmp72, temp_8->unsignedp
	.loc 1 1568 0
	movq	-24(%rbp), %rax	# function, tmp73
	movq	344(%rax), %rdx	# function_7(D)->fixup_var_refs_queue, D.22014
	movq	-8(%rbp), %rax	# temp, tmp74
	movq	%rdx, 16(%rax)	# D.22014, temp_8->next
	.loc 1 1569 0
	movq	-24(%rbp), %rax	# function, tmp75
	movq	-8(%rbp), %rdx	# temp, tmp76
	movq	%rdx, 344(%rax)	# tmp76, function_7(D)->fixup_var_refs_queue
.LBE12:
	jmp	.L228	#
.L231:
	.loc 1 1573 0
	movq	-56(%rbp), %rdi	# ht, tmp77
	movq	-32(%rbp), %rcx	# reg, tmp78
	movl	-12(%rbp), %edx	# unsigned_p, tmp79
	movl	-44(%rbp), %esi	# promoted_mode, tmp80
	movq	-32(%rbp), %rax	# reg, tmp81
	movq	%rdi, %r8	# tmp77,
	movq	%rax, %rdi	# tmp81,
	call	fixup_var_refs	#
.L228:
	.loc 1 1574 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	schedule_fixup_var_refs, .-schedule_fixup_var_refs
	.type	fixup_var_refs, @function
fixup_var_refs:
.LFB31:
	.loc 1 1583 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# var, var
	movl	%esi, -60(%rbp)	# promoted_mode, promoted_mode
	movl	%edx, -64(%rbp)	# unsignedp, unsignedp
	movq	%rcx, -72(%rbp)	# may_share, may_share
	movq	%r8, -80(%rbp)	# ht, ht
	.loc 1 1585 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp73, first_insn
	.loc 1 1586 0
	movq	cfun(%rip), %rax	# cfun, cfun.93
	movq	24(%rax), %rax	# cfun.93_4->emit, D.22015
	movq	32(%rax), %rax	# _5->sequence_stack, tmp74
	movq	%rax, -32(%rbp)	# tmp74, stack
	.loc 1 1587 0
	movq	cfun(%rip), %rax	# cfun, cfun.94
	movq	224(%rax), %rax	# cfun.94_7->x_rtl_expr_chain, tmp75
	movq	%rax, -16(%rbp)	# tmp75, rtl_exps
	.loc 1 1590 0
	cmpq	$0, -80(%rbp)	#, ht
	je	.L234	#,
	.loc 1 1592 0
	cmpq	$0, -32(%rbp)	#, stack
	je	.L235	#,
	.loc 1 1593 0
	movl	$__FUNCTION__.14035, %edx	#,
	movl	$1593, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L235:
	.loc 1 1594 0
	movq	-72(%rbp), %rdi	# may_share, tmp76
	movl	-64(%rbp), %ecx	# unsignedp, tmp77
	movl	-60(%rbp), %edx	# promoted_mode, tmp78
	movq	-56(%rbp), %rsi	# var, tmp79
	movq	-80(%rbp), %rax	# ht, tmp80
	movq	%rdi, %r8	# tmp76,
	movq	%rax, %rdi	# tmp80,
	call	fixup_var_refs_insns_with_hash	#
	.loc 1 1596 0
	jmp	.L233	#
.L234:
	.loc 1 1599 0
	cmpq	$0, -32(%rbp)	#, stack
	sete	%al	#, D.22016
	movzbl	%al, %edi	# D.22016, D.22017
	movq	-72(%rbp), %r8	# may_share, tmp81
	movl	-64(%rbp), %ecx	# unsignedp, tmp82
	movl	-60(%rbp), %edx	# promoted_mode, tmp83
	movq	-56(%rbp), %rsi	# var, tmp84
	movq	-24(%rbp), %rax	# first_insn, tmp85
	movq	%r8, %r9	# tmp81,
	movl	%edi, %r8d	# D.22017,
	movq	%rax, %rdi	# tmp85,
	call	fixup_var_refs_insns	#
	.loc 1 1603 0
	jmp	.L237	#
.L238:
	.loc 1 1605 0 discriminator 2
	movq	-32(%rbp), %rax	# stack, tmp86
	movq	8(%rax), %rdx	# stack_2->last, D.22018
	movq	-32(%rbp), %rax	# stack, tmp87
	movq	(%rax), %rax	# stack_2->first, D.22018
	movq	%rdx, %rsi	# D.22018,
	movq	%rax, %rdi	# D.22018,
	call	push_to_full_sequence	#
	.loc 1 1607 0 discriminator 2
	movq	-32(%rbp), %rax	# stack, tmp88
	movq	24(%rax), %rax	# stack_2->next, D.22019
	.loc 1 1606 0 discriminator 2
	testq	%rax, %rax	# D.22019
	setne	%al	#, D.22016
	movzbl	%al, %edi	# D.22016, D.22017
	movq	-32(%rbp), %rax	# stack, tmp89
	movq	(%rax), %rax	# stack_2->first, D.22018
	movq	-72(%rbp), %r8	# may_share, tmp90
	movl	-64(%rbp), %ecx	# unsignedp, tmp91
	movl	-60(%rbp), %edx	# promoted_mode, tmp92
	movq	-56(%rbp), %rsi	# var, tmp93
	movq	%r8, %r9	# tmp90,
	movl	%edi, %r8d	# D.22017,
	movq	%rax, %rdi	# D.22018,
	call	fixup_var_refs_insns	#
	.loc 1 1610 0 discriminator 2
	call	get_last_insn	#
	movq	-32(%rbp), %rdx	# stack, tmp94
	movq	%rax, 8(%rdx)	# D.22018, stack_2->last
	.loc 1 1611 0 discriminator 2
	call	end_sequence	#
	.loc 1 1603 0 discriminator 2
	movq	-32(%rbp), %rax	# stack, tmp95
	movq	24(%rax), %rax	# stack_2->next, tmp96
	movq	%rax, -32(%rbp)	# tmp96, stack
.L237:
	.loc 1 1603 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, stack
	jne	.L238	#,
	.loc 1 1615 0 is_stmt 1
	movq	-16(%rbp), %rax	# rtl_exps, tmp97
	movq	%rax, -40(%rbp)	# tmp97, pending
	jmp	.L239	#
.L241:
.LBB13:
	.loc 1 1617 0
	movq	-40(%rbp), %rax	# pending, tmp98
	movq	32(%rax), %rax	# pending_1->list.value, D.22020
	movq	32(%rax), %rax	# _25->exp.operands, tmp99
	movq	%rax, -8(%rbp)	# tmp99, seq
	.loc 1 1618 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22018
	cmpq	-8(%rbp), %rax	# seq, D.22018
	je	.L240	#,
	.loc 1 1618 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, seq
	je	.L240	#,
	.loc 1 1620 0 is_stmt 1
	movq	-8(%rbp), %rax	# seq, tmp100
	movq	%rax, %rdi	# tmp100,
	call	push_to_sequence	#
	.loc 1 1621 0
	movq	-72(%rbp), %rdi	# may_share, tmp101
	movl	-64(%rbp), %ecx	# unsignedp, tmp102
	movl	-60(%rbp), %edx	# promoted_mode, tmp103
	movq	-56(%rbp), %rsi	# var, tmp104
	movq	-8(%rbp), %rax	# seq, tmp105
	movq	%rdi, %r9	# tmp101,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp105,
	call	fixup_var_refs_insns	#
	.loc 1 1623 0
	call	end_sequence	#
.L240:
.LBE13:
	.loc 1 1615 0
	movq	-40(%rbp), %rax	# pending, tmp106
	movq	(%rax), %rax	# pending_1->common.chain, tmp107
	movq	%rax, -40(%rbp)	# tmp107, pending
.L239:
	.loc 1 1615 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, pending
	jne	.L241	#,
.L233:
	.loc 1 1626 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	fixup_var_refs, .-fixup_var_refs
	.type	find_fixup_replacement, @function
find_fixup_replacement:
.LFB32:
	.loc 1 1636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# replacements, replacements
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 1640 0
	movq	-24(%rbp), %rax	# replacements, tmp64
	movq	(%rax), %rax	# *replacements_3(D), tmp65
	movq	%rax, -8(%rbp)	# tmp65, p
	jmp	.L243	#
.L245:
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp66
	movq	16(%rax), %rax	# p_1->next, tmp67
	movq	%rax, -8(%rbp)	# tmp67, p
.L243:
	cmpq	$0, -8(%rbp)	#, p
	je	.L244	#,
	.loc 1 1640 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp68
	movq	(%rax), %rax	# p_1->old, D.22021
	movq	-32(%rbp), %rdx	# x, tmp69
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# D.22021,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22022
	je	.L245	#,
.L244:
	.loc 1 1643 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L246	#,
	.loc 1 1645 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp70, p
	.loc 1 1646 0
	movq	-8(%rbp), %rax	# p, tmp71
	movq	-32(%rbp), %rdx	# x, tmp72
	movq	%rdx, (%rax)	# tmp72, p_9->old
	.loc 1 1647 0
	movq	-8(%rbp), %rax	# p, tmp73
	movq	$0, 8(%rax)	#, p_9->new
	.loc 1 1648 0
	movq	-24(%rbp), %rax	# replacements, tmp74
	movq	(%rax), %rdx	# *replacements_3(D), D.22023
	movq	-8(%rbp), %rax	# p, tmp75
	movq	%rdx, 16(%rax)	# D.22023, p_9->next
	.loc 1 1649 0
	movq	-24(%rbp), %rax	# replacements, tmp76
	movq	-8(%rbp), %rdx	# p, tmp77
	movq	%rdx, (%rax)	# tmp77, *replacements_3(D)
.L246:
	.loc 1 1652 0
	movq	-8(%rbp), %rax	# p, D.22023
	.loc 1 1653 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	find_fixup_replacement, .-find_fixup_replacement
	.type	fixup_var_refs_insns, @function
fixup_var_refs_insns:
.LFB33:
	.loc 1 1668 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# insn, insn
	movq	%rsi, -64(%rbp)	# var, var
	movl	%edx, -68(%rbp)	# promoted_mode, promoted_mode
	movl	%ecx, -72(%rbp)	# unsignedp, unsignedp
	movl	%r8d, -76(%rbp)	# toplevel, toplevel
	movq	%r9, -88(%rbp)	# may_share, may_share
	.loc 1 1669 0
	jmp	.L249	#
.L255:
.LBB14:
	.loc 1 1673 0
	movq	-56(%rbp), %rax	# insn, tmp68
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp69
	movq	%rax, -32(%rbp)	# tmp69, next
	.loc 1 1679 0
	movq	-56(%rbp), %rax	# insn, tmp70
	movzwl	(%rax), %eax	# insn_1->code, D.22024
	cmpw	$34, %ax	#, D.22024
	jne	.L250	#,
	.loc 1 1680 0
	movq	-56(%rbp), %rax	# insn, tmp71
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.22025
	movzwl	(%rax), %eax	# _6->code, D.22024
	cmpw	$141, %ax	#, D.22024
	jne	.L250	#,
.LBB15:
	.loc 1 1686 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L251	#
.L253:
.LBB16:
	.loc 1 1688 0
	movq	-56(%rbp), %rax	# insn, tmp72
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.22025
	movl	-36(%rbp), %edx	# i, tmp74
	movslq	%edx, %rdx	# tmp74, tmp73
	movq	8(%rax,%rdx,8), %rax	# _9->fld[i_2].rtx, tmp75
	movq	%rax, -24(%rbp)	# tmp75, seq
	.loc 1 1689 0
	cmpq	$0, -24(%rbp)	#, seq
	je	.L252	#,
	.loc 1 1691 0
	movq	-24(%rbp), %rax	# seq, tmp76
	movq	%rax, %rdi	# tmp76,
	call	push_to_sequence	#
	.loc 1 1692 0
	movq	-88(%rbp), %rdi	# may_share, tmp77
	movl	-72(%rbp), %ecx	# unsignedp, tmp78
	movl	-68(%rbp), %edx	# promoted_mode, tmp79
	movq	-64(%rbp), %rsi	# var, tmp80
	movq	-24(%rbp), %rax	# seq, tmp81
	movq	%rdi, %r9	# tmp77,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp81,
	call	fixup_var_refs_insns	#
	.loc 1 1694 0
	movq	-56(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rbx	# insn_1->fld[3].rtx, D.22025
	call	get_insns	#
	movl	-36(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, tmp83
	movq	%rax, 8(%rbx,%rdx,8)	# D.22025, _15->fld[i_2].rtx
	.loc 1 1695 0
	call	end_sequence	#
.L252:
.LBE16:
	.loc 1 1686 0
	addl	$1, -36(%rbp)	#, i
.L251:
	.loc 1 1686 0 is_stmt 0 discriminator 1
	cmpl	$2, -36(%rbp)	#, i
	jle	.L253	#,
.LBE15:
	.loc 1 1681 0 is_stmt 1
	jmp	.L254	#
.L250:
	.loc 1 1700 0
	movq	-56(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_1->code, D.22024
	movzwl	%ax, %eax	# D.22024, D.22026
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22027
	cmpb	$105, %al	#, D.22027
	jne	.L254	#,
	.loc 1 1701 0
	movq	-88(%rbp), %r8	# may_share, tmp87
	movl	-76(%rbp), %edi	# toplevel, tmp88
	movl	-72(%rbp), %ecx	# unsignedp, tmp89
	movl	-68(%rbp), %edx	# promoted_mode, tmp90
	movq	-64(%rbp), %rsi	# var, tmp91
	movq	-56(%rbp), %rax	# insn, tmp92
	movq	%r8, %r9	# tmp87,
	movl	%edi, %r8d	# tmp88,
	movq	%rax, %rdi	# tmp92,
	call	fixup_var_refs_insn	#
.L254:
	.loc 1 1704 0
	movq	-32(%rbp), %rax	# next, tmp93
	movq	%rax, -56(%rbp)	# tmp93, insn
.L249:
.LBE14:
	.loc 1 1669 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, insn
	jne	.L255	#,
	.loc 1 1706 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	fixup_var_refs_insns, .-fixup_var_refs_insns
	.type	fixup_var_refs_insns_with_hash, @function
fixup_var_refs_insns_with_hash:
.LFB34:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ht, ht
	movq	%rsi, -32(%rbp)	# var, var
	movl	%edx, -36(%rbp)	# promoted_mode, promoted_mode
	movl	%ecx, -40(%rbp)	# unsignedp, unsignedp
	movq	%r8, -48(%rbp)	# may_share, may_share
	.loc 1 1723 0
	movq	-32(%rbp), %rsi	# var, tmp64
	movq	-24(%rbp), %rax	# ht, tmp65
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp65,
	call	hash_lookup	#
	movq	%rax, -8(%rbp)	# tmp66, ime
	.loc 1 1728 0
	movq	-8(%rbp), %rax	# ime, tmp67
	movq	24(%rax), %rax	# ime_4->insns, tmp68
	movq	%rax, -16(%rbp)	# tmp68, insn_list
	jmp	.L257	#
.L259:
	.loc 1 1729 0
	movq	-16(%rbp), %rax	# insn_list, tmp69
	movq	8(%rax), %rax	# insn_list_1->fld[0].rtx, D.22028
	movzwl	(%rax), %eax	# _6->code, D.22029
	movzwl	%ax, %eax	# D.22029, D.22030
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22031
	cmpb	$105, %al	#, D.22031
	jne	.L258	#,
	.loc 1 1730 0
	movq	-16(%rbp), %rax	# insn_list, tmp71
	movq	8(%rax), %rax	# insn_list_1->fld[0].rtx, D.22028
	movq	-48(%rbp), %rdi	# may_share, tmp72
	movl	-40(%rbp), %ecx	# unsignedp, tmp73
	movl	-36(%rbp), %edx	# promoted_mode, tmp74
	movq	-32(%rbp), %rsi	# var, tmp75
	movq	%rdi, %r9	# tmp72,
	movl	$1, %r8d	#,
	movq	%rax, %rdi	# D.22028,
	call	fixup_var_refs_insn	#
.L258:
	.loc 1 1728 0
	movq	-16(%rbp), %rax	# insn_list, tmp76
	movq	16(%rax), %rax	# insn_list_1->fld[1].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, insn_list
.L257:
	.loc 1 1728 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, insn_list
	jne	.L259	#,
	.loc 1 1732 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	fixup_var_refs_insns_with_hash, .-fixup_var_refs_insns_with_hash
	.type	fixup_var_refs_insn, @function
fixup_var_refs_insn:
.LFB35:
	.loc 1 1749 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# insn, insn
	movq	%rsi, -128(%rbp)	# var, var
	movl	%edx, -132(%rbp)	# promoted_mode, promoted_mode
	movl	%ecx, -136(%rbp)	# unsignedp, unsignedp
	movl	%r8d, -140(%rbp)	# toplevel, toplevel
	movq	%r9, -152(%rbp)	# no_share, no_share
	.loc 1 1750 0
	movq	$0, -80(%rbp)	#, call_dest
	.loc 1 1755 0
	movq	-120(%rbp), %rax	# insn, tmp164
	movq	56(%rax), %rax	# insn_9(D)->fld[6].rtx, tmp165
	movq	%rax, -96(%rbp)	# tmp165, note
	.loc 1 1761 0
	movq	-120(%rbp), %rax	# insn, tmp166
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movzwl	(%rax), %eax	# _11->code, D.22033
	cmpw	$49, %ax	#, D.22033
	jne	.L261	#,
	.loc 1 1762 0
	movq	-120(%rbp), %rax	# insn, tmp167
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _13->fld[0].rtx, D.22032
	cmpq	-128(%rbp), %rax	# var, D.22032
	je	.L262	#,
	.loc 1 1763 0
	movq	-120(%rbp), %rax	# insn, tmp168
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _16->fld[0].rtx, D.22032
	movzwl	(%rax), %eax	# _17->code, D.22033
	cmpw	$65, %ax	#, D.22033
	jne	.L261	#,
	.loc 1 1764 0
	movq	-120(%rbp), %rax	# insn, tmp169
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _19->fld[0].rtx, D.22032
	movq	8(%rax), %rax	# _20->fld[0].rtx, D.22032
	cmpq	-128(%rbp), %rax	# var, D.22032
	je	.L262	#,
	.loc 1 1765 0
	movq	-120(%rbp), %rax	# insn, tmp170
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _22->fld[0].rtx, D.22032
	movq	16(%rax), %rax	# _23->fld[1].rtx, D.22032
	cmpq	-128(%rbp), %rax	# var, D.22032
	jne	.L261	#,
.L262:
	.loc 1 1767 0
	movq	-120(%rbp), %rax	# insn, tmp171
	movl	$0, %edx	#,
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp171,
	call	find_reg_note	#
	movq	%rax, -96(%rbp)	# tmp172, note
	cmpq	$0, -96(%rbp)	#, note
	je	.L263	#,
	.loc 1 1771 0
	movq	-96(%rbp), %rax	# note, tmp173
	movq	8(%rax), %rax	# note_25->fld[0].rtx, D.22032
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.22032,
	call	find_reg_note	#
	movq	%rax, %rdx	#, D.22032
	movq	-96(%rbp), %rax	# note, tmp174
	movq	8(%rax), %rax	# note_25->fld[0].rtx, D.22032
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# D.22032,
	call	remove_note	#
.L263:
	.loc 1 1775 0
	movq	-120(%rbp), %rax	# insn, tmp175
	movq	%rax, %rdi	# tmp175,
	call	delete_insn	#
	jmp	.L264	#
.L261:
	.loc 1 1783 0
	cmpl	$0, -140(%rbp)	#, toplevel
	je	.L265	#,
	.loc 1 1784 0
	movq	-120(%rbp), %rax	# insn, tmp176
	movzwl	(%rax), %eax	# insn_9(D)->code, D.22033
	movzwl	%ax, %eax	# D.22033, D.22034
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22035
	cmpb	$105, %al	#, D.22035
	jne	.L266	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# insn, tmp178
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movzwl	(%rax), %eax	# _33->code, D.22033
	cmpw	$47, %ax	#, D.22033
	jne	.L267	#,
	.loc 1 1784 0 discriminator 3
	movq	-120(%rbp), %rax	# insn, tmp179
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, iftmp.96
	jmp	.L269	#
.L267:
	.loc 1 1784 0 discriminator 4
	movq	-120(%rbp), %rax	# insn, tmp180
	movq	32(%rax), %rdx	# insn_9(D)->fld[3].rtx, D.22032
	movq	-120(%rbp), %rax	# insn, tmp181
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# tmp181,
	call	single_set_2	#
	jmp	.L269	#
.L266:
	.loc 1 1784 0 discriminator 2
	movl	$0, %eax	#, iftmp.95
.L269:
	.loc 1 1784 0 discriminator 5
	movq	%rax, -72(%rbp)	# iftmp.95, set
	cmpq	$0, -72(%rbp)	#, set
	je	.L265	#,
	.loc 1 1785 0 is_stmt 1
	movq	-72(%rbp), %rax	# set, tmp182
	movq	8(%rax), %rax	# set_40->fld[0].rtx, D.22032
	cmpq	-128(%rbp), %rax	# var, D.22032
	jne	.L265	#,
	.loc 1 1788 0
	movq	-120(%rbp), %rax	# insn, tmp183
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	find_reg_note	#
	testq	%rax, %rax	# D.22032
	jne	.L265	#,
	.loc 1 1789 0
	movq	-72(%rbp), %rax	# set, tmp184
	movq	16(%rax), %rax	# set_40->fld[1].rtx, D.22032
	movq	-128(%rbp), %rdx	# var, tmp185
	movq	%rdx, %rsi	# tmp185,
	movq	%rax, %rdi	# D.22032,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22034
	jne	.L270	#,
	.loc 1 1790 0
	movq	-72(%rbp), %rax	# set, tmp186
	movq	16(%rax), %rax	# set_40->fld[1].rtx, D.22032
	movzwl	(%rax), %eax	# _45->code, D.22033
	cmpw	$61, %ax	#, D.22033
	jne	.L265	#,
	.loc 1 1791 0
	movq	-120(%rbp), %rax	# insn, tmp187
	movq	%rax, %rdi	# tmp187,
	call	prev_nonnote_insn	#
	movq	%rax, -64(%rbp)	# tmp188, prev
	cmpq	$0, -64(%rbp)	#, prev
	je	.L265	#,
	.loc 1 1792 0
	movq	-64(%rbp), %rax	# prev, tmp189
	movzwl	(%rax), %eax	# prev_47->code, D.22033
	movzwl	%ax, %eax	# D.22033, D.22034
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22035
	cmpb	$105, %al	#, D.22035
	jne	.L271	#,
	.loc 1 1792 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# prev, tmp191
	movq	32(%rax), %rax	# prev_47->fld[3].rtx, D.22032
	movzwl	(%rax), %eax	# _51->code, D.22033
	cmpw	$47, %ax	#, D.22033
	jne	.L272	#,
	.loc 1 1792 0 discriminator 3
	movq	-64(%rbp), %rax	# prev, tmp192
	movq	32(%rax), %rax	# prev_47->fld[3].rtx, iftmp.98
	jmp	.L274	#
.L272:
	.loc 1 1792 0 discriminator 4
	movq	-64(%rbp), %rax	# prev, tmp193
	movq	32(%rax), %rdx	# prev_47->fld[3].rtx, D.22032
	movq	-64(%rbp), %rax	# prev, tmp194
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# tmp194,
	call	single_set_2	#
	jmp	.L274	#
.L271:
	.loc 1 1792 0 discriminator 2
	movl	$0, %eax	#, iftmp.97
.L274:
	.loc 1 1792 0 discriminator 5
	movq	%rax, -56(%rbp)	# iftmp.97, prev_set
	cmpq	$0, -56(%rbp)	#, prev_set
	je	.L265	#,
	.loc 1 1793 0 is_stmt 1
	movq	-56(%rbp), %rax	# prev_set, tmp195
	movq	8(%rax), %rdx	# prev_set_58->fld[0].rtx, D.22032
	movq	-72(%rbp), %rax	# set, tmp196
	movq	16(%rax), %rax	# set_40->fld[1].rtx, D.22032
	cmpq	%rax, %rdx	# D.22032, D.22032
	jne	.L265	#,
	.loc 1 1794 0
	movq	-56(%rbp), %rax	# prev_set, tmp197
	movq	16(%rax), %rax	# prev_set_58->fld[1].rtx, D.22032
	movq	-128(%rbp), %rdx	# var, tmp198
	movq	%rdx, %rsi	# tmp198,
	movq	%rax, %rdi	# D.22032,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22034
	je	.L265	#,
.L270:
	.loc 1 1796 0
	movq	-120(%rbp), %rax	# insn, tmp199
	movq	%rax, %rdi	# tmp199,
	call	delete_insn	#
	jmp	.L264	#
.L265:
.LBB17:
	.loc 1 1800 0
	movq	$0, -104(%rbp)	#, replacements
	.loc 1 1801 0
	movq	-120(%rbp), %rax	# insn, tmp200
	movq	24(%rax), %rax	# insn_9(D)->fld[2].rtx, tmp201
	movq	%rax, -48(%rbp)	# tmp201, next_insn
	.loc 1 1818 0
	cmpq	$0, -80(%rbp)	#, call_dest
	je	.L275	#,
	.loc 1 1818 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# insn, tmp202
	movzwl	(%rax), %eax	# insn_9(D)->code, D.22033
	cmpw	$32, %ax	#, D.22033
	jne	.L275	#,
	.loc 1 1819 0 is_stmt 1
	movq	-120(%rbp), %rax	# insn, tmp203
	movq	32(%rax), %rdx	# insn_9(D)->fld[3].rtx, D.22032
	movq	-128(%rbp), %rax	# var, tmp204
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# tmp204,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22034
	je	.L275	#,
	.loc 1 1820 0
	movq	-120(%rbp), %rax	# insn, tmp205
	movq	32(%rax), %rdx	# insn_9(D)->fld[3].rtx, D.22032
	movq	-80(%rbp), %rax	# call_dest, tmp206
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# tmp206,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22034
	je	.L275	#,
.LBB18:
	.loc 1 1822 0
	movq	-80(%rbp), %rax	# call_dest, tmp207
	movzbl	2(%rax), %eax	# call_dest_8->mode, D.22036
	movzbl	%al, %eax	# D.22036, D.22037
	movl	%eax, %edi	# D.22037,
	call	gen_reg_rtx	#
	movq	%rax, -40(%rbp)	# tmp208, temp
	.loc 1 1824 0
	movq	-80(%rbp), %rdx	# call_dest, tmp209
	movq	-40(%rbp), %rax	# temp, tmp210
	movq	%rdx, %rsi	# tmp209,
	movq	%rax, %rdi	# tmp210,
	call	gen_move_insn	#
	movq	-120(%rbp), %rdx	# insn, tmp211
	movq	%rdx, %rsi	# tmp211,
	movq	%rax, %rdi	# D.22032,
	call	emit_insn_before	#
	.loc 1 1826 0
	movq	-120(%rbp), %rax	# insn, tmp212
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	-40(%rbp), %rdx	# temp, tmp213
	movq	-80(%rbp), %rcx	# call_dest, tmp214
	movq	%rcx, %rsi	# tmp214,
	movq	%rax, %rdi	# D.22032,
	call	replace_rtx	#
	movq	-120(%rbp), %rdx	# insn, tmp215
	movq	%rax, 32(%rdx)	# D.22032, insn_9(D)->fld[3].rtx
.L275:
.LBE18:
	.loc 1 1830 0
	movq	-120(%rbp), %rax	# insn, tmp216
	movzwl	(%rax), %eax	# insn_9(D)->code, D.22033
	cmpw	$34, %ax	#, D.22033
	jne	.L276	#,
	.loc 1 1831 0
	movq	-120(%rbp), %rax	# insn, tmp217
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movzwl	(%rax), %eax	# _76->code, D.22033
	cmpw	$47, %ax	#, D.22033
	jne	.L276	#,
	.loc 1 1832 0
	movq	-120(%rbp), %rax	# insn, tmp218
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _78->fld[0].rtx, tmp219
	movq	%rax, -80(%rbp)	# tmp219, call_dest
	jmp	.L277	#
.L276:
	.loc 1 1833 0
	movq	-120(%rbp), %rax	# insn, tmp220
	movzwl	(%rax), %eax	# insn_9(D)->code, D.22033
	cmpw	$34, %ax	#, D.22033
	jne	.L278	#,
	.loc 1 1834 0
	movq	-120(%rbp), %rax	# insn, tmp221
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movzwl	(%rax), %eax	# _81->code, D.22033
	cmpw	$39, %ax	#, D.22033
	jne	.L278	#,
	.loc 1 1835 0
	movq	-120(%rbp), %rax	# insn, tmp222
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _83->fld[0].rtvec, D.22038
	movq	8(%rax), %rax	# _84->elem, D.22032
	movzwl	(%rax), %eax	# _85->code, D.22033
	cmpw	$47, %ax	#, D.22033
	jne	.L278	#,
	.loc 1 1836 0
	movq	-120(%rbp), %rax	# insn, tmp223
	movq	32(%rax), %rax	# insn_9(D)->fld[3].rtx, D.22032
	movq	8(%rax), %rax	# _87->fld[0].rtvec, D.22038
	movq	8(%rax), %rax	# _88->elem, D.22032
	movq	8(%rax), %rax	# _89->fld[0].rtx, tmp224
	movq	%rax, -80(%rbp)	# tmp224, call_dest
	jmp	.L277	#
.L278:
	.loc 1 1838 0
	movq	$0, -80(%rbp)	#, call_dest
.L277:
	.loc 1 1852 0
	movq	-120(%rbp), %rax	# insn, tmp225
	leaq	32(%rax), %rdi	#, D.22039
	movq	-152(%rbp), %r8	# no_share, tmp226
	leaq	-104(%rbp), %rcx	#, tmp227
	movq	-120(%rbp), %rdx	# insn, tmp228
	movl	-132(%rbp), %esi	# promoted_mode, tmp229
	movq	-128(%rbp), %rax	# var, tmp230
	movq	%r8, %r9	# tmp226,
	movq	%rcx, %r8	# tmp227,
	movq	%rdx, %rcx	# tmp228,
	movq	%rdi, %rdx	# D.22039,
	movq	%rax, %rdi	# tmp230,
	call	fixup_var_refs_1	#
	.loc 1 1858 0
	movq	cfun(%rip), %rax	# cfun, cfun.99
	movq	296(%rax), %rax	# cfun.99_95->x_last_parm_insn, D.22032
	cmpq	-120(%rbp), %rax	# insn, D.22032
	jne	.L279	#,
	.loc 1 1859 0
	movq	cfun(%rip), %rax	# cfun, cfun.100
	movq	-48(%rbp), %rdx	# next_insn, tmp231
	movq	16(%rdx), %rdx	# next_insn_63->fld[1].rtx, D.22032
	movq	%rdx, 296(%rax)	# D.22032, cfun.100_97->x_last_parm_insn
	.loc 1 1861 0
	jmp	.L280	#
.L279:
	jmp	.L280	#
.L286:
.LBB19:
	.loc 1 1865 0
	movq	-104(%rbp), %rax	# replacements, replacements.101
	movq	8(%rax), %rax	# replacements.101_100->new, D.22032
	movzwl	(%rax), %eax	# _101->code, D.22033
	cmpw	$61, %ax	#, D.22033
	jne	.L281	#,
.LBB20:
	.loc 1 1871 0
	movq	-104(%rbp), %rax	# replacements, replacements.102
	movq	(%rax), %rax	# replacements.102_103->old, D.22032
	movzwl	(%rax), %eax	# _104->code, D.22033
	cmpw	$63, %ax	#, D.22033
	jne	.L282	#,
	.loc 1 1872 0
	movq	-104(%rbp), %rbx	# replacements, replacements.103
	.loc 1 1873 0
	movq	-104(%rbp), %rax	# replacements, replacements.104
	movq	(%rax), %rax	# replacements.104_107->old, D.22032
	movl	-132(%rbp), %edx	# promoted_mode, tmp232
	movq	-120(%rbp), %rsi	# insn, tmp233
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.22032,
	call	fixup_memory_subreg	#
	movq	%rax, (%rbx)	# D.22032, replacements.103_106->old
	jmp	.L283	#
.L282:
	.loc 1 1876 0
	movq	-104(%rbp), %rbx	# replacements, replacements.105
	.loc 1 1877 0
	movq	-104(%rbp), %rax	# replacements, replacements.106
	movq	(%rax), %rax	# replacements.106_111->old, D.22032
	movq	-120(%rbp), %rdx	# insn, tmp234
	movq	%rdx, %rsi	# tmp234,
	movq	%rax, %rdi	# D.22032,
	call	fixup_stack_1	#
	movq	%rax, (%rbx)	# D.22032, replacements.105_110->old
.L283:
	.loc 1 1879 0
	movq	-120(%rbp), %rax	# insn, tmp235
	movq	%rax, -32(%rbp)	# tmp235, insert_before
	.loc 1 1885 0
	movq	-104(%rbp), %rax	# replacements, replacements.107
	movq	8(%rax), %rax	# replacements.107_115->new, D.22032
	movzbl	2(%rax), %edx	# _116->mode, D.22036
	.loc 1 1886 0
	movq	-104(%rbp), %rax	# replacements, replacements.108
	movq	(%rax), %rax	# replacements.108_118->old, D.22032
	movzbl	2(%rax), %eax	# _119->mode, D.22036
	.loc 1 1885 0
	cmpb	%al, %dl	# D.22036, D.22036
	je	.L284	#,
	.loc 1 1888 0
	call	start_sequence	#
	.loc 1 1890 0
	movq	-104(%rbp), %rax	# replacements, replacements.109
	.loc 1 1889 0
	movq	(%rax), %rcx	# replacements.109_121->old, D.22032
	movq	-104(%rbp), %rax	# replacements, replacements.110
	movq	8(%rax), %rax	# replacements.110_123->new, D.22032
	movl	-136(%rbp), %edx	# unsignedp, tmp236
	movq	%rcx, %rsi	# D.22032,
	movq	%rax, %rdi	# D.22032,
	call	convert_move	#
	.loc 1 1891 0
	call	gen_sequence	#
	movq	%rax, -88(%rbp)	# tmp237, seq
	.loc 1 1892 0
	call	end_sequence	#
	jmp	.L285	#
.L284:
	.loc 1 1896 0
	movq	-104(%rbp), %rax	# replacements, replacements.111
	.loc 1 1895 0
	movq	(%rax), %rdx	# replacements.111_127->old, D.22032
	movq	-104(%rbp), %rax	# replacements, replacements.112
	movq	8(%rax), %rax	# replacements.112_129->new, D.22032
	movq	%rdx, %rsi	# D.22032,
	movq	%rax, %rdi	# D.22032,
	call	gen_move_insn	#
	movq	%rax, -88(%rbp)	# tmp238, seq
.L285:
	.loc 1 1898 0
	movq	-32(%rbp), %rdx	# insert_before, tmp239
	movq	-88(%rbp), %rax	# seq, tmp240
	movq	%rdx, %rsi	# tmp239,
	movq	%rax, %rdi	# tmp240,
	call	emit_insn_before	#
.L281:
.LBE20:
	.loc 1 1901 0
	movq	-104(%rbp), %rax	# replacements, replacements.113
	movq	16(%rax), %rax	# replacements.113_132->next, tmp241
	movq	%rax, -24(%rbp)	# tmp241, next
	.loc 1 1902 0
	movq	-104(%rbp), %rax	# replacements, replacements.114
	movq	%rax, %rdi	# replacements.114,
	call	free	#
	.loc 1 1903 0
	movq	-24(%rbp), %rax	# next, tmp242
	movq	%rax, -104(%rbp)	# tmp242, replacements
.L280:
.LBE19:
	.loc 1 1861 0 discriminator 1
	movq	-104(%rbp), %rax	# replacements, replacements.115
	testq	%rax, %rax	# replacements.115
	jne	.L286	#,
.LBE17:
	.loc 1 1910 0
	jmp	.L287	#
.L264:
	jmp	.L287	#
.L289:
	.loc 1 1912 0
	movq	-96(%rbp), %rax	# note, tmp243
	movzwl	(%rax), %eax	# note_2->code, D.22033
	cmpw	$4, %ax	#, D.22033
	je	.L288	#,
	.loc 1 1914 0
	movq	-96(%rbp), %rax	# note, tmp244
	movq	8(%rax), %rax	# note_2->fld[0].rtx, D.22032
	movl	-132(%rbp), %edx	# promoted_mode, tmp245
	movq	-120(%rbp), %rsi	# insn, tmp246
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# D.22032,
	call	walk_fixup_memory_subreg	#
	movq	-96(%rbp), %rdx	# note, tmp247
	movq	%rax, 8(%rdx)	# D.22032, note_2->fld[0].rtx
.L288:
	.loc 1 1916 0
	movq	-96(%rbp), %rax	# note, tmp248
	movq	16(%rax), %rax	# note_2->fld[1].rtx, tmp249
	movq	%rax, -96(%rbp)	# tmp249, note
.L287:
	.loc 1 1910 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, note
	jne	.L289	#,
	.loc 1 1918 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	fixup_var_refs_insn, .-fixup_var_refs_insn
	.type	fixup_var_refs_1, @function
fixup_var_refs_1:
.LFB36:
	.loc 1 1939 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rdi, -264(%rbp)	# var, var
	movl	%esi, -268(%rbp)	# promoted_mode, promoted_mode
	movq	%rdx, -280(%rbp)	# loc, loc
	movq	%rcx, -288(%rbp)	# insn, insn
	movq	%r8, -296(%rbp)	# replacements, replacements
	movq	%r9, -304(%rbp)	# no_share, no_share
	.loc 1 1941 0
	movq	-280(%rbp), %rax	# loc, tmp376
	movq	(%rax), %rax	# *loc_28(D), tmp377
	movq	%rax, -208(%rbp)	# tmp377, x
	.loc 1 1942 0
	movq	-208(%rbp), %rax	# x, tmp378
	movzwl	(%rax), %eax	# x_29->code, D.22040
	movzwl	%ax, %eax	# D.22040, tmp379
	movl	%eax, -244(%rbp)	# tmp379, code
	.loc 1 1947 0
	movl	-244(%rbp), %eax	# code, tmp381
	subl	$47, %eax	#, tmp380
	cmpl	$86, %eax	#, tmp380
	ja	.L398	#,
	movl	%eax, %eax	# tmp380, tmp382
	movq	.L293(,%rax,8), %rax	#, tmp383
	jmp	*%rax	# tmp383
	.section	.rodata
	.align 8
	.align 4
.L293:
	.quad	.L292
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L399
	.quad	.L399
	.quad	.L399
	.quad	.L398
	.quad	.L399
	.quad	.L399
	.quad	.L398
	.quad	.L399
	.quad	.L398
	.quad	.L295
	.quad	.L398
	.quad	.L398
	.quad	.L296
	.quad	.L399
	.quad	.L399
	.quad	.L399
	.quad	.L297
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L398
	.quad	.L298
	.quad	.L298
	.text
.L297:
	.loc 1 1950 0
	movq	-208(%rbp), %rax	# x, tmp384
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L299	#,
.LBB21:
	.loc 1 1953 0
	movq	-264(%rbp), %rax	# var, tmp385
	movq	8(%rax), %rax	# var_33(D)->fld[0].rtx, D.22041
	movq	%rax, %rdi	# D.22041,
	call	copy_rtx	#
	movq	%rax, -160(%rbp)	# tmp386, sub
	.loc 1 1955 0
	movq	-160(%rbp), %rdx	# sub, tmp387
	movq	-280(%rbp), %rsi	# loc, tmp388
	movq	-288(%rbp), %rax	# insn, tmp389
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp389,
	call	validate_change	#
	testl	%eax, %eax	# D.22042
	jne	.L299	#,
.LBB22:
	.loc 1 1957 0
	movq	-160(%rbp), %rax	# sub, tmp390
	movzbl	2(%rax), %eax	# sub_35->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	%rax, -152(%rbp)	# tmp391, y
	.loc 1 1963 0
	movq	-280(%rbp), %rax	# loc, tmp392
	movq	(%rax), %rax	# *loc_28(D), D.22041
	movq	-288(%rbp), %rdx	# insn, tmp393
	movq	-152(%rbp), %rcx	# y, tmp394
	movq	%rcx, %rsi	# tmp394,
	movq	%rax, %rdi	# D.22041,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22042
	jne	.L300	#,
	.loc 1 1964 0
	movl	$__FUNCTION__.14125, %edx	#,
	movl	$1964, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L300:
	.loc 1 1971 0
	call	start_sequence	#
	.loc 1 1972 0
	movq	-160(%rbp), %rdx	# sub, tmp395
	movq	-152(%rbp), %rax	# y, tmp396
	movq	%rdx, %rcx	# tmp395,
	movq	%rax, %rdx	# tmp396,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.22041,
	call	emit_insn	#
	movq	%rax, -144(%rbp)	# tmp397, new_insn
	.loc 1 1973 0
	call	gen_sequence	#
	movq	%rax, -192(%rbp)	# tmp398, seq
	.loc 1 1974 0
	call	end_sequence	#
	.loc 1 1976 0
	movq	-144(%rbp), %rax	# new_insn, tmp399
	movl	40(%rax), %eax	# new_insn_44->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L301	#,
	.loc 1 1976 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# new_insn, tmp400
	movl	40(%rax), %eax	# new_insn_44->fld[4].rtint, D.22042
	shrl	$31, %eax	#, tmp401
	jmp	.L302	#
.L301:
	.loc 1 1976 0 discriminator 2
	movq	-144(%rbp), %rax	# new_insn, tmp402
	movq	%rax, %rdi	# tmp402,
	call	recog_memoized_1	#
	shrl	$31, %eax	#, tmp403
.L302:
	.loc 1 1976 0 discriminator 3
	testb	%al, %al	# iftmp.116
	je	.L303	#,
	.loc 1 1980 0 is_stmt 1
	call	start_sequence	#
	.loc 1 1981 0
	movq	-152(%rbp), %rdx	# y, tmp404
	movq	-160(%rbp), %rax	# sub, tmp405
	movq	%rdx, %rsi	# tmp404,
	movq	%rax, %rdi	# tmp405,
	call	force_operand	#
	movq	%rax, -160(%rbp)	# tmp406, sub
	.loc 1 1982 0
	movq	-160(%rbp), %rax	# sub, tmp407
	cmpq	-152(%rbp), %rax	# y, tmp407
	je	.L304	#,
	.loc 1 1983 0
	movq	-160(%rbp), %rdx	# sub, tmp408
	movq	-152(%rbp), %rax	# y, tmp409
	movq	%rdx, %rsi	# tmp408,
	movq	%rax, %rdi	# tmp409,
	call	gen_move_insn	#
	movq	%rax, %rdi	# D.22041,
	call	emit_insn	#
.L304:
	.loc 1 1984 0
	call	gen_sequence	#
	movq	%rax, -192(%rbp)	# tmp410, seq
	.loc 1 1985 0
	call	end_sequence	#
.L303:
	.loc 1 1994 0
	movq	-288(%rbp), %rdx	# insn, tmp411
	movq	-192(%rbp), %rax	# seq, tmp412
	movq	%rdx, %rsi	# tmp411,
	movq	%rax, %rdi	# tmp412,
	call	emit_insn_before	#
.LBE22:
.LBE21:
	.loc 1 1997 0
	jmp	.L290	#
.L299:
	jmp	.L290	#
.L296:
	.loc 1 2000 0
	movq	-264(%rbp), %rax	# var, tmp413
	cmpq	-208(%rbp), %rax	# x, tmp413
	jne	.L306	#,
	.loc 1 2005 0
	movq	-264(%rbp), %rdx	# var, tmp414
	movq	-296(%rbp), %rax	# replacements, tmp415
	movq	%rdx, %rsi	# tmp414,
	movq	%rax, %rdi	# tmp415,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp416, replacement
	.loc 1 2006 0
	movq	-136(%rbp), %rax	# replacement, tmp417
	movq	8(%rax), %rax	# replacement_55->new, D.22041
	testq	%rax, %rax	# D.22041
	je	.L307	#,
	.loc 1 2008 0
	movq	-136(%rbp), %rax	# replacement, tmp418
	movq	8(%rax), %rdx	# replacement_55->new, D.22041
	movq	-280(%rbp), %rax	# loc, tmp419
	movq	%rdx, (%rax)	# D.22041, *loc_28(D)
	.loc 1 2009 0
	jmp	.L290	#
.L307:
	.loc 1 2012 0
	movq	-288(%rbp), %rdx	# insn, tmp420
	movq	-208(%rbp), %rax	# x, tmp421
	movq	%rdx, %rsi	# tmp420,
	movq	%rax, %rdi	# tmp421,
	call	fixup_stack_1	#
	movq	%rax, -208(%rbp)	# tmp422, x
	movq	-136(%rbp), %rax	# replacement, tmp423
	movq	-208(%rbp), %rdx	# x, tmp424
	movq	%rdx, 8(%rax)	# tmp424, replacement_55->new
	movq	-136(%rbp), %rax	# replacement, tmp425
	movq	8(%rax), %rdx	# replacement_55->new, D.22041
	movq	-280(%rbp), %rax	# loc, tmp426
	movq	%rdx, (%rax)	# D.22041, *loc_28(D)
	.loc 1 2017 0
	movq	-288(%rbp), %rax	# insn, tmp427
	movl	$-1, 40(%rax)	#, insn_36(D)->fld[4].rtint
	.loc 1 2018 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.117
	testl	%eax, %eax	# flag_force_mem.117
	jne	.L308	#,
	.loc 1 2018 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# x, tmp428
	movzbl	2(%rax), %eax	# x_58->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22045
	cmpl	-268(%rbp), %eax	# promoted_mode, D.22045
	jne	.L308	#,
	.loc 1 2019 0 is_stmt 1
	movq	-288(%rbp), %rax	# insn, tmp429
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L309	#,
	.loc 1 2019 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp430
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp431
	shrl	$31, %eax	#, tmp432
	jmp	.L310	#
.L309:
	.loc 1 2019 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp433
	movq	%rax, %rdi	# tmp433,
	call	recog_memoized_1	#
	notl	%eax	# tmp434
	shrl	$31, %eax	#, tmp435
.L310:
	.loc 1 2019 0 discriminator 3
	testb	%al, %al	# iftmp.118
	je	.L308	#,
	.loc 1 2020 0 is_stmt 1
	jmp	.L290	#
.L308:
	.loc 1 2022 0
	movl	-268(%rbp), %eax	# promoted_mode, tmp436
	movl	%eax, %edi	# tmp436,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp437
	movq	%rax, 8(%rdx)	# D.22041, replacement_55->new
	movq	-136(%rbp), %rax	# replacement, tmp438
	movq	8(%rax), %rdx	# replacement_55->new, D.22041
	movq	-280(%rbp), %rax	# loc, tmp439
	movq	%rdx, (%rax)	# D.22041, *loc_28(D)
	.loc 1 2023 0
	jmp	.L290	#
.L306:
	.loc 1 2031 0
	movq	-208(%rbp), %rdx	# x, tmp440
	movq	-264(%rbp), %rax	# var, tmp441
	movq	%rdx, %rsi	# tmp440,
	movq	%rax, %rdi	# tmp441,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22042
	je	.L311	#,
	.loc 1 2033 0
	movq	-208(%rbp), %rdx	# x, tmp442
	movq	-296(%rbp), %rax	# replacements, tmp443
	movq	%rdx, %rsi	# tmp442,
	movq	%rax, %rdi	# tmp443,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp444, replacement
	.loc 1 2034 0
	movq	-136(%rbp), %rax	# replacement, tmp445
	movq	8(%rax), %rax	# replacement_72->new, D.22041
	testq	%rax, %rax	# D.22041
	jne	.L312	#,
	.loc 1 2035 0
	movq	-304(%rbp), %rdx	# no_share, tmp446
	movq	-208(%rbp), %rax	# x, tmp447
	movq	%rdx, %rsi	# tmp446,
	movq	%rax, %rdi	# tmp447,
	call	copy_most_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp448
	movq	%rax, 8(%rdx)	# D.22041, replacement_72->new
.L312:
	.loc 1 2037 0
	movq	-136(%rbp), %rax	# replacement, tmp449
	movq	8(%rax), %rax	# replacement_72->new, tmp450
	movq	%rax, -208(%rbp)	# tmp450, x
	movq	-280(%rbp), %rax	# loc, tmp451
	movq	-208(%rbp), %rdx	# x, tmp452
	movq	%rdx, (%rax)	# tmp452, *loc_28(D)
	.loc 1 2038 0
	movq	-208(%rbp), %rax	# x, tmp453
	movzwl	(%rax), %eax	# x_76->code, D.22040
	movzwl	%ax, %eax	# D.22040, tmp454
	movl	%eax, -244(%rbp)	# tmp454, code
	.loc 1 2040 0
	jmp	.L313	#
.L311:
	jmp	.L313	#
.L298:
	.loc 1 2057 0
	movq	-208(%rbp), %rax	# x, tmp455
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	je	.L314	#,
	.loc 1 2058 0
	movq	-208(%rbp), %rax	# x, tmp456
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _80->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L315	#,
	.loc 1 2059 0
	movq	-208(%rbp), %rax	# x, tmp457
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _82->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L315	#,
.L314:
	.loc 1 2066 0
	movq	-208(%rbp), %rax	# x, tmp458
	movq	8(%rax), %rax	# x_29->fld[0].rtx, tmp459
	movq	%rax, -200(%rbp)	# tmp459, tem
	.loc 1 2067 0
	movq	-200(%rbp), %rax	# tem, tmp460
	movzwl	(%rax), %eax	# tem_84->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L316	#,
	.loc 1 2069 0
	movq	-200(%rbp), %rax	# tem, tmp461
	movzbl	2(%rax), %eax	# tem_84->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.22040
	.loc 1 2070 0
	movq	-264(%rbp), %rax	# var, tmp463
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22040
	.loc 1 2069 0
	cmpw	%ax, %dx	# D.22040, D.22040
	jbe	.L317	#,
	.loc 1 2072 0
	movq	-264(%rbp), %rdx	# var, tmp465
	movq	-296(%rbp), %rax	# replacements, tmp466
	movq	%rdx, %rsi	# tmp465,
	movq	%rax, %rdi	# tmp466,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp467, replacement
	.loc 1 2073 0
	movq	-136(%rbp), %rax	# replacement, tmp468
	movq	8(%rax), %rax	# replacement_92->new, D.22041
	testq	%rax, %rax	# D.22041
	jne	.L318	#,
	.loc 1 2074 0
	movq	-264(%rbp), %rax	# var, tmp469
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp470
	movq	%rax, 8(%rdx)	# D.22041, replacement_92->new
.L318:
	.loc 1 2075 0
	movq	-136(%rbp), %rax	# replacement, tmp471
	movq	8(%rax), %rdx	# replacement_92->new, D.22041
	movq	-200(%rbp), %rax	# tem, tmp472
	movq	%rdx, 8(%rax)	# D.22041, tem_84->fld[0].rtx
	.loc 1 2082 0
	movq	-208(%rbp), %rax	# x, tmp473
	movq	-200(%rbp), %rdx	# tem, tmp474
	movq	%rdx, 8(%rax)	# tmp474, x_29->fld[0].rtx
	.loc 1 2083 0
	jmp	.L290	#
.L317:
	.loc 1 2086 0
	movl	-268(%rbp), %edx	# promoted_mode, tmp475
	movq	-288(%rbp), %rsi	# insn, tmp476
	movq	-200(%rbp), %rax	# tem, tmp477
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp477,
	call	fixup_memory_subreg	#
	movq	%rax, -200(%rbp)	# tmp478, tem
	jmp	.L319	#
.L316:
	.loc 1 2089 0
	movq	-288(%rbp), %rdx	# insn, tmp479
	movq	-200(%rbp), %rax	# tem, tmp480
	movq	%rdx, %rsi	# tmp479,
	movq	%rax, %rdi	# tmp480,
	call	fixup_stack_1	#
	movq	%rax, -200(%rbp)	# tmp481, tem
.L319:
	.loc 1 2095 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.119
	testl	%eax, %eax	# flag_force_mem.119
	jne	.L320	#,
	.loc 1 2095 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# x, tmp482
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _101->code, D.22040
	cmpw	$54, %ax	#, D.22040
	jne	.L320	#,
	.loc 1 2096 0 is_stmt 1
	movq	-208(%rbp), %rax	# x, tmp483
	movq	24(%rax), %rax	# x_29->fld[2].rtx, D.22041
	movzwl	(%rax), %eax	# _103->code, D.22040
	cmpw	$54, %ax	#, D.22040
	jne	.L320	#,
	.loc 1 2097 0
	movq	-200(%rbp), %rax	# tem, tmp484
	movq	8(%rax), %rax	# tem_6->fld[0].rtx, D.22041
	movq	%rax, %rdi	# D.22041,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.22042
	jne	.L320	#,
	.loc 1 2098 0
	movq	-200(%rbp), %rax	# tem, tmp485
	movzbl	3(%rax), %eax	# *tem_6, D.22043
	andl	$8, %eax	#, D.22043
	testb	%al, %al	# D.22043
	jne	.L320	#,
.LBB23:
	.loc 1 2100 0
	movl	$0, -240(%rbp)	#, wanted_mode
	.loc 1 2101 0
	movq	-200(%rbp), %rax	# tem, tmp486
	movzbl	2(%rax), %eax	# tem_6->mode, D.22043
	movzbl	%al, %eax	# D.22043, tmp487
	movl	%eax, -228(%rbp)	# tmp487, is_mode
	.loc 1 2102 0
	movq	-208(%rbp), %rax	# x, tmp488
	movq	24(%rax), %rax	# x_29->fld[2].rtx, D.22041
	movq	8(%rax), %rax	# _112->fld[0].rtwint, tmp489
	movq	%rax, -128(%rbp)	# tmp489, pos
	.loc 1 2104 0
	movq	-208(%rbp), %rax	# x, tmp490
	movzwl	(%rax), %eax	# x_29->code, D.22040
	cmpw	$133, %ax	#, D.22040
	jne	.L321	#,
.LBB24:
	.loc 1 2106 0
	movl	$1, %esi	#,
	movl	$2, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -224(%rbp)	# tmp491, new_mode
	.loc 1 2108 0
	cmpl	$59, -224(%rbp)	#, new_mode
	je	.L322	#,
	.loc 1 2109 0
	movl	-224(%rbp), %eax	# new_mode, tmp492
	movl	%eax, -240(%rbp)	# tmp492, wanted_mode
.LBE24:
	jmp	.L323	#
.L322:
	jmp	.L323	#
.L321:
	.loc 1 2111 0
	movq	-208(%rbp), %rax	# x, tmp493
	movzwl	(%rax), %eax	# x_29->code, D.22040
	cmpw	$132, %ax	#, D.22040
	jne	.L323	#,
.LBB25:
	.loc 1 2113 0
	movl	$1, %esi	#,
	movl	$1, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -220(%rbp)	# tmp494, new_mode
	.loc 1 2115 0
	cmpl	$59, -220(%rbp)	#, new_mode
	je	.L323	#,
	.loc 1 2116 0
	movl	-220(%rbp), %eax	# new_mode, tmp495
	movl	%eax, -240(%rbp)	# tmp495, wanted_mode
.L323:
.LBE25:
	.loc 1 2120 0
	cmpl	$0, -240(%rbp)	#, wanted_mode
	je	.L320	#,
	.loc 1 2121 0
	movl	-240(%rbp), %eax	# wanted_mode, wanted_mode.120
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	movl	-228(%rbp), %eax	# is_mode, is_mode.121
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	cmpb	%al, %dl	# D.22043, D.22043
	jae	.L320	#,
.LBB26:
	.loc 1 2123 0
	movq	-128(%rbp), %rax	# pos, tmp499
	leaq	7(%rax), %rdx	#, tmp501
	testq	%rax, %rax	# tmp500
	cmovs	%rdx, %rax	# tmp501,, tmp500
	sarq	$3, %rax	#, tmp502
	movq	%rax, -120(%rbp)	# tmp502, offset
	.loc 1 2124 0
	movq	-208(%rbp), %rax	# x, tmp503
	movq	24(%rax), %rax	# x_29->fld[2].rtx, tmp504
	movq	%rax, -112(%rbp)	# tmp504, old_pos
	.loc 1 2133 0
	movl	-240(%rbp), %eax	# wanted_mode, wanted_mode.124
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22040
	movzwl	%ax, %ecx	# D.22040, D.22046
	movq	-128(%rbp), %rax	# pos, tmp507
	cqto
	idivq	%rcx	# D.22046
	movq	%rdx, -128(%rbp)	# tmp508, pos
	.loc 1 2135 0
	movq	-120(%rbp), %rdx	# offset, tmp510
	movl	-240(%rbp), %esi	# wanted_mode, tmp511
	movq	-200(%rbp), %rax	# tem, tmp512
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp512,
	call	adjust_address_1	#
	movq	%rax, -104(%rbp)	# tmp513, newmem
	.loc 1 2138 0
	movq	-288(%rbp), %rax	# insn, tmp514
	movl	$-1, 40(%rax)	#, insn_36(D)->fld[4].rtint
	.loc 1 2139 0
	movq	-208(%rbp), %rax	# x, tmp515
	movq	-104(%rbp), %rdx	# newmem, tmp516
	movq	%rdx, 8(%rax)	# tmp516, x_29->fld[0].rtx
	.loc 1 2140 0
	movq	-128(%rbp), %rax	# pos, tmp517
	movq	%rax, %rsi	# tmp517,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-208(%rbp), %rdx	# x, tmp518
	movq	%rax, 24(%rdx)	# D.22041, x_29->fld[2].rtx
	.loc 1 2142 0
	movq	-288(%rbp), %rax	# insn, tmp519
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L324	#,
	.loc 1 2142 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp520
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp521
	shrl	$31, %eax	#, tmp522
	jmp	.L325	#
.L324:
	.loc 1 2142 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp523
	movq	%rax, %rdi	# tmp523,
	call	recog_memoized_1	#
	notl	%eax	# tmp524
	shrl	$31, %eax	#, tmp525
.L325:
	.loc 1 2142 0 discriminator 3
	testb	%al, %al	# iftmp.125
	je	.L326	#,
	.loc 1 2143 0 is_stmt 1
	jmp	.L290	#
.L326:
	.loc 1 2147 0
	movq	-208(%rbp), %rax	# x, tmp526
	movq	-112(%rbp), %rdx	# old_pos, tmp527
	movq	%rdx, 24(%rax)	# tmp527, x_29->fld[2].rtx
.L320:
.LBE26:
.LBE23:
	.loc 1 2154 0
	movq	-200(%rbp), %rax	# tem, tmp528
	movzbl	2(%rax), %eax	# tem_6->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp529, tem1
	.loc 1 2155 0
	movq	-200(%rbp), %rdx	# tem, tmp530
	movq	-96(%rbp), %rax	# tem1, tmp531
	movq	%rdx, %rsi	# tmp530,
	movq	%rax, %rdi	# tmp531,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp532
	movq	%rdx, %rsi	# tmp532,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_before	#
	.loc 1 2156 0
	movq	-208(%rbp), %rax	# x, tmp533
	movq	-96(%rbp), %rdx	# tem1, tmp534
	movq	%rdx, 8(%rax)	# tmp534, x_29->fld[0].rtx
	.loc 1 2157 0
	jmp	.L290	#
.L315:
	.loc 1 2159 0
	jmp	.L313	#
.L295:
	.loc 1 2162 0
	movq	-208(%rbp), %rax	# x, tmp535
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L327	#,
	.loc 1 2169 0
	movq	-208(%rbp), %rax	# x, tmp536
	movzbl	3(%rax), %eax	# *x_29, D.22043
	andl	$16, %eax	#, D.22043
	testb	%al, %al	# D.22043
	je	.L328	#,
	.loc 1 2171 0
	movq	-280(%rbp), %rax	# loc, tmp537
	movq	-264(%rbp), %rdx	# var, tmp538
	movq	%rdx, (%rax)	# tmp538, *loc_28(D)
	.loc 1 2172 0
	movq	-264(%rbp), %rax	# var, tmp539
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %esi	# D.22043, D.22044
	movq	-304(%rbp), %r8	# no_share, tmp540
	movq	-296(%rbp), %rdi	# replacements, tmp541
	movq	-288(%rbp), %rcx	# insn, tmp542
	movq	-280(%rbp), %rdx	# loc, tmp543
	movq	-264(%rbp), %rax	# var, tmp544
	movq	%r8, %r9	# tmp540,
	movq	%rdi, %r8	# tmp541,
	movq	%rax, %rdi	# tmp544,
	call	fixup_var_refs_1	#
	.loc 1 2174 0
	jmp	.L290	#
.L328:
	.loc 1 2181 0
	movq	-208(%rbp), %rax	# x, tmp545
	movzbl	2(%rax), %eax	# x_29->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	movq	-264(%rbp), %rax	# var, tmp547
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	cmpb	%al, %dl	# D.22043, D.22043
	jbe	.L329	#,
	.loc 1 2183 0
	movq	-264(%rbp), %rdx	# var, tmp549
	movq	-296(%rbp), %rax	# replacements, tmp550
	movq	%rdx, %rsi	# tmp549,
	movq	%rax, %rdi	# tmp550,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp551, replacement
	.loc 1 2184 0
	movq	-136(%rbp), %rax	# replacement, tmp552
	movq	8(%rax), %rax	# replacement_152->new, D.22041
	testq	%rax, %rax	# D.22041
	jne	.L330	#,
	.loc 1 2185 0
	movl	-268(%rbp), %eax	# promoted_mode, tmp553
	movl	%eax, %edi	# tmp553,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp554
	movq	%rax, 8(%rdx)	# D.22041, replacement_152->new
.L330:
	.loc 1 2186 0
	movq	-136(%rbp), %rax	# replacement, tmp555
	movq	8(%rax), %rdx	# replacement_152->new, D.22041
	movq	-208(%rbp), %rax	# x, tmp556
	movq	%rdx, 8(%rax)	# D.22041, x_29->fld[0].rtx
	.loc 1 2187 0
	jmp	.L290	#
.L329:
	.loc 1 2194 0
	movq	-208(%rbp), %rdx	# x, tmp557
	movq	-296(%rbp), %rax	# replacements, tmp558
	movq	%rdx, %rsi	# tmp557,
	movq	%rax, %rdi	# tmp558,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp559, replacement
	.loc 1 2195 0
	movq	-136(%rbp), %rax	# replacement, tmp560
	movq	8(%rax), %rax	# replacement_156->new, D.22041
	testq	%rax, %rax	# D.22041
	je	.L331	#,
	.loc 1 2197 0
	movq	-136(%rbp), %rax	# replacement, tmp561
	movq	8(%rax), %rdx	# replacement_156->new, D.22041
	movq	-280(%rbp), %rax	# loc, tmp562
	movq	%rdx, (%rax)	# D.22041, *loc_28(D)
	.loc 1 2198 0
	jmp	.L290	#
.L331:
	.loc 1 2201 0
	movl	-268(%rbp), %edx	# promoted_mode, tmp563
	movq	-288(%rbp), %rsi	# insn, tmp564
	movq	-208(%rbp), %rax	# x, tmp565
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp565,
	call	fixup_memory_subreg	#
	movq	-280(%rbp), %rdx	# loc, tmp566
	movq	%rax, (%rdx)	# D.22041, *loc_28(D)
	movq	-280(%rbp), %rax	# loc, tmp567
	movq	(%rax), %rdx	# *loc_28(D), D.22041
	movq	-136(%rbp), %rax	# replacement, tmp568
	movq	%rdx, 8(%rax)	# D.22041, replacement_156->new
	.loc 1 2204 0
	movq	-288(%rbp), %rax	# insn, tmp569
	movl	$-1, 40(%rax)	#, insn_36(D)->fld[4].rtint
	.loc 1 2205 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.126
	testl	%eax, %eax	# flag_force_mem.126
	jne	.L332	#,
	.loc 1 2205 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp570
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L333	#,
	movq	-288(%rbp), %rax	# insn, tmp571
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp572
	shrl	$31, %eax	#, tmp573
	jmp	.L334	#
.L333:
	.loc 1 2205 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp574
	movq	%rax, %rdi	# tmp574,
	call	recog_memoized_1	#
	notl	%eax	# tmp575
	shrl	$31, %eax	#, tmp576
.L334:
	.loc 1 2205 0 discriminator 3
	testb	%al, %al	# iftmp.127
	je	.L332	#,
	.loc 1 2206 0 is_stmt 1
	jmp	.L290	#
.L332:
	.loc 1 2208 0
	movq	-208(%rbp), %rax	# x, tmp577
	movzbl	2(%rax), %eax	# x_29->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp578
	movq	%rax, 8(%rdx)	# D.22041, replacement_156->new
	movq	-136(%rbp), %rax	# replacement, tmp579
	movq	8(%rax), %rdx	# replacement_156->new, D.22041
	movq	-280(%rbp), %rax	# loc, tmp580
	movq	%rdx, (%rax)	# D.22041, *loc_28(D)
	.loc 1 2209 0
	jmp	.L290	#
.L327:
	.loc 1 2211 0
	jmp	.L313	#
.L292:
	.loc 1 2215 0
	movq	-208(%rbp), %rax	# x, tmp581
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _171->code, D.22040
	cmpw	$132, %ax	#, D.22040
	je	.L335	#,
	.loc 1 2216 0
	movq	-208(%rbp), %rax	# x, tmp582
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _173->code, D.22040
	cmpw	$133, %ax	#, D.22040
	jne	.L336	#,
.L335:
	.loc 1 2217 0
	movq	-288(%rbp), %rcx	# insn, tmp583
	movq	-208(%rbp), %rax	# x, tmp584
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp583,
	movq	%rax, %rdi	# tmp584,
	call	optimize_bit_field	#
.L336:
	.loc 1 2218 0
	movq	-208(%rbp), %rax	# x, tmp585
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _175->code, D.22040
	cmpw	$132, %ax	#, D.22040
	je	.L337	#,
	.loc 1 2219 0
	movq	-208(%rbp), %rax	# x, tmp586
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _177->code, D.22040
	cmpw	$133, %ax	#, D.22040
	jne	.L338	#,
.L337:
	.loc 1 2220 0
	movq	-288(%rbp), %rcx	# insn, tmp587
	movq	-208(%rbp), %rax	# x, tmp588
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp587,
	movq	%rax, %rdi	# tmp588,
	call	optimize_bit_field	#
.L338:
	.loc 1 2224 0
	movq	-208(%rbp), %rax	# x, tmp589
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _179->code, D.22040
	cmpw	$133, %ax	#, D.22040
	jne	.L339	#,
	.loc 1 2225 0
	movq	-208(%rbp), %rax	# x, tmp590
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _181->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _182->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L339	#,
	.loc 1 2226 0
	movq	-208(%rbp), %rax	# x, tmp591
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _184->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _185->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L339	#,
	.loc 1 2227 0
	movq	-208(%rbp), %rax	# x, tmp592
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _187->fld[0].rtx, D.22041
	movzbl	2(%rax), %eax	# _188->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	.loc 1 2228 0
	movq	-264(%rbp), %rax	# var, tmp594
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	.loc 1 2227 0
	cmpb	%al, %dl	# D.22043, D.22043
	jbe	.L339	#,
	.loc 1 2230 0
	movq	-264(%rbp), %rdx	# var, tmp596
	movq	-296(%rbp), %rax	# replacements, tmp597
	movq	%rdx, %rsi	# tmp596,
	movq	%rax, %rdi	# tmp597,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp598, replacement
	.loc 1 2231 0
	movq	-136(%rbp), %rax	# replacement, tmp599
	movq	8(%rax), %rax	# replacement_195->new, D.22041
	testq	%rax, %rax	# D.22041
	jne	.L340	#,
	.loc 1 2232 0
	movq	-264(%rbp), %rax	# var, tmp600
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp601
	movq	%rax, 8(%rdx)	# D.22041, replacement_195->new
.L340:
	.loc 1 2234 0
	movq	-208(%rbp), %rax	# x, tmp602
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _200->fld[0].rtx, D.22041
	movq	-136(%rbp), %rdx	# replacement, tmp603
	movq	8(%rdx), %rdx	# replacement_195->new, D.22041
	movq	%rdx, 8(%rax)	# D.22041, _201->fld[0].rtx
	.loc 1 2235 0
	movq	-136(%rbp), %rax	# replacement, tmp604
	movq	8(%rax), %rdx	# replacement_195->new, D.22041
	movq	-264(%rbp), %rax	# var, tmp605
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp605,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp606
	movq	%rdx, %rsi	# tmp606,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_after	#
.L339:
	.loc 1 2240 0
	movq	-208(%rbp), %rax	# x, tmp607
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _205->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L341	#,
	.loc 1 2241 0
	movq	-208(%rbp), %rax	# x, tmp608
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _207->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L341	#,
	.loc 1 2242 0
	movq	-208(%rbp), %rax	# x, tmp609
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzbl	2(%rax), %eax	# _209->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	.loc 1 2243 0
	movq	-264(%rbp), %rax	# var, tmp611
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	.loc 1 2242 0
	cmpb	%al, %dl	# D.22043, D.22043
	jbe	.L341	#,
	.loc 1 2245 0
	movq	-208(%rbp), %rax	# x, tmp613
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzbl	2(%rax), %eax	# _216->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	%rax, -200(%rbp)	# tmp614, tem
	movq	-208(%rbp), %rax	# x, tmp615
	movq	-200(%rbp), %rdx	# tem, tmp616
	movq	%rdx, 8(%rax)	# tmp616, x_29->fld[0].rtx
	.loc 1 2246 0
	movq	-264(%rbp), %rax	# var, tmp617
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movq	-200(%rbp), %rdx	# tem, tmp618
	movq	%rdx, %rsi	# tmp618,
	movl	%eax, %edi	# D.22044,
	call	gen_lowpart	#
	movq	%rax, %rdx	#, D.22041
	movq	-264(%rbp), %rax	# var, tmp619
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp619,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp620
	movq	%rdx, %rsi	# tmp620,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_after	#
	.loc 1 2249 0
	jmp	.L313	#
.L341:
.LBB27:
	.loc 1 2253 0
	movq	-208(%rbp), %rax	# x, tmp621
	movq	8(%rax), %rax	# x_29->fld[0].rtx, tmp622
	movq	%rax, -184(%rbp)	# tmp622, dest
	.loc 1 2254 0
	movq	-208(%rbp), %rax	# x, tmp623
	movq	16(%rax), %rax	# x_29->fld[1].rtx, tmp624
	movq	%rax, -176(%rbp)	# tmp624, src
	.loc 1 2255 0
	movq	-184(%rbp), %rax	# dest, tmp625
	movq	%rax, -88(%rbp)	# tmp625, outerdest
	.loc 1 2257 0
	jmp	.L342	#
.L343:
	.loc 1 2260 0
	movq	-184(%rbp), %rax	# dest, tmp626
	movq	8(%rax), %rax	# dest_11->fld[0].rtx, tmp627
	movq	%rax, -184(%rbp)	# tmp627, dest
.L342:
	.loc 1 2257 0 discriminator 1
	movq	-184(%rbp), %rax	# dest, tmp628
	movzwl	(%rax), %eax	# dest_11->code, D.22040
	cmpw	$63, %ax	#, D.22040
	je	.L343	#,
	.loc 1 2257 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rax	# dest, tmp629
	movzwl	(%rax), %eax	# dest_11->code, D.22040
	cmpw	$64, %ax	#, D.22040
	je	.L343	#,
	.loc 1 2258 0 is_stmt 1
	movq	-184(%rbp), %rax	# dest, tmp630
	movzwl	(%rax), %eax	# dest_11->code, D.22040
	cmpw	$132, %ax	#, D.22040
	je	.L343	#,
	.loc 1 2259 0
	movq	-184(%rbp), %rax	# dest, tmp631
	movzwl	(%rax), %eax	# dest_11->code, D.22040
	cmpw	$133, %ax	#, D.22040
	je	.L343	#,
	.loc 1 2262 0
	movq	-176(%rbp), %rax	# src, tmp632
	movzwl	(%rax), %eax	# src_225->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L344	#,
	.loc 1 2263 0
	movq	-176(%rbp), %rax	# src, tmp633
	movq	8(%rax), %rax	# src_225->fld[0].rtx, tmp634
	movq	%rax, -176(%rbp)	# tmp634, src
.L344:
	.loc 1 2268 0
	movq	-176(%rbp), %rax	# src, tmp635
	cmpq	-264(%rbp), %rax	# var, tmp635
	je	.L345	#,
	.loc 1 2268 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# dest, tmp636
	cmpq	-264(%rbp), %rax	# var, tmp636
	je	.L345	#,
	.loc 1 2269 0 is_stmt 1
	jmp	.L313	#
.L345:
	.loc 1 2272 0
	movq	-288(%rbp), %rax	# insn, tmp637
	movl	$-1, 40(%rax)	#, insn_36(D)->fld[4].rtint
	.loc 1 2274 0
	movq	-88(%rbp), %rax	# outerdest, tmp638
	movzwl	(%rax), %eax	# outerdest_226->code, D.22040
	cmpw	$133, %ax	#, D.22040
	jne	.L346	#,
	.loc 1 2274 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# dest, tmp639
	cmpq	-264(%rbp), %rax	# var, tmp639
	jne	.L346	#,
	.loc 1 2275 0 is_stmt 1
	movl	$-1, %esi	#,
	movl	$0, %edi	#,
	call	mode_for_extraction	#
	cmpl	$59, %eax	#, D.22044
	je	.L346	#,
	.loc 1 2279 0
	movq	-88(%rbp), %rax	# outerdest, tmp640
	leaq	16(%rax), %rdi	#, D.22047
	movq	-304(%rbp), %r8	# no_share, tmp641
	movq	-296(%rbp), %rcx	# replacements, tmp642
	movq	-288(%rbp), %rdx	# insn, tmp643
	movl	-268(%rbp), %esi	# promoted_mode, tmp644
	movq	-264(%rbp), %rax	# var, tmp645
	movq	%r8, %r9	# tmp641,
	movq	%rcx, %r8	# tmp642,
	movq	%rdx, %rcx	# tmp643,
	movq	%rdi, %rdx	# D.22047,
	movq	%rax, %rdi	# tmp645,
	call	fixup_var_refs_1	#
	.loc 1 2281 0
	movq	-88(%rbp), %rax	# outerdest, tmp646
	leaq	24(%rax), %rdi	#, D.22047
	movq	-304(%rbp), %r8	# no_share, tmp647
	movq	-296(%rbp), %rcx	# replacements, tmp648
	movq	-288(%rbp), %rdx	# insn, tmp649
	movl	-268(%rbp), %esi	# promoted_mode, tmp650
	movq	-264(%rbp), %rax	# var, tmp651
	movq	%r8, %r9	# tmp647,
	movq	%rcx, %r8	# tmp648,
	movq	%rdx, %rcx	# tmp649,
	movq	%rdi, %rdx	# D.22047,
	movq	%rax, %rdi	# tmp651,
	call	fixup_var_refs_1	#
	.loc 1 2283 0
	movq	-208(%rbp), %rax	# x, tmp652
	leaq	16(%rax), %rdi	#, D.22047
	movq	-304(%rbp), %r8	# no_share, tmp653
	movq	-296(%rbp), %rcx	# replacements, tmp654
	movq	-288(%rbp), %rdx	# insn, tmp655
	movl	-268(%rbp), %esi	# promoted_mode, tmp656
	movq	-264(%rbp), %rax	# var, tmp657
	movq	%r8, %r9	# tmp653,
	movq	%rcx, %r8	# tmp654,
	movq	%rdx, %rcx	# tmp655,
	movq	%rdi, %rdx	# D.22047,
	movq	%rax, %rdi	# tmp657,
	call	fixup_var_refs_1	#
	.loc 1 2286 0
	movq	-88(%rbp), %rax	# outerdest, tmp658
	movq	8(%rax), %rax	# outerdest_226->fld[0].rtx, tmp659
	movq	%rax, -200(%rbp)	# tmp659, tem
	.loc 1 2291 0
	movq	-200(%rbp), %rax	# tem, tmp660
	movzwl	(%rax), %eax	# tem_238->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L347	#,
	.loc 1 2292 0
	movq	-200(%rbp), %rax	# tem, tmp661
	movq	8(%rax), %rax	# tem_238->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L347	#,
	.loc 1 2293 0
	movl	-268(%rbp), %edx	# promoted_mode, tmp662
	movq	-288(%rbp), %rsi	# insn, tmp663
	movq	-200(%rbp), %rax	# tem, tmp664
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp664,
	call	fixup_memory_subreg	#
	movq	%rax, -200(%rbp)	# tmp665, tem
	jmp	.L348	#
.L347:
	.loc 1 2295 0
	movq	-288(%rbp), %rdx	# insn, tmp666
	movq	-200(%rbp), %rax	# tem, tmp667
	movq	%rdx, %rsi	# tmp666,
	movq	%rax, %rdi	# tmp667,
	call	fixup_stack_1	#
	movq	%rax, -200(%rbp)	# tmp668, tem
.L348:
	.loc 1 2297 0
	movq	-88(%rbp), %rax	# outerdest, tmp669
	movq	16(%rax), %rax	# outerdest_226->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _243->code, D.22040
	cmpw	$54, %ax	#, D.22040
	jne	.L349	#,
	.loc 1 2298 0
	movq	-88(%rbp), %rax	# outerdest, tmp670
	movq	24(%rax), %rax	# outerdest_226->fld[2].rtx, D.22041
	movzwl	(%rax), %eax	# _245->code, D.22040
	cmpw	$54, %ax	#, D.22040
	jne	.L349	#,
	.loc 1 2299 0
	movq	-200(%rbp), %rax	# tem, tmp671
	movq	8(%rax), %rax	# tem_7->fld[0].rtx, D.22041
	movq	%rax, %rdi	# D.22041,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.22042
	jne	.L349	#,
	.loc 1 2300 0
	movq	-200(%rbp), %rax	# tem, tmp672
	movzbl	3(%rax), %eax	# *tem_7, D.22043
	andl	$8, %eax	#, D.22043
	testb	%al, %al	# D.22043
	jne	.L349	#,
.LBB28:
	.loc 1 2303 0
	movq	-200(%rbp), %rax	# tem, tmp673
	movzbl	2(%rax), %eax	# tem_7->mode, D.22043
	movzbl	%al, %eax	# D.22043, tmp674
	movl	%eax, -216(%rbp)	# tmp674, is_mode
	.loc 1 2304 0
	movq	-88(%rbp), %rax	# outerdest, tmp675
	movq	24(%rax), %rax	# outerdest_226->fld[2].rtx, D.22041
	movq	8(%rax), %rax	# _253->fld[0].rtwint, tmp676
	movq	%rax, -80(%rbp)	# tmp676, pos
	.loc 1 2306 0
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -212(%rbp)	# tmp677, wanted_mode
	.loc 1 2309 0
	movl	-212(%rbp), %eax	# wanted_mode, wanted_mode.128
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	movl	-216(%rbp), %eax	# is_mode, is_mode.129
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	cmpb	%al, %dl	# D.22043, D.22043
	jae	.L349	#,
.LBB29:
	.loc 1 2311 0
	movq	-80(%rbp), %rax	# pos, tmp681
	leaq	7(%rax), %rdx	#, tmp683
	testq	%rax, %rax	# tmp682
	cmovs	%rdx, %rax	# tmp683,, tmp682
	sarq	$3, %rax	#, tmp684
	movq	%rax, -72(%rbp)	# tmp684, offset
	.loc 1 2312 0
	movq	-88(%rbp), %rax	# outerdest, tmp685
	movq	24(%rax), %rax	# outerdest_226->fld[2].rtx, tmp686
	movq	%rax, -64(%rbp)	# tmp686, old_pos
	.loc 1 2319 0
	movl	-212(%rbp), %eax	# wanted_mode, wanted_mode.132
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22040
	movzwl	%ax, %ecx	# D.22040, D.22046
	movq	-80(%rbp), %rax	# pos, tmp689
	cqto
	idivq	%rcx	# D.22046
	movq	%rdx, -80(%rbp)	# tmp690, pos
	.loc 1 2321 0
	movq	-72(%rbp), %rdx	# offset, tmp692
	movl	-212(%rbp), %esi	# wanted_mode, tmp693
	movq	-200(%rbp), %rax	# tem, tmp694
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp694,
	call	adjust_address_1	#
	movq	%rax, -56(%rbp)	# tmp695, newmem
	.loc 1 2324 0
	movq	-288(%rbp), %rax	# insn, tmp696
	movl	$-1, 40(%rax)	#, insn_36(D)->fld[4].rtint
	.loc 1 2325 0
	movq	-88(%rbp), %rax	# outerdest, tmp697
	movq	-56(%rbp), %rdx	# newmem, tmp698
	movq	%rdx, 8(%rax)	# tmp698, outerdest_226->fld[0].rtx
	.loc 1 2326 0
	movq	-80(%rbp), %rax	# pos, tmp699
	movq	%rax, %rsi	# tmp699,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-88(%rbp), %rdx	# outerdest, tmp700
	movq	%rax, 24(%rdx)	# D.22041, outerdest_226->fld[2].rtx
	.loc 1 2328 0
	movq	-288(%rbp), %rax	# insn, tmp701
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L350	#,
	.loc 1 2328 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp702
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp703
	shrl	$31, %eax	#, tmp704
	jmp	.L351	#
.L350:
	.loc 1 2328 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp705
	movq	%rax, %rdi	# tmp705,
	call	recog_memoized_1	#
	notl	%eax	# tmp706
	shrl	$31, %eax	#, tmp707
.L351:
	.loc 1 2328 0 discriminator 3
	testb	%al, %al	# iftmp.133
	je	.L352	#,
	.loc 1 2329 0 is_stmt 1
	jmp	.L290	#
.L352:
	.loc 1 2333 0
	movq	-88(%rbp), %rax	# outerdest, tmp708
	movq	-64(%rbp), %rdx	# old_pos, tmp709
	movq	%rdx, 24(%rax)	# tmp709, outerdest_226->fld[2].rtx
.L349:
.LBE29:
.LBE28:
	.loc 1 2341 0
	movq	-200(%rbp), %rax	# tem, tmp710
	movzbl	2(%rax), %eax	# tem_7->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp711, tem1
	.loc 1 2342 0
	movq	-200(%rbp), %rdx	# tem, tmp712
	movq	-96(%rbp), %rax	# tem1, tmp713
	movq	%rdx, %rsi	# tmp712,
	movq	%rax, %rdi	# tmp713,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp714
	movq	%rdx, %rsi	# tmp714,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_before	#
	.loc 1 2343 0
	movq	-96(%rbp), %rdx	# tem1, tmp715
	movq	-200(%rbp), %rax	# tem, tmp716
	movq	%rdx, %rsi	# tmp715,
	movq	%rax, %rdi	# tmp716,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp717
	movq	%rdx, %rsi	# tmp717,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_after	#
	.loc 1 2344 0
	movq	-88(%rbp), %rax	# outerdest, tmp718
	movq	-96(%rbp), %rdx	# tem1, tmp719
	movq	%rdx, 8(%rax)	# tmp719, outerdest_226->fld[0].rtx
	.loc 1 2345 0
	jmp	.L290	#
.L346:
	.loc 1 2352 0
	movq	-184(%rbp), %rax	# dest, tmp720
	cmpq	-264(%rbp), %rax	# var, tmp720
	jne	.L353	#,
	.loc 1 2352 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# x, tmp721
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _278->code, D.22040
	cmpw	$64, %ax	#, D.22040
	jne	.L353	#,
	.loc 1 2353 0 is_stmt 1
	movq	-208(%rbp), %rax	# x, tmp722
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rdx	# _280->fld[0].rtx, D.22041
	movq	-208(%rbp), %rax	# x, tmp723
	movq	%rdx, 8(%rax)	# D.22041, x_29->fld[0].rtx
.L353:
	.loc 1 2366 0
	movq	-208(%rbp), %rax	# x, tmp724
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	je	.L354	#,
	.loc 1 2367 0
	movq	-208(%rbp), %rax	# x, tmp725
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _283->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L355	#,
	.loc 1 2368 0
	movq	-208(%rbp), %rax	# x, tmp726
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movq	8(%rax), %rax	# _285->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L355	#,
.L354:
	.loc 1 2369 0
	movq	-208(%rbp), %rax	# x, tmp727
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _287->code, D.22040
	cmpw	$61, %ax	#, D.22040
	je	.L356	#,
	.loc 1 2370 0
	movq	-208(%rbp), %rax	# x, tmp728
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _289->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L355	#,
	.loc 1 2371 0
	movq	-208(%rbp), %rax	# x, tmp729
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _291->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _292->code, D.22040
	cmpw	$61, %ax	#, D.22040
	jne	.L355	#,
.L356:
	.loc 1 2372 0
	movq	-264(%rbp), %rax	# var, tmp730
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22045
	cmpl	-268(%rbp), %eax	# promoted_mode, D.22045
	jne	.L355	#,
	.loc 1 2373 0
	movq	-288(%rbp), %rax	# insn, tmp731
	movzwl	(%rax), %eax	# insn_36(D)->code, D.22040
	movzwl	%ax, %eax	# D.22040, D.22042
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22048
	cmpb	$105, %al	#, D.22048
	jne	.L357	#,
	.loc 1 2373 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp733
	movq	32(%rax), %rax	# insn_36(D)->fld[3].rtx, D.22041
	movzwl	(%rax), %eax	# _299->code, D.22040
	cmpw	$47, %ax	#, D.22040
	jne	.L358	#,
	.loc 1 2373 0 discriminator 3
	movq	-288(%rbp), %rax	# insn, tmp734
	movq	32(%rax), %rax	# insn_36(D)->fld[3].rtx, iftmp.135
	jmp	.L360	#
.L358:
	.loc 1 2373 0 discriminator 4
	movq	-288(%rbp), %rax	# insn, tmp735
	movq	32(%rax), %rdx	# insn_36(D)->fld[3].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp736
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp736,
	call	single_set_2	#
	jmp	.L360	#
.L357:
	.loc 1 2373 0 discriminator 2
	movl	$0, %eax	#, iftmp.134
.L360:
	.loc 1 2373 0 discriminator 5
	cmpq	-208(%rbp), %rax	# x, iftmp.134
	jne	.L355	#,
.LBB30:
	.loc 1 2377 0 is_stmt 1
	movq	-208(%rbp), %rax	# x, tmp737
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _306->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L361	#,
	.loc 1 2378 0
	movq	-208(%rbp), %rax	# x, tmp738
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzbl	2(%rax), %eax	# _308->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22043
	.loc 1 2379 0
	movq	-264(%rbp), %rax	# var, tmp740
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22043
	.loc 1 2378 0
	cmpb	%al, %dl	# D.22043, D.22043
	jbe	.L361	#,
	.loc 1 2383 0
	movq	-264(%rbp), %rdx	# var, tmp742
	movq	-296(%rbp), %rax	# replacements, tmp743
	movq	%rdx, %rsi	# tmp742,
	movq	%rax, %rdi	# tmp743,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp744, replacement
	.loc 1 2384 0
	movq	-136(%rbp), %rax	# replacement, tmp745
	movq	8(%rax), %rax	# replacement_315->new, D.22041
	testq	%rax, %rax	# D.22041
	jne	.L362	#,
	.loc 1 2385 0
	movq	-264(%rbp), %rax	# var, tmp746
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22044
	movl	%eax, %edi	# D.22044,
	call	gen_reg_rtx	#
	movq	-136(%rbp), %rdx	# replacement, tmp747
	movq	%rax, 8(%rdx)	# D.22041, replacement_315->new
.L362:
	.loc 1 2386 0
	movq	-208(%rbp), %rax	# x, tmp748
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movq	-136(%rbp), %rdx	# replacement, tmp749
	movq	8(%rdx), %rdx	# replacement_315->new, D.22041
	movq	%rdx, 8(%rax)	# D.22041, _320->fld[0].rtx
	jmp	.L363	#
.L361:
	.loc 1 2390 0
	movq	-208(%rbp), %rax	# x, tmp750
	movq	16(%rax), %rdx	# x_29->fld[1].rtx, D.22041
	movq	-296(%rbp), %rax	# replacements, tmp751
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp751,
	call	find_fixup_replacement	#
	movq	%rax, -136(%rbp)	# tmp752, replacement
	.loc 1 2391 0
	movq	-136(%rbp), %rax	# replacement, tmp753
	movq	8(%rax), %rax	# replacement_323->new, D.22041
	testq	%rax, %rax	# D.22041
	je	.L364	#,
	.loc 1 2392 0
	movq	-136(%rbp), %rax	# replacement, tmp754
	movq	8(%rax), %rdx	# replacement_323->new, D.22041
	movq	-208(%rbp), %rax	# x, tmp755
	movq	%rdx, 16(%rax)	# D.22041, x_29->fld[1].rtx
	jmp	.L363	#
.L364:
	.loc 1 2393 0
	movq	-208(%rbp), %rax	# x, tmp756
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _326->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L365	#,
	.loc 1 2395 0
	movq	-208(%rbp), %rax	# x, tmp757
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movl	-268(%rbp), %edx	# promoted_mode, tmp758
	movq	-288(%rbp), %rsi	# insn, tmp759
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.22041,
	call	fixup_memory_subreg	#
	movq	-136(%rbp), %rdx	# replacement, tmp760
	movq	%rax, 8(%rdx)	# D.22041, replacement_323->new
	.loc 1 2394 0
	movq	-136(%rbp), %rax	# replacement, tmp761
	movq	8(%rax), %rdx	# replacement_323->new, D.22041
	movq	-208(%rbp), %rax	# x, tmp762
	movq	%rdx, 16(%rax)	# D.22041, x_29->fld[1].rtx
	jmp	.L363	#
.L365:
	.loc 1 2399 0
	movq	-208(%rbp), %rax	# x, tmp763
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movq	-288(%rbp), %rdx	# insn, tmp764
	movq	%rdx, %rsi	# tmp764,
	movq	%rax, %rdi	# D.22041,
	call	fixup_stack_1	#
	movq	-136(%rbp), %rdx	# replacement, tmp765
	movq	%rax, 8(%rdx)	# D.22041, replacement_323->new
	.loc 1 2398 0
	movq	-136(%rbp), %rax	# replacement, tmp766
	movq	8(%rax), %rdx	# replacement_323->new, D.22041
	movq	-208(%rbp), %rax	# x, tmp767
	movq	%rdx, 16(%rax)	# D.22041, x_29->fld[1].rtx
.L363:
	.loc 1 2402 0
	movq	-288(%rbp), %rax	# insn, tmp768
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L366	#,
	.loc 1 2402 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp769
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp770
	shrl	$31, %eax	#, tmp771
	jmp	.L367	#
.L366:
	.loc 1 2402 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp772
	movq	%rax, %rdi	# tmp772,
	call	recog_memoized_1	#
	notl	%eax	# tmp773
	shrl	$31, %eax	#, tmp774
.L367:
	.loc 1 2402 0 discriminator 3
	testb	%al, %al	# iftmp.136
	je	.L368	#,
	.loc 1 2403 0 is_stmt 1
	jmp	.L290	#
.L368:
	.loc 1 2413 0
	movq	-208(%rbp), %rax	# x, tmp775
	movq	16(%rax), %rdx	# x_29->fld[1].rtx, D.22041
	movq	-208(%rbp), %rax	# x, tmp776
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# D.22041,
	call	gen_move_insn	#
	movq	%rax, -48(%rbp)	# tmp777, pat
	.loc 1 2414 0
	movq	-48(%rbp), %rax	# pat, tmp778
	movzwl	(%rax), %eax	# pat_341->code, D.22040
	cmpw	$24, %ax	#, D.22040
	jne	.L369	#,
	.loc 1 2416 0
	movq	-288(%rbp), %rdx	# insn, tmp779
	movq	-48(%rbp), %rax	# pat, tmp780
	movq	%rdx, %rsi	# tmp779,
	movq	%rax, %rdi	# tmp780,
	call	emit_insn_before	#
	movq	%rax, -40(%rbp)	# tmp781, last
	.loc 1 2423 0
	movq	-40(%rbp), %rax	# last, tmp782
	movq	56(%rax), %rax	# last_343->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L370	#,
	.loc 1 2423 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp783
	movq	56(%rax), %rax	# insn_36(D)->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L370	#,
	.loc 1 2424 0 is_stmt 1
	movl	$__FUNCTION__.14125, %edx	#,
	movl	$2424, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L370:
	.loc 1 2425 0
	movq	-40(%rbp), %rax	# last, tmp784
	movq	56(%rax), %rax	# last_343->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L371	#,
	.loc 1 2426 0
	movq	-40(%rbp), %rax	# last, tmp785
	movq	56(%rax), %rdx	# last_343->fld[6].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp786
	movq	%rdx, 56(%rax)	# D.22041, insn_36(D)->fld[6].rtx
.L371:
	.loc 1 2427 0
	movq	-40(%rbp), %rax	# last, tmp787
	movq	32(%rax), %rdx	# last_343->fld[3].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp788
	movq	%rdx, 32(%rax)	# D.22041, insn_36(D)->fld[3].rtx
	.loc 1 2429 0
	movq	-40(%rbp), %rax	# last, tmp789
	movq	%rax, %rdi	# tmp789,
	call	delete_insn	#
	.loc 1 2434 0
	jmp	.L290	#
.L369:
	.loc 1 2432 0
	movq	-288(%rbp), %rax	# insn, tmp790
	movq	-48(%rbp), %rdx	# pat, tmp791
	movq	%rdx, 32(%rax)	# tmp791, insn_36(D)->fld[3].rtx
	.loc 1 2434 0
	jmp	.L290	#
.L355:
.LBE30:
	.loc 1 2437 0
	movq	-208(%rbp), %rax	# x, tmp792
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	je	.L373	#,
	.loc 1 2438 0
	movq	-208(%rbp), %rax	# x, tmp793
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _350->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L374	#,
	.loc 1 2439 0
	movq	-208(%rbp), %rax	# x, tmp794
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	8(%rax), %rax	# _352->fld[0].rtx, D.22041
	cmpq	-264(%rbp), %rax	# var, D.22041
	jne	.L374	#,
.L373:
	.loc 1 2440 0
	movq	-208(%rbp), %rax	# x, tmp795
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _354->code, D.22040
	cmpw	$61, %ax	#, D.22040
	je	.L375	#,
	.loc 1 2441 0
	movq	-208(%rbp), %rax	# x, tmp796
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movzwl	(%rax), %eax	# _356->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L374	#,
	.loc 1 2442 0
	movq	-208(%rbp), %rax	# x, tmp797
	movq	16(%rax), %rax	# x_29->fld[1].rtx, D.22041
	movq	8(%rax), %rax	# _358->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _359->code, D.22040
	cmpw	$61, %ax	#, D.22040
	jne	.L374	#,
.L375:
	.loc 1 2443 0
	movq	-264(%rbp), %rax	# var, tmp798
	movzbl	2(%rax), %eax	# var_33(D)->mode, D.22043
	movzbl	%al, %eax	# D.22043, D.22045
	cmpl	-268(%rbp), %eax	# promoted_mode, D.22045
	jne	.L374	#,
	.loc 1 2444 0
	movq	-288(%rbp), %rax	# insn, tmp799
	movzwl	(%rax), %eax	# insn_36(D)->code, D.22040
	movzwl	%ax, %eax	# D.22040, D.22042
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22048
	cmpb	$105, %al	#, D.22048
	jne	.L376	#,
	.loc 1 2444 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp801
	movq	32(%rax), %rax	# insn_36(D)->fld[3].rtx, D.22041
	movzwl	(%rax), %eax	# _366->code, D.22040
	cmpw	$47, %ax	#, D.22040
	jne	.L377	#,
	.loc 1 2444 0 discriminator 3
	movq	-288(%rbp), %rax	# insn, tmp802
	movq	32(%rax), %rax	# insn_36(D)->fld[3].rtx, iftmp.138
	jmp	.L379	#
.L377:
	.loc 1 2444 0 discriminator 4
	movq	-288(%rbp), %rax	# insn, tmp803
	movq	32(%rax), %rdx	# insn_36(D)->fld[3].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp804
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp804,
	call	single_set_2	#
	jmp	.L379	#
.L376:
	.loc 1 2444 0 discriminator 2
	movl	$0, %eax	#, iftmp.137
.L379:
	.loc 1 2444 0 discriminator 5
	cmpq	-208(%rbp), %rax	# x, iftmp.137
	jne	.L374	#,
.LBB31:
	.loc 1 2448 0 is_stmt 1
	movq	-208(%rbp), %rax	# x, tmp805
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movzwl	(%rax), %eax	# _373->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L380	#,
	.loc 1 2449 0
	movq	-208(%rbp), %rax	# x, tmp806
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movl	-268(%rbp), %edx	# promoted_mode, tmp807
	movq	-288(%rbp), %rsi	# insn, tmp808
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.22041,
	call	fixup_memory_subreg	#
	movq	-208(%rbp), %rdx	# x, tmp809
	movq	%rax, 8(%rdx)	# D.22041, x_29->fld[0].rtx
	jmp	.L381	#
.L380:
	.loc 1 2452 0
	movq	-208(%rbp), %rax	# x, tmp810
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	-288(%rbp), %rdx	# insn, tmp811
	movq	%rdx, %rsi	# tmp811,
	movq	%rax, %rdi	# D.22041,
	call	fixup_stack_1	#
	movq	-208(%rbp), %rdx	# x, tmp812
	movq	%rax, 8(%rdx)	# D.22041, x_29->fld[0].rtx
.L381:
	.loc 1 2454 0
	movq	-288(%rbp), %rax	# insn, tmp813
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	testl	%eax, %eax	# D.22042
	js	.L382	#,
	.loc 1 2454 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp814
	movl	40(%rax), %eax	# insn_36(D)->fld[4].rtint, D.22042
	notl	%eax	# tmp815
	shrl	$31, %eax	#, tmp816
	jmp	.L383	#
.L382:
	.loc 1 2454 0 discriminator 2
	movq	-288(%rbp), %rax	# insn, tmp817
	movq	%rax, %rdi	# tmp817,
	call	recog_memoized_1	#
	notl	%eax	# tmp818
	shrl	$31, %eax	#, tmp819
.L383:
	.loc 1 2454 0 discriminator 3
	testb	%al, %al	# iftmp.139
	je	.L384	#,
	.loc 1 2455 0 is_stmt 1
	jmp	.L290	#
.L384:
	.loc 1 2457 0
	movq	-208(%rbp), %rax	# x, tmp820
	movq	16(%rax), %rdx	# x_29->fld[1].rtx, D.22041
	movq	-208(%rbp), %rax	# x, tmp821
	movq	8(%rax), %rax	# x_29->fld[0].rtx, D.22041
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# D.22041,
	call	gen_move_insn	#
	movq	%rax, -32(%rbp)	# tmp822, pat
	.loc 1 2458 0
	movq	-32(%rbp), %rax	# pat, tmp823
	movzwl	(%rax), %eax	# pat_386->code, D.22040
	cmpw	$24, %ax	#, D.22040
	jne	.L385	#,
	.loc 1 2460 0
	movq	-288(%rbp), %rdx	# insn, tmp824
	movq	-32(%rbp), %rax	# pat, tmp825
	movq	%rdx, %rsi	# tmp824,
	movq	%rax, %rdi	# tmp825,
	call	emit_insn_before	#
	movq	%rax, -24(%rbp)	# tmp826, last
	.loc 1 2467 0
	movq	-24(%rbp), %rax	# last, tmp827
	movq	56(%rax), %rax	# last_388->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L386	#,
	.loc 1 2467 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# insn, tmp828
	movq	56(%rax), %rax	# insn_36(D)->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L386	#,
	.loc 1 2468 0 is_stmt 1
	movl	$__FUNCTION__.14125, %edx	#,
	movl	$2468, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L386:
	.loc 1 2469 0
	movq	-24(%rbp), %rax	# last, tmp829
	movq	56(%rax), %rax	# last_388->fld[6].rtx, D.22041
	testq	%rax, %rax	# D.22041
	je	.L387	#,
	.loc 1 2470 0
	movq	-24(%rbp), %rax	# last, tmp830
	movq	56(%rax), %rdx	# last_388->fld[6].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp831
	movq	%rdx, 56(%rax)	# D.22041, insn_36(D)->fld[6].rtx
.L387:
	.loc 1 2471 0
	movq	-24(%rbp), %rax	# last, tmp832
	movq	32(%rax), %rdx	# last_388->fld[3].rtx, D.22041
	movq	-288(%rbp), %rax	# insn, tmp833
	movq	%rdx, 32(%rax)	# D.22041, insn_36(D)->fld[3].rtx
	.loc 1 2473 0
	movq	-24(%rbp), %rax	# last, tmp834
	movq	%rax, %rdi	# tmp834,
	call	delete_insn	#
	.loc 1 2478 0
	jmp	.L290	#
.L385:
	.loc 1 2476 0
	movq	-288(%rbp), %rax	# insn, tmp835
	movq	-32(%rbp), %rdx	# pat, tmp836
	movq	%rdx, 32(%rax)	# tmp836, insn_36(D)->fld[3].rtx
	.loc 1 2478 0
	jmp	.L290	#
.L374:
.LBE31:
	.loc 1 2491 0
	movq	-184(%rbp), %rax	# dest, tmp837
	cmpq	-264(%rbp), %rax	# var, tmp837
	jne	.L291	#,
.LBB32:
	.loc 1 2494 0
	movq	-208(%rbp), %rax	# x, tmp838
	movq	8(%rax), %rax	# x_29->fld[0].rtx, tmp839
	movq	%rax, -168(%rbp)	# tmp839, fixeddest
	.loc 1 2498 0
	movq	-168(%rbp), %rax	# fixeddest, tmp840
	movzwl	(%rax), %eax	# fixeddest_394->code, D.22040
	cmpw	$64, %ax	#, D.22040
	jne	.L389	#,
	.loc 1 2499 0
	movq	-168(%rbp), %rax	# fixeddest, tmp841
	movq	8(%rax), %rax	# fixeddest_394->fld[0].rtx, tmp842
	movq	%rax, -168(%rbp)	# tmp842, fixeddest
.L389:
	.loc 1 2501 0
	movq	-168(%rbp), %rax	# fixeddest, tmp843
	movzwl	(%rax), %eax	# fixeddest_13->code, D.22040
	cmpw	$63, %ax	#, D.22040
	jne	.L390	#,
	.loc 1 2503 0
	movl	-268(%rbp), %edx	# promoted_mode, tmp844
	movq	-288(%rbp), %rsi	# insn, tmp845
	movq	-168(%rbp), %rax	# fixeddest, tmp846
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp846,
	call	fixup_memory_subreg	#
	movq	%rax, -168(%rbp)	# tmp847, fixeddest
	.loc 1 2505 0
	movq	-168(%rbp), %rax	# fixeddest, tmp848
	movzbl	2(%rax), %eax	# fixeddest_398->mode, D.22043
	movzbl	%al, %eax	# D.22043, tmp849
	movl	%eax, -236(%rbp)	# tmp849, temp_mode
	jmp	.L391	#
.L390:
	.loc 1 2509 0
	movq	-288(%rbp), %rdx	# insn, tmp850
	movq	-168(%rbp), %rax	# fixeddest, tmp851
	movq	%rdx, %rsi	# tmp850,
	movq	%rax, %rdi	# tmp851,
	call	fixup_stack_1	#
	movq	%rax, -168(%rbp)	# tmp852, fixeddest
	.loc 1 2510 0
	movl	-268(%rbp), %eax	# promoted_mode, tmp853
	movl	%eax, -236(%rbp)	# tmp853, temp_mode
.L391:
	.loc 1 2513 0
	movl	-236(%rbp), %eax	# temp_mode, tmp854
	movl	%eax, %edi	# tmp854,
	call	gen_reg_rtx	#
	movq	%rax, -16(%rbp)	# tmp855, temp
	.loc 1 2516 0
	movq	-168(%rbp), %rax	# fixeddest, tmp856
	movzbl	2(%rax), %eax	# fixeddest_14->mode, D.22043
	.loc 1 2515 0
	movzbl	%al, %eax	# D.22043, D.22044
	movq	-16(%rbp), %rdx	# temp, tmp857
	movq	%rdx, %rsi	# tmp857,
	movl	%eax, %edi	# D.22044,
	call	gen_lowpart	#
	movq	%rax, %rdx	#, D.22041
	movq	-168(%rbp), %rax	# fixeddest, tmp858
	movq	%rdx, %rsi	# D.22041,
	movq	%rax, %rdi	# tmp858,
	call	gen_move_insn	#
	movq	-288(%rbp), %rdx	# insn, tmp859
	movq	%rdx, %rsi	# tmp859,
	movq	%rax, %rdi	# D.22041,
	call	emit_insn_after	#
	.loc 1 2520 0
	movq	-208(%rbp), %rax	# x, tmp860
	movq	-16(%rbp), %rdx	# temp, tmp861
	movq	%rdx, 8(%rax)	# tmp861, x_29->fld[0].rtx
.LBE32:
.LBE27:
	.loc 1 2525 0
	jmp	.L398	#
.L291:
.L398:
	nop
.L313:
	.loc 1 2530 0
	movl	-244(%rbp), %eax	# code, code.140
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp863
	movq	%rax, -8(%rbp)	# tmp863, fmt
	.loc 1 2531 0
	movl	-244(%rbp), %eax	# code, code.141
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22043
	movzbl	%al, %eax	# D.22043, D.22042
	subl	$1, %eax	#, tmp865
	movl	%eax, -248(%rbp)	# tmp865, i
	jmp	.L392	#
.L397:
	.loc 1 2533 0
	movl	-248(%rbp), %eax	# i, tmp866
	movslq	%eax, %rdx	# tmp866, D.22049
	movq	-8(%rbp), %rax	# fmt, tmp867
	addq	%rdx, %rax	# D.22049, D.22050
	movzbl	(%rax), %eax	# *_416, D.22048
	cmpb	$101, %al	#, D.22048
	jne	.L393	#,
	.loc 1 2534 0
	movl	-248(%rbp), %eax	# i, tmp869
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp870
	movq	-208(%rbp), %rax	# x, tmp872
	addq	%rdx, %rax	# tmp870, tmp871
	leaq	8(%rax), %rdi	#, D.22047
	movq	-304(%rbp), %r8	# no_share, tmp873
	movq	-296(%rbp), %rcx	# replacements, tmp874
	movq	-288(%rbp), %rdx	# insn, tmp875
	movl	-268(%rbp), %esi	# promoted_mode, tmp876
	movq	-264(%rbp), %rax	# var, tmp877
	movq	%r8, %r9	# tmp873,
	movq	%rcx, %r8	# tmp874,
	movq	%rdx, %rcx	# tmp875,
	movq	%rdi, %rdx	# D.22047,
	movq	%rax, %rdi	# tmp877,
	call	fixup_var_refs_1	#
	jmp	.L394	#
.L393:
	.loc 1 2536 0
	movl	-248(%rbp), %eax	# i, tmp878
	movslq	%eax, %rdx	# tmp878, D.22049
	movq	-8(%rbp), %rax	# fmt, tmp879
	addq	%rdx, %rax	# D.22049, D.22050
	movzbl	(%rax), %eax	# *_420, D.22048
	cmpb	$69, %al	#, D.22048
	jne	.L394	#,
.LBB33:
	.loc 1 2539 0
	movl	$0, -232(%rbp)	#, j
	jmp	.L395	#
.L396:
	.loc 1 2540 0 discriminator 2
	movq	-208(%rbp), %rax	# x, tmp880
	movl	-248(%rbp), %edx	# i, tmp882
	movslq	%edx, %rdx	# tmp882, tmp881
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_1].rtvec, D.22051
	movl	-232(%rbp), %edx	# j, tmp884
	movslq	%edx, %rdx	# tmp884, tmp883
	salq	$3, %rdx	#, tmp885
	addq	%rdx, %rax	# tmp885, tmp886
	leaq	8(%rax), %rdi	#, D.22047
	movq	-304(%rbp), %r8	# no_share, tmp887
	movq	-296(%rbp), %rcx	# replacements, tmp888
	movq	-288(%rbp), %rdx	# insn, tmp889
	movl	-268(%rbp), %esi	# promoted_mode, tmp890
	movq	-264(%rbp), %rax	# var, tmp891
	movq	%r8, %r9	# tmp887,
	movq	%rcx, %r8	# tmp888,
	movq	%rdx, %rcx	# tmp889,
	movq	%rdi, %rdx	# D.22047,
	movq	%rax, %rdi	# tmp891,
	call	fixup_var_refs_1	#
	.loc 1 2539 0 discriminator 2
	addl	$1, -232(%rbp)	#, j
.L395:
	.loc 1 2539 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# x, tmp892
	movl	-248(%rbp), %edx	# i, tmp894
	movslq	%edx, %rdx	# tmp894, tmp893
	movq	8(%rax,%rdx,8), %rax	# x_3->fld[i_1].rtvec, D.22051
	movl	(%rax), %eax	# _423->num_elem, D.22042
	cmpl	-232(%rbp), %eax	# j, D.22042
	jg	.L396	#,
.L394:
.LBE33:
	.loc 1 2531 0 is_stmt 1
	subl	$1, -248(%rbp)	#, i
.L392:
	.loc 1 2531 0 is_stmt 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, i
	jns	.L397	#,
	jmp	.L290	#
.L399:
	.loc 1 2051 0 is_stmt 1
	nop
.L290:
	.loc 1 2544 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	fixup_var_refs_1, .-fixup_var_refs_1
	.type	fixup_memory_subreg, @function
fixup_memory_subreg:
.LFB37:
	.loc 1 2562 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# insn, insn
	movl	%edx, -52(%rbp)	# promoted_mode, promoted_mode
	movl	%ecx, -56(%rbp)	# uncritical, uncritical
	.loc 1 2564 0
	movq	-40(%rbp), %rax	# x, tmp75
	movq	8(%rax), %rax	# x_2(D)->fld[0].rtx, tmp76
	movq	%rax, -24(%rbp)	# tmp76, mem
	.loc 1 2565 0
	movq	-24(%rbp), %rax	# mem, tmp77
	movq	8(%rax), %rax	# mem_3->fld[0].rtx, tmp78
	movq	%rax, -16(%rbp)	# tmp78, addr
	.loc 1 2566 0
	movq	-40(%rbp), %rax	# x, tmp79
	movzbl	2(%rax), %eax	# x_2(D)->mode, D.22054
	movzbl	%al, %eax	# D.22054, tmp80
	movl	%eax, -32(%rbp)	# tmp80, mode
	.loc 1 2570 0
	movl	-32(%rbp), %eax	# mode, mode.142
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22054
	movq	-24(%rbp), %rax	# mem, tmp82
	movzbl	2(%rax), %eax	# mem_3->mode, D.22054
	movzbl	%al, %eax	# D.22054, D.22055
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22054
	cmpb	%al, %dl	# D.22054, D.22054
	jbe	.L401	#,
	.loc 1 2570 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, uncritical
	jne	.L401	#,
	.loc 1 2571 0 is_stmt 1
	movl	$__FUNCTION__.14187, %edx	#,
	movl	$2571, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L401:
	.loc 1 2573 0
	movq	-40(%rbp), %rax	# x, tmp84
	movl	16(%rax), %eax	# x_2(D)->fld[1].rtuint, D.22056
	movl	%eax, -28(%rbp)	# D.22056, offset
	.loc 1 2580 0
	movl	flag_force_addr(%rip), %eax	# flag_force_addr, flag_force_addr.144
	testl	%eax, %eax	# flag_force_addr.144
	jne	.L402	#,
	.loc 1 2581 0
	movl	-28(%rbp), %eax	# offset, tmp85
	movslq	%eax, %rdx	# tmp85, D.22057
	movq	-16(%rbp), %rax	# addr, tmp86
	movq	%rdx, %rsi	# D.22057,
	movq	%rax, %rdi	# tmp86,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.22058
	movl	-32(%rbp), %eax	# mode, tmp87
	movq	%rdx, %rsi	# D.22058,
	movl	%eax, %edi	# tmp87,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22055
	je	.L402	#,
	.loc 1 2583 0
	movl	-28(%rbp), %eax	# offset, tmp88
	movslq	%eax, %rdx	# tmp88, D.22057
	movl	-32(%rbp), %esi	# mode, tmp89
	movq	-24(%rbp), %rax	# mem, tmp90
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp90,
	call	adjust_address_1	#
	jmp	.L403	#
.L402:
	.loc 1 2585 0
	call	start_sequence	#
	.loc 1 2586 0
	movl	-28(%rbp), %eax	# offset, tmp91
	movslq	%eax, %rdx	# tmp91, D.22057
	movl	-32(%rbp), %esi	# mode, tmp92
	movq	-24(%rbp), %rax	# mem, tmp93
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp93,
	call	adjust_address_1	#
	movq	%rax, -8(%rbp)	# tmp94, result
	.loc 1 2587 0
	call	gen_sequence	#
	movq	-48(%rbp), %rdx	# insn, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# D.22058,
	call	emit_insn_before	#
	.loc 1 2588 0
	call	end_sequence	#
	.loc 1 2589 0
	movq	-8(%rbp), %rax	# result, D.22053
.L403:
	.loc 1 2590 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	fixup_memory_subreg, .-fixup_memory_subreg
	.type	walk_fixup_memory_subreg, @function
walk_fixup_memory_subreg:
.LFB38:
	.loc 1 2606 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# insn, insn
	movl	%edx, -68(%rbp)	# promoted_mode, promoted_mode
	movl	%ecx, -72(%rbp)	# uncritical, uncritical
	.loc 1 2611 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L405	#,
	.loc 1 2612 0
	movl	$0, %eax	#, D.22059
	jmp	.L406	#
.L405:
	.loc 1 2614 0
	movq	-56(%rbp), %rax	# x, tmp82
	movzwl	(%rax), %eax	# x_4(D)->code, D.22060
	movzwl	%ax, %eax	# D.22060, tmp83
	movl	%eax, -28(%rbp)	# tmp83, code
	.loc 1 2616 0
	cmpl	$63, -28(%rbp)	#, code
	jne	.L407	#,
	.loc 1 2616 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp84
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, D.22061
	movzwl	(%rax), %eax	# _8->code, D.22060
	cmpw	$66, %ax	#, D.22060
	jne	.L407	#,
	.loc 1 2617 0 is_stmt 1
	movl	-72(%rbp), %ecx	# uncritical, tmp85
	movl	-68(%rbp), %edx	# promoted_mode, tmp86
	movq	-64(%rbp), %rsi	# insn, tmp87
	movq	-56(%rbp), %rax	# x, tmp88
	movq	%rax, %rdi	# tmp88,
	call	fixup_memory_subreg	#
	jmp	.L406	#
.L407:
	.loc 1 2621 0
	movl	-28(%rbp), %eax	# code, code.145
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp90
	movq	%rax, -24(%rbp)	# tmp90, fmt
	.loc 1 2622 0
	movl	-28(%rbp), %eax	# code, code.146
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22062
	movzbl	%al, %eax	# D.22062, D.22063
	subl	$1, %eax	#, tmp92
	movl	%eax, -36(%rbp)	# tmp92, i
	jmp	.L408	#
.L413:
	.loc 1 2624 0
	movl	-36(%rbp), %eax	# i, tmp93
	movslq	%eax, %rdx	# tmp93, D.22064
	movq	-24(%rbp), %rax	# fmt, tmp94
	addq	%rdx, %rax	# D.22064, D.22065
	movzbl	(%rax), %eax	# *_21, D.22066
	cmpb	$101, %al	#, D.22066
	jne	.L409	#,
	.loc 1 2625 0
	movq	-56(%rbp), %rax	# x, tmp95
	movl	-36(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.22061
	movl	-72(%rbp), %ecx	# uncritical, tmp98
	movl	-68(%rbp), %edx	# promoted_mode, tmp99
	movq	-64(%rbp), %rsi	# insn, tmp100
	movq	%rax, %rdi	# D.22061,
	call	walk_fixup_memory_subreg	#
	movq	-56(%rbp), %rdx	# x, tmp101
	movl	-36(%rbp), %ecx	# i, tmp103
	movslq	%ecx, %rcx	# tmp103, tmp102
	movq	%rax, 8(%rdx,%rcx,8)	# D.22061, x_4(D)->fld[i_1].rtx
	jmp	.L410	#
.L409:
	.loc 1 2627 0
	movl	-36(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, D.22064
	movq	-24(%rbp), %rax	# fmt, tmp105
	addq	%rdx, %rax	# D.22064, D.22065
	movzbl	(%rax), %eax	# *_26, D.22066
	cmpb	$69, %al	#, D.22066
	jne	.L410	#,
.LBB34:
	.loc 1 2630 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L411	#
.L412:
	.loc 1 2631 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp106
	movl	-36(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, tmp107
	movq	8(%rax,%rdx,8), %rbx	# x_4(D)->fld[i_1].rtvec, D.22067
	.loc 1 2632 0 discriminator 2
	movq	-56(%rbp), %rax	# x, tmp109
	movl	-36(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22067
	movl	-32(%rbp), %edx	# j, tmp113
	movslq	%edx, %rdx	# tmp113, tmp112
	movq	8(%rax,%rdx,8), %rax	# _32->elem, D.22061
	movl	-72(%rbp), %ecx	# uncritical, tmp114
	movl	-68(%rbp), %edx	# promoted_mode, tmp115
	movq	-64(%rbp), %rsi	# insn, tmp116
	movq	%rax, %rdi	# D.22061,
	call	walk_fixup_memory_subreg	#
	movl	-32(%rbp), %edx	# j, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	%rax, 8(%rbx,%rdx,8)	# D.22061, _31->elem
	.loc 1 2630 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L411:
	.loc 1 2630 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp119
	movl	-36(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, tmp120
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22067
	movl	(%rax), %eax	# _29->num_elem, D.22063
	cmpl	-32(%rbp), %eax	# j, D.22063
	jg	.L412	#,
.L410:
.LBE34:
	.loc 1 2622 0 is_stmt 1
	subl	$1, -36(%rbp)	#, i
.L408:
	.loc 1 2622 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L413	#,
	.loc 1 2636 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, D.22059
.L406:
	.loc 1 2637 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	walk_fixup_memory_subreg, .-walk_fixup_memory_subreg
	.type	fixup_stack_1, @function
fixup_stack_1:
.LFB39:
	.loc 1 2649 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# x, x
	movq	%rsi, -80(%rbp)	# insn, insn
	.loc 1 2651 0
	movq	-72(%rbp), %rax	# x, tmp103
	movzwl	(%rax), %eax	# x_4(D)->code, D.22069
	movzwl	%ax, %eax	# D.22069, tmp104
	movl	%eax, -52(%rbp)	# tmp104, code
	.loc 1 2654 0
	cmpl	$66, -52(%rbp)	#, code
	jne	.L415	#,
.LBB35:
	.loc 1 2656 0
	movq	-72(%rbp), %rax	# x, tmp105
	movq	8(%rax), %rax	# x_4(D)->fld[0].rtx, tmp106
	movq	%rax, -48(%rbp)	# tmp106, ad
	.loc 1 2659 0
	movq	-48(%rbp), %rax	# ad, tmp107
	movzwl	(%rax), %eax	# ad_7->code, D.22069
	cmpw	$75, %ax	#, D.22069
	jne	.L416	#,
	.loc 1 2660 0
	movq	-48(%rbp), %rax	# ad, tmp108
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movzwl	(%rax), %eax	# _9->code, D.22069
	cmpw	$61, %ax	#, D.22069
	jne	.L416	#,
	.loc 1 2661 0
	movq	-48(%rbp), %rax	# ad, tmp109
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _11->fld[0].rtuint, D.22071
	cmpl	$52, %eax	#, D.22071
	jbe	.L417	#,
	.loc 1 2662 0
	movq	-48(%rbp), %rax	# ad, tmp110
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _13->fld[0].rtuint, D.22071
	cmpl	$57, %eax	#, D.22071
	jbe	.L418	#,
.L417:
	.loc 1 2663 0
	movq	-48(%rbp), %rax	# ad, tmp111
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.22071
	cmpl	$20, %eax	#, D.22071
	je	.L418	#,
	.loc 1 2665 0
	movq	-48(%rbp), %rax	# ad, tmp112
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _17->fld[0].rtuint, D.22071
	cmpl	$6, %eax	#, D.22071
	je	.L418	#,
	.loc 1 2667 0
	movq	-48(%rbp), %rax	# ad, tmp113
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _19->fld[0].rtuint, D.22071
	cmpl	$7, %eax	#, D.22071
	je	.L418	#,
	.loc 1 2668 0
	movq	-48(%rbp), %rax	# ad, tmp114
	movq	8(%rax), %rax	# ad_7->fld[0].rtx, D.22070
	movl	8(%rax), %eax	# _21->fld[0].rtuint, D.22071
	cmpl	$16, %eax	#, D.22071
	je	.L418	#,
	.loc 1 2669 0
	movq	-48(%rbp), %rax	# ad, tmp115
	movq	8(%rax), %rdx	# ad_7->fld[0].rtx, D.22070
	movq	cfun(%rip), %rax	# cfun, cfun.147
	movq	128(%rax), %rax	# cfun.147_24->internal_arg_pointer, D.22070
	cmpq	%rax, %rdx	# D.22070, D.22070
	jne	.L416	#,
.L418:
	.loc 1 2670 0
	movq	-48(%rbp), %rax	# ad, tmp116
	movq	16(%rax), %rax	# ad_7->fld[1].rtx, D.22070
	movzwl	(%rax), %eax	# _26->code, D.22069
	cmpw	$54, %ax	#, D.22069
	jne	.L416	#,
.LBB36:
	.loc 1 2673 0
	movq	-72(%rbp), %rax	# x, tmp117
	movzbl	2(%rax), %eax	# x_4(D)->mode, D.22072
	movzbl	%al, %eax	# D.22072, D.22073
	movq	-48(%rbp), %rdx	# ad, tmp118
	movq	%rdx, %rsi	# tmp118,
	movl	%eax, %edi	# D.22073,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22074
	je	.L419	#,
	.loc 1 2674 0
	movq	-72(%rbp), %rax	# x, D.22068
	jmp	.L420	#
.L419:
	.loc 1 2676 0
	call	start_sequence	#
	.loc 1 2677 0
	movq	-48(%rbp), %rax	# ad, tmp119
	movq	%rax, %rdi	# tmp119,
	call	copy_to_reg	#
	movq	%rax, -40(%rbp)	# tmp120, temp
	.loc 1 2678 0
	call	gen_sequence	#
	movq	%rax, -32(%rbp)	# tmp121, seq
	.loc 1 2679 0
	call	end_sequence	#
	.loc 1 2680 0
	movq	-80(%rbp), %rdx	# insn, tmp122
	movq	-32(%rbp), %rax	# seq, tmp123
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	emit_insn_before	#
	.loc 1 2681 0
	movq	-40(%rbp), %rdx	# temp, tmp124
	movq	-72(%rbp), %rax	# x, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	replace_equiv_address	#
	jmp	.L420	#
.L416:
.LBE36:
	.loc 1 2683 0
	movq	-72(%rbp), %rax	# x, D.22068
	jmp	.L420	#
.L415:
.LBE35:
	.loc 1 2686 0
	movl	-52(%rbp), %eax	# code, code.148
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp127
	movq	%rax, -24(%rbp)	# tmp127, fmt
	.loc 1 2687 0
	movl	-52(%rbp), %eax	# code, code.149
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22072
	movzbl	%al, %eax	# D.22072, D.22074
	subl	$1, %eax	#, tmp129
	movl	%eax, -60(%rbp)	# tmp129, i
	jmp	.L421	#
.L426:
	.loc 1 2689 0
	movl	-60(%rbp), %eax	# i, tmp130
	movslq	%eax, %rdx	# tmp130, D.22075
	movq	-24(%rbp), %rax	# fmt, tmp131
	addq	%rdx, %rax	# D.22075, D.22076
	movzbl	(%rax), %eax	# *_44, D.22077
	cmpb	$101, %al	#, D.22077
	jne	.L422	#,
	.loc 1 2690 0
	movq	-72(%rbp), %rax	# x, tmp132
	movl	-60(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, tmp133
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtx, D.22070
	movq	-80(%rbp), %rdx	# insn, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.22070,
	call	fixup_stack_1	#
	movq	-72(%rbp), %rdx	# x, tmp136
	movl	-60(%rbp), %ecx	# i, tmp138
	movslq	%ecx, %rcx	# tmp138, tmp137
	movq	%rax, 8(%rdx,%rcx,8)	# D.22070, x_4(D)->fld[i_1].rtx
	jmp	.L423	#
.L422:
	.loc 1 2691 0
	movl	-60(%rbp), %eax	# i, tmp139
	movslq	%eax, %rdx	# tmp139, D.22075
	movq	-24(%rbp), %rax	# fmt, tmp140
	addq	%rdx, %rax	# D.22075, D.22076
	movzbl	(%rax), %eax	# *_49, D.22077
	cmpb	$69, %al	#, D.22077
	jne	.L423	#,
.LBB37:
	.loc 1 2694 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L424	#
.L425:
	.loc 1 2695 0 discriminator 2
	movq	-72(%rbp), %rax	# x, tmp141
	movl	-60(%rbp), %edx	# i, tmp143
	movslq	%edx, %rdx	# tmp143, tmp142
	movq	8(%rax,%rdx,8), %rbx	# x_4(D)->fld[i_1].rtvec, D.22078
	movq	-72(%rbp), %rax	# x, tmp144
	movl	-60(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, tmp145
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22078
	movl	-56(%rbp), %edx	# j, tmp148
	movslq	%edx, %rdx	# tmp148, tmp147
	movq	8(%rax,%rdx,8), %rax	# _55->elem, D.22070
	movq	-80(%rbp), %rdx	# insn, tmp149
	movq	%rdx, %rsi	# tmp149,
	movq	%rax, %rdi	# D.22070,
	call	fixup_stack_1	#
	movl	-56(%rbp), %edx	# j, tmp151
	movslq	%edx, %rdx	# tmp151, tmp150
	movq	%rax, 8(%rbx,%rdx,8)	# D.22070, _54->elem
	.loc 1 2694 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L424:
	.loc 1 2694 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp152
	movl	-60(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	movq	8(%rax,%rdx,8), %rax	# x_4(D)->fld[i_1].rtvec, D.22078
	movl	(%rax), %eax	# _52->num_elem, D.22074
	cmpl	-56(%rbp), %eax	# j, D.22074
	jg	.L425	#,
.L423:
.LBE37:
	.loc 1 2687 0 is_stmt 1
	subl	$1, -60(%rbp)	#, i
.L421:
	.loc 1 2687 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, i
	jns	.L426	#,
	.loc 1 2698 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, D.22068
.L420:
	.loc 1 2699 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	fixup_stack_1, .-fixup_stack_1
	.type	optimize_bit_field, @function
optimize_bit_field:
.LFB40:
	.loc 1 2717 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# body, body
	movq	%rsi, -112(%rbp)	# insn, insn
	movq	%rdx, -120(%rbp)	# equiv_mem, equiv_mem
	.loc 1 2720 0
	movq	$0, -72(%rbp)	#, seq
	.loc 1 2723 0
	movq	-104(%rbp), %rax	# body, tmp172
	movq	8(%rax), %rax	# body_13(D)->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _14->code, D.22080
	cmpw	$132, %ax	#, D.22080
	je	.L428	#,
	.loc 1 2724 0
	movq	-104(%rbp), %rax	# body, tmp173
	movq	8(%rax), %rax	# body_13(D)->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _16->code, D.22080
	cmpw	$133, %ax	#, D.22080
	jne	.L429	#,
.L428:
	.loc 1 2725 0
	movq	-104(%rbp), %rax	# body, tmp174
	movq	8(%rax), %rax	# body_13(D)->fld[0].rtx, tmp175
	movq	%rax, -80(%rbp)	# tmp175, bitfield
	movl	$1, -88(%rbp)	#, destflag
	jmp	.L430	#
.L429:
	.loc 1 2727 0
	movq	-104(%rbp), %rax	# body, tmp176
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, tmp177
	movq	%rax, -80(%rbp)	# tmp177, bitfield
	movl	$0, -88(%rbp)	#, destflag
.L430:
	.loc 1 2732 0
	movq	-80(%rbp), %rax	# bitfield, tmp178
	movq	16(%rax), %rax	# bitfield_1->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _22->code, D.22080
	cmpw	$54, %ax	#, D.22080
	jne	.L427	#,
	.loc 1 2733 0
	movq	-80(%rbp), %rax	# bitfield, tmp179
	movq	24(%rax), %rax	# bitfield_1->fld[2].rtx, D.22079
	movzwl	(%rax), %eax	# _24->code, D.22080
	cmpw	$54, %ax	#, D.22080
	jne	.L427	#,
	.loc 1 2734 0
	movq	-80(%rbp), %rax	# bitfield, tmp180
	movq	16(%rax), %rax	# bitfield_1->fld[1].rtx, D.22079
	movq	8(%rax), %rax	# _26->fld[0].rtwint, D.22081
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.22082,
	call	mode_for_size	#
	movl	%eax, -84(%rbp)	# tmp181, mode
	cmpl	$51, -84(%rbp)	#, mode
	je	.L427	#,
	.loc 1 2736 0
	movq	-80(%rbp), %rax	# bitfield, tmp182
	movq	24(%rax), %rax	# bitfield_1->fld[2].rtx, D.22079
	movq	8(%rax), %rax	# _30->fld[0].rtwint, D.22081
	movq	-80(%rbp), %rdx	# bitfield, tmp183
	movq	16(%rdx), %rdx	# bitfield_1->fld[1].rtx, D.22079
	movq	8(%rdx), %rcx	# _32->fld[0].rtwint, D.22081
	cqto
	idivq	%rcx	# D.22081
	movq	%rdx, %rax	# tmp184, D.22081
	testq	%rax, %rax	# D.22081
	jne	.L427	#,
.LBB38:
	.loc 1 2738 0
	movq	$0, -64(%rbp)	#, memref
	.loc 1 2743 0
	movq	-80(%rbp), %rax	# bitfield, tmp186
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _36->code, D.22080
	cmpw	$66, %ax	#, D.22080
	jne	.L432	#,
	.loc 1 2744 0
	movq	-80(%rbp), %rax	# bitfield, tmp187
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, tmp188
	movq	%rax, -64(%rbp)	# tmp188, memref
	jmp	.L433	#
.L432:
	.loc 1 2745 0
	movq	-80(%rbp), %rax	# bitfield, tmp189
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _39->code, D.22080
	cmpw	$61, %ax	#, D.22080
	jne	.L434	#,
	.loc 1 2746 0
	cmpq	$0, -120(%rbp)	#, equiv_mem
	je	.L434	#,
	.loc 1 2747 0
	movq	-80(%rbp), %rax	# bitfield, tmp190
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movl	8(%rax), %eax	# _42->fld[0].rtuint, D.22082
	movl	%eax, %eax	# D.22082, D.22083
	leaq	0(,%rax,8), %rdx	#, D.22083
	movq	-120(%rbp), %rax	# equiv_mem, tmp191
	addq	%rdx, %rax	# D.22083, D.22084
	movq	(%rax), %rax	# *_46, tmp192
	movq	%rax, -64(%rbp)	# tmp192, memref
	jmp	.L433	#
.L434:
	.loc 1 2748 0
	movq	-80(%rbp), %rax	# bitfield, tmp193
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _48->code, D.22080
	cmpw	$63, %ax	#, D.22080
	jne	.L435	#,
	.loc 1 2749 0
	movq	-80(%rbp), %rax	# bitfield, tmp194
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movq	8(%rax), %rax	# _50->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _51->code, D.22080
	cmpw	$66, %ax	#, D.22080
	jne	.L435	#,
	.loc 1 2750 0
	movq	-80(%rbp), %rax	# bitfield, tmp195
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movq	8(%rax), %rax	# _53->fld[0].rtx, tmp196
	movq	%rax, -64(%rbp)	# tmp196, memref
	jmp	.L433	#
.L435:
	.loc 1 2751 0
	movq	-80(%rbp), %rax	# bitfield, tmp197
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _55->code, D.22080
	cmpw	$63, %ax	#, D.22080
	jne	.L433	#,
	.loc 1 2752 0
	cmpq	$0, -120(%rbp)	#, equiv_mem
	je	.L433	#,
	.loc 1 2753 0
	movq	-80(%rbp), %rax	# bitfield, tmp198
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movq	8(%rax), %rax	# _57->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _58->code, D.22080
	cmpw	$61, %ax	#, D.22080
	jne	.L433	#,
	.loc 1 2754 0
	movq	-80(%rbp), %rax	# bitfield, tmp199
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movq	8(%rax), %rax	# _60->fld[0].rtx, D.22079
	movl	8(%rax), %eax	# _61->fld[0].rtuint, D.22082
	movl	%eax, %eax	# D.22082, D.22083
	leaq	0(,%rax,8), %rdx	#, D.22083
	movq	-120(%rbp), %rax	# equiv_mem, tmp200
	addq	%rdx, %rax	# D.22083, D.22084
	movq	(%rax), %rax	# *_65, tmp201
	movq	%rax, -64(%rbp)	# tmp201, memref
.L433:
	.loc 1 2756 0
	cmpq	$0, -64(%rbp)	#, memref
	je	.L427	#,
	.loc 1 2757 0
	movq	-64(%rbp), %rax	# memref, tmp202
	movq	8(%rax), %rax	# memref_4->fld[0].rtx, D.22079
	movq	%rax, %rdi	# D.22079,
	call	mode_dependent_address_p	#
	testl	%eax, %eax	# D.22085
	jne	.L427	#,
	.loc 1 2758 0
	movq	-64(%rbp), %rax	# memref, tmp203
	movzbl	3(%rax), %eax	# *memref_4, D.22086
	andl	$8, %eax	#, D.22086
	testb	%al, %al	# D.22086
	jne	.L427	#,
.LBB39:
	.loc 1 2764 0
	movq	-80(%rbp), %rax	# bitfield, tmp204
	movq	24(%rax), %rax	# bitfield_1->fld[2].rtx, D.22079
	movq	8(%rax), %rax	# _71->fld[0].rtwint, tmp205
	movq	%rax, -56(%rbp)	# tmp205, offset
	.loc 1 2773 0
	movq	-56(%rbp), %rax	# offset, tmp207
	leaq	7(%rax), %rdx	#, tmp209
	testq	%rax, %rax	# tmp208
	cmovs	%rdx, %rax	# tmp209,, tmp208
	sarq	$3, %rax	#, tmp210
	movq	%rax, -56(%rbp)	# tmp210, offset
	.loc 1 2774 0
	movq	-80(%rbp), %rax	# bitfield, tmp211
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movzwl	(%rax), %eax	# _74->code, D.22080
	cmpw	$63, %ax	#, D.22080
	jne	.L436	#,
	.loc 1 2776 0
	movq	-80(%rbp), %rax	# bitfield, tmp212
	movq	8(%rax), %rax	# bitfield_1->fld[0].rtx, D.22079
	movl	16(%rax), %eax	# _76->fld[1].rtuint, D.22082
	.loc 1 2777 0
	movl	target_flags(%rip), %edx	# target_flags, target_flags.151
	andl	$33554432, %edx	#, D.22085
	testl	%edx, %edx	# D.22085
	je	.L437	#,
	.loc 1 2777 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.150
	jmp	.L438	#
.L437:
	.loc 1 2777 0 discriminator 2
	movl	$4, %ebx	#, iftmp.150
.L438:
	.loc 1 2777 0 discriminator 3
	movl	$0, %edx	#, tmp214
	divl	%ebx	# iftmp.150
	movl	%eax, %edx	# tmp213, D.22082
	movl	target_flags(%rip), %eax	# target_flags, target_flags.153
	andl	$33554432, %eax	#, D.22085
	testl	%eax, %eax	# D.22085
	je	.L439	#,
	.loc 1 2777 0 discriminator 1
	movl	$8, %eax	#, iftmp.152
	jmp	.L440	#
.L439:
	.loc 1 2777 0 discriminator 2
	movl	$4, %eax	#, iftmp.152
.L440:
	.loc 1 2777 0 discriminator 3
	imull	%edx, %eax	# D.22082, D.22082
	.loc 1 2776 0 is_stmt 1 discriminator 3
	movl	%eax, %eax	# D.22082, D.22081
	addq	%rax, -56(%rbp)	# D.22081, offset
.L436:
	.loc 1 2785 0
	call	start_sequence	#
	.loc 1 2786 0
	movq	-56(%rbp), %rdx	# offset, tmp215
	movl	-84(%rbp), %esi	# mode, tmp216
	movq	-64(%rbp), %rax	# memref, tmp217
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp217,
	call	adjust_address_1	#
	movq	%rax, -64(%rbp)	# tmp218, memref
	.loc 1 2787 0
	call	get_insns	#
	movq	%rax, -32(%rbp)	# tmp219, insns
	.loc 1 2788 0
	call	end_sequence	#
	.loc 1 2789 0
	movq	-112(%rbp), %rdx	# insn, tmp220
	movq	-32(%rbp), %rax	# insns, tmp221
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	emit_insns_before	#
	.loc 1 2794 0
	cmpl	$0, -88(%rbp)	#, destflag
	je	.L441	#,
	.loc 1 2796 0
	movq	-104(%rbp), %rax	# body, tmp222
	leaq	8(%rax), %rsi	#, D.22084
	movq	-64(%rbp), %rdx	# memref, tmp223
	movq	-112(%rbp), %rax	# insn, tmp224
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp224,
	call	validate_change	#
	.loc 1 2797 0
	movq	-104(%rbp), %rax	# body, tmp225
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _94->code, D.22080
	cmpw	$67, %ax	#, D.22080
	je	.L442	#,
	.loc 1 2797 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# body, tmp226
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _96->code, D.22080
	cmpw	$68, %ax	#, D.22080
	je	.L442	#,
	movq	-104(%rbp), %rax	# body, tmp227
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _98->code, D.22080
	cmpw	$54, %ax	#, D.22080
	je	.L442	#,
	movq	-104(%rbp), %rax	# body, tmp228
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _100->code, D.22080
	cmpw	$58, %ax	#, D.22080
	je	.L442	#,
	movq	-104(%rbp), %rax	# body, tmp229
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _102->code, D.22080
	cmpw	$55, %ax	#, D.22080
	je	.L442	#,
.LBB40:
	.loc 1 2799 0 is_stmt 1
	movq	-104(%rbp), %rax	# body, tmp230
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, tmp231
	movq	%rax, -48(%rbp)	# tmp231, src
	.loc 1 2800 0
	jmp	.L443	#
.L445:
	.loc 1 2802 0
	movq	-48(%rbp), %rax	# src, tmp232
	movq	8(%rax), %rax	# src_6->fld[0].rtx, tmp233
	movq	%rax, -48(%rbp)	# tmp233, src
.L443:
	.loc 1 2800 0 discriminator 1
	movq	-48(%rbp), %rax	# src, tmp234
	movzwl	(%rax), %eax	# src_6->code, D.22080
	cmpw	$63, %ax	#, D.22080
	jne	.L444	#,
	.loc 1 2801 0
	movq	-48(%rbp), %rax	# src, tmp235
	movl	16(%rax), %eax	# src_6->fld[1].rtuint, D.22082
	testl	%eax, %eax	# D.22082
	je	.L445	#,
.L444:
	.loc 1 2803 0
	movq	-48(%rbp), %rax	# src, tmp236
	movzbl	2(%rax), %edx	# src_6->mode, D.22086
	movq	-64(%rbp), %rax	# memref, tmp237
	movzbl	2(%rax), %eax	# memref_90->mode, D.22086
	cmpb	%al, %dl	# D.22086, D.22086
	je	.L446	#,
	.loc 1 2804 0
	movq	-104(%rbp), %rax	# body, tmp238
	movq	16(%rax), %rdx	# body_13(D)->fld[1].rtx, D.22079
	movq	-64(%rbp), %rax	# memref, tmp239
	movzbl	2(%rax), %eax	# memref_90->mode, D.22086
	movzbl	%al, %eax	# D.22086, D.22087
	movq	%rdx, %rsi	# D.22079,
	movl	%eax, %edi	# D.22087,
	call	gen_lowpart	#
	movq	%rax, -48(%rbp)	# tmp240, src
.L446:
	.loc 1 2805 0
	movq	-104(%rbp), %rax	# body, tmp241
	leaq	16(%rax), %rsi	#, D.22084
	movq	-48(%rbp), %rdx	# src, tmp242
	movq	-112(%rbp), %rax	# insn, tmp243
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp243,
	call	validate_change	#
.LBE40:
	.loc 1 2798 0
	nop
	jmp	.L448	#
.L442:
	.loc 1 2807 0
	movq	-104(%rbp), %rax	# body, tmp244
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzbl	2(%rax), %eax	# _115->mode, D.22086
	testb	%al, %al	# D.22086
	je	.L448	#,
	.loc 1 2808 0
	movq	-104(%rbp), %rax	# body, tmp245
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzbl	2(%rax), %edx	# _117->mode, D.22086
	movq	-64(%rbp), %rax	# memref, tmp246
	movzbl	2(%rax), %eax	# memref_90->mode, D.22086
	cmpb	%al, %dl	# D.22086, D.22086
	je	.L448	#,
	.loc 1 2815 0
	movl	$__FUNCTION__.14237, %edx	#,
	movl	$2815, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L441:
.LBB41:
	.loc 1 2819 0
	movq	-104(%rbp), %rax	# body, tmp247
	movq	8(%rax), %rax	# body_13(D)->fld[0].rtx, tmp248
	movq	%rax, -40(%rbp)	# tmp248, dest
	.loc 1 2821 0
	jmp	.L449	#
.L453:
	.loc 1 2827 0
	movq	-40(%rbp), %rax	# dest, tmp249
	movq	8(%rax), %rax	# dest_8->fld[0].rtx, tmp250
	movq	%rax, -40(%rbp)	# tmp250, dest
.L449:
	.loc 1 2821 0 discriminator 1
	movq	-40(%rbp), %rax	# dest, tmp251
	movzwl	(%rax), %eax	# dest_8->code, D.22080
	cmpw	$63, %ax	#, D.22080
	jne	.L450	#,
	.loc 1 2822 0
	movq	-40(%rbp), %rax	# dest, tmp252
	movl	16(%rax), %eax	# dest_8->fld[1].rtuint, D.22082
	testl	%eax, %eax	# D.22082
	jne	.L450	#,
	.loc 1 2823 0
	movq	-40(%rbp), %rax	# dest, tmp253
	movzbl	2(%rax), %eax	# dest_8->mode, D.22086
	movzbl	%al, %eax	# D.22086, D.22085
	cltq
	movl	mode_class(,%rax,4), %edx	# mode_class, D.22088
	.loc 1 2824 0
	movq	-40(%rbp), %rax	# dest, tmp255
	movq	8(%rax), %rax	# dest_8->fld[0].rtx, D.22079
	movzbl	2(%rax), %eax	# _126->mode, D.22086
	movzbl	%al, %eax	# D.22086, D.22085
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22088
	.loc 1 2823 0
	cmpl	%eax, %edx	# D.22088, D.22088
	jne	.L450	#,
	.loc 1 2825 0
	movq	-40(%rbp), %rax	# dest, tmp257
	movq	8(%rax), %rax	# dest_8->fld[0].rtx, D.22079
	movzbl	2(%rax), %eax	# _130->mode, D.22086
	movzbl	%al, %eax	# D.22086, D.22085
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22086
	.loc 1 2826 0
	movzbl	%al, %edx	# D.22086, D.22085
	movl	target_flags(%rip), %eax	# target_flags, target_flags.159
	andl	$33554432, %eax	#, D.22085
	testl	%eax, %eax	# D.22085
	je	.L451	#,
	.loc 1 2826 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.158
	jmp	.L452	#
.L451:
	.loc 1 2826 0 discriminator 2
	movl	$4, %eax	#, iftmp.158
.L452:
	.loc 1 2825 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.158, D.22085
	jle	.L453	#,
.L450:
	.loc 1 2829 0
	movq	-104(%rbp), %rax	# body, tmp259
	leaq	8(%rax), %rsi	#, D.22084
	movq	-40(%rbp), %rdx	# dest, tmp260
	movq	-112(%rbp), %rax	# insn, tmp261
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp261,
	call	validate_change	#
	.loc 1 2831 0
	movq	-40(%rbp), %rax	# dest, tmp262
	movzbl	2(%rax), %edx	# dest_8->mode, D.22086
	movq	-64(%rbp), %rax	# memref, tmp263
	movzbl	2(%rax), %eax	# memref_90->mode, D.22086
	cmpb	%al, %dl	# D.22086, D.22086
	jne	.L454	#,
	.loc 1 2832 0
	movq	-104(%rbp), %rax	# body, tmp264
	leaq	16(%rax), %rsi	#, D.22084
	movq	-64(%rbp), %rdx	# memref, tmp265
	movq	-112(%rbp), %rax	# insn, tmp266
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp266,
	call	validate_change	#
	jmp	.L448	#
.L454:
.LBB42:
	.loc 1 2836 0
	movq	-40(%rbp), %rax	# dest, tmp267
	movzbl	2(%rax), %eax	# dest_8->mode, D.22086
	movzbl	%al, %eax	# D.22086, D.22087
	movl	%eax, %edi	# D.22087,
	call	gen_reg_rtx	#
	movq	%rax, -24(%rbp)	# tmp268, newreg
	.loc 1 2838 0
	call	start_sequence	#
	.loc 1 2840 0
	movq	-104(%rbp), %rax	# body, tmp269
	movq	16(%rax), %rax	# body_13(D)->fld[1].rtx, D.22079
	movzwl	(%rax), %eax	# _147->code, D.22080
	.loc 1 2839 0
	cmpw	$133, %ax	#, D.22080
	sete	%al	#, D.22089
	movzbl	%al, %edx	# D.22089, D.22085
	movq	-64(%rbp), %rcx	# memref, tmp270
	movq	-24(%rbp), %rax	# newreg, tmp271
	movq	%rcx, %rsi	# tmp270,
	movq	%rax, %rdi	# tmp271,
	call	convert_move	#
	.loc 1 2841 0
	call	get_insns	#
	movq	%rax, -72(%rbp)	# tmp272, seq
	.loc 1 2842 0
	call	end_sequence	#
	.loc 1 2844 0
	movq	-104(%rbp), %rax	# body, tmp273
	leaq	16(%rax), %rsi	#, D.22084
	movq	-24(%rbp), %rdx	# newreg, tmp274
	movq	-112(%rbp), %rax	# insn, tmp275
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp275,
	call	validate_change	#
.L448:
.LBE42:
.LBE41:
	.loc 1 2856 0
	call	apply_change_group	#
	testl	%eax, %eax	# D.22085
	je	.L427	#,
	.loc 1 2856 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, seq
	je	.L427	#,
	.loc 1 2857 0 is_stmt 1
	movq	-112(%rbp), %rdx	# insn, tmp276
	movq	-72(%rbp), %rax	# seq, tmp277
	movq	%rdx, %rsi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	emit_insns_before	#
.L427:
.LBE39:
.LBE38:
	.loc 1 2860 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	optimize_bit_field, .-optimize_bit_field
	.local	in_arg_offset
	.comm	in_arg_offset,4,4
	.local	var_offset
	.comm	var_offset,4,4
	.local	dynamic_offset
	.comm	dynamic_offset,4,4
	.local	out_arg_offset
	.comm	out_arg_offset,4,4
	.local	cfa_offset
	.comm	cfa_offset,4,4
	.globl	gen_mem_addressof
	.type	gen_mem_addressof, @function
gen_mem_addressof:
.LFB41:
	.loc 1 2924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# reg, reg
	movq	%rsi, -80(%rbp)	# decl, decl
	.loc 1 2925 0
	movq	-72(%rbp), %rax	# reg, tmp106
	movl	8(%rax), %eax	# reg_7(D)->fld[0].rtuint, D.22090
	movl	%eax, %ebx	# D.22090, D.22091
	movq	-72(%rbp), %rax	# reg, tmp107
	movzbl	2(%rax), %eax	# reg_7(D)->mode, D.22092
	movzbl	%al, %eax	# D.22092, D.22093
	movl	%eax, %edi	# D.22093,
	call	gen_reg_rtx	#
	movq	%rax, %rdx	#, D.22094
	movl	target_flags(%rip), %eax	# target_flags, target_flags.161
	andl	$33554432, %eax	#, D.22091
	testl	%eax, %eax	# D.22091
	je	.L456	#,
	.loc 1 2925 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.160
	jmp	.L457	#
.L456:
	.loc 1 2925 0 discriminator 2
	movl	$4, %eax	#, iftmp.160
.L457:
	.loc 1 2925 0 discriminator 3
	movq	-80(%rbp), %rcx	# decl, tmp108
	movq	%rcx, %r8	# tmp108,
	movl	%ebx, %ecx	# D.22091,
	movl	%eax, %esi	# iftmp.160,
	movl	$70, %edi	#,
	call	gen_rtx_fmt_eit	#
	movq	%rax, -48(%rbp)	# tmp109, r
	.loc 1 2929 0 is_stmt 1 discriminator 3
	cmpq	$0, -80(%rbp)	#, decl
	je	.L458	#,
	.loc 1 2929 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# decl, tmp110
	movq	%rax, %rdi	# tmp110,
	call	get_alias_set	#
	jmp	.L459	#
.L458:
	.loc 1 2929 0 discriminator 2
	movl	$0, %eax	#, iftmp.162
.L459:
	.loc 1 2929 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.162, set
	.loc 1 2933 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# r, tmp111
	movq	8(%rax), %rdx	# r_18->fld[0].rtx, D.22094
	movq	-72(%rbp), %rax	# reg, tmp112
	movzbl	3(%rax), %eax	# *reg_7(D), tmp115
	shrb	$3, %al	#, D.22095
	andl	$1, %eax	#, D.22095
	andl	$1, %eax	#, tmp117
	leal	0(,%rax,8), %ecx	#, tmp118
	movzbl	3(%rdx), %eax	# _22->volatil, tmp119
	andl	$-9, %eax	#, tmp120
	orl	%ecx, %eax	# tmp118, tmp121
	movb	%al, 3(%rdx)	# tmp121, _22->volatil
	.loc 1 2934 0 discriminator 3
	movq	-48(%rbp), %rax	# r, tmp122
	movq	8(%rax), %rdx	# r_18->fld[0].rtx, D.22094
	movq	-72(%rbp), %rax	# reg, tmp123
	movzbl	3(%rax), %eax	# *reg_7(D), tmp126
	shrb	$2, %al	#, D.22095
	andl	$1, %eax	#, D.22095
	andl	$1, %eax	#, tmp128
	leal	0(,%rax,4), %ecx	#, tmp129
	movzbl	3(%rdx), %eax	# _24->unchanging, tmp130
	andl	$-5, %eax	#, tmp131
	orl	%ecx, %eax	# tmp129, tmp132
	movb	%al, 3(%rdx)	# tmp132, _24->unchanging
	.loc 1 2936 0 discriminator 3
	movq	-72(%rbp), %rax	# reg, tmp133
	movw	$66, (%rax)	#, reg_7(D)->code
	.loc 1 2937 0 discriminator 3
	movq	-72(%rbp), %rax	# reg, tmp134
	movq	$0, 16(%rax)	#, reg_7(D)->fld[1].rtmem
	.loc 1 2938 0 discriminator 3
	movq	-72(%rbp), %rax	# reg, tmp135
	movq	-48(%rbp), %rdx	# r, tmp136
	movq	%rdx, 8(%rax)	# tmp136, reg_7(D)->fld[0].rtx
	.loc 1 2940 0 discriminator 3
	cmpq	$0, -80(%rbp)	#, decl
	je	.L460	#,
.LBB43:
	.loc 1 2942 0
	movq	-80(%rbp), %rax	# decl, tmp137
	movq	8(%rax), %rax	# decl_17(D)->common.type, tmp138
	movq	%rax, -32(%rbp)	# tmp138, type
	.loc 1 2944 0
	movq	-80(%rbp), %rax	# decl, tmp139
	movzbl	16(%rax), %eax	# decl_17(D)->common.code, D.22092
	movzbl	%al, %eax	# D.22092, D.22091
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22096
	.loc 1 2943 0
	cmpb	$100, %al	#, D.22096
	jne	.L461	#,
	.loc 1 2944 0
	movq	-80(%rbp), %rax	# decl, tmp141
	movzbl	48(%rax), %eax	# decl_17(D)->decl.mode, D.22092
	.loc 1 2943 0
	movzbl	%al, %eax	# D.22092, iftmp.163
	jmp	.L462	#
.L461:
	.loc 1 2944 0 discriminator 1
	movq	-80(%rbp), %rax	# decl, tmp142
	movq	8(%rax), %rax	# decl_17(D)->common.type, D.22097
	movzbl	61(%rax), %eax	# *_32, tmp145
	shrb	%al	# D.22098
	.loc 1 2943 0 discriminator 1
	movzbl	%al, %eax	# D.22098, iftmp.163
.L462:
	.loc 1 2943 0 is_stmt 0 discriminator 2
	movl	%eax, -52(%rbp)	# iftmp.163, decl_mode
	.loc 1 2945 0 is_stmt 1 discriminator 2
	movq	-80(%rbp), %rax	# decl, tmp146
	movzbl	16(%rax), %eax	# decl_17(D)->common.code, D.22092
	.loc 1 2946 0 discriminator 2
	cmpb	$118, %al	#, D.22092
	jne	.L463	#,
	.loc 1 2946 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# decl, tmp147
	movq	48(%rax), %rax	# decl_17(D)->exp.operands, iftmp.164
	jmp	.L464	#
.L463:
	.loc 1 2946 0 discriminator 2
	movq	-80(%rbp), %rax	# decl, tmp148
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, D.22094
	testq	%rax, %rax	# D.22094
	je	.L465	#,
	.loc 1 2946 0 discriminator 1
	movq	-80(%rbp), %rax	# decl, tmp149
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, D.22094
	testq	%rax, %rax	# D.22094
	je	.L466	#,
	movq	-80(%rbp), %rax	# decl, tmp150
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, iftmp.166
	jmp	.L464	#
.L466:
	.loc 1 2946 0 discriminator 2
	movq	-80(%rbp), %rax	# decl, tmp151
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	make_decl_rtl	#
	movq	-80(%rbp), %rax	# decl, tmp152
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, iftmp.166
	jmp	.L464	#
.L465:
	movl	$0, %eax	#, iftmp.165
.L464:
	.loc 1 2945 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.164, decl_rtl
	.loc 1 2948 0
	movl	-52(%rbp), %eax	# decl_mode, tmp153
	movl	%eax, %edx	# tmp153, D.22092
	movq	-72(%rbp), %rax	# reg, tmp154
	movb	%dl, 2(%rax)	# D.22092, reg_7(D)->mode
	.loc 1 2952 0
	movq	-80(%rbp), %rax	# decl, tmp155
	movzbl	16(%rax), %eax	# decl_17(D)->common.code, D.22092
	movzbl	%al, %eax	# D.22092, D.22091
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22096
	cmpb	$100, %al	#, D.22096
	jne	.L469	#,
	.loc 1 2952 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl_rtl, tmp157
	cmpq	-72(%rbp), %rax	# reg, tmp157
	jne	.L469	#,
	.loc 1 2953 0 is_stmt 1
	movq	-80(%rbp), %rax	# decl, tmp158
	movq	$0, 144(%rax)	#, decl_17(D)->decl.rtl
.L469:
	.loc 1 2955 0
	movq	-80(%rbp), %rcx	# decl, tmp159
	movq	-72(%rbp), %rax	# reg, tmp160
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp159,
	movq	%rax, %rdi	# tmp160,
	call	set_mem_attributes	#
	.loc 1 2956 0
	movq	-40(%rbp), %rdx	# set, tmp161
	movq	-72(%rbp), %rax	# reg, tmp162
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# tmp162,
	call	set_mem_alias_set	#
	.loc 1 2958 0
	movq	-80(%rbp), %rax	# decl, tmp163
	movzbl	16(%rax), %eax	# decl_17(D)->common.code, D.22092
	movzbl	%al, %eax	# D.22092, D.22091
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22096
	cmpb	$100, %al	#, D.22096
	jne	.L470	#,
	.loc 1 2958 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl_rtl, tmp165
	cmpq	-72(%rbp), %rax	# reg, tmp165
	jne	.L470	#,
	.loc 1 2959 0 is_stmt 1
	movq	-80(%rbp), %rax	# decl, tmp166
	movq	-72(%rbp), %rdx	# reg, tmp167
	movq	%rdx, 144(%rax)	# tmp167, decl_17(D)->decl.rtl
.L470:
	.loc 1 2961 0
	movq	-80(%rbp), %rax	# decl, tmp168
	movzbl	18(%rax), %eax	# *decl_17(D), D.22092
	andl	$1, %eax	#, D.22092
	testb	%al, %al	# D.22092
	jne	.L471	#,
	.loc 1 2961 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# decl, tmp169
	movzbl	16(%rax), %eax	# decl_17(D)->common.code, D.22092
	movzbl	%al, %eax	# D.22092, D.22091
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22096
	cmpb	$100, %al	#, D.22096
	jne	.L472	#,
	movq	-80(%rbp), %rax	# decl, tmp171
	movq	104(%rax), %rax	# decl_17(D)->decl.initial, D.22097
	testq	%rax, %rax	# D.22097
	je	.L472	#,
.L471:
	.loc 1 2962 0 is_stmt 1
	movq	-32(%rbp), %rax	# type, tmp172
	movzbl	17(%rax), %eax	# *type_26, tmp175
	shrb	$5, %al	#, D.22095
	andl	$1, %eax	#, D.22095
	movzbl	%al, %edx	# D.22095, D.22091
	movq	-72(%rbp), %rax	# reg, tmp176
	movzbl	2(%rax), %eax	# reg_7(D)->mode, D.22092
	movzbl	%al, %esi	# D.22092, D.22093
	movq	-72(%rbp), %rcx	# reg, tmp177
	movq	-72(%rbp), %rax	# reg, tmp178
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp178,
	call	fixup_var_refs	#
.LBE43:
	jmp	.L473	#
.L472:
	jmp	.L473	#
.L460:
	.loc 1 2965 0
	movq	-72(%rbp), %rax	# reg, tmp179
	movzbl	2(%rax), %eax	# reg_7(D)->mode, D.22092
	movzbl	%al, %esi	# D.22092, D.22093
	movq	-72(%rbp), %rdx	# reg, tmp180
	movq	-72(%rbp), %rax	# reg, tmp181
	movl	$0, %r8d	#,
	movq	%rdx, %rcx	# tmp180,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp181,
	call	fixup_var_refs	#
.L473:
	.loc 1 2967 0
	movq	-72(%rbp), %rax	# reg, D.22099
	.loc 1 2968 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	gen_mem_addressof, .-gen_mem_addressof
	.globl	flush_addressof
	.type	flush_addressof, @function
flush_addressof:
.LFB42:
	.loc 1 2975 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 2976 0
	movq	-8(%rbp), %rax	# decl, tmp80
	movzbl	16(%rax), %eax	# decl_6(D)->common.code, D.22100
	cmpb	$35, %al	#, D.22100
	je	.L476	#,
	.loc 1 2976 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp81
	movzbl	16(%rax), %eax	# decl_6(D)->common.code, D.22100
	cmpb	$34, %al	#, D.22100
	jne	.L475	#,
.L476:
	.loc 1 2977 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp82
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	je	.L478	#,
	.loc 1 2977 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp83
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	setne	%al	#, iftmp.167
	jmp	.L479	#
.L478:
	.loc 1 2977 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp84
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp85
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	setne	%al	#, iftmp.167
.L479:
	.loc 1 2977 0 discriminator 3
	testb	%al, %al	# iftmp.167
	je	.L475	#,
	.loc 1 2978 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	je	.L480	#,
	.loc 1 2978 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp87
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.168
	jmp	.L481	#
.L480:
	.loc 1 2978 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp88
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp89
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.168
.L481:
	.loc 1 2978 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.168_2->code, D.22102
	cmpw	$66, %ax	#, D.22102
	jne	.L475	#,
	.loc 1 2979 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp90
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	je	.L482	#,
	.loc 1 2979 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp91
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.169
	jmp	.L483	#
.L482:
	.loc 1 2979 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp92
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp93
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.169
.L483:
	.loc 1 2979 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.169_3->fld[0].rtx, D.22101
	movzwl	(%rax), %eax	# _21->code, D.22102
	cmpw	$70, %ax	#, D.22102
	jne	.L475	#,
	.loc 1 2980 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp94
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	je	.L484	#,
	.loc 1 2980 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp95
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.170
	jmp	.L485	#
.L484:
	.loc 1 2980 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp96
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp97
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.170
.L485:
	.loc 1 2980 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.170_4->fld[0].rtx, D.22101
	movq	8(%rax), %rax	# _26->fld[0].rtx, D.22101
	movzwl	(%rax), %eax	# _27->code, D.22102
	cmpw	$61, %ax	#, D.22102
	jne	.L475	#,
	.loc 1 2981 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp98
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, D.22101
	testq	%rax, %rax	# D.22101
	je	.L486	#,
	.loc 1 2981 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp99
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.171
	jmp	.L487	#
.L486:
	.loc 1 2981 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp100
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp101
	movq	144(%rax), %rax	# decl_6(D)->decl.rtl, iftmp.171
.L487:
	.loc 1 2981 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.171_5->fld[0].rtx, D.22101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22101,
	call	put_addressof_into_stack	#
.L475:
	.loc 1 2982 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	flush_addressof, .-flush_addressof
	.type	put_addressof_into_stack, @function
put_addressof_into_stack:
.LFB43:
	.loc 1 2990 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# r, r
	movq	%rsi, -48(%rbp)	# ht, ht
	.loc 1 2994 0
	movq	-40(%rbp), %rax	# r, tmp76
	movq	8(%rax), %rax	# r_6(D)->fld[0].rtx, tmp77
	movq	%rax, -16(%rbp)	# tmp77, reg
	.loc 1 2996 0
	movq	-16(%rbp), %rax	# reg, tmp78
	movzwl	(%rax), %eax	# reg_7->code, D.22103
	cmpw	$61, %ax	#, D.22103
	je	.L489	#,
	.loc 1 2997 0
	movl	$__FUNCTION__.14269, %edx	#,
	movl	$2997, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L489:
	.loc 1 2999 0
	movq	-40(%rbp), %rax	# r, tmp79
	movq	24(%rax), %rax	# r_6(D)->fld[2].rttree, tmp80
	movq	%rax, -8(%rbp)	# tmp80, decl
	.loc 1 3000 0
	cmpq	$0, -8(%rbp)	#, decl
	je	.L490	#,
	.loc 1 3002 0
	movq	-8(%rbp), %rax	# decl, tmp81
	movq	8(%rax), %rax	# decl_9->common.type, tmp82
	movq	%rax, -24(%rbp)	# tmp82, type
	.loc 1 3003 0
	movq	-8(%rbp), %rax	# decl, tmp83
	movzbl	16(%rax), %eax	# decl_9->common.code, D.22104
	.loc 1 3004 0
	cmpb	$118, %al	#, D.22104
	je	.L491	#,
	.loc 1 3004 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp84
	movzbl	17(%rax), %eax	# *decl_9, D.22104
	andl	$8, %eax	#, D.22104
	testb	%al, %al	# D.22104
	je	.L491	#,
	.loc 1 3004 0 discriminator 3
	movl	$1, %eax	#, iftmp.172
	jmp	.L492	#
.L491:
	.loc 1 3004 0 discriminator 2
	movl	$0, %eax	#, iftmp.172
.L492:
	.loc 1 3003 0 is_stmt 1
	movl	%eax, -32(%rbp)	# iftmp.172, volatile_p
	.loc 1 3005 0
	movq	-8(%rbp), %rax	# decl, tmp85
	movzbl	18(%rax), %eax	# *decl_9, D.22104
	andl	$1, %eax	#, D.22104
	.loc 1 3006 0
	testb	%al, %al	# D.22104
	jne	.L493	#,
	.loc 1 3006 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp86
	movzbl	16(%rax), %eax	# decl_9->common.code, D.22104
	movzbl	%al, %eax	# D.22104, D.22105
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22106
	cmpb	$100, %al	#, D.22106
	jne	.L494	#,
	.loc 1 3006 0 discriminator 3
	movq	-8(%rbp), %rax	# decl, tmp88
	movq	104(%rax), %rax	# decl_9->decl.initial, D.22107
	testq	%rax, %rax	# D.22107
	je	.L494	#,
.L493:
	.loc 1 3006 0 discriminator 1
	movl	$1, %eax	#, iftmp.173
	jmp	.L495	#
.L494:
	.loc 1 3006 0 discriminator 4
	movl	$0, %eax	#, iftmp.173
.L495:
	.loc 1 3005 0 is_stmt 1
	movl	%eax, -28(%rbp)	# iftmp.173, used_p
	jmp	.L496	#
.L490:
	.loc 1 3010 0
	movq	$0, -24(%rbp)	#, type
	.loc 1 3011 0
	movl	$0, -32(%rbp)	#, volatile_p
	.loc 1 3012 0
	movl	$1, -28(%rbp)	#, used_p
.L496:
	.loc 1 3015 0
	movq	-40(%rbp), %rax	# r, tmp89
	movl	16(%rax), %esi	# r_6(D)->fld[1].rtuint, D.22108
	movq	-16(%rbp), %rax	# reg, tmp90
	movzbl	2(%rax), %eax	# reg_7->mode, D.22104
	movzbl	%al, %r8d	# D.22104, D.22109
	movq	-16(%rbp), %rax	# reg, tmp91
	movzbl	2(%rax), %eax	# reg_7->mode, D.22104
	movzbl	%al, %ecx	# D.22104, D.22109
	movl	-32(%rbp), %r9d	# volatile_p, tmp92
	movq	-24(%rbp), %rdx	# type, tmp93
	movq	-16(%rbp), %rax	# reg, tmp94
	movq	-48(%rbp), %rdi	# ht, tmp95
	movq	%rdi, 16(%rsp)	# tmp95,
	movl	-28(%rbp), %edi	# used_p, tmp96
	movl	%edi, 8(%rsp)	# tmp96,
	movl	%esi, (%rsp)	# D.22108,
	movq	%rax, %rsi	# tmp94,
	movl	$0, %edi	#,
	call	put_reg_into_stack	#
	.loc 1 3017 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	put_addressof_into_stack, .-put_addressof_into_stack
	.local	purge_bitfield_addressof_replacements
	.comm	purge_bitfield_addressof_replacements,8,8
	.local	purge_addressof_replacements
	.comm	purge_addressof_replacements,8,8
	.type	purge_addressof_1, @function
purge_addressof_1:
.LFB44:
	.loc 1 3042 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# loc, loc
	movq	%rsi, -160(%rbp)	# insn, insn
	movl	%edx, -164(%rbp)	# force, force
	movl	%ecx, -168(%rbp)	# store, store
	movq	%r8, -176(%rbp)	# ht, ht
	.loc 1 3047 0
	movb	$1, -133(%rbp)	#, result
.L498:
	.loc 1 3052 0
	movq	-152(%rbp), %rax	# loc, tmp195
	movq	(%rax), %rax	# *loc_19(D), tmp196
	movq	%rax, -72(%rbp)	# tmp196, x
	.loc 1 3053 0
	cmpq	$0, -72(%rbp)	#, x
	jne	.L499	#,
	.loc 1 3054 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L499:
	.loc 1 3056 0
	movq	-72(%rbp), %rax	# x, tmp197
	movzwl	(%rax), %eax	# x_20->code, D.22111
	movzwl	%ax, %eax	# D.22111, tmp198
	movl	%eax, -124(%rbp)	# tmp198, code
	.loc 1 3061 0
	cmpl	$47, -124(%rbp)	#, code
	jne	.L501	#,
	.loc 1 3063 0
	movq	-72(%rbp), %rax	# x, tmp199
	leaq	8(%rax), %rdi	#, D.22112
	movq	-176(%rbp), %rcx	# ht, tmp200
	movl	-164(%rbp), %edx	# force, tmp201
	movq	-160(%rbp), %rax	# insn, tmp202
	movq	%rcx, %r8	# tmp200,
	movl	$1, %ecx	#,
	movq	%rax, %rsi	# tmp202,
	call	purge_addressof_1	#
	movb	%al, -133(%rbp)	# tmp203, result
	.loc 1 3064 0
	movzbl	-133(%rbp), %ebx	# result, D.22113
	movq	-72(%rbp), %rax	# x, tmp204
	leaq	16(%rax), %rdi	#, D.22112
	movq	-176(%rbp), %rcx	# ht, tmp205
	movl	-164(%rbp), %edx	# force, tmp206
	movq	-160(%rbp), %rax	# insn, tmp207
	movq	%rcx, %r8	# tmp205,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp207,
	call	purge_addressof_1	#
	movzbl	%al, %eax	# D.22110, D.22113
	andl	%ebx, %eax	# D.22113, D.22113
	testl	%eax, %eax	# D.22113
	setne	%al	#, tmp208
	movb	%al, -133(%rbp)	# tmp208, result
	.loc 1 3065 0
	movzbl	-133(%rbp), %eax	# result, D.22110
	jmp	.L500	#
.L501:
	.loc 1 3067 0
	cmpl	$70, -124(%rbp)	#, code
	jne	.L502	#,
.LBB44:
	.loc 1 3071 0
	movq	-72(%rbp), %rax	# x, tmp209
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movzwl	(%rax), %eax	# _36->code, D.22111
	cmpw	$66, %ax	#, D.22111
	je	.L503	#,
	.loc 1 3073 0
	movq	-176(%rbp), %rdx	# ht, tmp210
	movq	-72(%rbp), %rax	# x, tmp211
	movq	%rdx, %rsi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	put_addressof_into_stack	#
	.loc 1 3074 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L503:
	.loc 1 3079 0
	movq	-72(%rbp), %rax	# x, tmp212
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movq	8(%rax), %rax	# _39->fld[0].rtx, D.22114
	movq	%rax, %rdi	# D.22114,
	call	copy_rtx	#
	movq	%rax, -64(%rbp)	# tmp213, sub
	.loc 1 3080 0
	movq	-64(%rbp), %rdx	# sub, tmp214
	movq	-152(%rbp), %rsi	# loc, tmp215
	movq	-160(%rbp), %rax	# insn, tmp216
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp216,
	call	validate_change	#
	testl	%eax, %eax	# D.22113
	jne	.L504	#,
	.loc 1 3081 0
	movq	-160(%rbp), %rdx	# insn, tmp217
	movq	-64(%rbp), %rcx	# sub, tmp218
	movq	-72(%rbp), %rax	# x, tmp219
	movq	%rcx, %rsi	# tmp218,
	movq	%rax, %rdi	# tmp219,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22113
	je	.L505	#,
.L504:
	.loc 1 3082 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L505:
	.loc 1 3084 0
	call	start_sequence	#
	.loc 1 3085 0
	movq	-64(%rbp), %rax	# sub, tmp220
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp220,
	call	force_operand	#
	movq	%rax, -64(%rbp)	# tmp221, sub
	.loc 1 3086 0
	movq	-64(%rbp), %rdx	# sub, tmp222
	movq	-152(%rbp), %rsi	# loc, tmp223
	movq	-160(%rbp), %rax	# insn, tmp224
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp224,
	call	validate_change	#
	testl	%eax, %eax	# D.22113
	jne	.L506	#,
	.loc 1 3087 0
	movq	-160(%rbp), %rdx	# insn, tmp225
	movq	-64(%rbp), %rcx	# sub, tmp226
	movq	-72(%rbp), %rax	# x, tmp227
	movq	%rcx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22113
	jne	.L506	#,
	.loc 1 3088 0
	movl	$__FUNCTION__.14288, %edx	#,
	movl	$3088, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L506:
	.loc 1 3090 0
	call	gen_sequence	#
	movq	%rax, -56(%rbp)	# tmp228, insns
	.loc 1 3091 0
	call	end_sequence	#
	.loc 1 3092 0
	movq	-160(%rbp), %rdx	# insn, tmp229
	movq	-56(%rbp), %rax	# insns, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	emit_insn_before	#
	.loc 1 3093 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L502:
.LBE44:
	.loc 1 3096 0
	cmpl	$66, -124(%rbp)	#, code
	jne	.L507	#,
	.loc 1 3096 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp231
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movzwl	(%rax), %eax	# _50->code, D.22111
	cmpw	$70, %ax	#, D.22111
	jne	.L507	#,
	cmpl	$0, -164(%rbp)	#, force
	jne	.L507	#,
.LBB45:
	.loc 1 3098 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp232
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movq	8(%rax), %rax	# _52->fld[0].rtx, tmp233
	movq	%rax, -48(%rbp)	# tmp233, sub
	.loc 1 3100 0
	movq	-48(%rbp), %rax	# sub, tmp234
	movzwl	(%rax), %eax	# sub_53->code, D.22111
	cmpw	$66, %ax	#, D.22111
	jne	.L508	#,
	.loc 1 3101 0
	movq	-72(%rbp), %rax	# x, tmp235
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %esi	# D.22115, D.22116
	movq	-48(%rbp), %rax	# sub, tmp236
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp236,
	call	adjust_address_1	#
	movq	%rax, -48(%rbp)	# tmp237, sub
	jmp	.L507	#
.L508:
	.loc 1 3102 0
	movq	-48(%rbp), %rax	# sub, tmp238
	movzwl	(%rax), %eax	# sub_53->code, D.22111
	cmpw	$61, %ax	#, D.22111
	jne	.L509	#,
	.loc 1 3103 0
	movq	-72(%rbp), %rax	# x, tmp239
	movzbl	3(%rax), %eax	# *x_20, D.22115
	andl	$8, %eax	#, D.22115
	testb	%al, %al	# D.22115
	jne	.L510	#,
	.loc 1 3103 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp240
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	cmpb	$51, %al	#, D.22115
	jne	.L509	#,
.L510:
	.loc 1 3102 0 is_stmt 1
	jmp	.L507	#
.L509:
	.loc 1 3105 0
	movq	-48(%rbp), %rax	# sub, tmp241
	movzwl	(%rax), %eax	# sub_53->code, D.22111
	cmpw	$61, %ax	#, D.22111
	jne	.L511	#,
	.loc 1 3105 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp242
	movzbl	2(%rax), %edx	# x_20->mode, D.22115
	movq	-48(%rbp), %rax	# sub, tmp243
	movzbl	2(%rax), %eax	# sub_53->mode, D.22115
	cmpb	%al, %dl	# D.22115, D.22115
	je	.L511	#,
.LBB46:
	.loc 1 3109 0 is_stmt 1
	cmpq	$0, -160(%rbp)	#, insn
	jne	.L512	#,
.LBB47:
	.loc 1 3116 0
	movq	purge_bitfield_addressof_replacements(%rip), %rax	# purge_bitfield_addressof_replacements, tmp244
	movq	%rax, -104(%rbp)	# tmp244, tem
	jmp	.L513	#
.L515:
	.loc 1 3119 0
	movq	-104(%rbp), %rax	# tem, tmp245
	movq	8(%rax), %rdx	# tem_7->fld[0].rtx, D.22114
	movq	-72(%rbp), %rax	# x, tmp246
	movq	%rdx, %rsi	# D.22114,
	movq	%rax, %rdi	# tmp246,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22113
	je	.L514	#,
	.loc 1 3121 0
	movq	-104(%rbp), %rax	# tem, tmp247
	movq	16(%rax), %rax	# tem_7->fld[1].rtx, D.22114
	movq	8(%rax), %rdx	# _68->fld[0].rtx, D.22114
	movq	-152(%rbp), %rax	# loc, tmp248
	movq	%rdx, (%rax)	# D.22114, *loc_19(D)
	.loc 1 3122 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L514:
	.loc 1 3118 0
	movq	-104(%rbp), %rax	# tem, tmp249
	movq	16(%rax), %rax	# tem_7->fld[1].rtx, D.22114
	movq	16(%rax), %rax	# _71->fld[1].rtx, tmp250
	movq	%rax, -104(%rbp)	# tmp250, tem
.L513:
	.loc 1 3116 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, tem
	jne	.L515	#,
	.loc 1 3126 0
	movq	purge_addressof_replacements(%rip), %rax	# purge_addressof_replacements, tmp251
	movq	%rax, -104(%rbp)	# tmp251, tem
	jmp	.L516	#
.L525:
	.loc 1 3129 0
	movq	-104(%rbp), %rax	# tem, tmp252
	movq	8(%rax), %rdx	# tem_8->fld[0].rtx, D.22114
	movq	-72(%rbp), %rax	# x, tmp253
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movq	%rdx, %rsi	# D.22114,
	movq	%rax, %rdi	# D.22114,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22113
	je	.L517	#,
.LBB48:
	.loc 1 3131 0
	movq	-104(%rbp), %rax	# tem, tmp254
	movq	16(%rax), %rax	# tem_8->fld[1].rtx, D.22114
	movq	8(%rax), %rax	# _77->fld[0].rtx, tmp255
	movq	%rax, -96(%rbp)	# tmp255, z
	.loc 1 3133 0
	movq	-72(%rbp), %rax	# x, tmp256
	movzbl	2(%rax), %edx	# x_20->mode, D.22115
	movq	-96(%rbp), %rax	# z, tmp257
	movzbl	2(%rax), %eax	# z_78->mode, D.22115
	cmpb	%al, %dl	# D.22115, D.22115
	je	.L518	#,
	.loc 1 3134 0
	movq	-104(%rbp), %rax	# tem, tmp258
	movq	16(%rax), %rax	# tem_8->fld[1].rtx, D.22114
	movq	8(%rax), %rax	# _81->fld[0].rtx, D.22114
	movzwl	(%rax), %eax	# _82->code, D.22111
	cmpw	$61, %ax	#, D.22111
	je	.L519	#,
	.loc 1 3135 0
	movq	-104(%rbp), %rax	# tem, tmp259
	movq	16(%rax), %rax	# tem_8->fld[1].rtx, D.22114
	movq	8(%rax), %rax	# _84->fld[0].rtx, D.22114
	movzwl	(%rax), %eax	# _85->code, D.22111
	cmpw	$63, %ax	#, D.22111
	je	.L519	#,
.L518:
	.loc 1 3136 0
	movl	$__FUNCTION__.14288, %edx	#,
	movl	$3136, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L519:
	.loc 1 3143 0
	movq	-96(%rbp), %rax	# z, tmp260
	movzwl	(%rax), %eax	# z_78->code, D.22111
	cmpw	$63, %ax	#, D.22111
	jne	.L520	#,
	.loc 1 3143 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# z, tmp261
	movl	16(%rax), %eax	# z_78->fld[1].rtuint, D.22117
	testl	%eax, %eax	# D.22117
	jne	.L520	#,
	.loc 1 3144 0 is_stmt 1
	movq	-96(%rbp), %rax	# z, tmp262
	movq	8(%rax), %rax	# z_78->fld[0].rtx, tmp263
	movq	%rax, -96(%rbp)	# tmp263, z
.L520:
	.loc 1 3146 0
	movq	-72(%rbp), %rax	# x, tmp264
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22115
	movzbl	%al, %edx	# D.22115, D.22113
	movl	target_flags(%rip), %eax	# target_flags, target_flags.175
	andl	$33554432, %eax	#, D.22113
	testl	%eax, %eax	# D.22113
	je	.L521	#,
	.loc 1 3146 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.174
	jmp	.L522	#
.L521:
	.loc 1 3146 0 discriminator 2
	movl	$4, %eax	#, iftmp.174
.L522:
	.loc 1 3146 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.174, D.22113
	jle	.L523	#,
	.loc 1 3147 0 is_stmt 1
	movq	-72(%rbp), %rax	# x, tmp266
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22115
	.loc 1 3148 0
	movq	-96(%rbp), %rax	# z, tmp268
	movzbl	2(%rax), %eax	# z_9->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22115
	.loc 1 3147 0
	cmpb	%al, %dl	# D.22115, D.22115
	jbe	.L523	#,
	.loc 1 3156 0
	movq	-72(%rbp), %rax	# x, tmp270
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22116
	movq	-96(%rbp), %rcx	# z, tmp271
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp271,
	movl	%eax, %edi	# D.22116,
	call	gen_rtx_SUBREG	#
	movq	%rax, -96(%rbp)	# tmp272, z
	jmp	.L524	#
.L523:
	.loc 1 3159 0
	movq	-72(%rbp), %rax	# x, tmp273
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22116
	movq	-96(%rbp), %rdx	# z, tmp274
	movq	%rdx, %rsi	# tmp274,
	movl	%eax, %edi	# D.22116,
	call	gen_lowpart	#
	movq	%rax, -96(%rbp)	# tmp275, z
.L524:
	.loc 1 3161 0
	movq	-152(%rbp), %rax	# loc, tmp276
	movq	-96(%rbp), %rdx	# z, tmp277
	movq	%rdx, (%rax)	# tmp277, *loc_19(D)
	.loc 1 3162 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L517:
.LBE48:
	.loc 1 3128 0
	movq	-104(%rbp), %rax	# tem, tmp278
	movq	16(%rax), %rax	# tem_8->fld[1].rtx, D.22114
	movq	16(%rax), %rax	# _111->fld[1].rtx, tmp279
	movq	%rax, -104(%rbp)	# tmp279, tem
.L516:
	.loc 1 3126 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, tem
	jne	.L525	#,
	.loc 1 3172 0
	movl	$0, %eax	#, D.22110
	jmp	.L500	#
.L512:
.LBE47:
	.loc 1 3175 0
	movq	-72(%rbp), %rax	# x, tmp280
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22111
	movzwl	%ax, %eax	# D.22111, tmp282
	movl	%eax, -120(%rbp)	# tmp282, size_x
	.loc 1 3176 0
	movq	-48(%rbp), %rax	# sub, tmp283
	movzbl	2(%rax), %eax	# sub_53->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22111
	movzwl	%ax, %eax	# D.22111, tmp285
	movl	%eax, -116(%rbp)	# tmp285, size_sub
	.loc 1 3180 0
	movl	-120(%rbp), %eax	# size_x, tmp286
	cmpl	-116(%rbp), %eax	# size_sub, tmp286
	jg	.L526	#,
	.loc 1 3181 0
	movq	-48(%rbp), %rax	# sub, tmp287
	movzbl	2(%rax), %eax	# sub_53->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22116
	movl	%eax, %edi	# D.22116,
	call	int_mode_for_mode	#
	cmpl	$51, %eax	#, D.22116
	je	.L526	#,
.LBB49:
	.loc 1 3188 0
	cmpl	$0, -168(%rbp)	#, store
	je	.L527	#,
.LBB50:
	.loc 1 3190 0
	movq	-160(%rbp), %rax	# insn, tmp288
	movq	16(%rax), %rax	# insn_25(D)->fld[1].rtx, tmp289
	movq	%rax, -40(%rbp)	# tmp289, p
	.loc 1 3192 0
	call	start_sequence	#
	.loc 1 3193 0
	movq	-72(%rbp), %rax	# x, tmp290
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22116
	movl	%eax, %edi	# D.22116,
	call	gen_reg_rtx	#
	movq	%rax, -88(%rbp)	# tmp291, val
	.loc 1 3194 0
	movq	-88(%rbp), %rdx	# val, tmp292
	movq	-152(%rbp), %rsi	# loc, tmp293
	movq	-160(%rbp), %rax	# insn, tmp294
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp294,
	call	validate_change	#
	testl	%eax, %eax	# D.22113
	jne	.L528	#,
	.loc 1 3198 0
	call	end_sequence	#
	.loc 1 3199 0
	jmp	.L507	#
.L528:
	.loc 1 3201 0
	call	gen_sequence	#
	movq	%rax, -32(%rbp)	# tmp295, seq
	.loc 1 3202 0
	call	end_sequence	#
	.loc 1 3203 0
	movq	-160(%rbp), %rdx	# insn, tmp296
	movq	-32(%rbp), %rax	# seq, tmp297
	movq	%rdx, %rsi	# tmp296,
	movq	%rax, %rdi	# tmp297,
	call	emit_insn_before	#
	.loc 1 3204 0
	cmpq	$0, -40(%rbp)	#, p
	je	.L529	#,
	.loc 1 3204 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp298
	movq	24(%rax), %rax	# p_126->fld[2].rtx, iftmp.176
	jmp	.L530	#
.L529:
	.loc 1 3204 0 discriminator 2
	call	get_insns	#
.L530:
	.loc 1 3204 0 discriminator 3
	movq	-176(%rbp), %rdx	# ht, tmp299
	movq	-160(%rbp), %rcx	# insn, tmp300
	movq	%rcx, %rsi	# tmp300,
	movq	%rax, %rdi	# iftmp.176,
	call	compute_insns_for_mem	#
	.loc 1 3207 0 is_stmt 1 discriminator 3
	call	start_sequence	#
	.loc 1 3209 0 discriminator 3
	movq	-48(%rbp), %rax	# sub, tmp301
	movzbl	2(%rax), %eax	# sub_53->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22115
	.loc 1 3208 0 discriminator 3
	movzbl	%al, %edi	# D.22115, D.22118
	movq	-72(%rbp), %rax	# x, tmp303
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	movzbl	%al, %edx	# D.22115, D.22116
	movl	-120(%rbp), %eax	# size_x, tmp304
	movslq	%eax, %rsi	# tmp304, D.22119
	movq	-88(%rbp), %rcx	# val, tmp305
	movq	-48(%rbp), %rax	# sub, tmp306
	movq	%rdi, %r9	# D.22118,
	movq	%rcx, %r8	# tmp305,
	movl	%edx, %ecx	# D.22116,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp306,
	call	store_bit_field	#
	.loc 1 3213 0 discriminator 3
	call	get_insns	#
	movq	%rax, %rdi	# D.22114,
	call	unshare_all_rtl_again	#
	.loc 1 3215 0 discriminator 3
	call	gen_sequence	#
	movq	%rax, -32(%rbp)	# tmp307, seq
	.loc 1 3216 0 discriminator 3
	call	end_sequence	#
	.loc 1 3217 0 discriminator 3
	movq	-160(%rbp), %rdx	# insn, tmp308
	movq	-32(%rbp), %rax	# seq, tmp309
	movq	%rdx, %rsi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	emit_insn_after	#
	movq	%rax, -40(%rbp)	# tmp310, p
	.loc 1 3218 0 discriminator 3
	movq	-160(%rbp), %rax	# insn, tmp311
	movq	24(%rax), %rax	# insn_25(D)->fld[2].rtx, D.22114
	testq	%rax, %rax	# D.22114
	je	.L531	#,
	.loc 1 3219 0
	cmpq	$0, -40(%rbp)	#, p
	je	.L532	#,
	.loc 1 3219 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp312
	movq	24(%rax), %rax	# p_143->fld[2].rtx, iftmp.177
	jmp	.L533	#
.L532:
	.loc 1 3219 0 discriminator 2
	movl	$0, %eax	#, iftmp.177
.L533:
	.loc 1 3219 0 discriminator 3
	movq	-160(%rbp), %rdx	# insn, tmp313
	movq	24(%rdx), %rcx	# insn_25(D)->fld[2].rtx, D.22114
	movq	-176(%rbp), %rdx	# ht, tmp314
	movq	%rax, %rsi	# iftmp.177,
	movq	%rcx, %rdi	# D.22114,
	call	compute_insns_for_mem	#
.LBE50:
	jmp	.L534	#
.L531:
	jmp	.L534	#
.L527:
.LBB51:
	.loc 1 3225 0 is_stmt 1
	movq	-160(%rbp), %rax	# insn, tmp315
	movq	16(%rax), %rax	# insn_25(D)->fld[1].rtx, tmp316
	movq	%rax, -24(%rbp)	# tmp316, p
	.loc 1 3227 0
	call	start_sequence	#
	.loc 1 3230 0
	movq	-48(%rbp), %rax	# sub, tmp317
	movzbl	2(%rax), %eax	# sub_53->mode, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22115
	.loc 1 3228 0
	movzbl	%al, %ecx	# D.22115, D.22118
	.loc 1 3229 0
	movq	-72(%rbp), %rax	# x, tmp319
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	.loc 1 3228 0
	movzbl	%al, %edx	# D.22115, D.22116
	.loc 1 3229 0
	movq	-72(%rbp), %rax	# x, tmp320
	movzbl	2(%rax), %eax	# x_20->mode, D.22115
	.loc 1 3228 0
	movzbl	%al, %edi	# D.22115, D.22116
	movl	-120(%rbp), %eax	# size_x, tmp321
	movslq	%eax, %rsi	# tmp321, D.22119
	movq	-48(%rbp), %rax	# sub, tmp322
	movq	%rcx, 8(%rsp)	# D.22118,
	movl	%edx, (%rsp)	# D.22116,
	movl	%edi, %r9d	# D.22116,
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp322,
	call	extract_bit_field	#
	movq	%rax, -88(%rbp)	# tmp323, val
	.loc 1 3232 0
	movq	-88(%rbp), %rdx	# val, tmp324
	movq	-152(%rbp), %rsi	# loc, tmp325
	movq	-160(%rbp), %rax	# insn, tmp326
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp326,
	call	validate_change	#
	testl	%eax, %eax	# D.22113
	jne	.L535	#,
	.loc 1 3236 0
	call	end_sequence	#
	.loc 1 3237 0
	jmp	.L507	#
.L535:
	.loc 1 3240 0
	call	gen_sequence	#
	movq	%rax, -32(%rbp)	# tmp327, seq
	.loc 1 3241 0
	call	end_sequence	#
	.loc 1 3242 0
	movq	-160(%rbp), %rdx	# insn, tmp328
	movq	-32(%rbp), %rax	# seq, tmp329
	movq	%rdx, %rsi	# tmp328,
	movq	%rax, %rdi	# tmp329,
	call	emit_insn_before	#
	.loc 1 3243 0
	cmpq	$0, -24(%rbp)	#, p
	je	.L536	#,
	.loc 1 3243 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp330
	movq	24(%rax), %rax	# p_148->fld[2].rtx, iftmp.178
	jmp	.L537	#
.L536:
	.loc 1 3243 0 discriminator 2
	call	get_insns	#
.L537:
	.loc 1 3243 0 discriminator 3
	movq	-176(%rbp), %rdx	# ht, tmp331
	movq	-160(%rbp), %rcx	# insn, tmp332
	movq	%rcx, %rsi	# tmp332,
	movq	%rax, %rdi	# iftmp.178,
	call	compute_insns_for_mem	#
.L534:
.LBE51:
	.loc 1 3250 0 is_stmt 1
	movq	purge_bitfield_addressof_replacements(%rip), %rdx	# purge_bitfield_addressof_replacements, purge_bitfield_addressof_replacements.179
	movq	-88(%rbp), %rax	# val, tmp333
	movq	%rdx, %rcx	# purge_bitfield_addressof_replacements.179,
	movq	%rax, %rdx	# tmp333,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.22114
	movq	-72(%rbp), %rax	# x, tmp334
	movq	%rdx, %rcx	# D.22114,
	movq	%rax, %rdx	# tmp334,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, purge_bitfield_addressof_replacements(%rip)	# purge_bitfield_addressof_replacements.180, purge_bitfield_addressof_replacements
	.loc 1 3256 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L526:
.LBE49:
.LBE46:
	.loc 1 3106 0
	jmp	.L507	#
.L511:
	.loc 1 3260 0
	movq	-48(%rbp), %rdx	# sub, tmp335
	movq	-152(%rbp), %rsi	# loc, tmp336
	movq	-160(%rbp), %rax	# insn, tmp337
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp337,
	call	validate_change	#
	testl	%eax, %eax	# D.22113
	je	.L507	#,
	.loc 1 3264 0
	movq	-48(%rbp), %rax	# sub, tmp338
	movzwl	(%rax), %eax	# sub_53->code, D.22111
	cmpw	$61, %ax	#, D.22111
	je	.L538	#,
	.loc 1 3264 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# sub, tmp339
	movzwl	(%rax), %eax	# sub_53->code, D.22111
	cmpw	$63, %ax	#, D.22111
	jne	.L539	#,
.L538:
.LBB52:
	.loc 1 3268 0 is_stmt 1
	movq	purge_addressof_replacements(%rip), %rax	# purge_addressof_replacements, tmp340
	movq	%rax, -80(%rbp)	# tmp340, tem
	jmp	.L540	#
.L542:
	.loc 1 3271 0
	movq	-80(%rbp), %rax	# tem, tmp341
	movq	8(%rax), %rdx	# tem_12->fld[0].rtx, D.22114
	movq	-72(%rbp), %rax	# x, tmp342
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movq	%rdx, %rsi	# D.22114,
	movq	%rax, %rdi	# D.22114,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22113
	je	.L541	#,
	.loc 1 3273 0
	movq	-80(%rbp), %rax	# tem, tmp343
	movq	16(%rax), %rax	# tem_12->fld[1].rtx, D.22114
	movq	-48(%rbp), %rdx	# sub, tmp344
	movq	%rdx, 8(%rax)	# tmp344, _174->fld[0].rtx
	.loc 1 3274 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L541:
	.loc 1 3270 0
	movq	-80(%rbp), %rax	# tem, tmp345
	movq	16(%rax), %rax	# tem_12->fld[1].rtx, D.22114
	movq	16(%rax), %rax	# _176->fld[1].rtx, tmp346
	movq	%rax, -80(%rbp)	# tmp346, tem
.L540:
	.loc 1 3268 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, tem
	jne	.L542	#,
	.loc 1 3277 0
	movq	purge_addressof_replacements(%rip), %rdx	# purge_addressof_replacements, purge_addressof_replacements.181
	movq	-48(%rbp), %rax	# sub, tmp347
	movq	%rdx, %rcx	# purge_addressof_replacements.181,
	movq	%rax, %rdx	# tmp347,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.22114
	movq	-72(%rbp), %rax	# x, tmp348
	movq	8(%rax), %rax	# x_20->fld[0].rtx, D.22114
	movq	%rdx, %rcx	# D.22114,
	movq	%rax, %rdx	# D.22114,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	movl	$0, %eax	#,
	call	gen_rtx	#
	movq	%rax, purge_addressof_replacements(%rip)	# purge_addressof_replacements.182, purge_addressof_replacements
	.loc 1 3280 0
	movl	$1, %eax	#, D.22110
	jmp	.L500	#
.L539:
.LBE52:
	.loc 1 3282 0
	jmp	.L498	#
.L507:
.LBE45:
	.loc 1 3288 0
	movl	-124(%rbp), %eax	# code, code.183
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp350
	movq	%rax, -112(%rbp)	# tmp350, fmt
	.loc 1 3289 0
	movl	$0, -132(%rbp)	#, i
	jmp	.L543	#
.L548:
	.loc 1 3291 0
	movq	-112(%rbp), %rax	# fmt, tmp351
	movzbl	(%rax), %eax	# *fmt_3, D.22120
	cmpb	$101, %al	#, D.22120
	jne	.L544	#,
	.loc 1 3292 0
	movzbl	-133(%rbp), %ebx	# result, D.22113
	movl	-132(%rbp), %eax	# i, tmp353
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp354
	movq	-72(%rbp), %rax	# x, tmp356
	addq	%rdx, %rax	# tmp354, tmp355
	leaq	8(%rax), %rdi	#, D.22112
	movq	-176(%rbp), %rcx	# ht, tmp357
	movl	-164(%rbp), %edx	# force, tmp358
	movq	-160(%rbp), %rax	# insn, tmp359
	movq	%rcx, %r8	# tmp357,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp359,
	call	purge_addressof_1	#
	movzbl	%al, %eax	# D.22110, D.22113
	andl	%ebx, %eax	# D.22113, D.22113
	testl	%eax, %eax	# D.22113
	setne	%al	#, tmp360
	movb	%al, -133(%rbp)	# tmp360, result
	jmp	.L545	#
.L544:
	.loc 1 3293 0
	movq	-112(%rbp), %rax	# fmt, tmp361
	movzbl	(%rax), %eax	# *fmt_3, D.22120
	cmpb	$69, %al	#, D.22120
	jne	.L545	#,
	.loc 1 3294 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L546	#
.L547:
	.loc 1 3295 0 discriminator 2
	movzbl	-133(%rbp), %ebx	# result, D.22113
	movq	-72(%rbp), %rax	# x, tmp362
	movl	-132(%rbp), %edx	# i, tmp364
	movslq	%edx, %rdx	# tmp364, tmp363
	movq	8(%rax,%rdx,8), %rax	# x_20->fld[i_1].rtvec, D.22121
	movl	-128(%rbp), %edx	# j, tmp366
	movslq	%edx, %rdx	# tmp366, tmp365
	salq	$3, %rdx	#, tmp367
	addq	%rdx, %rax	# tmp367, tmp368
	leaq	8(%rax), %rdi	#, D.22112
	movq	-176(%rbp), %rcx	# ht, tmp369
	movl	-164(%rbp), %edx	# force, tmp370
	movq	-160(%rbp), %rax	# insn, tmp371
	movq	%rcx, %r8	# tmp369,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp371,
	call	purge_addressof_1	#
	movzbl	%al, %eax	# D.22110, D.22113
	andl	%ebx, %eax	# D.22113, D.22113
	testl	%eax, %eax	# D.22113
	setne	%al	#, tmp372
	movb	%al, -133(%rbp)	# tmp372, result
	.loc 1 3294 0 discriminator 2
	addl	$1, -128(%rbp)	#, j
.L546:
	.loc 1 3294 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# x, tmp373
	movl	-132(%rbp), %edx	# i, tmp375
	movslq	%edx, %rdx	# tmp375, tmp374
	movq	8(%rax,%rdx,8), %rax	# x_20->fld[i_1].rtvec, D.22121
	movl	(%rax), %eax	# _198->num_elem, D.22113
	cmpl	-128(%rbp), %eax	# j, D.22113
	jg	.L547	#,
.L545:
	.loc 1 3289 0 is_stmt 1
	addl	$1, -132(%rbp)	#, i
	addq	$1, -112(%rbp)	#, fmt
.L543:
	.loc 1 3289 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# code, code.184
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22115
	movzbl	%al, %eax	# D.22115, D.22113
	cmpl	-132(%rbp), %eax	# i, D.22113
	jg	.L548	#,
	.loc 1 3298 0 is_stmt 1
	movzbl	-133(%rbp), %eax	# result, D.22110
.L500:
	.loc 1 3299 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	purge_addressof_1, .-purge_addressof_1
	.type	insns_for_mem_newfunc, @function
insns_for_mem_newfunc:
.LFB45:
	.loc 1 3308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# he, he
	movq	%rsi, -32(%rbp)	# ht, ht
	movq	%rdx, -40(%rbp)	# k, k
	.loc 1 3310 0
	cmpq	$0, -24(%rbp)	#, he
	je	.L550	#,
	.loc 1 3311 0
	movq	-24(%rbp), %rax	# he, D.22122
	jmp	.L551	#
.L550:
	.loc 1 3313 0
	movq	-32(%rbp), %rax	# ht, tmp61
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	hash_allocate	#
	movq	%rax, -8(%rbp)	# tmp62, ifmhe
	.loc 1 3315 0
	movq	-8(%rbp), %rax	# ifmhe, tmp63
	movq	$0, 24(%rax)	#, ifmhe_5->insns
	.loc 1 3317 0
	movq	-8(%rbp), %rax	# ifmhe, D.22122
.L551:
	.loc 1 3318 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	insns_for_mem_newfunc, .-insns_for_mem_newfunc
	.type	insns_for_mem_hash, @function
insns_for_mem_hash:
.LFB46:
	.loc 1 3325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# k, k
	.loc 1 3327 0
	movq	-8(%rbp), %rax	# k, D.22123
	.loc 1 3328 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	insns_for_mem_hash, .-insns_for_mem_hash
	.type	insns_for_mem_comp, @function
insns_for_mem_comp:
.LFB47:
	.loc 1 3336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# k1, k1
	movq	%rsi, -16(%rbp)	# k2, k2
	.loc 1 3337 0
	movq	-8(%rbp), %rax	# k1, tmp61
	cmpq	-16(%rbp), %rax	# k2, tmp61
	sete	%al	#, D.22124
	.loc 1 3338 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	insns_for_mem_comp, .-insns_for_mem_comp
	.type	insns_for_mem_walk, @function
insns_for_mem_walk:
.LFB48:
	.loc 1 3363 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# r, r
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 3364 0
	movq	-32(%rbp), %rax	# data, tmp84
	movq	%rax, -16(%rbp)	# tmp84, ifmwi
	.loc 1 3367 0
	movq	-16(%rbp), %rax	# ifmwi, tmp85
	movl	16(%rax), %eax	# ifmwi_2->pass, D.22125
	testl	%eax, %eax	# D.22125
	jne	.L557	#,
	.loc 1 3367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r, tmp86
	movq	(%rax), %rax	# *r_4(D), D.22126
	testq	%rax, %rax	# D.22126
	je	.L557	#,
	movq	-24(%rbp), %rax	# r, tmp87
	movq	(%rax), %rax	# *r_4(D), D.22126
	movzwl	(%rax), %eax	# _6->code, D.22127
	cmpw	$70, %ax	#, D.22127
	jne	.L557	#,
	.loc 1 3368 0 is_stmt 1
	movq	-24(%rbp), %rax	# r, tmp88
	movq	(%rax), %rax	# *r_4(D), D.22126
	movq	8(%rax), %rax	# _8->fld[0].rtx, D.22126
	movzwl	(%rax), %eax	# _9->code, D.22127
	cmpw	$61, %ax	#, D.22127
	jne	.L557	#,
	.loc 1 3369 0
	movq	-24(%rbp), %rax	# r, tmp89
	movq	(%rax), %rax	# *r_4(D), D.22126
	movq	8(%rax), %rsi	# _11->fld[0].rtx, D.22126
	movq	-16(%rbp), %rax	# ifmwi, tmp90
	movq	(%rax), %rax	# ifmwi_2->ht, D.22128
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.22128,
	call	hash_lookup	#
	jmp	.L558	#
.L557:
	.loc 1 3370 0
	movq	-16(%rbp), %rax	# ifmwi, tmp91
	movl	16(%rax), %eax	# ifmwi_2->pass, D.22125
	cmpl	$1, %eax	#, D.22125
	jne	.L558	#,
	.loc 1 3370 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r, tmp92
	movq	(%rax), %rax	# *r_4(D), D.22126
	testq	%rax, %rax	# D.22126
	je	.L558	#,
	movq	-24(%rbp), %rax	# r, tmp93
	movq	(%rax), %rax	# *r_4(D), D.22126
	movzwl	(%rax), %eax	# _16->code, D.22127
	cmpw	$61, %ax	#, D.22127
	jne	.L558	#,
.LBB53:
	.loc 1 3374 0 is_stmt 1
	movq	-24(%rbp), %rax	# r, tmp94
	movq	(%rax), %rsi	# *r_4(D), D.22126
	movq	-16(%rbp), %rax	# ifmwi, tmp95
	movq	(%rax), %rax	# ifmwi_2->ht, D.22128
	.loc 1 3373 0
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22128,
	call	hash_lookup	#
	movq	%rax, -8(%rbp)	# tmp96, ifme
	.loc 1 3382 0
	cmpq	$0, -8(%rbp)	#, ifme
	je	.L558	#,
	.loc 1 3382 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# ifme, tmp97
	movq	24(%rax), %rax	# ifme_20->insns, D.22126
	testq	%rax, %rax	# D.22126
	je	.L559	#,
	movq	-8(%rbp), %rax	# ifme, tmp98
	movq	24(%rax), %rax	# ifme_20->insns, D.22126
	movq	8(%rax), %rdx	# _22->fld[0].rtx, D.22126
	movq	-16(%rbp), %rax	# ifmwi, tmp99
	movq	8(%rax), %rax	# ifmwi_2->insn, D.22126
	cmpq	%rax, %rdx	# D.22126, D.22126
	je	.L558	#,
.L559:
	.loc 1 3383 0 is_stmt 1
	movq	-8(%rbp), %rax	# ifme, tmp100
	movq	24(%rax), %rdx	# ifme_20->insns, D.22126
	movq	-16(%rbp), %rax	# ifmwi, tmp101
	movq	8(%rax), %rax	# ifmwi_2->insn, D.22126
	movq	%rdx, %rcx	# D.22126,
	movq	%rax, %rdx	# D.22126,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-8(%rbp), %rdx	# ifme, tmp102
	movq	%rax, 24(%rdx)	# D.22126, ifme_20->insns
.L558:
.LBE53:
	.loc 1 3387 0
	movl	$0, %eax	#, D.22125
	.loc 1 3388 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	insns_for_mem_walk, .-insns_for_mem_walk
	.type	compute_insns_for_mem, @function
compute_insns_for_mem:
.LFB49:
	.loc 1 3398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# insns, insns
	movq	%rsi, -64(%rbp)	# last_insn, last_insn
	movq	%rdx, -72(%rbp)	# ht, ht
	.loc 1 3401 0
	movq	-72(%rbp), %rax	# ht, tmp70
	movq	%rax, -32(%rbp)	# tmp70, ifmwi.ht
	.loc 1 3403 0
	movl	$0, -16(%rbp)	#, ifmwi.pass
	jmp	.L562	#
.L566:
	.loc 1 3404 0
	movq	-56(%rbp), %rax	# insns, tmp71
	movq	%rax, -40(%rbp)	# tmp71, insn
	jmp	.L563	#
.L565:
	.loc 1 3405 0
	movq	-40(%rbp), %rax	# insn, insn.185
	movzwl	(%rax), %eax	# insn.185_6->code, D.22130
	movzwl	%ax, %eax	# D.22130, D.22129
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22131
	cmpb	$105, %al	#, D.22131
	jne	.L564	#,
	.loc 1 3407 0
	movq	-40(%rbp), %rax	# insn, insn.186
	movq	%rax, -24(%rbp)	# insn.186, ifmwi.insn
	.loc 1 3408 0
	leaq	-32(%rbp), %rdx	#, tmp73
	leaq	-40(%rbp), %rax	#, tmp74
	movl	$insns_for_mem_walk, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	for_each_rtx	#
.L564:
	.loc 1 3404 0
	movq	-40(%rbp), %rax	# insn, insn.187
	movq	24(%rax), %rax	# insn.187_11->fld[2].rtx, insn.188
	movq	%rax, -40(%rbp)	# insn.188, insn
.L563:
	.loc 1 3404 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, insn.189
	cmpq	-64(%rbp), %rax	# last_insn, insn.189
	jne	.L565	#,
	.loc 1 3403 0 is_stmt 1
	movl	-16(%rbp), %eax	# ifmwi.pass, D.22129
	addl	$1, %eax	#, D.22129
	movl	%eax, -16(%rbp)	# D.22129, ifmwi.pass
.L562:
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# ifmwi.pass, D.22129
	cmpl	$1, %eax	#, D.22129
	jle	.L566	#,
	.loc 1 3410 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	compute_insns_for_mem, .-compute_insns_for_mem
	.type	is_addressof, @function
is_addressof:
.LFB50:
	.loc 1 3419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# rtl, rtl
	movq	%rsi, -16(%rbp)	# data, data
	.loc 1 3420 0
	movq	-8(%rbp), %rax	# rtl, tmp64
	movq	(%rax), %rax	# *rtl_1(D), D.22132
	movzwl	(%rax), %eax	# _2->code, D.22133
	cmpw	$70, %ax	#, D.22133
	sete	%al	#, D.22134
	movzbl	%al, %eax	# D.22134, D.22135
	.loc 1 3421 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	is_addressof, .-is_addressof
	.globl	purge_addressof
	.type	purge_addressof, @function
purge_addressof:
.LFB51:
	.loc 1 3430 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -152(%rbp)	# insns, insns
	.loc 1 3441 0
	leaq	-128(%rbp), %rax	#, tmp81
	movl	$insns_for_mem_comp, %ecx	#,
	movl	$insns_for_mem_hash, %edx	#,
	movl	$insns_for_mem_newfunc, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	hash_table_init	#
	.loc 1 3445 0
	leaq	-128(%rbp), %rdx	#, tmp82
	movq	-152(%rbp), %rax	# insns, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	compute_insns_for_mem	#
	.loc 1 3447 0
	movq	-152(%rbp), %rax	# insns, tmp84
	movq	%rax, -136(%rbp)	# tmp84, insn
	jmp	.L570	#
.L578:
	.loc 1 3448 0
	movq	-136(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_1->code, D.22136
	cmpw	$32, %ax	#, D.22136
	je	.L571	#,
	.loc 1 3448 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.22136
	cmpw	$33, %ax	#, D.22136
	je	.L571	#,
	.loc 1 3449 0 is_stmt 1
	movq	-136(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_1->code, D.22136
	cmpw	$34, %ax	#, D.22136
	jne	.L572	#,
.L571:
	.loc 1 3452 0
	movq	-136(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.22137
	movq	%rax, %rdi	# D.22137,
	call	asm_noperands	#
	.loc 1 3451 0
	testl	%eax, %eax	# D.22138
	setg	%al	#, D.22139
	movzbl	%al, %edx	# D.22139, D.22138
	movq	-136(%rbp), %rax	# insn, tmp89
	leaq	32(%rax), %rdi	#, D.22140
	leaq	-128(%rbp), %rcx	#, tmp90
	movq	-136(%rbp), %rax	# insn, tmp91
	movq	%rcx, %r8	# tmp90,
	movl	$0, %ecx	#,
	movq	%rax, %rsi	# tmp91,
	call	purge_addressof_1	#
	xorl	$1, %eax	#, D.22139
	testb	%al, %al	# D.22139
	je	.L573	#,
	.loc 1 3455 0
	movl	$__FUNCTION__.14360, %edx	#,
	movl	$3455, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L573:
	.loc 1 3457 0
	movq	-136(%rbp), %rax	# insn, tmp92
	addq	$56, %rax	#, D.22140
	leaq	-128(%rbp), %rdx	#, tmp93
	movq	%rdx, %r8	# tmp93,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22140,
	call	purge_addressof_1	#
	xorl	$1, %eax	#, D.22139
	testb	%al, %al	# D.22139
	je	.L572	#,
.LBB54:
	.loc 1 3463 0
	movq	-136(%rbp), %rax	# insn, tmp94
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, note.190
	movq	%rax, -144(%rbp)	# note.190, note
	jmp	.L574	#
.L577:
	.loc 1 3469 0
	movq	-144(%rbp), %rax	# note, note.191
	movzbl	2(%rax), %eax	# note.191_19->mode, D.22141
	cmpb	$6, %al	#, D.22141
	jne	.L575	#,
	.loc 1 3470 0
	movl	$__FUNCTION__.14360, %edx	#,
	movl	$3470, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L575:
	.loc 1 3471 0
	leaq	-144(%rbp), %rax	#, tmp95
	movl	$0, %edx	#,
	movl	$is_addressof, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	for_each_rtx	#
	testl	%eax, %eax	# D.22138
	je	.L576	#,
	.loc 1 3472 0
	movq	-144(%rbp), %rdx	# note, note.192
	movq	-136(%rbp), %rax	# insn, tmp96
	movq	%rdx, %rsi	# note.192,
	movq	%rax, %rdi	# tmp96,
	call	remove_note	#
.L576:
	.loc 1 3463 0
	movq	-144(%rbp), %rax	# note, note.193
	movq	16(%rax), %rax	# note.193_23->fld[1].rtx, note.194
	movq	%rax, -144(%rbp)	# note.194, note
.L574:
	.loc 1 3463 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# note, note.195
	testq	%rax, %rax	# note.195
	jne	.L577	#,
.L572:
.LBE54:
	.loc 1 3447 0 is_stmt 1
	movq	-136(%rbp), %rax	# insn, tmp97
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp98
	movq	%rax, -136(%rbp)	# tmp98, insn
.L570:
	.loc 1 3447 0 is_stmt 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, insn
	jne	.L578	#,
	.loc 1 3478 0 is_stmt 1
	leaq	-128(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	hash_table_free	#
	.loc 1 3479 0
	movq	$0, purge_bitfield_addressof_replacements(%rip)	#, purge_bitfield_addressof_replacements
	.loc 1 3480 0
	movq	$0, purge_addressof_replacements(%rip)	#, purge_addressof_replacements
	.loc 1 3494 0
	call	get_insns	#
	movq	%rax, %rdi	# D.22137,
	call	unshare_all_rtl_again	#
	.loc 1 3495 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	purge_addressof, .-purge_addressof
	.type	purge_single_hard_subreg_set, @function
purge_single_hard_subreg_set:
.LFB52:
	.loc 1 3503 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pattern, pattern
	.loc 1 3504 0
	movq	-24(%rbp), %rax	# pattern, tmp81
	movq	8(%rax), %rax	# pattern_3(D)->fld[0].rtx, tmp82
	movq	%rax, -8(%rbp)	# tmp82, reg
	.loc 1 3505 0
	movq	-24(%rbp), %rax	# pattern, tmp83
	movq	8(%rax), %rax	# pattern_3(D)->fld[0].rtx, D.22142
	movzbl	2(%rax), %eax	# _5->mode, D.22143
	movzbl	%al, %eax	# D.22143, tmp84
	movl	%eax, -12(%rbp)	# tmp84, mode
	.loc 1 3506 0
	movl	$0, -16(%rbp)	#, offset
	.loc 1 3508 0
	movq	-8(%rbp), %rax	# reg, tmp85
	movzwl	(%rax), %eax	# reg_4->code, D.22144
	cmpw	$63, %ax	#, D.22144
	jne	.L580	#,
	.loc 1 3508 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# reg, tmp86
	movq	8(%rax), %rax	# reg_4->fld[0].rtx, D.22142
	movzwl	(%rax), %eax	# _10->code, D.22144
	cmpw	$61, %ax	#, D.22144
	jne	.L580	#,
	.loc 1 3509 0 is_stmt 1
	movq	-8(%rbp), %rax	# reg, tmp87
	movq	8(%rax), %rax	# reg_4->fld[0].rtx, D.22142
	movl	8(%rax), %eax	# _12->fld[0].rtuint, D.22145
	cmpl	$52, %eax	#, D.22145
	ja	.L580	#,
	.loc 1 3514 0
	movq	-8(%rbp), %rax	# reg, tmp88
	movzbl	2(%rax), %eax	# reg_4->mode, D.22143
	.loc 1 3511 0
	movzbl	%al, %ecx	# D.22143, D.22146
	movq	-8(%rbp), %rax	# reg, tmp89
	movl	16(%rax), %edx	# reg_4->fld[1].rtuint, D.22145
	.loc 1 3512 0
	movq	-8(%rbp), %rax	# reg, tmp90
	movq	8(%rax), %rax	# reg_4->fld[0].rtx, D.22142
	movzbl	2(%rax), %eax	# _17->mode, D.22143
	.loc 1 3511 0
	movzbl	%al, %esi	# D.22143, D.22146
	movq	-8(%rbp), %rax	# reg, tmp91
	movq	8(%rax), %rax	# reg_4->fld[0].rtx, D.22142
	movl	8(%rax), %eax	# _20->fld[0].rtuint, D.22145
	movl	%eax, %edi	# D.22145,
	call	subreg_regno_offset	#
	movl	%eax, -16(%rbp)	# D.22145, offset
	.loc 1 3515 0
	movq	-8(%rbp), %rax	# reg, tmp92
	movq	8(%rax), %rax	# reg_4->fld[0].rtx, tmp93
	movq	%rax, -8(%rbp)	# tmp93, reg
.L580:
	.loc 1 3519 0
	movq	-8(%rbp), %rax	# reg, tmp94
	movzwl	(%rax), %eax	# reg_1->code, D.22144
	cmpw	$61, %ax	#, D.22144
	jne	.L579	#,
	.loc 1 3519 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# reg, tmp95
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.22145
	cmpl	$52, %eax	#, D.22145
	ja	.L579	#,
	.loc 1 3521 0 is_stmt 1
	movq	-8(%rbp), %rax	# reg, tmp96
	movl	8(%rax), %edx	# reg_1->fld[0].rtuint, D.22145
	movl	-16(%rbp), %eax	# offset, offset.196
	addl	%edx, %eax	# D.22145, D.22145
	movl	%eax, %edx	# D.22145, D.22147
	movl	-12(%rbp), %eax	# mode, tmp97
	movl	%edx, %esi	# D.22147,
	movl	%eax, %edi	# tmp97,
	call	gen_rtx_REG	#
	movq	%rax, -8(%rbp)	# tmp98, reg
	.loc 1 3522 0
	movq	-24(%rbp), %rax	# pattern, tmp99
	movq	-8(%rbp), %rdx	# reg, tmp100
	movq	%rdx, 8(%rax)	# tmp100, pattern_3(D)->fld[0].rtx
.L579:
	.loc 1 3524 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	purge_single_hard_subreg_set, .-purge_single_hard_subreg_set
	.globl	purge_hard_subreg_sets
	.type	purge_hard_subreg_sets, @function
purge_hard_subreg_sets:
.LFB53:
	.loc 1 3536 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 3537 0
	jmp	.L583	#
.L592:
	.loc 1 3539 0
	movq	-40(%rbp), %rax	# insn, tmp72
	movzwl	(%rax), %eax	# insn_1->code, D.22148
	movzwl	%ax, %eax	# D.22148, D.22149
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22150
	cmpb	$105, %al	#, D.22150
	jne	.L584	#,
.LBB55:
	.loc 1 3541 0
	movq	-40(%rbp), %rax	# insn, tmp74
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, tmp75
	movq	%rax, -16(%rbp)	# tmp75, pattern
	.loc 1 3542 0
	movq	-16(%rbp), %rax	# pattern, tmp76
	movzwl	(%rax), %eax	# pattern_7->code, D.22148
	movzwl	%ax, %eax	# D.22148, D.22151
	cmpl	$39, %eax	#, D.22151
	je	.L586	#,
	cmpl	$47, %eax	#, D.22151
	je	.L587	#,
	.loc 1 3561 0
	jmp	.L584	#
.L587:
	.loc 1 3545 0
	movq	-16(%rbp), %rax	# pattern, tmp77
	movq	8(%rax), %rax	# pattern_7->fld[0].rtx, D.22152
	movzwl	(%rax), %eax	# _10->code, D.22148
	cmpw	$63, %ax	#, D.22148
	jne	.L588	#,
	.loc 1 3546 0
	movq	-16(%rbp), %rax	# pattern, tmp78
	movq	%rax, %rdi	# tmp78,
	call	purge_single_hard_subreg_set	#
	.loc 1 3547 0
	jmp	.L584	#
.L588:
	jmp	.L584	#
.L586:
.LBB56:
	.loc 1 3551 0
	movq	-16(%rbp), %rax	# pattern, tmp79
	movq	8(%rax), %rax	# pattern_7->fld[0].rtvec, D.22153
	movl	(%rax), %eax	# _12->num_elem, D.22149
	subl	$1, %eax	#, tmp80
	movl	%eax, -20(%rbp)	# tmp80, j
	jmp	.L589	#
.L591:
.LBB57:
	.loc 1 3553 0
	movq	-16(%rbp), %rax	# pattern, tmp81
	movq	8(%rax), %rax	# pattern_7->fld[0].rtvec, D.22153
	movl	-20(%rbp), %edx	# j, tmp83
	movslq	%edx, %rdx	# tmp83, tmp82
	movq	8(%rax,%rdx,8), %rax	# _15->elem, tmp84
	movq	%rax, -8(%rbp)	# tmp84, inner_pattern
	.loc 1 3554 0
	movq	-8(%rbp), %rax	# inner_pattern, tmp85
	movzwl	(%rax), %eax	# inner_pattern_16->code, D.22148
	cmpw	$47, %ax	#, D.22148
	jne	.L590	#,
	.loc 1 3555 0
	movq	-8(%rbp), %rax	# inner_pattern, tmp86
	movq	8(%rax), %rax	# inner_pattern_16->fld[0].rtx, D.22152
	movzwl	(%rax), %eax	# _18->code, D.22148
	cmpw	$63, %ax	#, D.22148
	jne	.L590	#,
	.loc 1 3556 0
	movq	-8(%rbp), %rax	# inner_pattern, tmp87
	movq	%rax, %rdi	# tmp87,
	call	purge_single_hard_subreg_set	#
.L590:
.LBE57:
	.loc 1 3551 0
	subl	$1, -20(%rbp)	#, j
.L589:
	.loc 1 3551 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, j
	jns	.L591	#,
.LBE56:
	.loc 1 3559 0 is_stmt 1
	nop
.L584:
.LBE55:
	.loc 1 3537 0
	movq	-40(%rbp), %rax	# insn, tmp88
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp89
	movq	%rax, -40(%rbp)	# tmp89, insn
.L583:
	.loc 1 3537 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L592	#,
	.loc 1 3565 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	purge_hard_subreg_sets, .-purge_hard_subreg_sets
	.globl	instantiate_virtual_regs
	.type	instantiate_virtual_regs, @function
instantiate_virtual_regs:
.LFB54:
	.loc 1 3574 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fndecl, fndecl
	movq	%rsi, -32(%rbp)	# insns, insns
	.loc 1 3579 0
	movl	$0, in_arg_offset(%rip)	#, in_arg_offset
	.loc 1 3580 0
	movl	$0, var_offset(%rip)	#, var_offset
	.loc 1 3581 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.198
	andl	$4096, %eax	#, D.22154
	testl	%eax, %eax	# D.22154
	je	.L594	#,
	.loc 1 3581 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.199
	movl	76(%rax), %eax	# cfun.199_6->outgoing_args_size, iftmp.197
	jmp	.L595	#
.L594:
	.loc 1 3581 0 discriminator 2
	movl	$0, %eax	#, iftmp.197
.L595:
	.loc 1 3581 0 discriminator 3
	movl	%eax, dynamic_offset(%rip)	# iftmp.197, dynamic_offset
	.loc 1 3582 0 is_stmt 1 discriminator 3
	movl	$0, out_arg_offset(%rip)	#, out_arg_offset
	.loc 1 3583 0 discriminator 3
	movl	$0, cfa_offset(%rip)	#, cfa_offset
	.loc 1 3589 0 discriminator 3
	movq	-24(%rbp), %rax	# fndecl, tmp83
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	instantiate_decls	#
	.loc 1 3592 0 discriminator 3
	call	init_recog	#
	.loc 1 3596 0 discriminator 3
	movq	-32(%rbp), %rax	# insns, tmp84
	movq	%rax, -8(%rbp)	# tmp84, insn
	jmp	.L596	#
.L599:
	.loc 1 3597 0
	movq	-8(%rbp), %rax	# insn, tmp85
	movzwl	(%rax), %eax	# insn_1->code, D.22155
	cmpw	$32, %ax	#, D.22155
	je	.L597	#,
	.loc 1 3597 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.22155
	cmpw	$33, %ax	#, D.22155
	je	.L597	#,
	.loc 1 3598 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_1->code, D.22155
	cmpw	$34, %ax	#, D.22155
	jne	.L598	#,
.L597:
	.loc 1 3600 0
	movq	-8(%rbp), %rax	# insn, tmp88
	leaq	32(%rax), %rcx	#, D.22156
	movq	-8(%rbp), %rax	# insn, tmp89
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp89,
	movq	%rcx, %rdi	# D.22156,
	call	instantiate_virtual_regs_1	#
	.loc 1 3601 0
	movq	-8(%rbp), %rax	# insn, tmp90
	addq	$56, %rax	#, D.22156
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22156,
	call	instantiate_virtual_regs_1	#
	.loc 1 3603 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movzwl	(%rax), %eax	# insn_1->code, D.22155
	cmpw	$34, %ax	#, D.22155
	jne	.L598	#,
	.loc 1 3604 0
	movq	-8(%rbp), %rax	# insn, tmp92
	addq	$64, %rax	#, D.22156
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22156,
	call	instantiate_virtual_regs_1	#
.L598:
	.loc 1 3596 0
	movq	-8(%rbp), %rax	# insn, tmp93
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp94
	movq	%rax, -8(%rbp)	# tmp94, insn
.L596:
	.loc 1 3596 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L599	#,
	.loc 1 3610 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L600	#
.L602:
	.loc 1 3611 0
	movq	cfun(%rip), %rax	# cfun, cfun.200
	movq	312(%rax), %rax	# cfun.200_23->x_parm_reg_stack_loc, D.22156
	movl	-12(%rbp), %edx	# i, D.22158
	salq	$3, %rdx	#, D.22158
	addq	%rdx, %rax	# D.22158, D.22156
	movq	(%rax), %rax	# *_27, D.22159
	testq	%rax, %rax	# D.22159
	je	.L601	#,
	.loc 1 3612 0
	movq	cfun(%rip), %rax	# cfun, cfun.201
	movq	312(%rax), %rax	# cfun.201_29->x_parm_reg_stack_loc, D.22156
	movl	-12(%rbp), %edx	# i, D.22158
	salq	$3, %rdx	#, D.22158
	addq	%rdx, %rax	# D.22158, D.22156
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22156,
	call	instantiate_virtual_regs_1	#
.L601:
	.loc 1 3610 0
	addl	$1, -12(%rbp)	#, i
.L600:
	.loc 1 3610 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.202
	movl	304(%rax), %eax	# cfun.202_21->x_max_parm_reg, D.22157
	cmpl	-12(%rbp), %eax	# i, D.22157
	ja	.L602	#,
	.loc 1 3616 0 is_stmt 1
	movq	-24(%rbp), %rax	# fndecl, tmp95
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	instantiate_decls	#
	.loc 1 3620 0
	movl	$1, virtuals_instantiated(%rip)	#, virtuals_instantiated
	.loc 1 3621 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	instantiate_virtual_regs, .-instantiate_virtual_regs
	.type	instantiate_decls, @function
instantiate_decls:
.LFB55:
	.loc 1 3633 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fndecl, fndecl
	movl	%esi, -44(%rbp)	# valid_only, valid_only
	.loc 1 3637 0
	movq	-40(%rbp), %rax	# fndecl, tmp68
	movq	88(%rax), %rax	# fndecl_3(D)->decl.arguments, tmp69
	movq	%rax, -24(%rbp)	# tmp69, decl
	jmp	.L604	#
.L607:
.LBB58:
	.loc 1 3639 0
	movq	-24(%rbp), %rax	# decl, tmp70
	movq	8(%rax), %rax	# decl_1->common.type, D.22160
	movq	%rax, %rdi	# D.22160,
	call	int_size_in_bytes	#
	movq	%rax, -16(%rbp)	# tmp71, size
	.loc 1 3642 0
	movq	-24(%rbp), %rax	# decl, tmp72
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22161
	testq	%rax, %rax	# D.22161
	je	.L605	#,
	.loc 1 3642 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp73
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.203
	jmp	.L606	#
.L605:
	.loc 1 3642 0 discriminator 2
	movq	-24(%rbp), %rax	# decl, tmp74
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# decl, tmp75
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.203
.L606:
	.loc 1 3642 0 discriminator 3
	movl	-44(%rbp), %edx	# valid_only, tmp76
	movq	-16(%rbp), %rcx	# size, tmp77
	movq	%rcx, %rsi	# tmp77,
	movq	%rax, %rdi	# iftmp.203,
	call	instantiate_decl	#
	.loc 1 3647 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# decl, tmp78
	movq	160(%rax), %rax	# decl_1->decl.u2.r, D.22161
	movzbl	2(%rax), %eax	# _11->mode, D.22162
	movzbl	%al, %eax	# D.22162, D.22163
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22162
	movzbl	%al, %eax	# D.22162, tmp80
	movq	%rax, -8(%rbp)	# tmp80, size_rtl
	.loc 1 3648 0 discriminator 3
	movq	-8(%rbp), %rax	# size_rtl, tmp82
	cmpq	%rax, -16(%rbp)	# tmp82, size
	cmovge	-16(%rbp), %rax	# size,, tmp81
	movq	%rax, -16(%rbp)	# tmp81, size
	.loc 1 3649 0 discriminator 3
	movq	-24(%rbp), %rax	# decl, tmp83
	movq	160(%rax), %rax	# decl_1->decl.u2.r, D.22161
	movl	-44(%rbp), %edx	# valid_only, tmp84
	movq	-16(%rbp), %rcx	# size, tmp85
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# D.22161,
	call	instantiate_decl	#
.LBE58:
	.loc 1 3637 0 discriminator 3
	movq	-24(%rbp), %rax	# decl, tmp86
	movq	(%rax), %rax	# decl_1->common.chain, tmp87
	movq	%rax, -24(%rbp)	# tmp87, decl
.L604:
	.loc 1 3637 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, decl
	jne	.L607	#,
	.loc 1 3653 0 is_stmt 1
	movq	-40(%rbp), %rax	# fndecl, tmp88
	movq	104(%rax), %rax	# fndecl_3(D)->decl.initial, D.22160
	movl	-44(%rbp), %edx	# valid_only, tmp89
	movl	%edx, %esi	# tmp89,
	movq	%rax, %rdi	# D.22160,
	call	instantiate_decls_1	#
	.loc 1 3654 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	instantiate_decls, .-instantiate_decls
	.type	instantiate_decls_1, @function
instantiate_decls_1:
.LFB56:
	.loc 1 3663 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# let, let
	movl	%esi, -44(%rbp)	# valid_only, valid_only
	.loc 1 3666 0
	movq	-40(%rbp), %rax	# let, tmp64
	movq	32(%rax), %rax	# let_4(D)->block.vars, tmp65
	movq	%rax, -24(%rbp)	# tmp65, t
	jmp	.L609	#
.L613:
	.loc 1 3667 0
	movq	-24(%rbp), %rax	# t, tmp66
	movq	144(%rax), %rax	# t_1->decl.rtl, D.22165
	testq	%rax, %rax	# D.22165
	je	.L610	#,
	.loc 1 3668 0
	movq	-24(%rbp), %rax	# t, tmp67
	movq	8(%rax), %rax	# t_1->common.type, D.22166
	movq	%rax, %rdi	# D.22166,
	call	int_size_in_bytes	#
	movq	%rax, %rbx	#, D.22167
	movq	-24(%rbp), %rax	# t, tmp68
	movq	144(%rax), %rax	# t_1->decl.rtl, D.22165
	testq	%rax, %rax	# D.22165
	je	.L611	#,
	.loc 1 3668 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp69
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.204
	jmp	.L612	#
.L611:
	.loc 1 3668 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# t, tmp71
	movq	144(%rax), %rax	# t_1->decl.rtl, iftmp.204
.L612:
	.loc 1 3668 0 discriminator 3
	movl	-44(%rbp), %edx	# valid_only, tmp72
	movq	%rbx, %rsi	# D.22167,
	movq	%rax, %rdi	# iftmp.204,
	call	instantiate_decl	#
.L610:
	.loc 1 3666 0 is_stmt 1
	movq	-24(%rbp), %rax	# t, tmp73
	movq	(%rax), %rax	# t_1->common.chain, tmp74
	movq	%rax, -24(%rbp)	# tmp74, t
.L609:
	.loc 1 3666 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L613	#,
	.loc 1 3673 0 is_stmt 1
	movq	-40(%rbp), %rax	# let, tmp75
	movq	40(%rax), %rax	# let_4(D)->block.subblocks, tmp76
	movq	%rax, -24(%rbp)	# tmp76, t
	jmp	.L614	#
.L615:
	.loc 1 3674 0 discriminator 2
	movl	-44(%rbp), %edx	# valid_only, tmp77
	movq	-24(%rbp), %rax	# t, tmp78
	movl	%edx, %esi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	instantiate_decls_1	#
	.loc 1 3673 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp79
	movq	(%rax), %rax	# t_2->common.chain, tmp80
	movq	%rax, -24(%rbp)	# tmp80, t
.L614:
	.loc 1 3673 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L615	#,
	.loc 1 3675 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	instantiate_decls_1, .-instantiate_decls_1
	.type	instantiate_decl, @function
instantiate_decl:
.LFB57:
	.loc 1 3688 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movq	%rsi, -48(%rbp)	# size, size
	movl	%edx, -52(%rbp)	# valid_only, valid_only
	.loc 1 3695 0
	cmpq	$0, -40(%rbp)	#, x
	je	.L617	#,
	.loc 1 3695 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp105
	movzwl	(%rax), %eax	# x_3(D)->code, D.22168
	cmpw	$66, %ax	#, D.22168
	je	.L618	#,
.L617:
	.loc 1 3696 0 is_stmt 1
	jmp	.L616	#
.L618:
	.loc 1 3698 0
	movq	-40(%rbp), %rax	# x, tmp106
	movq	8(%rax), %rax	# x_3(D)->fld[0].rtx, addr.205
	movq	%rax, -16(%rbp)	# addr.205, addr
	.loc 1 3699 0
	movq	-16(%rbp), %rax	# addr, addr.206
	movzwl	(%rax), %eax	# addr.206_6->code, D.22168
	cmpw	$67, %ax	#, D.22168
	je	.L620	#,
	.loc 1 3699 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# addr, addr.207
	movzwl	(%rax), %eax	# addr.207_8->code, D.22168
	cmpw	$68, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.208
	movzwl	(%rax), %eax	# addr.208_10->code, D.22168
	cmpw	$54, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.209
	movzwl	(%rax), %eax	# addr.209_12->code, D.22168
	cmpw	$55, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.210
	movzwl	(%rax), %eax	# addr.210_14->code, D.22168
	cmpw	$58, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.211
	movzwl	(%rax), %eax	# addr.211_16->code, D.22168
	cmpw	$134, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.212
	movzwl	(%rax), %eax	# addr.212_18->code, D.22168
	cmpw	$56, %ax	#, D.22168
	je	.L620	#,
	movq	-16(%rbp), %rax	# addr, addr.213
	movzwl	(%rax), %eax	# addr.213_20->code, D.22168
	cmpw	$140, %ax	#, D.22168
	je	.L620	#,
	.loc 1 3700 0 is_stmt 1
	movq	-16(%rbp), %rax	# addr, addr.214
	movzwl	(%rax), %eax	# addr.214_22->code, D.22168
	cmpw	$70, %ax	#, D.22168
	jne	.L621	#,
	.loc 1 3700 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# addr, addr.215
	movq	8(%rax), %rax	# addr.215_24->fld[0].rtx, D.22169
	movzwl	(%rax), %eax	# _25->code, D.22168
	cmpw	$61, %ax	#, D.22168
	je	.L620	#,
.L621:
	.loc 1 3701 0 is_stmt 1
	movq	-16(%rbp), %rax	# addr, addr.216
	movzwl	(%rax), %eax	# addr.216_27->code, D.22168
	cmpw	$61, %ax	#, D.22168
	jne	.L622	#,
	.loc 1 3702 0
	movq	-16(%rbp), %rax	# addr, addr.217
	movl	8(%rax), %eax	# addr.217_29->fld[0].rtuint, D.22170
	cmpl	$52, %eax	#, D.22170
	jbe	.L620	#,
	.loc 1 3703 0
	movq	-16(%rbp), %rax	# addr, addr.218
	movl	8(%rax), %eax	# addr.218_31->fld[0].rtuint, D.22170
	cmpl	$57, %eax	#, D.22170
	jbe	.L622	#,
.L620:
	.loc 1 3704 0
	jmp	.L616	#
.L622:
	.loc 1 3711 0
	cmpl	$0, -52(%rbp)	#, valid_only
	je	.L623	#,
	.loc 1 3712 0
	movq	-16(%rbp), %rax	# addr, addr.219
	movq	%rax, %rdi	# addr.219,
	call	copy_rtx	#
	movq	%rax, -16(%rbp)	# addr.220, addr
.L623:
	.loc 1 3714 0
	leaq	-16(%rbp), %rax	#, tmp107
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	instantiate_virtual_regs_1	#
	.loc 1 3716 0
	cmpl	$0, -52(%rbp)	#, valid_only
	je	.L624	#,
	.loc 1 3716 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, size
	js	.L624	#,
.LBB59:
	.loc 1 3718 0 is_stmt 1
	movq	-48(%rbp), %rax	# size, tmp108
	movq	%rax, -8(%rbp)	# tmp108, decl_size
	.loc 1 3725 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp109
	movl	%eax, -20(%rbp)	# tmp109, mode
	jmp	.L625	#
.L628:
	.loc 1 3728 0
	movq	-16(%rbp), %rdx	# addr, addr.221
	movl	-20(%rbp), %eax	# mode, tmp110
	movq	%rdx, %rsi	# addr.221,
	movl	%eax, %edi	# tmp110,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22173
	jne	.L626	#,
	.loc 1 3729 0
	jmp	.L616	#
.L626:
	.loc 1 3727 0
	movl	-20(%rbp), %eax	# mode, mode.222
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22171
	movzbl	%al, %eax	# D.22171, tmp112
	movl	%eax, -20(%rbp)	# tmp112, mode
.L625:
	.loc 1 3725 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	je	.L627	#,
	.loc 1 3726 0
	movl	-20(%rbp), %eax	# mode, mode.223
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22171
	movzbl	%al, %eax	# D.22171, D.22172
	cmpq	-8(%rbp), %rax	# decl_size, D.22172
	jbe	.L628	#,
.L627:
	.loc 1 3731 0
	movl	class_narrowest_mode+8(%rip), %eax	# class_narrowest_mode, tmp114
	movl	%eax, -20(%rbp)	# tmp114, mode
	jmp	.L629	#
.L631:
	.loc 1 3734 0
	movq	-16(%rbp), %rdx	# addr, addr.224
	movl	-20(%rbp), %eax	# mode, tmp115
	movq	%rdx, %rsi	# addr.224,
	movl	%eax, %edi	# tmp115,
	call	memory_address_p	#
	testl	%eax, %eax	# D.22173
	jne	.L630	#,
	.loc 1 3735 0
	jmp	.L616	#
.L630:
	.loc 1 3733 0
	movl	-20(%rbp), %eax	# mode, mode.225
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.22171
	movzbl	%al, %eax	# D.22171, tmp117
	movl	%eax, -20(%rbp)	# tmp117, mode
.L629:
	.loc 1 3731 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, mode
	je	.L624	#,
	.loc 1 3732 0
	movl	-20(%rbp), %eax	# mode, mode.226
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22171
	movzbl	%al, %eax	# D.22171, D.22172
	cmpq	-8(%rbp), %rax	# decl_size, D.22172
	jbe	.L631	#,
.L624:
.LBE59:
	.loc 1 3741 0
	movq	-16(%rbp), %rdx	# addr, addr.227
	movq	-40(%rbp), %rax	# x, tmp119
	movq	%rdx, 8(%rax)	# addr.227, x_3(D)->fld[0].rtx
.L616:
	.loc 1 3742 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	instantiate_decl, .-instantiate_decl
	.type	instantiate_new_reg, @function
instantiate_new_reg:
.LFB58:
	.loc 1 3752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# poffset, poffset
	.loc 1 3756 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22175
	cmpq	-24(%rbp), %rax	# x, D.22175
	jne	.L634	#,
	.loc 1 3757 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, tmp71
	movq	%rax, -16(%rbp)	# tmp71, new
	movl	in_arg_offset(%rip), %eax	# in_arg_offset, in_arg_offset.228
	cltq
	movq	%rax, -8(%rbp)	# tmp72, offset
	jmp	.L635	#
.L634:
	.loc 1 3758 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22175
	cmpq	-24(%rbp), %rax	# x, D.22175
	jne	.L636	#,
	.loc 1 3759 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, tmp73
	movq	%rax, -16(%rbp)	# tmp73, new
	movl	var_offset(%rip), %eax	# var_offset, var_offset.229
	cltq
	movq	%rax, -8(%rbp)	# tmp74, offset
	jmp	.L635	#
.L636:
	.loc 1 3760 0
	movq	global_rtl+64(%rip), %rax	# global_rtl, D.22175
	cmpq	-24(%rbp), %rax	# x, D.22175
	jne	.L637	#,
	.loc 1 3761 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, tmp75
	movq	%rax, -16(%rbp)	# tmp75, new
	movl	dynamic_offset(%rip), %eax	# dynamic_offset, dynamic_offset.230
	cltq
	movq	%rax, -8(%rbp)	# tmp76, offset
	jmp	.L635	#
.L637:
	.loc 1 3762 0
	movq	global_rtl+72(%rip), %rax	# global_rtl, D.22175
	cmpq	-24(%rbp), %rax	# x, D.22175
	jne	.L638	#,
	.loc 1 3763 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, tmp77
	movq	%rax, -16(%rbp)	# tmp77, new
	movl	out_arg_offset(%rip), %eax	# out_arg_offset, out_arg_offset.231
	cltq
	movq	%rax, -8(%rbp)	# tmp78, offset
	jmp	.L635	#
.L638:
	.loc 1 3764 0
	movq	global_rtl+80(%rip), %rax	# global_rtl, D.22175
	cmpq	-24(%rbp), %rax	# x, D.22175
	jne	.L639	#,
	.loc 1 3765 0
	movq	global_rtl+40(%rip), %rax	# global_rtl, tmp79
	movq	%rax, -16(%rbp)	# tmp79, new
	movl	cfa_offset(%rip), %eax	# cfa_offset, cfa_offset.232
	cltq
	movq	%rax, -8(%rbp)	# tmp80, offset
	jmp	.L635	#
.L639:
	.loc 1 3767 0
	movl	$0, %eax	#, D.22174
	jmp	.L640	#
.L635:
	.loc 1 3769 0
	movq	-32(%rbp), %rax	# poffset, tmp81
	movq	-8(%rbp), %rdx	# offset, tmp82
	movq	%rdx, (%rax)	# tmp82, *poffset_26(D)
	.loc 1 3770 0
	movq	-16(%rbp), %rax	# new, D.22174
.L640:
	.loc 1 3771 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	instantiate_new_reg, .-instantiate_new_reg
	.type	instantiate_virtual_regs_1, @function
instantiate_virtual_regs_1:
.LFB59:
	.loc 1 3792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# loc, loc
	movq	%rsi, -112(%rbp)	# object, object
	movl	%edx, -116(%rbp)	# extra_insns, extra_insns
	.loc 1 3795 0
	movq	$0, -48(%rbp)	#, new
	.loc 1 3796 0
	movq	$0, -72(%rbp)	#, offset
.L642:
	.loc 1 3805 0
	movq	-104(%rbp), %rax	# loc, tmp227
	movq	(%rax), %rax	# *loc_1, tmp228
	movq	%rax, -56(%rbp)	# tmp228, x
	.loc 1 3806 0
	cmpq	$0, -56(%rbp)	#, x
	jne	.L643	#,
	.loc 1 3807 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L643:
	.loc 1 3809 0
	movq	-56(%rbp), %rax	# x, tmp229
	movzwl	(%rax), %eax	# x_16->code, D.22177
	movzwl	%ax, %eax	# D.22177, tmp230
	movl	%eax, -76(%rbp)	# tmp230, code
	.loc 1 3812 0
	movl	-76(%rbp), %eax	# code, tmp232
	subl	$3, %eax	#, tmp231
	cmpl	$128, %eax	#, tmp231
	ja	.L706	#,
	movl	%eax, %eax	# tmp231, tmp233
	movq	.L647(,%rax,8), %rax	#, tmp234
	jmp	*%rax	# tmp234
	.section	.rodata
	.align 8
	.align 4
.L647:
	.quad	.L646
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L648
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L648
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L648
	.quad	.L648
	.quad	.L649
	.quad	.L650
	.quad	.L651
	.quad	.L651
	.quad	.L646
	.quad	.L648
	.quad	.L706
	.quad	.L706
	.quad	.L648
	.quad	.L648
	.quad	.L648
	.quad	.L706
	.quad	.L648
	.quad	.L648
	.quad	.L706
	.quad	.L652
	.quad	.L706
	.quad	.L649
	.quad	.L649
	.quad	.L706
	.quad	.L653
	.quad	.L706
	.quad	.L648
	.quad	.L648
	.quad	.L654
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L646
	.quad	.L655
	.quad	.L646
	.quad	.L649
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L649
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L706
	.quad	.L706
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L646
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L706
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.quad	.L649
	.text
.L648:
	.loc 1 3826 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L650:
	.loc 1 3833 0
	movq	-56(%rbp), %rax	# x, tmp235
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	leaq	-72(%rbp), %rdx	#, tmp236
	movq	%rdx, %rsi	# tmp236,
	movq	%rax, %rdi	# D.22178,
	call	instantiate_new_reg	#
	movq	%rax, -48(%rbp)	# tmp237, new
	cmpq	$0, -48(%rbp)	#, new
	je	.L656	#,
.LBB60:
	.loc 1 3835 0
	movq	-56(%rbp), %rax	# x, tmp238
	movq	16(%rax), %rax	# x_16->fld[1].rtx, src.233
	movq	%rax, -64(%rbp)	# src.233, src
	.loc 1 3840 0
	movq	-72(%rbp), %rax	# offset, offset.234
	negq	%rax	# offset.235
	movq	%rax, -72(%rbp)	# offset.235, offset
	.loc 1 3841 0
	leaq	-64(%rbp), %rax	#, tmp239
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp239,
	call	instantiate_virtual_regs_1	#
	.loc 1 3845 0
	movq	-64(%rbp), %rax	# src, src.236
	movzwl	(%rax), %eax	# src.236_26->code, D.22177
	cmpw	$61, %ax	#, D.22177
	je	.L657	#,
	.loc 1 3845 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# src, src.237
	movzwl	(%rax), %eax	# src.237_28->code, D.22177
	cmpw	$75, %ax	#, D.22177
	je	.L657	#,
	.loc 1 3846 0 is_stmt 1
	movl	$__FUNCTION__.14472, %edx	#,
	movl	$3846, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L657:
	.loc 1 3848 0
	call	start_sequence	#
	.loc 1 3849 0
	movq	-64(%rbp), %rax	# src, src.238
	movzwl	(%rax), %eax	# src.238_30->code, D.22177
	cmpw	$61, %ax	#, D.22177
	je	.L658	#,
	.loc 1 3850 0
	movq	-64(%rbp), %rax	# src, src.239
	movl	$0, %esi	#,
	movq	%rax, %rdi	# src.239,
	call	force_operand	#
	movq	%rax, -40(%rbp)	# tmp240, temp
	jmp	.L659	#
.L658:
	.loc 1 3852 0
	movq	-64(%rbp), %rax	# src, tmp241
	movq	%rax, -40(%rbp)	# tmp241, temp
.L659:
	.loc 1 3853 0
	movq	-72(%rbp), %rdx	# offset, offset.240
	movq	-40(%rbp), %rax	# temp, tmp242
	movq	%rdx, %rsi	# offset.240,
	movq	%rax, %rdi	# tmp242,
	call	plus_constant_wide	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22178,
	call	force_operand	#
	movq	%rax, -40(%rbp)	# tmp243, temp
	.loc 1 3854 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp244, seq
	.loc 1 3855 0
	call	end_sequence	#
	.loc 1 3857 0
	movq	-112(%rbp), %rdx	# object, tmp245
	movq	-24(%rbp), %rax	# seq, tmp246
	movq	%rdx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	emit_insns_before	#
	.loc 1 3858 0
	movq	-56(%rbp), %rax	# x, tmp247
	movq	-48(%rbp), %rdx	# new, tmp248
	movq	%rdx, 8(%rax)	# tmp248, x_16->fld[0].rtx
	.loc 1 3860 0
	movq	-56(%rbp), %rax	# x, tmp249
	leaq	16(%rax), %rsi	#, D.22179
	movq	-40(%rbp), %rdx	# temp, tmp250
	movq	-112(%rbp), %rax	# object, tmp251
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp251,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	je	.L660	#,
	.loc 1 3861 0
	cmpl	$0, -116(%rbp)	#, extra_insns
	jne	.L661	#,
.L660:
	.loc 1 3862 0
	movl	$__FUNCTION__.14472, %edx	#,
	movl	$3862, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L661:
	.loc 1 3864 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L656:
.LBE60:
	.loc 1 3867 0
	movq	-56(%rbp), %rax	# x, tmp252
	leaq	8(%rax), %rcx	#, D.22179
	movl	-116(%rbp), %edx	# extra_insns, tmp253
	movq	-112(%rbp), %rax	# object, tmp254
	movq	%rax, %rsi	# tmp254,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	.loc 1 3868 0
	movq	-56(%rbp), %rax	# x, tmp258
	addq	$16, %rax	#, tmp257
	movq	%rax, -104(%rbp)	# tmp257, loc
	.loc 1 3869 0
	jmp	.L642	#
.L655:
	.loc 1 3873 0
	movq	-56(%rbp), %rax	# x, tmp259
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _46->code, D.22177
	cmpw	$67, %ax	#, D.22177
	je	.L662	#,
	.loc 1 3873 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp260
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _48->code, D.22177
	cmpw	$68, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp261
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _50->code, D.22177
	cmpw	$54, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp262
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _52->code, D.22177
	cmpw	$55, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp263
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _54->code, D.22177
	cmpw	$58, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp264
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _56->code, D.22177
	cmpw	$134, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp265
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _58->code, D.22177
	cmpw	$56, %ax	#, D.22177
	je	.L662	#,
	movq	-56(%rbp), %rax	# x, tmp266
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _60->code, D.22177
	cmpw	$140, %ax	#, D.22177
	jne	.L646	#,
.L662:
.LBB61:
	.loc 1 3878 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp267
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _62->code, D.22177
	cmpw	$75, %ax	#, D.22177
	jne	.L663	#,
	.loc 1 3880 0
	movq	-56(%rbp), %rax	# x, tmp268
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movq	8(%rax), %rax	# _64->fld[0].rtx, D.22178
	leaq	-72(%rbp), %rdx	#, tmp269
	movq	%rdx, %rsi	# tmp269,
	movq	%rax, %rdi	# D.22178,
	call	instantiate_new_reg	#
	movq	%rax, -48(%rbp)	# tmp270, new
	cmpq	$0, -48(%rbp)	#, new
	je	.L664	#,
	.loc 1 3882 0
	movq	-56(%rbp), %rax	# x, tmp271
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	leaq	16(%rax), %rcx	#, D.22179
	movl	-116(%rbp), %edx	# extra_insns, tmp272
	movq	-112(%rbp), %rax	# object, tmp273
	movq	%rax, %rsi	# tmp273,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	.loc 1 3884 0
	movq	-56(%rbp), %rax	# x, tmp274
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movq	16(%rax), %rcx	# _69->fld[1].rtx, D.22178
	movl	target_flags(%rip), %eax	# target_flags, target_flags.242
	andl	$33554432, %eax	#, D.22176
	testl	%eax, %eax	# D.22176
	je	.L665	#,
	.loc 1 3884 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.241
	jmp	.L666	#
.L665:
	.loc 1 3884 0 discriminator 2
	movl	$4, %eax	#, iftmp.241
.L666:
	.loc 1 3884 0 discriminator 1
	movq	-48(%rbp), %rdx	# new, tmp275
	movl	%eax, %esi	# iftmp.241,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp276, new
	jmp	.L667	#
.L664:
	.loc 1 3888 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp280
	addq	$8, %rax	#, tmp279
	movq	%rax, -104(%rbp)	# tmp279, loc
	.loc 1 3889 0
	jmp	.L642	#
.L663:
	.loc 1 3910 0
	movq	-56(%rbp), %rax	# x, tmp281
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	leaq	-72(%rbp), %rdx	#, tmp282
	movq	%rdx, %rsi	# tmp282,
	movq	%rax, %rdi	# D.22178,
	call	instantiate_new_reg	#
	movq	%rax, -48(%rbp)	# tmp283, new
	cmpq	$0, -48(%rbp)	#, new
	jne	.L667	#,
	.loc 1 3915 0
	movq	-56(%rbp), %rax	# x, tmp284
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _79->code, D.22177
	cmpw	$61, %ax	#, D.22177
	je	.L668	#,
	.loc 1 3917 0
	movq	-56(%rbp), %rax	# x, tmp288
	addq	$8, %rax	#, tmp287
	movq	%rax, -104(%rbp)	# tmp287, loc
	.loc 1 3918 0
	jmp	.L642	#
.L668:
	.loc 1 3920 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L667:
	.loc 1 3923 0
	movq	-72(%rbp), %rdx	# offset, offset.243
	movq	-56(%rbp), %rax	# x, tmp289
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movq	%rdx, %rsi	# offset.243,
	movq	%rax, %rdi	# D.22178,
	call	plus_constant_wide	#
	movq	%rax, -16(%rbp)	# tmp290, new_offset
	.loc 1 3927 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22178
	cmpq	-16(%rbp), %rax	# new_offset, D.22178
	jne	.L669	#,
	.loc 1 3928 0
	movq	-48(%rbp), %rdx	# new, tmp291
	movq	-104(%rbp), %rsi	# loc, tmp292
	movq	-112(%rbp), %rax	# object, tmp293
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp293,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	je	.L669	#,
	.loc 1 3929 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L669:
	.loc 1 3938 0
	movq	-56(%rbp), %rax	# x, tmp294
	movq	8(%rax), %rax	# x_16->fld[0].rtx, tmp295
	movq	%rax, -8(%rbp)	# tmp295, old
	.loc 1 3939 0
	movq	-72(%rbp), %rax	# offset, offset.245
	testq	%rax, %rax	# offset.245
	jne	.L670	#,
	.loc 1 3940 0
	movq	-56(%rbp), %rax	# x, tmp296
	leaq	8(%rax), %rsi	#, D.22179
	movq	-48(%rbp), %rdx	# new, tmp297
	movq	-112(%rbp), %rax	# object, tmp298
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp298,
	call	validate_change	#
	.loc 1 3939 0
	testl	%eax, %eax	# D.22176
	sete	%al	#, iftmp.244
	jmp	.L671	#
.L670:
	.loc 1 3941 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp299
	movq	-48(%rbp), %rdx	# new, tmp300
	movq	%rdx, 8(%rax)	# tmp300, x_16->fld[0].rtx
	.loc 1 3942 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp301
	leaq	16(%rax), %rsi	#, D.22179
	movq	-16(%rbp), %rdx	# new_offset, tmp302
	movq	-112(%rbp), %rax	# object, tmp303
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp303,
	call	validate_change	#
	.loc 1 3939 0 discriminator 1
	testl	%eax, %eax	# D.22176
	sete	%al	#, iftmp.244
.L671:
	.loc 1 3939 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.244
	je	.L672	#,
	.loc 1 3944 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, extra_insns
	jne	.L673	#,
	.loc 1 3946 0
	movq	-56(%rbp), %rax	# x, tmp304
	movq	-8(%rbp), %rdx	# old, tmp305
	movq	%rdx, 8(%rax)	# tmp305, x_16->fld[0].rtx
	.loc 1 3947 0
	movl	$0, %eax	#, D.22176
	jmp	.L705	#
.L673:
	.loc 1 3952 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.247
	andl	$33554432, %eax	#, D.22176
	testl	%eax, %eax	# D.22176
	je	.L674	#,
	.loc 1 3952 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.246
	jmp	.L675	#
.L674:
	.loc 1 3952 0 discriminator 2
	movl	$4, %eax	#, iftmp.246
.L675:
	.loc 1 3952 0 discriminator 3
	movl	%eax, %edi	# iftmp.246,
	call	gen_reg_rtx	#
	movq	%rax, -40(%rbp)	# tmp306, temp
	.loc 1 3953 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp307
	movq	-48(%rbp), %rdx	# new, tmp308
	movq	%rdx, 8(%rax)	# tmp308, x_16->fld[0].rtx
	.loc 1 3954 0 discriminator 3
	movq	-56(%rbp), %rax	# x, tmp309
	leaq	16(%rax), %rsi	#, D.22179
	movq	-40(%rbp), %rdx	# temp, tmp310
	movq	-112(%rbp), %rax	# object, tmp311
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp311,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	je	.L676	#,
	.loc 1 3955 0
	movq	-16(%rbp), %rdx	# new_offset, tmp312
	movq	-40(%rbp), %rax	# temp, tmp313
	movq	%rdx, %rsi	# tmp312,
	movq	%rax, %rdi	# tmp313,
	call	gen_move_insn	#
	movq	-112(%rbp), %rdx	# object, tmp314
	movq	%rdx, %rsi	# tmp314,
	movq	%rax, %rdi	# D.22178,
	call	emit_insn_before	#
	jmp	.L672	#
.L676:
	.loc 1 3961 0
	movq	-56(%rbp), %rax	# x, tmp315
	movq	-8(%rbp), %rdx	# old, tmp316
	movq	%rdx, 8(%rax)	# tmp316, x_16->fld[0].rtx
	.loc 1 3962 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.249
	andl	$33554432, %eax	#, D.22176
	testl	%eax, %eax	# D.22176
	je	.L677	#,
	.loc 1 3962 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.248
	jmp	.L678	#
.L677:
	.loc 1 3962 0 discriminator 2
	movl	$4, %eax	#, iftmp.248
.L678:
	.loc 1 3962 0 discriminator 3
	movq	-16(%rbp), %rcx	# new_offset, tmp317
	movq	-48(%rbp), %rdx	# new, tmp318
	movl	%eax, %esi	# iftmp.248,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp319, new
	.loc 1 3964 0 is_stmt 1 discriminator 3
	call	start_sequence	#
	.loc 1 3965 0 discriminator 3
	movq	-48(%rbp), %rax	# new, tmp320
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp320,
	call	force_operand	#
	movq	%rax, -40(%rbp)	# tmp321, temp
	.loc 1 3966 0 discriminator 3
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp322, seq
	.loc 1 3967 0 discriminator 3
	call	end_sequence	#
	.loc 1 3969 0 discriminator 3
	movq	-112(%rbp), %rdx	# object, tmp323
	movq	-24(%rbp), %rax	# seq, tmp324
	movq	%rdx, %rsi	# tmp323,
	movq	%rax, %rdi	# tmp324,
	call	emit_insns_before	#
	.loc 1 3970 0 discriminator 3
	movq	-40(%rbp), %rdx	# temp, tmp325
	movq	-104(%rbp), %rsi	# loc, tmp326
	movq	-112(%rbp), %rax	# object, tmp327
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp327,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	jne	.L672	#,
	.loc 1 3971 0
	movq	-112(%rbp), %rdx	# object, tmp328
	movq	-40(%rbp), %rcx	# temp, tmp329
	movq	-56(%rbp), %rax	# x, tmp330
	movq	%rcx, %rsi	# tmp329,
	movq	%rax, %rdi	# tmp330,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22176
	jne	.L672	#,
	.loc 1 3972 0
	movl	$__FUNCTION__.14472, %edx	#,
	movl	$3972, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L672:
	.loc 1 3976 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L646:
.LBE61:
	.loc 1 3993 0
	movq	-56(%rbp), %rax	# x, tmp331
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	testq	%rax, %rax	# D.22178
	je	.L679	#,
	.loc 1 3993 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp332
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _117->code, D.22177
	cmpw	$67, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp333
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _119->code, D.22177
	cmpw	$68, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp334
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _121->code, D.22177
	cmpw	$54, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp335
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _123->code, D.22177
	cmpw	$55, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp336
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _125->code, D.22177
	cmpw	$58, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp337
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _127->code, D.22177
	cmpw	$134, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp338
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _129->code, D.22177
	cmpw	$56, %ax	#, D.22177
	je	.L679	#,
	movq	-56(%rbp), %rax	# x, tmp339
	movq	16(%rax), %rax	# x_16->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _131->code, D.22177
	cmpw	$140, %ax	#, D.22177
	je	.L679	#,
	.loc 1 3994 0 is_stmt 1
	movq	-56(%rbp), %rax	# x, tmp340
	leaq	16(%rax), %rcx	#, D.22179
	movl	-116(%rbp), %edx	# extra_insns, tmp341
	movq	-112(%rbp), %rax	# object, tmp342
	movq	%rax, %rsi	# tmp342,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
.L679:
	.loc 1 3995 0
	movq	-56(%rbp), %rax	# x, tmp346
	addq	$8, %rax	#, tmp345
	movq	%rax, -104(%rbp)	# tmp345, loc
	.loc 1 3996 0
	jmp	.L642	#
.L653:
	.loc 1 4013 0
	movq	-56(%rbp), %rax	# x, tmp347
	movq	8(%rax), %rax	# x_16->fld[0].rtx, tmp348
	movq	%rax, -40(%rbp)	# tmp348, temp
	.loc 1 4014 0
	movq	-40(%rbp), %rax	# temp, tmp349
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$67, %ax	#, D.22177
	je	.L680	#,
	.loc 1 4014 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# temp, tmp350
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$68, %ax	#, D.22177
	je	.L680	#,
	movq	-40(%rbp), %rax	# temp, tmp351
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$54, %ax	#, D.22177
	je	.L680	#,
	movq	-40(%rbp), %rax	# temp, tmp352
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$58, %ax	#, D.22177
	je	.L680	#,
	movq	-40(%rbp), %rax	# temp, tmp353
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$55, %ax	#, D.22177
	je	.L680	#,
	.loc 1 4016 0 is_stmt 1
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22178
	cmpq	-40(%rbp), %rax	# temp, D.22178
	je	.L680	#,
	.loc 1 4019 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22178
	cmpq	-40(%rbp), %rax	# temp, D.22178
	je	.L680	#,
	.loc 1 4021 0
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22178
	cmpq	-40(%rbp), %rax	# temp, D.22178
	jne	.L681	#,
.L680:
	.loc 1 4022 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L681:
	.loc 1 4024 0
	movq	-40(%rbp), %rax	# temp, tmp354
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$75, %ax	#, D.22177
	jne	.L682	#,
	.loc 1 4025 0
	movq	-40(%rbp), %rax	# temp, tmp355
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _145->code, D.22177
	cmpw	$67, %ax	#, D.22177
	je	.L683	#,
	.loc 1 4025 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# temp, tmp356
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _147->code, D.22177
	cmpw	$68, %ax	#, D.22177
	je	.L683	#,
	movq	-40(%rbp), %rax	# temp, tmp357
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _149->code, D.22177
	cmpw	$54, %ax	#, D.22177
	je	.L683	#,
	movq	-40(%rbp), %rax	# temp, tmp358
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _151->code, D.22177
	cmpw	$58, %ax	#, D.22177
	je	.L683	#,
	movq	-40(%rbp), %rax	# temp, tmp359
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _153->code, D.22177
	cmpw	$55, %ax	#, D.22177
	jne	.L682	#,
.L683:
	.loc 1 4026 0 is_stmt 1
	movq	-40(%rbp), %rax	# temp, tmp360
	movq	8(%rax), %rdx	# temp_135->fld[0].rtx, D.22178
	movq	global_rtl+24(%rip), %rax	# global_rtl, D.22178
	cmpq	%rax, %rdx	# D.22178, D.22178
	je	.L684	#,
	.loc 1 4028 0
	movq	-40(%rbp), %rax	# temp, tmp361
	movq	8(%rax), %rdx	# temp_135->fld[0].rtx, D.22178
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22178
	cmpq	%rax, %rdx	# D.22178, D.22178
	je	.L684	#,
	.loc 1 4031 0
	movq	-40(%rbp), %rax	# temp, tmp362
	movq	8(%rax), %rdx	# temp_135->fld[0].rtx, D.22178
	movq	global_rtl+40(%rip), %rax	# global_rtl, D.22178
	cmpq	%rax, %rdx	# D.22178, D.22178
	jne	.L682	#,
.L684:
	.loc 1 4034 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L682:
	.loc 1 4036 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22178
	cmpq	-40(%rbp), %rax	# temp, D.22178
	je	.L685	#,
	.loc 1 4037 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22178
	cmpq	-40(%rbp), %rax	# temp, D.22178
	je	.L685	#,
	.loc 1 4038 0
	movq	-40(%rbp), %rax	# temp, tmp363
	movzwl	(%rax), %eax	# temp_135->code, D.22177
	cmpw	$75, %ax	#, D.22177
	jne	.L649	#,
	.loc 1 4039 0
	movq	-40(%rbp), %rax	# temp, tmp364
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _165->code, D.22177
	cmpw	$67, %ax	#, D.22177
	je	.L686	#,
	.loc 1 4039 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# temp, tmp365
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _167->code, D.22177
	cmpw	$68, %ax	#, D.22177
	je	.L686	#,
	movq	-40(%rbp), %rax	# temp, tmp366
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _169->code, D.22177
	cmpw	$54, %ax	#, D.22177
	je	.L686	#,
	movq	-40(%rbp), %rax	# temp, tmp367
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _171->code, D.22177
	cmpw	$58, %ax	#, D.22177
	je	.L686	#,
	movq	-40(%rbp), %rax	# temp, tmp368
	movq	16(%rax), %rax	# temp_135->fld[1].rtx, D.22178
	movzwl	(%rax), %eax	# _173->code, D.22177
	cmpw	$55, %ax	#, D.22177
	jne	.L649	#,
.L686:
	.loc 1 4040 0 is_stmt 1
	movq	-40(%rbp), %rax	# temp, tmp369
	movq	8(%rax), %rdx	# temp_135->fld[0].rtx, D.22178
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22178
	cmpq	%rax, %rdx	# D.22178, D.22178
	je	.L685	#,
	.loc 1 4041 0
	movq	-40(%rbp), %rax	# temp, tmp370
	movq	8(%rax), %rdx	# temp_135->fld[0].rtx, D.22178
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22178
	cmpq	%rax, %rdx	# D.22178, D.22178
	jne	.L649	#,
.L685:
	.loc 1 4062 0
	cmpq	$0, -112(%rbp)	#, object
	je	.L687	#,
	.loc 1 4062 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# object, iftmp.250
	jmp	.L688	#
.L687:
	.loc 1 4062 0 discriminator 2
	movq	-56(%rbp), %rax	# x, iftmp.250
.L688:
	.loc 1 4062 0 discriminator 3
	movq	-56(%rbp), %rdx	# x, tmp371
	leaq	8(%rdx), %rcx	#, D.22179
	movl	$0, %edx	#,
	movq	%rax, %rsi	# iftmp.250,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	testl	%eax, %eax	# D.22176
	je	.L689	#,
	.loc 1 4064 0 is_stmt 1
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L689:
	.loc 1 4069 0
	movq	-56(%rbp), %rax	# x, tmp372
	movq	%rax, %rdi	# tmp372,
	call	copy_rtx	#
	movq	%rax, -56(%rbp)	# tmp373, x
	movq	-104(%rbp), %rax	# loc, tmp374
	movq	-56(%rbp), %rdx	# x, tmp375
	movq	%rdx, (%rax)	# tmp375, *loc_1
.L649:
	.loc 1 4087 0
	movq	-56(%rbp), %rax	# x, tmp379
	addq	$8, %rax	#, tmp378
	movq	%rax, -104(%rbp)	# tmp378, loc
	.loc 1 4088 0
	jmp	.L642	#
.L651:
	.loc 1 4096 0
	movq	-56(%rbp), %rax	# x, tmp380
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _187->code, D.22177
	cmpw	$66, %ax	#, D.22177
	jne	.L690	#,
	.loc 1 4097 0
	movq	-56(%rbp), %rax	# x, tmp381
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movq	-56(%rbp), %rdx	# x, tmp382
	movq	8(%rdx), %rdx	# x_16->fld[0].rtx, D.22178
	leaq	8(%rdx), %rcx	#, D.22179
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.22178,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	testl	%eax, %eax	# D.22176
	jne	.L691	#,
.L690:
	.loc 1 4099 0
	movq	-56(%rbp), %rax	# x, tmp383
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _193->code, D.22177
	cmpw	$61, %ax	#, D.22177
	jne	.L692	#,
	.loc 1 4100 0
	movq	-56(%rbp), %rax	# x, tmp384
	leaq	8(%rax), %rcx	#, D.22179
	movq	-112(%rbp), %rax	# object, tmp385
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp385,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	testl	%eax, %eax	# D.22176
	je	.L692	#,
.L691:
	.loc 1 4101 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L692:
	.loc 1 4103 0
	movq	-56(%rbp), %rax	# x, tmp386
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movq	%rax, %rdi	# D.22178,
	call	copy_rtx	#
	movq	-56(%rbp), %rdx	# x, tmp387
	movq	%rax, 8(%rdx)	# D.22178, x_16->fld[0].rtx
	.loc 1 4104 0
	movq	-56(%rbp), %rax	# x, tmp391
	addq	$8, %rax	#, tmp390
	movq	%rax, -104(%rbp)	# tmp390, loc
	.loc 1 4105 0
	jmp	.L642	#
.L652:
	.loc 1 4110 0
	leaq	-72(%rbp), %rdx	#, tmp392
	movq	-56(%rbp), %rax	# x, tmp393
	movq	%rdx, %rsi	# tmp392,
	movq	%rax, %rdi	# tmp393,
	call	instantiate_new_reg	#
	movq	%rax, -48(%rbp)	# tmp394, new
	cmpq	$0, -48(%rbp)	#, new
	je	.L693	#,
	.loc 1 4112 0
	movq	-72(%rbp), %rdx	# offset, offset.251
	movq	-48(%rbp), %rax	# new, tmp395
	movq	%rdx, %rsi	# offset.251,
	movq	%rax, %rdi	# tmp395,
	call	plus_constant_wide	#
	movq	%rax, -40(%rbp)	# tmp396, temp
	.loc 1 4113 0
	movq	-40(%rbp), %rdx	# temp, tmp397
	movq	-104(%rbp), %rsi	# loc, tmp398
	movq	-112(%rbp), %rax	# object, tmp399
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp399,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	jne	.L693	#,
	.loc 1 4115 0
	cmpl	$0, -116(%rbp)	#, extra_insns
	jne	.L694	#,
	.loc 1 4116 0
	movl	$0, %eax	#, D.22176
	jmp	.L705	#
.L694:
	.loc 1 4118 0
	call	start_sequence	#
	.loc 1 4119 0
	movq	-40(%rbp), %rax	# temp, tmp400
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp400,
	call	force_operand	#
	movq	%rax, -40(%rbp)	# tmp401, temp
	.loc 1 4120 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp402, seq
	.loc 1 4121 0
	call	end_sequence	#
	.loc 1 4123 0
	movq	-112(%rbp), %rdx	# object, tmp403
	movq	-24(%rbp), %rax	# seq, tmp404
	movq	%rdx, %rsi	# tmp403,
	movq	%rax, %rdi	# tmp404,
	call	emit_insns_before	#
	.loc 1 4124 0
	movq	-40(%rbp), %rdx	# temp, tmp405
	movq	-104(%rbp), %rsi	# loc, tmp406
	movq	-112(%rbp), %rax	# object, tmp407
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp407,
	call	validate_change	#
	testl	%eax, %eax	# D.22176
	jne	.L693	#,
	.loc 1 4125 0
	movq	-112(%rbp), %rdx	# object, tmp408
	movq	-40(%rbp), %rcx	# temp, tmp409
	movq	-56(%rbp), %rax	# x, tmp410
	movq	%rcx, %rsi	# tmp409,
	movq	%rax, %rdi	# tmp410,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22176
	jne	.L693	#,
	.loc 1 4126 0
	movl	$__FUNCTION__.14472, %edx	#,
	movl	$4126, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L693:
	.loc 1 4130 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L654:
	.loc 1 4133 0
	movq	-56(%rbp), %rax	# x, tmp411
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _211->code, D.22177
	cmpw	$61, %ax	#, D.22177
	jne	.L695	#,
	.loc 1 4134 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L695:
	.loc 1 4136 0
	movq	-56(%rbp), %rax	# x, tmp412
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	movzwl	(%rax), %eax	# _214->code, D.22177
	cmpw	$66, %ax	#, D.22177
	jne	.L696	#,
	.loc 1 4141 0
	movq	-56(%rbp), %rax	# x, tmp413
	movq	8(%rax), %rax	# x_16->fld[0].rtx, D.22178
	addq	$8, %rax	#, D.22179
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	.loc 1 4142 0
	movl	$1, %eax	#, D.22176
	jmp	.L705	#
.L696:
	.loc 1 4144 0
	jmp	.L697	#
.L706:
	.loc 1 4147 0
	nop
.L697:
	.loc 1 4151 0
	movl	-76(%rbp), %eax	# code, code.252
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp415
	movq	%rax, -32(%rbp)	# tmp415, fmt
	.loc 1 4152 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L698	#
.L704:
	.loc 1 4153 0
	movq	-32(%rbp), %rax	# fmt, tmp416
	movzbl	(%rax), %eax	# *fmt_7, D.22181
	cmpb	$101, %al	#, D.22181
	jne	.L699	#,
	.loc 1 4155 0
	movl	-84(%rbp), %eax	# i, tmp418
	cltq
	leaq	0(,%rax,8), %rdx	#, tmp419
	movq	-56(%rbp), %rax	# x, tmp421
	addq	%rdx, %rax	# tmp419, tmp420
	leaq	8(%rax), %rcx	#, D.22179
	movl	-116(%rbp), %edx	# extra_insns, tmp422
	movq	-112(%rbp), %rax	# object, tmp423
	movq	%rax, %rsi	# tmp423,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	testl	%eax, %eax	# D.22176
	jne	.L700	#,
	.loc 1 4156 0
	movl	$0, %eax	#, D.22176
	jmp	.L705	#
.L699:
	.loc 1 4158 0
	movq	-32(%rbp), %rax	# fmt, tmp424
	movzbl	(%rax), %eax	# *fmt_7, D.22181
	cmpb	$69, %al	#, D.22181
	jne	.L700	#,
	.loc 1 4159 0
	movl	$0, -80(%rbp)	#, j
	jmp	.L701	#
.L703:
	.loc 1 4160 0
	movq	-56(%rbp), %rax	# x, tmp425
	movl	-84(%rbp), %edx	# i, tmp427
	movslq	%edx, %rdx	# tmp427, tmp426
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_5].rtvec, D.22182
	movl	-80(%rbp), %edx	# j, tmp429
	movslq	%edx, %rdx	# tmp429, tmp428
	salq	$3, %rdx	#, tmp430
	addq	%rdx, %rax	# tmp430, tmp431
	leaq	8(%rax), %rcx	#, D.22179
	movl	-116(%rbp), %edx	# extra_insns, tmp432
	movq	-112(%rbp), %rax	# object, tmp433
	movq	%rax, %rsi	# tmp433,
	movq	%rcx, %rdi	# D.22179,
	call	instantiate_virtual_regs_1	#
	testl	%eax, %eax	# D.22176
	jne	.L702	#,
	.loc 1 4162 0
	movl	$0, %eax	#, D.22176
	jmp	.L705	#
.L702:
	.loc 1 4159 0
	addl	$1, -80(%rbp)	#, j
.L701:
	.loc 1 4159 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# x, tmp434
	movl	-84(%rbp), %edx	# i, tmp436
	movslq	%edx, %rdx	# tmp436, tmp435
	movq	8(%rax,%rdx,8), %rax	# x_16->fld[i_5].rtvec, D.22182
	movl	(%rax), %eax	# _231->num_elem, D.22176
	cmpl	-80(%rbp), %eax	# j, D.22176
	jg	.L703	#,
.L700:
	.loc 1 4152 0 is_stmt 1
	addl	$1, -84(%rbp)	#, i
	addq	$1, -32(%rbp)	#, fmt
.L698:
	.loc 1 4152 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# code, code.253
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.22180
	movzbl	%al, %eax	# D.22180, D.22176
	cmpl	-84(%rbp), %eax	# i, D.22176
	jg	.L704	#,
	.loc 1 4164 0 is_stmt 1
	movl	$1, %eax	#, D.22176
.L705:
	.loc 1 4165 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	instantiate_virtual_regs_1, .-instantiate_virtual_regs_1
	.type	delete_handlers, @function
delete_handlers:
.LFB60:
	.loc 1 4173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 4175 0
	call	get_insns	#
	movq	%rax, -32(%rbp)	# tmp82, insn
	jmp	.L708	#
.L723:
	.loc 1 4181 0
	movq	-32(%rbp), %rax	# insn, tmp83
	movzwl	(%rax), %eax	# insn_1->code, D.22183
	cmpw	$36, %ax	#, D.22183
	jne	.L709	#,
.LBB62:
	.loc 1 4185 0
	movq	-32(%rbp), %rax	# insn, tmp84
	movzbl	3(%rax), %edx	# insn_1->in_struct, tmp87
	andl	$-17, %edx	#, tmp88
	movb	%dl, 3(%rax)	# tmp88, insn_1->in_struct
	.loc 1 4189 0
	movq	cfun(%rip), %rax	# cfun, cfun.254
	movq	160(%rax), %rax	# cfun.254_9->x_nonlocal_labels, tmp89
	movq	%rax, -24(%rbp)	# tmp89, t
	movq	$0, -16(%rbp)	#, last_t
	jmp	.L710	#
.L715:
	.loc 1 4191 0
	movq	-24(%rbp), %rax	# t, tmp90
	movq	32(%rax), %rax	# t_2->list.value, D.22184
	movq	144(%rax), %rax	# _12->decl.rtl, D.22185
	testq	%rax, %rax	# D.22185
	je	.L711	#,
	.loc 1 4191 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t, tmp91
	movq	32(%rax), %rax	# t_2->list.value, D.22184
	movq	144(%rax), %rax	# _14->decl.rtl, iftmp.255
	jmp	.L712	#
.L711:
	.loc 1 4191 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp92
	movq	32(%rax), %rax	# t_2->list.value, D.22184
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22184,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# t, tmp93
	movq	32(%rax), %rax	# t_2->list.value, D.22184
	movq	144(%rax), %rax	# _17->decl.rtl, iftmp.255
.L712:
	.loc 1 4191 0 discriminator 3
	cmpq	-32(%rbp), %rax	# insn, iftmp.255
	jne	.L713	#,
	.loc 1 4192 0 is_stmt 1
	jmp	.L714	#
.L713:
	.loc 1 4190 0
	movq	-24(%rbp), %rax	# t, tmp94
	movq	%rax, -16(%rbp)	# tmp94, last_t
	movq	-24(%rbp), %rax	# t, tmp95
	movq	(%rax), %rax	# t_2->common.chain, tmp96
	movq	%rax, -24(%rbp)	# tmp96, t
.L710:
	.loc 1 4189 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L715	#,
.L714:
	.loc 1 4193 0
	cmpq	$0, -24(%rbp)	#, t
	je	.L709	#,
	.loc 1 4195 0
	cmpq	$0, -16(%rbp)	#, last_t
	jne	.L716	#,
	.loc 1 4196 0
	movq	cfun(%rip), %rax	# cfun, cfun.256
	movq	cfun(%rip), %rdx	# cfun, cfun.257
	movq	160(%rdx), %rdx	# cfun.257_22->x_nonlocal_labels, D.22184
	movq	(%rdx), %rdx	# _23->common.chain, D.22184
	movq	%rdx, 160(%rax)	# D.22184, cfun.256_21->x_nonlocal_labels
	jmp	.L709	#
.L716:
	.loc 1 4198 0
	movq	-24(%rbp), %rax	# t, tmp97
	movq	(%rax), %rdx	# t_2->common.chain, D.22184
	movq	-16(%rbp), %rax	# last_t, tmp98
	movq	%rdx, (%rax)	# D.22184, last_t_3->common.chain
.L709:
.LBE62:
	.loc 1 4201 0
	movq	-32(%rbp), %rax	# insn, tmp99
	movzwl	(%rax), %eax	# insn_1->code, D.22183
	cmpw	$32, %ax	#, D.22183
	jne	.L717	#,
.LBB63:
	.loc 1 4203 0
	movl	$0, -36(%rbp)	#, can_delete
	.loc 1 4205 0
	movq	cfun(%rip), %rax	# cfun, cfun.258
	movq	168(%rax), %rax	# cfun.258_28->x_nonlocal_goto_handler_slots, tmp100
	movq	%rax, -8(%rbp)	# tmp100, t
	jmp	.L718	#
.L721:
	.loc 1 4206 0
	movq	-32(%rbp), %rax	# insn, tmp101
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.22185
	movq	-8(%rbp), %rax	# t, tmp102
	movq	%rdx, %rsi	# D.22185,
	movq	%rax, %rdi	# tmp102,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22186
	je	.L719	#,
	.loc 1 4208 0
	movl	$1, -36(%rbp)	#, can_delete
	.loc 1 4209 0
	jmp	.L720	#
.L719:
	.loc 1 4205 0
	movq	-8(%rbp), %rax	# t, tmp103
	movq	16(%rax), %rax	# t_5->fld[1].rtx, tmp104
	movq	%rax, -8(%rbp)	# tmp104, t
.L718:
	.loc 1 4205 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, t
	jne	.L721	#,
.L720:
	.loc 1 4211 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, can_delete
	jne	.L722	#,
	.loc 1 4212 0
	movq	cfun(%rip), %rax	# cfun, cfun.259
	movq	184(%rax), %rax	# cfun.259_34->x_nonlocal_goto_stack_level, D.22185
	testq	%rax, %rax	# D.22185
	je	.L717	#,
	.loc 1 4213 0
	movq	-32(%rbp), %rax	# insn, tmp105
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.22185
	movq	cfun(%rip), %rax	# cfun, cfun.260
	movq	184(%rax), %rax	# cfun.260_37->x_nonlocal_goto_stack_level, D.22185
	movq	%rdx, %rsi	# D.22185,
	movq	%rax, %rdi	# D.22185,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22186
	je	.L717	#,
.L722:
	.loc 1 4215 0
	movq	-32(%rbp), %rax	# insn, tmp106
	movq	%rax, %rdi	# tmp106,
	call	delete_related_insns	#
.L717:
.LBE63:
	.loc 1 4175 0
	movq	-32(%rbp), %rax	# insn, tmp107
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp108
	movq	%rax, -32(%rbp)	# tmp108, insn
.L708:
	.loc 1 4175 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L723	#,
	.loc 1 4218 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	delete_handlers, .-delete_handlers
	.globl	max_parm_reg_num
	.type	max_parm_reg_num, @function
max_parm_reg_num:
.LFB61:
	.loc 1 4222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4223 0
	movq	cfun(%rip), %rax	# cfun, cfun.261
	movl	304(%rax), %eax	# cfun.261_1->x_max_parm_reg, D.22187
	.loc 1 4224 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	max_parm_reg_num, .-max_parm_reg_num
	.globl	get_first_nonparm_insn
	.type	get_first_nonparm_insn, @function
get_first_nonparm_insn:
.LFB62:
	.loc 1 4230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4231 0
	movq	cfun(%rip), %rax	# cfun, cfun.262
	movq	296(%rax), %rax	# cfun.262_2->x_last_parm_insn, D.22190
	testq	%rax, %rax	# D.22190
	je	.L727	#,
	.loc 1 4232 0
	movq	cfun(%rip), %rax	# cfun, cfun.263
	movq	296(%rax), %rax	# cfun.263_4->x_last_parm_insn, D.22190
	movq	24(%rax), %rax	# _5->fld[2].rtx, D.22189
	jmp	.L728	#
.L727:
	.loc 1 4233 0
	call	get_insns	#
.L728:
	.loc 1 4234 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	get_first_nonparm_insn, .-get_first_nonparm_insn
	.globl	get_first_block_beg
	.type	get_first_block_beg, @function
get_first_block_beg:
.LFB63:
	.loc 1 4241 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4243 0
	call	get_first_nonparm_insn	#
	movq	%rax, -8(%rbp)	# tmp63, insn
	.loc 1 4245 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rax, -16(%rbp)	# tmp64, searcher
	jmp	.L730	#
.L733:
	.loc 1 4246 0
	movq	-16(%rbp), %rax	# searcher, tmp65
	movzwl	(%rax), %eax	# searcher_1->code, D.22191
	cmpw	$37, %ax	#, D.22191
	jne	.L731	#,
	.loc 1 4247 0
	movq	-16(%rbp), %rax	# searcher, tmp66
	movl	40(%rax), %eax	# searcher_1->fld[4].rtint, D.22192
	cmpl	$-98, %eax	#, D.22192
	jne	.L731	#,
	.loc 1 4248 0
	movq	-16(%rbp), %rax	# searcher, D.22193
	jmp	.L734	#
.L731:
	.loc 1 4245 0
	movq	-16(%rbp), %rax	# searcher, tmp67
	movq	24(%rax), %rax	# searcher_1->fld[2].rtx, tmp68
	movq	%rax, -16(%rbp)	# tmp68, searcher
.L730:
	.loc 1 4245 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, searcher
	jne	.L733	#,
	.loc 1 4250 0 is_stmt 1
	movl	$__FUNCTION__.14564, %edx	#,
	movl	$4250, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L734:
	.loc 1 4252 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	get_first_block_beg, .-get_first_block_beg
	.globl	aggregate_value_p
	.type	aggregate_value_p, @function
aggregate_value_p:
.LFB64:
	.loc 1 4262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# exp, exp
	.loc 1 4266 0
	movq	-40(%rbp), %rax	# exp, tmp111
	movzbl	16(%rax), %eax	# exp_12(D)->common.code, D.22195
	movzbl	%al, %eax	# D.22195, D.22194
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.22196
	cmpb	$116, %al	#, D.22196
	je	.L736	#,
	.loc 1 4266 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp113
	movq	8(%rax), %rax	# exp_12(D)->common.type, iftmp.264
	jmp	.L737	#
.L736:
	.loc 1 4266 0 discriminator 2
	movq	-40(%rbp), %rax	# exp, iftmp.264
.L737:
	.loc 1 4266 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.264, type
	.loc 1 4268 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# type, tmp114
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$5, %al	#, D.22195
	jne	.L738	#,
	.loc 1 4269 0
	movl	$0, %eax	#, D.22194
	jmp	.L739	#
.L738:
	.loc 1 4270 0
	movq	-16(%rbp), %rax	# type, tmp115
	movq	%rax, %rdi	# tmp115,
	call	ix86_return_in_memory	#
	testl	%eax, %eax	# D.22194
	je	.L740	#,
	.loc 1 4271 0
	movl	$1, %eax	#, D.22194
	jmp	.L739	#
.L740:
	.loc 1 4274 0
	movq	-16(%rbp), %rax	# type, tmp116
	movzbl	17(%rax), %eax	# *type_18, D.22195
	andl	$4, %eax	#, D.22195
	testb	%al, %al	# D.22195
	je	.L741	#,
	.loc 1 4275 0
	movl	$1, %eax	#, D.22194
	jmp	.L739	#
.L741:
	.loc 1 4276 0
	movl	flag_pcc_struct_return(%rip), %eax	# flag_pcc_struct_return, flag_pcc_struct_return.265
	testl	%eax, %eax	# flag_pcc_struct_return.265
	je	.L742	#,
	.loc 1 4276 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# type, tmp117
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$18, %al	#, D.22195
	je	.L743	#,
	movq	-16(%rbp), %rax	# type, tmp118
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$20, %al	#, D.22195
	je	.L743	#,
	movq	-16(%rbp), %rax	# type, tmp119
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$21, %al	#, D.22195
	je	.L743	#,
	movq	-16(%rbp), %rax	# type, tmp120
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$22, %al	#, D.22195
	je	.L743	#,
	movq	-16(%rbp), %rax	# type, tmp121
	movzbl	16(%rax), %eax	# type_18->common.code, D.22195
	cmpb	$19, %al	#, D.22195
	jne	.L742	#,
.L743:
	.loc 1 4277 0 is_stmt 1
	movl	$1, %eax	#, D.22194
	jmp	.L739	#
.L742:
	.loc 1 4280 0
	movq	-16(%rbp), %rax	# type, tmp122
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	hard_function_value	#
	movq	%rax, -8(%rbp)	# tmp123, reg
	.loc 1 4284 0
	movq	-8(%rbp), %rax	# reg, tmp124
	movzwl	(%rax), %eax	# reg_33->code, D.22197
	cmpw	$61, %ax	#, D.22197
	je	.L744	#,
	.loc 1 4285 0
	movl	$0, %eax	#, D.22194
	jmp	.L739	#
.L744:
	.loc 1 4287 0
	movq	-8(%rbp), %rax	# reg, tmp125
	movl	8(%rax), %eax	# reg_33->fld[0].rtuint, D.22198
	movl	%eax, -24(%rbp)	# D.22198, regno
	.loc 1 4288 0
	cmpl	$7, -24(%rbp)	#, regno
	jle	.L745	#,
	.loc 1 4288 0 is_stmt 0 discriminator 1
	cmpl	$15, -24(%rbp)	#, regno
	jle	.L746	#,
.L745:
	.loc 1 4288 0 discriminator 2
	cmpl	$20, -24(%rbp)	#, regno
	jle	.L747	#,
	.loc 1 4288 0 discriminator 1
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L746	#,
.L747:
	.loc 1 4288 0 discriminator 2
	cmpl	$44, -24(%rbp)	#, regno
	jle	.L748	#,
	.loc 1 4288 0 discriminator 1
	cmpl	$52, -24(%rbp)	#, regno
	jle	.L746	#,
.L748:
	.loc 1 4288 0 discriminator 2
	cmpl	$28, -24(%rbp)	#, regno
	jle	.L749	#,
	.loc 1 4288 0 discriminator 1
	cmpl	$36, -24(%rbp)	#, regno
	jg	.L749	#,
.L746:
	movq	-16(%rbp), %rax	# type, tmp126
	movzbl	61(%rax), %eax	# *type_18, tmp129
	shrb	%al	# D.22199
	movzbl	%al, %eax	# D.22199, D.22194
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22200
	cmpl	$5, %eax	#, D.22200
	je	.L750	#,
	.loc 1 4288 0 discriminator 2
	movq	-16(%rbp), %rax	# type, tmp131
	movzbl	61(%rax), %eax	# *type_18, tmp134
	shrb	%al	# D.22199
	movzbl	%al, %eax	# D.22199, D.22194
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22200
	cmpl	$6, %eax	#, D.22200
	jne	.L751	#,
.L750:
	.loc 1 4288 0 discriminator 1
	movl	$2, %eax	#, iftmp.267
	jmp	.L752	#
.L751:
	movl	$1, %eax	#, iftmp.267
.L752:
	.loc 1 4288 0 discriminator 3
	jmp	.L753	#
.L749:
	.loc 1 4288 0 discriminator 2
	movq	-16(%rbp), %rax	# type, tmp136
	movzbl	61(%rax), %eax	# *type_18, D.22195
	andl	$-2, %eax	#, D.22195
	cmpb	$36, %al	#, D.22195
	jne	.L754	#,
	.loc 1 4288 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.270
	andl	$33554432, %eax	#, D.22194
	testl	%eax, %eax	# D.22194
	je	.L755	#,
	movl	$2, %eax	#, iftmp.269
	jmp	.L753	#
.L755:
	.loc 1 4288 0 discriminator 2
	movl	$3, %eax	#, iftmp.269
	jmp	.L753	#
.L754:
	movq	-16(%rbp), %rax	# type, tmp137
	movzbl	61(%rax), %eax	# *type_18, D.22195
	andl	$-2, %eax	#, D.22195
	cmpb	$48, %al	#, D.22195
	jne	.L758	#,
	.loc 1 4288 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.273
	andl	$33554432, %eax	#, D.22194
	testl	%eax, %eax	# D.22194
	je	.L759	#,
	movl	$4, %eax	#, iftmp.272
	jmp	.L753	#
.L759:
	.loc 1 4288 0 discriminator 2
	movl	$6, %eax	#, iftmp.272
	jmp	.L753	#
.L758:
	movq	-16(%rbp), %rax	# type, tmp138
	movzbl	61(%rax), %eax	# *type_18, tmp141
	shrb	%al	# D.22199
	movzbl	%al, %eax	# D.22199, D.22194
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22195
	movzbl	%al, %edx	# D.22195, D.22194
	movl	target_flags(%rip), %eax	# target_flags, target_flags.275
	andl	$33554432, %eax	#, D.22194
	testl	%eax, %eax	# D.22194
	je	.L762	#,
	.loc 1 4288 0 discriminator 1
	movl	$8, %eax	#, iftmp.274
	jmp	.L763	#
.L762:
	.loc 1 4288 0 discriminator 2
	movl	$4, %eax	#, iftmp.274
.L763:
	.loc 1 4288 0 discriminator 3
	addl	%edx, %eax	# D.22194, D.22194
	subl	$1, %eax	#, D.22194
	movl	target_flags(%rip), %edx	# target_flags, target_flags.277
	andl	$33554432, %edx	#, D.22194
	testl	%edx, %edx	# D.22194
	je	.L764	#,
	.loc 1 4288 0 discriminator 1
	movl	$8, %ecx	#, iftmp.276
	jmp	.L765	#
.L764:
	.loc 1 4288 0 discriminator 2
	movl	$4, %ecx	#, iftmp.276
.L765:
	.loc 1 4288 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.276
.L753:
	movl	%eax, -20(%rbp)	# iftmp.266, nregs
	.loc 1 4289 0 is_stmt 1 discriminator 3
	movl	$0, -28(%rbp)	#, i
	jmp	.L766	#
.L768:
	.loc 1 4290 0
	movl	-28(%rbp), %eax	# i, tmp145
	movl	-24(%rbp), %edx	# regno, tmp146
	addl	%edx, %eax	# tmp146, D.22194
	cltq
	movzbl	call_used_regs(%rax), %eax	# call_used_regs, D.22196
	testb	%al, %al	# D.22196
	jne	.L767	#,
	.loc 1 4291 0
	movl	$1, %eax	#, D.22194
	jmp	.L739	#
.L767:
	.loc 1 4289 0
	addl	$1, -28(%rbp)	#, i
.L766:
	.loc 1 4289 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp148
	cmpl	-20(%rbp), %eax	# nregs, tmp148
	jl	.L768	#,
	.loc 1 4292 0 is_stmt 1
	movl	$0, %eax	#, D.22194
.L739:
	.loc 1 4293 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	aggregate_value_p, .-aggregate_value_p
	.section	.rodata
.LC2:
	.string	"__builtin_va_alist"
	.text
	.globl	assign_parms
	.type	assign_parms, @function
assign_parms:
.LFB65:
	.loc 1 4302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$464, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -456(%rbp)	# fndecl, fndecl
	.loc 1 4304 0
	movq	$0, -336(%rbp)	#, entry_parm
	.loc 1 4305 0
	movq	$0, -328(%rbp)	#, stack_parm
	.loc 1 4313 0
	movq	-456(%rbp), %rax	# fndecl, tmp589
	movq	8(%rax), %rax	# fndecl_94(D)->common.type, tmp590
	movq	%rax, -248(%rbp)	# tmp590, fntype
	.loc 1 4314 0
	movq	-456(%rbp), %rax	# fndecl, tmp591
	movq	88(%rax), %rax	# fndecl_94(D)->decl.arguments, tmp592
	movq	%rax, -320(%rbp)	# tmp592, fnargs
	.loc 1 4319 0
	movq	$0, -304(%rbp)	#, function_result_decl
	.loc 1 4321 0
	movl	$0, -428(%rbp)	#, varargs_setup
	.loc 1 4323 0
	movq	$0, -296(%rbp)	#, conversion_insns
	.loc 1 4330 0
	movq	cfun(%rip), %rax	# cfun, cfun.279
	movzbl	426(%rax), %eax	# *cfun.279_100, D.22201
	andl	$1, %eax	#, D.22201
	.loc 1 4334 0
	testb	%al, %al	# D.22201
	je	.L770	#,
	.loc 1 4331 0
	cmpq	$0, -320(%rbp)	#, fnargs
	je	.L770	#,
	.loc 1 4332 0
	movq	-320(%rbp), %rax	# fnargs, tmp593
	movq	%rax, %rdi	# tmp593,
	call	tree_last	#
	movq	%rax, -344(%rbp)	# tmp594, parm
	cmpq	$0, -344(%rbp)	#, parm
	je	.L770	#,
	.loc 1 4333 0
	movq	-344(%rbp), %rax	# parm, tmp595
	movq	72(%rax), %rax	# parm_103->decl.name, D.22202
	testq	%rax, %rax	# D.22202
	je	.L770	#,
	.loc 1 4334 0
	movq	-344(%rbp), %rax	# parm, tmp596
	movq	72(%rax), %rax	# parm_103->decl.name, D.22202
	movq	32(%rax), %rax	# _105->identifier.id.str, D.22203
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.22203,
	call	strcmp	#
	testl	%eax, %eax	# D.22204
	jne	.L770	#,
	.loc 1 4334 0 is_stmt 0 discriminator 2
	movl	$1, %eax	#, iftmp.278
	jmp	.L771	#
.L770:
	.loc 1 4334 0 discriminator 1
	movl	$0, %eax	#, iftmp.278
.L771:
	.loc 1 4329 0 is_stmt 1
	movl	%eax, -396(%rbp)	# iftmp.278, hide_last_arg
	.loc 1 4341 0
	movq	-248(%rbp), %rax	# fntype, tmp597
	movq	24(%rax), %rax	# fntype_95->type.values, D.22202
	.loc 1 4342 0
	testq	%rax, %rax	# D.22202
	je	.L772	#,
	.loc 1 4342 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# fntype, tmp598
	movq	24(%rax), %rax	# fntype_95->type.values, D.22202
	movq	%rax, %rdi	# D.22202,
	call	tree_last	#
	movq	32(%rax), %rdx	# _113->list.value, D.22202
	.loc 1 4343 0 is_stmt 1 discriminator 1
	movq	global_trees+216(%rip), %rax	# global_trees, D.22202
	.loc 1 4342 0 discriminator 1
	cmpq	%rax, %rdx	# D.22202, D.22202
	je	.L772	#,
	.loc 1 4342 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.280
	jmp	.L773	#
.L772:
	.loc 1 4342 0 discriminator 2
	movl	$0, %eax	#, iftmp.280
.L773:
	.loc 1 4340 0 is_stmt 1
	movl	%eax, -392(%rbp)	# iftmp.280, stdarg
	.loc 1 4345 0
	movq	cfun(%rip), %rax	# cfun, cfun.281
	movl	-392(%rbp), %edx	# stdarg, tmp599
	andl	$1, %edx	#, D.22205
	andl	$1, %edx	#, tmp601
	leal	(%rdx,%rdx), %ecx	#, tmp602
	movzbl	426(%rax), %edx	#, tmp603
	andl	$-3, %edx	#, tmp604
	orl	%ecx, %edx	# tmp602, tmp605
	movb	%dl, 426(%rax)	# tmp605,
	.loc 1 4355 0
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.22206
	.loc 1 4354 0
	testb	%al, %al	# D.22206
	jne	.L774	#,
	.loc 1 4357 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22207
	movq	%rax, %rdi	# D.22207,
	call	copy_to_reg	#
	movq	%rax, -312(%rbp)	# tmp606, internal_arg_pointer
	jmp	.L775	#
.L774:
	.loc 1 4359 0
	movq	global_rtl+48(%rip), %rax	# global_rtl, tmp607
	movq	%rax, -312(%rbp)	# tmp607, internal_arg_pointer
.L775:
	.loc 1 4360 0
	movq	cfun(%rip), %rax	# cfun, cfun.282
	movq	-312(%rbp), %rdx	# internal_arg_pointer, tmp608
	movq	%rdx, 128(%rax)	# tmp608, cfun.282_126->internal_arg_pointer
	.loc 1 4362 0
	movq	$0, -112(%rbp)	#, stack_args_size.constant
	.loc 1 4363 0
	movq	$0, -104(%rbp)	#, stack_args_size.var
	.loc 1 4366 0
	movq	-456(%rbp), %rax	# fndecl, tmp609
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	%rax, %rdi	# D.22202,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.22204
	je	.L776	#,
	.loc 1 4367 0
	movq	cfun(%rip), %rax	# cfun, cfun.283
	movzbl	424(%rax), %eax	# *cfun.283_129, D.22201
	andl	$2, %eax	#, D.22201
	testb	%al, %al	# D.22201
	jne	.L776	#,
	.loc 1 4368 0
	movq	struct_value_incoming_rtx(%rip), %rax	# struct_value_incoming_rtx, struct_value_incoming_rtx.284
	testq	%rax, %rax	# struct_value_incoming_rtx.284
	jne	.L776	#,
.LBB64:
	.loc 1 4370 0
	movq	-248(%rbp), %rax	# fntype, tmp610
	movq	8(%rax), %rax	# fntype_95->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	build_pointer_type	#
	movq	%rax, -240(%rbp)	# tmp611, type
	.loc 1 4372 0
	movq	-240(%rbp), %rax	# type, tmp612
	movq	%rax, %rdx	# tmp612,
	movl	$0, %esi	#,
	movl	$35, %edi	#,
	call	build_decl	#
	movq	%rax, -304(%rbp)	# tmp613, function_result_decl
	.loc 1 4374 0
	movq	-304(%rbp), %rax	# function_result_decl, tmp614
	movq	-240(%rbp), %rdx	# type, tmp615
	movq	%rdx, 104(%rax)	# tmp615, function_result_decl_135->decl.initial
	.loc 1 4375 0
	movq	-304(%rbp), %rax	# function_result_decl, tmp616
	movq	-320(%rbp), %rdx	# fnargs, tmp617
	movq	%rdx, (%rax)	# tmp617, function_result_decl_135->common.chain
	.loc 1 4376 0
	movq	-304(%rbp), %rax	# function_result_decl, tmp618
	movq	%rax, -320(%rbp)	# tmp618, fnargs
.L776:
.LBE64:
	.loc 1 4379 0
	movq	cfun(%rip), %rax	# cfun, cfun.285
	movl	$58, 304(%rax)	#, cfun.285_137->x_max_parm_reg
	.loc 1 4380 0
	movq	cfun(%rip), %rbx	# cfun, cfun.286
	movq	cfun(%rip), %rax	# cfun, cfun.287
	movl	304(%rax), %eax	# cfun.287_139->x_max_parm_reg, D.22208
	movl	%eax, %eax	# D.22208, D.22209
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.22209,
	call	xcalloc	#
	movq	%rax, 312(%rbx)	# D.22210, cfun.286_138->x_parm_reg_stack_loc
	.loc 1 4385 0
	movq	-248(%rbp), %rcx	# fntype, tmp620
	leaq	-48(%rbp), %rax	#, tmp621
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp620,
	movq	%rax, %rdi	# tmp621,
	call	init_cumulative_args	#
	.loc 1 4390 0
	movq	cfun(%rip), %rax	# cfun, cfun.288
	movl	$0, 72(%rax)	#, cfun.288_143->pretend_args_size
	.loc 1 4392 0
	movq	-320(%rbp), %rax	# fnargs, tmp622
	movq	%rax, -344(%rbp)	# tmp622, parm
	jmp	.L777	#
.L926:
.LBB65:
	.loc 1 4396 0
	movl	$0, -424(%rbp)	#, passed_pointer
	.loc 1 4397 0
	movl	$0, -420(%rbp)	#, did_conversion
	.loc 1 4398 0
	movq	-344(%rbp), %rax	# parm, tmp623
	movq	104(%rax), %rax	# parm_1->decl.initial, tmp624
	movq	%rax, -288(%rbp)	# tmp624, passed_type
	.loc 1 4399 0
	movq	-344(%rbp), %rax	# parm, tmp625
	movq	8(%rax), %rax	# parm_1->common.type, tmp626
	movq	%rax, -280(%rbp)	# tmp626, nominal_type
	.loc 1 4401 0
	movl	$0, -416(%rbp)	#, last_named
	.loc 1 4405 0
	cmpl	$0, -392(%rbp)	#, stdarg
	jne	.L778	#,
	.loc 1 4405 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.289
	movzbl	426(%rax), %eax	# *cfun.289_150, D.22201
	andl	$1, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L779	#,
.L778:
.LBB66:
	.loc 1 4409 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp627
	movq	(%rax), %rax	# parm_1->common.chain, tmp628
	movq	%rax, -272(%rbp)	# tmp628, tem
	jmp	.L780	#
.L783:
	.loc 1 4410 0
	movq	-272(%rbp), %rax	# tem, tmp629
	movq	72(%rax), %rax	# tem_44->decl.name, D.22202
	testq	%rax, %rax	# D.22202
	je	.L781	#,
	.loc 1 4411 0
	jmp	.L782	#
.L781:
	.loc 1 4409 0
	movq	-272(%rbp), %rax	# tem, tmp630
	movq	(%rax), %rax	# tem_44->common.chain, tmp631
	movq	%rax, -272(%rbp)	# tmp631, tem
.L780:
	.loc 1 4409 0 is_stmt 0 discriminator 1
	cmpq	$0, -272(%rbp)	#, tem
	jne	.L783	#,
.L782:
	.loc 1 4413 0 is_stmt 1
	cmpq	$0, -272(%rbp)	#, tem
	jne	.L779	#,
	.loc 1 4414 0
	movl	$1, -416(%rbp)	#, last_named
.L779:
.LBE66:
	.loc 1 4419 0
	cmpl	$0, -416(%rbp)	#, last_named
	sete	%al	#, D.22211
	movzbl	%al, %eax	# D.22211, tmp632
	movl	%eax, -388(%rbp)	# tmp632, named_arg
	.loc 1 4421 0
	movq	-344(%rbp), %rax	# parm, tmp633
	movq	8(%rax), %rdx	# parm_1->common.type, D.22202
	movq	global_trees(%rip), %rax	# global_trees, D.22202
	cmpq	%rax, %rdx	# D.22202, D.22202
	je	.L784	#,
	.loc 1 4424 0
	movq	-344(%rbp), %rax	# parm, tmp634
	movzbl	16(%rax), %eax	# parm_1->common.code, D.22201
	cmpb	$35, %al	#, D.22201
	jne	.L784	#,
	.loc 1 4425 0
	cmpq	$0, -288(%rbp)	#, passed_type
	jne	.L785	#,
.L784:
	.loc 1 4427 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22207
	movq	%rax, %rsi	# D.22207,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	-344(%rbp), %rdx	# parm, tmp635
	movq	%rax, 144(%rdx)	# D.22207, parm_1->decl.rtl
	.loc 1 4428 0
	movq	-344(%rbp), %rax	# parm, tmp636
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L786	#,
	.loc 1 4428 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp637
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.290
	jmp	.L787	#
.L786:
	.loc 1 4428 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp638
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp638,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp639
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.290
.L787:
	.loc 1 4428 0 discriminator 3
	movq	-344(%rbp), %rdx	# parm, tmp640
	movq	%rax, 160(%rdx)	# iftmp.290, parm_1->decl.u2.r
	.loc 1 4429 0 is_stmt 1 discriminator 3
	movq	-344(%rbp), %rax	# parm, tmp641
	movzbl	18(%rax), %edx	#, tmp644
	orl	$1, %edx	#, tmp645
	movb	%dl, 18(%rax)	# tmp645,
	.loc 1 4430 0 discriminator 3
	jmp	.L925	#
.L785:
	.loc 1 4435 0
	cmpl	$0, -396(%rbp)	#, hide_last_arg
	je	.L789	#,
	.loc 1 4435 0 is_stmt 0 discriminator 1
	cmpl	$0, -416(%rbp)	#, last_named
	je	.L789	#,
	.loc 1 4436 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.291
	movq	-48(%rbp), %rdx	# args_so_far, tmp646
	movq	%rdx, 88(%rax)	# tmp646, cfun.291_162->args_info
	movq	-40(%rbp), %rdx	# args_so_far, tmp647
	movq	%rdx, 96(%rax)	# tmp647, cfun.291_162->args_info
	movq	-32(%rbp), %rdx	# args_so_far, tmp648
	movq	%rdx, 104(%rax)	# tmp648, cfun.291_162->args_info
	movl	-24(%rbp), %edx	# args_so_far, tmp649
	movl	%edx, 112(%rax)	# tmp649, cfun.291_162->args_info
.L789:
	.loc 1 4440 0
	movq	-288(%rbp), %rax	# passed_type, tmp650
	movzbl	61(%rax), %eax	# *passed_type_147, tmp653
	shrb	%al	# D.22212
	movzbl	%al, %eax	# D.22212, tmp654
	movl	%eax, -436(%rbp)	# tmp654, passed_mode
	.loc 1 4441 0
	movq	-280(%rbp), %rax	# nominal_type, tmp655
	movzbl	61(%rax), %eax	# *nominal_type_148, tmp658
	shrb	%al	# D.22212
	movzbl	%al, %eax	# D.22212, tmp659
	movl	%eax, -432(%rbp)	# tmp659, nominal_mode
	.loc 1 4445 0
	cmpl	$0, -432(%rbp)	#, nominal_mode
	jne	.L790	#,
	.loc 1 4447 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.22207
	movq	-344(%rbp), %rax	# parm, tmp660
	movq	%rdx, 144(%rax)	# D.22207, parm_1->decl.rtl
	.loc 1 4448 0
	movq	-344(%rbp), %rax	# parm, tmp661
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L791	#,
	.loc 1 4448 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp662
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.292
	jmp	.L792	#
.L791:
	.loc 1 4448 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp663
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp663,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp664
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.292
.L792:
	.loc 1 4448 0 discriminator 3
	movq	-344(%rbp), %rdx	# parm, tmp665
	movq	%rax, 160(%rdx)	# iftmp.292, parm_1->decl.u2.r
	.loc 1 4449 0 is_stmt 1 discriminator 3
	jmp	.L925	#
.L790:
	.loc 1 4455 0
	movq	-344(%rbp), %rax	# parm, tmp666
	movzbl	50(%rax), %eax	# *parm_1, D.22201
	andl	$8, %eax	#, D.22201
	testb	%al, %al	# D.22201
	jne	.L793	#,
	.loc 1 4456 0
	movq	-288(%rbp), %rax	# passed_type, tmp667
	movzbl	16(%rax), %eax	# passed_type_147->common.code, D.22201
	cmpb	$21, %al	#, D.22201
	jne	.L794	#,
	.loc 1 4457 0
	movq	-288(%rbp), %rax	# passed_type, tmp668
	movzbl	62(%rax), %eax	# *passed_type_147, D.22201
	andl	$8, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L794	#,
.L793:
	.loc 1 4458 0
	movq	-288(%rbp), %rax	# passed_type, tmp669
	movq	24(%rax), %rax	# passed_type_147->type.values, D.22202
	movq	8(%rax), %rax	# _176->common.type, tmp670
	movq	%rax, -288(%rbp)	# tmp670, passed_type
.L794:
	.loc 1 4465 0
	movq	-288(%rbp), %rax	# passed_type, tmp671
	movq	32(%rax), %rax	# passed_type_40->type.size, D.22202
	movzbl	16(%rax), %eax	# _178->common.code, D.22201
	cmpb	$25, %al	#, D.22201
	je	.L795	#,
	.loc 1 4466 0
	movq	-288(%rbp), %rax	# passed_type, tmp672
	movq	32(%rax), %rax	# passed_type_40->type.size, D.22202
	movq	%rax, %rdi	# D.22202,
	call	contains_placeholder_p	#
	testl	%eax, %eax	# D.22204
	jne	.L796	#,
.L795:
	.loc 1 4467 0
	movq	-288(%rbp), %rax	# passed_type, tmp673
	movzbl	17(%rax), %eax	# *passed_type_40, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L797	#,
.L796:
	.loc 1 4474 0
	movq	-288(%rbp), %rax	# passed_type, tmp674
	movq	%rax, %rdi	# tmp674,
	call	build_pointer_type	#
	movq	%rax, -280(%rbp)	# tmp675, nominal_type
	movq	-280(%rbp), %rax	# nominal_type, tmp676
	movq	%rax, -288(%rbp)	# tmp676, passed_type
	.loc 1 4475 0
	movl	$1, -424(%rbp)	#, passed_pointer
	.loc 1 4476 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.294
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L798	#,
	.loc 1 4476 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.293
	jmp	.L799	#
.L798:
	.loc 1 4476 0 discriminator 2
	movl	$4, %eax	#, iftmp.293
.L799:
	.loc 1 4476 0 discriminator 3
	movl	%eax, -432(%rbp)	# iftmp.293, nominal_mode
	movl	-432(%rbp), %eax	# nominal_mode, tmp677
	movl	%eax, -436(%rbp)	# tmp677, passed_mode
.L797:
	.loc 1 4479 0 is_stmt 1
	movl	-436(%rbp), %eax	# passed_mode, tmp678
	movl	%eax, -440(%rbp)	# tmp678, promoted_mode
	.loc 1 4493 0
	movl	-388(%rbp), %ecx	# named_arg, tmp679
	movq	-288(%rbp), %rdx	# passed_type, tmp680
	movl	-440(%rbp), %esi	# promoted_mode, tmp681
	leaq	-48(%rbp), %rax	#, tmp682
	movq	%rax, %rdi	# tmp682,
	call	function_arg	#
	movq	%rax, -336(%rbp)	# tmp683, entry_parm
	.loc 1 4497 0
	cmpq	$0, -336(%rbp)	#, entry_parm
	jne	.L800	#,
	.loc 1 4498 0
	movl	-436(%rbp), %eax	# passed_mode, tmp684
	movl	%eax, -440(%rbp)	# tmp684, promoted_mode
.L800:
	.loc 1 4511 0
	cmpl	$0, -416(%rbp)	#, last_named
	je	.L801	#,
	.loc 1 4511 0 is_stmt 0 discriminator 1
	cmpl	$0, -428(%rbp)	#, varargs_setup
	jne	.L801	#,
	.loc 1 4513 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.295
	leaq	72(%rax), %rcx	#, D.22213
	movq	-288(%rbp), %rdx	# passed_type, tmp685
	movl	-440(%rbp), %esi	# promoted_mode, tmp686
	leaq	-48(%rbp), %rax	#, tmp687
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp687,
	call	ix86_setup_incoming_varargs	#
	.loc 1 4515 0
	movl	$1, -428(%rbp)	#, varargs_setup
.L801:
	.loc 1 4532 0
	movl	$1, -384(%rbp)	#, pretend_named
	.loc 1 4542 0
	movl	-384(%rbp), %ecx	# pretend_named, tmp688
	movq	-288(%rbp), %rdx	# passed_type, tmp689
	movl	-440(%rbp), %esi	# promoted_mode, tmp690
	leaq	-48(%rbp), %rax	#, tmp691
	movq	%rax, %rdi	# tmp691,
	call	function_arg	#
	.loc 1 4533 0
	testq	%rax, %rax	# D.22207
	setne	%al	#, D.22211
	movzbl	%al, %edx	# D.22211, D.22204
	leaq	-80(%rbp), %r9	#, tmp692
	leaq	-112(%rbp), %r8	#, tmp693
	movq	-456(%rbp), %rcx	# fndecl, tmp694
	movq	-288(%rbp), %rsi	# passed_type, tmp695
	movl	-440(%rbp), %eax	# promoted_mode, tmp696
	leaq	-96(%rbp), %rdi	#, tmp697
	movq	%rdi, 8(%rsp)	# tmp697,
	leaq	-64(%rbp), %rdi	#, tmp698
	movq	%rdi, (%rsp)	# tmp698,
	movl	%eax, %edi	# tmp696,
	call	locate_and_pad_parm	#
.LBB67:
	.loc 1 4551 0
	movq	-72(%rbp), %rax	# stack_offset.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L802	#,
	.loc 1 4551 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# stack_offset.constant, D.22214
	movq	%rax, %rsi	# D.22214,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L803	#
.L802:
	.loc 1 4551 0 discriminator 2
	movq	-72(%rbp), %rax	# stack_offset.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L804	#,
	.loc 1 4551 0 discriminator 1
	movq	-80(%rbp), %rax	# stack_offset.constant, D.22214
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22214,
	call	size_int_wide	#
	jmp	.L805	#
.L804:
	.loc 1 4551 0 discriminator 2
	movq	-80(%rbp), %rax	# stack_offset.constant, D.22214
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22214,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.22202
	movq	-72(%rbp), %rdx	# stack_offset.var, D.22202
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22202
	movq	%rdx, %rsi	# D.22202,
	movq	%rax, %rdi	# D.22202,
	call	convert	#
	movq	%rbx, %rdx	# D.22202,
	movq	%rax, %rsi	# D.22202,
	movl	$59, %edi	#,
	call	size_binop	#
.L805:
	.loc 1 4551 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.297,
	call	expand_expr	#
.L803:
	movq	%rax, -232(%rbp)	# iftmp.296, offset_rtx
	.loc 1 4553 0 is_stmt 1 discriminator 3
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.22207
	cmpq	-232(%rbp), %rax	# offset_rtx, D.22207
	jne	.L806	#,
	.loc 1 4554 0
	movq	-312(%rbp), %rdx	# internal_arg_pointer, tmp699
	movl	-440(%rbp), %eax	# promoted_mode, tmp700
	movq	%rdx, %rsi	# tmp699,
	movl	%eax, %edi	# tmp700,
	call	gen_rtx_MEM	#
	movq	%rax, -328(%rbp)	# tmp701, stack_parm
	jmp	.L807	#
.L806:
	.loc 1 4557 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.299
	andl	$33554432, %eax	#, D.22204
	.loc 1 4556 0
	testl	%eax, %eax	# D.22204
	je	.L808	#,
	.loc 1 4556 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.298
	jmp	.L809	#
.L808:
	.loc 1 4556 0 discriminator 2
	movl	$4, %eax	#, iftmp.298
.L809:
	.loc 1 4556 0 discriminator 3
	movq	-232(%rbp), %rcx	# offset_rtx, tmp702
	movq	-312(%rbp), %rdx	# internal_arg_pointer, tmp703
	movl	%eax, %esi	# iftmp.298,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.22207
	movl	-440(%rbp), %eax	# promoted_mode, tmp704
	movq	%rdx, %rsi	# D.22207,
	movl	%eax, %edi	# tmp704,
	call	gen_rtx_MEM	#
	movq	%rax, -328(%rbp)	# tmp705, stack_parm
.L807:
	.loc 1 4561 0 is_stmt 1
	movq	-344(%rbp), %rcx	# parm, tmp706
	movq	-328(%rbp), %rax	# stack_parm, tmp707
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp706,
	movq	%rax, %rdi	# tmp707,
	call	set_mem_attributes	#
.LBE67:
	.loc 1 4566 0
	cmpq	$0, -288(%rbp)	#, passed_type
	je	.L810	#,
	.loc 1 4566 0 is_stmt 0 discriminator 1
	movq	-288(%rbp), %rax	# passed_type, tmp708
	movq	32(%rax), %rax	# passed_type_41->type.size, D.22202
	movzbl	16(%rax), %eax	# _225->common.code, D.22201
	cmpb	$25, %al	#, D.22201
	jne	.L811	#,
	movq	-288(%rbp), %rax	# passed_type, tmp709
	movzbl	17(%rax), %eax	# *passed_type_41, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	jne	.L811	#,
	cmpl	$6, -440(%rbp)	#, promoted_mode
	je	.L811	#,
	cmpl	$51, -440(%rbp)	#, promoted_mode
	jne	.L810	#,
	cmpq	$0, -288(%rbp)	#, passed_type
	je	.L813	#,
	.loc 1 4566 0 discriminator 4
	movq	-288(%rbp), %rax	# passed_type, tmp710
	movq	32(%rax), %rax	# passed_type_41->type.size, D.22202
	movzbl	16(%rax), %eax	# _229->common.code, D.22201
	cmpb	$25, %al	#, D.22201
	jne	.L813	#,
	.loc 1 4566 0 discriminator 1
	movq	-288(%rbp), %rax	# passed_type, tmp711
	movq	%rax, %rdi	# tmp711,
	call	int_size_in_bytes	#
	movl	target_flags(%rip), %edx	# target_flags, target_flags.302
	andl	$33554432, %edx	#, D.22204
	testl	%edx, %edx	# D.22204
	je	.L814	#,
	movl	$8, %ebx	#, iftmp.301
	jmp	.L815	#
.L814:
	.loc 1 4566 0 discriminator 2
	movl	$4, %ebx	#, iftmp.301
.L815:
	.loc 1 4566 0 discriminator 3
	cqto
	idivq	%rbx	# iftmp.301
	movq	%rdx, %rcx	# tmp712, tmp712
	movq	%rcx, %rax	# tmp712, D.22214
	testq	%rax, %rax	# D.22214
	je	.L810	#,
.L813:
	jmp	.L810	#
.L811:
	.loc 1 4567 0 is_stmt 1
	movq	$0, -336(%rbp)	#, entry_parm
.L810:
	.loc 1 4578 0
	cmpq	$0, -336(%rbp)	#, entry_parm
	je	.L817	#,
.LBB68:
	.loc 1 4580 0
	movl	$0, -380(%rbp)	#, nregs
	.loc 1 4583 0
	cmpl	$0, -380(%rbp)	#, nregs
	jle	.L817	#,
	.loc 1 4585 0
	movq	cfun(%rip), %rcx	# cfun, cfun.303
	.loc 1 4586 0
	movl	-380(%rbp), %eax	# nregs, tmp714
	leal	1(%rax), %edx	#, D.22204
	movl	target_flags(%rip), %eax	# target_flags, target_flags.305
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L818	#,
	.loc 1 4586 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.304
	jmp	.L819	#
.L818:
	.loc 1 4586 0 discriminator 2
	movl	$4, %eax	#, iftmp.304
.L819:
	.loc 1 4586 0 discriminator 3
	imull	%edx, %eax	# D.22204, D.22204
	subl	$1, %eax	#, D.22204
	.loc 1 4587 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.307
	andl	$33554432, %edx	#, D.22204
	testl	%edx, %edx	# D.22204
	je	.L820	#,
	.loc 1 4587 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.306
	jmp	.L821	#
.L820:
	.loc 1 4587 0 discriminator 2
	movl	$4, %ebx	#, iftmp.306
.L821:
	.loc 1 4587 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.306
	movl	%eax, %edx	# tmp715, D.22204
	.loc 1 4588 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.309
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L822	#,
	.loc 1 4588 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.308
	jmp	.L823	#
.L822:
	.loc 1 4588 0 discriminator 2
	movl	$4, %eax	#, iftmp.308
.L823:
	.loc 1 4588 0 discriminator 3
	imull	%edx, %eax	# D.22204, D.22204
	.loc 1 4586 0 is_stmt 1 discriminator 3
	movl	%eax, 72(%rcx)	# D.22204, cfun.303_241->pretend_args_size
	.loc 1 4592 0 discriminator 3
	movq	-336(%rbp), %rax	# entry_parm, tmp717
	movzwl	(%rax), %eax	# entry_parm_2->code, D.22215
	cmpw	$39, %ax	#, D.22215
	jne	.L824	#,
	.loc 1 4594 0
	movq	-344(%rbp), %rax	# parm, tmp718
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	int_size_in_bytes	#
	.loc 1 4593 0
	movl	%eax, %ebx	# D.22214, D.22204
	movq	-328(%rbp), %rax	# stack_parm, tmp719
	movq	%rax, %rdi	# tmp719,
	call	validize_mem	#
	movq	-336(%rbp), %rcx	# entry_parm, tmp720
	movl	%ebx, %edx	# D.22204,
	movq	%rcx, %rsi	# tmp720,
	movq	%rax, %rdi	# D.22207,
	call	emit_group_store	#
	jmp	.L825	#
.L824:
	.loc 1 4599 0
	movq	-344(%rbp), %rax	# parm, tmp721
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	int_size_in_bytes	#
	.loc 1 4597 0
	movl	%eax, %ebx	# D.22214, D.22204
	movq	-328(%rbp), %rax	# stack_parm, tmp722
	movq	%rax, %rdi	# tmp722,
	call	validize_mem	#
	movq	%rax, %rsi	#, D.22207
	movq	-336(%rbp), %rax	# entry_parm, tmp723
	movl	8(%rax), %eax	# entry_parm_2->fld[0].rtuint, D.22208
	movl	-380(%rbp), %edx	# nregs, tmp724
	movl	%ebx, %ecx	# D.22204,
	movl	%eax, %edi	# D.22204,
	call	move_block_from_reg	#
.L825:
	.loc 1 4601 0
	movq	-328(%rbp), %rax	# stack_parm, tmp725
	movq	%rax, -336(%rbp)	# tmp725, entry_parm
.L817:
.LBE68:
	.loc 1 4608 0
	cmpq	$0, -336(%rbp)	#, entry_parm
	jne	.L826	#,
	.loc 1 4609 0
	movq	-328(%rbp), %rax	# stack_parm, tmp726
	movq	%rax, -336(%rbp)	# tmp726, entry_parm
.L826:
	.loc 1 4612 0
	movq	-344(%rbp), %rax	# parm, tmp727
	movq	-336(%rbp), %rdx	# entry_parm, tmp728
	movq	%rdx, 160(%rax)	# tmp728, parm_1->decl.u2.r
	.loc 1 4618 0
	movq	-336(%rbp), %rax	# entry_parm, tmp729
	cmpq	-328(%rbp), %rax	# stack_parm, tmp729
	je	.L827	#,
	.loc 1 4619 0
	movq	-336(%rbp), %rax	# entry_parm, tmp730
	movzwl	(%rax), %eax	# entry_parm_4->code, D.22215
	.loc 1 4631 0
	cmpw	$39, %ax	#, D.22215
	jne	.L828	#,
	.loc 1 4620 0
	movq	-336(%rbp), %rax	# entry_parm, tmp731
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movq	8(%rax), %rax	# _273->elem, D.22207
	movq	8(%rax), %rax	# _274->fld[0].rtx, D.22207
	testq	%rax, %rax	# D.22207
	jne	.L828	#,
.L827:
	.loc 1 4635 0
	movq	-112(%rbp), %rdx	# stack_args_size.constant, D.22214
	movq	-64(%rbp), %rax	# arg_size.constant, D.22214
	addq	%rdx, %rax	# D.22214, D.22214
	movq	%rax, -112(%rbp)	# D.22214, stack_args_size.constant
	.loc 1 4636 0
	movq	-56(%rbp), %rax	# arg_size.var, D.22202
	testq	%rax, %rax	# D.22202
	je	.L829	#,
.LBB69:
	.loc 1 4637 0
	movq	-56(%rbp), %rax	# arg_size.var, tmp732
	movq	%rax, -224(%rbp)	# tmp732, inc
	movq	-224(%rbp), %rax	# inc, tmp733
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp733,
	call	host_integerp	#
	testl	%eax, %eax	# D.22204
	je	.L830	#,
	.loc 1 4637 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rbx	# stack_args_size.constant, D.22214
	movq	-224(%rbp), %rax	# inc, tmp734
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp734,
	call	tree_low_cst	#
	addq	%rbx, %rax	# D.22214, D.22214
	movq	%rax, -112(%rbp)	# D.22214, stack_args_size.constant
	jmp	.L829	#
.L830:
	.loc 1 4637 0 discriminator 2
	movq	-104(%rbp), %rax	# stack_args_size.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L831	#,
	.loc 1 4637 0 discriminator 1
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22202
	movq	-224(%rbp), %rdx	# inc, tmp735
	movq	%rdx, %rsi	# tmp735,
	movq	%rax, %rdi	# D.22202,
	call	convert	#
	movq	%rax, -104(%rbp)	# D.22202, stack_args_size.var
	jmp	.L829	#
.L831:
	.loc 1 4637 0 discriminator 2
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22202
	movq	-224(%rbp), %rdx	# inc, tmp736
	movq	%rdx, %rsi	# tmp736,
	movq	%rax, %rdi	# D.22202,
	call	convert	#
	movq	%rax, %rdx	#, D.22202
	movq	-104(%rbp), %rax	# stack_args_size.var, D.22202
	movq	%rax, %rsi	# D.22202,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	%rax, -104(%rbp)	# D.22202, stack_args_size.var
.LBE69:
	.loc 1 4636 0 is_stmt 1 discriminator 2
	jmp	.L832	#
.L829:
	.loc 1 4636 0 is_stmt 0 discriminator 1
	jmp	.L832	#
.L828:
	.loc 1 4641 0 is_stmt 1
	movq	$0, -328(%rbp)	#, stack_parm
.L832:
	.loc 1 4645 0
	movl	-388(%rbp), %ecx	# named_arg, tmp737
	movq	-288(%rbp), %rdx	# passed_type, tmp738
	movl	-440(%rbp), %esi	# promoted_mode, tmp739
	leaq	-48(%rbp), %rax	#, tmp740
	movq	%rax, %rdi	# tmp740,
	call	function_arg_advance	#
.LBB70:
	.loc 1 4653 0
	movq	-288(%rbp), %rdx	# passed_type, tmp741
	movl	-440(%rbp), %eax	# promoted_mode, tmp742
	movq	%rdx, %rsi	# tmp741,
	movl	%eax, %edi	# tmp742,
	call	ix86_function_arg_boundary	#
	.loc 1 4652 0
	movl	%eax, -376(%rbp)	# D.22204, thisparm_boundary
	.loc 1 4655 0
	movl	-432(%rbp), %eax	# nominal_mode, tmp743
	movl	%eax, %edi	# tmp743,
	call	get_mode_alignment	#
	cmpl	-376(%rbp), %eax	# thisparm_boundary, D.22208
	jbe	.L833	#,
	.loc 1 4656 0
	movq	$0, -328(%rbp)	#, stack_parm
.L833:
.LBE70:
	.loc 1 4661 0
	cmpq	$0, -336(%rbp)	#, entry_parm
	je	.L834	#,
	.loc 1 4662 0
	cmpl	$51, -432(%rbp)	#, nominal_mode
	je	.L834	#,
	.loc 1 4662 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# nominal_mode, tmp744
	cmpl	-436(%rbp), %eax	# passed_mode, tmp744
	je	.L834	#,
	.loc 1 4663 0 is_stmt 1
	movq	$0, -328(%rbp)	#, stack_parm
.L834:
	.loc 1 4668 0
	movq	-336(%rbp), %rax	# entry_parm, tmp745
	movzwl	(%rax), %eax	# entry_parm_4->code, D.22215
	cmpw	$39, %ax	#, D.22215
	jne	.L835	#,
	.loc 1 4669 0
	cmpl	$51, -432(%rbp)	#, nominal_mode
	je	.L835	#,
	.loc 1 4669 0 is_stmt 0 discriminator 1
	cmpl	$51, -436(%rbp)	#, passed_mode
	je	.L835	#,
.LBB71:
	.loc 1 4671 0 is_stmt 1
	movq	-336(%rbp), %rax	# entry_parm, tmp746
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	(%rax), %eax	# _299->num_elem, tmp747
	movl	%eax, -372(%rbp)	# tmp747, len
	.loc 1 4673 0
	movl	$0, -412(%rbp)	#, i
	jmp	.L836	#
.L838:
	.loc 1 4674 0
	movq	-336(%rbp), %rax	# entry_parm, tmp748
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	-412(%rbp), %edx	# i, tmp750
	movslq	%edx, %rdx	# tmp750, tmp749
	movq	8(%rax,%rdx,8), %rax	# _302->elem, D.22207
	movq	8(%rax), %rax	# _303->fld[0].rtx, D.22207
	testq	%rax, %rax	# D.22207
	je	.L837	#,
	.loc 1 4675 0
	movq	-336(%rbp), %rax	# entry_parm, tmp751
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	-412(%rbp), %edx	# i, tmp753
	movslq	%edx, %rdx	# tmp753, tmp752
	movq	8(%rax,%rdx,8), %rax	# _305->elem, D.22207
	movq	8(%rax), %rax	# _306->fld[0].rtx, D.22207
	movzwl	(%rax), %eax	# _307->code, D.22215
	cmpw	$61, %ax	#, D.22215
	jne	.L837	#,
	.loc 1 4676 0
	movq	-336(%rbp), %rax	# entry_parm, tmp754
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	-412(%rbp), %edx	# i, tmp756
	movslq	%edx, %rdx	# tmp756, tmp755
	movq	8(%rax,%rdx,8), %rax	# _309->elem, D.22207
	movq	8(%rax), %rax	# _310->fld[0].rtx, D.22207
	movzbl	2(%rax), %eax	# _311->mode, D.22201
	.loc 1 4677 0
	movzbl	%al, %eax	# D.22201, D.22208
	.loc 1 4676 0
	cmpl	-436(%rbp), %eax	# passed_mode, D.22208
	jne	.L837	#,
	.loc 1 4678 0
	movq	-336(%rbp), %rax	# entry_parm, tmp757
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	-412(%rbp), %edx	# i, tmp759
	movslq	%edx, %rdx	# tmp759, tmp758
	movq	8(%rax,%rdx,8), %rax	# _314->elem, D.22207
	movq	16(%rax), %rax	# _315->fld[1].rtx, D.22207
	movq	8(%rax), %rax	# _316->fld[0].rtwint, D.22214
	testq	%rax, %rax	# D.22214
	jne	.L837	#,
	.loc 1 4680 0
	movq	-336(%rbp), %rax	# entry_parm, tmp760
	movq	8(%rax), %rax	# entry_parm_4->fld[0].rtvec, D.22216
	movl	-412(%rbp), %edx	# i, tmp762
	movslq	%edx, %rdx	# tmp762, tmp761
	movq	8(%rax,%rdx,8), %rax	# _318->elem, D.22207
	movq	8(%rax), %rax	# _319->fld[0].rtx, tmp763
	movq	%rax, -336(%rbp)	# tmp763, entry_parm
	.loc 1 4681 0
	movq	-344(%rbp), %rax	# parm, tmp764
	movq	-336(%rbp), %rdx	# entry_parm, tmp765
	movq	%rdx, 160(%rax)	# tmp765, parm_1->decl.u2.r
	.loc 1 4682 0
	jmp	.L835	#
.L837:
	.loc 1 4673 0
	addl	$1, -412(%rbp)	#, i
.L836:
	.loc 1 4673 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# i, tmp766
	cmpl	-372(%rbp), %eax	# len, tmp766
	jl	.L838	#,
.L835:
.LBE71:
	.loc 1 4700 0 is_stmt 1
	cmpl	$51, -432(%rbp)	#, nominal_mode
	je	.L839	#,
	.loc 1 4700 0 is_stmt 0 discriminator 1
	movq	-336(%rbp), %rax	# entry_parm, tmp767
	movzwl	(%rax), %eax	# entry_parm_5->code, D.22215
	cmpw	$39, %ax	#, D.22215
	jne	.L840	#,
.L839:
	.loc 1 4705 0 is_stmt 1
	movq	-336(%rbp), %rax	# entry_parm, tmp768
	movzwl	(%rax), %eax	# entry_parm_5->code, D.22215
	cmpw	$61, %ax	#, D.22215
	je	.L841	#,
	.loc 1 4706 0
	movq	-336(%rbp), %rax	# entry_parm, tmp769
	movzwl	(%rax), %eax	# entry_parm_5->code, D.22215
	cmpw	$39, %ax	#, D.22215
	jne	.L842	#,
.L841:
.LBB72:
	.loc 1 4709 0
	movq	-344(%rbp), %rax	# parm, tmp770
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	int_size_in_bytes	#
	.loc 1 4708 0
	movl	%eax, %edx	# D.22214, D.22220
	.loc 1 4709 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.311
	andl	$33554432, %eax	#, D.22204
	.loc 1 4708 0
	testl	%eax, %eax	# D.22204
	je	.L843	#,
	.loc 1 4708 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.310
	jmp	.L844	#
.L843:
	.loc 1 4708 0 discriminator 2
	movl	$4, %eax	#, iftmp.310
.L844:
	.loc 1 4708 0 discriminator 3
	addl	%edx, %eax	# D.22220, D.22220
	subl	$1, %eax	#, D.22220
	movl	%eax, %edx	# D.22220, D.22204
	.loc 1 4709 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.313
	andl	$33554432, %eax	#, D.22204
	.loc 1 4708 0 discriminator 3
	testl	%eax, %eax	# D.22204
	je	.L845	#,
	.loc 1 4708 0 is_stmt 0 discriminator 4
	movl	$-8, %eax	#, iftmp.312
	jmp	.L846	#
.L845:
	.loc 1 4708 0 discriminator 5
	movl	$-4, %eax	#, iftmp.312
.L846:
	.loc 1 4708 0 discriminator 6
	andl	%edx, %eax	# D.22204, tmp771
	movl	%eax, -348(%rbp)	# tmp771, size_stored
	.loc 1 4720 0 is_stmt 1 discriminator 6
	cmpq	$0, -328(%rbp)	#, stack_parm
	jne	.L847	#,
	.loc 1 4723 0
	movl	-348(%rbp), %eax	# size_stored, tmp772
	movslq	%eax, %rcx	# tmp772, D.22214
	movq	-336(%rbp), %rax	# entry_parm, tmp773
	movzbl	2(%rax), %eax	# entry_parm_5->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.22214,
	movl	%eax, %edi	# D.22217,
	call	assign_stack_local	#
	movq	%rax, -328(%rbp)	# tmp774, stack_parm
	.loc 1 4725 0
	movq	-344(%rbp), %rcx	# parm, tmp775
	movq	-328(%rbp), %rax	# stack_parm, tmp776
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp775,
	movq	%rax, %rdi	# tmp776,
	call	set_mem_attributes	#
.L847:
	.loc 1 4733 0
	movq	-336(%rbp), %rax	# entry_parm, tmp777
	movzwl	(%rax), %eax	# entry_parm_5->code, D.22215
	cmpw	$39, %ax	#, D.22215
	jne	.L848	#,
	.loc 1 4735 0
	movq	-344(%rbp), %rax	# parm, tmp778
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	int_size_in_bytes	#
	.loc 1 4734 0
	movl	%eax, %ebx	# D.22214, D.22204
	movq	-328(%rbp), %rax	# stack_parm, tmp779
	movq	%rax, %rdi	# tmp779,
	call	validize_mem	#
	movq	-336(%rbp), %rcx	# entry_parm, tmp780
	movl	%ebx, %edx	# D.22204,
	movq	%rcx, %rsi	# tmp780,
	movq	%rax, %rdi	# D.22207,
	call	emit_group_store	#
	jmp	.L842	#
.L848:
	.loc 1 4740 0
	movq	-344(%rbp), %rax	# parm, tmp781
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	int_size_in_bytes	#
	.loc 1 4737 0
	movl	%eax, %r12d	# D.22214, D.22204
	.loc 1 4739 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.315
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L849	#,
	.loc 1 4739 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.314
	jmp	.L850	#
.L849:
	.loc 1 4739 0 discriminator 2
	movl	$4, %ebx	#, iftmp.314
.L850:
	.loc 1 4737 0 is_stmt 1
	movl	-348(%rbp), %eax	# size_stored, tmp784
	cltd
	idivl	%ebx	# iftmp.314
	movl	%eax, %ebx	# tmp782, D.22204
	movq	-328(%rbp), %rax	# stack_parm, tmp785
	movq	%rax, %rdi	# tmp785,
	call	validize_mem	#
	movq	%rax, %rsi	#, D.22207
	movq	-336(%rbp), %rax	# entry_parm, tmp786
	movl	8(%rax), %eax	# entry_parm_5->fld[0].rtuint, D.22208
	movl	%r12d, %ecx	# D.22204,
	movl	%ebx, %edx	# D.22204,
	movl	%eax, %edi	# D.22204,
	call	move_block_from_reg	#
.L842:
.LBE72:
	.loc 1 4742 0
	movq	-344(%rbp), %rax	# parm, tmp787
	movq	-328(%rbp), %rdx	# stack_parm, tmp788
	movq	%rdx, 144(%rax)	# tmp788, parm_1->decl.rtl
	jmp	.L851	#
.L840:
	.loc 1 4744 0
	movl	optimize(%rip), %eax	# optimize, optimize.316
	testl	%eax, %eax	# optimize.316
	jne	.L852	#,
	.loc 1 4745 0
	movq	-344(%rbp), %rax	# parm, tmp789
	movzbl	49(%rax), %eax	# *parm_1, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L853	#,
.L852:
	.loc 1 4746 0
	movq	-344(%rbp), %rax	# parm, tmp790
	movzbl	17(%rax), %eax	# *parm_1, D.22201
	andl	$1, %eax	#, D.22201
	testb	%al, %al	# D.22201
	jne	.L853	#,
	.loc 1 4749 0
	movl	flag_float_store(%rip), %eax	# flag_float_store, flag_float_store.317
	.loc 1 4744 0
	testl	%eax, %eax	# flag_float_store.317
	je	.L854	#,
	.loc 1 4750 0
	movq	-344(%rbp), %rax	# parm, tmp791
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	16(%rax), %eax	# _329->common.code, D.22201
	cmpb	$7, %al	#, D.22201
	jne	.L854	#,
.L853:
	.loc 1 4753 0
	cmpl	$0, -424(%rbp)	#, passed_pointer
	jne	.L854	#,
	.loc 1 4753 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp792
	cmpq	-304(%rbp), %rax	# function_result_decl, tmp792
	jne	.L855	#,
.L854:
.LBB73:
	.loc 1 4759 0 is_stmt 1
	movl	$0, -404(%rbp)	#, regnoi
	movl	$0, -400(%rbp)	#, regnor
	.loc 1 4761 0
	movq	-344(%rbp), %rax	# parm, tmp793
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	17(%rax), %eax	# *_356, tmp796
	shrb	$5, %al	#, D.22205
	andl	$1, %eax	#, D.22205
	movzbl	%al, %eax	# D.22205, unsignedp.318
	movl	%eax, -444(%rbp)	# unsignedp.318, unsignedp
	.loc 1 4764 0
	movq	-344(%rbp), %rax	# parm, tmp797
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	leaq	-444(%rbp), %rdx	#, tmp798
	movl	-432(%rbp), %esi	# nominal_mode, tmp799
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# D.22202,
	call	promote_mode	#
	movl	%eax, -368(%rbp)	# tmp800, promoted_nominal_mode
	.loc 1 4766 0
	movl	-368(%rbp), %eax	# promoted_nominal_mode, tmp801
	movl	%eax, %edi	# tmp801,
	call	gen_reg_rtx	#
	movq	%rax, -264(%rbp)	# tmp802, parmreg
	.loc 1 4767 0
	movq	-264(%rbp), %rax	# parmreg, tmp803
	movq	%rax, %rdi	# tmp803,
	call	mark_user_reg	#
	.loc 1 4771 0
	cmpl	$0, -424(%rbp)	#, passed_pointer
	je	.L856	#,
.LBB74:
	.loc 1 4773 0
	movq	-288(%rbp), %rax	# passed_type, tmp804
	movq	8(%rax), %rax	# passed_type_41->common.type, D.22202
	movzbl	61(%rax), %eax	# *_362, tmp807
	shrb	%al	# D.22212
	movzbl	%al, %eax	# D.22212, D.22217
	movq	-264(%rbp), %rdx	# parmreg, tmp808
	movq	%rdx, %rsi	# tmp808,
	movl	%eax, %edi	# D.22217,
	call	gen_rtx_MEM	#
	movq	%rax, -208(%rbp)	# tmp809, x
	.loc 1 4775 0
	movq	-344(%rbp), %rcx	# parm, tmp810
	movq	-208(%rbp), %rax	# x, tmp811
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp810,
	movq	%rax, %rdi	# tmp811,
	call	set_mem_attributes	#
	.loc 1 4776 0
	movq	-344(%rbp), %rax	# parm, tmp812
	movq	-208(%rbp), %rdx	# x, tmp813
	movq	%rdx, 144(%rax)	# tmp813, parm_1->decl.rtl
.LBE74:
	jmp	.L857	#
.L856:
	.loc 1 4780 0
	movq	-344(%rbp), %rax	# parm, tmp814
	movq	-264(%rbp), %rdx	# parmreg, tmp815
	movq	%rdx, 144(%rax)	# tmp815, parm_1->decl.rtl
	.loc 1 4781 0
	movq	-344(%rbp), %rax	# parm, tmp816
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L858	#,
	.loc 1 4781 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp817
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.319
	jmp	.L859	#
.L858:
	.loc 1 4781 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp818
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp818,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp819
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.319
.L859:
	.loc 1 4781 0 discriminator 3
	movq	-344(%rbp), %rdx	# parm, tmp820
	movq	%rdx, %rsi	# tmp820,
	movq	%rax, %rdi	# iftmp.319,
	call	maybe_set_unchanging	#
.L857:
	.loc 1 4785 0 is_stmt 1
	movl	-432(%rbp), %eax	# nominal_mode, tmp821
	cmpl	-436(%rbp), %eax	# passed_mode, tmp821
	jne	.L860	#,
	.loc 1 4786 0
	movl	-368(%rbp), %eax	# promoted_nominal_mode, tmp822
	cmpl	-440(%rbp), %eax	# promoted_mode, tmp822
	je	.L861	#,
.L860:
.LBB75:
	.loc 1 4808 0
	movq	-336(%rbp), %rax	# entry_parm, tmp823
	movzbl	2(%rax), %eax	# entry_parm_5->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	%eax, %edi	# D.22217,
	call	gen_reg_rtx	#
	movq	%rax, -200(%rbp)	# tmp824, tempreg
	.loc 1 4810 0
	movq	-336(%rbp), %rax	# entry_parm, tmp825
	movq	%rax, %rdi	# tmp825,
	call	validize_mem	#
	movq	%rax, %rdx	#, D.22207
	movq	-200(%rbp), %rax	# tempreg, tmp826
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# tmp826,
	call	emit_move_insn	#
	.loc 1 4812 0
	movq	-296(%rbp), %rax	# conversion_insns, tmp827
	movq	%rax, %rdi	# tmp827,
	call	push_to_sequence	#
	.loc 1 4813 0
	movl	-444(%rbp), %edx	# unsignedp, unsignedp.320
	movq	-200(%rbp), %rcx	# tempreg, tmp828
	movl	-432(%rbp), %eax	# nominal_mode, tmp829
	movq	%rcx, %rsi	# tmp828,
	movl	%eax, %edi	# tmp829,
	call	convert_to_mode	#
	movq	%rax, -200(%rbp)	# tmp830, tempreg
	.loc 1 4815 0
	movq	-200(%rbp), %rax	# tempreg, tmp831
	movzwl	(%rax), %eax	# tempreg_375->code, D.22215
	cmpw	$63, %ax	#, D.22215
	jne	.L862	#,
	.loc 1 4816 0
	movq	-200(%rbp), %rax	# tempreg, tmp832
	movzbl	2(%rax), %eax	# tempreg_375->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22208
	cmpl	-432(%rbp), %eax	# nominal_mode, D.22208
	jne	.L862	#,
	.loc 1 4817 0
	movq	-200(%rbp), %rax	# tempreg, tmp833
	movq	8(%rax), %rax	# tempreg_375->fld[0].rtx, D.22207
	movzwl	(%rax), %eax	# _379->code, D.22215
	cmpw	$61, %ax	#, D.22215
	jne	.L862	#,
	.loc 1 4818 0
	movl	-432(%rbp), %eax	# nominal_mode, tmp834
	cmpl	-436(%rbp), %eax	# passed_mode, tmp834
	jne	.L862	#,
	.loc 1 4819 0
	movq	-200(%rbp), %rax	# tempreg, tmp835
	movq	8(%rax), %rax	# tempreg_375->fld[0].rtx, D.22207
	movzbl	2(%rax), %edx	# _381->mode, D.22201
	movq	-336(%rbp), %rax	# entry_parm, tmp836
	movzbl	2(%rax), %eax	# entry_parm_5->mode, D.22201
	cmpb	%al, %dl	# D.22201, D.22201
	jne	.L862	#,
	.loc 1 4820 0
	movq	-200(%rbp), %rax	# tempreg, tmp837
	movzbl	2(%rax), %eax	# tempreg_375->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22204
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.22201
	.loc 1 4821 0
	movq	-336(%rbp), %rax	# entry_parm, tmp839
	movzbl	2(%rax), %eax	# entry_parm_5->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22204
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22201
	.loc 1 4820 0
	cmpb	%al, %dl	# D.22201, D.22201
	jae	.L862	#,
	.loc 1 4825 0
	movq	-200(%rbp), %rax	# tempreg, tmp841
	movzbl	3(%rax), %edx	# tempreg_375->in_struct, tmp844
	orl	$16, %edx	#, tmp845
	movb	%dl, 3(%rax)	# tmp845, tempreg_375->in_struct
	.loc 1 4826 0
	movl	-444(%rbp), %eax	# unsignedp, unsignedp.321
	andl	$1, %eax	#, D.22205
	movl	%eax, %edx	# D.22205, D.22205
	movq	-200(%rbp), %rax	# tempreg, tmp846
	andl	$1, %edx	#, tmp848
	leal	0(,%rdx,4), %ecx	#, tmp849
	movzbl	3(%rax), %edx	# tempreg_375->unchanging, tmp850
	andl	$-5, %edx	#, tmp851
	orl	%ecx, %edx	# tmp849, tmp852
	movb	%dl, 3(%rax)	# tmp852, tempreg_375->unchanging
.L862:
	.loc 1 4830 0
	movq	-344(%rbp), %rax	# parm, tmp853
	movzbl	18(%rax), %eax	# *parm_1, tmp856
	andl	$1, %eax	#, D.22205
	movzbl	%al, %eax	# D.22205, tmp857
	movl	%eax, -364(%rbp)	# tmp857, save_tree_used
	.loc 1 4831 0
	movq	-200(%rbp), %rdx	# tempreg, tmp858
	movq	-280(%rbp), %rax	# nominal_type, tmp859
	movq	%rdx, %rsi	# tmp858,
	movq	%rax, %rdi	# tmp859,
	call	make_tree	#
	movq	%rax, %rsi	#, D.22202
	movq	-344(%rbp), %rax	# parm, tmp860
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp860,
	call	expand_assignment	#
	.loc 1 4833 0
	movl	-364(%rbp), %eax	# save_tree_used, tmp861
	andl	$1, %eax	#, D.22205
	movl	%eax, %edx	# D.22205, D.22205
	movq	-344(%rbp), %rax	# parm, tmp862
	movl	%edx, %ecx	# D.22205, tmp864
	andl	$1, %ecx	#, tmp864
	movzbl	18(%rax), %edx	#, tmp865
	andl	$-2, %edx	#, tmp866
	orl	%ecx, %edx	# tmp864, tmp867
	movb	%dl, 18(%rax)	# tmp867,
	.loc 1 4834 0
	call	get_insns	#
	movq	%rax, -296(%rbp)	# tmp868, conversion_insns
	.loc 1 4835 0
	movl	$1, -420(%rbp)	#, did_conversion
	.loc 1 4836 0
	call	end_sequence	#
.LBE75:
	.loc 1 4787 0
	jmp	.L863	#
.L861:
	.loc 1 4839 0
	movq	-336(%rbp), %rax	# entry_parm, tmp869
	movq	%rax, %rdi	# tmp869,
	call	validize_mem	#
	movq	%rax, %rdx	#, D.22207
	movq	-264(%rbp), %rax	# parmreg, tmp870
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# tmp870,
	call	emit_move_insn	#
.L863:
	.loc 1 4843 0
	cmpl	$0, -424(%rbp)	#, passed_pointer
	je	.L864	#,
	.loc 1 4843 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp871
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	61(%rax), %eax	# *_400, D.22201
	andl	$-2, %eax	#, D.22201
	cmpb	$102, %al	#, D.22201
	je	.L864	#,
	.loc 1 4845 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp872
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	61(%rax), %eax	# *_403, tmp875
	shrb	%al	# D.22212
	movzbl	%al, %ebx	# D.22212, D.22208
	movq	-344(%rbp), %rax	# parm, tmp876
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L865	#,
	.loc 1 4845 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp877
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.322
	jmp	.L866	#
.L865:
	.loc 1 4845 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp878
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp878,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp879
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.322
.L866:
	.loc 1 4845 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.322_67->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22208
	cmpl	%eax, %ebx	# D.22208, D.22208
	jne	.L867	#,
	.loc 1 4846 0 is_stmt 1
	movl	optimize(%rip), %eax	# optimize, optimize.323
	testl	%eax, %eax	# optimize.323
	jne	.L868	#,
	.loc 1 4847 0
	movq	-344(%rbp), %rax	# parm, tmp880
	movzbl	49(%rax), %eax	# *parm_1, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L864	#,
.L868:
	.loc 1 4848 0
	movq	-344(%rbp), %rax	# parm, tmp881
	movzbl	17(%rax), %eax	# *parm_1, D.22201
	andl	$1, %eax	#, D.22201
	testb	%al, %al	# D.22201
	jne	.L864	#,
	.loc 1 4851 0
	movl	flag_float_store(%rip), %eax	# flag_float_store, flag_float_store.324
	.loc 1 4846 0
	testl	%eax, %eax	# flag_float_store.324
	je	.L867	#,
	.loc 1 4852 0
	movq	-344(%rbp), %rax	# parm, tmp882
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	16(%rax), %eax	# _417->common.code, D.22201
	cmpb	$7, %al	#, D.22201
	je	.L864	#,
.L867:
	.loc 1 4856 0
	movq	-344(%rbp), %rax	# parm, tmp883
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	61(%rax), %eax	# *_419, tmp886
	shrb	%al	# D.22212
	movzbl	%al, %eax	# D.22212, D.22217
	movl	%eax, %edi	# D.22217,
	call	gen_reg_rtx	#
	movq	%rax, -264(%rbp)	# tmp887, parmreg
	.loc 1 4857 0
	movq	-264(%rbp), %rax	# parmreg, tmp888
	movq	%rax, %rdi	# tmp888,
	call	mark_user_reg	#
	.loc 1 4858 0
	movq	-264(%rbp), %rax	# parmreg, tmp889
	movzbl	2(%rax), %ebx	# parmreg_422->mode, D.22201
	movq	-344(%rbp), %rax	# parm, tmp890
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L869	#,
	.loc 1 4858 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp891
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.325
	jmp	.L870	#
.L869:
	.loc 1 4858 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp892
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp892,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp893
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.325
.L870:
	.loc 1 4858 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.325_68->mode, D.22201
	cmpb	%al, %bl	# D.22201, D.22201
	je	.L871	#,
.LBB76:
	.loc 1 4860 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp894
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L872	#,
	.loc 1 4860 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp895
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.326
	jmp	.L873	#
.L872:
	.loc 1 4860 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp896
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp896,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp897
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.326
.L873:
	.loc 1 4860 0 discriminator 3
	movzbl	2(%rax), %eax	# iftmp.326_69->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	%eax, %edi	# D.22217,
	call	gen_reg_rtx	#
	movq	%rax, -192(%rbp)	# tmp898, tempreg
	.loc 1 4861 0 is_stmt 1 discriminator 3
	movq	-344(%rbp), %rax	# parm, tmp899
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	17(%rax), %eax	# *_434, tmp902
	shrb	$5, %al	#, D.22205
	andl	$1, %eax	#, D.22205
	movzbl	%al, %eax	# D.22205, tmp903
	movl	%eax, -360(%rbp)	# tmp903, unsigned_p
	.loc 1 4862 0 discriminator 3
	movq	-296(%rbp), %rax	# conversion_insns, tmp904
	movq	%rax, %rdi	# tmp904,
	call	push_to_sequence	#
	.loc 1 4863 0 discriminator 3
	movq	-344(%rbp), %rax	# parm, tmp905
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L874	#,
	.loc 1 4863 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp906
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.327
	jmp	.L875	#
.L874:
	.loc 1 4863 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp907
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp907,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp908
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.327
.L875:
	.loc 1 4863 0 discriminator 3
	movq	-192(%rbp), %rdx	# tempreg, tmp909
	movq	%rax, %rsi	# iftmp.327,
	movq	%rdx, %rdi	# tmp909,
	call	emit_move_insn	#
	.loc 1 4864 0 is_stmt 1 discriminator 3
	movq	-264(%rbp), %rax	# parmreg, tmp910
	movzbl	2(%rax), %eax	# parmreg_422->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	-360(%rbp), %edx	# unsigned_p, tmp911
	movq	-192(%rbp), %rcx	# tempreg, tmp912
	movq	%rcx, %rsi	# tmp912,
	movl	%eax, %edi	# D.22217,
	call	convert_to_mode	#
	movq	-344(%rbp), %rdx	# parm, tmp913
	movq	%rax, 144(%rdx)	# D.22207, parm_1->decl.rtl
	.loc 1 4868 0 discriminator 3
	movq	-344(%rbp), %rax	# parm, tmp914
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L876	#,
	.loc 1 4868 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp915
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.328
	jmp	.L877	#
.L876:
	.loc 1 4868 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp916
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp916,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp917
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.328
.L877:
	.loc 1 4868 0 discriminator 1
	movq	-264(%rbp), %rdx	# parmreg, tmp918
	movq	%rax, %rsi	# iftmp.328,
	movq	%rdx, %rdi	# tmp918,
	call	emit_move_insn	#
	.loc 1 4869 0 is_stmt 1 discriminator 1
	call	get_insns	#
	movq	%rax, -296(%rbp)	# tmp919, conversion_insns
	.loc 1 4870 0 discriminator 1
	movl	$1, -420(%rbp)	#, did_conversion
	.loc 1 4871 0 discriminator 1
	call	end_sequence	#
.LBE76:
	jmp	.L878	#
.L871:
	.loc 1 4874 0
	movq	-344(%rbp), %rax	# parm, tmp920
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L879	#,
	.loc 1 4874 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp921
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.329
	jmp	.L880	#
.L879:
	.loc 1 4874 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp922
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp922,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp923
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.329
.L880:
	.loc 1 4874 0 discriminator 3
	movq	-264(%rbp), %rdx	# parmreg, tmp924
	movq	%rax, %rsi	# iftmp.329,
	movq	%rdx, %rdi	# tmp924,
	call	emit_move_insn	#
.L878:
	.loc 1 4875 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp925
	movq	-264(%rbp), %rdx	# parmreg, tmp926
	movq	%rdx, 144(%rax)	# tmp926, parm_1->decl.rtl
	.loc 1 4878 0
	movq	$0, -328(%rbp)	#, stack_parm
.L864:
	.loc 1 4930 0
	movq	-264(%rbp), %rax	# parmreg, tmp927
	movzwl	(%rax), %eax	# parmreg_46->code, D.22215
	cmpw	$65, %ax	#, D.22215
	jne	.L881	#,
	.loc 1 4931 0
	movq	-264(%rbp), %rax	# parmreg, tmp928
	movq	16(%rax), %rax	# parmreg_46->fld[1].rtx, D.22207
	movl	8(%rax), %edx	# _453->fld[0].rtuint, D.22208
	movq	-264(%rbp), %rax	# parmreg, tmp929
	movq	8(%rax), %rax	# parmreg_46->fld[0].rtx, D.22207
	movl	8(%rax), %eax	# _455->fld[0].rtuint, D.22208
	cmpl	%eax, %edx	# D.22208, D.22208
	cmovae	%edx, %eax	# D.22208,, tmp930
	movl	%eax, -408(%rbp)	# tmp930, regno
	jmp	.L882	#
.L881:
	.loc 1 4933 0
	movq	-264(%rbp), %rax	# parmreg, tmp931
	movl	8(%rax), %eax	# parmreg_46->fld[0].rtuint, tmp932
	movl	%eax, -408(%rbp)	# tmp932, regno
.L882:
	.loc 1 4935 0
	movq	cfun(%rip), %rax	# cfun, cfun.330
	movl	304(%rax), %eax	# cfun.330_459->x_max_parm_reg, D.22208
	cmpl	-408(%rbp), %eax	# regno, D.22208
	ja	.L883	#,
.LBB77:
	.loc 1 4938 0
	movq	cfun(%rip), %rax	# cfun, cfun.331
	movl	304(%rax), %eax	# cfun.331_461->x_max_parm_reg, D.22208
	movl	%eax, -356(%rbp)	# D.22208, old_max_parm_reg
	.loc 1 4943 0
	movq	cfun(%rip), %rax	# cfun, cfun.332
	movl	-408(%rbp), %edx	# regno, tmp933
	addl	$1, %edx	#, D.22208
	movl	%edx, 304(%rax)	# D.22208, cfun.332_464->x_max_parm_reg
	.loc 1 4945 0
	movq	cfun(%rip), %rax	# cfun, cfun.333
	movl	304(%rax), %eax	# cfun.333_466->x_max_parm_reg, D.22208
	.loc 1 4944 0
	movl	%eax, %eax	# D.22208, D.22209
	leaq	0(,%rax,8), %rdx	#, D.22209
	movq	cfun(%rip), %rax	# cfun, cfun.334
	movq	312(%rax), %rax	# cfun.334_470->x_parm_reg_stack_loc, D.22218
	movq	%rdx, %rsi	# D.22209,
	movq	%rax, %rdi	# D.22218,
	call	xrealloc	#
	movq	%rax, -184(%rbp)	# tmp934, new
	.loc 1 4947 0
	movq	cfun(%rip), %rax	# cfun, cfun.335
	movl	304(%rax), %edx	# cfun.335_473->x_max_parm_reg, D.22208
	movl	-356(%rbp), %eax	# old_max_parm_reg, old_max_parm_reg.336
	subl	%eax, %edx	# old_max_parm_reg.336, D.22208
	movl	%edx, %eax	# D.22208, D.22208
	.loc 1 4946 0
	movl	%eax, %eax	# D.22208, D.22209
	leaq	0(,%rax,8), %rdx	#, D.22209
	movl	-356(%rbp), %eax	# old_max_parm_reg, tmp935
	cltq
	leaq	0(,%rax,8), %rcx	#, D.22209
	movq	-184(%rbp), %rax	# new, tmp936
	addq	%rcx, %rax	# D.22209, D.22210
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22210,
	call	memset	#
	.loc 1 4948 0
	movq	cfun(%rip), %rax	# cfun, cfun.337
	movq	-184(%rbp), %rdx	# new, tmp937
	movq	%rdx, 312(%rax)	# tmp937, cfun.337_482->x_parm_reg_stack_loc
.L883:
.LBE77:
	.loc 1 4951 0
	movq	-264(%rbp), %rax	# parmreg, tmp938
	movzwl	(%rax), %eax	# parmreg_46->code, D.22215
	cmpw	$65, %ax	#, D.22215
	jne	.L884	#,
.LBB78:
	.loc 1 4953 0
	movq	-264(%rbp), %rax	# parmreg, tmp939
	movq	8(%rax), %rax	# parmreg_46->fld[0].rtx, D.22207
	movzbl	2(%rax), %eax	# _484->mode, D.22201
	movzbl	%al, %eax	# D.22201, tmp940
	movl	%eax, -352(%rbp)	# tmp940, submode
	.loc 1 4955 0
	movq	-264(%rbp), %rdx	# parmreg, tmp941
	movl	-352(%rbp), %eax	# submode, tmp942
	movq	%rdx, %rsi	# tmp941,
	movl	%eax, %edi	# tmp942,
	call	gen_realpart	#
	movl	8(%rax), %eax	# _487->fld[0].rtuint, tmp943
	movl	%eax, -400(%rbp)	# tmp943, regnor
	.loc 1 4956 0
	movq	-264(%rbp), %rdx	# parmreg, tmp944
	movl	-352(%rbp), %eax	# submode, tmp945
	movq	%rdx, %rsi	# tmp944,
	movl	%eax, %edi	# tmp945,
	call	gen_imagpart	#
	movl	8(%rax), %eax	# _489->fld[0].rtuint, tmp946
	movl	%eax, -404(%rbp)	# tmp946, regnoi
	.loc 1 4958 0
	cmpq	$0, -328(%rbp)	#, stack_parm
	je	.L885	#,
	.loc 1 4960 0
	movq	cfun(%rip), %rax	# cfun, cfun.338
	movq	312(%rax), %rax	# cfun.338_491->x_parm_reg_stack_loc, D.22218
	movl	-400(%rbp), %edx	# regnor, D.22209
	salq	$3, %rdx	#, D.22209
	leaq	(%rax,%rdx), %rbx	#, D.22218
	.loc 1 4961 0
	movq	-328(%rbp), %rdx	# stack_parm, tmp947
	movl	-352(%rbp), %eax	# submode, tmp948
	movq	%rdx, %rsi	# tmp947,
	movl	%eax, %edi	# tmp948,
	call	gen_realpart	#
	movq	%rax, (%rbx)	# D.22207, *_495
	.loc 1 4962 0
	movq	cfun(%rip), %rax	# cfun, cfun.339
	movq	312(%rax), %rax	# cfun.339_497->x_parm_reg_stack_loc, D.22218
	movl	-404(%rbp), %edx	# regnoi, D.22209
	salq	$3, %rdx	#, D.22209
	leaq	(%rax,%rdx), %rbx	#, D.22218
	.loc 1 4963 0
	movq	-328(%rbp), %rdx	# stack_parm, tmp949
	movl	-352(%rbp), %eax	# submode, tmp950
	movq	%rdx, %rsi	# tmp949,
	movl	%eax, %edi	# tmp950,
	call	gen_imagpart	#
	movq	%rax, (%rbx)	# D.22207, *_501
	jmp	.L887	#
.L885:
	.loc 1 4967 0
	movq	cfun(%rip), %rax	# cfun, cfun.340
	movq	312(%rax), %rax	# cfun.340_503->x_parm_reg_stack_loc, D.22218
	movl	-400(%rbp), %edx	# regnor, D.22209
	salq	$3, %rdx	#, D.22209
	addq	%rdx, %rax	# D.22209, D.22218
	movq	$0, (%rax)	#, *_507
	.loc 1 4968 0
	movq	cfun(%rip), %rax	# cfun, cfun.341
	movq	312(%rax), %rax	# cfun.341_508->x_parm_reg_stack_loc, D.22218
	movl	-404(%rbp), %edx	# regnoi, D.22209
	salq	$3, %rdx	#, D.22209
	addq	%rdx, %rax	# D.22209, D.22218
	movq	$0, (%rax)	#, *_512
.LBE78:
	jmp	.L887	#
.L884:
	.loc 1 4972 0
	movq	cfun(%rip), %rax	# cfun, cfun.342
	movq	312(%rax), %rdx	# cfun.342_513->x_parm_reg_stack_loc, D.22218
	movq	-264(%rbp), %rax	# parmreg, tmp951
	movl	8(%rax), %eax	# parmreg_46->fld[0].rtuint, D.22208
	movl	%eax, %eax	# D.22208, D.22209
	salq	$3, %rax	#, D.22209
	addq	%rax, %rdx	# D.22209, D.22218
	movq	-328(%rbp), %rax	# stack_parm, tmp952
	movq	%rax, (%rdx)	# tmp952, *_518
.L887:
	.loc 1 4980 0
	movl	-432(%rbp), %eax	# nominal_mode, tmp953
	cmpl	-436(%rbp), %eax	# passed_mode, tmp953
	jne	.L888	#,
	.loc 1 4981 0
	cmpl	$0, -420(%rbp)	#, did_conversion
	jne	.L888	#,
	.loc 1 4982 0
	cmpq	$0, -328(%rbp)	#, stack_parm
	je	.L888	#,
	.loc 1 4983 0
	movq	-328(%rbp), %rax	# stack_parm, tmp954
	movzwl	(%rax), %eax	# stack_parm_13->code, D.22215
	cmpw	$66, %ax	#, D.22215
	jne	.L888	#,
	.loc 1 4984 0
	movq	-72(%rbp), %rax	# stack_offset.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L888	#,
	.loc 1 4985 0
	movq	-328(%rbp), %rax	# stack_parm, tmp955
	movq	8(%rax), %rdx	# stack_parm_13->fld[0].rtx, D.22207
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.22207
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# D.22207,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22204
	je	.L888	#,
.LBB79:
	.loc 1 4988 0
	call	get_last_insn	#
	movq	%rax, -176(%rbp)	# tmp956, linsn
	.loc 1 4992 0
	movq	-264(%rbp), %rax	# parmreg, tmp957
	movzwl	(%rax), %eax	# parmreg_46->code, D.22215
	cmpw	$65, %ax	#, D.22215
	jne	.L889	#,
	.loc 1 4995 0
	movq	-176(%rbp), %rax	# linsn, tmp958
	movq	%rax, -256(%rbp)	# tmp958, sinsn
	jmp	.L890	#
.L897:
	.loc 1 4998 0
	movq	-256(%rbp), %rax	# sinsn, tmp959
	movzwl	(%rax), %eax	# sinsn_50->code, D.22215
	movzwl	%ax, %eax	# D.22215, D.22204
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22206
	cmpb	$105, %al	#, D.22206
	jne	.L891	#,
	.loc 1 4998 0 is_stmt 0 discriminator 1
	movq	-256(%rbp), %rax	# sinsn, tmp961
	movq	32(%rax), %rax	# sinsn_50->fld[3].rtx, D.22207
	movzwl	(%rax), %eax	# _530->code, D.22215
	cmpw	$47, %ax	#, D.22215
	jne	.L892	#,
	.loc 1 4998 0 discriminator 3
	movq	-256(%rbp), %rax	# sinsn, tmp962
	movq	32(%rax), %rax	# sinsn_50->fld[3].rtx, iftmp.344
	jmp	.L894	#
.L892:
	.loc 1 4998 0 discriminator 4
	movq	-256(%rbp), %rax	# sinsn, tmp963
	movq	32(%rax), %rdx	# sinsn_50->fld[3].rtx, D.22207
	movq	-256(%rbp), %rax	# sinsn, tmp964
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# tmp964,
	call	single_set_2	#
	jmp	.L894	#
.L891:
	.loc 1 4998 0 discriminator 2
	movl	$0, %eax	#, iftmp.343
.L894:
	.loc 1 4998 0 discriminator 5
	movq	%rax, -168(%rbp)	# iftmp.343, set
	.loc 1 4999 0 is_stmt 1 discriminator 5
	cmpq	$0, -168(%rbp)	#, set
	je	.L895	#,
	.loc 1 5000 0
	movq	-168(%rbp), %rax	# set, tmp965
	movq	8(%rax), %rdx	# set_537->fld[0].rtx, D.22207
	movq	cfun(%rip), %rax	# cfun, cfun.345
	movq	24(%rax), %rax	# cfun.345_539->emit, D.22219
	movq	80(%rax), %rax	# _540->x_regno_reg_rtx, D.22218
	movl	-404(%rbp), %ecx	# regnoi, D.22209
	salq	$3, %rcx	#, D.22209
	addq	%rcx, %rax	# D.22209, D.22218
	movq	(%rax), %rax	# *_544, D.22207
	cmpq	%rax, %rdx	# D.22207, D.22207
	jne	.L895	#,
	.loc 1 5002 0
	movq	-256(%rbp), %rax	# sinsn, tmp966
	movq	56(%rax), %rdx	# sinsn_50->fld[6].rtx, D.22207
	movq	cfun(%rip), %rax	# cfun, cfun.346
	movq	312(%rax), %rax	# cfun.346_547->x_parm_reg_stack_loc, D.22218
	movl	-404(%rbp), %ecx	# regnoi, D.22209
	salq	$3, %rcx	#, D.22209
	addq	%rcx, %rax	# D.22209, D.22218
	movq	(%rax), %rax	# *_551, D.22207
	movq	%rdx, %rcx	# D.22207,
	movq	%rax, %rdx	# D.22207,
	movl	$3, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-256(%rbp), %rdx	# sinsn, tmp967
	movq	%rax, 56(%rdx)	# D.22207, sinsn_50->fld[6].rtx
	jmp	.L896	#
.L895:
	.loc 1 5005 0
	cmpq	$0, -168(%rbp)	#, set
	je	.L896	#,
	.loc 1 5006 0
	movq	-168(%rbp), %rax	# set, tmp968
	movq	8(%rax), %rdx	# set_537->fld[0].rtx, D.22207
	movq	cfun(%rip), %rax	# cfun, cfun.347
	movq	24(%rax), %rax	# cfun.347_555->emit, D.22219
	movq	80(%rax), %rax	# _556->x_regno_reg_rtx, D.22218
	movl	-400(%rbp), %ecx	# regnor, D.22209
	salq	$3, %rcx	#, D.22209
	addq	%rcx, %rax	# D.22209, D.22218
	movq	(%rax), %rax	# *_560, D.22207
	cmpq	%rax, %rdx	# D.22207, D.22207
	jne	.L896	#,
	.loc 1 5008 0
	movq	-256(%rbp), %rax	# sinsn, tmp969
	movq	56(%rax), %rdx	# sinsn_50->fld[6].rtx, D.22207
	movq	cfun(%rip), %rax	# cfun, cfun.348
	movq	312(%rax), %rax	# cfun.348_563->x_parm_reg_stack_loc, D.22218
	movl	-400(%rbp), %ecx	# regnor, D.22209
	salq	$3, %rcx	#, D.22209
	addq	%rcx, %rax	# D.22209, D.22218
	movq	(%rax), %rax	# *_567, D.22207
	movq	%rdx, %rcx	# D.22207,
	movq	%rax, %rdx	# D.22207,
	movl	$3, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-256(%rbp), %rdx	# sinsn, tmp970
	movq	%rax, 56(%rdx)	# D.22207, sinsn_50->fld[6].rtx
.L896:
	.loc 1 4996 0
	movq	-256(%rbp), %rax	# sinsn, tmp971
	movq	%rax, %rdi	# tmp971,
	call	prev_nonnote_insn	#
	movq	%rax, -256(%rbp)	# tmp972, sinsn
.L890:
	.loc 1 4995 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, sinsn
	jne	.L897	#,
	jmp	.L888	#
.L889:
	.loc 1 5012 0
	movq	-176(%rbp), %rax	# linsn, tmp973
	movzwl	(%rax), %eax	# linsn_524->code, D.22215
	movzwl	%ax, %eax	# D.22215, D.22204
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22206
	cmpb	$105, %al	#, D.22206
	jne	.L898	#,
	.loc 1 5012 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# linsn, tmp975
	movq	32(%rax), %rax	# linsn_524->fld[3].rtx, D.22207
	movzwl	(%rax), %eax	# _574->code, D.22215
	cmpw	$47, %ax	#, D.22215
	jne	.L899	#,
	.loc 1 5012 0 discriminator 3
	movq	-176(%rbp), %rax	# linsn, tmp976
	movq	32(%rax), %rax	# linsn_524->fld[3].rtx, iftmp.350
	jmp	.L901	#
.L899:
	.loc 1 5012 0 discriminator 4
	movq	-176(%rbp), %rax	# linsn, tmp977
	movq	32(%rax), %rdx	# linsn_524->fld[3].rtx, D.22207
	movq	-176(%rbp), %rax	# linsn, tmp978
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# tmp978,
	call	single_set_2	#
	jmp	.L901	#
.L898:
	.loc 1 5012 0 discriminator 2
	movl	$0, %eax	#, iftmp.349
.L901:
	.loc 1 5012 0 discriminator 5
	movq	%rax, -168(%rbp)	# iftmp.349, set
	cmpq	$0, -168(%rbp)	#, set
	je	.L888	#,
	.loc 1 5013 0 is_stmt 1
	movq	-168(%rbp), %rax	# set, tmp979
	movq	8(%rax), %rax	# set_581->fld[0].rtx, D.22207
	cmpq	-264(%rbp), %rax	# parmreg, D.22207
	jne	.L888	#,
	.loc 1 5015 0
	movq	-176(%rbp), %rax	# linsn, tmp980
	movq	56(%rax), %rdx	# linsn_524->fld[6].rtx, D.22207
	movq	-328(%rbp), %rax	# stack_parm, tmp981
	movq	%rdx, %rcx	# D.22207,
	movq	%rax, %rdx	# tmp981,
	movl	$3, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-176(%rbp), %rdx	# linsn, tmp982
	movq	%rax, 56(%rdx)	# D.22207, linsn_524->fld[6].rtx
.L888:
.LBE79:
	.loc 1 5020 0
	movq	-344(%rbp), %rax	# parm, tmp983
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	16(%rax), %eax	# _585->common.code, D.22201
	cmpb	$13, %al	#, D.22201
	je	.L902	#,
	.loc 1 5020 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp984
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	16(%rax), %eax	# _587->common.code, D.22201
	cmpb	$15, %al	#, D.22201
	jne	.L903	#,
.L902:
	.loc 1 5022 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp985
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movq	8(%rax), %rax	# _589->common.type, D.22202
	movl	64(%rax), %eax	# _590->type.align, D.22208
	.loc 1 5021 0
	movl	%eax, %edx	# D.22208, D.22204
	movq	-264(%rbp), %rax	# parmreg, tmp986
	movl	%edx, %esi	# D.22204,
	movq	%rax, %rdi	# tmp986,
	call	mark_reg_pointer	#
.L903:
	.loc 1 5025 0
	movq	-344(%rbp), %rax	# parm, tmp987
	movzbl	17(%rax), %eax	# *parm_1, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	je	.L904	#,
	.loc 1 5034 0
	movq	-296(%rbp), %rax	# conversion_insns, tmp988
	movq	%rax, %rdi	# tmp988,
	call	push_to_sequence	#
	.loc 1 5035 0
	movq	-344(%rbp), %rax	# parm, tmp989
	movq	%rax, %rdi	# tmp989,
	call	put_var_into_stack	#
	.loc 1 5036 0
	call	get_insns	#
	movq	%rax, -296(%rbp)	# tmp990, conversion_insns
	.loc 1 5037 0
	call	end_sequence	#
.LBE73:
	.loc 1 4754 0
	jmp	.L851	#
.L904:
	jmp	.L851	#
.L855:
	.loc 1 5045 0
	movl	-440(%rbp), %eax	# promoted_mode, tmp991
	cmpl	-432(%rbp), %eax	# nominal_mode, tmp991
	je	.L905	#,
.LBB80:
	.loc 1 5048 0
	movq	-336(%rbp), %rax	# entry_parm, tmp992
	movzbl	2(%rax), %eax	# entry_parm_5->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	%eax, %edi	# D.22217,
	call	gen_reg_rtx	#
	movq	%rax, -216(%rbp)	# tmp993, tempreg
	.loc 1 5050 0
	movq	-336(%rbp), %rax	# entry_parm, tmp994
	movq	%rax, %rdi	# tmp994,
	call	validize_mem	#
	movq	%rax, %rdx	#, D.22207
	movq	-216(%rbp), %rax	# tempreg, tmp995
	movq	%rdx, %rsi	# D.22207,
	movq	%rax, %rdi	# tmp995,
	call	emit_move_insn	#
	.loc 1 5052 0
	movq	-296(%rbp), %rax	# conversion_insns, tmp996
	movq	%rax, %rdi	# tmp996,
	call	push_to_sequence	#
	.loc 1 5054 0
	movq	-344(%rbp), %rax	# parm, tmp997
	movq	8(%rax), %rax	# parm_1->common.type, D.22202
	movzbl	17(%rax), %eax	# *_335, tmp1000
	shrb	$5, %al	#, D.22205
	andl	$1, %eax	#, D.22205
	.loc 1 5053 0
	movzbl	%al, %edx	# D.22205, D.22204
	movq	-216(%rbp), %rcx	# tempreg, tmp1001
	movl	-432(%rbp), %eax	# nominal_mode, tmp1002
	movq	%rcx, %rsi	# tmp1001,
	movl	%eax, %edi	# tmp1002,
	call	convert_to_mode	#
	movq	%rax, -336(%rbp)	# tmp1003, entry_parm
	.loc 1 5055 0
	cmpq	$0, -328(%rbp)	#, stack_parm
	je	.L906	#,
	.loc 1 5057 0
	movl	-432(%rbp), %esi	# nominal_mode, tmp1004
	movq	-328(%rbp), %rax	# stack_parm, tmp1005
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp1005,
	call	adjust_address_1	#
	movq	%rax, -328(%rbp)	# tmp1006, stack_parm
.L906:
	.loc 1 5059 0
	call	get_insns	#
	movq	%rax, -296(%rbp)	# tmp1007, conversion_insns
	.loc 1 5060 0
	movl	$1, -420(%rbp)	#, did_conversion
	.loc 1 5061 0
	call	end_sequence	#
.L905:
.LBE80:
	.loc 1 5064 0
	movq	-336(%rbp), %rax	# entry_parm, tmp1008
	cmpq	-328(%rbp), %rax	# stack_parm, tmp1008
	je	.L907	#,
	.loc 1 5066 0
	cmpq	$0, -328(%rbp)	#, stack_parm
	jne	.L908	#,
	.loc 1 5070 0
	movq	-336(%rbp), %rax	# entry_parm, tmp1009
	movzbl	2(%rax), %eax	# entry_parm_6->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22204
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22201
	.loc 1 5069 0
	movzbl	%al, %ecx	# D.22201, D.22214
	movq	-336(%rbp), %rax	# entry_parm, tmp1011
	movzbl	2(%rax), %eax	# entry_parm_6->mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.22214,
	movl	%eax, %edi	# D.22217,
	call	assign_stack_local	#
	movq	%rax, -328(%rbp)	# tmp1012, stack_parm
	.loc 1 5071 0
	movq	-344(%rbp), %rcx	# parm, tmp1013
	movq	-328(%rbp), %rax	# stack_parm, tmp1014
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1013,
	movq	%rax, %rdi	# tmp1014,
	call	set_mem_attributes	#
.L908:
	.loc 1 5074 0
	movl	-440(%rbp), %eax	# promoted_mode, tmp1015
	cmpl	-432(%rbp), %eax	# nominal_mode, tmp1015
	je	.L909	#,
	.loc 1 5076 0
	movq	-296(%rbp), %rax	# conversion_insns, tmp1016
	movq	%rax, %rdi	# tmp1016,
	call	push_to_sequence	#
	.loc 1 5077 0
	movq	-336(%rbp), %rax	# entry_parm, tmp1017
	movq	%rax, %rdi	# tmp1017,
	call	validize_mem	#
	movq	%rax, %rbx	#, D.22207
	movq	-328(%rbp), %rax	# stack_parm, tmp1018
	movq	%rax, %rdi	# tmp1018,
	call	validize_mem	#
	movq	%rbx, %rsi	# D.22207,
	movq	%rax, %rdi	# D.22207,
	call	emit_move_insn	#
	.loc 1 5079 0
	call	get_insns	#
	movq	%rax, -296(%rbp)	# tmp1019, conversion_insns
	.loc 1 5080 0
	call	end_sequence	#
	jmp	.L907	#
.L909:
	.loc 1 5083 0
	movq	-336(%rbp), %rax	# entry_parm, tmp1020
	movq	%rax, %rdi	# tmp1020,
	call	validize_mem	#
	movq	%rax, %rbx	#, D.22207
	movq	-328(%rbp), %rax	# stack_parm, tmp1021
	movq	%rax, %rdi	# tmp1021,
	call	validize_mem	#
	movq	%rbx, %rsi	# D.22207,
	movq	%rax, %rdi	# D.22207,
	call	emit_move_insn	#
.L907:
	.loc 1 5087 0
	movq	-344(%rbp), %rax	# parm, tmp1022
	movq	-328(%rbp), %rdx	# stack_parm, tmp1023
	movq	%rdx, 144(%rax)	# tmp1023, parm_1->decl.rtl
.L851:
	.loc 1 5092 0
	movq	-344(%rbp), %rax	# parm, tmp1024
	cmpq	-304(%rbp), %rax	# function_result_decl, tmp1024
	jne	.L910	#,
.LBB81:
	.loc 1 5094 0
	movq	-456(%rbp), %rax	# fndecl, tmp1025
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, tmp1026
	movq	%rax, -160(%rbp)	# tmp1026, result
	.loc 1 5095 0
	movq	-344(%rbp), %rax	# parm, tmp1027
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L911	#,
	.loc 1 5095 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1028
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.351
	jmp	.L912	#
.L911:
	.loc 1 5095 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1029
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1029,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1030
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.351
.L912:
	.loc 1 5095 0 discriminator 3
	movq	%rax, -152(%rbp)	# iftmp.351, addr
	.loc 1 5103 0 is_stmt 1 discriminator 3
	movq	-160(%rbp), %rax	# result, tmp1031
	movzbl	48(%rax), %eax	# result_633->decl.mode, D.22201
	movzbl	%al, %eax	# D.22201, D.22217
	movq	-152(%rbp), %rdx	# addr, tmp1032
	movq	%rdx, %rsi	# tmp1032,
	movl	%eax, %edi	# D.22217,
	call	gen_rtx_MEM	#
	movq	%rax, -144(%rbp)	# tmp1033, x
	.loc 1 5104 0 discriminator 3
	movq	-160(%rbp), %rcx	# result, tmp1034
	movq	-144(%rbp), %rax	# x, tmp1035
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1034,
	movq	%rax, %rdi	# tmp1035,
	call	set_mem_attributes	#
	.loc 1 5105 0 discriminator 3
	movq	-160(%rbp), %rax	# result, tmp1036
	movq	-144(%rbp), %rdx	# x, tmp1037
	movq	%rdx, 144(%rax)	# tmp1037, result_633->decl.rtl
.L910:
.LBE81:
	.loc 1 5108 0
	movq	-344(%rbp), %rax	# parm, tmp1038
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L913	#,
	.loc 1 5108 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1039
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.352
	jmp	.L914	#
.L913:
	.loc 1 5108 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1040
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1040,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1041
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.352
.L914:
	.loc 1 5108 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.352_78->code, D.22215
	cmpw	$61, %ax	#, D.22215
	jne	.L915	#,
	.loc 1 5109 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.353
	movq	24(%rax), %rax	# cfun.353_645->emit, D.22219
	movq	72(%rax), %rbx	# _646->regno_decl, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1042
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L916	#,
	.loc 1 5109 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1043
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.354
	jmp	.L917	#
.L916:
	.loc 1 5109 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1044
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1044,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1045
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.354
.L917:
	.loc 1 5109 0 discriminator 1
	movl	8(%rax), %eax	# iftmp.354_79->fld[0].rtuint, D.22208
	movl	%eax, %eax	# D.22208, D.22209
	salq	$3, %rax	#, D.22209
	leaq	(%rbx,%rax), %rdx	#, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1046
	movq	%rax, (%rdx)	# tmp1046, *_654
	jmp	.L925	#
.L915:
	.loc 1 5110 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp1047
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L919	#,
	.loc 1 5110 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1048
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.355
	jmp	.L920	#
.L919:
	.loc 1 5110 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1049
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1049,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1050
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.355
.L920:
	.loc 1 5110 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.355_80->code, D.22215
	cmpw	$65, %ax	#, D.22215
	jne	.L925	#,
	.loc 1 5112 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	24(%rax), %rax	# cfun.356_659->emit, D.22219
	movq	72(%rax), %rbx	# _660->regno_decl, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1051
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L921	#,
	.loc 1 5112 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1052
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.357
	jmp	.L922	#
.L921:
	.loc 1 5112 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1053
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1053,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1054
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.357
.L922:
	.loc 1 5112 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.357_81->fld[0].rtx, D.22207
	movl	8(%rax), %eax	# _665->fld[0].rtuint, D.22208
	movl	%eax, %eax	# D.22208, D.22209
	salq	$3, %rax	#, D.22209
	leaq	(%rbx,%rax), %rdx	#, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1055
	movq	%rax, (%rdx)	# tmp1055, *_669
	.loc 1 5113 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.358
	movq	24(%rax), %rax	# cfun.358_670->emit, D.22219
	movq	72(%rax), %rbx	# _671->regno_decl, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1056
	movq	144(%rax), %rax	# parm_1->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L923	#,
	.loc 1 5113 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# parm, tmp1057
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.359
	jmp	.L924	#
.L923:
	.loc 1 5113 0 discriminator 2
	movq	-344(%rbp), %rax	# parm, tmp1058
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1058,
	call	make_decl_rtl	#
	movq	-344(%rbp), %rax	# parm, tmp1059
	movq	144(%rax), %rax	# parm_1->decl.rtl, iftmp.359
.L924:
	.loc 1 5113 0 discriminator 3
	movq	16(%rax), %rax	# iftmp.359_82->fld[1].rtx, D.22207
	movl	8(%rax), %eax	# _676->fld[0].rtuint, D.22208
	movl	%eax, %eax	# D.22208, D.22209
	salq	$3, %rax	#, D.22209
	leaq	(%rbx,%rax), %rdx	#, D.22221
	movq	-344(%rbp), %rax	# parm, tmp1060
	movq	%rax, (%rdx)	# tmp1060, *_680
.L925:
.LBE65:
	.loc 1 4392 0 is_stmt 1
	movq	-344(%rbp), %rax	# parm, tmp1061
	movq	(%rax), %rax	# parm_1->common.chain, tmp1062
	movq	%rax, -344(%rbp)	# tmp1062, parm
.L777:
	.loc 1 4392 0 is_stmt 0 discriminator 1
	cmpq	$0, -344(%rbp)	#, parm
	jne	.L926	#,
	.loc 1 5120 0 is_stmt 1
	movq	-296(%rbp), %rax	# conversion_insns, tmp1063
	movq	%rax, %rdi	# tmp1063,
	call	emit_insns	#
	.loc 1 5122 0
	movq	cfun(%rip), %rbx	# cfun, cfun.360
	call	get_last_insn	#
	movq	%rax, 296(%rbx)	# D.22207, cfun.360_687->x_last_parm_insn
	.loc 1 5124 0
	movq	cfun(%rip), %rax	# cfun, cfun.361
	movq	-112(%rbp), %rdx	# stack_args_size.constant, D.22214
	movl	%edx, 68(%rax)	# D.22204, cfun.361_689->args_size
	.loc 1 5131 0
	movq	cfun(%rip), %rdx	# cfun, cfun.362
	movq	cfun(%rip), %rax	# cfun, cfun.363
	movl	68(%rax), %eax	# cfun.363_693->args_size, D.22204
	movl	$0, %ecx	#, tmp1064
	testl	%eax, %eax	# D.22204
	cmovs	%ecx, %eax	# D.22204,, tmp1064, D.22204
	movl	%eax, 68(%rdx)	# D.22204, cfun.362_692->args_size
	.loc 1 5138 0
	movq	cfun(%rip), %rcx	# cfun, cfun.364
	.loc 1 5139 0
	movq	cfun(%rip), %rax	# cfun, cfun.365
	movl	68(%rax), %edx	# cfun.365_697->args_size, D.22204
	movl	target_flags(%rip), %eax	# target_flags, target_flags.367
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L927	#,
	.loc 1 5139 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.366
	jmp	.L928	#
.L927:
	.loc 1 5139 0 discriminator 2
	movl	$4, %eax	#, iftmp.366
.L928:
	.loc 1 5139 0 discriminator 3
	addl	%edx, %eax	# D.22204, D.22204
	subl	$1, %eax	#, D.22204
	.loc 1 5140 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.369
	andl	$33554432, %edx	#, D.22204
	testl	%edx, %edx	# D.22204
	je	.L929	#,
	.loc 1 5140 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.368
	jmp	.L930	#
.L929:
	.loc 1 5140 0 discriminator 2
	movl	$4, %ebx	#, iftmp.368
.L930:
	.loc 1 5140 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.368
	movl	%eax, %edx	# tmp1065, D.22204
	movl	target_flags(%rip), %eax	# target_flags, target_flags.371
	andl	$33554432, %eax	#, D.22204
	testl	%eax, %eax	# D.22204
	je	.L931	#,
	.loc 1 5140 0 discriminator 1
	movl	$8, %eax	#, iftmp.370
	jmp	.L932	#
.L931:
	.loc 1 5140 0 discriminator 2
	movl	$4, %eax	#, iftmp.370
.L932:
	.loc 1 5140 0 discriminator 3
	imull	%edx, %eax	# D.22204, D.22204
	.loc 1 5139 0 is_stmt 1 discriminator 3
	movl	%eax, 68(%rcx)	# D.22204, cfun.364_696->args_size
	.loc 1 5149 0 discriminator 3
	movq	cfun(%rip), %rbx	# cfun, cfun.372
	movq	-104(%rbp), %rax	# stack_args_size.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L933	#,
	.loc 1 5149 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# stack_args_size.constant, D.22214
	movq	%rax, %rsi	# D.22214,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	jmp	.L934	#
.L933:
	.loc 1 5149 0 discriminator 2
	movq	-104(%rbp), %rax	# stack_args_size.var, D.22202
	testq	%rax, %rax	# D.22202
	jne	.L935	#,
	.loc 1 5149 0 discriminator 1
	movq	-112(%rbp), %rax	# stack_args_size.constant, D.22214
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22214,
	call	size_int_wide	#
	jmp	.L936	#
.L935:
	.loc 1 5149 0 discriminator 2
	movq	-112(%rbp), %rax	# stack_args_size.constant, D.22214
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22214,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.22202
	movq	-104(%rbp), %rdx	# stack_args_size.var, D.22202
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22202
	movq	%rdx, %rsi	# D.22202,
	movq	%rax, %rdi	# D.22202,
	call	convert	#
	movq	%r12, %rdx	# D.22202,
	movq	%rax, %rsi	# D.22202,
	movl	$59, %edi	#,
	call	size_binop	#
.L936:
	.loc 1 5149 0 discriminator 3
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.374,
	call	expand_expr	#
.L934:
	movq	%rax, 80(%rbx)	# iftmp.373, cfun.372_715->arg_offset_rtx
	.loc 1 5155 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rbx	# cfun, cfun.375
	movq	cfun(%rip), %rax	# cfun, cfun.376
	movl	68(%rax), %edx	# cfun.376_730->args_size, D.22204
	movq	-456(%rbp), %rax	# fndecl, tmp1067
	movq	8(%rax), %rcx	# fndecl_94(D)->common.type, D.22202
	movq	-456(%rbp), %rax	# fndecl, tmp1068
	movq	%rcx, %rsi	# D.22202,
	movq	%rax, %rdi	# tmp1068,
	call	ix86_return_pops_args	#
	movl	%eax, 64(%rbx)	# D.22204, cfun.375_729->pops_args
	.loc 1 5161 0 discriminator 3
	cmpl	$0, -396(%rbp)	#, hide_last_arg
	jne	.L937	#,
	.loc 1 5162 0
	movq	cfun(%rip), %rax	# cfun, cfun.377
	movq	-48(%rbp), %rdx	# args_so_far, tmp1069
	movq	%rdx, 88(%rax)	# tmp1069, cfun.377_734->args_info
	movq	-40(%rbp), %rdx	# args_so_far, tmp1070
	movq	%rdx, 96(%rax)	# tmp1070, cfun.377_734->args_info
	movq	-32(%rbp), %rdx	# args_so_far, tmp1071
	movq	%rdx, 104(%rax)	# tmp1071, cfun.377_734->args_info
	movl	-24(%rbp), %edx	# args_so_far, tmp1072
	movl	%edx, 112(%rax)	# tmp1072, cfun.377_734->args_info
.L937:
	.loc 1 5169 0
	movq	cfun(%rip), %rbx	# cfun, cfun.378
	.loc 1 5170 0
	movq	-456(%rbp), %rax	# fndecl, tmp1073
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	144(%rax), %rax	# _736->decl.rtl, D.22207
	.loc 1 5171 0
	testq	%rax, %rax	# D.22207
	je	.L938	#,
	.loc 1 5171 0 is_stmt 0 discriminator 1
	movq	-456(%rbp), %rax	# fndecl, tmp1074
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	144(%rax), %rax	# _738->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L939	#,
	movq	-456(%rbp), %rax	# fndecl, tmp1075
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	144(%rax), %rax	# _740->decl.rtl, iftmp.380
	jmp	.L941	#
.L939:
	.loc 1 5171 0 discriminator 2
	movq	-456(%rbp), %rax	# fndecl, tmp1076
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22202,
	call	make_decl_rtl	#
	movq	-456(%rbp), %rax	# fndecl, tmp1077
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	144(%rax), %rax	# _743->decl.rtl, iftmp.380
	jmp	.L941	#
.L938:
	movl	$0, %eax	#, iftmp.379
.L941:
	.loc 1 5170 0 is_stmt 1
	movq	%rax, 120(%rbx)	# iftmp.379, cfun.378_735->return_rtx
	.loc 1 5176 0
	movq	-456(%rbp), %rax	# fndecl, tmp1078
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, D.22202
	movq	144(%rax), %rax	# _747->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L769	#,
.LBB82:
	.loc 1 5178 0
	movq	-456(%rbp), %rax	# fndecl, tmp1079
	movq	96(%rax), %rax	# fndecl_94(D)->decl.result, tmp1080
	movq	%rax, -136(%rbp)	# tmp1080, decl_result
	.loc 1 5179 0
	movq	-136(%rbp), %rax	# decl_result, tmp1081
	movq	144(%rax), %rax	# decl_result_749->decl.rtl, D.22207
	testq	%rax, %rax	# D.22207
	je	.L943	#,
	.loc 1 5179 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# decl_result, tmp1082
	movq	144(%rax), %rax	# decl_result_749->decl.rtl, iftmp.381
	jmp	.L944	#
.L943:
	.loc 1 5179 0 discriminator 2
	movq	-136(%rbp), %rax	# decl_result, tmp1083
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp1083,
	call	make_decl_rtl	#
	movq	-136(%rbp), %rax	# decl_result, tmp1084
	movq	144(%rax), %rax	# decl_result_749->decl.rtl, iftmp.381
.L944:
	.loc 1 5179 0 discriminator 3
	movq	%rax, -128(%rbp)	# iftmp.381, decl_rtl
	.loc 1 5181 0 is_stmt 1 discriminator 3
	movq	-128(%rbp), %rax	# decl_rtl, tmp1085
	movzwl	(%rax), %eax	# decl_rtl_753->code, D.22215
	cmpw	$61, %ax	#, D.22215
	jne	.L945	#,
	.loc 1 5182 0
	movq	-128(%rbp), %rax	# decl_rtl, tmp1086
	movl	8(%rax), %eax	# decl_rtl_753->fld[0].rtuint, D.22208
	.loc 1 5181 0
	cmpl	$52, %eax	#, D.22208
	seta	%al	#, iftmp.382
	jmp	.L946	#
.L945:
	.loc 1 5181 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# decl_result, tmp1087
	movzbl	49(%rax), %eax	# *decl_result_749, D.22201
	andl	$4, %eax	#, D.22201
	testb	%al, %al	# D.22201
	setne	%al	#, iftmp.382
.L946:
	.loc 1 5181 0 discriminator 2
	testb	%al, %al	# iftmp.382
	je	.L769	#,
.LBB83:
	.loc 1 5191 0 is_stmt 1
	movq	-136(%rbp), %rax	# decl_result, tmp1088
	movq	8(%rax), %rax	# decl_result_749->common.type, D.22202
	movq	%rax, %rdi	# D.22202,
	call	ix86_function_value	#
	movq	%rax, -120(%rbp)	# tmp1089, real_decl_rtl
	.loc 1 5194 0
	movq	-120(%rbp), %rax	# real_decl_rtl, tmp1090
	movzbl	3(%rax), %edx	# real_decl_rtl_761->integrated, tmp1093
	orl	$64, %edx	#, tmp1094
	movb	%dl, 3(%rax)	# tmp1094, real_decl_rtl_761->integrated
	.loc 1 5198 0
	movq	cfun(%rip), %rax	# cfun, cfun.383
	movq	-120(%rbp), %rdx	# real_decl_rtl, tmp1095
	movq	%rdx, 120(%rax)	# tmp1095, cfun.383_762->return_rtx
.L769:
.LBE83:
.LBE82:
	.loc 1 5201 0
	addq	$464, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	assign_parms, .-assign_parms
	.globl	locate_and_pad_parm
	.type	locate_and_pad_parm, @function
locate_and_pad_parm:
.LFB66:
	.loc 1 5285 0
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
	movl	%edi, -52(%rbp)	# passed_mode, passed_mode
	movq	%rsi, -64(%rbp)	# type, type
	movl	%edx, -56(%rbp)	# in_regs, in_regs
	movq	%rcx, -72(%rbp)	# fndecl, fndecl
	movq	%r8, -80(%rbp)	# initial_offset_ptr, initial_offset_ptr
	movq	%r9, -88(%rbp)	# offset_ptr, offset_ptr
	.loc 1 5287 0
	cmpq	$0, -64(%rbp)	#, type
	je	.L948	#,
	.loc 1 5287 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# type, tmp108
	movq	%rax, %rdi	# tmp108,
	call	size_in_bytes	#
	jmp	.L949	#
.L948:
	.loc 1 5287 0 discriminator 2
	movl	-52(%rbp), %eax	# passed_mode, passed_mode.385
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22223
	movzbl	%al, %eax	# D.22223, D.22224
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22224,
	call	size_int_wide	#
.L949:
	.loc 1 5286 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.384, sizetree
	.loc 1 5288 0
	movl	$1, -44(%rbp)	#, where_pad
	.loc 1 5289 0
	movq	-64(%rbp), %rdx	# type, tmp110
	movl	-52(%rbp), %eax	# passed_mode, tmp111
	movq	%rdx, %rsi	# tmp110,
	movl	%eax, %edi	# tmp111,
	call	ix86_function_arg_boundary	#
	movl	%eax, -40(%rbp)	# tmp112, boundary
	.loc 1 5294 0
	cmpl	$0, -56(%rbp)	#, in_regs
	jne	.L950	#,
.LBB84:
	.loc 1 5296 0
	movl	$0, -36(%rbp)	#, reg_parm_stack_space
	.loc 1 5301 0
	movl	$0, -36(%rbp)	#, reg_parm_stack_space
	.loc 1 5303 0
	cmpl	$0, -36(%rbp)	#, reg_parm_stack_space
	jle	.L950	#,
	.loc 1 5305 0
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp113
	movq	8(%rax), %rax	# initial_offset_ptr_21(D)->var, D.22225
	testq	%rax, %rax	# D.22225
	je	.L951	#,
	.loc 1 5308 0
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp114
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22224,
	call	size_int_wide	#
	movq	%rax, %rbx	#, D.22225
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp115
	movq	8(%rax), %rax	# initial_offset_ptr_21(D)->var, D.22225
	testq	%rax, %rax	# D.22225
	jne	.L952	#,
	.loc 1 5308 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp116
	movq	(%rax), %rax	# initial_offset_ptr_21(D)->constant, D.22224
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22224,
	call	size_int_wide	#
	jmp	.L953	#
.L952:
	.loc 1 5308 0 discriminator 2
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp117
	movq	(%rax), %rax	# initial_offset_ptr_21(D)->constant, D.22224
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22224,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.22225
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp118
	movq	8(%rax), %rdx	# initial_offset_ptr_21(D)->var, D.22225
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22225
	movq	%rdx, %rsi	# D.22225,
	movq	%rax, %rdi	# D.22225,
	call	convert	#
	movq	%r12, %rdx	# D.22225,
	movq	%rax, %rsi	# D.22225,
	movl	$59, %edi	#,
	call	size_binop	#
.L953:
	.loc 1 5308 0 discriminator 1
	movq	%rbx, %rdx	# D.22225,
	movq	%rax, %rsi	# iftmp.386,
	movl	$79, %edi	#,
	call	size_binop	#
	movq	-80(%rbp), %rdx	# initial_offset_ptr, tmp119
	movq	%rax, 8(%rdx)	# D.22225, initial_offset_ptr_21(D)->var
	.loc 1 5310 0 is_stmt 1 discriminator 1
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp120
	movq	$0, (%rax)	#, initial_offset_ptr_21(D)->constant
	jmp	.L950	#
.L951:
	.loc 1 5312 0
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp121
	movq	(%rax), %rdx	# initial_offset_ptr_21(D)->constant, D.22224
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp122
	cltq
	cmpq	%rax, %rdx	# D.22224, D.22224
	jge	.L950	#,
	.loc 1 5313 0
	movl	-36(%rbp), %eax	# reg_parm_stack_space, tmp123
	movslq	%eax, %rdx	# tmp123, D.22224
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp124
	movq	%rdx, (%rax)	# D.22224, initial_offset_ptr_21(D)->constant
.L950:
.LBE84:
	.loc 1 5318 0
	movq	16(%rbp), %rax	# arg_size_ptr, tmp125
	movq	$0, 8(%rax)	#, arg_size_ptr_38(D)->var
	.loc 1 5319 0
	movq	16(%rbp), %rax	# arg_size_ptr, tmp126
	movq	$0, (%rax)	#, arg_size_ptr_38(D)->constant
	.loc 1 5320 0
	movq	24(%rbp), %rax	# alignment_pad, tmp127
	movq	$0, 8(%rax)	#, alignment_pad_39(D)->var
	.loc 1 5321 0
	movq	24(%rbp), %rax	# alignment_pad, tmp128
	movq	$0, (%rax)	#, alignment_pad_39(D)->constant
	.loc 1 5354 0
	cmpl	$0, -56(%rbp)	#, in_regs
	jne	.L954	#,
	.loc 1 5359 0
	movq	24(%rbp), %rdx	# alignment_pad, tmp129
	movl	-40(%rbp), %ecx	# boundary, tmp130
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp131
	movl	%ecx, %esi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	pad_to_arg_alignment	#
.L954:
	.loc 1 5360 0
	movq	-88(%rbp), %rcx	# offset_ptr, tmp132
	movq	-80(%rbp), %rax	# initial_offset_ptr, tmp133
	movq	8(%rax), %rdx	# *initial_offset_ptr_21(D),
	movq	(%rax), %rax	# *initial_offset_ptr_21(D), tmp134
	movq	%rax, (%rcx)	# tmp134, *offset_ptr_40(D)
	movq	%rdx, 8(%rcx)	#, *offset_ptr_40(D)
	.loc 1 5363 0
	cmpl	$51, -52(%rbp)	#, passed_mode
	je	.L955	#,
	.loc 1 5364 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.388
	andl	$33554432, %eax	#, D.22226
	testl	%eax, %eax	# D.22226
	je	.L956	#,
	.loc 1 5364 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# sizetree, tmp135
	movq	32(%rax), %rax	# sizetree_15->int_cst.int_cst.low, D.22227
	addq	$7, %rax	#, D.22227
	andq	$-8, %rax	#, iftmp.387
	jmp	.L957	#
.L956:
	.loc 1 5364 0 discriminator 2
	movq	-32(%rbp), %rax	# sizetree, tmp136
	movq	32(%rax), %rax	# sizetree_15->int_cst.int_cst.low, D.22227
	addq	$1, %rax	#, D.22227
	andq	$-2, %rax	#, iftmp.387
.L957:
	.loc 1 5364 0 discriminator 3
	movl	$0, %esi	#,
	movq	%rax, %rdi	# iftmp.387,
	call	size_int_wide	#
	movq	%rax, -32(%rbp)	# tmp137, sizetree
.L955:
	.loc 1 5369 0 is_stmt 1
	cmpl	$2, -44(%rbp)	#, where_pad
	jne	.L958	#,
	.loc 1 5372 0
	cmpl	$0, -56(%rbp)	#, in_regs
	je	.L959	#,
	.loc 1 5372 0 is_stmt 0 discriminator 1
	cmpl	$51, -52(%rbp)	#, passed_mode
	je	.L958	#,
.L959:
	.loc 1 5373 0 is_stmt 1
	movq	-32(%rbp), %rdx	# sizetree, tmp138
	movl	-52(%rbp), %ecx	# passed_mode, tmp139
	movq	-88(%rbp), %rax	# offset_ptr, tmp140
	movl	%ecx, %esi	# tmp139,
	movq	%rax, %rdi	# tmp140,
	call	pad_below	#
.L958:
	.loc 1 5375 0
	cmpl	$0, -44(%rbp)	#, where_pad
	je	.L960	#,
	.loc 1 5376 0
	movq	-32(%rbp), %rax	# sizetree, tmp141
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	host_integerp	#
	testl	%eax, %eax	# D.22226
	je	.L961	#,
	.loc 1 5377 0
	movq	-32(%rbp), %rax	# sizetree, tmp142
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	tree_low_cst	#
	salq	$3, %rax	#, D.22224
	movl	target_flags(%rip), %edx	# target_flags, target_flags.390
	andl	$33554432, %edx	#, D.22226
	testl	%edx, %edx	# D.22226
	je	.L962	#,
	.loc 1 5377 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.389
	jmp	.L963	#
.L962:
	.loc 1 5377 0 discriminator 2
	movl	$32, %ebx	#, iftmp.389
.L963:
	.loc 1 5377 0 discriminator 3
	cqto
	idivq	%rbx	# iftmp.389
	movq	%rdx, %rcx	# tmp143, tmp143
	movq	%rcx, %rax	# tmp143, D.22224
	testq	%rax, %rax	# D.22224
	je	.L960	#,
.L961:
	.loc 1 5378 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.392
	andl	$33554432, %eax	#, D.22226
	testl	%eax, %eax	# D.22226
	je	.L964	#,
	.loc 1 5378 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.391
	jmp	.L965	#
.L964:
	.loc 1 5378 0 discriminator 2
	movl	$4, %eax	#, iftmp.391
.L965:
	.loc 1 5378 0 discriminator 3
	movq	-32(%rbp), %rdx	# sizetree, tmp145
	movl	%eax, %esi	# iftmp.391,
	movq	%rdx, %rdi	# tmp145,
	call	round_up	#
	movq	%rax, -32(%rbp)	# tmp146, sizetree
.L960:
.LBB85:
	.loc 1 5380 0 is_stmt 1
	movq	-32(%rbp), %rax	# sizetree, tmp147
	movq	%rax, -24(%rbp)	# tmp147, inc
	movq	-24(%rbp), %rax	# inc, tmp148
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	host_integerp	#
	testl	%eax, %eax	# D.22226
	je	.L966	#,
	.loc 1 5380 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax	# arg_size_ptr, tmp149
	movq	(%rax), %rbx	# arg_size_ptr_38(D)->constant, D.22224
	movq	-24(%rbp), %rax	# inc, tmp150
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	tree_low_cst	#
	leaq	(%rbx,%rax), %rdx	#, D.22224
	movq	16(%rbp), %rax	# arg_size_ptr, tmp151
	movq	%rdx, (%rax)	# D.22224, arg_size_ptr_38(D)->constant
	jmp	.L947	#
.L966:
	.loc 1 5380 0 discriminator 2
	movq	16(%rbp), %rax	# arg_size_ptr, tmp152
	movq	8(%rax), %rax	# arg_size_ptr_38(D)->var, D.22225
	testq	%rax, %rax	# D.22225
	jne	.L968	#,
	.loc 1 5380 0 discriminator 1
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22225
	movq	-24(%rbp), %rdx	# inc, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# D.22225,
	call	convert	#
	movq	16(%rbp), %rdx	# arg_size_ptr, tmp154
	movq	%rax, 8(%rdx)	# D.22225, arg_size_ptr_38(D)->var
	jmp	.L947	#
.L968:
	.loc 1 5380 0 discriminator 2
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22225
	movq	-24(%rbp), %rdx	# inc, tmp155
	movq	%rdx, %rsi	# tmp155,
	movq	%rax, %rdi	# D.22225,
	call	convert	#
	movq	%rax, %rdx	#, D.22225
	movq	16(%rbp), %rax	# arg_size_ptr, tmp156
	movq	8(%rax), %rax	# arg_size_ptr_38(D)->var, D.22225
	movq	%rax, %rsi	# D.22225,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	16(%rbp), %rdx	# arg_size_ptr, tmp157
	movq	%rax, 8(%rdx)	# D.22225, arg_size_ptr_38(D)->var
.L947:
.LBE85:
	.loc 1 5382 0 is_stmt 1
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	locate_and_pad_parm, .-locate_and_pad_parm
	.type	pad_to_arg_alignment, @function
pad_to_arg_alignment:
.LFB67:
	.loc 1 5392 0
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
	movq	%rdi, -56(%rbp)	# offset_ptr, offset_ptr
	movl	%esi, -60(%rbp)	# boundary, boundary
	movq	%rdx, -72(%rbp)	# alignment_pad, alignment_pad
	.loc 1 5393 0
	movq	$0, -32(%rbp)	#, save_var
	.loc 1 5394 0
	movq	$0, -24(%rbp)	#, save_constant
	.loc 1 5396 0
	movl	-60(%rbp), %eax	# boundary, tmp100
	leal	7(%rax), %edx	#, tmp102
	testl	%eax, %eax	# tmp101
	cmovs	%edx, %eax	# tmp102,, tmp101
	sarl	$3, %eax	#, tmp103
	movl	%eax, -36(%rbp)	# tmp103, boundary_in_bytes
	.loc 1 5398 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.394
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L970	#,
	.loc 1 5398 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.393
	jmp	.L971	#
.L970:
	.loc 1 5398 0 discriminator 2
	movl	$32, %eax	#, iftmp.393
.L971:
	.loc 1 5398 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.393
	jge	.L972	#,
	.loc 1 5398 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.396
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L973	#,
	movl	$64, %eax	#, iftmp.395
	jmp	.L974	#
.L973:
	.loc 1 5398 0 discriminator 2
	movl	$32, %eax	#, iftmp.395
.L974:
	.loc 1 5398 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.395
	jge	.L972	#,
	.loc 1 5400 0 is_stmt 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp104
	movq	8(%rax), %rax	# offset_ptr_22(D)->var, tmp105
	movq	%rax, -32(%rbp)	# tmp105, save_var
	.loc 1 5401 0
	movq	-56(%rbp), %rax	# offset_ptr, tmp106
	movq	(%rax), %rax	# offset_ptr_22(D)->constant, tmp107
	movq	%rax, -24(%rbp)	# tmp107, save_constant
.L972:
	.loc 1 5404 0
	movq	-72(%rbp), %rax	# alignment_pad, tmp108
	movq	$0, 8(%rax)	#, alignment_pad_25(D)->var
	.loc 1 5405 0
	movq	-72(%rbp), %rax	# alignment_pad, tmp109
	movq	$0, (%rax)	#, alignment_pad_25(D)->constant
	.loc 1 5407 0
	cmpl	$8, -60(%rbp)	#, boundary
	jle	.L969	#,
	.loc 1 5409 0
	movq	-56(%rbp), %rax	# offset_ptr, tmp110
	movq	8(%rax), %rax	# offset_ptr_22(D)->var, D.22229
	testq	%rax, %rax	# D.22229
	je	.L976	#,
	.loc 1 5417 0
	movl	-60(%rbp), %eax	# boundary, tmp111
	leal	7(%rax), %edx	#, tmp113
	testl	%eax, %eax	# tmp112
	cmovs	%edx, %eax	# tmp113,, tmp112
	sarl	$3, %eax	#, tmp114
	movl	%eax, %ebx	# tmp114, D.22228
	movq	-56(%rbp), %rax	# offset_ptr, tmp115
	movq	8(%rax), %rax	# offset_ptr_22(D)->var, D.22229
	testq	%rax, %rax	# D.22229
	jne	.L977	#,
	.loc 1 5417 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp116
	movq	(%rax), %rax	# offset_ptr_22(D)->constant, D.22230
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22230,
	call	size_int_wide	#
	jmp	.L978	#
.L977:
	.loc 1 5417 0 discriminator 2
	movq	-56(%rbp), %rax	# offset_ptr, tmp117
	movq	(%rax), %rax	# offset_ptr_22(D)->constant, D.22230
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.22230,
	call	size_int_wide	#
	movq	%rax, %r12	#, D.22229
	movq	-56(%rbp), %rax	# offset_ptr, tmp118
	movq	8(%rax), %rdx	# offset_ptr_22(D)->var, D.22229
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22229
	movq	%rdx, %rsi	# D.22229,
	movq	%rax, %rdi	# D.22229,
	call	convert	#
	movq	%r12, %rdx	# D.22229,
	movq	%rax, %rsi	# D.22229,
	movl	$59, %edi	#,
	call	size_binop	#
.L978:
	.loc 1 5417 0 discriminator 3
	movl	%ebx, %esi	# D.22228,
	movq	%rax, %rdi	# iftmp.397,
	call	round_up	#
	.loc 1 5411 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rdx	# offset_ptr, tmp119
	movq	%rax, 8(%rdx)	# D.22229, offset_ptr_22(D)->var
	.loc 1 5419 0 discriminator 3
	movq	-56(%rbp), %rax	# offset_ptr, tmp120
	movq	$0, (%rax)	#, offset_ptr_22(D)->constant
	.loc 1 5420 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.399
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L979	#,
	.loc 1 5420 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.398
	jmp	.L980	#
.L979:
	.loc 1 5420 0 discriminator 2
	movl	$32, %eax	#, iftmp.398
.L980:
	.loc 1 5420 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.398
	jge	.L969	#,
	.loc 1 5420 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.401
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L982	#,
	movl	$64, %eax	#, iftmp.400
	jmp	.L983	#
.L982:
	.loc 1 5420 0 discriminator 2
	movl	$32, %eax	#, iftmp.400
.L983:
	.loc 1 5420 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.400
	jge	.L969	#,
	.loc 1 5421 0 is_stmt 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp121
	movq	8(%rax), %rax	# offset_ptr_22(D)->var, D.22229
	movq	-32(%rbp), %rdx	# save_var, tmp122
	movq	%rax, %rsi	# D.22229,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	-72(%rbp), %rdx	# alignment_pad, tmp123
	movq	%rax, 8(%rdx)	# D.22229, alignment_pad_25(D)->var
	jmp	.L969	#
.L976:
	.loc 1 5430 0
	movq	-56(%rbp), %rax	# offset_ptr, tmp124
	movq	(%rax), %rdx	# offset_ptr_22(D)->constant, D.22230
	movl	-36(%rbp), %eax	# boundary_in_bytes, tmp125
	cltq
	addq	%rdx, %rax	# D.22230, D.22230
	leaq	-1(%rax), %rdx	#, D.22230
	movl	-36(%rbp), %eax	# boundary_in_bytes, tmp126
	negl	%eax	# D.22228
	cltq
	andq	%rax, %rdx	# D.22230, D.22230
	.loc 1 5426 0
	movq	-56(%rbp), %rax	# offset_ptr, tmp127
	movq	%rdx, (%rax)	# D.22230, offset_ptr_22(D)->constant
	.loc 1 5432 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.403
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L984	#,
	.loc 1 5432 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.402
	jmp	.L985	#
.L984:
	.loc 1 5432 0 discriminator 2
	movl	$32, %eax	#, iftmp.402
.L985:
	.loc 1 5432 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.402
	jge	.L969	#,
	.loc 1 5432 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.405
	andl	$33554432, %eax	#, D.22228
	testl	%eax, %eax	# D.22228
	je	.L986	#,
	movl	$64, %eax	#, iftmp.404
	jmp	.L987	#
.L986:
	.loc 1 5432 0 discriminator 2
	movl	$32, %eax	#, iftmp.404
.L987:
	.loc 1 5432 0 discriminator 3
	cmpl	-60(%rbp), %eax	# boundary, iftmp.404
	jge	.L969	#,
	.loc 1 5433 0 is_stmt 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp128
	movq	(%rax), %rax	# offset_ptr_22(D)->constant, D.22230
	subq	-24(%rbp), %rax	# save_constant, D.22230
	movq	%rax, %rdx	# D.22230, D.22230
	movq	-72(%rbp), %rax	# alignment_pad, tmp129
	movq	%rdx, (%rax)	# D.22230, alignment_pad_25(D)->constant
.L969:
	.loc 1 5436 0
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	pad_to_arg_alignment, .-pad_to_arg_alignment
	.type	pad_below, @function
pad_below:
.LFB68:
	.loc 1 5444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# offset_ptr, offset_ptr
	movl	%esi, -60(%rbp)	# passed_mode, passed_mode
	movq	%rdx, -72(%rbp)	# sizetree, sizetree
	.loc 1 5445 0
	cmpl	$51, -60(%rbp)	#, passed_mode
	je	.L989	#,
	.loc 1 5447 0
	movl	-60(%rbp), %eax	# passed_mode, passed_mode.406
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22231
	movzwl	%ax, %eax	# D.22231, D.22232
	movl	target_flags(%rip), %edx	# target_flags, target_flags.408
	andl	$33554432, %edx	#, D.22232
	testl	%edx, %edx	# D.22232
	je	.L990	#,
	.loc 1 5447 0 is_stmt 0 discriminator 1
	movl	$64, %ecx	#, iftmp.407
	jmp	.L991	#
.L990:
	.loc 1 5447 0 discriminator 2
	movl	$32, %ecx	#, iftmp.407
.L991:
	.loc 1 5447 0 discriminator 3
	cltd
	idivl	%ecx	# iftmp.407
	movl	%edx, %ecx	# tmp125, tmp125
	movl	%ecx, %eax	# tmp125, D.22232
	testl	%eax, %eax	# D.22232
	je	.L988	#,
	.loc 1 5449 0 is_stmt 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp127
	movq	(%rax), %rcx	# offset_ptr_16(D)->constant, D.22233
	movl	-60(%rbp), %eax	# passed_mode, passed_mode.409
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.22231
	movzwl	%ax, %edx	# D.22231, D.22232
	movl	target_flags(%rip), %eax	# target_flags, target_flags.411
	andl	$33554432, %eax	#, D.22232
	testl	%eax, %eax	# D.22232
	je	.L993	#,
	.loc 1 5449 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.410
	jmp	.L994	#
.L993:
	.loc 1 5449 0 discriminator 2
	movl	$32, %eax	#, iftmp.410
.L994:
	.loc 1 5449 0 discriminator 3
	addl	%edx, %eax	# D.22232, D.22232
	subl	$1, %eax	#, D.22232
	.loc 1 5450 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %edx	# target_flags, target_flags.413
	andl	$33554432, %edx	#, D.22232
	testl	%edx, %edx	# D.22232
	je	.L995	#,
	.loc 1 5450 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.412
	jmp	.L996	#
.L995:
	.loc 1 5450 0 discriminator 2
	movl	$32, %ebx	#, iftmp.412
.L996:
	.loc 1 5450 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.412
	movl	%eax, %edx	# tmp129, D.22232
	movl	target_flags(%rip), %eax	# target_flags, target_flags.415
	andl	$33554432, %eax	#, D.22232
	testl	%eax, %eax	# D.22232
	je	.L997	#,
	.loc 1 5450 0 discriminator 1
	movl	$64, %eax	#, iftmp.414
	jmp	.L998	#
.L997:
	.loc 1 5450 0 discriminator 2
	movl	$32, %eax	#, iftmp.414
.L998:
	.loc 1 5450 0 discriminator 3
	imull	%edx, %eax	# D.22232, D.22232
	leal	7(%rax), %edx	#, tmp132
	testl	%eax, %eax	# tmp131
	cmovs	%edx, %eax	# tmp132,, tmp131
	sarl	$3, %eax	#, tmp133
	movl	%eax, %edx	# tmp133, D.22232
	.loc 1 5451 0 is_stmt 1 discriminator 3
	movl	-60(%rbp), %eax	# passed_mode, passed_mode.416
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22234
	movzbl	%al, %eax	# D.22234, D.22232
	subl	%eax, %edx	# D.22232, D.22232
	movl	%edx, %eax	# D.22232, D.22232
	.loc 1 5449 0 discriminator 3
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.22233
	movq	-56(%rbp), %rax	# offset_ptr, tmp135
	movq	%rdx, (%rax)	# D.22233, offset_ptr_16(D)->constant
	jmp	.L988	#
.L989:
	.loc 1 5455 0
	movq	-72(%rbp), %rax	# sizetree, tmp136
	movzbl	16(%rax), %eax	# sizetree_44(D)->common.code, D.22234
	cmpb	$25, %al	#, D.22234
	jne	.L1000	#,
	.loc 1 5456 0
	movq	-72(%rbp), %rax	# sizetree, tmp137
	movq	32(%rax), %rax	# sizetree_44(D)->int_cst.int_cst.low, D.22235
	salq	$3, %rax	#, D.22235
	movl	target_flags(%rip), %edx	# target_flags, target_flags.418
	andl	$33554432, %edx	#, D.22232
	testl	%edx, %edx	# D.22232
	je	.L1001	#,
	.loc 1 5456 0 is_stmt 0 discriminator 1
	movl	$64, %ecx	#, iftmp.417
	jmp	.L1002	#
.L1001:
	.loc 1 5456 0 discriminator 2
	movl	$32, %ecx	#, iftmp.417
.L1002:
	.loc 1 5456 0 discriminator 3
	movl	$0, %edx	#, tmp138
	divq	%rcx	# iftmp.417
	movq	%rdx, %rcx	# tmp138, tmp138
	movq	%rcx, %rax	# tmp138, D.22235
	testq	%rax, %rax	# D.22235
	je	.L988	#,
.L1000:
.LBB86:
	.loc 1 5459 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.420
	andl	$33554432, %eax	#, D.22232
	testl	%eax, %eax	# D.22232
	je	.L1003	#,
	.loc 1 5459 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.419
	jmp	.L1004	#
.L1003:
	.loc 1 5459 0 discriminator 2
	movl	$4, %eax	#, iftmp.419
.L1004:
	.loc 1 5459 0 discriminator 3
	movq	-72(%rbp), %rdx	# sizetree, tmp140
	movl	%eax, %esi	# iftmp.419,
	movq	%rdx, %rdi	# tmp140,
	call	round_up	#
	movq	%rax, -40(%rbp)	# tmp141, s2
.LBB87:
	.loc 1 5461 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# s2, tmp142
	movq	%rax, -32(%rbp)	# tmp142, inc
	movq	-32(%rbp), %rax	# inc, tmp143
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	host_integerp	#
	testl	%eax, %eax	# D.22232
	je	.L1005	#,
	.loc 1 5461 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp144
	movq	(%rax), %rbx	# offset_ptr_16(D)->constant, D.22233
	movq	-32(%rbp), %rax	# inc, tmp145
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	tree_low_cst	#
	leaq	(%rbx,%rax), %rdx	#, D.22233
	movq	-56(%rbp), %rax	# offset_ptr, tmp146
	movq	%rdx, (%rax)	# D.22233, offset_ptr_16(D)->constant
	jmp	.L1006	#
.L1005:
	.loc 1 5461 0 discriminator 2
	movq	-56(%rbp), %rax	# offset_ptr, tmp147
	movq	8(%rax), %rax	# offset_ptr_16(D)->var, D.22236
	testq	%rax, %rax	# D.22236
	jne	.L1007	#,
	.loc 1 5461 0 discriminator 1
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22236
	movq	-32(%rbp), %rdx	# inc, tmp148
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# D.22236,
	call	convert	#
	movq	-56(%rbp), %rdx	# offset_ptr, tmp149
	movq	%rax, 8(%rdx)	# D.22236, offset_ptr_16(D)->var
	jmp	.L1006	#
.L1007:
	.loc 1 5461 0 discriminator 2
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22236
	movq	-32(%rbp), %rdx	# inc, tmp150
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# D.22236,
	call	convert	#
	movq	%rax, %rdx	#, D.22236
	movq	-56(%rbp), %rax	# offset_ptr, tmp151
	movq	8(%rax), %rax	# offset_ptr_16(D)->var, D.22236
	movq	%rax, %rsi	# D.22236,
	movl	$59, %edi	#,
	call	size_binop	#
	movq	-56(%rbp), %rdx	# offset_ptr, tmp152
	movq	%rax, 8(%rdx)	# D.22236, offset_ptr_16(D)->var
.L1006:
.LBE87:
.LBB88:
	.loc 1 5462 0 is_stmt 1
	movq	-72(%rbp), %rax	# sizetree, tmp153
	movq	%rax, -24(%rbp)	# tmp153, dec
	movq	-24(%rbp), %rax	# dec, tmp154
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	host_integerp	#
	testl	%eax, %eax	# D.22232
	je	.L1008	#,
	.loc 1 5462 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# offset_ptr, tmp155
	movq	(%rax), %rbx	# offset_ptr_16(D)->constant, D.22233
	movq	-24(%rbp), %rax	# dec, tmp156
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	tree_low_cst	#
	subq	%rax, %rbx	# D.22233, D.22233
	movq	%rbx, %rdx	# D.22233, D.22233
	movq	-56(%rbp), %rax	# offset_ptr, tmp157
	movq	%rdx, (%rax)	# D.22233, offset_ptr_16(D)->constant
	jmp	.L988	#
.L1008:
	.loc 1 5462 0 discriminator 2
	movq	-56(%rbp), %rax	# offset_ptr, tmp158
	movq	8(%rax), %rax	# offset_ptr_16(D)->var, D.22236
	testq	%rax, %rax	# D.22236
	jne	.L1009	#,
	.loc 1 5462 0 discriminator 1
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22236
	movq	-24(%rbp), %rdx	# dec, tmp159
	movq	%rdx, %rsi	# tmp159,
	movq	%rax, %rdi	# D.22236,
	call	convert	#
	movq	%rax, %rbx	#, D.22236
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	size_int_wide	#
	movq	%rbx, %rdx	# D.22236,
	movq	%rax, %rsi	# D.22236,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	-56(%rbp), %rdx	# offset_ptr, tmp160
	movq	%rax, 8(%rdx)	# D.22236, offset_ptr_16(D)->var
	jmp	.L988	#
.L1009:
	.loc 1 5462 0 discriminator 2
	movq	sizetype_tab+8(%rip), %rax	# sizetype_tab, D.22236
	movq	-24(%rbp), %rdx	# dec, tmp161
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# D.22236,
	call	convert	#
	movq	%rax, %rdx	#, D.22236
	movq	-56(%rbp), %rax	# offset_ptr, tmp162
	movq	8(%rax), %rax	# offset_ptr_16(D)->var, D.22236
	movq	%rax, %rsi	# D.22236,
	movl	$60, %edi	#,
	call	size_binop	#
	movq	-56(%rbp), %rdx	# offset_ptr, tmp163
	movq	%rax, 8(%rdx)	# D.22236, offset_ptr_16(D)->var
.L988:
.LBE88:
.LBE86:
	.loc 1 5465 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	pad_below, .-pad_below
	.section	.rodata
	.align 8
.LC3:
	.string	"`%s' might be used uninitialized in this function"
	.align 8
.LC4:
	.string	"variable `%s' might be clobbered by `longjmp' or `vfork'"
	.text
	.globl	uninitialized_vars_warning
	.type	uninitialized_vars_warning, @function
uninitialized_vars_warning:
.LFB69:
	.loc 1 5476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 5478 0
	movq	-24(%rbp), %rax	# block, tmp97
	movq	32(%rax), %rax	# block_9(D)->block.vars, tmp98
	movq	%rax, -16(%rbp)	# tmp98, decl
	jmp	.L1011	#
.L1026:
	.loc 1 5480 0
	movl	warn_uninitialized(%rip), %eax	# warn_uninitialized, warn_uninitialized.421
	testl	%eax, %eax	# warn_uninitialized.421
	je	.L1012	#,
	.loc 1 5481 0
	movq	-16(%rbp), %rax	# decl, tmp99
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22238
	cmpb	$34, %al	#, D.22238
	jne	.L1012	#,
	.loc 1 5486 0
	movq	-16(%rbp), %rax	# decl, tmp100
	movq	8(%rax), %rax	# decl_1->common.type, D.22239
	movzbl	16(%rax), %eax	# _13->common.code, D.22238
	cmpb	$18, %al	#, D.22238
	je	.L1012	#,
	.loc 1 5486 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp101
	movq	8(%rax), %rax	# decl_1->common.type, D.22239
	movzbl	16(%rax), %eax	# _15->common.code, D.22238
	cmpb	$20, %al	#, D.22238
	je	.L1012	#,
	movq	-16(%rbp), %rax	# decl, tmp102
	movq	8(%rax), %rax	# decl_1->common.type, D.22239
	movzbl	16(%rax), %eax	# _17->common.code, D.22238
	cmpb	$21, %al	#, D.22238
	je	.L1012	#,
	movq	-16(%rbp), %rax	# decl, tmp103
	movq	8(%rax), %rax	# decl_1->common.type, D.22239
	movzbl	16(%rax), %eax	# _19->common.code, D.22238
	cmpb	$22, %al	#, D.22238
	je	.L1012	#,
	movq	-16(%rbp), %rax	# decl, tmp104
	movq	8(%rax), %rax	# decl_1->common.type, D.22239
	movzbl	16(%rax), %eax	# _21->common.code, D.22238
	cmpb	$19, %al	#, D.22238
	je	.L1012	#,
	.loc 1 5487 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp105
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1013	#,
	.loc 1 5487 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp106
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	setne	%al	#, iftmp.422
	jmp	.L1014	#
.L1013:
	.loc 1 5487 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp108
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	setne	%al	#, iftmp.422
.L1014:
	.loc 1 5487 0 discriminator 3
	testb	%al, %al	# iftmp.422
	je	.L1012	#,
	.loc 1 5488 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp109
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1015	#,
	.loc 1 5488 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp110
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.423
	jmp	.L1016	#
.L1015:
	.loc 1 5488 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp112
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.423
.L1016:
	.loc 1 5488 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.423_4->code, D.22241
	cmpw	$61, %ax	#, D.22241
	jne	.L1012	#,
	.loc 1 5496 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp113
	movq	104(%rax), %rax	# decl_1->decl.initial, D.22239
	testq	%rax, %rax	# D.22239
	jne	.L1012	#,
	.loc 1 5497 0
	movq	-16(%rbp), %rax	# decl, tmp114
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1017	#,
	.loc 1 5497 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp115
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.424
	jmp	.L1018	#
.L1017:
	.loc 1 5497 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp116
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp117
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.424
.L1018:
	.loc 1 5497 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.424_5->fld[0].rtuint, D.22242
	movl	%eax, %edi	# D.22242,
	call	regno_uninitialized	#
	testl	%eax, %eax	# D.22243
	je	.L1012	#,
	.loc 1 5498 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp118
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp118,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1012:
	.loc 1 5500 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.425
	testl	%eax, %eax	# extra_warnings.425
	je	.L1019	#,
	.loc 1 5501 0
	movq	-16(%rbp), %rax	# decl, tmp119
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22238
	cmpb	$34, %al	#, D.22238
	jne	.L1019	#,
	.loc 1 5502 0
	movq	-16(%rbp), %rax	# decl, tmp120
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1020	#,
	.loc 1 5502 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp121
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	setne	%al	#, iftmp.426
	jmp	.L1021	#
.L1020:
	.loc 1 5502 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp122
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp123
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	setne	%al	#, iftmp.426
.L1021:
	.loc 1 5502 0 discriminator 3
	testb	%al, %al	# iftmp.426
	je	.L1019	#,
	.loc 1 5503 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp124
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1022	#,
	.loc 1 5503 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp125
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.427
	jmp	.L1023	#
.L1022:
	.loc 1 5503 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp127
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.427
.L1023:
	.loc 1 5503 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.427_7->code, D.22241
	cmpw	$61, %ax	#, D.22241
	jne	.L1019	#,
	.loc 1 5504 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp128
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22240
	testq	%rax, %rax	# D.22240
	je	.L1024	#,
	.loc 1 5504 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp129
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.428
	jmp	.L1025	#
.L1024:
	.loc 1 5504 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp130
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp131
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.428
.L1025:
	.loc 1 5504 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.428_8->fld[0].rtuint, D.22242
	movl	%eax, %edi	# D.22243,
	call	regno_clobbered_at_setjmp	#
	testl	%eax, %eax	# D.22243
	je	.L1019	#,
	.loc 1 5505 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp132
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp132,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1019:
	.loc 1 5478 0
	movq	-16(%rbp), %rax	# decl, tmp133
	movq	(%rax), %rax	# decl_1->common.chain, tmp134
	movq	%rax, -16(%rbp)	# tmp134, decl
.L1011:
	.loc 1 5478 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, decl
	jne	.L1026	#,
	.loc 1 5508 0 is_stmt 1
	movq	-24(%rbp), %rax	# block, tmp135
	movq	40(%rax), %rax	# block_9(D)->block.subblocks, tmp136
	movq	%rax, -8(%rbp)	# tmp136, sub
	jmp	.L1027	#
.L1028:
	.loc 1 5509 0 discriminator 2
	movq	-8(%rbp), %rax	# sub, tmp137
	movq	%rax, %rdi	# tmp137,
	call	uninitialized_vars_warning	#
	.loc 1 5508 0 discriminator 2
	movq	-8(%rbp), %rax	# sub, tmp138
	movq	(%rax), %rax	# sub_2->common.chain, tmp139
	movq	%rax, -8(%rbp)	# tmp139, sub
.L1027:
	.loc 1 5508 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, sub
	jne	.L1028	#,
	.loc 1 5510 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	uninitialized_vars_warning, .-uninitialized_vars_warning
	.section	.rodata
	.align 8
.LC5:
	.string	"argument `%s' might be clobbered by `longjmp' or `vfork'"
	.text
	.globl	setjmp_args_warning
	.type	setjmp_args_warning, @function
setjmp_args_warning:
.LFB70:
	.loc 1 5517 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5519 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.429
	movq	88(%rax), %rax	# current_function_decl.429_5->decl.arguments, tmp72
	movq	%rax, -8(%rbp)	# tmp72, decl
	jmp	.L1030	#
.L1038:
	.loc 1 5521 0
	movq	-8(%rbp), %rax	# decl, tmp73
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22246
	testq	%rax, %rax	# D.22246
	je	.L1031	#,
	.loc 1 5521 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp74
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22246
	testq	%rax, %rax	# D.22246
	setne	%al	#, iftmp.430
	jmp	.L1032	#
.L1031:
	.loc 1 5521 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp75
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp76
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22246
	testq	%rax, %rax	# D.22246
	setne	%al	#, iftmp.430
.L1032:
	.loc 1 5521 0 discriminator 3
	testb	%al, %al	# iftmp.430
	je	.L1033	#,
	.loc 1 5522 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp77
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22246
	testq	%rax, %rax	# D.22246
	je	.L1034	#,
	.loc 1 5522 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp78
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.431
	jmp	.L1035	#
.L1034:
	.loc 1 5522 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp79
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp80
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.431
.L1035:
	.loc 1 5522 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.431_3->code, D.22247
	cmpw	$61, %ax	#, D.22247
	jne	.L1033	#,
	.loc 1 5523 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp81
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22246
	testq	%rax, %rax	# D.22246
	je	.L1036	#,
	.loc 1 5523 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp82
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.432
	jmp	.L1037	#
.L1036:
	.loc 1 5523 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp84
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.432
.L1037:
	.loc 1 5523 0 discriminator 3
	movl	8(%rax), %eax	# iftmp.432_4->fld[0].rtuint, D.22248
	movl	%eax, %edi	# D.22249,
	call	regno_clobbered_at_setjmp	#
	testl	%eax, %eax	# D.22249
	je	.L1033	#,
	.loc 1 5524 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp85
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1033:
	.loc 1 5520 0
	movq	-8(%rbp), %rax	# decl, tmp86
	movq	(%rax), %rax	# decl_1->common.chain, tmp87
	movq	%rax, -8(%rbp)	# tmp87, decl
.L1030:
	.loc 1 5519 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, decl
	jne	.L1038	#,
	.loc 1 5526 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	setjmp_args_warning, .-setjmp_args_warning
	.globl	setjmp_protect
	.type	setjmp_protect, @function
setjmp_protect:
.LFB71:
	.loc 1 5534 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	.loc 1 5536 0
	movq	-24(%rbp), %rax	# block, tmp79
	movq	32(%rax), %rax	# block_7(D)->block.vars, tmp80
	movq	%rax, -16(%rbp)	# tmp80, decl
	jmp	.L1040	#
.L1053:
	.loc 1 5537 0
	movq	-16(%rbp), %rax	# decl, tmp81
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22251
	cmpb	$34, %al	#, D.22251
	je	.L1041	#,
	.loc 1 5538 0
	movq	-16(%rbp), %rax	# decl, tmp82
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22251
	cmpb	$35, %al	#, D.22251
	jne	.L1042	#,
.L1041:
	.loc 1 5539 0
	movq	-16(%rbp), %rax	# decl, tmp83
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	je	.L1043	#,
	.loc 1 5539 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp84
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	setne	%al	#, iftmp.433
	jmp	.L1044	#
.L1043:
	.loc 1 5539 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp85
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	setne	%al	#, iftmp.433
.L1044:
	.loc 1 5539 0 discriminator 3
	testb	%al, %al	# iftmp.433
	je	.L1042	#,
	.loc 1 5540 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp87
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	je	.L1045	#,
	.loc 1 5540 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp88
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.434
	jmp	.L1046	#
.L1045:
	.loc 1 5540 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp89
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp90
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.434
.L1046:
	.loc 1 5540 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.434_4->code, D.22253
	cmpw	$61, %ax	#, D.22253
	je	.L1047	#,
	.loc 1 5541 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp91
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	je	.L1048	#,
	.loc 1 5541 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp92
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.435
	jmp	.L1049	#
.L1048:
	.loc 1 5541 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp93
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp94
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.435
.L1049:
	.loc 1 5541 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.435_5->code, D.22253
	cmpw	$66, %ax	#, D.22253
	jne	.L1042	#,
	.loc 1 5542 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp95
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22252
	testq	%rax, %rax	# D.22252
	je	.L1050	#,
	.loc 1 5542 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp96
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.436
	jmp	.L1051	#
.L1050:
	.loc 1 5542 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp97
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl, tmp98
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.436
.L1051:
	.loc 1 5542 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.436_6->fld[0].rtx, D.22252
	movzwl	(%rax), %eax	# _27->code, D.22253
	cmpw	$70, %ax	#, D.22253
	jne	.L1042	#,
.L1047:
	.loc 1 5548 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp99
	movq	112(%rax), %rax	# decl_1->decl.abstract_origin, D.22254
	testq	%rax, %rax	# D.22254
	je	.L1052	#,
	.loc 1 5548 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl, tmp100
	movq	112(%rax), %rax	# decl_1->decl.abstract_origin, D.22254
	cmpq	-16(%rbp), %rax	# decl, D.22254
	jne	.L1042	#,
.L1052:
	.loc 1 5556 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl, tmp101
	movzbl	49(%rax), %eax	# *decl_1, D.22251
	andl	$4, %eax	#, D.22251
	.loc 1 5549 0
	testb	%al, %al	# D.22251
	jne	.L1042	#,
	.loc 1 5557 0
	movq	-16(%rbp), %rax	# decl, tmp102
	movq	%rax, %rdi	# tmp102,
	call	put_var_into_stack	#
.L1042:
	.loc 1 5536 0
	movq	-16(%rbp), %rax	# decl, tmp103
	movq	(%rax), %rax	# decl_1->common.chain, tmp104
	movq	%rax, -16(%rbp)	# tmp104, decl
.L1040:
	.loc 1 5536 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, decl
	jne	.L1053	#,
	.loc 1 5558 0 is_stmt 1
	movq	-24(%rbp), %rax	# block, tmp105
	movq	40(%rax), %rax	# block_7(D)->block.subblocks, tmp106
	movq	%rax, -8(%rbp)	# tmp106, sub
	jmp	.L1054	#
.L1055:
	.loc 1 5559 0 discriminator 2
	movq	-8(%rbp), %rax	# sub, tmp107
	movq	%rax, %rdi	# tmp107,
	call	setjmp_protect	#
	.loc 1 5558 0 discriminator 2
	movq	-8(%rbp), %rax	# sub, tmp108
	movq	(%rax), %rax	# sub_2->common.chain, tmp109
	movq	%rax, -8(%rbp)	# tmp109, sub
.L1054:
	.loc 1 5558 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, sub
	jne	.L1055	#,
	.loc 1 5560 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	setjmp_protect, .-setjmp_protect
	.globl	setjmp_protect_args
	.type	setjmp_protect_args, @function
setjmp_protect_args:
.LFB72:
	.loc 1 5566 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5568 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.437
	movq	88(%rax), %rax	# current_function_decl.437_6->decl.arguments, tmp78
	movq	%rax, -8(%rbp)	# tmp78, decl
	jmp	.L1057	#
.L1069:
	.loc 1 5570 0
	movq	-8(%rbp), %rax	# decl, tmp79
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22255
	cmpb	$34, %al	#, D.22255
	je	.L1058	#,
	.loc 1 5571 0
	movq	-8(%rbp), %rax	# decl, tmp80
	movzbl	16(%rax), %eax	# decl_1->common.code, D.22255
	cmpb	$35, %al	#, D.22255
	jne	.L1059	#,
.L1058:
	.loc 1 5572 0
	movq	-8(%rbp), %rax	# decl, tmp81
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	je	.L1060	#,
	.loc 1 5572 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp82
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	setne	%al	#, iftmp.438
	jmp	.L1061	#
.L1060:
	.loc 1 5572 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp83
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp84
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	setne	%al	#, iftmp.438
.L1061:
	.loc 1 5572 0 discriminator 3
	testb	%al, %al	# iftmp.438
	je	.L1059	#,
	.loc 1 5573 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp85
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	je	.L1062	#,
	.loc 1 5573 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp86
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.439
	jmp	.L1063	#
.L1062:
	.loc 1 5573 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp88
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.439
.L1063:
	.loc 1 5573 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.439_3->code, D.22257
	cmpw	$61, %ax	#, D.22257
	je	.L1064	#,
	.loc 1 5574 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp89
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	je	.L1065	#,
	.loc 1 5574 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp90
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.440
	jmp	.L1066	#
.L1065:
	.loc 1 5574 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp92
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.440
.L1066:
	.loc 1 5574 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.440_4->code, D.22257
	cmpw	$66, %ax	#, D.22257
	jne	.L1059	#,
	.loc 1 5575 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp93
	movq	144(%rax), %rax	# decl_1->decl.rtl, D.22256
	testq	%rax, %rax	# D.22256
	je	.L1067	#,
	.loc 1 5575 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp94
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.441
	jmp	.L1068	#
.L1067:
	.loc 1 5575 0 discriminator 2
	movq	-8(%rbp), %rax	# decl, tmp95
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# decl, tmp96
	movq	144(%rax), %rax	# decl_1->decl.rtl, iftmp.441
.L1068:
	.loc 1 5575 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.441_5->fld[0].rtx, D.22256
	movzwl	(%rax), %eax	# _26->code, D.22257
	cmpw	$70, %ax	#, D.22257
	jne	.L1059	#,
.L1064:
	.loc 1 5583 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp97
	movzbl	49(%rax), %eax	# *decl_1, D.22255
	andl	$4, %eax	#, D.22255
	.loc 1 5576 0
	testb	%al, %al	# D.22255
	jne	.L1059	#,
	.loc 1 5584 0
	movq	-8(%rbp), %rax	# decl, tmp98
	movq	%rax, %rdi	# tmp98,
	call	put_var_into_stack	#
.L1059:
	.loc 1 5569 0
	movq	-8(%rbp), %rax	# decl, tmp99
	movq	(%rax), %rax	# decl_1->common.chain, tmp100
	movq	%rax, -8(%rbp)	# tmp100, decl
.L1057:
	.loc 1 5568 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, decl
	jne	.L1069	#,
	.loc 1 5585 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	setjmp_protect_args, .-setjmp_protect_args
	.globl	lookup_static_chain
	.type	lookup_static_chain, @function
lookup_static_chain:
.LFB73:
	.loc 1 5593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 5594 0
	movq	-24(%rbp), %rax	# decl, tmp69
	movq	%rax, %rdi	# tmp69,
	call	decl_function_context	#
	movq	%rax, -8(%rbp)	# tmp70, context
	.loc 1 5597 0
	cmpq	$0, -8(%rbp)	#, context
	je	.L1071	#,
	.loc 1 5598 0
	movq	-24(%rbp), %rax	# decl, tmp71
	movzbl	16(%rax), %eax	# decl_3(D)->common.code, D.22259
	cmpb	$30, %al	#, D.22259
	jne	.L1072	#,
	.loc 1 5598 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp72
	movzbl	49(%rax), %eax	# *decl_3(D), D.22259
	andl	$4, %eax	#, D.22259
	testb	%al, %al	# D.22259
	je	.L1072	#,
.L1071:
	.loc 1 5599 0 is_stmt 1
	movl	$0, %eax	#, D.22258
	jmp	.L1073	#
.L1072:
	.loc 1 5605 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.442
	cmpq	%rax, -8(%rbp)	# current_function_decl.442, context
	je	.L1074	#,
	.loc 1 5605 0 is_stmt 0 discriminator 1
	movq	inline_function_decl(%rip), %rax	# inline_function_decl, inline_function_decl.443
	cmpq	%rax, -8(%rbp)	# inline_function_decl.443, context
	jne	.L1075	#,
.L1074:
	.loc 1 5606 0 is_stmt 1
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22258
	jmp	.L1073	#
.L1075:
	.loc 1 5608 0
	movq	cfun(%rip), %rax	# cfun, cfun.444
	movq	272(%rax), %rax	# cfun.444_10->x_context_display, tmp73
	movq	%rax, -16(%rbp)	# tmp73, link
	jmp	.L1076	#
.L1078:
	.loc 1 5609 0
	movq	-16(%rbp), %rax	# link, tmp74
	movq	24(%rax), %rax	# link_1->list.purpose, D.22260
	cmpq	-8(%rbp), %rax	# context, D.22260
	jne	.L1077	#,
	.loc 1 5610 0
	movq	-16(%rbp), %rax	# link, tmp75
	movq	32(%rax), %rax	# link_1->list.value, D.22260
	movq	40(%rax), %rax	# _13->exp.operands, D.22258
	jmp	.L1073	#
.L1077:
	.loc 1 5608 0
	movq	-16(%rbp), %rax	# link, tmp76
	movq	(%rax), %rax	# link_1->common.chain, tmp77
	movq	%rax, -16(%rbp)	# tmp77, link
.L1076:
	.loc 1 5608 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L1078	#,
	.loc 1 5612 0 is_stmt 1
	movl	$__FUNCTION__.14725, %edx	#,
	movl	$5612, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1073:
	.loc 1 5613 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	lookup_static_chain, .-lookup_static_chain
	.globl	fix_lexical_addr
	.type	fix_lexical_addr, @function
fix_lexical_addr:
.LFB74:
	.loc 1 5623 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# addr, addr
	movq	%rsi, -80(%rbp)	# var, var
	.loc 1 5626 0
	movq	-80(%rbp), %rax	# var, tmp85
	movq	%rax, %rdi	# tmp85,
	call	decl_function_context	#
	movq	%rax, -24(%rbp)	# tmp86, context
	.loc 1 5628 0
	movq	$0, -40(%rbp)	#, base
	.loc 1 5631 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.445
	cmpq	%rax, -24(%rbp)	# current_function_decl.445, context
	je	.L1080	#,
	.loc 1 5631 0 is_stmt 0 discriminator 1
	movq	inline_function_decl(%rip), %rax	# inline_function_decl, inline_function_decl.446
	cmpq	%rax, -24(%rbp)	# inline_function_decl.446, context
	jne	.L1081	#,
.L1080:
	.loc 1 5632 0 is_stmt 1
	movq	-72(%rbp), %rax	# addr, D.22261
	jmp	.L1082	#
.L1081:
	.loc 1 5634 0
	movq	-24(%rbp), %rax	# context, tmp87
	movq	%rax, %rdi	# tmp87,
	call	find_function_data	#
	movq	%rax, -16(%rbp)	# tmp88, fp
	.loc 1 5636 0
	movq	-72(%rbp), %rax	# addr, tmp89
	movzwl	(%rax), %eax	# addr_15(D)->code, D.22262
	cmpw	$70, %ax	#, D.22262
	jne	.L1083	#,
	.loc 1 5636 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# addr, tmp90
	movq	8(%rax), %rax	# addr_15(D)->fld[0].rtx, D.22263
	movzwl	(%rax), %eax	# _17->code, D.22262
	cmpw	$66, %ax	#, D.22262
	jne	.L1083	#,
	.loc 1 5637 0 is_stmt 1
	movq	-72(%rbp), %rax	# addr, tmp91
	movq	8(%rax), %rax	# addr_15(D)->fld[0].rtx, D.22263
	movq	8(%rax), %rax	# _19->fld[0].rtx, tmp92
	movq	%rax, -72(%rbp)	# tmp92, addr
.L1083:
	.loc 1 5640 0
	movq	-72(%rbp), %rax	# addr, tmp93
	movzwl	(%rax), %eax	# addr_1->code, D.22262
	cmpw	$61, %ax	#, D.22262
	jne	.L1084	#,
	.loc 1 5641 0
	movq	-72(%rbp), %rax	# addr, tmp94
	movq	%rax, -56(%rbp)	# tmp94, basereg
	movq	$0, -48(%rbp)	#, displacement
	jmp	.L1085	#
.L1084:
	.loc 1 5642 0
	movq	-72(%rbp), %rax	# addr, tmp95
	movzwl	(%rax), %eax	# addr_1->code, D.22262
	cmpw	$75, %ax	#, D.22262
	jne	.L1086	#,
	.loc 1 5642 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# addr, tmp96
	movq	16(%rax), %rax	# addr_1->fld[1].rtx, D.22263
	movzwl	(%rax), %eax	# _25->code, D.22262
	cmpw	$54, %ax	#, D.22262
	jne	.L1086	#,
	.loc 1 5643 0 is_stmt 1
	movq	-72(%rbp), %rax	# addr, tmp97
	movq	8(%rax), %rax	# addr_1->fld[0].rtx, tmp98
	movq	%rax, -56(%rbp)	# tmp98, basereg
	movq	-72(%rbp), %rax	# addr, tmp99
	movq	16(%rax), %rax	# addr_1->fld[1].rtx, D.22263
	movq	8(%rax), %rax	# _28->fld[0].rtwint, tmp100
	movq	%rax, -48(%rbp)	# tmp100, displacement
	jmp	.L1085	#
.L1086:
	.loc 1 5645 0
	movl	$__FUNCTION__.14735, %edx	#,
	movl	$5645, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1085:
	.loc 1 5649 0
	movq	-16(%rbp), %rax	# fp, tmp101
	movq	128(%rax), %rax	# fp_14->internal_arg_pointer, D.22263
	cmpq	-56(%rbp), %rax	# basereg, D.22263
	jne	.L1087	#,
.LBB89:
	.loc 1 5663 0
	movq	-16(%rbp), %rax	# fp, tmp102
	movq	%rax, %rdi	# tmp102,
	call	get_arg_pointer_save_area	#
	movq	%rax, -8(%rbp)	# tmp103, addr
	.loc 1 5664 0
	movq	-8(%rbp), %rax	# addr, tmp104
	movq	8(%rax), %rax	# addr_31->fld[0].rtx, D.22263
	movq	-80(%rbp), %rdx	# var, tmp105
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# D.22263,
	call	fix_lexical_addr	#
	movq	%rax, -8(%rbp)	# tmp106, addr
	.loc 1 5665 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.448
	andl	$33554432, %eax	#, D.22264
	testl	%eax, %eax	# D.22264
	je	.L1088	#,
	.loc 1 5665 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.447
	jmp	.L1089	#
.L1088:
	.loc 1 5665 0 discriminator 2
	movl	$4, %eax	#, iftmp.447
.L1089:
	.loc 1 5665 0 discriminator 3
	movq	-8(%rbp), %rdx	# addr, tmp107
	movq	%rdx, %rsi	# tmp107,
	movl	%eax, %edi	# iftmp.447,
	call	memory_address	#
	movq	%rax, -8(%rbp)	# tmp108, addr
	.loc 1 5667 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.450
	andl	$33554432, %eax	#, D.22264
	testl	%eax, %eax	# D.22264
	je	.L1090	#,
	.loc 1 5667 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.449
	jmp	.L1091	#
.L1090:
	.loc 1 5667 0 discriminator 2
	movl	$4, %eax	#, iftmp.449
.L1091:
	.loc 1 5667 0 discriminator 1
	movq	-8(%rbp), %rdx	# addr, tmp109
	movq	%rdx, %rsi	# tmp109,
	movl	%eax, %edi	# iftmp.449,
	call	gen_rtx_MEM	#
	movq	%rax, -40(%rbp)	# tmp110, base
	.loc 1 5668 0 is_stmt 1 discriminator 1
	call	get_frame_alias_set	#
	movq	%rax, %rdx	#, D.22265
	movq	-40(%rbp), %rax	# base, tmp111
	movq	%rdx, %rsi	# D.22265,
	movq	%rax, %rdi	# tmp111,
	call	set_mem_alias_set	#
	.loc 1 5669 0 discriminator 1
	movq	-40(%rbp), %rax	# base, tmp112
	movq	%rax, %rdi	# tmp112,
	call	copy_to_reg	#
	movq	%rax, -40(%rbp)	# tmp113, base
.LBE89:
	jmp	.L1092	#
.L1087:
	.loc 1 5676 0
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.22263
	cmpq	-56(%rbp), %rax	# basereg, D.22263
	jne	.L1092	#,
.LBB90:
	.loc 1 5682 0
	movq	cfun(%rip), %rax	# cfun, cfun.451
	movq	272(%rax), %rax	# cfun.451_47->x_context_display, tmp114
	movq	%rax, -32(%rbp)	# tmp114, link
	jmp	.L1093	#
.L1095:
	.loc 1 5683 0
	movq	-32(%rbp), %rax	# link, tmp115
	movq	24(%rax), %rax	# link_5->list.purpose, D.22266
	cmpq	-24(%rbp), %rax	# context, D.22266
	jne	.L1094	#,
	.loc 1 5685 0
	movq	-32(%rbp), %rax	# link, tmp116
	movq	32(%rax), %rax	# link_5->list.value, D.22266
	movq	40(%rax), %rax	# _50->exp.operands, tmp117
	movq	%rax, -40(%rbp)	# tmp117, base
	.loc 1 5686 0
	jmp	.L1092	#
.L1094:
	.loc 1 5682 0
	movq	-32(%rbp), %rax	# link, tmp118
	movq	(%rax), %rax	# link_5->common.chain, tmp119
	movq	%rax, -32(%rbp)	# tmp119, link
.L1093:
	.loc 1 5682 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L1095	#,
.L1092:
.LBE90:
	.loc 1 5690 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, base
	jne	.L1096	#,
	.loc 1 5691 0
	movl	$__FUNCTION__.14735, %edx	#,
	movl	$5691, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1096:
	.loc 1 5695 0
	movq	-48(%rbp), %rdx	# displacement, tmp120
	movq	-40(%rbp), %rax	# base, tmp121
	movq	%rdx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	plus_constant_wide	#
.L1082:
	.loc 1 5696 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	fix_lexical_addr, .-fix_lexical_addr
	.globl	trampoline_address
	.type	trampoline_address, @function
trampoline_address:
.LFB75:
	.loc 1 5705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# function, function
	.loc 1 5713 0
	movq	cfun(%rip), %rax	# cfun, cfun.452
	movq	280(%rax), %rax	# cfun.452_8->x_trampoline_list, tmp87
	movq	%rax, -56(%rbp)	# tmp87, link
	jmp	.L1098	#
.L1101:
	.loc 1 5714 0
	movq	-56(%rbp), %rax	# link, tmp88
	movq	24(%rax), %rax	# link_1->list.purpose, D.22268
	cmpq	-72(%rbp), %rax	# function, D.22268
	jne	.L1099	#,
	.loc 1 5716 0
	movq	-56(%rbp), %rax	# link, tmp89
	movq	32(%rax), %rax	# link_1->list.value, D.22268
	addq	$40, %rax	#, D.22269
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_13], D.22270
	movq	8(%rax), %rax	# _14->fld[0].rtx, D.22270
	.loc 1 5715 0
	movq	%rax, %rdi	# D.22270,
	call	adjust_trampoline_addr	#
	jmp	.L1100	#
.L1099:
	.loc 1 5713 0
	movq	-56(%rbp), %rax	# link, tmp90
	movq	(%rax), %rax	# link_1->common.chain, tmp91
	movq	%rax, -56(%rbp)	# tmp91, link
.L1098:
	.loc 1 5713 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L1101	#,
	.loc 1 5718 0 is_stmt 1
	movq	outer_function_chain(%rip), %rax	# outer_function_chain, tmp92
	movq	%rax, -48(%rbp)	# tmp92, fp
	jmp	.L1102	#
.L1106:
	.loc 1 5719 0
	movq	-48(%rbp), %rax	# fp, tmp93
	movq	280(%rax), %rax	# fp_3->x_trampoline_list, tmp94
	movq	%rax, -56(%rbp)	# tmp94, link
	jmp	.L1103	#
.L1105:
	.loc 1 5720 0
	movq	-56(%rbp), %rax	# link, tmp95
	movq	24(%rax), %rax	# link_2->list.purpose, D.22268
	cmpq	-72(%rbp), %rax	# function, D.22268
	jne	.L1104	#,
	.loc 1 5722 0
	movq	-56(%rbp), %rax	# link, tmp96
	movq	32(%rax), %rax	# link_2->list.value, D.22268
	addq	$40, %rax	#, D.22269
	movq	(%rax), %rax	# MEM[(struct rtx_def * *)_22], D.22270
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.22270
	movq	-72(%rbp), %rdx	# function, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# D.22270,
	call	fix_lexical_addr	#
	movq	%rax, -40(%rbp)	# tmp98, tramp
	.loc 1 5724 0
	movq	-40(%rbp), %rax	# tramp, tmp99
	movq	%rax, %rdi	# tmp99,
	call	adjust_trampoline_addr	#
	jmp	.L1100	#
.L1104:
	.loc 1 5719 0
	movq	-56(%rbp), %rax	# link, tmp100
	movq	(%rax), %rax	# link_2->common.chain, tmp101
	movq	%rax, -56(%rbp)	# tmp101, link
.L1103:
	.loc 1 5719 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, link
	jne	.L1105	#,
	.loc 1 5718 0 is_stmt 1
	movq	-48(%rbp), %rax	# fp, tmp102
	movq	56(%rax), %rax	# fp_3->outer, tmp103
	movq	%rax, -48(%rbp)	# tmp103, fp
.L1102:
	.loc 1 5718 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, fp
	jne	.L1106	#,
	.loc 1 5730 0 is_stmt 1
	movq	$0, -48(%rbp)	#, fp
	.loc 1 5731 0
	movq	-72(%rbp), %rax	# function, tmp104
	movq	%rax, %rdi	# tmp104,
	call	decl_function_context	#
	movq	%rax, -32(%rbp)	# tmp105, fn_context
	.loc 1 5732 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.453
	cmpq	%rax, -32(%rbp)	# current_function_decl.453, fn_context
	je	.L1107	#,
	.loc 1 5733 0
	movq	inline_function_decl(%rip), %rax	# inline_function_decl, inline_function_decl.454
	cmpq	%rax, -32(%rbp)	# inline_function_decl.454, fn_context
	je	.L1107	#,
	.loc 1 5734 0
	movq	-32(%rbp), %rax	# fn_context, tmp106
	movq	%rax, %rdi	# tmp106,
	call	find_function_data	#
	movq	%rax, -48(%rbp)	# tmp107, fp
.L1107:
	.loc 1 5749 0
	cmpq	$0, -48(%rbp)	#, fp
	je	.L1108	#,
	.loc 1 5749 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# fp, iftmp.455
	jmp	.L1109	#
.L1108:
	.loc 1 5749 0 discriminator 2
	movq	cfun(%rip), %rdx	# cfun, iftmp.455
.L1109:
	.loc 1 5749 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.457
	andl	$33554432, %eax	#, D.22271
	testl	%eax, %eax	# D.22271
	je	.L1110	#,
	.loc 1 5749 0 discriminator 4
	movl	$24, %eax	#, iftmp.456
	jmp	.L1111	#
.L1110:
	.loc 1 5749 0 discriminator 5
	movl	$11, %eax	#, iftmp.456
.L1111:
	.loc 1 5749 0 discriminator 6
	movq	%rdx, %rcx	# iftmp.455,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# iftmp.456,
	movl	$51, %edi	#,
	call	assign_stack_local_1	#
	movq	%rax, -40(%rbp)	# tmp108, tramp
	.loc 1 5755 0 is_stmt 1 discriminator 6
	cmpq	$0, -48(%rbp)	#, fp
	je	.L1112	#,
	.loc 1 5757 0
	movl	$120, %edi	#,
	call	make_node	#
	movq	%rax, -24(%rbp)	# tmp109, rtlexp
	.loc 1 5758 0
	movq	-24(%rbp), %rax	# rtlexp, tmp110
	leaq	40(%rax), %rdx	#, D.22269
	movq	-40(%rbp), %rax	# tramp, tmp111
	movq	%rax, (%rdx)	# tmp111, MEM[(struct rtx_def * *)_42]
	.loc 1 5759 0
	movq	-48(%rbp), %rax	# fp, tmp112
	movq	280(%rax), %rdx	# fp_4->x_trampoline_list, D.22268
	movq	-24(%rbp), %rcx	# rtlexp, tmp113
	movq	-72(%rbp), %rax	# function, tmp114
	movq	%rcx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	tree_cons	#
	movq	-48(%rbp), %rdx	# fp, tmp115
	movq	%rax, 280(%rdx)	# D.22268, fp_4->x_trampoline_list
	jmp	.L1113	#
.L1112:
	.loc 1 5766 0
	movl	$120, %edi	#,
	call	make_node	#
	movq	%rax, -24(%rbp)	# tmp116, rtlexp
	.loc 1 5768 0
	movq	-24(%rbp), %rax	# rtlexp, tmp117
	leaq	40(%rax), %rdx	#, D.22269
	movq	-40(%rbp), %rax	# tramp, tmp118
	movq	%rax, (%rdx)	# tmp118, MEM[(struct rtx_def * *)_46]
	.loc 1 5769 0
	movq	cfun(%rip), %rbx	# cfun, cfun.458
	movq	cfun(%rip), %rax	# cfun, cfun.459
	movq	280(%rax), %rdx	# cfun.459_48->x_trampoline_list, D.22268
	movq	-24(%rbp), %rcx	# rtlexp, tmp119
	movq	-72(%rbp), %rax	# function, tmp120
	movq	%rcx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	tree_cons	#
	movq	%rax, 280(%rbx)	# D.22268, cfun.458_47->x_trampoline_list
.L1113:
	.loc 1 5772 0
	movq	-40(%rbp), %rax	# tramp, tmp121
	movq	8(%rax), %rax	# tramp_40->fld[0].rtx, D.22270
	movq	-72(%rbp), %rdx	# function, tmp122
	movq	%rdx, %rsi	# tmp122,
	movq	%rax, %rdi	# D.22270,
	call	fix_lexical_addr	#
	movq	%rax, -40(%rbp)	# tmp123, tramp
	.loc 1 5773 0
	movq	-40(%rbp), %rax	# tramp, tmp124
	movq	%rax, %rdi	# tmp124,
	call	adjust_trampoline_addr	#
.L1100:
	.loc 1 5774 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	trampoline_address, .-trampoline_address
	.type	round_trampoline_addr, @function
round_trampoline_addr:
.LFB76:
	.loc 1 5782 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# tramp, tramp
	.loc 1 5785 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.461
	andl	$33554432, %eax	#, D.22272
	testl	%eax, %eax	# D.22272
	je	.L1115	#,
	.loc 1 5785 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.460
	jmp	.L1116	#
.L1115:
	.loc 1 5785 0 discriminator 2
	movl	$4, %eax	#, iftmp.460
.L1116:
	.loc 1 5785 0 discriminator 3
	movl	%eax, %edi	# iftmp.460,
	call	gen_reg_rtx	#
	movq	%rax, -24(%rbp)	# tmp70, temp
	.loc 1 5786 0 is_stmt 1 discriminator 3
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -16(%rbp)	# tmp71, addend
	.loc 1 5787 0 discriminator 3
	movq	$-2, %rsi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -8(%rbp)	# tmp72, mask
	.loc 1 5789 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.463
	andl	$33554432, %eax	#, D.22272
	testl	%eax, %eax	# D.22272
	je	.L1117	#,
	.loc 1 5789 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.462
	jmp	.L1118	#
.L1117:
	.loc 1 5789 0 discriminator 2
	movl	$4, %eax	#, iftmp.462
.L1118:
	.loc 1 5789 0 discriminator 3
	movq	-24(%rbp), %rsi	# temp, tmp73
	movq	-16(%rbp), %rcx	# addend, tmp74
	movq	-40(%rbp), %rdx	# tramp, tmp75
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp73,
	movl	$75, %esi	#,
	movl	%eax, %edi	# iftmp.462,
	call	expand_simple_binop	#
	movq	%rax, -24(%rbp)	# tmp76, temp
	.loc 1 5791 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.465
	andl	$33554432, %eax	#, D.22272
	testl	%eax, %eax	# D.22272
	je	.L1119	#,
	.loc 1 5791 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.464
	jmp	.L1120	#
.L1119:
	.loc 1 5791 0 discriminator 2
	movl	$4, %eax	#, iftmp.464
.L1120:
	.loc 1 5791 0 discriminator 3
	movq	-24(%rbp), %rsi	# temp, tmp77
	movq	-8(%rbp), %rcx	# mask, tmp78
	movq	-24(%rbp), %rdx	# temp, tmp79
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp77,
	movl	$83, %esi	#,
	movl	%eax, %edi	# iftmp.464,
	call	expand_simple_binop	#
	movq	%rax, -40(%rbp)	# tmp80, tramp
	.loc 1 5794 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# tramp, D.22273
	.loc 1 5795 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	round_trampoline_addr, .-round_trampoline_addr
	.type	adjust_trampoline_addr, @function
adjust_trampoline_addr:
.LFB77:
	.loc 1 5804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# tramp, tramp
	.loc 1 5805 0
	movq	-8(%rbp), %rax	# tramp, tmp61
	movq	%rax, %rdi	# tmp61,
	call	round_trampoline_addr	#
	movq	%rax, -8(%rbp)	# tmp62, tramp
	.loc 1 5809 0
	movq	-8(%rbp), %rax	# tramp, D.22274
	.loc 1 5810 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	adjust_trampoline_addr, .-adjust_trampoline_addr
	.globl	identify_blocks
	.type	identify_blocks, @function
identify_blocks:
.LFB78:
	.loc 1 5821 0
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
	.loc 1 5825 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.466
	movq	104(%rax), %rax	# current_function_decl.466_1->decl.initial, tmp69
	movq	%rax, -48(%rbp)	# tmp69, block
	.loc 1 5827 0
	cmpq	$0, -48(%rbp)	#, block
	je	.L1124	#,
	.loc 1 5832 0
	leaq	-52(%rbp), %rdx	#, tmp70
	movq	-48(%rbp), %rax	# block, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	get_block_vector	#
	movq	%rax, -40(%rbp)	# tmp72, block_vector
	.loc 1 5833 0
	movl	-52(%rbp), %eax	# n_blocks, n_blocks.467
	cltq
	salq	$3, %rax	#, D.22275
	movq	%rax, %rdi	# D.22275,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp73, block_stack
	.loc 1 5835 0
	movl	-52(%rbp), %eax	# n_blocks, n_blocks.468
	cltq
	.loc 1 5837 0
	leaq	0(,%rax,8), %rdx	#, D.22275
	.loc 1 5835 0
	movq	-40(%rbp), %rax	# block_vector, tmp74
	leaq	(%rdx,%rax), %r12	#, D.22276
	movq	-40(%rbp), %rax	# block_vector, tmp75
	leaq	8(%rax), %rbx	#, D.22276
	call	get_insns	#
	movq	-32(%rbp), %rdx	# block_stack, tmp76
	movq	%rdx, %rcx	# tmp76,
	movq	%r12, %rdx	# D.22276,
	movq	%rbx, %rsi	# D.22276,
	movq	%rax, %rdi	# D.22277,
	call	identify_blocks_1	#
	movq	%rax, -24(%rbp)	# tmp77, last_block_vector
	.loc 1 5845 0
	movq	-40(%rbp), %rax	# block_vector, tmp78
	movq	%rax, %rdi	# tmp78,
	call	free	#
	.loc 1 5846 0
	movq	-32(%rbp), %rax	# block_stack, tmp79
	movq	%rax, %rdi	# tmp79,
	call	free	#
.L1124:
	.loc 1 5847 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	identify_blocks, .-identify_blocks
	.type	identify_blocks_1, @function
identify_blocks_1:
.LFB79:
	.loc 1 5861 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# insns, insns
	movq	%rsi, -48(%rbp)	# block_vector, block_vector
	movq	%rdx, -56(%rbp)	# end_block_vector, end_block_vector
	movq	%rcx, -64(%rbp)	# orig_block_stack, orig_block_stack
	.loc 1 5863 0
	movq	-64(%rbp), %rax	# orig_block_stack, tmp75
	movq	%rax, -24(%rbp)	# tmp75, block_stack
	.loc 1 5865 0
	movq	-40(%rbp), %rax	# insns, tmp76
	movq	%rax, -32(%rbp)	# tmp76, insn
	jmp	.L1128	#
.L1136:
	.loc 1 5867 0
	movq	-32(%rbp), %rax	# insn, tmp77
	movzwl	(%rax), %eax	# insn_5->code, D.22278
	cmpw	$37, %ax	#, D.22278
	jne	.L1129	#,
	.loc 1 5869 0
	movq	-32(%rbp), %rax	# insn, tmp78
	movl	40(%rax), %eax	# insn_5->fld[4].rtint, D.22279
	cmpl	$-98, %eax	#, D.22279
	jne	.L1130	#,
.LBB91:
	.loc 1 5875 0
	movq	-48(%rbp), %rax	# block_vector, tmp79
	cmpq	-56(%rbp), %rax	# end_block_vector, tmp79
	jne	.L1131	#,
	.loc 1 5876 0
	movl	$__FUNCTION__.14784, %edx	#,
	movl	$5876, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1131:
	.loc 1 5878 0
	movq	-48(%rbp), %rax	# block_vector, block_vector.469
	leaq	8(%rax), %rdx	#, tmp80
	movq	%rdx, -48(%rbp)	# tmp80, block_vector
	movq	(%rax), %rax	# *block_vector.469_17, tmp81
	movq	%rax, -16(%rbp)	# tmp81, b
	.loc 1 5879 0
	movq	-32(%rbp), %rax	# insn, tmp82
	movq	-16(%rbp), %rdx	# b, tmp83
	movq	%rdx, 32(%rax)	# tmp83, insn_5->fld[3].rttree
	.loc 1 5880 0
	movq	-24(%rbp), %rax	# block_stack, block_stack.470
	leaq	8(%rax), %rdx	#, tmp84
	movq	%rdx, -24(%rbp)	# tmp84, block_stack
	movq	-16(%rbp), %rdx	# b, tmp85
	movq	%rdx, (%rax)	# tmp85, *block_stack.470_20
.LBE91:
	jmp	.L1134	#
.L1130:
	.loc 1 5882 0
	movq	-32(%rbp), %rax	# insn, tmp86
	movl	40(%rax), %eax	# insn_5->fld[4].rtint, D.22279
	cmpl	$-97, %eax	#, D.22279
	jne	.L1134	#,
	.loc 1 5886 0
	movq	-24(%rbp), %rax	# block_stack, tmp87
	cmpq	-64(%rbp), %rax	# orig_block_stack, tmp87
	jne	.L1133	#,
	.loc 1 5887 0
	movl	$__FUNCTION__.14784, %edx	#,
	movl	$5887, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1133:
	.loc 1 5889 0
	subq	$8, -24(%rbp)	#, block_stack
	movq	-24(%rbp), %rax	# block_stack, tmp88
	movq	(%rax), %rdx	# *block_stack_23, D.22280
	movq	-32(%rbp), %rax	# insn, tmp89
	movq	%rdx, 32(%rax)	# D.22280, insn_5->fld[3].rttree
	jmp	.L1134	#
.L1129:
	.loc 1 5892 0
	movq	-32(%rbp), %rax	# insn, tmp90
	movzwl	(%rax), %eax	# insn_5->code, D.22278
	cmpw	$34, %ax	#, D.22278
	jne	.L1134	#,
	.loc 1 5893 0
	movq	-32(%rbp), %rax	# insn, tmp91
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, D.22281
	movzwl	(%rax), %eax	# _26->code, D.22278
	cmpw	$141, %ax	#, D.22278
	jne	.L1134	#,
.LBB92:
	.loc 1 5895 0
	movq	-32(%rbp), %rax	# insn, tmp92
	movq	32(%rax), %rax	# insn_5->fld[3].rtx, tmp93
	movq	%rax, -8(%rbp)	# tmp93, cp
	.loc 1 5897 0
	movq	-8(%rbp), %rax	# cp, tmp94
	movq	8(%rax), %rax	# cp_28->fld[0].rtx, D.22281
	movq	-24(%rbp), %rcx	# block_stack, tmp95
	movq	-56(%rbp), %rdx	# end_block_vector, tmp96
	movq	-48(%rbp), %rsi	# block_vector, tmp97
	movq	%rax, %rdi	# D.22281,
	call	identify_blocks_1	#
	movq	%rax, -48(%rbp)	# tmp98, block_vector
	.loc 1 5899 0
	movq	-8(%rbp), %rax	# cp, tmp99
	movq	16(%rax), %rax	# cp_28->fld[1].rtx, D.22281
	testq	%rax, %rax	# D.22281
	je	.L1135	#,
	.loc 1 5900 0
	movq	-8(%rbp), %rax	# cp, tmp100
	movq	16(%rax), %rax	# cp_28->fld[1].rtx, D.22281
	movq	-24(%rbp), %rcx	# block_stack, tmp101
	movq	-56(%rbp), %rdx	# end_block_vector, tmp102
	movq	-48(%rbp), %rsi	# block_vector, tmp103
	movq	%rax, %rdi	# D.22281,
	call	identify_blocks_1	#
	movq	%rax, -48(%rbp)	# tmp104, block_vector
.L1135:
	.loc 1 5902 0
	movq	-8(%rbp), %rax	# cp, tmp105
	movq	24(%rax), %rax	# cp_28->fld[2].rtx, D.22281
	testq	%rax, %rax	# D.22281
	je	.L1134	#,
	.loc 1 5903 0
	movq	-8(%rbp), %rax	# cp, tmp106
	movq	24(%rax), %rax	# cp_28->fld[2].rtx, D.22281
	movq	-24(%rbp), %rcx	# block_stack, tmp107
	movq	-56(%rbp), %rdx	# end_block_vector, tmp108
	movq	-48(%rbp), %rsi	# block_vector, tmp109
	movq	%rax, %rdi	# D.22281,
	call	identify_blocks_1	#
	movq	%rax, -48(%rbp)	# tmp110, block_vector
.L1134:
.LBE92:
	.loc 1 5865 0
	movq	-32(%rbp), %rax	# insn, tmp111
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp112
	movq	%rax, -32(%rbp)	# tmp112, insn
.L1128:
	.loc 1 5865 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L1136	#,
	.loc 1 5910 0 is_stmt 1
	movq	-24(%rbp), %rax	# block_stack, tmp113
	cmpq	-64(%rbp), %rax	# orig_block_stack, tmp113
	je	.L1137	#,
	.loc 1 5911 0
	movl	$__FUNCTION__.14784, %edx	#,
	movl	$5911, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1137:
	.loc 1 5913 0
	movq	-48(%rbp), %rax	# block_vector, D.22282
	.loc 1 5914 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	identify_blocks_1, .-identify_blocks_1
	.section	.rodata
.LC6:
	.string	"block_stack"
	.text
	.globl	reorder_blocks
	.type	reorder_blocks, @function
reorder_blocks:
.LFB80:
	.loc 1 5924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 5925 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.471
	movq	104(%rax), %rax	# current_function_decl.471_1->decl.initial, tmp66
	movq	%rax, -8(%rbp)	# tmp66, block
	.loc 1 5928 0
	cmpq	$0, -8(%rbp)	#, block
	je	.L1139	#,
	.loc 1 5931 0
	movl	$.LC6, %edx	#,
	movl	$8, %esi	#,
	movl	$10, %edi	#,
	call	varray_init	#
	movq	%rax, -16(%rbp)	# block_stack.472, block_stack
	.loc 1 5934 0
	movq	-8(%rbp), %rax	# block, tmp67
	movq	%rax, %rdi	# tmp67,
	call	reorder_blocks_0	#
	.loc 1 5937 0
	movq	-8(%rbp), %rax	# block, tmp68
	movq	$0, 40(%rax)	#, block_2->block.subblocks
	.loc 1 5938 0
	movq	-8(%rbp), %rax	# block, tmp69
	movq	$0, (%rax)	#, block_2->common.chain
	.loc 1 5941 0
	call	get_insns	#
	leaq	-16(%rbp), %rdx	#, tmp70
	movq	-8(%rbp), %rcx	# block, tmp71
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.22283,
	call	reorder_blocks_1	#
	.loc 1 5942 0
	movq	-8(%rbp), %rax	# block, tmp72
	movq	40(%rax), %rax	# block_2->block.subblocks, D.22284
	movq	%rax, %rdi	# D.22284,
	call	blocks_nreverse	#
	movq	-8(%rbp), %rdx	# block, tmp73
	movq	%rax, 40(%rdx)	# D.22284, block_2->block.subblocks
	.loc 1 5945 0
	movq	-8(%rbp), %rax	# block, tmp74
	movq	%rax, %rdi	# tmp74,
	call	reorder_fix_fragments	#
	.loc 1 5947 0
	movq	-16(%rbp), %rax	# block_stack, block_stack.473
	testq	%rax, %rax	# block_stack.473
	je	.L1139	#,
	.loc 1 5947 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# block_stack, block_stack.474
	movq	%rax, %rdi	# block_stack.474,
	call	free	#
	movq	$0, -16(%rbp)	#, block_stack
.L1139:
	.loc 1 5948 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	reorder_blocks, .-reorder_blocks
	.type	reorder_blocks_0, @function
reorder_blocks_0:
.LFB81:
	.loc 1 5955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# block, block
	.loc 1 5956 0
	jmp	.L1144	#
.L1145:
	.loc 1 5958 0
	movq	-8(%rbp), %rax	# block, tmp60
	movzbl	17(%rax), %edx	#, tmp63
	andl	$-65, %edx	#, tmp64
	movb	%dl, 17(%rax)	# tmp64,
	.loc 1 5959 0
	movq	-8(%rbp), %rax	# block, tmp65
	movq	40(%rax), %rax	# block_1->block.subblocks, D.22286
	movq	%rax, %rdi	# D.22286,
	call	reorder_blocks_0	#
	.loc 1 5960 0
	movq	-8(%rbp), %rax	# block, tmp66
	movq	(%rax), %rax	# block_1->common.chain, tmp67
	movq	%rax, -8(%rbp)	# tmp67, block
.L1144:
	.loc 1 5956 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, block
	jne	.L1145	#,
	.loc 1 5962 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	reorder_blocks_0, .-reorder_blocks_0
	.type	reorder_blocks_1, @function
reorder_blocks_1:
.LFB82:
	.loc 1 5969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# insns, insns
	movq	%rsi, -64(%rbp)	# current_block, current_block
	movq	%rdx, -72(%rbp)	# p_block_stack, p_block_stack
	.loc 1 5972 0
	movq	-56(%rbp), %rax	# insns, tmp99
	movq	%rax, -40(%rbp)	# tmp99, insn
	jmp	.L1147	#
.L1157:
	.loc 1 5974 0
	movq	-40(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_4->code, D.22287
	cmpw	$37, %ax	#, D.22287
	jne	.L1148	#,
	.loc 1 5976 0
	movq	-40(%rbp), %rax	# insn, tmp101
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.22288
	cmpl	$-98, %eax	#, D.22288
	jne	.L1149	#,
.LBB93:
	.loc 1 5978 0
	movq	-40(%rbp), %rax	# insn, tmp102
	movq	32(%rax), %rax	# insn_4->fld[3].rttree, tmp103
	movq	%rax, -32(%rbp)	# tmp103, block
	.loc 1 5982 0
	movq	-32(%rbp), %rax	# block, tmp104
	movzbl	17(%rax), %eax	# *block_12, D.22289
	andl	$64, %eax	#, D.22289
	testb	%al, %al	# D.22289
	je	.L1150	#,
.LBB94:
	.loc 1 5984 0
	movq	-32(%rbp), %rax	# block, tmp105
	movq	%rax, %rdi	# tmp105,
	call	copy_node	#
	movq	%rax, -24(%rbp)	# tmp106, new_block
	.loc 1 5987 0
	movq	-32(%rbp), %rax	# block, tmp107
	movq	64(%rax), %rax	# block_12->block.fragment_origin, D.22290
	.loc 1 5989 0
	testq	%rax, %rax	# D.22290
	je	.L1151	#,
	.loc 1 5989 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# block, tmp108
	movq	64(%rax), %rax	# block_12->block.fragment_origin, iftmp.475
	jmp	.L1152	#
.L1151:
	.loc 1 5989 0 discriminator 2
	movq	-32(%rbp), %rax	# block, iftmp.475
.L1152:
	.loc 1 5987 0 is_stmt 1
	movq	%rax, -16(%rbp)	# iftmp.475, origin
	.loc 1 5990 0
	movq	-24(%rbp), %rax	# new_block, tmp109
	movq	-16(%rbp), %rdx	# origin, tmp110
	movq	%rdx, 64(%rax)	# tmp110, new_block_15->block.fragment_origin
	.loc 1 5992 0
	movq	-16(%rbp), %rax	# origin, tmp111
	movq	72(%rax), %rdx	# origin_19->block.fragment_chain, D.22290
	movq	-24(%rbp), %rax	# new_block, tmp112
	movq	%rdx, 72(%rax)	# D.22290, new_block_15->block.fragment_chain
	.loc 1 5993 0
	movq	-16(%rbp), %rax	# origin, tmp113
	movq	-24(%rbp), %rdx	# new_block, tmp114
	movq	%rdx, 72(%rax)	# tmp114, origin_19->block.fragment_chain
	.loc 1 5995 0
	movq	-40(%rbp), %rax	# insn, tmp115
	movq	-24(%rbp), %rdx	# new_block, tmp116
	movq	%rdx, 32(%rax)	# tmp116, insn_4->fld[3].rttree
	.loc 1 5996 0
	movq	-24(%rbp), %rax	# new_block, tmp117
	movq	%rax, -32(%rbp)	# tmp117, block
.L1150:
.LBE94:
	.loc 1 5999 0
	movq	-32(%rbp), %rax	# block, tmp118
	movq	$0, 40(%rax)	#, block_5->block.subblocks
	.loc 1 6000 0
	movq	-32(%rbp), %rax	# block, tmp119
	movzbl	17(%rax), %edx	#, tmp122
	orl	$64, %edx	#, tmp123
	movb	%dl, 17(%rax)	# tmp123,
	.loc 1 6001 0
	movq	-32(%rbp), %rax	# block, tmp124
	movq	-64(%rbp), %rdx	# current_block, tmp125
	movq	%rdx, 48(%rax)	# tmp125, block_5->block.supercontext
	.loc 1 6002 0
	movq	-64(%rbp), %rax	# current_block, tmp126
	movq	40(%rax), %rdx	# current_block_3->block.subblocks, D.22290
	movq	-32(%rbp), %rax	# block, tmp127
	movq	%rdx, (%rax)	# D.22290, block_5->common.chain
	.loc 1 6003 0
	movq	-64(%rbp), %rax	# current_block, tmp128
	movq	-32(%rbp), %rdx	# block, tmp129
	movq	%rdx, 40(%rax)	# tmp129, current_block_3->block.subblocks
	.loc 1 6004 0
	movq	-32(%rbp), %rax	# block, tmp130
	movq	%rax, -64(%rbp)	# tmp130, current_block
	.loc 1 6005 0
	movq	-72(%rbp), %rax	# p_block_stack, tmp131
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	8(%rax), %rdx	# _25->elements_used, D.22292
	movq	-72(%rbp), %rax	# p_block_stack, tmp132
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	(%rax), %rax	# _27->num_elements, D.22292
	cmpq	%rax, %rdx	# D.22292, D.22292
	jb	.L1153	#,
	.loc 1 6005 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# p_block_stack, tmp133
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	(%rax), %rax	# _29->num_elements, D.22292
	leaq	(%rax,%rax), %rdx	#, D.22292
	movq	-72(%rbp), %rax	# p_block_stack, tmp134
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	%rdx, %rsi	# D.22292,
	movq	%rax, %rdi	# D.22291,
	call	varray_grow	#
	movq	-72(%rbp), %rdx	# p_block_stack, tmp135
	movq	%rax, (%rdx)	# D.22291, *p_block_stack_24(D)
.L1153:
	.loc 1 6005 0 discriminator 2
	movq	-72(%rbp), %rax	# p_block_stack, tmp136
	movq	(%rax), %rcx	# *p_block_stack_24(D), D.22291
	movq	-72(%rbp), %rax	# p_block_stack, tmp137
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	8(%rax), %rdx	# _35->elements_used, D.22292
	leaq	1(%rdx), %rsi	#, D.22292
	movq	%rsi, 8(%rax)	# D.22292, _35->elements_used
	addq	$4, %rdx	#, tmp138
	movq	-32(%rbp), %rax	# block, tmp139
	movq	%rax, (%rcx,%rdx,8)	# tmp139, _34->data.tree
.LBE93:
	jmp	.L1155	#
.L1149:
	.loc 1 6007 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp140
	movl	40(%rax), %eax	# insn_4->fld[4].rtint, D.22288
	cmpl	$-97, %eax	#, D.22288
	jne	.L1155	#,
	.loc 1 6009 0
	movq	-72(%rbp), %rax	# p_block_stack, tmp141
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	-72(%rbp), %rdx	# p_block_stack, tmp142
	movq	(%rdx), %rdx	# *p_block_stack_24(D), D.22291
	movq	8(%rdx), %rdx	# _41->elements_used, D.22292
	subq	$1, %rdx	#, D.22292
	addq	$4, %rdx	#, tmp143
	movq	(%rax,%rdx,8), %rdx	# _40->data.tree, D.22290
	movq	-40(%rbp), %rax	# insn, tmp144
	movq	%rdx, 32(%rax)	# D.22290, insn_4->fld[3].rttree
	.loc 1 6010 0
	movq	-72(%rbp), %rax	# p_block_stack, tmp145
	movq	(%rax), %rax	# *p_block_stack_24(D), D.22291
	movq	8(%rax), %rdx	# _45->elements_used, D.22292
	subq	$1, %rdx	#, D.22292
	movq	%rdx, 8(%rax)	# D.22292, _45->elements_used
	.loc 1 6012 0
	movq	-64(%rbp), %rax	# current_block, tmp146
	movq	40(%rax), %rax	# current_block_3->block.subblocks, D.22290
	movq	%rax, %rdi	# D.22290,
	call	blocks_nreverse	#
	movq	-64(%rbp), %rdx	# current_block, tmp147
	movq	%rax, 40(%rdx)	# D.22290, current_block_3->block.subblocks
	.loc 1 6013 0
	movq	-64(%rbp), %rax	# current_block, tmp148
	movq	48(%rax), %rax	# current_block_3->block.supercontext, tmp149
	movq	%rax, -64(%rbp)	# tmp149, current_block
	jmp	.L1155	#
.L1148:
	.loc 1 6016 0
	movq	-40(%rbp), %rax	# insn, tmp150
	movzwl	(%rax), %eax	# insn_4->code, D.22287
	cmpw	$34, %ax	#, D.22287
	jne	.L1155	#,
	.loc 1 6017 0
	movq	-40(%rbp), %rax	# insn, tmp151
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, D.22293
	movzwl	(%rax), %eax	# _52->code, D.22287
	cmpw	$141, %ax	#, D.22287
	jne	.L1155	#,
.LBB95:
	.loc 1 6019 0
	movq	-40(%rbp), %rax	# insn, tmp152
	movq	32(%rax), %rax	# insn_4->fld[3].rtx, tmp153
	movq	%rax, -8(%rbp)	# tmp153, cp
	.loc 1 6020 0
	movq	-8(%rbp), %rax	# cp, tmp154
	movq	8(%rax), %rax	# cp_54->fld[0].rtx, D.22293
	movq	-72(%rbp), %rdx	# p_block_stack, tmp155
	movq	-64(%rbp), %rcx	# current_block, tmp156
	movq	%rcx, %rsi	# tmp156,
	movq	%rax, %rdi	# D.22293,
	call	reorder_blocks_1	#
	.loc 1 6021 0
	movq	-8(%rbp), %rax	# cp, tmp157
	movq	16(%rax), %rax	# cp_54->fld[1].rtx, D.22293
	testq	%rax, %rax	# D.22293
	je	.L1156	#,
	.loc 1 6022 0
	movq	-8(%rbp), %rax	# cp, tmp158
	movq	16(%rax), %rax	# cp_54->fld[1].rtx, D.22293
	movq	-72(%rbp), %rdx	# p_block_stack, tmp159
	movq	-64(%rbp), %rcx	# current_block, tmp160
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# D.22293,
	call	reorder_blocks_1	#
.L1156:
	.loc 1 6023 0
	movq	-8(%rbp), %rax	# cp, tmp161
	movq	24(%rax), %rax	# cp_54->fld[2].rtx, D.22293
	testq	%rax, %rax	# D.22293
	je	.L1155	#,
	.loc 1 6024 0
	movq	-8(%rbp), %rax	# cp, tmp162
	movq	24(%rax), %rax	# cp_54->fld[2].rtx, D.22293
	movq	-72(%rbp), %rdx	# p_block_stack, tmp163
	movq	-64(%rbp), %rcx	# current_block, tmp164
	movq	%rcx, %rsi	# tmp164,
	movq	%rax, %rdi	# D.22293,
	call	reorder_blocks_1	#
.L1155:
.LBE95:
	.loc 1 5972 0
	movq	-40(%rbp), %rax	# insn, tmp165
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp166
	movq	%rax, -40(%rbp)	# tmp166, insn
.L1147:
	.loc 1 5972 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L1157	#,
	.loc 1 6027 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	reorder_blocks_1, .-reorder_blocks_1
	.type	reorder_fix_fragments, @function
reorder_fix_fragments:
.LFB83:
	.loc 1 6036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# block, block
	.loc 1 6037 0
	jmp	.L1159	#
.L1169:
.LBB96:
	.loc 1 6039 0
	movq	-40(%rbp), %rax	# block, tmp66
	movq	64(%rax), %rax	# block_1->block.fragment_origin, tmp67
	movq	%rax, -8(%rbp)	# tmp67, dup_origin
	.loc 1 6040 0
	movq	$0, -32(%rbp)	#, new_origin
	.loc 1 6042 0
	cmpq	$0, -8(%rbp)	#, dup_origin
	je	.L1160	#,
	.loc 1 6044 0
	movq	-8(%rbp), %rax	# dup_origin, tmp68
	movzbl	17(%rax), %eax	# *dup_origin_9, D.22294
	andl	$64, %eax	#, D.22294
	testb	%al, %al	# D.22294
	jne	.L1164	#,
	.loc 1 6046 0
	movq	-8(%rbp), %rax	# dup_origin, tmp69
	movq	72(%rax), %rax	# dup_origin_9->block.fragment_chain, tmp70
	movq	%rax, -32(%rbp)	# tmp70, new_origin
	.loc 1 6050 0
	jmp	.L1162	#
.L1163:
	.loc 1 6051 0
	movq	-32(%rbp), %rax	# new_origin, tmp71
	movq	72(%rax), %rax	# new_origin_2->block.fragment_chain, tmp72
	movq	%rax, -32(%rbp)	# tmp72, new_origin
.L1162:
	.loc 1 6050 0 discriminator 1
	movq	-32(%rbp), %rax	# new_origin, tmp73
	movzbl	17(%rax), %eax	# *new_origin_2, D.22294
	andl	$64, %eax	#, D.22294
	testb	%al, %al	# D.22294
	je	.L1163	#,
	.loc 1 6052 0
	movq	-32(%rbp), %rax	# new_origin, tmp74
	movq	$0, 64(%rax)	#, new_origin_2->block.fragment_origin
	jmp	.L1164	#
.L1160:
	.loc 1 6055 0
	cmpq	$0, -8(%rbp)	#, dup_origin
	jne	.L1164	#,
	.loc 1 6056 0
	movq	-40(%rbp), %rax	# block, tmp75
	movq	%rax, -32(%rbp)	# tmp75, new_origin
.L1164:
	.loc 1 6062 0
	cmpq	$0, -32(%rbp)	#, new_origin
	je	.L1165	#,
.LBB97:
	.loc 1 6064 0
	movq	-32(%rbp), %rax	# new_origin, tmp79
	addq	$72, %rax	#, tmp78
	movq	%rax, -24(%rbp)	# tmp78, pp
	.loc 1 6065 0
	movq	-24(%rbp), %rax	# pp, tmp80
	movq	(%rax), %rax	# *pp_18, tmp81
	movq	%rax, -16(%rbp)	# tmp81, chain
	.loc 1 6067 0
	jmp	.L1166	#
.L1168:
	.loc 1 6069 0
	movq	-16(%rbp), %rax	# chain, tmp82
	movzbl	17(%rax), %eax	# *chain_7, D.22294
	andl	$64, %eax	#, D.22294
	testb	%al, %al	# D.22294
	je	.L1167	#,
	.loc 1 6071 0
	movq	-16(%rbp), %rax	# chain, tmp83
	movq	-32(%rbp), %rdx	# new_origin, tmp84
	movq	%rdx, 64(%rax)	# tmp84, chain_7->block.fragment_origin
	.loc 1 6072 0
	movq	-24(%rbp), %rax	# pp, tmp85
	movq	-16(%rbp), %rdx	# chain, tmp86
	movq	%rdx, (%rax)	# tmp86, *pp_6
	.loc 1 6073 0
	movq	-16(%rbp), %rax	# chain, tmp90
	addq	$72, %rax	#, tmp89
	movq	%rax, -24(%rbp)	# tmp89, pp
.L1167:
	.loc 1 6075 0
	movq	-16(%rbp), %rax	# chain, tmp91
	movq	72(%rax), %rax	# chain_7->block.fragment_chain, tmp92
	movq	%rax, -16(%rbp)	# tmp92, chain
.L1166:
	.loc 1 6067 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, chain
	jne	.L1168	#,
	.loc 1 6077 0
	movq	-24(%rbp), %rax	# pp, tmp93
	movq	$0, (%rax)	#, *pp_6
.L1165:
.LBE97:
	.loc 1 6080 0
	movq	-40(%rbp), %rax	# block, tmp94
	movq	40(%rax), %rax	# block_1->block.subblocks, D.22295
	movq	%rax, %rdi	# D.22295,
	call	reorder_fix_fragments	#
	.loc 1 6081 0
	movq	-40(%rbp), %rax	# block, tmp95
	movq	(%rax), %rax	# block_1->common.chain, tmp96
	movq	%rax, -40(%rbp)	# tmp96, block
.L1159:
.LBE96:
	.loc 1 6037 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, block
	jne	.L1169	#,
	.loc 1 6083 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	reorder_fix_fragments, .-reorder_fix_fragments
	.type	blocks_nreverse, @function
blocks_nreverse:
.LFB84:
	.loc 1 6091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# t, t
	.loc 1 6092 0
	movq	$0, -24(%rbp)	#, prev
	.loc 1 6093 0
	movq	-40(%rbp), %rax	# t, tmp61
	movq	%rax, -16(%rbp)	# tmp61, decl
	jmp	.L1171	#
.L1172:
	.loc 1 6095 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp62
	movq	(%rax), %rax	# decl_2->common.chain, tmp63
	movq	%rax, -8(%rbp)	# tmp63, next
	.loc 1 6096 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp64
	movq	-24(%rbp), %rdx	# prev, tmp65
	movq	%rdx, (%rax)	# tmp65, decl_2->common.chain
	.loc 1 6097 0 discriminator 2
	movq	-16(%rbp), %rax	# decl, tmp66
	movq	%rax, -24(%rbp)	# tmp66, prev
	.loc 1 6093 0 discriminator 2
	movq	-8(%rbp), %rax	# next, tmp67
	movq	%rax, -16(%rbp)	# tmp67, decl
.L1171:
	.loc 1 6093 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, decl
	jne	.L1172	#,
	.loc 1 6099 0 is_stmt 1
	movq	-24(%rbp), %rax	# prev, D.22296
	.loc 1 6100 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	blocks_nreverse, .-blocks_nreverse
	.type	all_blocks, @function
all_blocks:
.LFB85:
	.loc 1 6111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	movq	%rsi, -32(%rbp)	# vector, vector
	.loc 1 6112 0
	movl	$0, -4(%rbp)	#, n_blocks
	.loc 1 6114 0
	jmp	.L1175	#
.L1179:
	.loc 1 6116 0
	movq	-24(%rbp), %rax	# block, tmp69
	movzbl	17(%rax), %edx	#, tmp72
	andl	$-65, %edx	#, tmp73
	movb	%dl, 17(%rax)	# tmp73,
	.loc 1 6119 0
	cmpq	$0, -32(%rbp)	#, vector
	je	.L1176	#,
	.loc 1 6120 0
	movl	-4(%rbp), %eax	# n_blocks, tmp74
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22297
	movq	-32(%rbp), %rax	# vector, tmp75
	addq	%rax, %rdx	# tmp75, D.22298
	movq	-24(%rbp), %rax	# block, tmp76
	movq	%rax, (%rdx)	# tmp76, *_9
.L1176:
	.loc 1 6122 0
	addl	$1, -4(%rbp)	#, n_blocks
	.loc 1 6125 0
	cmpq	$0, -32(%rbp)	#, vector
	je	.L1177	#,
	.loc 1 6126 0
	movl	-4(%rbp), %eax	# n_blocks, tmp77
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22297
	.loc 1 6125 0
	movq	-32(%rbp), %rax	# vector, tmp78
	addq	%rdx, %rax	# D.22297, iftmp.476
	jmp	.L1178	#
.L1177:
	.loc 1 6125 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.476
.L1178:
	.loc 1 6125 0 discriminator 2
	movq	-24(%rbp), %rdx	# block, tmp79
	movq	40(%rdx), %rdx	# block_1->block.subblocks, D.22299
	movq	%rax, %rsi	# iftmp.476,
	movq	%rdx, %rdi	# D.22299,
	call	all_blocks	#
	addl	%eax, -4(%rbp)	# D.22300, n_blocks
	.loc 1 6127 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# block, tmp80
	movq	(%rax), %rax	# block_1->common.chain, tmp81
	movq	%rax, -24(%rbp)	# tmp81, block
.L1175:
	.loc 1 6114 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, block
	jne	.L1179	#,
	.loc 1 6130 0
	movl	-4(%rbp), %eax	# n_blocks, D.22300
	.loc 1 6131 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	all_blocks, .-all_blocks
	.type	get_block_vector, @function
get_block_vector:
.LFB86:
	.loc 1 6142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# block, block
	movq	%rsi, -32(%rbp)	# n_blocks_p, n_blocks_p
	.loc 1 6145 0
	movq	-24(%rbp), %rax	# block, tmp65
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	all_blocks	#
	movq	-32(%rbp), %rdx	# n_blocks_p, tmp66
	movl	%eax, (%rdx)	# D.22301, *n_blocks_p_3(D)
	.loc 1 6146 0
	movq	-32(%rbp), %rax	# n_blocks_p, tmp67
	movl	(%rax), %eax	# *n_blocks_p_3(D), D.22301
	cltq
	salq	$3, %rax	#, D.22302
	movq	%rax, %rdi	# D.22302,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp68, block_vector
	.loc 1 6147 0
	movq	-8(%rbp), %rdx	# block_vector, tmp69
	movq	-24(%rbp), %rax	# block, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	all_blocks	#
	.loc 1 6149 0
	movq	-8(%rbp), %rax	# block_vector, D.22303
	.loc 1 6150 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	get_block_vector, .-get_block_vector
	.data
	.align 4
	.type	next_block_index, @object
	.size	next_block_index, 4
next_block_index:
	.long	2
	.text
	.globl	number_blocks
	.type	number_blocks, @function
number_blocks:
.LFB87:
	.loc 1 6159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fn, fn
	.loc 1 6172 0
	movq	-24(%rbp), %rax	# fn, tmp70
	movq	104(%rax), %rax	# fn_2(D)->decl.initial, D.22304
	leaq	-16(%rbp), %rdx	#, tmp71
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.22304,
	call	get_block_vector	#
	movq	%rax, -8(%rbp)	# tmp72, block_vector
	.loc 1 6175 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L1184	#
.L1185:
	.loc 1 6177 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.22305
	movq	-8(%rbp), %rax	# block_vector, tmp74
	addq	%rdx, %rax	# D.22305, D.22306
	movq	(%rax), %rax	# *_9, D.22304
	movl	next_block_index(%rip), %edx	# next_block_index, next_block_index.477
	leal	1(%rdx), %ecx	#, next_block_index.479
	movl	%ecx, next_block_index(%rip)	# next_block_index.479, next_block_index
	andl	$1073741823, %edx	#, D.22307
	leal	0(,%rdx,4), %ecx	#, tmp76
	movl	24(%rax), %edx	# _10->block.block_num, tmp77
	andl	$3, %edx	#, tmp78
	orl	%ecx, %edx	# tmp76, tmp79
	movl	%edx, 24(%rax)	# tmp79, _10->block.block_num
	.loc 1 6175 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L1184:
	.loc 1 6175 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# n_blocks, n_blocks.481
	cmpl	%eax, -12(%rbp)	# n_blocks.481, i
	jl	.L1185	#,
	.loc 1 6179 0 is_stmt 1
	movq	-8(%rbp), %rax	# block_vector, tmp80
	movq	%rax, %rdi	# tmp80,
	call	free	#
	.loc 1 6181 0
	nop
	.loc 1 6182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	number_blocks, .-number_blocks
	.globl	debug_find_var_in_block_tree
	.type	debug_find_var_in_block_tree, @function
debug_find_var_in_block_tree:
.LFB88:
	.loc 1 6190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# var, var
	movq	%rsi, -32(%rbp)	# block, block
	.loc 1 6193 0
	movq	-32(%rbp), %rax	# block, tmp61
	movq	32(%rax), %rax	# block_4(D)->block.vars, tmp62
	movq	%rax, -16(%rbp)	# tmp62, t
	jmp	.L1188	#
.L1191:
	.loc 1 6194 0
	movq	-16(%rbp), %rax	# t, tmp63
	cmpq	-24(%rbp), %rax	# var, tmp63
	jne	.L1189	#,
	.loc 1 6195 0
	movq	-32(%rbp), %rax	# block, D.22308
	jmp	.L1190	#
.L1189:
	.loc 1 6193 0
	movq	-16(%rbp), %rax	# t, tmp64
	movq	(%rax), %rax	# t_1->common.chain, tmp65
	movq	%rax, -16(%rbp)	# tmp65, t
.L1188:
	.loc 1 6193 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	jne	.L1191	#,
	.loc 1 6197 0 is_stmt 1
	movq	-32(%rbp), %rax	# block, tmp66
	movq	40(%rax), %rax	# block_4(D)->block.subblocks, tmp67
	movq	%rax, -16(%rbp)	# tmp67, t
	jmp	.L1192	#
.L1194:
.LBB98:
	.loc 1 6199 0
	movq	-16(%rbp), %rdx	# t, tmp68
	movq	-24(%rbp), %rax	# var, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	debug_find_var_in_block_tree	#
	movq	%rax, -8(%rbp)	# tmp70, ret
	.loc 1 6200 0
	cmpq	$0, -8(%rbp)	#, ret
	je	.L1193	#,
	.loc 1 6201 0
	movq	-8(%rbp), %rax	# ret, D.22308
	jmp	.L1190	#
.L1193:
.LBE98:
	.loc 1 6197 0
	movq	-16(%rbp), %rax	# t, tmp71
	movq	(%rax), %rax	# t_2->common.chain, tmp72
	movq	%rax, -16(%rbp)	# tmp72, t
.L1192:
	.loc 1 6197 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, t
	jne	.L1194	#,
	.loc 1 6204 0 is_stmt 1
	movl	$0, %eax	#, D.22308
.L1190:
	.loc 1 6205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	debug_find_var_in_block_tree, .-debug_find_var_in_block_tree
	.type	prepare_function_start, @function
prepare_function_start:
.LFB89:
	.loc 1 6211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6212 0
	movl	$432, %edi	#,
	call	ggc_alloc_cleared	#
	movq	%rax, cfun(%rip)	# cfun.482, cfun
	.loc 1 6214 0
	call	init_stmt_for_function	#
	.loc 1 6215 0
	call	init_eh_for_function	#
	.loc 1 6217 0
	movl	optimize(%rip), %eax	# optimize, optimize.483
	testl	%eax, %eax	# optimize.483
	sete	%al	#, D.22309
	movzbl	%al, %eax	# D.22309, cse_not_expected.484
	movl	%eax, cse_not_expected(%rip)	# cse_not_expected.484, cse_not_expected
	.loc 1 6220 0
	movl	$0, caller_save_needed(%rip)	#, caller_save_needed
	.loc 1 6223 0
	movq	cfun(%rip), %rax	# cfun, cfun.485
	movq	$0, 216(%rax)	#, cfun.485_7->x_stack_slot_list
	.loc 1 6225 0
	movq	cfun(%rip), %rax	# cfun, cfun.486
	movzbl	425(%rax), %edx	#, tmp115
	andl	$-2, %edx	#, tmp116
	movb	%dl, 425(%rax)	# tmp116,
	.loc 1 6226 0
	movq	cfun(%rip), %rax	# cfun, cfun.487
	movzbl	425(%rax), %edx	#, tmp119
	andl	$-3, %edx	#, tmp120
	movb	%dl, 425(%rax)	# tmp120,
	.loc 1 6229 0
	movq	cfun(%rip), %rax	# cfun, cfun.488
	movq	$0, 168(%rax)	#, cfun.488_10->x_nonlocal_goto_handler_slots
	.loc 1 6230 0
	movq	cfun(%rip), %rax	# cfun, cfun.489
	movq	$0, 184(%rax)	#, cfun.489_11->x_nonlocal_goto_stack_level
	.loc 1 6233 0
	movq	cfun(%rip), %rax	# cfun, cfun.490
	movq	$0, 160(%rax)	#, cfun.490_12->x_nonlocal_labels
	.loc 1 6234 0
	movq	cfun(%rip), %rax	# cfun, cfun.491
	movq	$0, 176(%rax)	#, cfun.491_13->x_nonlocal_goto_handler_labels
	.loc 1 6237 0
	movq	cfun(%rip), %rax	# cfun, cfun.492
	movl	$0, 152(%rax)	#, cfun.492_14->x_function_call_count
	.loc 1 6241 0
	movq	cfun(%rip), %rax	# cfun, cfun.493
	movl	$58, 304(%rax)	#, cfun.493_15->x_max_parm_reg
	.loc 1 6244 0
	call	init_emit	#
	.loc 1 6248 0
	call	init_expr	#
	.loc 1 6251 0
	movq	$0, reg_renumber(%rip)	#, reg_renumber
	.loc 1 6253 0
	movq	cfun(%rip), %rax	# cfun, cfun.494
	movq	%rax, %rdi	# cfun.494,
	call	init_varasm_status	#
	.loc 1 6256 0
	movq	cfun(%rip), %rax	# cfun, cfun.495
	movl	$0, 352(%rax)	#, cfun.495_17->inlinable
	.loc 1 6257 0
	movq	cfun(%rip), %rax	# cfun, cfun.496
	movq	$0, 368(%rax)	#, cfun.496_18->original_decl_initial
	.loc 1 6258 0
	movq	cfun(%rip), %rax	# cfun, cfun.497
	movq	$0, 360(%rax)	#, cfun.497_19->original_arg_vector
	.loc 1 6260 0
	movq	cfun(%rip), %rdx	# cfun, cfun.498
	movl	target_flags(%rip), %eax	# target_flags, target_flags.500
	andl	$33554432, %eax	#, D.22310
	testl	%eax, %eax	# D.22310
	je	.L1196	#,
	.loc 1 6260 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.499
	jmp	.L1197	#
.L1196:
	.loc 1 6260 0 discriminator 2
	movl	$32, %eax	#, iftmp.499
.L1197:
	.loc 1 6260 0 discriminator 3
	movl	%eax, 400(%rdx)	# iftmp.499, cfun.498_20->stack_alignment_needed
	.loc 1 6261 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rdx	# cfun, cfun.501
	movl	target_flags(%rip), %eax	# target_flags, target_flags.503
	andl	$33554432, %eax	#, D.22310
	testl	%eax, %eax	# D.22310
	je	.L1198	#,
	.loc 1 6261 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.502
	jmp	.L1199	#
.L1198:
	.loc 1 6261 0 discriminator 2
	movl	$32, %eax	#, iftmp.502
.L1199:
	.loc 1 6261 0 discriminator 3
	movl	%eax, 404(%rdx)	# iftmp.502, cfun.501_25->preferred_stack_boundary
	.loc 1 6264 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.504
	movzbl	424(%rax), %edx	# cfun.504_30->calls_setjmp, tmp123
	andl	$-17, %edx	#, tmp124
	movb	%dl, 424(%rax)	# tmp124, cfun.504_30->calls_setjmp
	.loc 1 6267 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.505
	movzbl	424(%rax), %edx	# cfun.505_31->calls_longjmp, tmp127
	andl	$-33, %edx	#, tmp128
	movb	%dl, 424(%rax)	# tmp128, cfun.505_31->calls_longjmp
	.loc 1 6269 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.506
	movzbl	424(%rax), %edx	# cfun.506_32->calls_alloca, tmp131
	andl	$-65, %edx	#, tmp132
	movb	%dl, 424(%rax)	# tmp132, cfun.506_32->calls_alloca
	.loc 1 6270 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.507
	movzbl	425(%rax), %edx	#, tmp135
	andl	$-5, %edx	#, tmp136
	movb	%dl, 425(%rax)	# tmp136,
	.loc 1 6271 0 discriminator 3
	movl	$0, current_function_is_leaf(%rip)	#, current_function_is_leaf
	.loc 1 6272 0 discriminator 3
	movl	$0, current_function_nothrow(%rip)	#, current_function_nothrow
	.loc 1 6273 0 discriminator 3
	movl	$0, current_function_sp_is_unchanging(%rip)	#, current_function_sp_is_unchanging
	.loc 1 6274 0 discriminator 3
	movl	$0, current_function_uses_only_leaf_regs(%rip)	#, current_function_uses_only_leaf_regs
	.loc 1 6275 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.508
	movzbl	425(%rax), %edx	#, tmp139
	andl	$-9, %edx	#, tmp140
	movb	%dl, 425(%rax)	# tmp140,
	.loc 1 6276 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.509
	movzbl	425(%rax), %edx	#, tmp143
	andl	$-17, %edx	#, tmp144
	movb	%dl, 425(%rax)	# tmp144,
	.loc 1 6278 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.510
	movzbl	424(%rax), %edx	# cfun.510_36->returns_pcc_struct, tmp147
	andl	$-3, %edx	#, tmp148
	movb	%dl, 424(%rax)	# tmp148, cfun.510_36->returns_pcc_struct
	.loc 1 6279 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.511
	movzbl	424(%rax), %edx	# cfun.511_37->returns_struct, tmp151
	andl	$-2, %edx	#, tmp152
	movb	%dl, 424(%rax)	# tmp152, cfun.511_37->returns_struct
	.loc 1 6280 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.512
	movq	$0, 416(%rax)	#, cfun.512_38->epilogue_delay_list
	.loc 1 6281 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.513
	movzbl	426(%rax), %edx	#, tmp155
	andl	$-17, %edx	#, tmp156
	movb	%dl, 426(%rax)	# tmp156,
	.loc 1 6282 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.514
	movzbl	426(%rax), %edx	#, tmp159
	andl	$-33, %edx	#, tmp160
	movb	%dl, 426(%rax)	# tmp160,
	.loc 1 6283 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.515
	movq	$0, 136(%rax)	#, cfun.515_41->cannot_inline
	.loc 1 6286 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.516
	movq	$0, 232(%rax)	#, cfun.516_42->x_tail_recursion_label
	.loc 1 6289 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.517
	movq	$0, 248(%rax)	#, cfun.517_43->x_arg_pointer_save_area
	.loc 1 6292 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.518
	movq	$0, 264(%rax)	#, cfun.518_44->x_frame_offset
	.loc 1 6295 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.519
	movq	$0, 208(%rax)	#, cfun.519_45->x_save_expr_regs
	.loc 1 6298 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.520
	movq	$0, 224(%rax)	#, cfun.520_46->x_rtl_expr_chain
	.loc 1 6301 0 discriminator 3
	call	init_temp_slots	#
	.loc 1 6305 0 discriminator 3
	movl	$1, rtx_equal_function_value_matters(%rip)	#, rtx_equal_function_value_matters
	.loc 1 6308 0 discriminator 3
	movl	$0, virtuals_instantiated(%rip)	#, virtuals_instantiated
	.loc 1 6311 0 discriminator 3
	movl	$1, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 6314 0 discriminator 3
	movl	$0, frame_pointer_needed(%rip)	#, frame_pointer_needed
	.loc 1 6317 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.521
	movzbl	426(%rax), %edx	#, tmp163
	andl	$-2, %edx	#, tmp164
	movb	%dl, 426(%rax)	# tmp164,
	.loc 1 6318 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.522
	movzbl	426(%rax), %edx	#, tmp167
	andl	$-3, %edx	#, tmp168
	movb	%dl, 426(%rax)	# tmp168,
	.loc 1 6321 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.523
	movq	$0, 280(%rax)	#, cfun.523_49->x_trampoline_list
	.loc 1 6323 0 discriminator 3
	call	init_pending_stack_adjust	#
	.loc 1 6324 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.524
	movq	16(%rax), %rax	# cfun.524_50->expr, D.22311
	movl	$0, 4(%rax)	#, _51->x_inhibit_defer_pop
	.loc 1 6326 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.525
	movl	$0, 76(%rax)	#, cfun.525_52->outgoing_args_size
	.loc 1 6328 0 discriminator 3
	movq	init_lang_status(%rip), %rax	# init_lang_status, init_lang_status.526
	testq	%rax, %rax	# init_lang_status.526
	je	.L1200	#,
	.loc 1 6329 0
	movq	init_lang_status(%rip), %rax	# init_lang_status, init_lang_status.527
	movq	cfun(%rip), %rdx	# cfun, cfun.528
	movq	%rdx, %rdi	# cfun.528,
	call	*%rax	# init_lang_status.527
.L1200:
	.loc 1 6330 0
	movq	init_machine_status(%rip), %rax	# init_machine_status, init_machine_status.529
	testq	%rax, %rax	# init_machine_status.529
	je	.L1195	#,
	.loc 1 6331 0
	movq	init_machine_status(%rip), %rax	# init_machine_status, init_machine_status.530
	movq	cfun(%rip), %rdx	# cfun, cfun.531
	movq	%rdx, %rdi	# cfun.531,
	call	*%rax	# init_machine_status.530
.L1195:
	.loc 1 6332 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	prepare_function_start, .-prepare_function_start
	.globl	init_dummy_function_start
	.type	init_dummy_function_start, @function
init_dummy_function_start:
.LFB90:
	.loc 1 6339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6340 0
	call	prepare_function_start	#
	.loc 1 6341 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	init_dummy_function_start, .-init_dummy_function_start
	.section	.rodata
.LC7:
	.string	"function returns an aggregate"
	.text
	.globl	init_function_start
	.type	init_function_start, @function
init_function_start:
.LFB91:
	.loc 1 6352 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# subr, subr
	movq	%rsi, -32(%rbp)	# filename, filename
	movl	%edx, -36(%rbp)	# line, line
	.loc 1 6353 0
	call	prepare_function_start	#
	.loc 1 6355 0
	movq	cfun(%rip), %rbx	# cfun, cfun.532
	movq	decl_printable_name(%rip), %rax	# decl_printable_name, decl_printable_name.533
	movq	-24(%rbp), %rdx	# subr, tmp103
	movl	$2, %esi	#,
	movq	%rdx, %rdi	# tmp103,
	call	*%rax	# decl_printable_name.533
	movq	%rax, 40(%rbx)	# D.22312, cfun.532_3->name
	.loc 1 6356 0
	movq	cfun(%rip), %rax	# cfun, cfun.534
	movq	-24(%rbp), %rdx	# subr, tmp104
	movq	%rdx, 48(%rax)	# tmp104, cfun.534_7->decl
	.loc 1 6360 0
	movq	cfun(%rip), %rbx	# cfun, cfun.535
	.loc 1 6361 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.537
	movq	%rax, %rdi	# current_function_decl.537,
	call	decl_function_context	#
	.loc 1 6362 0
	testq	%rax, %rax	# D.22313
	je	.L1204	#,
	.loc 1 6362 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.538
	movzbl	49(%rax), %eax	# *current_function_decl.538_11, D.22314
	andl	$4, %eax	#, D.22314
	testb	%al, %al	# D.22314
	jne	.L1204	#,
	.loc 1 6362 0 discriminator 3
	movl	$1, %eax	#, iftmp.536
	jmp	.L1205	#
.L1204:
	.loc 1 6362 0 discriminator 2
	movl	$0, %eax	#, iftmp.536
.L1205:
	.loc 1 6361 0 is_stmt 1
	andl	$1, %eax	#, D.22315
	andl	$1, %eax	#, tmp106
	leal	0(,%rax,8), %edx	#, tmp107
	movzbl	424(%rbx), %eax	# cfun.535_8->needs_context, tmp108
	andl	$-9, %eax	#, tmp109
	orl	%edx, %eax	# tmp107, tmp110
	movb	%al, 424(%rbx)	# tmp110, cfun.535_8->needs_context
	.loc 1 6365 0
	movl	immediate_size_expand(%rip), %eax	# immediate_size_expand, immediate_size_expand.539
	addl	$1, %eax	#, immediate_size_expand.540
	movl	%eax, immediate_size_expand(%rip)	# immediate_size_expand.540, immediate_size_expand
	.loc 1 6370 0
	cmpl	$0, -36(%rbp)	#, line
	jle	.L1206	#,
	.loc 1 6371 0
	movl	-36(%rbp), %edx	# line, tmp111
	movq	-32(%rbp), %rax	# filename, tmp112
	movl	%edx, %esi	# tmp111,
	movq	%rax, %rdi	# tmp112,
	call	emit_line_note	#
.L1206:
	.loc 1 6376 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 6379 0
	movq	-24(%rbp), %rax	# subr, tmp113
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	%rax, %rdi	# D.22313,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.22316
	je	.L1207	#,
	.loc 1 6384 0
	movq	cfun(%rip), %rax	# cfun, cfun.541
	movzbl	424(%rax), %edx	# cfun.541_24->returns_struct, tmp116
	orl	$1, %edx	#, tmp117
	movb	%dl, 424(%rax)	# tmp117, cfun.541_24->returns_struct
.L1207:
	.loc 1 6389 0
	movl	warn_aggregate_return(%rip), %eax	# warn_aggregate_return, warn_aggregate_return.542
	testl	%eax, %eax	# warn_aggregate_return.542
	je	.L1208	#,
	.loc 1 6390 0
	movq	-24(%rbp), %rax	# subr, tmp118
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	8(%rax), %rax	# _26->common.type, D.22313
	movzbl	16(%rax), %eax	# _27->common.code, D.22314
	cmpb	$18, %al	#, D.22314
	je	.L1209	#,
	.loc 1 6390 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# subr, tmp119
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	8(%rax), %rax	# _29->common.type, D.22313
	movzbl	16(%rax), %eax	# _30->common.code, D.22314
	cmpb	$20, %al	#, D.22314
	je	.L1209	#,
	movq	-24(%rbp), %rax	# subr, tmp120
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	8(%rax), %rax	# _32->common.type, D.22313
	movzbl	16(%rax), %eax	# _33->common.code, D.22314
	cmpb	$21, %al	#, D.22314
	je	.L1209	#,
	movq	-24(%rbp), %rax	# subr, tmp121
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	8(%rax), %rax	# _35->common.type, D.22313
	movzbl	16(%rax), %eax	# _36->common.code, D.22314
	cmpb	$22, %al	#, D.22314
	je	.L1209	#,
	movq	-24(%rbp), %rax	# subr, tmp122
	movq	96(%rax), %rax	# subr_5(D)->decl.result, D.22313
	movq	8(%rax), %rax	# _38->common.type, D.22313
	movzbl	16(%rax), %eax	# _39->common.code, D.22314
	cmpb	$19, %al	#, D.22314
	jne	.L1208	#,
.L1209:
	.loc 1 6391 0 is_stmt 1
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1208:
	.loc 1 6393 0
	movq	cfun(%rip), %rax	# cfun, cfun.543
	.loc 1 6394 0
	movq	-24(%rbp), %rdx	# subr, tmp123
	movq	96(%rdx), %rdx	# subr_5(D)->decl.result, D.22313
	movq	8(%rdx), %rdx	# _42->common.type, D.22313
	movzbl	16(%rdx), %edx	# _43->common.code, D.22314
	cmpb	$13, %dl	#, D.22314
	je	.L1210	#,
	.loc 1 6394 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rdx	# subr, tmp124
	movq	96(%rdx), %rdx	# subr_5(D)->decl.result, D.22313
	movq	8(%rdx), %rdx	# _45->common.type, D.22313
	movzbl	16(%rdx), %edx	# _46->common.code, D.22314
	cmpb	$15, %dl	#, D.22314
	jne	.L1211	#,
.L1210:
	.loc 1 6394 0 discriminator 1
	movl	$1, %edx	#, iftmp.544
	jmp	.L1212	#
.L1211:
	.loc 1 6394 0 discriminator 3
	movl	$0, %edx	#, iftmp.544
.L1212:
	.loc 1 6394 0 discriminator 4
	andl	$1, %edx	#, D.22315
	andl	$1, %edx	#, tmp126
	leal	0(,%rdx,4), %ecx	#, tmp127
	movzbl	424(%rax), %edx	# cfun.543_41->returns_pointer, tmp128
	andl	$-5, %edx	#, tmp129
	orl	%ecx, %edx	# tmp127, tmp130
	movb	%dl, 424(%rax)	# tmp130, cfun.543_41->returns_pointer
	.loc 1 6395 0 is_stmt 1 discriminator 4
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	init_function_start, .-init_function_start
	.globl	init_function_for_compilation
	.type	init_function_for_compilation, @function
init_function_for_compilation:
.LFB92:
	.loc 1 6401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6402 0
	movq	$0, reg_renumber(%rip)	#, reg_renumber
	.loc 1 6405 0
	movq	prologue(%rip), %rax	# prologue, prologue.545
	movl	$0, %esi	#,
	movq	%rax, %rdi	# prologue.545,
	call	varray_grow	#
	movq	%rax, prologue(%rip)	# prologue.546, prologue
	.loc 1 6406 0
	movq	epilogue(%rip), %rax	# epilogue, epilogue.547
	movl	$0, %esi	#,
	movq	%rax, %rdi	# epilogue.547,
	call	varray_grow	#
	movq	%rax, epilogue(%rip)	# epilogue.548, epilogue
	.loc 1 6407 0
	movq	sibcall_epilogue(%rip), %rax	# sibcall_epilogue, sibcall_epilogue.549
	movl	$0, %esi	#,
	movq	%rax, %rdi	# sibcall_epilogue.549,
	call	varray_grow	#
	movq	%rax, sibcall_epilogue(%rip)	# sibcall_epilogue.550, sibcall_epilogue
	.loc 1 6408 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	init_function_for_compilation, .-init_function_for_compilation
	.globl	mark_varargs
	.type	mark_varargs, @function
mark_varargs:
.LFB93:
	.loc 1 6415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6416 0
	movq	cfun(%rip), %rax	# cfun, cfun.551
	movzbl	426(%rax), %edx	#, tmp62
	orl	$1, %edx	#, tmp63
	movb	%dl, 426(%rax)	# tmp63,
	.loc 1 6417 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	mark_varargs, .-mark_varargs
	.globl	expand_main_function
	.type	expand_main_function, @function
expand_main_function:
.LFB94:
	.loc 1 6428 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 6430 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.553
	andl	$33554432, %eax	#, D.22318
	testl	%eax, %eax	# D.22318
	je	.L1216	#,
	.loc 1 6430 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.552
	jmp	.L1217	#
.L1216:
	.loc 1 6430 0 discriminator 2
	movl	$32, %eax	#, iftmp.552
.L1217:
	.loc 1 6430 0 discriminator 3
	movl	ix86_preferred_stack_boundary(%rip), %edx	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.554
	cmpl	%edx, %eax	# ix86_preferred_stack_boundary.554, iftmp.552
	jge	.L1215	#,
	.loc 1 6430 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.555
	andl	$33554432, %eax	#, D.22318
	testl	%eax, %eax	# D.22318
	jne	.L1215	#,
.LBB99:
	.loc 1 6432 0 is_stmt 1
	movl	ix86_preferred_stack_boundary(%rip), %eax	# ix86_preferred_stack_boundary, ix86_preferred_stack_boundary.556
	leal	7(%rax), %edx	#, tmp83
	testl	%eax, %eax	# tmp82
	cmovs	%edx, %eax	# tmp83,, tmp82
	sarl	$3, %eax	#, tmp84
	movl	%eax, -36(%rbp)	# tmp84, align
	.loc 1 6435 0
	call	start_sequence	#
	.loc 1 6438 0
	movq	global_rtl+16(%rip), %rbx	# global_rtl, D.22319
	movl	-36(%rbp), %eax	# align, tmp85
	negl	%eax	# D.22318
	cltq
	movq	%rax, %rsi	# D.22320,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.22319
	movq	global_rtl+16(%rip), %rdx	# global_rtl, D.22319
	movl	target_flags(%rip), %eax	# target_flags, target_flags.558
	andl	$33554432, %eax	#, D.22318
	testl	%eax, %eax	# D.22318
	je	.L1219	#,
	.loc 1 6438 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.557
	jmp	.L1220	#
.L1219:
	.loc 1 6438 0 discriminator 2
	movl	$4, %eax	#, iftmp.557
.L1220:
	.loc 1 6438 0 discriminator 3
	movl	$2, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rbx, %r8	# D.22319,
	movl	$83, %esi	#,
	movl	%eax, %edi	# iftmp.557,
	call	expand_simple_binop	#
	movq	%rax, -32(%rbp)	# tmp86, tmp
	.loc 1 6446 0 is_stmt 1 discriminator 3
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22319
	cmpq	-32(%rbp), %rax	# tmp, D.22319
	je	.L1221	#,
	.loc 1 6447 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22319
	movq	-32(%rbp), %rdx	# tmp, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# D.22319,
	call	emit_move_insn	#
.L1221:
	.loc 1 6450 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.22319
	movl	target_flags(%rip), %eax	# target_flags, target_flags.560
	andl	$33554432, %eax	#, D.22318
	testl	%eax, %eax	# D.22318
	je	.L1222	#,
	.loc 1 6450 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.559
	jmp	.L1223	#
.L1222:
	.loc 1 6450 0 discriminator 2
	movl	$4, %eax	#, iftmp.559
.L1223:
	.loc 1 6450 0 discriminator 3
	movq	%rdx, %rsi	# D.22319,
	movl	%eax, %edi	# iftmp.559,
	call	force_reg	#
	movq	%rax, -32(%rbp)	# tmp88, tmp
	.loc 1 6451 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# tmp, tmp89
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	allocate_dynamic_stack_space	#
	.loc 1 6452 0 discriminator 3
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp90, seq
	.loc 1 6453 0 discriminator 3
	call	end_sequence	#
	.loc 1 6455 0 discriminator 3
	call	get_last_insn	#
	movq	%rax, -32(%rbp)	# tmp91, tmp
	jmp	.L1224	#
.L1227:
	.loc 1 6456 0
	movq	-32(%rbp), %rax	# tmp, tmp92
	movzwl	(%rax), %eax	# tmp_1->code, D.22321
	cmpw	$37, %ax	#, D.22321
	jne	.L1225	#,
	.loc 1 6456 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tmp, tmp93
	movl	40(%rax), %eax	# tmp_1->fld[4].rtint, D.22318
	cmpl	$-87, %eax	#, D.22318
	jne	.L1225	#,
	.loc 1 6457 0 is_stmt 1
	jmp	.L1226	#
.L1225:
	.loc 1 6455 0
	movq	-32(%rbp), %rax	# tmp, tmp94
	movq	16(%rax), %rax	# tmp_1->fld[1].rtx, tmp95
	movq	%rax, -32(%rbp)	# tmp95, tmp
.L1224:
	.loc 1 6455 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, tmp
	jne	.L1227	#,
.L1226:
	.loc 1 6458 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, tmp
	je	.L1228	#,
	.loc 1 6459 0
	movq	-32(%rbp), %rdx	# tmp, tmp96
	movq	-24(%rbp), %rax	# seq, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	emit_insn_before	#
	jmp	.L1215	#
.L1228:
	.loc 1 6461 0
	movq	-24(%rbp), %rax	# seq, tmp98
	movq	%rax, %rdi	# tmp98,
	call	emit_insn	#
.L1215:
.LBE99:
	.loc 1 6469 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	expand_main_function, .-expand_main_function
	.globl	expand_pending_sizes
	.type	expand_pending_sizes, @function
expand_pending_sizes:
.LFB95:
	.loc 1 6482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pending_sizes, pending_sizes
	.loc 1 6486 0
	movq	-24(%rbp), %rax	# pending_sizes, tmp61
	movq	%rax, -8(%rbp)	# tmp61, tem
	jmp	.L1230	#
.L1231:
	.loc 1 6488 0 discriminator 2
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.22322
	movq	-8(%rbp), %rax	# tem, tmp62
	movq	32(%rax), %rax	# tem_1->list.value, D.22323
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.22323,
	call	expand_expr	#
	.loc 1 6491 0 discriminator 2
	call	emit_queue	#
	.loc 1 6486 0 discriminator 2
	movq	-8(%rbp), %rax	# tem, tmp63
	movq	(%rax), %rax	# tem_1->common.chain, tmp64
	movq	%rax, -8(%rbp)	# tmp64, tem
.L1230:
	.loc 1 6486 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tem
	jne	.L1231	#,
	.loc 1 6493 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	expand_pending_sizes, .-expand_pending_sizes
	.globl	expand_function_start
	.type	expand_function_start, @function
expand_function_start:
.LFB96:
	.loc 1 6505 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# subr, subr
	movl	%esi, -92(%rbp)	# parms_have_cleanups, parms_have_cleanups
	.loc 1 6507 0
	movq	$0, -64(%rbp)	#, last_ptr
	.loc 1 6511 0
	call	init_recog_no_volatile	#
	.loc 1 6513 0
	movq	cfun(%rip), %rax	# cfun, cfun.561
	.loc 1 6514 0
	movl	flag_instrument_function_entry_exit(%rip), %edx	# flag_instrument_function_entry_exit, flag_instrument_function_entry_exit.563
	.loc 1 6515 0
	testl	%edx, %edx	# flag_instrument_function_entry_exit.563
	je	.L1233	#,
	.loc 1 6515 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# subr, tmp196
	movzbl	51(%rdx), %edx	# *subr_21(D), D.22324
	andl	$2, %edx	#, D.22324
	testb	%dl, %dl	# D.22324
	jne	.L1233	#,
	.loc 1 6515 0 discriminator 3
	movl	$1, %edx	#, iftmp.562
	jmp	.L1234	#
.L1233:
	.loc 1 6515 0 discriminator 2
	movl	$0, %edx	#, iftmp.562
.L1234:
	.loc 1 6514 0 is_stmt 1
	andl	$1, %edx	#, D.22325
	andl	$1, %edx	#, tmp198
	movl	%edx, %ecx	# tmp198, tmp199
	sall	$5, %ecx	#, tmp199
	movzbl	425(%rax), %edx	#, tmp200
	andl	$-33, %edx	#, tmp201
	orl	%ecx, %edx	# tmp199, tmp202
	movb	%dl, 425(%rax)	# tmp202,
	.loc 1 6517 0
	movq	cfun(%rip), %rax	# cfun, cfun.564
	.loc 1 6518 0
	movl	profile_flag(%rip), %edx	# profile_flag, profile_flag.566
	.loc 1 6519 0
	testl	%edx, %edx	# profile_flag.566
	je	.L1235	#,
	.loc 1 6519 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# subr, tmp203
	movzbl	51(%rdx), %edx	# *subr_21(D), D.22324
	andl	$2, %edx	#, D.22324
	testb	%dl, %dl	# D.22324
	jne	.L1235	#,
	.loc 1 6519 0 discriminator 3
	movl	$1, %edx	#, iftmp.565
	jmp	.L1236	#
.L1235:
	.loc 1 6519 0 discriminator 2
	movl	$0, %edx	#, iftmp.565
.L1236:
	.loc 1 6518 0 is_stmt 1
	andl	$1, %edx	#, D.22325
	andl	$1, %edx	#, tmp205
	movl	%edx, %ecx	# tmp205, tmp206
	sall	$6, %ecx	#, tmp206
	movzbl	425(%rax), %edx	#, tmp207
	andl	$-65, %edx	#, tmp208
	orl	%ecx, %edx	# tmp206, tmp209
	movb	%dl, 425(%rax)	# tmp209,
	.loc 1 6521 0
	movq	cfun(%rip), %rax	# cfun, cfun.567
	.loc 1 6522 0
	movq	stack_limit_rtx(%rip), %rdx	# stack_limit_rtx, stack_limit_rtx.569
	testq	%rdx, %rdx	# stack_limit_rtx.569
	je	.L1237	#,
	.loc 1 6522 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# subr, tmp210
	movzbl	51(%rdx), %edx	# *subr_21(D), D.22324
	andl	$16, %edx	#, D.22324
	testb	%dl, %dl	# D.22324
	jne	.L1237	#,
	.loc 1 6522 0 discriminator 3
	movl	$1, %edx	#, iftmp.568
	jmp	.L1238	#
.L1237:
	.loc 1 6522 0 discriminator 2
	movl	$0, %edx	#, iftmp.568
.L1238:
	.loc 1 6522 0 discriminator 4
	andl	$1, %edx	#, D.22325
	movl	%edx, %ecx	# D.22325, tmp212
	sall	$7, %ecx	#, tmp212
	movzbl	425(%rax), %edx	#, tmp213
	andl	$127, %edx	#, tmp214
	orl	%ecx, %edx	# tmp212, tmp215
	movb	%dl, 425(%rax)	# tmp215,
	.loc 1 6526 0 is_stmt 1 discriminator 4
	movq	cfun(%rip), %rax	# cfun, cfun.570
	movzbl	424(%rax), %eax	# *cfun.570_44, D.22324
	andl	$8, %eax	#, D.22324
	testb	%al, %al	# D.22324
	je	.L1239	#,
	.loc 1 6528 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.572
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1240	#,
	.loc 1 6528 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.571
	jmp	.L1241	#
.L1240:
	.loc 1 6528 0 discriminator 2
	movl	$4, %eax	#, iftmp.571
.L1241:
	.loc 1 6528 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22324
	movzbl	%al, %ecx	# D.22324, D.22327
	movl	target_flags(%rip), %eax	# target_flags, target_flags.574
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1242	#,
	.loc 1 6528 0 discriminator 1
	movl	$5, %eax	#, iftmp.573
	jmp	.L1243	#
.L1242:
	.loc 1 6528 0 discriminator 2
	movl	$4, %eax	#, iftmp.573
.L1243:
	.loc 1 6528 0 discriminator 3
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.22327,
	movl	%eax, %edi	# iftmp.573,
	call	assign_stack_local	#
	movq	%rax, -64(%rbp)	# tmp217, last_ptr
	.loc 1 6533 0 is_stmt 1 discriminator 3
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.575
	movzwl	(%rax), %eax	# static_chain_incoming_rtx.575_58->code, D.22328
	.loc 1 6532 0 discriminator 3
	cmpw	$61, %ax	#, D.22328
	jne	.L1239	#,
	.loc 1 6534 0
	movq	static_chain_incoming_rtx(%rip), %rdx	# static_chain_incoming_rtx, static_chain_incoming_rtx.576
	movq	-64(%rbp), %rax	# last_ptr, tmp218
	movq	%rdx, %rsi	# static_chain_incoming_rtx.576,
	movq	%rax, %rdi	# tmp218,
	call	emit_move_insn	#
.L1239:
	.loc 1 6540 0
	cmpl	$0, -92(%rbp)	#, parms_have_cleanups
	je	.L1244	#,
	.loc 1 6541 0
	movq	cfun(%rip), %rbx	# cfun, cfun.577
	call	gen_label_rtx	#
	movq	%rax, 192(%rbx)	# D.22329, cfun.577_62->x_cleanup_label
	jmp	.L1245	#
.L1244:
	.loc 1 6543 0
	movq	cfun(%rip), %rax	# cfun, cfun.578
	movq	$0, 192(%rax)	#, cfun.578_64->x_cleanup_label
.L1245:
	.loc 1 6548 0
	movq	cfun(%rip), %rbx	# cfun, cfun.579
	call	gen_label_rtx	#
	movq	%rax, 200(%rbx)	# D.22329, cfun.579_65->x_return_label
	.loc 1 6555 0
	movq	-88(%rbp), %rax	# subr, tmp219
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movq	%rax, %rdi	# D.22330,
	call	aggregate_value_p	#
	testl	%eax, %eax	# D.22326
	je	.L1246	#,
.LBB100:
	.loc 1 6558 0
	movq	$0, -56(%rbp)	#, value_address
	.loc 1 6572 0
	movq	struct_value_incoming_rtx(%rip), %rax	# struct_value_incoming_rtx, struct_value_incoming_rtx.580
	testq	%rax, %rax	# struct_value_incoming_rtx.580
	je	.L1247	#,
	.loc 1 6574 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.582
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1248	#,
	.loc 1 6574 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.581
	jmp	.L1249	#
.L1248:
	.loc 1 6574 0 discriminator 2
	movl	$4, %eax	#, iftmp.581
.L1249:
	.loc 1 6574 0 discriminator 3
	movl	%eax, %edi	# iftmp.581,
	call	gen_reg_rtx	#
	movq	%rax, -56(%rbp)	# tmp220, value_address
	.loc 1 6575 0 is_stmt 1 discriminator 3
	movq	struct_value_incoming_rtx(%rip), %rdx	# struct_value_incoming_rtx, struct_value_incoming_rtx.583
	movq	-56(%rbp), %rax	# value_address, tmp221
	movq	%rdx, %rsi	# struct_value_incoming_rtx.583,
	movq	%rax, %rdi	# tmp221,
	call	emit_move_insn	#
.L1247:
	.loc 1 6578 0
	cmpq	$0, -56(%rbp)	#, value_address
	je	.L1250	#,
.LBB101:
	.loc 1 6580 0
	movq	-88(%rbp), %rax	# subr, tmp222
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movzbl	48(%rax), %eax	# _77->decl.mode, D.22324
	movzbl	%al, %eax	# D.22324, D.22331
	movq	-56(%rbp), %rdx	# value_address, tmp223
	movq	%rdx, %rsi	# tmp223,
	movl	%eax, %edi	# D.22331,
	call	gen_rtx_MEM	#
	movq	%rax, -48(%rbp)	# tmp224, x
	.loc 1 6581 0
	movq	-88(%rbp), %rax	# subr, tmp225
	movq	96(%rax), %rcx	# subr_21(D)->decl.result, D.22330
	movq	-48(%rbp), %rax	# x, tmp226
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.22330,
	movq	%rax, %rdi	# tmp226,
	call	set_mem_attributes	#
	.loc 1 6582 0
	movq	-88(%rbp), %rax	# subr, tmp227
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movq	-48(%rbp), %rdx	# x, tmp228
	movq	%rdx, 144(%rax)	# tmp228, _82->decl.rtl
.LBE101:
.LBE100:
	jmp	.L1251	#
.L1250:
	jmp	.L1251	#
.L1246:
	.loc 1 6585 0
	movq	-88(%rbp), %rax	# subr, tmp229
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movzbl	48(%rax), %eax	# _83->decl.mode, D.22324
	testb	%al, %al	# D.22324
	jne	.L1252	#,
	.loc 1 6587 0
	movq	-88(%rbp), %rax	# subr, tmp230
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movq	$0, 144(%rax)	#, _85->decl.rtl
	jmp	.L1251	#
.L1252:
.LBB102:
	.loc 1 6597 0
	movq	-88(%rbp), %rax	# subr, tmp231
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movq	8(%rax), %rax	# _86->common.type, D.22330
	.loc 1 6596 0
	movq	-88(%rbp), %rcx	# subr, tmp232
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp232,
	movq	%rax, %rdi	# D.22330,
	call	hard_function_value	#
	movq	%rax, -40(%rbp)	# tmp233, hard_reg
	.loc 1 6602 0
	movq	-40(%rbp), %rax	# hard_reg, tmp234
	movzwl	(%rax), %eax	# hard_reg_88->code, D.22328
	cmpw	$61, %ax	#, D.22328
	je	.L1253	#,
	.loc 1 6603 0
	movq	-88(%rbp), %rax	# subr, tmp235
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movq	-40(%rbp), %rdx	# hard_reg, tmp236
	movq	%rdx, 144(%rax)	# tmp236, _90->decl.rtl
	jmp	.L1251	#
.L1253:
	.loc 1 6607 0
	movq	-88(%rbp), %rax	# subr, tmp237
	movq	96(%rax), %rbx	# subr_21(D)->decl.result, D.22330
	movq	-40(%rbp), %rax	# hard_reg, tmp238
	movzbl	2(%rax), %eax	# hard_reg_88->mode, D.22324
	movzbl	%al, %eax	# D.22324, D.22331
	movl	%eax, %edi	# D.22331,
	call	gen_reg_rtx	#
	movq	%rax, 144(%rbx)	# D.22329, _91->decl.rtl
	.loc 1 6611 0
	movq	-88(%rbp), %rax	# subr, tmp239
	movq	96(%rax), %rax	# subr_21(D)->decl.result, D.22330
	movzbl	49(%rax), %edx	#, tmp242
	orl	$4, %edx	#, tmp243
	movb	%dl, 49(%rax)	# tmp243,
.L1251:
.LBE102:
	.loc 1 6618 0
	movq	-88(%rbp), %rax	# subr, tmp244
	movq	%rax, %rdi	# tmp244,
	call	assign_parms	#
	.loc 1 6623 0
	movq	cfun(%rip), %rax	# cfun, cfun.584
	movzbl	424(%rax), %eax	# *cfun.584_96, D.22324
	andl	$8, %eax	#, D.22324
	testb	%al, %al	# D.22324
	je	.L1254	#,
	.loc 1 6624 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.585
	movzwl	(%rax), %eax	# static_chain_incoming_rtx.585_99->code, D.22328
	cmpw	$61, %ax	#, D.22328
	je	.L1254	#,
	.loc 1 6625 0
	movq	static_chain_incoming_rtx(%rip), %rdx	# static_chain_incoming_rtx, static_chain_incoming_rtx.586
	movq	-64(%rbp), %rax	# last_ptr, tmp245
	movq	%rdx, %rsi	# static_chain_incoming_rtx.586,
	movq	%rax, %rdi	# tmp245,
	call	emit_move_insn	#
.L1254:
	.loc 1 6631 0
	movl	$-87, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 6633 0
	call	get_last_insn	#
	movzwl	(%rax), %eax	# _102->code, D.22328
	cmpw	$37, %ax	#, D.22328
	je	.L1255	#,
	.loc 1 6634 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
.L1255:
	.loc 1 6635 0
	movq	cfun(%rip), %rbx	# cfun, cfun.587
	call	get_last_insn	#
	movq	%rax, 288(%rbx)	# D.22329, cfun.587_104->x_parm_birth_insn
	.loc 1 6637 0
	movq	cfun(%rip), %rax	# cfun, cfun.588
	movq	$0, 272(%rax)	#, cfun.588_106->x_context_display
	.loc 1 6638 0
	movq	cfun(%rip), %rax	# cfun, cfun.589
	movzbl	424(%rax), %eax	# *cfun.589_107, D.22324
	andl	$8, %eax	#, D.22324
	testb	%al, %al	# D.22324
	je	.L1256	#,
	.loc 1 6641 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.590
	movq	%rax, %rdi	# current_function_decl.590,
	call	decl_function_context	#
	movq	%rax, -72(%rbp)	# tmp246, tem
	.loc 1 6645 0
	cmpq	$0, -72(%rbp)	#, tem
	je	.L1257	#,
	.loc 1 6651 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.591
	movzwl	(%rax), %eax	# static_chain_incoming_rtx.591_112->code, D.22328
	.loc 1 6650 0
	cmpw	$61, %ax	#, D.22328
	jne	.L1258	#,
	.loc 1 6652 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.592
	movq	-64(%rbp), %rdx	# last_ptr, tmp247
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# static_chain_incoming_rtx.592,
	call	emit_move_insn	#
.L1258:
	.loc 1 6653 0
	movq	static_chain_incoming_rtx(%rip), %rax	# static_chain_incoming_rtx, static_chain_incoming_rtx.593
	movq	%rax, %rdi	# static_chain_incoming_rtx.593,
	call	copy_to_reg	#
	movq	%rax, -64(%rbp)	# tmp248, last_ptr
	.loc 1 6656 0
	jmp	.L1259	#
.L1257:
	jmp	.L1259	#
.L1267:
.LBB103:
	.loc 1 6658 0
	movl	$120, %edi	#,
	call	make_node	#
	movq	%rax, -32(%rbp)	# tmp249, rtlexp
	.loc 1 6660 0
	movq	-32(%rbp), %rax	# rtlexp, tmp250
	leaq	40(%rax), %rdx	#, D.22332
	movq	-64(%rbp), %rax	# last_ptr, tmp251
	movq	%rax, (%rdx)	# tmp251, MEM[(struct rtx_def * *)_118]
	.loc 1 6661 0
	movq	cfun(%rip), %rbx	# cfun, cfun.594
	movq	cfun(%rip), %rax	# cfun, cfun.595
	movq	272(%rax), %rdx	# cfun.595_120->x_context_display, D.22330
	movq	-32(%rbp), %rcx	# rtlexp, tmp252
	movq	-72(%rbp), %rax	# tem, tmp253
	movq	%rcx, %rsi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	tree_cons	#
	movq	%rax, 272(%rbx)	# D.22330, cfun.594_119->x_context_display
	.loc 1 6662 0
	movq	-72(%rbp), %rax	# tem, tmp254
	movq	%rax, %rdi	# tmp254,
	call	decl_function_context	#
	movq	%rax, -72(%rbp)	# tmp255, tem
	.loc 1 6663 0
	cmpq	$0, -72(%rbp)	#, tem
	jne	.L1260	#,
	.loc 1 6664 0
	jmp	.L1256	#
.L1260:
	.loc 1 6668 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.597
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1261	#,
	.loc 1 6668 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.596
	jmp	.L1262	#
.L1261:
	.loc 1 6668 0 discriminator 2
	movl	$4, %eax	#, iftmp.596
.L1262:
	.loc 1 6668 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22324
	movzbl	%al, %eax	# D.22324, D.22327
	negq	%rax	# D.22327
	movq	%rax, %rdx	# D.22327, D.22327
	movq	-64(%rbp), %rax	# last_ptr, tmp257
	movq	%rdx, %rsi	# D.22327,
	movq	%rax, %rdi	# tmp257,
	call	plus_constant_wide	#
	movq	%rax, -64(%rbp)	# tmp258, last_ptr
	.loc 1 6671 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.599
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1263	#,
	.loc 1 6671 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.598
	jmp	.L1264	#
.L1263:
	.loc 1 6671 0 discriminator 2
	movl	$4, %eax	#, iftmp.598
.L1264:
	.loc 1 6671 0 discriminator 3
	movq	-64(%rbp), %rdx	# last_ptr, tmp259
	movq	%rdx, %rsi	# tmp259,
	movl	%eax, %edi	# iftmp.598,
	call	memory_address	#
	movq	%rax, %rdx	#, D.22329
	movl	target_flags(%rip), %eax	# target_flags, target_flags.601
	andl	$33554432, %eax	#, D.22326
	testl	%eax, %eax	# D.22326
	je	.L1265	#,
	.loc 1 6671 0 discriminator 4
	movl	$5, %eax	#, iftmp.600
	jmp	.L1266	#
.L1265:
	.loc 1 6671 0 discriminator 5
	movl	$4, %eax	#, iftmp.600
.L1266:
	.loc 1 6671 0 discriminator 6
	movq	%rdx, %rsi	# D.22329,
	movl	%eax, %edi	# iftmp.600,
	call	gen_rtx_MEM	#
	movq	%rax, -64(%rbp)	# tmp260, last_ptr
	.loc 1 6672 0 is_stmt 1 discriminator 6
	call	get_frame_alias_set	#
	movq	%rax, %rdx	#, D.22327
	movq	-64(%rbp), %rax	# last_ptr, tmp261
	movq	%rdx, %rsi	# D.22327,
	movq	%rax, %rdi	# tmp261,
	call	set_mem_alias_set	#
	.loc 1 6673 0 discriminator 6
	movq	-64(%rbp), %rax	# last_ptr, tmp262
	movq	%rax, %rdi	# tmp262,
	call	copy_to_reg	#
	movq	%rax, -64(%rbp)	# tmp263, last_ptr
	.loc 1 6677 0 discriminator 6
	movl	optimize(%rip), %eax	# optimize, optimize.602
	testl	%eax, %eax	# optimize.602
	jne	.L1259	#,
	.loc 1 6678 0
	movq	cfun(%rip), %rbx	# cfun, cfun.603
	movq	cfun(%rip), %rax	# cfun, cfun.604
	movq	208(%rax), %rdx	# cfun.604_146->x_save_expr_regs, D.22329
	movq	-64(%rbp), %rax	# last_ptr, tmp264
	movq	%rdx, %rcx	# D.22329,
	movq	%rax, %rdx	# tmp264,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, 208(%rbx)	# D.22329, cfun.603_145->x_save_expr_regs
.L1259:
.LBE103:
	.loc 1 6656 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, tem
	jne	.L1267	#,
.L1256:
	.loc 1 6683 0
	movq	cfun(%rip), %rax	# cfun, cfun.605
	movzbl	425(%rax), %eax	# *cfun.605_149, D.22324
	andl	$32, %eax	#, D.22324
	testb	%al, %al	# D.22324
	je	.L1268	#,
.LBB104:
	.loc 1 6685 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.607
	movq	144(%rax), %rax	# current_function_decl.607_152->decl.rtl, D.22329
	testq	%rax, %rax	# D.22329
	je	.L1269	#,
	.loc 1 6685 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.608
	movq	144(%rax), %rax	# current_function_decl.608_154->decl.rtl, iftmp.606
	jmp	.L1270	#
.L1269:
	.loc 1 6685 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.609
	movl	$0, %esi	#,
	movq	%rax, %rdi	# current_function_decl.609,
	call	make_decl_rtl	#
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.610
	movq	144(%rax), %rax	# current_function_decl.610_157->decl.rtl, iftmp.606
.L1270:
	.loc 1 6685 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.606, fun
	.loc 1 6686 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fun, tmp265
	movzwl	(%rax), %eax	# fun_159->code, D.22328
	cmpw	$66, %ax	#, D.22328
	jne	.L1271	#,
	.loc 1 6687 0
	movq	-24(%rbp), %rax	# fun, tmp266
	movq	8(%rax), %rax	# fun_159->fld[0].rtx, tmp267
	movq	%rax, -24(%rbp)	# tmp267, fun
	.loc 1 6695 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.612
	andl	$33554432, %eax	#, D.22326
	.loc 1 6690 0
	testl	%eax, %eax	# D.22326
	je	.L1273	#,
	jmp	.L1278	#
.L1271:
	.loc 1 6689 0
	movl	$__FUNCTION__.14915, %edx	#,
	movl	$6689, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1278:
	.loc 1 6690 0 discriminator 1
	movl	$5, %ebx	#, iftmp.611
	jmp	.L1274	#
.L1273:
	.loc 1 6690 0 is_stmt 0 discriminator 2
	movl	$4, %ebx	#, iftmp.611
.L1274:
	.loc 1 6690 0 discriminator 3
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22329
	movq	%rax, %rdx	# D.22329,
	movl	$0, %esi	#,
	movl	$53, %edi	#,
	call	expand_builtin_return_addr	#
	movq	%rax, %rdx	#, D.22329
	.loc 1 6691 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.614
	andl	$33554432, %eax	#, D.22326
	.loc 1 6690 0 discriminator 3
	testl	%eax, %eax	# D.22326
	je	.L1275	#,
	.loc 1 6690 0 is_stmt 0 discriminator 4
	movl	$5, %eax	#, iftmp.613
	jmp	.L1276	#
.L1275:
	.loc 1 6690 0 discriminator 5
	movl	$4, %eax	#, iftmp.613
.L1276:
	.loc 1 6690 0 discriminator 6
	movq	libfunc_table+760(%rip), %rdi	# libfunc_table, D.22329
	movq	-24(%rbp), %rcx	# fun, tmp268
	movl	%ebx, 8(%rsp)	# iftmp.611,
	movq	%rdx, (%rsp)	# D.22329,
	movl	%eax, %r9d	# iftmp.613,
	movq	%rcx, %r8	# tmp268,
	movl	$2, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %eax	#,
	call	emit_library_call	#
.L1268:
.LBE104:
	.loc 1 6698 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.615
	movzbl	425(%rax), %eax	# *cfun.615_173, D.22324
	andl	$64, %eax	#, D.22324
	testb	%al, %al	# D.22324
	je	.L1277	#,
	.loc 1 6700 0
	movq	cfun(%rip), %rdx	# cfun, cfun.616
	movl	profile_label_no(%rip), %eax	# profile_label_no, profile_label_no.617
	leal	1(%rax), %ecx	#, profile_label_no.619
	movl	%ecx, profile_label_no(%rip)	# profile_label_no.619, profile_label_no
	movl	%eax, 388(%rdx)	# profile_label_no.618, cfun.616_176->profile_label_no
.L1277:
	.loc 1 6709 0
	movq	cfun(%rip), %rbx	# cfun, cfun.620
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, 240(%rbx)	# D.22329, cfun.620_180->x_tail_recursion_reentry
	.loc 1 6712 0
	call	get_pending_sizes	#
	movq	%rax, %rdi	# D.22330,
	call	nreverse	#
	movq	%rax, %rdi	# D.22330,
	call	expand_pending_sizes	#
	.loc 1 6715 0
	call	force_next_line_note	#
	.loc 1 6716 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	expand_function_start, .-expand_function_start
	.globl	expand_dummy_function_end
	.type	expand_dummy_function_end, @function
expand_dummy_function_end:
.LFB97:
	.loc 1 6721 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6723 0
	jmp	.L1280	#
.L1281:
	.loc 1 6724 0
	call	end_sequence	#
.L1280:
	.loc 1 6723 0 discriminator 1
	call	in_sequence_p	#
	testl	%eax, %eax	# D.22333
	jne	.L1281	#,
	.loc 1 6729 0
	movq	cfun(%rip), %rax	# cfun, cfun.621
	movq	%rax, %rdi	# cfun.621,
	call	free_after_parsing	#
	.loc 1 6730 0
	movq	cfun(%rip), %rax	# cfun, cfun.622
	movq	%rax, %rdi	# cfun.622,
	call	free_after_compilation	#
	.loc 1 6731 0
	movq	$0, cfun(%rip)	#, cfun
	.loc 1 6732 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	expand_dummy_function_end, .-expand_dummy_function_end
	.globl	diddle_return_value
	.type	diddle_return_value, @function
diddle_return_value:
.LFB98:
	.loc 1 6741 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# doit, doit
	movq	%rsi, -48(%rbp)	# arg, arg
	.loc 1 6742 0
	movq	cfun(%rip), %rax	# cfun, cfun.623
	movq	120(%rax), %rax	# cfun.623_2->return_rtx, tmp68
	movq	%rax, -16(%rbp)	# tmp68, outgoing
	.loc 1 6744 0
	cmpq	$0, -16(%rbp)	#, outgoing
	jne	.L1283	#,
	.loc 1 6745 0
	jmp	.L1282	#
.L1283:
	.loc 1 6747 0
	movq	-16(%rbp), %rax	# outgoing, tmp69
	movzwl	(%rax), %eax	# outgoing_3->code, D.22334
	cmpw	$61, %ax	#, D.22334
	jne	.L1285	#,
	.loc 1 6748 0
	movq	-48(%rbp), %rcx	# arg, tmp70
	movq	-16(%rbp), %rdx	# outgoing, tmp71
	movq	-40(%rbp), %rax	# doit, tmp72
	movq	%rcx, %rsi	# tmp70,
	movq	%rdx, %rdi	# tmp71,
	call	*%rax	# tmp72
	jmp	.L1282	#
.L1285:
	.loc 1 6749 0
	movq	-16(%rbp), %rax	# outgoing, tmp73
	movzwl	(%rax), %eax	# outgoing_3->code, D.22334
	cmpw	$39, %ax	#, D.22334
	jne	.L1282	#,
.LBB105:
	.loc 1 6753 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L1286	#
.L1288:
.LBB106:
	.loc 1 6755 0
	movq	-16(%rbp), %rax	# outgoing, tmp74
	movq	8(%rax), %rax	# outgoing_3->fld[0].rtvec, D.22335
	movl	-20(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	movq	8(%rax,%rdx,8), %rax	# _11->elem, D.22337
	movq	8(%rax), %rax	# _12->fld[0].rtx, tmp77
	movq	%rax, -8(%rbp)	# tmp77, x
	.loc 1 6757 0
	movq	-8(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_13->code, D.22334
	cmpw	$61, %ax	#, D.22334
	jne	.L1287	#,
	.loc 1 6757 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp79
	movl	8(%rax), %eax	# x_13->fld[0].rtuint, D.22338
	cmpl	$52, %eax	#, D.22338
	ja	.L1287	#,
	.loc 1 6758 0 is_stmt 1
	movq	-48(%rbp), %rcx	# arg, tmp80
	movq	-8(%rbp), %rdx	# x, tmp81
	movq	-40(%rbp), %rax	# doit, tmp82
	movq	%rcx, %rsi	# tmp80,
	movq	%rdx, %rdi	# tmp81,
	call	*%rax	# tmp82
.L1287:
.LBE106:
	.loc 1 6753 0
	addl	$1, -20(%rbp)	#, i
.L1286:
	.loc 1 6753 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# outgoing, tmp83
	movq	8(%rax), %rax	# outgoing_3->fld[0].rtvec, D.22335
	movl	(%rax), %eax	# _9->num_elem, D.22336
	cmpl	-20(%rbp), %eax	# i, D.22336
	jg	.L1288	#,
.L1282:
.LBE105:
	.loc 1 6761 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	diddle_return_value, .-diddle_return_value
	.type	do_clobber_return_reg, @function
do_clobber_return_reg:
.LFB99:
	.loc 1 6767 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# arg, arg
	.loc 1 6768 0
	movq	-8(%rbp), %rax	# reg, tmp60
	movq	%rax, %rdx	# tmp60,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.22339,
	call	emit_insn	#
	.loc 1 6769 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	do_clobber_return_reg, .-do_clobber_return_reg
	.globl	clobber_return_register
	.type	clobber_return_register, @function
clobber_return_register:
.LFB100:
	.loc 1 6773 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 6774 0
	movl	$0, %esi	#,
	movl	$do_clobber_return_reg, %edi	#,
	call	diddle_return_value	#
	.loc 1 6777 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.624
	movq	96(%rax), %rax	# current_function_decl.624_2->decl.result, D.22340
	movq	144(%rax), %rax	# _3->decl.rtl, D.22341
	testq	%rax, %rax	# D.22341
	je	.L1290	#,
.LBB107:
	.loc 1 6779 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.625
	movq	96(%rax), %rax	# current_function_decl.625_5->decl.result, tmp67
	movq	%rax, -16(%rbp)	# tmp67, decl_result
	.loc 1 6780 0
	movq	-16(%rbp), %rax	# decl_result, tmp68
	movq	144(%rax), %rax	# decl_result_6->decl.rtl, D.22341
	testq	%rax, %rax	# D.22341
	je	.L1292	#,
	.loc 1 6780 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# decl_result, tmp69
	movq	144(%rax), %rax	# decl_result_6->decl.rtl, iftmp.626
	jmp	.L1293	#
.L1292:
	.loc 1 6780 0 discriminator 2
	movq	-16(%rbp), %rax	# decl_result, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	make_decl_rtl	#
	movq	-16(%rbp), %rax	# decl_result, tmp71
	movq	144(%rax), %rax	# decl_result_6->decl.rtl, iftmp.626
.L1293:
	.loc 1 6780 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.626, decl_rtl
	.loc 1 6781 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# decl_rtl, tmp72
	movzwl	(%rax), %eax	# decl_rtl_10->code, D.22342
	cmpw	$61, %ax	#, D.22342
	jne	.L1290	#,
	.loc 1 6781 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl_rtl, tmp73
	movl	8(%rax), %eax	# decl_rtl_10->fld[0].rtuint, D.22343
	cmpl	$52, %eax	#, D.22343
	jbe	.L1290	#,
	.loc 1 6783 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl_rtl, tmp74
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	do_clobber_return_reg	#
.L1290:
.LBE107:
	.loc 1 6786 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	clobber_return_register, .-clobber_return_register
	.type	do_use_return_reg, @function
do_use_return_reg:
.LFB101:
	.loc 1 6792 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	movq	%rsi, -16(%rbp)	# arg, arg
	.loc 1 6793 0
	movq	-8(%rbp), %rax	# reg, tmp60
	movq	%rax, %rdx	# tmp60,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.22344,
	call	emit_insn	#
	.loc 1 6794 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	do_use_return_reg, .-do_use_return_reg
	.globl	use_return_register
	.type	use_return_register, @function
use_return_register:
.LFB102:
	.loc 1 6798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 6799 0
	movl	$0, %esi	#,
	movl	$do_use_return_reg, %edi	#,
	call	diddle_return_value	#
	.loc 1 6800 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	use_return_register, .-use_return_register
	.section	.rodata
.LC8:
	.string	"unused parameter `%s'"
	.text
	.globl	expand_function_end
	.type	expand_function_end, @function
expand_function_end:
.LFB103:
	.loc 1 6813 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# filename, filename
	movl	%esi, -188(%rbp)	# line, line
	movl	%edx, -192(%rbp)	# end_bindings, end_bindings
	.loc 1 6821 0
	call	finish_expr_for_function	#
	.loc 1 6825 0
	movq	cfun(%rip), %rax	# cfun, cfun.627
	movq	248(%rax), %rax	# cfun.627_13->x_arg_pointer_save_area, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1297	#,
	.loc 1 6825 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.628
	movzbl	426(%rax), %eax	# *cfun.628_15, D.22346
	andl	$-128, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1297	#,
	.loc 1 6826 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.629
	movq	%rax, %rdi	# cfun.629,
	call	get_arg_pointer_save_area	#
.L1297:
	.loc 1 6841 0
	movq	cfun(%rip), %rax	# cfun, cfun.630
	movq	280(%rax), %rax	# cfun.630_19->x_trampoline_list, tmp172
	movq	%rax, -160(%rbp)	# tmp172, link
	jmp	.L1298	#
.L1301:
.LBB108:
	.loc 1 6843 0
	movq	-160(%rbp), %rax	# link, tmp173
	movq	24(%rax), %rax	# link_1->list.purpose, tmp174
	movq	%rax, -136(%rbp)	# tmp174, function
	.loc 1 6844 0
	movq	-136(%rbp), %rax	# function, tmp175
	movq	%rax, %rdi	# tmp175,
	call	lookup_static_chain	#
	movq	%rax, -128(%rbp)	# tmp176, context
	.loc 1 6845 0
	movq	-160(%rbp), %rax	# link, tmp177
	movq	32(%rax), %rax	# link_1->list.value, D.22347
	movq	40(%rax), %rax	# _23->exp.operands, tmp178
	movq	%rax, -120(%rbp)	# tmp178, tramp
	.loc 1 6865 0
	call	start_sequence	#
	.loc 1 6866 0
	movq	-120(%rbp), %rax	# tramp, tmp179
	movq	8(%rax), %rax	# tramp_24->fld[0].rtx, D.22345
	movq	%rax, %rdi	# D.22345,
	call	round_trampoline_addr	#
	movq	%rax, -120(%rbp)	# tmp180, tramp
	.loc 1 6872 0
	movq	-136(%rbp), %rax	# function, tmp181
	movq	144(%rax), %rax	# function_21->decl.rtl, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1299	#,
	.loc 1 6872 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# function, tmp182
	movq	144(%rax), %rax	# function_21->decl.rtl, iftmp.631
	jmp	.L1300	#
.L1299:
	.loc 1 6872 0 discriminator 2
	movq	-136(%rbp), %rax	# function, tmp183
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	make_decl_rtl	#
	movq	-136(%rbp), %rax	# function, tmp184
	movq	144(%rax), %rax	# function_21->decl.rtl, iftmp.631
.L1300:
	.loc 1 6872 0 discriminator 3
	movq	8(%rax), %rcx	# iftmp.631_4->fld[0].rtx, D.22345
	movq	-128(%rbp), %rdx	# context, tmp185
	movq	-120(%rbp), %rax	# tramp, tmp186
	movq	%rcx, %rsi	# D.22345,
	movq	%rax, %rdi	# tmp186,
	call	x86_initialize_trampoline	#
	.loc 1 6873 0 is_stmt 1 discriminator 3
	call	get_insns	#
	movq	%rax, -112(%rbp)	# tmp187, seq
	.loc 1 6874 0 discriminator 3
	call	end_sequence	#
	.loc 1 6877 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.632
	movq	240(%rax), %rdx	# cfun.632_32->x_tail_recursion_reentry, D.22345
	movq	-112(%rbp), %rax	# seq, tmp188
	movq	%rdx, %rsi	# D.22345,
	movq	%rax, %rdi	# tmp188,
	call	emit_insns_before	#
.LBE108:
	.loc 1 6841 0 discriminator 3
	movq	-160(%rbp), %rax	# link, tmp189
	movq	(%rax), %rax	# link_1->common.chain, tmp190
	movq	%rax, -160(%rbp)	# tmp190, link
.L1298:
	.loc 1 6841 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, link
	jne	.L1301	#,
	.loc 1 6883 0 is_stmt 1
	movl	flag_stack_check(%rip), %eax	# flag_stack_check, flag_stack_check.633
	testl	%eax, %eax	# flag_stack_check.633
	je	.L1302	#,
.LBB109:
	.loc 1 6887 0
	call	get_insns	#
	movq	%rax, -152(%rbp)	# tmp191, insn
	jmp	.L1303	#
.L1309:
	.loc 1 6888 0
	movq	-152(%rbp), %rax	# insn, tmp192
	movzwl	(%rax), %eax	# insn_2->code, D.22348
	cmpw	$34, %ax	#, D.22348
	jne	.L1304	#,
	.loc 1 6890 0
	call	start_sequence	#
	.loc 1 6892 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.635
	andl	$33554432, %eax	#, D.22349
	.loc 1 6891 0
	testl	%eax, %eax	# D.22349
	je	.L1305	#,
	.loc 1 6891 0 is_stmt 0 discriminator 1
	movl	$4088, %eax	#, iftmp.634
	jmp	.L1306	#
.L1305:
	.loc 1 6891 0 discriminator 2
	movl	$4092, %eax	#, iftmp.634
.L1306:
	.loc 1 6891 0 discriminator 3
	movq	%rax, %rsi	# iftmp.634,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.22345
	movl	target_flags(%rip), %eax	# target_flags, target_flags.637
	andl	$33554432, %eax	#, D.22349
	testl	%eax, %eax	# D.22349
	je	.L1307	#,
	.loc 1 6891 0 discriminator 4
	movl	$600, %eax	#, iftmp.636
	jmp	.L1308	#
.L1307:
	.loc 1 6891 0 discriminator 5
	movl	$300, %eax	#, iftmp.636
.L1308:
	.loc 1 6891 0 discriminator 6
	movq	%rdx, %rsi	# D.22345,
	movq	%rax, %rdi	# iftmp.636,
	call	probe_stack_range	#
	.loc 1 6893 0 is_stmt 1 discriminator 6
	call	get_insns	#
	movq	%rax, -104(%rbp)	# tmp193, seq
	.loc 1 6894 0 discriminator 6
	call	end_sequence	#
	.loc 1 6895 0 discriminator 6
	movq	cfun(%rip), %rax	# cfun, cfun.638
	movq	240(%rax), %rdx	# cfun.638_48->x_tail_recursion_reentry, D.22345
	movq	-104(%rbp), %rax	# seq, tmp194
	movq	%rdx, %rsi	# D.22345,
	movq	%rax, %rdi	# tmp194,
	call	emit_insns_before	#
	.loc 1 6896 0 discriminator 6
	jmp	.L1302	#
.L1304:
	.loc 1 6887 0
	movq	-152(%rbp), %rax	# insn, tmp195
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp196
	movq	%rax, -152(%rbp)	# tmp196, insn
.L1303:
	.loc 1 6887 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, insn
	jne	.L1309	#,
.L1302:
.LBE109:
	.loc 1 6904 0 is_stmt 1
	movl	warn_unused_parameter(%rip), %eax	# warn_unused_parameter, warn_unused_parameter.639
	testl	%eax, %eax	# warn_unused_parameter.639
	jg	.L1310	#,
	.loc 1 6905 0
	movl	warn_unused_parameter(%rip), %eax	# warn_unused_parameter, warn_unused_parameter.640
	testl	%eax, %eax	# warn_unused_parameter.640
	jns	.L1311	#,
	.loc 1 6905 0 is_stmt 0 discriminator 1
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.641
	testl	%eax, %eax	# extra_warnings.641
	je	.L1311	#,
.L1310:
.LBB110:
	.loc 1 6909 0 is_stmt 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.642
	movq	88(%rax), %rax	# current_function_decl.642_54->decl.arguments, tmp197
	movq	%rax, -144(%rbp)	# tmp197, decl
	jmp	.L1312	#
.L1314:
	.loc 1 6911 0
	movq	-144(%rbp), %rax	# decl, tmp198
	movzbl	18(%rax), %eax	# *decl_3, D.22346
	andl	$1, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1313	#,
	.loc 1 6911 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# decl, tmp199
	movzbl	16(%rax), %eax	# decl_3->common.code, D.22346
	cmpb	$35, %al	#, D.22346
	jne	.L1313	#,
	.loc 1 6912 0 is_stmt 1
	movq	-144(%rbp), %rax	# decl, tmp200
	movq	72(%rax), %rax	# decl_3->decl.name, D.22347
	testq	%rax, %rax	# D.22347
	je	.L1313	#,
	.loc 1 6912 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# decl, tmp201
	movzbl	50(%rax), %eax	# *decl_3, D.22346
	andl	$64, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1313	#,
	.loc 1 6913 0 is_stmt 1
	movq	-144(%rbp), %rax	# decl, tmp202
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp202,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L1313:
	.loc 1 6910 0
	movq	-144(%rbp), %rax	# decl, tmp203
	movq	(%rax), %rax	# decl_3->common.chain, tmp204
	movq	%rax, -144(%rbp)	# tmp204, decl
.L1312:
	.loc 1 6909 0 discriminator 1
	cmpq	$0, -144(%rbp)	#, decl
	jne	.L1314	#,
.L1311:
.LBE110:
	.loc 1 6917 0
	movq	cfun(%rip), %rax	# cfun, cfun.643
	movq	168(%rax), %rax	# cfun.643_63->x_nonlocal_goto_handler_slots, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1315	#,
	.loc 1 6918 0
	movq	cfun(%rip), %rax	# cfun, cfun.644
	movzbl	425(%rax), %eax	# *cfun.644_65, D.22346
	andl	$1, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1315	#,
	.loc 1 6919 0
	call	delete_handlers	#
	.loc 1 6922 0
	jmp	.L1316	#
.L1315:
	jmp	.L1316	#
.L1317:
	.loc 1 6923 0
	call	end_sequence	#
.L1316:
	.loc 1 6922 0 discriminator 1
	call	in_sequence_p	#
	testl	%eax, %eax	# D.22349
	jne	.L1317	#,
	.loc 1 6927 0
	movl	immediate_size_expand(%rip), %eax	# immediate_size_expand, immediate_size_expand.645
	subl	$1, %eax	#, immediate_size_expand.646
	movl	%eax, immediate_size_expand(%rip)	# immediate_size_expand.646, immediate_size_expand
	.loc 1 6929 0
	call	clear_pending_stack_adjust	#
	.loc 1 6930 0
	call	do_pending_stack_adjust	#
	.loc 1 6935 0
	movl	$-91, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 6942 0
	movl	flag_test_coverage(%rip), %eax	# flag_test_coverage, flag_test_coverage.647
	testl	%eax, %eax	# flag_test_coverage.647
	je	.L1318	#,
	.loc 1 6943 0
	movl	$-84, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
.L1318:
	.loc 1 6947 0
	movl	-188(%rbp), %edx	# line, tmp205
	movq	-184(%rbp), %rax	# filename, tmp206
	movl	%edx, %esi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	emit_line_note_force	#
	.loc 1 6957 0
	call	get_last_insn	#
	movq	%rax, -96(%rbp)	# tmp207, clobber_after
	.loc 1 6964 0
	movq	cfun(%rip), %rax	# cfun, cfun.648
	movq	200(%rax), %rax	# cfun.648_75->x_return_label, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1319	#,
	.loc 1 6965 0
	movq	cfun(%rip), %rax	# cfun, cfun.649
	movq	200(%rax), %rax	# cfun.649_77->x_return_label, D.22345
	movq	%rax, %rdi	# D.22345,
	call	emit_label	#
.L1319:
	.loc 1 6968 0
	cmpl	$0, -192(%rbp)	#, end_bindings
	je	.L1320	#,
	.loc 1 6969 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	expand_end_bindings	#
.L1320:
	.loc 1 6971 0
	movq	cfun(%rip), %rax	# cfun, cfun.650
	movzbl	425(%rax), %eax	# *cfun.650_80, D.22346
	andl	$32, %eax	#, D.22346
	testb	%al, %al	# D.22346
	je	.L1344	#,
.LBB111:
	.loc 1 6973 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.652
	movq	144(%rax), %rax	# current_function_decl.652_83->decl.rtl, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1322	#,
	.loc 1 6973 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.653
	movq	144(%rax), %rax	# current_function_decl.653_85->decl.rtl, iftmp.651
	jmp	.L1323	#
.L1322:
	.loc 1 6973 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.654
	movl	$0, %esi	#,
	movq	%rax, %rdi	# current_function_decl.654,
	call	make_decl_rtl	#
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.655
	movq	144(%rax), %rax	# current_function_decl.655_88->decl.rtl, iftmp.651
.L1323:
	.loc 1 6973 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.651, fun
	.loc 1 6974 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fun, tmp208
	movzwl	(%rax), %eax	# fun_90->code, D.22348
	cmpw	$66, %ax	#, D.22348
	jne	.L1324	#,
	.loc 1 6975 0
	movq	-88(%rbp), %rax	# fun, tmp209
	movq	8(%rax), %rax	# fun_90->fld[0].rtx, tmp210
	movq	%rax, -88(%rbp)	# tmp210, fun
	.loc 1 6983 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.657
	andl	$33554432, %eax	#, D.22349
	.loc 1 6978 0
	testl	%eax, %eax	# D.22349
	je	.L1326	#,
	jmp	.L1345	#
.L1324:
	.loc 1 6977 0
	movl	$__FUNCTION__.14974, %edx	#,
	movl	$6977, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1345:
	.loc 1 6978 0 discriminator 1
	movl	$5, %ebx	#, iftmp.656
	jmp	.L1327	#
.L1326:
	.loc 1 6978 0 is_stmt 0 discriminator 2
	movl	$4, %ebx	#, iftmp.656
.L1327:
	.loc 1 6978 0 discriminator 3
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.22345
	movq	%rax, %rdx	# D.22345,
	movl	$0, %esi	#,
	movl	$53, %edi	#,
	call	expand_builtin_return_addr	#
	movq	%rax, %rdx	#, D.22345
	.loc 1 6979 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.659
	andl	$33554432, %eax	#, D.22349
	.loc 1 6978 0 discriminator 3
	testl	%eax, %eax	# D.22349
	je	.L1328	#,
	.loc 1 6978 0 is_stmt 0 discriminator 4
	movl	$5, %eax	#, iftmp.658
	jmp	.L1329	#
.L1328:
	.loc 1 6978 0 discriminator 5
	movl	$4, %eax	#, iftmp.658
.L1329:
	.loc 1 6978 0 discriminator 6
	movq	libfunc_table+768(%rip), %rdi	# libfunc_table, D.22345
	movq	-88(%rbp), %rcx	# fun, tmp211
	movl	%ebx, 8(%rsp)	# iftmp.656,
	movq	%rdx, (%rsp)	# D.22345,
	movl	%eax, %r9d	# iftmp.658,
	movq	%rcx, %r8	# tmp211,
	movl	$2, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %eax	#,
	call	emit_library_call	#
.L1344:
.LBE111:
	.loc 1 7008 0 is_stmt 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.663
	movq	96(%rax), %rax	# current_function_decl.663_104->decl.result, D.22347
	movq	144(%rax), %rax	# _105->decl.rtl, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1330	#,
.LBB112:
	.loc 1 7010 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.664
	movq	96(%rax), %rax	# current_function_decl.664_107->decl.result, tmp212
	movq	%rax, -80(%rbp)	# tmp212, decl_result
	.loc 1 7011 0
	movq	-80(%rbp), %rax	# decl_result, tmp213
	movq	144(%rax), %rax	# decl_result_108->decl.rtl, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1331	#,
	.loc 1 7011 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# decl_result, tmp214
	movq	144(%rax), %rax	# decl_result_108->decl.rtl, iftmp.665
	jmp	.L1332	#
.L1331:
	.loc 1 7011 0 discriminator 2
	movq	-80(%rbp), %rax	# decl_result, tmp215
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	make_decl_rtl	#
	movq	-80(%rbp), %rax	# decl_result, tmp216
	movq	144(%rax), %rax	# decl_result_108->decl.rtl, iftmp.665
.L1332:
	.loc 1 7011 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.665, decl_rtl
	.loc 1 7013 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# decl_rtl, tmp217
	movzwl	(%rax), %eax	# decl_rtl_112->code, D.22348
	cmpw	$61, %ax	#, D.22348
	jne	.L1333	#,
	.loc 1 7014 0
	movq	-72(%rbp), %rax	# decl_rtl, tmp218
	movl	8(%rax), %eax	# decl_rtl_112->fld[0].rtuint, D.22350
	.loc 1 7013 0
	cmpl	$52, %eax	#, D.22350
	seta	%al	#, iftmp.666
	jmp	.L1334	#
.L1333:
	.loc 1 7013 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# decl_result, tmp219
	movzbl	49(%rax), %eax	# *decl_result_108, D.22346
	andl	$4, %eax	#, D.22346
	testb	%al, %al	# D.22346
	setne	%al	#, iftmp.666
.L1334:
	.loc 1 7013 0 discriminator 2
	testb	%al, %al	# iftmp.666
	je	.L1330	#,
.LBB113:
	.loc 1 7017 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.667
	movq	120(%rax), %rax	# cfun.667_119->return_rtx, tmp220
	movq	%rax, -64(%rbp)	# tmp220, real_decl_rtl
	.loc 1 7020 0
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp221
	movzbl	3(%rax), %eax	# *real_decl_rtl_120, D.22346
	andl	$64, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1335	#,
	.loc 1 7021 0
	movl	$__FUNCTION__.14974, %edx	#,
	movl	$7021, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1335:
	.loc 1 7027 0
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp222
	movzbl	2(%rax), %eax	# real_decl_rtl_120->mode, D.22346
	cmpb	$51, %al	#, D.22346
	jne	.L1336	#,
	.loc 1 7028 0
	movq	-72(%rbp), %rax	# decl_rtl, tmp223
	movzbl	2(%rax), %edx	# decl_rtl_112->mode, D.22346
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp224
	movb	%dl, 2(%rax)	# D.22346, real_decl_rtl_120->mode
.L1336:
	.loc 1 7033 0
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp225
	movzbl	2(%rax), %edx	# real_decl_rtl_120->mode, D.22346
	movq	-72(%rbp), %rax	# decl_rtl, tmp226
	movzbl	2(%rax), %eax	# decl_rtl_112->mode, D.22346
	cmpb	%al, %dl	# D.22346, D.22346
	je	.L1337	#,
.LBB114:
	.loc 1 7035 0
	movq	-80(%rbp), %rax	# decl_result, tmp227
	movq	8(%rax), %rax	# decl_result_108->common.type, D.22347
	movzbl	17(%rax), %eax	# *_127, tmp230
	shrb	$5, %al	#, D.22351
	andl	$1, %eax	#, D.22351
	movzbl	%al, %eax	# D.22351, tmp231
	movl	%eax, -172(%rbp)	# tmp231, unsignedp
	.loc 1 7042 0
	movl	-172(%rbp), %edx	# unsignedp, tmp232
	movq	-72(%rbp), %rcx	# decl_rtl, tmp233
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp234
	movq	%rcx, %rsi	# tmp233,
	movq	%rax, %rdi	# tmp234,
	call	convert_move	#
.LBE114:
	jmp	.L1330	#
.L1337:
	.loc 1 7044 0
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp235
	movzwl	(%rax), %eax	# real_decl_rtl_120->code, D.22348
	cmpw	$39, %ax	#, D.22348
	jne	.L1338	#,
	.loc 1 7046 0
	movq	-80(%rbp), %rax	# decl_result, tmp236
	movq	8(%rax), %rax	# decl_result_108->common.type, D.22347
	movq	%rax, %rdi	# D.22347,
	call	int_size_in_bytes	#
	.loc 1 7045 0
	movl	%eax, %edx	# D.22352, D.22349
	movq	-72(%rbp), %rcx	# decl_rtl, tmp237
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp238
	movq	%rcx, %rsi	# tmp237,
	movq	%rax, %rdi	# tmp238,
	call	emit_group_load	#
	jmp	.L1330	#
.L1338:
	.loc 1 7048 0
	movq	-72(%rbp), %rdx	# decl_rtl, tmp239
	movq	-64(%rbp), %rax	# real_decl_rtl, tmp240
	movq	%rdx, %rsi	# tmp239,
	movq	%rax, %rdi	# tmp240,
	call	emit_move_insn	#
.L1330:
.LBE113:
.LBE112:
	.loc 1 7058 0
	movq	cfun(%rip), %rax	# cfun, cfun.668
	movzbl	424(%rax), %eax	# *cfun.668_134, D.22346
	andl	$1, %eax	#, D.22346
	testb	%al, %al	# D.22346
	jne	.L1339	#,
	.loc 1 7059 0
	movq	cfun(%rip), %rax	# cfun, cfun.669
	movzbl	424(%rax), %eax	# *cfun.669_137, D.22346
	andl	$2, %eax	#, D.22346
	testb	%al, %al	# D.22346
	je	.L1340	#,
.L1339:
.LBB115:
	.loc 1 7062 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.671
	movq	96(%rax), %rax	# current_function_decl.671_140->decl.result, D.22347
	movq	144(%rax), %rax	# _141->decl.rtl, D.22345
	testq	%rax, %rax	# D.22345
	je	.L1341	#,
	.loc 1 7062 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.672
	movq	96(%rax), %rax	# current_function_decl.672_143->decl.result, D.22347
	movq	144(%rax), %rax	# _144->decl.rtl, iftmp.670
	jmp	.L1342	#
.L1341:
	.loc 1 7062 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.673
	movq	96(%rax), %rax	# current_function_decl.673_146->decl.result, D.22347
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.22347,
	call	make_decl_rtl	#
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.674
	movq	96(%rax), %rax	# current_function_decl.674_148->decl.result, D.22347
	movq	144(%rax), %rax	# _149->decl.rtl, iftmp.670
.L1342:
	.loc 1 7061 0 is_stmt 1
	movq	8(%rax), %rax	# iftmp.670_12->fld[0].rtx, tmp241
	movq	%rax, -56(%rbp)	# tmp241, value_address
	.loc 1 7063 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.675
	movq	96(%rax), %rax	# current_function_decl.675_152->decl.result, D.22347
	movq	8(%rax), %rax	# _153->common.type, tmp242
	movq	%rax, -48(%rbp)	# tmp242, type
	.loc 1 7070 0
	movq	-48(%rbp), %rax	# type, tmp243
	movq	%rax, %rdi	# tmp243,
	call	build_pointer_type	#
	.loc 1 7069 0
	movq	%rax, %rdi	# D.22347,
	call	ix86_function_value	#
	movq	%rax, -40(%rbp)	# tmp244, outgoing
	.loc 1 7075 0
	movq	-40(%rbp), %rax	# outgoing, tmp245
	movzbl	3(%rax), %edx	# outgoing_156->integrated, tmp248
	orl	$64, %edx	#, tmp249
	movb	%dl, 3(%rax)	# tmp249, outgoing_156->integrated
	.loc 1 7084 0
	movq	-56(%rbp), %rdx	# value_address, tmp250
	movq	-40(%rbp), %rax	# outgoing, tmp251
	movq	%rdx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	emit_move_insn	#
	.loc 1 7088 0
	movq	cfun(%rip), %rax	# cfun, cfun.676
	movq	-40(%rbp), %rdx	# outgoing, tmp252
	movq	%rdx, 120(%rax)	# tmp252, cfun.676_157->return_rtx
.L1340:
.LBE115:
	.loc 1 7093 0
	call	expand_eh_return	#
.LBB116:
	.loc 1 7099 0
	call	start_sequence	#
	.loc 1 7100 0
	call	clobber_return_register	#
	.loc 1 7101 0
	call	gen_sequence	#
	movq	%rax, -32(%rbp)	# tmp253, seq
	.loc 1 7102 0
	call	end_sequence	#
	.loc 1 7104 0
	movq	-96(%rbp), %rdx	# clobber_after, tmp254
	movq	-32(%rbp), %rax	# seq, tmp255
	movq	%rdx, %rsi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	emit_insn_after	#
	movq	%rax, -24(%rbp)	# tmp256, after
	.loc 1 7106 0
	movq	-96(%rbp), %rax	# clobber_after, tmp257
	cmpq	-24(%rbp), %rax	# after, tmp257
	je	.L1343	#,
	.loc 1 7107 0
	movq	cfun(%rip), %rax	# cfun, cfun.677
	movq	-24(%rbp), %rdx	# after, tmp258
	movq	%rdx, 256(%rax)	# tmp258, cfun.677_160->x_clobber_return_insn
.L1343:
.LBE116:
	.loc 1 7114 0
	call	use_return_register	#
	.loc 1 7123 0
	call	get_insns	#
	movq	%rax, %rdi	# D.22345,
	call	expand_fixups	#
	.loc 1 7124 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	expand_function_end, .-expand_function_end
	.globl	get_arg_pointer_save_area
	.type	get_arg_pointer_save_area, @function
get_arg_pointer_save_area:
.LFB104:
	.loc 1 7129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# f, f
	.loc 1 7130 0
	movq	-40(%rbp), %rax	# f, tmp75
	movq	248(%rax), %rax	# f_4(D)->x_arg_pointer_save_area, tmp76
	movq	%rax, -32(%rbp)	# tmp76, ret
	.loc 1 7132 0
	cmpq	$0, -32(%rbp)	#, ret
	jne	.L1347	#,
	.loc 1 7134 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.679
	andl	$33554432, %eax	#, D.22354
	testl	%eax, %eax	# D.22354
	je	.L1348	#,
	.loc 1 7134 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.678
	jmp	.L1349	#
.L1348:
	.loc 1 7134 0 discriminator 2
	movl	$4, %eax	#, iftmp.678
.L1349:
	.loc 1 7134 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22355
	movzbl	%al, %esi	# D.22355, D.22356
	movl	target_flags(%rip), %eax	# target_flags, target_flags.681
	andl	$33554432, %eax	#, D.22354
	testl	%eax, %eax	# D.22354
	je	.L1350	#,
	.loc 1 7134 0 discriminator 1
	movl	$5, %eax	#, iftmp.680
	jmp	.L1351	#
.L1350:
	.loc 1 7134 0 discriminator 2
	movl	$4, %eax	#, iftmp.680
.L1351:
	.loc 1 7134 0 discriminator 3
	movq	-40(%rbp), %rdx	# f, tmp78
	movq	%rdx, %rcx	# tmp78,
	movl	$0, %edx	#,
	movl	%eax, %edi	# iftmp.680,
	call	assign_stack_local_1	#
	movq	%rax, -32(%rbp)	# tmp79, ret
	.loc 1 7135 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# f, tmp80
	movq	-32(%rbp), %rdx	# ret, tmp81
	movq	%rdx, 248(%rax)	# tmp81, f_4(D)->x_arg_pointer_save_area
.L1347:
	.loc 1 7138 0
	movq	cfun(%rip), %rax	# cfun, cfun.682
	cmpq	%rax, -40(%rbp)	# cfun.682, f
	jne	.L1352	#,
	.loc 1 7138 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# f, tmp82
	movzbl	426(%rax), %eax	# *f_4(D), D.22355
	andl	$-128, %eax	#, D.22355
	testb	%al, %al	# D.22355
	jne	.L1352	#,
.LBB117:
	.loc 1 7145 0 is_stmt 1
	call	start_sequence	#
	.loc 1 7146 0
	movq	global_rtl+48(%rip), %rbx	# global_rtl, D.22357
	movq	-32(%rbp), %rax	# ret, tmp83
	movq	%rax, %rdi	# tmp83,
	call	validize_mem	#
	movq	%rbx, %rsi	# D.22357,
	movq	%rax, %rdi	# D.22357,
	call	emit_move_insn	#
	.loc 1 7147 0
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp84, seq
	.loc 1 7148 0
	call	end_sequence	#
	.loc 1 7150 0
	call	push_topmost_sequence	#
	.loc 1 7151 0
	call	get_insns	#
	movq	%rax, %rdx	#, D.22357
	movq	-24(%rbp), %rax	# seq, tmp85
	movq	%rdx, %rsi	# D.22357,
	movq	%rax, %rdi	# tmp85,
	call	emit_insn_after	#
	.loc 1 7152 0
	call	pop_topmost_sequence	#
.L1352:
.LBE117:
	.loc 1 7155 0
	movq	-32(%rbp), %rax	# ret, D.22358
	.loc 1 7156 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	get_arg_pointer_save_area, .-get_arg_pointer_save_area
	.type	record_insns, @function
record_insns:
.LFB105:
	.loc 1 7165 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insns, insns
	movq	%rsi, -32(%rbp)	# vecp, vecp
	.loc 1 7166 0
	movq	-24(%rbp), %rax	# insns, tmp79
	movzwl	(%rax), %eax	# insns_3(D)->code, D.22359
	cmpw	$24, %ax	#, D.22359
	jne	.L1355	#,
.LBB118:
	.loc 1 7168 0
	movq	-24(%rbp), %rax	# insns, tmp80
	movq	8(%rax), %rax	# insns_3(D)->fld[0].rtvec, D.22360
	movl	(%rax), %eax	# _5->num_elem, tmp81
	movl	%eax, -12(%rbp)	# tmp81, len
	.loc 1 7169 0
	movq	-32(%rbp), %rax	# vecp, tmp82
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	(%rax), %rax	# _8->num_elements, D.22362
	movl	%eax, -8(%rbp)	# D.22362, i
	.loc 1 7171 0
	movl	-12(%rbp), %eax	# len, tmp83
	movl	-8(%rbp), %edx	# i, tmp84
	addl	%edx, %eax	# tmp84, D.22363
	movslq	%eax, %rdx	# D.22363, D.22362
	movq	-32(%rbp), %rax	# vecp, tmp85
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	%rdx, %rsi	# D.22362,
	movq	%rax, %rdi	# D.22361,
	call	varray_grow	#
	movq	-32(%rbp), %rdx	# vecp, tmp86
	movq	%rax, (%rdx)	# D.22361, *vecp_7(D)
	.loc 1 7172 0
	jmp	.L1356	#
.L1357:
	.loc 1 7174 0
	movq	-32(%rbp), %rax	# vecp, tmp87
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	-24(%rbp), %rdx	# insns, tmp88
	movq	8(%rdx), %rdx	# insns_3(D)->fld[0].rtvec, D.22360
	movl	-12(%rbp), %ecx	# len, tmp90
	movslq	%ecx, %rcx	# tmp90, tmp89
	movq	8(%rdx,%rcx,8), %rdx	# _17->elem, D.22364
	movl	8(%rdx), %edx	# _18->fld[0].rtint, D.22363
	movl	-8(%rbp), %ecx	# i, tmp92
	movslq	%ecx, %rcx	# tmp92, tmp91
	addq	$8, %rcx	#, tmp93
	movl	%edx, (%rax,%rcx,4)	# D.22363, _16->data.i
	.loc 1 7175 0
	addl	$1, -8(%rbp)	#, i
.L1356:
	.loc 1 7172 0 discriminator 1
	subl	$1, -12(%rbp)	#, len
	cmpl	$0, -12(%rbp)	#, len
	jns	.L1357	#,
.LBE118:
	jmp	.L1354	#
.L1355:
.LBB119:
	.loc 1 7180 0
	movq	-32(%rbp), %rax	# vecp, tmp94
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	(%rax), %rax	# _21->num_elements, D.22362
	movl	%eax, -4(%rbp)	# D.22362, i
	.loc 1 7181 0
	movl	-4(%rbp), %eax	# i, tmp95
	addl	$1, %eax	#, D.22363
	movslq	%eax, %rdx	# D.22363, D.22362
	movq	-32(%rbp), %rax	# vecp, tmp96
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	%rdx, %rsi	# D.22362,
	movq	%rax, %rdi	# D.22361,
	call	varray_grow	#
	movq	-32(%rbp), %rdx	# vecp, tmp97
	movq	%rax, (%rdx)	# D.22361, *vecp_7(D)
	.loc 1 7182 0
	movq	-32(%rbp), %rax	# vecp, tmp98
	movq	(%rax), %rax	# *vecp_7(D), D.22361
	movq	-24(%rbp), %rdx	# insns, tmp99
	movl	8(%rdx), %edx	# insns_3(D)->fld[0].rtint, D.22363
	movl	-4(%rbp), %ecx	# i, tmp101
	movslq	%ecx, %rcx	# tmp101, tmp100
	addq	$8, %rcx	#, tmp102
	movl	%edx, (%rax,%rcx,4)	# D.22363, _28->data.i
.L1354:
.LBE119:
	.loc 1 7184 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	record_insns, .-record_insns
	.type	contains, @function
contains:
.LFB106:
	.loc 1 7192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn, insn
	movq	%rsi, -32(%rbp)	# vec, vec
	.loc 1 7195 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_8(D)->code, D.22366
	cmpw	$32, %ax	#, D.22366
	jne	.L1360	#,
	.loc 1 7196 0
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.22367
	movzwl	(%rax), %eax	# _10->code, D.22366
	cmpw	$24, %ax	#, D.22366
	jne	.L1360	#,
.LBB120:
	.loc 1 7198 0
	movl	$0, -4(%rbp)	#, count
	.loc 1 7199 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.22367
	movq	8(%rax), %rax	# _13->fld[0].rtvec, D.22368
	movl	(%rax), %eax	# _14->num_elem, D.22365
	subl	$1, %eax	#, tmp83
	movl	%eax, -12(%rbp)	# tmp83, i
	jmp	.L1361	#
.L1365:
	.loc 1 7200 0
	movq	-32(%rbp), %rax	# vec, tmp84
	movq	(%rax), %rax	# vec_17(D)->num_elements, D.22369
	subl	$1, %eax	#, D.22370
	movl	%eax, -8(%rbp)	# D.22370, j
	jmp	.L1362	#
.L1364:
	.loc 1 7201 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_8(D)->fld[3].rtx, D.22367
	movq	8(%rax), %rax	# _22->fld[0].rtvec, D.22368
	movl	-12(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	movq	8(%rax,%rdx,8), %rax	# _23->elem, D.22367
	movl	8(%rax), %edx	# _24->fld[0].rtint, D.22365
	movq	-32(%rbp), %rax	# vec, tmp88
	movl	-8(%rbp), %ecx	# j, tmp90
	movslq	%ecx, %rcx	# tmp90, tmp89
	addq	$8, %rcx	#, tmp91
	movl	(%rax,%rcx,4), %eax	# vec_17(D)->data.i, D.22365
	cmpl	%eax, %edx	# D.22365, D.22365
	jne	.L1363	#,
	.loc 1 7202 0
	addl	$1, -4(%rbp)	#, count
.L1363:
	.loc 1 7200 0
	subl	$1, -8(%rbp)	#, j
.L1362:
	.loc 1 7200 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, j
	jns	.L1364	#,
	.loc 1 7199 0 is_stmt 1
	subl	$1, -12(%rbp)	#, i
.L1361:
	.loc 1 7199 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, i
	jns	.L1365	#,
	.loc 1 7203 0 is_stmt 1
	movl	-4(%rbp), %eax	# count, D.22365
	jmp	.L1366	#
.L1360:
.LBE120:
	.loc 1 7207 0
	movq	-32(%rbp), %rax	# vec, tmp92
	movq	(%rax), %rax	# vec_17(D)->num_elements, D.22369
	subl	$1, %eax	#, D.22370
	movl	%eax, -8(%rbp)	# D.22370, j
	jmp	.L1367	#
.L1369:
	.loc 1 7208 0
	movq	-24(%rbp), %rax	# insn, tmp93
	movl	8(%rax), %edx	# insn_8(D)->fld[0].rtint, D.22365
	movq	-32(%rbp), %rax	# vec, tmp94
	movl	-8(%rbp), %ecx	# j, tmp96
	movslq	%ecx, %rcx	# tmp96, tmp95
	addq	$8, %rcx	#, tmp97
	movl	(%rax,%rcx,4), %eax	# vec_17(D)->data.i, D.22365
	cmpl	%eax, %edx	# D.22365, D.22365
	jne	.L1368	#,
	.loc 1 7209 0
	movl	$1, %eax	#, D.22365
	jmp	.L1366	#
.L1368:
	.loc 1 7207 0
	subl	$1, -8(%rbp)	#, j
.L1367:
	.loc 1 7207 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, j
	jns	.L1369	#,
	.loc 1 7211 0 is_stmt 1
	movl	$0, %eax	#, D.22365
.L1366:
	.loc 1 7212 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	contains, .-contains
	.globl	prologue_epilogue_contains
	.type	prologue_epilogue_contains, @function
prologue_epilogue_contains:
.LFB107:
	.loc 1 7217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 7218 0
	movq	prologue(%rip), %rdx	# prologue, prologue.683
	movq	-8(%rbp), %rax	# insn, tmp65
	movq	%rdx, %rsi	# prologue.683,
	movq	%rax, %rdi	# tmp65,
	call	contains	#
	testl	%eax, %eax	# D.22371
	je	.L1371	#,
	.loc 1 7219 0
	movl	$1, %eax	#, D.22371
	jmp	.L1372	#
.L1371:
	.loc 1 7220 0
	movq	epilogue(%rip), %rdx	# epilogue, epilogue.684
	movq	-8(%rbp), %rax	# insn, tmp66
	movq	%rdx, %rsi	# epilogue.684,
	movq	%rax, %rdi	# tmp66,
	call	contains	#
	testl	%eax, %eax	# D.22371
	je	.L1373	#,
	.loc 1 7221 0
	movl	$1, %eax	#, D.22371
	jmp	.L1372	#
.L1373:
	.loc 1 7222 0
	movl	$0, %eax	#, D.22371
.L1372:
	.loc 1 7223 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	prologue_epilogue_contains, .-prologue_epilogue_contains
	.globl	sibcall_epilogue_contains
	.type	sibcall_epilogue_contains, @function
sibcall_epilogue_contains:
.LFB108:
	.loc 1 7228 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 7229 0
	movq	sibcall_epilogue(%rip), %rax	# sibcall_epilogue, sibcall_epilogue.685
	testq	%rax, %rax	# sibcall_epilogue.685
	je	.L1375	#,
	.loc 1 7230 0
	movq	sibcall_epilogue(%rip), %rdx	# sibcall_epilogue, sibcall_epilogue.686
	movq	-8(%rbp), %rax	# insn, tmp63
	movq	%rdx, %rsi	# sibcall_epilogue.686,
	movq	%rax, %rdi	# tmp63,
	call	contains	#
	jmp	.L1376	#
.L1375:
	.loc 1 7231 0
	movl	$0, %eax	#, D.22372
.L1376:
	.loc 1 7232 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	sibcall_epilogue_contains, .-sibcall_epilogue_contains
	.type	emit_return_into_block, @function
emit_return_into_block:
.LFB109:
	.loc 1 7242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# bb, bb
	movq	%rsi, -48(%rbp)	# line_note, line_note
	.loc 1 7245 0
	movq	-40(%rbp), %rax	# bb, tmp66
	movq	8(%rax), %rax	# bb_1(D)->end, D.22373
	movq	24(%rax), %rax	# _2->fld[2].rtx, tmp67
	movq	%rax, -32(%rbp)	# tmp67, p
	.loc 1 7246 0
	movq	-40(%rbp), %rax	# bb, tmp68
	movq	8(%rax), %rbx	# bb_1(D)->end, D.22373
	call	gen_return	#
	movq	%rbx, %rsi	# D.22373,
	movq	%rax, %rdi	# D.22373,
	call	emit_jump_insn_after	#
	movq	%rax, -24(%rbp)	# tmp69, end
	.loc 1 7247 0
	cmpq	$0, -48(%rbp)	#, line_note
	je	.L1377	#,
	.loc 1 7249 0
	movq	-40(%rbp), %rax	# bb, tmp70
	movq	8(%rax), %rax	# bb_1(D)->end, D.22373
	.loc 1 7248 0
	movq	16(%rax), %rdx	# _8->fld[1].rtx, D.22373
	movq	-48(%rbp), %rax	# line_note, tmp71
	movl	40(%rax), %ecx	# line_note_7(D)->fld[4].rtint, D.22374
	movq	-48(%rbp), %rax	# line_note, tmp72
	movq	32(%rax), %rax	# line_note_7(D)->fld[3].rtstr, D.22375
	movl	%ecx, %esi	# D.22374,
	movq	%rax, %rdi	# D.22375,
	call	emit_line_note_after	#
.L1377:
	.loc 1 7250 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	emit_return_into_block, .-emit_return_into_block
	.type	keep_stack_depressed, @function
keep_stack_depressed:
.LFB110:
	.loc 1 7304 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# seq, seq
	.loc 1 7310 0
	movq	-152(%rbp), %rax	# seq, tmp211
	movzwl	(%rax), %eax	# seq_23(D)->code, D.22377
	cmpw	$24, %ax	#, D.22377
	je	.L1380	#,
	.loc 1 7311 0
	movq	-152(%rbp), %rax	# seq, D.22376
	jmp	.L1445	#
.L1380:
	.loc 1 7315 0
	call	start_sequence	#
	.loc 1 7317 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	movq	%rax, -64(%rbp)	# D.22378, info.sp_equiv_reg
	.loc 1 7318 0
	movq	$0, -56(%rbp)	#, info.sp_offset
	.loc 1 7319 0
	movq	$0, -32(%rbp)	#, info.equiv_reg_src
	.loc 1 7321 0
	movl	$0, -132(%rbp)	#, i
	jmp	.L1382	#
.L1444:
.LBB121:
	.loc 1 7323 0
	movq	-152(%rbp), %rax	# seq, tmp212
	movq	8(%rax), %rax	# seq_23(D)->fld[0].rtvec, D.22379
	movl	-132(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, tmp213
	movq	8(%rax,%rdx,8), %rax	# _30->elem, tmp215
	movq	%rax, -96(%rbp)	# tmp215, insn
	.loc 1 7325 0
	movq	-96(%rbp), %rax	# insn, tmp216
	movzwl	(%rax), %eax	# insn_31->code, D.22377
	movzwl	%ax, %eax	# D.22377, D.22380
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22381
	cmpb	$105, %al	#, D.22381
	je	.L1383	#,
	.loc 1 7327 0
	movq	-96(%rbp), %rax	# insn, tmp218
	movq	%rax, %rdi	# tmp218,
	call	add_insn	#
	.loc 1 7328 0
	jmp	.L1384	#
.L1383:
	.loc 1 7334 0
	movq	-32(%rbp), %rax	# info.equiv_reg_src, D.22378
	testq	%rax, %rax	# D.22378
	je	.L1385	#,
	.loc 1 7335 0
	movq	-96(%rbp), %rax	# insn, tmp219
	movq	32(%rax), %rdx	# insn_31->fld[3].rtx, D.22378
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	%rdx, %rsi	# D.22378,
	movq	%rax, %rdi	# D.22378,
	call	reg_referenced_p	#
	testl	%eax, %eax	# D.22380
	je	.L1385	#,
	.loc 1 7337 0
	leaq	-64(%rbp), %rax	#, tmp220
	movq	%rax, %rdi	# tmp220,
	call	emit_equiv_load	#
	.loc 1 7338 0
	movq	$0, -64(%rbp)	#, info.sp_equiv_reg
.L1385:
	.loc 1 7341 0
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	%rax, -48(%rbp)	# D.22378, info.new_sp_equiv_reg
	.loc 1 7342 0
	movq	-56(%rbp), %rax	# info.sp_offset, D.22382
	movq	%rax, -40(%rbp)	# D.22382, info.new_sp_offset
	.loc 1 7346 0
	movq	-96(%rbp), %rax	# insn, tmp221
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movzwl	(%rax), %eax	# _41->code, D.22377
	cmpw	$51, %ax	#, D.22377
	je	.L1386	#,
	.loc 1 7347 0
	movq	-96(%rbp), %rax	# insn, tmp222
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movzwl	(%rax), %eax	# _43->code, D.22377
	cmpw	$39, %ax	#, D.22377
	jne	.L1387	#,
	.loc 1 7348 0
	movq	-96(%rbp), %rax	# insn, tmp223
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movq	8(%rax), %rax	# _45->fld[0].rtvec, D.22379
	movq	8(%rax), %rax	# _46->elem, D.22378
	movzwl	(%rax), %eax	# _47->code, D.22377
	cmpw	$51, %ax	#, D.22377
	jne	.L1387	#,
.L1386:
.LBB122:
	.loc 1 7350 0
	movl	$7, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_REG	#
	movq	%rax, %rsi	# D.22378,
	movl	$0, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, -120(%rbp)	# tmp224, retaddr
	.loc 1 7351 0
	movq	$0, -112(%rbp)	#, base
	.loc 1 7352 0
	movq	$0, -104(%rbp)	#, offset
	.loc 1 7359 0
	movq	-120(%rbp), %rax	# retaddr, tmp225
	movzwl	(%rax), %eax	# retaddr_85->code, D.22377
	cmpw	$61, %ax	#, D.22377
	jne	.L1388	#,
	.loc 1 7361 0
	leaq	-64(%rbp), %rax	#, tmp226
	movq	%rax, %rdi	# tmp226,
	call	emit_equiv_load	#
	.loc 1 7362 0
	movq	-96(%rbp), %rax	# insn, tmp227
	movq	%rax, %rdi	# tmp227,
	call	add_insn	#
	.loc 1 7363 0
	jmp	.L1384	#
.L1388:
	.loc 1 7365 0
	movq	-120(%rbp), %rax	# retaddr, tmp228
	movzwl	(%rax), %eax	# retaddr_85->code, D.22377
	cmpw	$66, %ax	#, D.22377
	jne	.L1389	#,
	.loc 1 7366 0
	movq	-120(%rbp), %rax	# retaddr, tmp229
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movzwl	(%rax), %eax	# _90->code, D.22377
	cmpw	$61, %ax	#, D.22377
	jne	.L1389	#,
	.loc 1 7367 0
	movq	-120(%rbp), %rax	# retaddr, tmp230
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movl	8(%rax), %eax	# _92->fld[0].rtuint, D.22383
	movl	%eax, %edx	# D.22383, D.22380
	movl	target_flags(%rip), %eax	# target_flags, target_flags.688
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1390	#,
	.loc 1 7367 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.687
	jmp	.L1391	#
.L1390:
	.loc 1 7367 0 discriminator 2
	movl	$4, %eax	#, iftmp.687
.L1391:
	.loc 1 7367 0 discriminator 3
	movl	%edx, %esi	# D.22380,
	movl	%eax, %edi	# iftmp.687,
	call	gen_rtx_REG	#
	movq	%rax, -112(%rbp)	# tmp231, base
	movq	$0, -104(%rbp)	#, offset
	jmp	.L1392	#
.L1389:
	.loc 1 7368 0 is_stmt 1
	movq	-120(%rbp), %rax	# retaddr, tmp232
	movzwl	(%rax), %eax	# retaddr_85->code, D.22377
	cmpw	$66, %ax	#, D.22377
	jne	.L1393	#,
	.loc 1 7369 0
	movq	-120(%rbp), %rax	# retaddr, tmp233
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movzwl	(%rax), %eax	# _102->code, D.22377
	cmpw	$75, %ax	#, D.22377
	jne	.L1393	#,
	.loc 1 7370 0
	movq	-120(%rbp), %rax	# retaddr, tmp234
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movq	8(%rax), %rax	# _104->fld[0].rtx, D.22378
	movzwl	(%rax), %eax	# _105->code, D.22377
	cmpw	$61, %ax	#, D.22377
	jne	.L1393	#,
	.loc 1 7371 0
	movq	-120(%rbp), %rax	# retaddr, tmp235
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movq	16(%rax), %rax	# _107->fld[1].rtx, D.22378
	movzwl	(%rax), %eax	# _108->code, D.22377
	cmpw	$54, %ax	#, D.22377
	jne	.L1393	#,
	.loc 1 7373 0
	movq	-120(%rbp), %rax	# retaddr, tmp236
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movq	8(%rax), %rax	# _110->fld[0].rtx, D.22378
	movl	8(%rax), %eax	# _111->fld[0].rtuint, D.22383
	movl	%eax, %edx	# D.22383, D.22380
	movl	target_flags(%rip), %eax	# target_flags, target_flags.690
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1394	#,
	.loc 1 7373 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.689
	jmp	.L1395	#
.L1394:
	.loc 1 7373 0 discriminator 2
	movl	$4, %eax	#, iftmp.689
.L1395:
	.loc 1 7373 0 discriminator 3
	movl	%edx, %esi	# D.22380,
	movl	%eax, %edi	# iftmp.689,
	call	gen_rtx_REG	#
	movq	%rax, -112(%rbp)	# tmp237, base
	.loc 1 7374 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rax	# retaddr, tmp238
	movq	8(%rax), %rax	# retaddr_85->fld[0].rtx, D.22378
	movq	16(%rax), %rax	# _119->fld[1].rtx, D.22378
	movq	8(%rax), %rax	# _120->fld[0].rtwint, tmp239
	movq	%rax, -104(%rbp)	# tmp239, offset
	jmp	.L1392	#
.L1393:
	.loc 1 7377 0
	movl	$__FUNCTION__.15052, %edx	#,
	movl	$7377, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1392:
	.loc 1 7382 0
	movq	-104(%rbp), %rdx	# offset, tmp240
	movq	-112(%rbp), %rax	# base, tmp241
	movq	%rdx, %rsi	# tmp240,
	movq	%rax, %rdi	# tmp241,
	call	plus_constant_wide	#
	movq	%rax, -120(%rbp)	# tmp242, retaddr
	.loc 1 7383 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	cmpq	-112(%rbp), %rax	# base, D.22378
	jne	.L1396	#,
	.loc 1 7384 0
	movq	-56(%rbp), %rdx	# info.sp_offset, D.22382
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	%rdx, %rsi	# D.22382,
	movq	%rax, %rdi	# D.22378,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.22378
	movq	global_rtl+16(%rip), %rcx	# global_rtl, D.22378
	movq	-120(%rbp), %rax	# retaddr, tmp243
	movq	%rcx, %rsi	# D.22378,
	movq	%rax, %rdi	# tmp243,
	call	simplify_replace_rtx	#
	movq	%rax, -120(%rbp)	# tmp244, retaddr
.L1396:
	.loc 1 7388 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.692
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1397	#,
	.loc 1 7388 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.691
	jmp	.L1398	#
.L1397:
	.loc 1 7388 0 discriminator 2
	movl	$4, %eax	#, iftmp.691
.L1398:
	.loc 1 7388 0 discriminator 3
	movq	-120(%rbp), %rdx	# retaddr, tmp245
	movq	%rdx, %rsi	# tmp245,
	movl	%eax, %edi	# iftmp.691,
	call	gen_rtx_MEM	#
	movq	%rax, -120(%rbp)	# tmp246, retaddr
	.loc 1 7393 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# info.equiv_reg_src, D.22378
	testq	%rax, %rax	# D.22378
	je	.L1399	#,
	.loc 1 7394 0
	movq	-32(%rbp), %rax	# info.equiv_reg_src, D.22378
	movq	-120(%rbp), %rdx	# retaddr, tmp247
	movq	%rdx, %rsi	# tmp247,
	movq	%rax, %rdi	# D.22378,
	call	reg_overlap_mentioned_p	#
	testl	%eax, %eax	# D.22380
	je	.L1399	#,
.LBB123:
	.loc 1 7399 0
	movl	$0, -124(%rbp)	#, regno
	jmp	.L1400	#
.L1424:
	.loc 1 7400 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.694
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1401	#,
	.loc 1 7400 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.693
	jmp	.L1402	#
.L1401:
	.loc 1 7400 0 discriminator 2
	movl	$4, %eax	#, iftmp.693
.L1402:
	.loc 1 7400 0 discriminator 3
	movl	-124(%rbp), %edx	# regno, regno.695
	movl	%eax, %esi	# iftmp.693,
	movl	%edx, %edi	# regno.695,
	call	ix86_hard_regno_mode_ok	#
	testl	%eax, %eax	# D.22380
	je	.L1403	#,
	.loc 1 7401 0 is_stmt 1
	movl	-124(%rbp), %eax	# regno, tmp248
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.22381
	testb	%al, %al	# D.22381
	jne	.L1403	#,
	.loc 1 7402 0
	movq	regs_invalidated_by_call(%rip), %rdx	# regs_invalidated_by_call, regs_invalidated_by_call.696
	movl	-124(%rbp), %eax	# regno, regno.697
	movl	%eax, %ecx	# regno.697, tmp298
	shrq	%cl, %rdx	# tmp298, D.22384
	movq	%rdx, %rax	# D.22384, D.22384
	andl	$1, %eax	#, D.22384
	testq	%rax, %rax	# D.22384
	je	.L1403	#,
	.loc 1 7403 0
	movl	-124(%rbp), %edx	# regno, regno.698
	movq	entry_exit_blocks+176(%rip), %rax	# entry_exit_blocks[1].global_live_at_start, D.22385
	movl	%edx, %esi	# regno.698,
	movq	%rax, %rdi	# D.22385,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1403	#,
	.loc 1 7405 0
	movq	-32(%rbp), %rsi	# info.equiv_reg_src, D.22378
	cmpl	$7, -124(%rbp)	#, regno
	jbe	.L1404	#,
	.loc 1 7406 0
	cmpl	$15, -124(%rbp)	#, regno
	jbe	.L1405	#,
.L1404:
	.loc 1 7406 0 is_stmt 0 discriminator 2
	cmpl	$20, -124(%rbp)	#, regno
	jbe	.L1406	#,
	.loc 1 7406 0 discriminator 1
	cmpl	$28, -124(%rbp)	#, regno
	jbe	.L1405	#,
.L1406:
	.loc 1 7406 0 discriminator 2
	cmpl	$44, -124(%rbp)	#, regno
	jbe	.L1407	#,
	.loc 1 7406 0 discriminator 1
	cmpl	$52, -124(%rbp)	#, regno
	jbe	.L1405	#,
.L1407:
	.loc 1 7406 0 discriminator 2
	cmpl	$28, -124(%rbp)	#, regno
	jbe	.L1408	#,
	.loc 1 7406 0 discriminator 1
	cmpl	$36, -124(%rbp)	#, regno
	ja	.L1408	#,
.L1405:
	movl	target_flags(%rip), %eax	# target_flags, target_flags.702
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1409	#,
	movl	$5, %eax	#, iftmp.701
	jmp	.L1410	#
.L1409:
	.loc 1 7406 0 discriminator 2
	movl	$4, %eax	#, iftmp.701
.L1410:
	.loc 1 7406 0 discriminator 3
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22387
	.loc 1 7405 0 is_stmt 1 discriminator 3
	cmpl	$5, %eax	#, D.22387
	je	.L1411	#,
	.loc 1 7406 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.704
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1412	#,
	.loc 1 7406 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.703
	jmp	.L1413	#
.L1412:
	.loc 1 7406 0 discriminator 2
	movl	$4, %eax	#, iftmp.703
.L1413:
	.loc 1 7406 0 discriminator 3
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.22387
	cmpl	$6, %eax	#, D.22387
	jne	.L1414	#,
.L1411:
	.loc 1 7405 0 is_stmt 1 discriminator 1
	movl	$2, %eax	#, iftmp.700
	jmp	.L1416	#
.L1414:
	.loc 1 7405 0 is_stmt 0
	movl	$1, %eax	#, iftmp.700
	jmp	.L1416	#
.L1408:
	.loc 1 7406 0 is_stmt 1 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.706
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1417	#,
	.loc 1 7406 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.705
	jmp	.L1418	#
.L1417:
	.loc 1 7406 0 discriminator 2
	movl	$4, %eax	#, iftmp.705
.L1418:
	.loc 1 7406 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.22386
	movzbl	%al, %edx	# D.22386, D.22380
	movl	target_flags(%rip), %eax	# target_flags, target_flags.708
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1419	#,
	.loc 1 7406 0 discriminator 1
	movl	$8, %eax	#, iftmp.707
	jmp	.L1420	#
.L1419:
	.loc 1 7406 0 discriminator 2
	movl	$4, %eax	#, iftmp.707
.L1420:
	.loc 1 7406 0 discriminator 3
	addl	%edx, %eax	# D.22380, D.22380
	subl	$1, %eax	#, D.22380
	movl	target_flags(%rip), %edx	# target_flags, target_flags.710
	andl	$33554432, %edx	#, D.22380
	testl	%edx, %edx	# D.22380
	je	.L1421	#,
	.loc 1 7406 0 discriminator 1
	movl	$8, %ebx	#, iftmp.709
	jmp	.L1422	#
.L1421:
	.loc 1 7406 0 discriminator 2
	movl	$4, %ebx	#, iftmp.709
.L1422:
	.loc 1 7406 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.709
.L1416:
	.loc 1 7405 0 is_stmt 1 discriminator 3
	movl	-124(%rbp), %edx	# regno, tmp254
	leal	(%rax,%rdx), %edi	#, D.22383
	movl	-124(%rbp), %eax	# regno, tmp255
	movl	$0, %ecx	#,
	movq	%rsi, %rdx	# D.22378,
	movl	%edi, %esi	# D.22383,
	movl	%eax, %edi	# tmp255,
	call	refers_to_regno_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1403	#,
	.loc 1 7409 0
	jmp	.L1423	#
.L1403:
	.loc 1 7399 0
	addl	$1, -124(%rbp)	#, regno
.L1400:
	.loc 1 7399 0 is_stmt 0 discriminator 1
	cmpl	$52, -124(%rbp)	#, regno
	jbe	.L1424	#,
.L1423:
	.loc 1 7411 0 is_stmt 1
	cmpl	$53, -124(%rbp)	#, regno
	jne	.L1425	#,
	.loc 1 7412 0
	movl	$__FUNCTION__.15052, %edx	#,
	movl	$7412, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1425:
	.loc 1 7414 0
	movl	-124(%rbp), %edx	# regno, regno.711
	movl	target_flags(%rip), %eax	# target_flags, target_flags.713
	andl	$33554432, %eax	#, D.22380
	testl	%eax, %eax	# D.22380
	je	.L1426	#,
	.loc 1 7414 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.712
	jmp	.L1427	#
.L1426:
	.loc 1 7414 0 discriminator 2
	movl	$4, %eax	#, iftmp.712
.L1427:
	.loc 1 7414 0 discriminator 3
	movl	%edx, %esi	# regno.711,
	movl	%eax, %edi	# iftmp.712,
	call	gen_rtx_REG	#
	movq	%rax, -88(%rbp)	# tmp256, reg
	.loc 1 7415 0 is_stmt 1 discriminator 3
	movq	-120(%rbp), %rdx	# retaddr, tmp257
	movq	-88(%rbp), %rax	# reg, tmp258
	movq	%rdx, %rsi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	emit_move_insn	#
	.loc 1 7416 0 discriminator 3
	movq	-88(%rbp), %rax	# reg, tmp259
	movq	%rax, -120(%rbp)	# tmp259, retaddr
.L1399:
.LBE123:
	.loc 1 7419 0
	leaq	-64(%rbp), %rax	#, tmp260
	movq	%rax, %rdi	# tmp260,
	call	emit_equiv_load	#
	.loc 1 7420 0
	movq	-120(%rbp), %rax	# retaddr, tmp261
	movq	%rax, %rdi	# tmp261,
	call	gen_indirect_jump	#
	movq	%rax, %rdi	# D.22378,
	call	emit_jump_insn	#
	movq	%rax, -80(%rbp)	# tmp262, jump_insn
	.loc 1 7423 0
	movq	-80(%rbp), %rax	# jump_insn, tmp263
	movzwl	(%rax), %eax	# jump_insn_195->code, D.22377
	movzwl	%ax, %eax	# D.22377, D.22380
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.22381
	cmpb	$105, %al	#, D.22381
	jne	.L1428	#,
	.loc 1 7423 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# jump_insn, tmp265
	movq	32(%rax), %rax	# jump_insn_195->fld[3].rtx, D.22378
	movzwl	(%rax), %eax	# _199->code, D.22377
	cmpw	$47, %ax	#, D.22377
	jne	.L1429	#,
	.loc 1 7423 0 discriminator 3
	movq	-80(%rbp), %rax	# jump_insn, tmp266
	movq	32(%rax), %rax	# jump_insn_195->fld[3].rtx, iftmp.715
	jmp	.L1431	#
.L1429:
	.loc 1 7423 0 discriminator 4
	movq	-80(%rbp), %rax	# jump_insn, tmp267
	movq	32(%rax), %rdx	# jump_insn_195->fld[3].rtx, D.22378
	movq	-80(%rbp), %rax	# jump_insn, tmp268
	movq	%rdx, %rsi	# D.22378,
	movq	%rax, %rdi	# tmp268,
	call	single_set_2	#
	jmp	.L1431	#
.L1428:
	.loc 1 7423 0 discriminator 2
	movl	$0, %eax	#, iftmp.714
.L1431:
	.loc 1 7423 0 discriminator 5
	movq	%rax, -72(%rbp)	# iftmp.714, jump_set
	.loc 1 7424 0 is_stmt 1 discriminator 5
	cmpq	$0, -72(%rbp)	#, jump_set
	jne	.L1432	#,
	.loc 1 7425 0
	movl	$__FUNCTION__.15052, %edx	#,
	movl	$7425, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1432:
	.loc 1 7427 0
	movq	-72(%rbp), %rax	# jump_set, tmp269
	movzbl	3(%rax), %edx	# jump_set_206->jump, tmp272
	orl	$1, %edx	#, tmp273
	movb	%dl, 3(%rax)	# tmp273, jump_set_206->jump
.LBE122:
	.loc 1 7349 0
	jmp	.L1433	#
.L1387:
	.loc 1 7434 0
	movq	-96(%rbp), %rax	# insn, tmp274
	movq	32(%rax), %rdx	# insn_31->fld[3].rtx, D.22378
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	movq	%rdx, %rsi	# D.22378,
	movq	%rax, %rdi	# D.22378,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1434	#,
	.loc 1 7435 0
	movq	-64(%rbp), %rdx	# info.sp_equiv_reg, D.22378
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	cmpq	%rax, %rdx	# D.22378, D.22378
	je	.L1435	#,
	.loc 1 7436 0
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	-96(%rbp), %rdx	# insn, tmp275
	movq	%rdx, %rsi	# tmp275,
	movq	%rax, %rdi	# D.22378,
	call	reg_set_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1434	#,
.L1435:
	.loc 1 7437 0
	movq	-96(%rbp), %rax	# insn, tmp276
	movq	%rax, %rdi	# tmp276,
	call	add_insn	#
	jmp	.L1433	#
.L1434:
	.loc 1 7438 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	movq	-96(%rbp), %rdx	# insn, tmp277
	movq	%rdx, %rsi	# tmp277,
	movq	%rax, %rdi	# D.22378,
	call	reg_set_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1436	#,
	.loc 1 7439 0
	movq	-64(%rbp), %rdx	# info.sp_equiv_reg, D.22378
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	cmpq	%rax, %rdx	# D.22378, D.22378
	je	.L1437	#,
	.loc 1 7440 0
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	-96(%rbp), %rdx	# insn, tmp278
	movq	%rdx, %rsi	# tmp278,
	movq	%rax, %rdi	# D.22378,
	call	reg_set_p	#
	testl	%eax, %eax	# D.22380
	jne	.L1436	#,
.L1437:
	.loc 1 7442 0
	movq	-56(%rbp), %rdx	# info.sp_offset, D.22382
	movq	-64(%rbp), %rax	# info.sp_equiv_reg, D.22378
	movq	%rdx, %rsi	# D.22382,
	movq	%rax, %rdi	# D.22378,
	call	plus_constant_wide	#
	movq	%rax, %rcx	#, D.22378
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22378
	movq	-96(%rbp), %rdx	# insn, tmp279
	movq	%rcx, %rsi	# D.22378,
	movq	%rax, %rdi	# D.22378,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.22380
	jne	.L1438	#,
	.loc 1 7446 0
	movl	$__FUNCTION__.15052, %edx	#,
	movl	$7446, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1438:
	.loc 1 7448 0
	movq	-96(%rbp), %rax	# insn, tmp280
	movq	%rax, %rdi	# tmp280,
	call	add_insn	#
	jmp	.L1433	#
.L1436:
	.loc 1 7450 0
	movq	-96(%rbp), %rax	# insn, tmp281
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movzwl	(%rax), %eax	# _67->code, D.22377
	cmpw	$47, %ax	#, D.22377
	jne	.L1439	#,
	.loc 1 7451 0
	movq	-96(%rbp), %rax	# insn, tmp282
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	leaq	-64(%rbp), %rdx	#, tmp283
	movq	%rdx, %rsi	# tmp283,
	movq	%rax, %rdi	# D.22378,
	call	handle_epilogue_set	#
	jmp	.L1433	#
.L1439:
	.loc 1 7452 0
	movq	-96(%rbp), %rax	# insn, tmp284
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movzwl	(%rax), %eax	# _70->code, D.22377
	cmpw	$39, %ax	#, D.22377
	jne	.L1440	#,
	.loc 1 7454 0
	movl	$0, -128(%rbp)	#, j
	jmp	.L1441	#
.L1443:
	.loc 1 7455 0
	movq	-96(%rbp), %rax	# insn, tmp285
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movq	8(%rax), %rax	# _76->fld[0].rtvec, D.22379
	movl	-128(%rbp), %edx	# j, tmp287
	movslq	%edx, %rdx	# tmp287, tmp286
	movq	8(%rax,%rdx,8), %rax	# _77->elem, D.22378
	movzwl	(%rax), %eax	# _78->code, D.22377
	cmpw	$47, %ax	#, D.22377
	jne	.L1442	#,
	.loc 1 7456 0
	movq	-96(%rbp), %rax	# insn, tmp288
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movq	8(%rax), %rax	# _80->fld[0].rtvec, D.22379
	movl	-128(%rbp), %edx	# j, tmp290
	movslq	%edx, %rdx	# tmp290, tmp289
	movq	8(%rax,%rdx,8), %rax	# _81->elem, D.22378
	leaq	-64(%rbp), %rdx	#, tmp291
	movq	%rdx, %rsi	# tmp291,
	movq	%rax, %rdi	# D.22378,
	call	handle_epilogue_set	#
.L1442:
	.loc 1 7454 0
	addl	$1, -128(%rbp)	#, j
.L1441:
	.loc 1 7454 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# insn, tmp292
	movq	32(%rax), %rax	# insn_31->fld[3].rtx, D.22378
	movq	8(%rax), %rax	# _73->fld[0].rtvec, D.22379
	movl	(%rax), %eax	# _74->num_elem, D.22380
	cmpl	-128(%rbp), %eax	# j, D.22380
	jg	.L1443	#,
	jmp	.L1433	#
.L1440:
	.loc 1 7459 0 is_stmt 1
	movq	-96(%rbp), %rax	# insn, tmp293
	movq	%rax, %rdi	# tmp293,
	call	add_insn	#
.L1433:
	.loc 1 7461 0
	movq	-48(%rbp), %rax	# info.new_sp_equiv_reg, D.22378
	movq	%rax, -64(%rbp)	# D.22378, info.sp_equiv_reg
	.loc 1 7462 0
	movq	-40(%rbp), %rax	# info.new_sp_offset, D.22382
	movq	%rax, -56(%rbp)	# D.22382, info.sp_offset
.L1384:
.LBE121:
	.loc 1 7321 0
	addl	$1, -132(%rbp)	#, i
.L1382:
	.loc 1 7321 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# seq, tmp294
	movq	8(%rax), %rax	# seq_23(D)->fld[0].rtvec, D.22379
	movl	(%rax), %eax	# _28->num_elem, D.22380
	cmpl	-132(%rbp), %eax	# i, D.22380
	jg	.L1444	#,
	.loc 1 7465 0 is_stmt 1
	call	gen_sequence	#
	movq	%rax, -152(%rbp)	# tmp295, seq
	.loc 1 7466 0
	call	end_sequence	#
	.loc 1 7467 0
	movq	-152(%rbp), %rax	# seq, D.22376
.L1445:
	.loc 1 7468 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	keep_stack_depressed, .-keep_stack_depressed
	.type	handle_epilogue_set, @function
handle_epilogue_set:
.LFB111:
	.loc 1 7479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# set, set
	movq	%rsi, -16(%rbp)	# p, p
	.loc 1 7482 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22388
	movq	-8(%rbp), %rdx	# set, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# D.22388,
	call	reg_set_p	#
	testl	%eax, %eax	# D.22389
	je	.L1447	#,
	.loc 1 7484 0
	movq	-8(%rbp), %rax	# set, tmp109
	movq	8(%rax), %rdx	# set_2(D)->fld[0].rtx, D.22388
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22388
	cmpq	%rax, %rdx	# D.22388, D.22388
	je	.L1448	#,
	.loc 1 7485 0
	movl	$__FUNCTION__.15068, %edx	#,
	movl	$7485, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1448:
	.loc 1 7487 0
	movq	-8(%rbp), %rax	# set, tmp110
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movzwl	(%rax), %eax	# _6->code, D.22390
	cmpw	$75, %ax	#, D.22390
	jne	.L1449	#,
	.loc 1 7488 0
	movq	-8(%rbp), %rax	# set, tmp111
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movq	16(%rax), %rax	# _8->fld[1].rtx, D.22388
	movzwl	(%rax), %eax	# _9->code, D.22390
	cmpw	$54, %ax	#, D.22390
	jne	.L1449	#,
	.loc 1 7490 0
	movq	-8(%rbp), %rax	# set, tmp112
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movq	8(%rax), %rdx	# _11->fld[0].rtx, D.22388
	movq	-16(%rbp), %rax	# p, tmp113
	movq	%rdx, 16(%rax)	# D.22388, p_13(D)->new_sp_equiv_reg
	.loc 1 7491 0
	movq	-8(%rbp), %rax	# set, tmp114
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movq	16(%rax), %rax	# _14->fld[1].rtx, D.22388
	movq	8(%rax), %rdx	# _15->fld[0].rtwint, D.22391
	movq	-16(%rbp), %rax	# p, tmp115
	movq	%rdx, 24(%rax)	# D.22391, p_13(D)->new_sp_offset
	jmp	.L1450	#
.L1449:
	.loc 1 7494 0
	movq	-8(%rbp), %rax	# set, tmp116
	movq	16(%rax), %rdx	# set_2(D)->fld[1].rtx, D.22388
	movq	-16(%rbp), %rax	# p, tmp117
	movq	%rdx, 16(%rax)	# D.22388, p_13(D)->new_sp_equiv_reg
	movq	-16(%rbp), %rax	# p, tmp118
	movq	$0, 24(%rax)	#, p_13(D)->new_sp_offset
.L1450:
	.loc 1 7497 0
	movq	-16(%rbp), %rax	# p, tmp119
	movq	16(%rax), %rdx	# p_13(D)->new_sp_equiv_reg, D.22388
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.22388
	cmpq	%rax, %rdx	# D.22388, D.22388
	jne	.L1451	#,
	.loc 1 7499 0
	movq	-16(%rbp), %rax	# p, tmp120
	movq	(%rax), %rdx	# p_13(D)->sp_equiv_reg, D.22388
	movq	-16(%rbp), %rax	# p, tmp121
	movq	%rdx, 16(%rax)	# D.22388, p_13(D)->new_sp_equiv_reg
	.loc 1 7500 0
	movq	-16(%rbp), %rax	# p, tmp122
	movq	24(%rax), %rdx	# p_13(D)->new_sp_offset, D.22391
	movq	-16(%rbp), %rax	# p, tmp123
	movq	8(%rax), %rax	# p_13(D)->sp_offset, D.22391
	addq	%rax, %rdx	# D.22391, D.22391
	movq	-16(%rbp), %rax	# p, tmp124
	movq	%rdx, 24(%rax)	# D.22391, p_13(D)->new_sp_offset
.L1451:
	.loc 1 7503 0
	movq	-16(%rbp), %rax	# p, tmp125
	movq	16(%rax), %rax	# p_13(D)->new_sp_equiv_reg, D.22388
	testq	%rax, %rax	# D.22388
	je	.L1452	#,
	.loc 1 7503 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp126
	movq	16(%rax), %rax	# p_13(D)->new_sp_equiv_reg, D.22388
	movzwl	(%rax), %eax	# _25->code, D.22390
	cmpw	$61, %ax	#, D.22390
	je	.L1453	#,
.L1452:
	.loc 1 7504 0 is_stmt 1
	movl	$__FUNCTION__.15068, %edx	#,
	movl	$7504, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1453:
	.loc 1 7506 0
	jmp	.L1446	#
.L1447:
	.loc 1 7515 0
	movq	-16(%rbp), %rax	# p, tmp127
	movq	16(%rax), %rax	# p_13(D)->new_sp_equiv_reg, D.22388
	testq	%rax, %rax	# D.22388
	je	.L1455	#,
	.loc 1 7515 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# p, tmp128
	movq	16(%rax), %rax	# p_13(D)->new_sp_equiv_reg, D.22388
	movq	-8(%rbp), %rdx	# set, tmp129
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# D.22388,
	call	reg_set_p	#
	testl	%eax, %eax	# D.22389
	je	.L1455	#,
	.loc 1 7517 0 is_stmt 1
	movq	-8(%rbp), %rax	# set, tmp130
	movq	8(%rax), %rdx	# set_2(D)->fld[0].rtx, D.22388
	movq	-16(%rbp), %rax	# p, tmp131
	movq	16(%rax), %rax	# p_13(D)->new_sp_equiv_reg, D.22388
	movq	%rdx, %rsi	# D.22388,
	movq	%rax, %rdi	# D.22388,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.22389
	je	.L1456	#,
	.loc 1 7518 0
	movq	-16(%rbp), %rax	# p, tmp132
	movq	32(%rax), %rax	# p_13(D)->equiv_reg_src, D.22388
	testq	%rax, %rax	# D.22388
	je	.L1457	#,
.L1456:
	.loc 1 7519 0
	movl	$__FUNCTION__.15068, %edx	#,
	movl	$7519, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1457:
	.loc 1 7522 0
	movq	-16(%rbp), %rax	# p, tmp133
	movq	8(%rax), %rdx	# p_13(D)->sp_offset, D.22391
	movq	-16(%rbp), %rax	# p, tmp134
	movq	(%rax), %rax	# p_13(D)->sp_equiv_reg, D.22388
	movq	%rdx, %rsi	# D.22391,
	movq	%rax, %rdi	# D.22388,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.22388
	movq	global_rtl+16(%rip), %rcx	# global_rtl, D.22388
	movq	-8(%rbp), %rax	# set, tmp135
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movq	%rcx, %rsi	# D.22388,
	movq	%rax, %rdi	# D.22388,
	call	simplify_replace_rtx	#
	movq	-16(%rbp), %rdx	# p, tmp136
	movq	%rax, 32(%rdx)	# D.22388, p_13(D)->equiv_reg_src
	.loc 1 7517 0
	jmp	.L1446	#
.L1455:
	.loc 1 7531 0
	movq	-16(%rbp), %rax	# p, tmp137
	movq	8(%rax), %rdx	# p_13(D)->sp_offset, D.22391
	movq	-16(%rbp), %rax	# p, tmp138
	movq	(%rax), %rax	# p_13(D)->sp_equiv_reg, D.22388
	movq	%rdx, %rsi	# D.22391,
	movq	%rax, %rdi	# D.22388,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.22388
	movq	global_rtl+16(%rip), %rcx	# global_rtl, D.22388
	movq	-8(%rbp), %rax	# set, tmp139
	movq	16(%rax), %rax	# set_2(D)->fld[1].rtx, D.22388
	movq	%rcx, %rsi	# D.22388,
	movq	%rax, %rdi	# D.22388,
	call	simplify_replace_rtx	#
	movq	-8(%rbp), %rdx	# set, tmp140
	movq	%rax, 16(%rdx)	# D.22388, set_2(D)->fld[1].rtx
	.loc 1 7534 0
	movq	-16(%rbp), %rax	# p, tmp141
	movq	8(%rax), %rdx	# p_13(D)->sp_offset, D.22391
	movq	-16(%rbp), %rax	# p, tmp142
	movq	(%rax), %rax	# p_13(D)->sp_equiv_reg, D.22388
	movq	%rdx, %rsi	# D.22391,
	movq	%rax, %rdi	# D.22388,
	call	plus_constant_wide	#
	movq	%rax, %rdx	#, D.22388
	movq	global_rtl+16(%rip), %rcx	# global_rtl, D.22388
	movq	-8(%rbp), %rax	# set, tmp143
	movq	8(%rax), %rax	# set_2(D)->fld[0].rtx, D.22388
	movq	%rcx, %rsi	# D.22388,
	movq	%rax, %rdi	# D.22388,
	call	simplify_replace_rtx	#
	movq	-8(%rbp), %rdx	# set, tmp144
	movq	%rax, 8(%rdx)	# D.22388, set_2(D)->fld[0].rtx
	.loc 1 7537 0
	movq	-8(%rbp), %rax	# set, tmp145
	movq	%rax, %rdi	# tmp145,
	call	emit_insn	#
.L1446:
	.loc 1 7539 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	handle_epilogue_set, .-handle_epilogue_set
	.type	emit_equiv_load, @function
emit_equiv_load:
.LFB112:
	.loc 1 7546 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 7547 0
	movq	-8(%rbp), %rax	# p, tmp62
	movq	32(%rax), %rax	# p_1(D)->equiv_reg_src, D.22392
	testq	%rax, %rax	# D.22392
	je	.L1459	#,
	.loc 1 7548 0
	movq	-8(%rbp), %rax	# p, tmp63
	movq	32(%rax), %rdx	# p_1(D)->equiv_reg_src, D.22392
	movq	-8(%rbp), %rax	# p, tmp64
	movq	(%rax), %rax	# p_1(D)->sp_equiv_reg, D.22392
	movq	%rdx, %rsi	# D.22392,
	movq	%rax, %rdi	# D.22392,
	call	emit_move_insn	#
.L1459:
	.loc 1 7550 0
	movq	-8(%rbp), %rax	# p, tmp65
	movq	$0, 32(%rax)	#, p_1(D)->equiv_reg_src
	.loc 1 7551 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	emit_equiv_load, .-emit_equiv_load
	.globl	thread_prologue_and_epilogue_insns
	.type	thread_prologue_and_epilogue_insns, @function
thread_prologue_and_epilogue_insns:
.LFB113:
	.loc 1 7561 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -184(%rbp)	# f, f
	.loc 1 7562 0
	movl	$0, -164(%rbp)	#, inserted
	.loc 1 7568 0
	movq	$0, -96(%rbp)	#, prologue_end
	.loc 1 7571 0
	movq	$0, -144(%rbp)	#, epilogue_end
	.loc 1 7577 0
	call	start_sequence	#
	.loc 1 7578 0
	call	gen_prologue	#
	movq	%rax, -152(%rbp)	# tmp124, seq
	.loc 1 7579 0
	movq	-152(%rbp), %rax	# seq, tmp125
	movq	%rax, %rdi	# tmp125,
	call	emit_insn	#
	.loc 1 7582 0
	movq	-152(%rbp), %rax	# seq, tmp126
	movzwl	(%rax), %eax	# seq_23->code, D.22393
	cmpw	$24, %ax	#, D.22393
	je	.L1461	#,
	.loc 1 7583 0
	call	get_insns	#
	movq	%rax, -152(%rbp)	# tmp127, seq
.L1461:
	.loc 1 7584 0
	movq	-152(%rbp), %rax	# seq, tmp128
	movl	$prologue, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	record_insns	#
	.loc 1 7585 0
	movl	$-90, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -96(%rbp)	# tmp129, prologue_end
	.loc 1 7587 0
	call	gen_sequence	#
	movq	%rax, -152(%rbp)	# tmp130, seq
	.loc 1 7588 0
	call	end_sequence	#
	.loc 1 7593 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.22394
	testq	%rax, %rax	# D.22394
	je	.L1462	#,
	.loc 1 7593 0 is_stmt 0 discriminator 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.22394
	movq	8(%rax), %rax	# _29->succ_next, D.22394
	testq	%rax, %rax	# D.22394
	je	.L1463	#,
.L1462:
	.loc 1 7594 0 is_stmt 1
	movl	$__FUNCTION__.15080, %edx	#,
	movl	$7594, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1463:
	.loc 1 7596 0
	movq	entry_exit_blocks+40(%rip), %rdx	# entry_exit_blocks[0].succ, D.22394
	movq	-152(%rbp), %rax	# seq, tmp131
	movq	%rdx, %rsi	# D.22394,
	movq	%rax, %rdi	# tmp131,
	call	insert_insn_on_edge	#
	.loc 1 7597 0
	movl	$1, -164(%rbp)	#, inserted
	.loc 1 7603 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp132
	movq	%rax, -160(%rbp)	# tmp132, e
	jmp	.L1464	#
.L1467:
	.loc 1 7604 0
	movq	-160(%rbp), %rax	# e, tmp133
	movl	48(%rax), %eax	# e_2->flags, D.22395
	andl	$16, %eax	#, D.22395
	testl	%eax, %eax	# D.22395
	jne	.L1465	#,
	.loc 1 7605 0
	jmp	.L1466	#
.L1465:
	.loc 1 7603 0
	movq	-160(%rbp), %rax	# e, tmp134
	movq	(%rax), %rax	# e_2->pred_next, tmp135
	movq	%rax, -160(%rbp)	# tmp135, e
.L1464:
	.loc 1 7603 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1467	#,
.L1466:
	.loc 1 7606 0 is_stmt 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1468	#,
	.loc 1 7607 0
	jmp	.L1469	#
.L1468:
	.loc 1 7610 0
	movl	optimize(%rip), %eax	# optimize, optimize.716
	testl	%eax, %eax	# optimize.716
	je	.L1470	#,
	.loc 1 7610 0 is_stmt 0 discriminator 1
	call	ix86_can_use_return_insn_p	#
	testl	%eax, %eax	# D.22395
	je	.L1470	#,
.LBB124:
	.loc 1 7622 0 is_stmt 1
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp136
	movq	%rax, -160(%rbp)	# tmp136, e
	jmp	.L1471	#
.L1474:
	.loc 1 7623 0
	movq	-160(%rbp), %rax	# e, tmp137
	movl	48(%rax), %eax	# e_3->flags, D.22395
	andl	$1, %eax	#, D.22395
	testl	%eax, %eax	# D.22395
	je	.L1472	#,
	.loc 1 7624 0
	jmp	.L1473	#
.L1472:
	.loc 1 7622 0
	movq	-160(%rbp), %rax	# e, tmp138
	movq	(%rax), %rax	# e_3->pred_next, tmp139
	movq	%rax, -160(%rbp)	# tmp139, e
.L1471:
	.loc 1 7622 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1474	#,
.L1473:
	.loc 1 7625 0 is_stmt 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1475	#,
	.loc 1 7626 0
	jmp	.L1469	#
.L1475:
	.loc 1 7627 0
	movq	-160(%rbp), %rax	# e, tmp140
	movq	16(%rax), %rax	# e_3->src, tmp141
	movq	%rax, -88(%rbp)	# tmp141, last
	.loc 1 7630 0
	movq	-88(%rbp), %rax	# last, tmp142
	movq	8(%rax), %rax	# last_43->end, tmp143
	movq	%rax, -136(%rbp)	# tmp143, label
	.loc 1 7631 0
	jmp	.L1476	#
.L1479:
	.loc 1 7633 0
	movq	-136(%rbp), %rax	# label, tmp144
	movq	%rax, %rdi	# tmp144,
	call	active_insn_p	#
	testl	%eax, %eax	# D.22395
	je	.L1477	#,
	.loc 1 7634 0
	jmp	.L1478	#
.L1477:
	.loc 1 7635 0
	movq	-136(%rbp), %rax	# label, tmp145
	movq	16(%rax), %rax	# label_12->fld[1].rtx, tmp146
	movq	%rax, -136(%rbp)	# tmp146, label
.L1476:
	.loc 1 7631 0 discriminator 1
	cmpq	$0, -136(%rbp)	#, label
	je	.L1478	#,
	.loc 1 7631 0 is_stmt 0 discriminator 2
	movq	-136(%rbp), %rax	# label, tmp147
	movzwl	(%rax), %eax	# label_12->code, D.22393
	cmpw	$36, %ax	#, D.22393
	jne	.L1479	#,
.L1478:
	.loc 1 7638 0 is_stmt 1
	movq	-88(%rbp), %rax	# last, tmp148
	movq	(%rax), %rax	# last_43->head, D.22396
	cmpq	-136(%rbp), %rax	# label, D.22396
	jne	.L1470	#,
	.loc 1 7638 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# label, tmp149
	movzwl	(%rax), %eax	# label_12->code, D.22393
	cmpw	$36, %ax	#, D.22393
	jne	.L1470	#,
.LBB125:
	.loc 1 7640 0 is_stmt 1
	movq	$0, -128(%rbp)	#, epilogue_line_note
	.loc 1 7644 0
	call	get_last_insn	#
	movq	%rax, -152(%rbp)	# tmp150, seq
	jmp	.L1480	#
.L1483:
	.loc 1 7647 0
	movq	-152(%rbp), %rax	# seq, tmp151
	movzwl	(%rax), %eax	# seq_8->code, D.22393
	cmpw	$37, %ax	#, D.22393
	jne	.L1481	#,
	.loc 1 7647 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# seq, tmp152
	movl	40(%rax), %eax	# seq_8->fld[4].rtint, D.22395
	testl	%eax, %eax	# D.22395
	jle	.L1481	#,
	.loc 1 7649 0 is_stmt 1
	movq	-152(%rbp), %rax	# seq, tmp153
	movq	%rax, -128(%rbp)	# tmp153, epilogue_line_note
	.loc 1 7650 0
	jmp	.L1482	#
.L1481:
	.loc 1 7646 0
	movq	-152(%rbp), %rax	# seq, tmp154
	movq	16(%rax), %rax	# seq_8->fld[1].rtx, tmp155
	movq	%rax, -152(%rbp)	# tmp155, seq
.L1480:
	.loc 1 7644 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, seq
	je	.L1482	#,
	.loc 1 7645 0
	movq	-152(%rbp), %rax	# seq, tmp156
	movq	%rax, %rdi	# tmp156,
	call	active_insn_p	#
	testl	%eax, %eax	# D.22395
	je	.L1483	#,
.L1482:
	.loc 1 7653 0
	movq	-88(%rbp), %rax	# last, tmp157
	movq	32(%rax), %rax	# last_43->pred, tmp158
	movq	%rax, -160(%rbp)	# tmp158, e
	jmp	.L1484	#
.L1497:
.LBB126:
	.loc 1 7655 0
	movq	-160(%rbp), %rax	# e, tmp159
	movq	16(%rax), %rax	# e_4->src, tmp160
	movq	%rax, -80(%rbp)	# tmp160, bb
	.loc 1 7658 0
	movq	-160(%rbp), %rax	# e, tmp161
	movq	(%rax), %rax	# e_4->pred_next, tmp162
	movq	%rax, -72(%rbp)	# tmp162, e_next
	.loc 1 7659 0
	cmpq	$entry_exit_blocks, -80(%rbp)	#, bb
	jne	.L1485	#,
	.loc 1 7660 0
	jmp	.L1486	#
.L1485:
	.loc 1 7662 0
	movq	-80(%rbp), %rax	# bb, tmp163
	movq	8(%rax), %rax	# bb_58->end, tmp164
	movq	%rax, -64(%rbp)	# tmp164, jump
	.loc 1 7663 0
	movq	-64(%rbp), %rax	# jump, tmp165
	movzwl	(%rax), %eax	# jump_60->code, D.22393
	cmpw	$33, %ax	#, D.22393
	jne	.L1487	#,
	.loc 1 7663 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# jump, tmp166
	movq	64(%rax), %rax	# jump_60->fld[7].rtx, D.22396
	cmpq	-136(%rbp), %rax	# label, D.22396
	je	.L1488	#,
.L1487:
	.loc 1 7664 0 is_stmt 1
	jmp	.L1486	#
.L1488:
	.loc 1 7668 0
	movq	-64(%rbp), %rax	# jump, tmp167
	movq	%rax, %rdi	# tmp167,
	call	simplejump_p	#
	testl	%eax, %eax	# D.22395
	je	.L1489	#,
	.loc 1 7670 0
	movq	-128(%rbp), %rdx	# epilogue_line_note, tmp168
	movq	-80(%rbp), %rax	# bb, tmp169
	movq	%rdx, %rsi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	emit_return_into_block	#
	.loc 1 7671 0
	movq	-64(%rbp), %rax	# jump, tmp170
	movq	%rax, %rdi	# tmp170,
	call	delete_insn	#
	jmp	.L1490	#
.L1489:
	.loc 1 7676 0
	movq	-64(%rbp), %rax	# jump, tmp171
	movq	%rax, %rdi	# tmp171,
	call	condjump_p	#
	testl	%eax, %eax	# D.22395
	je	.L1491	#,
.LBB127:
	.loc 1 7680 0
	movq	-64(%rbp), %rax	# jump, tmp172
	movq	32(%rax), %rax	# jump_60->fld[3].rtx, D.22396
	movq	16(%rax), %rax	# _65->fld[1].rtx, tmp173
	movq	%rax, -56(%rbp)	# tmp173, ret
	.loc 1 7681 0
	movq	-56(%rbp), %rax	# ret, tmp174
	movq	16(%rax), %rax	# ret_66->fld[1].rtx, D.22396
	movzwl	(%rax), %eax	# _67->code, D.22393
	cmpw	$67, %ax	#, D.22393
	jne	.L1492	#,
	.loc 1 7682 0
	movq	-56(%rbp), %rax	# ret, tmp178
	addq	$16, %rax	#, tmp177
	movq	%rax, -120(%rbp)	# tmp177, loc
	jmp	.L1493	#
.L1492:
	.loc 1 7684 0
	movq	-56(%rbp), %rax	# ret, tmp182
	addq	$24, %rax	#, tmp181
	movq	%rax, -120(%rbp)	# tmp181, loc
.L1493:
	.loc 1 7685 0
	movl	$0, %esi	#,
	movl	$51, %edi	#,
	call	gen_rtx_fmt_	#
	movq	%rax, -56(%rbp)	# tmp183, ret
	.loc 1 7687 0
	movq	-56(%rbp), %rdx	# ret, tmp184
	movq	-120(%rbp), %rsi	# loc, tmp185
	movq	-64(%rbp), %rax	# jump, tmp186
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp186,
	call	validate_change	#
	testl	%eax, %eax	# D.22395
	jne	.L1494	#,
	.loc 1 7688 0
	jmp	.L1486	#
.L1494:
	.loc 1 7689 0
	movq	-64(%rbp), %rax	# jump, tmp187
	movq	64(%rax), %rax	# jump_60->fld[7].rtx, D.22396
	testq	%rax, %rax	# D.22396
	je	.L1495	#,
	.loc 1 7690 0
	movq	-64(%rbp), %rax	# jump, tmp188
	movq	64(%rax), %rax	# jump_60->fld[7].rtx, D.22396
	movl	32(%rax), %edx	# _74->fld[3].rtint, D.22395
	subl	$1, %edx	#, D.22395
	movl	%edx, 32(%rax)	# D.22395, _74->fld[3].rtint
.L1495:
	.loc 1 7695 0
	movq	-80(%rbp), %rax	# bb, tmp189
	movq	40(%rax), %rax	# bb_58->succ, D.22394
	movq	8(%rax), %rax	# _77->succ_next, D.22394
	testq	%rax, %rax	# D.22394
	jne	.L1496	#,
	.loc 1 7696 0
	jmp	.L1486	#
.L1496:
.LBE127:
	jmp	.L1490	#
.L1491:
	.loc 1 7699 0
	jmp	.L1486	#
.L1490:
	.loc 1 7702 0
	movq	-160(%rbp), %rax	# e, tmp190
	movl	$entry_exit_blocks+112, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	redirect_edge_succ	#
.L1486:
.LBE126:
	.loc 1 7653 0
	movq	-72(%rbp), %rax	# e_next, tmp191
	movq	%rax, -160(%rbp)	# tmp191, e
.L1484:
	.loc 1 7653 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1497	#,
	.loc 1 7708 0 is_stmt 1
	movq	-88(%rbp), %rax	# last, tmp192
	movq	8(%rax), %rax	# last_43->end, D.22396
	movq	%rax, %rdi	# D.22396,
	call	emit_barrier_after	#
	.loc 1 7709 0
	movq	-128(%rbp), %rdx	# epilogue_line_note, tmp193
	movq	-88(%rbp), %rax	# last, tmp194
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# tmp194,
	call	emit_return_into_block	#
	.loc 1 7710 0
	movq	-88(%rbp), %rax	# last, tmp195
	movq	8(%rax), %rax	# last_43->end, tmp196
	movq	%rax, -144(%rbp)	# tmp196, epilogue_end
	.loc 1 7711 0
	movq	-88(%rbp), %rax	# last, tmp197
	movq	40(%rax), %rax	# last_43->succ, D.22394
	movq	-88(%rbp), %rdx	# last, tmp198
	movq	40(%rdx), %rdx	# last_43->succ, D.22394
	movl	48(%rdx), %edx	# _83->flags, D.22395
	andl	$-2, %edx	#, D.22395
	movl	%edx, 48(%rax)	# D.22395, _82->flags
	.loc 1 7712 0
	jmp	.L1469	#
.L1470:
.LBE125:
.LBE124:
	.loc 1 7724 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp199
	movq	%rax, -160(%rbp)	# tmp199, e
	jmp	.L1498	#
.L1501:
	.loc 1 7725 0
	movq	-160(%rbp), %rax	# e, tmp200
	movl	48(%rax), %eax	# e_5->flags, D.22395
	andl	$1, %eax	#, D.22395
	testl	%eax, %eax	# D.22395
	je	.L1499	#,
	.loc 1 7726 0
	jmp	.L1500	#
.L1499:
	.loc 1 7724 0
	movq	-160(%rbp), %rax	# e, tmp201
	movq	(%rax), %rax	# e_5->pred_next, tmp202
	movq	%rax, -160(%rbp)	# tmp202, e
.L1498:
	.loc 1 7724 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1501	#,
.L1500:
	.loc 1 7727 0 is_stmt 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1502	#,
	.loc 1 7728 0
	jmp	.L1469	#
.L1502:
	.loc 1 7730 0
	call	start_sequence	#
	.loc 1 7731 0
	movl	$-89, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -144(%rbp)	# tmp203, epilogue_end
	.loc 1 7733 0
	call	gen_epilogue	#
	movq	%rax, -152(%rbp)	# tmp204, seq
	.loc 1 7738 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.717
	movq	8(%rax), %rax	# current_function_decl.717_92->common.type, D.22397
	movzbl	16(%rax), %eax	# _93->common.code, D.22398
	cmpb	$23, %al	#, D.22398
	jne	.L1503	#,
	.loc 1 7739 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.718
	movq	8(%rax), %rax	# current_function_decl.718_95->common.type, D.22397
	movzbl	62(%rax), %eax	# *_96, D.22398
	andl	$2, %eax	#, D.22398
	testb	%al, %al	# D.22398
	je	.L1503	#,
	.loc 1 7740 0
	movq	-152(%rbp), %rax	# seq, tmp205
	movq	%rax, %rdi	# tmp205,
	call	keep_stack_depressed	#
	movq	%rax, -152(%rbp)	# tmp206, seq
.L1503:
	.loc 1 7743 0
	movq	-152(%rbp), %rax	# seq, tmp207
	movq	%rax, %rdi	# tmp207,
	call	emit_jump_insn	#
	.loc 1 7746 0
	movq	-152(%rbp), %rax	# seq, tmp208
	movzwl	(%rax), %eax	# seq_9->code, D.22393
	cmpw	$24, %ax	#, D.22393
	je	.L1504	#,
	.loc 1 7747 0
	call	get_insns	#
	movq	%rax, -152(%rbp)	# tmp209, seq
.L1504:
	.loc 1 7748 0
	movq	-152(%rbp), %rax	# seq, tmp210
	movl	$epilogue, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	record_insns	#
	.loc 1 7750 0
	call	gen_sequence	#
	movq	%rax, -152(%rbp)	# tmp211, seq
	.loc 1 7751 0
	call	end_sequence	#
	.loc 1 7753 0
	movq	-160(%rbp), %rdx	# e, tmp212
	movq	-152(%rbp), %rax	# seq, tmp213
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	insert_insn_on_edge	#
	.loc 1 7754 0
	movl	$1, -164(%rbp)	#, inserted
.L1469:
	.loc 1 7759 0
	cmpl	$0, -164(%rbp)	#, inserted
	je	.L1505	#,
	.loc 1 7760 0
	call	commit_edge_insertions	#
.L1505:
	.loc 1 7764 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp214
	movq	%rax, -160(%rbp)	# tmp214, e
	jmp	.L1506	#
.L1512:
.LBB128:
	.loc 1 7766 0
	movq	-160(%rbp), %rax	# e, tmp215
	movq	16(%rax), %rax	# e_6->src, tmp216
	movq	%rax, -48(%rbp)	# tmp216, bb
	.loc 1 7767 0
	movq	-48(%rbp), %rax	# bb, tmp217
	movq	8(%rax), %rax	# bb_105->end, tmp218
	movq	%rax, -40(%rbp)	# tmp218, insn
	.loc 1 7771 0
	movq	-40(%rbp), %rax	# insn, tmp219
	movzwl	(%rax), %eax	# insn_106->code, D.22393
	cmpw	$34, %ax	#, D.22393
	jne	.L1507	#,
	.loc 1 7772 0
	movq	-40(%rbp), %rax	# insn, tmp220
	movzbl	3(%rax), %eax	# *insn_106, D.22398
	andl	$1, %eax	#, D.22398
	testb	%al, %al	# D.22398
	jne	.L1508	#,
.L1507:
	.loc 1 7773 0
	jmp	.L1509	#
.L1508:
	.loc 1 7775 0
	call	start_sequence	#
	.loc 1 7776 0
	call	gen_sibcall_epilogue	#
	movq	%rax, -152(%rbp)	# tmp221, seq
	.loc 1 7777 0
	call	end_sequence	#
	.loc 1 7779 0
	movq	-40(%rbp), %rax	# insn, tmp222
	movq	16(%rax), %rax	# insn_106->fld[1].rtx, tmp223
	movq	%rax, -32(%rbp)	# tmp223, i
	.loc 1 7780 0
	movq	-40(%rbp), %rdx	# insn, tmp224
	movq	-152(%rbp), %rax	# seq, tmp225
	movq	%rdx, %rsi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	emit_insn_before	#
	movq	%rax, -24(%rbp)	# tmp226, newinsn
	.loc 1 7784 0
	movq	-152(%rbp), %rax	# seq, tmp227
	movzwl	(%rax), %eax	# seq_110->code, D.22393
	cmpw	$24, %ax	#, D.22393
	jne	.L1510	#,
	.loc 1 7784 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# seq, iftmp.719
	jmp	.L1511	#
.L1510:
	.loc 1 7784 0 discriminator 2
	movq	-24(%rbp), %rax	# newinsn, iftmp.719
.L1511:
	.loc 1 7784 0 discriminator 3
	movl	$sibcall_epilogue, %esi	#,
	movq	%rax, %rdi	# iftmp.719,
	call	record_insns	#
.L1509:
.LBE128:
	.loc 1 7764 0 is_stmt 1
	movq	-160(%rbp), %rax	# e, tmp228
	movq	(%rax), %rax	# e_6->pred_next, tmp229
	movq	%rax, -160(%rbp)	# tmp229, e
.L1506:
	.loc 1 7764 0 is_stmt 0 discriminator 1
	cmpq	$0, -160(%rbp)	#, e
	jne	.L1512	#,
	.loc 1 7790 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, prologue_end
	je	.L1513	#,
.LBB129:
	.loc 1 7807 0
	movq	-96(%rbp), %rax	# prologue_end, tmp230
	movq	%rax, -112(%rbp)	# tmp230, insn
	jmp	.L1514	#
.L1518:
	.loc 1 7809 0
	movq	-112(%rbp), %rax	# insn, tmp231
	movq	16(%rax), %rax	# insn_15->fld[1].rtx, tmp232
	movq	%rax, -16(%rbp)	# tmp232, prev
	.loc 1 7810 0
	movq	-112(%rbp), %rax	# insn, tmp233
	movzwl	(%rax), %eax	# insn_15->code, D.22393
	cmpw	$37, %ax	#, D.22393
	jne	.L1515	#,
	.loc 1 7810 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp234
	movl	40(%rax), %eax	# insn_15->fld[4].rtint, D.22395
	testl	%eax, %eax	# D.22395
	jle	.L1515	#,
	.loc 1 7815 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, prev
	jne	.L1516	#,
	.loc 1 7816 0
	jmp	.L1517	#
.L1516:
	.loc 1 7817 0
	movq	-96(%rbp), %rdx	# prologue_end, tmp235
	movq	-112(%rbp), %rcx	# insn, tmp236
	movq	-112(%rbp), %rax	# insn, tmp237
	movq	%rcx, %rsi	# tmp236,
	movq	%rax, %rdi	# tmp237,
	call	reorder_insns	#
.L1515:
	.loc 1 7807 0
	movq	-16(%rbp), %rax	# prev, tmp238
	movq	%rax, -112(%rbp)	# tmp238, insn
.L1514:
	.loc 1 7807 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, insn
	jne	.L1518	#,
.L1517:
	.loc 1 7822 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.720
	movq	32(%rax), %rax	# basic_block_info.720_122->data.bb, D.22399
	movq	8(%rax), %rax	# _123->end, tmp239
	movq	%rax, -112(%rbp)	# tmp239, insn
	jmp	.L1519	#
.L1522:
	.loc 1 7825 0
	movq	-112(%rbp), %rax	# insn, tmp240
	movzwl	(%rax), %eax	# insn_16->code, D.22393
	cmpw	$37, %ax	#, D.22393
	jne	.L1520	#,
	.loc 1 7825 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp241
	movl	40(%rax), %eax	# insn_16->fld[4].rtint, D.22395
	testl	%eax, %eax	# D.22395
	jle	.L1520	#,
	.loc 1 7826 0 is_stmt 1
	jmp	.L1521	#
.L1520:
	.loc 1 7824 0
	movq	-112(%rbp), %rax	# insn, tmp242
	movq	16(%rax), %rax	# insn_16->fld[1].rtx, tmp243
	movq	%rax, -112(%rbp)	# tmp243, insn
.L1519:
	.loc 1 7822 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp244
	cmpq	-96(%rbp), %rax	# prologue_end, tmp244
	je	.L1521	#,
	.loc 1 7823 0
	cmpq	$0, -112(%rbp)	#, insn
	jne	.L1522	#,
.L1521:
	.loc 1 7830 0
	cmpq	$0, -112(%rbp)	#, insn
	jne	.L1513	#,
	.loc 1 7832 0
	movq	-96(%rbp), %rax	# prologue_end, tmp245
	movq	%rax, %rdi	# tmp245,
	call	next_active_insn	#
	movq	%rax, -112(%rbp)	# tmp246, insn
	jmp	.L1523	#
.L1525:
	.loc 1 7835 0
	movq	-112(%rbp), %rax	# insn, tmp247
	movzwl	(%rax), %eax	# insn_17->code, D.22393
	cmpw	$37, %ax	#, D.22393
	jne	.L1524	#,
	.loc 1 7835 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# insn, tmp248
	movl	40(%rax), %eax	# insn_17->fld[4].rtint, D.22395
	testl	%eax, %eax	# D.22395
	jle	.L1524	#,
	.loc 1 7837 0 is_stmt 1
	movq	-112(%rbp), %rax	# insn, tmp249
	movl	40(%rax), %ecx	# insn_17->fld[4].rtint, D.22395
	movq	-112(%rbp), %rax	# insn, tmp250
	movq	32(%rax), %rax	# insn_17->fld[3].rtstr, D.22400
	movq	-96(%rbp), %rdx	# prologue_end, tmp251
	movl	%ecx, %esi	# D.22395,
	movq	%rax, %rdi	# D.22400,
	call	emit_line_note_after	#
	.loc 1 7840 0
	jmp	.L1513	#
.L1524:
	.loc 1 7834 0
	movq	-112(%rbp), %rax	# insn, tmp252
	movq	16(%rax), %rax	# insn_17->fld[1].rtx, tmp253
	movq	%rax, -112(%rbp)	# tmp253, insn
.L1523:
	.loc 1 7832 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, insn
	jne	.L1525	#,
.L1513:
.LBE129:
	.loc 1 7846 0
	cmpq	$0, -144(%rbp)	#, epilogue_end
	je	.L1460	#,
.LBB130:
	.loc 1 7853 0
	movq	-144(%rbp), %rax	# epilogue_end, tmp254
	movq	%rax, -104(%rbp)	# tmp254, insn
	jmp	.L1527	#
.L1529:
	.loc 1 7855 0
	movq	-104(%rbp), %rax	# insn, tmp255
	movq	24(%rax), %rax	# insn_18->fld[2].rtx, tmp256
	movq	%rax, -8(%rbp)	# tmp256, next
	.loc 1 7856 0
	movq	-104(%rbp), %rax	# insn, tmp257
	movzwl	(%rax), %eax	# insn_18->code, D.22393
	cmpw	$37, %ax	#, D.22393
	jne	.L1528	#,
	.loc 1 7856 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# insn, tmp258
	movl	40(%rax), %eax	# insn_18->fld[4].rtint, D.22395
	testl	%eax, %eax	# D.22395
	jle	.L1528	#,
	.loc 1 7857 0 is_stmt 1
	movq	-144(%rbp), %rax	# epilogue_end, tmp259
	movq	16(%rax), %rdx	# epilogue_end_11->fld[1].rtx, D.22396
	movq	-104(%rbp), %rcx	# insn, tmp260
	movq	-104(%rbp), %rax	# insn, tmp261
	movq	%rcx, %rsi	# tmp260,
	movq	%rax, %rdi	# tmp261,
	call	reorder_insns	#
.L1528:
	.loc 1 7853 0
	movq	-8(%rbp), %rax	# next, tmp262
	movq	%rax, -104(%rbp)	# tmp262, insn
.L1527:
	.loc 1 7853 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, insn
	jne	.L1529	#,
.L1460:
.LBE130:
	.loc 1 7861 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	thread_prologue_and_epilogue_insns, .-thread_prologue_and_epilogue_insns
	.globl	reposition_prologue_and_epilogue_notes
	.type	reposition_prologue_and_epilogue_notes, @function
reposition_prologue_and_epilogue_notes:
.LFB114:
	.loc 1 7869 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# f, f
	.loc 1 7874 0
	movq	prologue(%rip), %rax	# prologue, prologue.721
	movq	(%rax), %rax	# prologue.721_24->num_elements, D.22401
	movl	%eax, -36(%rbp)	# D.22401, len
	cmpl	$0, -36(%rbp)	#, len
	jle	.L1531	#,
	.loc 1 7876 0
	movq	$0, -24(%rbp)	#, last
	movq	$0, -16(%rbp)	#, note
	.loc 1 7881 0
	movq	-56(%rbp), %rax	# f, tmp78
	movq	%rax, -32(%rbp)	# tmp78, insn
	jmp	.L1532	#
.L1537:
	.loc 1 7883 0
	movq	-32(%rbp), %rax	# insn, tmp79
	movzwl	(%rax), %eax	# insn_1->code, D.22402
	cmpw	$37, %ax	#, D.22402
	jne	.L1533	#,
	.loc 1 7885 0
	movq	-32(%rbp), %rax	# insn, tmp80
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.22403
	cmpl	$-90, %eax	#, D.22403
	jne	.L1535	#,
	.loc 1 7886 0
	movq	-32(%rbp), %rax	# insn, tmp81
	movq	%rax, -16(%rbp)	# tmp81, note
	jmp	.L1535	#
.L1533:
	.loc 1 7888 0
	movq	prologue(%rip), %rdx	# prologue, prologue.722
	movq	-32(%rbp), %rax	# insn, tmp82
	movq	%rdx, %rsi	# prologue.722,
	movq	%rax, %rdi	# tmp82,
	call	contains	#
	testl	%eax, %eax	# D.22403
	je	.L1535	#,
	.loc 1 7890 0
	movq	-32(%rbp), %rax	# insn, tmp83
	movq	%rax, -24(%rbp)	# tmp83, last
	.loc 1 7891 0
	subl	$1, -36(%rbp)	#, len
	cmpl	$0, -36(%rbp)	#, len
	jne	.L1535	#,
	.loc 1 7892 0
	jmp	.L1536	#
.L1535:
	.loc 1 7881 0
	movq	-32(%rbp), %rax	# insn, tmp84
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp85
	movq	%rax, -32(%rbp)	# tmp85, insn
.L1532:
	.loc 1 7881 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L1537	#,
.L1536:
	.loc 1 7896 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, last
	je	.L1531	#,
.LBB131:
	.loc 1 7902 0
	cmpq	$0, -16(%rbp)	#, note
	jne	.L1538	#,
	.loc 1 7904 0
	movq	-24(%rbp), %rax	# last, tmp86
	movq	%rax, -16(%rbp)	# tmp86, note
	jmp	.L1539	#
.L1540:
	.loc 1 7905 0
	movq	-16(%rbp), %rax	# note, tmp87
	movzwl	(%rax), %eax	# note_40->code, D.22402
	cmpw	$37, %ax	#, D.22402
	jne	.L1539	#,
	.loc 1 7906 0
	movq	-16(%rbp), %rax	# note, tmp88
	movl	40(%rax), %eax	# note_40->fld[4].rtint, D.22403
	cmpl	$-90, %eax	#, D.22403
	jne	.L1539	#,
	.loc 1 7907 0
	jmp	.L1538	#
.L1539:
	.loc 1 7904 0 discriminator 1
	movq	-16(%rbp), %rax	# note, tmp89
	movq	24(%rax), %rax	# note_13->fld[2].rtx, tmp90
	movq	%rax, -16(%rbp)	# tmp90, note
	cmpq	$0, -16(%rbp)	#, note
	jne	.L1540	#,
.L1538:
	.loc 1 7910 0
	movq	-16(%rbp), %rax	# note, tmp91
	movq	24(%rax), %rax	# note_14->fld[2].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, next
	.loc 1 7913 0
	movq	-24(%rbp), %rax	# last, tmp93
	movzwl	(%rax), %eax	# last_5->code, D.22402
	cmpw	$36, %ax	#, D.22402
	jne	.L1541	#,
	.loc 1 7914 0
	movq	-24(%rbp), %rax	# last, tmp94
	movq	24(%rax), %rax	# last_5->fld[2].rtx, tmp95
	movq	%rax, -24(%rbp)	# tmp95, last
.L1541:
	.loc 1 7915 0
	movq	-24(%rbp), %rdx	# last, tmp96
	movq	-16(%rbp), %rcx	# note, tmp97
	movq	-16(%rbp), %rax	# note, tmp98
	movq	%rcx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	reorder_insns	#
.L1531:
.LBE131:
	.loc 1 7919 0
	movq	epilogue(%rip), %rax	# epilogue, epilogue.723
	movq	(%rax), %rax	# epilogue.723_46->num_elements, D.22401
	movl	%eax, -36(%rbp)	# D.22401, len
	cmpl	$0, -36(%rbp)	#, len
	jle	.L1530	#,
	.loc 1 7921 0
	movq	$0, -24(%rbp)	#, last
	movq	$0, -16(%rbp)	#, note
	.loc 1 7926 0
	call	get_last_insn	#
	movq	%rax, -32(%rbp)	# tmp99, insn
	jmp	.L1543	#
.L1548:
	.loc 1 7928 0
	movq	-32(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_2->code, D.22402
	cmpw	$37, %ax	#, D.22402
	jne	.L1544	#,
	.loc 1 7930 0
	movq	-32(%rbp), %rax	# insn, tmp101
	movl	40(%rax), %eax	# insn_2->fld[4].rtint, D.22403
	cmpl	$-89, %eax	#, D.22403
	jne	.L1546	#,
	.loc 1 7931 0
	movq	-32(%rbp), %rax	# insn, tmp102
	movq	%rax, -16(%rbp)	# tmp102, note
	jmp	.L1546	#
.L1544:
	.loc 1 7933 0
	movq	epilogue(%rip), %rdx	# epilogue, epilogue.724
	movq	-32(%rbp), %rax	# insn, tmp103
	movq	%rdx, %rsi	# epilogue.724,
	movq	%rax, %rdi	# tmp103,
	call	contains	#
	testl	%eax, %eax	# D.22403
	je	.L1546	#,
	.loc 1 7935 0
	movq	-32(%rbp), %rax	# insn, tmp104
	movq	%rax, -24(%rbp)	# tmp104, last
	.loc 1 7936 0
	subl	$1, -36(%rbp)	#, len
	cmpl	$0, -36(%rbp)	#, len
	jne	.L1546	#,
	.loc 1 7937 0
	jmp	.L1547	#
.L1546:
	.loc 1 7926 0
	movq	-32(%rbp), %rax	# insn, tmp105
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp106
	movq	%rax, -32(%rbp)	# tmp106, insn
.L1543:
	.loc 1 7926 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, insn
	jne	.L1548	#,
.L1547:
	.loc 1 7941 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, last
	je	.L1530	#,
	.loc 1 7945 0
	cmpq	$0, -16(%rbp)	#, note
	jne	.L1549	#,
	.loc 1 7947 0
	movq	-32(%rbp), %rax	# insn, tmp107
	movq	%rax, -16(%rbp)	# tmp107, note
	jmp	.L1550	#
.L1551:
	.loc 1 7948 0
	movq	-16(%rbp), %rax	# note, tmp108
	movzwl	(%rax), %eax	# note_61->code, D.22402
	cmpw	$37, %ax	#, D.22402
	jne	.L1550	#,
	.loc 1 7949 0
	movq	-16(%rbp), %rax	# note, tmp109
	movl	40(%rax), %eax	# note_61->fld[4].rtint, D.22403
	cmpl	$-89, %eax	#, D.22403
	jne	.L1550	#,
	.loc 1 7950 0
	jmp	.L1549	#
.L1550:
	.loc 1 7947 0 discriminator 1
	movq	-16(%rbp), %rax	# note, tmp110
	movq	16(%rax), %rax	# note_18->fld[1].rtx, tmp111
	movq	%rax, -16(%rbp)	# tmp111, note
	cmpq	$0, -16(%rbp)	#, note
	jne	.L1551	#,
.L1549:
	.loc 1 7953 0
	movq	-24(%rbp), %rax	# last, tmp112
	movq	16(%rax), %rax	# last_9->fld[1].rtx, D.22404
	cmpq	-16(%rbp), %rax	# note, D.22404
	je	.L1530	#,
	.loc 1 7954 0
	movq	-24(%rbp), %rax	# last, tmp113
	movq	16(%rax), %rdx	# last_9->fld[1].rtx, D.22404
	movq	-16(%rbp), %rcx	# note, tmp114
	movq	-16(%rbp), %rax	# note, tmp115
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	reorder_insns	#
.L1530:
	.loc 1 7958 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	reposition_prologue_and_epilogue_notes, .-reposition_prologue_and_epilogue_notes
	.type	mark_function_status, @function
mark_function_status:
.LFB115:
	.loc 1 7965 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
	movq	%rdi, -280(%rbp)	# p, p
	.loc 1 7971 0
	cmpq	$0, -280(%rbp)	#, p
	jne	.L1553	#,
	.loc 1 7972 0
	jmp	.L1552	#
.L1553:
.LBB132:
	.loc 1 7974 0
	movq	-280(%rbp), %rax	# p, tmp166
	movq	80(%rax), %rax	# p_5(D)->arg_offset_rtx, tmp167
	movq	%rax, -232(%rbp)	# tmp167, r__
	cmpq	$0, -232(%rbp)	#, r__
	je	.L1555	#,
	.loc 1 7974 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# r__, tmp168
	movq	%rax, %rdi	# tmp168,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1555	#,
	movq	-232(%rbp), %rax	# r__, tmp169
	movq	%rax, %rdi	# tmp169,
	call	ggc_mark_rtx_children	#
.L1555:
.LBE132:
	.loc 1 7976 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp170
	movq	312(%rax), %rax	# p_5(D)->x_parm_reg_stack_loc, D.22406
	testq	%rax, %rax	# D.22406
	je	.L1556	#,
	.loc 1 7977 0
	movq	-280(%rbp), %rax	# p, tmp171
	movl	304(%rax), %eax	# p_5(D)->x_max_parm_reg, D.22407
	movl	%eax, -260(%rbp)	# D.22407, i
	movq	-280(%rbp), %rax	# p, tmp172
	movq	312(%rax), %rax	# p_5(D)->x_parm_reg_stack_loc, tmp173
	movq	%rax, -240(%rbp)	# tmp173, r
	jmp	.L1557	#
.L1559:
.LBB133:
	.loc 1 7979 0
	movq	-240(%rbp), %rax	# r, tmp174
	movq	(%rax), %rax	# *r_4, tmp175
	movq	%rax, -224(%rbp)	# tmp175, r__
	cmpq	$0, -224(%rbp)	#, r__
	je	.L1558	#,
	.loc 1 7979 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# r__, tmp176
	movq	%rax, %rdi	# tmp176,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1558	#,
	movq	-224(%rbp), %rax	# r__, tmp177
	movq	%rax, %rdi	# tmp177,
	call	ggc_mark_rtx_children	#
.L1558:
.LBE133:
	.loc 1 7978 0 is_stmt 1
	subl	$1, -260(%rbp)	#, i
	addq	$8, -240(%rbp)	#, r
.L1557:
	.loc 1 7977 0 discriminator 1
	cmpl	$0, -260(%rbp)	#, i
	jg	.L1559	#,
.L1556:
.LBB134:
	.loc 1 7981 0
	movq	-280(%rbp), %rax	# p, tmp178
	movq	120(%rax), %rax	# p_5(D)->return_rtx, tmp179
	movq	%rax, -216(%rbp)	# tmp179, r__
	cmpq	$0, -216(%rbp)	#, r__
	je	.L1560	#,
	.loc 1 7981 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# r__, tmp180
	movq	%rax, %rdi	# tmp180,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1560	#,
	movq	-216(%rbp), %rax	# r__, tmp181
	movq	%rax, %rdi	# tmp181,
	call	ggc_mark_rtx_children	#
.L1560:
.LBE134:
.LBB135:
	.loc 1 7982 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp182
	movq	192(%rax), %rax	# p_5(D)->x_cleanup_label, tmp183
	movq	%rax, -208(%rbp)	# tmp183, r__
	cmpq	$0, -208(%rbp)	#, r__
	je	.L1561	#,
	.loc 1 7982 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# r__, tmp184
	movq	%rax, %rdi	# tmp184,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1561	#,
	movq	-208(%rbp), %rax	# r__, tmp185
	movq	%rax, %rdi	# tmp185,
	call	ggc_mark_rtx_children	#
.L1561:
.LBE135:
.LBB136:
	.loc 1 7983 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp186
	movq	200(%rax), %rax	# p_5(D)->x_return_label, tmp187
	movq	%rax, -200(%rbp)	# tmp187, r__
	cmpq	$0, -200(%rbp)	#, r__
	je	.L1562	#,
	.loc 1 7983 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# r__, tmp188
	movq	%rax, %rdi	# tmp188,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1562	#,
	movq	-200(%rbp), %rax	# r__, tmp189
	movq	%rax, %rdi	# tmp189,
	call	ggc_mark_rtx_children	#
.L1562:
.LBE136:
.LBB137:
	.loc 1 7984 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp190
	movq	208(%rax), %rax	# p_5(D)->x_save_expr_regs, tmp191
	movq	%rax, -192(%rbp)	# tmp191, r__
	cmpq	$0, -192(%rbp)	#, r__
	je	.L1563	#,
	.loc 1 7984 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# r__, tmp192
	movq	%rax, %rdi	# tmp192,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1563	#,
	movq	-192(%rbp), %rax	# r__, tmp193
	movq	%rax, %rdi	# tmp193,
	call	ggc_mark_rtx_children	#
.L1563:
.LBE137:
.LBB138:
	.loc 1 7985 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp194
	movq	216(%rax), %rax	# p_5(D)->x_stack_slot_list, tmp195
	movq	%rax, -184(%rbp)	# tmp195, r__
	cmpq	$0, -184(%rbp)	#, r__
	je	.L1564	#,
	.loc 1 7985 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# r__, tmp196
	movq	%rax, %rdi	# tmp196,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1564	#,
	movq	-184(%rbp), %rax	# r__, tmp197
	movq	%rax, %rdi	# tmp197,
	call	ggc_mark_rtx_children	#
.L1564:
.LBE138:
.LBB139:
	.loc 1 7986 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp198
	movq	288(%rax), %rax	# p_5(D)->x_parm_birth_insn, tmp199
	movq	%rax, -176(%rbp)	# tmp199, r__
	cmpq	$0, -176(%rbp)	#, r__
	je	.L1565	#,
	.loc 1 7986 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# r__, tmp200
	movq	%rax, %rdi	# tmp200,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1565	#,
	movq	-176(%rbp), %rax	# r__, tmp201
	movq	%rax, %rdi	# tmp201,
	call	ggc_mark_rtx_children	#
.L1565:
.LBE139:
.LBB140:
	.loc 1 7987 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp202
	movq	232(%rax), %rax	# p_5(D)->x_tail_recursion_label, tmp203
	movq	%rax, -168(%rbp)	# tmp203, r__
	cmpq	$0, -168(%rbp)	#, r__
	je	.L1566	#,
	.loc 1 7987 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# r__, tmp204
	movq	%rax, %rdi	# tmp204,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1566	#,
	movq	-168(%rbp), %rax	# r__, tmp205
	movq	%rax, %rdi	# tmp205,
	call	ggc_mark_rtx_children	#
.L1566:
.LBE140:
.LBB141:
	.loc 1 7988 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp206
	movq	240(%rax), %rax	# p_5(D)->x_tail_recursion_reentry, tmp207
	movq	%rax, -160(%rbp)	# tmp207, r__
	cmpq	$0, -160(%rbp)	#, r__
	je	.L1567	#,
	.loc 1 7988 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# r__, tmp208
	movq	%rax, %rdi	# tmp208,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1567	#,
	movq	-160(%rbp), %rax	# r__, tmp209
	movq	%rax, %rdi	# tmp209,
	call	ggc_mark_rtx_children	#
.L1567:
.LBE141:
.LBB142:
	.loc 1 7989 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp210
	movq	128(%rax), %rax	# p_5(D)->internal_arg_pointer, tmp211
	movq	%rax, -152(%rbp)	# tmp211, r__
	cmpq	$0, -152(%rbp)	#, r__
	je	.L1568	#,
	.loc 1 7989 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# r__, tmp212
	movq	%rax, %rdi	# tmp212,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1568	#,
	movq	-152(%rbp), %rax	# r__, tmp213
	movq	%rax, %rdi	# tmp213,
	call	ggc_mark_rtx_children	#
.L1568:
.LBE142:
.LBB143:
	.loc 1 7990 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp214
	movq	248(%rax), %rax	# p_5(D)->x_arg_pointer_save_area, tmp215
	movq	%rax, -144(%rbp)	# tmp215, r__
	cmpq	$0, -144(%rbp)	#, r__
	je	.L1569	#,
	.loc 1 7990 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# r__, tmp216
	movq	%rax, %rdi	# tmp216,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1569	#,
	movq	-144(%rbp), %rax	# r__, tmp217
	movq	%rax, %rdi	# tmp217,
	call	ggc_mark_rtx_children	#
.L1569:
.LBE143:
.LBB144:
	.loc 1 7991 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp218
	movq	224(%rax), %rax	# p_5(D)->x_rtl_expr_chain, tmp219
	movq	%rax, -136(%rbp)	# tmp219, t__
	cmpq	$0, -136(%rbp)	#, t__
	je	.L1570	#,
	.loc 1 7991 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# t__, tmp220
	movq	%rax, %rdi	# tmp220,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1570	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.725
	movq	8(%rax), %rdx	# ggc_pending_trees.725_38->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.726
	movq	(%rax), %rax	# ggc_pending_trees.726_40->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1571	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.727
	movq	(%rax), %rax	# ggc_pending_trees.727_42->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.728
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.728,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.729, ggc_pending_trees
.L1571:
	.loc 1 7991 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.730
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.731
	movq	8(%rax), %rdx	# ggc_pending_trees.731_48->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.731_48->elements_used
	addq	$4, %rdx	#, tmp221
	movq	-136(%rbp), %rax	# t__, tmp222
	movq	%rax, (%rcx,%rdx,8)	# tmp222, ggc_pending_trees.730_47->data.tree
.L1570:
.LBE144:
.LBB145:
	.loc 1 7992 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp223
	movq	296(%rax), %rax	# p_5(D)->x_last_parm_insn, tmp224
	movq	%rax, -128(%rbp)	# tmp224, r__
	cmpq	$0, -128(%rbp)	#, r__
	je	.L1572	#,
	.loc 1 7992 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# r__, tmp225
	movq	%rax, %rdi	# tmp225,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1572	#,
	movq	-128(%rbp), %rax	# r__, tmp226
	movq	%rax, %rdi	# tmp226,
	call	ggc_mark_rtx_children	#
.L1572:
.LBE145:
.LBB146:
	.loc 1 7993 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp227
	movq	272(%rax), %rax	# p_5(D)->x_context_display, tmp228
	movq	%rax, -120(%rbp)	# tmp228, t__
	cmpq	$0, -120(%rbp)	#, t__
	je	.L1573	#,
	.loc 1 7993 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# t__, tmp229
	movq	%rax, %rdi	# tmp229,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1573	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.732
	movq	8(%rax), %rdx	# ggc_pending_trees.732_56->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.733
	movq	(%rax), %rax	# ggc_pending_trees.733_58->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1574	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.734
	movq	(%rax), %rax	# ggc_pending_trees.734_60->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.735
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.735,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.736, ggc_pending_trees
.L1574:
	.loc 1 7993 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.737
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.738
	movq	8(%rax), %rdx	# ggc_pending_trees.738_66->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.738_66->elements_used
	addq	$4, %rdx	#, tmp230
	movq	-120(%rbp), %rax	# t__, tmp231
	movq	%rax, (%rcx,%rdx,8)	# tmp231, ggc_pending_trees.737_65->data.tree
.L1573:
.LBE146:
.LBB147:
	.loc 1 7994 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp232
	movq	280(%rax), %rax	# p_5(D)->x_trampoline_list, tmp233
	movq	%rax, -112(%rbp)	# tmp233, t__
	cmpq	$0, -112(%rbp)	#, t__
	je	.L1575	#,
	.loc 1 7994 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# t__, tmp234
	movq	%rax, %rdi	# tmp234,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1575	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.739
	movq	8(%rax), %rdx	# ggc_pending_trees.739_72->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.740
	movq	(%rax), %rax	# ggc_pending_trees.740_74->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1576	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.741
	movq	(%rax), %rax	# ggc_pending_trees.741_76->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.742
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.742,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.743, ggc_pending_trees
.L1576:
	.loc 1 7994 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.744
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.745
	movq	8(%rax), %rdx	# ggc_pending_trees.745_82->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.745_82->elements_used
	addq	$4, %rdx	#, tmp235
	movq	-112(%rbp), %rax	# t__, tmp236
	movq	%rax, (%rcx,%rdx,8)	# tmp236, ggc_pending_trees.744_81->data.tree
.L1575:
.LBE147:
.LBB148:
	.loc 1 7995 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp237
	movq	416(%rax), %rax	# p_5(D)->epilogue_delay_list, tmp238
	movq	%rax, -104(%rbp)	# tmp238, r__
	cmpq	$0, -104(%rbp)	#, r__
	je	.L1577	#,
	.loc 1 7995 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# r__, tmp239
	movq	%rax, %rdi	# tmp239,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1577	#,
	movq	-104(%rbp), %rax	# r__, tmp240
	movq	%rax, %rdi	# tmp240,
	call	ggc_mark_rtx_children	#
.L1577:
.LBE148:
.LBB149:
	.loc 1 7996 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp241
	movq	256(%rax), %rax	# p_5(D)->x_clobber_return_insn, tmp242
	movq	%rax, -96(%rbp)	# tmp242, r__
	cmpq	$0, -96(%rbp)	#, r__
	je	.L1578	#,
	.loc 1 7996 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# r__, tmp243
	movq	%rax, %rdi	# tmp243,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1578	#,
	movq	-96(%rbp), %rax	# r__, tmp244
	movq	%rax, %rdi	# tmp244,
	call	ggc_mark_rtx_children	#
.L1578:
.LBE149:
	.loc 1 7998 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp245
	movq	320(%rax), %rax	# p_5(D)->x_temp_slots, tmp246
	movq	%rax, -248(%rbp)	# tmp246, t
	jmp	.L1579	#
.L1587:
.LBB150:
	.loc 1 8000 0
	movq	-248(%rbp), %rax	# t, tmp247
	movq	%rax, -88(%rbp)	# tmp247, a__
	cmpq	$0, -88(%rbp)	#, a__
	je	.L1580	#,
	.loc 1 8000 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# a__, tmp248
	movq	%rax, %rdi	# tmp248,
	call	ggc_set_mark	#
.L1580:
.LBE150:
.LBB151:
	.loc 1 8001 0 is_stmt 1
	movq	-248(%rbp), %rax	# t, tmp249
	movq	8(%rax), %rax	# t_2->slot, tmp250
	movq	%rax, -80(%rbp)	# tmp250, r__
	cmpq	$0, -80(%rbp)	#, r__
	je	.L1581	#,
	.loc 1 8001 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# r__, tmp251
	movq	%rax, %rdi	# tmp251,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1581	#,
	movq	-80(%rbp), %rax	# r__, tmp252
	movq	%rax, %rdi	# tmp252,
	call	ggc_mark_rtx_children	#
.L1581:
.LBE151:
.LBB152:
	.loc 1 8002 0 is_stmt 1
	movq	-248(%rbp), %rax	# t, tmp253
	movq	16(%rax), %rax	# t_2->address, tmp254
	movq	%rax, -72(%rbp)	# tmp254, r__
	cmpq	$0, -72(%rbp)	#, r__
	je	.L1582	#,
	.loc 1 8002 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# r__, tmp255
	movq	%rax, %rdi	# tmp255,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1582	#,
	movq	-72(%rbp), %rax	# r__, tmp256
	movq	%rax, %rdi	# tmp256,
	call	ggc_mark_rtx_children	#
.L1582:
.LBE152:
.LBB153:
	.loc 1 8003 0 is_stmt 1
	movq	-248(%rbp), %rax	# t, tmp257
	movq	48(%rax), %rax	# t_2->rtl_expr, tmp258
	movq	%rax, -64(%rbp)	# tmp258, t__
	cmpq	$0, -64(%rbp)	#, t__
	je	.L1583	#,
	.loc 1 8003 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# t__, tmp259
	movq	%rax, %rdi	# tmp259,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1583	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.746
	movq	8(%rax), %rdx	# ggc_pending_trees.746_98->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.747
	movq	(%rax), %rax	# ggc_pending_trees.747_100->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1584	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.748
	movq	(%rax), %rax	# ggc_pending_trees.748_102->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.749
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.749,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.750, ggc_pending_trees
.L1584:
	.loc 1 8003 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.751
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.752
	movq	8(%rax), %rdx	# ggc_pending_trees.752_108->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.752_108->elements_used
	addq	$4, %rdx	#, tmp260
	movq	-64(%rbp), %rax	# t__, tmp261
	movq	%rax, (%rcx,%rdx,8)	# tmp261, ggc_pending_trees.751_107->data.tree
.L1583:
.LBE153:
.LBB154:
	.loc 1 8004 0 is_stmt 1
	movq	-248(%rbp), %rax	# t, tmp262
	movq	40(%rax), %rax	# t_2->type, tmp263
	movq	%rax, -56(%rbp)	# tmp263, t__
	cmpq	$0, -56(%rbp)	#, t__
	je	.L1585	#,
	.loc 1 8004 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# t__, tmp264
	movq	%rax, %rdi	# tmp264,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1585	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.753
	movq	8(%rax), %rdx	# ggc_pending_trees.753_114->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.754
	movq	(%rax), %rax	# ggc_pending_trees.754_116->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1586	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.755
	movq	(%rax), %rax	# ggc_pending_trees.755_118->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.756
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.756,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.757, ggc_pending_trees
.L1586:
	.loc 1 8004 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.759
	movq	8(%rax), %rdx	# ggc_pending_trees.759_124->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.759_124->elements_used
	addq	$4, %rdx	#, tmp265
	movq	-56(%rbp), %rax	# t__, tmp266
	movq	%rax, (%rcx,%rdx,8)	# tmp266, ggc_pending_trees.758_123->data.tree
.L1585:
.LBE154:
	.loc 1 7998 0 is_stmt 1
	movq	-248(%rbp), %rax	# t, tmp267
	movq	(%rax), %rax	# t_2->next, tmp268
	movq	%rax, -248(%rbp)	# tmp268, t
.L1579:
	.loc 1 7998 0 is_stmt 0 discriminator 1
	cmpq	$0, -248(%rbp)	#, t
	jne	.L1587	#,
	.loc 1 8007 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp269
	movq	344(%rax), %rax	# p_5(D)->fixup_var_refs_queue, tmp270
	movq	%rax, -256(%rbp)	# tmp270, q
	jmp	.L1588	#
.L1591:
.LBB155:
	.loc 1 8009 0
	movq	-256(%rbp), %rax	# q, tmp271
	movq	%rax, -48(%rbp)	# tmp271, a__
	cmpq	$0, -48(%rbp)	#, a__
	je	.L1589	#,
	.loc 1 8009 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# a__, tmp272
	movq	%rax, %rdi	# tmp272,
	call	ggc_set_mark	#
.L1589:
.LBE155:
.LBB156:
	.loc 1 8010 0 is_stmt 1
	movq	-256(%rbp), %rax	# q, tmp273
	movq	(%rax), %rax	# q_1->modified, tmp274
	movq	%rax, -40(%rbp)	# tmp274, r__
	cmpq	$0, -40(%rbp)	#, r__
	je	.L1590	#,
	.loc 1 8010 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# r__, tmp275
	movq	%rax, %rdi	# tmp275,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1590	#,
	movq	-40(%rbp), %rax	# r__, tmp276
	movq	%rax, %rdi	# tmp276,
	call	ggc_mark_rtx_children	#
.L1590:
.LBE156:
	.loc 1 8007 0 is_stmt 1
	movq	-256(%rbp), %rax	# q, tmp277
	movq	16(%rax), %rax	# q_1->next, tmp278
	movq	%rax, -256(%rbp)	# tmp278, q
.L1588:
	.loc 1 8007 0 is_stmt 0 discriminator 1
	cmpq	$0, -256(%rbp)	#, q
	jne	.L1591	#,
.LBB157:
	.loc 1 8013 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp279
	movq	168(%rax), %rax	# p_5(D)->x_nonlocal_goto_handler_slots, tmp280
	movq	%rax, -32(%rbp)	# tmp280, r__
	cmpq	$0, -32(%rbp)	#, r__
	je	.L1592	#,
	.loc 1 8013 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# r__, tmp281
	movq	%rax, %rdi	# tmp281,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1592	#,
	movq	-32(%rbp), %rax	# r__, tmp282
	movq	%rax, %rdi	# tmp282,
	call	ggc_mark_rtx_children	#
.L1592:
.LBE157:
.LBB158:
	.loc 1 8014 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp283
	movq	176(%rax), %rax	# p_5(D)->x_nonlocal_goto_handler_labels, tmp284
	movq	%rax, -24(%rbp)	# tmp284, r__
	cmpq	$0, -24(%rbp)	#, r__
	je	.L1593	#,
	.loc 1 8014 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r__, tmp285
	movq	%rax, %rdi	# tmp285,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1593	#,
	movq	-24(%rbp), %rax	# r__, tmp286
	movq	%rax, %rdi	# tmp286,
	call	ggc_mark_rtx_children	#
.L1593:
.LBE158:
.LBB159:
	.loc 1 8015 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp287
	movq	184(%rax), %rax	# p_5(D)->x_nonlocal_goto_stack_level, tmp288
	movq	%rax, -16(%rbp)	# tmp288, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L1594	#,
	.loc 1 8015 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp289
	movq	%rax, %rdi	# tmp289,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1594	#,
	movq	-16(%rbp), %rax	# r__, tmp290
	movq	%rax, %rdi	# tmp290,
	call	ggc_mark_rtx_children	#
.L1594:
.LBE159:
.LBB160:
	.loc 1 8016 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp291
	movq	160(%rax), %rax	# p_5(D)->x_nonlocal_labels, tmp292
	movq	%rax, -8(%rbp)	# tmp292, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L1595	#,
	.loc 1 8016 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp293
	movq	%rax, %rdi	# tmp293,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22405
	jne	.L1595	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.760
	movq	8(%rax), %rdx	# ggc_pending_trees.760_142->elements_used, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.761
	movq	(%rax), %rax	# ggc_pending_trees.761_144->num_elements, D.22408
	cmpq	%rax, %rdx	# D.22408, D.22408
	jb	.L1596	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.762
	movq	(%rax), %rax	# ggc_pending_trees.762_146->num_elements, D.22408
	leaq	(%rax,%rax), %rdx	#, D.22408
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.763
	movq	%rdx, %rsi	# D.22408,
	movq	%rax, %rdi	# ggc_pending_trees.763,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.764, ggc_pending_trees
.L1596:
	.loc 1 8016 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.765
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.766
	movq	8(%rax), %rdx	# ggc_pending_trees.766_152->elements_used, D.22408
	leaq	1(%rdx), %rsi	#, D.22408
	movq	%rsi, 8(%rax)	# D.22408, ggc_pending_trees.766_152->elements_used
	addq	$4, %rdx	#, tmp294
	movq	-8(%rbp), %rax	# t__, tmp295
	movq	%rax, (%rcx,%rdx,8)	# tmp295, ggc_pending_trees.765_151->data.tree
.L1595:
.LBE160:
	.loc 1 8018 0 is_stmt 1
	movq	-280(%rbp), %rax	# p, tmp296
	movq	%rax, %rdi	# tmp296,
	call	mark_hard_reg_initial_vals	#
.L1552:
	.loc 1 8019 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	mark_function_status, .-mark_function_status
	.type	maybe_mark_struct_function, @function
maybe_mark_struct_function:
.LFB116:
	.loc 1 8028 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg, arg
	.loc 1 8029 0
	movq	-24(%rbp), %rax	# arg, tmp59
	movq	(%rax), %rax	# MEM[(struct function * *)arg_1(D)], tmp60
	movq	%rax, -8(%rbp)	# tmp60, f
	.loc 1 8031 0
	cmpq	$0, -8(%rbp)	#, f
	jne	.L1598	#,
	.loc 1 8032 0
	jmp	.L1597	#
.L1598:
	.loc 1 8034 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	%rax, %rdi	# tmp61,
	call	ggc_mark_struct_function	#
.L1597:
	.loc 1 8035 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE116:
	.size	maybe_mark_struct_function, .-maybe_mark_struct_function
	.globl	ggc_mark_struct_function
	.type	ggc_mark_struct_function, @function
ggc_mark_struct_function:
.LFB117:
	.loc 1 8042 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# f, f
.LBB161:
	.loc 1 8043 0
	movq	-40(%rbp), %rax	# f, tmp101
	movq	%rax, -32(%rbp)	# tmp101, a__
	cmpq	$0, -32(%rbp)	#, a__
	je	.L1601	#,
	.loc 1 8043 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# a__, tmp102
	movq	%rax, %rdi	# tmp102,
	call	ggc_set_mark	#
.L1601:
.LBE161:
.LBB162:
	.loc 1 8044 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp103
	movq	48(%rax), %rax	# f_1(D)->decl, tmp104
	movq	%rax, -24(%rbp)	# tmp104, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L1602	#,
	.loc 1 8044 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp105
	movq	%rax, %rdi	# tmp105,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22409
	jne	.L1602	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.767
	movq	8(%rax), %rdx	# ggc_pending_trees.767_5->elements_used, D.22410
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.768
	movq	(%rax), %rax	# ggc_pending_trees.768_7->num_elements, D.22410
	cmpq	%rax, %rdx	# D.22410, D.22410
	jb	.L1603	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.769
	movq	(%rax), %rax	# ggc_pending_trees.769_9->num_elements, D.22410
	leaq	(%rax,%rax), %rdx	#, D.22410
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.770
	movq	%rdx, %rsi	# D.22410,
	movq	%rax, %rdi	# ggc_pending_trees.770,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.771, ggc_pending_trees
.L1603:
	.loc 1 8044 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.772
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.773
	movq	8(%rax), %rdx	# ggc_pending_trees.773_15->elements_used, D.22410
	leaq	1(%rdx), %rsi	#, D.22410
	movq	%rsi, 8(%rax)	# D.22410, ggc_pending_trees.773_15->elements_used
	addq	$4, %rdx	#, tmp106
	movq	-24(%rbp), %rax	# t__, tmp107
	movq	%rax, (%rcx,%rdx,8)	# tmp107, ggc_pending_trees.772_14->data.tree
.L1602:
.LBE162:
	.loc 1 8046 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp108
	movq	%rax, %rdi	# tmp108,
	call	mark_function_status	#
	.loc 1 8047 0
	movq	-40(%rbp), %rax	# f, tmp109
	movq	(%rax), %rax	# f_1(D)->eh, D.22411
	movq	%rax, %rdi	# D.22411,
	call	mark_eh_status	#
	.loc 1 8048 0
	movq	-40(%rbp), %rax	# f, tmp110
	movq	8(%rax), %rax	# f_1(D)->stmt, D.22412
	movq	%rax, %rdi	# D.22412,
	call	mark_stmt_status	#
	.loc 1 8049 0
	movq	-40(%rbp), %rax	# f, tmp111
	movq	16(%rax), %rax	# f_1(D)->expr, D.22413
	movq	%rax, %rdi	# D.22413,
	call	mark_expr_status	#
	.loc 1 8050 0
	movq	-40(%rbp), %rax	# f, tmp112
	movq	24(%rax), %rax	# f_1(D)->emit, D.22414
	movq	%rax, %rdi	# D.22414,
	call	mark_emit_status	#
	.loc 1 8051 0
	movq	-40(%rbp), %rax	# f, tmp113
	movq	32(%rax), %rax	# f_1(D)->varasm, D.22415
	movq	%rax, %rdi	# D.22415,
	call	mark_varasm_status	#
	.loc 1 8053 0
	movq	mark_machine_status(%rip), %rax	# mark_machine_status, mark_machine_status.774
	testq	%rax, %rax	# mark_machine_status.774
	je	.L1604	#,
	.loc 1 8054 0
	movq	mark_machine_status(%rip), %rax	# mark_machine_status, mark_machine_status.775
	movq	-40(%rbp), %rdx	# f, tmp114
	movq	%rdx, %rdi	# tmp114,
	call	*%rax	# mark_machine_status.775
.L1604:
	.loc 1 8055 0
	movq	mark_lang_status(%rip), %rax	# mark_lang_status, mark_lang_status.776
	testq	%rax, %rax	# mark_lang_status.776
	je	.L1605	#,
	.loc 1 8056 0
	movq	mark_lang_status(%rip), %rax	# mark_lang_status, mark_lang_status.777
	movq	-40(%rbp), %rdx	# f, tmp115
	movq	%rdx, %rdi	# tmp115,
	call	*%rax	# mark_lang_status.777
.L1605:
	.loc 1 8058 0
	movq	-40(%rbp), %rax	# f, tmp116
	movq	360(%rax), %rax	# f_1(D)->original_arg_vector, D.22416
	testq	%rax, %rax	# D.22416
	je	.L1606	#,
.LBB163:
	.loc 1 8059 0
	movq	-40(%rbp), %rax	# f, tmp117
	movq	360(%rax), %rax	# f_1(D)->original_arg_vector, tmp118
	movq	%rax, -16(%rbp)	# tmp118, v__
	cmpq	$0, -16(%rbp)	#, v__
	je	.L1606	#,
	.loc 1 8059 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# v__, tmp119
	movq	%rax, %rdi	# tmp119,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22409
	jne	.L1606	#,
	movq	-16(%rbp), %rax	# v__, tmp120
	movq	%rax, %rdi	# tmp120,
	call	ggc_mark_rtvec_children	#
.L1606:
.LBE163:
	.loc 1 8060 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp121
	movq	368(%rax), %rax	# f_1(D)->original_decl_initial, D.22417
	testq	%rax, %rax	# D.22417
	je	.L1607	#,
.LBB164:
	.loc 1 8061 0
	movq	-40(%rbp), %rax	# f, tmp122
	movq	368(%rax), %rax	# f_1(D)->original_decl_initial, tmp123
	movq	%rax, -8(%rbp)	# tmp123, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L1607	#,
	.loc 1 8061 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp124
	movq	%rax, %rdi	# tmp124,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.22409
	jne	.L1607	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.778
	movq	8(%rax), %rdx	# ggc_pending_trees.778_34->elements_used, D.22410
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.779
	movq	(%rax), %rax	# ggc_pending_trees.779_36->num_elements, D.22410
	cmpq	%rax, %rdx	# D.22410, D.22410
	jb	.L1608	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.780
	movq	(%rax), %rax	# ggc_pending_trees.780_38->num_elements, D.22410
	leaq	(%rax,%rax), %rdx	#, D.22410
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.781
	movq	%rdx, %rsi	# D.22410,
	movq	%rax, %rdi	# ggc_pending_trees.781,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.782, ggc_pending_trees
.L1608:
	.loc 1 8061 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.783
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.784
	movq	8(%rax), %rdx	# ggc_pending_trees.784_44->elements_used, D.22410
	leaq	1(%rdx), %rsi	#, D.22410
	movq	%rsi, 8(%rax)	# D.22410, ggc_pending_trees.784_44->elements_used
	addq	$4, %rdx	#, tmp125
	movq	-8(%rbp), %rax	# t__, tmp126
	movq	%rax, (%rcx,%rdx,8)	# tmp126, ggc_pending_trees.783_43->data.tree
.L1607:
.LBE164:
	.loc 1 8062 0 is_stmt 1
	movq	-40(%rbp), %rax	# f, tmp127
	movq	56(%rax), %rax	# f_1(D)->outer, D.22418
	testq	%rax, %rax	# D.22418
	je	.L1600	#,
	.loc 1 8063 0
	movq	-40(%rbp), %rax	# f, tmp128
	movq	56(%rax), %rax	# f_1(D)->outer, D.22418
	movq	%rax, %rdi	# D.22418,
	call	ggc_mark_struct_function	#
.L1600:
	.loc 1 8064 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE117:
	.size	ggc_mark_struct_function, .-ggc_mark_struct_function
	.section	.rodata
.LC9:
	.string	"prologue"
.LC10:
	.string	"epilogue"
.LC11:
	.string	"sibcall_epilogue"
	.text
	.globl	init_function_once
	.type	init_function_once, @function
init_function_once:
.LFB118:
	.loc 1 8070 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 8071 0
	movl	$maybe_mark_struct_function, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$cfun, %edi	#,
	call	ggc_add_root	#
	.loc 1 8072 0
	movl	$maybe_mark_struct_function, %ecx	#,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$outer_function_chain, %edi	#,
	call	ggc_add_root	#
	.loc 1 8075 0
	movl	$.LC9, %edx	#,
	movl	$4, %esi	#,
	movl	$0, %edi	#,
	call	varray_init	#
	movq	%rax, prologue(%rip)	# prologue.785, prologue
	.loc 1 8076 0
	movl	$.LC10, %edx	#,
	movl	$4, %esi	#,
	movl	$0, %edi	#,
	call	varray_init	#
	movq	%rax, epilogue(%rip)	# epilogue.786, epilogue
	.loc 1 8077 0
	movl	$.LC11, %edx	#,
	movl	$4, %esi	#,
	movl	$0, %edi	#,
	call	varray_init	#
	movq	%rax, sibcall_epilogue(%rip)	# sibcall_epilogue.787, sibcall_epilogue
	.loc 1 8078 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE118:
	.size	init_function_once, .-init_function_once
	.section	.rodata
	.align 16
	.type	__FUNCTION__.13808, @object
	.size	__FUNCTION__.13808, 19
__FUNCTION__.13808:
	.string	"find_function_data"
	.align 16
	.type	__FUNCTION__.13870, @object
	.size	__FUNCTION__.13870, 27
__FUNCTION__.13870:
	.string	"assign_stack_temp_for_type"
	.type	__FUNCTION__.14035, @object
	.size	__FUNCTION__.14035, 15
__FUNCTION__.14035:
	.string	"fixup_var_refs"
	.align 16
	.type	__FUNCTION__.14125, @object
	.size	__FUNCTION__.14125, 17
__FUNCTION__.14125:
	.string	"fixup_var_refs_1"
	.align 16
	.type	__FUNCTION__.14187, @object
	.size	__FUNCTION__.14187, 20
__FUNCTION__.14187:
	.string	"fixup_memory_subreg"
	.align 16
	.type	__FUNCTION__.14237, @object
	.size	__FUNCTION__.14237, 19
__FUNCTION__.14237:
	.string	"optimize_bit_field"
	.align 16
	.type	__FUNCTION__.14269, @object
	.size	__FUNCTION__.14269, 25
__FUNCTION__.14269:
	.string	"put_addressof_into_stack"
	.align 16
	.type	__FUNCTION__.14288, @object
	.size	__FUNCTION__.14288, 18
__FUNCTION__.14288:
	.string	"purge_addressof_1"
	.align 16
	.type	__FUNCTION__.14360, @object
	.size	__FUNCTION__.14360, 16
__FUNCTION__.14360:
	.string	"purge_addressof"
	.align 16
	.type	__FUNCTION__.14472, @object
	.size	__FUNCTION__.14472, 27
__FUNCTION__.14472:
	.string	"instantiate_virtual_regs_1"
	.align 16
	.type	__FUNCTION__.14564, @object
	.size	__FUNCTION__.14564, 20
__FUNCTION__.14564:
	.string	"get_first_block_beg"
	.align 16
	.type	__FUNCTION__.14725, @object
	.size	__FUNCTION__.14725, 20
__FUNCTION__.14725:
	.string	"lookup_static_chain"
	.align 16
	.type	__FUNCTION__.14735, @object
	.size	__FUNCTION__.14735, 17
__FUNCTION__.14735:
	.string	"fix_lexical_addr"
	.align 16
	.type	__FUNCTION__.14784, @object
	.size	__FUNCTION__.14784, 18
__FUNCTION__.14784:
	.string	"identify_blocks_1"
	.align 16
	.type	__FUNCTION__.14915, @object
	.size	__FUNCTION__.14915, 22
__FUNCTION__.14915:
	.string	"expand_function_start"
	.align 16
	.type	__FUNCTION__.14974, @object
	.size	__FUNCTION__.14974, 20
__FUNCTION__.14974:
	.string	"expand_function_end"
	.align 16
	.type	__FUNCTION__.15052, @object
	.size	__FUNCTION__.15052, 21
__FUNCTION__.15052:
	.string	"keep_stack_depressed"
	.align 16
	.type	__FUNCTION__.15068, @object
	.size	__FUNCTION__.15068, 20
__FUNCTION__.15068:
	.string	"handle_epilogue_set"
	.align 32
	.type	__FUNCTION__.15080, @object
	.size	__FUNCTION__.15080, 35
__FUNCTION__.15080:
	.string	"thread_prologue_and_epilogue_insns"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "i386.h"
	.file 6 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 7 "machmode.h"
	.file 8 "bitmap.h"
	.file 9 "basic-block.h"
	.file 10 "real.h"
	.file 11 "obstack.h"
	.file 12 "hashtable.h"
	.file 13 "function.h"
	.file 14 "expr.h"
	.file 15 "libfuncs.h"
	.file 16 "varray.h"
	.file 17 "regs.h"
	.file 18 "hard-reg-set.h"
	.file 19 "hash.h"
	.file 20 "flags.h"
	.file 21 "ggc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7ebb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1541
	.byte	0x1
	.long	.LASF1542
	.long	.LASF1543
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
	.long	0x30b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xc03
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
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xc13
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
	.long	.LASF289
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x147a
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x163a
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x169d
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x1756
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x16d2
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x1714
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x18d4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x218d
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1a63
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x18fb
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x1930
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x1973
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x19a8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xe
	.long	.LASF74
	.byte	0x4
	.byte	0x5
	.value	0x4b2
	.long	0x296
	.uleb128 0xf
	.long	.LASF28
	.sleb128 0
	.uleb128 0xf
	.long	.LASF29
	.sleb128 1
	.uleb128 0xf
	.long	.LASF30
	.sleb128 2
	.uleb128 0xf
	.long	.LASF31
	.sleb128 3
	.uleb128 0xf
	.long	.LASF32
	.sleb128 4
	.uleb128 0xf
	.long	.LASF33
	.sleb128 5
	.uleb128 0xf
	.long	.LASF34
	.sleb128 6
	.uleb128 0xf
	.long	.LASF35
	.sleb128 7
	.uleb128 0xf
	.long	.LASF36
	.sleb128 8
	.uleb128 0xf
	.long	.LASF37
	.sleb128 9
	.uleb128 0xf
	.long	.LASF38
	.sleb128 10
	.uleb128 0xf
	.long	.LASF39
	.sleb128 11
	.uleb128 0xf
	.long	.LASF40
	.sleb128 12
	.uleb128 0xf
	.long	.LASF41
	.sleb128 13
	.uleb128 0xf
	.long	.LASF42
	.sleb128 14
	.uleb128 0xf
	.long	.LASF43
	.sleb128 15
	.uleb128 0xf
	.long	.LASF44
	.sleb128 16
	.uleb128 0xf
	.long	.LASF45
	.sleb128 17
	.uleb128 0xf
	.long	.LASF46
	.sleb128 18
	.uleb128 0xf
	.long	.LASF47
	.sleb128 19
	.uleb128 0xf
	.long	.LASF48
	.sleb128 20
	.uleb128 0xf
	.long	.LASF49
	.sleb128 21
	.uleb128 0xf
	.long	.LASF50
	.sleb128 22
	.uleb128 0xf
	.long	.LASF51
	.sleb128 23
	.uleb128 0xf
	.long	.LASF52
	.sleb128 24
	.uleb128 0xf
	.long	.LASF53
	.sleb128 25
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1c
	.byte	0x5
	.value	0x683
	.long	0x2ff
	.uleb128 0x11
	.long	.LASF55
	.byte	0x5
	.value	0x684
	.long	0x1de
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x5
	.value	0x685
	.long	0x1de
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x5
	.value	0x686
	.long	0x1de
	.byte	0x8
	.uleb128 0x11
	.long	.LASF58
	.byte	0x5
	.value	0x687
	.long	0x1de
	.byte	0xc
	.uleb128 0x11
	.long	.LASF59
	.byte	0x5
	.value	0x688
	.long	0x1de
	.byte	0x10
	.uleb128 0x11
	.long	.LASF60
	.byte	0x5
	.value	0x689
	.long	0x1de
	.byte	0x14
	.uleb128 0x11
	.long	.LASF61
	.byte	0x5
	.value	0x68a
	.long	0x1de
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0x5
	.value	0x68b
	.long	0x296
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF63
	.uleb128 0x13
	.byte	0x8
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.byte	0xd4
	.long	0x326
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF66
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF67
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF68
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF69
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF70
	.uleb128 0x3
	.byte	0x8
	.long	0x34f
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF71
	.uleb128 0x14
	.long	0x34f
	.long	0x366
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x376
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x386
	.uleb128 0x15
	.long	0x1e5
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38c
	.uleb128 0x16
	.long	0x34f
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF72
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF73
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x3ab
	.uleb128 0x17
	.uleb128 0x18
	.long	.LASF75
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.long	0x521
	.uleb128 0xf
	.long	.LASF76
	.sleb128 0
	.uleb128 0xf
	.long	.LASF77
	.sleb128 1
	.uleb128 0xf
	.long	.LASF78
	.sleb128 2
	.uleb128 0xf
	.long	.LASF79
	.sleb128 3
	.uleb128 0xf
	.long	.LASF80
	.sleb128 4
	.uleb128 0xf
	.long	.LASF81
	.sleb128 5
	.uleb128 0xf
	.long	.LASF82
	.sleb128 6
	.uleb128 0xf
	.long	.LASF83
	.sleb128 7
	.uleb128 0xf
	.long	.LASF84
	.sleb128 8
	.uleb128 0xf
	.long	.LASF85
	.sleb128 9
	.uleb128 0xf
	.long	.LASF86
	.sleb128 10
	.uleb128 0xf
	.long	.LASF87
	.sleb128 11
	.uleb128 0xf
	.long	.LASF88
	.sleb128 12
	.uleb128 0xf
	.long	.LASF89
	.sleb128 13
	.uleb128 0xf
	.long	.LASF90
	.sleb128 14
	.uleb128 0xf
	.long	.LASF91
	.sleb128 15
	.uleb128 0xf
	.long	.LASF92
	.sleb128 16
	.uleb128 0xf
	.long	.LASF93
	.sleb128 17
	.uleb128 0xf
	.long	.LASF94
	.sleb128 18
	.uleb128 0xf
	.long	.LASF95
	.sleb128 19
	.uleb128 0xf
	.long	.LASF96
	.sleb128 20
	.uleb128 0xf
	.long	.LASF97
	.sleb128 21
	.uleb128 0xf
	.long	.LASF98
	.sleb128 22
	.uleb128 0xf
	.long	.LASF99
	.sleb128 23
	.uleb128 0xf
	.long	.LASF100
	.sleb128 24
	.uleb128 0xf
	.long	.LASF101
	.sleb128 25
	.uleb128 0xf
	.long	.LASF102
	.sleb128 26
	.uleb128 0xf
	.long	.LASF103
	.sleb128 27
	.uleb128 0xf
	.long	.LASF104
	.sleb128 28
	.uleb128 0xf
	.long	.LASF105
	.sleb128 29
	.uleb128 0xf
	.long	.LASF106
	.sleb128 30
	.uleb128 0xf
	.long	.LASF107
	.sleb128 31
	.uleb128 0xf
	.long	.LASF108
	.sleb128 32
	.uleb128 0xf
	.long	.LASF109
	.sleb128 33
	.uleb128 0xf
	.long	.LASF110
	.sleb128 34
	.uleb128 0xf
	.long	.LASF111
	.sleb128 35
	.uleb128 0xf
	.long	.LASF112
	.sleb128 36
	.uleb128 0xf
	.long	.LASF113
	.sleb128 37
	.uleb128 0xf
	.long	.LASF114
	.sleb128 38
	.uleb128 0xf
	.long	.LASF115
	.sleb128 39
	.uleb128 0xf
	.long	.LASF116
	.sleb128 40
	.uleb128 0xf
	.long	.LASF117
	.sleb128 41
	.uleb128 0xf
	.long	.LASF118
	.sleb128 42
	.uleb128 0xf
	.long	.LASF119
	.sleb128 43
	.uleb128 0xf
	.long	.LASF120
	.sleb128 44
	.uleb128 0xf
	.long	.LASF121
	.sleb128 45
	.uleb128 0xf
	.long	.LASF122
	.sleb128 46
	.uleb128 0xf
	.long	.LASF123
	.sleb128 47
	.uleb128 0xf
	.long	.LASF124
	.sleb128 48
	.uleb128 0xf
	.long	.LASF125
	.sleb128 49
	.uleb128 0xf
	.long	.LASF126
	.sleb128 50
	.uleb128 0xf
	.long	.LASF127
	.sleb128 51
	.uleb128 0xf
	.long	.LASF128
	.sleb128 52
	.uleb128 0xf
	.long	.LASF129
	.sleb128 53
	.uleb128 0xf
	.long	.LASF130
	.sleb128 54
	.uleb128 0xf
	.long	.LASF131
	.sleb128 55
	.uleb128 0xf
	.long	.LASF132
	.sleb128 56
	.uleb128 0xf
	.long	.LASF133
	.sleb128 57
	.uleb128 0xf
	.long	.LASF134
	.sleb128 58
	.uleb128 0xf
	.long	.LASF135
	.sleb128 59
	.byte	0
	.uleb128 0x18
	.long	.LASF136
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.long	0x56a
	.uleb128 0xf
	.long	.LASF137
	.sleb128 0
	.uleb128 0xf
	.long	.LASF138
	.sleb128 1
	.uleb128 0xf
	.long	.LASF139
	.sleb128 2
	.uleb128 0xf
	.long	.LASF140
	.sleb128 3
	.uleb128 0xf
	.long	.LASF141
	.sleb128 4
	.uleb128 0xf
	.long	.LASF142
	.sleb128 5
	.uleb128 0xf
	.long	.LASF143
	.sleb128 6
	.uleb128 0xf
	.long	.LASF144
	.sleb128 7
	.uleb128 0xf
	.long	.LASF145
	.sleb128 8
	.uleb128 0xf
	.long	.LASF146
	.sleb128 9
	.byte	0
	.uleb128 0x18
	.long	.LASF147
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x966
	.uleb128 0xf
	.long	.LASF148
	.sleb128 0
	.uleb128 0x19
	.string	"NIL"
	.sleb128 1
	.uleb128 0xf
	.long	.LASF149
	.sleb128 2
	.uleb128 0xf
	.long	.LASF150
	.sleb128 3
	.uleb128 0xf
	.long	.LASF151
	.sleb128 4
	.uleb128 0xf
	.long	.LASF152
	.sleb128 5
	.uleb128 0xf
	.long	.LASF153
	.sleb128 6
	.uleb128 0xf
	.long	.LASF154
	.sleb128 7
	.uleb128 0xf
	.long	.LASF155
	.sleb128 8
	.uleb128 0xf
	.long	.LASF156
	.sleb128 9
	.uleb128 0xf
	.long	.LASF157
	.sleb128 10
	.uleb128 0xf
	.long	.LASF158
	.sleb128 11
	.uleb128 0xf
	.long	.LASF159
	.sleb128 12
	.uleb128 0xf
	.long	.LASF160
	.sleb128 13
	.uleb128 0xf
	.long	.LASF161
	.sleb128 14
	.uleb128 0xf
	.long	.LASF162
	.sleb128 15
	.uleb128 0xf
	.long	.LASF163
	.sleb128 16
	.uleb128 0xf
	.long	.LASF164
	.sleb128 17
	.uleb128 0xf
	.long	.LASF165
	.sleb128 18
	.uleb128 0xf
	.long	.LASF166
	.sleb128 19
	.uleb128 0xf
	.long	.LASF167
	.sleb128 20
	.uleb128 0xf
	.long	.LASF168
	.sleb128 21
	.uleb128 0xf
	.long	.LASF169
	.sleb128 22
	.uleb128 0xf
	.long	.LASF170
	.sleb128 23
	.uleb128 0xf
	.long	.LASF171
	.sleb128 24
	.uleb128 0xf
	.long	.LASF172
	.sleb128 25
	.uleb128 0xf
	.long	.LASF173
	.sleb128 26
	.uleb128 0xf
	.long	.LASF174
	.sleb128 27
	.uleb128 0xf
	.long	.LASF175
	.sleb128 28
	.uleb128 0xf
	.long	.LASF176
	.sleb128 29
	.uleb128 0xf
	.long	.LASF177
	.sleb128 30
	.uleb128 0xf
	.long	.LASF178
	.sleb128 31
	.uleb128 0xf
	.long	.LASF179
	.sleb128 32
	.uleb128 0xf
	.long	.LASF180
	.sleb128 33
	.uleb128 0xf
	.long	.LASF181
	.sleb128 34
	.uleb128 0xf
	.long	.LASF182
	.sleb128 35
	.uleb128 0xf
	.long	.LASF183
	.sleb128 36
	.uleb128 0xf
	.long	.LASF184
	.sleb128 37
	.uleb128 0xf
	.long	.LASF185
	.sleb128 38
	.uleb128 0xf
	.long	.LASF186
	.sleb128 39
	.uleb128 0xf
	.long	.LASF187
	.sleb128 40
	.uleb128 0xf
	.long	.LASF188
	.sleb128 41
	.uleb128 0xf
	.long	.LASF189
	.sleb128 42
	.uleb128 0xf
	.long	.LASF190
	.sleb128 43
	.uleb128 0xf
	.long	.LASF191
	.sleb128 44
	.uleb128 0xf
	.long	.LASF192
	.sleb128 45
	.uleb128 0xf
	.long	.LASF193
	.sleb128 46
	.uleb128 0x19
	.string	"SET"
	.sleb128 47
	.uleb128 0x19
	.string	"USE"
	.sleb128 48
	.uleb128 0xf
	.long	.LASF194
	.sleb128 49
	.uleb128 0xf
	.long	.LASF195
	.sleb128 50
	.uleb128 0xf
	.long	.LASF196
	.sleb128 51
	.uleb128 0xf
	.long	.LASF197
	.sleb128 52
	.uleb128 0xf
	.long	.LASF198
	.sleb128 53
	.uleb128 0xf
	.long	.LASF199
	.sleb128 54
	.uleb128 0xf
	.long	.LASF200
	.sleb128 55
	.uleb128 0xf
	.long	.LASF201
	.sleb128 56
	.uleb128 0xf
	.long	.LASF202
	.sleb128 57
	.uleb128 0xf
	.long	.LASF203
	.sleb128 58
	.uleb128 0x19
	.string	"PC"
	.sleb128 59
	.uleb128 0xf
	.long	.LASF204
	.sleb128 60
	.uleb128 0x19
	.string	"REG"
	.sleb128 61
	.uleb128 0xf
	.long	.LASF205
	.sleb128 62
	.uleb128 0xf
	.long	.LASF206
	.sleb128 63
	.uleb128 0xf
	.long	.LASF207
	.sleb128 64
	.uleb128 0xf
	.long	.LASF208
	.sleb128 65
	.uleb128 0x19
	.string	"MEM"
	.sleb128 66
	.uleb128 0xf
	.long	.LASF209
	.sleb128 67
	.uleb128 0xf
	.long	.LASF210
	.sleb128 68
	.uleb128 0x19
	.string	"CC0"
	.sleb128 69
	.uleb128 0xf
	.long	.LASF211
	.sleb128 70
	.uleb128 0xf
	.long	.LASF212
	.sleb128 71
	.uleb128 0xf
	.long	.LASF213
	.sleb128 72
	.uleb128 0xf
	.long	.LASF214
	.sleb128 73
	.uleb128 0xf
	.long	.LASF215
	.sleb128 74
	.uleb128 0xf
	.long	.LASF216
	.sleb128 75
	.uleb128 0xf
	.long	.LASF217
	.sleb128 76
	.uleb128 0x19
	.string	"NEG"
	.sleb128 77
	.uleb128 0xf
	.long	.LASF218
	.sleb128 78
	.uleb128 0x19
	.string	"DIV"
	.sleb128 79
	.uleb128 0x19
	.string	"MOD"
	.sleb128 80
	.uleb128 0xf
	.long	.LASF219
	.sleb128 81
	.uleb128 0xf
	.long	.LASF220
	.sleb128 82
	.uleb128 0x19
	.string	"AND"
	.sleb128 83
	.uleb128 0x19
	.string	"IOR"
	.sleb128 84
	.uleb128 0x19
	.string	"XOR"
	.sleb128 85
	.uleb128 0x19
	.string	"NOT"
	.sleb128 86
	.uleb128 0xf
	.long	.LASF221
	.sleb128 87
	.uleb128 0xf
	.long	.LASF222
	.sleb128 88
	.uleb128 0xf
	.long	.LASF223
	.sleb128 89
	.uleb128 0xf
	.long	.LASF224
	.sleb128 90
	.uleb128 0xf
	.long	.LASF225
	.sleb128 91
	.uleb128 0xf
	.long	.LASF226
	.sleb128 92
	.uleb128 0xf
	.long	.LASF227
	.sleb128 93
	.uleb128 0xf
	.long	.LASF228
	.sleb128 94
	.uleb128 0xf
	.long	.LASF229
	.sleb128 95
	.uleb128 0xf
	.long	.LASF230
	.sleb128 96
	.uleb128 0xf
	.long	.LASF231
	.sleb128 97
	.uleb128 0xf
	.long	.LASF232
	.sleb128 98
	.uleb128 0xf
	.long	.LASF233
	.sleb128 99
	.uleb128 0xf
	.long	.LASF234
	.sleb128 100
	.uleb128 0xf
	.long	.LASF235
	.sleb128 101
	.uleb128 0x19
	.string	"NE"
	.sleb128 102
	.uleb128 0x19
	.string	"EQ"
	.sleb128 103
	.uleb128 0x19
	.string	"GE"
	.sleb128 104
	.uleb128 0x19
	.string	"GT"
	.sleb128 105
	.uleb128 0x19
	.string	"LE"
	.sleb128 106
	.uleb128 0x19
	.string	"LT"
	.sleb128 107
	.uleb128 0x19
	.string	"GEU"
	.sleb128 108
	.uleb128 0x19
	.string	"GTU"
	.sleb128 109
	.uleb128 0x19
	.string	"LEU"
	.sleb128 110
	.uleb128 0x19
	.string	"LTU"
	.sleb128 111
	.uleb128 0xf
	.long	.LASF236
	.sleb128 112
	.uleb128 0xf
	.long	.LASF237
	.sleb128 113
	.uleb128 0xf
	.long	.LASF238
	.sleb128 114
	.uleb128 0xf
	.long	.LASF239
	.sleb128 115
	.uleb128 0xf
	.long	.LASF240
	.sleb128 116
	.uleb128 0xf
	.long	.LASF241
	.sleb128 117
	.uleb128 0xf
	.long	.LASF242
	.sleb128 118
	.uleb128 0xf
	.long	.LASF243
	.sleb128 119
	.uleb128 0xf
	.long	.LASF244
	.sleb128 120
	.uleb128 0xf
	.long	.LASF245
	.sleb128 121
	.uleb128 0xf
	.long	.LASF246
	.sleb128 122
	.uleb128 0xf
	.long	.LASF247
	.sleb128 123
	.uleb128 0xf
	.long	.LASF248
	.sleb128 124
	.uleb128 0xf
	.long	.LASF249
	.sleb128 125
	.uleb128 0x19
	.string	"FIX"
	.sleb128 126
	.uleb128 0xf
	.long	.LASF250
	.sleb128 127
	.uleb128 0xf
	.long	.LASF251
	.sleb128 128
	.uleb128 0x19
	.string	"ABS"
	.sleb128 129
	.uleb128 0xf
	.long	.LASF252
	.sleb128 130
	.uleb128 0x19
	.string	"FFS"
	.sleb128 131
	.uleb128 0xf
	.long	.LASF253
	.sleb128 132
	.uleb128 0xf
	.long	.LASF254
	.sleb128 133
	.uleb128 0xf
	.long	.LASF255
	.sleb128 134
	.uleb128 0xf
	.long	.LASF256
	.sleb128 135
	.uleb128 0xf
	.long	.LASF257
	.sleb128 136
	.uleb128 0xf
	.long	.LASF258
	.sleb128 137
	.uleb128 0xf
	.long	.LASF259
	.sleb128 138
	.uleb128 0xf
	.long	.LASF260
	.sleb128 139
	.uleb128 0xf
	.long	.LASF261
	.sleb128 140
	.uleb128 0xf
	.long	.LASF262
	.sleb128 141
	.uleb128 0xf
	.long	.LASF263
	.sleb128 142
	.uleb128 0xf
	.long	.LASF264
	.sleb128 143
	.uleb128 0xf
	.long	.LASF265
	.sleb128 144
	.uleb128 0xf
	.long	.LASF266
	.sleb128 145
	.uleb128 0xf
	.long	.LASF267
	.sleb128 146
	.uleb128 0xf
	.long	.LASF268
	.sleb128 147
	.uleb128 0xf
	.long	.LASF269
	.sleb128 148
	.uleb128 0xf
	.long	.LASF270
	.sleb128 149
	.uleb128 0xf
	.long	.LASF271
	.sleb128 150
	.uleb128 0xf
	.long	.LASF272
	.sleb128 151
	.uleb128 0x19
	.string	"PHI"
	.sleb128 152
	.uleb128 0xf
	.long	.LASF273
	.sleb128 153
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x9e7
	.uleb128 0x5
	.long	.LASF274
	.byte	0x2
	.byte	0x47
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF275
	.byte	0x2
	.byte	0x49
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF276
	.byte	0x2
	.byte	0x4a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF277
	.byte	0x2
	.byte	0x4c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF278
	.byte	0x2
	.byte	0x4e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF279
	.byte	0x2
	.byte	0x50
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF280
	.byte	0x2
	.byte	0x53
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF281
	.byte	0x2
	.byte	0x55
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF282
	.byte	0x2
	.byte	0x56
	.long	0x966
	.uleb128 0x1a
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xa37
	.uleb128 0x8
	.long	.LASF283
	.byte	0x2
	.byte	0x5e
	.long	0x314
	.byte	0
	.uleb128 0x8
	.long	.LASF284
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF285
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF286
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF287
	.byte	0x2
	.byte	0x62
	.long	0x30b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF288
	.byte	0x2
	.byte	0x63
	.long	0x9f2
	.uleb128 0x1b
	.long	.LASF290
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xadd
	.uleb128 0x1c
	.long	.LASF291
	.byte	0x2
	.byte	0x69
	.long	0x314
	.uleb128 0x1c
	.long	.LASF292
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x1c
	.long	.LASF293
	.byte	0x2
	.byte	0x6b
	.long	0x30b
	.uleb128 0x1c
	.long	.LASF294
	.byte	0x2
	.byte	0x6c
	.long	0x386
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1c
	.long	.LASF295
	.byte	0x2
	.byte	0x6f
	.long	0x3ac
	.uleb128 0x1c
	.long	.LASF296
	.byte	0x2
	.byte	0x70
	.long	0x9e7
	.uleb128 0x1c
	.long	.LASF297
	.byte	0x2
	.byte	0x71
	.long	0xae2
	.uleb128 0x1c
	.long	.LASF298
	.byte	0x2
	.byte	0x72
	.long	0xb19
	.uleb128 0x1c
	.long	.LASF299
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1d
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xbec
	.uleb128 0x1c
	.long	.LASF300
	.byte	0x2
	.byte	0x75
	.long	0xbf2
	.byte	0
	.uleb128 0x1e
	.long	.LASF746
	.uleb128 0x3
	.byte	0x8
	.long	0xadd
	.uleb128 0x4
	.long	.LASF301
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0xb19
	.uleb128 0x8
	.long	.LASF302
	.byte	0x8
	.byte	0x35
	.long	0x3060
	.byte	0
	.uleb128 0x8
	.long	.LASF303
	.byte	0x8
	.byte	0x36
	.long	0x3060
	.byte	0x8
	.uleb128 0x8
	.long	.LASF304
	.byte	0x8
	.byte	0x37
	.long	0x30b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xae8
	.uleb128 0x4
	.long	.LASF305
	.byte	0x70
	.byte	0x9
	.byte	0xae
	.long	0xbec
	.uleb128 0x8
	.long	.LASF306
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF307
	.byte	0x9
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF308
	.byte	0x9
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF309
	.byte	0x9
	.byte	0xb7
	.long	0x3106
	.byte	0x20
	.uleb128 0x8
	.long	.LASF310
	.byte	0x9
	.byte	0xb7
	.long	0x3106
	.byte	0x28
	.uleb128 0x8
	.long	.LASF311
	.byte	0x9
	.byte	0xbc
	.long	0x3071
	.byte	0x30
	.uleb128 0x8
	.long	.LASF312
	.byte	0x9
	.byte	0xc0
	.long	0x3071
	.byte	0x38
	.uleb128 0x8
	.long	.LASF313
	.byte	0x9
	.byte	0xc6
	.long	0x3071
	.byte	0x40
	.uleb128 0x8
	.long	.LASF314
	.byte	0x9
	.byte	0xc8
	.long	0x3071
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0xcb
	.long	0x312
	.byte	0x50
	.uleb128 0x8
	.long	.LASF315
	.byte	0x9
	.byte	0xce
	.long	0x1de
	.byte	0x58
	.uleb128 0x8
	.long	.LASF316
	.byte	0x9
	.byte	0xd1
	.long	0x1de
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF317
	.byte	0x9
	.byte	0xd4
	.long	0x307c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF318
	.byte	0x9
	.byte	0xd7
	.long	0x1de
	.byte	0x68
	.uleb128 0x8
	.long	.LASF319
	.byte	0x9
	.byte	0xda
	.long	0x1de
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb1f
	.uleb128 0x3
	.byte	0x8
	.long	0xa37
	.uleb128 0x7
	.long	.LASF320
	.byte	0x2
	.byte	0x76
	.long	0xa42
	.uleb128 0x14
	.long	0xbf8
	.long	0xc13
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0xc23
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF321
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xce5
	.uleb128 0xf
	.long	.LASF322
	.sleb128 1
	.uleb128 0xf
	.long	.LASF323
	.sleb128 2
	.uleb128 0xf
	.long	.LASF324
	.sleb128 3
	.uleb128 0xf
	.long	.LASF325
	.sleb128 4
	.uleb128 0xf
	.long	.LASF326
	.sleb128 5
	.uleb128 0xf
	.long	.LASF327
	.sleb128 6
	.uleb128 0xf
	.long	.LASF328
	.sleb128 7
	.uleb128 0xf
	.long	.LASF329
	.sleb128 8
	.uleb128 0xf
	.long	.LASF330
	.sleb128 9
	.uleb128 0xf
	.long	.LASF331
	.sleb128 10
	.uleb128 0xf
	.long	.LASF332
	.sleb128 11
	.uleb128 0xf
	.long	.LASF333
	.sleb128 12
	.uleb128 0xf
	.long	.LASF334
	.sleb128 13
	.uleb128 0xf
	.long	.LASF335
	.sleb128 14
	.uleb128 0xf
	.long	.LASF336
	.sleb128 15
	.uleb128 0xf
	.long	.LASF337
	.sleb128 16
	.uleb128 0xf
	.long	.LASF338
	.sleb128 17
	.uleb128 0xf
	.long	.LASF339
	.sleb128 18
	.uleb128 0xf
	.long	.LASF340
	.sleb128 19
	.uleb128 0xf
	.long	.LASF341
	.sleb128 20
	.uleb128 0xf
	.long	.LASF342
	.sleb128 21
	.uleb128 0xf
	.long	.LASF343
	.sleb128 22
	.uleb128 0xf
	.long	.LASF344
	.sleb128 23
	.uleb128 0xf
	.long	.LASF345
	.sleb128 24
	.uleb128 0xf
	.long	.LASF346
	.sleb128 25
	.uleb128 0xf
	.long	.LASF347
	.sleb128 26
	.uleb128 0xf
	.long	.LASF348
	.sleb128 27
	.uleb128 0xf
	.long	.LASF349
	.sleb128 28
	.uleb128 0xf
	.long	.LASF350
	.sleb128 29
	.uleb128 0xf
	.long	.LASF351
	.sleb128 30
	.byte	0
	.uleb128 0xe
	.long	.LASF352
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xd94
	.uleb128 0xf
	.long	.LASF353
	.sleb128 -100
	.uleb128 0xf
	.long	.LASF354
	.sleb128 -99
	.uleb128 0xf
	.long	.LASF355
	.sleb128 -98
	.uleb128 0xf
	.long	.LASF356
	.sleb128 -97
	.uleb128 0xf
	.long	.LASF357
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF358
	.sleb128 -95
	.uleb128 0xf
	.long	.LASF359
	.sleb128 -94
	.uleb128 0xf
	.long	.LASF360
	.sleb128 -93
	.uleb128 0xf
	.long	.LASF361
	.sleb128 -92
	.uleb128 0xf
	.long	.LASF362
	.sleb128 -91
	.uleb128 0xf
	.long	.LASF363
	.sleb128 -90
	.uleb128 0xf
	.long	.LASF364
	.sleb128 -89
	.uleb128 0xf
	.long	.LASF365
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF366
	.sleb128 -87
	.uleb128 0xf
	.long	.LASF367
	.sleb128 -86
	.uleb128 0xf
	.long	.LASF368
	.sleb128 -85
	.uleb128 0xf
	.long	.LASF369
	.sleb128 -84
	.uleb128 0xf
	.long	.LASF370
	.sleb128 -83
	.uleb128 0xf
	.long	.LASF371
	.sleb128 -82
	.uleb128 0xf
	.long	.LASF372
	.sleb128 -81
	.uleb128 0xf
	.long	.LASF373
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF374
	.sleb128 -79
	.uleb128 0xf
	.long	.LASF375
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xe
	.long	.LASF376
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xdf0
	.uleb128 0xf
	.long	.LASF377
	.sleb128 0
	.uleb128 0xf
	.long	.LASF378
	.sleb128 1
	.uleb128 0xf
	.long	.LASF379
	.sleb128 2
	.uleb128 0xf
	.long	.LASF380
	.sleb128 3
	.uleb128 0xf
	.long	.LASF381
	.sleb128 4
	.uleb128 0xf
	.long	.LASF382
	.sleb128 5
	.uleb128 0xf
	.long	.LASF383
	.sleb128 6
	.uleb128 0xf
	.long	.LASF384
	.sleb128 7
	.uleb128 0xf
	.long	.LASF385
	.sleb128 8
	.uleb128 0xf
	.long	.LASF386
	.sleb128 9
	.uleb128 0xf
	.long	.LASF387
	.sleb128 10
	.uleb128 0xf
	.long	.LASF388
	.sleb128 11
	.byte	0
	.uleb128 0xe
	.long	.LASF389
	.byte	0x4
	.byte	0x2
	.value	0x7f5
	.long	0xe34
	.uleb128 0xf
	.long	.LASF390
	.sleb128 0
	.uleb128 0xf
	.long	.LASF391
	.sleb128 1
	.uleb128 0xf
	.long	.LASF392
	.sleb128 2
	.uleb128 0xf
	.long	.LASF393
	.sleb128 3
	.uleb128 0xf
	.long	.LASF394
	.sleb128 4
	.uleb128 0xf
	.long	.LASF395
	.sleb128 5
	.uleb128 0xf
	.long	.LASF396
	.sleb128 6
	.uleb128 0xf
	.long	.LASF397
	.sleb128 7
	.uleb128 0xf
	.long	.LASF398
	.sleb128 8
	.byte	0
	.uleb128 0x18
	.long	.LASF399
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x120d
	.uleb128 0xf
	.long	.LASF400
	.sleb128 0
	.uleb128 0xf
	.long	.LASF401
	.sleb128 1
	.uleb128 0xf
	.long	.LASF402
	.sleb128 2
	.uleb128 0xf
	.long	.LASF403
	.sleb128 3
	.uleb128 0xf
	.long	.LASF404
	.sleb128 4
	.uleb128 0xf
	.long	.LASF405
	.sleb128 5
	.uleb128 0xf
	.long	.LASF406
	.sleb128 6
	.uleb128 0xf
	.long	.LASF407
	.sleb128 7
	.uleb128 0xf
	.long	.LASF408
	.sleb128 8
	.uleb128 0xf
	.long	.LASF409
	.sleb128 9
	.uleb128 0xf
	.long	.LASF410
	.sleb128 10
	.uleb128 0xf
	.long	.LASF411
	.sleb128 11
	.uleb128 0xf
	.long	.LASF412
	.sleb128 12
	.uleb128 0xf
	.long	.LASF413
	.sleb128 13
	.uleb128 0xf
	.long	.LASF414
	.sleb128 14
	.uleb128 0xf
	.long	.LASF415
	.sleb128 15
	.uleb128 0xf
	.long	.LASF416
	.sleb128 16
	.uleb128 0xf
	.long	.LASF417
	.sleb128 17
	.uleb128 0xf
	.long	.LASF418
	.sleb128 18
	.uleb128 0xf
	.long	.LASF419
	.sleb128 19
	.uleb128 0xf
	.long	.LASF420
	.sleb128 20
	.uleb128 0xf
	.long	.LASF421
	.sleb128 21
	.uleb128 0xf
	.long	.LASF422
	.sleb128 22
	.uleb128 0xf
	.long	.LASF423
	.sleb128 23
	.uleb128 0xf
	.long	.LASF424
	.sleb128 24
	.uleb128 0xf
	.long	.LASF425
	.sleb128 25
	.uleb128 0xf
	.long	.LASF426
	.sleb128 26
	.uleb128 0xf
	.long	.LASF427
	.sleb128 27
	.uleb128 0xf
	.long	.LASF428
	.sleb128 28
	.uleb128 0xf
	.long	.LASF429
	.sleb128 29
	.uleb128 0xf
	.long	.LASF430
	.sleb128 30
	.uleb128 0xf
	.long	.LASF431
	.sleb128 31
	.uleb128 0xf
	.long	.LASF432
	.sleb128 32
	.uleb128 0xf
	.long	.LASF433
	.sleb128 33
	.uleb128 0xf
	.long	.LASF434
	.sleb128 34
	.uleb128 0xf
	.long	.LASF435
	.sleb128 35
	.uleb128 0xf
	.long	.LASF436
	.sleb128 36
	.uleb128 0xf
	.long	.LASF437
	.sleb128 37
	.uleb128 0xf
	.long	.LASF438
	.sleb128 38
	.uleb128 0xf
	.long	.LASF439
	.sleb128 39
	.uleb128 0xf
	.long	.LASF440
	.sleb128 40
	.uleb128 0xf
	.long	.LASF441
	.sleb128 41
	.uleb128 0xf
	.long	.LASF442
	.sleb128 42
	.uleb128 0xf
	.long	.LASF443
	.sleb128 43
	.uleb128 0xf
	.long	.LASF444
	.sleb128 44
	.uleb128 0xf
	.long	.LASF445
	.sleb128 45
	.uleb128 0xf
	.long	.LASF446
	.sleb128 46
	.uleb128 0xf
	.long	.LASF447
	.sleb128 47
	.uleb128 0xf
	.long	.LASF448
	.sleb128 48
	.uleb128 0xf
	.long	.LASF449
	.sleb128 49
	.uleb128 0xf
	.long	.LASF450
	.sleb128 50
	.uleb128 0xf
	.long	.LASF451
	.sleb128 51
	.uleb128 0xf
	.long	.LASF452
	.sleb128 52
	.uleb128 0xf
	.long	.LASF453
	.sleb128 53
	.uleb128 0xf
	.long	.LASF454
	.sleb128 54
	.uleb128 0xf
	.long	.LASF455
	.sleb128 55
	.uleb128 0xf
	.long	.LASF456
	.sleb128 56
	.uleb128 0xf
	.long	.LASF457
	.sleb128 57
	.uleb128 0xf
	.long	.LASF458
	.sleb128 58
	.uleb128 0xf
	.long	.LASF459
	.sleb128 59
	.uleb128 0xf
	.long	.LASF460
	.sleb128 60
	.uleb128 0xf
	.long	.LASF461
	.sleb128 61
	.uleb128 0xf
	.long	.LASF462
	.sleb128 62
	.uleb128 0xf
	.long	.LASF463
	.sleb128 63
	.uleb128 0xf
	.long	.LASF464
	.sleb128 64
	.uleb128 0xf
	.long	.LASF465
	.sleb128 65
	.uleb128 0xf
	.long	.LASF466
	.sleb128 66
	.uleb128 0xf
	.long	.LASF467
	.sleb128 67
	.uleb128 0xf
	.long	.LASF468
	.sleb128 68
	.uleb128 0xf
	.long	.LASF469
	.sleb128 69
	.uleb128 0xf
	.long	.LASF470
	.sleb128 70
	.uleb128 0xf
	.long	.LASF471
	.sleb128 71
	.uleb128 0xf
	.long	.LASF472
	.sleb128 72
	.uleb128 0xf
	.long	.LASF473
	.sleb128 73
	.uleb128 0xf
	.long	.LASF474
	.sleb128 74
	.uleb128 0xf
	.long	.LASF475
	.sleb128 75
	.uleb128 0xf
	.long	.LASF476
	.sleb128 76
	.uleb128 0xf
	.long	.LASF477
	.sleb128 77
	.uleb128 0xf
	.long	.LASF478
	.sleb128 78
	.uleb128 0xf
	.long	.LASF479
	.sleb128 79
	.uleb128 0xf
	.long	.LASF480
	.sleb128 80
	.uleb128 0xf
	.long	.LASF481
	.sleb128 81
	.uleb128 0xf
	.long	.LASF482
	.sleb128 82
	.uleb128 0xf
	.long	.LASF483
	.sleb128 83
	.uleb128 0xf
	.long	.LASF484
	.sleb128 84
	.uleb128 0xf
	.long	.LASF485
	.sleb128 85
	.uleb128 0xf
	.long	.LASF486
	.sleb128 86
	.uleb128 0xf
	.long	.LASF487
	.sleb128 87
	.uleb128 0xf
	.long	.LASF488
	.sleb128 88
	.uleb128 0xf
	.long	.LASF489
	.sleb128 89
	.uleb128 0xf
	.long	.LASF490
	.sleb128 90
	.uleb128 0xf
	.long	.LASF491
	.sleb128 91
	.uleb128 0xf
	.long	.LASF492
	.sleb128 92
	.uleb128 0xf
	.long	.LASF493
	.sleb128 93
	.uleb128 0xf
	.long	.LASF494
	.sleb128 94
	.uleb128 0xf
	.long	.LASF495
	.sleb128 95
	.uleb128 0xf
	.long	.LASF496
	.sleb128 96
	.uleb128 0xf
	.long	.LASF497
	.sleb128 97
	.uleb128 0xf
	.long	.LASF498
	.sleb128 98
	.uleb128 0xf
	.long	.LASF499
	.sleb128 99
	.uleb128 0xf
	.long	.LASF500
	.sleb128 100
	.uleb128 0xf
	.long	.LASF501
	.sleb128 101
	.uleb128 0xf
	.long	.LASF502
	.sleb128 102
	.uleb128 0xf
	.long	.LASF503
	.sleb128 103
	.uleb128 0xf
	.long	.LASF504
	.sleb128 104
	.uleb128 0xf
	.long	.LASF505
	.sleb128 105
	.uleb128 0xf
	.long	.LASF506
	.sleb128 106
	.uleb128 0xf
	.long	.LASF507
	.sleb128 107
	.uleb128 0xf
	.long	.LASF508
	.sleb128 108
	.uleb128 0xf
	.long	.LASF509
	.sleb128 109
	.uleb128 0xf
	.long	.LASF510
	.sleb128 110
	.uleb128 0xf
	.long	.LASF511
	.sleb128 111
	.uleb128 0xf
	.long	.LASF512
	.sleb128 112
	.uleb128 0xf
	.long	.LASF513
	.sleb128 113
	.uleb128 0xf
	.long	.LASF514
	.sleb128 114
	.uleb128 0xf
	.long	.LASF515
	.sleb128 115
	.uleb128 0xf
	.long	.LASF516
	.sleb128 116
	.uleb128 0xf
	.long	.LASF517
	.sleb128 117
	.uleb128 0xf
	.long	.LASF518
	.sleb128 118
	.uleb128 0xf
	.long	.LASF519
	.sleb128 119
	.uleb128 0xf
	.long	.LASF520
	.sleb128 120
	.uleb128 0xf
	.long	.LASF521
	.sleb128 121
	.uleb128 0xf
	.long	.LASF522
	.sleb128 122
	.uleb128 0xf
	.long	.LASF523
	.sleb128 123
	.uleb128 0xf
	.long	.LASF524
	.sleb128 124
	.uleb128 0xf
	.long	.LASF525
	.sleb128 125
	.uleb128 0xf
	.long	.LASF526
	.sleb128 126
	.uleb128 0xf
	.long	.LASF527
	.sleb128 127
	.uleb128 0xf
	.long	.LASF528
	.sleb128 128
	.uleb128 0xf
	.long	.LASF529
	.sleb128 129
	.uleb128 0xf
	.long	.LASF530
	.sleb128 130
	.uleb128 0xf
	.long	.LASF531
	.sleb128 131
	.uleb128 0xf
	.long	.LASF532
	.sleb128 132
	.uleb128 0xf
	.long	.LASF533
	.sleb128 133
	.uleb128 0xf
	.long	.LASF534
	.sleb128 134
	.uleb128 0xf
	.long	.LASF535
	.sleb128 135
	.uleb128 0xf
	.long	.LASF536
	.sleb128 136
	.uleb128 0xf
	.long	.LASF537
	.sleb128 137
	.uleb128 0xf
	.long	.LASF538
	.sleb128 138
	.uleb128 0xf
	.long	.LASF539
	.sleb128 139
	.uleb128 0xf
	.long	.LASF540
	.sleb128 140
	.uleb128 0xf
	.long	.LASF541
	.sleb128 141
	.uleb128 0xf
	.long	.LASF542
	.sleb128 142
	.uleb128 0xf
	.long	.LASF543
	.sleb128 143
	.uleb128 0xf
	.long	.LASF544
	.sleb128 144
	.uleb128 0xf
	.long	.LASF545
	.sleb128 145
	.uleb128 0xf
	.long	.LASF546
	.sleb128 146
	.uleb128 0xf
	.long	.LASF547
	.sleb128 147
	.byte	0
	.uleb128 0x18
	.long	.LASF548
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x147a
	.uleb128 0xf
	.long	.LASF549
	.sleb128 0
	.uleb128 0xf
	.long	.LASF550
	.sleb128 1
	.uleb128 0xf
	.long	.LASF551
	.sleb128 2
	.uleb128 0xf
	.long	.LASF552
	.sleb128 3
	.uleb128 0xf
	.long	.LASF553
	.sleb128 4
	.uleb128 0xf
	.long	.LASF554
	.sleb128 5
	.uleb128 0xf
	.long	.LASF555
	.sleb128 6
	.uleb128 0xf
	.long	.LASF556
	.sleb128 7
	.uleb128 0xf
	.long	.LASF557
	.sleb128 8
	.uleb128 0xf
	.long	.LASF558
	.sleb128 9
	.uleb128 0xf
	.long	.LASF559
	.sleb128 10
	.uleb128 0xf
	.long	.LASF560
	.sleb128 11
	.uleb128 0xf
	.long	.LASF561
	.sleb128 12
	.uleb128 0xf
	.long	.LASF562
	.sleb128 13
	.uleb128 0xf
	.long	.LASF563
	.sleb128 14
	.uleb128 0xf
	.long	.LASF564
	.sleb128 15
	.uleb128 0xf
	.long	.LASF565
	.sleb128 16
	.uleb128 0xf
	.long	.LASF566
	.sleb128 17
	.uleb128 0xf
	.long	.LASF567
	.sleb128 18
	.uleb128 0xf
	.long	.LASF568
	.sleb128 19
	.uleb128 0xf
	.long	.LASF569
	.sleb128 20
	.uleb128 0xf
	.long	.LASF570
	.sleb128 21
	.uleb128 0xf
	.long	.LASF571
	.sleb128 22
	.uleb128 0xf
	.long	.LASF572
	.sleb128 23
	.uleb128 0xf
	.long	.LASF573
	.sleb128 24
	.uleb128 0xf
	.long	.LASF574
	.sleb128 25
	.uleb128 0xf
	.long	.LASF575
	.sleb128 26
	.uleb128 0xf
	.long	.LASF576
	.sleb128 27
	.uleb128 0xf
	.long	.LASF577
	.sleb128 28
	.uleb128 0xf
	.long	.LASF578
	.sleb128 29
	.uleb128 0xf
	.long	.LASF579
	.sleb128 30
	.uleb128 0xf
	.long	.LASF580
	.sleb128 31
	.uleb128 0xf
	.long	.LASF581
	.sleb128 32
	.uleb128 0xf
	.long	.LASF582
	.sleb128 33
	.uleb128 0xf
	.long	.LASF583
	.sleb128 34
	.uleb128 0xf
	.long	.LASF584
	.sleb128 35
	.uleb128 0xf
	.long	.LASF585
	.sleb128 36
	.uleb128 0xf
	.long	.LASF586
	.sleb128 37
	.uleb128 0xf
	.long	.LASF587
	.sleb128 38
	.uleb128 0xf
	.long	.LASF588
	.sleb128 39
	.uleb128 0xf
	.long	.LASF589
	.sleb128 40
	.uleb128 0xf
	.long	.LASF590
	.sleb128 41
	.uleb128 0xf
	.long	.LASF591
	.sleb128 42
	.uleb128 0xf
	.long	.LASF592
	.sleb128 43
	.uleb128 0xf
	.long	.LASF593
	.sleb128 44
	.uleb128 0xf
	.long	.LASF594
	.sleb128 45
	.uleb128 0xf
	.long	.LASF595
	.sleb128 46
	.uleb128 0xf
	.long	.LASF596
	.sleb128 47
	.uleb128 0xf
	.long	.LASF597
	.sleb128 48
	.uleb128 0xf
	.long	.LASF598
	.sleb128 49
	.uleb128 0xf
	.long	.LASF599
	.sleb128 50
	.uleb128 0xf
	.long	.LASF600
	.sleb128 51
	.uleb128 0xf
	.long	.LASF601
	.sleb128 52
	.uleb128 0xf
	.long	.LASF602
	.sleb128 53
	.uleb128 0xf
	.long	.LASF603
	.sleb128 54
	.uleb128 0xf
	.long	.LASF604
	.sleb128 55
	.uleb128 0xf
	.long	.LASF605
	.sleb128 56
	.uleb128 0xf
	.long	.LASF606
	.sleb128 57
	.uleb128 0xf
	.long	.LASF607
	.sleb128 58
	.uleb128 0xf
	.long	.LASF608
	.sleb128 59
	.uleb128 0xf
	.long	.LASF609
	.sleb128 60
	.uleb128 0xf
	.long	.LASF610
	.sleb128 61
	.uleb128 0xf
	.long	.LASF611
	.sleb128 62
	.uleb128 0xf
	.long	.LASF612
	.sleb128 63
	.uleb128 0xf
	.long	.LASF613
	.sleb128 64
	.uleb128 0xf
	.long	.LASF614
	.sleb128 65
	.uleb128 0xf
	.long	.LASF615
	.sleb128 66
	.uleb128 0xf
	.long	.LASF616
	.sleb128 67
	.uleb128 0xf
	.long	.LASF617
	.sleb128 68
	.uleb128 0xf
	.long	.LASF618
	.sleb128 69
	.uleb128 0xf
	.long	.LASF619
	.sleb128 70
	.uleb128 0xf
	.long	.LASF620
	.sleb128 71
	.uleb128 0xf
	.long	.LASF621
	.sleb128 72
	.uleb128 0xf
	.long	.LASF622
	.sleb128 73
	.uleb128 0xf
	.long	.LASF623
	.sleb128 74
	.uleb128 0xf
	.long	.LASF624
	.sleb128 75
	.uleb128 0xf
	.long	.LASF625
	.sleb128 76
	.uleb128 0xf
	.long	.LASF626
	.sleb128 77
	.uleb128 0xf
	.long	.LASF627
	.sleb128 78
	.uleb128 0xf
	.long	.LASF628
	.sleb128 79
	.uleb128 0xf
	.long	.LASF629
	.sleb128 80
	.uleb128 0xf
	.long	.LASF630
	.sleb128 81
	.uleb128 0xf
	.long	.LASF631
	.sleb128 82
	.uleb128 0xf
	.long	.LASF632
	.sleb128 83
	.uleb128 0xf
	.long	.LASF633
	.sleb128 84
	.uleb128 0xf
	.long	.LASF634
	.sleb128 85
	.uleb128 0xf
	.long	.LASF635
	.sleb128 86
	.uleb128 0xf
	.long	.LASF636
	.sleb128 87
	.uleb128 0xf
	.long	.LASF637
	.sleb128 88
	.uleb128 0xf
	.long	.LASF638
	.sleb128 89
	.uleb128 0xf
	.long	.LASF639
	.sleb128 90
	.uleb128 0xf
	.long	.LASF640
	.sleb128 91
	.uleb128 0xf
	.long	.LASF641
	.sleb128 92
	.uleb128 0xf
	.long	.LASF642
	.sleb128 93
	.uleb128 0xf
	.long	.LASF643
	.sleb128 94
	.uleb128 0xf
	.long	.LASF644
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF645
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x1616
	.uleb128 0x8
	.long	.LASF646
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
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF647
	.byte	0x4
	.byte	0x80
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF648
	.byte	0x4
	.byte	0x81
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF649
	.byte	0x4
	.byte	0x82
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF650
	.byte	0x4
	.byte	0x83
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF651
	.byte	0x4
	.byte	0x84
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF652
	.byte	0x4
	.byte	0x85
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF653
	.byte	0x4
	.byte	0x86
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF654
	.byte	0x4
	.byte	0x87
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF655
	.byte	0x4
	.byte	0x89
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF656
	.byte	0x4
	.byte	0x8a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF657
	.byte	0x4
	.byte	0x8b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF658
	.byte	0x4
	.byte	0x8c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF659
	.byte	0x4
	.byte	0x8d
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF660
	.byte	0x4
	.byte	0x8e
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF661
	.byte	0x4
	.byte	0x8f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF662
	.byte	0x4
	.byte	0x90
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF663
	.byte	0x4
	.byte	0x92
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF664
	.byte	0x4
	.byte	0x93
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF665
	.byte	0x4
	.byte	0x94
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF666
	.byte	0x4
	.byte	0x95
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF667
	.byte	0x4
	.byte	0x96
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF668
	.byte	0x4
	.byte	0x97
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF669
	.byte	0x4
	.byte	0x98
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF670
	.byte	0x4
	.byte	0x99
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1f
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x163a
	.uleb128 0x20
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x326
	.byte	0
	.uleb128 0x11
	.long	.LASF671
	.byte	0x4
	.value	0x2cb
	.long	0x314
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF672
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x166f
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x1616
	.byte	0x20
	.byte	0
	.uleb128 0x1a
	.byte	0x18
	.byte	0xa
	.byte	0x6b
	.long	0x1682
	.uleb128 0x6
	.string	"r"
	.byte	0xa
	.byte	0x6c
	.long	0x1682
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	0x1692
	.uleb128 0x15
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF673
	.byte	0xa
	.byte	0x6d
	.long	0x166f
	.uleb128 0x10
	.long	.LASF674
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x16d2
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x1692
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF675
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x1714
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF676
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x11
	.long	.LASF677
	.byte	0x4
	.value	0x2ee
	.long	0x386
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF678
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x1756
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF679
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF680
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF681
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x178b
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x11
	.long	.LASF682
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF683
	.byte	0x18
	.byte	0xb
	.byte	0xa1
	.long	0x17bc
	.uleb128 0x8
	.long	.LASF684
	.byte	0xb
	.byte	0xa3
	.long	0x349
	.byte	0
	.uleb128 0x8
	.long	.LASF685
	.byte	0xb
	.byte	0xa4
	.long	0x17bc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF686
	.byte	0xb
	.byte	0xa5
	.long	0x356
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x178b
	.uleb128 0x4
	.long	.LASF687
	.byte	0x58
	.byte	0xb
	.byte	0xa8
	.long	0x1874
	.uleb128 0x8
	.long	.LASF688
	.byte	0xb
	.byte	0xaa
	.long	0x314
	.byte	0
	.uleb128 0x8
	.long	.LASF689
	.byte	0xb
	.byte	0xab
	.long	0x17bc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF690
	.byte	0xb
	.byte	0xac
	.long	0x349
	.byte	0x10
	.uleb128 0x8
	.long	.LASF691
	.byte	0xb
	.byte	0xad
	.long	0x349
	.byte	0x18
	.uleb128 0x8
	.long	.LASF692
	.byte	0xb
	.byte	0xae
	.long	0x349
	.byte	0x20
	.uleb128 0x8
	.long	.LASF693
	.byte	0xb
	.byte	0xaf
	.long	0x314
	.byte	0x28
	.uleb128 0x8
	.long	.LASF694
	.byte	0xb
	.byte	0xb0
	.long	0x1de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF695
	.byte	0xb
	.byte	0xb5
	.long	0x1888
	.byte	0x38
	.uleb128 0x8
	.long	.LASF696
	.byte	0xb
	.byte	0xb6
	.long	0x189e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF697
	.byte	0xb
	.byte	0xb7
	.long	0x312
	.byte	0x48
	.uleb128 0x5
	.long	.LASF698
	.byte	0xb
	.byte	0xbd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF699
	.byte	0xb
	.byte	0xbe
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF700
	.byte	0xb
	.byte	0xc2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x21
	.long	0x17bc
	.long	0x1888
	.uleb128 0x22
	.long	0x312
	.uleb128 0x22
	.long	0x314
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1874
	.uleb128 0x23
	.long	0x189e
	.uleb128 0x22
	.long	0x312
	.uleb128 0x22
	.long	0x17bc
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x188e
	.uleb128 0x4
	.long	.LASF701
	.byte	0x10
	.byte	0xc
	.byte	0x1a
	.long	0x18c9
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x1c
	.long	0x30b
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.long	0x18c9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18cf
	.uleb128 0x16
	.long	0x32d
	.uleb128 0x10
	.long	.LASF702
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x18fb
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x147a
	.byte	0
	.uleb128 0x20
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x18a4
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF703
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x1930
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x147a
	.byte	0
	.uleb128 0x11
	.long	.LASF704
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF705
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF706
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x1963
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x147a
	.byte	0
	.uleb128 0x11
	.long	.LASF676
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x20
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x1963
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	0x123
	.long	0x1973
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF707
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x19a8
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x147a
	.byte	0
	.uleb128 0x11
	.long	.LASF708
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x11
	.long	.LASF709
	.byte	0x4
	.value	0x373
	.long	0x1963
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF710
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1a41
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x147a
	.byte	0
	.uleb128 0x24
	.long	.LASF711
	.byte	0x4
	.value	0x3a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x24
	.long	.LASF712
	.byte	0x4
	.value	0x3a8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x24
	.long	.LASF713
	.byte	0x4
	.value	0x3a9
	.long	0x30b
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x11
	.long	.LASF714
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF715
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF716
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x11
	.long	.LASF717
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x11
	.long	.LASF718
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF719
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1a63
	.uleb128 0xa
	.long	.LASF720
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF677
	.byte	0x4
	.value	0x4d8
	.long	0x349
	.byte	0
	.uleb128 0x10
	.long	.LASF721
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1c78
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x147a
	.byte	0
	.uleb128 0x11
	.long	.LASF722
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x11
	.long	.LASF286
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x11
	.long	.LASF723
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF724
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x30b
	.byte	0x38
	.uleb128 0x24
	.long	.LASF725
	.byte	0x4
	.value	0x4c1
	.long	0x30b
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x30b
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF726
	.byte	0x4
	.value	0x4c4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF727
	.byte	0x4
	.value	0x4c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF728
	.byte	0x4
	.value	0x4c6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF729
	.byte	0x4
	.value	0x4c7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF730
	.byte	0x4
	.value	0x4c8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF731
	.byte	0x4
	.value	0x4c9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF732
	.byte	0x4
	.value	0x4ca
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF663
	.byte	0x4
	.value	0x4cc
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF664
	.byte	0x4
	.value	0x4cd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF665
	.byte	0x4
	.value	0x4ce
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF666
	.byte	0x4
	.value	0x4cf
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF667
	.byte	0x4
	.value	0x4d0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF668
	.byte	0x4
	.value	0x4d1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF669
	.byte	0x4
	.value	0x4d2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x24
	.long	.LASF733
	.byte	0x4
	.value	0x4d3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF287
	.byte	0x4
	.value	0x4d5
	.long	0x30b
	.byte	0x40
	.uleb128 0x11
	.long	.LASF734
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF735
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF736
	.byte	0x4
	.value	0x4d8
	.long	0x1a41
	.byte	0x58
	.uleb128 0x11
	.long	.LASF737
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF738
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF739
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF740
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF741
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF742
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x11
	.long	.LASF743
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x11
	.long	.LASF744
	.byte	0x4
	.value	0x4e0
	.long	0x314
	.byte	0x98
	.uleb128 0x11
	.long	.LASF745
	.byte	0x4
	.value	0x4e2
	.long	0x1c7d
	.byte	0xa0
	.byte	0
	.uleb128 0x1e
	.long	.LASF747
	.uleb128 0x3
	.byte	0x8
	.long	0x1c78
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1cad
	.uleb128 0x24
	.long	.LASF287
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x24
	.long	.LASF748
	.byte	0x4
	.value	0x717
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1cd5
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x120d
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x314
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1c83
	.byte	0
	.uleb128 0x25
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1d07
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x2187
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
	.long	0x1de
	.byte	0
	.uleb128 0x26
	.long	.LASF749
	.value	0x1b0
	.byte	0xd
	.byte	0xae
	.long	0x2187
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb0
	.long	0x2898
	.byte	0
	.uleb128 0x8
	.long	.LASF750
	.byte	0xd
	.byte	0xb1
	.long	0x28a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0xd
	.byte	0xb2
	.long	0x28a9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF751
	.byte	0xd
	.byte	0xb3
	.long	0x28af
	.byte	0x18
	.uleb128 0x8
	.long	.LASF752
	.byte	0xd
	.byte	0xb4
	.long	0x28ba
	.byte	0x20
	.uleb128 0x8
	.long	.LASF737
	.byte	0xd
	.byte	0xb9
	.long	0x386
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xd
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF753
	.byte	0xd
	.byte	0xbf
	.long	0x2187
	.byte	0x38
	.uleb128 0x8
	.long	.LASF754
	.byte	0xd
	.byte	0xc4
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF755
	.byte	0xd
	.byte	0xc9
	.long	0x1de
	.byte	0x44
	.uleb128 0x8
	.long	.LASF756
	.byte	0xd
	.byte	0xce
	.long	0x1de
	.byte	0x48
	.uleb128 0x8
	.long	.LASF757
	.byte	0xd
	.byte	0xd2
	.long	0x1de
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF758
	.byte	0xd
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF759
	.byte	0xd
	.byte	0xda
	.long	0x2ff
	.byte	0x58
	.uleb128 0x8
	.long	.LASF760
	.byte	0xd
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF761
	.byte	0xd
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF762
	.byte	0xd
	.byte	0xe7
	.long	0x386
	.byte	0x88
	.uleb128 0x8
	.long	.LASF763
	.byte	0xd
	.byte	0xeb
	.long	0x28c5
	.byte	0x90
	.uleb128 0x8
	.long	.LASF764
	.byte	0xd
	.byte	0xee
	.long	0x1de
	.byte	0x98
	.uleb128 0x8
	.long	.LASF765
	.byte	0xd
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF766
	.byte	0xd
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF767
	.byte	0xd
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF768
	.byte	0xd
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF769
	.byte	0xd
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF770
	.byte	0xd
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x11
	.long	.LASF771
	.byte	0xd
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF772
	.byte	0xd
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF773
	.byte	0xd
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF774
	.byte	0xd
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x11
	.long	.LASF775
	.byte	0xd
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x11
	.long	.LASF776
	.byte	0xd
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x27
	.long	.LASF777
	.byte	0xd
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x27
	.long	.LASF778
	.byte	0xd
	.value	0x12f
	.long	0x314
	.value	0x108
	.uleb128 0x27
	.long	.LASF779
	.byte	0xd
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x27
	.long	.LASF780
	.byte	0xd
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x27
	.long	.LASF781
	.byte	0xd
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x27
	.long	.LASF782
	.byte	0xd
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x27
	.long	.LASF783
	.byte	0xd
	.value	0x148
	.long	0x30b
	.value	0x130
	.uleb128 0x27
	.long	.LASF784
	.byte	0xd
	.value	0x14e
	.long	0xd94
	.value	0x138
	.uleb128 0x27
	.long	.LASF785
	.byte	0xd
	.value	0x151
	.long	0x2974
	.value	0x140
	.uleb128 0x27
	.long	.LASF786
	.byte	0xd
	.value	0x154
	.long	0x1de
	.value	0x148
	.uleb128 0x27
	.long	.LASF787
	.byte	0xd
	.value	0x157
	.long	0x1de
	.value	0x14c
	.uleb128 0x27
	.long	.LASF788
	.byte	0xd
	.value	0x15d
	.long	0x1de
	.value	0x150
	.uleb128 0x27
	.long	.LASF789
	.byte	0xd
	.value	0x161
	.long	0x273a
	.value	0x158
	.uleb128 0x27
	.long	.LASF790
	.byte	0xd
	.value	0x164
	.long	0x1de
	.value	0x160
	.uleb128 0x27
	.long	.LASF791
	.byte	0xd
	.value	0x165
	.long	0x1de
	.value	0x164
	.uleb128 0x27
	.long	.LASF792
	.byte	0xd
	.value	0x167
	.long	0x312
	.value	0x168
	.uleb128 0x27
	.long	.LASF793
	.byte	0xd
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x27
	.long	.LASF794
	.byte	0xd
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x27
	.long	.LASF795
	.byte	0xd
	.value	0x16d
	.long	0x1de
	.value	0x180
	.uleb128 0x27
	.long	.LASF796
	.byte	0xd
	.value	0x170
	.long	0x1de
	.value	0x184
	.uleb128 0x27
	.long	.LASF797
	.byte	0xd
	.value	0x175
	.long	0x297f
	.value	0x188
	.uleb128 0x27
	.long	.LASF798
	.byte	0xd
	.value	0x177
	.long	0x1de
	.value	0x190
	.uleb128 0x27
	.long	.LASF799
	.byte	0xd
	.value	0x179
	.long	0x1de
	.value	0x194
	.uleb128 0x27
	.long	.LASF800
	.byte	0xd
	.value	0x17c
	.long	0x298a
	.value	0x198
	.uleb128 0x27
	.long	.LASF801
	.byte	0xd
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x28
	.long	.LASF802
	.byte	0xd
	.value	0x188
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF803
	.byte	0xd
	.value	0x18c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF804
	.byte	0xd
	.value	0x18f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF805
	.byte	0xd
	.value	0x192
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF806
	.byte	0xd
	.value	0x195
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF807
	.byte	0xd
	.value	0x198
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF808
	.byte	0xd
	.value	0x19c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF809
	.byte	0xd
	.value	0x19f
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF810
	.byte	0xd
	.value	0x1a3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF811
	.byte	0xd
	.value	0x1a7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF812
	.byte	0xd
	.value	0x1aa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF813
	.byte	0xd
	.value	0x1ad
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF814
	.byte	0xd
	.value	0x1b2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF815
	.byte	0xd
	.value	0x1b6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF816
	.byte	0xd
	.value	0x1b9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF817
	.byte	0xd
	.value	0x1bd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF818
	.byte	0xd
	.value	0x1c1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF819
	.byte	0xd
	.value	0x1c5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF820
	.byte	0xd
	.value	0x1cb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF821
	.byte	0xd
	.value	0x1d4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF822
	.byte	0xd
	.value	0x1d7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF823
	.byte	0xd
	.value	0x1da
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF824
	.byte	0xd
	.value	0x1dd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x28
	.long	.LASF825
	.byte	0xd
	.value	0x1e0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d07
	.uleb128 0x10
	.long	.LASF826
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x2511
	.uleb128 0x11
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x147a
	.byte	0
	.uleb128 0x11
	.long	.LASF827
	.byte	0x4
	.value	0x6df
	.long	0x386
	.byte	0x18
	.uleb128 0x11
	.long	.LASF828
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x20
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x30b
	.byte	0x24
	.uleb128 0x11
	.long	.LASF286
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x24
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x30b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x24
	.long	.LASF829
	.byte	0x4
	.value	0x6e5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x24
	.long	.LASF830
	.byte	0x4
	.value	0x6e6
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x24
	.long	.LASF831
	.byte	0x4
	.value	0x6e7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x24
	.long	.LASF832
	.byte	0x4
	.value	0x6e8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x24
	.long	.LASF833
	.byte	0x4
	.value	0x6e9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x24
	.long	.LASF834
	.byte	0x4
	.value	0x6ea
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x24
	.long	.LASF835
	.byte	0x4
	.value	0x6eb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x24
	.long	.LASF712
	.byte	0x4
	.value	0x6ec
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x24
	.long	.LASF836
	.byte	0x4
	.value	0x6ee
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x24
	.long	.LASF837
	.byte	0x4
	.value	0x6ef
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x24
	.long	.LASF838
	.byte	0x4
	.value	0x6f0
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x24
	.long	.LASF839
	.byte	0x4
	.value	0x6f1
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x24
	.long	.LASF840
	.byte	0x4
	.value	0x6f2
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x24
	.long	.LASF841
	.byte	0x4
	.value	0x6f3
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x24
	.long	.LASF842
	.byte	0x4
	.value	0x6f4
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x24
	.long	.LASF843
	.byte	0x4
	.value	0x6f5
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x24
	.long	.LASF844
	.byte	0x4
	.value	0x6f7
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x24
	.long	.LASF845
	.byte	0x4
	.value	0x6f8
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x24
	.long	.LASF846
	.byte	0x4
	.value	0x6f9
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x24
	.long	.LASF847
	.byte	0x4
	.value	0x6fa
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x24
	.long	.LASF848
	.byte	0x4
	.value	0x6fb
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x24
	.long	.LASF849
	.byte	0x4
	.value	0x6fc
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x24
	.long	.LASF850
	.byte	0x4
	.value	0x6fd
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x24
	.long	.LASF732
	.byte	0x4
	.value	0x6ff
	.long	0x30b
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x24
	.long	.LASF851
	.byte	0x4
	.value	0x700
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x24
	.long	.LASF733
	.byte	0x4
	.value	0x701
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x24
	.long	.LASF852
	.byte	0x4
	.value	0x702
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x24
	.long	.LASF663
	.byte	0x4
	.value	0x705
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x24
	.long	.LASF664
	.byte	0x4
	.value	0x706
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x24
	.long	.LASF665
	.byte	0x4
	.value	0x707
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x24
	.long	.LASF666
	.byte	0x4
	.value	0x708
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x24
	.long	.LASF667
	.byte	0x4
	.value	0x709
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x24
	.long	.LASF668
	.byte	0x4
	.value	0x70a
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x24
	.long	.LASF669
	.byte	0x4
	.value	0x70b
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x24
	.long	.LASF853
	.byte	0x4
	.value	0x70c
	.long	0x30b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x20
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1cad
	.byte	0x38
	.uleb128 0x11
	.long	.LASF723
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x11
	.long	.LASF737
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x11
	.long	.LASF743
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x11
	.long	.LASF854
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x11
	.long	.LASF855
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x11
	.long	.LASF856
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x11
	.long	.LASF717
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x11
	.long	.LASF857
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x11
	.long	.LASF858
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x11
	.long	.LASF724
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x20
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x11
	.long	.LASF859
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x20
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1cd5
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF860
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF861
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF862
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x11
	.long	.LASF863
	.byte	0x4
	.value	0x73b
	.long	0x314
	.byte	0xc0
	.uleb128 0x11
	.long	.LASF745
	.byte	0x4
	.value	0x73d
	.long	0x2516
	.byte	0xc8
	.byte	0
	.uleb128 0x1e
	.long	.LASF864
	.uleb128 0x3
	.byte	0x8
	.long	0x2511
	.uleb128 0xe
	.long	.LASF865
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x2662
	.uleb128 0xf
	.long	.LASF866
	.sleb128 0
	.uleb128 0xf
	.long	.LASF867
	.sleb128 1
	.uleb128 0xf
	.long	.LASF868
	.sleb128 2
	.uleb128 0xf
	.long	.LASF869
	.sleb128 3
	.uleb128 0xf
	.long	.LASF870
	.sleb128 4
	.uleb128 0xf
	.long	.LASF871
	.sleb128 5
	.uleb128 0xf
	.long	.LASF872
	.sleb128 6
	.uleb128 0xf
	.long	.LASF873
	.sleb128 7
	.uleb128 0xf
	.long	.LASF874
	.sleb128 8
	.uleb128 0xf
	.long	.LASF875
	.sleb128 9
	.uleb128 0xf
	.long	.LASF876
	.sleb128 10
	.uleb128 0xf
	.long	.LASF877
	.sleb128 11
	.uleb128 0xf
	.long	.LASF878
	.sleb128 12
	.uleb128 0xf
	.long	.LASF879
	.sleb128 13
	.uleb128 0xf
	.long	.LASF880
	.sleb128 14
	.uleb128 0xf
	.long	.LASF881
	.sleb128 15
	.uleb128 0xf
	.long	.LASF882
	.sleb128 16
	.uleb128 0xf
	.long	.LASF883
	.sleb128 17
	.uleb128 0xf
	.long	.LASF884
	.sleb128 18
	.uleb128 0xf
	.long	.LASF885
	.sleb128 19
	.uleb128 0xf
	.long	.LASF886
	.sleb128 20
	.uleb128 0xf
	.long	.LASF887
	.sleb128 21
	.uleb128 0xf
	.long	.LASF888
	.sleb128 22
	.uleb128 0xf
	.long	.LASF889
	.sleb128 23
	.uleb128 0xf
	.long	.LASF890
	.sleb128 24
	.uleb128 0xf
	.long	.LASF891
	.sleb128 25
	.uleb128 0xf
	.long	.LASF892
	.sleb128 26
	.uleb128 0xf
	.long	.LASF893
	.sleb128 27
	.uleb128 0xf
	.long	.LASF894
	.sleb128 28
	.uleb128 0xf
	.long	.LASF895
	.sleb128 29
	.uleb128 0xf
	.long	.LASF896
	.sleb128 30
	.uleb128 0xf
	.long	.LASF897
	.sleb128 31
	.uleb128 0xf
	.long	.LASF898
	.sleb128 32
	.uleb128 0xf
	.long	.LASF899
	.sleb128 33
	.uleb128 0xf
	.long	.LASF900
	.sleb128 34
	.uleb128 0xf
	.long	.LASF901
	.sleb128 35
	.uleb128 0xf
	.long	.LASF902
	.sleb128 36
	.uleb128 0xf
	.long	.LASF903
	.sleb128 37
	.uleb128 0xf
	.long	.LASF904
	.sleb128 38
	.uleb128 0xf
	.long	.LASF905
	.sleb128 39
	.uleb128 0xf
	.long	.LASF906
	.sleb128 40
	.uleb128 0xf
	.long	.LASF907
	.sleb128 41
	.uleb128 0xf
	.long	.LASF908
	.sleb128 42
	.uleb128 0xf
	.long	.LASF909
	.sleb128 43
	.uleb128 0xf
	.long	.LASF910
	.sleb128 44
	.uleb128 0xf
	.long	.LASF911
	.sleb128 45
	.uleb128 0xf
	.long	.LASF912
	.sleb128 46
	.uleb128 0xf
	.long	.LASF913
	.sleb128 47
	.uleb128 0xf
	.long	.LASF914
	.sleb128 48
	.uleb128 0xf
	.long	.LASF915
	.sleb128 49
	.uleb128 0xf
	.long	.LASF916
	.sleb128 50
	.uleb128 0xf
	.long	.LASF917
	.sleb128 51
	.byte	0
	.uleb128 0xe
	.long	.LASF918
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x26b8
	.uleb128 0xf
	.long	.LASF919
	.sleb128 0
	.uleb128 0xf
	.long	.LASF920
	.sleb128 1
	.uleb128 0xf
	.long	.LASF921
	.sleb128 2
	.uleb128 0xf
	.long	.LASF922
	.sleb128 3
	.uleb128 0xf
	.long	.LASF923
	.sleb128 4
	.uleb128 0xf
	.long	.LASF924
	.sleb128 5
	.uleb128 0xf
	.long	.LASF925
	.sleb128 6
	.uleb128 0xf
	.long	.LASF926
	.sleb128 7
	.uleb128 0xf
	.long	.LASF927
	.sleb128 8
	.uleb128 0xf
	.long	.LASF928
	.sleb128 9
	.uleb128 0xf
	.long	.LASF929
	.sleb128 10
	.uleb128 0xf
	.long	.LASF930
	.sleb128 11
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF931
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0xe
	.long	.LASF932
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x26fd
	.uleb128 0xf
	.long	.LASF933
	.sleb128 0
	.uleb128 0xf
	.long	.LASF934
	.sleb128 1
	.uleb128 0xf
	.long	.LASF935
	.sleb128 2
	.uleb128 0xf
	.long	.LASF936
	.sleb128 3
	.uleb128 0xf
	.long	.LASF937
	.sleb128 4
	.uleb128 0xf
	.long	.LASF938
	.sleb128 5
	.uleb128 0xf
	.long	.LASF939
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF940
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.long	0x273a
	.uleb128 0x8
	.long	.LASF941
	.byte	0xd
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF942
	.byte	0xd
	.byte	0x19
	.long	0x3ac
	.byte	0x8
	.uleb128 0x8
	.long	.LASF943
	.byte	0xd
	.byte	0x1a
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF944
	.byte	0xd
	.byte	0x1b
	.long	0x273a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x26fd
	.uleb128 0x4
	.long	.LASF945
	.byte	0x20
	.byte	0xd
	.byte	0x23
	.long	0x277d
	.uleb128 0x8
	.long	.LASF302
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF946
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF947
	.byte	0xd
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF944
	.byte	0xd
	.byte	0x28
	.long	0x277d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2740
	.uleb128 0x4
	.long	.LASF948
	.byte	0x58
	.byte	0xd
	.byte	0x35
	.long	0x282c
	.uleb128 0x8
	.long	.LASF949
	.byte	0xd
	.byte	0x39
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF950
	.byte	0xd
	.byte	0x3c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF951
	.byte	0xd
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF952
	.byte	0xd
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF947
	.byte	0xd
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF945
	.byte	0xd
	.byte	0x4f
	.long	0x277d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF953
	.byte	0xd
	.byte	0x53
	.long	0x1de
	.byte	0x28
	.uleb128 0x8
	.long	.LASF954
	.byte	0xd
	.byte	0x57
	.long	0x1de
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF955
	.byte	0xd
	.byte	0x58
	.long	0x386
	.byte	0x30
	.uleb128 0x8
	.long	.LASF956
	.byte	0xd
	.byte	0x5e
	.long	0x1de
	.byte	0x38
	.uleb128 0x8
	.long	.LASF957
	.byte	0xd
	.byte	0x63
	.long	0x282c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF958
	.byte	0xd
	.byte	0x67
	.long	0x26bf
	.byte	0x48
	.uleb128 0x8
	.long	.LASF959
	.byte	0xd
	.byte	0x6b
	.long	0xd94
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x32d
	.uleb128 0x4
	.long	.LASF960
	.byte	0x30
	.byte	0xd
	.byte	0x77
	.long	0x2893
	.uleb128 0x8
	.long	.LASF961
	.byte	0xd
	.byte	0x7b
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF962
	.byte	0xd
	.byte	0x8c
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF963
	.byte	0xd
	.byte	0x92
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF964
	.byte	0xd
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF965
	.byte	0xd
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF966
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF967
	.byte	0xd
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF968
	.uleb128 0x3
	.byte	0x8
	.long	0x2893
	.uleb128 0x1e
	.long	.LASF969
	.uleb128 0x3
	.byte	0x8
	.long	0x289e
	.uleb128 0x3
	.byte	0x8
	.long	0x2832
	.uleb128 0x3
	.byte	0x8
	.long	0x2783
	.uleb128 0x1e
	.long	.LASF970
	.uleb128 0x3
	.byte	0x8
	.long	0x28b5
	.uleb128 0x1e
	.long	.LASF971
	.uleb128 0x3
	.byte	0x8
	.long	0x28c0
	.uleb128 0x4
	.long	.LASF972
	.byte	0x58
	.byte	0x1
	.byte	0xb1
	.long	0x2974
	.uleb128 0x8
	.long	.LASF944
	.byte	0x1
	.byte	0xb4
	.long	0x2974
	.byte	0
	.uleb128 0x8
	.long	.LASF973
	.byte	0x1
	.byte	0xb6
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF720
	.byte	0x1
	.byte	0xb9
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1
	.byte	0xbb
	.long	0x30b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1
	.byte	0xbd
	.long	0x314
	.byte	0x20
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0xc2
	.long	0x123
	.byte	0x28
	.uleb128 0x8
	.long	.LASF974
	.byte	0x1
	.byte	0xc4
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF975
	.byte	0x1
	.byte	0xc6
	.long	0x34f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF976
	.byte	0x1
	.byte	0xc8
	.long	0x34f
	.byte	0x39
	.uleb128 0x8
	.long	.LASF977
	.byte	0x1
	.byte	0xca
	.long	0x1de
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF978
	.byte	0x1
	.byte	0xcc
	.long	0x1de
	.byte	0x40
	.uleb128 0x8
	.long	.LASF979
	.byte	0x1
	.byte	0xcf
	.long	0x314
	.byte	0x48
	.uleb128 0x8
	.long	.LASF980
	.byte	0x1
	.byte	0xd2
	.long	0x314
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28cb
	.uleb128 0x1e
	.long	.LASF981
	.uleb128 0x3
	.byte	0x8
	.long	0x297a
	.uleb128 0x1e
	.long	.LASF982
	.uleb128 0x3
	.byte	0x8
	.long	0x2985
	.uleb128 0x4
	.long	.LASF755
	.byte	0x10
	.byte	0xe
	.byte	0x45
	.long	0x29b5
	.uleb128 0x8
	.long	.LASF983
	.byte	0xe
	.byte	0x47
	.long	0x314
	.byte	0
	.uleb128 0x6
	.string	"var"
	.byte	0xe
	.byte	0x48
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF984
	.byte	0x4
	.byte	0xe
	.byte	0x77
	.long	0x29d4
	.uleb128 0xf
	.long	.LASF985
	.sleb128 0
	.uleb128 0xf
	.long	.LASF986
	.sleb128 1
	.uleb128 0xf
	.long	.LASF987
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.long	.LASF988
	.byte	0x4
	.byte	0xe
	.value	0x100
	.long	0x2a00
	.uleb128 0xf
	.long	.LASF989
	.sleb128 0
	.uleb128 0xf
	.long	.LASF990
	.sleb128 1
	.uleb128 0xf
	.long	.LASF991
	.sleb128 2
	.uleb128 0xf
	.long	.LASF992
	.sleb128 3
	.uleb128 0xf
	.long	.LASF993
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.long	.LASF994
	.byte	0x4
	.byte	0xe
	.value	0x2ce
	.long	0x2a20
	.uleb128 0xf
	.long	.LASF995
	.sleb128 0
	.uleb128 0xf
	.long	.LASF996
	.sleb128 1
	.uleb128 0xf
	.long	.LASF997
	.sleb128 2
	.byte	0
	.uleb128 0xe
	.long	.LASF998
	.byte	0x4
	.byte	0xe
	.value	0x2ed
	.long	0x2a40
	.uleb128 0xf
	.long	.LASF999
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1000
	.sleb128 1
	.uleb128 0xf
	.long	.LASF1001
	.sleb128 2
	.byte	0
	.uleb128 0x18
	.long	.LASF1002
	.byte	0x4
	.byte	0xf
	.byte	0x19
	.long	0x2cbb
	.uleb128 0xf
	.long	.LASF1003
	.sleb128 0
	.uleb128 0xf
	.long	.LASF1004
	.sleb128 1
	.uleb128 0xf
	.long	.LASF1005
	.sleb128 2
	.uleb128 0xf
	.long	.LASF1006
	.sleb128 3
	.uleb128 0xf
	.long	.LASF1007
	.sleb128 4
	.uleb128 0xf
	.long	.LASF1008
	.sleb128 5
	.uleb128 0xf
	.long	.LASF1009
	.sleb128 6
	.uleb128 0xf
	.long	.LASF1010
	.sleb128 7
	.uleb128 0xf
	.long	.LASF1011
	.sleb128 8
	.uleb128 0xf
	.long	.LASF1012
	.sleb128 9
	.uleb128 0xf
	.long	.LASF1013
	.sleb128 10
	.uleb128 0xf
	.long	.LASF1014
	.sleb128 11
	.uleb128 0xf
	.long	.LASF1015
	.sleb128 12
	.uleb128 0xf
	.long	.LASF1016
	.sleb128 13
	.uleb128 0xf
	.long	.LASF1017
	.sleb128 14
	.uleb128 0xf
	.long	.LASF1018
	.sleb128 15
	.uleb128 0xf
	.long	.LASF1019
	.sleb128 16
	.uleb128 0xf
	.long	.LASF1020
	.sleb128 17
	.uleb128 0xf
	.long	.LASF1021
	.sleb128 18
	.uleb128 0xf
	.long	.LASF1022
	.sleb128 19
	.uleb128 0xf
	.long	.LASF1023
	.sleb128 20
	.uleb128 0xf
	.long	.LASF1024
	.sleb128 21
	.uleb128 0xf
	.long	.LASF1025
	.sleb128 22
	.uleb128 0xf
	.long	.LASF1026
	.sleb128 23
	.uleb128 0xf
	.long	.LASF1027
	.sleb128 24
	.uleb128 0xf
	.long	.LASF1028
	.sleb128 25
	.uleb128 0xf
	.long	.LASF1029
	.sleb128 26
	.uleb128 0xf
	.long	.LASF1030
	.sleb128 27
	.uleb128 0xf
	.long	.LASF1031
	.sleb128 28
	.uleb128 0xf
	.long	.LASF1032
	.sleb128 29
	.uleb128 0xf
	.long	.LASF1033
	.sleb128 30
	.uleb128 0xf
	.long	.LASF1034
	.sleb128 31
	.uleb128 0xf
	.long	.LASF1035
	.sleb128 32
	.uleb128 0xf
	.long	.LASF1036
	.sleb128 33
	.uleb128 0xf
	.long	.LASF1037
	.sleb128 34
	.uleb128 0xf
	.long	.LASF1038
	.sleb128 35
	.uleb128 0xf
	.long	.LASF1039
	.sleb128 36
	.uleb128 0xf
	.long	.LASF1040
	.sleb128 37
	.uleb128 0xf
	.long	.LASF1041
	.sleb128 38
	.uleb128 0xf
	.long	.LASF1042
	.sleb128 39
	.uleb128 0xf
	.long	.LASF1043
	.sleb128 40
	.uleb128 0xf
	.long	.LASF1044
	.sleb128 41
	.uleb128 0xf
	.long	.LASF1045
	.sleb128 42
	.uleb128 0xf
	.long	.LASF1046
	.sleb128 43
	.uleb128 0xf
	.long	.LASF1047
	.sleb128 44
	.uleb128 0xf
	.long	.LASF1048
	.sleb128 45
	.uleb128 0xf
	.long	.LASF1049
	.sleb128 46
	.uleb128 0xf
	.long	.LASF1050
	.sleb128 47
	.uleb128 0xf
	.long	.LASF1051
	.sleb128 48
	.uleb128 0xf
	.long	.LASF1052
	.sleb128 49
	.uleb128 0xf
	.long	.LASF1053
	.sleb128 50
	.uleb128 0xf
	.long	.LASF1054
	.sleb128 51
	.uleb128 0xf
	.long	.LASF1055
	.sleb128 52
	.uleb128 0xf
	.long	.LASF1056
	.sleb128 53
	.uleb128 0xf
	.long	.LASF1057
	.sleb128 54
	.uleb128 0xf
	.long	.LASF1058
	.sleb128 55
	.uleb128 0xf
	.long	.LASF1059
	.sleb128 56
	.uleb128 0xf
	.long	.LASF1060
	.sleb128 57
	.uleb128 0xf
	.long	.LASF1061
	.sleb128 58
	.uleb128 0xf
	.long	.LASF1062
	.sleb128 59
	.uleb128 0xf
	.long	.LASF1063
	.sleb128 60
	.uleb128 0xf
	.long	.LASF1064
	.sleb128 61
	.uleb128 0xf
	.long	.LASF1065
	.sleb128 62
	.uleb128 0xf
	.long	.LASF1066
	.sleb128 63
	.uleb128 0xf
	.long	.LASF1067
	.sleb128 64
	.uleb128 0xf
	.long	.LASF1068
	.sleb128 65
	.uleb128 0xf
	.long	.LASF1069
	.sleb128 66
	.uleb128 0xf
	.long	.LASF1070
	.sleb128 67
	.uleb128 0xf
	.long	.LASF1071
	.sleb128 68
	.uleb128 0xf
	.long	.LASF1072
	.sleb128 69
	.uleb128 0xf
	.long	.LASF1073
	.sleb128 70
	.uleb128 0xf
	.long	.LASF1074
	.sleb128 71
	.uleb128 0xf
	.long	.LASF1075
	.sleb128 72
	.uleb128 0xf
	.long	.LASF1076
	.sleb128 73
	.uleb128 0xf
	.long	.LASF1077
	.sleb128 74
	.uleb128 0xf
	.long	.LASF1078
	.sleb128 75
	.uleb128 0xf
	.long	.LASF1079
	.sleb128 76
	.uleb128 0xf
	.long	.LASF1080
	.sleb128 77
	.uleb128 0xf
	.long	.LASF1081
	.sleb128 78
	.uleb128 0xf
	.long	.LASF1082
	.sleb128 79
	.uleb128 0xf
	.long	.LASF1083
	.sleb128 80
	.uleb128 0xf
	.long	.LASF1084
	.sleb128 81
	.uleb128 0xf
	.long	.LASF1085
	.sleb128 82
	.uleb128 0xf
	.long	.LASF1086
	.sleb128 83
	.uleb128 0xf
	.long	.LASF1087
	.sleb128 84
	.uleb128 0xf
	.long	.LASF1088
	.sleb128 85
	.uleb128 0xf
	.long	.LASF1089
	.sleb128 86
	.uleb128 0xf
	.long	.LASF1090
	.sleb128 87
	.uleb128 0xf
	.long	.LASF1091
	.sleb128 88
	.uleb128 0xf
	.long	.LASF1092
	.sleb128 89
	.uleb128 0xf
	.long	.LASF1093
	.sleb128 90
	.uleb128 0xf
	.long	.LASF1094
	.sleb128 91
	.uleb128 0xf
	.long	.LASF1095
	.sleb128 92
	.uleb128 0xf
	.long	.LASF1096
	.sleb128 93
	.uleb128 0xf
	.long	.LASF1097
	.sleb128 94
	.uleb128 0xf
	.long	.LASF1098
	.sleb128 95
	.uleb128 0xf
	.long	.LASF1099
	.sleb128 96
	.uleb128 0xf
	.long	.LASF1100
	.sleb128 97
	.byte	0
	.uleb128 0x4
	.long	.LASF1101
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.long	0x2ce0
	.uleb128 0x6
	.string	"rtx"
	.byte	0x10
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x10
	.byte	0x36
	.long	0x30b
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.long	.LASF1102
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.long	0x2dc5
	.uleb128 0x1d
	.string	"c"
	.byte	0x10
	.byte	0x3b
	.long	0x366
	.uleb128 0x1d
	.string	"uc"
	.byte	0x10
	.byte	0x3c
	.long	0x2dc5
	.uleb128 0x1d
	.string	"s"
	.byte	0x10
	.byte	0x3d
	.long	0x2dd5
	.uleb128 0x1d
	.string	"us"
	.byte	0x10
	.byte	0x3e
	.long	0x2de5
	.uleb128 0x1d
	.string	"i"
	.byte	0x10
	.byte	0x3f
	.long	0x2df5
	.uleb128 0x1d
	.string	"u"
	.byte	0x10
	.byte	0x40
	.long	0x2e05
	.uleb128 0x1d
	.string	"l"
	.byte	0x10
	.byte	0x41
	.long	0x2e15
	.uleb128 0x1d
	.string	"ul"
	.byte	0x10
	.byte	0x42
	.long	0x2e25
	.uleb128 0x1c
	.long	.LASF1103
	.byte	0x10
	.byte	0x43
	.long	0x2e15
	.uleb128 0x1c
	.long	.LASF1104
	.byte	0x10
	.byte	0x44
	.long	0x2e25
	.uleb128 0x1c
	.long	.LASF1105
	.byte	0x10
	.byte	0x45
	.long	0x2e35
	.uleb128 0x1c
	.long	.LASF1106
	.byte	0x10
	.byte	0x46
	.long	0x2e45
	.uleb128 0x1d
	.string	"rtx"
	.byte	0x10
	.byte	0x47
	.long	0x2e55
	.uleb128 0x1c
	.long	.LASF10
	.byte	0x10
	.byte	0x48
	.long	0x2e65
	.uleb128 0x1c
	.long	.LASF15
	.byte	0x10
	.byte	0x49
	.long	0x2e75
	.uleb128 0x1c
	.long	.LASF1107
	.byte	0x10
	.byte	0x4a
	.long	0x2e85
	.uleb128 0x1c
	.long	.LASF1108
	.byte	0x10
	.byte	0x4b
	.long	0x2e95
	.uleb128 0x1d
	.string	"reg"
	.byte	0x10
	.byte	0x4c
	.long	0x2eb0
	.uleb128 0x1c
	.long	.LASF1109
	.byte	0x10
	.byte	0x4d
	.long	0x2f57
	.uleb128 0x1d
	.string	"bb"
	.byte	0x10
	.byte	0x4e
	.long	0x2f67
	.uleb128 0x1d
	.string	"te"
	.byte	0x10
	.byte	0x4f
	.long	0x2f77
	.byte	0
	.uleb128 0x14
	.long	0x32d
	.long	0x2dd5
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x342
	.long	0x2de5
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x334
	.long	0x2df5
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x1de
	.long	0x2e05
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x30b
	.long	0x2e15
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x314
	.long	0x2e25
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x326
	.long	0x2e35
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x312
	.long	0x2e45
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x349
	.long	0x2e55
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x2e65
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x2e75
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x2e85
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xb19
	.long	0x2e95
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2ea5
	.long	0x2ea5
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2eab
	.uleb128 0x1e
	.long	.LASF1110
	.uleb128 0x14
	.long	0x2ec0
	.long	0x2ec0
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2ec6
	.uleb128 0x4
	.long	.LASF1111
	.byte	0x2c
	.byte	0x11
	.byte	0x2d
	.long	0x2f57
	.uleb128 0x8
	.long	.LASF1112
	.byte	0x11
	.byte	0x2f
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF1113
	.byte	0x11
	.byte	0x30
	.long	0x1de
	.byte	0x4
	.uleb128 0x8
	.long	.LASF1114
	.byte	0x11
	.byte	0x31
	.long	0x1de
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1115
	.byte	0x11
	.byte	0x34
	.long	0x1de
	.byte	0xc
	.uleb128 0x8
	.long	.LASF1116
	.byte	0x11
	.byte	0x37
	.long	0x1de
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1117
	.byte	0x11
	.byte	0x38
	.long	0x1de
	.byte	0x14
	.uleb128 0x8
	.long	.LASF1118
	.byte	0x11
	.byte	0x39
	.long	0x1de
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1119
	.byte	0x11
	.byte	0x3a
	.long	0x1de
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF1120
	.byte	0x11
	.byte	0x3b
	.long	0x1de
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1121
	.byte	0x11
	.byte	0x3c
	.long	0x1de
	.byte	0x24
	.uleb128 0x8
	.long	.LASF1122
	.byte	0x11
	.byte	0x3d
	.long	0x34f
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0x2cbb
	.long	0x2f67
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xbec
	.long	0x2f77
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2f87
	.long	0x2f87
	.uleb128 0x15
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f8d
	.uleb128 0x1e
	.long	.LASF1123
	.uleb128 0x7
	.long	.LASF1124
	.byte	0x10
	.byte	0x50
	.long	0x2ce0
	.uleb128 0x4
	.long	.LASF1125
	.byte	0x30
	.byte	0x10
	.byte	0x53
	.long	0x2fe6
	.uleb128 0x8
	.long	.LASF1126
	.byte	0x10
	.byte	0x54
	.long	0x31b
	.byte	0
	.uleb128 0x8
	.long	.LASF1127
	.byte	0x10
	.byte	0x55
	.long	0x31b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1128
	.byte	0x10
	.byte	0x57
	.long	0x31b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF737
	.byte	0x10
	.byte	0x58
	.long	0x386
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1129
	.byte	0x10
	.byte	0x59
	.long	0x2f92
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1130
	.byte	0x10
	.byte	0x5a
	.long	0x2ff1
	.uleb128 0x3
	.byte	0x8
	.long	0x2f9d
	.uleb128 0x7
	.long	.LASF1131
	.byte	0x12
	.byte	0x29
	.long	0x326
	.uleb128 0x4
	.long	.LASF1132
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.long	0x303f
	.uleb128 0x8
	.long	.LASF944
	.byte	0x8
	.byte	0x2d
	.long	0x303f
	.byte	0
	.uleb128 0x8
	.long	.LASF685
	.byte	0x8
	.byte	0x2e
	.long	0x303f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF304
	.byte	0x8
	.byte	0x2f
	.long	0x30b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1133
	.byte	0x8
	.byte	0x30
	.long	0x3045
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3002
	.uleb128 0x14
	.long	0x326
	.long	0x3055
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1134
	.byte	0x8
	.byte	0x31
	.long	0x3002
	.uleb128 0x3
	.byte	0x8
	.long	0x3055
	.uleb128 0x7
	.long	.LASF1107
	.byte	0x8
	.byte	0x39
	.long	0xb19
	.uleb128 0x7
	.long	.LASF1135
	.byte	0x9
	.byte	0x21
	.long	0x3066
	.uleb128 0x7
	.long	.LASF1136
	.byte	0x9
	.byte	0x74
	.long	0x314
	.uleb128 0x4
	.long	.LASF1137
	.byte	0x40
	.byte	0x9
	.byte	0x77
	.long	0x3100
	.uleb128 0x8
	.long	.LASF1138
	.byte	0x9
	.byte	0x79
	.long	0x3100
	.byte	0
	.uleb128 0x8
	.long	.LASF1139
	.byte	0x9
	.byte	0x79
	.long	0x3100
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x9
	.byte	0x7c
	.long	0xbec
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x9
	.byte	0x7c
	.long	0xbec
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x9
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0x82
	.long	0x312
	.byte	0x28
	.uleb128 0x8
	.long	.LASF319
	.byte	0x9
	.byte	0x84
	.long	0x1de
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1142
	.byte	0x9
	.byte	0x85
	.long	0x1de
	.byte	0x34
	.uleb128 0x8
	.long	.LASF317
	.byte	0x9
	.byte	0x86
	.long	0x307c
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3087
	.uleb128 0x7
	.long	.LASF1143
	.byte	0x9
	.byte	0x88
	.long	0x3100
	.uleb128 0x7
	.long	.LASF1121
	.byte	0x9
	.byte	0xdb
	.long	0xbec
	.uleb128 0x7
	.long	.LASF1144
	.byte	0x13
	.byte	0x18
	.long	0x312
	.uleb128 0x4
	.long	.LASF1145
	.byte	0x18
	.byte	0x13
	.byte	0x1f
	.long	0x3158
	.uleb128 0x8
	.long	.LASF944
	.byte	0x13
	.byte	0x22
	.long	0x3158
	.byte	0
	.uleb128 0x6
	.string	"key"
	.byte	0x13
	.byte	0x24
	.long	0x311c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1146
	.byte	0x13
	.byte	0x27
	.long	0x326
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3127
	.uleb128 0x4
	.long	.LASF1147
	.byte	0x80
	.byte	0x13
	.byte	0x2c
	.long	0x31b3
	.uleb128 0x8
	.long	.LASF1148
	.byte	0x13
	.byte	0x2f
	.long	0x31b3
	.byte	0
	.uleb128 0x8
	.long	.LASF286
	.byte	0x13
	.byte	0x31
	.long	0x30b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1149
	.byte	0x13
	.byte	0x39
	.long	0x31d8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1146
	.byte	0x13
	.byte	0x3d
	.long	0x31ed
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1150
	.byte	0x13
	.byte	0x3f
	.long	0x3207
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1151
	.byte	0x13
	.byte	0x41
	.long	0x17c2
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3158
	.uleb128 0x21
	.long	0x3158
	.long	0x31d2
	.uleb128 0x22
	.long	0x3158
	.uleb128 0x22
	.long	0x31d2
	.uleb128 0x22
	.long	0x311c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x315e
	.uleb128 0x3
	.byte	0x8
	.long	0x31b9
	.uleb128 0x21
	.long	0x326
	.long	0x31ed
	.uleb128 0x22
	.long	0x311c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31de
	.uleb128 0x21
	.long	0x26b8
	.long	0x3207
	.uleb128 0x22
	.long	0x311c
	.uleb128 0x22
	.long	0x311c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31f3
	.uleb128 0x4
	.long	.LASF1152
	.byte	0x18
	.byte	0x1
	.byte	0xda
	.long	0x323e
	.uleb128 0x6
	.string	"old"
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"new"
	.byte	0x1
	.byte	0xdd
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF944
	.byte	0x1
	.byte	0xde
	.long	0x323e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x320d
	.uleb128 0x4
	.long	.LASF1153
	.byte	0x20
	.byte	0x1
	.byte	0xe1
	.long	0x3268
	.uleb128 0x6
	.string	"he"
	.byte	0x1
	.byte	0xe4
	.long	0x3127
	.byte	0
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x1
	.byte	0xe6
	.long	0x2d
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF1154
	.byte	0x18
	.byte	0x1
	.value	0xd0c
	.long	0x329c
	.uleb128 0x20
	.string	"ht"
	.byte	0x1
	.value	0xd10
	.long	0x31d2
	.byte	0
	.uleb128 0x11
	.long	.LASF1155
	.byte	0x1
	.value	0xd13
	.long	0x2d
	.byte	0x8
	.uleb128 0x11
	.long	.LASF1156
	.byte	0x1
	.value	0xd17
	.long	0x1de
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF1157
	.byte	0x28
	.byte	0x1
	.value	0x1c74
	.long	0x32eb
	.uleb128 0x11
	.long	.LASF1158
	.byte	0x1
	.value	0x1c76
	.long	0x2d
	.byte	0
	.uleb128 0x11
	.long	.LASF1159
	.byte	0x1
	.value	0x1c77
	.long	0x314
	.byte	0x8
	.uleb128 0x11
	.long	.LASF1160
	.byte	0x1
	.value	0x1c78
	.long	0x2d
	.byte	0x10
	.uleb128 0x11
	.long	.LASF1161
	.byte	0x1
	.value	0x1c79
	.long	0x314
	.byte	0x18
	.uleb128 0x11
	.long	.LASF1162
	.byte	0x1
	.value	0x1c7a
	.long	0x2d
	.byte	0x20
	.byte	0
	.uleb128 0x29
	.long	.LASF1171
	.byte	0x1
	.value	0x140
	.long	0x2187
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x333d
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x141
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x143
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x334d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13808
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x334d
	.uleb128 0x15
	.long	0x1e5
	.byte	0x12
	.byte	0
	.uleb128 0x16
	.long	0x333d
	.uleb128 0x2d
	.long	.LASF1164
	.byte	0x1
	.value	0x153
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ae
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0x154
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x156
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2f
	.long	.LASF1163
	.byte	0x1
	.value	0x15e
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF1167
	.byte	0x1
	.value	0x172
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1165
	.byte	0x1
	.value	0x17b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3433
	.uleb128 0x2a
	.long	.LASF743
	.byte	0x1
	.value	0x17c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x17e
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1166
	.byte	0x1
	.value	0x17f
	.long	0x273a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2f
	.long	.LASF25
	.byte	0x1
	.value	0x199
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF1168
	.byte	0x1
	.value	0x1ad
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1169
	.byte	0x1
	.value	0x1b7
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3479
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1b8
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1170
	.byte	0x1
	.value	0x1c9
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x34a5
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1ca
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF1172
	.byte	0x1
	.value	0x1fc
	.long	0x314
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x34d5
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1fd
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1309
	.byte	0x1
	.value	0x20a
	.long	0x314
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF1196
	.byte	0x1
	.value	0x21c
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x35de
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x21d
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x21e
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x1
	.value	0x21f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF749
	.byte	0x1
	.value	0x220
	.long	0x2187
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x222
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0x222
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1174
	.byte	0x1
	.value	0x223
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1175
	.byte	0x1
	.value	0x224
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF1176
	.byte	0x1
	.value	0x225
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1177
	.byte	0x1
	.value	0x225
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1178
	.byte	0x1
	.value	0x225
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x229
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF1179
	.byte	0x1
	.value	0x27b
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x362e
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x27c
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x27d
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x1
	.value	0x27e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1180
	.byte	0x1
	.value	0x295
	.long	0x2d
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x3736
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x296
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x297
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF978
	.byte	0x1
	.value	0x298
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x299
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF287
	.byte	0x1
	.value	0x29b
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x29c
	.long	0x2974
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1181
	.byte	0x1
	.value	0x29c
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF973
	.byte	0x1
	.value	0x29d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x3746
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13870
	.uleb128 0x35
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x3714
	.uleb128 0x2f
	.long	.LASF1175
	.byte	0x1
	.value	0x2c9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF1183
	.byte	0x1
	.value	0x2ca
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2f
	.long	.LASF1184
	.byte	0x1
	.value	0x2eb
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x3746
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.long	0x3736
	.uleb128 0x29
	.long	.LASF1185
	.byte	0x1
	.value	0x349
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x379b
	.uleb128 0x2a
	.long	.LASF1
	.byte	0x1
	.value	0x34a
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x34b
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.long	.LASF978
	.byte	0x1
	.value	0x34c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1186
	.byte	0x1
	.value	0x35c
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x386a
	.uleb128 0x2a
	.long	.LASF1187
	.byte	0x1
	.value	0x35d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF978
	.byte	0x1
	.value	0x35e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF1188
	.byte	0x1
	.value	0x35f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF1189
	.byte	0x1
	.value	0x360
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x362
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x362
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x363
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF943
	.byte	0x1
	.value	0x365
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.long	.LASF286
	.byte	0x1
	.value	0x374
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x375
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LASF1190
	.byte	0x1
	.value	0x3a3
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3912
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x3a5
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x3a5
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1191
	.byte	0x1
	.value	0x3a6
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1192
	.byte	0x1
	.value	0x3a6
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1193
	.byte	0x1
	.value	0x3a7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2f
	.long	.LASF1194
	.byte	0x1
	.value	0x3b7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2f
	.long	.LASF1195
	.byte	0x1
	.value	0x3bc
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF1197
	.byte	0x1
	.value	0x3e5
	.long	0x2974
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x395e
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x3e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x3e8
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x3e9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1198
	.byte	0x1
	.value	0x40f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a8
	.uleb128 0x31
	.string	"old"
	.byte	0x1
	.value	0x410
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"new"
	.byte	0x1
	.value	0x410
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x412
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1199
	.byte	0x1
	.value	0x448
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x39e1
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x449
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x44b
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1200
	.byte	0x1
	.value	0x464
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a39
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x465
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x467
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x48f
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1201
	.byte	0x1
	.value	0x4a9
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a72
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x4aa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4ac
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1202
	.byte	0x1
	.value	0x4c7
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a9e
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4c9
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1203
	.byte	0x1
	.value	0x4d6
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ad7
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x4d7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4d9
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1204
	.byte	0x1
	.value	0x4ef
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b03
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x4f1
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1205
	.byte	0x1
	.value	0x4fd
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1206
	.byte	0x1
	.value	0x52e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b49
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x530
	.long	0x2974
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1207
	.byte	0x1
	.value	0x53e
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1208
	.byte	0x1
	.value	0x54b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5e
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x54c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x54e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF942
	.byte	0x1
	.value	0x54f
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1209
	.byte	0x1
	.value	0x54f
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF749
	.byte	0x1
	.value	0x550
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF743
	.byte	0x1
	.value	0x551
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1210
	.byte	0x1
	.value	0x552
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1211
	.byte	0x1
	.value	0x553
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1212
	.byte	0x1
	.value	0x554
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2f
	.long	.LASF1213
	.byte	0x1
	.value	0x5a3
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1214
	.byte	0x1
	.value	0x5a4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1215
	.byte	0x1
	.value	0x5a5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1216
	.byte	0x1
	.value	0x5a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1221
	.byte	0x1
	.value	0x5da
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d34
	.uleb128 0x2a
	.long	.LASF749
	.byte	0x1
	.value	0x5dc
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x5dd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x5de
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x5df
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF1209
	.byte	0x1
	.value	0x5df
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF1217
	.byte	0x1
	.value	0x5e0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF1218
	.byte	0x1
	.value	0x5e1
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF1219
	.byte	0x1
	.value	0x5e2
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0x5e3
	.long	0x31d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF1220
	.byte	0x1
	.value	0x5e5
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x5e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x5e7
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x38
	.long	.LASF1222
	.byte	0x1
	.value	0x60e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dce
	.uleb128 0x2a
	.long	.LASF749
	.byte	0x1
	.value	0x60f
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x610
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x611
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x612
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0x613
	.long	0x31d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1223
	.byte	0x1
	.value	0x615
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0x619
	.long	0x273a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1224
	.byte	0x1
	.value	0x629
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eac
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x62a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x62b
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF943
	.byte	0x1
	.value	0x62c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF1225
	.byte	0x1
	.value	0x62e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0x62d
	.long	0x31d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1226
	.byte	0x1
	.value	0x630
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1227
	.byte	0x1
	.value	0x631
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1228
	.byte	0x1
	.value	0x632
	.long	0x277d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1229
	.byte	0x1
	.value	0x633
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x3ebc
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14035
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x651
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x3ebc
	.uleb128 0x15
	.long	0x1e5
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	0x3eac
	.uleb128 0x34
	.long	.LASF1230
	.byte	0x1
	.value	0x661
	.long	0x323e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f0d
	.uleb128 0x2a
	.long	.LASF1231
	.byte	0x1
	.value	0x662
	.long	0x3f0d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x663
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x665
	.long	0x323e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x323e
	.uleb128 0x38
	.long	.LASF1232
	.byte	0x1
	.value	0x67d
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff3
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x67e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x67f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x680
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF943
	.byte	0x1
	.value	0x681
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF1233
	.byte	0x1
	.value	0x682
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF1225
	.byte	0x1
	.value	0x683
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x689
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x692
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x698
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1234
	.byte	0x1
	.value	0x6b4
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x407a
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0x6b5
	.long	0x31d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x6b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x6b7
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF943
	.byte	0x1
	.value	0x6b8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1225
	.byte	0x1
	.value	0x6b9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"ime"
	.byte	0x1
	.value	0x6bb
	.long	0x407a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1235
	.byte	0x1
	.value	0x6be
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3244
	.uleb128 0x38
	.long	.LASF1236
	.byte	0x1
	.value	0x6ce
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x41f7
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x6cf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x6d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x6d1
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2a
	.long	.LASF943
	.byte	0x1
	.value	0x6d2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF1233
	.byte	0x1
	.value	0x6d3
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF1237
	.byte	0x1
	.value	0x6d4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF1238
	.byte	0x1
	.value	0x6d6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x6d7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF685
	.byte	0x1
	.value	0x6d7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1239
	.byte	0x1
	.value	0x6d7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1240
	.byte	0x1
	.value	0x6d8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2f
	.long	.LASF1231
	.byte	0x1
	.value	0x708
	.long	0x323e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1241
	.byte	0x1
	.value	0x709
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x41a3
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0x71e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x747
	.long	0x323e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2f
	.long	.LASF1242
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x74c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1243
	.byte	0x1
	.value	0x78c
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x45c5
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x78d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0x78e
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x31
	.string	"loc"
	.byte	0x1
	.value	0x78f
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x790
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2a
	.long	.LASF1231
	.byte	0x1
	.value	0x791
	.long	0x3f0d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2a
	.long	.LASF1237
	.byte	0x1
	.value	0x792
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x794
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x795
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x796
	.long	0x56a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0x797
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF1244
	.byte	0x1
	.value	0x798
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1245
	.byte	0x1
	.value	0x799
	.long	0x323e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x45d5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14125
	.uleb128 0x35
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x4359
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0x7a1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x7a5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x7a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1246
	.byte	0x1
	.value	0x7a6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x442d
	.uleb128 0x2f
	.long	.LASF1247
	.byte	0x1
	.value	0x834
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF1248
	.byte	0x1
	.value	0x835
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2b
	.string	"pos"
	.byte	0x1
	.value	0x836
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x35
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x43c4
	.uleb128 0x2f
	.long	.LASF1249
	.byte	0x1
	.value	0x83a
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x35
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x43ea
	.uleb128 0x2f
	.long	.LASF1249
	.byte	0x1
	.value	0x841
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x2e
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0x84b
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1250
	.byte	0x1
	.value	0x84c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1251
	.byte	0x1
	.value	0x84d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x45a4
	.uleb128 0x2f
	.long	.LASF1140
	.byte	0x1
	.value	0x8cd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x8ce
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1252
	.byte	0x1
	.value	0x8cf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x44fa
	.uleb128 0x2f
	.long	.LASF1247
	.byte	0x1
	.value	0x8fe
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x2f
	.long	.LASF1248
	.byte	0x1
	.value	0x8ff
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2b
	.string	"pos"
	.byte	0x1
	.value	0x900
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0x907
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1250
	.byte	0x1
	.value	0x908
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1251
	.byte	0x1
	.value	0x909
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x452e
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x947
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF946
	.byte	0x1
	.value	0x947
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x35
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x4562
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x98e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF946
	.byte	0x1
	.value	0x98e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0x9bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1253
	.byte	0x1
	.value	0x9be
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF1254
	.byte	0x1
	.value	0x9bf
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x9ea
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x45d5
	.uleb128 0x15
	.long	0x1e5
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	0x45c5
	.uleb128 0x34
	.long	.LASF1255
	.byte	0x1
	.value	0x9fd
	.long	0x2d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4697
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x9fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x9ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0xa00
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF1256
	.byte	0x1
	.value	0xa01
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xa03
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"mem"
	.byte	0x1
	.value	0xa04
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0xa05
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xa06
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF855
	.byte	0x1
	.value	0xa07
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x4697
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14187
	.byte	0
	.uleb128 0x16
	.long	0x376
	.uleb128 0x34
	.long	.LASF1257
	.byte	0x1
	.value	0xa29
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x4747
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xa2a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0xa2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF942
	.byte	0x1
	.value	0xa2c
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF1256
	.byte	0x1
	.value	0xa2d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xa2f
	.long	0x56a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xa30
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xa31
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xa45
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF1258
	.byte	0x1
	.value	0xa56
	.long	0x2d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4829
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xa57
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0xa58
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xa5a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xa5b
	.long	0x56a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xa5c
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.long	0x4808
	.uleb128 0x2b
	.string	"ad"
	.byte	0x1
	.value	0xa60
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0xa70
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xa70
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xa85
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1259
	.byte	0x1
	.value	0xa99
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4985
	.uleb128 0x2a
	.long	.LASF1260
	.byte	0x1
	.value	0xa9a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0xa9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF1261
	.byte	0x1
	.value	0xa9c
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1262
	.byte	0x1
	.value	0xa9e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1263
	.byte	0x1
	.value	0xa9f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xaa0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xaa1
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x4985
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14237
	.uleb128 0x2e
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2f
	.long	.LASF1264
	.byte	0x1
	.value	0xab2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xacc
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1141
	.byte	0x1
	.value	0xacd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x4940
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0xaef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2f
	.long	.LASF1140
	.byte	0x1
	.value	0xb03
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2f
	.long	.LASF1265
	.byte	0x1
	.value	0xb14
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x333d
	.uleb128 0x29
	.long	.LASF1266
	.byte	0x1
	.value	0xb69
	.long	0x2d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a29
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0xb6a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0xb6b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0xb6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0xb71
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xb7e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1209
	.byte	0x1
	.value	0xb7f
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1267
	.byte	0x1
	.value	0xb81
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1268
	.byte	0x1
	.value	0xb9d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a57
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0xb9e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1269
	.byte	0x1
	.value	0xbab
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4aef
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0xbac
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0xbad
	.long	0x31d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0xbaf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xbaf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1217
	.byte	0x1
	.value	0xbb0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1219
	.byte	0x1
	.value	0xbb0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0xbb2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x4aff
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14269
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x4aff
	.uleb128 0x15
	.long	0x1e5
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.long	0x4aef
	.uleb128 0x34
	.long	.LASF1270
	.byte	0x1
	.value	0xbdd
	.long	0x26b8
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d6b
	.uleb128 0x31
	.string	"loc"
	.byte	0x1
	.value	0xbde
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0xbdf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF1271
	.byte	0x1
	.value	0xbe0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.long	.LASF1272
	.byte	0x1
	.value	0xbe0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0xbe1
	.long	0x31d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0xbe3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xbe4
	.long	0x56a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xbe5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xbe5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xbe6
	.long	0x386
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF855
	.byte	0x1
	.value	0xbe7
	.long	0x26b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -149
	.uleb128 0x39
	.long	.LASF1273
	.byte	0x1
	.value	0xbea
	.quad	.L498
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x4d7b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14288
	.uleb128 0x39
	.long	.LASF1274
	.byte	0x1
	.value	0xcd6
	.quad	.L507
	.uleb128 0x35
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x4c38
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0xbfd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1141
	.byte	0x1
	.value	0xbfd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2e
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0xc1a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x4d47
	.uleb128 0x2f
	.long	.LASF1275
	.byte	0x1
	.value	0xc23
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1276
	.byte	0x1
	.value	0xc23
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x35
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x4cd3
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xc2a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2e
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2b
	.string	"z"
	.byte	0x1
	.value	0xc3b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2b
	.string	"val"
	.byte	0x1
	.value	0xc72
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xc72
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x4d26
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xc76
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0xc99
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0xcc2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x4d7b
	.uleb128 0x15
	.long	0x1e5
	.byte	0x11
	.byte	0
	.uleb128 0x16
	.long	0x4d6b
	.uleb128 0x34
	.long	.LASF1277
	.byte	0x1
	.value	0xce8
	.long	0x3158
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ddb
	.uleb128 0x31
	.string	"he"
	.byte	0x1
	.value	0xce9
	.long	0x3158
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0xcea
	.long	0x31d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.value	0xceb
	.long	0x311c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1278
	.byte	0x1
	.value	0xced
	.long	0x407a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1279
	.byte	0x1
	.value	0xcfb
	.long	0x326
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0b
	.uleb128 0x31
	.string	"k"
	.byte	0x1
	.value	0xcfc
	.long	0x311c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1280
	.byte	0x1
	.value	0xd05
	.long	0x26b8
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4a
	.uleb128 0x31
	.string	"k1"
	.byte	0x1
	.value	0xd06
	.long	0x311c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"k2"
	.byte	0x1
	.value	0xd07
	.long	0x311c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.long	.LASF1281
	.byte	0x1
	.value	0xd20
	.long	0x1de
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb9
	.uleb128 0x31
	.string	"r"
	.byte	0x1
	.value	0xd21
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1129
	.byte	0x1
	.value	0xd22
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1282
	.byte	0x1
	.value	0xd24
	.long	0x4eb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2f
	.long	.LASF1283
	.byte	0x1
	.value	0xd2d
	.long	0x407a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3268
	.uleb128 0x38
	.long	.LASF1284
	.byte	0x1
	.value	0xd42
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f2b
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0xd43
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1285
	.byte	0x1
	.value	0xd44
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x31
	.string	"ht"
	.byte	0x1
	.value	0xd45
	.long	0x31d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0xd47
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1282
	.byte	0x1
	.value	0xd48
	.long	0x3268
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3a
	.long	.LASF1286
	.byte	0x1
	.value	0xd58
	.long	0x1de
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f6c
	.uleb128 0x31
	.string	"rtl"
	.byte	0x1
	.value	0xd59
	.long	0xd94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF1129
	.byte	0x1
	.value	0xd5a
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF1287
	.byte	0x1
	.value	0xd64
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fef
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0xd65
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0xd67
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.string	"ht"
	.byte	0x1
	.value	0xd68
	.long	0x315e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x4fff
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14360
	.uleb128 0x2e
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2f
	.long	.LASF1240
	.byte	0x1
	.value	0xd85
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x4fff
	.uleb128 0x15
	.long	0x1e5
	.byte	0xf
	.byte	0
	.uleb128 0x16
	.long	0x4fef
	.uleb128 0x38
	.long	.LASF1288
	.byte	0x1
	.value	0xdad
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x505f
	.uleb128 0x2a
	.long	.LASF1289
	.byte	0x1
	.value	0xdae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0xdb0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xdb1
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xdb2
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF1290
	.byte	0x1
	.value	0xdce
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x50ee
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0xdcf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2f
	.long	.LASF1289
	.byte	0x1
	.value	0xdd5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xdde
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2f
	.long	.LASF1291
	.byte	0x1
	.value	0xde1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1292
	.byte	0x1
	.value	0xdf3
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x5147
	.uleb128 0x2a
	.long	.LASF1293
	.byte	0x1
	.value	0xdf4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0xdf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0xdf7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xdf8
	.long	0x30b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.long	.LASF1294
	.byte	0x1
	.value	0xe2e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x51c3
	.uleb128 0x2a
	.long	.LASF1293
	.byte	0x1
	.value	0xe2f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1295
	.byte	0x1
	.value	0xe30
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0xe32
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2f
	.long	.LASF286
	.byte	0x1
	.value	0xe37
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1296
	.byte	0x1
	.value	0xe38
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1297
	.byte	0x1
	.value	0xe4c
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x520d
	.uleb128 0x31
	.string	"let"
	.byte	0x1
	.value	0xe4d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1295
	.byte	0x1
	.value	0xe4e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0xe50
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x38
	.long	.LASF1298
	.byte	0x1
	.value	0xe64
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x5297
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xe65
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0xe66
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF1295
	.byte	0x1
	.value	0xe67
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xe69
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0xe6a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x2f
	.long	.LASF1299
	.byte	0x1
	.value	0xe86
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1300
	.byte	0x1
	.value	0xea5
	.long	0x2d
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x52f4
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0xea6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1301
	.byte	0x1
	.value	0xea7
	.long	0x52f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0xea9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xeaa
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x314
	.uleb128 0x34
	.long	.LASF1302
	.byte	0x1
	.value	0xecc
	.long	0x1de
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x544c
	.uleb128 0x31
	.string	"loc"
	.byte	0x1
	.value	0xecd
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF1303
	.byte	0x1
	.value	0xece
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2a
	.long	.LASF1304
	.byte	0x1
	.value	0xecf
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0xed1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xed2
	.long	0x56a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0xed3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0xed4
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0xed5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0xed6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0xed7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0xed7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.string	"fmt"
	.byte	0x1
	.value	0xed8
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x39
	.long	.LASF1273
	.byte	0x1
	.value	0xedb
	.quad	.L642
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x544c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14472
	.uleb128 0x35
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.long	0x541b
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0xefb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2e
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2b
	.string	"old"
	.byte	0x1
	.value	0xf23
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1305
	.byte	0x1
	.value	0xf23
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x3736
	.uleb128 0x38
	.long	.LASF1306
	.byte	0x1
	.value	0x104c
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x54df
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x104e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x54b0
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1057
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1307
	.byte	0x1
	.value	0x1057
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2f
	.long	.LASF1308
	.byte	0x1
	.value	0x106b
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x106c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF1310
	.byte	0x1
	.value	0x107d
	.long	0x1de
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF1311
	.byte	0x1
	.value	0x1085
	.long	0x2d
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF1312
	.byte	0x1
	.value	0x1090
	.long	0x2d
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x556f
	.uleb128 0x2f
	.long	.LASF1313
	.byte	0x1
	.value	0x1092
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1093
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x556f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14564
	.byte	0
	.uleb128 0x16
	.long	0x376
	.uleb128 0x29
	.long	.LASF1314
	.byte	0x1
	.value	0x10a4
	.long	0x1de
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x55ef
	.uleb128 0x31
	.string	"exp"
	.byte	0x1
	.value	0x10a5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x10a7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x10a7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x10a7
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x10a8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x10aa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF1315
	.byte	0x1
	.value	0x10cc
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b78
	.uleb128 0x2a
	.long	.LASF1293
	.byte	0x1
	.value	0x10cd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x2f
	.long	.LASF1316
	.byte	0x1
	.value	0x10cf
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF1317
	.byte	0x1
	.value	0x10d0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1318
	.byte	0x1
	.value	0x10d1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF1319
	.byte	0x1
	.value	0x10d2
	.long	0x2ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF942
	.byte	0x1
	.value	0x10d3
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x2f
	.long	.LASF1320
	.byte	0x1
	.value	0x10d3
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x2f
	.long	.LASF1321
	.byte	0x1
	.value	0x10d4
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x2f
	.long	.LASF1322
	.byte	0x1
	.value	0x10d4
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x2f
	.long	.LASF943
	.byte	0x1
	.value	0x10d5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x2f
	.long	.LASF1323
	.byte	0x1
	.value	0x10d8
	.long	0x2990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1324
	.byte	0x1
	.value	0x10d9
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF1325
	.byte	0x1
	.value	0x10da
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x2f
	.long	.LASF761
	.byte	0x1
	.value	0x10dc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x2f
	.long	.LASF1326
	.byte	0x1
	.value	0x10df
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2f
	.long	.LASF1327
	.byte	0x1
	.value	0x10e1
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x2f
	.long	.LASF1328
	.byte	0x1
	.value	0x10e3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x2f
	.long	.LASF1329
	.byte	0x1
	.value	0x10e4
	.long	0x2990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1330
	.byte	0x1
	.value	0x10e9
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x2f
	.long	.LASF819
	.byte	0x1
	.value	0x10f4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x3c
	.long	.LASF1182
	.long	0x5b88
	.uleb128 0x35
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x577b
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x1112
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x35
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.long	0x5b23
	.uleb128 0x2f
	.long	.LASF1331
	.byte	0x1
	.value	0x112a
	.long	0x2990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1332
	.byte	0x1
	.value	0x112b
	.long	0x2990
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1333
	.byte	0x1
	.value	0x112c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x2f
	.long	.LASF1334
	.byte	0x1
	.value	0x112d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x2f
	.long	.LASF1335
	.byte	0x1
	.value	0x112e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x2f
	.long	.LASF1336
	.byte	0x1
	.value	0x112f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2f
	.long	.LASF1337
	.byte	0x1
	.value	0x1130
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x2f
	.long	.LASF1338
	.byte	0x1
	.value	0x1131
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x2f
	.long	.LASF1339
	.byte	0x1
	.value	0x1131
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x35
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x5846
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1137
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x35
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x586c
	.uleb128 0x2f
	.long	.LASF1340
	.byte	0x1
	.value	0x11c7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x35
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x5892
	.uleb128 0x2f
	.long	.LASF56
	.byte	0x1
	.value	0x11e4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.byte	0
	.uleb128 0x35
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x58b8
	.uleb128 0x2b
	.string	"inc"
	.byte	0x1
	.value	0x121d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x35
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.long	0x58de
	.uleb128 0x2f
	.long	.LASF1341
	.byte	0x1
	.value	0x122c
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0
	.uleb128 0x35
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x5912
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x123f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x123f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.byte	0
	.uleb128 0x35
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x5938
	.uleb128 0x2f
	.long	.LASF1342
	.byte	0x1
	.value	0x1264
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.byte	0
	.uleb128 0x35
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x5abc
	.uleb128 0x2f
	.long	.LASF1343
	.byte	0x1
	.value	0x1296
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x1297
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x2f
	.long	.LASF1344
	.byte	0x1
	.value	0x1297
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x2f
	.long	.LASF1345
	.byte	0x1
	.value	0x1297
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x35
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x59b1
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x12a5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x35
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x59e7
	.uleb128 0x2f
	.long	.LASF1346
	.byte	0x1
	.value	0x12b4
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2f
	.long	.LASF1347
	.byte	0x1
	.value	0x12c8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x35
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x5a1d
	.uleb128 0x2f
	.long	.LASF1347
	.byte	0x1
	.value	0x12fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1223
	.byte	0x1
	.value	0x12fd
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x35
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x5a53
	.uleb128 0x2b
	.string	"new"
	.byte	0x1
	.value	0x1349
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1348
	.byte	0x1
	.value	0x134a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.byte	0
	.uleb128 0x35
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x5a79
	.uleb128 0x2f
	.long	.LASF1349
	.byte	0x1
	.value	0x1359
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.byte	0
	.uleb128 0x2e
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x2f
	.long	.LASF1350
	.byte	0x1
	.value	0x137c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1351
	.byte	0x1
	.value	0x137d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x137d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.long	0x5ae2
	.uleb128 0x2f
	.long	.LASF1347
	.byte	0x1
	.value	0x13b8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x2e
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2f
	.long	.LASF855
	.byte	0x1
	.value	0x13e6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0x13e7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x13e8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x2f
	.long	.LASF1352
	.byte	0x1
	.value	0x143a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1267
	.byte	0x1
	.value	0x143b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x2f
	.long	.LASF1353
	.byte	0x1
	.value	0x1441
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x5b88
	.uleb128 0x15
	.long	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.long	0x5b78
	.uleb128 0x2d
	.long	.LASF1354
	.byte	0x1
	.value	0x1499
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9d
	.uleb128 0x2a
	.long	.LASF1320
	.byte	0x1
	.value	0x149c
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2a
	.long	.LASF24
	.byte	0x1
	.value	0x149d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF1355
	.byte	0x1
	.value	0x149e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1293
	.byte	0x1
	.value	0x149f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF1356
	.byte	0x1
	.value	0x14a0
	.long	0x5c9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.long	.LASF1357
	.byte	0x1
	.value	0x14a1
	.long	0x5c9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF1358
	.byte	0x1
	.value	0x14a2
	.long	0x5c9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF1329
	.byte	0x1
	.value	0x14a3
	.long	0x5c9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF1359
	.byte	0x1
	.value	0x14a6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1360
	.byte	0x1
	.value	0x14a8
	.long	0x29b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.long	.LASF1361
	.byte	0x1
	.value	0x14a9
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x5c7b
	.uleb128 0x2f
	.long	.LASF1362
	.byte	0x1
	.value	0x14b0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2e
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2b
	.string	"inc"
	.byte	0x1
	.value	0x1504
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2990
	.uleb128 0x38
	.long	.LASF1363
	.byte	0x1
	.value	0x150c
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d1f
	.uleb128 0x2a
	.long	.LASF1357
	.byte	0x1
	.value	0x150d
	.long	0x5c9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1361
	.byte	0x1
	.value	0x150e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF1329
	.byte	0x1
	.value	0x150f
	.long	0x5c9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1364
	.byte	0x1
	.value	0x1511
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1365
	.byte	0x1
	.value	0x1512
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1366
	.byte	0x1
	.value	0x1514
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x38
	.long	.LASF1367
	.byte	0x1
	.value	0x1540
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x5dd4
	.uleb128 0x2a
	.long	.LASF1357
	.byte	0x1
	.value	0x1541
	.long	0x5c9d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1320
	.byte	0x1
	.value	0x1542
	.long	0x3ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF1359
	.byte	0x1
	.value	0x1543
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x2b
	.string	"s2"
	.byte	0x1
	.value	0x1553
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x5db1
	.uleb128 0x2b
	.string	"inc"
	.byte	0x1
	.value	0x1555
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2b
	.string	"dec"
	.byte	0x1
	.value	0x1556
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1368
	.byte	0x1
	.value	0x1562
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e20
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1563
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x1565
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0x1565
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1369
	.byte	0x1
	.value	0x158c
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e4e
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x158e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1370
	.byte	0x1
	.value	0x159c
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e9a
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x159d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x159f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"sub"
	.byte	0x1
	.value	0x159f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1371
	.byte	0x1
	.value	0x15bd
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ec8
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x15bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1372
	.byte	0x1
	.value	0x15d7
	.long	0x2d
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f2b
	.uleb128 0x2a
	.long	.LASF23
	.byte	0x1
	.value	0x15d8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF743
	.byte	0x1
	.value	0x15da
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1373
	.byte	0x1
	.value	0x15db
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x5f2b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14725
	.byte	0
	.uleb128 0x16
	.long	0x376
	.uleb128 0x29
	.long	.LASF1374
	.byte	0x1
	.value	0x15f4
	.long	0x2d
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x6017
	.uleb128 0x2a
	.long	.LASF1173
	.byte	0x1
	.value	0x15f5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x15f6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1375
	.byte	0x1
	.value	0x15f8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1376
	.byte	0x1
	.value	0x15f9
	.long	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF743
	.byte	0x1
	.value	0x15fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"fp"
	.byte	0x1
	.value	0x15fb
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1377
	.byte	0x1
	.value	0x15fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x6017
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14735
	.uleb128 0x35
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0x5ff5
	.uleb128 0x2f
	.long	.LASF1173
	.byte	0x1
	.value	0x161d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x2f
	.long	.LASF1373
	.byte	0x1
	.value	0x1630
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x45c5
	.uleb128 0x29
	.long	.LASF1378
	.byte	0x1
	.value	0x1647
	.long	0x2d
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x609a
	.uleb128 0x2a
	.long	.LASF749
	.byte	0x1
	.value	0x1648
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1373
	.byte	0x1
	.value	0x164a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1379
	.byte	0x1
	.value	0x164b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1380
	.byte	0x1
	.value	0x164c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"fp"
	.byte	0x1
	.value	0x164d
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1381
	.byte	0x1
	.value	0x164e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.long	.LASF1382
	.byte	0x1
	.value	0x1694
	.long	0x2d
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x60f9
	.uleb128 0x2a
	.long	.LASF1380
	.byte	0x1
	.value	0x1695
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0x1699
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1383
	.byte	0x1
	.value	0x169a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1384
	.byte	0x1
	.value	0x169b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1385
	.byte	0x1
	.value	0x16aa
	.long	0x2d
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x612b
	.uleb128 0x2a
	.long	.LASF1380
	.byte	0x1
	.value	0x16ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1386
	.byte	0x1
	.value	0x16bc
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x619f
	.uleb128 0x2f
	.long	.LASF1387
	.byte	0x1
	.value	0x16be
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1388
	.byte	0x1
	.value	0x16bf
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1389
	.byte	0x1
	.value	0x16bf
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1390
	.byte	0x1
	.value	0x16c0
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x16c1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.long	.LASF1182
	.long	0x619f
	.byte	0
	.uleb128 0x16
	.long	0x4fef
	.uleb128 0x34
	.long	.LASF1391
	.byte	0x1
	.value	0x16e0
	.long	0x26bf
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x6279
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0x16e1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1388
	.byte	0x1
	.value	0x16e2
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF1392
	.byte	0x1
	.value	0x16e3
	.long	0x26bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1393
	.byte	0x1
	.value	0x16e4
	.long	0x26bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x16e6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1390
	.byte	0x1
	.value	0x16e7
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x6279
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14784
	.uleb128 0x35
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x6258
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x16ef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x2b
	.string	"cp"
	.byte	0x1
	.value	0x1707
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x4d6b
	.uleb128 0x2d
	.long	.LASF1394
	.byte	0x1
	.value	0x1723
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x62bb
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x1725
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1390
	.byte	0x1
	.value	0x1726
	.long	0x2fe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.long	.LASF1395
	.byte	0x1
	.value	0x1741
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x62e9
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1742
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1396
	.byte	0x1
	.value	0x174d
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x63bc
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0x174e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF1397
	.byte	0x1
	.value	0x174f
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF1398
	.byte	0x1
	.value	0x1750
	.long	0x63bc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1752
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x639b
	.uleb128 0x2f
	.long	.LASF26
	.byte	0x1
	.value	0x175a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x2f
	.long	.LASF1399
	.byte	0x1
	.value	0x1760
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1400
	.byte	0x1
	.value	0x1761
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2b
	.string	"cp"
	.byte	0x1
	.value	0x1783
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2fe6
	.uleb128 0x38
	.long	.LASF1401
	.byte	0x1
	.value	0x1792
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x644f
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x1793
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x2f
	.long	.LASF1402
	.byte	0x1
	.value	0x1797
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF1403
	.byte	0x1
	.value	0x1798
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x2b
	.string	"pp"
	.byte	0x1
	.value	0x17b0
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF646
	.byte	0x1
	.value	0x17b1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1404
	.byte	0x1
	.value	0x17c9
	.long	0x123
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x64ac
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0x17ca
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF685
	.byte	0x1
	.value	0x17cc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x17cc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x17cc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF1405
	.byte	0x1
	.value	0x17dc
	.long	0x1de
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x64fc
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x17dd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF19
	.byte	0x1
	.value	0x17de
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1387
	.byte	0x1
	.value	0x17e0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x34
	.long	.LASF1406
	.byte	0x1
	.value	0x17fb
	.long	0x26bf
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x654c
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x17fc
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1407
	.byte	0x1
	.value	0x17fd
	.long	0x39f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1388
	.byte	0x1
	.value	0x17ff
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1408
	.byte	0x1
	.value	0x180d
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a4
	.uleb128 0x31
	.string	"fn"
	.byte	0x1
	.value	0x180e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1810
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF1387
	.byte	0x1
	.value	0x1811
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1388
	.byte	0x1
	.value	0x1812
	.long	0x26bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1409
	.byte	0x1
	.value	0x182b
	.long	0x123
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x6613
	.uleb128 0x31
	.string	"var"
	.byte	0x1
	.value	0x182c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF26
	.byte	0x1
	.value	0x182d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x182f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1837
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF1544
	.byte	0x1
	.value	0x1842
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF1410
	.byte	0x1
	.value	0x18c2
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1411
	.byte	0x1
	.value	0x18cc
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x6693
	.uleb128 0x2a
	.long	.LASF1412
	.byte	0x1
	.value	0x18cd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF827
	.byte	0x1
	.value	0x18ce
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF1413
	.byte	0x1
	.value	0x18cf
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x30
	.long	.LASF1414
	.byte	0x1
	.value	0x1900
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1415
	.byte	0x1
	.value	0x190e
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1416
	.byte	0x1
	.value	0x191b
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x6725
	.uleb128 0x2e
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x2f
	.long	.LASF287
	.byte	0x1
	.value	0x1920
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.value	0x1921
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1921
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF1417
	.byte	0x1
	.value	0x1950
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x6762
	.uleb128 0x2a
	.long	.LASF1418
	.byte	0x1
	.value	0x1951
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x1953
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1419
	.byte	0x1
	.value	0x1966
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x6884
	.uleb128 0x2a
	.long	.LASF1412
	.byte	0x1
	.value	0x1967
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.long	.LASF1420
	.byte	0x1
	.value	0x1968
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.string	"tem"
	.byte	0x1
	.value	0x196a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1421
	.byte	0x1
	.value	0x196b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x6894
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14915
	.uleb128 0x35
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x6818
	.uleb128 0x2f
	.long	.LASF1422
	.byte	0x1
	.value	0x199e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x19b4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x683d
	.uleb128 0x2f
	.long	.LASF1423
	.byte	0x1
	.value	0x19c4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x35
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0x6862
	.uleb128 0x2f
	.long	.LASF1379
	.byte	0x1
	.value	0x1a02
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x2b
	.string	"fun"
	.byte	0x1
	.value	0x1a1d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x6894
	.uleb128 0x15
	.long	0x1e5
	.byte	0x15
	.byte	0
	.uleb128 0x16
	.long	0x6884
	.uleb128 0x30
	.long	.LASF1424
	.byte	0x1
	.value	0x1a40
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1425
	.byte	0x1
	.value	0x1a52
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x693d
	.uleb128 0x2a
	.long	.LASF1426
	.byte	0x1
	.value	0x1a53
	.long	0x694d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.value	0x1a54
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1427
	.byte	0x1
	.value	0x1a56
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1a5f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x1a63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x694d
	.uleb128 0x22
	.long	0x2d
	.uleb128 0x22
	.long	0x312
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x693d
	.uleb128 0x38
	.long	.LASF1428
	.byte	0x1
	.value	0x1a6c
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x6990
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x1a6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.value	0x1a6e
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF1429
	.byte	0x1
	.value	0x1a74
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x69df
	.uleb128 0x2e
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x2f
	.long	.LASF1352
	.byte	0x1
	.value	0x1a7b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF1267
	.byte	0x1
	.value	0x1a7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1430
	.byte	0x1
	.value	0x1a85
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a1c
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0x1a86
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.value	0x1a87
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF1431
	.byte	0x1
	.value	0x1a8d
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.long	.LASF1432
	.byte	0x1
	.value	0x1a99
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c7e
	.uleb128 0x2a
	.long	.LASF827
	.byte	0x1
	.value	0x1a9a
	.long	0x386
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.long	.LASF1413
	.byte	0x1
	.value	0x1a9b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2a
	.long	.LASF1433
	.byte	0x1
	.value	0x1a9c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.long	.LASF1373
	.byte	0x1
	.value	0x1a9e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF1434
	.byte	0x1
	.value	0x1a9f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x6c7e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14974
	.uleb128 0x35
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.long	0x6b0d
	.uleb128 0x2f
	.long	.LASF749
	.byte	0x1
	.value	0x1abb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF743
	.byte	0x1
	.value	0x1abc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1380
	.byte	0x1
	.value	0x1abd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1ac1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x35
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x6b43
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1ae5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1ae5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x35
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.long	0x6b69
	.uleb128 0x2f
	.long	.LASF23
	.byte	0x1
	.value	0x1afb
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x35
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x6b8f
	.uleb128 0x2b
	.string	"fun"
	.byte	0x1
	.value	0x1b3d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x35
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.long	0x6c09
	.uleb128 0x2f
	.long	.LASF1352
	.byte	0x1
	.value	0x1b62
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1267
	.byte	0x1
	.value	0x1b63
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.uleb128 0x2f
	.long	.LASF1353
	.byte	0x1
	.value	0x1b69
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.uleb128 0x2f
	.long	.LASF943
	.byte	0x1
	.value	0x1b7b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.long	0x6c4d
	.uleb128 0x2f
	.long	.LASF1422
	.byte	0x1
	.value	0x1b95
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0x1b97
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1427
	.byte	0x1
	.value	0x1b9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1bb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1435
	.byte	0x1
	.value	0x1bb9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x376
	.uleb128 0x29
	.long	.LASF1436
	.byte	0x1
	.value	0x1bd7
	.long	0x2d
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ce3
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1bd8
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1bda
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1be4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1437
	.byte	0x1
	.value	0x1bfa
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d71
	.uleb128 0x2a
	.long	.LASF1141
	.byte	0x1
	.value	0x1bfb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF1438
	.byte	0x1
	.value	0x1bfc
	.long	0x63bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.long	0x6d51
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x1c00
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1c01
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1c0c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1439
	.byte	0x1
	.value	0x1c15
	.long	0x1de
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ded
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x1c16
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"vec"
	.byte	0x1
	.value	0x1c17
	.long	0x2fe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1c19
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1c19
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x2f
	.long	.LASF317
	.byte	0x1
	.value	0x1c1e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF1440
	.byte	0x1
	.value	0x1c2f
	.long	0x1de
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e1f
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x1c30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x29
	.long	.LASF1441
	.byte	0x1
	.value	0x1c3a
	.long	0x1de
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e51
	.uleb128 0x2a
	.long	.LASF1155
	.byte	0x1
	.value	0x1c3b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.long	.LASF1442
	.byte	0x1
	.value	0x1c47
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ea9
	.uleb128 0x31
	.string	"bb"
	.byte	0x1
	.value	0x1c48
	.long	0x3111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF1443
	.byte	0x1
	.value	0x1c49
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.string	"p"
	.byte	0x1
	.value	0x1c4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.string	"end"
	.byte	0x1
	.value	0x1c4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF1444
	.byte	0x1
	.value	0x1c86
	.long	0x2d
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fd1
	.uleb128 0x31
	.string	"seq"
	.byte	0x1
	.value	0x1c87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1c89
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x1c89
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x1c8a
	.long	0x329c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x6fe1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15052
	.uleb128 0x2e
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1c9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2e
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.uleb128 0x2f
	.long	.LASF1446
	.byte	0x1
	.value	0x1cb6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF1377
	.byte	0x1
	.value	0x1cb7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0x1cb8
	.long	0x314
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1447
	.byte	0x1
	.value	0x1cb9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1448
	.byte	0x1
	.value	0x1cb9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x1ce4
	.long	0x30b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2b
	.string	"reg"
	.byte	0x1
	.value	0x1ce5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x6fe1
	.uleb128 0x15
	.long	0x1e5
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.long	0x6fd1
	.uleb128 0x38
	.long	.LASF1449
	.byte	0x1
	.value	0x1d34
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x7034
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0x1d35
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1d36
	.long	0x7034
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x703a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15068
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x329c
	.uleb128 0x16
	.long	0x376
	.uleb128 0x38
	.long	.LASF1450
	.byte	0x1
	.value	0x1d78
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x706b
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1d79
	.long	0x7034
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1451
	.byte	0x1
	.value	0x1d87
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x7289
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1d88
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1452
	.byte	0x1
	.value	0x1d8a
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2b
	.string	"e"
	.byte	0x1
	.value	0x1d8b
	.long	0x3106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2b
	.string	"seq"
	.byte	0x1
	.value	0x1d8d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2f
	.long	.LASF1453
	.byte	0x1
	.value	0x1d90
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1454
	.byte	0x1
	.value	0x1d93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2c
	.long	.LASF1182
	.long	0x7299
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.15080
	.uleb128 0x39
	.long	.LASF1455
	.byte	0x1
	.value	0x1e4d
	.quad	.L1469
	.uleb128 0x35
	.quad	.LBB124
	.quad	.LBE124-.LBB124
	.long	0x71d3
	.uleb128 0x2f
	.long	.LASF946
	.byte	0x1
	.value	0x1dc2
	.long	0x3111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1456
	.byte	0x1
	.value	0x1dc3
	.long	0x3106
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1457
	.byte	0x1
	.value	0x1dc4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2e
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.uleb128 0x2f
	.long	.LASF1458
	.byte	0x1
	.value	0x1dd8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2e
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1de7
	.long	0x3111
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF2
	.byte	0x1
	.value	0x1de8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.uleb128 0x2b
	.string	"ret"
	.byte	0x1
	.value	0x1dfe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"loc"
	.byte	0x1
	.value	0x1dfe
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.long	0x7222
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x1e56
	.long	0x3111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1e57
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1e58
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1459
	.byte	0x1
	.value	0x1e59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.long	0x7257
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1e70
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF685
	.byte	0x1
	.value	0x1e70
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1ea8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x1ea8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x34f
	.long	0x7299
	.uleb128 0x15
	.long	0x1e5
	.byte	0x22
	.byte	0
	.uleb128 0x16
	.long	0x7289
	.uleb128 0x2d
	.long	.LASF1460
	.byte	0x1
	.value	0x1ebb
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x7328
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1ebc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1155
	.byte	0x1
	.value	0x1ebf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF946
	.byte	0x1
	.value	0x1ebf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1240
	.byte	0x1
	.value	0x1ebf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x1ec0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2e
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.uleb128 0x2f
	.long	.LASF944
	.byte	0x1
	.value	0x1eda
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1461
	.byte	0x1
	.value	0x1f1b
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x77d1
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x1f1c
	.long	0x2187
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x2b
	.string	"q"
	.byte	0x1
	.value	0x1f1e
	.long	0x273a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.value	0x1f1f
	.long	0x2974
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1f20
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2b
	.string	"r"
	.byte	0x1
	.value	0x1f21
	.long	0xd94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x35
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.long	0x73b2
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f26
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x35
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x73d8
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x35
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.long	0x73fe
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f2d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x35
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.long	0x7424
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f2e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x35
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.long	0x744a
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f2f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x35
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.long	0x7470
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f30
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x35
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.long	0x7496
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f31
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x35
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.long	0x74bc
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x35
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.long	0x74e2
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f33
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x35
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.long	0x7508
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f34
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x35
	.quad	.LBB142
	.quad	.LBE142-.LBB142
	.long	0x752e
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f35
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x35
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.long	0x7554
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f36
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x35
	.quad	.LBB144
	.quad	.LBE144-.LBB144
	.long	0x757a
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f37
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x35
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.long	0x75a0
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f38
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x35
	.quad	.LBB146
	.quad	.LBE146-.LBB146
	.long	0x75c6
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f39
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x35
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.long	0x75ec
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f3a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x35
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.long	0x7612
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f3b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x35
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.long	0x7638
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f3c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x35
	.quad	.LBB150
	.quad	.LBE150-.LBB150
	.long	0x765e
	.uleb128 0x2b
	.string	"a__"
	.byte	0x1
	.value	0x1f40
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x35
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.long	0x7684
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f41
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x35
	.quad	.LBB152
	.quad	.LBE152-.LBB152
	.long	0x76aa
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f42
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x35
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.long	0x76d0
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f43
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x35
	.quad	.LBB154
	.quad	.LBE154-.LBB154
	.long	0x76f6
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f44
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x35
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.long	0x771b
	.uleb128 0x2b
	.string	"a__"
	.byte	0x1
	.value	0x1f49
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LBB156
	.quad	.LBE156-.LBB156
	.long	0x7740
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f4a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x35
	.quad	.LBB157
	.quad	.LBE157-.LBB157
	.long	0x7765
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f4d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x35
	.quad	.LBB158
	.quad	.LBE158-.LBB158
	.long	0x778a
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.long	0x77af
	.uleb128 0x2b
	.string	"r__"
	.byte	0x1
	.value	0x1f4f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB160
	.quad	.LBE160-.LBB160
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f50
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF1462
	.byte	0x1
	.value	0x1f5a
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x780c
	.uleb128 0x31
	.string	"arg"
	.byte	0x1
	.value	0x1f5b
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x1f5d
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF1463
	.byte	0x1
	.value	0x1f68
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x78c8
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x1f69
	.long	0x2187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.long	0x785c
	.uleb128 0x2b
	.string	"a__"
	.byte	0x1
	.value	0x1f6b
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x35
	.quad	.LBB162
	.quad	.LBE162-.LBB162
	.long	0x7881
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f6c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x35
	.quad	.LBB163
	.quad	.LBE163-.LBB163
	.long	0x78a6
	.uleb128 0x2b
	.string	"v__"
	.byte	0x1
	.value	0x1f7b
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.quad	.LBB164
	.quad	.LBE164-.LBB164
	.uleb128 0x2b
	.string	"t__"
	.byte	0x1
	.value	0x1f7d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF1464
	.byte	0x1
	.value	0x1f85
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.long	.LASF796
	.byte	0x1
	.byte	0x7f
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	profile_label_no
	.uleb128 0x3e
	.long	.LASF1465
	.byte	0x1
	.byte	0x98
	.long	0x2fe6
	.uleb128 0x9
	.byte	0x3
	.quad	prologue
	.uleb128 0x3e
	.long	.LASF1466
	.byte	0x1
	.byte	0x99
	.long	0x2fe6
	.uleb128 0x9
	.byte	0x3
	.quad	epilogue
	.uleb128 0x3e
	.long	.LASF1467
	.byte	0x1
	.byte	0x9d
	.long	0x2fe6
	.uleb128 0x9
	.byte	0x3
	.quad	sibcall_epilogue
	.uleb128 0x2f
	.long	.LASF1468
	.byte	0x1
	.value	0x13a
	.long	0x2187
	.uleb128 0x9
	.byte	0x3
	.quad	outer_function_chain
	.uleb128 0x2f
	.long	.LASF1469
	.byte	0x1
	.value	0xb35
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	in_arg_offset
	.uleb128 0x2f
	.long	.LASF1470
	.byte	0x1
	.value	0xb36
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	var_offset
	.uleb128 0x2f
	.long	.LASF1471
	.byte	0x1
	.value	0xb37
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	dynamic_offset
	.uleb128 0x2f
	.long	.LASF1472
	.byte	0x1
	.value	0xb38
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	out_arg_offset
	.uleb128 0x2f
	.long	.LASF1473
	.byte	0x1
	.value	0xb39
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	cfa_offset
	.uleb128 0x2f
	.long	.LASF1474
	.byte	0x1
	.value	0xbcd
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	purge_bitfield_addressof_replacements
	.uleb128 0x2f
	.long	.LASF1475
	.byte	0x1
	.value	0xbd5
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	purge_addressof_replacements
	.uleb128 0x2f
	.long	.LASF1476
	.byte	0x1
	.value	0x1808
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	next_block_index
	.uleb128 0x3f
	.long	.LASF1477
	.byte	0x5
	.byte	0x62
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1478
	.byte	0x5
	.value	0xc38
	.long	0x1de
	.uleb128 0x14
	.long	0x521
	.long	0x7a23
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF136
	.byte	0x7
	.byte	0x34
	.long	0x7a2e
	.uleb128 0x16
	.long	0x7a13
	.uleb128 0x14
	.long	0x32d
	.long	0x7a43
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1479
	.byte	0x7
	.byte	0x50
	.long	0x7a4e
	.uleb128 0x16
	.long	0x7a33
	.uleb128 0x14
	.long	0x334
	.long	0x7a63
	.uleb128 0x15
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1480
	.byte	0x7
	.byte	0x60
	.long	0x7a6e
	.uleb128 0x16
	.long	0x7a53
	.uleb128 0x3f
	.long	.LASF1481
	.byte	0x7
	.byte	0x7b
	.long	0x7a7e
	.uleb128 0x16
	.long	0x7a33
	.uleb128 0x14
	.long	0x3ac
	.long	0x7a93
	.uleb128 0x15
	.long	0x1e5
	.byte	0x8
	.byte	0
	.uleb128 0x3f
	.long	.LASF1482
	.byte	0x7
	.byte	0x9d
	.long	0x7a9e
	.uleb128 0x16
	.long	0x7a83
	.uleb128 0x14
	.long	0x32d
	.long	0x7ab3
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1483
	.byte	0x2
	.byte	0x36
	.long	0x7abe
	.uleb128 0x16
	.long	0x7aa3
	.uleb128 0x14
	.long	0x386
	.long	0x7ad3
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1484
	.byte	0x2
	.byte	0x3c
	.long	0x7ade
	.uleb128 0x16
	.long	0x7ac3
	.uleb128 0x14
	.long	0x34f
	.long	0x7af3
	.uleb128 0x15
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1485
	.byte	0x2
	.byte	0x3f
	.long	0x7afe
	.uleb128 0x16
	.long	0x7ae3
	.uleb128 0x40
	.long	.LASF1486
	.byte	0x2
	.value	0x4bb
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1487
	.byte	0x2
	.value	0x4be
	.long	0x1de
	.uleb128 0x14
	.long	0x2d
	.long	0x7b2b
	.uleb128 0x15
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x40
	.long	.LASF1488
	.byte	0x2
	.value	0x611
	.long	0x7b1b
	.uleb128 0x14
	.long	0x2d
	.long	0x7b47
	.uleb128 0x15
	.long	0x1e5
	.byte	0xa
	.byte	0
	.uleb128 0x40
	.long	.LASF1489
	.byte	0x2
	.value	0x652
	.long	0x7b37
	.uleb128 0x40
	.long	.LASF1490
	.byte	0x2
	.value	0x662
	.long	0x2d
	.uleb128 0x40
	.long	.LASF1491
	.byte	0x2
	.value	0x664
	.long	0x2d
	.uleb128 0x40
	.long	.LASF1492
	.byte	0x2
	.value	0x6df
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1493
	.byte	0x2
	.value	0x848
	.long	0x2d
	.uleb128 0x14
	.long	0x34f
	.long	0x7b93
	.uleb128 0x15
	.long	0x1e5
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1494
	.byte	0x4
	.byte	0x31
	.long	0x7b83
	.uleb128 0x14
	.long	0x123
	.long	0x7bae
	.uleb128 0x15
	.long	0x1e5
	.byte	0x32
	.byte	0
	.uleb128 0x40
	.long	.LASF1495
	.byte	0x4
	.value	0x79b
	.long	0x7b9e
	.uleb128 0x14
	.long	0x123
	.long	0x7bca
	.uleb128 0x15
	.long	0x1e5
	.byte	0x5
	.byte	0
	.uleb128 0x40
	.long	.LASF1496
	.byte	0x4
	.value	0x97c
	.long	0x7bba
	.uleb128 0x40
	.long	.LASF1497
	.byte	0x4
	.value	0xa94
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1498
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x21
	.long	0x386
	.long	0x7c02
	.uleb128 0x22
	.long	0x123
	.uleb128 0x22
	.long	0x1de
	.byte	0
	.uleb128 0x40
	.long	.LASF1499
	.byte	0x4
	.value	0xaa9
	.long	0x7c0e
	.uleb128 0x3
	.byte	0x8
	.long	0x7bee
	.uleb128 0x3f
	.long	.LASF1500
	.byte	0x14
	.byte	0x3d
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1501
	.byte	0x14
	.byte	0x5b
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1502
	.byte	0x14
	.byte	0x65
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1503
	.byte	0x14
	.byte	0x73
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1504
	.byte	0x14
	.byte	0x9e
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1505
	.byte	0x14
	.byte	0xb3
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1506
	.byte	0x14
	.byte	0xbb
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1507
	.byte	0x14
	.byte	0xea
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1508
	.byte	0x14
	.byte	0xef
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1509
	.byte	0x14
	.byte	0xf4
	.long	0x1de
	.uleb128 0x3f
	.long	.LASF1510
	.byte	0x14
	.byte	0xfe
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1511
	.byte	0x14
	.value	0x12a
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1512
	.byte	0x14
	.value	0x1cd
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1513
	.byte	0x14
	.value	0x213
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1514
	.byte	0x14
	.value	0x217
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1515
	.byte	0x14
	.value	0x21d
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1516
	.byte	0x14
	.value	0x244
	.long	0x1de
	.uleb128 0x41
	.long	.LASF1517
	.byte	0x1
	.byte	0x95
	.long	0x2187
	.uleb128 0x9
	.byte	0x3
	.quad	cfun
	.uleb128 0x41
	.long	.LASF1518
	.byte	0x1
	.byte	0x7c
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	virtuals_instantiated
	.uleb128 0x41
	.long	.LASF1519
	.byte	0x1
	.byte	0x92
	.long	0x123
	.uleb128 0x9
	.byte	0x3
	.quad	inline_function_decl
	.uleb128 0x23
	.long	0x7d1f
	.uleb128 0x22
	.long	0x2187
	.byte	0
	.uleb128 0x41
	.long	.LASF1520
	.byte	0x1
	.byte	0x83
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	init_machine_status
	.uleb128 0x3
	.byte	0x8
	.long	0x7d14
	.uleb128 0x41
	.long	.LASF1521
	.byte	0x1
	.byte	0x84
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	free_machine_status
	.uleb128 0x41
	.long	.LASF1522
	.byte	0x1
	.byte	0x88
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	mark_machine_status
	.uleb128 0x41
	.long	.LASF1523
	.byte	0x1
	.byte	0x8b
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	init_lang_status
	.uleb128 0x41
	.long	.LASF1524
	.byte	0x1
	.byte	0x8e
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	mark_lang_status
	.uleb128 0x41
	.long	.LASF1525
	.byte	0x1
	.byte	0x8c
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	save_lang_status
	.uleb128 0x41
	.long	.LASF1526
	.byte	0x1
	.byte	0x8d
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	restore_lang_status
	.uleb128 0x41
	.long	.LASF1527
	.byte	0x1
	.byte	0x8f
	.long	0x7d34
	.uleb128 0x9
	.byte	0x3
	.quad	free_lang_status
	.uleb128 0x14
	.long	0x2d
	.long	0x7ddd
	.uleb128 0x15
	.long	0x1e5
	.byte	0x60
	.byte	0
	.uleb128 0x3f
	.long	.LASF1528
	.byte	0xf
	.byte	0x97
	.long	0x7dcd
	.uleb128 0x3f
	.long	.LASF1529
	.byte	0x11
	.byte	0x9d
	.long	0x7df3
	.uleb128 0x3
	.byte	0x8
	.long	0x342
	.uleb128 0x3f
	.long	.LASF1530
	.byte	0x11
	.byte	0xc9
	.long	0x1de
	.uleb128 0x14
	.long	0x34f
	.long	0x7e14
	.uleb128 0x15
	.long	0x1e5
	.byte	0x34
	.byte	0
	.uleb128 0x40
	.long	.LASF1531
	.byte	0x12
	.value	0x18b
	.long	0x7e04
	.uleb128 0x40
	.long	.LASF1532
	.byte	0x12
	.value	0x196
	.long	0x7e04
	.uleb128 0x40
	.long	.LASF1533
	.byte	0x12
	.value	0x1b9
	.long	0x2ff7
	.uleb128 0x41
	.long	.LASF1534
	.byte	0x1
	.byte	0x67
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_is_leaf
	.uleb128 0x41
	.long	.LASF1535
	.byte	0x1
	.byte	0x6c
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_nothrow
	.uleb128 0x41
	.long	.LASF1536
	.byte	0x1
	.byte	0x71
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_sp_is_unchanging
	.uleb128 0x41
	.long	.LASF1537
	.byte	0x1
	.byte	0x76
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	current_function_uses_only_leaf_regs
	.uleb128 0x3f
	.long	.LASF1538
	.byte	0x9
	.byte	0xec
	.long	0x2fe6
	.uleb128 0x14
	.long	0xb1f
	.long	0x7ea7
	.uleb128 0x15
	.long	0x1e5
	.byte	0x1
	.byte	0
	.uleb128 0x40
	.long	.LASF1539
	.byte	0x9
	.value	0x116
	.long	0x7e97
	.uleb128 0x3f
	.long	.LASF1540
	.byte	0x15
	.byte	0x2f
	.long	0x2fe6
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x33
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
.LASF901:
	.string	"TI_UV8HI_TYPE"
.LASF337:
	.string	"REG_BR_PROB"
.LASF906:
	.string	"TI_UV16QI_TYPE"
.LASF367:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF796:
	.string	"profile_label_no"
.LASF294:
	.string	"rtstr"
.LASF921:
	.string	"itk_unsigned_char"
.LASF455:
	.string	"WITH_CLEANUP_EXPR"
.LASF445:
	.string	"VTABLE_REF"
.LASF354:
	.string	"NOTE_INSN_DELETED"
.LASF603:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF1490:
	.string	"struct_value_incoming_rtx"
.LASF220:
	.string	"UMOD"
.LASF274:
	.string	"min_align"
.LASF532:
	.string	"POSTINCREMENT_EXPR"
.LASF1470:
	.string	"var_offset"
.LASF553:
	.string	"BUILT_IN_FABSF"
.LASF468:
	.string	"FLOOR_MOD_EXPR"
.LASF1319:
	.string	"args_so_far"
.LASF1035:
	.string	"LTI_nesf2"
.LASF1102:
	.string	"varray_data_tag"
.LASF35:
	.string	"AD_REGS"
.LASF1075:
	.string	"LTI_fixsfdi"
.LASF302:
	.string	"first"
.LASF913:
	.string	"TI_V2SI_TYPE"
.LASF790:
	.string	"inlinable"
.LASF1175:
	.string	"alignment"
.LASF822:
	.string	"uses_const_pool"
.LASF1222:
	.string	"schedule_fixup_var_refs"
.LASF1231:
	.string	"replacements"
.LASF874:
	.string	"TI_UINTSI_TYPE"
.LASF261:
	.string	"CONSTANT_P_RTX"
.LASF1161:
	.string	"new_sp_offset"
.LASF721:
	.string	"tree_type"
.LASF485:
	.string	"RROTATE_EXPR"
.LASF1479:
	.string	"mode_size"
.LASF1408:
	.string	"number_blocks"
.LASF521:
	.string	"ADDR_EXPR"
.LASF1077:
	.string	"LTI_fixdfsi"
.LASF1046:
	.string	"LTI_ledf2"
.LASF1096:
	.string	"LTI_fixunstfdi"
.LASF944:
	.string	"next"
.LASF26:
	.string	"block"
.LASF1067:
	.string	"LTI_floattidf"
.LASF931:
	.string	"_Bool"
.LASF1474:
	.string	"purge_bitfield_addressof_replacements"
.LASF293:
	.string	"rtuint"
.LASF850:
	.string	"pure_flag"
.LASF1154:
	.string	"insns_for_mem_walk_info"
.LASF297:
	.string	"rt_cselib"
.LASF1521:
	.string	"free_machine_status"
.LASF164:
	.string	"DEFINE_PEEPHOLE2"
.LASF651:
	.string	"readonly_flag"
.LASF12:
	.string	"rtvec_def"
.LASF1419:
	.string	"expand_function_start"
.LASF795:
	.string	"inl_max_label_num"
.LASF1297:
	.string	"instantiate_decls_1"
.LASF510:
	.string	"IN_EXPR"
.LASF224:
	.string	"LSHIFTRT"
.LASF16:
	.string	"common"
.LASF1039:
	.string	"LTI_lesf2"
.LASF1447:
	.string	"jump_insn"
.LASF637:
	.string	"BUILT_IN_EH_RETURN"
.LASF158:
	.string	"MATCH_PAR_DUP"
.LASF1543:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1079:
	.string	"LTI_fixdfti"
.LASF1339:
	.string	"named_arg"
.LASF219:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF873:
	.string	"TI_UINTHI_TYPE"
.LASF493:
	.string	"TRUTH_AND_EXPR"
.LASF1047:
	.string	"LTI_unorddf2"
.LASF812:
	.string	"contains_functions"
.LASF576:
	.string	"BUILT_IN_STRCPY"
.LASF1495:
	.string	"global_trees"
.LASF647:
	.string	"side_effects_flag"
.LASF1507:
	.string	"flag_pcc_struct_return"
.LASF1205:
	.string	"push_temp_slots"
.LASF152:
	.string	"MATCH_OPERAND"
.LASF1170:
	.string	"free_after_compilation"
.LASF893:
	.string	"TI_VOID_TYPE"
.LASF133:
	.string	"CCFPmode"
.LASF639:
	.string	"BUILT_IN_VARARGS_START"
.LASF1318:
	.string	"stack_parm"
.LASF680:
	.string	"imag"
.LASF74:
	.string	"reg_class"
.LASF537:
	.string	"LABEL_EXPR"
.LASF241:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF279:
	.string	"max_after_base"
.LASF679:
	.string	"real"
.LASF880:
	.string	"TI_NULL_POINTER"
.LASF1208:
	.string	"put_var_into_stack"
.LASF242:
	.string	"UNLT"
.LASF1209:
	.string	"decl_mode"
.LASF417:
	.string	"FILE_TYPE"
.LASF719:
	.string	"fragment_chain"
.LASF675:
	.string	"tree_string"
.LASF501:
	.string	"EQ_EXPR"
.LASF727:
	.string	"no_force_blk_flag"
.LASF1058:
	.string	"LTI_getf2"
.LASF823:
	.string	"uses_pic_offset_table"
.LASF718:
	.string	"fragment_origin"
.LASF971:
	.string	"initial_value_struct"
.LASF909:
	.string	"TI_V4SI_TYPE"
.LASF412:
	.string	"CHAR_TYPE"
.LASF616:
	.string	"BUILT_IN_FWRITE"
.LASF1142:
	.string	"probability"
.LASF105:
	.string	"CTImode"
.LASF657:
	.string	"static_flag"
.LASF1290:
	.string	"purge_hard_subreg_sets"
.LASF495:
	.string	"TRUTH_XOR_EXPR"
.LASF1201:
	.string	"preserve_rtl_expr_result"
.LASF841:
	.string	"static_dtor_flag"
.LASF676:
	.string	"length"
.LASF457:
	.string	"PLACEHOLDER_EXPR"
.LASF747:
	.string	"lang_type"
.LASF490:
	.string	"BIT_NOT_EXPR"
.LASF1370:
	.string	"setjmp_protect"
.LASF1377:
	.string	"base"
.LASF699:
	.string	"maybe_empty_object"
.LASF1542:
	.string	"function.c"
.LASF1404:
	.string	"blocks_nreverse"
.LASF1327:
	.string	"varargs_setup"
.LASF1055:
	.string	"LTI_eqtf2"
.LASF658:
	.string	"public_flag"
.LASF476:
	.string	"FLOAT_EXPR"
.LASF832:
	.string	"inline_flag"
.LASF1344:
	.string	"regnoi"
.LASF1146:
	.string	"hash"
.LASF883:
	.string	"TI_BITSIZE_ZERO"
.LASF1345:
	.string	"regnor"
.LASF435:
	.string	"PARM_DECL"
.LASF103:
	.string	"CSImode"
.LASF1217:
	.string	"volatile_p"
.LASF41:
	.string	"FP_TOP_REG"
.LASF595:
	.string	"BUILT_IN_COSL"
.LASF263:
	.string	"VEC_MERGE"
.LASF793:
	.string	"original_decl_initial"
.LASF976:
	.string	"addr_taken"
.LASF526:
	.string	"CONJ_EXPR"
.LASF1156:
	.string	"pass"
.LASF1104:
	.string	"uhint"
.LASF196:
	.string	"RETURN"
.LASF566:
	.string	"BUILT_IN_BZERO"
.LASF1497:
	.string	"immediate_size_expand"
.LASF542:
	.string	"LABELED_BLOCK_EXPR"
.LASF1105:
	.string	"generic"
.LASF599:
	.string	"BUILT_IN_ARGS_INFO"
.LASF1042:
	.string	"LTI_nedf2"
.LASF1539:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF974:
	.string	"rtl_expr"
.LASF1229:
	.string	"rtl_exps"
.LASF1169:
	.string	"free_after_parsing"
.LASF139:
	.string	"MODE_FLOAT"
.LASF572:
	.string	"BUILT_IN_MEMCMP"
.LASF614:
	.string	"BUILT_IN_FPUTC"
.LASF606:
	.string	"BUILT_IN_RETURN"
.LASF1444:
	.string	"keep_stack_depressed"
.LASF1232:
	.string	"fixup_var_refs_insns"
.LASF654:
	.string	"unused_0"
.LASF670:
	.string	"unused_1"
.LASF871:
	.string	"TI_INTTI_TYPE"
.LASF615:
	.string	"BUILT_IN_FPUTS"
.LASF543:
	.string	"EXIT_BLOCK_EXPR"
.LASF1052:
	.string	"LTI_ltxf2"
.LASF283:
	.string	"alias"
.LASF280:
	.string	"offset_unsigned"
.LASF109:
	.string	"V2SImode"
.LASF1412:
	.string	"subr"
.LASF621:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF819:
	.string	"stdarg"
.LASF780:
	.string	"x_trampoline_list"
.LASF1261:
	.string	"equiv_mem"
.LASF1210:
	.string	"can_use_addressof"
.LASF1056:
	.string	"LTI_netf2"
.LASF414:
	.string	"OFFSET_TYPE"
.LASF890:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF541:
	.string	"LOOP_EXPR"
.LASF183:
	.string	"CODE_LABEL"
.LASF622:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF104:
	.string	"CDImode"
.LASF189:
	.string	"UNSPEC"
.LASF533:
	.string	"VA_ARG_EXPR"
.LASF588:
	.string	"BUILT_IN_SIN"
.LASF182:
	.string	"BARRIER"
.LASF896:
	.string	"TI_PTRDIFF_TYPE"
.LASF360:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF185:
	.string	"COND_EXEC"
.LASF1384:
	.string	"mask"
.LASF199:
	.string	"CONST_INT"
.LASF195:
	.string	"CALL"
.LASF61:
	.string	"maybe_vaarg"
.LASF801:
	.string	"epilogue_delay_list"
.LASF852:
	.string	"uninlinable"
.LASF450:
	.string	"TARGET_EXPR"
.LASF1505:
	.string	"profile_flag"
.LASF1331:
	.string	"stack_offset"
.LASF111:
	.string	"V4QImode"
.LASF1328:
	.string	"conversion_insns"
.LASF174:
	.string	"ATTR"
.LASF635:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF317:
	.string	"count"
.LASF1286:
	.string	"is_addressof"
.LASF295:
	.string	"rttype"
.LASF1303:
	.string	"object"
.LASF1337:
	.string	"pretend_named"
.LASF1484:
	.string	"rtx_format"
.LASF1451:
	.string	"thread_prologue_and_epilogue_insns"
.LASF1346:
	.string	"save_tree_used"
.LASF30:
	.string	"DREG"
.LASF1023:
	.string	"LTI_setjmp"
.LASF307:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF384:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF722:
	.string	"values"
.LASF672:
	.string	"tree_int_cst"
.LASF1482:
	.string	"class_narrowest_mode"
.LASF1263:
	.string	"destflag"
.LASF1442:
	.string	"emit_return_into_block"
.LASF1224:
	.string	"fixup_var_refs"
.LASF591:
	.string	"BUILT_IN_SINF"
.LASF110:
	.string	"V2DImode"
.LASF770:
	.string	"x_return_label"
.LASF594:
	.string	"BUILT_IN_SINL"
.LASF391:
	.string	"LCT_CONST"
.LASF1059:
	.string	"LTI_lttf2"
.LASF471:
	.string	"EXACT_DIV_EXPR"
.LASF1130:
	.string	"varray_type"
.LASF288:
	.string	"mem_attrs"
.LASF1439:
	.string	"contains"
.LASF1116:
	.string	"refs"
.LASF331:
	.string	"REG_UNUSED"
.LASF1183:
	.string	"rounded_size"
.LASF167:
	.string	"DEFINE_DELAY"
.LASF217:
	.string	"MINUS"
.LASF777:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF1008:
	.string	"LTI_truncdfsf2"
.LASF1307:
	.string	"last_t"
.LASF508:
	.string	"UNGE_EXPR"
.LASF1110:
	.string	"sched_info_tag"
.LASF571:
	.string	"BUILT_IN_MEMCPY"
.LASF1375:
	.string	"basereg"
.LASF438:
	.string	"NAMESPACE_DECL"
.LASF1141:
	.string	"insns"
.LASF207:
	.string	"STRICT_LOW_PART"
.LASF1057:
	.string	"LTI_gttf2"
.LASF1233:
	.string	"toplevel"
.LASF1499:
	.string	"decl_printable_name"
.LASF959:
	.string	"x_regno_reg_rtx"
.LASF149:
	.string	"INCLUDE"
.LASF1383:
	.string	"addend"
.LASF380:
	.string	"GR_FRAME_POINTER"
.LASF646:
	.string	"chain"
.LASF315:
	.string	"index"
.LASF1117:
	.string	"freq"
.LASF245:
	.string	"ZERO_EXTEND"
.LASF600:
	.string	"BUILT_IN_CONSTANT_P"
.LASF248:
	.string	"FLOAT_TRUNCATE"
.LASF966:
	.string	"x_forced_labels"
.LASF626:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF632:
	.string	"BUILT_IN_DWARF_CFA"
.LASF423:
	.string	"FUNCTION_TYPE"
.LASF826:
	.string	"tree_decl"
.LASF1382:
	.string	"round_trampoline_addr"
.LASF377:
	.string	"GR_PC"
.LASF32:
	.string	"BREG"
.LASF120:
	.string	"V2SFmode"
.LASF1124:
	.string	"varray_data"
.LASF981:
	.string	"machine_function"
.LASF249:
	.string	"FLOAT"
.LASF1045:
	.string	"LTI_ltdf2"
.LASF343:
	.string	"REG_EH_CONTEXT"
.LASF75:
	.string	"machine_mode"
.LASF1433:
	.string	"end_bindings"
.LASF422:
	.string	"QUAL_UNION_TYPE"
.LASF1464:
	.string	"init_function_once"
.LASF689:
	.string	"chunk"
.LASF300:
	.string	"rtmem"
.LASF789:
	.string	"fixup_var_refs_queue"
.LASF1226:
	.string	"pending"
.LASF1189:
	.string	"dont_promote"
.LASF258:
	.string	"RANGE_REG"
.LASF298:
	.string	"rtbit"
.LASF538:
	.string	"GOTO_EXPR"
.LASF1132:
	.string	"bitmap_element_def"
.LASF1143:
	.string	"edge"
.LASF3:
	.string	"call"
.LASF82:
	.string	"TImode"
.LASF234:
	.string	"PRE_MODIFY"
.LASF1418:
	.string	"pending_sizes"
.LASF1340:
	.string	"offset_rtx"
.LASF394:
	.string	"LCT_PURE_MAKE_BLOCK"
.LASF804:
	.string	"returns_pointer"
.LASF1390:
	.string	"block_stack"
.LASF484:
	.string	"LROTATE_EXPR"
.LASF673:
	.string	"realvaluetype"
.LASF1489:
	.string	"global_rtl"
.LASF1292:
	.string	"instantiate_virtual_regs"
.LASF1185:
	.string	"assign_stack_temp"
.LASF247:
	.string	"FLOAT_EXTEND"
.LASF569:
	.string	"BUILT_IN_INDEX"
.LASF998:
	.string	"extraction_pattern"
.LASF443:
	.string	"ARRAY_REF"
.LASF1016:
	.string	"LTI_bcopy"
.LASF515:
	.string	"NOP_EXPR"
.LASF750:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF1536:
	.string	"current_function_sp_is_unchanging"
.LASF355:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF1203:
	.string	"free_temps_for_rtl_expr"
.LASF80:
	.string	"SImode"
.LASF191:
	.string	"ADDR_VEC"
.LASF969:
	.string	"stmt_status"
.LASF1431:
	.string	"use_return_register"
.LASF121:
	.string	"V2DFmode"
.LASF469:
	.string	"ROUND_MOD_EXPR"
.LASF1486:
	.string	"rtx_equal_function_value_matters"
.LASF273:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF660:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF304:
	.string	"indx"
.LASF1145:
	.string	"hash_entry"
.LASF797:
	.string	"machine"
.LASF1535:
	.string	"current_function_nothrow"
.LASF1244:
	.string	"tem1"
.LASF465:
	.string	"ROUND_DIV_EXPR"
.LASF1528:
	.string	"libfunc_table"
.LASF210:
	.string	"SYMBOL_REF"
.LASF353:
	.string	"NOTE_INSN_BIAS"
.LASF1362:
	.string	"reg_parm_stack_space"
.LASF108:
	.string	"V2HImode"
.LASF864:
	.string	"lang_decl"
.LASF480:
	.string	"ABS_EXPR"
.LASF375:
	.string	"NOTE_INSN_MAX"
.LASF964:
	.string	"x_saveregs_value"
.LASF1033:
	.string	"LTI_unordhf2"
.LASF1234:
	.string	"fixup_var_refs_insns_with_hash"
.LASF713:
	.string	"block_num"
.LASF1278:
	.string	"ifmhe"
.LASF1438:
	.string	"vecp"
.LASF163:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF1312:
	.string	"get_first_block_beg"
.LASF1371:
	.string	"setjmp_protect_args"
.LASF215:
	.string	"COMPARE"
.LASF243:
	.string	"LTGT"
.LASF707:
	.string	"tree_exp"
.LASF1259:
	.string	"optimize_bit_field"
.LASF1473:
	.string	"cfa_offset"
.LASF693:
	.string	"temp"
.LASF943:
	.string	"unsignedp"
.LASF255:
	.string	"HIGH"
.LASF212:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1421:
	.string	"last_ptr"
.LASF1:
	.string	"mode"
.LASF81:
	.string	"DImode"
.LASF683:
	.string	"_obstack_chunk"
.LASF492:
	.string	"TRUTH_ORIF_EXPR"
.LASF549:
	.string	"BUILT_IN_ALLOCA"
.LASF1347:
	.string	"tempreg"
.LASF1496:
	.string	"sizetype_tab"
.LASF1275:
	.string	"size_x"
.LASF1204:
	.string	"mark_all_temps_used"
.LASF1101:
	.string	"const_equiv_data"
.LASF763:
	.string	"hard_reg_initial_vals"
.LASF999:
	.string	"EP_insv"
.LASF1407:
	.string	"n_blocks_p"
.LASF962:
	.string	"x_inhibit_defer_pop"
.LASF927:
	.string	"itk_unsigned_long"
.LASF116:
	.string	"V8HImode"
.LASF1040:
	.string	"LTI_unordsf2"
.LASF1181:
	.string	"best_p"
.LASF1454:
	.string	"epilogue_end"
.LASF1445:
	.string	"info"
.LASF233:
	.string	"POST_INC"
.LASF454:
	.string	"METHOD_CALL_EXPR"
.LASF1492:
	.string	"cse_not_expected"
.LASF876:
	.string	"TI_UINTTI_TYPE"
.LASF1513:
	.string	"flag_strict_aliasing"
.LASF1285:
	.string	"last_insn"
.LASF1020:
	.string	"LTI_bzero"
.LASF840:
	.string	"static_ctor_flag"
.LASF984:
	.string	"direction"
.LASF94:
	.string	"TFmode"
.LASF1242:
	.string	"insert_before"
.LASF420:
	.string	"RECORD_TYPE"
.LASF67:
	.string	"unsigned char"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF652:
	.string	"unsigned_flag"
.LASF1172:
	.string	"get_func_frame_size"
.LASF854:
	.string	"arguments"
.LASF762:
	.string	"cannot_inline"
.LASF1480:
	.string	"mode_bitsize"
.LASF895:
	.string	"TI_CONST_PTR_TYPE"
.LASF1526:
	.string	"restore_lang_status"
.LASF1525:
	.string	"save_lang_status"
.LASF1308:
	.string	"can_delete"
.LASF928:
	.string	"itk_long_long"
.LASF688:
	.string	"chunk_size"
.LASF1206:
	.string	"pop_temp_slots"
.LASF1121:
	.string	"basic_block"
.LASF77:
	.string	"BImode"
.LASF231:
	.string	"PRE_INC"
.LASF330:
	.string	"REG_NO_CONFLICT"
.LASF91:
	.string	"SFmode"
.LASF751:
	.string	"emit"
.LASF730:
	.string	"packed_flag"
.LASF1326:
	.string	"function_result_decl"
.LASF486:
	.string	"BIT_IOR_EXPR"
.LASF550:
	.string	"BUILT_IN_ABS"
.LASF432:
	.string	"CONST_DECL"
.LASF674:
	.string	"tree_real_cst"
.LASF1074:
	.string	"LTI_fixsfsi"
.LASF1002:
	.string	"libfunc_index"
.LASF437:
	.string	"FIELD_DECL"
.LASF1385:
	.string	"adjust_trampoline_addr"
.LASF180:
	.string	"JUMP_INSN"
.LASF312:
	.string	"cond_local_set"
.LASF1348:
	.string	"old_max_parm_reg"
.LASF923:
	.string	"itk_unsigned_short"
.LASF397:
	.string	"LCT_ALWAYS_RETURN"
.LASF560:
	.string	"BUILT_IN_CREAL"
.LASF143:
	.string	"MODE_COMPLEX_FLOAT"
.LASF299:
	.string	"rttree"
.LASF831:
	.string	"regdecl_flag"
.LASF1038:
	.string	"LTI_ltsf2"
.LASF1365:
	.string	"save_constant"
.LASF556:
	.string	"BUILT_IN_IMAXABS"
.LASF1300:
	.string	"instantiate_new_reg"
.LASF411:
	.string	"BOOLEAN_TYPE"
.LASF1113:
	.string	"last_uid"
.LASF1095:
	.string	"LTI_fixunstfsi"
.LASF690:
	.string	"object_base"
.LASF352:
	.string	"insn_note"
.LASF1064:
	.string	"LTI_floattisf"
.LASF371:
	.string	"NOTE_INSN_RANGE_END"
.LASF162:
	.string	"DEFINE_SPLIT"
.LASF1504:
	.string	"warn_aggregate_return"
.LASF811:
	.string	"has_nonlocal_goto"
.LASF825:
	.string	"arg_pointer_save_area_init"
.LASF625:
	.string	"BUILT_IN_ISGREATER"
.LASF1544:
	.string	"prepare_function_start"
.LASF1436:
	.string	"get_arg_pointer_save_area"
.LASF609:
	.string	"BUILT_IN_TRAP"
.LASF201:
	.string	"CONST_VECTOR"
.LASF518:
	.string	"SAVE_EXPR"
.LASF159:
	.string	"MATCH_INSN"
.LASF671:
	.string	"high"
.LASF1078:
	.string	"LTI_fixdfdi"
.LASF912:
	.string	"TI_V4HI_TYPE"
.LASF771:
	.string	"x_save_expr_regs"
.LASF92:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF1136:
	.string	"gcov_type"
.LASF65:
	.string	"size_t"
.LASF1022:
	.string	"LTI_eh_personality"
.LASF193:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF754:
	.string	"pops_args"
.LASF86:
	.string	"PSImode"
.LASF1017:
	.string	"LTI_memcmp"
.LASF1248:
	.string	"is_mode"
.LASF773:
	.string	"x_rtl_expr_chain"
.LASF575:
	.string	"BUILT_IN_STRNCAT"
.LASF1073:
	.string	"LTI_floattitf"
.LASF1425:
	.string	"diddle_return_value"
.LASF1191:
	.string	"prev_p"
.LASF1192:
	.string	"prev_q"
.LASF1334:
	.string	"did_conversion"
.LASF257:
	.string	"RANGE_INFO"
.LASF1456:
	.string	"e_next"
.LASF1254:
	.string	"temp_mode"
.LASF934:
	.string	"SSIZETYPE"
.LASF1001:
	.string	"EP_extzv"
.LASF290:
	.string	"rtunion_def"
.LASF430:
	.string	"FUNCTION_DECL"
.LASF1159:
	.string	"sp_offset"
.LASF628:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF173:
	.string	"DEFINE_ATTR"
.LASF935:
	.string	"USIZETYPE"
.LASF451:
	.string	"COND_EXPR"
.LASF175:
	.string	"SET_ATTR"
.LASF100:
	.string	"TCmode"
.LASF765:
	.string	"x_nonlocal_labels"
.LASF1335:
	.string	"passed_type"
.LASF1051:
	.string	"LTI_gexf2"
.LASF472:
	.string	"FIX_TRUNC_EXPR"
.LASF250:
	.string	"UNSIGNED_FLOAT"
.LASF342:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF746:
	.string	"cselib_val_struct"
.LASF374:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1487:
	.string	"generating_concat_p"
.LASF1330:
	.string	"hide_last_arg"
.LASF1284:
	.string	"compute_insns_for_mem"
.LASF686:
	.string	"contents"
.LASF408:
	.string	"COMPLEX_TYPE"
.LASF222:
	.string	"ROTATE"
.LASF1090:
	.string	"LTI_fixunsdfdi"
.LASF610:
	.string	"BUILT_IN_PREFETCH"
.LASF978:
	.string	"keep"
.LASF310:
	.string	"succ"
.LASF482:
	.string	"LSHIFT_EXPR"
.LASF1066:
	.string	"LTI_floatdidf"
.LASF1249:
	.string	"new_mode"
.LASF246:
	.string	"TRUNCATE"
.LASF335:
	.string	"REG_DEP_ANTI"
.LASF97:
	.string	"SCmode"
.LASF1087:
	.string	"LTI_fixunssfdi"
.LASF1171:
	.string	"find_function_data"
.LASF1483:
	.string	"rtx_length"
.LASF1256:
	.string	"uncritical"
.LASF1301:
	.string	"poffset"
.LASF1100:
	.string	"LTI_MAX"
.LASF1013:
	.string	"LTI_abort"
.LASF385:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF918:
	.string	"integer_type_kind"
.LASF87:
	.string	"PDImode"
.LASF1502:
	.string	"warn_unused_parameter"
.LASF356:
	.string	"NOTE_INSN_BLOCK_END"
.LASF425:
	.string	"INTEGER_CST"
.LASF433:
	.string	"TYPE_DECL"
.LASF887:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF1162:
	.string	"equiv_reg_src"
.LASF1107:
	.string	"bitmap"
.LASF794:
	.string	"inl_last_parm_insn"
.LASF365:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1485:
	.string	"rtx_class"
.LASF1315:
	.string	"assign_parms"
.LASF1413:
	.string	"line"
.LASF578:
	.string	"BUILT_IN_STRCMP"
.LASF741:
	.string	"main_variant"
.LASF1373:
	.string	"link"
.LASF319:
	.string	"flags"
.LASF529:
	.string	"PREDECREMENT_EXPR"
.LASF1177:
	.string	"frame_alignment"
.LASF879:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1061:
	.string	"LTI_unordtf2"
.LASF892:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF150:
	.string	"EXPR_LIST"
.LASF177:
	.string	"EQ_ATTR"
.LASF889:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF1530:
	.string	"caller_save_needed"
.LASF130:
	.string	"CCGOCmode"
.LASF208:
	.string	"CONCAT"
.LASF586:
	.string	"BUILT_IN_STRRCHR"
.LASF1138:
	.string	"pred_next"
.LASF908:
	.string	"TI_V16SF_TYPE"
.LASF276:
	.string	"min_after_vec"
.LASF888:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF214:
	.string	"COND"
.LASF409:
	.string	"VECTOR_TYPE"
.LASF140:
	.string	"MODE_PARTIAL_INT"
.LASF781:
	.string	"x_parm_birth_insn"
.LASF1389:
	.string	"last_block_vector"
.LASF1041:
	.string	"LTI_eqdf2"
.LASF1014:
	.string	"LTI_memcpy"
.LASF783:
	.string	"x_max_parm_reg"
.LASF1099:
	.string	"LTI_profile_function_exit"
.LASF567:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF744:
	.string	"alias_set"
.LASF98:
	.string	"DCmode"
.LASF1364:
	.string	"save_var"
.LASF1465:
	.string	"prologue"
.LASF1466:
	.string	"epilogue"
.LASF165:
	.string	"DEFINE_COMBINE"
.LASF1541:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF1287:
	.string	"purge_addressof"
.LASF489:
	.string	"BIT_ANDTC_EXPR"
.LASF894:
	.string	"TI_PTR_TYPE"
.LASF775:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF223:
	.string	"ASHIFTRT"
.LASF1522:
	.string	"mark_machine_status"
.LASF1070:
	.string	"LTI_floattixf"
.LASF1321:
	.string	"nominal_mode"
.LASF128:
	.string	"CCmode"
.LASF638:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF630:
	.string	"BUILT_IN_ISUNORDERED"
.LASF712:
	.string	"abstract_flag"
.LASF1338:
	.string	"last_named"
.LASF308:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF358:
	.string	"NOTE_INSN_LOOP_END"
.LASF126:
	.string	"V16SFmode"
.LASF1044:
	.string	"LTI_gedf2"
.LASF856:
	.string	"initial"
.LASF491:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1291:
	.string	"inner_pattern"
.LASF1153:
	.string	"insns_for_mem_entry"
.LASF372:
	.string	"NOTE_INSN_LIVE"
.LASF170:
	.string	"DEFINE_COND_EXEC"
.LASF1012:
	.string	"LTI_trunctfdf2"
.LASF933:
	.string	"SIZETYPE"
.LASF989:
	.string	"OPTAB_DIRECT"
.LASF1173:
	.string	"addr"
.LASF940:
	.string	"var_refs_queue"
.LASF1000:
	.string	"EP_extv"
.LASF963:
	.string	"x_stack_pointer_delta"
.LASF496:
	.string	"TRUTH_NOT_EXPR"
.LASF166:
	.string	"DEFINE_EXPAND"
.LASF477:
	.string	"NEGATE_EXPR"
.LASF814:
	.string	"is_thunk"
.LASF1127:
	.string	"elements_used"
.LASF117:
	.string	"V8SImode"
.LASF767:
	.string	"x_nonlocal_goto_handler_labels"
.LASF179:
	.string	"INSN"
.LASF292:
	.string	"rtint"
.LASF640:
	.string	"BUILT_IN_STDARG_START"
.LASF1469:
	.string	"in_arg_offset"
.LASF597:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF870:
	.string	"TI_INTDI_TYPE"
.LASF209:
	.string	"LABEL_REF"
.LASF1446:
	.string	"retaddr"
.LASF875:
	.string	"TI_UINTDI_TYPE"
.LASF334:
	.string	"REG_LABEL"
.LASF1258:
	.string	"fixup_stack_1"
.LASF885:
	.string	"TI_BITSIZE_UNIT"
.LASF332:
	.string	"REG_CC_SETTER"
.LASF1213:
	.string	"part_mode"
.LASF1123:
	.string	"elt_list"
.LASF1317:
	.string	"entry_parm"
.LASF1416:
	.string	"expand_main_function"
.LASF1126:
	.string	"num_elements"
.LASF322:
	.string	"REG_DEAD"
.LASF362:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF972:
	.string	"temp_slot"
.LASF1476:
	.string	"next_block_index"
.LASF512:
	.string	"CARD_EXPR"
.LASF1200:
	.string	"preserve_temp_slots"
.LASF325:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF1135:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF891:
	.string	"TI_DOUBLE_TYPE"
.LASF608:
	.string	"BUILT_IN_LONGJMP"
.LASF681:
	.string	"tree_vector"
.LASF416:
	.string	"METHOD_TYPE"
.LASF129:
	.string	"CCGCmode"
.LASF396:
	.string	"LCT_THROW"
.LASF314:
	.string	"global_live_at_end"
.LASF1333:
	.string	"passed_pointer"
.LASF1533:
	.string	"regs_invalidated_by_call"
.LASF25:
	.string	"list"
.LASF1429:
	.string	"clobber_return_register"
.LASF514:
	.string	"CONVERT_EXPR"
.LASF205:
	.string	"SCRATCH"
.LASF115:
	.string	"V8QImode"
.LASF466:
	.string	"TRUNC_MOD_EXPR"
.LASF118:
	.string	"V8DImode"
.LASF146:
	.string	"MAX_MODE_CLASS"
.LASF1395:
	.string	"reorder_blocks_0"
.LASF1396:
	.string	"reorder_blocks_1"
.LASF1424:
	.string	"expand_dummy_function_end"
.LASF929:
	.string	"itk_unsigned_long_long"
.LASF1349:
	.string	"submode"
.LASF1517:
	.string	"cfun"
.LASF1323:
	.string	"stack_args_size"
.LASF462:
	.string	"TRUNC_DIV_EXPR"
.LASF244:
	.string	"SIGN_EXTEND"
.LASF1352:
	.string	"decl_result"
.LASF806:
	.string	"calls_setjmp"
.LASF986:
	.string	"upward"
.LASF519:
	.string	"UNSAVE_EXPR"
.LASF1081:
	.string	"LTI_fixxfdi"
.LASF461:
	.string	"MULT_EXPR"
.LASF705:
	.string	"value"
.LASF1488:
	.string	"const_int_rtx"
.LASF1452:
	.string	"inserted"
.LASF266:
	.string	"VEC_DUPLICATE"
.LASF1527:
	.string	"free_lang_status"
.LASF500:
	.string	"GE_EXPR"
.LASF768:
	.string	"x_nonlocal_goto_stack_level"
.LASF400:
	.string	"ERROR_MARK"
.LASF761:
	.string	"internal_arg_pointer"
.LASF1268:
	.string	"flush_addressof"
.LASF1511:
	.string	"flag_expensive_optimizations"
.LASF582:
	.string	"BUILT_IN_STRPBRK"
.LASF522:
	.string	"REFERENCE_EXPR"
.LASF284:
	.string	"expr"
.LASF467:
	.string	"CEIL_MOD_EXPR"
.LASF368:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF1350:
	.string	"linsn"
.LASF720:
	.string	"address"
.LASF1144:
	.string	"hash_table_key"
.LASF1472:
	.string	"out_arg_offset"
.LASF695:
	.string	"chunkfun"
.LASF662:
	.string	"deprecated_flag"
.LASF611:
	.string	"BUILT_IN_PUTCHAR"
.LASF1386:
	.string	"identify_blocks"
.LASF994:
	.string	"save_level"
.LASF766:
	.string	"x_nonlocal_goto_handler_slots"
.LASF124:
	.string	"V8SFmode"
.LASF463:
	.string	"CEIL_DIV_EXPR"
.LASF1155:
	.string	"insn"
.LASF601:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF1537:
	.string	"current_function_uses_only_leaf_regs"
.LASF333:
	.string	"REG_CC_USER"
.LASF973:
	.string	"slot"
.LASF188:
	.string	"ASM_OPERANDS"
.LASF859:
	.string	"live_range_rtl"
.LASF786:
	.string	"x_temp_slot_level"
.LASF738:
	.string	"minval"
.LASF659:
	.string	"private_flag"
.LASF784:
	.string	"x_parm_reg_stack_loc"
.LASF132:
	.string	"CCZmode"
.LASF359:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF1302:
	.string	"instantiate_virtual_regs_1"
.LASF1257:
	.string	"walk_fixup_memory_subreg"
.LASF38:
	.string	"INDEX_REGS"
.LASF464:
	.string	"FLOOR_DIV_EXPR"
.LASF402:
	.string	"TREE_LIST"
.LASF1237:
	.string	"no_share"
.LASF997:
	.string	"SAVE_NONLOCAL"
.LASF513:
	.string	"RANGE_EXPR"
.LASF1026:
	.string	"LTI_unwind_sjlj_unregister"
.LASF1282:
	.string	"ifmwi"
.LASF992:
	.string	"OPTAB_LIB_WIDEN"
.LASF867:
	.string	"TI_INTQI_TYPE"
.LASF717:
	.string	"abstract_origin"
.LASF1048:
	.string	"LTI_eqxf2"
.LASF429:
	.string	"STRING_CST"
.LASF497:
	.string	"LT_EXPR"
.LASF752:
	.string	"varasm"
.LASF348:
	.string	"REG_NON_LOCAL_GOTO"
.LASF1379:
	.string	"rtlexp"
.LASF1006:
	.string	"LTI_extenddfxf2"
.LASF983:
	.string	"constant"
.LASF192:
	.string	"ADDR_DIFF_VEC"
.LASF487:
	.string	"BIT_XOR_EXPR"
.LASF1523:
	.string	"init_lang_status"
.LASF545:
	.string	"SWITCH_EXPR"
.LASF494:
	.string	"TRUTH_OR_EXPR"
.LASF816:
	.string	"profile"
.LASF254:
	.string	"ZERO_EXTRACT"
.LASF1103:
	.string	"hint"
.LASF187:
	.string	"ASM_INPUT"
.LASF536:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF701:
	.string	"ht_identifier"
.LASF237:
	.string	"ORDERED"
.LASF125:
	.string	"V8DFmode"
.LASF1376:
	.string	"displacement"
.LASF1304:
	.string	"extra_insns"
.LASF942:
	.string	"promoted_mode"
.LASF1277:
	.string	"insns_for_mem_newfunc"
.LASF857:
	.string	"assembler_name"
.LASF1427:
	.string	"outgoing"
.LASF1157:
	.string	"epi_info"
.LASF478:
	.string	"MIN_EXPR"
.LASF900:
	.string	"TI_UV4SI_TYPE"
.LASF1118:
	.string	"deaths"
.LASF1060:
	.string	"LTI_letf2"
.LASF728:
	.string	"needs_constructing_flag"
.LASF251:
	.string	"UNSIGNED_FIX"
.LASF1459:
	.string	"newinsn"
.LASF473:
	.string	"FIX_CEIL_EXPR"
.LASF1313:
	.string	"searcher"
.LASF1400:
	.string	"origin"
.LASF803:
	.string	"returns_pcc_struct"
.LASF579:
	.string	"BUILT_IN_STRNCMP"
.LASF1441:
	.string	"sibcall_epilogue_contains"
.LASF1498:
	.string	"current_function_decl"
.LASF1271:
	.string	"force"
.LASF678:
	.string	"tree_complex"
.LASF1262:
	.string	"bitfield"
.LASF58:
	.string	"sse_words"
.LASF846:
	.string	"comdat_flag"
.LASF40:
	.string	"GENERAL_REGS"
.LASF977:
	.string	"level"
.LASF1422:
	.string	"value_address"
.LASF498:
	.string	"LE_EXPR"
.LASF703:
	.string	"tree_list"
.LASF848:
	.string	"no_limit_stack"
.LASF855:
	.string	"result"
.LASF1309:
	.string	"get_frame_size"
.LASF1084:
	.string	"LTI_fixtfdi"
.LASF737:
	.string	"name"
.LASF151:
	.string	"INSN_LIST"
.LASF259:
	.string	"RANGE_VAR"
.LASF1122:
	.string	"changes_mode"
.LASF1152:
	.string	"fixup_replacement"
.LASF138:
	.string	"MODE_INT"
.LASF1306:
	.string	"delete_handlers"
.LASF1128:
	.string	"element_size"
.LASF18:
	.string	"real_cst"
.LASF1179:
	.string	"assign_stack_local"
.LASF479:
	.string	"MAX_EXPR"
.LASF758:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF710:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF881:
	.string	"TI_SIZE_ZERO"
.LASF960:
	.string	"expr_status"
.LASF1351:
	.string	"sinsn"
.LASF715:
	.string	"subblocks"
.LASF810:
	.string	"has_nonlocal_label"
.LASF922:
	.string	"itk_short"
.LASF1176:
	.string	"frame_off"
.LASF573:
	.string	"BUILT_IN_MEMSET"
.LASF260:
	.string	"RANGE_LIVE"
.LASF961:
	.string	"x_pending_stack_adjust"
.LASF1391:
	.string	"identify_blocks_1"
.LASF470:
	.string	"RDIV_EXPR"
.LASF755:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF1531:
	.string	"fixed_regs"
.LASF1293:
	.string	"fndecl"
.LASF834:
	.string	"virtual_flag"
.LASF1392:
	.string	"end_block_vector"
.LASF1109:
	.string	"const_equiv"
.LASF732:
	.string	"pointer_depth"
.LASF677:
	.string	"pointer"
.LASF431:
	.string	"LABEL_DECL"
.LASF996:
	.string	"SAVE_FUNCTION"
.LASF1227:
	.string	"first_insn"
.LASF644:
	.string	"END_BUILTINS"
.LASF296:
	.string	"rt_addr_diff_vec_flags"
.LASF936:
	.string	"BITSIZETYPE"
.LASF382:
	.string	"GR_ARG_POINTER"
.LASF483:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF269:
	.string	"SS_MINUS"
.LASF1184:
	.string	"frame_offset_old"
.LASF427:
	.string	"COMPLEX_CST"
.LASF156:
	.string	"MATCH_PARALLEL"
.LASF113:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF1329:
	.string	"alignment_pad"
.LASF1462:
	.string	"maybe_mark_struct_function"
.LASF1372:
	.string	"lookup_static_chain"
.LASF1230:
	.string	"find_fixup_replacement"
.LASF645:
	.string	"tree_common"
.LASF324:
	.string	"REG_EQUIV"
.LASF1246:
	.string	"new_insn"
.LASF742:
	.string	"binfo"
.LASF884:
	.string	"TI_BITSIZE_ONE"
.LASF68:
	.string	"short unsigned int"
.LASF69:
	.string	"signed char"
.LASF878:
	.string	"TI_INTEGER_ONE"
.LASF1430:
	.string	"do_use_return_reg"
.LASF155:
	.string	"MATCH_OPERATOR"
.LASF1239:
	.string	"prev_set"
.LASF1494:
	.string	"tree_code_type"
.LASF1005:
	.string	"LTI_extendsftf2"
.LASF1358:
	.string	"arg_size_ptr"
.LASF704:
	.string	"purpose"
.LASF1481:
	.string	"mode_wider_mode"
.LASF782:
	.string	"x_last_parm_insn"
.LASF868:
	.string	"TI_INTHI_TYPE"
.LASF1125:
	.string	"varray_head_tag"
.LASF303:
	.string	"current"
.LASF734:
	.string	"pointer_to"
.LASF1322:
	.string	"promoted_nominal_mode"
.LASF1065:
	.string	"LTI_floatsidf"
.LASF843:
	.string	"weak_flag"
.LASF1316:
	.string	"parm"
.LASF860:
	.string	"saved_tree"
.LASF953:
	.string	"x_cur_insn_uid"
.LASF706:
	.string	"tree_vec"
.LASF967:
	.string	"x_pending_chain"
.LASF827:
	.string	"filename"
.LASF1294:
	.string	"instantiate_decls"
.LASF1150:
	.string	"comp"
.LASF271:
	.string	"SS_TRUNCATE"
.LASF531:
	.string	"POSTDECREMENT_EXPR"
.LASF1471:
	.string	"dynamic_offset"
.LASF338:
	.string	"REG_EXEC_COUNT"
.LASF1267:
	.string	"decl_rtl"
.LASF619:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1031:
	.string	"LTI_lthf2"
.LASF791:
	.string	"no_debugging_symbols"
.LASF1089:
	.string	"LTI_fixunsdfsi"
.LASF623:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF991:
	.string	"OPTAB_WIDEN"
.LASF1063:
	.string	"LTI_floatdisf"
.LASF275:
	.string	"base_after_vec"
.LASF1193:
	.string	"num_slots"
.LASF160:
	.string	"DEFINE_INSN"
.LASF1186:
	.string	"assign_temp"
.LASF917:
	.string	"TI_MAX"
.LASF114:
	.string	"V4DImode"
.LASF316:
	.string	"loop_depth"
.LASF1342:
	.string	"size_stored"
.LASF1455:
	.string	"epilogue_done"
.LASF1512:
	.string	"flag_exceptions"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF535:
	.string	"TRY_FINALLY_EXPR"
.LASF1360:
	.string	"where_pad"
.LASF20:
	.string	"string"
.LASF383:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF499:
	.string	"GT_EXPR"
.LASF955:
	.string	"x_last_filename"
.LASF336:
	.string	"REG_DEP_OUTPUT"
.LASF1283:
	.string	"ifme"
.LASF736:
	.string	"symtab"
.LASF1188:
	.string	"memory_required"
.LASF1091:
	.string	"LTI_fixunsdfti"
.LASF169:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF270:
	.string	"US_MINUS"
.LASF1072:
	.string	"LTI_floatditf"
.LASF392:
	.string	"LCT_PURE"
.LASF902:
	.string	"TI_UV8QI_TYPE"
.LASF990:
	.string	"OPTAB_LIB"
.LASF1252:
	.string	"outerdest"
.LASF1332:
	.string	"arg_size"
.LASF760:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF439:
	.string	"COMPONENT_REF"
.LASF253:
	.string	"SIGN_EXTRACT"
.LASF835:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1119:
	.string	"live_length"
.LASF460:
	.string	"MINUS_EXPR"
.LASF194:
	.string	"CLOBBER"
.LASF1221:
	.string	"put_reg_into_stack"
.LASF740:
	.string	"next_variant"
.LASF1137:
	.string	"edge_def"
.LASF954:
	.string	"x_last_linenum"
.LASF144:
	.string	"MODE_VECTOR_INT"
.LASF849:
	.string	"built_in_class"
.LASF340:
	.string	"REG_SAVE_AREA"
.LASF262:
	.string	"CALL_PLACEHOLDER"
.LASF749:
	.string	"function"
.LASF583:
	.string	"BUILT_IN_STRSPN"
.LASF1220:
	.string	"func"
.LASF122:
	.string	"V4SFmode"
.LASF1414:
	.string	"init_function_for_compilation"
.LASF1311:
	.string	"get_first_nonparm_insn"
.LASF447:
	.string	"COMPOUND_EXPR"
.LASF1519:
	.string	"inline_function_decl"
.LASF815:
	.string	"instrument_entry_exit"
.LASF1410:
	.string	"init_dummy_function_start"
.LASF872:
	.string	"TI_UINTQI_TYPE"
.LASF1147:
	.string	"hash_table"
.LASF975:
	.string	"in_use"
.LASF778:
	.string	"x_frame_offset"
.LASF602:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF723:
	.string	"size_unit"
.LASF618:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF216:
	.string	"PLUS"
.LASF570:
	.string	"BUILT_IN_RINDEX"
.LASF1043:
	.string	"LTI_gtdf2"
.LASF1532:
	.string	"call_used_regs"
.LASF232:
	.string	"POST_DEC"
.LASF1133:
	.string	"bits"
.LASF1399:
	.string	"new_block"
.LASF79:
	.string	"HImode"
.LASF320:
	.string	"rtunion"
.LASF361:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF142:
	.string	"MODE_COMPLEX_INT"
.LASF968:
	.string	"eh_status"
.LASF547:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1247:
	.string	"wanted_mode"
.LASF979:
	.string	"base_offset"
.LASF945:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF387:
	.string	"GR_VIRTUAL_CFA"
.LASF413:
	.string	"POINTER_TYPE"
.LASF481:
	.string	"FFS_EXPR"
.LASF1538:
	.string	"basic_block_info"
.LASF326:
	.string	"REG_WAS_0"
.LASF405:
	.string	"VOID_TYPE"
.LASF987:
	.string	"downward"
.LASF1361:
	.string	"boundary"
.LASF982:
	.string	"language_function"
.LASF517:
	.string	"VIEW_CONVERT_EXPR"
.LASF866:
	.string	"TI_ERROR_MARK"
.LASF347:
	.string	"REG_NORETURN"
.LASF93:
	.string	"XFmode"
.LASF805:
	.string	"needs_context"
.LASF346:
	.string	"REG_MAYBE_DEAD"
.LASF684:
	.string	"limit"
.LASF123:
	.string	"V4DFmode"
.LASF1529:
	.string	"reg_renumber"
.LASF4:
	.string	"unchanging"
.LASF838:
	.string	"defer_output"
.LASF914:
	.string	"TI_V2SF_TYPE"
.LASF1011:
	.string	"LTI_truncxfdf2"
.LASF321:
	.string	"reg_note"
.LASF809:
	.string	"calls_eh_return"
.LASF1457:
	.string	"label"
.LASF788:
	.string	"x_target_temp_slot_level"
.LASF1295:
	.string	"valid_only"
.LASF756:
	.string	"pretend_args_size"
.LASF743:
	.string	"context"
.LASF1320:
	.string	"passed_mode"
.LASF1500:
	.string	"optimize"
.LASF1520:
	.string	"init_machine_status"
.LASF147:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF1289:
	.string	"pattern"
.LASF458:
	.string	"WITH_RECORD_EXPR"
.LASF1202:
	.string	"free_temp_slots"
.LASF946:
	.string	"last"
.LASF865:
	.string	"tree_index"
.LASF1165:
	.string	"pop_function_context_from"
.LASF1437:
	.string	"record_insns"
.LASF980:
	.string	"full_size"
.LASF1265:
	.string	"newreg"
.LASF1434:
	.string	"clobber_after"
.LASF1069:
	.string	"LTI_floatdixf"
.LASF818:
	.string	"varargs"
.LASF1269:
	.string	"put_addressof_into_stack"
.LASF1029:
	.string	"LTI_gthf2"
.LASF711:
	.string	"handler_block_flag"
.LASF1423:
	.string	"hard_reg"
.LASF851:
	.string	"non_addressable"
.LASF554:
	.string	"BUILT_IN_FABSL"
.LASF31:
	.string	"CREG"
.LASF1406:
	.string	"get_block_vector"
.LASF1440:
	.string	"prologue_epilogue_contains"
.LASF1098:
	.string	"LTI_profile_function_entry"
.LASF634:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF820:
	.string	"x_whole_function_mode_p"
.LASF148:
	.string	"UNKNOWN"
.LASF190:
	.string	"UNSPEC_VOLATILE"
.LASF444:
	.string	"ARRAY_RANGE_REF"
.LASF939:
	.string	"TYPE_KIND_LAST"
.LASF1432:
	.string	"expand_function_end"
.LASF1314:
	.string	"aggregate_value_p"
.LASF581:
	.string	"BUILT_IN_STRSTR"
.LASF837:
	.string	"common_flag"
.LASF696:
	.string	"freefun"
.LASF364:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF845:
	.string	"no_instrument_function_entry_exit"
.LASF653:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF399:
	.string	"tree_code"
.LASF89:
	.string	"HFmode"
.LASF617:
	.string	"BUILT_IN_FPRINTF"
.LASF1219:
	.string	"used_p"
.LASF648:
	.string	"constant_flag"
.LASF589:
	.string	"BUILT_IN_COS"
.LASF197:
	.string	"TRAP_IF"
.LASF1417:
	.string	"expand_pending_sizes"
.LASF661:
	.string	"bounded_flag"
.LASF436:
	.string	"RESULT_DECL"
.LASF1359:
	.string	"sizetree"
.LASF534:
	.string	"TRY_CATCH_EXPR"
.LASF344:
	.string	"REG_EH_REGION"
.LASF907:
	.string	"TI_V4SF_TYPE"
.LASF390:
	.string	"LCT_NORMAL"
.LASF1180:
	.string	"assign_stack_temp_for_type"
.LASF1324:
	.string	"fntype"
.LASF1080:
	.string	"LTI_fixxfsi"
.LASF1273:
	.string	"restart"
.LASF327:
	.string	"REG_RETVAL"
.LASF101:
	.string	"CQImode"
.LASF1403:
	.string	"new_origin"
.LASF1506:
	.string	"flag_test_coverage"
.LASF798:
	.string	"stack_alignment_needed"
.LASF71:
	.string	"char"
.LASF802:
	.string	"returns_struct"
.LASF1010:
	.string	"LTI_trunctfsf2"
.LASF99:
	.string	"XCmode"
.LASF776:
	.string	"x_arg_pointer_save_area"
.LASF1356:
	.string	"initial_offset_ptr"
.LASF629:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF548:
	.string	"built_in_function"
.LASF449:
	.string	"INIT_EXPR"
.LASF516:
	.string	"NON_LVALUE_EXPR"
.LASF1148:
	.string	"table"
.LASF1236:
	.string	"fixup_var_refs_insn"
.LASF691:
	.string	"next_free"
.LASF847:
	.string	"malloc_flag"
.LASF1082:
	.string	"LTI_fixxfti"
.LASF1115:
	.string	"sets"
.LASF800:
	.string	"language"
.LASF225:
	.string	"ROTATERT"
.LASF1450:
	.string	"emit_equiv_load"
.LASF919:
	.string	"itk_char"
.LASF1409:
	.string	"debug_find_var_in_block_tree"
.LASF725:
	.string	"precision"
.LASF1149:
	.string	"newfunc"
.LASF211:
	.string	"ADDRESSOF"
.LASF915:
	.string	"TI_V16QI_TYPE"
.LASF349:
	.string	"REG_SETJMP"
.LASF107:
	.string	"V2QImode"
.LASF1024:
	.string	"LTI_longjmp"
.LASF539:
	.string	"RETURN_EXPR"
.LASF563:
	.string	"BUILT_IN_CIMAG"
.LASF604:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF949:
	.string	"x_reg_rtx_no"
.LASF85:
	.string	"PHImode"
.LASF708:
	.string	"complexity"
.LASF729:
	.string	"transparent_union_flag"
.LASF941:
	.string	"modified"
.LASF958:
	.string	"regno_decl"
.LASF687:
	.string	"obstack"
.LASF932:
	.string	"size_type_kind"
.LASF993:
	.string	"OPTAB_MUST_WIDEN"
.LASF1111:
	.string	"reg_info_def"
.LASF106:
	.string	"COImode"
.LASF1198:
	.string	"update_temp_slot_address"
.LASF230:
	.string	"PRE_DEC"
.LASF1397:
	.string	"current_block"
.LASF1194:
	.string	"delete_p"
.LASF1195:
	.string	"delete_q"
.LASF1019:
	.string	"LTI_memset"
.LASF363:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF381:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1228:
	.string	"stack"
.LASF287:
	.string	"align"
.LASF1158:
	.string	"sp_equiv_reg"
.LASF631:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF808:
	.string	"calls_alloca"
.LASF1524:
	.string	"mark_lang_status"
.LASF1264:
	.string	"memref"
.LASF1325:
	.string	"fnargs"
.LASF886:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF787:
	.string	"x_var_temp_slot_level"
.LASF1054:
	.string	"LTI_unordxf2"
.LASF1503:
	.string	"warn_uninitialized"
.LASF1235:
	.string	"insn_list"
.LASF137:
	.string	"MODE_RANDOM"
.LASF268:
	.string	"US_PLUS"
.LASF1428:
	.string	"do_clobber_return_reg"
.LASF127:
	.string	"BLKmode"
.LASF1167:
	.string	"push_function_context"
.LASF1207:
	.string	"init_temp_slots"
.LASF96:
	.string	"HCmode"
.LASF452:
	.string	"BIND_EXPR"
.LASF524:
	.string	"FDESC_EXPR"
.LASF1354:
	.string	"locate_and_pad_parm"
.LASF1174:
	.string	"bigend_correction"
.LASF905:
	.string	"TI_UV2SF_TYPE"
.LASF1368:
	.string	"uninitialized_vars_warning"
.LASF459:
	.string	"PLUS_EXPR"
.LASF911:
	.string	"TI_V8QI_TYPE"
.LASF1378:
	.string	"trampoline_address"
.LASF562:
	.string	"BUILT_IN_CREALL"
.LASF916:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1508:
	.string	"flag_force_mem"
.LASF580:
	.string	"BUILT_IN_STRLEN"
.LASF421:
	.string	"UNION_TYPE"
.LASF669:
	.string	"lang_flag_6"
.LASF202:
	.string	"CONST_STRING"
.LASF265:
	.string	"VEC_CONCAT"
.LASF286:
	.string	"size"
.LASF523:
	.string	"ENTRY_VALUE_EXPR"
.LASF598:
	.string	"BUILT_IN_NEXT_ARG"
.LASF277:
	.string	"max_after_vec"
.LASF745:
	.string	"lang_specific"
.LASF339:
	.string	"REG_NOALIAS"
.LASF178:
	.string	"ATTR_FLAG"
.LASF694:
	.string	"alignment_mask"
.LASF1393:
	.string	"orig_block_stack"
.LASF1083:
	.string	"LTI_fixtfsi"
.LASF134:
	.string	"CCFPUmode"
.LASF323:
	.string	"REG_INC"
.LASF168:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1050:
	.string	"LTI_gtxf2"
.LASF842:
	.string	"artificial_flag"
.LASF779:
	.string	"x_context_display"
.LASF1374:
	.string	"fix_lexical_addr"
.LASF1266:
	.string	"gen_mem_addressof"
.LASF172:
	.string	"ADDRESS"
.LASF504:
	.string	"ORDERED_EXPR"
.LASF1030:
	.string	"LTI_gehf2"
.LASF642:
	.string	"BUILT_IN_VA_COPY"
.LASF792:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF995:
	.string	"SAVE_BLOCK"
.LASF1085:
	.string	"LTI_fixtfti"
.LASF1402:
	.string	"dup_origin"
.LASF700:
	.string	"alloc_failed"
.LASF824:
	.string	"uses_eh_lsda"
.LASF1398:
	.string	"p_block_stack"
.LASF557:
	.string	"BUILT_IN_CONJ"
.LASF441:
	.string	"INDIRECT_REF"
.LASF1106:
	.string	"cptr"
.LASF415:
	.string	"REFERENCE_TYPE"
.LASF301:
	.string	"bitmap_head_def"
.LASF716:
	.string	"supercontext"
.LASF643:
	.string	"BUILT_IN_EXPECT"
.LASF1187:
	.string	"type_or_decl"
.LASF739:
	.string	"maxval"
.LASF1274:
	.string	"give_up"
.LASF1405:
	.string	"all_blocks"
.LASF503:
	.string	"UNORDERED_EXPR"
.LASF1037:
	.string	"LTI_gesf2"
.LASF938:
	.string	"UBITSIZETYPE"
.LASF899:
	.string	"TI_UV4SF_TYPE"
.LASF1280:
	.string	"insns_for_mem_comp"
.LASF1120:
	.string	"calls_crossed"
.LASF272:
	.string	"US_TRUNCATE"
.LASF665:
	.string	"lang_flag_2"
.LASF584:
	.string	"BUILT_IN_STRCSPN"
.LASF1435:
	.string	"after"
.LASF1036:
	.string	"LTI_gtsf2"
.LASF511:
	.string	"SET_LE_EXPR"
.LASF376:
	.string	"global_rtl_index"
.LASF1420:
	.string	"parms_have_cleanups"
.LASF56:
	.string	"nregs"
.LASF267:
	.string	"SS_PLUS"
.LASF1199:
	.string	"mark_temp_addr_taken"
.LASF229:
	.string	"UMAX"
.LASF530:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF281:
	.string	"scale"
.LASF828:
	.string	"linenum"
.LASF78:
	.string	"QImode"
.LASF1477:
	.string	"target_flags"
.LASF507:
	.string	"UNGT_EXPR"
.LASF1296:
	.string	"size_rtl"
.LASF1518:
	.string	"virtuals_instantiated"
.LASF1129:
	.string	"data"
.LASF379:
	.string	"GR_STACK_POINTER"
.LASF1086:
	.string	"LTI_fixunssfsi"
.LASF1463:
	.string	"ggc_mark_struct_function"
.LASF1353:
	.string	"real_decl_rtl"
.LASF733:
	.string	"user_align"
.LASF1062:
	.string	"LTI_floatsisf"
.LASF551:
	.string	"BUILT_IN_LABS"
.LASF90:
	.string	"TQFmode"
.LASF1514:
	.string	"flag_stack_check"
.LASF1387:
	.string	"n_blocks"
.LASF306:
	.string	"head"
.LASF1190:
	.string	"combine_temp_slots"
.LASF650:
	.string	"volatile_flag"
.LASF1166:
	.string	"queue"
.LASF55:
	.string	"words"
.LASF574:
	.string	"BUILT_IN_STRCAT"
.LASF590:
	.string	"BUILT_IN_SQRTF"
.LASF1253:
	.string	"fixeddest"
.LASF1510:
	.string	"flag_float_store"
.LASF278:
	.string	"min_after_base"
.LASF593:
	.string	"BUILT_IN_SQRTL"
.LASF1468:
	.string	"outer_function_chain"
.LASF1381:
	.string	"fn_context"
.LASF1032:
	.string	"LTI_lehf2"
.LASF1108:
	.string	"sched"
.LASF925:
	.string	"itk_unsigned_int"
.LASF418:
	.string	"ARRAY_TYPE"
.LASF821:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF546:
	.string	"EXC_PTR_EXPR"
.LASF692:
	.string	"chunk_limit"
.LASF1270:
	.string	"purge_addressof_1"
.LASF1380:
	.string	"tramp"
.LASF1255:
	.string	"fixup_memory_subreg"
.LASF1071:
	.string	"LTI_floatsitf"
.LASF568:
	.string	"BUILT_IN_FFS"
.LASF1092:
	.string	"LTI_fixunsxfsi"
.LASF655:
	.string	"used_flag"
.LASF613:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF724:
	.string	"attributes"
.LASF910:
	.string	"TI_V8HI_TYPE"
.LASF1009:
	.string	"LTI_truncxfsf2"
.LASF757:
	.string	"outgoing_args_size"
.LASF474:
	.string	"FIX_FLOOR_EXPR"
.LASF1151:
	.string	"memory"
.LASF1076:
	.string	"LTI_fixsfti"
.LASF83:
	.string	"OImode"
.LASF345:
	.string	"REG_SAVE_NOTE"
.LASF620:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF1515:
	.string	"flag_instrument_function_entry_exit"
.LASF663:
	.string	"lang_flag_0"
.LASF664:
	.string	"lang_flag_1"
.LASF440:
	.string	"BIT_FIELD_REF"
.LASF666:
	.string	"lang_flag_3"
.LASF667:
	.string	"lang_flag_4"
.LASF668:
	.string	"lang_flag_5"
.LASF227:
	.string	"SMAX"
.LASF853:
	.string	"lang_flag_7"
.LASF388:
	.string	"GR_MAX"
.LASF1341:
	.string	"thisparm_boundary"
.LASF863:
	.string	"pointer_alias_set"
.LASF264:
	.string	"VEC_SELECT"
.LASF555:
	.string	"BUILT_IN_LLABS"
.LASF329:
	.string	"REG_NONNEG"
.LASF434:
	.string	"VAR_DECL"
.LASF709:
	.string	"operands"
.LASF448:
	.string	"MODIFY_EXPR"
.LASF1238:
	.string	"call_dest"
.LASF948:
	.string	"emit_status"
.LASF1458:
	.string	"epilogue_line_note"
.LASF702:
	.string	"tree_identifier"
.LASF145:
	.string	"MODE_VECTOR_FLOAT"
.LASF403:
	.string	"TREE_VEC"
.LASF235:
	.string	"POST_MODIFY"
.LASF1112:
	.string	"first_uid"
.LASF1415:
	.string	"mark_varargs"
.LASF596:
	.string	"BUILT_IN_SAVEREGS"
.LASF540:
	.string	"EXIT_EXPR"
.LASF558:
	.string	"BUILT_IN_CONJF"
.LASF1411:
	.string	"init_function_start"
.LASF341:
	.string	"REG_BR_PRED"
.LASF559:
	.string	"BUILT_IN_CONJL"
.LASF161:
	.string	"DEFINE_PEEPHOLE"
.LASF72:
	.string	"long long unsigned int"
.LASF370:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF285:
	.string	"offset"
.LASF282:
	.string	"addr_diff_vec_flags"
.LASF1088:
	.string	"LTI_fixunssfti"
.LASF1097:
	.string	"LTI_fixunstfti"
.LASF157:
	.string	"MATCH_OP_DUP"
.LASF171:
	.string	"SEQUENCE"
.LASF1094:
	.string	"LTI_fixunsxfti"
.LASF401:
	.string	"IDENTIFIER_NODE"
.LASF903:
	.string	"TI_UV4HI_TYPE"
.LASF1007:
	.string	"LTI_extenddftf2"
.LASF1453:
	.string	"prologue_end"
.LASF1394:
	.string	"reorder_blocks"
.LASF698:
	.string	"use_extra_arg"
.LASF88:
	.string	"QFmode"
.LASF1225:
	.string	"may_share"
.LASF1493:
	.string	"stack_limit_rtx"
.LASF858:
	.string	"section_name"
.LASF1114:
	.string	"last_note_uid"
.LASF1367:
	.string	"pad_below"
.LASF1449:
	.string	"handle_epilogue_set"
.LASF1243:
	.string	"fixup_var_refs_1"
.LASF1299:
	.string	"decl_size"
.LASF759:
	.string	"args_info"
.LASF505:
	.string	"UNLT_EXPR"
.LASF817:
	.string	"limit_stack"
.LASF424:
	.string	"LANG_TYPE"
.LASF198:
	.string	"RESX"
.LASF1251:
	.string	"newmem"
.LASF1140:
	.string	"dest"
.LASF186:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF877:
	.string	"TI_INTEGER_ZERO"
.LASF1501:
	.string	"extra_warnings"
.LASF236:
	.string	"UNORDERED"
.LASF135:
	.string	"MAX_MACHINE_MODE"
.LASF1288:
	.string	"purge_single_hard_subreg_set"
.LASF924:
	.string	"itk_int"
.LASF1028:
	.string	"LTI_nehf2"
.LASF748:
	.string	"off_align"
.LASF985:
	.string	"none"
.LASF313:
	.string	"global_live_at_start"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF153:
	.string	"MATCH_SCRATCH"
.LASF203:
	.string	"CONST"
.LASF957:
	.string	"regno_pointer_align"
.LASF252:
	.string	"SQRT"
.LASF1068:
	.string	"LTI_floatsixf"
.LASF726:
	.string	"string_flag"
.LASF398:
	.string	"LCT_RETURNS_TWICE"
.LASF378:
	.string	"GR_CC0"
.LASF1245:
	.string	"replacement"
.LASF136:
	.string	"mode_class"
.LASF1298:
	.string	"instantiate_decl"
.LASF1279:
	.string	"insns_for_mem_hash"
.LASF218:
	.string	"MULT"
.LASF419:
	.string	"SET_TYPE"
.LASF389:
	.string	"libcall_type"
.LASF141:
	.string	"MODE_CC"
.LASF714:
	.string	"vars"
.LASF311:
	.string	"local_set"
.LASF453:
	.string	"CALL_EXPR"
.LASF84:
	.string	"PQImode"
.LASF1448:
	.string	"jump_set"
.LASF488:
	.string	"BIT_AND_EXPR"
.LASF1021:
	.string	"LTI_unwind_resume"
.LASF527:
	.string	"REALPART_EXPR"
.LASF506:
	.string	"UNLE_EXPR"
.LASF1197:
	.string	"find_temp_slot_from_address"
.LASF785:
	.string	"x_temp_slots"
.LASF869:
	.string	"TI_INTSI_TYPE"
.LASF564:
	.string	"BUILT_IN_CIMAGF"
.LASF1343:
	.string	"parmreg"
.LASF1250:
	.string	"old_pos"
.LASF830:
	.string	"nonlocal_flag"
.LASF772:
	.string	"x_stack_slot_list"
.LASF565:
	.string	"BUILT_IN_CIMAGL"
.LASF181:
	.string	"CALL_INSN"
.LASF1272:
	.string	"store"
.LASF206:
	.string	"SUBREG"
.LASF731:
	.string	"restrict_flag"
.LASF1460:
	.string	"reposition_prologue_and_epilogue_notes"
.LASF807:
	.string	"calls_longjmp"
.LASF119:
	.string	"V16QImode"
.LASF1336:
	.string	"nominal_type"
.LASF350:
	.string	"REG_ALWAYS_RETURN"
.LASF552:
	.string	"BUILT_IN_FABS"
.LASF1276:
	.string	"size_sub"
.LASF1241:
	.string	"next_insn"
.LASF23:
	.string	"decl"
.LASF528:
	.string	"IMAGPART_EXPR"
.LASF73:
	.string	"long long int"
.LASF904:
	.string	"TI_UV2SI_TYPE"
.LASF1363:
	.string	"pad_to_arg_alignment"
.LASF861:
	.string	"inlined_fns"
.LASF930:
	.string	"itk_none"
.LASF328:
	.string	"REG_LIBCALL"
.LASF1467:
	.string	"sibcall_epilogue"
.LASF937:
	.string	"SBITSIZETYPE"
.LASF95:
	.string	"QCmode"
.LASF204:
	.string	"VALUE"
.LASF184:
	.string	"NOTE"
.LASF1053:
	.string	"LTI_lexf2"
.LASF456:
	.string	"CLEANUP_POINT_EXPR"
.LASF1178:
	.string	"frame_phase"
.LASF59:
	.string	"sse_nregs"
.LASF1211:
	.string	"volatilep"
.LASF228:
	.string	"UMIN"
.LASF154:
	.string	"MATCH_DUP"
.LASF426:
	.string	"REAL_CST"
.LASF627:
	.string	"BUILT_IN_ISLESS"
.LASF585:
	.string	"BUILT_IN_STRCHR"
.LASF1131:
	.string	"HARD_REG_ELT_TYPE"
.LASF1160:
	.string	"new_sp_equiv_reg"
.LASF641:
	.string	"BUILT_IN_VA_END"
.LASF1478:
	.string	"ix86_preferred_stack_boundary"
.LASF1388:
	.string	"block_vector"
.LASF305:
	.string	"basic_block_def"
.LASF636:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1212:
	.string	"usedp"
.LASF1027:
	.string	"LTI_eqhf2"
.LASF1223:
	.string	"unsigned_p"
.LASF735:
	.string	"reference_to"
.LASF475:
	.string	"FIX_ROUND_EXPR"
.LASF502:
	.string	"NE_EXPR"
.LASF970:
	.string	"varasm_status"
.LASF605:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF1260:
	.string	"body"
.LASF592:
	.string	"BUILT_IN_COSF"
.LASF410:
	.string	"ENUMERAL_TYPE"
.LASF947:
	.string	"sequence_rtl_expr"
.LASF1164:
	.string	"push_function_context_to"
.LASF357:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1168:
	.string	"pop_function_context"
.LASF1134:
	.string	"bitmap_element"
.LASF1004:
	.string	"LTI_extendsfxf2"
.LASF764:
	.string	"x_function_call_count"
.LASF102:
	.string	"CHImode"
.LASF561:
	.string	"BUILT_IN_CREALF"
.LASF373:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF176:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF844:
	.string	"non_addr_const_p"
.LASF1366:
	.string	"boundary_in_bytes"
.LASF1214:
	.string	"part_type"
.LASF682:
	.string	"elements"
.LASF956:
	.string	"regno_pointer_align_length"
.LASF951:
	.string	"x_first_insn"
.LASF920:
	.string	"itk_signed_char"
.LASF965:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF1540:
	.string	"ggc_pending_trees"
.LASF200:
	.string	"CONST_DOUBLE"
.LASF607:
	.string	"BUILT_IN_SETJMP"
.LASF882:
	.string	"TI_SIZE_ONE"
.LASF624:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF926:
	.string	"itk_long"
.LASF131:
	.string	"CCNOmode"
.LASF1534:
	.string	"current_function_is_leaf"
.LASF112:
	.string	"V4HImode"
.LASF446:
	.string	"CONSTRUCTOR"
.LASF1216:
	.string	"hipart"
.LASF1475:
	.string	"purge_addressof_replacements"
.LASF1491:
	.string	"static_chain_incoming_rtx"
.LASF238:
	.string	"UNEQ"
.LASF404:
	.string	"BLOCK"
.LASF221:
	.string	"ASHIFT"
.LASF898:
	.string	"TI_VOID_LIST_NODE"
.LASF1443:
	.string	"line_note"
.LASF226:
	.string	"SMIN"
.LASF1182:
	.string	"__FUNCTION__"
.LASF1215:
	.string	"lopart"
.LASF213:
	.string	"IF_THEN_ELSE"
.LASF833:
	.string	"bit_field_flag"
.LASF612:
	.string	"BUILT_IN_PUTS"
.LASF1516:
	.string	"frame_pointer_needed"
.LASF1015:
	.string	"LTI_memmove"
.LASF836:
	.string	"in_system_header_flag"
.LASF1093:
	.string	"LTI_fixunsxfdi"
.LASF656:
	.string	"nothrow_flag"
.LASF839:
	.string	"transparent_union"
.LASF369:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF753:
	.string	"outer"
.LASF862:
	.string	"vindex"
.LASF697:
	.string	"extra_arg"
.LASF1305:
	.string	"new_offset"
.LASF393:
	.string	"LCT_CONST_MAKE_BLOCK"
.LASF366:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1401:
	.string	"reorder_fix_fragments"
.LASF428:
	.string	"VECTOR_CST"
.LASF1461:
	.string	"mark_function_status"
.LASF63:
	.string	"unsigned int"
.LASF520:
	.string	"RTL_EXPR"
.LASF1196:
	.string	"assign_stack_local_1"
.LASF289:
	.string	"tree_node"
.LASF1240:
	.string	"note"
.LASF769:
	.string	"x_cleanup_label"
.LASF1018:
	.string	"LTI_bcmp"
.LASF509:
	.string	"UNEQ_EXPR"
.LASF577:
	.string	"BUILT_IN_STRNCPY"
.LASF1025:
	.string	"LTI_unwind_sjlj_register"
.LASF406:
	.string	"INTEGER_TYPE"
.LASF239:
	.string	"UNGE"
.LASF1049:
	.string	"LTI_nexf2"
.LASF1426:
	.string	"doit"
.LASF1218:
	.string	"original_regno"
.LASF950:
	.string	"x_first_label_num"
.LASF988:
	.string	"optab_methods"
.LASF829:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF309:
	.string	"pred"
.LASF240:
	.string	"UNGT"
.LASF813:
	.string	"has_computed_jump"
.LASF587:
	.string	"BUILT_IN_SQRT"
.LASF442:
	.string	"BUFFER_REF"
.LASF952:
	.string	"x_last_insn"
.LASF1034:
	.string	"LTI_eqsf2"
.LASF685:
	.string	"prev"
.LASF525:
	.string	"COMPLEX_EXPR"
.LASF633:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1355:
	.string	"in_regs"
.LASF799:
	.string	"preferred_stack_boundary"
.LASF1509:
	.string	"flag_force_addr"
.LASF1357:
	.string	"offset_ptr"
.LASF76:
	.string	"VOIDmode"
.LASF351:
	.string	"REG_VTABLE_REF"
.LASF395:
	.string	"LCT_NORETURN"
.LASF897:
	.string	"TI_VA_LIST_TYPE"
.LASF386:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF256:
	.string	"LO_SUM"
.LASF649:
	.string	"addressable_flag"
.LASF1163:
	.string	"containing"
.LASF1003:
	.string	"LTI_extendsfdf2"
.LASF318:
	.string	"frequency"
.LASF407:
	.string	"REAL_TYPE"
.LASF1310:
	.string	"max_parm_reg_num"
.LASF291:
	.string	"rtwint"
.LASF774:
	.string	"x_tail_recursion_label"
.LASF1139:
	.string	"succ_next"
.LASF1281:
	.string	"insns_for_mem_walk"
.LASF544:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF1369:
	.string	"setjmp_args_warning"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
