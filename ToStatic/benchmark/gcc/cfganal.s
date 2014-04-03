	.file	"cfganal.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cfganal.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	forwarder_block_p
	.type	forwarder_block_p, @function
forwarder_block_p:
.LFB2:
	.file 1 "cfganal.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 69 0
	cmpq	$entry_exit_blocks+112, -24(%rbp)	#, bb
	je	.L2	#,
	.loc 1 69 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -24(%rbp)	#, bb
	je	.L2	#,
	.loc 1 70 0 is_stmt 1
	movq	-24(%rbp), %rax	# bb, tmp76
	movq	40(%rax), %rax	# bb_4(D)->succ, D.11484
	testq	%rax, %rax	# D.11484
	je	.L2	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb, tmp77
	movq	40(%rax), %rax	# bb_4(D)->succ, D.11484
	movq	8(%rax), %rax	# _6->succ_next, D.11484
	testq	%rax, %rax	# D.11484
	je	.L3	#,
.L2:
	.loc 1 71 0 is_stmt 1
	movl	$0, %eax	#, D.11483
	jmp	.L4	#
.L3:
	.loc 1 73 0
	movq	-24(%rbp), %rax	# bb, tmp78
	movq	(%rax), %rax	# bb_4(D)->head, tmp79
	movq	%rax, -8(%rbp)	# tmp79, insn
	jmp	.L5	#
.L7:
	.loc 1 74 0
	movq	-8(%rbp), %rax	# insn, tmp80
	movzwl	(%rax), %eax	# insn_1->code, D.11486
	movzwl	%ax, %eax	# D.11486, D.11487
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11488
	cmpb	$105, %al	#, D.11488
	jne	.L6	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp82
	movq	%rax, %rdi	# tmp82,
	call	active_insn_p	#
	testl	%eax, %eax	# D.11487
	je	.L6	#,
	.loc 1 75 0 is_stmt 1
	movl	$0, %eax	#, D.11483
	jmp	.L4	#
.L6:
	.loc 1 73 0
	movq	-8(%rbp), %rax	# insn, tmp83
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp84
	movq	%rax, -8(%rbp)	# tmp84, insn
.L5:
	.loc 1 73 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bb, tmp85
	movq	8(%rax), %rax	# bb_4(D)->end, D.11485
	cmpq	-8(%rbp), %rax	# insn, D.11485
	jne	.L7	#,
	.loc 1 77 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp86
	movzwl	(%rax), %eax	# insn_1->code, D.11486
	movzwl	%ax, %eax	# D.11486, D.11487
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11488
	.loc 1 79 0
	cmpb	$105, %al	#, D.11488
	jne	.L8	#,
	.loc 1 78 0
	movq	-8(%rbp), %rax	# insn, tmp88
	movzwl	(%rax), %eax	# insn_1->code, D.11486
	cmpw	$33, %ax	#, D.11486
	jne	.L9	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# insn, tmp89
	movq	%rax, %rdi	# tmp89,
	call	simplejump_p	#
	testl	%eax, %eax	# D.11487
	jne	.L8	#,
.L9:
	.loc 1 79 0 is_stmt 1
	movq	-8(%rbp), %rax	# insn, tmp90
	movq	%rax, %rdi	# tmp90,
	call	active_insn_p	#
	testl	%eax, %eax	# D.11487
	jne	.L10	#,
.L8:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L11	#
.L10:
	.loc 1 79 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L11:
	.loc 1 77 0 is_stmt 1
	andl	$1, %eax	#, D.11483
.L4:
	.loc 1 80 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	forwarder_block_p, .-forwarder_block_p
	.globl	can_fallthru
	.type	can_fallthru, @function
can_fallthru:
.LFB3:
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# src, src
	movq	%rsi, -32(%rbp)	# target, target
	.loc 1 88 0
	movq	-24(%rbp), %rax	# src, tmp66
	movq	8(%rax), %rax	# src_2(D)->end, tmp67
	movq	%rax, -8(%rbp)	# tmp67, insn
	.loc 1 89 0
	movq	-32(%rbp), %rax	# target, tmp68
	movq	(%rax), %rax	# target_4(D)->head, tmp69
	movq	%rax, -16(%rbp)	# tmp69, insn2
	.loc 1 91 0
	movq	-24(%rbp), %rax	# src, tmp70
	movl	88(%rax), %eax	# src_2(D)->index, D.11489
	leal	1(%rax), %edx	#, D.11489
	movq	-32(%rbp), %rax	# target, tmp71
	movl	88(%rax), %eax	# target_4(D)->index, D.11489
	cmpl	%eax, %edx	# D.11489, D.11489
	jne	.L13	#,
	.loc 1 91 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# insn2, tmp72
	movq	%rax, %rdi	# tmp72,
	call	active_insn_p	#
	testl	%eax, %eax	# D.11489
	jne	.L13	#,
	.loc 1 92 0 is_stmt 1
	movq	-16(%rbp), %rax	# insn2, tmp73
	movq	%rax, %rdi	# tmp73,
	call	next_active_insn	#
	movq	%rax, -16(%rbp)	# tmp74, insn2
.L13:
	.loc 1 95 0
	movq	-8(%rbp), %rax	# insn, tmp75
	movq	%rax, %rdi	# tmp75,
	call	next_active_insn	#
	cmpq	-16(%rbp), %rax	# insn2, D.11490
	sete	%al	#, D.11491
	.loc 1 96 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	can_fallthru, .-can_fallthru
	.globl	mark_dfs_back_edges
	.type	mark_dfs_back_edges, @function
mark_dfs_back_edges:
.LFB4:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	.loc 1 115 0
	movl	$1, -64(%rbp)	#, prenum
	.loc 1 116 0
	movl	$1, -60(%rbp)	#, postnum
	.loc 1 118 0
	movb	$0, -69(%rbp)	#, found
	.loc 1 121 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.11492,
	call	xcalloc	#
	movq	%rax, -56(%rbp)	# tmp143, pre
	.loc 1 122 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.2
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.11492,
	call	xcalloc	#
	movq	%rax, -48(%rbp)	# tmp144, post
	.loc 1 125 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.3
	addl	$1, %eax	#, D.11493
	cltq
	salq	$3, %rax	#, D.11492
	movq	%rax, %rdi	# D.11492,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp145, stack
	.loc 1 126 0
	movl	$0, -68(%rbp)	#, sp
	.loc 1 129 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.4
	movl	%eax, %edi	# n_basic_blocks.5,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp146, visited
	.loc 1 132 0
	movq	-32(%rbp), %rax	# visited, tmp147
	movq	%rax, %rdi	# tmp147,
	call	sbitmap_zero	#
	.loc 1 135 0
	movl	-68(%rbp), %eax	# sp, sp.6
	leal	1(%rax), %edx	#, tmp148
	movl	%edx, -68(%rbp)	# tmp148, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11492
	movq	-40(%rbp), %rax	# stack, tmp149
	addq	%rax, %rdx	# tmp149, D.11494
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.11495
	movq	%rax, (%rdx)	# D.11495, *_31
	.loc 1 137 0
	jmp	.L16	#
.L23:
.LBB2:
	.loc 1 144 0
	movl	-68(%rbp), %eax	# sp, tmp150
	cltq
	salq	$3, %rax	#, D.11492
	leaq	-8(%rax), %rdx	#, D.11496
	movq	-40(%rbp), %rax	# stack, tmp151
	addq	%rdx, %rax	# D.11496, D.11494
	movq	(%rax), %rax	# *_36, tmp152
	movq	%rax, -24(%rbp)	# tmp152, e
	.loc 1 145 0
	movq	-24(%rbp), %rax	# e, tmp153
	movq	16(%rax), %rax	# e_37->src, tmp154
	movq	%rax, -16(%rbp)	# tmp154, src
	.loc 1 146 0
	movq	-24(%rbp), %rax	# e, tmp155
	movq	24(%rax), %rax	# e_37->dest, tmp156
	movq	%rax, -8(%rbp)	# tmp156, dest
	.loc 1 147 0
	movq	-24(%rbp), %rax	# e, tmp157
	movl	48(%rax), %eax	# e_37->flags, D.11493
	andl	$-33, %eax	#, D.11493
	movl	%eax, %edx	# D.11493, D.11493
	movq	-24(%rbp), %rax	# e, tmp158
	movl	%edx, 48(%rax)	# D.11493, e_37->flags
	.loc 1 150 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, dest
	je	.L17	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp159
	movl	88(%rax), %eax	# dest_39->index, D.11493
	shrl	$6, %eax	#, D.11497
	movl	%eax, %edx	# D.11497, D.11497
	movq	-32(%rbp), %rax	# visited, tmp160
	movl	%edx, %edx	# D.11497, tmp161
	addq	$2, %rdx	#, tmp162
	movq	(%rax,%rdx,8), %rdx	# visited_26->elms, D.11492
	movq	-8(%rbp), %rax	# dest, tmp163
	movl	88(%rax), %eax	# dest_39->index, D.11493
	andl	$63, %eax	#, D.11493
	movl	%eax, %ecx	# D.11493, tmp207
	shrq	%cl, %rdx	# tmp207, D.11492
	movq	%rdx, %rax	# D.11492, D.11492
	andl	$1, %eax	#, D.11492
	testq	%rax, %rax	# D.11492
	jne	.L17	#,
	.loc 1 153 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp164
	movl	88(%rax), %eax	# dest_39->index, D.11493
	shrl	$6, %eax	#, D.11497
	movq	-32(%rbp), %rdx	# visited, tmp165
	movl	%eax, %ecx	# D.11497, tmp166
	addq	$2, %rcx	#, tmp167
	movq	(%rdx,%rcx,8), %rsi	# visited_26->elms, D.11492
	movq	-8(%rbp), %rdx	# dest, tmp168
	movl	88(%rdx), %edx	# dest_39->index, D.11493
	andl	$63, %edx	#, D.11493
	movl	$1, %edi	#, tmp169
	movl	%edx, %ecx	# D.11493, tmp209
	salq	%cl, %rdi	# tmp209, D.11492
	movq	%rdi, %rdx	# D.11492, D.11492
	orq	%rdx, %rsi	# D.11492, D.11492
	movq	%rsi, %rcx	# D.11492, D.11492
	movq	-32(%rbp), %rdx	# visited, tmp170
	movl	%eax, %eax	# D.11497, tmp171
	addq	$2, %rax	#, tmp172
	movq	%rcx, (%rdx,%rax,8)	# D.11492, visited_26->elms
	.loc 1 155 0
	movq	-8(%rbp), %rax	# dest, tmp173
	movl	88(%rax), %eax	# dest_39->index, D.11493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11492
	movq	-56(%rbp), %rax	# pre, tmp174
	leaq	(%rdx,%rax), %rcx	#, D.11498
	movl	-64(%rbp), %eax	# prenum, prenum.7
	leal	1(%rax), %edx	#, tmp175
	movl	%edx, -64(%rbp)	# tmp175, prenum
	movl	%eax, (%rcx)	# prenum.7, *_61
	.loc 1 156 0
	movq	-8(%rbp), %rax	# dest, tmp176
	movq	40(%rax), %rax	# dest_39->succ, D.11495
	testq	%rax, %rax	# D.11495
	je	.L18	#,
	.loc 1 160 0
	movl	-68(%rbp), %eax	# sp, sp.8
	leal	1(%rax), %edx	#, tmp177
	movl	%edx, -68(%rbp)	# tmp177, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11492
	movq	-40(%rbp), %rax	# stack, tmp178
	addq	%rax, %rdx	# tmp178, D.11494
	movq	-8(%rbp), %rax	# dest, tmp179
	movq	40(%rax), %rax	# dest_39->succ, D.11495
	movq	%rax, (%rdx)	# D.11495, *_69
	.loc 1 156 0
	jmp	.L16	#
.L18:
	.loc 1 163 0
	movq	-8(%rbp), %rax	# dest, tmp180
	movl	88(%rax), %eax	# dest_39->index, D.11493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11492
	movq	-48(%rbp), %rax	# post, tmp181
	leaq	(%rdx,%rax), %rcx	#, D.11498
	movl	-60(%rbp), %eax	# postnum, postnum.9
	leal	1(%rax), %edx	#, tmp182
	movl	%edx, -60(%rbp)	# tmp182, postnum
	movl	%eax, (%rcx)	# postnum.9, *_74
	.loc 1 156 0
	jmp	.L16	#
.L17:
	.loc 1 167 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, dest
	je	.L20	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -16(%rbp)	#, src
	je	.L20	#,
	.loc 1 168 0 is_stmt 1
	movq	-16(%rbp), %rax	# src, tmp183
	movl	88(%rax), %eax	# src_38->index, D.11493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11492
	movq	-56(%rbp), %rax	# pre, tmp184
	addq	%rdx, %rax	# D.11492, D.11498
	movl	(%rax), %edx	# *_80, D.11493
	movq	-8(%rbp), %rax	# dest, tmp185
	movl	88(%rax), %eax	# dest_39->index, D.11493
	cltq
	leaq	0(,%rax,4), %rcx	#, D.11492
	movq	-56(%rbp), %rax	# pre, tmp186
	addq	%rcx, %rax	# D.11492, D.11498
	movl	(%rax), %eax	# *_85, D.11493
	cmpl	%eax, %edx	# D.11493, D.11493
	jl	.L20	#,
	.loc 1 169 0
	movq	-8(%rbp), %rax	# dest, tmp187
	movl	88(%rax), %eax	# dest_39->index, D.11493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11492
	movq	-48(%rbp), %rax	# post, tmp188
	addq	%rdx, %rax	# D.11492, D.11498
	movl	(%rax), %eax	# *_90, D.11493
	testl	%eax, %eax	# D.11493
	jne	.L20	#,
	.loc 1 170 0
	movq	-24(%rbp), %rax	# e, tmp189
	movl	48(%rax), %eax	# e_37->flags, D.11493
	orl	$32, %eax	#, D.11493
	movl	%eax, %edx	# D.11493, D.11493
	movq	-24(%rbp), %rax	# e, tmp190
	movl	%edx, 48(%rax)	# D.11493, e_37->flags
	movb	$1, -69(%rbp)	#, found
.L20:
	.loc 1 172 0
	movq	-24(%rbp), %rax	# e, tmp191
	movq	8(%rax), %rax	# e_37->succ_next, D.11495
	testq	%rax, %rax	# D.11495
	jne	.L21	#,
	.loc 1 172 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -16(%rbp)	#, src
	je	.L21	#,
	.loc 1 173 0 is_stmt 1
	movq	-16(%rbp), %rax	# src, tmp192
	movl	88(%rax), %eax	# src_38->index, D.11493
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11492
	movq	-48(%rbp), %rax	# post, tmp193
	leaq	(%rdx,%rax), %rcx	#, D.11498
	movl	-60(%rbp), %eax	# postnum, postnum.10
	leal	1(%rax), %edx	#, tmp194
	movl	%edx, -60(%rbp)	# tmp194, postnum
	movl	%eax, (%rcx)	# postnum.10, *_99
.L21:
	.loc 1 175 0
	movq	-24(%rbp), %rax	# e, tmp195
	movq	8(%rax), %rax	# e_37->succ_next, D.11495
	testq	%rax, %rax	# D.11495
	je	.L22	#,
	.loc 1 176 0
	movl	-68(%rbp), %eax	# sp, tmp196
	cltq
	salq	$3, %rax	#, D.11492
	leaq	-8(%rax), %rdx	#, D.11496
	movq	-40(%rbp), %rax	# stack, tmp197
	addq	%rax, %rdx	# tmp197, D.11494
	movq	-24(%rbp), %rax	# e, tmp198
	movq	8(%rax), %rax	# e_37->succ_next, D.11495
	movq	%rax, (%rdx)	# D.11495, *_106
	jmp	.L16	#
.L22:
	.loc 1 178 0
	subl	$1, -68(%rbp)	#, sp
.L16:
.LBE2:
	.loc 1 137 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, sp
	jne	.L23	#,
	.loc 1 182 0
	movq	-56(%rbp), %rax	# pre, tmp199
	movq	%rax, %rdi	# tmp199,
	call	free	#
	.loc 1 183 0
	movq	-48(%rbp), %rax	# post, tmp200
	movq	%rax, %rdi	# tmp200,
	call	free	#
	.loc 1 184 0
	movq	-40(%rbp), %rax	# stack, tmp201
	movq	%rax, %rdi	# tmp201,
	call	free	#
	.loc 1 185 0
	movq	-32(%rbp), %rax	# visited, tmp202
	movq	%rax, %rdi	# tmp202,
	call	free	#
	.loc 1 187 0
	movzbl	-69(%rbp), %eax	# found, D.11499
	.loc 1 188 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	mark_dfs_back_edges, .-mark_dfs_back_edges
	.type	need_fake_edge_p, @function
need_fake_edge_p:
.LFB5:
	.loc 1 196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 197 0
	movq	-8(%rbp), %rax	# insn, tmp87
	movzwl	(%rax), %eax	# insn_3(D)->code, D.11501
	movzwl	%ax, %eax	# D.11501, D.11502
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11503
	cmpb	$105, %al	#, D.11503
	je	.L26	#,
	.loc 1 198 0
	movl	$0, %eax	#, D.11500
	jmp	.L27	#
.L26:
	.loc 1 200 0
	movq	-8(%rbp), %rax	# insn, tmp89
	movzwl	(%rax), %eax	# insn_3(D)->code, D.11501
	cmpw	$34, %ax	#, D.11501
	jne	.L28	#,
	.loc 1 201 0
	movq	-8(%rbp), %rax	# insn, tmp90
	movzbl	3(%rax), %eax	# *insn_3(D), D.11504
	andl	$1, %eax	#, D.11504
	testb	%al, %al	# D.11504
	jne	.L28	#,
	.loc 1 202 0
	movq	-8(%rbp), %rax	# insn, tmp91
	movl	$0, %edx	#,
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	find_reg_note	#
	testq	%rax, %rax	# D.11505
	jne	.L28	#,
	.loc 1 203 0
	movq	-8(%rbp), %rax	# insn, tmp92
	movl	$0, %edx	#,
	movl	$29, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	find_reg_note	#
	testq	%rax, %rax	# D.11505
	jne	.L28	#,
	.loc 1 204 0
	movq	-8(%rbp), %rax	# insn, tmp93
	movzbl	3(%rax), %eax	# *insn_3(D), D.11504
	andl	$4, %eax	#, D.11504
	testb	%al, %al	# D.11504
	jne	.L28	#,
	.loc 1 205 0
	movl	$1, %eax	#, D.11500
	jmp	.L27	#
.L28:
	.loc 1 207 0
	movq	-8(%rbp), %rax	# insn, tmp94
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.11505
	movzwl	(%rax), %eax	# _16->code, D.11501
	.loc 1 212 0
	cmpw	$41, %ax	#, D.11501
	jne	.L29	#,
	.loc 1 208 0
	movq	-8(%rbp), %rax	# insn, tmp95
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.11505
	movzbl	3(%rax), %eax	# *_18, D.11504
	andl	$8, %eax	#, D.11504
	testb	%al, %al	# D.11504
	jne	.L30	#,
.L29:
	.loc 1 209 0
	movq	-8(%rbp), %rax	# insn, tmp96
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.11505
	movzwl	(%rax), %eax	# _21->code, D.11501
	cmpw	$39, %ax	#, D.11501
	jne	.L31	#,
	.loc 1 210 0
	movq	-8(%rbp), %rax	# insn, tmp97
	movq	%rax, %rdi	# tmp97,
	call	asm_noperands	#
	cmpl	$-1, %eax	#, D.11502
	je	.L31	#,
	.loc 1 211 0
	movq	-8(%rbp), %rax	# insn, tmp98
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.11505
	movq	8(%rax), %rax	# _24->fld[0].rtvec, D.11506
	movq	8(%rax), %rax	# _25->elem, D.11505
	movzbl	3(%rax), %eax	# *_26, D.11504
	andl	$8, %eax	#, D.11504
	testb	%al, %al	# D.11504
	jne	.L30	#,
.L31:
	.loc 1 212 0
	movq	-8(%rbp), %rax	# insn, tmp99
	movq	32(%rax), %rax	# insn_3(D)->fld[3].rtx, D.11505
	movzwl	(%rax), %eax	# _29->code, D.11501
	cmpw	$40, %ax	#, D.11501
	jne	.L32	#,
.L30:
	.loc 1 212 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.11
	jmp	.L33	#
.L32:
	.loc 1 212 0 discriminator 2
	movl	$0, %eax	#, iftmp.11
.L33:
	.loc 1 207 0 is_stmt 1
	andl	$1, %eax	#, D.11500
.L27:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	need_fake_edge_p, .-need_fake_edge_p
	.type	keep_with_call_p, @function
keep_with_call_p:
.LFB6:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# insn, insn
	.loc 1 226 0
	movq	-24(%rbp), %rax	# insn, tmp89
	movzwl	(%rax), %eax	# insn_4(D)->code, D.11508
	movzwl	%ax, %eax	# D.11508, D.11509
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11510
	cmpb	$105, %al	#, D.11510
	jne	.L35	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp91
	movzwl	(%rax), %eax	# insn_4(D)->code, D.11508
	movzwl	%ax, %eax	# D.11508, D.11509
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11510
	cmpb	$105, %al	#, D.11510
	jne	.L36	#,
	movq	-24(%rbp), %rax	# insn, tmp93
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, D.11511
	movzwl	(%rax), %eax	# _11->code, D.11508
	cmpw	$47, %ax	#, D.11508
	jne	.L37	#,
	.loc 1 226 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp94
	movq	32(%rax), %rax	# insn_4(D)->fld[3].rtx, iftmp.13
	jmp	.L39	#
.L37:
	.loc 1 226 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp95
	movq	32(%rax), %rdx	# insn_4(D)->fld[3].rtx, D.11511
	movq	-24(%rbp), %rax	# insn, tmp96
	movq	%rdx, %rsi	# D.11511,
	movq	%rax, %rdi	# tmp96,
	call	single_set_2	#
	jmp	.L39	#
.L36:
	.loc 1 226 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L39:
	.loc 1 226 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.12, set
	cmpq	$0, -8(%rbp)	#, set
	je	.L35	#,
	.loc 1 228 0 is_stmt 1
	movq	-8(%rbp), %rax	# set, tmp97
	movq	8(%rax), %rax	# set_18->fld[0].rtx, D.11511
	movzwl	(%rax), %eax	# _19->code, D.11508
	cmpw	$61, %ax	#, D.11508
	jne	.L40	#,
	.loc 1 229 0
	movq	-8(%rbp), %rax	# set, tmp98
	movq	8(%rax), %rax	# set_18->fld[0].rtx, D.11511
	movl	8(%rax), %eax	# _21->fld[0].rtuint, D.11512
	movl	%eax, %eax	# D.11512, tmp99
	movzbl	fixed_regs(%rax), %eax	# fixed_regs, D.11510
	testb	%al, %al	# D.11510
	je	.L40	#,
	.loc 1 230 0
	movq	-8(%rbp), %rax	# set, tmp100
	movq	16(%rax), %rax	# set_18->fld[1].rtx, D.11511
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.11511,
	call	general_operand	#
	testl	%eax, %eax	# D.11509
	je	.L40	#,
	.loc 1 231 0
	movl	$1, %eax	#, D.11507
	jmp	.L41	#
.L40:
	.loc 1 232 0
	movq	-8(%rbp), %rax	# set, tmp101
	movq	16(%rax), %rax	# set_18->fld[1].rtx, D.11511
	movzwl	(%rax), %eax	# _27->code, D.11508
	cmpw	$61, %ax	#, D.11508
	jne	.L35	#,
	.loc 1 233 0
	movq	-8(%rbp), %rax	# set, tmp102
	movq	16(%rax), %rax	# set_18->fld[1].rtx, D.11511
	movl	8(%rax), %eax	# _29->fld[0].rtuint, D.11512
	movl	%eax, %edi	# D.11509,
	call	ix86_function_value_regno_p	#
	testb	%al, %al	# D.11507
	je	.L35	#,
	.loc 1 234 0
	movq	-8(%rbp), %rax	# set, tmp103
	movq	8(%rax), %rax	# set_18->fld[0].rtx, D.11511
	movzwl	(%rax), %eax	# _33->code, D.11508
	cmpw	$61, %ax	#, D.11508
	jne	.L35	#,
	.loc 1 235 0
	movq	-8(%rbp), %rax	# set, tmp104
	movq	8(%rax), %rax	# set_18->fld[0].rtx, D.11511
	movl	8(%rax), %eax	# _35->fld[0].rtuint, D.11512
	cmpl	$52, %eax	#, D.11512
	jbe	.L35	#,
	.loc 1 236 0
	movl	$1, %eax	#, D.11507
	jmp	.L41	#
.L35:
	.loc 1 238 0
	movl	$0, %eax	#, D.11507
.L41:
	.loc 1 239 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	keep_with_call_p, .-keep_with_call_p
	.globl	flow_call_edges_add
	.type	flow_call_edges_add, @function
flow_call_edges_add:
.LFB7:
	.loc 1 252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -136(%rbp)	# blocks, blocks
	.loc 1 254 0
	movl	$0, -116(%rbp)	#, blocks_split
	.loc 1 255 0
	movl	$0, -112(%rbp)	#, bb_num
	.loc 1 257 0
	movb	$0, -121(%rbp)	#, check_last_block
	.loc 1 262 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.14
	cltq
	salq	$3, %rax	#, D.11513
	movq	%rax, %rdi	# D.11513,
	call	xmalloc	#
	movq	%rax, -56(%rbp)	# tmp105, bbs
	.loc 1 264 0
	cmpq	$0, -136(%rbp)	#, blocks
	jne	.L43	#,
	.loc 1 266 0
	movl	$0, -120(%rbp)	#, i
	jmp	.L44	#
.L45:
	.loc 1 267 0 discriminator 2
	movl	-112(%rbp), %eax	# bb_num, bb_num.15
	leal	1(%rax), %edx	#, tmp106
	movl	%edx, -112(%rbp)	# tmp106, bb_num
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11513
	movq	-56(%rbp), %rax	# bbs, tmp107
	addq	%rax, %rdx	# tmp107, D.11514
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.16
	movl	-120(%rbp), %ecx	# i, tmp109
	movslq	%ecx, %rcx	# tmp109, tmp108
	addq	$4, %rcx	#, tmp110
	movq	(%rax,%rcx,8), %rax	# basic_block_info.16_44->data.bb, D.11515
	movq	%rax, (%rdx)	# D.11515, *_43
	.loc 1 266 0 discriminator 2
	addl	$1, -120(%rbp)	#, i
.L44:
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.17
	cmpl	%eax, -120(%rbp)	# n_basic_blocks.17, i
	jl	.L45	#,
	.loc 1 269 0 is_stmt 1
	movb	$1, -121(%rbp)	#, check_last_block
	jmp	.L46	#
.L43:
.LBB3:
	.loc 1 272 0
	movl	$0, -104(%rbp)	#, bit_num_
	movq	-136(%rbp), %rax	# blocks, tmp111
	movl	4(%rax), %eax	# blocks_36(D)->size, tmp112
	movl	%eax, -100(%rbp)	# tmp112, size_
	movq	-136(%rbp), %rax	# blocks, tmp116
	addq	$16, %rax	#, tmp115
	movq	%rax, -48(%rbp)	# tmp115, ptr_
	movl	$0, -108(%rbp)	#, word_num_
	jmp	.L47	#
.L53:
.LBB4:
	.loc 1 272 0 is_stmt 0 discriminator 2
	movl	-108(%rbp), %eax	# word_num_, D.11513
	leaq	0(,%rax,8), %rdx	#, D.11513
	movq	-48(%rbp), %rax	# ptr_, tmp117
	addq	%rdx, %rax	# D.11513, D.11516
	movq	(%rax), %rax	# *_54, tmp118
	movq	%rax, -96(%rbp)	# tmp118, word_
	cmpq	$0, -96(%rbp)	#, word_
	je	.L48	#,
	.loc 1 272 0 discriminator 1
	jmp	.L49	#
.L52:
.LBB5:
	.loc 1 272 0 discriminator 2
	movl	-104(%rbp), %eax	# bit_num_, bit_num_.18
	movl	$1, %edx	#, tmp119
	movl	%eax, %ecx	# bit_num_.18, tmp172
	salq	%cl, %rdx	# tmp172, tmp120
	movq	%rdx, %rax	# tmp120, tmp120
	movq	%rax, -40(%rbp)	# tmp120, _mask
	movq	-40(%rbp), %rax	# _mask, tmp121
	movq	-96(%rbp), %rdx	# word_, tmp122
	andq	%rdx, %rax	# tmp122, D.11513
	testq	%rax, %rax	# D.11513
	je	.L50	#,
	.loc 1 272 0 discriminator 1
	movq	-40(%rbp), %rax	# _mask, tmp123
	notq	%rax	# D.11513
	andq	%rax, -96(%rbp)	# D.11513, word_
	movl	-108(%rbp), %eax	# word_num_, tmp124
	sall	$6, %eax	#, D.11517
	movl	%eax, %edx	# D.11517, D.11517
	movl	-104(%rbp), %eax	# bit_num_, tmp125
	addl	%edx, %eax	# D.11517, D.11517
	movl	%eax, -120(%rbp)	# D.11517, i
	movl	-112(%rbp), %eax	# bb_num, bb_num.19
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -112(%rbp)	# tmp126, bb_num
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11513
	movq	-56(%rbp), %rax	# bbs, tmp127
	addq	%rax, %rdx	# tmp127, D.11514
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.20
	movl	-120(%rbp), %ecx	# i, tmp129
	movslq	%ecx, %rcx	# tmp129, tmp128
	addq	$4, %rcx	#, tmp130
	movq	(%rax,%rcx,8), %rax	# basic_block_info.20_69->data.bb, D.11515
	movq	%rax, (%rdx)	# D.11515, *_68
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.21
	subl	$1, %eax	#, D.11518
	cmpl	-120(%rbp), %eax	# i, D.11518
	jne	.L51	#,
	movb	$1, -121(%rbp)	#, check_last_block
.L51:
	.loc 1 272 0 discriminator 2
	cmpq	$0, -96(%rbp)	#, word_
	jne	.L50	#,
	.loc 1 272 0 discriminator 1
	jmp	.L48	#
.L50:
.LBE5:
	.loc 1 272 0 discriminator 2
	addl	$1, -104(%rbp)	#, bit_num_
.L49:
	.loc 1 272 0 discriminator 1
	cmpl	$63, -104(%rbp)	#, bit_num_
	jbe	.L52	#,
.L48:
.LBE4:
	.loc 1 272 0 discriminator 2
	addl	$1, -108(%rbp)	#, word_num_
	movl	$0, -104(%rbp)	#, bit_num_
.L47:
	.loc 1 272 0 discriminator 1
	movl	-108(%rbp), %eax	# word_num_, tmp131
	cmpl	-100(%rbp), %eax	# size_, tmp131
	jb	.L53	#,
.L46:
.LBE3:
	.loc 1 291 0 is_stmt 1
	cmpb	$0, -121(%rbp)	#, check_last_block
	je	.L54	#,
.LBB6:
	.loc 1 293 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.22
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.23
	subl	$1, %edx	#, D.11518
	movslq	%edx, %rdx	# D.11518, tmp132
	addq	$4, %rdx	#, tmp133
	movq	(%rax,%rdx,8), %rax	# basic_block_info.22_77->data.bb, tmp134
	movq	%rax, -32(%rbp)	# tmp134, bb
	.loc 1 294 0
	movq	-32(%rbp), %rax	# bb, tmp135
	movq	8(%rax), %rax	# bb_80->end, tmp136
	movq	%rax, -88(%rbp)	# tmp136, insn
	.loc 1 297 0
	jmp	.L55	#
.L57:
	.loc 1 299 0
	movq	-88(%rbp), %rax	# insn, tmp137
	movq	16(%rax), %rax	# insn_24->fld[1].rtx, tmp138
	movq	%rax, -88(%rbp)	# tmp138, insn
.L55:
	.loc 1 297 0 discriminator 1
	movq	-32(%rbp), %rax	# bb, tmp139
	movq	(%rax), %rax	# bb_80->head, D.11519
	cmpq	-88(%rbp), %rax	# insn, D.11519
	je	.L56	#,
	.loc 1 298 0
	movq	-88(%rbp), %rax	# insn, tmp140
	movq	%rax, %rdi	# tmp140,
	call	keep_with_call_p	#
	testb	%al, %al	# D.11520
	jne	.L57	#,
.L56:
	.loc 1 301 0
	movq	-88(%rbp), %rax	# insn, tmp141
	movq	%rax, %rdi	# tmp141,
	call	need_fake_edge_p	#
	testb	%al, %al	# D.11520
	je	.L54	#,
.LBB7:
	.loc 1 305 0
	movq	-32(%rbp), %rax	# bb, tmp142
	movq	40(%rax), %rax	# bb_80->succ, tmp143
	movq	%rax, -80(%rbp)	# tmp143, e
	jmp	.L58	#
.L61:
	.loc 1 306 0
	movq	-80(%rbp), %rax	# e, tmp144
	movq	24(%rax), %rax	# e_25->dest, D.11515
	cmpq	$entry_exit_blocks+112, %rax	#, D.11515
	jne	.L59	#,
	.loc 1 307 0
	jmp	.L60	#
.L59:
	.loc 1 305 0
	movq	-80(%rbp), %rax	# e, tmp145
	movq	8(%rax), %rax	# e_25->succ_next, tmp146
	movq	%rax, -80(%rbp)	# tmp146, e
.L58:
	.loc 1 305 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)	#, e
	jne	.L61	#,
.L60:
	.loc 1 309 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.11519
	movq	%rax, %rdx	# D.11519,
	movl	$0, %esi	#,
	movl	$48, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	-80(%rbp), %rdx	# e, tmp147
	movq	%rdx, %rsi	# tmp147,
	movq	%rax, %rdi	# D.11519,
	call	insert_insn_on_edge	#
	.loc 1 310 0
	call	commit_edge_insertions	#
.L54:
.LBE7:
.LBE6:
	.loc 1 318 0
	movl	$0, -120(%rbp)	#, i
	jmp	.L62	#
.L71:
.LBB8:
	.loc 1 320 0
	movl	-120(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11513
	movq	-56(%rbp), %rax	# bbs, tmp149
	addq	%rdx, %rax	# D.11513, D.11514
	movq	(%rax), %rax	# *_94, tmp150
	movq	%rax, -24(%rbp)	# tmp150, bb
	.loc 1 324 0
	movq	-24(%rbp), %rax	# bb, tmp151
	movq	8(%rax), %rax	# bb_95->end, tmp152
	movq	%rax, -72(%rbp)	# tmp152, insn
.L70:
	.loc 1 326 0
	movq	-72(%rbp), %rax	# insn, tmp153
	movq	16(%rax), %rax	# insn_26->fld[1].rtx, tmp154
	movq	%rax, -16(%rbp)	# tmp154, prev_insn
	.loc 1 327 0
	movq	-72(%rbp), %rax	# insn, tmp155
	movq	%rax, %rdi	# tmp155,
	call	need_fake_edge_p	#
	testb	%al, %al	# D.11520
	je	.L63	#,
.LBB9:
	.loc 1 330 0
	movq	-72(%rbp), %rax	# insn, tmp156
	movq	%rax, -64(%rbp)	# tmp156, split_at_insn
	.loc 1 334 0
	movq	-72(%rbp), %rax	# insn, tmp157
	movzwl	(%rax), %eax	# insn_26->code, D.11521
	cmpw	$34, %ax	#, D.11521
	jne	.L64	#,
	.loc 1 335 0
	jmp	.L65	#
.L66:
	.loc 1 337 0
	movq	-64(%rbp), %rax	# split_at_insn, tmp158
	movq	24(%rax), %rax	# split_at_insn_27->fld[2].rtx, tmp159
	movq	%rax, -64(%rbp)	# tmp159, split_at_insn
.L65:
	.loc 1 335 0 discriminator 1
	movq	-24(%rbp), %rax	# bb, tmp160
	movq	8(%rax), %rax	# bb_95->end, D.11519
	cmpq	-64(%rbp), %rax	# split_at_insn, D.11519
	je	.L64	#,
	.loc 1 336 0
	movq	-64(%rbp), %rax	# split_at_insn, tmp161
	movq	24(%rax), %rax	# split_at_insn_27->fld[2].rtx, D.11519
	movq	%rax, %rdi	# D.11519,
	call	keep_with_call_p	#
	testb	%al, %al	# D.11520
	jne	.L66	#,
.L64:
	.loc 1 353 0
	movq	-64(%rbp), %rdx	# split_at_insn, tmp162
	movq	-24(%rbp), %rax	# bb, tmp163
	movq	%rdx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	split_block	#
	movq	%rax, -8(%rbp)	# tmp164, e
	.loc 1 354 0
	cmpq	$0, -8(%rbp)	#, e
	je	.L67	#,
	.loc 1 355 0
	addl	$1, -116(%rbp)	#, blocks_split
.L67:
	.loc 1 357 0
	movq	-24(%rbp), %rax	# bb, tmp165
	movl	$16, %edx	#,
	movl	$entry_exit_blocks+112, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	make_edge	#
.L63:
.LBE9:
	.loc 1 360 0
	movq	-24(%rbp), %rax	# bb, tmp166
	movq	(%rax), %rax	# bb_95->head, D.11519
	cmpq	-72(%rbp), %rax	# insn, D.11519
	jne	.L68	#,
	.loc 1 361 0
	nop
.LBE8:
	.loc 1 318 0
	addl	$1, -120(%rbp)	#, i
	jmp	.L62	#
.L68:
.LBB10:
	.loc 1 324 0
	movq	-16(%rbp), %rax	# prev_insn, tmp167
	movq	%rax, -72(%rbp)	# tmp167, insn
	.loc 1 362 0
	jmp	.L70	#
.L62:
.LBE10:
	.loc 1 318 0 discriminator 1
	movl	-120(%rbp), %eax	# i, tmp168
	cmpl	-112(%rbp), %eax	# bb_num, tmp168
	jl	.L71	#,
	.loc 1 365 0
	cmpl	$0, -116(%rbp)	#, blocks_split
	je	.L72	#,
	.loc 1 366 0
	call	verify_flow_info	#
.L72:
	.loc 1 368 0
	movq	-56(%rbp), %rax	# bbs, tmp169
	movq	%rax, %rdi	# tmp169,
	call	free	#
	.loc 1 369 0
	movl	-116(%rbp), %eax	# blocks_split, D.11518
	.loc 1 370 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	flow_call_edges_add, .-flow_call_edges_add
	.globl	find_unreachable_blocks
	.type	find_unreachable_blocks, @function
find_unreachable_blocks:
.LFB8:
	.loc 1 378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 383 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, tmp82
	movl	%eax, -36(%rbp)	# tmp82, n
	.loc 1 384 0
	movl	-36(%rbp), %eax	# n, tmp83
	cltq
	salq	$3, %rax	#, D.11522
	movq	%rax, %rdi	# D.11522,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp84, worklist
	movq	-16(%rbp), %rax	# worklist, tmp85
	movq	%rax, -24(%rbp)	# tmp85, tos
	.loc 1 388 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L75	#
.L76:
	.loc 1 389 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.24
	movl	-40(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, tmp86
	addq	$4, %rdx	#, tmp88
	movq	(%rax,%rdx,8), %rax	# basic_block_info.24_14->data.bb, D.11523
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.25
	movl	-40(%rbp), %ecx	# i, tmp90
	movslq	%ecx, %rcx	# tmp90, tmp89
	addq	$4, %rcx	#, tmp91
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.25_16->data.bb, D.11523
	movl	108(%rdx), %edx	# _17->flags, D.11524
	andl	$-2, %edx	#, D.11524
	movl	%edx, 108(%rax)	# D.11524, _15->flags
	.loc 1 388 0 discriminator 2
	addl	$1, -40(%rbp)	#, i
.L75:
	.loc 1 388 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp92
	cmpl	-36(%rbp), %eax	# n, tmp92
	jl	.L76	#,
	.loc 1 395 0 is_stmt 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp93
	movq	%rax, -32(%rbp)	# tmp93, e
	jmp	.L77	#
.L78:
	.loc 1 397 0 discriminator 2
	movq	-24(%rbp), %rax	# tos, tos.26
	leaq	8(%rax), %rdx	#, tmp94
	movq	%rdx, -24(%rbp)	# tmp94, tos
	movq	-32(%rbp), %rdx	# e, tmp95
	movq	24(%rdx), %rdx	# e_1->dest, D.11523
	movq	%rdx, (%rax)	# D.11523, *tos.26_22
	.loc 1 400 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp96
	movq	24(%rax), %rax	# e_1->dest, D.11523
	movq	-32(%rbp), %rdx	# e, tmp97
	movq	24(%rdx), %rdx	# e_1->dest, D.11523
	movl	108(%rdx), %edx	# _26->flags, D.11524
	orl	$1, %edx	#, D.11524
	movl	%edx, 108(%rax)	# D.11524, _25->flags
	.loc 1 395 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp98
	movq	8(%rax), %rax	# e_1->succ_next, tmp99
	movq	%rax, -32(%rbp)	# tmp99, e
.L77:
	.loc 1 395 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L78	#,
	.loc 1 405 0 is_stmt 1
	jmp	.L79	#
.L83:
.LBB11:
	.loc 1 407 0
	subq	$8, -24(%rbp)	#, tos
	movq	-24(%rbp), %rax	# tos, tmp100
	movq	(%rax), %rax	# *tos_30, tmp101
	movq	%rax, -8(%rbp)	# tmp101, b
	.loc 1 409 0
	movq	-8(%rbp), %rax	# b, tmp102
	movq	40(%rax), %rax	# b_31->succ, tmp103
	movq	%rax, -32(%rbp)	# tmp103, e
	jmp	.L80	#
.L82:
	.loc 1 410 0
	movq	-32(%rbp), %rax	# e, tmp104
	movq	24(%rax), %rax	# e_2->dest, D.11523
	movl	108(%rax), %eax	# _33->flags, D.11524
	andl	$1, %eax	#, D.11524
	testl	%eax, %eax	# D.11524
	jne	.L81	#,
	.loc 1 412 0
	movq	-24(%rbp), %rax	# tos, tos.27
	leaq	8(%rax), %rdx	#, tmp105
	movq	%rdx, -24(%rbp)	# tmp105, tos
	movq	-32(%rbp), %rdx	# e, tmp106
	movq	24(%rdx), %rdx	# e_2->dest, D.11523
	movq	%rdx, (%rax)	# D.11523, *tos.27_36
	.loc 1 413 0
	movq	-32(%rbp), %rax	# e, tmp107
	movq	24(%rax), %rax	# e_2->dest, D.11523
	movq	-32(%rbp), %rdx	# e, tmp108
	movq	24(%rdx), %rdx	# e_2->dest, D.11523
	movl	108(%rdx), %edx	# _40->flags, D.11524
	orl	$1, %edx	#, D.11524
	movl	%edx, 108(%rax)	# D.11524, _39->flags
.L81:
	.loc 1 409 0
	movq	-32(%rbp), %rax	# e, tmp109
	movq	8(%rax), %rax	# e_2->succ_next, tmp110
	movq	%rax, -32(%rbp)	# tmp110, e
.L80:
	.loc 1 409 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L82	#,
.L79:
.LBE11:
	.loc 1 405 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# tos, tmp111
	cmpq	-16(%rbp), %rax	# worklist, tmp111
	jne	.L83	#,
	.loc 1 417 0
	movq	-16(%rbp), %rax	# worklist, tmp112
	movq	%rax, %rdi	# tmp112,
	call	free	#
	.loc 1 418 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	find_unreachable_blocks, .-find_unreachable_blocks
	.globl	create_edge_list
	.type	create_edge_list, @function
create_edge_list:
.LFB9:
	.loc 1 435 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 442 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.28
	addl	$2, %eax	#, tmp79
	movl	%eax, -36(%rbp)	# tmp79, block_count
	.loc 1 444 0
	movl	$0, -44(%rbp)	#, num_edges
	.loc 1 448 0
	movl	$0, -40(%rbp)	#, x
	jmp	.L85	#
.L88:
.LBB12:
	.loc 1 450 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.29
	movl	-40(%rbp), %edx	# x, tmp81
	movslq	%edx, %rdx	# tmp81, tmp80
	addq	$4, %rdx	#, tmp82
	movq	(%rax,%rdx,8), %rax	# basic_block_info.29_18->data.bb, tmp83
	movq	%rax, -24(%rbp)	# tmp83, bb
	.loc 1 452 0
	movq	-24(%rbp), %rax	# bb, tmp84
	movq	40(%rax), %rax	# bb_19->succ, tmp85
	movq	%rax, -32(%rbp)	# tmp85, e
	jmp	.L86	#
.L87:
	.loc 1 453 0 discriminator 2
	addl	$1, -44(%rbp)	#, num_edges
	.loc 1 452 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp86
	movq	8(%rax), %rax	# e_1->succ_next, tmp87
	movq	%rax, -32(%rbp)	# tmp87, e
.L86:
	.loc 1 452 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L87	#,
.LBE12:
	.loc 1 448 0 is_stmt 1
	addl	$1, -40(%rbp)	#, x
.L85:
	.loc 1 448 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.30
	cmpl	%eax, -40(%rbp)	# n_basic_blocks.30, x
	jl	.L88	#,
	.loc 1 457 0 is_stmt 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp88
	movq	%rax, -32(%rbp)	# tmp88, e
	jmp	.L89	#
.L90:
	.loc 1 458 0 discriminator 2
	addl	$1, -44(%rbp)	#, num_edges
	.loc 1 457 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp89
	movq	8(%rax), %rax	# e_2->succ_next, tmp90
	movq	%rax, -32(%rbp)	# tmp90, e
.L89:
	.loc 1 457 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L90	#,
	.loc 1 460 0 is_stmt 1
	movl	$16, %edi	#,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp91, elist
	.loc 1 461 0
	movq	-16(%rbp), %rax	# elist, tmp92
	movl	-36(%rbp), %edx	# block_count, tmp93
	movl	%edx, (%rax)	# tmp93, elist_27->num_blocks
	.loc 1 462 0
	movq	-16(%rbp), %rax	# elist, tmp94
	movl	-44(%rbp), %edx	# num_edges, tmp95
	movl	%edx, 4(%rax)	# tmp95, elist_27->num_edges
	.loc 1 463 0
	movl	-44(%rbp), %eax	# num_edges, tmp96
	cltq
	salq	$3, %rax	#, D.11525
	movq	%rax, %rdi	# D.11525,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp97, D.11526
	movq	-16(%rbp), %rax	# elist, tmp98
	movq	%rdx, 8(%rax)	# D.11526, elist_27->index_to_edge
	.loc 1 465 0
	movl	$0, -44(%rbp)	#, num_edges
	.loc 1 468 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp99
	movq	%rax, -32(%rbp)	# tmp99, e
	jmp	.L91	#
.L92:
	.loc 1 469 0 discriminator 2
	movq	-16(%rbp), %rax	# elist, tmp100
	movq	8(%rax), %rcx	# elist_27->index_to_edge, D.11527
	movl	-44(%rbp), %eax	# num_edges, num_edges.31
	leal	1(%rax), %edx	#, tmp101
	movl	%edx, -44(%rbp)	# tmp101, num_edges
	cltq
	salq	$3, %rax	#, D.11525
	leaq	(%rcx,%rax), %rdx	#, D.11527
	movq	-32(%rbp), %rax	# e, tmp102
	movq	%rax, (%rdx)	# tmp102, *_38
	.loc 1 468 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp103
	movq	8(%rax), %rax	# e_3->succ_next, tmp104
	movq	%rax, -32(%rbp)	# tmp104, e
.L91:
	.loc 1 468 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L92	#,
	.loc 1 471 0 is_stmt 1
	movl	$0, -40(%rbp)	#, x
	jmp	.L93	#
.L96:
.LBB13:
	.loc 1 473 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.32
	movl	-40(%rbp), %edx	# x, tmp106
	movslq	%edx, %rdx	# tmp106, tmp105
	addq	$4, %rdx	#, tmp107
	movq	(%rax,%rdx,8), %rax	# basic_block_info.32_42->data.bb, tmp108
	movq	%rax, -8(%rbp)	# tmp108, bb
	.loc 1 476 0
	movq	-8(%rbp), %rax	# bb, tmp109
	movq	40(%rax), %rax	# bb_43->succ, tmp110
	movq	%rax, -32(%rbp)	# tmp110, e
	jmp	.L94	#
.L95:
	.loc 1 477 0 discriminator 2
	movq	-16(%rbp), %rax	# elist, tmp111
	movq	8(%rax), %rcx	# elist_27->index_to_edge, D.11527
	movl	-44(%rbp), %eax	# num_edges, num_edges.33
	leal	1(%rax), %edx	#, tmp112
	movl	%edx, -44(%rbp)	# tmp112, num_edges
	cltq
	salq	$3, %rax	#, D.11525
	leaq	(%rcx,%rax), %rdx	#, D.11527
	movq	-32(%rbp), %rax	# e, tmp113
	movq	%rax, (%rdx)	# tmp113, *_50
	.loc 1 476 0 discriminator 2
	movq	-32(%rbp), %rax	# e, tmp114
	movq	8(%rax), %rax	# e_4->succ_next, tmp115
	movq	%rax, -32(%rbp)	# tmp115, e
.L94:
	.loc 1 476 0 is_stmt 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, e
	jne	.L95	#,
.LBE13:
	.loc 1 471 0 is_stmt 1
	addl	$1, -40(%rbp)	#, x
.L93:
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.34
	cmpl	%eax, -40(%rbp)	# n_basic_blocks.34, x
	jl	.L96	#,
	.loc 1 480 0 is_stmt 1
	movq	-16(%rbp), %rax	# elist, D.11528
	.loc 1 481 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	create_edge_list, .-create_edge_list
	.globl	free_edge_list
	.type	free_edge_list, @function
free_edge_list:
.LFB10:
	.loc 1 488 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# elist, elist
	.loc 1 489 0
	cmpq	$0, -8(%rbp)	#, elist
	je	.L98	#,
	.loc 1 491 0
	movq	-8(%rbp), %rax	# elist, tmp60
	movq	8(%rax), %rax	# elist_1(D)->index_to_edge, D.11529
	movq	%rax, %rdi	# D.11529,
	call	free	#
	.loc 1 492 0
	movq	-8(%rbp), %rax	# elist, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
.L98:
	.loc 1 494 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	free_edge_list, .-free_edge_list
	.section	.rodata
	.align 8
.LC0:
	.string	"Compressed edge list, %d BBs + entry & exit, and %d edges\n"
.LC1:
	.string	" %-4d - edge("
.LC2:
	.string	"entry,"
.LC3:
	.string	"%d,"
.LC4:
	.string	"exit)\n"
.LC5:
	.string	"%d)\n"
	.text
	.globl	print_edge_list
	.type	print_edge_list, @function
print_edge_list:
.LFB11:
	.loc 1 502 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# f, f
	movq	%rsi, -32(%rbp)	# elist, elist
	.loc 1 505 0
	movq	-32(%rbp), %rax	# elist, tmp89
	movl	4(%rax), %edx	# elist_2(D)->num_edges, D.11530
	.loc 1 506 0
	movq	-32(%rbp), %rax	# elist, tmp90
	movl	(%rax), %eax	# elist_2(D)->num_blocks, D.11530
	.loc 1 505 0
	leal	-2(%rax), %esi	#, D.11530
	movq	-24(%rbp), %rax	# f, tmp91
	movl	%edx, %ecx	# D.11530,
	movl	%esi, %edx	# D.11530,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 508 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L101	#
.L106:
	.loc 1 510 0
	movl	-4(%rbp), %edx	# x, tmp92
	movq	-24(%rbp), %rax	# f, tmp93
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp93,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 511 0
	movq	-32(%rbp), %rax	# elist, tmp94
	movq	8(%rax), %rax	# elist_2(D)->index_to_edge, D.11531
	movl	-4(%rbp), %edx	# x, tmp95
	movslq	%edx, %rdx	# tmp95, D.11532
	salq	$3, %rdx	#, D.11532
	addq	%rdx, %rax	# D.11532, D.11531
	movq	(%rax), %rax	# *_12, D.11533
	movq	16(%rax), %rax	# _13->src, D.11534
	cmpq	$entry_exit_blocks, %rax	#, D.11534
	jne	.L102	#,
	.loc 1 512 0
	movq	-24(%rbp), %rax	# f, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
	jmp	.L103	#
.L102:
	.loc 1 514 0
	movq	-32(%rbp), %rax	# elist, tmp97
	movq	8(%rax), %rax	# elist_2(D)->index_to_edge, D.11531
	movl	-4(%rbp), %edx	# x, tmp98
	movslq	%edx, %rdx	# tmp98, D.11532
	salq	$3, %rdx	#, D.11532
	addq	%rdx, %rax	# D.11532, D.11531
	movq	(%rax), %rax	# *_18, D.11533
	movq	16(%rax), %rax	# _19->src, D.11534
	movl	88(%rax), %edx	# _20->index, D.11530
	movq	-24(%rbp), %rax	# f, tmp99
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	fprintf	#
.L103:
	.loc 1 516 0
	movq	-32(%rbp), %rax	# elist, tmp100
	movq	8(%rax), %rax	# elist_2(D)->index_to_edge, D.11531
	movl	-4(%rbp), %edx	# x, tmp101
	movslq	%edx, %rdx	# tmp101, D.11532
	salq	$3, %rdx	#, D.11532
	addq	%rdx, %rax	# D.11532, D.11531
	movq	(%rax), %rax	# *_25, D.11533
	movq	24(%rax), %rax	# _26->dest, D.11534
	cmpq	$entry_exit_blocks+112, %rax	#, D.11534
	jne	.L104	#,
	.loc 1 517 0
	movq	-24(%rbp), %rax	# f, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	jmp	.L105	#
.L104:
	.loc 1 519 0
	movq	-32(%rbp), %rax	# elist, tmp103
	movq	8(%rax), %rax	# elist_2(D)->index_to_edge, D.11531
	movl	-4(%rbp), %edx	# x, tmp104
	movslq	%edx, %rdx	# tmp104, D.11532
	salq	$3, %rdx	#, D.11532
	addq	%rdx, %rax	# D.11532, D.11531
	movq	(%rax), %rax	# *_31, D.11533
	movq	24(%rax), %rax	# _32->dest, D.11534
	movl	88(%rax), %edx	# _33->index, D.11530
	movq	-24(%rbp), %rax	# f, tmp105
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
.L105:
	.loc 1 508 0
	addl	$1, -4(%rbp)	#, x
.L101:
	.loc 1 508 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# elist, tmp106
	movl	4(%rax), %eax	# elist_2(D)->num_edges, D.11530
	cmpl	-4(%rbp), %eax	# x, D.11530
	jg	.L106	#,
	.loc 1 521 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_edge_list, .-print_edge_list
	.section	.rodata
	.align 8
.LC6:
	.string	"*p* No index for edge from %d to %d\n"
	.align 8
.LC7:
	.string	"*p* Pred for index %d should be %d not %d\n"
	.align 8
.LC8:
	.string	"*p* Succ for index %d should be %d not %d\n"
	.align 8
.LC9:
	.string	"*** Edge (%d, %d) appears to not have an index\n"
	.align 8
.LC10:
	.string	"*** Edge (%d, %d) has index %d, but there is no edge\n"
	.align 8
.LC11:
	.string	"*** Edge (entry, %d) appears to not have an index\n"
	.align 8
.LC12:
	.string	"*** Edge (entry, %d) has index %d, but no edge exists\n"
	.align 8
.LC13:
	.string	"*** Edge (%d, exit) appears to not have an index\n"
	.align 8
.LC14:
	.string	"*** Edge (%d, exit) has index %d, but no edge exists\n"
	.text
	.globl	verify_edge_list
	.type	verify_edge_list, @function
verify_edge_list:
.LFB12:
	.loc 1 531 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -104(%rbp)	# f, f
	movq	%rsi, -112(%rbp)	# elist, elist
	.loc 1 535 0
	movl	$0, -92(%rbp)	#, x
	jmp	.L108	#
.L114:
.LBB14:
	.loc 1 537 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.35
	movl	-92(%rbp), %edx	# x, tmp173
	movslq	%edx, %rdx	# tmp173, tmp172
	addq	$4, %rdx	#, tmp174
	movq	(%rax,%rdx,8), %rax	# basic_block_info.35_22->data.bb, tmp175
	movq	%rax, -56(%rbp)	# tmp175, bb
	.loc 1 539 0
	movq	-56(%rbp), %rax	# bb, tmp176
	movq	40(%rax), %rax	# bb_23->succ, tmp177
	movq	%rax, -64(%rbp)	# tmp177, e
	jmp	.L109	#
.L113:
	.loc 1 541 0
	movq	-64(%rbp), %rax	# e, tmp178
	movq	16(%rax), %rax	# e_6->src, D.11541
	movl	88(%rax), %eax	# _25->index, tmp179
	movl	%eax, -88(%rbp)	# tmp179, pred
	.loc 1 542 0
	movq	-64(%rbp), %rax	# e, tmp180
	movq	24(%rax), %rax	# e_6->dest, D.11541
	movl	88(%rax), %eax	# _27->index, tmp181
	movl	%eax, -84(%rbp)	# tmp181, succ
	.loc 1 543 0
	movq	-64(%rbp), %rax	# e, tmp182
	movq	24(%rax), %rdx	# e_6->dest, D.11541
	movq	-64(%rbp), %rax	# e, tmp183
	movq	16(%rax), %rcx	# e_6->src, D.11541
	movq	-112(%rbp), %rax	# elist, tmp184
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp184,
	call	find_edge_index	#
	movl	%eax, -68(%rbp)	# tmp185, index
	.loc 1 544 0
	cmpl	$-1, -68(%rbp)	#, index
	jne	.L110	#,
	.loc 1 546 0
	movl	-84(%rbp), %ecx	# succ, tmp186
	movl	-88(%rbp), %edx	# pred, tmp187
	movq	-104(%rbp), %rax	# f, tmp188
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp188,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 547 0
	jmp	.L111	#
.L110:
	.loc 1 550 0
	movq	-112(%rbp), %rax	# elist, tmp189
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp190
	movslq	%edx, %rdx	# tmp190, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_37, D.11544
	movq	16(%rax), %rax	# _38->src, D.11541
	movl	88(%rax), %eax	# _39->index, D.11545
	cmpl	-88(%rbp), %eax	# pred, D.11545
	je	.L112	#,
	.loc 1 552 0
	movq	-112(%rbp), %rax	# elist, tmp191
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp192
	movslq	%edx, %rdx	# tmp192, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_44, D.11544
	movq	16(%rax), %rax	# _45->src, D.11541
	.loc 1 551 0
	movl	88(%rax), %esi	# _46->index, D.11545
	movl	-88(%rbp), %ecx	# pred, tmp193
	movl	-68(%rbp), %edx	# index, tmp194
	movq	-104(%rbp), %rax	# f, tmp195
	movl	%esi, %r8d	# D.11545,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp195,
	movl	$0, %eax	#,
	call	fprintf	#
.L112:
	.loc 1 553 0
	movq	-112(%rbp), %rax	# elist, tmp196
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp197
	movslq	%edx, %rdx	# tmp197, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_51, D.11544
	movq	24(%rax), %rax	# _52->dest, D.11541
	movl	88(%rax), %eax	# _53->index, D.11545
	cmpl	-84(%rbp), %eax	# succ, D.11545
	je	.L111	#,
	.loc 1 555 0
	movq	-112(%rbp), %rax	# elist, tmp198
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp199
	movslq	%edx, %rdx	# tmp199, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_58, D.11544
	movq	24(%rax), %rax	# _59->dest, D.11541
	.loc 1 554 0
	movl	88(%rax), %esi	# _60->index, D.11545
	movl	-84(%rbp), %ecx	# succ, tmp200
	movl	-68(%rbp), %edx	# index, tmp201
	movq	-104(%rbp), %rax	# f, tmp202
	movl	%esi, %r8d	# D.11545,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp202,
	movl	$0, %eax	#,
	call	fprintf	#
.L111:
	.loc 1 539 0
	movq	-64(%rbp), %rax	# e, tmp203
	movq	8(%rax), %rax	# e_6->succ_next, tmp204
	movq	%rax, -64(%rbp)	# tmp204, e
.L109:
	.loc 1 539 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L113	#,
.LBE14:
	.loc 1 535 0 is_stmt 1
	addl	$1, -92(%rbp)	#, x
.L108:
	.loc 1 535 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.36
	cmpl	%eax, -92(%rbp)	# n_basic_blocks.36, x
	jl	.L114	#,
	.loc 1 559 0 is_stmt 1
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp205
	movq	%rax, -64(%rbp)	# tmp205, e
	jmp	.L115	#
.L119:
	.loc 1 561 0
	movq	-64(%rbp), %rax	# e, tmp206
	movq	16(%rax), %rax	# e_7->src, D.11541
	movl	88(%rax), %eax	# _65->index, tmp207
	movl	%eax, -88(%rbp)	# tmp207, pred
	.loc 1 562 0
	movq	-64(%rbp), %rax	# e, tmp208
	movq	24(%rax), %rax	# e_7->dest, D.11541
	movl	88(%rax), %eax	# _67->index, tmp209
	movl	%eax, -84(%rbp)	# tmp209, succ
	.loc 1 563 0
	movq	-64(%rbp), %rax	# e, tmp210
	movq	24(%rax), %rdx	# e_7->dest, D.11541
	movq	-64(%rbp), %rax	# e, tmp211
	movq	16(%rax), %rcx	# e_7->src, D.11541
	movq	-112(%rbp), %rax	# elist, tmp212
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp212,
	call	find_edge_index	#
	movl	%eax, -68(%rbp)	# tmp213, index
	.loc 1 564 0
	cmpl	$-1, -68(%rbp)	#, index
	jne	.L116	#,
	.loc 1 566 0
	movl	-84(%rbp), %ecx	# succ, tmp214
	movl	-88(%rbp), %edx	# pred, tmp215
	movq	-104(%rbp), %rax	# f, tmp216
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp216,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 567 0
	jmp	.L117	#
.L116:
	.loc 1 570 0
	movq	-112(%rbp), %rax	# elist, tmp217
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp218
	movslq	%edx, %rdx	# tmp218, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_75, D.11544
	movq	16(%rax), %rax	# _76->src, D.11541
	movl	88(%rax), %eax	# _77->index, D.11545
	cmpl	-88(%rbp), %eax	# pred, D.11545
	je	.L118	#,
	.loc 1 572 0
	movq	-112(%rbp), %rax	# elist, tmp219
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp220
	movslq	%edx, %rdx	# tmp220, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_82, D.11544
	movq	16(%rax), %rax	# _83->src, D.11541
	.loc 1 571 0
	movl	88(%rax), %esi	# _84->index, D.11545
	movl	-88(%rbp), %ecx	# pred, tmp221
	movl	-68(%rbp), %edx	# index, tmp222
	movq	-104(%rbp), %rax	# f, tmp223
	movl	%esi, %r8d	# D.11545,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp223,
	movl	$0, %eax	#,
	call	fprintf	#
.L118:
	.loc 1 573 0
	movq	-112(%rbp), %rax	# elist, tmp224
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp225
	movslq	%edx, %rdx	# tmp225, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_89, D.11544
	movq	24(%rax), %rax	# _90->dest, D.11541
	movl	88(%rax), %eax	# _91->index, D.11545
	cmpl	-84(%rbp), %eax	# succ, D.11545
	je	.L117	#,
	.loc 1 575 0
	movq	-112(%rbp), %rax	# elist, tmp226
	movq	8(%rax), %rax	# elist_31(D)->index_to_edge, D.11542
	movl	-68(%rbp), %edx	# index, tmp227
	movslq	%edx, %rdx	# tmp227, D.11543
	salq	$3, %rdx	#, D.11543
	addq	%rdx, %rax	# D.11543, D.11542
	movq	(%rax), %rax	# *_96, D.11544
	movq	24(%rax), %rax	# _97->dest, D.11541
	.loc 1 574 0
	movl	88(%rax), %esi	# _98->index, D.11545
	movl	-84(%rbp), %ecx	# succ, tmp228
	movl	-68(%rbp), %edx	# index, tmp229
	movq	-104(%rbp), %rax	# f, tmp230
	movl	%esi, %r8d	# D.11545,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp230,
	movl	$0, %eax	#,
	call	fprintf	#
.L117:
	.loc 1 559 0
	movq	-64(%rbp), %rax	# e, tmp231
	movq	8(%rax), %rax	# e_7->succ_next, tmp232
	movq	%rax, -64(%rbp)	# tmp232, e
.L115:
	.loc 1 559 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L119	#,
	.loc 1 581 0 is_stmt 1
	movl	$0, -88(%rbp)	#, pred
	jmp	.L120	#
.L133:
	.loc 1 582 0
	movl	$0, -84(%rbp)	#, succ
	jmp	.L121	#
.L132:
.LBB15:
	.loc 1 584 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.37
	movl	-88(%rbp), %edx	# pred, tmp234
	movslq	%edx, %rdx	# tmp234, tmp233
	addq	$4, %rdx	#, tmp235
	movq	(%rax,%rdx,8), %rax	# basic_block_info.37_105->data.bb, tmp236
	movq	%rax, -48(%rbp)	# tmp236, p
	.loc 1 585 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.38
	movl	-84(%rbp), %edx	# succ, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	addq	$4, %rdx	#, tmp239
	movq	(%rax,%rdx,8), %rax	# basic_block_info.38_107->data.bb, tmp240
	movq	%rax, -40(%rbp)	# tmp240, s
	.loc 1 586 0
	movl	$0, -80(%rbp)	#, found_edge
	.loc 1 588 0
	movq	-48(%rbp), %rax	# p, tmp241
	movq	40(%rax), %rax	# p_106->succ, tmp242
	movq	%rax, -64(%rbp)	# tmp242, e
	jmp	.L122	#
.L125:
	.loc 1 589 0
	movq	-64(%rbp), %rax	# e, tmp243
	movq	24(%rax), %rax	# e_8->dest, D.11541
	cmpq	-40(%rbp), %rax	# s, D.11541
	jne	.L123	#,
	.loc 1 591 0
	movl	$1, -80(%rbp)	#, found_edge
	.loc 1 592 0
	jmp	.L124	#
.L123:
	.loc 1 588 0
	movq	-64(%rbp), %rax	# e, tmp244
	movq	8(%rax), %rax	# e_8->succ_next, tmp245
	movq	%rax, -64(%rbp)	# tmp245, e
.L122:
	.loc 1 588 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L125	#,
.L124:
	.loc 1 595 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp246
	movq	32(%rax), %rax	# s_108->pred, tmp247
	movq	%rax, -64(%rbp)	# tmp247, e
	jmp	.L126	#
.L129:
	.loc 1 596 0
	movq	-64(%rbp), %rax	# e, tmp248
	movq	16(%rax), %rax	# e_9->src, D.11541
	cmpq	-48(%rbp), %rax	# p, D.11541
	jne	.L127	#,
	.loc 1 598 0
	movl	$1, -80(%rbp)	#, found_edge
	.loc 1 599 0
	jmp	.L128	#
.L127:
	.loc 1 595 0
	movq	-64(%rbp), %rax	# e, tmp249
	movq	(%rax), %rax	# e_9->pred_next, tmp250
	movq	%rax, -64(%rbp)	# tmp250, e
.L126:
	.loc 1 595 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L129	#,
.L128:
	.loc 1 602 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.39
	movl	-84(%rbp), %edx	# succ, tmp252
	movslq	%edx, %rdx	# tmp252, tmp251
	addq	$4, %rdx	#, tmp253
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.39_118->data.bb, D.11541
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.40
	movl	-88(%rbp), %ecx	# pred, tmp255
	movslq	%ecx, %rcx	# tmp255, tmp254
	addq	$4, %rcx	#, tmp256
	movq	(%rax,%rcx,8), %rcx	# basic_block_info.40_120->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp257
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp257,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	jne	.L130	#,
	.loc 1 603 0
	cmpl	$0, -80(%rbp)	#, found_edge
	je	.L130	#,
	.loc 1 604 0
	movl	-84(%rbp), %ecx	# succ, tmp258
	movl	-88(%rbp), %edx	# pred, tmp259
	movq	-104(%rbp), %rax	# f, tmp260
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp260,
	movl	$0, %eax	#,
	call	fprintf	#
.L130:
	.loc 1 606 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.41
	movl	-84(%rbp), %edx	# succ, tmp262
	movslq	%edx, %rdx	# tmp262, tmp261
	addq	$4, %rdx	#, tmp263
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.41_123->data.bb, D.11541
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.42
	movl	-88(%rbp), %ecx	# pred, tmp265
	movslq	%ecx, %rcx	# tmp265, tmp264
	addq	$4, %rcx	#, tmp266
	movq	(%rax,%rcx,8), %rcx	# basic_block_info.42_125->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp267
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp267,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	je	.L131	#,
	.loc 1 607 0
	cmpl	$0, -80(%rbp)	#, found_edge
	jne	.L131	#,
	.loc 1 609 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.43
	.loc 1 608 0
	movl	-84(%rbp), %edx	# succ, tmp269
	movslq	%edx, %rdx	# tmp269, tmp268
	addq	$4, %rdx	#, tmp270
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.43_128->data.bb, D.11541
	.loc 1 609 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.44
	.loc 1 608 0
	movl	-88(%rbp), %ecx	# pred, tmp272
	movslq	%ecx, %rcx	# tmp272, tmp271
	addq	$4, %rcx	#, tmp273
	movq	(%rax,%rcx,8), %rcx	# basic_block_info.44_130->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp274
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp274,
	call	find_edge_index	#
	movl	%eax, %esi	#, D.11545
	movl	-84(%rbp), %ecx	# succ, tmp275
	movl	-88(%rbp), %edx	# pred, tmp276
	movq	-104(%rbp), %rax	# f, tmp277
	movl	%esi, %r8d	# D.11545,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp277,
	movl	$0, %eax	#,
	call	fprintf	#
.L131:
.LBE15:
	.loc 1 582 0
	addl	$1, -84(%rbp)	#, succ
.L121:
	.loc 1 582 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.45
	cmpl	%eax, -84(%rbp)	# n_basic_blocks.45, succ
	jl	.L132	#,
	.loc 1 581 0 is_stmt 1
	addl	$1, -88(%rbp)	#, pred
.L120:
	.loc 1 581 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.46
	cmpl	%eax, -88(%rbp)	# n_basic_blocks.46, pred
	jl	.L133	#,
	.loc 1 613 0 is_stmt 1
	movl	$0, -84(%rbp)	#, succ
	jmp	.L134	#
.L145:
.LBB16:
	.loc 1 615 0
	movq	$entry_exit_blocks, -32(%rbp)	#, p
	.loc 1 616 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.47
	movl	-84(%rbp), %edx	# succ, tmp279
	movslq	%edx, %rdx	# tmp279, tmp278
	addq	$4, %rdx	#, tmp280
	movq	(%rax,%rdx,8), %rax	# basic_block_info.47_138->data.bb, tmp281
	movq	%rax, -24(%rbp)	# tmp281, s
	.loc 1 617 0
	movl	$0, -76(%rbp)	#, found_edge
	.loc 1 619 0
	movq	-32(%rbp), %rax	# p, tmp282
	movq	40(%rax), %rax	# p_137->succ, tmp283
	movq	%rax, -64(%rbp)	# tmp283, e
	jmp	.L135	#
.L138:
	.loc 1 620 0
	movq	-64(%rbp), %rax	# e, tmp284
	movq	24(%rax), %rax	# e_10->dest, D.11541
	cmpq	-24(%rbp), %rax	# s, D.11541
	jne	.L136	#,
	.loc 1 622 0
	movl	$1, -76(%rbp)	#, found_edge
	.loc 1 623 0
	jmp	.L137	#
.L136:
	.loc 1 619 0
	movq	-64(%rbp), %rax	# e, tmp285
	movq	8(%rax), %rax	# e_10->succ_next, tmp286
	movq	%rax, -64(%rbp)	# tmp286, e
.L135:
	.loc 1 619 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L138	#,
.L137:
	.loc 1 626 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp287
	movq	32(%rax), %rax	# s_139->pred, tmp288
	movq	%rax, -64(%rbp)	# tmp288, e
	jmp	.L139	#
.L142:
	.loc 1 627 0
	movq	-64(%rbp), %rax	# e, tmp289
	movq	16(%rax), %rax	# e_11->src, D.11541
	cmpq	-32(%rbp), %rax	# p, D.11541
	jne	.L140	#,
	.loc 1 629 0
	movl	$1, -76(%rbp)	#, found_edge
	.loc 1 630 0
	jmp	.L141	#
.L140:
	.loc 1 626 0
	movq	-64(%rbp), %rax	# e, tmp290
	movq	(%rax), %rax	# e_11->pred_next, tmp291
	movq	%rax, -64(%rbp)	# tmp291, e
.L139:
	.loc 1 626 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L142	#,
.L141:
	.loc 1 633 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.48
	movl	-84(%rbp), %edx	# succ, tmp293
	movslq	%edx, %rdx	# tmp293, tmp292
	addq	$4, %rdx	#, tmp294
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.48_149->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp295
	movl	$entry_exit_blocks, %esi	#,
	movq	%rax, %rdi	# tmp295,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	jne	.L143	#,
	.loc 1 634 0
	cmpl	$0, -76(%rbp)	#, found_edge
	je	.L143	#,
	.loc 1 635 0
	movl	-84(%rbp), %edx	# succ, tmp296
	movq	-104(%rbp), %rax	# f, tmp297
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp297,
	movl	$0, %eax	#,
	call	fprintf	#
.L143:
	.loc 1 637 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.49
	movl	-84(%rbp), %edx	# succ, tmp299
	movslq	%edx, %rdx	# tmp299, tmp298
	addq	$4, %rdx	#, tmp300
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.49_152->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp301
	movl	$entry_exit_blocks, %esi	#,
	movq	%rax, %rdi	# tmp301,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	je	.L144	#,
	.loc 1 638 0
	cmpl	$0, -76(%rbp)	#, found_edge
	jne	.L144	#,
	.loc 1 640 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.50
	.loc 1 639 0
	movl	-84(%rbp), %edx	# succ, tmp303
	movslq	%edx, %rdx	# tmp303, tmp302
	addq	$4, %rdx	#, tmp304
	movq	(%rax,%rdx,8), %rdx	# basic_block_info.50_155->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp305
	movl	$entry_exit_blocks, %esi	#,
	movq	%rax, %rdi	# tmp305,
	call	find_edge_index	#
	movl	%eax, %ecx	#, D.11545
	movl	-84(%rbp), %edx	# succ, tmp306
	movq	-104(%rbp), %rax	# f, tmp307
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp307,
	movl	$0, %eax	#,
	call	fprintf	#
.L144:
.LBE16:
	.loc 1 613 0
	addl	$1, -84(%rbp)	#, succ
.L134:
	.loc 1 613 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.51
	cmpl	%eax, -84(%rbp)	# n_basic_blocks.51, succ
	jl	.L145	#,
	.loc 1 644 0 is_stmt 1
	movl	$0, -88(%rbp)	#, pred
	jmp	.L146	#
.L157:
.LBB17:
	.loc 1 646 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.52
	movl	-88(%rbp), %edx	# pred, tmp309
	movslq	%edx, %rdx	# tmp309, tmp308
	addq	$4, %rdx	#, tmp310
	movq	(%rax,%rdx,8), %rax	# basic_block_info.52_161->data.bb, tmp311
	movq	%rax, -16(%rbp)	# tmp311, p
	.loc 1 647 0
	movq	$entry_exit_blocks+112, -8(%rbp)	#, s
	.loc 1 648 0
	movl	$0, -72(%rbp)	#, found_edge
	.loc 1 650 0
	movq	-16(%rbp), %rax	# p, tmp312
	movq	40(%rax), %rax	# p_162->succ, tmp313
	movq	%rax, -64(%rbp)	# tmp313, e
	jmp	.L147	#
.L150:
	.loc 1 651 0
	movq	-64(%rbp), %rax	# e, tmp314
	movq	24(%rax), %rax	# e_12->dest, D.11541
	cmpq	-8(%rbp), %rax	# s, D.11541
	jne	.L148	#,
	.loc 1 653 0
	movl	$1, -72(%rbp)	#, found_edge
	.loc 1 654 0
	jmp	.L149	#
.L148:
	.loc 1 650 0
	movq	-64(%rbp), %rax	# e, tmp315
	movq	8(%rax), %rax	# e_12->succ_next, tmp316
	movq	%rax, -64(%rbp)	# tmp316, e
.L147:
	.loc 1 650 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L150	#,
.L149:
	.loc 1 657 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp317
	movq	32(%rax), %rax	# s_163->pred, tmp318
	movq	%rax, -64(%rbp)	# tmp318, e
	jmp	.L151	#
.L154:
	.loc 1 658 0
	movq	-64(%rbp), %rax	# e, tmp319
	movq	16(%rax), %rax	# e_13->src, D.11541
	cmpq	-16(%rbp), %rax	# p, D.11541
	jne	.L152	#,
	.loc 1 660 0
	movl	$1, -72(%rbp)	#, found_edge
	.loc 1 661 0
	jmp	.L153	#
.L152:
	.loc 1 657 0
	movq	-64(%rbp), %rax	# e, tmp320
	movq	(%rax), %rax	# e_13->pred_next, tmp321
	movq	%rax, -64(%rbp)	# tmp321, e
.L151:
	.loc 1 657 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, e
	jne	.L154	#,
.L153:
	.loc 1 664 0 is_stmt 1
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.53
	movl	-88(%rbp), %edx	# pred, tmp323
	movslq	%edx, %rdx	# tmp323, tmp322
	addq	$4, %rdx	#, tmp324
	movq	(%rax,%rdx,8), %rcx	# basic_block_info.53_173->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp325
	movl	$entry_exit_blocks+112, %edx	#,
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp325,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	jne	.L155	#,
	.loc 1 665 0
	cmpl	$0, -72(%rbp)	#, found_edge
	je	.L155	#,
	.loc 1 666 0
	movl	-88(%rbp), %edx	# pred, tmp326
	movq	-104(%rbp), %rax	# f, tmp327
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp327,
	movl	$0, %eax	#,
	call	fprintf	#
.L155:
	.loc 1 668 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.54
	movl	-88(%rbp), %edx	# pred, tmp329
	movslq	%edx, %rdx	# tmp329, tmp328
	addq	$4, %rdx	#, tmp330
	movq	(%rax,%rdx,8), %rcx	# basic_block_info.54_176->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp331
	movl	$entry_exit_blocks+112, %edx	#,
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp331,
	call	find_edge_index	#
	cmpl	$-1, %eax	#, D.11545
	je	.L156	#,
	.loc 1 669 0
	cmpl	$0, -72(%rbp)	#, found_edge
	jne	.L156	#,
	.loc 1 671 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.55
	.loc 1 670 0
	movl	-88(%rbp), %edx	# pred, tmp333
	movslq	%edx, %rdx	# tmp333, tmp332
	addq	$4, %rdx	#, tmp334
	movq	(%rax,%rdx,8), %rcx	# basic_block_info.55_179->data.bb, D.11541
	movq	-112(%rbp), %rax	# elist, tmp335
	movl	$entry_exit_blocks+112, %edx	#,
	movq	%rcx, %rsi	# D.11541,
	movq	%rax, %rdi	# tmp335,
	call	find_edge_index	#
	movl	%eax, %ecx	#, D.11545
	movl	-88(%rbp), %edx	# pred, tmp336
	movq	-104(%rbp), %rax	# f, tmp337
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp337,
	movl	$0, %eax	#,
	call	fprintf	#
.L156:
.LBE17:
	.loc 1 644 0
	addl	$1, -88(%rbp)	#, pred
.L146:
	.loc 1 644 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.56
	cmpl	%eax, -88(%rbp)	# n_basic_blocks.56, pred
	jl	.L157	#,
	.loc 1 674 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	verify_edge_list, .-verify_edge_list
	.globl	find_edge_index
	.type	find_edge_index, @function
find_edge_index:
.LFB13:
	.loc 1 683 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# edge_list, edge_list
	movq	%rsi, -32(%rbp)	# pred, pred
	movq	%rdx, -40(%rbp)	# succ, succ
	.loc 1 686 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L159	#
.L162:
	.loc 1 687 0
	movq	-24(%rbp), %rax	# edge_list, tmp74
	movq	8(%rax), %rax	# edge_list_4(D)->index_to_edge, D.11556
	movl	-4(%rbp), %edx	# x, tmp75
	movslq	%edx, %rdx	# tmp75, D.11557
	salq	$3, %rdx	#, D.11557
	addq	%rdx, %rax	# D.11557, D.11556
	movq	(%rax), %rax	# *_9, D.11558
	movq	16(%rax), %rax	# _10->src, D.11559
	cmpq	-32(%rbp), %rax	# pred, D.11559
	jne	.L160	#,
	.loc 1 688 0
	movq	-24(%rbp), %rax	# edge_list, tmp76
	movq	8(%rax), %rax	# edge_list_4(D)->index_to_edge, D.11556
	movl	-4(%rbp), %edx	# x, tmp77
	movslq	%edx, %rdx	# tmp77, D.11557
	salq	$3, %rdx	#, D.11557
	addq	%rdx, %rax	# D.11557, D.11556
	movq	(%rax), %rax	# *_16, D.11558
	movq	24(%rax), %rax	# _17->dest, D.11559
	cmpq	-40(%rbp), %rax	# succ, D.11559
	jne	.L160	#,
	.loc 1 689 0
	movl	-4(%rbp), %eax	# x, D.11555
	jmp	.L161	#
.L160:
	.loc 1 686 0
	addl	$1, -4(%rbp)	#, x
.L159:
	.loc 1 686 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# edge_list, tmp78
	movl	4(%rax), %eax	# edge_list_4(D)->num_edges, D.11555
	cmpl	-4(%rbp), %eax	# x, D.11555
	jg	.L162	#,
	.loc 1 691 0 is_stmt 1
	movl	$-1, %eax	#, D.11555
.L161:
	.loc 1 692 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	find_edge_index, .-find_edge_index
	.section	.rodata
.LC15:
	.string	"%s { "
.LC16:
	.string	"%d "
.LC17:
	.string	"}\n"
	.text
	.globl	flow_nodes_print
	.type	flow_nodes_print, @function
flow_nodes_print:
.LFB14:
	.loc 1 701 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# str, str
	movq	%rsi, -64(%rbp)	# nodes, nodes
	movq	%rdx, -72(%rbp)	# file, file
	.loc 1 704 0
	cmpq	$0, -64(%rbp)	#, nodes
	jne	.L164	#,
	.loc 1 705 0
	jmp	.L163	#
.L164:
	.loc 1 707 0
	movq	-56(%rbp), %rdx	# str, tmp67
	movq	-72(%rbp), %rax	# file, tmp68
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp68,
	movl	$0, %eax	#,
	call	fprintf	#
.LBB18:
	.loc 1 708 0
	movl	$0, -36(%rbp)	#, bit_num_
	movq	-64(%rbp), %rax	# nodes, tmp69
	movl	4(%rax), %eax	# nodes_6(D)->size, tmp70
	movl	%eax, -32(%rbp)	# tmp70, size_
	movq	-64(%rbp), %rax	# nodes, tmp74
	addq	$16, %rax	#, tmp73
	movq	%rax, -16(%rbp)	# tmp73, ptr_
	movl	$0, -40(%rbp)	#, word_num_
	jmp	.L166	#
.L171:
.LBB19:
	.loc 1 708 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# word_num_, D.11560
	leaq	0(,%rax,8), %rdx	#, D.11560
	movq	-16(%rbp), %rax	# ptr_, tmp75
	addq	%rdx, %rax	# D.11560, D.11561
	movq	(%rax), %rax	# *_15, tmp76
	movq	%rax, -24(%rbp)	# tmp76, word_
	cmpq	$0, -24(%rbp)	#, word_
	je	.L167	#,
	.loc 1 708 0 discriminator 1
	jmp	.L168	#
.L170:
.LBB20:
	.loc 1 708 0 discriminator 2
	movl	-36(%rbp), %eax	# bit_num_, bit_num_.57
	movl	$1, %edx	#, tmp77
	movl	%eax, %ecx	# bit_num_.57, tmp89
	salq	%cl, %rdx	# tmp89, tmp78
	movq	%rdx, %rax	# tmp78, tmp78
	movq	%rax, -8(%rbp)	# tmp78, _mask
	movq	-8(%rbp), %rax	# _mask, tmp79
	movq	-24(%rbp), %rdx	# word_, tmp80
	andq	%rdx, %rax	# tmp80, D.11560
	testq	%rax, %rax	# D.11560
	je	.L169	#,
	.loc 1 708 0 discriminator 1
	movq	-8(%rbp), %rax	# _mask, tmp81
	notq	%rax	# D.11560
	andq	%rax, -24(%rbp)	# D.11560, word_
	movl	-40(%rbp), %eax	# word_num_, tmp82
	sall	$6, %eax	#, D.11562
	movl	%eax, %edx	# D.11562, D.11562
	movl	-36(%rbp), %eax	# bit_num_, tmp83
	addl	%edx, %eax	# D.11562, D.11562
	movl	%eax, -28(%rbp)	# D.11562, node
	movl	-28(%rbp), %edx	# node, tmp84
	movq	-72(%rbp), %rax	# file, tmp85
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	fprintf	#
	cmpq	$0, -24(%rbp)	#, word_
	jne	.L169	#,
	jmp	.L167	#
.L169:
.LBE20:
	.loc 1 708 0 discriminator 2
	addl	$1, -36(%rbp)	#, bit_num_
.L168:
	.loc 1 708 0 discriminator 1
	cmpl	$63, -36(%rbp)	#, bit_num_
	jbe	.L170	#,
.L167:
.LBE19:
	.loc 1 708 0 discriminator 2
	addl	$1, -40(%rbp)	#, word_num_
	movl	$0, -36(%rbp)	#, bit_num_
.L166:
	.loc 1 708 0 discriminator 1
	movl	-40(%rbp), %eax	# word_num_, tmp86
	cmpl	-32(%rbp), %eax	# size_, tmp86
	jb	.L171	#,
.LBE18:
	.loc 1 709 0 is_stmt 1
	movq	-72(%rbp), %rax	# file, tmp87
	movq	%rax, %rcx	# tmp87,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
.L163:
	.loc 1 710 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	flow_nodes_print, .-flow_nodes_print
	.section	.rodata
.LC18:
	.string	"%d->%d "
	.text
	.globl	flow_edge_list_print
	.type	flow_edge_list_print, @function
flow_edge_list_print:
.LFB15:
	.loc 1 720 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# edge_list, edge_list
	movl	%edx, -36(%rbp)	# num_edges, num_edges
	movq	%rcx, -48(%rbp)	# file, file
	.loc 1 723 0
	cmpq	$0, -32(%rbp)	#, edge_list
	jne	.L173	#,
	.loc 1 724 0
	jmp	.L172	#
.L173:
	.loc 1 726 0
	movq	-24(%rbp), %rdx	# str, tmp71
	movq	-48(%rbp), %rax	# file, tmp72
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp72,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 727 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L175	#
.L176:
	.loc 1 729 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11566
	movq	-32(%rbp), %rax	# edge_list, tmp74
	addq	%rdx, %rax	# D.11566, D.11567
	movq	(%rax), %rax	# *_9, D.11568
	movq	24(%rax), %rax	# _10->dest, D.11569
	.loc 1 728 0 discriminator 2
	movl	88(%rax), %ecx	# _11->index, D.11570
	movl	-4(%rbp), %eax	# i, tmp75
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11566
	movq	-32(%rbp), %rax	# edge_list, tmp76
	addq	%rdx, %rax	# D.11566, D.11567
	movq	(%rax), %rax	# *_15, D.11568
	movq	16(%rax), %rax	# _16->src, D.11569
	movl	88(%rax), %edx	# _17->index, D.11570
	movq	-48(%rbp), %rax	# file, tmp77
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 727 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L175:
	.loc 1 727 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp78
	cmpl	-36(%rbp), %eax	# num_edges, tmp78
	jl	.L176	#,
	.loc 1 731 0 is_stmt 1
	movq	-48(%rbp), %rax	# file, tmp79
	movq	%rax, %rcx	# tmp79,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
.L172:
	.loc 1 732 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	flow_edge_list_print, .-flow_edge_list_print
	.type	remove_fake_successors, @function
remove_fake_successors:
.LFB16:
	.loc 1 742 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bb, bb
	.loc 1 745 0
	movq	-24(%rbp), %rax	# bb, tmp61
	movq	40(%rax), %rax	# bb_2(D)->succ, tmp62
	movq	%rax, -16(%rbp)	# tmp62, e
	jmp	.L178	#
.L179:
.LBB21:
	.loc 1 747 0
	movq	-16(%rbp), %rax	# e, tmp63
	movq	%rax, -8(%rbp)	# tmp63, tmp
	.loc 1 749 0
	movq	-16(%rbp), %rax	# e, tmp64
	movq	8(%rax), %rax	# e_1->succ_next, tmp65
	movq	%rax, -16(%rbp)	# tmp65, e
	.loc 1 750 0
	movq	-8(%rbp), %rax	# tmp, tmp66
	movl	48(%rax), %eax	# tmp_4->flags, D.11572
	andl	$16, %eax	#, D.11572
	testl	%eax, %eax	# D.11572
	je	.L178	#,
	.loc 1 751 0
	movq	-8(%rbp), %rax	# tmp, tmp67
	movq	%rax, %rdi	# tmp67,
	call	remove_edge	#
.L178:
.LBE21:
	.loc 1 745 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L179	#,
	.loc 1 753 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	remove_fake_successors, .-remove_fake_successors
	.globl	remove_fake_edges
	.type	remove_fake_edges, @function
remove_fake_edges:
.LFB17:
	.loc 1 761 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 764 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L181	#
.L182:
	.loc 1 765 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.58
	movl	-4(%rbp), %edx	# x, tmp63
	movslq	%edx, %rdx	# tmp63, tmp62
	addq	$4, %rdx	#, tmp64
	movq	(%rax,%rdx,8), %rax	# basic_block_info.58_4->data.bb, D.11573
	movq	%rax, %rdi	# D.11573,
	call	remove_fake_successors	#
	.loc 1 764 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L181:
	.loc 1 764 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.59
	cmpl	%eax, -4(%rbp)	# n_basic_blocks.59, x
	jl	.L182	#,
	.loc 1 768 0 is_stmt 1
	movl	$entry_exit_blocks, %edi	#,
	call	remove_fake_successors	#
	.loc 1 769 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	remove_fake_edges, .-remove_fake_edges
	.globl	add_noreturn_fake_exit_edges
	.type	add_noreturn_fake_exit_edges, @function
add_noreturn_fake_exit_edges:
.LFB18:
	.loc 1 777 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 780 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L184	#
.L186:
	.loc 1 781 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.60
	movl	-4(%rbp), %edx	# x, tmp66
	movslq	%edx, %rdx	# tmp66, tmp65
	addq	$4, %rdx	#, tmp67
	movq	(%rax,%rdx,8), %rax	# basic_block_info.60_4->data.bb, D.11574
	movq	40(%rax), %rax	# _5->succ, D.11575
	testq	%rax, %rax	# D.11575
	jne	.L185	#,
	.loc 1 782 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.61
	movl	-4(%rbp), %edx	# x, tmp69
	movslq	%edx, %rdx	# tmp69, tmp68
	addq	$4, %rdx	#, tmp70
	movq	(%rax,%rdx,8), %rax	# basic_block_info.61_7->data.bb, D.11574
	movl	$16, %edx	#,
	movl	$entry_exit_blocks+112, %esi	#,
	movq	%rax, %rdi	# D.11574,
	call	make_single_succ_edge	#
.L185:
	.loc 1 780 0
	addl	$1, -4(%rbp)	#, x
.L184:
	.loc 1 780 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.62
	cmpl	%eax, -4(%rbp)	# n_basic_blocks.62, x
	jl	.L186	#,
	.loc 1 783 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	add_noreturn_fake_exit_edges, .-add_noreturn_fake_exit_edges
	.globl	connect_infinite_loops_to_exit
	.type	connect_infinite_loops_to_exit, @function
connect_infinite_loops_to_exit:
.LFB19:
	.loc 1 798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 804 0
	leaq	-32(%rbp), %rax	#, tmp59
	movq	%rax, %rdi	# tmp59,
	call	flow_dfs_compute_reverse_init	#
	.loc 1 805 0
	leaq	-32(%rbp), %rax	#, tmp60
	movl	$entry_exit_blocks+112, %esi	#,
	movq	%rax, %rdi	# tmp60,
	call	flow_dfs_compute_reverse_add_bb	#
.L190:
	.loc 1 810 0
	leaq	-32(%rbp), %rax	#, tmp61
	movq	%rax, %rdi	# tmp61,
	call	flow_dfs_compute_reverse_execute	#
	movq	%rax, -40(%rbp)	# tmp62, unvisited_block
	.loc 1 811 0
	cmpq	$0, -40(%rbp)	#, unvisited_block
	jne	.L188	#,
	.loc 1 812 0
	jmp	.L192	#
.L188:
	.loc 1 814 0
	movq	-40(%rbp), %rax	# unvisited_block, tmp63
	movl	$16, %edx	#,
	movl	$entry_exit_blocks+112, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	make_edge	#
	.loc 1 815 0
	movq	-40(%rbp), %rdx	# unvisited_block, tmp64
	leaq	-32(%rbp), %rax	#, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	flow_dfs_compute_reverse_add_bb	#
	.loc 1 816 0
	jmp	.L190	#
.L192:
	.loc 1 818 0
	leaq	-32(%rbp), %rax	#, tmp66
	movq	%rax, %rdi	# tmp66,
	call	flow_dfs_compute_reverse_finish	#
	.loc 1 819 0
	nop
	.loc 1 820 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	connect_infinite_loops_to_exit, .-connect_infinite_loops_to_exit
	.globl	flow_reverse_top_sort_order_compute
	.type	flow_reverse_top_sort_order_compute, @function
flow_reverse_top_sort_order_compute:
.LFB20:
	.loc 1 827 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# rts_order, rts_order
	.loc 1 830 0
	movl	$0, -44(%rbp)	#, postnum
	.loc 1 834 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.63
	addl	$1, %eax	#, D.11576
	cltq
	salq	$3, %rax	#, D.11577
	movq	%rax, %rdi	# D.11577,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp113, stack
	.loc 1 835 0
	movl	$0, -48(%rbp)	#, sp
	.loc 1 838 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.64
	movl	%eax, %edi	# n_basic_blocks.65,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp114, visited
	.loc 1 841 0
	movq	-32(%rbp), %rax	# visited, tmp115
	movq	%rax, %rdi	# tmp115,
	call	sbitmap_zero	#
	.loc 1 844 0
	movl	-48(%rbp), %eax	# sp, sp.66
	leal	1(%rax), %edx	#, tmp116
	movl	%edx, -48(%rbp)	# tmp116, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11577
	movq	-40(%rbp), %rax	# stack, tmp117
	addq	%rax, %rdx	# tmp117, D.11578
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.11579
	movq	%rax, (%rdx)	# D.11579, *_20
	.loc 1 846 0
	jmp	.L194	#
.L200:
.LBB22:
	.loc 1 853 0
	movl	-48(%rbp), %eax	# sp, tmp118
	cltq
	salq	$3, %rax	#, D.11577
	leaq	-8(%rax), %rdx	#, D.11580
	movq	-40(%rbp), %rax	# stack, tmp119
	addq	%rdx, %rax	# D.11580, D.11578
	movq	(%rax), %rax	# *_25, tmp120
	movq	%rax, -24(%rbp)	# tmp120, e
	.loc 1 854 0
	movq	-24(%rbp), %rax	# e, tmp121
	movq	16(%rax), %rax	# e_26->src, tmp122
	movq	%rax, -16(%rbp)	# tmp122, src
	.loc 1 855 0
	movq	-24(%rbp), %rax	# e, tmp123
	movq	24(%rax), %rax	# e_26->dest, tmp124
	movq	%rax, -8(%rbp)	# tmp124, dest
	.loc 1 858 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, dest
	je	.L195	#,
	.loc 1 858 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp125
	movl	88(%rax), %eax	# dest_28->index, D.11576
	shrl	$6, %eax	#, D.11581
	movl	%eax, %edx	# D.11581, D.11581
	movq	-32(%rbp), %rax	# visited, tmp126
	movl	%edx, %edx	# D.11581, tmp127
	addq	$2, %rdx	#, tmp128
	movq	(%rax,%rdx,8), %rdx	# visited_15->elms, D.11577
	movq	-8(%rbp), %rax	# dest, tmp129
	movl	88(%rax), %eax	# dest_28->index, D.11576
	andl	$63, %eax	#, D.11576
	movl	%eax, %ecx	# D.11576, tmp158
	shrq	%cl, %rdx	# tmp158, D.11577
	movq	%rdx, %rax	# D.11577, D.11577
	andl	$1, %eax	#, D.11577
	testq	%rax, %rax	# D.11577
	jne	.L195	#,
	.loc 1 861 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp130
	movl	88(%rax), %eax	# dest_28->index, D.11576
	shrl	$6, %eax	#, D.11581
	movq	-32(%rbp), %rdx	# visited, tmp131
	movl	%eax, %ecx	# D.11581, tmp132
	addq	$2, %rcx	#, tmp133
	movq	(%rdx,%rcx,8), %rsi	# visited_15->elms, D.11577
	movq	-8(%rbp), %rdx	# dest, tmp134
	movl	88(%rdx), %edx	# dest_28->index, D.11576
	andl	$63, %edx	#, D.11576
	movl	$1, %edi	#, tmp135
	movl	%edx, %ecx	# D.11576, tmp160
	salq	%cl, %rdi	# tmp160, D.11577
	movq	%rdi, %rdx	# D.11577, D.11577
	orq	%rdx, %rsi	# D.11577, D.11577
	movq	%rsi, %rcx	# D.11577, D.11577
	movq	-32(%rbp), %rdx	# visited, tmp136
	movl	%eax, %eax	# D.11581, tmp137
	addq	$2, %rax	#, tmp138
	movq	%rcx, (%rdx,%rax,8)	# D.11577, visited_15->elms
	.loc 1 863 0
	movq	-8(%rbp), %rax	# dest, tmp139
	movq	40(%rax), %rax	# dest_28->succ, D.11579
	testq	%rax, %rax	# D.11579
	je	.L196	#,
	.loc 1 866 0
	movl	-48(%rbp), %eax	# sp, sp.67
	leal	1(%rax), %edx	#, tmp140
	movl	%edx, -48(%rbp)	# tmp140, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11577
	movq	-40(%rbp), %rax	# stack, tmp141
	addq	%rax, %rdx	# tmp141, D.11578
	movq	-8(%rbp), %rax	# dest, tmp142
	movq	40(%rax), %rax	# dest_28->succ, D.11579
	movq	%rax, (%rdx)	# D.11579, *_50
	.loc 1 863 0
	jmp	.L194	#
.L196:
	.loc 1 868 0
	movl	-44(%rbp), %eax	# postnum, postnum.68
	leal	1(%rax), %edx	#, tmp143
	movl	%edx, -44(%rbp)	# tmp143, postnum
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11577
	movq	-56(%rbp), %rax	# rts_order, tmp144
	addq	%rax, %rdx	# tmp144, D.11582
	movq	-8(%rbp), %rax	# dest, tmp145
	movl	88(%rax), %eax	# dest_28->index, D.11576
	movl	%eax, (%rdx)	# D.11576, *_57
	.loc 1 863 0
	jmp	.L194	#
.L195:
	.loc 1 872 0
	movq	-24(%rbp), %rax	# e, tmp146
	movq	8(%rax), %rax	# e_26->succ_next, D.11579
	testq	%rax, %rax	# D.11579
	jne	.L198	#,
	.loc 1 872 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -16(%rbp)	#, src
	je	.L198	#,
	.loc 1 873 0 is_stmt 1
	movl	-44(%rbp), %eax	# postnum, postnum.69
	leal	1(%rax), %edx	#, tmp147
	movl	%edx, -44(%rbp)	# tmp147, postnum
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11577
	movq	-56(%rbp), %rax	# rts_order, tmp148
	addq	%rax, %rdx	# tmp148, D.11582
	movq	-16(%rbp), %rax	# src, tmp149
	movl	88(%rax), %eax	# src_27->index, D.11576
	movl	%eax, (%rdx)	# D.11576, *_64
.L198:
	.loc 1 875 0
	movq	-24(%rbp), %rax	# e, tmp150
	movq	8(%rax), %rax	# e_26->succ_next, D.11579
	testq	%rax, %rax	# D.11579
	je	.L199	#,
	.loc 1 876 0
	movl	-48(%rbp), %eax	# sp, tmp151
	cltq
	salq	$3, %rax	#, D.11577
	leaq	-8(%rax), %rdx	#, D.11580
	movq	-40(%rbp), %rax	# stack, tmp152
	addq	%rax, %rdx	# tmp152, D.11578
	movq	-24(%rbp), %rax	# e, tmp153
	movq	8(%rax), %rax	# e_26->succ_next, D.11579
	movq	%rax, (%rdx)	# D.11579, *_70
	jmp	.L194	#
.L199:
	.loc 1 878 0
	subl	$1, -48(%rbp)	#, sp
.L194:
.LBE22:
	.loc 1 846 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, sp
	jne	.L200	#,
	.loc 1 882 0
	movq	-40(%rbp), %rax	# stack, tmp154
	movq	%rax, %rdi	# tmp154,
	call	free	#
	.loc 1 883 0
	movq	-32(%rbp), %rax	# visited, tmp155
	movq	%rax, %rdi	# tmp155,
	call	free	#
	.loc 1 884 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	flow_reverse_top_sort_order_compute, .-flow_reverse_top_sort_order_compute
	.section	.rodata
.LC19:
	.string	"cfganal.c"
	.text
	.globl	flow_depth_first_order_compute
	.type	flow_depth_first_order_compute, @function
flow_depth_first_order_compute:
.LFB21:
	.loc 1 897 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# dfs_order, dfs_order
	movq	%rsi, -80(%rbp)	# rc_order, rc_order
	.loc 1 900 0
	movl	$0, -48(%rbp)	#, dfsnum
	.loc 1 901 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.70
	subl	$1, %eax	#, tmp122
	movl	%eax, -44(%rbp)	# tmp122, rcnum
	.loc 1 905 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.71
	addl	$1, %eax	#, D.11583
	cltq
	salq	$3, %rax	#, D.11584
	movq	%rax, %rdi	# D.11584,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp123, stack
	.loc 1 906 0
	movl	$0, -52(%rbp)	#, sp
	.loc 1 909 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.72
	movl	%eax, %edi	# n_basic_blocks.73,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp124, visited
	.loc 1 912 0
	movq	-32(%rbp), %rax	# visited, tmp125
	movq	%rax, %rdi	# tmp125,
	call	sbitmap_zero	#
	.loc 1 915 0
	movl	-52(%rbp), %eax	# sp, sp.74
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -52(%rbp)	# tmp126, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11584
	movq	-40(%rbp), %rax	# stack, tmp127
	addq	%rax, %rdx	# tmp127, D.11585
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.11586
	movq	%rax, (%rdx)	# D.11586, *_23
	.loc 1 917 0
	jmp	.L202	#
.L209:
.LBB23:
	.loc 1 924 0
	movl	-52(%rbp), %eax	# sp, tmp128
	cltq
	salq	$3, %rax	#, D.11584
	leaq	-8(%rax), %rdx	#, D.11587
	movq	-40(%rbp), %rax	# stack, tmp129
	addq	%rdx, %rax	# D.11587, D.11585
	movq	(%rax), %rax	# *_28, tmp130
	movq	%rax, -24(%rbp)	# tmp130, e
	.loc 1 925 0
	movq	-24(%rbp), %rax	# e, tmp131
	movq	16(%rax), %rax	# e_29->src, tmp132
	movq	%rax, -16(%rbp)	# tmp132, src
	.loc 1 926 0
	movq	-24(%rbp), %rax	# e, tmp133
	movq	24(%rax), %rax	# e_29->dest, tmp134
	movq	%rax, -8(%rbp)	# tmp134, dest
	.loc 1 929 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, dest
	je	.L203	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dest, tmp135
	movl	88(%rax), %eax	# dest_31->index, D.11583
	shrl	$6, %eax	#, D.11588
	movl	%eax, %edx	# D.11588, D.11588
	movq	-32(%rbp), %rax	# visited, tmp136
	movl	%edx, %edx	# D.11588, tmp137
	addq	$2, %rdx	#, tmp138
	movq	(%rax,%rdx,8), %rdx	# visited_18->elms, D.11584
	movq	-8(%rbp), %rax	# dest, tmp139
	movl	88(%rax), %eax	# dest_31->index, D.11583
	andl	$63, %eax	#, D.11583
	movl	%eax, %ecx	# D.11583, tmp172
	shrq	%cl, %rdx	# tmp172, D.11584
	movq	%rdx, %rax	# D.11584, D.11584
	andl	$1, %eax	#, D.11584
	testq	%rax, %rax	# D.11584
	jne	.L203	#,
	.loc 1 932 0 is_stmt 1
	movq	-8(%rbp), %rax	# dest, tmp140
	movl	88(%rax), %eax	# dest_31->index, D.11583
	shrl	$6, %eax	#, D.11588
	movq	-32(%rbp), %rdx	# visited, tmp141
	movl	%eax, %ecx	# D.11588, tmp142
	addq	$2, %rcx	#, tmp143
	movq	(%rdx,%rcx,8), %rsi	# visited_18->elms, D.11584
	movq	-8(%rbp), %rdx	# dest, tmp144
	movl	88(%rdx), %edx	# dest_31->index, D.11583
	andl	$63, %edx	#, D.11583
	movl	$1, %edi	#, tmp145
	movl	%edx, %ecx	# D.11583, tmp174
	salq	%cl, %rdi	# tmp174, D.11584
	movq	%rdi, %rdx	# D.11584, D.11584
	orq	%rdx, %rsi	# D.11584, D.11584
	movq	%rsi, %rcx	# D.11584, D.11584
	movq	-32(%rbp), %rdx	# visited, tmp146
	movl	%eax, %eax	# D.11588, tmp147
	addq	$2, %rax	#, tmp148
	movq	%rcx, (%rdx,%rax,8)	# D.11584, visited_18->elms
	.loc 1 934 0
	cmpq	$0, -72(%rbp)	#, dfs_order
	je	.L204	#,
	.loc 1 935 0
	movl	-48(%rbp), %eax	# dfsnum, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11584
	movq	-72(%rbp), %rax	# dfs_order, tmp150
	addq	%rax, %rdx	# tmp150, D.11589
	movq	-8(%rbp), %rax	# dest, tmp151
	movl	88(%rax), %eax	# dest_31->index, D.11583
	movl	%eax, (%rdx)	# D.11583, *_51
.L204:
	.loc 1 937 0
	addl	$1, -48(%rbp)	#, dfsnum
	.loc 1 939 0
	movq	-8(%rbp), %rax	# dest, tmp152
	movq	40(%rax), %rax	# dest_31->succ, D.11586
	testq	%rax, %rax	# D.11586
	je	.L205	#,
	.loc 1 942 0
	movl	-52(%rbp), %eax	# sp, sp.75
	leal	1(%rax), %edx	#, tmp153
	movl	%edx, -52(%rbp)	# tmp153, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11584
	movq	-40(%rbp), %rax	# stack, tmp154
	addq	%rax, %rdx	# tmp154, D.11585
	movq	-8(%rbp), %rax	# dest, tmp155
	movq	40(%rax), %rax	# dest_31->succ, D.11586
	movq	%rax, (%rdx)	# D.11586, *_59
	jmp	.L206	#
.L205:
	.loc 1 943 0
	cmpq	$0, -80(%rbp)	#, rc_order
	je	.L206	#,
	.loc 1 946 0
	movl	-44(%rbp), %eax	# rcnum, rcnum.76
	leal	-1(%rax), %edx	#, tmp156
	movl	%edx, -44(%rbp)	# tmp156, rcnum
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11584
	movq	-80(%rbp), %rax	# rc_order, tmp157
	addq	%rax, %rdx	# tmp157, D.11589
	movq	-8(%rbp), %rax	# dest, tmp158
	movl	88(%rax), %eax	# dest_31->index, D.11583
	movl	%eax, (%rdx)	# D.11583, *_66
	.loc 1 939 0
	jmp	.L202	#
.L206:
	jmp	.L202	#
.L203:
	.loc 1 950 0
	movq	-24(%rbp), %rax	# e, tmp159
	movq	8(%rax), %rax	# e_29->succ_next, D.11586
	testq	%rax, %rax	# D.11586
	jne	.L207	#,
	.loc 1 950 0 is_stmt 0 discriminator 1
	cmpq	$entry_exit_blocks, -16(%rbp)	#, src
	je	.L207	#,
	.loc 1 951 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, rc_order
	je	.L207	#,
	.loc 1 954 0
	movl	-44(%rbp), %eax	# rcnum, rcnum.77
	leal	-1(%rax), %edx	#, tmp160
	movl	%edx, -44(%rbp)	# tmp160, rcnum
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11584
	movq	-80(%rbp), %rax	# rc_order, tmp161
	addq	%rax, %rdx	# tmp161, D.11589
	movq	-16(%rbp), %rax	# src, tmp162
	movl	88(%rax), %eax	# src_30->index, D.11583
	movl	%eax, (%rdx)	# D.11583, *_73
.L207:
	.loc 1 956 0
	movq	-24(%rbp), %rax	# e, tmp163
	movq	8(%rax), %rax	# e_29->succ_next, D.11586
	testq	%rax, %rax	# D.11586
	je	.L208	#,
	.loc 1 957 0
	movl	-52(%rbp), %eax	# sp, tmp164
	cltq
	salq	$3, %rax	#, D.11584
	leaq	-8(%rax), %rdx	#, D.11587
	movq	-40(%rbp), %rax	# stack, tmp165
	addq	%rax, %rdx	# tmp165, D.11585
	movq	-24(%rbp), %rax	# e, tmp166
	movq	8(%rax), %rax	# e_29->succ_next, D.11586
	movq	%rax, (%rdx)	# D.11586, *_79
	jmp	.L202	#
.L208:
	.loc 1 959 0
	subl	$1, -52(%rbp)	#, sp
.L202:
.LBE23:
	.loc 1 917 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, sp
	jne	.L209	#,
	.loc 1 963 0
	movq	-40(%rbp), %rax	# stack, tmp167
	movq	%rax, %rdi	# tmp167,
	call	free	#
	.loc 1 964 0
	movq	-32(%rbp), %rax	# visited, tmp168
	movq	%rax, %rdi	# tmp168,
	call	free	#
	.loc 1 968 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.78
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.78, dfsnum
	jle	.L210	#,
	.loc 1 969 0
	movl	$__FUNCTION__.10404, %edx	#,
	movl	$969, %esi	#,
	movl	$.LC19, %edi	#,
	call	fancy_abort	#
.L210:
	.loc 1 972 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.79
	cmpl	%eax, -48(%rbp)	# n_basic_blocks.79, dfsnum
	jge	.L211	#,
	.loc 1 973 0
	movl	$__FUNCTION__.10404, %edx	#,
	movl	$973, %esi	#,
	movl	$.LC19, %edi	#,
	call	fancy_abort	#
.L211:
	.loc 1 975 0
	movl	-48(%rbp), %eax	# dfsnum, D.11583
	.loc 1 976 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	flow_depth_first_order_compute, .-flow_depth_first_order_compute
	.globl	flow_preorder_transversal_compute
	.type	flow_preorder_transversal_compute, @function
flow_preorder_transversal_compute:
.LFB22:
	.loc 1 999 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# pot_order, pot_order
	.loc 1 1010 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.80
	addl	$1, %eax	#, D.11591
	cltq
	salq	$3, %rax	#, D.11592
	movq	%rax, %rdi	# D.11592,
	call	xmalloc	#
	movq	%rax, -56(%rbp)	# tmp168, stack
	.loc 1 1011 0
	movl	$0, -76(%rbp)	#, sp
	.loc 1 1014 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.81
	cltq
	movl	$24, %esi	#,
	movq	%rax, %rdi	# D.11592,
	call	xcalloc	#
	movq	%rax, -48(%rbp)	# tmp169, dfst
	.loc 1 1017 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L214	#
.L219:
	.loc 1 1019 0
	movl	$0, -80(%rbp)	#, max_successors
	.loc 1 1020 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.82
	movl	-84(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, tmp170
	addq	$4, %rdx	#, tmp172
	movq	(%rax,%rdx,8), %rax	# basic_block_info.82_22->data.bb, D.11593
	movq	40(%rax), %rax	# _23->succ, tmp173
	movq	%rax, -72(%rbp)	# tmp173, e
	jmp	.L215	#
.L216:
	.loc 1 1021 0 discriminator 2
	addl	$1, -80(%rbp)	#, max_successors
	.loc 1 1020 0 discriminator 2
	movq	-72(%rbp), %rax	# e, tmp174
	movq	8(%rax), %rax	# e_1->succ_next, tmp175
	movq	%rax, -72(%rbp)	# tmp175, e
.L215:
	.loc 1 1020 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, e
	jne	.L216	#,
	.loc 1 1023 0 is_stmt 1
	movl	-84(%rbp), %eax	# i, tmp176
	movslq	%eax, %rdx	# tmp176, D.11592
	movq	%rdx, %rax	# D.11592, tmp177
	addq	%rax, %rax	# tmp177
	addq	%rdx, %rax	# D.11592, tmp177
	salq	$3, %rax	#, tmp178
	movq	%rax, %rdx	# tmp177, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp179
	leaq	(%rdx,%rax), %rbx	#, D.11594
	.loc 1 1027 0
	cmpl	$0, -80(%rbp)	#, max_successors
	je	.L217	#,
	.loc 1 1025 0
	movl	-80(%rbp), %eax	# max_successors, tmp180
	cltq
	.loc 1 1027 0
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.11592,
	call	xcalloc	#
	jmp	.L218	#
.L217:
	.loc 1 1027 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.83
.L218:
	.loc 1 1024 0 is_stmt 1
	movq	%rax, 8(%rbx)	# iftmp.83, _29->node
	.loc 1 1017 0
	addl	$1, -84(%rbp)	#, i
.L214:
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.84
	cmpl	%eax, -84(%rbp)	# n_basic_blocks.84, i
	jl	.L219	#,
	.loc 1 1031 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.85
	movl	%eax, %edi	# n_basic_blocks.86,
	call	sbitmap_alloc	#
	movq	%rax, -40(%rbp)	# tmp182, visited
	.loc 1 1034 0
	movq	-40(%rbp), %rax	# visited, tmp183
	movq	%rax, %rdi	# tmp183,
	call	sbitmap_zero	#
	.loc 1 1037 0
	movl	-76(%rbp), %eax	# sp, sp.87
	leal	1(%rax), %edx	#, tmp184
	movl	%edx, -76(%rbp)	# tmp184, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11592
	movq	-56(%rbp), %rax	# stack, tmp185
	addq	%rax, %rdx	# tmp185, D.11595
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, D.11596
	movq	%rax, (%rdx)	# D.11596, *_41
	.loc 1 1039 0
	jmp	.L220	#
.L225:
.LBB24:
	.loc 1 1045 0
	movl	-76(%rbp), %eax	# sp, tmp186
	cltq
	salq	$3, %rax	#, D.11592
	leaq	-8(%rax), %rdx	#, D.11597
	movq	-56(%rbp), %rax	# stack, tmp187
	addq	%rdx, %rax	# D.11597, D.11595
	movq	(%rax), %rax	# *_46, tmp188
	movq	%rax, -72(%rbp)	# tmp188, e
	.loc 1 1046 0
	movq	-72(%rbp), %rax	# e, tmp189
	movq	16(%rax), %rax	# e_47->src, tmp190
	movq	%rax, -32(%rbp)	# tmp190, src
	.loc 1 1047 0
	movq	-72(%rbp), %rax	# e, tmp191
	movq	24(%rax), %rax	# e_47->dest, tmp192
	movq	%rax, -24(%rbp)	# tmp192, dest
	.loc 1 1050 0
	cmpq	$entry_exit_blocks+112, -24(%rbp)	#, dest
	je	.L221	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# dest, tmp193
	movl	88(%rax), %eax	# dest_49->index, D.11591
	shrl	$6, %eax	#, D.11598
	movl	%eax, %edx	# D.11598, D.11598
	movq	-40(%rbp), %rax	# visited, tmp194
	movl	%edx, %edx	# D.11598, tmp195
	addq	$2, %rdx	#, tmp196
	movq	(%rax,%rdx,8), %rdx	# visited_36->elms, D.11592
	movq	-24(%rbp), %rax	# dest, tmp197
	movl	88(%rax), %eax	# dest_49->index, D.11591
	andl	$63, %eax	#, D.11591
	movl	%eax, %ecx	# D.11591, tmp264
	shrq	%cl, %rdx	# tmp264, D.11592
	movq	%rdx, %rax	# D.11592, D.11592
	andl	$1, %eax	#, D.11592
	testq	%rax, %rax	# D.11592
	jne	.L221	#,
	.loc 1 1053 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp198
	movl	88(%rax), %eax	# dest_49->index, D.11591
	shrl	$6, %eax	#, D.11598
	movq	-40(%rbp), %rdx	# visited, tmp199
	movl	%eax, %ecx	# D.11598, tmp200
	addq	$2, %rcx	#, tmp201
	movq	(%rdx,%rcx,8), %rsi	# visited_36->elms, D.11592
	movq	-24(%rbp), %rdx	# dest, tmp202
	movl	88(%rdx), %edx	# dest_49->index, D.11591
	andl	$63, %edx	#, D.11591
	movl	$1, %edi	#, tmp203
	movl	%edx, %ecx	# D.11591, tmp266
	salq	%cl, %rdi	# tmp266, D.11592
	movq	%rdi, %rdx	# D.11592, D.11592
	orq	%rdx, %rsi	# D.11592, D.11592
	movq	%rsi, %rcx	# D.11592, D.11592
	movq	-40(%rbp), %rdx	# visited, tmp204
	movl	%eax, %eax	# D.11598, tmp205
	addq	$2, %rax	#, tmp206
	movq	%rcx, (%rdx,%rax,8)	# D.11592, visited_36->elms
	.loc 1 1056 0
	cmpq	$entry_exit_blocks, -32(%rbp)	#, src
	je	.L222	#,
	.loc 1 1058 0
	movq	-32(%rbp), %rax	# src, tmp207
	movl	88(%rax), %eax	# src_48->index, D.11591
	movslq	%eax, %rdx	# D.11591, D.11592
	movq	%rdx, %rax	# D.11592, tmp208
	addq	%rax, %rax	# tmp208
	addq	%rdx, %rax	# D.11592, tmp208
	salq	$3, %rax	#, tmp209
	movq	%rax, %rdx	# tmp208, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp210
	addq	%rdx, %rax	# D.11592, D.11594
	movq	8(%rax), %rsi	# _69->node, D.11599
	movq	-32(%rbp), %rax	# src, tmp211
	movl	88(%rax), %eax	# src_48->index, D.11591
	movslq	%eax, %rdx	# D.11591, D.11592
	movq	%rdx, %rax	# D.11592, tmp212
	addq	%rax, %rax	# tmp212
	addq	%rdx, %rax	# D.11592, tmp212
	salq	$3, %rax	#, tmp213
	movq	%rax, %rdx	# tmp212, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp214
	addq	%rax, %rdx	# tmp214, D.11594
	movl	(%rdx), %eax	# _74->nnodes, D.11598
	leal	1(%rax), %ecx	#, D.11598
	movl	%ecx, (%rdx)	# D.11598, _74->nnodes
	movl	%eax, %eax	# D.11598, D.11592
	salq	$3, %rax	#, D.11592
	leaq	(%rsi,%rax), %rcx	#, D.11599
	.loc 1 1059 0
	movq	-24(%rbp), %rax	# dest, tmp215
	movl	88(%rax), %eax	# dest_49->index, D.11591
	movslq	%eax, %rdx	# D.11591, D.11592
	movq	%rdx, %rax	# D.11592, tmp216
	addq	%rax, %rax	# tmp216
	addq	%rdx, %rax	# D.11592, tmp216
	salq	$3, %rax	#, tmp217
	movq	%rax, %rdx	# tmp216, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp218
	addq	%rdx, %rax	# D.11592, D.11594
	movq	%rax, (%rcx)	# D.11594, *_80
	.loc 1 1060 0
	movq	-24(%rbp), %rax	# dest, tmp219
	movl	88(%rax), %eax	# dest_49->index, D.11591
	movslq	%eax, %rdx	# D.11591, D.11592
	movq	%rdx, %rax	# D.11592, tmp220
	addq	%rax, %rax	# tmp220
	addq	%rdx, %rax	# D.11592, tmp220
	salq	$3, %rax	#, tmp221
	movq	%rax, %rdx	# tmp220, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp222
	leaq	(%rdx,%rax), %rcx	#, D.11594
	movq	-32(%rbp), %rax	# src, tmp223
	movl	88(%rax), %eax	# src_48->index, D.11591
	movslq	%eax, %rdx	# D.11591, D.11592
	movq	%rdx, %rax	# D.11592, tmp224
	addq	%rax, %rax	# tmp224
	addq	%rdx, %rax	# D.11592, tmp224
	salq	$3, %rax	#, tmp225
	movq	%rax, %rdx	# tmp224, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp226
	addq	%rdx, %rax	# D.11592, D.11594
	movq	%rax, 16(%rcx)	# D.11594, _88->up
.L222:
	.loc 1 1063 0
	movq	-24(%rbp), %rax	# dest, tmp227
	movq	40(%rax), %rax	# dest_49->succ, D.11596
	testq	%rax, %rax	# D.11596
	je	.L223	#,
	.loc 1 1066 0
	movl	-76(%rbp), %eax	# sp, sp.88
	leal	1(%rax), %edx	#, tmp228
	movl	%edx, -76(%rbp)	# tmp228, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11592
	movq	-56(%rbp), %rax	# stack, tmp229
	addq	%rax, %rdx	# tmp229, D.11595
	movq	-24(%rbp), %rax	# dest, tmp230
	movq	40(%rax), %rax	# dest_49->succ, D.11596
	movq	%rax, (%rdx)	# D.11596, *_98
	.loc 1 1063 0
	jmp	.L220	#
.L223:
	.loc 1 1063 0 is_stmt 0 discriminator 1
	jmp	.L220	#
.L221:
	.loc 1 1069 0 is_stmt 1
	movq	-72(%rbp), %rax	# e, tmp231
	movq	8(%rax), %rax	# e_47->succ_next, D.11596
	testq	%rax, %rax	# D.11596
	je	.L224	#,
	.loc 1 1070 0
	movl	-76(%rbp), %eax	# sp, tmp232
	cltq
	salq	$3, %rax	#, D.11592
	leaq	-8(%rax), %rdx	#, D.11597
	movq	-56(%rbp), %rax	# stack, tmp233
	addq	%rax, %rdx	# tmp233, D.11595
	movq	-72(%rbp), %rax	# e, tmp234
	movq	8(%rax), %rax	# e_47->succ_next, D.11596
	movq	%rax, (%rdx)	# D.11596, *_104
	jmp	.L220	#
.L224:
	.loc 1 1072 0
	subl	$1, -76(%rbp)	#, sp
.L220:
.LBE24:
	.loc 1 1039 0 discriminator 1
	cmpl	$0, -76(%rbp)	#, sp
	jne	.L225	#,
	.loc 1 1075 0
	movq	-56(%rbp), %rax	# stack, tmp235
	movq	%rax, %rdi	# tmp235,
	call	free	#
	.loc 1 1076 0
	movq	-40(%rbp), %rax	# visited, tmp236
	movq	%rax, %rdi	# tmp236,
	call	free	#
	.loc 1 1081 0
	movl	$0, -84(%rbp)	#, i
	.loc 1 1082 0
	movq	-48(%rbp), %rax	# dfst, tmp237
	movq	%rax, -64(%rbp)	# tmp237, node
	.loc 1 1083 0
	movl	-84(%rbp), %eax	# i, i.89
	leal	1(%rax), %edx	#, tmp238
	movl	%edx, -84(%rbp)	# tmp238, i
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11592
	movq	-104(%rbp), %rax	# pot_order, tmp239
	addq	%rdx, %rax	# D.11592, D.11600
	movl	$0, (%rax)	#, *_114
	.loc 1 1085 0
	jmp	.L226	#
.L228:
	.loc 1 1087 0
	movq	-64(%rbp), %rax	# node, tmp240
	movl	(%rax), %eax	# node_8->nnodes, D.11598
	testl	%eax, %eax	# D.11598
	je	.L227	#,
	.loc 1 1089 0
	movq	-64(%rbp), %rax	# node, tmp241
	movq	8(%rax), %rdx	# node_8->node, D.11599
	movq	-64(%rbp), %rax	# node, tmp242
	movl	(%rax), %eax	# node_8->nnodes, D.11598
	leal	-1(%rax), %ecx	#, D.11598
	movq	-64(%rbp), %rax	# node, tmp243
	movl	%ecx, (%rax)	# D.11598, node_8->nnodes
	movq	-64(%rbp), %rax	# node, tmp244
	movl	(%rax), %eax	# node_8->nnodes, D.11598
	movl	%eax, %eax	# D.11598, D.11592
	salq	$3, %rax	#, D.11592
	addq	%rdx, %rax	# D.11599, D.11599
	movq	(%rax), %rax	# *_122, tmp245
	movq	%rax, -64(%rbp)	# tmp245, node
	.loc 1 1090 0
	movl	-84(%rbp), %eax	# i, i.90
	leal	1(%rax), %edx	#, tmp246
	movl	%edx, -84(%rbp)	# tmp246, i
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11592
	movq	-104(%rbp), %rax	# pot_order, tmp247
	addq	%rax, %rdx	# tmp247, D.11600
	movq	-64(%rbp), %rcx	# node, node.91
	movq	-48(%rbp), %rax	# dfst, dfst.92
	subq	%rax, %rcx	# dfst.92, D.11601
	movq	%rcx, %rax	# D.11601, D.11601
	sarq	$3, %rax	#, tmp248
	movq	%rax, %rcx	# tmp248, tmp248
	movabsq	$-6148914691236517205, %rax	#, tmp250
	imulq	%rcx, %rax	# tmp248, tmp249
	movl	%eax, (%rdx)	# D.11591, *_128
	jmp	.L226	#
.L227:
	.loc 1 1093 0
	movq	-64(%rbp), %rax	# node, tmp251
	movq	16(%rax), %rax	# node_8->up, tmp252
	movq	%rax, -64(%rbp)	# tmp252, node
.L226:
	.loc 1 1085 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, node
	jne	.L228	#,
	.loc 1 1098 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L229	#
.L231:
	.loc 1 1099 0
	movl	-84(%rbp), %eax	# i, tmp253
	movslq	%eax, %rdx	# tmp253, D.11592
	movq	%rdx, %rax	# D.11592, tmp254
	addq	%rax, %rax	# tmp254
	addq	%rdx, %rax	# D.11592, tmp254
	salq	$3, %rax	#, tmp255
	movq	%rax, %rdx	# tmp254, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp256
	addq	%rdx, %rax	# D.11592, D.11594
	movq	8(%rax), %rax	# _139->node, D.11599
	testq	%rax, %rax	# D.11599
	je	.L230	#,
	.loc 1 1100 0
	movl	-84(%rbp), %eax	# i, tmp257
	movslq	%eax, %rdx	# tmp257, D.11592
	movq	%rdx, %rax	# D.11592, tmp258
	addq	%rax, %rax	# tmp258
	addq	%rdx, %rax	# D.11592, tmp258
	salq	$3, %rax	#, tmp259
	movq	%rax, %rdx	# tmp258, D.11592
	movq	-48(%rbp), %rax	# dfst, tmp260
	addq	%rdx, %rax	# D.11592, D.11594
	movq	8(%rax), %rax	# _143->node, D.11599
	movq	%rax, %rdi	# D.11599,
	call	free	#
.L230:
	.loc 1 1098 0
	addl	$1, -84(%rbp)	#, i
.L229:
	.loc 1 1098 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.93
	cmpl	%eax, -84(%rbp)	# n_basic_blocks.93, i
	jl	.L231	#,
	.loc 1 1102 0 is_stmt 1
	movq	-48(%rbp), %rax	# dfst, tmp261
	movq	%rax, %rdi	# tmp261,
	call	free	#
	.loc 1 1103 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	flow_preorder_transversal_compute, .-flow_preorder_transversal_compute
	.type	flow_dfs_compute_reverse_init, @function
flow_dfs_compute_reverse_init:
.LFB23:
	.loc 1 1138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# data, data
	.loc 1 1140 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.94
	addl	$2, %eax	#, D.11602
	cltq
	salq	$3, %rax	#, D.11603
	movq	%rax, %rdi	# D.11603,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp69, D.11604
	movq	-8(%rbp), %rax	# data, tmp70
	movq	%rdx, (%rax)	# D.11604, data_6(D)->stack
	.loc 1 1142 0
	movq	-8(%rbp), %rax	# data, tmp71
	movl	$0, 8(%rax)	#, data_6(D)->sp
	.loc 1 1145 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.95
	addl	$2, %eax	#, D.11602
	movl	%eax, %edi	# D.11605,
	call	sbitmap_alloc	#
	movq	-8(%rbp), %rdx	# data, tmp72
	movq	%rax, 16(%rdx)	# D.11606, data_6(D)->visited_blocks
	.loc 1 1148 0
	movq	-8(%rbp), %rax	# data, tmp73
	movq	16(%rax), %rax	# data_6(D)->visited_blocks, D.11606
	movq	%rax, %rdi	# D.11606,
	call	sbitmap_zero	#
	.loc 1 1150 0
	nop
	.loc 1 1151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	flow_dfs_compute_reverse_init, .-flow_dfs_compute_reverse_init
	.type	flow_dfs_compute_reverse_add_bb, @function
flow_dfs_compute_reverse_add_bb:
.LFB24:
	.loc 1 1161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# data, data
	movq	%rsi, -16(%rbp)	# bb, bb
	.loc 1 1162 0
	movq	-8(%rbp), %rax	# data, tmp77
	movq	(%rax), %rsi	# data_1(D)->stack, D.11607
	movq	-8(%rbp), %rax	# data, tmp78
	movl	8(%rax), %eax	# data_1(D)->sp, D.11608
	leal	1(%rax), %ecx	#, D.11608
	movq	-8(%rbp), %rdx	# data, tmp79
	movl	%ecx, 8(%rdx)	# D.11608, data_1(D)->sp
	movl	%eax, %eax	# D.11608, D.11609
	salq	$3, %rax	#, D.11609
	leaq	(%rsi,%rax), %rdx	#, D.11607
	movq	-16(%rbp), %rax	# bb, tmp80
	movq	%rax, (%rdx)	# tmp80, *_8
	.loc 1 1163 0
	movq	-8(%rbp), %rax	# data, tmp81
	movq	16(%rax), %rdx	# data_1(D)->visited_blocks, D.11610
	movq	-16(%rbp), %rax	# bb, tmp82
	movl	88(%rax), %eax	# bb_9(D)->index, D.11611
	addl	$2, %eax	#, D.11611
	shrl	$6, %eax	#, D.11608
	movq	-8(%rbp), %rcx	# data, tmp83
	movq	16(%rcx), %rcx	# data_1(D)->visited_blocks, D.11610
	movl	%eax, %esi	# D.11608, tmp84
	addq	$2, %rsi	#, tmp85
	movq	(%rcx,%rsi,8), %rsi	# _15->elms, D.11609
	movq	-16(%rbp), %rcx	# bb, tmp86
	movl	88(%rcx), %ecx	# bb_9(D)->index, D.11611
	addl	$2, %ecx	#, D.11611
	andl	$63, %ecx	#, D.11611
	movl	$1, %edi	#, tmp87
	salq	%cl, %rdi	# D.11611, D.11609
	movq	%rdi, %rcx	# D.11609, D.11609
	orq	%rsi, %rcx	# D.11609, D.11609
	movl	%eax, %eax	# D.11608, tmp88
	addq	$2, %rax	#, tmp89
	movq	%rcx, (%rdx,%rax,8)	# D.11609, _10->elms
	.loc 1 1164 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	flow_dfs_compute_reverse_add_bb, .-flow_dfs_compute_reverse_add_bb
	.type	flow_dfs_compute_reverse_execute, @function
flow_dfs_compute_reverse_execute:
.LFB25:
	.loc 1 1174 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -40(%rbp)	# data, data
	.loc 1 1179 0
	jmp	.L236	#
.L240:
	.loc 1 1181 0
	movq	-40(%rbp), %rax	# data, tmp93
	movq	(%rax), %rdx	# data_4(D)->stack, D.11614
	movq	-40(%rbp), %rax	# data, tmp94
	movl	8(%rax), %eax	# data_4(D)->sp, D.11613
	leal	-1(%rax), %ecx	#, D.11613
	movq	-40(%rbp), %rax	# data, tmp95
	movl	%ecx, 8(%rax)	# D.11613, data_4(D)->sp
	movq	-40(%rbp), %rax	# data, tmp96
	movl	8(%rax), %eax	# data_4(D)->sp, D.11613
	movl	%eax, %eax	# D.11613, D.11615
	salq	$3, %rax	#, D.11615
	addq	%rdx, %rax	# D.11614, D.11614
	movq	(%rax), %rax	# *_12, tmp97
	movq	%rax, -8(%rbp)	# tmp97, bb
	.loc 1 1184 0
	movq	-8(%rbp), %rax	# bb, tmp98
	movq	32(%rax), %rax	# bb_13->pred, tmp99
	movq	%rax, -16(%rbp)	# tmp99, e
	jmp	.L237	#
.L239:
	.loc 1 1185 0
	movq	-40(%rbp), %rax	# data, tmp100
	movq	16(%rax), %rax	# data_4(D)->visited_blocks, D.11616
	movq	-16(%rbp), %rdx	# e, tmp101
	movq	16(%rdx), %rdx	# e_1->src, D.11617
	movl	88(%rdx), %edx	# _16->index, D.11618
	addl	$2, %edx	#, D.11618
	shrl	$6, %edx	#, D.11613
	movl	%edx, %edx	# D.11613, tmp102
	addq	$2, %rdx	#, tmp103
	movq	(%rax,%rdx,8), %rdx	# _15->elms, D.11615
	movq	-16(%rbp), %rax	# e, tmp104
	movq	16(%rax), %rax	# e_1->src, D.11617
	movl	88(%rax), %eax	# _22->index, D.11618
	addl	$2, %eax	#, D.11618
	andl	$63, %eax	#, D.11618
	movl	%eax, %ecx	# D.11618, tmp120
	shrq	%cl, %rdx	# tmp120, D.11615
	movq	%rdx, %rax	# D.11615, D.11615
	andl	$1, %eax	#, D.11615
	testq	%rax, %rax	# D.11615
	jne	.L238	#,
	.loc 1 1187 0
	movq	-16(%rbp), %rax	# e, tmp105
	movq	16(%rax), %rdx	# e_1->src, D.11617
	movq	-40(%rbp), %rax	# data, tmp106
	movq	%rdx, %rsi	# D.11617,
	movq	%rax, %rdi	# tmp106,
	call	flow_dfs_compute_reverse_add_bb	#
.L238:
	.loc 1 1184 0
	movq	-16(%rbp), %rax	# e, tmp107
	movq	(%rax), %rax	# e_1->pred_next, tmp108
	movq	%rax, -16(%rbp)	# tmp108, e
.L237:
	.loc 1 1184 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L239	#,
.L236:
	.loc 1 1179 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# data, tmp109
	movl	8(%rax), %eax	# data_4(D)->sp, D.11613
	testl	%eax, %eax	# D.11613
	jne	.L240	#,
	.loc 1 1191 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.96
	addl	$2, %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, i
	jmp	.L241	#
.L243:
	.loc 1 1192 0
	movq	-40(%rbp), %rax	# data, tmp111
	movq	16(%rax), %rax	# data_4(D)->visited_blocks, D.11616
	movl	-20(%rbp), %edx	# i, i.97
	shrl	$6, %edx	#, D.11613
	movl	%edx, %edx	# D.11613, tmp112
	addq	$2, %rdx	#, tmp113
	movq	(%rax,%rdx,8), %rdx	# _33->elms, D.11615
	movl	-20(%rbp), %eax	# i, tmp114
	andl	$63, %eax	#, D.11618
	movl	%eax, %ecx	# D.11618, tmp122
	shrq	%cl, %rdx	# tmp122, D.11615
	movq	%rdx, %rax	# D.11615, D.11615
	andl	$1, %eax	#, D.11615
	testq	%rax, %rax	# D.11615
	jne	.L241	#,
	.loc 1 1193 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.98
	movl	-20(%rbp), %edx	# i, tmp115
	subl	$2, %edx	#, D.11618
	movslq	%edx, %rdx	# D.11618, tmp116
	addq	$4, %rdx	#, tmp117
	movq	(%rax,%rdx,8), %rax	# basic_block_info.98_40->data.bb, D.11612
	jmp	.L242	#
.L241:
	.loc 1 1191 0 discriminator 1
	subl	$1, -20(%rbp)	#, i
	cmpl	$0, -20(%rbp)	#, i
	jns	.L243	#,
	.loc 1 1195 0
	movl	$0, %eax	#, D.11612
.L242:
	.loc 1 1196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	flow_dfs_compute_reverse_execute, .-flow_dfs_compute_reverse_execute
	.type	flow_dfs_compute_reverse_finish, @function
flow_dfs_compute_reverse_finish:
.LFB26:
	.loc 1 1204 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# data, data
	.loc 1 1205 0
	movq	-8(%rbp), %rax	# data, tmp61
	movq	(%rax), %rax	# data_1(D)->stack, D.11619
	movq	%rax, %rdi	# D.11619,
	call	free	#
	.loc 1 1206 0
	movq	-8(%rbp), %rax	# data, tmp62
	movq	16(%rax), %rax	# data_1(D)->visited_blocks, D.11620
	movq	%rax, %rdi	# D.11620,
	call	free	#
	.loc 1 1207 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	flow_dfs_compute_reverse_finish, .-flow_dfs_compute_reverse_finish
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10404, @object
	.size	__FUNCTION__.10404, 31
__FUNCTION__.10404:
	.string	"flow_depth_first_order_compute"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "machmode.h"
	.file 9 "bitmap.h"
	.file 10 "basic-block.h"
	.file 11 "sbitmap.h"
	.file 12 "varray.h"
	.file 13 "hard-reg-set.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1eee
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF450
	.byte	0x1
	.long	.LASF451
	.long	.LASF452
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
	.long	0xbcb
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
	.long	0xbdb
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
	.long	.LASF453
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
	.long	.LASF454
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
	.long	.LASF125
	.byte	0x4
	.byte	0x8
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
	.uleb128 0x12
	.long	.LASF126
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x92e
	.uleb128 0x13
	.long	.LASF127
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x13
	.long	.LASF128
	.sleb128 2
	.uleb128 0x13
	.long	.LASF129
	.sleb128 3
	.uleb128 0x13
	.long	.LASF130
	.sleb128 4
	.uleb128 0x13
	.long	.LASF131
	.sleb128 5
	.uleb128 0x13
	.long	.LASF132
	.sleb128 6
	.uleb128 0x13
	.long	.LASF133
	.sleb128 7
	.uleb128 0x13
	.long	.LASF134
	.sleb128 8
	.uleb128 0x13
	.long	.LASF135
	.sleb128 9
	.uleb128 0x13
	.long	.LASF136
	.sleb128 10
	.uleb128 0x13
	.long	.LASF137
	.sleb128 11
	.uleb128 0x13
	.long	.LASF138
	.sleb128 12
	.uleb128 0x13
	.long	.LASF139
	.sleb128 13
	.uleb128 0x13
	.long	.LASF140
	.sleb128 14
	.uleb128 0x13
	.long	.LASF141
	.sleb128 15
	.uleb128 0x13
	.long	.LASF142
	.sleb128 16
	.uleb128 0x13
	.long	.LASF143
	.sleb128 17
	.uleb128 0x13
	.long	.LASF144
	.sleb128 18
	.uleb128 0x13
	.long	.LASF145
	.sleb128 19
	.uleb128 0x13
	.long	.LASF146
	.sleb128 20
	.uleb128 0x13
	.long	.LASF147
	.sleb128 21
	.uleb128 0x13
	.long	.LASF148
	.sleb128 22
	.uleb128 0x13
	.long	.LASF149
	.sleb128 23
	.uleb128 0x13
	.long	.LASF150
	.sleb128 24
	.uleb128 0x13
	.long	.LASF151
	.sleb128 25
	.uleb128 0x13
	.long	.LASF152
	.sleb128 26
	.uleb128 0x13
	.long	.LASF153
	.sleb128 27
	.uleb128 0x13
	.long	.LASF154
	.sleb128 28
	.uleb128 0x13
	.long	.LASF155
	.sleb128 29
	.uleb128 0x13
	.long	.LASF156
	.sleb128 30
	.uleb128 0x13
	.long	.LASF157
	.sleb128 31
	.uleb128 0x13
	.long	.LASF158
	.sleb128 32
	.uleb128 0x13
	.long	.LASF159
	.sleb128 33
	.uleb128 0x13
	.long	.LASF160
	.sleb128 34
	.uleb128 0x13
	.long	.LASF161
	.sleb128 35
	.uleb128 0x13
	.long	.LASF162
	.sleb128 36
	.uleb128 0x13
	.long	.LASF163
	.sleb128 37
	.uleb128 0x13
	.long	.LASF164
	.sleb128 38
	.uleb128 0x13
	.long	.LASF165
	.sleb128 39
	.uleb128 0x13
	.long	.LASF166
	.sleb128 40
	.uleb128 0x13
	.long	.LASF167
	.sleb128 41
	.uleb128 0x13
	.long	.LASF168
	.sleb128 42
	.uleb128 0x13
	.long	.LASF169
	.sleb128 43
	.uleb128 0x13
	.long	.LASF170
	.sleb128 44
	.uleb128 0x13
	.long	.LASF171
	.sleb128 45
	.uleb128 0x13
	.long	.LASF172
	.sleb128 46
	.uleb128 0x14
	.string	"SET"
	.sleb128 47
	.uleb128 0x14
	.string	"USE"
	.sleb128 48
	.uleb128 0x13
	.long	.LASF173
	.sleb128 49
	.uleb128 0x13
	.long	.LASF174
	.sleb128 50
	.uleb128 0x13
	.long	.LASF175
	.sleb128 51
	.uleb128 0x13
	.long	.LASF176
	.sleb128 52
	.uleb128 0x13
	.long	.LASF177
	.sleb128 53
	.uleb128 0x13
	.long	.LASF178
	.sleb128 54
	.uleb128 0x13
	.long	.LASF179
	.sleb128 55
	.uleb128 0x13
	.long	.LASF180
	.sleb128 56
	.uleb128 0x13
	.long	.LASF181
	.sleb128 57
	.uleb128 0x13
	.long	.LASF182
	.sleb128 58
	.uleb128 0x14
	.string	"PC"
	.sleb128 59
	.uleb128 0x13
	.long	.LASF183
	.sleb128 60
	.uleb128 0x14
	.string	"REG"
	.sleb128 61
	.uleb128 0x13
	.long	.LASF184
	.sleb128 62
	.uleb128 0x13
	.long	.LASF185
	.sleb128 63
	.uleb128 0x13
	.long	.LASF186
	.sleb128 64
	.uleb128 0x13
	.long	.LASF187
	.sleb128 65
	.uleb128 0x14
	.string	"MEM"
	.sleb128 66
	.uleb128 0x13
	.long	.LASF188
	.sleb128 67
	.uleb128 0x13
	.long	.LASF189
	.sleb128 68
	.uleb128 0x14
	.string	"CC0"
	.sleb128 69
	.uleb128 0x13
	.long	.LASF190
	.sleb128 70
	.uleb128 0x13
	.long	.LASF191
	.sleb128 71
	.uleb128 0x13
	.long	.LASF192
	.sleb128 72
	.uleb128 0x13
	.long	.LASF193
	.sleb128 73
	.uleb128 0x13
	.long	.LASF194
	.sleb128 74
	.uleb128 0x13
	.long	.LASF195
	.sleb128 75
	.uleb128 0x13
	.long	.LASF196
	.sleb128 76
	.uleb128 0x14
	.string	"NEG"
	.sleb128 77
	.uleb128 0x13
	.long	.LASF197
	.sleb128 78
	.uleb128 0x14
	.string	"DIV"
	.sleb128 79
	.uleb128 0x14
	.string	"MOD"
	.sleb128 80
	.uleb128 0x13
	.long	.LASF198
	.sleb128 81
	.uleb128 0x13
	.long	.LASF199
	.sleb128 82
	.uleb128 0x14
	.string	"AND"
	.sleb128 83
	.uleb128 0x14
	.string	"IOR"
	.sleb128 84
	.uleb128 0x14
	.string	"XOR"
	.sleb128 85
	.uleb128 0x14
	.string	"NOT"
	.sleb128 86
	.uleb128 0x13
	.long	.LASF200
	.sleb128 87
	.uleb128 0x13
	.long	.LASF201
	.sleb128 88
	.uleb128 0x13
	.long	.LASF202
	.sleb128 89
	.uleb128 0x13
	.long	.LASF203
	.sleb128 90
	.uleb128 0x13
	.long	.LASF204
	.sleb128 91
	.uleb128 0x13
	.long	.LASF205
	.sleb128 92
	.uleb128 0x13
	.long	.LASF206
	.sleb128 93
	.uleb128 0x13
	.long	.LASF207
	.sleb128 94
	.uleb128 0x13
	.long	.LASF208
	.sleb128 95
	.uleb128 0x13
	.long	.LASF209
	.sleb128 96
	.uleb128 0x13
	.long	.LASF210
	.sleb128 97
	.uleb128 0x13
	.long	.LASF211
	.sleb128 98
	.uleb128 0x13
	.long	.LASF212
	.sleb128 99
	.uleb128 0x13
	.long	.LASF213
	.sleb128 100
	.uleb128 0x13
	.long	.LASF214
	.sleb128 101
	.uleb128 0x14
	.string	"NE"
	.sleb128 102
	.uleb128 0x14
	.string	"EQ"
	.sleb128 103
	.uleb128 0x14
	.string	"GE"
	.sleb128 104
	.uleb128 0x14
	.string	"GT"
	.sleb128 105
	.uleb128 0x14
	.string	"LE"
	.sleb128 106
	.uleb128 0x14
	.string	"LT"
	.sleb128 107
	.uleb128 0x14
	.string	"GEU"
	.sleb128 108
	.uleb128 0x14
	.string	"GTU"
	.sleb128 109
	.uleb128 0x14
	.string	"LEU"
	.sleb128 110
	.uleb128 0x14
	.string	"LTU"
	.sleb128 111
	.uleb128 0x13
	.long	.LASF215
	.sleb128 112
	.uleb128 0x13
	.long	.LASF216
	.sleb128 113
	.uleb128 0x13
	.long	.LASF217
	.sleb128 114
	.uleb128 0x13
	.long	.LASF218
	.sleb128 115
	.uleb128 0x13
	.long	.LASF219
	.sleb128 116
	.uleb128 0x13
	.long	.LASF220
	.sleb128 117
	.uleb128 0x13
	.long	.LASF221
	.sleb128 118
	.uleb128 0x13
	.long	.LASF222
	.sleb128 119
	.uleb128 0x13
	.long	.LASF223
	.sleb128 120
	.uleb128 0x13
	.long	.LASF224
	.sleb128 121
	.uleb128 0x13
	.long	.LASF225
	.sleb128 122
	.uleb128 0x13
	.long	.LASF226
	.sleb128 123
	.uleb128 0x13
	.long	.LASF227
	.sleb128 124
	.uleb128 0x13
	.long	.LASF228
	.sleb128 125
	.uleb128 0x14
	.string	"FIX"
	.sleb128 126
	.uleb128 0x13
	.long	.LASF229
	.sleb128 127
	.uleb128 0x13
	.long	.LASF230
	.sleb128 128
	.uleb128 0x14
	.string	"ABS"
	.sleb128 129
	.uleb128 0x13
	.long	.LASF231
	.sleb128 130
	.uleb128 0x14
	.string	"FFS"
	.sleb128 131
	.uleb128 0x13
	.long	.LASF232
	.sleb128 132
	.uleb128 0x13
	.long	.LASF233
	.sleb128 133
	.uleb128 0x13
	.long	.LASF234
	.sleb128 134
	.uleb128 0x13
	.long	.LASF235
	.sleb128 135
	.uleb128 0x13
	.long	.LASF236
	.sleb128 136
	.uleb128 0x13
	.long	.LASF237
	.sleb128 137
	.uleb128 0x13
	.long	.LASF238
	.sleb128 138
	.uleb128 0x13
	.long	.LASF239
	.sleb128 139
	.uleb128 0x13
	.long	.LASF240
	.sleb128 140
	.uleb128 0x13
	.long	.LASF241
	.sleb128 141
	.uleb128 0x13
	.long	.LASF242
	.sleb128 142
	.uleb128 0x13
	.long	.LASF243
	.sleb128 143
	.uleb128 0x13
	.long	.LASF244
	.sleb128 144
	.uleb128 0x13
	.long	.LASF245
	.sleb128 145
	.uleb128 0x13
	.long	.LASF246
	.sleb128 146
	.uleb128 0x13
	.long	.LASF247
	.sleb128 147
	.uleb128 0x13
	.long	.LASF248
	.sleb128 148
	.uleb128 0x13
	.long	.LASF249
	.sleb128 149
	.uleb128 0x13
	.long	.LASF250
	.sleb128 150
	.uleb128 0x13
	.long	.LASF251
	.sleb128 151
	.uleb128 0x14
	.string	"PHI"
	.sleb128 152
	.uleb128 0x13
	.long	.LASF252
	.sleb128 153
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x9af
	.uleb128 0x5
	.long	.LASF253
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF254
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF255
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF256
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF257
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF259
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF260
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF261
	.byte	0x2
	.byte	0x56
	.long	0x92e
	.uleb128 0x15
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x9ff
	.uleb128 0x8
	.long	.LASF262
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF263
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF264
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF265
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF266
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF267
	.byte	0x2
	.byte	0x63
	.long	0x9ba
	.uleb128 0x16
	.long	.LASF341
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xaa5
	.uleb128 0x17
	.long	.LASF268
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x17
	.long	.LASF269
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x17
	.long	.LASF270
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x17
	.long	.LASF271
	.byte	0x2
	.byte	0x6c
	.long	0x39e
	.uleb128 0x18
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x17
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x17
	.long	.LASF272
	.byte	0x2
	.byte	0x6f
	.long	0x3bd
	.uleb128 0x17
	.long	.LASF273
	.byte	0x2
	.byte	0x70
	.long	0x9af
	.uleb128 0x17
	.long	.LASF274
	.byte	0x2
	.byte	0x71
	.long	0xaaa
	.uleb128 0x17
	.long	.LASF275
	.byte	0x2
	.byte	0x72
	.long	0xae1
	.uleb128 0x17
	.long	.LASF276
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x18
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xbb4
	.uleb128 0x17
	.long	.LASF277
	.byte	0x2
	.byte	0x75
	.long	0xbba
	.byte	0
	.uleb128 0x19
	.long	.LASF349
	.uleb128 0x3
	.byte	0x8
	.long	0xaa5
	.uleb128 0x4
	.long	.LASF278
	.byte	0x18
	.byte	0x9
	.byte	0x34
	.long	0xae1
	.uleb128 0x8
	.long	.LASF279
	.byte	0x9
	.byte	0x35
	.long	0xd0b
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x9
	.byte	0x36
	.long	0xd0b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x9
	.byte	0x37
	.long	0x147
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xab0
	.uleb128 0x4
	.long	.LASF282
	.byte	0x70
	.byte	0xa
	.byte	0xae
	.long	0xbb4
	.uleb128 0x8
	.long	.LASF283
	.byte	0xa
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xa
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF284
	.byte	0xa
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF285
	.byte	0xa
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF286
	.byte	0xa
	.byte	0xb7
	.long	0x10b5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF287
	.byte	0xa
	.byte	0xb7
	.long	0x10b5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF288
	.byte	0xa
	.byte	0xbc
	.long	0x1020
	.byte	0x30
	.uleb128 0x8
	.long	.LASF289
	.byte	0xa
	.byte	0xc0
	.long	0x1020
	.byte	0x38
	.uleb128 0x8
	.long	.LASF290
	.byte	0xa
	.byte	0xc6
	.long	0x1020
	.byte	0x40
	.uleb128 0x8
	.long	.LASF291
	.byte	0xa
	.byte	0xc8
	.long	0x1020
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0xcb
	.long	0x14e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF292
	.byte	0xa
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF293
	.byte	0xa
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF294
	.byte	0xa
	.byte	0xd4
	.long	0x102b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF295
	.byte	0xa
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF296
	.byte	0xa
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xae7
	.uleb128 0x3
	.byte	0x8
	.long	0x9ff
	.uleb128 0x7
	.long	.LASF297
	.byte	0x2
	.byte	0x76
	.long	0xa0a
	.uleb128 0xf
	.long	0xbc0
	.long	0xbdb
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x2d
	.long	0xbeb
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xcad
	.uleb128 0x13
	.long	.LASF299
	.sleb128 1
	.uleb128 0x13
	.long	.LASF300
	.sleb128 2
	.uleb128 0x13
	.long	.LASF301
	.sleb128 3
	.uleb128 0x13
	.long	.LASF302
	.sleb128 4
	.uleb128 0x13
	.long	.LASF303
	.sleb128 5
	.uleb128 0x13
	.long	.LASF304
	.sleb128 6
	.uleb128 0x13
	.long	.LASF305
	.sleb128 7
	.uleb128 0x13
	.long	.LASF306
	.sleb128 8
	.uleb128 0x13
	.long	.LASF307
	.sleb128 9
	.uleb128 0x13
	.long	.LASF308
	.sleb128 10
	.uleb128 0x13
	.long	.LASF309
	.sleb128 11
	.uleb128 0x13
	.long	.LASF310
	.sleb128 12
	.uleb128 0x13
	.long	.LASF311
	.sleb128 13
	.uleb128 0x13
	.long	.LASF312
	.sleb128 14
	.uleb128 0x13
	.long	.LASF313
	.sleb128 15
	.uleb128 0x13
	.long	.LASF314
	.sleb128 16
	.uleb128 0x13
	.long	.LASF315
	.sleb128 17
	.uleb128 0x13
	.long	.LASF316
	.sleb128 18
	.uleb128 0x13
	.long	.LASF317
	.sleb128 19
	.uleb128 0x13
	.long	.LASF318
	.sleb128 20
	.uleb128 0x13
	.long	.LASF319
	.sleb128 21
	.uleb128 0x13
	.long	.LASF320
	.sleb128 22
	.uleb128 0x13
	.long	.LASF321
	.sleb128 23
	.uleb128 0x13
	.long	.LASF322
	.sleb128 24
	.uleb128 0x13
	.long	.LASF323
	.sleb128 25
	.uleb128 0x13
	.long	.LASF324
	.sleb128 26
	.uleb128 0x13
	.long	.LASF325
	.sleb128 27
	.uleb128 0x13
	.long	.LASF326
	.sleb128 28
	.uleb128 0x13
	.long	.LASF327
	.sleb128 29
	.uleb128 0x13
	.long	.LASF328
	.sleb128 30
	.byte	0
	.uleb128 0x4
	.long	.LASF329
	.byte	0x28
	.byte	0x9
	.byte	0x2b
	.long	0xcea
	.uleb128 0x8
	.long	.LASF330
	.byte	0x9
	.byte	0x2d
	.long	0xcea
	.byte	0
	.uleb128 0x8
	.long	.LASF331
	.byte	0x9
	.byte	0x2e
	.long	0xcea
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x9
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0x9
	.byte	0x30
	.long	0xcf0
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xcad
	.uleb128 0xf
	.long	0x162
	.long	0xd00
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF333
	.byte	0x9
	.byte	0x31
	.long	0xcad
	.uleb128 0x3
	.byte	0x8
	.long	0xd00
	.uleb128 0x7
	.long	.LASF334
	.byte	0x9
	.byte	0x39
	.long	0xae1
	.uleb128 0x4
	.long	.LASF335
	.byte	0x18
	.byte	0xb
	.byte	0x1f
	.long	0xd59
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0x21
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF265
	.byte	0xb
	.byte	0x22
	.long	0x147
	.byte	0x4
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0x23
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0x24
	.long	0xd59
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x162
	.long	0xd69
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF339
	.byte	0xb
	.byte	0x25
	.long	0xd74
	.uleb128 0x3
	.byte	0x8
	.long	0xd1c
	.uleb128 0x3
	.byte	0x8
	.long	0x162
	.uleb128 0x4
	.long	.LASF340
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xda5
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
	.long	0x147
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	.LASF342
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xe8a
	.uleb128 0x18
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x378
	.uleb128 0x18
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xe8a
	.uleb128 0x18
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xe9a
	.uleb128 0x18
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xeaa
	.uleb128 0x18
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xeba
	.uleb128 0x18
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0xeca
	.uleb128 0x18
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0xeda
	.uleb128 0x18
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0xd59
	.uleb128 0x17
	.long	.LASF343
	.byte	0xc
	.byte	0x43
	.long	0xeda
	.uleb128 0x17
	.long	.LASF344
	.byte	0xc
	.byte	0x44
	.long	0xd59
	.uleb128 0x17
	.long	.LASF345
	.byte	0xc
	.byte	0x45
	.long	0xeea
	.uleb128 0x17
	.long	.LASF346
	.byte	0xc
	.byte	0x46
	.long	0xefa
	.uleb128 0x18
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0xf0a
	.uleb128 0x17
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0xf1a
	.uleb128 0x17
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0xf2a
	.uleb128 0x17
	.long	.LASF334
	.byte	0xc
	.byte	0x4a
	.long	0xf3a
	.uleb128 0x17
	.long	.LASF347
	.byte	0xc
	.byte	0x4b
	.long	0xf4a
	.uleb128 0x18
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0xf65
	.uleb128 0x17
	.long	.LASF348
	.byte	0xc
	.byte	0x4d
	.long	0xf80
	.uleb128 0x18
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0xf90
	.uleb128 0x18
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0xfa0
	.byte	0
	.uleb128 0xf
	.long	0x169
	.long	0xe9a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x17e
	.long	0xeaa
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x170
	.long	0xeba
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x139
	.long	0xeca
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x147
	.long	0xeda
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x150
	.long	0xeea
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x14e
	.long	0xefa
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x19b
	.long	0xf0a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x38
	.long	0xf1a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf8
	.long	0xf2a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x12e
	.long	0xf3a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xae1
	.long	0xf4a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xf5a
	.long	0xf5a
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf60
	.uleb128 0x19
	.long	.LASF350
	.uleb128 0xf
	.long	0xf75
	.long	0xf75
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xf7b
	.uleb128 0x19
	.long	.LASF351
	.uleb128 0xf
	.long	0xd80
	.long	0xf90
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xbb4
	.long	0xfa0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0xfb0
	.long	0xfb0
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xfb6
	.uleb128 0x19
	.long	.LASF352
	.uleb128 0x7
	.long	.LASF353
	.byte	0xc
	.byte	0x50
	.long	0xda5
	.uleb128 0x4
	.long	.LASF354
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x100f
	.uleb128 0x8
	.long	.LASF355
	.byte	0xc
	.byte	0x54
	.long	0x157
	.byte	0
	.uleb128 0x8
	.long	.LASF356
	.byte	0xc
	.byte	0x55
	.long	0x157
	.byte	0x8
	.uleb128 0x8
	.long	.LASF357
	.byte	0xc
	.byte	0x57
	.long	0x157
	.byte	0x10
	.uleb128 0x8
	.long	.LASF358
	.byte	0xc
	.byte	0x58
	.long	0x39e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF359
	.byte	0xc
	.byte	0x59
	.long	0xfbb
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF360
	.byte	0xc
	.byte	0x5a
	.long	0x101a
	.uleb128 0x3
	.byte	0x8
	.long	0xfc6
	.uleb128 0x7
	.long	.LASF361
	.byte	0xa
	.byte	0x21
	.long	0xd11
	.uleb128 0x7
	.long	.LASF362
	.byte	0xa
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF363
	.byte	0x40
	.byte	0xa
	.byte	0x77
	.long	0x10af
	.uleb128 0x8
	.long	.LASF364
	.byte	0xa
	.byte	0x79
	.long	0x10af
	.byte	0
	.uleb128 0x8
	.long	.LASF365
	.byte	0xa
	.byte	0x79
	.long	0x10af
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xa
	.byte	0x7c
	.long	0xbb4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF366
	.byte	0xa
	.byte	0x7c
	.long	0xbb4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF367
	.byte	0xa
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xa
	.byte	0x82
	.long	0x14e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF296
	.byte	0xa
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF368
	.byte	0xa
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF294
	.byte	0xa
	.byte	0x86
	.long	0x102b
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1036
	.uleb128 0x7
	.long	.LASF369
	.byte	0xa
	.byte	0x88
	.long	0x10af
	.uleb128 0x7
	.long	.LASF370
	.byte	0xa
	.byte	0xdb
	.long	0xbb4
	.uleb128 0x3
	.byte	0x8
	.long	0x10b5
	.uleb128 0x1b
	.long	.LASF371
	.byte	0x10
	.byte	0xa
	.value	0x1f0
	.long	0x1106
	.uleb128 0xd
	.long	.LASF372
	.byte	0xa
	.value	0x1f2
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF373
	.byte	0xa
	.value	0x1f3
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF374
	.byte	0xa
	.value	0x1f4
	.long	0x10cb
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF375
	.byte	0x18
	.byte	0x1
	.byte	0x23
	.long	0x1136
	.uleb128 0x8
	.long	.LASF376
	.byte	0x1
	.byte	0x25
	.long	0x1136
	.byte	0
	.uleb128 0x6
	.string	"sp"
	.byte	0x1
	.byte	0x29
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF377
	.byte	0x1
	.byte	0x2c
	.long	0xd69
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10c0
	.uleb128 0x7
	.long	.LASF378
	.byte	0x1
	.byte	0x2e
	.long	0x1147
	.uleb128 0x3
	.byte	0x8
	.long	0x1106
	.uleb128 0x1b
	.long	.LASF379
	.byte	0x18
	.byte	0x1
	.value	0x3d2
	.long	0x1181
	.uleb128 0xd
	.long	.LASF380
	.byte	0x1
	.value	0x3d4
	.long	0x147
	.byte	0
	.uleb128 0xd
	.long	.LASF381
	.byte	0x1
	.value	0x3d5
	.long	0x1181
	.byte	0x8
	.uleb128 0x1c
	.string	"up"
	.byte	0x1
	.value	0x3d6
	.long	0x1187
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1187
	.uleb128 0x3
	.byte	0x8
	.long	0x114d
	.uleb128 0x1d
	.long	.LASF383
	.byte	0x1
	.byte	0x40
	.long	0x11ca
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ca
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0x41
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF386
	.byte	0x1
	.byte	0x43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF382
	.uleb128 0x1d
	.long	.LASF384
	.byte	0x1
	.byte	0x55
	.long	0x11ca
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x122b
	.uleb128 0x1e
	.string	"src"
	.byte	0x1
	.byte	0x56
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF385
	.byte	0x1
	.byte	0x56
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF386
	.byte	0x1
	.byte	0x58
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF387
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF388
	.byte	0x1
	.byte	0x6d
	.long	0x11ca
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x12fb
	.uleb128 0x1f
	.long	.LASF376
	.byte	0x1
	.byte	0x6f
	.long	0x10cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"pre"
	.byte	0x1
	.byte	0x70
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF389
	.byte	0x1
	.byte	0x71
	.long	0x3b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"sp"
	.byte	0x1
	.byte	0x72
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1f
	.long	.LASF390
	.byte	0x1
	.byte	0x73
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF391
	.byte	0x1
	.byte	0x74
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1f
	.long	.LASF392
	.byte	0x1
	.byte	0x75
	.long	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF393
	.byte	0x1
	.byte	0x76
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.string	"e"
	.byte	0x1
	.byte	0x8b
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"src"
	.byte	0x1
	.byte	0x8c
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x1
	.byte	0x8d
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF394
	.byte	0x1
	.byte	0xc2
	.long	0x11ca
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x132b
	.uleb128 0x20
	.long	.LASF386
	.byte	0x1
	.byte	0xc3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF395
	.byte	0x1
	.byte	0xdd
	.long	0x11ca
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1369
	.uleb128 0x20
	.long	.LASF386
	.byte	0x1
	.byte	0xde
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"set"
	.byte	0x1
	.byte	0xe0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF396
	.byte	0x1
	.byte	0xfa
	.long	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1533
	.uleb128 0x20
	.long	.LASF397
	.byte	0x1
	.byte	0xfb
	.long	0xd69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xfd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF398
	.byte	0x1
	.byte	0xfe
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1f
	.long	.LASF399
	.byte	0x1
	.byte	0xff
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.string	"bbs"
	.byte	0x1
	.value	0x100
	.long	0x1136
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF400
	.byte	0x1
	.value	0x101
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x26
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x147c
	.uleb128 0x25
	.long	.LASF401
	.byte	0x1
	.value	0x110
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x25
	.long	.LASF402
	.byte	0x1
	.value	0x110
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF403
	.byte	0x1
	.value	0x110
	.long	0x147
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x25
	.long	.LASF404
	.byte	0x1
	.value	0x110
	.long	0xd7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x25
	.long	.LASF405
	.byte	0x1
	.value	0x110
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x25
	.long	.LASF406
	.byte	0x1
	.value	0x110
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x14d0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x125
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF386
	.byte	0x1
	.value	0x126
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x12f
	.long	0x10b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x140
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF386
	.byte	0x1
	.value	0x141
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF407
	.byte	0x1
	.value	0x142
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x149
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF408
	.byte	0x1
	.value	0x14a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF413
	.byte	0x1
	.value	0x179
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b6
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x17b
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x17c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x17c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.string	"tos"
	.byte	0x1
	.value	0x17d
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF409
	.byte	0x1
	.value	0x17d
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x197
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x1b2
	.long	0x1664
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1664
	.uleb128 0x25
	.long	.LASF411
	.byte	0x1
	.value	0x1b4
	.long	0x1664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x1b5
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF373
	.byte	0x1
	.value	0x1b6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1b7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF412
	.byte	0x1
	.value	0x1b8
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x1643
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1c2
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x1d9
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10d1
	.uleb128 0x28
	.long	.LASF414
	.byte	0x1
	.value	0x1e6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1698
	.uleb128 0x2a
	.long	.LASF411
	.byte	0x1
	.value	0x1e7
	.long	0x1664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF415
	.byte	0x1
	.value	0x1f3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e0
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x1f4
	.long	0x16e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF411
	.byte	0x1
	.value	0x1f5
	.long	0x1664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x1f7
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a8
	.uleb128 0x28
	.long	.LASF416
	.byte	0x1
	.value	0x210
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1850
	.uleb128 0x2b
	.string	"f"
	.byte	0x1
	.value	0x211
	.long	0x16e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2a
	.long	.LASF411
	.byte	0x1
	.value	0x212
	.long	0x1664
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x214
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.long	.LASF286
	.byte	0x1
	.value	0x214
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF287
	.byte	0x1
	.value	0x214
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.long	.LASF292
	.byte	0x1
	.value	0x214
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x215
	.long	0x10b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x1793
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x219
	.long	0x10c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x26
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x17d3
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x248
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x249
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF417
	.byte	0x1
	.value	0x24a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x26
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x1813
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x267
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x268
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF417
	.byte	0x1
	.value	0x269
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x22
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x24
	.string	"p"
	.byte	0x1
	.value	0x286
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x287
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF417
	.byte	0x1
	.value	0x288
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF418
	.byte	0x1
	.value	0x2a8
	.long	0x139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ad
	.uleb128 0x2a
	.long	.LASF371
	.byte	0x1
	.value	0x2a9
	.long	0x1664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF286
	.byte	0x1
	.value	0x2aa
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF287
	.byte	0x1
	.value	0x2aa
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x2ac
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF419
	.byte	0x1
	.value	0x2b9
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x199b
	.uleb128 0x2b
	.string	"str"
	.byte	0x1
	.value	0x2ba
	.long	0x39e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF420
	.byte	0x1
	.value	0x2bb
	.long	0x199b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF421
	.byte	0x1
	.value	0x2bc
	.long	0x16e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.value	0x2be
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x25
	.long	.LASF401
	.byte	0x1
	.value	0x2c4
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF402
	.byte	0x1
	.value	0x2c4
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.long	.LASF403
	.byte	0x1
	.value	0x2c4
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF404
	.byte	0x1
	.value	0x2c4
	.long	0xd7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x25
	.long	.LASF405
	.byte	0x1
	.value	0x2c4
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.long	.LASF406
	.byte	0x1
	.value	0x2c4
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xd69
	.uleb128 0x28
	.long	.LASF422
	.byte	0x1
	.value	0x2cb
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a08
	.uleb128 0x2b
	.string	"str"
	.byte	0x1
	.value	0x2cc
	.long	0x39e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF371
	.byte	0x1
	.value	0x2cd
	.long	0x1a08
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.long	.LASF373
	.byte	0x1
	.value	0x2ce
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.long	.LASF421
	.byte	0x1
	.value	0x2cf
	.long	0x16e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x2d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a0e
	.uleb128 0x11
	.long	0x10b5
	.uleb128 0x2d
	.long	.LASF439
	.byte	0x1
	.value	0x2e4
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a6e
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x2e5
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x2e7
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x24
	.string	"tmp"
	.byte	0x1
	.value	0x2eb
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF423
	.byte	0x1
	.value	0x2f8
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9a
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x2fa
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF424
	.byte	0x1
	.value	0x308
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac6
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.value	0x30a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF425
	.byte	0x1
	.value	0x31d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b03
	.uleb128 0x25
	.long	.LASF426
	.byte	0x1
	.value	0x31f
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF427
	.byte	0x1
	.value	0x320
	.long	0x1106
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x28
	.long	.LASF428
	.byte	0x1
	.value	0x339
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1baa
	.uleb128 0x2a
	.long	.LASF429
	.byte	0x1
	.value	0x33a
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.long	.LASF376
	.byte	0x1
	.value	0x33c
	.long	0x10cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x33d
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF391
	.byte	0x1
	.value	0x33e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF392
	.byte	0x1
	.value	0x33f
	.long	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x350
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.value	0x351
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF366
	.byte	0x1
	.value	0x352
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF430
	.byte	0x1
	.value	0x37e
	.long	0x139
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c88
	.uleb128 0x2a
	.long	.LASF431
	.byte	0x1
	.value	0x37f
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2a
	.long	.LASF432
	.byte	0x1
	.value	0x380
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF376
	.byte	0x1
	.value	0x382
	.long	0x10cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x383
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x25
	.long	.LASF433
	.byte	0x1
	.value	0x384
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF434
	.byte	0x1
	.value	0x385
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.long	.LASF392
	.byte	0x1
	.value	0x386
	.long	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF455
	.long	0x1c98
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10404
	.uleb128 0x22
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x397
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.value	0x398
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF366
	.byte	0x1
	.value	0x399
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x1c98
	.uleb128 0x10
	.long	0x140
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.long	0x1c88
	.uleb128 0x28
	.long	.LASF435
	.byte	0x1
	.value	0x3e5
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d75
	.uleb128 0x2a
	.long	.LASF436
	.byte	0x1
	.value	0x3e6
	.long	0x3b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x3e8
	.long	0x10b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF376
	.byte	0x1
	.value	0x3e9
	.long	0x10cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x3ea
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.long	.LASF437
	.byte	0x1
	.value	0x3eb
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.string	"sp"
	.byte	0x1
	.value	0x3ec
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.long	.LASF392
	.byte	0x1
	.value	0x3ed
	.long	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF381
	.byte	0x1
	.value	0x3ee
	.long	0x1187
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF438
	.byte	0x1
	.value	0x3ef
	.long	0x1187
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x24
	.string	"src"
	.byte	0x1
	.value	0x411
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF366
	.byte	0x1
	.value	0x412
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF440
	.byte	0x1
	.value	0x470
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da3
	.uleb128 0x2a
	.long	.LASF359
	.byte	0x1
	.value	0x471
	.long	0x113c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF441
	.byte	0x1
	.value	0x486
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ddf
	.uleb128 0x2a
	.long	.LASF359
	.byte	0x1
	.value	0x487
	.long	0x113c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"bb"
	.byte	0x1
	.value	0x488
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF442
	.byte	0x1
	.value	0x494
	.long	0x10c0
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e39
	.uleb128 0x2a
	.long	.LASF359
	.byte	0x1
	.value	0x495
	.long	0x113c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"bb"
	.byte	0x1
	.value	0x497
	.long	0x10c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"e"
	.byte	0x1
	.value	0x498
	.long	0x10b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x499
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2d
	.long	.LASF443
	.byte	0x1
	.value	0x4b2
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e67
	.uleb128 0x2a
	.long	.LASF359
	.byte	0x1
	.value	0x4b3
	.long	0x113c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x1e77
	.uleb128 0x10
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x31
	.long	.LASF444
	.byte	0x2
	.byte	0x3f
	.long	0x1e82
	.uleb128 0x11
	.long	0x1e67
	.uleb128 0xf
	.long	0x2d
	.long	0x1e97
	.uleb128 0x10
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x32
	.long	.LASF445
	.byte	0x2
	.value	0x611
	.long	0x1e87
	.uleb128 0xf
	.long	0x1a1
	.long	0x1eb3
	.uleb128 0x10
	.long	0x140
	.byte	0x34
	.byte	0
	.uleb128 0x32
	.long	.LASF446
	.byte	0xd
	.value	0x18b
	.long	0x1ea3
	.uleb128 0x31
	.long	.LASF447
	.byte	0xa
	.byte	0xe4
	.long	0x139
	.uleb128 0x31
	.long	.LASF448
	.byte	0xa
	.byte	0xec
	.long	0x100f
	.uleb128 0xf
	.long	0xae7
	.long	0x1ee5
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x32
	.long	.LASF449
	.byte	0xa
	.value	0x116
	.long	0x1ed5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.quad	.LBB8-.Ltext0
	.quad	.LBE8-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF314:
	.string	"REG_BR_PROB"
.LASF271:
	.string	"rtstr"
.LASF58:
	.string	"_unused2"
.LASF199:
	.string	"UMOD"
.LASF253:
	.string	"min_align"
.LASF44:
	.string	"_fileno"
.LASF342:
	.string	"varray_data_tag"
.LASF279:
	.string	"first"
.LASF240:
	.string	"CONSTANT_P_RTX"
.LASF437:
	.string	"max_successors"
.LASF382:
	.string	"_Bool"
.LASF270:
	.string	"rtuint"
.LASF274:
	.string	"rt_cselib"
.LASF143:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF203:
	.string	"LSHIFTRT"
.LASF137:
	.string	"MATCH_PAR_DUP"
.LASF49:
	.string	"_shortbuf"
.LASF452:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF198:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF373:
	.string	"num_edges"
.LASF397:
	.string	"blocks"
.LASF131:
	.string	"MATCH_OPERAND"
.LASF220:
	.string	"UNLE"
.LASF258:
	.string	"max_after_base"
.LASF221:
	.string	"UNLT"
.LASF368:
	.string	"probability"
.LASF94:
	.string	"CTImode"
.LASF30:
	.string	"_flags"
.LASF330:
	.string	"next"
.LASF383:
	.string	"forwarder_block_p"
.LASF25:
	.string	"__off_t"
.LASF92:
	.string	"CSImode"
.LASF242:
	.string	"VEC_MERGE"
.LASF50:
	.string	"_lock"
.LASF344:
	.string	"uhint"
.LASF175:
	.string	"RETURN"
.LASF345:
	.string	"generic"
.LASF449:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF262:
	.string	"alias"
.LASF259:
	.string	"offset_unsigned"
.LASF98:
	.string	"V2SImode"
.LASF162:
	.string	"CODE_LABEL"
.LASF93:
	.string	"CDImode"
.LASF168:
	.string	"UNSPEC"
.LASF161:
	.string	"BARRIER"
.LASF164:
	.string	"COND_EXEC"
.LASF174:
	.string	"CALL"
.LASF100:
	.string	"V4QImode"
.LASF153:
	.string	"ATTR"
.LASF272:
	.string	"rttype"
.LASF284:
	.string	"head_tree"
.LASF99:
	.string	"V2DImode"
.LASF360:
	.string	"varray_type"
.LASF267:
	.string	"mem_attrs"
.LASF36:
	.string	"_IO_write_end"
.LASF308:
	.string	"REG_UNUSED"
.LASF146:
	.string	"DEFINE_DELAY"
.LASF196:
	.string	"MINUS"
.LASF350:
	.string	"sched_info_tag"
.LASF186:
	.string	"STRICT_LOW_PART"
.LASF128:
	.string	"INCLUDE"
.LASF292:
	.string	"index"
.LASF224:
	.string	"ZERO_EXTEND"
.LASF227:
	.string	"FLOAT_TRUNCATE"
.LASF366:
	.string	"dest"
.LASF109:
	.string	"V2SFmode"
.LASF353:
	.string	"varray_data"
.LASF228:
	.string	"FLOAT"
.LASF320:
	.string	"REG_EH_CONTEXT"
.LASF125:
	.string	"machine_mode"
.LASF379:
	.string	"dfst_node"
.LASF277:
	.string	"rtmem"
.LASF237:
	.string	"RANGE_REG"
.LASF275:
	.string	"rtbit"
.LASF329:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF71:
	.string	"TImode"
.LASF213:
	.string	"PRE_MODIFY"
.LASF442:
	.string	"flow_dfs_compute_reverse_execute"
.LASF226:
	.string	"FLOAT_EXTEND"
.LASF6:
	.string	"in_struct"
.LASF69:
	.string	"SImode"
.LASF170:
	.string	"ADDR_VEC"
.LASF110:
	.string	"V2DFmode"
.LASF252:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF266:
	.string	"align"
.LASF281:
	.string	"indx"
.LASF420:
	.string	"nodes"
.LASF189:
	.string	"SYMBOL_REF"
.LASF142:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF194:
	.string	"COMPARE"
.LASF222:
	.string	"LTGT"
.LASF234:
	.string	"HIGH"
.LASF191:
	.string	"QUEUED"
.LASF1:
	.string	"mode"
.LASF70:
	.string	"DImode"
.LASF391:
	.string	"postnum"
.LASF338:
	.string	"elms"
.LASF340:
	.string	"const_equiv_data"
.LASF43:
	.string	"_chain"
.LASF212:
	.string	"POST_INC"
.LASF408:
	.string	"split_at_insn"
.LASF83:
	.string	"TFmode"
.LASF21:
	.string	"unsigned char"
.LASF380:
	.string	"nnodes"
.LASF454:
	.string	"_IO_lock_t"
.LASF370:
	.string	"basic_block"
.LASF66:
	.string	"BImode"
.LASF210:
	.string	"PRE_INC"
.LASF307:
	.string	"REG_NO_CONFLICT"
.LASF80:
	.string	"SFmode"
.LASF377:
	.string	"visited_blocks"
.LASF412:
	.string	"block_count"
.LASF438:
	.string	"dfst"
.LASF159:
	.string	"JUMP_INSN"
.LASF289:
	.string	"cond_local_set"
.LASF385:
	.string	"target"
.LASF369:
	.string	"edge"
.LASF276:
	.string	"rttree"
.LASF402:
	.string	"bit_num_"
.LASF141:
	.string	"DEFINE_SPLIT"
.LASF388:
	.string	"mark_dfs_back_edges"
.LASF395:
	.string	"keep_with_call_p"
.LASF180:
	.string	"CONST_VECTOR"
.LASF138:
	.string	"MATCH_INSN"
.LASF81:
	.string	"DFmode"
.LASF362:
	.string	"gcov_type"
.LASF19:
	.string	"size_t"
.LASF172:
	.string	"PREFETCH"
.LASF75:
	.string	"PSImode"
.LASF236:
	.string	"RANGE_INFO"
.LASF376:
	.string	"stack"
.LASF433:
	.string	"dfsnum"
.LASF341:
	.string	"rtunion_def"
.LASF152:
	.string	"DEFINE_ATTR"
.LASF154:
	.string	"SET_ATTR"
.LASF89:
	.string	"TCmode"
.LASF229:
	.string	"UNSIGNED_FLOAT"
.LASF319:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF349:
	.string	"cselib_val_struct"
.LASF35:
	.string	"_IO_write_ptr"
.LASF201:
	.string	"ROTATE"
.LASF287:
	.string	"succ"
.LASF225:
	.string	"TRUNCATE"
.LASF396:
	.string	"flow_call_edges_add"
.LASF312:
	.string	"REG_DEP_ANTI"
.LASF86:
	.string	"SCmode"
.LASF384:
	.string	"can_fallthru"
.LASF76:
	.string	"PDImode"
.LASF334:
	.string	"bitmap"
.LASF430:
	.string	"flow_depth_first_order_compute"
.LASF378:
	.string	"depth_first_search_ds"
.LASF424:
	.string	"add_noreturn_fake_exit_edges"
.LASF296:
	.string	"flags"
.LASF129:
	.string	"EXPR_LIST"
.LASF156:
	.string	"EQ_ATTR"
.LASF119:
	.string	"CCGOCmode"
.LASF187:
	.string	"CONCAT"
.LASF364:
	.string	"pred_next"
.LASF255:
	.string	"min_after_vec"
.LASF28:
	.string	"FILE"
.LASF294:
	.string	"count"
.LASF335:
	.string	"simple_bitmap_def"
.LASF15:
	.string	"tree"
.LASF87:
	.string	"DCmode"
.LASF144:
	.string	"DEFINE_COMBINE"
.LASF450:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF202:
	.string	"ASHIFTRT"
.LASF117:
	.string	"CCmode"
.LASF285:
	.string	"end_tree"
.LASF115:
	.string	"V16SFmode"
.LASF149:
	.string	"DEFINE_COND_EXEC"
.LASF39:
	.string	"_IO_save_base"
.LASF145:
	.string	"DEFINE_EXPAND"
.LASF404:
	.string	"ptr_"
.LASF356:
	.string	"elements_used"
.LASF106:
	.string	"V8SImode"
.LASF158:
	.string	"INSN"
.LASF269:
	.string	"rtint"
.LASF188:
	.string	"LABEL_REF"
.LASF311:
	.string	"REG_LABEL"
.LASF352:
	.string	"elt_list"
.LASF299:
	.string	"REG_DEAD"
.LASF421:
	.string	"file"
.LASF343:
	.string	"hint"
.LASF53:
	.string	"__pad2"
.LASF302:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF361:
	.string	"regset"
.LASF374:
	.string	"index_to_edge"
.LASF118:
	.string	"CCGCmode"
.LASF291:
	.string	"global_live_at_end"
.LASF184:
	.string	"SCRATCH"
.LASF104:
	.string	"V8QImode"
.LASF107:
	.string	"V8DImode"
.LASF401:
	.string	"word_num_"
.LASF223:
	.string	"SIGN_EXTEND"
.LASF399:
	.string	"bb_num"
.LASF445:
	.string	"const_int_rtx"
.LASF245:
	.string	"VEC_DUPLICATE"
.LASF60:
	.string	"_next"
.LASF422:
	.string	"flow_edge_list_print"
.LASF263:
	.string	"expr"
.LASF403:
	.string	"size_"
.LASF113:
	.string	"V8SFmode"
.LASF386:
	.string	"insn"
.LASF310:
	.string	"REG_CC_USER"
.LASF167:
	.string	"ASM_OPERANDS"
.LASF121:
	.string	"CCZmode"
.LASF423:
	.string	"remove_fake_edges"
.LASF325:
	.string	"REG_NON_LOCAL_GOTO"
.LASF171:
	.string	"ADDR_DIFF_VEC"
.LASF233:
	.string	"ZERO_EXTRACT"
.LASF166:
	.string	"ASM_INPUT"
.LASF216:
	.string	"ORDERED"
.LASF114:
	.string	"V8DFmode"
.LASF406:
	.string	"_mask"
.LASF355:
	.string	"num_elements"
.LASF230:
	.string	"UNSIGNED_FIX"
.LASF393:
	.string	"found"
.LASF417:
	.string	"found_edge"
.LASF122:
	.string	"CCFPmode"
.LASF358:
	.string	"name"
.LASF130:
	.string	"INSN_LIST"
.LASF61:
	.string	"_sbuf"
.LASF238:
	.string	"RANGE_VAR"
.LASF41:
	.string	"_IO_save_end"
.LASF193:
	.string	"COND"
.LASF357:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF451:
	.string	"cfganal.c"
.LASF239:
	.string	"RANGE_LIVE"
.LASF97:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF348:
	.string	"const_equiv"
.LASF441:
	.string	"flow_dfs_compute_reverse_add_bb"
.LASF440:
	.string	"flow_dfs_compute_reverse_init"
.LASF273:
	.string	"rt_addr_diff_vec_flags"
.LASF16:
	.string	"sizetype"
.LASF248:
	.string	"SS_MINUS"
.LASF135:
	.string	"MATCH_PARALLEL"
.LASF102:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF301:
	.string	"REG_EQUIV"
.LASF429:
	.string	"rts_order"
.LASF22:
	.string	"short unsigned int"
.LASF23:
	.string	"signed char"
.LASF134:
	.string	"MATCH_OPERATOR"
.LASF354:
	.string	"varray_head_tag"
.LASF280:
	.string	"current"
.LASF250:
	.string	"SS_TRUNCATE"
.LASF315:
	.string	"REG_EXEC_COUNT"
.LASF446:
	.string	"fixed_regs"
.LASF254:
	.string	"base_after_vec"
.LASF139:
	.string	"DEFINE_INSN"
.LASF26:
	.string	"__off64_t"
.LASF103:
	.string	"V4DImode"
.LASF293:
	.string	"loop_depth"
.LASF33:
	.string	"_IO_read_base"
.LASF51:
	.string	"_offset"
.LASF427:
	.string	"dfs_ds"
.LASF313:
	.string	"REG_DEP_OUTPUT"
.LASF38:
	.string	"_IO_buf_end"
.LASF336:
	.string	"n_bits"
.LASF434:
	.string	"rcnum"
.LASF148:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF249:
	.string	"US_MINUS"
.LASF232:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF173:
	.string	"CLOBBER"
.LASF363:
	.string	"edge_def"
.LASF57:
	.string	"_mode"
.LASF235:
	.string	"LO_SUM"
.LASF34:
	.string	"_IO_write_base"
.LASF317:
	.string	"REG_SAVE_AREA"
.LASF241:
	.string	"CALL_PLACEHOLDER"
.LASF413:
	.string	"find_unreachable_blocks"
.LASF111:
	.string	"V4SFmode"
.LASF400:
	.string	"check_last_block"
.LASF195:
	.string	"PLUS"
.LASF211:
	.string	"POST_DEC"
.LASF332:
	.string	"bits"
.LASF68:
	.string	"HImode"
.LASF297:
	.string	"rtunion"
.LASF435:
	.string	"flow_preorder_transversal_compute"
.LASF18:
	.string	"long int"
.LASF448:
	.string	"basic_block_info"
.LASF303:
	.string	"REG_WAS_0"
.LASF443:
	.string	"flow_dfs_compute_reverse_finish"
.LASF324:
	.string	"REG_NORETURN"
.LASF59:
	.string	"_IO_marker"
.LASF82:
	.string	"XFmode"
.LASF323:
	.string	"REG_MAYBE_DEAD"
.LASF112:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF298:
	.string	"reg_note"
.LASF436:
	.string	"pot_order"
.LASF126:
	.string	"rtx_code"
.LASF407:
	.string	"prev_insn"
.LASF432:
	.string	"rc_order"
.LASF411:
	.string	"elist"
.LASF127:
	.string	"UNKNOWN"
.LASF169:
	.string	"UNSPEC_VOLATILE"
.LASF447:
	.string	"n_basic_blocks"
.LASF20:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF409:
	.string	"worklist"
.LASF78:
	.string	"HFmode"
.LASF176:
	.string	"TRAP_IF"
.LASF398:
	.string	"blocks_split"
.LASF321:
	.string	"REG_EH_REGION"
.LASF304:
	.string	"REG_RETVAL"
.LASF90:
	.string	"CQImode"
.LASF27:
	.string	"char"
.LASF88:
	.string	"XCmode"
.LASF37:
	.string	"_IO_buf_base"
.LASF204:
	.string	"ROTATERT"
.LASF190:
	.string	"ADDRESSOF"
.LASF326:
	.string	"REG_SETJMP"
.LASF96:
	.string	"V2QImode"
.LASF74:
	.string	"PHImode"
.LASF32:
	.string	"_IO_read_end"
.LASF351:
	.string	"reg_info_def"
.LASF95:
	.string	"COImode"
.LASF209:
	.string	"PRE_DEC"
.LASF381:
	.string	"node"
.LASF29:
	.string	"_IO_FILE"
.LASF309:
	.string	"REG_CC_SETTER"
.LASF247:
	.string	"US_PLUS"
.LASF372:
	.string	"num_blocks"
.LASF116:
	.string	"BLKmode"
.LASF85:
	.string	"HCmode"
.LASF392:
	.string	"visited"
.LASF181:
	.string	"CONST_STRING"
.LASF244:
	.string	"VEC_CONCAT"
.LASF265:
	.string	"size"
.LASF387:
	.string	"insn2"
.LASF439:
	.string	"remove_fake_successors"
.LASF52:
	.string	"__pad1"
.LASF54:
	.string	"__pad3"
.LASF55:
	.string	"__pad4"
.LASF56:
	.string	"__pad5"
.LASF316:
	.string	"REG_NOALIAS"
.LASF157:
	.string	"ATTR_FLAG"
.LASF123:
	.string	"CCFPUmode"
.LASF431:
	.string	"dfs_order"
.LASF300:
	.string	"REG_INC"
.LASF147:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF339:
	.string	"sbitmap"
.LASF42:
	.string	"_markers"
.LASF62:
	.string	"_pos"
.LASF151:
	.string	"ADDRESS"
.LASF367:
	.string	"insns"
.LASF346:
	.string	"cptr"
.LASF278:
	.string	"bitmap_head_def"
.LASF251:
	.string	"US_TRUNCATE"
.LASF425:
	.string	"connect_infinite_loops_to_exit"
.LASF246:
	.string	"SS_PLUS"
.LASF208:
	.string	"UMAX"
.LASF260:
	.string	"scale"
.LASF415:
	.string	"print_edge_list"
.LASF67:
	.string	"QImode"
.LASF359:
	.string	"data"
.LASF428:
	.string	"flow_reverse_top_sort_order_compute"
.LASF79:
	.string	"TQFmode"
.LASF405:
	.string	"word_"
.LASF283:
	.string	"head"
.LASF394:
	.string	"need_fake_edge_p"
.LASF257:
	.string	"min_after_base"
.LASF418:
	.string	"find_edge_index"
.LASF347:
	.string	"sched"
.LASF416:
	.string	"verify_edge_list"
.LASF375:
	.string	"depth_first_search_dsS"
.LASF72:
	.string	"OImode"
.LASF322:
	.string	"REG_SAVE_NOTE"
.LASF337:
	.string	"bytes"
.LASF206:
	.string	"SMAX"
.LASF243:
	.string	"VEC_SELECT"
.LASF306:
	.string	"REG_NONNEG"
.LASF214:
	.string	"POST_MODIFY"
.LASF318:
	.string	"REG_BR_PRED"
.LASF140:
	.string	"DEFINE_PEEPHOLE"
.LASF63:
	.string	"long long unsigned int"
.LASF264:
	.string	"offset"
.LASF261:
	.string	"addr_diff_vec_flags"
.LASF47:
	.string	"_cur_column"
.LASF136:
	.string	"MATCH_OP_DUP"
.LASF150:
	.string	"SEQUENCE"
.LASF77:
	.string	"QFmode"
.LASF419:
	.string	"flow_nodes_print"
.LASF414:
	.string	"free_edge_list"
.LASF177:
	.string	"RESX"
.LASF165:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF40:
	.string	"_IO_backup_base"
.LASF215:
	.string	"UNORDERED"
.LASF124:
	.string	"MAX_MACHINE_MODE"
.LASF31:
	.string	"_IO_read_ptr"
.LASF371:
	.string	"edge_list"
.LASF290:
	.string	"global_live_at_start"
.LASF132:
	.string	"MATCH_SCRATCH"
.LASF182:
	.string	"CONST"
.LASF231:
	.string	"SQRT"
.LASF390:
	.string	"prenum"
.LASF197:
	.string	"MULT"
.LASF178:
	.string	"CONST_INT"
.LASF288:
	.string	"local_set"
.LASF73:
	.string	"PQImode"
.LASF105:
	.string	"V8HImode"
.LASF46:
	.string	"_old_offset"
.LASF160:
	.string	"CALL_INSN"
.LASF185:
	.string	"SUBREG"
.LASF410:
	.string	"create_edge_list"
.LASF108:
	.string	"V16QImode"
.LASF327:
	.string	"REG_ALWAYS_RETURN"
.LASF426:
	.string	"unvisited_block"
.LASF64:
	.string	"long long int"
.LASF305:
	.string	"REG_LIBCALL"
.LASF45:
	.string	"_flags2"
.LASF84:
	.string	"QCmode"
.LASF183:
	.string	"VALUE"
.LASF163:
	.string	"NOTE"
.LASF207:
	.string	"UMIN"
.LASF133:
	.string	"MATCH_DUP"
.LASF282:
	.string	"basic_block_def"
.LASF444:
	.string	"rtx_class"
.LASF389:
	.string	"post"
.LASF7:
	.string	"used"
.LASF333:
	.string	"bitmap_element"
.LASF91:
	.string	"CHImode"
.LASF155:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF179:
	.string	"CONST_DOUBLE"
.LASF120:
	.string	"CCNOmode"
.LASF101:
	.string	"V4HImode"
.LASF217:
	.string	"UNEQ"
.LASF200:
	.string	"ASHIFT"
.LASF205:
	.string	"SMIN"
.LASF455:
	.string	"__FUNCTION__"
.LASF192:
	.string	"IF_THEN_ELSE"
.LASF17:
	.string	"unsigned int"
.LASF453:
	.string	"tree_node"
.LASF256:
	.string	"max_after_vec"
.LASF218:
	.string	"UNGE"
.LASF24:
	.string	"short int"
.LASF286:
	.string	"pred"
.LASF219:
	.string	"UNGT"
.LASF331:
	.string	"prev"
.LASF48:
	.string	"_vtable_offset"
.LASF65:
	.string	"VOIDmode"
.LASF328:
	.string	"REG_VTABLE_REF"
.LASF295:
	.string	"frequency"
.LASF268:
	.string	"rtwint"
.LASF365:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
