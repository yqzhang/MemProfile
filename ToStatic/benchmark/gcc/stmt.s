	.file	"stmt.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 stmt.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	stmt_obstack,88,32
	.local	cost_table_
	.comm	cost_table_,258,32
	.local	use_cost_table
	.comm	use_cost_table,4,4
	.local	cost_table_initialized
	.comm	cost_table_initialized,4,4
	.local	using_eh_for_cleanups_p
	.comm	using_eh_for_cleanups_p,4,4
	.globl	using_eh_for_cleanups
	.type	using_eh_for_cleanups, @function
using_eh_for_cleanups:
.LFB2:
	.file 1 "stmt.c"
	.loc 1 441 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 442 0
	movl	$1, using_eh_for_cleanups_p(%rip)	#, using_eh_for_cleanups_p
	.loc 1 443 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	using_eh_for_cleanups, .-using_eh_for_cleanups
	.type	mark_cond_nesting, @function
mark_cond_nesting:
.LFB3:
	.loc 1 450 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# n, n
	.loc 1 451 0
	jmp	.L3	#
.L7:
.LBB2:
	.loc 1 453 0
	movq	-40(%rbp), %rax	# n, tmp62
	movq	24(%rax), %rax	# n_1->exit_label, tmp63
	movq	%rax, -24(%rbp)	# tmp63, r__
	cmpq	$0, -24(%rbp)	#, r__
	je	.L4	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r__, tmp64
	movq	%rax, %rdi	# tmp64,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20755
	jne	.L4	#,
	movq	-24(%rbp), %rax	# r__, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ggc_mark_rtx_children	#
.L4:
.LBE2:
.LBB3:
	.loc 1 454 0 is_stmt 1
	movq	-40(%rbp), %rax	# n, tmp66
	movq	32(%rax), %rax	# n_1->data.cond.endif_label, tmp67
	movq	%rax, -16(%rbp)	# tmp67, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L5	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp68
	movq	%rax, %rdi	# tmp68,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20755
	jne	.L5	#,
	movq	-16(%rbp), %rax	# r__, tmp69
	movq	%rax, %rdi	# tmp69,
	call	ggc_mark_rtx_children	#
.L5:
.LBE3:
.LBB4:
	.loc 1 455 0 is_stmt 1
	movq	-40(%rbp), %rax	# n, tmp70
	movq	40(%rax), %rax	# n_1->data.cond.next_label, tmp71
	movq	%rax, -8(%rbp)	# tmp71, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L6	#,
	.loc 1 455 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp72
	movq	%rax, %rdi	# tmp72,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20755
	jne	.L6	#,
	movq	-8(%rbp), %rax	# r__, tmp73
	movq	%rax, %rdi	# tmp73,
	call	ggc_mark_rtx_children	#
.L6:
.LBE4:
	.loc 1 457 0 is_stmt 1
	movq	-40(%rbp), %rax	# n, tmp74
	movq	8(%rax), %rax	# n_1->next, tmp75
	movq	%rax, -40(%rbp)	# tmp75, n
.L3:
	.loc 1 451 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, n
	jne	.L7	#,
	.loc 1 459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mark_cond_nesting, .-mark_cond_nesting
	.type	mark_loop_nesting, @function
mark_loop_nesting:
.LFB4:
	.loc 1 466 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# n, n
	.loc 1 468 0
	jmp	.L9	#
.L15:
.LBB5:
	.loc 1 470 0
	movq	-56(%rbp), %rax	# n, tmp64
	movq	24(%rax), %rax	# n_1->exit_label, tmp65
	movq	%rax, -40(%rbp)	# tmp65, r__
	cmpq	$0, -40(%rbp)	#, r__
	je	.L10	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# r__, tmp66
	movq	%rax, %rdi	# tmp66,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20756
	jne	.L10	#,
	movq	-40(%rbp), %rax	# r__, tmp67
	movq	%rax, %rdi	# tmp67,
	call	ggc_mark_rtx_children	#
.L10:
.LBE5:
.LBB6:
	.loc 1 471 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp68
	movq	32(%rax), %rax	# n_1->data.loop.start_label, tmp69
	movq	%rax, -32(%rbp)	# tmp69, r__
	cmpq	$0, -32(%rbp)	#, r__
	je	.L11	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# r__, tmp70
	movq	%rax, %rdi	# tmp70,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20756
	jne	.L11	#,
	movq	-32(%rbp), %rax	# r__, tmp71
	movq	%rax, %rdi	# tmp71,
	call	ggc_mark_rtx_children	#
.L11:
.LBE6:
.LBB7:
	.loc 1 472 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp72
	movq	40(%rax), %rax	# n_1->data.loop.end_label, tmp73
	movq	%rax, -24(%rbp)	# tmp73, r__
	cmpq	$0, -24(%rbp)	#, r__
	je	.L12	#,
	.loc 1 472 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r__, tmp74
	movq	%rax, %rdi	# tmp74,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20756
	jne	.L12	#,
	movq	-24(%rbp), %rax	# r__, tmp75
	movq	%rax, %rdi	# tmp75,
	call	ggc_mark_rtx_children	#
.L12:
.LBE7:
.LBB8:
	.loc 1 473 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp76
	movq	48(%rax), %rax	# n_1->data.loop.alt_end_label, tmp77
	movq	%rax, -16(%rbp)	# tmp77, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L13	#,
	.loc 1 473 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp78
	movq	%rax, %rdi	# tmp78,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20756
	jne	.L13	#,
	movq	-16(%rbp), %rax	# r__, tmp79
	movq	%rax, %rdi	# tmp79,
	call	ggc_mark_rtx_children	#
.L13:
.LBE8:
.LBB9:
	.loc 1 474 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp80
	movq	56(%rax), %rax	# n_1->data.loop.continue_label, tmp81
	movq	%rax, -8(%rbp)	# tmp81, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L14	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp82
	movq	%rax, %rdi	# tmp82,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20756
	jne	.L14	#,
	movq	-8(%rbp), %rax	# r__, tmp83
	movq	%rax, %rdi	# tmp83,
	call	ggc_mark_rtx_children	#
.L14:
.LBE9:
	.loc 1 476 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp84
	movq	8(%rax), %rax	# n_1->next, tmp85
	movq	%rax, -56(%rbp)	# tmp85, n
.L9:
	.loc 1 468 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, n
	jne	.L15	#,
	.loc 1 478 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	mark_loop_nesting, .-mark_loop_nesting
	.type	mark_block_nesting, @function
mark_block_nesting:
.LFB5:
	.loc 1 485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# n, n
	.loc 1 486 0
	jmp	.L17	#
.L31:
.LBB10:
.LBB11:
	.loc 1 490 0
	movq	-88(%rbp), %rax	# n, tmp105
	movq	24(%rax), %rax	# n_1->exit_label, tmp106
	movq	%rax, -64(%rbp)	# tmp106, r__
	cmpq	$0, -64(%rbp)	#, r__
	je	.L18	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# r__, tmp107
	movq	%rax, %rdi	# tmp107,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L18	#,
	movq	-64(%rbp), %rax	# r__, tmp108
	movq	%rax, %rdi	# tmp108,
	call	ggc_mark_rtx_children	#
.L18:
.LBE11:
.LBB12:
	.loc 1 491 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp109
	movq	40(%rax), %rax	# n_1->data.block.stack_level, tmp110
	movq	%rax, -56(%rbp)	# tmp110, r__
	cmpq	$0, -56(%rbp)	#, r__
	je	.L19	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# r__, tmp111
	movq	%rax, %rdi	# tmp111,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L19	#,
	movq	-56(%rbp), %rax	# r__, tmp112
	movq	%rax, %rdi	# tmp112,
	call	ggc_mark_rtx_children	#
.L19:
.LBE12:
.LBB13:
	.loc 1 492 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp113
	movq	48(%rax), %rax	# n_1->data.block.first_insn, tmp114
	movq	%rax, -48(%rbp)	# tmp114, r__
	cmpq	$0, -48(%rbp)	#, r__
	je	.L20	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# r__, tmp115
	movq	%rax, %rdi	# tmp115,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L20	#,
	movq	-48(%rbp), %rax	# r__, tmp116
	movq	%rax, %rdi	# tmp116,
	call	ggc_mark_rtx_children	#
.L20:
.LBE13:
.LBB14:
	.loc 1 493 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp117
	movq	64(%rax), %rax	# n_1->data.block.cleanups, tmp118
	movq	%rax, -40(%rbp)	# tmp118, t__
	cmpq	$0, -40(%rbp)	#, t__
	je	.L21	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t__, tmp119
	movq	%rax, %rdi	# tmp119,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L21	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.0
	movq	8(%rax), %rdx	# ggc_pending_trees.0_12->elements_used, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.1
	movq	(%rax), %rax	# ggc_pending_trees.1_14->num_elements, D.20758
	cmpq	%rax, %rdx	# D.20758, D.20758
	jb	.L22	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.2
	movq	(%rax), %rax	# ggc_pending_trees.2_16->num_elements, D.20758
	leaq	(%rax,%rax), %rdx	#, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.3
	movq	%rdx, %rsi	# D.20758,
	movq	%rax, %rdi	# ggc_pending_trees.3,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.4, ggc_pending_trees
.L22:
	.loc 1 493 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.5
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.6
	movq	8(%rax), %rdx	# ggc_pending_trees.6_22->elements_used, D.20758
	leaq	1(%rdx), %rsi	#, D.20758
	movq	%rsi, 8(%rax)	# D.20758, ggc_pending_trees.6_22->elements_used
	addq	$4, %rdx	#, tmp120
	movq	-40(%rbp), %rax	# t__, tmp121
	movq	%rax, (%rcx,%rdx,8)	# tmp121, ggc_pending_trees.5_21->data.tree
.L21:
.LBE14:
.LBB15:
	.loc 1 494 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp122
	movq	72(%rax), %rax	# n_1->data.block.outer_cleanups, tmp123
	movq	%rax, -32(%rbp)	# tmp123, t__
	cmpq	$0, -32(%rbp)	#, t__
	je	.L23	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t__, tmp124
	movq	%rax, %rdi	# tmp124,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L23	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.7
	movq	8(%rax), %rdx	# ggc_pending_trees.7_28->elements_used, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.8
	movq	(%rax), %rax	# ggc_pending_trees.8_30->num_elements, D.20758
	cmpq	%rax, %rdx	# D.20758, D.20758
	jb	.L24	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.9
	movq	(%rax), %rax	# ggc_pending_trees.9_32->num_elements, D.20758
	leaq	(%rax,%rax), %rdx	#, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.10
	movq	%rdx, %rsi	# D.20758,
	movq	%rax, %rdi	# ggc_pending_trees.10,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.11, ggc_pending_trees
.L24:
	.loc 1 494 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.12
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.13
	movq	8(%rax), %rdx	# ggc_pending_trees.13_38->elements_used, D.20758
	leaq	1(%rdx), %rsi	#, D.20758
	movq	%rsi, 8(%rax)	# D.20758, ggc_pending_trees.13_38->elements_used
	addq	$4, %rdx	#, tmp125
	movq	-32(%rbp), %rax	# t__, tmp126
	movq	%rax, (%rcx,%rdx,8)	# tmp126, ggc_pending_trees.12_37->data.tree
.L23:
.LBE15:
	.loc 1 496 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp127
	movq	80(%rax), %rax	# n_1->data.block.label_chain, tmp128
	movq	%rax, -72(%rbp)	# tmp128, l
	jmp	.L25	#
.L29:
.LBB16:
	.loc 1 498 0
	movq	-72(%rbp), %rax	# l, tmp129
	movq	%rax, -24(%rbp)	# tmp129, a__
	cmpq	$0, -24(%rbp)	#, a__
	je	.L26	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# a__, tmp130
	movq	%rax, %rdi	# tmp130,
	call	ggc_set_mark	#
.L26:
.LBE16:
.LBB17:
	.loc 1 499 0 is_stmt 1
	movq	-72(%rbp), %rax	# l, tmp131
	movq	8(%rax), %rax	# l_2->label, tmp132
	movq	%rax, -16(%rbp)	# tmp132, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L27	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp133
	movq	%rax, %rdi	# tmp133,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L27	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.14
	movq	8(%rax), %rdx	# ggc_pending_trees.14_46->elements_used, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.15
	movq	(%rax), %rax	# ggc_pending_trees.15_48->num_elements, D.20758
	cmpq	%rax, %rdx	# D.20758, D.20758
	jb	.L28	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.16
	movq	(%rax), %rax	# ggc_pending_trees.16_50->num_elements, D.20758
	leaq	(%rax,%rax), %rdx	#, D.20758
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.17
	movq	%rdx, %rsi	# D.20758,
	movq	%rax, %rdi	# ggc_pending_trees.17,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.18, ggc_pending_trees
.L28:
	.loc 1 499 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.19
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.20
	movq	8(%rax), %rdx	# ggc_pending_trees.20_56->elements_used, D.20758
	leaq	1(%rdx), %rsi	#, D.20758
	movq	%rsi, 8(%rax)	# D.20758, ggc_pending_trees.20_56->elements_used
	addq	$4, %rdx	#, tmp134
	movq	-16(%rbp), %rax	# t__, tmp135
	movq	%rax, (%rcx,%rdx,8)	# tmp135, ggc_pending_trees.19_55->data.tree
.L27:
.LBE17:
	.loc 1 496 0 is_stmt 1
	movq	-72(%rbp), %rax	# l, tmp136
	movq	(%rax), %rax	# l_2->next, tmp137
	movq	%rax, -72(%rbp)	# tmp137, l
.L25:
	.loc 1 496 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, l
	jne	.L29	#,
.LBB18:
	.loc 1 502 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp138
	movq	104(%rax), %rax	# n_1->data.block.last_unconditional_cleanup, tmp139
	movq	%rax, -8(%rbp)	# tmp139, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L30	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp140
	movq	%rax, %rdi	# tmp140,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20757
	jne	.L30	#,
	movq	-8(%rbp), %rax	# r__, tmp141
	movq	%rax, %rdi	# tmp141,
	call	ggc_mark_rtx_children	#
.L30:
.LBE18:
	.loc 1 506 0 is_stmt 1
	movq	-88(%rbp), %rax	# n, tmp142
	movq	8(%rax), %rax	# n_1->next, tmp143
	movq	%rax, -88(%rbp)	# tmp143, n
.L17:
.LBE10:
	.loc 1 486 0 discriminator 1
	cmpq	$0, -88(%rbp)	#, n
	jne	.L31	#,
	.loc 1 508 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mark_block_nesting, .-mark_block_nesting
	.type	mark_case_nesting, @function
mark_case_nesting:
.LFB6:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# n, n
	.loc 1 516 0
	jmp	.L33	#
.L42:
.LBB19:
	.loc 1 518 0
	movq	-56(%rbp), %rax	# n, tmp104
	movq	24(%rax), %rax	# n_1->exit_label, tmp105
	movq	%rax, -40(%rbp)	# tmp105, r__
	cmpq	$0, -40(%rbp)	#, r__
	je	.L34	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# r__, tmp106
	movq	%rax, %rdi	# tmp106,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20759
	jne	.L34	#,
	movq	-40(%rbp), %rax	# r__, tmp107
	movq	%rax, %rdi	# tmp107,
	call	ggc_mark_rtx_children	#
.L34:
.LBE19:
.LBB20:
	.loc 1 519 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp108
	movq	32(%rax), %rax	# n_1->data.case_stmt.start, tmp109
	movq	%rax, -32(%rbp)	# tmp109, r__
	cmpq	$0, -32(%rbp)	#, r__
	je	.L35	#,
	.loc 1 519 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# r__, tmp110
	movq	%rax, %rdi	# tmp110,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20759
	jne	.L35	#,
	movq	-32(%rbp), %rax	# r__, tmp111
	movq	%rax, %rdi	# tmp111,
	call	ggc_mark_rtx_children	#
.L35:
.LBE20:
.LBB21:
	.loc 1 521 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp112
	movq	48(%rax), %rax	# n_1->data.case_stmt.default_label, tmp113
	movq	%rax, -24(%rbp)	# tmp113, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L36	#,
	.loc 1 521 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp114
	movq	%rax, %rdi	# tmp114,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20759
	jne	.L36	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.21
	movq	8(%rax), %rdx	# ggc_pending_trees.21_9->elements_used, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.22
	movq	(%rax), %rax	# ggc_pending_trees.22_11->num_elements, D.20760
	cmpq	%rax, %rdx	# D.20760, D.20760
	jb	.L37	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.23
	movq	(%rax), %rax	# ggc_pending_trees.23_13->num_elements, D.20760
	leaq	(%rax,%rax), %rdx	#, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.24
	movq	%rdx, %rsi	# D.20760,
	movq	%rax, %rdi	# ggc_pending_trees.24,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.25, ggc_pending_trees
.L37:
	.loc 1 521 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.26
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.27
	movq	8(%rax), %rdx	# ggc_pending_trees.27_19->elements_used, D.20760
	leaq	1(%rdx), %rsi	#, D.20760
	movq	%rsi, 8(%rax)	# D.20760, ggc_pending_trees.27_19->elements_used
	addq	$4, %rdx	#, tmp115
	movq	-24(%rbp), %rax	# t__, tmp116
	movq	%rax, (%rcx,%rdx,8)	# tmp116, ggc_pending_trees.26_18->data.tree
.L36:
.LBE21:
.LBB22:
	.loc 1 522 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp117
	movq	56(%rax), %rax	# n_1->data.case_stmt.index_expr, tmp118
	movq	%rax, -16(%rbp)	# tmp118, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L38	#,
	.loc 1 522 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp119
	movq	%rax, %rdi	# tmp119,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20759
	jne	.L38	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.28
	movq	8(%rax), %rdx	# ggc_pending_trees.28_25->elements_used, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.29
	movq	(%rax), %rax	# ggc_pending_trees.29_27->num_elements, D.20760
	cmpq	%rax, %rdx	# D.20760, D.20760
	jb	.L39	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.30
	movq	(%rax), %rax	# ggc_pending_trees.30_29->num_elements, D.20760
	leaq	(%rax,%rax), %rdx	#, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.31
	movq	%rdx, %rsi	# D.20760,
	movq	%rax, %rdi	# ggc_pending_trees.31,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.32, ggc_pending_trees
.L39:
	.loc 1 522 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.33
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.34
	movq	8(%rax), %rdx	# ggc_pending_trees.34_35->elements_used, D.20760
	leaq	1(%rdx), %rsi	#, D.20760
	movq	%rsi, 8(%rax)	# D.20760, ggc_pending_trees.34_35->elements_used
	addq	$4, %rdx	#, tmp120
	movq	-16(%rbp), %rax	# t__, tmp121
	movq	%rax, (%rcx,%rdx,8)	# tmp121, ggc_pending_trees.33_34->data.tree
.L38:
.LBE22:
.LBB23:
	.loc 1 523 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp122
	movq	64(%rax), %rax	# n_1->data.case_stmt.nominal_type, tmp123
	movq	%rax, -8(%rbp)	# tmp123, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L40	#,
	.loc 1 523 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp124
	movq	%rax, %rdi	# tmp124,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20759
	jne	.L40	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.35
	movq	8(%rax), %rdx	# ggc_pending_trees.35_41->elements_used, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.36
	movq	(%rax), %rax	# ggc_pending_trees.36_43->num_elements, D.20760
	cmpq	%rax, %rdx	# D.20760, D.20760
	jb	.L41	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.37
	movq	(%rax), %rax	# ggc_pending_trees.37_45->num_elements, D.20760
	leaq	(%rax,%rax), %rdx	#, D.20760
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.38
	movq	%rdx, %rsi	# D.20760,
	movq	%rax, %rdi	# ggc_pending_trees.38,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.39, ggc_pending_trees
.L41:
	.loc 1 523 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.40
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.41
	movq	8(%rax), %rdx	# ggc_pending_trees.41_51->elements_used, D.20760
	leaq	1(%rdx), %rsi	#, D.20760
	movq	%rsi, 8(%rax)	# D.20760, ggc_pending_trees.41_51->elements_used
	addq	$4, %rdx	#, tmp125
	movq	-8(%rbp), %rax	# t__, tmp126
	movq	%rax, (%rcx,%rdx,8)	# tmp126, ggc_pending_trees.40_50->data.tree
.L40:
.LBE23:
	.loc 1 525 0 is_stmt 1
	movq	-56(%rbp), %rax	# n, tmp127
	movq	40(%rax), %rax	# n_1->data.case_stmt.case_list, D.20761
	movq	%rax, %rdi	# D.20761,
	call	mark_case_node	#
	.loc 1 526 0
	movq	-56(%rbp), %rax	# n, tmp128
	movq	8(%rax), %rax	# n_1->next, tmp129
	movq	%rax, -56(%rbp)	# tmp129, n
.L33:
	.loc 1 516 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, n
	jne	.L42	#,
	.loc 1 528 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mark_case_nesting, .-mark_case_nesting
	.type	mark_case_node, @function
mark_case_node:
.LFB7:
	.loc 1 535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 536 0
	cmpq	$0, -40(%rbp)	#, c
	je	.L43	#,
.LBB24:
	.loc 1 538 0
	movq	-40(%rbp), %rax	# c, tmp103
	movq	24(%rax), %rax	# c_1(D)->low, tmp104
	movq	%rax, -24(%rbp)	# tmp104, t__
	cmpq	$0, -24(%rbp)	#, t__
	je	.L45	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t__, tmp105
	movq	%rax, %rdi	# tmp105,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20762
	jne	.L45	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.42
	movq	8(%rax), %rdx	# ggc_pending_trees.42_4->elements_used, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.43
	movq	(%rax), %rax	# ggc_pending_trees.43_6->num_elements, D.20763
	cmpq	%rax, %rdx	# D.20763, D.20763
	jb	.L46	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.44
	movq	(%rax), %rax	# ggc_pending_trees.44_8->num_elements, D.20763
	leaq	(%rax,%rax), %rdx	#, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.45
	movq	%rdx, %rsi	# D.20763,
	movq	%rax, %rdi	# ggc_pending_trees.45,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.46, ggc_pending_trees
.L46:
	.loc 1 538 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.47
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.48
	movq	8(%rax), %rdx	# ggc_pending_trees.48_14->elements_used, D.20763
	leaq	1(%rdx), %rsi	#, D.20763
	movq	%rsi, 8(%rax)	# D.20763, ggc_pending_trees.48_14->elements_used
	addq	$4, %rdx	#, tmp106
	movq	-24(%rbp), %rax	# t__, tmp107
	movq	%rax, (%rcx,%rdx,8)	# tmp107, ggc_pending_trees.47_13->data.tree
.L45:
.LBE24:
.LBB25:
	.loc 1 539 0 is_stmt 1
	movq	-40(%rbp), %rax	# c, tmp108
	movq	32(%rax), %rax	# c_1(D)->high, tmp109
	movq	%rax, -16(%rbp)	# tmp109, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L47	#,
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp110
	movq	%rax, %rdi	# tmp110,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20762
	jne	.L47	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.49
	movq	8(%rax), %rdx	# ggc_pending_trees.49_20->elements_used, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.50
	movq	(%rax), %rax	# ggc_pending_trees.50_22->num_elements, D.20763
	cmpq	%rax, %rdx	# D.20763, D.20763
	jb	.L48	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.51
	movq	(%rax), %rax	# ggc_pending_trees.51_24->num_elements, D.20763
	leaq	(%rax,%rax), %rdx	#, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.52
	movq	%rdx, %rsi	# D.20763,
	movq	%rax, %rdi	# ggc_pending_trees.52,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.53, ggc_pending_trees
.L48:
	.loc 1 539 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.54
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.55
	movq	8(%rax), %rdx	# ggc_pending_trees.55_30->elements_used, D.20763
	leaq	1(%rdx), %rsi	#, D.20763
	movq	%rsi, 8(%rax)	# D.20763, ggc_pending_trees.55_30->elements_used
	addq	$4, %rdx	#, tmp111
	movq	-16(%rbp), %rax	# t__, tmp112
	movq	%rax, (%rcx,%rdx,8)	# tmp112, ggc_pending_trees.54_29->data.tree
.L47:
.LBE25:
.LBB26:
	.loc 1 540 0 is_stmt 1
	movq	-40(%rbp), %rax	# c, tmp113
	movq	40(%rax), %rax	# c_1(D)->code_label, tmp114
	movq	%rax, -8(%rbp)	# tmp114, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L49	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp115
	movq	%rax, %rdi	# tmp115,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20762
	jne	.L49	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.56
	movq	8(%rax), %rdx	# ggc_pending_trees.56_36->elements_used, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.57
	movq	(%rax), %rax	# ggc_pending_trees.57_38->num_elements, D.20763
	cmpq	%rax, %rdx	# D.20763, D.20763
	jb	.L50	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.58
	movq	(%rax), %rax	# ggc_pending_trees.58_40->num_elements, D.20763
	leaq	(%rax,%rax), %rdx	#, D.20763
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.59
	movq	%rdx, %rsi	# D.20763,
	movq	%rax, %rdi	# ggc_pending_trees.59,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.60, ggc_pending_trees
.L50:
	.loc 1 540 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.61
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.62
	movq	8(%rax), %rdx	# ggc_pending_trees.62_46->elements_used, D.20763
	leaq	1(%rdx), %rsi	#, D.20763
	movq	%rsi, 8(%rax)	# D.20763, ggc_pending_trees.62_46->elements_used
	addq	$4, %rdx	#, tmp116
	movq	-8(%rbp), %rax	# t__, tmp117
	movq	%rax, (%rcx,%rdx,8)	# tmp117, ggc_pending_trees.61_45->data.tree
.L49:
.LBE26:
	.loc 1 542 0 is_stmt 1
	movq	-40(%rbp), %rax	# c, tmp118
	movq	8(%rax), %rax	# c_1(D)->right, D.20764
	movq	%rax, %rdi	# D.20764,
	call	mark_case_node	#
	.loc 1 543 0
	movq	-40(%rbp), %rax	# c, tmp119
	movq	(%rax), %rax	# c_1(D)->left, D.20764
	movq	%rax, %rdi	# D.20764,
	call	mark_case_node	#
.L43:
	.loc 1 545 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mark_case_node, .-mark_case_node
	.type	mark_goto_fixup, @function
mark_goto_fixup:
.LFB8:
	.loc 1 552 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# g, g
	.loc 1 553 0
	jmp	.L52	#
.L63:
.LBB27:
	.loc 1 555 0
	movq	-72(%rbp), %rax	# g, tmp104
	movq	%rax, -56(%rbp)	# tmp104, a__
	cmpq	$0, -56(%rbp)	#, a__
	je	.L53	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# a__, tmp105
	movq	%rax, %rdi	# tmp105,
	call	ggc_set_mark	#
.L53:
.LBE27:
.LBB28:
	.loc 1 556 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp106
	movq	8(%rax), %rax	# g_1->before_jump, tmp107
	movq	%rax, -48(%rbp)	# tmp107, r__
	cmpq	$0, -48(%rbp)	#, r__
	je	.L54	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# r__, tmp108
	movq	%rax, %rdi	# tmp108,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L54	#,
	movq	-48(%rbp), %rax	# r__, tmp109
	movq	%rax, %rdi	# tmp109,
	call	ggc_mark_rtx_children	#
.L54:
.LBE28:
.LBB29:
	.loc 1 557 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp110
	movq	16(%rax), %rax	# g_1->target, tmp111
	movq	%rax, -40(%rbp)	# tmp111, t__
	cmpq	$0, -40(%rbp)	#, t__
	je	.L55	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t__, tmp112
	movq	%rax, %rdi	# tmp112,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L55	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.63
	movq	8(%rax), %rdx	# ggc_pending_trees.63_8->elements_used, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.64
	movq	(%rax), %rax	# ggc_pending_trees.64_10->num_elements, D.20766
	cmpq	%rax, %rdx	# D.20766, D.20766
	jb	.L56	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.65
	movq	(%rax), %rax	# ggc_pending_trees.65_12->num_elements, D.20766
	leaq	(%rax,%rax), %rdx	#, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.66
	movq	%rdx, %rsi	# D.20766,
	movq	%rax, %rdi	# ggc_pending_trees.66,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.67, ggc_pending_trees
.L56:
	.loc 1 557 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.68
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.69
	movq	8(%rax), %rdx	# ggc_pending_trees.69_18->elements_used, D.20766
	leaq	1(%rdx), %rsi	#, D.20766
	movq	%rsi, 8(%rax)	# D.20766, ggc_pending_trees.69_18->elements_used
	addq	$4, %rdx	#, tmp113
	movq	-40(%rbp), %rax	# t__, tmp114
	movq	%rax, (%rcx,%rdx,8)	# tmp114, ggc_pending_trees.68_17->data.tree
.L55:
.LBE29:
.LBB30:
	.loc 1 558 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp115
	movq	24(%rax), %rax	# g_1->context, tmp116
	movq	%rax, -32(%rbp)	# tmp116, t__
	cmpq	$0, -32(%rbp)	#, t__
	je	.L57	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# t__, tmp117
	movq	%rax, %rdi	# tmp117,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L57	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.70
	movq	8(%rax), %rdx	# ggc_pending_trees.70_24->elements_used, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.71
	movq	(%rax), %rax	# ggc_pending_trees.71_26->num_elements, D.20766
	cmpq	%rax, %rdx	# D.20766, D.20766
	jb	.L58	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.72
	movq	(%rax), %rax	# ggc_pending_trees.72_28->num_elements, D.20766
	leaq	(%rax,%rax), %rdx	#, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.73
	movq	%rdx, %rsi	# D.20766,
	movq	%rax, %rdi	# ggc_pending_trees.73,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.74, ggc_pending_trees
.L58:
	.loc 1 558 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.75
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.76
	movq	8(%rax), %rdx	# ggc_pending_trees.76_34->elements_used, D.20766
	leaq	1(%rdx), %rsi	#, D.20766
	movq	%rsi, 8(%rax)	# D.20766, ggc_pending_trees.76_34->elements_used
	addq	$4, %rdx	#, tmp118
	movq	-32(%rbp), %rax	# t__, tmp119
	movq	%rax, (%rcx,%rdx,8)	# tmp119, ggc_pending_trees.75_33->data.tree
.L57:
.LBE30:
.LBB31:
	.loc 1 559 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp120
	movq	32(%rax), %rax	# g_1->target_rtl, tmp121
	movq	%rax, -24(%rbp)	# tmp121, r__
	cmpq	$0, -24(%rbp)	#, r__
	je	.L59	#,
	.loc 1 559 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# r__, tmp122
	movq	%rax, %rdi	# tmp122,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L59	#,
	movq	-24(%rbp), %rax	# r__, tmp123
	movq	%rax, %rdi	# tmp123,
	call	ggc_mark_rtx_children	#
.L59:
.LBE31:
.LBB32:
	.loc 1 560 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp124
	movq	48(%rax), %rax	# g_1->stack_level, tmp125
	movq	%rax, -16(%rbp)	# tmp125, r__
	cmpq	$0, -16(%rbp)	#, r__
	je	.L60	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# r__, tmp126
	movq	%rax, %rdi	# tmp126,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L60	#,
	movq	-16(%rbp), %rax	# r__, tmp127
	movq	%rax, %rdi	# tmp127,
	call	ggc_mark_rtx_children	#
.L60:
.LBE32:
.LBB33:
	.loc 1 561 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp128
	movq	56(%rax), %rax	# g_1->cleanup_list_list, tmp129
	movq	%rax, -8(%rbp)	# tmp129, t__
	cmpq	$0, -8(%rbp)	#, t__
	je	.L61	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# t__, tmp130
	movq	%rax, %rdi	# tmp130,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20765
	jne	.L61	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.77
	movq	8(%rax), %rdx	# ggc_pending_trees.77_44->elements_used, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.78
	movq	(%rax), %rax	# ggc_pending_trees.78_46->num_elements, D.20766
	cmpq	%rax, %rdx	# D.20766, D.20766
	jb	.L62	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.79
	movq	(%rax), %rax	# ggc_pending_trees.79_48->num_elements, D.20766
	leaq	(%rax,%rax), %rdx	#, D.20766
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.80
	movq	%rdx, %rsi	# D.20766,
	movq	%rax, %rdi	# ggc_pending_trees.80,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.81, ggc_pending_trees
.L62:
	.loc 1 561 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.82
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.83
	movq	8(%rax), %rdx	# ggc_pending_trees.83_54->elements_used, D.20766
	leaq	1(%rdx), %rsi	#, D.20766
	movq	%rsi, 8(%rax)	# D.20766, ggc_pending_trees.83_54->elements_used
	addq	$4, %rdx	#, tmp131
	movq	-8(%rbp), %rax	# t__, tmp132
	movq	%rax, (%rcx,%rdx,8)	# tmp132, ggc_pending_trees.82_53->data.tree
.L61:
.LBE33:
	.loc 1 563 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp133
	movq	(%rax), %rax	# g_1->next, tmp134
	movq	%rax, -72(%rbp)	# tmp134, g
.L52:
	.loc 1 553 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, g
	jne	.L63	#,
	.loc 1 565 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mark_goto_fixup, .-mark_goto_fixup
	.globl	free_stmt_status
	.type	free_stmt_status, @function
free_stmt_status:
.LFB9:
	.loc 1 574 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 578 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	8(%rax), %rax	# f_1(D)->stmt, D.20767
	testq	%rax, %rax	# D.20767
	je	.L65	#,
	.loc 1 579 0
	movq	-8(%rbp), %rax	# f, tmp62
	movq	8(%rax), %rax	# f_1(D)->stmt, D.20767
	movq	%rax, %rdi	# D.20767,
	call	free	#
.L65:
	.loc 1 580 0
	movq	-8(%rbp), %rax	# f, tmp63
	movq	$0, 8(%rax)	#, f_1(D)->stmt
	.loc 1 581 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_stmt_status, .-free_stmt_status
	.globl	mark_stmt_status
	.type	mark_stmt_status, @function
mark_stmt_status:
.LFB10:
	.loc 1 588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 589 0
	cmpq	$0, -24(%rbp)	#, p
	jne	.L67	#,
	.loc 1 590 0
	jmp	.L66	#
.L67:
	.loc 1 592 0
	movq	-24(%rbp), %rax	# p, tmp80
	movq	(%rax), %rax	# p_1(D)->x_block_stack, D.20768
	movq	%rax, %rdi	# D.20768,
	call	mark_block_nesting	#
	.loc 1 593 0
	movq	-24(%rbp), %rax	# p, tmp81
	movq	16(%rax), %rax	# p_1(D)->x_cond_stack, D.20768
	movq	%rax, %rdi	# D.20768,
	call	mark_cond_nesting	#
	.loc 1 594 0
	movq	-24(%rbp), %rax	# p, tmp82
	movq	24(%rax), %rax	# p_1(D)->x_loop_stack, D.20768
	movq	%rax, %rdi	# D.20768,
	call	mark_loop_nesting	#
	.loc 1 595 0
	movq	-24(%rbp), %rax	# p, tmp83
	movq	32(%rax), %rax	# p_1(D)->x_case_stack, D.20768
	movq	%rax, %rdi	# D.20768,
	call	mark_case_nesting	#
.LBB34:
	.loc 1 597 0
	movq	-24(%rbp), %rax	# p, tmp84
	movq	56(%rax), %rax	# p_1(D)->x_last_expr_type, tmp85
	movq	%rax, -16(%rbp)	# tmp85, t__
	cmpq	$0, -16(%rbp)	#, t__
	je	.L69	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# t__, tmp86
	movq	%rax, %rdi	# tmp86,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20769
	jne	.L69	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.84
	movq	8(%rax), %rdx	# ggc_pending_trees.84_8->elements_used, D.20770
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.85
	movq	(%rax), %rax	# ggc_pending_trees.85_10->num_elements, D.20770
	cmpq	%rax, %rdx	# D.20770, D.20770
	jb	.L70	#,
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.86
	movq	(%rax), %rax	# ggc_pending_trees.86_12->num_elements, D.20770
	leaq	(%rax,%rax), %rdx	#, D.20770
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.87
	movq	%rdx, %rsi	# D.20770,
	movq	%rax, %rdi	# ggc_pending_trees.87,
	call	varray_grow	#
	movq	%rax, ggc_pending_trees(%rip)	# ggc_pending_trees.88, ggc_pending_trees
.L70:
	.loc 1 597 0 discriminator 2
	movq	ggc_pending_trees(%rip), %rcx	# ggc_pending_trees, ggc_pending_trees.89
	movq	ggc_pending_trees(%rip), %rax	# ggc_pending_trees, ggc_pending_trees.90
	movq	8(%rax), %rdx	# ggc_pending_trees.90_18->elements_used, D.20770
	leaq	1(%rdx), %rsi	#, D.20770
	movq	%rsi, 8(%rax)	# D.20770, ggc_pending_trees.90_18->elements_used
	addq	$4, %rdx	#, tmp87
	movq	-16(%rbp), %rax	# t__, tmp88
	movq	%rax, (%rcx,%rdx,8)	# tmp88, ggc_pending_trees.89_17->data.tree
.L69:
.LBE34:
	.loc 1 599 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp89
	movq	56(%rax), %rax	# p_1(D)->x_last_expr_type, D.20771
	testq	%rax, %rax	# D.20771
	je	.L71	#,
.LBB35:
	.loc 1 600 0
	movq	-24(%rbp), %rax	# p, tmp90
	movq	64(%rax), %rax	# p_1(D)->x_last_expr_value, tmp91
	movq	%rax, -8(%rbp)	# tmp91, r__
	cmpq	$0, -8(%rbp)	#, r__
	je	.L71	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# r__, tmp92
	movq	%rax, %rdi	# tmp92,
	call	ggc_set_mark	#
	testl	%eax, %eax	# D.20769
	jne	.L71	#,
	movq	-8(%rbp), %rax	# r__, tmp93
	movq	%rax, %rdi	# tmp93,
	call	ggc_mark_rtx_children	#
.L71:
.LBE35:
	.loc 1 602 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp94
	movq	96(%rax), %rax	# p_1(D)->x_goto_fixup_chain, D.20772
	movq	%rax, %rdi	# D.20772,
	call	mark_goto_fixup	#
.L66:
	.loc 1 603 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mark_stmt_status, .-mark_stmt_status
	.globl	init_stmt
	.type	init_stmt, @function
init_stmt:
.LFB11:
	.loc 1 607 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 608 0
	movl	$stmt_obstack, %edi	#,
	call	gcc_obstack_init	#
	.loc 1 609 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	init_stmt, .-init_stmt
	.globl	init_stmt_for_function
	.type	init_stmt_for_function, @function
init_stmt_for_function:
.LFB12:
	.loc 1 613 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 614 0
	movq	cfun(%rip), %rbx	# cfun, cfun.91
	movl	$104, %edi	#,
	call	xmalloc	#
	movq	%rax, 8(%rbx)	# D.20773, cfun.91_1->stmt
	.loc 1 617 0
	movq	cfun(%rip), %rax	# cfun, cfun.92
	movq	8(%rax), %rax	# cfun.92_3->stmt, D.20774
	movq	$0, (%rax)	#, _4->x_block_stack
	.loc 1 618 0
	movq	cfun(%rip), %rax	# cfun, cfun.93
	movq	8(%rax), %rax	# cfun.93_5->stmt, D.20774
	movq	$0, 8(%rax)	#, _6->x_stack_block_stack
	.loc 1 619 0
	movq	cfun(%rip), %rax	# cfun, cfun.94
	movq	8(%rax), %rax	# cfun.94_7->stmt, D.20774
	movq	$0, 24(%rax)	#, _8->x_loop_stack
	.loc 1 620 0
	movq	cfun(%rip), %rax	# cfun, cfun.95
	movq	8(%rax), %rax	# cfun.95_9->stmt, D.20774
	movq	$0, 32(%rax)	#, _10->x_case_stack
	.loc 1 621 0
	movq	cfun(%rip), %rax	# cfun, cfun.96
	movq	8(%rax), %rax	# cfun.96_11->stmt, D.20774
	movq	$0, 16(%rax)	#, _12->x_cond_stack
	.loc 1 622 0
	movq	cfun(%rip), %rax	# cfun, cfun.97
	movq	8(%rax), %rax	# cfun.97_13->stmt, D.20774
	movq	$0, 40(%rax)	#, _14->x_nesting_stack
	.loc 1 623 0
	movq	cfun(%rip), %rax	# cfun, cfun.98
	movq	8(%rax), %rax	# cfun.98_15->stmt, D.20774
	movl	$0, 48(%rax)	#, _16->x_nesting_depth
	.loc 1 625 0
	movq	cfun(%rip), %rax	# cfun, cfun.99
	movq	8(%rax), %rax	# cfun.99_17->stmt, D.20774
	movl	$0, 52(%rax)	#, _18->x_block_start_count
	.loc 1 628 0
	movq	cfun(%rip), %rax	# cfun, cfun.100
	movq	8(%rax), %rax	# cfun.100_19->stmt, D.20774
	movq	$0, 96(%rax)	#, _20->x_goto_fixup_chain
	.loc 1 631 0
	movq	cfun(%rip), %rax	# cfun, cfun.101
	movq	8(%rax), %rax	# cfun.101_21->stmt, D.20774
	movl	$0, 72(%rax)	#, _22->x_expr_stmts_for_value
	.loc 1 632 0
	movq	cfun(%rip), %rax	# cfun, cfun.102
	movq	8(%rax), %rax	# cfun.102_23->stmt, D.20774
	movq	$0, 56(%rax)	#, _24->x_last_expr_type
	.loc 1 633 0
	movq	cfun(%rip), %rax	# cfun, cfun.103
	movq	8(%rax), %rax	# cfun.103_25->stmt, D.20774
	movq	$0, 64(%rax)	#, _26->x_last_expr_value
	.loc 1 634 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	init_stmt_for_function, .-init_stmt_for_function
	.globl	in_control_zone_p
	.type	in_control_zone_p, @function
in_control_zone_p:
.LFB13:
	.loc 1 640 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 641 0
	movq	cfun(%rip), %rax	# cfun, cfun.105
	movq	8(%rax), %rax	# cfun.105_2->stmt, D.20775
	movq	16(%rax), %rax	# _3->x_cond_stack, D.20776
	testq	%rax, %rax	# D.20776
	jne	.L75	#,
	.loc 1 641 0 is_stmt 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.106
	movq	8(%rax), %rax	# cfun.106_5->stmt, D.20775
	movq	24(%rax), %rax	# _6->x_loop_stack, D.20776
	testq	%rax, %rax	# D.20776
	jne	.L75	#,
	.loc 1 641 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.107
	movq	8(%rax), %rax	# cfun.107_8->stmt, D.20775
	movq	32(%rax), %rax	# _9->x_case_stack, D.20776
	testq	%rax, %rax	# D.20776
	je	.L76	#,
.L75:
	movl	$1, %eax	#, iftmp.104
	jmp	.L77	#
.L76:
	.loc 1 641 0 discriminator 3
	movl	$0, %eax	#, iftmp.104
.L77:
	.loc 1 642 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	in_control_zone_p, .-in_control_zone_p
	.globl	set_file_and_line_for_stmt
	.type	set_file_and_line_for_stmt, @function
set_file_and_line_for_stmt:
.LFB14:
	.loc 1 649 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	.loc 1 653 0
	movq	cfun(%rip), %rax	# cfun, cfun.108
	movq	8(%rax), %rax	# cfun.108_1->stmt, D.20778
	testq	%rax, %rax	# D.20778
	je	.L79	#,
	.loc 1 655 0
	movq	cfun(%rip), %rax	# cfun, cfun.109
	movq	8(%rax), %rax	# cfun.109_3->stmt, D.20778
	movq	-8(%rbp), %rdx	# file, tmp65
	movq	%rdx, 80(%rax)	# tmp65, _4->x_emit_filename
	.loc 1 656 0
	movq	cfun(%rip), %rax	# cfun, cfun.110
	movq	8(%rax), %rax	# cfun.110_6->stmt, D.20778
	movl	-12(%rbp), %edx	# line, tmp66
	movl	%edx, 88(%rax)	# tmp66, _7->x_emit_lineno
.L79:
	.loc 1 658 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	set_file_and_line_for_stmt, .-set_file_and_line_for_stmt
	.globl	emit_nop
	.type	emit_nop, @function
emit_nop:
.LFB15:
	.loc 1 664 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 667 0
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp64, last_insn
	.loc 1 668 0
	movl	optimize(%rip), %eax	# optimize, optimize.111
	testl	%eax, %eax	# optimize.111
	jne	.L81	#,
	.loc 1 669 0
	movq	-8(%rbp), %rax	# last_insn, tmp65
	movzwl	(%rax), %eax	# last_insn_1->code, D.20779
	cmpw	$36, %ax	#, D.20779
	je	.L83	#,
	.loc 1 670 0
	movq	-8(%rbp), %rax	# last_insn, tmp66
	movzwl	(%rax), %eax	# last_insn_1->code, D.20779
	cmpw	$37, %ax	#, D.20779
	jne	.L81	#,
	.loc 1 671 0
	movq	-8(%rbp), %rax	# last_insn, tmp67
	movq	%rax, %rdi	# tmp67,
	call	prev_real_insn	#
	testq	%rax, %rax	# D.20780
	jne	.L81	#,
.L83:
	.loc 1 672 0
	call	gen_nop	#
	movq	%rax, %rdi	# D.20780,
	call	emit_insn	#
.L81:
	.loc 1 673 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	emit_nop, .-emit_nop
	.section	.rodata
.LC0:
	.string	"stmt.c"
	.text
	.globl	label_rtx
	.type	label_rtx, @function
label_rtx:
.LFB16:
	.loc 1 681 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	.loc 1 682 0
	movq	-8(%rbp), %rax	# label, tmp66
	movzbl	16(%rax), %eax	# label_2(D)->common.code, D.20781
	cmpb	$31, %al	#, D.20781
	je	.L85	#,
	.loc 1 683 0
	movl	$__FUNCTION__.13917, %edx	#,
	movl	$683, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L85:
	.loc 1 685 0
	movq	-8(%rbp), %rax	# label, tmp67
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, D.20782
	testq	%rax, %rax	# D.20782
	jne	.L86	#,
	.loc 1 686 0
	call	gen_label_rtx	#
	movq	-8(%rbp), %rdx	# label, tmp68
	movq	%rax, 144(%rdx)	# D.20782, label_2(D)->decl.rtl
.L86:
	.loc 1 688 0
	movq	-8(%rbp), %rax	# label, tmp69
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, D.20782
	testq	%rax, %rax	# D.20782
	je	.L87	#,
	.loc 1 688 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# label, tmp70
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, iftmp.112
	jmp	.L88	#
.L87:
	.loc 1 688 0 discriminator 2
	movq	-8(%rbp), %rax	# label, tmp71
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	make_decl_rtl	#
	movq	-8(%rbp), %rax	# label, tmp72
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, iftmp.112
.L88:
	.loc 1 689 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	label_rtx, .-label_rtx
	.globl	emit_jump
	.type	emit_jump, @function
emit_jump:
.LFB17:
	.loc 1 697 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	.loc 1 698 0
	call	do_pending_stack_adjust	#
	.loc 1 699 0
	movq	-8(%rbp), %rax	# label, tmp60
	movq	%rax, %rdi	# tmp60,
	call	gen_jump	#
	movq	%rax, %rdi	# D.20785,
	call	emit_jump_insn	#
	.loc 1 700 0
	call	emit_barrier	#
	.loc 1 701 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	emit_jump, .-emit_jump
	.globl	expand_computed_goto
	.type	expand_computed_goto, @function
expand_computed_goto:
.LFB18:
	.loc 1 709 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 710 0
	movq	-24(%rbp), %rax	# exp, tmp60
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp60,
	call	expand_expr	#
	movq	%rax, -8(%rbp)	# tmp61, x
	.loc 1 717 0
	call	emit_queue	#
	.loc 1 718 0
	call	do_pending_stack_adjust	#
	.loc 1 719 0
	movq	-8(%rbp), %rax	# x, tmp62
	movq	%rax, %rdi	# tmp62,
	call	emit_indirect_jump	#
	.loc 1 721 0
	movq	cfun(%rip), %rax	# cfun, cfun.113
	movzbl	425(%rax), %edx	#, tmp65
	orl	$8, %edx	#, tmp66
	movb	%dl, 425(%rax)	# tmp66,
	.loc 1 722 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	expand_computed_goto, .-expand_computed_goto
	.globl	expand_label
	.type	expand_label, @function
expand_label:
.LFB19:
	.loc 1 740 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# label, label
	.loc 1 743 0
	call	do_pending_stack_adjust	#
	.loc 1 744 0
	movq	-24(%rbp), %rax	# label, tmp75
	movq	%rax, %rdi	# tmp75,
	call	label_rtx	#
	movq	%rax, %rdi	# D.20786,
	call	emit_label	#
	.loc 1 745 0
	movq	-24(%rbp), %rax	# label, tmp76
	movq	72(%rax), %rax	# label_2(D)->decl.name, D.20787
	testq	%rax, %rax	# D.20787
	je	.L93	#,
	.loc 1 746 0
	movq	-24(%rbp), %rax	# label, tmp77
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, D.20786
	testq	%rax, %rax	# D.20786
	je	.L94	#,
	.loc 1 746 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# label, tmp78
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, iftmp.114
	jmp	.L95	#
.L94:
	.loc 1 746 0 discriminator 2
	movq	-24(%rbp), %rax	# label, tmp79
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	make_decl_rtl	#
	movq	-24(%rbp), %rax	# label, tmp80
	movq	144(%rax), %rax	# label_2(D)->decl.rtl, iftmp.114
.L95:
	.loc 1 746 0 discriminator 3
	movq	-24(%rbp), %rdx	# label, tmp81
	movq	72(%rdx), %rdx	# label_2(D)->decl.name, D.20787
	movq	32(%rdx), %rdx	# _8->identifier.id.str, D.20788
	movq	%rdx, 56(%rax)	# D.20788, iftmp.114_1->fld[6].rtstr
.L93:
	.loc 1 748 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.115
	movq	8(%rax), %rax	# cfun.115_10->stmt, D.20789
	movq	8(%rax), %rax	# _11->x_stack_block_stack, D.20790
	testq	%rax, %rax	# D.20790
	je	.L92	#,
	.loc 1 750 0
	movl	$16, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -8(%rbp)	# tmp82, p
	.loc 1 751 0
	movq	cfun(%rip), %rax	# cfun, cfun.116
	movq	8(%rax), %rax	# cfun.116_14->stmt, D.20789
	movq	8(%rax), %rax	# _15->x_stack_block_stack, D.20790
	movq	80(%rax), %rdx	# _16->data.block.label_chain, D.20791
	movq	-8(%rbp), %rax	# p, tmp83
	movq	%rdx, (%rax)	# D.20791, p_13->next
	.loc 1 752 0
	movq	cfun(%rip), %rax	# cfun, cfun.117
	movq	8(%rax), %rax	# cfun.117_18->stmt, D.20789
	movq	8(%rax), %rax	# _19->x_stack_block_stack, D.20790
	movq	-8(%rbp), %rdx	# p, tmp84
	movq	%rdx, 80(%rax)	# tmp84, _20->data.block.label_chain
	.loc 1 753 0
	movq	-8(%rbp), %rax	# p, tmp85
	movq	-24(%rbp), %rdx	# label, tmp86
	movq	%rdx, 8(%rax)	# tmp86, p_13->label
.L92:
	.loc 1 755 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	expand_label, .-expand_label
	.globl	declare_nonlocal_label
	.type	declare_nonlocal_label, @function
declare_nonlocal_label:
.LFB20:
	.loc 1 763 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# label, label
	.loc 1 764 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.119
	andl	$33554432, %eax	#, D.20792
	testl	%eax, %eax	# D.20792
	je	.L98	#,
	.loc 1 764 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.118
	jmp	.L99	#
.L98:
	.loc 1 764 0 discriminator 2
	movl	$4, %eax	#, iftmp.118
.L99:
	.loc 1 764 0 discriminator 3
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.20793
	movzbl	%al, %ecx	# D.20793, D.20794
	movl	target_flags(%rip), %eax	# target_flags, target_flags.121
	andl	$33554432, %eax	#, D.20792
	testl	%eax, %eax	# D.20792
	je	.L100	#,
	.loc 1 764 0 discriminator 1
	movl	$5, %eax	#, iftmp.120
	jmp	.L101	#
.L100:
	.loc 1 764 0 discriminator 2
	movl	$4, %eax	#, iftmp.120
.L101:
	.loc 1 764 0 discriminator 3
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20794,
	movl	%eax, %edi	# iftmp.120,
	call	assign_stack_local	#
	movq	%rax, -24(%rbp)	# tmp84, slot
	.loc 1 766 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rbx	# cfun, cfun.122
	movq	cfun(%rip), %rax	# cfun, cfun.123
	movq	160(%rax), %rdx	# cfun.123_15->x_nonlocal_labels, D.20795
	movq	-40(%rbp), %rax	# label, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, 160(%rbx)	# D.20795, cfun.122_14->x_nonlocal_labels
	.loc 1 767 0 discriminator 3
	movq	-40(%rbp), %rax	# label, tmp86
	movq	%rax, %rdi	# tmp86,
	call	label_rtx	#
	movzbl	3(%rax), %edx	# _19->in_struct, tmp89
	orl	$16, %edx	#, tmp90
	movb	%dl, 3(%rax)	# tmp90, _19->in_struct
	.loc 1 768 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.124
	movq	168(%rax), %rax	# cfun.124_20->x_nonlocal_goto_handler_slots, D.20796
	testq	%rax, %rax	# D.20796
	jne	.L102	#,
	.loc 1 772 0
	movq	cfun(%rip), %rax	# cfun, cfun.125
	movq	240(%rax), %rax	# cfun.125_22->x_tail_recursion_reentry, D.20796
	.loc 1 770 0
	movq	16(%rax), %rax	# _23->fld[1].rtx, D.20796
	.loc 1 771 0
	movq	cfun(%rip), %rdx	# cfun, cfun.126
	.loc 1 770 0
	leaq	184(%rdx), %rcx	#, D.20797
	movq	%rax, %rdx	# D.20796,
	movq	%rcx, %rsi	# D.20797,
	movl	$2, %edi	#,
	call	emit_stack_save	#
.L102:
	.loc 1 774 0
	movq	cfun(%rip), %rbx	# cfun, cfun.127
	.loc 1 775 0
	movq	cfun(%rip), %rax	# cfun, cfun.128
	movq	168(%rax), %rdx	# cfun.128_28->x_nonlocal_goto_handler_slots, D.20796
	movq	-24(%rbp), %rax	# slot, tmp91
	movq	%rdx, %rcx	# D.20796,
	movq	%rax, %rdx	# tmp91,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, 168(%rbx)	# D.20796, cfun.127_27->x_nonlocal_goto_handler_slots
	.loc 1 776 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	declare_nonlocal_label, .-declare_nonlocal_label
	.globl	expand_goto
	.type	expand_goto, @function
expand_goto:
.LFB21:
	.loc 1 785 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# label, label
	.loc 1 789 0
	movq	-88(%rbp), %rax	# label, tmp83
	movq	%rax, %rdi	# tmp83,
	call	decl_function_context	#
	movq	%rax, -48(%rbp)	# tmp84, context
	.loc 1 790 0
	cmpq	$0, -48(%rbp)	#, context
	je	.L104	#,
	.loc 1 790 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.129
	cmpq	%rax, -48(%rbp)	# current_function_decl.129, context
	je	.L104	#,
.LBB36:
	.loc 1 792 0 is_stmt 1
	movq	-48(%rbp), %rax	# context, tmp85
	movq	%rax, %rdi	# tmp85,
	call	find_function_data	#
	movq	%rax, -40(%rbp)	# tmp86, p
	.loc 1 793 0
	movq	-88(%rbp), %rax	# label, tmp87
	movq	%rax, %rdi	# tmp87,
	call	label_rtx	#
	movq	%rax, %rdx	#, D.20798
	movl	target_flags(%rip), %eax	# target_flags, target_flags.131
	andl	$33554432, %eax	#, D.20799
	testl	%eax, %eax	# D.20799
	je	.L105	#,
	.loc 1 793 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.130
	jmp	.L106	#
.L105:
	.loc 1 793 0 discriminator 2
	movl	$4, %eax	#, iftmp.130
.L106:
	.loc 1 793 0 discriminator 3
	movl	%eax, %esi	# iftmp.130,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -32(%rbp)	# tmp88, label_ref
	.loc 1 798 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp89
	movq	168(%rax), %rax	# p_9->x_nonlocal_goto_handler_slots, tmp90
	movq	%rax, -80(%rbp)	# tmp90, handler_slot
	.loc 1 799 0 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp91
	movq	160(%rax), %rax	# p_9->x_nonlocal_labels, tmp92
	movq	%rax, -56(%rbp)	# tmp92, link
	jmp	.L107	#
.L108:
	.loc 1 801 0
	movq	-80(%rbp), %rax	# handler_slot, tmp93
	movq	16(%rax), %rax	# handler_slot_1->fld[1].rtx, tmp94
	movq	%rax, -80(%rbp)	# tmp94, handler_slot
	.loc 1 800 0
	movq	-56(%rbp), %rax	# link, tmp95
	movq	(%rax), %rax	# link_4->common.chain, tmp96
	movq	%rax, -56(%rbp)	# tmp96, link
.L107:
	.loc 1 799 0 discriminator 1
	movq	-56(%rbp), %rax	# link, tmp97
	movq	32(%rax), %rax	# link_4->list.value, D.20800
	cmpq	-88(%rbp), %rax	# label, D.20800
	jne	.L108	#,
	.loc 1 802 0
	movq	-80(%rbp), %rax	# handler_slot, tmp98
	movq	8(%rax), %rax	# handler_slot_1->fld[0].rtx, tmp99
	movq	%rax, -80(%rbp)	# tmp99, handler_slot
	.loc 1 804 0
	movq	-40(%rbp), %rax	# p, tmp100
	movzbl	425(%rax), %edx	#, tmp103
	orl	$1, %edx	#, tmp104
	movb	%dl, 425(%rax)	# tmp104,
	.loc 1 805 0
	movq	cfun(%rip), %rax	# cfun, cfun.132
	movzbl	425(%rax), %edx	#, tmp107
	orl	$2, %edx	#, tmp108
	movb	%dl, 425(%rax)	# tmp108,
	.loc 1 806 0
	movq	-32(%rbp), %rax	# label_ref, tmp109
	movzbl	3(%rax), %edx	# label_ref_15->volatil, tmp112
	orl	$8, %edx	#, tmp113
	movb	%dl, 3(%rax)	# tmp113, label_ref_15->volatil
	.loc 1 812 0
	movq	-88(%rbp), %rax	# label, tmp114
	movq	%rax, %rdi	# tmp114,
	call	lookup_static_chain	#
	movq	%rax, %rdi	# D.20798,
	call	copy_to_reg	#
	movq	%rax, -24(%rbp)	# tmp115, static_chain
	.loc 1 816 0
	movq	global_rtl+56(%rip), %rbx	# global_rtl, D.20798
	movq	-80(%rbp), %rax	# handler_slot, tmp116
	movq	%rax, %rdi	# tmp116,
	call	copy_rtx	#
	movq	-24(%rbp), %rdx	# static_chain, tmp117
	movq	%rbx, %rsi	# D.20798,
	movq	%rax, %rdi	# D.20798,
	call	replace_rtx	#
	movq	%rax, %rdi	# D.20798,
	call	copy_to_reg	#
	movq	%rax, -80(%rbp)	# tmp118, handler_slot
	.loc 1 821 0
	movq	-40(%rbp), %rax	# p, tmp119
	movq	184(%rax), %rax	# p_9->x_nonlocal_goto_stack_level, tmp120
	movq	%rax, -72(%rbp)	# tmp120, save_area
	.loc 1 822 0
	cmpq	$0, -72(%rbp)	#, save_area
	je	.L109	#,
	.loc 1 823 0
	movq	global_rtl+56(%rip), %rbx	# global_rtl, D.20798
	movq	-72(%rbp), %rax	# save_area, tmp121
	movq	%rax, %rdi	# tmp121,
	call	copy_rtx	#
	movq	-24(%rbp), %rdx	# static_chain, tmp122
	movq	%rbx, %rsi	# D.20798,
	movq	%rax, %rdi	# D.20798,
	call	replace_rtx	#
	movq	%rax, -72(%rbp)	# tmp123, save_area
.L109:
	.loc 1 838 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.20798
	movq	-24(%rbp), %rdx	# static_chain, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# D.20798,
	call	emit_move_insn	#
	.loc 1 839 0
	movq	-72(%rbp), %rax	# save_area, tmp125
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp125,
	movl	$2, %edi	#,
	call	emit_stack_restore	#
	.loc 1 843 0
	movq	global_rtl+32(%rip), %rax	# global_rtl, D.20798
	movq	%rax, %rdx	# D.20798,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.20798,
	call	emit_insn	#
	.loc 1 844 0
	movq	global_rtl+16(%rip), %rax	# global_rtl, D.20798
	movq	%rax, %rdx	# D.20798,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.20798,
	call	emit_insn	#
	.loc 1 845 0
	movq	-80(%rbp), %rax	# handler_slot, tmp126
	movq	%rax, %rdi	# tmp126,
	call	emit_indirect_jump	#
	.loc 1 850 0
	call	get_last_insn	#
	movq	%rax, -64(%rbp)	# tmp127, insn
	jmp	.L110	#
.L114:
	.loc 1 852 0
	movq	-64(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_3->code, D.20801
	cmpw	$33, %ax	#, D.20801
	jne	.L111	#,
	.loc 1 854 0
	movq	-64(%rbp), %rax	# insn, tmp129
	movq	56(%rax), %rdx	# insn_3->fld[6].rtx, D.20798
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.20798
	movq	%rax, %rsi	# D.20798,
	movl	$27, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	-64(%rbp), %rdx	# insn, tmp130
	movq	%rax, 56(%rdx)	# D.20798, insn_3->fld[6].rtx
	.loc 1 856 0
	jmp	.L112	#
.L111:
	.loc 1 858 0
	movq	-64(%rbp), %rax	# insn, tmp131
	movzwl	(%rax), %eax	# insn_3->code, D.20801
	cmpw	$34, %ax	#, D.20801
	jne	.L113	#,
	.loc 1 859 0
	jmp	.L112	#
.L113:
	.loc 1 850 0
	movq	-64(%rbp), %rax	# insn, tmp132
	movq	16(%rax), %rax	# insn_3->fld[1].rtx, tmp133
	movq	%rax, -64(%rbp)	# tmp133, insn
.L110:
	.loc 1 850 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, insn
	jne	.L114	#,
.L112:
.LBE36:
	.loc 1 791 0 is_stmt 1
	jmp	.L103	#
.L104:
	.loc 1 863 0
	movq	-88(%rbp), %rax	# label, tmp134
	movq	%rax, %rdi	# tmp134,
	call	label_rtx	#
	movq	%rax, %rcx	#, D.20798
	movq	-88(%rbp), %rax	# label, tmp135
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20798,
	movq	%rax, %rdi	# tmp135,
	call	expand_goto_internal	#
.L103:
	.loc 1 864 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	expand_goto, .-expand_goto
	.section	.rodata
	.align 8
.LC1:
	.string	"jump to `%s' invalidly jumps into binding contour"
	.text
	.type	expand_goto_internal, @function
expand_goto_internal:
.LFB22:
	.loc 1 876 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# body, body
	movq	%rsi, -32(%rbp)	# label, label
	movq	%rdx, -40(%rbp)	# last_insn, last_insn
	.loc 1 878 0
	movq	$0, -8(%rbp)	#, stack_level
	.loc 1 880 0
	movq	-32(%rbp), %rax	# label, tmp83
	movzwl	(%rax), %eax	# label_5(D)->code, D.20802
	cmpw	$36, %ax	#, D.20802
	je	.L117	#,
	.loc 1 881 0
	movl	$__FUNCTION__.13957, %edx	#,
	movl	$881, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L117:
	.loc 1 886 0
	movq	-32(%rbp), %rax	# label, tmp84
	movq	16(%rax), %rax	# label_5(D)->fld[1].rtx, D.20803
	testq	%rax, %rax	# D.20803
	je	.L118	#,
	.loc 1 892 0
	movq	cfun(%rip), %rax	# cfun, cfun.133
	movq	8(%rax), %rax	# cfun.133_8->stmt, D.20804
	movq	(%rax), %rax	# _9->x_block_stack, tmp85
	movq	%rax, -16(%rbp)	# tmp85, block
	jmp	.L119	#
.L124:
	.loc 1 894 0
	movq	-16(%rbp), %rax	# block, tmp86
	movq	48(%rax), %rax	# block_1->data.block.first_insn, D.20803
	movl	8(%rax), %edx	# _11->fld[0].rtint, D.20805
	movq	-32(%rbp), %rax	# label, tmp87
	movl	8(%rax), %eax	# label_5(D)->fld[0].rtint, D.20805
	cmpl	%eax, %edx	# D.20805, D.20805
	jge	.L120	#,
	.loc 1 895 0
	jmp	.L121	#
.L120:
	.loc 1 896 0
	movq	-16(%rbp), %rax	# block, tmp88
	movq	40(%rax), %rax	# block_1->data.block.stack_level, D.20803
	testq	%rax, %rax	# D.20803
	je	.L122	#,
	.loc 1 897 0
	movq	-16(%rbp), %rax	# block, tmp89
	movq	40(%rax), %rax	# block_1->data.block.stack_level, tmp90
	movq	%rax, -8(%rbp)	# tmp90, stack_level
.L122:
	.loc 1 899 0
	movq	-16(%rbp), %rax	# block, tmp91
	movq	64(%rax), %rax	# block_1->data.block.cleanups, D.20806
	testq	%rax, %rax	# D.20806
	je	.L123	#,
	.loc 1 901 0
	movq	-16(%rbp), %rax	# block, tmp92
	movq	64(%rax), %rax	# block_1->data.block.cleanups, D.20806
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20806,
	call	expand_cleanups	#
	.loc 1 902 0
	call	do_pending_stack_adjust	#
.L123:
	.loc 1 892 0
	movq	-16(%rbp), %rax	# block, tmp93
	movq	8(%rax), %rax	# block_1->next, tmp94
	movq	%rax, -16(%rbp)	# tmp94, block
.L119:
	.loc 1 892 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, block
	jne	.L124	#,
.L121:
	.loc 1 906 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, stack_level
	je	.L125	#,
	.loc 1 911 0
	call	clear_pending_stack_adjust	#
	.loc 1 912 0
	call	do_pending_stack_adjust	#
	.loc 1 916 0
	movq	cfun(%rip), %rax	# cfun, cfun.134
	movq	200(%rax), %rax	# cfun.134_19->x_return_label, D.20803
	cmpq	-32(%rbp), %rax	# label, D.20803
	jne	.L126	#,
	.loc 1 917 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.135
	movq	8(%rax), %rax	# current_function_decl.135_21->common.type, D.20806
	movzbl	16(%rax), %eax	# _22->common.code, D.20807
	cmpb	$23, %al	#, D.20807
	jne	.L126	#,
	.loc 1 919 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.136
	movq	8(%rax), %rax	# current_function_decl.136_24->common.type, D.20806
	movzbl	62(%rax), %eax	# *_25, D.20807
	andl	$2, %eax	#, D.20807
	testb	%al, %al	# D.20807
	je	.L126	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	jmp	.L125	#
.L126:
	.loc 1 923 0 is_stmt 1
	movq	-8(%rbp), %rax	# stack_level, tmp95
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp95,
	movl	$0, %edi	#,
	call	emit_stack_restore	#
.L125:
	.loc 1 926 0
	cmpq	$0, -24(%rbp)	#, body
	je	.L128	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# body, tmp96
	movzbl	49(%rax), %eax	# *body_28(D), D.20807
	andl	$16, %eax	#, D.20807
	testb	%al, %al	# D.20807
	je	.L128	#,
	.loc 1 928 0 is_stmt 1
	movq	-24(%rbp), %rax	# body, tmp97
	movq	72(%rax), %rax	# body_28(D)->decl.name, D.20806
	movq	32(%rax), %rax	# _31->identifier.id.str, D.20808
	.loc 1 927 0
	movq	%rax, %rsi	# D.20808,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	jmp	.L128	#
.L118:
	.loc 1 932 0
	movq	-40(%rbp), %rdx	# last_insn, tmp98
	movq	-32(%rbp), %rcx	# label, tmp99
	movq	-24(%rbp), %rax	# body, tmp100
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	expand_fixup	#
	testl	%eax, %eax	# D.20805
	jne	.L128	#,
	.loc 1 936 0
	cmpq	$0, -24(%rbp)	#, body
	je	.L128	#,
	.loc 1 937 0
	movq	-24(%rbp), %rax	# body, tmp101
	movzbl	17(%rax), %edx	#, tmp104
	orl	$4, %edx	#, tmp105
	movb	%dl, 17(%rax)	# tmp105,
.L128:
	.loc 1 940 0
	movq	-32(%rbp), %rax	# label, tmp106
	movq	%rax, %rdi	# tmp106,
	call	emit_jump	#
	.loc 1 941 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	expand_goto_internal, .-expand_goto_internal
	.type	expand_fixup, @function
expand_fixup:
.LFB23:
	.loc 1 963 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# tree_label, tree_label
	movq	%rsi, -80(%rbp)	# rtl_label, rtl_label
	movq	%rdx, -88(%rbp)	# last_insn, last_insn
	.loc 1 971 0
	movq	cfun(%rip), %rax	# cfun, cfun.137
	movq	8(%rax), %rax	# cfun.137_11->stmt, D.20811
	movq	16(%rax), %rax	# _12->x_cond_stack, D.20812
	testq	%rax, %rax	# D.20812
	je	.L130	#,
	.loc 1 972 0
	movq	cfun(%rip), %rax	# cfun, cfun.138
	movq	8(%rax), %rax	# cfun.138_14->stmt, D.20811
	movq	16(%rax), %rax	# _15->x_cond_stack, D.20812
	movq	32(%rax), %rax	# _16->data.cond.endif_label, D.20813
	cmpq	-80(%rbp), %rax	# rtl_label, D.20813
	je	.L131	#,
	.loc 1 973 0
	movq	cfun(%rip), %rax	# cfun, cfun.139
	movq	8(%rax), %rax	# cfun.139_19->stmt, D.20811
	movq	16(%rax), %rax	# _20->x_cond_stack, D.20812
	movq	40(%rax), %rax	# _21->data.cond.next_label, D.20813
	cmpq	-80(%rbp), %rax	# rtl_label, D.20813
	jne	.L130	#,
.L131:
	.loc 1 974 0
	movq	cfun(%rip), %rax	# cfun, cfun.140
	movq	8(%rax), %rax	# cfun.140_23->stmt, D.20811
	movq	16(%rax), %rax	# _24->x_cond_stack, tmp132
	movq	%rax, -56(%rbp)	# tmp132, end_block
	jmp	.L132	#
.L130:
	.loc 1 978 0
	movq	cfun(%rip), %rax	# cfun, cfun.141
	movq	8(%rax), %rax	# cfun.141_26->stmt, D.20811
	movq	24(%rax), %rax	# _27->x_loop_stack, D.20812
	testq	%rax, %rax	# D.20812
	je	.L133	#,
	.loc 1 979 0
	movq	cfun(%rip), %rax	# cfun, cfun.142
	movq	8(%rax), %rax	# cfun.142_29->stmt, D.20811
	movq	24(%rax), %rax	# _30->x_loop_stack, D.20812
	movq	32(%rax), %rax	# _31->data.loop.start_label, D.20813
	cmpq	-80(%rbp), %rax	# rtl_label, D.20813
	je	.L134	#,
	.loc 1 980 0
	movq	cfun(%rip), %rax	# cfun, cfun.143
	movq	8(%rax), %rax	# cfun.143_33->stmt, D.20811
	movq	24(%rax), %rax	# _34->x_loop_stack, D.20812
	movq	40(%rax), %rax	# _35->data.loop.end_label, D.20813
	cmpq	-80(%rbp), %rax	# rtl_label, D.20813
	je	.L134	#,
	.loc 1 981 0
	movq	cfun(%rip), %rax	# cfun, cfun.144
	movq	8(%rax), %rax	# cfun.144_37->stmt, D.20811
	movq	24(%rax), %rax	# _38->x_loop_stack, D.20812
	movq	56(%rax), %rax	# _39->data.loop.continue_label, D.20813
	cmpq	-80(%rbp), %rax	# rtl_label, D.20813
	jne	.L133	#,
.L134:
	.loc 1 982 0
	movq	cfun(%rip), %rax	# cfun, cfun.145
	movq	8(%rax), %rax	# cfun.145_41->stmt, D.20811
	movq	24(%rax), %rax	# _42->x_loop_stack, tmp133
	movq	%rax, -56(%rbp)	# tmp133, end_block
	jmp	.L132	#
.L133:
	.loc 1 984 0
	movq	$0, -56(%rbp)	#, end_block
.L132:
	.loc 1 988 0
	cmpq	$0, -56(%rbp)	#, end_block
	je	.L135	#,
.LBB37:
	.loc 1 990 0
	movq	-56(%rbp), %rax	# end_block, tmp134
	movq	(%rax), %rax	# end_block_3->all, tmp135
	movq	%rax, -48(%rbp)	# tmp135, next_block
	.loc 1 991 0
	movq	cfun(%rip), %rax	# cfun, cfun.146
	movq	8(%rax), %rax	# cfun.146_46->stmt, D.20811
	movq	(%rax), %rax	# _47->x_block_stack, tmp136
	movq	%rax, -64(%rbp)	# tmp136, block
	.loc 1 995 0
	jmp	.L136	#
.L138:
	.loc 1 996 0
	movq	-48(%rbp), %rax	# next_block, tmp137
	movq	(%rax), %rax	# next_block_5->all, tmp138
	movq	%rax, -48(%rbp)	# tmp138, next_block
.L136:
	.loc 1 995 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, next_block
	je	.L137	#,
	.loc 1 995 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# next_block, tmp139
	cmpq	-64(%rbp), %rax	# block, tmp139
	jne	.L138	#,
.L137:
	.loc 1 998 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, next_block
	je	.L139	#,
	.loc 1 999 0
	movl	$0, %eax	#, D.20810
	jmp	.L140	#
.L139:
	.loc 1 1003 0
	movq	cfun(%rip), %rax	# cfun, cfun.147
	movq	8(%rax), %rax	# cfun.147_51->stmt, D.20811
	movq	(%rax), %rax	# _52->x_block_stack, D.20812
	movq	8(%rax), %rax	# _53->next, tmp140
	movq	%rax, -48(%rbp)	# tmp140, next_block
	.loc 1 1004 0
	movq	cfun(%rip), %rax	# cfun, cfun.148
	movq	8(%rax), %rax	# cfun.148_55->stmt, D.20811
	movq	(%rax), %rax	# _56->x_block_stack, tmp141
	movq	%rax, -64(%rbp)	# tmp141, block
	jmp	.L141	#
.L143:
	.loc 1 1005 0
	movq	-64(%rbp), %rax	# block, tmp142
	cmpq	-48(%rbp), %rax	# next_block, tmp142
	jne	.L142	#,
	.loc 1 1006 0
	movq	-48(%rbp), %rax	# next_block, tmp143
	movq	8(%rax), %rax	# next_block_7->next, tmp144
	movq	%rax, -48(%rbp)	# tmp144, next_block
.L142:
	.loc 1 1004 0
	movq	-64(%rbp), %rax	# block, tmp145
	movq	(%rax), %rax	# block_1->all, tmp146
	movq	%rax, -64(%rbp)	# tmp146, block
.L141:
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# block, tmp147
	cmpq	-56(%rbp), %rax	# end_block, tmp147
	jne	.L143	#,
	.loc 1 1007 0 is_stmt 1
	movq	-48(%rbp), %rax	# next_block, tmp148
	movq	%rax, -56(%rbp)	# tmp148, end_block
.L135:
.LBE37:
	.loc 1 1013 0
	movq	cfun(%rip), %rax	# cfun, cfun.149
	movq	8(%rax), %rax	# cfun.149_61->stmt, D.20811
	movq	(%rax), %rax	# _62->x_block_stack, tmp149
	movq	%rax, -64(%rbp)	# tmp149, block
	jmp	.L144	#
.L146:
	.loc 1 1014 0
	movq	-64(%rbp), %rax	# block, tmp150
	movq	40(%rax), %rax	# block_2->data.block.stack_level, D.20813
	testq	%rax, %rax	# D.20813
	jne	.L145	#,
	.loc 1 1015 0
	movq	-64(%rbp), %rax	# block, tmp151
	movq	64(%rax), %rax	# block_2->data.block.cleanups, D.20814
	testq	%rax, %rax	# D.20814
	jne	.L145	#,
	.loc 1 1013 0
	movq	-64(%rbp), %rax	# block, tmp152
	movq	8(%rax), %rax	# block_2->next, tmp153
	movq	%rax, -64(%rbp)	# tmp153, block
.L144:
	.loc 1 1013 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# block, tmp154
	cmpq	-56(%rbp), %rax	# end_block, tmp154
	jne	.L146	#,
.L145:
	.loc 1 1018 0 is_stmt 1
	movq	-64(%rbp), %rax	# block, tmp155
	cmpq	-56(%rbp), %rax	# end_block, tmp155
	je	.L147	#,
.LBB38:
	.loc 1 1021 0
	movl	$64, %edi	#,
	call	ggc_alloc	#
	movq	%rax, -40(%rbp)	# tmp156, fixup
	.loc 1 1029 0
	cmpq	$0, -88(%rbp)	#, last_insn
	jne	.L148	#,
	.loc 1 1030 0
	call	do_pending_stack_adjust	#
.L148:
	.loc 1 1031 0
	movq	-40(%rbp), %rax	# fixup, tmp157
	movq	-72(%rbp), %rdx	# tree_label, tmp158
	movq	%rdx, 16(%rax)	# tmp158, fixup_67->target
	.loc 1 1032 0
	movq	-40(%rbp), %rax	# fixup, tmp159
	movq	-80(%rbp), %rdx	# rtl_label, tmp160
	movq	%rdx, 32(%rax)	# tmp160, fixup_67->target_rtl
.LBB39:
	.loc 1 1048 0
	cmpq	$0, -88(%rbp)	#, last_insn
	jne	.L149	#,
	.loc 1 1048 0 is_stmt 0 discriminator 1
	call	get_last_insn	#
	jmp	.L150	#
.L149:
	.loc 1 1048 0 discriminator 2
	movq	-88(%rbp), %rax	# last_insn, iftmp.150
.L150:
	.loc 1 1047 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.150, original_before_jump
	.loc 1 1053 0
	movl	$4, %edi	#,
	call	make_node	#
	movq	%rax, -24(%rbp)	# tmp161, block
	.loc 1 1054 0
	movq	-24(%rbp), %rax	# block, tmp162
	movzbl	18(%rax), %edx	#, tmp165
	orl	$1, %edx	#, tmp166
	movb	%dl, 18(%rax)	# tmp166,
	.loc 1 1056 0
	movq	cfun(%rip), %rax	# cfun, cfun.151
	movzbl	426(%rax), %eax	# *cfun.151_74, D.20815
	andl	$4, %eax	#, D.20815
	testb	%al, %al	# D.20815
	jne	.L151	#,
	.loc 1 1057 0
	movq	-24(%rbp), %rax	# block, tmp167
	movq	%rax, %rdi	# tmp167,
	call	insert_block	#
	jmp	.L152	#
.L151:
	.loc 1 1061 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.152
	movq	104(%rax), %rax	# current_function_decl.152_77->decl.initial, D.20814
	movq	(%rax), %rdx	# _78->common.chain, D.20814
	movq	-24(%rbp), %rax	# block, tmp168
	movq	%rdx, (%rax)	# D.20814, block_73->common.chain
	.loc 1 1062 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.153
	movq	104(%rax), %rax	# current_function_decl.153_80->decl.initial, D.20814
	.loc 1 1063 0
	movq	-24(%rbp), %rdx	# block, tmp169
	movq	%rdx, (%rax)	# tmp169, _81->common.chain
.L152:
	.loc 1 1066 0
	call	start_sequence	#
	.loc 1 1067 0
	movl	$-98, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -16(%rbp)	# tmp170, start
	.loc 1 1068 0
	movq	cfun(%rip), %rax	# cfun, cfun.154
	movzbl	426(%rax), %eax	# *cfun.154_83, D.20815
	andl	$4, %eax	#, D.20815
	testb	%al, %al	# D.20815
	je	.L153	#,
	.loc 1 1069 0
	movq	-16(%rbp), %rax	# start, tmp171
	movq	-24(%rbp), %rdx	# block, tmp172
	movq	%rdx, 32(%rax)	# tmp172, start_82->fld[3].rttree
.L153:
	.loc 1 1070 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	-40(%rbp), %rdx	# fixup, tmp173
	movq	%rax, 8(%rdx)	# D.20813, fixup_67->before_jump
	.loc 1 1071 0
	movl	$-97, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -8(%rbp)	# tmp174, end
	.loc 1 1072 0
	movq	cfun(%rip), %rax	# cfun, cfun.155
	movzbl	426(%rax), %eax	# *cfun.155_88, D.20815
	andl	$4, %eax	#, D.20815
	testb	%al, %al	# D.20815
	je	.L154	#,
	.loc 1 1073 0
	movq	-8(%rbp), %rax	# end, tmp175
	movq	-24(%rbp), %rdx	# block, tmp176
	movq	%rdx, 32(%rax)	# tmp176, end_87->fld[3].rttree
.L154:
	.loc 1 1074 0
	movq	-40(%rbp), %rax	# fixup, tmp177
	movq	-24(%rbp), %rdx	# block, tmp178
	movq	%rdx, 24(%rax)	# tmp178, fixup_67->context
	.loc 1 1075 0
	call	end_sequence	#
	.loc 1 1076 0
	movq	-32(%rbp), %rdx	# original_before_jump, tmp179
	movq	-16(%rbp), %rax	# start, tmp180
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	emit_insns_after	#
.LBE39:
	.loc 1 1079 0
	movq	cfun(%rip), %rax	# cfun, cfun.156
	movq	8(%rax), %rax	# cfun.156_91->stmt, D.20811
	movl	52(%rax), %edx	# _92->x_block_start_count, D.20810
	movq	-40(%rbp), %rax	# fixup, tmp181
	movl	%edx, 40(%rax)	# D.20810, fixup_67->block_start_count
	.loc 1 1080 0
	movq	-40(%rbp), %rax	# fixup, tmp182
	movq	$0, 48(%rax)	#, fixup_67->stack_level
	.loc 1 1082 0
	movq	-64(%rbp), %rax	# block, tmp183
	movq	72(%rax), %rax	# block_2->data.block.outer_cleanups, D.20814
	.loc 1 1086 0
	testq	%rax, %rax	# D.20814
	jne	.L155	#,
	.loc 1 1083 0
	movq	-64(%rbp), %rax	# block, tmp184
	movq	64(%rax), %rax	# block_2->data.block.cleanups, D.20814
	testq	%rax, %rax	# D.20814
	je	.L156	#,
.L155:
	.loc 1 1084 0 discriminator 1
	movq	-64(%rbp), %rax	# block, tmp185
	movq	72(%rax), %rdx	# block_2->data.block.outer_cleanups, D.20814
	movq	-64(%rbp), %rax	# block, tmp186
	movq	64(%rax), %rax	# block_2->data.block.cleanups, D.20814
	.loc 1 1086 0 discriminator 1
	movq	%rax, %rsi	# D.20814,
	movl	$0, %edi	#,
	call	tree_cons	#
	jmp	.L157	#
.L156:
	.loc 1 1086 0 is_stmt 0
	movl	$0, %eax	#, iftmp.157
.L157:
	.loc 1 1082 0 is_stmt 1
	movq	-40(%rbp), %rdx	# fixup, tmp187
	movq	%rax, 56(%rdx)	# iftmp.157, fixup_67->cleanup_list_list
	.loc 1 1087 0
	movq	cfun(%rip), %rax	# cfun, cfun.158
	movq	8(%rax), %rax	# cfun.158_100->stmt, D.20811
	movq	96(%rax), %rdx	# _101->x_goto_fixup_chain, D.20816
	movq	-40(%rbp), %rax	# fixup, tmp188
	movq	%rdx, (%rax)	# D.20816, fixup_67->next
	.loc 1 1088 0
	movq	cfun(%rip), %rax	# cfun, cfun.159
	movq	8(%rax), %rax	# cfun.159_103->stmt, D.20811
	movq	-40(%rbp), %rdx	# fixup, tmp189
	movq	%rdx, 96(%rax)	# tmp189, _104->x_goto_fixup_chain
.L147:
.LBE38:
	.loc 1 1091 0
	cmpq	$0, -64(%rbp)	#, block
	setne	%al	#, D.20817
	movzbl	%al, %eax	# D.20817, D.20810
.L140:
	.loc 1 1092 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	expand_fixup, .-expand_fixup
	.globl	expand_fixups
	.type	expand_fixups, @function
expand_fixups:
.LFB24:
	.loc 1 1100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# first_insn, first_insn
	.loc 1 1101 0
	movq	-8(%rbp), %rax	# first_insn, tmp59
	movl	$0, %r8d	#,
	movq	%rax, %rcx	# tmp59,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	fixup_gotos	#
	.loc 1 1102 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	expand_fixups, .-expand_fixups
	.section	.rodata
	.align 8
.LC2:
	.string	"label `%s' used before containing binding contour"
	.text
	.type	fixup_gotos, @function
fixup_gotos:
.LFB25:
	.loc 1 1124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# thisblock, thisblock
	movq	%rsi, -64(%rbp)	# stack_level, stack_level
	movq	%rdx, -72(%rbp)	# cleanup_list, cleanup_list
	movq	%rcx, -80(%rbp)	# first_insn, first_insn
	movl	%r8d, -84(%rbp)	# dont_jump_in, dont_jump_in
	.loc 1 1132 0
	movq	$0, -40(%rbp)	#, prev
	movq	cfun(%rip), %rax	# cfun, cfun.160
	movq	8(%rax), %rax	# cfun.160_7->stmt, D.20818
	movq	96(%rax), %rax	# _8->x_goto_fixup_chain, tmp111
	movq	%rax, -48(%rbp)	# tmp111, f
	jmp	.L160	#
.L172:
	.loc 1 1135 0
	movq	-48(%rbp), %rax	# f, tmp112
	movq	8(%rax), %rax	# f_1->before_jump, D.20819
	testq	%rax, %rax	# D.20819
	jne	.L161	#,
	.loc 1 1138 0
	cmpq	$0, -40(%rbp)	#, prev
	je	.L163	#,
	.loc 1 1139 0
	movq	-48(%rbp), %rax	# f, tmp113
	movq	(%rax), %rdx	# f_1->next, D.20820
	movq	-40(%rbp), %rax	# prev, tmp114
	movq	%rdx, (%rax)	# D.20820, prev_3->next
	jmp	.L163	#
.L161:
	.loc 1 1143 0
	movq	-48(%rbp), %rax	# f, tmp115
	movq	32(%rax), %rax	# f_1->target_rtl, D.20819
	movq	16(%rax), %rax	# _12->fld[1].rtx, D.20819
	testq	%rax, %rax	# D.20819
	je	.L163	#,
.LBB40:
	.loc 1 1156 0
	movq	-48(%rbp), %rax	# f, tmp116
	movq	16(%rax), %rax	# f_1->target, D.20821
	testq	%rax, %rax	# D.20821
	je	.L164	#,
	.loc 1 1157 0
	cmpl	$0, -84(%rbp)	#, dont_jump_in
	jne	.L165	#,
	.loc 1 1157 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, stack_level
	jne	.L165	#,
	cmpq	$0, -72(%rbp)	#, cleanup_list
	je	.L164	#,
.L165:
	.loc 1 1158 0 is_stmt 1
	movq	-80(%rbp), %rax	# first_insn, tmp117
	movl	8(%rax), %edx	# first_insn_18(D)->fld[0].rtint, D.20822
	movq	-48(%rbp), %rax	# f, tmp118
	movq	32(%rax), %rax	# f_1->target_rtl, D.20819
	movl	8(%rax), %eax	# _20->fld[0].rtint, D.20822
	cmpl	%eax, %edx	# D.20822, D.20822
	jge	.L164	#,
	.loc 1 1159 0
	movq	-80(%rbp), %rax	# first_insn, tmp119
	movl	8(%rax), %edx	# first_insn_18(D)->fld[0].rtint, D.20822
	movq	-48(%rbp), %rax	# f, tmp120
	movq	8(%rax), %rax	# f_1->before_jump, D.20819
	movl	8(%rax), %eax	# _23->fld[0].rtint, D.20822
	cmpl	%eax, %edx	# D.20822, D.20822
	jle	.L164	#,
	.loc 1 1160 0
	movq	-48(%rbp), %rax	# f, tmp121
	movq	16(%rax), %rax	# f_1->target, D.20821
	movzbl	49(%rax), %eax	# *_25, D.20823
	andl	$4, %eax	#, D.20823
	testb	%al, %al	# D.20823
	jne	.L164	#,
	.loc 1 1162 0
	movq	-48(%rbp), %rax	# f, tmp122
	movq	16(%rax), %rax	# f_1->target, D.20821
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.20821,
	movl	$0, %eax	#,
	call	error_with_decl	#
	.loc 1 1165 0
	movq	-48(%rbp), %rax	# f, tmp123
	movq	16(%rax), %rax	# f_1->target, D.20821
	movzbl	49(%rax), %edx	#, tmp126
	orl	$4, %edx	#, tmp127
	movb	%dl, 49(%rax)	# tmp127,
.L164:
	.loc 1 1172 0
	call	start_sequence	#
	.loc 1 1178 0
	movl	$0, %edi	#,
	call	pushlevel	#
	.loc 1 1179 0
	movq	-48(%rbp), %rax	# f, tmp128
	movq	24(%rax), %rax	# f_1->context, D.20821
	movq	%rax, %rdi	# D.20821,
	call	set_block	#
	.loc 1 1182 0
	movq	-48(%rbp), %rax	# f, tmp129
	movq	56(%rax), %rax	# f_1->cleanup_list_list, D.20821
	testq	%rax, %rax	# D.20821
	je	.L166	#,
.LBB41:
	.loc 1 1185 0
	movq	-48(%rbp), %rax	# f, tmp130
	movq	56(%rax), %rax	# f_1->cleanup_list_list, tmp131
	movq	%rax, -32(%rbp)	# tmp131, lists
	jmp	.L167	#
.L169:
	.loc 1 1188 0
	movq	-32(%rbp), %rax	# lists, tmp132
	movzbl	17(%rax), %eax	# *lists_4, D.20823
	andl	$4, %eax	#, D.20823
	testb	%al, %al	# D.20823
	je	.L168	#,
	.loc 1 1189 0
	movq	-32(%rbp), %rax	# lists, tmp133
	movq	32(%rax), %rax	# lists_4->list.value, D.20821
	testq	%rax, %rax	# D.20821
	je	.L168	#,
	.loc 1 1191 0
	movq	-32(%rbp), %rax	# lists, tmp134
	movq	32(%rax), %rax	# lists_4->list.value, D.20821
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20821,
	call	expand_cleanups	#
	.loc 1 1194 0
	call	do_pending_stack_adjust	#
.L168:
	.loc 1 1185 0
	movq	-32(%rbp), %rax	# lists, tmp135
	movq	(%rax), %rax	# lists_4->common.chain, tmp136
	movq	%rax, -32(%rbp)	# tmp136, lists
.L167:
	.loc 1 1185 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, lists
	jne	.L169	#,
.L166:
.LBE41:
	.loc 1 1200 0 is_stmt 1
	movq	-48(%rbp), %rax	# f, tmp137
	movq	48(%rax), %rax	# f_1->stack_level, D.20819
	testq	%rax, %rax	# D.20819
	je	.L170	#,
	.loc 1 1201 0
	movq	-48(%rbp), %rax	# f, tmp138
	movq	32(%rax), %rdx	# f_1->target_rtl, D.20819
	movq	cfun(%rip), %rax	# cfun, cfun.161
	movq	200(%rax), %rax	# cfun.161_40->x_return_label, D.20819
	cmpq	%rax, %rdx	# D.20819, D.20819
	jne	.L171	#,
	.loc 1 1202 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.162
	movq	8(%rax), %rax	# current_function_decl.162_42->common.type, D.20821
	movzbl	16(%rax), %eax	# _43->common.code, D.20823
	.loc 1 1201 0 discriminator 1
	cmpb	$23, %al	#, D.20823
	jne	.L171	#,
	.loc 1 1204 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.163
	movq	8(%rax), %rax	# current_function_decl.163_45->common.type, D.20821
	movzbl	62(%rax), %eax	# *_46, D.20823
	andl	$2, %eax	#, D.20823
	testb	%al, %al	# D.20823
	jne	.L170	#,
.L171:
	.loc 1 1206 0
	movq	-48(%rbp), %rax	# f, tmp139
	movq	8(%rax), %rdx	# f_1->before_jump, D.20819
	movq	-48(%rbp), %rax	# f, tmp140
	movq	48(%rax), %rax	# f_1->stack_level, D.20819
	movq	%rax, %rsi	# D.20819,
	movl	$0, %edi	#,
	call	emit_stack_restore	#
.L170:
	.loc 1 1217 0
	call	get_insns	#
	movq	%rax, -16(%rbp)	# tmp141, cleanup_insns
	.loc 1 1218 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	poplevel	#
	.loc 1 1220 0
	call	end_sequence	#
	.loc 1 1221 0
	movq	-48(%rbp), %rax	# f, tmp142
	movq	8(%rax), %rdx	# f_1->before_jump, D.20819
	movq	-16(%rbp), %rax	# cleanup_insns, tmp143
	movq	%rdx, %rsi	# D.20819,
	movq	%rax, %rdi	# tmp143,
	call	emit_insns_after	#
	.loc 1 1223 0
	movq	-48(%rbp), %rax	# f, tmp144
	movq	$0, 8(%rax)	#, f_1->before_jump
.L163:
.LBE40:
	.loc 1 1132 0
	movq	-48(%rbp), %rax	# f, tmp145
	movq	%rax, -40(%rbp)	# tmp145, prev
	movq	-48(%rbp), %rax	# f, tmp146
	movq	(%rax), %rax	# f_1->next, tmp147
	movq	%rax, -48(%rbp)	# tmp147, f
.L160:
	.loc 1 1132 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, f
	jne	.L172	#,
	.loc 1 1230 0 is_stmt 1
	movq	$0, -40(%rbp)	#, prev
	movq	cfun(%rip), %rax	# cfun, cfun.164
	movq	8(%rax), %rax	# cfun.164_56->stmt, D.20818
	movq	96(%rax), %rax	# _57->x_goto_fixup_chain, tmp148
	movq	%rax, -48(%rbp)	# tmp148, f
	jmp	.L173	#
.L179:
	.loc 1 1231 0
	movq	-48(%rbp), %rax	# f, tmp149
	movq	8(%rax), %rax	# f_2->before_jump, D.20819
	testq	%rax, %rax	# D.20819
	je	.L174	#,
	.loc 1 1232 0
	movq	-48(%rbp), %rax	# f, tmp150
	movq	32(%rax), %rax	# f_2->target_rtl, D.20819
	movq	16(%rax), %rax	# _60->fld[1].rtx, D.20819
	testq	%rax, %rax	# D.20819
	jne	.L174	#,
	.loc 1 1237 0
	cmpq	$0, -56(%rbp)	#, thisblock
	je	.L174	#,
	.loc 1 1240 0
	movq	-56(%rbp), %rax	# thisblock, tmp151
	movl	32(%rax), %edx	# thisblock_62(D)->data.block.block_start_count, D.20822
	.loc 1 1241 0
	movq	-48(%rbp), %rax	# f, tmp152
	movl	40(%rax), %eax	# f_2->block_start_count, D.20822
	.loc 1 1240 0
	cmpl	%eax, %edx	# D.20822, D.20822
	jg	.L174	#,
.LBB42:
	.loc 1 1243 0
	movq	-48(%rbp), %rax	# f, tmp153
	movq	56(%rax), %rax	# f_2->cleanup_list_list, tmp154
	movq	%rax, -24(%rbp)	# tmp154, lists
	.loc 1 1246 0
	jmp	.L175	#
.L178:
	.loc 1 1249 0
	movq	-24(%rbp), %rax	# lists, tmp155
	movq	(%rax), %rdx	# lists_5->common.chain, D.20821
	movq	-56(%rbp), %rax	# thisblock, tmp156
	movq	72(%rax), %rax	# thisblock_62(D)->data.block.outer_cleanups, D.20821
	cmpq	%rax, %rdx	# D.20821, D.20821
	jne	.L176	#,
	.loc 1 1251 0
	call	start_sequence	#
	.loc 1 1252 0
	movl	$0, %edi	#,
	call	pushlevel	#
	.loc 1 1253 0
	movq	-48(%rbp), %rax	# f, tmp157
	movq	24(%rax), %rax	# f_2->context, D.20821
	movq	%rax, %rdi	# D.20821,
	call	set_block	#
	.loc 1 1254 0
	movq	-24(%rbp), %rax	# lists, tmp158
	movq	32(%rax), %rax	# lists_5->list.value, D.20821
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20821,
	call	expand_cleanups	#
	.loc 1 1255 0
	call	do_pending_stack_adjust	#
	.loc 1 1256 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp159, cleanup_insns
	.loc 1 1257 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	poplevel	#
	.loc 1 1258 0
	call	end_sequence	#
	.loc 1 1259 0
	cmpq	$0, -8(%rbp)	#, cleanup_insns
	je	.L177	#,
	.loc 1 1261 0
	movq	-48(%rbp), %rax	# f, tmp160
	movq	8(%rax), %rdx	# f_2->before_jump, D.20819
	movq	-8(%rbp), %rax	# cleanup_insns, tmp161
	movq	%rdx, %rsi	# D.20819,
	movq	%rax, %rdi	# tmp161,
	call	emit_insns_after	#
	movq	-48(%rbp), %rdx	# f, tmp162
	movq	%rax, 8(%rdx)	# D.20819, f_2->before_jump
.L177:
	.loc 1 1263 0
	movq	-24(%rbp), %rax	# lists, tmp163
	movq	(%rax), %rdx	# lists_5->common.chain, D.20821
	movq	-48(%rbp), %rax	# f, tmp164
	movq	%rdx, 56(%rax)	# D.20821, f_2->cleanup_list_list
.L176:
	.loc 1 1246 0
	movq	-24(%rbp), %rax	# lists, tmp165
	movq	(%rax), %rax	# lists_5->common.chain, tmp166
	movq	%rax, -24(%rbp)	# tmp166, lists
.L175:
	.loc 1 1246 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, lists
	jne	.L178	#,
	.loc 1 1266 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, stack_level
	je	.L174	#,
	.loc 1 1267 0
	movq	-48(%rbp), %rax	# f, tmp167
	movq	-64(%rbp), %rdx	# stack_level, tmp168
	movq	%rdx, 48(%rax)	# tmp168, f_2->stack_level
.L174:
.LBE42:
	.loc 1 1230 0
	movq	-48(%rbp), %rax	# f, tmp169
	movq	%rax, -40(%rbp)	# tmp169, prev
	movq	-48(%rbp), %rax	# f, tmp170
	movq	(%rax), %rax	# f_2->next, tmp171
	movq	%rax, -48(%rbp)	# tmp171, f
.L173:
	.loc 1 1230 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, f
	jne	.L179	#,
	.loc 1 1269 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	fixup_gotos, .-fixup_gotos
	.type	n_occurrences, @function
n_occurrences:
.LFB26:
	.loc 1 1276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# c, c
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 1277 0
	movl	$0, -4(%rbp)	#, n
	.loc 1 1278 0
	jmp	.L181	#
.L182:
	.loc 1 1279 0
	movq	-32(%rbp), %rax	# s, s.165
	leaq	1(%rax), %rdx	#, tmp67
	movq	%rdx, -32(%rbp)	# tmp67, s
	movzbl	(%rax), %eax	# *s.165_6, D.20825
	movsbl	%al, %eax	# D.20825, D.20826
	cmpl	-20(%rbp), %eax	# c, D.20826
	sete	%al	#, D.20827
	movzbl	%al, %eax	# D.20827, D.20826
	addl	%eax, -4(%rbp)	# D.20826, n
.L181:
	.loc 1 1278 0 discriminator 1
	movq	-32(%rbp), %rax	# s, tmp68
	movzbl	(%rax), %eax	# *s_1, D.20825
	testb	%al, %al	# D.20825
	jne	.L182	#,
	.loc 1 1280 0
	movl	-4(%rbp), %eax	# n, D.20826
	.loc 1 1281 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	n_occurrences, .-n_occurrences
	.globl	expand_asm
	.type	expand_asm, @function
expand_asm:
.LFB27:
	.loc 1 1290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# body, body
	.loc 1 1291 0
	movq	-8(%rbp), %rax	# body, tmp64
	movzbl	16(%rax), %eax	# body_2(D)->common.code, D.20828
	cmpb	$121, %al	#, D.20828
	jne	.L185	#,
	.loc 1 1292 0
	movq	-8(%rbp), %rax	# body, tmp65
	movq	32(%rax), %rax	# body_2(D)->exp.operands, tmp66
	movq	%rax, -8(%rbp)	# tmp66, body
.L185:
	.loc 1 1294 0
	movq	-8(%rbp), %rax	# body, tmp67
	movq	40(%rax), %rax	# body_1->string.pointer, D.20829
	movq	%rax, %rdx	# D.20829,
	movl	$0, %esi	#,
	movl	$40, %edi	#,
	call	gen_rtx_fmt_s	#
	movq	%rax, %rdi	# D.20830,
	call	emit_insn	#
	.loc 1 1296 0
	movq	cfun(%rip), %rax	# cfun, cfun.166
	movq	8(%rax), %rax	# cfun.166_7->stmt, D.20831
	movq	$0, 56(%rax)	#, _8->x_last_expr_type
	.loc 1 1297 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	expand_asm, .-expand_asm
	.section	.rodata
	.align 8
.LC3:
	.string	"output operand constraint lacks `='"
	.align 8
.LC4:
	.string	"output constraint `%c' for operand %d is not at the beginning"
	.align 8
.LC5:
	.string	"operand constraint contains incorrectly positioned '+' or '='"
	.align 8
.LC6:
	.string	"`%%' constraint used with last operand"
	.align 8
.LC7:
	.string	"matching constraint not valid in output operand"
	.text
	.globl	parse_output_constraint
	.type	parse_output_constraint, @function
parse_output_constraint:
.LFB28:
	.loc 1 1322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# constraint_p, constraint_p
	movl	%esi, -60(%rbp)	# operand_num, operand_num
	movl	%edx, -64(%rbp)	# ninputs, ninputs
	movl	%ecx, -68(%rbp)	# noutputs, noutputs
	movq	%r8, -80(%rbp)	# allows_mem, allows_mem
	movq	%r9, -88(%rbp)	# allows_reg, allows_reg
	.loc 1 1323 0
	movq	-56(%rbp), %rax	# constraint_p, tmp138
	movq	(%rax), %rax	# *constraint_p_23(D), tmp139
	movq	%rax, -48(%rbp)	# tmp139, constraint
	.loc 1 1328 0
	movq	-80(%rbp), %rax	# allows_mem, tmp140
	movb	$0, (%rax)	#, *allows_mem_25(D)
	.loc 1 1329 0
	movq	-88(%rbp), %rax	# allows_reg, tmp141
	movb	$0, (%rax)	#, *allows_reg_26(D)
	.loc 1 1335 0
	movq	-48(%rbp), %rax	# constraint, tmp142
	movl	$61, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	strchr	#
	movq	%rax, -40(%rbp)	# tmp143, p
	.loc 1 1336 0
	cmpq	$0, -40(%rbp)	#, p
	jne	.L187	#,
	.loc 1 1337 0
	movq	-48(%rbp), %rax	# constraint, tmp144
	movl	$43, %esi	#,
	movq	%rax, %rdi	# tmp144,
	call	strchr	#
	movq	%rax, -40(%rbp)	# tmp145, p
.L187:
	.loc 1 1341 0
	cmpq	$0, -40(%rbp)	#, p
	jne	.L188	#,
	.loc 1 1343 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1344 0
	movl	$0, %eax	#, D.20832
	jmp	.L189	#
.L188:
	.loc 1 1349 0
	movq	-40(%rbp), %rax	# p, tmp146
	movzbl	(%rax), %eax	# *p_2, D.20833
	cmpb	$43, %al	#, D.20833
	sete	%dl	#, D.20832
	movq	16(%rbp), %rax	# is_inout, tmp147
	movb	%dl, (%rax)	# D.20832, *is_inout_32(D)
	.loc 1 1352 0
	movq	-40(%rbp), %rax	# p, tmp148
	cmpq	-48(%rbp), %rax	# constraint, tmp148
	jne	.L190	#,
	.loc 1 1352 0 is_stmt 0 discriminator 1
	cmpq	$0, 16(%rbp)	#, is_inout
	je	.L191	#,
.L190:
.LBB43:
	.loc 1 1355 0 is_stmt 1
	movq	-48(%rbp), %rax	# constraint, tmp149
	movq	%rax, %rdi	# tmp149,
	call	strlen	#
	movq	%rax, -32(%rbp)	# tmp150, c_len
	.loc 1 1357 0
	movq	-40(%rbp), %rax	# p, tmp151
	cmpq	-48(%rbp), %rax	# constraint, tmp151
	je	.L192	#,
	.loc 1 1359 0
	movq	-40(%rbp), %rax	# p, tmp152
	movzbl	(%rax), %eax	# *p_2, D.20833
	.loc 1 1358 0
	movsbl	%al, %eax	# D.20833, D.20834
	movl	-60(%rbp), %edx	# operand_num, tmp153
	movl	%eax, %esi	# D.20834,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L192:
	.loc 1 1362 0
	movq	-32(%rbp), %rax	# c_len, tmp154
	addq	$1, %rax	#, D.20835
	leaq	15(%rax), %rdx	#, tmp155
	movl	$16, %eax	#, tmp216
	subq	$1, %rax	#, tmp156
	addq	%rdx, %rax	# tmp155, tmp157
	movl	$16, %ebx	#, tmp217
	movl	$0, %edx	#, tmp160
	divq	%rbx	# tmp217
	imulq	$16, %rax, %rax	#, tmp159, tmp161
	subq	%rax, %rsp	# tmp161,
	movq	%rsp, %rax	#, tmp162
	addq	$15, %rax	#, tmp163
	shrq	$4, %rax	#, tmp164
	salq	$4, %rax	#, tmp165
	movq	%rax, -24(%rbp)	# tmp165, buf
	.loc 1 1363 0
	movq	-48(%rbp), %rdx	# constraint, tmp166
	movq	-24(%rbp), %rax	# buf, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	strcpy	#
	.loc 1 1365 0
	movq	-40(%rbp), %rdx	# p, p.167
	movq	-48(%rbp), %rax	# constraint, constraint.168
	subq	%rax, %rdx	# constraint.168, D.20836
	movq	%rdx, %rax	# D.20836, D.20836
	movq	%rax, %rdx	# D.20836, D.20837
	movq	-24(%rbp), %rax	# buf, tmp168
	addq	%rax, %rdx	# tmp168, D.20838
	movq	-24(%rbp), %rax	# buf, tmp169
	movzbl	(%rax), %eax	# *buf_38, D.20833
	movb	%al, (%rdx)	# D.20833, *_43
	.loc 1 1368 0
	movq	-24(%rbp), %rax	# buf, tmp170
	movb	$61, (%rax)	#, *buf_38
	.loc 1 1370 0
	movq	-32(%rbp), %rax	# c_len, tmp171
	movl	%eax, %edx	# tmp171, D.20834
	movq	-24(%rbp), %rax	# buf, tmp172
	movl	%edx, %esi	# D.20834,
	movq	%rax, %rdi	# tmp172,
	call	ggc_alloc_string	#
	movq	-56(%rbp), %rdx	# constraint_p, tmp173
	movq	%rax, (%rdx)	# D.20839, *constraint_p_23(D)
	.loc 1 1371 0
	movq	-56(%rbp), %rax	# constraint_p, tmp174
	movq	(%rax), %rax	# *constraint_p_23(D), tmp175
	movq	%rax, -48(%rbp)	# tmp175, constraint
.L191:
.LBE43:
	.loc 1 1375 0
	movq	-48(%rbp), %rax	# constraint, tmp179
	addq	$1, %rax	#, tmp178
	movq	%rax, -40(%rbp)	# tmp178, p
	jmp	.L193	#
.L249:
	.loc 1 1376 0
	movq	-40(%rbp), %rax	# p, tmp180
	movzbl	(%rax), %eax	# *p_3, D.20833
	movsbl	%al, %eax	# D.20833, D.20834
	subl	$33, %eax	#, tmp181
	cmpl	$82, %eax	#, tmp181
	ja	.L194	#,
	movl	%eax, %eax	# tmp181, tmp182
	movq	.L196(,%rax,8), %rax	#, tmp183
	jmp	*%rax	# tmp183
	.section	.rodata
	.align 8
	.align 4
.L196:
	.quad	.L250
	.quad	.L194
	.quad	.L250
	.quad	.L194
	.quad	.L197
	.quad	.L250
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L250
	.quad	.L198
	.quad	.L250
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L199
	.quad	.L194
	.quad	.L194
	.quad	.L200
	.quad	.L198
	.quad	.L200
	.quad	.L250
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L250
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L201
	.quad	.L194
	.quad	.L202
	.quad	.L194
	.quad	.L194
	.quad	.L199
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L202
	.quad	.L194
	.quad	.L250
	.quad	.L194
	.quad	.L194
	.quad	.L194
	.quad	.L201
	.quad	.L250
	.quad	.L201
	.quad	.L203
	.quad	.L194
	.quad	.L203
	.quad	.L250
	.text
.L198:
	.loc 1 1380 0
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1381 0
	movl	$0, %eax	#, D.20832
	jmp	.L189	#
.L197:
	.loc 1 1384 0
	movl	-60(%rbp), %eax	# operand_num, tmp184
	leal	1(%rax), %ecx	#, D.20834
	movl	-68(%rbp), %eax	# noutputs, tmp185
	movl	-64(%rbp), %edx	# ninputs, tmp186
	addl	%edx, %eax	# tmp186, D.20834
	cmpl	%eax, %ecx	# D.20834, D.20834
	jne	.L204	#,
	.loc 1 1386 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1387 0
	movl	$0, %eax	#, D.20832
	jmp	.L189	#
.L204:
	.loc 1 1389 0
	jmp	.L205	#
.L201:
	.loc 1 1392 0
	movq	-80(%rbp), %rax	# allows_mem, tmp187
	movb	$1, (%rax)	#, *allows_mem_25(D)
	.loc 1 1393 0
	jmp	.L205	#
.L199:
	.loc 1 1405 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1406 0
	movl	$0, %eax	#, D.20832
	jmp	.L189	#
.L200:
	.loc 1 1412 0
	movq	-80(%rbp), %rax	# allows_mem, tmp188
	movb	$1, (%rax)	#, *allows_mem_25(D)
	.loc 1 1413 0
	jmp	.L205	#
.L202:
	.loc 1 1416 0
	movq	-88(%rbp), %rax	# allows_reg, tmp189
	movb	$1, (%rax)	#, *allows_reg_26(D)
	.loc 1 1417 0
	movq	-80(%rbp), %rax	# allows_mem, tmp190
	movb	$1, (%rax)	#, *allows_mem_25(D)
	.loc 1 1418 0
	jmp	.L205	#
.L203:
	.loc 1 1421 0
	movq	-88(%rbp), %rax	# allows_reg, tmp191
	movb	$1, (%rax)	#, *allows_reg_26(D)
	.loc 1 1422 0
	jmp	.L205	#
.L194:
	.loc 1 1425 0
	movq	-40(%rbp), %rax	# p, tmp192
	movzbl	(%rax), %eax	# *p_3, D.20833
	movsbl	%al, %eax	# D.20833, D.20834
	movzbl	%al, %eax	# D.20834, D.20834
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.20840
	movzwl	%ax, %eax	# D.20840, D.20834
	andl	$136, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	jne	.L206	#,
	.loc 1 1426 0
	jmp	.L205	#
.L206:
	.loc 1 1427 0
	movq	-40(%rbp), %rax	# p, tmp194
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$114, %al	#, D.20833
	je	.L207	#,
	.loc 1 1427 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp195
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$82, %al	#, D.20833
	je	.L208	#,
	.loc 1 1427 0 discriminator 3
	movq	-40(%rbp), %rax	# p, tmp196
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$113, %al	#, D.20833
	je	.L209	#,
	.loc 1 1427 0 discriminator 5
	movq	-40(%rbp), %rax	# p, tmp197
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$81, %al	#, D.20833
	je	.L210	#,
	.loc 1 1427 0 discriminator 7
	movq	-40(%rbp), %rax	# p, tmp198
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$102, %al	#, D.20833
	jne	.L211	#,
	.loc 1 1427 0 discriminator 9
	movl	target_flags(%rip), %eax	# target_flags, target_flags.175
	andl	$1, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	jne	.L212	#,
	.loc 1 1427 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.176
	andl	$32, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	je	.L213	#,
.L212:
	.loc 1 1427 0 discriminator 1
	movl	$1, %eax	#, iftmp.174
	jmp	.L214	#
.L213:
	.loc 1 1427 0 discriminator 3
	movl	$0, %eax	#, iftmp.174
.L214:
	.loc 1 1427 0 discriminator 4
	andl	$1, %eax	#, iftmp.173
	jmp	.L246	#
.L211:
	.loc 1 1427 0 discriminator 10
	movq	-40(%rbp), %rax	# p, tmp199
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$116, %al	#, D.20833
	jne	.L216	#,
	.loc 1 1427 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.179
	andl	$1, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	jne	.L217	#,
	.loc 1 1427 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.180
	andl	$32, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	je	.L218	#,
.L217:
	.loc 1 1427 0 discriminator 1
	movl	$1, %eax	#, iftmp.178
	jmp	.L219	#
.L218:
	.loc 1 1427 0 discriminator 3
	movl	$0, %eax	#, iftmp.178
.L219:
	.loc 1 1427 0 discriminator 4
	andl	$1, %eax	#, iftmp.177
	jmp	.L246	#
.L216:
	.loc 1 1427 0 discriminator 12
	movq	-40(%rbp), %rax	# p, tmp200
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$117, %al	#, D.20833
	jne	.L221	#,
	.loc 1 1427 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.183
	andl	$1, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	jne	.L222	#,
	.loc 1 1427 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.184
	andl	$32, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	je	.L223	#,
.L222:
	.loc 1 1427 0 discriminator 1
	movl	$1, %eax	#, iftmp.182
	jmp	.L224	#
.L223:
	.loc 1 1427 0 discriminator 3
	movl	$0, %eax	#, iftmp.182
.L224:
	.loc 1 1427 0 discriminator 4
	andl	$1, %eax	#, iftmp.181
	jmp	.L246	#
.L221:
	.loc 1 1427 0 discriminator 14
	movq	-40(%rbp), %rax	# p, tmp201
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$97, %al	#, D.20833
	je	.L226	#,
	.loc 1 1427 0 discriminator 15
	movq	-40(%rbp), %rax	# p, tmp202
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$98, %al	#, D.20833
	je	.L227	#,
	.loc 1 1427 0 discriminator 17
	movq	-40(%rbp), %rax	# p, tmp203
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$99, %al	#, D.20833
	je	.L228	#,
	.loc 1 1427 0 discriminator 19
	movq	-40(%rbp), %rax	# p, tmp204
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$100, %al	#, D.20833
	je	.L229	#,
	.loc 1 1427 0 discriminator 21
	movq	-40(%rbp), %rax	# p, tmp205
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$120, %al	#, D.20833
	jne	.L230	#,
	.loc 1 1427 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.190
	andl	$327680, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	setne	%al	#, iftmp.189
	jmp	.L246	#
.L230:
	.loc 1 1427 0 discriminator 24
	movq	-40(%rbp), %rax	# p, tmp206
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$89, %al	#, D.20833
	jne	.L232	#,
	.loc 1 1427 0 discriminator 25
	movl	target_flags(%rip), %eax	# target_flags, target_flags.192
	andl	$262144, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	setne	%al	#, iftmp.191
	jmp	.L246	#
.L232:
	.loc 1 1427 0 discriminator 26
	movq	-40(%rbp), %rax	# p, tmp207
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$121, %al	#, D.20833
	jne	.L234	#,
	.loc 1 1427 0 discriminator 27
	movl	target_flags(%rip), %eax	# target_flags, target_flags.194
	andl	$16384, %eax	#, D.20834
	testl	%eax, %eax	# D.20834
	setne	%al	#, iftmp.193
	jmp	.L246	#
.L234:
	.loc 1 1427 0 discriminator 28
	movq	-40(%rbp), %rax	# p, tmp208
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$65, %al	#, D.20833
	je	.L236	#,
	.loc 1 1427 0 discriminator 30
	movq	-40(%rbp), %rax	# p, tmp209
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$68, %al	#, D.20833
	je	.L236	#,
	.loc 1 1427 0 discriminator 31
	movq	-40(%rbp), %rax	# p, tmp210
	movzbl	(%rax), %eax	# *p_3, D.20833
	cmpb	$83, %al	#, D.20833
	jne	.L237	#,
.L236:
	.loc 1 1427 0 discriminator 29
	movl	$1, %eax	#, iftmp.195
	jmp	.L238	#
.L237:
	.loc 1 1427 0 discriminator 32
	movl	$0, %eax	#, iftmp.195
.L238:
	.loc 1 1427 0 discriminator 33
	andl	$1, %eax	#, iftmp.193
	jmp	.L246	#
.L229:
	.loc 1 1427 0 discriminator 22
	movl	$1, %eax	#, iftmp.188
	jmp	.L246	#
.L228:
	.loc 1 1427 0 discriminator 20
	movl	$1, %eax	#, iftmp.187
	jmp	.L246	#
.L227:
	.loc 1 1427 0 discriminator 18
	movl	$1, %eax	#, iftmp.186
	jmp	.L246	#
.L226:
	.loc 1 1427 0 discriminator 16
	movl	$1, %eax	#, iftmp.185
	jmp	.L246	#
.L210:
	.loc 1 1427 0 discriminator 8
	movl	$1, %eax	#, iftmp.172
	jmp	.L246	#
.L209:
	.loc 1 1427 0 discriminator 6
	movl	$1, %eax	#, iftmp.171
	jmp	.L246	#
.L208:
	.loc 1 1427 0 discriminator 4
	movl	$1, %eax	#, iftmp.170
	jmp	.L246	#
.L207:
	.loc 1 1427 0 discriminator 2
	movl	$1, %eax	#, iftmp.169
.L246:
	.loc 1 1427 0 discriminator 39
	testb	%al, %al	# iftmp.169
	je	.L247	#,
	.loc 1 1428 0 is_stmt 1
	movq	-88(%rbp), %rax	# allows_reg, tmp211
	movb	$1, (%rax)	#, *allows_reg_26(D)
	.loc 1 1439 0
	jmp	.L205	#
.L247:
	.loc 1 1435 0
	movq	-88(%rbp), %rax	# allows_reg, tmp212
	movb	$1, (%rax)	#, *allows_reg_26(D)
	.loc 1 1436 0
	movq	-80(%rbp), %rax	# allows_mem, tmp213
	movb	$1, (%rax)	#, *allows_mem_25(D)
	.loc 1 1439 0
	jmp	.L205	#
.L250:
	.loc 1 1400 0
	nop
.L205:
	.loc 1 1375 0
	addq	$1, -40(%rbp)	#, p
.L193:
	.loc 1 1375 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp214
	movzbl	(%rax), %eax	# *p_3, D.20833
	testb	%al, %al	# D.20833
	jne	.L249	#,
	.loc 1 1442 0 is_stmt 1
	movl	$1, %eax	#, D.20832
.L189:
	.loc 1 1443 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	parse_output_constraint, .-parse_output_constraint
	.section	.rodata
	.align 8
.LC8:
	.string	"input operand constraint contains `%c'"
	.align 8
.LC9:
	.string	"matching constraint references invalid operand number"
	.align 8
.LC10:
	.string	"invalid punctuation `%c' in constraint"
	.text
	.type	parse_input_constraint, @function
parse_input_constraint:
.LFB29:
	.loc 1 1458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# constraint_p, constraint_p
	movl	%esi, -60(%rbp)	# input_num, input_num
	movl	%edx, -64(%rbp)	# ninputs, ninputs
	movl	%ecx, -68(%rbp)	# noutputs, noutputs
	movl	%r8d, -72(%rbp)	# ninout, ninout
	movq	%r9, -80(%rbp)	# constraints, constraints
	.loc 1 1459 0
	movq	-56(%rbp), %rax	# constraint_p, tmp160
	movq	(%rax), %rax	# *constraint_p_27(D), tmp161
	movq	%rax, -40(%rbp)	# tmp161, constraint
	.loc 1 1460 0
	movq	-40(%rbp), %rax	# constraint, tmp162
	movq	%rax, -16(%rbp)	# tmp162, orig_constraint
	.loc 1 1461 0
	movq	-40(%rbp), %rax	# constraint, tmp163
	movq	%rax, %rdi	# tmp163,
	call	strlen	#
	movq	%rax, -32(%rbp)	# tmp164, c_len
	.loc 1 1466 0
	movq	16(%rbp), %rax	# allows_mem, tmp165
	movb	$0, (%rax)	#, *allows_mem_31(D)
	.loc 1 1467 0
	movq	24(%rbp), %rax	# allows_reg, tmp166
	movb	$0, (%rax)	#, *allows_reg_32(D)
	.loc 1 1471 0
	movq	$0, -24(%rbp)	#, j
	jmp	.L252	#
.L312:
	.loc 1 1472 0
	movq	-24(%rbp), %rax	# j, tmp167
	movq	-40(%rbp), %rdx	# constraint, tmp168
	addq	%rdx, %rax	# tmp168, D.20848
	movzbl	(%rax), %eax	# *_34, D.20849
	movsbl	%al, %eax	# D.20849, D.20850
	subl	$33, %eax	#, tmp169
	cmpl	$82, %eax	#, tmp169
	ja	.L253	#,
	movl	%eax, %eax	# tmp169, tmp170
	movq	.L255(,%rax,8), %rax	#, tmp171
	jmp	*%rax	# tmp171
	.section	.rodata
	.align 8
	.align 4
.L255:
	.quad	.L313
	.quad	.L253
	.quad	.L313
	.quad	.L253
	.quad	.L256
	.quad	.L257
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L313
	.quad	.L257
	.quad	.L313
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L253
	.quad	.L253
	.quad	.L313
	.quad	.L257
	.quad	.L313
	.quad	.L313
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L313
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L259
	.quad	.L253
	.quad	.L260
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L260
	.quad	.L253
	.quad	.L313
	.quad	.L253
	.quad	.L253
	.quad	.L253
	.quad	.L259
	.quad	.L313
	.quad	.L259
	.quad	.L261
	.quad	.L253
	.quad	.L261
	.quad	.L313
	.text
.L257:
	.loc 1 1475 0
	movq	-40(%rbp), %rax	# constraint, tmp172
	cmpq	-16(%rbp), %rax	# orig_constraint, tmp172
	jne	.L262	#,
	.loc 1 1477 0
	movq	-24(%rbp), %rax	# j, tmp173
	movq	-40(%rbp), %rdx	# constraint, tmp174
	addq	%rdx, %rax	# tmp174, D.20848
	movzbl	(%rax), %eax	# *_37, D.20849
	movsbl	%al, %eax	# D.20849, D.20850
	movl	%eax, %esi	# D.20850,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1478 0
	movl	$0, %eax	#, D.20847
	jmp	.L263	#
.L262:
	.loc 1 1480 0
	jmp	.L264	#
.L256:
	.loc 1 1483 0
	movq	-40(%rbp), %rax	# constraint, tmp175
	cmpq	-16(%rbp), %rax	# orig_constraint, tmp175
	jne	.L265	#,
	.loc 1 1484 0
	movl	-60(%rbp), %eax	# input_num, tmp176
	leal	1(%rax), %ecx	#, D.20850
	movl	-72(%rbp), %eax	# ninout, tmp177
	movl	-64(%rbp), %edx	# ninputs, tmp178
	subl	%eax, %edx	# tmp177, D.20850
	movl	%edx, %eax	# D.20850, D.20850
	cmpl	%eax, %ecx	# D.20850, D.20850
	jne	.L265	#,
	.loc 1 1486 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1487 0
	movl	$0, %eax	#, D.20847
	jmp	.L263	#
.L265:
	.loc 1 1489 0
	jmp	.L264	#
.L259:
	.loc 1 1492 0
	movq	16(%rbp), %rax	# allows_mem, tmp179
	movb	$1, (%rax)	#, *allows_mem_31(D)
	.loc 1 1493 0
	jmp	.L264	#
.L258:
.LBB44:
	.loc 1 1514 0
	movq	-24(%rbp), %rax	# j, tmp180
	movq	-40(%rbp), %rdx	# constraint, tmp181
	leaq	(%rdx,%rax), %rcx	#, D.20848
	leaq	-48(%rbp), %rax	#, tmp182
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp182,
	movq	%rcx, %rdi	# D.20848,
	call	strtoul	#
	movq	%rax, -8(%rbp)	# tmp183, match
	.loc 1 1515 0
	movl	-68(%rbp), %eax	# noutputs, tmp184
	cltq
	cmpq	-8(%rbp), %rax	# match, D.20851
	ja	.L266	#,
	.loc 1 1517 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1518 0
	movl	$0, %eax	#, D.20847
	jmp	.L263	#
.L266:
	.loc 1 1523 0
	movq	-48(%rbp), %rax	# end, end.196
	movzbl	(%rax), %eax	# *end.196_52, D.20849
	testb	%al, %al	# D.20849
	jne	.L267	#,
	.loc 1 1524 0
	cmpq	$0, -24(%rbp)	#, j
	je	.L268	#,
	.loc 1 1524 0 is_stmt 0 discriminator 1
	cmpq	$1, -24(%rbp)	#, j
	jne	.L267	#,
	movq	-40(%rbp), %rax	# constraint, tmp185
	movzbl	(%rax), %eax	# *constraint_2, D.20849
	cmpb	$37, %al	#, D.20849
	jne	.L267	#,
.L268:
	.loc 1 1526 0 is_stmt 1
	movq	-8(%rbp), %rax	# match, tmp186
	leaq	0(,%rax,8), %rdx	#, D.20851
	movq	-80(%rbp), %rax	# constraints, tmp187
	addq	%rdx, %rax	# D.20851, D.20852
	movq	(%rax), %rax	# *_57, tmp188
	movq	%rax, -40(%rbp)	# tmp188, constraint
	.loc 1 1527 0
	movq	-56(%rbp), %rax	# constraint_p, tmp189
	movq	-40(%rbp), %rdx	# constraint, tmp190
	movq	%rdx, (%rax)	# tmp190, *constraint_p_27(D)
	.loc 1 1528 0
	movq	-40(%rbp), %rax	# constraint, tmp191
	movq	%rax, %rdi	# tmp191,
	call	strlen	#
	movq	%rax, -32(%rbp)	# tmp192, c_len
	.loc 1 1529 0
	movq	$0, -24(%rbp)	#, j
	jmp	.L264	#
.L267:
	.loc 1 1533 0
	movq	-48(%rbp), %rax	# end, end.197
	movq	%rax, %rdx	# end.197, end.198
	movq	-40(%rbp), %rax	# constraint, constraint.199
	subq	%rax, %rdx	# constraint.199, D.20853
	movq	%rdx, %rax	# D.20853, D.20853
	movq	%rax, -24(%rbp)	# D.20853, j
.L261:
.LBE44:
	.loc 1 1538 0
	movq	24(%rbp), %rax	# allows_reg, tmp193
	movb	$1, (%rax)	#, *allows_reg_32(D)
	.loc 1 1539 0
	jmp	.L264	#
.L260:
	.loc 1 1542 0
	movq	24(%rbp), %rax	# allows_reg, tmp194
	movb	$1, (%rax)	#, *allows_reg_32(D)
	.loc 1 1543 0
	movq	16(%rbp), %rax	# allows_mem, tmp195
	movb	$1, (%rax)	#, *allows_mem_31(D)
	.loc 1 1544 0
	jmp	.L264	#
.L253:
	.loc 1 1547 0
	movq	-24(%rbp), %rax	# j, tmp196
	movq	-40(%rbp), %rdx	# constraint, tmp197
	addq	%rdx, %rax	# tmp197, D.20848
	movzbl	(%rax), %eax	# *_66, D.20849
	movsbl	%al, %eax	# D.20849, D.20850
	movzbl	%al, %eax	# D.20850, D.20850
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.20854
	movzwl	%ax, %eax	# D.20854, D.20850
	andl	$136, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	jne	.L269	#,
	.loc 1 1549 0
	movq	-24(%rbp), %rax	# j, tmp199
	movq	-40(%rbp), %rdx	# constraint, tmp200
	addq	%rdx, %rax	# tmp200, D.20848
	movzbl	(%rax), %eax	# *_73, D.20849
	movsbl	%al, %eax	# D.20849, D.20850
	movl	%eax, %esi	# D.20850,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1550 0
	movl	$0, %eax	#, D.20847
	jmp	.L263	#
.L269:
	.loc 1 1552 0
	movq	-24(%rbp), %rax	# j, tmp201
	movq	-40(%rbp), %rdx	# constraint, tmp202
	addq	%rdx, %rax	# tmp202, D.20848
	movzbl	(%rax), %eax	# *_77, D.20849
	cmpb	$114, %al	#, D.20849
	je	.L270	#,
	.loc 1 1552 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# j, tmp203
	movq	-40(%rbp), %rdx	# constraint, tmp204
	addq	%rdx, %rax	# tmp204, D.20848
	movzbl	(%rax), %eax	# *_79, D.20849
	cmpb	$82, %al	#, D.20849
	je	.L271	#,
	.loc 1 1552 0 discriminator 3
	movq	-24(%rbp), %rax	# j, tmp205
	movq	-40(%rbp), %rdx	# constraint, tmp206
	addq	%rdx, %rax	# tmp206, D.20848
	movzbl	(%rax), %eax	# *_81, D.20849
	cmpb	$113, %al	#, D.20849
	je	.L272	#,
	.loc 1 1552 0 discriminator 5
	movq	-24(%rbp), %rax	# j, tmp207
	movq	-40(%rbp), %rdx	# constraint, tmp208
	addq	%rdx, %rax	# tmp208, D.20848
	movzbl	(%rax), %eax	# *_83, D.20849
	cmpb	$81, %al	#, D.20849
	je	.L273	#,
	.loc 1 1552 0 discriminator 7
	movq	-24(%rbp), %rax	# j, tmp209
	movq	-40(%rbp), %rdx	# constraint, tmp210
	addq	%rdx, %rax	# tmp210, D.20848
	movzbl	(%rax), %eax	# *_85, D.20849
	cmpb	$102, %al	#, D.20849
	jne	.L274	#,
	.loc 1 1552 0 discriminator 9
	movl	target_flags(%rip), %eax	# target_flags, target_flags.206
	andl	$1, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	jne	.L275	#,
	.loc 1 1552 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.207
	andl	$32, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	je	.L276	#,
.L275:
	.loc 1 1552 0 discriminator 1
	movl	$1, %eax	#, iftmp.205
	jmp	.L277	#
.L276:
	.loc 1 1552 0 discriminator 3
	movl	$0, %eax	#, iftmp.205
.L277:
	.loc 1 1552 0 discriminator 4
	andl	$1, %eax	#, iftmp.204
	jmp	.L309	#
.L274:
	.loc 1 1552 0 discriminator 10
	movq	-24(%rbp), %rax	# j, tmp211
	movq	-40(%rbp), %rdx	# constraint, tmp212
	addq	%rdx, %rax	# tmp212, D.20848
	movzbl	(%rax), %eax	# *_94, D.20849
	cmpb	$116, %al	#, D.20849
	jne	.L279	#,
	.loc 1 1552 0 discriminator 11
	movl	target_flags(%rip), %eax	# target_flags, target_flags.210
	andl	$1, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	jne	.L280	#,
	.loc 1 1552 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.211
	andl	$32, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	je	.L281	#,
.L280:
	.loc 1 1552 0 discriminator 1
	movl	$1, %eax	#, iftmp.209
	jmp	.L282	#
.L281:
	.loc 1 1552 0 discriminator 3
	movl	$0, %eax	#, iftmp.209
.L282:
	.loc 1 1552 0 discriminator 4
	andl	$1, %eax	#, iftmp.208
	jmp	.L309	#
.L279:
	.loc 1 1552 0 discriminator 12
	movq	-24(%rbp), %rax	# j, tmp213
	movq	-40(%rbp), %rdx	# constraint, tmp214
	addq	%rdx, %rax	# tmp214, D.20848
	movzbl	(%rax), %eax	# *_103, D.20849
	cmpb	$117, %al	#, D.20849
	jne	.L284	#,
	.loc 1 1552 0 discriminator 13
	movl	target_flags(%rip), %eax	# target_flags, target_flags.214
	andl	$1, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	jne	.L285	#,
	.loc 1 1552 0 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.215
	andl	$32, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	je	.L286	#,
.L285:
	.loc 1 1552 0 discriminator 1
	movl	$1, %eax	#, iftmp.213
	jmp	.L287	#
.L286:
	.loc 1 1552 0 discriminator 3
	movl	$0, %eax	#, iftmp.213
.L287:
	.loc 1 1552 0 discriminator 4
	andl	$1, %eax	#, iftmp.212
	jmp	.L309	#
.L284:
	.loc 1 1552 0 discriminator 14
	movq	-24(%rbp), %rax	# j, tmp215
	movq	-40(%rbp), %rdx	# constraint, tmp216
	addq	%rdx, %rax	# tmp216, D.20848
	movzbl	(%rax), %eax	# *_112, D.20849
	cmpb	$97, %al	#, D.20849
	je	.L289	#,
	.loc 1 1552 0 discriminator 15
	movq	-24(%rbp), %rax	# j, tmp217
	movq	-40(%rbp), %rdx	# constraint, tmp218
	addq	%rdx, %rax	# tmp218, D.20848
	movzbl	(%rax), %eax	# *_114, D.20849
	cmpb	$98, %al	#, D.20849
	je	.L290	#,
	.loc 1 1552 0 discriminator 17
	movq	-24(%rbp), %rax	# j, tmp219
	movq	-40(%rbp), %rdx	# constraint, tmp220
	addq	%rdx, %rax	# tmp220, D.20848
	movzbl	(%rax), %eax	# *_116, D.20849
	cmpb	$99, %al	#, D.20849
	je	.L291	#,
	.loc 1 1552 0 discriminator 19
	movq	-24(%rbp), %rax	# j, tmp221
	movq	-40(%rbp), %rdx	# constraint, tmp222
	addq	%rdx, %rax	# tmp222, D.20848
	movzbl	(%rax), %eax	# *_118, D.20849
	cmpb	$100, %al	#, D.20849
	je	.L292	#,
	.loc 1 1552 0 discriminator 21
	movq	-24(%rbp), %rax	# j, tmp223
	movq	-40(%rbp), %rdx	# constraint, tmp224
	addq	%rdx, %rax	# tmp224, D.20848
	movzbl	(%rax), %eax	# *_120, D.20849
	cmpb	$120, %al	#, D.20849
	jne	.L293	#,
	.loc 1 1552 0 discriminator 23
	movl	target_flags(%rip), %eax	# target_flags, target_flags.221
	andl	$327680, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	setne	%al	#, iftmp.220
	jmp	.L309	#
.L293:
	.loc 1 1552 0 discriminator 24
	movq	-24(%rbp), %rax	# j, tmp225
	movq	-40(%rbp), %rdx	# constraint, tmp226
	addq	%rdx, %rax	# tmp226, D.20848
	movzbl	(%rax), %eax	# *_125, D.20849
	cmpb	$89, %al	#, D.20849
	jne	.L295	#,
	.loc 1 1552 0 discriminator 25
	movl	target_flags(%rip), %eax	# target_flags, target_flags.223
	andl	$262144, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	setne	%al	#, iftmp.222
	jmp	.L309	#
.L295:
	.loc 1 1552 0 discriminator 26
	movq	-24(%rbp), %rax	# j, tmp227
	movq	-40(%rbp), %rdx	# constraint, tmp228
	addq	%rdx, %rax	# tmp228, D.20848
	movzbl	(%rax), %eax	# *_130, D.20849
	cmpb	$121, %al	#, D.20849
	jne	.L297	#,
	.loc 1 1552 0 discriminator 27
	movl	target_flags(%rip), %eax	# target_flags, target_flags.225
	andl	$16384, %eax	#, D.20850
	testl	%eax, %eax	# D.20850
	setne	%al	#, iftmp.224
	jmp	.L309	#
.L297:
	.loc 1 1552 0 discriminator 28
	movq	-24(%rbp), %rax	# j, tmp229
	movq	-40(%rbp), %rdx	# constraint, tmp230
	addq	%rdx, %rax	# tmp230, D.20848
	movzbl	(%rax), %eax	# *_135, D.20849
	cmpb	$65, %al	#, D.20849
	je	.L299	#,
	.loc 1 1552 0 discriminator 30
	movq	-24(%rbp), %rax	# j, tmp231
	movq	-40(%rbp), %rdx	# constraint, tmp232
	addq	%rdx, %rax	# tmp232, D.20848
	movzbl	(%rax), %eax	# *_137, D.20849
	cmpb	$68, %al	#, D.20849
	je	.L299	#,
	.loc 1 1552 0 discriminator 31
	movq	-24(%rbp), %rax	# j, tmp233
	movq	-40(%rbp), %rdx	# constraint, tmp234
	addq	%rdx, %rax	# tmp234, D.20848
	movzbl	(%rax), %eax	# *_139, D.20849
	cmpb	$83, %al	#, D.20849
	jne	.L300	#,
.L299:
	.loc 1 1552 0 discriminator 29
	movl	$1, %eax	#, iftmp.226
	jmp	.L301	#
.L300:
	.loc 1 1552 0 discriminator 32
	movl	$0, %eax	#, iftmp.226
.L301:
	.loc 1 1552 0 discriminator 33
	andl	$1, %eax	#, iftmp.224
	jmp	.L309	#
.L292:
	.loc 1 1552 0 discriminator 22
	movl	$1, %eax	#, iftmp.219
	jmp	.L309	#
.L291:
	.loc 1 1552 0 discriminator 20
	movl	$1, %eax	#, iftmp.218
	jmp	.L309	#
.L290:
	.loc 1 1552 0 discriminator 18
	movl	$1, %eax	#, iftmp.217
	jmp	.L309	#
.L289:
	.loc 1 1552 0 discriminator 16
	movl	$1, %eax	#, iftmp.216
	jmp	.L309	#
.L273:
	.loc 1 1552 0 discriminator 8
	movl	$1, %eax	#, iftmp.203
	jmp	.L309	#
.L272:
	.loc 1 1552 0 discriminator 6
	movl	$1, %eax	#, iftmp.202
	jmp	.L309	#
.L271:
	.loc 1 1552 0 discriminator 4
	movl	$1, %eax	#, iftmp.201
	jmp	.L309	#
.L270:
	.loc 1 1552 0 discriminator 2
	movl	$1, %eax	#, iftmp.200
.L309:
	.loc 1 1552 0 discriminator 39
	testb	%al, %al	# iftmp.200
	je	.L310	#,
	.loc 1 1553 0 is_stmt 1
	movq	24(%rbp), %rax	# allows_reg, tmp235
	movb	$1, (%rax)	#, *allows_reg_32(D)
	.loc 1 1564 0
	jmp	.L264	#
.L310:
	.loc 1 1560 0
	movq	24(%rbp), %rax	# allows_reg, tmp236
	movb	$1, (%rax)	#, *allows_reg_32(D)
	.loc 1 1561 0
	movq	16(%rbp), %rax	# allows_mem, tmp237
	movb	$1, (%rax)	#, *allows_mem_31(D)
	.loc 1 1564 0
	jmp	.L264	#
.L313:
	.loc 1 1501 0
	nop
.L264:
	.loc 1 1471 0
	addq	$1, -24(%rbp)	#, j
.L252:
	.loc 1 1471 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# j, tmp238
	cmpq	-32(%rbp), %rax	# c_len, tmp238
	jb	.L312	#,
	.loc 1 1567 0 is_stmt 1
	movl	$1, %eax	#, D.20847
.L263:
	.loc 1 1568 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	parse_input_constraint, .-parse_input_constraint
	.section	.rodata
.LC11:
	.string	"flags"
.LC12:
	.string	"fpsr"
.LC13:
	.string	"dirflag"
	.align 8
.LC14:
	.string	"unknown register name `%s' in `asm'"
	.align 8
.LC15:
	.string	"more than %d operands in `asm'"
	.align 8
.LC16:
	.string	"output number %d not directly addressable"
	.align 8
.LC17:
	.string	"asm operand %d probably doesn't match constraints"
.LC18:
	.string	"%d"
	.text
	.globl	expand_asm_operands
	.type	expand_asm_operands, @function
expand_asm_operands:
.LFB30:
	.loc 1 1593 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$336, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -280(%rbp)	# string, string
	movq	%rsi, -288(%rbp)	# outputs, outputs
	movq	%rdx, -296(%rbp)	# inputs, inputs
	movq	%rcx, -304(%rbp)	# clobbers, clobbers
	movl	%r8d, -308(%rbp)	# vol, vol
	movq	%r9, -320(%rbp)	# filename, filename
	.loc 1 1593 0
	movq	%fs:40, %rax	#, tmp805
	movq	%rax, -24(%rbp)	# tmp805, D.20877
	xorl	%eax, %eax	# tmp805
	.loc 1 1596 0
	movq	-296(%rbp), %rax	# inputs, tmp368
	movq	%rax, %rdi	# tmp368,
	call	list_length	#
	movl	%eax, -252(%rbp)	# tmp369, ninputs
	.loc 1 1597 0
	movq	-288(%rbp), %rax	# outputs, tmp370
	movq	%rax, %rdi	# tmp370,
	call	list_length	#
	movl	%eax, -248(%rbp)	# tmp371, noutputs
	.loc 1 1603 0
	movl	-248(%rbp), %eax	# noutputs, tmp372
	cltq
	salq	$3, %rax	#, D.20858
	leaq	15(%rax), %rdx	#, tmp373
	movl	$16, %eax	#, tmp795
	subq	$1, %rax	#, tmp374
	addq	%rdx, %rax	# tmp373, tmp375
	movl	$16, %ebx	#, tmp796
	movl	$0, %edx	#, tmp378
	divq	%rbx	# tmp796
	imulq	$16, %rax, %rax	#, tmp377, tmp379
	subq	%rax, %rsp	# tmp379,
	leaq	24(%rsp), %rax	#, tmp380
	addq	$15, %rax	#, tmp381
	shrq	$4, %rax	#, tmp382
	salq	$4, %rax	#, tmp383
	movq	%rax, -208(%rbp)	# tmp383, output_rtx
	.loc 1 1604 0
	movl	-248(%rbp), %eax	# noutputs, tmp384
	cltq
	salq	$2, %rax	#, D.20858
	leaq	15(%rax), %rdx	#, tmp385
	movl	$16, %eax	#, tmp797
	subq	$1, %rax	#, tmp386
	addq	%rdx, %rax	# tmp385, tmp387
	movl	$16, %ebx	#, tmp798
	movl	$0, %edx	#, tmp390
	divq	%rbx	# tmp798
	imulq	$16, %rax, %rax	#, tmp389, tmp391
	subq	%rax, %rsp	# tmp391,
	leaq	24(%rsp), %rax	#, tmp392
	addq	$15, %rax	#, tmp393
	shrq	$4, %rax	#, tmp394
	salq	$4, %rax	#, tmp395
	movq	%rax, -200(%rbp)	# tmp395, inout_opnum
	.loc 1 1605 0
	movl	-248(%rbp), %eax	# noutputs, tmp396
	cltq
	salq	$3, %rax	#, D.20858
	leaq	15(%rax), %rdx	#, tmp397
	movl	$16, %eax	#, tmp799
	subq	$1, %rax	#, tmp398
	addq	%rdx, %rax	# tmp397, tmp399
	movl	$16, %ebx	#, tmp800
	movl	$0, %edx	#, tmp402
	divq	%rbx	# tmp800
	imulq	$16, %rax, %rax	#, tmp401, tmp403
	subq	%rax, %rsp	# tmp403,
	leaq	24(%rsp), %rax	#, tmp404
	addq	$15, %rax	#, tmp405
	shrq	$4, %rax	#, tmp406
	salq	$4, %rax	#, tmp407
	movq	%rax, -192(%rbp)	# tmp407, real_output_rtx
	.loc 1 1607 0
	movl	-248(%rbp), %eax	# noutputs, tmp408
	cltq
	salq	$2, %rax	#, D.20858
	.loc 1 1606 0
	leaq	15(%rax), %rdx	#, tmp409
	movl	$16, %eax	#, tmp801
	subq	$1, %rax	#, tmp410
	addq	%rdx, %rax	# tmp409, tmp411
	movl	$16, %ebx	#, tmp802
	movl	$0, %edx	#, tmp414
	divq	%rbx	# tmp802
	imulq	$16, %rax, %rax	#, tmp413, tmp415
	subq	%rax, %rsp	# tmp415,
	leaq	24(%rsp), %rax	#, tmp416
	addq	$15, %rax	#, tmp417
	shrq	$4, %rax	#, tmp418
	salq	$4, %rax	#, tmp419
	movq	%rax, -184(%rbp)	# tmp419, inout_mode
	.loc 1 1609 0
	movl	-252(%rbp), %eax	# ninputs, tmp420
	movl	-248(%rbp), %edx	# noutputs, tmp421
	addl	%edx, %eax	# tmp421, D.20859
	cltq
	salq	$3, %rax	#, D.20858
	.loc 1 1608 0
	leaq	15(%rax), %rdx	#, tmp422
	movl	$16, %eax	#, tmp803
	subq	$1, %rax	#, tmp423
	addq	%rdx, %rax	# tmp422, tmp424
	movl	$16, %ebx	#, tmp804
	movl	$0, %edx	#, tmp427
	divq	%rbx	# tmp804
	imulq	$16, %rax, %rax	#, tmp426, tmp428
	subq	%rax, %rsp	# tmp428,
	leaq	24(%rsp), %rax	#, tmp429
	addq	$15, %rax	#, tmp430
	shrq	$4, %rax	#, tmp431
	salq	$4, %rax	#, tmp432
	movq	%rax, -176(%rbp)	# tmp432, constraints
	.loc 1 1612 0
	movl	generating_concat_p(%rip), %eax	# generating_concat_p, tmp433
	movl	%eax, -244(%rbp)	# tmp433, old_generating_concat_p
	.loc 1 1615 0
	cmpl	$0, -248(%rbp)	#, noutputs
	jne	.L315	#,
	.loc 1 1616 0
	movl	$1, -308(%rbp)	#, vol
.L315:
	.loc 1 1618 0
	movq	-296(%rbp), %rdx	# inputs, tmp434
	movq	-288(%rbp), %rax	# outputs, tmp435
	movq	%rdx, %rsi	# tmp434,
	movq	%rax, %rdi	# tmp435,
	call	check_operand_nalternatives	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L316	#,
	.loc 1 1619 0
	jmp	.L314	#
.L316:
	.loc 1 1621 0
	movq	-296(%rbp), %rdx	# inputs, tmp436
	movq	-288(%rbp), %rax	# outputs, tmp437
	movq	%rdx, %rsi	# tmp436,
	movq	%rax, %rdi	# tmp437,
	call	check_unique_operand_names	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L318	#,
	.loc 1 1622 0
	jmp	.L314	#
.L318:
	.loc 1 1624 0
	movq	-176(%rbp), %rcx	# constraints, tmp438
	movq	-296(%rbp), %rdx	# inputs, tmp439
	movq	-288(%rbp), %rsi	# outputs, tmp440
	movq	-280(%rbp), %rax	# string, tmp441
	movq	%rax, %rdi	# tmp441,
	call	resolve_operand_names	#
	movq	%rax, -280(%rbp)	# tmp442, string
	.loc 1 1631 0
	movl	$.LC11, %esi	#,
	movl	$5, %edi	#,
	call	build_string	#
	movq	-304(%rbp), %rdx	# clobbers, tmp443
	movq	%rax, %rsi	# D.20861,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -304(%rbp)	# tmp444, clobbers
	movl	$.LC12, %esi	#,
	movl	$4, %edi	#,
	call	build_string	#
	movq	-304(%rbp), %rdx	# clobbers, tmp445
	movq	%rax, %rsi	# D.20861,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -304(%rbp)	# tmp446, clobbers
	movl	$.LC13, %esi	#,
	movl	$7, %edi	#,
	call	build_string	#
	movq	-304(%rbp), %rdx	# clobbers, tmp447
	movq	%rax, %rsi	# D.20861,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -304(%rbp)	# tmp448, clobbers
	.loc 1 1636 0
	movl	$0, -264(%rbp)	#, nclobbers
	.loc 1 1637 0
	movq	-304(%rbp), %rax	# clobbers, tmp449
	movq	%rax, -224(%rbp)	# tmp449, tail
	jmp	.L319	#
.L323:
.LBB45:
	.loc 1 1639 0
	movq	-224(%rbp), %rax	# tail, tmp450
	movq	32(%rax), %rax	# tail_8->list.value, D.20861
	movq	40(%rax), %rax	# _75->string.pointer, tmp451
	movq	%rax, -168(%rbp)	# tmp451, regname
	.loc 1 1641 0
	movq	-168(%rbp), %rax	# regname, tmp452
	movq	%rax, %rdi	# tmp452,
	call	decode_reg_name	#
	movl	%eax, -260(%rbp)	# tmp453, i
	.loc 1 1642 0
	cmpl	$0, -260(%rbp)	#, i
	jns	.L320	#,
	.loc 1 1642 0 is_stmt 0 discriminator 1
	cmpl	$-4, -260(%rbp)	#, i
	jne	.L321	#,
.L320:
	.loc 1 1643 0 is_stmt 1
	addl	$1, -264(%rbp)	#, nclobbers
	jmp	.L322	#
.L321:
	.loc 1 1644 0
	cmpl	$-2, -260(%rbp)	#, i
	jne	.L322	#,
	.loc 1 1645 0
	movq	-168(%rbp), %rax	# regname, tmp454
	movq	%rax, %rsi	# tmp454,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L322:
.LBE45:
	.loc 1 1637 0
	movq	-224(%rbp), %rax	# tail, tmp455
	movq	(%rax), %rax	# tail_8->common.chain, tmp456
	movq	%rax, -224(%rbp)	# tmp456, tail
.L319:
	.loc 1 1637 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L323	#,
	.loc 1 1648 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.227
	movq	8(%rax), %rax	# cfun.227_80->stmt, D.20862
	movq	$0, 56(%rax)	#, _81->x_last_expr_type
	.loc 1 1653 0
	movl	$0, -268(%rbp)	#, ninout
	.loc 1 1654 0
	movl	$0, -260(%rbp)	#, i
	movq	-288(%rbp), %rax	# outputs, tmp457
	movq	%rax, -224(%rbp)	# tmp457, tail
	jmp	.L324	#
.L335:
.LBB46:
	.loc 1 1656 0
	movq	-224(%rbp), %rax	# tail, tmp458
	movq	32(%rax), %rax	# tail_9->list.value, tmp459
	movq	%rax, -160(%rbp)	# tmp459, val
	.loc 1 1657 0
	movq	-160(%rbp), %rax	# val, tmp460
	movq	8(%rax), %rax	# val_85->common.type, tmp461
	movq	%rax, -152(%rbp)	# tmp461, type
	.loc 1 1664 0
	movq	global_trees(%rip), %rax	# global_trees, D.20861
	cmpq	-152(%rbp), %rax	# type, D.20861
	jne	.L325	#,
	.loc 1 1665 0
	jmp	.L314	#
.L325:
	.loc 1 1669 0
	movl	-260(%rbp), %eax	# i, tmp462
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp463
	addq	%rdx, %rax	# D.20858, D.20863
	movq	(%rax), %rax	# *_90, constraint.228
	movq	%rax, -232(%rbp)	# constraint.228, constraint
	.loc 1 1670 0
	leaq	-270(%rbp), %r9	#, tmp464
	leaq	-269(%rbp), %r8	#, tmp465
	movl	-248(%rbp), %ecx	# noutputs, tmp466
	movl	-252(%rbp), %edx	# ninputs, tmp467
	movl	-260(%rbp), %esi	# i, tmp468
	leaq	-232(%rbp), %rax	#, tmp469
	leaq	-271(%rbp), %rdi	#, tmp470
	movq	%rdi, (%rsp)	# tmp470,
	movq	%rax, %rdi	# tmp469,
	call	parse_output_constraint	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L327	#,
	.loc 1 1672 0
	nop
	jmp	.L314	#
.L327:
	.loc 1 1674 0
	movzbl	-270(%rbp), %eax	# allows_reg, allows_reg.229
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L328	#,
	.loc 1 1675 0
	movzbl	-269(%rbp), %eax	# allows_mem, allows_mem.230
	testb	%al, %al	# allows_mem.230
	jne	.L329	#,
	.loc 1 1676 0
	movzbl	-271(%rbp), %eax	# is_inout, is_inout.231
	testb	%al, %al	# is_inout.231
	jne	.L329	#,
	.loc 1 1677 0
	movq	-160(%rbp), %rax	# val, tmp471
	movzbl	16(%rax), %eax	# val_85->common.code, D.20864
	movzbl	%al, %eax	# D.20864, D.20859
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20865
	cmpb	$100, %al	#, D.20865
	jne	.L328	#,
	.loc 1 1678 0
	movq	-160(%rbp), %rax	# val, tmp473
	movq	144(%rax), %rax	# val_85->decl.rtl, D.20866
	testq	%rax, %rax	# D.20866
	je	.L330	#,
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# val, tmp474
	movq	144(%rax), %rax	# val_85->decl.rtl, iftmp.232
	jmp	.L331	#
.L330:
	.loc 1 1678 0 discriminator 2
	movq	-160(%rbp), %rax	# val, tmp475
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp475,
	call	make_decl_rtl	#
	movq	-160(%rbp), %rax	# val, tmp476
	movq	144(%rax), %rax	# val_85->decl.rtl, iftmp.232
.L331:
	.loc 1 1678 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.232_30->code, D.20867
	cmpw	$61, %ax	#, D.20867
	jne	.L328	#,
	.loc 1 1679 0 is_stmt 1
	movq	-160(%rbp), %rax	# val, tmp477
	movq	144(%rax), %rax	# val_85->decl.rtl, D.20866
	testq	%rax, %rax	# D.20866
	je	.L332	#,
	.loc 1 1679 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# val, tmp478
	movq	144(%rax), %rax	# val_85->decl.rtl, iftmp.233
	jmp	.L333	#
.L332:
	.loc 1 1679 0 discriminator 2
	movq	-160(%rbp), %rax	# val, tmp479
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp479,
	call	make_decl_rtl	#
	movq	-160(%rbp), %rax	# val, tmp480
	movq	144(%rax), %rax	# val_85->decl.rtl, iftmp.233
.L333:
	.loc 1 1679 0 discriminator 3
	movzbl	2(%rax), %edx	# iftmp.233_31->mode, D.20864
	movq	-152(%rbp), %rax	# type, tmp481
	movzbl	61(%rax), %eax	# *type_86, tmp484
	shrb	%al	# D.20868
	cmpb	%al, %dl	# D.20864, D.20864
	je	.L328	#,
.L329:
	.loc 1 1680 0 is_stmt 1
	movq	-160(%rbp), %rax	# val, tmp485
	movq	%rax, %rdi	# tmp485,
	call	mark_addressable	#
.L328:
	.loc 1 1682 0
	movzbl	-271(%rbp), %eax	# is_inout, is_inout.234
	testb	%al, %al	# is_inout.234
	je	.L334	#,
	.loc 1 1683 0
	addl	$1, -268(%rbp)	#, ninout
.L334:
.LBE46:
	.loc 1 1654 0
	movq	-224(%rbp), %rax	# tail, tmp486
	movq	(%rax), %rax	# tail_9->common.chain, tmp487
	movq	%rax, -224(%rbp)	# tmp487, tail
	addl	$1, -260(%rbp)	#, i
.L324:
	.loc 1 1654 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L335	#,
	.loc 1 1686 0 is_stmt 1
	movl	-268(%rbp), %eax	# ninout, tmp488
	addl	%eax, -252(%rbp)	# tmp488, ninputs
	.loc 1 1687 0
	movl	-248(%rbp), %eax	# noutputs, tmp489
	movl	-252(%rbp), %edx	# ninputs, tmp490
	addl	%edx, %eax	# tmp490, D.20859
	cmpl	$30, %eax	#, D.20859
	jle	.L336	#,
	.loc 1 1689 0
	movl	$30, %esi	#,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1690 0
	jmp	.L314	#
.L336:
	.loc 1 1693 0
	movl	$0, -260(%rbp)	#, i
	movq	-296(%rbp), %rax	# inputs, tmp491
	movq	%rax, -224(%rbp)	# tmp491, tail
	jmp	.L337	#
.L342:
.LBB47:
	.loc 1 1700 0
	movq	-224(%rbp), %rax	# tail, tmp492
	movq	32(%rax), %rax	# tail_10->list.value, D.20861
	movq	8(%rax), %rdx	# _119->common.type, D.20861
	movq	global_trees(%rip), %rax	# global_trees, D.20861
	cmpq	%rax, %rdx	# D.20861, D.20861
	jne	.L338	#,
	.loc 1 1701 0
	jmp	.L314	#
.L338:
	.loc 1 1703 0
	movl	-248(%rbp), %eax	# noutputs, tmp493
	movl	-260(%rbp), %edx	# i, tmp494
	addl	%edx, %eax	# tmp494, D.20859
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp495
	addq	%rdx, %rax	# D.20858, D.20863
	movq	(%rax), %rax	# *_125, constraint.235
	movq	%rax, -232(%rbp)	# constraint.235, constraint
	.loc 1 1704 0
	movq	-176(%rbp), %r9	# constraints, tmp496
	movl	-268(%rbp), %r8d	# ninout, tmp497
	movl	-248(%rbp), %ecx	# noutputs, tmp498
	movl	-252(%rbp), %edx	# ninputs, tmp499
	movl	-260(%rbp), %esi	# i, tmp500
	leaq	-232(%rbp), %rax	#, tmp501
	leaq	-270(%rbp), %rdi	#, tmp502
	movq	%rdi, 8(%rsp)	# tmp502,
	leaq	-269(%rbp), %rdi	#, tmp503
	movq	%rdi, (%rsp)	# tmp503,
	movq	%rax, %rdi	# tmp501,
	call	parse_input_constraint	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L340	#,
	.loc 1 1706 0
	nop
	jmp	.L314	#
.L340:
	.loc 1 1708 0
	movzbl	-270(%rbp), %eax	# allows_reg, allows_reg.236
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L341	#,
	.loc 1 1708 0 is_stmt 0 discriminator 1
	movzbl	-269(%rbp), %eax	# allows_mem, allows_mem.237
	testb	%al, %al	# allows_mem.237
	je	.L341	#,
	.loc 1 1709 0 is_stmt 1
	movq	-224(%rbp), %rax	# tail, tmp504
	movq	32(%rax), %rax	# tail_10->list.value, D.20861
	movq	%rax, %rdi	# D.20861,
	call	mark_addressable	#
.L341:
.LBE47:
	.loc 1 1693 0
	addl	$1, -260(%rbp)	#, i
	movq	-224(%rbp), %rax	# tail, tmp505
	movq	(%rax), %rax	# tail_10->common.chain, tmp506
	movq	%rax, -224(%rbp)	# tmp506, tail
.L337:
	.loc 1 1693 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L342	#,
	.loc 1 1714 0 is_stmt 1
	movl	$0, -268(%rbp)	#, ninout
	.loc 1 1715 0
	movl	$0, -260(%rbp)	#, i
	movq	-288(%rbp), %rax	# outputs, tmp507
	movq	%rax, -224(%rbp)	# tmp507, tail
	jmp	.L343	#
.L362:
.LBB48:
	.loc 1 1717 0
	movq	-224(%rbp), %rax	# tail, tmp508
	movq	32(%rax), %rax	# tail_11->list.value, tmp509
	movq	%rax, -144(%rbp)	# tmp509, val
	.loc 1 1718 0
	movq	-144(%rbp), %rax	# val, tmp510
	movq	8(%rax), %rax	# val_138->common.type, tmp511
	movq	%rax, -136(%rbp)	# tmp511, type
	.loc 1 1723 0
	movl	-260(%rbp), %eax	# i, tmp512
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp513
	leaq	(%rdx,%rax), %rdi	#, D.20863
	leaq	-269(%rbp), %r9	#, tmp514
	leaq	-232(%rbp), %r8	#, tmp515
	movl	-248(%rbp), %ecx	# noutputs, tmp516
	movl	-252(%rbp), %edx	# ninputs, tmp517
	movl	-260(%rbp), %eax	# i, tmp518
	leaq	-270(%rbp), %rsi	#, tmp519
	movq	%rsi, (%rsp)	# tmp519,
	movl	%eax, %esi	# tmp518,
	call	parse_output_constraint	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L344	#,
	.loc 1 1726 0
	movl	$__FUNCTION__.14197, %edx	#,
	movl	$1726, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L344:
	.loc 1 1733 0
	movl	$0, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 1735 0
	movl	-260(%rbp), %eax	# i, tmp520
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-192(%rbp), %rax	# real_output_rtx, tmp521
	addq	%rdx, %rax	# D.20858, D.20869
	movq	$0, (%rax)	#, *_147
	.loc 1 1736 0
	movq	-144(%rbp), %rax	# val, tmp522
	movzbl	16(%rax), %eax	# val_138->common.code, D.20864
	cmpb	$41, %al	#, D.20864
	jne	.L345	#,
	.loc 1 1737 0
	movzbl	-232(%rbp), %eax	# allows_mem, allows_mem.238
	testb	%al, %al	# allows_mem.238
	jne	.L346	#,
.L345:
	.loc 1 1738 0
	movq	-144(%rbp), %rax	# val, tmp523
	movzbl	16(%rax), %eax	# val_138->common.code, D.20864
	movzbl	%al, %eax	# D.20864, D.20859
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20865
	cmpb	$100, %al	#, D.20865
	jne	.L347	#,
	.loc 1 1739 0
	movzbl	-232(%rbp), %eax	# allows_mem, allows_mem.239
	testb	%al, %al	# allows_mem.239
	jne	.L348	#,
	.loc 1 1739 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# val, tmp525
	movq	144(%rax), %rax	# val_138->decl.rtl, D.20866
	testq	%rax, %rax	# D.20866
	je	.L349	#,
	movq	-144(%rbp), %rax	# val, tmp526
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.240
	jmp	.L350	#
.L349:
	.loc 1 1739 0 discriminator 2
	movq	-144(%rbp), %rax	# val, tmp527
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp527,
	call	make_decl_rtl	#
	movq	-144(%rbp), %rax	# val, tmp528
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.240
.L350:
	.loc 1 1739 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.240_32->code, D.20867
	cmpw	$61, %ax	#, D.20867
	jne	.L347	#,
.L348:
	.loc 1 1740 0 is_stmt 1
	movq	-144(%rbp), %rax	# val, tmp529
	movq	144(%rax), %rax	# val_138->decl.rtl, D.20866
	testq	%rax, %rax	# D.20866
	je	.L351	#,
	.loc 1 1740 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# val, tmp530
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.241
	jmp	.L352	#
.L351:
	.loc 1 1740 0 discriminator 2
	movq	-144(%rbp), %rax	# val, tmp531
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp531,
	call	make_decl_rtl	#
	movq	-144(%rbp), %rax	# val, tmp532
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.241
.L352:
	.loc 1 1740 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.241_33->code, D.20867
	cmpw	$61, %ax	#, D.20867
	jne	.L346	#,
	.loc 1 1741 0 is_stmt 1
	movq	-144(%rbp), %rax	# val, tmp533
	movq	144(%rax), %rax	# val_138->decl.rtl, D.20866
	testq	%rax, %rax	# D.20866
	je	.L353	#,
	.loc 1 1741 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# val, tmp534
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.242
	jmp	.L354	#
.L353:
	.loc 1 1741 0 discriminator 2
	movq	-144(%rbp), %rax	# val, tmp535
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp535,
	call	make_decl_rtl	#
	movq	-144(%rbp), %rax	# val, tmp536
	movq	144(%rax), %rax	# val_138->decl.rtl, iftmp.242
.L354:
	.loc 1 1741 0 discriminator 3
	movzbl	2(%rax), %edx	# iftmp.242_34->mode, D.20864
	movq	-136(%rbp), %rax	# type, tmp537
	movzbl	61(%rax), %eax	# *type_139, tmp540
	shrb	%al	# D.20868
	.loc 1 1740 0 is_stmt 1 discriminator 3
	cmpb	%al, %dl	# D.20864, D.20864
	je	.L346	#,
.L347:
	.loc 1 1742 0
	movzbl	-269(%rbp), %eax	# allows_reg, allows_reg.243
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	jne	.L346	#,
	.loc 1 1743 0
	movzbl	-270(%rbp), %eax	# is_inout, is_inout.244
	testb	%al, %al	# is_inout.244
	je	.L355	#,
.L346:
	.loc 1 1745 0
	movl	-260(%rbp), %eax	# i, tmp541
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp542
	leaq	(%rdx,%rax), %rbx	#, D.20869
	movq	-144(%rbp), %rax	# val, tmp543
	movl	$4, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp543,
	call	expand_expr	#
	movq	%rax, (%rbx)	# D.20866, *_182
	.loc 1 1747 0
	movzbl	-269(%rbp), %eax	# allows_reg, allows_reg.245
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L356	#,
	.loc 1 1747 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# i, tmp544
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp545
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_188, D.20866
	movzwl	(%rax), %eax	# _189->code, D.20867
	cmpw	$66, %ax	#, D.20867
	je	.L356	#,
	.loc 1 1748 0 is_stmt 1
	movl	-260(%rbp), %eax	# i, tmp546
	movl	%eax, %esi	# tmp546,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L356:
	.loc 1 1749 0
	movzbl	-232(%rbp), %eax	# allows_mem, allows_mem.246
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L357	#,
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# i, tmp547
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp548
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_195, D.20866
	movzwl	(%rax), %eax	# _196->code, D.20867
	cmpw	$66, %ax	#, D.20867
	je	.L358	#,
.L357:
	.loc 1 1750 0 is_stmt 1
	movl	-260(%rbp), %eax	# i, tmp549
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp550
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_200, D.20866
	movzwl	(%rax), %eax	# _201->code, D.20867
	cmpw	$65, %ax	#, D.20867
	jne	.L359	#,
.L358:
	.loc 1 1752 0
	movl	-260(%rbp), %eax	# i, tmp551
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-192(%rbp), %rax	# real_output_rtx, tmp552
	leaq	(%rdx,%rax), %rbx	#, D.20869
	movl	-260(%rbp), %eax	# i, tmp553
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp554
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_208, D.20866
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.20866,
	call	protect_from_queue	#
	movq	%rax, (%rbx)	# D.20866, *_205
	.loc 1 1753 0
	movl	-260(%rbp), %eax	# i, tmp555
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp556
	leaq	(%rdx,%rax), %rbx	#, D.20869
	movl	-260(%rbp), %eax	# i, tmp557
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp558
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_216, D.20866
	movzbl	2(%rax), %eax	# _217->mode, D.20864
	movzbl	%al, %eax	# D.20864, D.20870
	movl	%eax, %edi	# D.20870,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.20866, *_213
	.loc 1 1754 0
	movzbl	-270(%rbp), %eax	# is_inout, is_inout.247
	testb	%al, %al	# is_inout.247
	je	.L359	#,
	.loc 1 1755 0
	movl	-260(%rbp), %eax	# i, tmp559
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-192(%rbp), %rax	# real_output_rtx, tmp560
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rdx	# *_224, D.20866
	movl	-260(%rbp), %eax	# i, tmp561
	cltq
	leaq	0(,%rax,8), %rcx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp562
	addq	%rcx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_228, D.20866
	movq	%rdx, %rsi	# D.20866,
	movq	%rax, %rdi	# D.20866,
	call	emit_move_insn	#
	.loc 1 1749 0
	jmp	.L360	#
.L359:
	jmp	.L360	#
.L355:
	.loc 1 1760 0
	movl	-260(%rbp), %eax	# i, tmp563
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp564
	leaq	(%rdx,%rax), %rbx	#, D.20869
	movq	-136(%rbp), %rax	# type, tmp565
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp565,
	call	assign_temp	#
	movq	%rax, (%rbx)	# D.20866, *_173
	.loc 1 1761 0
	movl	-260(%rbp), %eax	# i, tmp566
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp567
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rdx	# *_177, D.20866
	movq	-136(%rbp), %rax	# type, tmp568
	movq	%rdx, %rsi	# D.20866,
	movq	%rax, %rdi	# tmp568,
	call	make_tree	#
	movq	-224(%rbp), %rdx	# tail, tmp569
	movq	%rax, 32(%rdx)	# D.20861, tail_11->list.value
.L360:
	.loc 1 1764 0
	movl	-244(%rbp), %eax	# old_generating_concat_p, tmp570
	movl	%eax, generating_concat_p(%rip)	# tmp570, generating_concat_p
	.loc 1 1766 0
	movzbl	-270(%rbp), %eax	# is_inout, is_inout.248
	testb	%al, %al	# is_inout.248
	je	.L361	#,
	.loc 1 1768 0
	movl	-268(%rbp), %eax	# ninout, tmp571
	cltq
	leaq	0(,%rax,4), %rdx	#, D.20858
	movq	-184(%rbp), %rax	# inout_mode, tmp572
	addq	%rax, %rdx	# tmp572, D.20871
	movq	-136(%rbp), %rax	# type, tmp573
	movzbl	61(%rax), %eax	# *type_139, tmp576
	shrb	%al	# D.20868
	movzbl	%al, %eax	# D.20868, D.20870
	movl	%eax, (%rdx)	# D.20870, *_233
	.loc 1 1769 0
	movl	-268(%rbp), %eax	# ninout, ninout.249
	leal	1(%rax), %edx	#, tmp577
	movl	%edx, -268(%rbp)	# tmp577, ninout
	cltq
	leaq	0(,%rax,4), %rdx	#, D.20858
	movq	-200(%rbp), %rax	# inout_opnum, tmp578
	addq	%rax, %rdx	# tmp578, D.20872
	movl	-260(%rbp), %eax	# i, tmp579
	movl	%eax, (%rdx)	# tmp579, *_240
.L361:
.LBE48:
	.loc 1 1715 0
	movq	-224(%rbp), %rax	# tail, tmp580
	movq	(%rax), %rax	# tail_11->common.chain, tmp581
	movq	%rax, -224(%rbp)	# tmp581, tail
	addl	$1, -260(%rbp)	#, i
.L343:
	.loc 1 1715 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L362	#,
	.loc 1 1776 0 is_stmt 1
	movl	-252(%rbp), %eax	# ninputs, tmp582
	movl	%eax, %edi	# tmp582,
	call	rtvec_alloc	#
	movq	%rax, -128(%rbp)	# tmp583, argvec
	.loc 1 1777 0
	movl	-252(%rbp), %eax	# ninputs, tmp584
	movl	%eax, %edi	# tmp584,
	call	rtvec_alloc	#
	movq	%rax, -120(%rbp)	# tmp585, constraintvec
	.loc 1 1779 0
	movq	-280(%rbp), %rax	# string, tmp586
	movq	40(%rax), %rdx	# string_65->string.pointer, D.20873
	cmpl	$0, -248(%rbp)	#, noutputs
	je	.L363	#,
	.loc 1 1779 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# output_rtx, tmp587
	movq	(%rax), %rax	# *output_rtx_43, D.20866
	movzbl	2(%rax), %eax	# _246->mode, D.20864
	movzbl	%al, %eax	# D.20864, iftmp.250
	jmp	.L364	#
.L363:
	.loc 1 1779 0 discriminator 2
	movl	$0, %eax	#, iftmp.250
.L364:
	.loc 1 1779 0 discriminator 3
	movq	-128(%rbp), %rsi	# argvec, tmp588
	movl	16(%rbp), %ecx	# line, tmp589
	movl	%ecx, 16(%rsp)	# tmp589,
	movq	-320(%rbp), %rcx	# filename, tmp590
	movq	%rcx, 8(%rsp)	# tmp590,
	movq	-120(%rbp), %rcx	# constraintvec, tmp591
	movq	%rcx, (%rsp)	# tmp591,
	movq	%rsi, %r9	# tmp588,
	movl	$0, %r8d	#,
	movl	$empty_string, %ecx	#,
	movl	%eax, %esi	# iftmp.250,
	movl	$41, %edi	#,
	call	gen_rtx_fmt_ssiEEsi	#
	movq	%rax, -112(%rbp)	# tmp592, body
	.loc 1 1785 0 is_stmt 1 discriminator 3
	movl	-308(%rbp), %eax	# vol, tmp593
	andl	$1, %eax	#, D.20874
	movl	%eax, %edx	# D.20874, D.20874
	movq	-112(%rbp), %rax	# body, tmp594
	andl	$1, %edx	#, tmp596
	leal	0(,%rdx,8), %ecx	#, tmp597
	movzbl	3(%rax), %edx	# body_252->volatil, tmp598
	andl	$-9, %edx	#, tmp599
	orl	%ecx, %edx	# tmp597, tmp600
	movb	%dl, 3(%rax)	# tmp600, body_252->volatil
	.loc 1 1790 0 discriminator 3
	movl	$0, -260(%rbp)	#, i
	movq	-296(%rbp), %rax	# inputs, tmp601
	movq	%rax, -224(%rbp)	# tmp601, tail
	jmp	.L365	#
.L378:
.LBB49:
	.loc 1 1797 0
	movl	-248(%rbp), %eax	# noutputs, tmp602
	movl	-260(%rbp), %edx	# i, tmp603
	addl	%edx, %eax	# tmp603, D.20859
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp604
	addq	%rdx, %rax	# D.20858, D.20863
	movq	(%rax), %rax	# *_260, constraint.251
	movq	%rax, -232(%rbp)	# constraint.251, constraint
	.loc 1 1798 0
	movq	-176(%rbp), %r9	# constraints, tmp605
	movl	-268(%rbp), %r8d	# ninout, tmp606
	movl	-248(%rbp), %ecx	# noutputs, tmp607
	movl	-252(%rbp), %edx	# ninputs, tmp608
	movl	-260(%rbp), %esi	# i, tmp609
	leaq	-232(%rbp), %rax	#, tmp610
	leaq	-270(%rbp), %rdi	#, tmp611
	movq	%rdi, 8(%rsp)	# tmp611,
	leaq	-269(%rbp), %rdi	#, tmp612
	movq	%rdi, (%rsp)	# tmp612,
	movq	%rax, %rdi	# tmp610,
	call	parse_input_constraint	#
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L366	#,
	.loc 1 1800 0
	movl	$__FUNCTION__.14197, %edx	#,
	movl	$1800, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L366:
	.loc 1 1802 0
	movl	$0, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 1804 0
	movq	-224(%rbp), %rax	# tail, tmp613
	movq	32(%rax), %rax	# tail_12->list.value, tmp614
	movq	%rax, -104(%rbp)	# tmp614, val
	.loc 1 1805 0
	movq	-104(%rbp), %rax	# val, tmp615
	movq	8(%rax), %rax	# val_264->common.type, tmp616
	movq	%rax, -96(%rbp)	# tmp616, type
	.loc 1 1806 0
	movq	-104(%rbp), %rax	# val, tmp617
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp617,
	call	expand_expr	#
	movq	%rax, -216(%rbp)	# tmp618, op
	.loc 1 1809 0
	movq	-216(%rbp), %rax	# op, tmp619
	movzwl	(%rax), %eax	# op_266->code, D.20867
	cmpw	$65, %ax	#, D.20867
	jne	.L367	#,
	.loc 1 1810 0
	movq	-216(%rbp), %rax	# op, tmp620
	movzbl	2(%rax), %eax	# op_266->mode, D.20864
	movzbl	%al, %eax	# D.20864, D.20870
	movq	-216(%rbp), %rdx	# op, tmp621
	movq	%rdx, %rsi	# tmp621,
	movl	%eax, %edi	# D.20870,
	call	force_reg	#
	movq	%rax, -216(%rbp)	# tmp622, op
.L367:
	.loc 1 1812 0
	movq	-232(%rbp), %rdx	# constraint, constraint.252
	movq	-216(%rbp), %rax	# op, tmp623
	movq	%rdx, %rsi	# constraint.252,
	movq	%rax, %rdi	# tmp623,
	call	asm_operand_ok	#
	testl	%eax, %eax	# D.20859
	jg	.L368	#,
	.loc 1 1814 0
	movzbl	-270(%rbp), %eax	# allows_reg, allows_reg.253
	testb	%al, %al	# allows_reg.253
	je	.L369	#,
	.loc 1 1815 0
	movq	-96(%rbp), %rax	# type, tmp624
	movzbl	61(%rax), %eax	# *type_265, tmp627
	shrb	%al	# D.20868
	movzbl	%al, %eax	# D.20868, D.20870
	movq	-216(%rbp), %rdx	# op, tmp628
	movq	%rdx, %rsi	# tmp628,
	movl	%eax, %edi	# D.20870,
	call	force_reg	#
	movq	%rax, -216(%rbp)	# tmp629, op
	jmp	.L368	#
.L369:
	.loc 1 1816 0
	movzbl	-269(%rbp), %eax	# allows_mem, allows_mem.254
	xorl	$1, %eax	#, D.20860
	testb	%al, %al	# D.20860
	je	.L370	#,
	.loc 1 1817 0
	movl	-248(%rbp), %eax	# noutputs, tmp630
	movl	-260(%rbp), %edx	# i, tmp631
	addl	%edx, %eax	# tmp631, D.20859
	movl	%eax, %esi	# D.20859,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L368	#
.L370:
	.loc 1 1819 0
	movq	-216(%rbp), %rax	# op, tmp632
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$67, %ax	#, D.20867
	je	.L371	#,
	.loc 1 1819 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# op, tmp633
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$68, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp634
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$54, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp635
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$55, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp636
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$58, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp637
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$134, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp638
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$56, %ax	#, D.20867
	je	.L371	#,
	movq	-216(%rbp), %rax	# op, tmp639
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$140, %ax	#, D.20867
	jne	.L372	#,
.L371:
	.loc 1 1820 0 is_stmt 1
	movq	-96(%rbp), %rax	# type, tmp640
	movzbl	61(%rax), %eax	# *type_265, tmp643
	shrb	%al	# D.20868
	movzbl	%al, %eax	# D.20868, D.20870
	movq	-216(%rbp), %rdx	# op, tmp644
	movq	%rdx, %rsi	# tmp644,
	movl	%eax, %edi	# D.20870,
	call	force_const_mem	#
	movq	%rax, -216(%rbp)	# tmp645, op
	jmp	.L368	#
.L372:
	.loc 1 1821 0
	movq	-216(%rbp), %rax	# op, tmp646
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$61, %ax	#, D.20867
	je	.L373	#,
	.loc 1 1822 0
	movq	-216(%rbp), %rax	# op, tmp647
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$63, %ax	#, D.20867
	je	.L373	#,
	.loc 1 1823 0
	movq	-216(%rbp), %rax	# op, tmp648
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$70, %ax	#, D.20867
	je	.L373	#,
	.loc 1 1824 0
	movq	-216(%rbp), %rax	# op, tmp649
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$65, %ax	#, D.20867
	jne	.L374	#,
.L373:
.LBB50:
	.loc 1 1827 0
	movq	-96(%rbp), %rax	# type, tmp650
	movzbl	17(%rax), %eax	# *type_265, tmp653
	shrb	$4, %al	#, D.20874
	andl	$1, %eax	#, D.20874
	movzbl	%al, %edx	# D.20874, D.20859
	movq	-96(%rbp), %rax	# type, tmp654
	movzbl	17(%rax), %eax	# *type_265, tmp657
	shrb	$3, %al	#, D.20874
	andl	$1, %eax	#, D.20874
	movzbl	%al, %eax	# D.20874, D.20859
	addl	%eax, %eax	# D.20859
	orl	%eax, %edx	# D.20859, D.20859
	movq	-96(%rbp), %rax	# type, tmp658
	movzbl	62(%rax), %eax	# *type_265, tmp661
	shrb	$5, %al	#, D.20874
	andl	$1, %eax	#, D.20874
	movzbl	%al, %eax	# D.20874, D.20859
	sall	$2, %eax	#, D.20859
	orl	%eax, %edx	# D.20859, D.20859
	movq	-96(%rbp), %rax	# type, tmp662
	movzbl	16(%rax), %eax	# type_265->common.code, D.20864
	cmpb	$20, %al	#, D.20864
	jne	.L375	#,
	.loc 1 1827 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# type, tmp663
	movq	8(%rax), %rax	# type_265->common.type, D.20861
	testq	%rax, %rax	# D.20861
	je	.L375	#,
	.loc 1 1827 0 discriminator 3
	movl	$1, %eax	#, iftmp.255
	jmp	.L376	#
.L375:
	.loc 1 1827 0 discriminator 2
	movl	$0, %eax	#, iftmp.255
.L376:
	.loc 1 1827 0 discriminator 4
	sall	$3, %eax	#, D.20859
	orl	%edx, %eax	# D.20859, D.20859
	.loc 1 1826 0 is_stmt 1 discriminator 4
	orl	$1, %eax	#, D.20859
	movl	%eax, %edx	# D.20859, D.20859
	movq	-96(%rbp), %rax	# type, tmp664
	movl	%edx, %esi	# D.20859,
	movq	%rax, %rdi	# tmp664,
	call	build_qualified_type	#
	movq	%rax, -88(%rbp)	# tmp665, qual_type
	.loc 1 1829 0 discriminator 4
	movq	-88(%rbp), %rax	# qual_type, tmp666
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp666,
	call	assign_temp	#
	movq	%rax, -80(%rbp)	# tmp667, memloc
	.loc 1 1831 0 discriminator 4
	movq	-216(%rbp), %rdx	# op, tmp668
	movq	-80(%rbp), %rax	# memloc, tmp669
	movq	%rdx, %rsi	# tmp668,
	movq	%rax, %rdi	# tmp669,
	call	emit_move_insn	#
	.loc 1 1832 0 discriminator 4
	movq	-80(%rbp), %rax	# memloc, tmp670
	movq	%rax, -216(%rbp)	# tmp670, op
.LBE50:
	.loc 1 1825 0 discriminator 4
	jmp	.L368	#
.L374:
	.loc 1 1835 0
	movq	-216(%rbp), %rax	# op, tmp671
	movzwl	(%rax), %eax	# op_27->code, D.20867
	cmpw	$66, %ax	#, D.20867
	jne	.L377	#,
	.loc 1 1835 0 is_stmt 0 discriminator 1
	movq	-216(%rbp), %rax	# op, tmp672
	movzbl	3(%rax), %eax	# *op_27, D.20864
	andl	$8, %eax	#, D.20864
	testb	%al, %al	# D.20864
	je	.L377	#,
	jmp	.L368	#
.L377:
	.loc 1 1840 0 is_stmt 1
	movq	-216(%rbp), %rax	# op, tmp673
	movq	%rax, %rdi	# tmp673,
	call	queued_subexp_p	#
	testl	%eax, %eax	# D.20859
	jne	.L368	#,
	.loc 1 1846 0
	movl	-248(%rbp), %eax	# noutputs, tmp674
	movl	-260(%rbp), %edx	# i, tmp675
	addl	%edx, %eax	# tmp675, D.20859
	movl	%eax, %esi	# D.20859,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L368:
	.loc 1 1850 0
	movl	-244(%rbp), %eax	# old_generating_concat_p, tmp676
	movl	%eax, generating_concat_p(%rip)	# tmp676, generating_concat_p
	.loc 1 1851 0
	movq	-112(%rbp), %rax	# body, tmp677
	movq	32(%rax), %rax	# body_252->fld[3].rtvec, D.20875
	movl	-260(%rbp), %edx	# i, tmp679
	movslq	%edx, %rdx	# tmp679, tmp678
	movq	-216(%rbp), %rcx	# op, tmp680
	movq	%rcx, 8(%rax,%rdx,8)	# tmp680, _320->elem
	.loc 1 1853 0
	movq	-112(%rbp), %rax	# body, tmp681
	movq	40(%rax), %rbx	# body_252->fld[4].rtvec, D.20875
	.loc 1 1854 0
	movl	-248(%rbp), %eax	# noutputs, tmp682
	movl	-260(%rbp), %edx	# i, tmp683
	addl	%edx, %eax	# tmp683, D.20859
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp684
	addq	%rdx, %rax	# D.20858, D.20863
	movq	(%rax), %rdx	# *_325, D.20873
	movq	-96(%rbp), %rax	# type, tmp685
	movzbl	61(%rax), %eax	# *type_265, tmp688
	shrb	%al	# D.20868
	movzbl	%al, %eax	# D.20868, D.20870
	movl	%eax, %esi	# D.20870,
	movl	$40, %edi	#,
	call	gen_rtx_fmt_s	#
	movl	-260(%rbp), %edx	# i, tmp690
	movslq	%edx, %rdx	# tmp690, tmp689
	movq	%rax, 8(%rbx,%rdx,8)	# D.20866, _321->elem
.LBE49:
	.loc 1 1790 0
	movq	-224(%rbp), %rax	# tail, tmp691
	movq	(%rax), %rax	# tail_12->common.chain, tmp692
	movq	%rax, -224(%rbp)	# tmp692, tail
	addl	$1, -260(%rbp)	#, i
.L365:
	.loc 1 1790 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L378	#,
	.loc 1 1860 0 is_stmt 1
	movl	$0, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 1862 0
	movl	$0, -260(%rbp)	#, i
	jmp	.L379	#
.L380:
	.loc 1 1863 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp693
	movq	32(%rax), %rbx	# body_252->fld[3].rtvec, D.20875
	.loc 1 1864 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp694
	movq	32(%rax), %rax	# body_252->fld[3].rtvec, D.20875
	movl	-260(%rbp), %edx	# i, tmp696
	movslq	%edx, %rdx	# tmp696, tmp695
	movq	8(%rax,%rdx,8), %rax	# _335->elem, D.20866
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20866,
	call	protect_from_queue	#
	movl	-260(%rbp), %edx	# i, tmp698
	movslq	%edx, %rdx	# tmp698, tmp697
	movq	%rax, 8(%rbx,%rdx,8)	# D.20866, _334->elem
	.loc 1 1862 0 discriminator 2
	addl	$1, -260(%rbp)	#, i
.L379:
	.loc 1 1862 0 is_stmt 0 discriminator 1
	movl	-268(%rbp), %eax	# ninout, tmp699
	movl	-252(%rbp), %edx	# ninputs, tmp700
	subl	%eax, %edx	# tmp699, D.20859
	movl	%edx, %eax	# D.20859, D.20859
	cmpl	-260(%rbp), %eax	# i, D.20859
	jg	.L380	#,
	.loc 1 1866 0 is_stmt 1
	movl	$0, -260(%rbp)	#, i
	jmp	.L381	#
.L382:
	.loc 1 1867 0 discriminator 2
	movl	-260(%rbp), %eax	# i, tmp701
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp702
	leaq	(%rdx,%rax), %rbx	#, D.20869
	movl	-260(%rbp), %eax	# i, tmp703
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp704
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_345, D.20866
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.20866,
	call	protect_from_queue	#
	movq	%rax, (%rbx)	# D.20866, *_342
	.loc 1 1866 0 discriminator 2
	addl	$1, -260(%rbp)	#, i
.L381:
	.loc 1 1866 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# i, tmp705
	cmpl	-248(%rbp), %eax	# noutputs, tmp705
	jl	.L382	#,
	.loc 1 1870 0 is_stmt 1
	movl	$0, -260(%rbp)	#, i
	jmp	.L383	#
.L384:
.LBB51:
	.loc 1 1872 0 discriminator 2
	movl	-260(%rbp), %eax	# i, tmp706
	cltq
	leaq	0(,%rax,4), %rdx	#, D.20858
	movq	-200(%rbp), %rax	# inout_opnum, tmp707
	addq	%rdx, %rax	# D.20858, D.20872
	movl	(%rax), %eax	# *_352, tmp708
	movl	%eax, -240(%rbp)	# tmp708, j
	.loc 1 1875 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp709
	movq	32(%rax), %rax	# body_252->fld[3].rtvec, D.20875
	movl	-268(%rbp), %edx	# ninout, tmp710
	movl	-252(%rbp), %ecx	# ninputs, tmp711
	subl	%edx, %ecx	# tmp710, D.20859
	movl	-260(%rbp), %edx	# i, tmp712
	leal	(%rcx,%rdx), %esi	#, D.20859
	.loc 1 1876 0 discriminator 2
	movl	-240(%rbp), %edx	# j, tmp713
	movslq	%edx, %rdx	# tmp713, D.20858
	leaq	0(,%rdx,8), %rcx	#, D.20858
	movq	-208(%rbp), %rdx	# output_rtx, tmp714
	addq	%rcx, %rdx	# D.20858, D.20869
	movq	(%rdx), %rcx	# *_359, D.20866
	movslq	%esi, %rdx	# D.20859, tmp715
	movq	%rcx, 8(%rax,%rdx,8)	# D.20866, _354->elem
	.loc 1 1878 0 discriminator 2
	movl	-240(%rbp), %edx	# j, tmp716
	leaq	-48(%rbp), %rax	#, tmp717
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp717,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1879 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp718
	movq	40(%rax), %rbx	# body_252->fld[4].rtvec, D.20875
	movl	-268(%rbp), %eax	# ninout, tmp719
	movl	-252(%rbp), %edx	# ninputs, tmp720
	subl	%eax, %edx	# tmp719, D.20859
	movl	-260(%rbp), %eax	# i, tmp721
	leal	(%rdx,%rax), %r12d	#, D.20859
	.loc 1 1880 0 discriminator 2
	leaq	-48(%rbp), %rax	#, tmp722
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp722,
	call	ggc_alloc_string	#
	movq	%rax, %rdx	#, D.20873
	movl	-260(%rbp), %eax	# i, tmp723
	cltq
	leaq	0(,%rax,4), %rcx	#, D.20858
	movq	-184(%rbp), %rax	# inout_mode, tmp724
	addq	%rcx, %rax	# D.20858, D.20871
	movl	(%rax), %eax	# *_367, D.20870
	movl	%eax, %esi	# D.20870,
	movl	$40, %edi	#,
	call	gen_rtx_fmt_s	#
	movslq	%r12d, %rdx	# D.20859, tmp725
	movq	%rax, 8(%rbx,%rdx,8)	# D.20866, _361->elem
.LBE51:
	.loc 1 1870 0 discriminator 2
	addl	$1, -260(%rbp)	#, i
.L383:
	.loc 1 1870 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# i, tmp726
	cmpl	-268(%rbp), %eax	# ninout, tmp726
	jl	.L384	#,
	.loc 1 1883 0 is_stmt 1
	movl	-244(%rbp), %eax	# old_generating_concat_p, tmp727
	movl	%eax, generating_concat_p(%rip)	# tmp727, generating_concat_p
	.loc 1 1890 0
	cmpl	$1, -248(%rbp)	#, noutputs
	jne	.L385	#,
	.loc 1 1890 0 is_stmt 0 discriminator 1
	cmpl	$0, -264(%rbp)	#, nclobbers
	jne	.L385	#,
	.loc 1 1892 0 is_stmt 1
	movq	-176(%rbp), %rax	# constraints, tmp728
	movq	(%rax), %rdx	# *constraints_56, D.20873
	movq	-112(%rbp), %rax	# body, tmp729
	movq	%rdx, 16(%rax)	# D.20873, body_252->fld[1].rtstr
	.loc 1 1893 0
	movq	-208(%rbp), %rax	# output_rtx, tmp730
	movq	(%rax), %rax	# *output_rtx_43, D.20866
	movq	-112(%rbp), %rdx	# body, tmp731
	movq	%rdx, %rcx	# tmp731,
	movq	%rax, %rdx	# D.20866,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.20866,
	call	emit_insn	#
	movq	%rax, -72(%rbp)	# tmp732, insn
	jmp	.L386	#
.L385:
	.loc 1 1896 0
	cmpl	$0, -248(%rbp)	#, noutputs
	jne	.L387	#,
	.loc 1 1896 0 is_stmt 0 discriminator 1
	cmpl	$0, -264(%rbp)	#, nclobbers
	jne	.L387	#,
	.loc 1 1899 0 is_stmt 1
	movq	-112(%rbp), %rax	# body, tmp733
	movq	%rax, %rdi	# tmp733,
	call	emit_insn	#
	movq	%rax, -72(%rbp)	# tmp734, insn
	jmp	.L386	#
.L387:
.LBB52:
	.loc 1 1904 0
	movq	-112(%rbp), %rax	# body, tmp735
	movq	%rax, -64(%rbp)	# tmp735, obody
	.loc 1 1905 0
	movl	-248(%rbp), %eax	# noutputs, tmp736
	movl	%eax, -256(%rbp)	# tmp736, num
	.loc 1 1907 0
	cmpl	$0, -256(%rbp)	#, num
	jne	.L388	#,
	.loc 1 1908 0
	movl	$1, -256(%rbp)	#, num
.L388:
	.loc 1 1910 0
	movl	-264(%rbp), %eax	# nclobbers, tmp737
	movl	-256(%rbp), %edx	# num, tmp738
	addl	%edx, %eax	# tmp738, D.20859
	movl	%eax, %edi	# D.20859,
	call	rtvec_alloc	#
	movq	%rax, %rdx	# D.20875,
	movl	$0, %esi	#,
	movl	$39, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, -112(%rbp)	# tmp739, body
	.loc 1 1913 0
	movl	$0, -260(%rbp)	#, i
	movq	-288(%rbp), %rax	# outputs, tmp740
	movq	%rax, -224(%rbp)	# tmp740, tail
	jmp	.L389	#
.L390:
	.loc 1 1915 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp741
	movq	8(%rax), %rbx	# body_381->fld[0].rtvec, D.20875
	.loc 1 1916 0 discriminator 2
	movl	-260(%rbp), %eax	# i, tmp742
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-176(%rbp), %rax	# constraints, tmp743
	addq	%rdx, %rax	# D.20858, D.20863
	movq	(%rax), %rcx	# *_387, D.20873
	movq	-280(%rbp), %rax	# string, tmp744
	movq	40(%rax), %rdx	# string_65->string.pointer, D.20873
	movl	-260(%rbp), %eax	# i, tmp745
	cltq
	leaq	0(,%rax,8), %rsi	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp746
	addq	%rsi, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_392, D.20866
	movzbl	2(%rax), %eax	# _393->mode, D.20864
	movzbl	%al, %eax	# D.20864, D.20870
	movq	-128(%rbp), %r8	# argvec, tmp747
	movl	-260(%rbp), %edi	# i, tmp748
	movl	16(%rbp), %esi	# line, tmp749
	movl	%esi, 16(%rsp)	# tmp749,
	movq	-320(%rbp), %rsi	# filename, tmp750
	movq	%rsi, 8(%rsp)	# tmp750,
	movq	-120(%rbp), %rsi	# constraintvec, tmp751
	movq	%rsi, (%rsp)	# tmp751,
	movq	%r8, %r9	# tmp747,
	movl	%edi, %r8d	# tmp748,
	movl	%eax, %esi	# D.20870,
	movl	$41, %edi	#,
	call	gen_rtx_fmt_ssiEEsi	#
	movq	%rax, %rdx	#, D.20866
	movl	-260(%rbp), %eax	# i, tmp752
	cltq
	leaq	0(,%rax,8), %rcx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp753
	addq	%rcx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_399, D.20866
	movq	%rdx, %rcx	# D.20866,
	movq	%rax, %rdx	# D.20866,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	-260(%rbp), %edx	# i, tmp755
	movslq	%edx, %rdx	# tmp755, tmp754
	movq	%rax, 8(%rbx,%rdx,8)	# D.20866, _384->elem
	.loc 1 1924 0 discriminator 2
	movq	-112(%rbp), %rax	# body, tmp756
	movq	8(%rax), %rax	# body_381->fld[0].rtvec, D.20875
	movl	-260(%rbp), %edx	# i, tmp758
	movslq	%edx, %rdx	# tmp758, tmp757
	movq	8(%rax,%rdx,8), %rax	# _402->elem, D.20866
	movq	16(%rax), %rax	# _403->fld[1].rtx, D.20866
	movl	-308(%rbp), %edx	# vol, tmp759
	andl	$1, %edx	#, D.20874
	andl	$1, %edx	#, tmp761
	leal	0(,%rdx,8), %ecx	#, tmp762
	movzbl	3(%rax), %edx	# _404->volatil, tmp763
	andl	$-9, %edx	#, tmp764
	orl	%ecx, %edx	# tmp762, tmp765
	movb	%dl, 3(%rax)	# tmp765, _404->volatil
	.loc 1 1913 0 discriminator 2
	movq	-224(%rbp), %rax	# tail, tmp766
	movq	(%rax), %rax	# tail_13->common.chain, tmp767
	movq	%rax, -224(%rbp)	# tmp767, tail
	addl	$1, -260(%rbp)	#, i
.L389:
	.loc 1 1913 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L390	#,
	.loc 1 1930 0 is_stmt 1
	cmpl	$0, -260(%rbp)	#, i
	jne	.L391	#,
	.loc 1 1931 0
	movq	-112(%rbp), %rax	# body, tmp768
	movq	8(%rax), %rdx	# body_381->fld[0].rtvec, D.20875
	movl	-260(%rbp), %eax	# i, i.256
	leal	1(%rax), %ecx	#, tmp769
	movl	%ecx, -260(%rbp)	# tmp769, i
	cltq
	movq	-64(%rbp), %rcx	# obody, tmp771
	movq	%rcx, 8(%rdx,%rax,8)	# tmp771, _409->elem
.L391:
	.loc 1 1935 0
	movq	-304(%rbp), %rax	# clobbers, tmp772
	movq	%rax, -224(%rbp)	# tmp772, tail
	jmp	.L392	#
.L397:
.LBB53:
	.loc 1 1937 0
	movq	-224(%rbp), %rax	# tail, tmp773
	movq	32(%rax), %rax	# tail_14->list.value, D.20861
	movq	40(%rax), %rax	# _413->string.pointer, tmp774
	movq	%rax, -56(%rbp)	# tmp774, regname
	.loc 1 1938 0
	movq	-56(%rbp), %rax	# regname, tmp775
	movq	%rax, %rdi	# tmp775,
	call	decode_reg_name	#
	movl	%eax, -236(%rbp)	# tmp776, j
	.loc 1 1940 0
	cmpl	$0, -236(%rbp)	#, j
	jns	.L393	#,
	.loc 1 1942 0
	cmpl	$-3, -236(%rbp)	#, j
	jne	.L394	#,
	.loc 1 1943 0
	jmp	.L395	#
.L394:
	.loc 1 1945 0
	cmpl	$-4, -236(%rbp)	#, j
	jne	.L396	#,
	.loc 1 1947 0
	movq	-112(%rbp), %rax	# body, tmp777
	movq	8(%rax), %r12	# body_381->fld[0].rtvec, D.20875
	movl	-260(%rbp), %ebx	# i, i.257
	leal	1(%rbx), %eax	#, tmp778
	movl	%eax, -260(%rbp)	# tmp778, i
	.loc 1 1948 0
	movl	$0, %esi	#,
	movl	$62, %edi	#,
	call	gen_rtx_fmt_0	#
	movq	%rax, %rsi	# D.20866,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, %rdx	# D.20866,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movslq	%ebx, %rdx	# i.257, tmp779
	movq	%rax, 8(%r12,%rdx,8)	# D.20866, _416->elem
	.loc 1 1952 0
	jmp	.L395	#
.L396:
	.loc 1 1956 0
	jmp	.L395	#
.L393:
	.loc 1 1960 0
	movq	-112(%rbp), %rax	# body, tmp780
	movq	8(%rax), %r12	# body_381->fld[0].rtvec, D.20875
	movl	-260(%rbp), %ebx	# i, i.258
	leal	1(%rbx), %eax	#, tmp781
	movl	%eax, -260(%rbp)	# tmp781, i
	.loc 1 1961 0
	movl	-236(%rbp), %eax	# j, tmp782
	movl	%eax, %esi	# tmp782,
	movl	$2, %edi	#,
	call	gen_rtx_REG	#
	movq	%rax, %rdx	# D.20866,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movslq	%ebx, %rdx	# i.258, tmp783
	movq	%rax, 8(%r12,%rdx,8)	# D.20866, _422->elem
.L395:
.LBE53:
	.loc 1 1935 0
	movq	-224(%rbp), %rax	# tail, tmp784
	movq	(%rax), %rax	# tail_14->common.chain, tmp785
	movq	%rax, -224(%rbp)	# tmp785, tail
.L392:
	.loc 1 1935 0 is_stmt 0 discriminator 1
	cmpq	$0, -224(%rbp)	#, tail
	jne	.L397	#,
	.loc 1 1964 0 is_stmt 1
	movq	-112(%rbp), %rax	# body, tmp786
	movq	%rax, %rdi	# tmp786,
	call	emit_insn	#
	movq	%rax, -72(%rbp)	# tmp787, insn
.L386:
.LBE52:
	.loc 1 1969 0
	movl	$0, -260(%rbp)	#, i
	jmp	.L398	#
.L400:
	.loc 1 1970 0
	movl	-260(%rbp), %eax	# i, tmp788
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-192(%rbp), %rax	# real_output_rtx, tmp789
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_432, D.20866
	testq	%rax, %rax	# D.20866
	je	.L399	#,
	.loc 1 1971 0
	movl	-260(%rbp), %eax	# i, tmp790
	cltq
	leaq	0(,%rax,8), %rdx	#, D.20858
	movq	-208(%rbp), %rax	# output_rtx, tmp791
	addq	%rdx, %rax	# D.20858, D.20869
	movq	(%rax), %rdx	# *_436, D.20866
	movl	-260(%rbp), %eax	# i, tmp792
	cltq
	leaq	0(,%rax,8), %rcx	#, D.20858
	movq	-192(%rbp), %rax	# real_output_rtx, tmp793
	addq	%rcx, %rax	# D.20858, D.20869
	movq	(%rax), %rax	# *_440, D.20866
	movq	%rdx, %rsi	# D.20866,
	movq	%rax, %rdi	# D.20866,
	call	emit_move_insn	#
.L399:
	.loc 1 1969 0
	addl	$1, -260(%rbp)	#, i
.L398:
	.loc 1 1969 0 is_stmt 0 discriminator 1
	movl	-260(%rbp), %eax	# i, tmp794
	cmpl	-248(%rbp), %eax	# noutputs, tmp794
	jl	.L400	#,
	.loc 1 1973 0 is_stmt 1
	call	free_temp_slots	#
.L314:
	.loc 1 1974 0
	movq	-24(%rbp), %rax	# D.20877, tmp806
	xorq	%fs:40, %rax	#, tmp806
	je	.L401	#,
	call	__stack_chk_fail	#
.L401:
	leaq	-16(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	expand_asm_operands, .-expand_asm_operands
	.section	.rodata
	.align 8
.LC19:
	.string	"too many alternatives in `asm'"
	.align 8
.LC20:
	.string	"operand constraints for `asm' differ in number of alternatives"
	.text
	.type	check_operand_nalternatives, @function
check_operand_nalternatives:
.LFB31:
	.loc 1 1982 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# outputs, outputs
	movq	%rsi, -48(%rbp)	# inputs, inputs
	.loc 1 1983 0
	cmpq	$0, -40(%rbp)	#, outputs
	jne	.L403	#,
	.loc 1 1983 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, inputs
	je	.L404	#,
.L403:
.LBB54:
	.loc 1 1985 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, outputs
	je	.L405	#,
	.loc 1 1985 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# outputs, iftmp.259
	jmp	.L406	#
.L405:
	.loc 1 1985 0 discriminator 2
	movq	-48(%rbp), %rax	# inputs, iftmp.259
.L406:
	.loc 1 1985 0 discriminator 3
	movq	24(%rax), %rax	# iftmp.259_3->list.purpose, tmp69
	movq	%rax, -24(%rbp)	# tmp69, tmp
	.loc 1 1987 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# tmp, tmp70
	movq	32(%rax), %rax	# tmp_9->list.value, D.20889
	movq	40(%rax), %rax	# _10->string.pointer, D.20890
	.loc 1 1986 0 discriminator 3
	movq	%rax, %rsi	# D.20890,
	movl	$44, %edi	#,
	call	n_occurrences	#
	movl	%eax, -28(%rbp)	# tmp71, nalternatives
	.loc 1 1988 0 discriminator 3
	movq	-48(%rbp), %rax	# inputs, tmp72
	movq	%rax, -16(%rbp)	# tmp72, next
	.loc 1 1990 0 discriminator 3
	movl	-28(%rbp), %eax	# nalternatives, tmp73
	addl	$1, %eax	#, D.20891
	cmpl	$30, %eax	#, D.20891
	jle	.L407	#,
	.loc 1 1992 0
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 1993 0
	movl	$0, %eax	#, D.20888
	jmp	.L408	#
.L407:
	.loc 1 1996 0
	movq	-40(%rbp), %rax	# outputs, tmp74
	movq	%rax, -24(%rbp)	# tmp74, tmp
	.loc 1 1997 0
	jmp	.L409	#
.L412:
.LBB55:
	.loc 1 2000 0
	movq	-24(%rbp), %rax	# tmp, tmp75
	movq	24(%rax), %rax	# tmp_1->list.purpose, D.20889
	movq	32(%rax), %rax	# _17->list.value, D.20889
	.loc 1 1999 0
	movq	40(%rax), %rax	# _18->string.pointer, tmp76
	movq	%rax, -8(%rbp)	# tmp76, constraint
	.loc 1 2002 0
	movq	-8(%rbp), %rax	# constraint, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$44, %edi	#,
	call	n_occurrences	#
	cmpl	-28(%rbp), %eax	# nalternatives, D.20891
	je	.L410	#,
	.loc 1 2004 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2005 0
	movl	$0, %eax	#, D.20888
	jmp	.L408	#
.L410:
	.loc 1 2008 0
	movq	-24(%rbp), %rax	# tmp, tmp78
	movq	(%rax), %rax	# tmp_1->common.chain, D.20889
	testq	%rax, %rax	# D.20889
	je	.L411	#,
	.loc 1 2009 0
	movq	-24(%rbp), %rax	# tmp, tmp79
	movq	(%rax), %rax	# tmp_1->common.chain, tmp80
	movq	%rax, -24(%rbp)	# tmp80, tmp
	jmp	.L409	#
.L411:
	.loc 1 2011 0
	movq	-16(%rbp), %rax	# next, tmp81
	movq	%rax, -24(%rbp)	# tmp81, tmp
	movq	$0, -16(%rbp)	#, next
.L409:
.LBE55:
	.loc 1 1997 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tmp
	jne	.L412	#,
.L404:
.LBE54:
	.loc 1 2015 0
	movl	$1, %eax	#, D.20888
.L408:
	.loc 1 2016 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	check_operand_nalternatives, .-check_operand_nalternatives
	.section	.rodata
	.align 8
.LC21:
	.string	"duplicate asm operand name '%s'"
	.text
	.type	check_unique_operand_names, @function
check_unique_operand_names:
.LFB32:
	.loc 1 2026 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# outputs, outputs
	movq	%rsi, -48(%rbp)	# inputs, inputs
	.loc 1 2029 0
	movq	-40(%rbp), %rax	# outputs, tmp72
	movq	%rax, -32(%rbp)	# tmp72, i
	jmp	.L414	#
.L421:
.LBB56:
	.loc 1 2031 0
	movq	-32(%rbp), %rax	# i, tmp73
	movq	24(%rax), %rax	# i_1->list.purpose, D.20895
	movq	24(%rax), %rax	# _10->list.purpose, tmp74
	movq	%rax, -16(%rbp)	# tmp74, i_name
	.loc 1 2032 0
	cmpq	$0, -16(%rbp)	#, i_name
	jne	.L415	#,
	.loc 1 2033 0
	jmp	.L416	#
.L415:
	.loc 1 2035 0
	movq	-32(%rbp), %rax	# i, tmp75
	movq	(%rax), %rax	# i_1->common.chain, tmp76
	movq	%rax, -24(%rbp)	# tmp76, j
	jmp	.L417	#
.L420:
	.loc 1 2036 0
	movq	-24(%rbp), %rax	# j, tmp77
	movq	24(%rax), %rax	# j_4->list.purpose, D.20895
	movq	24(%rax), %rax	# _13->list.purpose, D.20895
	cmpq	-16(%rbp), %rax	# i_name, D.20895
	jne	.L418	#,
	.loc 1 2037 0
	jmp	.L419	#
.L418:
	.loc 1 2035 0
	movq	-24(%rbp), %rax	# j, tmp78
	movq	(%rax), %rax	# j_4->common.chain, tmp79
	movq	%rax, -24(%rbp)	# tmp79, j
.L417:
	.loc 1 2035 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, j
	jne	.L420	#,
.L416:
.LBE56:
	.loc 1 2029 0 is_stmt 1
	movq	-32(%rbp), %rax	# i, tmp80
	movq	(%rax), %rax	# i_1->common.chain, tmp81
	movq	%rax, -32(%rbp)	# tmp81, i
.L414:
	.loc 1 2029 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, i
	jne	.L421	#,
	.loc 1 2040 0 is_stmt 1
	movq	-48(%rbp), %rax	# inputs, tmp82
	movq	%rax, -32(%rbp)	# tmp82, i
	jmp	.L422	#
.L431:
.LBB57:
	.loc 1 2042 0
	movq	-32(%rbp), %rax	# i, tmp83
	movq	24(%rax), %rax	# i_2->list.purpose, D.20895
	movq	24(%rax), %rax	# _19->list.purpose, tmp84
	movq	%rax, -8(%rbp)	# tmp84, i_name
	.loc 1 2043 0
	cmpq	$0, -8(%rbp)	#, i_name
	jne	.L423	#,
	.loc 1 2044 0
	jmp	.L424	#
.L423:
	.loc 1 2046 0
	movq	-32(%rbp), %rax	# i, tmp85
	movq	(%rax), %rax	# i_2->common.chain, tmp86
	movq	%rax, -24(%rbp)	# tmp86, j
	jmp	.L425	#
.L427:
	.loc 1 2047 0
	movq	-24(%rbp), %rax	# j, tmp87
	movq	24(%rax), %rax	# j_5->list.purpose, D.20895
	movq	24(%rax), %rax	# _22->list.purpose, D.20895
	cmpq	-8(%rbp), %rax	# i_name, D.20895
	jne	.L426	#,
	.loc 1 2048 0
	jmp	.L419	#
.L426:
	.loc 1 2046 0
	movq	-24(%rbp), %rax	# j, tmp88
	movq	(%rax), %rax	# j_5->common.chain, tmp89
	movq	%rax, -24(%rbp)	# tmp89, j
.L425:
	.loc 1 2046 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, j
	jne	.L427	#,
	.loc 1 2049 0 is_stmt 1
	movq	-40(%rbp), %rax	# outputs, tmp90
	movq	%rax, -24(%rbp)	# tmp90, j
	jmp	.L428	#
.L430:
	.loc 1 2050 0
	movq	-24(%rbp), %rax	# j, tmp91
	movq	24(%rax), %rax	# j_6->list.purpose, D.20895
	movq	24(%rax), %rax	# _26->list.purpose, D.20895
	cmpq	-8(%rbp), %rax	# i_name, D.20895
	jne	.L429	#,
	.loc 1 2051 0
	jmp	.L419	#
.L429:
	.loc 1 2049 0
	movq	-24(%rbp), %rax	# j, tmp92
	movq	(%rax), %rax	# j_6->common.chain, tmp93
	movq	%rax, -24(%rbp)	# tmp93, j
.L428:
	.loc 1 2049 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, j
	jne	.L430	#,
.L424:
.LBE57:
	.loc 1 2040 0 is_stmt 1
	movq	-32(%rbp), %rax	# i, tmp94
	movq	(%rax), %rax	# i_2->common.chain, tmp95
	movq	%rax, -32(%rbp)	# tmp95, i
.L422:
	.loc 1 2040 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, i
	jne	.L431	#,
	.loc 1 2054 0 is_stmt 1
	movl	$1, %eax	#, D.20894
	jmp	.L432	#
.L419:
	.loc 1 2058 0
	movq	-32(%rbp), %rax	# i, tmp96
	movq	24(%rax), %rax	# i_3->list.purpose, D.20895
	movq	24(%rax), %rax	# _31->list.purpose, D.20895
	movq	32(%rax), %rax	# _32->identifier.id.str, D.20896
	.loc 1 2057 0
	movq	%rax, %rsi	# D.20896,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2059 0
	movl	$0, %eax	#, D.20894
.L432:
	.loc 1 2060 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	check_unique_operand_names, .-check_unique_operand_names
	.type	resolve_operand_names, @function
resolve_operand_names:
.LFB33:
	.loc 1 2071 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# string, string
	movq	%rsi, -48(%rbp)	# outputs, outputs
	movq	%rdx, -56(%rbp)	# inputs, inputs
	movq	%rcx, -64(%rbp)	# pconstraints, pconstraints
	.loc 1 2072 0
	movq	-40(%rbp), %rax	# string, tmp82
	movq	40(%rax), %rax	# string_8(D)->string.pointer, D.20898
	movq	%rax, %rdi	# D.20898,
	call	xstrdup	#
	movq	%rax, -16(%rbp)	# tmp83, buffer
	.loc 1 2080 0
	movq	-16(%rbp), %rax	# buffer, tmp84
	movq	%rax, -32(%rbp)	# tmp84, p
	.loc 1 2081 0
	jmp	.L434	#
.L438:
	.loc 1 2083 0
	movq	-32(%rbp), %rax	# p, tmp85
	addq	$1, %rax	#, D.20899
	movzbl	(%rax), %eax	# *_13, D.20900
	cmpb	$91, %al	#, D.20900
	jne	.L435	#,
	.loc 1 2084 0
	addq	$1, -32(%rbp)	#, p
	jmp	.L436	#
.L435:
	.loc 1 2085 0
	movq	-32(%rbp), %rax	# p, tmp86
	addq	$1, %rax	#, D.20899
	movzbl	(%rax), %eax	# *_16, D.20900
	movsbl	%al, %eax	# D.20900, D.20901
	movzbl	%al, %eax	# D.20901, D.20901
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.20902
	movzwl	%ax, %eax	# D.20902, D.20901
	andl	$136, %eax	#, D.20901
	testl	%eax, %eax	# D.20901
	je	.L437	#,
	.loc 1 2085 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp88
	addq	$2, %rax	#, D.20899
	movzbl	(%rax), %eax	# *_23, D.20900
	cmpb	$91, %al	#, D.20900
	jne	.L437	#,
	.loc 1 2086 0 is_stmt 1
	addq	$2, -32(%rbp)	#, p
	jmp	.L436	#
.L437:
	.loc 1 2089 0
	addq	$1, -32(%rbp)	#, p
	.loc 1 2090 0
	jmp	.L434	#
.L436:
	.loc 1 2093 0
	movq	-56(%rbp), %rdx	# inputs, tmp89
	movq	-48(%rbp), %rcx	# outputs, tmp90
	movq	-32(%rbp), %rax	# p, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	resolve_operand_name_1	#
	movq	%rax, -32(%rbp)	# tmp92, p
.L434:
	.loc 1 2081 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp93
	movl	$37, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	strchr	#
	movq	%rax, -32(%rbp)	# tmp94, p
	cmpq	$0, -32(%rbp)	#, p
	jne	.L438	#,
	.loc 1 2096 0
	movq	-16(%rbp), %rax	# buffer, tmp95
	movq	%rax, %rdi	# tmp95,
	call	strlen	#
	movq	-16(%rbp), %rdx	# buffer, tmp96
	movq	%rdx, %rsi	# tmp96,
	movl	%eax, %edi	# D.20901,
	call	build_string	#
	movq	%rax, -40(%rbp)	# tmp97, string
	.loc 1 2097 0
	movq	-16(%rbp), %rax	# buffer, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free	#
	.loc 1 2102 0
	movq	-48(%rbp), %rax	# outputs, tmp99
	movq	%rax, -24(%rbp)	# tmp99, t
	jmp	.L439	#
.L440:
	.loc 1 2103 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp100
	movq	24(%rax), %rax	# t_6->list.purpose, D.20904
	movq	32(%rax), %rax	# _35->list.value, D.20904
	movq	40(%rax), %rdx	# _36->string.pointer, D.20898
	movq	-64(%rbp), %rax	# pconstraints, tmp101
	movq	%rdx, (%rax)	# D.20898, *pconstraints_1
	.loc 1 2102 0 discriminator 2
	movq	-24(%rbp), %rax	# t, tmp102
	movq	(%rax), %rax	# t_6->common.chain, tmp103
	movq	%rax, -24(%rbp)	# tmp103, t
	addq	$8, -64(%rbp)	#, pconstraints
.L439:
	.loc 1 2102 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L440	#,
	.loc 1 2106 0 is_stmt 1
	movq	-56(%rbp), %rax	# inputs, tmp104
	movq	%rax, -24(%rbp)	# tmp104, t
	jmp	.L441	#
.L446:
.LBB58:
	.loc 1 2108 0
	movq	-24(%rbp), %rax	# t, tmp105
	movq	24(%rax), %rax	# t_7->list.purpose, D.20904
	movq	32(%rax), %rax	# _41->list.value, D.20904
	movq	40(%rax), %rax	# _42->string.pointer, tmp106
	movq	%rax, -8(%rbp)	# tmp106, c
	.loc 1 2109 0
	movq	-8(%rbp), %rax	# c, tmp107
	movl	$91, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	strchr	#
	testq	%rax, %rax	# D.20899
	jne	.L442	#,
	.loc 1 2110 0
	movq	-64(%rbp), %rax	# pconstraints, tmp108
	movq	-8(%rbp), %rdx	# c, tmp109
	movq	%rdx, (%rax)	# tmp109, *pconstraints_2
	jmp	.L443	#
.L442:
	.loc 1 2113 0
	movq	-8(%rbp), %rax	# c, tmp110
	movq	%rax, %rdi	# tmp110,
	call	xstrdup	#
	movq	%rax, -16(%rbp)	# tmp111, buffer
	movq	-16(%rbp), %rax	# buffer, tmp112
	movq	%rax, -32(%rbp)	# tmp112, p
	.loc 1 2114 0
	jmp	.L444	#
.L445:
	.loc 1 2115 0
	movq	-56(%rbp), %rdx	# inputs, tmp113
	movq	-48(%rbp), %rcx	# outputs, tmp114
	movq	-32(%rbp), %rax	# p, tmp115
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# tmp115,
	call	resolve_operand_name_1	#
	movq	%rax, -32(%rbp)	# tmp116, p
.L444:
	.loc 1 2114 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp117
	movl	$91, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	strchr	#
	movq	%rax, -32(%rbp)	# tmp118, p
	cmpq	$0, -32(%rbp)	#, p
	jne	.L445	#,
	.loc 1 2117 0
	movq	-16(%rbp), %rax	# buffer, tmp119
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp119,
	call	ggc_alloc_string	#
	movq	-64(%rbp), %rdx	# pconstraints, tmp120
	movq	%rax, (%rdx)	# D.20898, *pconstraints_2
	.loc 1 2118 0
	movq	-16(%rbp), %rax	# buffer, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free	#
.L443:
.LBE58:
	.loc 1 2106 0
	movq	-24(%rbp), %rax	# t, tmp122
	movq	(%rax), %rax	# t_7->common.chain, tmp123
	movq	%rax, -24(%rbp)	# tmp123, t
	addq	$8, -64(%rbp)	#, pconstraints
.L441:
	.loc 1 2106 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, t
	jne	.L446	#,
	.loc 1 2122 0 is_stmt 1
	movq	-40(%rbp), %rax	# string, D.20905
	.loc 1 2123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	resolve_operand_names, .-resolve_operand_names
	.section	.rodata
	.align 8
.LC22:
	.string	"missing close brace for named operand"
.LC23:
	.string	"undefined named operand '%s'"
	.text
	.type	resolve_operand_name_1, @function
resolve_operand_name_1:
.LFB34:
	.loc 1 2134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# p, p
	movq	%rsi, -80(%rbp)	# outputs, outputs
	movq	%rdx, -88(%rbp)	# inputs, inputs
	.loc 1 2141 0
	movq	-72(%rbp), %rax	# p, tmp80
	movl	$93, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	strchr	#
	movq	%rax, -48(%rbp)	# tmp81, q
	.loc 1 2142 0
	cmpq	$0, -48(%rbp)	#, q
	jne	.L449	#,
	.loc 1 2144 0
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2145 0
	movq	-72(%rbp), %rax	# p, tmp82
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	strchr	#
	jmp	.L450	#
.L449:
	.loc 1 2147 0
	movq	-48(%rbp), %rdx	# q, q.260
	movq	-72(%rbp), %rax	# p, p.261
	subq	%rax, %rdx	# p.261, D.20907
	movq	%rdx, %rax	# D.20907, D.20907
	subq	$1, %rax	#, D.20907
	movq	%rax, -40(%rbp)	# D.20907, len
	.loc 1 2150 0
	movl	$0, -60(%rbp)	#, op
	movq	-80(%rbp), %rax	# outputs, tmp83
	movq	%rax, -56(%rbp)	# tmp83, t
	jmp	.L451	#
.L454:
.LBB59:
	.loc 1 2152 0
	movq	-56(%rbp), %rax	# t, tmp84
	movq	24(%rax), %rax	# t_4->list.purpose, D.20908
	movq	24(%rax), %rax	# _18->list.purpose, tmp85
	movq	%rax, -32(%rbp)	# tmp85, id
	.loc 1 2153 0
	cmpq	$0, -32(%rbp)	#, id
	je	.L452	#,
.LBB60:
	.loc 1 2155 0
	movq	-32(%rbp), %rax	# id, tmp86
	movq	32(%rax), %rax	# id_19->identifier.id.str, tmp87
	movq	%rax, -24(%rbp)	# tmp87, c
	.loc 1 2156 0
	movq	-72(%rbp), %rax	# p, tmp88
	leaq	1(%rax), %rcx	#, D.20909
	movq	-40(%rbp), %rdx	# len, tmp89
	movq	-24(%rbp), %rax	# c, tmp90
	movq	%rcx, %rsi	# D.20909,
	movq	%rax, %rdi	# tmp90,
	call	strncmp	#
	testl	%eax, %eax	# D.20910
	jne	.L452	#,
	.loc 1 2156 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# len, tmp91
	movq	-24(%rbp), %rdx	# c, tmp92
	addq	%rdx, %rax	# tmp92, D.20909
	movzbl	(%rax), %eax	# *_23, D.20911
	testb	%al, %al	# D.20911
	jne	.L452	#,
	.loc 1 2157 0 is_stmt 1
	jmp	.L453	#
.L452:
.LBE60:
.LBE59:
	.loc 1 2150 0
	movq	-56(%rbp), %rax	# t, tmp93
	movq	(%rax), %rax	# t_4->common.chain, tmp94
	movq	%rax, -56(%rbp)	# tmp94, t
	addl	$1, -60(%rbp)	#, op
.L451:
	.loc 1 2150 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, t
	jne	.L454	#,
	.loc 1 2160 0 is_stmt 1
	movq	-88(%rbp), %rax	# inputs, tmp95
	movq	%rax, -56(%rbp)	# tmp95, t
	jmp	.L455	#
.L457:
.LBB61:
	.loc 1 2162 0
	movq	-56(%rbp), %rax	# t, tmp96
	movq	24(%rax), %rax	# t_5->list.purpose, D.20908
	movq	24(%rax), %rax	# _29->list.purpose, tmp97
	movq	%rax, -16(%rbp)	# tmp97, id
	.loc 1 2163 0
	cmpq	$0, -16(%rbp)	#, id
	je	.L456	#,
.LBB62:
	.loc 1 2165 0
	movq	-16(%rbp), %rax	# id, tmp98
	movq	32(%rax), %rax	# id_30->identifier.id.str, tmp99
	movq	%rax, -8(%rbp)	# tmp99, c
	.loc 1 2166 0
	movq	-72(%rbp), %rax	# p, tmp100
	leaq	1(%rax), %rcx	#, D.20909
	movq	-40(%rbp), %rdx	# len, tmp101
	movq	-8(%rbp), %rax	# c, tmp102
	movq	%rcx, %rsi	# D.20909,
	movq	%rax, %rdi	# tmp102,
	call	strncmp	#
	testl	%eax, %eax	# D.20910
	jne	.L456	#,
	.loc 1 2166 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# len, tmp103
	movq	-8(%rbp), %rdx	# c, tmp104
	addq	%rdx, %rax	# tmp104, D.20909
	movzbl	(%rax), %eax	# *_34, D.20911
	testb	%al, %al	# D.20911
	jne	.L456	#,
	.loc 1 2167 0 is_stmt 1
	jmp	.L453	#
.L456:
.LBE62:
.LBE61:
	.loc 1 2160 0
	movq	-56(%rbp), %rax	# t, tmp105
	movq	(%rax), %rax	# t_5->common.chain, tmp106
	movq	%rax, -56(%rbp)	# tmp106, t
	addl	$1, -60(%rbp)	#, op
.L455:
	.loc 1 2160 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, t
	jne	.L457	#,
	.loc 1 2171 0 is_stmt 1
	movq	-48(%rbp), %rax	# q, tmp107
	movb	$0, (%rax)	#, *q_8
	.loc 1 2172 0
	movq	-72(%rbp), %rax	# p, tmp108
	addq	$1, %rax	#, D.20906
	movq	%rax, %rsi	# D.20906,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	error	#
	.loc 1 2173 0
	movl	$0, -60(%rbp)	#, op
.L453:
	.loc 1 2179 0
	movl	-60(%rbp), %edx	# op, tmp109
	movq	-72(%rbp), %rax	# p, tmp110
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 2180 0
	movq	-72(%rbp), %rax	# p, tmp111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	strchr	#
	movq	%rax, -72(%rbp)	# tmp112, p
	.loc 1 2183 0
	movq	-72(%rbp), %rax	# p, tmp113
	cmpq	-48(%rbp), %rax	# q, tmp113
	jbe	.L458	#,
	.loc 1 2184 0
	movl	$__FUNCTION__.14316, %edx	#,
	movl	$2184, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L458:
	.loc 1 2187 0
	movq	-48(%rbp), %rax	# q, tmp114
	addq	$1, %rax	#, D.20909
	movq	%rax, %rdi	# D.20909,
	call	strlen	#
	leaq	1(%rax), %rdx	#, D.20912
	movq	-48(%rbp), %rax	# q, tmp115
	leaq	1(%rax), %rcx	#, D.20913
	movq	-72(%rbp), %rax	# p, tmp116
	movq	%rcx, %rsi	# D.20913,
	movq	%rax, %rdi	# tmp116,
	call	memmove	#
	.loc 1 2189 0
	movq	-72(%rbp), %rax	# p, D.20906
.L450:
	.loc 1 2190 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	resolve_operand_name_1, .-resolve_operand_name_1
	.globl	expand_expr_stmt
	.type	expand_expr_stmt, @function
expand_expr_stmt:
.LFB35:
	.loc 1 2200 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# exp, exp
	.loc 1 2201 0
	movq	-8(%rbp), %rax	# exp, tmp59
	movl	$1, %edx	#,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	expand_expr_stmt_value	#
	.loc 1 2202 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	expand_expr_stmt, .-expand_expr_stmt
	.section	.rodata
.LC24:
	.string	"statement with no effect"
	.text
	.globl	expand_expr_stmt_value
	.type	expand_expr_stmt_value, @function
expand_expr_stmt_value:
.LFB36:
	.loc 1 2213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# exp, exp
	movl	%esi, -44(%rbp)	# want_value, want_value
	movl	%edx, -48(%rbp)	# maybe_last, maybe_last
	.loc 1 2217 0
	cmpl	$-1, -44(%rbp)	#, want_value
	jne	.L461	#,
	.loc 1 2218 0
	movq	cfun(%rip), %rax	# cfun, cfun.262
	movq	8(%rax), %rax	# cfun.262_6->stmt, D.20916
	movl	72(%rax), %eax	# _7->x_expr_stmts_for_value, D.20917
	testl	%eax, %eax	# D.20917
	setne	%al	#, D.20918
	movzbl	%al, %eax	# D.20918, tmp99
	movl	%eax, -44(%rbp)	# tmp99, want_value
.L461:
	.loc 1 2223 0
	cmpl	$0, -44(%rbp)	#, want_value
	jne	.L462	#,
	.loc 1 2224 0
	movq	cfun(%rip), %rax	# cfun, cfun.263
	movq	8(%rax), %rax	# cfun.263_11->stmt, D.20916
	movl	72(%rax), %eax	# _12->x_expr_stmts_for_value, D.20917
	testl	%eax, %eax	# D.20917
	je	.L463	#,
	.loc 1 2224 0 is_stmt 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, maybe_last
	jne	.L462	#,
.L463:
	.loc 1 2225 0 is_stmt 1
	movq	global_trees(%rip), %rax	# global_trees, D.20919
	cmpq	-40(%rbp), %rax	# exp, D.20919
	je	.L462	#,
	.loc 1 2227 0
	movq	-40(%rbp), %rax	# exp, tmp100
	movzbl	17(%rax), %eax	# *exp_16(D), D.20920
	andl	$1, %eax	#, D.20920
	testb	%al, %al	# D.20920
	jne	.L464	#,
	.loc 1 2229 0
	movl	extra_warnings(%rip), %eax	# extra_warnings, extra_warnings.264
	testl	%eax, %eax	# extra_warnings.264
	jne	.L465	#,
	.loc 1 2229 0 is_stmt 0 discriminator 1
	movl	warn_unused_value(%rip), %eax	# warn_unused_value, warn_unused_value.265
	testl	%eax, %eax	# warn_unused_value.265
	je	.L462	#,
.L465:
	.loc 1 2230 0 is_stmt 1
	movq	-40(%rbp), %rax	# exp, tmp101
	movzbl	16(%rax), %eax	# exp_16(D)->common.code, D.20920
	cmpb	$114, %al	#, D.20920
	jne	.L467	#,
	.loc 1 2231 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp102
	movq	8(%rax), %rax	# exp_16(D)->common.type, D.20919
	movzbl	16(%rax), %eax	# _22->common.code, D.20920
	.loc 1 2230 0 discriminator 1
	cmpb	$5, %al	#, D.20920
	je	.L462	#,
.L467:
	.loc 1 2232 0
	movq	cfun(%rip), %rax	# cfun, cfun.266
	movq	8(%rax), %rax	# cfun.266_24->stmt, D.20916
	movl	88(%rax), %ecx	# _25->x_emit_lineno, D.20917
	movq	cfun(%rip), %rax	# cfun, cfun.267
	movq	8(%rax), %rax	# cfun.267_27->stmt, D.20916
	movq	80(%rax), %rax	# _28->x_emit_filename, D.20921
	movl	$.LC24, %edx	#,
	movl	%ecx, %esi	# D.20917,
	movq	%rax, %rdi	# D.20921,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
	jmp	.L462	#
.L464:
	.loc 1 2235 0
	movl	warn_unused_value(%rip), %eax	# warn_unused_value, warn_unused_value.268
	testl	%eax, %eax	# warn_unused_value.268
	je	.L462	#,
	.loc 1 2236 0
	movq	-40(%rbp), %rax	# exp, tmp103
	movq	%rax, %rdi	# tmp103,
	call	warn_if_unused_value	#
.L462:
	.loc 1 2241 0
	cmpl	$0, -44(%rbp)	#, want_value
	je	.L468	#,
	.loc 1 2241 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# exp, tmp104
	movq	8(%rax), %rax	# exp_16(D)->common.type, D.20919
	movzbl	16(%rax), %eax	# _31->common.code, D.20920
	cmpb	$23, %al	#, D.20920
	jne	.L468	#,
	.loc 1 2242 0 is_stmt 1
	movq	-40(%rbp), %rax	# exp, tmp105
	movq	8(%rax), %rax	# exp_16(D)->common.type, D.20919
	movq	%rax, %rdi	# D.20919,
	call	build_pointer_type	#
	movq	-40(%rbp), %rdx	# exp, tmp106
	movq	%rax, %rsi	# D.20919,
	movl	$121, %edi	#,
	call	build1	#
	movq	%rax, -40(%rbp)	# tmp107, exp
.L468:
	.loc 1 2247 0
	cmpl	$0, -44(%rbp)	#, want_value
	jne	.L469	#,
	.loc 1 2247 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.269
	jmp	.L470	#
.L469:
	.loc 1 2247 0 discriminator 2
	movl	$0, %eax	#, iftmp.269
.L470:
	.loc 1 2247 0 discriminator 3
	movq	-40(%rbp), %rdi	# exp, tmp108
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# iftmp.269,
	call	expand_expr	#
	movq	%rax, -24(%rbp)	# tmp109, value
	.loc 1 2249 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# exp, tmp110
	movq	8(%rax), %rax	# exp_1->common.type, tmp111
	movq	%rax, -16(%rbp)	# tmp111, type
	.loc 1 2253 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, value
	je	.L471	#,
	.loc 1 2253 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# value, tmp112
	movzwl	(%rax), %eax	# value_38->code, D.20922
	cmpw	$66, %ax	#, D.20922
	jne	.L471	#,
	movq	-40(%rbp), %rax	# exp, tmp113
	movzbl	17(%rax), %eax	# *exp_1, D.20920
	andl	$8, %eax	#, D.20920
	testb	%al, %al	# D.20920
	je	.L471	#,
	.loc 1 2255 0 is_stmt 1
	movq	-16(%rbp), %rax	# type, tmp114
	movzbl	61(%rax), %eax	# *type_39, D.20920
	andl	$-2, %eax	#, D.20920
	testb	%al, %al	# D.20920
	je	.L471	#,
	.loc 1 2257 0
	movq	-16(%rbp), %rax	# type, tmp115
	movzbl	61(%rax), %eax	# *type_39, D.20920
	andl	$-2, %eax	#, D.20920
	cmpb	$102, %al	#, D.20920
	je	.L472	#,
	.loc 1 2258 0
	movq	-24(%rbp), %rax	# value, tmp116
	movq	%rax, %rdi	# tmp116,
	call	copy_to_reg	#
	movq	%rax, -24(%rbp)	# tmp117, value
	jmp	.L471	#
.L472:
.LBB63:
	.loc 1 2261 0
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp118, lab
	.loc 1 2264 0
	movq	-16(%rbp), %rax	# type, tmp119
	movq	32(%rax), %rax	# type_39->type.size, D.20919
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20919,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.20923
	movq	-24(%rbp), %rsi	# value, tmp120
	movq	-24(%rbp), %rax	# value, tmp121
	movq	-8(%rbp), %rcx	# lab, tmp122
	movq	%rcx, (%rsp)	# tmp122,
	movl	$0, %r9d	#,
	movl	$51, %r8d	#,
	movq	%rdx, %rcx	# D.20923,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp121,
	call	emit_cmp_and_jump_insns	#
	.loc 1 2268 0
	movq	-8(%rbp), %rax	# lab, tmp123
	movq	%rax, %rdi	# tmp123,
	call	emit_label	#
.L471:
.LBE63:
	.loc 1 2274 0
	movq	-24(%rbp), %rax	# value, tmp124
	movq	%rax, %rdi	# tmp124,
	call	preserve_temp_slots	#
	.loc 1 2279 0
	call	free_temp_slots	#
	.loc 1 2281 0
	cmpl	$0, -44(%rbp)	#, want_value
	je	.L473	#,
	.loc 1 2283 0
	movq	cfun(%rip), %rax	# cfun, cfun.270
	movq	8(%rax), %rax	# cfun.270_51->stmt, D.20916
	movq	-24(%rbp), %rdx	# value, tmp125
	movq	%rdx, 64(%rax)	# tmp125, _52->x_last_expr_value
	.loc 1 2284 0
	movq	cfun(%rip), %rax	# cfun, cfun.271
	movq	8(%rax), %rax	# cfun.271_53->stmt, D.20916
	movq	-16(%rbp), %rdx	# type, tmp126
	movq	%rdx, 56(%rax)	# tmp126, _54->x_last_expr_type
.L473:
	.loc 1 2287 0
	call	emit_queue	#
	.loc 1 2288 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	expand_expr_stmt_value, .-expand_expr_stmt_value
	.section	.rodata
.LC25:
	.string	"value computed is not used"
	.text
	.globl	warn_if_unused_value
	.type	warn_if_unused_value, @function
warn_if_unused_value:
.LFB37:
	.loc 1 2296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# exp, exp
	.loc 1 2297 0
	movq	-24(%rbp), %rax	# exp, tmp111
	movzbl	18(%rax), %eax	# *exp_3(D), D.20926
	andl	$1, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L475	#,
	.loc 1 2298 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L475:
	.loc 1 2303 0
	movq	-24(%rbp), %rax	# exp, tmp112
	movq	8(%rax), %rax	# exp_3(D)->common.type, D.20927
	movzbl	16(%rax), %eax	# _7->common.code, D.20926
	cmpb	$5, %al	#, D.20926
	jne	.L477	#,
	.loc 1 2304 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L477:
	.loc 1 2306 0
	movq	-24(%rbp), %rax	# exp, tmp113
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.20926
	movzbl	%al, %eax	# D.20926, D.20928
	subl	$41, %eax	#, tmp114
	cmpl	$99, %eax	#, tmp114
	ja	.L478	#,
	movl	%eax, %eax	# tmp114, tmp115
	movq	.L480(,%rax,8), %rax	#, tmp116
	jmp	*%rax	# tmp116
	.section	.rodata
	.align 8
	.align 4
.L480:
	.quad	.L479
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L481
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L478
	.quad	.L483
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L484
	.quad	.L484
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L485
	.quad	.L485
	.quad	.L485
	.quad	.L478
	.quad	.L486
	.quad	.L478
	.quad	.L482
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L482
	.quad	.L478
	.quad	.L482
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L478
	.quad	.L482
	.text
.L482:
	.loc 1 2321 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L483:
	.loc 1 2325 0
	movq	-24(%rbp), %rax	# exp, tmp117
	movq	40(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	jmp	.L476	#
.L486:
	.loc 1 2328 0
	movq	-24(%rbp), %rax	# exp, tmp118
	movq	40(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	jmp	.L476	#
.L484:
	.loc 1 2333 0
	movq	-24(%rbp), %rax	# exp, tmp119
	movq	40(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	jmp	.L476	#
.L481:
	.loc 1 2336 0
	movq	-24(%rbp), %rax	# exp, tmp120
	movzbl	18(%rax), %eax	# *exp_3(D), D.20926
	andl	$4, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L487	#,
	.loc 1 2337 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L487:
	.loc 1 2338 0
	movq	-24(%rbp), %rax	# exp, tmp121
	movq	32(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	testl	%eax, %eax	# D.20925
	je	.L488	#,
	.loc 1 2339 0
	movl	$1, %eax	#, D.20925
	jmp	.L476	#
.L488:
	.loc 1 2341 0
	movq	-24(%rbp), %rax	# exp, tmp122
	movq	40(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movzbl	17(%rax), %eax	# *_25, D.20926
	andl	$2, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L489	#,
	.loc 1 2342 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L489:
	.loc 1 2343 0
	movq	-24(%rbp), %rax	# exp, tmp123
	movq	40(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	jmp	.L476	#
.L485:
	.loc 1 2349 0
	movq	-24(%rbp), %rax	# exp, tmp124
	movzbl	18(%rax), %eax	# *exp_3(D), D.20926
	andl	$4, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L490	#,
	.loc 1 2350 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L490:
.LBB64:
	.loc 1 2356 0
	movq	-24(%rbp), %rax	# exp, tmp125
	movq	32(%rax), %rax	# exp_3(D)->exp.operands, tmp126
	movq	%rax, -8(%rbp)	# tmp126, tem
	.loc 1 2358 0
	jmp	.L491	#
.L492:
	.loc 1 2359 0
	movq	-8(%rbp), %rax	# tem, tmp127
	movq	32(%rax), %rax	# tem_1->exp.operands, tmp128
	movq	%rax, -8(%rbp)	# tmp128, tem
.L491:
	.loc 1 2358 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp129
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20926
	cmpb	$114, %al	#, D.20926
	je	.L492	#,
	.loc 1 2358 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# tem, tmp130
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20926
	cmpb	$115, %al	#, D.20926
	je	.L492	#,
	.loc 1 2361 0 is_stmt 1
	movq	-8(%rbp), %rax	# tem, tmp131
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20926
	cmpb	$48, %al	#, D.20926
	je	.L493	#,
	.loc 1 2361 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tem, tmp132
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20926
	cmpb	$49, %al	#, D.20926
	je	.L493	#,
	.loc 1 2362 0 is_stmt 1
	movq	-8(%rbp), %rax	# tem, tmp133
	movzbl	16(%rax), %eax	# tem_1->common.code, D.20926
	cmpb	$53, %al	#, D.20926
	jne	.L494	#,
.L493:
	.loc 1 2363 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L494:
.LBE64:
	.loc 1 2365 0
	jmp	.L495	#
.L479:
	.loc 1 2370 0
	movq	-24(%rbp), %rax	# exp, tmp134
	movq	32(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	8(%rax), %rax	# _42->common.type, D.20927
	movzbl	16(%rax), %eax	# _43->common.code, D.20926
	cmpb	$15, %al	#, D.20926
	jne	.L478	#,
	.loc 1 2371 0
	movq	-24(%rbp), %rax	# exp, tmp135
	movq	32(%rax), %rax	# exp_3(D)->exp.operands, D.20927
	movq	%rax, %rdi	# D.20927,
	call	warn_if_unused_value	#
	jmp	.L476	#
.L478:
	.loc 1 2376 0
	movq	-24(%rbp), %rax	# exp, tmp136
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.20926
	movzbl	%al, %eax	# D.20926, D.20925
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20929
	cmpb	$100, %al	#, D.20929
	je	.L496	#,
	.loc 1 2377 0
	movq	-24(%rbp), %rax	# exp, tmp138
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.20926
	movzbl	%al, %eax	# D.20926, D.20925
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20929
	cmpb	$114, %al	#, D.20929
	jne	.L497	#,
.L496:
	.loc 1 2378 0
	movq	-24(%rbp), %rax	# exp, tmp140
	movzbl	17(%rax), %eax	# *exp_3(D), D.20926
	andl	$8, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L497	#,
	.loc 1 2379 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L497:
	.loc 1 2384 0
	movq	-24(%rbp), %rax	# exp, tmp141
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.20926
	movzbl	%al, %eax	# D.20926, D.20925
	cltq
	movzbl	tree_code_type(%rax), %eax	# tree_code_type, D.20929
	cmpb	$101, %al	#, D.20929
	jne	.L495	#,
	.loc 1 2385 0
	movq	-24(%rbp), %rax	# exp, tmp143
	movzbl	16(%rax), %eax	# exp_3(D)->common.code, D.20926
	movzbl	%al, %eax	# D.20926, D.20925
	cltq
	movl	tree_code_length(,%rax,4), %eax	# tree_code_length, D.20925
	testl	%eax, %eax	# D.20925
	jne	.L495	#,
	.loc 1 2386 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L495:
	.loc 1 2390 0
	movq	-24(%rbp), %rax	# exp, tmp145
	movzbl	17(%rax), %eax	# *exp_3(D), D.20926
	andl	$1, %eax	#, D.20926
	testb	%al, %al	# D.20926
	je	.L498	#,
	.loc 1 2391 0
	movl	$0, %eax	#, D.20925
	jmp	.L476	#
.L498:
	.loc 1 2393 0
	movq	cfun(%rip), %rax	# cfun, cfun.272
	movq	8(%rax), %rax	# cfun.272_66->stmt, D.20930
	movl	88(%rax), %ecx	# _67->x_emit_lineno, D.20925
	movq	cfun(%rip), %rax	# cfun, cfun.273
	movq	8(%rax), %rax	# cfun.273_69->stmt, D.20930
	movq	80(%rax), %rax	# _70->x_emit_filename, D.20931
	movl	$.LC25, %edx	#,
	movl	%ecx, %esi	# D.20925,
	movq	%rax, %rdi	# D.20931,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
	.loc 1 2395 0
	movl	$1, %eax	#, D.20925
.L476:
	.loc 1 2397 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	warn_if_unused_value, .-warn_if_unused_value
	.globl	clear_last_expr
	.type	clear_last_expr, @function
clear_last_expr:
.LFB38:
	.loc 1 2403 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2404 0
	movq	cfun(%rip), %rax	# cfun, cfun.274
	movq	8(%rax), %rax	# cfun.274_1->stmt, D.20933
	movq	$0, 56(%rax)	#, _2->x_last_expr_type
	.loc 1 2405 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	clear_last_expr, .-clear_last_expr
	.globl	expand_start_stmt_expr
	.type	expand_start_stmt_expr, @function
expand_start_stmt_expr:
.LFB39:
	.loc 1 2417 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# has_scope, has_scope
	.loc 1 2422 0
	movl	$120, %edi	#,
	call	make_node	#
	movq	%rax, -8(%rbp)	# tmp73, t
	.loc 1 2423 0
	call	do_pending_stack_adjust	#
	.loc 1 2424 0
	cmpl	$0, -20(%rbp)	#, has_scope
	je	.L501	#,
	.loc 1 2425 0
	movq	-8(%rbp), %rax	# t, tmp74
	movq	%rax, %rdi	# tmp74,
	call	start_sequence_for_rtl_expr	#
	jmp	.L502	#
.L501:
	.loc 1 2427 0
	call	start_sequence	#
.L502:
	.loc 1 2428 0
	movq	cfun(%rip), %rax	# cfun, cfun.275
	movq	16(%rax), %rax	# cfun.275_3->expr, D.20934
	movq	cfun(%rip), %rdx	# cfun, cfun.276
	movq	16(%rdx), %rdx	# cfun.276_5->expr, D.20934
	movl	4(%rdx), %edx	# _6->x_inhibit_defer_pop, D.20935
	addl	$1, %edx	#, D.20935
	movl	%edx, 4(%rax)	# D.20935, _4->x_inhibit_defer_pop
	.loc 1 2429 0
	movq	cfun(%rip), %rax	# cfun, cfun.277
	movq	8(%rax), %rax	# cfun.277_9->stmt, D.20936
	movl	72(%rax), %edx	# _10->x_expr_stmts_for_value, D.20935
	addl	$1, %edx	#, D.20935
	movl	%edx, 72(%rax)	# D.20935, _10->x_expr_stmts_for_value
	.loc 1 2430 0
	movq	cfun(%rip), %rax	# cfun, cfun.278
	movq	8(%rax), %rax	# cfun.278_13->stmt, D.20936
	movq	$0, 64(%rax)	#, _14->x_last_expr_value
	.loc 1 2431 0
	movq	-8(%rbp), %rax	# t, D.20937
	.loc 1 2432 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	expand_start_stmt_expr, .-expand_start_stmt_expr
	.globl	expand_end_stmt_expr
	.type	expand_end_stmt_expr, @function
expand_end_stmt_expr:
.LFB40:
	.loc 1 2449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# t, t
	.loc 1 2450 0
	movq	cfun(%rip), %rax	# cfun, cfun.279
	movq	16(%rax), %rax	# cfun.279_1->expr, D.20938
	movq	cfun(%rip), %rdx	# cfun, cfun.280
	movq	16(%rdx), %rdx	# cfun.280_3->expr, D.20938
	movl	4(%rdx), %edx	# _4->x_inhibit_defer_pop, D.20939
	subl	$1, %edx	#, D.20939
	movl	%edx, 4(%rax)	# D.20939, _2->x_inhibit_defer_pop
	.loc 1 2452 0
	movq	cfun(%rip), %rax	# cfun, cfun.281
	movq	8(%rax), %rax	# cfun.281_7->stmt, D.20940
	movq	64(%rax), %rax	# _8->x_last_expr_value, D.20941
	testq	%rax, %rax	# D.20941
	je	.L505	#,
	.loc 1 2452 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.282
	movq	8(%rax), %rax	# cfun.282_10->stmt, D.20940
	movq	56(%rax), %rax	# _11->x_last_expr_type, D.20942
	testq	%rax, %rax	# D.20942
	jne	.L506	#,
.L505:
	.loc 1 2454 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.283
	movq	8(%rax), %rax	# cfun.283_55->stmt, D.20940
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.20941
	movq	%rdx, 64(%rax)	# D.20941, _56->x_last_expr_value
	.loc 1 2455 0
	movq	cfun(%rip), %rax	# cfun, cfun.284
	movq	8(%rax), %rax	# cfun.284_58->stmt, D.20940
	movq	global_trees+216(%rip), %rdx	# global_trees, D.20942
	movq	%rdx, 56(%rax)	# D.20942, _59->x_last_expr_type
	jmp	.L507	#
.L506:
	.loc 1 2457 0
	movq	cfun(%rip), %rax	# cfun, cfun.285
	movq	8(%rax), %rax	# cfun.285_13->stmt, D.20940
	movq	64(%rax), %rax	# _14->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _15->code, D.20943
	cmpw	$61, %ax	#, D.20943
	je	.L507	#,
	.loc 1 2457 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.286
	movq	8(%rax), %rax	# cfun.286_17->stmt, D.20940
	movq	64(%rax), %rax	# _18->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _19->code, D.20943
	cmpw	$67, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.287
	movq	8(%rax), %rax	# cfun.287_21->stmt, D.20940
	movq	64(%rax), %rax	# _22->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _23->code, D.20943
	cmpw	$68, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.288
	movq	8(%rax), %rax	# cfun.288_25->stmt, D.20940
	movq	64(%rax), %rax	# _26->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _27->code, D.20943
	cmpw	$54, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.289
	movq	8(%rax), %rax	# cfun.289_29->stmt, D.20940
	movq	64(%rax), %rax	# _30->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _31->code, D.20943
	cmpw	$55, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.290
	movq	8(%rax), %rax	# cfun.290_33->stmt, D.20940
	movq	64(%rax), %rax	# _34->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _35->code, D.20943
	cmpw	$58, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.291
	movq	8(%rax), %rax	# cfun.291_37->stmt, D.20940
	movq	64(%rax), %rax	# _38->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _39->code, D.20943
	cmpw	$134, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.292
	movq	8(%rax), %rax	# cfun.292_41->stmt, D.20940
	movq	64(%rax), %rax	# _42->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _43->code, D.20943
	cmpw	$56, %ax	#, D.20943
	je	.L507	#,
	movq	cfun(%rip), %rax	# cfun, cfun.293
	movq	8(%rax), %rax	# cfun.293_45->stmt, D.20940
	movq	64(%rax), %rax	# _46->x_last_expr_value, D.20941
	movzwl	(%rax), %eax	# _47->code, D.20943
	cmpw	$140, %ax	#, D.20943
	je	.L507	#,
	.loc 1 2459 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.294
	movq	8(%rax), %rbx	# cfun.294_49->stmt, D.20940
	movq	cfun(%rip), %rax	# cfun, cfun.295
	movq	8(%rax), %rax	# cfun.295_51->stmt, D.20940
	movq	64(%rax), %rax	# _52->x_last_expr_value, D.20941
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.20941,
	call	protect_from_queue	#
	movq	%rax, 64(%rbx)	# D.20941, _50->x_last_expr_value
.L507:
	.loc 1 2461 0
	call	emit_queue	#
	.loc 1 2463 0
	movq	cfun(%rip), %rax	# cfun, cfun.296
	movq	8(%rax), %rax	# cfun.296_61->stmt, D.20940
	movq	56(%rax), %rdx	# _62->x_last_expr_type, D.20942
	movq	-24(%rbp), %rax	# t, tmp146
	movq	%rdx, 8(%rax)	# D.20942, t_64(D)->common.type
	.loc 1 2464 0
	movq	-24(%rbp), %rax	# t, tmp147
	leaq	40(%rax), %rdx	#, D.20944
	movq	cfun(%rip), %rax	# cfun, cfun.297
	movq	8(%rax), %rax	# cfun.297_66->stmt, D.20940
	movq	64(%rax), %rax	# _67->x_last_expr_value, D.20941
	movq	%rax, (%rdx)	# D.20941, MEM[(struct rtx_def * *)_65]
	.loc 1 2465 0
	movq	-24(%rbp), %rax	# t, tmp148
	leaq	32(%rax), %rbx	#, D.20944
	call	get_insns	#
	movq	%rax, (%rbx)	# D.20941, MEM[(struct rtx_def * *)_69]
	.loc 1 2467 0
	movq	cfun(%rip), %rbx	# cfun, cfun.298
	movq	cfun(%rip), %rax	# cfun, cfun.299
	movq	224(%rax), %rdx	# cfun.299_72->x_rtl_expr_chain, D.20942
	movq	-24(%rbp), %rax	# t, tmp149
	movq	%rax, %rsi	# tmp149,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, 224(%rbx)	# D.20942, cfun.298_71->x_rtl_expr_chain
	.loc 1 2469 0
	call	end_sequence	#
	.loc 1 2472 0
	movq	-24(%rbp), %rax	# t, tmp150
	movzbl	17(%rax), %edx	#, tmp153
	orl	$1, %edx	#, tmp154
	movb	%dl, 17(%rax)	# tmp154,
	.loc 1 2474 0
	movq	cfun(%rip), %rax	# cfun, cfun.300
	movq	8(%rax), %rax	# cfun.300_75->stmt, D.20940
	movq	64(%rax), %rax	# _76->x_last_expr_value, D.20941
	movq	%rax, %rdi	# D.20941,
	call	volatile_refs_p	#
	andl	$1, %eax	#, D.20946
	movl	%eax, %edx	# D.20946, D.20946
	movq	-24(%rbp), %rax	# t, tmp155
	andl	$1, %edx	#, tmp157
	leal	0(,%rdx,8), %ecx	#, tmp158
	movzbl	17(%rax), %edx	#, tmp159
	andl	$-9, %edx	#, tmp160
	orl	%ecx, %edx	# tmp158, tmp161
	movb	%dl, 17(%rax)	# tmp161,
	.loc 1 2476 0
	movq	cfun(%rip), %rax	# cfun, cfun.301
	movq	8(%rax), %rax	# cfun.301_81->stmt, D.20940
	movq	$0, 56(%rax)	#, _82->x_last_expr_type
	.loc 1 2477 0
	movq	cfun(%rip), %rax	# cfun, cfun.302
	movq	8(%rax), %rax	# cfun.302_83->stmt, D.20940
	movl	72(%rax), %edx	# _84->x_expr_stmts_for_value, D.20939
	subl	$1, %edx	#, D.20939
	movl	%edx, 72(%rax)	# D.20939, _84->x_expr_stmts_for_value
	.loc 1 2479 0
	movq	-24(%rbp), %rax	# t, D.20947
	.loc 1 2480 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	expand_end_stmt_expr, .-expand_end_stmt_expr
	.globl	expand_start_cond
	.type	expand_start_cond, @function
expand_start_cond:
.LFB41:
	.loc 1 2492 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# cond, cond
	movl	%esi, -60(%rbp)	# exitflag, exitflag
.LBB65:
	.loc 1 2493 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB66:
	movq	-40(%rbp), %rax	# __h, tmp112
	movq	%rax, -32(%rbp)	# tmp112, __o
	movl	$120, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp113
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.20948
	movq	%rax, %rdx	# D.20948, D.20949
	movq	-32(%rbp), %rax	# __o, tmp114
	movq	24(%rax), %rax	# __o_3->next_free, D.20948
	subq	%rax, %rdx	# D.20949, D.20949
	movl	-44(%rbp), %eax	# __len, tmp115
	cltq
	cmpq	%rax, %rdx	# D.20949, D.20949
	jge	.L510	#,
	.loc 1 2493 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp116
	movq	-32(%rbp), %rax	# __o, tmp117
	movl	%edx, %esi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	_obstack_newchunk	#
.L510:
	.loc 1 2493 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp118
	movq	24(%rax), %rdx	# __o_3->next_free, D.20948
	movl	-44(%rbp), %eax	# __len, tmp119
	cltq
	addq	%rax, %rdx	# D.20950, D.20948
	movq	-32(%rbp), %rax	# __o, tmp120
	movq	%rdx, 24(%rax)	# D.20948, __o_3->next_free
.LBE66:
.LBB67:
	movq	-40(%rbp), %rax	# __h, tmp121
	movq	%rax, -24(%rbp)	# tmp121, __o1
	movq	-24(%rbp), %rax	# __o1, tmp122
	movq	16(%rax), %rax	# __o1_14->object_base, tmp123
	movq	%rax, -16(%rbp)	# tmp123, value
	movq	-24(%rbp), %rax	# __o1, tmp124
	movq	24(%rax), %rax	# __o1_14->next_free, D.20948
	cmpq	-16(%rbp), %rax	# value, D.20948
	jne	.L511	#,
	.loc 1 2493 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp125
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp128
	orl	$2, %edx	#, tmp129
	movb	%dl, 80(%rax)	# tmp129, __o1_14->maybe_empty_object
.L511:
	.loc 1 2493 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp130
	movq	24(%rax), %rax	# __o1_14->next_free, D.20948
	movq	%rax, %rdx	# D.20948, D.20949
	movq	-24(%rbp), %rax	# __o1, tmp131
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.20951
	cltq
	addq	%rax, %rdx	# D.20949, D.20949
	movq	-24(%rbp), %rax	# __o1, tmp132
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.20951
	notl	%eax	# D.20951
	cltq
	andq	%rdx, %rax	# D.20949, D.20949
	movq	%rax, %rdx	# D.20949, D.20948
	movq	-24(%rbp), %rax	# __o1, tmp133
	movq	%rdx, 24(%rax)	# D.20948, __o1_14->next_free
	movq	-24(%rbp), %rax	# __o1, tmp134
	movq	24(%rax), %rax	# __o1_14->next_free, D.20948
	movq	%rax, %rdx	# D.20948, D.20949
	movq	-24(%rbp), %rax	# __o1, tmp135
	movq	8(%rax), %rax	# __o1_14->chunk, D.20952
	movq	%rdx, %rcx	# D.20949, D.20949
	subq	%rax, %rcx	# D.20949, D.20949
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.20948
	movq	%rax, %rdx	# D.20948, D.20949
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	8(%rax), %rax	# __o1_14->chunk, D.20952
	subq	%rax, %rdx	# D.20949, D.20949
	movq	%rdx, %rax	# D.20949, D.20949
	cmpq	%rax, %rcx	# D.20949, D.20949
	jle	.L512	#,
	.loc 1 2493 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.20948
	movq	-24(%rbp), %rax	# __o1, tmp139
	movq	%rdx, 24(%rax)	# D.20948, __o1_14->next_free
.L512:
	.loc 1 2493 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp140
	movq	24(%rax), %rdx	# __o1_14->next_free, D.20948
	movq	-24(%rbp), %rax	# __o1, tmp141
	movq	%rdx, 16(%rax)	# D.20948, __o1_14->object_base
	movq	-16(%rbp), %rax	# value, D.20953
.LBE67:
.LBE65:
	movq	%rax, -8(%rbp)	# thiscond.303, thiscond
	.loc 1 2497 0 is_stmt 1 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.304
	movq	8(%rax), %rax	# cfun.304_42->stmt, D.20954
	movq	16(%rax), %rdx	# _43->x_cond_stack, D.20955
	movq	-8(%rbp), %rax	# thiscond, tmp142
	movq	%rdx, 8(%rax)	# D.20955, thiscond_41->next
	.loc 1 2498 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.305
	movq	8(%rax), %rax	# cfun.305_45->stmt, D.20954
	movq	40(%rax), %rdx	# _46->x_nesting_stack, D.20955
	movq	-8(%rbp), %rax	# thiscond, tmp143
	movq	%rdx, (%rax)	# D.20955, thiscond_41->all
	.loc 1 2499 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.306
	movq	8(%rax), %rax	# cfun.306_48->stmt, D.20954
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.20951
	addl	$1, %edx	#, D.20951
	movl	%edx, 48(%rax)	# D.20951, _49->x_nesting_depth
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.20951
	movq	-8(%rbp), %rax	# thiscond, tmp144
	movl	%edx, 16(%rax)	# D.20951, thiscond_41->depth
	.loc 1 2500 0 discriminator 2
	call	gen_label_rtx	#
	movq	-8(%rbp), %rdx	# thiscond, tmp145
	movq	%rax, 40(%rdx)	# D.20956, thiscond_41->data.cond.next_label
	.loc 1 2504 0 discriminator 2
	cmpl	$0, -60(%rbp)	#, exitflag
	je	.L513	#,
	.loc 1 2504 0 is_stmt 0 discriminator 1
	call	gen_label_rtx	#
	jmp	.L514	#
.L513:
	.loc 1 2504 0 discriminator 2
	movl	$0, %eax	#, iftmp.307
.L514:
	.loc 1 2504 0 discriminator 3
	movq	-8(%rbp), %rdx	# thiscond, tmp146
	movq	%rax, 24(%rdx)	# iftmp.307, thiscond_41->exit_label
	.loc 1 2505 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# thiscond, tmp147
	movq	24(%rax), %rdx	# thiscond_41->exit_label, D.20956
	movq	-8(%rbp), %rax	# thiscond, tmp148
	movq	%rdx, 32(%rax)	# D.20956, thiscond_41->data.cond.endif_label
	.loc 1 2506 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.308
	movq	8(%rax), %rax	# cfun.308_58->stmt, D.20954
	movq	-8(%rbp), %rdx	# thiscond, tmp149
	movq	%rdx, 16(%rax)	# tmp149, _59->x_cond_stack
	.loc 1 2507 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.309
	movq	8(%rax), %rax	# cfun.309_60->stmt, D.20954
	movq	-8(%rbp), %rdx	# thiscond, tmp150
	movq	%rdx, 40(%rax)	# tmp150, _61->x_nesting_stack
	.loc 1 2509 0 discriminator 3
	movq	-8(%rbp), %rax	# thiscond, tmp151
	movq	40(%rax), %rcx	# thiscond_41->data.cond.next_label, D.20956
	movq	-56(%rbp), %rax	# cond, tmp152
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20956,
	movq	%rax, %rdi	# tmp152,
	call	do_jump	#
	.loc 1 2510 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	expand_start_cond, .-expand_start_cond
	.globl	expand_start_elseif
	.type	expand_start_elseif, @function
expand_start_elseif:
.LFB42:
	.loc 1 2518 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# cond, cond
	.loc 1 2519 0
	movq	cfun(%rip), %rax	# cfun, cfun.310
	movq	8(%rax), %rax	# cfun.310_1->stmt, D.20957
	movq	16(%rax), %rax	# _2->x_cond_stack, D.20958
	movq	32(%rax), %rax	# _3->data.cond.endif_label, D.20959
	testq	%rax, %rax	# D.20959
	jne	.L516	#,
	.loc 1 2520 0
	movq	cfun(%rip), %rax	# cfun, cfun.311
	movq	8(%rax), %rax	# cfun.311_5->stmt, D.20957
	movq	16(%rax), %rbx	# _6->x_cond_stack, D.20958
	call	gen_label_rtx	#
	movq	%rax, 32(%rbx)	# D.20959, _7->data.cond.endif_label
.L516:
	.loc 1 2521 0
	movq	cfun(%rip), %rax	# cfun, cfun.312
	movq	8(%rax), %rax	# cfun.312_9->stmt, D.20957
	movq	16(%rax), %rax	# _10->x_cond_stack, D.20958
	movq	32(%rax), %rax	# _11->data.cond.endif_label, D.20959
	movq	%rax, %rdi	# D.20959,
	call	emit_jump	#
	.loc 1 2522 0
	movq	cfun(%rip), %rax	# cfun, cfun.313
	movq	8(%rax), %rax	# cfun.313_13->stmt, D.20957
	movq	16(%rax), %rax	# _14->x_cond_stack, D.20958
	movq	40(%rax), %rax	# _15->data.cond.next_label, D.20959
	movq	%rax, %rdi	# D.20959,
	call	emit_label	#
	.loc 1 2523 0
	movq	cfun(%rip), %rax	# cfun, cfun.314
	movq	8(%rax), %rax	# cfun.314_17->stmt, D.20957
	movq	16(%rax), %rbx	# _18->x_cond_stack, D.20958
	call	gen_label_rtx	#
	movq	%rax, 40(%rbx)	# D.20959, _19->data.cond.next_label
	.loc 1 2524 0
	movq	cfun(%rip), %rax	# cfun, cfun.315
	movq	8(%rax), %rax	# cfun.315_21->stmt, D.20957
	movq	16(%rax), %rax	# _22->x_cond_stack, D.20958
	movq	40(%rax), %rcx	# _23->data.cond.next_label, D.20959
	movq	-24(%rbp), %rax	# cond, tmp83
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20959,
	movq	%rax, %rdi	# tmp83,
	call	do_jump	#
	.loc 1 2525 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	expand_start_elseif, .-expand_start_elseif
	.globl	expand_start_else
	.type	expand_start_else, @function
expand_start_else:
.LFB43:
	.loc 1 2532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 2533 0
	movq	cfun(%rip), %rax	# cfun, cfun.316
	movq	8(%rax), %rax	# cfun.316_1->stmt, D.20960
	movq	16(%rax), %rax	# _2->x_cond_stack, D.20961
	movq	32(%rax), %rax	# _3->data.cond.endif_label, D.20962
	testq	%rax, %rax	# D.20962
	jne	.L518	#,
	.loc 1 2534 0
	movq	cfun(%rip), %rax	# cfun, cfun.317
	movq	8(%rax), %rax	# cfun.317_5->stmt, D.20960
	movq	16(%rax), %rbx	# _6->x_cond_stack, D.20961
	call	gen_label_rtx	#
	movq	%rax, 32(%rbx)	# D.20962, _7->data.cond.endif_label
.L518:
	.loc 1 2536 0
	movq	cfun(%rip), %rax	# cfun, cfun.318
	movq	8(%rax), %rax	# cfun.318_9->stmt, D.20960
	movq	16(%rax), %rax	# _10->x_cond_stack, D.20961
	movq	32(%rax), %rax	# _11->data.cond.endif_label, D.20962
	movq	%rax, %rdi	# D.20962,
	call	emit_jump	#
	.loc 1 2537 0
	movq	cfun(%rip), %rax	# cfun, cfun.319
	movq	8(%rax), %rax	# cfun.319_13->stmt, D.20960
	movq	16(%rax), %rax	# _14->x_cond_stack, D.20961
	movq	40(%rax), %rax	# _15->data.cond.next_label, D.20962
	movq	%rax, %rdi	# D.20962,
	call	emit_label	#
	.loc 1 2538 0
	movq	cfun(%rip), %rax	# cfun, cfun.320
	movq	8(%rax), %rax	# cfun.320_17->stmt, D.20960
	movq	16(%rax), %rax	# _18->x_cond_stack, D.20961
	movq	$0, 40(%rax)	#, _19->data.cond.next_label
	.loc 1 2539 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	expand_start_else, .-expand_start_else
	.globl	expand_elseif
	.type	expand_elseif, @function
expand_elseif:
.LFB44:
	.loc 1 2547 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# cond, cond
	.loc 1 2548 0
	movq	cfun(%rip), %rax	# cfun, cfun.321
	movq	8(%rax), %rax	# cfun.321_1->stmt, D.20963
	movq	16(%rax), %rbx	# _2->x_cond_stack, D.20964
	call	gen_label_rtx	#
	movq	%rax, 40(%rbx)	# D.20965, _3->data.cond.next_label
	.loc 1 2549 0
	movq	cfun(%rip), %rax	# cfun, cfun.322
	movq	8(%rax), %rax	# cfun.322_5->stmt, D.20963
	movq	16(%rax), %rax	# _6->x_cond_stack, D.20964
	movq	40(%rax), %rcx	# _7->data.cond.next_label, D.20965
	movq	-24(%rbp), %rax	# cond, tmp67
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.20965,
	movq	%rax, %rdi	# tmp67,
	call	do_jump	#
	.loc 1 2550 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	expand_elseif, .-expand_elseif
	.globl	expand_end_cond
	.type	expand_end_cond, @function
expand_end_cond:
.LFB45:
	.loc 1 2557 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 2558 0
	movq	cfun(%rip), %rax	# cfun, cfun.323
	movq	8(%rax), %rax	# cfun.323_1->stmt, D.20966
	movq	16(%rax), %rax	# _2->x_cond_stack, tmp129
	movq	%rax, -40(%rbp)	# tmp129, thiscond
	.loc 1 2560 0
	call	do_pending_stack_adjust	#
	.loc 1 2561 0
	movq	-40(%rbp), %rax	# thiscond, tmp130
	movq	40(%rax), %rax	# thiscond_3->data.cond.next_label, D.20967
	testq	%rax, %rax	# D.20967
	je	.L521	#,
	.loc 1 2562 0
	movq	-40(%rbp), %rax	# thiscond, tmp131
	movq	40(%rax), %rax	# thiscond_3->data.cond.next_label, D.20967
	movq	%rax, %rdi	# D.20967,
	call	emit_label	#
.L521:
	.loc 1 2563 0
	movq	-40(%rbp), %rax	# thiscond, tmp132
	movq	32(%rax), %rax	# thiscond_3->data.cond.endif_label, D.20967
	testq	%rax, %rax	# D.20967
	je	.L522	#,
	.loc 1 2564 0
	movq	-40(%rbp), %rax	# thiscond, tmp133
	movq	32(%rax), %rax	# thiscond_3->data.cond.endif_label, D.20967
	movq	%rax, %rdi	# D.20967,
	call	emit_label	#
.L522:
.LBB68:
	.loc 1 2566 0
	movq	cfun(%rip), %rax	# cfun, cfun.324
	movq	8(%rax), %rax	# cfun.324_8->stmt, D.20966
	movq	16(%rax), %rax	# _9->x_cond_stack, tmp134
	movq	%rax, -32(%rbp)	# tmp134, target
.L530:
	.loc 1 2566 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.325
	movq	8(%rax), %rax	# cfun.325_11->stmt, D.20966
	movq	40(%rax), %rax	# _12->x_nesting_stack, tmp135
	movq	%rax, -24(%rbp)	# tmp135, this
	movq	cfun(%rip), %rax	# cfun, cfun.326
	movq	8(%rax), %rax	# cfun.326_14->stmt, D.20966
	movq	24(%rax), %rax	# _15->x_loop_stack, D.20968
	cmpq	-24(%rbp), %rax	# this, D.20968
	jne	.L523	#,
	movq	cfun(%rip), %rax	# cfun, cfun.327
	movq	8(%rax), %rax	# cfun.327_17->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.328
	movq	8(%rdx), %rdx	# cfun.328_19->stmt, D.20966
	movq	24(%rdx), %rdx	# _20->x_loop_stack, D.20968
	movq	8(%rdx), %rdx	# _21->next, D.20968
	movq	%rdx, 24(%rax)	# D.20968, _18->x_loop_stack
.L523:
	.loc 1 2566 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.329
	movq	8(%rax), %rax	# cfun.329_23->stmt, D.20966
	movq	16(%rax), %rax	# _24->x_cond_stack, D.20968
	cmpq	-24(%rbp), %rax	# this, D.20968
	jne	.L524	#,
	.loc 1 2566 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.330
	movq	8(%rax), %rax	# cfun.330_26->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.331
	movq	8(%rdx), %rdx	# cfun.331_28->stmt, D.20966
	movq	16(%rdx), %rdx	# _29->x_cond_stack, D.20968
	movq	8(%rdx), %rdx	# _30->next, D.20968
	movq	%rdx, 16(%rax)	# D.20968, _27->x_cond_stack
.L524:
	.loc 1 2566 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.332
	movq	8(%rax), %rax	# cfun.332_32->stmt, D.20966
	movq	(%rax), %rax	# _33->x_block_stack, D.20968
	cmpq	-24(%rbp), %rax	# this, D.20968
	jne	.L525	#,
	.loc 1 2566 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.333
	movq	8(%rax), %rax	# cfun.333_35->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.334
	movq	8(%rdx), %rdx	# cfun.334_37->stmt, D.20966
	movq	(%rdx), %rdx	# _38->x_block_stack, D.20968
	movq	8(%rdx), %rdx	# _39->next, D.20968
	movq	%rdx, (%rax)	# D.20968, _36->x_block_stack
.L525:
	.loc 1 2566 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.335
	movq	8(%rax), %rax	# cfun.335_41->stmt, D.20966
	movq	8(%rax), %rax	# _42->x_stack_block_stack, D.20968
	cmpq	-24(%rbp), %rax	# this, D.20968
	jne	.L526	#,
	.loc 1 2566 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.336
	movq	8(%rax), %rax	# cfun.336_44->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.337
	movq	8(%rdx), %rdx	# cfun.337_46->stmt, D.20966
	movq	8(%rdx), %rdx	# _47->x_stack_block_stack, D.20968
	movq	8(%rdx), %rdx	# _48->next, D.20968
	movq	%rdx, 8(%rax)	# D.20968, _45->x_stack_block_stack
.L526:
	.loc 1 2566 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.338
	movq	8(%rax), %rax	# cfun.338_50->stmt, D.20966
	movq	32(%rax), %rax	# _51->x_case_stack, D.20968
	cmpq	-24(%rbp), %rax	# this, D.20968
	jne	.L527	#,
	.loc 1 2566 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.339
	movq	8(%rax), %rax	# cfun.339_53->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.340
	movq	8(%rdx), %rdx	# cfun.340_55->stmt, D.20966
	movq	32(%rdx), %rdx	# _56->x_case_stack, D.20968
	movq	8(%rdx), %rdx	# _57->next, D.20968
	movq	%rdx, 32(%rax)	# D.20968, _54->x_case_stack
.L527:
	.loc 1 2566 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.341
	movq	8(%rax), %rax	# cfun.341_59->stmt, D.20966
	movq	cfun(%rip), %rdx	# cfun, cfun.342
	movq	8(%rdx), %rdx	# cfun.342_61->stmt, D.20966
	movq	40(%rdx), %rdx	# _62->x_nesting_stack, D.20968
	movl	16(%rdx), %edx	# _63->depth, D.20969
	subl	$1, %edx	#, D.20969
	movl	%edx, 48(%rax)	# D.20969, _60->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.343
	movq	8(%rax), %rax	# cfun.343_66->stmt, D.20966
	movq	-24(%rbp), %rdx	# this, tmp136
	movq	(%rdx), %rdx	# this_13->all, D.20968
	movq	%rdx, 40(%rax)	# D.20968, _67->x_nesting_stack
.LBB69:
	movq	$stmt_obstack, -16(%rbp)	#, __o
	movq	-24(%rbp), %rax	# this, tmp137
	movq	%rax, -8(%rbp)	# tmp137, __obj
	movq	-16(%rbp), %rax	# __o, tmp138
	movq	8(%rax), %rax	# __o_69->chunk, D.20970
	cmpq	-8(%rbp), %rax	# __obj, D.20970
	jae	.L528	#,
	.loc 1 2566 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp139
	movq	32(%rax), %rax	# __o_69->chunk_limit, D.20971
	cmpq	-8(%rbp), %rax	# __obj, D.20971
	jbe	.L528	#,
	movq	-16(%rbp), %rax	# __o, tmp140
	movq	-8(%rbp), %rdx	# __obj, tmp141
	movq	%rdx, 16(%rax)	# tmp141, __o_69->object_base
	movq	-16(%rbp), %rax	# __o, tmp142
	movq	16(%rax), %rdx	# __o_69->object_base, D.20971
	movq	-16(%rbp), %rax	# __o, tmp143
	movq	%rdx, 24(%rax)	# D.20971, __o_69->next_free
	jmp	.L529	#
.L528:
	.loc 1 2566 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp144
	movq	-16(%rbp), %rax	# __o, tmp145
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	obstack_free	#
.L529:
.LBE69:
	.loc 1 2566 0 discriminator 1
	movq	-24(%rbp), %rax	# this, tmp146
	cmpq	-32(%rbp), %rax	# target, tmp146
	jne	.L530	#,
.LBE68:
	.loc 1 2567 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.344
	movq	8(%rax), %rax	# cfun.344_74->stmt, D.20966
	movq	$0, 56(%rax)	#, _75->x_last_expr_type
	.loc 1 2568 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	expand_end_cond, .-expand_end_cond
	.globl	expand_start_loop
	.type	expand_start_loop, @function
expand_start_loop:
.LFB46:
	.loc 1 2580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# exit_flag, exit_flag
.LBB70:
	.loc 1 2581 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB71:
	movq	-40(%rbp), %rax	# __h, tmp115
	movq	%rax, -32(%rbp)	# tmp115, __o
	movl	$120, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp116
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.20972
	movq	%rax, %rdx	# D.20972, D.20973
	movq	-32(%rbp), %rax	# __o, tmp117
	movq	24(%rax), %rax	# __o_3->next_free, D.20972
	subq	%rax, %rdx	# D.20973, D.20973
	movl	-44(%rbp), %eax	# __len, tmp118
	cltq
	cmpq	%rax, %rdx	# D.20973, D.20973
	jge	.L532	#,
	.loc 1 2581 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp119
	movq	-32(%rbp), %rax	# __o, tmp120
	movl	%edx, %esi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	_obstack_newchunk	#
.L532:
	.loc 1 2581 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp121
	movq	24(%rax), %rdx	# __o_3->next_free, D.20972
	movl	-44(%rbp), %eax	# __len, tmp122
	cltq
	addq	%rax, %rdx	# D.20974, D.20972
	movq	-32(%rbp), %rax	# __o, tmp123
	movq	%rdx, 24(%rax)	# D.20972, __o_3->next_free
.LBE71:
.LBB72:
	movq	-40(%rbp), %rax	# __h, tmp124
	movq	%rax, -24(%rbp)	# tmp124, __o1
	movq	-24(%rbp), %rax	# __o1, tmp125
	movq	16(%rax), %rax	# __o1_14->object_base, tmp126
	movq	%rax, -16(%rbp)	# tmp126, value
	movq	-24(%rbp), %rax	# __o1, tmp127
	movq	24(%rax), %rax	# __o1_14->next_free, D.20972
	cmpq	-16(%rbp), %rax	# value, D.20972
	jne	.L533	#,
	.loc 1 2581 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp128
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp131
	orl	$2, %edx	#, tmp132
	movb	%dl, 80(%rax)	# tmp132, __o1_14->maybe_empty_object
.L533:
	.loc 1 2581 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp133
	movq	24(%rax), %rax	# __o1_14->next_free, D.20972
	movq	%rax, %rdx	# D.20972, D.20973
	movq	-24(%rbp), %rax	# __o1, tmp134
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.20975
	cltq
	addq	%rax, %rdx	# D.20973, D.20973
	movq	-24(%rbp), %rax	# __o1, tmp135
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.20975
	notl	%eax	# D.20975
	cltq
	andq	%rdx, %rax	# D.20973, D.20973
	movq	%rax, %rdx	# D.20973, D.20972
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	%rdx, 24(%rax)	# D.20972, __o1_14->next_free
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	24(%rax), %rax	# __o1_14->next_free, D.20972
	movq	%rax, %rdx	# D.20972, D.20973
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	8(%rax), %rax	# __o1_14->chunk, D.20976
	movq	%rdx, %rcx	# D.20973, D.20973
	subq	%rax, %rcx	# D.20973, D.20973
	movq	-24(%rbp), %rax	# __o1, tmp139
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.20972
	movq	%rax, %rdx	# D.20972, D.20973
	movq	-24(%rbp), %rax	# __o1, tmp140
	movq	8(%rax), %rax	# __o1_14->chunk, D.20976
	subq	%rax, %rdx	# D.20973, D.20973
	movq	%rdx, %rax	# D.20973, D.20973
	cmpq	%rax, %rcx	# D.20973, D.20973
	jle	.L534	#,
	.loc 1 2581 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp141
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.20972
	movq	-24(%rbp), %rax	# __o1, tmp142
	movq	%rdx, 24(%rax)	# D.20972, __o1_14->next_free
.L534:
	.loc 1 2581 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp143
	movq	24(%rax), %rdx	# __o1_14->next_free, D.20972
	movq	-24(%rbp), %rax	# __o1, tmp144
	movq	%rdx, 16(%rax)	# D.20972, __o1_14->object_base
	movq	-16(%rbp), %rax	# value, D.20977
.LBE72:
.LBE70:
	movq	%rax, -8(%rbp)	# thisloop.345, thisloop
	.loc 1 2585 0 is_stmt 1 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.346
	movq	8(%rax), %rax	# cfun.346_42->stmt, D.20978
	movq	24(%rax), %rdx	# _43->x_loop_stack, D.20979
	movq	-8(%rbp), %rax	# thisloop, tmp145
	movq	%rdx, 8(%rax)	# D.20979, thisloop_41->next
	.loc 1 2586 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.347
	movq	8(%rax), %rax	# cfun.347_45->stmt, D.20978
	movq	40(%rax), %rdx	# _46->x_nesting_stack, D.20979
	movq	-8(%rbp), %rax	# thisloop, tmp146
	movq	%rdx, (%rax)	# D.20979, thisloop_41->all
	.loc 1 2587 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.348
	movq	8(%rax), %rax	# cfun.348_48->stmt, D.20978
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.20975
	addl	$1, %edx	#, D.20975
	movl	%edx, 48(%rax)	# D.20975, _49->x_nesting_depth
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.20975
	movq	-8(%rbp), %rax	# thisloop, tmp147
	movl	%edx, 16(%rax)	# D.20975, thisloop_41->depth
	.loc 1 2588 0 discriminator 2
	call	gen_label_rtx	#
	movq	-8(%rbp), %rdx	# thisloop, tmp148
	movq	%rax, 32(%rdx)	# D.20980, thisloop_41->data.loop.start_label
	.loc 1 2589 0 discriminator 2
	call	gen_label_rtx	#
	movq	-8(%rbp), %rdx	# thisloop, tmp149
	movq	%rax, 40(%rdx)	# D.20980, thisloop_41->data.loop.end_label
	.loc 1 2590 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, tmp150
	movq	$0, 48(%rax)	#, thisloop_41->data.loop.alt_end_label
	.loc 1 2591 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, tmp151
	movq	32(%rax), %rdx	# thisloop_41->data.loop.start_label, D.20980
	movq	-8(%rbp), %rax	# thisloop, tmp152
	movq	%rdx, 56(%rax)	# D.20980, thisloop_41->data.loop.continue_label
	.loc 1 2592 0 discriminator 2
	cmpl	$0, -52(%rbp)	#, exit_flag
	je	.L535	#,
	.loc 1 2592 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# thisloop, tmp153
	movq	40(%rax), %rax	# thisloop_41->data.loop.end_label, iftmp.349
	jmp	.L536	#
.L535:
	.loc 1 2592 0 discriminator 2
	movl	$0, %eax	#, iftmp.349
.L536:
	.loc 1 2592 0 discriminator 3
	movq	-8(%rbp), %rdx	# thisloop, tmp154
	movq	%rax, 24(%rdx)	# iftmp.349, thisloop_41->exit_label
	.loc 1 2593 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.350
	movq	8(%rax), %rax	# cfun.350_59->stmt, D.20978
	movq	-8(%rbp), %rdx	# thisloop, tmp155
	movq	%rdx, 24(%rax)	# tmp155, _60->x_loop_stack
	.loc 1 2594 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.351
	movq	8(%rax), %rax	# cfun.351_61->stmt, D.20978
	movq	-8(%rbp), %rdx	# thisloop, tmp156
	movq	%rdx, 40(%rax)	# tmp156, _62->x_nesting_stack
	.loc 1 2596 0 discriminator 3
	call	do_pending_stack_adjust	#
	.loc 1 2597 0 discriminator 3
	call	emit_queue	#
	.loc 1 2598 0 discriminator 3
	movl	$-96, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 2599 0 discriminator 3
	movq	-8(%rbp), %rax	# thisloop, tmp157
	movq	32(%rax), %rax	# thisloop_41->data.loop.start_label, D.20980
	movq	%rax, %rdi	# D.20980,
	call	emit_label	#
	.loc 1 2601 0 discriminator 3
	movq	-8(%rbp), %rax	# thisloop, D.20979
	.loc 1 2602 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	expand_start_loop, .-expand_start_loop
	.globl	expand_start_loop_continue_elsewhere
	.type	expand_start_loop_continue_elsewhere, @function
expand_start_loop_continue_elsewhere:
.LFB47:
	.loc 1 2610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# exit_flag, exit_flag
	.loc 1 2611 0
	movl	-36(%rbp), %eax	# exit_flag, tmp65
	movl	%eax, %edi	# tmp65,
	call	expand_start_loop	#
	movq	%rax, -24(%rbp)	# tmp66, thisloop
	.loc 1 2612 0
	movq	cfun(%rip), %rax	# cfun, cfun.352
	movq	8(%rax), %rax	# cfun.352_3->stmt, D.20981
	movq	24(%rax), %rbx	# _4->x_loop_stack, D.20982
	call	gen_label_rtx	#
	movq	%rax, 56(%rbx)	# D.20983, _5->data.loop.continue_label
	.loc 1 2613 0
	movq	-24(%rbp), %rax	# thisloop, D.20982
	.loc 1 2614 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	expand_start_loop_continue_elsewhere, .-expand_start_loop_continue_elsewhere
	.globl	expand_start_null_loop
	.type	expand_start_null_loop, @function
expand_start_null_loop:
.LFB48:
	.loc 1 2621 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
.LBB73:
	.loc 1 2622 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB74:
	movq	-40(%rbp), %rax	# __h, tmp114
	movq	%rax, -32(%rbp)	# tmp114, __o
	movl	$120, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp115
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.20984
	movq	%rax, %rdx	# D.20984, D.20985
	movq	-32(%rbp), %rax	# __o, tmp116
	movq	24(%rax), %rax	# __o_2->next_free, D.20984
	subq	%rax, %rdx	# D.20985, D.20985
	movl	-44(%rbp), %eax	# __len, tmp117
	cltq
	cmpq	%rax, %rdx	# D.20985, D.20985
	jge	.L541	#,
	.loc 1 2622 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp118
	movq	-32(%rbp), %rax	# __o, tmp119
	movl	%edx, %esi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	_obstack_newchunk	#
.L541:
	.loc 1 2622 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp120
	movq	24(%rax), %rdx	# __o_2->next_free, D.20984
	movl	-44(%rbp), %eax	# __len, tmp121
	cltq
	addq	%rax, %rdx	# D.20986, D.20984
	movq	-32(%rbp), %rax	# __o, tmp122
	movq	%rdx, 24(%rax)	# D.20984, __o_2->next_free
.LBE74:
.LBB75:
	movq	-40(%rbp), %rax	# __h, tmp123
	movq	%rax, -24(%rbp)	# tmp123, __o1
	movq	-24(%rbp), %rax	# __o1, tmp124
	movq	16(%rax), %rax	# __o1_13->object_base, tmp125
	movq	%rax, -16(%rbp)	# tmp125, value
	movq	-24(%rbp), %rax	# __o1, tmp126
	movq	24(%rax), %rax	# __o1_13->next_free, D.20984
	cmpq	-16(%rbp), %rax	# value, D.20984
	jne	.L542	#,
	.loc 1 2622 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp127
	movzbl	80(%rax), %edx	# __o1_13->maybe_empty_object, tmp130
	orl	$2, %edx	#, tmp131
	movb	%dl, 80(%rax)	# tmp131, __o1_13->maybe_empty_object
.L542:
	.loc 1 2622 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp132
	movq	24(%rax), %rax	# __o1_13->next_free, D.20984
	movq	%rax, %rdx	# D.20984, D.20985
	movq	-24(%rbp), %rax	# __o1, tmp133
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.20987
	cltq
	addq	%rax, %rdx	# D.20985, D.20985
	movq	-24(%rbp), %rax	# __o1, tmp134
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.20987
	notl	%eax	# D.20987
	cltq
	andq	%rdx, %rax	# D.20985, D.20985
	movq	%rax, %rdx	# D.20985, D.20984
	movq	-24(%rbp), %rax	# __o1, tmp135
	movq	%rdx, 24(%rax)	# D.20984, __o1_13->next_free
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	24(%rax), %rax	# __o1_13->next_free, D.20984
	movq	%rax, %rdx	# D.20984, D.20985
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	8(%rax), %rax	# __o1_13->chunk, D.20988
	movq	%rdx, %rcx	# D.20985, D.20985
	subq	%rax, %rcx	# D.20985, D.20985
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	32(%rax), %rax	# __o1_13->chunk_limit, D.20984
	movq	%rax, %rdx	# D.20984, D.20985
	movq	-24(%rbp), %rax	# __o1, tmp139
	movq	8(%rax), %rax	# __o1_13->chunk, D.20988
	subq	%rax, %rdx	# D.20985, D.20985
	movq	%rdx, %rax	# D.20985, D.20985
	cmpq	%rax, %rcx	# D.20985, D.20985
	jle	.L543	#,
	.loc 1 2622 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp140
	movq	32(%rax), %rdx	# __o1_13->chunk_limit, D.20984
	movq	-24(%rbp), %rax	# __o1, tmp141
	movq	%rdx, 24(%rax)	# D.20984, __o1_13->next_free
.L543:
	.loc 1 2622 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp142
	movq	24(%rax), %rdx	# __o1_13->next_free, D.20984
	movq	-24(%rbp), %rax	# __o1, tmp143
	movq	%rdx, 16(%rax)	# D.20984, __o1_13->object_base
	movq	-16(%rbp), %rax	# value, D.20989
.LBE75:
.LBE73:
	movq	%rax, -8(%rbp)	# thisloop.353, thisloop
	.loc 1 2626 0 is_stmt 1 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.354
	movq	8(%rax), %rax	# cfun.354_41->stmt, D.20990
	movq	24(%rax), %rdx	# _42->x_loop_stack, D.20991
	movq	-8(%rbp), %rax	# thisloop, tmp144
	movq	%rdx, 8(%rax)	# D.20991, thisloop_40->next
	.loc 1 2627 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.355
	movq	8(%rax), %rax	# cfun.355_44->stmt, D.20990
	movq	40(%rax), %rdx	# _45->x_nesting_stack, D.20991
	movq	-8(%rbp), %rax	# thisloop, tmp145
	movq	%rdx, (%rax)	# D.20991, thisloop_40->all
	.loc 1 2628 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.356
	movq	8(%rax), %rax	# cfun.356_47->stmt, D.20990
	movl	48(%rax), %edx	# _48->x_nesting_depth, D.20987
	addl	$1, %edx	#, D.20987
	movl	%edx, 48(%rax)	# D.20987, _48->x_nesting_depth
	movl	48(%rax), %edx	# _48->x_nesting_depth, D.20987
	movq	-8(%rbp), %rax	# thisloop, tmp146
	movl	%edx, 16(%rax)	# D.20987, thisloop_40->depth
	.loc 1 2629 0 discriminator 2
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	-8(%rbp), %rdx	# thisloop, tmp147
	movq	%rax, 32(%rdx)	# D.20992, thisloop_40->data.loop.start_label
	.loc 1 2630 0 discriminator 2
	call	gen_label_rtx	#
	movq	-8(%rbp), %rdx	# thisloop, tmp148
	movq	%rax, 40(%rdx)	# D.20992, thisloop_40->data.loop.end_label
	.loc 1 2631 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, tmp149
	movq	$0, 48(%rax)	#, thisloop_40->data.loop.alt_end_label
	.loc 1 2632 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, tmp150
	movq	40(%rax), %rdx	# thisloop_40->data.loop.end_label, D.20992
	movq	-8(%rbp), %rax	# thisloop, tmp151
	movq	%rdx, 56(%rax)	# D.20992, thisloop_40->data.loop.continue_label
	.loc 1 2633 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, tmp152
	movq	40(%rax), %rdx	# thisloop_40->data.loop.end_label, D.20992
	movq	-8(%rbp), %rax	# thisloop, tmp153
	movq	%rdx, 24(%rax)	# D.20992, thisloop_40->exit_label
	.loc 1 2634 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.357
	movq	8(%rax), %rax	# cfun.357_56->stmt, D.20990
	movq	-8(%rbp), %rdx	# thisloop, tmp154
	movq	%rdx, 24(%rax)	# tmp154, _57->x_loop_stack
	.loc 1 2635 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.358
	movq	8(%rax), %rax	# cfun.358_58->stmt, D.20990
	movq	-8(%rbp), %rdx	# thisloop, tmp155
	movq	%rdx, 40(%rax)	# tmp155, _59->x_nesting_stack
	.loc 1 2637 0 discriminator 2
	movq	-8(%rbp), %rax	# thisloop, D.20991
	.loc 1 2638 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	expand_start_null_loop, .-expand_start_null_loop
	.globl	expand_loop_continue_here
	.type	expand_loop_continue_here, @function
expand_loop_continue_here:
.LFB49:
	.loc 1 2647 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2648 0
	call	do_pending_stack_adjust	#
	.loc 1 2649 0
	movl	$-94, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 2650 0
	movq	cfun(%rip), %rax	# cfun, cfun.359
	movq	8(%rax), %rax	# cfun.359_1->stmt, D.20993
	movq	24(%rax), %rax	# _2->x_loop_stack, D.20994
	movq	56(%rax), %rax	# _3->data.loop.continue_label, D.20995
	movq	%rax, %rdi	# D.20995,
	call	emit_label	#
	.loc 1 2651 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	expand_loop_continue_here, .-expand_loop_continue_here
	.globl	expand_end_loop
	.type	expand_end_loop, @function
expand_end_loop:
.LFB50:
	.loc 1 2658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	.loc 1 2659 0
	movq	cfun(%rip), %rax	# cfun, cfun.360
	movq	8(%rax), %rax	# cfun.360_11->stmt, D.20996
	movq	24(%rax), %rax	# _12->x_loop_stack, D.20997
	movq	32(%rax), %rax	# _13->data.loop.start_label, tmp157
	movq	%rax, -80(%rbp)	# tmp157, start_label
	.loc 1 2664 0
	movq	cfun(%rip), %rax	# cfun, cfun.361
	movq	8(%rax), %rax	# cfun.361_15->stmt, D.20996
	movq	24(%rax), %rax	# _16->x_loop_stack, D.20997
	movq	56(%rax), %rax	# _17->data.loop.continue_label, D.20998
	cmpq	-80(%rbp), %rax	# start_label, D.20998
	jne	.L547	#,
	.loc 1 2665 0
	movq	-80(%rbp), %rax	# start_label, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$-94, %edi	#,
	call	emit_note_before	#
.L547:
	.loc 1 2667 0
	call	do_pending_stack_adjust	#
	.loc 1 2705 0
	movl	$0, -84(%rbp)	#, debug_blocks
	movl	-84(%rbp), %eax	# debug_blocks, tmp159
	movl	%eax, -88(%rbp)	# tmp159, eh_regions
	.loc 1 2706 0
	movq	-80(%rbp), %rax	# start_label, tmp160
	movq	%rax, -72(%rbp)	# tmp160, etc_note
	jmp	.L548	#
.L556:
	.loc 1 2707 0
	movq	-72(%rbp), %rax	# etc_note, tmp161
	movzwl	(%rax), %eax	# etc_note_2->code, D.20999
	cmpw	$37, %ax	#, D.20999
	jne	.L549	#,
	.loc 1 2709 0
	movq	-72(%rbp), %rax	# etc_note, tmp162
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-92, %eax	#, D.21000
	jne	.L550	#,
	.loc 1 2710 0
	jmp	.L551	#
.L550:
	.loc 1 2713 0
	movq	-72(%rbp), %rax	# etc_note, tmp163
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-96, %eax	#, D.21000
	jne	.L552	#,
	.loc 1 2715 0
	movq	$0, -72(%rbp)	#, etc_note
	.loc 1 2716 0
	jmp	.L551	#
.L552:
	.loc 1 2721 0
	movq	-72(%rbp), %rax	# etc_note, tmp164
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-86, %eax	#, D.21000
	jne	.L553	#,
	.loc 1 2722 0
	addl	$1, -88(%rbp)	#, eh_regions
	jmp	.L549	#
.L553:
	.loc 1 2723 0
	movq	-72(%rbp), %rax	# etc_note, tmp165
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-85, %eax	#, D.21000
	jne	.L554	#,
	.loc 1 2725 0
	subl	$1, -88(%rbp)	#, eh_regions
	cmpl	$0, -88(%rbp)	#, eh_regions
	jns	.L549	#,
	.loc 1 2733 0
	movl	$__FUNCTION__.14431, %edx	#,
	movl	$2733, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L554:
	.loc 1 2740 0
	movq	-72(%rbp), %rax	# etc_note, tmp166
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-98, %eax	#, D.21000
	jne	.L555	#,
	.loc 1 2741 0
	addl	$1, -84(%rbp)	#, debug_blocks
	jmp	.L549	#
.L555:
	.loc 1 2742 0
	movq	-72(%rbp), %rax	# etc_note, tmp167
	movl	40(%rax), %eax	# etc_note_2->fld[4].rtint, D.21000
	cmpl	$-97, %eax	#, D.21000
	jne	.L549	#,
	.loc 1 2743 0
	subl	$1, -84(%rbp)	#, debug_blocks
.L549:
	.loc 1 2706 0
	movq	-72(%rbp), %rax	# etc_note, tmp168
	movq	24(%rax), %rax	# etc_note_2->fld[2].rtx, tmp169
	movq	%rax, -72(%rbp)	# tmp169, etc_note
.L548:
	.loc 1 2706 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, etc_note
	jne	.L556	#,
.L551:
	.loc 1 2746 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, etc_note
	je	.L557	#,
	.loc 1 2747 0
	movl	optimize(%rip), %eax	# optimize, optimize.362
	testl	%eax, %eax	# optimize.362
	je	.L557	#,
	.loc 1 2748 0
	cmpl	$0, -88(%rbp)	#, eh_regions
	jne	.L557	#,
	.loc 1 2749 0
	cmpl	$0, -84(%rbp)	#, debug_blocks
	je	.L558	#,
	.loc 1 2749 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.363
	cmpl	$1, %eax	#, optimize.363
	jle	.L557	#,
.L558:
	.loc 1 2750 0 is_stmt 1
	movq	-72(%rbp), %rax	# etc_note, tmp170
	movq	24(%rax), %rax	# etc_note_3->fld[2].rtx, D.20998
	testq	%rax, %rax	# D.20998
	je	.L557	#,
	.loc 1 2751 0
	call	get_last_insn	#
	movq	%rax, %rdi	# D.20998,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.21000
	jne	.L557	#,
.LBB76:
	.loc 1 2755 0
	call	gen_label_rtx	#
	movq	%rax, -48(%rbp)	# tmp171, top_label
	.loc 1 2756 0
	movq	-80(%rbp), %rax	# start_label, tmp172
	movq	%rax, -64(%rbp)	# tmp172, start_move
	.loc 1 2760 0
	movq	-64(%rbp), %rax	# start_move, tmp173
	movq	16(%rax), %rax	# start_move_41->fld[1].rtx, D.20998
	movzwl	(%rax), %eax	# _42->code, D.20999
	cmpw	$37, %ax	#, D.20999
	jne	.L559	#,
	.loc 1 2761 0
	movq	-64(%rbp), %rax	# start_move, tmp174
	movq	16(%rax), %rax	# start_move_41->fld[1].rtx, D.20998
	movl	40(%rax), %eax	# _44->fld[4].rtint, D.21000
	cmpl	$-94, %eax	#, D.21000
	jne	.L559	#,
	.loc 1 2762 0
	movq	-64(%rbp), %rax	# start_move, tmp175
	movq	16(%rax), %rax	# start_move_41->fld[1].rtx, tmp176
	movq	%rax, -64(%rbp)	# tmp176, start_move
.L559:
	.loc 1 2764 0
	movq	-64(%rbp), %rdx	# start_move, tmp177
	movq	-48(%rbp), %rax	# top_label, tmp178
	movq	%rdx, %rsi	# tmp177,
	movq	%rax, %rdi	# tmp178,
	call	emit_label_before	#
	.loc 1 2769 0
	cmpl	$0, -84(%rbp)	#, debug_blocks
	jne	.L560	#,
	.loc 1 2770 0
	call	get_last_insn	#
	movq	%rax, %rdx	#, D.20998
	movq	-72(%rbp), %rcx	# etc_note, tmp179
	movq	-64(%rbp), %rax	# start_move, tmp180
	movq	%rcx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	reorder_insns	#
	jmp	.L561	#
.L560:
.LBB77:
	.loc 1 2774 0
	movq	-64(%rbp), %rax	# start_move, tmp181
	movq	%rax, -56(%rbp)	# tmp181, insn
	jmp	.L562	#
.L568:
	.loc 1 2778 0
	movq	-56(%rbp), %rax	# insn, tmp182
	cmpq	-72(%rbp), %rax	# etc_note, tmp182
	je	.L563	#,
	.loc 1 2778 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp183
	movq	24(%rax), %rax	# insn_9->fld[2].rtx, iftmp.364
	jmp	.L564	#
.L563:
	.loc 1 2778 0 discriminator 2
	movl	$0, %eax	#, iftmp.364
.L564:
	.loc 1 2778 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.364, next_insn
	.loc 1 2780 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# insn, tmp184
	movzwl	(%rax), %eax	# insn_9->code, D.20999
	cmpw	$37, %ax	#, D.20999
	jne	.L565	#,
	.loc 1 2781 0
	movq	-56(%rbp), %rax	# insn, tmp185
	movl	40(%rax), %eax	# insn_9->fld[4].rtint, D.21000
	cmpl	$-98, %eax	#, D.21000
	je	.L566	#,
	.loc 1 2782 0
	movq	-56(%rbp), %rax	# insn, tmp186
	movl	40(%rax), %eax	# insn_9->fld[4].rtint, D.21000
	cmpl	$-97, %eax	#, D.21000
	jne	.L565	#,
.L566:
	.loc 1 2783 0
	jmp	.L567	#
.L565:
	.loc 1 2785 0
	call	get_last_insn	#
	movq	%rax, %rdx	#, D.20998
	movq	-56(%rbp), %rcx	# insn, tmp187
	movq	-56(%rbp), %rax	# insn, tmp188
	movq	%rcx, %rsi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	reorder_insns	#
.L567:
	.loc 1 2774 0
	movq	-40(%rbp), %rax	# next_insn, tmp189
	movq	%rax, -56(%rbp)	# tmp189, insn
.L562:
	.loc 1 2774 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, insn
	jne	.L568	#,
.L561:
.LBE77:
	.loc 1 2790 0 is_stmt 1
	movq	-80(%rbp), %rax	# start_label, tmp190
	movq	%rax, %rdi	# tmp190,
	call	gen_jump	#
	movq	-48(%rbp), %rdx	# top_label, tmp191
	movq	%rdx, %rsi	# tmp191,
	movq	%rax, %rdi	# D.20998,
	call	emit_jump_insn_before	#
	.loc 1 2791 0
	movq	-48(%rbp), %rax	# top_label, tmp192
	movq	%rax, %rdi	# tmp192,
	call	emit_barrier_before	#
	.loc 1 2792 0
	movq	-48(%rbp), %rax	# top_label, tmp193
	movq	%rax, -80(%rbp)	# tmp193, start_label
.L557:
.LBE76:
	.loc 1 2795 0
	movq	-80(%rbp), %rax	# start_label, tmp194
	movq	%rax, %rdi	# tmp194,
	call	emit_jump	#
	.loc 1 2796 0
	movl	$-95, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 2797 0
	movq	cfun(%rip), %rax	# cfun, cfun.365
	movq	8(%rax), %rax	# cfun.365_59->stmt, D.20996
	movq	24(%rax), %rax	# _60->x_loop_stack, D.20997
	movq	40(%rax), %rax	# _61->data.loop.end_label, D.20998
	movq	%rax, %rdi	# D.20998,
	call	emit_label	#
.LBB78:
	.loc 1 2799 0
	movq	cfun(%rip), %rax	# cfun, cfun.366
	movq	8(%rax), %rax	# cfun.366_63->stmt, D.20996
	movq	24(%rax), %rax	# _64->x_loop_stack, tmp195
	movq	%rax, -32(%rbp)	# tmp195, target
.L576:
	.loc 1 2799 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.367
	movq	8(%rax), %rax	# cfun.367_66->stmt, D.20996
	movq	40(%rax), %rax	# _67->x_nesting_stack, tmp196
	movq	%rax, -24(%rbp)	# tmp196, this
	movq	cfun(%rip), %rax	# cfun, cfun.368
	movq	8(%rax), %rax	# cfun.368_69->stmt, D.20996
	movq	24(%rax), %rax	# _70->x_loop_stack, D.20997
	cmpq	-24(%rbp), %rax	# this, D.20997
	jne	.L569	#,
	movq	cfun(%rip), %rax	# cfun, cfun.369
	movq	8(%rax), %rax	# cfun.369_72->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.370
	movq	8(%rdx), %rdx	# cfun.370_74->stmt, D.20996
	movq	24(%rdx), %rdx	# _75->x_loop_stack, D.20997
	movq	8(%rdx), %rdx	# _76->next, D.20997
	movq	%rdx, 24(%rax)	# D.20997, _73->x_loop_stack
.L569:
	.loc 1 2799 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.371
	movq	8(%rax), %rax	# cfun.371_78->stmt, D.20996
	movq	16(%rax), %rax	# _79->x_cond_stack, D.20997
	cmpq	-24(%rbp), %rax	# this, D.20997
	jne	.L570	#,
	.loc 1 2799 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.372
	movq	8(%rax), %rax	# cfun.372_81->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.373
	movq	8(%rdx), %rdx	# cfun.373_83->stmt, D.20996
	movq	16(%rdx), %rdx	# _84->x_cond_stack, D.20997
	movq	8(%rdx), %rdx	# _85->next, D.20997
	movq	%rdx, 16(%rax)	# D.20997, _82->x_cond_stack
.L570:
	.loc 1 2799 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.374
	movq	8(%rax), %rax	# cfun.374_87->stmt, D.20996
	movq	(%rax), %rax	# _88->x_block_stack, D.20997
	cmpq	-24(%rbp), %rax	# this, D.20997
	jne	.L571	#,
	.loc 1 2799 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.375
	movq	8(%rax), %rax	# cfun.375_90->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.376
	movq	8(%rdx), %rdx	# cfun.376_92->stmt, D.20996
	movq	(%rdx), %rdx	# _93->x_block_stack, D.20997
	movq	8(%rdx), %rdx	# _94->next, D.20997
	movq	%rdx, (%rax)	# D.20997, _91->x_block_stack
.L571:
	.loc 1 2799 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.377
	movq	8(%rax), %rax	# cfun.377_96->stmt, D.20996
	movq	8(%rax), %rax	# _97->x_stack_block_stack, D.20997
	cmpq	-24(%rbp), %rax	# this, D.20997
	jne	.L572	#,
	.loc 1 2799 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.378
	movq	8(%rax), %rax	# cfun.378_99->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.379
	movq	8(%rdx), %rdx	# cfun.379_101->stmt, D.20996
	movq	8(%rdx), %rdx	# _102->x_stack_block_stack, D.20997
	movq	8(%rdx), %rdx	# _103->next, D.20997
	movq	%rdx, 8(%rax)	# D.20997, _100->x_stack_block_stack
.L572:
	.loc 1 2799 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.380
	movq	8(%rax), %rax	# cfun.380_105->stmt, D.20996
	movq	32(%rax), %rax	# _106->x_case_stack, D.20997
	cmpq	-24(%rbp), %rax	# this, D.20997
	jne	.L573	#,
	.loc 1 2799 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.381
	movq	8(%rax), %rax	# cfun.381_108->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.382
	movq	8(%rdx), %rdx	# cfun.382_110->stmt, D.20996
	movq	32(%rdx), %rdx	# _111->x_case_stack, D.20997
	movq	8(%rdx), %rdx	# _112->next, D.20997
	movq	%rdx, 32(%rax)	# D.20997, _109->x_case_stack
.L573:
	.loc 1 2799 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.383
	movq	8(%rax), %rax	# cfun.383_114->stmt, D.20996
	movq	cfun(%rip), %rdx	# cfun, cfun.384
	movq	8(%rdx), %rdx	# cfun.384_116->stmt, D.20996
	movq	40(%rdx), %rdx	# _117->x_nesting_stack, D.20997
	movl	16(%rdx), %edx	# _118->depth, D.21000
	subl	$1, %edx	#, D.21000
	movl	%edx, 48(%rax)	# D.21000, _115->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.385
	movq	8(%rax), %rax	# cfun.385_121->stmt, D.20996
	movq	-24(%rbp), %rdx	# this, tmp197
	movq	(%rdx), %rdx	# this_68->all, D.20997
	movq	%rdx, 40(%rax)	# D.20997, _122->x_nesting_stack
.LBB79:
	movq	$stmt_obstack, -16(%rbp)	#, __o
	movq	-24(%rbp), %rax	# this, tmp198
	movq	%rax, -8(%rbp)	# tmp198, __obj
	movq	-16(%rbp), %rax	# __o, tmp199
	movq	8(%rax), %rax	# __o_124->chunk, D.21001
	cmpq	-8(%rbp), %rax	# __obj, D.21001
	jae	.L574	#,
	.loc 1 2799 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp200
	movq	32(%rax), %rax	# __o_124->chunk_limit, D.21002
	cmpq	-8(%rbp), %rax	# __obj, D.21002
	jbe	.L574	#,
	movq	-16(%rbp), %rax	# __o, tmp201
	movq	-8(%rbp), %rdx	# __obj, tmp202
	movq	%rdx, 16(%rax)	# tmp202, __o_124->object_base
	movq	-16(%rbp), %rax	# __o, tmp203
	movq	16(%rax), %rdx	# __o_124->object_base, D.21002
	movq	-16(%rbp), %rax	# __o, tmp204
	movq	%rdx, 24(%rax)	# D.21002, __o_124->next_free
	jmp	.L575	#
.L574:
	.loc 1 2799 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp205
	movq	-16(%rbp), %rax	# __o, tmp206
	movq	%rdx, %rsi	# tmp205,
	movq	%rax, %rdi	# tmp206,
	call	obstack_free	#
.L575:
.LBE79:
	.loc 1 2799 0 discriminator 1
	movq	-24(%rbp), %rax	# this, tmp207
	cmpq	-32(%rbp), %rax	# target, tmp207
	jne	.L576	#,
.LBE78:
	.loc 1 2801 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.386
	movq	8(%rax), %rax	# cfun.386_129->stmt, D.20996
	movq	$0, 56(%rax)	#, _130->x_last_expr_type
	.loc 1 2802 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	expand_end_loop, .-expand_end_loop
	.globl	expand_end_null_loop
	.type	expand_end_null_loop, @function
expand_end_null_loop:
.LFB51:
	.loc 1 2808 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 2809 0
	call	do_pending_stack_adjust	#
	.loc 1 2810 0
	movq	cfun(%rip), %rax	# cfun, cfun.387
	movq	8(%rax), %rax	# cfun.387_1->stmt, D.21003
	movq	24(%rax), %rax	# _2->x_loop_stack, D.21004
	movq	40(%rax), %rax	# _3->data.loop.end_label, D.21005
	movq	%rax, %rdi	# D.21005,
	call	emit_label	#
.LBB80:
	.loc 1 2812 0
	movq	cfun(%rip), %rax	# cfun, cfun.388
	movq	8(%rax), %rax	# cfun.388_5->stmt, D.21003
	movq	24(%rax), %rax	# _6->x_loop_stack, tmp127
	movq	%rax, -32(%rbp)	# tmp127, target
.L585:
	.loc 1 2812 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.389
	movq	8(%rax), %rax	# cfun.389_8->stmt, D.21003
	movq	40(%rax), %rax	# _9->x_nesting_stack, tmp128
	movq	%rax, -24(%rbp)	# tmp128, this
	movq	cfun(%rip), %rax	# cfun, cfun.390
	movq	8(%rax), %rax	# cfun.390_11->stmt, D.21003
	movq	24(%rax), %rax	# _12->x_loop_stack, D.21004
	cmpq	-24(%rbp), %rax	# this, D.21004
	jne	.L578	#,
	movq	cfun(%rip), %rax	# cfun, cfun.391
	movq	8(%rax), %rax	# cfun.391_14->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.392
	movq	8(%rdx), %rdx	# cfun.392_16->stmt, D.21003
	movq	24(%rdx), %rdx	# _17->x_loop_stack, D.21004
	movq	8(%rdx), %rdx	# _18->next, D.21004
	movq	%rdx, 24(%rax)	# D.21004, _15->x_loop_stack
.L578:
	.loc 1 2812 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.393
	movq	8(%rax), %rax	# cfun.393_20->stmt, D.21003
	movq	16(%rax), %rax	# _21->x_cond_stack, D.21004
	cmpq	-24(%rbp), %rax	# this, D.21004
	jne	.L579	#,
	.loc 1 2812 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.394
	movq	8(%rax), %rax	# cfun.394_23->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.395
	movq	8(%rdx), %rdx	# cfun.395_25->stmt, D.21003
	movq	16(%rdx), %rdx	# _26->x_cond_stack, D.21004
	movq	8(%rdx), %rdx	# _27->next, D.21004
	movq	%rdx, 16(%rax)	# D.21004, _24->x_cond_stack
.L579:
	.loc 1 2812 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.396
	movq	8(%rax), %rax	# cfun.396_29->stmt, D.21003
	movq	(%rax), %rax	# _30->x_block_stack, D.21004
	cmpq	-24(%rbp), %rax	# this, D.21004
	jne	.L580	#,
	.loc 1 2812 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.397
	movq	8(%rax), %rax	# cfun.397_32->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.398
	movq	8(%rdx), %rdx	# cfun.398_34->stmt, D.21003
	movq	(%rdx), %rdx	# _35->x_block_stack, D.21004
	movq	8(%rdx), %rdx	# _36->next, D.21004
	movq	%rdx, (%rax)	# D.21004, _33->x_block_stack
.L580:
	.loc 1 2812 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.399
	movq	8(%rax), %rax	# cfun.399_38->stmt, D.21003
	movq	8(%rax), %rax	# _39->x_stack_block_stack, D.21004
	cmpq	-24(%rbp), %rax	# this, D.21004
	jne	.L581	#,
	.loc 1 2812 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.400
	movq	8(%rax), %rax	# cfun.400_41->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.401
	movq	8(%rdx), %rdx	# cfun.401_43->stmt, D.21003
	movq	8(%rdx), %rdx	# _44->x_stack_block_stack, D.21004
	movq	8(%rdx), %rdx	# _45->next, D.21004
	movq	%rdx, 8(%rax)	# D.21004, _42->x_stack_block_stack
.L581:
	.loc 1 2812 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.402
	movq	8(%rax), %rax	# cfun.402_47->stmt, D.21003
	movq	32(%rax), %rax	# _48->x_case_stack, D.21004
	cmpq	-24(%rbp), %rax	# this, D.21004
	jne	.L582	#,
	.loc 1 2812 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.403
	movq	8(%rax), %rax	# cfun.403_50->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.404
	movq	8(%rdx), %rdx	# cfun.404_52->stmt, D.21003
	movq	32(%rdx), %rdx	# _53->x_case_stack, D.21004
	movq	8(%rdx), %rdx	# _54->next, D.21004
	movq	%rdx, 32(%rax)	# D.21004, _51->x_case_stack
.L582:
	.loc 1 2812 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.405
	movq	8(%rax), %rax	# cfun.405_56->stmt, D.21003
	movq	cfun(%rip), %rdx	# cfun, cfun.406
	movq	8(%rdx), %rdx	# cfun.406_58->stmt, D.21003
	movq	40(%rdx), %rdx	# _59->x_nesting_stack, D.21004
	movl	16(%rdx), %edx	# _60->depth, D.21006
	subl	$1, %edx	#, D.21006
	movl	%edx, 48(%rax)	# D.21006, _57->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.407
	movq	8(%rax), %rax	# cfun.407_63->stmt, D.21003
	movq	-24(%rbp), %rdx	# this, tmp129
	movq	(%rdx), %rdx	# this_10->all, D.21004
	movq	%rdx, 40(%rax)	# D.21004, _64->x_nesting_stack
.LBB81:
	movq	$stmt_obstack, -16(%rbp)	#, __o
	movq	-24(%rbp), %rax	# this, tmp130
	movq	%rax, -8(%rbp)	# tmp130, __obj
	movq	-16(%rbp), %rax	# __o, tmp131
	movq	8(%rax), %rax	# __o_66->chunk, D.21007
	cmpq	-8(%rbp), %rax	# __obj, D.21007
	jae	.L583	#,
	.loc 1 2812 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp132
	movq	32(%rax), %rax	# __o_66->chunk_limit, D.21008
	cmpq	-8(%rbp), %rax	# __obj, D.21008
	jbe	.L583	#,
	movq	-16(%rbp), %rax	# __o, tmp133
	movq	-8(%rbp), %rdx	# __obj, tmp134
	movq	%rdx, 16(%rax)	# tmp134, __o_66->object_base
	movq	-16(%rbp), %rax	# __o, tmp135
	movq	16(%rax), %rdx	# __o_66->object_base, D.21008
	movq	-16(%rbp), %rax	# __o, tmp136
	movq	%rdx, 24(%rax)	# D.21008, __o_66->next_free
	jmp	.L584	#
.L583:
	.loc 1 2812 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp137
	movq	-16(%rbp), %rax	# __o, tmp138
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	obstack_free	#
.L584:
.LBE81:
	.loc 1 2812 0 discriminator 1
	movq	-24(%rbp), %rax	# this, tmp139
	cmpq	-32(%rbp), %rax	# target, tmp139
	jne	.L585	#,
.LBE80:
	.loc 1 2814 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.408
	movq	8(%rax), %rax	# cfun.408_71->stmt, D.21003
	movq	$0, 56(%rax)	#, _72->x_last_expr_type
	.loc 1 2815 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	expand_end_null_loop, .-expand_end_null_loop
	.globl	expand_continue_loop
	.type	expand_continue_loop, @function
expand_continue_loop:
.LFB52:
	.loc 1 2825 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# whichloop, whichloop
	.loc 1 2826 0
	movq	cfun(%rip), %rax	# cfun, cfun.409
	movq	8(%rax), %rax	# cfun.409_3->stmt, D.21010
	movq	$0, 56(%rax)	#, _4->x_last_expr_type
	.loc 1 2827 0
	cmpq	$0, -8(%rbp)	#, whichloop
	jne	.L587	#,
	.loc 1 2828 0
	movq	cfun(%rip), %rax	# cfun, cfun.410
	movq	8(%rax), %rax	# cfun.410_6->stmt, D.21010
	movq	24(%rax), %rax	# _7->x_loop_stack, tmp66
	movq	%rax, -8(%rbp)	# tmp66, whichloop
.L587:
	.loc 1 2829 0
	cmpq	$0, -8(%rbp)	#, whichloop
	jne	.L588	#,
	.loc 1 2830 0
	movl	$0, %eax	#, D.21009
	jmp	.L589	#
.L588:
	.loc 1 2831 0
	movq	-8(%rbp), %rax	# whichloop, tmp67
	movq	56(%rax), %rax	# whichloop_1->data.loop.continue_label, D.21011
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21011,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 2833 0
	movl	$1, %eax	#, D.21009
.L589:
	.loc 1 2834 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	expand_continue_loop, .-expand_continue_loop
	.globl	expand_exit_loop
	.type	expand_exit_loop, @function
expand_exit_loop:
.LFB53:
	.loc 1 2842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# whichloop, whichloop
	.loc 1 2843 0
	movq	cfun(%rip), %rax	# cfun, cfun.411
	movq	8(%rax), %rax	# cfun.411_3->stmt, D.21013
	movq	$0, 56(%rax)	#, _4->x_last_expr_type
	.loc 1 2844 0
	cmpq	$0, -8(%rbp)	#, whichloop
	jne	.L591	#,
	.loc 1 2845 0
	movq	cfun(%rip), %rax	# cfun, cfun.412
	movq	8(%rax), %rax	# cfun.412_6->stmt, D.21013
	movq	24(%rax), %rax	# _7->x_loop_stack, tmp66
	movq	%rax, -8(%rbp)	# tmp66, whichloop
.L591:
	.loc 1 2846 0
	cmpq	$0, -8(%rbp)	#, whichloop
	jne	.L592	#,
	.loc 1 2847 0
	movl	$0, %eax	#, D.21012
	jmp	.L593	#
.L592:
	.loc 1 2848 0
	movq	-8(%rbp), %rax	# whichloop, tmp67
	movq	40(%rax), %rax	# whichloop_1->data.loop.end_label, D.21014
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21014,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 2849 0
	movl	$1, %eax	#, D.21012
.L593:
	.loc 1 2850 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	expand_exit_loop, .-expand_exit_loop
	.globl	expand_exit_loop_if_false
	.type	expand_exit_loop_if_false, @function
expand_exit_loop_if_false:
.LFB54:
	.loc 1 2860 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# whichloop, whichloop
	movq	%rsi, -32(%rbp)	# cond, cond
	.loc 1 2861 0
	call	gen_label_rtx	#
	movq	%rax, -16(%rbp)	# tmp67, label
	.loc 1 2863 0
	movq	cfun(%rip), %rax	# cfun, cfun.413
	movq	8(%rax), %rax	# cfun.413_4->stmt, D.21016
	movq	$0, 56(%rax)	#, _5->x_last_expr_type
	.loc 1 2865 0
	cmpq	$0, -24(%rbp)	#, whichloop
	jne	.L595	#,
	.loc 1 2866 0
	movq	cfun(%rip), %rax	# cfun, cfun.414
	movq	8(%rax), %rax	# cfun.414_7->stmt, D.21016
	movq	24(%rax), %rax	# _8->x_loop_stack, tmp68
	movq	%rax, -24(%rbp)	# tmp68, whichloop
.L595:
	.loc 1 2867 0
	cmpq	$0, -24(%rbp)	#, whichloop
	jne	.L596	#,
	.loc 1 2868 0
	movl	$0, %eax	#, D.21015
	jmp	.L597	#
.L596:
	.loc 1 2873 0
	movq	-16(%rbp), %rdx	# label, tmp69
	movq	-32(%rbp), %rax	# cond, tmp70
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp70,
	call	do_jump	#
	.loc 1 2874 0
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp71, last_insn
	.loc 1 2875 0
	movq	-8(%rbp), %rax	# last_insn, tmp72
	movzwl	(%rax), %eax	# last_insn_12->code, D.21017
	cmpw	$36, %ax	#, D.21017
	jne	.L598	#,
	.loc 1 2876 0
	movq	-24(%rbp), %rax	# whichloop, tmp73
	movq	-8(%rbp), %rdx	# last_insn, tmp74
	movq	%rdx, 48(%rax)	# tmp74, whichloop_1->data.loop.alt_end_label
.L598:
	.loc 1 2877 0
	movq	-24(%rbp), %rax	# whichloop, tmp75
	movq	40(%rax), %rax	# whichloop_1->data.loop.end_label, D.21018
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21018,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 2879 0
	movq	-16(%rbp), %rax	# label, tmp76
	movq	%rax, %rdi	# tmp76,
	call	emit_label	#
	.loc 1 2881 0
	movl	$1, %eax	#, D.21015
.L597:
	.loc 1 2882 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	expand_exit_loop_if_false, .-expand_exit_loop_if_false
	.globl	expand_exit_loop_top_cond
	.type	expand_exit_loop_top_cond, @function
expand_exit_loop_top_cond:
.LFB55:
	.loc 1 2892 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# whichloop, whichloop
	movq	%rsi, -16(%rbp)	# cond, cond
	.loc 1 2893 0
	movq	-16(%rbp), %rdx	# cond, tmp62
	movq	-8(%rbp), %rax	# whichloop, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	expand_exit_loop_if_false	#
	testl	%eax, %eax	# D.21019
	jne	.L600	#,
	.loc 1 2894 0
	movl	$0, %eax	#, D.21019
	jmp	.L601	#
.L600:
	.loc 1 2896 0
	movl	$-92, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 2897 0
	movl	$1, %eax	#, D.21019
.L601:
	.loc 1 2898 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	expand_exit_loop_top_cond, .-expand_exit_loop_top_cond
	.globl	stmt_loop_nest_empty
	.type	stmt_loop_nest_empty, @function
stmt_loop_nest_empty:
.LFB56:
	.loc 1 2904 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2908 0
	movq	cfun(%rip), %rax	# cfun, cfun.416
	movq	8(%rax), %rax	# cfun.416_2->stmt, D.21020
	testq	%rax, %rax	# D.21020
	je	.L603	#,
	.loc 1 2908 0 is_stmt 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.417
	movq	8(%rax), %rax	# cfun.417_4->stmt, D.21020
	movq	24(%rax), %rax	# _5->x_loop_stack, D.21021
	testq	%rax, %rax	# D.21021
	jne	.L604	#,
.L603:
	.loc 1 2908 0 discriminator 1
	movl	$1, %eax	#, iftmp.415
	jmp	.L605	#
.L604:
	.loc 1 2908 0 discriminator 3
	movl	$0, %eax	#, iftmp.415
.L605:
	.loc 1 2909 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	stmt_loop_nest_empty, .-stmt_loop_nest_empty
	.globl	preserve_subexpressions_p
	.type	preserve_subexpressions_p, @function
preserve_subexpressions_p:
.LFB57:
	.loc 1 2920 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2923 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.418
	testl	%eax, %eax	# flag_expensive_optimizations.418
	je	.L608	#,
	.loc 1 2924 0
	movl	$1, %eax	#, D.21023
	jmp	.L609	#
.L608:
	.loc 1 2926 0
	movl	optimize(%rip), %eax	# optimize, optimize.419
	testl	%eax, %eax	# optimize.419
	je	.L610	#,
	.loc 1 2926 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.420
	testq	%rax, %rax	# cfun.420
	je	.L610	#,
	movq	cfun(%rip), %rax	# cfun, cfun.421
	movq	8(%rax), %rax	# cfun.421_7->stmt, D.21024
	testq	%rax, %rax	# D.21024
	je	.L610	#,
	movq	cfun(%rip), %rax	# cfun, cfun.422
	movq	8(%rax), %rax	# cfun.422_9->stmt, D.21024
	movq	24(%rax), %rax	# _10->x_loop_stack, D.21025
	testq	%rax, %rax	# D.21025
	jne	.L611	#,
.L610:
	.loc 1 2927 0 is_stmt 1
	movl	$0, %eax	#, D.21023
	jmp	.L609	#
.L611:
	.loc 1 2929 0
	call	get_last_insn_anywhere	#
	movq	%rax, -8(%rbp)	# tmp79, insn
	.loc 1 2932 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L612	#,
	.loc 1 2932 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp80
	movl	8(%rax), %edx	# insn_12->fld[0].rtint, D.21023
	movq	cfun(%rip), %rax	# cfun, cfun.424
	movq	8(%rax), %rax	# cfun.424_14->stmt, D.21024
	movq	24(%rax), %rax	# _15->x_loop_stack, D.21025
	movq	32(%rax), %rax	# _16->data.loop.start_label, D.21026
	movl	8(%rax), %eax	# _17->fld[0].rtint, D.21023
	movl	%edx, %ecx	# D.21023, D.21023
	subl	%eax, %ecx	# D.21023, D.21023
	.loc 1 2933 0 is_stmt 1 discriminator 1
	movl	n_non_fixed_regs(%rip), %edx	# n_non_fixed_regs, n_non_fixed_regs.425
	movl	%edx, %eax	# n_non_fixed_regs.425, tmp81
	addl	%eax, %eax	# tmp81
	addl	%edx, %eax	# n_non_fixed_regs.425, D.21023
	.loc 1 2932 0 discriminator 1
	cmpl	%eax, %ecx	# D.21023, D.21023
	jge	.L612	#,
	.loc 1 2932 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.423
	jmp	.L613	#
.L612:
	.loc 1 2932 0 discriminator 2
	movl	$0, %eax	#, iftmp.423
.L613:
.L609:
	.loc 1 2935 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	preserve_subexpressions_p, .-preserve_subexpressions_p
	.globl	expand_exit_something
	.type	expand_exit_something, @function
expand_exit_something:
.LFB58:
	.loc 1 2948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2950 0
	movq	cfun(%rip), %rax	# cfun, cfun.426
	movq	8(%rax), %rax	# cfun.426_3->stmt, D.21028
	movq	$0, 56(%rax)	#, _4->x_last_expr_type
	.loc 1 2951 0
	movq	cfun(%rip), %rax	# cfun, cfun.427
	movq	8(%rax), %rax	# cfun.427_5->stmt, D.21028
	movq	40(%rax), %rax	# _6->x_nesting_stack, tmp67
	movq	%rax, -8(%rbp)	# tmp67, n
	jmp	.L615	#
.L618:
	.loc 1 2952 0
	movq	-8(%rbp), %rax	# n, tmp68
	movq	24(%rax), %rax	# n_1->exit_label, D.21029
	testq	%rax, %rax	# D.21029
	je	.L616	#,
	.loc 1 2954 0
	movq	-8(%rbp), %rax	# n, tmp69
	movq	24(%rax), %rax	# n_1->exit_label, D.21029
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21029,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 2955 0
	movl	$1, %eax	#, D.21027
	jmp	.L617	#
.L616:
	.loc 1 2951 0
	movq	-8(%rbp), %rax	# n, tmp70
	movq	(%rax), %rax	# n_1->all, tmp71
	movq	%rax, -8(%rbp)	# tmp71, n
.L615:
	.loc 1 2951 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, n
	jne	.L618	#,
	.loc 1 2958 0 is_stmt 1
	movl	$0, %eax	#, D.21027
.L617:
	.loc 1 2959 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	expand_exit_something, .-expand_exit_something
	.globl	expand_null_return
	.type	expand_null_return, @function
expand_null_return:
.LFB59:
	.loc 1 2966 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2967 0
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp59, last_insn
	.loc 1 2972 0
	call	clobber_return_register	#
	.loc 1 2974 0
	movq	-8(%rbp), %rax	# last_insn, tmp60
	movq	%rax, %rdi	# tmp60,
	call	expand_null_return_1	#
	.loc 1 2975 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	expand_null_return, .-expand_null_return
	.type	expand_value_return, @function
expand_value_return:
.LFB60:
	.loc 1 2982 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# val, val
	.loc 1 2983 0
	call	get_last_insn	#
	movq	%rax, -24(%rbp)	# tmp74, last_insn
	.loc 1 2984 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.429
	movq	96(%rax), %rax	# current_function_decl.429_3->decl.result, D.21030
	movq	144(%rax), %rax	# _4->decl.rtl, D.21031
	testq	%rax, %rax	# D.21031
	je	.L621	#,
	.loc 1 2984 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.430
	movq	96(%rax), %rax	# current_function_decl.430_6->decl.result, D.21030
	movq	144(%rax), %rax	# _7->decl.rtl, iftmp.428
	jmp	.L622	#
.L621:
	.loc 1 2984 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.431
	movq	96(%rax), %rax	# current_function_decl.431_9->decl.result, D.21030
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21030,
	call	make_decl_rtl	#
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.432
	movq	96(%rax), %rax	# current_function_decl.432_11->decl.result, D.21030
	movq	144(%rax), %rax	# _12->decl.rtl, iftmp.428
.L622:
	.loc 1 2984 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.428, return_reg
	.loc 1 2989 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# return_reg, tmp75
	cmpq	-40(%rbp), %rax	# val, tmp75
	je	.L623	#,
.LBB82:
	.loc 1 2991 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.433
	movq	96(%rax), %rax	# current_function_decl.433_16->decl.result, D.21030
	movq	8(%rax), %rax	# _17->common.type, tmp76
	movq	%rax, -8(%rbp)	# tmp76, type
	.loc 1 3002 0
	movq	-16(%rbp), %rax	# return_reg, tmp77
	movzwl	(%rax), %eax	# return_reg_14->code, D.21032
	cmpw	$39, %ax	#, D.21032
	jne	.L624	#,
	.loc 1 3003 0
	movq	-8(%rbp), %rax	# type, tmp78
	movq	%rax, %rdi	# tmp78,
	call	int_size_in_bytes	#
	movl	%eax, %edx	# D.21033, D.21034
	movq	-40(%rbp), %rcx	# val, tmp79
	movq	-16(%rbp), %rax	# return_reg, tmp80
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	emit_group_load	#
	jmp	.L623	#
.L624:
	.loc 1 3005 0
	movq	-40(%rbp), %rdx	# val, tmp81
	movq	-16(%rbp), %rax	# return_reg, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	emit_move_insn	#
.L623:
.LBE82:
	.loc 1 3008 0
	movq	-24(%rbp), %rax	# last_insn, tmp83
	movq	%rax, %rdi	# tmp83,
	call	expand_null_return_1	#
	.loc 1 3009 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	expand_value_return, .-expand_value_return
	.type	expand_null_return_1, @function
expand_null_return_1:
.LFB61:
	.loc 1 3017 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# last_insn, last_insn
	.loc 1 3018 0
	movq	cfun(%rip), %rax	# cfun, cfun.435
	movq	192(%rax), %rax	# cfun.435_3->x_cleanup_label, D.21035
	testq	%rax, %rax	# D.21035
	je	.L626	#,
	.loc 1 3018 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.436
	movq	192(%rax), %rax	# cfun.436_5->x_cleanup_label, iftmp.434
	jmp	.L627	#
.L626:
	.loc 1 3018 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.437
	movq	200(%rax), %rax	# cfun.437_7->x_return_label, iftmp.434
.L627:
	.loc 1 3018 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.434, end_label
	.loc 1 3020 0 is_stmt 1 discriminator 3
	call	clear_pending_stack_adjust	#
	.loc 1 3021 0 discriminator 3
	call	do_pending_stack_adjust	#
	.loc 1 3022 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.438
	movq	8(%rax), %rax	# cfun.438_10->stmt, D.21036
	movq	$0, 56(%rax)	#, _11->x_last_expr_type
	.loc 1 3024 0 discriminator 3
	cmpq	$0, -24(%rbp)	#, end_label
	jne	.L628	#,
	.loc 1 3025 0
	movq	cfun(%rip), %rbx	# cfun, cfun.439
	call	gen_label_rtx	#
	movq	%rax, 200(%rbx)	# D.21035, cfun.439_12->x_return_label
	movq	200(%rbx), %rax	# cfun.439_12->x_return_label, tmp68
	movq	%rax, -24(%rbp)	# tmp68, end_label
.L628:
	.loc 1 3026 0
	movq	-40(%rbp), %rdx	# last_insn, tmp69
	movq	-24(%rbp), %rax	# end_label, tmp70
	movq	%rax, %rsi	# tmp70,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 3027 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	expand_null_return_1, .-expand_null_return_1
	.globl	expand_return
	.type	expand_return, @function
expand_return:
.LFB62:
	.loc 1 3035 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)	# retval, retval
	.loc 1 3044 0
	movq	$0, -104(%rbp)	#, last_insn
	.loc 1 3046 0
	movq	$0, -96(%rbp)	#, val
	.loc 1 3050 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.440
	movq	8(%rax), %rax	# current_function_decl.440_27->common.type, D.21037
	movq	8(%rax), %rax	# _28->common.type, D.21037
	movzbl	16(%rax), %eax	# _29->common.code, D.21038
	cmpb	$5, %al	#, D.21038
	jne	.L630	#,
	.loc 1 3052 0
	movq	-184(%rbp), %rax	# retval, tmp212
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	expand_expr	#
	.loc 1 3053 0
	call	emit_queue	#
	.loc 1 3054 0
	call	expand_null_return	#
	.loc 1 3055 0
	jmp	.L629	#
.L630:
	.loc 1 3058 0
	movq	global_trees(%rip), %rax	# global_trees, D.21037
	cmpq	-184(%rbp), %rax	# retval, D.21037
	jne	.L632	#,
	.loc 1 3062 0
	call	expand_null_return	#
	.loc 1 3063 0
	jmp	.L629	#
.L632:
	.loc 1 3065 0
	movq	-184(%rbp), %rax	# retval, tmp213
	movzbl	16(%rax), %eax	# retval_31(D)->common.code, D.21038
	cmpb	$36, %al	#, D.21038
	jne	.L633	#,
	.loc 1 3066 0
	movq	-184(%rbp), %rax	# retval, tmp214
	movq	%rax, -152(%rbp)	# tmp214, retval_rhs
	jmp	.L634	#
.L633:
	.loc 1 3067 0
	movq	-184(%rbp), %rax	# retval, tmp215
	movzbl	16(%rax), %eax	# retval_31(D)->common.code, D.21038
	cmpb	$48, %al	#, D.21038
	je	.L635	#,
	.loc 1 3067 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# retval, tmp216
	movzbl	16(%rax), %eax	# retval_31(D)->common.code, D.21038
	cmpb	$49, %al	#, D.21038
	jne	.L636	#,
.L635:
	.loc 1 3068 0 is_stmt 1
	movq	-184(%rbp), %rax	# retval, tmp217
	movq	32(%rax), %rax	# retval_31(D)->exp.operands, D.21037
	movzbl	16(%rax), %eax	# _37->common.code, D.21038
	cmpb	$36, %al	#, D.21038
	jne	.L636	#,
	.loc 1 3069 0
	movq	-184(%rbp), %rax	# retval, tmp218
	movq	40(%rax), %rax	# retval_31(D)->exp.operands, tmp219
	movq	%rax, -152(%rbp)	# tmp219, retval_rhs
	jmp	.L634	#
.L636:
	.loc 1 3070 0
	movq	-184(%rbp), %rax	# retval, tmp220
	movq	8(%rax), %rax	# retval_31(D)->common.type, D.21037
	movzbl	16(%rax), %eax	# _40->common.code, D.21038
	cmpb	$5, %al	#, D.21038
	jne	.L637	#,
	.loc 1 3072 0
	movq	-184(%rbp), %rax	# retval, tmp221
	movq	%rax, -152(%rbp)	# tmp221, retval_rhs
	jmp	.L634	#
.L637:
	.loc 1 3074 0
	movq	$0, -152(%rbp)	#, retval_rhs
.L634:
	.loc 1 3076 0
	call	get_last_insn	#
	movq	%rax, -104(%rbp)	# tmp222, last_insn
	.loc 1 3084 0
	movl	optimize(%rip), %eax	# optimize, optimize.441
	testl	%eax, %eax	# optimize.441
	je	.L638	#,
	.loc 1 3084 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, retval_rhs
	je	.L638	#,
	.loc 1 3085 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.442
	movq	264(%rax), %rax	# cfun.442_46->x_frame_offset, D.21039
	testq	%rax, %rax	# D.21039
	jne	.L638	#,
	.loc 1 3086 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp223
	movzbl	16(%rax), %eax	# retval_rhs_1->common.code, D.21038
	cmpb	$51, %al	#, D.21038
	jne	.L638	#,
	.loc 1 3087 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp224
	movq	40(%rax), %rax	# retval_rhs_1->exp.operands, D.21037
	movzbl	16(%rax), %eax	# _49->common.code, D.21038
	cmpb	$53, %al	#, D.21038
	je	.L639	#,
	.loc 1 3088 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp225
	movq	48(%rax), %rax	# retval_rhs_1->exp.operands, D.21037
	movzbl	16(%rax), %eax	# _51->common.code, D.21038
	cmpb	$53, %al	#, D.21038
	jne	.L638	#,
.L639:
.LBB83:
	.loc 1 3090 0
	call	gen_label_rtx	#
	movq	%rax, -88(%rbp)	# tmp226, label
	.loc 1 3093 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp227
	movq	32(%rax), %rax	# retval_rhs_1->exp.operands, D.21037
	movq	-88(%rbp), %rcx	# label, tmp228
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp228,
	movq	%rax, %rdi	# D.21037,
	call	do_jump	#
	.loc 1 3094 0
	call	start_cleanup_deferral	#
	.loc 1 3095 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp229
	movq	40(%rax), %rcx	# retval_rhs_1->exp.operands, D.21037
	.loc 1 3096 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.443
	.loc 1 3095 0
	movq	96(%rax), %rdx	# current_function_decl.443_56->decl.result, D.21037
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.444
	movq	8(%rax), %rax	# current_function_decl.444_58->common.type, D.21037
	movq	8(%rax), %rax	# _59->common.type, D.21037
	movq	%rax, %rsi	# D.21037,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -80(%rbp)	# tmp230, expr
	.loc 1 3098 0
	movq	-80(%rbp), %rax	# expr, tmp231
	movzbl	17(%rax), %edx	#, tmp234
	orl	$1, %edx	#, tmp235
	movb	%dl, 17(%rax)	# tmp235,
	.loc 1 3099 0
	movq	-80(%rbp), %rax	# expr, tmp236
	movq	%rax, %rdi	# tmp236,
	call	expand_return	#
	.loc 1 3100 0
	movq	-88(%rbp), %rax	# label, tmp237
	movq	%rax, %rdi	# tmp237,
	call	emit_label	#
	.loc 1 3102 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp238
	movq	48(%rax), %rcx	# retval_rhs_1->exp.operands, D.21037
	.loc 1 3103 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.445
	.loc 1 3102 0
	movq	96(%rax), %rdx	# current_function_decl.445_63->decl.result, D.21037
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.446
	movq	8(%rax), %rax	# current_function_decl.446_65->common.type, D.21037
	movq	8(%rax), %rax	# _66->common.type, D.21037
	movq	%rax, %rsi	# D.21037,
	movl	$48, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -80(%rbp)	# tmp239, expr
	.loc 1 3105 0
	movq	-80(%rbp), %rax	# expr, tmp240
	movzbl	17(%rax), %edx	#, tmp243
	orl	$1, %edx	#, tmp244
	movb	%dl, 17(%rax)	# tmp244,
	.loc 1 3106 0
	movq	-80(%rbp), %rax	# expr, tmp245
	movq	%rax, %rdi	# tmp245,
	call	expand_return	#
	.loc 1 3107 0
	call	end_cleanup_deferral	#
	.loc 1 3108 0
	jmp	.L629	#
.L638:
.LBE83:
	.loc 1 3111 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.448
	movq	96(%rax), %rax	# current_function_decl.448_69->decl.result, D.21037
	movq	144(%rax), %rax	# _70->decl.rtl, D.21040
	testq	%rax, %rax	# D.21040
	je	.L640	#,
	.loc 1 3111 0 is_stmt 0 discriminator 1
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.449
	movq	96(%rax), %rax	# current_function_decl.449_72->decl.result, D.21037
	movq	144(%rax), %rax	# _73->decl.rtl, iftmp.447
	jmp	.L641	#
.L640:
	.loc 1 3111 0 discriminator 2
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.450
	movq	96(%rax), %rax	# current_function_decl.450_75->decl.result, D.21037
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21037,
	call	make_decl_rtl	#
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.451
	movq	96(%rax), %rax	# current_function_decl.451_77->decl.result, D.21037
	movq	144(%rax), %rax	# _78->decl.rtl, iftmp.447
.L641:
	.loc 1 3111 0 discriminator 3
	movq	%rax, -72(%rbp)	# iftmp.447, result_rtl
	.loc 1 3121 0 is_stmt 1 discriminator 3
	cmpq	$0, -152(%rbp)	#, retval_rhs
	je	.L642	#,
	.loc 1 3122 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp246
	movq	8(%rax), %rax	# retval_rhs_1->common.type, D.21037
	movzbl	61(%rax), %eax	# *_81, D.21038
	andl	$-2, %eax	#, D.21038
	cmpb	$102, %al	#, D.21038
	jne	.L642	#,
	.loc 1 3123 0
	movq	-72(%rbp), %rax	# result_rtl, tmp247
	movzwl	(%rax), %eax	# result_rtl_80->code, D.21041
	cmpw	$61, %ax	#, D.21041
	jne	.L642	#,
.LBB84:
	.loc 1 3127 0
	movq	$0, -64(%rbp)	#, big_endian_correction
	.loc 1 3129 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp248
	movq	8(%rax), %rax	# retval_rhs_1->common.type, D.21037
	movq	%rax, %rdi	# D.21037,
	call	int_size_in_bytes	#
	.loc 1 3128 0
	movq	%rax, -56(%rbp)	# D.21039, bytes
	.loc 1 3130 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.453
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L643	#,
	.loc 1 3130 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.452
	jmp	.L644	#
.L643:
	.loc 1 3130 0 discriminator 2
	movl	$4, %eax	#, iftmp.452
.L644:
	.loc 1 3130 0 discriminator 3
	movq	-56(%rbp), %rdx	# bytes, tmp249
	addq	%rdx, %rax	# tmp249, D.21043
	subq	$1, %rax	#, D.21043
	movl	target_flags(%rip), %edx	# target_flags, target_flags.455
	andl	$33554432, %edx	#, D.21042
	testl	%edx, %edx	# D.21042
	je	.L645	#,
	.loc 1 3130 0 discriminator 1
	movl	$8, %ebx	#, iftmp.454
	jmp	.L646	#
.L645:
	.loc 1 3130 0 discriminator 2
	movl	$4, %ebx	#, iftmp.454
.L646:
	.loc 1 3130 0 discriminator 3
	movl	$0, %edx	#, tmp251
	divq	%rbx	# iftmp.454
	movl	%eax, -160(%rbp)	# D.21043, n_regs
	.loc 1 3132 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.457
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L647	#,
	.loc 1 3132 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.456
	jmp	.L648	#
.L647:
	.loc 1 3132 0 discriminator 2
	movl	$32, %eax	#, iftmp.456
.L648:
	.loc 1 3132 0 discriminator 3
	movq	-152(%rbp), %rdx	# retval_rhs, tmp252
	movq	8(%rdx), %rdx	# retval_rhs_1->common.type, D.21037
	movl	64(%rdx), %edx	# _105->type.align, D.21044
	.loc 1 3131 0 is_stmt 1 discriminator 3
	cmpl	%edx, %eax	# D.21044, iftmp.456
	cmova	%edx, %eax	# iftmp.456,, D.21044, tmp253
	movl	%eax, -156(%rbp)	# tmp253, bitsize
	.loc 1 3133 0 discriminator 3
	movl	-160(%rbp), %eax	# n_regs, tmp254
	cltq
	salq	$3, %rax	#, D.21043
	leaq	15(%rax), %rdx	#, tmp255
	movl	$16, %eax	#, tmp352
	subq	$1, %rax	#, tmp256
	addq	%rdx, %rax	# tmp255, tmp257
	movl	$16, %ebx	#, tmp353
	movl	$0, %edx	#, tmp260
	divq	%rbx	# tmp353
	imulq	$16, %rax, %rax	#, tmp259, tmp261
	subq	%rax, %rsp	# tmp261,
	leaq	16(%rsp), %rax	#, tmp262
	addq	$15, %rax	#, tmp263
	shrq	$4, %rax	#, tmp264
	salq	$4, %rax	#, tmp265
	movq	%rax, -48(%rbp)	# tmp265, result_pseudos
	.loc 1 3134 0 discriminator 3
	movq	$0, -120(%rbp)	#, src
	movq	$0, -112(%rbp)	#, dst
	.loc 1 3135 0 discriminator 3
	movq	-152(%rbp), %rax	# retval_rhs, tmp266
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp266,
	call	expand_expr	#
	movq	%rax, -40(%rbp)	# tmp267, result_val
	.loc 1 3138 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, bytes
	jne	.L649	#,
	.loc 1 3140 0
	call	expand_null_return	#
	.loc 1 3141 0
	jmp	.L629	#
.L649:
	.loc 1 3155 0
	movq	$0, -144(%rbp)	#, bitpos
	movq	-64(%rbp), %rax	# big_endian_correction, tmp268
	movq	%rax, -136(%rbp)	# tmp268, xbitpos
	jmp	.L650	#
.L670:
	.loc 1 3162 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.463
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L651	#,
	.loc 1 3162 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.462
	jmp	.L652	#
.L651:
	.loc 1 3162 0 discriminator 2
	movl	$32, %ebx	#, iftmp.462
.L652:
	.loc 1 3162 0 discriminator 3
	movq	-136(%rbp), %rax	# xbitpos, tmp269
	movl	$0, %edx	#, tmp270
	divq	%rbx	# iftmp.462
	movq	%rdx, %rcx	# tmp270, tmp270
	movq	%rcx, %rax	# tmp270, D.21043
	testq	%rax, %rax	# D.21043
	je	.L653	#,
	.loc 1 3163 0 is_stmt 1
	movq	-136(%rbp), %rax	# xbitpos, tmp272
	cmpq	-64(%rbp), %rax	# big_endian_correction, tmp272
	jne	.L654	#,
.L653:
	.loc 1 3166 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.464
	movl	%eax, %edi	# word_mode.464,
	call	gen_reg_rtx	#
	movq	%rax, -112(%rbp)	# tmp273, dst
	.loc 1 3167 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.466
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L655	#,
	.loc 1 3167 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.465
	jmp	.L656	#
.L655:
	.loc 1 3167 0 discriminator 2
	movl	$32, %ebx	#, iftmp.465
.L656:
	.loc 1 3167 0 discriminator 3
	movq	-136(%rbp), %rax	# xbitpos, tmp276
	movl	$0, %edx	#, tmp275
	divq	%rbx	# iftmp.465
	leaq	0(,%rax,8), %rdx	#, D.21043
	movq	-48(%rbp), %rax	# result_pseudos, tmp277
	addq	%rax, %rdx	# tmp277, D.21045
	movq	-112(%rbp), %rax	# dst, tmp278
	movq	%rax, (%rdx)	# tmp278, *_130
	.loc 1 3170 0 is_stmt 1 discriminator 3
	movq	-112(%rbp), %rax	# dst, tmp279
	movzbl	2(%rax), %eax	# dst_123->mode, D.21038
	movzbl	%al, %eax	# D.21038, D.21042
	cltq
	movq	const_tiny_rtx(,%rax,8), %rdx	# const_tiny_rtx, D.21040
	movq	-112(%rbp), %rax	# dst, tmp281
	movq	%rdx, %rsi	# D.21040,
	movq	%rax, %rdi	# tmp281,
	call	emit_move_insn	#
.L654:
	.loc 1 3175 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.468
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L657	#,
	.loc 1 3175 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.467
	jmp	.L658	#
.L657:
	.loc 1 3175 0 discriminator 2
	movl	$32, %ebx	#, iftmp.467
.L658:
	.loc 1 3175 0 discriminator 3
	movq	-144(%rbp), %rax	# bitpos, tmp282
	movl	$0, %edx	#, tmp283
	divq	%rbx	# iftmp.467
	movq	%rdx, %rcx	# tmp283, tmp283
	movq	%rcx, %rax	# tmp283, D.21043
	testq	%rax, %rax	# D.21043
	jne	.L659	#,
	.loc 1 3177 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.470
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L660	#,
	.loc 1 3177 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.469
	jmp	.L661	#
.L660:
	.loc 1 3177 0 discriminator 2
	movl	$32, %ebx	#, iftmp.469
.L661:
	.loc 1 3177 0 discriminator 3
	movq	-144(%rbp), %rax	# bitpos, tmp287
	movl	$0, %edx	#, tmp286
	divq	%rbx	# iftmp.469
	.loc 1 3176 0 is_stmt 1 discriminator 3
	movl	%eax, %ecx	# D.21043, D.21044
	movq	-40(%rbp), %rax	# result_val, tmp288
	movl	$51, %edx	#,
	movl	%ecx, %esi	# D.21044,
	movq	%rax, %rdi	# tmp288,
	call	operand_subword_force	#
	movq	%rax, -120(%rbp)	# tmp289, src
.L659:
	.loc 1 3187 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.472
	andl	$33554432, %eax	#, D.21042
	.loc 1 3182 0
	testl	%eax, %eax	# D.21042
	je	.L662	#,
	.loc 1 3182 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.471
	jmp	.L663	#
.L662:
	.loc 1 3182 0 discriminator 2
	movl	$32, %ebx	#, iftmp.471
.L663:
	.loc 1 3186 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.474
	andl	$33554432, %eax	#, D.21042
	.loc 1 3182 0 discriminator 3
	testl	%eax, %eax	# D.21042
	je	.L664	#,
	.loc 1 3182 0 is_stmt 0 discriminator 4
	movl	$64, %ecx	#, iftmp.473
	jmp	.L665	#
.L664:
	.loc 1 3182 0 discriminator 5
	movl	$32, %ecx	#, iftmp.473
.L665:
	.loc 1 3182 0 discriminator 6
	movl	word_mode(%rip), %edi	# word_mode, word_mode.475
	movl	word_mode(%rip), %r8d	# word_mode, word_mode.476
	.loc 1 3184 0 is_stmt 1 discriminator 6
	movl	target_flags(%rip), %eax	# target_flags, target_flags.478
	andl	$33554432, %eax	#, D.21042
	.loc 1 3182 0 discriminator 6
	testl	%eax, %eax	# D.21042
	je	.L666	#,
	.loc 1 3182 0 is_stmt 0 discriminator 7
	movl	$64, %esi	#, iftmp.477
	jmp	.L667	#
.L666:
	.loc 1 3182 0 discriminator 8
	movl	$32, %esi	#, iftmp.477
.L667:
	.loc 1 3182 0 discriminator 9
	movq	-144(%rbp), %rax	# bitpos, tmp290
	movl	$0, %edx	#, tmp291
	divq	%rsi	# iftmp.477
	movq	%rdx, %rsi	# tmp291, tmp291
	movq	%rsi, %rdx	# tmp291, D.21043
	movl	-156(%rbp), %esi	# bitsize, D.21043
	movq	-120(%rbp), %rax	# src, tmp293
	movq	%rcx, 8(%rsp)	# iftmp.473,
	movl	%edi, (%rsp)	# word_mode.475,
	movl	%r8d, %r9d	# word_mode.476,
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp293,
	call	extract_bit_field	#
	movq	%rax, %rdi	#, D.21040
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.479
	movl	target_flags(%rip), %eax	# target_flags, target_flags.481
	andl	$33554432, %eax	#, D.21042
	testl	%eax, %eax	# D.21042
	je	.L668	#,
	.loc 1 3182 0 discriminator 10
	movl	$64, %esi	#, iftmp.480
	jmp	.L669	#
.L668:
	.loc 1 3182 0 discriminator 11
	movl	$32, %esi	#, iftmp.480
.L669:
	.loc 1 3182 0 discriminator 12
	movq	-136(%rbp), %rax	# xbitpos, tmp294
	movl	$0, %edx	#, tmp295
	divq	%rsi	# iftmp.480
	movq	%rdx, %rsi	# tmp295, tmp295
	movq	%rsi, %rdx	# tmp295, D.21043
	movl	-156(%rbp), %esi	# bitsize, D.21043
	movq	-112(%rbp), %rax	# dst, tmp297
	movq	%rbx, %r9	# iftmp.471,
	movq	%rdi, %r8	# D.21040,
	movq	%rax, %rdi	# tmp297,
	call	store_bit_field	#
	.loc 1 3157 0 is_stmt 1 discriminator 12
	movl	-156(%rbp), %eax	# bitsize, D.21043
	addq	%rax, -144(%rbp)	# D.21043, bitpos
	movl	-156(%rbp), %eax	# bitsize, D.21043
	addq	%rax, -136(%rbp)	# D.21043, xbitpos
.L650:
	.loc 1 3156 0 discriminator 1
	movq	-56(%rbp), %rax	# bytes, tmp298
	salq	$3, %rax	#, D.21043
	.loc 1 3155 0 discriminator 1
	cmpq	-144(%rbp), %rax	# bitpos, D.21043
	ja	.L670	#,
	.loc 1 3193 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp299
	movl	%eax, -168(%rbp)	# tmp299, tmpmode
	jmp	.L671	#
.L674:
	.loc 1 3197 0
	movl	-168(%rbp), %eax	# tmpmode, tmpmode.482
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.21038
	movzbl	%al, %eax	# D.21038, D.21043
	cmpq	-56(%rbp), %rax	# bytes, D.21043
	jb	.L672	#,
	.loc 1 3198 0
	jmp	.L673	#
.L672:
	.loc 1 3195 0
	movl	-168(%rbp), %eax	# tmpmode, tmpmode.483
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.21038
	movzbl	%al, %eax	# D.21038, tmp302
	movl	%eax, -168(%rbp)	# tmp302, tmpmode
.L671:
	.loc 1 3193 0 discriminator 1
	cmpl	$0, -168(%rbp)	#, tmpmode
	jne	.L674	#,
.L673:
	.loc 1 3201 0
	cmpl	$0, -168(%rbp)	#, tmpmode
	jne	.L675	#,
	.loc 1 3202 0
	movl	$__FUNCTION__.14525, %edx	#,
	movl	$3202, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L675:
	.loc 1 3204 0
	movl	-168(%rbp), %eax	# tmpmode, tmp303
	movl	%eax, %edx	# tmp303, D.21038
	movq	-72(%rbp), %rax	# result_rtl, tmp304
	movb	%dl, 2(%rax)	# D.21038, result_rtl_80->mode
	.loc 1 3206 0
	movl	-168(%rbp), %eax	# tmpmode, tmpmode.484
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.21038
	movl	word_mode(%rip), %eax	# word_mode, word_mode.485
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.21038
	cmpb	%al, %dl	# D.21038, D.21038
	jae	.L676	#,
	.loc 1 3207 0
	movl	word_mode(%rip), %eax	# word_mode, tmp307
	movl	%eax, -164(%rbp)	# tmp307, result_reg_mode
	jmp	.L677	#
.L676:
	.loc 1 3209 0
	movl	-168(%rbp), %eax	# tmpmode, tmp308
	movl	%eax, -164(%rbp)	# tmp308, result_reg_mode
.L677:
	.loc 1 3210 0
	movl	-164(%rbp), %eax	# result_reg_mode, tmp309
	movl	%eax, %edi	# tmp309,
	call	gen_reg_rtx	#
	movq	%rax, -128(%rbp)	# tmp310, result_reg
	.loc 1 3212 0
	call	emit_queue	#
	.loc 1 3213 0
	movl	$0, -172(%rbp)	#, i
	jmp	.L678	#
.L679:
	.loc 1 3215 0 discriminator 2
	movl	-172(%rbp), %eax	# i, tmp311
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21043
	movq	-48(%rbp), %rax	# result_pseudos, tmp312
	addq	%rdx, %rax	# D.21043, D.21045
	.loc 1 3214 0 discriminator 2
	movq	(%rax), %rbx	# *_193, D.21040
	movl	-172(%rbp), %esi	# i, i.487
	movl	-164(%rbp), %edx	# result_reg_mode, tmp313
	movq	-128(%rbp), %rax	# result_reg, tmp314
	movl	%edx, %ecx	# tmp313,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp314,
	call	operand_subword	#
	movq	%rbx, %rsi	# D.21040,
	movq	%rax, %rdi	# D.21040,
	call	emit_move_insn	#
	.loc 1 3213 0 discriminator 2
	addl	$1, -172(%rbp)	#, i
.L678:
	.loc 1 3213 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# i, tmp315
	cmpl	-160(%rbp), %eax	# n_regs, tmp315
	jl	.L679	#,
	.loc 1 3217 0 is_stmt 1
	movl	-168(%rbp), %eax	# tmpmode, tmp316
	cmpl	-164(%rbp), %eax	# result_reg_mode, tmp316
	je	.L680	#,
	.loc 1 3218 0
	movq	-128(%rbp), %rdx	# result_reg, tmp317
	movl	-168(%rbp), %eax	# tmpmode, tmp318
	movq	%rdx, %rsi	# tmp317,
	movl	%eax, %edi	# tmp318,
	call	gen_lowpart	#
	movq	%rax, -128(%rbp)	# tmp319, result_reg
.L680:
	.loc 1 3220 0
	movq	-128(%rbp), %rax	# result_reg, tmp320
	movq	%rax, %rdi	# tmp320,
	call	expand_value_return	#
.LBE84:
	.loc 1 3124 0
	jmp	.L629	#
.L642:
	.loc 1 3222 0
	cmpq	$0, -152(%rbp)	#, retval_rhs
	je	.L681	#,
	.loc 1 3223 0
	movq	-152(%rbp), %rax	# retval_rhs, tmp321
	movq	8(%rax), %rax	# retval_rhs_1->common.type, D.21037
	movzbl	16(%rax), %eax	# _199->common.code, D.21038
	cmpb	$5, %al	#, D.21038
	je	.L681	#,
	.loc 1 3224 0
	movq	-72(%rbp), %rax	# result_rtl, tmp322
	movzwl	(%rax), %eax	# result_rtl_80->code, D.21041
	cmpw	$61, %ax	#, D.21041
	je	.L682	#,
	.loc 1 3225 0
	movq	-72(%rbp), %rax	# result_rtl, tmp323
	movzwl	(%rax), %eax	# result_rtl_80->code, D.21041
	cmpw	$39, %ax	#, D.21041
	jne	.L681	#,
.L682:
.LBB85:
	.loc 1 3229 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.488
	movq	96(%rax), %rax	# current_function_decl.488_203->decl.result, D.21037
	movq	8(%rax), %rax	# _204->common.type, tmp324
	movq	%rax, -32(%rbp)	# tmp324, ot
	.loc 1 3230 0
	movq	-32(%rbp), %rax	# ot, tmp325
	movzbl	17(%rax), %eax	# *ot_205, tmp328
	shrb	$4, %al	#, D.21046
	andl	$1, %eax	#, D.21046
	movzbl	%al, %edx	# D.21046, D.21042
	movq	-32(%rbp), %rax	# ot, tmp329
	movzbl	17(%rax), %eax	# *ot_205, tmp332
	shrb	$3, %al	#, D.21046
	andl	$1, %eax	#, D.21046
	movzbl	%al, %eax	# D.21046, D.21042
	addl	%eax, %eax	# D.21042
	orl	%eax, %edx	# D.21042, D.21042
	movq	-32(%rbp), %rax	# ot, tmp333
	movzbl	62(%rax), %eax	# *ot_205, tmp336
	shrb	$5, %al	#, D.21046
	andl	$1, %eax	#, D.21046
	movzbl	%al, %eax	# D.21046, D.21042
	sall	$2, %eax	#, D.21042
	orl	%eax, %edx	# D.21042, D.21042
	movq	-32(%rbp), %rax	# ot, tmp337
	movzbl	16(%rax), %eax	# ot_205->common.code, D.21038
	cmpb	$20, %al	#, D.21038
	jne	.L683	#,
	.loc 1 3230 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ot, tmp338
	movq	8(%rax), %rax	# ot_205->common.type, D.21037
	testq	%rax, %rax	# D.21037
	je	.L683	#,
	.loc 1 3230 0 discriminator 3
	movl	$1, %eax	#, iftmp.489
	jmp	.L684	#
.L683:
	.loc 1 3230 0 discriminator 2
	movl	$0, %eax	#, iftmp.489
.L684:
	.loc 1 3230 0 discriminator 4
	sall	$3, %eax	#, D.21042
	orl	%edx, %eax	# D.21042, D.21042
	orl	$1, %eax	#, D.21042
	movl	%eax, %edx	# D.21042, D.21042
	movq	-32(%rbp), %rax	# ot, tmp339
	movl	%edx, %esi	# D.21042,
	movq	%rax, %rdi	# tmp339,
	call	build_qualified_type	#
	movq	%rax, -24(%rbp)	# tmp340, nt
	.loc 1 3232 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# nt, tmp341
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp341,
	call	assign_temp	#
	movq	%rax, -96(%rbp)	# tmp342, val
	.loc 1 3233 0 discriminator 4
	movq	-96(%rbp), %rax	# val, tmp343
	movzbl	2(%rax), %eax	# val_224->mode, D.21038
	movzbl	%al, %edx	# D.21038, D.21047
	movq	-96(%rbp), %rsi	# val, tmp344
	movq	-152(%rbp), %rax	# retval_rhs, tmp345
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp345,
	call	expand_expr	#
	movq	%rax, -96(%rbp)	# tmp346, val
	.loc 1 3234 0 discriminator 4
	movq	-96(%rbp), %rax	# val, tmp347
	movq	%rax, %rdi	# tmp347,
	call	force_not_mem	#
	movq	%rax, -96(%rbp)	# tmp348, val
	.loc 1 3235 0 discriminator 4
	call	emit_queue	#
	.loc 1 3237 0 discriminator 4
	movq	-96(%rbp), %rax	# val, tmp349
	movq	%rax, %rdi	# tmp349,
	call	expand_value_return	#
.LBE85:
	.loc 1 3226 0 discriminator 4
	jmp	.L629	#
.L681:
	.loc 1 3243 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.21040
	movq	-184(%rbp), %rax	# retval, tmp350
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp350,
	call	expand_expr	#
	.loc 1 3244 0
	call	emit_queue	#
	.loc 1 3245 0
	movq	-72(%rbp), %rax	# result_rtl, tmp351
	movq	%rax, %rdi	# tmp351,
	call	expand_value_return	#
.L629:
	.loc 1 3247 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	expand_return, .-expand_return
	.globl	drop_through_at_end_p
	.type	drop_through_at_end_p, @function
drop_through_at_end_p:
.LFB63:
	.loc 1 3254 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3255 0
	call	get_last_insn	#
	movq	%rax, -8(%rbp)	# tmp64, insn
	.loc 1 3256 0
	jmp	.L686	#
.L688:
	.loc 1 3257 0
	movq	-8(%rbp), %rax	# insn, tmp65
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, insn
.L686:
	.loc 1 3256 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L687	#,
	.loc 1 3256 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp67
	movzwl	(%rax), %eax	# insn_1->code, D.21049
	cmpw	$37, %ax	#, D.21049
	je	.L688	#,
.L687:
	.loc 1 3258 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L689	#,
	.loc 1 3258 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp68
	movzwl	(%rax), %eax	# insn_1->code, D.21049
	cmpw	$35, %ax	#, D.21049
	je	.L689	#,
	.loc 1 3258 0 discriminator 3
	movl	$1, %eax	#, iftmp.490
	jmp	.L690	#
.L689:
	.loc 1 3258 0 discriminator 2
	movl	$0, %eax	#, iftmp.490
.L690:
	.loc 1 3259 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	drop_through_at_end_p, .-drop_through_at_end_p
	.globl	optimize_tail_recursion
	.type	optimize_tail_recursion, @function
optimize_tail_recursion:
.LFB64:
	.loc 1 3271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# arguments, arguments
	movq	%rsi, -32(%rbp)	# last_insn, last_insn
	.loc 1 3274 0
	movq	current_function_decl(%rip), %rax	# current_function_decl, current_function_decl.491
	movq	88(%rax), %rdx	# current_function_decl.491_2->decl.arguments, D.21052
	movq	-24(%rbp), %rax	# arguments, tmp74
	movq	%rdx, %rsi	# D.21052,
	movq	%rax, %rdi	# tmp74,
	call	tail_recursion_args	#
	testl	%eax, %eax	# D.21051
	je	.L693	#,
	.loc 1 3276 0
	movq	cfun(%rip), %rax	# cfun, cfun.492
	movq	232(%rax), %rax	# cfun.492_6->x_tail_recursion_label, D.21053
	testq	%rax, %rax	# D.21053
	jne	.L694	#,
	.loc 1 3278 0
	movq	cfun(%rip), %rbx	# cfun, cfun.493
	call	gen_label_rtx	#
	movq	%rax, 232(%rbx)	# D.21053, cfun.493_8->x_tail_recursion_label
	.loc 1 3280 0
	movq	cfun(%rip), %rax	# cfun, cfun.494
	.loc 1 3279 0
	movq	240(%rax), %rdx	# cfun.494_10->x_tail_recursion_reentry, D.21053
	movq	cfun(%rip), %rax	# cfun, cfun.495
	movq	232(%rax), %rax	# cfun.495_12->x_tail_recursion_label, D.21053
	movq	%rdx, %rsi	# D.21053,
	movq	%rax, %rdi	# D.21053,
	call	emit_label_after	#
.L694:
	.loc 1 3282 0
	call	emit_queue	#
	.loc 1 3283 0
	movq	cfun(%rip), %rax	# cfun, cfun.496
	movq	232(%rax), %rax	# cfun.496_14->x_tail_recursion_label, D.21053
	movq	-32(%rbp), %rdx	# last_insn, tmp75
	movq	%rax, %rsi	# D.21053,
	movl	$0, %edi	#,
	call	expand_goto_internal	#
	.loc 1 3284 0
	call	emit_barrier	#
	.loc 1 3285 0
	movl	$1, %eax	#, D.21051
	jmp	.L695	#
.L693:
	.loc 1 3287 0
	movl	$0, %eax	#, D.21051
.L695:
	.loc 1 3288 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	optimize_tail_recursion, .-optimize_tail_recursion
	.type	tail_recursion_args, @function
tail_recursion_args:
.LFB65:
	.loc 1 3299 0
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
	movq	%rdi, -72(%rbp)	# actuals, actuals
	movq	%rsi, -80(%rbp)	# formals, formals
	.loc 1 3300 0
	movq	-72(%rbp), %rax	# actuals, tmp116
	movq	%rax, -40(%rbp)	# tmp116, a
	movq	-80(%rbp), %rax	# formals, tmp117
	movq	%rax, -32(%rbp)	# tmp117, f
	.loc 1 3311 0
	movq	-72(%rbp), %rax	# actuals, tmp118
	movq	%rax, -40(%rbp)	# tmp118, a
	movq	-80(%rbp), %rax	# formals, tmp119
	movq	%rax, -32(%rbp)	# tmp119, f
	movl	$0, -52(%rbp)	#, i
	jmp	.L697	#
.L705:
	.loc 1 3313 0
	movq	-40(%rbp), %rax	# a, tmp120
	movq	32(%rax), %rax	# a_1->list.value, D.21055
	movq	8(%rax), %rax	# _27->common.type, D.21055
	movq	128(%rax), %rdx	# _28->type.main_variant, D.21055
	.loc 1 3314 0
	movq	-32(%rbp), %rax	# f, tmp121
	movq	8(%rax), %rax	# f_5->common.type, D.21055
	movq	128(%rax), %rax	# _30->type.main_variant, D.21055
	.loc 1 3313 0
	cmpq	%rax, %rdx	# D.21055, D.21055
	je	.L698	#,
	.loc 1 3315 0
	movl	$0, %eax	#, D.21054
	jmp	.L699	#
.L698:
	.loc 1 3316 0
	movq	-32(%rbp), %rax	# f, tmp122
	movq	144(%rax), %rax	# f_5->decl.rtl, D.21056
	testq	%rax, %rax	# D.21056
	je	.L700	#,
	.loc 1 3316 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp123
	movq	144(%rax), %rax	# f_5->decl.rtl, iftmp.497
	jmp	.L701	#
.L700:
	.loc 1 3316 0 discriminator 2
	movq	-32(%rbp), %rax	# f, tmp124
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# f, tmp125
	movq	144(%rax), %rax	# f_5->decl.rtl, iftmp.497
.L701:
	.loc 1 3316 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.497_15->code, D.21057
	cmpw	$61, %ax	#, D.21057
	jne	.L702	#,
	.loc 1 3316 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp126
	movzbl	48(%rax), %eax	# f_5->decl.mode, D.21058
	cmpb	$51, %al	#, D.21058
	jne	.L703	#,
.L702:
	.loc 1 3317 0 is_stmt 1
	movl	$0, %eax	#, D.21054
	jmp	.L699	#
.L703:
	.loc 1 3311 0
	movq	-40(%rbp), %rax	# a, tmp127
	movq	(%rax), %rax	# a_1->common.chain, tmp128
	movq	%rax, -40(%rbp)	# tmp128, a
	movq	-32(%rbp), %rax	# f, tmp129
	movq	(%rax), %rax	# f_5->common.chain, tmp130
	movq	%rax, -32(%rbp)	# tmp130, f
	addl	$1, -52(%rbp)	#, i
.L697:
	.loc 1 3311 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, a
	je	.L704	#,
	.loc 1 3311 0 discriminator 2
	cmpq	$0, -32(%rbp)	#, f
	jne	.L705	#,
.L704:
	.loc 1 3319 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, a
	jne	.L706	#,
	.loc 1 3319 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, f
	je	.L707	#,
.L706:
	.loc 1 3320 0 is_stmt 1
	movl	$0, %eax	#, D.21054
	jmp	.L699	#
.L707:
	.loc 1 3324 0
	movl	-52(%rbp), %eax	# i, tmp131
	cltq
	salq	$3, %rax	#, D.21059
	leaq	15(%rax), %rdx	#, tmp132
	movl	$16, %eax	#, tmp195
	subq	$1, %rax	#, tmp133
	addq	%rdx, %rax	# tmp132, tmp134
	movl	$16, %ecx	#, tmp196
	movl	$0, %edx	#, tmp137
	divq	%rcx	# tmp196
	imulq	$16, %rax, %rax	#, tmp136, tmp138
	subq	%rax, %rsp	# tmp138,
	movq	%rsp, %rax	#, tmp139
	addq	$15, %rax	#, tmp140
	shrq	$4, %rax	#, tmp141
	salq	$4, %rax	#, tmp142
	movq	%rax, -24(%rbp)	# tmp142, argvec
	.loc 1 3326 0
	movq	-72(%rbp), %rax	# actuals, tmp143
	movq	%rax, -40(%rbp)	# tmp143, a
	movl	$0, -52(%rbp)	#, i
	jmp	.L708	#
.L709:
	.loc 1 3327 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp145
	leaq	(%rdx,%rax), %rbx	#, D.21060
	movq	-40(%rbp), %rax	# a, tmp146
	movq	32(%rax), %rax	# a_2->list.value, D.21055
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21055,
	call	expand_expr	#
	movq	%rax, (%rbx)	# D.21056, *_49
	.loc 1 3326 0 discriminator 2
	movq	-40(%rbp), %rax	# a, tmp147
	movq	(%rax), %rax	# a_2->common.chain, tmp148
	movq	%rax, -40(%rbp)	# tmp148, a
	addl	$1, -52(%rbp)	#, i
.L708:
	.loc 1 3326 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, a
	jne	.L709	#,
	.loc 1 3332 0 is_stmt 1
	movq	-72(%rbp), %rax	# actuals, tmp149
	movq	%rax, -40(%rbp)	# tmp149, a
	movl	$0, -52(%rbp)	#, i
	jmp	.L710	#
.L718:
.LBB86:
	.loc 1 3334 0
	movl	$0, -48(%rbp)	#, copy
	.loc 1 3336 0
	movq	-80(%rbp), %rax	# formals, tmp150
	movq	%rax, -32(%rbp)	# tmp150, f
	movl	$0, -44(%rbp)	#, j
	jmp	.L711	#
.L716:
	.loc 1 3337 0
	movl	-52(%rbp), %eax	# i, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp152
	addq	%rdx, %rax	# D.21059, D.21060
	movq	(%rax), %rbx	# *_61, D.21056
	movq	-32(%rbp), %rax	# f, tmp153
	movq	144(%rax), %rax	# f_6->decl.rtl, D.21056
	testq	%rax, %rax	# D.21056
	je	.L712	#,
	.loc 1 3337 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp154
	movq	144(%rax), %rax	# f_6->decl.rtl, iftmp.498
	jmp	.L713	#
.L712:
	.loc 1 3337 0 discriminator 2
	movq	-32(%rbp), %rax	# f, tmp155
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp155,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# f, tmp156
	movq	144(%rax), %rax	# f_6->decl.rtl, iftmp.498
.L713:
	.loc 1 3337 0 discriminator 3
	movq	%rbx, %rsi	# D.21056,
	movq	%rax, %rdi	# iftmp.498,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.21054
	je	.L714	#,
	.loc 1 3339 0 is_stmt 1
	movl	$1, -48(%rbp)	#, copy
	.loc 1 3340 0
	jmp	.L715	#
.L714:
	.loc 1 3336 0
	movq	-32(%rbp), %rax	# f, tmp157
	movq	(%rax), %rax	# f_6->common.chain, tmp158
	movq	%rax, -32(%rbp)	# tmp158, f
	addl	$1, -44(%rbp)	#, j
.L711:
	.loc 1 3336 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# j, tmp159
	cmpl	-52(%rbp), %eax	# i, tmp159
	jl	.L716	#,
.L715:
	.loc 1 3342 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, copy
	je	.L717	#,
	.loc 1 3343 0
	movl	-52(%rbp), %eax	# i, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp161
	leaq	(%rdx,%rax), %rbx	#, D.21060
	movl	-52(%rbp), %eax	# i, tmp162
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp163
	addq	%rdx, %rax	# D.21059, D.21060
	movq	(%rax), %rax	# *_75, D.21056
	movq	%rax, %rdi	# D.21056,
	call	copy_to_reg	#
	movq	%rax, (%rbx)	# D.21056, *_72
.L717:
.LBE86:
	.loc 1 3332 0
	movq	-40(%rbp), %rax	# a, tmp164
	movq	(%rax), %rax	# a_3->common.chain, tmp165
	movq	%rax, -40(%rbp)	# tmp165, a
	addl	$1, -52(%rbp)	#, i
.L710:
	.loc 1 3332 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, a
	jne	.L718	#,
	.loc 1 3348 0 is_stmt 1
	movq	-80(%rbp), %rax	# formals, tmp166
	movq	%rax, -32(%rbp)	# tmp166, f
	movq	-72(%rbp), %rax	# actuals, tmp167
	movq	%rax, -40(%rbp)	# tmp167, a
	movl	$0, -52(%rbp)	#, i
	jmp	.L719	#
.L728:
	.loc 1 3351 0
	movq	-32(%rbp), %rax	# f, tmp168
	movq	144(%rax), %rax	# f_7->decl.rtl, D.21056
	testq	%rax, %rax	# D.21056
	je	.L720	#,
	.loc 1 3351 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp169
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.499
	jmp	.L721	#
.L720:
	.loc 1 3351 0 discriminator 2
	movq	-32(%rbp), %rax	# f, tmp170
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# f, tmp171
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.499
.L721:
	.loc 1 3351 0 discriminator 3
	movzbl	2(%rax), %edx	# iftmp.499_17->mode, D.21058
	movl	-52(%rbp), %eax	# i, tmp172
	cltq
	leaq	0(,%rax,8), %rcx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp173
	addq	%rcx, %rax	# D.21059, D.21060
	movq	(%rax), %rax	# *_89, D.21056
	movzbl	2(%rax), %eax	# _90->mode, D.21058
	cmpb	%al, %dl	# D.21058, D.21058
	jne	.L722	#,
	.loc 1 3352 0 is_stmt 1
	movl	-52(%rbp), %eax	# i, tmp174
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp175
	addq	%rdx, %rax	# D.21059, D.21060
	movq	(%rax), %rbx	# *_94, D.21056
	movq	-32(%rbp), %rax	# f, tmp176
	movq	144(%rax), %rax	# f_7->decl.rtl, D.21056
	testq	%rax, %rax	# D.21056
	je	.L723	#,
	.loc 1 3352 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp177
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.500
	jmp	.L724	#
.L723:
	.loc 1 3352 0 discriminator 2
	movq	-32(%rbp), %rax	# f, tmp178
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp178,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# f, tmp179
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.500
.L724:
	.loc 1 3352 0 discriminator 1
	movq	%rbx, %rsi	# D.21056,
	movq	%rax, %rdi	# iftmp.500,
	call	emit_move_insn	#
	jmp	.L725	#
.L722:
	.loc 1 3355 0 is_stmt 1
	movq	-40(%rbp), %rax	# a, tmp180
	movq	32(%rax), %rax	# a_4->list.value, D.21055
	movq	8(%rax), %rax	# _99->common.type, D.21055
	movzbl	17(%rax), %eax	# *_100, tmp183
	shrb	$5, %al	#, D.21061
	andl	$1, %eax	#, D.21061
	.loc 1 3354 0
	movzbl	%al, %r12d	# D.21061, D.21054
	movl	-52(%rbp), %eax	# i, tmp184
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21059
	movq	-24(%rbp), %rax	# argvec, tmp185
	addq	%rdx, %rax	# D.21059, D.21060
	movq	(%rax), %rbx	# *_105, D.21056
	movq	-32(%rbp), %rax	# f, tmp186
	movq	144(%rax), %rax	# f_7->decl.rtl, D.21056
	testq	%rax, %rax	# D.21056
	je	.L726	#,
	.loc 1 3354 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f, tmp187
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.501
	jmp	.L727	#
.L726:
	.loc 1 3354 0 discriminator 2
	movq	-32(%rbp), %rax	# f, tmp188
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	make_decl_rtl	#
	movq	-32(%rbp), %rax	# f, tmp189
	movq	144(%rax), %rax	# f_7->decl.rtl, iftmp.501
.L727:
	.loc 1 3354 0 discriminator 3
	movl	%r12d, %edx	# D.21054,
	movq	%rbx, %rsi	# D.21056,
	movq	%rax, %rdi	# iftmp.501,
	call	convert_move	#
.L725:
	.loc 1 3349 0 is_stmt 1
	movq	-32(%rbp), %rax	# f, tmp190
	movq	(%rax), %rax	# f_7->common.chain, tmp191
	movq	%rax, -32(%rbp)	# tmp191, f
	movq	-40(%rbp), %rax	# a, tmp192
	movq	(%rax), %rax	# a_4->common.chain, tmp193
	movq	%rax, -40(%rbp)	# tmp193, a
	addl	$1, -52(%rbp)	#, i
.L719:
	.loc 1 3348 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, f
	jne	.L728	#,
	.loc 1 3358 0
	call	free_temp_slots	#
	.loc 1 3359 0
	movl	$1, %eax	#, D.21054
.L699:
	.loc 1 3360 0
	leaq	-16(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	tail_recursion_args, .-tail_recursion_args
	.globl	expand_start_bindings_and_block
	.type	expand_start_bindings_and_block, @function
expand_start_bindings_and_block:
.LFB66:
	.loc 1 3386 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# flags, flags
	movq	%rsi, -80(%rbp)	# block, block
.LBB87:
	.loc 1 3387 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB88:
	movq	-40(%rbp), %rax	# __h, tmp144
	movq	%rax, -32(%rbp)	# tmp144, __o
	movl	$120, -60(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp145
	movq	32(%rax), %rax	# __o_4->chunk_limit, D.21062
	movq	%rax, %rdx	# D.21062, D.21063
	movq	-32(%rbp), %rax	# __o, tmp146
	movq	24(%rax), %rax	# __o_4->next_free, D.21062
	subq	%rax, %rdx	# D.21063, D.21063
	movl	-60(%rbp), %eax	# __len, tmp147
	cltq
	cmpq	%rax, %rdx	# D.21063, D.21063
	jge	.L730	#,
	.loc 1 3387 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %edx	# __len, tmp148
	movq	-32(%rbp), %rax	# __o, tmp149
	movl	%edx, %esi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	_obstack_newchunk	#
.L730:
	.loc 1 3387 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp150
	movq	24(%rax), %rdx	# __o_4->next_free, D.21062
	movl	-60(%rbp), %eax	# __len, tmp151
	cltq
	addq	%rax, %rdx	# D.21064, D.21062
	movq	-32(%rbp), %rax	# __o, tmp152
	movq	%rdx, 24(%rax)	# D.21062, __o_4->next_free
.LBE88:
.LBB89:
	movq	-40(%rbp), %rax	# __h, tmp153
	movq	%rax, -24(%rbp)	# tmp153, __o1
	movq	-24(%rbp), %rax	# __o1, tmp154
	movq	16(%rax), %rax	# __o1_15->object_base, tmp155
	movq	%rax, -16(%rbp)	# tmp155, value
	movq	-24(%rbp), %rax	# __o1, tmp156
	movq	24(%rax), %rax	# __o1_15->next_free, D.21062
	cmpq	-16(%rbp), %rax	# value, D.21062
	jne	.L731	#,
	.loc 1 3387 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp157
	movzbl	80(%rax), %edx	# __o1_15->maybe_empty_object, tmp160
	orl	$2, %edx	#, tmp161
	movb	%dl, 80(%rax)	# tmp161, __o1_15->maybe_empty_object
.L731:
	.loc 1 3387 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp162
	movq	24(%rax), %rax	# __o1_15->next_free, D.21062
	movq	%rax, %rdx	# D.21062, D.21063
	movq	-24(%rbp), %rax	# __o1, tmp163
	movl	48(%rax), %eax	# __o1_15->alignment_mask, D.21065
	cltq
	addq	%rax, %rdx	# D.21063, D.21063
	movq	-24(%rbp), %rax	# __o1, tmp164
	movl	48(%rax), %eax	# __o1_15->alignment_mask, D.21065
	notl	%eax	# D.21065
	cltq
	andq	%rdx, %rax	# D.21063, D.21063
	movq	%rax, %rdx	# D.21063, D.21062
	movq	-24(%rbp), %rax	# __o1, tmp165
	movq	%rdx, 24(%rax)	# D.21062, __o1_15->next_free
	movq	-24(%rbp), %rax	# __o1, tmp166
	movq	24(%rax), %rax	# __o1_15->next_free, D.21062
	movq	%rax, %rdx	# D.21062, D.21063
	movq	-24(%rbp), %rax	# __o1, tmp167
	movq	8(%rax), %rax	# __o1_15->chunk, D.21066
	movq	%rdx, %rcx	# D.21063, D.21063
	subq	%rax, %rcx	# D.21063, D.21063
	movq	-24(%rbp), %rax	# __o1, tmp168
	movq	32(%rax), %rax	# __o1_15->chunk_limit, D.21062
	movq	%rax, %rdx	# D.21062, D.21063
	movq	-24(%rbp), %rax	# __o1, tmp169
	movq	8(%rax), %rax	# __o1_15->chunk, D.21066
	subq	%rax, %rdx	# D.21063, D.21063
	movq	%rdx, %rax	# D.21063, D.21063
	cmpq	%rax, %rcx	# D.21063, D.21063
	jle	.L732	#,
	.loc 1 3387 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp170
	movq	32(%rax), %rdx	# __o1_15->chunk_limit, D.21062
	movq	-24(%rbp), %rax	# __o1, tmp171
	movq	%rdx, 24(%rax)	# D.21062, __o1_15->next_free
.L732:
	.loc 1 3387 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp172
	movq	24(%rax), %rdx	# __o1_15->next_free, D.21062
	movq	-24(%rbp), %rax	# __o1, tmp173
	movq	%rdx, 16(%rax)	# D.21062, __o1_15->object_base
	movq	-16(%rbp), %rax	# value, D.21067
.LBE89:
.LBE87:
	movq	%rax, -8(%rbp)	# thisblock.502, thisblock
	.loc 1 3389 0 is_stmt 1 discriminator 2
	movl	-68(%rbp), %eax	# flags, tmp174
	andl	$1, %eax	#, D.21065
	testl	%eax, %eax	# D.21065
	setne	%al	#, D.21068
	movzbl	%al, %eax	# D.21068, tmp175
	movl	%eax, -56(%rbp)	# tmp175, exit_flag
	.loc 1 3390 0 discriminator 2
	movl	-68(%rbp), %eax	# flags, tmp176
	andl	$2, %eax	#, D.21065
	testl	%eax, %eax	# D.21065
	sete	%al	#, D.21068
	movzbl	%al, %eax	# D.21068, tmp177
	movl	%eax, -52(%rbp)	# tmp177, block_flag
	.loc 1 3394 0 discriminator 2
	cmpl	$0, -52(%rbp)	#, block_flag
	jne	.L733	#,
	.loc 1 3394 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, block
	je	.L733	#,
	.loc 1 3395 0 is_stmt 1
	movl	$__FUNCTION__.14581, %edx	#,
	movl	$3395, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L733:
	.loc 1 3398 0
	cmpl	$0, -52(%rbp)	#, block_flag
	je	.L734	#,
	.loc 1 3400 0
	movl	$-98, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -48(%rbp)	# tmp178, note
	.loc 1 3401 0
	movq	-48(%rbp), %rax	# note, tmp179
	movq	-80(%rbp), %rdx	# block, tmp180
	movq	%rdx, 32(%rax)	# tmp180, note_51->fld[3].rttree
	jmp	.L735	#
.L734:
	.loc 1 3404 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -48(%rbp)	# tmp181, note
.L735:
	.loc 1 3408 0
	movq	cfun(%rip), %rax	# cfun, cfun.503
	movq	8(%rax), %rax	# cfun.503_53->stmt, D.21069
	movq	(%rax), %rdx	# _54->x_block_stack, D.21070
	movq	-8(%rbp), %rax	# thisblock, tmp182
	movq	%rdx, 8(%rax)	# D.21070, thisblock_42->next
	.loc 1 3409 0
	movq	cfun(%rip), %rax	# cfun, cfun.504
	movq	8(%rax), %rax	# cfun.504_56->stmt, D.21069
	movq	40(%rax), %rdx	# _57->x_nesting_stack, D.21070
	movq	-8(%rbp), %rax	# thisblock, tmp183
	movq	%rdx, (%rax)	# D.21070, thisblock_42->all
	.loc 1 3410 0
	movq	cfun(%rip), %rax	# cfun, cfun.505
	movq	8(%rax), %rax	# cfun.505_59->stmt, D.21069
	movl	48(%rax), %edx	# _60->x_nesting_depth, D.21065
	addl	$1, %edx	#, D.21065
	movl	%edx, 48(%rax)	# D.21065, _60->x_nesting_depth
	movl	48(%rax), %edx	# _60->x_nesting_depth, D.21065
	movq	-8(%rbp), %rax	# thisblock, tmp184
	movl	%edx, 16(%rax)	# D.21065, thisblock_42->depth
	.loc 1 3411 0
	movq	-8(%rbp), %rax	# thisblock, tmp185
	movq	$0, 40(%rax)	#, thisblock_42->data.block.stack_level
	.loc 1 3412 0
	movq	-8(%rbp), %rax	# thisblock, tmp186
	movq	$0, 64(%rax)	#, thisblock_42->data.block.cleanups
	.loc 1 3413 0
	movq	-8(%rbp), %rax	# thisblock, tmp187
	movl	$0, 88(%rax)	#, thisblock_42->data.block.n_function_calls
	.loc 1 3414 0
	movq	-8(%rbp), %rax	# thisblock, tmp188
	movl	$0, 92(%rax)	#, thisblock_42->data.block.exception_region
	.loc 1 3415 0
	movq	cfun(%rip), %rax	# cfun, cfun.506
	movl	336(%rax), %edx	# cfun.506_64->x_target_temp_slot_level, D.21065
	movq	-8(%rbp), %rax	# thisblock, tmp189
	movl	%edx, 96(%rax)	# D.21065, thisblock_42->data.block.block_target_temp_slot_level
	.loc 1 3417 0
	movq	-8(%rbp), %rax	# thisblock, tmp190
	movl	$0, 100(%rax)	#, thisblock_42->data.block.conditional_code
	.loc 1 3418 0
	movq	-8(%rbp), %rax	# thisblock, tmp191
	movq	-48(%rbp), %rdx	# note, tmp192
	movq	%rdx, 104(%rax)	# tmp192, thisblock_42->data.block.last_unconditional_cleanup
	.loc 1 3425 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 3426 0
	movq	-8(%rbp), %rax	# thisblock, tmp193
	leaq	64(%rax), %rdx	#, D.21071
	movq	-8(%rbp), %rax	# thisblock, tmp194
	movq	%rdx, 112(%rax)	# D.21071, thisblock_42->data.block.cleanup_ptr
	.loc 1 3428 0
	movq	cfun(%rip), %rax	# cfun, cfun.507
	movq	8(%rax), %rax	# cfun.507_67->stmt, D.21069
	movq	(%rax), %rax	# _68->x_block_stack, D.21070
	testq	%rax, %rax	# D.21070
	je	.L736	#,
	.loc 1 3429 0
	movq	cfun(%rip), %rax	# cfun, cfun.508
	movq	8(%rax), %rax	# cfun.508_70->stmt, D.21069
	movq	(%rax), %rax	# _71->x_block_stack, D.21070
	movq	64(%rax), %rax	# _72->data.block.cleanups, D.21072
	testq	%rax, %rax	# D.21072
	jne	.L737	#,
	.loc 1 3430 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.509
	movq	8(%rax), %rax	# cfun.509_74->stmt, D.21069
	movq	(%rax), %rax	# _75->x_block_stack, D.21070
	movq	72(%rax), %rax	# _76->data.block.outer_cleanups, D.21072
	.loc 1 3429 0 discriminator 1
	testq	%rax, %rax	# D.21072
	je	.L736	#,
.L737:
	.loc 1 3433 0
	movq	cfun(%rip), %rax	# cfun, cfun.510
	movq	8(%rax), %rax	# cfun.510_78->stmt, D.21069
	movq	(%rax), %rax	# _79->x_block_stack, D.21070
	.loc 1 3432 0
	movq	72(%rax), %rdx	# _80->data.block.outer_cleanups, D.21072
	movq	cfun(%rip), %rax	# cfun, cfun.511
	movq	8(%rax), %rax	# cfun.511_82->stmt, D.21069
	movq	(%rax), %rax	# _83->x_block_stack, D.21070
	movq	64(%rax), %rax	# _84->data.block.cleanups, D.21072
	movq	%rax, %rsi	# D.21072,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	-8(%rbp), %rdx	# thisblock, tmp195
	movq	%rax, 72(%rdx)	# D.21072, thisblock_42->data.block.outer_cleanups
	jmp	.L738	#
.L736:
	.loc 1 3435 0
	movq	-8(%rbp), %rax	# thisblock, tmp196
	movq	$0, 72(%rax)	#, thisblock_42->data.block.outer_cleanups
.L738:
	.loc 1 3436 0
	movq	-8(%rbp), %rax	# thisblock, tmp197
	movq	$0, 80(%rax)	#, thisblock_42->data.block.label_chain
	.loc 1 3437 0
	movq	cfun(%rip), %rax	# cfun, cfun.512
	movq	8(%rax), %rax	# cfun.512_87->stmt, D.21069
	movq	8(%rax), %rdx	# _88->x_stack_block_stack, D.21070
	movq	-8(%rbp), %rax	# thisblock, tmp198
	movq	%rdx, 56(%rax)	# D.21070, thisblock_42->data.block.innermost_stack_block
	.loc 1 3438 0
	movq	-8(%rbp), %rax	# thisblock, tmp199
	movq	-48(%rbp), %rdx	# note, tmp200
	movq	%rdx, 48(%rax)	# tmp200, thisblock_42->data.block.first_insn
	.loc 1 3439 0
	movq	cfun(%rip), %rax	# cfun, cfun.513
	movq	8(%rax), %rax	# cfun.513_90->stmt, D.21069
	movl	52(%rax), %edx	# _91->x_block_start_count, D.21065
	addl	$1, %edx	#, D.21065
	movl	%edx, 52(%rax)	# D.21065, _91->x_block_start_count
	movl	52(%rax), %edx	# _91->x_block_start_count, D.21065
	movq	-8(%rbp), %rax	# thisblock, tmp201
	movl	%edx, 32(%rax)	# D.21065, thisblock_42->data.block.block_start_count
	.loc 1 3440 0
	cmpl	$0, -56(%rbp)	#, exit_flag
	je	.L739	#,
	.loc 1 3440 0 is_stmt 0 discriminator 1
	call	gen_label_rtx	#
	jmp	.L740	#
.L739:
	.loc 1 3440 0 discriminator 2
	movl	$0, %eax	#, iftmp.514
.L740:
	.loc 1 3440 0 discriminator 3
	movq	-8(%rbp), %rdx	# thisblock, tmp202
	movq	%rax, 24(%rdx)	# iftmp.514, thisblock_42->exit_label
	.loc 1 3441 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.515
	movq	8(%rax), %rax	# cfun.515_97->stmt, D.21069
	movq	-8(%rbp), %rdx	# thisblock, tmp203
	movq	%rdx, (%rax)	# tmp203, _98->x_block_stack
	.loc 1 3442 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.516
	movq	8(%rax), %rax	# cfun.516_99->stmt, D.21069
	movq	-8(%rbp), %rdx	# thisblock, tmp204
	movq	%rdx, 40(%rax)	# tmp204, _100->x_nesting_stack
	.loc 1 3445 0 discriminator 3
	call	push_temp_slots	#
	.loc 1 3446 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	expand_start_bindings_and_block, .-expand_start_bindings_and_block
	.globl	expand_start_target_temps
	.type	expand_start_target_temps, @function
expand_start_target_temps:
.LFB67:
	.loc 1 3456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3459 0
	call	push_temp_slots	#
	.loc 1 3463 0
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	expand_start_bindings_and_block	#
	.loc 1 3465 0
	movq	cfun(%rip), %rax	# cfun, cfun.517
	movq	cfun(%rip), %rdx	# cfun, cfun.518
	movl	328(%rdx), %edx	# cfun.518_2->x_temp_slot_level, D.21073
	movl	%edx, 336(%rax)	# D.21073, cfun.517_1->x_target_temp_slot_level
	.loc 1 3466 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	expand_start_target_temps, .-expand_start_target_temps
	.globl	expand_end_target_temps
	.type	expand_end_target_temps, @function
expand_end_target_temps:
.LFB68:
	.loc 1 3470 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3471 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	expand_end_bindings	#
	.loc 1 3475 0
	call	pop_temp_slots	#
	.loc 1 3476 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	expand_end_target_temps, .-expand_end_target_temps
	.globl	is_body_block
	.type	is_body_block, @function
is_body_block:
.LFB69:
	.loc 1 3491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# stmt, stmt
	.loc 1 3492 0
	movq	-24(%rbp), %rax	# stmt, tmp64
	movzbl	16(%rax), %eax	# stmt_2(D)->common.code, D.21075
	cmpb	$4, %al	#, D.21075
	jne	.L744	#,
.LBB90:
	.loc 1 3494 0
	movq	-24(%rbp), %rax	# stmt, tmp65
	movq	48(%rax), %rax	# stmt_2(D)->block.supercontext, tmp66
	movq	%rax, -16(%rbp)	# tmp66, parent
	.loc 1 3496 0
	cmpq	$0, -16(%rbp)	#, parent
	je	.L744	#,
	.loc 1 3496 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# parent, tmp67
	movzbl	16(%rax), %eax	# parent_4->common.code, D.21075
	cmpb	$4, %al	#, D.21075
	jne	.L744	#,
.LBB91:
	.loc 1 3498 0 is_stmt 1
	movq	-16(%rbp), %rax	# parent, tmp68
	movq	48(%rax), %rax	# parent_4->block.supercontext, tmp69
	movq	%rax, -8(%rbp)	# tmp69, grandparent
	.loc 1 3500 0
	cmpq	$0, -8(%rbp)	#, grandparent
	je	.L744	#,
	.loc 1 3500 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# grandparent, tmp70
	movzbl	16(%rax), %eax	# grandparent_6->common.code, D.21075
	cmpb	$30, %al	#, D.21075
	jne	.L744	#,
	.loc 1 3501 0 is_stmt 1
	movl	$1, %eax	#, D.21074
	jmp	.L745	#
.L744:
.LBE91:
.LBE90:
	.loc 1 3505 0
	movl	$0, %eax	#, D.21074
.L745:
	.loc 1 3506 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	is_body_block, .-is_body_block
	.globl	conditional_context
	.type	conditional_context, @function
conditional_context:
.LFB70:
	.loc 1 3514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3515 0
	movq	cfun(%rip), %rax	# cfun, cfun.520
	movq	8(%rax), %rax	# cfun.520_2->stmt, D.21076
	movq	(%rax), %rax	# _3->x_block_stack, D.21077
	testq	%rax, %rax	# D.21077
	je	.L747	#,
	.loc 1 3515 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.521
	movq	8(%rax), %rax	# cfun.521_5->stmt, D.21076
	movq	(%rax), %rax	# _6->x_block_stack, D.21077
	movl	100(%rax), %eax	# _7->data.block.conditional_code, D.21078
	testl	%eax, %eax	# D.21078
	je	.L747	#,
	.loc 1 3515 0 discriminator 3
	movl	$1, %eax	#, iftmp.519
	jmp	.L748	#
.L747:
	.loc 1 3515 0 discriminator 2
	movl	$0, %eax	#, iftmp.519
.L748:
	.loc 1 3516 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	conditional_context, .-conditional_context
	.globl	current_nesting_level
	.type	current_nesting_level, @function
current_nesting_level:
.LFB71:
	.loc 1 3523 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 3524 0
	movq	cfun(%rip), %rax	# cfun, cfun.523
	testq	%rax, %rax	# cfun.523
	je	.L751	#,
	.loc 1 3524 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.524
	movq	8(%rax), %rax	# cfun.524_3->stmt, D.21079
	movq	(%rax), %rax	# _4->x_block_stack, iftmp.522
	jmp	.L752	#
.L751:
	.loc 1 3524 0 discriminator 2
	movl	$0, %eax	#, iftmp.522
.L752:
	.loc 1 3525 0 is_stmt 1 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	current_nesting_level, .-current_nesting_level
	.type	expand_nl_handler_label, @function
expand_nl_handler_label:
.LFB72:
	.loc 1 3533 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# slot, slot
	movq	%rsi, -32(%rbp)	# before_insn, before_insn
	.loc 1 3535 0
	call	gen_label_rtx	#
	movq	%rax, -16(%rbp)	# tmp65, handler_label
	.loc 1 3538 0
	movq	-16(%rbp), %rax	# handler_label, tmp66
	movzbl	3(%rax), %edx	# handler_label_2->in_struct, tmp69
	orl	$16, %edx	#, tmp70
	movb	%dl, 3(%rax)	# tmp70, handler_label_2->in_struct
	.loc 1 3540 0
	call	start_sequence	#
	.loc 1 3541 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.526
	andl	$33554432, %eax	#, D.21081
	testl	%eax, %eax	# D.21081
	je	.L755	#,
	.loc 1 3541 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.525
	jmp	.L756	#
.L755:
	.loc 1 3541 0 discriminator 2
	movl	$4, %eax	#, iftmp.525
.L756:
	.loc 1 3541 0 discriminator 3
	movq	-16(%rbp), %rdx	# handler_label, tmp71
	movl	%eax, %esi	# iftmp.525,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, %rdx	#, D.21082
	movq	-24(%rbp), %rax	# slot, tmp72
	movq	%rdx, %rsi	# D.21082,
	movq	%rax, %rdi	# tmp72,
	call	emit_move_insn	#
	.loc 1 3542 0 is_stmt 1 discriminator 3
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp73, insns
	.loc 1 3543 0 discriminator 3
	call	end_sequence	#
	.loc 1 3544 0 discriminator 3
	movq	-32(%rbp), %rdx	# before_insn, tmp74
	movq	-8(%rbp), %rax	# insns, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	emit_insns_before	#
	.loc 1 3546 0 discriminator 3
	movq	-16(%rbp), %rax	# handler_label, tmp76
	movq	%rax, %rdi	# tmp76,
	call	emit_label	#
	.loc 1 3548 0 discriminator 3
	movq	-16(%rbp), %rax	# handler_label, D.21083
	.loc 1 3549 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	expand_nl_handler_label, .-expand_nl_handler_label
	.type	expand_nl_goto_receiver, @function
expand_nl_goto_receiver:
.LFB73:
	.loc 1 3555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3570 0
	movq	global_rtl+32(%rip), %rdx	# global_rtl, D.21084
	movq	global_rtl+56(%rip), %rax	# global_rtl, D.21084
	movq	%rdx, %rsi	# D.21084,
	movq	%rax, %rdi	# D.21084,
	call	emit_move_insn	#
	.loc 1 3573 0
	movzbl	fixed_regs+16(%rip), %eax	# fixed_regs, D.21085
	testb	%al, %al	# D.21085
	je	.L758	#,
.LBB92:
	.loc 1 3584 0
	movq	$0, -8(%rbp)	#, i
	jmp	.L760	#
.L763:
	.loc 1 3585 0
	movq	-8(%rbp), %rax	# i, tmp68
	movl	elim_regs.14606(,%rax,8), %eax	# elim_regs[i_1].from, D.21086
	cmpl	$16, %eax	#, D.21086
	jne	.L761	#,
	.loc 1 3586 0
	movq	-8(%rbp), %rax	# i, tmp69
	movl	elim_regs.14606+4(,%rax,8), %eax	# elim_regs[i_1].to, D.21086
	cmpl	$6, %eax	#, D.21086
	jne	.L761	#,
	.loc 1 3587 0
	jmp	.L762	#
.L761:
	.loc 1 3584 0
	addq	$1, -8(%rbp)	#, i
.L760:
	.loc 1 3584 0 is_stmt 0 discriminator 1
	cmpq	$3, -8(%rbp)	#, i
	jbe	.L763	#,
.L762:
	.loc 1 3589 0 is_stmt 1
	cmpq	$4, -8(%rbp)	#, i
	jne	.L758	#,
	.loc 1 3594 0
	movq	cfun(%rip), %rax	# cfun, cfun.527
	movq	%rax, %rdi	# cfun.527,
	call	get_arg_pointer_save_area	#
	movq	%rax, %rdi	# D.21084,
	call	copy_to_reg	#
	movq	%rax, %rdx	#, D.21084
	movq	global_rtl+48(%rip), %rax	# global_rtl, D.21084
	movq	%rdx, %rsi	# D.21084,
	movq	%rax, %rdi	# D.21084,
	call	emit_move_insn	#
.L758:
.LBE92:
	.loc 1 3604 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	expand_nl_goto_receiver, .-expand_nl_goto_receiver
	.type	expand_nl_goto_receivers, @function
expand_nl_goto_receivers:
.LFB74:
	.loc 1 3612 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# thisblock, thisblock
	.loc 1 3614 0
	call	gen_label_rtx	#
	movq	%rax, -40(%rbp)	# tmp83, afterward
	.loc 1 3621 0
	movq	-88(%rbp), %rax	# thisblock, tmp84
	movq	8(%rax), %rax	# thisblock_14(D)->next, D.21087
	testq	%rax, %rax	# D.21087
	je	.L765	#,
	.loc 1 3622 0
	movq	cfun(%rip), %rax	# cfun, cfun.528
	movq	168(%rax), %rax	# cfun.528_16->x_nonlocal_goto_handler_slots, tmp85
	movq	%rax, -56(%rbp)	# tmp85, slot
	jmp	.L766	#
.L769:
.LBB93:
	.loc 1 3624 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.530
	andl	$33554432, %eax	#, D.21088
	testl	%eax, %eax	# D.21088
	je	.L767	#,
	.loc 1 3624 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.529
	jmp	.L768	#
.L767:
	.loc 1 3624 0 discriminator 2
	movl	$4, %eax	#, iftmp.529
.L768:
	.loc 1 3624 0 discriminator 3
	movl	%eax, %edi	# iftmp.529,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp86, save_receiver
	.loc 1 3625 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# slot, tmp87
	movq	8(%rax), %rax	# slot_3->fld[0].rtx, D.21089
	movq	-32(%rbp), %rdx	# save_receiver, tmp88
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# D.21089,
	call	emit_move_insn	#
	.loc 1 3627 0 discriminator 3
	call	start_sequence	#
	.loc 1 3628 0 discriminator 3
	movq	-56(%rbp), %rax	# slot, tmp89
	movq	8(%rax), %rdx	# slot_3->fld[0].rtx, D.21089
	movq	-32(%rbp), %rax	# save_receiver, tmp90
	movq	%rdx, %rsi	# D.21089,
	movq	%rax, %rdi	# tmp90,
	call	emit_move_insn	#
	.loc 1 3629 0 discriminator 3
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp91, insns
	.loc 1 3630 0 discriminator 3
	call	end_sequence	#
	.loc 1 3631 0 discriminator 3
	movq	-88(%rbp), %rax	# thisblock, tmp92
	movq	48(%rax), %rdx	# thisblock_14(D)->data.block.first_insn, D.21089
	movq	-24(%rbp), %rax	# insns, tmp93
	movq	%rdx, %rsi	# D.21089,
	movq	%rax, %rdi	# tmp93,
	call	emit_insns_before	#
.LBE93:
	.loc 1 3622 0 discriminator 3
	movq	-56(%rbp), %rax	# slot, tmp94
	movq	16(%rax), %rax	# slot_3->fld[1].rtx, tmp95
	movq	%rax, -56(%rbp)	# tmp95, slot
.L766:
	.loc 1 3622 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, slot
	jne	.L769	#,
.L765:
	.loc 1 3635 0 is_stmt 1
	movq	-40(%rbp), %rax	# afterward, tmp96
	movq	%rax, %rdi	# tmp96,
	call	emit_jump	#
	.loc 1 3638 0
	movq	cfun(%rip), %rax	# cfun, cfun.531
	movq	160(%rax), %rax	# cfun.531_28->x_nonlocal_labels, tmp97
	movq	%rax, -64(%rbp)	# tmp97, link
	.loc 1 3639 0
	movq	cfun(%rip), %rax	# cfun, cfun.532
	movq	168(%rax), %rax	# cfun.532_30->x_nonlocal_goto_handler_slots, tmp98
	movq	%rax, -56(%rbp)	# tmp98, slot
	.loc 1 3640 0
	movq	$0, -48(%rbp)	#, label_list
	.loc 1 3641 0
	jmp	.L770	#
.L772:
	.loc 1 3645 0
	movq	-64(%rbp), %rax	# link, tmp99
	movq	32(%rax), %rax	# link_1->list.value, D.21090
	movzbl	49(%rax), %eax	# *_33, D.21091
	andl	$16, %eax	#, D.21091
	testb	%al, %al	# D.21091
	jne	.L771	#,
.LBB94:
	.loc 1 3648 0
	movq	-88(%rbp), %rax	# thisblock, tmp100
	movq	48(%rax), %rdx	# thisblock_14(D)->data.block.first_insn, D.21089
	movq	-56(%rbp), %rax	# slot, tmp101
	movq	8(%rax), %rax	# slot_4->fld[0].rtx, D.21089
	movq	%rdx, %rsi	# D.21089,
	movq	%rax, %rdi	# D.21089,
	call	expand_nl_handler_label	#
	movq	%rax, -16(%rbp)	# tmp102, lab
	.loc 1 3650 0
	movq	-48(%rbp), %rdx	# label_list, tmp103
	movq	-16(%rbp), %rax	# lab, tmp104
	movq	%rdx, %rcx	# tmp103,
	movq	%rax, %rdx	# tmp104,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp105, label_list
	.loc 1 3652 0
	call	expand_nl_goto_receiver	#
	.loc 1 3655 0
	movq	-64(%rbp), %rax	# link, tmp106
	movq	32(%rax), %rax	# link_1->list.value, D.21090
	movq	%rax, %rdi	# D.21090,
	call	expand_goto	#
.L771:
.LBE94:
	.loc 1 3641 0
	movq	-64(%rbp), %rax	# link, tmp107
	movq	(%rax), %rax	# link_1->common.chain, tmp108
	movq	%rax, -64(%rbp)	# tmp108, link
	movq	-56(%rbp), %rax	# slot, tmp109
	movq	16(%rax), %rax	# slot_4->fld[1].rtx, tmp110
	movq	%rax, -56(%rbp)	# tmp110, slot
.L770:
	.loc 1 3641 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, link
	jne	.L772	#,
	.loc 1 3660 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.533
	movq	160(%rax), %rax	# cfun.533_43->x_nonlocal_labels, tmp111
	movq	%rax, -64(%rbp)	# tmp111, link
	.loc 1 3661 0
	movq	cfun(%rip), %rax	# cfun, cfun.534
	movq	168(%rax), %rax	# cfun.534_45->x_nonlocal_goto_handler_slots, tmp112
	movq	%rax, -56(%rbp)	# tmp112, slot
	.loc 1 3662 0
	movl	$0, -68(%rbp)	#, any_invalid
	.loc 1 3663 0
	jmp	.L773	#
.L775:
	.loc 1 3664 0
	movq	-64(%rbp), %rax	# link, tmp113
	movq	32(%rax), %rax	# link_2->list.value, D.21090
	movzbl	49(%rax), %eax	# *_48, D.21091
	andl	$16, %eax	#, D.21091
	testb	%al, %al	# D.21091
	je	.L774	#,
.LBB95:
	.loc 1 3667 0
	movq	-88(%rbp), %rax	# thisblock, tmp114
	movq	48(%rax), %rdx	# thisblock_14(D)->data.block.first_insn, D.21089
	movq	-56(%rbp), %rax	# slot, tmp115
	movq	8(%rax), %rax	# slot_5->fld[0].rtx, D.21089
	movq	%rdx, %rsi	# D.21089,
	movq	%rax, %rdi	# D.21089,
	call	expand_nl_handler_label	#
	movq	%rax, -8(%rbp)	# tmp116, lab
	.loc 1 3669 0
	movq	-48(%rbp), %rdx	# label_list, tmp117
	movq	-8(%rbp), %rax	# lab, tmp118
	movq	%rdx, %rcx	# tmp117,
	movq	%rax, %rdx	# tmp118,
	movl	$0, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -48(%rbp)	# tmp119, label_list
	.loc 1 3670 0
	movl	$1, -68(%rbp)	#, any_invalid
.L774:
.LBE95:
	.loc 1 3663 0
	movq	-64(%rbp), %rax	# link, tmp120
	movq	(%rax), %rax	# link_2->common.chain, tmp121
	movq	%rax, -64(%rbp)	# tmp121, link
	movq	-56(%rbp), %rax	# slot, tmp122
	movq	16(%rax), %rax	# slot_5->fld[1].rtx, tmp123
	movq	%rax, -56(%rbp)	# tmp123, slot
.L773:
	.loc 1 3663 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, link
	jne	.L775	#,
	.loc 1 3673 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, any_invalid
	je	.L776	#,
	.loc 1 3675 0
	call	expand_nl_goto_receiver	#
	.loc 1 3676 0
	call	expand_builtin_trap	#
.L776:
	.loc 1 3679 0
	movq	cfun(%rip), %rax	# cfun, cfun.535
	movq	-48(%rbp), %rdx	# label_list, tmp124
	movq	%rdx, 176(%rax)	# tmp124, cfun.535_58->x_nonlocal_goto_handler_labels
	.loc 1 3680 0
	movq	-40(%rbp), %rax	# afterward, tmp125
	movq	%rax, %rdi	# tmp125,
	call	emit_label	#
	.loc 1 3681 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	expand_nl_goto_receivers, .-expand_nl_goto_receivers
	.section	.rodata
.LC26:
	.string	"unused variable `%s'"
	.text
	.globl	warn_about_unused_variables
	.type	warn_about_unused_variables, @function
warn_about_unused_variables:
.LFB75:
	.loc 1 3690 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# vars, vars
	.loc 1 3693 0
	movl	warn_unused_variable(%rip), %eax	# warn_unused_variable, warn_unused_variable.536
	testl	%eax, %eax	# warn_unused_variable.536
	je	.L777	#,
	.loc 1 3694 0
	movq	-24(%rbp), %rax	# vars, tmp68
	movq	%rax, -8(%rbp)	# tmp68, decl
	jmp	.L779	#
.L781:
	.loc 1 3695 0
	movq	-8(%rbp), %rax	# decl, tmp69
	movzbl	16(%rax), %eax	# decl_1->common.code, D.21092
	cmpb	$34, %al	#, D.21092
	jne	.L780	#,
	.loc 1 3696 0
	movq	-8(%rbp), %rax	# decl, tmp70
	movzbl	18(%rax), %eax	# *decl_1, D.21092
	andl	$1, %eax	#, D.21092
	testb	%al, %al	# D.21092
	jne	.L780	#,
	.loc 1 3697 0
	movq	-8(%rbp), %rax	# decl, tmp71
	movzbl	50(%rax), %eax	# *decl_1, D.21092
	andl	$1, %eax	#, D.21092
	testb	%al, %al	# D.21092
	jne	.L780	#,
	.loc 1 3698 0
	movq	-8(%rbp), %rax	# decl, tmp72
	movq	72(%rax), %rax	# decl_1->decl.name, D.21093
	testq	%rax, %rax	# D.21093
	je	.L780	#,
	.loc 1 3698 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# decl, tmp73
	movzbl	50(%rax), %eax	# *decl_1, D.21092
	andl	$64, %eax	#, D.21092
	testb	%al, %al	# D.21092
	jne	.L780	#,
	.loc 1 3699 0 is_stmt 1
	movq	-8(%rbp), %rax	# decl, tmp74
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	warning_with_decl	#
.L780:
	.loc 1 3694 0
	movq	-8(%rbp), %rax	# decl, tmp75
	movq	(%rax), %rax	# decl_1->common.chain, tmp76
	movq	%rax, -8(%rbp)	# tmp76, decl
.L779:
	.loc 1 3694 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, decl
	jne	.L781	#,
.L777:
	.loc 1 3700 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	warn_about_unused_variables, .-warn_about_unused_variables
	.globl	expand_end_bindings
	.type	expand_end_bindings, @function
expand_end_bindings:
.LFB76:
	.loc 1 3719 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# vars, vars
	movl	%esi, -108(%rbp)	# mark_ends, mark_ends
	movl	%edx, -112(%rbp)	# dont_jump_in, dont_jump_in
	.loc 1 3720 0
	movq	cfun(%rip), %rax	# cfun, cfun.537
	movq	8(%rax), %rax	# cfun.537_6->stmt, D.21095
	movq	(%rax), %rax	# _7->x_block_stack, tmp184
	movq	%rax, -64(%rbp)	# tmp184, thisblock
	.loc 1 3724 0
	movq	-104(%rbp), %rax	# vars, tmp185
	movq	%rax, %rdi	# tmp185,
	call	warn_about_unused_variables	#
	.loc 1 3726 0
	movq	-64(%rbp), %rax	# thisblock, tmp186
	movq	24(%rax), %rax	# thisblock_8->exit_label, D.21096
	testq	%rax, %rax	# D.21096
	je	.L783	#,
	.loc 1 3728 0
	call	do_pending_stack_adjust	#
	.loc 1 3729 0
	movq	-64(%rbp), %rax	# thisblock, tmp187
	movq	24(%rax), %rax	# thisblock_8->exit_label, D.21096
	movq	%rax, %rdi	# D.21096,
	call	emit_label	#
.L783:
	.loc 1 3734 0
	movq	cfun(%rip), %rax	# cfun, cfun.538
	movl	152(%rax), %edx	# cfun.538_12->x_function_call_count, D.21097
	movq	-64(%rbp), %rax	# thisblock, tmp188
	movl	88(%rax), %eax	# thisblock_8->data.block.n_function_calls, D.21097
	cmpl	%eax, %edx	# D.21097, D.21097
	je	.L784	#,
	.loc 1 3735 0
	movq	cfun(%rip), %rax	# cfun, cfun.539
	movq	160(%rax), %rax	# cfun.539_15->x_nonlocal_labels, D.21098
	testq	%rax, %rax	# D.21098
	je	.L784	#,
	.loc 1 3738 0
	movq	-64(%rbp), %rax	# thisblock, tmp189
	movq	8(%rax), %rax	# thisblock_8->next, D.21099
	testq	%rax, %rax	# D.21099
	jne	.L785	#,
	.loc 1 3738 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.541
	movzbl	425(%rax), %eax	# *cfun.541_18, D.21100
	andl	$1, %eax	#, D.21100
	testb	%al, %al	# D.21100
	setne	%al	#, iftmp.540
	jmp	.L786	#
.L785:
	.loc 1 3741 0 is_stmt 1
	movq	-64(%rbp), %rax	# thisblock, tmp190
	movq	64(%rax), %rax	# thisblock_8->data.block.cleanups, D.21098
	.loc 1 3742 0
	testq	%rax, %rax	# D.21098
	jne	.L787	#,
	.loc 1 3742 0 is_stmt 0 discriminator 2
	movq	-64(%rbp), %rax	# thisblock, tmp191
	movq	40(%rax), %rax	# thisblock_8->data.block.stack_level, D.21096
	testq	%rax, %rax	# D.21096
	je	.L788	#,
.L787:
	.loc 1 3742 0 discriminator 1
	movl	$1, %eax	#, iftmp.542
	jmp	.L789	#
.L788:
	.loc 1 3742 0 discriminator 3
	movl	$0, %eax	#, iftmp.542
.L789:
	.loc 1 3738 0 is_stmt 1
	andl	$1, %eax	#, iftmp.540
.L786:
	.loc 1 3738 0 is_stmt 0 discriminator 2
	testb	%al, %al	# iftmp.540
	je	.L784	#,
	.loc 1 3743 0 is_stmt 1
	movq	-64(%rbp), %rax	# thisblock, tmp192
	movq	%rax, %rdi	# tmp192,
	call	expand_nl_goto_receivers	#
.L784:
	.loc 1 3747 0
	cmpl	$0, -112(%rbp)	#, dont_jump_in
	jne	.L790	#,
	.loc 1 3748 0
	movq	-64(%rbp), %rax	# thisblock, tmp193
	movq	40(%rax), %rax	# thisblock_8->data.block.stack_level, D.21096
	testq	%rax, %rax	# D.21096
	je	.L791	#,
.L790:
.LBB96:
	.loc 1 3754 0
	movq	-64(%rbp), %rax	# thisblock, tmp194
	movq	80(%rax), %rax	# thisblock_8->data.block.label_chain, tmp195
	movq	%rax, -80(%rbp)	# tmp195, chain
	jmp	.L792	#
.L794:
	.loc 1 3756 0
	movq	-80(%rbp), %rax	# chain, tmp196
	movq	8(%rax), %rax	# chain_1->label, D.21098
	movzbl	49(%rax), %edx	#, tmp199
	orl	$16, %edx	#, tmp200
	movb	%dl, 49(%rax)	# tmp200,
	.loc 1 3760 0
	movq	-80(%rbp), %rax	# chain, tmp201
	movq	8(%rax), %rax	# chain_1->label, D.21098
	movzbl	17(%rax), %eax	# *_31, D.21100
	andl	$4, %eax	#, D.21100
	testb	%al, %al	# D.21100
	je	.L793	#,
	.loc 1 3761 0
	movq	-80(%rbp), %rax	# chain, tmp202
	movq	8(%rax), %rax	# chain_1->label, D.21098
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# D.21098,
	movl	$0, %eax	#,
	call	error_with_decl	#
.L793:
	.loc 1 3754 0
	movq	-80(%rbp), %rax	# chain, tmp203
	movq	(%rax), %rax	# chain_1->next, tmp204
	movq	%rax, -80(%rbp)	# tmp204, chain
.L792:
	.loc 1 3754 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, chain
	jne	.L794	#,
.L791:
.LBE96:
	.loc 1 3770 0 is_stmt 1
	movq	-64(%rbp), %rax	# thisblock, tmp205
	movq	40(%rax), %rax	# thisblock_8->data.block.stack_level, D.21096
	testq	%rax, %rax	# D.21096
	jne	.L795	#,
	.loc 1 3771 0
	movq	-64(%rbp), %rax	# thisblock, tmp206
	movq	64(%rax), %rax	# thisblock_8->data.block.cleanups, D.21098
	testq	%rax, %rax	# D.21098
	je	.L796	#,
.L795:
.LBB97:
	.loc 1 3777 0
	movq	cfun(%rip), %rax	# cfun, cfun.543
	movq	8(%rax), %rax	# cfun.543_38->stmt, D.21095
	movl	72(%rax), %eax	# _39->x_expr_stmts_for_value, tmp207
	movl	%eax, -88(%rbp)	# tmp207, old_expr_stmts_for_value
	.loc 1 3778 0
	movq	cfun(%rip), %rax	# cfun, cfun.544
	movq	8(%rax), %rax	# cfun.544_41->stmt, D.21095
	movq	64(%rax), %rax	# _42->x_last_expr_value, tmp208
	movq	%rax, -56(%rbp)	# tmp208, old_last_expr_value
	.loc 1 3779 0
	movq	cfun(%rip), %rax	# cfun, cfun.545
	movq	8(%rax), %rax	# cfun.545_44->stmt, D.21095
	movq	56(%rax), %rax	# _45->x_last_expr_type, tmp209
	movq	%rax, -48(%rbp)	# tmp209, old_last_expr_type
	.loc 1 3780 0
	movq	cfun(%rip), %rax	# cfun, cfun.546
	movq	8(%rax), %rax	# cfun.546_47->stmt, D.21095
	movl	$0, 72(%rax)	#, _48->x_expr_stmts_for_value
	.loc 1 3783 0
	call	get_last_insn	#
	movq	%rax, -72(%rbp)	# tmp210, insn
	.loc 1 3784 0
	movq	-72(%rbp), %rax	# insn, tmp211
	movzwl	(%rax), %eax	# insn_49->code, D.21101
	cmpw	$37, %ax	#, D.21101
	jne	.L797	#,
	.loc 1 3785 0
	movq	-72(%rbp), %rax	# insn, tmp212
	movq	%rax, %rdi	# tmp212,
	call	prev_nonnote_insn	#
	movq	%rax, -72(%rbp)	# tmp213, insn
.L797:
	.loc 1 3786 0
	cmpq	$0, -72(%rbp)	#, insn
	je	.L798	#,
	.loc 1 3786 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# insn, tmp214
	movzwl	(%rax), %eax	# insn_2->code, D.21101
	cmpw	$35, %ax	#, D.21101
	je	.L799	#,
.L798:
	.loc 1 3786 0 discriminator 1
	movl	$1, %eax	#, iftmp.547
	jmp	.L800	#
.L799:
	.loc 1 3786 0 discriminator 3
	movl	$0, %eax	#, iftmp.547
.L800:
	.loc 1 3786 0 discriminator 4
	movl	%eax, -84(%rbp)	# iftmp.547, reachable
	.loc 1 3789 0 is_stmt 1 discriminator 4
	movq	-64(%rbp), %rax	# thisblock, tmp215
	movq	64(%rax), %rax	# thisblock_8->data.block.cleanups, D.21098
	movl	-84(%rbp), %edx	# reachable, tmp216
	movl	%edx, %ecx	# tmp216,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21098,
	call	expand_cleanups	#
	.loc 1 3790 0 discriminator 4
	cmpl	$0, -84(%rbp)	#, reachable
	je	.L801	#,
	.loc 1 3791 0
	call	do_pending_stack_adjust	#
.L801:
	.loc 1 3793 0
	movq	cfun(%rip), %rax	# cfun, cfun.548
	movq	8(%rax), %rax	# cfun.548_57->stmt, D.21095
	movl	-88(%rbp), %edx	# old_expr_stmts_for_value, tmp217
	movl	%edx, 72(%rax)	# tmp217, _58->x_expr_stmts_for_value
	.loc 1 3794 0
	movq	cfun(%rip), %rax	# cfun, cfun.549
	movq	8(%rax), %rax	# cfun.549_59->stmt, D.21095
	movq	-56(%rbp), %rdx	# old_last_expr_value, tmp218
	movq	%rdx, 64(%rax)	# tmp218, _60->x_last_expr_value
	.loc 1 3795 0
	movq	cfun(%rip), %rax	# cfun, cfun.550
	movq	8(%rax), %rax	# cfun.550_61->stmt, D.21095
	movq	-48(%rbp), %rdx	# old_last_expr_type, tmp219
	movq	%rdx, 56(%rax)	# tmp219, _62->x_last_expr_type
	.loc 1 3799 0
	cmpl	$0, -84(%rbp)	#, reachable
	je	.L802	#,
	.loc 1 3799 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# thisblock, tmp220
	movq	40(%rax), %rax	# thisblock_8->data.block.stack_level, D.21096
	testq	%rax, %rax	# D.21096
	je	.L802	#,
	.loc 1 3801 0 is_stmt 1
	movq	-64(%rbp), %rax	# thisblock, tmp221
	movq	40(%rax), %rcx	# thisblock_8->data.block.stack_level, D.21096
	movq	-64(%rbp), %rax	# thisblock, tmp222
	movq	8(%rax), %rax	# thisblock_8->next, D.21099
	testq	%rax, %rax	# D.21099
	sete	%al	#, D.21102
	movzbl	%al, %eax	# D.21102, D.21103
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.21096,
	movl	%eax, %edi	# D.21103,
	call	emit_stack_restore	#
	.loc 1 3803 0
	movq	cfun(%rip), %rax	# cfun, cfun.551
	movq	168(%rax), %rax	# cfun.551_68->x_nonlocal_goto_handler_slots, D.21096
	testq	%rax, %rax	# D.21096
	je	.L802	#,
	.loc 1 3804 0
	movq	cfun(%rip), %rax	# cfun, cfun.552
	addq	$184, %rax	#, D.21104
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.21104,
	movl	$2, %edi	#,
	call	emit_stack_save	#
.L802:
	.loc 1 3811 0
	movq	-64(%rbp), %rax	# thisblock, tmp223
	movq	48(%rax), %rcx	# thisblock_8->data.block.first_insn, D.21096
	movq	-64(%rbp), %rax	# thisblock, tmp224
	movq	64(%rax), %rdx	# thisblock_8->data.block.cleanups, D.21098
	movq	-64(%rbp), %rax	# thisblock, tmp225
	movq	40(%rax), %rsi	# thisblock_8->data.block.stack_level, D.21096
	movl	-112(%rbp), %edi	# dont_jump_in, tmp226
	movq	-64(%rbp), %rax	# thisblock, tmp227
	movl	%edi, %r8d	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	fixup_gotos	#
.L796:
.LBE97:
	.loc 1 3822 0
	cmpl	$0, -108(%rbp)	#, mark_ends
	je	.L803	#,
.LBB98:
	.loc 1 3824 0
	movl	$-97, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	movq	%rax, -40(%rbp)	# tmp228, note
	.loc 1 3825 0
	movq	-64(%rbp), %rax	# thisblock, tmp229
	movq	48(%rax), %rax	# thisblock_8->data.block.first_insn, D.21096
	movq	32(%rax), %rdx	# _77->fld[3].rttree, D.21098
	movq	-40(%rbp), %rax	# note, tmp230
	movq	%rdx, 32(%rax)	# D.21098, note_76->fld[3].rttree
.LBE98:
	jmp	.L804	#
.L803:
	.loc 1 3829 0
	movq	-64(%rbp), %rax	# thisblock, tmp231
	movq	48(%rax), %rax	# thisblock_8->data.block.first_insn, D.21096
	movl	$-99, 40(%rax)	#, _79->fld[4].rtint
.L804:
	.loc 1 3832 0
	movq	cfun(%rip), %rax	# cfun, cfun.553
	movq	-64(%rbp), %rdx	# thisblock, tmp232
	movl	96(%rdx), %edx	# thisblock_8->data.block.block_target_temp_slot_level, D.21097
	movl	%edx, 336(%rax)	# D.21097, cfun.553_80->x_target_temp_slot_level
	.loc 1 3836 0
	movq	cfun(%rip), %rax	# cfun, cfun.554
	movq	8(%rax), %rax	# cfun.554_82->stmt, D.21095
	movq	-64(%rbp), %rdx	# thisblock, tmp233
	movq	56(%rdx), %rdx	# thisblock_8->data.block.innermost_stack_block, D.21099
	movq	%rdx, 8(%rax)	# D.21099, _83->x_stack_block_stack
.LBB99:
	.loc 1 3837 0
	movq	cfun(%rip), %rax	# cfun, cfun.555
	movq	8(%rax), %rax	# cfun.555_85->stmt, D.21095
	movq	(%rax), %rax	# _86->x_block_stack, tmp234
	movq	%rax, -32(%rbp)	# tmp234, target
.L812:
	.loc 1 3837 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.556
	movq	8(%rax), %rax	# cfun.556_88->stmt, D.21095
	movq	40(%rax), %rax	# _89->x_nesting_stack, tmp235
	movq	%rax, -24(%rbp)	# tmp235, this
	movq	cfun(%rip), %rax	# cfun, cfun.557
	movq	8(%rax), %rax	# cfun.557_91->stmt, D.21095
	movq	24(%rax), %rax	# _92->x_loop_stack, D.21099
	cmpq	-24(%rbp), %rax	# this, D.21099
	jne	.L805	#,
	movq	cfun(%rip), %rax	# cfun, cfun.558
	movq	8(%rax), %rax	# cfun.558_94->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.559
	movq	8(%rdx), %rdx	# cfun.559_96->stmt, D.21095
	movq	24(%rdx), %rdx	# _97->x_loop_stack, D.21099
	movq	8(%rdx), %rdx	# _98->next, D.21099
	movq	%rdx, 24(%rax)	# D.21099, _95->x_loop_stack
.L805:
	.loc 1 3837 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.560
	movq	8(%rax), %rax	# cfun.560_100->stmt, D.21095
	movq	16(%rax), %rax	# _101->x_cond_stack, D.21099
	cmpq	-24(%rbp), %rax	# this, D.21099
	jne	.L806	#,
	.loc 1 3837 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.561
	movq	8(%rax), %rax	# cfun.561_103->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.562
	movq	8(%rdx), %rdx	# cfun.562_105->stmt, D.21095
	movq	16(%rdx), %rdx	# _106->x_cond_stack, D.21099
	movq	8(%rdx), %rdx	# _107->next, D.21099
	movq	%rdx, 16(%rax)	# D.21099, _104->x_cond_stack
.L806:
	.loc 1 3837 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.563
	movq	8(%rax), %rax	# cfun.563_109->stmt, D.21095
	movq	(%rax), %rax	# _110->x_block_stack, D.21099
	cmpq	-24(%rbp), %rax	# this, D.21099
	jne	.L807	#,
	.loc 1 3837 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.564
	movq	8(%rax), %rax	# cfun.564_112->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.565
	movq	8(%rdx), %rdx	# cfun.565_114->stmt, D.21095
	movq	(%rdx), %rdx	# _115->x_block_stack, D.21099
	movq	8(%rdx), %rdx	# _116->next, D.21099
	movq	%rdx, (%rax)	# D.21099, _113->x_block_stack
.L807:
	.loc 1 3837 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.566
	movq	8(%rax), %rax	# cfun.566_118->stmt, D.21095
	movq	8(%rax), %rax	# _119->x_stack_block_stack, D.21099
	cmpq	-24(%rbp), %rax	# this, D.21099
	jne	.L808	#,
	.loc 1 3837 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.567
	movq	8(%rax), %rax	# cfun.567_121->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.568
	movq	8(%rdx), %rdx	# cfun.568_123->stmt, D.21095
	movq	8(%rdx), %rdx	# _124->x_stack_block_stack, D.21099
	movq	8(%rdx), %rdx	# _125->next, D.21099
	movq	%rdx, 8(%rax)	# D.21099, _122->x_stack_block_stack
.L808:
	.loc 1 3837 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.569
	movq	8(%rax), %rax	# cfun.569_127->stmt, D.21095
	movq	32(%rax), %rax	# _128->x_case_stack, D.21099
	cmpq	-24(%rbp), %rax	# this, D.21099
	jne	.L809	#,
	.loc 1 3837 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.570
	movq	8(%rax), %rax	# cfun.570_130->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.571
	movq	8(%rdx), %rdx	# cfun.571_132->stmt, D.21095
	movq	32(%rdx), %rdx	# _133->x_case_stack, D.21099
	movq	8(%rdx), %rdx	# _134->next, D.21099
	movq	%rdx, 32(%rax)	# D.21099, _131->x_case_stack
.L809:
	.loc 1 3837 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.572
	movq	8(%rax), %rax	# cfun.572_136->stmt, D.21095
	movq	cfun(%rip), %rdx	# cfun, cfun.573
	movq	8(%rdx), %rdx	# cfun.573_138->stmt, D.21095
	movq	40(%rdx), %rdx	# _139->x_nesting_stack, D.21099
	movl	16(%rdx), %edx	# _140->depth, D.21097
	subl	$1, %edx	#, D.21097
	movl	%edx, 48(%rax)	# D.21097, _137->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.574
	movq	8(%rax), %rax	# cfun.574_143->stmt, D.21095
	movq	-24(%rbp), %rdx	# this, tmp236
	movq	(%rdx), %rdx	# this_90->all, D.21099
	movq	%rdx, 40(%rax)	# D.21099, _144->x_nesting_stack
.LBB100:
	movq	$stmt_obstack, -16(%rbp)	#, __o
	movq	-24(%rbp), %rax	# this, tmp237
	movq	%rax, -8(%rbp)	# tmp237, __obj
	movq	-16(%rbp), %rax	# __o, tmp238
	movq	8(%rax), %rax	# __o_146->chunk, D.21105
	cmpq	-8(%rbp), %rax	# __obj, D.21105
	jae	.L810	#,
	.loc 1 3837 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp239
	movq	32(%rax), %rax	# __o_146->chunk_limit, D.21106
	cmpq	-8(%rbp), %rax	# __obj, D.21106
	jbe	.L810	#,
	movq	-16(%rbp), %rax	# __o, tmp240
	movq	-8(%rbp), %rdx	# __obj, tmp241
	movq	%rdx, 16(%rax)	# tmp241, __o_146->object_base
	movq	-16(%rbp), %rax	# __o, tmp242
	movq	16(%rax), %rdx	# __o_146->object_base, D.21106
	movq	-16(%rbp), %rax	# __o, tmp243
	movq	%rdx, 24(%rax)	# D.21106, __o_146->next_free
	jmp	.L811	#
.L810:
	.loc 1 3837 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp244
	movq	-16(%rbp), %rax	# __o, tmp245
	movq	%rdx, %rsi	# tmp244,
	movq	%rax, %rdi	# tmp245,
	call	obstack_free	#
.L811:
.LBE100:
	.loc 1 3837 0 discriminator 1
	movq	-24(%rbp), %rax	# this, tmp246
	cmpq	-32(%rbp), %rax	# target, tmp246
	jne	.L812	#,
.LBE99:
	.loc 1 3840 0 is_stmt 1
	call	pop_temp_slots	#
	.loc 1 3841 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	expand_end_bindings, .-expand_end_bindings
	.globl	save_stack_pointer
	.type	save_stack_pointer, @function
save_stack_pointer:
.LFB77:
	.loc 1 3848 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 3849 0
	movq	cfun(%rip), %rax	# cfun, cfun.575
	movq	8(%rax), %rax	# cfun.575_1->stmt, D.21107
	movq	(%rax), %rax	# _2->x_block_stack, tmp69
	movq	%rax, -8(%rbp)	# tmp69, thisblock
	.loc 1 3851 0
	movq	-8(%rbp), %rax	# thisblock, tmp70
	movq	40(%rax), %rax	# thisblock_3->data.block.stack_level, D.21108
	testq	%rax, %rax	# D.21108
	jne	.L813	#,
	.loc 1 3853 0
	movq	-8(%rbp), %rax	# thisblock, tmp71
	movq	48(%rax), %rdx	# thisblock_3->data.block.first_insn, D.21108
	movq	-8(%rbp), %rax	# thisblock, tmp72
	leaq	40(%rax), %rcx	#, D.21109
	movq	-8(%rbp), %rax	# thisblock, tmp73
	movq	8(%rax), %rax	# thisblock_3->next, D.21110
	testq	%rax, %rax	# D.21110
	sete	%al	#, D.21111
	movzbl	%al, %eax	# D.21111, D.21112
	movq	%rcx, %rsi	# D.21109,
	movl	%eax, %edi	# D.21112,
	call	emit_stack_save	#
	.loc 1 3856 0
	movq	cfun(%rip), %rax	# cfun, cfun.576
	movq	8(%rax), %rax	# cfun.576_10->stmt, D.21107
	movq	-8(%rbp), %rdx	# thisblock, tmp74
	movq	%rdx, 8(%rax)	# tmp74, _11->x_stack_block_stack
.L813:
	.loc 1 3858 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	save_stack_pointer, .-save_stack_pointer
	.globl	expand_decl
	.type	expand_decl, @function
expand_decl:
.LFB78:
	.loc 1 3866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# decl, decl
	.loc 1 3870 0
	movq	-104(%rbp), %rax	# decl, tmp183
	movq	8(%rax), %rax	# decl_18(D)->common.type, tmp184
	movq	%rax, -72(%rbp)	# tmp184, type
	.loc 1 3874 0
	movq	-104(%rbp), %rax	# decl, tmp185
	movzbl	16(%rax), %eax	# decl_18(D)->common.code, D.21113
	cmpb	$32, %al	#, D.21113
	jne	.L816	#,
	.loc 1 3876 0
	movq	-72(%rbp), %rax	# type, tmp186
	movzbl	61(%rax), %eax	# *type_19, tmp189
	shrb	%al	# D.21114
	movl	%eax, %edx	# D.21114, D.21113
	movq	-104(%rbp), %rax	# decl, tmp190
	movb	%dl, 48(%rax)	# D.21113, decl_18(D)->decl.mode
	.loc 1 3877 0
	movq	-72(%rbp), %rax	# type, tmp191
	movl	64(%rax), %eax	# type_19->type.align, D.21115
	andl	$16777215, %eax	#, D.21116
	movl	%eax, %edx	# D.21116, D.21116
	movq	-104(%rbp), %rax	# decl, tmp192
	movl	%edx, %ecx	# D.21116, tmp194
	andl	$16777215, %ecx	#, tmp194
	movl	56(%rax), %edx	#, tmp195
	andl	$-16777216, %edx	#, tmp196
	orl	%ecx, %edx	# tmp194, tmp197
	movl	%edx, 56(%rax)	# tmp197,
	.loc 1 3878 0
	movq	-72(%rbp), %rax	# type, tmp198
	movq	32(%rax), %rdx	# type_19->type.size, D.21117
	movq	-104(%rbp), %rax	# decl, tmp199
	movq	%rdx, 40(%rax)	# D.21117, decl_18(D)->decl.size
	.loc 1 3879 0
	movq	-72(%rbp), %rax	# type, tmp200
	movq	40(%rax), %rdx	# type_19->type.size_unit, D.21117
	movq	-104(%rbp), %rax	# decl, tmp201
	movq	%rdx, 64(%rax)	# D.21117, decl_18(D)->decl.size_unit
	.loc 1 3880 0
	jmp	.L815	#
.L816:
	.loc 1 3887 0
	movq	-104(%rbp), %rax	# decl, tmp202
	movzbl	16(%rax), %eax	# decl_18(D)->common.code, D.21113
	cmpb	$34, %al	#, D.21113
	je	.L818	#,
	.loc 1 3888 0
	jmp	.L815	#
.L818:
	.loc 1 3890 0
	movq	-104(%rbp), %rax	# decl, tmp203
	movzbl	18(%rax), %eax	# *decl_18(D), D.21113
	andl	$4, %eax	#, D.21113
	testb	%al, %al	# D.21113
	jne	.L819	#,
	.loc 1 3890 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp204
	movzbl	49(%rax), %eax	# *decl_18(D), D.21113
	andl	$1, %eax	#, D.21113
	testb	%al, %al	# D.21113
	je	.L820	#,
.L819:
	.loc 1 3891 0 is_stmt 1
	jmp	.L815	#
.L820:
	.loc 1 3893 0
	movq	cfun(%rip), %rax	# cfun, cfun.577
	movq	8(%rax), %rax	# cfun.577_32->stmt, D.21118
	movq	(%rax), %rax	# _33->x_block_stack, tmp205
	movq	%rax, -64(%rbp)	# tmp205, thisblock
	.loc 1 3897 0
	movq	global_trees(%rip), %rax	# global_trees, D.21117
	cmpq	-72(%rbp), %rax	# type, D.21117
	jne	.L821	#,
	.loc 1 3898 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.21119
	movq	%rax, %rsi	# D.21119,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	-104(%rbp), %rdx	# decl, tmp206
	movq	%rax, 144(%rdx)	# D.21119, decl_18(D)->decl.rtl
	jmp	.L815	#
.L821:
	.loc 1 3900 0
	movq	-104(%rbp), %rax	# decl, tmp207
	movq	40(%rax), %rax	# decl_18(D)->decl.size, D.21117
	testq	%rax, %rax	# D.21117
	jne	.L822	#,
.LBB101:
	.loc 1 3904 0
	movq	-104(%rbp), %rax	# decl, tmp208
	movq	104(%rax), %rax	# decl_18(D)->decl.initial, D.21117
	testq	%rax, %rax	# D.21117
	jne	.L823	#,
	.loc 1 3906 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.21119
	movq	%rax, %rsi	# D.21119,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, -88(%rbp)	# tmp209, x
	jmp	.L824	#
.L823:
	.loc 1 3910 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.579
	andl	$33554432, %eax	#, D.21120
	testl	%eax, %eax	# D.21120
	je	.L825	#,
	.loc 1 3910 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.578
	jmp	.L826	#
.L825:
	.loc 1 3910 0 discriminator 2
	movl	$4, %eax	#, iftmp.578
.L826:
	.loc 1 3910 0 discriminator 3
	movl	%eax, %edi	# iftmp.578,
	call	gen_reg_rtx	#
	movq	%rax, %rsi	# D.21119,
	movl	$51, %edi	#,
	call	gen_rtx_MEM	#
	movq	%rax, -88(%rbp)	# tmp210, x
.L824:
	.loc 1 3912 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rcx	# decl, tmp211
	movq	-88(%rbp), %rax	# x, tmp212
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	set_mem_attributes	#
	.loc 1 3913 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp213
	movq	-88(%rbp), %rdx	# x, tmp214
	movq	%rdx, 144(%rax)	# tmp214, decl_18(D)->decl.rtl
.LBE101:
	jmp	.L815	#
.L822:
	.loc 1 3915 0
	movq	-104(%rbp), %rax	# decl, tmp215
	movzbl	48(%rax), %eax	# decl_18(D)->decl.mode, D.21113
	cmpb	$51, %al	#, D.21113
	je	.L827	#,
	.loc 1 3918 0
	movl	flag_float_store(%rip), %eax	# flag_float_store, flag_float_store.580
	testl	%eax, %eax	# flag_float_store.580
	je	.L828	#,
	.loc 1 3919 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp216
	movzbl	16(%rax), %eax	# type_19->common.code, D.21113
	.loc 1 3918 0 discriminator 1
	cmpb	$7, %al	#, D.21113
	je	.L827	#,
.L828:
	.loc 1 3920 0
	movq	-104(%rbp), %rax	# decl, tmp217
	movzbl	17(%rax), %eax	# *decl_18(D), D.21113
	andl	$8, %eax	#, D.21113
	testb	%al, %al	# D.21113
	jne	.L827	#,
	.loc 1 3921 0
	movq	-104(%rbp), %rax	# decl, tmp218
	movzbl	49(%rax), %eax	# *decl_18(D), D.21113
	andl	$4, %eax	#, D.21113
	testb	%al, %al	# D.21113
	jne	.L829	#,
	.loc 1 3921 0 is_stmt 0 discriminator 1
	movl	optimize(%rip), %eax	# optimize, optimize.581
	testl	%eax, %eax	# optimize.581
	je	.L827	#,
.L829:
.LBB102:
	.loc 1 3924 0 is_stmt 1
	movq	-72(%rbp), %rax	# type, tmp219
	movzbl	17(%rax), %eax	# *type_19, tmp222
	shrb	$5, %al	#, D.21121
	andl	$1, %eax	#, D.21121
	movzbl	%al, %eax	# D.21121, unsignedp.582
	movl	%eax, -96(%rbp)	# unsignedp.582, unsignedp
	.loc 1 3926 0
	movq	-104(%rbp), %rax	# decl, tmp223
	movzbl	48(%rax), %eax	# decl_18(D)->decl.mode, D.21113
	movzbl	%al, %esi	# D.21113, D.21122
	.loc 1 3925 0
	leaq	-96(%rbp), %rdx	#, tmp224
	movq	-72(%rbp), %rax	# type, tmp225
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp225,
	call	promote_mode	#
	movl	%eax, -92(%rbp)	# tmp226, reg_mode
	.loc 1 3928 0
	movl	-92(%rbp), %eax	# reg_mode, tmp227
	movl	%eax, %edi	# tmp227,
	call	gen_reg_rtx	#
	movq	-104(%rbp), %rdx	# decl, tmp228
	movq	%rax, 144(%rdx)	# D.21119, decl_18(D)->decl.rtl
	.loc 1 3930 0
	movq	-104(%rbp), %rax	# decl, tmp229
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L830	#,
	.loc 1 3930 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp230
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.583
	jmp	.L831	#
.L830:
	.loc 1 3930 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp231
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp232
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.583
.L831:
	.loc 1 3930 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.583_4->code, D.21123
	cmpw	$61, %ax	#, D.21123
	jne	.L832	#,
	.loc 1 3931 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.584
	movq	24(%rax), %rax	# cfun.584_66->emit, D.21124
	movq	72(%rax), %rbx	# _67->regno_decl, D.21125
	movq	-104(%rbp), %rax	# decl, tmp233
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L833	#,
	.loc 1 3931 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp234
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.585
	jmp	.L834	#
.L833:
	.loc 1 3931 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp235
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp236
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.585
.L834:
	.loc 1 3931 0 discriminator 1
	movl	8(%rax), %eax	# iftmp.585_5->fld[0].rtuint, D.21115
	movl	%eax, %eax	# D.21115, D.21126
	salq	$3, %rax	#, D.21126
	leaq	(%rbx,%rax), %rdx	#, D.21125
	movq	-104(%rbp), %rax	# decl, tmp237
	movq	%rax, (%rdx)	# tmp237, *_75
	jmp	.L835	#
.L832:
	.loc 1 3932 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp238
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L836	#,
	.loc 1 3932 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp239
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.586
	jmp	.L837	#
.L836:
	.loc 1 3932 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp240
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp241
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.586
.L837:
	.loc 1 3932 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.586_6->code, D.21123
	cmpw	$65, %ax	#, D.21123
	jne	.L835	#,
	.loc 1 3934 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.587
	movq	24(%rax), %rax	# cfun.587_80->emit, D.21124
	movq	72(%rax), %rbx	# _81->regno_decl, D.21125
	movq	-104(%rbp), %rax	# decl, tmp242
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L838	#,
	.loc 1 3934 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp243
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.588
	jmp	.L839	#
.L838:
	.loc 1 3934 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp244
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp244,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp245
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.588
.L839:
	.loc 1 3934 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.588_7->fld[0].rtx, D.21119
	movl	8(%rax), %eax	# _86->fld[0].rtuint, D.21115
	movl	%eax, %eax	# D.21115, D.21126
	salq	$3, %rax	#, D.21126
	leaq	(%rbx,%rax), %rdx	#, D.21125
	movq	-104(%rbp), %rax	# decl, tmp246
	movq	%rax, (%rdx)	# tmp246, *_90
	.loc 1 3935 0 is_stmt 1 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.589
	movq	24(%rax), %rax	# cfun.589_91->emit, D.21124
	movq	72(%rax), %rbx	# _92->regno_decl, D.21125
	movq	-104(%rbp), %rax	# decl, tmp247
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L840	#,
	.loc 1 3935 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp248
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.590
	jmp	.L841	#
.L840:
	.loc 1 3935 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp249
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp249,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp250
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.590
.L841:
	.loc 1 3935 0 discriminator 3
	movq	16(%rax), %rax	# iftmp.590_8->fld[1].rtx, D.21119
	movl	8(%rax), %eax	# _97->fld[0].rtuint, D.21115
	movl	%eax, %eax	# D.21115, D.21126
	salq	$3, %rax	#, D.21126
	leaq	(%rbx,%rax), %rdx	#, D.21125
	movq	-104(%rbp), %rax	# decl, tmp251
	movq	%rax, (%rdx)	# tmp251, *_101
.L835:
	.loc 1 3938 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp252
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L842	#,
	.loc 1 3938 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp253
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.591
	jmp	.L843	#
.L842:
	.loc 1 3938 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp254
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp255
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.591
.L843:
	.loc 1 3938 0 discriminator 3
	movq	%rax, %rdi	# iftmp.591,
	call	mark_user_reg	#
	.loc 1 3940 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# type, tmp256
	movzbl	16(%rax), %eax	# type_19->common.code, D.21113
	cmpb	$13, %al	#, D.21113
	je	.L844	#,
	.loc 1 3940 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp257
	movzbl	16(%rax), %eax	# type_19->common.code, D.21113
	cmpb	$15, %al	#, D.21113
	jne	.L845	#,
.L844:
	.loc 1 3942 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp258
	movq	8(%rax), %rax	# decl_18(D)->common.type, D.21117
	movq	8(%rax), %rax	# _107->common.type, D.21117
	movl	64(%rax), %eax	# _108->type.align, D.21115
	.loc 1 3941 0
	movl	%eax, %ebx	# D.21115, D.21120
	movq	-104(%rbp), %rax	# decl, tmp259
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L846	#,
	.loc 1 3941 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp260
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.592
	jmp	.L847	#
.L846:
	.loc 1 3941 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp261
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp261,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp262
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.592
.L847:
	.loc 1 3941 0 discriminator 3
	movl	%ebx, %esi	# D.21120,
	movq	%rax, %rdi	# iftmp.592,
	call	mark_reg_pointer	#
.L845:
	.loc 1 3944 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp263
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L848	#,
	.loc 1 3944 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp264
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.593
	jmp	.L849	#
.L848:
	.loc 1 3944 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp265
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp265,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp266
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.593
.L849:
	.loc 1 3944 0 discriminator 3
	movq	-104(%rbp), %rdx	# decl, tmp267
	movq	%rdx, %rsi	# tmp267,
	movq	%rax, %rdi	# iftmp.593,
	call	maybe_set_unchanging	#
	.loc 1 3947 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# decl, tmp268
	movzbl	17(%rax), %eax	# *decl_18(D), D.21113
	andl	$4, %eax	#, D.21113
	testb	%al, %al	# D.21113
	je	.L850	#,
	.loc 1 3948 0
	movq	-104(%rbp), %rax	# decl, tmp269
	movq	%rax, %rdi	# tmp269,
	call	put_var_into_stack	#
.LBE102:
	.loc 1 3922 0
	jmp	.L815	#
.L850:
	jmp	.L815	#
.L827:
	.loc 1 3951 0
	movq	-104(%rbp), %rax	# decl, tmp270
	movq	64(%rax), %rax	# decl_18(D)->decl.size_unit, D.21117
	movzbl	16(%rax), %eax	# _119->common.code, D.21113
	cmpb	$25, %al	#, D.21113
	jne	.L851	#,
	.loc 1 3952 0
	movl	flag_stack_check(%rip), %eax	# flag_stack_check, flag_stack_check.594
	testl	%eax, %eax	# flag_stack_check.594
	je	.L852	#,
	.loc 1 3953 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp271
	movq	64(%rax), %rax	# decl_18(D)->decl.size_unit, D.21117
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.21117,
	call	compare_tree_int	#
	.loc 1 3952 0 discriminator 1
	testl	%eax, %eax	# D.21120
	jg	.L851	#,
.L852:
.LBB103:
	.loc 1 3957 0
	movq	$0, -80(%rbp)	#, oldaddr
	.loc 1 3965 0
	movq	-104(%rbp), %rax	# decl, tmp272
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L853	#,
	.loc 1 3967 0
	movq	-104(%rbp), %rax	# decl, tmp273
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L854	#,
	.loc 1 3967 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp274
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.595
	jmp	.L855	#
.L854:
	.loc 1 3967 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp275
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp276
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.595
.L855:
	.loc 1 3967 0 discriminator 3
	movzwl	(%rax), %eax	# iftmp.595_12->code, D.21123
	cmpw	$66, %ax	#, D.21123
	jne	.L856	#,
	.loc 1 3968 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp277
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L857	#,
	.loc 1 3968 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp278
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.596
	jmp	.L858	#
.L857:
	.loc 1 3968 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp279
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp280
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.596
.L858:
	.loc 1 3968 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.596_13->fld[0].rtx, D.21119
	movzwl	(%rax), %eax	# _133->code, D.21123
	cmpw	$61, %ax	#, D.21123
	je	.L859	#,
.L856:
	.loc 1 3969 0 is_stmt 1
	movl	$__FUNCTION__.14675, %edx	#,
	movl	$3969, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L859:
	.loc 1 3970 0
	movq	-104(%rbp), %rax	# decl, tmp281
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L860	#,
	.loc 1 3970 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp282
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.597
	jmp	.L861	#
.L860:
	.loc 1 3970 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp283
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp284
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.597
.L861:
	.loc 1 3970 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.597_14->fld[0].rtx, tmp285
	movq	%rax, -80(%rbp)	# tmp285, oldaddr
.L853:
	.loc 1 3974 0 is_stmt 1
	movq	-104(%rbp), %rax	# decl, tmp286
	movzbl	48(%rax), %eax	# decl_18(D)->decl.mode, D.21113
	cmpb	$51, %al	#, D.21113
	je	.L862	#,
	.loc 1 3975 0
	movq	-104(%rbp), %rax	# decl, tmp287
	movzbl	48(%rax), %eax	# decl_18(D)->decl.mode, D.21113
	movzbl	%al, %eax	# D.21113, D.21120
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.21123
	.loc 1 3974 0
	movzwl	%ax, %eax	# D.21123, D.21115
	andl	$16777215, %eax	#, iftmp.598
	movl	%eax, %edx	# iftmp.598, iftmp.598
	jmp	.L863	#
.L862:
	.loc 1 3974 0 is_stmt 0 discriminator 1
	movl	$128, %edx	#, iftmp.598
.L863:
	.loc 1 3974 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp289
	movl	%edx, %ecx	# iftmp.598, tmp291
	andl	$16777215, %ecx	#, tmp291
	movl	56(%rax), %edx	#, tmp292
	andl	$-16777216, %edx	#, tmp293
	orl	%ecx, %edx	# tmp291, tmp294
	movl	%edx, 56(%rax)	# tmp294,
	.loc 1 3976 0 is_stmt 1 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp295
	movzbl	52(%rax), %edx	#, tmp298
	andl	$-9, %edx	#, tmp299
	movb	%dl, 52(%rax)	# tmp299,
	.loc 1 3978 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp300
	movl	$1, %ecx	#,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp300,
	call	assign_temp	#
	movq	%rax, -56(%rbp)	# tmp301, x
	.loc 1 3979 0 discriminator 2
	movq	-104(%rbp), %rcx	# decl, tmp302
	movq	-56(%rbp), %rax	# x, tmp303
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp302,
	movq	%rax, %rdi	# tmp303,
	call	set_mem_attributes	#
	.loc 1 3980 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp304
	movq	-56(%rbp), %rdx	# x, tmp305
	movq	%rdx, 144(%rax)	# tmp305, decl_18(D)->decl.rtl
	.loc 1 3982 0 discriminator 2
	cmpq	$0, -80(%rbp)	#, oldaddr
	je	.L864	#,
	.loc 1 3984 0
	movq	-104(%rbp), %rax	# decl, tmp306
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, D.21119
	testq	%rax, %rax	# D.21119
	je	.L865	#,
	.loc 1 3984 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# decl, tmp307
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.599
	jmp	.L866	#
.L865:
	.loc 1 3984 0 discriminator 2
	movq	-104(%rbp), %rax	# decl, tmp308
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp308,
	call	make_decl_rtl	#
	movq	-104(%rbp), %rax	# decl, tmp309
	movq	144(%rax), %rax	# decl_18(D)->decl.rtl, iftmp.599
.L866:
	.loc 1 3984 0 discriminator 3
	movq	8(%rax), %rax	# iftmp.599_16->fld[0].rtx, D.21119
	movq	-80(%rbp), %rdx	# oldaddr, tmp310
	movq	%rdx, %rsi	# tmp310,
	movq	%rax, %rdi	# D.21119,
	call	force_operand	#
	movq	%rax, -48(%rbp)	# tmp311, addr
	.loc 1 3985 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rax	# addr, tmp312
	cmpq	-80(%rbp), %rax	# oldaddr, tmp312
	je	.L864	#,
	.loc 1 3986 0
	movq	-48(%rbp), %rdx	# addr, tmp313
	movq	-80(%rbp), %rax	# oldaddr, tmp314
	movq	%rdx, %rsi	# tmp313,
	movq	%rax, %rdi	# tmp314,
	call	emit_move_insn	#
.LBE103:
	.loc 1 3955 0
	jmp	.L815	#
.L864:
	jmp	.L815	#
.L851:
.LBB104:
	.loc 1 3996 0
	call	do_pending_stack_adjust	#
	.loc 1 3997 0
	call	save_stack_pointer	#
	.loc 1 4001 0
	movq	-72(%rbp), %rax	# type, tmp315
	movzbl	16(%rax), %eax	# type_19->common.code, D.21113
	cmpb	$18, %al	#, D.21113
	jne	.L867	#,
	.loc 1 4001 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# type, tmp316
	movq	24(%rax), %rax	# type_19->type.values, D.21117
	testq	%rax, %rax	# D.21117
	je	.L867	#,
	.loc 1 4002 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.21119
	movq	-72(%rbp), %rax	# type, tmp317
	movq	24(%rax), %rax	# type_19->type.values, D.21117
	movq	112(%rax), %rax	# _155->type.maxval, D.21117
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.21117,
	call	expand_expr	#
.L867:
	.loc 1 4006 0
	movq	-104(%rbp), %rax	# decl, tmp318
	movq	64(%rax), %rax	# decl_18(D)->decl.size_unit, D.21117
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21117,
	call	expand_expr	#
	movq	%rax, -40(%rbp)	# tmp319, size
	.loc 1 4007 0
	call	free_temp_slots	#
	.loc 1 4014 0
	movq	-104(%rbp), %rax	# decl, tmp320
	movq	8(%rax), %rax	# decl_18(D)->common.type, D.21117
	movl	64(%rax), %eax	# _159->type.align, D.21115
	.loc 1 4013 0
	movl	%eax, %edx	# D.21115, D.21120
	movq	-40(%rbp), %rax	# size, tmp321
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp321,
	call	allocate_dynamic_stack_space	#
	movq	%rax, -32(%rbp)	# tmp322, address
	.loc 1 4017 0
	movq	-104(%rbp), %rax	# decl, tmp323
	movzbl	48(%rax), %eax	# decl_18(D)->decl.mode, D.21113
	movzbl	%al, %eax	# D.21113, D.21122
	movq	-32(%rbp), %rdx	# address, tmp324
	movq	%rdx, %rsi	# tmp324,
	movl	%eax, %edi	# D.21122,
	call	gen_rtx_MEM	#
	movq	%rax, -24(%rbp)	# tmp325, x
	.loc 1 4018 0
	movq	-104(%rbp), %rcx	# decl, tmp326
	movq	-24(%rbp), %rax	# x, tmp327
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp326,
	movq	%rax, %rdi	# tmp327,
	call	set_mem_attributes	#
	.loc 1 4019 0
	movq	-104(%rbp), %rax	# decl, tmp328
	movq	-24(%rbp), %rdx	# x, tmp329
	movq	%rdx, 144(%rax)	# tmp329, decl_18(D)->decl.rtl
	.loc 1 4024 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.601
	andl	$33554432, %eax	#, D.21120
	testl	%eax, %eax	# D.21120
	je	.L868	#,
	.loc 1 4024 0 is_stmt 0 discriminator 1
	movl	$64, %edx	#, iftmp.600
	jmp	.L869	#
.L868:
	.loc 1 4024 0 discriminator 2
	movl	$32, %edx	#, iftmp.600
.L869:
	.loc 1 4024 0 discriminator 3
	movq	-104(%rbp), %rax	# decl, tmp330
	movl	%edx, %ecx	# iftmp.600, tmp332
	andl	$16777215, %ecx	#, tmp332
	movl	56(%rax), %edx	#, tmp333
	andl	$-16777216, %edx	#, tmp334
	orl	%ecx, %edx	# tmp332, tmp335
	movl	%edx, 56(%rax)	# tmp335,
	.loc 1 4028 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# decl, tmp336
	movzbl	52(%rax), %edx	#, tmp339
	andl	$-9, %edx	#, tmp340
	movb	%dl, 52(%rax)	# tmp340,
.L815:
.LBE104:
	.loc 1 4030 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	expand_decl, .-expand_decl
	.globl	expand_decl_init
	.type	expand_decl_init, @function
expand_decl_init:
.LFB79:
	.loc 1 4037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	.loc 1 4038 0
	movq	-24(%rbp), %rax	# decl, tmp78
	movzbl	18(%rax), %eax	# *decl_1(D), tmp81
	andl	$1, %eax	#, D.21127
	movzbl	%al, %eax	# D.21127, tmp82
	movl	%eax, -8(%rbp)	# tmp82, was_used
	.loc 1 4042 0
	movq	-24(%rbp), %rax	# decl, tmp83
	movzbl	16(%rax), %eax	# decl_1(D)->common.code, D.21128
	cmpb	$32, %al	#, D.21128
	je	.L871	#,
	.loc 1 4043 0
	movq	-24(%rbp), %rax	# decl, tmp84
	movzbl	18(%rax), %eax	# *decl_1(D), D.21128
	andl	$4, %eax	#, D.21128
	testb	%al, %al	# D.21128
	je	.L872	#,
.L871:
	.loc 1 4044 0
	jmp	.L870	#
.L872:
	.loc 1 4048 0
	movq	-24(%rbp), %rax	# decl, tmp85
	movq	104(%rax), %rdx	# decl_1(D)->decl.initial, D.21129
	movq	global_trees(%rip), %rax	# global_trees, D.21129
	cmpq	%rax, %rdx	# D.21129, D.21129
	jne	.L874	#,
.LBB105:
	.loc 1 4050 0
	movq	-24(%rbp), %rax	# decl, tmp86
	movq	8(%rax), %rax	# decl_1(D)->common.type, D.21129
	movzbl	16(%rax), %eax	# _9->common.code, D.21128
	movzbl	%al, %eax	# D.21128, tmp87
	movl	%eax, -4(%rbp)	# tmp87, code
	.loc 1 4052 0
	cmpl	$6, -4(%rbp)	#, code
	je	.L875	#,
	.loc 1 4052 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, code
	je	.L875	#,
	cmpl	$10, -4(%rbp)	#, code
	je	.L875	#,
	.loc 1 4053 0 is_stmt 1
	cmpl	$13, -4(%rbp)	#, code
	je	.L875	#,
	.loc 1 4053 0 is_stmt 0 discriminator 1
	cmpl	$15, -4(%rbp)	#, code
	jne	.L876	#,
.L875:
	.loc 1 4054 0 is_stmt 1
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21129
	movq	-24(%rbp), %rax	# decl, tmp88
	movq	8(%rax), %rax	# decl_1(D)->common.type, D.21129
	movq	%rdx, %rsi	# D.21129,
	movq	%rax, %rdi	# D.21129,
	call	convert	#
	movq	%rax, %rsi	#, D.21129
	movq	-24(%rbp), %rax	# decl, tmp89
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp89,
	call	expand_assignment	#
.L876:
	.loc 1 4056 0
	call	emit_queue	#
.LBE105:
	jmp	.L877	#
.L874:
	.loc 1 4058 0
	movq	-24(%rbp), %rax	# decl, tmp90
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.21129
	testq	%rax, %rax	# D.21129
	je	.L877	#,
	.loc 1 4058 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# decl, tmp91
	movq	104(%rax), %rax	# decl_1(D)->decl.initial, D.21129
	movzbl	16(%rax), %eax	# _16->common.code, D.21128
	cmpb	$2, %al	#, D.21128
	je	.L877	#,
	.loc 1 4060 0 is_stmt 1
	movq	-24(%rbp), %rax	# decl, tmp92
	movl	32(%rax), %edx	# decl_1(D)->decl.linenum, D.21130
	movq	-24(%rbp), %rax	# decl, tmp93
	movq	24(%rax), %rax	# decl_1(D)->decl.filename, D.21131
	movl	%edx, %esi	# D.21130,
	movq	%rax, %rdi	# D.21131,
	call	emit_line_note	#
	.loc 1 4061 0
	movq	-24(%rbp), %rax	# decl, tmp94
	movq	104(%rax), %rsi	# decl_1(D)->decl.initial, D.21129
	movq	-24(%rbp), %rax	# decl, tmp95
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp95,
	call	expand_assignment	#
	.loc 1 4062 0
	call	emit_queue	#
.L877:
	.loc 1 4066 0
	movl	-8(%rbp), %eax	# was_used, tmp96
	andl	$1, %eax	#, D.21127
	movl	%eax, %edx	# D.21127, D.21127
	movq	-24(%rbp), %rax	# decl, tmp97
	movl	%edx, %ecx	# D.21127, tmp99
	andl	$1, %ecx	#, tmp99
	movzbl	18(%rax), %edx	#, tmp100
	andl	$-2, %edx	#, tmp101
	orl	%ecx, %edx	# tmp99, tmp102
	movb	%dl, 18(%rax)	# tmp102,
	.loc 1 4069 0
	movl	$0, %edi	#,
	call	preserve_temp_slots	#
	.loc 1 4070 0
	call	free_temp_slots	#
.L870:
	.loc 1 4071 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	expand_decl_init, .-expand_decl_init
	.globl	expand_decl_cleanup
	.type	expand_decl_cleanup, @function
expand_decl_cleanup:
.LFB80:
	.loc 1 4087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# decl, decl
	movq	%rsi, -96(%rbp)	# cleanup, cleanup
	.loc 1 4091 0
	movq	cfun(%rip), %rax	# cfun, cfun.602
	testq	%rax, %rax	# cfun.602
	je	.L879	#,
	.loc 1 4091 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.603
	movq	8(%rax), %rax	# cfun.603_5->stmt, D.21133
	movq	(%rax), %rax	# _6->x_block_stack, D.21134
	testq	%rax, %rax	# D.21134
	jne	.L880	#,
.L879:
	.loc 1 4092 0 is_stmt 1
	movl	$0, %eax	#, D.21132
	jmp	.L881	#
.L880:
	.loc 1 4094 0
	movq	cfun(%rip), %rax	# cfun, cfun.604
	movq	8(%rax), %rax	# cfun.604_8->stmt, D.21133
	movq	(%rax), %rax	# _9->x_block_stack, tmp86
	movq	%rax, -64(%rbp)	# tmp86, thisblock
	.loc 1 4098 0
	cmpq	$0, -96(%rbp)	#, cleanup
	je	.L882	#,
.LBB106:
	.loc 1 4102 0
	movq	-64(%rbp), %rax	# thisblock, tmp90
	addq	$64, %rax	#, tmp89
	movq	%rax, -72(%rbp)	# tmp89, cleanups
	.loc 1 4103 0
	call	conditional_context	#
	movl	%eax, -76(%rbp)	# tmp91, cond_context
	.loc 1 4105 0
	cmpl	$0, -76(%rbp)	#, cond_context
	je	.L883	#,
.LBB107:
	.loc 1 4107 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.605
	movl	%eax, %edi	# word_mode.605,
	call	gen_reg_rtx	#
	movq	%rax, -56(%rbp)	# tmp92, flag
	.loc 1 4111 0
	call	start_sequence	#
	.loc 1 4112 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.21135
	movq	-56(%rbp), %rax	# flag, tmp93
	movq	%rdx, %rsi	# D.21135,
	movq	%rax, %rdi	# tmp93,
	call	emit_move_insn	#
	.loc 1 4113 0
	call	get_insns	#
	movq	%rax, -48(%rbp)	# tmp94, set_flag_0
	.loc 1 4114 0
	call	end_sequence	#
	.loc 1 4117 0
	movq	-64(%rbp), %rax	# thisblock, tmp95
	movq	104(%rax), %rdx	# thisblock_10->data.block.last_unconditional_cleanup, D.21135
	movq	-48(%rbp), %rax	# set_flag_0, tmp96
	movq	%rdx, %rsi	# D.21135,
	movq	%rax, %rdi	# tmp96,
	call	emit_insns_after	#
	movq	-64(%rbp), %rdx	# thisblock, tmp97
	movq	%rax, 104(%rdx)	# D.21135, thisblock_10->data.block.last_unconditional_cleanup
	.loc 1 4120 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.21135
	movq	-56(%rbp), %rax	# flag, tmp98
	movq	%rdx, %rsi	# D.21135,
	movq	%rax, %rdi	# tmp98,
	call	emit_move_insn	#
	.loc 1 4122 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.606
	movl	$1, %esi	#,
	movl	%eax, %edi	# word_mode.606,
	call	type_for_mode	#
	movq	%rax, %rdx	# D.21136,
	movl	$0, %esi	#,
	movl	$34, %edi	#,
	call	build_decl	#
	movq	%rax, -40(%rbp)	# tmp99, cond
	.loc 1 4123 0
	movq	-40(%rbp), %rax	# cond, tmp100
	movq	-56(%rbp), %rdx	# flag, tmp101
	movq	%rdx, 144(%rax)	# tmp101, cond_23->decl.rtl
	.loc 1 4126 0
	movq	global_trees+88(%rip), %rbx	# global_trees, D.21136
	movq	-40(%rbp), %rax	# cond, tmp102
	movq	%rax, %rdi	# tmp102,
	call	truthvalue_conversion	#
	movq	%rax, %rdx	#, D.21136
	movq	global_trees+216(%rip), %rax	# global_trees, D.21136
	movq	-96(%rbp), %rcx	# cleanup, tmp103
	movq	%rbx, %r8	# D.21136,
	movq	%rax, %rsi	# D.21136,
	movl	$51, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, -96(%rbp)	# tmp104, cleanup
	.loc 1 4129 0
	movq	-96(%rbp), %rax	# cleanup, tmp105
	movq	%rax, %rdi	# tmp105,
	call	fold	#
	movq	%rax, -96(%rbp)	# tmp106, cleanup
	.loc 1 4131 0
	movq	-64(%rbp), %rax	# thisblock, tmp107
	movq	112(%rax), %rax	# thisblock_10->data.block.cleanup_ptr, tmp108
	movq	%rax, -72(%rbp)	# tmp108, cleanups
.L883:
.LBE107:
	.loc 1 4134 0
	movq	-96(%rbp), %rax	# cleanup, tmp109
	movq	%rax, %rdi	# tmp109,
	call	unsave_expr	#
	movq	%rax, -96(%rbp)	# tmp110, cleanup
	.loc 1 4136 0
	movq	-72(%rbp), %rax	# cleanups, tmp111
	movq	(%rax), %rdx	# *cleanups_2, D.21136
	movq	-96(%rbp), %rcx	# cleanup, tmp112
	movq	-88(%rbp), %rax	# decl, tmp113
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	tree_cons	#
	movq	-72(%rbp), %rdx	# cleanups, tmp114
	movq	%rax, (%rdx)	# D.21136, *cleanups_2
	movq	-72(%rbp), %rax	# cleanups, tmp115
	movq	(%rax), %rax	# *cleanups_2, tmp116
	movq	%rax, -32(%rbp)	# tmp116, t
	.loc 1 4138 0
	cmpl	$0, -76(%rbp)	#, cond_context
	jne	.L884	#,
	.loc 1 4140 0
	movq	cfun(%rip), %rax	# cfun, cfun.607
	movq	8(%rax), %rax	# cfun.607_35->stmt, D.21133
	movq	-64(%rbp), %rdx	# thisblock, tmp117
	movq	%rdx, 8(%rax)	# tmp117, _36->x_stack_block_stack
.L884:
	.loc 1 4142 0
	cmpl	$0, -76(%rbp)	#, cond_context
	je	.L885	#,
	.loc 1 4144 0
	call	start_sequence	#
.L885:
	.loc 1 4147 0
	movl	using_eh_for_cleanups_p(%rip), %eax	# using_eh_for_cleanups_p, using_eh_for_cleanups_p.608
	testl	%eax, %eax	# using_eh_for_cleanups_p.608
	jne	.L886	#,
	.loc 1 4148 0
	movq	-32(%rbp), %rax	# t, tmp118
	movzbl	17(%rax), %edx	#, tmp121
	orl	$4, %edx	#, tmp122
	movb	%dl, 17(%rax)	# tmp122,
	jmp	.L887	#
.L886:
	.loc 1 4150 0
	call	expand_eh_region_start	#
.L887:
	.loc 1 4152 0
	cmpl	$0, -76(%rbp)	#, cond_context
	je	.L888	#,
	.loc 1 4154 0
	call	get_insns	#
	movq	%rax, -24(%rbp)	# tmp123, seq
	.loc 1 4155 0
	call	end_sequence	#
	.loc 1 4156 0
	cmpq	$0, -24(%rbp)	#, seq
	je	.L882	#,
	.loc 1 4158 0
	movq	-64(%rbp), %rax	# thisblock, tmp124
	movq	104(%rax), %rdx	# thisblock_10->data.block.last_unconditional_cleanup, D.21135
	movq	-24(%rbp), %rax	# seq, tmp125
	movq	%rdx, %rsi	# D.21135,
	movq	%rax, %rdi	# tmp125,
	call	emit_insns_after	#
	movq	-64(%rbp), %rdx	# thisblock, tmp126
	movq	%rax, 104(%rdx)	# D.21135, thisblock_10->data.block.last_unconditional_cleanup
	jmp	.L882	#
.L888:
	.loc 1 4164 0
	call	get_last_insn	#
	movq	-64(%rbp), %rdx	# thisblock, tmp127
	movq	%rax, 104(%rdx)	# D.21135, thisblock_10->data.block.last_unconditional_cleanup
	.loc 1 4171 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 4172 0
	movq	-64(%rbp), %rax	# thisblock, tmp128
	leaq	64(%rax), %rdx	#, D.21137
	movq	-64(%rbp), %rax	# thisblock, tmp129
	movq	%rdx, 112(%rax)	# D.21137, thisblock_10->data.block.cleanup_ptr
.L882:
.LBE106:
	.loc 1 4175 0
	movl	$1, %eax	#, D.21132
.L881:
	.loc 1 4176 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	expand_decl_cleanup, .-expand_decl_cleanup
	.globl	expand_decl_cleanup_eh
	.type	expand_decl_cleanup_eh, @function
expand_decl_cleanup_eh:
.LFB81:
	.loc 1 4185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# decl, decl
	movq	%rsi, -32(%rbp)	# cleanup, cleanup
	movl	%edx, -36(%rbp)	# eh_only, eh_only
	.loc 1 4186 0
	movq	-32(%rbp), %rdx	# cleanup, tmp66
	movq	-24(%rbp), %rax	# decl, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	expand_decl_cleanup	#
	movl	%eax, -12(%rbp)	# tmp68, ret
	.loc 1 4187 0
	cmpq	$0, -32(%rbp)	#, cleanup
	je	.L891	#,
	.loc 1 4187 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, ret
	je	.L891	#,
.LBB108:
	.loc 1 4189 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.609
	movq	8(%rax), %rax	# cfun.609_4->stmt, D.21138
	movq	(%rax), %rax	# _5->x_block_stack, D.21139
	movq	64(%rax), %rax	# _6->data.block.cleanups, tmp69
	movq	%rax, -8(%rbp)	# tmp69, node
	.loc 1 4190 0
	movl	-36(%rbp), %eax	# eh_only, tmp70
	andl	$1, %eax	#, D.21141
	movl	%eax, %edx	# D.21141, D.21141
	movq	-8(%rbp), %rax	# node, tmp71
	andl	$1, %edx	#, tmp73
	leal	0(,%rdx,4), %ecx	#, tmp74
	movzbl	18(%rax), %edx	#, tmp75
	andl	$-5, %edx	#, tmp76
	orl	%ecx, %edx	# tmp74, tmp77
	movb	%dl, 18(%rax)	# tmp77,
.L891:
.LBE108:
	.loc 1 4192 0
	movl	-12(%rbp), %eax	# ret, D.21142
	.loc 1 4193 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	expand_decl_cleanup_eh, .-expand_decl_cleanup_eh
	.globl	expand_anon_union_decl
	.type	expand_anon_union_decl, @function
expand_anon_union_decl:
.LFB82:
	.loc 1 4202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# decl, decl
	movq	%rsi, -64(%rbp)	# cleanup, cleanup
	movq	%rdx, -72(%rbp)	# decl_elts, decl_elts
	.loc 1 4203 0
	movq	cfun(%rip), %rax	# cfun, cfun.611
	testq	%rax, %rax	# cfun.611
	je	.L894	#,
	.loc 1 4203 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.612
	movq	8(%rax), %rax	# cfun.612_7->stmt, D.21143
	movq	(%rax), %rax	# _8->x_block_stack, iftmp.610
	jmp	.L895	#
.L894:
	.loc 1 4203 0 discriminator 2
	movl	$0, %eax	#, iftmp.610
.L895:
	.loc 1 4203 0 discriminator 3
	movq	%rax, -32(%rbp)	# iftmp.610, thisblock
	.loc 1 4208 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# decl_elts, tmp87
	movq	%rax, -40(%rbp)	# tmp87, t
	jmp	.L896	#
.L899:
	.loc 1 4209 0
	movq	-40(%rbp), %rax	# t, tmp88
	movq	32(%rax), %rax	# t_1->list.value, D.21144
	movzbl	17(%rax), %eax	# *_14, D.21145
	andl	$4, %eax	#, D.21145
	testb	%al, %al	# D.21145
	je	.L897	#,
	.loc 1 4211 0
	movq	-56(%rbp), %rax	# decl, tmp89
	movzbl	17(%rax), %edx	#, tmp92
	orl	$4, %edx	#, tmp93
	movb	%dl, 17(%rax)	# tmp93,
	.loc 1 4212 0
	jmp	.L898	#
.L897:
	.loc 1 4208 0
	movq	-40(%rbp), %rax	# t, tmp94
	movq	(%rax), %rax	# t_1->common.chain, tmp95
	movq	%rax, -40(%rbp)	# tmp95, t
.L896:
	.loc 1 4208 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, t
	jne	.L899	#,
.L898:
	.loc 1 4215 0 is_stmt 1
	movq	-56(%rbp), %rax	# decl, tmp96
	movq	%rax, %rdi	# tmp96,
	call	expand_decl	#
	.loc 1 4216 0
	movq	-64(%rbp), %rdx	# cleanup, tmp97
	movq	-56(%rbp), %rax	# decl, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	expand_decl_cleanup	#
	.loc 1 4217 0
	movq	-56(%rbp), %rax	# decl, tmp99
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, D.21146
	testq	%rax, %rax	# D.21146
	je	.L900	#,
	.loc 1 4217 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# decl, tmp100
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, iftmp.613
	jmp	.L901	#
.L900:
	.loc 1 4217 0 discriminator 2
	movq	-56(%rbp), %rax	# decl, tmp101
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	make_decl_rtl	#
	movq	-56(%rbp), %rax	# decl, tmp102
	movq	144(%rax), %rax	# decl_17(D)->decl.rtl, iftmp.613
.L901:
	.loc 1 4217 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.613, x
	.loc 1 4220 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# decl_elts, tmp103
	movq	%rax, -40(%rbp)	# tmp103, t
	jmp	.L902	#
.L913:
.LBB109:
	.loc 1 4222 0
	movq	-40(%rbp), %rax	# t, tmp104
	movq	32(%rax), %rax	# t_2->list.value, tmp105
	movq	%rax, -16(%rbp)	# tmp105, decl_elt
	.loc 1 4223 0
	movq	-40(%rbp), %rax	# t, tmp106
	movq	24(%rax), %rax	# t_2->list.purpose, tmp107
	movq	%rax, -8(%rbp)	# tmp107, cleanup_elt
	.loc 1 4224 0
	movq	-16(%rbp), %rax	# decl_elt, tmp108
	movq	8(%rax), %rax	# decl_elt_25->common.type, D.21144
	movzbl	61(%rax), %eax	# *_27, tmp111
	shrb	%al	# D.21147
	movzbl	%al, %eax	# D.21147, tmp112
	movl	%eax, -44(%rbp)	# tmp112, mode
	.loc 1 4228 0
	movq	-16(%rbp), %rax	# decl_elt, tmp113
	movzbl	18(%rax), %eax	# *decl_elt_25, D.21145
	andl	$1, %eax	#, D.21145
	testb	%al, %al	# D.21145
	je	.L903	#,
	.loc 1 4229 0
	movq	-56(%rbp), %rax	# decl, tmp114
	movzbl	18(%rax), %edx	#, tmp117
	orl	$1, %edx	#, tmp118
	movb	%dl, 18(%rax)	# tmp118,
.L903:
	.loc 1 4232 0
	movq	-56(%rbp), %rax	# decl, tmp119
	movl	56(%rax), %eax	# *decl_17(D), tmp122
	andl	$16777215, %eax	#, D.21148
	movl	%eax, %edx	# D.21148, D.21148
	movq	-16(%rbp), %rax	# decl_elt, tmp123
	movl	%edx, %ecx	# D.21148, tmp125
	andl	$16777215, %ecx	#, tmp125
	movl	56(%rax), %edx	#, tmp126
	andl	$-16777216, %edx	#, tmp127
	orl	%ecx, %edx	# tmp125, tmp128
	movl	%edx, 56(%rax)	# tmp128,
	.loc 1 4233 0
	movq	-56(%rbp), %rax	# decl, tmp129
	movzbl	52(%rax), %eax	# *decl_17(D), tmp132
	shrb	$3, %al	#, D.21149
	andl	$1, %eax	#, D.21149
	movq	-16(%rbp), %rdx	# decl_elt, tmp133
	andl	$1, %eax	#, tmp135
	leal	0(,%rax,8), %ecx	#, tmp136
	movzbl	52(%rdx), %eax	#, tmp137
	andl	$-9, %eax	#, tmp138
	orl	%ecx, %eax	# tmp136, tmp139
	movb	%al, 52(%rdx)	# tmp139,
	.loc 1 4238 0
	cmpl	$51, -44(%rbp)	#, mode
	jne	.L904	#,
	.loc 1 4238 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# decl, tmp140
	movzbl	48(%rax), %eax	# decl_17(D)->decl.mode, D.21145
	cmpb	$51, %al	#, D.21145
	je	.L904	#,
	.loc 1 4240 0 is_stmt 1
	movq	-16(%rbp), %rax	# decl_elt, tmp141
	movq	40(%rax), %rax	# decl_elt_25->decl.size, D.21144
	.loc 1 4239 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21144,
	call	mode_for_size_tree	#
	movl	%eax, -44(%rbp)	# tmp142, mode
	movl	-44(%rbp), %eax	# mode, tmp143
	movl	%eax, %edx	# tmp143, D.21145
	movq	-16(%rbp), %rax	# decl_elt, tmp144
	movb	%dl, 48(%rax)	# D.21145, decl_elt_25->decl.mode
.L904:
	.loc 1 4244 0
	movq	-24(%rbp), %rax	# x, tmp145
	movzwl	(%rax), %eax	# x_23->code, D.21150
	cmpw	$66, %ax	#, D.21150
	jne	.L905	#,
	.loc 1 4246 0
	movq	-24(%rbp), %rax	# x, tmp146
	movzbl	2(%rax), %eax	# x_23->mode, D.21145
	movzbl	%al, %eax	# D.21145, D.21151
	cmpl	-44(%rbp), %eax	# mode, D.21151
	jne	.L906	#,
	.loc 1 4247 0
	movq	-16(%rbp), %rax	# decl_elt, tmp147
	movq	-24(%rbp), %rdx	# x, tmp148
	movq	%rdx, 144(%rax)	# tmp148, decl_elt_25->decl.rtl
	jmp	.L908	#
.L906:
	.loc 1 4249 0
	movl	-44(%rbp), %esi	# mode, tmp149
	movq	-24(%rbp), %rax	# x, tmp150
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp150,
	call	adjust_address_1	#
	movq	-16(%rbp), %rdx	# decl_elt, tmp151
	movq	%rax, 144(%rdx)	# D.21146, decl_elt_25->decl.rtl
	jmp	.L908	#
.L905:
	.loc 1 4251 0
	movq	-24(%rbp), %rax	# x, tmp152
	movzwl	(%rax), %eax	# x_23->code, D.21150
	cmpw	$61, %ax	#, D.21150
	jne	.L909	#,
	.loc 1 4253 0
	movq	-24(%rbp), %rax	# x, tmp153
	movzbl	2(%rax), %eax	# x_23->mode, D.21145
	movzbl	%al, %eax	# D.21145, D.21151
	cmpl	-44(%rbp), %eax	# mode, D.21151
	jne	.L910	#,
	.loc 1 4254 0
	movq	-16(%rbp), %rax	# decl_elt, tmp154
	movq	-24(%rbp), %rdx	# x, tmp155
	movq	%rdx, 144(%rax)	# tmp155, decl_elt_25->decl.rtl
	jmp	.L908	#
.L910:
	.loc 1 4256 0
	movq	-24(%rbp), %rdx	# x, tmp156
	movl	-44(%rbp), %eax	# mode, tmp157
	movq	%rdx, %rsi	# tmp156,
	movl	%eax, %edi	# tmp157,
	call	gen_lowpart_SUBREG	#
	movq	-16(%rbp), %rdx	# decl_elt, tmp158
	movq	%rax, 144(%rdx)	# D.21146, decl_elt_25->decl.rtl
	jmp	.L908	#
.L909:
	.loc 1 4259 0
	movl	$__FUNCTION__.14717, %edx	#,
	movl	$4259, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L908:
	.loc 1 4263 0
	cmpq	$0, -64(%rbp)	#, cleanup
	je	.L912	#,
	.loc 1 4265 0
	movq	-32(%rbp), %rax	# thisblock, tmp159
	movq	64(%rax), %rdx	# thisblock_11->data.block.cleanups, D.21144
	movq	-8(%rbp), %rcx	# cleanup_elt, tmp160
	movq	-16(%rbp), %rax	# decl_elt, tmp161
	movq	%rcx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp161,
	call	tree_cons	#
	movq	-32(%rbp), %rdx	# thisblock, tmp162
	movq	%rax, 64(%rdx)	# D.21144, thisblock_11->data.block.cleanups
.L912:
.LBE109:
	.loc 1 4220 0
	movq	-40(%rbp), %rax	# t, tmp163
	movq	(%rax), %rax	# t_2->common.chain, tmp164
	movq	%rax, -40(%rbp)	# tmp164, t
.L902:
	.loc 1 4220 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, t
	jne	.L913	#,
	.loc 1 4268 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	expand_anon_union_decl, .-expand_anon_union_decl
	.type	expand_cleanups, @function
expand_cleanups:
.LFB83:
	.loc 1 4290 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# list, list
	movq	%rsi, -32(%rbp)	# dont_do, dont_do
	movl	%edx, -36(%rbp)	# in_fixup, in_fixup
	movl	%ecx, -40(%rbp)	# reachable, reachable
	.loc 1 4292 0
	movq	-24(%rbp), %rax	# list, tmp73
	movq	%rax, -8(%rbp)	# tmp73, tail
	jmp	.L915	#
.L922:
	.loc 1 4293 0
	cmpq	$0, -32(%rbp)	#, dont_do
	je	.L916	#,
	.loc 1 4293 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tail, tmp74
	movq	24(%rax), %rax	# tail_1->list.purpose, D.21152
	cmpq	-32(%rbp), %rax	# dont_do, D.21152
	je	.L917	#,
.L916:
	.loc 1 4295 0 is_stmt 1
	movq	-8(%rbp), %rax	# tail, tmp75
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movzbl	16(%rax), %eax	# _6->common.code, D.21153
	cmpb	$2, %al	#, D.21153
	jne	.L918	#,
	.loc 1 4296 0
	movq	-8(%rbp), %rax	# tail, tmp76
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movl	-40(%rbp), %ecx	# reachable, tmp77
	movl	-36(%rbp), %edx	# in_fixup, tmp78
	movq	-32(%rbp), %rsi	# dont_do, tmp79
	movq	%rax, %rdi	# D.21152,
	call	expand_cleanups	#
	jmp	.L917	#
.L918:
	.loc 1 4299 0
	cmpl	$0, -36(%rbp)	#, in_fixup
	jne	.L919	#,
	.loc 1 4299 0 is_stmt 0 discriminator 1
	movl	using_eh_for_cleanups_p(%rip), %eax	# using_eh_for_cleanups_p, using_eh_for_cleanups_p.614
	testl	%eax, %eax	# using_eh_for_cleanups_p.614
	je	.L919	#,
	.loc 1 4300 0 is_stmt 1
	movq	-8(%rbp), %rax	# tail, tmp80
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movq	%rax, %rdi	# D.21152,
	call	expand_eh_region_end_cleanup	#
.L919:
	.loc 1 4302 0
	cmpl	$0, -40(%rbp)	#, reachable
	je	.L917	#,
	.loc 1 4302 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# tail, tmp81
	movzbl	18(%rax), %eax	# *tail_1, D.21153
	andl	$4, %eax	#, D.21153
	testb	%al, %al	# D.21153
	jne	.L917	#,
	.loc 1 4314 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, in_fixup
	je	.L920	#,
	.loc 1 4314 0 is_stmt 0 discriminator 1
	movl	using_eh_for_cleanups_p(%rip), %eax	# using_eh_for_cleanups_p, using_eh_for_cleanups_p.615
	testl	%eax, %eax	# using_eh_for_cleanups_p.615
	je	.L920	#,
	.loc 1 4316 0 is_stmt 1
	call	expand_eh_region_start	#
	.loc 1 4318 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.21154
	movq	-8(%rbp), %rax	# tail, tmp82
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.21152,
	call	expand_expr	#
	.loc 1 4320 0
	movq	-8(%rbp), %rax	# tail, tmp83
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movq	%rax, %rdi	# D.21152,
	call	expand_eh_region_end_fixup	#
	jmp	.L921	#
.L920:
	.loc 1 4323 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.21154
	movq	-8(%rbp), %rax	# tail, tmp84
	movq	32(%rax), %rax	# tail_1->list.value, D.21152
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.21152,
	call	expand_expr	#
.L921:
	.loc 1 4325 0
	call	free_temp_slots	#
.L917:
	.loc 1 4292 0
	movq	-8(%rbp), %rax	# tail, tmp85
	movq	(%rax), %rax	# tail_1->common.chain, tmp86
	movq	%rax, -8(%rbp)	# tmp86, tail
.L915:
	.loc 1 4292 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, tail
	jne	.L922	#,
	.loc 1 4329 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	expand_cleanups, .-expand_cleanups
	.globl	start_cleanup_deferral
	.type	start_cleanup_deferral, @function
start_cleanup_deferral:
.LFB84:
	.loc 1 4339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4342 0
	movq	cfun(%rip), %rax	# cfun, cfun.616
	movq	8(%rax), %rax	# cfun.616_1->stmt, D.21155
	movq	(%rax), %rax	# _2->x_block_stack, D.21156
	testq	%rax, %rax	# D.21156
	je	.L923	#,
	.loc 1 4343 0
	movq	cfun(%rip), %rax	# cfun, cfun.617
	movq	8(%rax), %rax	# cfun.617_4->stmt, D.21155
	movq	(%rax), %rax	# _5->x_block_stack, D.21156
	movl	100(%rax), %edx	# _6->data.block.conditional_code, D.21157
	addl	$1, %edx	#, D.21157
	movl	%edx, 100(%rax)	# D.21157, _6->data.block.conditional_code
.L923:
	.loc 1 4344 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	start_cleanup_deferral, .-start_cleanup_deferral
	.globl	end_cleanup_deferral
	.type	end_cleanup_deferral, @function
end_cleanup_deferral:
.LFB85:
	.loc 1 4353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4356 0
	movq	cfun(%rip), %rax	# cfun, cfun.618
	movq	8(%rax), %rax	# cfun.618_1->stmt, D.21158
	movq	(%rax), %rax	# _2->x_block_stack, D.21159
	testq	%rax, %rax	# D.21159
	je	.L925	#,
	.loc 1 4357 0
	movq	cfun(%rip), %rax	# cfun, cfun.619
	movq	8(%rax), %rax	# cfun.619_4->stmt, D.21158
	movq	(%rax), %rax	# _5->x_block_stack, D.21159
	movl	100(%rax), %edx	# _6->data.block.conditional_code, D.21160
	subl	$1, %edx	#, D.21160
	movl	%edx, 100(%rax)	# D.21160, _6->data.block.conditional_code
.L925:
	.loc 1 4358 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	end_cleanup_deferral, .-end_cleanup_deferral
	.globl	move_cleanups_up
	.type	move_cleanups_up, @function
move_cleanups_up:
.LFB86:
	.loc 1 4368 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4369 0
	movq	cfun(%rip), %rax	# cfun, cfun.620
	movq	8(%rax), %rax	# cfun.620_1->stmt, D.21161
	movq	(%rax), %rax	# _2->x_block_stack, tmp64
	movq	%rax, -16(%rbp)	# tmp64, block
	.loc 1 4370 0
	movq	-16(%rbp), %rax	# block, tmp65
	movq	8(%rax), %rax	# block_3->next, tmp66
	movq	%rax, -8(%rbp)	# tmp66, outer
	.loc 1 4373 0
	movq	-8(%rbp), %rax	# outer, tmp67
	movq	64(%rax), %rdx	# outer_4->data.block.cleanups, D.21162
	movq	-16(%rbp), %rax	# block, tmp68
	movq	64(%rax), %rax	# block_3->data.block.cleanups, D.21162
	movq	%rdx, %rsi	# D.21162,
	movq	%rax, %rdi	# D.21162,
	call	chainon	#
	movq	-8(%rbp), %rdx	# outer, tmp69
	movq	%rax, 64(%rdx)	# D.21162, outer_4->data.block.cleanups
	.loc 1 4375 0
	movq	-16(%rbp), %rax	# block, tmp70
	movq	$0, 64(%rax)	#, block_3->data.block.cleanups
	.loc 1 4376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	move_cleanups_up, .-move_cleanups_up
	.globl	last_cleanup_this_contour
	.type	last_cleanup_this_contour, @function
last_cleanup_this_contour:
.LFB87:
	.loc 1 4380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4381 0
	movq	cfun(%rip), %rax	# cfun, cfun.621
	movq	8(%rax), %rax	# cfun.621_2->stmt, D.21164
	movq	(%rax), %rax	# _3->x_block_stack, D.21165
	testq	%rax, %rax	# D.21165
	jne	.L929	#,
	.loc 1 4382 0
	movl	$0, %eax	#, D.21163
	jmp	.L930	#
.L929:
	.loc 1 4384 0
	movq	cfun(%rip), %rax	# cfun, cfun.622
	movq	8(%rax), %rax	# cfun.622_6->stmt, D.21164
	movq	(%rax), %rax	# _7->x_block_stack, D.21165
	movq	64(%rax), %rax	# _8->data.block.cleanups, D.21163
.L930:
	.loc 1 4385 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	last_cleanup_this_contour, .-last_cleanup_this_contour
	.globl	any_pending_cleanups
	.type	any_pending_cleanups, @function
any_pending_cleanups:
.LFB88:
	.loc 1 4394 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# this_contour, this_contour
	.loc 1 4397 0
	movq	cfun(%rip), %rax	# cfun, cfun.623
	testq	%rax, %rax	# cfun.623
	je	.L932	#,
	.loc 1 4397 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.624
	movq	8(%rax), %rax	# cfun.624_4->stmt, D.21167
	testq	%rax, %rax	# D.21167
	je	.L932	#,
	movq	cfun(%rip), %rax	# cfun, cfun.625
	movq	8(%rax), %rax	# cfun.625_6->stmt, D.21167
	movq	(%rax), %rax	# _7->x_block_stack, D.21168
	testq	%rax, %rax	# D.21168
	jne	.L933	#,
.L932:
	.loc 1 4398 0 is_stmt 1
	movl	$0, %eax	#, D.21166
	jmp	.L934	#
.L933:
	.loc 1 4400 0
	cmpl	$0, -20(%rbp)	#, this_contour
	je	.L935	#,
	.loc 1 4400 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.626
	movq	8(%rax), %rax	# cfun.626_10->stmt, D.21167
	movq	(%rax), %rax	# _11->x_block_stack, D.21168
	movq	64(%rax), %rax	# _12->data.block.cleanups, D.21169
	testq	%rax, %rax	# D.21169
	je	.L935	#,
	.loc 1 4401 0 is_stmt 1
	movl	$1, %eax	#, D.21166
	jmp	.L934	#
.L935:
	.loc 1 4402 0
	movq	cfun(%rip), %rax	# cfun, cfun.627
	movq	8(%rax), %rax	# cfun.627_15->stmt, D.21167
	movq	(%rax), %rax	# _16->x_block_stack, D.21168
	movq	64(%rax), %rax	# _17->data.block.cleanups, D.21169
	testq	%rax, %rax	# D.21169
	jne	.L936	#,
	.loc 1 4403 0
	movq	cfun(%rip), %rax	# cfun, cfun.628
	movq	8(%rax), %rax	# cfun.628_19->stmt, D.21167
	movq	(%rax), %rax	# _20->x_block_stack, D.21168
	movq	72(%rax), %rax	# _21->data.block.outer_cleanups, D.21169
	testq	%rax, %rax	# D.21169
	jne	.L936	#,
	.loc 1 4404 0
	movl	$0, %eax	#, D.21166
	jmp	.L934	#
.L936:
	.loc 1 4406 0
	movq	cfun(%rip), %rax	# cfun, cfun.629
	movq	8(%rax), %rax	# cfun.629_24->stmt, D.21167
	movq	(%rax), %rax	# _25->x_block_stack, D.21168
	movq	8(%rax), %rax	# _26->next, tmp83
	movq	%rax, -8(%rbp)	# tmp83, block
	jmp	.L937	#
.L939:
	.loc 1 4407 0
	movq	-8(%rbp), %rax	# block, tmp84
	movq	64(%rax), %rax	# block_1->data.block.cleanups, D.21169
	testq	%rax, %rax	# D.21169
	je	.L938	#,
	.loc 1 4408 0
	movl	$1, %eax	#, D.21166
	jmp	.L934	#
.L938:
	.loc 1 4406 0
	movq	-8(%rbp), %rax	# block, tmp85
	movq	8(%rax), %rax	# block_1->next, tmp86
	movq	%rax, -8(%rbp)	# tmp86, block
.L937:
	.loc 1 4406 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, block
	jne	.L939	#,
	.loc 1 4410 0 is_stmt 1
	movl	$0, %eax	#, D.21166
.L934:
	.loc 1 4411 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	any_pending_cleanups, .-any_pending_cleanups
	.globl	expand_start_case
	.type	expand_start_case, @function
expand_start_case:
.LFB89:
	.loc 1 4431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# exit_flag, exit_flag
	movq	%rsi, -64(%rbp)	# expr, expr
	movq	%rdx, -72(%rbp)	# type, type
	movq	%rcx, -80(%rbp)	# printname, printname
.LBB110:
	.loc 1 4432 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB111:
	movq	-40(%rbp), %rax	# __h, tmp113
	movq	%rax, -32(%rbp)	# tmp113, __o
	movl	$120, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp114
	movq	32(%rax), %rax	# __o_3->chunk_limit, D.21170
	movq	%rax, %rdx	# D.21170, D.21171
	movq	-32(%rbp), %rax	# __o, tmp115
	movq	24(%rax), %rax	# __o_3->next_free, D.21170
	subq	%rax, %rdx	# D.21171, D.21171
	movl	-44(%rbp), %eax	# __len, tmp116
	cltq
	cmpq	%rax, %rdx	# D.21171, D.21171
	jge	.L941	#,
	.loc 1 4432 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp117
	movq	-32(%rbp), %rax	# __o, tmp118
	movl	%edx, %esi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	_obstack_newchunk	#
.L941:
	.loc 1 4432 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp119
	movq	24(%rax), %rdx	# __o_3->next_free, D.21170
	movl	-44(%rbp), %eax	# __len, tmp120
	cltq
	addq	%rax, %rdx	# D.21172, D.21170
	movq	-32(%rbp), %rax	# __o, tmp121
	movq	%rdx, 24(%rax)	# D.21170, __o_3->next_free
.LBE111:
.LBB112:
	movq	-40(%rbp), %rax	# __h, tmp122
	movq	%rax, -24(%rbp)	# tmp122, __o1
	movq	-24(%rbp), %rax	# __o1, tmp123
	movq	16(%rax), %rax	# __o1_14->object_base, tmp124
	movq	%rax, -16(%rbp)	# tmp124, value
	movq	-24(%rbp), %rax	# __o1, tmp125
	movq	24(%rax), %rax	# __o1_14->next_free, D.21170
	cmpq	-16(%rbp), %rax	# value, D.21170
	jne	.L942	#,
	.loc 1 4432 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp126
	movzbl	80(%rax), %edx	# __o1_14->maybe_empty_object, tmp129
	orl	$2, %edx	#, tmp130
	movb	%dl, 80(%rax)	# tmp130, __o1_14->maybe_empty_object
.L942:
	.loc 1 4432 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp131
	movq	24(%rax), %rax	# __o1_14->next_free, D.21170
	movq	%rax, %rdx	# D.21170, D.21171
	movq	-24(%rbp), %rax	# __o1, tmp132
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.21173
	cltq
	addq	%rax, %rdx	# D.21171, D.21171
	movq	-24(%rbp), %rax	# __o1, tmp133
	movl	48(%rax), %eax	# __o1_14->alignment_mask, D.21173
	notl	%eax	# D.21173
	cltq
	andq	%rdx, %rax	# D.21171, D.21171
	movq	%rax, %rdx	# D.21171, D.21170
	movq	-24(%rbp), %rax	# __o1, tmp134
	movq	%rdx, 24(%rax)	# D.21170, __o1_14->next_free
	movq	-24(%rbp), %rax	# __o1, tmp135
	movq	24(%rax), %rax	# __o1_14->next_free, D.21170
	movq	%rax, %rdx	# D.21170, D.21171
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	8(%rax), %rax	# __o1_14->chunk, D.21174
	movq	%rdx, %rcx	# D.21171, D.21171
	subq	%rax, %rcx	# D.21171, D.21171
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	32(%rax), %rax	# __o1_14->chunk_limit, D.21170
	movq	%rax, %rdx	# D.21170, D.21171
	movq	-24(%rbp), %rax	# __o1, tmp138
	movq	8(%rax), %rax	# __o1_14->chunk, D.21174
	subq	%rax, %rdx	# D.21171, D.21171
	movq	%rdx, %rax	# D.21171, D.21171
	cmpq	%rax, %rcx	# D.21171, D.21171
	jle	.L943	#,
	.loc 1 4432 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp139
	movq	32(%rax), %rdx	# __o1_14->chunk_limit, D.21170
	movq	-24(%rbp), %rax	# __o1, tmp140
	movq	%rdx, 24(%rax)	# D.21170, __o1_14->next_free
.L943:
	.loc 1 4432 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp141
	movq	24(%rax), %rdx	# __o1_14->next_free, D.21170
	movq	-24(%rbp), %rax	# __o1, tmp142
	movq	%rdx, 16(%rax)	# D.21170, __o1_14->object_base
	movq	-16(%rbp), %rax	# value, D.21175
.LBE112:
.LBE110:
	movq	%rax, -8(%rbp)	# thiscase.630, thiscase
	.loc 1 4436 0 is_stmt 1 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.631
	movq	8(%rax), %rax	# cfun.631_42->stmt, D.21176
	movq	32(%rax), %rdx	# _43->x_case_stack, D.21177
	movq	-8(%rbp), %rax	# thiscase, tmp143
	movq	%rdx, 8(%rax)	# D.21177, thiscase_41->next
	.loc 1 4437 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.632
	movq	8(%rax), %rax	# cfun.632_45->stmt, D.21176
	movq	40(%rax), %rdx	# _46->x_nesting_stack, D.21177
	movq	-8(%rbp), %rax	# thiscase, tmp144
	movq	%rdx, (%rax)	# D.21177, thiscase_41->all
	.loc 1 4438 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.633
	movq	8(%rax), %rax	# cfun.633_48->stmt, D.21176
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.21173
	addl	$1, %edx	#, D.21173
	movl	%edx, 48(%rax)	# D.21173, _49->x_nesting_depth
	movl	48(%rax), %edx	# _49->x_nesting_depth, D.21173
	movq	-8(%rbp), %rax	# thiscase, tmp145
	movl	%edx, 16(%rax)	# D.21173, thiscase_41->depth
	.loc 1 4439 0 discriminator 2
	cmpl	$0, -52(%rbp)	#, exit_flag
	je	.L944	#,
	.loc 1 4439 0 is_stmt 0 discriminator 1
	call	gen_label_rtx	#
	jmp	.L945	#
.L944:
	.loc 1 4439 0 discriminator 2
	movl	$0, %eax	#, iftmp.634
.L945:
	.loc 1 4439 0 discriminator 3
	movq	-8(%rbp), %rdx	# thiscase, tmp146
	movq	%rax, 24(%rdx)	# iftmp.634, thiscase_41->exit_label
	.loc 1 4440 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# thiscase, tmp147
	movq	$0, 40(%rax)	#, thiscase_41->data.case_stmt.case_list
	.loc 1 4441 0 discriminator 3
	movq	-8(%rbp), %rax	# thiscase, tmp148
	movq	-64(%rbp), %rdx	# expr, tmp149
	movq	%rdx, 56(%rax)	# tmp149, thiscase_41->data.case_stmt.index_expr
	.loc 1 4442 0 discriminator 3
	movq	-8(%rbp), %rax	# thiscase, tmp150
	movq	-72(%rbp), %rdx	# type, tmp151
	movq	%rdx, 64(%rax)	# tmp151, thiscase_41->data.case_stmt.nominal_type
	.loc 1 4443 0 discriminator 3
	movq	-8(%rbp), %rax	# thiscase, tmp152
	movq	$0, 48(%rax)	#, thiscase_41->data.case_stmt.default_label
	.loc 1 4444 0 discriminator 3
	movq	-8(%rbp), %rax	# thiscase, tmp153
	movq	-80(%rbp), %rdx	# printname, tmp154
	movq	%rdx, 72(%rax)	# tmp154, thiscase_41->data.case_stmt.printname
	.loc 1 4445 0 discriminator 3
	call	force_line_numbers	#
	movq	-8(%rbp), %rdx	# thiscase, tmp155
	movl	%eax, 80(%rdx)	# D.21173, thiscase_41->data.case_stmt.line_number_status
	.loc 1 4446 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.635
	movq	8(%rax), %rax	# cfun.635_60->stmt, D.21176
	movq	-8(%rbp), %rdx	# thiscase, tmp156
	movq	%rdx, 32(%rax)	# tmp156, _61->x_case_stack
	.loc 1 4447 0 discriminator 3
	movq	cfun(%rip), %rax	# cfun, cfun.636
	movq	8(%rax), %rax	# cfun.636_62->stmt, D.21176
	movq	-8(%rbp), %rdx	# thiscase, tmp157
	movq	%rdx, 40(%rax)	# tmp157, _63->x_nesting_stack
	.loc 1 4449 0 discriminator 3
	call	do_pending_stack_adjust	#
	.loc 1 4453 0 discriminator 3
	call	get_last_insn	#
	movzwl	(%rax), %eax	# _64->code, D.21179
	cmpw	$37, %ax	#, D.21179
	je	.L946	#,
	.loc 1 4454 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
.L946:
	.loc 1 4456 0
	call	get_last_insn	#
	movq	-8(%rbp), %rdx	# thiscase, tmp158
	movq	%rax, 32(%rdx)	# D.21178, thiscase_41->data.case_stmt.start
	.loc 1 4458 0
	call	start_cleanup_deferral	#
	.loc 1 4459 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	expand_start_case, .-expand_start_case
	.globl	expand_start_case_dummy
	.type	expand_start_case_dummy, @function
expand_start_case_dummy:
.LFB90:
	.loc 1 4468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
.LBB113:
	.loc 1 4469 0
	movq	$stmt_obstack, -40(%rbp)	#, __h
.LBB114:
	movq	-40(%rbp), %rax	# __h, tmp108
	movq	%rax, -32(%rbp)	# tmp108, __o
	movl	$120, -44(%rbp)	#, __len
	movq	-32(%rbp), %rax	# __o, tmp109
	movq	32(%rax), %rax	# __o_2->chunk_limit, D.21180
	movq	%rax, %rdx	# D.21180, D.21181
	movq	-32(%rbp), %rax	# __o, tmp110
	movq	24(%rax), %rax	# __o_2->next_free, D.21180
	subq	%rax, %rdx	# D.21181, D.21181
	movl	-44(%rbp), %eax	# __len, tmp111
	cltq
	cmpq	%rax, %rdx	# D.21181, D.21181
	jge	.L948	#,
	.loc 1 4469 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %edx	# __len, tmp112
	movq	-32(%rbp), %rax	# __o, tmp113
	movl	%edx, %esi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	_obstack_newchunk	#
.L948:
	.loc 1 4469 0 discriminator 2
	movq	-32(%rbp), %rax	# __o, tmp114
	movq	24(%rax), %rdx	# __o_2->next_free, D.21180
	movl	-44(%rbp), %eax	# __len, tmp115
	cltq
	addq	%rax, %rdx	# D.21182, D.21180
	movq	-32(%rbp), %rax	# __o, tmp116
	movq	%rdx, 24(%rax)	# D.21180, __o_2->next_free
.LBE114:
.LBB115:
	movq	-40(%rbp), %rax	# __h, tmp117
	movq	%rax, -24(%rbp)	# tmp117, __o1
	movq	-24(%rbp), %rax	# __o1, tmp118
	movq	16(%rax), %rax	# __o1_13->object_base, tmp119
	movq	%rax, -16(%rbp)	# tmp119, value
	movq	-24(%rbp), %rax	# __o1, tmp120
	movq	24(%rax), %rax	# __o1_13->next_free, D.21180
	cmpq	-16(%rbp), %rax	# value, D.21180
	jne	.L949	#,
	.loc 1 4469 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp121
	movzbl	80(%rax), %edx	# __o1_13->maybe_empty_object, tmp124
	orl	$2, %edx	#, tmp125
	movb	%dl, 80(%rax)	# tmp125, __o1_13->maybe_empty_object
.L949:
	.loc 1 4469 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp126
	movq	24(%rax), %rax	# __o1_13->next_free, D.21180
	movq	%rax, %rdx	# D.21180, D.21181
	movq	-24(%rbp), %rax	# __o1, tmp127
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.21183
	cltq
	addq	%rax, %rdx	# D.21181, D.21181
	movq	-24(%rbp), %rax	# __o1, tmp128
	movl	48(%rax), %eax	# __o1_13->alignment_mask, D.21183
	notl	%eax	# D.21183
	cltq
	andq	%rdx, %rax	# D.21181, D.21181
	movq	%rax, %rdx	# D.21181, D.21180
	movq	-24(%rbp), %rax	# __o1, tmp129
	movq	%rdx, 24(%rax)	# D.21180, __o1_13->next_free
	movq	-24(%rbp), %rax	# __o1, tmp130
	movq	24(%rax), %rax	# __o1_13->next_free, D.21180
	movq	%rax, %rdx	# D.21180, D.21181
	movq	-24(%rbp), %rax	# __o1, tmp131
	movq	8(%rax), %rax	# __o1_13->chunk, D.21184
	movq	%rdx, %rcx	# D.21181, D.21181
	subq	%rax, %rcx	# D.21181, D.21181
	movq	-24(%rbp), %rax	# __o1, tmp132
	movq	32(%rax), %rax	# __o1_13->chunk_limit, D.21180
	movq	%rax, %rdx	# D.21180, D.21181
	movq	-24(%rbp), %rax	# __o1, tmp133
	movq	8(%rax), %rax	# __o1_13->chunk, D.21184
	subq	%rax, %rdx	# D.21181, D.21181
	movq	%rdx, %rax	# D.21181, D.21181
	cmpq	%rax, %rcx	# D.21181, D.21181
	jle	.L950	#,
	.loc 1 4469 0 discriminator 1
	movq	-24(%rbp), %rax	# __o1, tmp134
	movq	32(%rax), %rdx	# __o1_13->chunk_limit, D.21180
	movq	-24(%rbp), %rax	# __o1, tmp135
	movq	%rdx, 24(%rax)	# D.21180, __o1_13->next_free
.L950:
	.loc 1 4469 0 discriminator 2
	movq	-24(%rbp), %rax	# __o1, tmp136
	movq	24(%rax), %rdx	# __o1_13->next_free, D.21180
	movq	-24(%rbp), %rax	# __o1, tmp137
	movq	%rdx, 16(%rax)	# D.21180, __o1_13->object_base
	movq	-16(%rbp), %rax	# value, D.21185
.LBE115:
.LBE113:
	movq	%rax, -8(%rbp)	# thiscase.637, thiscase
	.loc 1 4473 0 is_stmt 1 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.638
	movq	8(%rax), %rax	# cfun.638_41->stmt, D.21186
	movq	32(%rax), %rdx	# _42->x_case_stack, D.21187
	movq	-8(%rbp), %rax	# thiscase, tmp138
	movq	%rdx, 8(%rax)	# D.21187, thiscase_40->next
	.loc 1 4474 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.639
	movq	8(%rax), %rax	# cfun.639_44->stmt, D.21186
	movq	40(%rax), %rdx	# _45->x_nesting_stack, D.21187
	movq	-8(%rbp), %rax	# thiscase, tmp139
	movq	%rdx, (%rax)	# D.21187, thiscase_40->all
	.loc 1 4475 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.640
	movq	8(%rax), %rax	# cfun.640_47->stmt, D.21186
	movl	48(%rax), %edx	# _48->x_nesting_depth, D.21183
	addl	$1, %edx	#, D.21183
	movl	%edx, 48(%rax)	# D.21183, _48->x_nesting_depth
	movl	48(%rax), %edx	# _48->x_nesting_depth, D.21183
	movq	-8(%rbp), %rax	# thiscase, tmp140
	movl	%edx, 16(%rax)	# D.21183, thiscase_40->depth
	.loc 1 4476 0 discriminator 2
	movq	-8(%rbp), %rax	# thiscase, tmp141
	movq	$0, 24(%rax)	#, thiscase_40->exit_label
	.loc 1 4477 0 discriminator 2
	movq	-8(%rbp), %rax	# thiscase, tmp142
	movq	$0, 40(%rax)	#, thiscase_40->data.case_stmt.case_list
	.loc 1 4478 0 discriminator 2
	movq	-8(%rbp), %rax	# thiscase, tmp143
	movq	$0, 32(%rax)	#, thiscase_40->data.case_stmt.start
	.loc 1 4479 0 discriminator 2
	movq	-8(%rbp), %rax	# thiscase, tmp144
	movq	$0, 64(%rax)	#, thiscase_40->data.case_stmt.nominal_type
	.loc 1 4480 0 discriminator 2
	movq	-8(%rbp), %rax	# thiscase, tmp145
	movq	$0, 48(%rax)	#, thiscase_40->data.case_stmt.default_label
	.loc 1 4481 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.641
	movq	8(%rax), %rax	# cfun.641_52->stmt, D.21186
	movq	-8(%rbp), %rdx	# thiscase, tmp146
	movq	%rdx, 32(%rax)	# tmp146, _53->x_case_stack
	.loc 1 4482 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.642
	movq	8(%rax), %rax	# cfun.642_54->stmt, D.21186
	movq	-8(%rbp), %rdx	# thiscase, tmp147
	movq	%rdx, 40(%rax)	# tmp147, _55->x_nesting_stack
	.loc 1 4483 0 discriminator 2
	call	start_cleanup_deferral	#
	.loc 1 4484 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	expand_start_case_dummy, .-expand_start_case_dummy
	.globl	expand_end_case_dummy
	.type	expand_end_case_dummy, @function
expand_end_case_dummy:
.LFB91:
	.loc 1 4490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 4491 0
	call	end_cleanup_deferral	#
.LBB116:
	.loc 1 4492 0
	movq	cfun(%rip), %rax	# cfun, cfun.643
	movq	8(%rax), %rax	# cfun.643_1->stmt, D.21188
	movq	32(%rax), %rax	# _2->x_case_stack, tmp121
	movq	%rax, -32(%rbp)	# tmp121, target
.L959:
	.loc 1 4492 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.644
	movq	8(%rax), %rax	# cfun.644_4->stmt, D.21188
	movq	40(%rax), %rax	# _5->x_nesting_stack, tmp122
	movq	%rax, -24(%rbp)	# tmp122, this
	movq	cfun(%rip), %rax	# cfun, cfun.645
	movq	8(%rax), %rax	# cfun.645_7->stmt, D.21188
	movq	24(%rax), %rax	# _8->x_loop_stack, D.21189
	cmpq	-24(%rbp), %rax	# this, D.21189
	jne	.L952	#,
	movq	cfun(%rip), %rax	# cfun, cfun.646
	movq	8(%rax), %rax	# cfun.646_10->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.647
	movq	8(%rdx), %rdx	# cfun.647_12->stmt, D.21188
	movq	24(%rdx), %rdx	# _13->x_loop_stack, D.21189
	movq	8(%rdx), %rdx	# _14->next, D.21189
	movq	%rdx, 24(%rax)	# D.21189, _11->x_loop_stack
.L952:
	.loc 1 4492 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.648
	movq	8(%rax), %rax	# cfun.648_16->stmt, D.21188
	movq	16(%rax), %rax	# _17->x_cond_stack, D.21189
	cmpq	-24(%rbp), %rax	# this, D.21189
	jne	.L953	#,
	.loc 1 4492 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.649
	movq	8(%rax), %rax	# cfun.649_19->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.650
	movq	8(%rdx), %rdx	# cfun.650_21->stmt, D.21188
	movq	16(%rdx), %rdx	# _22->x_cond_stack, D.21189
	movq	8(%rdx), %rdx	# _23->next, D.21189
	movq	%rdx, 16(%rax)	# D.21189, _20->x_cond_stack
.L953:
	.loc 1 4492 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.651
	movq	8(%rax), %rax	# cfun.651_25->stmt, D.21188
	movq	(%rax), %rax	# _26->x_block_stack, D.21189
	cmpq	-24(%rbp), %rax	# this, D.21189
	jne	.L954	#,
	.loc 1 4492 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.652
	movq	8(%rax), %rax	# cfun.652_28->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.653
	movq	8(%rdx), %rdx	# cfun.653_30->stmt, D.21188
	movq	(%rdx), %rdx	# _31->x_block_stack, D.21189
	movq	8(%rdx), %rdx	# _32->next, D.21189
	movq	%rdx, (%rax)	# D.21189, _29->x_block_stack
.L954:
	.loc 1 4492 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.654
	movq	8(%rax), %rax	# cfun.654_34->stmt, D.21188
	movq	8(%rax), %rax	# _35->x_stack_block_stack, D.21189
	cmpq	-24(%rbp), %rax	# this, D.21189
	jne	.L955	#,
	.loc 1 4492 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.655
	movq	8(%rax), %rax	# cfun.655_37->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.656
	movq	8(%rdx), %rdx	# cfun.656_39->stmt, D.21188
	movq	8(%rdx), %rdx	# _40->x_stack_block_stack, D.21189
	movq	8(%rdx), %rdx	# _41->next, D.21189
	movq	%rdx, 8(%rax)	# D.21189, _38->x_stack_block_stack
.L955:
	.loc 1 4492 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.657
	movq	8(%rax), %rax	# cfun.657_43->stmt, D.21188
	movq	32(%rax), %rax	# _44->x_case_stack, D.21189
	cmpq	-24(%rbp), %rax	# this, D.21189
	jne	.L956	#,
	.loc 1 4492 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.658
	movq	8(%rax), %rax	# cfun.658_46->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.659
	movq	8(%rdx), %rdx	# cfun.659_48->stmt, D.21188
	movq	32(%rdx), %rdx	# _49->x_case_stack, D.21189
	movq	8(%rdx), %rdx	# _50->next, D.21189
	movq	%rdx, 32(%rax)	# D.21189, _47->x_case_stack
.L956:
	.loc 1 4492 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.660
	movq	8(%rax), %rax	# cfun.660_52->stmt, D.21188
	movq	cfun(%rip), %rdx	# cfun, cfun.661
	movq	8(%rdx), %rdx	# cfun.661_54->stmt, D.21188
	movq	40(%rdx), %rdx	# _55->x_nesting_stack, D.21189
	movl	16(%rdx), %edx	# _56->depth, D.21190
	subl	$1, %edx	#, D.21190
	movl	%edx, 48(%rax)	# D.21190, _53->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.662
	movq	8(%rax), %rax	# cfun.662_59->stmt, D.21188
	movq	-24(%rbp), %rdx	# this, tmp123
	movq	(%rdx), %rdx	# this_6->all, D.21189
	movq	%rdx, 40(%rax)	# D.21189, _60->x_nesting_stack
.LBB117:
	movq	$stmt_obstack, -16(%rbp)	#, __o
	movq	-24(%rbp), %rax	# this, tmp124
	movq	%rax, -8(%rbp)	# tmp124, __obj
	movq	-16(%rbp), %rax	# __o, tmp125
	movq	8(%rax), %rax	# __o_62->chunk, D.21191
	cmpq	-8(%rbp), %rax	# __obj, D.21191
	jae	.L957	#,
	.loc 1 4492 0 discriminator 1
	movq	-16(%rbp), %rax	# __o, tmp126
	movq	32(%rax), %rax	# __o_62->chunk_limit, D.21192
	cmpq	-8(%rbp), %rax	# __obj, D.21192
	jbe	.L957	#,
	movq	-16(%rbp), %rax	# __o, tmp127
	movq	-8(%rbp), %rdx	# __obj, tmp128
	movq	%rdx, 16(%rax)	# tmp128, __o_62->object_base
	movq	-16(%rbp), %rax	# __o, tmp129
	movq	16(%rax), %rdx	# __o_62->object_base, D.21192
	movq	-16(%rbp), %rax	# __o, tmp130
	movq	%rdx, 24(%rax)	# D.21192, __o_62->next_free
	jmp	.L958	#
.L957:
	.loc 1 4492 0 discriminator 2
	movq	-8(%rbp), %rdx	# __obj, tmp131
	movq	-16(%rbp), %rax	# __o, tmp132
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	obstack_free	#
.L958:
.LBE117:
	.loc 1 4492 0 discriminator 1
	movq	-24(%rbp), %rax	# this, tmp133
	cmpq	-32(%rbp), %rax	# target, tmp133
	jne	.L959	#,
.LBE116:
	.loc 1 4493 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	expand_end_case_dummy, .-expand_end_case_dummy
	.globl	case_index_expr_type
	.type	case_index_expr_type, @function
case_index_expr_type:
.LFB92:
	.loc 1 4500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 4501 0
	movq	cfun(%rip), %rax	# cfun, cfun.663
	movq	8(%rax), %rax	# cfun.663_2->stmt, D.21194
	movq	32(%rax), %rax	# _3->x_case_stack, D.21195
	testq	%rax, %rax	# D.21195
	je	.L961	#,
	.loc 1 4502 0
	movq	cfun(%rip), %rax	# cfun, cfun.664
	movq	8(%rax), %rax	# cfun.664_5->stmt, D.21194
	movq	32(%rax), %rax	# _6->x_case_stack, D.21195
	movq	56(%rax), %rax	# _7->data.case_stmt.index_expr, D.21196
	movq	8(%rax), %rax	# _8->common.type, D.21193
	jmp	.L962	#
.L961:
	.loc 1 4503 0
	movl	$0, %eax	#, D.21193
.L962:
	.loc 1 4504 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	case_index_expr_type, .-case_index_expr_type
	.section	.rodata
	.align 8
.LC27:
	.string	"unreachable code at beginning of %s"
	.text
	.type	check_seenlabel, @function
check_seenlabel:
.LFB93:
	.loc 1 4508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 4510 0
	movq	cfun(%rip), %rax	# cfun, cfun.665
	movq	8(%rax), %rax	# cfun.665_3->stmt, D.21197
	movq	32(%rax), %rax	# _4->x_case_stack, D.21198
	movl	80(%rax), %eax	# _5->data.case_stmt.line_number_status, D.21199
	testl	%eax, %eax	# D.21199
	js	.L963	#,
.LBB118:
	.loc 1 4515 0
	movq	cfun(%rip), %rax	# cfun, cfun.666
	movq	8(%rax), %rax	# cfun.666_7->stmt, D.21197
	movq	32(%rax), %rax	# _8->x_case_stack, D.21198
	movl	80(%rax), %eax	# _9->data.case_stmt.line_number_status, D.21199
	movl	%eax, %edi	# D.21199,
	call	restore_line_number_status	#
	.loc 1 4516 0
	movq	cfun(%rip), %rax	# cfun, cfun.667
	movq	8(%rax), %rax	# cfun.667_11->stmt, D.21197
	movq	32(%rax), %rax	# _12->x_case_stack, D.21198
	movl	$-1, 80(%rax)	#, _13->data.case_stmt.line_number_status
	.loc 1 4518 0
	movq	cfun(%rip), %rax	# cfun, cfun.668
	movq	8(%rax), %rax	# cfun.668_14->stmt, D.21197
	movq	32(%rax), %rax	# _15->x_case_stack, D.21198
	movq	32(%rax), %rax	# _16->data.case_stmt.start, tmp86
	movq	%rax, -8(%rbp)	# tmp86, insn
	jmp	.L965	#
.L971:
	.loc 1 4522 0
	movq	-8(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_2->code, D.21200
	cmpw	$36, %ax	#, D.21200
	jne	.L966	#,
	.loc 1 4523 0
	jmp	.L963	#
.L966:
	.loc 1 4524 0
	movq	-8(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_2->code, D.21200
	cmpw	$37, %ax	#, D.21200
	je	.L967	#,
	.loc 1 4525 0
	movq	-8(%rbp), %rax	# insn, tmp89
	movzwl	(%rax), %eax	# insn_2->code, D.21200
	cmpw	$32, %ax	#, D.21200
	jne	.L968	#,
	.loc 1 4525 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.21201
	movzwl	(%rax), %eax	# _21->code, D.21200
	cmpw	$48, %ax	#, D.21200
	je	.L967	#,
.L968:
	.loc 1 4528 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp91
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp92
	movq	%rax, -8(%rbp)	# tmp92, insn
	.loc 1 4529 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L969	#,
	movq	-8(%rbp), %rax	# insn, tmp93
	movzwl	(%rax), %eax	# insn_23->code, D.21200
	cmpw	$37, %ax	#, D.21200
	jne	.L968	#,
	.loc 1 4529 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp94
	movl	40(%rax), %eax	# insn_23->fld[4].rtint, D.21199
	testl	%eax, %eax	# D.21199
	js	.L968	#,
.L969:
	.loc 1 4532 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, insn
	je	.L970	#,
	.loc 1 4536 0
	movq	cfun(%rip), %rax	# cfun, cfun.669
	movq	8(%rax), %rax	# cfun.669_26->stmt, D.21197
	movq	32(%rax), %rax	# _27->x_case_stack, D.21198
	.loc 1 4533 0
	movq	72(%rax), %rdx	# _28->data.case_stmt.printname, D.21202
	movq	-8(%rbp), %rax	# insn, tmp95
	movl	40(%rax), %esi	# insn_23->fld[4].rtint, D.21199
	movq	-8(%rbp), %rax	# insn, tmp96
	movq	32(%rax), %rax	# insn_23->fld[3].rtstr, D.21202
	movq	%rdx, %rcx	# D.21202,
	movl	$.LC27, %edx	#,
	movq	%rax, %rdi	# D.21202,
	movl	$0, %eax	#,
	call	warning_with_file_and_line	#
	.loc 1 4537 0
	jmp	.L963	#
.L970:
	jmp	.L963	#
.L967:
	.loc 1 4520 0
	movq	-8(%rbp), %rax	# insn, tmp97
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp98
	movq	%rax, -8(%rbp)	# tmp98, insn
.L965:
	.loc 1 4518 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L971	#,
.L963:
.LBE118:
	.loc 1 4541 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	check_seenlabel, .-check_seenlabel
	.globl	pushcase
	.type	pushcase, @function
pushcase:
.LFB94:
	.loc 1 4564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
	movq	%rsi, -32(%rbp)	# converter, converter
	movq	%rdx, -40(%rbp)	# label, label
	movq	%rcx, -48(%rbp)	# duplicate, duplicate
	.loc 1 4569 0
	movq	cfun(%rip), %rax	# cfun, cfun.670
	movq	8(%rax), %rax	# cfun.670_3->stmt, D.21205
	movq	32(%rax), %rax	# _4->x_case_stack, D.21206
	testq	%rax, %rax	# D.21206
	je	.L973	#,
	.loc 1 4569 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.671
	movq	8(%rax), %rax	# cfun.671_6->stmt, D.21205
	movq	32(%rax), %rax	# _7->x_case_stack, D.21206
	movq	32(%rax), %rax	# _8->data.case_stmt.start, D.21207
	testq	%rax, %rax	# D.21207
	jne	.L974	#,
.L973:
	.loc 1 4570 0 is_stmt 1
	movl	$1, %eax	#, D.21204
	jmp	.L975	#
.L974:
	.loc 1 4572 0
	movq	cfun(%rip), %rax	# cfun, cfun.672
	movq	8(%rax), %rax	# cfun.672_10->stmt, D.21205
	movq	8(%rax), %rax	# _11->x_stack_block_stack, D.21206
	testq	%rax, %rax	# D.21206
	je	.L976	#,
	.loc 1 4573 0
	movq	cfun(%rip), %rax	# cfun, cfun.673
	movq	8(%rax), %rax	# cfun.673_13->stmt, D.21205
	movq	8(%rax), %rax	# _14->x_stack_block_stack, D.21206
	movl	16(%rax), %edx	# _15->depth, D.21204
	movq	cfun(%rip), %rax	# cfun, cfun.674
	movq	8(%rax), %rax	# cfun.674_17->stmt, D.21205
	movq	32(%rax), %rax	# _18->x_case_stack, D.21206
	movl	16(%rax), %eax	# _19->depth, D.21204
	cmpl	%eax, %edx	# D.21204, D.21204
	jle	.L976	#,
	.loc 1 4574 0
	movl	$5, %eax	#, D.21204
	jmp	.L975	#
.L976:
	.loc 1 4576 0
	movq	cfun(%rip), %rax	# cfun, cfun.675
	movq	8(%rax), %rax	# cfun.675_22->stmt, D.21205
	movq	32(%rax), %rax	# _23->x_case_stack, D.21206
	movq	56(%rax), %rax	# _24->data.case_stmt.index_expr, D.21208
	movq	8(%rax), %rax	# _25->common.type, tmp90
	movq	%rax, -16(%rbp)	# tmp90, index_type
	.loc 1 4577 0
	movq	cfun(%rip), %rax	# cfun, cfun.676
	movq	8(%rax), %rax	# cfun.676_27->stmt, D.21205
	movq	32(%rax), %rax	# _28->x_case_stack, D.21206
	movq	64(%rax), %rax	# _29->data.case_stmt.nominal_type, tmp91
	movq	%rax, -8(%rbp)	# tmp91, nominal_type
	.loc 1 4580 0
	movq	global_trees(%rip), %rax	# global_trees, D.21208
	cmpq	-16(%rbp), %rax	# index_type, D.21208
	jne	.L977	#,
	.loc 1 4581 0
	movl	$0, %eax	#, D.21204
	jmp	.L975	#
.L977:
	.loc 1 4584 0
	cmpq	$0, -24(%rbp)	#, value
	je	.L978	#,
	.loc 1 4585 0
	movq	-24(%rbp), %rcx	# value, tmp92
	movq	-8(%rbp), %rdx	# nominal_type, tmp93
	movq	-32(%rbp), %rax	# converter, tmp94
	movq	%rcx, %rsi	# tmp92,
	movq	%rdx, %rdi	# tmp93,
	call	*%rax	# tmp94
	movq	%rax, -24(%rbp)	# tmp95, value
.L978:
	.loc 1 4587 0
	call	check_seenlabel	#
	.loc 1 4591 0
	cmpq	$0, -24(%rbp)	#, value
	je	.L979	#,
	.loc 1 4592 0
	movq	-24(%rbp), %rax	# value, tmp96
	movzbl	18(%rax), %eax	# *value_1, D.21209
	andl	$4, %eax	#, D.21209
	testb	%al, %al	# D.21209
	jne	.L980	#,
	.loc 1 4593 0
	movq	-16(%rbp), %rdx	# index_type, tmp97
	movq	-24(%rbp), %rax	# value, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21204
	jne	.L979	#,
.L980:
	.loc 1 4594 0
	movl	$3, %eax	#, D.21204
	jmp	.L975	#
.L979:
	.loc 1 4596 0
	movq	-48(%rbp), %rcx	# duplicate, tmp99
	movq	-40(%rbp), %rdx	# label, tmp100
	movq	-24(%rbp), %rsi	# value, tmp101
	movq	-24(%rbp), %rax	# value, tmp102
	movq	%rax, %rdi	# tmp102,
	call	add_case_node	#
.L975:
	.loc 1 4597 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	pushcase, .-pushcase
	.globl	pushcase_range
	.type	pushcase_range, @function
pushcase_range:
.LFB95:
	.loc 1 4614 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# value1, value1
	movq	%rsi, -32(%rbp)	# value2, value2
	movq	%rdx, -40(%rbp)	# converter, converter
	movq	%rcx, -48(%rbp)	# label, label
	movq	%r8, -56(%rbp)	# duplicate, duplicate
	.loc 1 4619 0
	movq	cfun(%rip), %rax	# cfun, cfun.677
	movq	8(%rax), %rax	# cfun.677_5->stmt, D.21211
	movq	32(%rax), %rax	# _6->x_case_stack, D.21212
	testq	%rax, %rax	# D.21212
	je	.L982	#,
	.loc 1 4619 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.678
	movq	8(%rax), %rax	# cfun.678_8->stmt, D.21211
	movq	32(%rax), %rax	# _9->x_case_stack, D.21212
	movq	32(%rax), %rax	# _10->data.case_stmt.start, D.21213
	testq	%rax, %rax	# D.21213
	jne	.L983	#,
.L982:
	.loc 1 4620 0 is_stmt 1
	movl	$1, %eax	#, D.21210
	jmp	.L984	#
.L983:
	.loc 1 4622 0
	movq	cfun(%rip), %rax	# cfun, cfun.679
	movq	8(%rax), %rax	# cfun.679_12->stmt, D.21211
	movq	8(%rax), %rax	# _13->x_stack_block_stack, D.21212
	testq	%rax, %rax	# D.21212
	je	.L985	#,
	.loc 1 4623 0
	movq	cfun(%rip), %rax	# cfun, cfun.680
	movq	8(%rax), %rax	# cfun.680_15->stmt, D.21211
	movq	8(%rax), %rax	# _16->x_stack_block_stack, D.21212
	movl	16(%rax), %edx	# _17->depth, D.21210
	movq	cfun(%rip), %rax	# cfun, cfun.681
	movq	8(%rax), %rax	# cfun.681_19->stmt, D.21211
	movq	32(%rax), %rax	# _20->x_case_stack, D.21212
	movl	16(%rax), %eax	# _21->depth, D.21210
	cmpl	%eax, %edx	# D.21210, D.21210
	jle	.L985	#,
	.loc 1 4624 0
	movl	$5, %eax	#, D.21210
	jmp	.L984	#
.L985:
	.loc 1 4626 0
	movq	cfun(%rip), %rax	# cfun, cfun.682
	movq	8(%rax), %rax	# cfun.682_24->stmt, D.21211
	movq	32(%rax), %rax	# _25->x_case_stack, D.21212
	movq	56(%rax), %rax	# _26->data.case_stmt.index_expr, D.21214
	movq	8(%rax), %rax	# _27->common.type, tmp94
	movq	%rax, -16(%rbp)	# tmp94, index_type
	.loc 1 4627 0
	movq	cfun(%rip), %rax	# cfun, cfun.683
	movq	8(%rax), %rax	# cfun.683_29->stmt, D.21211
	movq	32(%rax), %rax	# _30->x_case_stack, D.21212
	movq	64(%rax), %rax	# _31->data.case_stmt.nominal_type, tmp95
	movq	%rax, -8(%rbp)	# tmp95, nominal_type
	.loc 1 4630 0
	movq	global_trees(%rip), %rax	# global_trees, D.21214
	cmpq	-16(%rbp), %rax	# index_type, D.21214
	jne	.L986	#,
	.loc 1 4631 0
	movl	$0, %eax	#, D.21210
	jmp	.L984	#
.L986:
	.loc 1 4633 0
	call	check_seenlabel	#
	.loc 1 4637 0
	cmpq	$0, -24(%rbp)	#, value1
	jne	.L987	#,
	.loc 1 4638 0
	movq	-16(%rbp), %rax	# index_type, tmp96
	movq	104(%rax), %rax	# index_type_28->type.minval, tmp97
	movq	%rax, -24(%rbp)	# tmp97, value1
.L987:
	.loc 1 4639 0
	cmpq	$0, -32(%rbp)	#, value2
	jne	.L988	#,
	.loc 1 4640 0
	movq	-16(%rbp), %rax	# index_type, tmp98
	movq	112(%rax), %rax	# index_type_28->type.maxval, tmp99
	movq	%rax, -32(%rbp)	# tmp99, value2
.L988:
	.loc 1 4644 0
	cmpq	$0, -32(%rbp)	#, value2
	je	.L989	#,
	.loc 1 4644 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rdx	# value1, tmp100
	movq	-32(%rbp), %rax	# value2, tmp101
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21210
	je	.L989	#,
	.loc 1 4645 0 is_stmt 1
	movl	$4, %eax	#, D.21210
	jmp	.L984	#
.L989:
	.loc 1 4650 0
	cmpq	$0, -32(%rbp)	#, value2
	jne	.L990	#,
	.loc 1 4651 0
	movq	-8(%rbp), %rax	# nominal_type, tmp102
	movq	112(%rax), %rax	# nominal_type_32->type.maxval, tmp103
	movq	%rax, -32(%rbp)	# tmp103, value2
.L990:
	.loc 1 4653 0
	movq	-24(%rbp), %rcx	# value1, tmp104
	movq	-8(%rbp), %rdx	# nominal_type, tmp105
	movq	-40(%rbp), %rax	# converter, tmp106
	movq	%rcx, %rsi	# tmp104,
	movq	%rdx, %rdi	# tmp105,
	call	*%rax	# tmp106
	movq	%rax, -24(%rbp)	# tmp107, value1
	.loc 1 4654 0
	movq	-32(%rbp), %rcx	# value2, tmp108
	movq	-8(%rbp), %rdx	# nominal_type, tmp109
	movq	-40(%rbp), %rax	# converter, tmp110
	movq	%rcx, %rsi	# tmp108,
	movq	%rdx, %rdi	# tmp109,
	call	*%rax	# tmp110
	movq	%rax, -32(%rbp)	# tmp111, value2
	.loc 1 4657 0
	movq	-24(%rbp), %rax	# value1, tmp112
	movzbl	18(%rax), %eax	# *value1_43, D.21215
	andl	$4, %eax	#, D.21215
	testb	%al, %al	# D.21215
	jne	.L991	#,
	.loc 1 4658 0
	movq	-16(%rbp), %rdx	# index_type, tmp113
	movq	-24(%rbp), %rax	# value1, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21210
	jne	.L992	#,
.L991:
	.loc 1 4659 0
	movl	$3, %eax	#, D.21210
	jmp	.L984	#
.L992:
	.loc 1 4661 0
	movq	-32(%rbp), %rax	# value2, tmp115
	movzbl	18(%rax), %eax	# *value2_44, D.21215
	andl	$4, %eax	#, D.21215
	testb	%al, %al	# D.21215
	jne	.L993	#,
	.loc 1 4662 0
	movq	-16(%rbp), %rdx	# index_type, tmp116
	movq	-32(%rbp), %rax	# value2, tmp117
	movq	%rdx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	int_fits_type_p	#
	testl	%eax, %eax	# D.21210
	jne	.L994	#,
.L993:
	.loc 1 4663 0
	movl	$3, %eax	#, D.21210
	jmp	.L984	#
.L994:
	.loc 1 4665 0
	movq	-56(%rbp), %rcx	# duplicate, tmp118
	movq	-48(%rbp), %rdx	# label, tmp119
	movq	-32(%rbp), %rsi	# value2, tmp120
	movq	-24(%rbp), %rax	# value1, tmp121
	movq	%rax, %rdi	# tmp121,
	call	add_case_node	#
.L984:
	.loc 1 4666 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	pushcase_range, .-pushcase_range
	.globl	add_case_node
	.type	add_case_node, @function
add_case_node:
.LFB96:
	.loc 1 4677 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# low, low
	movq	%rsi, -80(%rbp)	# high, high
	movq	%rdx, -88(%rbp)	# label, label
	movq	%rcx, -96(%rbp)	# duplicate, duplicate
	.loc 1 4683 0
	cmpq	$0, -80(%rbp)	#, high
	jne	.L996	#,
	.loc 1 4684 0
	movq	-72(%rbp), %rax	# low, tmp117
	movq	%rax, -80(%rbp)	# tmp117, high
.L996:
	.loc 1 4687 0
	cmpq	$0, -80(%rbp)	#, high
	jne	.L997	#,
	.loc 1 4687 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, low
	jne	.L997	#,
	.loc 1 4689 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.684
	movq	8(%rax), %rax	# cfun.684_10->stmt, D.21217
	movq	32(%rax), %rax	# _11->x_case_stack, D.21218
	movq	48(%rax), %rax	# _12->data.case_stmt.default_label, D.21219
	testq	%rax, %rax	# D.21219
	je	.L998	#,
	.loc 1 4691 0
	movq	cfun(%rip), %rax	# cfun, cfun.685
	movq	8(%rax), %rax	# cfun.685_14->stmt, D.21217
	movq	32(%rax), %rax	# _15->x_case_stack, D.21218
	movq	48(%rax), %rdx	# _16->data.case_stmt.default_label, D.21219
	movq	-96(%rbp), %rax	# duplicate, tmp118
	movq	%rdx, (%rax)	# D.21219, *duplicate_18(D)
	.loc 1 4692 0
	movl	$2, %eax	#, D.21216
	jmp	.L999	#
.L998:
	.loc 1 4694 0
	movq	cfun(%rip), %rax	# cfun, cfun.686
	movq	8(%rax), %rax	# cfun.686_20->stmt, D.21217
	movq	32(%rax), %rax	# _21->x_case_stack, D.21218
	movq	-88(%rbp), %rdx	# label, tmp119
	movq	%rdx, 48(%rax)	# tmp119, _22->data.case_stmt.default_label
	.loc 1 4695 0
	movq	-88(%rbp), %rax	# label, tmp120
	movq	%rax, %rdi	# tmp120,
	call	expand_label	#
	.loc 1 4696 0
	movl	$0, %eax	#, D.21216
	jmp	.L999	#
.L997:
	.loc 1 4699 0
	movq	cfun(%rip), %rax	# cfun, cfun.687
	movq	8(%rax), %rax	# cfun.687_25->stmt, D.21217
	movq	32(%rax), %rax	# _26->x_case_stack, D.21218
	addq	$40, %rax	#, tmp121
	movq	%rax, -40(%rbp)	# tmp121, q
	.loc 1 4700 0
	movq	-40(%rbp), %rax	# q, tmp122
	movq	(%rax), %rax	# *q_28, tmp123
	movq	%rax, -48(%rbp)	# tmp123, p
	.loc 1 4702 0
	jmp	.L1000	#
.L1003:
	.loc 1 4704 0
	movq	-32(%rbp), %rax	# r, tmp124
	movq	%rax, -48(%rbp)	# tmp124, p
	.loc 1 4707 0
	movq	-48(%rbp), %rax	# p, tmp125
	movq	24(%rax), %rdx	# p_31->low, D.21219
	movq	-80(%rbp), %rax	# high, tmp126
	movq	%rdx, %rsi	# D.21219,
	movq	%rax, %rdi	# tmp126,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21216
	je	.L1001	#,
	.loc 1 4708 0
	movq	-48(%rbp), %rax	# p, tmp127
	movq	%rax, -40(%rbp)	# tmp127, q
	jmp	.L1000	#
.L1001:
	.loc 1 4711 0
	movq	-48(%rbp), %rax	# p, tmp128
	movq	32(%rax), %rax	# p_31->high, D.21219
	movq	-72(%rbp), %rdx	# low, tmp129
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# D.21219,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21216
	je	.L1002	#,
	.loc 1 4712 0
	movq	-48(%rbp), %rax	# p, tmp133
	addq	$8, %rax	#, tmp132
	movq	%rax, -40(%rbp)	# tmp132, q
	jmp	.L1000	#
.L1002:
	.loc 1 4717 0
	movq	-48(%rbp), %rax	# p, tmp134
	movq	40(%rax), %rdx	# p_31->code_label, D.21219
	movq	-96(%rbp), %rax	# duplicate, tmp135
	movq	%rdx, (%rax)	# D.21219, *duplicate_18(D)
	.loc 1 4718 0
	movl	$2, %eax	#, D.21216
	jmp	.L999	#
.L1000:
	.loc 1 4702 0 discriminator 1
	movq	-40(%rbp), %rax	# q, tmp136
	movq	(%rax), %rax	# *q_4, tmp137
	movq	%rax, -32(%rbp)	# tmp137, r
	cmpq	$0, -32(%rbp)	#, r
	jne	.L1003	#,
	.loc 1 4724 0
	movl	$56, %edi	#,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp138, r
	.loc 1 4725 0
	movq	-32(%rbp), %rax	# r, tmp139
	movq	-72(%rbp), %rdx	# low, tmp140
	movq	%rdx, 24(%rax)	# tmp140, r_40->low
	.loc 1 4728 0
	movq	-80(%rbp), %rdx	# high, tmp141
	movq	-72(%rbp), %rax	# low, tmp142
	movq	%rdx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21216
	je	.L1004	#,
	.loc 1 4729 0
	movq	-32(%rbp), %rax	# r, tmp143
	movq	24(%rax), %rdx	# r_40->low, D.21219
	movq	-32(%rbp), %rax	# r, tmp144
	movq	%rdx, 32(%rax)	# D.21219, r_40->high
	jmp	.L1005	#
.L1004:
	.loc 1 4731 0
	movq	-32(%rbp), %rax	# r, tmp145
	movq	-80(%rbp), %rdx	# high, tmp146
	movq	%rdx, 32(%rax)	# tmp146, r_40->high
.L1005:
	.loc 1 4733 0
	movq	-32(%rbp), %rax	# r, tmp147
	movq	-88(%rbp), %rdx	# label, tmp148
	movq	%rdx, 40(%rax)	# tmp148, r_40->code_label
	.loc 1 4734 0
	movq	-88(%rbp), %rax	# label, tmp149
	movq	%rax, %rdi	# tmp149,
	call	expand_label	#
	.loc 1 4736 0
	movq	-40(%rbp), %rax	# q, tmp150
	movq	-32(%rbp), %rdx	# r, tmp151
	movq	%rdx, (%rax)	# tmp151, *q_4
	.loc 1 4737 0
	movq	-32(%rbp), %rax	# r, tmp152
	movq	-48(%rbp), %rdx	# p, tmp153
	movq	%rdx, 16(%rax)	# tmp153, r_40->parent
	.loc 1 4738 0
	movq	-32(%rbp), %rax	# r, tmp154
	movq	$0, (%rax)	#, r_40->left
	.loc 1 4739 0
	movq	-32(%rbp), %rax	# r, tmp155
	movq	$0, 8(%rax)	#, r_40->right
	.loc 1 4740 0
	movq	-32(%rbp), %rax	# r, tmp156
	movl	$0, 48(%rax)	#, r_40->balance
	.loc 1 4742 0
	jmp	.L1006	#
.L1039:
.LBB119:
	.loc 1 4746 0
	movq	-48(%rbp), %rax	# p, tmp157
	movq	(%rax), %rax	# p_3->left, D.21220
	cmpq	-32(%rbp), %rax	# r, D.21220
	jne	.L1007	#,
.LBB120:
	.loc 1 4750 0
	movq	-48(%rbp), %rax	# p, tmp158
	movl	48(%rax), %eax	# p_3->balance, tmp159
	movl	%eax, -64(%rbp)	# tmp159, b
	cmpl	$0, -64(%rbp)	#, b
	jne	.L1008	#,
	.loc 1 4752 0
	movq	-48(%rbp), %rax	# p, tmp160
	movl	$-1, 48(%rax)	#, p_3->balance
	jmp	.L1024	#
.L1008:
	.loc 1 4753 0
	cmpl	$0, -64(%rbp)	#, b
	jns	.L1010	#,
	.loc 1 4755 0
	movq	-32(%rbp), %rax	# r, tmp161
	movl	48(%rax), %eax	# r_5->balance, D.21216
	testl	%eax, %eax	# D.21216
	jns	.L1011	#,
	.loc 1 4758 0
	movq	-32(%rbp), %rax	# r, tmp162
	movq	8(%rax), %rax	# r_5->right, tmp163
	movq	%rax, -24(%rbp)	# tmp163, s
	movq	-48(%rbp), %rax	# p, tmp164
	movq	-24(%rbp), %rdx	# s, tmp165
	movq	%rdx, (%rax)	# tmp165, p_3->left
	movq	-48(%rbp), %rax	# p, tmp166
	movq	(%rax), %rax	# p_3->left, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1012	#,
	.loc 1 4759 0
	movq	-24(%rbp), %rax	# s, tmp167
	movq	-48(%rbp), %rdx	# p, tmp168
	movq	%rdx, 16(%rax)	# tmp168, s_46->parent
.L1012:
	.loc 1 4761 0
	movq	-32(%rbp), %rax	# r, tmp169
	movq	-48(%rbp), %rdx	# p, tmp170
	movq	%rdx, 8(%rax)	# tmp170, r_5->right
	.loc 1 4762 0
	movq	-48(%rbp), %rax	# p, tmp171
	movl	$0, 48(%rax)	#, p_3->balance
	.loc 1 4763 0
	movq	-32(%rbp), %rax	# r, tmp172
	movl	$0, 48(%rax)	#, r_5->balance
	.loc 1 4764 0
	movq	-48(%rbp), %rax	# p, tmp173
	movq	16(%rax), %rax	# p_3->parent, tmp174
	movq	%rax, -24(%rbp)	# tmp174, s
	.loc 1 4765 0
	movq	-48(%rbp), %rax	# p, tmp175
	movq	-32(%rbp), %rdx	# r, tmp176
	movq	%rdx, 16(%rax)	# tmp176, p_3->parent
	.loc 1 4767 0
	movq	-32(%rbp), %rax	# r, tmp177
	movq	-24(%rbp), %rdx	# s, tmp178
	movq	%rdx, 16(%rax)	# tmp178, r_5->parent
	movq	-32(%rbp), %rax	# r, tmp179
	movq	16(%rax), %rax	# r_5->parent, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1013	#,
	.loc 1 4769 0
	movq	-24(%rbp), %rax	# s, tmp180
	movq	(%rax), %rax	# s_48->left, D.21220
	cmpq	-48(%rbp), %rax	# p, D.21220
	jne	.L1014	#,
	.loc 1 4770 0
	movq	-24(%rbp), %rax	# s, tmp181
	movq	-32(%rbp), %rdx	# r, tmp182
	movq	%rdx, (%rax)	# tmp182, s_48->left
	jmp	.L1017	#
.L1014:
	.loc 1 4772 0
	movq	-24(%rbp), %rax	# s, tmp183
	movq	-32(%rbp), %rdx	# r, tmp184
	movq	%rdx, 8(%rax)	# tmp184, s_48->right
	jmp	.L1017	#
.L1013:
	.loc 1 4775 0
	movq	cfun(%rip), %rax	# cfun, cfun.688
	movq	8(%rax), %rax	# cfun.688_51->stmt, D.21217
	movq	32(%rax), %rax	# _52->x_case_stack, D.21218
	movq	-32(%rbp), %rdx	# r, tmp185
	movq	%rdx, 40(%rax)	# tmp185, _53->data.case_stmt.case_list
	.loc 1 4813 0
	jmp	.L1023	#
.L1011:
.LBB121:
	.loc 1 4783 0
	movq	-32(%rbp), %rax	# r, tmp186
	movq	8(%rax), %rax	# r_5->right, tmp187
	movq	%rax, -16(%rbp)	# tmp187, t
	.loc 1 4785 0
	movq	-16(%rbp), %rax	# t, tmp188
	movq	8(%rax), %rax	# t_54->right, tmp189
	movq	%rax, -24(%rbp)	# tmp189, s
	movq	-48(%rbp), %rax	# p, tmp190
	movq	-24(%rbp), %rdx	# s, tmp191
	movq	%rdx, (%rax)	# tmp191, p_3->left
	movq	-48(%rbp), %rax	# p, tmp192
	movq	(%rax), %rax	# p_3->left, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1018	#,
	.loc 1 4786 0
	movq	-24(%rbp), %rax	# s, tmp193
	movq	-48(%rbp), %rdx	# p, tmp194
	movq	%rdx, 16(%rax)	# tmp194, s_55->parent
.L1018:
	.loc 1 4788 0
	movq	-16(%rbp), %rax	# t, tmp195
	movq	-48(%rbp), %rdx	# p, tmp196
	movq	%rdx, 8(%rax)	# tmp196, t_54->right
	.loc 1 4789 0
	movq	-16(%rbp), %rax	# t, tmp197
	movq	(%rax), %rax	# t_54->left, tmp198
	movq	%rax, -24(%rbp)	# tmp198, s
	movq	-32(%rbp), %rax	# r, tmp199
	movq	-24(%rbp), %rdx	# s, tmp200
	movq	%rdx, 8(%rax)	# tmp200, r_5->right
	movq	-32(%rbp), %rax	# r, tmp201
	movq	8(%rax), %rax	# r_5->right, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1019	#,
	.loc 1 4790 0
	movq	-24(%rbp), %rax	# s, tmp202
	movq	-32(%rbp), %rdx	# r, tmp203
	movq	%rdx, 16(%rax)	# tmp203, s_57->parent
.L1019:
	.loc 1 4792 0
	movq	-16(%rbp), %rax	# t, tmp204
	movq	-32(%rbp), %rdx	# r, tmp205
	movq	%rdx, (%rax)	# tmp205, t_54->left
	.loc 1 4793 0
	movq	-16(%rbp), %rax	# t, tmp206
	movl	48(%rax), %eax	# t_54->balance, tmp207
	movl	%eax, -64(%rbp)	# tmp207, b
	.loc 1 4794 0
	movl	-64(%rbp), %eax	# b, tmp209
	shrl	$31, %eax	#, tmp208
	movzbl	%al, %eax	# D.21221, tmp210
	movl	%eax, -60(%rbp)	# tmp210, b2
	.loc 1 4795 0
	movq	-48(%rbp), %rax	# p, tmp211
	movl	-60(%rbp), %edx	# b2, tmp212
	movl	%edx, 48(%rax)	# tmp212, p_3->balance
	.loc 1 4796 0
	movl	-60(%rbp), %eax	# b2, tmp213
	negl	%eax	# D.21216
	subl	-64(%rbp), %eax	# b, tmp215
	movl	%eax, -60(%rbp)	# tmp215, b2
	.loc 1 4797 0
	movq	-32(%rbp), %rax	# r, tmp216
	movl	-60(%rbp), %edx	# b2, tmp217
	movl	%edx, 48(%rax)	# tmp217, r_5->balance
	.loc 1 4798 0
	movq	-16(%rbp), %rax	# t, tmp218
	movl	$0, 48(%rax)	#, t_54->balance
	.loc 1 4799 0
	movq	-48(%rbp), %rax	# p, tmp219
	movq	16(%rax), %rax	# p_3->parent, tmp220
	movq	%rax, -24(%rbp)	# tmp220, s
	.loc 1 4800 0
	movq	-48(%rbp), %rax	# p, tmp221
	movq	-16(%rbp), %rdx	# t, tmp222
	movq	%rdx, 16(%rax)	# tmp222, p_3->parent
	.loc 1 4801 0
	movq	-32(%rbp), %rax	# r, tmp223
	movq	-16(%rbp), %rdx	# t, tmp224
	movq	%rdx, 16(%rax)	# tmp224, r_5->parent
	.loc 1 4803 0
	movq	-16(%rbp), %rax	# t, tmp225
	movq	-24(%rbp), %rdx	# s, tmp226
	movq	%rdx, 16(%rax)	# tmp226, t_54->parent
	movq	-16(%rbp), %rax	# t, tmp227
	movq	16(%rax), %rax	# t_54->parent, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1020	#,
	.loc 1 4805 0
	movq	-24(%rbp), %rax	# s, tmp228
	movq	(%rax), %rax	# s_64->left, D.21220
	cmpq	-48(%rbp), %rax	# p, D.21220
	jne	.L1021	#,
	.loc 1 4806 0
	movq	-24(%rbp), %rax	# s, tmp229
	movq	-16(%rbp), %rdx	# t, tmp230
	movq	%rdx, (%rax)	# tmp230, s_64->left
	jmp	.L1017	#
.L1021:
	.loc 1 4808 0
	movq	-24(%rbp), %rax	# s, tmp231
	movq	-16(%rbp), %rdx	# t, tmp232
	movq	%rdx, 8(%rax)	# tmp232, s_64->right
.LBE121:
	.loc 1 4813 0
	jmp	.L1023	#
.L1020:
.LBB122:
	.loc 1 4811 0
	movq	cfun(%rip), %rax	# cfun, cfun.689
	movq	8(%rax), %rax	# cfun.689_67->stmt, D.21217
	movq	32(%rax), %rax	# _68->x_case_stack, D.21218
	movq	-16(%rbp), %rdx	# t, tmp233
	movq	%rdx, 40(%rax)	# tmp233, _69->data.case_stmt.case_list
.LBE122:
	.loc 1 4813 0
	jmp	.L1023	#
.L1017:
	jmp	.L1023	#
.L1010:
	.loc 1 4819 0
	movq	-48(%rbp), %rax	# p, tmp234
	movl	$0, 48(%rax)	#, p_3->balance
	.loc 1 4820 0
	jmp	.L1023	#
.L1007:
.LBE120:
.LBB123:
	.loc 1 4828 0
	movq	-48(%rbp), %rax	# p, tmp235
	movl	48(%rax), %eax	# p_3->balance, tmp236
	movl	%eax, -56(%rbp)	# tmp236, b
	cmpl	$0, -56(%rbp)	#, b
	jne	.L1025	#,
	.loc 1 4830 0
	movq	-48(%rbp), %rax	# p, tmp237
	movl	48(%rax), %eax	# p_3->balance, D.21216
	leal	1(%rax), %edx	#, D.21216
	movq	-48(%rbp), %rax	# p, tmp238
	movl	%edx, 48(%rax)	# D.21216, p_3->balance
	jmp	.L1024	#
.L1025:
	.loc 1 4831 0
	cmpl	$0, -56(%rbp)	#, b
	jle	.L1026	#,
	.loc 1 4833 0
	movq	-32(%rbp), %rax	# r, tmp239
	movl	48(%rax), %eax	# r_5->balance, D.21216
	testl	%eax, %eax	# D.21216
	jle	.L1027	#,
	.loc 1 4837 0
	movq	-32(%rbp), %rax	# r, tmp240
	movq	(%rax), %rax	# r_5->left, tmp241
	movq	%rax, -24(%rbp)	# tmp241, s
	movq	-48(%rbp), %rax	# p, tmp242
	movq	-24(%rbp), %rdx	# s, tmp243
	movq	%rdx, 8(%rax)	# tmp243, p_3->right
	movq	-48(%rbp), %rax	# p, tmp244
	movq	8(%rax), %rax	# p_3->right, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1028	#,
	.loc 1 4838 0
	movq	-24(%rbp), %rax	# s, tmp245
	movq	-48(%rbp), %rdx	# p, tmp246
	movq	%rdx, 16(%rax)	# tmp246, s_74->parent
.L1028:
	.loc 1 4840 0
	movq	-32(%rbp), %rax	# r, tmp247
	movq	-48(%rbp), %rdx	# p, tmp248
	movq	%rdx, (%rax)	# tmp248, r_5->left
	.loc 1 4841 0
	movq	-48(%rbp), %rax	# p, tmp249
	movl	$0, 48(%rax)	#, p_3->balance
	.loc 1 4842 0
	movq	-32(%rbp), %rax	# r, tmp250
	movl	$0, 48(%rax)	#, r_5->balance
	.loc 1 4843 0
	movq	-48(%rbp), %rax	# p, tmp251
	movq	16(%rax), %rax	# p_3->parent, tmp252
	movq	%rax, -24(%rbp)	# tmp252, s
	.loc 1 4844 0
	movq	-48(%rbp), %rax	# p, tmp253
	movq	-32(%rbp), %rdx	# r, tmp254
	movq	%rdx, 16(%rax)	# tmp254, p_3->parent
	.loc 1 4845 0
	movq	-32(%rbp), %rax	# r, tmp255
	movq	-24(%rbp), %rdx	# s, tmp256
	movq	%rdx, 16(%rax)	# tmp256, r_5->parent
	movq	-32(%rbp), %rax	# r, tmp257
	movq	16(%rax), %rax	# r_5->parent, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1029	#,
	.loc 1 4847 0
	movq	-24(%rbp), %rax	# s, tmp258
	movq	(%rax), %rax	# s_76->left, D.21220
	cmpq	-48(%rbp), %rax	# p, D.21220
	jne	.L1030	#,
	.loc 1 4848 0
	movq	-24(%rbp), %rax	# s, tmp259
	movq	-32(%rbp), %rdx	# r, tmp260
	movq	%rdx, (%rax)	# tmp260, s_76->left
	jmp	.L1033	#
.L1030:
	.loc 1 4850 0
	movq	-24(%rbp), %rax	# s, tmp261
	movq	-32(%rbp), %rdx	# r, tmp262
	movq	%rdx, 8(%rax)	# tmp262, s_76->right
	jmp	.L1033	#
.L1029:
	.loc 1 4854 0
	movq	cfun(%rip), %rax	# cfun, cfun.690
	movq	8(%rax), %rax	# cfun.690_79->stmt, D.21217
	movq	32(%rax), %rax	# _80->x_case_stack, D.21218
	movq	-32(%rbp), %rdx	# r, tmp263
	movq	%rdx, 40(%rax)	# tmp263, _81->data.case_stmt.case_list
	.loc 1 4894 0
	jmp	.L1023	#
.L1027:
.LBB124:
	.loc 1 4862 0
	movq	-32(%rbp), %rax	# r, tmp264
	movq	(%rax), %rax	# r_5->left, tmp265
	movq	%rax, -8(%rbp)	# tmp265, t
	.loc 1 4864 0
	movq	-8(%rbp), %rax	# t, tmp266
	movq	(%rax), %rax	# t_82->left, tmp267
	movq	%rax, -24(%rbp)	# tmp267, s
	movq	-48(%rbp), %rax	# p, tmp268
	movq	-24(%rbp), %rdx	# s, tmp269
	movq	%rdx, 8(%rax)	# tmp269, p_3->right
	movq	-48(%rbp), %rax	# p, tmp270
	movq	8(%rax), %rax	# p_3->right, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1034	#,
	.loc 1 4865 0
	movq	-24(%rbp), %rax	# s, tmp271
	movq	-48(%rbp), %rdx	# p, tmp272
	movq	%rdx, 16(%rax)	# tmp272, s_83->parent
.L1034:
	.loc 1 4867 0
	movq	-8(%rbp), %rax	# t, tmp273
	movq	-48(%rbp), %rdx	# p, tmp274
	movq	%rdx, (%rax)	# tmp274, t_82->left
	.loc 1 4869 0
	movq	-8(%rbp), %rax	# t, tmp275
	movq	8(%rax), %rax	# t_82->right, tmp276
	movq	%rax, -24(%rbp)	# tmp276, s
	movq	-32(%rbp), %rax	# r, tmp277
	movq	-24(%rbp), %rdx	# s, tmp278
	movq	%rdx, (%rax)	# tmp278, r_5->left
	movq	-32(%rbp), %rax	# r, tmp279
	movq	(%rax), %rax	# r_5->left, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1035	#,
	.loc 1 4870 0
	movq	-24(%rbp), %rax	# s, tmp280
	movq	-32(%rbp), %rdx	# r, tmp281
	movq	%rdx, 16(%rax)	# tmp281, s_85->parent
.L1035:
	.loc 1 4872 0
	movq	-8(%rbp), %rax	# t, tmp282
	movq	-32(%rbp), %rdx	# r, tmp283
	movq	%rdx, 8(%rax)	# tmp283, t_82->right
	.loc 1 4873 0
	movq	-8(%rbp), %rax	# t, tmp284
	movl	48(%rax), %eax	# t_82->balance, tmp285
	movl	%eax, -56(%rbp)	# tmp285, b
	.loc 1 4874 0
	movl	-56(%rbp), %eax	# b, tmp287
	shrl	$31, %eax	#, tmp286
	movzbl	%al, %eax	# D.21221, tmp288
	movl	%eax, -52(%rbp)	# tmp288, b2
	.loc 1 4875 0
	movq	-32(%rbp), %rax	# r, tmp289
	movl	-52(%rbp), %edx	# b2, tmp290
	movl	%edx, 48(%rax)	# tmp290, r_5->balance
	.loc 1 4876 0
	movl	-52(%rbp), %eax	# b2, tmp291
	negl	%eax	# D.21216
	subl	-56(%rbp), %eax	# b, tmp293
	movl	%eax, -52(%rbp)	# tmp293, b2
	.loc 1 4877 0
	movq	-48(%rbp), %rax	# p, tmp294
	movl	-52(%rbp), %edx	# b2, tmp295
	movl	%edx, 48(%rax)	# tmp295, p_3->balance
	.loc 1 4878 0
	movq	-8(%rbp), %rax	# t, tmp296
	movl	$0, 48(%rax)	#, t_82->balance
	.loc 1 4879 0
	movq	-48(%rbp), %rax	# p, tmp297
	movq	16(%rax), %rax	# p_3->parent, tmp298
	movq	%rax, -24(%rbp)	# tmp298, s
	.loc 1 4880 0
	movq	-48(%rbp), %rax	# p, tmp299
	movq	-8(%rbp), %rdx	# t, tmp300
	movq	%rdx, 16(%rax)	# tmp300, p_3->parent
	.loc 1 4881 0
	movq	-32(%rbp), %rax	# r, tmp301
	movq	-8(%rbp), %rdx	# t, tmp302
	movq	%rdx, 16(%rax)	# tmp302, r_5->parent
	.loc 1 4883 0
	movq	-8(%rbp), %rax	# t, tmp303
	movq	-24(%rbp), %rdx	# s, tmp304
	movq	%rdx, 16(%rax)	# tmp304, t_82->parent
	movq	-8(%rbp), %rax	# t, tmp305
	movq	16(%rax), %rax	# t_82->parent, D.21220
	testq	%rax, %rax	# D.21220
	je	.L1036	#,
	.loc 1 4885 0
	movq	-24(%rbp), %rax	# s, tmp306
	movq	(%rax), %rax	# s_92->left, D.21220
	cmpq	-48(%rbp), %rax	# p, D.21220
	jne	.L1037	#,
	.loc 1 4886 0
	movq	-24(%rbp), %rax	# s, tmp307
	movq	-8(%rbp), %rdx	# t, tmp308
	movq	%rdx, (%rax)	# tmp308, s_92->left
	jmp	.L1033	#
.L1037:
	.loc 1 4888 0
	movq	-24(%rbp), %rax	# s, tmp309
	movq	-8(%rbp), %rdx	# t, tmp310
	movq	%rdx, 8(%rax)	# tmp310, s_92->right
.LBE124:
	.loc 1 4894 0
	jmp	.L1023	#
.L1036:
.LBB125:
	.loc 1 4892 0
	movq	cfun(%rip), %rax	# cfun, cfun.691
	movq	8(%rax), %rax	# cfun.691_95->stmt, D.21217
	movq	32(%rax), %rax	# _96->x_case_stack, D.21218
	movq	-8(%rbp), %rdx	# t, tmp311
	movq	%rdx, 40(%rax)	# tmp311, _97->data.case_stmt.case_list
.LBE125:
	.loc 1 4894 0
	jmp	.L1023	#
.L1033:
	jmp	.L1023	#
.L1026:
	.loc 1 4899 0
	movq	-48(%rbp), %rax	# p, tmp312
	movl	$0, 48(%rax)	#, p_3->balance
	.loc 1 4900 0
	jmp	.L1023	#
.L1024:
.LBE123:
	.loc 1 4904 0
	movq	-48(%rbp), %rax	# p, tmp313
	movq	%rax, -32(%rbp)	# tmp313, r
	.loc 1 4905 0
	movq	-48(%rbp), %rax	# p, tmp314
	movq	16(%rax), %rax	# p_3->parent, tmp315
	movq	%rax, -48(%rbp)	# tmp315, p
.L1006:
.LBE119:
	.loc 1 4742 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, p
	jne	.L1039	#,
.L1023:
	.loc 1 4908 0
	movl	$0, %eax	#, D.21216
.L999:
	.loc 1 4909 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	add_case_node, .-add_case_node
	.globl	all_cases_count
	.type	all_cases_count, @function
all_cases_count:
.LFB97:
	.loc 1 4923 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# type, type
	movq	%rsi, -64(%rbp)	# sparseness, sparseness
	.loc 1 4927 0
	movq	-64(%rbp), %rax	# sparseness, tmp80
	movl	$0, (%rax)	#, *sparseness_6(D)
	.loc 1 4929 0
	movq	-56(%rbp), %rax	# type, tmp81
	movzbl	16(%rax), %eax	# type_7(D)->common.code, D.21223
	movzbl	%al, %eax	# D.21223, D.21224
	cmpl	$11, %eax	#, D.21224
	je	.L1042	#,
	cmpl	$12, %eax	#, D.21224
	je	.L1043	#,
	cmpl	$10, %eax	#, D.21224
	je	.L1044	#,
	jmp	.L1055	#
.L1042:
	.loc 1 4932 0
	movq	$2, -32(%rbp)	#, count
	.loc 1 4933 0
	jmp	.L1045	#
.L1043:
	.loc 1 4936 0
	movq	$256, -32(%rbp)	#, count
	.loc 1 4937 0
	jmp	.L1045	#
.L1055:
	.loc 1 4941 0
	movq	-56(%rbp), %rax	# type, tmp82
	movq	112(%rax), %rax	# type_7(D)->type.maxval, D.21225
	testq	%rax, %rax	# D.21225
	je	.L1046	#,
	.loc 1 4942 0
	movq	-56(%rbp), %rax	# type, tmp83
	movq	104(%rax), %rcx	# type_7(D)->type.minval, D.21225
	movq	-56(%rbp), %rax	# type, tmp84
	movq	112(%rax), %rdx	# type_7(D)->type.maxval, D.21225
	movq	-56(%rbp), %rax	# type, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21225,
	call	fold	#
	movq	%rax, -40(%rbp)	# tmp86, t
	cmpq	$0, -40(%rbp)	#, t
	je	.L1046	#,
	.loc 1 4944 0
	movq	global_trees+88(%rip), %rdx	# global_trees, D.21225
	movq	-56(%rbp), %rax	# type, tmp87
	movq	%rdx, %rsi	# D.21225,
	movq	%rax, %rdi	# tmp87,
	call	convert	#
	movq	%rax, %rcx	#, D.21225
	movq	-40(%rbp), %rdx	# t, tmp88
	movq	-56(%rbp), %rax	# type, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21225,
	call	fold	#
	movq	%rax, -40(%rbp)	# tmp90, t
	cmpq	$0, -40(%rbp)	#, t
	je	.L1046	#,
	.loc 1 4946 0
	movq	-40(%rbp), %rax	# t, tmp91
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	host_integerp	#
	testl	%eax, %eax	# D.21226
	je	.L1046	#,
	.loc 1 4947 0
	movq	-40(%rbp), %rax	# t, tmp92
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	tree_low_cst	#
	movq	%rax, -32(%rbp)	# tmp93, count
	.loc 1 4950 0
	jmp	.L1045	#
.L1046:
	.loc 1 4949 0
	movq	$-1, %rax	#, D.21222
	jmp	.L1047	#
.L1044:
	.loc 1 4954 0
	movq	-56(%rbp), %rax	# type, tmp94
	movq	104(%rax), %rax	# type_7(D)->type.minval, D.21225
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21225,
	call	host_integerp	#
	testl	%eax, %eax	# D.21226
	je	.L1048	#,
	.loc 1 4955 0
	movq	-56(%rbp), %rax	# type, tmp95
	movq	112(%rax), %rax	# type_7(D)->type.maxval, D.21225
	testq	%rax, %rax	# D.21225
	je	.L1048	#,
	.loc 1 4956 0
	movq	-56(%rbp), %rax	# type, tmp96
	movq	112(%rax), %rax	# type_7(D)->type.maxval, D.21225
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21225,
	call	host_integerp	#
	testl	%eax, %eax	# D.21226
	jne	.L1049	#,
.L1048:
	.loc 1 4957 0
	movq	$-1, %rax	#, D.21222
	jmp	.L1047	#
.L1049:
	.loc 1 4959 0
	movq	-56(%rbp), %rax	# type, tmp97
	movq	104(%rax), %rax	# type_7(D)->type.minval, D.21225
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21225,
	call	tree_low_cst	#
	movq	%rax, -16(%rbp)	# tmp98, minval
	movq	-16(%rbp), %rax	# minval, tmp99
	movq	%rax, -24(%rbp)	# tmp99, lastval
	.loc 1 4960 0
	movq	$0, -32(%rbp)	#, count
	.loc 1 4962 0
	movq	-56(%rbp), %rax	# type, tmp100
	movq	24(%rax), %rax	# type_7(D)->type.values, tmp101
	movq	%rax, -40(%rbp)	# tmp101, t
	jmp	.L1050	#
.L1054:
.LBB126:
	.loc 1 4964 0
	movq	-40(%rbp), %rax	# t, tmp102
	movq	32(%rax), %rax	# t_1->list.value, D.21225
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21225,
	call	tree_low_cst	#
	movq	%rax, -8(%rbp)	# tmp103, thisval
	.loc 1 4966 0
	movq	-64(%rbp), %rax	# sparseness, tmp104
	movl	(%rax), %eax	# *sparseness_6(D), D.21226
	cmpl	$2, %eax	#, D.21226
	je	.L1051	#,
	.loc 1 4966 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# thisval, tmp105
	cmpq	-24(%rbp), %rax	# lastval, tmp105
	jg	.L1052	#,
.L1051:
	.loc 1 4967 0 is_stmt 1
	movq	-64(%rbp), %rax	# sparseness, tmp106
	movl	$2, (%rax)	#, *sparseness_6(D)
	jmp	.L1053	#
.L1052:
	.loc 1 4968 0
	movq	-32(%rbp), %rax	# count, tmp107
	movq	-16(%rbp), %rdx	# minval, tmp108
	addq	%rdx, %rax	# tmp108, D.21222
	cmpq	-8(%rbp), %rax	# thisval, D.21222
	je	.L1053	#,
	.loc 1 4969 0
	movq	-64(%rbp), %rax	# sparseness, tmp109
	movl	$1, (%rax)	#, *sparseness_6(D)
.L1053:
	.loc 1 4971 0
	movq	-8(%rbp), %rax	# thisval, tmp110
	movq	%rax, -24(%rbp)	# tmp110, lastval
	.loc 1 4972 0
	addq	$1, -32(%rbp)	#, count
.LBE126:
	.loc 1 4962 0
	movq	-40(%rbp), %rax	# t, tmp111
	movq	(%rax), %rax	# t_1->common.chain, tmp112
	movq	%rax, -40(%rbp)	# tmp112, t
.L1050:
	.loc 1 4962 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, t
	jne	.L1054	#,
.L1045:
	.loc 1 4976 0 is_stmt 1
	movq	-32(%rbp), %rax	# count, D.21222
.L1047:
	.loc 1 4977 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	all_cases_count, .-all_cases_count
	.globl	mark_seen_cases
	.type	mark_seen_cases, @function
mark_seen_cases:
.LFB98:
	.loc 1 5000 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# type, type
	movq	%rsi, -112(%rbp)	# cases_seen, cases_seen
	movq	%rdx, -120(%rbp)	# count, count
	movl	%ecx, -124(%rbp)	# sparseness, sparseness
	.loc 1 5001 0
	movq	$0, -80(%rbp)	#, next_node_to_try
	.loc 1 5002 0
	movq	$0, -72(%rbp)	#, next_node_offset
	.loc 1 5004 0
	movq	cfun(%rip), %rax	# cfun, cfun.692
	movq	8(%rax), %rax	# cfun.692_19->stmt, D.21227
	movq	32(%rax), %rax	# _20->x_case_stack, D.21228
	movq	40(%rax), %rax	# _21->data.case_stmt.case_list, tmp133
	movq	%rax, -56(%rbp)	# tmp133, root
	.loc 1 5005 0
	movl	$25, %edi	#,
	call	make_node	#
	movq	%rax, -24(%rbp)	# tmp134, val
	.loc 1 5007 0
	movq	-24(%rbp), %rax	# val, tmp135
	movq	-104(%rbp), %rdx	# type, tmp136
	movq	%rdx, 8(%rax)	# tmp136, val_23->common.type
	.loc 1 5008 0
	cmpq	$0, -56(%rbp)	#, root
	je	.L1056	#,
	.loc 1 5011 0
	cmpl	$2, -124(%rbp)	#, sparseness
	jne	.L1058	#,
.LBB127:
	.loc 1 5019 0
	movq	-56(%rbp), %rax	# root, tmp137
	movq	24(%rax), %rax	# root_22->low, D.21229
	movq	8(%rax), %rdx	# _26->common.type, D.21229
	movq	-24(%rbp), %rax	# val, tmp138
	movq	%rdx, 8(%rax)	# D.21229, val_23->common.type
	.loc 1 5020 0
	movq	-104(%rbp), %rax	# type, tmp139
	movq	24(%rax), %rax	# type_24(D)->type.values, tmp140
	movq	%rax, -48(%rbp)	# tmp140, t
	movq	$0, -40(%rbp)	#, xlo
	jmp	.L1059	#
.L1065:
	.loc 1 5023 0
	movq	-48(%rbp), %rax	# t, tmp141
	movq	32(%rax), %rax	# t_13->list.value, D.21229
	movq	32(%rax), %rdx	# _30->int_cst.int_cst.low, D.21230
	movq	-24(%rbp), %rax	# val, tmp142
	movq	%rdx, 32(%rax)	# D.21230, val_23->int_cst.int_cst.low
	.loc 1 5024 0
	movq	-48(%rbp), %rax	# t, tmp143
	movq	32(%rax), %rax	# t_13->list.value, D.21229
	movq	40(%rax), %rdx	# _32->int_cst.int_cst.high, D.21231
	movq	-24(%rbp), %rax	# val, tmp144
	movq	%rdx, 40(%rax)	# D.21231, val_23->int_cst.int_cst.high
	.loc 1 5025 0
	movq	-56(%rbp), %rax	# root, tmp145
	movq	%rax, -64(%rbp)	# tmp145, n
.L1064:
	.loc 1 5029 0
	movq	-64(%rbp), %rax	# n, tmp146
	movq	24(%rax), %rdx	# n_9->low, D.21229
	movq	-24(%rbp), %rax	# val, tmp147
	movq	%rdx, %rsi	# D.21229,
	movq	%rax, %rdi	# tmp147,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21232
	je	.L1060	#,
	.loc 1 5030 0
	movq	-64(%rbp), %rax	# n, tmp148
	movq	(%rax), %rax	# n_9->left, tmp149
	movq	%rax, -64(%rbp)	# tmp149, n
	jmp	.L1061	#
.L1060:
	.loc 1 5033 0
	movq	-64(%rbp), %rax	# n, tmp150
	movq	32(%rax), %rax	# n_9->high, D.21229
	movq	-24(%rbp), %rdx	# val, tmp151
	movq	%rdx, %rsi	# tmp151,
	movq	%rax, %rdi	# D.21229,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21232
	je	.L1062	#,
	.loc 1 5034 0
	movq	-64(%rbp), %rax	# n, tmp152
	movq	8(%rax), %rax	# n_9->right, tmp153
	movq	%rax, -64(%rbp)	# tmp153, n
	jmp	.L1061	#
.L1062:
	.loc 1 5039 0
	movq	-40(%rbp), %rax	# xlo, tmp154
	shrl	$3, %eax	#, D.21233
	movl	%eax, %ecx	# D.21233, D.21234
	movq	-112(%rbp), %rdx	# cases_seen, tmp155
	addq	%rcx, %rdx	# D.21234, D.21235
	movl	%eax, %ecx	# D.21233, D.21234
	movq	-112(%rbp), %rax	# cases_seen, tmp156
	addq	%rcx, %rax	# D.21234, D.21235
	movzbl	(%rax), %eax	# *_47, D.21236
	movl	%eax, %esi	# D.21236, D.21237
	movq	-40(%rbp), %rax	# xlo, tmp157
	andl	$7, %eax	#, D.21232
	movl	$1, %edi	#, tmp158
	movl	%eax, %ecx	# D.21232, tmp203
	sall	%cl, %edi	# tmp203, D.21232
	movl	%edi, %eax	# D.21232, D.21232
	orl	%esi, %eax	# D.21237, D.21237
	movb	%al, (%rdx)	# D.21236, *_45
	.loc 1 5040 0
	jmp	.L1063	#
.L1061:
	.loc 1 5043 0
	cmpq	$0, -64(%rbp)	#, n
	jne	.L1064	#,
.L1063:
	.loc 1 5021 0
	movq	-48(%rbp), %rax	# t, tmp159
	movq	(%rax), %rax	# t_13->common.chain, tmp160
	movq	%rax, -48(%rbp)	# tmp160, t
	addq	$1, -40(%rbp)	#, xlo
.L1059:
	.loc 1 5020 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, t
	jne	.L1065	#,
.LBE127:
	jmp	.L1056	#
.L1058:
	.loc 1 5048 0
	movq	-56(%rbp), %rax	# root, tmp161
	movq	(%rax), %rax	# root_22->left, D.21238
	testq	%rax, %rax	# D.21238
	je	.L1066	#,
	.loc 1 5049 0
	movq	cfun(%rip), %rax	# cfun, cfun.693
	movq	8(%rax), %rax	# cfun.693_59->stmt, D.21227
	movq	32(%rax), %rbx	# _60->x_case_stack, D.21228
	movq	-56(%rbp), %rax	# root, tmp162
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	case_tree2list	#
	movq	%rax, -56(%rbp)	# tmp163, root
	movq	-56(%rbp), %rax	# root, tmp164
	movq	%rax, 40(%rbx)	# tmp164, _61->data.case_stmt.case_list
.L1066:
	.loc 1 5051 0
	movq	-56(%rbp), %rax	# root, tmp165
	movq	%rax, -64(%rbp)	# tmp165, n
	jmp	.L1067	#
.L1080:
	.loc 1 5053 0
	movq	-64(%rbp), %rax	# n, tmp166
	movq	24(%rax), %rax	# n_11->low, D.21229
	movq	32(%rax), %rdx	# _64->int_cst.int_cst.low, D.21230
	movq	-24(%rbp), %rax	# val, tmp167
	movq	%rdx, 32(%rax)	# D.21230, val_23->int_cst.int_cst.low
	.loc 1 5054 0
	movq	-64(%rbp), %rax	# n, tmp168
	movq	24(%rax), %rax	# n_11->low, D.21229
	movq	40(%rax), %rdx	# _66->int_cst.int_cst.high, D.21231
	movq	-24(%rbp), %rax	# val, tmp169
	movq	%rdx, 40(%rax)	# D.21231, val_23->int_cst.int_cst.high
	.loc 1 5055 0
	jmp	.L1068	#
.L1079:
.LBB128:
	.loc 1 5065 0
	cmpl	$0, -124(%rbp)	#, sparseness
	je	.L1069	#,
	.loc 1 5065 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# type, tmp170
	movq	24(%rax), %rax	# type_24(D)->type.values, D.21229
	testq	%rax, %rax	# D.21229
	je	.L1069	#,
	.loc 1 5069 0 is_stmt 1
	movq	-80(%rbp), %rax	# next_node_to_try, tmp171
	movq	%rax, -32(%rbp)	# tmp171, t
	.loc 1 5070 0
	movq	-72(%rbp), %rax	# next_node_offset, next_node_offset.694
	movq	%rax, -96(%rbp)	# next_node_offset.694, xlo
	.loc 1 5071 0
	movq	$0, -88(%rbp)	#, xhi
.L1074:
	.loc 1 5074 0
	cmpq	$0, -32(%rbp)	#, t
	jne	.L1070	#,
	.loc 1 5076 0
	movq	-104(%rbp), %rax	# type, tmp172
	movq	24(%rax), %rax	# type_24(D)->type.values, tmp173
	movq	%rax, -32(%rbp)	# tmp173, t
	.loc 1 5077 0
	movq	$0, -96(%rbp)	#, xlo
.L1070:
	.loc 1 5079 0
	movq	-32(%rbp), %rax	# t, tmp174
	movq	32(%rax), %rdx	# t_16->list.value, D.21229
	movq	-24(%rbp), %rax	# val, tmp175
	movq	%rdx, %rsi	# D.21229,
	movq	%rax, %rdi	# tmp175,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21232
	je	.L1071	#,
	.loc 1 5081 0
	movq	-32(%rbp), %rax	# t, tmp176
	movq	(%rax), %rax	# t_16->common.chain, tmp177
	movq	%rax, -80(%rbp)	# tmp177, next_node_to_try
	.loc 1 5082 0
	movq	-96(%rbp), %rax	# xlo, xlo.695
	addq	$1, %rax	#, D.21230
	movq	%rax, -72(%rbp)	# D.21230, next_node_offset
	.loc 1 5083 0
	jmp	.L1072	#
.L1071:
	.loc 1 5085 0
	movq	-96(%rbp), %rax	# xlo, xlo.696
	addq	$1, %rax	#, xlo.697
	movq	%rax, -96(%rbp)	# xlo.697, xlo
	.loc 1 5086 0
	movq	-32(%rbp), %rax	# t, tmp178
	movq	(%rax), %rax	# t_16->common.chain, tmp179
	movq	%rax, -32(%rbp)	# tmp179, t
	.loc 1 5087 0
	movq	-32(%rbp), %rax	# t, tmp180
	cmpq	-80(%rbp), %rax	# next_node_to_try, tmp180
	jne	.L1073	#,
	.loc 1 5089 0
	movq	$-1, -96(%rbp)	#, xlo
	.loc 1 5090 0
	jmp	.L1072	#
.L1073:
	.loc 1 5092 0
	jmp	.L1074	#
.L1072:
	.loc 1 5065 0
	jmp	.L1075	#
.L1069:
	.loc 1 5096 0
	movq	-104(%rbp), %rax	# type, tmp181
	movq	104(%rax), %rax	# type_24(D)->type.minval, tmp182
	movq	%rax, -32(%rbp)	# tmp182, t
	.loc 1 5097 0
	cmpq	$0, -32(%rbp)	#, t
	je	.L1076	#,
	.loc 1 5098 0
	movq	-32(%rbp), %rax	# t, tmp183
	movq	40(%rax), %rsi	# t_83->int_cst.int_cst.high, D.21231
	movq	-32(%rbp), %rax	# t, tmp184
	movq	32(%rax), %rax	# t_83->int_cst.int_cst.low, D.21230
	leaq	-88(%rbp), %rcx	#, tmp185
	leaq	-96(%rbp), %rdx	#, tmp186
	movq	%rax, %rdi	# D.21230,
	call	neg_double	#
	jmp	.L1077	#
.L1076:
	.loc 1 5101 0
	movq	$0, -88(%rbp)	#, xhi
	movq	$0, -96(%rbp)	#, xlo
.L1077:
	.loc 1 5102 0
	movq	-24(%rbp), %rax	# val, tmp187
	movq	40(%rax), %rcx	# val_23->int_cst.int_cst.high, D.21231
	movq	-24(%rbp), %rax	# val, tmp188
	movq	32(%rax), %rdx	# val_23->int_cst.int_cst.low, D.21230
	movq	-88(%rbp), %rsi	# xhi, xhi.698
	movq	-96(%rbp), %rax	# xlo, xlo.699
	leaq	-88(%rbp), %r8	#, tmp189
	leaq	-96(%rbp), %rdi	#, tmp190
	movq	%r8, %r9	# tmp189,
	movq	%rdi, %r8	# tmp190,
	movq	%rax, %rdi	# xlo.699,
	call	add_double	#
.L1075:
	.loc 1 5107 0
	movq	-88(%rbp), %rax	# xhi, xhi.700
	testq	%rax, %rax	# xhi.700
	jne	.L1078	#,
	.loc 1 5107 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rdx	# count, count.701
	movq	-96(%rbp), %rax	# xlo, xlo.702
	cmpq	%rax, %rdx	# xlo.702, count.701
	jbe	.L1078	#,
	.loc 1 5108 0 is_stmt 1
	movq	-96(%rbp), %rax	# xlo, xlo.703
	shrl	$3, %eax	#, D.21233
	movl	%eax, %ecx	# D.21233, D.21234
	movq	-112(%rbp), %rdx	# cases_seen, tmp191
	addq	%rcx, %rdx	# D.21234, D.21235
	movl	%eax, %ecx	# D.21233, D.21234
	movq	-112(%rbp), %rax	# cases_seen, tmp192
	addq	%rcx, %rax	# D.21234, D.21235
	movzbl	(%rax), %eax	# *_100, D.21236
	movl	%eax, %esi	# D.21236, D.21237
	movq	-96(%rbp), %rax	# xlo, xlo.704
	andl	$7, %eax	#, D.21232
	movl	$1, %edi	#, tmp193
	movl	%eax, %ecx	# D.21232, tmp205
	sall	%cl, %edi	# tmp205, D.21232
	movl	%edi, %eax	# D.21232, D.21232
	orl	%esi, %eax	# D.21237, D.21237
	movb	%al, (%rdx)	# D.21236, *_98
.L1078:
	.loc 1 5110 0
	movq	-24(%rbp), %rax	# val, tmp194
	leaq	40(%rax), %rcx	#, D.21239
	movq	-24(%rbp), %rax	# val, tmp195
	leaq	32(%rax), %rdx	#, D.21240
	movq	-24(%rbp), %rax	# val, tmp196
	movq	40(%rax), %rsi	# val_23->int_cst.int_cst.high, D.21231
	movq	-24(%rbp), %rax	# val, tmp197
	movq	32(%rax), %rax	# val_23->int_cst.int_cst.low, D.21230
	movq	%rcx, %r9	# D.21239,
	movq	%rdx, %r8	# D.21240,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# D.21230,
	call	add_double	#
.L1068:
.LBE128:
	.loc 1 5055 0 discriminator 1
	movq	-64(%rbp), %rax	# n, tmp198
	movq	32(%rax), %rax	# n_11->high, D.21229
	movq	-24(%rbp), %rdx	# val, tmp199
	movq	%rdx, %rsi	# tmp199,
	movq	%rax, %rdi	# D.21229,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21232
	je	.L1079	#,
	.loc 1 5051 0
	movq	-64(%rbp), %rax	# n, tmp200
	movq	8(%rax), %rax	# n_11->right, tmp201
	movq	%rax, -64(%rbp)	# tmp201, n
.L1067:
	.loc 1 5051 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, n
	jne	.L1080	#,
.L1056:
	.loc 1 5116 0 is_stmt 1
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	mark_seen_cases, .-mark_seen_cases
	.section	.rodata
	.align 8
.LC28:
	.string	"enumeration value `%s' not handled in switch"
	.align 8
.LC29:
	.string	"case value `%ld' not in enumerated type"
	.align 8
.LC30:
	.string	"case value `%ld' not in enumerated type `%s'"
	.text
	.globl	check_for_full_enumeration_handling
	.type	check_for_full_enumeration_handling, @function
check_for_full_enumeration_handling:
.LFB99:
	.loc 1 5132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# type, type
	.loc 1 5137 0
	movl	$0, -76(%rbp)	#, sparseness
	.loc 1 5149 0
	movl	warn_switch(%rip), %eax	# warn_switch, warn_switch.705
	testl	%eax, %eax	# warn_switch.705
	je	.L1081	#,
	.loc 1 5152 0
	leaq	-76(%rbp), %rdx	#, tmp129
	movq	-88(%rbp), %rax	# type, tmp130
	movq	%rdx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	all_cases_count	#
	movq	%rax, -40(%rbp)	# tmp131, size
	.loc 1 5153 0
	movq	-40(%rbp), %rax	# size, tmp132
	addq	$8, %rax	#, D.21241
	leaq	7(%rax), %rdx	#, tmp134
	testq	%rax, %rax	# tmp133
	cmovs	%rdx, %rax	# tmp134,, tmp133
	sarq	$3, %rax	#, tmp135
	movq	%rax, -32(%rbp)	# tmp135, bytes_needed
	.loc 1 5155 0
	cmpq	$0, -40(%rbp)	#, size
	jle	.L1084	#,
	.loc 1 5155 0 is_stmt 0 discriminator 1
	cmpq	$599999, -40(%rbp)	#, size
	jg	.L1084	#,
	.loc 1 5160 0 is_stmt 1
	movq	-32(%rbp), %rax	# bytes_needed, bytes_needed.706
	.loc 1 5159 0
	movl	$1, %esi	#,
	movq	%rax, %rdi	# bytes_needed.706,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp136, cases_seen
	cmpq	$0, -24(%rbp)	#, cases_seen
	je	.L1084	#,
.LBB129:
	.loc 1 5163 0
	movq	-88(%rbp), %rax	# type, tmp137
	movq	24(%rax), %rax	# type_9(D)->type.values, tmp138
	movq	%rax, -48(%rbp)	# tmp138, v
	.loc 1 5170 0
	movl	-76(%rbp), %ecx	# sparseness, sparseness.707
	movq	-40(%rbp), %rdx	# size, tmp139
	movq	-24(%rbp), %rsi	# cases_seen, tmp140
	movq	-88(%rbp), %rax	# type, tmp141
	movq	%rax, %rdi	# tmp141,
	call	mark_seen_cases	#
	.loc 1 5172 0
	movq	$0, -56(%rbp)	#, i
	jmp	.L1085	#
.L1088:
	.loc 1 5173 0
	movq	-56(%rbp), %rax	# i, tmp142
	shrl	$3, %eax	#, D.21242
	movl	%eax, %edx	# D.21242, D.21243
	movq	-24(%rbp), %rax	# cases_seen, tmp143
	addq	%rdx, %rax	# D.21243, D.21244
	movzbl	(%rax), %eax	# *_21, D.21245
	movzbl	%al, %edx	# D.21245, D.21246
	movq	-56(%rbp), %rax	# i, tmp144
	andl	$7, %eax	#, D.21246
	movl	%eax, %ecx	# D.21246, tmp180
	sarl	%cl, %edx	# tmp180, D.21246
	movl	%edx, %eax	# D.21246, D.21246
	andl	$1, %eax	#, D.21246
	testl	%eax, %eax	# D.21246
	jne	.L1086	#,
	.loc 1 5175 0
	movq	-48(%rbp), %rax	# v, tmp145
	movq	24(%rax), %rax	# v_5->list.purpose, D.21247
	movq	32(%rax), %rax	# _28->identifier.id.str, D.21248
	.loc 1 5174 0
	movq	%rax, %rsi	# D.21248,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1086:
	.loc 1 5172 0
	addq	$1, -56(%rbp)	#, i
	movq	-48(%rbp), %rax	# v, tmp146
	movq	(%rax), %rax	# v_5->common.chain, tmp147
	movq	%rax, -48(%rbp)	# tmp147, v
.L1085:
	.loc 1 5172 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, v
	je	.L1087	#,
	.loc 1 5172 0 discriminator 2
	movq	-56(%rbp), %rax	# i, tmp148
	cmpq	-40(%rbp), %rax	# size, tmp148
	jl	.L1088	#,
.L1087:
	.loc 1 5177 0 is_stmt 1
	movq	-24(%rbp), %rax	# cases_seen, tmp149
	movq	%rax, %rdi	# tmp149,
	call	free	#
.L1084:
.LBE129:
	.loc 1 5185 0
	movq	cfun(%rip), %rax	# cfun, cfun.708
	movq	8(%rax), %rax	# cfun.708_32->stmt, D.21249
	movq	32(%rax), %rax	# _33->x_case_stack, D.21250
	movq	40(%rax), %rax	# _34->data.case_stmt.case_list, D.21251
	testq	%rax, %rax	# D.21251
	je	.L1089	#,
	.loc 1 5186 0
	movq	cfun(%rip), %rax	# cfun, cfun.709
	movq	8(%rax), %rax	# cfun.709_36->stmt, D.21249
	movq	32(%rax), %rax	# _37->x_case_stack, D.21250
	movq	40(%rax), %rax	# _38->data.case_stmt.case_list, D.21251
	movq	(%rax), %rax	# _39->left, D.21251
	testq	%rax, %rax	# D.21251
	je	.L1089	#,
	.loc 1 5187 0
	movq	cfun(%rip), %rax	# cfun, cfun.710
	movq	8(%rax), %rax	# cfun.710_41->stmt, D.21249
	movq	32(%rax), %rbx	# _42->x_case_stack, D.21250
	.loc 1 5188 0
	movq	cfun(%rip), %rax	# cfun, cfun.711
	movq	8(%rax), %rax	# cfun.711_44->stmt, D.21249
	movq	32(%rax), %rax	# _45->x_case_stack, D.21250
	movq	40(%rax), %rax	# _46->data.case_stmt.case_list, D.21251
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21251,
	call	case_tree2list	#
	movq	%rax, 40(%rbx)	# D.21251, _43->data.case_stmt.case_list
.L1089:
	.loc 1 5189 0
	movl	warn_switch(%rip), %eax	# warn_switch, warn_switch.712
	testl	%eax, %eax	# warn_switch.712
	je	.L1081	#,
	.loc 1 5190 0
	movq	cfun(%rip), %rax	# cfun, cfun.713
	movq	8(%rax), %rax	# cfun.713_50->stmt, D.21249
	movq	32(%rax), %rax	# _51->x_case_stack, D.21250
	movq	40(%rax), %rax	# _52->data.case_stmt.case_list, tmp150
	movq	%rax, -72(%rbp)	# tmp150, n
	jmp	.L1091	#
.L1106:
	.loc 1 5192 0
	movq	-88(%rbp), %rax	# type, tmp151
	movq	24(%rax), %rax	# type_9(D)->type.values, tmp152
	movq	%rax, -64(%rbp)	# tmp152, chain
	jmp	.L1092	#
.L1094:
	.loc 1 5194 0
	movq	-64(%rbp), %rax	# chain, tmp153
	movq	(%rax), %rax	# chain_2->common.chain, tmp154
	movq	%rax, -64(%rbp)	# tmp154, chain
.L1092:
	.loc 1 5192 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, chain
	je	.L1093	#,
	.loc 1 5193 0
	movq	-64(%rbp), %rax	# chain, tmp155
	movq	32(%rax), %rdx	# chain_2->list.value, D.21247
	movq	-72(%rbp), %rax	# n, tmp156
	movq	24(%rax), %rax	# n_1->low, D.21247
	movq	%rdx, %rsi	# D.21247,
	movq	%rax, %rdi	# D.21247,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21246
	je	.L1094	#,
.L1093:
	.loc 1 5197 0
	cmpq	$0, -64(%rbp)	#, chain
	jne	.L1095	#,
	.loc 1 5199 0
	movq	-88(%rbp), %rax	# type, tmp157
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	testq	%rax, %rax	# D.21247
	jne	.L1096	#,
	.loc 1 5201 0
	movq	-72(%rbp), %rax	# n, tmp158
	movq	24(%rax), %rax	# n_1->low, D.21247
	movq	32(%rax), %rax	# _60->int_cst.int_cst.low, D.21252
	.loc 1 5200 0
	movq	%rax, %rsi	# D.21241,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L1095	#
.L1096:
	.loc 1 5205 0
	movq	-88(%rbp), %rax	# type, tmp159
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	movzbl	16(%rax), %eax	# _63->common.code, D.21245
	cmpb	$1, %al	#, D.21245
	jne	.L1097	#,
	.loc 1 5205 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# type, tmp160
	movq	96(%rax), %rax	# type_9(D)->type.name, iftmp.714
	jmp	.L1098	#
.L1097:
	.loc 1 5205 0 discriminator 2
	movq	-88(%rbp), %rax	# type, tmp161
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	movq	72(%rax), %rax	# _66->decl.name, iftmp.714
.L1098:
	.loc 1 5205 0 discriminator 3
	movq	32(%rax), %rdx	# iftmp.714_6->identifier.id.str, D.21248
	.loc 1 5204 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# n, tmp162
	movq	24(%rax), %rax	# n_1->low, D.21247
	movq	32(%rax), %rax	# _69->int_cst.int_cst.low, D.21252
	.loc 1 5203 0 discriminator 3
	movq	%rax, %rsi	# D.21241,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1095:
	.loc 1 5210 0
	movq	-72(%rbp), %rax	# n, tmp163
	movq	32(%rax), %rdx	# n_1->high, D.21247
	movq	-72(%rbp), %rax	# n, tmp164
	movq	24(%rax), %rax	# n_1->low, D.21247
	movq	%rdx, %rsi	# D.21247,
	movq	%rax, %rdi	# D.21247,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21246
	jne	.L1099	#,
	.loc 1 5212 0
	movq	-88(%rbp), %rax	# type, tmp165
	movq	24(%rax), %rax	# type_9(D)->type.values, tmp166
	movq	%rax, -64(%rbp)	# tmp166, chain
	jmp	.L1100	#
.L1102:
	.loc 1 5214 0
	movq	-64(%rbp), %rax	# chain, tmp167
	movq	(%rax), %rax	# chain_3->common.chain, tmp168
	movq	%rax, -64(%rbp)	# tmp168, chain
.L1100:
	.loc 1 5212 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, chain
	je	.L1101	#,
	.loc 1 5213 0
	movq	-64(%rbp), %rax	# chain, tmp169
	movq	32(%rax), %rdx	# chain_3->list.value, D.21247
	movq	-72(%rbp), %rax	# n, tmp170
	movq	32(%rax), %rax	# n_1->high, D.21247
	movq	%rdx, %rsi	# D.21247,
	movq	%rax, %rdi	# D.21247,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21246
	je	.L1102	#,
.L1101:
	.loc 1 5217 0
	cmpq	$0, -64(%rbp)	#, chain
	jne	.L1099	#,
	.loc 1 5219 0
	movq	-88(%rbp), %rax	# type, tmp171
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	testq	%rax, %rax	# D.21247
	jne	.L1103	#,
	.loc 1 5221 0
	movq	-72(%rbp), %rax	# n, tmp172
	movq	32(%rax), %rax	# n_1->high, D.21247
	movq	32(%rax), %rax	# _81->int_cst.int_cst.low, D.21252
	.loc 1 5220 0
	movq	%rax, %rsi	# D.21241,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
	jmp	.L1099	#
.L1103:
	.loc 1 5225 0
	movq	-88(%rbp), %rax	# type, tmp173
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	movzbl	16(%rax), %eax	# _84->common.code, D.21245
	cmpb	$1, %al	#, D.21245
	jne	.L1104	#,
	.loc 1 5225 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# type, tmp174
	movq	96(%rax), %rax	# type_9(D)->type.name, iftmp.715
	jmp	.L1105	#
.L1104:
	.loc 1 5225 0 discriminator 2
	movq	-88(%rbp), %rax	# type, tmp175
	movq	96(%rax), %rax	# type_9(D)->type.name, D.21247
	movq	72(%rax), %rax	# _87->decl.name, iftmp.715
.L1105:
	.loc 1 5225 0 discriminator 3
	movq	32(%rax), %rdx	# iftmp.715_7->identifier.id.str, D.21248
	.loc 1 5224 0 is_stmt 1 discriminator 3
	movq	-72(%rbp), %rax	# n, tmp176
	movq	32(%rax), %rax	# n_1->high, D.21247
	movq	32(%rax), %rax	# _90->int_cst.int_cst.low, D.21252
	.loc 1 5223 0 discriminator 3
	movq	%rax, %rsi	# D.21241,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	warning	#
.L1099:
	.loc 1 5190 0
	movq	-72(%rbp), %rax	# n, tmp177
	movq	8(%rax), %rax	# n_1->right, tmp178
	movq	%rax, -72(%rbp)	# tmp178, n
.L1091:
	.loc 1 5190 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, n
	jne	.L1106	#,
.L1081:
	.loc 1 5232 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	check_for_full_enumeration_handling, .-check_for_full_enumeration_handling
	.type	free_case_nodes, @function
free_case_nodes:
.LFB100:
	.loc 1 5239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# cn, cn
	.loc 1 5240 0
	cmpq	$0, -8(%rbp)	#, cn
	je	.L1107	#,
	.loc 1 5242 0
	movq	-8(%rbp), %rax	# cn, tmp61
	movq	(%rax), %rax	# cn_1(D)->left, D.21256
	movq	%rax, %rdi	# D.21256,
	call	free_case_nodes	#
	.loc 1 5243 0
	movq	-8(%rbp), %rax	# cn, tmp62
	movq	8(%rax), %rax	# cn_1(D)->right, D.21256
	movq	%rax, %rdi	# D.21256,
	call	free_case_nodes	#
	.loc 1 5244 0
	movq	-8(%rbp), %rax	# cn, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
.L1107:
	.loc 1 5246 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	free_case_nodes, .-free_case_nodes
	.globl	expand_end_case_type
	.type	expand_end_case_type, @function
expand_end_case_type:
.LFB101:
	.loc 1 5259 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$216, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -232(%rbp)	# orig_index, orig_index
	movq	%rsi, -240(%rbp)	# orig_type, orig_type
	.loc 1 5260 0
	movq	$0, -176(%rbp)	#, minval
	movq	$0, -168(%rbp)	#, maxval
	movq	$0, -160(%rbp)	#, range
	.loc 1 5261 0
	movq	$0, -112(%rbp)	#, default_label
	.loc 1 5270 0
	movq	cfun(%rip), %rax	# cfun, cfun.716
	movq	8(%rax), %rax	# cfun.716_35->stmt, D.21257
	movq	32(%rax), %rax	# _36->x_case_stack, tmp280
	movq	%rax, -104(%rbp)	# tmp280, thiscase
	.loc 1 5275 0
	cmpq	$0, -104(%rbp)	#, thiscase
	je	.L1109	#,
	.loc 1 5278 0
	call	gen_label_rtx	#
	movq	%rax, -96(%rbp)	# tmp281, table_label
	.loc 1 5279 0
	movq	-104(%rbp), %rax	# thiscase, tmp282
	movq	56(%rax), %rax	# thiscase_37->data.case_stmt.index_expr, tmp283
	movq	%rax, -136(%rbp)	# tmp283, index_expr
	.loc 1 5280 0
	movq	-136(%rbp), %rax	# index_expr, tmp284
	movq	8(%rax), %rax	# index_expr_39->common.type, tmp285
	movq	%rax, -128(%rbp)	# tmp285, index_type
	.loc 1 5281 0
	movq	-128(%rbp), %rax	# index_type, tmp286
	movzbl	17(%rax), %eax	# *index_type_40, tmp289
	shrb	$5, %al	#, D.21258
	andl	$1, %eax	#, D.21258
	movzbl	%al, %eax	# D.21258, tmp290
	movl	%eax, -200(%rbp)	# tmp290, unsignedp
	.loc 1 5282 0
	cmpq	$0, -240(%rbp)	#, orig_type
	jne	.L1112	#,
	.loc 1 5283 0
	movq	-232(%rbp), %rax	# orig_index, tmp291
	movq	8(%rax), %rax	# orig_index_44(D)->common.type, tmp292
	movq	%rax, -240(%rbp)	# tmp292, orig_type
.L1112:
	.loc 1 5285 0
	call	do_pending_stack_adjust	#
	.loc 1 5294 0
	call	check_seenlabel	#
	.loc 1 5297 0
	movq	global_trees(%rip), %rax	# global_trees, D.21259
	cmpq	-128(%rbp), %rax	# index_type, D.21259
	je	.L1113	#,
	.loc 1 5303 0
	movq	-104(%rbp), %rax	# thiscase, tmp293
	movq	48(%rax), %rax	# thiscase_37->data.case_stmt.default_label, D.21259
	testq	%rax, %rax	# D.21259
	jne	.L1114	#,
	.loc 1 5304 0
	movq	-240(%rbp), %rax	# orig_type, tmp294
	movzbl	16(%rax), %eax	# orig_type_1->common.code, D.21260
	cmpb	$10, %al	#, D.21260
	jne	.L1114	#,
	.loc 1 5305 0
	movq	-136(%rbp), %rax	# index_expr, tmp295
	movzbl	16(%rax), %eax	# index_expr_39->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	je	.L1114	#,
	.loc 1 5306 0
	movq	-240(%rbp), %rax	# orig_type, tmp296
	movq	%rax, %rdi	# tmp296,
	call	check_for_full_enumeration_handling	#
.L1114:
	.loc 1 5310 0
	movq	-104(%rbp), %rax	# thiscase, tmp297
	movq	48(%rax), %rax	# thiscase_37->data.case_stmt.default_label, D.21259
	testq	%rax, %rax	# D.21259
	jne	.L1115	#,
	.loc 1 5313 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	build_decl	#
	movq	-104(%rbp), %rdx	# thiscase, tmp298
	movq	%rax, 48(%rdx)	# D.21259, thiscase_37->data.case_stmt.default_label
	.loc 1 5314 0
	movq	-104(%rbp), %rax	# thiscase, tmp299
	movq	48(%rax), %rax	# thiscase_37->data.case_stmt.default_label, D.21259
	movq	%rax, %rdi	# D.21259,
	call	expand_label	#
.L1115:
	.loc 1 5316 0
	movq	-104(%rbp), %rax	# thiscase, tmp300
	movq	48(%rax), %rax	# thiscase_37->data.case_stmt.default_label, D.21259
	movq	%rax, %rdi	# D.21259,
	call	label_rtx	#
	movq	%rax, -112(%rbp)	# tmp301, default_label
	.loc 1 5318 0
	call	get_last_insn	#
	movq	%rax, -192(%rbp)	# before_case.717, before_case
	.loc 1 5320 0
	movq	-104(%rbp), %rax	# thiscase, tmp302
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, D.21261
	testq	%rax, %rax	# D.21261
	je	.L1116	#,
	.loc 1 5321 0
	movq	-104(%rbp), %rax	# thiscase, tmp303
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, D.21261
	movq	(%rax), %rax	# _57->left, D.21261
	testq	%rax, %rax	# D.21261
	je	.L1116	#,
	.loc 1 5323 0
	movq	-104(%rbp), %rax	# thiscase, tmp304
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, D.21261
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21261,
	call	case_tree2list	#
	movq	-104(%rbp), %rdx	# thiscase, tmp305
	movq	%rax, 40(%rdx)	# D.21261, thiscase_37->data.case_stmt.case_list
.L1116:
	.loc 1 5326 0
	movq	-104(%rbp), %rax	# thiscase, tmp306
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, D.21261
	movq	%rax, %rdi	# D.21261,
	call	group_case_nodes	#
	.loc 1 5331 0
	movl	$0, -212(%rbp)	#, count
	.loc 1 5332 0
	movq	-104(%rbp), %rax	# thiscase, tmp307
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, tmp308
	movq	%rax, -152(%rbp)	# tmp308, n
	jmp	.L1117	#
.L1126:
	.loc 1 5335 0
	movq	-152(%rbp), %rax	# n, tmp309
	movq	24(%rax), %rax	# n_12->low, D.21259
	movzbl	16(%rax), %eax	# _64->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	je	.L1118	#,
	.loc 1 5336 0
	movl	$__FUNCTION__.14927, %edx	#,
	movl	$5336, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1118:
	.loc 1 5337 0
	movq	-152(%rbp), %rax	# n, tmp310
	movq	32(%rax), %rax	# n_12->high, D.21259
	movzbl	16(%rax), %eax	# _66->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	je	.L1119	#,
	.loc 1 5338 0
	movl	$__FUNCTION__.14927, %edx	#,
	movl	$5338, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1119:
	.loc 1 5340 0
	movq	-152(%rbp), %rax	# n, tmp311
	movq	24(%rax), %rdx	# n_12->low, D.21259
	movq	-128(%rbp), %rax	# index_type, tmp312
	movq	%rdx, %rsi	# D.21259,
	movq	%rax, %rdi	# tmp312,
	call	convert	#
	movq	-152(%rbp), %rdx	# n, tmp313
	movq	%rax, 24(%rdx)	# D.21259, n_12->low
	.loc 1 5341 0
	movq	-152(%rbp), %rax	# n, tmp314
	movq	32(%rax), %rdx	# n_12->high, D.21259
	movq	-128(%rbp), %rax	# index_type, tmp315
	movq	%rdx, %rsi	# D.21259,
	movq	%rax, %rdi	# tmp315,
	call	convert	#
	movq	-152(%rbp), %rdx	# n, tmp316
	movq	%rax, 32(%rdx)	# D.21259, n_12->high
	.loc 1 5345 0
	movl	-212(%rbp), %eax	# count, count.718
	leal	1(%rax), %edx	#, tmp317
	movl	%edx, -212(%rbp)	# tmp317, count
	testl	%eax, %eax	# count.718
	jne	.L1120	#,
	.loc 1 5347 0
	movq	-152(%rbp), %rax	# n, tmp318
	movq	24(%rax), %rax	# n_12->low, tmp319
	movq	%rax, -176(%rbp)	# tmp319, minval
	.loc 1 5348 0
	movq	-152(%rbp), %rax	# n, tmp320
	movq	32(%rax), %rax	# n_12->high, tmp321
	movq	%rax, -168(%rbp)	# tmp321, maxval
	jmp	.L1121	#
.L1120:
	.loc 1 5352 0
	movq	-152(%rbp), %rax	# n, tmp322
	movq	24(%rax), %rax	# n_12->low, D.21259
	movq	40(%rax), %rdx	# _76->int_cst.int_cst.high, D.21262
	movq	-176(%rbp), %rax	# minval, tmp323
	movq	40(%rax), %rax	# minval_4->int_cst.int_cst.high, D.21262
	cmpq	%rax, %rdx	# D.21262, D.21262
	jl	.L1122	#,
	.loc 1 5352 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# n, tmp324
	movq	24(%rax), %rax	# n_12->low, D.21259
	movq	40(%rax), %rdx	# _79->int_cst.int_cst.high, D.21262
	movq	-176(%rbp), %rax	# minval, tmp325
	movq	40(%rax), %rax	# minval_4->int_cst.int_cst.high, D.21262
	cmpq	%rax, %rdx	# D.21262, D.21262
	jne	.L1123	#,
	movq	-152(%rbp), %rax	# n, tmp326
	movq	24(%rax), %rax	# n_12->low, D.21259
	movq	32(%rax), %rdx	# _82->int_cst.int_cst.low, D.21263
	movq	-176(%rbp), %rax	# minval, tmp327
	movq	32(%rax), %rax	# minval_4->int_cst.int_cst.low, D.21263
	cmpq	%rax, %rdx	# D.21263, D.21263
	jae	.L1123	#,
.L1122:
	.loc 1 5353 0 is_stmt 1
	movq	-152(%rbp), %rax	# n, tmp328
	movq	24(%rax), %rax	# n_12->low, tmp329
	movq	%rax, -176(%rbp)	# tmp329, minval
.L1123:
	.loc 1 5354 0
	movq	-168(%rbp), %rax	# maxval, tmp330
	movq	40(%rax), %rdx	# maxval_8->int_cst.int_cst.high, D.21262
	movq	-152(%rbp), %rax	# n, tmp331
	movq	32(%rax), %rax	# n_12->high, D.21259
	movq	40(%rax), %rax	# _87->int_cst.int_cst.high, D.21262
	cmpq	%rax, %rdx	# D.21262, D.21262
	jl	.L1124	#,
	.loc 1 5354 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# maxval, tmp332
	movq	40(%rax), %rdx	# maxval_8->int_cst.int_cst.high, D.21262
	movq	-152(%rbp), %rax	# n, tmp333
	movq	32(%rax), %rax	# n_12->high, D.21259
	movq	40(%rax), %rax	# _90->int_cst.int_cst.high, D.21262
	cmpq	%rax, %rdx	# D.21262, D.21262
	jne	.L1121	#,
	movq	-168(%rbp), %rax	# maxval, tmp334
	movq	32(%rax), %rdx	# maxval_8->int_cst.int_cst.low, D.21263
	movq	-152(%rbp), %rax	# n, tmp335
	movq	32(%rax), %rax	# n_12->high, D.21259
	movq	32(%rax), %rax	# _93->int_cst.int_cst.low, D.21263
	cmpq	%rax, %rdx	# D.21263, D.21263
	jae	.L1121	#,
.L1124:
	.loc 1 5355 0 is_stmt 1
	movq	-152(%rbp), %rax	# n, tmp336
	movq	32(%rax), %rax	# n_12->high, tmp337
	movq	%rax, -168(%rbp)	# tmp337, maxval
.L1121:
	.loc 1 5358 0
	movq	-152(%rbp), %rax	# n, tmp338
	movq	32(%rax), %rdx	# n_12->high, D.21259
	movq	-152(%rbp), %rax	# n, tmp339
	movq	24(%rax), %rax	# n_12->low, D.21259
	movq	%rdx, %rsi	# D.21259,
	movq	%rax, %rdi	# D.21259,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21264
	jne	.L1125	#,
	.loc 1 5359 0
	addl	$1, -212(%rbp)	#, count
.L1125:
	.loc 1 5332 0
	movq	-152(%rbp), %rax	# n, tmp340
	movq	8(%rax), %rax	# n_12->right, tmp341
	movq	%rax, -152(%rbp)	# tmp341, n
.L1117:
	.loc 1 5332 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, n
	jne	.L1126	#,
	.loc 1 5363 0 is_stmt 1
	cmpl	$0, -212(%rbp)	#, count
	je	.L1127	#,
	.loc 1 5364 0
	movq	-176(%rbp), %rcx	# minval, tmp342
	movq	-168(%rbp), %rdx	# maxval, tmp343
	movq	-128(%rbp), %rax	# index_type, tmp344
	movq	%rax, %rsi	# tmp344,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21259,
	call	fold	#
	movq	%rax, -160(%rbp)	# tmp345, range
.L1127:
	.loc 1 5366 0
	call	end_cleanup_deferral	#
	.loc 1 5368 0
	cmpl	$0, -212(%rbp)	#, count
	jne	.L1128	#,
	.loc 1 5370 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.21265
	movq	-136(%rbp), %rax	# index_expr, tmp346
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp346,
	call	expand_expr	#
	.loc 1 5371 0
	call	emit_queue	#
	.loc 1 5372 0
	movq	-112(%rbp), %rax	# default_label, tmp347
	movq	%rax, %rdi	# tmp347,
	call	emit_jump	#
	jmp	.L1129	#
.L1128:
	.loc 1 5380 0
	call	case_values_threshold	#
	cmpl	-212(%rbp), %eax	# count, D.21266
	ja	.L1130	#,
	.loc 1 5381 0
	movl	-212(%rbp), %edx	# count, tmp348
	movl	%edx, %eax	# tmp348, tmp349
	sall	$2, %eax	#, tmp349
	addl	%edx, %eax	# tmp348, tmp349
	addl	%eax, %eax	# tmp350
	movl	%eax, %edx	# D.21266, D.21263
	movq	-160(%rbp), %rax	# range, tmp351
	movq	%rdx, %rsi	# D.21263,
	movq	%rax, %rdi	# tmp351,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21264
	jg	.L1130	#,
	.loc 1 5384 0
	movq	-160(%rbp), %rax	# range, tmp352
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp352,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21264
	js	.L1130	#,
	.loc 1 5388 0
	movq	-136(%rbp), %rax	# index_expr, tmp353
	movzbl	16(%rax), %eax	# index_expr_39->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	je	.L1130	#,
	.loc 1 5389 0
	movq	-136(%rbp), %rax	# index_expr, tmp354
	movzbl	16(%rax), %eax	# index_expr_39->common.code, D.21260
	cmpb	$47, %al	#, D.21260
	jne	.L1131	#,
	.loc 1 5390 0
	movq	-136(%rbp), %rax	# index_expr, tmp355
	movq	40(%rax), %rax	# index_expr_39->exp.operands, D.21259
	movzbl	16(%rax), %eax	# _111->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	jne	.L1131	#,
.L1130:
	.loc 1 5392 0
	movq	-136(%rbp), %rax	# index_expr, tmp356
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp356,
	call	expand_expr	#
	movq	%rax, -144(%rbp)	# tmp357, index
	.loc 1 5399 0
	movq	-144(%rbp), %rax	# index, tmp358
	movzbl	2(%rax), %eax	# index_188->mode, D.21260
	movzbl	%al, %eax	# D.21260, D.21264
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.21270
	cmpl	$1, %eax	#, D.21270
	jne	.L1132	#,
	.loc 1 5400 0
	movq	-144(%rbp), %rax	# index, tmp360
	movzbl	2(%rax), %eax	# index_188->mode, D.21260
	movzbl	%al, %eax	# D.21260, D.21271
	movl	%eax, %esi	# D.21271,
	movl	$74, %edi	#,
	call	have_insn_for	#
	testl	%eax, %eax	# D.21264
	jne	.L1132	#,
.LBB130:
	.loc 1 5403 0
	movq	-144(%rbp), %rax	# index, tmp361
	movzbl	2(%rax), %eax	# index_188->mode, D.21260
	movzbl	%al, %eax	# D.21260, tmp362
	movl	%eax, -204(%rbp)	# tmp362, wider_mode
	jmp	.L1133	#
.L1135:
	.loc 1 5405 0
	movl	-204(%rbp), %eax	# wider_mode, tmp363
	movl	%eax, %esi	# tmp363,
	movl	$74, %edi	#,
	call	have_insn_for	#
	testl	%eax, %eax	# D.21264
	je	.L1134	#,
	.loc 1 5407 0
	movl	-200(%rbp), %edx	# unsignedp, tmp364
	movq	-144(%rbp), %rcx	# index, tmp365
	movl	-204(%rbp), %eax	# wider_mode, tmp366
	movq	%rcx, %rsi	# tmp365,
	movl	%eax, %edi	# tmp366,
	call	convert_to_mode	#
	movq	%rax, -144(%rbp)	# tmp367, index
	.loc 1 5408 0
	jmp	.L1132	#
.L1134:
	.loc 1 5404 0
	movl	-204(%rbp), %eax	# wider_mode, wider_mode.719
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.21260
	movzbl	%al, %eax	# D.21260, tmp369
	movl	%eax, -204(%rbp)	# tmp369, wider_mode
.L1133:
	.loc 1 5403 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, wider_mode
	jne	.L1135	#,
.L1132:
.LBE130:
	.loc 1 5412 0
	call	emit_queue	#
	.loc 1 5413 0
	call	do_pending_stack_adjust	#
	.loc 1 5415 0
	movq	-144(%rbp), %rax	# index, tmp370
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp370,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp371, index
	.loc 1 5416 0
	movq	-144(%rbp), %rax	# index, tmp372
	movzwl	(%rax), %eax	# index_202->code, D.21272
	cmpw	$66, %ax	#, D.21272
	jne	.L1136	#,
	.loc 1 5417 0
	movq	-144(%rbp), %rax	# index, tmp373
	movq	%rax, %rdi	# tmp373,
	call	copy_to_reg	#
	movq	%rax, -144(%rbp)	# tmp374, index
.L1136:
	.loc 1 5418 0
	movq	-144(%rbp), %rax	# index, tmp375
	movzwl	(%rax), %eax	# index_18->code, D.21272
	cmpw	$54, %ax	#, D.21272
	je	.L1137	#,
	.loc 1 5419 0
	movq	-136(%rbp), %rax	# index_expr, tmp376
	movzbl	16(%rax), %eax	# index_expr_39->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	jne	.L1138	#,
.L1137:
	.loc 1 5423 0
	movq	-136(%rbp), %rax	# index_expr, tmp377
	movzbl	16(%rax), %eax	# index_expr_39->common.code, D.21260
	cmpb	$25, %al	#, D.21260
	je	.L1139	#,
	.loc 1 5426 0
	cmpl	$0, -200(%rbp)	#, unsignedp
	jne	.L1140	#,
	.loc 1 5426 0 is_stmt 0 discriminator 2
	movq	-144(%rbp), %rax	# index, tmp378
	movq	8(%rax), %rax	# index_18->fld[0].rtwint, D.21262
	testq	%rax, %rax	# D.21262
	js	.L1141	#,
.L1140:
	.loc 1 5426 0 discriminator 1
	movl	$0, %eax	#, iftmp.720
	jmp	.L1142	#
.L1141:
	movq	$-1, %rax	#, iftmp.720
.L1142:
	.loc 1 5426 0 discriminator 3
	movq	-144(%rbp), %rdx	# index, tmp379
	movq	8(%rdx), %rdx	# index_18->fld[0].rtwint, D.21262
	movq	%rax, %rsi	# iftmp.720,
	movq	%rdx, %rdi	# D.21263,
	call	build_int_2_wide	#
	movq	%rax, -136(%rbp)	# tmp380, index_expr
	.loc 1 5428 0 is_stmt 1 discriminator 3
	movq	-136(%rbp), %rdx	# index_expr, tmp381
	movq	-128(%rbp), %rax	# index_type, tmp382
	movq	%rdx, %rsi	# tmp381,
	movq	%rax, %rdi	# tmp382,
	call	convert	#
	movq	%rax, -136(%rbp)	# tmp383, index_expr
.L1139:
	.loc 1 5436 0
	movq	-104(%rbp), %rax	# thiscase, tmp384
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, tmp385
	movq	%rax, -152(%rbp)	# tmp385, n
	jmp	.L1143	#
.L1146:
	.loc 1 5437 0
	movq	-152(%rbp), %rax	# n, tmp386
	movq	24(%rax), %rdx	# n_13->low, D.21259
	movq	-136(%rbp), %rax	# index_expr, tmp387
	movq	%rdx, %rsi	# D.21259,
	movq	%rax, %rdi	# tmp387,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21264
	jne	.L1144	#,
	.loc 1 5438 0
	movq	-152(%rbp), %rax	# n, tmp388
	movq	32(%rax), %rax	# n_13->high, D.21259
	movq	-136(%rbp), %rdx	# index_expr, tmp389
	movq	%rdx, %rsi	# tmp389,
	movq	%rax, %rdi	# D.21259,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21264
	jne	.L1144	#,
	.loc 1 5439 0
	jmp	.L1145	#
.L1144:
	.loc 1 5436 0
	movq	-152(%rbp), %rax	# n, tmp390
	movq	8(%rax), %rax	# n_13->right, tmp391
	movq	%rax, -152(%rbp)	# tmp391, n
.L1143:
	.loc 1 5436 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, n
	jne	.L1146	#,
.L1145:
	.loc 1 5441 0 is_stmt 1
	cmpq	$0, -152(%rbp)	#, n
	je	.L1147	#,
	.loc 1 5442 0
	movq	-152(%rbp), %rax	# n, tmp392
	movq	40(%rax), %rax	# n_13->code_label, D.21259
	movq	%rax, %rdi	# D.21259,
	call	label_rtx	#
	movq	%rax, %rdi	# D.21265,
	call	emit_jump	#
	.loc 1 5441 0
	jmp	.L1149	#
.L1147:
	.loc 1 5444 0
	movq	-112(%rbp), %rax	# default_label, tmp393
	movq	%rax, %rdi	# tmp393,
	call	emit_jump	#
	.loc 1 5441 0
	jmp	.L1149	#
.L1138:
	.loc 1 5463 0
	movq	-240(%rbp), %rax	# orig_type, tmp394
	movzbl	16(%rax), %eax	# orig_type_1->common.code, D.21260
	.loc 1 5464 0
	cmpb	$10, %al	#, D.21260
	je	.L1150	#,
	.loc 1 5464 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# thiscase, tmp395
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, D.21261
	movq	%rax, %rdi	# D.21261,
	call	estimate_case_costs	#
	testl	%eax, %eax	# D.21264
	je	.L1150	#,
	.loc 1 5464 0 discriminator 3
	movl	$1, %eax	#, iftmp.721
	jmp	.L1151	#
.L1150:
	.loc 1 5464 0 discriminator 2
	movl	$0, %eax	#, iftmp.721
.L1151:
	.loc 1 5463 0 is_stmt 1
	movl	%eax, use_cost_table(%rip)	# iftmp.721, use_cost_table
	.loc 1 5465 0
	movq	-104(%rbp), %rax	# thiscase, tmp396
	addq	$40, %rax	#, D.21273
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21273,
	call	balance_case_nodes	#
	.loc 1 5466 0
	movq	-104(%rbp), %rax	# thiscase, tmp397
	movq	40(%rax), %rsi	# thiscase_37->data.case_stmt.case_list, D.21261
	movq	-128(%rbp), %rcx	# index_type, tmp398
	movq	-112(%rbp), %rdx	# default_label, tmp399
	movq	-144(%rbp), %rax	# index, tmp400
	movq	%rax, %rdi	# tmp400,
	call	emit_case_nodes	#
	.loc 1 5468 0
	movq	-112(%rbp), %rax	# default_label, tmp401
	movq	%rax, %rdi	# tmp401,
	call	emit_jump_if_reachable	#
	.loc 1 5418 0
	jmp	.L1129	#
.L1149:
	jmp	.L1129	#
.L1131:
	.loc 1 5473 0
	movq	-112(%rbp), %r8	# default_label, tmp402
	movq	-96(%rbp), %rdi	# table_label, tmp403
	movq	-160(%rbp), %rcx	# range, tmp404
	movq	-176(%rbp), %rdx	# minval, tmp405
	movq	-136(%rbp), %rsi	# index_expr, tmp406
	movq	-128(%rbp), %rax	# index_type, tmp407
	movq	%r8, %r9	# tmp402,
	movq	%rdi, %r8	# tmp403,
	movq	%rax, %rdi	# tmp407,
	call	try_casesi	#
	testl	%eax, %eax	# D.21264
	jne	.L1152	#,
	.loc 1 5476 0
	movq	-104(%rbp), %rax	# thiscase, tmp408
	movq	64(%rax), %rax	# thiscase_37->data.case_stmt.nominal_type, tmp409
	movq	%rax, -128(%rbp)	# tmp409, index_type
	.loc 1 5480 0
	movl	optimize_size(%rip), %eax	# optimize_size, optimize_size.722
	testl	%eax, %eax	# optimize_size.722
	jne	.L1153	#,
	.loc 1 5481 0
	movq	-176(%rbp), %rax	# minval, tmp410
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp410,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21264
	jle	.L1153	#,
	.loc 1 5482 0
	movq	-176(%rbp), %rax	# minval, tmp411
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp411,
	call	compare_tree_int	#
	testl	%eax, %eax	# D.21264
	jns	.L1153	#,
	.loc 1 5484 0
	movq	global_trees+88(%rip), %rax	# global_trees, tmp412
	movq	%rax, -176(%rbp)	# tmp412, minval
	.loc 1 5485 0
	movq	-168(%rbp), %rax	# maxval, tmp413
	movq	%rax, -160(%rbp)	# tmp413, range
.L1153:
	.loc 1 5488 0
	movq	-112(%rbp), %r8	# default_label, tmp414
	movq	-96(%rbp), %rdi	# table_label, tmp415
	movq	-160(%rbp), %rcx	# range, tmp416
	movq	-176(%rbp), %rdx	# minval, tmp417
	movq	-136(%rbp), %rsi	# index_expr, tmp418
	movq	-128(%rbp), %rax	# index_type, tmp419
	movq	%r8, %r9	# tmp414,
	movq	%rdi, %r8	# tmp415,
	movq	%rax, %rdi	# tmp419,
	call	try_tablejump	#
	testl	%eax, %eax	# D.21264
	jne	.L1152	#,
	.loc 1 5490 0
	movl	$__FUNCTION__.14927, %edx	#,
	movl	$5490, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1152:
	.loc 1 5495 0
	movq	-160(%rbp), %rax	# range, tmp420
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp420,
	call	tree_low_cst	#
	addl	$1, %eax	#, D.21267
	movl	%eax, -196(%rbp)	# D.21267, ncases
	.loc 1 5496 0
	movl	-196(%rbp), %eax	# ncases, tmp421
	cltq
	salq	$3, %rax	#, D.21263
	leaq	15(%rax), %rdx	#, tmp422
	movl	$16, %eax	#, tmp481
	subq	$1, %rax	#, tmp423
	addq	%rdx, %rax	# tmp422, tmp424
	movl	$16, %ebx	#, tmp482
	movl	$0, %edx	#, tmp427
	divq	%rbx	# tmp482
	imulq	$16, %rax, %rax	#, tmp426, tmp428
	subq	%rax, %rsp	# tmp428,
	movq	%rsp, %rax	#, tmp429
	addq	$15, %rax	#, tmp430
	shrq	$4, %rax	#, tmp431
	salq	$4, %rax	#, tmp432
	movq	%rax, -88(%rbp)	# tmp432, labelvec
	.loc 1 5497 0
	movl	-196(%rbp), %eax	# ncases, tmp433
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21263
	movq	-88(%rbp), %rax	# labelvec, tmp434
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp434,
	call	memset	#
	.loc 1 5499 0
	movq	-104(%rbp), %rax	# thiscase, tmp435
	movq	40(%rax), %rax	# thiscase_37->data.case_stmt.case_list, tmp436
	movq	%rax, -152(%rbp)	# tmp436, n
	jmp	.L1154	#
.L1159:
.LBB131:
	.loc 1 5505 0
	movq	-152(%rbp), %rax	# n, tmp437
	movq	24(%rax), %rdx	# n_14->low, D.21259
	movq	-176(%rbp), %rcx	# minval, tmp438
	movq	-128(%rbp), %rax	# index_type, tmp439
	movq	%rax, %rsi	# tmp439,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21259,
	call	fold	#
	.loc 1 5504 0
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21259,
	call	tree_low_cst	#
	movq	%rax, -80(%rbp)	# tmp440, i_low
	.loc 1 5508 0
	movq	-152(%rbp), %rax	# n, tmp441
	movq	32(%rax), %rdx	# n_14->high, D.21259
	movq	-176(%rbp), %rcx	# minval, tmp442
	movq	-128(%rbp), %rax	# index_type, tmp443
	movq	%rax, %rsi	# tmp443,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21259,
	call	fold	#
	.loc 1 5507 0
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.21259,
	call	tree_low_cst	#
	movq	%rax, -72(%rbp)	# tmp444, i_high
	.loc 1 5512 0
	movq	-80(%rbp), %rax	# i_low, tmp445
	movq	%rax, -120(%rbp)	# tmp445, i
	jmp	.L1155	#
.L1158:
	.loc 1 5513 0
	movq	-120(%rbp), %rax	# i, i.723
	leaq	0(,%rax,8), %rdx	#, D.21263
	movq	-88(%rbp), %rax	# labelvec, tmp446
	leaq	(%rdx,%rax), %rbx	#, D.21268
	.loc 1 5514 0
	movq	-152(%rbp), %rax	# n, tmp447
	movq	40(%rax), %rax	# n_14->code_label, D.21259
	movq	%rax, %rdi	# D.21259,
	call	label_rtx	#
	movq	%rax, %rdx	#, D.21265
	movl	target_flags(%rip), %eax	# target_flags, target_flags.725
	andl	$33554432, %eax	#, D.21264
	testl	%eax, %eax	# D.21264
	je	.L1156	#,
	.loc 1 5514 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.724
	jmp	.L1157	#
.L1156:
	.loc 1 5514 0 discriminator 2
	movl	$4, %eax	#, iftmp.724
.L1157:
	.loc 1 5514 0 discriminator 3
	movl	%eax, %esi	# iftmp.724,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, (%rbx)	# D.21265, *_142
	.loc 1 5512 0 is_stmt 1 discriminator 3
	addq	$1, -120(%rbp)	#, i
.L1155:
	.loc 1 5512 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# i, tmp448
	cmpq	-72(%rbp), %rax	# i_high, tmp448
	jle	.L1158	#,
.LBE131:
	.loc 1 5499 0 is_stmt 1
	movq	-152(%rbp), %rax	# n, tmp449
	movq	8(%rax), %rax	# n_14->right, tmp450
	movq	%rax, -152(%rbp)	# tmp450, n
.L1154:
	.loc 1 5499 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, n
	jne	.L1159	#,
	.loc 1 5518 0 is_stmt 1
	movl	$0, -208(%rbp)	#, i
	jmp	.L1160	#
.L1164:
	.loc 1 5519 0
	movl	-208(%rbp), %eax	# i, tmp451
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21263
	movq	-88(%rbp), %rax	# labelvec, tmp452
	addq	%rdx, %rax	# D.21263, D.21268
	movq	(%rax), %rax	# *_155, D.21265
	testq	%rax, %rax	# D.21265
	jne	.L1161	#,
	.loc 1 5520 0
	movl	-208(%rbp), %eax	# i, tmp453
	cltq
	leaq	0(,%rax,8), %rdx	#, D.21263
	movq	-88(%rbp), %rax	# labelvec, tmp454
	leaq	(%rdx,%rax), %rbx	#, D.21268
	movl	target_flags(%rip), %eax	# target_flags, target_flags.727
	andl	$33554432, %eax	#, D.21264
	testl	%eax, %eax	# D.21264
	je	.L1162	#,
	.loc 1 5520 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.726
	jmp	.L1163	#
.L1162:
	.loc 1 5520 0 discriminator 2
	movl	$4, %eax	#, iftmp.726
.L1163:
	.loc 1 5520 0 discriminator 3
	movq	-112(%rbp), %rdx	# default_label, tmp455
	movl	%eax, %esi	# iftmp.726,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, (%rbx)	# D.21265, *_159
.L1161:
	.loc 1 5518 0 is_stmt 1
	addl	$1, -208(%rbp)	#, i
.L1160:
	.loc 1 5518 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# i, tmp456
	cmpl	-196(%rbp), %eax	# ncases, tmp456
	jl	.L1164	#,
	.loc 1 5523 0 is_stmt 1
	movq	-96(%rbp), %rax	# table_label, tmp457
	movq	%rax, %rdi	# tmp457,
	call	emit_label	#
	.loc 1 5525 0
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.728
	testl	%eax, %eax	# flag_pic.728
	je	.L1165	#,
	.loc 1 5526 0
	movq	const_int_rtx+512(%rip), %r13	# const_int_rtx, D.21265
	movq	const_int_rtx+512(%rip), %r12	# const_int_rtx, D.21265
	movq	-88(%rbp), %rdx	# labelvec, tmp458
	movl	-196(%rbp), %eax	# ncases, tmp459
	movq	%rdx, %rsi	# tmp458,
	movl	%eax, %edi	# tmp459,
	call	gen_rtvec_v	#
	movq	%rax, %rbx	#, D.21269
	movl	target_flags(%rip), %eax	# target_flags, target_flags.730
	andl	$33554432, %eax	#, D.21264
	testl	%eax, %eax	# D.21264
	je	.L1166	#,
	.loc 1 5526 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.729
	jmp	.L1167	#
.L1166:
	.loc 1 5526 0 discriminator 2
	movl	$4, %eax	#, iftmp.729
.L1167:
	.loc 1 5526 0 discriminator 3
	movq	-96(%rbp), %rdx	# table_label, tmp460
	movl	%eax, %esi	# iftmp.729,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, %rdx	#, D.21265
	movl	target_flags(%rip), %eax	# target_flags, target_flags.732
	andl	$33554432, %eax	#, D.21264
	testl	%eax, %eax	# D.21264
	je	.L1168	#,
	.loc 1 5526 0 discriminator 5
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.733
	testl	%eax, %eax	# flag_pic.733
	je	.L1169	#,
.L1168:
	.loc 1 5526 0 discriminator 4
	movl	$4, %eax	#, iftmp.731
	jmp	.L1170	#
.L1169:
	.loc 1 5526 0 discriminator 1
	movl	$5, %eax	#, iftmp.731
.L1170:
	.loc 1 5526 0 discriminator 6
	movq	%r13, %r9	# D.21265,
	movq	%r12, %r8	# D.21265,
	movq	%rbx, %rcx	# D.21269,
	movl	%eax, %esi	# iftmp.731,
	movl	$45, %edi	#,
	call	gen_rtx_fmt_eEee0	#
	movq	%rax, %rdi	# D.21265,
	call	emit_jump_insn	#
	jmp	.L1171	#
.L1165:
	.loc 1 5531 0 is_stmt 1
	movq	-88(%rbp), %rdx	# labelvec, tmp461
	movl	-196(%rbp), %eax	# ncases, tmp462
	movq	%rdx, %rsi	# tmp461,
	movl	%eax, %edi	# tmp462,
	call	gen_rtvec_v	#
	movq	%rax, %rdx	#, D.21269
	movl	target_flags(%rip), %eax	# target_flags, target_flags.735
	andl	$33554432, %eax	#, D.21264
	testl	%eax, %eax	# D.21264
	je	.L1172	#,
	.loc 1 5531 0 is_stmt 0 discriminator 2
	movl	flag_pic(%rip), %eax	# flag_pic, flag_pic.736
	testl	%eax, %eax	# flag_pic.736
	je	.L1173	#,
.L1172:
	.loc 1 5531 0 discriminator 1
	movl	$4, %eax	#, iftmp.734
	jmp	.L1174	#
.L1173:
	movl	$5, %eax	#, iftmp.734
.L1174:
	.loc 1 5531 0 discriminator 3
	movl	%eax, %esi	# iftmp.734,
	movl	$44, %edi	#,
	call	gen_rtx_fmt_E	#
	movq	%rax, %rdi	# D.21265,
	call	emit_jump_insn	#
.L1171:
	.loc 1 5540 0 is_stmt 1
	call	emit_barrier	#
.L1129:
	.loc 1 5544 0
	movq	-192(%rbp), %rax	# before_case, before_case.737
	movq	24(%rax), %rax	# before_case.737_230->fld[2].rtx, before_case.738
	movq	%rax, -192(%rbp)	# before_case.738, before_case
	.loc 1 5545 0
	call	get_last_insn	#
	movq	%rax, -184(%rbp)	# end.739, end
	.loc 1 5546 0
	leaq	-184(%rbp), %rdx	#, tmp463
	leaq	-192(%rbp), %rax	#, tmp464
	movq	%rdx, %rsi	# tmp463,
	movq	%rax, %rdi	# tmp464,
	call	squeeze_notes	#
	testb	%al, %al	# D.21274
	je	.L1175	#,
	.loc 1 5547 0
	movl	$__FUNCTION__.14927, %edx	#,
	movl	$5547, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L1175:
	.loc 1 5548 0
	movq	-104(%rbp), %rax	# thiscase, tmp465
	movq	32(%rax), %rdx	# thiscase_37->data.case_stmt.start, D.21265
	movq	-184(%rbp), %rcx	# end, end.740
	movq	-192(%rbp), %rax	# before_case, before_case.741
	movq	%rcx, %rsi	# end.740,
	movq	%rax, %rdi	# before_case.741,
	call	reorder_insns	#
	jmp	.L1176	#
.L1113:
	.loc 1 5552 0
	call	end_cleanup_deferral	#
.L1176:
	.loc 1 5554 0
	movq	-104(%rbp), %rax	# thiscase, tmp466
	movq	24(%rax), %rax	# thiscase_37->exit_label, D.21265
	testq	%rax, %rax	# D.21265
	je	.L1177	#,
	.loc 1 5555 0
	movq	-104(%rbp), %rax	# thiscase, tmp467
	movq	24(%rax), %rax	# thiscase_37->exit_label, D.21265
	movq	%rax, %rdi	# D.21265,
	call	emit_label	#
.L1177:
	.loc 1 5557 0
	movq	cfun(%rip), %rax	# cfun, cfun.742
	movq	8(%rax), %rax	# cfun.742_239->stmt, D.21257
	movq	32(%rax), %rax	# _240->x_case_stack, D.21275
	movq	40(%rax), %rax	# _241->data.case_stmt.case_list, D.21261
	movq	%rax, %rdi	# D.21261,
	call	free_case_nodes	#
.LBB132:
	.loc 1 5558 0
	movq	cfun(%rip), %rax	# cfun, cfun.743
	movq	8(%rax), %rax	# cfun.743_243->stmt, D.21257
	movq	32(%rax), %rax	# _244->x_case_stack, tmp468
	movq	%rax, -64(%rbp)	# tmp468, target
.L1185:
	.loc 1 5558 0 is_stmt 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.744
	movq	8(%rax), %rax	# cfun.744_246->stmt, D.21257
	movq	40(%rax), %rax	# _247->x_nesting_stack, tmp469
	movq	%rax, -56(%rbp)	# tmp469, this
	movq	cfun(%rip), %rax	# cfun, cfun.745
	movq	8(%rax), %rax	# cfun.745_249->stmt, D.21257
	movq	24(%rax), %rax	# _250->x_loop_stack, D.21275
	cmpq	-56(%rbp), %rax	# this, D.21275
	jne	.L1178	#,
	movq	cfun(%rip), %rax	# cfun, cfun.746
	movq	8(%rax), %rax	# cfun.746_252->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.747
	movq	8(%rdx), %rdx	# cfun.747_254->stmt, D.21257
	movq	24(%rdx), %rdx	# _255->x_loop_stack, D.21275
	movq	8(%rdx), %rdx	# _256->next, D.21275
	movq	%rdx, 24(%rax)	# D.21275, _253->x_loop_stack
.L1178:
	.loc 1 5558 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.748
	movq	8(%rax), %rax	# cfun.748_258->stmt, D.21257
	movq	16(%rax), %rax	# _259->x_cond_stack, D.21275
	cmpq	-56(%rbp), %rax	# this, D.21275
	jne	.L1179	#,
	.loc 1 5558 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.749
	movq	8(%rax), %rax	# cfun.749_261->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.750
	movq	8(%rdx), %rdx	# cfun.750_263->stmt, D.21257
	movq	16(%rdx), %rdx	# _264->x_cond_stack, D.21275
	movq	8(%rdx), %rdx	# _265->next, D.21275
	movq	%rdx, 16(%rax)	# D.21275, _262->x_cond_stack
.L1179:
	.loc 1 5558 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.751
	movq	8(%rax), %rax	# cfun.751_267->stmt, D.21257
	movq	(%rax), %rax	# _268->x_block_stack, D.21275
	cmpq	-56(%rbp), %rax	# this, D.21275
	jne	.L1180	#,
	.loc 1 5558 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.752
	movq	8(%rax), %rax	# cfun.752_270->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.753
	movq	8(%rdx), %rdx	# cfun.753_272->stmt, D.21257
	movq	(%rdx), %rdx	# _273->x_block_stack, D.21275
	movq	8(%rdx), %rdx	# _274->next, D.21275
	movq	%rdx, (%rax)	# D.21275, _271->x_block_stack
.L1180:
	.loc 1 5558 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.754
	movq	8(%rax), %rax	# cfun.754_276->stmt, D.21257
	movq	8(%rax), %rax	# _277->x_stack_block_stack, D.21275
	cmpq	-56(%rbp), %rax	# this, D.21275
	jne	.L1181	#,
	.loc 1 5558 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.755
	movq	8(%rax), %rax	# cfun.755_279->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.756
	movq	8(%rdx), %rdx	# cfun.756_281->stmt, D.21257
	movq	8(%rdx), %rdx	# _282->x_stack_block_stack, D.21275
	movq	8(%rdx), %rdx	# _283->next, D.21275
	movq	%rdx, 8(%rax)	# D.21275, _280->x_stack_block_stack
.L1181:
	.loc 1 5558 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.757
	movq	8(%rax), %rax	# cfun.757_285->stmt, D.21257
	movq	32(%rax), %rax	# _286->x_case_stack, D.21275
	cmpq	-56(%rbp), %rax	# this, D.21275
	jne	.L1182	#,
	.loc 1 5558 0 discriminator 1
	movq	cfun(%rip), %rax	# cfun, cfun.758
	movq	8(%rax), %rax	# cfun.758_288->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.759
	movq	8(%rdx), %rdx	# cfun.759_290->stmt, D.21257
	movq	32(%rdx), %rdx	# _291->x_case_stack, D.21275
	movq	8(%rdx), %rdx	# _292->next, D.21275
	movq	%rdx, 32(%rax)	# D.21275, _289->x_case_stack
.L1182:
	.loc 1 5558 0 discriminator 2
	movq	cfun(%rip), %rax	# cfun, cfun.760
	movq	8(%rax), %rax	# cfun.760_294->stmt, D.21257
	movq	cfun(%rip), %rdx	# cfun, cfun.761
	movq	8(%rdx), %rdx	# cfun.761_296->stmt, D.21257
	movq	40(%rdx), %rdx	# _297->x_nesting_stack, D.21275
	movl	16(%rdx), %edx	# _298->depth, D.21264
	subl	$1, %edx	#, D.21264
	movl	%edx, 48(%rax)	# D.21264, _295->x_nesting_depth
	movq	cfun(%rip), %rax	# cfun, cfun.762
	movq	8(%rax), %rax	# cfun.762_301->stmt, D.21257
	movq	-56(%rbp), %rdx	# this, tmp470
	movq	(%rdx), %rdx	# this_248->all, D.21275
	movq	%rdx, 40(%rax)	# D.21275, _302->x_nesting_stack
.LBB133:
	movq	$stmt_obstack, -48(%rbp)	#, __o
	movq	-56(%rbp), %rax	# this, tmp471
	movq	%rax, -40(%rbp)	# tmp471, __obj
	movq	-48(%rbp), %rax	# __o, tmp472
	movq	8(%rax), %rax	# __o_304->chunk, D.21276
	cmpq	-40(%rbp), %rax	# __obj, D.21276
	jae	.L1183	#,
	.loc 1 5558 0 discriminator 1
	movq	-48(%rbp), %rax	# __o, tmp473
	movq	32(%rax), %rax	# __o_304->chunk_limit, D.21277
	cmpq	-40(%rbp), %rax	# __obj, D.21277
	jbe	.L1183	#,
	movq	-48(%rbp), %rax	# __o, tmp474
	movq	-40(%rbp), %rdx	# __obj, tmp475
	movq	%rdx, 16(%rax)	# tmp475, __o_304->object_base
	movq	-48(%rbp), %rax	# __o, tmp476
	movq	16(%rax), %rdx	# __o_304->object_base, D.21277
	movq	-48(%rbp), %rax	# __o, tmp477
	movq	%rdx, 24(%rax)	# D.21277, __o_304->next_free
	jmp	.L1184	#
.L1183:
	.loc 1 5558 0 discriminator 2
	movq	-40(%rbp), %rdx	# __obj, tmp478
	movq	-48(%rbp), %rax	# __o, tmp479
	movq	%rdx, %rsi	# tmp478,
	movq	%rax, %rdi	# tmp479,
	call	obstack_free	#
.L1184:
.LBE133:
	.loc 1 5558 0 discriminator 1
	movq	-56(%rbp), %rax	# this, tmp480
	cmpq	-64(%rbp), %rax	# target, tmp480
	jne	.L1185	#,
.LBE132:
	.loc 1 5560 0 is_stmt 1
	call	free_temp_slots	#
.L1109:
	.loc 1 5561 0
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	expand_end_case_type, .-expand_end_case_type
	.type	case_tree2list, @function
case_tree2list:
.LFB102:
	.loc 1 5570 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	movq	%rsi, -32(%rbp)	# right, right
	.loc 1 5573 0
	movq	-24(%rbp), %rax	# node, tmp63
	movq	8(%rax), %rax	# node_3(D)->right, D.21278
	testq	%rax, %rax	# D.21278
	je	.L1187	#,
	.loc 1 5574 0
	movq	-24(%rbp), %rax	# node, tmp64
	movq	8(%rax), %rax	# node_3(D)->right, D.21278
	movq	-32(%rbp), %rdx	# right, tmp65
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# D.21278,
	call	case_tree2list	#
	movq	%rax, -32(%rbp)	# tmp66, right
.L1187:
	.loc 1 5576 0
	movq	-24(%rbp), %rax	# node, tmp67
	movq	-32(%rbp), %rdx	# right, tmp68
	movq	%rdx, 8(%rax)	# tmp68, node_3(D)->right
	.loc 1 5577 0
	movq	-24(%rbp), %rax	# node, tmp69
	movq	(%rax), %rax	# node_3(D)->left, tmp70
	movq	%rax, -8(%rbp)	# tmp70, left
	cmpq	$0, -8(%rbp)	#, left
	je	.L1188	#,
	.loc 1 5579 0
	movq	-24(%rbp), %rax	# node, tmp71
	movq	$0, (%rax)	#, node_3(D)->left
	.loc 1 5580 0
	movq	-24(%rbp), %rdx	# node, tmp72
	movq	-8(%rbp), %rax	# left, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	case_tree2list	#
	jmp	.L1189	#
.L1188:
	.loc 1 5583 0
	movq	-24(%rbp), %rax	# node, D.21278
.L1189:
	.loc 1 5584 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	case_tree2list, .-case_tree2list
	.type	do_jump_if_equal, @function
do_jump_if_equal:
.LFB103:
	.loc 1 5592 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# op1, op1
	movq	%rsi, -16(%rbp)	# op2, op2
	movq	%rdx, -24(%rbp)	# label, label
	movl	%ecx, -28(%rbp)	# unsignedp, unsignedp
	.loc 1 5593 0
	movq	-8(%rbp), %rax	# op1, tmp67
	movzwl	(%rax), %eax	# op1_2(D)->code, D.21279
	cmpw	$54, %ax	#, D.21279
	jne	.L1191	#,
	.loc 1 5593 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# op2, tmp68
	movzwl	(%rax), %eax	# op2_4(D)->code, D.21279
	cmpw	$54, %ax	#, D.21279
	jne	.L1191	#,
	.loc 1 5595 0 is_stmt 1
	movq	-8(%rbp), %rax	# op1, tmp69
	movq	8(%rax), %rdx	# op1_2(D)->fld[0].rtwint, D.21280
	movq	-16(%rbp), %rax	# op2, tmp70
	movq	8(%rax), %rax	# op2_4(D)->fld[0].rtwint, D.21280
	cmpq	%rax, %rdx	# D.21280, D.21280
	jne	.L1192	#,
	.loc 1 5596 0
	movq	-24(%rbp), %rax	# label, tmp71
	movq	%rax, %rdi	# tmp71,
	call	emit_jump	#
	.loc 1 5595 0
	jmp	.L1190	#
.L1192:
	.loc 1 5595 0 is_stmt 0 discriminator 1
	jmp	.L1190	#
.L1191:
	.loc 1 5600 0 is_stmt 1
	movq	-8(%rbp), %rax	# op1, tmp72
	movzbl	2(%rax), %eax	# op1_2(D)->mode, D.21281
	.loc 1 5599 0
	testb	%al, %al	# D.21281
	jne	.L1194	#,
	.loc 1 5601 0
	movq	-16(%rbp), %rax	# op2, tmp73
	movzbl	2(%rax), %eax	# op2_4(D)->mode, D.21281
	.loc 1 5599 0
	movzbl	%al, %eax	# D.21281, iftmp.763
	jmp	.L1195	#
.L1194:
	.loc 1 5601 0 discriminator 1
	movq	-8(%rbp), %rax	# op1, tmp74
	movzbl	2(%rax), %eax	# op1_2(D)->mode, D.21281
	.loc 1 5599 0 discriminator 1
	movzbl	%al, %eax	# D.21281, iftmp.763
.L1195:
	.loc 1 5599 0 is_stmt 0 discriminator 2
	movl	-28(%rbp), %ecx	# unsignedp, tmp75
	movq	-16(%rbp), %rsi	# op2, tmp76
	movq	-8(%rbp), %rdi	# op1, tmp77
	movq	-24(%rbp), %rdx	# label, tmp78
	movq	%rdx, (%rsp)	# tmp78,
	movl	%ecx, %r9d	# tmp75,
	movl	%eax, %r8d	# iftmp.763,
	movl	$0, %ecx	#,
	movl	$103, %edx	#,
	call	emit_cmp_and_jump_insns	#
.L1190:
	.loc 1 5603 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	do_jump_if_equal, .-do_jump_if_equal
	.type	estimate_case_costs, @function
estimate_case_costs:
.LFB104:
	.loc 1 5631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# node, node
	.loc 1 5632 0
	movq	global_trees+104(%rip), %rax	# global_trees, tmp110
	movq	%rax, -16(%rbp)	# tmp110, min_ascii
	.loc 1 5633 0
	movl	$0, %esi	#,
	movl	$127, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, %rdx	#, D.21283
	movq	-40(%rbp), %rax	# node, tmp111
	movq	32(%rax), %rax	# node_7(D)->high, D.21283
	movq	8(%rax), %rax	# _8->common.type, D.21283
	movq	%rdx, %rsi	# D.21283,
	movq	%rax, %rdi	# D.21283,
	call	convert	#
	movq	%rax, -8(%rbp)	# tmp112, max_ascii
	.loc 1 5640 0
	movl	cost_table_initialized(%rip), %eax	# cost_table_initialized, cost_table_initialized.764
	testl	%eax, %eax	# cost_table_initialized.764
	jne	.L1197	#,
	.loc 1 5642 0
	movl	$1, cost_table_initialized(%rip)	#, cost_table_initialized
	.loc 1 5644 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L1198	#
.L1202:
	.loc 1 5646 0
	movl	-28(%rbp), %eax	# i, tmp113
	movzbl	%al, %eax	# tmp113, D.21282
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.21284
	movzwl	%ax, %eax	# D.21284, D.21282
	andl	$140, %eax	#, D.21282
	testl	%eax, %eax	# D.21282
	je	.L1199	#,
	.loc 1 5647 0
	movl	-28(%rbp), %eax	# i, tmp115
	addl	$1, %eax	#, D.21282
	cltq
	movw	$16, cost_table_(%rax,%rax)	#, cost_table_
	jmp	.L1200	#
.L1199:
	.loc 1 5648 0
	movl	-28(%rbp), %eax	# i, tmp116
	movzbl	%al, %eax	# tmp116, D.21282
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.21284
	movzwl	%ax, %eax	# D.21284, D.21282
	andl	$32, %eax	#, D.21282
	testl	%eax, %eax	# D.21282
	je	.L1201	#,
	.loc 1 5649 0
	movl	-28(%rbp), %eax	# i, tmp118
	addl	$1, %eax	#, D.21282
	cltq
	movw	$8, cost_table_(%rax,%rax)	#, cost_table_
	jmp	.L1200	#
.L1201:
	.loc 1 5650 0
	movl	-28(%rbp), %eax	# i, tmp119
	movzbl	%al, %eax	# tmp119, D.21282
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.21284
	movzwl	%ax, %eax	# D.21284, D.21282
	andl	$2, %eax	#, D.21282
	testl	%eax, %eax	# D.21282
	je	.L1200	#,
	.loc 1 5651 0
	movl	-28(%rbp), %eax	# i, tmp121
	addl	$1, %eax	#, D.21282
	cltq
	movw	$-1, cost_table_(%rax,%rax)	#, cost_table_
.L1200:
	.loc 1 5644 0
	addl	$1, -28(%rbp)	#, i
.L1198:
	.loc 1 5644 0 is_stmt 0 discriminator 1
	cmpl	$127, -28(%rbp)	#, i
	jle	.L1202	#,
	.loc 1 5654 0 is_stmt 1
	movw	$8, cost_table_+66(%rip)	#, cost_table_
	.loc 1 5655 0
	movw	$4, cost_table_+20(%rip)	#, cost_table_
	.loc 1 5656 0
	movw	$4, cost_table_+2(%rip)	#, cost_table_
	.loc 1 5657 0
	movw	$2, cost_table_+22(%rip)	#, cost_table_
	.loc 1 5658 0
	movw	$1, cost_table_+26(%rip)	#, cost_table_
	.loc 1 5659 0
	movw	$1, cost_table_+24(%rip)	#, cost_table_
	.loc 1 5660 0
	movw	$1, cost_table_+18(%rip)	#, cost_table_
.L1197:
	.loc 1 5669 0
	movq	-40(%rbp), %rax	# node, tmp122
	movq	%rax, -24(%rbp)	# tmp122, n
	jmp	.L1203	#
.L1211:
	.loc 1 5671 0
	movq	-24(%rbp), %rax	# n, tmp123
	movq	24(%rax), %rax	# n_1->low, D.21283
	movq	40(%rax), %rdx	# _33->int_cst.int_cst.high, D.21286
	movq	-16(%rbp), %rax	# min_ascii, tmp124
	movq	40(%rax), %rax	# min_ascii_5->int_cst.int_cst.high, D.21286
	cmpq	%rax, %rdx	# D.21286, D.21286
	jl	.L1204	#,
	.loc 1 5671 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# n, tmp125
	movq	24(%rax), %rax	# n_1->low, D.21283
	movq	40(%rax), %rdx	# _36->int_cst.int_cst.high, D.21286
	movq	-16(%rbp), %rax	# min_ascii, tmp126
	movq	40(%rax), %rax	# min_ascii_5->int_cst.int_cst.high, D.21286
	cmpq	%rax, %rdx	# D.21286, D.21286
	jne	.L1205	#,
	movq	-24(%rbp), %rax	# n, tmp127
	movq	24(%rax), %rax	# n_1->low, D.21283
	movq	32(%rax), %rdx	# _39->int_cst.int_cst.low, D.21285
	movq	-16(%rbp), %rax	# min_ascii, tmp128
	movq	32(%rax), %rax	# min_ascii_5->int_cst.int_cst.low, D.21285
	cmpq	%rax, %rdx	# D.21285, D.21285
	jb	.L1204	#,
.L1205:
	.loc 1 5671 0 discriminator 2
	movq	-8(%rbp), %rax	# max_ascii, tmp129
	movq	40(%rax), %rdx	# max_ascii_10->int_cst.int_cst.high, D.21286
	movq	-24(%rbp), %rax	# n, tmp130
	movq	32(%rax), %rax	# n_1->high, D.21283
	movq	40(%rax), %rax	# _43->int_cst.int_cst.high, D.21286
	cmpq	%rax, %rdx	# D.21286, D.21286
	jl	.L1204	#,
	.loc 1 5671 0 discriminator 1
	movq	-8(%rbp), %rax	# max_ascii, tmp131
	movq	40(%rax), %rdx	# max_ascii_10->int_cst.int_cst.high, D.21286
	movq	-24(%rbp), %rax	# n, tmp132
	movq	32(%rax), %rax	# n_1->high, D.21283
	movq	40(%rax), %rax	# _46->int_cst.int_cst.high, D.21286
	cmpq	%rax, %rdx	# D.21286, D.21286
	jne	.L1206	#,
	movq	-8(%rbp), %rax	# max_ascii, tmp133
	movq	32(%rax), %rdx	# max_ascii_10->int_cst.int_cst.low, D.21285
	movq	-24(%rbp), %rax	# n, tmp134
	movq	32(%rax), %rax	# n_1->high, D.21283
	movq	32(%rax), %rax	# _49->int_cst.int_cst.low, D.21285
	cmpq	%rax, %rdx	# D.21285, D.21285
	jae	.L1206	#,
.L1204:
	.loc 1 5672 0 is_stmt 1
	movl	$0, %eax	#, D.21282
	jmp	.L1207	#
.L1206:
	.loc 1 5674 0
	movq	-24(%rbp), %rax	# n, tmp135
	movq	24(%rax), %rax	# n_1->low, D.21283
	movq	32(%rax), %rax	# _51->int_cst.int_cst.low, D.21285
	movl	%eax, -28(%rbp)	# D.21285, i
	jmp	.L1208	#
.L1210:
	.loc 1 5676 0
	movl	-28(%rbp), %eax	# i, tmp136
	addl	$1, %eax	#, D.21282
	cltq
	movzwl	cost_table_(%rax,%rax), %eax	# cost_table_, D.21287
	testw	%ax, %ax	# D.21287
	jns	.L1209	#,
	.loc 1 5677 0
	movl	$0, %eax	#, D.21282
	jmp	.L1207	#
.L1209:
	.loc 1 5675 0
	addl	$1, -28(%rbp)	#, i
.L1208:
	.loc 1 5675 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp137
	movslq	%eax, %rdx	# tmp137, D.21286
	movq	-24(%rbp), %rax	# n, tmp138
	movq	32(%rax), %rax	# n_1->high, D.21283
	movq	32(%rax), %rax	# _55->int_cst.int_cst.low, D.21285
	.loc 1 5674 0 is_stmt 1 discriminator 1
	cmpq	%rax, %rdx	# D.21286, D.21286
	jle	.L1210	#,
	.loc 1 5669 0
	movq	-24(%rbp), %rax	# n, tmp139
	movq	8(%rax), %rax	# n_1->right, tmp140
	movq	%rax, -24(%rbp)	# tmp140, n
.L1203:
	.loc 1 5669 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, n
	jne	.L1211	#,
	.loc 1 5682 0 is_stmt 1
	movl	$1, %eax	#, D.21282
.L1207:
	.loc 1 5683 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	estimate_case_costs, .-estimate_case_costs
	.type	group_case_nodes, @function
group_case_nodes:
.LFB105:
	.loc 1 5693 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	.loc 1 5694 0
	movq	-40(%rbp), %rax	# head, tmp87
	movq	%rax, -32(%rbp)	# tmp87, node
	.loc 1 5696 0
	jmp	.L1213	#
.L1218:
.LBB134:
	.loc 1 5698 0
	movq	-32(%rbp), %rax	# node, tmp88
	movq	40(%rax), %rax	# node_1->code_label, D.21288
	movq	%rax, %rdi	# D.21288,
	call	label_rtx	#
	movq	%rax, %rdi	# D.21289,
	call	next_real_insn	#
	movq	%rax, -16(%rbp)	# tmp89, lb
	.loc 1 5700 0
	movq	-32(%rbp), %rax	# node, tmp90
	movq	%rax, -24(%rbp)	# tmp90, np
	.loc 1 5703 0
	jmp	.L1214	#
.L1217:
	.loc 1 5724 0
	movq	-24(%rbp), %rax	# np, tmp91
	movq	32(%rax), %rdx	# np_9->high, D.21288
	movq	-32(%rbp), %rax	# node, tmp92
	movq	%rdx, 32(%rax)	# D.21288, node_1->high
.L1214:
	.loc 1 5703 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp93
	movq	8(%rax), %rax	# np_2->right, tmp94
	movq	%rax, -24(%rbp)	# tmp94, np
	cmpq	$0, -24(%rbp)	#, np
	je	.L1215	#,
	.loc 1 5705 0
	movq	-24(%rbp), %rax	# np, tmp95
	movq	40(%rax), %rax	# np_9->code_label, D.21288
	movq	%rax, %rdi	# D.21288,
	call	label_rtx	#
	movq	%rax, %rdi	# D.21289,
	call	next_real_insn	#
	movq	%rax, -8(%rbp)	# tmp96, lb2
	movq	-8(%rbp), %rax	# lb2, tmp97
	cmpq	-16(%rbp), %rax	# lb, tmp97
	je	.L1216	#,
	.loc 1 5706 0
	cmpq	$0, -16(%rbp)	#, lb
	je	.L1215	#,
	.loc 1 5706 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, lb2
	je	.L1215	#,
	.loc 1 5707 0 is_stmt 1
	movq	-16(%rbp), %rax	# lb, tmp98
	movq	%rax, %rdi	# tmp98,
	call	simplejump_p	#
	testl	%eax, %eax	# D.21290
	je	.L1215	#,
	.loc 1 5708 0
	movq	-8(%rbp), %rax	# lb2, tmp99
	movq	%rax, %rdi	# tmp99,
	call	simplejump_p	#
	testl	%eax, %eax	# D.21290
	je	.L1215	#,
	.loc 1 5710 0
	movq	-8(%rbp), %rax	# lb2, tmp100
	movq	32(%rax), %rax	# lb2_12->fld[3].rtx, D.21289
	.loc 1 5709 0
	movq	16(%rax), %rdx	# _15->fld[1].rtx, D.21289
	movq	-16(%rbp), %rax	# lb, tmp101
	movq	32(%rax), %rax	# lb_7->fld[3].rtx, D.21289
	movq	16(%rax), %rax	# _17->fld[1].rtx, D.21289
	movq	%rdx, %rsi	# D.21289,
	movq	%rax, %rdi	# D.21289,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.21290
	je	.L1215	#,
.L1216:
	.loc 1 5712 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21288
	movq	-32(%rbp), %rax	# node, tmp102
	movq	32(%rax), %rdx	# node_1->high, D.21288
	.loc 1 5714 0
	movq	-32(%rbp), %rax	# node, tmp103
	movq	32(%rax), %rax	# node_1->high, D.21288
	.loc 1 5712 0
	movq	8(%rax), %rax	# _22->common.type, D.21288
	movq	%rax, %rsi	# D.21288,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21288,
	call	fold	#
	movq	%rax, %rdx	#, D.21288
	movq	-24(%rbp), %rax	# np, tmp104
	movq	24(%rax), %rax	# np_9->low, D.21288
	movq	%rdx, %rsi	# D.21288,
	movq	%rax, %rdi	# D.21288,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21290
	je	.L1215	#,
	.loc 1 5718 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21288
	movq	-32(%rbp), %rax	# node, tmp105
	movq	32(%rax), %rdx	# node_1->high, D.21288
	.loc 1 5720 0
	movq	-32(%rbp), %rax	# node, tmp106
	movq	32(%rax), %rax	# node_1->high, D.21288
	.loc 1 5718 0
	movq	8(%rax), %rax	# _30->common.type, D.21288
	movq	%rax, %rsi	# D.21288,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21288,
	call	fold	#
	movq	%rax, %rdx	#, D.21288
	movq	-32(%rbp), %rax	# node, tmp107
	movq	32(%rax), %rax	# node_1->high, D.21288
	movq	%rdx, %rsi	# D.21288,
	movq	%rax, %rdi	# D.21288,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21290
	jne	.L1217	#,
.L1215:
	.loc 1 5728 0
	movq	-32(%rbp), %rax	# node, tmp108
	movq	-24(%rbp), %rdx	# np, tmp109
	movq	%rdx, 8(%rax)	# tmp109, node_1->right
	.loc 1 5729 0
	movq	-24(%rbp), %rax	# np, tmp110
	movq	%rax, -32(%rbp)	# tmp110, node
.L1213:
.LBE134:
	.loc 1 5696 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, node
	jne	.L1218	#,
	.loc 1 5731 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	group_case_nodes, .-group_case_nodes
	.type	balance_case_nodes, @function
balance_case_nodes:
.LFB106:
	.loc 1 5747 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# head, head
	movq	%rsi, -64(%rbp)	# parent, parent
	.loc 1 5750 0
	movq	-56(%rbp), %rax	# head, tmp110
	movq	(%rax), %rax	# *head_18(D), tmp111
	movq	%rax, -24(%rbp)	# tmp111, np
	.loc 1 5751 0
	cmpq	$0, -24(%rbp)	#, np
	je	.L1219	#,
.LBB135:
	.loc 1 5753 0
	movl	$0, -40(%rbp)	#, cost
	.loc 1 5754 0
	movl	$0, -36(%rbp)	#, i
	.loc 1 5755 0
	movl	$0, -32(%rbp)	#, ranges
	.loc 1 5761 0
	jmp	.L1221	#
.L1224:
	.loc 1 5763 0
	movq	-24(%rbp), %rax	# np, tmp112
	movq	32(%rax), %rdx	# np_1->high, D.21291
	movq	-24(%rbp), %rax	# np, tmp113
	movq	24(%rax), %rax	# np_1->low, D.21291
	movq	%rdx, %rsi	# D.21291,
	movq	%rax, %rdi	# D.21291,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21292
	jne	.L1222	#,
	.loc 1 5765 0
	addl	$1, -32(%rbp)	#, ranges
	.loc 1 5766 0
	movl	use_cost_table(%rip), %eax	# use_cost_table, use_cost_table.765
	testl	%eax, %eax	# use_cost_table.765
	je	.L1222	#,
	.loc 1 5767 0
	movq	-24(%rbp), %rax	# np, tmp114
	movq	32(%rax), %rax	# np_1->high, D.21291
	movq	32(%rax), %rax	# _28->int_cst.int_cst.low, D.21293
	addq	$1, %rax	#, D.21293
	movzwl	cost_table_(%rax,%rax), %eax	# cost_table_, D.21294
	cwtl
	addl	%eax, -40(%rbp)	# D.21292, cost
.L1222:
	.loc 1 5770 0
	movl	use_cost_table(%rip), %eax	# use_cost_table, use_cost_table.766
	testl	%eax, %eax	# use_cost_table.766
	je	.L1223	#,
	.loc 1 5771 0
	movq	-24(%rbp), %rax	# np, tmp115
	movq	24(%rax), %rax	# np_1->low, D.21291
	movq	32(%rax), %rax	# _35->int_cst.int_cst.low, D.21293
	addq	$1, %rax	#, D.21293
	movzwl	cost_table_(%rax,%rax), %eax	# cost_table_, D.21294
	cwtl
	addl	%eax, -40(%rbp)	# D.21292, cost
.L1223:
	.loc 1 5773 0
	addl	$1, -36(%rbp)	#, i
	.loc 1 5774 0
	movq	-24(%rbp), %rax	# np, tmp116
	movq	8(%rax), %rax	# np_1->right, tmp117
	movq	%rax, -24(%rbp)	# tmp117, np
.L1221:
	.loc 1 5761 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, np
	jne	.L1224	#,
	.loc 1 5777 0
	cmpl	$2, -36(%rbp)	#, i
	jle	.L1225	#,
	.loc 1 5780 0
	movq	-56(%rbp), %rax	# head, tmp118
	movq	%rax, -16(%rbp)	# tmp118, npp
	.loc 1 5781 0
	movq	-16(%rbp), %rax	# npp, tmp119
	movq	(%rax), %rax	# *npp_43, tmp120
	movq	%rax, -8(%rbp)	# tmp120, left
	.loc 1 5782 0
	movl	use_cost_table(%rip), %eax	# use_cost_table, use_cost_table.767
	testl	%eax, %eax	# use_cost_table.767
	je	.L1226	#,
.LBB136:
	.loc 1 5786 0
	movl	$0, -28(%rbp)	#, n_moved
	.loc 1 5787 0
	movl	-40(%rbp), %eax	# cost, tmp121
	addl	$1, %eax	#, D.21292
	movl	%eax, %edx	# D.21292, tmp122
	shrl	$31, %edx	#, tmp122
	addl	%edx, %eax	# tmp122, tmp123
	sarl	%eax	# tmp124
	movl	%eax, -36(%rbp)	# tmp124, i
.L1230:
	.loc 1 5791 0
	movq	-16(%rbp), %rax	# npp, tmp125
	movq	(%rax), %rax	# *npp_14, D.21295
	movq	32(%rax), %rdx	# _49->high, D.21291
	movq	-16(%rbp), %rax	# npp, tmp126
	movq	(%rax), %rax	# *npp_14, D.21295
	movq	24(%rax), %rax	# _51->low, D.21291
	movq	%rdx, %rsi	# D.21291,
	movq	%rax, %rdi	# D.21291,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21292
	jne	.L1227	#,
	.loc 1 5792 0
	movq	-16(%rbp), %rax	# npp, tmp127
	movq	(%rax), %rax	# *npp_14, D.21295
	movq	32(%rax), %rax	# _54->high, D.21291
	movq	32(%rax), %rax	# _55->int_cst.int_cst.low, D.21293
	addq	$1, %rax	#, D.21293
	movzwl	cost_table_(%rax,%rax), %eax	# cost_table_, D.21294
	cwtl
	subl	%eax, -36(%rbp)	# D.21292, i
.L1227:
	.loc 1 5793 0
	movq	-16(%rbp), %rax	# npp, tmp128
	movq	(%rax), %rax	# *npp_14, D.21295
	movq	24(%rax), %rax	# _61->low, D.21291
	movq	32(%rax), %rax	# _62->int_cst.int_cst.low, D.21293
	addq	$1, %rax	#, D.21293
	movzwl	cost_table_(%rax,%rax), %eax	# cost_table_, D.21294
	cwtl
	subl	%eax, -36(%rbp)	# D.21292, i
	.loc 1 5794 0
	cmpl	$0, -36(%rbp)	#, i
	jg	.L1228	#,
	.loc 1 5795 0
	nop
	.loc 1 5799 0
	cmpl	$0, -28(%rbp)	#, n_moved
	jne	.L1231	#,
	jmp	.L1241	#
.L1228:
	.loc 1 5796 0
	movq	-16(%rbp), %rax	# npp, tmp129
	movq	(%rax), %rax	# *npp_14, D.21295
	addq	$8, %rax	#, tmp130
	movq	%rax, -16(%rbp)	# tmp130, npp
	.loc 1 5797 0
	addl	$1, -28(%rbp)	#, n_moved
	.loc 1 5798 0
	jmp	.L1230	#
.L1241:
	.loc 1 5803 0
	movq	-56(%rbp), %rax	# head, tmp131
	movq	(%rax), %rax	# *head_18(D), tmp132
	movq	%rax, -24(%rbp)	# tmp132, np
	.loc 1 5804 0
	movq	-24(%rbp), %rax	# np, tmp133
	movq	-64(%rbp), %rdx	# parent, tmp134
	movq	%rdx, 16(%rax)	# tmp134, np_68->parent
	.loc 1 5805 0
	movq	-24(%rbp), %rax	# np, D.21296
	movq	-24(%rbp), %rdx	# np, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# D.21296,
	call	balance_case_nodes	#
	.loc 1 5806 0
	jmp	.L1232	#
.L1233:
	.loc 1 5807 0 discriminator 2
	movq	-24(%rbp), %rax	# np, tmp136
	movq	8(%rax), %rax	# np_2->right, D.21295
	movq	-24(%rbp), %rdx	# np, tmp137
	movq	%rdx, 16(%rax)	# tmp137, _72->parent
	.loc 1 5806 0 discriminator 2
	movq	-24(%rbp), %rax	# np, tmp138
	movq	8(%rax), %rax	# np_2->right, tmp139
	movq	%rax, -24(%rbp)	# tmp139, np
.L1232:
	.loc 1 5806 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp140
	movq	8(%rax), %rax	# np_2->right, D.21295
	testq	%rax, %rax	# D.21295
	jne	.L1233	#,
	.loc 1 5808 0 is_stmt 1
	jmp	.L1219	#
.L1231:
.LBE136:
	jmp	.L1234	#
.L1226:
	.loc 1 5812 0
	cmpl	$3, -36(%rbp)	#, i
	jne	.L1235	#,
	.loc 1 5813 0
	movq	-16(%rbp), %rax	# npp, tmp141
	movq	(%rax), %rax	# *npp_43, D.21295
	addq	$8, %rax	#, tmp142
	movq	%rax, -16(%rbp)	# tmp142, npp
	jmp	.L1234	#
.L1235:
	.loc 1 5819 0
	movl	-32(%rbp), %eax	# ranges, tmp143
	movl	-36(%rbp), %edx	# i, tmp144
	addl	%edx, %eax	# tmp144, D.21292
	addl	$1, %eax	#, D.21292
	movl	%eax, %edx	# D.21292, tmp145
	shrl	$31, %edx	#, tmp145
	addl	%edx, %eax	# tmp145, tmp146
	sarl	%eax	# tmp147
	movl	%eax, -36(%rbp)	# tmp147, i
.L1238:
	.loc 1 5823 0
	movq	-16(%rbp), %rax	# npp, tmp148
	movq	(%rax), %rax	# *npp_15, D.21295
	movq	32(%rax), %rdx	# _82->high, D.21291
	movq	-16(%rbp), %rax	# npp, tmp149
	movq	(%rax), %rax	# *npp_15, D.21295
	movq	24(%rax), %rax	# _84->low, D.21291
	movq	%rdx, %rsi	# D.21291,
	movq	%rax, %rdi	# D.21291,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21292
	jne	.L1236	#,
	.loc 1 5824 0
	subl	$1, -36(%rbp)	#, i
.L1236:
	.loc 1 5825 0
	subl	$1, -36(%rbp)	#, i
	.loc 1 5826 0
	cmpl	$0, -36(%rbp)	#, i
	jg	.L1237	#,
	.loc 1 5827 0
	jmp	.L1234	#
.L1237:
	.loc 1 5828 0
	movq	-16(%rbp), %rax	# npp, tmp150
	movq	(%rax), %rax	# *npp_15, D.21295
	addq	$8, %rax	#, tmp151
	movq	%rax, -16(%rbp)	# tmp151, npp
	.loc 1 5829 0
	jmp	.L1238	#
.L1234:
	.loc 1 5831 0 discriminator 1
	movq	-16(%rbp), %rax	# npp, tmp152
	movq	(%rax), %rax	# *npp_16, tmp153
	movq	%rax, -24(%rbp)	# tmp153, np
	movq	-56(%rbp), %rax	# head, tmp154
	movq	-24(%rbp), %rdx	# np, tmp155
	movq	%rdx, (%rax)	# tmp155, *head_18(D)
	.loc 1 5832 0 discriminator 1
	movq	-16(%rbp), %rax	# npp, tmp156
	movq	$0, (%rax)	#, *npp_16
	.loc 1 5833 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp157
	movq	-64(%rbp), %rdx	# parent, tmp158
	movq	%rdx, 16(%rax)	# tmp158, np_91->parent
	.loc 1 5834 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp159
	movq	-8(%rbp), %rdx	# left, tmp160
	movq	%rdx, (%rax)	# tmp160, np_91->left
	.loc 1 5837 0 discriminator 1
	movq	-24(%rbp), %rax	# np, D.21296
	movq	-24(%rbp), %rdx	# np, tmp161
	movq	%rdx, %rsi	# tmp161,
	movq	%rax, %rdi	# D.21296,
	call	balance_case_nodes	#
	.loc 1 5838 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp162
	leaq	8(%rax), %rdx	#, D.21296
	movq	-24(%rbp), %rax	# np, tmp163
	movq	%rax, %rsi	# tmp163,
	movq	%rdx, %rdi	# D.21296,
	call	balance_case_nodes	#
	jmp	.L1219	#
.L1225:
	.loc 1 5844 0
	movq	-56(%rbp), %rax	# head, tmp164
	movq	(%rax), %rax	# *head_18(D), tmp165
	movq	%rax, -24(%rbp)	# tmp165, np
	.loc 1 5845 0
	movq	-24(%rbp), %rax	# np, tmp166
	movq	-64(%rbp), %rdx	# parent, tmp167
	movq	%rdx, 16(%rax)	# tmp167, np_94->parent
	.loc 1 5846 0
	jmp	.L1239	#
.L1240:
	.loc 1 5847 0 discriminator 2
	movq	-24(%rbp), %rax	# np, tmp168
	movq	8(%rax), %rax	# np_3->right, D.21295
	movq	-24(%rbp), %rdx	# np, tmp169
	movq	%rdx, 16(%rax)	# tmp169, _96->parent
	.loc 1 5846 0 discriminator 2
	movq	-24(%rbp), %rax	# np, tmp170
	movq	8(%rax), %rax	# np_3->right, tmp171
	movq	%rax, -24(%rbp)	# tmp171, np
.L1239:
	.loc 1 5846 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# np, tmp172
	movq	8(%rax), %rax	# np_3->right, D.21295
	testq	%rax, %rax	# D.21295
	jne	.L1240	#,
.L1219:
.LBE135:
	.loc 1 5850 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	balance_case_nodes, .-balance_case_nodes
	.type	node_has_low_bound, @function
node_has_low_bound:
.LFB107:
	.loc 1 5866 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	movq	%rsi, -32(%rbp)	# index_type, index_type
	.loc 1 5873 0
	movq	-32(%rbp), %rax	# index_type, tmp74
	movq	104(%rax), %rdx	# index_type_3(D)->type.minval, D.21298
	movq	-24(%rbp), %rax	# node, tmp75
	movq	24(%rax), %rax	# node_5(D)->low, D.21298
	movq	%rdx, %rsi	# D.21298,
	movq	%rax, %rdi	# D.21298,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21297
	je	.L1243	#,
	.loc 1 5874 0
	movl	$1, %eax	#, D.21297
	jmp	.L1244	#
.L1243:
	.loc 1 5880 0
	movq	-24(%rbp), %rax	# node, tmp76
	movq	(%rax), %rax	# node_5(D)->left, D.21299
	testq	%rax, %rax	# D.21299
	je	.L1245	#,
	.loc 1 5881 0
	movl	$0, %eax	#, D.21297
	jmp	.L1244	#
.L1245:
	.loc 1 5883 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21298
	movq	-24(%rbp), %rax	# node, tmp77
	movq	24(%rax), %rdx	# node_5(D)->low, D.21298
	movq	-24(%rbp), %rax	# node, tmp78
	movq	24(%rax), %rax	# node_5(D)->low, D.21298
	movq	8(%rax), %rax	# _13->common.type, D.21298
	movq	%rax, %rsi	# D.21298,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21298,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp79, low_minus_one
	.loc 1 5889 0
	movq	-24(%rbp), %rax	# node, tmp80
	movq	24(%rax), %rdx	# node_5(D)->low, D.21298
	movq	-8(%rbp), %rax	# low_minus_one, tmp81
	movq	%rdx, %rsi	# D.21298,
	movq	%rax, %rdi	# tmp81,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21297
	jne	.L1246	#,
	.loc 1 5890 0
	movl	$0, %eax	#, D.21297
	jmp	.L1244	#
.L1246:
	.loc 1 5892 0
	movq	-24(%rbp), %rax	# node, tmp82
	movq	16(%rax), %rax	# node_5(D)->parent, tmp83
	movq	%rax, -16(%rbp)	# tmp83, pnode
	jmp	.L1247	#
.L1249:
	.loc 1 5893 0
	movq	-16(%rbp), %rax	# pnode, tmp84
	movq	32(%rax), %rdx	# pnode_1->high, D.21298
	movq	-8(%rbp), %rax	# low_minus_one, tmp85
	movq	%rdx, %rsi	# D.21298,
	movq	%rax, %rdi	# tmp85,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21297
	je	.L1248	#,
	.loc 1 5894 0
	movl	$1, %eax	#, D.21297
	jmp	.L1244	#
.L1248:
	.loc 1 5892 0
	movq	-16(%rbp), %rax	# pnode, tmp86
	movq	16(%rax), %rax	# pnode_1->parent, tmp87
	movq	%rax, -16(%rbp)	# tmp87, pnode
.L1247:
	.loc 1 5892 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pnode
	jne	.L1249	#,
	.loc 1 5896 0 is_stmt 1
	movl	$0, %eax	#, D.21297
.L1244:
	.loc 1 5897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	node_has_low_bound, .-node_has_low_bound
	.type	node_has_high_bound, @function
node_has_high_bound:
.LFB108:
	.loc 1 5913 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# node, node
	movq	%rsi, -32(%rbp)	# index_type, index_type
	.loc 1 5919 0
	movq	-32(%rbp), %rax	# index_type, tmp75
	movq	112(%rax), %rax	# index_type_3(D)->type.maxval, D.21301
	testq	%rax, %rax	# D.21301
	jne	.L1251	#,
	.loc 1 5920 0
	movl	$1, %eax	#, D.21300
	jmp	.L1252	#
.L1251:
	.loc 1 5925 0
	movq	-32(%rbp), %rax	# index_type, tmp76
	movq	112(%rax), %rdx	# index_type_3(D)->type.maxval, D.21301
	movq	-24(%rbp), %rax	# node, tmp77
	movq	32(%rax), %rax	# node_7(D)->high, D.21301
	movq	%rdx, %rsi	# D.21301,
	movq	%rax, %rdi	# D.21301,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21300
	je	.L1253	#,
	.loc 1 5926 0
	movl	$1, %eax	#, D.21300
	jmp	.L1252	#
.L1253:
	.loc 1 5932 0
	movq	-24(%rbp), %rax	# node, tmp78
	movq	8(%rax), %rax	# node_7(D)->right, D.21302
	testq	%rax, %rax	# D.21302
	je	.L1254	#,
	.loc 1 5933 0
	movl	$0, %eax	#, D.21300
	jmp	.L1252	#
.L1254:
	.loc 1 5935 0
	movq	global_trees+96(%rip), %rcx	# global_trees, D.21301
	movq	-24(%rbp), %rax	# node, tmp79
	movq	32(%rax), %rdx	# node_7(D)->high, D.21301
	movq	-24(%rbp), %rax	# node, tmp80
	movq	32(%rax), %rax	# node_7(D)->high, D.21301
	movq	8(%rax), %rax	# _15->common.type, D.21301
	movq	%rax, %rsi	# D.21301,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21301,
	call	fold	#
	movq	%rax, -8(%rbp)	# tmp81, high_plus_one
	.loc 1 5941 0
	movq	-24(%rbp), %rax	# node, tmp82
	movq	32(%rax), %rax	# node_7(D)->high, D.21301
	movq	-8(%rbp), %rdx	# high_plus_one, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.21301,
	call	tree_int_cst_lt	#
	testl	%eax, %eax	# D.21300
	jne	.L1255	#,
	.loc 1 5942 0
	movl	$0, %eax	#, D.21300
	jmp	.L1252	#
.L1255:
	.loc 1 5944 0
	movq	-24(%rbp), %rax	# node, tmp84
	movq	16(%rax), %rax	# node_7(D)->parent, tmp85
	movq	%rax, -16(%rbp)	# tmp85, pnode
	jmp	.L1256	#
.L1258:
	.loc 1 5945 0
	movq	-16(%rbp), %rax	# pnode, tmp86
	movq	24(%rax), %rdx	# pnode_1->low, D.21301
	movq	-8(%rbp), %rax	# high_plus_one, tmp87
	movq	%rdx, %rsi	# D.21301,
	movq	%rax, %rdi	# tmp87,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21300
	je	.L1257	#,
	.loc 1 5946 0
	movl	$1, %eax	#, D.21300
	jmp	.L1252	#
.L1257:
	.loc 1 5944 0
	movq	-16(%rbp), %rax	# pnode, tmp88
	movq	16(%rax), %rax	# pnode_1->parent, tmp89
	movq	%rax, -16(%rbp)	# tmp89, pnode
.L1256:
	.loc 1 5944 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, pnode
	jne	.L1258	#,
	.loc 1 5948 0 is_stmt 1
	movl	$0, %eax	#, D.21300
.L1252:
	.loc 1 5949 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	node_has_high_bound, .-node_has_high_bound
	.type	node_is_bounded, @function
node_is_bounded:
.LFB109:
	.loc 1 5959 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# node, node
	movq	%rsi, -16(%rbp)	# index_type, index_type
	.loc 1 5960 0
	movq	-16(%rbp), %rdx	# index_type, tmp64
	movq	-8(%rbp), %rax	# node, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	node_has_low_bound	#
	.loc 1 5961 0
	testl	%eax, %eax	# D.21303
	je	.L1260	#,
	.loc 1 5961 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# index_type, tmp66
	movq	-8(%rbp), %rax	# node, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	node_has_high_bound	#
	testl	%eax, %eax	# D.21303
	je	.L1260	#,
	.loc 1 5961 0 discriminator 3
	movl	$1, %eax	#, iftmp.768
	jmp	.L1261	#
.L1260:
	.loc 1 5961 0 discriminator 2
	movl	$0, %eax	#, iftmp.768
.L1261:
	.loc 1 5962 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	node_is_bounded, .-node_is_bounded
	.type	emit_jump_if_reachable, @function
emit_jump_if_reachable:
.LFB110:
	.loc 1 5969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# label, label
	.loc 1 5970 0
	call	get_last_insn	#
	movzwl	(%rax), %eax	# _1->code, D.21305
	cmpw	$35, %ax	#, D.21305
	je	.L1263	#,
	.loc 1 5971 0
	movq	-8(%rbp), %rax	# label, tmp61
	movq	%rax, %rdi	# tmp61,
	call	emit_jump	#
.L1263:
	.loc 1 5972 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	emit_jump_if_reachable, .-emit_jump_if_reachable
	.type	emit_case_nodes, @function
emit_case_nodes:
.LFB111:
	.loc 1 6006 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# index, index
	movq	%rsi, -128(%rbp)	# node, node
	movq	%rdx, -136(%rbp)	# default_label, default_label
	movq	%rcx, -144(%rbp)	# index_type, index_type
	.loc 1 6008 0
	movq	-144(%rbp), %rax	# index_type, tmp202
	movzbl	17(%rax), %eax	# *index_type_2(D), tmp205
	shrb	$5, %al	#, D.21306
	andl	$1, %eax	#, D.21306
	movzbl	%al, %eax	# D.21306, tmp206
	movl	%eax, -100(%rbp)	# tmp206, unsignedp
	.loc 1 6009 0
	movq	-120(%rbp), %rax	# index, tmp207
	movzbl	2(%rax), %eax	# index_5(D)->mode, D.21307
	movzbl	%al, %eax	# D.21307, tmp208
	movl	%eax, -96(%rbp)	# tmp208, mode
	.loc 1 6010 0
	movq	-144(%rbp), %rax	# index_type, tmp209
	movzbl	61(%rax), %eax	# *index_type_2(D), tmp212
	shrb	%al	# D.21308
	movzbl	%al, %eax	# D.21308, tmp213
	movl	%eax, -92(%rbp)	# tmp213, imode
	.loc 1 6014 0
	movq	-144(%rbp), %rdx	# index_type, tmp214
	movq	-128(%rbp), %rax	# node, tmp215
	movq	%rdx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	node_is_bounded	#
	testl	%eax, %eax	# D.21309
	je	.L1266	#,
	.loc 1 6015 0
	movq	-128(%rbp), %rax	# node, tmp216
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rdi	# D.21311,
	call	emit_jump	#
	jmp	.L1265	#
.L1266:
	.loc 1 6017 0
	movq	-128(%rbp), %rax	# node, tmp217
	movq	32(%rax), %rdx	# node_10(D)->high, D.21310
	movq	-128(%rbp), %rax	# node, tmp218
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movq	%rdx, %rsi	# D.21310,
	movq	%rax, %rdi	# D.21310,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21309
	je	.L1268	#,
	.loc 1 6022 0
	movq	-128(%rbp), %rax	# node, tmp219
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp220
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp221
	movl	-92(%rbp), %esi	# imode, tmp222
	movl	-96(%rbp), %eax	# mode, tmp223
	movl	%eax, %edi	# tmp223,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edx	# unsignedp, tmp224
	movq	-120(%rbp), %rax	# index, tmp225
	movl	%edx, %ecx	# tmp224,
	movq	%rbx, %rdx	# D.21311,
	movq	%rax, %rdi	# tmp225,
	call	do_jump_if_equal	#
	.loc 1 6029 0
	movq	-128(%rbp), %rax	# node, tmp226
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1269	#,
	.loc 1 6029 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp227
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1269	#,
	.loc 1 6037 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp228
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rdx	# index_type, tmp229
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# D.21312,
	call	node_is_bounded	#
	testl	%eax, %eax	# D.21309
	je	.L1270	#,
	.loc 1 6046 0
	movq	-128(%rbp), %rax	# node, tmp230
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	.loc 1 6039 0
	movq	40(%rax), %rax	# _26->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp231
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp232
	movl	-92(%rbp), %esi	# imode, tmp233
	movl	-96(%rbp), %eax	# mode, tmp234
	movl	%eax, %edi	# tmp234,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp235
	movl	-96(%rbp), %edx	# mode, tmp236
	movq	-120(%rbp), %rax	# index, tmp237
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp235,
	movl	%edx, %r8d	# tmp236,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp237,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6047 0
	movq	-128(%rbp), %rax	# node, tmp238
	movq	(%rax), %rsi	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp239
	movq	-136(%rbp), %rdx	# default_label, tmp240
	movq	-120(%rbp), %rax	# index, tmp241
	movq	%rax, %rdi	# tmp241,
	call	emit_case_nodes	#
	jmp	.L1271	#
.L1270:
	.loc 1 6050 0
	movq	-128(%rbp), %rax	# node, tmp242
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rdx	# index_type, tmp243
	movq	%rdx, %rsi	# tmp243,
	movq	%rax, %rdi	# D.21312,
	call	node_is_bounded	#
	testl	%eax, %eax	# D.21309
	je	.L1272	#,
	.loc 1 6059 0
	movq	-128(%rbp), %rax	# node, tmp244
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	.loc 1 6052 0
	movq	40(%rax), %rax	# _36->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp245
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp246
	movl	-92(%rbp), %esi	# imode, tmp247
	movl	-96(%rbp), %eax	# mode, tmp248
	movl	%eax, %edi	# tmp248,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp249
	movl	-96(%rbp), %edx	# mode, tmp250
	movq	-120(%rbp), %rax	# index, tmp251
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp249,
	movl	%edx, %r8d	# tmp250,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp251,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6060 0
	movq	-128(%rbp), %rax	# node, tmp252
	movq	8(%rax), %rsi	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp253
	movq	-136(%rbp), %rdx	# default_label, tmp254
	movq	-120(%rbp), %rax	# index, tmp255
	movq	%rax, %rdi	# tmp255,
	call	emit_case_nodes	#
	jmp	.L1271	#
.L1272:
.LBB137:
	.loc 1 6068 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	build_decl	#
	movq	%rax, -72(%rbp)	# tmp256, test_label
	.loc 1 6071 0
	movq	-72(%rbp), %rax	# test_label, tmp257
	movq	%rax, %rdi	# tmp257,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp258
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp259
	movl	-92(%rbp), %esi	# imode, tmp260
	movl	-96(%rbp), %eax	# mode, tmp261
	movl	%eax, %edi	# tmp261,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp262
	movl	-96(%rbp), %edx	# mode, tmp263
	movq	-120(%rbp), %rax	# index, tmp264
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp262,
	movl	%edx, %r8d	# tmp263,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp264,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6082 0
	movq	-128(%rbp), %rax	# node, tmp265
	movq	(%rax), %rsi	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp266
	movq	-136(%rbp), %rdx	# default_label, tmp267
	movq	-120(%rbp), %rax	# index, tmp268
	movq	%rax, %rdi	# tmp268,
	call	emit_case_nodes	#
	.loc 1 6085 0
	movq	-136(%rbp), %rax	# default_label, tmp269
	movq	%rax, %rdi	# tmp269,
	call	emit_jump_if_reachable	#
	.loc 1 6088 0
	movq	-72(%rbp), %rax	# test_label, tmp270
	movq	%rax, %rdi	# tmp270,
	call	expand_label	#
	.loc 1 6089 0
	movq	-128(%rbp), %rax	# node, tmp271
	movq	8(%rax), %rsi	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp272
	movq	-136(%rbp), %rdx	# default_label, tmp273
	movq	-120(%rbp), %rax	# index, tmp274
	movq	%rax, %rdi	# tmp274,
	call	emit_case_nodes	#
.LBE137:
	.loc 1 6037 0
	jmp	.L1273	#
.L1271:
	jmp	.L1273	#
.L1269:
	.loc 1 6093 0
	movq	-128(%rbp), %rax	# node, tmp275
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1274	#,
	.loc 1 6093 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp276
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1274	#,
	.loc 1 6101 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp277
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	8(%rax), %rax	# _52->right, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1275	#,
	.loc 1 6101 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp278
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	(%rax), %rax	# _54->left, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1275	#,
	.loc 1 6102 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp279
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	32(%rax), %rdx	# _56->high, D.21310
	movq	-128(%rbp), %rax	# node, tmp280
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	24(%rax), %rax	# _58->low, D.21310
	movq	%rdx, %rsi	# D.21310,
	movq	%rax, %rdi	# D.21310,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21309
	jne	.L1276	#,
.L1275:
	.loc 1 6104 0
	movq	-144(%rbp), %rdx	# index_type, tmp281
	movq	-128(%rbp), %rax	# node, tmp282
	movq	%rdx, %rsi	# tmp281,
	movq	%rax, %rdi	# tmp282,
	call	node_has_low_bound	#
	testl	%eax, %eax	# D.21309
	jne	.L1277	#,
	.loc 1 6106 0
	movq	-128(%rbp), %rax	# node, tmp283
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp284
	movl	-92(%rbp), %esi	# imode, tmp285
	movl	-96(%rbp), %eax	# mode, tmp286
	movl	%eax, %edi	# tmp286,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp287
	movl	-96(%rbp), %ecx	# mode, tmp288
	movq	-120(%rbp), %rax	# index, tmp289
	movq	-136(%rbp), %rdx	# default_label, tmp290
	movq	%rdx, (%rsp)	# tmp290,
	movl	%edi, %r9d	# tmp287,
	movl	%ecx, %r8d	# tmp288,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp289,
	call	emit_cmp_and_jump_insns	#
.L1277:
	.loc 1 6116 0
	movq	-128(%rbp), %rax	# node, tmp291
	movq	8(%rax), %rsi	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp292
	movq	-136(%rbp), %rdx	# default_label, tmp293
	movq	-120(%rbp), %rax	# index, tmp294
	movq	%rax, %rdi	# tmp294,
	call	emit_case_nodes	#
	.loc 1 6101 0
	jmp	.L1273	#
.L1276:
	.loc 1 6128 0
	movq	-128(%rbp), %rax	# node, tmp295
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	.loc 1 6122 0
	movq	40(%rax), %rax	# _61->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	.loc 1 6125 0
	movq	-128(%rbp), %rax	# node, tmp296
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	.loc 1 6122 0
	movq	24(%rax), %rax	# _64->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp297
	movl	-92(%rbp), %esi	# imode, tmp298
	movl	-96(%rbp), %eax	# mode, tmp299
	movl	%eax, %edi	# tmp299,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edx	# unsignedp, tmp300
	movq	-120(%rbp), %rax	# index, tmp301
	movl	%edx, %ecx	# tmp300,
	movq	%rbx, %rdx	# D.21311,
	movq	%rax, %rdi	# tmp301,
	call	do_jump_if_equal	#
	.loc 1 6101 0
	jmp	.L1273	#
.L1274:
	.loc 1 6131 0
	movq	-128(%rbp), %rax	# node, tmp302
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1265	#,
	.loc 1 6131 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp303
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1265	#,
	.loc 1 6134 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp304
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	movq	(%rax), %rax	# _75->left, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1279	#,
	.loc 1 6134 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp305
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	movq	8(%rax), %rax	# _77->right, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1279	#,
	.loc 1 6135 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp306
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	movq	32(%rax), %rdx	# _79->high, D.21310
	movq	-128(%rbp), %rax	# node, tmp307
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	movq	24(%rax), %rax	# _81->low, D.21310
	movq	%rdx, %rsi	# D.21310,
	movq	%rax, %rdi	# D.21310,
	call	tree_int_cst_equal	#
	testl	%eax, %eax	# D.21309
	jne	.L1280	#,
.L1279:
	.loc 1 6137 0
	movq	-144(%rbp), %rdx	# index_type, tmp308
	movq	-128(%rbp), %rax	# node, tmp309
	movq	%rdx, %rsi	# tmp308,
	movq	%rax, %rdi	# tmp309,
	call	node_has_high_bound	#
	testl	%eax, %eax	# D.21309
	jne	.L1281	#,
	.loc 1 6139 0
	movq	-128(%rbp), %rax	# node, tmp310
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp311
	movl	-92(%rbp), %esi	# imode, tmp312
	movl	-96(%rbp), %eax	# mode, tmp313
	movl	%eax, %edi	# tmp313,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp314
	movl	-96(%rbp), %ecx	# mode, tmp315
	movq	-120(%rbp), %rax	# index, tmp316
	movq	-136(%rbp), %rdx	# default_label, tmp317
	movq	%rdx, (%rsp)	# tmp317,
	movl	%edi, %r9d	# tmp314,
	movl	%ecx, %r8d	# tmp315,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp316,
	call	emit_cmp_and_jump_insns	#
.L1281:
	.loc 1 6149 0
	movq	-128(%rbp), %rax	# node, tmp318
	movq	(%rax), %rsi	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp319
	movq	-136(%rbp), %rdx	# default_label, tmp320
	movq	-120(%rbp), %rax	# index, tmp321
	movq	%rax, %rdi	# tmp321,
	call	emit_case_nodes	#
	jmp	.L1273	#
.L1280:
	.loc 1 6161 0
	movq	-128(%rbp), %rax	# node, tmp322
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	.loc 1 6155 0
	movq	40(%rax), %rax	# _84->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	.loc 1 6158 0
	movq	-128(%rbp), %rax	# node, tmp323
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	.loc 1 6155 0
	movq	24(%rax), %rax	# _87->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp324
	movl	-92(%rbp), %esi	# imode, tmp325
	movl	-96(%rbp), %eax	# mode, tmp326
	movl	%eax, %edi	# tmp326,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edx	# unsignedp, tmp327
	movq	-120(%rbp), %rax	# index, tmp328
	movl	%edx, %ecx	# tmp327,
	movq	%rbx, %rdx	# D.21311,
	movq	%rax, %rdi	# tmp328,
	call	do_jump_if_equal	#
	jmp	.L1265	#
.L1273:
	jmp	.L1265	#
.L1268:
	.loc 1 6170 0
	movq	-128(%rbp), %rax	# node, tmp329
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1282	#,
	.loc 1 6170 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp330
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1282	#,
.LBB138:
	.loc 1 6177 0 is_stmt 1
	movq	$0, -80(%rbp)	#, test_label
	.loc 1 6179 0
	movq	-128(%rbp), %rax	# node, tmp331
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rdx	# index_type, tmp332
	movq	%rdx, %rsi	# tmp332,
	movq	%rax, %rdi	# D.21312,
	call	node_is_bounded	#
	testl	%eax, %eax	# D.21309
	je	.L1283	#,
	.loc 1 6189 0
	movq	-128(%rbp), %rax	# node, tmp333
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	.loc 1 6182 0
	movq	40(%rax), %rax	# _101->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp334
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp335
	movl	-92(%rbp), %esi	# imode, tmp336
	movl	-96(%rbp), %eax	# mode, tmp337
	movl	%eax, %edi	# tmp337,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp338
	movl	-96(%rbp), %edx	# mode, tmp339
	movq	-120(%rbp), %rax	# index, tmp340
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp338,
	movl	%edx, %r8d	# tmp339,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp340,
	call	emit_cmp_and_jump_insns	#
	jmp	.L1284	#
.L1283:
	.loc 1 6195 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$31, %edi	#,
	call	build_decl	#
	movq	%rax, -80(%rbp)	# tmp341, test_label
	.loc 1 6196 0
	movq	-80(%rbp), %rax	# test_label, tmp342
	movq	%rax, %rdi	# tmp342,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp343
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp344
	movl	-92(%rbp), %esi	# imode, tmp345
	movl	-96(%rbp), %eax	# mode, tmp346
	movl	%eax, %edi	# tmp346,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp347
	movl	-96(%rbp), %edx	# mode, tmp348
	movq	-120(%rbp), %rax	# index, tmp349
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp347,
	movl	%edx, %r8d	# tmp348,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp349,
	call	emit_cmp_and_jump_insns	#
.L1284:
	.loc 1 6208 0
	movq	-128(%rbp), %rax	# node, tmp350
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp351
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp352
	movl	-92(%rbp), %esi	# imode, tmp353
	movl	-96(%rbp), %eax	# mode, tmp354
	movl	%eax, %edi	# tmp354,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp355
	movl	-96(%rbp), %edx	# mode, tmp356
	movq	-120(%rbp), %rax	# index, tmp357
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp355,
	movl	%edx, %r8d	# tmp356,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp357,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6218 0
	movq	-128(%rbp), %rax	# node, tmp358
	movq	(%rax), %rsi	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp359
	movq	-136(%rbp), %rdx	# default_label, tmp360
	movq	-120(%rbp), %rax	# index, tmp361
	movq	%rax, %rdi	# tmp361,
	call	emit_case_nodes	#
	.loc 1 6222 0
	cmpq	$0, -80(%rbp)	#, test_label
	je	.L1285	#,
	.loc 1 6226 0
	movq	-136(%rbp), %rax	# default_label, tmp362
	movq	%rax, %rdi	# tmp362,
	call	emit_jump_if_reachable	#
	.loc 1 6228 0
	movq	-80(%rbp), %rax	# test_label, tmp363
	movq	%rax, %rdi	# tmp363,
	call	expand_label	#
	.loc 1 6229 0
	movq	-128(%rbp), %rax	# node, tmp364
	movq	8(%rax), %rsi	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp365
	movq	-136(%rbp), %rdx	# default_label, tmp366
	movq	-120(%rbp), %rax	# index, tmp367
	movq	%rax, %rdi	# tmp367,
	call	emit_case_nodes	#
.LBE138:
	.loc 1 6171 0
	jmp	.L1265	#
.L1285:
	jmp	.L1265	#
.L1282:
	.loc 1 6233 0
	movq	-128(%rbp), %rax	# node, tmp368
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1286	#,
	.loc 1 6233 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp369
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1286	#,
	.loc 1 6237 0 is_stmt 1
	movq	-144(%rbp), %rdx	# index_type, tmp370
	movq	-128(%rbp), %rax	# node, tmp371
	movq	%rdx, %rsi	# tmp370,
	movq	%rax, %rdi	# tmp371,
	call	node_has_low_bound	#
	testl	%eax, %eax	# D.21309
	jne	.L1287	#,
	.loc 1 6239 0
	movq	-128(%rbp), %rax	# node, tmp372
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp373
	movl	-92(%rbp), %esi	# imode, tmp374
	movl	-96(%rbp), %eax	# mode, tmp375
	movl	%eax, %edi	# tmp375,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp376
	movl	-96(%rbp), %ecx	# mode, tmp377
	movq	-120(%rbp), %rax	# index, tmp378
	movq	-136(%rbp), %rdx	# default_label, tmp379
	movq	%rdx, (%rsp)	# tmp379,
	movl	%edi, %r9d	# tmp376,
	movl	%ecx, %r8d	# tmp377,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp378,
	call	emit_cmp_and_jump_insns	#
.L1287:
	.loc 1 6251 0
	movq	-128(%rbp), %rax	# node, tmp380
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp381
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp382
	movl	-92(%rbp), %esi	# imode, tmp383
	movl	-96(%rbp), %eax	# mode, tmp384
	movl	%eax, %edi	# tmp384,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp385
	movl	-96(%rbp), %edx	# mode, tmp386
	movq	-120(%rbp), %rax	# index, tmp387
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp385,
	movl	%edx, %r8d	# tmp386,
	movl	$0, %ecx	#,
	movl	$106, %edx	#,
	movq	%rax, %rdi	# tmp387,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6260 0
	movq	-128(%rbp), %rax	# node, tmp388
	movq	8(%rax), %rsi	# node_10(D)->right, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp389
	movq	-136(%rbp), %rdx	# default_label, tmp390
	movq	-120(%rbp), %rax	# index, tmp391
	movq	%rax, %rdi	# tmp391,
	call	emit_case_nodes	#
	jmp	.L1265	#
.L1286:
	.loc 1 6263 0
	movq	-128(%rbp), %rax	# node, tmp392
	movq	8(%rax), %rax	# node_10(D)->right, D.21312
	testq	%rax, %rax	# D.21312
	jne	.L1288	#,
	.loc 1 6263 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# node, tmp393
	movq	(%rax), %rax	# node_10(D)->left, D.21312
	testq	%rax, %rax	# D.21312
	je	.L1288	#,
	.loc 1 6267 0 is_stmt 1
	movq	-144(%rbp), %rdx	# index_type, tmp394
	movq	-128(%rbp), %rax	# node, tmp395
	movq	%rdx, %rsi	# tmp394,
	movq	%rax, %rdi	# tmp395,
	call	node_has_high_bound	#
	testl	%eax, %eax	# D.21309
	jne	.L1289	#,
	.loc 1 6269 0
	movq	-128(%rbp), %rax	# node, tmp396
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp397
	movl	-92(%rbp), %esi	# imode, tmp398
	movl	-96(%rbp), %eax	# mode, tmp399
	movl	%eax, %edi	# tmp399,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp400
	movl	-96(%rbp), %ecx	# mode, tmp401
	movq	-120(%rbp), %rax	# index, tmp402
	movq	-136(%rbp), %rdx	# default_label, tmp403
	movq	%rdx, (%rsp)	# tmp403,
	movl	%edi, %r9d	# tmp400,
	movl	%ecx, %r8d	# tmp401,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp402,
	call	emit_cmp_and_jump_insns	#
.L1289:
	.loc 1 6281 0
	movq	-128(%rbp), %rax	# node, tmp404
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rbx	#, D.21311
	movq	-128(%rbp), %rax	# node, tmp405
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp406
	movl	-92(%rbp), %esi	# imode, tmp407
	movl	-96(%rbp), %eax	# mode, tmp408
	movl	%eax, %edi	# tmp408,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp409
	movl	-96(%rbp), %edx	# mode, tmp410
	movq	-120(%rbp), %rax	# index, tmp411
	movq	%rbx, (%rsp)	# D.21311,
	movl	%ecx, %r9d	# tmp409,
	movl	%edx, %r8d	# tmp410,
	movl	$0, %ecx	#,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp411,
	call	emit_cmp_and_jump_insns	#
	.loc 1 6290 0
	movq	-128(%rbp), %rax	# node, tmp412
	movq	(%rax), %rsi	# node_10(D)->left, D.21312
	movq	-144(%rbp), %rcx	# index_type, tmp413
	movq	-136(%rbp), %rdx	# default_label, tmp414
	movq	-120(%rbp), %rax	# index, tmp415
	movq	%rax, %rdi	# tmp415,
	call	emit_case_nodes	#
	jmp	.L1265	#
.L1288:
.LBB139:
	.loc 1 6298 0
	movq	-144(%rbp), %rdx	# index_type, tmp416
	movq	-128(%rbp), %rax	# node, tmp417
	movq	%rdx, %rsi	# tmp416,
	movq	%rax, %rdi	# tmp417,
	call	node_has_high_bound	#
	movl	%eax, -88(%rbp)	# tmp418, high_bound
	.loc 1 6299 0
	movq	-144(%rbp), %rdx	# index_type, tmp419
	movq	-128(%rbp), %rax	# node, tmp420
	movq	%rdx, %rsi	# tmp419,
	movq	%rax, %rdi	# tmp420,
	call	node_has_low_bound	#
	movl	%eax, -84(%rbp)	# tmp421, low_bound
	.loc 1 6301 0
	cmpl	$0, -88(%rbp)	#, high_bound
	jne	.L1290	#,
	.loc 1 6301 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, low_bound
	je	.L1290	#,
	.loc 1 6303 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp422
	movq	32(%rax), %rax	# node_10(D)->high, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp423
	movl	-92(%rbp), %esi	# imode, tmp424
	movl	-96(%rbp), %eax	# mode, tmp425
	movl	%eax, %edi	# tmp425,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp426
	movl	-96(%rbp), %ecx	# mode, tmp427
	movq	-120(%rbp), %rax	# index, tmp428
	movq	-136(%rbp), %rdx	# default_label, tmp429
	movq	%rdx, (%rsp)	# tmp429,
	movl	%edi, %r9d	# tmp426,
	movl	%ecx, %r8d	# tmp427,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp428,
	call	emit_cmp_and_jump_insns	#
	jmp	.L1291	#
.L1290:
	.loc 1 6313 0
	cmpl	$0, -84(%rbp)	#, low_bound
	jne	.L1292	#,
	.loc 1 6313 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, high_bound
	je	.L1292	#,
	.loc 1 6315 0 is_stmt 1
	movq	-128(%rbp), %rax	# node, tmp430
	movq	24(%rax), %rax	# node_10(D)->low, D.21310
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, %rdx	#, D.21311
	movl	-100(%rbp), %ecx	# unsignedp, tmp431
	movl	-92(%rbp), %esi	# imode, tmp432
	movl	-96(%rbp), %eax	# mode, tmp433
	movl	%eax, %edi	# tmp433,
	call	convert_modes	#
	movq	%rax, %rsi	#, D.21311
	movl	-100(%rbp), %edi	# unsignedp, tmp434
	movl	-96(%rbp), %ecx	# mode, tmp435
	movq	-120(%rbp), %rax	# index, tmp436
	movq	-136(%rbp), %rdx	# default_label, tmp437
	movq	%rdx, (%rsp)	# tmp437,
	movl	%edi, %r9d	# tmp434,
	movl	%ecx, %r8d	# tmp435,
	movl	$0, %ecx	#,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp436,
	call	emit_cmp_and_jump_insns	#
	jmp	.L1291	#
.L1292:
	.loc 1 6324 0
	cmpl	$0, -84(%rbp)	#, low_bound
	jne	.L1291	#,
	.loc 1 6324 0 is_stmt 0 discriminator 1
	cmpl	$0, -88(%rbp)	#, high_bound
	jne	.L1291	#,
.LBB140:
	.loc 1 6327 0 is_stmt 1
	movl	-100(%rbp), %edx	# unsignedp, tmp438
	movl	-96(%rbp), %eax	# mode, tmp439
	movl	%edx, %esi	# tmp438,
	movl	%eax, %edi	# tmp439,
	call	type_for_mode	#
	movq	%rax, -64(%rbp)	# tmp440, type
	.loc 1 6328 0
	movq	-128(%rbp), %rax	# node, tmp441
	movq	24(%rax), %rdx	# node_10(D)->low, D.21310
	movq	-64(%rbp), %rax	# type, tmp442
	movq	%rax, %rsi	# tmp442,
	movl	$114, %edi	#,
	call	build1	#
	movq	%rax, -56(%rbp)	# tmp443, low
	.loc 1 6329 0
	movq	-128(%rbp), %rax	# node, tmp444
	movq	32(%rax), %rdx	# node_10(D)->high, D.21310
	movq	-64(%rbp), %rax	# type, tmp445
	movq	%rax, %rsi	# tmp445,
	movl	$114, %edi	#,
	call	build1	#
	movq	%rax, -48(%rbp)	# tmp446, high
	.loc 1 6334 0
	movl	-96(%rbp), %edx	# mode, tmp447
	movq	-56(%rbp), %rax	# low, tmp448
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp448,
	call	expand_expr	#
	movq	%rax, -40(%rbp)	# tmp449, low_rtx
	.loc 1 6335 0
	movl	-100(%rbp), %esi	# unsignedp, tmp450
	movq	-40(%rbp), %rcx	# low_rtx, tmp451
	movq	-120(%rbp), %rdx	# index, tmp452
	movl	-96(%rbp), %eax	# mode, tmp453
	movl	$2, (%rsp)	#,
	movl	%esi, %r9d	# tmp450,
	movl	$0, %r8d	#,
	movl	$76, %esi	#,
	movl	%eax, %edi	# tmp453,
	call	expand_simple_binop	#
	movq	%rax, -32(%rbp)	# tmp454, new_index
	.loc 1 6338 0
	movq	-56(%rbp), %rcx	# low, tmp455
	movq	-48(%rbp), %rdx	# high, tmp456
	movq	-64(%rbp), %rax	# type, tmp457
	movq	%rax, %rsi	# tmp457,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.21310,
	call	fold	#
	movl	-96(%rbp), %edx	# mode, tmp458
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.21310,
	call	expand_expr	#
	movq	%rax, -24(%rbp)	# tmp459, new_bound
	.loc 1 6342 0
	movl	-96(%rbp), %ecx	# mode, tmp460
	movq	-24(%rbp), %rsi	# new_bound, tmp461
	movq	-32(%rbp), %rax	# new_index, tmp462
	movq	-136(%rbp), %rdx	# default_label, tmp463
	movq	%rdx, (%rsp)	# tmp463,
	movl	$1, %r9d	#,
	movl	%ecx, %r8d	# tmp460,
	movl	$0, %ecx	#,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp462,
	call	emit_cmp_and_jump_insns	#
.L1291:
.LBE140:
	.loc 1 6346 0
	movq	-128(%rbp), %rax	# node, tmp464
	movq	40(%rax), %rax	# node_10(D)->code_label, D.21310
	movq	%rax, %rdi	# D.21310,
	call	label_rtx	#
	movq	%rax, %rdi	# D.21311,
	call	emit_jump	#
.L1265:
.LBE139:
	.loc 1 6349 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	emit_case_nodes, .-emit_case_nodes
	.section	.rodata
	.type	__FUNCTION__.13917, @object
	.size	__FUNCTION__.13917, 10
__FUNCTION__.13917:
	.string	"label_rtx"
	.align 16
	.type	__FUNCTION__.13957, @object
	.size	__FUNCTION__.13957, 21
__FUNCTION__.13957:
	.string	"expand_goto_internal"
	.align 16
	.type	__FUNCTION__.14197, @object
	.size	__FUNCTION__.14197, 20
__FUNCTION__.14197:
	.string	"expand_asm_operands"
	.align 16
	.type	__FUNCTION__.14316, @object
	.size	__FUNCTION__.14316, 23
__FUNCTION__.14316:
	.string	"resolve_operand_name_1"
	.align 16
	.type	__FUNCTION__.14431, @object
	.size	__FUNCTION__.14431, 16
__FUNCTION__.14431:
	.string	"expand_end_loop"
	.type	__FUNCTION__.14525, @object
	.size	__FUNCTION__.14525, 14
__FUNCTION__.14525:
	.string	"expand_return"
	.align 32
	.type	__FUNCTION__.14581, @object
	.size	__FUNCTION__.14581, 32
__FUNCTION__.14581:
	.string	"expand_start_bindings_and_block"
	.align 32
	.type	elim_regs.14606, @object
	.size	elim_regs.14606, 32
elim_regs.14606:
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
	.type	__FUNCTION__.14675, @object
	.size	__FUNCTION__.14675, 12
__FUNCTION__.14675:
	.string	"expand_decl"
	.align 16
	.type	__FUNCTION__.14717, @object
	.size	__FUNCTION__.14717, 23
__FUNCTION__.14717:
	.string	"expand_anon_union_decl"
	.align 16
	.type	__FUNCTION__.14927, @object
	.size	__FUNCTION__.14927, 21
__FUNCTION__.14927:
	.string	"expand_end_case_type"
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
	.file 17 "./safe-ctype.h"
	.file 18 "flags.h"
	.file 19 "hard-reg-set.h"
	.file 20 "ggc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7235
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1501
	.byte	0x1
	.long	.LASF1502
	.long	.LASF1503
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
	.long	0xc99
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
	.long	0xca9
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
	.long	.LASF307
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x14cc
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x168c
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x16ef
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x17a8
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x1724
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x1766
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1926
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x21df
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x1ab5
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x194d
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x1982
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x19c5
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x19fa
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
	.long	.LASF92
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
	.uleb128 0x3
	.byte	0x8
	.long	0x354
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF71
	.uleb128 0x15
	.long	0x354
	.long	0x36b
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x37b
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x38b
	.uleb128 0x16
	.long	0x1ea
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x391
	.uleb128 0xc
	.long	0x354
	.uleb128 0x17
	.byte	0x4
	.byte	0x11
	.byte	0x2c
	.long	0x417
	.uleb128 0x10
	.long	.LASF72
	.sleb128 1
	.uleb128 0x10
	.long	.LASF73
	.sleb128 2
	.uleb128 0x10
	.long	.LASF74
	.sleb128 4
	.uleb128 0x10
	.long	.LASF75
	.sleb128 8
	.uleb128 0x10
	.long	.LASF76
	.sleb128 16
	.uleb128 0x10
	.long	.LASF77
	.sleb128 32
	.uleb128 0x10
	.long	.LASF78
	.sleb128 64
	.uleb128 0x10
	.long	.LASF79
	.sleb128 128
	.uleb128 0x10
	.long	.LASF80
	.sleb128 256
	.uleb128 0x10
	.long	.LASF81
	.sleb128 512
	.uleb128 0x10
	.long	.LASF82
	.sleb128 1024
	.uleb128 0x10
	.long	.LASF83
	.sleb128 2048
	.uleb128 0x10
	.long	.LASF84
	.sleb128 136
	.uleb128 0x10
	.long	.LASF85
	.sleb128 140
	.uleb128 0x10
	.long	.LASF86
	.sleb128 516
	.uleb128 0x10
	.long	.LASF87
	.sleb128 172
	.uleb128 0x10
	.long	.LASF88
	.sleb128 3072
	.uleb128 0x10
	.long	.LASF89
	.sleb128 3088
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF90
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF91
	.uleb128 0x15
	.long	0x354
	.long	0x435
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3
	.uleb128 0x3
	.byte	0x8
	.long	0x441
	.uleb128 0x18
	.uleb128 0x19
	.long	.LASF93
	.byte	0x4
	.byte	0x7
	.byte	0x1d
	.long	0x5b7
	.uleb128 0x10
	.long	.LASF94
	.sleb128 0
	.uleb128 0x10
	.long	.LASF95
	.sleb128 1
	.uleb128 0x10
	.long	.LASF96
	.sleb128 2
	.uleb128 0x10
	.long	.LASF97
	.sleb128 3
	.uleb128 0x10
	.long	.LASF98
	.sleb128 4
	.uleb128 0x10
	.long	.LASF99
	.sleb128 5
	.uleb128 0x10
	.long	.LASF100
	.sleb128 6
	.uleb128 0x10
	.long	.LASF101
	.sleb128 7
	.uleb128 0x10
	.long	.LASF102
	.sleb128 8
	.uleb128 0x10
	.long	.LASF103
	.sleb128 9
	.uleb128 0x10
	.long	.LASF104
	.sleb128 10
	.uleb128 0x10
	.long	.LASF105
	.sleb128 11
	.uleb128 0x10
	.long	.LASF106
	.sleb128 12
	.uleb128 0x10
	.long	.LASF107
	.sleb128 13
	.uleb128 0x10
	.long	.LASF108
	.sleb128 14
	.uleb128 0x10
	.long	.LASF109
	.sleb128 15
	.uleb128 0x10
	.long	.LASF110
	.sleb128 16
	.uleb128 0x10
	.long	.LASF111
	.sleb128 17
	.uleb128 0x10
	.long	.LASF112
	.sleb128 18
	.uleb128 0x10
	.long	.LASF113
	.sleb128 19
	.uleb128 0x10
	.long	.LASF114
	.sleb128 20
	.uleb128 0x10
	.long	.LASF115
	.sleb128 21
	.uleb128 0x10
	.long	.LASF116
	.sleb128 22
	.uleb128 0x10
	.long	.LASF117
	.sleb128 23
	.uleb128 0x10
	.long	.LASF118
	.sleb128 24
	.uleb128 0x10
	.long	.LASF119
	.sleb128 25
	.uleb128 0x10
	.long	.LASF120
	.sleb128 26
	.uleb128 0x10
	.long	.LASF121
	.sleb128 27
	.uleb128 0x10
	.long	.LASF122
	.sleb128 28
	.uleb128 0x10
	.long	.LASF123
	.sleb128 29
	.uleb128 0x10
	.long	.LASF124
	.sleb128 30
	.uleb128 0x10
	.long	.LASF125
	.sleb128 31
	.uleb128 0x10
	.long	.LASF126
	.sleb128 32
	.uleb128 0x10
	.long	.LASF127
	.sleb128 33
	.uleb128 0x10
	.long	.LASF128
	.sleb128 34
	.uleb128 0x10
	.long	.LASF129
	.sleb128 35
	.uleb128 0x10
	.long	.LASF130
	.sleb128 36
	.uleb128 0x10
	.long	.LASF131
	.sleb128 37
	.uleb128 0x10
	.long	.LASF132
	.sleb128 38
	.uleb128 0x10
	.long	.LASF133
	.sleb128 39
	.uleb128 0x10
	.long	.LASF134
	.sleb128 40
	.uleb128 0x10
	.long	.LASF135
	.sleb128 41
	.uleb128 0x10
	.long	.LASF136
	.sleb128 42
	.uleb128 0x10
	.long	.LASF137
	.sleb128 43
	.uleb128 0x10
	.long	.LASF138
	.sleb128 44
	.uleb128 0x10
	.long	.LASF139
	.sleb128 45
	.uleb128 0x10
	.long	.LASF140
	.sleb128 46
	.uleb128 0x10
	.long	.LASF141
	.sleb128 47
	.uleb128 0x10
	.long	.LASF142
	.sleb128 48
	.uleb128 0x10
	.long	.LASF143
	.sleb128 49
	.uleb128 0x10
	.long	.LASF144
	.sleb128 50
	.uleb128 0x10
	.long	.LASF145
	.sleb128 51
	.uleb128 0x10
	.long	.LASF146
	.sleb128 52
	.uleb128 0x10
	.long	.LASF147
	.sleb128 53
	.uleb128 0x10
	.long	.LASF148
	.sleb128 54
	.uleb128 0x10
	.long	.LASF149
	.sleb128 55
	.uleb128 0x10
	.long	.LASF150
	.sleb128 56
	.uleb128 0x10
	.long	.LASF151
	.sleb128 57
	.uleb128 0x10
	.long	.LASF152
	.sleb128 58
	.uleb128 0x10
	.long	.LASF153
	.sleb128 59
	.byte	0
	.uleb128 0x19
	.long	.LASF154
	.byte	0x4
	.byte	0x7
	.byte	0x2c
	.long	0x600
	.uleb128 0x10
	.long	.LASF155
	.sleb128 0
	.uleb128 0x10
	.long	.LASF156
	.sleb128 1
	.uleb128 0x10
	.long	.LASF157
	.sleb128 2
	.uleb128 0x10
	.long	.LASF158
	.sleb128 3
	.uleb128 0x10
	.long	.LASF159
	.sleb128 4
	.uleb128 0x10
	.long	.LASF160
	.sleb128 5
	.uleb128 0x10
	.long	.LASF161
	.sleb128 6
	.uleb128 0x10
	.long	.LASF162
	.sleb128 7
	.uleb128 0x10
	.long	.LASF163
	.sleb128 8
	.uleb128 0x10
	.long	.LASF164
	.sleb128 9
	.byte	0
	.uleb128 0x19
	.long	.LASF165
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x9fc
	.uleb128 0x10
	.long	.LASF166
	.sleb128 0
	.uleb128 0x1a
	.string	"NIL"
	.sleb128 1
	.uleb128 0x10
	.long	.LASF167
	.sleb128 2
	.uleb128 0x10
	.long	.LASF168
	.sleb128 3
	.uleb128 0x10
	.long	.LASF169
	.sleb128 4
	.uleb128 0x10
	.long	.LASF170
	.sleb128 5
	.uleb128 0x10
	.long	.LASF171
	.sleb128 6
	.uleb128 0x10
	.long	.LASF172
	.sleb128 7
	.uleb128 0x10
	.long	.LASF173
	.sleb128 8
	.uleb128 0x10
	.long	.LASF174
	.sleb128 9
	.uleb128 0x10
	.long	.LASF175
	.sleb128 10
	.uleb128 0x10
	.long	.LASF176
	.sleb128 11
	.uleb128 0x10
	.long	.LASF177
	.sleb128 12
	.uleb128 0x10
	.long	.LASF178
	.sleb128 13
	.uleb128 0x10
	.long	.LASF179
	.sleb128 14
	.uleb128 0x10
	.long	.LASF180
	.sleb128 15
	.uleb128 0x10
	.long	.LASF181
	.sleb128 16
	.uleb128 0x10
	.long	.LASF182
	.sleb128 17
	.uleb128 0x10
	.long	.LASF183
	.sleb128 18
	.uleb128 0x10
	.long	.LASF184
	.sleb128 19
	.uleb128 0x10
	.long	.LASF185
	.sleb128 20
	.uleb128 0x10
	.long	.LASF186
	.sleb128 21
	.uleb128 0x10
	.long	.LASF187
	.sleb128 22
	.uleb128 0x10
	.long	.LASF188
	.sleb128 23
	.uleb128 0x10
	.long	.LASF189
	.sleb128 24
	.uleb128 0x10
	.long	.LASF190
	.sleb128 25
	.uleb128 0x10
	.long	.LASF191
	.sleb128 26
	.uleb128 0x10
	.long	.LASF192
	.sleb128 27
	.uleb128 0x10
	.long	.LASF193
	.sleb128 28
	.uleb128 0x10
	.long	.LASF194
	.sleb128 29
	.uleb128 0x10
	.long	.LASF195
	.sleb128 30
	.uleb128 0x10
	.long	.LASF196
	.sleb128 31
	.uleb128 0x10
	.long	.LASF197
	.sleb128 32
	.uleb128 0x10
	.long	.LASF198
	.sleb128 33
	.uleb128 0x10
	.long	.LASF199
	.sleb128 34
	.uleb128 0x10
	.long	.LASF200
	.sleb128 35
	.uleb128 0x10
	.long	.LASF201
	.sleb128 36
	.uleb128 0x10
	.long	.LASF202
	.sleb128 37
	.uleb128 0x10
	.long	.LASF203
	.sleb128 38
	.uleb128 0x10
	.long	.LASF204
	.sleb128 39
	.uleb128 0x10
	.long	.LASF205
	.sleb128 40
	.uleb128 0x10
	.long	.LASF206
	.sleb128 41
	.uleb128 0x10
	.long	.LASF207
	.sleb128 42
	.uleb128 0x10
	.long	.LASF208
	.sleb128 43
	.uleb128 0x10
	.long	.LASF209
	.sleb128 44
	.uleb128 0x10
	.long	.LASF210
	.sleb128 45
	.uleb128 0x10
	.long	.LASF211
	.sleb128 46
	.uleb128 0x1a
	.string	"SET"
	.sleb128 47
	.uleb128 0x1a
	.string	"USE"
	.sleb128 48
	.uleb128 0x10
	.long	.LASF212
	.sleb128 49
	.uleb128 0x10
	.long	.LASF213
	.sleb128 50
	.uleb128 0x10
	.long	.LASF214
	.sleb128 51
	.uleb128 0x10
	.long	.LASF215
	.sleb128 52
	.uleb128 0x10
	.long	.LASF216
	.sleb128 53
	.uleb128 0x10
	.long	.LASF217
	.sleb128 54
	.uleb128 0x10
	.long	.LASF218
	.sleb128 55
	.uleb128 0x10
	.long	.LASF219
	.sleb128 56
	.uleb128 0x10
	.long	.LASF220
	.sleb128 57
	.uleb128 0x10
	.long	.LASF221
	.sleb128 58
	.uleb128 0x1a
	.string	"PC"
	.sleb128 59
	.uleb128 0x10
	.long	.LASF222
	.sleb128 60
	.uleb128 0x1a
	.string	"REG"
	.sleb128 61
	.uleb128 0x10
	.long	.LASF223
	.sleb128 62
	.uleb128 0x10
	.long	.LASF224
	.sleb128 63
	.uleb128 0x10
	.long	.LASF225
	.sleb128 64
	.uleb128 0x10
	.long	.LASF226
	.sleb128 65
	.uleb128 0x1a
	.string	"MEM"
	.sleb128 66
	.uleb128 0x10
	.long	.LASF227
	.sleb128 67
	.uleb128 0x10
	.long	.LASF228
	.sleb128 68
	.uleb128 0x1a
	.string	"CC0"
	.sleb128 69
	.uleb128 0x10
	.long	.LASF229
	.sleb128 70
	.uleb128 0x10
	.long	.LASF230
	.sleb128 71
	.uleb128 0x10
	.long	.LASF231
	.sleb128 72
	.uleb128 0x10
	.long	.LASF232
	.sleb128 73
	.uleb128 0x10
	.long	.LASF233
	.sleb128 74
	.uleb128 0x10
	.long	.LASF234
	.sleb128 75
	.uleb128 0x10
	.long	.LASF235
	.sleb128 76
	.uleb128 0x1a
	.string	"NEG"
	.sleb128 77
	.uleb128 0x10
	.long	.LASF236
	.sleb128 78
	.uleb128 0x1a
	.string	"DIV"
	.sleb128 79
	.uleb128 0x1a
	.string	"MOD"
	.sleb128 80
	.uleb128 0x10
	.long	.LASF237
	.sleb128 81
	.uleb128 0x10
	.long	.LASF238
	.sleb128 82
	.uleb128 0x1a
	.string	"AND"
	.sleb128 83
	.uleb128 0x1a
	.string	"IOR"
	.sleb128 84
	.uleb128 0x1a
	.string	"XOR"
	.sleb128 85
	.uleb128 0x1a
	.string	"NOT"
	.sleb128 86
	.uleb128 0x10
	.long	.LASF239
	.sleb128 87
	.uleb128 0x10
	.long	.LASF240
	.sleb128 88
	.uleb128 0x10
	.long	.LASF241
	.sleb128 89
	.uleb128 0x10
	.long	.LASF242
	.sleb128 90
	.uleb128 0x10
	.long	.LASF243
	.sleb128 91
	.uleb128 0x10
	.long	.LASF244
	.sleb128 92
	.uleb128 0x10
	.long	.LASF245
	.sleb128 93
	.uleb128 0x10
	.long	.LASF246
	.sleb128 94
	.uleb128 0x10
	.long	.LASF247
	.sleb128 95
	.uleb128 0x10
	.long	.LASF248
	.sleb128 96
	.uleb128 0x10
	.long	.LASF249
	.sleb128 97
	.uleb128 0x10
	.long	.LASF250
	.sleb128 98
	.uleb128 0x10
	.long	.LASF251
	.sleb128 99
	.uleb128 0x10
	.long	.LASF252
	.sleb128 100
	.uleb128 0x10
	.long	.LASF253
	.sleb128 101
	.uleb128 0x1a
	.string	"NE"
	.sleb128 102
	.uleb128 0x1a
	.string	"EQ"
	.sleb128 103
	.uleb128 0x1a
	.string	"GE"
	.sleb128 104
	.uleb128 0x1a
	.string	"GT"
	.sleb128 105
	.uleb128 0x1a
	.string	"LE"
	.sleb128 106
	.uleb128 0x1a
	.string	"LT"
	.sleb128 107
	.uleb128 0x1a
	.string	"GEU"
	.sleb128 108
	.uleb128 0x1a
	.string	"GTU"
	.sleb128 109
	.uleb128 0x1a
	.string	"LEU"
	.sleb128 110
	.uleb128 0x1a
	.string	"LTU"
	.sleb128 111
	.uleb128 0x10
	.long	.LASF254
	.sleb128 112
	.uleb128 0x10
	.long	.LASF255
	.sleb128 113
	.uleb128 0x10
	.long	.LASF256
	.sleb128 114
	.uleb128 0x10
	.long	.LASF257
	.sleb128 115
	.uleb128 0x10
	.long	.LASF258
	.sleb128 116
	.uleb128 0x10
	.long	.LASF259
	.sleb128 117
	.uleb128 0x10
	.long	.LASF260
	.sleb128 118
	.uleb128 0x10
	.long	.LASF261
	.sleb128 119
	.uleb128 0x10
	.long	.LASF262
	.sleb128 120
	.uleb128 0x10
	.long	.LASF263
	.sleb128 121
	.uleb128 0x10
	.long	.LASF264
	.sleb128 122
	.uleb128 0x10
	.long	.LASF265
	.sleb128 123
	.uleb128 0x10
	.long	.LASF266
	.sleb128 124
	.uleb128 0x10
	.long	.LASF267
	.sleb128 125
	.uleb128 0x1a
	.string	"FIX"
	.sleb128 126
	.uleb128 0x10
	.long	.LASF268
	.sleb128 127
	.uleb128 0x10
	.long	.LASF269
	.sleb128 128
	.uleb128 0x1a
	.string	"ABS"
	.sleb128 129
	.uleb128 0x10
	.long	.LASF270
	.sleb128 130
	.uleb128 0x1a
	.string	"FFS"
	.sleb128 131
	.uleb128 0x10
	.long	.LASF271
	.sleb128 132
	.uleb128 0x10
	.long	.LASF272
	.sleb128 133
	.uleb128 0x10
	.long	.LASF273
	.sleb128 134
	.uleb128 0x10
	.long	.LASF274
	.sleb128 135
	.uleb128 0x10
	.long	.LASF275
	.sleb128 136
	.uleb128 0x10
	.long	.LASF276
	.sleb128 137
	.uleb128 0x10
	.long	.LASF277
	.sleb128 138
	.uleb128 0x10
	.long	.LASF278
	.sleb128 139
	.uleb128 0x10
	.long	.LASF279
	.sleb128 140
	.uleb128 0x10
	.long	.LASF280
	.sleb128 141
	.uleb128 0x10
	.long	.LASF281
	.sleb128 142
	.uleb128 0x10
	.long	.LASF282
	.sleb128 143
	.uleb128 0x10
	.long	.LASF283
	.sleb128 144
	.uleb128 0x10
	.long	.LASF284
	.sleb128 145
	.uleb128 0x10
	.long	.LASF285
	.sleb128 146
	.uleb128 0x10
	.long	.LASF286
	.sleb128 147
	.uleb128 0x10
	.long	.LASF287
	.sleb128 148
	.uleb128 0x10
	.long	.LASF288
	.sleb128 149
	.uleb128 0x10
	.long	.LASF289
	.sleb128 150
	.uleb128 0x10
	.long	.LASF290
	.sleb128 151
	.uleb128 0x1a
	.string	"PHI"
	.sleb128 152
	.uleb128 0x10
	.long	.LASF291
	.sleb128 153
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xa7d
	.uleb128 0x5
	.long	.LASF292
	.byte	0x2
	.byte	0x47
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF293
	.byte	0x2
	.byte	0x49
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF294
	.byte	0x2
	.byte	0x4a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF295
	.byte	0x2
	.byte	0x4c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x2
	.byte	0x4e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x2
	.byte	0x50
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF298
	.byte	0x2
	.byte	0x53
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF299
	.byte	0x2
	.byte	0x55
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF300
	.byte	0x2
	.byte	0x56
	.long	0x9fc
	.uleb128 0x1b
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xacd
	.uleb128 0x8
	.long	.LASF301
	.byte	0x2
	.byte	0x5e
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF302
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF303
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF304
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF305
	.byte	0x2
	.byte	0x62
	.long	0x310
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF306
	.byte	0x2
	.byte	0x63
	.long	0xa88
	.uleb128 0x1c
	.long	.LASF308
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xb73
	.uleb128 0x1d
	.long	.LASF309
	.byte	0x2
	.byte	0x69
	.long	0x319
	.uleb128 0x1d
	.long	.LASF310
	.byte	0x2
	.byte	0x6a
	.long	0x1e3
	.uleb128 0x1d
	.long	.LASF311
	.byte	0x2
	.byte	0x6b
	.long	0x310
	.uleb128 0x1d
	.long	.LASF312
	.byte	0x2
	.byte	0x6c
	.long	0x38b
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1d
	.long	.LASF313
	.byte	0x2
	.byte	0x6f
	.long	0x442
	.uleb128 0x1d
	.long	.LASF314
	.byte	0x2
	.byte	0x70
	.long	0xa7d
	.uleb128 0x1d
	.long	.LASF315
	.byte	0x2
	.byte	0x71
	.long	0xb78
	.uleb128 0x1d
	.long	.LASF316
	.byte	0x2
	.byte	0x72
	.long	0xbaf
	.uleb128 0x1d
	.long	.LASF317
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1e
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xc82
	.uleb128 0x1d
	.long	.LASF318
	.byte	0x2
	.byte	0x75
	.long	0xc88
	.byte	0
	.uleb128 0x1f
	.long	.LASF754
	.uleb128 0x3
	.byte	0x8
	.long	0xb73
	.uleb128 0x4
	.long	.LASF319
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0xbaf
	.uleb128 0x8
	.long	.LASF320
	.byte	0x8
	.byte	0x35
	.long	0x2d5e
	.byte	0
	.uleb128 0x8
	.long	.LASF321
	.byte	0x8
	.byte	0x36
	.long	0x2d5e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0x8
	.byte	0x37
	.long	0x310
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb7e
	.uleb128 0x4
	.long	.LASF323
	.byte	0x70
	.byte	0x9
	.byte	0xae
	.long	0xc82
	.uleb128 0x8
	.long	.LASF324
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
	.long	.LASF325
	.byte	0x9
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF326
	.byte	0x9
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF327
	.byte	0x9
	.byte	0xb7
	.long	0x30b4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF328
	.byte	0x9
	.byte	0xb7
	.long	0x30b4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF329
	.byte	0x9
	.byte	0xbc
	.long	0x301f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF330
	.byte	0x9
	.byte	0xc0
	.long	0x301f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF331
	.byte	0x9
	.byte	0xc6
	.long	0x301f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF332
	.byte	0x9
	.byte	0xc8
	.long	0x301f
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0xcb
	.long	0x317
	.byte	0x50
	.uleb128 0x8
	.long	.LASF333
	.byte	0x9
	.byte	0xce
	.long	0x1e3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF334
	.byte	0x9
	.byte	0xd1
	.long	0x1e3
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF335
	.byte	0x9
	.byte	0xd4
	.long	0x302a
	.byte	0x60
	.uleb128 0x8
	.long	.LASF336
	.byte	0x9
	.byte	0xd7
	.long	0x1e3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF337
	.byte	0x9
	.byte	0xda
	.long	0x1e3
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbb5
	.uleb128 0x3
	.byte	0x8
	.long	0xacd
	.uleb128 0x7
	.long	.LASF338
	.byte	0x2
	.byte	0x76
	.long	0xad8
	.uleb128 0x15
	.long	0xc8e
	.long	0xca9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2d
	.long	0xcb9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF339
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xd7b
	.uleb128 0x10
	.long	.LASF340
	.sleb128 1
	.uleb128 0x10
	.long	.LASF341
	.sleb128 2
	.uleb128 0x10
	.long	.LASF342
	.sleb128 3
	.uleb128 0x10
	.long	.LASF343
	.sleb128 4
	.uleb128 0x10
	.long	.LASF344
	.sleb128 5
	.uleb128 0x10
	.long	.LASF345
	.sleb128 6
	.uleb128 0x10
	.long	.LASF346
	.sleb128 7
	.uleb128 0x10
	.long	.LASF347
	.sleb128 8
	.uleb128 0x10
	.long	.LASF348
	.sleb128 9
	.uleb128 0x10
	.long	.LASF349
	.sleb128 10
	.uleb128 0x10
	.long	.LASF350
	.sleb128 11
	.uleb128 0x10
	.long	.LASF351
	.sleb128 12
	.uleb128 0x10
	.long	.LASF352
	.sleb128 13
	.uleb128 0x10
	.long	.LASF353
	.sleb128 14
	.uleb128 0x10
	.long	.LASF354
	.sleb128 15
	.uleb128 0x10
	.long	.LASF355
	.sleb128 16
	.uleb128 0x10
	.long	.LASF356
	.sleb128 17
	.uleb128 0x10
	.long	.LASF357
	.sleb128 18
	.uleb128 0x10
	.long	.LASF358
	.sleb128 19
	.uleb128 0x10
	.long	.LASF359
	.sleb128 20
	.uleb128 0x10
	.long	.LASF360
	.sleb128 21
	.uleb128 0x10
	.long	.LASF361
	.sleb128 22
	.uleb128 0x10
	.long	.LASF362
	.sleb128 23
	.uleb128 0x10
	.long	.LASF363
	.sleb128 24
	.uleb128 0x10
	.long	.LASF364
	.sleb128 25
	.uleb128 0x10
	.long	.LASF365
	.sleb128 26
	.uleb128 0x10
	.long	.LASF366
	.sleb128 27
	.uleb128 0x10
	.long	.LASF367
	.sleb128 28
	.uleb128 0x10
	.long	.LASF368
	.sleb128 29
	.uleb128 0x10
	.long	.LASF369
	.sleb128 30
	.byte	0
	.uleb128 0xf
	.long	.LASF370
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe2a
	.uleb128 0x10
	.long	.LASF371
	.sleb128 -100
	.uleb128 0x10
	.long	.LASF372
	.sleb128 -99
	.uleb128 0x10
	.long	.LASF373
	.sleb128 -98
	.uleb128 0x10
	.long	.LASF374
	.sleb128 -97
	.uleb128 0x10
	.long	.LASF375
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF376
	.sleb128 -95
	.uleb128 0x10
	.long	.LASF377
	.sleb128 -94
	.uleb128 0x10
	.long	.LASF378
	.sleb128 -93
	.uleb128 0x10
	.long	.LASF379
	.sleb128 -92
	.uleb128 0x10
	.long	.LASF380
	.sleb128 -91
	.uleb128 0x10
	.long	.LASF381
	.sleb128 -90
	.uleb128 0x10
	.long	.LASF382
	.sleb128 -89
	.uleb128 0x10
	.long	.LASF383
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF384
	.sleb128 -87
	.uleb128 0x10
	.long	.LASF385
	.sleb128 -86
	.uleb128 0x10
	.long	.LASF386
	.sleb128 -85
	.uleb128 0x10
	.long	.LASF387
	.sleb128 -84
	.uleb128 0x10
	.long	.LASF388
	.sleb128 -83
	.uleb128 0x10
	.long	.LASF389
	.sleb128 -82
	.uleb128 0x10
	.long	.LASF390
	.sleb128 -81
	.uleb128 0x10
	.long	.LASF391
	.sleb128 -80
	.uleb128 0x10
	.long	.LASF392
	.sleb128 -79
	.uleb128 0x10
	.long	.LASF393
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xf
	.long	.LASF394
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xe86
	.uleb128 0x10
	.long	.LASF395
	.sleb128 0
	.uleb128 0x10
	.long	.LASF396
	.sleb128 1
	.uleb128 0x10
	.long	.LASF397
	.sleb128 2
	.uleb128 0x10
	.long	.LASF398
	.sleb128 3
	.uleb128 0x10
	.long	.LASF399
	.sleb128 4
	.uleb128 0x10
	.long	.LASF400
	.sleb128 5
	.uleb128 0x10
	.long	.LASF401
	.sleb128 6
	.uleb128 0x10
	.long	.LASF402
	.sleb128 7
	.uleb128 0x10
	.long	.LASF403
	.sleb128 8
	.uleb128 0x10
	.long	.LASF404
	.sleb128 9
	.uleb128 0x10
	.long	.LASF405
	.sleb128 10
	.uleb128 0x10
	.long	.LASF406
	.sleb128 11
	.byte	0
	.uleb128 0x19
	.long	.LASF407
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0x125f
	.uleb128 0x10
	.long	.LASF408
	.sleb128 0
	.uleb128 0x10
	.long	.LASF409
	.sleb128 1
	.uleb128 0x10
	.long	.LASF410
	.sleb128 2
	.uleb128 0x10
	.long	.LASF411
	.sleb128 3
	.uleb128 0x10
	.long	.LASF412
	.sleb128 4
	.uleb128 0x10
	.long	.LASF413
	.sleb128 5
	.uleb128 0x10
	.long	.LASF414
	.sleb128 6
	.uleb128 0x10
	.long	.LASF415
	.sleb128 7
	.uleb128 0x10
	.long	.LASF416
	.sleb128 8
	.uleb128 0x10
	.long	.LASF417
	.sleb128 9
	.uleb128 0x10
	.long	.LASF418
	.sleb128 10
	.uleb128 0x10
	.long	.LASF419
	.sleb128 11
	.uleb128 0x10
	.long	.LASF420
	.sleb128 12
	.uleb128 0x10
	.long	.LASF421
	.sleb128 13
	.uleb128 0x10
	.long	.LASF422
	.sleb128 14
	.uleb128 0x10
	.long	.LASF423
	.sleb128 15
	.uleb128 0x10
	.long	.LASF424
	.sleb128 16
	.uleb128 0x10
	.long	.LASF425
	.sleb128 17
	.uleb128 0x10
	.long	.LASF426
	.sleb128 18
	.uleb128 0x10
	.long	.LASF427
	.sleb128 19
	.uleb128 0x10
	.long	.LASF428
	.sleb128 20
	.uleb128 0x10
	.long	.LASF429
	.sleb128 21
	.uleb128 0x10
	.long	.LASF430
	.sleb128 22
	.uleb128 0x10
	.long	.LASF431
	.sleb128 23
	.uleb128 0x10
	.long	.LASF432
	.sleb128 24
	.uleb128 0x10
	.long	.LASF433
	.sleb128 25
	.uleb128 0x10
	.long	.LASF434
	.sleb128 26
	.uleb128 0x10
	.long	.LASF435
	.sleb128 27
	.uleb128 0x10
	.long	.LASF436
	.sleb128 28
	.uleb128 0x10
	.long	.LASF437
	.sleb128 29
	.uleb128 0x10
	.long	.LASF438
	.sleb128 30
	.uleb128 0x10
	.long	.LASF439
	.sleb128 31
	.uleb128 0x10
	.long	.LASF440
	.sleb128 32
	.uleb128 0x10
	.long	.LASF441
	.sleb128 33
	.uleb128 0x10
	.long	.LASF442
	.sleb128 34
	.uleb128 0x10
	.long	.LASF443
	.sleb128 35
	.uleb128 0x10
	.long	.LASF444
	.sleb128 36
	.uleb128 0x10
	.long	.LASF445
	.sleb128 37
	.uleb128 0x10
	.long	.LASF446
	.sleb128 38
	.uleb128 0x10
	.long	.LASF447
	.sleb128 39
	.uleb128 0x10
	.long	.LASF448
	.sleb128 40
	.uleb128 0x10
	.long	.LASF449
	.sleb128 41
	.uleb128 0x10
	.long	.LASF450
	.sleb128 42
	.uleb128 0x10
	.long	.LASF451
	.sleb128 43
	.uleb128 0x10
	.long	.LASF452
	.sleb128 44
	.uleb128 0x10
	.long	.LASF453
	.sleb128 45
	.uleb128 0x10
	.long	.LASF454
	.sleb128 46
	.uleb128 0x10
	.long	.LASF455
	.sleb128 47
	.uleb128 0x10
	.long	.LASF456
	.sleb128 48
	.uleb128 0x10
	.long	.LASF457
	.sleb128 49
	.uleb128 0x10
	.long	.LASF458
	.sleb128 50
	.uleb128 0x10
	.long	.LASF459
	.sleb128 51
	.uleb128 0x10
	.long	.LASF460
	.sleb128 52
	.uleb128 0x10
	.long	.LASF461
	.sleb128 53
	.uleb128 0x10
	.long	.LASF462
	.sleb128 54
	.uleb128 0x10
	.long	.LASF463
	.sleb128 55
	.uleb128 0x10
	.long	.LASF464
	.sleb128 56
	.uleb128 0x10
	.long	.LASF465
	.sleb128 57
	.uleb128 0x10
	.long	.LASF466
	.sleb128 58
	.uleb128 0x10
	.long	.LASF467
	.sleb128 59
	.uleb128 0x10
	.long	.LASF468
	.sleb128 60
	.uleb128 0x10
	.long	.LASF469
	.sleb128 61
	.uleb128 0x10
	.long	.LASF470
	.sleb128 62
	.uleb128 0x10
	.long	.LASF471
	.sleb128 63
	.uleb128 0x10
	.long	.LASF472
	.sleb128 64
	.uleb128 0x10
	.long	.LASF473
	.sleb128 65
	.uleb128 0x10
	.long	.LASF474
	.sleb128 66
	.uleb128 0x10
	.long	.LASF475
	.sleb128 67
	.uleb128 0x10
	.long	.LASF476
	.sleb128 68
	.uleb128 0x10
	.long	.LASF477
	.sleb128 69
	.uleb128 0x10
	.long	.LASF478
	.sleb128 70
	.uleb128 0x10
	.long	.LASF479
	.sleb128 71
	.uleb128 0x10
	.long	.LASF480
	.sleb128 72
	.uleb128 0x10
	.long	.LASF481
	.sleb128 73
	.uleb128 0x10
	.long	.LASF482
	.sleb128 74
	.uleb128 0x10
	.long	.LASF483
	.sleb128 75
	.uleb128 0x10
	.long	.LASF484
	.sleb128 76
	.uleb128 0x10
	.long	.LASF485
	.sleb128 77
	.uleb128 0x10
	.long	.LASF486
	.sleb128 78
	.uleb128 0x10
	.long	.LASF487
	.sleb128 79
	.uleb128 0x10
	.long	.LASF488
	.sleb128 80
	.uleb128 0x10
	.long	.LASF489
	.sleb128 81
	.uleb128 0x10
	.long	.LASF490
	.sleb128 82
	.uleb128 0x10
	.long	.LASF491
	.sleb128 83
	.uleb128 0x10
	.long	.LASF492
	.sleb128 84
	.uleb128 0x10
	.long	.LASF493
	.sleb128 85
	.uleb128 0x10
	.long	.LASF494
	.sleb128 86
	.uleb128 0x10
	.long	.LASF495
	.sleb128 87
	.uleb128 0x10
	.long	.LASF496
	.sleb128 88
	.uleb128 0x10
	.long	.LASF497
	.sleb128 89
	.uleb128 0x10
	.long	.LASF498
	.sleb128 90
	.uleb128 0x10
	.long	.LASF499
	.sleb128 91
	.uleb128 0x10
	.long	.LASF500
	.sleb128 92
	.uleb128 0x10
	.long	.LASF501
	.sleb128 93
	.uleb128 0x10
	.long	.LASF502
	.sleb128 94
	.uleb128 0x10
	.long	.LASF503
	.sleb128 95
	.uleb128 0x10
	.long	.LASF504
	.sleb128 96
	.uleb128 0x10
	.long	.LASF505
	.sleb128 97
	.uleb128 0x10
	.long	.LASF506
	.sleb128 98
	.uleb128 0x10
	.long	.LASF507
	.sleb128 99
	.uleb128 0x10
	.long	.LASF508
	.sleb128 100
	.uleb128 0x10
	.long	.LASF509
	.sleb128 101
	.uleb128 0x10
	.long	.LASF510
	.sleb128 102
	.uleb128 0x10
	.long	.LASF511
	.sleb128 103
	.uleb128 0x10
	.long	.LASF512
	.sleb128 104
	.uleb128 0x10
	.long	.LASF513
	.sleb128 105
	.uleb128 0x10
	.long	.LASF514
	.sleb128 106
	.uleb128 0x10
	.long	.LASF515
	.sleb128 107
	.uleb128 0x10
	.long	.LASF516
	.sleb128 108
	.uleb128 0x10
	.long	.LASF517
	.sleb128 109
	.uleb128 0x10
	.long	.LASF518
	.sleb128 110
	.uleb128 0x10
	.long	.LASF519
	.sleb128 111
	.uleb128 0x10
	.long	.LASF520
	.sleb128 112
	.uleb128 0x10
	.long	.LASF521
	.sleb128 113
	.uleb128 0x10
	.long	.LASF522
	.sleb128 114
	.uleb128 0x10
	.long	.LASF523
	.sleb128 115
	.uleb128 0x10
	.long	.LASF524
	.sleb128 116
	.uleb128 0x10
	.long	.LASF525
	.sleb128 117
	.uleb128 0x10
	.long	.LASF526
	.sleb128 118
	.uleb128 0x10
	.long	.LASF527
	.sleb128 119
	.uleb128 0x10
	.long	.LASF528
	.sleb128 120
	.uleb128 0x10
	.long	.LASF529
	.sleb128 121
	.uleb128 0x10
	.long	.LASF530
	.sleb128 122
	.uleb128 0x10
	.long	.LASF531
	.sleb128 123
	.uleb128 0x10
	.long	.LASF532
	.sleb128 124
	.uleb128 0x10
	.long	.LASF533
	.sleb128 125
	.uleb128 0x10
	.long	.LASF534
	.sleb128 126
	.uleb128 0x10
	.long	.LASF535
	.sleb128 127
	.uleb128 0x10
	.long	.LASF536
	.sleb128 128
	.uleb128 0x10
	.long	.LASF537
	.sleb128 129
	.uleb128 0x10
	.long	.LASF538
	.sleb128 130
	.uleb128 0x10
	.long	.LASF539
	.sleb128 131
	.uleb128 0x10
	.long	.LASF540
	.sleb128 132
	.uleb128 0x10
	.long	.LASF541
	.sleb128 133
	.uleb128 0x10
	.long	.LASF542
	.sleb128 134
	.uleb128 0x10
	.long	.LASF543
	.sleb128 135
	.uleb128 0x10
	.long	.LASF544
	.sleb128 136
	.uleb128 0x10
	.long	.LASF545
	.sleb128 137
	.uleb128 0x10
	.long	.LASF546
	.sleb128 138
	.uleb128 0x10
	.long	.LASF547
	.sleb128 139
	.uleb128 0x10
	.long	.LASF548
	.sleb128 140
	.uleb128 0x10
	.long	.LASF549
	.sleb128 141
	.uleb128 0x10
	.long	.LASF550
	.sleb128 142
	.uleb128 0x10
	.long	.LASF551
	.sleb128 143
	.uleb128 0x10
	.long	.LASF552
	.sleb128 144
	.uleb128 0x10
	.long	.LASF553
	.sleb128 145
	.uleb128 0x10
	.long	.LASF554
	.sleb128 146
	.uleb128 0x10
	.long	.LASF555
	.sleb128 147
	.byte	0
	.uleb128 0x19
	.long	.LASF556
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x14cc
	.uleb128 0x10
	.long	.LASF557
	.sleb128 0
	.uleb128 0x10
	.long	.LASF558
	.sleb128 1
	.uleb128 0x10
	.long	.LASF559
	.sleb128 2
	.uleb128 0x10
	.long	.LASF560
	.sleb128 3
	.uleb128 0x10
	.long	.LASF561
	.sleb128 4
	.uleb128 0x10
	.long	.LASF562
	.sleb128 5
	.uleb128 0x10
	.long	.LASF563
	.sleb128 6
	.uleb128 0x10
	.long	.LASF564
	.sleb128 7
	.uleb128 0x10
	.long	.LASF565
	.sleb128 8
	.uleb128 0x10
	.long	.LASF566
	.sleb128 9
	.uleb128 0x10
	.long	.LASF567
	.sleb128 10
	.uleb128 0x10
	.long	.LASF568
	.sleb128 11
	.uleb128 0x10
	.long	.LASF569
	.sleb128 12
	.uleb128 0x10
	.long	.LASF570
	.sleb128 13
	.uleb128 0x10
	.long	.LASF571
	.sleb128 14
	.uleb128 0x10
	.long	.LASF572
	.sleb128 15
	.uleb128 0x10
	.long	.LASF573
	.sleb128 16
	.uleb128 0x10
	.long	.LASF574
	.sleb128 17
	.uleb128 0x10
	.long	.LASF575
	.sleb128 18
	.uleb128 0x10
	.long	.LASF576
	.sleb128 19
	.uleb128 0x10
	.long	.LASF577
	.sleb128 20
	.uleb128 0x10
	.long	.LASF578
	.sleb128 21
	.uleb128 0x10
	.long	.LASF579
	.sleb128 22
	.uleb128 0x10
	.long	.LASF580
	.sleb128 23
	.uleb128 0x10
	.long	.LASF581
	.sleb128 24
	.uleb128 0x10
	.long	.LASF582
	.sleb128 25
	.uleb128 0x10
	.long	.LASF583
	.sleb128 26
	.uleb128 0x10
	.long	.LASF584
	.sleb128 27
	.uleb128 0x10
	.long	.LASF585
	.sleb128 28
	.uleb128 0x10
	.long	.LASF586
	.sleb128 29
	.uleb128 0x10
	.long	.LASF587
	.sleb128 30
	.uleb128 0x10
	.long	.LASF588
	.sleb128 31
	.uleb128 0x10
	.long	.LASF589
	.sleb128 32
	.uleb128 0x10
	.long	.LASF590
	.sleb128 33
	.uleb128 0x10
	.long	.LASF591
	.sleb128 34
	.uleb128 0x10
	.long	.LASF592
	.sleb128 35
	.uleb128 0x10
	.long	.LASF593
	.sleb128 36
	.uleb128 0x10
	.long	.LASF594
	.sleb128 37
	.uleb128 0x10
	.long	.LASF595
	.sleb128 38
	.uleb128 0x10
	.long	.LASF596
	.sleb128 39
	.uleb128 0x10
	.long	.LASF597
	.sleb128 40
	.uleb128 0x10
	.long	.LASF598
	.sleb128 41
	.uleb128 0x10
	.long	.LASF599
	.sleb128 42
	.uleb128 0x10
	.long	.LASF600
	.sleb128 43
	.uleb128 0x10
	.long	.LASF601
	.sleb128 44
	.uleb128 0x10
	.long	.LASF602
	.sleb128 45
	.uleb128 0x10
	.long	.LASF603
	.sleb128 46
	.uleb128 0x10
	.long	.LASF604
	.sleb128 47
	.uleb128 0x10
	.long	.LASF605
	.sleb128 48
	.uleb128 0x10
	.long	.LASF606
	.sleb128 49
	.uleb128 0x10
	.long	.LASF607
	.sleb128 50
	.uleb128 0x10
	.long	.LASF608
	.sleb128 51
	.uleb128 0x10
	.long	.LASF609
	.sleb128 52
	.uleb128 0x10
	.long	.LASF610
	.sleb128 53
	.uleb128 0x10
	.long	.LASF611
	.sleb128 54
	.uleb128 0x10
	.long	.LASF612
	.sleb128 55
	.uleb128 0x10
	.long	.LASF613
	.sleb128 56
	.uleb128 0x10
	.long	.LASF614
	.sleb128 57
	.uleb128 0x10
	.long	.LASF615
	.sleb128 58
	.uleb128 0x10
	.long	.LASF616
	.sleb128 59
	.uleb128 0x10
	.long	.LASF617
	.sleb128 60
	.uleb128 0x10
	.long	.LASF618
	.sleb128 61
	.uleb128 0x10
	.long	.LASF619
	.sleb128 62
	.uleb128 0x10
	.long	.LASF620
	.sleb128 63
	.uleb128 0x10
	.long	.LASF621
	.sleb128 64
	.uleb128 0x10
	.long	.LASF622
	.sleb128 65
	.uleb128 0x10
	.long	.LASF623
	.sleb128 66
	.uleb128 0x10
	.long	.LASF624
	.sleb128 67
	.uleb128 0x10
	.long	.LASF625
	.sleb128 68
	.uleb128 0x10
	.long	.LASF626
	.sleb128 69
	.uleb128 0x10
	.long	.LASF627
	.sleb128 70
	.uleb128 0x10
	.long	.LASF628
	.sleb128 71
	.uleb128 0x10
	.long	.LASF629
	.sleb128 72
	.uleb128 0x10
	.long	.LASF630
	.sleb128 73
	.uleb128 0x10
	.long	.LASF631
	.sleb128 74
	.uleb128 0x10
	.long	.LASF632
	.sleb128 75
	.uleb128 0x10
	.long	.LASF633
	.sleb128 76
	.uleb128 0x10
	.long	.LASF634
	.sleb128 77
	.uleb128 0x10
	.long	.LASF635
	.sleb128 78
	.uleb128 0x10
	.long	.LASF636
	.sleb128 79
	.uleb128 0x10
	.long	.LASF637
	.sleb128 80
	.uleb128 0x10
	.long	.LASF638
	.sleb128 81
	.uleb128 0x10
	.long	.LASF639
	.sleb128 82
	.uleb128 0x10
	.long	.LASF640
	.sleb128 83
	.uleb128 0x10
	.long	.LASF641
	.sleb128 84
	.uleb128 0x10
	.long	.LASF642
	.sleb128 85
	.uleb128 0x10
	.long	.LASF643
	.sleb128 86
	.uleb128 0x10
	.long	.LASF644
	.sleb128 87
	.uleb128 0x10
	.long	.LASF645
	.sleb128 88
	.uleb128 0x10
	.long	.LASF646
	.sleb128 89
	.uleb128 0x10
	.long	.LASF647
	.sleb128 90
	.uleb128 0x10
	.long	.LASF648
	.sleb128 91
	.uleb128 0x10
	.long	.LASF649
	.sleb128 92
	.uleb128 0x10
	.long	.LASF650
	.sleb128 93
	.uleb128 0x10
	.long	.LASF651
	.sleb128 94
	.uleb128 0x10
	.long	.LASF652
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF653
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x1668
	.uleb128 0x8
	.long	.LASF654
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
	.long	.LASF655
	.byte	0x4
	.byte	0x80
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF656
	.byte	0x4
	.byte	0x81
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF657
	.byte	0x4
	.byte	0x82
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF658
	.byte	0x4
	.byte	0x83
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF659
	.byte	0x4
	.byte	0x84
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF660
	.byte	0x4
	.byte	0x85
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF661
	.byte	0x4
	.byte	0x86
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF662
	.byte	0x4
	.byte	0x87
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF663
	.byte	0x4
	.byte	0x89
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF664
	.byte	0x4
	.byte	0x8a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF665
	.byte	0x4
	.byte	0x8b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF666
	.byte	0x4
	.byte	0x8c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF667
	.byte	0x4
	.byte	0x8d
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF668
	.byte	0x4
	.byte	0x8e
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF669
	.byte	0x4
	.byte	0x8f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF670
	.byte	0x4
	.byte	0x90
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF671
	.byte	0x4
	.byte	0x92
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF672
	.byte	0x4
	.byte	0x93
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF673
	.byte	0x4
	.byte	0x94
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF674
	.byte	0x4
	.byte	0x95
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF675
	.byte	0x4
	.byte	0x96
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF676
	.byte	0x4
	.byte	0x97
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF677
	.byte	0x4
	.byte	0x98
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF678
	.byte	0x4
	.byte	0x99
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x20
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x168c
	.uleb128 0x21
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x32b
	.byte	0
	.uleb128 0x12
	.long	.LASF679
	.byte	0x4
	.value	0x2cb
	.long	0x319
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.long	.LASF680
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x16c1
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x1668
	.byte	0x20
	.byte	0
	.uleb128 0x1b
	.byte	0x18
	.byte	0xa
	.byte	0x6b
	.long	0x16d4
	.uleb128 0x6
	.string	"r"
	.byte	0xa
	.byte	0x6c
	.long	0x16d4
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x16e4
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF681
	.byte	0xa
	.byte	0x6d
	.long	0x16c1
	.uleb128 0x11
	.long	.LASF682
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x1724
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x16e4
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF683
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x1766
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF684
	.byte	0x4
	.value	0x2ed
	.long	0x1e3
	.byte	0x20
	.uleb128 0x12
	.long	.LASF685
	.byte	0x4
	.value	0x2ee
	.long	0x38b
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF686
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x17a8
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF687
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF688
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF689
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x17dd
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x12
	.long	.LASF690
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF691
	.byte	0x18
	.byte	0xb
	.byte	0xa1
	.long	0x180e
	.uleb128 0x8
	.long	.LASF692
	.byte	0xb
	.byte	0xa3
	.long	0x34e
	.byte	0
	.uleb128 0x8
	.long	.LASF693
	.byte	0xb
	.byte	0xa4
	.long	0x180e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF694
	.byte	0xb
	.byte	0xa5
	.long	0x35b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x17dd
	.uleb128 0x4
	.long	.LASF695
	.byte	0x58
	.byte	0xb
	.byte	0xa8
	.long	0x18c6
	.uleb128 0x8
	.long	.LASF696
	.byte	0xb
	.byte	0xaa
	.long	0x319
	.byte	0
	.uleb128 0x8
	.long	.LASF697
	.byte	0xb
	.byte	0xab
	.long	0x180e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF698
	.byte	0xb
	.byte	0xac
	.long	0x34e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF699
	.byte	0xb
	.byte	0xad
	.long	0x34e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF700
	.byte	0xb
	.byte	0xae
	.long	0x34e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF701
	.byte	0xb
	.byte	0xaf
	.long	0x319
	.byte	0x28
	.uleb128 0x8
	.long	.LASF702
	.byte	0xb
	.byte	0xb0
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF703
	.byte	0xb
	.byte	0xb5
	.long	0x18da
	.byte	0x38
	.uleb128 0x8
	.long	.LASF704
	.byte	0xb
	.byte	0xb6
	.long	0x18f0
	.byte	0x40
	.uleb128 0x8
	.long	.LASF705
	.byte	0xb
	.byte	0xb7
	.long	0x317
	.byte	0x48
	.uleb128 0x5
	.long	.LASF706
	.byte	0xb
	.byte	0xbd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x5
	.long	.LASF707
	.byte	0xb
	.byte	0xbe
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x5
	.long	.LASF708
	.byte	0xb
	.byte	0xc2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x22
	.long	0x180e
	.long	0x18da
	.uleb128 0x23
	.long	0x317
	.uleb128 0x23
	.long	0x319
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18c6
	.uleb128 0x24
	.long	0x18f0
	.uleb128 0x23
	.long	0x317
	.uleb128 0x23
	.long	0x180e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x18e0
	.uleb128 0x4
	.long	.LASF709
	.byte	0x10
	.byte	0xc
	.byte	0x1a
	.long	0x191b
	.uleb128 0x6
	.string	"len"
	.byte	0xc
	.byte	0x1c
	.long	0x310
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.long	0x191b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1921
	.uleb128 0xc
	.long	0x332
	.uleb128 0x11
	.long	.LASF710
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x194d
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x14cc
	.byte	0
	.uleb128 0x21
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x18f6
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF711
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x1982
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x14cc
	.byte	0
	.uleb128 0x12
	.long	.LASF712
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF713
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF714
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x19b5
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x14cc
	.byte	0
	.uleb128 0x12
	.long	.LASF684
	.byte	0x4
	.value	0x331
	.long	0x1e3
	.byte	0x18
	.uleb128 0x21
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x19b5
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.long	0x123
	.long	0x19c5
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF715
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x19fa
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x14cc
	.byte	0
	.uleb128 0x12
	.long	.LASF716
	.byte	0x4
	.value	0x372
	.long	0x1e3
	.byte	0x18
	.uleb128 0x12
	.long	.LASF717
	.byte	0x4
	.value	0x373
	.long	0x19b5
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF718
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x1a93
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x14cc
	.byte	0
	.uleb128 0x25
	.long	.LASF719
	.byte	0x4
	.value	0x3a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x25
	.long	.LASF720
	.byte	0x4
	.value	0x3a8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x25
	.long	.LASF721
	.byte	0x4
	.value	0x3a9
	.long	0x310
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x12
	.long	.LASF722
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF723
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF724
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x12
	.long	.LASF725
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF726
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF727
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x1ab5
	.uleb128 0xa
	.long	.LASF728
	.byte	0x4
	.value	0x4d8
	.long	0x1e3
	.uleb128 0xa
	.long	.LASF685
	.byte	0x4
	.value	0x4d8
	.long	0x34e
	.byte	0
	.uleb128 0x11
	.long	.LASF729
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x1cca
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x14cc
	.byte	0
	.uleb128 0x12
	.long	.LASF730
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF304
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x12
	.long	.LASF731
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x12
	.long	.LASF732
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x21
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x310
	.byte	0x38
	.uleb128 0x25
	.long	.LASF733
	.byte	0x4
	.value	0x4c1
	.long	0x310
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x310
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF734
	.byte	0x4
	.value	0x4c4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF735
	.byte	0x4
	.value	0x4c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF736
	.byte	0x4
	.value	0x4c6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF737
	.byte	0x4
	.value	0x4c7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF738
	.byte	0x4
	.value	0x4c8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF739
	.byte	0x4
	.value	0x4c9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF740
	.byte	0x4
	.value	0x4ca
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF671
	.byte	0x4
	.value	0x4cc
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF672
	.byte	0x4
	.value	0x4cd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF673
	.byte	0x4
	.value	0x4ce
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF674
	.byte	0x4
	.value	0x4cf
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF675
	.byte	0x4
	.value	0x4d0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF676
	.byte	0x4
	.value	0x4d1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF677
	.byte	0x4
	.value	0x4d2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x25
	.long	.LASF741
	.byte	0x4
	.value	0x4d3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF305
	.byte	0x4
	.value	0x4d5
	.long	0x310
	.byte	0x40
	.uleb128 0x12
	.long	.LASF742
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF743
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF744
	.byte	0x4
	.value	0x4d8
	.long	0x1a93
	.byte	0x58
	.uleb128 0x12
	.long	.LASF745
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF746
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF747
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF748
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF749
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF750
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x12
	.long	.LASF751
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x12
	.long	.LASF752
	.byte	0x4
	.value	0x4e0
	.long	0x319
	.byte	0x98
	.uleb128 0x12
	.long	.LASF753
	.byte	0x4
	.value	0x4e2
	.long	0x1ccf
	.byte	0xa0
	.byte	0
	.uleb128 0x1f
	.long	.LASF755
	.uleb128 0x3
	.byte	0x8
	.long	0x1cca
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x1cff
	.uleb128 0x25
	.long	.LASF305
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x25
	.long	.LASF756
	.byte	0x4
	.value	0x717
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1d27
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0x125f
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x319
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1cd5
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1d59
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x21d9
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
	.uleb128 0x27
	.long	.LASF757
	.value	0x1b0
	.byte	0xd
	.byte	0xae
	.long	0x21d9
	.uleb128 0x6
	.string	"eh"
	.byte	0xd
	.byte	0xb0
	.long	0x28fb
	.byte	0
	.uleb128 0x8
	.long	.LASF758
	.byte	0xd
	.byte	0xb1
	.long	0x29c5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF302
	.byte	0xd
	.byte	0xb2
	.long	0x29cb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF759
	.byte	0xd
	.byte	0xb3
	.long	0x29d1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF760
	.byte	0xd
	.byte	0xb4
	.long	0x29dc
	.byte	0x20
	.uleb128 0x8
	.long	.LASF745
	.byte	0xd
	.byte	0xb9
	.long	0x38b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF23
	.byte	0xd
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF761
	.byte	0xd
	.byte	0xbf
	.long	0x21d9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF762
	.byte	0xd
	.byte	0xc4
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF763
	.byte	0xd
	.byte	0xc9
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF764
	.byte	0xd
	.byte	0xce
	.long	0x1e3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF765
	.byte	0xd
	.byte	0xd2
	.long	0x1e3
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF766
	.byte	0xd
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF767
	.byte	0xd
	.byte	0xda
	.long	0x304
	.byte	0x58
	.uleb128 0x8
	.long	.LASF768
	.byte	0xd
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF769
	.byte	0xd
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF770
	.byte	0xd
	.byte	0xe7
	.long	0x38b
	.byte	0x88
	.uleb128 0x8
	.long	.LASF771
	.byte	0xd
	.byte	0xeb
	.long	0x29e7
	.byte	0x90
	.uleb128 0x8
	.long	.LASF772
	.byte	0xd
	.byte	0xee
	.long	0x1e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF773
	.byte	0xd
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF774
	.byte	0xd
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF775
	.byte	0xd
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF776
	.byte	0xd
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF777
	.byte	0xd
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF778
	.byte	0xd
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x12
	.long	.LASF779
	.byte	0xd
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF780
	.byte	0xd
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF781
	.byte	0xd
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF782
	.byte	0xd
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x12
	.long	.LASF783
	.byte	0xd
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x12
	.long	.LASF784
	.byte	0xd
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x28
	.long	.LASF785
	.byte	0xd
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x28
	.long	.LASF786
	.byte	0xd
	.value	0x12f
	.long	0x319
	.value	0x108
	.uleb128 0x28
	.long	.LASF787
	.byte	0xd
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x28
	.long	.LASF788
	.byte	0xd
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x28
	.long	.LASF789
	.byte	0xd
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x28
	.long	.LASF790
	.byte	0xd
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x28
	.long	.LASF791
	.byte	0xd
	.value	0x148
	.long	0x310
	.value	0x130
	.uleb128 0x28
	.long	.LASF792
	.byte	0xd
	.value	0x14e
	.long	0xe2a
	.value	0x138
	.uleb128 0x28
	.long	.LASF793
	.byte	0xd
	.value	0x151
	.long	0x29f2
	.value	0x140
	.uleb128 0x28
	.long	.LASF794
	.byte	0xd
	.value	0x154
	.long	0x1e3
	.value	0x148
	.uleb128 0x28
	.long	.LASF795
	.byte	0xd
	.value	0x157
	.long	0x1e3
	.value	0x14c
	.uleb128 0x28
	.long	.LASF796
	.byte	0xd
	.value	0x15d
	.long	0x1e3
	.value	0x150
	.uleb128 0x28
	.long	.LASF797
	.byte	0xd
	.value	0x161
	.long	0x2797
	.value	0x158
	.uleb128 0x28
	.long	.LASF798
	.byte	0xd
	.value	0x164
	.long	0x1e3
	.value	0x160
	.uleb128 0x28
	.long	.LASF799
	.byte	0xd
	.value	0x165
	.long	0x1e3
	.value	0x164
	.uleb128 0x28
	.long	.LASF800
	.byte	0xd
	.value	0x167
	.long	0x317
	.value	0x168
	.uleb128 0x28
	.long	.LASF801
	.byte	0xd
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x28
	.long	.LASF802
	.byte	0xd
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x28
	.long	.LASF803
	.byte	0xd
	.value	0x16d
	.long	0x1e3
	.value	0x180
	.uleb128 0x28
	.long	.LASF804
	.byte	0xd
	.value	0x170
	.long	0x1e3
	.value	0x184
	.uleb128 0x28
	.long	.LASF805
	.byte	0xd
	.value	0x175
	.long	0x29fd
	.value	0x188
	.uleb128 0x28
	.long	.LASF806
	.byte	0xd
	.value	0x177
	.long	0x1e3
	.value	0x190
	.uleb128 0x28
	.long	.LASF807
	.byte	0xd
	.value	0x179
	.long	0x1e3
	.value	0x194
	.uleb128 0x28
	.long	.LASF808
	.byte	0xd
	.value	0x17c
	.long	0x2a08
	.value	0x198
	.uleb128 0x28
	.long	.LASF809
	.byte	0xd
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x29
	.long	.LASF810
	.byte	0xd
	.value	0x188
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF811
	.byte	0xd
	.value	0x18c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF812
	.byte	0xd
	.value	0x18f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF813
	.byte	0xd
	.value	0x192
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF814
	.byte	0xd
	.value	0x195
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF815
	.byte	0xd
	.value	0x198
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF816
	.byte	0xd
	.value	0x19c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF817
	.byte	0xd
	.value	0x19f
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF818
	.byte	0xd
	.value	0x1a3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF819
	.byte	0xd
	.value	0x1a7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF820
	.byte	0xd
	.value	0x1aa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF821
	.byte	0xd
	.value	0x1ad
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF822
	.byte	0xd
	.value	0x1b2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF823
	.byte	0xd
	.value	0x1b6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF824
	.byte	0xd
	.value	0x1b9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF825
	.byte	0xd
	.value	0x1bd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF826
	.byte	0xd
	.value	0x1c1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF827
	.byte	0xd
	.value	0x1c5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF828
	.byte	0xd
	.value	0x1cb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF829
	.byte	0xd
	.value	0x1d4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF830
	.byte	0xd
	.value	0x1d7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF831
	.byte	0xd
	.value	0x1da
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF832
	.byte	0xd
	.value	0x1dd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x29
	.long	.LASF833
	.byte	0xd
	.value	0x1e0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d59
	.uleb128 0x11
	.long	.LASF834
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x2563
	.uleb128 0x12
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x14cc
	.byte	0
	.uleb128 0x12
	.long	.LASF835
	.byte	0x4
	.value	0x6df
	.long	0x38b
	.byte	0x18
	.uleb128 0x12
	.long	.LASF836
	.byte	0x4
	.value	0x6e0
	.long	0x1e3
	.byte	0x20
	.uleb128 0x21
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x310
	.byte	0x24
	.uleb128 0x12
	.long	.LASF304
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x25
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x310
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x25
	.long	.LASF837
	.byte	0x4
	.value	0x6e5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x25
	.long	.LASF838
	.byte	0x4
	.value	0x6e6
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x25
	.long	.LASF839
	.byte	0x4
	.value	0x6e7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x25
	.long	.LASF840
	.byte	0x4
	.value	0x6e8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x25
	.long	.LASF841
	.byte	0x4
	.value	0x6e9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x25
	.long	.LASF842
	.byte	0x4
	.value	0x6ea
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x25
	.long	.LASF843
	.byte	0x4
	.value	0x6eb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x25
	.long	.LASF720
	.byte	0x4
	.value	0x6ec
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x25
	.long	.LASF844
	.byte	0x4
	.value	0x6ee
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x25
	.long	.LASF845
	.byte	0x4
	.value	0x6ef
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x25
	.long	.LASF846
	.byte	0x4
	.value	0x6f0
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x25
	.long	.LASF847
	.byte	0x4
	.value	0x6f1
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x25
	.long	.LASF848
	.byte	0x4
	.value	0x6f2
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x25
	.long	.LASF849
	.byte	0x4
	.value	0x6f3
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x25
	.long	.LASF850
	.byte	0x4
	.value	0x6f4
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x25
	.long	.LASF851
	.byte	0x4
	.value	0x6f5
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x25
	.long	.LASF852
	.byte	0x4
	.value	0x6f7
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x25
	.long	.LASF853
	.byte	0x4
	.value	0x6f8
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x25
	.long	.LASF854
	.byte	0x4
	.value	0x6f9
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x25
	.long	.LASF855
	.byte	0x4
	.value	0x6fa
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x25
	.long	.LASF856
	.byte	0x4
	.value	0x6fb
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x25
	.long	.LASF857
	.byte	0x4
	.value	0x6fc
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x25
	.long	.LASF858
	.byte	0x4
	.value	0x6fd
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x25
	.long	.LASF740
	.byte	0x4
	.value	0x6ff
	.long	0x310
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x25
	.long	.LASF859
	.byte	0x4
	.value	0x700
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x25
	.long	.LASF741
	.byte	0x4
	.value	0x701
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x25
	.long	.LASF860
	.byte	0x4
	.value	0x702
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x25
	.long	.LASF671
	.byte	0x4
	.value	0x705
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x25
	.long	.LASF672
	.byte	0x4
	.value	0x706
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x25
	.long	.LASF673
	.byte	0x4
	.value	0x707
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x25
	.long	.LASF674
	.byte	0x4
	.value	0x708
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x25
	.long	.LASF675
	.byte	0x4
	.value	0x709
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x25
	.long	.LASF676
	.byte	0x4
	.value	0x70a
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x25
	.long	.LASF677
	.byte	0x4
	.value	0x70b
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x25
	.long	.LASF861
	.byte	0x4
	.value	0x70c
	.long	0x310
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x21
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x1cff
	.byte	0x38
	.uleb128 0x12
	.long	.LASF731
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x12
	.long	.LASF745
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x12
	.long	.LASF751
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x12
	.long	.LASF862
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x12
	.long	.LASF863
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x12
	.long	.LASF864
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x12
	.long	.LASF725
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x12
	.long	.LASF865
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x12
	.long	.LASF866
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x12
	.long	.LASF732
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x21
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x12
	.long	.LASF867
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x21
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1d27
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF868
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF869
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF870
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF871
	.byte	0x4
	.value	0x73b
	.long	0x319
	.byte	0xc0
	.uleb128 0x12
	.long	.LASF753
	.byte	0x4
	.value	0x73d
	.long	0x2568
	.byte	0xc8
	.byte	0
	.uleb128 0x1f
	.long	.LASF872
	.uleb128 0x3
	.byte	0x8
	.long	0x2563
	.uleb128 0xf
	.long	.LASF873
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x26b4
	.uleb128 0x10
	.long	.LASF874
	.sleb128 0
	.uleb128 0x10
	.long	.LASF875
	.sleb128 1
	.uleb128 0x10
	.long	.LASF876
	.sleb128 2
	.uleb128 0x10
	.long	.LASF877
	.sleb128 3
	.uleb128 0x10
	.long	.LASF878
	.sleb128 4
	.uleb128 0x10
	.long	.LASF879
	.sleb128 5
	.uleb128 0x10
	.long	.LASF880
	.sleb128 6
	.uleb128 0x10
	.long	.LASF881
	.sleb128 7
	.uleb128 0x10
	.long	.LASF882
	.sleb128 8
	.uleb128 0x10
	.long	.LASF883
	.sleb128 9
	.uleb128 0x10
	.long	.LASF884
	.sleb128 10
	.uleb128 0x10
	.long	.LASF885
	.sleb128 11
	.uleb128 0x10
	.long	.LASF886
	.sleb128 12
	.uleb128 0x10
	.long	.LASF887
	.sleb128 13
	.uleb128 0x10
	.long	.LASF888
	.sleb128 14
	.uleb128 0x10
	.long	.LASF889
	.sleb128 15
	.uleb128 0x10
	.long	.LASF890
	.sleb128 16
	.uleb128 0x10
	.long	.LASF891
	.sleb128 17
	.uleb128 0x10
	.long	.LASF892
	.sleb128 18
	.uleb128 0x10
	.long	.LASF893
	.sleb128 19
	.uleb128 0x10
	.long	.LASF894
	.sleb128 20
	.uleb128 0x10
	.long	.LASF895
	.sleb128 21
	.uleb128 0x10
	.long	.LASF896
	.sleb128 22
	.uleb128 0x10
	.long	.LASF897
	.sleb128 23
	.uleb128 0x10
	.long	.LASF898
	.sleb128 24
	.uleb128 0x10
	.long	.LASF899
	.sleb128 25
	.uleb128 0x10
	.long	.LASF900
	.sleb128 26
	.uleb128 0x10
	.long	.LASF901
	.sleb128 27
	.uleb128 0x10
	.long	.LASF902
	.sleb128 28
	.uleb128 0x10
	.long	.LASF903
	.sleb128 29
	.uleb128 0x10
	.long	.LASF904
	.sleb128 30
	.uleb128 0x10
	.long	.LASF905
	.sleb128 31
	.uleb128 0x10
	.long	.LASF906
	.sleb128 32
	.uleb128 0x10
	.long	.LASF907
	.sleb128 33
	.uleb128 0x10
	.long	.LASF908
	.sleb128 34
	.uleb128 0x10
	.long	.LASF909
	.sleb128 35
	.uleb128 0x10
	.long	.LASF910
	.sleb128 36
	.uleb128 0x10
	.long	.LASF911
	.sleb128 37
	.uleb128 0x10
	.long	.LASF912
	.sleb128 38
	.uleb128 0x10
	.long	.LASF913
	.sleb128 39
	.uleb128 0x10
	.long	.LASF914
	.sleb128 40
	.uleb128 0x10
	.long	.LASF915
	.sleb128 41
	.uleb128 0x10
	.long	.LASF916
	.sleb128 42
	.uleb128 0x10
	.long	.LASF917
	.sleb128 43
	.uleb128 0x10
	.long	.LASF918
	.sleb128 44
	.uleb128 0x10
	.long	.LASF919
	.sleb128 45
	.uleb128 0x10
	.long	.LASF920
	.sleb128 46
	.uleb128 0x10
	.long	.LASF921
	.sleb128 47
	.uleb128 0x10
	.long	.LASF922
	.sleb128 48
	.uleb128 0x10
	.long	.LASF923
	.sleb128 49
	.uleb128 0x10
	.long	.LASF924
	.sleb128 50
	.uleb128 0x10
	.long	.LASF925
	.sleb128 51
	.byte	0
	.uleb128 0xf
	.long	.LASF926
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x270a
	.uleb128 0x10
	.long	.LASF927
	.sleb128 0
	.uleb128 0x10
	.long	.LASF928
	.sleb128 1
	.uleb128 0x10
	.long	.LASF929
	.sleb128 2
	.uleb128 0x10
	.long	.LASF930
	.sleb128 3
	.uleb128 0x10
	.long	.LASF931
	.sleb128 4
	.uleb128 0x10
	.long	.LASF932
	.sleb128 5
	.uleb128 0x10
	.long	.LASF933
	.sleb128 6
	.uleb128 0x10
	.long	.LASF934
	.sleb128 7
	.uleb128 0x10
	.long	.LASF935
	.sleb128 8
	.uleb128 0x10
	.long	.LASF936
	.sleb128 9
	.uleb128 0x10
	.long	.LASF937
	.sleb128 10
	.uleb128 0x10
	.long	.LASF938
	.sleb128 11
	.byte	0
	.uleb128 0xc
	.long	0x38b
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF939
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x3
	.byte	0x8
	.long	0x270f
	.uleb128 0xf
	.long	.LASF940
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x275a
	.uleb128 0x10
	.long	.LASF941
	.sleb128 0
	.uleb128 0x10
	.long	.LASF942
	.sleb128 1
	.uleb128 0x10
	.long	.LASF943
	.sleb128 2
	.uleb128 0x10
	.long	.LASF944
	.sleb128 3
	.uleb128 0x10
	.long	.LASF945
	.sleb128 4
	.uleb128 0x10
	.long	.LASF946
	.sleb128 5
	.uleb128 0x10
	.long	.LASF947
	.sleb128 6
	.byte	0
	.uleb128 0x4
	.long	.LASF948
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.long	0x2797
	.uleb128 0x8
	.long	.LASF949
	.byte	0xd
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF950
	.byte	0xd
	.byte	0x19
	.long	0x442
	.byte	0x8
	.uleb128 0x8
	.long	.LASF951
	.byte	0xd
	.byte	0x1a
	.long	0x1e3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF952
	.byte	0xd
	.byte	0x1b
	.long	0x2797
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x275a
	.uleb128 0x4
	.long	.LASF953
	.byte	0x20
	.byte	0xd
	.byte	0x23
	.long	0x27da
	.uleb128 0x8
	.long	.LASF320
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF954
	.byte	0xd
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF955
	.byte	0xd
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF952
	.byte	0xd
	.byte	0x28
	.long	0x27da
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x279d
	.uleb128 0x3
	.byte	0x8
	.long	0x1814
	.uleb128 0x4
	.long	.LASF956
	.byte	0x58
	.byte	0xd
	.byte	0x35
	.long	0x288f
	.uleb128 0x8
	.long	.LASF957
	.byte	0xd
	.byte	0x39
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF958
	.byte	0xd
	.byte	0x3c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF959
	.byte	0xd
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF960
	.byte	0xd
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF955
	.byte	0xd
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF953
	.byte	0xd
	.byte	0x4f
	.long	0x27da
	.byte	0x20
	.uleb128 0x8
	.long	.LASF961
	.byte	0xd
	.byte	0x53
	.long	0x1e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF962
	.byte	0xd
	.byte	0x57
	.long	0x1e3
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF963
	.byte	0xd
	.byte	0x58
	.long	0x38b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF964
	.byte	0xd
	.byte	0x5e
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF965
	.byte	0xd
	.byte	0x63
	.long	0x288f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF966
	.byte	0xd
	.byte	0x67
	.long	0x2716
	.byte	0x48
	.uleb128 0x8
	.long	.LASF967
	.byte	0xd
	.byte	0x6b
	.long	0xe2a
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x332
	.uleb128 0x4
	.long	.LASF968
	.byte	0x30
	.byte	0xd
	.byte	0x77
	.long	0x28f6
	.uleb128 0x8
	.long	.LASF969
	.byte	0xd
	.byte	0x7b
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF970
	.byte	0xd
	.byte	0x8c
	.long	0x1e3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF971
	.byte	0xd
	.byte	0x92
	.long	0x1e3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF972
	.byte	0xd
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF973
	.byte	0xd
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF974
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF975
	.byte	0xd
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1f
	.long	.LASF976
	.uleb128 0x3
	.byte	0x8
	.long	0x28f6
	.uleb128 0x11
	.long	.LASF977
	.byte	0x68
	.byte	0x1
	.value	0x14e
	.long	0x29c5
	.uleb128 0x12
	.long	.LASF978
	.byte	0x1
	.value	0x151
	.long	0x3279
	.byte	0
	.uleb128 0x12
	.long	.LASF979
	.byte	0x1
	.value	0x157
	.long	0x3279
	.byte	0x8
	.uleb128 0x12
	.long	.LASF980
	.byte	0x1
	.value	0x15a
	.long	0x3279
	.byte	0x10
	.uleb128 0x12
	.long	.LASF981
	.byte	0x1
	.value	0x15d
	.long	0x3279
	.byte	0x18
	.uleb128 0x12
	.long	.LASF982
	.byte	0x1
	.value	0x160
	.long	0x3279
	.byte	0x20
	.uleb128 0x12
	.long	.LASF983
	.byte	0x1
	.value	0x164
	.long	0x3279
	.byte	0x28
	.uleb128 0x12
	.long	.LASF984
	.byte	0x1
	.value	0x167
	.long	0x1e3
	.byte	0x30
	.uleb128 0x12
	.long	.LASF985
	.byte	0x1
	.value	0x16a
	.long	0x1e3
	.byte	0x34
	.uleb128 0x12
	.long	.LASF986
	.byte	0x1
	.value	0x16e
	.long	0x123
	.byte	0x38
	.uleb128 0x12
	.long	.LASF987
	.byte	0x1
	.value	0x16f
	.long	0x2d
	.byte	0x40
	.uleb128 0x12
	.long	.LASF988
	.byte	0x1
	.value	0x173
	.long	0x1e3
	.byte	0x48
	.uleb128 0x12
	.long	.LASF989
	.byte	0x1
	.value	0x177
	.long	0x38b
	.byte	0x50
	.uleb128 0x12
	.long	.LASF990
	.byte	0x1
	.value	0x178
	.long	0x1e3
	.byte	0x58
	.uleb128 0x12
	.long	.LASF991
	.byte	0x1
	.value	0x17a
	.long	0x33b5
	.byte	0x60
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2901
	.uleb128 0x3
	.byte	0x8
	.long	0x2895
	.uleb128 0x3
	.byte	0x8
	.long	0x27e6
	.uleb128 0x1f
	.long	.LASF992
	.uleb128 0x3
	.byte	0x8
	.long	0x29d7
	.uleb128 0x1f
	.long	.LASF993
	.uleb128 0x3
	.byte	0x8
	.long	0x29e2
	.uleb128 0x1f
	.long	.LASF994
	.uleb128 0x3
	.byte	0x8
	.long	0x29ed
	.uleb128 0x1f
	.long	.LASF995
	.uleb128 0x3
	.byte	0x8
	.long	0x29f8
	.uleb128 0x1f
	.long	.LASF996
	.uleb128 0x3
	.byte	0x8
	.long	0x2a03
	.uleb128 0x19
	.long	.LASF997
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.long	0x2a39
	.uleb128 0x10
	.long	.LASF998
	.sleb128 0
	.uleb128 0x10
	.long	.LASF999
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1000
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1001
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1002
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.long	.LASF1003
	.byte	0x4
	.byte	0xe
	.value	0x100
	.long	0x2a65
	.uleb128 0x10
	.long	.LASF1004
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1005
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1006
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1007
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1008
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.long	.LASF1009
	.byte	0x4
	.byte	0xe
	.value	0x2ce
	.long	0x2a85
	.uleb128 0x10
	.long	.LASF1010
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1011
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1012
	.sleb128 2
	.byte	0
	.uleb128 0x19
	.long	.LASF1013
	.byte	0x4
	.byte	0xf
	.byte	0x19
	.long	0x2d00
	.uleb128 0x10
	.long	.LASF1014
	.sleb128 0
	.uleb128 0x10
	.long	.LASF1015
	.sleb128 1
	.uleb128 0x10
	.long	.LASF1016
	.sleb128 2
	.uleb128 0x10
	.long	.LASF1017
	.sleb128 3
	.uleb128 0x10
	.long	.LASF1018
	.sleb128 4
	.uleb128 0x10
	.long	.LASF1019
	.sleb128 5
	.uleb128 0x10
	.long	.LASF1020
	.sleb128 6
	.uleb128 0x10
	.long	.LASF1021
	.sleb128 7
	.uleb128 0x10
	.long	.LASF1022
	.sleb128 8
	.uleb128 0x10
	.long	.LASF1023
	.sleb128 9
	.uleb128 0x10
	.long	.LASF1024
	.sleb128 10
	.uleb128 0x10
	.long	.LASF1025
	.sleb128 11
	.uleb128 0x10
	.long	.LASF1026
	.sleb128 12
	.uleb128 0x10
	.long	.LASF1027
	.sleb128 13
	.uleb128 0x10
	.long	.LASF1028
	.sleb128 14
	.uleb128 0x10
	.long	.LASF1029
	.sleb128 15
	.uleb128 0x10
	.long	.LASF1030
	.sleb128 16
	.uleb128 0x10
	.long	.LASF1031
	.sleb128 17
	.uleb128 0x10
	.long	.LASF1032
	.sleb128 18
	.uleb128 0x10
	.long	.LASF1033
	.sleb128 19
	.uleb128 0x10
	.long	.LASF1034
	.sleb128 20
	.uleb128 0x10
	.long	.LASF1035
	.sleb128 21
	.uleb128 0x10
	.long	.LASF1036
	.sleb128 22
	.uleb128 0x10
	.long	.LASF1037
	.sleb128 23
	.uleb128 0x10
	.long	.LASF1038
	.sleb128 24
	.uleb128 0x10
	.long	.LASF1039
	.sleb128 25
	.uleb128 0x10
	.long	.LASF1040
	.sleb128 26
	.uleb128 0x10
	.long	.LASF1041
	.sleb128 27
	.uleb128 0x10
	.long	.LASF1042
	.sleb128 28
	.uleb128 0x10
	.long	.LASF1043
	.sleb128 29
	.uleb128 0x10
	.long	.LASF1044
	.sleb128 30
	.uleb128 0x10
	.long	.LASF1045
	.sleb128 31
	.uleb128 0x10
	.long	.LASF1046
	.sleb128 32
	.uleb128 0x10
	.long	.LASF1047
	.sleb128 33
	.uleb128 0x10
	.long	.LASF1048
	.sleb128 34
	.uleb128 0x10
	.long	.LASF1049
	.sleb128 35
	.uleb128 0x10
	.long	.LASF1050
	.sleb128 36
	.uleb128 0x10
	.long	.LASF1051
	.sleb128 37
	.uleb128 0x10
	.long	.LASF1052
	.sleb128 38
	.uleb128 0x10
	.long	.LASF1053
	.sleb128 39
	.uleb128 0x10
	.long	.LASF1054
	.sleb128 40
	.uleb128 0x10
	.long	.LASF1055
	.sleb128 41
	.uleb128 0x10
	.long	.LASF1056
	.sleb128 42
	.uleb128 0x10
	.long	.LASF1057
	.sleb128 43
	.uleb128 0x10
	.long	.LASF1058
	.sleb128 44
	.uleb128 0x10
	.long	.LASF1059
	.sleb128 45
	.uleb128 0x10
	.long	.LASF1060
	.sleb128 46
	.uleb128 0x10
	.long	.LASF1061
	.sleb128 47
	.uleb128 0x10
	.long	.LASF1062
	.sleb128 48
	.uleb128 0x10
	.long	.LASF1063
	.sleb128 49
	.uleb128 0x10
	.long	.LASF1064
	.sleb128 50
	.uleb128 0x10
	.long	.LASF1065
	.sleb128 51
	.uleb128 0x10
	.long	.LASF1066
	.sleb128 52
	.uleb128 0x10
	.long	.LASF1067
	.sleb128 53
	.uleb128 0x10
	.long	.LASF1068
	.sleb128 54
	.uleb128 0x10
	.long	.LASF1069
	.sleb128 55
	.uleb128 0x10
	.long	.LASF1070
	.sleb128 56
	.uleb128 0x10
	.long	.LASF1071
	.sleb128 57
	.uleb128 0x10
	.long	.LASF1072
	.sleb128 58
	.uleb128 0x10
	.long	.LASF1073
	.sleb128 59
	.uleb128 0x10
	.long	.LASF1074
	.sleb128 60
	.uleb128 0x10
	.long	.LASF1075
	.sleb128 61
	.uleb128 0x10
	.long	.LASF1076
	.sleb128 62
	.uleb128 0x10
	.long	.LASF1077
	.sleb128 63
	.uleb128 0x10
	.long	.LASF1078
	.sleb128 64
	.uleb128 0x10
	.long	.LASF1079
	.sleb128 65
	.uleb128 0x10
	.long	.LASF1080
	.sleb128 66
	.uleb128 0x10
	.long	.LASF1081
	.sleb128 67
	.uleb128 0x10
	.long	.LASF1082
	.sleb128 68
	.uleb128 0x10
	.long	.LASF1083
	.sleb128 69
	.uleb128 0x10
	.long	.LASF1084
	.sleb128 70
	.uleb128 0x10
	.long	.LASF1085
	.sleb128 71
	.uleb128 0x10
	.long	.LASF1086
	.sleb128 72
	.uleb128 0x10
	.long	.LASF1087
	.sleb128 73
	.uleb128 0x10
	.long	.LASF1088
	.sleb128 74
	.uleb128 0x10
	.long	.LASF1089
	.sleb128 75
	.uleb128 0x10
	.long	.LASF1090
	.sleb128 76
	.uleb128 0x10
	.long	.LASF1091
	.sleb128 77
	.uleb128 0x10
	.long	.LASF1092
	.sleb128 78
	.uleb128 0x10
	.long	.LASF1093
	.sleb128 79
	.uleb128 0x10
	.long	.LASF1094
	.sleb128 80
	.uleb128 0x10
	.long	.LASF1095
	.sleb128 81
	.uleb128 0x10
	.long	.LASF1096
	.sleb128 82
	.uleb128 0x10
	.long	.LASF1097
	.sleb128 83
	.uleb128 0x10
	.long	.LASF1098
	.sleb128 84
	.uleb128 0x10
	.long	.LASF1099
	.sleb128 85
	.uleb128 0x10
	.long	.LASF1100
	.sleb128 86
	.uleb128 0x10
	.long	.LASF1101
	.sleb128 87
	.uleb128 0x10
	.long	.LASF1102
	.sleb128 88
	.uleb128 0x10
	.long	.LASF1103
	.sleb128 89
	.uleb128 0x10
	.long	.LASF1104
	.sleb128 90
	.uleb128 0x10
	.long	.LASF1105
	.sleb128 91
	.uleb128 0x10
	.long	.LASF1106
	.sleb128 92
	.uleb128 0x10
	.long	.LASF1107
	.sleb128 93
	.uleb128 0x10
	.long	.LASF1108
	.sleb128 94
	.uleb128 0x10
	.long	.LASF1109
	.sleb128 95
	.uleb128 0x10
	.long	.LASF1110
	.sleb128 96
	.uleb128 0x10
	.long	.LASF1111
	.sleb128 97
	.byte	0
	.uleb128 0x4
	.long	.LASF1112
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.long	0x2d3d
	.uleb128 0x8
	.long	.LASF952
	.byte	0x8
	.byte	0x2d
	.long	0x2d3d
	.byte	0
	.uleb128 0x8
	.long	.LASF693
	.byte	0x8
	.byte	0x2e
	.long	0x2d3d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF322
	.byte	0x8
	.byte	0x2f
	.long	0x310
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1113
	.byte	0x8
	.byte	0x30
	.long	0x2d43
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d00
	.uleb128 0x15
	.long	0x32b
	.long	0x2d53
	.uleb128 0x16
	.long	0x1ea
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF1114
	.byte	0x8
	.byte	0x31
	.long	0x2d00
	.uleb128 0x3
	.byte	0x8
	.long	0x2d53
	.uleb128 0x7
	.long	.LASF1115
	.byte	0x8
	.byte	0x39
	.long	0xbaf
	.uleb128 0x15
	.long	0x32b
	.long	0x2d7f
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF1116
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.long	0x2da4
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
	.long	0x310
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF1117
	.byte	0x10
	.byte	0x10
	.byte	0x3a
	.long	0x2e89
	.uleb128 0x1e
	.string	"c"
	.byte	0x10
	.byte	0x3b
	.long	0x36b
	.uleb128 0x1e
	.string	"uc"
	.byte	0x10
	.byte	0x3c
	.long	0x2e89
	.uleb128 0x1e
	.string	"s"
	.byte	0x10
	.byte	0x3d
	.long	0x2e99
	.uleb128 0x1e
	.string	"us"
	.byte	0x10
	.byte	0x3e
	.long	0x2ea9
	.uleb128 0x1e
	.string	"i"
	.byte	0x10
	.byte	0x3f
	.long	0x2eb9
	.uleb128 0x1e
	.string	"u"
	.byte	0x10
	.byte	0x40
	.long	0x2ec9
	.uleb128 0x1e
	.string	"l"
	.byte	0x10
	.byte	0x41
	.long	0x2ed9
	.uleb128 0x1e
	.string	"ul"
	.byte	0x10
	.byte	0x42
	.long	0x2d6f
	.uleb128 0x1d
	.long	.LASF1118
	.byte	0x10
	.byte	0x43
	.long	0x2ed9
	.uleb128 0x1d
	.long	.LASF1119
	.byte	0x10
	.byte	0x44
	.long	0x2d6f
	.uleb128 0x1d
	.long	.LASF1120
	.byte	0x10
	.byte	0x45
	.long	0x2ee9
	.uleb128 0x1d
	.long	.LASF1121
	.byte	0x10
	.byte	0x46
	.long	0x2ef9
	.uleb128 0x1e
	.string	"rtx"
	.byte	0x10
	.byte	0x47
	.long	0x2f09
	.uleb128 0x1d
	.long	.LASF10
	.byte	0x10
	.byte	0x48
	.long	0x2f19
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x10
	.byte	0x49
	.long	0x2f29
	.uleb128 0x1d
	.long	.LASF1115
	.byte	0x10
	.byte	0x4a
	.long	0x2f39
	.uleb128 0x1d
	.long	.LASF1122
	.byte	0x10
	.byte	0x4b
	.long	0x2f49
	.uleb128 0x1e
	.string	"reg"
	.byte	0x10
	.byte	0x4c
	.long	0x2f64
	.uleb128 0x1d
	.long	.LASF1123
	.byte	0x10
	.byte	0x4d
	.long	0x2f7f
	.uleb128 0x1e
	.string	"bb"
	.byte	0x10
	.byte	0x4e
	.long	0x2f8f
	.uleb128 0x1e
	.string	"te"
	.byte	0x10
	.byte	0x4f
	.long	0x2f9f
	.byte	0
	.uleb128 0x15
	.long	0x332
	.long	0x2e99
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x347
	.long	0x2ea9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x339
	.long	0x2eb9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x1e3
	.long	0x2ec9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x310
	.long	0x2ed9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x319
	.long	0x2ee9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x317
	.long	0x2ef9
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x34e
	.long	0x2f09
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x38
	.long	0x2f19
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xf8
	.long	0x2f29
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x12e
	.long	0x2f39
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xbaf
	.long	0x2f49
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2f59
	.long	0x2f59
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f5f
	.uleb128 0x1f
	.long	.LASF1124
	.uleb128 0x15
	.long	0x2f74
	.long	0x2f74
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2f7a
	.uleb128 0x1f
	.long	.LASF1125
	.uleb128 0x15
	.long	0x2d7f
	.long	0x2f8f
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0xc82
	.long	0x2f9f
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x2faf
	.long	0x2faf
	.uleb128 0x16
	.long	0x1ea
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2fb5
	.uleb128 0x1f
	.long	.LASF1126
	.uleb128 0x7
	.long	.LASF1127
	.byte	0x10
	.byte	0x50
	.long	0x2da4
	.uleb128 0x4
	.long	.LASF1128
	.byte	0x30
	.byte	0x10
	.byte	0x53
	.long	0x300e
	.uleb128 0x8
	.long	.LASF1129
	.byte	0x10
	.byte	0x54
	.long	0x320
	.byte	0
	.uleb128 0x8
	.long	.LASF1130
	.byte	0x10
	.byte	0x55
	.long	0x320
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1131
	.byte	0x10
	.byte	0x57
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF745
	.byte	0x10
	.byte	0x58
	.long	0x38b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1132
	.byte	0x10
	.byte	0x59
	.long	0x2fba
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF1133
	.byte	0x10
	.byte	0x5a
	.long	0x3019
	.uleb128 0x3
	.byte	0x8
	.long	0x2fc5
	.uleb128 0x7
	.long	.LASF1134
	.byte	0x9
	.byte	0x21
	.long	0x2d64
	.uleb128 0x7
	.long	.LASF1135
	.byte	0x9
	.byte	0x74
	.long	0x319
	.uleb128 0x4
	.long	.LASF1136
	.byte	0x40
	.byte	0x9
	.byte	0x77
	.long	0x30ae
	.uleb128 0x8
	.long	.LASF1137
	.byte	0x9
	.byte	0x79
	.long	0x30ae
	.byte	0
	.uleb128 0x8
	.long	.LASF1138
	.byte	0x9
	.byte	0x79
	.long	0x30ae
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x9
	.byte	0x7c
	.long	0xc82
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1139
	.byte	0x9
	.byte	0x7c
	.long	0xc82
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1140
	.byte	0x9
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0x82
	.long	0x317
	.byte	0x28
	.uleb128 0x8
	.long	.LASF337
	.byte	0x9
	.byte	0x84
	.long	0x1e3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1141
	.byte	0x9
	.byte	0x85
	.long	0x1e3
	.byte	0x34
	.uleb128 0x8
	.long	.LASF335
	.byte	0x9
	.byte	0x86
	.long	0x302a
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3035
	.uleb128 0x7
	.long	.LASF1142
	.byte	0x9
	.byte	0x88
	.long	0x30ae
	.uleb128 0x4
	.long	.LASF1143
	.byte	0x38
	.byte	0x1
	.byte	0x5a
	.long	0x3120
	.uleb128 0x8
	.long	.LASF1144
	.byte	0x1
	.byte	0x5c
	.long	0x3120
	.byte	0
	.uleb128 0x8
	.long	.LASF1145
	.byte	0x1
	.byte	0x5d
	.long	0x3120
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1146
	.byte	0x1
	.byte	0x5e
	.long	0x3120
	.byte	0x10
	.uleb128 0x6
	.string	"low"
	.byte	0x1
	.byte	0x5f
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF679
	.byte	0x1
	.byte	0x60
	.long	0x123
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1147
	.byte	0x1
	.byte	0x61
	.long	0x123
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1148
	.byte	0x1
	.byte	0x62
	.long	0x1e3
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x30bf
	.uleb128 0x7
	.long	.LASF1149
	.byte	0x1
	.byte	0x66
	.long	0x3120
	.uleb128 0x1b
	.byte	0x10
	.byte	0x1
	.byte	0x95
	.long	0x3152
	.uleb128 0x8
	.long	.LASF1150
	.byte	0x1
	.byte	0x9a
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1151
	.byte	0x1
	.byte	0x9d
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.byte	0x20
	.byte	0x1
	.byte	0xa0
	.long	0x318b
	.uleb128 0x8
	.long	.LASF1152
	.byte	0x1
	.byte	0xa3
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1153
	.byte	0x1
	.byte	0xa5
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1154
	.byte	0x1
	.byte	0xa8
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1155
	.byte	0x1
	.byte	0xab
	.long	0x2d
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.byte	0x58
	.byte	0x1
	.byte	0xae
	.long	0x3230
	.uleb128 0x8
	.long	.LASF1156
	.byte	0x1
	.byte	0xb2
	.long	0x1e3
	.byte	0
	.uleb128 0x8
	.long	.LASF1157
	.byte	0x1
	.byte	0xb4
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1158
	.byte	0x1
	.byte	0xb8
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1159
	.byte	0x1
	.byte	0xba
	.long	0x3279
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1160
	.byte	0x1
	.byte	0xbf
	.long	0x123
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1161
	.byte	0x1
	.byte	0xc8
	.long	0x123
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1162
	.byte	0x1
	.byte	0xcb
	.long	0x32a7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF1163
	.byte	0x1
	.byte	0xcd
	.long	0x1e3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF1164
	.byte	0x1
	.byte	0xcf
	.long	0x1e3
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF1165
	.byte	0x1
	.byte	0xd5
	.long	0x1e3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF1166
	.byte	0x1
	.byte	0xda
	.long	0x1e3
	.byte	0x44
	.uleb128 0x8
	.long	.LASF1167
	.byte	0x1
	.byte	0xdf
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF1168
	.byte	0x1
	.byte	0xe3
	.long	0x2716
	.byte	0x50
	.byte	0
	.uleb128 0x4
	.long	.LASF1169
	.byte	0x78
	.byte	0x1
	.byte	0x8c
	.long	0x3279
	.uleb128 0x6
	.string	"all"
	.byte	0x1
	.byte	0x8e
	.long	0x3279
	.byte	0
	.uleb128 0x8
	.long	.LASF952
	.byte	0x1
	.byte	0x8f
	.long	0x3279
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1170
	.byte	0x1
	.byte	0x90
	.long	0x1e3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1171
	.byte	0x1
	.byte	0x91
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1132
	.byte	0x1
	.byte	0xfd
	.long	0x330a
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3230
	.uleb128 0x11
	.long	.LASF1162
	.byte	0x10
	.byte	0x1
	.value	0x147
	.long	0x32a7
	.uleb128 0x12
	.long	.LASF952
	.byte	0x1
	.value	0x14a
	.long	0x32a7
	.byte	0
	.uleb128 0x12
	.long	.LASF1172
	.byte	0x1
	.value	0x14b
	.long	0x123
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x327f
	.uleb128 0x1b
	.byte	0x38
	.byte	0x1
	.byte	0xe7
	.long	0x330a
	.uleb128 0x8
	.long	.LASF1173
	.byte	0x1
	.byte	0xeb
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF1174
	.byte	0x1
	.byte	0xef
	.long	0x3120
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1175
	.byte	0x1
	.byte	0xf1
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1176
	.byte	0x1
	.byte	0xf3
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1177
	.byte	0x1
	.byte	0xf5
	.long	0x123
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1178
	.byte	0x1
	.byte	0xf7
	.long	0x38b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1179
	.byte	0x1
	.byte	0xfb
	.long	0x1e3
	.byte	0x30
	.byte	0
	.uleb128 0x2a
	.byte	0x58
	.byte	0x1
	.byte	0x92
	.long	0x333f
	.uleb128 0x1d
	.long	.LASF1180
	.byte	0x1
	.byte	0x9e
	.long	0x3131
	.uleb128 0x1d
	.long	.LASF1181
	.byte	0x1
	.byte	0xac
	.long	0x3152
	.uleb128 0x1d
	.long	.LASF26
	.byte	0x1
	.byte	0xe4
	.long	0x318b
	.uleb128 0x1d
	.long	.LASF1182
	.byte	0x1
	.byte	0xfc
	.long	0x32ad
	.byte	0
	.uleb128 0x11
	.long	.LASF1183
	.byte	0x40
	.byte	0x1
	.value	0x125
	.long	0x33b5
	.uleb128 0x12
	.long	.LASF952
	.byte	0x1
	.value	0x128
	.long	0x33b5
	.byte	0
	.uleb128 0x12
	.long	.LASF1184
	.byte	0x1
	.value	0x12b
	.long	0x2d
	.byte	0x8
	.uleb128 0x12
	.long	.LASF1185
	.byte	0x1
	.value	0x12e
	.long	0x123
	.byte	0x10
	.uleb128 0x12
	.long	.LASF751
	.byte	0x1
	.value	0x130
	.long	0x123
	.byte	0x18
	.uleb128 0x12
	.long	.LASF1186
	.byte	0x1
	.value	0x132
	.long	0x2d
	.byte	0x20
	.uleb128 0x12
	.long	.LASF1156
	.byte	0x1
	.value	0x135
	.long	0x1e3
	.byte	0x28
	.uleb128 0x12
	.long	.LASF1157
	.byte	0x1
	.value	0x139
	.long	0x2d
	.byte	0x30
	.uleb128 0x12
	.long	.LASF1187
	.byte	0x1
	.value	0x141
	.long	0x123
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x333f
	.uleb128 0x2b
	.long	.LASF1196
	.byte	0x1
	.value	0x1b8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF1188
	.byte	0x1
	.value	0x1c0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x346c
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x1c1
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x3425
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x344a
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1189
	.byte	0x1
	.value	0x1d0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x354e
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x1d1
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x34bd
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x34e2
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x3507
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1d8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x352c
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1d9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1190
	.byte	0x1
	.value	0x1e3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c1
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x1e4
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2f
	.string	"l"
	.byte	0x1
	.value	0x1e8
	.long	0x32a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x35bf
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1ea
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x2e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x35e5
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1eb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x360a
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1ec
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x362f
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x1ed
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x3654
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x1ee
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x3679
	.uleb128 0x2f
	.string	"a__"
	.byte	0x1
	.value	0x1f2
	.long	0x43b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x369e
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x1f3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x1f6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1191
	.byte	0x1
	.value	0x201
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x37a3
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.value	0x202
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x3712
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x206
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x3737
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x207
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x375c
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x209
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x3781
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x20a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x20b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1192
	.byte	0x1
	.value	0x215
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x383a
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x216
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x37f3
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x21a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x3818
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x21b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x21c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1193
	.byte	0x1
	.value	0x226
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3967
	.uleb128 0x2d
	.string	"g"
	.byte	0x1
	.value	0x227
	.long	0x33b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x388c
	.uleb128 0x2f
	.string	"a__"
	.byte	0x1
	.value	0x22b
	.long	0x43b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2e
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x38b1
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x22c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x38d6
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x22d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2e
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x38fb
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x22e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x3920
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x22f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3945
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x230
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x231
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1194
	.byte	0x1
	.value	0x23c
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3993
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.value	0x23d
	.long	0x21d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1195
	.byte	0x1
	.value	0x24a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a05
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x24b
	.long	0x29c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x39e3
	.uleb128 0x2f
	.string	"t__"
	.byte	0x1
	.value	0x255
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2f
	.string	"r__"
	.byte	0x1
	.value	0x258
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1197
	.byte	0x1
	.value	0x25e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF1198
	.byte	0x1
	.value	0x264
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF1319
	.byte	0x1
	.value	0x27f
	.long	0x1e3
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF1199
	.byte	0x1
	.value	0x286
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a94
	.uleb128 0x35
	.long	.LASF1200
	.byte	0x1
	.value	0x287
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1201
	.byte	0x1
	.value	0x288
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF1202
	.byte	0x1
	.value	0x297
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac2
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0x299
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1235
	.byte	0x1
	.value	0x2a7
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b07
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x2a8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1218
	.long	0x3b17
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13917
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x3b17
	.uleb128 0x16
	.long	0x1ea
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.long	0x3b07
	.uleb128 0x31
	.long	.LASF1204
	.byte	0x1
	.value	0x2b7
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b4a
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x2b8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1205
	.byte	0x1
	.value	0x2c3
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b85
	.uleb128 0x2d
	.string	"exp"
	.byte	0x1
	.value	0x2c4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x2c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1206
	.byte	0x1
	.value	0x2e2
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bc0
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x2e3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x2e5
	.long	0x32a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1207
	.byte	0x1
	.value	0x2f9
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bfd
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x2fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1208
	.byte	0x1
	.value	0x2fc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF1209
	.byte	0x1
	.value	0x30f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cb8
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x310
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF751
	.byte	0x1
	.value	0x312
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x318
	.long	0x21d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1210
	.byte	0x1
	.value	0x319
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1211
	.byte	0x1
	.value	0x31a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1212
	.byte	0x1
	.value	0x31a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1213
	.byte	0x1
	.value	0x31a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0x31a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1215
	.byte	0x1
	.value	0x31b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1216
	.byte	0x1
	.value	0x368
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d35
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x369
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x36a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1203
	.byte	0x1
	.value	0x36b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x36d
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1157
	.byte	0x1
	.value	0x36e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.long	.LASF1218
	.long	0x3d45
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13957
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x3d45
	.uleb128 0x16
	.long	0x1ea
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x3d35
	.uleb128 0x39
	.long	.LASF1232
	.byte	0x1
	.value	0x3bf
	.long	0x1e3
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e51
	.uleb128 0x35
	.long	.LASF1219
	.byte	0x1
	.value	0x3c0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1220
	.byte	0x1
	.value	0x3c1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1203
	.byte	0x1
	.value	0x3c2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x3c4
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1221
	.byte	0x1
	.value	0x3c4
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0x3de1
	.uleb128 0x36
	.long	.LASF1222
	.byte	0x1
	.value	0x3de
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x36
	.long	.LASF1223
	.byte	0x1
	.value	0x3fd
	.long	0x33b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x36
	.long	.LASF1224
	.byte	0x1
	.value	0x417
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1173
	.byte	0x1
	.value	0x419
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.value	0x41a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x41b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1225
	.byte	0x1
	.value	0x44a
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e7f
	.uleb128 0x35
	.long	.LASF1158
	.byte	0x1
	.value	0x44b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1226
	.byte	0x1
	.value	0x45e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f80
	.uleb128 0x35
	.long	.LASF1227
	.byte	0x1
	.value	0x45f
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1157
	.byte	0x1
	.value	0x460
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1228
	.byte	0x1
	.value	0x461
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1158
	.byte	0x1
	.value	0x462
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1229
	.byte	0x1
	.value	0x463
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0x465
	.long	0x33b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF693
	.byte	0x1
	.value	0x465
	.long	0x33b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x3f4f
	.uleb128 0x36
	.long	.LASF1230
	.byte	0x1
	.value	0x479
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x36
	.long	.LASF1231
	.byte	0x1
	.value	0x4a0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x36
	.long	.LASF1231
	.byte	0x1
	.value	0x4db
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1230
	.byte	0x1
	.value	0x4dc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1233
	.byte	0x1
	.value	0x4f9
	.long	0x1e3
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fca
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x4fa
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x4fb
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x4fd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF1234
	.byte	0x1
	.value	0x508
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff8
	.uleb128 0x35
	.long	.LASF1217
	.byte	0x1
	.value	0x509
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1236
	.byte	0x1
	.value	0x521
	.long	0x270f
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x40d6
	.uleb128 0x35
	.long	.LASF1237
	.byte	0x1
	.value	0x523
	.long	0x40d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1238
	.byte	0x1
	.value	0x524
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	.LASF1239
	.byte	0x1
	.value	0x525
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1240
	.byte	0x1
	.value	0x526
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF1241
	.byte	0x1
	.value	0x527
	.long	0x271c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1242
	.byte	0x1
	.value	0x528
	.long	0x271c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1243
	.byte	0x1
	.value	0x529
	.long	0x271c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x52b
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x52c
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x2f
	.string	"buf"
	.byte	0x1
	.value	0x54a
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1245
	.byte	0x1
	.value	0x54b
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x38b
	.uleb128 0x39
	.long	.LASF1246
	.byte	0x1
	.value	0x5a8
	.long	0x270f
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e7
	.uleb128 0x35
	.long	.LASF1237
	.byte	0x1
	.value	0x5aa
	.long	0x40d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1247
	.byte	0x1
	.value	0x5ab
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x35
	.long	.LASF1239
	.byte	0x1
	.value	0x5ac
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1240
	.byte	0x1
	.value	0x5ad
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF1248
	.byte	0x1
	.value	0x5ae
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1249
	.byte	0x1
	.value	0x5af
	.long	0x41e7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1241
	.byte	0x1
	.value	0x5b0
	.long	0x271c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF1242
	.byte	0x1
	.value	0x5b1
	.long	0x271c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x5b3
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1250
	.byte	0x1
	.value	0x5b4
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1245
	.byte	0x1
	.value	0x5b5
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.value	0x5b6
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.value	0x5e7
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1251
	.byte	0x1
	.value	0x5e8
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x270a
	.uleb128 0x31
	.long	.LASF1252
	.byte	0x1
	.value	0x634
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4610
	.uleb128 0x35
	.long	.LASF20
	.byte	0x1
	.value	0x635
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0x635
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x635
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x35
	.long	.LASF1255
	.byte	0x1
	.value	0x635
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x2d
	.string	"vol"
	.byte	0x1
	.value	0x636
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x35
	.long	.LASF835
	.byte	0x1
	.value	0x637
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x35
	.long	.LASF1201
	.byte	0x1
	.value	0x638
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.long	.LASF1256
	.byte	0x1
	.value	0x63a
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.long	.LASF1257
	.byte	0x1
	.value	0x63a
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x36
	.long	.LASF1217
	.byte	0x1
	.value	0x63b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1239
	.byte	0x1
	.value	0x63c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x36
	.long	.LASF1240
	.byte	0x1
	.value	0x63d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x36
	.long	.LASF1248
	.byte	0x1
	.value	0x63e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x36
	.long	.LASF1258
	.byte	0x1
	.value	0x63f
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x36
	.long	.LASF1259
	.byte	0x1
	.value	0x640
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x641
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x36
	.long	.LASF1260
	.byte	0x1
	.value	0x643
	.long	0xe2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x36
	.long	.LASF1261
	.byte	0x1
	.value	0x644
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x36
	.long	.LASF1262
	.byte	0x1
	.value	0x645
	.long	0xe2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x36
	.long	.LASF1263
	.byte	0x1
	.value	0x646
	.long	0x4610
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF1249
	.byte	0x1
	.value	0x648
	.long	0x40d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0x64b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1264
	.byte	0x1
	.value	0x64c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x38
	.long	.LASF1218
	.long	0x4616
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14197
	.uleb128 0x2e
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x43b1
	.uleb128 0x36
	.long	.LASF1265
	.byte	0x1
	.value	0x667
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2e
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x4427
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x678
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x679
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x67a
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x36
	.long	.LASF1243
	.byte	0x1
	.value	0x67b
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -287
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0x67c
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -286
	.uleb128 0x36
	.long	.LASF1241
	.byte	0x1
	.value	0x67d
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -285
	.byte	0
	.uleb128 0x2e
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x446d
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0x69f
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -286
	.uleb128 0x36
	.long	.LASF1241
	.byte	0x1
	.value	0x69f
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -285
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x6a0
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x2e
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.long	0x44d3
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x6b5
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x6b6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.long	.LASF1243
	.byte	0x1
	.value	0x6b7
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -286
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0x6b8
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -285
	.uleb128 0x36
	.long	.LASF1241
	.byte	0x1
	.value	0x6b9
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x2e
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x457a
	.uleb128 0x36
	.long	.LASF1242
	.byte	0x1
	.value	0x700
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -286
	.uleb128 0x36
	.long	.LASF1241
	.byte	0x1
	.value	0x700
	.long	0x270f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -285
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x701
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x702
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x702
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x703
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x30
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x36
	.long	.LASF1266
	.byte	0x1
	.value	0x722
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1267
	.byte	0x1
	.value	0x725
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x45ad
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.value	0x750
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x36
	.long	.LASF1268
	.byte	0x1
	.value	0x751
	.long	0x461b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x30
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x36
	.long	.LASF1269
	.byte	0x1
	.value	0x770
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"num"
	.byte	0x1
	.value	0x771
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x30
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x36
	.long	.LASF1265
	.byte	0x1
	.value	0x791
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.value	0x792
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x442
	.uleb128 0xc
	.long	0x37b
	.uleb128 0x15
	.long	0x354
	.long	0x462b
	.uleb128 0x16
	.long	0x1ea
	.byte	0xf
	.byte	0
	.uleb128 0x39
	.long	.LASF1270
	.byte	0x1
	.value	0x7bc
	.long	0x270f
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x46cc
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0x7bd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x7bd
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2f
	.string	"tmp"
	.byte	0x1
	.value	0x7c1
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1271
	.byte	0x1
	.value	0x7c2
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x36
	.long	.LASF952
	.byte	0x1
	.value	0x7c4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x36
	.long	.LASF1244
	.byte	0x1
	.value	0x7cf
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1272
	.byte	0x1
	.value	0x7e8
	.long	0x270f
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x477d
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0x7e9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x7e9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x7eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.value	0x7eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF1277
	.byte	0x1
	.value	0x808
	.quad	.L419
	.uleb128 0x2e
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x475b
	.uleb128 0x36
	.long	.LASF1273
	.byte	0x1
	.value	0x7ef
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x36
	.long	.LASF1273
	.byte	0x1
	.value	0x7fa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1274
	.byte	0x1
	.value	0x813
	.long	0x123
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4826
	.uleb128 0x35
	.long	.LASF20
	.byte	0x1
	.value	0x814
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0x815
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x815
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1275
	.byte	0x1
	.value	0x816
	.long	0x40d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1268
	.byte	0x1
	.value	0x818
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x819
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x81a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x83c
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1276
	.byte	0x1
	.value	0x853
	.long	0x34e
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4955
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x854
	.long	0x34e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1253
	.byte	0x1
	.value	0x855
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1254
	.byte	0x1
	.value	0x855
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"q"
	.byte	0x1
	.value	0x857
	.long	0x34e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"op"
	.byte	0x1
	.value	0x858
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x859
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"len"
	.byte	0x1
	.value	0x85a
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.long	.LASF1278
	.byte	0x1
	.value	0x87e
	.quad	.L453
	.uleb128 0x38
	.long	.LASF1218
	.long	0x4965
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14316
	.uleb128 0x2e
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x4915
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x868
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x86b
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.uleb128 0x2f
	.string	"id"
	.byte	0x1
	.value	0x872
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.uleb128 0x2f
	.string	"c"
	.byte	0x1
	.value	0x875
	.long	0x38b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x4965
	.uleb128 0x16
	.long	0x1ea
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.long	0x4955
	.uleb128 0x31
	.long	.LASF1279
	.byte	0x1
	.value	0x896
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4998
	.uleb128 0x2d
	.string	"exp"
	.byte	0x1
	.value	0x897
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1280
	.byte	0x1
	.value	0x8a2
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a23
	.uleb128 0x2d
	.string	"exp"
	.byte	0x1
	.value	0x8a3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1281
	.byte	0x1
	.value	0x8a4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x35
	.long	.LASF1282
	.byte	0x1
	.value	0x8a4
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0x8a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x8a7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x2f
	.string	"lab"
	.byte	0x1
	.value	0x8d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1283
	.byte	0x1
	.value	0x8f6
	.long	0x1e3
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a86
	.uleb128 0x2d
	.string	"exp"
	.byte	0x1
	.value	0x8f7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	.LASF1284
	.byte	0x1
	.value	0x954
	.quad	.L495
	.uleb128 0x30
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.uleb128 0x2f
	.string	"tem"
	.byte	0x1
	.value	0x934
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF1285
	.byte	0x1
	.value	0x962
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1286
	.byte	0x1
	.value	0x96f
	.long	0x123
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x4adf
	.uleb128 0x35
	.long	.LASF1287
	.byte	0x1
	.value	0x970
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x972
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1288
	.byte	0x1
	.value	0x98f
	.long	0x123
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b0f
	.uleb128 0x2d
	.string	"t"
	.byte	0x1
	.value	0x990
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF1289
	.byte	0x1
	.value	0x9b9
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x4be2
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0x9ba
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1290
	.byte	0x1
	.value	0x9bb
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x36
	.long	.LASF1291
	.byte	0x1
	.value	0x9bd
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0x9bd
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.long	0x4bb0
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x9bd
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0x9bd
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x30
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0x9bd
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0x9bd
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1294
	.byte	0x1
	.value	0x9d4
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c10
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0x9d5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.long	.LASF1295
	.byte	0x1
	.value	0x9e3
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1296
	.byte	0x1
	.value	0x9f1
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c58
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0x9f2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF1297
	.byte	0x1
	.value	0x9fc
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ce6
	.uleb128 0x36
	.long	.LASF1291
	.byte	0x1
	.value	0x9fe
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0xa06
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0xa06
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xa06
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0xa06
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1300
	.byte	0x1
	.value	0xa12
	.long	0x3279
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dad
	.uleb128 0x35
	.long	.LASF1301
	.byte	0x1
	.value	0xa13
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0xa15
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0xa15
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x4d7b
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xa15
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0xa15
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x30
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0xa15
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0xa15
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1303
	.byte	0x1
	.value	0xa30
	.long	0x3279
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dee
	.uleb128 0x35
	.long	.LASF1301
	.byte	0x1
	.value	0xa31
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0xa33
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x37
	.long	.LASF1304
	.byte	0x1
	.value	0xa3c
	.long	0x3279
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ea5
	.uleb128 0x36
	.long	.LASF1302
	.byte	0x1
	.value	0xa3e
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0xa3e
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x4e73
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xa3e
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0xa3e
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x30
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0xa3e
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0xa3e
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF1305
	.byte	0x1
	.value	0xa56
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1306
	.byte	0x1
	.value	0xa61
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ff7
	.uleb128 0x36
	.long	.LASF1152
	.byte	0x1
	.value	0xa63
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1307
	.byte	0x1
	.value	0xa64
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1308
	.byte	0x1
	.value	0xa65
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1309
	.byte	0x1
	.value	0xa65
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x38
	.long	.LASF1218
	.long	0x4ff7
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14431
	.uleb128 0x2e
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x4f96
	.uleb128 0x36
	.long	.LASF1310
	.byte	0x1
	.value	0xac3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1311
	.byte	0x1
	.value	0xac4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0xad5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1312
	.byte	0x1
	.value	0xad5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0xaef
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0xaef
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xaef
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0xaef
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x461b
	.uleb128 0x31
	.long	.LASF1313
	.byte	0x1
	.value	0xaf7
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x507b
	.uleb128 0x30
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0xafc
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0xafc
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xafc
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0xafc
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1314
	.byte	0x1
	.value	0xb07
	.long	0x1e3
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x50ad
	.uleb128 0x35
	.long	.LASF1315
	.byte	0x1
	.value	0xb08
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1316
	.byte	0x1
	.value	0xb18
	.long	0x1e3
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x50df
	.uleb128 0x35
	.long	.LASF1315
	.byte	0x1
	.value	0xb19
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1317
	.byte	0x1
	.value	0xb29
	.long	0x1e3
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x513e
	.uleb128 0x35
	.long	.LASF1315
	.byte	0x1
	.value	0xb2a
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0xb2b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1172
	.byte	0x1
	.value	0xb2d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0xb2e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1318
	.byte	0x1
	.value	0xb49
	.long	0x1e3
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x517f
	.uleb128 0x35
	.long	.LASF1315
	.byte	0x1
	.value	0xb4a
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1180
	.byte	0x1
	.value	0xb4b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x33
	.long	.LASF1320
	.byte	0x1
	.value	0xb57
	.long	0x1e3
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.long	.LASF1321
	.byte	0x1
	.value	0xb67
	.long	0x1e3
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x51cf
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0xb69
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1322
	.byte	0x1
	.value	0xb83
	.long	0x1e3
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x51ff
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0xb85
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1323
	.byte	0x1
	.value	0xb95
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x522d
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0xb97
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1324
	.byte	0x1
	.value	0xba4
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x529a
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0xba5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0xba7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1325
	.byte	0x1
	.value	0xba8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xbaf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1326
	.byte	0x1
	.value	0xbc7
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x52d7
	.uleb128 0x35
	.long	.LASF1203
	.byte	0x1
	.value	0xbc8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1153
	.byte	0x1
	.value	0xbca
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x31
	.long	.LASF1327
	.byte	0x1
	.value	0xbd9
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x54af
	.uleb128 0x35
	.long	.LASF1328
	.byte	0x1
	.value	0xbda
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF1203
	.byte	0x1
	.value	0xbe4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF1329
	.byte	0x1
	.value	0xbe5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0xbe6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1330
	.byte	0x1
	.value	0xbe7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x38
	.long	.LASF1218
	.long	0x54bf
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14525
	.uleb128 0x2e
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.long	0x538e
	.uleb128 0x36
	.long	.LASF1172
	.byte	0x1
	.value	0xc12
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF302
	.byte	0x1
	.value	0xc13
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2e
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.long	0x5480
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0xc35
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x36
	.long	.LASF1331
	.byte	0x1
	.value	0xc36
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF1332
	.byte	0x1
	.value	0xc36
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.long	.LASF1333
	.byte	0x1
	.value	0xc37
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1334
	.byte	0x1
	.value	0xc38
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1335
	.byte	0x1
	.value	0xc3a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF1336
	.byte	0x1
	.value	0xc3b
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x36
	.long	.LASF1337
	.byte	0x1
	.value	0xc3d
	.long	0xe2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1338
	.byte	0x1
	.value	0xc3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.string	"src"
	.byte	0x1
	.value	0xc3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.string	"dst"
	.byte	0x1
	.value	0xc3e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1339
	.byte	0x1
	.value	0xc3f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1340
	.byte	0x1
	.value	0xc40
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.long	.LASF1341
	.byte	0x1
	.value	0xc40
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x30
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.uleb128 0x2f
	.string	"ot"
	.byte	0x1
	.value	0xc9d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"nt"
	.byte	0x1
	.value	0xc9e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x54bf
	.uleb128 0x16
	.long	0x1ea
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	0x54af
	.uleb128 0x37
	.long	.LASF1342
	.byte	0x1
	.value	0xcb5
	.long	0x1e3
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x54f6
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0xcb7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1343
	.byte	0x1
	.value	0xcc4
	.long	0x1e3
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x5537
	.uleb128 0x35
	.long	.LASF862
	.byte	0x1
	.value	0xcc5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1203
	.byte	0x1
	.value	0xcc6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x39
	.long	.LASF1344
	.byte	0x1
	.value	0xce1
	.long	0x1e3
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x55df
	.uleb128 0x35
	.long	.LASF1345
	.byte	0x1
	.value	0xce2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1346
	.byte	0x1
	.value	0xce2
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.string	"a"
	.byte	0x1
	.value	0xce4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"f"
	.byte	0x1
	.value	0xce4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0xce5
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.long	.LASF1256
	.byte	0x1
	.value	0xce6
	.long	0xe2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x36
	.long	.LASF1347
	.byte	0x1
	.value	0xd06
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.value	0xd07
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1348
	.byte	0x1
	.value	0xd37
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f5
	.uleb128 0x35
	.long	.LASF337
	.byte	0x1
	.value	0xd38
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x35
	.long	.LASF26
	.byte	0x1
	.value	0xd39
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0xd3b
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1349
	.byte	0x1
	.value	0xd3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1301
	.byte	0x1
	.value	0xd3d
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1350
	.byte	0x1
	.value	0xd3e
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x38
	.long	.LASF1218
	.long	0x56f5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14581
	.uleb128 0x30
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0xd3b
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.long	0x56c3
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xd3b
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0xd3b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x30
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0xd3b
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0xd3b
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x425
	.uleb128 0x32
	.long	.LASF1351
	.byte	0x1
	.value	0xd7f
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF1352
	.byte	0x1
	.value	0xd8d
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1353
	.byte	0x1
	.value	0xda1
	.long	0x1e3
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x57a2
	.uleb128 0x35
	.long	.LASF758
	.byte	0x1
	.value	0xda2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.uleb128 0x36
	.long	.LASF1146
	.byte	0x1
	.value	0xda6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.uleb128 0x36
	.long	.LASF1354
	.byte	0x1
	.value	0xdaa
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1355
	.byte	0x1
	.value	0xdb9
	.long	0x1e3
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF1356
	.byte	0x1
	.value	0xdc2
	.long	0x3279
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF1357
	.byte	0x1
	.value	0xdcb
	.long	0x2d
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x583d
	.uleb128 0x35
	.long	.LASF1208
	.byte	0x1
	.value	0xdcc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1358
	.byte	0x1
	.value	0xdcc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0xdce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1359
	.byte	0x1
	.value	0xdcf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF1360
	.byte	0x1
	.value	0xde2
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x58b8
	.uleb128 0x30
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x11
	.long	.LASF1361
	.byte	0x8
	.byte	0x1
	.value	0xdfd
	.long	0x5893
	.uleb128 0x12
	.long	.LASF1362
	.byte	0x1
	.value	0xdfd
	.long	0x1de
	.byte	0
	.uleb128 0x21
	.string	"to"
	.byte	0x1
	.value	0xdfd
	.long	0x1de
	.byte	0x4
	.byte	0
	.uleb128 0x36
	.long	.LASF1363
	.byte	0x1
	.value	0xdfd
	.long	0x58c8
	.uleb128 0x9
	.byte	0x3
	.quad	elim_regs.14606
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0xdfe
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x586c
	.long	0x58c8
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x58b8
	.uleb128 0x2c
	.long	.LASF1364
	.byte	0x1
	.value	0xe1a
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c4
	.uleb128 0x35
	.long	.LASF1227
	.byte	0x1
	.value	0xe1b
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1215
	.byte	0x1
	.value	0xe1d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1365
	.byte	0x1
	.value	0xe1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1140
	.byte	0x1
	.value	0xe1f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1208
	.byte	0x1
	.value	0xe1f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1366
	.byte	0x1
	.value	0xe20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1367
	.byte	0x1
	.value	0xe21
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x597d
	.uleb128 0x36
	.long	.LASF1368
	.byte	0x1
	.value	0xe28
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2e
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x59a2
	.uleb128 0x2f
	.string	"lab"
	.byte	0x1
	.value	0xe3f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.uleb128 0x2f
	.string	"lab"
	.byte	0x1
	.value	0xe52
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1369
	.byte	0x1
	.value	0xe68
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a01
	.uleb128 0x35
	.long	.LASF722
	.byte	0x1
	.value	0xe69
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF23
	.byte	0x1
	.value	0xe6b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1370
	.byte	0x1
	.value	0xe83
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b70
	.uleb128 0x35
	.long	.LASF722
	.byte	0x1
	.value	0xe84
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF1371
	.byte	0x1
	.value	0xe85
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x35
	.long	.LASF1229
	.byte	0x1
	.value	0xe86
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0xe88
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.long	0x5a85
	.uleb128 0x36
	.long	.LASF654
	.byte	0x1
	.value	0xea6
	.long	0x32a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2e
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x5aea
	.uleb128 0x36
	.long	.LASF1372
	.byte	0x1
	.value	0xebd
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0xebe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1373
	.byte	0x1
	.value	0xec1
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1374
	.byte	0x1
	.value	0xec2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1375
	.byte	0x1
	.value	0xec3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2e
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.long	0x5b0f
	.uleb128 0x36
	.long	.LASF1349
	.byte	0x1
	.value	0xef0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0xefd
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0xefd
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0xefd
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0xefd
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1376
	.byte	0x1
	.value	0xf07
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b9e
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0xf09
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1377
	.byte	0x1
	.value	0xf18
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cda
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0xf19
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0xf1b
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0xf1c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.LASF1218
	.long	0x5cea
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14675
	.uleb128 0x2e
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.long	0x5c23
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xf3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2e
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x5c59
	.uleb128 0x36
	.long	.LASF951
	.byte	0x1
	.value	0xf54
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1378
	.byte	0x1
	.value	0xf55
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x2e
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.long	0x5c9c
	.uleb128 0x36
	.long	.LASF1379
	.byte	0x1
	.value	0xf75
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1380
	.byte	0x1
	.value	0xf76
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xf77
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x30
	.quad	.LBB104
	.quad	.LBE104-.LBB104
	.uleb128 0x36
	.long	.LASF728
	.byte	0x1
	.value	0xf98
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF304
	.byte	0x1
	.value	0xf98
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0xf98
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x354
	.long	0x5cea
	.uleb128 0x16
	.long	0x1ea
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x5cda
	.uleb128 0x31
	.long	.LASF1381
	.byte	0x1
	.value	0xfc3
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d4d
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0xfc4
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1382
	.byte	0x1
	.value	0xfc6
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.uleb128 0x36
	.long	.LASF0
	.byte	0x1
	.value	0xfd2
	.long	0xe86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1383
	.byte	0x1
	.value	0xff5
	.long	0x1e3
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e2e
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0xff6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1384
	.byte	0x1
	.value	0xff6
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0xff8
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.quad	.LBB106
	.quad	.LBE106-.LBB106
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1004
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"seq"
	.byte	0x1
	.value	0x1005
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1160
	.byte	0x1
	.value	0x1006
	.long	0x2716
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1385
	.byte	0x1
	.value	0x1007
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.uleb128 0x36
	.long	.LASF1386
	.byte	0x1
	.value	0x100b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1387
	.byte	0x1
	.value	0x100c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1180
	.byte	0x1
	.value	0x100d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1388
	.byte	0x1
	.value	0x1056
	.long	0x1e3
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x5eae
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1057
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1384
	.byte	0x1
	.value	0x1057
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1389
	.byte	0x1
	.value	0x1058
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.value	0x105a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x30
	.quad	.LBB108
	.quad	.LBE108-.LBB108
	.uleb128 0x36
	.long	.LASF1390
	.byte	0x1
	.value	0x105d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1391
	.byte	0x1
	.value	0x1068
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f78
	.uleb128 0x35
	.long	.LASF23
	.byte	0x1
	.value	0x1069
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1384
	.byte	0x1
	.value	0x1069
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF1392
	.byte	0x1
	.value	0x1069
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF1227
	.byte	0x1
	.value	0x106b
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"x"
	.byte	0x1
	.value	0x106c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x106d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x38
	.long	.LASF1218
	.long	0x5f78
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14717
	.uleb128 0x30
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.uleb128 0x36
	.long	.LASF1393
	.byte	0x1
	.value	0x107e
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1394
	.byte	0x1
	.value	0x107f
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0x1080
	.long	0x442
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x4955
	.uleb128 0x2c
	.long	.LASF1395
	.byte	0x1
	.value	0x10bd
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fe7
	.uleb128 0x35
	.long	.LASF25
	.byte	0x1
	.value	0x10be
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1396
	.byte	0x1
	.value	0x10bf
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1397
	.byte	0x1
	.value	0x10c0
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x35
	.long	.LASF1372
	.byte	0x1
	.value	0x10c1
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1259
	.byte	0x1
	.value	0x10c3
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF1398
	.byte	0x1
	.value	0x10f2
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF1399
	.byte	0x1
	.value	0x1100
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF1400
	.byte	0x1
	.value	0x110f
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x6058
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x1111
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF761
	.byte	0x1
	.value	0x1112
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x33
	.long	.LASF1401
	.byte	0x1
	.value	0x111b
	.long	0x123
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3c
	.long	.LASF1402
	.byte	0x1
	.value	0x1128
	.long	0x1e3
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x60b7
	.uleb128 0x35
	.long	.LASF1403
	.byte	0x1
	.value	0x1129
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x36
	.long	.LASF26
	.byte	0x1
	.value	0x112b
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1404
	.byte	0x1
	.value	0x114a
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x61aa
	.uleb128 0x35
	.long	.LASF1301
	.byte	0x1
	.value	0x114b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x35
	.long	.LASF302
	.byte	0x1
	.value	0x114c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x114d
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF1178
	.byte	0x1
	.value	0x114e
	.long	0x38b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1405
	.byte	0x1
	.value	0x1150
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0x1150
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x6178
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x1150
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0x1150
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x30
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0x1150
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0x1150
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1406
	.byte	0x1
	.value	0x1173
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x625d
	.uleb128 0x36
	.long	.LASF1405
	.byte	0x1
	.value	0x1175
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.uleb128 0x2f
	.string	"__h"
	.byte	0x1
	.value	0x1175
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.quad	.LBB114
	.quad	.LBE114-.LBB114
	.long	0x622b
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x1175
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1292
	.byte	0x1
	.value	0x1175
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x30
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.uleb128 0x36
	.long	.LASF1293
	.byte	0x1
	.value	0x1175
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF713
	.byte	0x1
	.value	0x1175
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1407
	.byte	0x1
	.value	0x1189
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x62dc
	.uleb128 0x30
	.quad	.LBB116
	.quad	.LBE116-.LBB116
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0x118c
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0x118c
	.long	0x3279
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x118c
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0x118c
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF1408
	.byte	0x1
	.value	0x1193
	.long	0x123
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF1409
	.byte	0x1
	.value	0x119b
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x633a
	.uleb128 0x30
	.quad	.LBB118
	.quad	.LBE118-.LBB118
	.uleb128 0x36
	.long	.LASF1214
	.byte	0x1
	.value	0x11a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF1410
	.byte	0x1
	.value	0x11cf
	.long	0x1e3
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b7
	.uleb128 0x35
	.long	.LASF713
	.byte	0x1
	.value	0x11d0
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1411
	.byte	0x1
	.value	0x11d1
	.long	0x63cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x11d2
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1412
	.byte	0x1
	.value	0x11d3
	.long	0x2716
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1413
	.byte	0x1
	.value	0x11d5
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1177
	.byte	0x1
	.value	0x11d6
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	0x123
	.long	0x63cb
	.uleb128 0x23
	.long	0x123
	.uleb128 0x23
	.long	0x123
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x63b7
	.uleb128 0x37
	.long	.LASF1414
	.byte	0x1
	.value	0x1201
	.long	0x1e3
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x645e
	.uleb128 0x35
	.long	.LASF1415
	.byte	0x1
	.value	0x1202
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1416
	.byte	0x1
	.value	0x1202
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x35
	.long	.LASF1411
	.byte	0x1
	.value	0x1203
	.long	0x63cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x1204
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x35
	.long	.LASF1412
	.byte	0x1
	.value	0x1205
	.long	0x2716
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF1413
	.byte	0x1
	.value	0x1207
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1177
	.byte	0x1
	.value	0x1208
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x37
	.long	.LASF1417
	.byte	0x1
	.value	0x1241
	.long	0x1e3
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x658f
	.uleb128 0x2d
	.string	"low"
	.byte	0x1
	.value	0x1242
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x35
	.long	.LASF679
	.byte	0x1
	.value	0x1242
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x1243
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x35
	.long	.LASF1412
	.byte	0x1
	.value	0x1244
	.long	0x2716
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x1246
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"q"
	.byte	0x1
	.value	0x1246
	.long	0x658f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"r"
	.byte	0x1
	.value	0x1246
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.value	0x1288
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.long	0x654b
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x128c
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.string	"b2"
	.byte	0x1
	.value	0x12ae
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x12af
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.uleb128 0x2f
	.string	"b"
	.byte	0x1
	.value	0x12da
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.string	"b2"
	.byte	0x1
	.value	0x12fd
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x12fe
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3120
	.uleb128 0x37
	.long	.LASF1418
	.byte	0x1
	.value	0x1338
	.long	0x319
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x6633
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x1339
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1419
	.byte	0x1
	.value	0x133a
	.long	0x435
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x133c
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF335
	.byte	0x1
	.value	0x133d
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF746
	.byte	0x1
	.value	0x133d
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1420
	.byte	0x1
	.value	0x133d
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x36
	.long	.LASF1421
	.byte	0x1
	.value	0x1364
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1422
	.byte	0x1
	.value	0x1383
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x6750
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x1384
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x35
	.long	.LASF1423
	.byte	0x1
	.value	0x1385
	.long	0x288f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x35
	.long	.LASF335
	.byte	0x1
	.value	0x1386
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x35
	.long	.LASF1419
	.byte	0x1
	.value	0x1387
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x36
	.long	.LASF1424
	.byte	0x1
	.value	0x1389
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1425
	.byte	0x1
	.value	0x138a
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x138c
	.long	0x3120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1426
	.byte	0x1
	.value	0x138c
	.long	0x3120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"val"
	.byte	0x1
	.value	0x138d
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.long	0x6710
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x1395
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.string	"xlo"
	.byte	0x1
	.value	0x1396
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x30
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.uleb128 0x2f
	.string	"xlo"
	.byte	0x1
	.value	0x13c5
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.string	"xhi"
	.byte	0x1
	.value	0x13c6
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x13c7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF1427
	.byte	0x1
	.value	0x140a
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x6807
	.uleb128 0x35
	.long	.LASF24
	.byte	0x1
	.value	0x140b
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x140d
	.long	0x3120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.long	.LASF654
	.byte	0x1
	.value	0x140e
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1419
	.byte	0x1
	.value	0x1411
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x36
	.long	.LASF304
	.byte	0x1
	.value	0x1414
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1423
	.byte	0x1
	.value	0x1418
	.long	0x288f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.long	.LASF1428
	.byte	0x1
	.value	0x141b
	.long	0x319
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x142a
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.string	"v"
	.byte	0x1
	.value	0x142b
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1429
	.byte	0x1
	.value	0x1475
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x6834
	.uleb128 0x2d
	.string	"cn"
	.byte	0x1
	.value	0x1476
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF1430
	.byte	0x1
	.value	0x1489
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a5e
	.uleb128 0x35
	.long	.LASF1431
	.byte	0x1
	.value	0x148a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x35
	.long	.LASF1432
	.byte	0x1
	.value	0x148a
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x36
	.long	.LASF746
	.byte	0x1
	.value	0x148c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x36
	.long	.LASF747
	.byte	0x1
	.value	0x148c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x36
	.long	.LASF1433
	.byte	0x1
	.value	0x148c
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x36
	.long	.LASF1175
	.byte	0x1
	.value	0x148d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x148e
	.long	0x3120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x36
	.long	.LASF335
	.byte	0x1
	.value	0x148f
	.long	0x310
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x36
	.long	.LASF333
	.byte	0x1
	.value	0x1490
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF1434
	.byte	0x1
	.value	0x1491
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1435
	.byte	0x1
	.value	0x1492
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x36
	.long	.LASF1436
	.byte	0x1
	.value	0x1493
	.long	0xe2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x1494
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x36
	.long	.LASF1437
	.byte	0x1
	.value	0x1495
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2f
	.string	"end"
	.byte	0x1
	.value	0x1495
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x36
	.long	.LASF1405
	.byte	0x1
	.value	0x1496
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x36
	.long	.LASF1176
	.byte	0x1
	.value	0x1497
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x36
	.long	.LASF1413
	.byte	0x1
	.value	0x1497
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x36
	.long	.LASF951
	.byte	0x1
	.value	0x1498
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x38
	.long	.LASF1218
	.long	0x6a5e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.14927
	.uleb128 0x2e
	.quad	.LBB130
	.quad	.LBE130-.LBB130
	.long	0x69b7
	.uleb128 0x36
	.long	.LASF1438
	.byte	0x1
	.value	0x151a
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x2e
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.long	0x69fb
	.uleb128 0x36
	.long	.LASF1439
	.byte	0x1
	.value	0x1580
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.long	.LASF1440
	.byte	0x1
	.value	0x1583
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x1586
	.long	0x319
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x30
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.uleb128 0x36
	.long	.LASF1185
	.byte	0x1
	.value	0x15b6
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x36
	.long	.LASF1298
	.byte	0x1
	.value	0x15b6
	.long	0x3279
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.uleb128 0x2f
	.string	"__o"
	.byte	0x1
	.value	0x15b6
	.long	0x27e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1299
	.byte	0x1
	.value	0x15b6
	.long	0x317
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3d35
	.uleb128 0x39
	.long	.LASF1441
	.byte	0x1
	.value	0x15c0
	.long	0x3120
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ab3
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x15c1
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1145
	.byte	0x1
	.value	0x15c1
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1144
	.byte	0x1
	.value	0x15c3
	.long	0x3120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1442
	.byte	0x1
	.value	0x15d5
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b0e
	.uleb128 0x2d
	.string	"op1"
	.byte	0x1
	.value	0x15d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"op2"
	.byte	0x1
	.value	0x15d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x15d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF951
	.byte	0x1
	.value	0x15d7
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x39
	.long	.LASF1443
	.byte	0x1
	.value	0x15fd
	.long	0x1e3
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b78
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x15fe
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1444
	.byte	0x1
	.value	0x1600
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1445
	.byte	0x1
	.value	0x1601
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"n"
	.byte	0x1
	.value	0x1602
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x1603
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x2c
	.long	.LASF1446
	.byte	0x1
	.value	0x163b
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bf2
	.uleb128 0x35
	.long	.LASF324
	.byte	0x1
	.value	0x163c
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1390
	.byte	0x1
	.value	0x163e
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.uleb128 0x2f
	.string	"lb"
	.byte	0x1
	.value	0x1642
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.string	"lb2"
	.byte	0x1
	.value	0x1643
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.string	"np"
	.byte	0x1
	.value	0x1644
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF1447
	.byte	0x1
	.value	0x1670
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cbb
	.uleb128 0x35
	.long	.LASF324
	.byte	0x1
	.value	0x1671
	.long	0x6cbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x35
	.long	.LASF1146
	.byte	0x1
	.value	0x1672
	.long	0x3126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"np"
	.byte	0x1
	.value	0x1674
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.uleb128 0x36
	.long	.LASF1448
	.byte	0x1
	.value	0x1679
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.value	0x167a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x36
	.long	.LASF1449
	.byte	0x1
	.value	0x167b
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.string	"npp"
	.byte	0x1
	.value	0x167c
	.long	0x6cbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x36
	.long	.LASF1144
	.byte	0x1
	.value	0x167d
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.quad	.LBB136
	.quad	.LBE136-.LBB136
	.uleb128 0x36
	.long	.LASF1450
	.byte	0x1
	.value	0x169a
	.long	0x1e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3126
	.uleb128 0x39
	.long	.LASF1451
	.byte	0x1
	.value	0x16e7
	.long	0x1e3
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d20
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x16e8
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1413
	.byte	0x1
	.value	0x16e9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1452
	.byte	0x1
	.value	0x16eb
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1453
	.byte	0x1
	.value	0x16ec
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF1454
	.byte	0x1
	.value	0x1716
	.long	0x1e3
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d7f
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x1717
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x35
	.long	.LASF1413
	.byte	0x1
	.value	0x1718
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1455
	.byte	0x1
	.value	0x171a
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.long	.LASF1453
	.byte	0x1
	.value	0x171b
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x39
	.long	.LASF1456
	.byte	0x1
	.value	0x1744
	.long	0x1e3
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dc0
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x1745
	.long	0x3126
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x35
	.long	.LASF1413
	.byte	0x1
	.value	0x1746
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF1457
	.byte	0x1
	.value	0x174f
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dee
	.uleb128 0x35
	.long	.LASF1172
	.byte	0x1
	.value	0x1750
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF1458
	.byte	0x1
	.value	0x1771
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f69
	.uleb128 0x35
	.long	.LASF333
	.byte	0x1
	.value	0x1772
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x35
	.long	.LASF1390
	.byte	0x1
	.value	0x1773
	.long	0x3126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x35
	.long	.LASF1175
	.byte	0x1
	.value	0x1774
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x35
	.long	.LASF1413
	.byte	0x1
	.value	0x1775
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x36
	.long	.LASF951
	.byte	0x1
	.value	0x1778
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x36
	.long	.LASF1
	.byte	0x1
	.value	0x1779
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x36
	.long	.LASF1459
	.byte	0x1
	.value	0x177a
	.long	0x442
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2e
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.long	0x6ea2
	.uleb128 0x36
	.long	.LASF1460
	.byte	0x1
	.value	0x17b4
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2e
	.quad	.LBB138
	.quad	.LBE138-.LBB138
	.long	0x6ec8
	.uleb128 0x36
	.long	.LASF1460
	.byte	0x1
	.value	0x1821
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x30
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.uleb128 0x36
	.long	.LASF1461
	.byte	0x1
	.value	0x189a
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x36
	.long	.LASF1462
	.byte	0x1
	.value	0x189b
	.long	0x1e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.quad	.LBB140
	.quad	.LBE140-.LBB140
	.uleb128 0x36
	.long	.LASF24
	.byte	0x1
	.value	0x18b7
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.string	"low"
	.byte	0x1
	.value	0x18b8
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x36
	.long	.LASF679
	.byte	0x1
	.value	0x18b9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.long	.LASF1463
	.byte	0x1
	.value	0x18ba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.long	.LASF1464
	.byte	0x1
	.value	0x18ba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x36
	.long	.LASF1465
	.byte	0x1
	.value	0x18ba
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x347
	.long	0x6f79
	.uleb128 0x16
	.long	0x1ea
	.byte	0x80
	.byte	0
	.uleb128 0x3e
	.long	.LASF1466
	.byte	0x1
	.byte	0x6b
	.long	0x6f69
	.uleb128 0x9
	.byte	0x3
	.quad	cost_table_
	.uleb128 0x3e
	.long	.LASF1467
	.byte	0x1
	.byte	0x6c
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	use_cost_table
	.uleb128 0x3e
	.long	.LASF1468
	.byte	0x1
	.byte	0x6d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	cost_table_initialized
	.uleb128 0x36
	.long	.LASF1469
	.byte	0x1
	.value	0x18d
	.long	0x1e3
	.uleb128 0x9
	.byte	0x3
	.quad	using_eh_for_cleanups_p
	.uleb128 0x3f
	.long	.LASF1470
	.byte	0x5
	.byte	0x62
	.long	0x1e3
	.uleb128 0x15
	.long	0x339
	.long	0x6fe9
	.uleb128 0x16
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1471
	.byte	0x11
	.byte	0x48
	.long	0x6ff4
	.uleb128 0xc
	.long	0x6fd9
	.uleb128 0x15
	.long	0x5b7
	.long	0x7009
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF154
	.byte	0x7
	.byte	0x34
	.long	0x7014
	.uleb128 0xc
	.long	0x6ff9
	.uleb128 0x15
	.long	0x332
	.long	0x7029
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1472
	.byte	0x7
	.byte	0x50
	.long	0x7034
	.uleb128 0xc
	.long	0x7019
	.uleb128 0x15
	.long	0x339
	.long	0x7049
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1473
	.byte	0x7
	.byte	0x60
	.long	0x7054
	.uleb128 0xc
	.long	0x7039
	.uleb128 0x3f
	.long	.LASF1474
	.byte	0x7
	.byte	0x7b
	.long	0x7064
	.uleb128 0xc
	.long	0x7019
	.uleb128 0x15
	.long	0x442
	.long	0x7079
	.uleb128 0x16
	.long	0x1ea
	.byte	0x8
	.byte	0
	.uleb128 0x3f
	.long	.LASF1475
	.byte	0x7
	.byte	0x9d
	.long	0x7084
	.uleb128 0xc
	.long	0x7069
	.uleb128 0x3f
	.long	.LASF1476
	.byte	0x7
	.byte	0xa4
	.long	0x442
	.uleb128 0x40
	.long	.LASF1477
	.byte	0x2
	.value	0x4be
	.long	0x1e3
	.uleb128 0x15
	.long	0x2d
	.long	0x70b0
	.uleb128 0x16
	.long	0x1ea
	.byte	0x80
	.byte	0
	.uleb128 0x40
	.long	.LASF1478
	.byte	0x2
	.value	0x611
	.long	0x70a0
	.uleb128 0x15
	.long	0x2d
	.long	0x70d2
	.uleb128 0x16
	.long	0x1ea
	.byte	0x2
	.uleb128 0x16
	.long	0x1ea
	.byte	0x3a
	.byte	0
	.uleb128 0x40
	.long	.LASF1479
	.byte	0x2
	.value	0x619
	.long	0x70bc
	.uleb128 0x15
	.long	0x2d
	.long	0x70ee
	.uleb128 0x16
	.long	0x1ea
	.byte	0xa
	.byte	0
	.uleb128 0x40
	.long	.LASF1480
	.byte	0x2
	.value	0x652
	.long	0x70de
	.uleb128 0x15
	.long	0x354
	.long	0x710a
	.uleb128 0x16
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1481
	.byte	0x4
	.byte	0x31
	.long	0x70fa
	.uleb128 0x15
	.long	0x1e3
	.long	0x7125
	.uleb128 0x16
	.long	0x1ea
	.byte	0xff
	.byte	0
	.uleb128 0x3f
	.long	.LASF1482
	.byte	0x4
	.byte	0x3c
	.long	0x7115
	.uleb128 0x15
	.long	0x123
	.long	0x7140
	.uleb128 0x16
	.long	0x1ea
	.byte	0x32
	.byte	0
	.uleb128 0x40
	.long	.LASF1483
	.byte	0x4
	.value	0x79b
	.long	0x7130
	.uleb128 0x40
	.long	.LASF1484
	.byte	0x4
	.value	0xa98
	.long	0x123
	.uleb128 0x3f
	.long	.LASF1485
	.byte	0x12
	.byte	0x3d
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1486
	.byte	0x12
	.byte	0x41
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1487
	.byte	0x12
	.byte	0x5b
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1488
	.byte	0x12
	.byte	0x66
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1489
	.byte	0x12
	.byte	0x67
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1490
	.byte	0x12
	.byte	0x83
	.long	0x1e3
	.uleb128 0x3f
	.long	.LASF1491
	.byte	0x12
	.byte	0xfe
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1492
	.byte	0x12
	.value	0x12a
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1493
	.byte	0x12
	.value	0x1c8
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1494
	.byte	0x12
	.value	0x217
	.long	0x1e3
	.uleb128 0x40
	.long	.LASF1495
	.byte	0xd
	.value	0x1e4
	.long	0x21d9
	.uleb128 0x15
	.long	0x354
	.long	0x71e5
	.uleb128 0x16
	.long	0x1ea
	.byte	0x34
	.byte	0
	.uleb128 0x40
	.long	.LASF1496
	.byte	0x13
	.value	0x18b
	.long	0x71d5
	.uleb128 0x40
	.long	.LASF1497
	.byte	0x13
	.value	0x1e1
	.long	0x1e3
	.uleb128 0x15
	.long	0x354
	.long	0x7208
	.uleb128 0x41
	.byte	0
	.uleb128 0x3f
	.long	.LASF1498
	.byte	0x14
	.byte	0x2a
	.long	0x7213
	.uleb128 0xc
	.long	0x71fd
	.uleb128 0x3f
	.long	.LASF1499
	.byte	0x14
	.byte	0x2f
	.long	0x300e
	.uleb128 0x42
	.long	.LASF1500
	.byte	0x1
	.byte	0x3b
	.long	0x1814
	.uleb128 0x9
	.byte	0x3
	.quad	stmt_obstack
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x17
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x32
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x21
	.byte	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB121-.Ltext0
	.quad	.LBE121-.Ltext0
	.quad	.LBB122-.Ltext0
	.quad	.LBE122-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB124-.Ltext0
	.quad	.LBE124-.Ltext0
	.quad	.LBB125-.Ltext0
	.quad	.LBE125-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF909:
	.string	"TI_UV8HI_TYPE"
.LASF355:
	.string	"REG_BR_PROB"
.LASF914:
	.string	"TI_UV16QI_TYPE"
.LASF385:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF804:
	.string	"profile_label_no"
.LASF312:
	.string	"rtstr"
.LASF929:
	.string	"itk_unsigned_char"
.LASF463:
	.string	"WITH_CLEANUP_EXPR"
.LASF453:
	.string	"VTABLE_REF"
.LASF1266:
	.string	"qual_type"
.LASF372:
	.string	"NOTE_INSN_DELETED"
.LASF611:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF238:
	.string	"UMOD"
.LASF1365:
	.string	"afterward"
.LASF292:
	.string	"min_align"
.LASF540:
	.string	"POSTINCREMENT_EXPR"
.LASF561:
	.string	"BUILT_IN_FABSF"
.LASF476:
	.string	"FLOOR_MOD_EXPR"
.LASF987:
	.string	"x_last_expr_value"
.LASF183:
	.string	"DEFINE_COMBINE"
.LASF1117:
	.string	"varray_data_tag"
.LASF35:
	.string	"AD_REGS"
.LASF1086:
	.string	"LTI_fixsfdi"
.LASF320:
	.string	"first"
.LASF983:
	.string	"x_nesting_stack"
.LASF921:
	.string	"TI_V2SI_TYPE"
.LASF798:
	.string	"inlinable"
.LASF830:
	.string	"uses_const_pool"
.LASF1318:
	.string	"expand_exit_loop_top_cond"
.LASF1171:
	.string	"exit_label"
.LASF882:
	.string	"TI_UINTSI_TYPE"
.LASF279:
	.string	"CONSTANT_P_RTX"
.LASF729:
	.string	"tree_type"
.LASF493:
	.string	"RROTATE_EXPR"
.LASF1367:
	.string	"any_invalid"
.LASF1469:
	.string	"using_eh_for_cleanups_p"
.LASF1384:
	.string	"cleanup"
.LASF529:
	.string	"ADDR_EXPR"
.LASF1088:
	.string	"LTI_fixdfsi"
.LASF1057:
	.string	"LTI_ledf2"
.LASF1107:
	.string	"LTI_fixunstfdi"
.LASF952:
	.string	"next"
.LASF1330:
	.string	"retval_rhs"
.LASF26:
	.string	"block"
.LASF1078:
	.string	"LTI_floattidf"
.LASF939:
	.string	"_Bool"
.LASF1270:
	.string	"check_operand_nalternatives"
.LASF311:
	.string	"rtuint"
.LASF1169:
	.string	"nesting"
.LASF858:
	.string	"pure_flag"
.LASF315:
	.string	"rt_cselib"
.LASF182:
	.string	"DEFINE_PEEPHOLE2"
.LASF1352:
	.string	"expand_end_target_temps"
.LASF12:
	.string	"rtvec_def"
.LASF803:
	.string	"inl_max_label_num"
.LASF1496:
	.string	"fixed_regs"
.LASF518:
	.string	"IN_EXPR"
.LASF1377:
	.string	"expand_decl"
.LASF242:
	.string	"LSHIFTRT"
.LASF73:
	.string	"_sch_iscntrl"
.LASF16:
	.string	"common"
.LASF1050:
	.string	"LTI_lesf2"
.LASF645:
	.string	"BUILT_IN_EH_RETURN"
.LASF176:
	.string	"MATCH_PAR_DUP"
.LASF1359:
	.string	"handler_label"
.LASF1503:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1090:
	.string	"LTI_fixdfti"
.LASF237:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF79:
	.string	"_sch_isupper"
.LASF501:
	.string	"TRUTH_AND_EXPR"
.LASF1058:
	.string	"LTI_unorddf2"
.LASF820:
	.string	"contains_functions"
.LASF584:
	.string	"BUILT_IN_STRCPY"
.LASF1483:
	.string	"global_trees"
.LASF655:
	.string	"side_effects_flag"
.LASF170:
	.string	"MATCH_OPERAND"
.LASF901:
	.string	"TI_VOID_TYPE"
.LASF151:
	.string	"CCFPmode"
.LASF1309:
	.string	"debug_blocks"
.LASF647:
	.string	"BUILT_IN_VARARGS_START"
.LASF688:
	.string	"imag"
.LASF92:
	.string	"reg_class"
.LASF545:
	.string	"LABEL_EXPR"
.LASF259:
	.string	"UNLE"
.LASF39:
	.string	"LEGACY_REGS"
.LASF297:
	.string	"max_after_base"
.LASF687:
	.string	"real"
.LASF888:
	.string	"TI_NULL_POINTER"
.LASF260:
	.string	"UNLT"
.LASF425:
	.string	"FILE_TYPE"
.LASF727:
	.string	"fragment_chain"
.LASF683:
	.string	"tree_string"
.LASF509:
	.string	"EQ_EXPR"
.LASF735:
	.string	"no_force_blk_flag"
.LASF1069:
	.string	"LTI_getf2"
.LASF831:
	.string	"uses_pic_offset_table"
.LASF726:
	.string	"fragment_origin"
.LASF993:
	.string	"initial_value_struct"
.LASF1435:
	.string	"ncases"
.LASF917:
	.string	"TI_V4SI_TYPE"
.LASF420:
	.string	"CHAR_TYPE"
.LASF624:
	.string	"BUILT_IN_FWRITE"
.LASF1141:
	.string	"probability"
.LASF1213:
	.string	"save_area"
.LASF123:
	.string	"CTImode"
.LASF665:
	.string	"static_flag"
.LASF503:
	.string	"TRUTH_XOR_EXPR"
.LASF1212:
	.string	"static_chain"
.LASF1491:
	.string	"flag_float_store"
.LASF849:
	.string	"static_dtor_flag"
.LASF684:
	.string	"length"
.LASF465:
	.string	"PLACEHOLDER_EXPR"
.LASF755:
	.string	"lang_type"
.LASF498:
	.string	"BIT_NOT_EXPR"
.LASF1405:
	.string	"thiscase"
.LASF707:
	.string	"maybe_empty_object"
.LASF1466:
	.string	"cost_table_"
.LASF1066:
	.string	"LTI_eqtf2"
.LASF666:
	.string	"public_flag"
.LASF1261:
	.string	"inout_opnum"
.LASF484:
	.string	"FLOAT_EXPR"
.LASF840:
	.string	"inline_flag"
.LASF891:
	.string	"TI_BITSIZE_ZERO"
.LASF1282:
	.string	"maybe_last"
.LASF443:
	.string	"PARM_DECL"
.LASF121:
	.string	"CSImode"
.LASF1160:
	.string	"cleanups"
.LASF41:
	.string	"FP_TOP_REG"
.LASF603:
	.string	"BUILT_IN_COSL"
.LASF1342:
	.string	"drop_through_at_end_p"
.LASF281:
	.string	"VEC_MERGE"
.LASF801:
	.string	"original_decl_initial"
.LASF1327:
	.string	"expand_return"
.LASF1461:
	.string	"high_bound"
.LASF534:
	.string	"CONJ_EXPR"
.LASF1119:
	.string	"uhint"
.LASF214:
	.string	"RETURN"
.LASF574:
	.string	"BUILT_IN_BZERO"
.LASF550:
	.string	"LABELED_BLOCK_EXPR"
.LASF1293:
	.string	"__o1"
.LASF1233:
	.string	"n_occurrences"
.LASF1120:
	.string	"generic"
.LASF607:
	.string	"BUILT_IN_ARGS_INFO"
.LASF1053:
	.string	"LTI_nedf2"
.LASF14:
	.string	"elem"
.LASF1348:
	.string	"expand_start_bindings_and_block"
.LASF1305:
	.string	"expand_loop_continue_here"
.LASF1406:
	.string	"expand_start_case_dummy"
.LASF157:
	.string	"MODE_FLOAT"
.LASF1450:
	.string	"n_moved"
.LASF580:
	.string	"BUILT_IN_MEMCMP"
.LASF622:
	.string	"BUILT_IN_FPUTC"
.LASF614:
	.string	"BUILT_IN_RETURN"
.LASF1225:
	.string	"expand_fixups"
.LASF662:
	.string	"unused_0"
.LASF678:
	.string	"unused_1"
.LASF879:
	.string	"TI_INTTI_TYPE"
.LASF623:
	.string	"BUILT_IN_FPUTS"
.LASF1273:
	.string	"i_name"
.LASF551:
	.string	"EXIT_BLOCK_EXPR"
.LASF1063:
	.string	"LTI_ltxf2"
.LASF301:
	.string	"alias"
.LASF298:
	.string	"offset_unsigned"
.LASF127:
	.string	"V2SImode"
.LASF1343:
	.string	"optimize_tail_recursion"
.LASF629:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF827:
	.string	"stdarg"
.LASF788:
	.string	"x_trampoline_list"
.LASF1197:
	.string	"init_stmt"
.LASF1067:
	.string	"LTI_netf2"
.LASF1219:
	.string	"tree_label"
.LASF422:
	.string	"OFFSET_TYPE"
.LASF898:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF36:
	.string	"Q_REGS"
.LASF549:
	.string	"LOOP_EXPR"
.LASF201:
	.string	"CODE_LABEL"
.LASF630:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF122:
	.string	"CDImode"
.LASF207:
	.string	"UNSPEC"
.LASF541:
	.string	"VA_ARG_EXPR"
.LASF596:
	.string	"BUILT_IN_SIN"
.LASF200:
	.string	"BARRIER"
.LASF904:
	.string	"TI_PTRDIFF_TYPE"
.LASF378:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF203:
	.string	"COND_EXEC"
.LASF1408:
	.string	"case_index_expr_type"
.LASF1415:
	.string	"value1"
.LASF217:
	.string	"CONST_INT"
.LASF213:
	.string	"CALL"
.LASF998:
	.string	"EXPAND_NORMAL"
.LASF1193:
	.string	"mark_goto_fixup"
.LASF1150:
	.string	"endif_label"
.LASF61:
	.string	"maybe_vaarg"
.LASF809:
	.string	"epilogue_delay_list"
.LASF860:
	.string	"uninlinable"
.LASF1232:
	.string	"expand_fixup"
.LASF458:
	.string	"TARGET_EXPR"
.LASF1497:
	.string	"n_non_fixed_regs"
.LASF1301:
	.string	"exit_flag"
.LASF129:
	.string	"V4QImode"
.LASF192:
	.string	"ATTR"
.LASF643:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF335:
	.string	"count"
.LASF313:
	.string	"rttype"
.LASF1465:
	.string	"new_bound"
.LASF30:
	.string	"DREG"
.LASF1303:
	.string	"expand_start_loop_continue_elsewhere"
.LASF1034:
	.string	"LTI_setjmp"
.LASF325:
	.string	"head_tree"
.LASF48:
	.string	"FLOAT_SSE_REGS"
.LASF402:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF730:
	.string	"values"
.LASF680:
	.string	"tree_int_cst"
.LASF1475:
	.string	"class_narrowest_mode"
.LASF1241:
	.string	"allows_mem"
.LASF599:
	.string	"BUILT_IN_SINF"
.LASF128:
	.string	"V2DImode"
.LASF778:
	.string	"x_return_label"
.LASF602:
	.string	"BUILT_IN_SINL"
.LASF659:
	.string	"readonly_flag"
.LASF985:
	.string	"x_block_start_count"
.LASF1070:
	.string	"LTI_lttf2"
.LASF1433:
	.string	"range"
.LASF479:
	.string	"EXACT_DIV_EXPR"
.LASF1133:
	.string	"varray_type"
.LASF306:
	.string	"mem_attrs"
.LASF349:
	.string	"REG_UNUSED"
.LASF185:
	.string	"DEFINE_DELAY"
.LASF235:
	.string	"MINUS"
.LASF785:
	.string	"x_clobber_return_insn"
.LASF33:
	.string	"SIREG"
.LASF1019:
	.string	"LTI_truncdfsf2"
.LASF1300:
	.string	"expand_start_loop"
.LASF516:
	.string	"UNGE_EXPR"
.LASF1124:
	.string	"sched_info_tag"
.LASF579:
	.string	"BUILT_IN_MEMCPY"
.LASF446:
	.string	"NAMESPACE_DECL"
.LASF1140:
	.string	"insns"
.LASF225:
	.string	"STRICT_LOW_PART"
.LASF1068:
	.string	"LTI_gttf2"
.LASF1182:
	.string	"case_stmt"
.LASF967:
	.string	"x_regno_reg_rtx"
.LASF1292:
	.string	"__len"
.LASF167:
	.string	"INCLUDE"
.LASF398:
	.string	"GR_FRAME_POINTER"
.LASF654:
	.string	"chain"
.LASF333:
	.string	"index"
.LASF263:
	.string	"ZERO_EXTEND"
.LASF608:
	.string	"BUILT_IN_CONSTANT_P"
.LASF266:
	.string	"FLOAT_TRUNCATE"
.LASF974:
	.string	"x_forced_labels"
.LASF634:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF1226:
	.string	"fixup_gotos"
.LASF640:
	.string	"BUILT_IN_DWARF_CFA"
.LASF431:
	.string	"FUNCTION_TYPE"
.LASF834:
	.string	"tree_decl"
.LASF1258:
	.string	"nclobbers"
.LASF395:
	.string	"GR_PC"
.LASF1413:
	.string	"index_type"
.LASF32:
	.string	"BREG"
.LASF1440:
	.string	"i_high"
.LASF138:
	.string	"V2SFmode"
.LASF1127:
	.string	"varray_data"
.LASF995:
	.string	"machine_function"
.LASF1288:
	.string	"expand_end_stmt_expr"
.LASF267:
	.string	"FLOAT"
.LASF1353:
	.string	"is_body_block"
.LASF1056:
	.string	"LTI_ltdf2"
.LASF361:
	.string	"REG_EH_CONTEXT"
.LASF93:
	.string	"machine_mode"
.LASF1340:
	.string	"tmpmode"
.LASF1502:
	.string	"stmt.c"
.LASF697:
	.string	"chunk"
.LASF1199:
	.string	"set_file_and_line_for_stmt"
.LASF1454:
	.string	"node_has_high_bound"
.LASF318:
	.string	"rtmem"
.LASF797:
	.string	"fixup_var_refs_queue"
.LASF1392:
	.string	"decl_elts"
.LASF276:
	.string	"RANGE_REG"
.LASF316:
	.string	"rtbit"
.LASF546:
	.string	"GOTO_EXPR"
.LASF1112:
	.string	"bitmap_element_def"
.LASF1239:
	.string	"ninputs"
.LASF3:
	.string	"call"
.LASF100:
	.string	"TImode"
.LASF981:
	.string	"x_loop_stack"
.LASF1462:
	.string	"low_bound"
.LASF252:
	.string	"PRE_MODIFY"
.LASF1441:
	.string	"case_tree2list"
.LASF1398:
	.string	"start_cleanup_deferral"
.LASF457:
	.string	"INIT_EXPR"
.LASF1319:
	.string	"in_control_zone_p"
.LASF812:
	.string	"returns_pointer"
.LASF1152:
	.string	"start_label"
.LASF492:
	.string	"LROTATE_EXPR"
.LASF81:
	.string	"_sch_isidst"
.LASF681:
	.string	"realvaluetype"
.LASF1480:
	.string	"global_rtl"
.LASF1228:
	.string	"cleanup_list"
.LASF265:
	.string	"FLOAT_EXTEND"
.LASF577:
	.string	"BUILT_IN_INDEX"
.LASF451:
	.string	"ARRAY_REF"
.LASF1027:
	.string	"LTI_bcopy"
.LASF523:
	.string	"NOP_EXPR"
.LASF758:
	.string	"stmt"
.LASF1482:
	.string	"tree_code_length"
.LASF6:
	.string	"in_struct"
.LASF373:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF98:
	.string	"SImode"
.LASF209:
	.string	"ADDR_VEC"
.LASF977:
	.string	"stmt_status"
.LASF139:
	.string	"V2DFmode"
.LASF477:
	.string	"ROUND_MOD_EXPR"
.LASF1242:
	.string	"allows_reg"
.LASF291:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF668:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF60:
	.string	"sse_regno"
.LASF322:
	.string	"indx"
.LASF805:
	.string	"machine"
.LASF473:
	.string	"ROUND_DIV_EXPR"
.LASF228:
	.string	"SYMBOL_REF"
.LASF371:
	.string	"NOTE_INSN_BIAS"
.LASF1476:
	.string	"word_mode"
.LASF126:
	.string	"V2HImode"
.LASF872:
	.string	"lang_decl"
.LASF488:
	.string	"ABS_EXPR"
.LASF89:
	.string	"_sch_isbasic"
.LASF393:
	.string	"NOTE_INSN_MAX"
.LASF972:
	.string	"x_saveregs_value"
.LASF1044:
	.string	"LTI_unordhf2"
.LASF721:
	.string	"block_num"
.LASF181:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF233:
	.string	"COMPARE"
.LASF261:
	.string	"LTGT"
.LASF715:
	.string	"tree_exp"
.LASF701:
	.string	"temp"
.LASF951:
	.string	"unsignedp"
.LASF273:
	.string	"HIGH"
.LASF230:
	.string	"QUEUED"
.LASF37:
	.string	"NON_Q_REGS"
.LASF1383:
	.string	"expand_decl_cleanup"
.LASF1286:
	.string	"expand_start_stmt_expr"
.LASF1:
	.string	"mode"
.LASF1407:
	.string	"expand_end_case_dummy"
.LASF99:
	.string	"DImode"
.LASF691:
	.string	"_obstack_chunk"
.LASF500:
	.string	"TRUTH_ORIF_EXPR"
.LASF557:
	.string	"BUILT_IN_ALLOCA"
.LASF1285:
	.string	"clear_last_expr"
.LASF1255:
	.string	"clobbers"
.LASF1116:
	.string	"const_equiv_data"
.LASF771:
	.string	"hard_reg_initial_vals"
.LASF1254:
	.string	"inputs"
.LASF970:
	.string	"x_inhibit_defer_pop"
.LASF935:
	.string	"itk_unsigned_long"
.LASF134:
	.string	"V8HImode"
.LASF1051:
	.string	"LTI_unordsf2"
.LASF1224:
	.string	"original_before_jump"
.LASF251:
	.string	"POST_INC"
.LASF462:
	.string	"METHOD_CALL_EXPR"
.LASF1451:
	.string	"node_has_low_bound"
.LASF884:
	.string	"TI_UINTTI_TYPE"
.LASF1281:
	.string	"want_value"
.LASF1203:
	.string	"last_insn"
.LASF1376:
	.string	"save_stack_pointer"
.LASF1234:
	.string	"expand_asm"
.LASF1031:
	.string	"LTI_bzero"
.LASF848:
	.string	"static_ctor_flag"
.LASF112:
	.string	"TFmode"
.LASF1274:
	.string	"resolve_operand_names"
.LASF428:
	.string	"RECORD_TYPE"
.LASF67:
	.string	"unsigned char"
.LASF42:
	.string	"FP_SECOND_REG"
.LASF660:
	.string	"unsigned_flag"
.LASF1269:
	.string	"obody"
.LASF1164:
	.string	"exception_region"
.LASF1356:
	.string	"current_nesting_level"
.LASF1223:
	.string	"fixup"
.LASF862:
	.string	"arguments"
.LASF770:
	.string	"cannot_inline"
.LASF1473:
	.string	"mode_bitsize"
.LASF903:
	.string	"TI_CONST_PTR_TYPE"
.LASF1237:
	.string	"constraint_p"
.LASF936:
	.string	"itk_long_long"
.LASF696:
	.string	"chunk_size"
.LASF1471:
	.string	"_sch_istable"
.LASF95:
	.string	"BImode"
.LASF249:
	.string	"PRE_INC"
.LASF348:
	.string	"REG_NO_CONFLICT"
.LASF109:
	.string	"SFmode"
.LASF80:
	.string	"_sch_isxdigit"
.LASF1426:
	.string	"root"
.LASF1198:
	.string	"init_stmt_for_function"
.LASF759:
	.string	"emit"
.LASF1249:
	.string	"constraints"
.LASF738:
	.string	"packed_flag"
.LASF1317:
	.string	"expand_exit_loop_if_false"
.LASF494:
	.string	"BIT_IOR_EXPR"
.LASF558:
	.string	"BUILT_IN_ABS"
.LASF440:
	.string	"CONST_DECL"
.LASF682:
	.string	"tree_real_cst"
.LASF1085:
	.string	"LTI_fixsfsi"
.LASF1013:
	.string	"libfunc_index"
.LASF445:
	.string	"FIELD_DECL"
.LASF198:
	.string	"JUMP_INSN"
.LASF330:
	.string	"cond_local_set"
.LASF1185:
	.string	"target"
.LASF931:
	.string	"itk_unsigned_short"
.LASF1142:
	.string	"edge"
.LASF568:
	.string	"BUILT_IN_CREAL"
.LASF161:
	.string	"MODE_COMPLEX_FLOAT"
.LASF317:
	.string	"rttree"
.LASF1467:
	.string	"use_cost_table"
.LASF839:
	.string	"regdecl_flag"
.LASF1049:
	.string	"LTI_ltsf2"
.LASF564:
	.string	"BUILT_IN_IMAXABS"
.LASF1238:
	.string	"operand_num"
.LASF419:
	.string	"BOOLEAN_TYPE"
.LASF1432:
	.string	"orig_type"
.LASF1453:
	.string	"pnode"
.LASF1106:
	.string	"LTI_fixunstfsi"
.LASF1417:
	.string	"add_case_node"
.LASF698:
	.string	"object_base"
.LASF370:
	.string	"insn_note"
.LASF1075:
	.string	"LTI_floattisf"
.LASF389:
	.string	"NOTE_INSN_RANGE_END"
.LASF1381:
	.string	"expand_decl_init"
.LASF180:
	.string	"DEFINE_SPLIT"
.LASF819:
	.string	"has_nonlocal_goto"
.LASF833:
	.string	"arg_pointer_save_area_init"
.LASF633:
	.string	"BUILT_IN_ISGREATER"
.LASF617:
	.string	"BUILT_IN_TRAP"
.LASF1412:
	.string	"duplicate"
.LASF219:
	.string	"CONST_VECTOR"
.LASF526:
	.string	"SAVE_EXPR"
.LASF177:
	.string	"MATCH_INSN"
.LASF679:
	.string	"high"
.LASF1089:
	.string	"LTI_fixdfdi"
.LASF920:
	.string	"TI_V4HI_TYPE"
.LASF779:
	.string	"x_save_expr_regs"
.LASF110:
	.string	"DFmode"
.LASF44:
	.string	"SSE_REGS"
.LASF1422:
	.string	"mark_seen_cases"
.LASF1135:
	.string	"gcov_type"
.LASF1245:
	.string	"c_len"
.LASF1302:
	.string	"thisloop"
.LASF65:
	.string	"size_t"
.LASF1033:
	.string	"LTI_eh_personality"
.LASF211:
	.string	"PREFETCH"
.LASF53:
	.string	"LIM_REG_CLASSES"
.LASF52:
	.string	"ALL_REGS"
.LASF762:
	.string	"pops_args"
.LASF104:
	.string	"PSImode"
.LASF1028:
	.string	"LTI_memcmp"
.LASF1260:
	.string	"output_rtx"
.LASF781:
	.string	"x_rtl_expr_chain"
.LASF583:
	.string	"BUILT_IN_STRNCAT"
.LASF1084:
	.string	"LTI_floattitf"
.LASF1391:
	.string	"expand_anon_union_decl"
.LASF275:
	.string	"RANGE_INFO"
.LASF942:
	.string	"SSIZETYPE"
.LASF1419:
	.string	"sparseness"
.LASF308:
	.string	"rtunion_def"
.LASF438:
	.string	"FUNCTION_DECL"
.LASF1002:
	.string	"EXPAND_WRITE"
.LASF636:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF191:
	.string	"DEFINE_ATTR"
.LASF943:
	.string	"USIZETYPE"
.LASF459:
	.string	"COND_EXPR"
.LASF193:
	.string	"SET_ATTR"
.LASF118:
	.string	"TCmode"
.LASF773:
	.string	"x_nonlocal_labels"
.LASF1423:
	.string	"cases_seen"
.LASF1062:
	.string	"LTI_gexf2"
.LASF480:
	.string	"FIX_TRUNC_EXPR"
.LASF268:
	.string	"UNSIGNED_FLOAT"
.LASF360:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF754:
	.string	"cselib_val_struct"
.LASF1188:
	.string	"mark_cond_nesting"
.LASF392:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1477:
	.string	"generating_concat_p"
.LASF694:
	.string	"contents"
.LASF416:
	.string	"COMPLEX_TYPE"
.LASF240:
	.string	"ROTATE"
.LASF1101:
	.string	"LTI_fixunsdfdi"
.LASF618:
	.string	"BUILT_IN_PREFETCH"
.LASF1463:
	.string	"low_rtx"
.LASF328:
	.string	"succ"
.LASF490:
	.string	"LSHIFT_EXPR"
.LASF1077:
	.string	"LTI_floatdidf"
.LASF264:
	.string	"TRUNCATE"
.LASF1351:
	.string	"expand_start_target_temps"
.LASF353:
	.string	"REG_DEP_ANTI"
.LASF115:
	.string	"SCmode"
.LASF1294:
	.string	"expand_start_elseif"
.LASF1098:
	.string	"LTI_fixunssfdi"
.LASF1111:
	.string	"LTI_MAX"
.LASF1024:
	.string	"LTI_abort"
.LASF403:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF926:
	.string	"integer_type_kind"
.LASF105:
	.string	"PDImode"
.LASF1362:
	.string	"from"
.LASF374:
	.string	"NOTE_INSN_BLOCK_END"
.LASF433:
	.string	"INTEGER_CST"
.LASF441:
	.string	"TYPE_DECL"
.LASF895:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF1115:
	.string	"bitmap"
.LASF802:
	.string	"inl_last_parm_insn"
.LASF383:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF1167:
	.string	"last_unconditional_cleanup"
.LASF1201:
	.string	"line"
.LASF586:
	.string	"BUILT_IN_STRCMP"
.LASF749:
	.string	"main_variant"
.LASF1215:
	.string	"link"
.LASF337:
	.string	"flags"
.LASF537:
	.string	"PREDECREMENT_EXPR"
.LASF887:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1072:
	.string	"LTI_unordtf2"
.LASF900:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF168:
	.string	"EXPR_LIST"
.LASF195:
	.string	"EQ_ATTR"
.LASF1325:
	.string	"return_reg"
.LASF1166:
	.string	"conditional_code"
.LASF897:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF990:
	.string	"x_emit_lineno"
.LASF148:
	.string	"CCGOCmode"
.LASF226:
	.string	"CONCAT"
.LASF594:
	.string	"BUILT_IN_STRRCHR"
.LASF1416:
	.string	"value2"
.LASF1137:
	.string	"pred_next"
.LASF916:
	.string	"TI_V16SF_TYPE"
.LASF294:
	.string	"min_after_vec"
.LASF896:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF1271:
	.string	"nalternatives"
.LASF83:
	.string	"_sch_isnvsp"
.LASF232:
	.string	"COND"
.LASF417:
	.string	"VECTOR_TYPE"
.LASF158:
	.string	"MODE_PARTIAL_INT"
.LASF789:
	.string	"x_parm_birth_insn"
.LASF1052:
	.string	"LTI_eqdf2"
.LASF1025:
	.string	"LTI_memcpy"
.LASF791:
	.string	"x_max_parm_reg"
.LASF1110:
	.string	"LTI_profile_function_exit"
.LASF1240:
	.string	"noutputs"
.LASF575:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF752:
	.string	"alias_set"
.LASF1179:
	.string	"line_number_status"
.LASF116:
	.string	"DCmode"
.LASF1183:
	.string	"goto_fixup"
.LASF1159:
	.string	"innermost_stack_block"
.LASF1445:
	.string	"max_ascii"
.LASF87:
	.string	"_sch_isgraph"
.LASF1501:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF497:
	.string	"BIT_ANDTC_EXPR"
.LASF1272:
	.string	"check_unique_operand_names"
.LASF902:
	.string	"TI_PTR_TYPE"
.LASF783:
	.string	"x_tail_recursion_reentry"
.LASF22:
	.string	"identifier"
.LASF241:
	.string	"ASHIFTRT"
.LASF1401:
	.string	"last_cleanup_this_contour"
.LASF1081:
	.string	"LTI_floattixf"
.LASF146:
	.string	"CCmode"
.LASF646:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF638:
	.string	"BUILT_IN_ISUNORDERED"
.LASF720:
	.string	"abstract_flag"
.LASF1494:
	.string	"flag_stack_check"
.LASF326:
	.string	"end_tree"
.LASF43:
	.string	"FLOAT_REGS"
.LASF1449:
	.string	"ranges"
.LASF376:
	.string	"NOTE_INSN_LOOP_END"
.LASF1397:
	.string	"in_fixup"
.LASF144:
	.string	"V16SFmode"
.LASF1243:
	.string	"is_inout"
.LASF1151:
	.string	"next_label"
.LASF1358:
	.string	"before_insn"
.LASF1055:
	.string	"LTI_gedf2"
.LASF864:
	.string	"initial"
.LASF1284:
	.string	"maybe_warn"
.LASF499:
	.string	"TRUTH_ANDIF_EXPR"
.LASF1323:
	.string	"expand_null_return"
.LASF390:
	.string	"NOTE_INSN_LIVE"
.LASF188:
	.string	"DEFINE_COND_EXEC"
.LASF1023:
	.string	"LTI_trunctfdf2"
.LASF941:
	.string	"SIZETYPE"
.LASF1004:
	.string	"OPTAB_DIRECT"
.LASF1380:
	.string	"addr"
.LASF1458:
	.string	"emit_case_nodes"
.LASF948:
	.string	"var_refs_queue"
.LASF1411:
	.string	"converter"
.LASF971:
	.string	"x_stack_pointer_delta"
.LASF978:
	.string	"x_block_stack"
.LASF504:
	.string	"TRUTH_NOT_EXPR"
.LASF184:
	.string	"DEFINE_EXPAND"
.LASF485:
	.string	"NEGATE_EXPR"
.LASF1332:
	.string	"xbitpos"
.LASF822:
	.string	"is_thunk"
.LASF1486:
	.string	"optimize_size"
.LASF1256:
	.string	"argvec"
.LASF1130:
	.string	"elements_used"
.LASF135:
	.string	"V8SImode"
.LASF775:
	.string	"x_nonlocal_goto_handler_labels"
.LASF1457:
	.string	"emit_jump_if_reachable"
.LASF197:
	.string	"INSN"
.LASF310:
	.string	"rtint"
.LASF648:
	.string	"BUILT_IN_STDARG_START"
.LASF605:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF878:
	.string	"TI_INTDI_TYPE"
.LASF227:
	.string	"LABEL_REF"
.LASF1369:
	.string	"warn_about_unused_variables"
.LASF1195:
	.string	"mark_stmt_status"
.LASF883:
	.string	"TI_UINTDI_TYPE"
.LASF352:
	.string	"REG_LABEL"
.LASF893:
	.string	"TI_BITSIZE_UNIT"
.LASF350:
	.string	"REG_CC_SETTER"
.LASF1149:
	.string	"case_node_ptr"
.LASF1126:
	.string	"elt_list"
.LASF430:
	.string	"QUAL_UNION_TYPE"
.LASF1129:
	.string	"num_elements"
.LASF340:
	.string	"REG_DEAD"
.LASF1153:
	.string	"end_label"
.LASF1338:
	.string	"result_reg"
.LASF1372:
	.string	"reachable"
.LASF380:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF994:
	.string	"temp_slot"
.LASF520:
	.string	"CARD_EXPR"
.LASF1472:
	.string	"mode_size"
.LASF343:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF1134:
	.string	"regset"
.LASF17:
	.string	"int_cst"
.LASF1200:
	.string	"file"
.LASF899:
	.string	"TI_DOUBLE_TYPE"
.LASF1262:
	.string	"real_output_rtx"
.LASF1447:
	.string	"balance_case_nodes"
.LASF1394:
	.string	"cleanup_elt"
.LASF616:
	.string	"BUILT_IN_LONGJMP"
.LASF689:
	.string	"tree_vector"
.LASF424:
	.string	"METHOD_TYPE"
.LASF147:
	.string	"CCGCmode"
.LASF332:
	.string	"global_live_at_end"
.LASF25:
	.string	"list"
.LASF522:
	.string	"CONVERT_EXPR"
.LASF1373:
	.string	"old_expr_stmts_for_value"
.LASF223:
	.string	"SCRATCH"
.LASF133:
	.string	"V8QImode"
.LASF474:
	.string	"TRUNC_MOD_EXPR"
.LASF136:
	.string	"V8DImode"
.LASF164:
	.string	"MAX_MODE_CLASS"
.LASF1371:
	.string	"mark_ends"
.LASF1493:
	.string	"flag_pic"
.LASF1363:
	.string	"elim_regs"
.LASF937:
	.string	"itk_unsigned_long_long"
.LASF1495:
	.string	"cfun"
.LASF75:
	.string	"_sch_islower"
.LASF470:
	.string	"TRUNC_DIV_EXPR"
.LASF262:
	.string	"SIGN_EXTEND"
.LASF814:
	.string	"calls_setjmp"
.LASF527:
	.string	"UNSAVE_EXPR"
.LASF1360:
	.string	"expand_nl_goto_receiver"
.LASF1375:
	.string	"old_last_expr_type"
.LASF1092:
	.string	"LTI_fixxfdi"
.LASF469:
	.string	"MULT_EXPR"
.LASF713:
	.string	"value"
.LASF1478:
	.string	"const_int_rtx"
.LASF284:
	.string	"VEC_DUPLICATE"
.LASF508:
	.string	"GE_EXPR"
.LASF776:
	.string	"x_nonlocal_goto_stack_level"
.LASF408:
	.string	"ERROR_MARK"
.LASF1156:
	.string	"block_start_count"
.LASF769:
	.string	"internal_arg_pointer"
.LASF1492:
	.string	"flag_expensive_optimizations"
.LASF590:
	.string	"BUILT_IN_STRPBRK"
.LASF989:
	.string	"x_emit_filename"
.LASF530:
	.string	"REFERENCE_EXPR"
.LASF302:
	.string	"expr"
.LASF475:
	.string	"CEIL_MOD_EXPR"
.LASF1297:
	.string	"expand_end_cond"
.LASF386:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF728:
	.string	"address"
.LASF1045:
	.string	"LTI_eqsf2"
.LASF703:
	.string	"chunkfun"
.LASF670:
	.string	"deprecated_flag"
.LASF619:
	.string	"BUILT_IN_PUTCHAR"
.LASF1265:
	.string	"regname"
.LASF1009:
	.string	"save_level"
.LASF1429:
	.string	"free_case_nodes"
.LASF1231:
	.string	"lists"
.LASF774:
	.string	"x_nonlocal_goto_handler_slots"
.LASF142:
	.string	"V8SFmode"
.LASF1235:
	.string	"label_rtx"
.LASF471:
	.string	"CEIL_DIV_EXPR"
.LASF1298:
	.string	"this"
.LASF1336:
	.string	"bitsize"
.LASF1214:
	.string	"insn"
.LASF609:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF34:
	.string	"DIREG"
.LASF351:
	.string	"REG_CC_USER"
.LASF1208:
	.string	"slot"
.LASF206:
	.string	"ASM_OPERANDS"
.LASF1184:
	.string	"before_jump"
.LASF867:
	.string	"live_range_rtl"
.LASF794:
	.string	"x_temp_slot_level"
.LASF746:
	.string	"minval"
.LASF667:
	.string	"private_flag"
.LASF792:
	.string	"x_parm_reg_stack_loc"
.LASF150:
	.string	"CCZmode"
.LASF377:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF38:
	.string	"INDEX_REGS"
.LASF472:
	.string	"FLOOR_DIV_EXPR"
.LASF410:
	.string	"TREE_LIST"
.LASF1446:
	.string	"group_case_nodes"
.LASF1012:
	.string	"SAVE_NONLOCAL"
.LASF521:
	.string	"RANGE_EXPR"
.LASF1037:
	.string	"LTI_unwind_sjlj_unregister"
.LASF1007:
	.string	"OPTAB_LIB_WIDEN"
.LASF875:
	.string	"TI_INTQI_TYPE"
.LASF725:
	.string	"abstract_origin"
.LASF1059:
	.string	"LTI_eqxf2"
.LASF437:
	.string	"STRING_CST"
.LASF505:
	.string	"LT_EXPR"
.LASF760:
	.string	"varasm"
.LASF1287:
	.string	"has_scope"
.LASF366:
	.string	"REG_NON_LOCAL_GOTO"
.LASF1017:
	.string	"LTI_extenddfxf2"
.LASF1220:
	.string	"rtl_label"
.LASF210:
	.string	"ADDR_DIFF_VEC"
.LASF1194:
	.string	"free_stmt_status"
.LASF495:
	.string	"BIT_XOR_EXPR"
.LASF553:
	.string	"SWITCH_EXPR"
.LASF502:
	.string	"TRUTH_OR_EXPR"
.LASF824:
	.string	"profile"
.LASF1244:
	.string	"constraint"
.LASF272:
	.string	"ZERO_EXTRACT"
.LASF1118:
	.string	"hint"
.LASF205:
	.string	"ASM_INPUT"
.LASF544:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF709:
	.string	"ht_identifier"
.LASF255:
	.string	"ORDERED"
.LASF143:
	.string	"V8DFmode"
.LASF1452:
	.string	"low_minus_one"
.LASF950:
	.string	"promoted_mode"
.LASF865:
	.string	"assembler_name"
.LASF486:
	.string	"MIN_EXPR"
.LASF908:
	.string	"TI_UV4SI_TYPE"
.LASF1071:
	.string	"LTI_letf2"
.LASF736:
	.string	"needs_constructing_flag"
.LASF1157:
	.string	"stack_level"
.LASF269:
	.string	"UNSIGNED_FIX"
.LASF1161:
	.string	"outer_cleanups"
.LASF481:
	.string	"FIX_CEIL_EXPR"
.LASF811:
	.string	"returns_pcc_struct"
.LASF587:
	.string	"BUILT_IN_STRNCMP"
.LASF1278:
	.string	"found"
.LASF1418:
	.string	"all_cases_count"
.LASF686:
	.string	"tree_complex"
.LASF1283:
	.string	"warn_if_unused_value"
.LASF58:
	.string	"sse_words"
.LASF854:
	.string	"comdat_flag"
.LASF40:
	.string	"GENERAL_REGS"
.LASF506:
	.string	"LE_EXPR"
.LASF1427:
	.string	"check_for_full_enumeration_handling"
.LASF856:
	.string	"no_limit_stack"
.LASF863:
	.string	"result"
.LASF1095:
	.string	"LTI_fixtfdi"
.LASF745:
	.string	"name"
.LASF979:
	.string	"x_stack_block_stack"
.LASF169:
	.string	"INSN_LIST"
.LASF1456:
	.string	"node_is_bounded"
.LASF277:
	.string	"RANGE_VAR"
.LASF156:
	.string	"MODE_INT"
.LASF1131:
	.string	"element_size"
.LASF1455:
	.string	"high_plus_one"
.LASF18:
	.string	"real_cst"
.LASF487:
	.string	"MAX_EXPR"
.LASF766:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF718:
	.string	"tree_block"
.LASF57:
	.string	"regno"
.LASF1205:
	.string	"expand_computed_goto"
.LASF889:
	.string	"TI_SIZE_ZERO"
.LASF968:
	.string	"expr_status"
.LASF723:
	.string	"subblocks"
.LASF1379:
	.string	"oldaddr"
.LASF818:
	.string	"has_nonlocal_label"
.LASF930:
	.string	"itk_short"
.LASF1163:
	.string	"n_function_calls"
.LASF1404:
	.string	"expand_start_case"
.LASF581:
	.string	"BUILT_IN_MEMSET"
.LASF278:
	.string	"RANGE_LIVE"
.LASF969:
	.string	"x_pending_stack_adjust"
.LASF478:
	.string	"RDIV_EXPR"
.LASF763:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF842:
	.string	"virtual_flag"
.LASF1123:
	.string	"const_equiv"
.LASF740:
	.string	"pointer_depth"
.LASF685:
	.string	"pointer"
.LASF439:
	.string	"LABEL_DECL"
.LASF1011:
	.string	"SAVE_FUNCTION"
.LASF1158:
	.string	"first_insn"
.LASF652:
	.string	"END_BUILTINS"
.LASF314:
	.string	"rt_addr_diff_vec_flags"
.LASF1436:
	.string	"labelvec"
.LASF944:
	.string	"BITSIZETYPE"
.LASF400:
	.string	"GR_ARG_POINTER"
.LASF1248:
	.string	"ninout"
.LASF491:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF47:
	.string	"FP_SECOND_SSE_REGS"
.LASF287:
	.string	"SS_MINUS"
.LASF435:
	.string	"COMPLEX_CST"
.LASF174:
	.string	"MATCH_PARALLEL"
.LASF131:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF653:
	.string	"tree_common"
.LASF342:
	.string	"REG_EQUIV"
.LASF750:
	.string	"binfo"
.LASF892:
	.string	"TI_BITSIZE_ONE"
.LASF1290:
	.string	"exitflag"
.LASF68:
	.string	"short unsigned int"
.LASF74:
	.string	"_sch_isdigit"
.LASF69:
	.string	"signed char"
.LASF886:
	.string	"TI_INTEGER_ONE"
.LASF173:
	.string	"MATCH_OPERATOR"
.LASF1320:
	.string	"stmt_loop_nest_empty"
.LASF1481:
	.string	"tree_code_type"
.LASF1341:
	.string	"result_reg_mode"
.LASF1016:
	.string	"LTI_extendsftf2"
.LASF712:
	.string	"purpose"
.LASF1192:
	.string	"mark_case_node"
.LASF1474:
	.string	"mode_wider_mode"
.LASF790:
	.string	"x_last_parm_insn"
.LASF876:
	.string	"TI_INTHI_TYPE"
.LASF1128:
	.string	"varray_head_tag"
.LASF321:
	.string	"current"
.LASF742:
	.string	"pointer_to"
.LASF1076:
	.string	"LTI_floatsidf"
.LASF851:
	.string	"weak_flag"
.LASF868:
	.string	"saved_tree"
.LASF961:
	.string	"x_cur_insn_uid"
.LASF714:
	.string	"tree_vec"
.LASF975:
	.string	"x_pending_chain"
.LASF835:
	.string	"filename"
.LASF1489:
	.string	"warn_unused_value"
.LASF289:
	.string	"SS_TRUNCATE"
.LASF539:
	.string	"POSTDECREMENT_EXPR"
.LASF356:
	.string	"REG_EXEC_COUNT"
.LASF1176:
	.string	"index_expr"
.LASF1361:
	.string	"elims"
.LASF627:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF1042:
	.string	"LTI_lthf2"
.LASF799:
	.string	"no_debugging_symbols"
.LASF1100:
	.string	"LTI_fixunsdfsi"
.LASF631:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF1006:
	.string	"OPTAB_WIDEN"
.LASF1074:
	.string	"LTI_floatdisf"
.LASF293:
	.string	"base_after_vec"
.LASF178:
	.string	"DEFINE_INSN"
.LASF925:
	.string	"TI_MAX"
.LASF132:
	.string	"V4DImode"
.LASF334:
	.string	"loop_depth"
.LASF1250:
	.string	"orig_constraint"
.LASF1180:
	.string	"cond"
.LASF86:
	.string	"_sch_isidnum"
.LASF50:
	.string	"INT_SSE_REGS"
.LASF543:
	.string	"TRY_FINALLY_EXPR"
.LASF20:
	.string	"string"
.LASF401:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF997:
	.string	"expand_modifier"
.LASF507:
	.string	"GT_EXPR"
.LASF963:
	.string	"x_last_filename"
.LASF354:
	.string	"REG_DEP_OUTPUT"
.LASF744:
	.string	"symtab"
.LASF1102:
	.string	"LTI_fixunsdfti"
.LASF187:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF288:
	.string	"US_MINUS"
.LASF1083:
	.string	"LTI_floatditf"
.LASF1191:
	.string	"mark_case_nesting"
.LASF910:
	.string	"TI_UV8QI_TYPE"
.LASF1005:
	.string	"OPTAB_LIB"
.LASF1264:
	.string	"old_generating_concat_p"
.LASF768:
	.string	"return_rtx"
.LASF46:
	.string	"FP_TOP_SSE_REGS"
.LASF447:
	.string	"COMPONENT_REF"
.LASF271:
	.string	"SIGN_EXTRACT"
.LASF843:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1291:
	.string	"thiscond"
.LASF468:
	.string	"MINUS_EXPR"
.LASF1421:
	.string	"thisval"
.LASF212:
	.string	"CLOBBER"
.LASF748:
	.string	"next_variant"
.LASF1136:
	.string	"edge_def"
.LASF962:
	.string	"x_last_linenum"
.LASF991:
	.string	"x_goto_fixup_chain"
.LASF162:
	.string	"MODE_VECTOR_INT"
.LASF857:
	.string	"built_in_class"
.LASF358:
	.string	"REG_SAVE_AREA"
.LASF1313:
	.string	"expand_end_null_loop"
.LASF280:
	.string	"CALL_PLACEHOLDER"
.LASF757:
	.string	"function"
.LASF591:
	.string	"BUILT_IN_STRSPN"
.LASF1393:
	.string	"decl_elt"
.LASF140:
	.string	"V4SFmode"
.LASF455:
	.string	"COMPOUND_EXPR"
.LASF823:
	.string	"instrument_entry_exit"
.LASF880:
	.string	"TI_UINTQI_TYPE"
.LASF1168:
	.string	"cleanup_ptr"
.LASF1498:
	.string	"empty_string"
.LASF786:
	.string	"x_frame_offset"
.LASF610:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF731:
	.string	"size_unit"
.LASF626:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF234:
	.string	"PLUS"
.LASF578:
	.string	"BUILT_IN_RINDEX"
.LASF1054:
	.string	"LTI_gtdf2"
.LASF1347:
	.string	"copy"
.LASF250:
	.string	"POST_DEC"
.LASF1113:
	.string	"bits"
.LASF97:
	.string	"HImode"
.LASF986:
	.string	"x_last_expr_type"
.LASF338:
	.string	"rtunion"
.LASF379:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF160:
	.string	"MODE_COMPLEX_INT"
.LASF976:
	.string	"eh_status"
.LASF1148:
	.string	"balance"
.LASF1346:
	.string	"formals"
.LASF1178:
	.string	"printname"
.LASF555:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF953:
	.string	"sequence_stack"
.LASF64:
	.string	"long int"
.LASF405:
	.string	"GR_VIRTUAL_CFA"
.LASF421:
	.string	"POINTER_TYPE"
.LASF489:
	.string	"FFS_EXPR"
.LASF344:
	.string	"REG_WAS_0"
.LASF413:
	.string	"VOID_TYPE"
.LASF1479:
	.string	"const_tiny_rtx"
.LASF996:
	.string	"language_function"
.LASF525:
	.string	"VIEW_CONVERT_EXPR"
.LASF874:
	.string	"TI_ERROR_MARK"
.LASF365:
	.string	"REG_NORETURN"
.LASF1425:
	.string	"next_node_offset"
.LASF111:
	.string	"XFmode"
.LASF813:
	.string	"needs_context"
.LASF364:
	.string	"REG_MAYBE_DEAD"
.LASF692:
	.string	"limit"
.LASF1311:
	.string	"start_move"
.LASF1386:
	.string	"flag"
.LASF141:
	.string	"V4DFmode"
.LASF1000:
	.string	"EXPAND_CONST_ADDRESS"
.LASF4:
	.string	"unchanging"
.LASF846:
	.string	"defer_output"
.LASF922:
	.string	"TI_V2SF_TYPE"
.LASF1022:
	.string	"LTI_truncxfdf2"
.LASF1207:
	.string	"declare_nonlocal_label"
.LASF339:
	.string	"reg_note"
.LASF817:
	.string	"calls_eh_return"
.LASF1172:
	.string	"label"
.LASF796:
	.string	"x_target_temp_slot_level"
.LASF764:
	.string	"pretend_args_size"
.LASF751:
	.string	"context"
.LASF1485:
	.string	"optimize"
.LASF88:
	.string	"_sch_iscppsp"
.LASF165:
	.string	"rtx_code"
.LASF62:
	.string	"CUMULATIVE_ARGS"
.LASF984:
	.string	"x_nesting_depth"
.LASF466:
	.string	"WITH_RECORD_EXPR"
.LASF1409:
	.string	"check_seenlabel"
.LASF954:
	.string	"last"
.LASF873:
	.string	"tree_index"
.LASF1402:
	.string	"any_pending_cleanups"
.LASF1080:
	.string	"LTI_floatdixf"
.LASF826:
	.string	"varargs"
.LASF719:
	.string	"handler_block_flag"
.LASF859:
	.string	"non_addressable"
.LASF562:
	.string	"BUILT_IN_FABSL"
.LASF1329:
	.string	"result_rtl"
.LASF31:
	.string	"CREG"
.LASF1109:
	.string	"LTI_profile_function_entry"
.LASF1448:
	.string	"cost"
.LASF642:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF1251:
	.string	"match"
.LASF828:
	.string	"x_whole_function_mode_p"
.LASF1170:
	.string	"depth"
.LASF166:
	.string	"UNKNOWN"
.LASF208:
	.string	"UNSPEC_VOLATILE"
.LASF452:
	.string	"ARRAY_RANGE_REF"
.LASF947:
	.string	"TYPE_KIND_LAST"
.LASF589:
	.string	"BUILT_IN_STRSTR"
.LASF845:
	.string	"common_flag"
.LASF704:
	.string	"freefun"
.LASF382:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF66:
	.string	"long unsigned int"
.LASF853:
	.string	"no_instrument_function_entry_exit"
.LASF661:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF407:
	.string	"tree_code"
.LASF77:
	.string	"_sch_ispunct"
.LASF1227:
	.string	"thisblock"
.LASF107:
	.string	"HFmode"
.LASF625:
	.string	"BUILT_IN_FPRINTF"
.LASF656:
	.string	"constant_flag"
.LASF597:
	.string	"BUILT_IN_COS"
.LASF215:
	.string	"TRAP_IF"
.LASF1308:
	.string	"eh_regions"
.LASF669:
	.string	"bounded_flag"
.LASF444:
	.string	"RESULT_DECL"
.LASF542:
	.string	"TRY_CATCH_EXPR"
.LASF362:
	.string	"REG_EH_REGION"
.LASF915:
	.string	"TI_V4SF_TYPE"
.LASF711:
	.string	"tree_list"
.LASF1091:
	.string	"LTI_fixxfsi"
.LASF1247:
	.string	"input_num"
.LASF345:
	.string	"REG_RETVAL"
.LASF119:
	.string	"CQImode"
.LASF806:
	.string	"stack_alignment_needed"
.LASF71:
	.string	"char"
.LASF810:
	.string	"returns_struct"
.LASF1021:
	.string	"LTI_trunctfsf2"
.LASF117:
	.string	"XCmode"
.LASF784:
	.string	"x_arg_pointer_save_area"
.LASF637:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF29:
	.string	"AREG"
.LASF1395:
	.string	"expand_cleanups"
.LASF556:
	.string	"built_in_function"
.LASF782:
	.string	"x_tail_recursion_label"
.LASF524:
	.string	"NON_LVALUE_EXPR"
.LASF1154:
	.string	"alt_end_label"
.LASF699:
	.string	"next_free"
.LASF1460:
	.string	"test_label"
.LASF855:
	.string	"malloc_flag"
.LASF1093:
	.string	"LTI_fixxfti"
.LASF1431:
	.string	"orig_index"
.LASF808:
	.string	"language"
.LASF243:
	.string	"ROTATERT"
.LASF927:
	.string	"itk_char"
.LASF1187:
	.string	"cleanup_list_list"
.LASF1414:
	.string	"pushcase_range"
.LASF733:
	.string	"precision"
.LASF229:
	.string	"ADDRESSOF"
.LASF923:
	.string	"TI_V16QI_TYPE"
.LASF367:
	.string	"REG_SETJMP"
.LASF1388:
	.string	"expand_decl_cleanup_eh"
.LASF1366:
	.string	"label_list"
.LASF125:
	.string	"V2QImode"
.LASF1035:
	.string	"LTI_longjmp"
.LASF547:
	.string	"RETURN_EXPR"
.LASF571:
	.string	"BUILT_IN_CIMAG"
.LASF612:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF957:
	.string	"x_reg_rtx_no"
.LASF103:
	.string	"PHImode"
.LASF716:
	.string	"complexity"
.LASF737:
	.string	"transparent_union_flag"
.LASF949:
	.string	"modified"
.LASF966:
	.string	"regno_decl"
.LASF695:
	.string	"obstack"
.LASF940:
	.string	"size_type_kind"
.LASF1008:
	.string	"OPTAB_MUST_WIDEN"
.LASF1125:
	.string	"reg_info_def"
.LASF124:
	.string	"COImode"
.LASF248:
	.string	"PRE_DEC"
.LASF982:
	.string	"x_case_stack"
.LASF1390:
	.string	"node"
.LASF82:
	.string	"_sch_isvsp"
.LASF1030:
	.string	"LTI_memset"
.LASF381:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF399:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1280:
	.string	"expand_expr_stmt_value"
.LASF305:
	.string	"align"
.LASF639:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF1410:
	.string	"pushcase"
.LASF816:
	.string	"calls_alloca"
.LASF1204:
	.string	"emit_jump"
.LASF894:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF795:
	.string	"x_var_temp_slot_level"
.LASF1065:
	.string	"LTI_unordxf2"
.LASF1307:
	.string	"etc_note"
.LASF155:
	.string	"MODE_RANDOM"
.LASF286:
	.string	"US_PLUS"
.LASF1268:
	.string	"buffer"
.LASF1459:
	.string	"imode"
.LASF1339:
	.string	"result_val"
.LASF145:
	.string	"BLKmode"
.LASF1322:
	.string	"expand_exit_something"
.LASF114:
	.string	"HCmode"
.LASF460:
	.string	"BIND_EXPR"
.LASF532:
	.string	"FDESC_EXPR"
.LASF913:
	.string	"TI_UV2SF_TYPE"
.LASF467:
	.string	"PLUS_EXPR"
.LASF919:
	.string	"TI_V8QI_TYPE"
.LASF570:
	.string	"BUILT_IN_CREALL"
.LASF1209:
	.string	"expand_goto"
.LASF924:
	.string	"TI_MAIN_IDENTIFIER"
.LASF588:
	.string	"BUILT_IN_STRLEN"
.LASF429:
	.string	"UNION_TYPE"
.LASF677:
	.string	"lang_flag_6"
.LASF220:
	.string	"CONST_STRING"
.LASF283:
	.string	"VEC_CONCAT"
.LASF1424:
	.string	"next_node_to_try"
.LASF304:
	.string	"size"
.LASF531:
	.string	"ENTRY_VALUE_EXPR"
.LASF606:
	.string	"BUILT_IN_NEXT_ARG"
.LASF295:
	.string	"max_after_vec"
.LASF753:
	.string	"lang_specific"
.LASF1324:
	.string	"expand_value_return"
.LASF357:
	.string	"REG_NOALIAS"
.LASF196:
	.string	"ATTR_FLAG"
.LASF702:
	.string	"alignment_mask"
.LASF1202:
	.string	"emit_nop"
.LASF1001:
	.string	"EXPAND_INITIALIZER"
.LASF152:
	.string	"CCFPUmode"
.LASF1488:
	.string	"warn_unused_variable"
.LASF1499:
	.string	"ggc_pending_trees"
.LASF1400:
	.string	"move_cleanups_up"
.LASF341:
	.string	"REG_INC"
.LASF186:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1310:
	.string	"top_label"
.LASF1277:
	.string	"failure"
.LASF1061:
	.string	"LTI_gtxf2"
.LASF1304:
	.string	"expand_start_null_loop"
.LASF1355:
	.string	"conditional_context"
.LASF850:
	.string	"artificial_flag"
.LASF787:
	.string	"x_context_display"
.LASF1206:
	.string	"expand_label"
.LASF190:
	.string	"ADDRESS"
.LASF512:
	.string	"ORDERED_EXPR"
.LASF1041:
	.string	"LTI_gehf2"
.LASF650:
	.string	"BUILT_IN_VA_COPY"
.LASF1437:
	.string	"before_case"
.LASF800:
	.string	"original_arg_vector"
.LASF21:
	.string	"complex"
.LASF1010:
	.string	"SAVE_BLOCK"
.LASF1096:
	.string	"LTI_fixtfti"
.LASF1344:
	.string	"tail_recursion_args"
.LASF708:
	.string	"alloc_failed"
.LASF1337:
	.string	"result_pseudos"
.LASF832:
	.string	"uses_eh_lsda"
.LASF1279:
	.string	"expand_expr_stmt"
.LASF565:
	.string	"BUILT_IN_CONJ"
.LASF449:
	.string	"INDIRECT_REF"
.LASF1121:
	.string	"cptr"
.LASF1211:
	.string	"handler_slot"
.LASF423:
	.string	"REFERENCE_TYPE"
.LASF1222:
	.string	"next_block"
.LASF1403:
	.string	"this_contour"
.LASF1438:
	.string	"wider_mode"
.LASF319:
	.string	"bitmap_head_def"
.LASF1443:
	.string	"estimate_case_costs"
.LASF1259:
	.string	"tail"
.LASF724:
	.string	"supercontext"
.LASF651:
	.string	"BUILT_IN_EXPECT"
.LASF747:
	.string	"maxval"
.LASF511:
	.string	"UNORDERED_EXPR"
.LASF1048:
	.string	"LTI_gesf2"
.LASF946:
	.string	"UBITSIZETYPE"
.LASF907:
	.string	"TI_UV4SF_TYPE"
.LASF1316:
	.string	"expand_exit_loop"
.LASF1175:
	.string	"default_label"
.LASF290:
	.string	"US_TRUNCATE"
.LASF673:
	.string	"lang_flag_2"
.LASF1263:
	.string	"inout_mode"
.LASF592:
	.string	"BUILT_IN_STRCSPN"
.LASF1047:
	.string	"LTI_gtsf2"
.LASF519:
	.string	"SET_LE_EXPR"
.LASF1186:
	.string	"target_rtl"
.LASF394:
	.string	"global_rtl_index"
.LASF56:
	.string	"nregs"
.LASF285:
	.string	"SS_PLUS"
.LASF1500:
	.string	"stmt_obstack"
.LASF247:
	.string	"UMAX"
.LASF538:
	.string	"PREINCREMENT_EXPR"
.LASF45:
	.string	"MMX_REGS"
.LASF299:
	.string	"scale"
.LASF836:
	.string	"linenum"
.LASF96:
	.string	"QImode"
.LASF1289:
	.string	"expand_start_cond"
.LASF1276:
	.string	"resolve_operand_name_1"
.LASF1470:
	.string	"target_flags"
.LASF1174:
	.string	"case_list"
.LASF515:
	.string	"UNGT_EXPR"
.LASF1132:
	.string	"data"
.LASF397:
	.string	"GR_STACK_POINTER"
.LASF1097:
	.string	"LTI_fixunssfsi"
.LASF741:
	.string	"user_align"
.LASF1073:
	.string	"LTI_floatsisf"
.LASF559:
	.string	"BUILT_IN_LABS"
.LASF1155:
	.string	"continue_label"
.LASF108:
	.string	"TQFmode"
.LASF1430:
	.string	"expand_end_case_type"
.LASF1315:
	.string	"whichloop"
.LASF1490:
	.string	"warn_switch"
.LASF1464:
	.string	"new_index"
.LASF1145:
	.string	"right"
.LASF324:
	.string	"head"
.LASF1221:
	.string	"end_block"
.LASF1306:
	.string	"expand_end_loop"
.LASF658:
	.string	"volatile_flag"
.LASF55:
	.string	"words"
.LASF582:
	.string	"BUILT_IN_STRCAT"
.LASF598:
	.string	"BUILT_IN_SQRTF"
.LASF1210:
	.string	"label_ref"
.LASF296:
	.string	"min_after_base"
.LASF601:
	.string	"BUILT_IN_SQRTL"
.LASF1299:
	.string	"__obj"
.LASF1043:
	.string	"LTI_lehf2"
.LASF1122:
	.string	"sched"
.LASF1374:
	.string	"old_last_expr_value"
.LASF933:
	.string	"itk_unsigned_int"
.LASF426:
	.string	"ARRAY_TYPE"
.LASF829:
	.string	"x_dont_save_pending_sizes_p"
.LASF54:
	.string	"ix86_args"
.LASF554:
	.string	"EXC_PTR_EXPR"
.LASF700:
	.string	"chunk_limit"
.LASF1082:
	.string	"LTI_floatsitf"
.LASF576:
	.string	"BUILT_IN_FFS"
.LASF1103:
	.string	"LTI_fixunsxfsi"
.LASF663:
	.string	"used_flag"
.LASF621:
	.string	"BUILT_IN_PRINTF"
.LASF28:
	.string	"NO_REGS"
.LASF1144:
	.string	"left"
.LASF732:
	.string	"attributes"
.LASF918:
	.string	"TI_V8HI_TYPE"
.LASF1020:
	.string	"LTI_truncxfsf2"
.LASF765:
	.string	"outgoing_args_size"
.LASF482:
	.string	"FIX_FLOOR_EXPR"
.LASF1087:
	.string	"LTI_fixsfti"
.LASF101:
	.string	"OImode"
.LASF363:
	.string	"REG_SAVE_NOTE"
.LASF628:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF1334:
	.string	"bytes"
.LASF671:
	.string	"lang_flag_0"
.LASF672:
	.string	"lang_flag_1"
.LASF448:
	.string	"BIT_FIELD_REF"
.LASF674:
	.string	"lang_flag_3"
.LASF675:
	.string	"lang_flag_4"
.LASF676:
	.string	"lang_flag_5"
.LASF245:
	.string	"SMAX"
.LASF861:
	.string	"lang_flag_7"
.LASF406:
	.string	"GR_MAX"
.LASF871:
	.string	"pointer_alias_set"
.LASF282:
	.string	"VEC_SELECT"
.LASF1094:
	.string	"LTI_fixtfsi"
.LASF563:
	.string	"BUILT_IN_LLABS"
.LASF347:
	.string	"REG_NONNEG"
.LASF442:
	.string	"VAR_DECL"
.LASF717:
	.string	"operands"
.LASF456:
	.string	"MODIFY_EXPR"
.LASF956:
	.string	"emit_status"
.LASF710:
	.string	"tree_identifier"
.LASF163:
	.string	"MODE_VECTOR_FLOAT"
.LASF411:
	.string	"TREE_VEC"
.LASF253:
	.string	"POST_MODIFY"
.LASF604:
	.string	"BUILT_IN_SAVEREGS"
.LASF548:
	.string	"EXIT_EXPR"
.LASF1444:
	.string	"min_ascii"
.LASF566:
	.string	"BUILT_IN_CONJF"
.LASF1420:
	.string	"lastval"
.LASF359:
	.string	"REG_BR_PRED"
.LASF567:
	.string	"BUILT_IN_CONJL"
.LASF179:
	.string	"DEFINE_PEEPHOLE"
.LASF90:
	.string	"long long unsigned int"
.LASF388:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF1146:
	.string	"parent"
.LASF303:
	.string	"offset"
.LASF300:
	.string	"addr_diff_vec_flags"
.LASF1099:
	.string	"LTI_fixunssfti"
.LASF1108:
	.string	"LTI_fixunstfti"
.LASF175:
	.string	"MATCH_OP_DUP"
.LASF189:
	.string	"SEQUENCE"
.LASF1105:
	.string	"LTI_fixunsxfti"
.LASF1295:
	.string	"expand_start_else"
.LASF1331:
	.string	"bitpos"
.LASF409:
	.string	"IDENTIFIER_NODE"
.LASF911:
	.string	"TI_UV4HI_TYPE"
.LASF1018:
	.string	"LTI_extenddftf2"
.LASF999:
	.string	"EXPAND_SUM"
.LASF881:
	.string	"TI_UINTHI_TYPE"
.LASF706:
	.string	"use_extra_arg"
.LASF106:
	.string	"QFmode"
.LASF1253:
	.string	"outputs"
.LASF1252:
	.string	"expand_asm_operands"
.LASF866:
	.string	"section_name"
.LASF1165:
	.string	"block_target_temp_slot_level"
.LASF1275:
	.string	"pconstraints"
.LASF1389:
	.string	"eh_only"
.LASF767:
	.string	"args_info"
.LASF513:
	.string	"UNLT_EXPR"
.LASF1345:
	.string	"actuals"
.LASF825:
	.string	"limit_stack"
.LASF432:
	.string	"LANG_TYPE"
.LASF216:
	.string	"RESX"
.LASF72:
	.string	"_sch_isblank"
.LASF1139:
	.string	"dest"
.LASF204:
	.string	"PARALLEL"
.LASF1439:
	.string	"i_low"
.LASF13:
	.string	"num_elem"
.LASF885:
	.string	"TI_INTEGER_ZERO"
.LASF1487:
	.string	"extra_warnings"
.LASF1326:
	.string	"expand_null_return_1"
.LASF1257:
	.string	"constraintvec"
.LASF254:
	.string	"UNORDERED"
.LASF1321:
	.string	"preserve_subexpressions_p"
.LASF153:
	.string	"MAX_MACHINE_MODE"
.LASF1333:
	.string	"big_endian_correction"
.LASF932:
	.string	"itk_int"
.LASF1039:
	.string	"LTI_nehf2"
.LASF756:
	.string	"off_align"
.LASF331:
	.string	"global_live_at_start"
.LASF51:
	.string	"FLOAT_INT_SSE_REGS"
.LASF171:
	.string	"MATCH_SCRATCH"
.LASF221:
	.string	"CONST"
.LASF965:
	.string	"regno_pointer_align"
.LASF270:
	.string	"SQRT"
.LASF1079:
	.string	"LTI_floatsixf"
.LASF734:
	.string	"string_flag"
.LASF396:
	.string	"GR_CC0"
.LASF1267:
	.string	"memloc"
.LASF1143:
	.string	"case_node"
.LASF154:
	.string	"mode_class"
.LASF1434:
	.string	"table_label"
.LASF236:
	.string	"MULT"
.LASF427:
	.string	"SET_TYPE"
.LASF159:
	.string	"MODE_CC"
.LASF722:
	.string	"vars"
.LASF329:
	.string	"local_set"
.LASF461:
	.string	"CALL_EXPR"
.LASF102:
	.string	"PQImode"
.LASF496:
	.string	"BIT_AND_EXPR"
.LASF1468:
	.string	"cost_table_initialized"
.LASF1032:
	.string	"LTI_unwind_resume"
.LASF535:
	.string	"REALPART_EXPR"
.LASF1442:
	.string	"do_jump_if_equal"
.LASF1378:
	.string	"reg_mode"
.LASF514:
	.string	"UNLE_EXPR"
.LASF793:
	.string	"x_temp_slots"
.LASF877:
	.string	"TI_INTSI_TYPE"
.LASF572:
	.string	"BUILT_IN_CIMAGF"
.LASF838:
	.string	"nonlocal_flag"
.LASF780:
	.string	"x_stack_slot_list"
.LASF573:
	.string	"BUILT_IN_CIMAGL"
.LASF199:
	.string	"CALL_INSN"
.LASF1162:
	.string	"label_chain"
.LASF1147:
	.string	"code_label"
.LASF224:
	.string	"SUBREG"
.LASF1328:
	.string	"retval"
.LASF739:
	.string	"restrict_flag"
.LASF84:
	.string	"_sch_isalpha"
.LASF815:
	.string	"calls_longjmp"
.LASF137:
	.string	"V16QImode"
.LASF1177:
	.string	"nominal_type"
.LASF368:
	.string	"REG_ALWAYS_RETURN"
.LASF560:
	.string	"BUILT_IN_FABS"
.LASF1370:
	.string	"expand_end_bindings"
.LASF1312:
	.string	"next_insn"
.LASF23:
	.string	"decl"
.LASF1484:
	.string	"current_function_decl"
.LASF536:
	.string	"IMAGPART_EXPR"
.LASF91:
	.string	"long long int"
.LASF912:
	.string	"TI_UV2SI_TYPE"
.LASF869:
	.string	"inlined_fns"
.LASF938:
	.string	"itk_none"
.LASF346:
	.string	"REG_LIBCALL"
.LASF945:
	.string	"SBITSIZETYPE"
.LASF113:
	.string	"QCmode"
.LASF222:
	.string	"VALUE"
.LASF202:
	.string	"NOTE"
.LASF1064:
	.string	"LTI_lexf2"
.LASF464:
	.string	"CLEANUP_POINT_EXPR"
.LASF1335:
	.string	"n_regs"
.LASF1350:
	.string	"block_flag"
.LASF59:
	.string	"sse_nregs"
.LASF1399:
	.string	"end_cleanup_deferral"
.LASF246:
	.string	"UMIN"
.LASF172:
	.string	"MATCH_DUP"
.LASF434:
	.string	"REAL_CST"
.LASF76:
	.string	"_sch_isprint"
.LASF593:
	.string	"BUILT_IN_STRCHR"
.LASF649:
	.string	"BUILT_IN_VA_END"
.LASF323:
	.string	"basic_block_def"
.LASF644:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1189:
	.string	"mark_loop_nesting"
.LASF1038:
	.string	"LTI_eqhf2"
.LASF85:
	.string	"_sch_isalnum"
.LASF743:
	.string	"reference_to"
.LASF483:
	.string	"FIX_ROUND_EXPR"
.LASF510:
	.string	"NE_EXPR"
.LASF992:
	.string	"varasm_status"
.LASF613:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF635:
	.string	"BUILT_IN_ISLESS"
.LASF1385:
	.string	"cond_context"
.LASF1217:
	.string	"body"
.LASF600:
	.string	"BUILT_IN_COSF"
.LASF418:
	.string	"ENUMERAL_TYPE"
.LASF1181:
	.string	"loop"
.LASF1364:
	.string	"expand_nl_goto_receivers"
.LASF955:
	.string	"sequence_rtl_expr"
.LASF375:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1114:
	.string	"bitmap_element"
.LASF1015:
	.string	"LTI_extendsfxf2"
.LASF772:
	.string	"x_function_call_count"
.LASF120:
	.string	"CHImode"
.LASF78:
	.string	"_sch_isspace"
.LASF569:
	.string	"BUILT_IN_CREALF"
.LASF391:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF194:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF852:
	.string	"non_addr_const_p"
.LASF690:
	.string	"elements"
.LASF964:
	.string	"regno_pointer_align_length"
.LASF959:
	.string	"x_first_insn"
.LASF928:
	.string	"itk_signed_char"
.LASF973:
	.string	"x_apply_args_value"
.LASF49:
	.string	"FLOAT_INT_REGS"
.LASF1396:
	.string	"dont_do"
.LASF218:
	.string	"CONST_DOUBLE"
.LASF615:
	.string	"BUILT_IN_SETJMP"
.LASF890:
	.string	"TI_SIZE_ONE"
.LASF632:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF934:
	.string	"itk_long"
.LASF149:
	.string	"CCNOmode"
.LASF130:
	.string	"V4HImode"
.LASF454:
	.string	"CONSTRUCTOR"
.LASF256:
	.string	"UNEQ"
.LASF412:
	.string	"BLOCK"
.LASF239:
	.string	"ASHIFT"
.LASF906:
	.string	"TI_VOID_LIST_NODE"
.LASF244:
	.string	"SMIN"
.LASF1218:
	.string	"__FUNCTION__"
.LASF231:
	.string	"IF_THEN_ELSE"
.LASF1229:
	.string	"dont_jump_in"
.LASF841:
	.string	"bit_field_flag"
.LASF620:
	.string	"BUILT_IN_PUTS"
.LASF1026:
	.string	"LTI_memmove"
.LASF1190:
	.string	"mark_block_nesting"
.LASF844:
	.string	"in_system_header_flag"
.LASF1368:
	.string	"save_receiver"
.LASF1104:
	.string	"LTI_fixunsxfdi"
.LASF664:
	.string	"nothrow_flag"
.LASF847:
	.string	"transparent_union"
.LASF387:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF1216:
	.string	"expand_goto_internal"
.LASF761:
	.string	"outer"
.LASF870:
	.string	"vindex"
.LASF705:
	.string	"extra_arg"
.LASF1314:
	.string	"expand_continue_loop"
.LASF384:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF436:
	.string	"VECTOR_CST"
.LASF63:
	.string	"unsigned int"
.LASF528:
	.string	"RTL_EXPR"
.LASF307:
	.string	"tree_node"
.LASF1349:
	.string	"note"
.LASF777:
	.string	"x_cleanup_label"
.LASF1029:
	.string	"LTI_bcmp"
.LASF517:
	.string	"UNEQ_EXPR"
.LASF585:
	.string	"BUILT_IN_STRNCPY"
.LASF1036:
	.string	"LTI_unwind_sjlj_register"
.LASF1387:
	.string	"set_flag_0"
.LASF1354:
	.string	"grandparent"
.LASF1357:
	.string	"expand_nl_handler_label"
.LASF414:
	.string	"INTEGER_TYPE"
.LASF257:
	.string	"UNGE"
.LASF1060:
	.string	"LTI_nexf2"
.LASF1230:
	.string	"cleanup_insns"
.LASF988:
	.string	"x_expr_stmts_for_value"
.LASF958:
	.string	"x_first_label_num"
.LASF1246:
	.string	"parse_input_constraint"
.LASF1003:
	.string	"optab_methods"
.LASF837:
	.string	"external_flag"
.LASF70:
	.string	"short int"
.LASF327:
	.string	"pred"
.LASF258:
	.string	"UNGT"
.LASF1296:
	.string	"expand_elseif"
.LASF821:
	.string	"has_computed_jump"
.LASF595:
	.string	"BUILT_IN_SQRT"
.LASF450:
	.string	"BUFFER_REF"
.LASF960:
	.string	"x_last_insn"
.LASF980:
	.string	"x_cond_stack"
.LASF1428:
	.string	"bytes_needed"
.LASF693:
	.string	"prev"
.LASF1382:
	.string	"was_used"
.LASF533:
	.string	"COMPLEX_EXPR"
.LASF641:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1196:
	.string	"using_eh_for_cleanups"
.LASF807:
	.string	"preferred_stack_boundary"
.LASF94:
	.string	"VOIDmode"
.LASF369:
	.string	"REG_VTABLE_REF"
.LASF1040:
	.string	"LTI_gthf2"
.LASF905:
	.string	"TI_VA_LIST_TYPE"
.LASF404:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF274:
	.string	"LO_SUM"
.LASF657:
	.string	"addressable_flag"
.LASF1236:
	.string	"parse_output_constraint"
.LASF1014:
	.string	"LTI_extendsfdf2"
.LASF336:
	.string	"frequency"
.LASF415:
	.string	"REAL_TYPE"
.LASF1046:
	.string	"LTI_nesf2"
.LASF309:
	.string	"rtwint"
.LASF1173:
	.string	"start"
.LASF1138:
	.string	"succ_next"
.LASF552:
	.string	"EXPR_WITH_FILE_LOCATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
