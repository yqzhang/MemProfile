	.file	"cfgloop.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cfgloop.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	";; %d succs { "
.LC1:
	.string	"%d "
.LC2:
	.string	"} dom"
.LC3:
	.string	";; DFS order: "
.LC4:
	.string	";; RC order: "
	.text
	.type	flow_loops_cfg_dump, @function
flow_loops_cfg_dump:
.LFB2:
	.file 1 "cfgloop.c"
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loops, loops
	movq	%rsi, -32(%rbp)	# file, file
	.loc 1 54 0
	movq	-24(%rbp), %rax	# loops, tmp85
	movl	(%rax), %eax	# loops_5(D)->num, D.10160
	testl	%eax, %eax	# D.10160
	je	.L2	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, file
	je	.L2	#,
	movq	-24(%rbp), %rax	# loops, tmp86
	movq	24(%rax), %rax	# loops_5(D)->cfg.dom, D.10161
	testq	%rax, %rax	# D.10161
	jne	.L3	#,
.L2:
	.loc 1 55 0 is_stmt 1
	jmp	.L1	#
.L3:
	.loc 1 57 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L5	#
.L8:
.LBB2:
	.loc 1 61 0
	movl	-12(%rbp), %edx	# i, tmp87
	movq	-32(%rbp), %rax	# file, tmp88
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 62 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.0
	movl	-12(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, tmp89
	addq	$4, %rdx	#, tmp91
	movq	(%rax,%rdx,8), %rax	# basic_block_info.0_11->data.bb, D.10162
	movq	40(%rax), %rax	# _12->succ, tmp92
	movq	%rax, -8(%rbp)	# tmp92, succ
	jmp	.L6	#
.L7:
	.loc 1 63 0 discriminator 2
	movq	-8(%rbp), %rax	# succ, tmp93
	movq	24(%rax), %rax	# succ_4->dest, D.10162
	movl	88(%rax), %edx	# _14->index, D.10160
	movq	-32(%rbp), %rax	# file, tmp94
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp94,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 62 0 discriminator 2
	movq	-8(%rbp), %rax	# succ, tmp95
	movq	8(%rax), %rax	# succ_4->succ_next, tmp96
	movq	%rax, -8(%rbp)	# tmp96, succ
.L6:
	.loc 1 62 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, succ
	jne	.L7	#,
	.loc 1 64 0 is_stmt 1
	movq	-24(%rbp), %rax	# loops, tmp97
	movq	24(%rax), %rax	# loops_5(D)->cfg.dom, D.10161
	movl	-12(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, D.10163
	salq	$3, %rdx	#, D.10163
	addq	%rdx, %rax	# D.10163, D.10161
	movq	(%rax), %rax	# *_20, D.10164
	movq	-32(%rbp), %rdx	# file, tmp99
	movq	%rax, %rsi	# D.10164,
	movl	$.LC2, %edi	#,
	call	flow_nodes_print	#
.LBE2:
	.loc 1 57 0
	addl	$1, -12(%rbp)	#, i
.L5:
	.loc 1 57 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.1, i
	jl	.L8	#,
	.loc 1 68 0 is_stmt 1
	movq	-24(%rbp), %rax	# loops, tmp100
	movq	32(%rax), %rax	# loops_5(D)->cfg.dfs_order, D.10165
	testq	%rax, %rax	# D.10165
	je	.L9	#,
	.loc 1 70 0
	movq	-32(%rbp), %rax	# file, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$14, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 71 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 72 0 discriminator 2
	movq	-24(%rbp), %rax	# loops, tmp102
	movq	32(%rax), %rax	# loops_5(D)->cfg.dfs_order, D.10165
	movl	-12(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, D.10163
	salq	$2, %rdx	#, D.10163
	addq	%rdx, %rax	# D.10163, D.10165
	movl	(%rax), %edx	# *_29, D.10160
	movq	-32(%rbp), %rax	# file, tmp104
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 71 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L10:
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.2
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.2, i
	jl	.L11	#,
	.loc 1 74 0 is_stmt 1
	movq	-32(%rbp), %rax	# file, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$10, %edi	#,
	call	fputc	#
.L9:
	.loc 1 78 0
	movq	-24(%rbp), %rax	# loops, tmp106
	movq	40(%rax), %rax	# loops_5(D)->cfg.rc_order, D.10165
	testq	%rax, %rax	# D.10165
	je	.L1	#,
	.loc 1 80 0
	movq	-32(%rbp), %rax	# file, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	.loc 1 81 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 82 0 discriminator 2
	movq	-24(%rbp), %rax	# loops, tmp108
	movq	40(%rax), %rax	# loops_5(D)->cfg.rc_order, D.10165
	movl	-12(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.10163
	salq	$2, %rdx	#, D.10163
	addq	%rdx, %rax	# D.10163, D.10165
	movl	(%rax), %edx	# *_38, D.10160
	movq	-32(%rbp), %rax	# file, tmp110
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 81 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L12:
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.3
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.3, i
	jl	.L13	#,
	.loc 1 84 0 is_stmt 1
	movq	-32(%rbp), %rax	# file, tmp111
	movq	%rax, %rsi	# tmp111,
	movl	$10, %edi	#,
	call	fputc	#
.L1:
	.loc 1 86 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	flow_loops_cfg_dump, .-flow_loops_cfg_dump
	.type	flow_loop_nested_p, @function
flow_loop_nested_p:
.LFB3:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# outer, outer
	movq	%rsi, -16(%rbp)	# loop, loop
	.loc 1 95 0
	movq	-8(%rbp), %rax	# outer, tmp63
	movq	64(%rax), %rdx	# outer_1(D)->nodes, D.10171
	movq	-16(%rbp), %rax	# loop, tmp64
	movq	64(%rax), %rax	# loop_3(D)->nodes, D.10171
	movq	%rdx, %rsi	# D.10171,
	movq	%rax, %rdi	# D.10171,
	call	sbitmap_a_subset_b_p	#
	.loc 1 96 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	flow_loop_nested_p, .-flow_loop_nested_p
	.section	.rodata
.LC5:
	.string	" invalid"
.LC6:
	.string	""
.LC7:
	.string	" shared"
	.align 8
.LC8:
	.string	";;\n;; Loop %d (%d to %d):%s%s\n"
.LC9:
	.string	";;\n;; Loop %d:%s%s\n"
	.align 8
.LC10:
	.string	";;  header %d, latch %d, pre-header %d, first %d, last %d\n"
	.align 8
.LC11:
	.string	";;  depth %d, level %d, outer %ld\n"
.LC12:
	.string	";;  pre-header edges"
.LC13:
	.string	";;  entry edges"
.LC14:
	.string	";;  %d"
.LC15:
	.string	" nodes"
.LC16:
	.string	";;  exit edges"
.LC17:
	.string	";;  exit doms"
	.text
	.globl	flow_loop_dump
	.type	flow_loop_dump, @function
flow_loop_dump:
.LFB4:
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# loop, loop
	movq	%rsi, -16(%rbp)	# file, file
	movq	%rdx, -24(%rbp)	# loop_dump_aux, loop_dump_aux
	movl	%ecx, -28(%rbp)	# verbose, verbose
	.loc 1 108 0
	cmpq	$0, -8(%rbp)	#, loop
	je	.L17	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# loop, tmp108
	movq	8(%rax), %rax	# loop_7(D)->header, D.10173
	testq	%rax, %rax	# D.10173
	jne	.L18	#,
.L17:
	.loc 1 109 0 is_stmt 1
	jmp	.L16	#
.L18:
	.loc 1 111 0
	movq	-8(%rbp), %rax	# loop, tmp109
	movq	48(%rax), %rax	# loop_7(D)->first, D.10173
	movq	(%rax), %rax	# _9->head, D.10174
	testq	%rax, %rax	# D.10174
	je	.L20	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# loop, tmp110
	movq	56(%rax), %rax	# loop_7(D)->last, D.10173
	movq	8(%rax), %rax	# _11->end, D.10174
	testq	%rax, %rax	# D.10174
	je	.L20	#,
	.loc 1 115 0 is_stmt 1
	movq	-8(%rbp), %rax	# loop, tmp111
	movl	156(%rax), %eax	# loop_7(D)->invalid, D.10175
	.loc 1 112 0
	testl	%eax, %eax	# D.10175
	je	.L21	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movl	$.LC5, %eax	#, iftmp.4
	jmp	.L22	#
.L21:
	.loc 1 112 0 discriminator 2
	movl	$.LC6, %eax	#, iftmp.4
.L22:
	.loc 1 115 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rdx	# loop, tmp112
	movl	152(%rdx), %edx	# loop_7(D)->shared, D.10175
	.loc 1 112 0 discriminator 3
	testl	%edx, %edx	# D.10175
	je	.L23	#,
	.loc 1 112 0 is_stmt 0 discriminator 4
	movl	$.LC7, %edx	#, iftmp.5
	jmp	.L24	#
.L23:
	.loc 1 112 0 discriminator 5
	movl	$.LC6, %edx	#, iftmp.5
.L24:
	.loc 1 114 0 is_stmt 1 discriminator 6
	movq	-8(%rbp), %rcx	# loop, tmp113
	movq	56(%rcx), %rcx	# loop_7(D)->last, D.10173
	movq	8(%rcx), %rcx	# _19->end, D.10174
	.loc 1 112 0 discriminator 6
	movl	8(%rcx), %r8d	# _20->fld[0].rtint, D.10175
	.loc 1 113 0 discriminator 6
	movq	-8(%rbp), %rcx	# loop, tmp114
	movq	48(%rcx), %rcx	# loop_7(D)->first, D.10173
	movq	(%rcx), %rcx	# _22->head, D.10174
	.loc 1 112 0 discriminator 6
	movl	8(%rcx), %ecx	# _23->fld[0].rtint, D.10175
	movq	-8(%rbp), %rsi	# loop, tmp115
	movl	(%rsi), %esi	# loop_7(D)->num, D.10175
	movq	-16(%rbp), %rdi	# file, tmp116
	movq	%rax, (%rsp)	# iftmp.4,
	movq	%rdx, %r9	# iftmp.5,
	movl	%esi, %edx	# D.10175,
	movl	$.LC8, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L25	#
.L20:
	.loc 1 118 0
	movq	-8(%rbp), %rax	# loop, tmp117
	movl	156(%rax), %eax	# loop_7(D)->invalid, D.10175
	.loc 1 117 0
	testl	%eax, %eax	# D.10175
	je	.L26	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edx	#, iftmp.6
	jmp	.L27	#
.L26:
	.loc 1 117 0 discriminator 2
	movl	$.LC6, %edx	#, iftmp.6
.L27:
	.loc 1 118 0 is_stmt 1 discriminator 3
	movq	-8(%rbp), %rax	# loop, tmp118
	movl	152(%rax), %eax	# loop_7(D)->shared, D.10175
	.loc 1 117 0 discriminator 3
	testl	%eax, %eax	# D.10175
	je	.L28	#,
	.loc 1 117 0 is_stmt 0 discriminator 4
	movl	$.LC7, %eax	#, iftmp.7
	jmp	.L29	#
.L28:
	.loc 1 117 0 discriminator 5
	movl	$.LC6, %eax	#, iftmp.7
.L29:
	.loc 1 117 0 discriminator 6
	movq	-8(%rbp), %rcx	# loop, tmp119
	movl	(%rcx), %esi	# loop_7(D)->num, D.10175
	movq	-16(%rbp), %rdi	# file, tmp120
	movq	%rdx, %r8	# iftmp.6,
	movq	%rax, %rcx	# iftmp.7,
	movl	%esi, %edx	# D.10175,
	movl	$.LC9, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
.L25:
	.loc 1 123 0 is_stmt 1
	movq	-8(%rbp), %rax	# loop, tmp121
	movq	56(%rax), %rax	# loop_7(D)->last, D.10173
	.loc 1 120 0
	movl	88(%rax), %esi	# _34->index, D.10175
	.loc 1 123 0
	movq	-8(%rbp), %rax	# loop, tmp122
	movq	48(%rax), %rax	# loop_7(D)->first, D.10173
	.loc 1 120 0
	movl	88(%rax), %r8d	# _36->index, D.10175
	.loc 1 122 0
	movq	-8(%rbp), %rax	# loop, tmp123
	movq	24(%rax), %rax	# loop_7(D)->pre_header, D.10173
	.loc 1 120 0
	testq	%rax, %rax	# D.10173
	je	.L30	#,
	.loc 1 122 0
	movq	-8(%rbp), %rax	# loop, tmp124
	movq	24(%rax), %rax	# loop_7(D)->pre_header, D.10173
	.loc 1 120 0
	movl	88(%rax), %eax	# _39->index, iftmp.8
	jmp	.L31	#
.L30:
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, iftmp.8
.L31:
	.loc 1 121 0 is_stmt 1
	movq	-8(%rbp), %rdx	# loop, tmp125
	movq	16(%rdx), %rdx	# loop_7(D)->latch, D.10173
	.loc 1 120 0
	movl	88(%rdx), %ecx	# _42->index, D.10175
	.loc 1 121 0
	movq	-8(%rbp), %rdx	# loop, tmp126
	movq	8(%rdx), %rdx	# loop_7(D)->header, D.10173
	.loc 1 120 0
	movl	88(%rdx), %edx	# _44->index, D.10175
	movq	-16(%rbp), %rdi	# file, tmp127
	movl	%esi, (%rsp)	# D.10175,
	movl	%r8d, %r9d	# D.10175,
	movl	%eax, %r8d	# iftmp.8,
	movl	$.LC10, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 126 0
	movq	-8(%rbp), %rax	# loop, tmp128
	movq	128(%rax), %rax	# loop_7(D)->outer, D.10176
	.loc 1 124 0
	testq	%rax, %rax	# D.10176
	je	.L32	#,
	.loc 1 126 0
	movq	-8(%rbp), %rax	# loop, tmp129
	movq	128(%rax), %rax	# loop_7(D)->outer, D.10176
	movl	(%rax), %eax	# _47->num, D.10175
	.loc 1 124 0
	cltq
	jmp	.L33	#
.L32:
	.loc 1 124 0 is_stmt 0 discriminator 1
	movq	$-1, %rax	#, iftmp.9
.L33:
	.loc 1 124 0 discriminator 2
	movq	-8(%rbp), %rdx	# loop, tmp130
	movl	124(%rdx), %ecx	# loop_7(D)->level, D.10175
	movq	-8(%rbp), %rdx	# loop, tmp131
	movl	120(%rdx), %edx	# loop_7(D)->depth, D.10175
	movq	-16(%rbp), %rdi	# file, tmp132
	movq	%rax, %r8	# iftmp.9,
	movl	$.LC11, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 128 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax	# loop, tmp133
	movq	32(%rax), %rax	# loop_7(D)->pre_header_edges, D.10177
	testq	%rax, %rax	# D.10177
	je	.L34	#,
	.loc 1 129 0
	movq	-8(%rbp), %rax	# loop, tmp134
	movl	40(%rax), %edx	# loop_7(D)->num_pre_header_edges, D.10175
	movq	-8(%rbp), %rax	# loop, tmp135
	movq	32(%rax), %rax	# loop_7(D)->pre_header_edges, D.10177
	movq	-16(%rbp), %rcx	# file, tmp136
	movq	%rax, %rsi	# D.10177,
	movl	$.LC12, %edi	#,
	call	flow_edge_list_print	#
.L34:
	.loc 1 132 0
	movq	-8(%rbp), %rax	# loop, tmp137
	movl	88(%rax), %edx	# loop_7(D)->num_entries, D.10175
	movq	-8(%rbp), %rax	# loop, tmp138
	movq	80(%rax), %rax	# loop_7(D)->entry_edges, D.10177
	movq	-16(%rbp), %rcx	# file, tmp139
	movq	%rax, %rsi	# D.10177,
	movl	$.LC13, %edi	#,
	call	flow_edge_list_print	#
	.loc 1 134 0
	movq	-8(%rbp), %rax	# loop, tmp140
	movl	72(%rax), %edx	# loop_7(D)->num_nodes, D.10175
	movq	-16(%rbp), %rax	# file, tmp141
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp141,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 135 0
	movq	-8(%rbp), %rax	# loop, tmp142
	movq	64(%rax), %rax	# loop_7(D)->nodes, D.10178
	movq	-16(%rbp), %rdx	# file, tmp143
	movq	%rax, %rsi	# D.10178,
	movl	$.LC15, %edi	#,
	call	flow_nodes_print	#
	.loc 1 136 0
	movq	-8(%rbp), %rax	# loop, tmp144
	movl	104(%rax), %edx	# loop_7(D)->num_exits, D.10175
	movq	-8(%rbp), %rax	# loop, tmp145
	movq	96(%rax), %rax	# loop_7(D)->exit_edges, D.10177
	movq	-16(%rbp), %rcx	# file, tmp146
	movq	%rax, %rsi	# D.10177,
	movl	$.LC16, %edi	#,
	call	flow_edge_list_print	#
	.loc 1 139 0
	movq	-8(%rbp), %rax	# loop, tmp147
	movq	112(%rax), %rax	# loop_7(D)->exits_doms, D.10178
	testq	%rax, %rax	# D.10178
	je	.L35	#,
	.loc 1 140 0
	movq	-8(%rbp), %rax	# loop, tmp148
	movq	112(%rax), %rax	# loop_7(D)->exits_doms, D.10178
	movq	-16(%rbp), %rdx	# file, tmp149
	movq	%rax, %rsi	# D.10178,
	movl	$.LC17, %edi	#,
	call	flow_nodes_print	#
.L35:
	.loc 1 142 0
	cmpq	$0, -24(%rbp)	#, loop_dump_aux
	je	.L16	#,
	.loc 1 143 0
	movl	-28(%rbp), %edx	# verbose, tmp150
	movq	-16(%rbp), %rsi	# file, tmp151
	movq	-8(%rbp), %rcx	# loop, tmp152
	movq	-24(%rbp), %rax	# loop_dump_aux, tmp153
	movq	%rcx, %rdi	# tmp152,
	call	*%rax	# tmp153
.L16:
	.loc 1 144 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	flow_loop_dump, .-flow_loop_dump
	.section	.rodata
.LC18:
	.string	";; %d loops found, %d levels\n"
.LC19:
	.string	"disjoint"
.LC20:
	.string	"nested"
	.align 8
.LC21:
	.string	";; loop header %d shared by loops %d, %d %s\n"
	.text
	.globl	flow_loops_dump
	.type	flow_loops_dump, @function
flow_loops_dump:
.LFB5:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# loops, loops
	movq	%rsi, -64(%rbp)	# file, file
	movq	%rdx, -72(%rbp)	# loop_dump_aux, loop_dump_aux
	movl	%ecx, -76(%rbp)	# verbose, verbose
	.loc 1 159 0
	movq	-56(%rbp), %rax	# loops, tmp79
	movl	(%rax), %eax	# loops_6(D)->num, tmp80
	movl	%eax, -28(%rbp)	# tmp80, num_loops
	.loc 1 160 0
	cmpl	$0, -28(%rbp)	#, num_loops
	je	.L37	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, file
	jne	.L38	#,
.L37:
	.loc 1 161 0 is_stmt 1
	jmp	.L36	#
.L38:
	.loc 1 163 0
	movq	-56(%rbp), %rax	# loops, tmp81
	movl	4(%rax), %ecx	# loops_6(D)->levels, D.10192
	movl	-28(%rbp), %edx	# num_loops, tmp82
	movq	-64(%rbp), %rax	# file, tmp83
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp83,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 164 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L40	#
.L51:
.LBB3:
	.loc 1 166 0
	movq	-56(%rbp), %rax	# loops, tmp84
	movq	8(%rax), %rdx	# loops_6(D)->array, D.10193
	movl	-36(%rbp), %eax	# i, tmp85
	cltq
	salq	$3, %rax	#, tmp87
	movq	%rax, %rcx	# tmp86, tmp88
	salq	$5, %rcx	#, tmp88
	subq	%rax, %rcx	# tmp86, D.10194
	movq	%rcx, %rax	# D.10194, D.10194
	addq	%rdx, %rax	# D.10193, tmp89
	movq	%rax, -16(%rbp)	# tmp89, loop
	.loc 1 168 0
	movl	-76(%rbp), %ecx	# verbose, tmp90
	movq	-72(%rbp), %rdx	# loop_dump_aux, tmp91
	movq	-64(%rbp), %rsi	# file, tmp92
	movq	-16(%rbp), %rax	# loop, tmp93
	movq	%rax, %rdi	# tmp93,
	call	flow_loop_dump	#
	.loc 1 169 0
	movq	-16(%rbp), %rax	# loop, tmp94
	movl	152(%rax), %eax	# loop_14->shared, D.10192
	testl	%eax, %eax	# D.10192
	je	.L41	#,
	.loc 1 170 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L42	#
.L50:
.LBB4:
	.loc 1 172 0
	movq	-56(%rbp), %rax	# loops, tmp95
	movq	8(%rax), %rdx	# loops_6(D)->array, D.10193
	movl	-32(%rbp), %eax	# j, tmp96
	cltq
	salq	$3, %rax	#, tmp98
	movq	%rax, %rcx	# tmp97, tmp99
	salq	$5, %rcx	#, tmp99
	subq	%rax, %rcx	# tmp97, D.10194
	movq	%rcx, %rax	# D.10194, D.10194
	addq	%rdx, %rax	# D.10193, tmp100
	movq	%rax, -8(%rbp)	# tmp100, oloop
	.loc 1 174 0
	movq	-16(%rbp), %rax	# loop, tmp101
	movq	8(%rax), %rdx	# loop_14->header, D.10195
	movq	-8(%rbp), %rax	# oloop, tmp102
	movq	8(%rax), %rax	# oloop_22->header, D.10195
	cmpq	%rax, %rdx	# D.10195, D.10195
	jne	.L43	#,
.LBB5:
	.loc 1 179 0
	movq	-16(%rbp), %rax	# loop, tmp103
	movl	72(%rax), %edx	# loop_14->num_nodes, D.10192
	movq	-8(%rbp), %rax	# oloop, tmp104
	movl	72(%rax), %eax	# oloop_22->num_nodes, D.10192
	cmpl	%eax, %edx	# D.10192, D.10192
	setl	%al	#, D.10196
	movzbl	%al, %eax	# D.10196, tmp105
	movl	%eax, -24(%rbp)	# tmp105, smaller
	.loc 1 184 0
	cmpl	$0, -24(%rbp)	#, smaller
	je	.L44	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx	# oloop, iftmp.10
	jmp	.L45	#
.L44:
	.loc 1 184 0 discriminator 2
	movq	-16(%rbp), %rdx	# loop, iftmp.10
.L45:
	.loc 1 184 0 discriminator 3
	cmpl	$0, -24(%rbp)	#, smaller
	je	.L46	#,
	.loc 1 184 0 discriminator 4
	movq	-16(%rbp), %rax	# loop, iftmp.11
	jmp	.L47	#
.L46:
	.loc 1 184 0 discriminator 5
	movq	-8(%rbp), %rax	# oloop, iftmp.11
.L47:
	.loc 1 184 0 discriminator 6
	movq	%rdx, %rsi	# iftmp.10,
	movq	%rax, %rdi	# iftmp.11,
	call	flow_loop_nested_p	#
	testl	%eax, %eax	# D.10192
	sete	%al	#, D.10196
	movzbl	%al, %eax	# D.10196, tmp106
	movl	%eax, -20(%rbp)	# tmp106, disjoint
	.loc 1 186 0 is_stmt 1 discriminator 6
	cmpl	$0, -20(%rbp)	#, disjoint
	je	.L48	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movl	$.LC19, %eax	#, iftmp.12
	jmp	.L49	#
.L48:
	.loc 1 186 0 discriminator 2
	movl	$.LC20, %eax	#, iftmp.12
.L49:
	.loc 1 188 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rdx	# loop, tmp107
	movq	8(%rdx), %rdx	# loop_14->header, D.10195
	.loc 1 186 0 discriminator 3
	movl	88(%rdx), %edx	# _38->index, D.10192
	movl	-32(%rbp), %esi	# j, tmp108
	movl	-36(%rbp), %ecx	# i, tmp109
	movq	-64(%rbp), %rdi	# file, tmp110
	movq	%rax, %r9	# iftmp.12,
	movl	%esi, %r8d	# tmp108,
	movl	$.LC21, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
.L43:
.LBE5:
.LBE4:
	.loc 1 170 0
	addl	$1, -32(%rbp)	#, j
.L42:
	.loc 1 170 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# j, tmp111
	cmpl	-36(%rbp), %eax	# i, tmp111
	jl	.L50	#,
.L41:
.LBE3:
	.loc 1 164 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L40:
	.loc 1 164 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp112
	cmpl	-28(%rbp), %eax	# num_loops, tmp112
	jl	.L51	#,
	.loc 1 194 0 is_stmt 1
	cmpl	$0, -76(%rbp)	#, verbose
	je	.L36	#,
	.loc 1 195 0
	movq	-64(%rbp), %rdx	# file, tmp113
	movq	-56(%rbp), %rax	# loops, tmp114
	movq	%rdx, %rsi	# tmp113,
	movq	%rax, %rdi	# tmp114,
	call	flow_loops_cfg_dump	#
.L36:
	.loc 1 196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	flow_loops_dump, .-flow_loops_dump
	.section	.rodata
.LC22:
	.string	"cfgloop.c"
	.text
	.globl	flow_loops_free
	.type	flow_loops_free, @function
flow_loops_free:
.LFB6:
	.loc 1 203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loops, loops
	.loc 1 204 0
	movq	-24(%rbp), %rax	# loops, tmp82
	movq	8(%rax), %rax	# loops_2(D)->array, D.10201
	testq	%rax, %rax	# D.10201
	je	.L52	#,
.LBB6:
	.loc 1 208 0
	movq	-24(%rbp), %rax	# loops, tmp83
	movl	(%rax), %eax	# loops_2(D)->num, D.10202
	testl	%eax, %eax	# D.10202
	jne	.L54	#,
	.loc 1 209 0
	movl	$__FUNCTION__.9257, %edx	#,
	movl	$209, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L54:
	.loc 1 212 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L55	#
.L61:
.LBB7:
	.loc 1 214 0
	movq	-24(%rbp), %rax	# loops, tmp84
	movq	8(%rax), %rdx	# loops_2(D)->array, D.10201
	movl	-12(%rbp), %eax	# i, tmp85
	cltq
	salq	$3, %rax	#, tmp87
	movq	%rax, %rcx	# tmp86, tmp88
	salq	$5, %rcx	#, tmp88
	subq	%rax, %rcx	# tmp86, D.10203
	movq	%rcx, %rax	# D.10203, D.10203
	addq	%rdx, %rax	# D.10201, tmp89
	movq	%rax, -8(%rbp)	# tmp89, loop
	.loc 1 216 0
	movq	-8(%rbp), %rax	# loop, tmp90
	movq	32(%rax), %rax	# loop_10->pre_header_edges, D.10204
	testq	%rax, %rax	# D.10204
	je	.L56	#,
	.loc 1 217 0
	movq	-8(%rbp), %rax	# loop, tmp91
	movq	32(%rax), %rax	# loop_10->pre_header_edges, D.10204
	movq	%rax, %rdi	# D.10204,
	call	free	#
.L56:
	.loc 1 218 0
	movq	-8(%rbp), %rax	# loop, tmp92
	movq	64(%rax), %rax	# loop_10->nodes, D.10205
	testq	%rax, %rax	# D.10205
	je	.L57	#,
	.loc 1 219 0
	movq	-8(%rbp), %rax	# loop, tmp93
	movq	64(%rax), %rax	# loop_10->nodes, D.10205
	movq	%rax, %rdi	# D.10205,
	call	free	#
.L57:
	.loc 1 220 0
	movq	-8(%rbp), %rax	# loop, tmp94
	movq	80(%rax), %rax	# loop_10->entry_edges, D.10204
	testq	%rax, %rax	# D.10204
	je	.L58	#,
	.loc 1 221 0
	movq	-8(%rbp), %rax	# loop, tmp95
	movq	80(%rax), %rax	# loop_10->entry_edges, D.10204
	movq	%rax, %rdi	# D.10204,
	call	free	#
.L58:
	.loc 1 222 0
	movq	-8(%rbp), %rax	# loop, tmp96
	movq	96(%rax), %rax	# loop_10->exit_edges, D.10204
	testq	%rax, %rax	# D.10204
	je	.L59	#,
	.loc 1 223 0
	movq	-8(%rbp), %rax	# loop, tmp97
	movq	96(%rax), %rax	# loop_10->exit_edges, D.10204
	movq	%rax, %rdi	# D.10204,
	call	free	#
.L59:
	.loc 1 224 0
	movq	-8(%rbp), %rax	# loop, tmp98
	movq	112(%rax), %rax	# loop_10->exits_doms, D.10205
	testq	%rax, %rax	# D.10205
	je	.L60	#,
	.loc 1 225 0
	movq	-8(%rbp), %rax	# loop, tmp99
	movq	112(%rax), %rax	# loop_10->exits_doms, D.10205
	movq	%rax, %rdi	# D.10205,
	call	free	#
.L60:
.LBE7:
	.loc 1 212 0
	addl	$1, -12(%rbp)	#, i
.L55:
	.loc 1 212 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# loops, tmp100
	movl	(%rax), %eax	# loops_2(D)->num, D.10202
	cmpl	-12(%rbp), %eax	# i, D.10202
	jg	.L61	#,
	.loc 1 228 0 is_stmt 1
	movq	-24(%rbp), %rax	# loops, tmp101
	movq	8(%rax), %rax	# loops_2(D)->array, D.10201
	movq	%rax, %rdi	# D.10201,
	call	free	#
	.loc 1 229 0
	movq	-24(%rbp), %rax	# loops, tmp102
	movq	$0, 8(%rax)	#, loops_2(D)->array
	.loc 1 231 0
	movq	-24(%rbp), %rax	# loops, tmp103
	movq	24(%rax), %rax	# loops_2(D)->cfg.dom, D.10206
	testq	%rax, %rax	# D.10206
	je	.L62	#,
	.loc 1 232 0
	movq	-24(%rbp), %rax	# loops, tmp104
	movq	24(%rax), %rax	# loops_2(D)->cfg.dom, D.10206
	movq	%rax, %rdi	# D.10206,
	call	free	#
.L62:
	.loc 1 234 0
	movq	-24(%rbp), %rax	# loops, tmp105
	movq	32(%rax), %rax	# loops_2(D)->cfg.dfs_order, D.10207
	testq	%rax, %rax	# D.10207
	je	.L63	#,
	.loc 1 235 0
	movq	-24(%rbp), %rax	# loops, tmp106
	movq	32(%rax), %rax	# loops_2(D)->cfg.dfs_order, D.10207
	movq	%rax, %rdi	# D.10207,
	call	free	#
.L63:
	.loc 1 237 0
	movq	-24(%rbp), %rax	# loops, tmp107
	movq	48(%rax), %rax	# loops_2(D)->shared_headers, D.10205
	testq	%rax, %rax	# D.10205
	je	.L52	#,
	.loc 1 238 0
	movq	-24(%rbp), %rax	# loops, tmp108
	movq	48(%rax), %rax	# loops_2(D)->shared_headers, D.10205
	movq	%rax, %rdi	# D.10205,
	call	free	#
.L52:
.LBE6:
	.loc 1 240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	flow_loops_free, .-flow_loops_free
	.type	flow_loop_entry_edges_find, @function
flow_loop_entry_edges_find:
.LFB7:
	.loc 1 251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# header, header
	movq	%rsi, -48(%rbp)	# nodes, nodes
	movq	%rdx, -56(%rbp)	# entry_edges, entry_edges
	.loc 1 255 0
	movq	-56(%rbp), %rax	# entry_edges, tmp85
	movq	$0, (%rax)	#, *entry_edges_7(D)
	.loc 1 257 0
	movl	$0, -28(%rbp)	#, num_entries
	.loc 1 258 0
	movq	-40(%rbp), %rax	# header, tmp86
	movq	32(%rax), %rax	# header_9(D)->pred, tmp87
	movq	%rax, -24(%rbp)	# tmp87, e
	jmp	.L65	#
.L68:
.LBB8:
	.loc 1 260 0
	movq	-24(%rbp), %rax	# e, tmp88
	movq	16(%rax), %rax	# e_1->src, tmp89
	movq	%rax, -16(%rbp)	# tmp89, src
	.loc 1 262 0
	cmpq	$entry_exit_blocks, -16(%rbp)	#, src
	je	.L66	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# src, tmp90
	movl	88(%rax), %eax	# src_11->index, D.10209
	shrl	$6, %eax	#, D.10210
	movl	%eax, %edx	# D.10210, D.10210
	movq	-48(%rbp), %rax	# nodes, tmp91
	movl	%edx, %edx	# D.10210, tmp92
	addq	$2, %rdx	#, tmp93
	movq	(%rax,%rdx,8), %rdx	# nodes_15(D)->elms, D.10211
	movq	-16(%rbp), %rax	# src, tmp94
	movl	88(%rax), %eax	# src_11->index, D.10209
	andl	$63, %eax	#, D.10209
	movl	%eax, %ecx	# D.10209, tmp117
	shrq	%cl, %rdx	# tmp117, D.10211
	movq	%rdx, %rax	# D.10211, D.10211
	andl	$1, %eax	#, D.10211
	testq	%rax, %rax	# D.10211
	jne	.L67	#,
.L66:
	.loc 1 263 0 is_stmt 1
	addl	$1, -28(%rbp)	#, num_entries
.L67:
.LBE8:
	.loc 1 258 0
	movq	-24(%rbp), %rax	# e, tmp95
	movq	(%rax), %rax	# e_1->pred_next, tmp96
	movq	%rax, -24(%rbp)	# tmp96, e
.L65:
	.loc 1 258 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, e
	jne	.L68	#,
	.loc 1 266 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, num_entries
	jne	.L69	#,
	.loc 1 267 0
	movl	$__FUNCTION__.9273, %edx	#,
	movl	$267, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L69:
	.loc 1 269 0
	movl	-28(%rbp), %eax	# num_entries, tmp97
	cltq
	salq	$3, %rax	#, D.10211
	movq	%rax, %rdi	# D.10211,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp98, D.10212
	movq	-56(%rbp), %rax	# entry_edges, tmp99
	movq	%rdx, (%rax)	# D.10212, *entry_edges_7(D)
	.loc 1 271 0
	movl	$0, -28(%rbp)	#, num_entries
	.loc 1 272 0
	movq	-40(%rbp), %rax	# header, tmp100
	movq	32(%rax), %rax	# header_9(D)->pred, tmp101
	movq	%rax, -24(%rbp)	# tmp101, e
	jmp	.L70	#
.L73:
.LBB9:
	.loc 1 274 0
	movq	-24(%rbp), %rax	# e, tmp102
	movq	16(%rax), %rax	# e_2->src, tmp103
	movq	%rax, -8(%rbp)	# tmp103, src
	.loc 1 276 0
	cmpq	$entry_exit_blocks, -8(%rbp)	#, src
	je	.L71	#,
	.loc 1 276 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# src, tmp104
	movl	88(%rax), %eax	# src_28->index, D.10209
	shrl	$6, %eax	#, D.10210
	movl	%eax, %edx	# D.10210, D.10210
	movq	-48(%rbp), %rax	# nodes, tmp105
	movl	%edx, %edx	# D.10210, tmp106
	addq	$2, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rdx	# nodes_15(D)->elms, D.10211
	movq	-8(%rbp), %rax	# src, tmp108
	movl	88(%rax), %eax	# src_28->index, D.10209
	andl	$63, %eax	#, D.10209
	movl	%eax, %ecx	# D.10209, tmp120
	shrq	%cl, %rdx	# tmp120, D.10211
	movq	%rdx, %rax	# D.10211, D.10211
	andl	$1, %eax	#, D.10211
	testq	%rax, %rax	# D.10211
	jne	.L72	#,
.L71:
	.loc 1 277 0 is_stmt 1
	movq	-56(%rbp), %rax	# entry_edges, tmp109
	movq	(%rax), %rcx	# *entry_edges_7(D), D.10213
	movl	-28(%rbp), %eax	# num_entries, num_entries.13
	leal	1(%rax), %edx	#, tmp110
	movl	%edx, -28(%rbp)	# tmp110, num_entries
	cltq
	salq	$3, %rax	#, D.10211
	leaq	(%rcx,%rax), %rdx	#, D.10213
	movq	-24(%rbp), %rax	# e, tmp111
	movq	%rax, (%rdx)	# tmp111, *_42
.L72:
.LBE9:
	.loc 1 272 0
	movq	-24(%rbp), %rax	# e, tmp112
	movq	(%rax), %rax	# e_2->pred_next, tmp113
	movq	%rax, -24(%rbp)	# tmp113, e
.L70:
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, e
	jne	.L73	#,
	.loc 1 280 0 is_stmt 1
	movl	-28(%rbp), %eax	# num_entries, D.10209
	.loc 1 281 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	flow_loop_entry_edges_find, .-flow_loop_entry_edges_find
	.type	flow_loop_exit_edges_find, @function
flow_loop_exit_edges_find:
.LFB8:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# nodes, nodes
	movq	%rsi, -128(%rbp)	# exit_edges, exit_edges
	.loc 1 296 0
	movq	-128(%rbp), %rax	# exit_edges, tmp105
	movq	$0, (%rax)	#, *exit_edges_26(D)
	.loc 1 302 0
	movl	$0, -104(%rbp)	#, num_exits
.LBB10:
	.loc 1 303 0
	movl	$0, -96(%rbp)	#, bit_num_
	movq	-120(%rbp), %rax	# nodes, tmp106
	movl	4(%rax), %eax	# nodes_29(D)->size, tmp107
	movl	%eax, -84(%rbp)	# tmp107, size_
	movq	-120(%rbp), %rax	# nodes, tmp111
	addq	$16, %rax	#, tmp110
	movq	%rax, -48(%rbp)	# tmp110, ptr_
	movl	$0, -100(%rbp)	#, word_num_
	jmp	.L76	#
.L85:
.LBB11:
	.loc 1 303 0 is_stmt 0 discriminator 2
	movl	-100(%rbp), %eax	# word_num_, D.10215
	leaq	0(,%rax,8), %rdx	#, D.10215
	movq	-48(%rbp), %rax	# ptr_, tmp112
	addq	%rdx, %rax	# D.10215, D.10216
	movq	(%rax), %rax	# *_35, tmp113
	movq	%rax, -64(%rbp)	# tmp113, word_
	cmpq	$0, -64(%rbp)	#, word_
	je	.L77	#,
	.loc 1 303 0 discriminator 1
	jmp	.L78	#
.L84:
.LBB12:
	.loc 1 303 0 discriminator 2
	movl	-96(%rbp), %eax	# bit_num_, bit_num_.14
	movl	$1, %edx	#, tmp114
	movl	%eax, %ecx	# bit_num_.14, tmp172
	salq	%cl, %rdx	# tmp172, tmp115
	movq	%rdx, %rax	# tmp115, tmp115
	movq	%rax, -40(%rbp)	# tmp115, _mask
	movq	-40(%rbp), %rax	# _mask, tmp116
	movq	-64(%rbp), %rdx	# word_, tmp117
	andq	%rdx, %rax	# tmp117, D.10215
	testq	%rax, %rax	# D.10215
	je	.L79	#,
	.loc 1 303 0 discriminator 1
	movq	-40(%rbp), %rax	# _mask, tmp118
	notq	%rax	# D.10215
	andq	%rax, -64(%rbp)	# D.10215, word_
	movl	-100(%rbp), %eax	# word_num_, tmp119
	sall	$6, %eax	#, D.10217
	movl	%eax, %edx	# D.10217, D.10217
	movl	-96(%rbp), %eax	# bit_num_, tmp120
	addl	%edx, %eax	# D.10217, D.10217
	movl	%eax, -80(%rbp)	# D.10217, node
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.15
	movl	-80(%rbp), %edx	# node, tmp122
	movslq	%edx, %rdx	# tmp122, tmp121
	addq	$4, %rdx	#, tmp123
	movq	(%rax,%rdx,8), %rax	# basic_block_info.15_45->data.bb, D.10218
	movq	40(%rax), %rax	# _46->succ, tmp124
	movq	%rax, -72(%rbp)	# tmp124, e
	jmp	.L80	#
.L83:
.LBB13:
	.loc 1 303 0 discriminator 2
	movq	-72(%rbp), %rax	# e, tmp125
	movq	24(%rax), %rax	# e_1->dest, tmp126
	movq	%rax, -32(%rbp)	# tmp126, dest
	cmpq	$entry_exit_blocks+112, -32(%rbp)	#, dest
	je	.L81	#,
	movq	-32(%rbp), %rax	# dest, tmp127
	movl	88(%rax), %eax	# dest_48->index, D.10214
	shrl	$6, %eax	#, D.10217
	movl	%eax, %edx	# D.10217, D.10217
	movq	-120(%rbp), %rax	# nodes, tmp128
	movl	%edx, %edx	# D.10217, tmp129
	addq	$2, %rdx	#, tmp130
	movq	(%rax,%rdx,8), %rdx	# nodes_29(D)->elms, D.10215
	movq	-32(%rbp), %rax	# dest, tmp131
	movl	88(%rax), %eax	# dest_48->index, D.10214
	andl	$63, %eax	#, D.10214
	movl	%eax, %ecx	# D.10214, tmp176
	shrq	%cl, %rdx	# tmp176, D.10215
	movq	%rdx, %rax	# D.10215, D.10215
	andl	$1, %eax	#, D.10215
	testq	%rax, %rax	# D.10215
	jne	.L82	#,
.L81:
	.loc 1 303 0 discriminator 1
	addl	$1, -104(%rbp)	#, num_exits
.L82:
.LBE13:
	movq	-72(%rbp), %rax	# e, tmp132
	movq	8(%rax), %rax	# e_1->succ_next, tmp133
	movq	%rax, -72(%rbp)	# tmp133, e
.L80:
	cmpq	$0, -72(%rbp)	#, e
	jne	.L83	#,
	.loc 1 303 0 discriminator 3
	cmpq	$0, -64(%rbp)	#, word_
	jne	.L79	#,
	.loc 1 303 0 discriminator 1
	jmp	.L77	#
.L79:
.LBE12:
	.loc 1 303 0 discriminator 2
	addl	$1, -96(%rbp)	#, bit_num_
.L78:
	.loc 1 303 0 discriminator 1
	cmpl	$63, -96(%rbp)	#, bit_num_
	jbe	.L84	#,
.L77:
.LBE11:
	.loc 1 303 0 discriminator 2
	addl	$1, -100(%rbp)	#, word_num_
	movl	$0, -96(%rbp)	#, bit_num_
.L76:
	.loc 1 303 0 discriminator 1
	movl	-100(%rbp), %eax	# word_num_, tmp134
	cmpl	-84(%rbp), %eax	# size_, tmp134
	jb	.L85	#,
.LBE10:
	.loc 1 313 0 is_stmt 1
	cmpl	$0, -104(%rbp)	#, num_exits
	jne	.L86	#,
	.loc 1 314 0
	movl	$0, %eax	#, D.10214
	jmp	.L87	#
.L86:
	.loc 1 316 0
	movl	-104(%rbp), %eax	# num_exits, tmp135
	cltq
	salq	$3, %rax	#, D.10215
	movq	%rax, %rdi	# D.10215,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp136, D.10219
	movq	-128(%rbp), %rax	# exit_edges, tmp137
	movq	%rdx, (%rax)	# D.10219, *exit_edges_26(D)
	.loc 1 319 0
	movl	$0, -104(%rbp)	#, num_exits
.LBB14:
	.loc 1 320 0
	movl	$0, -88(%rbp)	#, bit_num_
	movq	-120(%rbp), %rax	# nodes, tmp138
	movl	4(%rax), %eax	# nodes_29(D)->size, tmp139
	movl	%eax, -76(%rbp)	# tmp139, size_
	movq	-120(%rbp), %rax	# nodes, tmp143
	addq	$16, %rax	#, tmp142
	movq	%rax, -24(%rbp)	# tmp142, ptr_
	movl	$0, -92(%rbp)	#, word_num_
	jmp	.L88	#
.L97:
.LBB15:
	.loc 1 320 0 is_stmt 0 discriminator 2
	movl	-92(%rbp), %eax	# word_num_, D.10215
	leaq	0(,%rax,8), %rdx	#, D.10215
	movq	-24(%rbp), %rax	# ptr_, tmp144
	addq	%rdx, %rax	# D.10215, D.10216
	movq	(%rax), %rax	# *_73, tmp145
	movq	%rax, -56(%rbp)	# tmp145, word_
	cmpq	$0, -56(%rbp)	#, word_
	je	.L89	#,
	.loc 1 320 0 discriminator 1
	jmp	.L90	#
.L96:
.LBB16:
	.loc 1 320 0 discriminator 2
	movl	-88(%rbp), %eax	# bit_num_, bit_num_.16
	movl	$1, %edx	#, tmp146
	movl	%eax, %ecx	# bit_num_.16, tmp178
	salq	%cl, %rdx	# tmp178, tmp147
	movq	%rdx, %rax	# tmp147, tmp147
	movq	%rax, -16(%rbp)	# tmp147, _mask
	movq	-16(%rbp), %rax	# _mask, tmp148
	movq	-56(%rbp), %rdx	# word_, tmp149
	andq	%rdx, %rax	# tmp149, D.10215
	testq	%rax, %rax	# D.10215
	je	.L91	#,
	.loc 1 320 0 discriminator 1
	movq	-16(%rbp), %rax	# _mask, tmp150
	notq	%rax	# D.10215
	andq	%rax, -56(%rbp)	# D.10215, word_
	movl	-92(%rbp), %eax	# word_num_, tmp151
	sall	$6, %eax	#, D.10217
	movl	%eax, %edx	# D.10217, D.10217
	movl	-88(%rbp), %eax	# bit_num_, tmp152
	addl	%edx, %eax	# D.10217, D.10217
	movl	%eax, -80(%rbp)	# D.10217, node
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.17
	movl	-80(%rbp), %edx	# node, tmp154
	movslq	%edx, %rdx	# tmp154, tmp153
	addq	$4, %rdx	#, tmp155
	movq	(%rax,%rdx,8), %rax	# basic_block_info.17_83->data.bb, D.10218
	movq	40(%rax), %rax	# _84->succ, tmp156
	movq	%rax, -72(%rbp)	# tmp156, e
	jmp	.L92	#
.L95:
.LBB17:
	.loc 1 320 0 discriminator 2
	movq	-72(%rbp), %rax	# e, tmp157
	movq	24(%rax), %rax	# e_2->dest, tmp158
	movq	%rax, -8(%rbp)	# tmp158, dest
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, dest
	je	.L93	#,
	movq	-8(%rbp), %rax	# dest, tmp159
	movl	88(%rax), %eax	# dest_86->index, D.10214
	shrl	$6, %eax	#, D.10217
	movl	%eax, %edx	# D.10217, D.10217
	movq	-120(%rbp), %rax	# nodes, tmp160
	movl	%edx, %edx	# D.10217, tmp161
	addq	$2, %rdx	#, tmp162
	movq	(%rax,%rdx,8), %rdx	# nodes_29(D)->elms, D.10215
	movq	-8(%rbp), %rax	# dest, tmp163
	movl	88(%rax), %eax	# dest_86->index, D.10214
	andl	$63, %eax	#, D.10214
	movl	%eax, %ecx	# D.10214, tmp182
	shrq	%cl, %rdx	# tmp182, D.10215
	movq	%rdx, %rax	# D.10215, D.10215
	andl	$1, %eax	#, D.10215
	testq	%rax, %rax	# D.10215
	jne	.L94	#,
.L93:
	.loc 1 320 0 discriminator 1
	movq	-128(%rbp), %rax	# exit_edges, tmp164
	movq	(%rax), %rcx	# *exit_edges_26(D), D.10220
	movl	-104(%rbp), %eax	# num_exits, num_exits.18
	leal	1(%rax), %edx	#, tmp165
	movl	%edx, -104(%rbp)	# tmp165, num_exits
	cltq
	salq	$3, %rax	#, D.10215
	leaq	(%rcx,%rax), %rdx	#, D.10220
	movq	-72(%rbp), %rax	# e, tmp166
	movq	%rax, (%rdx)	# tmp166, *_100
.L94:
.LBE17:
	movq	-72(%rbp), %rax	# e, tmp167
	movq	8(%rax), %rax	# e_2->succ_next, tmp168
	movq	%rax, -72(%rbp)	# tmp168, e
.L92:
	cmpq	$0, -72(%rbp)	#, e
	jne	.L95	#,
	.loc 1 320 0 discriminator 3
	cmpq	$0, -56(%rbp)	#, word_
	jne	.L91	#,
	.loc 1 320 0 discriminator 1
	jmp	.L89	#
.L91:
.LBE16:
	.loc 1 320 0 discriminator 2
	addl	$1, -88(%rbp)	#, bit_num_
.L90:
	.loc 1 320 0 discriminator 1
	cmpl	$63, -88(%rbp)	#, bit_num_
	jbe	.L96	#,
.L89:
.LBE15:
	.loc 1 320 0 discriminator 2
	addl	$1, -92(%rbp)	#, word_num_
	movl	$0, -88(%rbp)	#, bit_num_
.L88:
	.loc 1 320 0 discriminator 1
	movl	-92(%rbp), %eax	# word_num_, tmp169
	cmpl	-76(%rbp), %eax	# size_, tmp169
	jb	.L97	#,
.LBE14:
	.loc 1 330 0 is_stmt 1
	movl	-104(%rbp), %eax	# num_exits, D.10214
.L87:
	.loc 1 331 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	flow_loop_exit_edges_find, .-flow_loop_exit_edges_find
	.type	flow_loop_nodes_find, @function
flow_loop_nodes_find:
.LFB9:
	.loc 1 342 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# header, header
	movq	%rsi, -64(%rbp)	# latch, latch
	movq	%rdx, -72(%rbp)	# nodes, nodes
	.loc 1 345 0
	movl	$0, -36(%rbp)	#, num_nodes
	.loc 1 347 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.19
	cltq
	salq	$3, %rax	#, D.10221
	movq	%rax, %rdi	# D.10221,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp121, stack
	.loc 1 348 0
	movl	$0, -40(%rbp)	#, sp
	.loc 1 351 0
	movq	-72(%rbp), %rax	# nodes, tmp122
	movq	%rax, %rdi	# tmp122,
	call	sbitmap_zero	#
	.loc 1 352 0
	movq	-56(%rbp), %rax	# header, tmp123
	movl	88(%rax), %eax	# header_17(D)->index, D.10222
	shrl	$6, %eax	#, D.10223
	movq	-72(%rbp), %rdx	# nodes, tmp124
	movl	%eax, %ecx	# D.10223, tmp125
	addq	$2, %rcx	#, tmp126
	movq	(%rdx,%rcx,8), %rsi	# nodes_16(D)->elms, D.10221
	movq	-56(%rbp), %rdx	# header, tmp127
	movl	88(%rdx), %edx	# header_17(D)->index, D.10222
	andl	$63, %edx	#, D.10222
	movl	$1, %edi	#, tmp128
	movl	%edx, %ecx	# D.10222, tmp184
	salq	%cl, %rdi	# tmp184, D.10221
	movq	%rdi, %rdx	# D.10221, D.10221
	orq	%rdx, %rsi	# D.10221, D.10221
	movq	%rsi, %rcx	# D.10221, D.10221
	movq	-72(%rbp), %rdx	# nodes, tmp129
	movl	%eax, %eax	# D.10223, tmp130
	addq	$2, %rax	#, tmp131
	movq	%rcx, (%rdx,%rax,8)	# D.10221, nodes_16(D)->elms
	.loc 1 353 0
	addl	$1, -36(%rbp)	#, num_nodes
	.loc 1 354 0
	movq	-56(%rbp), %rax	# header, tmp132
	movl	92(%rax), %eax	# header_17(D)->loop_depth, D.10222
	leal	1(%rax), %edx	#, D.10222
	movq	-56(%rbp), %rax	# header, tmp133
	movl	%edx, 92(%rax)	# D.10222, header_17(D)->loop_depth
	.loc 1 357 0
	movq	-64(%rbp), %rax	# latch, tmp134
	movl	88(%rax), %eax	# latch_29(D)->index, D.10222
	shrl	$6, %eax	#, D.10223
	movl	%eax, %edx	# D.10223, D.10223
	movq	-72(%rbp), %rax	# nodes, tmp135
	movl	%edx, %edx	# D.10223, tmp136
	addq	$2, %rdx	#, tmp137
	movq	(%rax,%rdx,8), %rdx	# nodes_16(D)->elms, D.10221
	movq	-64(%rbp), %rax	# latch, tmp138
	movl	88(%rax), %eax	# latch_29(D)->index, D.10222
	andl	$63, %eax	#, D.10222
	movl	%eax, %ecx	# D.10222, tmp188
	shrq	%cl, %rdx	# tmp188, D.10221
	movq	%rdx, %rax	# D.10221, D.10221
	andl	$1, %eax	#, D.10221
	testq	%rax, %rax	# D.10221
	jne	.L99	#,
	.loc 1 359 0
	movq	-64(%rbp), %rax	# latch, tmp139
	movl	88(%rax), %eax	# latch_29(D)->index, D.10222
	shrl	$6, %eax	#, D.10223
	movq	-72(%rbp), %rdx	# nodes, tmp140
	movl	%eax, %ecx	# D.10223, tmp141
	addq	$2, %rcx	#, tmp142
	movq	(%rdx,%rcx,8), %rsi	# nodes_16(D)->elms, D.10221
	movq	-64(%rbp), %rdx	# latch, tmp143
	movl	88(%rdx), %edx	# latch_29(D)->index, D.10222
	andl	$63, %edx	#, D.10222
	movl	$1, %edi	#, tmp144
	movl	%edx, %ecx	# D.10222, tmp190
	salq	%cl, %rdi	# tmp190, D.10221
	movq	%rdi, %rdx	# D.10221, D.10221
	orq	%rdx, %rsi	# D.10221, D.10221
	movq	%rsi, %rcx	# D.10221, D.10221
	movq	-72(%rbp), %rdx	# nodes, tmp145
	movl	%eax, %eax	# D.10223, tmp146
	addq	$2, %rax	#, tmp147
	movq	%rcx, (%rdx,%rax,8)	# D.10221, nodes_16(D)->elms
	.loc 1 360 0
	movq	-64(%rbp), %rax	# latch, tmp148
	movl	92(%rax), %eax	# latch_29(D)->loop_depth, D.10222
	leal	1(%rax), %edx	#, D.10222
	movq	-64(%rbp), %rax	# latch, tmp149
	movl	%edx, 92(%rax)	# D.10222, latch_29(D)->loop_depth
	.loc 1 361 0
	addl	$1, -36(%rbp)	#, num_nodes
	.loc 1 362 0
	movl	-40(%rbp), %eax	# sp, sp.20
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -40(%rbp)	# tmp150, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10221
	movq	-24(%rbp), %rax	# stack, tmp151
	addq	%rax, %rdx	# tmp151, D.10224
	movq	-64(%rbp), %rax	# latch, tmp152
	movq	%rax, (%rdx)	# tmp152, *_53
	.loc 1 365 0
	jmp	.L100	#
.L99:
	jmp	.L100	#
.L104:
.LBB18:
	.loc 1 370 0
	subl	$1, -40(%rbp)	#, sp
	movl	-40(%rbp), %eax	# sp, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10221
	movq	-24(%rbp), %rax	# stack, tmp154
	addq	%rdx, %rax	# D.10221, D.10224
	movq	(%rax), %rax	# *_57, tmp155
	movq	%rax, -16(%rbp)	# tmp155, node
	.loc 1 371 0
	movq	-16(%rbp), %rax	# node, tmp156
	movq	32(%rax), %rax	# node_58->pred, tmp157
	movq	%rax, -32(%rbp)	# tmp157, e
	jmp	.L101	#
.L103:
.LBB19:
	.loc 1 373 0
	movq	-32(%rbp), %rax	# e, tmp158
	movq	16(%rax), %rax	# e_9->src, tmp159
	movq	%rax, -8(%rbp)	# tmp159, ancestor
	.loc 1 377 0
	cmpq	$entry_exit_blocks, -8(%rbp)	#, ancestor
	je	.L102	#,
	.loc 1 378 0
	movq	-8(%rbp), %rax	# ancestor, tmp160
	movl	88(%rax), %eax	# ancestor_60->index, D.10222
	shrl	$6, %eax	#, D.10223
	movl	%eax, %edx	# D.10223, D.10223
	movq	-72(%rbp), %rax	# nodes, tmp161
	movl	%edx, %edx	# D.10223, tmp162
	addq	$2, %rdx	#, tmp163
	movq	(%rax,%rdx,8), %rdx	# nodes_16(D)->elms, D.10221
	movq	-8(%rbp), %rax	# ancestor, tmp164
	movl	88(%rax), %eax	# ancestor_60->index, D.10222
	andl	$63, %eax	#, D.10222
	movl	%eax, %ecx	# D.10222, tmp194
	shrq	%cl, %rdx	# tmp194, D.10221
	movq	%rdx, %rax	# D.10221, D.10221
	andl	$1, %eax	#, D.10221
	testq	%rax, %rax	# D.10221
	jne	.L102	#,
	.loc 1 380 0
	movq	-8(%rbp), %rax	# ancestor, tmp165
	movl	88(%rax), %eax	# ancestor_60->index, D.10222
	shrl	$6, %eax	#, D.10223
	movq	-72(%rbp), %rdx	# nodes, tmp166
	movl	%eax, %ecx	# D.10223, tmp167
	addq	$2, %rcx	#, tmp168
	movq	(%rdx,%rcx,8), %rsi	# nodes_16(D)->elms, D.10221
	movq	-8(%rbp), %rdx	# ancestor, tmp169
	movl	88(%rdx), %edx	# ancestor_60->index, D.10222
	andl	$63, %edx	#, D.10222
	movl	$1, %edi	#, tmp170
	movl	%edx, %ecx	# D.10222, tmp196
	salq	%cl, %rdi	# tmp196, D.10221
	movq	%rdi, %rdx	# D.10221, D.10221
	orq	%rdx, %rsi	# D.10221, D.10221
	movq	%rsi, %rcx	# D.10221, D.10221
	movq	-72(%rbp), %rdx	# nodes, tmp171
	movl	%eax, %eax	# D.10223, tmp172
	addq	$2, %rax	#, tmp173
	movq	%rcx, (%rdx,%rax,8)	# D.10221, nodes_16(D)->elms
	.loc 1 381 0
	movq	-8(%rbp), %rax	# ancestor, tmp174
	movl	92(%rax), %eax	# ancestor_60->loop_depth, D.10222
	leal	1(%rax), %edx	#, D.10222
	movq	-8(%rbp), %rax	# ancestor, tmp175
	movl	%edx, 92(%rax)	# D.10222, ancestor_60->loop_depth
	.loc 1 382 0
	addl	$1, -36(%rbp)	#, num_nodes
	.loc 1 383 0
	movl	-40(%rbp), %eax	# sp, sp.21
	leal	1(%rax), %edx	#, tmp176
	movl	%edx, -40(%rbp)	# tmp176, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10221
	movq	-24(%rbp), %rax	# stack, tmp177
	addq	%rax, %rdx	# tmp177, D.10224
	movq	-8(%rbp), %rax	# ancestor, tmp178
	movq	%rax, (%rdx)	# tmp178, *_84
.L102:
.LBE19:
	.loc 1 371 0
	movq	-32(%rbp), %rax	# e, tmp179
	movq	(%rax), %rax	# e_9->pred_next, tmp180
	movq	%rax, -32(%rbp)	# tmp180, e
.L101:
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L103	#,
.L100:
.LBE18:
	.loc 1 365 0 is_stmt 1 discriminator 1
	cmpl	$0, -40(%rbp)	#, sp
	jne	.L104	#,
	.loc 1 387 0
	movq	-24(%rbp), %rax	# stack, tmp181
	movq	%rax, %rdi	# tmp181,
	call	free	#
	.loc 1 388 0
	movl	-36(%rbp), %eax	# num_nodes, D.10222
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	flow_loop_nodes_find, .-flow_loop_nodes_find
	.type	flow_loop_pre_header_scan, @function
flow_loop_pre_header_scan:
.LFB10:
	.loc 1 397 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# loop, loop
	.loc 1 402 0
	movq	-40(%rbp), %rax	# loop, tmp76
	movl	$0, 40(%rax)	#, loop_5(D)->num_pre_header_edges
	.loc 1 403 0
	movq	-40(%rbp), %rax	# loop, tmp77
	movl	88(%rax), %eax	# loop_5(D)->num_entries, D.10225
	cmpl	$1, %eax	#, D.10225
	je	.L107	#,
	.loc 1 404 0
	jmp	.L106	#
.L107:
	.loc 1 406 0
	movq	-40(%rbp), %rax	# loop, tmp78
	movq	80(%rax), %rax	# loop_5(D)->entry_edges, D.10226
	movq	(%rax), %rax	# *_7, D.10227
	movq	16(%rax), %rax	# _8->src, tmp79
	movq	%rax, -16(%rbp)	# tmp79, ebb
	.loc 1 407 0
	cmpq	$entry_exit_blocks, -16(%rbp)	#, ebb
	jne	.L109	#,
	.loc 1 408 0
	jmp	.L106	#
.L109:
	.loc 1 413 0
	movl	$1, -20(%rbp)	#, num
	jmp	.L110	#
.L112:
	.loc 1 415 0
	movq	-16(%rbp), %rax	# ebb, tmp80
	movq	32(%rax), %rax	# ebb_3->pred, D.10227
	movq	16(%rax), %rax	# _15->src, tmp81
	movq	%rax, -16(%rbp)	# tmp81, ebb
	.loc 1 414 0
	addl	$1, -20(%rbp)	#, num
.L110:
	.loc 1 413 0 discriminator 1
	movq	-16(%rbp), %rax	# ebb, tmp82
	movq	32(%rax), %rax	# ebb_3->pred, D.10227
	movq	16(%rax), %rax	# _11->src, D.10228
	cmpq	$entry_exit_blocks, %rax	#, D.10228
	je	.L111	#,
	.loc 1 413 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# ebb, tmp83
	movq	32(%rax), %rax	# ebb_3->pred, D.10227
	movq	(%rax), %rax	# _13->pred_next, D.10227
	testq	%rax, %rax	# D.10227
	je	.L112	#,
.L111:
	.loc 1 417 0 is_stmt 1
	movl	-20(%rbp), %eax	# num, tmp84
	cltq
	salq	$3, %rax	#, D.10229
	movq	%rax, %rdi	# D.10229,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp85, D.10230
	movq	-40(%rbp), %rax	# loop, tmp86
	movq	%rdx, 32(%rax)	# D.10230, loop_5(D)->pre_header_edges
	.loc 1 418 0
	movq	-40(%rbp), %rax	# loop, tmp87
	movl	-20(%rbp), %edx	# num, tmp88
	movl	%edx, 40(%rax)	# tmp88, loop_5(D)->num_pre_header_edges
	.loc 1 423 0
	movq	-40(%rbp), %rax	# loop, tmp89
	movq	80(%rax), %rax	# loop_5(D)->entry_edges, D.10226
	movq	(%rax), %rax	# *_21, tmp90
	movq	%rax, -8(%rbp)	# tmp90, e
	jmp	.L113	#
.L114:
	.loc 1 424 0 discriminator 2
	movq	-40(%rbp), %rax	# loop, tmp91
	movq	32(%rax), %rax	# loop_5(D)->pre_header_edges, D.10226
	subl	$1, -20(%rbp)	#, num
	movl	-20(%rbp), %edx	# num, tmp92
	movslq	%edx, %rdx	# tmp92, D.10229
	salq	$3, %rdx	#, D.10229
	addq	%rax, %rdx	# D.10226, D.10226
	movq	-8(%rbp), %rax	# e, tmp93
	movq	%rax, (%rdx)	# tmp93, *_27
	.loc 1 423 0 discriminator 2
	movq	-8(%rbp), %rax	# e, tmp94
	movq	16(%rax), %rax	# e_4->src, D.10228
	movq	32(%rax), %rax	# _28->pred, tmp95
	movq	%rax, -8(%rbp)	# tmp95, e
.L113:
	.loc 1 423 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, num
	jne	.L114	#,
.L106:
	.loc 1 425 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	flow_loop_pre_header_scan, .-flow_loop_pre_header_scan
	.type	flow_loop_pre_header_find, @function
flow_loop_pre_header_find:
.LFB11:
	.loc 1 435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# header, header
	movq	%rsi, -48(%rbp)	# dom, dom
	.loc 1 441 0
	movq	$0, -24(%rbp)	#, pre_header
	.loc 1 442 0
	movq	-40(%rbp), %rax	# header, tmp74
	movq	32(%rax), %rax	# header_6(D)->pred, tmp75
	movq	%rax, -16(%rbp)	# tmp75, e
	jmp	.L116	#
.L120:
.LBB20:
	.loc 1 444 0
	movq	-16(%rbp), %rax	# e, tmp76
	movq	16(%rax), %rax	# e_4->src, tmp77
	movq	%rax, -8(%rbp)	# tmp77, node
	.loc 1 446 0
	cmpq	$entry_exit_blocks, -8(%rbp)	#, node
	je	.L117	#,
	.loc 1 447 0
	movq	-8(%rbp), %rax	# node, tmp78
	movl	88(%rax), %eax	# node_8->index, D.10231
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10232
	movq	-48(%rbp), %rax	# dom, tmp79
	addq	%rdx, %rax	# D.10232, D.10233
	movq	(%rax), %rax	# *_13, D.10234
	movq	-40(%rbp), %rdx	# header, tmp80
	movl	88(%rdx), %edx	# header_6(D)->index, D.10231
	shrl	$6, %edx	#, D.10235
	movl	%edx, %edx	# D.10235, tmp81
	addq	$2, %rdx	#, tmp82
	movq	(%rax,%rdx,8), %rdx	# _14->elms, D.10232
	movq	-40(%rbp), %rax	# header, tmp83
	movl	88(%rax), %eax	# header_6(D)->index, D.10231
	andl	$63, %eax	#, D.10231
	movl	%eax, %ecx	# D.10231, tmp89
	shrq	%cl, %rdx	# tmp89, D.10232
	movq	%rdx, %rax	# D.10232, D.10232
	andl	$1, %eax	#, D.10232
	testq	%rax, %rax	# D.10232
	jne	.L117	#,
	.loc 1 449 0
	cmpq	$0, -24(%rbp)	#, pre_header
	jne	.L118	#,
	.loc 1 450 0
	movq	-8(%rbp), %rax	# node, tmp84
	movq	%rax, -24(%rbp)	# tmp84, pre_header
	jmp	.L117	#
.L118:
	.loc 1 455 0
	movq	$0, -24(%rbp)	#, pre_header
	.loc 1 456 0
	jmp	.L119	#
.L117:
.LBE20:
	.loc 1 442 0
	movq	-16(%rbp), %rax	# e, tmp85
	movq	(%rax), %rax	# e_4->pred_next, tmp86
	movq	%rax, -16(%rbp)	# tmp86, e
.L116:
	.loc 1 442 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L120	#,
.L119:
	.loc 1 461 0 is_stmt 1
	movq	-24(%rbp), %rax	# pre_header, D.10236
	.loc 1 462 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	flow_loop_pre_header_find, .-flow_loop_pre_header_find
	.type	flow_loop_tree_node_add, @function
flow_loop_tree_node_add:
.LFB12:
	.loc 1 472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# prevloop, prevloop
	movq	%rsi, -16(%rbp)	# loop, loop
	.loc 1 474 0
	movq	-16(%rbp), %rdx	# loop, tmp64
	movq	-8(%rbp), %rax	# prevloop, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	flow_loop_nested_p	#
	testl	%eax, %eax	# D.10237
	je	.L123	#,
	.loc 1 476 0
	movq	-8(%rbp), %rax	# prevloop, tmp66
	movq	-16(%rbp), %rdx	# loop, tmp67
	movq	%rdx, 136(%rax)	# tmp67, prevloop_2(D)->inner
	.loc 1 477 0
	movq	-16(%rbp), %rax	# loop, tmp68
	movq	-8(%rbp), %rdx	# prevloop, tmp69
	movq	%rdx, 128(%rax)	# tmp69, loop_3(D)->outer
	.loc 1 478 0
	jmp	.L122	#
.L123:
	.loc 1 481 0
	jmp	.L125	#
.L127:
	.loc 1 482 0
	movq	-8(%rbp), %rax	# prevloop, tmp70
	movq	128(%rax), %rax	# prevloop_1->outer, D.10238
	movq	-16(%rbp), %rdx	# loop, tmp71
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.10238,
	call	flow_loop_nested_p	#
	testl	%eax, %eax	# D.10237
	je	.L126	#,
	.loc 1 484 0
	movq	-8(%rbp), %rax	# prevloop, tmp72
	movq	-16(%rbp), %rdx	# loop, tmp73
	movq	%rdx, 144(%rax)	# tmp73, prevloop_1->next
	.loc 1 485 0
	movq	-8(%rbp), %rax	# prevloop, tmp74
	movq	128(%rax), %rdx	# prevloop_1->outer, D.10238
	movq	-16(%rbp), %rax	# loop, tmp75
	movq	%rdx, 128(%rax)	# D.10238, loop_3(D)->outer
	.loc 1 486 0
	jmp	.L122	#
.L126:
	.loc 1 481 0
	movq	-8(%rbp), %rax	# prevloop, tmp76
	movq	128(%rax), %rax	# prevloop_1->outer, tmp77
	movq	%rax, -8(%rbp)	# tmp77, prevloop
.L125:
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# prevloop, tmp78
	movq	128(%rax), %rax	# prevloop_1->outer, D.10238
	testq	%rax, %rax	# D.10238
	jne	.L127	#,
	.loc 1 489 0 is_stmt 1
	movq	-8(%rbp), %rax	# prevloop, tmp79
	movq	-16(%rbp), %rdx	# loop, tmp80
	movq	%rdx, 144(%rax)	# tmp80, prevloop_1->next
	.loc 1 490 0
	movq	-16(%rbp), %rax	# loop, tmp81
	movq	$0, 128(%rax)	#, loop_3(D)->outer
.L122:
	.loc 1 491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	flow_loop_tree_node_add, .-flow_loop_tree_node_add
	.type	flow_loops_tree_build, @function
flow_loops_tree_build:
.LFB13:
	.loc 1 498 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loops, loops
	.loc 1 502 0
	movq	-24(%rbp), %rax	# loops, tmp74
	movl	(%rax), %eax	# loops_2(D)->num, tmp75
	movl	%eax, -4(%rbp)	# tmp75, num_loops
	.loc 1 503 0
	cmpl	$0, -4(%rbp)	#, num_loops
	jne	.L129	#,
	.loc 1 504 0
	jmp	.L128	#
.L129:
	.loc 1 509 0
	movq	-24(%rbp), %rax	# loops, tmp76
	movq	8(%rax), %rdx	# loops_2(D)->array, D.10239
	movq	-24(%rbp), %rax	# loops, tmp77
	movq	%rdx, 16(%rax)	# D.10239, loops_2(D)->tree_root
	.loc 1 510 0
	movq	-24(%rbp), %rax	# loops, tmp78
	movq	16(%rax), %rcx	# loops_2(D)->tree_root, D.10239
	movq	-24(%rbp), %rax	# loops, tmp79
	movq	16(%rax), %rax	# loops_2(D)->tree_root, D.10239
	.loc 1 511 0
	movq	-24(%rbp), %rdx	# loops, tmp80
	movq	16(%rdx), %rdx	# loops_2(D)->tree_root, D.10239
	movq	$0, 144(%rdx)	#, _7->next
	movq	144(%rdx), %rdx	# _7->next, D.10239
	movq	%rdx, 136(%rax)	# D.10239, _6->inner
	.loc 1 510 0
	movq	136(%rax), %rax	# _6->inner, D.10239
	movq	%rax, 128(%rcx)	# D.10239, _5->outer
	.loc 1 514 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L131	#
.L132:
	.loc 1 515 0 discriminator 2
	movq	-24(%rbp), %rax	# loops, tmp81
	movq	8(%rax), %rdx	# loops_2(D)->array, D.10239
	movl	-8(%rbp), %eax	# i, tmp82
	cltq
	salq	$3, %rax	#, tmp84
	movq	%rax, %rcx	# tmp83, tmp85
	salq	$5, %rcx	#, tmp85
	subq	%rax, %rcx	# tmp83, D.10240
	movq	%rcx, %rax	# D.10240, D.10240
	addq	%rax, %rdx	# D.10240, D.10239
	movq	-24(%rbp), %rax	# loops, tmp86
	movq	8(%rax), %rcx	# loops_2(D)->array, D.10239
	movl	-8(%rbp), %eax	# i, tmp87
	cltq
	salq	$3, %rax	#, tmp89
	movq	%rax, %rsi	# tmp88, tmp90
	salq	$5, %rsi	#, tmp90
	subq	%rax, %rsi	# tmp88, D.10240
	movq	%rsi, %rax	# D.10240, D.10240
	subq	$248, %rax	#, D.10241
	addq	%rcx, %rax	# D.10239, D.10239
	movq	%rdx, %rsi	# D.10239,
	movq	%rax, %rdi	# D.10239,
	call	flow_loop_tree_node_add	#
	.loc 1 514 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L131:
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp91
	cmpl	-4(%rbp), %eax	# num_loops, tmp91
	jl	.L132	#,
.L128:
	.loc 1 516 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	flow_loops_tree_build, .-flow_loops_tree_build
	.type	flow_loop_level_compute, @function
flow_loop_level_compute:
.LFB14:
	.loc 1 526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loop, loop
	movl	%esi, -28(%rbp)	# depth, depth
	.loc 1 528 0
	movl	$1, -16(%rbp)	#, level
	.loc 1 530 0
	cmpq	$0, -24(%rbp)	#, loop
	jne	.L134	#,
	.loc 1 531 0
	movl	$0, %eax	#, D.10242
	jmp	.L135	#
.L134:
	.loc 1 538 0
	movq	-24(%rbp), %rax	# loop, tmp63
	movq	136(%rax), %rax	# loop_5(D)->inner, tmp64
	movq	%rax, -8(%rbp)	# tmp64, inner
	jmp	.L136	#
.L137:
.LBB21:
	.loc 1 540 0 discriminator 2
	movl	-28(%rbp), %eax	# depth, tmp65
	leal	1(%rax), %edx	#, D.10242
	movq	-8(%rbp), %rax	# inner, tmp66
	movl	%edx, %esi	# D.10242,
	movq	%rax, %rdi	# tmp66,
	call	flow_loop_level_compute	#
	addl	$1, %eax	#, tmp67
	movl	%eax, -12(%rbp)	# tmp67, ilevel
	.loc 1 542 0 discriminator 2
	movl	-12(%rbp), %eax	# ilevel, tmp69
	cmpl	%eax, -16(%rbp)	# tmp69, level
	cmovge	-16(%rbp), %eax	# level,, tmp68
	movl	%eax, -16(%rbp)	# tmp68, level
.LBE21:
	.loc 1 538 0 discriminator 2
	movq	-8(%rbp), %rax	# inner, tmp70
	movq	144(%rax), %rax	# inner_1->next, tmp71
	movq	%rax, -8(%rbp)	# tmp71, inner
.L136:
	.loc 1 538 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, inner
	jne	.L137	#,
	.loc 1 545 0 is_stmt 1
	movq	-24(%rbp), %rax	# loop, tmp72
	movl	-16(%rbp), %edx	# level, tmp73
	movl	%edx, 124(%rax)	# tmp73, loop_5(D)->level
	.loc 1 546 0
	movq	-24(%rbp), %rax	# loop, tmp74
	movl	-28(%rbp), %edx	# depth, tmp75
	movl	%edx, 120(%rax)	# tmp75, loop_5(D)->depth
	.loc 1 547 0
	movl	-16(%rbp), %eax	# level, D.10242
.L135:
	.loc 1 548 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	flow_loop_level_compute, .-flow_loop_level_compute
	.type	flow_loops_level_compute, @function
flow_loops_level_compute:
.LFB15:
	.loc 1 557 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loops, loops
	.loc 1 558 0
	movl	$0, -16(%rbp)	#, levels
	.loc 1 563 0
	movq	-24(%rbp), %rax	# loops, tmp61
	movq	16(%rax), %rax	# loops_4(D)->tree_root, tmp62
	movq	%rax, -8(%rbp)	# tmp62, loop
	jmp	.L139	#
.L140:
	.loc 1 565 0 discriminator 2
	movq	-8(%rbp), %rax	# loop, tmp63
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	flow_loop_level_compute	#
	movl	%eax, -12(%rbp)	# tmp64, level
	.loc 1 566 0 discriminator 2
	movl	-16(%rbp), %eax	# levels, tmp66
	cmpl	%eax, -12(%rbp)	# tmp66, level
	cmovge	-12(%rbp), %eax	# level,, tmp65
	movl	%eax, -16(%rbp)	# tmp65, levels
	.loc 1 563 0 discriminator 2
	movq	-8(%rbp), %rax	# loop, tmp67
	movq	144(%rax), %rax	# loop_2->next, tmp68
	movq	%rax, -8(%rbp)	# tmp68, loop
.L139:
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, loop
	jne	.L140	#,
	.loc 1 569 0 is_stmt 1
	movl	-16(%rbp), %eax	# levels, D.10243
	.loc 1 570 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	flow_loops_level_compute, .-flow_loops_level_compute
	.globl	flow_loop_scan
	.type	flow_loop_scan, @function
flow_loop_scan:
.LFB16:
	.loc 1 580 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# loops, loops
	movq	%rsi, -32(%rbp)	# loop, loop
	movl	%edx, -36(%rbp)	# flags, flags
	.loc 1 582 0
	movl	-36(%rbp), %eax	# flags, tmp108
	andl	$16, %eax	#, D.10244
	testl	%eax, %eax	# D.10244
	je	.L143	#,
	.loc 1 582 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# loop, tmp109
	movq	96(%rax), %rax	# loop_5(D)->exit_edges, D.10245
	testq	%rax, %rax	# D.10245
	jne	.L143	#,
	.loc 1 583 0 is_stmt 1
	orl	$8, -36(%rbp)	#, flags
.L143:
	.loc 1 585 0
	movl	-36(%rbp), %eax	# flags, tmp110
	andl	$4, %eax	#, D.10244
	testl	%eax, %eax	# D.10244
	je	.L144	#,
	.loc 1 588 0
	movq	-32(%rbp), %rax	# loop, tmp111
	leaq	80(%rax), %rdx	#, D.10246
	movq	-32(%rbp), %rax	# loop, tmp112
	movq	64(%rax), %rcx	# loop_5(D)->nodes, D.10247
	movq	-32(%rbp), %rax	# loop, tmp113
	movq	8(%rax), %rax	# loop_5(D)->header, D.10248
	movq	%rcx, %rsi	# D.10247,
	movq	%rax, %rdi	# D.10248,
	call	flow_loop_entry_edges_find	#
	movq	-32(%rbp), %rdx	# loop, tmp114
	movl	%eax, 88(%rdx)	# D.10244, loop_5(D)->num_entries
.L144:
	.loc 1 591 0
	movl	-36(%rbp), %eax	# flags, tmp115
	andl	$8, %eax	#, D.10244
	testl	%eax, %eax	# D.10244
	je	.L145	#,
	.loc 1 594 0
	movq	-32(%rbp), %rax	# loop, tmp116
	leaq	96(%rax), %rdx	#, D.10246
	movq	-32(%rbp), %rax	# loop, tmp117
	movq	64(%rax), %rax	# loop_5(D)->nodes, D.10247
	movq	%rdx, %rsi	# D.10246,
	movq	%rax, %rdi	# D.10247,
	call	flow_loop_exit_edges_find	#
	movq	-32(%rbp), %rdx	# loop, tmp118
	movl	%eax, 104(%rdx)	# D.10244, loop_5(D)->num_exits
.L145:
	.loc 1 596 0
	movl	-36(%rbp), %eax	# flags, tmp119
	andl	$16, %eax	#, D.10244
	testl	%eax, %eax	# D.10244
	je	.L146	#,
.LBB22:
	.loc 1 602 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.22
	movl	%eax, %edi	# n_basic_blocks.23,
	call	sbitmap_alloc	#
	movq	-32(%rbp), %rdx	# loop, tmp120
	movq	%rax, 112(%rdx)	# D.10247, loop_5(D)->exits_doms
	.loc 1 603 0
	movq	-32(%rbp), %rax	# loop, tmp121
	movq	64(%rax), %rdx	# loop_5(D)->nodes, D.10247
	movq	-32(%rbp), %rax	# loop, tmp122
	movq	112(%rax), %rax	# loop_5(D)->exits_doms, D.10247
	movq	%rdx, %rsi	# D.10247,
	movq	%rax, %rdi	# D.10247,
	call	sbitmap_copy	#
	.loc 1 604 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L147	#
.L148:
	.loc 1 606 0 discriminator 2
	movq	-24(%rbp), %rax	# loops, tmp123
	movq	24(%rax), %rdx	# loops_25(D)->cfg.dom, D.10249
	movq	-32(%rbp), %rax	# loop, tmp124
	movq	96(%rax), %rax	# loop_5(D)->exit_edges, D.10245
	movl	-4(%rbp), %ecx	# j, tmp125
	movslq	%ecx, %rcx	# tmp125, D.10250
	salq	$3, %rcx	#, D.10250
	addq	%rcx, %rax	# D.10250, D.10245
	movq	(%rax), %rax	# *_30, D.10251
	movq	16(%rax), %rax	# _31->src, D.10248
	movl	88(%rax), %eax	# _32->index, D.10244
	cltq
	salq	$3, %rax	#, D.10250
	addq	%rdx, %rax	# D.10249, D.10249
	.loc 1 605 0 discriminator 2
	movq	(%rax), %rdx	# *_36, D.10247
	movq	-32(%rbp), %rax	# loop, tmp126
	movq	112(%rax), %rcx	# loop_5(D)->exits_doms, D.10247
	movq	-32(%rbp), %rax	# loop, tmp127
	movq	112(%rax), %rax	# loop_5(D)->exits_doms, D.10247
	movq	%rcx, %rsi	# D.10247,
	movq	%rax, %rdi	# D.10247,
	call	sbitmap_a_and_b	#
	.loc 1 604 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L147:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# loop, tmp128
	movl	104(%rax), %eax	# loop_5(D)->num_exits, D.10244
	cmpl	-4(%rbp), %eax	# j, D.10244
	jg	.L148	#,
	.loc 1 610 0 is_stmt 1
	movq	-32(%rbp), %rax	# loop, tmp129
	movq	112(%rax), %rax	# loop_5(D)->exits_doms, D.10247
	movq	-32(%rbp), %rdx	# loop, tmp130
	movq	8(%rdx), %rdx	# loop_5(D)->header, D.10248
	movl	88(%rdx), %edx	# _42->index, D.10244
	shrl	$6, %edx	#, D.10252
	movl	%edx, %edx	# D.10252, tmp131
	addq	$2, %rdx	#, tmp132
	movq	(%rax,%rdx,8), %rdx	# _41->elms, D.10250
	movq	-32(%rbp), %rax	# loop, tmp133
	movq	8(%rax), %rax	# loop_5(D)->header, D.10248
	movl	88(%rax), %eax	# _47->index, D.10244
	andl	$63, %eax	#, D.10244
	movl	%eax, %ecx	# D.10244, tmp141
	shrq	%cl, %rdx	# tmp141, D.10250
	movq	%rdx, %rax	# D.10250, D.10250
	andl	$1, %eax	#, D.10250
	testq	%rax, %rax	# D.10250
	jne	.L146	#,
	.loc 1 611 0
	movl	$__FUNCTION__.9399, %edx	#,
	movl	$611, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L146:
.LBE22:
	.loc 1 614 0
	movl	-36(%rbp), %eax	# flags, tmp134
	andl	$2, %eax	#, D.10244
	testl	%eax, %eax	# D.10244
	je	.L149	#,
	.loc 1 618 0
	movq	-24(%rbp), %rax	# loops, tmp135
	movq	24(%rax), %rdx	# loops_25(D)->cfg.dom, D.10249
	movq	-32(%rbp), %rax	# loop, tmp136
	movq	8(%rax), %rax	# loop_5(D)->header, D.10248
	movq	%rdx, %rsi	# D.10249,
	movq	%rax, %rdi	# D.10248,
	call	flow_loop_pre_header_find	#
	movq	-32(%rbp), %rdx	# loop, tmp137
	movq	%rax, 24(%rdx)	# D.10248, loop_5(D)->pre_header
	.loc 1 622 0
	movq	-32(%rbp), %rax	# loop, tmp138
	movq	%rax, %rdi	# tmp138,
	call	flow_loop_pre_header_scan	#
.L149:
	.loc 1 625 0
	movl	$1, %eax	#, D.10244
	.loc 1 626 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	flow_loop_scan, .-flow_loop_scan
	.globl	flow_loops_find
	.type	flow_loops_find, @function
flow_loops_find:
.LFB17:
	.loc 1 637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# loops, loops
	movl	%esi, -140(%rbp)	# flags, flags
	.loc 1 650 0
	movl	-140(%rbp), %eax	# flags, tmp191
	andl	$1, %eax	#, D.10253
	testl	%eax, %eax	# D.10253
	jne	.L152	#,
	.loc 1 651 0
	movl	$__FUNCTION__.9412, %edx	#,
	movl	$651, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L152:
	.loc 1 653 0
	movq	-136(%rbp), %rax	# loops, tmp192
	movl	$56, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp192,
	call	memset	#
	.loc 1 657 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.24
	testl	%eax, %eax	# n_basic_blocks.24
	jne	.L153	#,
	.loc 1 658 0
	movl	$0, %eax	#, D.10253
	jmp	.L154	#
.L153:
	.loc 1 660 0
	movq	$0, -96(%rbp)	#, dfs_order
	.loc 1 661 0
	movq	$0, -88(%rbp)	#, rc_order
	.loc 1 664 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.25
	movl	%eax, %edx	# n_basic_blocks.25, n_basic_blocks.26
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.27
	movl	%edx, %esi	# n_basic_blocks.26,
	movl	%eax, %edi	# n_basic_blocks.28,
	call	sbitmap_vector_alloc	#
	movq	%rax, -80(%rbp)	# tmp193, dom
	.loc 1 665 0
	movq	-80(%rbp), %rax	# dom, tmp194
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp194,
	movl	$0, %edi	#,
	call	calculate_dominance_info	#
	.loc 1 669 0
	movl	$0, -108(%rbp)	#, num_loops
	.loc 1 670 0
	movl	$0, -112(%rbp)	#, b
	jmp	.L155	#
.L160:
.LBB23:
	.loc 1 674 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.29
	movl	-112(%rbp), %edx	# b, tmp196
	movslq	%edx, %rdx	# tmp196, tmp195
	addq	$4, %rdx	#, tmp197
	movq	(%rax,%rdx,8), %rax	# basic_block_info.29_30->data.bb, tmp198
	movq	%rax, -72(%rbp)	# tmp198, header
	.loc 1 675 0
	movq	-72(%rbp), %rax	# header, tmp199
	movl	$0, 92(%rax)	#, header_31->loop_depth
	.loc 1 677 0
	movq	-72(%rbp), %rax	# header, tmp200
	movq	32(%rax), %rax	# header_31->pred, tmp201
	movq	%rax, -104(%rbp)	# tmp201, e
	jmp	.L156	#
.L159:
.LBB24:
	.loc 1 679 0
	movq	-104(%rbp), %rax	# e, tmp202
	movq	16(%rax), %rax	# e_12->src, tmp203
	movq	%rax, -64(%rbp)	# tmp203, latch
	.loc 1 687 0
	movq	-72(%rbp), %rax	# header, tmp204
	movl	88(%rax), %eax	# header_31->index, D.10253
	cmpl	-112(%rbp), %eax	# b, D.10253
	je	.L157	#,
	.loc 1 688 0
	movl	$__FUNCTION__.9412, %edx	#,
	movl	$688, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L157:
	.loc 1 690 0
	cmpq	$entry_exit_blocks, -64(%rbp)	#, latch
	je	.L158	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# latch, tmp205
	movl	88(%rax), %eax	# latch_33->index, D.10253
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10254
	movq	-80(%rbp), %rax	# dom, tmp206
	addq	%rdx, %rax	# D.10254, D.10255
	movq	(%rax), %rax	# *_38, D.10256
	movl	-112(%rbp), %edx	# b, b.30
	shrl	$6, %edx	#, D.10257
	movl	%edx, %edx	# D.10257, tmp207
	addq	$2, %rdx	#, tmp208
	movq	(%rax,%rdx,8), %rdx	# _39->elms, D.10254
	movl	-112(%rbp), %eax	# b, tmp209
	andl	$63, %eax	#, D.10253
	movl	%eax, %ecx	# D.10253, tmp333
	shrq	%cl, %rdx	# tmp333, D.10254
	movq	%rdx, %rax	# D.10254, D.10254
	andl	$1, %eax	#, D.10254
	testq	%rax, %rax	# D.10254
	je	.L158	#,
	.loc 1 691 0 is_stmt 1
	addl	$1, -108(%rbp)	#, num_loops
.L158:
.LBE24:
	.loc 1 677 0
	movq	-104(%rbp), %rax	# e, tmp210
	movq	(%rax), %rax	# e_12->pred_next, tmp211
	movq	%rax, -104(%rbp)	# tmp211, e
.L156:
	.loc 1 677 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L159	#,
.LBE23:
	.loc 1 670 0 is_stmt 1
	addl	$1, -112(%rbp)	#, b
.L155:
	.loc 1 670 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.31
	cmpl	%eax, -112(%rbp)	# n_basic_blocks.31, b
	jl	.L160	#,
	.loc 1 695 0 is_stmt 1
	cmpl	$0, -108(%rbp)	#, num_loops
	je	.L161	#,
	.loc 1 699 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.32
	cltq
	salq	$2, %rax	#, D.10254
	movq	%rax, %rdi	# D.10254,
	call	xmalloc	#
	movq	%rax, -96(%rbp)	# tmp212, dfs_order
	.loc 1 700 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.33
	cltq
	salq	$2, %rax	#, D.10254
	movq	%rax, %rdi	# D.10254,
	call	xmalloc	#
	movq	%rax, -88(%rbp)	# tmp213, rc_order
	.loc 1 701 0
	movq	-88(%rbp), %rdx	# rc_order, tmp214
	movq	-96(%rbp), %rax	# dfs_order, tmp215
	movq	%rdx, %rsi	# tmp214,
	movq	%rax, %rdi	# tmp215,
	call	flow_depth_first_order_compute	#
	.loc 1 704 0
	movq	-136(%rbp), %rax	# loops, tmp216
	movq	-80(%rbp), %rdx	# dom, tmp217
	movq	%rdx, 24(%rax)	# tmp217, loops_17(D)->cfg.dom
	.loc 1 705 0
	movq	-136(%rbp), %rax	# loops, tmp218
	movq	-96(%rbp), %rdx	# dfs_order, tmp219
	movq	%rdx, 32(%rax)	# tmp219, loops_17(D)->cfg.dfs_order
	.loc 1 706 0
	movq	-136(%rbp), %rax	# loops, tmp220
	movq	-88(%rbp), %rdx	# rc_order, tmp221
	movq	%rdx, 40(%rax)	# tmp221, loops_17(D)->cfg.rc_order
	.loc 1 710 0
	movl	-108(%rbp), %eax	# num_loops, tmp222
	cltq
	movl	$248, %esi	#,
	movq	%rax, %rdi	# D.10254,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp223, D.10258
	movq	-136(%rbp), %rax	# loops, tmp224
	movq	%rdx, 8(%rax)	# D.10258, loops_17(D)->array
	.loc 1 712 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.34
	movl	%eax, %edi	# n_basic_blocks.35,
	call	sbitmap_alloc	#
	movq	%rax, -56(%rbp)	# tmp225, headers
	.loc 1 713 0
	movq	-56(%rbp), %rax	# headers, tmp226
	movq	%rax, %rdi	# tmp226,
	call	sbitmap_zero	#
	.loc 1 715 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.36
	movl	%eax, %edi	# n_basic_blocks.37,
	call	sbitmap_alloc	#
	movq	-136(%rbp), %rdx	# loops, tmp227
	movq	%rax, 48(%rdx)	# D.10256, loops_17(D)->shared_headers
	.loc 1 716 0
	movq	-136(%rbp), %rax	# loops, tmp228
	movq	48(%rax), %rax	# loops_17(D)->shared_headers, D.10256
	movq	%rax, %rdi	# D.10256,
	call	sbitmap_zero	#
	.loc 1 720 0
	movl	$0, -108(%rbp)	#, num_loops
	.loc 1 721 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.38
	subl	$1, %eax	#, tmp229
	movl	%eax, -112(%rbp)	# tmp229, b
	jmp	.L162	#
.L166:
.LBB25:
	.loc 1 727 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.39
	movl	-112(%rbp), %edx	# b, tmp230
	movslq	%edx, %rdx	# tmp230, D.10254
	leaq	0(,%rdx,4), %rcx	#, D.10254
	movq	-88(%rbp), %rdx	# rc_order, tmp231
	addq	%rcx, %rdx	# D.10254, D.10259
	movl	(%rdx), %edx	# *_72, D.10253
	movslq	%edx, %rdx	# D.10253, tmp232
	addq	$4, %rdx	#, tmp233
	movq	(%rax,%rdx,8), %rax	# basic_block_info.39_69->data.bb, tmp234
	movq	%rax, -48(%rbp)	# tmp234, latch
	.loc 1 730 0
	movq	-48(%rbp), %rax	# latch, tmp235
	movq	40(%rax), %rax	# latch_74->succ, tmp236
	movq	%rax, -104(%rbp)	# tmp236, e
	jmp	.L163	#
.L165:
.LBB26:
	.loc 1 732 0
	movq	-104(%rbp), %rax	# e, tmp237
	movq	24(%rax), %rax	# e_13->dest, tmp238
	movq	%rax, -40(%rbp)	# tmp238, header
	.loc 1 740 0
	cmpq	$entry_exit_blocks+112, -40(%rbp)	#, header
	je	.L164	#,
	.loc 1 741 0
	movq	-48(%rbp), %rax	# latch, tmp239
	movl	88(%rax), %eax	# latch_74->index, D.10253
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10254
	movq	-80(%rbp), %rax	# dom, tmp240
	addq	%rdx, %rax	# D.10254, D.10255
	movq	(%rax), %rax	# *_80, D.10256
	movq	-40(%rbp), %rdx	# header, tmp241
	movl	88(%rdx), %edx	# header_76->index, D.10253
	shrl	$6, %edx	#, D.10257
	movl	%edx, %edx	# D.10257, tmp242
	addq	$2, %rdx	#, tmp243
	movq	(%rax,%rdx,8), %rdx	# _81->elms, D.10254
	movq	-40(%rbp), %rax	# header, tmp244
	movl	88(%rax), %eax	# header_76->index, D.10253
	andl	$63, %eax	#, D.10253
	movl	%eax, %ecx	# D.10253, tmp335
	shrq	%cl, %rdx	# tmp335, D.10254
	movq	%rdx, %rax	# D.10254, D.10254
	andl	$1, %eax	#, D.10254
	testq	%rax, %rax	# D.10254
	je	.L164	#,
.LBB27:
	.loc 1 745 0
	movq	-136(%rbp), %rax	# loops, tmp245
	movq	8(%rax), %rdx	# loops_17(D)->array, D.10260
	movl	-108(%rbp), %eax	# num_loops, tmp246
	cltq
	salq	$3, %rax	#, tmp248
	movq	%rax, %rcx	# tmp247, tmp249
	salq	$5, %rcx	#, tmp249
	subq	%rax, %rcx	# tmp247, D.10254
	movq	%rcx, %rax	# D.10254, D.10254
	addq	%rdx, %rax	# D.10260, tmp250
	movq	%rax, -32(%rbp)	# tmp250, loop
	.loc 1 747 0
	movq	-32(%rbp), %rax	# loop, tmp251
	movq	-40(%rbp), %rdx	# header, tmp252
	movq	%rdx, 8(%rax)	# tmp252, loop_93->header
	.loc 1 748 0
	movq	-32(%rbp), %rax	# loop, tmp253
	movq	-48(%rbp), %rdx	# latch, tmp254
	movq	%rdx, 16(%rax)	# tmp254, loop_93->latch
	.loc 1 749 0
	movq	-32(%rbp), %rax	# loop, tmp255
	movl	-108(%rbp), %edx	# num_loops, tmp256
	movl	%edx, (%rax)	# tmp256, loop_93->num
	.loc 1 751 0
	addl	$1, -108(%rbp)	#, num_loops
.L164:
.LBE27:
.LBE26:
	.loc 1 730 0
	movq	-104(%rbp), %rax	# e, tmp257
	movq	8(%rax), %rax	# e_13->succ_next, tmp258
	movq	%rax, -104(%rbp)	# tmp258, e
.L163:
	.loc 1 730 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, e
	jne	.L165	#,
.LBE25:
	.loc 1 721 0 is_stmt 1
	subl	$1, -112(%rbp)	#, b
.L162:
	.loc 1 721 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, b
	jns	.L166	#,
	.loc 1 756 0 is_stmt 1
	movl	$0, -116(%rbp)	#, i
	jmp	.L167	#
.L169:
.LBB28:
	.loc 1 758 0
	movq	-136(%rbp), %rax	# loops, tmp259
	movq	8(%rax), %rdx	# loops_17(D)->array, D.10260
	movl	-116(%rbp), %eax	# i, tmp260
	cltq
	salq	$3, %rax	#, tmp262
	movq	%rax, %rcx	# tmp261, tmp263
	salq	$5, %rcx	#, tmp263
	subq	%rax, %rcx	# tmp261, D.10254
	movq	%rcx, %rax	# D.10254, D.10254
	addq	%rdx, %rax	# D.10260, tmp264
	movq	%rax, -24(%rbp)	# tmp264, loop
	.loc 1 762 0
	movq	-24(%rbp), %rax	# loop, tmp265
	movq	8(%rax), %rax	# loop_101->header, D.10261
	movl	88(%rax), %eax	# _102->index, D.10253
	shrl	$6, %eax	#, D.10257
	movl	%eax, %edx	# D.10257, D.10257
	movq	-56(%rbp), %rax	# headers, tmp266
	movl	%edx, %edx	# D.10257, tmp267
	addq	$2, %rdx	#, tmp268
	movq	(%rax,%rdx,8), %rdx	# headers_61->elms, D.10254
	movq	-24(%rbp), %rax	# loop, tmp269
	movq	8(%rax), %rax	# loop_101->header, D.10261
	movl	88(%rax), %eax	# _107->index, D.10253
	andl	$63, %eax	#, D.10253
	movl	%eax, %ecx	# D.10253, tmp342
	shrq	%cl, %rdx	# tmp342, D.10254
	movq	%rdx, %rax	# D.10254, D.10254
	andl	$1, %eax	#, D.10254
	testq	%rax, %rax	# D.10254
	je	.L168	#,
	.loc 1 763 0
	movq	-136(%rbp), %rax	# loops, tmp270
	movq	48(%rax), %rdx	# loops_17(D)->shared_headers, D.10256
	movq	-24(%rbp), %rax	# loop, tmp271
	movq	8(%rax), %rax	# loop_101->header, D.10261
	movl	88(%rax), %eax	# _113->index, D.10253
	shrl	$6, %eax	#, D.10257
	movq	-136(%rbp), %rcx	# loops, tmp272
	movq	48(%rcx), %rcx	# loops_17(D)->shared_headers, D.10256
	movl	%eax, %esi	# D.10257, tmp273
	addq	$2, %rsi	#, tmp274
	movq	(%rcx,%rsi,8), %rsi	# _117->elms, D.10254
	movq	-24(%rbp), %rcx	# loop, tmp275
	movq	8(%rcx), %rcx	# loop_101->header, D.10261
	movl	88(%rcx), %ecx	# _119->index, D.10253
	andl	$63, %ecx	#, D.10253
	movl	$1, %edi	#, tmp276
	salq	%cl, %rdi	# D.10253, D.10254
	movq	%rdi, %rcx	# D.10254, D.10254
	orq	%rsi, %rcx	# D.10254, D.10254
	movl	%eax, %eax	# D.10257, tmp277
	addq	$2, %rax	#, tmp278
	movq	%rcx, (%rdx,%rax,8)	# D.10254, _112->elms
.L168:
	.loc 1 764 0
	movq	-24(%rbp), %rax	# loop, tmp279
	movq	8(%rax), %rax	# loop_101->header, D.10261
	movl	88(%rax), %eax	# _124->index, D.10253
	shrl	$6, %eax	#, D.10257
	movq	-56(%rbp), %rdx	# headers, tmp280
	movl	%eax, %ecx	# D.10257, tmp281
	addq	$2, %rcx	#, tmp282
	movq	(%rdx,%rcx,8), %rsi	# headers_61->elms, D.10254
	movq	-24(%rbp), %rdx	# loop, tmp283
	movq	8(%rdx), %rdx	# loop_101->header, D.10261
	movl	88(%rdx), %edx	# _129->index, D.10253
	andl	$63, %edx	#, D.10253
	movl	$1, %edi	#, tmp284
	movl	%edx, %ecx	# D.10253, tmp345
	salq	%cl, %rdi	# tmp345, D.10254
	movq	%rdi, %rdx	# D.10254, D.10254
	orq	%rdx, %rsi	# D.10254, D.10254
	movq	%rsi, %rcx	# D.10254, D.10254
	movq	-56(%rbp), %rdx	# headers, tmp285
	movl	%eax, %eax	# D.10257, tmp286
	addq	$2, %rax	#, tmp287
	movq	%rcx, (%rdx,%rax,8)	# D.10254, headers_61->elms
	.loc 1 767 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.40
	movl	%eax, %edi	# n_basic_blocks.41,
	call	sbitmap_alloc	#
	movq	-24(%rbp), %rdx	# loop, tmp288
	movq	%rax, 64(%rdx)	# D.10256, loop_101->nodes
	.loc 1 769 0
	movq	-24(%rbp), %rax	# loop, tmp289
	movq	64(%rax), %rdx	# loop_101->nodes, D.10256
	movq	-24(%rbp), %rax	# loop, tmp290
	movq	16(%rax), %rcx	# loop_101->latch, D.10261
	movq	-24(%rbp), %rax	# loop, tmp291
	movq	8(%rax), %rax	# loop_101->header, D.10261
	movq	%rcx, %rsi	# D.10261,
	movq	%rax, %rdi	# D.10261,
	call	flow_loop_nodes_find	#
	movq	-24(%rbp), %rdx	# loop, tmp292
	movl	%eax, 72(%rdx)	# D.10253, loop_101->num_nodes
	.loc 1 776 0
	movq	basic_block_info(%rip), %rbx	# basic_block_info, basic_block_info.42
	movq	-24(%rbp), %rax	# loop, tmp293
	movq	64(%rax), %rax	# loop_101->nodes, D.10256
	movq	%rax, %rdi	# D.10256,
	call	sbitmap_first_set_bit	#
	cltq
	addq	$4, %rax	#, tmp295
	movq	(%rbx,%rax,8), %rdx	# basic_block_info.42_141->data.bb, D.10261
	movq	-24(%rbp), %rax	# loop, tmp296
	movq	%rdx, 48(%rax)	# D.10261, loop_101->first
	.loc 1 778 0
	movq	basic_block_info(%rip), %rbx	# basic_block_info, basic_block_info.43
	movq	-24(%rbp), %rax	# loop, tmp297
	movq	64(%rax), %rax	# loop_101->nodes, D.10256
	movq	%rax, %rdi	# D.10256,
	call	sbitmap_last_set_bit	#
	cltq
	addq	$4, %rax	#, tmp299
	movq	(%rbx,%rax,8), %rdx	# basic_block_info.43_145->data.bb, D.10261
	movq	-24(%rbp), %rax	# loop, tmp300
	movq	%rdx, 56(%rax)	# D.10261, loop_101->last
	.loc 1 780 0
	movl	-140(%rbp), %edx	# flags, tmp301
	movq	-24(%rbp), %rcx	# loop, tmp302
	movq	-136(%rbp), %rax	# loops, tmp303
	movq	%rcx, %rsi	# tmp302,
	movq	%rax, %rdi	# tmp303,
	call	flow_loop_scan	#
.LBE28:
	.loc 1 756 0
	addl	$1, -116(%rbp)	#, i
.L167:
	.loc 1 756 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# i, tmp304
	cmpl	-108(%rbp), %eax	# num_loops, tmp304
	jl	.L169	#,
	.loc 1 787 0 is_stmt 1
	movl	$0, -116(%rbp)	#, i
	jmp	.L170	#
.L172:
	.loc 1 788 0
	movq	-136(%rbp), %rax	# loops, tmp305
	movq	48(%rax), %rdx	# loops_17(D)->shared_headers, D.10256
	movq	-136(%rbp), %rax	# loops, tmp306
	movq	8(%rax), %rcx	# loops_17(D)->array, D.10260
	movl	-116(%rbp), %eax	# i, tmp307
	cltq
	salq	$3, %rax	#, tmp309
	movq	%rax, %rsi	# tmp308, tmp310
	salq	$5, %rsi	#, tmp310
	subq	%rax, %rsi	# tmp308, D.10254
	movq	%rsi, %rax	# D.10254, D.10254
	addq	%rcx, %rax	# D.10260, D.10260
	movq	8(%rax), %rax	# _155->header, D.10261
	movl	88(%rax), %eax	# _156->index, D.10253
	shrl	$6, %eax	#, D.10257
	movl	%eax, %eax	# D.10257, tmp311
	addq	$2, %rax	#, tmp312
	movq	(%rdx,%rax,8), %rdx	# _151->elms, D.10254
	movq	-136(%rbp), %rax	# loops, tmp313
	movq	8(%rax), %rcx	# loops_17(D)->array, D.10260
	movl	-116(%rbp), %eax	# i, tmp314
	cltq
	salq	$3, %rax	#, tmp316
	movq	%rax, %rsi	# tmp315, tmp317
	salq	$5, %rsi	#, tmp317
	subq	%rax, %rsi	# tmp315, D.10254
	movq	%rsi, %rax	# D.10254, D.10254
	addq	%rcx, %rax	# D.10260, D.10260
	movq	8(%rax), %rax	# _164->header, D.10261
	movl	88(%rax), %eax	# _165->index, D.10253
	andl	$63, %eax	#, D.10253
	movl	%eax, %ecx	# D.10253, tmp352
	shrq	%cl, %rdx	# tmp352, D.10254
	movq	%rdx, %rax	# D.10254, D.10254
	andl	$1, %eax	#, D.10254
	testq	%rax, %rax	# D.10254
	je	.L171	#,
	.loc 1 789 0
	movq	-136(%rbp), %rax	# loops, tmp318
	movq	8(%rax), %rdx	# loops_17(D)->array, D.10260
	movl	-116(%rbp), %eax	# i, tmp319
	cltq
	salq	$3, %rax	#, tmp321
	movq	%rax, %rcx	# tmp320, tmp322
	salq	$5, %rcx	#, tmp322
	subq	%rax, %rcx	# tmp320, D.10254
	movq	%rcx, %rax	# D.10254, D.10254
	addq	%rdx, %rax	# D.10260, D.10260
	movl	$1, 152(%rax)	#, _173->shared
.L171:
	.loc 1 787 0
	addl	$1, -116(%rbp)	#, i
.L170:
	.loc 1 787 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# i, tmp323
	cmpl	-108(%rbp), %eax	# num_loops, tmp323
	jl	.L172	#,
	.loc 1 791 0 is_stmt 1
	movq	-56(%rbp), %rax	# headers, tmp324
	movq	%rax, %rdi	# tmp324,
	call	free	#
	jmp	.L173	#
.L161:
	.loc 1 794 0
	movq	-80(%rbp), %rax	# dom, tmp325
	movq	%rax, %rdi	# tmp325,
	call	free	#
.L173:
	.loc 1 796 0
	movq	-136(%rbp), %rax	# loops, tmp326
	movl	-108(%rbp), %edx	# num_loops, tmp327
	movl	%edx, (%rax)	# tmp327, loops_17(D)->num
	.loc 1 799 0
	movq	-136(%rbp), %rax	# loops, tmp328
	movq	%rax, %rdi	# tmp328,
	call	flow_loops_tree_build	#
	.loc 1 803 0
	movq	-136(%rbp), %rax	# loops, tmp329
	movq	%rax, %rdi	# tmp329,
	call	flow_loops_level_compute	#
	movq	-136(%rbp), %rdx	# loops, tmp330
	movl	%eax, 4(%rdx)	# D.10253, loops_17(D)->levels
	.loc 1 805 0
	movl	-108(%rbp), %eax	# num_loops, D.10253
.L154:
	.loc 1 806 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	flow_loops_find, .-flow_loops_find
	.globl	flow_loops_update
	.type	flow_loops_update, @function
flow_loops_update:
.LFB18:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# loops, loops
	movl	%esi, -12(%rbp)	# flags, flags
	.loc 1 818 0
	movq	-8(%rbp), %rax	# loops, tmp62
	movq	8(%rax), %rax	# loops_1(D)->array, D.10262
	testq	%rax, %rax	# D.10262
	je	.L175	#,
	.loc 1 819 0
	movq	-8(%rbp), %rax	# loops, tmp63
	movq	%rax, %rdi	# tmp63,
	call	flow_loops_free	#
.L175:
	.loc 1 821 0
	movl	-12(%rbp), %edx	# flags, tmp64
	movq	-8(%rbp), %rax	# loops, tmp65
	movl	%edx, %esi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	flow_loops_find	#
	.loc 1 822 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	flow_loops_update, .-flow_loops_update
	.globl	flow_loop_outside_edge_p
	.type	flow_loop_outside_edge_p, @function
flow_loop_outside_edge_p:
.LFB19:
	.loc 1 830 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# loop, loop
	movq	%rsi, -16(%rbp)	# e, e
	.loc 1 831 0
	movq	-16(%rbp), %rax	# e, tmp76
	movq	24(%rax), %rdx	# e_2(D)->dest, D.10264
	movq	-8(%rbp), %rax	# loop, tmp77
	movq	8(%rax), %rax	# loop_4(D)->header, D.10264
	cmpq	%rax, %rdx	# D.10264, D.10264
	je	.L178	#,
	.loc 1 832 0
	movl	$__FUNCTION__.9445, %edx	#,
	movl	$832, %esi	#,
	movl	$.LC22, %edi	#,
	call	fancy_abort	#
.L178:
	.loc 1 834 0
	movq	-16(%rbp), %rax	# e, tmp78
	movq	16(%rax), %rax	# e_2(D)->src, D.10264
	.loc 1 835 0
	cmpq	$entry_exit_blocks, %rax	#, D.10264
	je	.L179	#,
	.loc 1 835 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# loop, tmp79
	movq	64(%rax), %rax	# loop_4(D)->nodes, D.10265
	movq	-16(%rbp), %rdx	# e, tmp80
	movq	16(%rdx), %rdx	# e_2(D)->src, D.10264
	movl	88(%rdx), %edx	# _8->index, D.10266
	shrl	$6, %edx	#, D.10267
	movl	%edx, %edx	# D.10267, tmp81
	addq	$2, %rdx	#, tmp82
	movq	(%rax,%rdx,8), %rdx	# _7->elms, D.10268
	movq	-16(%rbp), %rax	# e, tmp83
	movq	16(%rax), %rax	# e_2(D)->src, D.10264
	movl	88(%rax), %eax	# _13->index, D.10266
	andl	$63, %eax	#, D.10266
	movl	%eax, %ecx	# D.10266, tmp86
	shrq	%cl, %rdx	# tmp86, D.10268
	movq	%rdx, %rax	# D.10268, D.10268
	andl	$1, %eax	#, D.10268
	testq	%rax, %rax	# D.10268
	jne	.L180	#,
.L179:
	.loc 1 835 0 discriminator 1
	movl	$1, %eax	#, iftmp.44
	jmp	.L181	#
.L180:
	.loc 1 835 0 discriminator 3
	movl	$0, %eax	#, iftmp.44
.L181:
	.loc 1 836 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	flow_loop_outside_edge_p, .-flow_loop_outside_edge_p
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9257, @object
	.size	__FUNCTION__.9257, 16
__FUNCTION__.9257:
	.string	"flow_loops_free"
	.align 16
	.type	__FUNCTION__.9273, @object
	.size	__FUNCTION__.9273, 27
__FUNCTION__.9273:
	.string	"flow_loop_entry_edges_find"
	.type	__FUNCTION__.9399, @object
	.size	__FUNCTION__.9399, 15
__FUNCTION__.9399:
	.string	"flow_loop_scan"
	.align 16
	.type	__FUNCTION__.9412, @object
	.size	__FUNCTION__.9412, 16
__FUNCTION__.9412:
	.string	"flow_loops_find"
	.align 16
	.type	__FUNCTION__.9445, @object
	.size	__FUNCTION__.9445, 25
__FUNCTION__.9445:
	.string	"flow_loop_outside_edge_p"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "bitmap.h"
	.file 9 "basic-block.h"
	.file 10 "sbitmap.h"
	.file 11 "varray.h"
	.file 12 "machmode.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a25
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF292
	.byte	0x1
	.long	.LASF293
	.long	.LASF294
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
	.long	0x147
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x7cf
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
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x7df
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
	.long	.LASF295
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0xc
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0xd4
	.long	0x162
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF20
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF22
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF25
	.byte	0x5
	.byte	0x8c
	.long	0x150
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x8d
	.long	0x150
	.uleb128 0x3
	.byte	0x8
	.long	0x1a1
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF27
	.uleb128 0x7
	.long	.LASF28
	.byte	0x6
	.byte	0x30
	.long	0x1b3
	.uleb128 0x4
	.long	.LASF29
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x334
	.uleb128 0x8
	.long	.LASF30
	.byte	0x7
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.byte	0xfc
	.long	0x19b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x7
	.byte	0xfd
	.long	0x19b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.byte	0xfe
	.long	0x19b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0x19b
	.byte	0x20
	.uleb128 0xd
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0x19b
	.byte	0x28
	.uleb128 0xd
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0x19b
	.byte	0x30
	.uleb128 0xd
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0x19b
	.byte	0x38
	.uleb128 0xd
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x19b
	.byte	0x40
	.uleb128 0xd
	.long	.LASF39
	.byte	0x7
	.value	0x105
	.long	0x19b
	.byte	0x48
	.uleb128 0xd
	.long	.LASF40
	.byte	0x7
	.value	0x106
	.long	0x19b
	.byte	0x50
	.uleb128 0xd
	.long	.LASF41
	.byte	0x7
	.value	0x107
	.long	0x19b
	.byte	0x58
	.uleb128 0xd
	.long	.LASF42
	.byte	0x7
	.value	0x109
	.long	0x36c
	.byte	0x60
	.uleb128 0xd
	.long	.LASF43
	.byte	0x7
	.value	0x10b
	.long	0x372
	.byte	0x68
	.uleb128 0xd
	.long	.LASF44
	.byte	0x7
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xd
	.long	.LASF45
	.byte	0x7
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xd
	.long	.LASF46
	.byte	0x7
	.value	0x113
	.long	0x185
	.byte	0x78
	.uleb128 0xd
	.long	.LASF47
	.byte	0x7
	.value	0x117
	.long	0x170
	.byte	0x80
	.uleb128 0xd
	.long	.LASF48
	.byte	0x7
	.value	0x118
	.long	0x177
	.byte	0x82
	.uleb128 0xd
	.long	.LASF49
	.byte	0x7
	.value	0x119
	.long	0x378
	.byte	0x83
	.uleb128 0xd
	.long	.LASF50
	.byte	0x7
	.value	0x11d
	.long	0x388
	.byte	0x88
	.uleb128 0xd
	.long	.LASF51
	.byte	0x7
	.value	0x126
	.long	0x190
	.byte	0x90
	.uleb128 0xd
	.long	.LASF52
	.byte	0x7
	.value	0x12f
	.long	0x14e
	.byte	0x98
	.uleb128 0xd
	.long	.LASF53
	.byte	0x7
	.value	0x130
	.long	0x14e
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x7
	.value	0x131
	.long	0x14e
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF55
	.byte	0x7
	.value	0x132
	.long	0x14e
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x7
	.value	0x133
	.long	0x157
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF57
	.byte	0x7
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x7
	.value	0x137
	.long	0x38e
	.byte	0xc4
	.byte	0
	.uleb128 0xe
	.long	.LASF296
	.byte	0x7
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF59
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x36c
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0xa2
	.long	0x36c
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0xa3
	.long	0x372
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x33b
	.uleb128 0x3
	.byte	0x8
	.long	0x1b3
	.uleb128 0xf
	.long	0x1a1
	.long	0x388
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x334
	.uleb128 0xf
	.long	0x1a1
	.long	0x39e
	.uleb128 0x10
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3a4
	.uleb128 0x11
	.long	0x1a1
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF63
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF64
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x12
	.long	.LASF247
	.byte	0x4
	.byte	0xc
	.byte	0x1d
	.long	0x532
	.uleb128 0x13
	.long	.LASF65
	.sleb128 0
	.uleb128 0x13
	.long	.LASF66
	.sleb128 1
	.uleb128 0x13
	.long	.LASF67
	.sleb128 2
	.uleb128 0x13
	.long	.LASF68
	.sleb128 3
	.uleb128 0x13
	.long	.LASF69
	.sleb128 4
	.uleb128 0x13
	.long	.LASF70
	.sleb128 5
	.uleb128 0x13
	.long	.LASF71
	.sleb128 6
	.uleb128 0x13
	.long	.LASF72
	.sleb128 7
	.uleb128 0x13
	.long	.LASF73
	.sleb128 8
	.uleb128 0x13
	.long	.LASF74
	.sleb128 9
	.uleb128 0x13
	.long	.LASF75
	.sleb128 10
	.uleb128 0x13
	.long	.LASF76
	.sleb128 11
	.uleb128 0x13
	.long	.LASF77
	.sleb128 12
	.uleb128 0x13
	.long	.LASF78
	.sleb128 13
	.uleb128 0x13
	.long	.LASF79
	.sleb128 14
	.uleb128 0x13
	.long	.LASF80
	.sleb128 15
	.uleb128 0x13
	.long	.LASF81
	.sleb128 16
	.uleb128 0x13
	.long	.LASF82
	.sleb128 17
	.uleb128 0x13
	.long	.LASF83
	.sleb128 18
	.uleb128 0x13
	.long	.LASF84
	.sleb128 19
	.uleb128 0x13
	.long	.LASF85
	.sleb128 20
	.uleb128 0x13
	.long	.LASF86
	.sleb128 21
	.uleb128 0x13
	.long	.LASF87
	.sleb128 22
	.uleb128 0x13
	.long	.LASF88
	.sleb128 23
	.uleb128 0x13
	.long	.LASF89
	.sleb128 24
	.uleb128 0x13
	.long	.LASF90
	.sleb128 25
	.uleb128 0x13
	.long	.LASF91
	.sleb128 26
	.uleb128 0x13
	.long	.LASF92
	.sleb128 27
	.uleb128 0x13
	.long	.LASF93
	.sleb128 28
	.uleb128 0x13
	.long	.LASF94
	.sleb128 29
	.uleb128 0x13
	.long	.LASF95
	.sleb128 30
	.uleb128 0x13
	.long	.LASF96
	.sleb128 31
	.uleb128 0x13
	.long	.LASF97
	.sleb128 32
	.uleb128 0x13
	.long	.LASF98
	.sleb128 33
	.uleb128 0x13
	.long	.LASF99
	.sleb128 34
	.uleb128 0x13
	.long	.LASF100
	.sleb128 35
	.uleb128 0x13
	.long	.LASF101
	.sleb128 36
	.uleb128 0x13
	.long	.LASF102
	.sleb128 37
	.uleb128 0x13
	.long	.LASF103
	.sleb128 38
	.uleb128 0x13
	.long	.LASF104
	.sleb128 39
	.uleb128 0x13
	.long	.LASF105
	.sleb128 40
	.uleb128 0x13
	.long	.LASF106
	.sleb128 41
	.uleb128 0x13
	.long	.LASF107
	.sleb128 42
	.uleb128 0x13
	.long	.LASF108
	.sleb128 43
	.uleb128 0x13
	.long	.LASF109
	.sleb128 44
	.uleb128 0x13
	.long	.LASF110
	.sleb128 45
	.uleb128 0x13
	.long	.LASF111
	.sleb128 46
	.uleb128 0x13
	.long	.LASF112
	.sleb128 47
	.uleb128 0x13
	.long	.LASF113
	.sleb128 48
	.uleb128 0x13
	.long	.LASF114
	.sleb128 49
	.uleb128 0x13
	.long	.LASF115
	.sleb128 50
	.uleb128 0x13
	.long	.LASF116
	.sleb128 51
	.uleb128 0x13
	.long	.LASF117
	.sleb128 52
	.uleb128 0x13
	.long	.LASF118
	.sleb128 53
	.uleb128 0x13
	.long	.LASF119
	.sleb128 54
	.uleb128 0x13
	.long	.LASF120
	.sleb128 55
	.uleb128 0x13
	.long	.LASF121
	.sleb128 56
	.uleb128 0x13
	.long	.LASF122
	.sleb128 57
	.uleb128 0x13
	.long	.LASF123
	.sleb128 58
	.uleb128 0x13
	.long	.LASF124
	.sleb128 59
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x5b3
	.uleb128 0x5
	.long	.LASF125
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF126
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF127
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF128
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF129
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF130
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF131
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF132
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF133
	.byte	0x2
	.byte	0x56
	.long	0x532
	.uleb128 0x14
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x603
	.uleb128 0x8
	.long	.LASF134
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF135
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF136
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF137
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF138
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF139
	.byte	0x2
	.byte	0x63
	.long	0x5be
	.uleb128 0x15
	.long	.LASF182
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x6a9
	.uleb128 0x16
	.long	.LASF140
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x16
	.long	.LASF141
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x16
	.long	.LASF142
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x16
	.long	.LASF143
	.byte	0x2
	.byte	0x6c
	.long	0x39e
	.uleb128 0x17
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x16
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x16
	.long	.LASF144
	.byte	0x2
	.byte	0x6f
	.long	0x3bd
	.uleb128 0x16
	.long	.LASF145
	.byte	0x2
	.byte	0x70
	.long	0x5b3
	.uleb128 0x16
	.long	.LASF146
	.byte	0x2
	.byte	0x71
	.long	0x6ae
	.uleb128 0x16
	.long	.LASF147
	.byte	0x2
	.byte	0x72
	.long	0x6e5
	.uleb128 0x16
	.long	.LASF148
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x17
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x7b8
	.uleb128 0x16
	.long	.LASF149
	.byte	0x2
	.byte	0x75
	.long	0x7be
	.byte	0
	.uleb128 0x18
	.long	.LASF190
	.uleb128 0x3
	.byte	0x8
	.long	0x6a9
	.uleb128 0x4
	.long	.LASF150
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.long	0x6e5
	.uleb128 0x8
	.long	.LASF151
	.byte	0x8
	.byte	0x35
	.long	0x84d
	.byte	0
	.uleb128 0x8
	.long	.LASF152
	.byte	0x8
	.byte	0x36
	.long	0x84d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF153
	.byte	0x8
	.byte	0x37
	.long	0x147
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6b4
	.uleb128 0x4
	.long	.LASF154
	.byte	0x70
	.byte	0x9
	.byte	0xae
	.long	0x7b8
	.uleb128 0x8
	.long	.LASF155
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
	.long	.LASF156
	.byte	0x9
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF157
	.byte	0x9
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF158
	.byte	0x9
	.byte	0xb7
	.long	0xbf7
	.byte	0x20
	.uleb128 0x8
	.long	.LASF159
	.byte	0x9
	.byte	0xb7
	.long	0xbf7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF160
	.byte	0x9
	.byte	0xbc
	.long	0xb62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF161
	.byte	0x9
	.byte	0xc0
	.long	0xb62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF162
	.byte	0x9
	.byte	0xc6
	.long	0xb62
	.byte	0x40
	.uleb128 0x8
	.long	.LASF163
	.byte	0x9
	.byte	0xc8
	.long	0xb62
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0xcb
	.long	0x14e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF164
	.byte	0x9
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF165
	.byte	0x9
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF166
	.byte	0x9
	.byte	0xd4
	.long	0xb6d
	.byte	0x60
	.uleb128 0x8
	.long	.LASF167
	.byte	0x9
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF168
	.byte	0x9
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x6eb
	.uleb128 0x3
	.byte	0x8
	.long	0x603
	.uleb128 0x7
	.long	.LASF169
	.byte	0x2
	.byte	0x76
	.long	0x60e
	.uleb128 0xf
	.long	0x7c4
	.long	0x7df
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0x7ef
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF170
	.byte	0x28
	.byte	0x8
	.byte	0x2b
	.long	0x82c
	.uleb128 0x8
	.long	.LASF171
	.byte	0x8
	.byte	0x2d
	.long	0x82c
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0x8
	.byte	0x2e
	.long	0x82c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF153
	.byte	0x8
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF173
	.byte	0x8
	.byte	0x30
	.long	0x832
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x7ef
	.uleb128 0xf
	.long	0x162
	.long	0x842
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF174
	.byte	0x8
	.byte	0x31
	.long	0x7ef
	.uleb128 0x3
	.byte	0x8
	.long	0x842
	.uleb128 0x7
	.long	.LASF175
	.byte	0x8
	.byte	0x39
	.long	0x6e5
	.uleb128 0x4
	.long	.LASF176
	.byte	0x18
	.byte	0xa
	.byte	0x1f
	.long	0x89b
	.uleb128 0x8
	.long	.LASF177
	.byte	0xa
	.byte	0x21
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF137
	.byte	0xa
	.byte	0x22
	.long	0x147
	.byte	0x4
	.uleb128 0x8
	.long	.LASF178
	.byte	0xa
	.byte	0x23
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0xa
	.byte	0x24
	.long	0x89b
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x162
	.long	0x8ab
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF180
	.byte	0xa
	.byte	0x25
	.long	0x8b6
	.uleb128 0x3
	.byte	0x8
	.long	0x85e
	.uleb128 0x3
	.byte	0x8
	.long	0x162
	.uleb128 0x4
	.long	.LASF181
	.byte	0x10
	.byte	0xb
	.byte	0x24
	.long	0x8e7
	.uleb128 0x6
	.string	"rtx"
	.byte	0xb
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xb
	.byte	0x36
	.long	0x147
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.long	.LASF183
	.byte	0x10
	.byte	0xb
	.byte	0x3a
	.long	0x9cc
	.uleb128 0x17
	.string	"c"
	.byte	0xb
	.byte	0x3b
	.long	0x378
	.uleb128 0x17
	.string	"uc"
	.byte	0xb
	.byte	0x3c
	.long	0x9cc
	.uleb128 0x17
	.string	"s"
	.byte	0xb
	.byte	0x3d
	.long	0x9dc
	.uleb128 0x17
	.string	"us"
	.byte	0xb
	.byte	0x3e
	.long	0x9ec
	.uleb128 0x17
	.string	"i"
	.byte	0xb
	.byte	0x3f
	.long	0x9fc
	.uleb128 0x17
	.string	"u"
	.byte	0xb
	.byte	0x40
	.long	0xa0c
	.uleb128 0x17
	.string	"l"
	.byte	0xb
	.byte	0x41
	.long	0xa1c
	.uleb128 0x17
	.string	"ul"
	.byte	0xb
	.byte	0x42
	.long	0x89b
	.uleb128 0x16
	.long	.LASF184
	.byte	0xb
	.byte	0x43
	.long	0xa1c
	.uleb128 0x16
	.long	.LASF185
	.byte	0xb
	.byte	0x44
	.long	0x89b
	.uleb128 0x16
	.long	.LASF186
	.byte	0xb
	.byte	0x45
	.long	0xa2c
	.uleb128 0x16
	.long	.LASF187
	.byte	0xb
	.byte	0x46
	.long	0xa3c
	.uleb128 0x17
	.string	"rtx"
	.byte	0xb
	.byte	0x47
	.long	0xa4c
	.uleb128 0x16
	.long	.LASF10
	.byte	0xb
	.byte	0x48
	.long	0xa5c
	.uleb128 0x16
	.long	.LASF15
	.byte	0xb
	.byte	0x49
	.long	0xa6c
	.uleb128 0x16
	.long	.LASF175
	.byte	0xb
	.byte	0x4a
	.long	0xa7c
	.uleb128 0x16
	.long	.LASF188
	.byte	0xb
	.byte	0x4b
	.long	0xa8c
	.uleb128 0x17
	.string	"reg"
	.byte	0xb
	.byte	0x4c
	.long	0xaa7
	.uleb128 0x16
	.long	.LASF189
	.byte	0xb
	.byte	0x4d
	.long	0xac2
	.uleb128 0x17
	.string	"bb"
	.byte	0xb
	.byte	0x4e
	.long	0xad2
	.uleb128 0x17
	.string	"te"
	.byte	0xb
	.byte	0x4f
	.long	0xae2
	.byte	0
	.uleb128 0xf
	.long	0x169
	.long	0x9dc
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x17e
	.long	0x9ec
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x170
	.long	0x9fc
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x139
	.long	0xa0c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x147
	.long	0xa1c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x150
	.long	0xa2c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x14e
	.long	0xa3c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x19b
	.long	0xa4c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0xa5c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0xa6c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0xa7c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x6e5
	.long	0xa8c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xa9c
	.long	0xa9c
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xaa2
	.uleb128 0x18
	.long	.LASF191
	.uleb128 0xf
	.long	0xab7
	.long	0xab7
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xabd
	.uleb128 0x18
	.long	.LASF192
	.uleb128 0xf
	.long	0x8c2
	.long	0xad2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x7b8
	.long	0xae2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xaf2
	.long	0xaf2
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xaf8
	.uleb128 0x18
	.long	.LASF193
	.uleb128 0x7
	.long	.LASF194
	.byte	0xb
	.byte	0x50
	.long	0x8e7
	.uleb128 0x4
	.long	.LASF195
	.byte	0x30
	.byte	0xb
	.byte	0x53
	.long	0xb51
	.uleb128 0x8
	.long	.LASF196
	.byte	0xb
	.byte	0x54
	.long	0x157
	.byte	0
	.uleb128 0x8
	.long	.LASF197
	.byte	0xb
	.byte	0x55
	.long	0x157
	.byte	0x8
	.uleb128 0x8
	.long	.LASF198
	.byte	0xb
	.byte	0x57
	.long	0x157
	.byte	0x10
	.uleb128 0x8
	.long	.LASF199
	.byte	0xb
	.byte	0x58
	.long	0x39e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF200
	.byte	0xb
	.byte	0x59
	.long	0xafd
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF201
	.byte	0xb
	.byte	0x5a
	.long	0xb5c
	.uleb128 0x3
	.byte	0x8
	.long	0xb08
	.uleb128 0x7
	.long	.LASF202
	.byte	0x9
	.byte	0x21
	.long	0x853
	.uleb128 0x7
	.long	.LASF203
	.byte	0x9
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF204
	.byte	0x40
	.byte	0x9
	.byte	0x77
	.long	0xbf1
	.uleb128 0x8
	.long	.LASF205
	.byte	0x9
	.byte	0x79
	.long	0xbf1
	.byte	0
	.uleb128 0x8
	.long	.LASF206
	.byte	0x9
	.byte	0x79
	.long	0xbf1
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x9
	.byte	0x7c
	.long	0x7b8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF207
	.byte	0x9
	.byte	0x7c
	.long	0x7b8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF208
	.byte	0x9
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x9
	.byte	0x82
	.long	0x14e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF168
	.byte	0x9
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF209
	.byte	0x9
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF166
	.byte	0x9
	.byte	0x86
	.long	0xb6d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb78
	.uleb128 0x7
	.long	.LASF210
	.byte	0x9
	.byte	0x88
	.long	0xbf1
	.uleb128 0x7
	.long	.LASF211
	.byte	0x9
	.byte	0xdb
	.long	0x7b8
	.uleb128 0x19
	.long	.LASF212
	.byte	0xf8
	.byte	0x9
	.value	0x148
	.long	0xdc8
	.uleb128 0x1a
	.string	"num"
	.byte	0x9
	.value	0x14b
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF213
	.byte	0x9
	.value	0x14e
	.long	0xc02
	.byte	0x8
	.uleb128 0xd
	.long	.LASF214
	.byte	0x9
	.value	0x151
	.long	0xc02
	.byte	0x10
	.uleb128 0xd
	.long	.LASF215
	.byte	0x9
	.value	0x154
	.long	0xc02
	.byte	0x18
	.uleb128 0xd
	.long	.LASF216
	.byte	0x9
	.value	0x159
	.long	0xdc8
	.byte	0x20
	.uleb128 0xd
	.long	.LASF217
	.byte	0x9
	.value	0x15c
	.long	0x139
	.byte	0x28
	.uleb128 0xd
	.long	.LASF151
	.byte	0x9
	.value	0x160
	.long	0xc02
	.byte	0x30
	.uleb128 0xd
	.long	.LASF218
	.byte	0x9
	.value	0x164
	.long	0xc02
	.byte	0x38
	.uleb128 0xd
	.long	.LASF219
	.byte	0x9
	.value	0x167
	.long	0x8ab
	.byte	0x40
	.uleb128 0xd
	.long	.LASF220
	.byte	0x9
	.value	0x16a
	.long	0x139
	.byte	0x48
	.uleb128 0xd
	.long	.LASF221
	.byte	0x9
	.value	0x16d
	.long	0xdc8
	.byte	0x50
	.uleb128 0xd
	.long	.LASF222
	.byte	0x9
	.value	0x170
	.long	0x139
	.byte	0x58
	.uleb128 0xd
	.long	.LASF223
	.byte	0x9
	.value	0x173
	.long	0xdc8
	.byte	0x60
	.uleb128 0xd
	.long	.LASF224
	.byte	0x9
	.value	0x176
	.long	0x139
	.byte	0x68
	.uleb128 0xd
	.long	.LASF225
	.byte	0x9
	.value	0x179
	.long	0x8ab
	.byte	0x70
	.uleb128 0xd
	.long	.LASF226
	.byte	0x9
	.value	0x17c
	.long	0x139
	.byte	0x78
	.uleb128 0xd
	.long	.LASF227
	.byte	0x9
	.value	0x180
	.long	0x139
	.byte	0x7c
	.uleb128 0xd
	.long	.LASF228
	.byte	0x9
	.value	0x183
	.long	0xdce
	.byte	0x80
	.uleb128 0xd
	.long	.LASF229
	.byte	0x9
	.value	0x186
	.long	0xdce
	.byte	0x88
	.uleb128 0xd
	.long	.LASF171
	.byte	0x9
	.value	0x189
	.long	0xdce
	.byte	0x90
	.uleb128 0xd
	.long	.LASF230
	.byte	0x9
	.value	0x18c
	.long	0x139
	.byte	0x98
	.uleb128 0xd
	.long	.LASF231
	.byte	0x9
	.value	0x18f
	.long	0x139
	.byte	0x9c
	.uleb128 0x1a
	.string	"aux"
	.byte	0x9
	.value	0x192
	.long	0x14e
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF232
	.byte	0x9
	.value	0x198
	.long	0x2d
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF233
	.byte	0x9
	.value	0x19c
	.long	0x2d
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF234
	.byte	0x9
	.value	0x19f
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF235
	.byte	0x9
	.value	0x1a2
	.long	0x2d
	.byte	0xc0
	.uleb128 0x1a
	.string	"end"
	.byte	0x9
	.value	0x1a5
	.long	0x2d
	.byte	0xc8
	.uleb128 0x1a
	.string	"top"
	.byte	0x9
	.value	0x1a9
	.long	0x2d
	.byte	0xd0
	.uleb128 0xd
	.long	.LASF236
	.byte	0x9
	.value	0x1ac
	.long	0x2d
	.byte	0xd8
	.uleb128 0xd
	.long	.LASF237
	.byte	0x9
	.value	0x1af
	.long	0x2d
	.byte	0xe0
	.uleb128 0xd
	.long	.LASF238
	.byte	0x9
	.value	0x1ba
	.long	0x2d
	.byte	0xe8
	.uleb128 0xd
	.long	.LASF239
	.byte	0x9
	.value	0x1be
	.long	0x139
	.byte	0xf0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbf7
	.uleb128 0x3
	.byte	0x8
	.long	0xc0d
	.uleb128 0x1b
	.string	"cfg"
	.byte	0x18
	.byte	0x9
	.value	0x1d3
	.long	0xe09
	.uleb128 0x1a
	.string	"dom"
	.byte	0x9
	.value	0x1d6
	.long	0xe09
	.byte	0
	.uleb128 0xd
	.long	.LASF240
	.byte	0x9
	.value	0x1d9
	.long	0x3b7
	.byte	0x8
	.uleb128 0xd
	.long	.LASF241
	.byte	0x9
	.value	0x1dd
	.long	0x3b7
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8ab
	.uleb128 0x19
	.long	.LASF242
	.byte	0x38
	.byte	0x9
	.value	0x1c3
	.long	0xe6b
	.uleb128 0x1a
	.string	"num"
	.byte	0x9
	.value	0x1c6
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF243
	.byte	0x9
	.value	0x1c9
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF244
	.byte	0x9
	.value	0x1cd
	.long	0xdce
	.byte	0x8
	.uleb128 0xd
	.long	.LASF245
	.byte	0x9
	.value	0x1d0
	.long	0xdce
	.byte	0x10
	.uleb128 0x1a
	.string	"cfg"
	.byte	0x9
	.value	0x1de
	.long	0xdd4
	.byte	0x18
	.uleb128 0xd
	.long	.LASF246
	.byte	0x9
	.value	0x1e1
	.long	0x8ab
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.long	.LASF248
	.byte	0x4
	.byte	0x9
	.value	0x2c1
	.long	0xe85
	.uleb128 0x13
	.long	.LASF249
	.sleb128 0
	.uleb128 0x13
	.long	.LASF250
	.sleb128 1
	.byte	0
	.uleb128 0x1d
	.long	.LASF275
	.byte	0x1
	.byte	0x30
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xeeb
	.uleb128 0x1e
	.long	.LASF242
	.byte	0x1
	.byte	0x31
	.long	0xeeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF251
	.byte	0x1
	.byte	0x32
	.long	0xef6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.long	.LASF159
	.byte	0x1
	.byte	0x3b
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xef1
	.uleb128 0x11
	.long	0xe0f
	.uleb128 0x3
	.byte	0x8
	.long	0x1a8
	.uleb128 0x22
	.long	.LASF261
	.byte	0x1
	.byte	0x5b
	.long	0x139
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xf3a
	.uleb128 0x1e
	.long	.LASF228
	.byte	0x1
	.byte	0x5c
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF212
	.byte	0x1
	.byte	0x5d
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF254
	.byte	0x1
	.byte	0x66
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xf90
	.uleb128 0x1e
	.long	.LASF212
	.byte	0x1
	.byte	0x67
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF251
	.byte	0x1
	.byte	0x68
	.long	0xef6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF252
	.byte	0x1
	.byte	0x69
	.long	0xfb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF253
	.byte	0x1
	.byte	0x6a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf96
	.uleb128 0x11
	.long	0xc0d
	.uleb128 0x24
	.long	0xfb0
	.uleb128 0x25
	.long	0xf90
	.uleb128 0x25
	.long	0xef6
	.uleb128 0x25
	.long	0x139
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf9b
	.uleb128 0x23
	.long	.LASF255
	.byte	0x1
	.byte	0x96
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a4
	.uleb128 0x1e
	.long	.LASF242
	.byte	0x1
	.byte	0x97
	.long	0xeeb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF251
	.byte	0x1
	.byte	0x98
	.long	0xef6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF252
	.byte	0x1
	.byte	0x99
	.long	0xfb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF253
	.byte	0x1
	.byte	0x9a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.byte	0x9c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF256
	.byte	0x1
	.byte	0x9d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.long	.LASF212
	.byte	0x1
	.byte	0xa6
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x21
	.long	.LASF257
	.byte	0x1
	.byte	0xac
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x21
	.long	.LASF258
	.byte	0x1
	.byte	0xb0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.long	.LASF259
	.byte	0x1
	.byte	0xb1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF260
	.byte	0x1
	.byte	0xc9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1121
	.uleb128 0x1e
	.long	.LASF242
	.byte	0x1
	.byte	0xca
	.long	0x1121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF263
	.long	0x1137
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9257
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xce
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x21
	.long	.LASF212
	.byte	0x1
	.byte	0xd6
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe0f
	.uleb128 0xf
	.long	0x1a1
	.long	0x1137
	.uleb128 0x10
	.long	0x140
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.long	0x1127
	.uleb128 0x22
	.long	.LASF262
	.byte	0x1
	.byte	0xf7
	.long	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x11fc
	.uleb128 0x1e
	.long	.LASF213
	.byte	0x1
	.byte	0xf8
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF219
	.byte	0x1
	.byte	0xf9
	.long	0x11fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF221
	.byte	0x1
	.byte	0xfa
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"e"
	.byte	0x1
	.byte	0xfc
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF222
	.byte	0x1
	.byte	0xfd
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.long	.LASF263
	.long	0x1217
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9273
	.uleb128 0x27
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x11da
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x104
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.value	0x112
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x8ab
	.uleb128 0x3
	.byte	0x8
	.long	0xdc8
	.uleb128 0xf
	.long	0x1a1
	.long	0x1217
	.uleb128 0x10
	.long	0x140
	.byte	0x1a
	.byte	0
	.uleb128 0x11
	.long	0x1207
	.uleb128 0x29
	.long	.LASF264
	.byte	0x1
	.value	0x120
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x13fb
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x1
	.value	0x121
	.long	0x11fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2a
	.long	.LASF223
	.byte	0x1
	.value	0x122
	.long	0x1201
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x124
	.long	0xbf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF265
	.byte	0x1
	.value	0x125
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF224
	.byte	0x1
	.value	0x126
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x1345
	.uleb128 0x2b
	.long	.LASF266
	.byte	0x1
	.value	0x12f
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2b
	.long	.LASF267
	.byte	0x1
	.value	0x12f
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF268
	.byte	0x1
	.value	0x12f
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2b
	.long	.LASF269
	.byte	0x1
	.value	0x12f
	.long	0x8bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2b
	.long	.LASF270
	.byte	0x1
	.value	0x12f
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2b
	.long	.LASF271
	.byte	0x1
	.value	0x12f
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x2b
	.long	.LASF207
	.byte	0x1
	.value	0x12f
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x2b
	.long	.LASF266
	.byte	0x1
	.value	0x140
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2b
	.long	.LASF267
	.byte	0x1
	.value	0x140
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2b
	.long	.LASF268
	.byte	0x1
	.value	0x140
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2b
	.long	.LASF269
	.byte	0x1
	.value	0x140
	.long	0x8bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x2b
	.long	.LASF270
	.byte	0x1
	.value	0x140
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x2b
	.long	.LASF271
	.byte	0x1
	.value	0x140
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2b
	.long	.LASF207
	.byte	0x1
	.value	0x140
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF272
	.byte	0x1
	.value	0x152
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c9
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x1
	.value	0x153
	.long	0xc02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF214
	.byte	0x1
	.value	0x154
	.long	0xc02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF219
	.byte	0x1
	.value	0x155
	.long	0x8ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2b
	.long	.LASF273
	.byte	0x1
	.value	0x157
	.long	0x14c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"sp"
	.byte	0x1
	.value	0x158
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2b
	.long	.LASF220
	.byte	0x1
	.value	0x159
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2b
	.long	.LASF265
	.byte	0x1
	.value	0x16f
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x170
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x2b
	.long	.LASF274
	.byte	0x1
	.value	0x175
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc02
	.uleb128 0x2c
	.long	.LASF276
	.byte	0x1
	.value	0x18b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1528
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x1
	.value	0x18c
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"num"
	.byte	0x1
	.value	0x18e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"ebb"
	.byte	0x1
	.value	0x18f
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x190
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF277
	.byte	0x1
	.value	0x1b0
	.long	0xc02
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a6
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x1
	.value	0x1b1
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.string	"dom"
	.byte	0x1
	.value	0x1b2
	.long	0x15a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.long	.LASF215
	.byte	0x1
	.value	0x1b4
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x1b5
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x2b
	.long	.LASF265
	.byte	0x1
	.value	0x1bc
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11fc
	.uleb128 0x2c
	.long	.LASF278
	.byte	0x1
	.value	0x1d5
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x15e9
	.uleb128 0x2a
	.long	.LASF279
	.byte	0x1
	.value	0x1d6
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x1
	.value	0x1d7
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF280
	.byte	0x1
	.value	0x1f0
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1633
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.value	0x1f1
	.long	0x1121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1f3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF256
	.byte	0x1
	.value	0x1f4
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF281
	.byte	0x1
	.value	0x20b
	.long	0x139
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x16b3
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x1
	.value	0x20c
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF226
	.byte	0x1
	.value	0x20d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.long	.LASF229
	.byte	0x1
	.value	0x20f
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x210
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x2b
	.long	.LASF282
	.byte	0x1
	.value	0x21c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF283
	.byte	0x1
	.value	0x22b
	.long	0x139
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1712
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.value	0x22c
	.long	0x1121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.long	.LASF243
	.byte	0x1
	.value	0x22e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x22f
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1
	.value	0x230
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF284
	.byte	0x1
	.value	0x240
	.long	0x139
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1794
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.value	0x241
	.long	0x1121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x1
	.value	0x242
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF168
	.byte	0x1
	.value	0x243
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.long	.LASF263
	.long	0x17a4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9399
	.uleb128 0x20
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x256
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x17a4
	.uleb128 0x10
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.long	0x1794
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0x27a
	.long	0x139
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1949
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.value	0x27b
	.long	0x1121
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF168
	.byte	0x1
	.value	0x27c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x27e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x27f
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.long	.LASF256
	.byte	0x1
	.value	0x280
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"e"
	.byte	0x1
	.value	0x281
	.long	0xbf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.long	.LASF286
	.byte	0x1
	.value	0x282
	.long	0x8ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"dom"
	.byte	0x1
	.value	0x283
	.long	0xe09
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.long	.LASF240
	.byte	0x1
	.value	0x284
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2b
	.long	.LASF241
	.byte	0x1
	.value	0x285
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF263
	.long	0x1949
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9412
	.uleb128 0x27
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x18c0
	.uleb128 0x2b
	.long	.LASF213
	.byte	0x1
	.value	0x2a0
	.long	0xc02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x2b
	.long	.LASF214
	.byte	0x1
	.value	0x2a7
	.long	0xc02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0x1927
	.uleb128 0x2b
	.long	.LASF214
	.byte	0x1
	.value	0x2d3
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x2b
	.long	.LASF213
	.byte	0x1
	.value	0x2dc
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x2e7
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x2f6
	.long	0xdce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x1127
	.uleb128 0x2f
	.long	.LASF287
	.byte	0x1
	.value	0x32c
	.long	0x139
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x198f
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.value	0x32d
	.long	0x1121
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	.LASF168
	.byte	0x1
	.value	0x32e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF288
	.byte	0x1
	.value	0x33b
	.long	0x139
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e1
	.uleb128 0x2a
	.long	.LASF212
	.byte	0x1
	.value	0x33c
	.long	0xf90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"e"
	.byte	0x1
	.value	0x33d
	.long	0xbf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF263
	.long	0x19f1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9445
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x19f1
	.uleb128 0x10
	.long	0x140
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	0x19e1
	.uleb128 0x30
	.long	.LASF289
	.byte	0x9
	.byte	0xe4
	.long	0x139
	.uleb128 0x30
	.long	.LASF290
	.byte	0x9
	.byte	0xec
	.long	0xb51
	.uleb128 0xf
	.long	0x6eb
	.long	0x1a1c
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.long	.LASF291
	.byte	0x9
	.value	0x116
	.long	0x1a0c
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF227:
	.string	"level"
.LASF284:
	.string	"flow_loop_scan"
.LASF242:
	.string	"loops"
.LASF19:
	.string	"size_t"
.LASF84:
	.string	"QCmode"
.LASF288:
	.string	"flow_loop_outside_edge_p"
.LASF16:
	.string	"sizetype"
.LASF235:
	.string	"start"
.LASF241:
	.string	"rc_order"
.LASF146:
	.string	"rt_cselib"
.LASF11:
	.string	"rtx_def"
.LASF260:
	.string	"flow_loops_free"
.LASF78:
	.string	"HFmode"
.LASF41:
	.string	"_IO_save_end"
.LASF98:
	.string	"V2SImode"
.LASF248:
	.string	"cdi_direction"
.LASF116:
	.string	"BLKmode"
.LASF198:
	.string	"element_size"
.LASF268:
	.string	"size_"
.LASF232:
	.string	"vtop"
.LASF34:
	.string	"_IO_write_base"
.LASF222:
	.string	"num_entries"
.LASF286:
	.string	"headers"
.LASF250:
	.string	"CDI_POST_DOMINATORS"
.LASF147:
	.string	"rtbit"
.LASF50:
	.string	"_lock"
.LASF243:
	.string	"levels"
.LASF67:
	.string	"QImode"
.LASF264:
	.string	"flow_loop_exit_edges_find"
.LASF283:
	.string	"flow_loops_level_compute"
.LASF39:
	.string	"_IO_save_base"
.LASF117:
	.string	"CCmode"
.LASF122:
	.string	"CCFPmode"
.LASF220:
	.string	"num_nodes"
.LASF80:
	.string	"SFmode"
.LASF252:
	.string	"loop_dump_aux"
.LASF233:
	.string	"cont"
.LASF272:
	.string	"flow_loop_nodes_find"
.LASF43:
	.string	"_chain"
.LASF126:
	.string	"base_after_vec"
.LASF104:
	.string	"V8QImode"
.LASF47:
	.string	"_cur_column"
.LASF219:
	.string	"nodes"
.LASF129:
	.string	"min_after_base"
.LASF185:
	.string	"uhint"
.LASF187:
	.string	"cptr"
.LASF295:
	.string	"tree_node"
.LASF173:
	.string	"bits"
.LASF206:
	.string	"succ_next"
.LASF145:
	.string	"rt_addr_diff_vec_flags"
.LASF181:
	.string	"const_equiv_data"
.LASF127:
	.string	"min_after_vec"
.LASF102:
	.string	"V4SImode"
.LASF18:
	.string	"long int"
.LASF215:
	.string	"pre_header"
.LASF194:
	.string	"varray_data"
.LASF197:
	.string	"elements_used"
.LASF149:
	.string	"rtmem"
.LASF59:
	.string	"_IO_marker"
.LASF155:
	.string	"head"
.LASF89:
	.string	"TCmode"
.LASF99:
	.string	"V2DImode"
.LASF274:
	.string	"ancestor"
.LASF267:
	.string	"bit_num_"
.LASF238:
	.string	"exit_labels"
.LASF23:
	.string	"signed char"
.LASF177:
	.string	"n_bits"
.LASF29:
	.string	"_IO_FILE"
.LASF14:
	.string	"elem"
.LASF3:
	.string	"call"
.LASF228:
	.string	"outer"
.LASF132:
	.string	"scale"
.LASF21:
	.string	"unsigned char"
.LASF144:
	.string	"rttype"
.LASF263:
	.string	"__FUNCTION__"
.LASF139:
	.string	"mem_attrs"
.LASF81:
	.string	"DFmode"
.LASF88:
	.string	"XCmode"
.LASF213:
	.string	"header"
.LASF71:
	.string	"TImode"
.LASF261:
	.string	"flow_loop_nested_p"
.LASF178:
	.string	"bytes"
.LASF294:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF192:
	.string	"reg_info_def"
.LASF121:
	.string	"CCZmode"
.LASF27:
	.string	"char"
.LASF163:
	.string	"global_live_at_end"
.LASF74:
	.string	"PHImode"
.LASF258:
	.string	"disjoint"
.LASF205:
	.string	"pred_next"
.LASF296:
	.string	"_IO_lock_t"
.LASF103:
	.string	"V4DImode"
.LASF237:
	.string	"sink"
.LASF168:
	.string	"flags"
.LASF31:
	.string	"_IO_read_ptr"
.LASF15:
	.string	"tree"
.LASF253:
	.string	"verbose"
.LASF62:
	.string	"_pos"
.LASF265:
	.string	"node"
.LASF240:
	.string	"dfs_order"
.LASF42:
	.string	"_markers"
.LASF251:
	.string	"file"
.LASF75:
	.string	"PSImode"
.LASF244:
	.string	"array"
.LASF230:
	.string	"shared"
.LASF106:
	.string	"V8SImode"
.LASF159:
	.string	"succ"
.LASF193:
	.string	"elt_list"
.LASF204:
	.string	"edge_def"
.LASF92:
	.string	"CSImode"
.LASF221:
	.string	"entry_edges"
.LASF157:
	.string	"end_tree"
.LASF51:
	.string	"_offset"
.LASF164:
	.string	"index"
.LASF161:
	.string	"cond_local_set"
.LASF188:
	.string	"sched"
.LASF229:
	.string	"inner"
.LASF154:
	.string	"basic_block_def"
.LASF169:
	.string	"rtunion"
.LASF156:
	.string	"head_tree"
.LASF20:
	.string	"long unsigned int"
.LASF203:
	.string	"gcov_type"
.LASF184:
	.string	"hint"
.LASF45:
	.string	"_flags2"
.LASF123:
	.string	"CCFPUmode"
.LASF282:
	.string	"ilevel"
.LASF33:
	.string	"_IO_read_base"
.LASF246:
	.string	"shared_headers"
.LASF209:
	.string	"probability"
.LASF202:
	.string	"regset"
.LASF58:
	.string	"_unused2"
.LASF271:
	.string	"_mask"
.LASF254:
	.string	"flow_loop_dump"
.LASF79:
	.string	"TQFmode"
.LASF124:
	.string	"MAX_MACHINE_MODE"
.LASF142:
	.string	"rtuint"
.LASF65:
	.string	"VOIDmode"
.LASF46:
	.string	"_old_offset"
.LASF148:
	.string	"rttree"
.LASF140:
	.string	"rtwint"
.LASF9:
	.string	"frame_related"
.LASF179:
	.string	"elms"
.LASF130:
	.string	"max_after_base"
.LASF76:
	.string	"PDImode"
.LASF182:
	.string	"rtunion_def"
.LASF189:
	.string	"const_equiv"
.LASF96:
	.string	"V2QImode"
.LASF107:
	.string	"V8DImode"
.LASF134:
	.string	"alias"
.LASF64:
	.string	"long long int"
.LASF85:
	.string	"HCmode"
.LASF160:
	.string	"local_set"
.LASF82:
	.string	"XFmode"
.LASF13:
	.string	"num_elem"
.LASF285:
	.string	"flow_loops_find"
.LASF214:
	.string	"latch"
.LASF109:
	.string	"V2SFmode"
.LASF170:
	.string	"bitmap_element_def"
.LASF4:
	.string	"unchanging"
.LASF93:
	.string	"CDImode"
.LASF266:
	.string	"word_num_"
.LASF36:
	.string	"_IO_write_end"
.LASF245:
	.string	"tree_root"
.LASF226:
	.string	"depth"
.LASF138:
	.string	"align"
.LASF101:
	.string	"V4HImode"
.LASF125:
	.string	"min_align"
.LASF167:
	.string	"frequency"
.LASF234:
	.string	"cont_dominator"
.LASF224:
	.string	"num_exits"
.LASF259:
	.string	"smaller"
.LASF77:
	.string	"QFmode"
.LASF166:
	.string	"count"
.LASF66:
	.string	"BImode"
.LASF37:
	.string	"_IO_buf_base"
.LASF236:
	.string	"scan_start"
.LASF17:
	.string	"unsigned int"
.LASF86:
	.string	"SCmode"
.LASF68:
	.string	"HImode"
.LASF52:
	.string	"__pad1"
.LASF53:
	.string	"__pad2"
.LASF54:
	.string	"__pad3"
.LASF55:
	.string	"__pad4"
.LASF56:
	.string	"__pad5"
.LASF195:
	.string	"varray_head_tag"
.LASF61:
	.string	"_sbuf"
.LASF95:
	.string	"COImode"
.LASF100:
	.string	"V4QImode"
.LASF152:
	.string	"current"
.LASF191:
	.string	"sched_info_tag"
.LASF30:
	.string	"_flags"
.LASF105:
	.string	"V8HImode"
.LASF136:
	.string	"offset"
.LASF153:
	.string	"indx"
.LASF151:
	.string	"first"
.LASF57:
	.string	"_mode"
.LASF111:
	.string	"V4SFmode"
.LASF269:
	.string	"ptr_"
.LASF239:
	.string	"exit_count"
.LASF292:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF133:
	.string	"addr_diff_vec_flags"
.LASF196:
	.string	"num_elements"
.LASF91:
	.string	"CHImode"
.LASF7:
	.string	"used"
.LASF223:
	.string	"exit_edges"
.LASF69:
	.string	"SImode"
.LASF119:
	.string	"CCGOCmode"
.LASF141:
	.string	"rtint"
.LASF28:
	.string	"FILE"
.LASF110:
	.string	"V2DFmode"
.LASF211:
	.string	"basic_block"
.LASF249:
	.string	"CDI_DOMINATORS"
.LASF210:
	.string	"edge"
.LASF180:
	.string	"sbitmap"
.LASF216:
	.string	"pre_header_edges"
.LASF212:
	.string	"loop"
.LASF137:
	.string	"size"
.LASF63:
	.string	"long long unsigned int"
.LASF174:
	.string	"bitmap_element"
.LASF225:
	.string	"exits_doms"
.LASF25:
	.string	"__off_t"
.LASF208:
	.string	"insns"
.LASF87:
	.string	"DCmode"
.LASF83:
	.string	"TFmode"
.LASF6:
	.string	"in_struct"
.LASF5:
	.string	"volatil"
.LASF118:
	.string	"CCGCmode"
.LASF176:
	.string	"simple_bitmap_def"
.LASF290:
	.string	"basic_block_info"
.LASF40:
	.string	"_IO_backup_base"
.LASF49:
	.string	"_shortbuf"
.LASF12:
	.string	"rtvec_def"
.LASF112:
	.string	"V4DFmode"
.LASF207:
	.string	"dest"
.LASF190:
	.string	"cselib_val_struct"
.LASF278:
	.string	"flow_loop_tree_node_add"
.LASF60:
	.string	"_next"
.LASF26:
	.string	"__off64_t"
.LASF0:
	.string	"code"
.LASF70:
	.string	"DImode"
.LASF289:
	.string	"n_basic_blocks"
.LASF73:
	.string	"PQImode"
.LASF38:
	.string	"_IO_buf_end"
.LASF199:
	.string	"name"
.LASF281:
	.string	"flow_loop_level_compute"
.LASF113:
	.string	"V8SFmode"
.LASF24:
	.string	"short int"
.LASF2:
	.string	"jump"
.LASF1:
	.string	"mode"
.LASF270:
	.string	"word_"
.LASF120:
	.string	"CCNOmode"
.LASF175:
	.string	"bitmap"
.LASF186:
	.string	"generic"
.LASF90:
	.string	"CQImode"
.LASF48:
	.string	"_vtable_offset"
.LASF273:
	.string	"stack"
.LASF247:
	.string	"machine_mode"
.LASF275:
	.string	"flow_loops_cfg_dump"
.LASF72:
	.string	"OImode"
.LASF128:
	.string	"max_after_vec"
.LASF143:
	.string	"rtstr"
.LASF262:
	.string	"flow_loop_entry_edges_find"
.LASF287:
	.string	"flow_loops_update"
.LASF108:
	.string	"V16QImode"
.LASF32:
	.string	"_IO_read_end"
.LASF255:
	.string	"flow_loops_dump"
.LASF115:
	.string	"V16SFmode"
.LASF280:
	.string	"flow_loops_tree_build"
.LASF150:
	.string	"bitmap_head_def"
.LASF44:
	.string	"_fileno"
.LASF276:
	.string	"flow_loop_pre_header_scan"
.LASF293:
	.string	"cfgloop.c"
.LASF8:
	.string	"integrated"
.LASF22:
	.string	"short unsigned int"
.LASF183:
	.string	"varray_data_tag"
.LASF35:
	.string	"_IO_write_ptr"
.LASF201:
	.string	"varray_type"
.LASF217:
	.string	"num_pre_header_edges"
.LASF165:
	.string	"loop_depth"
.LASF114:
	.string	"V8DFmode"
.LASF279:
	.string	"prevloop"
.LASF10:
	.string	"rtvec"
.LASF162:
	.string	"global_live_at_start"
.LASF291:
	.string	"entry_exit_blocks"
.LASF231:
	.string	"invalid"
.LASF158:
	.string	"pred"
.LASF171:
	.string	"next"
.LASF200:
	.string	"data"
.LASF277:
	.string	"flow_loop_pre_header_find"
.LASF97:
	.string	"V2HImode"
.LASF172:
	.string	"prev"
.LASF131:
	.string	"offset_unsigned"
.LASF94:
	.string	"CTImode"
.LASF256:
	.string	"num_loops"
.LASF257:
	.string	"oloop"
.LASF218:
	.string	"last"
.LASF135:
	.string	"expr"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
