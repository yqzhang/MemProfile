	.file	"dominance.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 dominance.c -mtune=generic -march=x86-64 -g
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
	.type	init_dom_info, @function
init_dom_info:
.LFB2:
	.file 1 "dominance.c"
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# di, di
	.loc 1 143 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.0
	addl	$2, %eax	#, D.10139
	movl	%eax, -36(%rbp)	# D.10139, num
.LBB2:
	.loc 1 144 0
	movl	$1, -32(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp105, D.10141
	movq	-56(%rbp), %rax	# di, tmp106
	movq	%rdx, (%rax)	# D.10141, di_10(D)->dfs_parent
.LBE2:
.LBB3:
	.loc 1 145 0
	movl	$1, -48(%rbp)	#, i
	cmpl	$0, -48(%rbp)	#, i
	jne	.L2	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp107, D.10141
	movq	-56(%rbp), %rax	# di, tmp108
	movq	%rdx, 16(%rax)	# D.10141, di_10(D)->path_min
	jmp	.L3	#
.L2:
	.loc 1 145 0 discriminator 2
	movl	-36(%rbp), %eax	# num, D.10140
	salq	$2, %rax	#, D.10140
	movq	%rax, %rdi	# D.10140,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp109, D.10141
	movq	-56(%rbp), %rax	# di, tmp110
	movq	%rdx, 16(%rax)	# D.10141, di_10(D)->path_min
	movl	$0, -48(%rbp)	#, i
	jmp	.L4	#
.L5:
	movq	-56(%rbp), %rax	# di, tmp111
	movq	16(%rax), %rax	# di_10(D)->path_min, D.10142
	movl	-48(%rbp), %edx	# i, D.10140
	salq	$2, %rdx	#, D.10140
	addq	%rax, %rdx	# D.10142, D.10142
	movl	-48(%rbp), %eax	# i, tmp112
	movl	%eax, (%rdx)	# tmp112, *_21
	addl	$1, -48(%rbp)	#, i
.L4:
	.loc 1 145 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp113
	cmpl	-36(%rbp), %eax	# num, tmp113
	jb	.L5	#,
.L3:
.LBE3:
.LBB4:
	.loc 1 146 0 is_stmt 1
	movl	$1, -44(%rbp)	#, i
	cmpl	$0, -44(%rbp)	#, i
	jne	.L6	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp114, D.10141
	movq	-56(%rbp), %rax	# di, tmp115
	movq	%rdx, 8(%rax)	# D.10141, di_10(D)->key
	jmp	.L7	#
.L6:
	.loc 1 146 0 discriminator 2
	movl	-36(%rbp), %eax	# num, D.10140
	salq	$2, %rax	#, D.10140
	movq	%rax, %rdi	# D.10140,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp116, D.10141
	movq	-56(%rbp), %rax	# di, tmp117
	movq	%rdx, 8(%rax)	# D.10141, di_10(D)->key
	movl	$0, -44(%rbp)	#, i
	jmp	.L8	#
.L9:
	movq	-56(%rbp), %rax	# di, tmp118
	movq	8(%rax), %rax	# di_10(D)->key, D.10142
	movl	-44(%rbp), %edx	# i, D.10140
	salq	$2, %rdx	#, D.10140
	addq	%rax, %rdx	# D.10142, D.10142
	movl	-44(%rbp), %eax	# i, tmp119
	movl	%eax, (%rdx)	# tmp119, *_33
	addl	$1, -44(%rbp)	#, i
.L8:
	.loc 1 146 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp120
	cmpl	-36(%rbp), %eax	# num, tmp120
	jb	.L9	#,
.L7:
.LBE4:
.LBB5:
	.loc 1 147 0 is_stmt 1
	movl	$1, -28(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp121, D.10141
	movq	-56(%rbp), %rax	# di, tmp122
	movq	%rdx, 40(%rax)	# D.10141, di_10(D)->dom
.LBE5:
.LBB6:
	.loc 1 149 0
	movl	$1, -24(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp123, D.10141
	movq	-56(%rbp), %rax	# di, tmp124
	movq	%rdx, 24(%rax)	# D.10141, di_10(D)->bucket
.LBE6:
.LBB7:
	.loc 1 150 0
	movl	$1, -20(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp125, D.10141
	movq	-56(%rbp), %rax	# di, tmp126
	movq	%rdx, 32(%rax)	# D.10141, di_10(D)->next_bucket
.LBE7:
.LBB8:
	.loc 1 152 0
	movl	$1, -16(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp127, D.10141
	movq	-56(%rbp), %rax	# di, tmp128
	movq	%rdx, 48(%rax)	# D.10141, di_10(D)->set_chain
.LBE8:
.LBB9:
	.loc 1 153 0
	movl	$1, -40(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	salq	$2, %rax	#, D.10140
	movq	%rax, %rdi	# D.10140,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp129, D.10141
	movq	-56(%rbp), %rax	# di, tmp130
	movq	%rdx, 56(%rax)	# D.10141, di_10(D)->set_size
	movl	$0, -40(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 153 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# di, tmp131
	movq	56(%rax), %rax	# di_10(D)->set_size, D.10143
	movl	-40(%rbp), %edx	# i, D.10140
	salq	$2, %rdx	#, D.10140
	addq	%rdx, %rax	# D.10140, D.10143
	movl	$1, (%rax)	#, *_55
	addl	$1, -40(%rbp)	#, i
.L10:
	.loc 1 153 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp132
	cmpl	-36(%rbp), %eax	# num, tmp132
	jb	.L11	#,
.LBE9:
.LBB10:
	.loc 1 154 0 is_stmt 1
	movl	$1, -12(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp133, D.10141
	movq	-56(%rbp), %rax	# di, tmp134
	movq	%rdx, 64(%rax)	# D.10141, di_10(D)->set_child
.LBE10:
.LBB11:
	.loc 1 156 0
	movl	$1, -8(%rbp)	#, i
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1
	addl	$1, %eax	#, D.10144
	movl	%eax, %eax	# D.10144, D.10140
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp135, D.10141
	movq	-56(%rbp), %rax	# di, tmp136
	movq	%rdx, 72(%rax)	# D.10141, di_10(D)->dfs_order
.LBE11:
.LBB12:
	.loc 1 157 0
	movl	$1, -4(%rbp)	#, i
	movl	-36(%rbp), %eax	# num, D.10140
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.10140,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp137, D.10141
	movq	-56(%rbp), %rax	# di, tmp138
	movq	%rdx, 80(%rax)	# D.10141, di_10(D)->dfs_to_bb
.LBE12:
	.loc 1 159 0
	movq	-56(%rbp), %rax	# di, tmp139
	movl	$1, 88(%rax)	#, di_10(D)->dfsnum
	.loc 1 160 0
	movq	-56(%rbp), %rax	# di, tmp140
	movl	$0, 92(%rax)	#, di_10(D)->nodes
	.loc 1 161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_dom_info, .-init_dom_info
	.type	free_dom_info, @function
free_dom_info:
.LFB3:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# di, di
	.loc 1 171 0
	movq	-8(%rbp), %rax	# di, tmp70
	movq	(%rax), %rax	# di_1(D)->dfs_parent, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 172 0
	movq	-8(%rbp), %rax	# di, tmp71
	movq	16(%rax), %rax	# di_1(D)->path_min, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 173 0
	movq	-8(%rbp), %rax	# di, tmp72
	movq	8(%rax), %rax	# di_1(D)->key, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 174 0
	movq	-8(%rbp), %rax	# di, tmp73
	movq	40(%rax), %rax	# di_1(D)->dom, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 175 0
	movq	-8(%rbp), %rax	# di, tmp74
	movq	24(%rax), %rax	# di_1(D)->bucket, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 176 0
	movq	-8(%rbp), %rax	# di, tmp75
	movq	32(%rax), %rax	# di_1(D)->next_bucket, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 177 0
	movq	-8(%rbp), %rax	# di, tmp76
	movq	48(%rax), %rax	# di_1(D)->set_chain, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 178 0
	movq	-8(%rbp), %rax	# di, tmp77
	movq	56(%rax), %rax	# di_1(D)->set_size, D.10146
	movq	%rax, %rdi	# D.10146,
	call	free	#
	.loc 1 179 0
	movq	-8(%rbp), %rax	# di, tmp78
	movq	64(%rax), %rax	# di_1(D)->set_child, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 180 0
	movq	-8(%rbp), %rax	# di, tmp79
	movq	72(%rax), %rax	# di_1(D)->dfs_order, D.10145
	movq	%rax, %rdi	# D.10145,
	call	free	#
	.loc 1 181 0
	movq	-8(%rbp), %rax	# di, tmp80
	movq	80(%rax), %rax	# di_1(D)->dfs_to_bb, D.10147
	movq	%rax, %rdi	# D.10147,
	call	free	#
	.loc 1 182 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	free_dom_info, .-free_dom_info
	.section	.rodata
.LC0:
	.string	"dominance.c"
	.text
	.type	calc_dfs_tree_nonrec, @function
calc_dfs_tree_nonrec:
.LFB4:
	.loc 1 195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# di, di
	movq	%rsi, -80(%rbp)	# bb, bb
	movl	%edx, -84(%rbp)	# reverse, reverse
	.loc 1 199 0
	movl	$0, -60(%rbp)	#, my_i
	.loc 1 208 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.7
	addl	$3, %eax	#, D.10148
	cltq
	salq	$3, %rax	#, D.10149
	movq	%rax, %rdi	# D.10149,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp107, stack
	.loc 1 209 0
	movl	$0, -56(%rbp)	#, sp
	.loc 1 212 0
	cmpl	$0, -84(%rbp)	#, reverse
	je	.L14	#,
	.loc 1 214 0
	movq	-80(%rbp), %rax	# bb, tmp108
	movq	32(%rax), %rax	# bb_20(D)->pred, tmp109
	movq	%rax, -48(%rbp)	# tmp109, e
	.loc 1 215 0
	movq	$entry_exit_blocks+112, -40(%rbp)	#, en_block
	.loc 1 216 0
	movq	$entry_exit_blocks, -32(%rbp)	#, ex_block
	jmp	.L15	#
.L14:
	.loc 1 220 0
	movq	-80(%rbp), %rax	# bb, tmp110
	movq	40(%rax), %rax	# bb_20(D)->succ, tmp111
	movq	%rax, -48(%rbp)	# tmp111, e
	.loc 1 221 0
	movq	$entry_exit_blocks, -40(%rbp)	#, en_block
	.loc 1 222 0
	movq	$entry_exit_blocks+112, -32(%rbp)	#, ex_block
.LBB13:
	.loc 1 232 0
	jmp	.L16	#
.L15:
	jmp	.L16	#
.L26:
.LBB14:
	.loc 1 238 0
	cmpl	$0, -84(%rbp)	#, reverse
	je	.L17	#,
	.loc 1 240 0
	movq	-48(%rbp), %rax	# e, tmp112
	movq	16(%rax), %rax	# e_3->src, tmp113
	movq	%rax, -24(%rbp)	# tmp113, bn
	.loc 1 245 0
	movq	-24(%rbp), %rax	# bn, tmp114
	cmpq	-32(%rbp), %rax	# ex_block, tmp114
	je	.L18	#,
	.loc 1 245 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# di, tmp115
	movq	72(%rax), %rdx	# di_28(D)->dfs_order, D.10150
	movq	-24(%rbp), %rax	# bn, tmp116
	movl	88(%rax), %eax	# bn_27->index, D.10148
	cltq
	salq	$2, %rax	#, D.10149
	addq	%rdx, %rax	# D.10150, D.10150
	movl	(%rax), %eax	# *_33, D.10151
	testl	%eax, %eax	# D.10151
	je	.L19	#,
.L18:
	.loc 1 247 0 is_stmt 1
	movq	-48(%rbp), %rax	# e, tmp117
	movq	(%rax), %rax	# e_3->pred_next, tmp118
	movq	%rax, -48(%rbp)	# tmp118, e
	.loc 1 248 0
	jmp	.L16	#
.L19:
	.loc 1 250 0
	movq	-48(%rbp), %rax	# e, tmp119
	movq	24(%rax), %rax	# e_3->dest, tmp120
	movq	%rax, -80(%rbp)	# tmp120, bb
	.loc 1 251 0
	movq	-24(%rbp), %rax	# bn, tmp121
	movq	32(%rax), %rax	# bn_27->pred, tmp122
	movq	%rax, -16(%rbp)	# tmp122, e_next
	jmp	.L20	#
.L17:
	.loc 1 255 0
	movq	-48(%rbp), %rax	# e, tmp123
	movq	24(%rax), %rax	# e_3->dest, tmp124
	movq	%rax, -24(%rbp)	# tmp124, bn
	.loc 1 256 0
	movq	-24(%rbp), %rax	# bn, tmp125
	cmpq	-32(%rbp), %rax	# ex_block, tmp125
	je	.L21	#,
	.loc 1 256 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# di, tmp126
	movq	72(%rax), %rdx	# di_28(D)->dfs_order, D.10150
	movq	-24(%rbp), %rax	# bn, tmp127
	movl	88(%rax), %eax	# bn_38->index, D.10148
	cltq
	salq	$2, %rax	#, D.10149
	addq	%rdx, %rax	# D.10150, D.10150
	movl	(%rax), %eax	# *_43, D.10151
	testl	%eax, %eax	# D.10151
	je	.L22	#,
.L21:
	.loc 1 258 0 is_stmt 1
	movq	-48(%rbp), %rax	# e, tmp128
	movq	8(%rax), %rax	# e_3->succ_next, tmp129
	movq	%rax, -48(%rbp)	# tmp129, e
	.loc 1 259 0
	jmp	.L16	#
.L22:
	.loc 1 261 0
	movq	-48(%rbp), %rax	# e, tmp130
	movq	16(%rax), %rax	# e_3->src, tmp131
	movq	%rax, -80(%rbp)	# tmp131, bb
	.loc 1 262 0
	movq	-24(%rbp), %rax	# bn, tmp132
	movq	40(%rax), %rax	# bn_38->succ, tmp133
	movq	%rax, -16(%rbp)	# tmp133, e_next
.L20:
	.loc 1 265 0
	movq	-24(%rbp), %rax	# bn, tmp134
	cmpq	-40(%rbp), %rax	# en_block, tmp134
	jne	.L23	#,
	.loc 1 266 0
	movl	$__FUNCTION__.9276, %edx	#,
	movl	$266, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L23:
	.loc 1 269 0
	movq	-80(%rbp), %rax	# bb, tmp135
	cmpq	-40(%rbp), %rax	# en_block, tmp135
	je	.L24	#,
	.loc 1 270 0
	movq	-72(%rbp), %rax	# di, tmp136
	movq	72(%rax), %rdx	# di_28(D)->dfs_order, D.10150
	movq	-80(%rbp), %rax	# bb, tmp137
	movl	88(%rax), %eax	# bb_1->index, D.10148
	cltq
	salq	$2, %rax	#, D.10149
	addq	%rdx, %rax	# D.10150, D.10150
	movl	(%rax), %eax	# *_52, tmp138
	movl	%eax, -60(%rbp)	# tmp138, my_i
	jmp	.L25	#
.L24:
	.loc 1 272 0
	movq	-72(%rbp), %rax	# di, tmp139
	movq	72(%rax), %rax	# di_28(D)->dfs_order, D.10150
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.8
	movslq	%edx, %rdx	# n_basic_blocks.8, D.10149
	salq	$2, %rdx	#, D.10149
	addq	%rdx, %rax	# D.10149, D.10150
	movl	(%rax), %eax	# *_58, tmp140
	movl	%eax, -60(%rbp)	# tmp140, my_i
.L25:
	.loc 1 273 0
	movq	-72(%rbp), %rax	# di, tmp141
	movq	72(%rax), %rdx	# di_28(D)->dfs_order, D.10150
	movq	-24(%rbp), %rax	# bn, tmp142
	movl	88(%rax), %eax	# bn_10->index, D.10148
	cltq
	salq	$2, %rax	#, D.10149
	addq	%rax, %rdx	# D.10149, D.10150
	movq	-72(%rbp), %rax	# di, tmp143
	movl	88(%rax), %eax	# di_28(D)->dfsnum, D.10151
	leal	1(%rax), %esi	#, D.10151
	movq	-72(%rbp), %rcx	# di, tmp144
	movl	%esi, 88(%rcx)	# D.10151, di_28(D)->dfsnum
	movl	%eax, (%rdx)	# D.10151, *_64
	movl	(%rdx), %eax	# *_64, tmp145
	movl	%eax, -52(%rbp)	# tmp145, child_i
	.loc 1 274 0
	movq	-72(%rbp), %rax	# di, tmp146
	movq	80(%rax), %rax	# di_28(D)->dfs_to_bb, D.10152
	movl	-52(%rbp), %edx	# child_i, D.10149
	salq	$3, %rdx	#, D.10149
	addq	%rax, %rdx	# D.10152, D.10152
	movq	-24(%rbp), %rax	# bn, tmp147
	movq	%rax, (%rdx)	# tmp147, *_72
	.loc 1 275 0
	movq	-72(%rbp), %rax	# di, tmp148
	movq	(%rax), %rax	# di_28(D)->dfs_parent, D.10150
	movl	-52(%rbp), %edx	# child_i, D.10149
	salq	$2, %rdx	#, D.10149
	addq	%rax, %rdx	# D.10150, D.10150
	movl	-60(%rbp), %eax	# my_i, tmp149
	movl	%eax, (%rdx)	# tmp149, *_76
	.loc 1 278 0
	movl	-56(%rbp), %eax	# sp, sp.9
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -56(%rbp)	# tmp150, sp
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10149
	movq	-8(%rbp), %rax	# stack, tmp151
	addq	%rax, %rdx	# tmp151, D.10153
	movq	-48(%rbp), %rax	# e, tmp152
	movq	%rax, (%rdx)	# tmp152, *_81
	.loc 1 279 0
	movq	-16(%rbp), %rax	# e_next, tmp153
	movq	%rax, -48(%rbp)	# tmp153, e
.L16:
.LBE14:
	.loc 1 232 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L26	#,
	.loc 1 282 0
	cmpl	$0, -56(%rbp)	#, sp
	jne	.L27	#,
	.loc 1 283 0
	jmp	.L31	#
.L27:
	.loc 1 284 0
	subl	$1, -56(%rbp)	#, sp
	movl	-56(%rbp), %eax	# sp, tmp154
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10149
	movq	-8(%rbp), %rax	# stack, tmp155
	addq	%rdx, %rax	# D.10149, D.10153
	movq	(%rax), %rax	# *_86, tmp156
	movq	%rax, -48(%rbp)	# tmp156, e
	.loc 1 295 0
	cmpl	$0, -84(%rbp)	#, reverse
	je	.L29	#,
	.loc 1 296 0
	movq	-48(%rbp), %rax	# e, tmp157
	movq	(%rax), %rax	# e_87->pred_next, tmp158
	movq	%rax, -48(%rbp)	# tmp158, e
.LBE13:
	.loc 1 299 0
	jmp	.L15	#
.L29:
.LBB15:
	.loc 1 298 0
	movq	-48(%rbp), %rax	# e, tmp159
	movq	8(%rax), %rax	# e_87->succ_next, tmp160
	movq	%rax, -48(%rbp)	# tmp160, e
.LBE15:
	.loc 1 299 0
	jmp	.L15	#
.L31:
	.loc 1 300 0
	movq	-8(%rbp), %rax	# stack, tmp161
	movq	%rax, %rdi	# tmp161,
	call	free	#
	.loc 1 301 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	calc_dfs_tree_nonrec, .-calc_dfs_tree_nonrec
	.type	calc_dfs_tree, @function
calc_dfs_tree:
.LFB5:
	.loc 1 312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# di, di
	movl	%esi, -44(%rbp)	# reverse, reverse
	.loc 1 314 0
	cmpl	$0, -44(%rbp)	#, reverse
	je	.L33	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	$entry_exit_blocks+112, %eax	#, iftmp.10
	jmp	.L34	#
.L33:
	.loc 1 314 0 discriminator 2
	movl	$entry_exit_blocks, %eax	#, iftmp.10
.L34:
	.loc 1 314 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.10, begin
	.loc 1 315 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# di, tmp100
	movq	72(%rax), %rax	# di_7(D)->dfs_order, D.10155
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.11
	movslq	%edx, %rdx	# n_basic_blocks.11, D.10156
	salq	$2, %rdx	#, D.10156
	addq	%rax, %rdx	# D.10155, D.10155
	movq	-40(%rbp), %rax	# di, tmp101
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	movl	%eax, (%rdx)	# D.10157, *_12
	.loc 1 316 0 discriminator 3
	movq	-40(%rbp), %rax	# di, tmp102
	movq	80(%rax), %rdx	# di_7(D)->dfs_to_bb, D.10158
	movq	-40(%rbp), %rax	# di, tmp103
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	movl	%eax, %eax	# D.10157, D.10156
	salq	$3, %rax	#, D.10156
	addq	%rax, %rdx	# D.10156, D.10158
	movq	-16(%rbp), %rax	# begin, tmp104
	movq	%rax, (%rdx)	# tmp104, *_18
	.loc 1 317 0 discriminator 3
	movq	-40(%rbp), %rax	# di, tmp105
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	leal	1(%rax), %edx	#, D.10157
	movq	-40(%rbp), %rax	# di, tmp106
	movl	%edx, 88(%rax)	# D.10157, di_7(D)->dfsnum
	.loc 1 319 0 discriminator 3
	movl	-44(%rbp), %edx	# reverse, tmp107
	movq	-16(%rbp), %rcx	# begin, tmp108
	movq	-40(%rbp), %rax	# di, tmp109
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	calc_dfs_tree_nonrec	#
	.loc 1 321 0 discriminator 3
	cmpl	$0, -44(%rbp)	#, reverse
	je	.L35	#,
.LBB16:
	.loc 1 328 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.12
	subl	$1, %eax	#, tmp110
	movl	%eax, -20(%rbp)	# tmp110, i
	jmp	.L36	#
.L39:
.LBB17:
	.loc 1 330 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.13
	movl	-20(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, tmp111
	addq	$4, %rdx	#, tmp113
	movq	(%rax,%rdx,8), %rax	# basic_block_info.13_23->data.bb, tmp114
	movq	%rax, -8(%rbp)	# tmp114, b
	.loc 1 331 0
	movq	-40(%rbp), %rax	# di, tmp115
	movq	72(%rax), %rdx	# di_7(D)->dfs_order, D.10155
	movq	-8(%rbp), %rax	# b, tmp116
	movl	88(%rax), %eax	# b_24->index, D.10159
	cltq
	salq	$2, %rax	#, D.10156
	addq	%rdx, %rax	# D.10155, D.10155
	movl	(%rax), %eax	# *_29, D.10157
	testl	%eax, %eax	# D.10157
	je	.L37	#,
	.loc 1 332 0
	jmp	.L38	#
.L37:
	.loc 1 333 0
	movq	-40(%rbp), %rax	# di, tmp117
	movq	72(%rax), %rdx	# di_7(D)->dfs_order, D.10155
	movq	-8(%rbp), %rax	# b, tmp118
	movl	88(%rax), %eax	# b_24->index, D.10159
	cltq
	salq	$2, %rax	#, D.10156
	addq	%rax, %rdx	# D.10156, D.10155
	movq	-40(%rbp), %rax	# di, tmp119
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	movl	%eax, (%rdx)	# D.10157, *_35
	.loc 1 334 0
	movq	-40(%rbp), %rax	# di, tmp120
	movq	80(%rax), %rdx	# di_7(D)->dfs_to_bb, D.10158
	movq	-40(%rbp), %rax	# di, tmp121
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	movl	%eax, %eax	# D.10157, D.10156
	salq	$3, %rax	#, D.10156
	addq	%rax, %rdx	# D.10156, D.10158
	movq	-8(%rbp), %rax	# b, tmp122
	movq	%rax, (%rdx)	# tmp122, *_41
	.loc 1 335 0
	movq	-40(%rbp), %rax	# di, tmp123
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	leal	1(%rax), %edx	#, D.10157
	movq	-40(%rbp), %rax	# di, tmp124
	movl	%edx, 88(%rax)	# D.10157, di_7(D)->dfsnum
	.loc 1 336 0
	movl	-44(%rbp), %edx	# reverse, tmp125
	movq	-8(%rbp), %rcx	# b, tmp126
	movq	-40(%rbp), %rax	# di, tmp127
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp127,
	call	calc_dfs_tree_nonrec	#
.L38:
.LBE17:
	.loc 1 328 0
	subl	$1, -20(%rbp)	#, i
.L36:
	.loc 1 328 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, i
	jns	.L39	#,
.L35:
.LBE16:
	.loc 1 340 0 is_stmt 1
	movq	-40(%rbp), %rax	# di, tmp128
	movl	88(%rax), %eax	# di_7(D)->dfsnum, D.10157
	leal	-1(%rax), %edx	#, D.10157
	movq	-40(%rbp), %rax	# di, tmp129
	movl	%edx, 92(%rax)	# D.10157, di_7(D)->nodes
	.loc 1 343 0
	movq	-40(%rbp), %rax	# di, tmp130
	movl	92(%rax), %eax	# di_7(D)->nodes, D.10157
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.14
	addl	$1, %edx	#, D.10157
	cmpl	%edx, %eax	# D.10157, D.10157
	je	.L32	#,
	.loc 1 344 0
	movl	$__FUNCTION__.9292, %edx	#,
	movl	$344, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L32:
	.loc 1 345 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	calc_dfs_tree, .-calc_dfs_tree
	.type	compress, @function
compress:
.LFB6:
	.loc 1 356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# di, di
	movl	%esi, -28(%rbp)	# v, v
	.loc 1 360 0
	movq	-24(%rbp), %rax	# di, tmp106
	movq	48(%rax), %rax	# di_1(D)->set_chain, D.10160
	movl	-28(%rbp), %edx	# v, D.10161
	salq	$2, %rdx	#, D.10161
	addq	%rdx, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_6, tmp107
	movl	%eax, -4(%rbp)	# tmp107, parent
	.loc 1 361 0
	movq	-24(%rbp), %rax	# di, tmp108
	movq	48(%rax), %rax	# di_1(D)->set_chain, D.10160
	movl	-4(%rbp), %edx	# parent, D.10161
	salq	$2, %rdx	#, D.10161
	addq	%rdx, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_11, D.10162
	testl	%eax, %eax	# D.10162
	je	.L41	#,
	.loc 1 363 0
	movl	-4(%rbp), %edx	# parent, tmp109
	movq	-24(%rbp), %rax	# di, tmp110
	movl	%edx, %esi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	compress	#
	.loc 1 364 0
	movq	-24(%rbp), %rax	# di, tmp111
	movq	8(%rax), %rdx	# di_1(D)->key, D.10160
	movq	-24(%rbp), %rax	# di, tmp112
	movq	16(%rax), %rax	# di_1(D)->path_min, D.10160
	movl	-4(%rbp), %ecx	# parent, D.10161
	salq	$2, %rcx	#, D.10161
	addq	%rcx, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_17, D.10162
	movl	%eax, %eax	# D.10162, D.10161
	salq	$2, %rax	#, D.10161
	addq	%rdx, %rax	# D.10160, D.10160
	movl	(%rax), %edx	# *_21, D.10162
	movq	-24(%rbp), %rax	# di, tmp113
	movq	8(%rax), %rcx	# di_1(D)->key, D.10160
	movq	-24(%rbp), %rax	# di, tmp114
	movq	16(%rax), %rax	# di_1(D)->path_min, D.10160
	movl	-28(%rbp), %esi	# v, D.10161
	salq	$2, %rsi	#, D.10161
	addq	%rsi, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_27, D.10162
	movl	%eax, %eax	# D.10162, D.10161
	salq	$2, %rax	#, D.10161
	addq	%rcx, %rax	# D.10160, D.10160
	movl	(%rax), %eax	# *_31, D.10162
	cmpl	%eax, %edx	# D.10162, D.10162
	jae	.L43	#,
	.loc 1 365 0
	movq	-24(%rbp), %rax	# di, tmp115
	movq	16(%rax), %rax	# di_1(D)->path_min, D.10160
	movl	-28(%rbp), %edx	# v, D.10161
	salq	$2, %rdx	#, D.10161
	addq	%rax, %rdx	# D.10160, D.10160
	movq	-24(%rbp), %rax	# di, tmp116
	movq	16(%rax), %rax	# di_1(D)->path_min, D.10160
	movl	-4(%rbp), %ecx	# parent, D.10161
	salq	$2, %rcx	#, D.10161
	addq	%rcx, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_40, D.10162
	movl	%eax, (%rdx)	# D.10162, *_36
.L43:
	.loc 1 366 0
	movq	-24(%rbp), %rax	# di, tmp117
	movq	48(%rax), %rax	# di_1(D)->set_chain, D.10160
	movl	-28(%rbp), %edx	# v, D.10161
	salq	$2, %rdx	#, D.10161
	addq	%rax, %rdx	# D.10160, D.10160
	movq	-24(%rbp), %rax	# di, tmp118
	movq	48(%rax), %rax	# di_1(D)->set_chain, D.10160
	movl	-4(%rbp), %ecx	# parent, D.10161
	salq	$2, %rcx	#, D.10161
	addq	%rcx, %rax	# D.10161, D.10160
	movl	(%rax), %eax	# *_49, D.10162
	movl	%eax, (%rdx)	# D.10162, *_45
.L41:
	.loc 1 368 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	compress, .-compress
	.type	eval, @function
eval:
.LFB7:
	.loc 1 378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# di, di
	movl	%esi, -28(%rbp)	# v, v
	.loc 1 381 0
	movq	-24(%rbp), %rax	# di, tmp106
	movq	48(%rax), %rax	# di_3(D)->set_chain, D.10164
	movl	-28(%rbp), %edx	# v, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_8, tmp107
	movl	%eax, -4(%rbp)	# tmp107, rep
	.loc 1 384 0
	cmpl	$0, -4(%rbp)	#, rep
	jne	.L45	#,
	.loc 1 385 0
	movq	-24(%rbp), %rax	# di, tmp108
	movq	16(%rax), %rax	# di_3(D)->path_min, D.10164
	movl	-28(%rbp), %edx	# v, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_13, D.10163
	jmp	.L46	#
.L45:
	.loc 1 388 0
	movq	-24(%rbp), %rax	# di, tmp109
	movq	48(%rax), %rax	# di_3(D)->set_chain, D.10164
	movl	-4(%rbp), %edx	# rep, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_18, D.10166
	testl	%eax, %eax	# D.10166
	je	.L47	#,
	.loc 1 390 0
	movl	-28(%rbp), %edx	# v, tmp110
	movq	-24(%rbp), %rax	# di, tmp111
	movl	%edx, %esi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	compress	#
	.loc 1 391 0
	movq	-24(%rbp), %rax	# di, tmp112
	movq	48(%rax), %rax	# di_3(D)->set_chain, D.10164
	movl	-28(%rbp), %edx	# v, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_23, tmp113
	movl	%eax, -4(%rbp)	# tmp113, rep
.L47:
	.loc 1 394 0
	movq	-24(%rbp), %rax	# di, tmp114
	movq	8(%rax), %rdx	# di_3(D)->key, D.10164
	movq	-24(%rbp), %rax	# di, tmp115
	movq	16(%rax), %rax	# di_3(D)->path_min, D.10164
	movl	-4(%rbp), %ecx	# rep, D.10165
	salq	$2, %rcx	#, D.10165
	addq	%rcx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_29, D.10166
	movl	%eax, %eax	# D.10166, D.10165
	salq	$2, %rax	#, D.10165
	addq	%rdx, %rax	# D.10164, D.10164
	movl	(%rax), %edx	# *_33, D.10166
	movq	-24(%rbp), %rax	# di, tmp116
	movq	8(%rax), %rcx	# di_3(D)->key, D.10164
	movq	-24(%rbp), %rax	# di, tmp117
	movq	16(%rax), %rax	# di_3(D)->path_min, D.10164
	movl	-28(%rbp), %esi	# v, D.10165
	salq	$2, %rsi	#, D.10165
	addq	%rsi, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_39, D.10166
	movl	%eax, %eax	# D.10166, D.10165
	salq	$2, %rax	#, D.10165
	addq	%rcx, %rax	# D.10164, D.10164
	movl	(%rax), %eax	# *_43, D.10166
	cmpl	%eax, %edx	# D.10166, D.10166
	jb	.L48	#,
	.loc 1 395 0
	movq	-24(%rbp), %rax	# di, tmp118
	movq	16(%rax), %rax	# di_3(D)->path_min, D.10164
	movl	-28(%rbp), %edx	# v, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_48, D.10163
	jmp	.L46	#
.L48:
	.loc 1 397 0
	movq	-24(%rbp), %rax	# di, tmp119
	movq	16(%rax), %rax	# di_3(D)->path_min, D.10164
	movl	-4(%rbp), %edx	# rep, D.10165
	salq	$2, %rdx	#, D.10165
	addq	%rdx, %rax	# D.10165, D.10164
	movl	(%rax), %eax	# *_53, D.10163
.L46:
	.loc 1 398 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	eval, .-eval
	.type	link_roots, @function
link_roots:
.LFB8:
	.loc 1 409 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# di, di
	movl	%esi, -28(%rbp)	# v, v
	movl	%edx, -32(%rbp)	# w, w
	.loc 1 410 0
	movl	-32(%rbp), %eax	# w, tmp213
	movl	%eax, -8(%rbp)	# tmp213, s
	.loc 1 413 0
	jmp	.L50	#
.L52:
	.loc 1 415 0
	movq	-24(%rbp), %rax	# di, tmp214
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rdx, %rax	# D.10168, D.10170
	movl	(%rax), %edx	# *_35, D.10169
	movq	-24(%rbp), %rax	# di, tmp215
	movq	56(%rax), %rcx	# di_6(D)->set_size, D.10170
	movq	-24(%rbp), %rax	# di, tmp216
	movq	64(%rax), %rsi	# di_6(D)->set_child, D.10167
	movq	-24(%rbp), %rax	# di, tmp217
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %edi	# s, D.10168
	salq	$2, %rdi	#, D.10168
	addq	%rdi, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_42, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rsi, %rax	# D.10167, D.10167
	movl	(%rax), %eax	# *_46, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rcx, %rax	# D.10170, D.10170
	movl	(%rax), %eax	# *_50, D.10169
	leal	(%rdx,%rax), %esi	#, D.10169
	.loc 1 416 0
	movq	-24(%rbp), %rax	# di, tmp218
	movq	56(%rax), %rdx	# di_6(D)->set_size, D.10170
	movq	-24(%rbp), %rax	# di, tmp219
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %ecx	# s, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_57, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rdx, %rax	# D.10170, D.10170
	movl	(%rax), %eax	# *_61, D.10169
	addl	%eax, %eax	# D.10169
	.loc 1 415 0
	cmpl	%eax, %esi	# D.10169, D.10169
	jb	.L51	#,
	.loc 1 418 0
	movq	-24(%rbp), %rax	# di, tmp220
	movq	48(%rax), %rdx	# di_6(D)->set_chain, D.10167
	movq	-24(%rbp), %rax	# di, tmp221
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %ecx	# s, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_68, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rax, %rdx	# D.10168, D.10167
	movl	-8(%rbp), %eax	# s, tmp222
	movl	%eax, (%rdx)	# tmp222, *_72
	.loc 1 419 0
	movq	-24(%rbp), %rax	# di, tmp223
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rax, %rdx	# D.10167, D.10167
	movq	-24(%rbp), %rax	# di, tmp224
	movq	64(%rax), %rcx	# di_6(D)->set_child, D.10167
	movq	-24(%rbp), %rax	# di, tmp225
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %esi	# s, D.10168
	salq	$2, %rsi	#, D.10168
	addq	%rsi, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_81, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rcx, %rax	# D.10167, D.10167
	movl	(%rax), %eax	# *_85, D.10169
	movl	%eax, (%rdx)	# D.10169, *_76
	jmp	.L50	#
.L51:
	.loc 1 423 0
	movq	-24(%rbp), %rax	# di, tmp226
	movq	56(%rax), %rdx	# di_6(D)->set_size, D.10170
	movq	-24(%rbp), %rax	# di, tmp227
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %ecx	# s, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_91, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rax, %rdx	# D.10168, D.10170
	movq	-24(%rbp), %rax	# di, tmp228
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-8(%rbp), %ecx	# s, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10170
	movl	(%rax), %eax	# *_99, D.10169
	movl	%eax, (%rdx)	# D.10169, *_95
	.loc 1 424 0
	movq	-24(%rbp), %rax	# di, tmp229
	movq	48(%rax), %rax	# di_6(D)->set_chain, D.10167
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rdx, %rax	# D.10168, D.10167
	movq	-24(%rbp), %rdx	# di, tmp230
	movq	64(%rdx), %rdx	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %ecx	# s, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rdx	# D.10168, D.10167
	movl	(%rdx), %edx	# *_108, D.10169
	movl	%edx, (%rax)	# D.10169, *_104
	movl	(%rax), %eax	# *_104, tmp231
	movl	%eax, -8(%rbp)	# tmp231, s
.L50:
	.loc 1 413 0 discriminator 1
	movq	-24(%rbp), %rax	# di, tmp232
	movq	8(%rax), %rdx	# di_6(D)->key, D.10167
	movq	-24(%rbp), %rax	# di, tmp233
	movq	16(%rax), %rax	# di_6(D)->path_min, D.10167
	movl	-32(%rbp), %ecx	# w, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_11, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rdx, %rax	# D.10167, D.10167
	movl	(%rax), %edx	# *_15, D.10169
	movq	-24(%rbp), %rax	# di, tmp234
	movq	8(%rax), %rcx	# di_6(D)->key, D.10167
	movq	-24(%rbp), %rax	# di, tmp235
	movq	16(%rax), %rsi	# di_6(D)->path_min, D.10167
	movq	-24(%rbp), %rax	# di, tmp236
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %edi	# s, D.10168
	salq	$2, %rdi	#, D.10168
	addq	%rdi, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_22, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rsi, %rax	# D.10167, D.10167
	movl	(%rax), %eax	# *_26, D.10169
	movl	%eax, %eax	# D.10169, D.10168
	salq	$2, %rax	#, D.10168
	addq	%rcx, %rax	# D.10167, D.10167
	movl	(%rax), %eax	# *_30, D.10169
	cmpl	%eax, %edx	# D.10169, D.10169
	jb	.L52	#,
	.loc 1 428 0
	movq	-24(%rbp), %rax	# di, tmp237
	movq	16(%rax), %rax	# di_6(D)->path_min, D.10167
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rax, %rdx	# D.10167, D.10167
	movq	-24(%rbp), %rax	# di, tmp238
	movq	16(%rax), %rax	# di_6(D)->path_min, D.10167
	movl	-32(%rbp), %ecx	# w, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_118, D.10169
	movl	%eax, (%rdx)	# D.10169, *_114
	.loc 1 429 0
	movq	-24(%rbp), %rax	# di, tmp239
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-28(%rbp), %edx	# v, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rax, %rdx	# D.10170, D.10170
	movq	-24(%rbp), %rax	# di, tmp240
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-28(%rbp), %ecx	# v, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10170
	movl	(%rax), %ecx	# *_128, D.10169
	movq	-24(%rbp), %rax	# di, tmp241
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-32(%rbp), %esi	# w, D.10168
	salq	$2, %rsi	#, D.10168
	addq	%rsi, %rax	# D.10168, D.10170
	movl	(%rax), %eax	# *_133, D.10169
	addl	%ecx, %eax	# D.10169, D.10169
	movl	%eax, (%rdx)	# D.10169, *_124
	.loc 1 430 0
	movq	-24(%rbp), %rax	# di, tmp242
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-28(%rbp), %edx	# v, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rdx, %rax	# D.10168, D.10170
	movl	(%rax), %edx	# *_139, D.10169
	movq	-24(%rbp), %rax	# di, tmp243
	movq	56(%rax), %rax	# di_6(D)->set_size, D.10170
	movl	-32(%rbp), %ecx	# w, D.10168
	salq	$2, %rcx	#, D.10168
	addq	%rcx, %rax	# D.10168, D.10170
	movl	(%rax), %eax	# *_144, D.10169
	addl	%eax, %eax	# D.10169
	cmpl	%eax, %edx	# D.10169, D.10169
	jae	.L53	#,
.LBB18:
	.loc 1 432 0
	movl	-8(%rbp), %eax	# s, tmp244
	movl	%eax, -4(%rbp)	# tmp244, tmp
	.loc 1 433 0
	movq	-24(%rbp), %rax	# di, tmp245
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-28(%rbp), %edx	# v, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rdx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_151, tmp246
	movl	%eax, -8(%rbp)	# tmp246, s
	.loc 1 434 0
	movq	-24(%rbp), %rax	# di, tmp247
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-28(%rbp), %edx	# v, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rax, %rdx	# D.10167, D.10167
	movl	-4(%rbp), %eax	# tmp, tmp248
	movl	%eax, (%rdx)	# tmp248, *_156
.LBE18:
	.loc 1 438 0
	jmp	.L54	#
.L53:
	jmp	.L54	#
.L55:
	.loc 1 440 0
	movq	-24(%rbp), %rax	# di, tmp249
	movq	48(%rax), %rax	# di_6(D)->set_chain, D.10167
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rax, %rdx	# D.10167, D.10167
	movl	-28(%rbp), %eax	# v, tmp250
	movl	%eax, (%rdx)	# tmp250, *_160
	.loc 1 441 0
	movq	-24(%rbp), %rax	# di, tmp251
	movq	64(%rax), %rax	# di_6(D)->set_child, D.10167
	movl	-8(%rbp), %edx	# s, D.10168
	salq	$2, %rdx	#, D.10168
	addq	%rdx, %rax	# D.10168, D.10167
	movl	(%rax), %eax	# *_164, tmp252
	movl	%eax, -8(%rbp)	# tmp252, s
.L54:
	.loc 1 438 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, s
	jne	.L55	#,
	.loc 1 443 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	link_roots, .-link_roots
	.type	calc_idoms, @function
calc_idoms:
.LFB9:
	.loc 1 453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# di, di
	movl	%esi, -92(%rbp)	# reverse, reverse
	.loc 1 456 0
	cmpl	$0, -92(%rbp)	#, reverse
	je	.L57	#,
	.loc 1 457 0
	movq	$entry_exit_blocks+112, -56(%rbp)	#, en_block
	jmp	.L58	#
.L57:
	.loc 1 459 0
	movq	$entry_exit_blocks, -56(%rbp)	#, en_block
.L58:
	.loc 1 462 0
	movq	-88(%rbp), %rax	# di, tmp156
	movl	92(%rax), %eax	# di_16(D)->nodes, tmp157
	movl	%eax, -76(%rbp)	# tmp157, v
	.loc 1 463 0
	jmp	.L59	#
.L74:
.LBB19:
	.loc 1 465 0
	movq	-88(%rbp), %rax	# di, tmp158
	movq	80(%rax), %rax	# di_16(D)->dfs_to_bb, D.10171
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$3, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10171
	movq	(%rax), %rax	# *_21, tmp159
	movq	%rax, -24(%rbp)	# tmp159, bb
	.loc 1 468 0
	movq	-88(%rbp), %rax	# di, tmp160
	movq	(%rax), %rax	# di_16(D)->dfs_parent, D.10173
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_26, tmp161
	movl	%eax, -60(%rbp)	# tmp161, par
	.loc 1 469 0
	movl	-76(%rbp), %eax	# v, tmp162
	movl	%eax, -68(%rbp)	# tmp162, k
	.loc 1 470 0
	cmpl	$0, -92(%rbp)	#, reverse
	je	.L60	#,
	.loc 1 471 0
	movq	-24(%rbp), %rax	# bb, tmp163
	movq	40(%rax), %rax	# bb_22->succ, tmp164
	movq	%rax, -48(%rbp)	# tmp164, e
	.loc 1 479 0
	jmp	.L62	#
.L60:
	.loc 1 473 0
	movq	-24(%rbp), %rax	# bb, tmp165
	movq	32(%rax), %rax	# bb_22->pred, tmp166
	movq	%rax, -48(%rbp)	# tmp166, e
	.loc 1 479 0
	jmp	.L62	#
.L69:
.LBB20:
	.loc 1 484 0
	cmpl	$0, -92(%rbp)	#, reverse
	je	.L63	#,
	.loc 1 486 0
	movq	-48(%rbp), %rax	# e, tmp167
	movq	24(%rax), %rax	# e_8->dest, tmp168
	movq	%rax, -32(%rbp)	# tmp168, b
	.loc 1 487 0
	movq	-48(%rbp), %rax	# e, tmp169
	movq	8(%rax), %rax	# e_8->succ_next, tmp170
	movq	%rax, -40(%rbp)	# tmp170, e_next
	jmp	.L64	#
.L63:
	.loc 1 491 0
	movq	-48(%rbp), %rax	# e, tmp171
	movq	16(%rax), %rax	# e_8->src, tmp172
	movq	%rax, -32(%rbp)	# tmp172, b
	.loc 1 492 0
	movq	-48(%rbp), %rax	# e, tmp173
	movq	(%rax), %rax	# e_8->pred_next, tmp174
	movq	%rax, -40(%rbp)	# tmp174, e_next
.L64:
	.loc 1 494 0
	movq	-32(%rbp), %rax	# b, tmp175
	cmpq	-56(%rbp), %rax	# en_block, tmp175
	jne	.L65	#,
	.loc 1 495 0
	movq	-88(%rbp), %rax	# di, tmp176
	movq	72(%rax), %rax	# di_16(D)->dfs_order, D.10173
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.16
	movslq	%edx, %rdx	# n_basic_blocks.16, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_39, tmp177
	movl	%eax, -64(%rbp)	# tmp177, k1
	jmp	.L66	#
.L65:
	.loc 1 497 0
	movq	-88(%rbp), %rax	# di, tmp178
	movq	72(%rax), %rdx	# di_16(D)->dfs_order, D.10173
	movq	-32(%rbp), %rax	# b, tmp179
	movl	88(%rax), %eax	# b_12->index, D.10174
	cltq
	salq	$2, %rax	#, D.10172
	addq	%rdx, %rax	# D.10173, D.10173
	movl	(%rax), %eax	# *_45, tmp180
	movl	%eax, -64(%rbp)	# tmp180, k1
.L66:
	.loc 1 501 0
	movl	-64(%rbp), %eax	# k1, tmp181
	cmpl	-76(%rbp), %eax	# v, tmp181
	jbe	.L67	#,
	.loc 1 502 0
	movq	-88(%rbp), %rax	# di, tmp182
	movq	8(%rax), %rbx	# di_16(D)->key, D.10173
	movl	-64(%rbp), %edx	# k1, tmp183
	movq	-88(%rbp), %rax	# di, tmp184
	movl	%edx, %esi	# tmp183,
	movq	%rax, %rdi	# tmp184,
	call	eval	#
	movl	%eax, %eax	# D.10175, D.10172
	salq	$2, %rax	#, D.10172
	addq	%rbx, %rax	# D.10173, D.10173
	movl	(%rax), %eax	# *_51, tmp185
	movl	%eax, -64(%rbp)	# tmp185, k1
.L67:
	.loc 1 503 0
	movl	-64(%rbp), %eax	# k1, tmp186
	cmpl	-68(%rbp), %eax	# k, tmp186
	jae	.L68	#,
	.loc 1 504 0
	movl	-64(%rbp), %eax	# k1, tmp187
	movl	%eax, -68(%rbp)	# tmp187, k
.L68:
.LBE20:
	.loc 1 479 0
	movq	-40(%rbp), %rax	# e_next, tmp188
	movq	%rax, -48(%rbp)	# tmp188, e
.L62:
	.loc 1 479 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L69	#,
	.loc 1 507 0 is_stmt 1
	movq	-88(%rbp), %rax	# di, tmp189
	movq	8(%rax), %rax	# di_16(D)->key, D.10173
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movl	-68(%rbp), %eax	# k, tmp190
	movl	%eax, (%rdx)	# tmp190, *_58
	.loc 1 508 0
	movl	-76(%rbp), %edx	# v, tmp191
	movl	-60(%rbp), %ecx	# par, tmp192
	movq	-88(%rbp), %rax	# di, tmp193
	movl	%ecx, %esi	# tmp192,
	movq	%rax, %rdi	# tmp193,
	call	link_roots	#
	.loc 1 509 0
	movq	-88(%rbp), %rax	# di, tmp194
	movq	32(%rax), %rax	# di_16(D)->next_bucket, D.10173
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movq	-88(%rbp), %rax	# di, tmp195
	movq	24(%rax), %rax	# di_16(D)->bucket, D.10173
	movl	-68(%rbp), %ecx	# k, D.10172
	salq	$2, %rcx	#, D.10172
	addq	%rcx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_66, D.10175
	movl	%eax, (%rdx)	# D.10175, *_62
	.loc 1 510 0
	movq	-88(%rbp), %rax	# di, tmp196
	movq	24(%rax), %rax	# di_16(D)->bucket, D.10173
	movl	-68(%rbp), %edx	# k, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movl	-76(%rbp), %eax	# v, tmp197
	movl	%eax, (%rdx)	# tmp197, *_71
	.loc 1 513 0
	movq	-88(%rbp), %rax	# di, tmp198
	movq	24(%rax), %rax	# di_16(D)->bucket, D.10173
	movl	-60(%rbp), %edx	# par, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_75, tmp199
	movl	%eax, -72(%rbp)	# tmp199, w
	jmp	.L70	#
.L73:
	.loc 1 515 0
	movl	-72(%rbp), %edx	# w, tmp200
	movq	-88(%rbp), %rax	# di, tmp201
	movl	%edx, %esi	# tmp200,
	movq	%rax, %rdi	# tmp201,
	call	eval	#
	movl	%eax, -68(%rbp)	# tmp202, k
	.loc 1 516 0
	movq	-88(%rbp), %rax	# di, tmp203
	movq	8(%rax), %rax	# di_16(D)->key, D.10173
	movl	-68(%rbp), %edx	# k, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %edx	# *_81, D.10175
	movq	-88(%rbp), %rax	# di, tmp204
	movq	8(%rax), %rax	# di_16(D)->key, D.10173
	movl	-72(%rbp), %ecx	# w, D.10172
	salq	$2, %rcx	#, D.10172
	addq	%rcx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_86, D.10175
	cmpl	%eax, %edx	# D.10175, D.10175
	jae	.L71	#,
	.loc 1 517 0
	movq	-88(%rbp), %rax	# di, tmp205
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	movl	-72(%rbp), %edx	# w, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movl	-68(%rbp), %eax	# k, tmp206
	movl	%eax, (%rdx)	# tmp206, *_91
	jmp	.L72	#
.L71:
	.loc 1 519 0
	movq	-88(%rbp), %rax	# di, tmp207
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	movl	-72(%rbp), %edx	# w, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movl	-60(%rbp), %eax	# par, tmp208
	movl	%eax, (%rdx)	# tmp208, *_95
.L72:
	.loc 1 513 0
	movq	-88(%rbp), %rax	# di, tmp209
	movq	32(%rax), %rax	# di_16(D)->next_bucket, D.10173
	movl	-72(%rbp), %edx	# w, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_99, tmp210
	movl	%eax, -72(%rbp)	# tmp210, w
.L70:
	.loc 1 513 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, w
	jne	.L73	#,
	.loc 1 522 0 is_stmt 1
	movq	-88(%rbp), %rax	# di, tmp211
	movq	24(%rax), %rax	# di_16(D)->bucket, D.10173
	movl	-60(%rbp), %edx	# par, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	$0, (%rax)	#, *_104
	.loc 1 523 0
	subl	$1, -76(%rbp)	#, v
.L59:
.LBE19:
	.loc 1 463 0 discriminator 1
	cmpl	$1, -76(%rbp)	#, v
	ja	.L74	#,
	.loc 1 527 0
	movq	-88(%rbp), %rax	# di, tmp212
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	addq	$4, %rax	#, D.10173
	movl	$0, (%rax)	#, *_107
	.loc 1 528 0
	movl	$2, -76(%rbp)	#, v
	jmp	.L75	#
.L77:
	.loc 1 529 0
	movq	-88(%rbp), %rax	# di, tmp213
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rdx, %rax	# D.10172, D.10173
	movl	(%rax), %edx	# *_113, D.10175
	movq	-88(%rbp), %rax	# di, tmp214
	movq	8(%rax), %rax	# di_16(D)->key, D.10173
	movl	-76(%rbp), %ecx	# v, D.10172
	salq	$2, %rcx	#, D.10172
	addq	%rcx, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_118, D.10175
	cmpl	%eax, %edx	# D.10175, D.10175
	je	.L76	#,
	.loc 1 530 0
	movq	-88(%rbp), %rax	# di, tmp215
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	movl	-76(%rbp), %edx	# v, D.10172
	salq	$2, %rdx	#, D.10172
	addq	%rax, %rdx	# D.10173, D.10173
	movq	-88(%rbp), %rax	# di, tmp216
	movq	40(%rax), %rcx	# di_16(D)->dom, D.10173
	movq	-88(%rbp), %rax	# di, tmp217
	movq	40(%rax), %rax	# di_16(D)->dom, D.10173
	movl	-76(%rbp), %esi	# v, D.10172
	salq	$2, %rsi	#, D.10172
	addq	%rsi, %rax	# D.10172, D.10173
	movl	(%rax), %eax	# *_128, D.10175
	movl	%eax, %eax	# D.10175, D.10172
	salq	$2, %rax	#, D.10172
	addq	%rcx, %rax	# D.10173, D.10173
	movl	(%rax), %eax	# *_132, D.10175
	movl	%eax, (%rdx)	# D.10175, *_123
.L76:
	.loc 1 528 0
	addl	$1, -76(%rbp)	#, v
.L75:
	.loc 1 528 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# di, tmp218
	movl	92(%rax), %eax	# di_16(D)->nodes, D.10175
	cmpl	-76(%rbp), %eax	# v, D.10175
	jae	.L77	#,
	.loc 1 531 0 is_stmt 1
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	calc_idoms, .-calc_idoms
	.type	idoms_to_doms, @function
idoms_to_doms:
.LFB10:
	.loc 1 540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# di, di
	movq	%rsi, -32(%rbp)	# dominators, dominators
	.loc 1 543 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.17
	movl	%eax, %edx	# n_basic_blocks.17, n_basic_blocks.18
	movq	-32(%rbp), %rax	# dominators, tmp123
	movl	%edx, %esi	# n_basic_blocks.18,
	movq	%rax, %rdi	# tmp123,
	call	sbitmap_vector_zero	#
	.loc 1 546 0
	movq	-24(%rbp), %rax	# di, tmp124
	movq	72(%rax), %rax	# di_5(D)->dfs_order, D.10176
	movl	n_basic_blocks(%rip), %edx	# n_basic_blocks, n_basic_blocks.19
	movslq	%edx, %rdx	# n_basic_blocks.19, D.10177
	salq	$2, %rdx	#, D.10177
	addq	%rdx, %rax	# D.10177, D.10176
	movl	(%rax), %eax	# *_10, tmp125
	movl	%eax, -12(%rbp)	# tmp125, e_index
	.loc 1 548 0
	movl	$1, -16(%rbp)	#, i
	jmp	.L79	#
.L84:
	.loc 1 550 0
	movl	-16(%rbp), %eax	# i, tmp126
	cmpl	-12(%rbp), %eax	# e_index, tmp126
	jne	.L80	#,
	.loc 1 551 0
	jmp	.L81	#
.L80:
	.loc 1 552 0
	movq	-24(%rbp), %rax	# di, tmp127
	movq	80(%rax), %rax	# di_5(D)->dfs_to_bb, D.10179
	movl	-16(%rbp), %edx	# i, D.10177
	salq	$3, %rdx	#, D.10177
	addq	%rdx, %rax	# D.10177, D.10179
	movq	(%rax), %rax	# *_17, D.10180
	movl	88(%rax), %eax	# _18->index, tmp128
	movl	%eax, -8(%rbp)	# tmp128, bb
	.loc 1 554 0
	movq	-24(%rbp), %rax	# di, tmp129
	movq	40(%rax), %rax	# di_5(D)->dom, D.10176
	movl	-16(%rbp), %edx	# i, D.10177
	salq	$2, %rdx	#, D.10177
	addq	%rdx, %rax	# D.10177, D.10176
	movl	(%rax), %eax	# *_23, D.10178
	testl	%eax, %eax	# D.10178
	je	.L82	#,
	.loc 1 554 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# di, tmp130
	movq	40(%rax), %rax	# di_5(D)->dom, D.10176
	movl	-16(%rbp), %edx	# i, D.10177
	salq	$2, %rdx	#, D.10177
	addq	%rdx, %rax	# D.10177, D.10176
	movl	(%rax), %eax	# *_28, D.10178
	cmpl	-12(%rbp), %eax	# e_index, D.10178
	je	.L82	#,
	.loc 1 556 0 is_stmt 1
	movq	-24(%rbp), %rax	# di, tmp131
	movq	80(%rax), %rdx	# di_5(D)->dfs_to_bb, D.10179
	movq	-24(%rbp), %rax	# di, tmp132
	movq	40(%rax), %rax	# di_5(D)->dom, D.10176
	movl	-16(%rbp), %ecx	# i, D.10177
	salq	$2, %rcx	#, D.10177
	addq	%rcx, %rax	# D.10177, D.10176
	movl	(%rax), %eax	# *_34, D.10178
	movl	%eax, %eax	# D.10178, D.10177
	salq	$3, %rax	#, D.10177
	addq	%rdx, %rax	# D.10179, D.10179
	movq	(%rax), %rax	# *_38, D.10180
	movl	88(%rax), %eax	# _39->index, tmp133
	movl	%eax, -4(%rbp)	# tmp133, bb_idom
	.loc 1 557 0
	movl	-4(%rbp), %eax	# bb_idom, tmp134
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10177
	movq	-32(%rbp), %rax	# dominators, tmp135
	addq	%rdx, %rax	# D.10177, D.10181
	movq	(%rax), %rdx	# *_43, D.10182
	movl	-8(%rbp), %eax	# bb, tmp136
	cltq
	leaq	0(,%rax,8), %rcx	#, D.10177
	movq	-32(%rbp), %rax	# dominators, tmp137
	addq	%rcx, %rax	# D.10177, D.10181
	movq	(%rax), %rax	# *_47, D.10182
	movq	%rdx, %rsi	# D.10182,
	movq	%rax, %rdi	# D.10182,
	call	sbitmap_copy	#
	jmp	.L83	#
.L82:
	.loc 1 568 0
	movq	-24(%rbp), %rax	# di, tmp138
	movq	40(%rax), %rax	# di_5(D)->dom, D.10176
	movl	-16(%rbp), %edx	# i, D.10177
	salq	$2, %rdx	#, D.10177
	addq	%rdx, %rax	# D.10177, D.10176
	movl	(%rax), %eax	# *_52, D.10178
	testl	%eax, %eax	# D.10178
	jne	.L83	#,
	.loc 1 570 0
	movl	-8(%rbp), %eax	# bb, tmp139
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10177
	movq	-32(%rbp), %rax	# dominators, tmp140
	addq	%rdx, %rax	# D.10177, D.10181
	movq	(%rax), %rax	# *_56, D.10182
	movq	%rax, %rdi	# D.10182,
	call	sbitmap_ones	#
.L83:
	.loc 1 573 0
	movl	-8(%rbp), %eax	# bb, tmp141
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10177
	movq	-32(%rbp), %rax	# dominators, tmp142
	addq	%rdx, %rax	# D.10177, D.10181
	movq	(%rax), %rdx	# *_60, D.10182
	movl	-8(%rbp), %eax	# bb, bb.20
	shrl	$6, %eax	#, D.10178
	movl	-8(%rbp), %ecx	# bb, tmp143
	movslq	%ecx, %rcx	# tmp143, D.10177
	leaq	0(,%rcx,8), %rsi	#, D.10177
	movq	-32(%rbp), %rcx	# dominators, tmp144
	addq	%rsi, %rcx	# D.10177, D.10181
	movq	(%rcx), %rcx	# *_66, D.10182
	movl	%eax, %esi	# D.10178, tmp145
	addq	$2, %rsi	#, tmp146
	movq	(%rcx,%rsi,8), %rsi	# _67->elms, D.10177
	movl	-8(%rbp), %ecx	# bb, tmp147
	andl	$63, %ecx	#, D.10183
	movl	$1, %edi	#, tmp148
	salq	%cl, %rdi	# D.10183, D.10177
	movq	%rdi, %rcx	# D.10177, D.10177
	orq	%rsi, %rcx	# D.10177, D.10177
	movl	%eax, %eax	# D.10178, tmp149
	addq	$2, %rax	#, tmp150
	movq	%rcx, (%rdx,%rax,8)	# D.10177, _61->elms
.L81:
	.loc 1 548 0
	addl	$1, -16(%rbp)	#, i
.L79:
	.loc 1 548 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# di, tmp151
	movl	92(%rax), %eax	# di_5(D)->nodes, D.10178
	cmpl	-16(%rbp), %eax	# i, D.10178
	jae	.L84	#,
	.loc 1 575 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	idoms_to_doms, .-idoms_to_doms
	.globl	calculate_dominance_info
	.type	calculate_dominance_info, @function
calculate_dominance_info:
.LFB11:
	.loc 1 594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# idom, idom
	movq	%rsi, -128(%rbp)	# doms, doms
	movl	%edx, -132(%rbp)	# reverse, reverse
	.loc 1 597 0
	cmpq	$0, -128(%rbp)	#, doms
	jne	.L86	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, idom
	je	.L85	#,
.L86:
	.loc 1 599 0 is_stmt 1
	leaq	-96(%rbp), %rax	#, tmp80
	movq	%rax, %rdi	# tmp80,
	call	init_dom_info	#
	.loc 1 600 0
	movl	-132(%rbp), %edx	# reverse, tmp81
	leaq	-96(%rbp), %rax	#, tmp82
	movl	%edx, %esi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	calc_dfs_tree	#
	.loc 1 601 0
	movl	-132(%rbp), %edx	# reverse, tmp83
	leaq	-96(%rbp), %rax	#, tmp84
	movl	%edx, %esi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	calc_idoms	#
	.loc 1 603 0
	cmpq	$0, -120(%rbp)	#, idom
	je	.L88	#,
.LBB21:
	.loc 1 606 0
	movl	$0, -112(%rbp)	#, i
	jmp	.L89	#
.L91:
.LBB22:
	.loc 1 608 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.21
	movl	-112(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, tmp85
	addq	$4, %rdx	#, tmp87
	movq	(%rax,%rdx,8), %rax	# basic_block_info.21_7->data.bb, tmp88
	movq	%rax, -104(%rbp)	# tmp88, b
	.loc 1 609 0
	movq	-56(%rbp), %rdx	# di.dom, D.10184
	movq	-24(%rbp), %rcx	# di.dfs_order, D.10184
	movq	-104(%rbp), %rax	# b, tmp89
	movl	88(%rax), %eax	# b_8->index, D.10185
	cltq
	salq	$2, %rax	#, D.10186
	addq	%rcx, %rax	# D.10184, D.10184
	movl	(%rax), %eax	# *_14, D.10187
	movl	%eax, %eax	# D.10187, D.10186
	salq	$2, %rax	#, D.10186
	addq	%rdx, %rax	# D.10184, D.10184
	movl	(%rax), %eax	# *_18, tmp90
	movl	%eax, -108(%rbp)	# tmp90, d
	.loc 1 614 0
	cmpl	$1, -108(%rbp)	#, d
	jbe	.L90	#,
	.loc 1 615 0
	movl	-112(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10186
	movq	-120(%rbp), %rax	# idom, tmp92
	addq	%rax, %rdx	# tmp92, D.10188
	movq	-16(%rbp), %rax	# di.dfs_to_bb, D.10189
	movl	-108(%rbp), %ecx	# d, D.10186
	salq	$3, %rcx	#, D.10186
	addq	%rcx, %rax	# D.10186, D.10189
	movq	(%rax), %rax	# *_26, D.10190
	movl	88(%rax), %eax	# _27->index, D.10185
	movl	%eax, (%rdx)	# D.10185, *_22
.L90:
.LBE22:
	.loc 1 606 0
	addl	$1, -112(%rbp)	#, i
.L89:
	.loc 1 606 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.22
	cmpl	%eax, -112(%rbp)	# n_basic_blocks.22, i
	jl	.L91	#,
.L88:
.LBE21:
	.loc 1 618 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, doms
	je	.L92	#,
	.loc 1 619 0
	movq	-128(%rbp), %rdx	# doms, tmp93
	leaq	-96(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	idoms_to_doms	#
.L92:
	.loc 1 621 0
	leaq	-96(%rbp), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free_dom_info	#
.L85:
	.loc 1 622 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	calculate_dominance_info, .-calculate_dominance_info
	.section	.rodata
	.align 16
	.type	__FUNCTION__.9276, @object
	.size	__FUNCTION__.9276, 21
__FUNCTION__.9276:
	.string	"calc_dfs_tree_nonrec"
	.type	__FUNCTION__.9292, @object
	.size	__FUNCTION__.9292, 14
__FUNCTION__.9292:
	.string	"calc_dfs_tree"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "bitmap.h"
	.file 6 "basic-block.h"
	.file 7 "sbitmap.h"
	.file 8 "varray.h"
	.file 9 "machmode.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11d8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF217
	.byte	0x1
	.long	.LASF218
	.long	.LASF219
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
	.long	0x5d3
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
	.long	0x5e3
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
	.long	.LASF220
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
	.long	.LASF175
	.byte	0x4
	.byte	0x9
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
	.uleb128 0x12
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x3b7
	.uleb128 0x5
	.long	.LASF88
	.byte	0x2
	.byte	0x47
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF89
	.byte	0x2
	.byte	0x49
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0x2
	.byte	0x4a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF91
	.byte	0x2
	.byte	0x4c
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF92
	.byte	0x2
	.byte	0x4e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF93
	.byte	0x2
	.byte	0x50
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF94
	.byte	0x2
	.byte	0x53
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF95
	.byte	0x2
	.byte	0x55
	.long	0x147
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x2
	.byte	0x56
	.long	0x336
	.uleb128 0x12
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x407
	.uleb128 0x8
	.long	.LASF97
	.byte	0x2
	.byte	0x5e
	.long	0x150
	.byte	0
	.uleb128 0x8
	.long	.LASF98
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF99
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF100
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF101
	.byte	0x2
	.byte	0x62
	.long	0x147
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF102
	.byte	0x2
	.byte	0x63
	.long	0x3c2
	.uleb128 0x13
	.long	.LASF145
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x4ad
	.uleb128 0x14
	.long	.LASF103
	.byte	0x2
	.byte	0x69
	.long	0x150
	.uleb128 0x14
	.long	.LASF104
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x14
	.long	.LASF105
	.byte	0x2
	.byte	0x6b
	.long	0x147
	.uleb128 0x14
	.long	.LASF106
	.byte	0x2
	.byte	0x6c
	.long	0x1a2
	.uleb128 0x15
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x14
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x14
	.long	.LASF107
	.byte	0x2
	.byte	0x6f
	.long	0x1c1
	.uleb128 0x14
	.long	.LASF108
	.byte	0x2
	.byte	0x70
	.long	0x3b7
	.uleb128 0x14
	.long	.LASF109
	.byte	0x2
	.byte	0x71
	.long	0x4b2
	.uleb128 0x14
	.long	.LASF110
	.byte	0x2
	.byte	0x72
	.long	0x4e9
	.uleb128 0x14
	.long	.LASF111
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x15
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x5bc
	.uleb128 0x14
	.long	.LASF112
	.byte	0x2
	.byte	0x75
	.long	0x5c2
	.byte	0
	.uleb128 0x16
	.long	.LASF153
	.uleb128 0x3
	.byte	0x8
	.long	0x4ad
	.uleb128 0x4
	.long	.LASF113
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.long	0x4e9
	.uleb128 0x8
	.long	.LASF114
	.byte	0x5
	.byte	0x35
	.long	0x651
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x5
	.byte	0x36
	.long	0x651
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x5
	.byte	0x37
	.long	0x147
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4b8
	.uleb128 0x4
	.long	.LASF117
	.byte	0x70
	.byte	0x6
	.byte	0xae
	.long	0x5bc
	.uleb128 0x8
	.long	.LASF118
	.byte	0x6
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0x6
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF119
	.byte	0x6
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF120
	.byte	0x6
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF121
	.byte	0x6
	.byte	0xb7
	.long	0x9f5
	.byte	0x20
	.uleb128 0x8
	.long	.LASF122
	.byte	0x6
	.byte	0xb7
	.long	0x9f5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF123
	.byte	0x6
	.byte	0xbc
	.long	0x960
	.byte	0x30
	.uleb128 0x8
	.long	.LASF124
	.byte	0x6
	.byte	0xc0
	.long	0x960
	.byte	0x38
	.uleb128 0x8
	.long	.LASF125
	.byte	0x6
	.byte	0xc6
	.long	0x960
	.byte	0x40
	.uleb128 0x8
	.long	.LASF126
	.byte	0x6
	.byte	0xc8
	.long	0x960
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0xcb
	.long	0x14e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF127
	.byte	0x6
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF128
	.byte	0x6
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0xd4
	.long	0x96b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF130
	.byte	0x6
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF131
	.byte	0x6
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4ef
	.uleb128 0x3
	.byte	0x8
	.long	0x407
	.uleb128 0x7
	.long	.LASF132
	.byte	0x2
	.byte	0x76
	.long	0x412
	.uleb128 0xd
	.long	0x5c8
	.long	0x5e3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2d
	.long	0x5f3
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF133
	.byte	0x28
	.byte	0x5
	.byte	0x2b
	.long	0x630
	.uleb128 0x8
	.long	.LASF134
	.byte	0x5
	.byte	0x2d
	.long	0x630
	.byte	0
	.uleb128 0x8
	.long	.LASF135
	.byte	0x5
	.byte	0x2e
	.long	0x630
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x5
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF136
	.byte	0x5
	.byte	0x30
	.long	0x636
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x5f3
	.uleb128 0xd
	.long	0x162
	.long	0x646
	.uleb128 0xe
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF137
	.byte	0x5
	.byte	0x31
	.long	0x5f3
	.uleb128 0x3
	.byte	0x8
	.long	0x646
	.uleb128 0x7
	.long	.LASF138
	.byte	0x5
	.byte	0x39
	.long	0x4e9
	.uleb128 0x4
	.long	.LASF139
	.byte	0x18
	.byte	0x7
	.byte	0x1f
	.long	0x69f
	.uleb128 0x8
	.long	.LASF140
	.byte	0x7
	.byte	0x21
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x7
	.byte	0x22
	.long	0x147
	.byte	0x4
	.uleb128 0x8
	.long	.LASF141
	.byte	0x7
	.byte	0x23
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF142
	.byte	0x7
	.byte	0x24
	.long	0x69f
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x162
	.long	0x6af
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF143
	.byte	0x7
	.byte	0x25
	.long	0x6ba
	.uleb128 0x3
	.byte	0x8
	.long	0x662
	.uleb128 0x4
	.long	.LASF144
	.byte	0x10
	.byte	0x8
	.byte	0x24
	.long	0x6e5
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
	.uleb128 0x13
	.long	.LASF146
	.byte	0x10
	.byte	0x8
	.byte	0x3a
	.long	0x7ca
	.uleb128 0x15
	.string	"c"
	.byte	0x8
	.byte	0x3b
	.long	0x192
	.uleb128 0x15
	.string	"uc"
	.byte	0x8
	.byte	0x3c
	.long	0x7ca
	.uleb128 0x15
	.string	"s"
	.byte	0x8
	.byte	0x3d
	.long	0x7da
	.uleb128 0x15
	.string	"us"
	.byte	0x8
	.byte	0x3e
	.long	0x7ea
	.uleb128 0x15
	.string	"i"
	.byte	0x8
	.byte	0x3f
	.long	0x7fa
	.uleb128 0x15
	.string	"u"
	.byte	0x8
	.byte	0x40
	.long	0x80a
	.uleb128 0x15
	.string	"l"
	.byte	0x8
	.byte	0x41
	.long	0x81a
	.uleb128 0x15
	.string	"ul"
	.byte	0x8
	.byte	0x42
	.long	0x69f
	.uleb128 0x14
	.long	.LASF147
	.byte	0x8
	.byte	0x43
	.long	0x81a
	.uleb128 0x14
	.long	.LASF148
	.byte	0x8
	.byte	0x44
	.long	0x69f
	.uleb128 0x14
	.long	.LASF149
	.byte	0x8
	.byte	0x45
	.long	0x82a
	.uleb128 0x14
	.long	.LASF150
	.byte	0x8
	.byte	0x46
	.long	0x83a
	.uleb128 0x15
	.string	"rtx"
	.byte	0x8
	.byte	0x47
	.long	0x84a
	.uleb128 0x14
	.long	.LASF10
	.byte	0x8
	.byte	0x48
	.long	0x85a
	.uleb128 0x14
	.long	.LASF15
	.byte	0x8
	.byte	0x49
	.long	0x86a
	.uleb128 0x14
	.long	.LASF138
	.byte	0x8
	.byte	0x4a
	.long	0x87a
	.uleb128 0x14
	.long	.LASF151
	.byte	0x8
	.byte	0x4b
	.long	0x88a
	.uleb128 0x15
	.string	"reg"
	.byte	0x8
	.byte	0x4c
	.long	0x8a5
	.uleb128 0x14
	.long	.LASF152
	.byte	0x8
	.byte	0x4d
	.long	0x8c0
	.uleb128 0x15
	.string	"bb"
	.byte	0x8
	.byte	0x4e
	.long	0x8d0
	.uleb128 0x15
	.string	"te"
	.byte	0x8
	.byte	0x4f
	.long	0x8e0
	.byte	0
	.uleb128 0xd
	.long	0x169
	.long	0x7da
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x17e
	.long	0x7ea
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x170
	.long	0x7fa
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x139
	.long	0x80a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x147
	.long	0x81a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x150
	.long	0x82a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x14e
	.long	0x83a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x185
	.long	0x84a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x38
	.long	0x85a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xf8
	.long	0x86a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x12e
	.long	0x87a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x4e9
	.long	0x88a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x89a
	.long	0x89a
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8a0
	.uleb128 0x16
	.long	.LASF154
	.uleb128 0xd
	.long	0x8b5
	.long	0x8b5
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8bb
	.uleb128 0x16
	.long	.LASF155
	.uleb128 0xd
	.long	0x6c0
	.long	0x8d0
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x5bc
	.long	0x8e0
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x8f0
	.long	0x8f0
	.uleb128 0xe
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x8f6
	.uleb128 0x16
	.long	.LASF156
	.uleb128 0x7
	.long	.LASF157
	.byte	0x8
	.byte	0x50
	.long	0x6e5
	.uleb128 0x4
	.long	.LASF158
	.byte	0x30
	.byte	0x8
	.byte	0x53
	.long	0x94f
	.uleb128 0x8
	.long	.LASF159
	.byte	0x8
	.byte	0x54
	.long	0x157
	.byte	0
	.uleb128 0x8
	.long	.LASF160
	.byte	0x8
	.byte	0x55
	.long	0x157
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x8
	.byte	0x57
	.long	0x157
	.byte	0x10
	.uleb128 0x8
	.long	.LASF162
	.byte	0x8
	.byte	0x58
	.long	0x1a2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF163
	.byte	0x8
	.byte	0x59
	.long	0x8fb
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF164
	.byte	0x8
	.byte	0x5a
	.long	0x95a
	.uleb128 0x3
	.byte	0x8
	.long	0x906
	.uleb128 0x7
	.long	.LASF165
	.byte	0x6
	.byte	0x21
	.long	0x657
	.uleb128 0x7
	.long	.LASF166
	.byte	0x6
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF167
	.byte	0x40
	.byte	0x6
	.byte	0x77
	.long	0x9ef
	.uleb128 0x8
	.long	.LASF168
	.byte	0x6
	.byte	0x79
	.long	0x9ef
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x6
	.byte	0x79
	.long	0x9ef
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0x6
	.byte	0x7c
	.long	0x5bc
	.byte	0x10
	.uleb128 0x8
	.long	.LASF170
	.byte	0x6
	.byte	0x7c
	.long	0x5bc
	.byte	0x18
	.uleb128 0x8
	.long	.LASF171
	.byte	0x6
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0x6
	.byte	0x82
	.long	0x14e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF131
	.byte	0x6
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF172
	.byte	0x6
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0x86
	.long	0x96b
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x976
	.uleb128 0x7
	.long	.LASF173
	.byte	0x6
	.byte	0x88
	.long	0x9ef
	.uleb128 0x7
	.long	.LASF174
	.byte	0x6
	.byte	0xdb
	.long	0x5bc
	.uleb128 0x3
	.byte	0x8
	.long	0x9f5
	.uleb128 0x3
	.byte	0x8
	.long	0x6af
	.uleb128 0x17
	.long	.LASF176
	.byte	0x4
	.byte	0x6
	.value	0x2c1
	.long	0xa31
	.uleb128 0x11
	.long	.LASF177
	.sleb128 0
	.uleb128 0x11
	.long	.LASF178
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"TBB"
	.byte	0x1
	.byte	0x33
	.long	0x147
	.uleb128 0x4
	.long	.LASF179
	.byte	0x60
	.byte	0x1
	.byte	0x3a
	.long	0xae5
	.uleb128 0x8
	.long	.LASF180
	.byte	0x1
	.byte	0x3d
	.long	0xae5
	.byte	0
	.uleb128 0x6
	.string	"key"
	.byte	0x1
	.byte	0x41
	.long	0xae5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF181
	.byte	0x1
	.byte	0x44
	.long	0xae5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF182
	.byte	0x1
	.byte	0x46
	.long	0xae5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF183
	.byte	0x1
	.byte	0x48
	.long	0xae5
	.byte	0x20
	.uleb128 0x6
	.string	"dom"
	.byte	0x1
	.byte	0x4b
	.long	0xae5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF184
	.byte	0x1
	.byte	0x51
	.long	0xae5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF185
	.byte	0x1
	.byte	0x53
	.long	0xaeb
	.byte	0x38
	.uleb128 0x8
	.long	.LASF186
	.byte	0x1
	.byte	0x56
	.long	0xae5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF187
	.byte	0x1
	.byte	0x5b
	.long	0xae5
	.byte	0x48
	.uleb128 0x8
	.long	.LASF188
	.byte	0x1
	.byte	0x60
	.long	0xaf1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF189
	.byte	0x1
	.byte	0x63
	.long	0x147
	.byte	0x58
	.uleb128 0x8
	.long	.LASF190
	.byte	0x1
	.byte	0x65
	.long	0x147
	.byte	0x5c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa31
	.uleb128 0x3
	.byte	0x8
	.long	0x147
	.uleb128 0x3
	.byte	0x8
	.long	0xa00
	.uleb128 0x18
	.long	.LASF191
	.byte	0x1
	.byte	0x8a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xca3
	.uleb128 0x19
	.string	"di"
	.byte	0x1
	.byte	0x8b
	.long	0xca3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"num"
	.byte	0x1
	.byte	0x8f
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xb52
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x90
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xb74
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x91
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x1b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xb96
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x92
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x1b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xbb8
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x93
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xbda
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x95
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xbfc
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x96
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xc1e
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x98
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xc40
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x99
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xc62
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xc84
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x9c
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.long	0x147
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xa3c
	.uleb128 0x18
	.long	.LASF192
	.byte	0x1
	.byte	0xa8
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd4
	.uleb128 0x19
	.string	"di"
	.byte	0x1
	.byte	0xa9
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF193
	.byte	0x1
	.byte	0xbf
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc5
	.uleb128 0x19
	.string	"di"
	.byte	0x1
	.byte	0xc0
	.long	0xca3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.string	"bb"
	.byte	0x1
	.byte	0xc1
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF194
	.byte	0x1
	.byte	0xc2
	.long	0xa17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.string	"e"
	.byte	0x1
	.byte	0xc6
	.long	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF195
	.byte	0x1
	.byte	0xc7
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF196
	.byte	0x1
	.byte	0xc7
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF197
	.byte	0x1
	.byte	0xc8
	.long	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"sp"
	.byte	0x1
	.byte	0xc9
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF198
	.byte	0x1
	.byte	0xcc
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF199
	.byte	0x1
	.byte	0xce
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF203
	.long	0xdd5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9276
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.string	"bn"
	.byte	0x1
	.byte	0xe4
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x1e
	.long	.LASF200
	.byte	0x1
	.byte	0xea
	.long	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0xdd5
	.uleb128 0xe
	.long	0x140
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.long	0xdc5
	.uleb128 0x21
	.long	.LASF201
	.byte	0x1
	.value	0x135
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xe76
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x136
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF194
	.byte	0x1
	.value	0x137
	.long	0xa17
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x13a
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF203
	.long	0xe86
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.9292
	.uleb128 0x1c
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x147
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x14a
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x18b
	.long	0xe86
	.uleb128 0xe
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.long	0xe76
	.uleb128 0x21
	.long	.LASF204
	.byte	0x1
	.value	0x161
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xed4
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x162
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.value	0x163
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x168
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF221
	.byte	0x1
	.value	0x177
	.long	0xa31
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xf21
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x178
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.value	0x179
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"rep"
	.byte	0x1
	.value	0x17d
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF206
	.byte	0x1
	.value	0x196
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xf96
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x197
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.value	0x198
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.value	0x198
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x19a
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.value	0x1b0
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF207
	.byte	0x1
	.value	0x1c2
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1088
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x1c3
	.long	0xca3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x23
	.long	.LASF194
	.byte	0x1
	.value	0x1c4
	.long	0xa17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.value	0x1c6
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.string	"w"
	.byte	0x1
	.value	0x1c6
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x1c6
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x25
	.string	"par"
	.byte	0x1
	.value	0x1c6
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.long	.LASF198
	.byte	0x1
	.value	0x1c7
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x1d1
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x1d2
	.long	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF200
	.byte	0x1
	.value	0x1d2
	.long	0x9f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x25
	.string	"k1"
	.byte	0x1
	.value	0x1e1
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x1e2
	.long	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF208
	.byte	0x1
	.value	0x219
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fd
	.uleb128 0x22
	.string	"di"
	.byte	0x1
	.value	0x21a
	.long	0xca3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF209
	.byte	0x1
	.value	0x21b
	.long	0xa11
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x21d
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF210
	.byte	0x1
	.value	0x21d
	.long	0xa31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"bb"
	.byte	0x1
	.value	0x21e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF211
	.byte	0x1
	.value	0x21e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF222
	.byte	0x1
	.value	0x24e
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a9
	.uleb128 0x23
	.long	.LASF212
	.byte	0x1
	.value	0x24f
	.long	0x1bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.long	.LASF213
	.byte	0x1
	.value	0x250
	.long	0xa11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.long	.LASF194
	.byte	0x1
	.value	0x251
	.long	0xa17
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x25
	.string	"di"
	.byte	0x1
	.value	0x253
	.long	0xa3c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x25d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x25
	.string	"b"
	.byte	0x1
	.value	0x260
	.long	0xa00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"d"
	.byte	0x1
	.value	0x261
	.long	0xa31
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF214
	.byte	0x6
	.byte	0xe4
	.long	0x139
	.uleb128 0x29
	.long	.LASF215
	.byte	0x6
	.byte	0xec
	.long	0x94f
	.uleb128 0xd
	.long	0x4ef
	.long	0x11cf
	.uleb128 0xe
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.long	.LASF216
	.byte	0x6
	.value	0x116
	.long	0x11bf
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x27
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
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF154:
	.string	"sched_info_tag"
.LASF6:
	.string	"in_struct"
.LASF102:
	.string	"mem_attrs"
.LASF45:
	.string	"XFmode"
.LASF86:
	.string	"CCFPUmode"
.LASF66:
	.string	"V4DImode"
.LASF9:
	.string	"frame_related"
.LASF148:
	.string	"uhint"
.LASF203:
	.string	"__FUNCTION__"
.LASF78:
	.string	"V16SFmode"
.LASF156:
	.string	"elt_list"
.LASF190:
	.string	"nodes"
.LASF150:
	.string	"cptr"
.LASF67:
	.string	"V8QImode"
.LASF51:
	.string	"XCmode"
.LASF158:
	.string	"varray_head_tag"
.LASF165:
	.string	"regset"
.LASF155:
	.string	"reg_info_def"
.LASF17:
	.string	"unsigned int"
.LASF75:
	.string	"V4DFmode"
.LASF134:
	.string	"next"
.LASF65:
	.string	"V4SImode"
.LASF164:
	.string	"varray_type"
.LASF183:
	.string	"next_bucket"
.LASF221:
	.string	"eval"
.LASF121:
	.string	"pred"
.LASF74:
	.string	"V4SFmode"
.LASF1:
	.string	"mode"
.LASF135:
	.string	"prev"
.LASF166:
	.string	"gcov_type"
.LASF180:
	.string	"dfs_parent"
.LASF96:
	.string	"addr_diff_vec_flags"
.LASF188:
	.string	"dfs_to_bb"
.LASF186:
	.string	"set_child"
.LASF56:
	.string	"CDImode"
.LASF212:
	.string	"idom"
.LASF219:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF85:
	.string	"CCFPmode"
.LASF149:
	.string	"generic"
.LASF215:
	.string	"basic_block_info"
.LASF220:
	.string	"tree_node"
.LASF82:
	.string	"CCGOCmode"
.LASF94:
	.string	"offset_unsigned"
.LASF129:
	.string	"count"
.LASF127:
	.string	"index"
.LASF209:
	.string	"dominators"
.LASF208:
	.string	"idoms_to_doms"
.LASF26:
	.string	"long long unsigned int"
.LASF55:
	.string	"CSImode"
.LASF167:
	.string	"edge_def"
.LASF181:
	.string	"path_min"
.LASF87:
	.string	"MAX_MACHINE_MODE"
.LASF89:
	.string	"base_after_vec"
.LASF88:
	.string	"min_align"
.LASF178:
	.string	"CDI_POST_DOMINATORS"
.LASF93:
	.string	"max_after_base"
.LASF31:
	.string	"HImode"
.LASF218:
	.string	"dominance.c"
.LASF189:
	.string	"dfsnum"
.LASF70:
	.string	"V8DImode"
.LASF159:
	.string	"num_elements"
.LASF91:
	.string	"max_after_vec"
.LASF7:
	.string	"used"
.LASF36:
	.string	"PQImode"
.LASF177:
	.string	"CDI_DOMINATORS"
.LASF182:
	.string	"bucket"
.LASF200:
	.string	"e_next"
.LASF19:
	.string	"size_t"
.LASF199:
	.string	"ex_block"
.LASF41:
	.string	"HFmode"
.LASF99:
	.string	"offset"
.LASF15:
	.string	"tree"
.LASF77:
	.string	"V8DFmode"
.LASF69:
	.string	"V8SImode"
.LASF71:
	.string	"V16QImode"
.LASF172:
	.string	"probability"
.LASF3:
	.string	"call"
.LASF60:
	.string	"V2HImode"
.LASF161:
	.string	"element_size"
.LASF141:
	.string	"bytes"
.LASF131:
	.string	"flags"
.LASF173:
	.string	"edge"
.LASF108:
	.string	"rt_addr_diff_vec_flags"
.LASF13:
	.string	"num_elem"
.LASF0:
	.string	"code"
.LASF48:
	.string	"HCmode"
.LASF106:
	.string	"rtstr"
.LASF76:
	.string	"V8SFmode"
.LASF192:
	.string	"free_dom_info"
.LASF2:
	.string	"jump"
.LASF214:
	.string	"n_basic_blocks"
.LASF14:
	.string	"elem"
.LASF25:
	.string	"char"
.LASF8:
	.string	"integrated"
.LASF107:
	.string	"rttype"
.LASF39:
	.string	"PDImode"
.LASF104:
	.string	"rtint"
.LASF206:
	.string	"link_roots"
.LASF163:
	.string	"data"
.LASF112:
	.string	"rtmem"
.LASF83:
	.string	"CCNOmode"
.LASF174:
	.string	"basic_block"
.LASF191:
	.string	"init_dom_info"
.LASF116:
	.string	"indx"
.LASF23:
	.string	"signed char"
.LASF133:
	.string	"bitmap_element_def"
.LASF38:
	.string	"PSImode"
.LASF136:
	.string	"bits"
.LASF64:
	.string	"V4HImode"
.LASF194:
	.string	"reverse"
.LASF27:
	.string	"long long int"
.LASF160:
	.string	"elements_used"
.LASF128:
	.string	"loop_depth"
.LASF126:
	.string	"global_live_at_end"
.LASF34:
	.string	"TImode"
.LASF105:
	.string	"rtuint"
.LASF12:
	.string	"rtvec_def"
.LASF95:
	.string	"scale"
.LASF54:
	.string	"CHImode"
.LASF147:
	.string	"hint"
.LASF213:
	.string	"doms"
.LASF29:
	.string	"BImode"
.LASF100:
	.string	"size"
.LASF10:
	.string	"rtvec"
.LASF46:
	.string	"TFmode"
.LASF97:
	.string	"alias"
.LASF20:
	.string	"long unsigned int"
.LASF157:
	.string	"varray_data"
.LASF118:
	.string	"head"
.LASF11:
	.string	"rtx_def"
.LASF210:
	.string	"e_index"
.LASF42:
	.string	"TQFmode"
.LASF179:
	.string	"dom_info"
.LASF52:
	.string	"TCmode"
.LASF22:
	.string	"short unsigned int"
.LASF222:
	.string	"calculate_dominance_info"
.LASF125:
	.string	"global_live_at_start"
.LASF68:
	.string	"V8HImode"
.LASF84:
	.string	"CCZmode"
.LASF217:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF113:
	.string	"bitmap_head_def"
.LASF176:
	.string	"cdi_direction"
.LASF139:
	.string	"simple_bitmap_def"
.LASF205:
	.string	"parent"
.LASF169:
	.string	"succ_next"
.LASF24:
	.string	"short int"
.LASF18:
	.string	"long int"
.LASF137:
	.string	"bitmap_element"
.LASF103:
	.string	"rtwint"
.LASF145:
	.string	"rtunion_def"
.LASF92:
	.string	"min_after_base"
.LASF30:
	.string	"QImode"
.LASF35:
	.string	"OImode"
.LASF79:
	.string	"BLKmode"
.LASF185:
	.string	"set_size"
.LASF120:
	.string	"end_tree"
.LASF193:
	.string	"calc_dfs_tree_nonrec"
.LASF162:
	.string	"name"
.LASF80:
	.string	"CCmode"
.LASF197:
	.string	"stack"
.LASF171:
	.string	"insns"
.LASF117:
	.string	"basic_block_def"
.LASF144:
	.string	"const_equiv_data"
.LASF59:
	.string	"V2QImode"
.LASF196:
	.string	"my_i"
.LASF16:
	.string	"sizetype"
.LASF198:
	.string	"en_block"
.LASF204:
	.string	"compress"
.LASF168:
	.string	"pred_next"
.LASF58:
	.string	"COImode"
.LASF47:
	.string	"QCmode"
.LASF4:
	.string	"unchanging"
.LASF122:
	.string	"succ"
.LASF109:
	.string	"rt_cselib"
.LASF28:
	.string	"VOIDmode"
.LASF5:
	.string	"volatil"
.LASF184:
	.string	"set_chain"
.LASF207:
	.string	"calc_idoms"
.LASF21:
	.string	"unsigned char"
.LASF33:
	.string	"DImode"
.LASF138:
	.string	"bitmap"
.LASF187:
	.string	"dfs_order"
.LASF146:
	.string	"varray_data_tag"
.LASF151:
	.string	"sched"
.LASF114:
	.string	"first"
.LASF153:
	.string	"cselib_val_struct"
.LASF216:
	.string	"entry_exit_blocks"
.LASF130:
	.string	"frequency"
.LASF90:
	.string	"min_after_vec"
.LASF37:
	.string	"PHImode"
.LASF44:
	.string	"DFmode"
.LASF32:
	.string	"SImode"
.LASF57:
	.string	"CTImode"
.LASF98:
	.string	"expr"
.LASF201:
	.string	"calc_dfs_tree"
.LASF195:
	.string	"child_i"
.LASF62:
	.string	"V2DImode"
.LASF63:
	.string	"V4QImode"
.LASF110:
	.string	"rtbit"
.LASF152:
	.string	"const_equiv"
.LASF81:
	.string	"CCGCmode"
.LASF202:
	.string	"begin"
.LASF124:
	.string	"cond_local_set"
.LASF111:
	.string	"rttree"
.LASF50:
	.string	"DCmode"
.LASF43:
	.string	"SFmode"
.LASF115:
	.string	"current"
.LASF119:
	.string	"head_tree"
.LASF142:
	.string	"elms"
.LASF132:
	.string	"rtunion"
.LASF140:
	.string	"n_bits"
.LASF73:
	.string	"V2DFmode"
.LASF61:
	.string	"V2SImode"
.LASF40:
	.string	"QFmode"
.LASF143:
	.string	"sbitmap"
.LASF211:
	.string	"bb_idom"
.LASF101:
	.string	"align"
.LASF53:
	.string	"CQImode"
.LASF49:
	.string	"SCmode"
.LASF175:
	.string	"machine_mode"
.LASF170:
	.string	"dest"
.LASF123:
	.string	"local_set"
.LASF72:
	.string	"V2SFmode"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
