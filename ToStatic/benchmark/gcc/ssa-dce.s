	.file	"ssa-dce.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ssa-dce.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	control_dependent_block_to_edge_map_create, @function
control_dependent_block_to_edge_map_create:
.LFB2:
	.file 1 "ssa-dce.c"
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# num_basic_blocks, num_basic_blocks
	.loc 1 164 0
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp75, c
	.loc 1 166 0
	movq	-40(%rbp), %rax	# num_basic_blocks, tmp76
	addl	$2, %eax	#, D.10419
	movl	%eax, %edx	# D.10419, D.10420
	movq	-24(%rbp), %rax	# c, tmp77
	movl	%edx, 8(%rax)	# D.10420, c_2->length
	.loc 1 167 0
	movq	-24(%rbp), %rax	# c, tmp78
	movl	8(%rax), %eax	# c_2->length, D.10420
	cltq
	salq	$3, %rax	#, D.10421
	movq	%rax, %rdi	# D.10421,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp79, D.10422
	movq	-24(%rbp), %rax	# c, tmp80
	movq	%rdx, (%rax)	# D.10422, c_2->data
	.loc 1 168 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 169 0 discriminator 2
	movq	-24(%rbp), %rax	# c, tmp81
	movq	(%rax), %rax	# c_2->data, D.10423
	movl	-28(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.10421
	salq	$3, %rdx	#, D.10421
	leaq	(%rax,%rdx), %rbx	#, D.10423
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, %rdi	# D.10422,
	call	bitmap_initialize	#
	movq	%rax, (%rbx)	# D.10424, *_16
	.loc 1 168 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L2:
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# c, tmp84
	movl	8(%rax), %eax	# c_2->length, D.10420
	cmpl	-28(%rbp), %eax	# i, D.10420
	jg	.L3	#,
	.loc 1 171 0 is_stmt 1
	movq	-24(%rbp), %rax	# c, D.10425
	.loc 1 172 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	control_dependent_block_to_edge_map_create, .-control_dependent_block_to_edge_map_create
	.section	.rodata
.LC0:
	.string	"ssa-dce.c"
	.text
	.type	set_control_dependent_block_to_edge_map_bit, @function
set_control_dependent_block_to_edge_map_bit:
.LFB3:
	.loc 1 183 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# bb, bb
	movl	%edx, -20(%rbp)	# edge_index, edge_index
	.loc 1 184 0
	movq	-16(%rbp), %rax	# bb, tmp69
	movl	88(%rax), %eax	# bb_1(D)->index, D.10426
	leal	2(%rax), %edx	#, D.10426
	movq	-8(%rbp), %rax	# c, tmp70
	movl	8(%rax), %eax	# c_4(D)->length, D.10426
	cmpl	%eax, %edx	# D.10426, D.10426
	jl	.L6	#,
	.loc 1 185 0
	movl	$__FUNCTION__.9693, %edx	#,
	movl	$185, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L6:
	.loc 1 187 0
	movq	-8(%rbp), %rax	# c, tmp71
	movq	(%rax), %rdx	# c_4(D)->data, D.10427
	movq	-16(%rbp), %rax	# bb, tmp72
	movl	88(%rax), %eax	# bb_1(D)->index, D.10426
	cltq
	addq	$2, %rax	#, D.10428
	salq	$3, %rax	#, D.10428
	addq	%rdx, %rax	# D.10427, D.10427
	movq	(%rax), %rax	# *_11, D.10429
	movl	-20(%rbp), %edx	# edge_index, tmp73
	movl	%edx, %esi	# tmp73,
	movq	%rax, %rdi	# D.10429,
	call	bitmap_set_bit	#
	.loc 1 189 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_control_dependent_block_to_edge_map_bit, .-set_control_dependent_block_to_edge_map_bit
	.type	control_dependent_block_to_edge_map_free, @function
control_dependent_block_to_edge_map_free:
.LFB4:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# c, c
	.loc 1 208 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L8	#
.L10:
	.loc 1 209 0
	movq	-24(%rbp), %rax	# c, tmp79
	movq	(%rax), %rax	# c_3(D)->data, D.10432
	movl	-4(%rbp), %edx	# i, tmp80
	movslq	%edx, %rdx	# tmp80, D.10433
	salq	$3, %rdx	#, D.10433
	addq	%rdx, %rax	# D.10433, D.10432
	movq	(%rax), %rax	# *_8, D.10434
	testq	%rax, %rax	# D.10434
	je	.L9	#,
	.loc 1 209 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# c, tmp81
	movq	(%rax), %rax	# c_3(D)->data, D.10432
	movl	-4(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.10433
	salq	$3, %rdx	#, D.10433
	addq	%rdx, %rax	# D.10433, D.10432
	movq	(%rax), %rax	# *_13, D.10434
	movq	%rax, %rdi	# D.10434,
	call	bitmap_clear	#
	movq	-24(%rbp), %rax	# c, tmp83
	movq	(%rax), %rax	# c_3(D)->data, D.10432
	movl	-4(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, D.10433
	salq	$3, %rdx	#, D.10433
	addq	%rdx, %rax	# D.10433, D.10432
	movq	(%rax), %rax	# *_18, D.10434
	movq	%rax, %rdi	# D.10434,
	call	free	#
	movq	-24(%rbp), %rax	# c, tmp85
	movq	(%rax), %rax	# c_3(D)->data, D.10432
	movl	-4(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.10433
	salq	$3, %rdx	#, D.10433
	addq	%rdx, %rax	# D.10433, D.10432
	movq	$0, (%rax)	#, *_23
.L9:
	.loc 1 208 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L8:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# c, tmp87
	movl	8(%rax), %eax	# c_3(D)->length, D.10431
	cmpl	-4(%rbp), %eax	# i, D.10431
	jg	.L10	#,
	.loc 1 210 0 is_stmt 1
	movq	-24(%rbp), %rax	# c, tmp88
	movq	%rax, %rdi	# tmp88,
	call	free	#
	.loc 1 211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	control_dependent_block_to_edge_map_free, .-control_dependent_block_to_edge_map_free
	.type	find_all_control_dependences, @function
find_all_control_dependences:
.LFB5:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# el, el
	movq	%rsi, -32(%rbp)	# pdom, pdom
	movq	%rdx, -40(%rbp)	# cdbte, cdbte
	.loc 1 226 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 227 0 discriminator 2
	movq	-40(%rbp), %rcx	# cdbte, tmp60
	movq	-32(%rbp), %rdx	# pdom, tmp61
	movl	-4(%rbp), %esi	# i, tmp62
	movq	-24(%rbp), %rax	# el, tmp63
	movq	%rax, %rdi	# tmp63,
	call	find_control_dependence	#
	.loc 1 226 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L12:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# el, tmp64
	movl	4(%rax), %eax	# el_3(D)->num_edges, D.10435
	cmpl	-4(%rbp), %eax	# i, D.10435
	jg	.L13	#,
	.loc 1 228 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	find_all_control_dependences, .-find_all_control_dependences
	.type	find_control_dependence, @function
find_control_dependence:
.LFB6:
	.loc 1 242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# el, el
	movl	%esi, -28(%rbp)	# edge_index, edge_index
	movq	%rdx, -40(%rbp)	# pdom, pdom
	movq	%rcx, -48(%rbp)	# cdbte, cdbte
	.loc 1 246 0
	movq	-24(%rbp), %rax	# el, tmp84
	movq	8(%rax), %rax	# el_3(D)->index_to_edge, D.10436
	movl	-28(%rbp), %edx	# edge_index, tmp85
	movslq	%edx, %rdx	# tmp85, D.10437
	salq	$3, %rdx	#, D.10437
	addq	%rdx, %rax	# D.10437, D.10436
	movq	(%rax), %rax	# *_8, D.10438
	movq	16(%rax), %rax	# _9->src, D.10439
	cmpq	$entry_exit_blocks+112, %rax	#, D.10439
	jne	.L15	#,
	.loc 1 247 0
	movl	$__FUNCTION__.9718, %edx	#,
	movl	$247, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L15:
	.loc 1 249 0
	movq	-24(%rbp), %rax	# el, tmp86
	movq	8(%rax), %rax	# el_3(D)->index_to_edge, D.10436
	movl	-28(%rbp), %edx	# edge_index, tmp87
	movslq	%edx, %rdx	# tmp87, D.10437
	salq	$3, %rdx	#, D.10437
	addq	%rdx, %rax	# D.10437, D.10436
	movq	(%rax), %rax	# *_14, D.10438
	movq	16(%rax), %rax	# _15->src, D.10439
	.loc 1 251 0
	cmpq	$entry_exit_blocks, %rax	#, D.10439
	jne	.L16	#,
	.loc 1 250 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.1
	.loc 1 251 0
	movq	32(%rax), %rax	# basic_block_info.1_17->data.bb, iftmp.0
	jmp	.L17	#
.L16:
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# el, tmp88
	movq	8(%rax), %rax	# el_3(D)->index_to_edge, D.10436
	movl	-28(%rbp), %edx	# edge_index, tmp89
	movslq	%edx, %rdx	# tmp89, D.10437
	salq	$3, %rdx	#, D.10437
	addq	%rdx, %rax	# D.10437, D.10436
	movq	(%rax), %rax	# *_22, D.10438
	movq	16(%rax), %rdx	# _23->src, D.10439
	movq	-40(%rbp), %rax	# pdom, tmp90
	movq	%rdx, %rsi	# D.10439,
	movq	%rax, %rdi	# tmp90,
	call	find_pdom	#
.L17:
	.loc 1 248 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.0, ending_block
	.loc 1 253 0
	movq	-24(%rbp), %rax	# el, tmp91
	movq	8(%rax), %rax	# el_3(D)->index_to_edge, D.10436
	movl	-28(%rbp), %edx	# edge_index, tmp92
	movslq	%edx, %rdx	# tmp92, D.10437
	salq	$3, %rdx	#, D.10437
	addq	%rdx, %rax	# D.10437, D.10436
	movq	(%rax), %rax	# *_31, D.10438
	movq	24(%rax), %rax	# _32->dest, tmp93
	movq	%rax, -16(%rbp)	# tmp93, current_block
	jmp	.L18	#
.L20:
	.loc 1 257 0
	movl	-28(%rbp), %edx	# edge_index, tmp94
	movq	-16(%rbp), %rcx	# current_block, tmp95
	movq	-48(%rbp), %rax	# cdbte, tmp96
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	set_control_dependent_block_to_edge_map_bit	#
	.loc 1 255 0
	movq	-16(%rbp), %rdx	# current_block, tmp97
	movq	-40(%rbp), %rax	# pdom, tmp98
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	find_pdom	#
	movq	%rax, -16(%rbp)	# tmp99, current_block
.L18:
	.loc 1 253 0 discriminator 1
	movq	-16(%rbp), %rax	# current_block, tmp100
	cmpq	-8(%rbp), %rax	# ending_block, tmp100
	je	.L14	#,
	.loc 1 254 0
	cmpq	$entry_exit_blocks+112, -16(%rbp)	#, current_block
	jne	.L20	#,
.L14:
	.loc 1 261 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_control_dependence, .-find_control_dependence
	.type	find_pdom, @function
find_pdom:
.LFB7:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pdom, pdom
	movq	%rsi, -16(%rbp)	# block, block
	.loc 1 272 0
	cmpq	$0, -16(%rbp)	#, block
	jne	.L22	#,
	.loc 1 273 0
	movl	$__FUNCTION__.9726, %edx	#,
	movl	$273, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L22:
	.loc 1 274 0
	movq	-16(%rbp), %rax	# block, tmp74
	movl	88(%rax), %eax	# block_2(D)->index, D.10441
	cmpl	$-3, %eax	#, D.10441
	jne	.L23	#,
	.loc 1 275 0
	movl	$__FUNCTION__.9726, %edx	#,
	movl	$275, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L23:
	.loc 1 277 0
	cmpq	$entry_exit_blocks, -16(%rbp)	#, block
	jne	.L24	#,
	.loc 1 278 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.2
	movq	32(%rax), %rax	# basic_block_info.2_4->data.bb, D.10440
	jmp	.L25	#
.L24:
	.loc 1 279 0
	cmpq	$entry_exit_blocks+112, -16(%rbp)	#, block
	je	.L26	#,
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# block, tmp75
	movl	88(%rax), %eax	# block_2(D)->index, D.10441
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10442
	movq	-8(%rbp), %rax	# pdom, tmp76
	addq	%rdx, %rax	# D.10442, D.10443
	movl	(%rax), %eax	# *_10, D.10441
	cmpl	$-2, %eax	#, D.10441
	jne	.L27	#,
.L26:
	.loc 1 280 0 is_stmt 1
	movl	$entry_exit_blocks+112, %eax	#, D.10440
	jmp	.L25	#
.L27:
	.loc 1 282 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.3
	movq	-16(%rbp), %rdx	# block, tmp77
	movl	88(%rdx), %edx	# block_2(D)->index, D.10441
	movslq	%edx, %rdx	# D.10441, D.10442
	leaq	0(,%rdx,4), %rcx	#, D.10442
	movq	-8(%rbp), %rdx	# pdom, tmp78
	addq	%rcx, %rdx	# D.10442, D.10443
	movl	(%rdx), %edx	# *_16, D.10441
	movslq	%edx, %rdx	# D.10441, tmp79
	addq	$4, %rdx	#, tmp80
	movq	(%rax,%rdx,8), %rax	# basic_block_info.3_12->data.bb, D.10440
.L25:
	.loc 1 283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	find_pdom, .-find_pdom
	.type	inherently_necessary_register_1, @function
inherently_necessary_register_1:
.LFB8:
	.loc 1 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# current_rtx, current_rtx
	movq	%rsi, -32(%rbp)	# data, data
	.loc 1 298 0
	movq	-24(%rbp), %rax	# current_rtx, tmp67
	movq	(%rax), %rax	# *current_rtx_2(D), tmp68
	movq	%rax, -8(%rbp)	# tmp68, x
	.loc 1 300 0
	cmpq	$0, -8(%rbp)	#, x
	jne	.L29	#,
	.loc 1 301 0
	movl	$0, %eax	#, D.10444
	jmp	.L30	#
.L29:
	.loc 1 302 0
	movq	-8(%rbp), %rax	# x, tmp69
	movzwl	(%rax), %eax	# x_3->code, D.10445
	movzwl	%ax, %eax	# D.10445, D.10446
	cmpl	$59, %eax	#, D.10446
	je	.L32	#,
	cmpl	$61, %eax	#, D.10446
	je	.L33	#,
	cmpl	$49, %eax	#, D.10446
	jne	.L37	#,
	.loc 1 306 0
	movl	$-1, %eax	#, D.10444
	jmp	.L30	#
.L32:
	.loc 1 309 0
	movl	$0, %eax	#, D.10444
	jmp	.L30	#
.L33:
	.loc 1 312 0
	movq	-8(%rbp), %rax	# x, tmp70
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10446
	cmpl	$52, %eax	#, D.10446
	ja	.L35	#,
	.loc 1 312 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# x, tmp71
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10446
	cmpl	$17, %eax	#, D.10446
	je	.L35	#,
	movq	-8(%rbp), %rax	# x, tmp72
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10446
	cmpl	$16, %eax	#, D.10446
	je	.L35	#,
	movq	global_rtl(%rip), %rax	# global_rtl, D.10447
	cmpq	-8(%rbp), %rax	# x, D.10447
	jne	.L36	#,
.L35:
	.loc 1 313 0 is_stmt 1
	movl	$0, %eax	#, D.10444
	jmp	.L30	#
.L36:
	.loc 1 315 0
	movl	$1, %eax	#, D.10444
	jmp	.L30	#
.L37:
	.loc 1 318 0
	movl	$0, %eax	#, D.10444
.L30:
	.loc 1 321 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	inherently_necessary_register_1, .-inherently_necessary_register_1
	.type	inherently_necessary_register, @function
inherently_necessary_register:
.LFB9:
	.loc 1 328 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# current_rtx, current_rtx
	.loc 1 329 0
	leaq	-8(%rbp), %rax	#, tmp61
	movl	$0, %edx	#,
	movl	$inherently_necessary_register_1, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	for_each_rtx	#
	.loc 1 331 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	inherently_necessary_register, .-inherently_necessary_register
	.type	note_inherently_necessary_set, @function
note_inherently_necessary_set:
.LFB10:
	.loc 1 343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# dest, dest
	movq	%rsi, -32(%rbp)	# set, set
	movq	%rdx, -40(%rbp)	# data, data
	.loc 1 344 0
	movq	-40(%rbp), %rax	# data, tmp66
	movq	%rax, -8(%rbp)	# tmp66, inherently_necessary_set_p
	.loc 1 346 0
	jmp	.L41	#
.L42:
	.loc 1 350 0
	movq	-24(%rbp), %rax	# dest, tmp67
	movq	8(%rax), %rax	# dest_1->fld[0].rtx, tmp68
	movq	%rax, -24(%rbp)	# tmp68, dest
.L41:
	.loc 1 346 0 discriminator 1
	movq	-24(%rbp), %rax	# dest, tmp69
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$63, %ax	#, D.10449
	je	.L42	#,
	.loc 1 347 0
	movq	-24(%rbp), %rax	# dest, tmp70
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$64, %ax	#, D.10449
	je	.L42	#,
	.loc 1 348 0
	movq	-24(%rbp), %rax	# dest, tmp71
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$133, %ax	#, D.10449
	je	.L42	#,
	.loc 1 349 0
	movq	-24(%rbp), %rax	# dest, tmp72
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$132, %ax	#, D.10449
	je	.L42	#,
	.loc 1 352 0
	movq	-24(%rbp), %rax	# dest, tmp73
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$66, %ax	#, D.10449
	je	.L43	#,
	.loc 1 353 0
	movq	-24(%rbp), %rax	# dest, tmp74
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$42, %ax	#, D.10449
	je	.L43	#,
	.loc 1 354 0
	movq	-24(%rbp), %rax	# dest, tmp75
	movzwl	(%rax), %eax	# dest_1->code, D.10449
	cmpw	$43, %ax	#, D.10449
	jne	.L40	#,
.L43:
	.loc 1 355 0
	movq	-8(%rbp), %rax	# inherently_necessary_set_p, tmp76
	movl	$1, (%rax)	#, *inherently_necessary_set_p_3
.L40:
	.loc 1 356 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	note_inherently_necessary_set, .-note_inherently_necessary_set
	.type	find_inherently_necessary, @function
find_inherently_necessary:
.LFB11:
	.loc 1 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# x, x
	.loc 1 367 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L46	#,
	.loc 1 368 0
	movl	$0, %eax	#, D.10450
	jmp	.L47	#
.L46:
	.loc 1 369 0
	movq	-24(%rbp), %rax	# x, tmp78
	movq	%rax, %rdi	# tmp78,
	call	inherently_necessary_register	#
	testl	%eax, %eax	# D.10450
	je	.L48	#,
	.loc 1 370 0
	movl	$1, %eax	#, D.10450
	jmp	.L47	#
.L48:
	.loc 1 372 0
	movq	-24(%rbp), %rax	# x, tmp79
	movzwl	(%rax), %eax	# x_4(D)->code, D.10451
	movzwl	%ax, %eax	# D.10451, D.10452
	subl	$32, %eax	#, tmp80
	cmpl	$14, %eax	#, tmp80
	ja	.L49	#,
	movl	%eax, %eax	# tmp80, tmp81
	movq	.L51(,%rax,8), %rax	#, tmp82
	jmp	*%rax	# tmp82
	.section	.rodata
	.align 8
	.align 4
.L51:
	.quad	.L50
	.quad	.L52
	.quad	.L53
	.quad	.L53
	.quad	.L54
	.quad	.L54
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L49
	.quad	.L53
	.text
.L53:
	.loc 1 377 0
	movl	$1, %eax	#, D.10450
	jmp	.L47	#
.L54:
	.loc 1 380 0
	movl	$0, %eax	#, D.10450
	jmp	.L47	#
.L52:
	.loc 1 382 0
	movq	-24(%rbp), %rax	# x, tmp83
	movzwl	(%rax), %eax	# x_4(D)->code, D.10451
	cmpw	$33, %ax	#, D.10451
	jne	.L55	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp84
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.10453
	movzwl	(%rax), %eax	# _13->code, D.10451
	cmpw	$44, %ax	#, D.10451
	je	.L56	#,
	.loc 1 382 0 discriminator 2
	movq	-24(%rbp), %rax	# x, tmp85
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.10453
	movzwl	(%rax), %eax	# _15->code, D.10451
	cmpw	$45, %ax	#, D.10451
	je	.L56	#,
.L55:
	movq	-24(%rbp), %rax	# x, tmp86
	movq	%rax, %rdi	# tmp86,
	call	computed_jump_p	#
	testl	%eax, %eax	# D.10450
	je	.L57	#,
.L56:
	.loc 1 382 0 discriminator 1
	movl	$1, %eax	#, iftmp.4
	jmp	.L58	#
.L57:
	.loc 1 382 0 discriminator 3
	movl	$0, %eax	#, iftmp.4
.L58:
	.loc 1 382 0 discriminator 4
	jmp	.L47	#
.L50:
.LBB2:
	.loc 1 385 0 is_stmt 1
	movl	$0, -4(%rbp)	#, inherently_necessary_set
	.loc 1 386 0
	movq	-24(%rbp), %rax	# x, tmp87
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.10453
	leaq	-4(%rbp), %rdx	#, tmp88
	movl	$note_inherently_necessary_set, %esi	#,
	movq	%rax, %rdi	# D.10453,
	call	note_stores	#
	.loc 1 393 0
	movl	-4(%rbp), %eax	# inherently_necessary_set, inherently_necessary_set.6
	.loc 1 395 0
	testl	%eax, %eax	# inherently_necessary_set.6
	jne	.L59	#,
	.loc 1 394 0
	movq	-24(%rbp), %rax	# x, tmp89
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.10453
	movzwl	(%rax), %eax	# _23->code, D.10451
	cmpw	$40, %ax	#, D.10451
	je	.L59	#,
	.loc 1 395 0
	movq	-24(%rbp), %rax	# x, tmp90
	movq	32(%rax), %rax	# x_4(D)->fld[3].rtx, D.10453
	movq	%rax, %rdi	# D.10453,
	call	asm_noperands	#
	testl	%eax, %eax	# D.10450
	js	.L60	#,
.L59:
	.loc 1 395 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.5
	jmp	.L47	#
.L60:
	.loc 1 395 0 discriminator 2
	movl	$0, %eax	#, iftmp.5
	jmp	.L47	#
.L49:
.LBE2:
	.loc 1 399 0 is_stmt 1
	movl	$__FUNCTION__.9760, %edx	#,
	movl	$399, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L47:
	.loc 1 402 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	find_inherently_necessary, .-find_inherently_necessary
	.type	propagate_necessity_through_operand, @function
propagate_necessity_through_operand:
.LFB12:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# current_rtx, current_rtx
	movq	%rsi, -48(%rbp)	# data, data
	.loc 1 414 0
	movq	-40(%rbp), %rax	# current_rtx, tmp83
	movq	(%rax), %rax	# *current_rtx_2(D), tmp84
	movq	%rax, -24(%rbp)	# tmp84, x
	.loc 1 415 0
	movq	-48(%rbp), %rax	# data, tmp85
	movq	%rax, -16(%rbp)	# tmp85, unprocessed_instructions
	.loc 1 417 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L63	#,
	.loc 1 418 0
	movl	$0, %eax	#, D.10454
	jmp	.L64	#
.L63:
	.loc 1 419 0
	movq	-24(%rbp), %rax	# x, tmp86
	movzwl	(%rax), %eax	# x_3->code, D.10455
	movzwl	%ax, %eax	# D.10455, D.10456
	cmpl	$61, %eax	#, D.10456
	jne	.L70	#,
	.loc 1 422 0
	movq	-24(%rbp), %rax	# x, tmp87
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10456
	cmpl	$52, %eax	#, D.10456
	ja	.L67	#,
	.loc 1 422 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp88
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10456
	cmpl	$17, %eax	#, D.10456
	je	.L67	#,
	movq	-24(%rbp), %rax	# x, tmp89
	movl	8(%rax), %eax	# x_3->fld[0].rtuint, D.10456
	cmpl	$16, %eax	#, D.10456
	jne	.L68	#,
.L67:
.LBB3:
	.loc 1 424 0 is_stmt 1
	movq	ssa_definition(%rip), %rax	# ssa_definition, ssa_definition.7
	movq	-24(%rbp), %rdx	# x, tmp90
	movl	8(%rdx), %edx	# x_3->fld[0].rtuint, D.10456
	movl	%edx, %edx	# D.10456, tmp91
	addq	$4, %rdx	#, tmp92
	movq	(%rax,%rdx,8), %rax	# ssa_definition.7_12->data.rtx, tmp93
	movq	%rax, -8(%rbp)	# tmp93, insn
	.loc 1 425 0
	cmpq	$0, -8(%rbp)	#, insn
	je	.L68	#,
	.loc 1 425 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp94
	movzbl	3(%rax), %eax	# *insn_14, D.10457
	andl	$16, %eax	#, D.10457
	testb	%al, %al	# D.10457
	je	.L68	#,
	.loc 1 427 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp95
	movzbl	3(%rax), %edx	# insn_14->in_struct, tmp98
	andl	$-17, %edx	#, tmp99
	movb	%dl, 3(%rax)	# tmp99, insn_14->in_struct
	.loc 1 428 0
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp100
	movq	(%rax), %rax	# *unprocessed_instructions_5, D.10458
	movq	8(%rax), %rdx	# _17->elements_used, D.10459
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp101
	movq	(%rax), %rax	# *unprocessed_instructions_5, D.10458
	movq	(%rax), %rax	# _19->num_elements, D.10459
	cmpq	%rax, %rdx	# D.10459, D.10459
	jb	.L69	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp102
	movq	(%rax), %rax	# *unprocessed_instructions_5, D.10458
	movq	(%rax), %rax	# _21->num_elements, D.10459
	leaq	(%rax,%rax), %rdx	#, D.10459
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp103
	movq	(%rax), %rax	# *unprocessed_instructions_5, D.10458
	movq	%rdx, %rsi	# D.10459,
	movq	%rax, %rdi	# D.10458,
	call	varray_grow	#
	movq	-16(%rbp), %rdx	# unprocessed_instructions, tmp104
	movq	%rax, (%rdx)	# D.10458, *unprocessed_instructions_5
.L69:
	.loc 1 428 0 discriminator 2
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp105
	movq	(%rax), %rcx	# *unprocessed_instructions_5, D.10458
	movq	-16(%rbp), %rax	# unprocessed_instructions, tmp106
	movq	(%rax), %rax	# *unprocessed_instructions_5, D.10458
	movq	8(%rax), %rdx	# _27->elements_used, D.10459
	leaq	1(%rdx), %rsi	#, D.10459
	movq	%rsi, 8(%rax)	# D.10459, _27->elements_used
	addq	$4, %rdx	#, tmp107
	movq	-8(%rbp), %rax	# insn, tmp108
	movq	%rax, (%rcx,%rdx,8)	# tmp108, _26->data.rtx
.L68:
.LBE3:
	.loc 1 431 0 is_stmt 1
	movl	$0, %eax	#, D.10454
	jmp	.L64	#
.L70:
	.loc 1 434 0
	movl	$0, %eax	#, D.10454
.L64:
	.loc 1 436 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	propagate_necessity_through_operand, .-propagate_necessity_through_operand
	.type	mark_all_insn_unnecessary, @function
mark_all_insn_unnecessary:
.LFB13:
	.loc 1 442 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 444 0
	call	get_insns	#
	movq	%rax, -8(%rbp)	# tmp59, insn
	jmp	.L72	#
.L73:
	.loc 1 445 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp60
	movzbl	3(%rax), %edx	# insn_1->in_struct, tmp63
	orl	$16, %edx	#, tmp64
	movb	%dl, 3(%rax)	# tmp64, insn_1->in_struct
	.loc 1 444 0 discriminator 2
	movq	-8(%rbp), %rax	# insn, tmp65
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp66
	movq	%rax, -8(%rbp)	# tmp66, insn
.L72:
	.loc 1 444 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L73	#,
	.loc 1 446 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	mark_all_insn_unnecessary, .-mark_all_insn_unnecessary
	.type	find_block_label, @function
find_block_label:
.LFB14:
	.loc 1 453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 454 0
	movq	-24(%rbp), %rax	# bb, tmp64
	movq	(%rax), %rax	# bb_2(D)->head, tmp65
	movq	%rax, -16(%rbp)	# tmp65, insn
	.loc 1 455 0
	movq	-16(%rbp), %rax	# insn, tmp66
	movzwl	(%rax), %eax	# insn_3->code, D.10461
	cmpw	$36, %ax	#, D.10461
	jne	.L75	#,
	.loc 1 456 0
	movq	-16(%rbp), %rax	# insn, D.10460
	jmp	.L76	#
.L75:
.LBB4:
	.loc 1 459 0
	call	gen_label_rtx	#
	movq	-16(%rbp), %rdx	# insn, tmp67
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# D.10462,
	call	emit_label_before	#
	movq	%rax, -8(%rbp)	# tmp68, new_label
	.loc 1 460 0
	movq	-24(%rbp), %rax	# bb, tmp69
	movq	(%rax), %rax	# bb_2(D)->head, D.10462
	cmpq	-16(%rbp), %rax	# insn, D.10462
	jne	.L77	#,
	.loc 1 461 0
	movq	-24(%rbp), %rax	# bb, tmp70
	movq	-8(%rbp), %rdx	# new_label, tmp71
	movq	%rdx, (%rax)	# tmp71, bb_2(D)->head
.L77:
	.loc 1 462 0
	movq	-8(%rbp), %rax	# new_label, D.10460
.L76:
.LBE4:
	.loc 1 464 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	find_block_label, .-find_block_label
	.type	delete_insn_bb, @function
delete_insn_bb:
.LFB15:
	.loc 1 471 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 472 0
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L79	#,
	.loc 1 473 0
	movl	$__FUNCTION__.9784, %edx	#,
	movl	$473, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L79:
	.loc 1 480 0
	movq	-8(%rbp), %rax	# insn, tmp62
	movzwl	(%rax), %eax	# insn_1(D)->code, D.10463
	movzwl	%ax, %eax	# D.10463, D.10464
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.10465
	cmpb	$105, %al	#, D.10465
	je	.L80	#,
	.loc 1 481 0
	jmp	.L78	#
.L80:
	.loc 1 483 0
	movq	-8(%rbp), %rax	# insn, tmp64
	movq	%rax, %rdi	# tmp64,
	call	delete_insn	#
.L78:
	.loc 1 484 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	delete_insn_bb, .-delete_insn_bb
	.section	.rodata
.LC1:
	.string	"unprocessed instructions"
	.text
	.globl	ssa_eliminate_dead_code
	.type	ssa_eliminate_dead_code, @function
ssa_eliminate_dead_code:
.LFB16:
	.loc 1 490 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$280, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 502 0
	call	get_max_uid	#
	movl	%eax, -252(%rbp)	# tmp260, max_insn_uid
	.loc 1 505 0
	call	mark_all_insn_unnecessary	#
	.loc 1 506 0
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movl	$64, %edi	#,
	call	varray_init	#
	movq	%rax, -232(%rbp)	# unprocessed_instructions.8, unprocessed_instructions
	.loc 1 508 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.9
	cltq
	movq	%rax, %rdi	# D.10466,
	call	control_dependent_block_to_edge_map_create	#
	movq	%rax, -144(%rbp)	# tmp261, cdbte
	.loc 1 511 0
	call	connect_infinite_loops_to_exit	#
	.loc 1 513 0
	movl	-252(%rbp), %eax	# max_insn_uid, tmp262
	movl	%eax, %edi	# tmp262,
	call	compute_bb_for_insn	#
	.loc 1 516 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.10
	cltq
	salq	$2, %rax	#, D.10466
	movq	%rax, %rdi	# D.10466,
	call	xmalloc	#
	movq	%rax, -136(%rbp)	# tmp263, pdom
	.loc 1 517 0
	movl	$0, -276(%rbp)	#, i
	jmp	.L83	#
.L84:
	.loc 1 518 0 discriminator 2
	movl	-276(%rbp), %eax	# i, tmp264
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10466
	movq	-136(%rbp), %rax	# pdom, tmp265
	addq	%rdx, %rax	# D.10466, D.10467
	movl	$-3, (%rax)	#, *_47
	.loc 1 517 0 discriminator 2
	addl	$1, -276(%rbp)	#, i
.L83:
	.loc 1 517 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.11
	cmpl	%eax, -276(%rbp)	# n_basic_blocks.11, i
	jl	.L84	#,
	.loc 1 519 0 is_stmt 1
	movq	-136(%rbp), %rax	# pdom, tmp266
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp266,
	call	calculate_dominance_info	#
	.loc 1 521 0
	movl	$0, -276(%rbp)	#, i
	jmp	.L85	#
.L87:
	.loc 1 522 0
	movl	-276(%rbp), %eax	# i, tmp267
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10466
	movq	-136(%rbp), %rax	# pdom, tmp268
	addq	%rdx, %rax	# D.10466, D.10467
	movl	(%rax), %eax	# *_53, D.10468
	cmpl	$-3, %eax	#, D.10468
	jne	.L86	#,
	.loc 1 523 0
	movl	-276(%rbp), %eax	# i, tmp269
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10466
	movq	-136(%rbp), %rax	# pdom, tmp270
	addq	%rdx, %rax	# D.10466, D.10467
	movl	$-2, (%rax)	#, *_57
.L86:
	.loc 1 521 0
	addl	$1, -276(%rbp)	#, i
.L85:
	.loc 1 521 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.12
	cmpl	%eax, -276(%rbp)	# n_basic_blocks.12, i
	jl	.L87	#,
	.loc 1 524 0 is_stmt 1
	call	create_edge_list	#
	movq	%rax, -128(%rbp)	# tmp271, el
	.loc 1 525 0
	movq	-144(%rbp), %rdx	# cdbte, tmp272
	movq	-136(%rbp), %rcx	# pdom, tmp273
	movq	-128(%rbp), %rax	# el, tmp274
	movq	%rcx, %rsi	# tmp273,
	movq	%rax, %rdi	# tmp274,
	call	find_all_control_dependences	#
	.loc 1 528 0
	call	get_insns	#
	movq	%rax, -216(%rbp)	# tmp275, insn
	jmp	.L88	#
.L91:
	.loc 1 529 0
	movq	-216(%rbp), %rax	# insn, tmp276
	movq	%rax, %rdi	# tmp276,
	call	find_inherently_necessary	#
	testl	%eax, %eax	# D.10468
	je	.L89	#,
	.loc 1 531 0
	movq	-216(%rbp), %rax	# insn, tmp277
	movzbl	3(%rax), %edx	# insn_4->in_struct, tmp280
	andl	$-17, %edx	#, tmp281
	movb	%dl, 3(%rax)	# tmp281, insn_4->in_struct
	.loc 1 532 0
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.13
	movq	8(%rax), %rdx	# unprocessed_instructions.13_62->elements_used, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.14
	movq	(%rax), %rax	# unprocessed_instructions.14_64->num_elements, D.10466
	cmpq	%rax, %rdx	# D.10466, D.10466
	jb	.L90	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.15
	movq	(%rax), %rax	# unprocessed_instructions.15_66->num_elements, D.10466
	leaq	(%rax,%rax), %rdx	#, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.16
	movq	%rdx, %rsi	# D.10466,
	movq	%rax, %rdi	# unprocessed_instructions.16,
	call	varray_grow	#
	movq	%rax, -232(%rbp)	# unprocessed_instructions.17, unprocessed_instructions
.L90:
	.loc 1 532 0 discriminator 2
	movq	-232(%rbp), %rcx	# unprocessed_instructions, unprocessed_instructions.18
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.19
	movq	8(%rax), %rdx	# unprocessed_instructions.19_72->elements_used, D.10466
	leaq	1(%rdx), %rsi	#, D.10466
	movq	%rsi, 8(%rax)	# D.10466, unprocessed_instructions.19_72->elements_used
	addq	$4, %rdx	#, tmp282
	movq	-216(%rbp), %rax	# insn, tmp283
	movq	%rax, (%rcx,%rdx,8)	# tmp283, unprocessed_instructions.18_71->data.rtx
.L89:
	.loc 1 528 0 is_stmt 1
	movq	-216(%rbp), %rax	# insn, tmp284
	movq	24(%rax), %rax	# insn_4->fld[2].rtx, tmp285
	movq	%rax, -216(%rbp)	# tmp285, insn
.L88:
	.loc 1 528 0 is_stmt 0 discriminator 1
	cmpq	$0, -216(%rbp)	#, insn
	jne	.L91	#,
	.loc 1 536 0 is_stmt 1
	jmp	.L92	#
.L125:
.LBB5:
	.loc 1 541 0
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.20
	movq	-232(%rbp), %rdx	# unprocessed_instructions, unprocessed_instructions.21
	movq	8(%rdx), %rdx	# unprocessed_instructions.21_80->elements_used, D.10466
	subq	$1, %rdx	#, D.10466
	addq	$4, %rdx	#, tmp286
	movq	(%rax,%rdx,8), %rax	# unprocessed_instructions.20_79->data.rtx, current_instruction.22
	movq	%rax, -224(%rbp)	# current_instruction.22, current_instruction
	.loc 1 542 0
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.23
	movq	8(%rax), %rdx	# unprocessed_instructions.23_84->elements_used, D.10466
	subq	$1, %rdx	#, D.10466
	movq	%rdx, 8(%rax)	# D.10466, unprocessed_instructions.23_84->elements_used
	.loc 1 549 0
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.24
	movzwl	(%rax), %eax	# current_instruction.24_87->code, D.10469
	movzwl	%ax, %eax	# D.10469, D.10468
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.10470
	cmpb	$105, %al	#, D.10470
	jne	.L92	#,
	.loc 1 550 0
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.25
	movzwl	(%rax), %eax	# current_instruction.25_91->code, D.10469
	cmpw	$33, %ax	#, D.10469
	jne	.L94	#,
	.loc 1 550 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.26
	movq	32(%rax), %rax	# current_instruction.26_93->fld[3].rtx, D.10471
	movzwl	(%rax), %eax	# _94->code, D.10469
	cmpw	$44, %ax	#, D.10469
	je	.L92	#,
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.27
	movq	32(%rax), %rax	# current_instruction.27_96->fld[3].rtx, D.10471
	movzwl	(%rax), %eax	# _97->code, D.10469
	cmpw	$45, %ax	#, D.10469
	je	.L92	#,
.L94:
.LBB6:
	.loc 1 553 0 is_stmt 1
	movq	-144(%rbp), %rax	# cdbte, tmp288
	movq	(%rax), %rcx	# cdbte_38->data, D.10472
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.28
	movq	-224(%rbp), %rdx	# current_instruction, current_instruction.29
	movl	8(%rdx), %edx	# current_instruction.29_101->fld[0].rtint, D.10468
	movslq	%edx, %rdx	# D.10468, tmp289
	addq	$4, %rdx	#, tmp290
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.28_100->data.bb, D.10473
	movl	88(%rax), %eax	# _103->index, D.10468
	cltq
	addq	$2, %rax	#, D.10474
	salq	$3, %rax	#, D.10474
	addq	%rcx, %rax	# D.10472, D.10472
	movq	(%rax), %rax	# *_108, D.10475
	movq	(%rax), %rax	# _109->first, tmp291
	movq	%rax, -208(%rbp)	# tmp291, ptr_
	movl	$0, -248(%rbp)	#, indx_
	movl	$0, -272(%rbp)	#, bit_num_
	movl	$0, -268(%rbp)	#, word_num_
	jmp	.L95	#
.L97:
	.loc 1 553 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# ptr_, tmp292
	movq	(%rax), %rax	# ptr__6->next, tmp293
	movq	%rax, -208(%rbp)	# tmp293, ptr_
.L95:
	cmpq	$0, -208(%rbp)	#, ptr_
	je	.L96	#,
	.loc 1 553 0 discriminator 2
	movq	-208(%rbp), %rax	# ptr_, tmp294
	movl	16(%rax), %eax	# ptr__6->indx, D.10476
	cmpl	-248(%rbp), %eax	# indx_, D.10476
	jb	.L97	#,
.L96:
	.loc 1 553 0 discriminator 3
	cmpq	$0, -208(%rbp)	#, ptr_
	je	.L98	#,
	.loc 1 553 0 discriminator 1
	movq	-208(%rbp), %rax	# ptr_, tmp295
	movl	16(%rax), %eax	# ptr__6->indx, D.10476
	cmpl	-248(%rbp), %eax	# indx_, D.10476
	je	.L98	#,
	movl	$0, -272(%rbp)	#, bit_num_
	movl	$0, -268(%rbp)	#, word_num_
	jmp	.L99	#
.L98:
	.loc 1 553 0 discriminator 2
	jmp	.L99	#
.L108:
	.loc 1 553 0
	jmp	.L100	#
.L107:
.LBB7:
	.loc 1 553 0 discriminator 2
	movq	-208(%rbp), %rax	# ptr_, tmp296
	movl	-268(%rbp), %edx	# word_num_, tmp297
	addq	$2, %rdx	#, tmp298
	movq	8(%rax,%rdx,8), %rax	# ptr__7->bits, tmp299
	movq	%rax, -200(%rbp)	# tmp299, word_
	cmpq	$0, -200(%rbp)	#, word_
	je	.L101	#,
	.loc 1 553 0 discriminator 1
	jmp	.L102	#
.L106:
.LBB8:
	.loc 1 553 0 discriminator 2
	movl	-272(%rbp), %eax	# bit_num_, bit_num_.30
	movl	$1, %edx	#, tmp300
	movl	%eax, %ecx	# bit_num_.30, tmp454
	salq	%cl, %rdx	# tmp454, tmp301
	movq	%rdx, %rax	# tmp301, tmp301
	movq	%rax, -120(%rbp)	# tmp301, mask_
	movq	-120(%rbp), %rax	# mask_, tmp302
	movq	-200(%rbp), %rdx	# word_, tmp303
	andq	%rdx, %rax	# tmp303, D.10466
	testq	%rax, %rax	# D.10466
	je	.L103	#,
	.loc 1 553 0 discriminator 1
	movq	-120(%rbp), %rax	# mask_, tmp304
	notq	%rax	# D.10466
	andq	%rax, -200(%rbp)	# D.10466, word_
	movq	-208(%rbp), %rax	# ptr_, tmp305
	movl	16(%rax), %eax	# ptr__7->indx, D.10476
	leal	(%rax,%rax), %edx	#, D.10476
	movl	-268(%rbp), %eax	# word_num_, tmp306
	addl	%edx, %eax	# D.10476, D.10476
	sall	$6, %eax	#, D.10476
	movl	%eax, %edx	# D.10476, D.10476
	movl	-272(%rbp), %eax	# bit_num_, tmp307
	addl	%edx, %eax	# D.10476, D.10476
	movl	%eax, -244(%rbp)	# D.10476, edge_number
.LBB9:
	movq	-128(%rbp), %rax	# el, tmp308
	movq	8(%rax), %rax	# el_59->index_to_edge, D.10477
	movl	-244(%rbp), %edx	# edge_number, tmp309
	movslq	%edx, %rdx	# tmp309, D.10466
	salq	$3, %rdx	#, D.10466
	addq	%rdx, %rax	# D.10466, D.10477
	movq	(%rax), %rax	# *_134, D.10478
	movq	16(%rax), %rax	# _135->src, D.10473
	movq	8(%rax), %rax	# _136->end, tmp310
	movq	%rax, -112(%rbp)	# tmp310, jump_insn
	movq	-112(%rbp), %rax	# jump_insn, tmp311
	movzwl	(%rax), %eax	# jump_insn_137->code, D.10469
	cmpw	$33, %ax	#, D.10469
	jne	.L104	#,
	movq	-112(%rbp), %rax	# jump_insn, tmp312
	movzbl	3(%rax), %eax	# *jump_insn_137, D.10479
	andl	$16, %eax	#, D.10479
	testb	%al, %al	# D.10479
	je	.L104	#,
	movq	-112(%rbp), %rax	# jump_insn, tmp313
	movzbl	3(%rax), %edx	# jump_insn_137->in_struct, tmp316
	andl	$-17, %edx	#, tmp317
	movb	%dl, 3(%rax)	# tmp317, jump_insn_137->in_struct
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.31
	movq	8(%rax), %rdx	# unprocessed_instructions.31_141->elements_used, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.32
	movq	(%rax), %rax	# unprocessed_instructions.32_143->num_elements, D.10466
	cmpq	%rax, %rdx	# D.10466, D.10466
	jb	.L105	#,
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.33
	movq	(%rax), %rax	# unprocessed_instructions.33_145->num_elements, D.10466
	leaq	(%rax,%rax), %rdx	#, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.34
	movq	%rdx, %rsi	# D.10466,
	movq	%rax, %rdi	# unprocessed_instructions.34,
	call	varray_grow	#
	movq	%rax, -232(%rbp)	# unprocessed_instructions.35, unprocessed_instructions
.L105:
	.loc 1 553 0 discriminator 2
	movq	-232(%rbp), %rcx	# unprocessed_instructions, unprocessed_instructions.36
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.37
	movq	8(%rax), %rdx	# unprocessed_instructions.37_151->elements_used, D.10466
	leaq	1(%rdx), %rsi	#, D.10466
	movq	%rsi, 8(%rax)	# D.10466, unprocessed_instructions.37_151->elements_used
	addq	$4, %rdx	#, tmp318
	movq	-112(%rbp), %rax	# jump_insn, tmp319
	movq	%rax, (%rcx,%rdx,8)	# tmp319, unprocessed_instructions.36_150->data.rtx
.L104:
.LBE9:
	cmpq	$0, -200(%rbp)	#, word_
	jne	.L103	#,
	.loc 1 553 0 discriminator 1
	jmp	.L101	#
.L103:
.LBE8:
	.loc 1 553 0 discriminator 2
	addl	$1, -272(%rbp)	#, bit_num_
.L102:
	.loc 1 553 0 discriminator 1
	cmpl	$63, -272(%rbp)	#, bit_num_
	jbe	.L106	#,
.L101:
	.loc 1 553 0 discriminator 2
	movl	$0, -272(%rbp)	#, bit_num_
.LBE7:
	addl	$1, -268(%rbp)	#, word_num_
.L100:
	.loc 1 553 0 discriminator 1
	cmpl	$1, -268(%rbp)	#, word_num_
	jbe	.L107	#,
	.loc 1 553 0 discriminator 3
	movl	$0, -268(%rbp)	#, word_num_
	movq	-208(%rbp), %rax	# ptr_, tmp320
	movq	(%rax), %rax	# ptr__7->next, tmp321
	movq	%rax, -208(%rbp)	# tmp321, ptr_
.L99:
	.loc 1 553 0 discriminator 1
	cmpq	$0, -208(%rbp)	#, ptr_
	jne	.L108	#,
.LBE6:
	.loc 1 566 0 is_stmt 1
	leaq	-232(%rbp), %rdx	#, tmp322
	leaq	-224(%rbp), %rax	#, tmp323
	movl	$propagate_necessity_through_operand, %esi	#,
	movq	%rax, %rdi	# tmp323,
	call	for_each_rtx	#
	.loc 1 578 0
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.38
	testq	%rax, %rax	# current_instruction.38
	je	.L92	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.39
	movzwl	(%rax), %eax	# current_instruction.39_161->code, D.10469
	cmpw	$32, %ax	#, D.10469
	jne	.L92	#,
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.40
	movq	32(%rax), %rax	# current_instruction.40_163->fld[3].rtx, D.10471
	movzwl	(%rax), %eax	# _164->code, D.10469
	cmpw	$47, %ax	#, D.10469
	jne	.L92	#,
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.41
	movq	32(%rax), %rax	# current_instruction.41_166->fld[3].rtx, D.10471
	movq	16(%rax), %rax	# _167->fld[1].rtx, D.10471
	movzwl	(%rax), %eax	# _168->code, D.10469
	cmpw	$152, %ax	#, D.10469
	jne	.L92	#,
.LBB10:
	.loc 1 580 0 is_stmt 1
	movq	-224(%rbp), %rax	# current_instruction, current_instruction.42
	movq	32(%rax), %rax	# current_instruction.42_170->fld[3].rtx, D.10471
	movq	16(%rax), %rax	# _171->fld[1].rtx, D.10471
	movq	8(%rax), %rax	# _172->fld[0].rtvec, tmp324
	movq	%rax, -104(%rbp)	# tmp324, phi_vec
	.loc 1 581 0
	movq	-104(%rbp), %rax	# phi_vec, tmp325
	movl	(%rax), %eax	# phi_vec_173->num_elem, tmp326
	movl	%eax, -240(%rbp)	# tmp326, num_elem
	.loc 1 584 0
	movl	-240(%rbp), %eax	# num_elem, tmp330
	subl	$2, %eax	#, tmp329
	movl	%eax, -264(%rbp)	# tmp329, v
	jmp	.L109	#
.L124:
.LBB11:
	.loc 1 588 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.43
	movl	-264(%rbp), %edx	# v, tmp331
	leal	1(%rdx), %ecx	#, D.10468
	movq	-104(%rbp), %rdx	# phi_vec, tmp332
	movslq	%ecx, %rcx	# D.10468, tmp333
	movq	8(%rdx,%rcx,8), %rdx	# phi_vec_173->elem, D.10471
	movq	8(%rdx), %rdx	# _178->fld[0].rtwint, D.10480
	addq	$4, %rdx	#, tmp334
	movq	(%rax,%rdx,8), %rax	# basic_block_info.43_176->data.bb, tmp335
	movq	%rax, -96(%rbp)	# tmp335, bb
.LBB12:
	.loc 1 589 0
	movq	-144(%rbp), %rax	# cdbte, tmp336
	movq	(%rax), %rcx	# cdbte_38->data, D.10472
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.44
	movq	-96(%rbp), %rdx	# bb, tmp337
	movq	8(%rdx), %rdx	# bb_180->end, D.10471
	movl	8(%rdx), %edx	# _183->fld[0].rtint, D.10468
	movslq	%edx, %rdx	# D.10468, tmp338
	addq	$4, %rdx	#, tmp339
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.44_182->data.bb, D.10473
	movl	88(%rax), %eax	# _185->index, D.10468
	cltq
	addq	$2, %rax	#, D.10474
	salq	$3, %rax	#, D.10474
	addq	%rcx, %rax	# D.10472, D.10472
	movq	(%rax), %rax	# *_190, D.10475
	movq	(%rax), %rax	# _191->first, tmp340
	movq	%rax, -192(%rbp)	# tmp340, ptr_
	movl	$0, -236(%rbp)	#, indx_
	movl	$0, -260(%rbp)	#, bit_num_
	movl	$0, -256(%rbp)	#, word_num_
	jmp	.L110	#
.L112:
	.loc 1 589 0 is_stmt 0 discriminator 1
	movq	-192(%rbp), %rax	# ptr_, tmp341
	movq	(%rax), %rax	# ptr__18->next, tmp342
	movq	%rax, -192(%rbp)	# tmp342, ptr_
.L110:
	cmpq	$0, -192(%rbp)	#, ptr_
	je	.L111	#,
	.loc 1 589 0 discriminator 2
	movq	-192(%rbp), %rax	# ptr_, tmp343
	movl	16(%rax), %eax	# ptr__18->indx, D.10476
	cmpl	-236(%rbp), %eax	# indx_, D.10476
	jb	.L112	#,
.L111:
	.loc 1 589 0 discriminator 3
	cmpq	$0, -192(%rbp)	#, ptr_
	je	.L113	#,
	.loc 1 589 0 discriminator 1
	movq	-192(%rbp), %rax	# ptr_, tmp344
	movl	16(%rax), %eax	# ptr__18->indx, D.10476
	cmpl	-236(%rbp), %eax	# indx_, D.10476
	je	.L113	#,
	movl	$0, -260(%rbp)	#, bit_num_
	movl	$0, -256(%rbp)	#, word_num_
	jmp	.L114	#
.L113:
	.loc 1 589 0 discriminator 2
	jmp	.L114	#
.L123:
	.loc 1 589 0
	jmp	.L115	#
.L122:
.LBB13:
	.loc 1 589 0 discriminator 2
	movq	-192(%rbp), %rax	# ptr_, tmp345
	movl	-256(%rbp), %edx	# word_num_, tmp346
	addq	$2, %rdx	#, tmp347
	movq	8(%rax,%rdx,8), %rax	# ptr__19->bits, tmp348
	movq	%rax, -184(%rbp)	# tmp348, word_
	cmpq	$0, -184(%rbp)	#, word_
	je	.L116	#,
	.loc 1 589 0 discriminator 1
	jmp	.L117	#
.L121:
.LBB14:
	.loc 1 589 0 discriminator 2
	movl	-260(%rbp), %eax	# bit_num_, bit_num_.45
	movl	$1, %edx	#, tmp349
	movl	%eax, %ecx	# bit_num_.45, tmp457
	salq	%cl, %rdx	# tmp457, tmp350
	movq	%rdx, %rax	# tmp350, tmp350
	movq	%rax, -88(%rbp)	# tmp350, mask_
	movq	-88(%rbp), %rax	# mask_, tmp351
	movq	-184(%rbp), %rdx	# word_, tmp352
	andq	%rdx, %rax	# tmp352, D.10466
	testq	%rax, %rax	# D.10466
	je	.L118	#,
	.loc 1 589 0 discriminator 1
	movq	-88(%rbp), %rax	# mask_, tmp353
	notq	%rax	# D.10466
	andq	%rax, -184(%rbp)	# D.10466, word_
	movq	-192(%rbp), %rax	# ptr_, tmp354
	movl	16(%rax), %eax	# ptr__19->indx, D.10476
	leal	(%rax,%rax), %edx	#, D.10476
	movl	-256(%rbp), %eax	# word_num_, tmp355
	addl	%edx, %eax	# D.10476, D.10476
	sall	$6, %eax	#, D.10476
	movl	%eax, %edx	# D.10476, D.10476
	movl	-260(%rbp), %eax	# bit_num_, tmp356
	addl	%edx, %eax	# D.10476, D.10476
	movl	%eax, -244(%rbp)	# D.10476, edge_number
.LBB15:
	movq	-128(%rbp), %rax	# el, tmp357
	movq	8(%rax), %rax	# el_59->index_to_edge, D.10477
	movl	-244(%rbp), %edx	# edge_number, tmp358
	movslq	%edx, %rdx	# tmp358, D.10466
	salq	$3, %rdx	#, D.10466
	addq	%rdx, %rax	# D.10466, D.10477
	movq	(%rax), %rax	# *_216, D.10478
	movq	16(%rax), %rax	# _217->src, D.10473
	movq	8(%rax), %rax	# _218->end, tmp359
	movq	%rax, -80(%rbp)	# tmp359, jump_insn
	movq	-80(%rbp), %rax	# jump_insn, tmp360
	movzwl	(%rax), %eax	# jump_insn_219->code, D.10469
	cmpw	$33, %ax	#, D.10469
	jne	.L119	#,
	movq	-80(%rbp), %rax	# jump_insn, tmp361
	movzbl	3(%rax), %eax	# *jump_insn_219, D.10479
	andl	$16, %eax	#, D.10479
	testb	%al, %al	# D.10479
	je	.L119	#,
	movq	-80(%rbp), %rax	# jump_insn, tmp362
	movzbl	3(%rax), %edx	# jump_insn_219->in_struct, tmp365
	andl	$-17, %edx	#, tmp366
	movb	%dl, 3(%rax)	# tmp366, jump_insn_219->in_struct
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.46
	movq	8(%rax), %rdx	# unprocessed_instructions.46_223->elements_used, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.47
	movq	(%rax), %rax	# unprocessed_instructions.47_225->num_elements, D.10466
	cmpq	%rax, %rdx	# D.10466, D.10466
	jb	.L120	#,
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.48
	movq	(%rax), %rax	# unprocessed_instructions.48_227->num_elements, D.10466
	leaq	(%rax,%rax), %rdx	#, D.10466
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.49
	movq	%rdx, %rsi	# D.10466,
	movq	%rax, %rdi	# unprocessed_instructions.49,
	call	varray_grow	#
	movq	%rax, -232(%rbp)	# unprocessed_instructions.50, unprocessed_instructions
.L120:
	.loc 1 589 0 discriminator 2
	movq	-232(%rbp), %rcx	# unprocessed_instructions, unprocessed_instructions.51
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.52
	movq	8(%rax), %rdx	# unprocessed_instructions.52_233->elements_used, D.10466
	leaq	1(%rdx), %rsi	#, D.10466
	movq	%rsi, 8(%rax)	# D.10466, unprocessed_instructions.52_233->elements_used
	addq	$4, %rdx	#, tmp367
	movq	-80(%rbp), %rax	# jump_insn, tmp368
	movq	%rax, (%rcx,%rdx,8)	# tmp368, unprocessed_instructions.51_232->data.rtx
.L119:
.LBE15:
	cmpq	$0, -184(%rbp)	#, word_
	jne	.L118	#,
	.loc 1 589 0 discriminator 1
	jmp	.L116	#
.L118:
.LBE14:
	.loc 1 589 0 discriminator 2
	addl	$1, -260(%rbp)	#, bit_num_
.L117:
	.loc 1 589 0 discriminator 1
	cmpl	$63, -260(%rbp)	#, bit_num_
	jbe	.L121	#,
.L116:
	.loc 1 589 0 discriminator 2
	movl	$0, -260(%rbp)	#, bit_num_
.LBE13:
	addl	$1, -256(%rbp)	#, word_num_
.L115:
	.loc 1 589 0 discriminator 1
	cmpl	$1, -256(%rbp)	#, word_num_
	jbe	.L122	#,
	.loc 1 589 0 discriminator 3
	movl	$0, -256(%rbp)	#, word_num_
	movq	-192(%rbp), %rax	# ptr_, tmp369
	movq	(%rax), %rax	# ptr__19->next, tmp370
	movq	%rax, -192(%rbp)	# tmp370, ptr_
.L114:
	.loc 1 589 0 discriminator 1
	cmpq	$0, -192(%rbp)	#, ptr_
	jne	.L123	#,
.LBE12:
.LBE11:
	.loc 1 584 0 is_stmt 1
	subl	$2, -264(%rbp)	#, v
.L109:
	.loc 1 584 0 is_stmt 0 discriminator 1
	cmpl	$0, -264(%rbp)	#, v
	jns	.L124	#,
.L92:
.LBE10:
.LBE5:
	.loc 1 536 0 is_stmt 1 discriminator 1
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.53
	movq	8(%rax), %rax	# unprocessed_instructions.53_77->elements_used, D.10466
	testq	%rax, %rax	# D.10466
	jne	.L125	#,
.LBB16:
	.loc 1 609 0
	call	get_insns	#
	movq	%rax, -176(%rbp)	# tmp371, insn
	jmp	.L126	#
.L141:
	.loc 1 609 0 is_stmt 0 discriminator 2
	movq	-176(%rbp), %rax	# insn, tmp372
	movzbl	3(%rax), %eax	# *insn_29, D.10479
	andl	$16, %eax	#, D.10479
	testb	%al, %al	# D.10479
	je	.L127	#,
	.loc 1 609 0 discriminator 1
	movq	-176(%rbp), %rax	# insn, tmp373
	movq	%rax, %rdi	# tmp373,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.10468
	je	.L128	#,
.LBB17:
	movq	basic_block_for_insn(%rip), %rax	# basic_block_for_insn, basic_block_for_insn.54
	movq	-176(%rbp), %rdx	# insn, tmp374
	movl	8(%rdx), %edx	# insn_29->fld[0].rtint, D.10468
	movslq	%edx, %rdx	# D.10468, tmp375
	addq	$4, %rdx	#, tmp376
	movq	(%rax,%rdx,8), %rax	# basic_block_for_insn.54_247->data.bb, tmp377
	movq	%rax, -72(%rbp)	# tmp377, bb
	movq	-72(%rbp), %rdx	# bb, tmp378
	movq	-136(%rbp), %rax	# pdom, tmp379
	movq	%rdx, %rsi	# tmp378,
	movq	%rax, %rdi	# tmp379,
	call	find_pdom	#
	movq	%rax, -64(%rbp)	# tmp380, pdom_bb
	cmpq	$entry_exit_blocks+112, -64(%rbp)	#, pdom_bb
	jne	.L129	#,
	movq	-72(%rbp), %rax	# bb, tmp381
	movq	40(%rax), %rax	# bb_249->succ, tmp382
	movq	%rax, -168(%rbp)	# tmp382, e
	jmp	.L130	#
.L134:
.LBB18:
	.loc 1 609 0 discriminator 2
	movq	-168(%rbp), %rax	# e, tmp383
	movq	%rax, -56(%rbp)	# tmp383, temp
	movq	-168(%rbp), %rax	# e, tmp384
	movq	8(%rax), %rax	# e_30->succ_next, tmp385
	movq	%rax, -168(%rbp)	# tmp385, e
	movq	-56(%rbp), %rax	# temp, tmp386
	movl	48(%rax), %eax	# temp_252->flags, D.10468
	andl	$1, %eax	#, D.10468
	testl	%eax, %eax	# D.10468
	jne	.L130	#,
	.loc 1 609 0 discriminator 1
	movq	-56(%rbp), %rax	# temp, tmp387
	movq	24(%rax), %rax	# temp_252->dest, D.10473
	cmpq	$entry_exit_blocks+112, %rax	#, D.10473
	je	.L131	#,
.LBB19:
	movq	-56(%rbp), %rax	# temp, tmp388
	movq	24(%rax), %rax	# temp_252->dest, D.10473
	movq	%rax, %rdi	# D.10473,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -160(%rbp)	# tmp389, insn
	jmp	.L132	#
.L133:
	movq	-56(%rbp), %rax	# temp, tmp390
	movq	16(%rax), %rdx	# temp_252->src, D.10473
	movq	-160(%rbp), %rax	# insn, tmp391
	movq	32(%rax), %rax	# insn_32->fld[3].rtx, D.10471
	movq	%rdx, %rsi	# D.10473,
	movq	%rax, %rdi	# D.10471,
	call	remove_phi_alternative	#
	movq	-160(%rbp), %rax	# insn, tmp392
	movq	24(%rax), %rax	# insn_32->fld[2].rtx, tmp393
	movq	%rax, -160(%rbp)	# tmp393, insn
.L132:
	cmpq	$0, -160(%rbp)	#, insn
	je	.L131	#,
	.loc 1 609 0 discriminator 2
	movq	-160(%rbp), %rax	# insn, tmp394
	movzwl	(%rax), %eax	# insn_32->code, D.10469
	cmpw	$32, %ax	#, D.10469
	jne	.L131	#,
	.loc 1 609 0 discriminator 1
	movq	-160(%rbp), %rax	# insn, tmp395
	movq	32(%rax), %rax	# insn_32->fld[3].rtx, D.10471
	movzwl	(%rax), %eax	# _260->code, D.10469
	cmpw	$47, %ax	#, D.10469
	jne	.L131	#,
	movq	-160(%rbp), %rax	# insn, tmp396
	movq	32(%rax), %rax	# insn_32->fld[3].rtx, D.10471
	movq	16(%rax), %rax	# _262->fld[1].rtx, D.10471
	movzwl	(%rax), %eax	# _263->code, D.10469
	cmpw	$152, %ax	#, D.10469
	je	.L133	#,
.L131:
.LBE19:
	.loc 1 609 0 discriminator 2
	movq	-56(%rbp), %rax	# temp, tmp397
	movq	%rax, %rdi	# tmp397,
	call	remove_edge	#
.L130:
.LBE18:
	.loc 1 609 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, e
	jne	.L134	#,
	.loc 1 609 0 discriminator 3
	movq	-176(%rbp), %rax	# insn, tmp398
	movw	$37, (%rax)	#, insn_29->code
	movq	-176(%rbp), %rax	# insn, tmp399
	movl	$-99, 40(%rax)	#, insn_29->fld[4].rtint
	jmp	.L127	#
.L129:
	.loc 1 609 0 discriminator 2
	movq	-72(%rbp), %rax	# bb, tmp400
	movq	40(%rax), %rax	# bb_249->succ, tmp401
	movq	%rax, -168(%rbp)	# tmp401, e
	jmp	.L135	#
.L140:
.LBB20:
	movq	-168(%rbp), %rax	# e, tmp402
	movq	%rax, -48(%rbp)	# tmp402, temp
	movq	-168(%rbp), %rax	# e, tmp403
	movq	8(%rax), %rax	# e_31->succ_next, tmp404
	movq	%rax, -168(%rbp)	# tmp404, e
	movq	-48(%rbp), %rax	# temp, tmp405
	movl	48(%rax), %eax	# temp_269->flags, D.10468
	andl	$2, %eax	#, D.10468
	testl	%eax, %eax	# D.10468
	je	.L136	#,
	.loc 1 609 0 discriminator 1
	jmp	.L135	#
.L136:
	.loc 1 609 0 discriminator 2
	movq	-48(%rbp), %rax	# temp, tmp406
	movq	24(%rax), %rax	# temp_269->dest, D.10473
	cmpq	$entry_exit_blocks+112, %rax	#, D.10473
	je	.L137	#,
.LBB21:
	.loc 1 609 0 discriminator 1
	movq	-48(%rbp), %rax	# temp, tmp407
	movq	24(%rax), %rax	# temp_269->dest, D.10473
	movq	%rax, %rdi	# D.10473,
	call	first_insn_after_basic_block_note	#
	movq	%rax, -152(%rbp)	# tmp408, insn
	jmp	.L138	#
.L139:
	movq	-48(%rbp), %rax	# temp, tmp409
	movq	16(%rax), %rdx	# temp_269->src, D.10473
	movq	-152(%rbp), %rax	# insn, tmp410
	movq	32(%rax), %rax	# insn_33->fld[3].rtx, D.10471
	movq	%rdx, %rsi	# D.10473,
	movq	%rax, %rdi	# D.10471,
	call	remove_phi_alternative	#
	movq	-152(%rbp), %rax	# insn, tmp411
	movq	24(%rax), %rax	# insn_33->fld[2].rtx, tmp412
	movq	%rax, -152(%rbp)	# tmp412, insn
.L138:
	cmpq	$0, -152(%rbp)	#, insn
	je	.L137	#,
	.loc 1 609 0 discriminator 2
	movq	-152(%rbp), %rax	# insn, tmp413
	movzwl	(%rax), %eax	# insn_33->code, D.10469
	cmpw	$32, %ax	#, D.10469
	jne	.L137	#,
	.loc 1 609 0 discriminator 1
	movq	-152(%rbp), %rax	# insn, tmp414
	movq	32(%rax), %rax	# insn_33->fld[3].rtx, D.10471
	movzwl	(%rax), %eax	# _277->code, D.10469
	cmpw	$47, %ax	#, D.10469
	jne	.L137	#,
	movq	-152(%rbp), %rax	# insn, tmp415
	movq	32(%rax), %rax	# insn_33->fld[3].rtx, D.10471
	movq	16(%rax), %rax	# _279->fld[1].rtx, D.10471
	movzwl	(%rax), %eax	# _280->code, D.10469
	cmpw	$152, %ax	#, D.10469
	je	.L139	#,
.L137:
.LBE21:
	.loc 1 609 0 discriminator 2
	movq	-48(%rbp), %rax	# temp, tmp416
	movq	%rax, %rdi	# tmp416,
	call	remove_edge	#
.L135:
.LBE20:
	.loc 1 609 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, e
	jne	.L140	#,
	.loc 1 609 0 discriminator 3
	movq	-64(%rbp), %rcx	# pdom_bb, tmp417
	movq	-72(%rbp), %rax	# bb, tmp418
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp417,
	movq	%rax, %rdi	# tmp418,
	call	make_edge	#
	movq	-64(%rbp), %rax	# pdom_bb, tmp419
	movq	%rax, %rdi	# tmp419,
	call	find_block_label	#
	movq	%rax, -40(%rbp)	# tmp420, lbl
	movq	-176(%rbp), %rax	# insn, tmp421
	movq	32(%rax), %rbx	# insn_29->fld[3].rtx, D.10471
	movq	-40(%rbp), %rax	# lbl, tmp422
	movq	%rax, %rdx	# tmp422,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, 16(%rbx)	# D.10471, _286->fld[1].rtx
	movq	-176(%rbp), %rax	# insn, tmp423
	movl	$-1, 40(%rax)	#, insn_29->fld[4].rtint
	movq	-176(%rbp), %rax	# insn, tmp424
	movq	-40(%rbp), %rdx	# lbl, tmp425
	movq	%rdx, 64(%rax)	# tmp425, insn_29->fld[7].rtx
	movq	-40(%rbp), %rax	# lbl, tmp426
	movl	32(%rax), %eax	# lbl_285->fld[3].rtint, D.10468
	leal	1(%rax), %edx	#, D.10468
	movq	-40(%rbp), %rax	# lbl, tmp427
	movl	%edx, 32(%rax)	# D.10468, lbl_285->fld[3].rtint
	movq	-176(%rbp), %rax	# insn, tmp428
	movq	%rax, %rdi	# tmp428,
	call	emit_barrier_after	#
.LBE17:
	jmp	.L127	#
.L128:
	.loc 1 609 0 discriminator 2
	movq	-176(%rbp), %rax	# insn, tmp429
	movzwl	(%rax), %eax	# insn_29->code, D.10469
	cmpw	$33, %ax	#, D.10469
	je	.L127	#,
	.loc 1 609 0 discriminator 1
	movq	-176(%rbp), %rax	# insn, tmp430
	movq	%rax, %rdi	# tmp430,
	call	delete_insn_bb	#
.L127:
	.loc 1 609 0 discriminator 2
	movq	-176(%rbp), %rax	# insn, tmp431
	movq	24(%rax), %rax	# insn_29->fld[2].rtx, tmp432
	movq	%rax, -176(%rbp)	# tmp432, insn
.L126:
	.loc 1 609 0 discriminator 1
	cmpq	$0, -176(%rbp)	#, insn
	jne	.L141	#,
.LBE16:
	.loc 1 716 0 is_stmt 1
	call	remove_fake_edges	#
	.loc 1 721 0
	movl	$0, -276(%rbp)	#, i
	jmp	.L142	#
.L145:
.LBB22:
	.loc 1 723 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.55
	movl	-276(%rbp), %edx	# i, tmp434
	movslq	%edx, %rdx	# tmp434, tmp433
	addq	$4, %rdx	#, tmp435
	movq	(%rax,%rdx,8), %rax	# basic_block_info.55_294->data.bb, tmp436
	movq	%rax, -32(%rbp)	# tmp436, bb
	.loc 1 725 0
	movq	-32(%rbp), %rax	# bb, tmp437
	movq	40(%rax), %rax	# bb_295->succ, D.10478
	testq	%rax, %rax	# D.10478
	jne	.L143	#,
.LBB23:
	.loc 1 727 0
	movq	-32(%rbp), %rax	# bb, tmp438
	movq	8(%rax), %rax	# bb_295->end, D.10471
	movq	24(%rax), %rax	# _297->fld[2].rtx, tmp439
	movq	%rax, -24(%rbp)	# tmp439, next
	.loc 1 729 0
	cmpq	$0, -24(%rbp)	#, next
	je	.L144	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# next, tmp440
	movzwl	(%rax), %eax	# next_298->code, D.10469
	cmpw	$35, %ax	#, D.10469
	je	.L143	#,
.L144:
	.loc 1 730 0 is_stmt 1
	movq	-32(%rbp), %rax	# bb, tmp441
	movq	8(%rax), %rax	# bb_295->end, D.10471
	movq	%rax, %rdi	# D.10471,
	call	emit_barrier_after	#
.L143:
.LBE23:
.LBE22:
	.loc 1 721 0
	addl	$1, -276(%rbp)	#, i
.L142:
	.loc 1 721 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.56
	cmpl	%eax, -276(%rbp)	# n_basic_blocks.56, i
	jl	.L145	#,
	.loc 1 734 0 is_stmt 1
	call	get_insns	#
	movq	%rax, -216(%rbp)	# tmp442, insn
	jmp	.L146	#
.L147:
	.loc 1 735 0 discriminator 2
	movq	-216(%rbp), %rax	# insn, tmp443
	movzbl	3(%rax), %edx	# insn_5->in_struct, tmp446
	andl	$-17, %edx	#, tmp447
	movb	%dl, 3(%rax)	# tmp447, insn_5->in_struct
	.loc 1 734 0 discriminator 2
	movq	-216(%rbp), %rax	# insn, tmp448
	movq	24(%rax), %rax	# insn_5->fld[2].rtx, tmp449
	movq	%rax, -216(%rbp)	# tmp449, insn
.L146:
	.loc 1 734 0 is_stmt 0 discriminator 1
	cmpq	$0, -216(%rbp)	#, insn
	jne	.L147	#,
	.loc 1 736 0 is_stmt 1
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.57
	movq	8(%rax), %rax	# unprocessed_instructions.57_304->elements_used, D.10466
	testq	%rax, %rax	# D.10466
	je	.L148	#,
	.loc 1 737 0
	movl	$__FUNCTION__.9886, %edx	#,
	movl	$737, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L148:
	.loc 1 738 0
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.58
	testq	%rax, %rax	# unprocessed_instructions.58
	je	.L149	#,
	.loc 1 738 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# unprocessed_instructions, unprocessed_instructions.59
	movq	%rax, %rdi	# unprocessed_instructions.59,
	call	free	#
	movq	$0, -232(%rbp)	#, unprocessed_instructions
.L149:
	.loc 1 739 0 is_stmt 1
	movq	-144(%rbp), %rax	# cdbte, tmp450
	movq	%rax, %rdi	# tmp450,
	call	control_dependent_block_to_edge_map_free	#
	.loc 1 740 0
	movq	-136(%rbp), %rax	# pdom, tmp451
	movq	%rax, %rdi	# tmp451,
	call	free	#
	.loc 1 741 0
	movq	-128(%rbp), %rax	# el, tmp452
	movq	%rax, %rdi	# tmp452,
	call	free_edge_list	#
	.loc 1 742 0
	addq	$280, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ssa_eliminate_dead_code, .-ssa_eliminate_dead_code
	.section	.rodata
	.align 32
	.type	__FUNCTION__.9693, @object
	.size	__FUNCTION__.9693, 44
__FUNCTION__.9693:
	.string	"set_control_dependent_block_to_edge_map_bit"
	.align 16
	.type	__FUNCTION__.9718, @object
	.size	__FUNCTION__.9718, 24
__FUNCTION__.9718:
	.string	"find_control_dependence"
	.type	__FUNCTION__.9726, @object
	.size	__FUNCTION__.9726, 10
__FUNCTION__.9726:
	.string	"find_pdom"
	.align 16
	.type	__FUNCTION__.9760, @object
	.size	__FUNCTION__.9760, 26
__FUNCTION__.9760:
	.string	"find_inherently_necessary"
	.type	__FUNCTION__.9784, @object
	.size	__FUNCTION__.9784, 15
__FUNCTION__.9784:
	.string	"delete_insn_bb"
	.align 16
	.type	__FUNCTION__.9886, @object
	.size	__FUNCTION__.9886, 24
__FUNCTION__.9886:
	.string	"ssa_eliminate_dead_code"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "machmode.h"
	.file 6 "bitmap.h"
	.file 7 "basic-block.h"
	.file 8 "varray.h"
	.file 9 "ssa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18c5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF392
	.byte	0x1
	.long	.LASF393
	.long	.LASF394
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
	.long	0x9cf
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
	.long	0x9df
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
	.long	.LASF395
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
	.uleb128 0x3
	.byte	0x8
	.long	0x18b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0xd
	.long	0x18b
	.long	0x1a2
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a8
	.uleb128 0xf
	.long	0x18b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF26
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x3
	.byte	0x8
	.long	0x139
	.uleb128 0x10
	.long	.LASF88
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.long	0x336
	.uleb128 0x11
	.long	.LASF28
	.sleb128 0
	.uleb128 0x11
	.long	.LASF29
	.sleb128 1
	.uleb128 0x11
	.long	.LASF30
	.sleb128 2
	.uleb128 0x11
	.long	.LASF31
	.sleb128 3
	.uleb128 0x11
	.long	.LASF32
	.sleb128 4
	.uleb128 0x11
	.long	.LASF33
	.sleb128 5
	.uleb128 0x11
	.long	.LASF34
	.sleb128 6
	.uleb128 0x11
	.long	.LASF35
	.sleb128 7
	.uleb128 0x11
	.long	.LASF36
	.sleb128 8
	.uleb128 0x11
	.long	.LASF37
	.sleb128 9
	.uleb128 0x11
	.long	.LASF38
	.sleb128 10
	.uleb128 0x11
	.long	.LASF39
	.sleb128 11
	.uleb128 0x11
	.long	.LASF40
	.sleb128 12
	.uleb128 0x11
	.long	.LASF41
	.sleb128 13
	.uleb128 0x11
	.long	.LASF42
	.sleb128 14
	.uleb128 0x11
	.long	.LASF43
	.sleb128 15
	.uleb128 0x11
	.long	.LASF44
	.sleb128 16
	.uleb128 0x11
	.long	.LASF45
	.sleb128 17
	.uleb128 0x11
	.long	.LASF46
	.sleb128 18
	.uleb128 0x11
	.long	.LASF47
	.sleb128 19
	.uleb128 0x11
	.long	.LASF48
	.sleb128 20
	.uleb128 0x11
	.long	.LASF49
	.sleb128 21
	.uleb128 0x11
	.long	.LASF50
	.sleb128 22
	.uleb128 0x11
	.long	.LASF51
	.sleb128 23
	.uleb128 0x11
	.long	.LASF52
	.sleb128 24
	.uleb128 0x11
	.long	.LASF53
	.sleb128 25
	.uleb128 0x11
	.long	.LASF54
	.sleb128 26
	.uleb128 0x11
	.long	.LASF55
	.sleb128 27
	.uleb128 0x11
	.long	.LASF56
	.sleb128 28
	.uleb128 0x11
	.long	.LASF57
	.sleb128 29
	.uleb128 0x11
	.long	.LASF58
	.sleb128 30
	.uleb128 0x11
	.long	.LASF59
	.sleb128 31
	.uleb128 0x11
	.long	.LASF60
	.sleb128 32
	.uleb128 0x11
	.long	.LASF61
	.sleb128 33
	.uleb128 0x11
	.long	.LASF62
	.sleb128 34
	.uleb128 0x11
	.long	.LASF63
	.sleb128 35
	.uleb128 0x11
	.long	.LASF64
	.sleb128 36
	.uleb128 0x11
	.long	.LASF65
	.sleb128 37
	.uleb128 0x11
	.long	.LASF66
	.sleb128 38
	.uleb128 0x11
	.long	.LASF67
	.sleb128 39
	.uleb128 0x11
	.long	.LASF68
	.sleb128 40
	.uleb128 0x11
	.long	.LASF69
	.sleb128 41
	.uleb128 0x11
	.long	.LASF70
	.sleb128 42
	.uleb128 0x11
	.long	.LASF71
	.sleb128 43
	.uleb128 0x11
	.long	.LASF72
	.sleb128 44
	.uleb128 0x11
	.long	.LASF73
	.sleb128 45
	.uleb128 0x11
	.long	.LASF74
	.sleb128 46
	.uleb128 0x11
	.long	.LASF75
	.sleb128 47
	.uleb128 0x11
	.long	.LASF76
	.sleb128 48
	.uleb128 0x11
	.long	.LASF77
	.sleb128 49
	.uleb128 0x11
	.long	.LASF78
	.sleb128 50
	.uleb128 0x11
	.long	.LASF79
	.sleb128 51
	.uleb128 0x11
	.long	.LASF80
	.sleb128 52
	.uleb128 0x11
	.long	.LASF81
	.sleb128 53
	.uleb128 0x11
	.long	.LASF82
	.sleb128 54
	.uleb128 0x11
	.long	.LASF83
	.sleb128 55
	.uleb128 0x11
	.long	.LASF84
	.sleb128 56
	.uleb128 0x11
	.long	.LASF85
	.sleb128 57
	.uleb128 0x11
	.long	.LASF86
	.sleb128 58
	.uleb128 0x11
	.long	.LASF87
	.sleb128 59
	.byte	0
	.uleb128 0x10
	.long	.LASF89
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x732
	.uleb128 0x11
	.long	.LASF90
	.sleb128 0
	.uleb128 0x12
	.string	"NIL"
	.sleb128 1
	.uleb128 0x11
	.long	.LASF91
	.sleb128 2
	.uleb128 0x11
	.long	.LASF92
	.sleb128 3
	.uleb128 0x11
	.long	.LASF93
	.sleb128 4
	.uleb128 0x11
	.long	.LASF94
	.sleb128 5
	.uleb128 0x11
	.long	.LASF95
	.sleb128 6
	.uleb128 0x11
	.long	.LASF96
	.sleb128 7
	.uleb128 0x11
	.long	.LASF97
	.sleb128 8
	.uleb128 0x11
	.long	.LASF98
	.sleb128 9
	.uleb128 0x11
	.long	.LASF99
	.sleb128 10
	.uleb128 0x11
	.long	.LASF100
	.sleb128 11
	.uleb128 0x11
	.long	.LASF101
	.sleb128 12
	.uleb128 0x11
	.long	.LASF102
	.sleb128 13
	.uleb128 0x11
	.long	.LASF103
	.sleb128 14
	.uleb128 0x11
	.long	.LASF104
	.sleb128 15
	.uleb128 0x11
	.long	.LASF105
	.sleb128 16
	.uleb128 0x11
	.long	.LASF106
	.sleb128 17
	.uleb128 0x11
	.long	.LASF107
	.sleb128 18
	.uleb128 0x11
	.long	.LASF108
	.sleb128 19
	.uleb128 0x11
	.long	.LASF109
	.sleb128 20
	.uleb128 0x11
	.long	.LASF110
	.sleb128 21
	.uleb128 0x11
	.long	.LASF111
	.sleb128 22
	.uleb128 0x11
	.long	.LASF112
	.sleb128 23
	.uleb128 0x11
	.long	.LASF113
	.sleb128 24
	.uleb128 0x11
	.long	.LASF114
	.sleb128 25
	.uleb128 0x11
	.long	.LASF115
	.sleb128 26
	.uleb128 0x11
	.long	.LASF116
	.sleb128 27
	.uleb128 0x11
	.long	.LASF117
	.sleb128 28
	.uleb128 0x11
	.long	.LASF118
	.sleb128 29
	.uleb128 0x11
	.long	.LASF119
	.sleb128 30
	.uleb128 0x11
	.long	.LASF120
	.sleb128 31
	.uleb128 0x11
	.long	.LASF121
	.sleb128 32
	.uleb128 0x11
	.long	.LASF122
	.sleb128 33
	.uleb128 0x11
	.long	.LASF123
	.sleb128 34
	.uleb128 0x11
	.long	.LASF124
	.sleb128 35
	.uleb128 0x11
	.long	.LASF125
	.sleb128 36
	.uleb128 0x11
	.long	.LASF126
	.sleb128 37
	.uleb128 0x11
	.long	.LASF127
	.sleb128 38
	.uleb128 0x11
	.long	.LASF128
	.sleb128 39
	.uleb128 0x11
	.long	.LASF129
	.sleb128 40
	.uleb128 0x11
	.long	.LASF130
	.sleb128 41
	.uleb128 0x11
	.long	.LASF131
	.sleb128 42
	.uleb128 0x11
	.long	.LASF132
	.sleb128 43
	.uleb128 0x11
	.long	.LASF133
	.sleb128 44
	.uleb128 0x11
	.long	.LASF134
	.sleb128 45
	.uleb128 0x11
	.long	.LASF135
	.sleb128 46
	.uleb128 0x12
	.string	"SET"
	.sleb128 47
	.uleb128 0x12
	.string	"USE"
	.sleb128 48
	.uleb128 0x11
	.long	.LASF136
	.sleb128 49
	.uleb128 0x11
	.long	.LASF137
	.sleb128 50
	.uleb128 0x11
	.long	.LASF138
	.sleb128 51
	.uleb128 0x11
	.long	.LASF139
	.sleb128 52
	.uleb128 0x11
	.long	.LASF140
	.sleb128 53
	.uleb128 0x11
	.long	.LASF141
	.sleb128 54
	.uleb128 0x11
	.long	.LASF142
	.sleb128 55
	.uleb128 0x11
	.long	.LASF143
	.sleb128 56
	.uleb128 0x11
	.long	.LASF144
	.sleb128 57
	.uleb128 0x11
	.long	.LASF145
	.sleb128 58
	.uleb128 0x12
	.string	"PC"
	.sleb128 59
	.uleb128 0x11
	.long	.LASF146
	.sleb128 60
	.uleb128 0x12
	.string	"REG"
	.sleb128 61
	.uleb128 0x11
	.long	.LASF147
	.sleb128 62
	.uleb128 0x11
	.long	.LASF148
	.sleb128 63
	.uleb128 0x11
	.long	.LASF149
	.sleb128 64
	.uleb128 0x11
	.long	.LASF150
	.sleb128 65
	.uleb128 0x12
	.string	"MEM"
	.sleb128 66
	.uleb128 0x11
	.long	.LASF151
	.sleb128 67
	.uleb128 0x11
	.long	.LASF152
	.sleb128 68
	.uleb128 0x12
	.string	"CC0"
	.sleb128 69
	.uleb128 0x11
	.long	.LASF153
	.sleb128 70
	.uleb128 0x11
	.long	.LASF154
	.sleb128 71
	.uleb128 0x11
	.long	.LASF155
	.sleb128 72
	.uleb128 0x11
	.long	.LASF156
	.sleb128 73
	.uleb128 0x11
	.long	.LASF157
	.sleb128 74
	.uleb128 0x11
	.long	.LASF158
	.sleb128 75
	.uleb128 0x11
	.long	.LASF159
	.sleb128 76
	.uleb128 0x12
	.string	"NEG"
	.sleb128 77
	.uleb128 0x11
	.long	.LASF160
	.sleb128 78
	.uleb128 0x12
	.string	"DIV"
	.sleb128 79
	.uleb128 0x12
	.string	"MOD"
	.sleb128 80
	.uleb128 0x11
	.long	.LASF161
	.sleb128 81
	.uleb128 0x11
	.long	.LASF162
	.sleb128 82
	.uleb128 0x12
	.string	"AND"
	.sleb128 83
	.uleb128 0x12
	.string	"IOR"
	.sleb128 84
	.uleb128 0x12
	.string	"XOR"
	.sleb128 85
	.uleb128 0x12
	.string	"NOT"
	.sleb128 86
	.uleb128 0x11
	.long	.LASF163
	.sleb128 87
	.uleb128 0x11
	.long	.LASF164
	.sleb128 88
	.uleb128 0x11
	.long	.LASF165
	.sleb128 89
	.uleb128 0x11
	.long	.LASF166
	.sleb128 90
	.uleb128 0x11
	.long	.LASF167
	.sleb128 91
	.uleb128 0x11
	.long	.LASF168
	.sleb128 92
	.uleb128 0x11
	.long	.LASF169
	.sleb128 93
	.uleb128 0x11
	.long	.LASF170
	.sleb128 94
	.uleb128 0x11
	.long	.LASF171
	.sleb128 95
	.uleb128 0x11
	.long	.LASF172
	.sleb128 96
	.uleb128 0x11
	.long	.LASF173
	.sleb128 97
	.uleb128 0x11
	.long	.LASF174
	.sleb128 98
	.uleb128 0x11
	.long	.LASF175
	.sleb128 99
	.uleb128 0x11
	.long	.LASF176
	.sleb128 100
	.uleb128 0x11
	.long	.LASF177
	.sleb128 101
	.uleb128 0x12
	.string	"NE"
	.sleb128 102
	.uleb128 0x12
	.string	"EQ"
	.sleb128 103
	.uleb128 0x12
	.string	"GE"
	.sleb128 104
	.uleb128 0x12
	.string	"GT"
	.sleb128 105
	.uleb128 0x12
	.string	"LE"
	.sleb128 106
	.uleb128 0x12
	.string	"LT"
	.sleb128 107
	.uleb128 0x12
	.string	"GEU"
	.sleb128 108
	.uleb128 0x12
	.string	"GTU"
	.sleb128 109
	.uleb128 0x12
	.string	"LEU"
	.sleb128 110
	.uleb128 0x12
	.string	"LTU"
	.sleb128 111
	.uleb128 0x11
	.long	.LASF178
	.sleb128 112
	.uleb128 0x11
	.long	.LASF179
	.sleb128 113
	.uleb128 0x11
	.long	.LASF180
	.sleb128 114
	.uleb128 0x11
	.long	.LASF181
	.sleb128 115
	.uleb128 0x11
	.long	.LASF182
	.sleb128 116
	.uleb128 0x11
	.long	.LASF183
	.sleb128 117
	.uleb128 0x11
	.long	.LASF184
	.sleb128 118
	.uleb128 0x11
	.long	.LASF185
	.sleb128 119
	.uleb128 0x11
	.long	.LASF186
	.sleb128 120
	.uleb128 0x11
	.long	.LASF187
	.sleb128 121
	.uleb128 0x11
	.long	.LASF188
	.sleb128 122
	.uleb128 0x11
	.long	.LASF189
	.sleb128 123
	.uleb128 0x11
	.long	.LASF190
	.sleb128 124
	.uleb128 0x11
	.long	.LASF191
	.sleb128 125
	.uleb128 0x12
	.string	"FIX"
	.sleb128 126
	.uleb128 0x11
	.long	.LASF192
	.sleb128 127
	.uleb128 0x11
	.long	.LASF193
	.sleb128 128
	.uleb128 0x12
	.string	"ABS"
	.sleb128 129
	.uleb128 0x11
	.long	.LASF194
	.sleb128 130
	.uleb128 0x12
	.string	"FFS"
	.sleb128 131
	.uleb128 0x11
	.long	.LASF195
	.sleb128 132
	.uleb128 0x11
	.long	.LASF196
	.sleb128 133
	.uleb128 0x11
	.long	.LASF197
	.sleb128 134
	.uleb128 0x11
	.long	.LASF198
	.sleb128 135
	.uleb128 0x11
	.long	.LASF199
	.sleb128 136
	.uleb128 0x11
	.long	.LASF200
	.sleb128 137
	.uleb128 0x11
	.long	.LASF201
	.sleb128 138
	.uleb128 0x11
	.long	.LASF202
	.sleb128 139
	.uleb128 0x11
	.long	.LASF203
	.sleb128 140
	.uleb128 0x11
	.long	.LASF204
	.sleb128 141
	.uleb128 0x11
	.long	.LASF205
	.sleb128 142
	.uleb128 0x11
	.long	.LASF206
	.sleb128 143
	.uleb128 0x11
	.long	.LASF207
	.sleb128 144
	.uleb128 0x11
	.long	.LASF208
	.sleb128 145
	.uleb128 0x11
	.long	.LASF209
	.sleb128 146
	.uleb128 0x11
	.long	.LASF210
	.sleb128 147
	.uleb128 0x11
	.long	.LASF211
	.sleb128 148
	.uleb128 0x11
	.long	.LASF212
	.sleb128 149
	.uleb128 0x11
	.long	.LASF213
	.sleb128 150
	.uleb128 0x11
	.long	.LASF214
	.sleb128 151
	.uleb128 0x12
	.string	"PHI"
	.sleb128 152
	.uleb128 0x11
	.long	.LASF215
	.sleb128 153
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x7b3
	.uleb128 0x5
	.long	.LASF216
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF217
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF218
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF219
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF220
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF221
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF222
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF223
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF224
	.byte	0x2
	.byte	0x56
	.long	0x732
	.uleb128 0x13
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x803
	.uleb128 0x8
	.long	.LASF225
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF226
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF227
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF228
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF229
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF230
	.byte	0x2
	.byte	0x63
	.long	0x7be
	.uleb128 0x14
	.long	.LASF305
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x8a9
	.uleb128 0x15
	.long	.LASF231
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x15
	.long	.LASF232
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x15
	.long	.LASF233
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x15
	.long	.LASF234
	.byte	0x2
	.byte	0x6c
	.long	0x1a2
	.uleb128 0x16
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x15
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x15
	.long	.LASF235
	.byte	0x2
	.byte	0x6f
	.long	0x1c1
	.uleb128 0x15
	.long	.LASF236
	.byte	0x2
	.byte	0x70
	.long	0x7b3
	.uleb128 0x15
	.long	.LASF237
	.byte	0x2
	.byte	0x71
	.long	0x8ae
	.uleb128 0x15
	.long	.LASF238
	.byte	0x2
	.byte	0x72
	.long	0x8e5
	.uleb128 0x15
	.long	.LASF239
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x16
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x9b8
	.uleb128 0x15
	.long	.LASF240
	.byte	0x2
	.byte	0x75
	.long	0x9be
	.byte	0
	.uleb128 0x17
	.long	.LASF313
	.uleb128 0x3
	.byte	0x8
	.long	0x8a9
	.uleb128 0x4
	.long	.LASF241
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.long	0x8e5
	.uleb128 0x8
	.long	.LASF242
	.byte	0x6
	.byte	0x35
	.long	0xb58
	.byte	0
	.uleb128 0x8
	.long	.LASF243
	.byte	0x6
	.byte	0x36
	.long	0xb58
	.byte	0x8
	.uleb128 0x8
	.long	.LASF244
	.byte	0x6
	.byte	0x37
	.long	0x147
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8b4
	.uleb128 0x4
	.long	.LASF245
	.byte	0x70
	.byte	0x7
	.byte	0xae
	.long	0x9b8
	.uleb128 0x8
	.long	.LASF246
	.byte	0x7
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x7
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF247
	.byte	0x7
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF248
	.byte	0x7
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF249
	.byte	0x7
	.byte	0xb7
	.long	0xeae
	.byte	0x20
	.uleb128 0x8
	.long	.LASF250
	.byte	0x7
	.byte	0xb7
	.long	0xeae
	.byte	0x28
	.uleb128 0x8
	.long	.LASF251
	.byte	0x7
	.byte	0xbc
	.long	0xe19
	.byte	0x30
	.uleb128 0x8
	.long	.LASF252
	.byte	0x7
	.byte	0xc0
	.long	0xe19
	.byte	0x38
	.uleb128 0x8
	.long	.LASF253
	.byte	0x7
	.byte	0xc6
	.long	0xe19
	.byte	0x40
	.uleb128 0x8
	.long	.LASF254
	.byte	0x7
	.byte	0xc8
	.long	0xe19
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0xcb
	.long	0x14e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF255
	.byte	0x7
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF256
	.byte	0x7
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF257
	.byte	0x7
	.byte	0xd4
	.long	0xe24
	.byte	0x60
	.uleb128 0x8
	.long	.LASF258
	.byte	0x7
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF259
	.byte	0x7
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8eb
	.uleb128 0x3
	.byte	0x8
	.long	0x803
	.uleb128 0x7
	.long	.LASF260
	.byte	0x2
	.byte	0x76
	.long	0x80e
	.uleb128 0xd
	.long	0x9c4
	.long	0x9df
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.long	0x9ef
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF261
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xa9e
	.uleb128 0x11
	.long	.LASF262
	.sleb128 -100
	.uleb128 0x11
	.long	.LASF263
	.sleb128 -99
	.uleb128 0x11
	.long	.LASF264
	.sleb128 -98
	.uleb128 0x11
	.long	.LASF265
	.sleb128 -97
	.uleb128 0x11
	.long	.LASF266
	.sleb128 -96
	.uleb128 0x11
	.long	.LASF267
	.sleb128 -95
	.uleb128 0x11
	.long	.LASF268
	.sleb128 -94
	.uleb128 0x11
	.long	.LASF269
	.sleb128 -93
	.uleb128 0x11
	.long	.LASF270
	.sleb128 -92
	.uleb128 0x11
	.long	.LASF271
	.sleb128 -91
	.uleb128 0x11
	.long	.LASF272
	.sleb128 -90
	.uleb128 0x11
	.long	.LASF273
	.sleb128 -89
	.uleb128 0x11
	.long	.LASF274
	.sleb128 -88
	.uleb128 0x11
	.long	.LASF275
	.sleb128 -87
	.uleb128 0x11
	.long	.LASF276
	.sleb128 -86
	.uleb128 0x11
	.long	.LASF277
	.sleb128 -85
	.uleb128 0x11
	.long	.LASF278
	.sleb128 -84
	.uleb128 0x11
	.long	.LASF279
	.sleb128 -83
	.uleb128 0x11
	.long	.LASF280
	.sleb128 -82
	.uleb128 0x11
	.long	.LASF281
	.sleb128 -81
	.uleb128 0x11
	.long	.LASF282
	.sleb128 -80
	.uleb128 0x11
	.long	.LASF283
	.sleb128 -79
	.uleb128 0x11
	.long	.LASF284
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x18
	.long	.LASF285
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xafa
	.uleb128 0x11
	.long	.LASF286
	.sleb128 0
	.uleb128 0x11
	.long	.LASF287
	.sleb128 1
	.uleb128 0x11
	.long	.LASF288
	.sleb128 2
	.uleb128 0x11
	.long	.LASF289
	.sleb128 3
	.uleb128 0x11
	.long	.LASF290
	.sleb128 4
	.uleb128 0x11
	.long	.LASF291
	.sleb128 5
	.uleb128 0x11
	.long	.LASF292
	.sleb128 6
	.uleb128 0x11
	.long	.LASF293
	.sleb128 7
	.uleb128 0x11
	.long	.LASF294
	.sleb128 8
	.uleb128 0x11
	.long	.LASF295
	.sleb128 9
	.uleb128 0x11
	.long	.LASF296
	.sleb128 10
	.uleb128 0x11
	.long	.LASF297
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF298
	.byte	0x28
	.byte	0x6
	.byte	0x2b
	.long	0xb37
	.uleb128 0x8
	.long	.LASF299
	.byte	0x6
	.byte	0x2d
	.long	0xb37
	.byte	0
	.uleb128 0x8
	.long	.LASF300
	.byte	0x6
	.byte	0x2e
	.long	0xb37
	.byte	0x8
	.uleb128 0x8
	.long	.LASF244
	.byte	0x6
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF301
	.byte	0x6
	.byte	0x30
	.long	0xb3d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xafa
	.uleb128 0xd
	.long	0x162
	.long	0xb4d
	.uleb128 0xe
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF302
	.byte	0x6
	.byte	0x31
	.long	0xafa
	.uleb128 0x3
	.byte	0x8
	.long	0xb4d
	.uleb128 0x7
	.long	.LASF303
	.byte	0x6
	.byte	0x39
	.long	0x8e5
	.uleb128 0xd
	.long	0x162
	.long	0xb79
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF304
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.long	0xb9e
	.uleb128 0x6
	.string	"rtx"
	.byte	0x8
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0x8
	.byte	0x36
	.long	0x147
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF306
	.byte	0x10
	.byte	0x8
	.byte	0x3a
	.long	0xc83
	.uleb128 0x16
	.string	"c"
	.byte	0x8
	.byte	0x3b
	.long	0x192
	.uleb128 0x16
	.string	"uc"
	.byte	0x8
	.byte	0x3c
	.long	0xc83
	.uleb128 0x16
	.string	"s"
	.byte	0x8
	.byte	0x3d
	.long	0xc93
	.uleb128 0x16
	.string	"us"
	.byte	0x8
	.byte	0x3e
	.long	0xca3
	.uleb128 0x16
	.string	"i"
	.byte	0x8
	.byte	0x3f
	.long	0xcb3
	.uleb128 0x16
	.string	"u"
	.byte	0x8
	.byte	0x40
	.long	0xcc3
	.uleb128 0x16
	.string	"l"
	.byte	0x8
	.byte	0x41
	.long	0xcd3
	.uleb128 0x16
	.string	"ul"
	.byte	0x8
	.byte	0x42
	.long	0xb69
	.uleb128 0x15
	.long	.LASF307
	.byte	0x8
	.byte	0x43
	.long	0xcd3
	.uleb128 0x15
	.long	.LASF308
	.byte	0x8
	.byte	0x44
	.long	0xb69
	.uleb128 0x15
	.long	.LASF309
	.byte	0x8
	.byte	0x45
	.long	0xce3
	.uleb128 0x15
	.long	.LASF310
	.byte	0x8
	.byte	0x46
	.long	0xcf3
	.uleb128 0x16
	.string	"rtx"
	.byte	0x8
	.byte	0x47
	.long	0xd03
	.uleb128 0x15
	.long	.LASF10
	.byte	0x8
	.byte	0x48
	.long	0xd13
	.uleb128 0x15
	.long	.LASF15
	.byte	0x8
	.byte	0x49
	.long	0xd23
	.uleb128 0x15
	.long	.LASF303
	.byte	0x8
	.byte	0x4a
	.long	0xd33
	.uleb128 0x15
	.long	.LASF311
	.byte	0x8
	.byte	0x4b
	.long	0xd43
	.uleb128 0x16
	.string	"reg"
	.byte	0x8
	.byte	0x4c
	.long	0xd5e
	.uleb128 0x15
	.long	.LASF312
	.byte	0x8
	.byte	0x4d
	.long	0xd79
	.uleb128 0x16
	.string	"bb"
	.byte	0x8
	.byte	0x4e
	.long	0xd89
	.uleb128 0x16
	.string	"te"
	.byte	0x8
	.byte	0x4f
	.long	0xd99
	.byte	0
	.uleb128 0xd
	.long	0x169
	.long	0xc93
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17e
	.long	0xca3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x170
	.long	0xcb3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x139
	.long	0xcc3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x147
	.long	0xcd3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x150
	.long	0xce3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x14e
	.long	0xcf3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x185
	.long	0xd03
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x38
	.long	0xd13
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xf8
	.long	0xd23
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x12e
	.long	0xd33
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x8e5
	.long	0xd43
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xd53
	.long	0xd53
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd59
	.uleb128 0x17
	.long	.LASF314
	.uleb128 0xd
	.long	0xd6e
	.long	0xd6e
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd74
	.uleb128 0x17
	.long	.LASF315
	.uleb128 0xd
	.long	0xb79
	.long	0xd89
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x9b8
	.long	0xd99
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xda9
	.long	0xda9
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xdaf
	.uleb128 0x17
	.long	.LASF316
	.uleb128 0x7
	.long	.LASF317
	.byte	0x8
	.byte	0x50
	.long	0xb9e
	.uleb128 0x4
	.long	.LASF318
	.byte	0x30
	.byte	0x8
	.byte	0x53
	.long	0xe08
	.uleb128 0x8
	.long	.LASF319
	.byte	0x8
	.byte	0x54
	.long	0x157
	.byte	0
	.uleb128 0x8
	.long	.LASF320
	.byte	0x8
	.byte	0x55
	.long	0x157
	.byte	0x8
	.uleb128 0x8
	.long	.LASF321
	.byte	0x8
	.byte	0x57
	.long	0x157
	.byte	0x10
	.uleb128 0x8
	.long	.LASF322
	.byte	0x8
	.byte	0x58
	.long	0x1a2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF323
	.byte	0x8
	.byte	0x59
	.long	0xdb4
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF324
	.byte	0x8
	.byte	0x5a
	.long	0xe13
	.uleb128 0x3
	.byte	0x8
	.long	0xdbf
	.uleb128 0x7
	.long	.LASF325
	.byte	0x7
	.byte	0x21
	.long	0xb5e
	.uleb128 0x7
	.long	.LASF326
	.byte	0x7
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF327
	.byte	0x40
	.byte	0x7
	.byte	0x77
	.long	0xea8
	.uleb128 0x8
	.long	.LASF328
	.byte	0x7
	.byte	0x79
	.long	0xea8
	.byte	0
	.uleb128 0x8
	.long	.LASF329
	.byte	0x7
	.byte	0x79
	.long	0xea8
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x7
	.byte	0x7c
	.long	0x9b8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF330
	.byte	0x7
	.byte	0x7c
	.long	0x9b8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF331
	.byte	0x7
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x7
	.byte	0x82
	.long	0x14e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF259
	.byte	0x7
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF332
	.byte	0x7
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF257
	.byte	0x7
	.byte	0x86
	.long	0xe24
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe2f
	.uleb128 0x7
	.long	.LASF333
	.byte	0x7
	.byte	0x88
	.long	0xea8
	.uleb128 0x7
	.long	.LASF334
	.byte	0x7
	.byte	0xdb
	.long	0x9b8
	.uleb128 0x3
	.byte	0x8
	.long	0xeae
	.uleb128 0x19
	.long	.LASF335
	.byte	0x10
	.byte	0x7
	.value	0x1f0
	.long	0xeff
	.uleb128 0x1a
	.long	.LASF336
	.byte	0x7
	.value	0x1f2
	.long	0x139
	.byte	0
	.uleb128 0x1a
	.long	.LASF337
	.byte	0x7
	.value	0x1f3
	.long	0x139
	.byte	0x4
	.uleb128 0x1a
	.long	.LASF338
	.byte	0x7
	.value	0x1f4
	.long	0xec4
	.byte	0x8
	.byte	0
	.uleb128 0x18
	.long	.LASF339
	.byte	0x4
	.byte	0x7
	.value	0x2c1
	.long	0xf19
	.uleb128 0x11
	.long	.LASF340
	.sleb128 0
	.uleb128 0x11
	.long	.LASF341
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.byte	0x10
	.byte	0x1
	.byte	0x53
	.long	0xf3a
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1
	.byte	0x57
	.long	0xf3a
	.byte	0
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1
	.byte	0x59
	.long	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xb5e
	.uleb128 0x7
	.long	.LASF343
	.byte	0x1
	.byte	0x5a
	.long	0xf4b
	.uleb128 0x3
	.byte	0x8
	.long	0xf19
	.uleb128 0x1b
	.long	.LASF355
	.byte	0x1
	.byte	0xa0
	.long	0xf40
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf99
	.uleb128 0x1c
	.long	.LASF344
	.byte	0x1
	.byte	0xa1
	.long	0x157
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.byte	0xa4
	.long	0xf40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1e
	.long	.LASF346
	.byte	0x1
	.byte	0xb3
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xff1
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0xb4
	.long	0xf40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"bb"
	.byte	0x1
	.byte	0xb5
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF345
	.byte	0x1
	.byte	0xb6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF354
	.long	0x1001
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9693
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0x1001
	.uleb128 0xe
	.long	0x140
	.byte	0x2b
	.byte	0
	.uleb128 0xf
	.long	0xff1
	.uleb128 0x1e
	.long	.LASF347
	.byte	0x1
	.byte	0xcc
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x103c
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.byte	0xcd
	.long	0xf40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF348
	.byte	0x1
	.byte	0xdb
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x108f
	.uleb128 0x1f
	.string	"el"
	.byte	0x1
	.byte	0xdc
	.long	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF349
	.byte	0x1
	.byte	0xdd
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF350
	.byte	0x1
	.byte	0xde
	.long	0xf40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xeca
	.uleb128 0x1e
	.long	.LASF351
	.byte	0x1
	.byte	0xed
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1119
	.uleb128 0x1f
	.string	"el"
	.byte	0x1
	.byte	0xee
	.long	0x108f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF345
	.byte	0x1
	.byte	0xef
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF349
	.byte	0x1
	.byte	0xf0
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF350
	.byte	0x1
	.byte	0xf1
	.long	0xf40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF352
	.byte	0x1
	.byte	0xf3
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF353
	.byte	0x1
	.byte	0xf4
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF354
	.long	0x1129
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9718
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0x1129
	.uleb128 0xe
	.long	0x140
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.long	0x1119
	.uleb128 0x22
	.long	.LASF356
	.byte	0x1
	.value	0x10c
	.long	0xeb9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1182
	.uleb128 0x23
	.long	.LASF349
	.byte	0x1
	.value	0x10d
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF357
	.byte	0x1
	.value	0x10e
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF354
	.long	0x1192
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9726
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0x1192
	.uleb128 0xe
	.long	0x140
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.long	0x1182
	.uleb128 0x24
	.long	.LASF358
	.byte	0x1
	.value	0x126
	.long	0x139
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e5
	.uleb128 0x23
	.long	.LASF359
	.byte	0x1
	.value	0x127
	.long	0xa9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF323
	.byte	0x1
	.value	0x128
	.long	0x14e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x12a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF360
	.byte	0x1
	.value	0x146
	.long	0x139
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1217
	.uleb128 0x23
	.long	.LASF359
	.byte	0x1
	.value	0x147
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF361
	.byte	0x1
	.value	0x153
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1272
	.uleb128 0x23
	.long	.LASF330
	.byte	0x1
	.value	0x155
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"set"
	.byte	0x1
	.value	0x154
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF323
	.byte	0x1
	.value	0x156
	.long	0x14e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF362
	.byte	0x1
	.value	0x158
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF363
	.byte	0x1
	.value	0x16c
	.long	0x139
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x12d6
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x16d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF354
	.long	0x12e6
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9760
	.uleb128 0x29
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.long	.LASF364
	.byte	0x1
	.value	0x181
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0x12e6
	.uleb128 0xe
	.long	0x140
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.long	0x12d6
	.uleb128 0x22
	.long	.LASF365
	.byte	0x1
	.value	0x19a
	.long	0x139
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1369
	.uleb128 0x23
	.long	.LASF359
	.byte	0x1
	.value	0x19b
	.long	0xa9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF323
	.byte	0x1
	.value	0x19c
	.long	0x14e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x19e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF366
	.byte	0x1
	.value	0x19f
	.long	0x1369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x1a8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe08
	.uleb128 0x2a
	.long	.LASF368
	.byte	0x1
	.value	0x1b9
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x139d
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x1bb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF369
	.byte	0x1
	.value	0x1c3
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x13fe
	.uleb128 0x27
	.string	"bb"
	.byte	0x1
	.value	0x1c4
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x1c6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.long	.LASF370
	.byte	0x1
	.value	0x1cb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF371
	.byte	0x1
	.value	0x1d5
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x143f
	.uleb128 0x23
	.long	.LASF367
	.byte	0x1
	.value	0x1d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF354
	.long	0x144f
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9784
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0x144f
	.uleb128 0xe
	.long	0x140
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.long	0x143f
	.uleb128 0x2b
	.long	.LASF396
	.byte	0x1
	.value	0x1e9
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x183e
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x1eb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x1ec
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.long	.LASF366
	.byte	0x1
	.value	0x1ee
	.long	0xe08
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.long	.LASF350
	.byte	0x1
	.value	0x1f1
	.long	0xf40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF349
	.byte	0x1
	.value	0x1f3
	.long	0x1bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.string	"el"
	.byte	0x1
	.value	0x1f4
	.long	0x108f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF372
	.byte	0x1
	.value	0x1f6
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x20
	.long	.LASF354
	.long	0x183e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9886
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x16fd
	.uleb128 0x28
	.long	.LASF373
	.byte	0x1
	.value	0x21a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.long	.LASF374
	.byte	0x1
	.value	0x21b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x2c
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x15e3
	.uleb128 0x28
	.long	.LASF375
	.byte	0x1
	.value	0x229
	.long	0xb58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0x229
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.value	0x229
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x28
	.long	.LASF378
	.byte	0x1
	.value	0x229
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x29
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.long	.LASF379
	.byte	0x1
	.value	0x229
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x29
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF380
	.byte	0x1
	.value	0x229
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x28
	.long	.LASF381
	.byte	0x1
	.value	0x229
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x28
	.long	.LASF382
	.byte	0x1
	.value	0x244
	.long	0xed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF13
	.byte	0x1
	.value	0x245
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.value	0x246
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x29
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x24a
	.long	0xeb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x28
	.long	.LASF375
	.byte	0x1
	.value	0x24d
	.long	0xb58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0x24d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.value	0x24d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x28
	.long	.LASF378
	.byte	0x1
	.value	0x24d
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x29
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x28
	.long	.LASF379
	.byte	0x1
	.value	0x24d
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x29
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x28
	.long	.LASF380
	.byte	0x1
	.value	0x24d
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.long	.LASF381
	.byte	0x1
	.value	0x24d
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
	.byte	0
	.uleb128 0x2c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x17fc
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x261
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x29
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x261
	.long	0xeb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF383
	.byte	0x1
	.value	0x261
	.long	0xeb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"lbl"
	.byte	0x1
	.value	0x261
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x261
	.long	0xeae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x17b7
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.value	0x261
	.long	0xeae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x261
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x28
	.long	.LASF384
	.byte	0x1
	.value	0x261
	.long	0xeae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x28
	.long	.LASF367
	.byte	0x1
	.value	0x261
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x2d3
	.long	0xeb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x28
	.long	.LASF299
	.byte	0x1
	.value	0x2d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1119
	.uleb128 0xd
	.long	0x18b
	.long	0x1853
	.uleb128 0xe
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x2d
	.long	.LASF385
	.byte	0x2
	.byte	0x3f
	.long	0x185e
	.uleb128 0xf
	.long	0x1843
	.uleb128 0xd
	.long	0x2d
	.long	0x1873
	.uleb128 0xe
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x2e
	.long	.LASF386
	.byte	0x2
	.value	0x652
	.long	0x1863
	.uleb128 0x2d
	.long	.LASF387
	.byte	0x7
	.byte	0xe4
	.long	0x139
	.uleb128 0x2d
	.long	.LASF388
	.byte	0x7
	.byte	0xec
	.long	0xe08
	.uleb128 0xd
	.long	0x8eb
	.long	0x18a5
	.uleb128 0xe
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x2e
	.long	.LASF389
	.byte	0x7
	.value	0x116
	.long	0x1895
	.uleb128 0x2e
	.long	.LASF390
	.byte	0x7
	.value	0x11a
	.long	0xe08
	.uleb128 0x2d
	.long	.LASF391
	.byte	0x9
	.byte	0x2f
	.long	0xe08
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
.LASF18:
	.string	"long int"
.LASF110:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF314:
	.string	"sched_info_tag"
.LASF6:
	.string	"in_struct"
.LASF210:
	.string	"US_PLUS"
.LASF230:
	.string	"mem_attrs"
.LASF283:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF232:
	.string	"rtint"
.LASF86:
	.string	"CCFPUmode"
.LASF188:
	.string	"TRUNCATE"
.LASF396:
	.string	"ssa_eliminate_dead_code"
.LASF118:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF66:
	.string	"V4DImode"
.LASF172:
	.string	"PRE_DEC"
.LASF153:
	.string	"ADDRESSOF"
.LASF370:
	.string	"new_label"
.LASF9:
	.string	"frame_related"
.LASF308:
	.string	"uhint"
.LASF78:
	.string	"V16SFmode"
.LASF316:
	.string	"elt_list"
.LASF194:
	.string	"SQRT"
.LASF147:
	.string	"SCRATCH"
.LASF259:
	.string	"flags"
.LASF310:
	.string	"cptr"
.LASF67:
	.string	"V8QImode"
.LASF51:
	.string	"XCmode"
.LASF318:
	.string	"varray_head_tag"
.LASF325:
	.string	"regset"
.LASF137:
	.string	"CALL"
.LASF154:
	.string	"QUEUED"
.LASF212:
	.string	"US_MINUS"
.LASF17:
	.string	"unsigned int"
.LASF75:
	.string	"V4DFmode"
.LASF299:
	.string	"next"
.LASF65:
	.string	"V4SImode"
.LASF324:
	.string	"varray_type"
.LASF362:
	.string	"inherently_necessary_set_p"
.LASF133:
	.string	"ADDR_VEC"
.LASF93:
	.string	"INSN_LIST"
.LASF191:
	.string	"FLOAT"
.LASF246:
	.string	"head"
.LASF269:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF353:
	.string	"ending_block"
.LASF249:
	.string	"pred"
.LASF74:
	.string	"V4SFmode"
.LASF143:
	.string	"CONST_VECTOR"
.LASF163:
	.string	"ASHIFT"
.LASF1:
	.string	"mode"
.LASF114:
	.string	"ADDRESS"
.LASF300:
	.string	"prev"
.LASF121:
	.string	"INSN"
.LASF101:
	.string	"MATCH_INSN"
.LASF135:
	.string	"PREFETCH"
.LASF180:
	.string	"UNEQ"
.LASF326:
	.string	"gcov_type"
.LASF319:
	.string	"num_elements"
.LASF91:
	.string	"INCLUDE"
.LASF262:
	.string	"NOTE_INSN_BIAS"
.LASF355:
	.string	"control_dependent_block_to_edge_map_create"
.LASF347:
	.string	"control_dependent_block_to_edge_map_free"
.LASF108:
	.string	"DEFINE_EXPAND"
.LASF96:
	.string	"MATCH_DUP"
.LASF343:
	.string	"control_dependent_block_to_edge_map"
.LASF264:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF224:
	.string	"addr_diff_vec_flags"
.LASF385:
	.string	"rtx_class"
.LASF348:
	.string	"find_all_control_dependences"
.LASF368:
	.string	"mark_all_insn_unnecessary"
.LASF136:
	.string	"CLOBBER"
.LASF168:
	.string	"SMIN"
.LASF56:
	.string	"CDImode"
.LASF253:
	.string	"global_live_at_start"
.LASF394:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF85:
	.string	"CCFPmode"
.LASF295:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF309:
	.string	"generic"
.LASF388:
	.string	"basic_block_info"
.LASF157:
	.string	"COMPARE"
.LASF395:
	.string	"tree_node"
.LASF82:
	.string	"CCGOCmode"
.LASF222:
	.string	"offset_unsigned"
.LASF257:
	.string	"count"
.LASF255:
	.string	"index"
.LASF329:
	.string	"succ_next"
.LASF92:
	.string	"EXPR_LIST"
.LASF129:
	.string	"ASM_INPUT"
.LASF111:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF105:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF26:
	.string	"long long unsigned int"
.LASF373:
	.string	"current_instruction"
.LASF263:
	.string	"NOTE_INSN_DELETED"
.LASF55:
	.string	"CSImode"
.LASF273:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF327:
	.string	"edge_def"
.LASF358:
	.string	"inherently_necessary_register_1"
.LASF361:
	.string	"note_inherently_necessary_set"
.LASF365:
	.string	"propagate_necessity_through_operand"
.LASF87:
	.string	"MAX_MACHINE_MODE"
.LASF217:
	.string	"base_after_vec"
.LASF216:
	.string	"min_align"
.LASF214:
	.string	"US_TRUNCATE"
.LASF341:
	.string	"CDI_POST_DOMINATORS"
.LASF181:
	.string	"UNGE"
.LASF146:
	.string	"VALUE"
.LASF221:
	.string	"max_after_base"
.LASF31:
	.string	"HImode"
.LASF80:
	.string	"CCmode"
.LASF70:
	.string	"V8DImode"
.LASF374:
	.string	"edge_number"
.LASF98:
	.string	"MATCH_PARALLEL"
.LASF134:
	.string	"ADDR_DIFF_VEC"
.LASF281:
	.string	"NOTE_INSN_LIVE"
.LASF125:
	.string	"CODE_LABEL"
.LASF372:
	.string	"max_insn_uid"
.LASF267:
	.string	"NOTE_INSN_LOOP_END"
.LASF226:
	.string	"expr"
.LASF219:
	.string	"max_after_vec"
.LASF7:
	.string	"used"
.LASF381:
	.string	"jump_insn"
.LASF144:
	.string	"CONST_STRING"
.LASF36:
	.string	"PQImode"
.LASF340:
	.string	"CDI_DOMINATORS"
.LASF215:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF200:
	.string	"RANGE_REG"
.LASF288:
	.string	"GR_STACK_POINTER"
.LASF19:
	.string	"size_t"
.LASF211:
	.string	"SS_MINUS"
.LASF148:
	.string	"SUBREG"
.LASF41:
	.string	"HFmode"
.LASF227:
	.string	"offset"
.LASF15:
	.string	"tree"
.LASF285:
	.string	"global_rtl_index"
.LASF77:
	.string	"V8DFmode"
.LASF128:
	.string	"PARALLEL"
.LASF69:
	.string	"V8SImode"
.LASF198:
	.string	"LO_SUM"
.LASF71:
	.string	"V16QImode"
.LASF332:
	.string	"probability"
.LASF189:
	.string	"FLOAT_EXTEND"
.LASF3:
	.string	"call"
.LASF60:
	.string	"V2HImode"
.LASF321:
	.string	"element_size"
.LASF390:
	.string	"basic_block_for_insn"
.LASF99:
	.string	"MATCH_OP_DUP"
.LASF333:
	.string	"edge"
.LASF95:
	.string	"MATCH_SCRATCH"
.LASF236:
	.string	"rt_addr_diff_vec_flags"
.LASF13:
	.string	"num_elem"
.LASF141:
	.string	"CONST_INT"
.LASF0:
	.string	"code"
.LASF48:
	.string	"HCmode"
.LASF234:
	.string	"rtstr"
.LASF76:
	.string	"V8SFmode"
.LASF345:
	.string	"edge_index"
.LASF2:
	.string	"jump"
.LASF103:
	.string	"DEFINE_PEEPHOLE"
.LASF271:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF162:
	.string	"UMOD"
.LASF164:
	.string	"ROTATE"
.LASF123:
	.string	"CALL_INSN"
.LASF387:
	.string	"n_basic_blocks"
.LASF14:
	.string	"elem"
.LASF25:
	.string	"char"
.LASF344:
	.string	"num_basic_blocks"
.LASF202:
	.string	"RANGE_LIVE"
.LASF8:
	.string	"integrated"
.LASF235:
	.string	"rttype"
.LASF39:
	.string	"PDImode"
.LASF367:
	.string	"insn"
.LASF35:
	.string	"OImode"
.LASF323:
	.string	"data"
.LASF27:
	.string	"long long int"
.LASF240:
	.string	"rtmem"
.LASF278:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF386:
	.string	"global_rtl"
.LASF83:
	.string	"CCNOmode"
.LASF376:
	.string	"indx_"
.LASF150:
	.string	"CONCAT"
.LASF161:
	.string	"UDIV"
.LASF244:
	.string	"indx"
.LASF337:
	.string	"num_edges"
.LASF182:
	.string	"UNGT"
.LASF23:
	.string	"signed char"
.LASF298:
	.string	"bitmap_element_def"
.LASF275:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF335:
	.string	"edge_list"
.LASF185:
	.string	"LTGT"
.LASF282:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF195:
	.string	"SIGN_EXTRACT"
.LASF38:
	.string	"PSImode"
.LASF179:
	.string	"ORDERED"
.LASF301:
	.string	"bits"
.LASF64:
	.string	"V4HImode"
.LASF169:
	.string	"SMAX"
.LASF274:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF112:
	.string	"DEFINE_COND_EXEC"
.LASF151:
	.string	"LABEL_REF"
.LASF287:
	.string	"GR_CC0"
.LASF45:
	.string	"XFmode"
.LASF175:
	.string	"POST_INC"
.LASF280:
	.string	"NOTE_INSN_RANGE_END"
.LASF320:
	.string	"elements_used"
.LASF94:
	.string	"MATCH_OPERAND"
.LASF380:
	.string	"mask_"
.LASF270:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF352:
	.string	"current_block"
.LASF354:
	.string	"__FUNCTION__"
.LASF338:
	.string	"index_to_edge"
.LASF286:
	.string	"GR_PC"
.LASF256:
	.string	"loop_depth"
.LASF266:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF254:
	.string	"global_live_at_end"
.LASF34:
	.string	"TImode"
.LASF107:
	.string	"DEFINE_COMBINE"
.LASF104:
	.string	"DEFINE_SPLIT"
.LASF158:
	.string	"PLUS"
.LASF366:
	.string	"unprocessed_instructions"
.LASF233:
	.string	"rtuint"
.LASF12:
	.string	"rtvec_def"
.LASF223:
	.string	"scale"
.LASF54:
	.string	"CHImode"
.LASF204:
	.string	"CALL_PLACEHOLDER"
.LASF203:
	.string	"CONSTANT_P_RTX"
.LASF307:
	.string	"hint"
.LASF152:
	.string	"SYMBOL_REF"
.LASF196:
	.string	"ZERO_EXTRACT"
.LASF29:
	.string	"BImode"
.LASF228:
	.string	"size"
.LASF10:
	.string	"rtvec"
.LASF46:
	.string	"TFmode"
.LASF364:
	.string	"inherently_necessary_set"
.LASF268:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF225:
	.string	"alias"
.LASF360:
	.string	"inherently_necessary_register"
.LASF317:
	.string	"varray_data"
.LASF393:
	.string	"ssa-dce.c"
.LASF382:
	.string	"phi_vec"
.LASF11:
	.string	"rtx_def"
.LASF292:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF183:
	.string	"UNLE"
.LASF277:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF173:
	.string	"PRE_INC"
.LASF42:
	.string	"TQFmode"
.LASF284:
	.string	"NOTE_INSN_MAX"
.LASF52:
	.string	"TCmode"
.LASF184:
	.string	"UNLT"
.LASF371:
	.string	"delete_insn_bb"
.LASF378:
	.string	"word_num_"
.LASF336:
	.string	"num_blocks"
.LASF22:
	.string	"short unsigned int"
.LASF351:
	.string	"find_control_dependence"
.LASF199:
	.string	"RANGE_INFO"
.LASF68:
	.string	"V8HImode"
.LASF297:
	.string	"GR_MAX"
.LASF84:
	.string	"CCZmode"
.LASF109:
	.string	"DEFINE_DELAY"
.LASF100:
	.string	"MATCH_PAR_DUP"
.LASF206:
	.string	"VEC_SELECT"
.LASF363:
	.string	"find_inherently_necessary"
.LASF186:
	.string	"SIGN_EXTEND"
.LASF208:
	.string	"VEC_DUPLICATE"
.LASF369:
	.string	"find_block_label"
.LASF392:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF241:
	.string	"bitmap_head_def"
.LASF117:
	.string	"SET_ATTR"
.LASF220:
	.string	"min_after_base"
.LASF339:
	.string	"cdi_direction"
.LASF130:
	.string	"ASM_OPERANDS"
.LASF24:
	.string	"short int"
.LASF165:
	.string	"ASHIFTRT"
.LASF302:
	.string	"bitmap_element"
.LASF231:
	.string	"rtwint"
.LASF305:
	.string	"rtunion_def"
.LASF342:
	.string	"length"
.LASF115:
	.string	"DEFINE_ATTR"
.LASF138:
	.string	"RETURN"
.LASF346:
	.string	"set_control_dependent_block_to_edge_map_bit"
.LASF207:
	.string	"VEC_CONCAT"
.LASF120:
	.string	"ATTR_FLAG"
.LASF166:
	.string	"LSHIFTRT"
.LASF384:
	.string	"temp"
.LASF30:
	.string	"QImode"
.LASF279:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF113:
	.string	"SEQUENCE"
.LASF350:
	.string	"cdbte"
.LASF139:
	.string	"TRAP_IF"
.LASF176:
	.string	"PRE_MODIFY"
.LASF79:
	.string	"BLKmode"
.LASF357:
	.string	"block"
.LASF178:
	.string	"UNORDERED"
.LASF177:
	.string	"POST_MODIFY"
.LASF156:
	.string	"COND"
.LASF248:
	.string	"end_tree"
.LASF322:
	.string	"name"
.LASF296:
	.string	"GR_VIRTUAL_CFA"
.LASF40:
	.string	"QFmode"
.LASF331:
	.string	"insns"
.LASF375:
	.string	"ptr_"
.LASF155:
	.string	"IF_THEN_ELSE"
.LASF359:
	.string	"current_rtx"
.LASF304:
	.string	"const_equiv_data"
.LASF119:
	.string	"EQ_ATTR"
.LASF160:
	.string	"MULT"
.LASF140:
	.string	"RESX"
.LASF59:
	.string	"V2QImode"
.LASF16:
	.string	"sizetype"
.LASF20:
	.string	"long unsigned int"
.LASF290:
	.string	"GR_HARD_FRAME_POINTER"
.LASF197:
	.string	"HIGH"
.LASF328:
	.string	"pred_next"
.LASF58:
	.string	"COImode"
.LASF47:
	.string	"QCmode"
.LASF391:
	.string	"ssa_definition"
.LASF4:
	.string	"unchanging"
.LASF145:
	.string	"CONST"
.LASF250:
	.string	"succ"
.LASF237:
	.string	"rt_cselib"
.LASF28:
	.string	"VOIDmode"
.LASF192:
	.string	"UNSIGNED_FLOAT"
.LASF293:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF126:
	.string	"NOTE"
.LASF142:
	.string	"CONST_DOUBLE"
.LASF276:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF5:
	.string	"volatil"
.LASF127:
	.string	"COND_EXEC"
.LASF21:
	.string	"unsigned char"
.LASF33:
	.string	"DImode"
.LASF159:
	.string	"MINUS"
.LASF379:
	.string	"word_"
.LASF377:
	.string	"bit_num_"
.LASF306:
	.string	"varray_data_tag"
.LASF106:
	.string	"DEFINE_PEEPHOLE2"
.LASF167:
	.string	"ROTATERT"
.LASF205:
	.string	"VEC_MERGE"
.LASF311:
	.string	"sched"
.LASF242:
	.string	"first"
.LASF313:
	.string	"cselib_val_struct"
.LASF102:
	.string	"DEFINE_INSN"
.LASF389:
	.string	"entry_exit_blocks"
.LASF132:
	.string	"UNSPEC_VOLATILE"
.LASF258:
	.string	"frequency"
.LASF218:
	.string	"min_after_vec"
.LASF37:
	.string	"PHImode"
.LASF171:
	.string	"UMAX"
.LASF44:
	.string	"DFmode"
.LASF32:
	.string	"SImode"
.LASF209:
	.string	"SS_PLUS"
.LASF149:
	.string	"STRICT_LOW_PART"
.LASF57:
	.string	"CTImode"
.LASF90:
	.string	"UNKNOWN"
.LASF356:
	.string	"find_pdom"
.LASF190:
	.string	"FLOAT_TRUNCATE"
.LASF62:
	.string	"V2DImode"
.LASF170:
	.string	"UMIN"
.LASF63:
	.string	"V4QImode"
.LASF238:
	.string	"rtbit"
.LASF383:
	.string	"pdom_bb"
.LASF312:
	.string	"const_equiv"
.LASF81:
	.string	"CCGCmode"
.LASF252:
	.string	"cond_local_set"
.LASF239:
	.string	"rttree"
.LASF50:
	.string	"DCmode"
.LASF201:
	.string	"RANGE_VAR"
.LASF43:
	.string	"SFmode"
.LASF122:
	.string	"JUMP_INSN"
.LASF243:
	.string	"current"
.LASF247:
	.string	"head_tree"
.LASF213:
	.string	"SS_TRUNCATE"
.LASF261:
	.string	"insn_note"
.LASF260:
	.string	"rtunion"
.LASF272:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF89:
	.string	"rtx_code"
.LASF131:
	.string	"UNSPEC"
.LASF73:
	.string	"V2DFmode"
.LASF265:
	.string	"NOTE_INSN_BLOCK_END"
.LASF61:
	.string	"V2SImode"
.LASF289:
	.string	"GR_FRAME_POINTER"
.LASF334:
	.string	"basic_block"
.LASF97:
	.string	"MATCH_OPERATOR"
.LASF294:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF349:
	.string	"pdom"
.LASF174:
	.string	"POST_DEC"
.LASF193:
	.string	"UNSIGNED_FIX"
.LASF229:
	.string	"align"
.LASF187:
	.string	"ZERO_EXTEND"
.LASF53:
	.string	"CQImode"
.LASF49:
	.string	"SCmode"
.LASF88:
	.string	"machine_mode"
.LASF116:
	.string	"ATTR"
.LASF245:
	.string	"basic_block_def"
.LASF330:
	.string	"dest"
.LASF124:
	.string	"BARRIER"
.LASF303:
	.string	"bitmap"
.LASF315:
	.string	"reg_info_def"
.LASF251:
	.string	"local_set"
.LASF291:
	.string	"GR_ARG_POINTER"
.LASF72:
	.string	"V2SFmode"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
