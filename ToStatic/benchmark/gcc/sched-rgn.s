	.file	"sched-rgn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sched-rgn.c -mtune=generic -march=x86-64 -g
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
	.local	nr_inter
	.comm	nr_inter,4,4
	.local	nr_spec
	.comm	nr_spec,4,4
	.local	edge_table
	.comm	edge_table,8,8
	.local	nr_edges
	.comm	nr_edges,4,4
	.local	in_edges
	.comm	in_edges,8,8
	.local	out_edges
	.comm	out_edges,8,8
	.local	nr_regions
	.comm	nr_regions,4,4
	.local	rgn_table
	.comm	rgn_table,8,8
	.local	rgn_bb_table
	.comm	rgn_bb_table,8,8
	.local	block_to_bb
	.comm	block_to_bb,8,8
	.local	containing_rgn
	.comm	containing_rgn,8,8
	.local	current_nr_blocks
	.comm	current_nr_blocks,4,4
	.local	current_blocks
	.comm	current_blocks,4,4
	.local	bitlst_table_last
	.comm	bitlst_table_last,4,4
	.local	bitlst_table_size
	.comm	bitlst_table_size,4,4
	.local	bitlst_table
	.comm	bitlst_table,8,8
	.local	candidate_table
	.comm	candidate_table,8,8
	.local	bblst_table
	.comm	bblst_table,8,8
	.local	bblst_size
	.comm	bblst_size,4,4
	.local	bblst_last
	.comm	bblst_last,4,4
	.local	target_bb
	.comm	target_bb,4,4
	.local	dom
	.comm	dom,8,8
	.local	prob
	.comm	prob,8,8
	.local	rgn_nr_edges
	.comm	rgn_nr_edges,4,4
	.local	rgn_edges
	.comm	rgn_edges,8,8
	.local	edge_to_bit
	.comm	edge_to_bit,8,8
	.local	pot_split
	.comm	pot_split,8,8
	.local	ancestor_edges
	.comm	ancestor_edges,8,8
	.type	is_cfg_nonregular, @function
is_cfg_nonregular:
.LFB2:
	.file 1 "sched-rgn.c"
	.loc 1 320 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 327 0
	movq	cfun(%rip), %rax	# cfun, cfun.0
	movq	176(%rax), %rax	# cfun.0_4->x_nonlocal_goto_handler_labels, D.15600
	testq	%rax, %rax	# D.15600
	je	.L2	#,
	.loc 1 328 0
	movl	$1, %eax	#, D.15599
	jmp	.L3	#
.L2:
	.loc 1 331 0
	movq	cfun(%rip), %rax	# cfun, cfun.1
	movq	16(%rax), %rax	# cfun.1_7->expr, D.15601
	movq	32(%rax), %rax	# _8->x_forced_labels, D.15600
	testq	%rax, %rax	# D.15600
	je	.L4	#,
	.loc 1 332 0
	movl	$1, %eax	#, D.15599
	jmp	.L3	#
.L4:
	.loc 1 336 0
	movq	cfun(%rip), %rax	# cfun, cfun.2
	movzbl	425(%rax), %eax	# *cfun.2_11, D.15602
	andl	$8, %eax	#, D.15602
	testb	%al, %al	# D.15602
	je	.L5	#,
	.loc 1 337 0
	movl	$1, %eax	#, D.15599
	jmp	.L3	#
.L5:
	.loc 1 342 0
	call	current_function_has_exception_handlers	#
	testb	%al, %al	# D.15603
	je	.L6	#,
	.loc 1 343 0
	movl	$1, %eax	#, D.15599
	jmp	.L3	#
.L6:
	.loc 1 348 0
	movl	$0, -24(%rbp)	#, b
	jmp	.L7	#
.L13:
	.loc 1 349 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.3
	movl	-24(%rbp), %edx	# b, tmp85
	movslq	%edx, %rdx	# tmp85, tmp84
	addq	$4, %rdx	#, tmp86
	movq	(%rax,%rdx,8), %rax	# basic_block_info.3_19->data.bb, D.15604
	movq	(%rax), %rax	# _20->head, tmp87
	movq	%rax, -16(%rbp)	# tmp87, insn
.L12:
	.loc 1 351 0
	movq	-16(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_2->code, D.15605
	movzwl	%ax, %eax	# D.15605, tmp89
	movl	%eax, -20(%rbp)	# tmp89, code
	.loc 1 352 0
	movl	-20(%rbp), %eax	# code, code.4
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15606
	cmpb	$105, %al	#, D.15606
	jne	.L8	#,
	.loc 1 352 0 is_stmt 0 discriminator 1
	cmpl	$33, -20(%rbp)	#, code
	je	.L8	#,
.LBB2:
	.loc 1 354 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn, tmp91
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp92, note
	.loc 1 356 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L8	#,
	.loc 1 357 0
	movq	-16(%rbp), %rax	# insn, tmp93
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, D.15600
	movzwl	(%rax), %eax	# _27->code, D.15605
	cmpw	$33, %ax	#, D.15605
	jne	.L9	#,
	.loc 1 358 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp94
	movq	8(%rax), %rdx	# note_26->fld[0].rtx, D.15600
	movq	-16(%rbp), %rax	# insn, tmp95
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, D.15600
	movl	$13, %esi	#,
	movq	%rax, %rdi	# D.15600,
	call	find_reg_note	#
	.loc 1 357 0 discriminator 1
	testq	%rax, %rax	# D.15600
	jne	.L8	#,
.L9:
	.loc 1 360 0
	movl	$1, %eax	#, D.15599
	jmp	.L3	#
.L8:
.LBE2:
	.loc 1 363 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.5
	movl	-24(%rbp), %edx	# b, tmp97
	movslq	%edx, %rdx	# tmp97, tmp96
	addq	$4, %rdx	#, tmp98
	movq	(%rax,%rdx,8), %rax	# basic_block_info.5_33->data.bb, D.15604
	movq	8(%rax), %rax	# _34->end, D.15600
	cmpq	-16(%rbp), %rax	# insn, D.15600
	jne	.L10	#,
	.loc 1 364 0
	nop
	.loc 1 348 0
	addl	$1, -24(%rbp)	#, b
	jmp	.L7	#
.L10:
	.loc 1 349 0
	movq	-16(%rbp), %rax	# insn, tmp99
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp100
	movq	%rax, -16(%rbp)	# tmp100, insn
	.loc 1 365 0
	jmp	.L12	#
.L7:
	.loc 1 348 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.6
	cmpl	%eax, -24(%rbp)	# n_basic_blocks.6, b
	jl	.L13	#,
	.loc 1 368 0
	movl	$0, %eax	#, D.15599
.L3:
	.loc 1 369 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_cfg_nonregular, .-is_cfg_nonregular
	.type	build_control_flow, @function
build_control_flow:
.LFB3:
	.loc 1 382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# edge_list, edge_list
	.loc 1 386 0
	movq	-40(%rbp), %rax	# edge_list, tmp88
	movl	4(%rax), %eax	# edge_list_5(D)->num_edges, tmp89
	movl	%eax, -20(%rbp)	# tmp89, num_edges
	.loc 1 394 0
	movl	$0, -24(%rbp)	#, unreachable
	.loc 1 395 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L15	#
.L18:
.LBB3:
	.loc 1 397 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.7
	movl	-28(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	addq	$4, %rdx	#, tmp92
	movq	(%rax,%rdx,8), %rax	# basic_block_info.7_10->data.bb, tmp93
	movq	%rax, -16(%rbp)	# tmp93, b
	.loc 1 399 0
	movq	-16(%rbp), %rax	# b, tmp94
	movq	32(%rax), %rax	# b_11->pred, D.15607
	testq	%rax, %rax	# D.15607
	je	.L16	#,
	.loc 1 400 0
	movq	-16(%rbp), %rax	# b, tmp95
	movq	32(%rax), %rax	# b_11->pred, D.15607
	movq	16(%rax), %rax	# _13->src, D.15608
	cmpq	-16(%rbp), %rax	# b, D.15608
	jne	.L17	#,
	.loc 1 401 0
	movq	-16(%rbp), %rax	# b, tmp96
	movq	32(%rax), %rax	# b_11->pred, D.15607
	movq	(%rax), %rax	# _15->pred_next, D.15607
	testq	%rax, %rax	# D.15607
	jne	.L17	#,
.L16:
	.loc 1 402 0
	movl	$1, -24(%rbp)	#, unreachable
.L17:
.LBE3:
	.loc 1 395 0
	addl	$1, -28(%rbp)	#, i
.L15:
	.loc 1 395 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.8
	cmpl	%eax, -28(%rbp)	# n_basic_blocks.8, i
	jl	.L18	#,
	.loc 1 406 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.9
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15609,
	call	xcalloc	#
	movq	%rax, in_edges(%rip)	# in_edges.10, in_edges
	.loc 1 407 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.11
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15609,
	call	xcalloc	#
	movq	%rax, out_edges(%rip)	# out_edges.12, out_edges
	.loc 1 408 0
	movl	-20(%rbp), %eax	# num_edges, tmp99
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.15609,
	call	xcalloc	#
	movq	%rax, edge_table(%rip)	# edge_table.13, edge_table
	.loc 1 410 0
	movl	$0, nr_edges(%rip)	#, nr_edges
	.loc 1 411 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L19	#
.L21:
.LBB4:
	.loc 1 413 0
	movq	-40(%rbp), %rax	# edge_list, tmp101
	movq	8(%rax), %rax	# edge_list_5(D)->index_to_edge, D.15610
	movl	-28(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, D.15609
	salq	$3, %rdx	#, D.15609
	addq	%rdx, %rax	# D.15609, D.15610
	movq	(%rax), %rax	# *_31, tmp103
	movq	%rax, -8(%rbp)	# tmp103, e
	.loc 1 415 0
	movq	-8(%rbp), %rax	# e, tmp104
	movq	24(%rax), %rax	# e_32->dest, D.15608
	cmpq	$entry_exit_blocks+112, %rax	#, D.15608
	je	.L20	#,
	.loc 1 416 0
	movq	-8(%rbp), %rax	# e, tmp105
	movq	16(%rax), %rax	# e_32->src, D.15608
	cmpq	$entry_exit_blocks, %rax	#, D.15608
	je	.L20	#,
	.loc 1 417 0
	movq	-8(%rbp), %rax	# e, tmp106
	movq	24(%rax), %rax	# e_32->dest, D.15608
	movl	88(%rax), %edx	# _35->index, D.15611
	movq	-8(%rbp), %rax	# e, tmp107
	movq	16(%rax), %rax	# e_32->src, D.15608
	movl	88(%rax), %eax	# _37->index, D.15611
	movl	%edx, %esi	# D.15611,
	movl	%eax, %edi	# D.15611,
	call	new_edge	#
.L20:
.LBE4:
	.loc 1 411 0
	addl	$1, -28(%rbp)	#, i
.L19:
	.loc 1 411 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp108
	cmpl	-20(%rbp), %eax	# num_edges, tmp108
	jl	.L21	#,
	.loc 1 421 0 is_stmt 1
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.14
	addl	$1, %eax	#, nr_edges.15
	movl	%eax, nr_edges(%rip)	# nr_edges.15, nr_edges
	.loc 1 423 0
	movl	-24(%rbp), %eax	# unreachable, D.15611
	.loc 1 424 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	build_control_flow, .-build_control_flow
	.type	new_edge, @function
new_edge:
.LFB4:
	.loc 1 435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# source, source
	movl	%esi, -24(%rbp)	# target, target
	.loc 1 440 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.16
	movl	-20(%rbp), %edx	# source, tmp157
	movslq	%edx, %rdx	# tmp157, D.15612
	salq	$2, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15613
	movl	(%rax), %eax	# *_6, tmp158
	movl	%eax, -16(%rbp)	# tmp158, curr_edge
	movl	-16(%rbp), %eax	# curr_edge, tmp159
	movl	%eax, -12(%rbp)	# tmp159, fst_edge
	.loc 1 441 0
	jmp	.L24	#
.L28:
	.loc 1 443 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.17
	movl	-16(%rbp), %edx	# curr_edge, tmp160
	movslq	%edx, %rdx	# tmp160, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15614
	movl	(%rax), %eax	# _12->from_block, D.15615
	cmpl	-20(%rbp), %eax	# source, D.15615
	jne	.L25	#,
	.loc 1 444 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.18
	movl	-16(%rbp), %edx	# curr_edge, tmp161
	movslq	%edx, %rdx	# tmp161, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15614
	movl	4(%rax), %eax	# _17->to_block, D.15615
	cmpl	-24(%rbp), %eax	# target, D.15615
	jne	.L25	#,
	.loc 1 446 0
	jmp	.L23	#
.L25:
	.loc 1 449 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.19
	movl	-16(%rbp), %edx	# curr_edge, tmp162
	movslq	%edx, %rdx	# tmp162, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15614
	movl	12(%rax), %eax	# _23->next_out, tmp163
	movl	%eax, -16(%rbp)	# tmp163, curr_edge
	.loc 1 451 0
	movl	-12(%rbp), %eax	# fst_edge, tmp164
	cmpl	-16(%rbp), %eax	# curr_edge, tmp164
	jne	.L24	#,
	.loc 1 452 0
	jmp	.L27	#
.L24:
	.loc 1 441 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, curr_edge
	jne	.L28	#,
.L27:
	.loc 1 455 0
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.20
	addl	$1, %eax	#, nr_edges.21
	movl	%eax, nr_edges(%rip)	# nr_edges.21, nr_edges
	movl	nr_edges(%rip), %eax	# nr_edges, tmp165
	movl	%eax, -8(%rbp)	# tmp165, e
	.loc 1 457 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.22
	movl	-8(%rbp), %edx	# e, tmp166
	movslq	%edx, %rdx	# tmp166, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.22, D.15614
	movl	-20(%rbp), %eax	# source, tmp167
	movl	%eax, (%rdx)	# tmp167, _31->from_block
	.loc 1 458 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.23
	movl	-8(%rbp), %edx	# e, tmp168
	movslq	%edx, %rdx	# tmp168, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.23, D.15614
	movl	-24(%rbp), %eax	# target, tmp169
	movl	%eax, 4(%rdx)	# tmp169, _35->to_block
	.loc 1 460 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.24
	movl	-20(%rbp), %edx	# source, tmp170
	movslq	%edx, %rdx	# tmp170, D.15612
	salq	$2, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15613
	movl	(%rax), %eax	# *_39, D.15615
	testl	%eax, %eax	# D.15615
	je	.L29	#,
	.loc 1 462 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.25
	movq	out_edges(%rip), %rdx	# out_edges, out_edges.26
	movl	-20(%rbp), %ecx	# source, tmp171
	movslq	%ecx, %rcx	# tmp171, D.15612
	salq	$2, %rcx	#, D.15612
	addq	%rcx, %rdx	# D.15612, D.15613
	movl	(%rdx), %edx	# *_45, D.15615
	movslq	%edx, %rdx	# D.15615, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15614
	movl	12(%rax), %eax	# _49->next_out, tmp172
	movl	%eax, -4(%rbp)	# tmp172, next_edge
	.loc 1 463 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.27
	movq	out_edges(%rip), %rdx	# out_edges, out_edges.28
	movl	-20(%rbp), %ecx	# source, tmp173
	movslq	%ecx, %rcx	# tmp173, D.15612
	salq	$2, %rcx	#, D.15612
	addq	%rcx, %rdx	# D.15612, D.15613
	movl	(%rdx), %edx	# *_55, D.15615
	movslq	%edx, %rdx	# D.15615, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.27, D.15614
	movl	-8(%rbp), %eax	# e, tmp174
	movl	%eax, 12(%rdx)	# tmp174, _59->next_out
	.loc 1 464 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.29
	movl	-8(%rbp), %edx	# e, tmp175
	movslq	%edx, %rdx	# tmp175, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.29, D.15614
	movl	-4(%rbp), %eax	# next_edge, tmp176
	movl	%eax, 12(%rdx)	# tmp176, _63->next_out
	jmp	.L30	#
.L29:
	.loc 1 468 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.30
	movl	-20(%rbp), %edx	# source, tmp177
	movslq	%edx, %rdx	# tmp177, D.15612
	salq	$2, %rdx	#, D.15612
	addq	%rax, %rdx	# out_edges.30, D.15613
	movl	-8(%rbp), %eax	# e, tmp178
	movl	%eax, (%rdx)	# tmp178, *_67
	.loc 1 469 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.31
	movl	-8(%rbp), %edx	# e, tmp179
	movslq	%edx, %rdx	# tmp179, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.31, D.15614
	movl	-8(%rbp), %eax	# e, tmp180
	movl	%eax, 12(%rdx)	# tmp180, _71->next_out
.L30:
	.loc 1 472 0
	movq	in_edges(%rip), %rax	# in_edges, in_edges.32
	movl	-24(%rbp), %edx	# target, tmp181
	movslq	%edx, %rdx	# tmp181, D.15612
	salq	$2, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15613
	movl	(%rax), %eax	# *_75, D.15615
	testl	%eax, %eax	# D.15615
	je	.L31	#,
	.loc 1 474 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.33
	movq	in_edges(%rip), %rdx	# in_edges, in_edges.34
	movl	-24(%rbp), %ecx	# target, tmp182
	movslq	%ecx, %rcx	# tmp182, D.15612
	salq	$2, %rcx	#, D.15612
	addq	%rcx, %rdx	# D.15612, D.15613
	movl	(%rdx), %edx	# *_81, D.15615
	movslq	%edx, %rdx	# D.15615, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rdx, %rax	# D.15612, D.15614
	movl	8(%rax), %eax	# _85->next_in, tmp183
	movl	%eax, -4(%rbp)	# tmp183, next_edge
	.loc 1 475 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.35
	movq	in_edges(%rip), %rdx	# in_edges, in_edges.36
	movl	-24(%rbp), %ecx	# target, tmp184
	movslq	%ecx, %rcx	# tmp184, D.15612
	salq	$2, %rcx	#, D.15612
	addq	%rcx, %rdx	# D.15612, D.15613
	movl	(%rdx), %edx	# *_91, D.15615
	movslq	%edx, %rdx	# D.15615, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.35, D.15614
	movl	-8(%rbp), %eax	# e, tmp185
	movl	%eax, 8(%rdx)	# tmp185, _95->next_in
	.loc 1 476 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.37
	movl	-8(%rbp), %edx	# e, tmp186
	movslq	%edx, %rdx	# tmp186, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.37, D.15614
	movl	-4(%rbp), %eax	# next_edge, tmp187
	movl	%eax, 8(%rdx)	# tmp187, _99->next_in
	jmp	.L23	#
.L31:
	.loc 1 480 0
	movq	in_edges(%rip), %rax	# in_edges, in_edges.38
	movl	-24(%rbp), %edx	# target, tmp188
	movslq	%edx, %rdx	# tmp188, D.15612
	salq	$2, %rdx	#, D.15612
	addq	%rax, %rdx	# in_edges.38, D.15613
	movl	-8(%rbp), %eax	# e, tmp189
	movl	%eax, (%rdx)	# tmp189, *_103
	.loc 1 481 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.39
	movl	-8(%rbp), %edx	# e, tmp190
	movslq	%edx, %rdx	# tmp190, D.15612
	salq	$4, %rdx	#, D.15612
	addq	%rax, %rdx	# edge_table.39, D.15614
	movl	-8(%rbp), %eax	# e, tmp191
	movl	%eax, 8(%rdx)	# tmp191, _107->next_in
.L23:
	.loc 1 483 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	new_edge, .-new_edge
	.type	extract_bitlst, @function
extract_bitlst:
.LFB5:
	.loc 1 491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# set, set
	movq	%rsi, -64(%rbp)	# bl, bl
	.loc 1 495 0
	movl	$0, bitlst_table_last(%rip)	#, bitlst_table_last
	.loc 1 497 0
	movq	bitlst_table(%rip), %rax	# bitlst_table, bitlst_table.40
	movl	bitlst_table_last(%rip), %edx	# bitlst_table_last, bitlst_table_last.41
	movslq	%edx, %rdx	# bitlst_table_last.41, D.15616
	salq	$2, %rdx	#, D.15616
	addq	%rax, %rdx	# bitlst_table.40, D.15617
	movq	-64(%rbp), %rax	# bl, tmp81
	movq	%rdx, (%rax)	# D.15617, bl_11(D)->first_member
	.loc 1 498 0
	movq	-64(%rbp), %rax	# bl, tmp82
	movl	$0, 8(%rax)	#, bl_11(D)->nr_members
.LBB5:
	.loc 1 501 0
	movl	$0, -36(%rbp)	#, bit_num_
	movq	-56(%rbp), %rax	# set, tmp83
	movl	4(%rax), %eax	# set_13(D)->size, tmp84
	movl	%eax, -32(%rbp)	# tmp84, size_
	movq	-56(%rbp), %rax	# set, tmp88
	addq	$16, %rax	#, tmp87
	movq	%rax, -16(%rbp)	# tmp87, ptr_
	movl	$0, -40(%rbp)	#, word_num_
	jmp	.L33	#
.L38:
.LBB6:
	.loc 1 501 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# word_num_, D.15616
	leaq	0(,%rax,8), %rdx	#, D.15616
	movq	-16(%rbp), %rax	# ptr_, tmp89
	addq	%rdx, %rax	# D.15616, D.15618
	movq	(%rax), %rax	# *_19, tmp90
	movq	%rax, -24(%rbp)	# tmp90, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L34	#,
	.loc 1 501 0 discriminator 1
	jmp	.L35	#
.L37:
.LBB7:
	.loc 1 501 0 discriminator 2
	movl	-36(%rbp), %eax	# bit_num_, bit_num_.42
	movl	$1, %edx	#, tmp91
	movl	%eax, %ecx	# bit_num_.42, tmp103
	salq	%cl, %rdx	# tmp103, tmp92
	movq	%rdx, %rax	# tmp92, tmp92
	movq	%rax, -8(%rbp)	# tmp92, _mask
	movq	-8(%rbp), %rax	# _mask, tmp93
	movq	-24(%rbp), %rdx	# word_, tmp94
	andq	%rdx, %rax	# tmp94, D.15616
	testq	%rax, %rax	# D.15616
	je	.L36	#,
	.loc 1 501 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp95
	notq	%rax	# D.15616
	andq	%rax, -24(%rbp)	# D.15616, word_
	movl	-40(%rbp), %eax	# word_num_, tmp96
	sall	$6, %eax	#, D.15619
	movl	%eax, %edx	# D.15619, D.15619
	movl	-36(%rbp), %eax	# bit_num_, tmp97
	addl	%edx, %eax	# D.15619, D.15619
	movl	%eax, -28(%rbp)	# D.15619, i
	movq	bitlst_table(%rip), %rcx	# bitlst_table, bitlst_table.43
	movl	bitlst_table_last(%rip), %eax	# bitlst_table_last, bitlst_table_last.44
	leal	1(%rax), %edx	#, bitlst_table_last.46
	movl	%edx, bitlst_table_last(%rip)	# bitlst_table_last.46, bitlst_table_last
	cltq
	salq	$2, %rax	#, D.15616
	leaq	(%rcx,%rax), %rdx	#, D.15617
	movl	-28(%rbp), %eax	# i, tmp98
	movl	%eax, (%rdx)	# tmp98, *_35
	movq	-64(%rbp), %rax	# bl, tmp99
	movl	8(%rax), %eax	# bl_11(D)->nr_members, D.15620
	leal	1(%rax), %edx	#, D.15620
	movq	-64(%rbp), %rax	# bl, tmp100
	movl	%edx, 8(%rax)	# D.15620, bl_11(D)->nr_members
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L36	#,
	jmp	.L34	#
.L36:
.LBE7:
	.loc 1 501 0 discriminator 2
	addl	$1, -36(%rbp)	#, bit_num_
.L35:
	.loc 1 501 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, bit_num_
	jbe	.L37	#,
.L34:
.LBE6:
	.loc 1 501 0 discriminator 2
	addl	$1, -40(%rbp)	#, word_num_
	movl	$0, -36(%rbp)	#, bit_num_
.L33:
	.loc 1 501 0 discriminator 1
	movl	-40(%rbp), %eax	# word_num_, tmp101
	cmpl	-32(%rbp), %eax	# size_, tmp101
	jb	.L38	#,
.LBE5:
	.loc 1 507 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	extract_bitlst, .-extract_bitlst
	.section	.rodata
	.align 8
.LC0:
	.string	"\n;;   ------------ REGIONS ----------\n\n"
.LC1:
	.string	";;\trgn %d nr_blocks %d:\n"
.LC2:
	.string	";;\tbb/block: "
.LC3:
	.string	"sched-rgn.c"
.LC4:
	.string	" %d/%d "
.LC5:
	.string	"\n\n"
	.text
	.globl	debug_regions
	.type	debug_regions, @function
debug_regions:
.LFB6:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 518 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.47
	movq	%rax, %rcx	# sched_dump.47,
	movl	$39, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 519 0
	movl	$0, -8(%rbp)	#, rgn
	jmp	.L40	#
.L44:
	.loc 1 522 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.48
	movl	-8(%rbp), %edx	# rgn, tmp99
	movslq	%edx, %rdx	# tmp99, D.15621
	salq	$3, %rdx	#, D.15621
	addq	%rdx, %rax	# D.15621, D.15622
	.loc 1 521 0
	movl	(%rax), %ecx	# _9->rgn_nr_blocks, D.15623
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.49
	movl	-8(%rbp), %edx	# rgn, tmp100
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# sched_dump.49,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 523 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.50
	movq	%rax, %rcx	# sched_dump.50,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
	.loc 1 525 0
	movl	$0, -4(%rbp)	#, bb
	jmp	.L41	#
.L43:
	.loc 1 527 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.51
	movl	-8(%rbp), %edx	# rgn, tmp101
	movslq	%edx, %rdx	# tmp101, D.15621
	salq	$3, %rdx	#, D.15621
	addq	%rdx, %rax	# D.15621, D.15622
	movl	4(%rax), %eax	# _22->rgn_blocks, current_blocks.52
	movl	%eax, current_blocks(%rip)	# current_blocks.52, current_blocks
	.loc 1 529 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.53
	movq	rgn_bb_table(%rip), %rdx	# rgn_bb_table, rgn_bb_table.54
	movl	current_blocks(%rip), %esi	# current_blocks, current_blocks.55
	movl	-4(%rbp), %ecx	# bb, tmp102
	addl	%esi, %ecx	# current_blocks.55, D.15623
	movslq	%ecx, %rcx	# D.15623, D.15621
	salq	$2, %rcx	#, D.15621
	addq	%rcx, %rdx	# D.15621, D.15624
	movl	(%rdx), %edx	# *_30, D.15623
	movslq	%edx, %rdx	# D.15623, D.15621
	salq	$2, %rdx	#, D.15621
	addq	%rdx, %rax	# D.15621, D.15624
	movl	(%rax), %eax	# *_34, D.15623
	cmpl	-4(%rbp), %eax	# bb, D.15623
	je	.L42	#,
	.loc 1 530 0
	movl	$__FUNCTION__.11000, %edx	#,
	movl	$530, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L42:
	.loc 1 532 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.56
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.57
	movl	-4(%rbp), %edx	# bb, tmp103
	addl	%ecx, %edx	# current_blocks.57, D.15623
	movslq	%edx, %rdx	# D.15623, D.15621
	salq	$2, %rdx	#, D.15621
	addq	%rdx, %rax	# D.15621, D.15624
	movl	(%rax), %ecx	# *_41, D.15623
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.58
	movl	-4(%rbp), %edx	# bb, tmp104
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# sched_dump.58,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 525 0
	addl	$1, -4(%rbp)	#, bb
.L41:
	.loc 1 525 0 is_stmt 0 discriminator 1
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.59
	movl	-8(%rbp), %edx	# rgn, tmp105
	movslq	%edx, %rdx	# tmp105, D.15621
	salq	$3, %rdx	#, D.15621
	addq	%rdx, %rax	# D.15621, D.15622
	movl	(%rax), %eax	# _17->rgn_nr_blocks, D.15623
	cmpl	-4(%rbp), %eax	# bb, D.15623
	jg	.L43	#,
	.loc 1 535 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.60
	movq	%rax, %rcx	# sched_dump.60,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
	.loc 1 519 0
	addl	$1, -8(%rbp)	#, rgn
.L40:
	.loc 1 519 0 is_stmt 0 discriminator 1
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.61
	cmpl	%eax, -8(%rbp)	# nr_regions.61, rgn
	jl	.L44	#,
	.loc 1 537 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	debug_regions, .-debug_regions
	.type	find_single_block_region, @function
find_single_block_region:
.LFB7:
	.loc 1 545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 548 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L46	#
.L47:
	.loc 1 550 0 discriminator 2
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.62
	movl	-4(%rbp), %edx	# i, tmp81
	movslq	%edx, %rdx	# tmp81, D.15631
	salq	$2, %rdx	#, D.15631
	addq	%rax, %rdx	# rgn_bb_table.62, D.15632
	movl	-4(%rbp), %eax	# i, tmp82
	movl	%eax, (%rdx)	# tmp82, *_7
	.loc 1 551 0 discriminator 2
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.63
	movl	-4(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.15631
	salq	$3, %rdx	#, D.15631
	addq	%rdx, %rax	# D.15631, D.15633
	movl	$1, (%rax)	#, _11->rgn_nr_blocks
	.loc 1 552 0 discriminator 2
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.64
	movl	-4(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, D.15631
	salq	$3, %rdx	#, D.15631
	addq	%rax, %rdx	# rgn_table.64, D.15633
	movl	-4(%rbp), %eax	# i, tmp85
	movl	%eax, 4(%rdx)	# tmp85, _15->rgn_blocks
	.loc 1 553 0 discriminator 2
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.65
	movl	-4(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.15631
	salq	$2, %rdx	#, D.15631
	addq	%rax, %rdx	# containing_rgn.65, D.15632
	movl	-4(%rbp), %eax	# i, tmp87
	movl	%eax, (%rdx)	# tmp87, *_19
	.loc 1 554 0 discriminator 2
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.66
	movl	-4(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.15631
	salq	$2, %rdx	#, D.15631
	addq	%rdx, %rax	# D.15631, D.15632
	movl	$0, (%rax)	#, *_23
	.loc 1 548 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L46:
	.loc 1 548 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.67
	cmpl	%eax, -4(%rbp)	# n_basic_blocks.67, i
	jl	.L47	#,
	.loc 1 556 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.68
	movl	%eax, nr_regions(%rip)	# n_basic_blocks.68, nr_regions
	.loc 1 557 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	find_single_block_region, .-find_single_block_region
	.type	too_large, @function
too_large:
.LFB8:
	.loc 1 566 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# block, block
	movq	%rsi, -16(%rbp)	# num_bbs, num_bbs
	movq	%rdx, -24(%rbp)	# num_insns, num_insns
	.loc 1 567 0
	movq	-16(%rbp), %rax	# num_bbs, tmp86
	movl	(%rax), %eax	# *num_bbs_2(D), D.15634
	leal	1(%rax), %edx	#, D.15634
	movq	-16(%rbp), %rax	# num_bbs, tmp87
	movl	%edx, (%rax)	# D.15634, *num_bbs_2(D)
	.loc 1 568 0
	movq	-24(%rbp), %rax	# num_insns, tmp88
	movl	(%rax), %ecx	# *num_insns_5(D), D.15634
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.69
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.70
	movl	-4(%rbp), %edx	# block, tmp90
	movslq	%edx, %rdx	# tmp90, tmp89
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.70_8->data.bb, D.15635
	movq	8(%rax), %rax	# _10->end, D.15636
	movl	8(%rax), %eax	# _11->fld[0].rtint, D.15634
	movslq	%eax, %rdx	# D.15634, D.15637
	movq	%rdx, %rax	# D.15637, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# D.15637, tmp92
	salq	$4, %rax	#, tmp93
	addq	%rsi, %rax	# h_i_d.69, D.15638
	movl	16(%rax), %esi	# _15->luid, D.15634
	.loc 1 569 0
	movq	h_i_d(%rip), %rdi	# h_i_d, h_i_d.71
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.72
	movl	-4(%rbp), %edx	# block, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	addq	$4, %rdx	#, tmp96
	movq	(%rax,%rdx,8), %rax	# basic_block_info.72_18->data.bb, D.15635
	movq	(%rax), %rax	# _19->head, D.15636
	movl	8(%rax), %eax	# _20->fld[0].rtint, D.15634
	movslq	%eax, %rdx	# D.15634, D.15637
	movq	%rdx, %rax	# D.15637, tmp97
	addq	%rax, %rax	# tmp97
	addq	%rdx, %rax	# D.15637, tmp97
	salq	$4, %rax	#, tmp98
	addq	%rdi, %rax	# h_i_d.71, D.15638
	movl	16(%rax), %eax	# _24->luid, D.15634
	.loc 1 568 0
	subl	%eax, %esi	# D.15634, D.15634
	movl	%esi, %eax	# D.15634, D.15634
	leal	(%rcx,%rax), %edx	#, D.15634
	movq	-24(%rbp), %rax	# num_insns, tmp99
	movl	%edx, (%rax)	# D.15634, *num_insns_5(D)
	.loc 1 570 0
	movq	-16(%rbp), %rax	# num_bbs, tmp100
	movl	(%rax), %eax	# *num_bbs_2(D), D.15634
	cmpl	$10, %eax	#, D.15634
	jg	.L49	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# num_insns, tmp101
	movl	(%rax), %eax	# *num_insns_5(D), D.15634
	cmpl	$100, %eax	#, D.15634
	jle	.L50	#,
.L49:
	.loc 1 571 0 is_stmt 1
	movl	$1, %eax	#, D.15634
	jmp	.L51	#
.L50:
	.loc 1 573 0
	movl	$0, %eax	#, D.15634
.L51:
	.loc 1 574 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	too_large, .-too_large
	.type	find_rgns, @function
find_rgns:
.LFB9:
	.loc 1 626 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -200(%rbp)	# edge_list, edge_list
	movq	%rsi, -208(%rbp)	# dom, dom
	.loc 1 628 0
	movb	$1, -185(%rbp)	#, no_loops
	.loc 1 630 0
	movl	$0, -164(%rbp)	#, count
	movl	$0, -156(%rbp)	#, idx
	movq	out_edges(%rip), %rax	# out_edges, out_edges.73
	movl	(%rax), %eax	# *out_edges.73_50, tmp701
	movl	%eax, -152(%rbp)	# tmp701, current_edge
	.loc 1 649 0
	movq	-200(%rbp), %rax	# edge_list, tmp702
	movl	4(%rax), %eax	# edge_list_52(D)->num_edges, tmp703
	movl	%eax, -136(%rbp)	# tmp703, num_edges
	.loc 1 661 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.74
	cltq
	salq	$2, %rax	#, D.15639
	movq	%rax, %rdi	# D.15639,
	call	xmalloc	#
	movq	%rax, -88(%rbp)	# tmp704, max_hdr
	.loc 1 662 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.75
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15639,
	call	xcalloc	#
	movq	%rax, -80(%rbp)	# tmp705, dfs_nr
	.loc 1 663 0
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.76
	cltq
	salq	$2, %rax	#, D.15639
	movq	%rax, %rdi	# D.15639,
	call	xmalloc	#
	movq	%rax, -72(%rbp)	# tmp706, stack
	.loc 1 665 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.77
	movl	%eax, %edi	# n_basic_blocks.78,
	call	sbitmap_alloc	#
	movq	%rax, -64(%rbp)	# tmp707, inner
	.loc 1 666 0
	movq	-64(%rbp), %rax	# inner, tmp708
	movq	%rax, %rdi	# tmp708,
	call	sbitmap_ones	#
	.loc 1 668 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.79
	movl	%eax, %edi	# n_basic_blocks.80,
	call	sbitmap_alloc	#
	movq	%rax, -56(%rbp)	# tmp709, header
	.loc 1 669 0
	movq	-56(%rbp), %rax	# header, tmp710
	movq	%rax, %rdi	# tmp710,
	call	sbitmap_zero	#
	.loc 1 671 0
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.81
	movl	%eax, %edi	# nr_edges.82,
	call	sbitmap_alloc	#
	movq	%rax, -48(%rbp)	# tmp711, passed
	.loc 1 672 0
	movq	-48(%rbp), %rax	# passed, tmp712
	movq	%rax, %rdi	# tmp712,
	call	sbitmap_zero	#
	.loc 1 674 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.83
	movl	%eax, %edi	# n_basic_blocks.84,
	call	sbitmap_alloc	#
	movq	%rax, -40(%rbp)	# tmp713, in_queue
	.loc 1 675 0
	movq	-40(%rbp), %rax	# in_queue, tmp714
	movq	%rax, %rdi	# tmp714,
	call	sbitmap_zero	#
	.loc 1 677 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.85
	movl	%eax, %edi	# n_basic_blocks.86,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp715, in_stack
	.loc 1 678 0
	movq	-32(%rbp), %rax	# in_stack, tmp716
	movq	%rax, %rdi	# tmp716,
	call	sbitmap_zero	#
	.loc 1 680 0
	movl	$0, -176(%rbp)	#, i
	jmp	.L53	#
.L54:
	.loc 1 681 0 discriminator 2
	movl	-176(%rbp), %eax	# i, tmp717
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp718
	addq	%rdx, %rax	# D.15639, D.15640
	movl	$-1, (%rax)	#, *_84
	.loc 1 680 0 discriminator 2
	addl	$1, -176(%rbp)	#, i
.L53:
	.loc 1 680 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.87
	cmpl	%eax, -176(%rbp)	# n_basic_blocks.87, i
	jl	.L54	#,
	.loc 1 685 0 is_stmt 1
	movl	$-1, -160(%rbp)	#, sp
.L74:
	.loc 1 688 0
	cmpl	$0, -152(%rbp)	#, current_edge
	je	.L55	#,
	.loc 1 688 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# current_edge, current_edge.88
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-48(%rbp), %rax	# passed, tmp719
	movl	%edx, %edx	# D.15641, tmp720
	addq	$2, %rdx	#, tmp721
	movq	(%rax,%rdx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %eax	# current_edge, tmp722
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1145
	shrq	%cl, %rdx	# tmp1145, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L56	#,
.L55:
	.loc 1 693 0 is_stmt 1
	jmp	.L57	#
.L62:
	.loc 1 697 0
	movl	-160(%rbp), %eax	# sp, sp.89
	leal	-1(%rax), %edx	#, tmp723
	movl	%edx, -160(%rbp)	# tmp723, sp
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-72(%rbp), %rax	# stack, tmp724
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_335, tmp725
	movl	%eax, -152(%rbp)	# tmp725, current_edge
	.loc 1 698 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.90
	movl	-152(%rbp), %edx	# current_edge, tmp726
	movslq	%edx, %rdx	# tmp726, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	(%rax), %eax	# _340->from_block, tmp727
	movl	%eax, -132(%rbp)	# tmp727, node
	.loc 1 699 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.91
	movl	-152(%rbp), %edx	# current_edge, tmp728
	movslq	%edx, %rdx	# tmp728, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	4(%rax), %eax	# _345->to_block, tmp729
	movl	%eax, -128(%rbp)	# tmp729, child
	.loc 1 700 0
	movl	-128(%rbp), %eax	# child, child.92
	shrl	$6, %eax	#, D.15641
	movq	-32(%rbp), %rdx	# in_stack, tmp730
	movl	%eax, %ecx	# D.15641, tmp731
	addq	$2, %rcx	#, tmp732
	movq	(%rdx,%rcx,8), %rdx	# in_stack_79->elms, D.15639
	movl	-128(%rbp), %ecx	# child, tmp733
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp734
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-32(%rbp), %rdx	# in_stack, tmp735
	movl	%eax, %eax	# D.15641, tmp736
	addq	$2, %rax	#, tmp737
	movq	%rcx, (%rdx,%rax,8)	# D.15639, in_stack_79->elms
	.loc 1 701 0
	movl	-128(%rbp), %eax	# child, tmp738
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp739
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_356, D.15642
	testl	%eax, %eax	# D.15642
	js	.L58	#,
	.loc 1 701 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# child, tmp740
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp741
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_360, D.15642
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-32(%rbp), %rax	# in_stack, tmp742
	movl	%edx, %edx	# D.15641, tmp743
	addq	$2, %rdx	#, tmp744
	movq	(%rax,%rdx,8), %rdx	# in_stack_79->elms, D.15639
	movl	-128(%rbp), %eax	# child, tmp745
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp746
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_367, D.15642
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1149
	shrq	%cl, %rdx	# tmp1149, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L58	#,
	.loc 1 702 0 is_stmt 1
	movl	-132(%rbp), %eax	# node, tmp747
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp748
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_374, D.15642
	cmpl	$-1, %eax	#, D.15642
	jne	.L59	#,
	.loc 1 702 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp749
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp750
	addq	%rax, %rdx	# tmp750, D.15640
	movl	-128(%rbp), %eax	# child, tmp751
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp752
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_381, D.15642
	movl	%eax, (%rdx)	# D.15642, *_378
	jmp	.L58	#
.L59:
	.loc 1 702 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp753
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp754
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_385, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp755
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_389, D.15642
	movl	-128(%rbp), %eax	# child, tmp756
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp757
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_393, D.15642
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp758
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_397, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jle	.L60	#,
	.loc 1 702 0 discriminator 1
	movl	-128(%rbp), %eax	# child, tmp759
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp760
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_401, D.15642
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp761
	movl	%eax, %ecx	# D.15641, tmp762
	addq	$2, %rcx	#, tmp763
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-128(%rbp), %ecx	# child, tmp764
	movslq	%ecx, %rcx	# tmp764, D.15639
	leaq	0(,%rcx,4), %rsi	#, D.15639
	movq	-88(%rbp), %rcx	# max_hdr, tmp765
	addq	%rsi, %rcx	# D.15639, D.15640
	movl	(%rcx), %ecx	# *_408, D.15642
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp766
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp767
	movl	%eax, %eax	# D.15641, tmp768
	addq	$2, %rax	#, tmp769
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	jmp	.L58	#
.L60:
	.loc 1 702 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp770
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp771
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_416, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp772
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_420, D.15642
	movl	-128(%rbp), %eax	# child, tmp773
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp774
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_424, D.15642
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp775
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_428, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jge	.L58	#,
	.loc 1 702 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp776
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp777
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_432, D.15642
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp778
	movl	%eax, %ecx	# D.15641, tmp779
	addq	$2, %rcx	#, tmp780
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp781
	movslq	%ecx, %rcx	# tmp781, D.15639
	leaq	0(,%rcx,4), %rsi	#, D.15639
	movq	-88(%rbp), %rcx	# max_hdr, tmp782
	addq	%rsi, %rcx	# D.15639, D.15640
	movl	(%rcx), %ecx	# *_439, D.15642
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp783
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp784
	movl	%eax, %eax	# D.15641, tmp785
	addq	$2, %rax	#, tmp786
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	movl	-132(%rbp), %eax	# node, tmp787
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp788
	addq	%rax, %rdx	# tmp788, D.15640
	movl	-128(%rbp), %eax	# child, tmp789
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp790
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_450, D.15642
	movl	%eax, (%rdx)	# D.15642, *_447
.L58:
	.loc 1 703 0 is_stmt 1
	movq	edge_table(%rip), %rax	# edge_table, edge_table.93
	movl	-152(%rbp), %edx	# current_edge, tmp791
	movslq	%edx, %rdx	# tmp791, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	12(%rax), %eax	# _455->next_out, tmp792
	movl	%eax, -152(%rbp)	# tmp792, current_edge
.L57:
	.loc 1 693 0 discriminator 1
	cmpl	$0, -160(%rbp)	#, sp
	js	.L61	#,
	.loc 1 694 0
	cmpl	$0, -152(%rbp)	#, current_edge
	je	.L62	#,
	.loc 1 694 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# current_edge, current_edge.94
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-48(%rbp), %rax	# passed, tmp793
	movl	%edx, %edx	# D.15641, tmp794
	addq	$2, %rdx	#, tmp795
	movq	(%rax,%rdx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %eax	# current_edge, tmp796
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1154
	shrq	%cl, %rdx	# tmp1154, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	jne	.L62	#,
.L61:
	.loc 1 707 0 is_stmt 1
	cmpl	$0, -160(%rbp)	#, sp
	jns	.L63	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movl	-152(%rbp), %eax	# current_edge, current_edge.95
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-48(%rbp), %rax	# passed, tmp797
	movl	%edx, %edx	# D.15641, tmp798
	addq	$2, %rdx	#, tmp799
	movq	(%rax,%rdx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %eax	# current_edge, tmp800
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1157
	shrq	%cl, %rdx	# tmp1157, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L63	#,
	.loc 1 708 0 is_stmt 1
	nop
	.loc 1 773 0
	movl	$0, -148(%rbp)	#, unreachable
	.loc 1 774 0
	movl	$0, -176(%rbp)	#, i
	jmp	.L75	#
.L63:
	.loc 1 711 0
	jmp	.L65	#
.L56:
	.loc 1 715 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.96
	movl	-152(%rbp), %edx	# current_edge, tmp801
	movslq	%edx, %rdx	# tmp801, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	(%rax), %eax	# _96->from_block, tmp802
	movl	%eax, -132(%rbp)	# tmp802, node
	.loc 1 716 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.97
	movl	-152(%rbp), %edx	# current_edge, tmp803
	movslq	%edx, %rdx	# tmp803, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	4(%rax), %eax	# _101->to_block, tmp804
	movl	%eax, -128(%rbp)	# tmp804, child
	.loc 1 717 0
	movl	-132(%rbp), %eax	# node, node.98
	shrl	$6, %eax	#, D.15641
	movq	-32(%rbp), %rdx	# in_stack, tmp805
	movl	%eax, %ecx	# D.15641, tmp806
	addq	$2, %rcx	#, tmp807
	movq	(%rdx,%rcx,8), %rdx	# in_stack_79->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp808
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp809
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-32(%rbp), %rdx	# in_stack, tmp810
	movl	%eax, %eax	# D.15641, tmp811
	addq	$2, %rax	#, tmp812
	movq	%rcx, (%rdx,%rax,8)	# D.15639, in_stack_79->elms
	.loc 1 718 0
	movl	-132(%rbp), %eax	# node, tmp813
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp814
	addq	%rax, %rdx	# tmp814, D.15640
	addl	$1, -164(%rbp)	#, count
	movl	-164(%rbp), %eax	# count, tmp815
	movl	%eax, (%rdx)	# tmp815, *_111
	.loc 1 723 0
	movl	-128(%rbp), %eax	# child, child.99
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-32(%rbp), %rax	# in_stack, tmp816
	movl	%edx, %edx	# D.15641, tmp817
	addq	$2, %rdx	#, tmp818
	movq	(%rax,%rdx,8), %rdx	# in_stack_79->elms, D.15639
	movl	-128(%rbp), %eax	# child, tmp819
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1161
	shrq	%cl, %rdx	# tmp1161, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L66	#,
	.loc 1 725 0
	movb	$0, -185(%rbp)	#, no_loops
	.loc 1 726 0
	movl	-128(%rbp), %eax	# child, child.100
	shrl	$6, %eax	#, D.15641
	movq	-56(%rbp), %rdx	# header, tmp820
	movl	%eax, %ecx	# D.15641, tmp821
	addq	$2, %rcx	#, tmp822
	movq	(%rdx,%rcx,8), %rdx	# header_70->elms, D.15639
	movl	-128(%rbp), %ecx	# child, tmp823
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp824
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-56(%rbp), %rdx	# header, tmp825
	movl	%eax, %eax	# D.15641, tmp826
	addq	$2, %rax	#, tmp827
	movq	%rcx, (%rdx,%rax,8)	# D.15639, header_70->elms
	.loc 1 727 0
	movl	-132(%rbp), %eax	# node, tmp828
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp829
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_128, D.15642
	cmpl	$-1, %eax	#, D.15642
	jne	.L67	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp830
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp831
	addq	%rax, %rdx	# tmp831, D.15640
	movl	-128(%rbp), %eax	# child, tmp832
	movl	%eax, (%rdx)	# tmp832, *_132
	jmp	.L68	#
.L67:
	.loc 1 727 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp833
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp834
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_135, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp835
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_139, D.15642
	movl	-128(%rbp), %eax	# child, tmp836
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp837
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_143, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jle	.L69	#,
	.loc 1 727 0 discriminator 1
	movl	-128(%rbp), %eax	# child, child.101
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp838
	movl	%eax, %ecx	# D.15641, tmp839
	addq	$2, %rcx	#, tmp840
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-128(%rbp), %ecx	# child, tmp841
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp842
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp843
	movl	%eax, %eax	# D.15641, tmp844
	addq	$2, %rax	#, tmp845
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	jmp	.L68	#
.L69:
	.loc 1 727 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp846
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp847
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_154, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp848
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_158, D.15642
	movl	-128(%rbp), %eax	# child, tmp849
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp850
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_162, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jge	.L68	#,
	.loc 1 727 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp851
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp852
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_166, D.15642
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp853
	movl	%eax, %ecx	# D.15641, tmp854
	addq	$2, %rcx	#, tmp855
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp856
	movslq	%ecx, %rcx	# tmp856, D.15639
	leaq	0(,%rcx,4), %rsi	#, D.15639
	movq	-88(%rbp), %rcx	# max_hdr, tmp857
	addq	%rsi, %rcx	# D.15639, D.15640
	movl	(%rcx), %ecx	# *_173, D.15642
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp858
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp859
	movl	%eax, %eax	# D.15641, tmp860
	addq	$2, %rax	#, tmp861
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	movl	-132(%rbp), %eax	# node, tmp862
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp863
	addq	%rax, %rdx	# tmp863, D.15640
	movl	-128(%rbp), %eax	# child, tmp864
	movl	%eax, (%rdx)	# tmp864, *_181
.L68:
	.loc 1 728 0 is_stmt 1
	movl	-152(%rbp), %eax	# current_edge, current_edge.102
	shrl	$6, %eax	#, D.15641
	movq	-48(%rbp), %rdx	# passed, tmp865
	movl	%eax, %ecx	# D.15641, tmp866
	addq	$2, %rcx	#, tmp867
	movq	(%rdx,%rcx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %ecx	# current_edge, tmp868
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp869
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-48(%rbp), %rdx	# passed, tmp870
	movl	%eax, %eax	# D.15641, tmp871
	addq	$2, %rax	#, tmp872
	movq	%rcx, (%rdx,%rax,8)	# D.15639, passed_73->elms
	.loc 1 729 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.103
	movl	-152(%rbp), %edx	# current_edge, tmp873
	movslq	%edx, %rdx	# tmp873, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	12(%rax), %eax	# _191->next_out, tmp874
	movl	%eax, -152(%rbp)	# tmp874, current_edge
	.loc 1 730 0
	jmp	.L65	#
.L66:
	.loc 1 736 0
	movl	-128(%rbp), %eax	# child, tmp875
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp876
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_195, D.15642
	testl	%eax, %eax	# D.15642
	je	.L70	#,
	.loc 1 738 0
	movl	-128(%rbp), %eax	# child, tmp877
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp878
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_199, D.15642
	testl	%eax, %eax	# D.15642
	js	.L71	#,
	.loc 1 738 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# child, tmp879
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp880
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_203, D.15642
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-32(%rbp), %rax	# in_stack, tmp881
	movl	%edx, %edx	# D.15641, tmp882
	addq	$2, %rdx	#, tmp883
	movq	(%rax,%rdx,8), %rdx	# in_stack_79->elms, D.15639
	movl	-128(%rbp), %eax	# child, tmp884
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp885
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_210, D.15642
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1168
	shrq	%cl, %rdx	# tmp1168, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L71	#,
	.loc 1 739 0 is_stmt 1
	movl	-132(%rbp), %eax	# node, tmp886
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp887
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_217, D.15642
	cmpl	$-1, %eax	#, D.15642
	jne	.L72	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp888
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp889
	addq	%rax, %rdx	# tmp889, D.15640
	movl	-128(%rbp), %eax	# child, tmp890
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp891
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_224, D.15642
	movl	%eax, (%rdx)	# D.15642, *_221
	jmp	.L71	#
.L72:
	.loc 1 739 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp892
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp893
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_228, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp894
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_232, D.15642
	movl	-128(%rbp), %eax	# child, tmp895
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp896
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_236, D.15642
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp897
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_240, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jle	.L73	#,
	.loc 1 739 0 discriminator 1
	movl	-128(%rbp), %eax	# child, tmp898
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp899
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_244, D.15642
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp900
	movl	%eax, %ecx	# D.15641, tmp901
	addq	$2, %rcx	#, tmp902
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-128(%rbp), %ecx	# child, tmp903
	movslq	%ecx, %rcx	# tmp903, D.15639
	leaq	0(,%rcx,4), %rsi	#, D.15639
	movq	-88(%rbp), %rcx	# max_hdr, tmp904
	addq	%rsi, %rcx	# D.15639, D.15640
	movl	(%rcx), %ecx	# *_251, D.15642
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp905
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp906
	movl	%eax, %eax	# D.15641, tmp907
	addq	$2, %rax	#, tmp908
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	jmp	.L71	#
.L73:
	.loc 1 739 0 discriminator 2
	movl	-132(%rbp), %eax	# node, tmp909
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp910
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_259, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp911
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_263, D.15642
	movl	-128(%rbp), %eax	# child, tmp912
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp913
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_267, D.15642
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp914
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_271, D.15642
	cmpl	%eax, %edx	# D.15642, D.15642
	jge	.L71	#,
	.loc 1 739 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp915
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp916
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_275, D.15642
	shrl	$6, %eax	#, D.15641
	movq	-64(%rbp), %rdx	# inner, tmp917
	movl	%eax, %ecx	# D.15641, tmp918
	addq	$2, %rcx	#, tmp919
	movq	(%rdx,%rcx,8), %rdx	# inner_67->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp920
	movslq	%ecx, %rcx	# tmp920, D.15639
	leaq	0(,%rcx,4), %rsi	#, D.15639
	movq	-88(%rbp), %rcx	# max_hdr, tmp921
	addq	%rsi, %rcx	# D.15639, D.15640
	movl	(%rcx), %ecx	# *_282, D.15642
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp922
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	notq	%rcx	# D.15639
	andq	%rdx, %rcx	# D.15639, D.15639
	movq	-64(%rbp), %rdx	# inner, tmp923
	movl	%eax, %eax	# D.15641, tmp924
	addq	$2, %rax	#, tmp925
	movq	%rcx, (%rdx,%rax,8)	# D.15639, inner_67->elms
	movl	-132(%rbp), %eax	# node, tmp926
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp927
	addq	%rax, %rdx	# tmp927, D.15640
	movl	-128(%rbp), %eax	# child, tmp928
	cltq
	leaq	0(,%rax,4), %rcx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp929
	addq	%rcx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_293, D.15642
	movl	%eax, (%rdx)	# D.15642, *_290
.L71:
	.loc 1 740 0 is_stmt 1
	movl	-152(%rbp), %eax	# current_edge, current_edge.104
	shrl	$6, %eax	#, D.15641
	movq	-48(%rbp), %rdx	# passed, tmp930
	movl	%eax, %ecx	# D.15641, tmp931
	addq	$2, %rcx	#, tmp932
	movq	(%rdx,%rcx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %ecx	# current_edge, tmp933
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp934
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-48(%rbp), %rdx	# passed, tmp935
	movl	%eax, %eax	# D.15641, tmp936
	addq	$2, %rax	#, tmp937
	movq	%rcx, (%rdx,%rax,8)	# D.15639, passed_73->elms
	.loc 1 741 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.105
	movl	-152(%rbp), %edx	# current_edge, tmp938
	movslq	%edx, %rdx	# tmp938, D.15639
	salq	$4, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15643
	movl	12(%rax), %eax	# _304->next_out, tmp939
	movl	%eax, -152(%rbp)	# tmp939, current_edge
	.loc 1 742 0
	jmp	.L65	#
.L70:
	.loc 1 746 0
	addl	$1, -160(%rbp)	#, sp
	movl	-160(%rbp), %eax	# sp, tmp940
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-72(%rbp), %rax	# stack, tmp941
	addq	%rax, %rdx	# tmp941, D.15640
	movl	-152(%rbp), %eax	# current_edge, tmp942
	movl	%eax, (%rdx)	# tmp942, *_309
	.loc 1 747 0
	movl	-152(%rbp), %eax	# current_edge, current_edge.106
	shrl	$6, %eax	#, D.15641
	movq	-48(%rbp), %rdx	# passed, tmp943
	movl	%eax, %ecx	# D.15641, tmp944
	addq	$2, %rcx	#, tmp945
	movq	(%rdx,%rcx,8), %rdx	# passed_73->elms, D.15639
	movl	-152(%rbp), %ecx	# current_edge, tmp946
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp947
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-48(%rbp), %rdx	# passed, tmp948
	movl	%eax, %eax	# D.15641, tmp949
	addq	$2, %rax	#, tmp950
	movq	%rcx, (%rdx,%rax,8)	# D.15639, passed_73->elms
	.loc 1 748 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.107
	movl	-128(%rbp), %edx	# child, tmp951
	movslq	%edx, %rdx	# tmp951, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_319, tmp952
	movl	%eax, -152(%rbp)	# tmp952, current_edge
	.loc 1 762 0
	cmpl	$0, -152(%rbp)	#, current_edge
	jne	.L65	#,
	.loc 1 763 0
	movl	-128(%rbp), %eax	# child, tmp953
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp954
	addq	%rax, %rdx	# tmp954, D.15640
	addl	$1, -164(%rbp)	#, count
	movl	-164(%rbp), %eax	# count, tmp955
	movl	%eax, (%rdx)	# tmp955, *_323
	.loc 1 764 0
	jmp	.L74	#
.L65:
	jmp	.L74	#
.L78:
	.loc 1 775 0
	movl	-176(%rbp), %eax	# i, tmp956
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-80(%rbp), %rax	# dfs_nr, tmp957
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_468, D.15642
	testl	%eax, %eax	# D.15642
	jne	.L76	#,
	.loc 1 777 0
	movl	$1, -148(%rbp)	#, unreachable
	.loc 1 778 0
	jmp	.L77	#
.L76:
	.loc 1 774 0
	addl	$1, -176(%rbp)	#, i
.L75:
	.loc 1 774 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.108
	cmpl	%eax, -176(%rbp)	# n_basic_blocks.108, i
	jl	.L78	#,
.L77:
	.loc 1 783 0 is_stmt 1
	movq	-80(%rbp), %rax	# dfs_nr, tmp958
	movq	%rax, -24(%rbp)	# tmp958, degree
	.loc 1 785 0
	movl	$0, -176(%rbp)	#, i
	jmp	.L79	#
.L80:
	.loc 1 786 0 discriminator 2
	movl	-176(%rbp), %eax	# i, tmp959
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp960
	addq	%rdx, %rax	# D.15639, D.15640
	movl	$0, (%rax)	#, *_477
	.loc 1 785 0 discriminator 2
	addl	$1, -176(%rbp)	#, i
.L79:
	.loc 1 785 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.109
	cmpl	%eax, -176(%rbp)	# n_basic_blocks.109, i
	jl	.L80	#,
	.loc 1 787 0 is_stmt 1
	movl	$0, -176(%rbp)	#, i
	jmp	.L81	#
.L83:
.LBB8:
	.loc 1 789 0
	movq	-200(%rbp), %rax	# edge_list, tmp961
	movq	8(%rax), %rax	# edge_list_52(D)->index_to_edge, D.15644
	movl	-176(%rbp), %edx	# i, tmp962
	movslq	%edx, %rdx	# tmp962, D.15639
	salq	$3, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15644
	movq	(%rax), %rax	# *_483, tmp963
	movq	%rax, -16(%rbp)	# tmp963, e
	.loc 1 791 0
	movq	-16(%rbp), %rax	# e, tmp964
	movq	24(%rax), %rax	# e_484->dest, D.15645
	cmpq	$entry_exit_blocks+112, %rax	#, D.15645
	je	.L82	#,
	.loc 1 792 0
	movq	-16(%rbp), %rax	# e, tmp965
	movq	24(%rax), %rax	# e_484->dest, D.15645
	movl	88(%rax), %eax	# _486->index, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp966
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_490, D.15642
	addl	$1, %edx	#, D.15642
	movl	%edx, (%rax)	# D.15642, *_490
.L82:
.LBE8:
	.loc 1 787 0
	addl	$1, -176(%rbp)	#, i
.L81:
	.loc 1 787 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# i, tmp967
	cmpl	-136(%rbp), %eax	# num_edges, tmp967
	jl	.L83	#,
	.loc 1 797 0 is_stmt 1
	cmpl	$0, -148(%rbp)	#, unreachable
	jne	.L84	#,
.LBB9:
	.loc 1 801 0
	cmpb	$0, -185(%rbp)	#, no_loops
	je	.L85	#,
	.loc 1 802 0
	movq	-56(%rbp), %rax	# header, tmp968
	movq	16(%rax), %rax	# header_70->elms, D.15639
	orq	$1, %rax	#, D.15639
	movq	%rax, %rdx	# D.15639, D.15639
	movq	-56(%rbp), %rax	# header, tmp969
	movq	%rdx, 16(%rax)	# D.15639, header_70->elms
.L85:
	.loc 1 807 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.110
	cltq
	salq	$2, %rax	#, D.15639
	movq	%rax, %rdi	# D.15639,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp970, queue
	.loc 1 811 0
	movl	$0, -176(%rbp)	#, i
	jmp	.L86	#
.L121:
	.loc 1 813 0
	movl	-176(%rbp), %eax	# i, i.111
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-56(%rbp), %rax	# header, tmp971
	movl	%edx, %edx	# D.15641, tmp972
	addq	$2, %rdx	#, tmp973
	movq	(%rax,%rdx,8), %rdx	# header_70->elms, D.15639
	movl	-176(%rbp), %eax	# i, tmp974
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1176
	shrq	%cl, %rdx	# tmp1176, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L87	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# i, i.112
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-64(%rbp), %rax	# inner, tmp975
	movl	%edx, %edx	# D.15641, tmp976
	addq	$2, %rdx	#, tmp977
	movq	(%rax,%rdx,8), %rdx	# inner_67->elms, D.15639
	movl	-176(%rbp), %eax	# i, tmp978
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1179
	shrq	%cl, %rdx	# tmp1179, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	je	.L87	#,
.LBB10:
	.loc 1 829 0 is_stmt 1
	movl	$0, -140(%rbp)	#, j
	jmp	.L88	#
.L91:
	.loc 1 833 0
	movl	-140(%rbp), %eax	# j, tmp979
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp980
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_518, D.15642
	cmpl	-176(%rbp), %eax	# i, D.15642
	jne	.L89	#,
	.loc 1 833 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# i, tmp981
	cmpl	-140(%rbp), %eax	# j, tmp981
	je	.L89	#,
	.loc 1 837 0 is_stmt 1
	movl	-140(%rbp), %eax	# j, tmp982
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15639
	movq	-208(%rbp), %rax	# dom, tmp983
	addq	%rdx, %rax	# D.15639, D.15646
	movq	(%rax), %rax	# *_523, D.15647
	movl	-176(%rbp), %edx	# i, i.113
	shrl	$6, %edx	#, D.15641
	movl	%edx, %edx	# D.15641, tmp984
	addq	$2, %rdx	#, tmp985
	movq	(%rax,%rdx,8), %rdx	# _524->elms, D.15639
	movl	-176(%rbp), %eax	# i, tmp986
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1181
	shrq	%cl, %rdx	# tmp1181, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	jne	.L89	#,
	.loc 1 838 0
	jmp	.L90	#
.L89:
	.loc 1 829 0
	addl	$1, -140(%rbp)	#, j
.L88:
	.loc 1 829 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.114
	cmpl	%eax, -140(%rbp)	# n_basic_blocks.114, j
	jl	.L91	#,
.L90:
	.loc 1 845 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.115
	cmpl	%eax, -140(%rbp)	# n_basic_blocks.115, j
	je	.L92	#,
	.loc 1 846 0
	jmp	.L87	#
.L92:
	.loc 1 850 0
	movl	$-1, -168(%rbp)	#, tail
	movl	-168(%rbp), %eax	# tail, tmp987
	movl	%eax, -172(%rbp)	# tmp987, head
	.loc 1 851 0
	movl	$0, -144(%rbp)	#, too_large_failure
	.loc 1 852 0
	movl	-176(%rbp), %eax	# i, tmp988
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp989
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_538, tmp990
	movl	%eax, -124(%rbp)	# tmp990, loop_head
	.loc 1 856 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.116
	movl	-176(%rbp), %edx	# i, tmp992
	movslq	%edx, %rdx	# tmp992, tmp991
	addq	$4, %rdx	#, tmp993
	movq	(%rax,%rdx,8), %rax	# basic_block_info.116_540->data.bb, D.15645
	movq	40(%rax), %rax	# _541->succ, tmp994
	movq	%rax, -120(%rbp)	# tmp994, e
	jmp	.L93	#
.L95:
	.loc 1 857 0
	movq	-120(%rbp), %rax	# e, tmp995
	movq	24(%rax), %rax	# e_41->dest, D.15645
	cmpq	$entry_exit_blocks+112, %rax	#, D.15645
	je	.L94	#,
	.loc 1 858 0
	movq	-120(%rbp), %rax	# e, tmp996
	movq	24(%rax), %rax	# e_41->dest, D.15645
	movl	88(%rax), %eax	# _544->index, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp997
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_548, D.15642
	subl	$1, %edx	#, D.15642
	movl	%edx, (%rax)	# D.15642, *_548
.L94:
	.loc 1 856 0
	movq	-120(%rbp), %rax	# e, tmp998
	movq	8(%rax), %rax	# e_41->succ_next, tmp999
	movq	%rax, -120(%rbp)	# tmp999, e
.L93:
	.loc 1 856 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, e
	jne	.L95	#,
	.loc 1 861 0 is_stmt 1
	movl	$1, -184(%rbp)	#, num_bbs
	.loc 1 862 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.117
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.118
	movl	-176(%rbp), %edx	# i, tmp1001
	movslq	%edx, %rdx	# tmp1001, tmp1000
	addq	$4, %rdx	#, tmp1002
	movq	(%rax,%rdx,8), %rax	# basic_block_info.118_553->data.bb, D.15645
	movq	8(%rax), %rax	# _554->end, D.15648
	movl	8(%rax), %eax	# _555->fld[0].rtint, D.15642
	movslq	%eax, %rdx	# D.15642, D.15639
	movq	%rdx, %rax	# D.15639, tmp1003
	addq	%rax, %rax	# tmp1003
	addq	%rdx, %rax	# D.15639, tmp1003
	salq	$4, %rax	#, tmp1004
	addq	%rcx, %rax	# h_i_d.117, D.15649
	movl	16(%rax), %ecx	# _559->luid, D.15642
	.loc 1 863 0
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.119
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.120
	movl	-176(%rbp), %edx	# i, tmp1006
	movslq	%edx, %rdx	# tmp1006, tmp1005
	addq	$4, %rdx	#, tmp1007
	movq	(%rax,%rdx,8), %rax	# basic_block_info.120_562->data.bb, D.15645
	movq	(%rax), %rax	# _563->head, D.15648
	movl	8(%rax), %eax	# _564->fld[0].rtint, D.15642
	movslq	%eax, %rdx	# D.15642, D.15639
	movq	%rdx, %rax	# D.15639, tmp1008
	addq	%rax, %rax	# tmp1008
	addq	%rdx, %rax	# D.15639, tmp1008
	salq	$4, %rax	#, tmp1009
	addq	%rsi, %rax	# h_i_d.119, D.15649
	movl	16(%rax), %eax	# _568->luid, D.15642
	subl	%eax, %ecx	# D.15642, num_insns.121
	movl	%ecx, %eax	# num_insns.121, num_insns.121
	.loc 1 862 0
	movl	%eax, -180(%rbp)	# num_insns.121, num_insns
	.loc 1 869 0
	cmpb	$0, -185(%rbp)	#, no_loops
	je	.L96	#,
	.loc 1 871 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L97	#
.L100:
	.loc 1 874 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.122
	movl	-140(%rbp), %edx	# j, tmp1011
	movslq	%edx, %rdx	# tmp1011, tmp1010
	addq	$4, %rdx	#, tmp1012
	movq	(%rax,%rdx,8), %rax	# basic_block_info.122_573->data.bb, D.15645
	movq	40(%rax), %rax	# _574->succ, D.15650
	testq	%rax, %rax	# D.15650
	je	.L98	#,
	.loc 1 875 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.123
	movl	-140(%rbp), %edx	# j, tmp1014
	movslq	%edx, %rdx	# tmp1014, tmp1013
	addq	$4, %rdx	#, tmp1015
	movq	(%rax,%rdx,8), %rax	# basic_block_info.123_576->data.bb, D.15645
	movq	40(%rax), %rax	# _577->succ, D.15650
	movq	24(%rax), %rax	# _578->dest, D.15645
	cmpq	$entry_exit_blocks+112, %rax	#, D.15645
	jne	.L98	#,
	.loc 1 876 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.124
	movl	-140(%rbp), %edx	# j, tmp1017
	movslq	%edx, %rdx	# tmp1017, tmp1016
	addq	$4, %rdx	#, tmp1018
	movq	(%rax,%rdx,8), %rax	# basic_block_info.124_580->data.bb, D.15645
	movq	40(%rax), %rax	# _581->succ, D.15650
	movq	8(%rax), %rax	# _582->succ_next, D.15650
	testq	%rax, %rax	# D.15650
	jne	.L98	#,
	.loc 1 878 0
	addl	$1, -168(%rbp)	#, tail
	movl	-168(%rbp), %eax	# tail, tmp1019
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1020
	addq	%rax, %rdx	# tmp1020, D.15640
	movl	-140(%rbp), %eax	# j, tmp1021
	movl	%eax, (%rdx)	# tmp1021, *_587
	.loc 1 879 0
	movl	-140(%rbp), %eax	# j, j.125
	shrl	$6, %eax	#, D.15641
	movq	-40(%rbp), %rdx	# in_queue, tmp1022
	movl	%eax, %ecx	# D.15641, tmp1023
	addq	$2, %rcx	#, tmp1024
	movq	(%rdx,%rcx,8), %rdx	# in_queue_76->elms, D.15639
	movl	-140(%rbp), %ecx	# j, tmp1025
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp1026
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-40(%rbp), %rdx	# in_queue, tmp1027
	movl	%eax, %eax	# D.15641, tmp1028
	addq	$2, %rax	#, tmp1029
	movq	%rcx, (%rdx,%rax,8)	# D.15639, in_queue_76->elms
	.loc 1 881 0
	leaq	-180(%rbp), %rdx	#, tmp1030
	leaq	-184(%rbp), %rcx	#, tmp1031
	movl	-140(%rbp), %eax	# j, tmp1032
	movq	%rcx, %rsi	# tmp1031,
	movl	%eax, %edi	# tmp1032,
	call	too_large	#
	testl	%eax, %eax	# D.15642
	je	.L98	#,
	.loc 1 883 0
	movl	$1, -144(%rbp)	#, too_large_failure
	.loc 1 884 0
	nop
	jmp	.L101	#
.L98:
	.loc 1 871 0
	addl	$1, -140(%rbp)	#, j
.L97:
	.loc 1 871 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.126
	cmpl	%eax, -140(%rbp)	# n_basic_blocks.126, j
	jl	.L100	#,
	jmp	.L101	#
.L96:
.LBB11:
	.loc 1 892 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.127
	movl	-176(%rbp), %edx	# i, tmp1034
	movslq	%edx, %rdx	# tmp1034, tmp1033
	addq	$4, %rdx	#, tmp1035
	movq	(%rax,%rdx,8), %rax	# basic_block_info.127_597->data.bb, D.15645
	movq	32(%rax), %rax	# _598->pred, tmp1036
	movq	%rax, -112(%rbp)	# tmp1036, e
	jmp	.L102	#
.L105:
	.loc 1 894 0
	movq	-112(%rbp), %rax	# e, tmp1037
	movq	16(%rax), %rax	# e_44->src, D.15645
	cmpq	$entry_exit_blocks, %rax	#, D.15645
	jne	.L103	#,
	.loc 1 895 0
	jmp	.L104	#
.L103:
	.loc 1 897 0
	movq	-112(%rbp), %rax	# e, tmp1038
	movq	16(%rax), %rax	# e_44->src, D.15645
	movl	88(%rax), %eax	# _601->index, tmp1039
	movl	%eax, -132(%rbp)	# tmp1039, node
	.loc 1 899 0
	movl	-132(%rbp), %eax	# node, tmp1040
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp1041
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_605, D.15642
	cmpl	-124(%rbp), %eax	# loop_head, D.15642
	jne	.L104	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp1042
	cmpl	-176(%rbp), %eax	# i, tmp1042
	je	.L104	#,
	.loc 1 902 0 is_stmt 1
	addl	$1, -168(%rbp)	#, tail
	movl	-168(%rbp), %eax	# tail, tmp1043
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1044
	addq	%rax, %rdx	# tmp1044, D.15640
	movl	-132(%rbp), %eax	# node, tmp1045
	movl	%eax, (%rdx)	# tmp1045, *_610
	.loc 1 903 0
	movl	-132(%rbp), %eax	# node, node.128
	shrl	$6, %eax	#, D.15641
	movq	-40(%rbp), %rdx	# in_queue, tmp1046
	movl	%eax, %ecx	# D.15641, tmp1047
	addq	$2, %rcx	#, tmp1048
	movq	(%rdx,%rcx,8), %rdx	# in_queue_76->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp1049
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp1050
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-40(%rbp), %rdx	# in_queue, tmp1051
	movl	%eax, %eax	# D.15641, tmp1052
	addq	$2, %rax	#, tmp1053
	movq	%rcx, (%rdx,%rax,8)	# D.15639, in_queue_76->elms
	.loc 1 905 0
	leaq	-180(%rbp), %rdx	#, tmp1054
	leaq	-184(%rbp), %rcx	#, tmp1055
	movl	-132(%rbp), %eax	# node, tmp1056
	movq	%rcx, %rsi	# tmp1055,
	movl	%eax, %edi	# tmp1056,
	call	too_large	#
	testl	%eax, %eax	# D.15642
	je	.L104	#,
	.loc 1 907 0
	movl	$1, -144(%rbp)	#, too_large_failure
	.loc 1 908 0
	jmp	.L101	#
.L104:
	.loc 1 892 0
	movq	-112(%rbp), %rax	# e, tmp1057
	movq	(%rax), %rax	# e_44->pred_next, tmp1058
	movq	%rax, -112(%rbp)	# tmp1058, e
.L102:
	.loc 1 892 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, e
	jne	.L105	#,
.L101:
.LBE11:
	.loc 1 944 0 is_stmt 1
	jmp	.L106	#
.L113:
.LBB12:
	.loc 1 947 0
	addl	$1, -172(%rbp)	#, head
	movl	-172(%rbp), %eax	# head, tmp1059
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1060
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_623, tmp1061
	movl	%eax, -128(%rbp)	# tmp1061, child
	.loc 1 949 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.129
	movl	-128(%rbp), %edx	# child, tmp1063
	movslq	%edx, %rdx	# tmp1063, tmp1062
	addq	$4, %rdx	#, tmp1064
	movq	(%rax,%rdx,8), %rax	# basic_block_info.129_625->data.bb, D.15645
	movq	32(%rax), %rax	# _626->pred, tmp1065
	movq	%rax, -104(%rbp)	# tmp1065, e
	jmp	.L107	#
.L111:
	.loc 1 951 0
	movq	-104(%rbp), %rax	# e, tmp1066
	movq	16(%rax), %rax	# e_45->src, D.15645
	movl	88(%rax), %eax	# _628->index, tmp1067
	movl	%eax, -132(%rbp)	# tmp1067, node
	.loc 1 955 0
	movq	-104(%rbp), %rax	# e, tmp1068
	movq	16(%rax), %rax	# e_45->src, D.15645
	cmpq	$entry_exit_blocks, %rax	#, D.15645
	je	.L108	#,
	.loc 1 956 0
	movl	-132(%rbp), %eax	# node, tmp1069
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-88(%rbp), %rax	# max_hdr, tmp1070
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_633, D.15642
	cmpl	-124(%rbp), %eax	# loop_head, D.15642
	je	.L109	#,
.L108:
	.loc 1 958 0
	movl	$-1, -168(%rbp)	#, tail
	.loc 1 959 0
	jmp	.L106	#
.L109:
	.loc 1 961 0
	movl	-132(%rbp), %eax	# node, node.130
	shrl	$6, %eax	#, D.15641
	movl	%eax, %edx	# D.15641, D.15641
	movq	-40(%rbp), %rax	# in_queue, tmp1071
	movl	%edx, %edx	# D.15641, tmp1072
	addq	$2, %rdx	#, tmp1073
	movq	(%rax,%rdx,8), %rdx	# in_queue_76->elms, D.15639
	movl	-132(%rbp), %eax	# node, tmp1074
	andl	$63, %eax	#, D.15642
	movl	%eax, %ecx	# D.15642, tmp1187
	shrq	%cl, %rdx	# tmp1187, D.15639
	movq	%rdx, %rax	# D.15639, D.15639
	andl	$1, %eax	#, D.15639
	testq	%rax, %rax	# D.15639
	jne	.L110	#,
	.loc 1 961 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# node, tmp1075
	cmpl	-176(%rbp), %eax	# i, tmp1075
	je	.L110	#,
	.loc 1 963 0 is_stmt 1
	addl	$1, -168(%rbp)	#, tail
	movl	-168(%rbp), %eax	# tail, tmp1076
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1077
	addq	%rax, %rdx	# tmp1077, D.15640
	movl	-132(%rbp), %eax	# node, tmp1078
	movl	%eax, (%rdx)	# tmp1078, *_644
	.loc 1 964 0
	movl	-132(%rbp), %eax	# node, node.131
	shrl	$6, %eax	#, D.15641
	movq	-40(%rbp), %rdx	# in_queue, tmp1079
	movl	%eax, %ecx	# D.15641, tmp1080
	addq	$2, %rcx	#, tmp1081
	movq	(%rdx,%rcx,8), %rdx	# in_queue_76->elms, D.15639
	movl	-132(%rbp), %ecx	# node, tmp1082
	andl	$63, %ecx	#, D.15642
	movl	$1, %esi	#, tmp1083
	salq	%cl, %rsi	# D.15642, D.15639
	movq	%rsi, %rcx	# D.15639, D.15639
	orq	%rdx, %rcx	# D.15639, D.15639
	movq	-40(%rbp), %rdx	# in_queue, tmp1084
	movl	%eax, %eax	# D.15641, tmp1085
	addq	$2, %rax	#, tmp1086
	movq	%rcx, (%rdx,%rax,8)	# D.15639, in_queue_76->elms
	.loc 1 966 0
	leaq	-180(%rbp), %rdx	#, tmp1087
	leaq	-184(%rbp), %rcx	#, tmp1088
	movl	-132(%rbp), %eax	# node, tmp1089
	movq	%rcx, %rsi	# tmp1088,
	movl	%eax, %edi	# tmp1089,
	call	too_large	#
	testl	%eax, %eax	# D.15642
	je	.L110	#,
	.loc 1 968 0
	movl	$1, -144(%rbp)	#, too_large_failure
	.loc 1 969 0
	jmp	.L106	#
.L110:
	.loc 1 949 0
	movq	-104(%rbp), %rax	# e, tmp1090
	movq	(%rax), %rax	# e_45->pred_next, tmp1091
	movq	%rax, -104(%rbp)	# tmp1091, e
.L107:
	.loc 1 949 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L111	#,
.L106:
.LBE12:
	.loc 1 944 0 is_stmt 1 discriminator 1
	movl	-172(%rbp), %eax	# head, tmp1092
	cmpl	-168(%rbp), %eax	# tail, tmp1092
	jge	.L112	#,
	.loc 1 944 0 is_stmt 0 discriminator 2
	cmpl	$0, -144(%rbp)	#, too_large_failure
	je	.L113	#,
.L112:
	.loc 1 975 0 is_stmt 1
	cmpl	$0, -168(%rbp)	#, tail
	js	.L87	#,
	.loc 1 975 0 is_stmt 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, too_large_failure
	jne	.L87	#,
	.loc 1 978 0 is_stmt 1
	movl	-176(%rbp), %eax	# i, tmp1093
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp1094
	addq	%rdx, %rax	# D.15639, D.15640
	movl	$-1, (%rax)	#, *_657
	.loc 1 979 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.132
	movl	-156(%rbp), %edx	# idx, tmp1095
	movslq	%edx, %rdx	# tmp1095, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# rgn_bb_table.132, D.15640
	movl	-176(%rbp), %eax	# i, tmp1096
	movl	%eax, (%rdx)	# tmp1096, *_661
	.loc 1 980 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.133
	movl	nr_regions(%rip), %edx	# nr_regions, nr_regions.134
	movslq	%edx, %rdx	# nr_regions.134, D.15639
	salq	$3, %rdx	#, D.15639
	addq	%rax, %rdx	# rgn_table.133, D.15651
	movl	-184(%rbp), %eax	# num_bbs, num_bbs.135
	movl	%eax, (%rdx)	# num_bbs.135, _666->rgn_nr_blocks
	.loc 1 981 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.136
	movl	nr_regions(%rip), %edx	# nr_regions, nr_regions.137
	movslq	%edx, %rdx	# nr_regions.137, D.15639
	salq	$3, %rdx	#, D.15639
	leaq	(%rax,%rdx), %rcx	#, D.15651
	movl	-156(%rbp), %eax	# idx, idx.138
	leal	1(%rax), %edx	#, tmp1097
	movl	%edx, -156(%rbp)	# tmp1097, idx
	movl	%eax, 4(%rcx)	# idx.138, _672->rgn_blocks
	.loc 1 982 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.139
	movl	-176(%rbp), %edx	# i, tmp1098
	movslq	%edx, %rdx	# tmp1098, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# containing_rgn.139, D.15640
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.140
	movl	%eax, (%rdx)	# nr_regions.140, *_678
	.loc 1 983 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.141
	movl	-176(%rbp), %edx	# i, tmp1099
	movslq	%edx, %rdx	# tmp1099, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# block_to_bb.141, D.15640
	movl	$0, -164(%rbp)	#, count
	movl	-164(%rbp), %eax	# count, tmp1100
	movl	%eax, (%rdx)	# tmp1100, *_683
	.loc 1 989 0
	jmp	.L114	#
.L120:
	.loc 1 991 0
	cmpl	$0, -172(%rbp)	#, head
	jns	.L115	#,
	.loc 1 992 0
	movl	-168(%rbp), %eax	# tail, tmp1101
	movl	%eax, -172(%rbp)	# tmp1101, head
.L115:
	.loc 1 993 0
	movl	-172(%rbp), %eax	# head, tmp1102
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1103
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_688, tmp1104
	movl	%eax, -128(%rbp)	# tmp1104, child
	.loc 1 994 0
	movl	-128(%rbp), %eax	# child, tmp1105
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp1106
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_692, D.15642
	testl	%eax, %eax	# D.15642
	jne	.L116	#,
.LBB13:
	.loc 1 998 0
	movl	-128(%rbp), %eax	# child, tmp1107
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp1108
	addq	%rdx, %rax	# D.15639, D.15640
	movl	$-1, (%rax)	#, *_696
	.loc 1 999 0
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.142
	movl	-156(%rbp), %eax	# idx, idx.143
	leal	1(%rax), %edx	#, tmp1109
	movl	%edx, -156(%rbp)	# tmp1109, idx
	cltq
	salq	$2, %rax	#, D.15639
	leaq	(%rcx,%rax), %rdx	#, D.15640
	movl	-128(%rbp), %eax	# child, tmp1110
	movl	%eax, (%rdx)	# tmp1110, *_702
	.loc 1 1000 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.144
	movl	-128(%rbp), %edx	# child, tmp1111
	movslq	%edx, %rdx	# tmp1111, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# block_to_bb.144, D.15640
	addl	$1, -164(%rbp)	#, count
	movl	-164(%rbp), %eax	# count, tmp1112
	movl	%eax, (%rdx)	# tmp1112, *_706
	.loc 1 1001 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.145
	movl	-128(%rbp), %edx	# child, tmp1113
	movslq	%edx, %rdx	# tmp1113, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# containing_rgn.145, D.15640
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.146
	movl	%eax, (%rdx)	# nr_regions.146, *_711
	.loc 1 1002 0
	movl	-172(%rbp), %eax	# head, tmp1114
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1115
	leaq	(%rdx,%rax), %rcx	#, D.15640
	movl	-168(%rbp), %eax	# tail, tail.147
	leal	-1(%rax), %edx	#, tmp1116
	movl	%edx, -168(%rbp)	# tmp1116, tail
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-8(%rbp), %rax	# queue, tmp1117
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_720, D.15642
	movl	%eax, (%rcx)	# D.15642, *_715
	.loc 1 1004 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.148
	movl	-128(%rbp), %edx	# child, tmp1119
	movslq	%edx, %rdx	# tmp1119, tmp1118
	addq	$4, %rdx	#, tmp1120
	movq	(%rax,%rdx,8), %rax	# basic_block_info.148_722->data.bb, D.15645
	movq	40(%rax), %rax	# _723->succ, tmp1121
	movq	%rax, -96(%rbp)	# tmp1121, e
	jmp	.L117	#
.L119:
	.loc 1 1007 0
	movq	-96(%rbp), %rax	# e, tmp1122
	movq	24(%rax), %rax	# e_46->dest, D.15645
	cmpq	$entry_exit_blocks+112, %rax	#, D.15645
	je	.L118	#,
	.loc 1 1008 0
	movq	-96(%rbp), %rax	# e, tmp1123
	movq	24(%rax), %rax	# e_46->dest, D.15645
	movl	88(%rax), %eax	# _726->index, D.15642
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp1124
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %edx	# *_730, D.15642
	subl	$1, %edx	#, D.15642
	movl	%edx, (%rax)	# D.15642, *_730
.L118:
	.loc 1 1006 0
	movq	-96(%rbp), %rax	# e, tmp1125
	movq	8(%rax), %rax	# e_46->succ_next, tmp1126
	movq	%rax, -96(%rbp)	# tmp1126, e
.L117:
	.loc 1 1004 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, e
	jne	.L119	#,
.LBE13:
	jmp	.L114	#
.L116:
	.loc 1 1011 0
	subl	$1, -172(%rbp)	#, head
.L114:
	.loc 1 989 0 discriminator 1
	cmpl	$0, -168(%rbp)	#, tail
	jns	.L120	#,
	.loc 1 1013 0
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.149
	addl	$1, %eax	#, nr_regions.150
	movl	%eax, nr_regions(%rip)	# nr_regions.150, nr_regions
.L87:
.LBE10:
	.loc 1 811 0
	addl	$1, -176(%rbp)	#, i
.L86:
	.loc 1 811 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.151
	cmpl	%eax, -176(%rbp)	# n_basic_blocks.151, i
	jl	.L121	#,
	.loc 1 1017 0 is_stmt 1
	movq	-8(%rbp), %rax	# queue, tmp1127
	movq	%rax, %rdi	# tmp1127,
	call	free	#
.L84:
.LBE9:
	.loc 1 1022 0
	movl	$0, -176(%rbp)	#, i
	jmp	.L122	#
.L124:
	.loc 1 1023 0
	movl	-176(%rbp), %eax	# i, tmp1128
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15639
	movq	-24(%rbp), %rax	# degree, tmp1129
	addq	%rdx, %rax	# D.15639, D.15640
	movl	(%rax), %eax	# *_742, D.15642
	testl	%eax, %eax	# D.15642
	js	.L123	#,
	.loc 1 1025 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.152
	movl	-156(%rbp), %edx	# idx, tmp1130
	movslq	%edx, %rdx	# tmp1130, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rax, %rdx	# rgn_bb_table.152, D.15640
	movl	-176(%rbp), %eax	# i, tmp1131
	movl	%eax, (%rdx)	# tmp1131, *_747
	.loc 1 1026 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.153
	movl	nr_regions(%rip), %edx	# nr_regions, nr_regions.154
	movslq	%edx, %rdx	# nr_regions.154, D.15639
	salq	$3, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15651
	movl	$1, (%rax)	#, _752->rgn_nr_blocks
	.loc 1 1027 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.155
	movl	nr_regions(%rip), %edx	# nr_regions, nr_regions.156
	movslq	%edx, %rdx	# nr_regions.156, D.15639
	salq	$3, %rdx	#, D.15639
	leaq	(%rax,%rdx), %rcx	#, D.15651
	movl	-156(%rbp), %eax	# idx, idx.157
	leal	1(%rax), %edx	#, tmp1132
	movl	%edx, -156(%rbp)	# tmp1132, idx
	movl	%eax, 4(%rcx)	# idx.157, _757->rgn_blocks
	.loc 1 1028 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.158
	movl	-176(%rbp), %edx	# i, tmp1133
	movslq	%edx, %rdx	# tmp1133, D.15639
	salq	$2, %rdx	#, D.15639
	leaq	(%rax,%rdx), %rcx	#, D.15640
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.159
	leal	1(%rax), %edx	#, nr_regions.161
	movl	%edx, nr_regions(%rip)	# nr_regions.161, nr_regions
	movl	%eax, (%rcx)	# nr_regions.160, *_763
	.loc 1 1029 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.162
	movl	-176(%rbp), %edx	# i, tmp1134
	movslq	%edx, %rdx	# tmp1134, D.15639
	salq	$2, %rdx	#, D.15639
	addq	%rdx, %rax	# D.15639, D.15640
	movl	$0, (%rax)	#, *_770
.L123:
	.loc 1 1022 0
	addl	$1, -176(%rbp)	#, i
.L122:
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.163
	cmpl	%eax, -176(%rbp)	# n_basic_blocks.163, i
	jl	.L124	#,
	.loc 1 1032 0 is_stmt 1
	movq	-88(%rbp), %rax	# max_hdr, tmp1135
	movq	%rax, %rdi	# tmp1135,
	call	free	#
	.loc 1 1033 0
	movq	-80(%rbp), %rax	# dfs_nr, tmp1136
	movq	%rax, %rdi	# tmp1136,
	call	free	#
	.loc 1 1034 0
	movq	-72(%rbp), %rax	# stack, tmp1137
	movq	%rax, %rdi	# tmp1137,
	call	free	#
	.loc 1 1035 0
	movq	-48(%rbp), %rax	# passed, tmp1138
	movq	%rax, %rdi	# tmp1138,
	call	free	#
	.loc 1 1036 0
	movq	-56(%rbp), %rax	# header, tmp1139
	movq	%rax, %rdi	# tmp1139,
	call	free	#
	.loc 1 1037 0
	movq	-64(%rbp), %rax	# inner, tmp1140
	movq	%rax, %rdi	# tmp1140,
	call	free	#
	.loc 1 1038 0
	movq	-40(%rbp), %rax	# in_queue, tmp1141
	movq	%rax, %rdi	# tmp1141,
	call	free	#
	.loc 1 1039 0
	movq	-32(%rbp), %rax	# in_stack, tmp1142
	movq	%rax, %rdi	# tmp1142,
	call	free	#
	.loc 1 1040 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	find_rgns, .-find_rgns
	.section	.rodata
.LC10:
	.string	";;  bb_prob(%d, %d) = %3d\n"
	.text
	.type	compute_dom_prob_ps, @function
compute_dom_prob_ps:
.LFB10:
	.loc 1 1050 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# bb, bb
	.loc 1 1054 0
	movq	prob(%rip), %rax	# prob, prob.164
	movl	-36(%rbp), %edx	# bb, tmp393
	movslq	%edx, %rdx	# tmp393, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rax, %rdx	# prob.164, D.15653
	movl	.LC6(%rip), %eax	#, tmp394
	movl	%eax, (%rdx)	# tmp394, *_11
	.loc 1 1055 0
	cmpl	$0, -36(%rbp)	#, bb
	jne	.L126	#,
	.loc 1 1057 0
	movq	dom(%rip), %rax	# dom, dom.165
	movl	-36(%rbp), %edx	# bb, tmp395
	movslq	%edx, %rdx	# tmp395, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15654
	movq	(%rax), %rax	# *_15, D.15655
	movq	dom(%rip), %rdx	# dom, dom.166
	movl	-36(%rbp), %ecx	# bb, tmp396
	movslq	%ecx, %rcx	# tmp396, D.15652
	salq	$3, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15654
	movq	(%rdx), %rdx	# *_20, D.15655
	movq	16(%rdx), %rdx	# _21->elms, D.15652
	orq	$1, %rdx	#, D.15652
	movq	%rdx, 16(%rax)	# D.15652, _16->elms
	.loc 1 1058 0
	movq	prob(%rip), %rax	# prob, prob.167
	movl	-36(%rbp), %edx	# bb, tmp397
	movslq	%edx, %rdx	# tmp397, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rax, %rdx	# prob.167, D.15653
	movl	.LC7(%rip), %eax	#, tmp398
	movl	%eax, (%rdx)	# tmp398, *_27
	.loc 1 1059 0
	jmp	.L125	#
.L126:
	.loc 1 1062 0
	movq	in_edges(%rip), %rax	# in_edges, in_edges.168
	movq	rgn_bb_table(%rip), %rdx	# rgn_bb_table, rgn_bb_table.169
	movl	current_blocks(%rip), %esi	# current_blocks, current_blocks.170
	movl	-36(%rbp), %ecx	# bb, tmp399
	addl	%esi, %ecx	# current_blocks.170, D.15656
	movslq	%ecx, %rcx	# D.15656, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15657
	movl	(%rdx), %edx	# *_34, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_38, tmp400
	movl	%eax, -28(%rbp)	# tmp400, nxt_in_edge
	movl	-28(%rbp), %eax	# nxt_in_edge, tmp401
	movl	%eax, -12(%rbp)	# tmp401, fst_in_edge
	.loc 1 1065 0
	movq	dom(%rip), %rax	# dom, dom.171
	movl	-36(%rbp), %edx	# bb, tmp402
	movslq	%edx, %rdx	# tmp402, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15654
	movq	(%rax), %rax	# *_44, D.15655
	movq	%rax, %rdi	# D.15655,
	call	sbitmap_ones	#
.L134:
	.loc 1 1069 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.172
	movl	-28(%rbp), %edx	# nxt_in_edge, tmp403
	movslq	%edx, %rdx	# tmp403, D.15652
	salq	$4, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15658
	movl	(%rax), %eax	# _49->from_block, tmp404
	movl	%eax, -8(%rbp)	# tmp404, pred
	.loc 1 1070 0
	movq	dom(%rip), %rax	# dom, dom.173
	movq	block_to_bb(%rip), %rdx	# block_to_bb, block_to_bb.174
	movl	-8(%rbp), %ecx	# pred, tmp405
	movslq	%ecx, %rcx	# tmp405, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15657
	movl	(%rdx), %edx	# *_55, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15654
	movq	(%rax), %rdx	# *_59, D.15655
	movq	dom(%rip), %rax	# dom, dom.175
	movl	-36(%rbp), %ecx	# bb, tmp406
	movslq	%ecx, %rcx	# tmp406, D.15652
	salq	$3, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15654
	movq	(%rax), %rcx	# *_64, D.15655
	movq	dom(%rip), %rax	# dom, dom.176
	movl	-36(%rbp), %esi	# bb, tmp407
	movslq	%esi, %rsi	# tmp407, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rax	# D.15652, D.15654
	movq	(%rax), %rax	# *_69, D.15655
	movq	%rcx, %rsi	# D.15655,
	movq	%rax, %rdi	# D.15655,
	call	sbitmap_a_and_b	#
	.loc 1 1071 0
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.177
	movq	block_to_bb(%rip), %rdx	# block_to_bb, block_to_bb.178
	movl	-8(%rbp), %ecx	# pred, tmp408
	movslq	%ecx, %rcx	# tmp408, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15657
	movl	(%rdx), %edx	# *_75, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_79, D.15655
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.179
	movl	-36(%rbp), %ecx	# bb, tmp409
	movslq	%ecx, %rcx	# tmp409, D.15652
	salq	$3, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15659
	movq	(%rax), %rcx	# *_84, D.15655
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.180
	movl	-36(%rbp), %esi	# bb, tmp410
	movslq	%esi, %rsi	# tmp410, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rax	# D.15652, D.15659
	movq	(%rax), %rax	# *_89, D.15655
	movq	%rcx, %rsi	# D.15655,
	movq	%rax, %rdi	# D.15655,
	call	sbitmap_a_or_b	#
	.loc 1 1073 0
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.181
	movl	-36(%rbp), %edx	# bb, tmp411
	movslq	%edx, %rdx	# tmp411, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_94, D.15655
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.182
	movl	-28(%rbp), %ecx	# nxt_in_edge, tmp412
	movslq	%ecx, %rcx	# tmp412, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_99, D.15656
	shrl	$6, %eax	#, D.15660
	movq	ancestor_edges(%rip), %rcx	# ancestor_edges, ancestor_edges.183
	movl	-36(%rbp), %esi	# bb, tmp413
	movslq	%esi, %rsi	# tmp413, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15659
	movq	(%rcx), %rcx	# *_106, D.15655
	movl	%eax, %esi	# D.15660, tmp414
	addq	$2, %rsi	#, tmp415
	movq	(%rcx,%rsi,8), %rsi	# _107->elms, D.15652
	movq	edge_to_bit(%rip), %rcx	# edge_to_bit, edge_to_bit.184
	movl	-28(%rbp), %edi	# nxt_in_edge, tmp416
	movslq	%edi, %rdi	# tmp416, D.15652
	salq	$2, %rdi	#, D.15652
	addq	%rdi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_112, D.15656
	andl	$63, %ecx	#, D.15656
	movl	$1, %edi	#, tmp417
	salq	%cl, %rdi	# D.15656, D.15652
	movq	%rdi, %rcx	# D.15652, D.15652
	orq	%rsi, %rcx	# D.15652, D.15652
	movl	%eax, %eax	# D.15660, tmp418
	addq	$2, %rax	#, tmp419
	movq	%rcx, (%rdx,%rax,8)	# D.15652, _95->elms
	.loc 1 1075 0
	movl	$1, -20(%rbp)	#, nr_out_edges
	.loc 1 1076 0
	movl	$0, -16(%rbp)	#, nr_rgn_out_edges
	.loc 1 1077 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.185
	movl	-8(%rbp), %edx	# pred, tmp420
	movslq	%edx, %rdx	# tmp420, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_122, tmp421
	movl	%eax, -4(%rbp)	# tmp421, fst_out_edge
	.loc 1 1078 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.186
	movl	-4(%rbp), %edx	# fst_out_edge, tmp422
	movslq	%edx, %rdx	# tmp422, D.15652
	salq	$4, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15658
	movl	12(%rax), %eax	# _127->next_out, tmp423
	movl	%eax, -24(%rbp)	# tmp423, nxt_out_edge
	.loc 1 1080 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.187
	movq	block_to_bb(%rip), %rdx	# block_to_bb, block_to_bb.188
	movl	-8(%rbp), %ecx	# pred, tmp424
	movslq	%ecx, %rcx	# tmp424, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15657
	movl	(%rdx), %edx	# *_133, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_137, D.15655
	movq	pot_split(%rip), %rax	# pot_split, pot_split.189
	movl	-36(%rbp), %ecx	# bb, tmp425
	movslq	%ecx, %rcx	# tmp425, D.15652
	salq	$3, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15659
	movq	(%rax), %rcx	# *_142, D.15655
	movq	pot_split(%rip), %rax	# pot_split, pot_split.190
	movl	-36(%rbp), %esi	# bb, tmp426
	movslq	%esi, %rsi	# tmp426, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rax	# D.15652, D.15659
	movq	(%rax), %rax	# *_147, D.15655
	movq	%rcx, %rsi	# D.15655,
	movq	%rax, %rdi	# D.15655,
	call	sbitmap_a_or_b	#
	.loc 1 1082 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.191
	movl	-36(%rbp), %edx	# bb, tmp427
	movslq	%edx, %rdx	# tmp427, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_152, D.15655
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.192
	movl	-4(%rbp), %ecx	# fst_out_edge, tmp428
	movslq	%ecx, %rcx	# tmp428, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_157, D.15656
	shrl	$6, %eax	#, D.15660
	movq	pot_split(%rip), %rcx	# pot_split, pot_split.193
	movl	-36(%rbp), %esi	# bb, tmp429
	movslq	%esi, %rsi	# tmp429, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15659
	movq	(%rcx), %rcx	# *_164, D.15655
	movl	%eax, %esi	# D.15660, tmp430
	addq	$2, %rsi	#, tmp431
	movq	(%rcx,%rsi,8), %rsi	# _165->elms, D.15652
	movq	edge_to_bit(%rip), %rcx	# edge_to_bit, edge_to_bit.194
	movl	-4(%rbp), %edi	# fst_out_edge, tmp432
	movslq	%edi, %rdi	# tmp432, D.15652
	salq	$2, %rdi	#, D.15652
	addq	%rdi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_170, D.15656
	andl	$63, %ecx	#, D.15656
	movl	$1, %edi	#, tmp433
	salq	%cl, %rdi	# D.15656, D.15652
	movq	%rdi, %rcx	# D.15652, D.15652
	orq	%rsi, %rcx	# D.15652, D.15652
	movl	%eax, %eax	# D.15660, tmp434
	addq	$2, %rax	#, tmp435
	movq	%rcx, (%rdx,%rax,8)	# D.15652, _153->elms
	.loc 1 1085 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.195
	movq	edge_table(%rip), %rdx	# edge_table, edge_table.196
	movl	-4(%rbp), %ecx	# fst_out_edge, tmp436
	movslq	%ecx, %rcx	# tmp436, D.15652
	salq	$4, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15658
	movl	4(%rdx), %edx	# _179->to_block, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15657
	movl	(%rax), %edx	# *_183, D.15656
	.loc 1 1086 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.197
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.198
	movl	current_blocks(%rip), %edi	# current_blocks, current_blocks.199
	movl	-36(%rbp), %esi	# bb, tmp437
	addl	%edi, %esi	# current_blocks.199, D.15656
	movslq	%esi, %rsi	# D.15656, D.15652
	salq	$2, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_191, D.15656
	movslq	%ecx, %rcx	# D.15656, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_195, D.15656
	.loc 1 1085 0
	cmpl	%eax, %edx	# D.15656, D.15656
	je	.L128	#,
	.loc 1 1087 0
	addl	$1, -16(%rbp)	#, nr_rgn_out_edges
	.loc 1 1089 0
	jmp	.L129	#
.L128:
	jmp	.L129	#
.L131:
	.loc 1 1091 0
	addl	$1, -20(%rbp)	#, nr_out_edges
	.loc 1 1093 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.200
	movq	edge_table(%rip), %rdx	# edge_table, edge_table.201
	movl	-24(%rbp), %ecx	# nxt_out_edge, tmp438
	movslq	%ecx, %rcx	# tmp438, D.15652
	salq	$4, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15658
	movl	4(%rdx), %edx	# _203->to_block, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15657
	movl	(%rax), %edx	# *_207, D.15656
	.loc 1 1094 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.202
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.203
	movl	current_blocks(%rip), %edi	# current_blocks, current_blocks.204
	movl	-36(%rbp), %esi	# bb, tmp439
	addl	%edi, %esi	# current_blocks.204, D.15656
	movslq	%esi, %rsi	# D.15656, D.15652
	salq	$2, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_215, D.15656
	movslq	%ecx, %rcx	# D.15656, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_219, D.15656
	.loc 1 1093 0
	cmpl	%eax, %edx	# D.15656, D.15656
	je	.L130	#,
	.loc 1 1095 0
	addl	$1, -16(%rbp)	#, nr_rgn_out_edges
.L130:
	.loc 1 1096 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.205
	movl	-36(%rbp), %edx	# bb, tmp440
	movslq	%edx, %rdx	# tmp440, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_225, D.15655
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.206
	movl	-24(%rbp), %ecx	# nxt_out_edge, tmp441
	movslq	%ecx, %rcx	# tmp441, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15657
	movl	(%rax), %eax	# *_230, D.15656
	shrl	$6, %eax	#, D.15660
	movq	pot_split(%rip), %rcx	# pot_split, pot_split.207
	movl	-36(%rbp), %esi	# bb, tmp442
	movslq	%esi, %rsi	# tmp442, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15659
	movq	(%rcx), %rcx	# *_237, D.15655
	movl	%eax, %esi	# D.15660, tmp443
	addq	$2, %rsi	#, tmp444
	movq	(%rcx,%rsi,8), %rsi	# _238->elms, D.15652
	movq	edge_to_bit(%rip), %rcx	# edge_to_bit, edge_to_bit.208
	movl	-24(%rbp), %edi	# nxt_out_edge, tmp445
	movslq	%edi, %rdi	# tmp445, D.15652
	salq	$2, %rdi	#, D.15652
	addq	%rdi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_243, D.15656
	andl	$63, %ecx	#, D.15656
	movl	$1, %edi	#, tmp446
	salq	%cl, %rdi	# D.15656, D.15652
	movq	%rdi, %rcx	# D.15652, D.15652
	orq	%rsi, %rcx	# D.15652, D.15652
	movl	%eax, %eax	# D.15660, tmp447
	addq	$2, %rax	#, tmp448
	movq	%rcx, (%rdx,%rax,8)	# D.15652, _226->elms
	.loc 1 1097 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.209
	movl	-24(%rbp), %edx	# nxt_out_edge, tmp449
	movslq	%edx, %rdx	# tmp449, D.15652
	salq	$4, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15658
	movl	12(%rax), %eax	# _251->next_out, tmp450
	movl	%eax, -24(%rbp)	# tmp450, nxt_out_edge
.L129:
	.loc 1 1089 0 discriminator 1
	movl	-4(%rbp), %eax	# fst_out_edge, tmp451
	cmpl	-24(%rbp), %eax	# nxt_out_edge, tmp451
	jne	.L131	#,
	.loc 1 1104 0
	movl	-16(%rbp), %eax	# nr_rgn_out_edges, tmp452
	subl	%eax, -20(%rbp)	# tmp452, nr_out_edges
	.loc 1 1105 0
	cmpl	$0, -16(%rbp)	#, nr_rgn_out_edges
	jle	.L132	#,
	.loc 1 1106 0
	movq	prob(%rip), %rax	# prob, prob.210
	movl	-36(%rbp), %edx	# bb, tmp453
	movslq	%edx, %rdx	# tmp453, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15653
	movq	prob(%rip), %rdx	# prob, prob.211
	movl	-36(%rbp), %ecx	# bb, tmp454
	movslq	%ecx, %rcx	# tmp454, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15653
	movss	(%rdx), %xmm0	# *_261, D.15661
	unpcklps	%xmm0, %xmm0	# D.15661, D.15661
	cvtps2pd	%xmm0, %xmm1	# D.15661, D.15662
	movq	prob(%rip), %rdx	# prob, prob.212
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.213
	movl	-8(%rbp), %esi	# pred, tmp455
	movslq	%esi, %rsi	# tmp455, D.15652
	salq	$2, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_268, D.15656
	movslq	%ecx, %rcx	# D.15656, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15653
	movss	(%rdx), %xmm0	# *_272, D.15661
	unpcklps	%xmm0, %xmm0	# D.15661, D.15661
	cvtps2pd	%xmm0, %xmm0	# D.15661, D.15662
	movsd	.LC8(%rip), %xmm2	#, tmp456
	mulsd	%xmm2, %xmm0	# tmp456, D.15662
	cvtsi2sd	-20(%rbp), %xmm2	# nr_out_edges, D.15662
	divsd	%xmm2, %xmm0	# D.15662, D.15662
	addsd	%xmm1, %xmm0	# D.15662, D.15662
	unpcklpd	%xmm0, %xmm0	# D.15662
	cvtpd2ps	%xmm0, %xmm0	# D.15662, D.15661
	movss	%xmm0, (%rax)	# D.15661, *_257
	jmp	.L133	#
.L132:
	.loc 1 1108 0
	movq	prob(%rip), %rax	# prob, prob.214
	movl	-36(%rbp), %edx	# bb, tmp457
	movslq	%edx, %rdx	# tmp457, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15653
	movq	prob(%rip), %rdx	# prob, prob.215
	movl	-36(%rbp), %ecx	# bb, tmp458
	movslq	%ecx, %rcx	# tmp458, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15653
	movss	(%rdx), %xmm2	# *_287, D.15661
	movq	prob(%rip), %rdx	# prob, prob.216
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.217
	movl	-8(%rbp), %esi	# pred, tmp459
	movslq	%esi, %rsi	# tmp459, D.15652
	salq	$2, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15657
	movl	(%rcx), %ecx	# *_293, D.15656
	movslq	%ecx, %rcx	# D.15656, D.15652
	salq	$2, %rcx	#, D.15652
	addq	%rcx, %rdx	# D.15652, D.15653
	movss	(%rdx), %xmm1	# *_297, D.15661
	cvtsi2ss	-20(%rbp), %xmm0	# nr_out_edges, D.15661
	divss	%xmm0, %xmm1	# D.15661, D.15661
	movaps	%xmm1, %xmm0	# D.15661, D.15661
	addss	%xmm2, %xmm0	# D.15661, D.15661
	movss	%xmm0, (%rax)	# D.15661, *_283
.L133:
	.loc 1 1109 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.218
	movl	-28(%rbp), %edx	# nxt_in_edge, tmp460
	movslq	%edx, %rdx	# tmp460, D.15652
	salq	$4, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15658
	movl	8(%rax), %eax	# _305->next_in, tmp461
	movl	%eax, -28(%rbp)	# tmp461, nxt_in_edge
	.loc 1 1111 0
	movl	-12(%rbp), %eax	# fst_in_edge, tmp462
	cmpl	-28(%rbp), %eax	# nxt_in_edge, tmp462
	jne	.L134	#,
	.loc 1 1113 0
	movq	dom(%rip), %rax	# dom, dom.219
	movl	-36(%rbp), %edx	# bb, tmp463
	movslq	%edx, %rdx	# tmp463, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15654
	movq	(%rax), %rdx	# *_310, D.15655
	movl	-36(%rbp), %eax	# bb, bb.220
	shrl	$6, %eax	#, D.15660
	movq	dom(%rip), %rcx	# dom, dom.221
	movl	-36(%rbp), %esi	# bb, tmp464
	movslq	%esi, %rsi	# tmp464, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rcx	# D.15652, D.15654
	movq	(%rcx), %rcx	# *_317, D.15655
	movl	%eax, %esi	# D.15660, tmp465
	addq	$2, %rsi	#, tmp466
	movq	(%rcx,%rsi,8), %rsi	# _318->elms, D.15652
	movl	-36(%rbp), %ecx	# bb, tmp467
	andl	$63, %ecx	#, D.15656
	movl	$1, %edi	#, tmp468
	salq	%cl, %rdi	# D.15656, D.15652
	movq	%rdi, %rcx	# D.15652, D.15652
	orq	%rsi, %rcx	# D.15652, D.15652
	movl	%eax, %eax	# D.15660, tmp469
	addq	$2, %rax	#, tmp470
	movq	%rcx, (%rdx,%rax,8)	# D.15652, _311->elms
	.loc 1 1114 0
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.222
	movl	-36(%rbp), %edx	# bb, tmp471
	movslq	%edx, %rdx	# tmp471, D.15652
	salq	$3, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15659
	movq	(%rax), %rdx	# *_326, D.15655
	movq	pot_split(%rip), %rax	# pot_split, pot_split.223
	movl	-36(%rbp), %ecx	# bb, tmp472
	movslq	%ecx, %rcx	# tmp472, D.15652
	salq	$3, %rcx	#, D.15652
	addq	%rcx, %rax	# D.15652, D.15659
	movq	(%rax), %rcx	# *_331, D.15655
	movq	pot_split(%rip), %rax	# pot_split, pot_split.224
	movl	-36(%rbp), %esi	# bb, tmp473
	movslq	%esi, %rsi	# tmp473, D.15652
	salq	$3, %rsi	#, D.15652
	addq	%rsi, %rax	# D.15652, D.15659
	movq	(%rax), %rax	# *_336, D.15655
	movq	%rcx, %rsi	# D.15655,
	movq	%rax, %rdi	# D.15655,
	call	sbitmap_difference	#
	.loc 1 1116 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.225
	cmpl	$1, %eax	#, sched_verbose.225
	jle	.L125	#,
	.loc 1 1118 0
	movq	prob(%rip), %rax	# prob, prob.226
	movl	-36(%rbp), %edx	# bb, tmp474
	movslq	%edx, %rdx	# tmp474, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15653
	movss	(%rax), %xmm0	# *_342, D.15661
	unpcklps	%xmm0, %xmm0	# D.15661, D.15661
	cvtps2pd	%xmm0, %xmm0	# D.15661, D.15662
	movsd	.LC9(%rip), %xmm1	#, tmp475
	mulsd	%xmm1, %xmm0	# tmp475, D.15662
	.loc 1 1117 0
	cvttsd2si	%xmm0, %esi	# D.15662, D.15656
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.227
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.228
	movl	-36(%rbp), %edx	# bb, tmp476
	addl	%ecx, %edx	# current_blocks.228, D.15656
	movslq	%edx, %rdx	# D.15656, D.15652
	salq	$2, %rdx	#, D.15652
	addq	%rdx, %rax	# D.15652, D.15657
	movl	(%rax), %ecx	# *_352, D.15656
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.229
	movl	-36(%rbp), %edx	# bb, tmp477
	movl	%esi, %r8d	# D.15656,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# sched_dump.229,
	movl	$0, %eax	#,
	call	fprintf	#
.L125:
	.loc 1 1119 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_dom_prob_ps, .-compute_dom_prob_ps
	.type	split_edges, @function
split_edges:
.LFB11:
	.loc 1 1131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# bb_src, bb_src
	movl	%esi, -24(%rbp)	# bb_trg, bb_trg
	movq	%rdx, -32(%rbp)	# bl, bl
	.loc 1 1132 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.230
	movl	-20(%rbp), %edx	# bb_src, tmp75
	movslq	%edx, %rdx	# tmp75, D.15664
	salq	$3, %rdx	#, D.15664
	addq	%rdx, %rax	# D.15664, D.15665
	movq	(%rax), %rax	# *_5, D.15666
	movl	(%rax), %eax	# _6->n_bits, D.15667
	movl	%eax, %edi	# D.15667,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp76, src
	.loc 1 1133 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.231
	movl	-20(%rbp), %edx	# bb_src, tmp77
	movslq	%edx, %rdx	# tmp77, D.15664
	salq	$3, %rdx	#, D.15664
	addq	%rdx, %rax	# D.15664, D.15665
	movq	(%rax), %rdx	# *_12, D.15666
	movq	-8(%rbp), %rax	# src, tmp78
	movq	%rdx, %rsi	# D.15666,
	movq	%rax, %rdi	# tmp78,
	call	sbitmap_copy	#
	.loc 1 1135 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.232
	movl	-24(%rbp), %edx	# bb_trg, tmp79
	movslq	%edx, %rdx	# tmp79, D.15664
	salq	$3, %rdx	#, D.15664
	addq	%rdx, %rax	# D.15664, D.15665
	movq	(%rax), %rdx	# *_18, D.15666
	movq	-8(%rbp), %rcx	# src, tmp80
	movq	-8(%rbp), %rax	# src, tmp81
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	sbitmap_difference	#
	.loc 1 1136 0
	movq	-32(%rbp), %rdx	# bl, tmp82
	movq	-8(%rbp), %rax	# src, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	extract_bitlst	#
	.loc 1 1137 0
	movq	-8(%rbp), %rax	# src, tmp84
	movq	%rax, %rdi	# tmp84,
	call	free	#
	.loc 1 1138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	split_edges, .-split_edges
	.type	compute_trg_info, @function
compute_trg_info:
.LFB12:
	.loc 1 1147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# trg, trg
	.loc 1 1154 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.233
	movl	-84(%rbp), %eax	# trg, tmp206
	movslq	%eax, %rdx	# tmp206, D.15668
	movq	%rdx, %rax	# D.15668, tmp207
	salq	$2, %rax	#, tmp207
	addq	%rdx, %rax	# D.15668, tmp207
	salq	$3, %rax	#, tmp208
	addq	%rcx, %rax	# candidate_table.233, tmp209
	movq	%rax, -48(%rbp)	# tmp209, sp
	.loc 1 1155 0
	movq	-48(%rbp), %rax	# sp, tmp210
	movb	$1, (%rax)	#, sp_13->is_valid
	.loc 1 1156 0
	movq	-48(%rbp), %rax	# sp, tmp211
	movb	$0, 1(%rax)	#, sp_13->is_speculative
	.loc 1 1157 0
	movq	-48(%rbp), %rax	# sp, tmp212
	movl	$100, 4(%rax)	#, sp_13->src_prob
	.loc 1 1159 0
	movl	-84(%rbp), %eax	# trg, tmp216
	addl	$1, %eax	#, tmp215
	movl	%eax, -72(%rbp)	# tmp215, i
	jmp	.L137	#
.L153:
	.loc 1 1161 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.234
	movl	-72(%rbp), %eax	# i, tmp217
	movslq	%eax, %rdx	# tmp217, D.15668
	movq	%rdx, %rax	# D.15668, tmp218
	salq	$2, %rax	#, tmp218
	addq	%rdx, %rax	# D.15668, tmp218
	salq	$3, %rax	#, tmp219
	addq	%rcx, %rax	# candidate_table.234, tmp220
	movq	%rax, -48(%rbp)	# tmp220, sp
	.loc 1 1163 0
	movq	dom(%rip), %rax	# dom, dom.235
	movl	-72(%rbp), %edx	# i, tmp221
	movslq	%edx, %rdx	# tmp221, D.15668
	salq	$3, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15669
	movq	(%rax), %rax	# *_23, D.15670
	movl	-84(%rbp), %edx	# trg, trg.236
	shrl	$6, %edx	#, D.15671
	movl	%edx, %edx	# D.15671, tmp222
	addq	$2, %rdx	#, tmp223
	movq	(%rax,%rdx,8), %rdx	# _24->elms, D.15668
	movl	-84(%rbp), %eax	# trg, tmp224
	andl	$63, %eax	#, D.15672
	movl	%eax, %ecx	# D.15672, tmp282
	shrq	%cl, %rdx	# tmp282, D.15668
	movq	%rdx, %rax	# D.15668, D.15668
	andl	$1, %eax	#, D.15673
	movl	%eax, %edx	# D.15673, D.15673
	movq	-48(%rbp), %rax	# sp, tmp225
	movb	%dl, (%rax)	# D.15673, sp_19->is_valid
	.loc 1 1164 0
	movq	-48(%rbp), %rax	# sp, tmp226
	movzbl	(%rax), %eax	# sp_19->is_valid, D.15673
	testb	%al, %al	# D.15673
	je	.L138	#,
	.loc 1 1166 0
	movq	prob(%rip), %rax	# prob, prob.237
	movl	-72(%rbp), %edx	# i, tmp227
	movslq	%edx, %rdx	# tmp227, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15674
	movss	(%rax), %xmm0	# *_36, D.15675
	movq	prob(%rip), %rax	# prob, prob.238
	movl	-84(%rbp), %edx	# trg, tmp228
	movslq	%edx, %rdx	# tmp228, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15674
	movss	(%rax), %xmm1	# *_41, D.15675
	divss	%xmm1, %xmm0	# D.15675, D.15675
	unpcklps	%xmm0, %xmm0	# D.15675, D.15675
	cvtps2pd	%xmm0, %xmm0	# D.15675, D.15676
	movsd	.LC9(%rip), %xmm1	#, tmp229
	mulsd	%xmm1, %xmm0	# tmp229, D.15676
	cvttsd2si	%xmm0, %edx	# D.15676, D.15672
	movq	-48(%rbp), %rax	# sp, tmp230
	movl	%edx, 4(%rax)	# D.15672, sp_19->src_prob
	.loc 1 1167 0
	movq	-48(%rbp), %rax	# sp, tmp231
	movl	4(%rax), %eax	# sp_19->src_prob, D.15672
	cmpl	$39, %eax	#, D.15672
	setg	%al	#, D.15677
	movl	%eax, %edx	# D.15677, D.15673
	movq	-48(%rbp), %rax	# sp, tmp232
	movb	%dl, (%rax)	# D.15673, sp_19->is_valid
.L138:
	.loc 1 1170 0
	movq	-48(%rbp), %rax	# sp, tmp233
	movzbl	(%rax), %eax	# sp_19->is_valid, D.15673
	testb	%al, %al	# D.15673
	je	.L139	#,
	.loc 1 1172 0
	leaq	-32(%rbp), %rdx	#, tmp234
	movl	-84(%rbp), %ecx	# trg, tmp235
	movl	-72(%rbp), %eax	# i, tmp236
	movl	%ecx, %esi	# tmp235,
	movl	%eax, %edi	# tmp236,
	call	split_edges	#
	.loc 1 1173 0
	movl	-24(%rbp), %eax	# el.nr_members, D.15672
	testl	%eax, %eax	# D.15672
	setne	%al	#, D.15677
	movl	%eax, %edx	# D.15677, D.15673
	movq	-48(%rbp), %rax	# sp, tmp237
	movb	%dl, 1(%rax)	# D.15673, sp_19->is_speculative
	.loc 1 1174 0
	movq	-48(%rbp), %rax	# sp, tmp238
	movzbl	1(%rax), %eax	# sp_19->is_speculative, D.15673
	testb	%al, %al	# D.15673
	je	.L139	#,
	.loc 1 1174 0 is_stmt 0 discriminator 1
	movl	flag_schedule_speculative(%rip), %eax	# flag_schedule_speculative, flag_schedule_speculative.239
	testl	%eax, %eax	# flag_schedule_speculative.239
	jne	.L139	#,
	.loc 1 1175 0 is_stmt 1
	movq	-48(%rbp), %rax	# sp, tmp239
	movb	$0, (%rax)	#, sp_19->is_valid
.L139:
	.loc 1 1178 0
	movq	-48(%rbp), %rax	# sp, tmp240
	movzbl	(%rax), %eax	# sp_19->is_valid, D.15673
	testb	%al, %al	# D.15673
	je	.L140	#,
.LBB14:
	.loc 1 1184 0
	movq	bblst_table(%rip), %rax	# bblst_table, bblst_table.240
	movl	bblst_last(%rip), %edx	# bblst_last, bblst_last.241
	movslq	%edx, %rdx	# bblst_last.241, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rax, %rdx	# bblst_table.240, D.15678
	movq	-48(%rbp), %rax	# sp, tmp241
	movq	%rdx, 8(%rax)	# D.15678, sp_19->split_bbs.first_member
	.loc 1 1185 0
	movl	-24(%rbp), %edx	# el.nr_members, D.15672
	movq	-48(%rbp), %rax	# sp, tmp242
	movl	%edx, 16(%rax)	# D.15672, sp_19->split_bbs.nr_members
	.loc 1 1186 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L141	#
.L142:
	.loc 1 1187 0 discriminator 2
	movq	bblst_table(%rip), %rax	# bblst_table, bblst_table.242
	movl	bblst_last(%rip), %edx	# bblst_last, bblst_last.243
	movslq	%edx, %rdx	# bblst_last.243, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rax, %rdx	# bblst_table.242, D.15678
	.loc 1 1188 0 discriminator 2
	movq	edge_table(%rip), %rax	# edge_table, edge_table.244
	movq	rgn_edges(%rip), %rcx	# rgn_edges, rgn_edges.245
	movq	-32(%rbp), %rsi	# el.first_member, D.15678
	movl	-68(%rbp), %edi	# j, tmp243
	movslq	%edi, %rdi	# tmp243, D.15668
	salq	$2, %rdi	#, D.15668
	addq	%rdi, %rsi	# D.15668, D.15678
	movl	(%rsi), %esi	# *_75, D.15672
	movslq	%esi, %rsi	# D.15672, D.15668
	salq	$2, %rsi	#, D.15668
	addq	%rsi, %rcx	# D.15668, D.15678
	movl	(%rcx), %ecx	# *_79, D.15672
	movslq	%ecx, %rcx	# D.15672, D.15668
	salq	$4, %rcx	#, D.15668
	addq	%rcx, %rax	# D.15668, D.15679
	movl	4(%rax), %eax	# _83->to_block, D.15672
	.loc 1 1187 0 discriminator 2
	movl	%eax, (%rdx)	# D.15672, *_69
	.loc 1 1186 0 discriminator 2
	movl	bblst_last(%rip), %eax	# bblst_last, bblst_last.246
	addl	$1, %eax	#, bblst_last.247
	movl	%eax, bblst_last(%rip)	# bblst_last.247, bblst_last
	addl	$1, -68(%rbp)	#, j
.L141:
	.loc 1 1186 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# el.nr_members, D.15672
	cmpl	-68(%rbp), %eax	# j, D.15672
	jg	.L142	#,
	.loc 1 1189 0 is_stmt 1
	movq	bblst_table(%rip), %rax	# bblst_table, bblst_table.248
	movl	bblst_last(%rip), %edx	# bblst_last, bblst_last.249
	movslq	%edx, %rdx	# bblst_last.249, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rax, %rdx	# bblst_table.248, D.15678
	movq	-48(%rbp), %rax	# sp, tmp244
	movq	%rdx, 24(%rax)	# D.15678, sp_19->update_bbs.first_member
	.loc 1 1197 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.250
	cltq
	leaq	15(%rax), %rdx	#, tmp245
	movl	$16, %eax	#, tmp279
	subq	$1, %rax	#, tmp246
	addq	%rdx, %rax	# tmp245, tmp247
	movl	$16, %ebx	#, tmp280
	movl	$0, %edx	#, tmp250
	divq	%rbx	# tmp280
	imulq	$16, %rax, %rax	#, tmp249, tmp251
	subq	%rax, %rsp	# tmp251,
	movq	%rsp, %rax	#, tmp252
	addq	$15, %rax	#, tmp253
	shrq	$4, %rax	#, tmp254
	salq	$4, %rax	#, tmp255
	movq	%rax, -40(%rbp)	# tmp255, update_blocks
	.loc 1 1198 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.251
	movslq	%eax, %rdx	# n_basic_blocks.251, D.15668
	movq	-40(%rbp), %rax	# update_blocks, tmp256
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	memset	#
	.loc 1 1200 0
	movl	$0, -76(%rbp)	#, update_idx
	.loc 1 1201 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L143	#
.L150:
	.loc 1 1203 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.252
	movq	rgn_edges(%rip), %rdx	# rgn_edges, rgn_edges.253
	movq	-32(%rbp), %rcx	# el.first_member, D.15678
	movl	-68(%rbp), %esi	# j, tmp257
	movslq	%esi, %rsi	# tmp257, D.15668
	salq	$2, %rsi	#, D.15668
	addq	%rsi, %rcx	# D.15668, D.15678
	movl	(%rcx), %ecx	# *_106, D.15672
	movslq	%ecx, %rcx	# D.15672, D.15668
	salq	$2, %rcx	#, D.15668
	addq	%rcx, %rdx	# D.15668, D.15678
	movl	(%rdx), %edx	# *_110, D.15672
	movslq	%edx, %rdx	# D.15672, D.15668
	salq	$4, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15679
	movl	(%rax), %eax	# _114->from_block, tmp258
	movl	%eax, -56(%rbp)	# tmp258, check_block
	.loc 1 1204 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.254
	movl	-56(%rbp), %edx	# check_block, tmp259
	movslq	%edx, %rdx	# tmp259, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15678
	movl	(%rax), %eax	# *_119, tmp260
	movl	%eax, -60(%rbp)	# tmp260, nxt_edge
	movl	-60(%rbp), %eax	# nxt_edge, tmp261
	movl	%eax, -52(%rbp)	# tmp261, fst_edge
.L149:
	.loc 1 1207 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.255
	movl	-60(%rbp), %edx	# nxt_edge, tmp262
	movslq	%edx, %rdx	# tmp262, D.15668
	salq	$4, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15679
	movl	4(%rax), %eax	# _125->to_block, D.15672
	movslq	%eax, %rdx	# D.15672, D.15680
	movq	-40(%rbp), %rax	# update_blocks, tmp263
	addq	%rdx, %rax	# D.15680, D.15681
	movzbl	(%rax), %eax	# *_128, D.15673
	testb	%al, %al	# D.15673
	jne	.L144	#,
	.loc 1 1209 0
	movl	$0, -64(%rbp)	#, k
	jmp	.L145	#
.L148:
	.loc 1 1210 0
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.256
	movl	-60(%rbp), %edx	# nxt_edge, tmp264
	movslq	%edx, %rdx	# tmp264, D.15668
	salq	$2, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15678
	movl	(%rax), %edx	# *_135, D.15672
	movq	-32(%rbp), %rax	# el.first_member, D.15678
	movl	-64(%rbp), %ecx	# k, tmp265
	movslq	%ecx, %rcx	# tmp265, D.15668
	salq	$2, %rcx	#, D.15668
	addq	%rcx, %rax	# D.15668, D.15678
	movl	(%rax), %eax	# *_140, D.15672
	cmpl	%eax, %edx	# D.15672, D.15672
	jne	.L146	#,
	.loc 1 1211 0
	jmp	.L147	#
.L146:
	.loc 1 1209 0
	addl	$1, -64(%rbp)	#, k
.L145:
	.loc 1 1209 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# el.nr_members, D.15672
	cmpl	-64(%rbp), %eax	# k, D.15672
	jg	.L148	#,
.L147:
	.loc 1 1213 0 is_stmt 1
	movl	-24(%rbp), %eax	# el.nr_members, D.15672
	cmpl	-64(%rbp), %eax	# k, D.15672
	jg	.L144	#,
	.loc 1 1215 0
	movq	bblst_table(%rip), %rcx	# bblst_table, bblst_table.257
	movl	bblst_last(%rip), %eax	# bblst_last, bblst_last.258
	leal	1(%rax), %edx	#, bblst_last.260
	movl	%edx, bblst_last(%rip)	# bblst_last.260, bblst_last
	cltq
	salq	$2, %rax	#, D.15668
	leaq	(%rcx,%rax), %rdx	#, D.15678
	movq	edge_table(%rip), %rax	# edge_table, edge_table.261
	movl	-60(%rbp), %ecx	# nxt_edge, tmp266
	movslq	%ecx, %rcx	# tmp266, D.15668
	salq	$4, %rcx	#, D.15668
	addq	%rcx, %rax	# D.15668, D.15679
	movl	4(%rax), %eax	# _154->to_block, D.15672
	movl	%eax, (%rdx)	# D.15672, *_150
	.loc 1 1216 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.262
	movl	-60(%rbp), %edx	# nxt_edge, tmp267
	movslq	%edx, %rdx	# tmp267, D.15668
	salq	$4, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15679
	movl	4(%rax), %eax	# _159->to_block, D.15672
	movslq	%eax, %rdx	# D.15672, D.15680
	movq	-40(%rbp), %rax	# update_blocks, tmp268
	addq	%rdx, %rax	# D.15680, D.15681
	movb	$1, (%rax)	#, *_162
	.loc 1 1217 0
	addl	$1, -76(%rbp)	#, update_idx
.L144:
	.loc 1 1221 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.263
	movl	-60(%rbp), %edx	# nxt_edge, tmp269
	movslq	%edx, %rdx	# tmp269, D.15668
	salq	$4, %rdx	#, D.15668
	addq	%rdx, %rax	# D.15668, D.15679
	movl	12(%rax), %eax	# _167->next_out, tmp270
	movl	%eax, -60(%rbp)	# tmp270, nxt_edge
	.loc 1 1223 0
	movl	-52(%rbp), %eax	# fst_edge, tmp271
	cmpl	-60(%rbp), %eax	# nxt_edge, tmp271
	jne	.L149	#,
	.loc 1 1201 0
	addl	$1, -68(%rbp)	#, j
.L143:
	.loc 1 1201 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# el.nr_members, D.15672
	cmpl	-68(%rbp), %eax	# j, D.15672
	jg	.L150	#,
	.loc 1 1225 0 is_stmt 1
	movq	-48(%rbp), %rax	# sp, tmp272
	movl	-76(%rbp), %edx	# update_idx, tmp273
	movl	%edx, 32(%rax)	# tmp273, sp_19->update_bbs.nr_members
	.loc 1 1228 0
	movl	bblst_last(%rip), %edx	# bblst_last, bblst_last.264
	movl	bblst_size(%rip), %eax	# bblst_size, bblst_size.265
	cmpl	%eax, %edx	# bblst_size.265, bblst_last.264
	jle	.L151	#,
	.loc 1 1229 0
	movl	$__FUNCTION__.11149, %edx	#,
	movl	$1229, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L151:
.LBE14:
	jmp	.L152	#
.L140:
	.loc 1 1233 0
	movq	-48(%rbp), %rax	# sp, tmp274
	movl	$0, 32(%rax)	#, sp_19->update_bbs.nr_members
	movq	-48(%rbp), %rax	# sp, tmp275
	movl	32(%rax), %edx	# sp_19->update_bbs.nr_members, D.15672
	movq	-48(%rbp), %rax	# sp, tmp276
	movl	%edx, 16(%rax)	# D.15672, sp_19->split_bbs.nr_members
	.loc 1 1235 0
	movq	-48(%rbp), %rax	# sp, tmp277
	movb	$0, 1(%rax)	#, sp_19->is_speculative
	.loc 1 1236 0
	movq	-48(%rbp), %rax	# sp, tmp278
	movl	$0, 4(%rax)	#, sp_19->src_prob
.L152:
	.loc 1 1159 0
	addl	$1, -72(%rbp)	#, i
.L137:
	.loc 1 1159 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.266
	cmpl	%eax, -72(%rbp)	# current_nr_blocks.266, i
	jl	.L153	#,
	.loc 1 1239 0 is_stmt 1
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	compute_trg_info, .-compute_trg_info
	.section	.rodata
.LC11:
	.string	"src b %d bb %d speculative \n"
.LC12:
	.string	"split path: "
.LC13:
	.string	" %d "
.LC14:
	.string	"update path: "
.LC15:
	.string	" src %d equivalent\n"
	.text
	.globl	debug_candidate
	.type	debug_candidate, @function
debug_candidate:
.LFB13:
	.loc 1 1246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# i, i
	.loc 1 1247 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.267
	movl	-20(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, D.15683
	movq	%rdx, %rax	# D.15683, tmp118
	salq	$2, %rax	#, tmp118
	addq	%rdx, %rax	# D.15683, tmp118
	salq	$3, %rax	#, tmp119
	addq	%rcx, %rax	# candidate_table.267, D.15684
	movzbl	(%rax), %eax	# _7->is_valid, D.15685
	testb	%al, %al	# D.15685
	jne	.L155	#,
	.loc 1 1248 0
	jmp	.L154	#
.L155:
	.loc 1 1250 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.268
	movl	-20(%rbp), %eax	# i, tmp120
	movslq	%eax, %rdx	# tmp120, D.15683
	movq	%rdx, %rax	# D.15683, tmp121
	salq	$2, %rax	#, tmp121
	addq	%rdx, %rax	# D.15683, tmp121
	salq	$3, %rax	#, tmp122
	addq	%rcx, %rax	# candidate_table.268, D.15684
	movzbl	1(%rax), %eax	# _12->is_speculative, D.15685
	testb	%al, %al	# D.15685
	je	.L157	#,
.LBB15:
	.loc 1 1253 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.269
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.270
	movl	-20(%rbp), %edx	# i, tmp123
	addl	%ecx, %edx	# current_blocks.270, D.15686
	movslq	%edx, %rdx	# D.15686, D.15683
	salq	$2, %rdx	#, D.15683
	addq	%rdx, %rax	# D.15683, D.15687
	movl	(%rax), %edx	# *_19, D.15686
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.271
	movl	-20(%rbp), %ecx	# i, tmp124
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# sched_dump.271,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1255 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.272
	movq	%rax, %rcx	# sched_dump.272,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 1256 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L158	#
.L159:
.LBB16:
	.loc 1 1258 0 discriminator 2
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.273
	movl	-20(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, D.15683
	movq	%rdx, %rax	# D.15683, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# D.15683, tmp126
	salq	$3, %rax	#, tmp127
	addq	%rcx, %rax	# candidate_table.273, D.15684
	movq	8(%rax), %rax	# _32->split_bbs.first_member, D.15687
	movl	-12(%rbp), %edx	# j, tmp128
	movslq	%edx, %rdx	# tmp128, D.15683
	salq	$2, %rdx	#, D.15683
	addq	%rdx, %rax	# D.15683, D.15687
	movl	(%rax), %eax	# *_36, tmp129
	movl	%eax, -8(%rbp)	# tmp129, b
	.loc 1 1260 0 discriminator 2
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.274
	movl	-8(%rbp), %edx	# b, tmp130
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# sched_dump.274,
	movl	$0, %eax	#,
	call	fprintf	#
.LBE16:
	.loc 1 1256 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L158:
	.loc 1 1256 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.275
	movl	-20(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, D.15683
	movq	%rdx, %rax	# D.15683, tmp132
	salq	$2, %rax	#, tmp132
	addq	%rdx, %rax	# D.15683, tmp132
	salq	$3, %rax	#, tmp133
	addq	%rcx, %rax	# candidate_table.275, D.15684
	movl	16(%rax), %eax	# _27->split_bbs.nr_members, D.15686
	cmpl	-12(%rbp), %eax	# j, D.15686
	jg	.L159	#,
	.loc 1 1262 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.276
	movq	%rax, %rsi	# sched_dump.276,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 1264 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.277
	movq	%rax, %rcx	# sched_dump.277,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 1265 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L160	#
.L161:
.LBB17:
	.loc 1 1267 0 discriminator 2
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.278
	movl	-20(%rbp), %eax	# i, tmp134
	movslq	%eax, %rdx	# tmp134, D.15683
	movq	%rdx, %rax	# D.15683, tmp135
	salq	$2, %rax	#, tmp135
	addq	%rdx, %rax	# D.15683, tmp135
	salq	$3, %rax	#, tmp136
	addq	%rcx, %rax	# candidate_table.278, D.15684
	movq	24(%rax), %rax	# _51->update_bbs.first_member, D.15687
	movl	-12(%rbp), %edx	# j, tmp137
	movslq	%edx, %rdx	# tmp137, D.15683
	salq	$2, %rdx	#, D.15683
	addq	%rdx, %rax	# D.15683, D.15687
	movl	(%rax), %eax	# *_55, tmp138
	movl	%eax, -4(%rbp)	# tmp138, b
	.loc 1 1269 0 discriminator 2
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.279
	movl	-4(%rbp), %edx	# b, tmp139
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# sched_dump.279,
	movl	$0, %eax	#,
	call	fprintf	#
.LBE17:
	.loc 1 1265 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L160:
	.loc 1 1265 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.280
	movl	-20(%rbp), %eax	# i, tmp140
	movslq	%eax, %rdx	# tmp140, D.15683
	movq	%rdx, %rax	# D.15683, tmp141
	salq	$2, %rax	#, tmp141
	addq	%rdx, %rax	# D.15683, tmp141
	salq	$3, %rax	#, tmp142
	addq	%rcx, %rax	# candidate_table.280, D.15684
	movl	32(%rax), %eax	# _46->update_bbs.nr_members, D.15686
	cmpl	-12(%rbp), %eax	# j, D.15686
	jg	.L161	#,
	.loc 1 1271 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.281
	movq	%rax, %rsi	# sched_dump.281,
	movl	$10, %edi	#,
	call	fputc	#
.LBE15:
	jmp	.L154	#
.L157:
	.loc 1 1275 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.282
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.283
	movl	-20(%rbp), %edx	# i, tmp143
	addl	%ecx, %edx	# current_blocks.283, D.15686
	movslq	%edx, %rdx	# D.15686, D.15683
	salq	$2, %rdx	#, D.15683
	addq	%rdx, %rax	# D.15683, D.15687
	movl	(%rax), %edx	# *_65, D.15686
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.284
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# sched_dump.284,
	movl	$0, %eax	#,
	call	fprintf	#
.L154:
	.loc 1 1277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	debug_candidate, .-debug_candidate
	.section	.rodata
	.align 8
.LC16:
	.string	"----------- candidate table: target: b=%d bb=%d ---\n"
	.text
	.globl	debug_candidates
	.type	debug_candidates, @function
debug_candidates:
.LFB14:
	.loc 1 1284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# trg, trg
	.loc 1 1288 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.285
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.286
	movl	-20(%rbp), %edx	# trg, tmp68
	addl	%ecx, %edx	# current_blocks.286, D.15693
	movslq	%edx, %rdx	# D.15693, D.15694
	salq	$2, %rdx	#, D.15694
	addq	%rdx, %rax	# D.15694, D.15695
	.loc 1 1287 0
	movl	(%rax), %edx	# *_8, D.15693
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.287
	movl	-20(%rbp), %ecx	# trg, tmp69
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# sched_dump.287,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1289 0
	movl	-20(%rbp), %eax	# trg, tmp73
	addl	$1, %eax	#, tmp72
	movl	%eax, -4(%rbp)	# tmp72, i
	jmp	.L163	#
.L164:
	.loc 1 1290 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp74
	movl	%eax, %edi	# tmp74,
	call	debug_candidate	#
	.loc 1 1289 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L163:
	.loc 1 1289 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.288
	cmpl	%eax, -4(%rbp)	# current_nr_blocks.288, i
	jl	.L164	#,
	.loc 1 1291 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	debug_candidates, .-debug_candidates
	.type	check_live_1, @function
check_live_1:
.LFB15:
	.loc 1 1302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# src, src
	movq	%rsi, -64(%rbp)	# x, x
	.loc 1 1305 0
	movq	-64(%rbp), %rax	# x, tmp143
	movq	8(%rax), %rax	# x_15(D)->fld[0].rtx, tmp144
	movq	%rax, -24(%rbp)	# tmp144, reg
	.loc 1 1307 0
	cmpq	$0, -24(%rbp)	#, reg
	jne	.L166	#,
	.loc 1 1308 0
	movl	$1, %eax	#, D.15697
	jmp	.L167	#
.L166:
	.loc 1 1310 0
	jmp	.L168	#
.L169:
	.loc 1 1313 0
	movq	-24(%rbp), %rax	# reg, tmp145
	movq	8(%rax), %rax	# reg_3->fld[0].rtx, tmp146
	movq	%rax, -24(%rbp)	# tmp146, reg
.L168:
	.loc 1 1310 0 discriminator 1
	movq	-24(%rbp), %rax	# reg, tmp147
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$63, %ax	#, D.15698
	je	.L169	#,
	.loc 1 1310 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp148
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$133, %ax	#, D.15698
	je	.L169	#,
	.loc 1 1311 0 is_stmt 1
	movq	-24(%rbp), %rax	# reg, tmp149
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$132, %ax	#, D.15698
	je	.L169	#,
	.loc 1 1312 0
	movq	-24(%rbp), %rax	# reg, tmp150
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$64, %ax	#, D.15698
	je	.L169	#,
	.loc 1 1315 0
	movq	-24(%rbp), %rax	# reg, tmp151
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$39, %ax	#, D.15698
	jne	.L170	#,
.LBB18:
	.loc 1 1319 0
	movq	-24(%rbp), %rax	# reg, tmp152
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15699
	movl	(%rax), %eax	# _23->num_elem, D.15697
	subl	$1, %eax	#, tmp153
	movl	%eax, -44(%rbp)	# tmp153, i
	jmp	.L171	#
.L173:
	.loc 1 1320 0
	movq	-24(%rbp), %rax	# reg, tmp154
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15699
	movl	-44(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, tmp155
	movq	8(%rax,%rdx,8), %rax	# _26->elem, D.15700
	movq	8(%rax), %rax	# _27->fld[0].rtx, D.15700
	testq	%rax, %rax	# D.15700
	je	.L172	#,
	.loc 1 1321 0
	movq	-24(%rbp), %rax	# reg, tmp157
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15699
	movl	-44(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, tmp158
	movq	8(%rax,%rdx,8), %rax	# _29->elem, D.15700
	movq	8(%rax), %rdx	# _30->fld[0].rtx, D.15700
	movl	-52(%rbp), %eax	# src, tmp160
	movq	%rdx, %rsi	# D.15700,
	movl	%eax, %edi	# tmp160,
	call	check_live_1	#
	testl	%eax, %eax	# D.15697
	je	.L172	#,
	.loc 1 1322 0
	movl	$1, %eax	#, D.15697
	jmp	.L167	#
.L172:
	.loc 1 1319 0
	subl	$1, -44(%rbp)	#, i
.L171:
	.loc 1 1319 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L173	#,
	.loc 1 1324 0 is_stmt 1
	movl	$0, %eax	#, D.15697
	jmp	.L167	#
.L170:
.LBE18:
	.loc 1 1327 0
	movq	-24(%rbp), %rax	# reg, tmp161
	movzwl	(%rax), %eax	# reg_3->code, D.15698
	cmpw	$61, %ax	#, D.15698
	je	.L174	#,
	.loc 1 1328 0
	movl	$1, %eax	#, D.15697
	jmp	.L167	#
.L174:
	.loc 1 1330 0
	movq	-24(%rbp), %rax	# reg, tmp162
	movl	8(%rax), %eax	# reg_3->fld[0].rtuint, D.15701
	movl	%eax, -36(%rbp)	# D.15701, regno
	.loc 1 1332 0
	cmpl	$52, -36(%rbp)	#, regno
	jg	.L175	#,
	.loc 1 1332 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# regno, tmp164
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.15702
	testb	%al, %al	# D.15702
	je	.L175	#,
	.loc 1 1335 0 is_stmt 1
	movl	$0, %eax	#, D.15697
	jmp	.L167	#
.L175:
	.loc 1 1339 0
	cmpl	$52, -36(%rbp)	#, regno
	jg	.L176	#,
.LBB19:
	.loc 1 1342 0
	cmpl	$7, -36(%rbp)	#, regno
	jle	.L177	#,
	.loc 1 1342 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jle	.L178	#,
.L177:
	.loc 1 1342 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jle	.L179	#,
	.loc 1 1342 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L178	#,
.L179:
	.loc 1 1342 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jle	.L180	#,
	.loc 1 1342 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jle	.L178	#,
.L180:
	.loc 1 1342 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L181	#,
	.loc 1 1342 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	jg	.L181	#,
.L178:
	movq	-24(%rbp), %rax	# reg, tmp165
	movzbl	2(%rax), %eax	# reg_3->mode, D.15703
	movzbl	%al, %eax	# D.15703, D.15697
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15704
	cmpl	$5, %eax	#, D.15704
	je	.L182	#,
	.loc 1 1342 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp167
	movzbl	2(%rax), %eax	# reg_3->mode, D.15703
	movzbl	%al, %eax	# D.15703, D.15697
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15704
	cmpl	$6, %eax	#, D.15704
	jne	.L183	#,
.L182:
	.loc 1 1342 0 discriminator 1
	movl	$2, %eax	#, iftmp.290
	jmp	.L184	#
.L183:
	movl	$1, %eax	#, iftmp.290
.L184:
	.loc 1 1342 0 discriminator 3
	jmp	.L185	#
.L181:
	.loc 1 1342 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp169
	movzbl	2(%rax), %eax	# reg_3->mode, D.15703
	cmpb	$18, %al	#, D.15703
	jne	.L186	#,
	.loc 1 1342 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.293
	andl	$33554432, %eax	#, D.15697
	testl	%eax, %eax	# D.15697
	je	.L187	#,
	movl	$2, %eax	#, iftmp.292
	jmp	.L185	#
.L187:
	.loc 1 1342 0 discriminator 2
	movl	$3, %eax	#, iftmp.292
	jmp	.L185	#
.L186:
	movq	-24(%rbp), %rax	# reg, tmp170
	movzbl	2(%rax), %eax	# reg_3->mode, D.15703
	cmpb	$24, %al	#, D.15703
	jne	.L190	#,
	.loc 1 1342 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.296
	andl	$33554432, %eax	#, D.15697
	testl	%eax, %eax	# D.15697
	je	.L191	#,
	movl	$4, %eax	#, iftmp.295
	jmp	.L185	#
.L191:
	.loc 1 1342 0 discriminator 2
	movl	$6, %eax	#, iftmp.295
	jmp	.L185	#
.L190:
	movq	-24(%rbp), %rax	# reg, tmp171
	movzbl	2(%rax), %eax	# reg_3->mode, D.15703
	movzbl	%al, %eax	# D.15703, D.15697
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15703
	movzbl	%al, %edx	# D.15703, D.15697
	movl	target_flags(%rip), %eax	# target_flags, target_flags.298
	andl	$33554432, %eax	#, D.15697
	testl	%eax, %eax	# D.15697
	je	.L194	#,
	.loc 1 1342 0 discriminator 1
	movl	$8, %eax	#, iftmp.297
	jmp	.L195	#
.L194:
	.loc 1 1342 0 discriminator 2
	movl	$4, %eax	#, iftmp.297
.L195:
	.loc 1 1342 0 discriminator 3
	addl	%edx, %eax	# D.15697, D.15697
	subl	$1, %eax	#, D.15697
	movl	target_flags(%rip), %edx	# target_flags, target_flags.300
	andl	$33554432, %edx	#, D.15697
	testl	%edx, %edx	# D.15697
	je	.L196	#,
	.loc 1 1342 0 discriminator 1
	movl	$8, %ebx	#, iftmp.299
	jmp	.L197	#
.L196:
	.loc 1 1342 0 discriminator 2
	movl	$4, %ebx	#, iftmp.299
.L197:
	.loc 1 1342 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.299
.L185:
	movl	%eax, -40(%rbp)	# iftmp.289, j
	.loc 1 1343 0 is_stmt 1 discriminator 3
	jmp	.L198	#
.L202:
	.loc 1 1345 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L199	#
.L201:
.LBB20:
	.loc 1 1347 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.301
	movl	-52(%rbp), %eax	# src, tmp175
	movslq	%eax, %rdx	# tmp175, D.15705
	movq	%rdx, %rax	# D.15705, tmp176
	salq	$2, %rax	#, tmp176
	addq	%rdx, %rax	# D.15705, tmp176
	salq	$3, %rax	#, tmp177
	addq	%rcx, %rax	# candidate_table.301, D.15706
	movq	8(%rax), %rax	# _92->split_bbs.first_member, D.15707
	movl	-48(%rbp), %edx	# i, tmp178
	movslq	%edx, %rdx	# tmp178, D.15705
	salq	$2, %rdx	#, D.15705
	addq	%rdx, %rax	# D.15705, D.15707
	movl	(%rax), %eax	# *_96, tmp179
	movl	%eax, -32(%rbp)	# tmp179, b
	.loc 1 1349 0
	movl	-40(%rbp), %eax	# j, tmp180
	movl	-36(%rbp), %edx	# regno, tmp181
	addl	%eax, %edx	# tmp180, D.15697
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.302
	movl	-32(%rbp), %ecx	# b, tmp183
	movslq	%ecx, %rcx	# tmp183, tmp182
	addq	$4, %rcx	#, tmp184
	movq	(%rax,%rcx,8), %rax	# basic_block_info.302_99->data.bb, D.15708
	movq	64(%rax), %rax	# _100->global_live_at_start, D.15709
	movl	%edx, %esi	# D.15697,
	movq	%rax, %rdi	# D.15709,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.15697
	je	.L200	#,
	.loc 1 1352 0
	movl	$0, %eax	#, D.15697
	jmp	.L167	#
.L200:
.LBE20:
	.loc 1 1345 0
	addl	$1, -48(%rbp)	#, i
.L199:
	.loc 1 1345 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.303
	movl	-52(%rbp), %eax	# src, tmp185
	movslq	%eax, %rdx	# tmp185, D.15705
	movq	%rdx, %rax	# D.15705, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.15705, tmp186
	salq	$3, %rax	#, tmp187
	addq	%rcx, %rax	# candidate_table.303, D.15706
	movl	16(%rax), %eax	# _87->split_bbs.nr_members, D.15697
	cmpl	-48(%rbp), %eax	# i, D.15697
	jg	.L201	#,
.L198:
	.loc 1 1343 0 is_stmt 1 discriminator 1
	subl	$1, -40(%rbp)	#, j
	cmpl	$0, -40(%rbp)	#, j
	jns	.L202	#,
.LBE19:
	jmp	.L203	#
.L176:
	.loc 1 1360 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L204	#
.L206:
.LBB21:
	.loc 1 1362 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.304
	movl	-52(%rbp), %eax	# src, tmp188
	movslq	%eax, %rdx	# tmp188, D.15705
	movq	%rdx, %rax	# D.15705, tmp189
	salq	$2, %rax	#, tmp189
	addq	%rdx, %rax	# D.15705, tmp189
	salq	$3, %rax	#, tmp190
	addq	%rcx, %rax	# candidate_table.304, D.15706
	movq	8(%rax), %rax	# _114->split_bbs.first_member, D.15707
	movl	-48(%rbp), %edx	# i, tmp191
	movslq	%edx, %rdx	# tmp191, D.15705
	salq	$2, %rdx	#, D.15705
	addq	%rdx, %rax	# D.15705, D.15707
	movl	(%rax), %eax	# *_118, tmp192
	movl	%eax, -28(%rbp)	# tmp192, b
	.loc 1 1364 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.305
	movl	-28(%rbp), %edx	# b, tmp194
	movslq	%edx, %rdx	# tmp194, tmp193
	addq	$4, %rdx	#, tmp195
	movq	(%rax,%rdx,8), %rax	# basic_block_info.305_120->data.bb, D.15708
	movq	64(%rax), %rax	# _121->global_live_at_start, D.15709
	movl	-36(%rbp), %edx	# regno, tmp196
	movl	%edx, %esi	# tmp196,
	movq	%rax, %rdi	# D.15709,
	call	bitmap_bit_p	#
	testl	%eax, %eax	# D.15697
	je	.L205	#,
	.loc 1 1366 0
	movl	$0, %eax	#, D.15697
	jmp	.L167	#
.L205:
.LBE21:
	.loc 1 1360 0
	addl	$1, -48(%rbp)	#, i
.L204:
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.306
	movl	-52(%rbp), %eax	# src, tmp197
	movslq	%eax, %rdx	# tmp197, D.15705
	movq	%rdx, %rax	# D.15705, tmp198
	salq	$2, %rax	#, tmp198
	addq	%rdx, %rax	# D.15705, tmp198
	salq	$3, %rax	#, tmp199
	addq	%rcx, %rax	# candidate_table.306, D.15706
	movl	16(%rax), %eax	# _109->split_bbs.nr_members, D.15697
	cmpl	-48(%rbp), %eax	# i, D.15697
	jg	.L206	#,
.L203:
	.loc 1 1372 0 is_stmt 1
	movl	$1, %eax	#, D.15697
.L167:
	.loc 1 1373 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	check_live_1, .-check_live_1
	.type	update_live_1, @function
update_live_1:
.LFB16:
	.loc 1 1382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# src, src
	movq	%rsi, -64(%rbp)	# x, x
	.loc 1 1385 0
	movq	-64(%rbp), %rax	# x, tmp138
	movq	8(%rax), %rax	# x_14(D)->fld[0].rtx, tmp139
	movq	%rax, -24(%rbp)	# tmp139, reg
	.loc 1 1387 0
	cmpq	$0, -24(%rbp)	#, reg
	jne	.L208	#,
	.loc 1 1388 0
	jmp	.L207	#
.L208:
	.loc 1 1390 0
	jmp	.L210	#
.L211:
	.loc 1 1393 0
	movq	-24(%rbp), %rax	# reg, tmp140
	movq	8(%rax), %rax	# reg_3->fld[0].rtx, tmp141
	movq	%rax, -24(%rbp)	# tmp141, reg
.L210:
	.loc 1 1390 0 discriminator 1
	movq	-24(%rbp), %rax	# reg, tmp142
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$63, %ax	#, D.15710
	je	.L211	#,
	.loc 1 1390 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp143
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$133, %ax	#, D.15710
	je	.L211	#,
	.loc 1 1391 0 is_stmt 1
	movq	-24(%rbp), %rax	# reg, tmp144
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$132, %ax	#, D.15710
	je	.L211	#,
	.loc 1 1392 0
	movq	-24(%rbp), %rax	# reg, tmp145
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$64, %ax	#, D.15710
	je	.L211	#,
	.loc 1 1395 0
	movq	-24(%rbp), %rax	# reg, tmp146
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$39, %ax	#, D.15710
	jne	.L212	#,
.LBB22:
	.loc 1 1399 0
	movq	-24(%rbp), %rax	# reg, tmp147
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15711
	movl	(%rax), %eax	# _21->num_elem, D.15712
	subl	$1, %eax	#, tmp148
	movl	%eax, -44(%rbp)	# tmp148, i
	jmp	.L213	#
.L215:
	.loc 1 1400 0
	movq	-24(%rbp), %rax	# reg, tmp149
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15711
	movl	-44(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, tmp150
	movq	8(%rax,%rdx,8), %rax	# _24->elem, D.15713
	movq	8(%rax), %rax	# _25->fld[0].rtx, D.15713
	testq	%rax, %rax	# D.15713
	je	.L214	#,
	.loc 1 1401 0
	movq	-24(%rbp), %rax	# reg, tmp152
	movq	8(%rax), %rax	# reg_3->fld[0].rtvec, D.15711
	movl	-44(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	movq	8(%rax,%rdx,8), %rax	# _27->elem, D.15713
	movq	8(%rax), %rdx	# _28->fld[0].rtx, D.15713
	movl	-52(%rbp), %eax	# src, tmp155
	movq	%rdx, %rsi	# D.15713,
	movl	%eax, %edi	# tmp155,
	call	update_live_1	#
.L214:
	.loc 1 1399 0
	subl	$1, -44(%rbp)	#, i
.L213:
	.loc 1 1399 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L215	#,
	.loc 1 1403 0 is_stmt 1
	jmp	.L207	#
.L212:
.LBE22:
	.loc 1 1406 0
	movq	-24(%rbp), %rax	# reg, tmp156
	movzwl	(%rax), %eax	# reg_3->code, D.15710
	cmpw	$61, %ax	#, D.15710
	je	.L216	#,
	.loc 1 1407 0
	jmp	.L207	#
.L216:
	.loc 1 1412 0
	movq	-24(%rbp), %rax	# reg, tmp157
	movl	8(%rax), %eax	# reg_3->fld[0].rtuint, D.15714
	movl	%eax, -36(%rbp)	# D.15714, regno
	.loc 1 1414 0
	cmpl	$52, -36(%rbp)	#, regno
	jg	.L217	#,
	.loc 1 1414 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# regno, tmp159
	cltq
	movzbl	global_regs(%rax), %eax	# global_regs, D.15715
	testb	%al, %al	# D.15715
	jne	.L207	#,
.L217:
	.loc 1 1416 0 is_stmt 1
	cmpl	$52, -36(%rbp)	#, regno
	jg	.L218	#,
.LBB23:
	.loc 1 1418 0
	cmpl	$7, -36(%rbp)	#, regno
	jle	.L219	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	cmpl	$15, -36(%rbp)	#, regno
	jle	.L220	#,
.L219:
	.loc 1 1418 0 discriminator 2
	cmpl	$20, -36(%rbp)	#, regno
	jle	.L221	#,
	.loc 1 1418 0 discriminator 1
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L220	#,
.L221:
	.loc 1 1418 0 discriminator 2
	cmpl	$44, -36(%rbp)	#, regno
	jle	.L222	#,
	.loc 1 1418 0 discriminator 1
	cmpl	$52, -36(%rbp)	#, regno
	jle	.L220	#,
.L222:
	.loc 1 1418 0 discriminator 2
	cmpl	$28, -36(%rbp)	#, regno
	jle	.L223	#,
	.loc 1 1418 0 discriminator 1
	cmpl	$36, -36(%rbp)	#, regno
	jg	.L223	#,
.L220:
	movq	-24(%rbp), %rax	# reg, tmp160
	movzbl	2(%rax), %eax	# reg_3->mode, D.15716
	movzbl	%al, %eax	# D.15716, D.15712
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15717
	cmpl	$5, %eax	#, D.15717
	je	.L224	#,
	.loc 1 1418 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp162
	movzbl	2(%rax), %eax	# reg_3->mode, D.15716
	movzbl	%al, %eax	# D.15716, D.15712
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15717
	cmpl	$6, %eax	#, D.15717
	jne	.L225	#,
.L224:
	.loc 1 1418 0 discriminator 1
	movl	$2, %eax	#, iftmp.308
	jmp	.L226	#
.L225:
	movl	$1, %eax	#, iftmp.308
.L226:
	.loc 1 1418 0 discriminator 3
	jmp	.L227	#
.L223:
	.loc 1 1418 0 discriminator 2
	movq	-24(%rbp), %rax	# reg, tmp164
	movzbl	2(%rax), %eax	# reg_3->mode, D.15716
	cmpb	$18, %al	#, D.15716
	jne	.L228	#,
	.loc 1 1418 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.311
	andl	$33554432, %eax	#, D.15712
	testl	%eax, %eax	# D.15712
	je	.L229	#,
	movl	$2, %eax	#, iftmp.310
	jmp	.L227	#
.L229:
	.loc 1 1418 0 discriminator 2
	movl	$3, %eax	#, iftmp.310
	jmp	.L227	#
.L228:
	movq	-24(%rbp), %rax	# reg, tmp165
	movzbl	2(%rax), %eax	# reg_3->mode, D.15716
	cmpb	$24, %al	#, D.15716
	jne	.L232	#,
	.loc 1 1418 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.314
	andl	$33554432, %eax	#, D.15712
	testl	%eax, %eax	# D.15712
	je	.L233	#,
	movl	$4, %eax	#, iftmp.313
	jmp	.L227	#
.L233:
	.loc 1 1418 0 discriminator 2
	movl	$6, %eax	#, iftmp.313
	jmp	.L227	#
.L232:
	movq	-24(%rbp), %rax	# reg, tmp166
	movzbl	2(%rax), %eax	# reg_3->mode, D.15716
	movzbl	%al, %eax	# D.15716, D.15712
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.15716
	movzbl	%al, %edx	# D.15716, D.15712
	movl	target_flags(%rip), %eax	# target_flags, target_flags.316
	andl	$33554432, %eax	#, D.15712
	testl	%eax, %eax	# D.15712
	je	.L236	#,
	.loc 1 1418 0 discriminator 1
	movl	$8, %eax	#, iftmp.315
	jmp	.L237	#
.L236:
	.loc 1 1418 0 discriminator 2
	movl	$4, %eax	#, iftmp.315
.L237:
	.loc 1 1418 0 discriminator 3
	addl	%edx, %eax	# D.15712, D.15712
	subl	$1, %eax	#, D.15712
	movl	target_flags(%rip), %edx	# target_flags, target_flags.318
	andl	$33554432, %edx	#, D.15712
	testl	%edx, %edx	# D.15712
	je	.L238	#,
	.loc 1 1418 0 discriminator 1
	movl	$8, %ebx	#, iftmp.317
	jmp	.L239	#
.L238:
	.loc 1 1418 0 discriminator 2
	movl	$4, %ebx	#, iftmp.317
.L239:
	.loc 1 1418 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.317
.L227:
	movl	%eax, -40(%rbp)	# iftmp.307, j
	.loc 1 1419 0 is_stmt 1 discriminator 3
	jmp	.L240	#
.L243:
	.loc 1 1421 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L241	#
.L242:
.LBB24:
	.loc 1 1423 0 discriminator 2
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.319
	movl	-52(%rbp), %eax	# src, tmp170
	movslq	%eax, %rdx	# tmp170, D.15718
	movq	%rdx, %rax	# D.15718, tmp171
	salq	$2, %rax	#, tmp171
	addq	%rdx, %rax	# D.15718, tmp171
	salq	$3, %rax	#, tmp172
	addq	%rcx, %rax	# candidate_table.319, D.15719
	movq	24(%rax), %rax	# _85->update_bbs.first_member, D.15720
	movl	-48(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, D.15718
	salq	$2, %rdx	#, D.15718
	addq	%rdx, %rax	# D.15718, D.15720
	movl	(%rax), %eax	# *_89, tmp174
	movl	%eax, -32(%rbp)	# tmp174, b
	.loc 1 1425 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp175
	movl	-36(%rbp), %edx	# regno, tmp176
	addl	%eax, %edx	# tmp175, D.15712
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.320
	movl	-32(%rbp), %ecx	# b, tmp178
	movslq	%ecx, %rcx	# tmp178, tmp177
	addq	$4, %rcx	#, tmp179
	movq	(%rax,%rcx,8), %rax	# basic_block_info.320_92->data.bb, D.15721
	movq	64(%rax), %rax	# _93->global_live_at_start, D.15722
	movl	%edx, %esi	# D.15712,
	movq	%rax, %rdi	# D.15722,
	call	bitmap_set_bit	#
.LBE24:
	.loc 1 1421 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L241:
	.loc 1 1421 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.321
	movl	-52(%rbp), %eax	# src, tmp180
	movslq	%eax, %rdx	# tmp180, D.15718
	movq	%rdx, %rax	# D.15718, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# D.15718, tmp181
	salq	$3, %rax	#, tmp182
	addq	%rcx, %rax	# candidate_table.321, D.15719
	movl	32(%rax), %eax	# _80->update_bbs.nr_members, D.15712
	cmpl	-48(%rbp), %eax	# i, D.15712
	jg	.L242	#,
.L240:
	.loc 1 1419 0 is_stmt 1 discriminator 1
	subl	$1, -40(%rbp)	#, j
	cmpl	$0, -40(%rbp)	#, j
	jns	.L243	#,
.LBE23:
	jmp	.L207	#
.L218:
	.loc 1 1432 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L244	#
.L245:
.LBB25:
	.loc 1 1434 0 discriminator 2
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.322
	movl	-52(%rbp), %eax	# src, tmp183
	movslq	%eax, %rdx	# tmp183, D.15718
	movq	%rdx, %rax	# D.15718, tmp184
	salq	$2, %rax	#, tmp184
	addq	%rdx, %rax	# D.15718, tmp184
	salq	$3, %rax	#, tmp185
	addq	%rcx, %rax	# candidate_table.322, D.15719
	movq	24(%rax), %rax	# _105->update_bbs.first_member, D.15720
	movl	-48(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.15718
	salq	$2, %rdx	#, D.15718
	addq	%rdx, %rax	# D.15718, D.15720
	movl	(%rax), %eax	# *_109, tmp187
	movl	%eax, -28(%rbp)	# tmp187, b
	.loc 1 1436 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.323
	movl	-28(%rbp), %edx	# b, tmp189
	movslq	%edx, %rdx	# tmp189, tmp188
	addq	$4, %rdx	#, tmp190
	movq	(%rax,%rdx,8), %rax	# basic_block_info.323_111->data.bb, D.15721
	movq	64(%rax), %rax	# _112->global_live_at_start, D.15722
	movl	-36(%rbp), %edx	# regno, tmp191
	movl	%edx, %esi	# tmp191,
	movq	%rax, %rdi	# D.15722,
	call	bitmap_set_bit	#
.LBE25:
	.loc 1 1432 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L244:
	.loc 1 1432 0 is_stmt 0 discriminator 1
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.324
	movl	-52(%rbp), %eax	# src, tmp192
	movslq	%eax, %rdx	# tmp192, D.15718
	movq	%rdx, %rax	# D.15718, tmp193
	salq	$2, %rax	#, tmp193
	addq	%rdx, %rax	# D.15718, tmp193
	salq	$3, %rax	#, tmp194
	addq	%rcx, %rax	# candidate_table.324, D.15719
	movl	32(%rax), %eax	# _100->update_bbs.nr_members, D.15712
	cmpl	-48(%rbp), %eax	# i, D.15712
	jg	.L245	#,
.L207:
	.loc 1 1440 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	update_live_1, .-update_live_1
	.type	check_live, @function
check_live:
.LFB17:
	.loc 1 1450 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# src, src
	.loc 1 1452 0
	movq	-24(%rbp), %rax	# insn, tmp83
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movzwl	(%rax), %eax	# _4->code, D.15725
	cmpw	$47, %ax	#, D.15725
	je	.L247	#,
	.loc 1 1453 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movzwl	(%rax), %eax	# _6->code, D.15725
	cmpw	$49, %ax	#, D.15725
	jne	.L248	#,
.L247:
	.loc 1 1454 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rdx	# insn_3(D)->fld[3].rtx, D.15724
	movl	-28(%rbp), %eax	# src, tmp86
	movq	%rdx, %rsi	# D.15724,
	movl	%eax, %edi	# tmp86,
	call	check_live_1	#
	jmp	.L249	#
.L248:
	.loc 1 1455 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movzwl	(%rax), %eax	# _8->code, D.15725
	cmpw	$39, %ax	#, D.15725
	jne	.L250	#,
.LBB26:
	.loc 1 1458 0
	movq	-24(%rbp), %rax	# insn, tmp88
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movq	8(%rax), %rax	# _10->fld[0].rtvec, D.15726
	movl	(%rax), %eax	# _11->num_elem, D.15723
	subl	$1, %eax	#, tmp89
	movl	%eax, -4(%rbp)	# tmp89, j
	jmp	.L251	#
.L254:
	.loc 1 1459 0
	movq	-24(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movq	8(%rax), %rax	# _14->fld[0].rtvec, D.15726
	movl	-4(%rbp), %edx	# j, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	movq	8(%rax,%rdx,8), %rax	# _15->elem, D.15724
	movzwl	(%rax), %eax	# _16->code, D.15725
	cmpw	$47, %ax	#, D.15725
	je	.L252	#,
	.loc 1 1460 0
	movq	-24(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movq	8(%rax), %rax	# _18->fld[0].rtvec, D.15726
	movl	-4(%rbp), %edx	# j, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	movq	8(%rax,%rdx,8), %rax	# _19->elem, D.15724
	movzwl	(%rax), %eax	# _20->code, D.15725
	cmpw	$49, %ax	#, D.15725
	jne	.L253	#,
.L252:
	.loc 1 1461 0
	movq	-24(%rbp), %rax	# insn, tmp96
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.15724
	movq	8(%rax), %rax	# _22->fld[0].rtvec, D.15726
	movl	-4(%rbp), %edx	# j, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rdx	# _23->elem, D.15724
	movl	-28(%rbp), %eax	# src, tmp99
	movq	%rdx, %rsi	# D.15724,
	movl	%eax, %edi	# tmp99,
	call	check_live_1	#
	testl	%eax, %eax	# D.15723
	jne	.L253	#,
	.loc 1 1462 0
	movl	$0, %eax	#, D.15723
	jmp	.L249	#
.L253:
	.loc 1 1458 0
	subl	$1, -4(%rbp)	#, j
.L251:
	.loc 1 1458 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, j
	jns	.L254	#,
	.loc 1 1464 0 is_stmt 1
	movl	$1, %eax	#, D.15723
	jmp	.L249	#
.L250:
.LBE26:
	.loc 1 1467 0
	movl	$1, %eax	#, D.15723
.L249:
	.loc 1 1468 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	check_live, .-check_live
	.type	update_live, @function
update_live:
.LFB18:
	.loc 1 1477 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# src, src
	.loc 1 1479 0
	movq	-24(%rbp), %rax	# insn, tmp80
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movzwl	(%rax), %eax	# _3->code, D.15728
	cmpw	$47, %ax	#, D.15728
	je	.L256	#,
	.loc 1 1480 0
	movq	-24(%rbp), %rax	# insn, tmp81
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movzwl	(%rax), %eax	# _5->code, D.15728
	cmpw	$49, %ax	#, D.15728
	jne	.L257	#,
.L256:
	.loc 1 1481 0
	movq	-24(%rbp), %rax	# insn, tmp82
	movq	32(%rax), %rdx	# insn_2(D)->fld[3].rtx, D.15727
	movl	-28(%rbp), %eax	# src, tmp83
	movq	%rdx, %rsi	# D.15727,
	movl	%eax, %edi	# tmp83,
	call	update_live_1	#
	jmp	.L255	#
.L257:
	.loc 1 1482 0
	movq	-24(%rbp), %rax	# insn, tmp84
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movzwl	(%rax), %eax	# _7->code, D.15728
	cmpw	$39, %ax	#, D.15728
	jne	.L255	#,
.LBB27:
	.loc 1 1485 0
	movq	-24(%rbp), %rax	# insn, tmp85
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movq	8(%rax), %rax	# _9->fld[0].rtvec, D.15729
	movl	(%rax), %eax	# _10->num_elem, D.15730
	subl	$1, %eax	#, tmp86
	movl	%eax, -4(%rbp)	# tmp86, j
	jmp	.L259	#
.L262:
	.loc 1 1486 0
	movq	-24(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movq	8(%rax), %rax	# _13->fld[0].rtvec, D.15729
	movl	-4(%rbp), %edx	# j, tmp89
	movslq	%edx, %rdx	# tmp89, tmp88
	movq	8(%rax,%rdx,8), %rax	# _14->elem, D.15727
	movzwl	(%rax), %eax	# _15->code, D.15728
	cmpw	$47, %ax	#, D.15728
	je	.L260	#,
	.loc 1 1487 0
	movq	-24(%rbp), %rax	# insn, tmp90
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movq	8(%rax), %rax	# _17->fld[0].rtvec, D.15729
	movl	-4(%rbp), %edx	# j, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	movq	8(%rax,%rdx,8), %rax	# _18->elem, D.15727
	movzwl	(%rax), %eax	# _19->code, D.15728
	cmpw	$49, %ax	#, D.15728
	jne	.L261	#,
.L260:
	.loc 1 1488 0
	movq	-24(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_2(D)->fld[3].rtx, D.15727
	movq	8(%rax), %rax	# _21->fld[0].rtvec, D.15729
	movl	-4(%rbp), %edx	# j, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	movq	8(%rax,%rdx,8), %rdx	# _22->elem, D.15727
	movl	-28(%rbp), %eax	# src, tmp96
	movq	%rdx, %rsi	# D.15727,
	movl	%eax, %edi	# tmp96,
	call	update_live_1	#
.L261:
	.loc 1 1485 0
	subl	$1, -4(%rbp)	#, j
.L259:
	.loc 1 1485 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, j
	jns	.L262	#,
.L255:
.LBE27:
	.loc 1 1490 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	update_live, .-update_live
	.type	set_spec_fed, @function
set_spec_fed:
.LFB19:
	.loc 1 1582 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# load_insn, load_insn
	.loc 1 1585 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.325
	movq	-24(%rbp), %rax	# load_insn, tmp71
	movl	8(%rax), %eax	# load_insn_3(D)->fld[0].rtint, D.15731
	movslq	%eax, %rdx	# D.15731, D.15732
	movq	%rdx, %rax	# D.15732, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# D.15732, tmp72
	salq	$4, %rax	#, tmp73
	addq	%rcx, %rax	# h_i_d.325, D.15733
	movq	(%rax), %rax	# _7->depend, tmp74
	movq	%rax, -8(%rbp)	# tmp74, link
	jmp	.L264	#
.L266:
	.loc 1 1586 0
	movq	-8(%rbp), %rax	# link, tmp75
	movzbl	2(%rax), %eax	# link_1->mode, D.15734
	testb	%al, %al	# D.15734
	jne	.L265	#,
	.loc 1 1587 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.326
	movq	-8(%rbp), %rax	# link, tmp76
	movq	8(%rax), %rax	# link_1->fld[0].rtx, D.15735
	movl	8(%rax), %eax	# _11->fld[0].rtint, D.15731
	movslq	%eax, %rdx	# D.15731, D.15732
	movq	%rdx, %rax	# D.15732, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# D.15732, tmp77
	salq	$4, %rax	#, tmp78
	addq	%rcx, %rax	# h_i_d.326, D.15733
	movzbl	46(%rax), %edx	# _15->fed_by_spec_load, tmp81
	orl	$2, %edx	#, tmp82
	movb	%dl, 46(%rax)	# tmp82, _15->fed_by_spec_load
.L265:
	.loc 1 1585 0
	movq	-8(%rbp), %rax	# link, tmp83
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp84
	movq	%rax, -8(%rbp)	# tmp84, link
.L264:
	.loc 1 1585 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, link
	jne	.L266	#,
	.loc 1 1588 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	set_spec_fed, .-set_spec_fed
	.type	find_conditional_protection, @function
find_conditional_protection:
.LFB20:
	.loc 1 1597 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# load_insn_bb, load_insn_bb
	.loc 1 1601 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.327
	movq	-24(%rbp), %rax	# insn, tmp180
	movl	8(%rax), %eax	# insn_4(D)->fld[0].rtint, D.15736
	movslq	%eax, %rdx	# D.15736, D.15737
	movq	%rdx, %rax	# D.15737, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.15737, tmp181
	salq	$4, %rax	#, tmp182
	addq	%rcx, %rax	# h_i_d.327, D.15738
	movq	(%rax), %rax	# _8->depend, tmp183
	movq	%rax, -16(%rbp)	# tmp183, link
	jmp	.L268	#
.L273:
.LBB28:
	.loc 1 1603 0
	movq	-16(%rbp), %rax	# link, tmp184
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp185
	movq	%rax, -8(%rbp)	# tmp185, next
	.loc 1 1604 0
	movq	containing_rgn(%rip), %rcx	# containing_rgn, containing_rgn.328
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.329
	movq	-8(%rbp), %rdx	# next, tmp186
	movl	8(%rdx), %edx	# next_10->fld[0].rtint, D.15736
	movslq	%edx, %rdx	# D.15736, tmp187
	addq	$4, %rdx	#, tmp188
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.329_12->data.bb, D.15739
	movl	88(%rax), %eax	# _14->index, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rcx, %rax	# containing_rgn.328, D.15740
	movl	(%rax), %edx	# *_18, D.15736
	.loc 1 1605 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.330
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.331
	movl	current_blocks(%rip), %edi	# current_blocks, current_blocks.332
	movl	-28(%rbp), %esi	# load_insn_bb, tmp189
	addl	%edi, %esi	# current_blocks.332, D.15736
	movslq	%esi, %rsi	# D.15736, D.15737
	salq	$2, %rsi	#, D.15737
	addq	%rsi, %rcx	# D.15737, D.15740
	movl	(%rcx), %ecx	# *_27, D.15736
	movslq	%ecx, %rcx	# D.15736, D.15737
	salq	$2, %rcx	#, D.15737
	addq	%rcx, %rax	# D.15737, D.15740
	movl	(%rax), %eax	# *_31, D.15736
	.loc 1 1604 0
	cmpl	%eax, %edx	# D.15736, D.15736
	jne	.L269	#,
	.loc 1 1606 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.333
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.334
	movq	-8(%rbp), %rdx	# next, tmp190
	movl	8(%rdx), %edx	# next_10->fld[0].rtint, D.15736
	movslq	%edx, %rdx	# D.15736, tmp191
	addq	$4, %rdx	#, tmp192
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.334_34->data.bb, D.15739
	movl	88(%rax), %eax	# _36->index, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rcx, %rax	# block_to_bb.333, D.15740
	movl	(%rax), %eax	# *_40, D.15736
	cmpl	-28(%rbp), %eax	# load_insn_bb, D.15736
	je	.L270	#,
	.loc 1 1606 0 is_stmt 0 discriminator 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.335
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.336
	movq	-8(%rbp), %rdx	# next, tmp193
	movl	8(%rdx), %edx	# next_10->fld[0].rtint, D.15736
	movslq	%edx, %rdx	# D.15736, tmp194
	addq	$4, %rdx	#, tmp195
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.336_43->data.bb, D.15739
	movl	88(%rax), %eax	# _45->index, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rcx, %rax	# block_to_bb.335, D.15740
	movl	(%rax), %eax	# *_49, D.15736
	testl	%eax, %eax	# D.15736
	je	.L270	#,
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.337
	movl	-28(%rbp), %edx	# load_insn_bb, tmp196
	movslq	%edx, %rdx	# tmp196, D.15737
	salq	$3, %rdx	#, D.15737
	addq	%rdx, %rax	# D.15737, D.15741
	movq	(%rax), %rax	# *_54, D.15742
	movq	edge_to_bit(%rip), %rsi	# edge_to_bit, edge_to_bit.338
	movq	in_edges(%rip), %rdi	# in_edges, in_edges.339
	movq	rgn_bb_table(%rip), %r8	# rgn_bb_table, rgn_bb_table.340
	movq	block_to_bb(%rip), %r9	# block_to_bb, block_to_bb.341
	movq	basic_block_for_insn(%rip), %rdx	# basic_block_for_insn, basic_block_for_insn.342
	movq	-8(%rbp), %rcx	# next, tmp197
	movl	8(%rcx), %ecx	# next_10->fld[0].rtint, D.15736
	movslq	%ecx, %rcx	# D.15736, tmp198
	addq	$4, %rcx	#, tmp199
	movq	(%rdx,%rcx,8), %rdx	# basic_block_for_insn.342_60->data.bb, D.15739
	movl	88(%rdx), %edx	# _62->index, D.15736
	movslq	%edx, %rdx	# D.15736, D.15737
	salq	$2, %rdx	#, D.15737
	addq	%r9, %rdx	# block_to_bb.341, D.15740
	movl	(%rdx), %ecx	# *_66, D.15736
	movl	current_blocks(%rip), %edx	# current_blocks, current_blocks.343
	addl	%ecx, %edx	# D.15736, D.15736
	movslq	%edx, %rdx	# D.15736, D.15737
	salq	$2, %rdx	#, D.15737
	addq	%r8, %rdx	# rgn_bb_table.340, D.15740
	movl	(%rdx), %edx	# *_72, D.15736
	movslq	%edx, %rdx	# D.15736, D.15737
	salq	$2, %rdx	#, D.15737
	addq	%rdi, %rdx	# in_edges.339, D.15740
	movl	(%rdx), %edx	# *_76, D.15736
	movslq	%edx, %rdx	# D.15736, D.15737
	salq	$2, %rdx	#, D.15737
	addq	%rsi, %rdx	# edge_to_bit.338, D.15740
	movl	(%rdx), %edx	# *_80, D.15736
	shrl	$6, %edx	#, D.15743
	movl	%edx, %edx	# D.15743, tmp200
	addq	$2, %rdx	#, tmp201
	movq	(%rax,%rdx,8), %rsi	# _55->elms, D.15737
	movq	edge_to_bit(%rip), %rcx	# edge_to_bit, edge_to_bit.344
	movq	in_edges(%rip), %rdi	# in_edges, in_edges.345
	movq	rgn_bb_table(%rip), %r8	# rgn_bb_table, rgn_bb_table.346
	movq	block_to_bb(%rip), %r9	# block_to_bb, block_to_bb.347
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.348
	movq	-8(%rbp), %rdx	# next, tmp202
	movl	8(%rdx), %edx	# next_10->fld[0].rtint, D.15736
	movslq	%edx, %rdx	# D.15736, tmp203
	addq	$4, %rdx	#, tmp204
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.348_89->data.bb, D.15739
	movl	88(%rax), %eax	# _91->index, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%r9, %rax	# block_to_bb.347, D.15740
	movl	(%rax), %edx	# *_95, D.15736
	movl	current_blocks(%rip), %eax	# current_blocks, current_blocks.349
	addl	%edx, %eax	# D.15736, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%r8, %rax	# rgn_bb_table.346, D.15740
	movl	(%rax), %eax	# *_101, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rdi, %rax	# in_edges.345, D.15740
	movl	(%rax), %eax	# *_105, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rcx, %rax	# edge_to_bit.344, D.15740
	movl	(%rax), %eax	# *_109, D.15736
	andl	$63, %eax	#, D.15736
	movl	%eax, %ecx	# D.15736, tmp216
	shrq	%cl, %rsi	# tmp216, D.15737
	movq	%rsi, %rax	# D.15737, D.15737
	andl	$1, %eax	#, D.15737
	testq	%rax, %rax	# D.15737
	je	.L269	#,
.L270:
	.loc 1 1607 0 is_stmt 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.350
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.351
	movq	-8(%rbp), %rdx	# next, tmp205
	movl	8(%rdx), %edx	# next_10->fld[0].rtint, D.15736
	movslq	%edx, %rdx	# D.15736, tmp206
	addq	$4, %rdx	#, tmp207
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.351_115->data.bb, D.15739
	movl	88(%rax), %eax	# _117->index, D.15736
	cltq
	salq	$2, %rax	#, D.15737
	addq	%rcx, %rax	# block_to_bb.350, D.15740
	movl	(%rax), %eax	# *_121, D.15736
	cmpl	-28(%rbp), %eax	# load_insn_bb, D.15736
	je	.L269	#,
	.loc 1 1608 0
	movq	-16(%rbp), %rax	# link, tmp208
	movzbl	2(%rax), %eax	# link_1->mode, D.15744
	testb	%al, %al	# D.15744
	jne	.L269	#,
	.loc 1 1609 0
	movq	-8(%rbp), %rax	# next, tmp209
	movzwl	(%rax), %eax	# next_10->code, D.15745
	cmpw	$33, %ax	#, D.15745
	je	.L271	#,
	.loc 1 1610 0
	movl	-28(%rbp), %edx	# load_insn_bb, tmp210
	movq	-8(%rbp), %rax	# next, tmp211
	movl	%edx, %esi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	find_conditional_protection	#
	testl	%eax, %eax	# D.15736
	je	.L269	#,
.L271:
	.loc 1 1611 0
	movl	$1, %eax	#, D.15736
	jmp	.L272	#
.L269:
.LBE28:
	.loc 1 1601 0
	movq	-16(%rbp), %rax	# link, tmp212
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp213
	movq	%rax, -16(%rbp)	# tmp213, link
.L268:
	.loc 1 1601 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L273	#,
	.loc 1 1613 0 is_stmt 1
	movl	$0, %eax	#, D.15736
.L272:
	.loc 1 1614 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	find_conditional_protection, .-find_conditional_protection
	.type	is_conditionally_protected, @function
is_conditionally_protected:
.LFB21:
	.loc 1 1634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# load_insn, load_insn
	movl	%esi, -28(%rbp)	# bb_src, bb_src
	movl	%edx, -32(%rbp)	# bb_trg, bb_trg
	.loc 1 1637 0
	movq	-24(%rbp), %rax	# load_insn, tmp238
	movq	48(%rax), %rax	# load_insn_3(D)->fld[5].rtx, tmp239
	movq	%rax, -16(%rbp)	# tmp239, link
	jmp	.L275	#
.L283:
.LBB29:
	.loc 1 1639 0
	movq	-16(%rbp), %rax	# link, tmp240
	movq	8(%rax), %rax	# link_1->fld[0].rtx, tmp241
	movq	%rax, -8(%rbp)	# tmp241, insn1
	.loc 1 1642 0
	movq	-16(%rbp), %rax	# link, tmp242
	movzbl	2(%rax), %eax	# link_1->mode, D.15747
	testb	%al, %al	# D.15747
	jne	.L276	#,
	.loc 1 1643 0
	movq	-8(%rbp), %rax	# insn1, tmp243
	movzwl	(%rax), %eax	# insn1_5->code, D.15748
	cmpw	$33, %ax	#, D.15748
	jne	.L277	#,
.L276:
	.loc 1 1644 0
	jmp	.L278	#
.L277:
	.loc 1 1647 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.352
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.353
	movq	-8(%rbp), %rdx	# insn1, tmp244
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp245
	addq	$4, %rdx	#, tmp246
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.353_9->data.bb, D.15749
	movl	88(%rax), %eax	# _11->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# block_to_bb.352, D.15751
	movl	(%rax), %eax	# *_15, D.15746
	cmpl	-28(%rbp), %eax	# bb_src, D.15746
	je	.L279	#,
	.loc 1 1648 0
	movq	containing_rgn(%rip), %rcx	# containing_rgn, containing_rgn.354
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.355
	movq	-8(%rbp), %rdx	# insn1, tmp247
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp248
	addq	$4, %rdx	#, tmp249
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.355_19->data.bb, D.15749
	movl	88(%rax), %eax	# _21->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# containing_rgn.354, D.15751
	movl	(%rax), %edx	# *_25, D.15746
	.loc 1 1649 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.356
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.357
	movl	current_blocks(%rip), %edi	# current_blocks, current_blocks.358
	movl	-28(%rbp), %esi	# bb_src, tmp250
	addl	%edi, %esi	# current_blocks.358, D.15746
	movslq	%esi, %rsi	# D.15746, D.15750
	salq	$2, %rsi	#, D.15750
	addq	%rsi, %rcx	# D.15750, D.15751
	movl	(%rcx), %ecx	# *_33, D.15746
	movslq	%ecx, %rcx	# D.15746, D.15750
	salq	$2, %rcx	#, D.15750
	addq	%rcx, %rax	# D.15750, D.15751
	movl	(%rax), %eax	# *_37, D.15746
	.loc 1 1648 0
	cmpl	%eax, %edx	# D.15746, D.15746
	jne	.L279	#,
	.loc 1 1650 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.359
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.360
	movq	-8(%rbp), %rdx	# insn1, tmp251
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp252
	addq	$4, %rdx	#, tmp253
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.360_40->data.bb, D.15749
	movl	88(%rax), %eax	# _42->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# block_to_bb.359, D.15751
	movl	(%rax), %eax	# *_46, D.15746
	cmpl	-32(%rbp), %eax	# bb_trg, D.15746
	je	.L280	#,
	.loc 1 1650 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, bb_trg
	je	.L280	#,
	movq	ancestor_edges(%rip), %rcx	# ancestor_edges, ancestor_edges.361
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.362
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.363
	movq	-8(%rbp), %rdx	# insn1, tmp254
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp255
	addq	$4, %rdx	#, tmp256
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.363_51->data.bb, D.15749
	movl	88(%rax), %eax	# _53->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rsi, %rax	# block_to_bb.362, D.15751
	movl	(%rax), %eax	# *_57, D.15746
	cltq
	salq	$3, %rax	#, D.15750
	addq	%rcx, %rax	# ancestor_edges.361, D.15752
	movq	(%rax), %rax	# *_61, D.15753
	movq	edge_to_bit(%rip), %rdx	# edge_to_bit, edge_to_bit.364
	movq	in_edges(%rip), %rcx	# in_edges, in_edges.365
	movq	rgn_bb_table(%rip), %rsi	# rgn_bb_table, rgn_bb_table.366
	movl	current_blocks(%rip), %r8d	# current_blocks, current_blocks.367
	movl	-32(%rbp), %edi	# bb_trg, tmp257
	addl	%r8d, %edi	# current_blocks.367, D.15746
	movslq	%edi, %rdi	# D.15746, D.15750
	salq	$2, %rdi	#, D.15750
	addq	%rdi, %rsi	# D.15750, D.15751
	movl	(%rsi), %esi	# *_70, D.15746
	movslq	%esi, %rsi	# D.15746, D.15750
	salq	$2, %rsi	#, D.15750
	addq	%rsi, %rcx	# D.15750, D.15751
	movl	(%rcx), %ecx	# *_74, D.15746
	movslq	%ecx, %rcx	# D.15746, D.15750
	salq	$2, %rcx	#, D.15750
	addq	%rcx, %rdx	# D.15750, D.15751
	movl	(%rdx), %edx	# *_78, D.15746
	shrl	$6, %edx	#, D.15754
	movl	%edx, %edx	# D.15754, tmp258
	addq	$2, %rdx	#, tmp259
	movq	(%rax,%rdx,8), %rdx	# _62->elms, D.15750
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.368
	movq	in_edges(%rip), %rcx	# in_edges, in_edges.369
	movq	rgn_bb_table(%rip), %rsi	# rgn_bb_table, rgn_bb_table.370
	movl	current_blocks(%rip), %r8d	# current_blocks, current_blocks.371
	movl	-32(%rbp), %edi	# bb_trg, tmp260
	addl	%r8d, %edi	# current_blocks.371, D.15746
	movslq	%edi, %rdi	# D.15746, D.15750
	salq	$2, %rdi	#, D.15750
	addq	%rdi, %rsi	# D.15750, D.15751
	movl	(%rsi), %esi	# *_90, D.15746
	movslq	%esi, %rsi	# D.15746, D.15750
	salq	$2, %rsi	#, D.15750
	addq	%rsi, %rcx	# D.15750, D.15751
	movl	(%rcx), %ecx	# *_94, D.15746
	movslq	%ecx, %rcx	# D.15746, D.15750
	salq	$2, %rcx	#, D.15750
	addq	%rcx, %rax	# D.15750, D.15751
	movl	(%rax), %eax	# *_98, D.15746
	andl	$63, %eax	#, D.15746
	movl	%eax, %ecx	# D.15746, tmp285
	shrq	%cl, %rdx	# tmp285, D.15750
	movq	%rdx, %rax	# D.15750, D.15750
	andl	$1, %eax	#, D.15750
	testq	%rax, %rax	# D.15750
	jne	.L280	#,
	.loc 1 1651 0 is_stmt 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.372
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.373
	movq	-8(%rbp), %rdx	# insn1, tmp261
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp262
	addq	$4, %rdx	#, tmp263
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.373_104->data.bb, D.15749
	movl	88(%rax), %eax	# _106->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# block_to_bb.372, D.15751
	movl	(%rax), %eax	# *_110, D.15746
	cmpl	-32(%rbp), %eax	# bb_trg, D.15746
	je	.L280	#,
	.loc 1 1651 0 is_stmt 0 discriminator 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.374
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.375
	movq	-8(%rbp), %rdx	# insn1, tmp264
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp265
	addq	$4, %rdx	#, tmp266
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.375_113->data.bb, D.15749
	movl	88(%rax), %eax	# _115->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# block_to_bb.374, D.15751
	movl	(%rax), %eax	# *_119, D.15746
	testl	%eax, %eax	# D.15746
	je	.L280	#,
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.376
	movl	-32(%rbp), %edx	# bb_trg, tmp267
	movslq	%edx, %rdx	# tmp267, D.15750
	salq	$3, %rdx	#, D.15750
	addq	%rdx, %rax	# D.15750, D.15752
	movq	(%rax), %rax	# *_124, D.15753
	movq	edge_to_bit(%rip), %rsi	# edge_to_bit, edge_to_bit.377
	movq	in_edges(%rip), %rdi	# in_edges, in_edges.378
	movq	rgn_bb_table(%rip), %r8	# rgn_bb_table, rgn_bb_table.379
	movq	block_to_bb(%rip), %r9	# block_to_bb, block_to_bb.380
	movq	basic_block_for_insn(%rip), %rdx	# basic_block_for_insn, basic_block_for_insn.381
	movq	-8(%rbp), %rcx	# insn1, tmp268
	movl	8(%rcx), %ecx	# insn1_5->fld[0].rtint, D.15746
	movslq	%ecx, %rcx	# D.15746, tmp269
	addq	$4, %rcx	#, tmp270
	movq	(%rdx,%rcx,8), %rdx	# basic_block_for_insn.381_130->data.bb, D.15749
	movl	88(%rdx), %edx	# _132->index, D.15746
	movslq	%edx, %rdx	# D.15746, D.15750
	salq	$2, %rdx	#, D.15750
	addq	%r9, %rdx	# block_to_bb.380, D.15751
	movl	(%rdx), %ecx	# *_136, D.15746
	movl	current_blocks(%rip), %edx	# current_blocks, current_blocks.382
	addl	%ecx, %edx	# D.15746, D.15746
	movslq	%edx, %rdx	# D.15746, D.15750
	salq	$2, %rdx	#, D.15750
	addq	%r8, %rdx	# rgn_bb_table.379, D.15751
	movl	(%rdx), %edx	# *_142, D.15746
	movslq	%edx, %rdx	# D.15746, D.15750
	salq	$2, %rdx	#, D.15750
	addq	%rdi, %rdx	# in_edges.378, D.15751
	movl	(%rdx), %edx	# *_146, D.15746
	movslq	%edx, %rdx	# D.15746, D.15750
	salq	$2, %rdx	#, D.15750
	addq	%rsi, %rdx	# edge_to_bit.377, D.15751
	movl	(%rdx), %edx	# *_150, D.15746
	shrl	$6, %edx	#, D.15754
	movl	%edx, %edx	# D.15754, tmp271
	addq	$2, %rdx	#, tmp272
	movq	(%rax,%rdx,8), %rsi	# _125->elms, D.15750
	movq	edge_to_bit(%rip), %rcx	# edge_to_bit, edge_to_bit.383
	movq	in_edges(%rip), %rdi	# in_edges, in_edges.384
	movq	rgn_bb_table(%rip), %r8	# rgn_bb_table, rgn_bb_table.385
	movq	block_to_bb(%rip), %r9	# block_to_bb, block_to_bb.386
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.387
	movq	-8(%rbp), %rdx	# insn1, tmp273
	movl	8(%rdx), %edx	# insn1_5->fld[0].rtint, D.15746
	movslq	%edx, %rdx	# D.15746, tmp274
	addq	$4, %rdx	#, tmp275
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.387_159->data.bb, D.15749
	movl	88(%rax), %eax	# _161->index, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%r9, %rax	# block_to_bb.386, D.15751
	movl	(%rax), %edx	# *_165, D.15746
	movl	current_blocks(%rip), %eax	# current_blocks, current_blocks.388
	addl	%edx, %eax	# D.15746, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%r8, %rax	# rgn_bb_table.385, D.15751
	movl	(%rax), %eax	# *_171, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rdi, %rax	# in_edges.384, D.15751
	movl	(%rax), %eax	# *_175, D.15746
	cltq
	salq	$2, %rax	#, D.15750
	addq	%rcx, %rax	# edge_to_bit.383, D.15751
	movl	(%rax), %eax	# *_179, D.15746
	andl	$63, %eax	#, D.15746
	movl	%eax, %ecx	# D.15746, tmp287
	shrq	%cl, %rsi	# tmp287, D.15750
	movq	%rsi, %rax	# D.15750, D.15750
	andl	$1, %eax	#, D.15750
	testq	%rax, %rax	# D.15750
	jne	.L280	#,
.L279:
	.loc 1 1652 0 is_stmt 1
	jmp	.L278	#
.L280:
	.loc 1 1655 0
	movl	-28(%rbp), %edx	# bb_src, tmp276
	movq	-8(%rbp), %rax	# insn1, tmp277
	movl	%edx, %esi	# tmp276,
	movq	%rax, %rdi	# tmp277,
	call	find_conditional_protection	#
	testl	%eax, %eax	# D.15746
	je	.L281	#,
	.loc 1 1656 0
	movl	$1, %eax	#, D.15746
	jmp	.L282	#
.L281:
	.loc 1 1659 0
	movl	-32(%rbp), %edx	# bb_trg, tmp278
	movl	-28(%rbp), %ecx	# bb_src, tmp279
	movq	-8(%rbp), %rax	# insn1, tmp280
	movl	%ecx, %esi	# tmp279,
	movq	%rax, %rdi	# tmp280,
	call	is_conditionally_protected	#
	jmp	.L282	#
.L278:
.LBE29:
	.loc 1 1637 0
	movq	-16(%rbp), %rax	# link, tmp281
	movq	16(%rax), %rax	# link_1->fld[1].rtx, tmp282
	movq	%rax, -16(%rbp)	# tmp282, link
.L275:
	.loc 1 1637 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, link
	jne	.L283	#,
	.loc 1 1663 0 is_stmt 1
	movl	$0, %eax	#, D.15746
.L282:
	.loc 1 1664 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	is_conditionally_protected, .-is_conditionally_protected
	.type	is_pfree, @function
is_pfree:
.LFB22:
	.loc 1 1686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# load_insn, load_insn
	movl	%esi, -60(%rbp)	# bb_src, bb_src
	movl	%edx, -64(%rbp)	# bb_trg, bb_trg
	.loc 1 1688 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.389
	movl	-60(%rbp), %eax	# bb_src, tmp88
	movslq	%eax, %rdx	# tmp88, D.15756
	movq	%rdx, %rax	# D.15756, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# D.15756, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# candidate_table.389, tmp91
	movq	%rax, -24(%rbp)	# tmp91, candp
	.loc 1 1690 0
	movq	-24(%rbp), %rax	# candp, tmp92
	movl	16(%rax), %eax	# candp_8->split_bbs.nr_members, D.15755
	cmpl	$1, %eax	#, D.15755
	je	.L285	#,
	.loc 1 1692 0
	movl	$0, %eax	#, D.15755
	jmp	.L286	#
.L285:
	.loc 1 1694 0
	movq	-56(%rbp), %rax	# load_insn, tmp93
	movq	48(%rax), %rax	# load_insn_11(D)->fld[5].rtx, tmp94
	movq	%rax, -40(%rbp)	# tmp94, back_link
	jmp	.L287	#
.L294:
.LBB30:
	.loc 1 1697 0
	movq	-40(%rbp), %rax	# back_link, tmp95
	movq	8(%rax), %rax	# back_link_1->fld[0].rtx, tmp96
	movq	%rax, -16(%rbp)	# tmp96, insn1
	.loc 1 1699 0
	movq	-40(%rbp), %rax	# back_link, tmp97
	movzbl	2(%rax), %eax	# back_link_1->mode, D.15757
	testb	%al, %al	# D.15757
	jne	.L288	#,
.LBB31:
	.loc 1 1704 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.390
	movq	-16(%rbp), %rax	# insn1, tmp98
	movl	8(%rax), %eax	# insn1_13->fld[0].rtint, D.15755
	movslq	%eax, %rdx	# D.15755, D.15756
	movq	%rdx, %rax	# D.15756, tmp99
	addq	%rax, %rax	# tmp99
	addq	%rdx, %rax	# D.15756, tmp99
	salq	$4, %rax	#, tmp100
	addq	%rcx, %rax	# h_i_d.390, D.15758
	movq	(%rax), %rax	# _19->depend, tmp101
	movq	%rax, -32(%rbp)	# tmp101, fore_link
	jmp	.L289	#
.L293:
.LBB32:
	.loc 1 1707 0
	movq	-32(%rbp), %rax	# fore_link, tmp102
	movq	8(%rax), %rax	# fore_link_2->fld[0].rtx, tmp103
	movq	%rax, -8(%rbp)	# tmp103, insn2
	.loc 1 1708 0
	movq	-32(%rbp), %rax	# fore_link, tmp104
	movzbl	2(%rax), %eax	# fore_link_2->mode, D.15757
	testb	%al, %al	# D.15757
	jne	.L290	#,
	.loc 1 1711 0
	movq	-8(%rbp), %rax	# insn2, tmp105
	movq	%rax, %rdi	# tmp105,
	call	haifa_classify_insn	#
	cmpl	$2, %eax	#, D.15755
	je	.L291	#,
	.loc 1 1713 0
	jmp	.L290	#
.L291:
	.loc 1 1715 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.391
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.392
	movq	-8(%rbp), %rdx	# insn2, tmp106
	movl	8(%rdx), %edx	# insn2_21->fld[0].rtint, D.15755
	movslq	%edx, %rdx	# D.15755, tmp107
	addq	$4, %rdx	#, tmp108
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.392_25->data.bb, D.15759
	movl	88(%rax), %eax	# _27->index, D.15755
	cltq
	salq	$2, %rax	#, D.15756
	addq	%rcx, %rax	# block_to_bb.391, D.15760
	movl	(%rax), %eax	# *_31, D.15755
	cmpl	-64(%rbp), %eax	# bb_trg, D.15755
	jne	.L292	#,
	.loc 1 1717 0
	movl	$1, %eax	#, D.15755
	jmp	.L286	#
.L292:
	.loc 1 1719 0
	movq	-24(%rbp), %rax	# candp, tmp109
	movq	8(%rax), %rax	# candp_8->split_bbs.first_member, D.15760
	movl	(%rax), %ecx	# *_35, D.15755
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.393
	movq	-8(%rbp), %rdx	# insn2, tmp110
	movl	8(%rdx), %edx	# insn2_21->fld[0].rtint, D.15755
	movslq	%edx, %rdx	# D.15755, tmp111
	addq	$4, %rdx	#, tmp112
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.393_37->data.bb, D.15759
	movl	88(%rax), %eax	# _39->index, D.15755
	cmpl	%eax, %ecx	# D.15755, D.15755
	jne	.L290	#,
	.loc 1 1721 0
	movl	$1, %eax	#, D.15755
	jmp	.L286	#
.L290:
.LBE32:
	.loc 1 1705 0
	movq	-32(%rbp), %rax	# fore_link, tmp113
	movq	16(%rax), %rax	# fore_link_2->fld[1].rtx, tmp114
	movq	%rax, -32(%rbp)	# tmp114, fore_link
.L289:
	.loc 1 1704 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, fore_link
	jne	.L293	#,
.L288:
.LBE31:
.LBE30:
	.loc 1 1695 0
	movq	-40(%rbp), %rax	# back_link, tmp115
	movq	16(%rax), %rax	# back_link_1->fld[1].rtx, tmp116
	movq	%rax, -40(%rbp)	# tmp116, back_link
.L287:
	.loc 1 1694 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, back_link
	jne	.L294	#,
	.loc 1 1728 0
	movl	$0, %eax	#, D.15755
.L286:
	.loc 1 1729 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	is_pfree, .-is_pfree
	.type	may_trap_exp, @function
may_trap_exp:
.LFB23:
	.loc 1 1738 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# is_store, is_store
	.loc 1 1741 0
	cmpq	$0, -40(%rbp)	#, x
	jne	.L296	#,
	.loc 1 1742 0
	movl	$0, %eax	#, D.15761
	jmp	.L297	#
.L296:
	.loc 1 1743 0
	movq	-40(%rbp), %rax	# x, tmp138
	movzwl	(%rax), %eax	# x_8(D)->code, D.15762
	movzwl	%ax, %eax	# D.15762, tmp139
	movl	%eax, -20(%rbp)	# tmp139, code
	.loc 1 1744 0
	cmpl	$0, -44(%rbp)	#, is_store
	je	.L298	#,
	.loc 1 1746 0
	cmpl	$66, -20(%rbp)	#, code
	jne	.L299	#,
	.loc 1 1746 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp140
	movq	%rax, %rdi	# tmp140,
	call	may_trap_p	#
	testl	%eax, %eax	# D.15761
	je	.L299	#,
	.loc 1 1747 0 is_stmt 1
	movl	$5, %eax	#, D.15761
	jmp	.L297	#
.L299:
	.loc 1 1749 0
	movl	$0, %eax	#, D.15761
	jmp	.L297	#
.L298:
	.loc 1 1751 0
	cmpl	$66, -20(%rbp)	#, code
	jne	.L300	#,
	.loc 1 1754 0
	movq	-40(%rbp), %rax	# x, tmp141
	movzbl	3(%rax), %eax	# *x_8(D), D.15763
	andl	$8, %eax	#, D.15763
	testb	%al, %al	# D.15763
	je	.L301	#,
	.loc 1 1755 0
	movl	$4, %eax	#, D.15761
	jmp	.L297	#
.L301:
	.loc 1 1757 0
	movq	-40(%rbp), %rax	# x, tmp142
	movq	%rax, %rdi	# tmp142,
	call	may_trap_p	#
	testl	%eax, %eax	# D.15761
	jne	.L302	#,
	.loc 1 1758 0
	movl	$1, %eax	#, D.15761
	jmp	.L297	#
.L302:
	.loc 1 1760 0
	movq	-40(%rbp), %rax	# x, tmp143
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _21->code, D.15762
	cmpw	$61, %ax	#, D.15762
	je	.L303	#,
	.loc 1 1760 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp144
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _23->code, D.15762
	cmpw	$75, %ax	#, D.15762
	je	.L304	#,
	.loc 1 1760 0 discriminator 2
	movq	-40(%rbp), %rax	# x, tmp145
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _25->code, D.15762
	cmpw	$76, %ax	#, D.15762
	je	.L304	#,
	.loc 1 1760 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp146
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _27->code, D.15762
	cmpw	$135, %ax	#, D.15762
	jne	.L305	#,
.L304:
	movq	-40(%rbp), %rax	# x, tmp147
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _29->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _30->code, D.15762
	cmpw	$67, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp148
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _32->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _33->code, D.15762
	cmpw	$68, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp149
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _35->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _36->code, D.15762
	cmpw	$54, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp150
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _38->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _39->code, D.15762
	cmpw	$55, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp151
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _41->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _42->code, D.15762
	cmpw	$58, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp152
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _44->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _45->code, D.15762
	cmpw	$134, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp153
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _47->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _48->code, D.15762
	cmpw	$56, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp154
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	8(%rax), %rax	# _50->fld[0].rtx, D.15764
	movzwl	(%rax), %eax	# _51->code, D.15762
	cmpw	$140, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp155
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _53->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _54->code, D.15762
	cmpw	$67, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp156
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _56->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _57->code, D.15762
	cmpw	$68, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp157
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _59->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _60->code, D.15762
	cmpw	$54, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp158
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _62->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _63->code, D.15762
	cmpw	$55, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp159
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _65->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _66->code, D.15762
	cmpw	$58, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp160
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _68->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _69->code, D.15762
	cmpw	$134, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp161
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _71->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _72->code, D.15762
	cmpw	$56, %ax	#, D.15762
	je	.L303	#,
	movq	-40(%rbp), %rax	# x, tmp162
	movq	8(%rax), %rax	# x_8(D)->fld[0].rtx, D.15764
	movq	16(%rax), %rax	# _74->fld[1].rtx, D.15764
	movzwl	(%rax), %eax	# _75->code, D.15762
	cmpw	$140, %ax	#, D.15762
	jne	.L305	#,
.L303:
	.loc 1 1761 0 is_stmt 1
	movl	$2, %eax	#, D.15761
	jmp	.L297	#
.L305:
	.loc 1 1763 0
	movl	$3, %eax	#, D.15761
	jmp	.L297	#
.L300:
.LBB33:
	.loc 1 1768 0
	movl	$0, -28(%rbp)	#, insn_class
	.loc 1 1771 0
	movq	-40(%rbp), %rax	# x, tmp163
	movq	%rax, %rdi	# tmp163,
	call	may_trap_p	#
	testl	%eax, %eax	# D.15761
	je	.L306	#,
	.loc 1 1772 0
	movl	$5, %eax	#, D.15761
	jmp	.L297	#
.L306:
	.loc 1 1774 0
	movl	-20(%rbp), %eax	# code, code.394
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp165
	movq	%rax, -8(%rbp)	# tmp165, fmt
	.loc 1 1775 0
	movl	-20(%rbp), %eax	# code, code.395
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15763
	movzbl	%al, %eax	# D.15763, D.15761
	subl	$1, %eax	#, tmp167
	movl	%eax, -32(%rbp)	# tmp167, i
	jmp	.L307	#
.L313:
	.loc 1 1777 0
	movl	-32(%rbp), %eax	# i, tmp168
	movslq	%eax, %rdx	# tmp168, D.15765
	movq	-8(%rbp), %rax	# fmt, tmp169
	addq	%rdx, %rax	# D.15765, D.15766
	movzbl	(%rax), %eax	# *_89, D.15767
	cmpb	$101, %al	#, D.15767
	jne	.L308	#,
.LBB34:
	.loc 1 1779 0
	movq	-40(%rbp), %rax	# x, tmp170
	movl	-32(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, tmp171
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtx, D.15764
	movl	-44(%rbp), %edx	# is_store, tmp173
	movl	%edx, %esi	# tmp173,
	movq	%rax, %rdi	# D.15764,
	call	may_trap_exp	#
	movl	%eax, -16(%rbp)	# tmp174, tmp_class
	.loc 1 1780 0
	movl	-28(%rbp), %eax	# insn_class, tmp176
	cmpl	%eax, -16(%rbp)	# tmp176, tmp_class
	cmovge	-16(%rbp), %eax	# tmp_class,, tmp175
	movl	%eax, -28(%rbp)	# tmp175, insn_class
.LBE34:
	jmp	.L309	#
.L308:
	.loc 1 1782 0
	movl	-32(%rbp), %eax	# i, tmp177
	movslq	%eax, %rdx	# tmp177, D.15765
	movq	-8(%rbp), %rax	# fmt, tmp178
	addq	%rdx, %rax	# D.15765, D.15766
	movzbl	(%rax), %eax	# *_95, D.15767
	cmpb	$69, %al	#, D.15767
	jne	.L309	#,
.LBB35:
	.loc 1 1785 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L310	#
.L311:
.LBB36:
	.loc 1 1787 0
	movq	-40(%rbp), %rax	# x, tmp179
	movl	-32(%rbp), %edx	# i, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.15768
	movl	-24(%rbp), %edx	# j, tmp183
	movslq	%edx, %rdx	# tmp183, tmp182
	movq	8(%rax,%rdx,8), %rax	# _100->elem, D.15764
	movl	-44(%rbp), %edx	# is_store, tmp184
	movl	%edx, %esi	# tmp184,
	movq	%rax, %rdi	# D.15764,
	call	may_trap_exp	#
	movl	%eax, -12(%rbp)	# tmp185, tmp_class
	.loc 1 1788 0
	movl	-28(%rbp), %eax	# insn_class, tmp187
	cmpl	%eax, -12(%rbp)	# tmp187, tmp_class
	cmovge	-12(%rbp), %eax	# tmp_class,, tmp186
	movl	%eax, -28(%rbp)	# tmp186, insn_class
	.loc 1 1789 0
	cmpl	$5, -28(%rbp)	#, insn_class
	je	.L309	#,
	.loc 1 1789 0 is_stmt 0 discriminator 1
	cmpl	$4, -28(%rbp)	#, insn_class
	je	.L309	#,
.LBE36:
	.loc 1 1785 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L310:
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# x, tmp188
	movl	-32(%rbp), %edx	# i, tmp190
	movslq	%edx, %rdx	# tmp190, tmp189
	movq	8(%rax,%rdx,8), %rax	# x_8(D)->fld[i_1].rtvec, D.15768
	movl	(%rax), %eax	# _98->num_elem, D.15761
	cmpl	-24(%rbp), %eax	# j, D.15761
	jg	.L311	#,
.L309:
.LBE35:
	.loc 1 1793 0 is_stmt 1
	cmpl	$5, -28(%rbp)	#, insn_class
	je	.L312	#,
	.loc 1 1793 0 is_stmt 0 discriminator 1
	cmpl	$4, -28(%rbp)	#, insn_class
	je	.L312	#,
	.loc 1 1775 0 is_stmt 1
	subl	$1, -32(%rbp)	#, i
.L307:
	.loc 1 1775 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, i
	jns	.L313	#,
.L312:
	.loc 1 1796 0 is_stmt 1
	movl	-28(%rbp), %eax	# insn_class, D.15761
.L297:
.LBE33:
	.loc 1 1798 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	may_trap_exp, .-may_trap_exp
	.type	haifa_classify_insn, @function
haifa_classify_insn:
.LFB24:
	.loc 1 1812 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 1813 0
	movq	-40(%rbp), %rax	# insn, tmp87
	movq	32(%rax), %rax	# insn_10(D)->fld[3].rtx, tmp88
	movq	%rax, -8(%rbp)	# tmp88, pat
	.loc 1 1814 0
	movl	$0, -28(%rbp)	#, tmp_class
	.loc 1 1815 0
	movl	$0, -24(%rbp)	#, insn_class
	.loc 1 1818 0
	movq	-8(%rbp), %rax	# pat, tmp89
	movzwl	(%rax), %eax	# pat_11->code, D.15769
	cmpw	$39, %ax	#, D.15769
	jne	.L315	#,
.LBB37:
	.loc 1 1820 0
	movq	-8(%rbp), %rax	# pat, tmp90
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	(%rax), %eax	# _15->num_elem, tmp91
	movl	%eax, -16(%rbp)	# tmp91, len
	.loc 1 1822 0
	movl	-16(%rbp), %eax	# len, tmp95
	subl	$1, %eax	#, tmp94
	movl	%eax, -20(%rbp)	# tmp94, i
	jmp	.L316	#
.L326:
	.loc 1 1824 0
	movq	-8(%rbp), %rax	# pat, tmp96
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	-20(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, tmp97
	movq	8(%rax,%rdx,8), %rax	# _18->elem, D.15771
	movzwl	(%rax), %eax	# _19->code, D.15769
	movzwl	%ax, %eax	# D.15769, tmp99
	movl	%eax, -12(%rbp)	# tmp99, code
	.loc 1 1825 0
	movl	-12(%rbp), %eax	# code, code
	cmpl	$47, %eax	#, code
	je	.L318	#,
	cmpl	$47, %eax	#, code
	ja	.L319	#,
	cmpl	$38, %eax	#, code
	je	.L320	#,
	jmp	.L317	#
.L319:
	cmpl	$49, %eax	#, code
	je	.L321	#,
	cmpl	$52, %eax	#, code
	je	.L320	#,
	jmp	.L317	#
.L321:
	.loc 1 1829 0
	movq	-8(%rbp), %rax	# pat, tmp101
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	-20(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, tmp102
	movq	8(%rax,%rdx,8), %rax	# _22->elem, D.15771
	movq	8(%rax), %rax	# _23->fld[0].rtx, D.15771
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	movl	%eax, -28(%rbp)	# tmp104, tmp_class
	.loc 1 1830 0
	jmp	.L317	#
.L318:
	.loc 1 1833 0
	movq	-8(%rbp), %rax	# pat, tmp105
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	-20(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, tmp106
	movq	8(%rax,%rdx,8), %rax	# _26->elem, D.15771
	movq	8(%rax), %rax	# _27->fld[0].rtx, D.15771
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	movl	%eax, -28(%rbp)	# tmp108, tmp_class
	.loc 1 1834 0
	cmpl	$5, -28(%rbp)	#, tmp_class
	jne	.L322	#,
	.loc 1 1835 0
	jmp	.L317	#
.L322:
	.loc 1 1838 0
	movq	-8(%rbp), %rax	# pat, tmp109
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	-20(%rbp), %edx	# i, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	movq	8(%rax,%rdx,8), %rax	# _30->elem, D.15771
	movq	16(%rax), %rax	# _31->fld[1].rtx, D.15771
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	cmpl	-28(%rbp), %eax	# tmp_class, D.15772
	jl	.L323	#,
	.loc 1 1838 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp112
	movq	8(%rax), %rax	# pat_11->fld[0].rtvec, D.15770
	movl	-20(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, tmp113
	movq	8(%rax,%rdx,8), %rax	# _34->elem, D.15771
	movq	16(%rax), %rax	# _35->fld[1].rtx, D.15771
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	jmp	.L324	#
.L323:
	.loc 1 1838 0 discriminator 2
	movl	-28(%rbp), %eax	# tmp_class, iftmp.396
.L324:
	.loc 1 1838 0 discriminator 3
	movl	%eax, -28(%rbp)	# iftmp.396, tmp_class
	.loc 1 1841 0 is_stmt 1 discriminator 3
	jmp	.L317	#
.L320:
	.loc 1 1844 0
	movl	$5, -28(%rbp)	#, tmp_class
	.loc 1 1845 0
	nop
.L317:
	.loc 1 1849 0
	movl	-24(%rbp), %eax	# insn_class, tmp116
	cmpl	%eax, -28(%rbp)	# tmp116, tmp_class
	cmovge	-28(%rbp), %eax	# tmp_class,, tmp115
	movl	%eax, -24(%rbp)	# tmp115, insn_class
	.loc 1 1850 0
	cmpl	$5, -24(%rbp)	#, insn_class
	je	.L325	#,
	.loc 1 1850 0 is_stmt 0 discriminator 1
	cmpl	$4, -24(%rbp)	#, insn_class
	je	.L325	#,
	.loc 1 1822 0 is_stmt 1
	subl	$1, -20(%rbp)	#, i
.L316:
	.loc 1 1822 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L326	#,
.L325:
.LBE37:
	jmp	.L327	#
.L315:
	.loc 1 1856 0 is_stmt 1
	movq	-8(%rbp), %rax	# pat, tmp117
	movzwl	(%rax), %eax	# pat_11->code, D.15769
	movzwl	%ax, %eax	# D.15769, tmp118
	movl	%eax, -12(%rbp)	# tmp118, code
	.loc 1 1857 0
	movl	-12(%rbp), %eax	# code, code
	cmpl	$47, %eax	#, code
	je	.L329	#,
	cmpl	$47, %eax	#, code
	ja	.L330	#,
	cmpl	$38, %eax	#, code
	je	.L331	#,
	jmp	.L328	#
.L330:
	cmpl	$49, %eax	#, code
	je	.L332	#,
	cmpl	$52, %eax	#, code
	je	.L331	#,
	jmp	.L328	#
.L332:
	.loc 1 1861 0
	movq	-8(%rbp), %rax	# pat, tmp120
	movq	8(%rax), %rax	# pat_11->fld[0].rtx, D.15771
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	movl	%eax, -28(%rbp)	# tmp121, tmp_class
	.loc 1 1862 0
	jmp	.L328	#
.L329:
	.loc 1 1865 0
	movq	-8(%rbp), %rax	# pat, tmp122
	movq	8(%rax), %rax	# pat_11->fld[0].rtx, D.15771
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	movl	%eax, -28(%rbp)	# tmp123, tmp_class
	.loc 1 1866 0
	cmpl	$5, -28(%rbp)	#, tmp_class
	jne	.L333	#,
	.loc 1 1867 0
	jmp	.L328	#
.L333:
	.loc 1 1870 0
	movq	-8(%rbp), %rax	# pat, tmp124
	movq	16(%rax), %rax	# pat_11->fld[1].rtx, D.15771
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	cmpl	-28(%rbp), %eax	# tmp_class, D.15772
	jl	.L334	#,
	.loc 1 1870 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pat, tmp125
	movq	16(%rax), %rax	# pat_11->fld[1].rtx, D.15771
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.15771,
	call	may_trap_exp	#
	jmp	.L335	#
.L334:
	.loc 1 1870 0 discriminator 2
	movl	-28(%rbp), %eax	# tmp_class, iftmp.397
.L335:
	.loc 1 1869 0 is_stmt 1
	movl	%eax, -28(%rbp)	# iftmp.397, tmp_class
	.loc 1 1872 0
	jmp	.L328	#
.L331:
	.loc 1 1875 0
	movl	$5, -28(%rbp)	#, tmp_class
	.loc 1 1876 0
	nop
.L328:
	.loc 1 1879 0
	movl	-28(%rbp), %eax	# tmp_class, tmp126
	movl	%eax, -24(%rbp)	# tmp126, insn_class
.L327:
	.loc 1 1882 0
	movl	-24(%rbp), %eax	# insn_class, D.15772
	.loc 1 1883 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	haifa_classify_insn, .-haifa_classify_insn
	.type	is_prisky, @function
is_prisky:
.LFB25:
	.loc 1 1893 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# load_insn, load_insn
	movl	%esi, -12(%rbp)	# bb_src, bb_src
	movl	%edx, -16(%rbp)	# bb_trg, bb_trg
	.loc 1 1894 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.398
	movq	-8(%rbp), %rax	# load_insn, tmp70
	movl	8(%rax), %eax	# load_insn_3(D)->fld[0].rtint, D.15775
	movslq	%eax, %rdx	# D.15775, D.15776
	movq	%rdx, %rax	# D.15776, tmp71
	addq	%rax, %rax	# tmp71
	addq	%rdx, %rax	# D.15776, tmp71
	salq	$4, %rax	#, tmp72
	addq	%rcx, %rax	# h_i_d.398, D.15777
	movzbl	46(%rax), %eax	# *_7, D.15778
	andl	$2, %eax	#, D.15778
	testb	%al, %al	# D.15778
	je	.L338	#,
	.loc 1 1895 0
	movl	$1, %eax	#, D.15775
	jmp	.L339	#
.L338:
	.loc 1 1897 0
	movq	-8(%rbp), %rax	# load_insn, tmp73
	movq	48(%rax), %rax	# load_insn_3(D)->fld[5].rtx, D.15779
	testq	%rax, %rax	# D.15779
	jne	.L340	#,
	.loc 1 1899 0
	movl	$1, %eax	#, D.15775
	jmp	.L339	#
.L340:
	.loc 1 1901 0
	movl	-16(%rbp), %edx	# bb_trg, tmp74
	movl	-12(%rbp), %ecx	# bb_src, tmp75
	movq	-8(%rbp), %rax	# load_insn, tmp76
	movl	%ecx, %esi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	is_conditionally_protected	#
	testl	%eax, %eax	# D.15775
	je	.L341	#,
	.loc 1 1902 0
	movl	$1, %eax	#, D.15775
	jmp	.L339	#
.L341:
	.loc 1 1904 0
	movl	$0, %eax	#, D.15775
.L339:
	.loc 1 1905 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	is_prisky, .-is_prisky
	.type	is_exception_free, @function
is_exception_free:
.LFB26:
	.loc 1 1915 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	movl	%esi, -28(%rbp)	# bb_src, bb_src
	movl	%edx, -32(%rbp)	# bb_trg, bb_trg
	.loc 1 1916 0
	movq	-24(%rbp), %rax	# insn, tmp70
	movq	%rax, %rdi	# tmp70,
	call	haifa_classify_insn	#
	movl	%eax, -4(%rbp)	# tmp71, insn_class
	.loc 1 1919 0
	movl	-4(%rbp), %eax	# insn_class, insn_class
	testl	%eax, %eax	# insn_class
	je	.L344	#,
	cmpl	$5, %eax	#, insn_class
	je	.L345	#,
	jmp	.L356	#
.L344:
	.loc 1 1922 0
	movl	$1, %eax	#, D.15780
	jmp	.L346	#
.L345:
	.loc 1 1924 0
	movl	$0, %eax	#, D.15780
	jmp	.L346	#
.L356:
	.loc 1 1929 0
	movl	flag_schedule_speculative_load(%rip), %eax	# flag_schedule_speculative_load, flag_schedule_speculative_load.399
	testl	%eax, %eax	# flag_schedule_speculative_load.399
	jne	.L347	#,
	.loc 1 1930 0
	movl	$0, %eax	#, D.15780
	jmp	.L346	#
.L347:
	.loc 1 1931 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.400
	movq	-24(%rbp), %rax	# insn, tmp73
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.15780
	movslq	%eax, %rdx	# D.15780, D.15781
	movq	%rdx, %rax	# D.15781, tmp74
	addq	%rax, %rax	# tmp74
	addq	%rdx, %rax	# D.15781, tmp74
	salq	$4, %rax	#, tmp75
	addq	%rcx, %rax	# h_i_d.400, D.15782
	movzbl	46(%rax), %edx	# _12->is_load_insn, tmp78
	orl	$4, %edx	#, tmp79
	movb	%dl, 46(%rax)	# tmp79, _12->is_load_insn
	.loc 1 1932 0
	movl	-4(%rbp), %eax	# insn_class, insn_class
	cmpl	$2, %eax	#, insn_class
	je	.L349	#,
	cmpl	$2, %eax	#, insn_class
	jg	.L350	#,
	cmpl	$1, %eax	#, insn_class
	je	.L351	#,
	jmp	.L348	#
.L350:
	cmpl	$3, %eax	#, insn_class
	je	.L352	#,
	cmpl	$4, %eax	#, insn_class
	je	.L353	#,
	jmp	.L348	#
.L351:
	.loc 1 1935 0
	movl	$1, %eax	#, D.15780
	jmp	.L346	#
.L353:
	.loc 1 1937 0
	movl	$0, %eax	#, D.15780
	jmp	.L346	#
.L349:
	.loc 1 1939 0
	movl	-32(%rbp), %edx	# bb_trg, tmp81
	movl	-28(%rbp), %ecx	# bb_src, tmp82
	movq	-24(%rbp), %rax	# insn, tmp83
	movl	%ecx, %esi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	is_pfree	#
	testl	%eax, %eax	# D.15780
	je	.L352	#,
	.loc 1 1940 0
	movl	$1, %eax	#, D.15780
	jmp	.L346	#
.L352:
	.loc 1 1943 0
	movl	flag_schedule_speculative_load_dangerous(%rip), %eax	# flag_schedule_speculative_load_dangerous, flag_schedule_speculative_load_dangerous.401
	testl	%eax, %eax	# flag_schedule_speculative_load_dangerous.401
	je	.L354	#,
	.loc 1 1944 0
	movl	-32(%rbp), %edx	# bb_trg, tmp84
	movl	-28(%rbp), %ecx	# bb_src, tmp85
	movq	-24(%rbp), %rax	# insn, tmp86
	movl	%ecx, %esi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	is_prisky	#
	testl	%eax, %eax	# D.15780
	je	.L355	#,
.L354:
	.loc 1 1945 0
	movl	$0, %eax	#, D.15780
	jmp	.L346	#
.L355:
	.loc 1 1946 0
	nop
.L348:
	.loc 1 1950 0
	movl	flag_schedule_speculative_load_dangerous(%rip), %eax	# flag_schedule_speculative_load_dangerous, D.15780
.L346:
	.loc 1 1951 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	is_exception_free, .-is_exception_free
	.local	sched_target_n_insns
	.comm	sched_target_n_insns,4,4
	.local	target_n_insns
	.comm	target_n_insns,4,4
	.local	sched_n_insns
	.comm	sched_n_insns,4,4
	.local	last_was_jump
	.comm	last_was_jump,4,4
	.type	schedule_more_p, @function
schedule_more_p:
.LFB27:
	.loc 1 1976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1977 0
	movl	last_was_jump(%rip), %eax	# last_was_jump, last_was_jump.403
	testl	%eax, %eax	# last_was_jump.403
	jne	.L358	#,
	.loc 1 1977 0 is_stmt 0 discriminator 1
	movl	sched_target_n_insns(%rip), %edx	# sched_target_n_insns, sched_target_n_insns.404
	movl	target_n_insns(%rip), %eax	# target_n_insns, target_n_insns.405
	cmpl	%eax, %edx	# target_n_insns.405, sched_target_n_insns.404
	jge	.L358	#,
	.loc 1 1977 0 discriminator 3
	movl	$1, %eax	#, iftmp.402
	jmp	.L359	#
.L358:
	.loc 1 1977 0 discriminator 2
	movl	$0, %eax	#, iftmp.402
.L359:
	.loc 1 1978 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	schedule_more_p, .-schedule_more_p
	.type	init_ready_list, @function
init_ready_list:
.LFB28:
	.loc 1 1986 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# ready, ready
	.loc 1 1987 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.406
	movq	64(%rax), %rax	# current_sched_info.406_4->prev_head, tmp154
	movq	%rax, -48(%rbp)	# tmp154, prev_head
	.loc 1 1988 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.407
	movq	72(%rax), %rax	# current_sched_info.407_6->next_tail, tmp155
	movq	%rax, -40(%rbp)	# tmp155, next_tail
	.loc 1 1992 0
	movl	$0, target_n_insns(%rip)	#, target_n_insns
	.loc 1 1993 0
	movl	$0, sched_target_n_insns(%rip)	#, sched_target_n_insns
	.loc 1 1994 0
	movl	$0, sched_n_insns(%rip)	#, sched_n_insns
	.loc 1 1995 0
	movl	$0, last_was_jump(%rip)	#, last_was_jump
	.loc 1 1998 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.408
	cmpl	$4, %eax	#, sched_verbose.408
	jle	.L362	#,
	.loc 1 1999 0
	call	debug_dependencies	#
.L362:
	.loc 1 2002 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.409
	cmpl	$1, %eax	#, current_nr_blocks.409
	jle	.L363	#,
	.loc 1 2004 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.410
	movslq	%eax, %rdx	# current_nr_blocks.410, D.15785
	movq	%rdx, %rax	# D.15785, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.15785, tmp156
	salq	$3, %rax	#, tmp157
	movq	%rax, %rdi	# D.15785,
	call	xmalloc	#
	movq	%rax, candidate_table(%rip)	# candidate_table.411, candidate_table
	.loc 1 2007 0
	movl	$0, bblst_last(%rip)	#, bblst_last
	.loc 1 2012 0
	movl	current_nr_blocks(%rip), %edx	# current_nr_blocks, current_nr_blocks.412
	movl	target_bb(%rip), %eax	# target_bb, target_bb.413
	subl	%eax, %edx	# target_bb.413, D.15786
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.414
	imull	%edx, %eax	# D.15786, bblst_size.415
	movl	%eax, bblst_size(%rip)	# bblst_size.415, bblst_size
	.loc 1 2013 0
	movl	bblst_size(%rip), %eax	# bblst_size, bblst_size.416
	cltq
	salq	$2, %rax	#, D.15785
	movq	%rax, %rdi	# D.15785,
	call	xmalloc	#
	movq	%rax, bblst_table(%rip)	# bblst_table.417, bblst_table
	.loc 1 2015 0
	movl	$0, bitlst_table_last(%rip)	#, bitlst_table_last
	.loc 1 2016 0
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.418
	movl	%eax, bitlst_table_size(%rip)	# rgn_nr_edges.418, bitlst_table_size
	.loc 1 2017 0
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.419
	cltq
	salq	$2, %rax	#, D.15785
	movq	%rax, %rdi	# D.15785,
	call	xmalloc	#
	movq	%rax, bitlst_table(%rip)	# bitlst_table.420, bitlst_table
	.loc 1 2019 0
	movl	target_bb(%rip), %eax	# target_bb, target_bb.421
	movl	%eax, %edi	# target_bb.421,
	call	compute_trg_info	#
.L363:
	.loc 1 2024 0
	movq	-48(%rbp), %rax	# prev_head, tmp161
	movq	24(%rax), %rax	# prev_head_5->fld[2].rtx, tmp162
	movq	%rax, -56(%rbp)	# tmp162, insn
	jmp	.L364	#
.L369:
.LBB38:
	.loc 1 2028 0
	movq	-56(%rbp), %rax	# insn, tmp163
	movzwl	(%rax), %eax	# insn_2->code, D.15787
	movzwl	%ax, %eax	# D.15787, D.15786
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15788
	cmpb	$105, %al	#, D.15788
	je	.L365	#,
	.loc 1 2029 0
	jmp	.L366	#
.L365:
	.loc 1 2030 0
	movq	-56(%rbp), %rax	# insn, tmp165
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp166
	movq	%rax, -32(%rbp)	# tmp166, next
	.loc 1 2032 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.422
	movq	-56(%rbp), %rax	# insn, tmp167
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.15786
	movslq	%eax, %rdx	# D.15786, D.15785
	movq	%rdx, %rax	# D.15785, tmp168
	addq	%rax, %rax	# tmp168
	addq	%rdx, %rax	# D.15785, tmp168
	salq	$4, %rax	#, tmp169
	addq	%rcx, %rax	# h_i_d.422, D.15789
	movl	24(%rax), %eax	# _38->dep_count, D.15786
	testl	%eax, %eax	# D.15786
	jne	.L367	#,
	.loc 1 2033 0
	movq	-32(%rbp), %rax	# next, tmp170
	movzbl	3(%rax), %eax	# *next_33, D.15790
	andl	$16, %eax	#, D.15790
	testb	%al, %al	# D.15790
	je	.L368	#,
	.loc 1 2033 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# next, tmp171
	movzwl	(%rax), %eax	# next_33->code, D.15787
	movzwl	%ax, %eax	# D.15787, D.15786
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15788
	cmpb	$105, %al	#, D.15788
	je	.L367	#,
.L368:
	.loc 1 2034 0 is_stmt 1
	movq	-56(%rbp), %rdx	# insn, tmp173
	movq	-88(%rbp), %rax	# ready, tmp174
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# tmp174,
	call	ready_add	#
.L367:
	.loc 1 2035 0
	movq	-56(%rbp), %rax	# insn, tmp175
	movzbl	3(%rax), %eax	# *insn_2, D.15790
	andl	$16, %eax	#, D.15790
	testb	%al, %al	# D.15790
	jne	.L366	#,
	.loc 1 2036 0
	movl	target_n_insns(%rip), %eax	# target_n_insns, target_n_insns.423
	addl	$1, %eax	#, target_n_insns.424
	movl	%eax, target_n_insns(%rip)	# target_n_insns.424, target_n_insns
.L366:
.LBE38:
	.loc 1 2024 0
	movq	-56(%rbp), %rax	# insn, tmp176
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp177
	movq	%rax, -56(%rbp)	# tmp177, insn
.L364:
	.loc 1 2024 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp178
	cmpq	-40(%rbp), %rax	# next_tail, tmp178
	jne	.L369	#,
	.loc 1 2042 0 is_stmt 1
	movl	target_bb(%rip), %eax	# target_bb, target_bb.425
	addl	$1, %eax	#, tmp179
	movl	%eax, -76(%rbp)	# tmp179, bb_src
	jmp	.L370	#
.L378:
	.loc 1 2043 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.426
	movl	-76(%rbp), %eax	# bb_src, tmp180
	movslq	%eax, %rdx	# tmp180, D.15785
	movq	%rdx, %rax	# D.15785, tmp181
	salq	$2, %rax	#, tmp181
	addq	%rdx, %rax	# D.15785, tmp181
	salq	$3, %rax	#, tmp182
	addq	%rcx, %rax	# candidate_table.426, D.15791
	movzbl	(%rax), %eax	# _57->is_valid, D.15788
	testb	%al, %al	# D.15788
	je	.L371	#,
.LBB39:
	.loc 1 2049 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.427
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.428
	movl	-76(%rbp), %edx	# bb_src, tmp183
	addl	%ecx, %edx	# current_blocks.428, D.15786
	movslq	%edx, %rdx	# D.15786, D.15785
	salq	$2, %rdx	#, D.15785
	addq	%rdx, %rax	# D.15785, D.15792
	movl	(%rax), %eax	# *_64, D.15786
	leaq	-72(%rbp), %rdx	#, tmp184
	leaq	-64(%rbp), %rcx	#, tmp185
	movq	%rcx, %rsi	# tmp185,
	movl	%eax, %edi	# D.15786,
	call	get_block_head_tail	#
	.loc 1 2050 0
	movq	-72(%rbp), %rax	# tail, tail.429
	movq	24(%rax), %rax	# tail.429_66->fld[2].rtx, tmp186
	movq	%rax, -24(%rbp)	# tmp186, src_next_tail
	.loc 1 2051 0
	movq	-64(%rbp), %rax	# head, tmp187
	movq	%rax, -16(%rbp)	# tmp187, src_head
	.loc 1 2053 0
	movq	-16(%rbp), %rax	# src_head, tmp188
	movq	%rax, -56(%rbp)	# tmp188, insn
	jmp	.L372	#
.L377:
	.loc 1 2055 0
	movq	-56(%rbp), %rax	# insn, tmp189
	movzwl	(%rax), %eax	# insn_3->code, D.15787
	movzwl	%ax, %eax	# D.15787, D.15786
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15788
	cmpb	$105, %al	#, D.15788
	je	.L373	#,
	.loc 1 2056 0
	jmp	.L374	#
.L373:
	.loc 1 2058 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.430
	movq	-56(%rbp), %rax	# insn, tmp191
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.15786
	movslq	%eax, %rdx	# D.15786, D.15785
	movq	%rdx, %rax	# D.15785, tmp192
	addq	%rax, %rax	# tmp192
	addq	%rdx, %rax	# D.15785, tmp192
	salq	$4, %rax	#, tmp193
	addq	%rcx, %rax	# h_i_d.430, D.15789
	movzbl	46(%rax), %eax	# *_77, D.15790
	andl	$1, %eax	#, D.15790
	testb	%al, %al	# D.15790
	jne	.L374	#,
	.loc 1 2059 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.431
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.432
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.433
	movq	-56(%rbp), %rdx	# insn, tmp194
	movl	8(%rdx), %edx	# insn_3->fld[0].rtint, D.15786
	movslq	%edx, %rdx	# D.15786, tmp195
	addq	$4, %rdx	#, tmp196
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.433_82->data.bb, D.15793
	movl	88(%rax), %eax	# _84->index, D.15786
	cltq
	salq	$2, %rax	#, D.15785
	addq	%rsi, %rax	# block_to_bb.432, D.15792
	movl	(%rax), %eax	# *_88, D.15786
	movslq	%eax, %rdx	# D.15786, D.15785
	movq	%rdx, %rax	# D.15785, tmp197
	salq	$2, %rax	#, tmp197
	addq	%rdx, %rax	# D.15785, tmp197
	salq	$3, %rax	#, tmp198
	addq	%rcx, %rax	# candidate_table.431, D.15791
	movzbl	1(%rax), %eax	# _92->is_speculative, D.15788
	testb	%al, %al	# D.15788
	je	.L375	#,
	.loc 1 2060 0
	movq	-56(%rbp), %rax	# insn, tmp199
	movq	%rax, %rdi	# tmp199,
	call	insn_issue_delay	#
	cmpl	$3, %eax	#, D.15786
	jg	.L374	#,
	.loc 1 2061 0
	movl	-76(%rbp), %edx	# bb_src, tmp200
	movq	-56(%rbp), %rax	# insn, tmp201
	movl	%edx, %esi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	check_live	#
	testl	%eax, %eax	# D.15786
	je	.L374	#,
	.loc 1 2062 0
	movl	target_bb(%rip), %edx	# target_bb, target_bb.434
	movl	-76(%rbp), %ecx	# bb_src, tmp202
	movq	-56(%rbp), %rax	# insn, tmp203
	movl	%ecx, %esi	# tmp202,
	movq	%rax, %rdi	# tmp203,
	call	is_exception_free	#
	testl	%eax, %eax	# D.15786
	je	.L374	#,
.L375:
.LBB40:
	.loc 1 2069 0
	movq	-56(%rbp), %rax	# insn, tmp204
	movq	%rax, %rdi	# tmp204,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp205, next
	.loc 1 2070 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.435
	movq	-56(%rbp), %rax	# insn, tmp206
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.15786
	movslq	%eax, %rdx	# D.15786, D.15785
	movq	%rdx, %rax	# D.15785, tmp207
	addq	%rax, %rax	# tmp207
	addq	%rdx, %rax	# D.15785, tmp207
	salq	$4, %rax	#, tmp208
	addq	%rcx, %rax	# h_i_d.435, D.15789
	movl	24(%rax), %eax	# _103->dep_count, D.15786
	testl	%eax, %eax	# D.15786
	jne	.L374	#,
	.loc 1 2071 0
	cmpq	$0, -8(%rbp)	#, next
	je	.L376	#,
	.loc 1 2072 0
	movq	-8(%rbp), %rax	# next, tmp209
	movzbl	3(%rax), %eax	# *next_98, D.15790
	andl	$16, %eax	#, D.15790
	testb	%al, %al	# D.15790
	je	.L376	#,
	.loc 1 2073 0
	movq	-8(%rbp), %rax	# next, tmp210
	movzwl	(%rax), %eax	# next_98->code, D.15787
	movzwl	%ax, %eax	# D.15787, D.15786
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15788
	cmpb	$105, %al	#, D.15788
	je	.L374	#,
.L376:
	.loc 1 2074 0
	movq	-56(%rbp), %rdx	# insn, tmp212
	movq	-88(%rbp), %rax	# ready, tmp213
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	ready_add	#
.L374:
.LBE40:
	.loc 1 2053 0
	movq	-56(%rbp), %rax	# insn, tmp214
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp215
	movq	%rax, -56(%rbp)	# tmp215, insn
.L372:
	.loc 1 2053 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# insn, tmp216
	cmpq	-24(%rbp), %rax	# src_next_tail, tmp216
	jne	.L377	#,
.L371:
.LBE39:
	.loc 1 2042 0 is_stmt 1
	addl	$1, -76(%rbp)	#, bb_src
.L370:
	.loc 1 2042 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.436
	cmpl	%eax, -76(%rbp)	# current_nr_blocks.436, bb_src
	jl	.L378	#,
	.loc 1 2078 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	init_ready_list, .-init_ready_list
	.type	can_schedule_ready_p, @function
can_schedule_ready_p:
.LFB29:
	.loc 1 2086 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# insn, insn
	.loc 1 2087 0
	movq	-40(%rbp), %rax	# insn, tmp137
	movzwl	(%rax), %eax	# insn_3(D)->code, D.15795
	cmpw	$33, %ax	#, D.15795
	jne	.L380	#,
	.loc 1 2088 0
	movl	$1, last_was_jump(%rip)	#, last_was_jump
.L380:
	.loc 1 2091 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.437
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.438
	movq	-40(%rbp), %rdx	# insn, tmp138
	movl	8(%rdx), %edx	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%edx, %rdx	# D.15794, tmp139
	addq	$4, %rdx	#, tmp140
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.438_6->data.bb, D.15796
	movl	88(%rax), %eax	# _8->index, D.15794
	cltq
	salq	$2, %rax	#, D.15797
	addq	%rcx, %rax	# block_to_bb.437, D.15798
	movl	(%rax), %edx	# *_12, D.15794
	movl	target_bb(%rip), %eax	# target_bb, target_bb.439
	cmpl	%eax, %edx	# target_bb.439, D.15794
	je	.L381	#,
.LBB41:
	.loc 1 2096 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.440
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.441
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.442
	movq	-40(%rbp), %rdx	# insn, tmp141
	movl	8(%rdx), %edx	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%edx, %rdx	# D.15794, tmp142
	addq	$4, %rdx	#, tmp143
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.442_17->data.bb, D.15796
	movl	88(%rax), %eax	# _19->index, D.15794
	cltq
	salq	$2, %rax	#, D.15797
	addq	%rsi, %rax	# block_to_bb.441, D.15798
	movl	(%rax), %eax	# *_23, D.15794
	movslq	%eax, %rdx	# D.15794, D.15797
	movq	%rdx, %rax	# D.15797, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.15797, tmp144
	salq	$3, %rax	#, tmp145
	addq	%rcx, %rax	# candidate_table.440, D.15799
	movzbl	1(%rax), %eax	# _27->is_speculative, D.15800
	testb	%al, %al	# D.15800
	je	.L382	#,
	.loc 1 2098 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.443
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.444
	movq	-40(%rbp), %rdx	# insn, tmp146
	movl	8(%rdx), %edx	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%edx, %rdx	# D.15794, tmp147
	addq	$4, %rdx	#, tmp148
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.444_30->data.bb, D.15796
	movl	88(%rax), %eax	# _32->index, D.15794
	cltq
	salq	$2, %rax	#, D.15797
	addq	%rcx, %rax	# block_to_bb.443, D.15798
	movl	(%rax), %edx	# *_36, D.15794
	movq	-40(%rbp), %rax	# insn, tmp149
	movl	%edx, %esi	# D.15794,
	movq	%rax, %rdi	# tmp149,
	call	check_live	#
	testl	%eax, %eax	# D.15794
	jne	.L383	#,
	.loc 1 2099 0
	movl	$0, %eax	#, D.15794
	jmp	.L384	#
.L383:
	.loc 1 2100 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.445
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.446
	movq	-40(%rbp), %rdx	# insn, tmp150
	movl	8(%rdx), %edx	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%edx, %rdx	# D.15794, tmp151
	addq	$4, %rdx	#, tmp152
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.446_41->data.bb, D.15796
	movl	88(%rax), %eax	# _43->index, D.15794
	cltq
	salq	$2, %rax	#, D.15797
	addq	%rcx, %rax	# block_to_bb.445, D.15798
	movl	(%rax), %edx	# *_47, D.15794
	movq	-40(%rbp), %rax	# insn, tmp153
	movl	%edx, %esi	# D.15794,
	movq	%rax, %rdi	# tmp153,
	call	update_live	#
	.loc 1 2103 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.447
	movq	-40(%rbp), %rax	# insn, tmp154
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%eax, %rdx	# D.15794, D.15797
	movq	%rdx, %rax	# D.15797, tmp155
	addq	%rax, %rax	# tmp155
	addq	%rdx, %rax	# D.15797, tmp155
	salq	$4, %rax	#, tmp156
	addq	%rcx, %rax	# h_i_d.447, D.15801
	movzbl	46(%rax), %eax	# *_53, D.15802
	andl	$4, %eax	#, D.15802
	testb	%al, %al	# D.15802
	jne	.L385	#,
	.loc 1 2103 0 is_stmt 0 discriminator 1
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.448
	movq	-40(%rbp), %rax	# insn, tmp157
	movl	8(%rax), %eax	# insn_3(D)->fld[0].rtint, D.15794
	movslq	%eax, %rdx	# D.15794, D.15797
	movq	%rdx, %rax	# D.15797, tmp158
	addq	%rax, %rax	# tmp158
	addq	%rdx, %rax	# D.15797, tmp158
	salq	$4, %rax	#, tmp159
	addq	%rcx, %rax	# h_i_d.448, D.15801
	movzbl	46(%rax), %eax	# *_60, D.15802
	andl	$2, %eax	#, D.15802
	testb	%al, %al	# D.15802
	je	.L386	#,
.L385:
	.loc 1 2104 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp160
	movq	%rax, %rdi	# tmp160,
	call	set_spec_fed	#
.L386:
	.loc 1 2106 0
	movl	nr_spec(%rip), %eax	# nr_spec, nr_spec.449
	addl	$1, %eax	#, nr_spec.450
	movl	%eax, nr_spec(%rip)	# nr_spec.450, nr_spec
.L382:
	.loc 1 2108 0
	movl	nr_inter(%rip), %eax	# nr_inter, nr_inter.451
	addl	$1, %eax	#, nr_inter.452
	movl	%eax, nr_inter(%rip)	# nr_inter.452, nr_inter
	.loc 1 2115 0
	movq	-40(%rbp), %rax	# insn, tmp161
	movq	%rax, -24(%rbp)	# tmp161, temp
	.loc 1 2116 0
	jmp	.L387	#
.L388:
	.loc 1 2117 0
	movq	-24(%rbp), %rax	# temp, tmp162
	movq	16(%rax), %rax	# temp_1->fld[1].rtx, tmp163
	movq	%rax, -24(%rbp)	# tmp163, temp
.L387:
	.loc 1 2116 0 discriminator 1
	movq	-24(%rbp), %rax	# temp, tmp164
	movzbl	3(%rax), %eax	# *temp_1, D.15802
	andl	$16, %eax	#, D.15802
	testb	%al, %al	# D.15802
	jne	.L388	#,
	.loc 1 2120 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.453
	movq	-24(%rbp), %rdx	# temp, tmp165
	movl	8(%rdx), %edx	# temp_1->fld[0].rtint, D.15794
	movslq	%edx, %rdx	# D.15794, tmp166
	addq	$4, %rdx	#, tmp167
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.453_71->data.bb, tmp168
	movq	%rax, -16(%rbp)	# tmp168, b1
	.loc 1 2121 0
	movq	-16(%rbp), %rax	# b1, tmp169
	movq	(%rax), %rax	# b1_73->head, D.15803
	cmpq	-24(%rbp), %rax	# temp, D.15803
	jne	.L389	#,
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# b1, tmp170
	movq	8(%rax), %rax	# b1_73->end, D.15803
	cmpq	-40(%rbp), %rax	# insn, D.15803
	jne	.L389	#,
.LBB42:
	.loc 1 2126 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp171
	movq	%rax, %rsi	# tmp171,
	movl	$-99, %edi	#,
	call	emit_note_after	#
	movq	%rax, -8(%rbp)	# tmp172, note
	.loc 1 2127 0
	movq	-16(%rbp), %rax	# b1, tmp173
	movq	-8(%rbp), %rdx	# note, tmp174
	movq	%rdx, (%rax)	# tmp174, b1_73->head
	.loc 1 2128 0
	movq	-16(%rbp), %rax	# b1, tmp175
	movq	-8(%rbp), %rdx	# note, tmp176
	movq	%rdx, 8(%rax)	# tmp176, b1_73->end
.LBE42:
	.loc 1 2122 0
	jmp	.L390	#
.L389:
	.loc 1 2130 0
	movq	-16(%rbp), %rax	# b1, tmp177
	movq	8(%rax), %rax	# b1_73->end, D.15803
	cmpq	-40(%rbp), %rax	# insn, D.15803
	jne	.L391	#,
	.loc 1 2135 0
	movq	-24(%rbp), %rax	# temp, tmp178
	movq	16(%rax), %rdx	# temp_1->fld[1].rtx, D.15803
	movq	-16(%rbp), %rax	# b1, tmp179
	movq	%rdx, 8(%rax)	# D.15803, b1_73->end
	jmp	.L390	#
.L391:
	.loc 1 2137 0
	movq	-16(%rbp), %rax	# b1, tmp180
	movq	(%rax), %rax	# b1_73->head, D.15803
	cmpq	-24(%rbp), %rax	# temp, D.15803
	jne	.L390	#,
	.loc 1 2142 0
	movq	-40(%rbp), %rax	# insn, tmp181
	movq	24(%rax), %rdx	# insn_3(D)->fld[2].rtx, D.15803
	movq	-16(%rbp), %rax	# b1, tmp182
	movq	%rdx, (%rax)	# D.15803, b1_73->head
.LBE41:
	jmp	.L392	#
.L390:
	jmp	.L392	#
.L381:
	.loc 1 2148 0
	movl	sched_target_n_insns(%rip), %eax	# sched_target_n_insns, sched_target_n_insns.454
	addl	$1, %eax	#, sched_target_n_insns.455
	movl	%eax, sched_target_n_insns(%rip)	# sched_target_n_insns.455, sched_target_n_insns
.L392:
	.loc 1 2150 0
	movl	sched_n_insns(%rip), %eax	# sched_n_insns, sched_n_insns.456
	addl	$1, %eax	#, sched_n_insns.457
	movl	%eax, sched_n_insns(%rip)	# sched_n_insns.457, sched_n_insns
	.loc 1 2152 0
	movl	$1, %eax	#, D.15794
.L384:
	.loc 1 2153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	can_schedule_ready_p, .-can_schedule_ready_p
	.type	new_ready, @function
new_ready:
.LFB30:
	.loc 1 2161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# next, next
	.loc 1 2164 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.458
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.459
	movq	-8(%rbp), %rdx	# next, tmp128
	movl	8(%rdx), %edx	# next_4(D)->fld[0].rtint, D.15804
	movslq	%edx, %rdx	# D.15804, tmp129
	addq	$4, %rdx	#, tmp130
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.459_3->data.bb, D.15805
	movl	88(%rax), %eax	# _6->index, D.15804
	cltq
	salq	$2, %rax	#, D.15806
	addq	%rcx, %rax	# block_to_bb.458, D.15807
	movl	(%rax), %edx	# *_10, D.15804
	movl	target_bb(%rip), %eax	# target_bb, target_bb.460
	cmpl	%eax, %edx	# target_bb.460, D.15804
	je	.L394	#,
	.loc 1 2165 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.461
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.462
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.463
	movq	-8(%rbp), %rdx	# next, tmp131
	movl	8(%rdx), %edx	# next_4(D)->fld[0].rtint, D.15804
	movslq	%edx, %rdx	# D.15804, tmp132
	addq	$4, %rdx	#, tmp133
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.463_15->data.bb, D.15805
	movl	88(%rax), %eax	# _17->index, D.15804
	cltq
	salq	$2, %rax	#, D.15806
	addq	%rsi, %rax	# block_to_bb.462, D.15807
	movl	(%rax), %eax	# *_21, D.15804
	movslq	%eax, %rdx	# D.15804, D.15806
	movq	%rdx, %rax	# D.15806, tmp134
	salq	$2, %rax	#, tmp134
	addq	%rdx, %rax	# D.15806, tmp134
	salq	$3, %rax	#, tmp135
	addq	%rcx, %rax	# candidate_table.461, D.15808
	movzbl	(%rax), %eax	# _25->is_valid, D.15809
	testb	%al, %al	# D.15809
	je	.L395	#,
	.loc 1 2166 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.464
	movq	-8(%rbp), %rax	# next, tmp136
	movl	8(%rax), %eax	# next_4(D)->fld[0].rtint, D.15804
	movslq	%eax, %rdx	# D.15804, D.15806
	movq	%rdx, %rax	# D.15806, tmp137
	addq	%rax, %rax	# tmp137
	addq	%rdx, %rax	# D.15806, tmp137
	salq	$4, %rax	#, tmp138
	addq	%rcx, %rax	# h_i_d.464, D.15810
	movzbl	46(%rax), %eax	# *_31, D.15811
	andl	$1, %eax	#, D.15811
	testb	%al, %al	# D.15811
	jne	.L395	#,
	.loc 1 2167 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.465
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.466
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.467
	movq	-8(%rbp), %rdx	# next, tmp139
	movl	8(%rdx), %edx	# next_4(D)->fld[0].rtint, D.15804
	movslq	%edx, %rdx	# D.15804, tmp140
	addq	$4, %rdx	#, tmp141
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.467_36->data.bb, D.15805
	movl	88(%rax), %eax	# _38->index, D.15804
	cltq
	salq	$2, %rax	#, D.15806
	addq	%rsi, %rax	# block_to_bb.466, D.15807
	movl	(%rax), %eax	# *_42, D.15804
	movslq	%eax, %rdx	# D.15804, D.15806
	movq	%rdx, %rax	# D.15806, tmp142
	salq	$2, %rax	#, tmp142
	addq	%rdx, %rax	# D.15806, tmp142
	salq	$3, %rax	#, tmp143
	addq	%rcx, %rax	# candidate_table.465, D.15808
	movzbl	1(%rax), %eax	# _46->is_speculative, D.15809
	testb	%al, %al	# D.15809
	je	.L394	#,
	.loc 1 2168 0
	movq	-8(%rbp), %rax	# next, tmp144
	movq	%rax, %rdi	# tmp144,
	call	insn_issue_delay	#
	cmpl	$3, %eax	#, D.15804
	jg	.L395	#,
	.loc 1 2169 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.468
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.469
	movq	-8(%rbp), %rdx	# next, tmp145
	movl	8(%rdx), %edx	# next_4(D)->fld[0].rtint, D.15804
	movslq	%edx, %rdx	# D.15804, tmp146
	addq	$4, %rdx	#, tmp147
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.469_50->data.bb, D.15805
	movl	88(%rax), %eax	# _52->index, D.15804
	cltq
	salq	$2, %rax	#, D.15806
	addq	%rcx, %rax	# block_to_bb.468, D.15807
	movl	(%rax), %edx	# *_56, D.15804
	movq	-8(%rbp), %rax	# next, tmp148
	movl	%edx, %esi	# D.15804,
	movq	%rax, %rdi	# tmp148,
	call	check_live	#
	testl	%eax, %eax	# D.15804
	je	.L395	#,
	.loc 1 2170 0
	movl	target_bb(%rip), %edx	# target_bb, target_bb.470
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.471
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.472
	movq	-8(%rbp), %rcx	# next, tmp149
	movl	8(%rcx), %ecx	# next_4(D)->fld[0].rtint, D.15804
	movslq	%ecx, %rcx	# D.15804, tmp150
	addq	$4, %rcx	#, tmp151
	movq	(%rax,%rcx,8), %rax	# basic_block_for_insn.472_61->data.bb, D.15805
	movl	88(%rax), %eax	# _63->index, D.15804
	cltq
	salq	$2, %rax	#, D.15806
	addq	%rsi, %rax	# block_to_bb.471, D.15807
	movl	(%rax), %ecx	# *_67, D.15804
	movq	-8(%rbp), %rax	# next, tmp152
	movl	%ecx, %esi	# D.15804,
	movq	%rax, %rdi	# tmp152,
	call	is_exception_free	#
	testl	%eax, %eax	# D.15804
	jne	.L394	#,
.L395:
	.loc 1 2171 0
	movl	$0, %eax	#, D.15804
	jmp	.L396	#
.L394:
	.loc 1 2172 0
	movl	$1, %eax	#, D.15804
.L396:
	.loc 1 2173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	new_ready, .-new_ready
	.section	.rodata
.LC17:
	.string	"b%3d: i%4d"
.LC18:
	.string	"%d/b%d"
.LC19:
	.string	"%d"
	.text
	.type	rgn_print_insn, @function
rgn_print_insn:
.LFB31:
	.loc 1 2184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	movl	%esi, -12(%rbp)	# aligned, aligned
	.loc 1 2187 0
	cmpl	$0, -12(%rbp)	#, aligned
	je	.L398	#,
	.loc 1 2188 0
	movq	-8(%rbp), %rax	# insn, tmp93
	movl	8(%rax), %edx	# insn_2(D)->fld[0].rtint, D.15812
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.473
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.474
	movq	-8(%rbp), %rcx	# insn, tmp94
	movl	8(%rcx), %ecx	# insn_2(D)->fld[0].rtint, D.15812
	movslq	%ecx, %rcx	# D.15812, tmp95
	addq	$4, %rcx	#, tmp96
	movq	(%rax,%rcx,8), %rax	# basic_block_for_insn.474_5->data.bb, D.15813
	movl	88(%rax), %eax	# _7->index, D.15812
	cltq
	salq	$2, %rax	#, D.15814
	addq	%rsi, %rax	# block_to_bb.473, D.15815
	movl	(%rax), %eax	# *_11, D.15812
	movl	%edx, %ecx	# D.15812,
	movl	%eax, %edx	# D.15812,
	movl	$.LC17, %esi	#,
	movl	$tmp.11418, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L399	#
.L398:
	.loc 1 2191 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.475
	cmpl	$1, %eax	#, current_nr_blocks.475
	jle	.L400	#,
	.loc 1 2191 0 is_stmt 0 discriminator 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.476
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.477
	movq	-8(%rbp), %rdx	# insn, tmp97
	movl	8(%rdx), %edx	# insn_2(D)->fld[0].rtint, D.15812
	movslq	%edx, %rdx	# D.15812, tmp98
	addq	$4, %rdx	#, tmp99
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.477_15->data.bb, D.15813
	movl	88(%rax), %eax	# _17->index, D.15812
	cltq
	salq	$2, %rax	#, D.15814
	addq	%rcx, %rax	# block_to_bb.476, D.15815
	movl	(%rax), %edx	# *_21, D.15812
	movl	target_bb(%rip), %eax	# target_bb, target_bb.478
	cmpl	%eax, %edx	# target_bb.478, D.15812
	je	.L400	#,
	.loc 1 2192 0 is_stmt 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.479
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.480
	movq	-8(%rbp), %rdx	# insn, tmp100
	movl	8(%rdx), %edx	# insn_2(D)->fld[0].rtint, D.15812
	movslq	%edx, %rdx	# D.15812, tmp101
	addq	$4, %rdx	#, tmp102
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.480_25->data.bb, D.15813
	movl	88(%rax), %eax	# _27->index, D.15812
	cltq
	salq	$2, %rax	#, D.15814
	addq	%rcx, %rax	# block_to_bb.479, D.15815
	movl	(%rax), %edx	# *_31, D.15812
	movq	-8(%rbp), %rax	# insn, tmp103
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.15812
	movl	%edx, %ecx	# D.15812,
	movl	%eax, %edx	# D.15812,
	movl	$.LC18, %esi	#,
	movl	$tmp.11418, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L399	#
.L400:
	.loc 1 2194 0
	movq	-8(%rbp), %rax	# insn, tmp104
	movl	8(%rax), %eax	# insn_2(D)->fld[0].rtint, D.15812
	movl	%eax, %edx	# D.15812,
	movl	$.LC19, %esi	#,
	movl	$tmp.11418, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
.L399:
	.loc 1 2196 0
	movl	$tmp.11418, %eax	#, D.15816
	.loc 1 2197 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	rgn_print_insn, .-rgn_print_insn
	.type	rgn_rank, @function
rgn_rank:
.LFB32:
	.loc 1 2206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# insn1, insn1
	movq	%rsi, -32(%rbp)	# insn2, insn2
	.loc 1 2208 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.481
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.482
	movq	-24(%rbp), %rdx	# insn1, tmp177
	movl	8(%rdx), %edx	# insn1_4(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp178
	addq	$4, %rdx	#, tmp179
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.482_3->data.bb, D.15821
	movl	88(%rax), %eax	# _6->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rcx, %rax	# block_to_bb.481, D.15823
	movl	(%rax), %ecx	# *_10, D.15820
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.483
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.484
	movq	-32(%rbp), %rdx	# insn2, tmp180
	movl	8(%rdx), %edx	# insn2_14(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp181
	addq	$4, %rdx	#, tmp182
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.484_13->data.bb, D.15821
	movl	88(%rax), %eax	# _16->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rsi, %rax	# block_to_bb.483, D.15823
	movl	(%rax), %eax	# *_20, D.15820
	cmpl	%eax, %ecx	# D.15820, D.15820
	je	.L403	#,
.LBB43:
	.loc 1 2213 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.485
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.486
	movq	-32(%rbp), %rdx	# insn2, tmp183
	movl	8(%rdx), %edx	# insn2_14(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp184
	addq	$4, %rdx	#, tmp185
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.486_23->data.bb, D.15821
	movl	88(%rax), %eax	# _25->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rcx, %rax	# block_to_bb.485, D.15823
	movl	(%rax), %edx	# *_29, D.15820
	movl	target_bb(%rip), %eax	# target_bb, target_bb.487
	cmpl	%eax, %edx	# target_bb.487, D.15820
	jne	.L404	#,
	.loc 1 2213 0 is_stmt 0 discriminator 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.488
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.489
	movq	-24(%rbp), %rdx	# insn1, tmp186
	movl	8(%rdx), %edx	# insn1_4(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp187
	addq	$4, %rdx	#, tmp188
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.489_33->data.bb, D.15821
	movl	88(%rax), %eax	# _35->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rcx, %rax	# block_to_bb.488, D.15823
	movl	(%rax), %edx	# *_39, D.15820
	movl	target_bb(%rip), %eax	# target_bb, target_bb.490
	cmpl	%eax, %edx	# target_bb.490, D.15820
	je	.L404	#,
	.loc 1 2214 0 is_stmt 1
	movl	$1, %eax	#, D.15820
	jmp	.L405	#
.L404:
	.loc 1 2215 0
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.491
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.492
	movq	-24(%rbp), %rdx	# insn1, tmp189
	movl	8(%rdx), %edx	# insn1_4(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp190
	addq	$4, %rdx	#, tmp191
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.492_44->data.bb, D.15821
	movl	88(%rax), %eax	# _46->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rcx, %rax	# block_to_bb.491, D.15823
	movl	(%rax), %edx	# *_50, D.15820
	movl	target_bb(%rip), %eax	# target_bb, target_bb.493
	cmpl	%eax, %edx	# target_bb.493, D.15820
	jne	.L406	#,
	.loc 1 2215 0 is_stmt 0 discriminator 1
	movq	block_to_bb(%rip), %rcx	# block_to_bb, block_to_bb.494
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.495
	movq	-32(%rbp), %rdx	# insn2, tmp192
	movl	8(%rdx), %edx	# insn2_14(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp193
	addq	$4, %rdx	#, tmp194
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.495_54->data.bb, D.15821
	movl	88(%rax), %eax	# _56->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rcx, %rax	# block_to_bb.494, D.15823
	movl	(%rax), %edx	# *_60, D.15820
	movl	target_bb(%rip), %eax	# target_bb, target_bb.496
	cmpl	%eax, %edx	# target_bb.496, D.15820
	je	.L406	#,
	.loc 1 2216 0 is_stmt 1
	movl	$-1, %eax	#, D.15820
	jmp	.L405	#
.L406:
	.loc 1 2219 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.497
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.498
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.499
	movq	-24(%rbp), %rdx	# insn1, tmp195
	movl	8(%rdx), %edx	# insn1_4(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp196
	addq	$4, %rdx	#, tmp197
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.499_66->data.bb, D.15821
	movl	88(%rax), %eax	# _68->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rsi, %rax	# block_to_bb.498, D.15823
	movl	(%rax), %eax	# *_72, D.15820
	movslq	%eax, %rdx	# D.15820, D.15822
	movq	%rdx, %rax	# D.15822, tmp198
	salq	$2, %rax	#, tmp198
	addq	%rdx, %rax	# D.15822, tmp198
	salq	$3, %rax	#, tmp199
	addq	%rcx, %rax	# candidate_table.497, D.15824
	movzbl	1(%rax), %eax	# _76->is_speculative, D.15825
	movsbl	%al, %ecx	# D.15825, D.15820
	movq	candidate_table(%rip), %rsi	# candidate_table, candidate_table.500
	movq	block_to_bb(%rip), %rdi	# block_to_bb, block_to_bb.501
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.502
	movq	-32(%rbp), %rdx	# insn2, tmp200
	movl	8(%rdx), %edx	# insn2_14(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp201
	addq	$4, %rdx	#, tmp202
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.502_81->data.bb, D.15821
	movl	88(%rax), %eax	# _83->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rdi, %rax	# block_to_bb.501, D.15823
	movl	(%rax), %eax	# *_87, D.15820
	movslq	%eax, %rdx	# D.15820, D.15822
	movq	%rdx, %rax	# D.15822, tmp203
	salq	$2, %rax	#, tmp203
	addq	%rdx, %rax	# D.15822, tmp203
	salq	$3, %rax	#, tmp204
	addq	%rsi, %rax	# candidate_table.500, D.15824
	movzbl	1(%rax), %eax	# _91->is_speculative, D.15825
	movsbl	%al, %eax	# D.15825, D.15820
	subl	%eax, %ecx	# D.15820, tmp205
	movl	%ecx, %eax	# tmp205, tmp205
	movl	%eax, -8(%rbp)	# tmp205, spec_val
	.loc 1 2220 0
	cmpl	$0, -8(%rbp)	#, spec_val
	je	.L407	#,
	.loc 1 2221 0
	movl	-8(%rbp), %eax	# spec_val, D.15820
	jmp	.L405	#
.L407:
	.loc 1 2224 0
	movq	candidate_table(%rip), %rcx	# candidate_table, candidate_table.503
	movq	block_to_bb(%rip), %rsi	# block_to_bb, block_to_bb.504
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.505
	movq	-32(%rbp), %rdx	# insn2, tmp206
	movl	8(%rdx), %edx	# insn2_14(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp207
	addq	$4, %rdx	#, tmp208
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.505_98->data.bb, D.15821
	movl	88(%rax), %eax	# _100->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rsi, %rax	# block_to_bb.504, D.15823
	movl	(%rax), %eax	# *_104, D.15820
	movslq	%eax, %rdx	# D.15820, D.15822
	movq	%rdx, %rax	# D.15822, tmp209
	salq	$2, %rax	#, tmp209
	addq	%rdx, %rax	# D.15822, tmp209
	salq	$3, %rax	#, tmp210
	addq	%rcx, %rax	# candidate_table.503, D.15824
	movl	4(%rax), %ecx	# _108->src_prob, D.15820
	movq	candidate_table(%rip), %rsi	# candidate_table, candidate_table.506
	movq	block_to_bb(%rip), %rdi	# block_to_bb, block_to_bb.507
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.508
	movq	-24(%rbp), %rdx	# insn1, tmp211
	movl	8(%rdx), %edx	# insn1_4(D)->fld[0].rtint, D.15820
	movslq	%edx, %rdx	# D.15820, tmp212
	addq	$4, %rdx	#, tmp213
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.508_112->data.bb, D.15821
	movl	88(%rax), %eax	# _114->index, D.15820
	cltq
	salq	$2, %rax	#, D.15822
	addq	%rdi, %rax	# block_to_bb.507, D.15823
	movl	(%rax), %eax	# *_118, D.15820
	movslq	%eax, %rdx	# D.15820, D.15822
	movq	%rdx, %rax	# D.15822, tmp214
	salq	$2, %rax	#, tmp214
	addq	%rdx, %rax	# D.15822, tmp214
	salq	$3, %rax	#, tmp215
	addq	%rsi, %rax	# candidate_table.506, D.15824
	movl	4(%rax), %eax	# _122->src_prob, D.15820
	subl	%eax, %ecx	# D.15820, tmp216
	movl	%ecx, %eax	# tmp216, tmp216
	movl	%eax, -4(%rbp)	# tmp216, prob_val
	.loc 1 2225 0
	cmpl	$0, -4(%rbp)	#, prob_val
	je	.L403	#,
	.loc 1 2226 0
	movl	-4(%rbp), %eax	# prob_val, D.15820
	jmp	.L405	#
.L403:
.LBE43:
	.loc 1 2228 0
	movl	$0, %eax	#, D.15820
.L405:
	.loc 1 2229 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	rgn_rank, .-rgn_rank
	.type	contributes_to_priority, @function
contributes_to_priority:
.LFB33:
	.loc 1 2238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# next, next
	movq	%rsi, -16(%rbp)	# insn, insn
	.loc 1 2239 0
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.509
	movq	-8(%rbp), %rdx	# next, tmp70
	movl	8(%rdx), %edx	# next_2(D)->fld[0].rtint, D.15826
	movslq	%edx, %rdx	# D.15826, tmp71
	addq	$4, %rdx	#, tmp72
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.509_1->data.bb, D.15827
	movl	88(%rax), %ecx	# _4->index, D.15826
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.510
	movq	-16(%rbp), %rdx	# insn, tmp73
	movl	8(%rdx), %edx	# insn_7(D)->fld[0].rtint, D.15826
	movslq	%edx, %rdx	# D.15826, tmp74
	addq	$4, %rdx	#, tmp75
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.510_6->data.bb, D.15827
	movl	88(%rax), %eax	# _9->index, D.15826
	cmpl	%eax, %ecx	# D.15826, D.15826
	sete	%al	#, D.15828
	movzbl	%al, %eax	# D.15828, D.15826
	.loc 1 2240 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	contributes_to_priority, .-contributes_to_priority
	.type	compute_jump_reg_dependencies, @function
compute_jump_reg_dependencies:
.LFB34:
	.loc 1 2249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	movq	%rsi, -16(%rbp)	# set, set
	.loc 1 2252 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	compute_jump_reg_dependencies, .-compute_jump_reg_dependencies
	.data
	.align 32
	.type	region_sched_info, @object
	.size	region_sched_info, 104
region_sched_info:
# init_ready_list:
	.quad	init_ready_list
# can_schedule_ready_p:
	.quad	can_schedule_ready_p
# schedule_more_p:
	.quad	schedule_more_p
# new_ready:
	.quad	new_ready
# rank:
	.quad	rgn_rank
# print_insn:
	.quad	rgn_print_insn
# contributes_to_priority:
	.quad	contributes_to_priority
# compute_jump_reg_dependencies:
	.quad	compute_jump_reg_dependencies
# prev_head:
	.quad	0
# next_tail:
	.quad	0
# head:
	.quad	0
# tail:
	.quad	0
# queue_must_finish_empty:
# use_cselib:
	.byte	0
	.zero	7
	.text
	.type	sets_likely_spilled, @function
sets_likely_spilled:
.LFB35:
	.loc 1 2278 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pat, pat
	.loc 1 2279 0
	movb	$0, -1(%rbp)	#, ret
	.loc 1 2280 0
	leaq	-1(%rbp), %rdx	#, tmp61
	movq	-24(%rbp), %rax	# pat, tmp62
	movl	$sets_likely_spilled_1, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	note_stores	#
	.loc 1 2281 0
	movzbl	-1(%rbp), %eax	# ret, D.15829
	.loc 1 2282 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	sets_likely_spilled, .-sets_likely_spilled
	.type	sets_likely_spilled_1, @function
sets_likely_spilled_1:
.LFB36:
	.loc 1 2288 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# x, x
	movq	%rsi, -32(%rbp)	# pat, pat
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 2289 0
	movq	-40(%rbp), %rax	# data, tmp76
	movq	%rax, -8(%rbp)	# tmp76, ret
	.loc 1 2291 0
	movq	-32(%rbp), %rax	# pat, tmp77
	movzwl	(%rax), %eax	# pat_3(D)->code, D.15830
	cmpw	$47, %ax	#, D.15830
	jne	.L413	#,
	.loc 1 2292 0
	movq	-24(%rbp), %rax	# x, tmp78
	movzwl	(%rax), %eax	# x_5(D)->code, D.15830
	cmpw	$61, %ax	#, D.15830
	jne	.L413	#,
	.loc 1 2293 0
	movq	-24(%rbp), %rax	# x, tmp79
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	cmpl	$52, %eax	#, D.15831
	ja	.L413	#,
	.loc 1 2294 0
	movq	-24(%rbp), %rax	# x, tmp80
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp81
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$1, %eax	#, D.15832
	je	.L415	#,
	.loc 1 2294 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp82
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp83
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$2, %eax	#, D.15832
	je	.L415	#,
	movq	-24(%rbp), %rax	# x, tmp84
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp85
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$3, %eax	#, D.15832
	je	.L415	#,
	movq	-24(%rbp), %rax	# x, tmp86
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp87
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$4, %eax	#, D.15832
	je	.L415	#,
	movq	-24(%rbp), %rax	# x, tmp88
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp89
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$7, %eax	#, D.15832
	je	.L415	#,
	movq	-24(%rbp), %rax	# x, tmp90
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp91
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$5, %eax	#, D.15832
	je	.L415	#,
	movq	-24(%rbp), %rax	# x, tmp92
	movl	8(%rax), %eax	# x_5(D)->fld[0].rtuint, D.15831
	movl	%eax, %eax	# D.15831, tmp93
	movl	regclass_map(,%rax,4), %eax	# regclass_map, D.15832
	cmpl	$6, %eax	#, D.15832
	jne	.L413	#,
.L415:
	.loc 1 2295 0 is_stmt 1
	movq	-8(%rbp), %rax	# ret, tmp94
	movb	$1, (%rax)	#, *ret_2
.L413:
	.loc 1 2296 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	sets_likely_spilled_1, .-sets_likely_spilled_1
	.type	add_branch_dependences, @function
add_branch_dependences:
.LFB37:
	.loc 1 2304 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# head, head
	movq	%rsi, -48(%rbp)	# tail, tail
	.loc 1 2323 0
	movq	-48(%rbp), %rax	# tail, tmp101
	movq	%rax, -24(%rbp)	# tmp101, insn
	.loc 1 2324 0
	movq	$0, -16(%rbp)	#, last
	.loc 1 2325 0
	jmp	.L417	#
.L424:
	.loc 1 2338 0
	movq	-24(%rbp), %rax	# insn, tmp102
	movzwl	(%rax), %eax	# insn_3->code, D.15833
	cmpw	$37, %ax	#, D.15833
	je	.L418	#,
	.loc 1 2340 0
	cmpq	$0, -16(%rbp)	#, last
	je	.L419	#,
	.loc 1 2340 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# last, tmp103
	movq	48(%rax), %rdx	# last_7->fld[5].rtx, D.15834
	movq	-24(%rbp), %rax	# insn, tmp104
	movq	%rdx, %rsi	# D.15834,
	movq	%rax, %rdi	# tmp104,
	call	find_insn_list	#
	testq	%rax, %rax	# D.15834
	jne	.L419	#,
	.loc 1 2342 0 is_stmt 1
	movq	-24(%rbp), %rcx	# insn, tmp105
	movq	-16(%rbp), %rax	# last, tmp106
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	add_dependence	#
	.loc 1 2343 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.511
	movq	-24(%rbp), %rax	# insn, tmp107
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.15836
	movslq	%eax, %rdx	# D.15836, D.15837
	movq	%rdx, %rax	# D.15837, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# D.15837, tmp108
	salq	$4, %rax	#, tmp109
	addq	%rcx, %rax	# h_i_d.511, D.15838
	movl	32(%rax), %edx	# _31->ref_count, D.15836
	addl	$1, %edx	#, D.15836
	movl	%edx, 32(%rax)	# D.15836, _31->ref_count
.L419:
	.loc 1 2346 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.512
	movq	-24(%rbp), %rax	# insn, tmp110
	movl	8(%rax), %eax	# insn_3->fld[0].rtint, D.15836
	movslq	%eax, %rdx	# D.15836, D.15837
	movq	%rdx, %rax	# D.15837, tmp111
	addq	%rax, %rax	# tmp111
	addq	%rdx, %rax	# D.15837, tmp111
	salq	$4, %rax	#, tmp112
	addq	%rcx, %rax	# h_i_d.512, D.15838
	movzbl	46(%rax), %edx	# _38->cant_move, tmp115
	orl	$1, %edx	#, tmp116
	movb	%dl, 46(%rax)	# tmp116, _38->cant_move
	.loc 1 2348 0
	movq	-24(%rbp), %rax	# insn, tmp117
	movq	%rax, -16(%rbp)	# tmp117, last
	.loc 1 2354 0
	jmp	.L420	#
.L421:
.LBB44:
	.loc 1 2356 0
	movq	-24(%rbp), %rax	# insn, tmp118
	movq	%rax, %rdi	# tmp118,
	call	prev_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp119, temp
	.loc 1 2357 0
	movq	-8(%rbp), %rcx	# temp, tmp120
	movq	-24(%rbp), %rax	# insn, tmp121
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	add_dependence	#
	.loc 1 2358 0
	movq	-8(%rbp), %rax	# temp, tmp122
	movq	%rax, -24(%rbp)	# tmp122, insn
.L420:
.LBE44:
	.loc 1 2354 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp123
	movzbl	3(%rax), %eax	# *insn_1, D.15839
	andl	$16, %eax	#, D.15839
	testb	%al, %al	# D.15839
	jne	.L421	#,
.L418:
	.loc 1 2363 0
	movq	-24(%rbp), %rax	# insn, tmp124
	cmpq	-40(%rbp), %rax	# head, tmp124
	jne	.L422	#,
	.loc 1 2364 0
	jmp	.L423	#
.L422:
	.loc 1 2366 0
	movq	-24(%rbp), %rax	# insn, tmp125
	movq	16(%rax), %rax	# insn_2->fld[1].rtx, tmp126
	movq	%rax, -24(%rbp)	# tmp126, insn
.L417:
	.loc 1 2325 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp127
	movzwl	(%rax), %eax	# insn_3->code, D.15833
	cmpw	$34, %ax	#, D.15833
	je	.L424	#,
	.loc 1 2326 0
	movq	-24(%rbp), %rax	# insn, tmp128
	movzwl	(%rax), %eax	# insn_3->code, D.15833
	cmpw	$33, %ax	#, D.15833
	je	.L424	#,
	.loc 1 2327 0
	movq	-24(%rbp), %rax	# insn, tmp129
	movzwl	(%rax), %eax	# insn_3->code, D.15833
	cmpw	$32, %ax	#, D.15833
	jne	.L425	#,
	.loc 1 2328 0
	movq	-24(%rbp), %rax	# insn, tmp130
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.15834
	movzwl	(%rax), %eax	# _15->code, D.15833
	cmpw	$48, %ax	#, D.15833
	je	.L424	#,
	.loc 1 2329 0
	movq	-24(%rbp), %rax	# insn, tmp131
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.15834
	movzwl	(%rax), %eax	# _17->code, D.15833
	cmpw	$49, %ax	#, D.15833
	je	.L424	#,
	.loc 1 2330 0
	movq	-24(%rbp), %rax	# insn, tmp132
	movq	%rax, %rdi	# tmp132,
	call	can_throw_internal	#
	testb	%al, %al	# D.15835
	jne	.L424	#,
	.loc 1 2334 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.513
	testl	%eax, %eax	# reload_completed.513
	jne	.L425	#,
	.loc 1 2335 0
	movq	-24(%rbp), %rax	# insn, tmp133
	movq	32(%rax), %rax	# insn_3->fld[3].rtx, D.15834
	movq	%rax, %rdi	# D.15834,
	call	sets_likely_spilled	#
	testb	%al, %al	# D.15835
	jne	.L424	#,
.L425:
	.loc 1 2336 0
	movq	-24(%rbp), %rax	# insn, tmp134
	movzwl	(%rax), %eax	# insn_3->code, D.15833
	cmpw	$37, %ax	#, D.15833
	je	.L424	#,
.L423:
	.loc 1 2370 0
	movq	-16(%rbp), %rax	# last, tmp135
	movq	%rax, -24(%rbp)	# tmp135, insn
	.loc 1 2371 0
	cmpq	$0, -24(%rbp)	#, insn
	je	.L416	#,
	.loc 1 2372 0
	jmp	.L427	#
.L431:
	.loc 1 2374 0
	movq	-24(%rbp), %rax	# insn, tmp136
	movq	%rax, %rdi	# tmp136,
	call	prev_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp137, insn
	.loc 1 2376 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.514
	movq	-24(%rbp), %rax	# insn, tmp138
	movl	8(%rax), %eax	# insn_47->fld[0].rtint, D.15836
	movslq	%eax, %rdx	# D.15836, D.15837
	movq	%rdx, %rax	# D.15837, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# D.15837, tmp139
	salq	$4, %rax	#, tmp140
	addq	%rcx, %rax	# h_i_d.514, D.15838
	movl	32(%rax), %eax	# _52->ref_count, D.15836
	testl	%eax, %eax	# D.15836
	je	.L428	#,
	.loc 1 2377 0
	jmp	.L427	#
.L428:
	.loc 1 2379 0
	movq	-24(%rbp), %rcx	# insn, tmp141
	movq	-16(%rbp), %rax	# last, tmp142
	movl	$14, %edx	#,
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	add_dependence	#
	.loc 1 2380 0
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.515
	movq	-24(%rbp), %rax	# insn, tmp143
	movl	8(%rax), %eax	# insn_47->fld[0].rtint, D.15836
	movslq	%eax, %rdx	# D.15836, D.15837
	movq	%rdx, %rax	# D.15837, tmp144
	addq	%rax, %rax	# tmp144
	addq	%rdx, %rax	# D.15837, tmp144
	salq	$4, %rax	#, tmp145
	addq	%rcx, %rax	# h_i_d.515, D.15838
	movl	$1, 32(%rax)	#, _58->ref_count
	.loc 1 2383 0
	jmp	.L429	#
.L430:
	.loc 1 2384 0
	movq	-24(%rbp), %rax	# insn, tmp146
	movq	%rax, %rdi	# tmp146,
	call	prev_nonnote_insn	#
	movq	%rax, -24(%rbp)	# tmp147, insn
.L429:
	.loc 1 2383 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp148
	movzbl	3(%rax), %eax	# *insn_4, D.15839
	andl	$16, %eax	#, D.15839
	testb	%al, %al	# D.15839
	jne	.L430	#,
.L427:
	.loc 1 2372 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp149
	cmpq	-40(%rbp), %rax	# head, tmp149
	jne	.L431	#,
.L416:
	.loc 1 2386 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	add_branch_dependences, .-add_branch_dependences
	.local	bb_deps
	.comm	bb_deps,8,8
	.type	concat_INSN_LIST, @function
concat_INSN_LIST:
.LFB38:
	.loc 1 2401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# copy, copy
	movq	%rsi, -32(%rbp)	# old, old
	.loc 1 2402 0
	movq	-32(%rbp), %rax	# old, tmp62
	movq	%rax, -8(%rbp)	# tmp62, new
	.loc 1 2403 0
	jmp	.L433	#
.L434:
	.loc 1 2404 0 discriminator 2
	movq	-24(%rbp), %rax	# copy, tmp63
	movq	8(%rax), %rax	# copy_1->fld[0].rtx, D.15840
	movq	-8(%rbp), %rdx	# new, tmp64
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# D.15840,
	call	alloc_INSN_LIST	#
	movq	%rax, -8(%rbp)	# tmp65, new
	.loc 1 2403 0 discriminator 2
	movq	-24(%rbp), %rax	# copy, tmp66
	movq	16(%rax), %rax	# copy_1->fld[1].rtx, tmp67
	movq	%rax, -24(%rbp)	# tmp67, copy
.L433:
	.loc 1 2403 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, copy
	jne	.L434	#,
	.loc 1 2405 0 is_stmt 1
	movq	-8(%rbp), %rax	# new, D.15841
	.loc 1 2406 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	concat_INSN_LIST, .-concat_INSN_LIST
	.type	concat_insn_mem_list, @function
concat_insn_mem_list:
.LFB39:
	.loc 1 2412 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# copy_insns, copy_insns
	movq	%rsi, -32(%rbp)	# copy_mems, copy_mems
	movq	%rdx, -40(%rbp)	# old_insns_p, old_insns_p
	movq	%rcx, -48(%rbp)	# old_mems_p, old_mems_p
	.loc 1 2413 0
	movq	-40(%rbp), %rax	# old_insns_p, tmp61
	movq	(%rax), %rax	# *old_insns_p_5(D), tmp62
	movq	%rax, -16(%rbp)	# tmp62, new_insns
	.loc 1 2414 0
	movq	-48(%rbp), %rax	# old_mems_p, tmp63
	movq	(%rax), %rax	# *old_mems_p_7(D), tmp64
	movq	%rax, -8(%rbp)	# tmp64, new_mems
	.loc 1 2416 0
	jmp	.L437	#
.L438:
	.loc 1 2418 0
	movq	-24(%rbp), %rax	# copy_insns, tmp65
	movq	8(%rax), %rax	# copy_insns_1->fld[0].rtx, D.15842
	movq	-16(%rbp), %rdx	# new_insns, tmp66
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# D.15842,
	call	alloc_INSN_LIST	#
	movq	%rax, -16(%rbp)	# tmp67, new_insns
	.loc 1 2419 0
	movq	-32(%rbp), %rax	# copy_mems, tmp68
	movq	8(%rax), %rax	# copy_mems_2->fld[0].rtx, D.15842
	movq	-8(%rbp), %rdx	# new_mems, tmp69
	movq	%rax, %rsi	# D.15842,
	movl	$0, %edi	#,
	call	alloc_EXPR_LIST	#
	movq	%rax, -8(%rbp)	# tmp70, new_mems
	.loc 1 2420 0
	movq	-24(%rbp), %rax	# copy_insns, tmp71
	movq	16(%rax), %rax	# copy_insns_1->fld[1].rtx, tmp72
	movq	%rax, -24(%rbp)	# tmp72, copy_insns
	.loc 1 2421 0
	movq	-32(%rbp), %rax	# copy_mems, tmp73
	movq	16(%rax), %rax	# copy_mems_2->fld[1].rtx, tmp74
	movq	%rax, -32(%rbp)	# tmp74, copy_mems
.L437:
	.loc 1 2416 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, copy_insns
	jne	.L438	#,
	.loc 1 2424 0
	movq	-40(%rbp), %rax	# old_insns_p, tmp75
	movq	-16(%rbp), %rdx	# new_insns, tmp76
	movq	%rdx, (%rax)	# tmp76, *old_insns_p_5(D)
	.loc 1 2425 0
	movq	-48(%rbp), %rax	# old_mems_p, tmp77
	movq	-8(%rbp), %rdx	# new_mems, tmp78
	movq	%rdx, (%rax)	# tmp78, *old_mems_p_7(D)
	.loc 1 2426 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	concat_insn_mem_list, .-concat_insn_mem_list
	.type	propagate_deps, @function
propagate_deps:
.LFB40:
	.loc 1 2434 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -100(%rbp)	# bb, bb
	movq	%rsi, -112(%rbp)	# pred_deps, pred_deps
	.loc 1 2435 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.516
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.517
	movl	-100(%rbp), %edx	# bb, tmp175
	addl	%ecx, %edx	# current_blocks.517, D.15843
	movslq	%edx, %rdx	# D.15843, D.15844
	salq	$2, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15845
	movl	(%rax), %eax	# *_20, tmp176
	movl	%eax, -72(%rbp)	# tmp176, b
	.loc 1 2439 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.518
	movl	-72(%rbp), %edx	# b, tmp177
	movslq	%edx, %rdx	# tmp177, D.15844
	salq	$2, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15845
	movl	(%rax), %eax	# *_25, tmp178
	movl	%eax, -84(%rbp)	# tmp178, e
	movl	-84(%rbp), %eax	# e, tmp179
	movl	%eax, -68(%rbp)	# tmp179, first_edge
	.loc 1 2440 0
	cmpl	$0, -84(%rbp)	#, e
	jle	.L440	#,
.L456:
.LBB45:
	.loc 1 2443 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.519
	movl	-84(%rbp), %edx	# e, tmp180
	movslq	%edx, %rdx	# tmp180, D.15844
	salq	$4, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15846
	movl	4(%rax), %eax	# _31->to_block, tmp181
	movl	%eax, -64(%rbp)	# tmp181, b_succ
	.loc 1 2444 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.520
	movl	-64(%rbp), %edx	# b_succ, tmp182
	movslq	%edx, %rdx	# tmp182, D.15844
	salq	$2, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15845
	movl	(%rax), %eax	# *_36, tmp183
	movl	%eax, -60(%rbp)	# tmp183, bb_succ
	.loc 1 2445 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.521
	movl	-60(%rbp), %eax	# bb_succ, tmp184
	movslq	%eax, %rdx	# tmp184, D.15844
	movq	%rdx, %rax	# D.15844, tmp185
	addq	%rax, %rax	# tmp185
	addq	%rdx, %rax	# D.15844, tmp185
	salq	$2, %rax	#, tmp185
	addq	%rdx, %rax	# D.15844, tmp185
	salq	$3, %rax	#, tmp186
	addq	%rcx, %rax	# bb_deps.521, tmp187
	movq	%rax, -32(%rbp)	# tmp187, succ_deps
	.loc 1 2449 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.522
	movl	-72(%rbp), %edx	# b, tmp188
	movslq	%edx, %rdx	# tmp188, D.15844
	salq	$2, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15845
	movl	(%rax), %edx	# *_45, D.15843
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.523
	movl	-64(%rbp), %ecx	# b_succ, tmp189
	movslq	%ecx, %rcx	# tmp189, D.15844
	salq	$2, %rcx	#, D.15844
	addq	%rcx, %rax	# D.15844, D.15845
	movl	(%rax), %eax	# *_50, D.15843
	cmpl	%eax, %edx	# D.15843, D.15843
	jne	.L441	#,
	.loc 1 2450 0
	movl	-60(%rbp), %eax	# bb_succ, tmp190
	cmpl	-100(%rbp), %eax	# bb, tmp190
	jg	.L442	#,
.L441:
	.loc 1 2452 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.524
	movl	-84(%rbp), %edx	# e, tmp191
	movslq	%edx, %rdx	# tmp191, D.15844
	salq	$4, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15846
	movl	12(%rax), %eax	# _136->next_out, tmp192
	movl	%eax, -84(%rbp)	# tmp192, e
	.loc 1 2453 0
	jmp	.L443	#
.L442:
.LBB46:
	.loc 1 2457 0
	movq	-112(%rbp), %rax	# pred_deps, tmp193
	movq	80(%rax), %rax	# pred_deps_52(D)->reg_last_in_use.first, tmp194
	movq	%rax, -48(%rbp)	# tmp194, ptr_
	movl	$0, -56(%rbp)	#, indx_
	movl	$0, -80(%rbp)	#, bit_num_
	movl	$0, -76(%rbp)	#, word_num_
	jmp	.L444	#
.L446:
	.loc 1 2457 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ptr_, tmp195
	movq	(%rax), %rax	# ptr__3->next, tmp196
	movq	%rax, -48(%rbp)	# tmp196, ptr_
.L444:
	cmpq	$0, -48(%rbp)	#, ptr_
	je	.L445	#,
	.loc 1 2457 0 discriminator 2
	movq	-48(%rbp), %rax	# ptr_, tmp197
	movl	16(%rax), %eax	# ptr__3->indx, D.15847
	cmpl	-56(%rbp), %eax	# indx_, D.15847
	jb	.L446	#,
.L445:
	.loc 1 2457 0 discriminator 3
	cmpq	$0, -48(%rbp)	#, ptr_
	je	.L447	#,
	.loc 1 2457 0 discriminator 1
	movq	-48(%rbp), %rax	# ptr_, tmp198
	movl	16(%rax), %eax	# ptr__3->indx, D.15847
	cmpl	-56(%rbp), %eax	# indx_, D.15847
	je	.L447	#,
	movl	$0, -80(%rbp)	#, bit_num_
	movl	$0, -76(%rbp)	#, word_num_
	jmp	.L448	#
.L447:
	.loc 1 2457 0 discriminator 2
	jmp	.L448	#
.L455:
	.loc 1 2457 0
	jmp	.L449	#
.L454:
.LBB47:
	.loc 1 2457 0 discriminator 2
	movq	-48(%rbp), %rax	# ptr_, tmp199
	movl	-76(%rbp), %edx	# word_num_, tmp200
	addq	$2, %rdx	#, tmp201
	movq	8(%rax,%rdx,8), %rax	# ptr__4->bits, tmp202
	movq	%rax, -40(%rbp)	# tmp202, word_
	cmpq	$0, -40(%rbp)	#, word_
	je	.L450	#,
	.loc 1 2457 0 discriminator 1
	jmp	.L451	#
.L453:
.LBB48:
	.loc 1 2457 0 discriminator 2
	movl	-80(%rbp), %eax	# bit_num_, bit_num_.525
	movl	$1, %edx	#, tmp203
	movl	%eax, %ecx	# bit_num_.525, tmp283
	salq	%cl, %rdx	# tmp283, tmp204
	movq	%rdx, %rax	# tmp204, tmp204
	movq	%rax, -24(%rbp)	# tmp204, mask_
	movq	-24(%rbp), %rax	# mask_, tmp205
	movq	-40(%rbp), %rdx	# word_, tmp206
	andq	%rdx, %rax	# tmp206, D.15844
	testq	%rax, %rax	# D.15844
	je	.L452	#,
	.loc 1 2457 0 discriminator 1
	movq	-24(%rbp), %rax	# mask_, tmp207
	notq	%rax	# D.15844
	andq	%rax, -40(%rbp)	# D.15844, word_
	movq	-48(%rbp), %rax	# ptr_, tmp208
	movl	16(%rax), %eax	# ptr__4->indx, D.15847
	leal	(%rax,%rax), %edx	#, D.15847
	movl	-76(%rbp), %eax	# word_num_, tmp209
	addl	%edx, %eax	# D.15847, D.15847
	sall	$6, %eax	#, D.15847
	movl	%eax, %edx	# D.15847, D.15847
	movl	-80(%rbp), %eax	# bit_num_, tmp210
	addl	%edx, %eax	# D.15847, D.15847
	movl	%eax, -52(%rbp)	# D.15847, reg
.LBB49:
	movq	-112(%rbp), %rax	# pred_deps, tmp211
	movq	72(%rax), %rax	# pred_deps_52(D)->reg_last, D.15848
	movl	-52(%rbp), %edx	# reg, tmp212
	movslq	%edx, %rdx	# tmp212, D.15844
	salq	$5, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, tmp213
	movq	%rax, -16(%rbp)	# tmp213, pred_rl
	movq	-32(%rbp), %rax	# succ_deps, tmp214
	movq	72(%rax), %rax	# succ_deps_41->reg_last, D.15848
	movl	-52(%rbp), %edx	# reg, tmp215
	movslq	%edx, %rdx	# tmp215, D.15844
	salq	$5, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, tmp216
	movq	%rax, -8(%rbp)	# tmp216, succ_rl
	movq	-8(%rbp), %rax	# succ_rl, tmp217
	movq	(%rax), %rdx	# succ_rl_81->uses, D.15849
	movq	-16(%rbp), %rax	# pred_rl, tmp218
	movq	(%rax), %rax	# pred_rl_77->uses, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-8(%rbp), %rdx	# succ_rl, tmp219
	movq	%rax, (%rdx)	# D.15849, succ_rl_81->uses
	movq	-8(%rbp), %rax	# succ_rl, tmp220
	movq	8(%rax), %rdx	# succ_rl_81->sets, D.15849
	movq	-16(%rbp), %rax	# pred_rl, tmp221
	movq	8(%rax), %rax	# pred_rl_77->sets, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-8(%rbp), %rdx	# succ_rl, tmp222
	movq	%rax, 8(%rdx)	# D.15849, succ_rl_81->sets
	movq	-8(%rbp), %rax	# succ_rl, tmp223
	movq	16(%rax), %rdx	# succ_rl_81->clobbers, D.15849
	movq	-16(%rbp), %rax	# pred_rl, tmp224
	movq	16(%rax), %rax	# pred_rl_77->clobbers, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-8(%rbp), %rdx	# succ_rl, tmp225
	movq	%rax, 16(%rdx)	# D.15849, succ_rl_81->clobbers
	movq	-8(%rbp), %rax	# succ_rl, tmp226
	movl	24(%rax), %edx	# succ_rl_81->uses_length, D.15843
	movq	-16(%rbp), %rax	# pred_rl, tmp227
	movl	24(%rax), %eax	# pred_rl_77->uses_length, D.15843
	addl	%eax, %edx	# D.15843, D.15843
	movq	-8(%rbp), %rax	# succ_rl, tmp228
	movl	%edx, 24(%rax)	# D.15843, succ_rl_81->uses_length
	movq	-8(%rbp), %rax	# succ_rl, tmp229
	movl	28(%rax), %edx	# succ_rl_81->clobbers_length, D.15843
	movq	-16(%rbp), %rax	# pred_rl, tmp230
	movl	28(%rax), %eax	# pred_rl_77->clobbers_length, D.15843
	addl	%eax, %edx	# D.15843, D.15843
	movq	-8(%rbp), %rax	# succ_rl, tmp231
	movl	%edx, 28(%rax)	# D.15843, succ_rl_81->clobbers_length
.LBE49:
	cmpq	$0, -40(%rbp)	#, word_
	jne	.L452	#,
	jmp	.L450	#
.L452:
.LBE48:
	.loc 1 2457 0 discriminator 2
	addl	$1, -80(%rbp)	#, bit_num_
.L451:
	.loc 1 2457 0 discriminator 1
	cmpl	$63, -80(%rbp)	#, bit_num_
	jbe	.L453	#,
.L450:
	.loc 1 2457 0 discriminator 2
	movl	$0, -80(%rbp)	#, bit_num_
.LBE47:
	addl	$1, -76(%rbp)	#, word_num_
.L449:
	.loc 1 2457 0 discriminator 1
	cmpl	$1, -76(%rbp)	#, word_num_
	jbe	.L454	#,
	.loc 1 2457 0 discriminator 3
	movl	$0, -76(%rbp)	#, word_num_
	movq	-48(%rbp), %rax	# ptr_, tmp232
	movq	(%rax), %rax	# ptr__4->next, tmp233
	movq	%rax, -48(%rbp)	# tmp233, ptr_
.L448:
	.loc 1 2457 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, ptr_
	jne	.L455	#,
.LBE46:
	.loc 1 2469 0 is_stmt 1
	movq	-112(%rbp), %rax	# pred_deps, tmp234
	leaq	80(%rax), %rdx	#, D.15850
	movq	-32(%rbp), %rax	# succ_deps, tmp235
	leaq	80(%rax), %rsi	#, D.15850
	movq	-32(%rbp), %rax	# succ_deps, tmp236
	addq	$80, %rax	#, D.15850
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# D.15850,
	call	bitmap_operation	#
	.loc 1 2472 0
	movq	-32(%rbp), %rax	# succ_deps, tmp237
	leaq	8(%rax), %rcx	#, D.15851
	movq	-32(%rbp), %rdx	# succ_deps, D.15851
	movq	-112(%rbp), %rax	# pred_deps, tmp238
	movq	8(%rax), %rsi	# pred_deps_52(D)->pending_read_mems, D.15849
	movq	-112(%rbp), %rax	# pred_deps, tmp239
	movq	(%rax), %rax	# pred_deps_52(D)->pending_read_insns, D.15849
	movq	%rax, %rdi	# D.15849,
	call	concat_insn_mem_list	#
	.loc 1 2476 0
	movq	-32(%rbp), %rax	# succ_deps, tmp240
	leaq	24(%rax), %rcx	#, D.15851
	movq	-32(%rbp), %rax	# succ_deps, tmp241
	leaq	16(%rax), %rdx	#, D.15851
	movq	-112(%rbp), %rax	# pred_deps, tmp242
	movq	24(%rax), %rsi	# pred_deps_52(D)->pending_write_mems, D.15849
	movq	-112(%rbp), %rax	# pred_deps, tmp243
	movq	16(%rax), %rax	# pred_deps_52(D)->pending_write_insns, D.15849
	movq	%rax, %rdi	# D.15849,
	call	concat_insn_mem_list	#
	.loc 1 2482 0
	movq	-32(%rbp), %rax	# succ_deps, tmp244
	movq	40(%rax), %rdx	# succ_deps_41->last_pending_memory_flush, D.15849
	movq	-112(%rbp), %rax	# pred_deps, tmp245
	movq	40(%rax), %rax	# pred_deps_52(D)->last_pending_memory_flush, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-32(%rbp), %rdx	# succ_deps, tmp246
	movq	%rax, 40(%rdx)	# D.15849, succ_deps_41->last_pending_memory_flush
	.loc 1 2485 0
	movq	-32(%rbp), %rax	# succ_deps, tmp247
	movl	32(%rax), %edx	# succ_deps_41->pending_lists_length, D.15843
	movq	-112(%rbp), %rax	# pred_deps, tmp248
	movl	32(%rax), %eax	# pred_deps_52(D)->pending_lists_length, D.15843
	addl	%eax, %edx	# D.15843, D.15843
	movq	-32(%rbp), %rax	# succ_deps, tmp249
	movl	%edx, 32(%rax)	# D.15843, succ_deps_41->pending_lists_length
	.loc 1 2486 0
	movq	-32(%rbp), %rax	# succ_deps, tmp250
	movl	36(%rax), %edx	# succ_deps_41->pending_flush_length, D.15843
	movq	-112(%rbp), %rax	# pred_deps, tmp251
	movl	36(%rax), %eax	# pred_deps_52(D)->pending_flush_length, D.15843
	addl	%eax, %edx	# D.15843, D.15843
	movq	-32(%rbp), %rax	# succ_deps, tmp252
	movl	%edx, 36(%rax)	# D.15843, succ_deps_41->pending_flush_length
	.loc 1 2490 0
	movq	-32(%rbp), %rax	# succ_deps, tmp253
	movq	48(%rax), %rdx	# succ_deps_41->last_function_call, D.15849
	movq	-112(%rbp), %rax	# pred_deps, tmp254
	movq	48(%rax), %rax	# pred_deps_52(D)->last_function_call, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-32(%rbp), %rdx	# succ_deps, tmp255
	movq	%rax, 48(%rdx)	# D.15849, succ_deps_41->last_function_call
	.loc 1 2495 0
	movq	-32(%rbp), %rax	# succ_deps, tmp256
	movq	56(%rax), %rdx	# succ_deps_41->sched_before_next_call, D.15849
	movq	-112(%rbp), %rax	# pred_deps, tmp257
	movq	56(%rax), %rax	# pred_deps_52(D)->sched_before_next_call, D.15849
	movq	%rdx, %rsi	# D.15849,
	movq	%rax, %rdi	# D.15849,
	call	concat_INSN_LIST	#
	movq	-32(%rbp), %rdx	# succ_deps, tmp258
	movq	%rax, 56(%rdx)	# D.15849, succ_deps_41->sched_before_next_call
	.loc 1 2498 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.526
	movl	-84(%rbp), %edx	# e, tmp259
	movslq	%edx, %rdx	# tmp259, D.15844
	salq	$4, %rdx	#, D.15844
	addq	%rdx, %rax	# D.15844, D.15846
	movl	12(%rax), %eax	# _131->next_out, tmp260
	movl	%eax, -84(%rbp)	# tmp260, e
.L443:
.LBE45:
	.loc 1 2500 0
	movl	-84(%rbp), %eax	# e, tmp261
	cmpl	-68(%rbp), %eax	# first_edge, tmp261
	jne	.L456	#,
.L440:
	.loc 1 2504 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.527
	movl	-100(%rbp), %eax	# bb, tmp262
	movslq	%eax, %rdx	# tmp262, D.15844
	movq	%rdx, %rax	# D.15844, tmp263
	addq	%rax, %rax	# tmp263
	addq	%rdx, %rax	# D.15844, tmp263
	salq	$2, %rax	#, tmp263
	addq	%rdx, %rax	# D.15844, tmp263
	salq	$3, %rax	#, tmp264
	leaq	(%rcx,%rax), %rdx	#, D.15852
	movq	-112(%rbp), %rax	# pred_deps, tmp265
	movq	(%rax), %rax	# pred_deps_52(D)->pending_read_insns, D.15849
	movq	%rax, (%rdx)	# D.15849, _141->pending_read_insns
	.loc 1 2505 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.528
	movl	-100(%rbp), %eax	# bb, tmp266
	movslq	%eax, %rdx	# tmp266, D.15844
	movq	%rdx, %rax	# D.15844, tmp267
	addq	%rax, %rax	# tmp267
	addq	%rdx, %rax	# D.15844, tmp267
	salq	$2, %rax	#, tmp267
	addq	%rdx, %rax	# D.15844, tmp267
	salq	$3, %rax	#, tmp268
	leaq	(%rcx,%rax), %rdx	#, D.15852
	movq	-112(%rbp), %rax	# pred_deps, tmp269
	movq	8(%rax), %rax	# pred_deps_52(D)->pending_read_mems, D.15849
	movq	%rax, 8(%rdx)	# D.15849, _146->pending_read_mems
	.loc 1 2506 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.529
	movl	-100(%rbp), %eax	# bb, tmp270
	movslq	%eax, %rdx	# tmp270, D.15844
	movq	%rdx, %rax	# D.15844, tmp271
	addq	%rax, %rax	# tmp271
	addq	%rdx, %rax	# D.15844, tmp271
	salq	$2, %rax	#, tmp271
	addq	%rdx, %rax	# D.15844, tmp271
	salq	$3, %rax	#, tmp272
	leaq	(%rcx,%rax), %rdx	#, D.15852
	movq	-112(%rbp), %rax	# pred_deps, tmp273
	movq	16(%rax), %rax	# pred_deps_52(D)->pending_write_insns, D.15849
	movq	%rax, 16(%rdx)	# D.15849, _151->pending_write_insns
	.loc 1 2507 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.530
	movl	-100(%rbp), %eax	# bb, tmp274
	movslq	%eax, %rdx	# tmp274, D.15844
	movq	%rdx, %rax	# D.15844, tmp275
	addq	%rax, %rax	# tmp275
	addq	%rdx, %rax	# D.15844, tmp275
	salq	$2, %rax	#, tmp275
	addq	%rdx, %rax	# D.15844, tmp275
	salq	$3, %rax	#, tmp276
	leaq	(%rcx,%rax), %rdx	#, D.15852
	movq	-112(%rbp), %rax	# pred_deps, tmp277
	movq	24(%rax), %rax	# pred_deps_52(D)->pending_write_mems, D.15849
	movq	%rax, 24(%rdx)	# D.15849, _156->pending_write_mems
	.loc 1 2510 0
	movq	-112(%rbp), %rax	# pred_deps, tmp278
	movq	$0, (%rax)	#, pred_deps_52(D)->pending_read_insns
	.loc 1 2511 0
	movq	-112(%rbp), %rax	# pred_deps, tmp279
	movq	$0, 8(%rax)	#, pred_deps_52(D)->pending_read_mems
	.loc 1 2512 0
	movq	-112(%rbp), %rax	# pred_deps, tmp280
	movq	$0, 16(%rax)	#, pred_deps_52(D)->pending_write_insns
	.loc 1 2513 0
	movq	-112(%rbp), %rax	# pred_deps, tmp281
	movq	$0, 24(%rax)	#, pred_deps_52(D)->pending_write_mems
	.loc 1 2514 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	propagate_deps, .-propagate_deps
	.type	compute_block_backward_dependences, @function
compute_block_backward_dependences:
.LFB41:
	.loc 1 2536 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movl	%edi, -132(%rbp)	# bb, bb
	.loc 1 2540 0
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.531
	movl	-132(%rbp), %eax	# bb, tmp75
	movslq	%eax, %rdx	# tmp75, D.15853
	movq	%rdx, %rax	# D.15853, tmp76
	addq	%rax, %rax	# tmp76
	addq	%rdx, %rax	# D.15853, tmp76
	salq	$2, %rax	#, tmp76
	addq	%rdx, %rax	# D.15853, tmp76
	salq	$3, %rax	#, tmp77
	addq	%rcx, %rax	# bb_deps.531, D.15854
	movq	(%rax), %rdx	# *_5, tmp78
	movq	%rdx, -112(%rbp)	# tmp78, tmp_deps
	movq	8(%rax), %rdx	# *_5, tmp79
	movq	%rdx, -104(%rbp)	# tmp79, tmp_deps
	movq	16(%rax), %rdx	# *_5, tmp80
	movq	%rdx, -96(%rbp)	# tmp80, tmp_deps
	movq	24(%rax), %rdx	# *_5, tmp81
	movq	%rdx, -88(%rbp)	# tmp81, tmp_deps
	movq	32(%rax), %rdx	# *_5, tmp82
	movq	%rdx, -80(%rbp)	# tmp82, tmp_deps
	movq	40(%rax), %rdx	# *_5, tmp83
	movq	%rdx, -72(%rbp)	# tmp83, tmp_deps
	movq	48(%rax), %rdx	# *_5, tmp84
	movq	%rdx, -64(%rbp)	# tmp84, tmp_deps
	movq	56(%rax), %rdx	# *_5, tmp85
	movq	%rdx, -56(%rbp)	# tmp85, tmp_deps
	movq	64(%rax), %rdx	# *_5, tmp86
	movq	%rdx, -48(%rbp)	# tmp86, tmp_deps
	movq	72(%rax), %rdx	# *_5, tmp87
	movq	%rdx, -40(%rbp)	# tmp87, tmp_deps
	movq	80(%rax), %rdx	# *_5, tmp88
	movq	%rdx, -32(%rbp)	# tmp88, tmp_deps
	movq	88(%rax), %rdx	# *_5, tmp89
	movq	%rdx, -24(%rbp)	# tmp89, tmp_deps
	movq	96(%rax), %rax	# *_5, tmp90
	movq	%rax, -16(%rbp)	# tmp90, tmp_deps
	.loc 1 2543 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.532
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.533
	movl	-132(%rbp), %edx	# bb, tmp91
	addl	%ecx, %edx	# current_blocks.533, D.15855
	movslq	%edx, %rdx	# D.15855, D.15853
	salq	$2, %rdx	#, D.15853
	addq	%rdx, %rax	# D.15853, D.15856
	movl	(%rax), %eax	# *_11, D.15855
	leaq	-120(%rbp), %rdx	#, tmp92
	leaq	-128(%rbp), %rcx	#, tmp93
	movq	%rcx, %rsi	# tmp93,
	movl	%eax, %edi	# D.15855,
	call	get_block_head_tail	#
	.loc 1 2544 0
	movq	-120(%rbp), %rdx	# tail, tail.534
	movq	-128(%rbp), %rcx	# head, head.535
	leaq	-112(%rbp), %rax	#, tmp94
	movq	%rcx, %rsi	# head.535,
	movq	%rax, %rdi	# tmp94,
	call	sched_analyze	#
	.loc 1 2545 0
	movq	-120(%rbp), %rdx	# tail, tail.536
	movq	-128(%rbp), %rax	# head, head.537
	movq	%rdx, %rsi	# tail.536,
	movq	%rax, %rdi	# head.537,
	call	add_branch_dependences	#
	.loc 1 2547 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.538
	cmpl	$1, %eax	#, current_nr_blocks.538
	jle	.L458	#,
	.loc 1 2548 0
	leaq	-112(%rbp), %rdx	#, tmp95
	movl	-132(%rbp), %eax	# bb, tmp96
	movq	%rdx, %rsi	# tmp95,
	movl	%eax, %edi	# tmp96,
	call	propagate_deps	#
.L458:
	.loc 1 2551 0
	leaq	-112(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	free_deps	#
	.loc 1 2552 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	compute_block_backward_dependences, .-compute_block_backward_dependences
	.type	free_pending_lists, @function
free_pending_lists:
.LFB42:
	.loc 1 2559 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2562 0
	movl	$0, -4(%rbp)	#, bb
	jmp	.L460	#
.L461:
	.loc 1 2564 0 discriminator 2
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.539
	movl	-4(%rbp), %eax	# bb, tmp80
	movslq	%eax, %rdx	# tmp80, D.15857
	movq	%rdx, %rax	# D.15857, tmp81
	addq	%rax, %rax	# tmp81
	addq	%rdx, %rax	# D.15857, tmp81
	salq	$2, %rax	#, tmp81
	addq	%rdx, %rax	# D.15857, tmp81
	salq	$3, %rax	#, tmp82
	addq	%rcx, %rax	# bb_deps.539, D.15858
	movq	%rax, %rdi	# D.15859,
	call	free_INSN_LIST_list	#
	.loc 1 2565 0 discriminator 2
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.540
	movl	-4(%rbp), %eax	# bb, tmp83
	movslq	%eax, %rdx	# tmp83, D.15857
	movq	%rdx, %rax	# D.15857, tmp84
	addq	%rax, %rax	# tmp84
	addq	%rdx, %rax	# D.15857, tmp84
	salq	$2, %rax	#, tmp84
	addq	%rdx, %rax	# D.15857, tmp84
	salq	$3, %rax	#, tmp85
	addq	%rcx, %rax	# bb_deps.540, D.15858
	addq	$16, %rax	#, D.15859
	movq	%rax, %rdi	# D.15859,
	call	free_INSN_LIST_list	#
	.loc 1 2566 0 discriminator 2
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.541
	movl	-4(%rbp), %eax	# bb, tmp86
	movslq	%eax, %rdx	# tmp86, D.15857
	movq	%rdx, %rax	# D.15857, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# D.15857, tmp87
	salq	$2, %rax	#, tmp87
	addq	%rdx, %rax	# D.15857, tmp87
	salq	$3, %rax	#, tmp88
	addq	%rcx, %rax	# bb_deps.541, D.15858
	addq	$8, %rax	#, D.15859
	movq	%rax, %rdi	# D.15859,
	call	free_EXPR_LIST_list	#
	.loc 1 2567 0 discriminator 2
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.542
	movl	-4(%rbp), %eax	# bb, tmp89
	movslq	%eax, %rdx	# tmp89, D.15857
	movq	%rdx, %rax	# D.15857, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# D.15857, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# D.15857, tmp90
	salq	$3, %rax	#, tmp91
	addq	%rcx, %rax	# bb_deps.542, D.15858
	addq	$24, %rax	#, D.15859
	movq	%rax, %rdi	# D.15859,
	call	free_EXPR_LIST_list	#
	.loc 1 2562 0 discriminator 2
	addl	$1, -4(%rbp)	#, bb
.L460:
	.loc 1 2562 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.543
	cmpl	%eax, -4(%rbp)	# current_nr_blocks.543, bb
	jl	.L461	#,
	.loc 1 2569 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	free_pending_lists, .-free_pending_lists
	.section	.rodata
	.align 8
.LC20:
	.string	";;   --------------- forward dependences: ------------ \n"
	.align 8
.LC21:
	.string	"\n;;   --- Region Dependences --- b %d bb %d \n"
.LC22:
	.string	"dep"
.LC23:
	.string	"bb"
.LC24:
	.string	"code"
.LC25:
	.string	"insn"
	.align 8
.LC26:
	.string	";;   %7s%6s%6s%6s%6s%6s%11s%6s\n"
.LC27:
	.string	"units"
.LC28:
	.string	"blockage"
.LC29:
	.string	"cost"
.LC30:
	.string	"prio"
.LC31:
	.string	"---"
.LC32:
	.string	"--"
.LC33:
	.string	"----"
.LC34:
	.string	"-----"
.LC35:
	.string	"--------"
.LC36:
	.string	";;   %6d "
.LC37:
	.string	"%s\n"
.LC38:
	.string	"line %d, file %s\n"
.LC39:
	.string	" {%s}\n"
.LC40:
	.string	"+"
.LC41:
	.string	" "
	.align 8
.LC42:
	.string	";;   %s%5d%6d%6d%6d%6d%6d  %3d -%3d   "
.LC43:
	.string	"\t: "
.LC44:
	.string	"%d "
	.text
	.globl	debug_dependencies
	.type	debug_dependencies, @function
debug_dependencies:
.LFB43:
	.loc 1 2575 0
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
	.loc 1 2578 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.544
	movq	%rax, %rcx	# sched_dump.544,
	movl	$56, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
	.loc 1 2579 0
	movl	$0, -72(%rbp)	#, bb
	jmp	.L463	#
.L478:
.LBB50:
	.loc 1 2587 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.545
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.546
	movl	-72(%rbp), %edx	# bb, tmp139
	addl	%ecx, %edx	# current_blocks.546, D.15860
	movslq	%edx, %rdx	# D.15860, D.15861
	salq	$2, %rdx	#, D.15861
	addq	%rdx, %rax	# D.15861, D.15862
	movl	(%rax), %eax	# *_14, D.15860
	leaq	-48(%rbp), %rdx	#, tmp140
	leaq	-56(%rbp), %rcx	#, tmp141
	movq	%rcx, %rsi	# tmp141,
	movl	%eax, %edi	# D.15860,
	call	get_block_head_tail	#
	.loc 1 2588 0
	movq	-48(%rbp), %rax	# tail, tail.547
	movq	24(%rax), %rax	# tail.547_16->fld[2].rtx, tmp142
	movq	%rax, -24(%rbp)	# tmp142, next_tail
	.loc 1 2590 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.548
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.549
	movl	-72(%rbp), %edx	# bb, tmp143
	addl	%ecx, %edx	# current_blocks.549, D.15860
	movslq	%edx, %rdx	# D.15860, D.15861
	salq	$2, %rdx	#, D.15861
	addq	%rdx, %rax	# D.15861, D.15862
	.loc 1 2589 0
	movl	(%rax), %edx	# *_23, D.15860
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.550
	movl	-72(%rbp), %ecx	# bb, tmp144
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# sched_dump.550,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2592 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.551
	movq	$.LC27, 24(%rsp)	#,
	movq	$.LC28, 16(%rsp)	#,
	movq	$.LC29, 8(%rsp)	#,
	movq	$.LC30, (%rsp)	#,
	movl	$.LC22, %r9d	#,
	movl	$.LC23, %r8d	#,
	movl	$.LC24, %ecx	#,
	movl	$.LC25, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# sched_dump.551,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2594 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.552
	movq	$.LC34, 24(%rsp)	#,
	movq	$.LC35, 16(%rsp)	#,
	movq	$.LC33, 8(%rsp)	#,
	movq	$.LC33, (%rsp)	#,
	movl	$.LC31, %r9d	#,
	movl	$.LC32, %r8d	#,
	movl	$.LC33, %ecx	#,
	movl	$.LC33, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# sched_dump.552,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2596 0
	movq	-56(%rbp), %rax	# head, tmp145
	movq	%rax, -40(%rbp)	# tmp145, insn
	jmp	.L464	#
.L477:
.LBB51:
	.loc 1 2601 0
	movq	-40(%rbp), %rax	# insn, tmp146
	movzwl	(%rax), %eax	# insn_2->code, D.15863
	movzwl	%ax, %eax	# D.15863, D.15860
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15864
	cmpb	$105, %al	#, D.15864
	je	.L465	#,
.LBB52:
	.loc 1 2604 0
	movq	-40(%rbp), %rax	# insn, tmp148
	movl	8(%rax), %edx	# insn_2->fld[0].rtint, D.15860
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.553
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# sched_dump.553,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2605 0
	movq	-40(%rbp), %rax	# insn, tmp149
	movzwl	(%rax), %eax	# insn_2->code, D.15863
	cmpw	$37, %ax	#, D.15863
	jne	.L466	#,
	.loc 1 2607 0
	movq	-40(%rbp), %rax	# insn, tmp150
	movl	40(%rax), %eax	# insn_2->fld[4].rtint, tmp151
	movl	%eax, -68(%rbp)	# tmp151, n
	.loc 1 2608 0
	cmpl	$0, -68(%rbp)	#, n
	jns	.L467	#,
	.loc 1 2609 0
	movl	-68(%rbp), %eax	# n, tmp152
	addl	$100, %eax	#, D.15860
	cltq
	movq	note_insn_name(,%rax,8), %rdx	# note_insn_name, D.15865
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.554
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# sched_dump.554,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2616 0
	jmp	.L470	#
.L467:
	.loc 1 2611 0
	movq	-40(%rbp), %rax	# insn, tmp154
	movq	32(%rax), %rcx	# insn_2->fld[3].rtstr, D.15865
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.555
	movl	-68(%rbp), %edx	# n, tmp155
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# sched_dump.555,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2616 0
	jmp	.L470	#
.L466:
	.loc 1 2615 0
	movq	-40(%rbp), %rax	# insn, tmp156
	movzwl	(%rax), %eax	# insn_2->code, D.15863
	movzwl	%ax, %eax	# D.15863, D.15860
	cltq
	movq	rtx_name(,%rax,8), %rdx	# rtx_name, D.15865
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.556
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# sched_dump.556,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2616 0
	jmp	.L470	#
.L465:
.LBE52:
	.loc 1 2619 0
	movq	-40(%rbp), %rax	# insn, tmp158
	movq	%rax, %rdi	# tmp158,
	call	insn_unit	#
	movl	%eax, -64(%rbp)	# tmp159, unit
	.loc 1 2620 0
	cmpl	$0, -64(%rbp)	#, unit
	js	.L471	#,
	.loc 1 2621 0
	movl	-64(%rbp), %eax	# unit, tmp161
	movslq	%eax, %rdx	# tmp161, tmp160
	movq	%rdx, %rax	# tmp160, tmp162
	salq	$3, %rax	#, tmp162
	addq	%rdx, %rax	# tmp160, tmp162
	salq	$3, %rax	#, tmp163
	addq	$function_units+56, %rax	#, tmp164
	movq	(%rax), %rax	# function_units[unit_45].blockage_range_function, D.15866
	testq	%rax, %rax	# D.15866
	je	.L471	#,
	.loc 1 2622 0
	movl	-64(%rbp), %eax	# unit, tmp166
	movslq	%eax, %rdx	# tmp166, tmp165
	movq	%rdx, %rax	# tmp165, tmp167
	salq	$3, %rax	#, tmp167
	addq	%rdx, %rax	# tmp165, tmp167
	salq	$3, %rax	#, tmp168
	addq	$function_units+56, %rax	#, tmp169
	movq	(%rax), %rax	# function_units[unit_45].blockage_range_function, D.15866
	movq	-40(%rbp), %rdx	# insn, tmp170
	movq	%rdx, %rdi	# tmp170,
	call	*%rax	# D.15866
	.loc 1 2620 0
	jmp	.L472	#
.L471:
	.loc 1 2620 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.557
.L472:
	.loc 1 2620 0 discriminator 2
	movl	%eax, -60(%rbp)	# iftmp.557, range
	.loc 1 2623 0 is_stmt 1 discriminator 2
	movl	-60(%rbp), %eax	# range, tmp171
	movzwl	%ax, %ebx	# tmp171, D.15860
	movl	-60(%rbp), %eax	# range, tmp172
	sarl	$16, %eax	#, D.15860
	movl	%eax, %r12d	# D.15860, D.15860
	movq	-40(%rbp), %rax	# insn, tmp173
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp173,
	call	insn_cost	#
	movl	%eax, %ecx	#, D.15860
	.loc 1 2630 0 discriminator 2
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.558
	movq	-40(%rbp), %rax	# insn, tmp174
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.15860
	movslq	%eax, %rdx	# D.15860, D.15861
	movq	%rdx, %rax	# D.15861, tmp175
	addq	%rax, %rax	# tmp175
	addq	%rdx, %rax	# D.15861, tmp175
	salq	$4, %rax	#, tmp176
	addq	%rsi, %rax	# h_i_d.558, D.15868
	.loc 1 2623 0 discriminator 2
	movl	20(%rax), %r8d	# _59->priority, D.15860
	.loc 1 2629 0 discriminator 2
	movq	h_i_d(%rip), %rsi	# h_i_d, h_i_d.559
	movq	-40(%rbp), %rax	# insn, tmp177
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.15860
	movslq	%eax, %rdx	# D.15860, D.15861
	movq	%rdx, %rax	# D.15861, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# D.15861, tmp178
	salq	$4, %rax	#, tmp179
	addq	%rsi, %rax	# h_i_d.559, D.15868
	.loc 1 2623 0 discriminator 2
	movl	24(%rax), %esi	# _65->dep_count, D.15860
	.loc 1 2628 0 discriminator 2
	movq	block_to_bb(%rip), %rdi	# block_to_bb, block_to_bb.560
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.561
	movq	-40(%rbp), %rdx	# insn, tmp180
	movl	8(%rdx), %edx	# insn_2->fld[0].rtint, D.15860
	movslq	%edx, %rdx	# D.15860, tmp181
	addq	$4, %rdx	#, tmp182
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.561_68->data.bb, D.15869
	movl	88(%rax), %eax	# _70->index, D.15860
	cltq
	salq	$2, %rax	#, D.15861
	addq	%rdi, %rax	# block_to_bb.560, D.15862
	.loc 1 2623 0 discriminator 2
	movl	(%rax), %r9d	# *_74, D.15860
	movq	-40(%rbp), %rax	# insn, tmp183
	movl	40(%rax), %r10d	# insn_2->fld[4].rtint, D.15860
	movq	-40(%rbp), %rax	# insn, tmp184
	movl	8(%rax), %edx	# insn_2->fld[0].rtint, D.15860
	.loc 1 2625 0 discriminator 2
	movq	-40(%rbp), %rax	# insn, tmp185
	movzbl	3(%rax), %eax	# *insn_2, D.15870
	andl	$16, %eax	#, D.15870
	.loc 1 2623 0 discriminator 2
	testb	%al, %al	# D.15870
	je	.L473	#,
	.loc 1 2623 0 is_stmt 0 discriminator 1
	movl	$.LC40, %eax	#, iftmp.562
	jmp	.L474	#
.L473:
	.loc 1 2623 0 discriminator 2
	movl	$.LC41, %eax	#, iftmp.562
.L474:
	.loc 1 2623 0 discriminator 3
	movq	sched_dump(%rip), %rdi	# sched_dump, sched_dump.563
	movl	%ebx, 32(%rsp)	# D.15860,
	movl	%r12d, 24(%rsp)	# D.15860,
	movl	%ecx, 16(%rsp)	# D.15860,
	movl	%r8d, 8(%rsp)	# D.15860,
	movl	%esi, (%rsp)	# D.15860,
	movl	%r10d, %r8d	# D.15860,
	movl	%edx, %ecx	# D.15860,
	movq	%rax, %rdx	# iftmp.562,
	movl	$.LC42, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2634 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp186
	movq	%rax, %rdi	# tmp186,
	call	insn_print_units	#
	.loc 1 2635 0 discriminator 3
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.564
	movq	%rax, %rcx	# sched_dump.564,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC43, %edi	#,
	call	fwrite	#
	.loc 1 2636 0 discriminator 3
	movq	h_i_d(%rip), %rcx	# h_i_d, h_i_d.565
	movq	-40(%rbp), %rax	# insn, tmp187
	movl	8(%rax), %eax	# insn_2->fld[0].rtint, D.15860
	movslq	%eax, %rdx	# D.15860, D.15861
	movq	%rdx, %rax	# D.15861, tmp188
	addq	%rax, %rax	# tmp188
	addq	%rdx, %rax	# D.15861, tmp188
	salq	$4, %rax	#, tmp189
	addq	%rcx, %rax	# h_i_d.565, D.15868
	movq	(%rax), %rax	# _88->depend, tmp190
	movq	%rax, -32(%rbp)	# tmp190, link
	jmp	.L475	#
.L476:
	.loc 1 2637 0 discriminator 2
	movq	-32(%rbp), %rax	# link, tmp191
	movq	8(%rax), %rax	# link_3->fld[0].rtx, D.15871
	movl	8(%rax), %edx	# _90->fld[0].rtint, D.15860
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.566
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# sched_dump.566,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2636 0 discriminator 2
	movq	-32(%rbp), %rax	# link, tmp192
	movq	16(%rax), %rax	# link_3->fld[1].rtx, tmp193
	movq	%rax, -32(%rbp)	# tmp193, link
.L475:
	.loc 1 2636 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, link
	jne	.L476	#,
	.loc 1 2638 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.567
	movq	%rax, %rsi	# sched_dump.567,
	movl	$10, %edi	#,
	call	fputc	#
.L470:
.LBE51:
	.loc 1 2596 0
	movq	-40(%rbp), %rax	# insn, tmp194
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp195
	movq	%rax, -40(%rbp)	# tmp195, insn
.L464:
	.loc 1 2596 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp196
	cmpq	-24(%rbp), %rax	# next_tail, tmp196
	jne	.L477	#,
.LBE50:
	.loc 1 2579 0 is_stmt 1
	addl	$1, -72(%rbp)	#, bb
.L463:
	.loc 1 2579 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.568
	cmpl	%eax, -72(%rbp)	# current_nr_blocks.568, bb
	jl	.L478	#,
	.loc 1 2642 0 is_stmt 1
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.569
	movq	%rax, %rsi	# sched_dump.569,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 2643 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	debug_dependencies, .-debug_dependencies
	.type	schedule_region, @function
schedule_region:
.LFB44:
	.loc 1 2652 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# rgn, rgn
	.loc 1 2654 0
	movl	$0, -40(%rbp)	#, rgn_n_insns
	.loc 1 2655 0
	movl	$0, -36(%rbp)	#, sched_rgn_n_insns
	.loc 1 2658 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.570
	movl	-52(%rbp), %edx	# rgn, tmp251
	movslq	%edx, %rdx	# tmp251, D.15897
	salq	$3, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15898
	movl	(%rax), %eax	# _22->rgn_nr_blocks, current_nr_blocks.571
	movl	%eax, current_nr_blocks(%rip)	# current_nr_blocks.571, current_nr_blocks
	.loc 1 2659 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.572
	movl	-52(%rbp), %edx	# rgn, tmp252
	movslq	%edx, %rdx	# tmp252, D.15897
	salq	$3, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15898
	movl	4(%rax), %eax	# _27->rgn_blocks, current_blocks.573
	movl	%eax, current_blocks(%rip)	# current_blocks.573, current_blocks
	.loc 1 2661 0
	call	init_deps_global	#
	.loc 1 2664 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.574
	movslq	%eax, %rdx	# current_nr_blocks.574, D.15897
	movq	%rdx, %rax	# D.15897, tmp253
	addq	%rax, %rax	# tmp253
	addq	%rdx, %rax	# D.15897, tmp253
	salq	$2, %rax	#, tmp253
	addq	%rdx, %rax	# D.15897, tmp253
	salq	$3, %rax	#, tmp254
	movq	%rax, %rdi	# D.15897,
	call	xmalloc	#
	movq	%rax, bb_deps(%rip)	# bb_deps.575, bb_deps
	.loc 1 2665 0
	movl	$0, -44(%rbp)	#, bb
	jmp	.L480	#
.L481:
	.loc 1 2666 0 discriminator 2
	movq	bb_deps(%rip), %rcx	# bb_deps, bb_deps.576
	movl	-44(%rbp), %eax	# bb, tmp256
	movslq	%eax, %rdx	# tmp256, D.15897
	movq	%rdx, %rax	# D.15897, tmp257
	addq	%rax, %rax	# tmp257
	addq	%rdx, %rax	# D.15897, tmp257
	salq	$2, %rax	#, tmp257
	addq	%rdx, %rax	# D.15897, tmp257
	salq	$3, %rax	#, tmp258
	addq	%rcx, %rax	# bb_deps.576, D.15899
	movq	%rax, %rdi	# D.15899,
	call	init_deps	#
	.loc 1 2665 0 discriminator 2
	addl	$1, -44(%rbp)	#, bb
.L480:
	.loc 1 2665 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.577
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.577, bb
	jl	.L481	#,
	.loc 1 2669 0 is_stmt 1
	movl	$0, -44(%rbp)	#, bb
	jmp	.L482	#
.L483:
	.loc 1 2670 0 discriminator 2
	movl	-44(%rbp), %eax	# bb, tmp259
	movl	%eax, %edi	# tmp259,
	call	compute_block_backward_dependences	#
	.loc 1 2669 0 discriminator 2
	addl	$1, -44(%rbp)	#, bb
.L482:
	.loc 1 2669 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.578
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.578, bb
	jl	.L483	#,
	.loc 1 2673 0 is_stmt 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.579
	subl	$1, %eax	#, tmp260
	movl	%eax, -44(%rbp)	# tmp260, bb
	jmp	.L484	#
.L485:
.LBB53:
	.loc 1 2676 0 discriminator 2
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.580
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.581
	movl	-44(%rbp), %edx	# bb, tmp261
	addl	%ecx, %edx	# current_blocks.581, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_50, D.15900
	leaq	-16(%rbp), %rdx	#, tmp262
	leaq	-24(%rbp), %rcx	#, tmp263
	movq	%rcx, %rsi	# tmp263,
	movl	%eax, %edi	# D.15900,
	call	get_block_head_tail	#
	.loc 1 2678 0 discriminator 2
	movq	-16(%rbp), %rdx	# tail, tail.582
	movq	-24(%rbp), %rax	# head, head.583
	movq	%rdx, %rsi	# tail.582,
	movq	%rax, %rdi	# head.583,
	call	compute_forward_dependences	#
.LBE53:
	.loc 1 2673 0 discriminator 2
	subl	$1, -44(%rbp)	#, bb
.L484:
	.loc 1 2673 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, bb
	jns	.L485	#,
	.loc 1 2682 0 is_stmt 1
	movl	$0, -44(%rbp)	#, bb
	jmp	.L486	#
.L487:
.LBB54:
	.loc 1 2685 0 discriminator 2
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.584
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.585
	movl	-44(%rbp), %edx	# bb, tmp264
	addl	%ecx, %edx	# current_blocks.585, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_62, D.15900
	leaq	-16(%rbp), %rdx	#, tmp265
	leaq	-24(%rbp), %rcx	#, tmp266
	movq	%rcx, %rsi	# tmp266,
	movl	%eax, %edi	# D.15900,
	call	get_block_head_tail	#
	.loc 1 2687 0 discriminator 2
	movq	-16(%rbp), %rdx	# tail, tail.586
	movq	-24(%rbp), %rax	# head, head.587
	movq	%rdx, %rsi	# tail.586,
	movq	%rax, %rdi	# head.587,
	call	set_priorities	#
	addl	%eax, -40(%rbp)	# D.15900, rgn_n_insns
.LBE54:
	.loc 1 2682 0 discriminator 2
	addl	$1, -44(%rbp)	#, bb
.L486:
	.loc 1 2682 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.588
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.588, bb
	jl	.L487	#,
	.loc 1 2691 0 is_stmt 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.589
	cmpl	$1, %eax	#, current_nr_blocks.589
	jle	.L488	#,
.LBB55:
	.loc 1 2695 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.590
	cltq
	salq	$2, %rax	#, D.15897
	movq	%rax, %rdi	# D.15897,
	call	xmalloc	#
	movq	%rax, prob(%rip)	# prob.591, prob
	.loc 1 2697 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.592
	movl	%eax, %edx	# current_nr_blocks.592, current_nr_blocks.593
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.594
	movl	%edx, %esi	# current_nr_blocks.593,
	movl	%eax, %edi	# current_nr_blocks.595,
	call	sbitmap_vector_alloc	#
	movq	%rax, dom(%rip)	# dom.596, dom
	.loc 1 2698 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.597
	movl	%eax, %edx	# current_nr_blocks.597, current_nr_blocks.598
	movq	dom(%rip), %rax	# dom, dom.599
	movl	%edx, %esi	# current_nr_blocks.598,
	movq	%rax, %rdi	# dom.599,
	call	sbitmap_vector_zero	#
	.loc 1 2700 0
	movl	$0, rgn_nr_edges(%rip)	#, rgn_nr_edges
	.loc 1 2701 0
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.600
	cltq
	salq	$2, %rax	#, D.15897
	movq	%rax, %rdi	# D.15897,
	call	xmalloc	#
	movq	%rax, edge_to_bit(%rip)	# edge_to_bit.601, edge_to_bit
	.loc 1 2702 0
	movl	$1, -32(%rbp)	#, i
	jmp	.L489	#
.L491:
	.loc 1 2703 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.602
	movq	edge_table(%rip), %rdx	# edge_table, edge_table.603
	movl	-32(%rbp), %ecx	# i, tmp269
	movslq	%ecx, %rcx	# tmp269, D.15897
	salq	$4, %rcx	#, D.15897
	addq	%rcx, %rdx	# D.15897, D.15902
	movl	(%rdx), %edx	# _92->from_block, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_96, D.15900
	cmpl	-52(%rbp), %eax	# rgn, D.15900
	jne	.L490	#,
	.loc 1 2704 0
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.604
	movl	-32(%rbp), %edx	# i, tmp270
	movslq	%edx, %rdx	# tmp270, D.15897
	salq	$2, %rdx	#, D.15897
	leaq	(%rax,%rdx), %rcx	#, D.15901
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.605
	leal	1(%rax), %edx	#, rgn_nr_edges.607
	movl	%edx, rgn_nr_edges(%rip)	# rgn_nr_edges.607, rgn_nr_edges
	movl	%eax, (%rcx)	# rgn_nr_edges.606, *_101
.L490:
	.loc 1 2702 0
	addl	$1, -32(%rbp)	#, i
.L489:
	.loc 1 2702 0 is_stmt 0 discriminator 1
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.608
	cmpl	%eax, -32(%rbp)	# nr_edges.608, i
	jl	.L491	#,
	.loc 1 2705 0 is_stmt 1
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.609
	cltq
	salq	$2, %rax	#, D.15897
	movq	%rax, %rdi	# D.15897,
	call	xmalloc	#
	movq	%rax, rgn_edges(%rip)	# rgn_edges.610, rgn_edges
	.loc 1 2707 0
	movl	$0, rgn_nr_edges(%rip)	#, rgn_nr_edges
	.loc 1 2708 0
	movl	$1, -32(%rbp)	#, i
	jmp	.L492	#
.L494:
	.loc 1 2709 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.611
	movq	edge_table(%rip), %rdx	# edge_table, edge_table.612
	movl	-32(%rbp), %ecx	# i, tmp272
	movslq	%ecx, %rcx	# tmp272, D.15897
	salq	$4, %rcx	#, D.15897
	addq	%rcx, %rdx	# D.15897, D.15902
	movl	(%rdx), %edx	# _116->from_block, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_120, D.15900
	cmpl	-52(%rbp), %eax	# rgn, D.15900
	jne	.L493	#,
	.loc 1 2710 0
	movq	rgn_edges(%rip), %rcx	# rgn_edges, rgn_edges.613
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.614
	leal	1(%rax), %edx	#, rgn_nr_edges.616
	movl	%edx, rgn_nr_edges(%rip)	# rgn_nr_edges.616, rgn_nr_edges
	cltq
	salq	$2, %rax	#, D.15897
	leaq	(%rcx,%rax), %rdx	#, D.15901
	movl	-32(%rbp), %eax	# i, tmp273
	movl	%eax, (%rdx)	# tmp273, *_128
.L493:
	.loc 1 2708 0
	addl	$1, -32(%rbp)	#, i
.L492:
	.loc 1 2708 0 is_stmt 0 discriminator 1
	movl	nr_edges(%rip), %eax	# nr_edges, nr_edges.617
	cmpl	%eax, -32(%rbp)	# nr_edges.617, i
	jl	.L494	#,
	.loc 1 2713 0 is_stmt 1
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.618
	movl	%eax, %edx	# rgn_nr_edges.618, rgn_nr_edges.619
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.620
	movl	%edx, %esi	# rgn_nr_edges.619,
	movl	%eax, %edi	# current_nr_blocks.621,
	call	sbitmap_vector_alloc	#
	movq	%rax, pot_split(%rip)	# pot_split.622, pot_split
	.loc 1 2714 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.623
	movl	%eax, %edx	# current_nr_blocks.623, current_nr_blocks.624
	movq	pot_split(%rip), %rax	# pot_split, pot_split.625
	movl	%edx, %esi	# current_nr_blocks.624,
	movq	%rax, %rdi	# pot_split.625,
	call	sbitmap_vector_zero	#
	.loc 1 2715 0
	movl	rgn_nr_edges(%rip), %eax	# rgn_nr_edges, rgn_nr_edges.626
	movl	%eax, %edx	# rgn_nr_edges.626, rgn_nr_edges.627
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.628
	movl	%edx, %esi	# rgn_nr_edges.627,
	movl	%eax, %edi	# current_nr_blocks.629,
	call	sbitmap_vector_alloc	#
	movq	%rax, ancestor_edges(%rip)	# ancestor_edges.630, ancestor_edges
	.loc 1 2716 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.631
	movl	%eax, %edx	# current_nr_blocks.631, current_nr_blocks.632
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.633
	movl	%edx, %esi	# current_nr_blocks.632,
	movq	%rax, %rdi	# ancestor_edges.633,
	call	sbitmap_vector_zero	#
	.loc 1 2719 0
	movl	$0, -44(%rbp)	#, bb
	jmp	.L495	#
.L496:
	.loc 1 2720 0 discriminator 2
	movl	-44(%rbp), %eax	# bb, tmp274
	movl	%eax, %edi	# tmp274,
	call	compute_dom_prob_ps	#
	.loc 1 2719 0 discriminator 2
	addl	$1, -44(%rbp)	#, bb
.L495:
	.loc 1 2719 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.634
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.634, bb
	jl	.L496	#,
.L488:
.LBE55:
	.loc 1 2724 0 is_stmt 1
	movl	$0, -44(%rbp)	#, bb
	jmp	.L497	#
.L510:
.LBB56:
	.loc 1 2727 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.635
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.636
	movl	-44(%rbp), %edx	# bb, tmp275
	addl	%ecx, %edx	# current_blocks.636, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_156, tmp276
	movl	%eax, -28(%rbp)	# tmp276, b
	.loc 1 2729 0
	leaq	-16(%rbp), %rdx	#, tmp277
	leaq	-24(%rbp), %rcx	#, tmp278
	movl	-28(%rbp), %eax	# b, tmp279
	movq	%rcx, %rsi	# tmp278,
	movl	%eax, %edi	# tmp279,
	call	get_block_head_tail	#
	.loc 1 2731 0
	movq	-16(%rbp), %rdx	# tail, tail.637
	movq	-24(%rbp), %rax	# head, head.638
	movq	%rdx, %rsi	# tail.637,
	movq	%rax, %rdi	# head.638,
	call	no_real_insns_p	#
	testl	%eax, %eax	# D.15900
	jne	.L499	#,
	.loc 1 2734 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.639
	movq	-24(%rbp), %rdx	# head, head.640
	movq	16(%rdx), %rdx	# head.640_162->fld[1].rtx, D.15903
	movq	%rdx, 64(%rax)	# D.15903, current_sched_info.639_161->prev_head
	.loc 1 2735 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.641
	movq	-16(%rbp), %rdx	# tail, tail.642
	movq	24(%rdx), %rdx	# tail.642_165->fld[2].rtx, D.15903
	movq	%rdx, 72(%rax)	# D.15903, current_sched_info.641_164->next_tail
	.loc 1 2737 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.643
	testl	%eax, %eax	# write_symbols.643
	je	.L500	#,
	.loc 1 2739 0
	movq	-16(%rbp), %rdx	# tail, tail.644
	movq	-24(%rbp), %rcx	# head, head.645
	movl	-28(%rbp), %eax	# b, tmp280
	movq	%rcx, %rsi	# head.645,
	movl	%eax, %edi	# tmp280,
	call	save_line_notes	#
	.loc 1 2740 0
	movq	-16(%rbp), %rdx	# tail, tail.646
	movq	-24(%rbp), %rax	# head, head.647
	movq	%rdx, %rsi	# tail.646,
	movq	%rax, %rdi	# head.647,
	call	rm_line_notes	#
.L500:
	.loc 1 2749 0
	movq	-24(%rbp), %rax	# head, head.648
	movzwl	(%rax), %eax	# head.648_172->code, D.15904
	movzwl	%ax, %eax	# D.15904, D.15900
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15905
	cmpb	$105, %al	#, D.15905
	jne	.L501	#,
.LBB57:
	.loc 1 2753 0
	movq	-24(%rbp), %rax	# head, head.649
	movq	56(%rax), %rax	# head.649_176->fld[6].rtx, tmp282
	movq	%rax, -8(%rbp)	# tmp282, note
	jmp	.L502	#
.L504:
	.loc 1 2754 0
	movq	-8(%rbp), %rax	# note, tmp283
	movzbl	2(%rax), %eax	# note_14->mode, D.15906
	cmpb	$24, %al	#, D.15906
	jne	.L503	#,
	.loc 1 2756 0
	movq	-24(%rbp), %rax	# head, head.650
	movq	-8(%rbp), %rdx	# note, tmp284
	movq	%rdx, %rsi	# tmp284,
	movq	%rax, %rdi	# head.650,
	call	remove_note	#
	.loc 1 2757 0
	movq	-8(%rbp), %rax	# note, tmp285
	movq	16(%rax), %rax	# note_14->fld[1].rtx, tmp286
	movq	%rax, -8(%rbp)	# tmp286, note
	.loc 1 2758 0
	movq	-24(%rbp), %rax	# head, head.651
	movq	-8(%rbp), %rdx	# note, tmp287
	movq	%rdx, %rsi	# tmp287,
	movq	%rax, %rdi	# head.651,
	call	remove_note	#
.L503:
	.loc 1 2753 0
	movq	-8(%rbp), %rax	# note, tmp288
	movq	16(%rax), %rax	# note_13->fld[1].rtx, tmp289
	movq	%rax, -8(%rbp)	# tmp289, note
.L502:
	.loc 1 2753 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, note
	jne	.L504	#,
.L501:
.LBE57:
	.loc 1 2765 0 is_stmt 1
	movq	-16(%rbp), %rdx	# tail, tail.652
	movq	-24(%rbp), %rax	# head, head.653
	movq	%rdx, %rsi	# tail.652,
	movq	%rax, %rdi	# head.653,
	call	rm_other_notes	#
	.loc 1 2767 0
	movl	-44(%rbp), %eax	# bb, tmp290
	movl	%eax, target_bb(%rip)	# tmp290, target_bb
	.loc 1 2769 0
	movq	current_sched_info(%rip), %rax	# current_sched_info, current_sched_info.654
	.loc 1 2770 0
	movl	current_nr_blocks(%rip), %edx	# current_nr_blocks, current_nr_blocks.656
	cmpl	$1, %edx	#, current_nr_blocks.656
	jle	.L505	#,
	.loc 1 2770 0 is_stmt 0 discriminator 1
	movl	flag_schedule_interblock(%rip), %edx	# flag_schedule_interblock, flag_schedule_interblock.657
	testl	%edx, %edx	# flag_schedule_interblock.657
	jne	.L505	#,
	.loc 1 2770 0 discriminator 3
	movl	$1, %edx	#, iftmp.655
	jmp	.L506	#
.L505:
	.loc 1 2770 0 discriminator 2
	movl	$0, %edx	#, iftmp.655
.L506:
	.loc 1 2770 0 discriminator 4
	andl	$1, %edx	#, D.15907
	movl	%edx, %ecx	# D.15907, tmp292
	andl	$1, %ecx	#, tmp292
	movzbl	96(%rax), %edx	# current_sched_info.654_185->queue_must_finish_empty, tmp293
	andl	$-2, %edx	#, tmp294
	orl	%ecx, %edx	# tmp292, tmp295
	movb	%dl, 96(%rax)	# tmp295, current_sched_info.654_185->queue_must_finish_empty
	.loc 1 2772 0 is_stmt 1 discriminator 4
	movl	-40(%rbp), %edx	# rgn_n_insns, tmp296
	movl	-28(%rbp), %eax	# b, tmp297
	movl	%edx, %esi	# tmp296,
	movl	%eax, %edi	# tmp297,
	call	schedule_block	#
	.loc 1 2773 0 discriminator 4
	movl	sched_n_insns(%rip), %eax	# sched_n_insns, sched_n_insns.658
	addl	%eax, -36(%rbp)	# sched_n_insns.658, sched_rgn_n_insns
	.loc 1 2776 0 discriminator 4
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.659
	movl	-28(%rbp), %edx	# b, tmp299
	movslq	%edx, %rdx	# tmp299, tmp298
	addq	$4, %rdx	#, tmp300
	movq	(%rax,%rdx,8), %rax	# basic_block_info.659_194->data.bb, D.15908
	movq	(%rax), %rdx	# _195->head, D.15903
	movq	-24(%rbp), %rax	# head, head.660
	cmpq	%rax, %rdx	# head.660, D.15903
	jne	.L507	#,
	.loc 1 2777 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.661
	movl	-28(%rbp), %edx	# b, tmp302
	movslq	%edx, %rdx	# tmp302, tmp301
	addq	$4, %rdx	#, tmp303
	movq	(%rax,%rdx,8), %rax	# basic_block_info.661_198->data.bb, D.15908
	movq	current_sched_info(%rip), %rdx	# current_sched_info, current_sched_info.662
	movq	80(%rdx), %rdx	# current_sched_info.662_200->head, D.15903
	movq	%rdx, (%rax)	# D.15903, _199->head
.L507:
	.loc 1 2778 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.663
	movl	-28(%rbp), %edx	# b, tmp305
	movslq	%edx, %rdx	# tmp305, tmp304
	addq	$4, %rdx	#, tmp306
	movq	(%rax,%rdx,8), %rax	# basic_block_info.663_202->data.bb, D.15908
	movq	8(%rax), %rdx	# _203->end, D.15903
	movq	-16(%rbp), %rax	# tail, tail.664
	cmpq	%rax, %rdx	# tail.664, D.15903
	jne	.L508	#,
	.loc 1 2779 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.665
	movl	-28(%rbp), %edx	# b, tmp308
	movslq	%edx, %rdx	# tmp308, tmp307
	addq	$4, %rdx	#, tmp309
	movq	(%rax,%rdx,8), %rax	# basic_block_info.665_206->data.bb, D.15908
	movq	current_sched_info(%rip), %rdx	# current_sched_info, current_sched_info.666
	movq	88(%rdx), %rdx	# current_sched_info.666_208->tail, D.15903
	movq	%rdx, 8(%rax)	# D.15903, _207->end
.L508:
	.loc 1 2782 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.667
	cmpl	$1, %eax	#, current_nr_blocks.667
	jle	.L499	#,
	.loc 1 2784 0
	movq	candidate_table(%rip), %rax	# candidate_table, candidate_table.668
	movq	%rax, %rdi	# candidate_table.668,
	call	free	#
	.loc 1 2785 0
	movq	bblst_table(%rip), %rax	# bblst_table, bblst_table.669
	movq	%rax, %rdi	# bblst_table.669,
	call	free	#
	.loc 1 2786 0
	movq	bitlst_table(%rip), %rax	# bitlst_table, bitlst_table.670
	movq	%rax, %rdi	# bitlst_table.670,
	call	free	#
.L499:
.LBE56:
	.loc 1 2724 0
	addl	$1, -44(%rbp)	#, bb
.L497:
	.loc 1 2724 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.671
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.671, bb
	jl	.L510	#,
	.loc 1 2791 0 is_stmt 1
	movl	-36(%rbp), %eax	# sched_rgn_n_insns, tmp310
	cmpl	-40(%rbp), %eax	# rgn_n_insns, tmp310
	je	.L511	#,
	.loc 1 2792 0
	movl	$__FUNCTION__.11593, %edx	#,
	movl	$2792, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L511:
	.loc 1 2795 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.672
	testl	%eax, %eax	# write_symbols.672
	je	.L512	#,
	.loc 1 2797 0
	movl	$0, -44(%rbp)	#, bb
	jmp	.L513	#
.L514:
.LBB58:
	.loc 1 2800 0 discriminator 2
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.673
	movl	current_blocks(%rip), %ecx	# current_blocks, current_blocks.674
	movl	-44(%rbp), %edx	# bb, tmp311
	addl	%ecx, %edx	# current_blocks.674, D.15900
	movslq	%edx, %rdx	# D.15900, D.15897
	salq	$2, %rdx	#, D.15897
	addq	%rdx, %rax	# D.15897, D.15901
	movl	(%rax), %eax	# *_223, D.15900
	leaq	-16(%rbp), %rdx	#, tmp312
	leaq	-24(%rbp), %rcx	#, tmp313
	movq	%rcx, %rsi	# tmp313,
	movl	%eax, %edi	# D.15900,
	call	get_block_head_tail	#
	.loc 1 2801 0 discriminator 2
	movq	-16(%rbp), %rdx	# tail, tail.675
	movq	-24(%rbp), %rax	# head, head.676
	movq	%rdx, %rsi	# tail.675,
	movq	%rax, %rdi	# head.676,
	call	restore_line_notes	#
.LBE58:
	.loc 1 2797 0 discriminator 2
	addl	$1, -44(%rbp)	#, bb
.L513:
	.loc 1 2797 0 is_stmt 0 discriminator 1
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.677
	cmpl	%eax, -44(%rbp)	# current_nr_blocks.677, bb
	jl	.L514	#,
.L512:
	.loc 1 2806 0 is_stmt 1
	call	free_pending_lists	#
	.loc 1 2808 0
	call	finish_deps_global	#
	.loc 1 2810 0
	movq	bb_deps(%rip), %rax	# bb_deps, bb_deps.678
	movq	%rax, %rdi	# bb_deps.678,
	call	free	#
	.loc 1 2812 0
	movl	current_nr_blocks(%rip), %eax	# current_nr_blocks, current_nr_blocks.679
	cmpl	$1, %eax	#, current_nr_blocks.679
	jle	.L479	#,
	.loc 1 2814 0
	movq	prob(%rip), %rax	# prob, prob.680
	movq	%rax, %rdi	# prob.680,
	call	free	#
	.loc 1 2815 0
	movq	dom(%rip), %rax	# dom, dom.681
	movq	%rax, %rdi	# dom.681,
	call	free	#
	.loc 1 2816 0
	movq	pot_split(%rip), %rax	# pot_split, pot_split.682
	movq	%rax, %rdi	# pot_split.682,
	call	free	#
	.loc 1 2817 0
	movq	ancestor_edges(%rip), %rax	# ancestor_edges, ancestor_edges.683
	movq	%rax, %rdi	# ancestor_edges.683,
	call	free	#
	.loc 1 2818 0
	movq	edge_to_bit(%rip), %rax	# edge_to_bit, edge_to_bit.684
	movq	%rax, %rdi	# edge_to_bit.684,
	call	free	#
	.loc 1 2819 0
	movq	rgn_edges(%rip), %rax	# rgn_edges, rgn_edges.685
	movq	%rax, %rdi	# rgn_edges.685,
	call	free	#
.L479:
	.loc 1 2821 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	schedule_region, .-schedule_region
	.local	deaths_in_region
	.comm	deaths_in_region,8,8
	.type	init_regions, @function
init_regions:
.LFB45:
	.loc 1 2831 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2835 0
	movl	$0, nr_regions(%rip)	#, nr_regions
	.loc 1 2836 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.686
	cltq
	salq	$3, %rax	#, D.15910
	movq	%rax, %rdi	# D.15910,
	call	xmalloc	#
	movq	%rax, rgn_table(%rip)	# rgn_table.687, rgn_table
	.loc 1 2837 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.688
	cltq
	salq	$2, %rax	#, D.15910
	movq	%rax, %rdi	# D.15910,
	call	xmalloc	#
	movq	%rax, rgn_bb_table(%rip)	# rgn_bb_table.689, rgn_bb_table
	.loc 1 2838 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.690
	cltq
	salq	$2, %rax	#, D.15910
	movq	%rax, %rdi	# D.15910,
	call	xmalloc	#
	movq	%rax, block_to_bb(%rip)	# block_to_bb.691, block_to_bb
	.loc 1 2839 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.692
	cltq
	salq	$2, %rax	#, D.15910
	movq	%rax, %rdi	# D.15910,
	call	xmalloc	#
	movq	%rax, containing_rgn(%rip)	# containing_rgn.693, containing_rgn
	.loc 1 2842 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.694
	testl	%eax, %eax	# reload_completed.694
	jne	.L517	#,
	.loc 1 2843 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.695
	cmpl	$1, %eax	#, n_basic_blocks.695
	je	.L517	#,
	.loc 1 2844 0
	movl	flag_schedule_interblock(%rip), %eax	# flag_schedule_interblock, flag_schedule_interblock.696
	testl	%eax, %eax	# flag_schedule_interblock.696
	jne	.L518	#,
.L517:
	.loc 1 2846 0
	call	find_single_block_region	#
	jmp	.L524	#
.L518:
	.loc 1 2851 0
	call	is_cfg_nonregular	#
	testl	%eax, %eax	# D.15911
	je	.L520	#,
	.loc 1 2853 0
	call	find_single_block_region	#
	jmp	.L524	#
.L520:
.LBB59:
	.loc 1 2860 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.697
	movl	%eax, %edx	# n_basic_blocks.697, n_basic_blocks.698
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.699
	movl	%edx, %esi	# n_basic_blocks.698,
	movl	%eax, %edi	# n_basic_blocks.700,
	call	sbitmap_vector_alloc	#
	movq	%rax, -16(%rbp)	# tmp89, dom
	.loc 1 2873 0
	call	create_edge_list	#
	movq	%rax, -8(%rbp)	# tmp90, edge_list
	.loc 1 2876 0
	movq	-16(%rbp), %rax	# dom, tmp91
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp91,
	movl	$0, %edi	#,
	call	calculate_dominance_info	#
	.loc 1 2881 0
	movq	-8(%rbp), %rax	# edge_list, tmp92
	movq	%rax, %rdi	# tmp92,
	call	build_control_flow	#
	testl	%eax, %eax	# D.15911
	je	.L521	#,
	.loc 1 2882 0
	call	find_single_block_region	#
	jmp	.L522	#
.L521:
	.loc 1 2884 0
	movq	-16(%rbp), %rdx	# dom, tmp93
	movq	-8(%rbp), %rax	# edge_list, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	find_rgns	#
.L522:
	.loc 1 2886 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.701
	cmpl	$2, %eax	#, sched_verbose.701
	jle	.L523	#,
	.loc 1 2887 0
	call	debug_regions	#
.L523:
	.loc 1 2890 0
	movq	-8(%rbp), %rax	# edge_list, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free_edge_list	#
	.loc 1 2894 0
	movq	-16(%rbp), %rax	# dom, tmp96
	movq	%rax, %rdi	# tmp96,
	call	free	#
.L524:
.LBE59:
	.loc 1 2917 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	count_or_remove_death_notes	#
	.loc 1 2918 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	init_regions, .-init_regions
	.section	.rodata
	.align 8
.LC45:
	.string	"\n;; Procedure interblock/speculative motions == %d/%d \n"
	.text
	.globl	schedule_insns
	.type	schedule_insns, @function
schedule_insns:
.LFB46:
	.loc 1 2926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# dump_file, dump_file
	.loc 1 2933 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.713
	testl	%eax, %eax	# n_basic_blocks.713
	jne	.L526	#,
	.loc 1 2934 0
	jmp	.L525	#
.L526:
	.loc 1 2936 0
	call	scope_to_insns_initialize	#
	.loc 1 2938 0
	movl	$0, nr_inter(%rip)	#, nr_inter
	.loc 1 2939 0
	movl	$0, nr_spec(%rip)	#, nr_spec
	.loc 1 2941 0
	movq	-40(%rbp), %rax	# dump_file, tmp148
	movq	%rax, %rdi	# tmp148,
	call	sched_init	#
	.loc 1 2943 0
	call	init_regions	#
	.loc 1 2945 0
	movq	$region_sched_info, current_sched_info(%rip)	#, current_sched_info
	.loc 1 2948 0
	movl	$0, -24(%rbp)	#, rgn
	jmp	.L528	#
.L529:
	.loc 1 2949 0 discriminator 2
	movl	-24(%rbp), %eax	# rgn, tmp149
	movl	%eax, %edi	# tmp149,
	call	schedule_region	#
	.loc 1 2948 0 discriminator 2
	addl	$1, -24(%rbp)	#, rgn
.L528:
	.loc 1 2948 0 is_stmt 0 discriminator 1
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.714
	cmpl	%eax, -24(%rbp)	# nr_regions.714, rgn
	jl	.L529	#,
	.loc 1 2964 0 is_stmt 1
	call	allocate_reg_life_data	#
	.loc 1 2965 0
	call	get_max_uid	#
	movl	%eax, %edi	# D.15912,
	call	compute_bb_for_insn	#
	.loc 1 2967 0
	movl	$0, -20(%rbp)	#, any_large_regions
	.loc 1 2968 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.715
	movl	%eax, %edi	# n_basic_blocks.716,
	call	sbitmap_alloc	#
	movq	%rax, -16(%rbp)	# tmp150, large_region_blocks
	.loc 1 2969 0
	movq	-16(%rbp), %rax	# large_region_blocks, tmp151
	movq	%rax, %rdi	# tmp151,
	call	sbitmap_ones	#
	.loc 1 2971 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.717
	movl	%eax, %edi	# n_basic_blocks.718,
	call	sbitmap_alloc	#
	movq	%rax, -8(%rbp)	# tmp152, blocks
	.loc 1 2972 0
	movq	-8(%rbp), %rax	# blocks, tmp153
	movq	%rax, %rdi	# tmp153,
	call	sbitmap_zero	#
	.loc 1 2978 0
	movl	$0, -24(%rbp)	#, rgn
	jmp	.L530	#
.L533:
	.loc 1 2979 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.719
	movl	-24(%rbp), %edx	# rgn, tmp154
	movslq	%edx, %rdx	# tmp154, D.15913
	salq	$3, %rdx	#, D.15913
	addq	%rdx, %rax	# D.15913, D.15914
	movl	(%rax), %eax	# _24->rgn_nr_blocks, D.15912
	cmpl	$1, %eax	#, D.15912
	jle	.L531	#,
	.loc 1 2980 0
	movl	$1, -20(%rbp)	#, any_large_regions
	jmp	.L532	#
.L531:
	.loc 1 2983 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.720
	movq	rgn_table(%rip), %rdx	# rgn_table, rgn_table.721
	movl	-24(%rbp), %ecx	# rgn, tmp155
	movslq	%ecx, %rcx	# tmp155, D.15913
	salq	$3, %rcx	#, D.15913
	addq	%rcx, %rdx	# D.15913, D.15914
	movl	4(%rdx), %edx	# _31->rgn_blocks, D.15912
	movslq	%edx, %rdx	# D.15912, D.15913
	salq	$2, %rdx	#, D.15913
	addq	%rdx, %rax	# D.15913, D.15915
	movl	(%rax), %eax	# *_35, D.15912
	shrl	$6, %eax	#, D.15916
	movq	-8(%rbp), %rdx	# blocks, tmp156
	movl	%eax, %ecx	# D.15916, tmp157
	addq	$2, %rcx	#, tmp158
	movq	(%rdx,%rcx,8), %rdx	# blocks_18->elms, D.15913
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.722
	movq	rgn_table(%rip), %rsi	# rgn_table, rgn_table.723
	movl	-24(%rbp), %edi	# rgn, tmp159
	movslq	%edi, %rdi	# tmp159, D.15913
	salq	$3, %rdi	#, D.15913
	addq	%rdi, %rsi	# D.15913, D.15914
	movl	4(%rsi), %esi	# _44->rgn_blocks, D.15912
	movslq	%esi, %rsi	# D.15912, D.15913
	salq	$2, %rsi	#, D.15913
	addq	%rsi, %rcx	# D.15913, D.15915
	movl	(%rcx), %ecx	# *_48, D.15912
	andl	$63, %ecx	#, D.15912
	movl	$1, %esi	#, tmp160
	salq	%cl, %rsi	# D.15912, D.15913
	movq	%rsi, %rcx	# D.15913, D.15913
	orq	%rdx, %rcx	# D.15913, D.15913
	movq	-8(%rbp), %rdx	# blocks, tmp161
	movl	%eax, %eax	# D.15916, tmp162
	addq	$2, %rax	#, tmp163
	movq	%rcx, (%rdx,%rax,8)	# D.15913, blocks_18->elms
	.loc 1 2984 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.724
	movq	rgn_table(%rip), %rdx	# rgn_table, rgn_table.725
	movl	-24(%rbp), %ecx	# rgn, tmp164
	movslq	%ecx, %rcx	# tmp164, D.15913
	salq	$3, %rcx	#, D.15913
	addq	%rcx, %rdx	# D.15913, D.15914
	movl	4(%rdx), %edx	# _57->rgn_blocks, D.15912
	movslq	%edx, %rdx	# D.15912, D.15913
	salq	$2, %rdx	#, D.15913
	addq	%rdx, %rax	# D.15913, D.15915
	movl	(%rax), %eax	# *_61, D.15912
	shrl	$6, %eax	#, D.15916
	movq	-16(%rbp), %rdx	# large_region_blocks, tmp165
	movl	%eax, %ecx	# D.15916, tmp166
	addq	$2, %rcx	#, tmp167
	movq	(%rdx,%rcx,8), %rdx	# large_region_blocks_15->elms, D.15913
	movq	rgn_bb_table(%rip), %rcx	# rgn_bb_table, rgn_bb_table.726
	movq	rgn_table(%rip), %rsi	# rgn_table, rgn_table.727
	movl	-24(%rbp), %edi	# rgn, tmp168
	movslq	%edi, %rdi	# tmp168, D.15913
	salq	$3, %rdi	#, D.15913
	addq	%rdi, %rsi	# D.15913, D.15914
	movl	4(%rsi), %esi	# _70->rgn_blocks, D.15912
	movslq	%esi, %rsi	# D.15912, D.15913
	salq	$2, %rsi	#, D.15913
	addq	%rsi, %rcx	# D.15913, D.15915
	movl	(%rcx), %ecx	# *_74, D.15912
	andl	$63, %ecx	#, D.15912
	movl	$1, %esi	#, tmp169
	salq	%cl, %rsi	# D.15912, D.15913
	movq	%rsi, %rcx	# D.15913, D.15913
	notq	%rcx	# D.15913
	andq	%rdx, %rcx	# D.15913, D.15913
	movq	-16(%rbp), %rdx	# large_region_blocks, tmp170
	movl	%eax, %eax	# D.15916, tmp171
	addq	$2, %rax	#, tmp172
	movq	%rcx, (%rdx,%rax,8)	# D.15913, large_region_blocks_15->elms
.L532:
	.loc 1 2978 0
	addl	$1, -24(%rbp)	#, rgn
.L530:
	.loc 1 2978 0 is_stmt 0 discriminator 1
	movl	nr_regions(%rip), %eax	# nr_regions, nr_regions.728
	cmpl	%eax, -24(%rbp)	# nr_regions.728, rgn
	jl	.L533	#,
	.loc 1 2990 0 is_stmt 1
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.730
	.loc 1 2989 0
	testl	%eax, %eax	# reload_completed.730
	je	.L534	#,
	.loc 1 2989 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.729
	jmp	.L535	#
.L534:
	.loc 1 2989 0 discriminator 2
	movl	$5, %eax	#, iftmp.729
.L535:
	.loc 1 2989 0 discriminator 3
	movq	-8(%rbp), %rcx	# blocks, tmp173
	movl	%eax, %edx	# iftmp.729,
	movl	$0, %esi	#,
	movq	%rcx, %rdi	# tmp173,
	call	update_life_info	#
	.loc 1 2992 0 is_stmt 1 discriminator 3
	cmpl	$0, -20(%rbp)	#, any_large_regions
	je	.L545	#,
	.loc 1 2994 0
	movq	-16(%rbp), %rax	# large_region_blocks, tmp174
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp174,
	call	update_life_info	#
.L545:
	.loc 1 3017 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.739
	testl	%eax, %eax	# reload_completed.739
	je	.L537	#,
	.loc 1 3018 0
	call	get_insns	#
	movq	%rax, %rdi	# D.15917,
	call	reposition_prologue_and_epilogue_notes	#
.L537:
	.loc 1 3021 0
	movl	write_symbols(%rip), %eax	# write_symbols, write_symbols.740
	testl	%eax, %eax	# write_symbols.740
	je	.L538	#,
	.loc 1 3022 0
	call	rm_redundant_line_notes	#
.L538:
	.loc 1 3024 0
	call	scope_to_insns_finalize	#
	.loc 1 3026 0
	movl	sched_verbose(%rip), %eax	# sched_verbose, sched_verbose.741
	testl	%eax, %eax	# sched_verbose.741
	je	.L539	#,
	.loc 1 3028 0
	movl	reload_completed(%rip), %eax	# reload_completed, reload_completed.742
	testl	%eax, %eax	# reload_completed.742
	jne	.L540	#,
	.loc 1 3028 0 is_stmt 0 discriminator 1
	movl	flag_schedule_interblock(%rip), %eax	# flag_schedule_interblock, flag_schedule_interblock.743
	testl	%eax, %eax	# flag_schedule_interblock.743
	je	.L540	#,
	.loc 1 3030 0 is_stmt 1
	movl	nr_spec(%rip), %ecx	# nr_spec, nr_spec.744
	movl	nr_inter(%rip), %edx	# nr_inter, nr_inter.745
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.746
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# sched_dump.746,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L541	#
.L540:
	.loc 1 3036 0
	movl	nr_inter(%rip), %eax	# nr_inter, nr_inter.747
	testl	%eax, %eax	# nr_inter.747
	jle	.L541	#,
	.loc 1 3037 0
	movl	$__FUNCTION__.11626, %edx	#,
	movl	$3037, %esi	#,
	movl	$.LC3, %edi	#,
	call	fancy_abort	#
.L541:
	.loc 1 3039 0
	movq	sched_dump(%rip), %rax	# sched_dump, sched_dump.748
	movq	%rax, %rcx	# sched_dump.748,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
.L539:
	.loc 1 3043 0
	movq	rgn_table(%rip), %rax	# rgn_table, rgn_table.749
	movq	%rax, %rdi	# rgn_table.749,
	call	free	#
	.loc 1 3044 0
	movq	rgn_bb_table(%rip), %rax	# rgn_bb_table, rgn_bb_table.750
	movq	%rax, %rdi	# rgn_bb_table.750,
	call	free	#
	.loc 1 3045 0
	movq	block_to_bb(%rip), %rax	# block_to_bb, block_to_bb.751
	movq	%rax, %rdi	# block_to_bb.751,
	call	free	#
	.loc 1 3046 0
	movq	containing_rgn(%rip), %rax	# containing_rgn, containing_rgn.752
	movq	%rax, %rdi	# containing_rgn.752,
	call	free	#
	.loc 1 3048 0
	call	sched_finish	#
	.loc 1 3050 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.753
	testq	%rax, %rax	# edge_table.753
	je	.L542	#,
	.loc 1 3052 0
	movq	edge_table(%rip), %rax	# edge_table, edge_table.754
	movq	%rax, %rdi	# edge_table.754,
	call	free	#
	.loc 1 3053 0
	movq	$0, edge_table(%rip)	#, edge_table
.L542:
	.loc 1 3056 0
	movq	in_edges(%rip), %rax	# in_edges, in_edges.755
	testq	%rax, %rax	# in_edges.755
	je	.L543	#,
	.loc 1 3058 0
	movq	in_edges(%rip), %rax	# in_edges, in_edges.756
	movq	%rax, %rdi	# in_edges.756,
	call	free	#
	.loc 1 3059 0
	movq	$0, in_edges(%rip)	#, in_edges
.L543:
	.loc 1 3061 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.757
	testq	%rax, %rax	# out_edges.757
	je	.L544	#,
	.loc 1 3063 0
	movq	out_edges(%rip), %rax	# out_edges, out_edges.758
	movq	%rax, %rdi	# out_edges.758,
	call	free	#
	.loc 1 3064 0
	movq	$0, out_edges(%rip)	#, out_edges
.L544:
	.loc 1 3067 0
	movq	-8(%rbp), %rax	# blocks, tmp175
	movq	%rax, %rdi	# tmp175,
	call	free	#
	.loc 1 3068 0
	movq	-16(%rbp), %rax	# large_region_blocks, tmp176
	movq	%rax, %rdi	# tmp176,
	call	free	#
.L525:
	.loc 1 3069 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	schedule_insns, .-schedule_insns
	.section	.rodata
	.type	__FUNCTION__.11000, @object
	.size	__FUNCTION__.11000, 14
__FUNCTION__.11000:
	.string	"debug_regions"
	.align 16
	.type	__FUNCTION__.11149, @object
	.size	__FUNCTION__.11149, 17
__FUNCTION__.11149:
	.string	"compute_trg_info"
	.local	tmp.11418
	.comm	tmp.11418,80,32
	.align 16
	.type	__FUNCTION__.11593, @object
	.size	__FUNCTION__.11593, 16
__FUNCTION__.11593:
	.string	"schedule_region"
	.type	__FUNCTION__.11626, @object
	.size	__FUNCTION__.11626, 15
__FUNCTION__.11626:
	.string	"schedule_insns"
	.align 4
.LC6:
	.long	0
	.align 4
.LC7:
	.long	1065353216
	.align 8
.LC8:
	.long	3435973837
	.long	1072483532
	.align 8
.LC9:
	.long	0
	.long	1079574528
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
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "sbitmap.h"
	.file 13 "varray.h"
	.file 14 "regs.h"
	.file 15 "function.h"
	.file 16 "flags.h"
	.file 17 "insn-attr.h"
	.file 18 "sched-int.h"
	.file 19 "hard-reg-set.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3f6c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF882
	.byte	0x1
	.long	.LASF883
	.long	.LASF884
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
	.long	0xd38
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
	.long	0xd48
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
	.long	.LASF885
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
	.long	.LASF886
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
	.uleb128 0x16
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x656
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
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x69f
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
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa9b
	.uleb128 0xe
	.long	.LASF174
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF175
	.sleb128 2
	.uleb128 0xe
	.long	.LASF176
	.sleb128 3
	.uleb128 0xe
	.long	.LASF177
	.sleb128 4
	.uleb128 0xe
	.long	.LASF178
	.sleb128 5
	.uleb128 0xe
	.long	.LASF179
	.sleb128 6
	.uleb128 0xe
	.long	.LASF180
	.sleb128 7
	.uleb128 0xe
	.long	.LASF181
	.sleb128 8
	.uleb128 0xe
	.long	.LASF182
	.sleb128 9
	.uleb128 0xe
	.long	.LASF183
	.sleb128 10
	.uleb128 0xe
	.long	.LASF184
	.sleb128 11
	.uleb128 0xe
	.long	.LASF185
	.sleb128 12
	.uleb128 0xe
	.long	.LASF186
	.sleb128 13
	.uleb128 0xe
	.long	.LASF187
	.sleb128 14
	.uleb128 0xe
	.long	.LASF188
	.sleb128 15
	.uleb128 0xe
	.long	.LASF189
	.sleb128 16
	.uleb128 0xe
	.long	.LASF190
	.sleb128 17
	.uleb128 0xe
	.long	.LASF191
	.sleb128 18
	.uleb128 0xe
	.long	.LASF192
	.sleb128 19
	.uleb128 0xe
	.long	.LASF193
	.sleb128 20
	.uleb128 0xe
	.long	.LASF194
	.sleb128 21
	.uleb128 0xe
	.long	.LASF195
	.sleb128 22
	.uleb128 0xe
	.long	.LASF196
	.sleb128 23
	.uleb128 0xe
	.long	.LASF197
	.sleb128 24
	.uleb128 0xe
	.long	.LASF198
	.sleb128 25
	.uleb128 0xe
	.long	.LASF199
	.sleb128 26
	.uleb128 0xe
	.long	.LASF200
	.sleb128 27
	.uleb128 0xe
	.long	.LASF201
	.sleb128 28
	.uleb128 0xe
	.long	.LASF202
	.sleb128 29
	.uleb128 0xe
	.long	.LASF203
	.sleb128 30
	.uleb128 0xe
	.long	.LASF204
	.sleb128 31
	.uleb128 0xe
	.long	.LASF205
	.sleb128 32
	.uleb128 0xe
	.long	.LASF206
	.sleb128 33
	.uleb128 0xe
	.long	.LASF207
	.sleb128 34
	.uleb128 0xe
	.long	.LASF208
	.sleb128 35
	.uleb128 0xe
	.long	.LASF209
	.sleb128 36
	.uleb128 0xe
	.long	.LASF210
	.sleb128 37
	.uleb128 0xe
	.long	.LASF211
	.sleb128 38
	.uleb128 0xe
	.long	.LASF212
	.sleb128 39
	.uleb128 0xe
	.long	.LASF213
	.sleb128 40
	.uleb128 0xe
	.long	.LASF214
	.sleb128 41
	.uleb128 0xe
	.long	.LASF215
	.sleb128 42
	.uleb128 0xe
	.long	.LASF216
	.sleb128 43
	.uleb128 0xe
	.long	.LASF217
	.sleb128 44
	.uleb128 0xe
	.long	.LASF218
	.sleb128 45
	.uleb128 0xe
	.long	.LASF219
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF220
	.sleb128 49
	.uleb128 0xe
	.long	.LASF221
	.sleb128 50
	.uleb128 0xe
	.long	.LASF222
	.sleb128 51
	.uleb128 0xe
	.long	.LASF223
	.sleb128 52
	.uleb128 0xe
	.long	.LASF224
	.sleb128 53
	.uleb128 0xe
	.long	.LASF225
	.sleb128 54
	.uleb128 0xe
	.long	.LASF226
	.sleb128 55
	.uleb128 0xe
	.long	.LASF227
	.sleb128 56
	.uleb128 0xe
	.long	.LASF228
	.sleb128 57
	.uleb128 0xe
	.long	.LASF229
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF230
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF231
	.sleb128 62
	.uleb128 0xe
	.long	.LASF232
	.sleb128 63
	.uleb128 0xe
	.long	.LASF233
	.sleb128 64
	.uleb128 0xe
	.long	.LASF234
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF235
	.sleb128 67
	.uleb128 0xe
	.long	.LASF236
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF237
	.sleb128 70
	.uleb128 0xe
	.long	.LASF238
	.sleb128 71
	.uleb128 0xe
	.long	.LASF239
	.sleb128 72
	.uleb128 0xe
	.long	.LASF240
	.sleb128 73
	.uleb128 0xe
	.long	.LASF241
	.sleb128 74
	.uleb128 0xe
	.long	.LASF242
	.sleb128 75
	.uleb128 0xe
	.long	.LASF243
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF244
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF245
	.sleb128 81
	.uleb128 0xe
	.long	.LASF246
	.sleb128 82
	.uleb128 0x17
	.string	"AND"
	.sleb128 83
	.uleb128 0x17
	.string	"IOR"
	.sleb128 84
	.uleb128 0x17
	.string	"XOR"
	.sleb128 85
	.uleb128 0x17
	.string	"NOT"
	.sleb128 86
	.uleb128 0xe
	.long	.LASF247
	.sleb128 87
	.uleb128 0xe
	.long	.LASF248
	.sleb128 88
	.uleb128 0xe
	.long	.LASF249
	.sleb128 89
	.uleb128 0xe
	.long	.LASF250
	.sleb128 90
	.uleb128 0xe
	.long	.LASF251
	.sleb128 91
	.uleb128 0xe
	.long	.LASF252
	.sleb128 92
	.uleb128 0xe
	.long	.LASF253
	.sleb128 93
	.uleb128 0xe
	.long	.LASF254
	.sleb128 94
	.uleb128 0xe
	.long	.LASF255
	.sleb128 95
	.uleb128 0xe
	.long	.LASF256
	.sleb128 96
	.uleb128 0xe
	.long	.LASF257
	.sleb128 97
	.uleb128 0xe
	.long	.LASF258
	.sleb128 98
	.uleb128 0xe
	.long	.LASF259
	.sleb128 99
	.uleb128 0xe
	.long	.LASF260
	.sleb128 100
	.uleb128 0xe
	.long	.LASF261
	.sleb128 101
	.uleb128 0x17
	.string	"NE"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ"
	.sleb128 103
	.uleb128 0x17
	.string	"GE"
	.sleb128 104
	.uleb128 0x17
	.string	"GT"
	.sleb128 105
	.uleb128 0x17
	.string	"LE"
	.sleb128 106
	.uleb128 0x17
	.string	"LT"
	.sleb128 107
	.uleb128 0x17
	.string	"GEU"
	.sleb128 108
	.uleb128 0x17
	.string	"GTU"
	.sleb128 109
	.uleb128 0x17
	.string	"LEU"
	.sleb128 110
	.uleb128 0x17
	.string	"LTU"
	.sleb128 111
	.uleb128 0xe
	.long	.LASF262
	.sleb128 112
	.uleb128 0xe
	.long	.LASF263
	.sleb128 113
	.uleb128 0xe
	.long	.LASF264
	.sleb128 114
	.uleb128 0xe
	.long	.LASF265
	.sleb128 115
	.uleb128 0xe
	.long	.LASF266
	.sleb128 116
	.uleb128 0xe
	.long	.LASF267
	.sleb128 117
	.uleb128 0xe
	.long	.LASF268
	.sleb128 118
	.uleb128 0xe
	.long	.LASF269
	.sleb128 119
	.uleb128 0xe
	.long	.LASF270
	.sleb128 120
	.uleb128 0xe
	.long	.LASF271
	.sleb128 121
	.uleb128 0xe
	.long	.LASF272
	.sleb128 122
	.uleb128 0xe
	.long	.LASF273
	.sleb128 123
	.uleb128 0xe
	.long	.LASF274
	.sleb128 124
	.uleb128 0xe
	.long	.LASF275
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF276
	.sleb128 127
	.uleb128 0xe
	.long	.LASF277
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF278
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF279
	.sleb128 132
	.uleb128 0xe
	.long	.LASF280
	.sleb128 133
	.uleb128 0xe
	.long	.LASF281
	.sleb128 134
	.uleb128 0xe
	.long	.LASF282
	.sleb128 135
	.uleb128 0xe
	.long	.LASF283
	.sleb128 136
	.uleb128 0xe
	.long	.LASF284
	.sleb128 137
	.uleb128 0xe
	.long	.LASF285
	.sleb128 138
	.uleb128 0xe
	.long	.LASF286
	.sleb128 139
	.uleb128 0xe
	.long	.LASF287
	.sleb128 140
	.uleb128 0xe
	.long	.LASF288
	.sleb128 141
	.uleb128 0xe
	.long	.LASF289
	.sleb128 142
	.uleb128 0xe
	.long	.LASF290
	.sleb128 143
	.uleb128 0xe
	.long	.LASF291
	.sleb128 144
	.uleb128 0xe
	.long	.LASF292
	.sleb128 145
	.uleb128 0xe
	.long	.LASF293
	.sleb128 146
	.uleb128 0xe
	.long	.LASF294
	.sleb128 147
	.uleb128 0xe
	.long	.LASF295
	.sleb128 148
	.uleb128 0xe
	.long	.LASF296
	.sleb128 149
	.uleb128 0xe
	.long	.LASF297
	.sleb128 150
	.uleb128 0xe
	.long	.LASF298
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF299
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb1c
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x47
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x49
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x4a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4e
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x50
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x53
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x55
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0x2
	.byte	0x56
	.long	0xa9b
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb6c
	.uleb128 0x8
	.long	.LASF309
	.byte	0x2
	.byte	0x5e
	.long	0x274
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x62
	.long	0x26b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF314
	.byte	0x2
	.byte	0x63
	.long	0xb27
	.uleb128 0x19
	.long	.LASF432
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc12
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x2
	.byte	0x69
	.long	0x274
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x2
	.byte	0x6b
	.long	0x26b
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x2
	.byte	0x6c
	.long	0x4c2
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x2
	.byte	0x6f
	.long	0x4e1
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x2
	.byte	0x70
	.long	0xb1c
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x2
	.byte	0x71
	.long	0xc17
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x2
	.byte	0x72
	.long	0xc4e
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd21
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x75
	.long	0xd27
	.byte	0
	.uleb128 0x1c
	.long	.LASF440
	.uleb128 0x3
	.byte	0x8
	.long	0xc12
	.uleb128 0x4
	.long	.LASF325
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc4e
	.uleb128 0x8
	.long	.LASF326
	.byte	0xa
	.byte	0x35
	.long	0xf83
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0xf83
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x37
	.long	0x26b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc1d
	.uleb128 0x4
	.long	.LASF329
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd21
	.uleb128 0x8
	.long	.LASF330
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
	.long	.LASF331
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xb7
	.long	0x13fa
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x13fa
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1365
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1365
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1365
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1365
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x272
	.byte	0x50
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xd4
	.long	0x1370
	.byte	0x60
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc54
	.uleb128 0x3
	.byte	0x8
	.long	0xb6c
	.uleb128 0x7
	.long	.LASF344
	.byte	0x2
	.byte	0x76
	.long	0xb77
	.uleb128 0x14
	.long	0xd2d
	.long	0xd48
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0xd58
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF345
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe1a
	.uleb128 0xe
	.long	.LASF346
	.sleb128 1
	.uleb128 0xe
	.long	.LASF347
	.sleb128 2
	.uleb128 0xe
	.long	.LASF348
	.sleb128 3
	.uleb128 0xe
	.long	.LASF349
	.sleb128 4
	.uleb128 0xe
	.long	.LASF350
	.sleb128 5
	.uleb128 0xe
	.long	.LASF351
	.sleb128 6
	.uleb128 0xe
	.long	.LASF352
	.sleb128 7
	.uleb128 0xe
	.long	.LASF353
	.sleb128 8
	.uleb128 0xe
	.long	.LASF354
	.sleb128 9
	.uleb128 0xe
	.long	.LASF355
	.sleb128 10
	.uleb128 0xe
	.long	.LASF356
	.sleb128 11
	.uleb128 0xe
	.long	.LASF357
	.sleb128 12
	.uleb128 0xe
	.long	.LASF358
	.sleb128 13
	.uleb128 0xe
	.long	.LASF359
	.sleb128 14
	.uleb128 0xe
	.long	.LASF360
	.sleb128 15
	.uleb128 0xe
	.long	.LASF361
	.sleb128 16
	.uleb128 0xe
	.long	.LASF362
	.sleb128 17
	.uleb128 0xe
	.long	.LASF363
	.sleb128 18
	.uleb128 0xe
	.long	.LASF364
	.sleb128 19
	.uleb128 0xe
	.long	.LASF365
	.sleb128 20
	.uleb128 0xe
	.long	.LASF366
	.sleb128 21
	.uleb128 0xe
	.long	.LASF367
	.sleb128 22
	.uleb128 0xe
	.long	.LASF368
	.sleb128 23
	.uleb128 0xe
	.long	.LASF369
	.sleb128 24
	.uleb128 0xe
	.long	.LASF370
	.sleb128 25
	.uleb128 0xe
	.long	.LASF371
	.sleb128 26
	.uleb128 0xe
	.long	.LASF372
	.sleb128 27
	.uleb128 0xe
	.long	.LASF373
	.sleb128 28
	.uleb128 0xe
	.long	.LASF374
	.sleb128 29
	.uleb128 0xe
	.long	.LASF375
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF376
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xec9
	.uleb128 0xe
	.long	.LASF377
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF378
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF379
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF380
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF381
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF382
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF383
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF384
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF385
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF386
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF387
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF388
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF389
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF390
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF391
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF392
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF393
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF394
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF395
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF396
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF397
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF398
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF399
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF400
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf25
	.uleb128 0xe
	.long	.LASF401
	.sleb128 0
	.uleb128 0xe
	.long	.LASF402
	.sleb128 1
	.uleb128 0xe
	.long	.LASF403
	.sleb128 2
	.uleb128 0xe
	.long	.LASF404
	.sleb128 3
	.uleb128 0xe
	.long	.LASF405
	.sleb128 4
	.uleb128 0xe
	.long	.LASF406
	.sleb128 5
	.uleb128 0xe
	.long	.LASF407
	.sleb128 6
	.uleb128 0xe
	.long	.LASF408
	.sleb128 7
	.uleb128 0xe
	.long	.LASF409
	.sleb128 8
	.uleb128 0xe
	.long	.LASF410
	.sleb128 9
	.uleb128 0xe
	.long	.LASF411
	.sleb128 10
	.uleb128 0xe
	.long	.LASF412
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF413
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0xf62
	.uleb128 0x8
	.long	.LASF414
	.byte	0xa
	.byte	0x2d
	.long	0xf62
	.byte	0
	.uleb128 0x8
	.long	.LASF415
	.byte	0xa
	.byte	0x2e
	.long	0xf62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x26b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF416
	.byte	0xa
	.byte	0x30
	.long	0xf68
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf25
	.uleb128 0x14
	.long	0x286
	.long	0xf78
	.uleb128 0x15
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF417
	.byte	0xa
	.byte	0x31
	.long	0xf25
	.uleb128 0x3
	.byte	0x8
	.long	0xf78
	.uleb128 0x7
	.long	.LASF418
	.byte	0xa
	.byte	0x39
	.long	0xc1d
	.uleb128 0x7
	.long	.LASF419
	.byte	0xa
	.byte	0x39
	.long	0xc4e
	.uleb128 0x16
	.long	.LASF420
	.byte	0x4
	.byte	0xa
	.byte	0x3c
	.long	0xfca
	.uleb128 0xe
	.long	.LASF421
	.sleb128 0
	.uleb128 0xe
	.long	.LASF422
	.sleb128 1
	.uleb128 0xe
	.long	.LASF423
	.sleb128 2
	.uleb128 0xe
	.long	.LASF424
	.sleb128 3
	.uleb128 0xe
	.long	.LASF425
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF426
	.byte	0x18
	.byte	0xc
	.byte	0x1f
	.long	0x1007
	.uleb128 0x8
	.long	.LASF427
	.byte	0xc
	.byte	0x21
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF312
	.byte	0xc
	.byte	0x22
	.long	0x26b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF428
	.byte	0xc
	.byte	0x23
	.long	0x26b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF429
	.byte	0xc
	.byte	0x24
	.long	0x1007
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.long	0x286
	.long	0x1017
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF430
	.byte	0xc
	.byte	0x25
	.long	0x1022
	.uleb128 0x3
	.byte	0x8
	.long	0xfca
	.uleb128 0x3
	.byte	0x8
	.long	0x286
	.uleb128 0x4
	.long	.LASF431
	.byte	0x10
	.byte	0xd
	.byte	0x24
	.long	0x1053
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
	.uleb128 0x19
	.long	.LASF433
	.byte	0x10
	.byte	0xd
	.byte	0x3a
	.long	0x1138
	.uleb128 0x1b
	.string	"c"
	.byte	0xd
	.byte	0x3b
	.long	0x49c
	.uleb128 0x1b
	.string	"uc"
	.byte	0xd
	.byte	0x3c
	.long	0x1138
	.uleb128 0x1b
	.string	"s"
	.byte	0xd
	.byte	0x3d
	.long	0x1148
	.uleb128 0x1b
	.string	"us"
	.byte	0xd
	.byte	0x3e
	.long	0x1158
	.uleb128 0x1b
	.string	"i"
	.byte	0xd
	.byte	0x3f
	.long	0x1168
	.uleb128 0x1b
	.string	"u"
	.byte	0xd
	.byte	0x40
	.long	0x1178
	.uleb128 0x1b
	.string	"l"
	.byte	0xd
	.byte	0x41
	.long	0x1188
	.uleb128 0x1b
	.string	"ul"
	.byte	0xd
	.byte	0x42
	.long	0x1007
	.uleb128 0x1a
	.long	.LASF434
	.byte	0xd
	.byte	0x43
	.long	0x1188
	.uleb128 0x1a
	.long	.LASF435
	.byte	0xd
	.byte	0x44
	.long	0x1007
	.uleb128 0x1a
	.long	.LASF436
	.byte	0xd
	.byte	0x45
	.long	0x1198
	.uleb128 0x1a
	.long	.LASF437
	.byte	0xd
	.byte	0x46
	.long	0x11a8
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xd
	.byte	0x47
	.long	0x11b8
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xd
	.byte	0x48
	.long	0x11c8
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xd
	.byte	0x49
	.long	0x11d8
	.uleb128 0x1a
	.long	.LASF419
	.byte	0xd
	.byte	0x4a
	.long	0x11e8
	.uleb128 0x1a
	.long	.LASF438
	.byte	0xd
	.byte	0x4b
	.long	0x11f8
	.uleb128 0x1b
	.string	"reg"
	.byte	0xd
	.byte	0x4c
	.long	0x1213
	.uleb128 0x1a
	.long	.LASF439
	.byte	0xd
	.byte	0x4d
	.long	0x12ba
	.uleb128 0x1b
	.string	"bb"
	.byte	0xd
	.byte	0x4e
	.long	0x12ca
	.uleb128 0x1b
	.string	"te"
	.byte	0xd
	.byte	0x4f
	.long	0x12da
	.byte	0
	.uleb128 0x14
	.long	0x28d
	.long	0x1148
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2a2
	.long	0x1158
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x294
	.long	0x1168
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x13e
	.long	0x1178
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26b
	.long	0x1188
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x274
	.long	0x1198
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x272
	.long	0x11a8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2bf
	.long	0x11b8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x11c8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x11d8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x11e8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xc4e
	.long	0x11f8
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x1208
	.long	0x1208
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x120e
	.uleb128 0x1c
	.long	.LASF441
	.uleb128 0x14
	.long	0x1223
	.long	0x1223
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1229
	.uleb128 0x4
	.long	.LASF442
	.byte	0x2c
	.byte	0xe
	.byte	0x2d
	.long	0x12ba
	.uleb128 0x8
	.long	.LASF443
	.byte	0xe
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF444
	.byte	0xe
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF445
	.byte	0xe
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF446
	.byte	0xe
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF447
	.byte	0xe
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF448
	.byte	0xe
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF449
	.byte	0xe
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF450
	.byte	0xe
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF452
	.byte	0xe
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF453
	.byte	0xe
	.byte	0x3d
	.long	0x2c5
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0x102e
	.long	0x12ca
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xd21
	.long	0x12da
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12ea
	.long	0x12ea
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12f0
	.uleb128 0x1c
	.long	.LASF454
	.uleb128 0x7
	.long	.LASF455
	.byte	0xd
	.byte	0x50
	.long	0x1053
	.uleb128 0x4
	.long	.LASF456
	.byte	0x30
	.byte	0xd
	.byte	0x53
	.long	0x1349
	.uleb128 0x8
	.long	.LASF457
	.byte	0xd
	.byte	0x54
	.long	0x27b
	.byte	0
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0x55
	.long	0x27b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF459
	.byte	0xd
	.byte	0x57
	.long	0x27b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF460
	.byte	0xd
	.byte	0x58
	.long	0x4c2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF461
	.byte	0xd
	.byte	0x59
	.long	0x12f5
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF462
	.byte	0xd
	.byte	0x5a
	.long	0x1354
	.uleb128 0x3
	.byte	0x8
	.long	0x1300
	.uleb128 0x7
	.long	.LASF463
	.byte	0xb
	.byte	0x1f
	.long	0xf89
	.uleb128 0x7
	.long	.LASF464
	.byte	0xb
	.byte	0x21
	.long	0xf94
	.uleb128 0x7
	.long	.LASF465
	.byte	0xb
	.byte	0x74
	.long	0x274
	.uleb128 0x4
	.long	.LASF466
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x13f4
	.uleb128 0x8
	.long	.LASF467
	.byte	0xb
	.byte	0x79
	.long	0x13f4
	.byte	0
	.uleb128 0x8
	.long	.LASF468
	.byte	0xb
	.byte	0x79
	.long	0x13f4
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd21
	.byte	0x10
	.uleb128 0x8
	.long	.LASF469
	.byte	0xb
	.byte	0x7c
	.long	0xd21
	.byte	0x18
	.uleb128 0x8
	.long	.LASF470
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x272
	.byte	0x28
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF471
	.byte	0xb
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1370
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x137b
	.uleb128 0x7
	.long	.LASF472
	.byte	0xb
	.byte	0x88
	.long	0x13f4
	.uleb128 0x7
	.long	.LASF452
	.byte	0xb
	.byte	0xdb
	.long	0xd21
	.uleb128 0x3
	.byte	0x8
	.long	0x13fa
	.uleb128 0x3
	.byte	0x8
	.long	0x1017
	.uleb128 0xf
	.long	.LASF473
	.byte	0x10
	.byte	0xb
	.value	0x1f0
	.long	0x1451
	.uleb128 0x10
	.long	.LASF474
	.byte	0xb
	.value	0x1f2
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF475
	.byte	0xb
	.value	0x1f3
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF476
	.byte	0xb
	.value	0x1f4
	.long	0x1410
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF477
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x1471
	.uleb128 0xe
	.long	.LASF478
	.sleb128 0
	.uleb128 0xe
	.long	.LASF479
	.sleb128 1
	.uleb128 0xe
	.long	.LASF480
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.long	.LASF481
	.byte	0x4
	.byte	0xb
	.value	0x2c1
	.long	0x148b
	.uleb128 0xe
	.long	.LASF482
	.sleb128 0
	.uleb128 0xe
	.long	.LASF483
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF484
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x14c8
	.uleb128 0x8
	.long	.LASF485
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x19
	.long	0x4e1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF414
	.byte	0xf
	.byte	0x1b
	.long	0x14c8
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x148b
	.uleb128 0x4
	.long	.LASF488
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x150b
	.uleb128 0x8
	.long	.LASF326
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF490
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF414
	.byte	0xf
	.byte	0x28
	.long	0x150b
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14ce
	.uleb128 0x4
	.long	.LASF491
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x15ba
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF490
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x4f
	.long	0x150b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0x58
	.long	0x4c2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF499
	.byte	0xf
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0x63
	.long	0x15ba
	.byte	0x40
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0x67
	.long	0x15c0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0x6b
	.long	0xec9
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28d
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF503
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1627
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF511
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x1aa7
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x1aac
	.byte	0
	.uleb128 0x8
	.long	.LASF512
	.byte	0xf
	.byte	0xb1
	.long	0x1ab7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0xf
	.byte	0xb2
	.long	0x1abd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF513
	.byte	0xf
	.byte	0xb3
	.long	0x1ac3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF514
	.byte	0xf
	.byte	0xb4
	.long	0x1ace
	.byte	0x20
	.uleb128 0x8
	.long	.LASF460
	.byte	0xf
	.byte	0xb9
	.long	0x4c2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF515
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF516
	.byte	0xf
	.byte	0xbf
	.long	0x1ad4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF517
	.byte	0xf
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF518
	.byte	0xf
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF519
	.byte	0xf
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF520
	.byte	0xf
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF521
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF522
	.byte	0xf
	.byte	0xda
	.long	0x25f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF523
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF524
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF525
	.byte	0xf
	.byte	0xe7
	.long	0x4c2
	.byte	0x88
	.uleb128 0x8
	.long	.LASF526
	.byte	0xf
	.byte	0xeb
	.long	0x1adf
	.byte	0x90
	.uleb128 0x8
	.long	.LASF527
	.byte	0xf
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF528
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF529
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF530
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF531
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF532
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF533
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF534
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF535
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF536
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF537
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF538
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF539
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1e
	.long	.LASF540
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1e
	.long	.LASF541
	.byte	0xf
	.value	0x12f
	.long	0x274
	.value	0x108
	.uleb128 0x1e
	.long	.LASF542
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1e
	.long	.LASF543
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1e
	.long	.LASF544
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1e
	.long	.LASF545
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1e
	.long	.LASF546
	.byte	0xf
	.value	0x148
	.long	0x26b
	.value	0x130
	.uleb128 0x1e
	.long	.LASF547
	.byte	0xf
	.value	0x14e
	.long	0xec9
	.value	0x138
	.uleb128 0x1e
	.long	.LASF548
	.byte	0xf
	.value	0x151
	.long	0x1aea
	.value	0x140
	.uleb128 0x1e
	.long	.LASF549
	.byte	0xf
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x1e
	.long	.LASF550
	.byte	0xf
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x1e
	.long	.LASF551
	.byte	0xf
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x1e
	.long	.LASF552
	.byte	0xf
	.value	0x161
	.long	0x14c8
	.value	0x158
	.uleb128 0x1e
	.long	.LASF553
	.byte	0xf
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x1e
	.long	.LASF554
	.byte	0xf
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x1e
	.long	.LASF555
	.byte	0xf
	.value	0x167
	.long	0x272
	.value	0x168
	.uleb128 0x1e
	.long	.LASF556
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1e
	.long	.LASF557
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1e
	.long	.LASF558
	.byte	0xf
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x1e
	.long	.LASF559
	.byte	0xf
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x1e
	.long	.LASF560
	.byte	0xf
	.value	0x175
	.long	0x1af5
	.value	0x188
	.uleb128 0x1e
	.long	.LASF561
	.byte	0xf
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x1e
	.long	.LASF562
	.byte	0xf
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x1e
	.long	.LASF563
	.byte	0xf
	.value	0x17c
	.long	0x1b00
	.value	0x198
	.uleb128 0x1e
	.long	.LASF564
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x1f
	.long	.LASF565
	.byte	0xf
	.value	0x188
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF566
	.byte	0xf
	.value	0x18c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF567
	.byte	0xf
	.value	0x18f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF568
	.byte	0xf
	.value	0x192
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF569
	.byte	0xf
	.value	0x195
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF570
	.byte	0xf
	.value	0x198
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF571
	.byte	0xf
	.value	0x19c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF572
	.byte	0xf
	.value	0x19f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF573
	.byte	0xf
	.value	0x1a3
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF574
	.byte	0xf
	.value	0x1a7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF575
	.byte	0xf
	.value	0x1aa
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF576
	.byte	0xf
	.value	0x1ad
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF577
	.byte	0xf
	.value	0x1b2
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF578
	.byte	0xf
	.value	0x1b6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF579
	.byte	0xf
	.value	0x1b9
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF580
	.byte	0xf
	.value	0x1bd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF581
	.byte	0xf
	.value	0x1c1
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF582
	.byte	0xf
	.value	0x1c5
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF583
	.byte	0xf
	.value	0x1cb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF584
	.byte	0xf
	.value	0x1d4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF585
	.byte	0xf
	.value	0x1d7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF586
	.byte	0xf
	.value	0x1da
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF587
	.byte	0xf
	.value	0x1dd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x1f
	.long	.LASF588
	.byte	0xf
	.value	0x1e0
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF589
	.uleb128 0x3
	.byte	0x8
	.long	0x1aa7
	.uleb128 0x1c
	.long	.LASF590
	.uleb128 0x3
	.byte	0x8
	.long	0x1ab2
	.uleb128 0x3
	.byte	0x8
	.long	0x15c6
	.uleb128 0x3
	.byte	0x8
	.long	0x1511
	.uleb128 0x1c
	.long	.LASF591
	.uleb128 0x3
	.byte	0x8
	.long	0x1ac9
	.uleb128 0x3
	.byte	0x8
	.long	0x1627
	.uleb128 0x1c
	.long	.LASF592
	.uleb128 0x3
	.byte	0x8
	.long	0x1ada
	.uleb128 0x1c
	.long	.LASF593
	.uleb128 0x3
	.byte	0x8
	.long	0x1ae5
	.uleb128 0x1c
	.long	.LASF594
	.uleb128 0x3
	.byte	0x8
	.long	0x1af0
	.uleb128 0x1c
	.long	.LASF595
	.uleb128 0x3
	.byte	0x8
	.long	0x1afb
	.uleb128 0x16
	.long	.LASF596
	.byte	0x4
	.byte	0x10
	.byte	0x1c
	.long	0x1b43
	.uleb128 0xe
	.long	.LASF597
	.sleb128 0
	.uleb128 0xe
	.long	.LASF598
	.sleb128 1
	.uleb128 0xe
	.long	.LASF599
	.sleb128 2
	.uleb128 0xe
	.long	.LASF600
	.sleb128 3
	.uleb128 0xe
	.long	.LASF601
	.sleb128 4
	.uleb128 0xe
	.long	.LASF602
	.sleb128 5
	.uleb128 0xe
	.long	.LASF603
	.sleb128 6
	.uleb128 0xe
	.long	.LASF604
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.long	.LASF605
	.byte	0x48
	.byte	0x11
	.byte	0x51
	.long	0x1bd4
	.uleb128 0x8
	.long	.LASF460
	.byte	0x11
	.byte	0x53
	.long	0x1bd4
	.byte	0
	.uleb128 0x8
	.long	.LASF606
	.byte	0x11
	.byte	0x54
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF607
	.byte	0x11
	.byte	0x55
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF608
	.byte	0x11
	.byte	0x56
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF609
	.byte	0x11
	.byte	0x57
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF610
	.byte	0x11
	.byte	0x58
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF611
	.byte	0x11
	.byte	0x59
	.long	0x1be8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF612
	.byte	0x11
	.byte	0x5a
	.long	0x1c07
	.byte	0x28
	.uleb128 0x8
	.long	.LASF613
	.byte	0x11
	.byte	0x5b
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF614
	.byte	0x11
	.byte	0x5c
	.long	0x1c21
	.byte	0x38
	.uleb128 0x8
	.long	.LASF615
	.byte	0x11
	.byte	0x5d
	.long	0x1c07
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	0x4c2
	.uleb128 0x20
	.long	0x13e
	.long	0x1be8
	.uleb128 0x21
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x1bed
	.uleb128 0x3
	.byte	0x8
	.long	0x1bd9
	.uleb128 0x20
	.long	0x13e
	.long	0x1c07
	.uleb128 0x21
	.long	0x2d
	.uleb128 0x21
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x1c0c
	.uleb128 0x3
	.byte	0x8
	.long	0x1bf3
	.uleb128 0x20
	.long	0x26b
	.long	0x1c21
	.uleb128 0x21
	.long	0x2d
	.byte	0
	.uleb128 0xa
	.long	0x1c26
	.uleb128 0x3
	.byte	0x8
	.long	0x1c12
	.uleb128 0x4
	.long	.LASF616
	.byte	0x20
	.byte	0x12
	.byte	0x5e
	.long	0x1c75
	.uleb128 0x8
	.long	.LASF617
	.byte	0x12
	.byte	0x60
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF446
	.byte	0x12
	.byte	0x61
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF618
	.byte	0x12
	.byte	0x62
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF619
	.byte	0x12
	.byte	0x63
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF620
	.byte	0x12
	.byte	0x64
	.long	0x13e
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF621
	.byte	0x68
	.byte	0x12
	.byte	0x1b
	.long	0x1d1e
	.uleb128 0x8
	.long	.LASF622
	.byte	0x12
	.byte	0x27
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF623
	.byte	0x12
	.byte	0x2a
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF624
	.byte	0x12
	.byte	0x2d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF625
	.byte	0x12
	.byte	0x30
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF626
	.byte	0x12
	.byte	0x36
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF627
	.byte	0x12
	.byte	0x3a
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF628
	.byte	0x12
	.byte	0x45
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF629
	.byte	0x12
	.byte	0x4a
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF630
	.byte	0x12
	.byte	0x50
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF631
	.byte	0x12
	.byte	0x54
	.long	0x1d1e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF632
	.byte	0x12
	.byte	0x58
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF633
	.byte	0x12
	.byte	0x65
	.long	0x1d25
	.byte	0x48
	.uleb128 0x8
	.long	.LASF634
	.byte	0x12
	.byte	0x69
	.long	0x135a
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.byte	0x2
	.long	.LASF635
	.uleb128 0x3
	.byte	0x8
	.long	0x1c2c
	.uleb128 0x4
	.long	.LASF636
	.byte	0x68
	.byte	0x12
	.byte	0x71
	.long	0x1de6
	.uleb128 0x8
	.long	.LASF637
	.byte	0x12
	.byte	0x75
	.long	0x1dfc
	.byte	0
	.uleb128 0x8
	.long	.LASF638
	.byte	0x12
	.byte	0x78
	.long	0x1bed
	.byte	0x8
	.uleb128 0x8
	.long	.LASF639
	.byte	0x12
	.byte	0x7a
	.long	0x1e07
	.byte	0x10
	.uleb128 0x8
	.long	.LASF640
	.byte	0x12
	.byte	0x7e
	.long	0x1bed
	.byte	0x18
	.uleb128 0x8
	.long	.LASF641
	.byte	0x12
	.byte	0x82
	.long	0x1c0c
	.byte	0x20
	.uleb128 0x8
	.long	.LASF642
	.byte	0x12
	.byte	0x87
	.long	0x1e21
	.byte	0x28
	.uleb128 0x8
	.long	.LASF643
	.byte	0x12
	.byte	0x8a
	.long	0x1c0c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF644
	.byte	0x12
	.byte	0x8e
	.long	0x1e37
	.byte	0x38
	.uleb128 0x8
	.long	.LASF645
	.byte	0x12
	.byte	0x91
	.long	0x2d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF646
	.byte	0x12
	.byte	0x91
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF330
	.byte	0x12
	.byte	0x95
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF647
	.byte	0x12
	.byte	0x95
	.long	0x2d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF648
	.byte	0x12
	.byte	0x98
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x60
	.uleb128 0x5
	.long	.LASF649
	.byte	0x12
	.byte	0x9d
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x60
	.byte	0
	.uleb128 0x22
	.long	0x1df1
	.uleb128 0x21
	.long	0x1df1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1df7
	.uleb128 0x1c
	.long	.LASF650
	.uleb128 0x3
	.byte	0x8
	.long	0x1de6
	.uleb128 0x23
	.long	0x13e
	.uleb128 0x3
	.byte	0x8
	.long	0x1e02
	.uleb128 0x20
	.long	0x4c2
	.long	0x1e21
	.uleb128 0x21
	.long	0x2d
	.uleb128 0x21
	.long	0x13e
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e0d
	.uleb128 0x22
	.long	0x1e37
	.uleb128 0x21
	.long	0x2d
	.uleb128 0x21
	.long	0x1365
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1e27
	.uleb128 0x4
	.long	.LASF651
	.byte	0x30
	.byte	0x12
	.byte	0xa5
	.long	0x1f0a
	.uleb128 0x8
	.long	.LASF652
	.byte	0x12
	.byte	0xa9
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF653
	.byte	0x12
	.byte	0xad
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF654
	.byte	0x12
	.byte	0xb0
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF655
	.byte	0x12
	.byte	0xb3
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF656
	.byte	0x12
	.byte	0xb8
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF657
	.byte	0x12
	.byte	0xbc
	.long	0x26b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF658
	.byte	0x12
	.byte	0xbf
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF659
	.byte	0x12
	.byte	0xc3
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF660
	.byte	0x12
	.byte	0xc5
	.long	0x2a2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF661
	.byte	0x12
	.byte	0xc8
	.long	0x2a2
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF662
	.byte	0x12
	.byte	0xcc
	.long	0x2a2
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF663
	.byte	0x12
	.byte	0xcf
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF664
	.byte	0x12
	.byte	0xd3
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF665
	.byte	0x12
	.byte	0xd4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2c
	.uleb128 0x5
	.long	.LASF666
	.byte	0x12
	.byte	0xd7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2c
	.byte	0
	.uleb128 0x18
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.long	0x1f43
	.uleb128 0x8
	.long	.LASF667
	.byte	0x1
	.byte	0x5c
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF668
	.byte	0x1
	.byte	0x5d
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF669
	.byte	0x1
	.byte	0x5e
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF670
	.byte	0x1
	.byte	0x5f
	.long	0x13e
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF671
	.byte	0x1
	.byte	0x61
	.long	0x1f0a
	.uleb128 0x18
	.byte	0x8
	.byte	0x1
	.byte	0x7b
	.long	0x1f6f
	.uleb128 0x8
	.long	.LASF672
	.byte	0x1
	.byte	0x7d
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF673
	.byte	0x1
	.byte	0x7e
	.long	0x13e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF674
	.byte	0x1
	.byte	0x80
	.long	0x1f4e
	.uleb128 0x18
	.byte	0x10
	.byte	0x1
	.byte	0xa7
	.long	0x1f9b
	.uleb128 0x8
	.long	.LASF675
	.byte	0x1
	.byte	0xa9
	.long	0x4db
	.byte	0
	.uleb128 0x8
	.long	.LASF676
	.byte	0x1
	.byte	0xaa
	.long	0x13e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF677
	.byte	0x1
	.byte	0xac
	.long	0x1f7a
	.uleb128 0x7
	.long	.LASF678
	.byte	0x1
	.byte	0xba
	.long	0x1f9b
	.uleb128 0x18
	.byte	0x28
	.byte	0x1
	.byte	0xbb
	.long	0x1ff6
	.uleb128 0x8
	.long	.LASF679
	.byte	0x1
	.byte	0xbd
	.long	0x2c5
	.byte	0
	.uleb128 0x8
	.long	.LASF680
	.byte	0x1
	.byte	0xbe
	.long	0x2c5
	.byte	0x1
	.uleb128 0x8
	.long	.LASF681
	.byte	0x1
	.byte	0xbf
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF682
	.byte	0x1
	.byte	0xc0
	.long	0x1fa6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF683
	.byte	0x1
	.byte	0xc1
	.long	0x1fa6
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.long	.LASF684
	.byte	0x1
	.byte	0xc3
	.long	0x1fb1
	.uleb128 0x7
	.long	.LASF685
	.byte	0x1
	.byte	0xd8
	.long	0x1f9b
	.uleb128 0x7
	.long	.LASF686
	.byte	0x1
	.byte	0xf6
	.long	0x1017
	.uleb128 0xd
	.long	.LASF687
	.byte	0x4
	.byte	0x1
	.value	0x611
	.long	0x2049
	.uleb128 0xe
	.long	.LASF688
	.sleb128 0
	.uleb128 0xe
	.long	.LASF689
	.sleb128 1
	.uleb128 0xe
	.long	.LASF690
	.sleb128 2
	.uleb128 0xe
	.long	.LASF691
	.sleb128 3
	.uleb128 0xe
	.long	.LASF692
	.sleb128 4
	.uleb128 0xe
	.long	.LASF693
	.sleb128 5
	.byte	0
	.uleb128 0x24
	.long	.LASF696
	.byte	0x1
	.value	0x13f
	.long	0x13e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b8
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x141
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF694
	.byte	0x1
	.value	0x142
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x143
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x26
	.long	.LASF695
	.byte	0x1
	.value	0x162
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF697
	.byte	0x1
	.value	0x17c
	.long	0x13e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2157
	.uleb128 0x28
	.long	.LASF473
	.byte	0x1
	.value	0x17d
	.long	0x2157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x17f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF698
	.byte	0x1
	.value	0x17f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF475
	.byte	0x1
	.value	0x17f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x2137
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x18d
	.long	0x1405
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x19d
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x141c
	.uleb128 0x2a
	.long	.LASF704
	.byte	0x1
	.value	0x1b1
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d4
	.uleb128 0x28
	.long	.LASF699
	.byte	0x1
	.value	0x1b2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF700
	.byte	0x1
	.value	0x1b2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x1b4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF701
	.byte	0x1
	.value	0x1b4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF702
	.byte	0x1
	.value	0x1b5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x1b5
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF705
	.byte	0x1
	.value	0x1e8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x22af
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x1e9
	.long	0x1017
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x1ea
	.long	0x22af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x1ec
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x1f5
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF707
	.byte	0x1
	.value	0x1f5
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF708
	.byte	0x1
	.value	0x1f5
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF709
	.byte	0x1
	.value	0x1f5
	.long	0x1028
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x26
	.long	.LASF710
	.byte	0x1
	.value	0x1f5
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x26
	.long	.LASF711
	.byte	0x1
	.value	0x1f5
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f9b
	.uleb128 0x2c
	.long	.LASF750
	.byte	0x1
	.value	0x202
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2304
	.uleb128 0x25
	.string	"rgn"
	.byte	0x1
	.value	0x204
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x204
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2d
	.long	.LASF748
	.long	0x2314
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11000
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x2314
	.uleb128 0x15
	.long	0x145
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.long	0x2304
	.uleb128 0x2a
	.long	.LASF712
	.byte	0x1
	.value	0x220
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2345
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x222
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF713
	.byte	0x1
	.value	0x234
	.long	0x13e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2395
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x235
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.long	.LASF715
	.byte	0x1
	.value	0x235
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF716
	.byte	0x1
	.value	0x235
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2f
	.long	.LASF717
	.byte	0x1
	.value	0x26f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2637
	.uleb128 0x28
	.long	.LASF473
	.byte	0x1
	.value	0x270
	.long	0x2157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2b
	.string	"dom"
	.byte	0x1
	.value	0x271
	.long	0x1416
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF718
	.byte	0x1
	.value	0x273
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF719
	.byte	0x1
	.value	0x273
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF720
	.byte	0x1
	.value	0x273
	.long	0x4db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF721
	.byte	0x1
	.value	0x273
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF722
	.byte	0x1
	.value	0x274
	.long	0x2c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -201
	.uleb128 0x26
	.long	.LASF723
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x26
	.long	.LASF724
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF725
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0x275
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF341
	.byte	0x1
	.value	0x276
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x276
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x25
	.string	"idx"
	.byte	0x1
	.value	0x276
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x26
	.long	.LASF726
	.byte	0x1
	.value	0x276
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF715
	.byte	0x1
	.value	0x277
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF716
	.byte	0x1
	.value	0x277
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x26
	.long	.LASF698
	.byte	0x1
	.value	0x277
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF727
	.byte	0x1
	.value	0x278
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF728
	.byte	0x1
	.value	0x27b
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF729
	.byte	0x1
	.value	0x27e
	.long	0x1017
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF730
	.byte	0x1
	.value	0x281
	.long	0x1017
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF731
	.byte	0x1
	.value	0x284
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF732
	.byte	0x1
	.value	0x287
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF475
	.byte	0x1
	.value	0x289
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x257f
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x315
	.long	0x13fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x26
	.long	.LASF733
	.byte	0x1
	.value	0x31f
	.long	0x4db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x32f
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x330
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x25f0
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x37a
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2614
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x3b2
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x27
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x3e4
	.long	0x13fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF734
	.byte	0x1
	.value	0x418
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x26cd
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x419
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF735
	.byte	0x1
	.value	0x41b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF736
	.byte	0x1
	.value	0x41b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF333
	.byte	0x1
	.value	0x41b
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF737
	.byte	0x1
	.value	0x41c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF738
	.byte	0x1
	.value	0x41c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF739
	.byte	0x1
	.value	0x41c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.long	.LASF740
	.byte	0x1
	.value	0x41c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2f
	.long	.LASF741
	.byte	0x1
	.value	0x467
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2727
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x468
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x469
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.value	0x46a
	.long	0x2727
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x46c
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2001
	.uleb128 0x2f
	.long	.LASF744
	.byte	0x1
	.value	0x479
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2816
	.uleb128 0x2b
	.string	"trg"
	.byte	0x1
	.value	0x47a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.string	"sp"
	.byte	0x1
	.value	0x47c
	.long	0x2816
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"el"
	.byte	0x1
	.value	0x47d
	.long	0x2001
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF745
	.byte	0x1
	.value	0x47e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF746
	.byte	0x1
	.value	0x47e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x47f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x47f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x47f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF703
	.byte	0x1
	.value	0x47f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF747
	.byte	0x1
	.value	0x47f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2d
	.long	.LASF748
	.long	0x282c
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11149
	.uleb128 0x27
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x26
	.long	.LASF749
	.byte	0x1
	.value	0x49c
	.long	0x2bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ff6
	.uleb128 0x14
	.long	0x2c5
	.long	0x282c
	.uleb128 0x15
	.long	0x145
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x281c
	.uleb128 0x2c
	.long	.LASF751
	.byte	0x1
	.value	0x4dc
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x28be
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x4dd
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x4e4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x289d
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x4ea
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x4f3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF752
	.byte	0x1
	.value	0x502
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f9
	.uleb128 0x2b
	.string	"trg"
	.byte	0x1
	.value	0x503
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x505
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF753
	.byte	0x1
	.value	0x513
	.long	0x13e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e9
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x514
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x515
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x517
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x518
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x519
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x2987
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x525
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x29c9
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x53e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x543
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x552
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF754
	.byte	0x1
	.value	0x563
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad5
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x564
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x565
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x567
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF46
	.byte	0x1
	.value	0x568
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x569
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2a73
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x575
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x2ab5
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x58a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x58f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x59a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF755
	.byte	0x1
	.value	0x5a7
	.long	0x13e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b35
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x5a8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x5a9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x5b1
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF756
	.byte	0x1
	.value	0x5c2
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b91
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x5c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x5c4
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x5cc
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF757
	.byte	0x1
	.value	0x62c
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bce
	.uleb128 0x28
	.long	.LASF758
	.byte	0x1
	.value	0x62d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF759
	.byte	0x1
	.value	0x62f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF760
	.byte	0x1
	.value	0x63a
	.long	0x13e
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c3f
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x63b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF761
	.byte	0x1
	.value	0x63c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF759
	.byte	0x1
	.value	0x63e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.value	0x643
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF762
	.byte	0x1
	.value	0x65f
	.long	0x13e
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cbf
	.uleb128 0x28
	.long	.LASF758
	.byte	0x1
	.value	0x660
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x661
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x661
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF759
	.byte	0x1
	.value	0x663
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x26
	.long	.LASF763
	.byte	0x1
	.value	0x667
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF764
	.byte	0x1
	.value	0x693
	.long	0x13e
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d93
	.uleb128 0x28
	.long	.LASF758
	.byte	0x1
	.value	0x694
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x695
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x695
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF765
	.byte	0x1
	.value	0x697
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF766
	.byte	0x1
	.value	0x698
	.long	0x2816
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x26
	.long	.LASF763
	.byte	0x1
	.value	0x6a1
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x26
	.long	.LASF767
	.byte	0x1
	.value	0x6a6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x26
	.long	.LASF768
	.byte	0x1
	.value	0x6ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF769
	.byte	0x1
	.value	0x6c7
	.long	0x13e
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e83
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x6c8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF770
	.byte	0x1
	.value	0x6c9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x6cb
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x25
	.string	"fmt"
	.byte	0x1
	.value	0x6e7
	.long	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x6e8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF771
	.byte	0x1
	.value	0x6e8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0x2e41
	.uleb128 0x26
	.long	.LASF772
	.byte	0x1
	.value	0x6f3
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x6f8
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x26
	.long	.LASF772
	.byte	0x1
	.value	0x6fb
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF773
	.byte	0x1
	.value	0x712
	.long	0x13e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f1f
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x713
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"pat"
	.byte	0x1
	.value	0x715
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF772
	.byte	0x1
	.value	0x716
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF771
	.byte	0x1
	.value	0x717
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF0
	.byte	0x1
	.value	0x718
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x71c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x71c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF774
	.byte	0x1
	.value	0x762
	.long	0x13e
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6f
	.uleb128 0x28
	.long	.LASF758
	.byte	0x1
	.value	0x763
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x764
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x764
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF775
	.byte	0x1
	.value	0x778
	.long	0x13e
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fce
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x779
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF742
	.byte	0x1
	.value	0x77a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x77a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF771
	.byte	0x1
	.value	0x77c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF639
	.byte	0x1
	.value	0x7b7
	.long	0x13e
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF637
	.byte	0x1
	.value	0x7c0
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ef
	.uleb128 0x28
	.long	.LASF776
	.byte	0x1
	.value	0x7c1
	.long	0x1df1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF645
	.byte	0x1
	.value	0x7c3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF646
	.byte	0x1
	.value	0x7c4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF742
	.byte	0x1
	.value	0x7c5
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF694
	.byte	0x1
	.value	0x7c6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x307d
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.value	0x7ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x27
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x26
	.long	.LASF777
	.byte	0x1
	.value	0x7fd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF778
	.byte	0x1
	.value	0x7fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0x7ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0x7ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.value	0x810
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF638
	.byte	0x1
	.value	0x824
	.long	0x13e
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3171
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x825
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0x82d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"b1"
	.byte	0x1
	.value	0x82e
	.long	0x1405
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x26
	.long	.LASF695
	.byte	0x1
	.value	0x84e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF640
	.byte	0x1
	.value	0x86f
	.long	0x13e
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x31a3
	.uleb128 0x28
	.long	.LASF414
	.byte	0x1
	.value	0x870
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF780
	.byte	0x1
	.value	0x885
	.long	0x4c2
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x31fa
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x886
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF781
	.byte	0x1
	.value	0x887
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.value	0x889
	.long	0x31fa
	.uleb128 0x9
	.byte	0x3
	.quad	tmp.11418
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x320a
	.uleb128 0x15
	.long	0x145
	.byte	0x4f
	.byte	0
	.uleb128 0x2e
	.long	.LASF782
	.byte	0x1
	.value	0x89c
	.long	0x13e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x327b
	.uleb128 0x28
	.long	.LASF763
	.byte	0x1
	.value	0x89d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF768
	.byte	0x1
	.value	0x89d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x26
	.long	.LASF783
	.byte	0x1
	.value	0x8a2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF784
	.byte	0x1
	.value	0x8a2
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF643
	.byte	0x1
	.value	0x8bc
	.long	0x13e
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x32bc
	.uleb128 0x28
	.long	.LASF414
	.byte	0x1
	.value	0x8bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x8bd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF644
	.byte	0x1
	.value	0x8c6
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x32f9
	.uleb128 0x28
	.long	.LASF694
	.byte	0x1
	.value	0x8c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"set"
	.byte	0x1
	.value	0x8c8
	.long	0x1365
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF785
	.byte	0x1
	.value	0x8e4
	.long	0x1d1e
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x333a
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x8e5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.value	0x8e7
	.long	0x1d1e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2a
	.long	.LASF786
	.byte	0x1
	.value	0x8ed
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3393
	.uleb128 0x2b
	.string	"x"
	.byte	0x1
	.value	0x8ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"pat"
	.byte	0x1
	.value	0x8ee
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF461
	.byte	0x1
	.value	0x8ef
	.long	0x272
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.value	0x8f1
	.long	0x3393
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1d1e
	.uleb128 0x2f
	.long	.LASF787
	.byte	0x1
	.value	0x8fe
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3415
	.uleb128 0x28
	.long	.LASF330
	.byte	0x1
	.value	0x8ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF647
	.byte	0x1
	.value	0x8ff
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF694
	.byte	0x1
	.value	0x901
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF489
	.byte	0x1
	.value	0x901
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x26
	.long	.LASF779
	.byte	0x1
	.value	0x934
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF788
	.byte	0x1
	.value	0x95f
	.long	0x2d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3465
	.uleb128 0x28
	.long	.LASF789
	.byte	0x1
	.value	0x960
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"old"
	.byte	0x1
	.value	0x960
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"new"
	.byte	0x1
	.value	0x962
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF790
	.byte	0x1
	.value	0x969
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x34de
	.uleb128 0x28
	.long	.LASF791
	.byte	0x1
	.value	0x96a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF792
	.byte	0x1
	.value	0x96a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF793
	.byte	0x1
	.value	0x96b
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0x96b
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF795
	.byte	0x1
	.value	0x96d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF796
	.byte	0x1
	.value	0x96e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF797
	.byte	0x1
	.value	0x97f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x365c
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x980
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x28
	.long	.LASF798
	.byte	0x1
	.value	0x981
	.long	0x365c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x983
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x984
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF799
	.byte	0x1
	.value	0x984
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x27
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x26
	.long	.LASF800
	.byte	0x1
	.value	0x98b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF801
	.byte	0x1
	.value	0x98c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.long	.LASF802
	.byte	0x1
	.value	0x98d
	.long	0x365c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"reg"
	.byte	0x1
	.value	0x98e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x26
	.long	.LASF709
	.byte	0x1
	.value	0x999
	.long	0xf83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF803
	.byte	0x1
	.value	0x999
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF707
	.byte	0x1
	.value	0x999
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF706
	.byte	0x1
	.value	0x999
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x26
	.long	.LASF710
	.byte	0x1
	.value	0x999
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x26
	.long	.LASF804
	.byte	0x1
	.value	0x999
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x26
	.long	.LASF805
	.byte	0x1
	.value	0x999
	.long	0x1d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF806
	.byte	0x1
	.value	0x999
	.long	0x1d25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c75
	.uleb128 0x2f
	.long	.LASF807
	.byte	0x1
	.value	0x9e6
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x36c0
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x9e7
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0x9e9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0x9e9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF808
	.byte	0x1
	.value	0x9ea
	.long	0x1c75
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2f
	.long	.LASF809
	.byte	0x1
	.value	0x9fe
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x36ed
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xa00
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF810
	.byte	0x1
	.value	0xa0e
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x37cb
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xa10
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0xa17
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0xa17
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF646
	.byte	0x1
	.value	0xa18
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF694
	.byte	0x1
	.value	0xa19
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x26
	.long	.LASF759
	.byte	0x1
	.value	0xa26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF811
	.byte	0x1
	.value	0xa27
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF812
	.byte	0x1
	.value	0xa27
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x27
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.value	0xa2b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF813
	.byte	0x1
	.value	0xa5a
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3956
	.uleb128 0x2b
	.string	"rgn"
	.byte	0x1
	.value	0xa5b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0xa5d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x26
	.long	.LASF814
	.byte	0x1
	.value	0xa5e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF815
	.byte	0x1
	.value	0xa5f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.long	.LASF748
	.long	0x3966
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11593
	.uleb128 0x29
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.long	0x386c
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0xa73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0xa73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x38a0
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0xa7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0xa7c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x29
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.long	0x38c3
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0xa85
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x29
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.long	0x3925
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0xaa6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0xaa6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0xaa7
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x26
	.long	.LASF695
	.byte	0x1
	.value	0xabf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x26
	.long	.LASF330
	.byte	0x1
	.value	0xaef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF647
	.byte	0x1
	.value	0xaef
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x3966
	.uleb128 0x15
	.long	0x145
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x3956
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0xb0e
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x39d2
	.uleb128 0x31
	.long	.LASF817
	.byte	0x1
	.value	0xb10
	.long	0x1017
	.uleb128 0x32
	.string	"rgn"
	.byte	0x1
	.value	0xb11
	.long	0x13e
	.uleb128 0x27
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x25
	.string	"dom"
	.byte	0x1
	.value	0xb29
	.long	0x1416
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF473
	.byte	0x1
	.value	0xb2a
	.long	0x2157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF818
	.byte	0x1
	.value	0xb6c
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a4f
	.uleb128 0x28
	.long	.LASF819
	.byte	0x1
	.value	0xb6d
	.long	0x3a4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF820
	.byte	0x1
	.value	0xb6f
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF817
	.byte	0x1
	.value	0xb6f
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"rgn"
	.byte	0x1
	.value	0xb70
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF821
	.byte	0x1
	.value	0xb71
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2d
	.long	.LASF748
	.long	0x3a65
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11626
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc
	.uleb128 0x14
	.long	0x2c5
	.long	0x3a65
	.uleb128 0x15
	.long	0x145
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.long	0x3a55
	.uleb128 0x33
	.long	.LASF822
	.byte	0x1
	.byte	0x57
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	nr_inter
	.uleb128 0x33
	.long	.LASF823
	.byte	0x1
	.byte	0x57
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	nr_spec
	.uleb128 0x33
	.long	.LASF824
	.byte	0x1
	.byte	0x62
	.long	0x3aa9
	.uleb128 0x9
	.byte	0x3
	.quad	edge_table
	.uleb128 0x3
	.byte	0x8
	.long	0x1f43
	.uleb128 0x33
	.long	.LASF825
	.byte	0x1
	.byte	0x6b
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	nr_edges
	.uleb128 0x33
	.long	.LASF826
	.byte	0x1
	.byte	0x6e
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	in_edges
	.uleb128 0x33
	.long	.LASF827
	.byte	0x1
	.byte	0x6f
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	out_edges
	.uleb128 0x33
	.long	.LASF828
	.byte	0x1
	.byte	0x83
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	nr_regions
	.uleb128 0x33
	.long	.LASF829
	.byte	0x1
	.byte	0x86
	.long	0x3b18
	.uleb128 0x9
	.byte	0x3
	.quad	rgn_table
	.uleb128 0x3
	.byte	0x8
	.long	0x1f6f
	.uleb128 0x33
	.long	.LASF830
	.byte	0x1
	.byte	0x89
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	rgn_bb_table
	.uleb128 0x33
	.long	.LASF831
	.byte	0x1
	.byte	0x8f
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	block_to_bb
	.uleb128 0x33
	.long	.LASF832
	.byte	0x1
	.byte	0x92
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	containing_rgn
	.uleb128 0x33
	.long	.LASF833
	.byte	0x1
	.byte	0xa1
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	current_nr_blocks
	.uleb128 0x33
	.long	.LASF834
	.byte	0x1
	.byte	0xa2
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	current_blocks
	.uleb128 0x33
	.long	.LASF835
	.byte	0x1
	.byte	0xae
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	bitlst_table_last
	.uleb128 0x33
	.long	.LASF836
	.byte	0x1
	.byte	0xaf
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	bitlst_table_size
	.uleb128 0x33
	.long	.LASF837
	.byte	0x1
	.byte	0xb0
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	bitlst_table
	.uleb128 0x33
	.long	.LASF838
	.byte	0x1
	.byte	0xc5
	.long	0x2816
	.uleb128 0x9
	.byte	0x3
	.quad	candidate_table
	.uleb128 0x33
	.long	.LASF839
	.byte	0x1
	.byte	0xce
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	bblst_table
	.uleb128 0x33
	.long	.LASF840
	.byte	0x1
	.byte	0xce
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	bblst_size
	.uleb128 0x33
	.long	.LASF841
	.byte	0x1
	.byte	0xce
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	bblst_last
	.uleb128 0x33
	.long	.LASF842
	.byte	0x1
	.byte	0xd5
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	target_bb
	.uleb128 0x34
	.string	"dom"
	.byte	0x1
	.byte	0xe2
	.long	0x1416
	.uleb128 0x9
	.byte	0x3
	.quad	dom
	.uleb128 0x33
	.long	.LASF843
	.byte	0x1
	.byte	0xed
	.long	0x3c59
	.uleb128 0x9
	.byte	0x3
	.quad	prob
	.uleb128 0x3
	.byte	0x8
	.long	0x3c5f
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.long	.LASF844
	.uleb128 0x33
	.long	.LASF845
	.byte	0x1
	.byte	0xf9
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	rgn_nr_edges
	.uleb128 0x33
	.long	.LASF846
	.byte	0x1
	.byte	0xfc
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	rgn_edges
	.uleb128 0x26
	.long	.LASF847
	.byte	0x1
	.value	0x100
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	edge_to_bit
	.uleb128 0x26
	.long	.LASF848
	.byte	0x1
	.value	0x109
	.long	0x3cbc
	.uleb128 0x9
	.byte	0x3
	.quad	pot_split
	.uleb128 0x3
	.byte	0x8
	.long	0x200c
	.uleb128 0x26
	.long	.LASF849
	.byte	0x1
	.value	0x10c
	.long	0x3cbc
	.uleb128 0x9
	.byte	0x3
	.quad	ancestor_edges
	.uleb128 0x26
	.long	.LASF850
	.byte	0x1
	.value	0x7a2
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	sched_target_n_insns
	.uleb128 0x26
	.long	.LASF851
	.byte	0x1
	.value	0x7a4
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	target_n_insns
	.uleb128 0x26
	.long	.LASF852
	.byte	0x1
	.value	0x7a6
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	sched_n_insns
	.uleb128 0x26
	.long	.LASF853
	.byte	0x1
	.value	0x7a8
	.long	0x13e
	.uleb128 0x9
	.byte	0x3
	.quad	last_was_jump
	.uleb128 0x26
	.long	.LASF854
	.byte	0x1
	.value	0x8d1
	.long	0x1d2b
	.uleb128 0x9
	.byte	0x3
	.quad	region_sched_info
	.uleb128 0x26
	.long	.LASF855
	.byte	0x1
	.value	0x95a
	.long	0x365c
	.uleb128 0x9
	.byte	0x3
	.quad	bb_deps
	.uleb128 0x26
	.long	.LASF856
	.byte	0x1
	.value	0xb09
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	deaths_in_region
	.uleb128 0x35
	.long	.LASF857
	.byte	0x4
	.byte	0x62
	.long	0x13e
	.uleb128 0x14
	.long	0x14c
	.long	0x3d8d
	.uleb128 0x15
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x36
	.long	.LASF858
	.byte	0x4
	.value	0xc3a
	.long	0x3d99
	.uleb128 0xa
	.long	0x3d7d
	.uleb128 0x14
	.long	0x656
	.long	0x3dae
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x35
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x3db9
	.uleb128 0xa
	.long	0x3d9e
	.uleb128 0x14
	.long	0x28d
	.long	0x3dce
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x35
	.long	.LASF859
	.byte	0x9
	.byte	0x50
	.long	0x3dd9
	.uleb128 0xa
	.long	0x3dbe
	.uleb128 0x14
	.long	0x28d
	.long	0x3dee
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF860
	.byte	0x2
	.byte	0x36
	.long	0x3df9
	.uleb128 0xa
	.long	0x3dde
	.uleb128 0x14
	.long	0x4c2
	.long	0x3e0e
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF861
	.byte	0x2
	.byte	0x39
	.long	0x3e19
	.uleb128 0xa
	.long	0x3dfe
	.uleb128 0x35
	.long	.LASF862
	.byte	0x2
	.byte	0x3c
	.long	0x3e29
	.uleb128 0xa
	.long	0x3dfe
	.uleb128 0x14
	.long	0x2c5
	.long	0x3e3e
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x35
	.long	.LASF863
	.byte	0x2
	.byte	0x3f
	.long	0x3e49
	.uleb128 0xa
	.long	0x3e2e
	.uleb128 0x14
	.long	0x4c2
	.long	0x3e5e
	.uleb128 0x15
	.long	0x145
	.byte	0x15
	.byte	0
	.uleb128 0x36
	.long	.LASF864
	.byte	0x2
	.value	0x2e7
	.long	0x3e6a
	.uleb128 0xa
	.long	0x3e4e
	.uleb128 0x36
	.long	.LASF865
	.byte	0x2
	.value	0x6d2
	.long	0x13e
	.uleb128 0x14
	.long	0x2c5
	.long	0x3e8b
	.uleb128 0x15
	.long	0x145
	.byte	0x34
	.byte	0
	.uleb128 0x36
	.long	.LASF866
	.byte	0x13
	.value	0x1b0
	.long	0x3e7b
	.uleb128 0x35
	.long	.LASF867
	.byte	0xb
	.byte	0xe4
	.long	0x13e
	.uleb128 0x35
	.long	.LASF868
	.byte	0xb
	.byte	0xec
	.long	0x1349
	.uleb128 0x14
	.long	0xc54
	.long	0x3ebd
	.uleb128 0x15
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x36
	.long	.LASF869
	.byte	0xb
	.value	0x116
	.long	0x3ead
	.uleb128 0x36
	.long	.LASF870
	.byte	0xb
	.value	0x11a
	.long	0x1349
	.uleb128 0x36
	.long	.LASF871
	.byte	0xf
	.value	0x1e4
	.long	0x1ad4
	.uleb128 0x35
	.long	.LASF872
	.byte	0x10
	.byte	0x2a
	.long	0x1b06
	.uleb128 0x36
	.long	.LASF873
	.byte	0x10
	.value	0x1a2
	.long	0x13e
	.uleb128 0x36
	.long	.LASF874
	.byte	0x10
	.value	0x1a3
	.long	0x13e
	.uleb128 0x36
	.long	.LASF875
	.byte	0x10
	.value	0x1a4
	.long	0x13e
	.uleb128 0x36
	.long	.LASF876
	.byte	0x10
	.value	0x1a5
	.long	0x13e
	.uleb128 0x14
	.long	0x1b43
	.long	0x3f27
	.uleb128 0x37
	.byte	0
	.uleb128 0x35
	.long	.LASF877
	.byte	0x11
	.byte	0x5e
	.long	0x3f32
	.uleb128 0xa
	.long	0x3f1c
	.uleb128 0x35
	.long	.LASF878
	.byte	0x12
	.byte	0xa0
	.long	0x3f42
	.uleb128 0x3
	.byte	0x8
	.long	0x1d2b
	.uleb128 0x35
	.long	.LASF879
	.byte	0x12
	.byte	0xda
	.long	0x3f53
	.uleb128 0x3
	.byte	0x8
	.long	0x1e3d
	.uleb128 0x35
	.long	.LASF880
	.byte	0x12
	.byte	0xf8
	.long	0x3a4f
	.uleb128 0x35
	.long	.LASF881
	.byte	0x12
	.byte	0xf9
	.long	0x13e
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2b
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
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x21
	.byte	0
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
.LASF361:
	.string	"REG_BR_PROB"
.LASF391:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF559:
	.string	"profile_label_no"
.LASF318:
	.string	"rtstr"
.LASF378:
	.string	"NOTE_INSN_DELETED"
.LASF93:
	.string	"_unused2"
.LASF246:
	.string	"UMOD"
.LASF300:
	.string	"min_align"
.LASF79:
	.string	"_fileno"
.LASF433:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF790:
	.string	"concat_insn_mem_list"
.LASF326:
	.string	"first"
.LASF794:
	.string	"old_mems_p"
.LASF553:
	.string	"inlinable"
.LASF585:
	.string	"uses_const_pool"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF866:
	.string	"global_regs"
.LASF714:
	.string	"block"
.LASF635:
	.string	"_Bool"
.LASF317:
	.string	"rtuint"
.LASF867:
	.string	"n_basic_blocks"
.LASF792:
	.string	"copy_mems"
.LASF321:
	.string	"rt_cselib"
.LASF609:
	.string	"default_cost"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF607:
	.string	"multiplicity"
.LASF558:
	.string	"inl_max_label_num"
.LASF250:
	.string	"LSHIFTRT"
.LASF773:
	.string	"haifa_classify_insn"
.LASF742:
	.string	"bb_src"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF884:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF802:
	.string	"succ_deps"
.LASF475:
	.string	"num_edges"
.LASF481:
	.string	"cdi_direction"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF493:
	.string	"x_first_label_num"
.LASF745:
	.string	"check_block"
.LASF610:
	.string	"max_issue_delay"
.LASF159:
	.string	"CCFPmode"
.LASF100:
	.string	"reg_class"
.LASF832:
	.string	"containing_rgn"
.LASF817:
	.string	"blocks"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF634:
	.string	"reg_last_in_use"
.LASF305:
	.string	"max_after_base"
.LASF698:
	.string	"unreachable"
.LASF716:
	.string	"num_insns"
.LASF834:
	.string	"current_blocks"
.LASF268:
	.string	"UNLT"
.LASF620:
	.string	"clobbers_length"
.LASF586:
	.string	"uses_pic_offset_table"
.LASF592:
	.string	"initial_value_struct"
.LASF760:
	.string	"find_conditional_protection"
.LASF471:
	.string	"probability"
.LASF693:
	.string	"TRAP_RISKY"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF414:
	.string	"next"
.LASF605:
	.string	"function_unit_desc"
.LASF625:
	.string	"pending_write_mems"
.LASF756:
	.string	"update_live"
.LASF60:
	.string	"__off_t"
.LASF685:
	.string	"edgelst"
.LASF737:
	.string	"fst_out_edge"
.LASF842:
	.string	"target_bb"
.LASF661:
	.string	"units"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF289:
	.string	"VEC_MERGE"
.LASF556:
	.string	"original_decl_initial"
.LASF85:
	.string	"_lock"
.LASF435:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF436:
	.string	"generic"
.LASF869:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF309:
	.string	"alias"
.LASF880:
	.string	"sched_dump"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF582:
	.string	"stdarg"
.LASF543:
	.string	"x_trampoline_list"
.LASF638:
	.string	"can_schedule_ready_p"
.LASF847:
	.string	"edge_to_bit"
.LASF715:
	.string	"num_bbs"
.LASF25:
	.string	"Q_REGS"
.LASF209:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF215:
	.string	"UNSPEC"
.LASF208:
	.string	"BARRIER"
.LASF384:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF211:
	.string	"COND_EXEC"
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF50:
	.string	"maybe_vaarg"
.LASF564:
	.string	"epilogue_delay_list"
.LASF137:
	.string	"V4QImode"
.LASF421:
	.string	"BITMAP_AND"
.LASF676:
	.string	"nr_members"
.LASF200:
	.string	"ATTR"
.LASF341:
	.string	"count"
.LASF319:
	.string	"rttype"
.LASF655:
	.string	"priority"
.LASF862:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF331:
	.string	"head_tree"
.LASF788:
	.string	"concat_INSN_LIST"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF408:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF835:
	.string	"bitlst_table_last"
.LASF775:
	.string	"is_exception_free"
.LASF136:
	.string	"V2DImode"
.LASF533:
	.string	"x_return_label"
.LASF633:
	.string	"reg_last"
.LASF699:
	.string	"source"
.LASF812:
	.string	"range"
.LASF462:
	.string	"varray_type"
.LASF843:
	.string	"prob"
.LASF314:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF355:
	.string	"REG_UNUSED"
.LASF193:
	.string	"DEFINE_DELAY"
.LASF243:
	.string	"MINUS"
.LASF540:
	.string	"x_clobber_return_insn"
.LASF22:
	.string	"SIREG"
.LASF441:
	.string	"sched_info_tag"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF825:
	.string	"nr_edges"
.LASF644:
	.string	"compute_jump_reg_dependencies"
.LASF175:
	.string	"INCLUDE"
.LASF404:
	.string	"GR_FRAME_POINTER"
.LASF339:
	.string	"index"
.LASF448:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF811:
	.string	"unit"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF509:
	.string	"x_forced_labels"
.LASF524:
	.string	"internal_arg_pointer"
.LASF401:
	.string	"GR_PC"
.LASF632:
	.string	"max_reg"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF455:
	.string	"varray_data"
.LASF594:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF827:
	.string	"out_edges"
.LASF367:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF483:
	.string	"CDI_POST_DOMINATORS"
.LASF324:
	.string	"rtmem"
.LASF728:
	.string	"passed"
.LASF552:
	.string	"fixup_var_refs_queue"
.LASF284:
	.string	"RANGE_REG"
.LASF322:
	.string	"rtbit"
.LASF413:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF260:
	.string	"PRE_MODIFY"
.LASF613:
	.string	"max_blockage"
.LASF718:
	.string	"max_hdr"
.LASF567:
	.string	"returns_pointer"
.LASF872:
	.string	"write_symbols"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF445:
	.string	"last_note_uid"
.LASF630:
	.string	"sched_before_next_call"
.LASF512:
	.string	"stmt"
.LASF606:
	.string	"bitmask"
.LASF6:
	.string	"in_struct"
.LASF379:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF106:
	.string	"SImode"
.LASF664:
	.string	"fed_by_spec_load"
.LASF217:
	.string	"ADDR_VEC"
.LASF590:
	.string	"stmt_status"
.LASF858:
	.string	"regclass_map"
.LASF147:
	.string	"V2DFmode"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF560:
	.string	"machine"
.LASF753:
	.string	"check_live_1"
.LASF236:
	.string	"SYMBOL_REF"
.LASF377:
	.string	"NOTE_INSN_BIAS"
.LASF628:
	.string	"last_pending_memory_flush"
.LASF797:
	.string	"propagate_deps"
.LASF399:
	.string	"NOTE_INSN_MAX"
.LASF507:
	.string	"x_saveregs_value"
.LASF731:
	.string	"in_queue"
.LASF681:
	.string	"src_prob"
.LASF597:
	.string	"NO_DEBUG"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF779:
	.string	"temp"
.LASF487:
	.string	"unsignedp"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF429:
	.string	"elms"
.LASF667:
	.string	"from_block"
.LASF431:
	.string	"const_equiv_data"
.LASF526:
	.string	"hard_reg_initial_vals"
.LASF505:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF656:
	.string	"dep_count"
.LASF259:
	.string	"POST_INC"
.LASF819:
	.string	"dump_file"
.LASF420:
	.string	"bitmap_bits"
.LASF648:
	.string	"queue_must_finish_empty"
.LASF422:
	.string	"BITMAP_AND_COMPL"
.LASF120:
	.string	"TFmode"
.LASF56:
	.string	"unsigned char"
.LASF593:
	.string	"temp_slot"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF510:
	.string	"x_pending_chain"
.LASF525:
	.string	"cannot_inline"
.LASF629:
	.string	"last_function_call"
.LASF886:
	.string	"_IO_lock_t"
.LASF844:
	.string	"float"
.LASF767:
	.string	"fore_link"
.LASF452:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF354:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF513:
	.string	"emit"
.LASF618:
	.string	"clobbers"
.LASF206:
	.string	"JUMP_INSN"
.LASF336:
	.string	"cond_local_set"
.LASF700:
	.string	"target"
.LASF472:
	.string	"edge"
.LASF599:
	.string	"SDB_DEBUG"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF631:
	.string	"in_post_call_group_p"
.LASF323:
	.string	"rttree"
.LASF707:
	.string	"bit_num_"
.LASF376:
	.string	"insn_note"
.LASF658:
	.string	"ref_count"
.LASF395:
	.string	"NOTE_INSN_RANGE_END"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF574:
	.string	"has_nonlocal_goto"
.LASF820:
	.string	"large_region_blocks"
.LASF588:
	.string	"arg_pointer_save_area_init"
.LASF673:
	.string	"rgn_blocks"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF682:
	.string	"split_bbs"
.LASF534:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF465:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF517:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF536:
	.string	"x_rtl_expr_chain"
.LASF283:
	.string	"RANGE_INFO"
.LASF720:
	.string	"stack"
.LASF432:
	.string	"rtunion_def"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF528:
	.string	"x_nonlocal_labels"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF366:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF440:
	.string	"cselib_val_struct"
.LASF782:
	.string	"rgn_rank"
.LASF398:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF643:
	.string	"contributes_to_priority"
.LASF248:
	.string	"ROTATE"
.LASF727:
	.string	"too_large_failure"
.LASF334:
	.string	"succ"
.LASF447:
	.string	"refs"
.LASF855:
	.string	"bb_deps"
.LASF272:
	.string	"TRUNCATE"
.LASF359:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF614:
	.string	"blockage_range_function"
.LASF860:
	.string	"rtx_length"
.LASF721:
	.string	"degree"
.LASF409:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF380:
	.string	"NOTE_INSN_BLOCK_END"
.LASF657:
	.string	"blockage"
.LASF419:
	.string	"bitmap"
.LASF389:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF863:
	.string	"rtx_class"
.LASF769:
	.string	"may_trap_exp"
.LASF759:
	.string	"link"
.LASF343:
	.string	"flags"
.LASF502:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF467:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF63:
	.string	"FILE"
.LASF240:
	.string	"COND"
.LASF426:
	.string	"simple_bitmap_def"
.LASF770:
	.string	"is_store"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF544:
	.string	"x_parm_birth_insn"
.LASF546:
	.string	"x_max_parm_reg"
.LASF758:
	.string	"load_insn"
.LASF15:
	.string	"tree"
.LASF124:
	.string	"DCmode"
.LASF881:
	.string	"sched_verbose"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF882:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF538:
	.string	"x_tail_recursion_reentry"
.LASF249:
	.string	"ASHIFTRT"
.LASF876:
	.string	"flag_schedule_speculative_load_dangerous"
.LASF739:
	.string	"nr_out_edges"
.LASF154:
	.string	"CCmode"
.LASF332:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF692:
	.string	"IRISKY"
.LASF382:
	.string	"NOTE_INSN_LOOP_END"
.LASF152:
	.string	"V16SFmode"
.LASF424:
	.string	"BITMAP_XOR"
.LASF396:
	.string	"NOTE_INSN_LIVE"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF823:
	.string	"nr_spec"
.LASF619:
	.string	"uses_length"
.LASF484:
	.string	"var_refs_queue"
.LASF506:
	.string	"x_stack_pointer_delta"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF798:
	.string	"pred_deps"
.LASF577:
	.string	"is_thunk"
.LASF709:
	.string	"ptr_"
.LASF458:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF530:
	.string	"x_nonlocal_goto_handler_labels"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF235:
	.string	"LABEL_REF"
.LASF829:
	.string	"rgn_table"
.LASF358:
	.string	"REG_LABEL"
.LASF795:
	.string	"new_insns"
.LASF454:
	.string	"elt_list"
.LASF836:
	.string	"bitlst_table_size"
.LASF856:
	.string	"deaths_in_region"
.LASF805:
	.string	"pred_rl"
.LASF346:
	.string	"REG_DEAD"
.LASF386:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF859:
	.string	"mode_size"
.LASF702:
	.string	"curr_edge"
.LASF349:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF464:
	.string	"regset"
.LASF841:
	.string	"bblst_last"
.LASF476:
	.string	"index_to_edge"
.LASF615:
	.string	"blockage_function"
.LASF654:
	.string	"luid"
.LASF479:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF735:
	.string	"nxt_in_edge"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF783:
	.string	"spec_val"
.LASF850:
	.string	"sched_target_n_insns"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF706:
	.string	"word_num_"
.LASF791:
	.string	"copy_insns"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF569:
	.string	"calls_setjmp"
.LASF799:
	.string	"first_edge"
.LASF666:
	.string	"priority_known"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF418:
	.string	"bitmap_head"
.LASF680:
	.string	"is_speculative"
.LASF531:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF734:
	.string	"compute_dom_prob_ps"
.LASF310:
	.string	"expr"
.LASF708:
	.string	"size_"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF704:
	.string	"new_edge"
.LASF659:
	.string	"tick"
.LASF529:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF793:
	.string	"old_insns_p"
.LASF694:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF357:
	.string	"REG_CC_USER"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF777:
	.string	"src_head"
.LASF549:
	.string	"x_temp_slot_level"
.LASF780:
	.string	"rgn_print_insn"
.LASF158:
	.string	"CCZmode"
.LASF810:
	.string	"debug_dependencies"
.LASF383:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF803:
	.string	"indx_"
.LASF575:
	.string	"contains_functions"
.LASF851:
	.string	"target_n_insns"
.LASF514:
	.string	"varasm"
.LASF372:
	.string	"REG_NON_LOCAL_GOTO"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF579:
	.string	"profile"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF434:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF498:
	.string	"x_last_filename"
.LASF486:
	.string	"promoted_mode"
.LASF711:
	.string	"_mask"
.LASF757:
	.string	"set_spec_fed"
.LASF457:
	.string	"num_elements"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF740:
	.string	"nr_rgn_out_edges"
.LASF877:
	.string	"function_units"
.LASF738:
	.string	"nxt_out_edge"
.LASF566:
	.string	"returns_pcc_struct"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF796:
	.string	"new_mems"
.LASF460:
	.string	"name"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF453:
	.string	"changes_mode"
.LASF76:
	.string	"_IO_save_end"
.LASF736:
	.string	"fst_in_edge"
.LASF164:
	.string	"MODE_INT"
.LASF459:
	.string	"element_size"
.LASF521:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF503:
	.string	"expr_status"
.LASF800:
	.string	"b_succ"
.LASF573:
	.string	"has_nonlocal_label"
.LASF602:
	.string	"XCOFF_DEBUG"
.LASF286:
	.string	"RANGE_LIVE"
.LASF504:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF849:
	.string	"ancestor_edges"
.LASF518:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF439:
	.string	"const_equiv"
.LASF683:
	.string	"update_bbs"
.LASF677:
	.string	"bitlst"
.LASF686:
	.string	"edgeset"
.LASF444:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF406:
	.string	"GR_ARG_POINTER"
.LASF752:
	.string	"debug_candidates"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF878:
	.string	"current_sched_info"
.LASF601:
	.string	"DWARF2_DEBUG"
.LASF295:
	.string	"SS_MINUS"
.LASF747:
	.string	"nxt_edge"
.LASF182:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF781:
	.string	"aligned"
.LASF696:
	.string	"is_cfg_nonregular"
.LASF480:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF348:
	.string	"REG_EQUIV"
.LASF665:
	.string	"is_load_insn"
.LASF611:
	.string	"ready_cost_function"
.LASF57:
	.string	"short unsigned int"
.LASF712:
	.string	"find_single_block_region"
.LASF623:
	.string	"pending_read_mems"
.LASF58:
	.string	"signed char"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF754:
	.string	"update_live_1"
.LASF717:
	.string	"find_rgns"
.LASF456:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF649:
	.string	"use_cselib"
.LASF496:
	.string	"x_cur_insn_uid"
.LASF545:
	.string	"x_last_parm_insn"
.LASF669:
	.string	"next_in"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF362:
	.string	"REG_EXEC_COUNT"
.LASF554:
	.string	"no_debugging_symbols"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF61:
	.string	"__off64_t"
.LASF140:
	.string	"V4DImode"
.LASF340:
	.string	"loop_depth"
.LASF68:
	.string	"_IO_read_base"
.LASF689:
	.string	"IFREE"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF86:
	.string	"_offset"
.LASF845:
	.string	"rgn_nr_edges"
.LASF407:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF442:
	.string	"reg_info_def"
.LASF360:
	.string	"REG_DEP_OUTPUT"
.LASF671:
	.string	"haifa_edge"
.LASF73:
	.string	"_IO_buf_end"
.LASF427:
	.string	"n_bits"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF761:
	.string	"load_insn_bb"
.LASF672:
	.string	"rgn_nr_blocks"
.LASF523:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF450:
	.string	"live_length"
.LASF220:
	.string	"CLOBBER"
.LASF466:
	.string	"edge_def"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF828:
	.string	"nr_regions"
.LASF364:
	.string	"REG_SAVE_AREA"
.LASF288:
	.string	"CALL_PLACEHOLDER"
.LASF511:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF697:
	.string	"build_control_flow"
.LASF772:
	.string	"tmp_class"
.LASF741:
	.string	"split_edges"
.LASF578:
	.string	"instrument_entry_exit"
.LASF674:
	.string	"region"
.LASF541:
	.string	"x_frame_offset"
.LASF242:
	.string	"PLUS"
.LASF789:
	.string	"copy"
.LASF258:
	.string	"POST_DEC"
.LASF416:
	.string	"bits"
.LASF839:
	.string	"bblst_table"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF385:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF478:
	.string	"UPDATE_LIFE_LOCAL"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF589:
	.string	"eh_status"
.LASF816:
	.string	"init_regions"
.LASF488:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF411:
	.string	"GR_VIRTUAL_CFA"
.LASF726:
	.string	"current_edge"
.LASF350:
	.string	"REG_WAS_0"
.LASF371:
	.string	"REG_NORETURN"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF568:
	.string	"needs_context"
.LASF370:
	.string	"REG_MAYBE_DEAD"
.LASF622:
	.string	"pending_read_insns"
.LASF818:
	.string	"schedule_insns"
.LASF663:
	.string	"cant_move"
.LASF873:
	.string	"flag_schedule_interblock"
.LASF149:
	.string	"V4DFmode"
.LASF784:
	.string	"prob_val"
.LASF821:
	.string	"any_large_regions"
.LASF4:
	.string	"unchanging"
.LASF345:
	.string	"reg_note"
.LASF572:
	.string	"calls_eh_return"
.LASF751:
	.string	"debug_candidate"
.LASF551:
	.string	"x_target_temp_slot_level"
.LASF519:
	.string	"pretend_args_size"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF489:
	.string	"last"
.LASF581:
	.string	"varargs"
.LASF765:
	.string	"back_link"
.LASF626:
	.string	"pending_lists_length"
.LASF20:
	.string	"CREG"
.LASF660:
	.string	"cost"
.LASF583:
	.string	"x_whole_function_mode_p"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF595:
	.string	"language_function"
.LASF388:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF840:
	.string	"bblst_size"
.LASF115:
	.string	"HFmode"
.LASF596:
	.string	"debug_info_type"
.LASF557:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF449:
	.string	"deaths"
.LASF815:
	.string	"sched_rgn_n_insns"
.LASF368:
	.string	"REG_EH_REGION"
.LASF547:
	.string	"x_parm_reg_stack_loc"
.LASF351:
	.string	"REG_RETVAL"
.LASF746:
	.string	"update_idx"
.LASF127:
	.string	"CQImode"
.LASF732:
	.string	"in_stack"
.LASF650:
	.string	"ready_list"
.LASF679:
	.string	"is_valid"
.LASF62:
	.string	"char"
.LASF565:
	.string	"returns_struct"
.LASF608:
	.string	"simultaneity"
.LASF125:
	.string	"XCmode"
.LASF539:
	.string	"x_arg_pointer_save_area"
.LASF624:
	.string	"pending_write_insns"
.LASF18:
	.string	"AREG"
.LASF804:
	.string	"mask_"
.LASF537:
	.string	"x_tail_recursion_label"
.LASF725:
	.string	"loop_head"
.LASF72:
	.string	"_IO_buf_base"
.LASF563:
	.string	"language"
.LASF251:
	.string	"ROTATERT"
.LASF237:
	.string	"ADDRESSOF"
.LASF373:
	.string	"REG_SETJMP"
.LASF616:
	.string	"deps_reg"
.LASF133:
	.string	"V2QImode"
.LASF492:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF485:
	.string	"modified"
.LASF501:
	.string	"regno_decl"
.LASF425:
	.string	"BITMAP_IOR_COMPL"
.LASF132:
	.string	"COImode"
.LASF256:
	.string	"PRE_DEC"
.LASF723:
	.string	"node"
.LASF690:
	.string	"PFREE_CANDIDATE"
.LASF64:
	.string	"_IO_FILE"
.LASF808:
	.string	"tmp_deps"
.LASF387:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF405:
	.string	"GR_HARD_FRAME_POINTER"
.LASF846:
	.string	"rgn_edges"
.LASF356:
	.string	"REG_CC_SETTER"
.LASF875:
	.string	"flag_schedule_speculative_load"
.LASF571:
	.string	"calls_alloca"
.LASF838:
	.string	"candidate_table"
.LASF550:
	.string	"x_var_temp_slot_level"
.LASF678:
	.string	"bblst"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF750:
	.string	"debug_regions"
.LASF474:
	.string	"num_blocks"
.LASF771:
	.string	"insn_class"
.LASF153:
	.string	"BLKmode"
.LASF636:
	.string	"sched_info"
.LASF764:
	.string	"is_pfree"
.LASF122:
	.string	"HCmode"
.LASF705:
	.string	"extract_bitlst"
.LASF719:
	.string	"dfs_nr"
.LASF463:
	.string	"regset_head"
.LASF603:
	.string	"VMS_DEBUG"
.LASF861:
	.string	"rtx_name"
.LASF744:
	.string	"compute_trg_info"
.LASF826:
	.string	"in_edges"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF312:
	.string	"size"
.LASF763:
	.string	"insn1"
.LASF768:
	.string	"insn2"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF363:
	.string	"REG_NOALIAS"
.LASF204:
	.string	"ATTR_FLAG"
.LASF598:
	.string	"DBX_DEBUG"
.LASF160:
	.string	"CCFPUmode"
.LASF668:
	.string	"to_block"
.LASF347:
	.string	"REG_INC"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF430:
	.string	"sbitmap"
.LASF542:
	.string	"x_context_display"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF198:
	.string	"ADDRESS"
.LASF470:
	.string	"insns"
.LASF755:
	.string	"check_live"
.LASF555:
	.string	"original_arg_vector"
.LASF848:
	.string	"pot_split"
.LASF621:
	.string	"deps"
.LASF870:
	.string	"basic_block_for_insn"
.LASF587:
	.string	"uses_eh_lsda"
.LASF883:
	.string	"sched-rgn.c"
.LASF437:
	.string	"cptr"
.LASF325:
	.string	"bitmap_head_def"
.LASF647:
	.string	"tail"
.LASF776:
	.string	"ready"
.LASF652:
	.string	"depend"
.LASF642:
	.string	"print_insn"
.LASF786:
	.string	"sets_likely_spilled_1"
.LASF675:
	.string	"first_member"
.LASF451:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF400:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF762:
	.string	"is_conditionally_protected"
.LASF857:
	.string	"target_flags"
.LASF461:
	.string	"data"
.LASF403:
	.string	"GR_STACK_POINTER"
.LASF691:
	.string	"PRISKY_CANDIDATE"
.LASF116:
	.string	"TQFmode"
.LASF710:
	.string	"word_"
.LASF330:
	.string	"head"
.LASF687:
	.string	"INSN_TRAP_CLASS"
.LASF44:
	.string	"words"
.LASF304:
	.string	"min_after_base"
.LASF688:
	.string	"TRAP_FREE"
.LASF438:
	.string	"sched"
.LASF639:
	.string	"schedule_more_p"
.LASF584:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF864:
	.string	"note_insn_name"
.LASF17:
	.string	"NO_REGS"
.LASF871:
	.string	"cfun"
.LASF482:
	.string	"CDI_DOMINATORS"
.LASF520:
	.string	"outgoing_args_size"
.LASF684:
	.string	"candidate"
.LASF109:
	.string	"OImode"
.LASF369:
	.string	"REG_SAVE_NOTE"
.LASF837:
	.string	"bitlst_table"
.LASF428:
	.string	"bytes"
.LASF813:
	.string	"schedule_region"
.LASF253:
	.string	"SMAX"
.LASF412:
	.string	"GR_MAX"
.LASF290:
	.string	"VEC_SELECT"
.LASF353:
	.string	"REG_NONNEG"
.LASF561:
	.string	"stack_alignment_needed"
.LASF491:
	.string	"emit_status"
.LASF807:
	.string	"compute_block_backward_dependences"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF261:
	.string	"POST_MODIFY"
.LASF733:
	.string	"queue"
.LASF865:
	.string	"reload_completed"
.LASF662:
	.string	"reg_weight"
.LASF365:
	.string	"REG_BR_PRED"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF394:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF670:
	.string	"next_out"
.LASF114:
	.string	"QFmode"
.LASF785:
	.string	"sets_likely_spilled"
.LASF703:
	.string	"fst_edge"
.LASF833:
	.string	"current_nr_blocks"
.LASF604:
	.string	"VMS_AND_DWARF2_DEBUG"
.LASF809:
	.string	"free_pending_lists"
.LASF446:
	.string	"sets"
.LASF522:
	.string	"args_info"
.LASF580:
	.string	"limit_stack"
.LASF224:
	.string	"RESX"
.LASF469:
	.string	"dest"
.LASF212:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF646:
	.string	"next_tail"
.LASF75:
	.string	"_IO_backup_base"
.LASF262:
	.string	"UNORDERED"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF473:
	.string	"edge_list"
.LASF627:
	.string	"pending_flush_length"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF500:
	.string	"regno_pointer_align"
.LASF278:
	.string	"SQRT"
.LASF831:
	.string	"block_to_bb"
.LASF402:
	.string	"GR_CC0"
.LASF162:
	.string	"mode_class"
.LASF244:
	.string	"MULT"
.LASF801:
	.string	"bb_succ"
.LASF167:
	.string	"MODE_CC"
.LASF335:
	.string	"local_set"
.LASF774:
	.string	"is_prisky"
.LASF110:
	.string	"PQImode"
.LASF490:
	.string	"sequence_rtl_expr"
.LASF701:
	.string	"next_edge"
.LASF641:
	.string	"rank"
.LASF730:
	.string	"inner"
.LASF787:
	.string	"add_branch_dependences"
.LASF142:
	.string	"V8HImode"
.LASF548:
	.string	"x_temp_slots"
.LASF729:
	.string	"header"
.LASF535:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF207:
	.string	"CALL_INSN"
.LASF600:
	.string	"DWARF_DEBUG"
.LASF232:
	.string	"SUBREG"
.LASF570:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF374:
	.string	"REG_ALWAYS_RETURN"
.LASF515:
	.string	"decl"
.LASF99:
	.string	"long long int"
.LASF352:
	.string	"REG_LIBCALL"
.LASF80:
	.string	"_flags2"
.LASF121:
	.string	"QCmode"
.LASF852:
	.string	"sched_n_insns"
.LASF230:
	.string	"VALUE"
.LASF210:
	.string	"NOTE"
.LASF824:
	.string	"edge_table"
.LASF48:
	.string	"sse_nregs"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF778:
	.string	"src_next_tail"
.LASF329:
	.string	"basic_block_def"
.LASF853:
	.string	"last_was_jump"
.LASF423:
	.string	"BITMAP_IOR"
.LASF591:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF822:
	.string	"nr_inter"
.LASF637:
	.string	"init_ready_list"
.LASF617:
	.string	"uses"
.LASF381:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF713:
	.string	"too_large"
.LASF417:
	.string	"bitmap_element"
.LASF527:
	.string	"x_function_call_count"
.LASF651:
	.string	"haifa_insn_data"
.LASF128:
	.string	"CHImode"
.LASF854:
	.string	"region_sched_info"
.LASF612:
	.string	"conflict_cost_function"
.LASF397:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF499:
	.string	"regno_pointer_align_length"
.LASF494:
	.string	"x_first_insn"
.LASF508:
	.string	"x_apply_args_value"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF830:
	.string	"rgn_bb_table"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF443:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF806:
	.string	"succ_rl"
.LASF138:
	.string	"V4HImode"
.LASF264:
	.string	"UNEQ"
.LASF247:
	.string	"ASHIFT"
.LASF653:
	.string	"line_note"
.LASF252:
	.string	"SMIN"
.LASF748:
	.string	"__FUNCTION__"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF874:
	.string	"flag_schedule_speculative"
.LASF743:
	.string	"bb_trg"
.LASF749:
	.string	"update_blocks"
.LASF766:
	.string	"candp"
.LASF393:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF516:
	.string	"outer"
.LASF390:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF497:
	.string	"x_last_linenum"
.LASF52:
	.string	"unsigned int"
.LASF722:
	.string	"no_loops"
.LASF640:
	.string	"new_ready"
.LASF885:
	.string	"tree_node"
.LASF695:
	.string	"note"
.LASF532:
	.string	"x_cleanup_label"
.LASF303:
	.string	"max_after_vec"
.LASF265:
	.string	"UNGE"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF724:
	.string	"child"
.LASF576:
	.string	"has_computed_jump"
.LASF495:
	.string	"x_last_insn"
.LASF814:
	.string	"rgn_n_insns"
.LASF415:
	.string	"prev"
.LASF83:
	.string	"_vtable_offset"
.LASF562:
	.string	"preferred_stack_boundary"
.LASF645:
	.string	"prev_head"
.LASF102:
	.string	"VOIDmode"
.LASF375:
	.string	"REG_VTABLE_REF"
.LASF879:
	.string	"h_i_d"
.LASF410:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF477:
	.string	"update_life_extent"
.LASF342:
	.string	"frequency"
.LASF868:
	.string	"basic_block_info"
.LASF315:
	.string	"rtwint"
.LASF468:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
