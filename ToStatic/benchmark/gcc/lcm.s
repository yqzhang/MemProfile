	.file	"lcm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 lcm.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	compute_antinout_edge, @function
compute_antinout_edge:
.LFB2:
	.file 1 "lcm.c"
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# antloc, antloc
	movq	%rsi, -80(%rbp)	# transp, transp
	movq	%rdx, -88(%rbp)	# antin, antin
	movq	%rcx, -96(%rbp)	# antout, antout
	.loc 1 118 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.0
	cltq
	salq	$3, %rax	#, D.11878
	.loc 1 117 0
	movq	%rax, %rdi	# D.11878,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp110, worklist
	movq	-24(%rbp), %rax	# worklist, tmp111
	movq	%rax, -32(%rbp)	# tmp111, qout
	movq	-32(%rbp), %rax	# qout, tmp112
	movq	%rax, -40(%rbp)	# tmp112, qin
	.loc 1 122 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.1
	movl	%eax, %edx	# n_basic_blocks.1, n_basic_blocks.2
	movq	-88(%rbp), %rax	# antin, tmp113
	movl	%edx, %esi	# n_basic_blocks.2,
	movq	%rax, %rdi	# tmp113,
	call	sbitmap_vector_ones	#
	.loc 1 126 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.3
	subl	$1, %eax	#, tmp114
	movl	%eax, -56(%rbp)	# tmp114, bb
	jmp	.L2	#
.L3:
	.loc 1 128 0 discriminator 2
	movq	-40(%rbp), %rax	# qin, qin.4
	leaq	8(%rax), %rdx	#, tmp115
	movq	%rdx, -40(%rbp)	# tmp115, qin
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.5
	movl	-56(%rbp), %ecx	# bb, tmp117
	movslq	%ecx, %rcx	# tmp117, tmp116
	addq	$4, %rcx	#, tmp118
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.5_26->data.bb, D.11879
	movq	%rdx, (%rax)	# D.11879, *qin.4_24
	.loc 1 129 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.6
	movl	-56(%rbp), %edx	# bb, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	addq	$4, %rdx	#, tmp121
	movq	(%rax,%rdx,8), %rax	# basic_block_info.6_28->data.bb, D.11879
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.7
	movl	-56(%rbp), %ecx	# bb, tmp123
	movslq	%ecx, %rcx	# tmp123, tmp122
	addq	$4, %rcx	#, tmp124
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.7_30->data.bb, D.11879
	movq	%rdx, 80(%rax)	# D.11879, _29->aux
	.loc 1 126 0 discriminator 2
	subl	$1, -56(%rbp)	#, bb
.L2:
	.loc 1 126 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, bb
	jns	.L3	#,
	.loc 1 132 0 is_stmt 1
	movq	-24(%rbp), %rax	# worklist, tmp125
	movq	%rax, -40(%rbp)	# tmp125, qin
	.loc 1 133 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.8
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11878
	movq	-24(%rbp), %rax	# worklist, tmp129
	addq	%rdx, %rax	# D.11878, tmp128
	movq	%rax, -16(%rbp)	# tmp128, qend
	.loc 1 134 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.9
	movl	%eax, -52(%rbp)	# n_basic_blocks.9, qlen
	.loc 1 138 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp130
	movq	%rax, -48(%rbp)	# tmp130, e
	jmp	.L4	#
.L5:
	.loc 1 139 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp131
	movq	16(%rax), %rax	# e_2->src, D.11879
	movq	$entry_exit_blocks+112, 80(%rax)	#, _41->aux
	.loc 1 138 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp132
	movq	(%rax), %rax	# e_2->pred_next, tmp133
	movq	%rax, -48(%rbp)	# tmp133, e
.L4:
	.loc 1 138 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L5	#,
	.loc 1 142 0 is_stmt 1
	jmp	.L6	#
.L13:
.LBB2:
	.loc 1 145 0
	movq	-32(%rbp), %rax	# qout, qout.10
	leaq	8(%rax), %rdx	#, tmp134
	movq	%rdx, -32(%rbp)	# tmp134, qout
	movq	(%rax), %rax	# *qout.10_43, tmp135
	movq	%rax, -8(%rbp)	# tmp135, b
	.loc 1 146 0
	movq	-8(%rbp), %rax	# b, tmp136
	movl	88(%rax), %eax	# b_45->index, tmp137
	movl	%eax, -56(%rbp)	# tmp137, bb
	.loc 1 147 0
	subl	$1, -52(%rbp)	#, qlen
	.loc 1 149 0
	movq	-32(%rbp), %rax	# qout, tmp138
	cmpq	-16(%rbp), %rax	# qend, tmp138
	jb	.L7	#,
	.loc 1 150 0
	movq	-24(%rbp), %rax	# worklist, tmp139
	movq	%rax, -32(%rbp)	# tmp139, qout
.L7:
	.loc 1 152 0
	movq	-8(%rbp), %rax	# b, tmp140
	movq	80(%rax), %rax	# b_45->aux, D.11880
	cmpq	$entry_exit_blocks+112, %rax	#, D.11880
	jne	.L8	#,
	.loc 1 156 0
	movl	-56(%rbp), %eax	# bb, tmp141
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11878
	movq	-96(%rbp), %rax	# antout, tmp142
	addq	%rdx, %rax	# D.11878, D.11881
	movq	(%rax), %rax	# *_53, D.11882
	movq	%rax, %rdi	# D.11882,
	call	sbitmap_zero	#
	jmp	.L9	#
.L8:
	.loc 1 161 0
	movq	-8(%rbp), %rax	# b, tmp143
	movq	$0, 80(%rax)	#, b_45->aux
	.loc 1 162 0
	movl	-56(%rbp), %eax	# bb, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11878
	movq	-96(%rbp), %rax	# antout, tmp145
	addq	%rdx, %rax	# D.11878, D.11881
	movq	(%rax), %rax	# *_57, D.11882
	movl	-56(%rbp), %edx	# bb, tmp146
	movq	-88(%rbp), %rcx	# antin, tmp147
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# D.11882,
	call	sbitmap_intersection_of_succs	#
.L9:
	.loc 1 165 0
	movl	-56(%rbp), %eax	# bb, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11878
	movq	-96(%rbp), %rax	# antout, tmp149
	addq	%rdx, %rax	# D.11878, D.11881
	movq	(%rax), %rcx	# *_61, D.11882
	movl	-56(%rbp), %eax	# bb, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11878
	movq	-80(%rbp), %rax	# transp, tmp151
	addq	%rdx, %rax	# D.11878, D.11881
	movq	(%rax), %rdx	# *_66, D.11882
	movl	-56(%rbp), %eax	# bb, tmp152
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11878
	movq	-72(%rbp), %rax	# antloc, tmp153
	addq	%rsi, %rax	# D.11878, D.11881
	movq	(%rax), %rsi	# *_71, D.11882
	movl	-56(%rbp), %eax	# bb, tmp154
	cltq
	leaq	0(,%rax,8), %rdi	#, D.11878
	movq	-88(%rbp), %rax	# antin, tmp155
	addq	%rdi, %rax	# D.11878, D.11881
	movq	(%rax), %rax	# *_75, D.11882
	movq	%rax, %rdi	# D.11882,
	call	sbitmap_a_or_b_and_c	#
	testl	%eax, %eax	# D.11883
	je	.L6	#,
	.loc 1 169 0
	movq	-8(%rbp), %rax	# b, tmp156
	movq	32(%rax), %rax	# b_45->pred, tmp157
	movq	%rax, -48(%rbp)	# tmp157, e
	jmp	.L10	#
.L12:
	.loc 1 170 0
	movq	-48(%rbp), %rax	# e, tmp158
	movq	16(%rax), %rax	# e_3->src, D.11879
	movq	80(%rax), %rax	# _79->aux, D.11880
	testq	%rax, %rax	# D.11880
	jne	.L11	#,
	.loc 1 170 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# e, tmp159
	movq	16(%rax), %rax	# e_3->src, D.11879
	cmpq	$entry_exit_blocks, %rax	#, D.11879
	je	.L11	#,
	.loc 1 172 0 is_stmt 1
	movq	-40(%rbp), %rax	# qin, qin.11
	leaq	8(%rax), %rdx	#, tmp160
	movq	%rdx, -40(%rbp)	# tmp160, qin
	movq	-48(%rbp), %rdx	# e, tmp161
	movq	16(%rdx), %rdx	# e_3->src, D.11879
	movq	%rdx, (%rax)	# D.11879, *qin.11_82
	.loc 1 173 0
	movq	-48(%rbp), %rax	# e, tmp162
	movq	16(%rax), %rax	# e_3->src, D.11879
	movq	-48(%rbp), %rdx	# e, tmp163
	movq	%rdx, 80(%rax)	# tmp163, _85->aux
	.loc 1 174 0
	addl	$1, -52(%rbp)	#, qlen
	.loc 1 175 0
	movq	-40(%rbp), %rax	# qin, tmp164
	cmpq	-16(%rbp), %rax	# qend, tmp164
	jb	.L11	#,
	.loc 1 176 0
	movq	-24(%rbp), %rax	# worklist, tmp165
	movq	%rax, -40(%rbp)	# tmp165, qin
.L11:
	.loc 1 169 0
	movq	-48(%rbp), %rax	# e, tmp166
	movq	(%rax), %rax	# e_3->pred_next, tmp167
	movq	%rax, -48(%rbp)	# tmp167, e
.L10:
	.loc 1 169 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L12	#,
.L6:
.LBE2:
	.loc 1 142 0 is_stmt 1 discriminator 1
	cmpl	$0, -52(%rbp)	#, qlen
	jne	.L13	#,
	.loc 1 180 0
	call	clear_aux_for_edges	#
	.loc 1 181 0
	call	clear_aux_for_blocks	#
	.loc 1 182 0
	movq	-24(%rbp), %rax	# worklist, tmp168
	movq	%rax, %rdi	# tmp168,
	call	free	#
	.loc 1 183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	compute_antinout_edge, .-compute_antinout_edge
	.type	compute_earliest, @function
compute_earliest:
.LFB3:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# edge_list, edge_list
	movl	%esi, -60(%rbp)	# n_exprs, n_exprs
	movq	%rdx, -72(%rbp)	# antin, antin
	movq	%rcx, -80(%rbp)	# antout, antout
	movq	%r8, -88(%rbp)	# avout, avout
	movq	%r9, -96(%rbp)	# kill, kill
	.loc 1 197 0
	movq	-56(%rbp), %rax	# edge_list, tmp109
	movl	4(%rax), %eax	# edge_list_2(D)->num_edges, tmp110
	movl	%eax, -36(%rbp)	# tmp110, num_edges
	.loc 1 199 0
	movl	-60(%rbp), %eax	# n_exprs, n_exprs.12
	movl	%eax, %edi	# n_exprs.12,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp111, difference
	.loc 1 200 0
	movl	-60(%rbp), %eax	# n_exprs, n_exprs.13
	movl	%eax, %edi	# n_exprs.13,
	call	sbitmap_alloc	#
	movq	%rax, -24(%rbp)	# tmp112, temp_bitmap
	.loc 1 202 0
	movl	$0, -40(%rbp)	#, x
	jmp	.L15	#
.L19:
	.loc 1 204 0
	movq	-56(%rbp), %rax	# edge_list, tmp113
	movq	8(%rax), %rax	# edge_list_2(D)->index_to_edge, D.11884
	movl	-40(%rbp), %edx	# x, tmp114
	movslq	%edx, %rdx	# tmp114, D.11885
	salq	$3, %rdx	#, D.11885
	addq	%rdx, %rax	# D.11885, D.11884
	movq	(%rax), %rax	# *_13, D.11886
	movq	16(%rax), %rax	# _14->src, tmp115
	movq	%rax, -16(%rbp)	# tmp115, pred
	.loc 1 205 0
	movq	-56(%rbp), %rax	# edge_list, tmp116
	movq	8(%rax), %rax	# edge_list_2(D)->index_to_edge, D.11884
	movl	-40(%rbp), %edx	# x, tmp117
	movslq	%edx, %rdx	# tmp117, D.11885
	salq	$3, %rdx	#, D.11885
	addq	%rdx, %rax	# D.11885, D.11884
	movq	(%rax), %rax	# *_19, D.11886
	movq	24(%rax), %rax	# _20->dest, tmp118
	movq	%rax, -8(%rbp)	# tmp118, succ
	.loc 1 206 0
	cmpq	$entry_exit_blocks, -16(%rbp)	#, pred
	jne	.L16	#,
	.loc 1 207 0
	movq	-8(%rbp), %rax	# succ, tmp119
	movl	88(%rax), %eax	# succ_21->index, D.11887
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11885
	movq	-72(%rbp), %rax	# antin, tmp120
	addq	%rdx, %rax	# D.11885, D.11888
	movq	(%rax), %rdx	# *_26, D.11889
	movl	-40(%rbp), %eax	# x, tmp121
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11885
	movq	16(%rbp), %rax	# earliest, tmp122
	addq	%rcx, %rax	# D.11885, D.11888
	movq	(%rax), %rax	# *_31, D.11889
	movq	%rdx, %rsi	# D.11889,
	movq	%rax, %rdi	# D.11889,
	call	sbitmap_copy	#
	jmp	.L17	#
.L16:
	.loc 1 214 0
	movq	-8(%rbp), %rax	# succ, tmp123
	movl	88(%rax), %eax	# succ_21->index, D.11887
	cmpl	$-2, %eax	#, D.11887
	jne	.L18	#,
	.loc 1 215 0
	movl	-40(%rbp), %eax	# x, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11885
	movq	16(%rbp), %rax	# earliest, tmp125
	addq	%rdx, %rax	# D.11885, D.11888
	movq	(%rax), %rax	# *_36, D.11889
	movq	%rax, %rdi	# D.11889,
	call	sbitmap_zero	#
	jmp	.L17	#
.L18:
	.loc 1 219 0
	movq	-16(%rbp), %rax	# pred, tmp126
	movl	88(%rax), %eax	# pred_15->index, D.11887
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11885
	movq	-88(%rbp), %rax	# avout, tmp127
	addq	%rdx, %rax	# D.11885, D.11888
	.loc 1 218 0
	movq	(%rax), %rdx	# *_42, D.11889
	movq	-8(%rbp), %rax	# succ, tmp128
	movl	88(%rax), %eax	# succ_21->index, D.11887
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11885
	movq	-72(%rbp), %rax	# antin, tmp129
	addq	%rcx, %rax	# D.11885, D.11888
	movq	(%rax), %rcx	# *_47, D.11889
	movq	-32(%rbp), %rax	# difference, tmp130
	movq	%rcx, %rsi	# D.11889,
	movq	%rax, %rdi	# tmp130,
	call	sbitmap_difference	#
	.loc 1 220 0
	movq	-16(%rbp), %rax	# pred, tmp131
	movl	88(%rax), %eax	# pred_15->index, D.11887
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11885
	movq	-80(%rbp), %rax	# antout, tmp132
	addq	%rdx, %rax	# D.11885, D.11888
	movq	(%rax), %rdx	# *_53, D.11889
	movq	-24(%rbp), %rax	# temp_bitmap, tmp133
	movq	%rdx, %rsi	# D.11889,
	movq	%rax, %rdi	# tmp133,
	call	sbitmap_not	#
	.loc 1 222 0
	movq	-16(%rbp), %rax	# pred, tmp134
	movl	88(%rax), %eax	# pred_15->index, D.11887
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11885
	movq	-96(%rbp), %rax	# kill, tmp135
	addq	%rdx, %rax	# D.11885, D.11888
	.loc 1 221 0
	movq	(%rax), %rdx	# *_59, D.11889
	movl	-40(%rbp), %eax	# x, tmp136
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11885
	movq	16(%rbp), %rax	# earliest, tmp137
	addq	%rcx, %rax	# D.11885, D.11888
	movq	(%rax), %rax	# *_63, D.11889
	movq	-24(%rbp), %rcx	# temp_bitmap, tmp138
	movq	-32(%rbp), %rsi	# difference, tmp139
	movq	%rax, %rdi	# D.11889,
	call	sbitmap_a_and_b_or_c	#
.L17:
	.loc 1 202 0
	addl	$1, -40(%rbp)	#, x
.L15:
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# x, tmp140
	cmpl	-36(%rbp), %eax	# num_edges, tmp140
	jl	.L19	#,
	.loc 1 227 0 is_stmt 1
	movq	-24(%rbp), %rax	# temp_bitmap, tmp141
	movq	%rax, %rdi	# tmp141,
	call	free	#
	.loc 1 228 0
	movq	-32(%rbp), %rax	# difference, tmp142
	movq	%rax, %rdi	# tmp142,
	call	free	#
	.loc 1 229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	compute_earliest, .-compute_earliest
	.type	compute_laterin, @function
compute_laterin:
.LFB4:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -88(%rbp)	# edge_list, edge_list
	movq	%rsi, -96(%rbp)	# earliest, earliest
	movq	%rdx, -104(%rbp)	# antloc, antloc
	movq	%rcx, -112(%rbp)	# later, later
	movq	%r8, -120(%rbp)	# laterin, laterin
	.loc 1 270 0
	movq	-88(%rbp), %rax	# edge_list, tmp155
	movl	4(%rax), %eax	# edge_list_16(D)->num_edges, tmp156
	movl	%eax, -60(%rbp)	# tmp156, num_edges
	.loc 1 276 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.14
	addl	$1, %eax	#, D.11890
	cltq
	salq	$3, %rax	#, D.11891
	.loc 1 275 0
	movq	%rax, %rdi	# D.11891,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp157, worklist
	movq	-32(%rbp), %rax	# worklist, tmp158
	movq	%rax, -40(%rbp)	# tmp158, qout
	movq	-40(%rbp), %rax	# qout, tmp159
	movq	%rax, -48(%rbp)	# tmp159, qin
	.loc 1 279 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L21	#
.L22:
	.loc 1 280 0 discriminator 2
	movq	-88(%rbp), %rax	# edge_list, tmp160
	movq	8(%rax), %rax	# edge_list_16(D)->index_to_edge, D.11892
	movl	-68(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, D.11891
	salq	$3, %rdx	#, D.11891
	addq	%rdx, %rax	# D.11891, D.11892
	movq	(%rax), %rax	# *_29, D.11893
	movl	-68(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.11891
	movq	%rdx, 40(%rax)	# D.11894, _30->aux
	.loc 1 279 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L21:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp163
	cmpl	-60(%rbp), %eax	# num_edges, tmp163
	jl	.L22	#,
	.loc 1 292 0 is_stmt 1
	movl	-60(%rbp), %edx	# num_edges, num_edges.15
	movq	-112(%rbp), %rax	# later, tmp164
	movl	%edx, %esi	# num_edges.15,
	movq	%rax, %rdi	# tmp164,
	call	sbitmap_vector_ones	#
	.loc 1 298 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp165
	movq	%rax, -56(%rbp)	# tmp165, e
	jmp	.L23	#
.L24:
	.loc 1 299 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp166
	movq	40(%rax), %rax	# e_3->aux, D.11894
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-96(%rbp), %rax	# earliest, tmp167
	addq	%rdx, %rax	# D.11891, D.11895
	movq	(%rax), %rdx	# *_41, D.11896
	movq	-56(%rbp), %rax	# e, tmp168
	movq	40(%rax), %rax	# e_3->aux, D.11894
	leaq	0(,%rax,8), %rcx	#, D.11891
	movq	-112(%rbp), %rax	# later, tmp169
	addq	%rcx, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_46, D.11896
	movq	%rdx, %rsi	# D.11896,
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_copy	#
	.loc 1 298 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp170
	movq	8(%rax), %rax	# e_3->succ_next, tmp171
	movq	%rax, -56(%rbp)	# tmp171, e
.L23:
	.loc 1 298 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, e
	jne	.L24	#,
	.loc 1 303 0 is_stmt 1
	movl	$0, -72(%rbp)	#, bb
	jmp	.L25	#
.L26:
.LBB3:
	.loc 1 305 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.16
	movl	-72(%rbp), %edx	# bb, tmp173
	movslq	%edx, %rdx	# tmp173, tmp172
	addq	$4, %rdx	#, tmp174
	movq	(%rax,%rdx,8), %rax	# basic_block_info.16_51->data.bb, tmp175
	movq	%rax, -24(%rbp)	# tmp175, b
	.loc 1 306 0 discriminator 2
	movq	-48(%rbp), %rax	# qin, qin.17
	leaq	8(%rax), %rdx	#, tmp176
	movq	%rdx, -48(%rbp)	# tmp176, qin
	movq	-24(%rbp), %rdx	# b, tmp177
	movq	%rdx, (%rax)	# tmp177, *qin.17_53
	.loc 1 307 0 discriminator 2
	movq	-24(%rbp), %rax	# b, tmp178
	movq	-24(%rbp), %rdx	# b, tmp179
	movq	%rdx, 80(%rax)	# tmp179, b_52->aux
.LBE3:
	.loc 1 303 0 discriminator 2
	addl	$1, -72(%rbp)	#, bb
.L25:
	.loc 1 303 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.18
	cmpl	%eax, -72(%rbp)	# n_basic_blocks.18, bb
	jl	.L26	#,
	.loc 1 309 0 is_stmt 1
	movq	-32(%rbp), %rax	# worklist, tmp180
	movq	%rax, -48(%rbp)	# tmp180, qin
	.loc 1 313 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.19
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-32(%rbp), %rax	# worklist, tmp184
	addq	%rdx, %rax	# D.11891, tmp183
	movq	%rax, -16(%rbp)	# tmp183, qend
	.loc 1 314 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.20
	movl	%eax, -64(%rbp)	# n_basic_blocks.20, qlen
	.loc 1 317 0
	jmp	.L27	#
.L34:
.LBB4:
	.loc 1 320 0
	movq	-40(%rbp), %rax	# qout, qout.21
	leaq	8(%rax), %rdx	#, tmp185
	movq	%rdx, -40(%rbp)	# tmp185, qout
	movq	(%rax), %rax	# *qout.21_63, tmp186
	movq	%rax, -8(%rbp)	# tmp186, b
	.loc 1 321 0
	movq	-8(%rbp), %rax	# b, tmp187
	movq	$0, 80(%rax)	#, b_65->aux
	.loc 1 322 0
	subl	$1, -64(%rbp)	#, qlen
	.loc 1 323 0
	movq	-40(%rbp), %rax	# qout, tmp188
	cmpq	-16(%rbp), %rax	# qend, tmp188
	jb	.L28	#,
	.loc 1 324 0
	movq	-32(%rbp), %rax	# worklist, tmp189
	movq	%rax, -40(%rbp)	# tmp189, qout
.L28:
	.loc 1 327 0
	movq	-8(%rbp), %rax	# b, tmp190
	movl	88(%rax), %eax	# b_65->index, tmp191
	movl	%eax, -72(%rbp)	# tmp191, bb
	.loc 1 328 0
	movl	-72(%rbp), %eax	# bb, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp193
	addq	%rdx, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_72, D.11896
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_ones	#
	.loc 1 329 0
	movq	-8(%rbp), %rax	# b, tmp194
	movq	32(%rax), %rax	# b_65->pred, tmp195
	movq	%rax, -56(%rbp)	# tmp195, e
	jmp	.L29	#
.L30:
	.loc 1 330 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp196
	movq	40(%rax), %rax	# e_4->aux, D.11894
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-112(%rbp), %rax	# later, tmp197
	addq	%rdx, %rax	# D.11891, D.11895
	movq	(%rax), %rdx	# *_78, D.11896
	movl	-72(%rbp), %eax	# bb, tmp198
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp199
	addq	%rcx, %rax	# D.11891, D.11895
	movq	(%rax), %rcx	# *_82, D.11896
	movl	-72(%rbp), %eax	# bb, tmp200
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp201
	addq	%rsi, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_86, D.11896
	movq	%rcx, %rsi	# D.11896,
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_a_and_b	#
	.loc 1 329 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp202
	movq	(%rax), %rax	# e_4->pred_next, tmp203
	movq	%rax, -56(%rbp)	# tmp203, e
.L29:
	.loc 1 329 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, e
	jne	.L30	#,
	.loc 1 333 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp204
	movq	40(%rax), %rax	# b_65->succ, tmp205
	movq	%rax, -56(%rbp)	# tmp205, e
	jmp	.L31	#
.L33:
	.loc 1 337 0
	movq	-56(%rbp), %rax	# e, tmp206
	movq	16(%rax), %rax	# e_5->src, D.11897
	movl	88(%rax), %eax	# _90->index, D.11890
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-104(%rbp), %rax	# antloc, tmp207
	addq	%rdx, %rax	# D.11891, D.11895
	.loc 1 334 0
	movq	(%rax), %rcx	# *_95, D.11896
	.loc 1 336 0
	movq	-56(%rbp), %rax	# e, tmp208
	movq	16(%rax), %rax	# e_5->src, D.11897
	movl	88(%rax), %eax	# _97->index, D.11890
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp209
	addq	%rdx, %rax	# D.11891, D.11895
	.loc 1 334 0
	movq	(%rax), %rdx	# *_101, D.11896
	.loc 1 335 0
	movq	-56(%rbp), %rax	# e, tmp210
	movq	40(%rax), %rax	# e_5->aux, D.11894
	leaq	0(,%rax,8), %rsi	#, D.11891
	movq	-96(%rbp), %rax	# earliest, tmp211
	addq	%rsi, %rax	# D.11891, D.11895
	.loc 1 334 0
	movq	(%rax), %rsi	# *_106, D.11896
	movq	-56(%rbp), %rax	# e, tmp212
	movq	40(%rax), %rax	# e_5->aux, D.11894
	leaq	0(,%rax,8), %rdi	#, D.11891
	movq	-112(%rbp), %rax	# later, tmp213
	addq	%rdi, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_111, D.11896
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_union_of_diff	#
	testl	%eax, %eax	# D.11890
	je	.L32	#,
	.loc 1 340 0
	movq	-56(%rbp), %rax	# e, tmp214
	movq	24(%rax), %rax	# e_5->dest, D.11897
	cmpq	$entry_exit_blocks+112, %rax	#, D.11897
	je	.L32	#,
	.loc 1 340 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# e, tmp215
	movq	24(%rax), %rax	# e_5->dest, D.11897
	movq	80(%rax), %rax	# _115->aux, D.11894
	testq	%rax, %rax	# D.11894
	jne	.L32	#,
	.loc 1 342 0 is_stmt 1
	movq	-48(%rbp), %rax	# qin, qin.22
	leaq	8(%rax), %rdx	#, tmp216
	movq	%rdx, -48(%rbp)	# tmp216, qin
	movq	-56(%rbp), %rdx	# e, tmp217
	movq	24(%rdx), %rdx	# e_5->dest, D.11897
	movq	%rdx, (%rax)	# D.11897, *qin.22_117
	.loc 1 343 0
	movq	-56(%rbp), %rax	# e, tmp218
	movq	24(%rax), %rax	# e_5->dest, D.11897
	movq	-56(%rbp), %rdx	# e, tmp219
	movq	%rdx, 80(%rax)	# tmp219, _120->aux
	.loc 1 344 0
	addl	$1, -64(%rbp)	#, qlen
	.loc 1 345 0
	movq	-48(%rbp), %rax	# qin, tmp220
	cmpq	-16(%rbp), %rax	# qend, tmp220
	jb	.L32	#,
	.loc 1 346 0
	movq	-32(%rbp), %rax	# worklist, tmp221
	movq	%rax, -48(%rbp)	# tmp221, qin
.L32:
	.loc 1 333 0
	movq	-56(%rbp), %rax	# e, tmp222
	movq	8(%rax), %rax	# e_5->succ_next, tmp223
	movq	%rax, -56(%rbp)	# tmp223, e
.L31:
	.loc 1 333 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, e
	jne	.L33	#,
.L27:
.LBE4:
	.loc 1 317 0 is_stmt 1 discriminator 1
	cmpl	$0, -64(%rbp)	#, qlen
	jne	.L34	#,
	.loc 1 353 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.23
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp224
	addq	%rdx, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_127, D.11896
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_ones	#
	.loc 1 354 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp225
	movq	%rax, -56(%rbp)	# tmp225, e
	jmp	.L35	#
.L36:
	.loc 1 357 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp226
	movq	40(%rax), %rax	# e_6->aux, D.11894
	leaq	0(,%rax,8), %rdx	#, D.11891
	movq	-112(%rbp), %rax	# later, tmp227
	addq	%rdx, %rax	# D.11891, D.11895
	.loc 1 355 0 discriminator 2
	movq	(%rax), %rdx	# *_133, D.11896
	.loc 1 356 0 discriminator 2
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.24
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp228
	addq	%rcx, %rax	# D.11891, D.11895
	.loc 1 355 0 discriminator 2
	movq	(%rax), %rcx	# *_138, D.11896
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.25
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11891
	movq	-120(%rbp), %rax	# laterin, tmp229
	addq	%rsi, %rax	# D.11891, D.11895
	movq	(%rax), %rax	# *_143, D.11896
	movq	%rcx, %rsi	# D.11896,
	movq	%rax, %rdi	# D.11896,
	call	sbitmap_a_and_b	#
	.loc 1 354 0 discriminator 2
	movq	-56(%rbp), %rax	# e, tmp230
	movq	(%rax), %rax	# e_6->pred_next, tmp231
	movq	%rax, -56(%rbp)	# tmp231, e
.L35:
	.loc 1 354 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, e
	jne	.L36	#,
	.loc 1 359 0 is_stmt 1
	call	clear_aux_for_edges	#
	.loc 1 360 0
	movq	-32(%rbp), %rax	# worklist, tmp232
	movq	%rax, %rdi	# tmp232,
	call	free	#
	.loc 1 361 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	compute_laterin, .-compute_laterin
	.type	compute_insert_delete, @function
compute_insert_delete:
.LFB5:
	.loc 1 370 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# edge_list, edge_list
	movq	%rsi, -32(%rbp)	# antloc, antloc
	movq	%rdx, -40(%rbp)	# later, later
	movq	%rcx, -48(%rbp)	# laterin, laterin
	movq	%r8, -56(%rbp)	# insert, insert
	movq	%r9, -64(%rbp)	# delete, delete
	.loc 1 373 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L38	#
.L39:
	.loc 1 374 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11898
	movq	-48(%rbp), %rax	# laterin, tmp105
	addq	%rdx, %rax	# D.11898, D.11899
	movq	(%rax), %rdx	# *_8, D.11900
	movl	-12(%rbp), %eax	# x, tmp106
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11898
	movq	-32(%rbp), %rax	# antloc, tmp107
	addq	%rcx, %rax	# D.11898, D.11899
	movq	(%rax), %rcx	# *_13, D.11900
	movl	-12(%rbp), %eax	# x, tmp108
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11898
	movq	-64(%rbp), %rax	# delete, tmp109
	addq	%rsi, %rax	# D.11898, D.11899
	movq	(%rax), %rax	# *_18, D.11900
	movq	%rcx, %rsi	# D.11900,
	movq	%rax, %rdi	# D.11900,
	call	sbitmap_difference	#
	.loc 1 373 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L38:
	.loc 1 373 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.26
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.26, x
	jl	.L39	#,
	.loc 1 376 0 is_stmt 1
	movl	$0, -12(%rbp)	#, x
	jmp	.L40	#
.L43:
.LBB5:
	.loc 1 378 0
	movq	-24(%rbp), %rax	# edge_list, tmp110
	movq	8(%rax), %rax	# edge_list_22(D)->index_to_edge, D.11902
	movl	-12(%rbp), %edx	# x, tmp111
	movslq	%edx, %rdx	# tmp111, D.11898
	salq	$3, %rdx	#, D.11898
	addq	%rdx, %rax	# D.11898, D.11902
	movq	(%rax), %rax	# *_27, D.11903
	movq	24(%rax), %rax	# _28->dest, tmp112
	movq	%rax, -8(%rbp)	# tmp112, b
	.loc 1 380 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, b
	jne	.L41	#,
	.loc 1 381 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.27
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11898
	movq	-48(%rbp), %rax	# laterin, tmp113
	addq	%rdx, %rax	# D.11898, D.11899
	movq	(%rax), %rdx	# *_33, D.11900
	movl	-12(%rbp), %eax	# x, tmp114
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11898
	movq	-40(%rbp), %rax	# later, tmp115
	addq	%rcx, %rax	# D.11898, D.11899
	movq	(%rax), %rcx	# *_38, D.11900
	movl	-12(%rbp), %eax	# x, tmp116
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11898
	movq	-56(%rbp), %rax	# insert, tmp117
	addq	%rsi, %rax	# D.11898, D.11899
	movq	(%rax), %rax	# *_43, D.11900
	movq	%rcx, %rsi	# D.11900,
	movq	%rax, %rdi	# D.11900,
	call	sbitmap_difference	#
	jmp	.L42	#
.L41:
	.loc 1 383 0
	movq	-8(%rbp), %rax	# b, tmp118
	movl	88(%rax), %eax	# b_29->index, D.11901
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11898
	movq	-48(%rbp), %rax	# laterin, tmp119
	addq	%rdx, %rax	# D.11898, D.11899
	movq	(%rax), %rdx	# *_48, D.11900
	movl	-12(%rbp), %eax	# x, tmp120
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11898
	movq	-40(%rbp), %rax	# later, tmp121
	addq	%rcx, %rax	# D.11898, D.11899
	movq	(%rax), %rcx	# *_52, D.11900
	movl	-12(%rbp), %eax	# x, tmp122
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11898
	movq	-56(%rbp), %rax	# insert, tmp123
	addq	%rsi, %rax	# D.11898, D.11899
	movq	(%rax), %rax	# *_56, D.11900
	movq	%rcx, %rsi	# D.11900,
	movq	%rax, %rdi	# D.11900,
	call	sbitmap_difference	#
.L42:
.LBE5:
	.loc 1 376 0
	addl	$1, -12(%rbp)	#, x
.L40:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# edge_list, tmp124
	movl	4(%rax), %eax	# edge_list_22(D)->num_edges, D.11901
	cmpl	-12(%rbp), %eax	# x, D.11901
	jg	.L43	#,
	.loc 1 385 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	compute_insert_delete, .-compute_insert_delete
	.globl	pre_edge_lcm
	.type	pre_edge_lcm, @function
pre_edge_lcm:
.LFB6:
	.loc 1 401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -88(%rbp)	# file, file
	movl	%esi, -92(%rbp)	# n_exprs, n_exprs
	movq	%rdx, -104(%rbp)	# transp, transp
	movq	%rcx, -112(%rbp)	# avloc, avloc
	movq	%r8, -120(%rbp)	# antloc, antloc
	movq	%r9, -128(%rbp)	# kill, kill
	.loc 1 408 0
	call	create_edge_list	#
	movq	%rax, -64(%rbp)	# tmp90, edge_list
	.loc 1 409 0
	movq	-64(%rbp), %rax	# edge_list, tmp91
	movl	4(%rax), %eax	# edge_list_1->num_edges, tmp92
	movl	%eax, -68(%rbp)	# tmp92, num_edges
	.loc 1 425 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.28
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.29
	movl	%edx, %esi	# n_exprs.28,
	movl	%eax, %edi	# n_basic_blocks.30,
	call	sbitmap_vector_alloc	#
	movq	%rax, -56(%rbp)	# tmp93, avin
	.loc 1 426 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.31
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.32
	movl	%edx, %esi	# n_exprs.31,
	movl	%eax, %edi	# n_basic_blocks.33,
	call	sbitmap_vector_alloc	#
	movq	%rax, -48(%rbp)	# tmp94, avout
	.loc 1 427 0
	movq	-56(%rbp), %rcx	# avin, tmp95
	movq	-48(%rbp), %rdx	# avout, tmp96
	movq	-128(%rbp), %rsi	# kill, tmp97
	movq	-112(%rbp), %rax	# avloc, tmp98
	movq	%rax, %rdi	# tmp98,
	call	compute_available	#
	.loc 1 428 0
	movq	-56(%rbp), %rax	# avin, tmp99
	movq	%rax, %rdi	# tmp99,
	call	free	#
	.loc 1 431 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.34
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.35
	movl	%edx, %esi	# n_exprs.34,
	movl	%eax, %edi	# n_basic_blocks.36,
	call	sbitmap_vector_alloc	#
	movq	%rax, -40(%rbp)	# tmp100, antin
	.loc 1 432 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.37
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.38
	movl	%edx, %esi	# n_exprs.37,
	movl	%eax, %edi	# n_basic_blocks.39,
	call	sbitmap_vector_alloc	#
	movq	%rax, -32(%rbp)	# tmp101, antout
	.loc 1 433 0
	movq	-32(%rbp), %rcx	# antout, tmp102
	movq	-40(%rbp), %rdx	# antin, tmp103
	movq	-104(%rbp), %rsi	# transp, tmp104
	movq	-120(%rbp), %rax	# antloc, tmp105
	movq	%rax, %rdi	# tmp105,
	call	compute_antinout_edge	#
	.loc 1 444 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.40
	movl	-68(%rbp), %eax	# num_edges, num_edges.41
	movl	%edx, %esi	# n_exprs.40,
	movl	%eax, %edi	# num_edges.41,
	call	sbitmap_vector_alloc	#
	movq	%rax, -24(%rbp)	# tmp106, earliest
	.loc 1 445 0
	movq	-128(%rbp), %r9	# kill, tmp107
	movq	-48(%rbp), %r8	# avout, tmp108
	movq	-32(%rbp), %rcx	# antout, tmp109
	movq	-40(%rbp), %rdx	# antin, tmp110
	movl	-92(%rbp), %esi	# n_exprs, tmp111
	movq	-64(%rbp), %rax	# edge_list, tmp112
	movq	-24(%rbp), %rdi	# earliest, tmp113
	movq	%rdi, (%rsp)	# tmp113,
	movq	%rax, %rdi	# tmp112,
	call	compute_earliest	#
	.loc 1 452 0
	movq	-32(%rbp), %rax	# antout, tmp114
	movq	%rax, %rdi	# tmp114,
	call	free	#
	.loc 1 453 0
	movq	-40(%rbp), %rax	# antin, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free	#
	.loc 1 454 0
	movq	-48(%rbp), %rax	# avout, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free	#
	.loc 1 456 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.42
	movl	-68(%rbp), %eax	# num_edges, num_edges.43
	movl	%edx, %esi	# n_exprs.42,
	movl	%eax, %edi	# num_edges.43,
	call	sbitmap_vector_alloc	#
	movq	%rax, -16(%rbp)	# tmp117, later
	.loc 1 459 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.44
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.45
	addl	$1, %eax	#, D.11904
	movl	%edx, %esi	# n_exprs.44,
	movl	%eax, %edi	# D.11905,
	call	sbitmap_vector_alloc	#
	movq	%rax, -8(%rbp)	# tmp118, laterin
	.loc 1 460 0
	movq	-8(%rbp), %rdi	# laterin, tmp119
	movq	-16(%rbp), %rcx	# later, tmp120
	movq	-120(%rbp), %rdx	# antloc, tmp121
	movq	-24(%rbp), %rsi	# earliest, tmp122
	movq	-64(%rbp), %rax	# edge_list, tmp123
	movq	%rdi, %r8	# tmp119,
	movq	%rax, %rdi	# tmp123,
	call	compute_laterin	#
	.loc 1 470 0
	movq	-24(%rbp), %rax	# earliest, tmp124
	movq	%rax, %rdi	# tmp124,
	call	free	#
	.loc 1 472 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.46
	movl	-68(%rbp), %eax	# num_edges, num_edges.47
	movl	%edx, %esi	# n_exprs.46,
	movl	%eax, %edi	# num_edges.47,
	call	sbitmap_vector_alloc	#
	movq	16(%rbp), %rdx	# insert, tmp125
	movq	%rax, (%rdx)	# D.11906, *insert_38(D)
	.loc 1 473 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.48
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.49
	movl	%edx, %esi	# n_exprs.48,
	movl	%eax, %edi	# n_basic_blocks.50,
	call	sbitmap_vector_alloc	#
	movq	24(%rbp), %rdx	# delete, tmp126
	movq	%rax, (%rdx)	# D.11906, *delete_43(D)
	.loc 1 474 0
	movq	24(%rbp), %rax	# delete, tmp127
	movq	(%rax), %r8	# *delete_43(D), D.11906
	movq	16(%rbp), %rax	# insert, tmp128
	movq	(%rax), %rdi	# *insert_38(D), D.11906
	movq	-8(%rbp), %rcx	# laterin, tmp129
	movq	-16(%rbp), %rdx	# later, tmp130
	movq	-120(%rbp), %rsi	# antloc, tmp131
	movq	-64(%rbp), %rax	# edge_list, tmp132
	movq	%r8, %r9	# D.11906,
	movq	%rdi, %r8	# D.11906,
	movq	%rax, %rdi	# tmp132,
	call	compute_insert_delete	#
	.loc 1 476 0
	movq	-8(%rbp), %rax	# laterin, tmp133
	movq	%rax, %rdi	# tmp133,
	call	free	#
	.loc 1 477 0
	movq	-16(%rbp), %rax	# later, tmp134
	movq	%rax, %rdi	# tmp134,
	call	free	#
	.loc 1 488 0
	movq	-64(%rbp), %rax	# edge_list, D.11907
	.loc 1 489 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pre_edge_lcm, .-pre_edge_lcm
	.globl	compute_available
	.type	compute_available, @function
compute_available:
.LFB7:
	.loc 1 497 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# avloc, avloc
	movq	%rsi, -80(%rbp)	# kill, kill
	movq	%rdx, -88(%rbp)	# avout, avout
	movq	%rcx, -96(%rbp)	# avin, avin
	.loc 1 507 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.51
	cltq
	salq	$3, %rax	#, D.11908
	.loc 1 506 0
	movq	%rax, %rdi	# D.11908,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp110, worklist
	movq	-24(%rbp), %rax	# worklist, tmp111
	movq	%rax, -32(%rbp)	# tmp111, qout
	movq	-32(%rbp), %rax	# qout, tmp112
	movq	%rax, -40(%rbp)	# tmp112, qin
	.loc 1 510 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.52
	movl	%eax, %edx	# n_basic_blocks.52, n_basic_blocks.53
	movq	-88(%rbp), %rax	# avout, tmp113
	movl	%edx, %esi	# n_basic_blocks.53,
	movq	%rax, %rdi	# tmp113,
	call	sbitmap_vector_ones	#
	.loc 1 514 0
	movl	$0, -56(%rbp)	#, bb
	jmp	.L47	#
.L48:
	.loc 1 516 0 discriminator 2
	movq	-40(%rbp), %rax	# qin, qin.54
	leaq	8(%rax), %rdx	#, tmp114
	movq	%rdx, -40(%rbp)	# tmp114, qin
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.55
	movl	-56(%rbp), %ecx	# bb, tmp116
	movslq	%ecx, %rcx	# tmp116, tmp115
	addq	$4, %rcx	#, tmp117
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.55_26->data.bb, D.11909
	movq	%rdx, (%rax)	# D.11909, *qin.54_24
	.loc 1 517 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.56
	movl	-56(%rbp), %edx	# bb, tmp119
	movslq	%edx, %rdx	# tmp119, tmp118
	addq	$4, %rdx	#, tmp120
	movq	(%rax,%rdx,8), %rax	# basic_block_info.56_28->data.bb, D.11909
	movq	basic_block_info(%rip), %rdx	# basic_block_info, basic_block_info.57
	movl	-56(%rbp), %ecx	# bb, tmp122
	movslq	%ecx, %rcx	# tmp122, tmp121
	addq	$4, %rcx	#, tmp123
	movq	(%rdx,%rcx,8), %rdx	# basic_block_info.57_30->data.bb, D.11909
	movq	%rdx, 80(%rax)	# D.11909, _29->aux
	.loc 1 514 0 discriminator 2
	addl	$1, -56(%rbp)	#, bb
.L47:
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.58
	cmpl	%eax, -56(%rbp)	# n_basic_blocks.58, bb
	jl	.L48	#,
	.loc 1 520 0 is_stmt 1
	movq	-24(%rbp), %rax	# worklist, tmp124
	movq	%rax, -40(%rbp)	# tmp124, qin
	.loc 1 521 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.59
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11908
	movq	-24(%rbp), %rax	# worklist, tmp128
	addq	%rdx, %rax	# D.11908, tmp127
	movq	%rax, -16(%rbp)	# tmp127, qend
	.loc 1 522 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.60
	movl	%eax, -52(%rbp)	# n_basic_blocks.60, qlen
	.loc 1 526 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp129
	movq	%rax, -48(%rbp)	# tmp129, e
	jmp	.L49	#
.L50:
	.loc 1 527 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp130
	movq	24(%rax), %rax	# e_2->dest, D.11909
	movq	$entry_exit_blocks, 80(%rax)	#, _41->aux
	.loc 1 526 0 discriminator 2
	movq	-48(%rbp), %rax	# e, tmp131
	movq	8(%rax), %rax	# e_2->succ_next, tmp132
	movq	%rax, -48(%rbp)	# tmp132, e
.L49:
	.loc 1 526 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L50	#,
	.loc 1 530 0 is_stmt 1
	jmp	.L51	#
.L58:
.LBB6:
	.loc 1 533 0
	movq	-32(%rbp), %rax	# qout, qout.61
	leaq	8(%rax), %rdx	#, tmp133
	movq	%rdx, -32(%rbp)	# tmp133, qout
	movq	(%rax), %rax	# *qout.61_43, tmp134
	movq	%rax, -8(%rbp)	# tmp134, b
	.loc 1 534 0
	movq	-8(%rbp), %rax	# b, tmp135
	movl	88(%rax), %eax	# b_45->index, tmp136
	movl	%eax, -56(%rbp)	# tmp136, bb
	.loc 1 535 0
	subl	$1, -52(%rbp)	#, qlen
	.loc 1 537 0
	movq	-32(%rbp), %rax	# qout, tmp137
	cmpq	-16(%rbp), %rax	# qend, tmp137
	jb	.L52	#,
	.loc 1 538 0
	movq	-24(%rbp), %rax	# worklist, tmp138
	movq	%rax, -32(%rbp)	# tmp138, qout
.L52:
	.loc 1 543 0
	movq	-8(%rbp), %rax	# b, tmp139
	movq	80(%rax), %rax	# b_45->aux, D.11910
	cmpq	$entry_exit_blocks, %rax	#, D.11910
	jne	.L53	#,
	.loc 1 546 0
	movl	-56(%rbp), %eax	# bb, tmp140
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11908
	movq	-96(%rbp), %rax	# avin, tmp141
	addq	%rdx, %rax	# D.11908, D.11911
	movq	(%rax), %rax	# *_53, D.11912
	movq	%rax, %rdi	# D.11912,
	call	sbitmap_zero	#
	jmp	.L54	#
.L53:
	.loc 1 551 0
	movq	-8(%rbp), %rax	# b, tmp142
	movq	$0, 80(%rax)	#, b_45->aux
	.loc 1 552 0
	movl	-56(%rbp), %eax	# bb, tmp143
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11908
	movq	-96(%rbp), %rax	# avin, tmp144
	addq	%rdx, %rax	# D.11908, D.11911
	movq	(%rax), %rax	# *_57, D.11912
	movl	-56(%rbp), %edx	# bb, tmp145
	movq	-88(%rbp), %rcx	# avout, tmp146
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# D.11912,
	call	sbitmap_intersection_of_preds	#
.L54:
	.loc 1 555 0
	movl	-56(%rbp), %eax	# bb, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11908
	movq	-80(%rbp), %rax	# kill, tmp148
	addq	%rdx, %rax	# D.11908, D.11911
	movq	(%rax), %rcx	# *_62, D.11912
	movl	-56(%rbp), %eax	# bb, tmp149
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11908
	movq	-96(%rbp), %rax	# avin, tmp150
	addq	%rdx, %rax	# D.11908, D.11911
	movq	(%rax), %rdx	# *_66, D.11912
	movl	-56(%rbp), %eax	# bb, tmp151
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11908
	movq	-72(%rbp), %rax	# avloc, tmp152
	addq	%rsi, %rax	# D.11908, D.11911
	movq	(%rax), %rsi	# *_71, D.11912
	movl	-56(%rbp), %eax	# bb, tmp153
	cltq
	leaq	0(,%rax,8), %rdi	#, D.11908
	movq	-88(%rbp), %rax	# avout, tmp154
	addq	%rdi, %rax	# D.11908, D.11911
	movq	(%rax), %rax	# *_75, D.11912
	movq	%rax, %rdi	# D.11912,
	call	sbitmap_union_of_diff	#
	testl	%eax, %eax	# D.11913
	je	.L51	#,
	.loc 1 559 0
	movq	-8(%rbp), %rax	# b, tmp155
	movq	40(%rax), %rax	# b_45->succ, tmp156
	movq	%rax, -48(%rbp)	# tmp156, e
	jmp	.L55	#
.L57:
	.loc 1 560 0
	movq	-48(%rbp), %rax	# e, tmp157
	movq	24(%rax), %rax	# e_3->dest, D.11909
	movq	80(%rax), %rax	# _79->aux, D.11910
	testq	%rax, %rax	# D.11910
	jne	.L56	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# e, tmp158
	movq	24(%rax), %rax	# e_3->dest, D.11909
	cmpq	$entry_exit_blocks+112, %rax	#, D.11909
	je	.L56	#,
	.loc 1 562 0 is_stmt 1
	movq	-40(%rbp), %rax	# qin, qin.62
	leaq	8(%rax), %rdx	#, tmp159
	movq	%rdx, -40(%rbp)	# tmp159, qin
	movq	-48(%rbp), %rdx	# e, tmp160
	movq	24(%rdx), %rdx	# e_3->dest, D.11909
	movq	%rdx, (%rax)	# D.11909, *qin.62_82
	.loc 1 563 0
	movq	-48(%rbp), %rax	# e, tmp161
	movq	24(%rax), %rax	# e_3->dest, D.11909
	movq	-48(%rbp), %rdx	# e, tmp162
	movq	%rdx, 80(%rax)	# tmp162, _85->aux
	.loc 1 564 0
	addl	$1, -52(%rbp)	#, qlen
	.loc 1 566 0
	movq	-40(%rbp), %rax	# qin, tmp163
	cmpq	-16(%rbp), %rax	# qend, tmp163
	jb	.L56	#,
	.loc 1 567 0
	movq	-24(%rbp), %rax	# worklist, tmp164
	movq	%rax, -40(%rbp)	# tmp164, qin
.L56:
	.loc 1 559 0
	movq	-48(%rbp), %rax	# e, tmp165
	movq	8(%rax), %rax	# e_3->succ_next, tmp166
	movq	%rax, -48(%rbp)	# tmp166, e
.L55:
	.loc 1 559 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, e
	jne	.L57	#,
.L51:
.LBE6:
	.loc 1 530 0 is_stmt 1 discriminator 1
	cmpl	$0, -52(%rbp)	#, qlen
	jne	.L58	#,
	.loc 1 571 0
	call	clear_aux_for_edges	#
	.loc 1 572 0
	call	clear_aux_for_blocks	#
	.loc 1 573 0
	movq	-24(%rbp), %rax	# worklist, tmp167
	movq	%rax, %rdi	# tmp167,
	call	free	#
	.loc 1 574 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compute_available, .-compute_available
	.type	compute_farthest, @function
compute_farthest:
.LFB8:
	.loc 1 584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# edge_list, edge_list
	movl	%esi, -60(%rbp)	# n_exprs, n_exprs
	movq	%rdx, -72(%rbp)	# st_avout, st_avout
	movq	%rcx, -80(%rbp)	# st_avin, st_avin
	movq	%r8, -88(%rbp)	# st_antin, st_antin
	movq	%r9, -96(%rbp)	# kill, kill
	.loc 1 589 0
	movq	-56(%rbp), %rax	# edge_list, tmp108
	movl	4(%rax), %eax	# edge_list_2(D)->num_edges, tmp109
	movl	%eax, -36(%rbp)	# tmp109, num_edges
	.loc 1 591 0
	movl	-60(%rbp), %eax	# n_exprs, n_exprs.63
	movl	%eax, %edi	# n_exprs.63,
	call	sbitmap_alloc	#
	movq	%rax, -32(%rbp)	# tmp110, difference
	.loc 1 592 0
	movl	-60(%rbp), %eax	# n_exprs, n_exprs.64
	movl	%eax, %edi	# n_exprs.64,
	call	sbitmap_alloc	#
	movq	%rax, -24(%rbp)	# tmp111, temp_bitmap
	.loc 1 594 0
	movl	$0, -40(%rbp)	#, x
	jmp	.L60	#
.L64:
	.loc 1 596 0
	movq	-56(%rbp), %rax	# edge_list, tmp112
	movq	8(%rax), %rax	# edge_list_2(D)->index_to_edge, D.11914
	movl	-40(%rbp), %edx	# x, tmp113
	movslq	%edx, %rdx	# tmp113, D.11915
	salq	$3, %rdx	#, D.11915
	addq	%rdx, %rax	# D.11915, D.11914
	movq	(%rax), %rax	# *_13, D.11916
	movq	16(%rax), %rax	# _14->src, tmp114
	movq	%rax, -16(%rbp)	# tmp114, pred
	.loc 1 597 0
	movq	-56(%rbp), %rax	# edge_list, tmp115
	movq	8(%rax), %rax	# edge_list_2(D)->index_to_edge, D.11914
	movl	-40(%rbp), %edx	# x, tmp116
	movslq	%edx, %rdx	# tmp116, D.11915
	salq	$3, %rdx	#, D.11915
	addq	%rdx, %rax	# D.11915, D.11914
	movq	(%rax), %rax	# *_19, D.11916
	movq	24(%rax), %rax	# _20->dest, tmp117
	movq	%rax, -8(%rbp)	# tmp117, succ
	.loc 1 598 0
	cmpq	$entry_exit_blocks+112, -8(%rbp)	#, succ
	jne	.L61	#,
	.loc 1 599 0
	movq	-16(%rbp), %rax	# pred, tmp118
	movl	88(%rax), %eax	# pred_15->index, D.11917
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11915
	movq	-72(%rbp), %rax	# st_avout, tmp119
	addq	%rdx, %rax	# D.11915, D.11918
	movq	(%rax), %rdx	# *_26, D.11919
	movl	-40(%rbp), %eax	# x, tmp120
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11915
	movq	16(%rbp), %rax	# farthest, tmp121
	addq	%rcx, %rax	# D.11915, D.11918
	movq	(%rax), %rax	# *_31, D.11919
	movq	%rdx, %rsi	# D.11919,
	movq	%rax, %rdi	# D.11919,
	call	sbitmap_copy	#
	jmp	.L62	#
.L61:
	.loc 1 602 0
	cmpq	$entry_exit_blocks, -16(%rbp)	#, pred
	jne	.L63	#,
	.loc 1 603 0
	movl	-40(%rbp), %eax	# x, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11915
	movq	16(%rbp), %rax	# farthest, tmp123
	addq	%rdx, %rax	# D.11915, D.11918
	movq	(%rax), %rax	# *_35, D.11919
	movq	%rax, %rdi	# D.11919,
	call	sbitmap_zero	#
	jmp	.L62	#
.L63:
	.loc 1 607 0
	movq	-8(%rbp), %rax	# succ, tmp124
	movl	88(%rax), %eax	# succ_21->index, D.11917
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11915
	movq	-88(%rbp), %rax	# st_antin, tmp125
	addq	%rdx, %rax	# D.11915, D.11918
	.loc 1 606 0
	movq	(%rax), %rdx	# *_41, D.11919
	movq	-16(%rbp), %rax	# pred, tmp126
	movl	88(%rax), %eax	# pred_15->index, D.11917
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11915
	movq	-72(%rbp), %rax	# st_avout, tmp127
	addq	%rcx, %rax	# D.11915, D.11918
	movq	(%rax), %rcx	# *_46, D.11919
	movq	-32(%rbp), %rax	# difference, tmp128
	movq	%rcx, %rsi	# D.11919,
	movq	%rax, %rdi	# tmp128,
	call	sbitmap_difference	#
	.loc 1 608 0
	movq	-8(%rbp), %rax	# succ, tmp129
	movl	88(%rax), %eax	# succ_21->index, D.11917
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11915
	movq	-80(%rbp), %rax	# st_avin, tmp130
	addq	%rdx, %rax	# D.11915, D.11918
	movq	(%rax), %rdx	# *_52, D.11919
	movq	-24(%rbp), %rax	# temp_bitmap, tmp131
	movq	%rdx, %rsi	# D.11919,
	movq	%rax, %rdi	# tmp131,
	call	sbitmap_not	#
	.loc 1 610 0
	movq	-8(%rbp), %rax	# succ, tmp132
	movl	88(%rax), %eax	# succ_21->index, D.11917
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11915
	movq	-96(%rbp), %rax	# kill, tmp133
	addq	%rdx, %rax	# D.11915, D.11918
	.loc 1 609 0
	movq	(%rax), %rdx	# *_58, D.11919
	movl	-40(%rbp), %eax	# x, tmp134
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11915
	movq	16(%rbp), %rax	# farthest, tmp135
	addq	%rcx, %rax	# D.11915, D.11918
	movq	(%rax), %rax	# *_62, D.11919
	movq	-24(%rbp), %rcx	# temp_bitmap, tmp136
	movq	-32(%rbp), %rsi	# difference, tmp137
	movq	%rax, %rdi	# D.11919,
	call	sbitmap_a_and_b_or_c	#
.L62:
	.loc 1 594 0
	addl	$1, -40(%rbp)	#, x
.L60:
	.loc 1 594 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# x, tmp138
	cmpl	-36(%rbp), %eax	# num_edges, tmp138
	jl	.L64	#,
	.loc 1 615 0 is_stmt 1
	movq	-24(%rbp), %rax	# temp_bitmap, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free	#
	.loc 1 616 0
	movq	-32(%rbp), %rax	# difference, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free	#
	.loc 1 617 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compute_farthest, .-compute_farthest
	.type	compute_nearerout, @function
compute_nearerout:
.LFB9:
	.loc 1 628 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# edge_list, edge_list
	movq	%rsi, -80(%rbp)	# farthest, farthest
	movq	%rdx, -88(%rbp)	# st_avloc, st_avloc
	movq	%rcx, -96(%rbp)	# nearer, nearer
	movq	%r8, -104(%rbp)	# nearerout, nearerout
	.loc 1 633 0
	movq	-72(%rbp), %rax	# edge_list, tmp150
	movl	4(%rax), %eax	# edge_list_11(D)->num_edges, tmp151
	movl	%eax, -44(%rbp)	# tmp151, num_edges
	.loc 1 639 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.65
	addl	$1, %eax	#, D.11920
	cltq
	salq	$3, %rax	#, D.11921
	.loc 1 638 0
	movq	%rax, %rdi	# D.11921,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp152, worklist
	movq	-24(%rbp), %rax	# worklist, tmp153
	movq	%rax, -32(%rbp)	# tmp153, tos
	.loc 1 643 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L66	#
.L67:
	.loc 1 644 0 discriminator 2
	movq	-72(%rbp), %rax	# edge_list, tmp154
	movq	8(%rax), %rax	# edge_list_11(D)->index_to_edge, D.11922
	movl	-48(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.11921
	salq	$3, %rdx	#, D.11921
	addq	%rdx, %rax	# D.11921, D.11922
	movq	(%rax), %rax	# *_23, D.11923
	movl	-48(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, D.11921
	movq	%rdx, 40(%rax)	# D.11924, _24->aux
	.loc 1 643 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L66:
	.loc 1 643 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp157
	cmpl	-44(%rbp), %eax	# num_edges, tmp157
	jl	.L67	#,
	.loc 1 647 0 is_stmt 1
	movl	-44(%rbp), %edx	# num_edges, num_edges.66
	movq	-96(%rbp), %rax	# nearer, tmp158
	movl	%edx, %esi	# num_edges.66,
	movq	%rax, %rdi	# tmp158,
	call	sbitmap_vector_ones	#
	.loc 1 653 0
	movq	entry_exit_blocks+144(%rip), %rax	# entry_exit_blocks[1].pred, tmp159
	movq	%rax, -40(%rbp)	# tmp159, e
	jmp	.L68	#
.L69:
	.loc 1 654 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp160
	movq	40(%rax), %rax	# e_3->aux, D.11924
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-80(%rbp), %rax	# farthest, tmp161
	addq	%rdx, %rax	# D.11921, D.11925
	movq	(%rax), %rdx	# *_35, D.11926
	movq	-40(%rbp), %rax	# e, tmp162
	movq	40(%rax), %rax	# e_3->aux, D.11924
	leaq	0(,%rax,8), %rcx	#, D.11921
	movq	-96(%rbp), %rax	# nearer, tmp163
	addq	%rcx, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_40, D.11926
	movq	%rdx, %rsi	# D.11926,
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_copy	#
	.loc 1 653 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp164
	movq	(%rax), %rax	# e_3->pred_next, tmp165
	movq	%rax, -40(%rbp)	# tmp165, e
.L68:
	.loc 1 653 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L69	#,
	.loc 1 658 0 is_stmt 1
	movl	$0, -52(%rbp)	#, bb
	jmp	.L70	#
.L71:
.LBB7:
	.loc 1 660 0 discriminator 2
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.67
	movl	-52(%rbp), %edx	# bb, tmp167
	movslq	%edx, %rdx	# tmp167, tmp166
	addq	$4, %rdx	#, tmp168
	movq	(%rax,%rdx,8), %rax	# basic_block_info.67_45->data.bb, tmp169
	movq	%rax, -16(%rbp)	# tmp169, b
	.loc 1 661 0 discriminator 2
	movq	-32(%rbp), %rax	# tos, tos.68
	leaq	8(%rax), %rdx	#, tmp170
	movq	%rdx, -32(%rbp)	# tmp170, tos
	movq	-16(%rbp), %rdx	# b, tmp171
	movq	%rdx, (%rax)	# tmp171, *tos.68_47
	.loc 1 662 0 discriminator 2
	movq	-16(%rbp), %rax	# b, tmp172
	movq	-16(%rbp), %rdx	# b, tmp173
	movq	%rdx, 80(%rax)	# tmp173, b_46->aux
.LBE7:
	.loc 1 658 0 discriminator 2
	addl	$1, -52(%rbp)	#, bb
.L70:
	.loc 1 658 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.69
	cmpl	%eax, -52(%rbp)	# n_basic_blocks.69, bb
	jl	.L71	#,
	.loc 1 666 0 is_stmt 1
	jmp	.L72	#
.L78:
.LBB8:
	.loc 1 669 0
	subq	$8, -32(%rbp)	#, tos
	movq	-32(%rbp), %rax	# tos, tmp174
	movq	(%rax), %rax	# *tos_50, tmp175
	movq	%rax, -8(%rbp)	# tmp175, b
	.loc 1 670 0
	movq	-8(%rbp), %rax	# b, tmp176
	movq	$0, 80(%rax)	#, b_51->aux
	.loc 1 673 0
	movq	-8(%rbp), %rax	# b, tmp177
	movl	88(%rax), %eax	# b_51->index, tmp178
	movl	%eax, -52(%rbp)	# tmp178, bb
	.loc 1 674 0
	movl	-52(%rbp), %eax	# bb, tmp179
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp180
	addq	%rdx, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_56, D.11926
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_ones	#
	.loc 1 675 0
	movq	-8(%rbp), %rax	# b, tmp181
	movq	40(%rax), %rax	# b_51->succ, tmp182
	movq	%rax, -40(%rbp)	# tmp182, e
	jmp	.L73	#
.L74:
	.loc 1 677 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp183
	movq	40(%rax), %rax	# e_4->aux, D.11924
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-96(%rbp), %rax	# nearer, tmp184
	addq	%rdx, %rax	# D.11921, D.11925
	.loc 1 676 0 discriminator 2
	movq	(%rax), %rdx	# *_62, D.11926
	movl	-52(%rbp), %eax	# bb, tmp185
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp186
	addq	%rcx, %rax	# D.11921, D.11925
	movq	(%rax), %rcx	# *_66, D.11926
	movl	-52(%rbp), %eax	# bb, tmp187
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp188
	addq	%rsi, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_70, D.11926
	movq	%rcx, %rsi	# D.11926,
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_a_and_b	#
	.loc 1 675 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp189
	movq	8(%rax), %rax	# e_4->succ_next, tmp190
	movq	%rax, -40(%rbp)	# tmp190, e
.L73:
	.loc 1 675 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L74	#,
	.loc 1 680 0 is_stmt 1
	movq	-8(%rbp), %rax	# b, tmp191
	movq	32(%rax), %rax	# b_51->pred, tmp192
	movq	%rax, -40(%rbp)	# tmp192, e
	jmp	.L75	#
.L77:
	.loc 1 684 0
	movq	-40(%rbp), %rax	# e, tmp193
	movq	24(%rax), %rax	# e_5->dest, D.11927
	movl	88(%rax), %eax	# _74->index, D.11920
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-88(%rbp), %rax	# st_avloc, tmp194
	addq	%rdx, %rax	# D.11921, D.11925
	.loc 1 681 0
	movq	(%rax), %rcx	# *_79, D.11926
	.loc 1 683 0
	movq	-40(%rbp), %rax	# e, tmp195
	movq	24(%rax), %rax	# e_5->dest, D.11927
	movl	88(%rax), %eax	# _81->index, D.11920
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp196
	addq	%rdx, %rax	# D.11921, D.11925
	.loc 1 681 0
	movq	(%rax), %rdx	# *_85, D.11926
	.loc 1 682 0
	movq	-40(%rbp), %rax	# e, tmp197
	movq	40(%rax), %rax	# e_5->aux, D.11924
	leaq	0(,%rax,8), %rsi	#, D.11921
	movq	-80(%rbp), %rax	# farthest, tmp198
	addq	%rsi, %rax	# D.11921, D.11925
	.loc 1 681 0
	movq	(%rax), %rsi	# *_90, D.11926
	movq	-40(%rbp), %rax	# e, tmp199
	movq	40(%rax), %rax	# e_5->aux, D.11924
	leaq	0(,%rax,8), %rdi	#, D.11921
	movq	-96(%rbp), %rax	# nearer, tmp200
	addq	%rdi, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_95, D.11926
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_union_of_diff	#
	testl	%eax, %eax	# D.11920
	je	.L76	#,
	.loc 1 687 0
	movq	-40(%rbp), %rax	# e, tmp201
	movq	16(%rax), %rax	# e_5->src, D.11927
	cmpq	$entry_exit_blocks, %rax	#, D.11927
	je	.L76	#,
	.loc 1 687 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# e, tmp202
	movq	16(%rax), %rax	# e_5->src, D.11927
	movq	80(%rax), %rax	# _99->aux, D.11924
	testq	%rax, %rax	# D.11924
	jne	.L76	#,
	.loc 1 689 0 is_stmt 1
	movq	-32(%rbp), %rax	# tos, tos.70
	leaq	8(%rax), %rdx	#, tmp203
	movq	%rdx, -32(%rbp)	# tmp203, tos
	movq	-40(%rbp), %rdx	# e, tmp204
	movq	16(%rdx), %rdx	# e_5->src, D.11927
	movq	%rdx, (%rax)	# D.11927, *tos.70_101
	.loc 1 690 0
	movq	-40(%rbp), %rax	# e, tmp205
	movq	16(%rax), %rax	# e_5->src, D.11927
	movq	-40(%rbp), %rdx	# e, tmp206
	movq	%rdx, 80(%rax)	# tmp206, _104->aux
.L76:
	.loc 1 680 0
	movq	-40(%rbp), %rax	# e, tmp207
	movq	(%rax), %rax	# e_5->pred_next, tmp208
	movq	%rax, -40(%rbp)	# tmp208, e
.L75:
	.loc 1 680 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L77	#,
.L72:
.LBE8:
	.loc 1 666 0 is_stmt 1 discriminator 1
	movq	-32(%rbp), %rax	# tos, tmp209
	cmpq	-24(%rbp), %rax	# worklist, tmp209
	jne	.L78	#,
	.loc 1 697 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp210
	addq	%rdx, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_109, D.11926
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_ones	#
	.loc 1 698 0
	movq	entry_exit_blocks+40(%rip), %rax	# entry_exit_blocks[0].succ, tmp211
	movq	%rax, -40(%rbp)	# tmp211, e
	jmp	.L79	#
.L80:
	.loc 1 701 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp212
	movq	40(%rax), %rax	# e_6->aux, D.11924
	leaq	0(,%rax,8), %rdx	#, D.11921
	movq	-96(%rbp), %rax	# nearer, tmp213
	addq	%rdx, %rax	# D.11921, D.11925
	.loc 1 699 0 discriminator 2
	movq	(%rax), %rdx	# *_115, D.11926
	.loc 1 700 0 discriminator 2
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.72
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp214
	addq	%rcx, %rax	# D.11921, D.11925
	.loc 1 699 0 discriminator 2
	movq	(%rax), %rcx	# *_120, D.11926
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.73
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11921
	movq	-104(%rbp), %rax	# nearerout, tmp215
	addq	%rsi, %rax	# D.11921, D.11925
	movq	(%rax), %rax	# *_125, D.11926
	movq	%rcx, %rsi	# D.11926,
	movq	%rax, %rdi	# D.11926,
	call	sbitmap_a_and_b	#
	.loc 1 698 0 discriminator 2
	movq	-40(%rbp), %rax	# e, tmp216
	movq	8(%rax), %rax	# e_6->succ_next, tmp217
	movq	%rax, -40(%rbp)	# tmp217, e
.L79:
	.loc 1 698 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, e
	jne	.L80	#,
	.loc 1 703 0 is_stmt 1
	call	clear_aux_for_edges	#
	.loc 1 704 0
	movq	-32(%rbp), %rax	# tos, tmp218
	movq	%rax, %rdi	# tmp218,
	call	free	#
	.loc 1 705 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	compute_nearerout, .-compute_nearerout
	.type	compute_rev_insert_delete, @function
compute_rev_insert_delete:
.LFB10:
	.loc 1 714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# edge_list, edge_list
	movq	%rsi, -32(%rbp)	# st_avloc, st_avloc
	movq	%rdx, -40(%rbp)	# nearer, nearer
	movq	%rcx, -48(%rbp)	# nearerout, nearerout
	movq	%r8, -56(%rbp)	# insert, insert
	movq	%r9, -64(%rbp)	# delete, delete
	.loc 1 717 0
	movl	$0, -12(%rbp)	#, x
	jmp	.L82	#
.L83:
	.loc 1 718 0 discriminator 2
	movl	-12(%rbp), %eax	# x, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11928
	movq	-48(%rbp), %rax	# nearerout, tmp105
	addq	%rdx, %rax	# D.11928, D.11929
	movq	(%rax), %rdx	# *_8, D.11930
	movl	-12(%rbp), %eax	# x, tmp106
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11928
	movq	-32(%rbp), %rax	# st_avloc, tmp107
	addq	%rcx, %rax	# D.11928, D.11929
	movq	(%rax), %rcx	# *_13, D.11930
	movl	-12(%rbp), %eax	# x, tmp108
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11928
	movq	-64(%rbp), %rax	# delete, tmp109
	addq	%rsi, %rax	# D.11928, D.11929
	movq	(%rax), %rax	# *_18, D.11930
	movq	%rcx, %rsi	# D.11930,
	movq	%rax, %rdi	# D.11930,
	call	sbitmap_difference	#
	.loc 1 717 0 discriminator 2
	addl	$1, -12(%rbp)	#, x
.L82:
	.loc 1 717 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.74
	cmpl	%eax, -12(%rbp)	# n_basic_blocks.74, x
	jl	.L83	#,
	.loc 1 720 0 is_stmt 1
	movl	$0, -12(%rbp)	#, x
	jmp	.L84	#
.L87:
.LBB9:
	.loc 1 722 0
	movq	-24(%rbp), %rax	# edge_list, tmp110
	movq	8(%rax), %rax	# edge_list_22(D)->index_to_edge, D.11932
	movl	-12(%rbp), %edx	# x, tmp111
	movslq	%edx, %rdx	# tmp111, D.11928
	salq	$3, %rdx	#, D.11928
	addq	%rdx, %rax	# D.11928, D.11932
	movq	(%rax), %rax	# *_27, D.11933
	movq	16(%rax), %rax	# _28->src, tmp112
	movq	%rax, -8(%rbp)	# tmp112, b
	.loc 1 723 0
	cmpq	$entry_exit_blocks, -8(%rbp)	#, b
	jne	.L85	#,
	.loc 1 724 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.75
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11928
	movq	-48(%rbp), %rax	# nearerout, tmp113
	addq	%rdx, %rax	# D.11928, D.11929
	movq	(%rax), %rdx	# *_33, D.11930
	movl	-12(%rbp), %eax	# x, tmp114
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11928
	movq	-40(%rbp), %rax	# nearer, tmp115
	addq	%rcx, %rax	# D.11928, D.11929
	movq	(%rax), %rcx	# *_38, D.11930
	movl	-12(%rbp), %eax	# x, tmp116
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11928
	movq	-56(%rbp), %rax	# insert, tmp117
	addq	%rsi, %rax	# D.11928, D.11929
	movq	(%rax), %rax	# *_43, D.11930
	movq	%rcx, %rsi	# D.11930,
	movq	%rax, %rdi	# D.11930,
	call	sbitmap_difference	#
	jmp	.L86	#
.L85:
	.loc 1 726 0
	movq	-8(%rbp), %rax	# b, tmp118
	movl	88(%rax), %eax	# b_29->index, D.11931
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11928
	movq	-48(%rbp), %rax	# nearerout, tmp119
	addq	%rdx, %rax	# D.11928, D.11929
	movq	(%rax), %rdx	# *_48, D.11930
	movl	-12(%rbp), %eax	# x, tmp120
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11928
	movq	-40(%rbp), %rax	# nearer, tmp121
	addq	%rcx, %rax	# D.11928, D.11929
	movq	(%rax), %rcx	# *_52, D.11930
	movl	-12(%rbp), %eax	# x, tmp122
	cltq
	leaq	0(,%rax,8), %rsi	#, D.11928
	movq	-56(%rbp), %rax	# insert, tmp123
	addq	%rsi, %rax	# D.11928, D.11929
	movq	(%rax), %rax	# *_56, D.11930
	movq	%rcx, %rsi	# D.11930,
	movq	%rax, %rdi	# D.11930,
	call	sbitmap_difference	#
.L86:
.LBE9:
	.loc 1 720 0
	addl	$1, -12(%rbp)	#, x
.L84:
	.loc 1 720 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# edge_list, tmp124
	movl	4(%rax), %eax	# edge_list_22(D)->num_edges, D.11931
	cmpl	-12(%rbp), %eax	# x, D.11931
	jg	.L87	#,
	.loc 1 728 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	compute_rev_insert_delete, .-compute_rev_insert_delete
	.globl	pre_edge_rev_lcm
	.type	pre_edge_rev_lcm, @function
pre_edge_rev_lcm:
.LFB11:
	.loc 1 746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -88(%rbp)	# file, file
	movl	%esi, -92(%rbp)	# n_exprs, n_exprs
	movq	%rdx, -104(%rbp)	# transp, transp
	movq	%rcx, -112(%rbp)	# st_avloc, st_avloc
	movq	%r8, -120(%rbp)	# st_antloc, st_antloc
	movq	%r9, -128(%rbp)	# kill, kill
	.loc 1 753 0
	call	create_edge_list	#
	movq	%rax, -64(%rbp)	# tmp94, edge_list
	.loc 1 754 0
	movq	-64(%rbp), %rax	# edge_list, tmp95
	movl	4(%rax), %eax	# edge_list_1->num_edges, tmp96
	movl	%eax, -68(%rbp)	# tmp96, num_edges
	.loc 1 756 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.76
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.77
	movl	%edx, %esi	# n_exprs.76,
	movl	%eax, %edi	# n_basic_blocks.78,
	call	sbitmap_vector_alloc	#
	movq	%rax, -56(%rbp)	# tmp97, st_antin
	.loc 1 757 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.79
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.80
	movl	%edx, %esi	# n_exprs.79,
	movl	%eax, %edi	# n_basic_blocks.81,
	call	sbitmap_vector_alloc	#
	movq	%rax, -48(%rbp)	# tmp98, st_antout
	.loc 1 758 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.82
	movl	%eax, %edx	# n_basic_blocks.82, n_basic_blocks.83
	movq	-56(%rbp), %rax	# st_antin, tmp99
	movl	%edx, %esi	# n_basic_blocks.83,
	movq	%rax, %rdi	# tmp99,
	call	sbitmap_vector_zero	#
	.loc 1 759 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.84
	movl	%eax, %edx	# n_basic_blocks.84, n_basic_blocks.85
	movq	-48(%rbp), %rax	# st_antout, tmp100
	movl	%edx, %esi	# n_basic_blocks.85,
	movq	%rax, %rdi	# tmp100,
	call	sbitmap_vector_zero	#
	.loc 1 760 0
	movq	-48(%rbp), %rcx	# st_antout, tmp101
	movq	-56(%rbp), %rdx	# st_antin, tmp102
	movq	-104(%rbp), %rsi	# transp, tmp103
	movq	-120(%rbp), %rax	# st_antloc, tmp104
	movq	%rax, %rdi	# tmp104,
	call	compute_antinout_edge	#
	.loc 1 763 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.86
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.87
	movl	%edx, %esi	# n_exprs.86,
	movl	%eax, %edi	# n_basic_blocks.88,
	call	sbitmap_vector_alloc	#
	movq	%rax, -40(%rbp)	# tmp105, st_avout
	.loc 1 764 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.89
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.90
	movl	%edx, %esi	# n_exprs.89,
	movl	%eax, %edi	# n_basic_blocks.91,
	call	sbitmap_vector_alloc	#
	movq	%rax, -32(%rbp)	# tmp106, st_avin
	.loc 1 765 0
	movq	-32(%rbp), %rcx	# st_avin, tmp107
	movq	-40(%rbp), %rdx	# st_avout, tmp108
	movq	-128(%rbp), %rsi	# kill, tmp109
	movq	-112(%rbp), %rax	# st_avloc, tmp110
	movq	%rax, %rdi	# tmp110,
	call	compute_available	#
	.loc 1 791 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.92
	movl	-68(%rbp), %eax	# num_edges, num_edges.93
	movl	%edx, %esi	# n_exprs.92,
	movl	%eax, %edi	# num_edges.93,
	call	sbitmap_vector_alloc	#
	movq	%rax, -24(%rbp)	# tmp111, farthest
	.loc 1 792 0
	movq	-128(%rbp), %r9	# kill, tmp112
	movq	-56(%rbp), %r8	# st_antin, tmp113
	movq	-32(%rbp), %rcx	# st_avin, tmp114
	movq	-40(%rbp), %rdx	# st_avout, tmp115
	movl	-92(%rbp), %esi	# n_exprs, tmp116
	movq	-64(%rbp), %rax	# edge_list, tmp117
	movq	-24(%rbp), %rdi	# farthest, tmp118
	movq	%rdi, (%rsp)	# tmp118,
	movq	%rax, %rdi	# tmp117,
	call	compute_farthest	#
	.loc 1 800 0
	movq	-56(%rbp), %rax	# st_antin, tmp119
	movq	%rax, %rdi	# tmp119,
	call	free	#
	.loc 1 801 0
	movq	-48(%rbp), %rax	# st_antout, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free	#
	.loc 1 803 0
	movq	-32(%rbp), %rax	# st_avin, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free	#
	.loc 1 804 0
	movq	-40(%rbp), %rax	# st_avout, tmp122
	movq	%rax, %rdi	# tmp122,
	call	free	#
	.loc 1 806 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.94
	movl	-68(%rbp), %eax	# num_edges, num_edges.95
	movl	%edx, %esi	# n_exprs.94,
	movl	%eax, %edi	# num_edges.95,
	call	sbitmap_vector_alloc	#
	movq	%rax, -16(%rbp)	# tmp123, nearer
	.loc 1 809 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.96
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.97
	addl	$1, %eax	#, D.11934
	movl	%edx, %esi	# n_exprs.96,
	movl	%eax, %edi	# D.11935,
	call	sbitmap_vector_alloc	#
	movq	%rax, -8(%rbp)	# tmp124, nearerout
	.loc 1 810 0
	movq	-8(%rbp), %rdi	# nearerout, tmp125
	movq	-16(%rbp), %rcx	# nearer, tmp126
	movq	-112(%rbp), %rdx	# st_avloc, tmp127
	movq	-24(%rbp), %rsi	# farthest, tmp128
	movq	-64(%rbp), %rax	# edge_list, tmp129
	movq	%rdi, %r8	# tmp125,
	movq	%rax, %rdi	# tmp129,
	call	compute_nearerout	#
	.loc 1 821 0
	movq	-24(%rbp), %rax	# farthest, tmp130
	movq	%rax, %rdi	# tmp130,
	call	free	#
	.loc 1 823 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.98
	movl	-68(%rbp), %eax	# num_edges, num_edges.99
	movl	%edx, %esi	# n_exprs.98,
	movl	%eax, %edi	# num_edges.99,
	call	sbitmap_vector_alloc	#
	movq	16(%rbp), %rdx	# insert, tmp131
	movq	%rax, (%rdx)	# D.11936, *insert_42(D)
	.loc 1 824 0
	movl	-92(%rbp), %edx	# n_exprs, n_exprs.100
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.101
	movl	%edx, %esi	# n_exprs.100,
	movl	%eax, %edi	# n_basic_blocks.102,
	call	sbitmap_vector_alloc	#
	movq	24(%rbp), %rdx	# delete, tmp132
	movq	%rax, (%rdx)	# D.11936, *delete_47(D)
	.loc 1 825 0
	movq	24(%rbp), %rax	# delete, tmp133
	movq	(%rax), %r8	# *delete_47(D), D.11936
	movq	16(%rbp), %rax	# insert, tmp134
	movq	(%rax), %rdi	# *insert_42(D), D.11936
	movq	-8(%rbp), %rcx	# nearerout, tmp135
	movq	-16(%rbp), %rdx	# nearer, tmp136
	movq	-112(%rbp), %rsi	# st_avloc, tmp137
	movq	-64(%rbp), %rax	# edge_list, tmp138
	movq	%r8, %r9	# D.11936,
	movq	%rdi, %r8	# D.11936,
	movq	%rax, %rdi	# tmp138,
	call	compute_rev_insert_delete	#
	.loc 1 828 0
	movq	-8(%rbp), %rax	# nearerout, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free	#
	.loc 1 829 0
	movq	-16(%rbp), %rax	# nearer, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free	#
	.loc 1 839 0
	movq	-64(%rbp), %rax	# edge_list, D.11937
	.loc 1 840 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	pre_edge_rev_lcm, .-pre_edge_rev_lcm
	.local	antic
	.comm	antic,8,8
	.local	transp
	.comm	transp,8,8
	.local	comp
	.comm	comp,8,8
	.local	delete
	.comm	delete,8,8
	.local	insert
	.comm	insert,8,8
	.type	new_seginfo, @function
new_seginfo:
.LFB12:
	.loc 1 912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# insn, insn
	movl	%edx, -24(%rbp)	# bb, bb
	movq	%rcx, -40(%rbp)	# regs_live, regs_live
	.loc 1 914 0
	movl	$40, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp61, ptr
	.loc 1 915 0
	movq	-8(%rbp), %rax	# ptr, tmp62
	movl	-20(%rbp), %edx	# mode, tmp63
	movl	%edx, (%rax)	# tmp63, ptr_1->mode
	.loc 1 916 0
	movq	-8(%rbp), %rax	# ptr, tmp64
	movq	-32(%rbp), %rdx	# insn, tmp65
	movq	%rdx, 8(%rax)	# tmp65, ptr_1->insn_ptr
	.loc 1 917 0
	movq	-8(%rbp), %rax	# ptr, tmp66
	movl	-24(%rbp), %edx	# bb, tmp67
	movl	%edx, 16(%rax)	# tmp67, ptr_1->bbnum
	.loc 1 918 0
	movq	-8(%rbp), %rax	# ptr, tmp68
	movq	$0, 24(%rax)	#, ptr_1->next
	.loc 1 919 0
	movq	-8(%rbp), %rax	# ptr, tmp69
	movq	-40(%rbp), %rdx	# regs_live, tmp70
	movq	%rdx, 32(%rax)	# tmp70, ptr_1->regs_live
	.loc 1 920 0
	movq	-8(%rbp), %rax	# ptr, D.11938
	.loc 1 921 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	new_seginfo, .-new_seginfo
	.type	add_seginfo, @function
add_seginfo:
.LFB13:
	.loc 1 931 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# head, head
	movq	%rsi, -32(%rbp)	# info, info
	.loc 1 934 0
	movq	-24(%rbp), %rax	# head, tmp61
	movq	(%rax), %rax	# head_2(D)->seginfo, D.11939
	testq	%rax, %rax	# D.11939
	jne	.L93	#,
	.loc 1 935 0
	movq	-24(%rbp), %rax	# head, tmp62
	movq	-32(%rbp), %rdx	# info, tmp63
	movq	%rdx, (%rax)	# tmp63, head_2(D)->seginfo
	jmp	.L92	#
.L93:
	.loc 1 938 0
	movq	-24(%rbp), %rax	# head, tmp64
	movq	(%rax), %rax	# head_2(D)->seginfo, tmp65
	movq	%rax, -8(%rbp)	# tmp65, ptr
	.loc 1 939 0
	jmp	.L95	#
.L96:
	.loc 1 940 0
	movq	-8(%rbp), %rax	# ptr, tmp66
	movq	24(%rax), %rax	# ptr_1->next, tmp67
	movq	%rax, -8(%rbp)	# tmp67, ptr
.L95:
	.loc 1 939 0 discriminator 1
	movq	-8(%rbp), %rax	# ptr, tmp68
	movq	24(%rax), %rax	# ptr_1->next, D.11939
	testq	%rax, %rax	# D.11939
	jne	.L96	#,
	.loc 1 941 0
	movq	-8(%rbp), %rax	# ptr, tmp69
	movq	-32(%rbp), %rdx	# info, tmp70
	movq	%rdx, 24(%rax)	# tmp70, ptr_1->next
.L92:
	.loc 1 943 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	add_seginfo, .-add_seginfo
	.type	make_preds_opaque, @function
make_preds_opaque:
.LFB14:
	.loc 1 955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# b, b
	movl	%esi, -28(%rbp)	# j, j
	.loc 1 958 0
	movq	-24(%rbp), %rax	# b, tmp91
	movq	32(%rax), %rax	# b_2(D)->pred, tmp92
	movq	%rax, -16(%rbp)	# tmp92, e
	jmp	.L98	#
.L102:
.LBB10:
	.loc 1 960 0
	movq	-16(%rbp), %rax	# e, tmp93
	movq	16(%rax), %rax	# e_1->src, tmp94
	movq	%rax, -8(%rbp)	# tmp94, pb
	.loc 1 962 0
	movq	-16(%rbp), %rax	# e, tmp95
	movq	40(%rax), %rax	# e_1->aux, D.11940
	testq	%rax, %rax	# D.11940
	jne	.L99	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movq	transp(%rip), %rdx	# transp, transp.103
	movq	-8(%rbp), %rax	# pb, tmp96
	movl	88(%rax), %eax	# pb_4->index, D.11941
	cltq
	salq	$3, %rax	#, D.11942
	addq	%rdx, %rax	# transp.103, D.11943
	movq	(%rax), %rax	# *_10, D.11944
	movl	-28(%rbp), %edx	# j, j.104
	shrl	$6, %edx	#, D.11945
	movl	%edx, %edx	# D.11945, tmp97
	addq	$2, %rdx	#, tmp98
	movq	(%rax,%rdx,8), %rdx	# _11->elms, D.11942
	movl	-28(%rbp), %eax	# j, tmp99
	andl	$63, %eax	#, D.11941
	movl	%eax, %ecx	# D.11941, tmp113
	shrq	%cl, %rdx	# tmp113, D.11942
	movq	%rdx, %rax	# D.11942, D.11942
	andl	$1, %eax	#, D.11942
	testq	%rax, %rax	# D.11942
	jne	.L100	#,
.L99:
	.loc 1 963 0 is_stmt 1
	jmp	.L101	#
.L100:
	.loc 1 965 0
	movq	transp(%rip), %rdx	# transp, transp.105
	movq	-8(%rbp), %rax	# pb, tmp100
	movl	88(%rax), %eax	# pb_4->index, D.11941
	cltq
	salq	$3, %rax	#, D.11942
	addq	%rdx, %rax	# transp.105, D.11943
	movq	(%rax), %rdx	# *_23, D.11944
	movl	-28(%rbp), %eax	# j, j.106
	shrl	$6, %eax	#, D.11945
	movq	transp(%rip), %rsi	# transp, transp.107
	movq	-8(%rbp), %rcx	# pb, tmp101
	movl	88(%rcx), %ecx	# pb_4->index, D.11941
	movslq	%ecx, %rcx	# D.11941, D.11942
	salq	$3, %rcx	#, D.11942
	addq	%rsi, %rcx	# transp.107, D.11943
	movq	(%rcx), %rcx	# *_31, D.11944
	movl	%eax, %esi	# D.11945, tmp102
	addq	$2, %rsi	#, tmp103
	movq	(%rcx,%rsi,8), %rsi	# _32->elms, D.11942
	movl	-28(%rbp), %ecx	# j, tmp104
	andl	$63, %ecx	#, D.11941
	movl	$1, %edi	#, tmp105
	salq	%cl, %rdi	# D.11941, D.11942
	movq	%rdi, %rcx	# D.11942, D.11942
	notq	%rcx	# D.11942
	andq	%rsi, %rcx	# D.11942, D.11942
	movl	%eax, %eax	# D.11945, tmp106
	addq	$2, %rax	#, tmp107
	movq	%rcx, (%rdx,%rax,8)	# D.11942, _24->elms
	.loc 1 966 0
	movl	-28(%rbp), %edx	# j, tmp108
	movq	-8(%rbp), %rax	# pb, tmp109
	movl	%edx, %esi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	make_preds_opaque	#
.L101:
.LBE10:
	.loc 1 958 0
	movq	-16(%rbp), %rax	# e, tmp110
	movq	(%rax), %rax	# e_1->pred_next, tmp111
	movq	%rax, -16(%rbp)	# tmp111, e
.L98:
	.loc 1 958 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, e
	jne	.L102	#,
	.loc 1 968 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	make_preds_opaque, .-make_preds_opaque
	.type	reg_dies, @function
reg_dies:
.LFB15:
	.loc 1 976 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# reg, reg
	movq	%rsi, -40(%rbp)	# live, live
	.loc 1 979 0
	movq	-32(%rbp), %rax	# reg, tmp95
	movzwl	(%rax), %eax	# reg_11(D)->code, D.11946
	cmpw	$61, %ax	#, D.11946
	je	.L104	#,
	.loc 1 980 0
	jmp	.L103	#
.L104:
	.loc 1 982 0
	movq	-32(%rbp), %rax	# reg, tmp96
	movl	8(%rax), %eax	# reg_11(D)->fld[0].rtuint, D.11947
	movl	%eax, -12(%rbp)	# D.11947, regno
	.loc 1 983 0
	cmpl	$52, -12(%rbp)	#, regno
	jg	.L103	#,
	.loc 1 984 0
	cmpl	$7, -12(%rbp)	#, regno
	jle	.L106	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, regno
	jle	.L107	#,
.L106:
	.loc 1 984 0 discriminator 2
	cmpl	$20, -12(%rbp)	#, regno
	jle	.L108	#,
	.loc 1 984 0 discriminator 1
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L107	#,
.L108:
	.loc 1 984 0 discriminator 2
	cmpl	$44, -12(%rbp)	#, regno
	jle	.L109	#,
	.loc 1 984 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, regno
	jle	.L107	#,
.L109:
	.loc 1 984 0 discriminator 2
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L110	#,
	.loc 1 984 0 discriminator 1
	cmpl	$36, -12(%rbp)	#, regno
	jg	.L110	#,
.L107:
	movq	-32(%rbp), %rax	# reg, tmp97
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.11948
	movzbl	%al, %eax	# D.11948, D.11949
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.11950
	cmpl	$5, %eax	#, D.11950
	je	.L111	#,
	.loc 1 984 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp99
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.11948
	movzbl	%al, %eax	# D.11948, D.11949
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.11950
	cmpl	$6, %eax	#, D.11950
	jne	.L112	#,
.L111:
	.loc 1 984 0 discriminator 1
	movl	$1, %eax	#, iftmp.109
	jmp	.L113	#
.L112:
	.loc 1 984 0 discriminator 3
	movl	$0, %eax	#, iftmp.109
.L113:
	.loc 1 984 0 discriminator 4
	jmp	.L114	#
.L110:
	.loc 1 984 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp101
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.11948
	cmpb	$18, %al	#, D.11948
	jne	.L115	#,
	.loc 1 984 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.112
	andl	$33554432, %eax	#, D.11949
	testl	%eax, %eax	# D.11949
	je	.L116	#,
	.loc 1 984 0 discriminator 6
	movl	$1, %eax	#, iftmp.111
	jmp	.L114	#
.L116:
	.loc 1 984 0 discriminator 7
	movl	$2, %eax	#, iftmp.111
	jmp	.L114	#
.L115:
	.loc 1 984 0 discriminator 5
	movq	-32(%rbp), %rax	# reg, tmp102
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.11948
	cmpb	$24, %al	#, D.11948
	jne	.L119	#,
	.loc 1 984 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.115
	andl	$33554432, %eax	#, D.11949
	testl	%eax, %eax	# D.11949
	je	.L120	#,
	.loc 1 984 0 discriminator 10
	movl	$3, %eax	#, iftmp.114
	jmp	.L114	#
.L120:
	.loc 1 984 0 discriminator 11
	movl	$5, %eax	#, iftmp.114
	jmp	.L114	#
.L119:
	.loc 1 984 0 discriminator 9
	movq	-32(%rbp), %rax	# reg, tmp103
	movzbl	2(%rax), %eax	# reg_11(D)->mode, D.11948
	movzbl	%al, %eax	# D.11948, D.11949
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.11948
	movzbl	%al, %edx	# D.11948, D.11949
	movl	target_flags(%rip), %eax	# target_flags, target_flags.117
	andl	$33554432, %eax	#, D.11949
	testl	%eax, %eax	# D.11949
	je	.L123	#,
	.loc 1 984 0 discriminator 1
	movl	$8, %eax	#, iftmp.116
	jmp	.L124	#
.L123:
	.loc 1 984 0 discriminator 2
	movl	$4, %eax	#, iftmp.116
.L124:
	.loc 1 984 0 discriminator 3
	addl	%edx, %eax	# D.11949, D.11949
	subl	$1, %eax	#, D.11949
	movl	target_flags(%rip), %edx	# target_flags, target_flags.119
	andl	$33554432, %edx	#, D.11949
	testl	%edx, %edx	# D.11949
	je	.L125	#,
	.loc 1 984 0 discriminator 1
	movl	$8, %ebx	#, iftmp.118
	jmp	.L126	#
.L125:
	.loc 1 984 0 discriminator 2
	movl	$4, %ebx	#, iftmp.118
.L126:
	.loc 1 984 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.118
	subl	$1, %eax	#, iftmp.113
.L114:
	movl	%eax, -16(%rbp)	# iftmp.108, nregs
	jmp	.L127	#
.L128:
	.loc 1 986 0 is_stmt 1
	movl	-16(%rbp), %eax	# nregs, tmp107
	movl	-12(%rbp), %edx	# regno, tmp108
	addl	%edx, %eax	# tmp108, D.11949
	movl	$1, %edx	#, tmp109
	movl	%eax, %ecx	# D.11949, tmp112
	salq	%cl, %rdx	# tmp112, D.11951
	movq	%rdx, %rax	# D.11951, D.11951
	notq	%rax	# D.11951
	andq	%rax, -40(%rbp)	# D.11951, live
	.loc 1 985 0
	subl	$1, -16(%rbp)	#, nregs
.L127:
	.loc 1 984 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, nregs
	jns	.L128	#,
.L103:
	.loc 1 987 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	reg_dies, .-reg_dies
	.type	reg_becomes_live, @function
reg_becomes_live:
.LFB16:
	.loc 1 997 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)	# reg, reg
	movq	%rsi, -40(%rbp)	# setter, setter
	movq	%rdx, -48(%rbp)	# live, live
	.loc 1 1000 0
	movq	-32(%rbp), %rax	# reg, tmp97
	movzwl	(%rax), %eax	# reg_11(D)->code, D.11952
	cmpw	$63, %ax	#, D.11952
	jne	.L130	#,
	.loc 1 1001 0
	movq	-32(%rbp), %rax	# reg, tmp98
	movq	8(%rax), %rax	# reg_11(D)->fld[0].rtx, tmp99
	movq	%rax, -32(%rbp)	# tmp99, reg
.L130:
	.loc 1 1003 0
	movq	-32(%rbp), %rax	# reg, tmp100
	movzwl	(%rax), %eax	# reg_1->code, D.11952
	cmpw	$61, %ax	#, D.11952
	je	.L131	#,
	.loc 1 1004 0
	jmp	.L129	#
.L131:
	.loc 1 1006 0
	movq	-32(%rbp), %rax	# reg, tmp101
	movl	8(%rax), %eax	# reg_1->fld[0].rtuint, D.11953
	movl	%eax, -12(%rbp)	# D.11953, regno
	.loc 1 1007 0
	cmpl	$52, -12(%rbp)	#, regno
	jg	.L129	#,
	.loc 1 1008 0
	cmpl	$7, -12(%rbp)	#, regno
	jle	.L133	#,
	.loc 1 1008 0 is_stmt 0 discriminator 1
	cmpl	$15, -12(%rbp)	#, regno
	jle	.L134	#,
.L133:
	.loc 1 1008 0 discriminator 2
	cmpl	$20, -12(%rbp)	#, regno
	jle	.L135	#,
	.loc 1 1008 0 discriminator 1
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L134	#,
.L135:
	.loc 1 1008 0 discriminator 2
	cmpl	$44, -12(%rbp)	#, regno
	jle	.L136	#,
	.loc 1 1008 0 discriminator 1
	cmpl	$52, -12(%rbp)	#, regno
	jle	.L134	#,
.L136:
	.loc 1 1008 0 discriminator 2
	cmpl	$28, -12(%rbp)	#, regno
	jle	.L137	#,
	.loc 1 1008 0 discriminator 1
	cmpl	$36, -12(%rbp)	#, regno
	jg	.L137	#,
.L134:
	movq	-32(%rbp), %rax	# reg, tmp102
	movzbl	2(%rax), %eax	# reg_1->mode, D.11954
	movzbl	%al, %eax	# D.11954, D.11955
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.11956
	cmpl	$5, %eax	#, D.11956
	je	.L138	#,
	.loc 1 1008 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp104
	movzbl	2(%rax), %eax	# reg_1->mode, D.11954
	movzbl	%al, %eax	# D.11954, D.11955
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.11956
	cmpl	$6, %eax	#, D.11956
	jne	.L139	#,
.L138:
	.loc 1 1008 0 discriminator 1
	movl	$1, %eax	#, iftmp.121
	jmp	.L140	#
.L139:
	.loc 1 1008 0 discriminator 3
	movl	$0, %eax	#, iftmp.121
.L140:
	.loc 1 1008 0 discriminator 4
	jmp	.L141	#
.L137:
	.loc 1 1008 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp106
	movzbl	2(%rax), %eax	# reg_1->mode, D.11954
	cmpb	$18, %al	#, D.11954
	jne	.L142	#,
	.loc 1 1008 0 discriminator 4
	movl	target_flags(%rip), %eax	# target_flags, target_flags.124
	andl	$33554432, %eax	#, D.11955
	testl	%eax, %eax	# D.11955
	je	.L143	#,
	.loc 1 1008 0 discriminator 6
	movl	$1, %eax	#, iftmp.123
	jmp	.L141	#
.L143:
	.loc 1 1008 0 discriminator 7
	movl	$2, %eax	#, iftmp.123
	jmp	.L141	#
.L142:
	.loc 1 1008 0 discriminator 5
	movq	-32(%rbp), %rax	# reg, tmp107
	movzbl	2(%rax), %eax	# reg_1->mode, D.11954
	cmpb	$24, %al	#, D.11954
	jne	.L146	#,
	.loc 1 1008 0 discriminator 8
	movl	target_flags(%rip), %eax	# target_flags, target_flags.127
	andl	$33554432, %eax	#, D.11955
	testl	%eax, %eax	# D.11955
	je	.L147	#,
	.loc 1 1008 0 discriminator 10
	movl	$3, %eax	#, iftmp.126
	jmp	.L141	#
.L147:
	.loc 1 1008 0 discriminator 11
	movl	$5, %eax	#, iftmp.126
	jmp	.L141	#
.L146:
	.loc 1 1008 0 discriminator 9
	movq	-32(%rbp), %rax	# reg, tmp108
	movzbl	2(%rax), %eax	# reg_1->mode, D.11954
	movzbl	%al, %eax	# D.11954, D.11955
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.11954
	movzbl	%al, %edx	# D.11954, D.11955
	movl	target_flags(%rip), %eax	# target_flags, target_flags.129
	andl	$33554432, %eax	#, D.11955
	testl	%eax, %eax	# D.11955
	je	.L150	#,
	.loc 1 1008 0 discriminator 1
	movl	$8, %eax	#, iftmp.128
	jmp	.L151	#
.L150:
	.loc 1 1008 0 discriminator 2
	movl	$4, %eax	#, iftmp.128
.L151:
	.loc 1 1008 0 discriminator 3
	addl	%edx, %eax	# D.11955, D.11955
	subl	$1, %eax	#, D.11955
	movl	target_flags(%rip), %edx	# target_flags, target_flags.131
	andl	$33554432, %edx	#, D.11955
	testl	%edx, %edx	# D.11955
	je	.L152	#,
	.loc 1 1008 0 discriminator 1
	movl	$8, %ebx	#, iftmp.130
	jmp	.L153	#
.L152:
	.loc 1 1008 0 discriminator 2
	movl	$4, %ebx	#, iftmp.130
.L153:
	.loc 1 1008 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.130
	subl	$1, %eax	#, iftmp.125
.L141:
	movl	%eax, -16(%rbp)	# iftmp.120, nregs
	jmp	.L154	#
.L155:
	.loc 1 1010 0 is_stmt 1
	movq	-48(%rbp), %rax	# live, tmp112
	movq	(%rax), %rax	# MEM[(HARD_REG_ELT_TYPE *)live_57(D)], D.11957
	movl	-16(%rbp), %edx	# nregs, tmp113
	movl	-12(%rbp), %ecx	# regno, tmp114
	addl	%ecx, %edx	# tmp114, D.11955
	movl	$1, %esi	#, tmp115
	movl	%edx, %ecx	# D.11955, tmp119
	salq	%cl, %rsi	# tmp119, D.11957
	movq	%rsi, %rdx	# D.11957, D.11957
	orq	%rax, %rdx	# D.11957, D.11957
	movq	-48(%rbp), %rax	# live, tmp116
	movq	%rdx, (%rax)	# D.11957, MEM[(HARD_REG_ELT_TYPE *)live_57(D)]
	.loc 1 1009 0
	subl	$1, -16(%rbp)	#, nregs
.L154:
	.loc 1 1008 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, nregs
	jns	.L155	#,
.L129:
	.loc 1 1011 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	reg_becomes_live, .-reg_becomes_live
	.section	.rodata
.LC0:
	.string	"lcm.c"
	.text
	.globl	optimize_mode_switching
	.type	optimize_mode_switching, @function
optimize_mode_switching:
.LFB17:
	.loc 1 1019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$264, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -248(%rbp)	# file, file
	.loc 1 1022 0
	movl	$0, -196(%rbp)	#, need_commit
	.loc 1 1031 0
	movl	$0, -180(%rbp)	#, max_num_modes
	.loc 1 1032 0
	movb	$0, -225(%rbp)	#, emited
	.loc 1 1039 0
	movl	$0, -200(%rbp)	#, e
	movl	$0, -184(%rbp)	#, n_entities
	jmp	.L157	#
.L159:
	.loc 1 1044 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.132
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.11959,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp309, D.11960
	movl	-184(%rbp), %eax	# n_entities, tmp311
	cltq
	movq	%rdx, -144(%rbp,%rax,8)	# D.11960, bb_info
	.loc 1 1045 0
	movl	-184(%rbp), %eax	# n_entities, n_entities.133
	leal	1(%rax), %edx	#, tmp312
	movl	%edx, -184(%rbp)	# tmp312, n_entities
	cltq
	movl	-200(%rbp), %edx	# e, tmp314
	movl	%edx, -224(%rbp,%rax,4)	# tmp314, entity_map
	.loc 1 1046 0
	movl	$2, %eax	#, D.11958
	cmpl	-180(%rbp), %eax	# max_num_modes, D.11958
	jle	.L158	#,
	.loc 1 1047 0
	movl	$2, -180(%rbp)	#, max_num_modes
.L158:
	.loc 1 1039 0
	subl	$1, -200(%rbp)	#, e
.L157:
	.loc 1 1039 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, e
	jns	.L159	#,
	.loc 1 1055 0 is_stmt 1
	cmpl	$0, -184(%rbp)	#, n_entities
	jne	.L160	#,
	.loc 1 1056 0
	movl	$0, %eax	#, D.11958
	jmp	.L228	#
.L160:
	.loc 1 1073 0
	movl	-184(%rbp), %edx	# n_entities, n_entities.134
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.135
	movl	%edx, %esi	# n_entities.134,
	movl	%eax, %edi	# n_basic_blocks.136,
	call	sbitmap_vector_alloc	#
	movq	%rax, antic(%rip)	# antic.137, antic
	.loc 1 1074 0
	movl	-184(%rbp), %edx	# n_entities, n_entities.138
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.139
	movl	%edx, %esi	# n_entities.138,
	movl	%eax, %edi	# n_basic_blocks.140,
	call	sbitmap_vector_alloc	#
	movq	%rax, transp(%rip)	# transp.141, transp
	.loc 1 1075 0
	movl	-184(%rbp), %edx	# n_entities, n_entities.142
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.143
	movl	%edx, %esi	# n_entities.142,
	movl	%eax, %edi	# n_basic_blocks.144,
	call	sbitmap_vector_alloc	#
	movq	%rax, comp(%rip)	# comp.145, comp
	.loc 1 1077 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.146
	movl	%eax, %edx	# n_basic_blocks.146, n_basic_blocks.147
	movq	transp(%rip), %rax	# transp, transp.148
	movl	%edx, %esi	# n_basic_blocks.147,
	movq	%rax, %rdi	# transp.148,
	call	sbitmap_vector_ones	#
	.loc 1 1079 0
	movl	-184(%rbp), %eax	# n_entities, tmp318
	subl	$1, %eax	#, tmp317
	movl	%eax, -188(%rbp)	# tmp317, j
	jmp	.L162	#
.L185:
.LBB11:
	.loc 1 1081 0
	movl	-188(%rbp), %eax	# j, tmp320
	cltq
	movl	-224(%rbp,%rax,4), %eax	# entity_map, tmp321
	movl	%eax, -172(%rbp)	# tmp321, e
	.loc 1 1082 0
	movl	$2, -168(%rbp)	#, no_mode
	.loc 1 1083 0
	movl	-188(%rbp), %eax	# j, tmp323
	cltq
	movq	-144(%rbp,%rax,8), %rax	# bb_info, tmp324
	movq	%rax, -96(%rbp)	# tmp324, info
	.loc 1 1088 0
	movl	$0, -204(%rbp)	#, bb
	jmp	.L163	#
.L184:
.LBB12:
	.loc 1 1091 0
	movl	-168(%rbp), %eax	# no_mode, tmp325
	movl	%eax, -176(%rbp)	# tmp325, last_mode
	.loc 1 1094 0
	movq	$0, -128(%rbp)	#, live_now
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.149
	movl	-204(%rbp), %edx	# bb, tmp327
	movslq	%edx, %rdx	# tmp327, tmp326
	addq	$4, %rdx	#, tmp328
	movq	(%rax,%rdx,8), %rax	# basic_block_info.149_77->data.bb, D.11961
	movq	64(%rax), %rdx	# _78->global_live_at_start, D.11962
	leaq	-128(%rbp), %rax	#, tmp329
	movq	%rdx, %rsi	# D.11962,
	movq	%rax, %rdi	# tmp329,
	call	reg_set_to_hard_reg_set	#
	.loc 1 1096 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.150
	movl	-204(%rbp), %edx	# bb, tmp331
	movslq	%edx, %rdx	# tmp331, tmp330
	addq	$4, %rdx	#, tmp332
	movq	(%rax,%rdx,8), %rax	# basic_block_info.150_80->data.bb, D.11961
	movq	(%rax), %rax	# _81->head, tmp333
	movq	%rax, -120(%rbp)	# tmp333, insn
	jmp	.L164	#
.L182:
	.loc 1 1100 0
	movq	-120(%rbp), %rax	# insn, tmp334
	movzwl	(%rax), %eax	# insn_1->code, D.11964
	movzwl	%ax, %eax	# D.11964, D.11958
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.11965
	cmpb	$105, %al	#, D.11965
	jne	.L165	#,
.LBB13:
	.loc 1 1102 0
	movq	-120(%rbp), %rax	# insn, tmp336
	movzwl	(%rax), %eax	# insn_1->code, D.11964
	cmpw	$34, %ax	#, D.11964
	je	.L166	#,
	.loc 1 1102 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# insn, tmp337
	movzwl	(%rax), %eax	# insn_1->code, D.11964
	cmpw	$32, %ax	#, D.11964
	jne	.L167	#,
	.loc 1 1102 0 discriminator 2
	movq	-120(%rbp), %rax	# insn, tmp338
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.11963
	movq	%rax, %rdi	# D.11963,
	call	asm_noperands	#
	testl	%eax, %eax	# D.11958
	jns	.L166	#,
	.loc 1 1102 0 discriminator 1
	movq	-120(%rbp), %rax	# insn, tmp339
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.11963
	movzwl	(%rax), %eax	# _94->code, D.11964
	cmpw	$40, %ax	#, D.11964
	je	.L166	#,
.L167:
	movq	-120(%rbp), %rax	# insn, tmp340
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.11958
	testl	%eax, %eax	# D.11958
	js	.L168	#,
	movq	-120(%rbp), %rax	# insn, tmp341
	movl	40(%rax), %eax	# insn_1->fld[4].rtint, D.11958
	testl	%eax, %eax	# D.11958
	js	.L169	#,
	jmp	.L170	#
.L168:
	.loc 1 1102 0 discriminator 2
	movq	-120(%rbp), %rax	# insn, tmp342
	movq	%rax, %rdi	# tmp342,
	call	recog_memoized_1	#
	testl	%eax, %eax	# D.11958
	js	.L169	#,
.L170:
	.loc 1 1102 0 discriminator 1
	movq	-120(%rbp), %rax	# insn, tmp343
	movq	%rax, %rdi	# tmp343,
	call	get_attr_type	#
	cmpl	$35, %eax	#, D.11966
	je	.L171	#,
.L169:
	.loc 1 1102 0 discriminator 3
	movl	$2, %eax	#, iftmp.152
	jmp	.L172	#
.L171:
	.loc 1 1102 0 discriminator 1
	movl	$0, %eax	#, iftmp.152
.L172:
	.loc 1 1102 0 discriminator 4
	jmp	.L173	#
.L166:
	.loc 1 1102 0 discriminator 2
	movl	$1, %eax	#, iftmp.151
.L173:
	.loc 1 1102 0 discriminator 3
	movl	%eax, -164(%rbp)	# iftmp.151, mode
	.loc 1 1105 0 is_stmt 1 discriminator 3
	movl	-164(%rbp), %eax	# mode, tmp344
	cmpl	-168(%rbp), %eax	# no_mode, tmp344
	je	.L174	#,
	.loc 1 1105 0 is_stmt 0 discriminator 1
	movl	-164(%rbp), %eax	# mode, tmp345
	cmpl	-176(%rbp), %eax	# last_mode, tmp345
	je	.L174	#,
	.loc 1 1107 0 is_stmt 1
	movl	-164(%rbp), %eax	# mode, tmp346
	movl	%eax, -176(%rbp)	# tmp346, last_mode
	.loc 1 1108 0
	movq	-128(%rbp), %rcx	# live_now, live_now.153
	movl	-204(%rbp), %edx	# bb, tmp347
	movq	-120(%rbp), %rsi	# insn, tmp348
	movl	-164(%rbp), %eax	# mode, tmp349
	movl	%eax, %edi	# tmp349,
	call	new_seginfo	#
	movq	%rax, -88(%rbp)	# tmp350, ptr
	.loc 1 1109 0
	movl	-204(%rbp), %eax	# bb, tmp351
	cltq
	salq	$4, %rax	#, D.11959
	movq	%rax, %rdx	# D.11959, D.11959
	movq	-96(%rbp), %rax	# info, tmp352
	addq	%rax, %rdx	# tmp352, D.11967
	movq	-88(%rbp), %rax	# ptr, tmp353
	movq	%rax, %rsi	# tmp353,
	movq	%rdx, %rdi	# D.11967,
	call	add_seginfo	#
	.loc 1 1110 0
	movq	transp(%rip), %rax	# transp, transp.154
	movl	-204(%rbp), %edx	# bb, tmp354
	movslq	%edx, %rdx	# tmp354, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rdx	# *_114, D.11969
	movl	-188(%rbp), %eax	# j, j.155
	shrl	$6, %eax	#, D.11970
	movq	transp(%rip), %rcx	# transp, transp.156
	movl	-204(%rbp), %esi	# bb, tmp355
	movslq	%esi, %rsi	# tmp355, D.11959
	salq	$3, %rsi	#, D.11959
	addq	%rsi, %rcx	# D.11959, D.11968
	movq	(%rcx), %rcx	# *_121, D.11969
	movl	%eax, %esi	# D.11970, tmp356
	addq	$2, %rsi	#, tmp357
	movq	(%rcx,%rsi,8), %rsi	# _122->elms, D.11959
	movl	-188(%rbp), %ecx	# j, tmp358
	andl	$63, %ecx	#, D.11958
	movl	$1, %edi	#, tmp359
	salq	%cl, %rdi	# D.11958, D.11959
	movq	%rdi, %rcx	# D.11959, D.11959
	notq	%rcx	# D.11959
	andq	%rsi, %rcx	# D.11959, D.11959
	movl	%eax, %eax	# D.11970, tmp360
	addq	$2, %rax	#, tmp361
	movq	%rcx, (%rdx,%rax,8)	# D.11959, _115->elms
.L174:
	.loc 1 1114 0
	movq	-120(%rbp), %rax	# insn, tmp362
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp363
	movq	%rax, -112(%rbp)	# tmp363, link
	jmp	.L175	#
.L177:
	.loc 1 1115 0
	movq	-112(%rbp), %rax	# link, tmp364
	movzbl	2(%rax), %eax	# link_35->mode, D.11971
	cmpb	$1, %al	#, D.11971
	jne	.L176	#,
	.loc 1 1116 0
	movq	-128(%rbp), %rdx	# live_now, live_now.157
	movq	-112(%rbp), %rax	# link, tmp365
	movq	8(%rax), %rax	# link_35->fld[0].rtx, D.11963
	movq	%rdx, %rsi	# live_now.157,
	movq	%rax, %rdi	# D.11963,
	call	reg_dies	#
.L176:
	.loc 1 1114 0
	movq	-112(%rbp), %rax	# link, tmp366
	movq	16(%rax), %rax	# link_35->fld[1].rtx, tmp367
	movq	%rax, -112(%rbp)	# tmp367, link
.L175:
	.loc 1 1114 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, link
	jne	.L177	#,
	.loc 1 1118 0 is_stmt 1
	movq	-120(%rbp), %rax	# insn, tmp368
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.11963
	leaq	-128(%rbp), %rdx	#, tmp369
	movl	$reg_becomes_live, %esi	#,
	movq	%rax, %rdi	# D.11963,
	call	note_stores	#
	.loc 1 1119 0
	movq	-120(%rbp), %rax	# insn, tmp370
	movq	56(%rax), %rax	# insn_1->fld[6].rtx, tmp371
	movq	%rax, -112(%rbp)	# tmp371, link
	jmp	.L178	#
.L180:
	.loc 1 1120 0
	movq	-112(%rbp), %rax	# link, tmp372
	movzbl	2(%rax), %eax	# link_36->mode, D.11971
	cmpb	$10, %al	#, D.11971
	jne	.L179	#,
	.loc 1 1121 0
	movq	-128(%rbp), %rdx	# live_now, live_now.158
	movq	-112(%rbp), %rax	# link, tmp373
	movq	8(%rax), %rax	# link_36->fld[0].rtx, D.11963
	movq	%rdx, %rsi	# live_now.158,
	movq	%rax, %rdi	# D.11963,
	call	reg_dies	#
.L179:
	.loc 1 1119 0
	movq	-112(%rbp), %rax	# link, tmp374
	movq	16(%rax), %rax	# link_36->fld[1].rtx, tmp375
	movq	%rax, -112(%rbp)	# tmp375, link
.L178:
	.loc 1 1119 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, link
	jne	.L180	#,
.L165:
.LBE13:
	.loc 1 1098 0 is_stmt 1
	movq	-120(%rbp), %rax	# insn, tmp376
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp377
	movq	%rax, -120(%rbp)	# tmp377, insn
.L164:
	.loc 1 1096 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, insn
	je	.L181	#,
	.loc 1 1097 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.159
	movl	-204(%rbp), %edx	# bb, tmp379
	movslq	%edx, %rdx	# tmp379, tmp378
	addq	$4, %rdx	#, tmp380
	movq	(%rax,%rdx,8), %rax	# basic_block_info.159_83->data.bb, D.11961
	movq	8(%rax), %rax	# _84->end, D.11963
	movq	24(%rax), %rax	# _85->fld[2].rtx, D.11963
	cmpq	-120(%rbp), %rax	# insn, D.11963
	jne	.L182	#,
.L181:
	.loc 1 1125 0
	movl	-204(%rbp), %eax	# bb, tmp381
	cltq
	salq	$4, %rax	#, D.11959
	movq	%rax, %rdx	# D.11959, D.11959
	movq	-96(%rbp), %rax	# info, tmp382
	addq	%rax, %rdx	# tmp382, D.11967
	movl	-176(%rbp), %eax	# last_mode, tmp383
	movl	%eax, 8(%rdx)	# tmp383, _142->computing
	.loc 1 1127 0
	movl	-176(%rbp), %eax	# last_mode, tmp384
	cmpl	-168(%rbp), %eax	# no_mode, tmp384
	jne	.L183	#,
	.loc 1 1129 0
	movq	-128(%rbp), %rcx	# live_now, live_now.160
	movl	-204(%rbp), %edx	# bb, tmp385
	movq	-120(%rbp), %rsi	# insn, tmp386
	movl	-168(%rbp), %eax	# no_mode, tmp387
	movl	%eax, %edi	# tmp387,
	call	new_seginfo	#
	movq	%rax, -88(%rbp)	# tmp388, ptr
	.loc 1 1130 0
	movl	-204(%rbp), %eax	# bb, tmp389
	cltq
	salq	$4, %rax	#, D.11959
	movq	%rax, %rdx	# D.11959, D.11959
	movq	-96(%rbp), %rax	# info, tmp390
	addq	%rax, %rdx	# tmp390, D.11967
	movq	-88(%rbp), %rax	# ptr, tmp391
	movq	%rax, %rsi	# tmp391,
	movq	%rdx, %rdi	# D.11967,
	call	add_seginfo	#
.L183:
.LBE12:
	.loc 1 1088 0
	addl	$1, -204(%rbp)	#, bb
.L163:
	.loc 1 1088 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.161
	cmpl	%eax, -204(%rbp)	# n_basic_blocks.161, bb
	jl	.L184	#,
.LBE11:
	.loc 1 1079 0 is_stmt 1
	subl	$1, -188(%rbp)	#, j
.L162:
	.loc 1 1079 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, j
	jns	.L185	#,
	.loc 1 1174 0 is_stmt 1
	movl	-184(%rbp), %edx	# n_entities, n_entities.162
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.163
	movl	%edx, %esi	# n_entities.162,
	movl	%eax, %edi	# n_basic_blocks.164,
	call	sbitmap_vector_alloc	#
	movq	%rax, -80(%rbp)	# tmp392, kill
	.loc 1 1175 0
	movl	$0, -192(%rbp)	#, i
	jmp	.L186	#
.L213:
.LBB14:
	.loc 1 1180 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.165
	movl	%eax, %edx	# n_basic_blocks.165, n_basic_blocks.166
	movq	antic(%rip), %rax	# antic, antic.167
	movl	%edx, %esi	# n_basic_blocks.166,
	movq	%rax, %rdi	# antic.167,
	call	sbitmap_vector_zero	#
	.loc 1 1181 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.168
	movl	%eax, %edx	# n_basic_blocks.168, n_basic_blocks.169
	movq	comp(%rip), %rax	# comp, comp.170
	movl	%edx, %esi	# n_basic_blocks.169,
	movq	%rax, %rdi	# comp.170,
	call	sbitmap_vector_zero	#
	.loc 1 1182 0
	movl	-184(%rbp), %eax	# n_entities, tmp396
	subl	$1, %eax	#, tmp395
	movl	%eax, -188(%rbp)	# tmp395, j
	jmp	.L187	#
.L192:
.LBB15:
	.loc 1 1184 0
	movl	-188(%rbp), %eax	# j, tmp398
	cltq
	movl	-192(%rbp), %edx	# i, tmp399
	movl	%edx, -208(%rbp,%rax,4)	# tmp399, current_mode
	movl	-188(%rbp), %eax	# j, tmp401
	cltq
	movl	-208(%rbp,%rax,4), %eax	# current_mode, tmp402
	movl	%eax, -160(%rbp)	# tmp402, m
	.loc 1 1185 0
	movl	-188(%rbp), %eax	# j, tmp404
	cltq
	movq	-144(%rbp,%rax,8), %rax	# bb_info, tmp405
	movq	%rax, -72(%rbp)	# tmp405, info
	.loc 1 1187 0
	movl	$0, -204(%rbp)	#, bb
	jmp	.L188	#
.L191:
	.loc 1 1189 0
	movl	-204(%rbp), %eax	# bb, tmp406
	cltq
	salq	$4, %rax	#, D.11959
	movq	%rax, %rdx	# D.11959, D.11959
	movq	-72(%rbp), %rax	# info, tmp407
	addq	%rdx, %rax	# D.11959, D.11967
	movq	(%rax), %rax	# _168->seginfo, D.11972
	movl	(%rax), %eax	# _169->mode, D.11958
	cmpl	-160(%rbp), %eax	# m, D.11958
	jne	.L189	#,
	.loc 1 1190 0
	movq	antic(%rip), %rax	# antic, antic.171
	movl	-204(%rbp), %edx	# bb, tmp408
	movslq	%edx, %rdx	# tmp408, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rdx	# *_174, D.11969
	movl	-188(%rbp), %eax	# j, j.172
	shrl	$6, %eax	#, D.11970
	movq	antic(%rip), %rcx	# antic, antic.173
	movl	-204(%rbp), %esi	# bb, tmp409
	movslq	%esi, %rsi	# tmp409, D.11959
	salq	$3, %rsi	#, D.11959
	addq	%rsi, %rcx	# D.11959, D.11968
	movq	(%rcx), %rcx	# *_181, D.11969
	movl	%eax, %esi	# D.11970, tmp410
	addq	$2, %rsi	#, tmp411
	movq	(%rcx,%rsi,8), %rsi	# _182->elms, D.11959
	movl	-188(%rbp), %ecx	# j, tmp412
	andl	$63, %ecx	#, D.11958
	movl	$1, %edi	#, tmp413
	salq	%cl, %rdi	# D.11958, D.11959
	movq	%rdi, %rcx	# D.11959, D.11959
	orq	%rsi, %rcx	# D.11959, D.11959
	movl	%eax, %eax	# D.11970, tmp414
	addq	$2, %rax	#, tmp415
	movq	%rcx, (%rdx,%rax,8)	# D.11959, _175->elms
.L189:
	.loc 1 1192 0
	movl	-204(%rbp), %eax	# bb, tmp416
	cltq
	salq	$4, %rax	#, D.11959
	movq	%rax, %rdx	# D.11959, D.11959
	movq	-72(%rbp), %rax	# info, tmp417
	addq	%rdx, %rax	# D.11959, D.11967
	movl	8(%rax), %eax	# _189->computing, D.11958
	cmpl	-160(%rbp), %eax	# m, D.11958
	jne	.L190	#,
	.loc 1 1193 0
	movq	comp(%rip), %rax	# comp, comp.174
	movl	-204(%rbp), %edx	# bb, tmp418
	movslq	%edx, %rdx	# tmp418, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rdx	# *_194, D.11969
	movl	-188(%rbp), %eax	# j, j.175
	shrl	$6, %eax	#, D.11970
	movq	comp(%rip), %rcx	# comp, comp.176
	movl	-204(%rbp), %esi	# bb, tmp419
	movslq	%esi, %rsi	# tmp419, D.11959
	salq	$3, %rsi	#, D.11959
	addq	%rsi, %rcx	# D.11959, D.11968
	movq	(%rcx), %rcx	# *_201, D.11969
	movl	%eax, %esi	# D.11970, tmp420
	addq	$2, %rsi	#, tmp421
	movq	(%rcx,%rsi,8), %rsi	# _202->elms, D.11959
	movl	-188(%rbp), %ecx	# j, tmp422
	andl	$63, %ecx	#, D.11958
	movl	$1, %edi	#, tmp423
	salq	%cl, %rdi	# D.11958, D.11959
	movq	%rdi, %rcx	# D.11959, D.11959
	orq	%rsi, %rcx	# D.11959, D.11959
	movl	%eax, %eax	# D.11970, tmp424
	addq	$2, %rax	#, tmp425
	movq	%rcx, (%rdx,%rax,8)	# D.11959, _195->elms
.L190:
	.loc 1 1187 0
	addl	$1, -204(%rbp)	#, bb
.L188:
	.loc 1 1187 0 is_stmt 0 discriminator 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.177
	cmpl	%eax, -204(%rbp)	# n_basic_blocks.177, bb
	jl	.L191	#,
.LBE15:
	.loc 1 1182 0 is_stmt 1
	subl	$1, -188(%rbp)	#, j
.L187:
	.loc 1 1182 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, j
	jns	.L192	#,
	.loc 1 1200 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.178
	subl	$1, %eax	#, tmp426
	movl	%eax, -204(%rbp)	# tmp426, bb
	jmp	.L193	#
.L194:
	.loc 1 1201 0 discriminator 2
	movq	transp(%rip), %rax	# transp, transp.179
	movl	-204(%rbp), %edx	# bb, tmp427
	movslq	%edx, %rdx	# tmp427, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rdx	# *_214, D.11969
	movl	-204(%rbp), %eax	# bb, tmp428
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11959
	movq	-80(%rbp), %rax	# kill, tmp429
	addq	%rcx, %rax	# D.11959, D.11968
	movq	(%rax), %rax	# *_218, D.11969
	movq	%rdx, %rsi	# D.11969,
	movq	%rax, %rdi	# D.11969,
	call	sbitmap_not	#
	.loc 1 1200 0 discriminator 2
	subl	$1, -204(%rbp)	#, bb
.L193:
	.loc 1 1200 0 is_stmt 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, bb
	jns	.L194	#,
	.loc 1 1202 0 is_stmt 1
	movq	antic(%rip), %rsi	# antic, antic.180
	movq	comp(%rip), %rcx	# comp, comp.181
	movq	transp(%rip), %rdx	# transp, transp.182
	movq	-80(%rbp), %rdi	# kill, tmp430
	movq	-248(%rbp), %rax	# file, tmp431
	movq	$delete, 8(%rsp)	#,
	movq	$insert, (%rsp)	#,
	movq	%rdi, %r9	# tmp430,
	movq	%rsi, %r8	# antic.180,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp431,
	call	pre_edge_lcm	#
	movq	%rax, -64(%rbp)	# tmp432, edge_list
	.loc 1 1205 0
	movl	-184(%rbp), %eax	# n_entities, tmp436
	subl	$1, %eax	#, tmp435
	movl	%eax, -188(%rbp)	# tmp435, j
	jmp	.L195	#
.L212:
.LBB16:
	.loc 1 1208 0
	movl	$2, -156(%rbp)	#, no_mode
	.loc 1 1217 0
	movq	-64(%rbp), %rax	# edge_list, tmp439
	movl	4(%rax), %eax	# edge_list_225->num_edges, D.11958
	subl	$1, %eax	#, tmp440
	movl	%eax, -200(%rbp)	# tmp440, e
	jmp	.L196	#
.L208:
.LBB17:
	.loc 1 1219 0
	movq	-64(%rbp), %rax	# edge_list, tmp441
	movq	8(%rax), %rax	# edge_list_225->index_to_edge, D.11973
	movl	-200(%rbp), %edx	# e, tmp442
	movslq	%edx, %rdx	# tmp442, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11973
	movq	(%rax), %rax	# *_234, tmp443
	movq	%rax, -56(%rbp)	# tmp443, eg
	.loc 1 1225 0
	movq	-56(%rbp), %rax	# eg, tmp444
	movq	$0, 40(%rax)	#, eg_235->aux
	.loc 1 1227 0
	movq	insert(%rip), %rax	# insert, insert.183
	movl	-200(%rbp), %edx	# e, tmp445
	movslq	%edx, %rdx	# tmp445, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rax	# *_239, D.11969
	movl	-188(%rbp), %edx	# j, j.184
	shrl	$6, %edx	#, D.11970
	movl	%edx, %edx	# D.11970, tmp446
	addq	$2, %rdx	#, tmp447
	movq	(%rax,%rdx,8), %rdx	# _240->elms, D.11959
	movl	-188(%rbp), %eax	# j, tmp448
	andl	$63, %eax	#, D.11958
	movl	%eax, %ecx	# D.11958, tmp536
	shrq	%cl, %rdx	# tmp536, D.11959
	movq	%rdx, %rax	# D.11959, D.11959
	andl	$1, %eax	#, D.11959
	testq	%rax, %rax	# D.11959
	jne	.L197	#,
	.loc 1 1228 0
	jmp	.L207	#
.L197:
	.loc 1 1230 0
	movq	-56(%rbp), %rax	# eg, tmp449
	movq	$1, 40(%rax)	#, eg_235->aux
	.loc 1 1232 0
	movl	-188(%rbp), %eax	# j, tmp451
	cltq
	movl	-208(%rbp,%rax,4), %eax	# current_mode, tmp452
	movl	%eax, -152(%rbp)	# tmp452, mode
	.loc 1 1233 0
	movq	-56(%rbp), %rax	# eg, tmp453
	movq	16(%rax), %rax	# eg_235->src, tmp454
	movq	%rax, -48(%rbp)	# tmp454, src_bb
	.loc 1 1235 0
	movq	$0, -128(%rbp)	#, live_at_edge
	movq	-48(%rbp), %rax	# src_bb, tmp455
	movq	72(%rax), %rdx	# src_bb_248->global_live_at_end, D.11962
	leaq	-128(%rbp), %rax	#, tmp456
	movq	%rdx, %rsi	# D.11962,
	movq	%rax, %rdi	# tmp456,
	call	reg_set_to_hard_reg_set	#
	.loc 1 1238 0
	call	start_sequence	#
	.loc 1 1239 0
	cmpl	$0, -152(%rbp)	#, mode
	jne	.L200	#,
	.loc 1 1239 0 is_stmt 0 discriminator 1
	movl	$2, %esi	#,
	movl	$3, %edi	#,
	call	assign_386_stack_local	#
	movq	%rax, %rbx	#, D.11963
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	assign_386_stack_local	#
	movq	%rbx, %rsi	# D.11963,
	movq	%rax, %rdi	# D.11963,
	call	emit_i387_cw_initialization	#
.L200:
	.loc 1 1240 0 is_stmt 1
	call	gen_sequence	#
	movq	%rax, -40(%rbp)	# tmp457, mode_set
	.loc 1 1241 0
	call	end_sequence	#
	.loc 1 1244 0
	movq	-40(%rbp), %rax	# mode_set, tmp458
	movzwl	(%rax), %eax	# mode_set_254->code, D.11964
	cmpw	$24, %ax	#, D.11964
	jne	.L201	#,
	.loc 1 1245 0
	movq	-40(%rbp), %rax	# mode_set, tmp459
	movq	8(%rax), %rax	# mode_set_254->fld[0].rtvec, D.11974
	movl	(%rax), %eax	# _256->num_elem, D.11958
	testl	%eax, %eax	# D.11958
	jne	.L201	#,
	.loc 1 1246 0
	jmp	.L207	#
.L201:
	.loc 1 1250 0
	movq	-56(%rbp), %rax	# eg, tmp460
	movl	48(%rax), %eax	# eg_235->flags, D.11958
	andl	$2, %eax	#, D.11958
	testl	%eax, %eax	# D.11958
	je	.L202	#,
	.loc 1 1252 0
	movb	$1, -225(%rbp)	#, emited
	.loc 1 1253 0
	movq	-48(%rbp), %rax	# src_bb, tmp461
	movq	8(%rax), %rax	# src_bb_248->end, D.11963
	movzwl	(%rax), %eax	# _261->code, D.11964
	cmpw	$33, %ax	#, D.11964
	jne	.L203	#,
	.loc 1 1254 0
	movq	-48(%rbp), %rax	# src_bb, tmp462
	movq	8(%rax), %rdx	# src_bb_248->end, D.11963
	movq	-40(%rbp), %rax	# mode_set, tmp463
	movq	%rdx, %rsi	# D.11963,
	movq	%rax, %rdi	# tmp463,
	call	emit_insn_before	#
	jmp	.L204	#
.L203:
	.loc 1 1266 0
	movq	-48(%rbp), %rax	# src_bb, tmp464
	movq	8(%rax), %rax	# src_bb_248->end, D.11963
	movzwl	(%rax), %eax	# _264->code, D.11964
	cmpw	$32, %ax	#, D.11964
	jne	.L205	#,
	.loc 1 1267 0
	movq	-48(%rbp), %rax	# src_bb, tmp465
	movq	8(%rax), %rdx	# src_bb_248->end, D.11963
	movq	-40(%rbp), %rax	# mode_set, tmp466
	movq	%rdx, %rsi	# D.11963,
	movq	%rax, %rdi	# tmp466,
	call	emit_insn_after	#
	jmp	.L204	#
.L205:
	.loc 1 1269 0
	movl	$__FUNCTION__.10711, %edx	#,
	movl	$1269, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L204:
	.loc 1 1270 0 discriminator 1
	movl	-188(%rbp), %eax	# j, tmp468
	cltq
	movq	-144(%rbp,%rax,8), %rdx	# bb_info, D.11967
	movq	-48(%rbp), %rax	# src_bb, tmp469
	movl	88(%rax), %eax	# src_bb_248->index, D.11958
	cltq
	salq	$4, %rax	#, D.11959
	addq	%rax, %rdx	# D.11959, D.11967
	movl	-152(%rbp), %eax	# mode, tmp470
	movl	%eax, 8(%rdx)	# tmp470, _271->computing
	.loc 1 1271 0 discriminator 1
	movq	transp(%rip), %rdx	# transp, transp.186
	movq	-48(%rbp), %rax	# src_bb, tmp471
	movl	88(%rax), %eax	# src_bb_248->index, D.11958
	cltq
	salq	$3, %rax	#, D.11959
	addq	%rdx, %rax	# transp.186, D.11968
	movq	(%rax), %rdx	# *_276, D.11969
	movl	-188(%rbp), %eax	# j, j.187
	shrl	$6, %eax	#, D.11970
	movq	transp(%rip), %rsi	# transp, transp.188
	movq	-48(%rbp), %rcx	# src_bb, tmp472
	movl	88(%rcx), %ecx	# src_bb_248->index, D.11958
	movslq	%ecx, %rcx	# D.11958, D.11959
	salq	$3, %rcx	#, D.11959
	addq	%rsi, %rcx	# transp.188, D.11968
	movq	(%rcx), %rcx	# *_284, D.11969
	movl	%eax, %esi	# D.11970, tmp473
	addq	$2, %rsi	#, tmp474
	movq	(%rcx,%rsi,8), %rsi	# _285->elms, D.11959
	movl	-188(%rbp), %ecx	# j, tmp475
	andl	$63, %ecx	#, D.11958
	movl	$1, %edi	#, tmp476
	salq	%cl, %rdi	# D.11958, D.11959
	movq	%rdi, %rcx	# D.11959, D.11959
	notq	%rcx	# D.11959
	andq	%rsi, %rcx	# D.11959, D.11959
	movl	%eax, %eax	# D.11970, tmp477
	addq	$2, %rax	#, tmp478
	movq	%rcx, (%rdx,%rax,8)	# D.11959, _277->elms
	jmp	.L207	#
.L202:
	.loc 1 1275 0
	movl	$1, -196(%rbp)	#, need_commit
	.loc 1 1276 0
	movq	-56(%rbp), %rdx	# eg, tmp479
	movq	-40(%rbp), %rax	# mode_set, tmp480
	movq	%rdx, %rsi	# tmp479,
	movq	%rax, %rdi	# tmp480,
	call	insert_insn_on_edge	#
.L207:
.LBE17:
	.loc 1 1217 0
	subl	$1, -200(%rbp)	#, e
.L196:
	.loc 1 1217 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, e
	jns	.L208	#,
	.loc 1 1280 0 is_stmt 1
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.189
	subl	$1, %eax	#, tmp481
	movl	%eax, -204(%rbp)	# tmp481, bb
	jmp	.L209	#
.L211:
	.loc 1 1281 0
	movq	delete(%rip), %rax	# delete, delete.190
	movl	-204(%rbp), %edx	# bb, tmp482
	movslq	%edx, %rdx	# tmp482, D.11959
	salq	$3, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11968
	movq	(%rax), %rax	# *_298, D.11969
	movl	-188(%rbp), %edx	# j, j.191
	shrl	$6, %edx	#, D.11970
	movl	%edx, %edx	# D.11970, tmp483
	addq	$2, %rdx	#, tmp484
	movq	(%rax,%rdx,8), %rdx	# _299->elms, D.11959
	movl	-188(%rbp), %eax	# j, tmp485
	andl	$63, %eax	#, D.11958
	movl	%eax, %ecx	# D.11958, tmp539
	shrq	%cl, %rdx	# tmp539, D.11959
	movq	%rdx, %rax	# D.11959, D.11959
	andl	$1, %eax	#, D.11959
	testq	%rax, %rax	# D.11959
	je	.L210	#,
	.loc 1 1283 0
	movq	basic_block_info(%rip), %rax	# basic_block_info, basic_block_info.192
	movl	-204(%rbp), %edx	# bb, tmp487
	movslq	%edx, %rdx	# tmp487, tmp486
	addq	$4, %rdx	#, tmp488
	movq	(%rax,%rdx,8), %rax	# basic_block_info.192_306->data.bb, D.11961
	movl	-188(%rbp), %edx	# j, tmp489
	movl	%edx, %esi	# tmp489,
	movq	%rax, %rdi	# D.11961,
	call	make_preds_opaque	#
	.loc 1 1285 0
	movl	-188(%rbp), %eax	# j, tmp491
	cltq
	movq	-144(%rbp,%rax,8), %rax	# bb_info, D.11967
	movl	-204(%rbp), %edx	# bb, tmp492
	movslq	%edx, %rdx	# tmp492, D.11959
	salq	$4, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11967
	movq	(%rax), %rax	# _311->seginfo, D.11972
	movl	-156(%rbp), %edx	# no_mode, tmp493
	movl	%edx, (%rax)	# tmp493, _312->mode
.L210:
	.loc 1 1280 0
	subl	$1, -204(%rbp)	#, bb
.L209:
	.loc 1 1280 0 is_stmt 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, bb
	jns	.L211	#,
.LBE16:
	.loc 1 1205 0 is_stmt 1
	subl	$1, -188(%rbp)	#, j
.L195:
	.loc 1 1205 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, j
	jns	.L212	#,
	.loc 1 1289 0 is_stmt 1
	call	clear_aux_for_edges	#
	.loc 1 1290 0
	movq	-64(%rbp), %rax	# edge_list, tmp494
	movq	%rax, %rdi	# tmp494,
	call	free_edge_list	#
.LBE14:
	.loc 1 1175 0
	addl	$1, -192(%rbp)	#, i
.L186:
	.loc 1 1175 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# i, tmp495
	cmpl	-180(%rbp), %eax	# max_num_modes, tmp495
	jl	.L213	#,
	.loc 1 1301 0 is_stmt 1
	movl	-184(%rbp), %eax	# n_entities, tmp499
	subl	$1, %eax	#, tmp498
	movl	%eax, -188(%rbp)	# tmp498, j
	jmp	.L214	#
.L225:
.LBB18:
	.loc 1 1303 0
	movl	$2, -148(%rbp)	#, no_mode
	.loc 1 1350 0
	movl	n_basic_blocks(%rip), %eax	# n_basic_blocks, n_basic_blocks.193
	subl	$1, %eax	#, tmp502
	movl	%eax, -204(%rbp)	# tmp502, bb
	jmp	.L215	#
.L224:
.LBB19:
	.loc 1 1353 0
	movl	-188(%rbp), %eax	# j, tmp504
	cltq
	movq	-144(%rbp,%rax,8), %rax	# bb_info, D.11967
	movl	-204(%rbp), %edx	# bb, tmp505
	movslq	%edx, %rdx	# tmp505, D.11959
	salq	$4, %rdx	#, D.11959
	addq	%rdx, %rax	# D.11959, D.11967
	movq	(%rax), %rax	# _324->seginfo, tmp506
	movq	%rax, -104(%rbp)	# tmp506, ptr
	jmp	.L216	#
.L223:
	.loc 1 1355 0
	movq	-104(%rbp), %rax	# ptr, tmp507
	movq	24(%rax), %rax	# ptr_37->next, tmp508
	movq	%rax, -32(%rbp)	# tmp508, next
	.loc 1 1356 0
	movq	-104(%rbp), %rax	# ptr, tmp509
	movl	(%rax), %eax	# ptr_37->mode, D.11958
	cmpl	-148(%rbp), %eax	# no_mode, D.11958
	je	.L217	#,
.LBB20:
	.loc 1 1360 0
	call	start_sequence	#
	.loc 1 1361 0
	movq	-104(%rbp), %rax	# ptr, tmp510
	movl	(%rax), %eax	# ptr_37->mode, D.11958
	testl	%eax, %eax	# D.11958
	jne	.L219	#,
	.loc 1 1361 0 is_stmt 0 discriminator 1
	movl	$2, %esi	#,
	movl	$3, %edi	#,
	call	assign_386_stack_local	#
	movq	%rax, %rbx	#, D.11963
	movl	$1, %esi	#,
	movl	$3, %edi	#,
	call	assign_386_stack_local	#
	movq	%rbx, %rsi	# D.11963,
	movq	%rax, %rdi	# D.11963,
	call	emit_i387_cw_initialization	#
.L219:
	.loc 1 1362 0 is_stmt 1
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp511, mode_set
	.loc 1 1363 0
	call	end_sequence	#
	.loc 1 1366 0
	movq	-24(%rbp), %rax	# mode_set, tmp512
	movzwl	(%rax), %eax	# mode_set_333->code, D.11964
	cmpw	$24, %ax	#, D.11964
	jne	.L220	#,
	.loc 1 1367 0
	movq	-24(%rbp), %rax	# mode_set, tmp513
	movq	8(%rax), %rax	# mode_set_333->fld[0].rtvec, D.11974
	movl	(%rax), %eax	# _335->num_elem, D.11958
	testl	%eax, %eax	# D.11958
	jne	.L220	#,
	.loc 1 1368 0
	jmp	.L221	#
.L220:
	.loc 1 1370 0
	movb	$1, -225(%rbp)	#, emited
	.loc 1 1371 0
	movq	-104(%rbp), %rax	# ptr, tmp514
	movq	8(%rax), %rax	# ptr_37->insn_ptr, D.11963
	movzwl	(%rax), %eax	# _338->code, D.11964
	cmpw	$37, %ax	#, D.11964
	jne	.L222	#,
	.loc 1 1372 0
	movq	-104(%rbp), %rax	# ptr, tmp515
	movq	8(%rax), %rax	# ptr_37->insn_ptr, D.11963
	movl	40(%rax), %eax	# _340->fld[4].rtint, D.11958
	cmpl	$-80, %eax	#, D.11958
	jne	.L222	#,
	.loc 1 1374 0
	movq	-104(%rbp), %rax	# ptr, tmp516
	movq	8(%rax), %rdx	# ptr_37->insn_ptr, D.11963
	movq	-24(%rbp), %rax	# mode_set, tmp517
	movq	%rdx, %rsi	# D.11963,
	movq	%rax, %rdi	# tmp517,
	call	emit_insn_after	#
	jmp	.L217	#
.L222:
	.loc 1 1376 0
	movq	-104(%rbp), %rax	# ptr, tmp518
	movq	8(%rax), %rdx	# ptr_37->insn_ptr, D.11963
	movq	-24(%rbp), %rax	# mode_set, tmp519
	movq	%rdx, %rsi	# D.11963,
	movq	%rax, %rdi	# tmp519,
	call	emit_insn_before	#
.L217:
.LBE20:
	.loc 1 1379 0
	movq	-104(%rbp), %rax	# ptr, tmp520
	movq	%rax, %rdi	# tmp520,
	call	free	#
.L221:
	.loc 1 1353 0
	movq	-32(%rbp), %rax	# next, tmp521
	movq	%rax, -104(%rbp)	# tmp521, ptr
.L216:
	.loc 1 1353 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, ptr
	jne	.L223	#,
.LBE19:
	.loc 1 1350 0 is_stmt 1
	subl	$1, -204(%rbp)	#, bb
.L215:
	.loc 1 1350 0 is_stmt 0 discriminator 1
	cmpl	$0, -204(%rbp)	#, bb
	jns	.L224	#,
	.loc 1 1383 0 is_stmt 1
	movl	-188(%rbp), %eax	# j, tmp523
	cltq
	movq	-144(%rbp,%rax,8), %rax	# bb_info, D.11967
	movq	%rax, %rdi	# D.11967,
	call	free	#
.LBE18:
	.loc 1 1301 0
	subl	$1, -188(%rbp)	#, j
.L214:
	.loc 1 1301 0 is_stmt 0 discriminator 1
	cmpl	$0, -188(%rbp)	#, j
	jns	.L225	#,
	.loc 1 1388 0 is_stmt 1
	movq	-80(%rbp), %rax	# kill, tmp524
	movq	%rax, %rdi	# tmp524,
	call	free	#
	.loc 1 1389 0
	movq	antic(%rip), %rax	# antic, antic.195
	movq	%rax, %rdi	# antic.195,
	call	free	#
	.loc 1 1390 0
	movq	transp(%rip), %rax	# transp, transp.196
	movq	%rax, %rdi	# transp.196,
	call	free	#
	.loc 1 1391 0
	movq	comp(%rip), %rax	# comp, comp.197
	movq	%rax, %rdi	# comp.197,
	call	free	#
	.loc 1 1392 0
	movq	delete(%rip), %rax	# delete, delete.198
	movq	%rax, %rdi	# delete.198,
	call	free	#
	.loc 1 1393 0
	movq	insert(%rip), %rax	# insert, insert.199
	movq	%rax, %rdi	# insert.199,
	call	free	#
	.loc 1 1395 0
	cmpl	$0, -196(%rbp)	#, need_commit
	je	.L226	#,
	.loc 1 1396 0
	call	commit_edge_insertions	#
.L226:
	.loc 1 1398 0
	cmpl	$0, -196(%rbp)	#, need_commit
	jne	.L227	#,
	.loc 1 1398 0 is_stmt 0 discriminator 1
	movzbl	-225(%rbp), %eax	# emited, tmp525
	xorl	$1, %eax	#, D.11975
	testb	%al, %al	# D.11975
	je	.L227	#,
	.loc 1 1399 0 is_stmt 1
	movl	$0, %eax	#, D.11958
	jmp	.L228	#
.L227:
	.loc 1 1407 0
	call	allocate_reg_life_data	#
	.loc 1 1408 0
	movl	$29, %edx	#,
	movl	$2, %esi	#,
	movl	$0, %edi	#,
	call	update_life_info	#
	.loc 1 1412 0
	movl	$1, %eax	#, D.11958
.L228:
	.loc 1 1413 0
	addq	$264, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	optimize_mode_switching, .-optimize_mode_switching
	.section	.rodata
	.align 16
	.type	__FUNCTION__.10711, @object
	.size	__FUNCTION__.10711, 24
__FUNCTION__.10711:
	.string	"optimize_mode_switching"
	.align 4
	.type	num_modes.10658, @object
	.size	num_modes.10658, 4
num_modes.10658:
	.long	2
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
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "hard-reg-set.h"
	.file 15 "sbitmap.h"
	.file 16 "insn-attr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24f8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF585
	.byte	0x1
	.long	.LASF586
	.long	.LASF587
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
	.long	0x211
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xcd8
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
	.long	0xce8
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
	.long	.LASF588
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF43
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x1f1
	.uleb128 0xd
	.long	.LASF17
	.sleb128 0
	.uleb128 0xd
	.long	.LASF18
	.sleb128 1
	.uleb128 0xd
	.long	.LASF19
	.sleb128 2
	.uleb128 0xd
	.long	.LASF20
	.sleb128 3
	.uleb128 0xd
	.long	.LASF21
	.sleb128 4
	.uleb128 0xd
	.long	.LASF22
	.sleb128 5
	.uleb128 0xd
	.long	.LASF23
	.sleb128 6
	.uleb128 0xd
	.long	.LASF24
	.sleb128 7
	.uleb128 0xd
	.long	.LASF25
	.sleb128 8
	.uleb128 0xd
	.long	.LASF26
	.sleb128 9
	.uleb128 0xd
	.long	.LASF27
	.sleb128 10
	.uleb128 0xd
	.long	.LASF28
	.sleb128 11
	.uleb128 0xd
	.long	.LASF29
	.sleb128 12
	.uleb128 0xd
	.long	.LASF30
	.sleb128 13
	.uleb128 0xd
	.long	.LASF31
	.sleb128 14
	.uleb128 0xd
	.long	.LASF32
	.sleb128 15
	.uleb128 0xd
	.long	.LASF33
	.sleb128 16
	.uleb128 0xd
	.long	.LASF34
	.sleb128 17
	.uleb128 0xd
	.long	.LASF35
	.sleb128 18
	.uleb128 0xd
	.long	.LASF36
	.sleb128 19
	.uleb128 0xd
	.long	.LASF37
	.sleb128 20
	.uleb128 0xd
	.long	.LASF38
	.sleb128 21
	.uleb128 0xd
	.long	.LASF39
	.sleb128 22
	.uleb128 0xd
	.long	.LASF40
	.sleb128 23
	.uleb128 0xd
	.long	.LASF41
	.sleb128 24
	.uleb128 0xd
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xc
	.long	.LASF44
	.byte	0x4
	.byte	0x4
	.value	0xc4d
	.long	0x211
	.uleb128 0xd
	.long	.LASF45
	.sleb128 0
	.uleb128 0xd
	.long	.LASF46
	.sleb128 1
	.uleb128 0xd
	.long	.LASF47
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.long	.LASF48
	.uleb128 0xe
	.byte	0x8
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x7
	.long	.LASF50
	.byte	0x5
	.byte	0xd4
	.long	0x22c
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF51
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.long	.LASF52
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.long	.LASF53
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF54
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.long	.LASF55
	.uleb128 0x7
	.long	.LASF56
	.byte	0x6
	.byte	0x8c
	.long	0x21a
	.uleb128 0x7
	.long	.LASF57
	.byte	0x6
	.byte	0x8d
	.long	0x21a
	.uleb128 0x3
	.byte	0x8
	.long	0x26b
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0x7
	.long	.LASF59
	.byte	0x7
	.byte	0x30
	.long	0x27d
	.uleb128 0x4
	.long	.LASF60
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x3fe
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0xf7
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0xfc
	.long	0x265
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0xfd
	.long	0x265
	.byte	0x10
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0xfe
	.long	0x265
	.byte	0x18
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xff
	.long	0x265
	.byte	0x20
	.uleb128 0xf
	.long	.LASF66
	.byte	0x8
	.value	0x100
	.long	0x265
	.byte	0x28
	.uleb128 0xf
	.long	.LASF67
	.byte	0x8
	.value	0x101
	.long	0x265
	.byte	0x30
	.uleb128 0xf
	.long	.LASF68
	.byte	0x8
	.value	0x102
	.long	0x265
	.byte	0x38
	.uleb128 0xf
	.long	.LASF69
	.byte	0x8
	.value	0x103
	.long	0x265
	.byte	0x40
	.uleb128 0xf
	.long	.LASF70
	.byte	0x8
	.value	0x105
	.long	0x265
	.byte	0x48
	.uleb128 0xf
	.long	.LASF71
	.byte	0x8
	.value	0x106
	.long	0x265
	.byte	0x50
	.uleb128 0xf
	.long	.LASF72
	.byte	0x8
	.value	0x107
	.long	0x265
	.byte	0x58
	.uleb128 0xf
	.long	.LASF73
	.byte	0x8
	.value	0x109
	.long	0x436
	.byte	0x60
	.uleb128 0xf
	.long	.LASF74
	.byte	0x8
	.value	0x10b
	.long	0x43c
	.byte	0x68
	.uleb128 0xf
	.long	.LASF75
	.byte	0x8
	.value	0x10d
	.long	0x139
	.byte	0x70
	.uleb128 0xf
	.long	.LASF76
	.byte	0x8
	.value	0x111
	.long	0x139
	.byte	0x74
	.uleb128 0xf
	.long	.LASF77
	.byte	0x8
	.value	0x113
	.long	0x24f
	.byte	0x78
	.uleb128 0xf
	.long	.LASF78
	.byte	0x8
	.value	0x117
	.long	0x23a
	.byte	0x80
	.uleb128 0xf
	.long	.LASF79
	.byte	0x8
	.value	0x118
	.long	0x241
	.byte	0x82
	.uleb128 0xf
	.long	.LASF80
	.byte	0x8
	.value	0x119
	.long	0x442
	.byte	0x83
	.uleb128 0xf
	.long	.LASF81
	.byte	0x8
	.value	0x11d
	.long	0x452
	.byte	0x88
	.uleb128 0xf
	.long	.LASF82
	.byte	0x8
	.value	0x126
	.long	0x25a
	.byte	0x90
	.uleb128 0xf
	.long	.LASF83
	.byte	0x8
	.value	0x12f
	.long	0x218
	.byte	0x98
	.uleb128 0xf
	.long	.LASF84
	.byte	0x8
	.value	0x130
	.long	0x218
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x8
	.value	0x131
	.long	0x218
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x8
	.value	0x132
	.long	0x218
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF87
	.byte	0x8
	.value	0x133
	.long	0x221
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.value	0x135
	.long	0x139
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x8
	.value	0x137
	.long	0x458
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF589
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF90
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x436
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0xa2
	.long	0x436
	.byte	0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0xa3
	.long	0x43c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.byte	0xa7
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x405
	.uleb128 0x3
	.byte	0x8
	.long	0x27d
	.uleb128 0x11
	.long	0x26b
	.long	0x452
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3fe
	.uleb128 0x11
	.long	0x26b
	.long	0x468
	.uleb128 0x12
	.long	0x140
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x46e
	.uleb128 0x13
	.long	0x26b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.long	.LASF94
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.long	.LASF95
	.uleb128 0x14
	.long	.LASF96
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x5f6
	.uleb128 0xd
	.long	.LASF97
	.sleb128 0
	.uleb128 0xd
	.long	.LASF98
	.sleb128 1
	.uleb128 0xd
	.long	.LASF99
	.sleb128 2
	.uleb128 0xd
	.long	.LASF100
	.sleb128 3
	.uleb128 0xd
	.long	.LASF101
	.sleb128 4
	.uleb128 0xd
	.long	.LASF102
	.sleb128 5
	.uleb128 0xd
	.long	.LASF103
	.sleb128 6
	.uleb128 0xd
	.long	.LASF104
	.sleb128 7
	.uleb128 0xd
	.long	.LASF105
	.sleb128 8
	.uleb128 0xd
	.long	.LASF106
	.sleb128 9
	.uleb128 0xd
	.long	.LASF107
	.sleb128 10
	.uleb128 0xd
	.long	.LASF108
	.sleb128 11
	.uleb128 0xd
	.long	.LASF109
	.sleb128 12
	.uleb128 0xd
	.long	.LASF110
	.sleb128 13
	.uleb128 0xd
	.long	.LASF111
	.sleb128 14
	.uleb128 0xd
	.long	.LASF112
	.sleb128 15
	.uleb128 0xd
	.long	.LASF113
	.sleb128 16
	.uleb128 0xd
	.long	.LASF114
	.sleb128 17
	.uleb128 0xd
	.long	.LASF115
	.sleb128 18
	.uleb128 0xd
	.long	.LASF116
	.sleb128 19
	.uleb128 0xd
	.long	.LASF117
	.sleb128 20
	.uleb128 0xd
	.long	.LASF118
	.sleb128 21
	.uleb128 0xd
	.long	.LASF119
	.sleb128 22
	.uleb128 0xd
	.long	.LASF120
	.sleb128 23
	.uleb128 0xd
	.long	.LASF121
	.sleb128 24
	.uleb128 0xd
	.long	.LASF122
	.sleb128 25
	.uleb128 0xd
	.long	.LASF123
	.sleb128 26
	.uleb128 0xd
	.long	.LASF124
	.sleb128 27
	.uleb128 0xd
	.long	.LASF125
	.sleb128 28
	.uleb128 0xd
	.long	.LASF126
	.sleb128 29
	.uleb128 0xd
	.long	.LASF127
	.sleb128 30
	.uleb128 0xd
	.long	.LASF128
	.sleb128 31
	.uleb128 0xd
	.long	.LASF129
	.sleb128 32
	.uleb128 0xd
	.long	.LASF130
	.sleb128 33
	.uleb128 0xd
	.long	.LASF131
	.sleb128 34
	.uleb128 0xd
	.long	.LASF132
	.sleb128 35
	.uleb128 0xd
	.long	.LASF133
	.sleb128 36
	.uleb128 0xd
	.long	.LASF134
	.sleb128 37
	.uleb128 0xd
	.long	.LASF135
	.sleb128 38
	.uleb128 0xd
	.long	.LASF136
	.sleb128 39
	.uleb128 0xd
	.long	.LASF137
	.sleb128 40
	.uleb128 0xd
	.long	.LASF138
	.sleb128 41
	.uleb128 0xd
	.long	.LASF139
	.sleb128 42
	.uleb128 0xd
	.long	.LASF140
	.sleb128 43
	.uleb128 0xd
	.long	.LASF141
	.sleb128 44
	.uleb128 0xd
	.long	.LASF142
	.sleb128 45
	.uleb128 0xd
	.long	.LASF143
	.sleb128 46
	.uleb128 0xd
	.long	.LASF144
	.sleb128 47
	.uleb128 0xd
	.long	.LASF145
	.sleb128 48
	.uleb128 0xd
	.long	.LASF146
	.sleb128 49
	.uleb128 0xd
	.long	.LASF147
	.sleb128 50
	.uleb128 0xd
	.long	.LASF148
	.sleb128 51
	.uleb128 0xd
	.long	.LASF149
	.sleb128 52
	.uleb128 0xd
	.long	.LASF150
	.sleb128 53
	.uleb128 0xd
	.long	.LASF151
	.sleb128 54
	.uleb128 0xd
	.long	.LASF152
	.sleb128 55
	.uleb128 0xd
	.long	.LASF153
	.sleb128 56
	.uleb128 0xd
	.long	.LASF154
	.sleb128 57
	.uleb128 0xd
	.long	.LASF155
	.sleb128 58
	.uleb128 0xd
	.long	.LASF156
	.sleb128 59
	.byte	0
	.uleb128 0x14
	.long	.LASF157
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x63f
	.uleb128 0xd
	.long	.LASF158
	.sleb128 0
	.uleb128 0xd
	.long	.LASF159
	.sleb128 1
	.uleb128 0xd
	.long	.LASF160
	.sleb128 2
	.uleb128 0xd
	.long	.LASF161
	.sleb128 3
	.uleb128 0xd
	.long	.LASF162
	.sleb128 4
	.uleb128 0xd
	.long	.LASF163
	.sleb128 5
	.uleb128 0xd
	.long	.LASF164
	.sleb128 6
	.uleb128 0xd
	.long	.LASF165
	.sleb128 7
	.uleb128 0xd
	.long	.LASF166
	.sleb128 8
	.uleb128 0xd
	.long	.LASF167
	.sleb128 9
	.byte	0
	.uleb128 0x14
	.long	.LASF168
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa3b
	.uleb128 0xd
	.long	.LASF169
	.sleb128 0
	.uleb128 0x15
	.string	"NIL"
	.sleb128 1
	.uleb128 0xd
	.long	.LASF170
	.sleb128 2
	.uleb128 0xd
	.long	.LASF171
	.sleb128 3
	.uleb128 0xd
	.long	.LASF172
	.sleb128 4
	.uleb128 0xd
	.long	.LASF173
	.sleb128 5
	.uleb128 0xd
	.long	.LASF174
	.sleb128 6
	.uleb128 0xd
	.long	.LASF175
	.sleb128 7
	.uleb128 0xd
	.long	.LASF176
	.sleb128 8
	.uleb128 0xd
	.long	.LASF177
	.sleb128 9
	.uleb128 0xd
	.long	.LASF178
	.sleb128 10
	.uleb128 0xd
	.long	.LASF179
	.sleb128 11
	.uleb128 0xd
	.long	.LASF180
	.sleb128 12
	.uleb128 0xd
	.long	.LASF181
	.sleb128 13
	.uleb128 0xd
	.long	.LASF182
	.sleb128 14
	.uleb128 0xd
	.long	.LASF183
	.sleb128 15
	.uleb128 0xd
	.long	.LASF184
	.sleb128 16
	.uleb128 0xd
	.long	.LASF185
	.sleb128 17
	.uleb128 0xd
	.long	.LASF186
	.sleb128 18
	.uleb128 0xd
	.long	.LASF187
	.sleb128 19
	.uleb128 0xd
	.long	.LASF188
	.sleb128 20
	.uleb128 0xd
	.long	.LASF189
	.sleb128 21
	.uleb128 0xd
	.long	.LASF190
	.sleb128 22
	.uleb128 0xd
	.long	.LASF191
	.sleb128 23
	.uleb128 0xd
	.long	.LASF192
	.sleb128 24
	.uleb128 0xd
	.long	.LASF193
	.sleb128 25
	.uleb128 0xd
	.long	.LASF194
	.sleb128 26
	.uleb128 0xd
	.long	.LASF195
	.sleb128 27
	.uleb128 0xd
	.long	.LASF196
	.sleb128 28
	.uleb128 0xd
	.long	.LASF197
	.sleb128 29
	.uleb128 0xd
	.long	.LASF198
	.sleb128 30
	.uleb128 0xd
	.long	.LASF199
	.sleb128 31
	.uleb128 0xd
	.long	.LASF200
	.sleb128 32
	.uleb128 0xd
	.long	.LASF201
	.sleb128 33
	.uleb128 0xd
	.long	.LASF202
	.sleb128 34
	.uleb128 0xd
	.long	.LASF203
	.sleb128 35
	.uleb128 0xd
	.long	.LASF204
	.sleb128 36
	.uleb128 0xd
	.long	.LASF205
	.sleb128 37
	.uleb128 0xd
	.long	.LASF206
	.sleb128 38
	.uleb128 0xd
	.long	.LASF207
	.sleb128 39
	.uleb128 0xd
	.long	.LASF208
	.sleb128 40
	.uleb128 0xd
	.long	.LASF209
	.sleb128 41
	.uleb128 0xd
	.long	.LASF210
	.sleb128 42
	.uleb128 0xd
	.long	.LASF211
	.sleb128 43
	.uleb128 0xd
	.long	.LASF212
	.sleb128 44
	.uleb128 0xd
	.long	.LASF213
	.sleb128 45
	.uleb128 0xd
	.long	.LASF214
	.sleb128 46
	.uleb128 0x15
	.string	"SET"
	.sleb128 47
	.uleb128 0x15
	.string	"USE"
	.sleb128 48
	.uleb128 0xd
	.long	.LASF215
	.sleb128 49
	.uleb128 0xd
	.long	.LASF216
	.sleb128 50
	.uleb128 0xd
	.long	.LASF217
	.sleb128 51
	.uleb128 0xd
	.long	.LASF218
	.sleb128 52
	.uleb128 0xd
	.long	.LASF219
	.sleb128 53
	.uleb128 0xd
	.long	.LASF220
	.sleb128 54
	.uleb128 0xd
	.long	.LASF221
	.sleb128 55
	.uleb128 0xd
	.long	.LASF222
	.sleb128 56
	.uleb128 0xd
	.long	.LASF223
	.sleb128 57
	.uleb128 0xd
	.long	.LASF224
	.sleb128 58
	.uleb128 0x15
	.string	"PC"
	.sleb128 59
	.uleb128 0xd
	.long	.LASF225
	.sleb128 60
	.uleb128 0x15
	.string	"REG"
	.sleb128 61
	.uleb128 0xd
	.long	.LASF226
	.sleb128 62
	.uleb128 0xd
	.long	.LASF227
	.sleb128 63
	.uleb128 0xd
	.long	.LASF228
	.sleb128 64
	.uleb128 0xd
	.long	.LASF229
	.sleb128 65
	.uleb128 0x15
	.string	"MEM"
	.sleb128 66
	.uleb128 0xd
	.long	.LASF230
	.sleb128 67
	.uleb128 0xd
	.long	.LASF231
	.sleb128 68
	.uleb128 0x15
	.string	"CC0"
	.sleb128 69
	.uleb128 0xd
	.long	.LASF232
	.sleb128 70
	.uleb128 0xd
	.long	.LASF233
	.sleb128 71
	.uleb128 0xd
	.long	.LASF234
	.sleb128 72
	.uleb128 0xd
	.long	.LASF235
	.sleb128 73
	.uleb128 0xd
	.long	.LASF236
	.sleb128 74
	.uleb128 0xd
	.long	.LASF237
	.sleb128 75
	.uleb128 0xd
	.long	.LASF238
	.sleb128 76
	.uleb128 0x15
	.string	"NEG"
	.sleb128 77
	.uleb128 0xd
	.long	.LASF239
	.sleb128 78
	.uleb128 0x15
	.string	"DIV"
	.sleb128 79
	.uleb128 0x15
	.string	"MOD"
	.sleb128 80
	.uleb128 0xd
	.long	.LASF240
	.sleb128 81
	.uleb128 0xd
	.long	.LASF241
	.sleb128 82
	.uleb128 0x15
	.string	"AND"
	.sleb128 83
	.uleb128 0x15
	.string	"IOR"
	.sleb128 84
	.uleb128 0x15
	.string	"XOR"
	.sleb128 85
	.uleb128 0x15
	.string	"NOT"
	.sleb128 86
	.uleb128 0xd
	.long	.LASF242
	.sleb128 87
	.uleb128 0xd
	.long	.LASF243
	.sleb128 88
	.uleb128 0xd
	.long	.LASF244
	.sleb128 89
	.uleb128 0xd
	.long	.LASF245
	.sleb128 90
	.uleb128 0xd
	.long	.LASF246
	.sleb128 91
	.uleb128 0xd
	.long	.LASF247
	.sleb128 92
	.uleb128 0xd
	.long	.LASF248
	.sleb128 93
	.uleb128 0xd
	.long	.LASF249
	.sleb128 94
	.uleb128 0xd
	.long	.LASF250
	.sleb128 95
	.uleb128 0xd
	.long	.LASF251
	.sleb128 96
	.uleb128 0xd
	.long	.LASF252
	.sleb128 97
	.uleb128 0xd
	.long	.LASF253
	.sleb128 98
	.uleb128 0xd
	.long	.LASF254
	.sleb128 99
	.uleb128 0xd
	.long	.LASF255
	.sleb128 100
	.uleb128 0xd
	.long	.LASF256
	.sleb128 101
	.uleb128 0x15
	.string	"NE"
	.sleb128 102
	.uleb128 0x15
	.string	"EQ"
	.sleb128 103
	.uleb128 0x15
	.string	"GE"
	.sleb128 104
	.uleb128 0x15
	.string	"GT"
	.sleb128 105
	.uleb128 0x15
	.string	"LE"
	.sleb128 106
	.uleb128 0x15
	.string	"LT"
	.sleb128 107
	.uleb128 0x15
	.string	"GEU"
	.sleb128 108
	.uleb128 0x15
	.string	"GTU"
	.sleb128 109
	.uleb128 0x15
	.string	"LEU"
	.sleb128 110
	.uleb128 0x15
	.string	"LTU"
	.sleb128 111
	.uleb128 0xd
	.long	.LASF257
	.sleb128 112
	.uleb128 0xd
	.long	.LASF258
	.sleb128 113
	.uleb128 0xd
	.long	.LASF259
	.sleb128 114
	.uleb128 0xd
	.long	.LASF260
	.sleb128 115
	.uleb128 0xd
	.long	.LASF261
	.sleb128 116
	.uleb128 0xd
	.long	.LASF262
	.sleb128 117
	.uleb128 0xd
	.long	.LASF263
	.sleb128 118
	.uleb128 0xd
	.long	.LASF264
	.sleb128 119
	.uleb128 0xd
	.long	.LASF265
	.sleb128 120
	.uleb128 0xd
	.long	.LASF266
	.sleb128 121
	.uleb128 0xd
	.long	.LASF267
	.sleb128 122
	.uleb128 0xd
	.long	.LASF268
	.sleb128 123
	.uleb128 0xd
	.long	.LASF269
	.sleb128 124
	.uleb128 0xd
	.long	.LASF270
	.sleb128 125
	.uleb128 0x15
	.string	"FIX"
	.sleb128 126
	.uleb128 0xd
	.long	.LASF271
	.sleb128 127
	.uleb128 0xd
	.long	.LASF272
	.sleb128 128
	.uleb128 0x15
	.string	"ABS"
	.sleb128 129
	.uleb128 0xd
	.long	.LASF273
	.sleb128 130
	.uleb128 0x15
	.string	"FFS"
	.sleb128 131
	.uleb128 0xd
	.long	.LASF274
	.sleb128 132
	.uleb128 0xd
	.long	.LASF275
	.sleb128 133
	.uleb128 0xd
	.long	.LASF276
	.sleb128 134
	.uleb128 0xd
	.long	.LASF277
	.sleb128 135
	.uleb128 0xd
	.long	.LASF278
	.sleb128 136
	.uleb128 0xd
	.long	.LASF279
	.sleb128 137
	.uleb128 0xd
	.long	.LASF280
	.sleb128 138
	.uleb128 0xd
	.long	.LASF281
	.sleb128 139
	.uleb128 0xd
	.long	.LASF282
	.sleb128 140
	.uleb128 0xd
	.long	.LASF283
	.sleb128 141
	.uleb128 0xd
	.long	.LASF284
	.sleb128 142
	.uleb128 0xd
	.long	.LASF285
	.sleb128 143
	.uleb128 0xd
	.long	.LASF286
	.sleb128 144
	.uleb128 0xd
	.long	.LASF287
	.sleb128 145
	.uleb128 0xd
	.long	.LASF288
	.sleb128 146
	.uleb128 0xd
	.long	.LASF289
	.sleb128 147
	.uleb128 0xd
	.long	.LASF290
	.sleb128 148
	.uleb128 0xd
	.long	.LASF291
	.sleb128 149
	.uleb128 0xd
	.long	.LASF292
	.sleb128 150
	.uleb128 0xd
	.long	.LASF293
	.sleb128 151
	.uleb128 0x15
	.string	"PHI"
	.sleb128 152
	.uleb128 0xd
	.long	.LASF294
	.sleb128 153
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xabc
	.uleb128 0x5
	.long	.LASF295
	.byte	0x2
	.byte	0x47
	.long	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF296
	.byte	0x2
	.byte	0x49
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF297
	.byte	0x2
	.byte	0x4a
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF298
	.byte	0x2
	.byte	0x4c
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF299
	.byte	0x2
	.byte	0x4e
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x50
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x53
	.long	0x211
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x55
	.long	0x211
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF303
	.byte	0x2
	.byte	0x56
	.long	0xa3b
	.uleb128 0x16
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb0c
	.uleb128 0x8
	.long	.LASF304
	.byte	0x2
	.byte	0x5e
	.long	0x21a
	.byte	0
	.uleb128 0x8
	.long	.LASF305
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF306
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF307
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF308
	.byte	0x2
	.byte	0x62
	.long	0x211
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF309
	.byte	0x2
	.byte	0x63
	.long	0xac7
	.uleb128 0x17
	.long	.LASF409
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xbb2
	.uleb128 0x18
	.long	.LASF310
	.byte	0x2
	.byte	0x69
	.long	0x21a
	.uleb128 0x18
	.long	.LASF311
	.byte	0x2
	.byte	0x6a
	.long	0x139
	.uleb128 0x18
	.long	.LASF312
	.byte	0x2
	.byte	0x6b
	.long	0x211
	.uleb128 0x18
	.long	.LASF313
	.byte	0x2
	.byte	0x6c
	.long	0x468
	.uleb128 0x19
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x18
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x18
	.long	.LASF314
	.byte	0x2
	.byte	0x6f
	.long	0x481
	.uleb128 0x18
	.long	.LASF315
	.byte	0x2
	.byte	0x70
	.long	0xabc
	.uleb128 0x18
	.long	.LASF316
	.byte	0x2
	.byte	0x71
	.long	0xbb7
	.uleb128 0x18
	.long	.LASF317
	.byte	0x2
	.byte	0x72
	.long	0xbee
	.uleb128 0x18
	.long	.LASF318
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x19
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xcc1
	.uleb128 0x18
	.long	.LASF319
	.byte	0x2
	.byte	0x75
	.long	0xcc7
	.byte	0
	.uleb128 0x1a
	.long	.LASF418
	.uleb128 0x3
	.byte	0x8
	.long	0xbb2
	.uleb128 0x4
	.long	.LASF320
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xbee
	.uleb128 0x8
	.long	.LASF321
	.byte	0xa
	.byte	0x35
	.long	0x1264
	.byte	0
	.uleb128 0x8
	.long	.LASF322
	.byte	0xa
	.byte	0x36
	.long	0x1264
	.byte	0x8
	.uleb128 0x8
	.long	.LASF323
	.byte	0xa
	.byte	0x37
	.long	0x211
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbbd
	.uleb128 0x4
	.long	.LASF324
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xcc1
	.uleb128 0x8
	.long	.LASF325
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
	.long	.LASF326
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF327
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF328
	.byte	0xb
	.byte	0xb7
	.long	0x1358
	.byte	0x20
	.uleb128 0x8
	.long	.LASF329
	.byte	0xb
	.byte	0xb7
	.long	0x1358
	.byte	0x28
	.uleb128 0x8
	.long	.LASF330
	.byte	0xb
	.byte	0xbc
	.long	0x12c3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF331
	.byte	0xb
	.byte	0xc0
	.long	0x12c3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xc6
	.long	0x12c3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xc8
	.long	0x12c3
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x218
	.byte	0x50
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xce
	.long	0x139
	.byte	0x58
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xd1
	.long	0x139
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xd4
	.long	0x12ce
	.byte	0x60
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xd7
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xda
	.long	0x139
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xbf4
	.uleb128 0x3
	.byte	0x8
	.long	0xb0c
	.uleb128 0x7
	.long	.LASF339
	.byte	0x2
	.byte	0x76
	.long	0xb17
	.uleb128 0x11
	.long	0xccd
	.long	0xce8
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x2d
	.long	0xcf8
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF340
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xdba
	.uleb128 0xd
	.long	.LASF341
	.sleb128 1
	.uleb128 0xd
	.long	.LASF342
	.sleb128 2
	.uleb128 0xd
	.long	.LASF343
	.sleb128 3
	.uleb128 0xd
	.long	.LASF344
	.sleb128 4
	.uleb128 0xd
	.long	.LASF345
	.sleb128 5
	.uleb128 0xd
	.long	.LASF346
	.sleb128 6
	.uleb128 0xd
	.long	.LASF347
	.sleb128 7
	.uleb128 0xd
	.long	.LASF348
	.sleb128 8
	.uleb128 0xd
	.long	.LASF349
	.sleb128 9
	.uleb128 0xd
	.long	.LASF350
	.sleb128 10
	.uleb128 0xd
	.long	.LASF351
	.sleb128 11
	.uleb128 0xd
	.long	.LASF352
	.sleb128 12
	.uleb128 0xd
	.long	.LASF353
	.sleb128 13
	.uleb128 0xd
	.long	.LASF354
	.sleb128 14
	.uleb128 0xd
	.long	.LASF355
	.sleb128 15
	.uleb128 0xd
	.long	.LASF356
	.sleb128 16
	.uleb128 0xd
	.long	.LASF357
	.sleb128 17
	.uleb128 0xd
	.long	.LASF358
	.sleb128 18
	.uleb128 0xd
	.long	.LASF359
	.sleb128 19
	.uleb128 0xd
	.long	.LASF360
	.sleb128 20
	.uleb128 0xd
	.long	.LASF361
	.sleb128 21
	.uleb128 0xd
	.long	.LASF362
	.sleb128 22
	.uleb128 0xd
	.long	.LASF363
	.sleb128 23
	.uleb128 0xd
	.long	.LASF364
	.sleb128 24
	.uleb128 0xd
	.long	.LASF365
	.sleb128 25
	.uleb128 0xd
	.long	.LASF366
	.sleb128 26
	.uleb128 0xd
	.long	.LASF367
	.sleb128 27
	.uleb128 0xd
	.long	.LASF368
	.sleb128 28
	.uleb128 0xd
	.long	.LASF369
	.sleb128 29
	.uleb128 0xd
	.long	.LASF370
	.sleb128 30
	.byte	0
	.uleb128 0xc
	.long	.LASF371
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xe69
	.uleb128 0xd
	.long	.LASF372
	.sleb128 -100
	.uleb128 0xd
	.long	.LASF373
	.sleb128 -99
	.uleb128 0xd
	.long	.LASF374
	.sleb128 -98
	.uleb128 0xd
	.long	.LASF375
	.sleb128 -97
	.uleb128 0xd
	.long	.LASF376
	.sleb128 -96
	.uleb128 0xd
	.long	.LASF377
	.sleb128 -95
	.uleb128 0xd
	.long	.LASF378
	.sleb128 -94
	.uleb128 0xd
	.long	.LASF379
	.sleb128 -93
	.uleb128 0xd
	.long	.LASF380
	.sleb128 -92
	.uleb128 0xd
	.long	.LASF381
	.sleb128 -91
	.uleb128 0xd
	.long	.LASF382
	.sleb128 -90
	.uleb128 0xd
	.long	.LASF383
	.sleb128 -89
	.uleb128 0xd
	.long	.LASF384
	.sleb128 -88
	.uleb128 0xd
	.long	.LASF385
	.sleb128 -87
	.uleb128 0xd
	.long	.LASF386
	.sleb128 -86
	.uleb128 0xd
	.long	.LASF387
	.sleb128 -85
	.uleb128 0xd
	.long	.LASF388
	.sleb128 -84
	.uleb128 0xd
	.long	.LASF389
	.sleb128 -83
	.uleb128 0xd
	.long	.LASF390
	.sleb128 -82
	.uleb128 0xd
	.long	.LASF391
	.sleb128 -81
	.uleb128 0xd
	.long	.LASF392
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF393
	.sleb128 -79
	.uleb128 0xd
	.long	.LASF394
	.sleb128 -78
	.byte	0
	.uleb128 0xc
	.long	.LASF395
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xebf
	.uleb128 0xd
	.long	.LASF396
	.sleb128 0
	.uleb128 0xd
	.long	.LASF397
	.sleb128 1
	.uleb128 0xd
	.long	.LASF398
	.sleb128 2
	.uleb128 0xd
	.long	.LASF399
	.sleb128 3
	.uleb128 0xd
	.long	.LASF400
	.sleb128 4
	.uleb128 0xd
	.long	.LASF401
	.sleb128 5
	.uleb128 0xd
	.long	.LASF402
	.sleb128 6
	.uleb128 0xd
	.long	.LASF403
	.sleb128 7
	.uleb128 0xd
	.long	.LASF404
	.sleb128 8
	.uleb128 0xd
	.long	.LASF405
	.sleb128 9
	.uleb128 0xd
	.long	.LASF406
	.sleb128 10
	.uleb128 0xd
	.long	.LASF407
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF408
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xee4
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
	.long	0x211
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.long	.LASF410
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0xfc9
	.uleb128 0x19
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x442
	.uleb128 0x19
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0xfc9
	.uleb128 0x19
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0xfd9
	.uleb128 0x19
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0xfe9
	.uleb128 0x19
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0xff9
	.uleb128 0x19
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x1009
	.uleb128 0x19
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x1019
	.uleb128 0x19
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x1029
	.uleb128 0x18
	.long	.LASF411
	.byte	0xc
	.byte	0x43
	.long	0x1019
	.uleb128 0x18
	.long	.LASF412
	.byte	0xc
	.byte	0x44
	.long	0x1029
	.uleb128 0x18
	.long	.LASF413
	.byte	0xc
	.byte	0x45
	.long	0x1039
	.uleb128 0x18
	.long	.LASF414
	.byte	0xc
	.byte	0x46
	.long	0x1049
	.uleb128 0x19
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x1059
	.uleb128 0x18
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x1069
	.uleb128 0x18
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x1079
	.uleb128 0x18
	.long	.LASF415
	.byte	0xc
	.byte	0x4a
	.long	0x1089
	.uleb128 0x18
	.long	.LASF416
	.byte	0xc
	.byte	0x4b
	.long	0x1099
	.uleb128 0x19
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x10b4
	.uleb128 0x18
	.long	.LASF417
	.byte	0xc
	.byte	0x4d
	.long	0x115b
	.uleb128 0x19
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x116b
	.uleb128 0x19
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x117b
	.byte	0
	.uleb128 0x11
	.long	0x233
	.long	0xfd9
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x248
	.long	0xfe9
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x23a
	.long	0xff9
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x139
	.long	0x1009
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x211
	.long	0x1019
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x21a
	.long	0x1029
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x22c
	.long	0x1039
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x218
	.long	0x1049
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x265
	.long	0x1059
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x38
	.long	0x1069
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xf8
	.long	0x1079
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x12e
	.long	0x1089
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xbee
	.long	0x1099
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x10a9
	.long	0x10a9
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10af
	.uleb128 0x1a
	.long	.LASF419
	.uleb128 0x11
	.long	0x10c4
	.long	0x10c4
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x10ca
	.uleb128 0x4
	.long	.LASF420
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x115b
	.uleb128 0x8
	.long	.LASF421
	.byte	0xd
	.byte	0x2f
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF422
	.byte	0xd
	.byte	0x30
	.long	0x139
	.byte	0x4
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0x31
	.long	0x139
	.byte	0x8
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0x34
	.long	0x139
	.byte	0xc
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0x37
	.long	0x139
	.byte	0x10
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x38
	.long	0x139
	.byte	0x14
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x39
	.long	0x139
	.byte	0x18
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0x3a
	.long	0x139
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0x3b
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0x3c
	.long	0x139
	.byte	0x24
	.uleb128 0x8
	.long	.LASF431
	.byte	0xd
	.byte	0x3d
	.long	0x26b
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	0xebf
	.long	0x116b
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0xcc1
	.long	0x117b
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x118b
	.long	0x118b
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1191
	.uleb128 0x1a
	.long	.LASF432
	.uleb128 0x7
	.long	.LASF433
	.byte	0xc
	.byte	0x50
	.long	0xee4
	.uleb128 0x4
	.long	.LASF434
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x11ea
	.uleb128 0x8
	.long	.LASF435
	.byte	0xc
	.byte	0x54
	.long	0x221
	.byte	0
	.uleb128 0x8
	.long	.LASF436
	.byte	0xc
	.byte	0x55
	.long	0x221
	.byte	0x8
	.uleb128 0x8
	.long	.LASF437
	.byte	0xc
	.byte	0x57
	.long	0x221
	.byte	0x10
	.uleb128 0x8
	.long	.LASF438
	.byte	0xc
	.byte	0x58
	.long	0x468
	.byte	0x18
	.uleb128 0x8
	.long	.LASF439
	.byte	0xc
	.byte	0x59
	.long	0x1196
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF440
	.byte	0xc
	.byte	0x5a
	.long	0x11f5
	.uleb128 0x3
	.byte	0x8
	.long	0x11a1
	.uleb128 0x7
	.long	.LASF441
	.byte	0xe
	.byte	0x29
	.long	0x22c
	.uleb128 0x4
	.long	.LASF442
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1243
	.uleb128 0x8
	.long	.LASF443
	.byte	0xa
	.byte	0x2d
	.long	0x1243
	.byte	0
	.uleb128 0x8
	.long	.LASF444
	.byte	0xa
	.byte	0x2e
	.long	0x1243
	.byte	0x8
	.uleb128 0x8
	.long	.LASF323
	.byte	0xa
	.byte	0x2f
	.long	0x211
	.byte	0x10
	.uleb128 0x8
	.long	.LASF445
	.byte	0xa
	.byte	0x30
	.long	0x1249
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1206
	.uleb128 0x11
	.long	0x22c
	.long	0x1259
	.uleb128 0x12
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF446
	.byte	0xa
	.byte	0x31
	.long	0x1206
	.uleb128 0x3
	.byte	0x8
	.long	0x1259
	.uleb128 0x7
	.long	.LASF415
	.byte	0xa
	.byte	0x39
	.long	0xbee
	.uleb128 0x4
	.long	.LASF447
	.byte	0x18
	.byte	0xf
	.byte	0x1f
	.long	0x12b2
	.uleb128 0x8
	.long	.LASF448
	.byte	0xf
	.byte	0x21
	.long	0x211
	.byte	0
	.uleb128 0x8
	.long	.LASF307
	.byte	0xf
	.byte	0x22
	.long	0x211
	.byte	0x4
	.uleb128 0x8
	.long	.LASF449
	.byte	0xf
	.byte	0x23
	.long	0x211
	.byte	0x8
	.uleb128 0x8
	.long	.LASF450
	.byte	0xf
	.byte	0x24
	.long	0x1029
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF451
	.byte	0xf
	.byte	0x25
	.long	0x12bd
	.uleb128 0x3
	.byte	0x8
	.long	0x1275
	.uleb128 0x7
	.long	.LASF452
	.byte	0xb
	.byte	0x21
	.long	0x126a
	.uleb128 0x7
	.long	.LASF453
	.byte	0xb
	.byte	0x74
	.long	0x21a
	.uleb128 0x4
	.long	.LASF454
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1352
	.uleb128 0x8
	.long	.LASF455
	.byte	0xb
	.byte	0x79
	.long	0x1352
	.byte	0
	.uleb128 0x8
	.long	.LASF456
	.byte	0xb
	.byte	0x79
	.long	0x1352
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xcc1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF457
	.byte	0xb
	.byte	0x7c
	.long	0xcc1
	.byte	0x18
	.uleb128 0x8
	.long	.LASF458
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x218
	.byte	0x28
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0x84
	.long	0x139
	.byte	0x30
	.uleb128 0x8
	.long	.LASF459
	.byte	0xb
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0x86
	.long	0x12ce
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x12d9
	.uleb128 0x7
	.long	.LASF460
	.byte	0xb
	.byte	0x88
	.long	0x1352
	.uleb128 0x7
	.long	.LASF430
	.byte	0xb
	.byte	0xdb
	.long	0xcc1
	.uleb128 0x3
	.byte	0x8
	.long	0x1358
	.uleb128 0x3
	.byte	0x8
	.long	0x12b2
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x10
	.byte	0xb
	.value	0x1f0
	.long	0x13af
	.uleb128 0xf
	.long	.LASF462
	.byte	0xb
	.value	0x1f2
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF463
	.byte	0xb
	.value	0x1f3
	.long	0x139
	.byte	0x4
	.uleb128 0xf
	.long	.LASF464
	.byte	0xb
	.value	0x1f4
	.long	0x136e
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF465
	.byte	0x4
	.byte	0xb
	.value	0x223
	.long	0x13cf
	.uleb128 0xd
	.long	.LASF466
	.sleb128 0
	.uleb128 0xd
	.long	.LASF467
	.sleb128 1
	.uleb128 0xd
	.long	.LASF468
	.sleb128 2
	.byte	0
	.uleb128 0x14
	.long	.LASF469
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.long	0x14b4
	.uleb128 0xd
	.long	.LASF470
	.sleb128 0
	.uleb128 0xd
	.long	.LASF471
	.sleb128 1
	.uleb128 0xd
	.long	.LASF472
	.sleb128 2
	.uleb128 0xd
	.long	.LASF473
	.sleb128 3
	.uleb128 0xd
	.long	.LASF474
	.sleb128 4
	.uleb128 0xd
	.long	.LASF475
	.sleb128 5
	.uleb128 0xd
	.long	.LASF476
	.sleb128 6
	.uleb128 0xd
	.long	.LASF477
	.sleb128 7
	.uleb128 0xd
	.long	.LASF478
	.sleb128 8
	.uleb128 0xd
	.long	.LASF479
	.sleb128 9
	.uleb128 0xd
	.long	.LASF480
	.sleb128 10
	.uleb128 0xd
	.long	.LASF481
	.sleb128 11
	.uleb128 0xd
	.long	.LASF482
	.sleb128 12
	.uleb128 0xd
	.long	.LASF483
	.sleb128 13
	.uleb128 0xd
	.long	.LASF484
	.sleb128 14
	.uleb128 0xd
	.long	.LASF485
	.sleb128 15
	.uleb128 0xd
	.long	.LASF486
	.sleb128 16
	.uleb128 0xd
	.long	.LASF487
	.sleb128 17
	.uleb128 0xd
	.long	.LASF488
	.sleb128 18
	.uleb128 0xd
	.long	.LASF489
	.sleb128 19
	.uleb128 0xd
	.long	.LASF490
	.sleb128 20
	.uleb128 0xd
	.long	.LASF491
	.sleb128 21
	.uleb128 0xd
	.long	.LASF492
	.sleb128 22
	.uleb128 0xd
	.long	.LASF493
	.sleb128 23
	.uleb128 0xd
	.long	.LASF494
	.sleb128 24
	.uleb128 0xd
	.long	.LASF495
	.sleb128 25
	.uleb128 0xd
	.long	.LASF496
	.sleb128 26
	.uleb128 0xd
	.long	.LASF497
	.sleb128 27
	.uleb128 0xd
	.long	.LASF498
	.sleb128 28
	.uleb128 0xd
	.long	.LASF499
	.sleb128 29
	.uleb128 0xd
	.long	.LASF500
	.sleb128 30
	.uleb128 0xd
	.long	.LASF501
	.sleb128 31
	.uleb128 0xd
	.long	.LASF502
	.sleb128 32
	.uleb128 0xd
	.long	.LASF503
	.sleb128 33
	.uleb128 0xd
	.long	.LASF504
	.sleb128 34
	.uleb128 0xd
	.long	.LASF505
	.sleb128 35
	.byte	0
	.uleb128 0x1b
	.long	.LASF506
	.byte	0x28
	.byte	0x1
	.value	0x366
	.long	0x1503
	.uleb128 0xf
	.long	.LASF1
	.byte	0x1
	.value	0x368
	.long	0x139
	.byte	0
	.uleb128 0xf
	.long	.LASF507
	.byte	0x1
	.value	0x369
	.long	0x2d
	.byte	0x8
	.uleb128 0xf
	.long	.LASF508
	.byte	0x1
	.value	0x36a
	.long	0x139
	.byte	0x10
	.uleb128 0xf
	.long	.LASF443
	.byte	0x1
	.value	0x36b
	.long	0x1503
	.byte	0x18
	.uleb128 0xf
	.long	.LASF509
	.byte	0x1
	.value	0x36c
	.long	0x11fb
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14b4
	.uleb128 0x1b
	.long	.LASF510
	.byte	0x10
	.byte	0x1
	.value	0x36f
	.long	0x1531
	.uleb128 0xf
	.long	.LASF506
	.byte	0x1
	.value	0x371
	.long	0x1503
	.byte	0
	.uleb128 0xf
	.long	.LASF511
	.byte	0x1
	.value	0x372
	.long	0x139
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF520
	.byte	0x1
	.byte	0x67
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x160a
	.uleb128 0x1d
	.long	.LASF512
	.byte	0x1
	.byte	0x68
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF513
	.byte	0x1
	.byte	0x69
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF514
	.byte	0x1
	.byte	0x6a
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF515
	.byte	0x1
	.byte	0x6b
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.string	"bb"
	.byte	0x1
	.byte	0x6d
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"e"
	.byte	0x1
	.byte	0x6e
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x1
	.byte	0x6f
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"qin"
	.byte	0x1
	.byte	0x6f
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x1
	.byte	0x6f
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x1
	.byte	0x6f
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x1
	.byte	0x70
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.byte	0x91
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1363
	.uleb128 0x1c
	.long	.LASF521
	.byte	0x1
	.byte	0xbc
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e8
	.uleb128 0x1d
	.long	.LASF461
	.byte	0x1
	.byte	0xbd
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF522
	.byte	0x1
	.byte	0xbe
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.long	.LASF514
	.byte	0x1
	.byte	0xbf
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1d
	.long	.LASF515
	.byte	0x1
	.byte	0xbf
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF523
	.byte	0x1
	.byte	0xbf
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1d
	.long	.LASF524
	.byte	0x1
	.byte	0xbf
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.long	.LASF525
	.byte	0x1
	.byte	0xbf
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LASF526
	.byte	0x1
	.byte	0xc1
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF527
	.byte	0x1
	.byte	0xc1
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xc2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF463
	.byte	0x1
	.byte	0xc2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF328
	.byte	0x1
	.byte	0xc3
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF329
	.byte	0x1
	.byte	0xc3
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x137a
	.uleb128 0x21
	.long	.LASF528
	.byte	0x1
	.value	0x105
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1826
	.uleb128 0x22
	.long	.LASF461
	.byte	0x1
	.value	0x106
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF525
	.byte	0x1
	.value	0x107
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF512
	.byte	0x1
	.value	0x107
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF529
	.byte	0x1
	.value	0x107
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF530
	.byte	0x1
	.value	0x107
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x109
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x109
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x109
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x10a
	.long	0x1358
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF516
	.byte	0x1
	.value	0x10b
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"qin"
	.byte	0x1
	.value	0x10b
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF517
	.byte	0x1
	.value	0x10b
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF518
	.byte	0x1
	.value	0x10b
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF519
	.byte	0x1
	.value	0x10c
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x1806
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x131
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x140
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF531
	.byte	0x1
	.value	0x16e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x18cd
	.uleb128 0x22
	.long	.LASF461
	.byte	0x1
	.value	0x170
	.long	0x16e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF512
	.byte	0x1
	.value	0x171
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF529
	.byte	0x1
	.value	0x171
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF530
	.byte	0x1
	.value	0x171
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF532
	.byte	0x1
	.value	0x171
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF533
	.byte	0x1
	.value	0x171
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x173
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x17a
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF547
	.byte	0x1
	.value	0x188
	.long	0x16e8
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f8
	.uleb128 0x22
	.long	.LASF534
	.byte	0x1
	.value	0x189
	.long	0x19f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF522
	.byte	0x1
	.value	0x18a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.long	.LASF513
	.byte	0x1
	.value	0x18b
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF535
	.byte	0x1
	.value	0x18c
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF512
	.byte	0x1
	.value	0x18d
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF524
	.byte	0x1
	.value	0x18e
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.long	.LASF532
	.byte	0x1
	.value	0x18f
	.long	0x19fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF533
	.byte	0x1
	.value	0x190
	.long	0x19fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF514
	.byte	0x1
	.value	0x192
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF515
	.byte	0x1
	.value	0x192
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF525
	.byte	0x1
	.value	0x192
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF536
	.byte	0x1
	.value	0x193
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF523
	.byte	0x1
	.value	0x193
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF529
	.byte	0x1
	.value	0x194
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF530
	.byte	0x1
	.value	0x194
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF461
	.byte	0x1
	.value	0x195
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x196
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x272
	.uleb128 0x3
	.byte	0x8
	.long	0x1374
	.uleb128 0x27
	.long	.LASF590
	.byte	0x1
	.value	0x1ef
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aea
	.uleb128 0x22
	.long	.LASF535
	.byte	0x1
	.value	0x1f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF524
	.byte	0x1
	.value	0x1f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF523
	.byte	0x1
	.value	0x1f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF536
	.byte	0x1
	.value	0x1f0
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x1f2
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x1f3
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF516
	.byte	0x1
	.value	0x1f4
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"qin"
	.byte	0x1
	.value	0x1f4
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF517
	.byte	0x1
	.value	0x1f4
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF518
	.byte	0x1
	.value	0x1f4
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF519
	.byte	0x1
	.value	0x1f5
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x215
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF537
	.byte	0x1
	.value	0x243
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd0
	.uleb128 0x22
	.long	.LASF461
	.byte	0x1
	.value	0x245
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF522
	.byte	0x1
	.value	0x246
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.long	.LASF538
	.byte	0x1
	.value	0x247
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF539
	.byte	0x1
	.value	0x247
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF540
	.byte	0x1
	.value	0x247
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF524
	.byte	0x1
	.value	0x247
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF541
	.byte	0x1
	.value	0x247
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF526
	.byte	0x1
	.value	0x249
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF527
	.byte	0x1
	.value	0x249
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x24a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x24a
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.long	.LASF328
	.byte	0x1
	.value	0x24b
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF329
	.byte	0x1
	.value	0x24b
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF542
	.byte	0x1
	.value	0x271
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd7
	.uleb128 0x22
	.long	.LASF461
	.byte	0x1
	.value	0x272
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF541
	.byte	0x1
	.value	0x273
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF543
	.byte	0x1
	.value	0x273
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF544
	.byte	0x1
	.value	0x273
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.long	.LASF545
	.byte	0x1
	.value	0x273
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x275
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x275
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x275
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x276
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF516
	.byte	0x1
	.value	0x277
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"tos"
	.byte	0x1
	.value	0x277
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x1cb7
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x294
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x29d
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF546
	.byte	0x1
	.value	0x2c6
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d7e
	.uleb128 0x22
	.long	.LASF461
	.byte	0x1
	.value	0x2c8
	.long	0x16e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF543
	.byte	0x1
	.value	0x2c9
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF544
	.byte	0x1
	.value	0x2c9
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF545
	.byte	0x1
	.value	0x2c9
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF532
	.byte	0x1
	.value	0x2c9
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF533
	.byte	0x1
	.value	0x2c9
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.value	0x2cb
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x23
	.string	"b"
	.byte	0x1
	.value	0x2d2
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF548
	.byte	0x1
	.value	0x2e0
	.long	0x16e8
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea9
	.uleb128 0x22
	.long	.LASF534
	.byte	0x1
	.value	0x2e2
	.long	0x19f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF522
	.byte	0x1
	.value	0x2e3
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.long	.LASF513
	.byte	0x1
	.value	0x2e4
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x22
	.long	.LASF543
	.byte	0x1
	.value	0x2e5
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF549
	.byte	0x1
	.value	0x2e6
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x22
	.long	.LASF524
	.byte	0x1
	.value	0x2e7
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x22
	.long	.LASF532
	.byte	0x1
	.value	0x2e8
	.long	0x19fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF533
	.byte	0x1
	.value	0x2e9
	.long	0x19fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF540
	.byte	0x1
	.value	0x2eb
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF550
	.byte	0x1
	.value	0x2eb
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF538
	.byte	0x1
	.value	0x2ec
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF539
	.byte	0x1
	.value	0x2ec
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.long	.LASF541
	.byte	0x1
	.value	0x2ec
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF544
	.byte	0x1
	.value	0x2ed
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF545
	.byte	0x1
	.value	0x2ed
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF461
	.byte	0x1
	.value	0x2ee
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF463
	.byte	0x1
	.value	0x2ef
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x28
	.long	.LASF591
	.byte	0x1
	.value	0x38b
	.long	0x1503
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f16
	.uleb128 0x22
	.long	.LASF1
	.byte	0x1
	.value	0x38c
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF551
	.byte	0x1
	.value	0x38d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"bb"
	.byte	0x1
	.value	0x38e
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF509
	.byte	0x1
	.value	0x38f
	.long	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.value	0x391
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x1
	.value	0x3a0
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f62
	.uleb128 0x22
	.long	.LASF325
	.byte	0x1
	.value	0x3a1
	.long	0x1f62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF553
	.byte	0x1
	.value	0x3a2
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.value	0x3a4
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1509
	.uleb128 0x21
	.long	.LASF554
	.byte	0x1
	.value	0x3b8
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fce
	.uleb128 0x29
	.string	"b"
	.byte	0x1
	.value	0x3b9
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x3ba
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x3bc
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x23
	.string	"pb"
	.byte	0x1
	.value	0x3c0
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF555
	.byte	0x1
	.value	0x3cd
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2029
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x3ce
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF556
	.byte	0x1
	.value	0x3cf
	.long	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF557
	.byte	0x1
	.value	0x3d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF558
	.byte	0x1
	.value	0x3d1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2a
	.long	.LASF559
	.byte	0x1
	.value	0x3e1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2093
	.uleb128 0x29
	.string	"reg"
	.byte	0x1
	.value	0x3e2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF560
	.byte	0x1
	.value	0x3e3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF556
	.byte	0x1
	.value	0x3e4
	.long	0x218
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF557
	.byte	0x1
	.value	0x3e6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF558
	.byte	0x1
	.value	0x3e6
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF561
	.byte	0x1
	.value	0x3f9
	.long	0x139
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x23bf
	.uleb128 0x22
	.long	.LASF534
	.byte	0x1
	.value	0x3fa
	.long	0x19f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x24
	.long	.LASF551
	.byte	0x1
	.value	0x3fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x23
	.string	"bb"
	.byte	0x1
	.value	0x3fd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x3fd
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x24
	.long	.LASF562
	.byte	0x1
	.value	0x3fe
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x24
	.long	.LASF524
	.byte	0x1
	.value	0x3ff
	.long	0x1374
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x24
	.long	.LASF461
	.byte	0x1
	.value	0x400
	.long	0x16e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.long	.LASF563
	.byte	0x1
	.value	0x401
	.long	0x23bf
	.uleb128 0x9
	.byte	0x3
	.quad	num_modes.10658
	.uleb128 0x24
	.long	.LASF564
	.byte	0x1
	.value	0x403
	.long	0xff9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x24
	.long	.LASF510
	.byte	0x1
	.value	0x404
	.long	0x23c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x405
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x405
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x24
	.long	.LASF565
	.byte	0x1
	.value	0x406
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x24
	.long	.LASF566
	.byte	0x1
	.value	0x407
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x24
	.long	.LASF567
	.byte	0x1
	.value	0x408
	.long	0x23d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -241
	.uleb128 0x2b
	.long	.LASF592
	.long	0x23eb
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10711
	.uleb128 0x25
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x226f
	.uleb128 0x23
	.string	"e"
	.byte	0x1
	.value	0x439
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x24
	.long	.LASF568
	.byte	0x1
	.value	0x43a
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x24
	.long	.LASF553
	.byte	0x1
	.value	0x43b
	.long	0x1f62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.value	0x442
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x24
	.long	.LASF569
	.byte	0x1
	.value	0x443
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x24
	.long	.LASF570
	.byte	0x1
	.value	0x444
	.long	0x11fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x20
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x44e
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x24
	.long	.LASF571
	.byte	0x1
	.value	0x44f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x234a
	.uleb128 0x24
	.long	.LASF572
	.byte	0x1
	.value	0x499
	.long	0xff9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x22c8
	.uleb128 0x23
	.string	"m"
	.byte	0x1
	.value	0x4a0
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x24
	.long	.LASF553
	.byte	0x1
	.value	0x4a1
	.long	0x1f62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x20
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x24
	.long	.LASF568
	.byte	0x1
	.value	0x4b8
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x20
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x23
	.string	"eg"
	.byte	0x1
	.value	0x4c3
	.long	0x1358
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x24
	.long	.LASF1
	.byte	0x1
	.value	0x4c4
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x24
	.long	.LASF573
	.byte	0x1
	.value	0x4c5
	.long	0x1363
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF574
	.byte	0x1
	.value	0x4c6
	.long	0x11fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF575
	.byte	0x1
	.value	0x4c7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x24
	.long	.LASF568
	.byte	0x1
	.value	0x517
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.value	0x548
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x24
	.long	.LASF443
	.byte	0x1
	.value	0x548
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x24
	.long	.LASF575
	.byte	0x1
	.value	0x54e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xff9
	.uleb128 0x11
	.long	0x1f62
	.long	0x23d4
	.uleb128 0x12
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.long	.LASF576
	.uleb128 0x11
	.long	0x26b
	.long	0x23eb
	.uleb128 0x12
	.long	0x140
	.byte	0x17
	.byte	0
	.uleb128 0x13
	.long	0x23db
	.uleb128 0x24
	.long	.LASF577
	.byte	0x1
	.value	0x378
	.long	0x1374
	.uleb128 0x9
	.byte	0x3
	.quad	antic
	.uleb128 0x24
	.long	.LASF513
	.byte	0x1
	.value	0x379
	.long	0x1374
	.uleb128 0x9
	.byte	0x3
	.quad	transp
	.uleb128 0x24
	.long	.LASF578
	.byte	0x1
	.value	0x37a
	.long	0x1374
	.uleb128 0x9
	.byte	0x3
	.quad	comp
	.uleb128 0x24
	.long	.LASF533
	.byte	0x1
	.value	0x37b
	.long	0x1374
	.uleb128 0x9
	.byte	0x3
	.quad	delete
	.uleb128 0x24
	.long	.LASF532
	.byte	0x1
	.value	0x37c
	.long	0x1374
	.uleb128 0x9
	.byte	0x3
	.quad	insert
	.uleb128 0x2c
	.long	.LASF579
	.byte	0x4
	.byte	0x62
	.long	0x139
	.uleb128 0x11
	.long	0x5f6
	.long	0x2479
	.uleb128 0x12
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.long	.LASF157
	.byte	0x9
	.byte	0x34
	.long	0x2484
	.uleb128 0x13
	.long	0x2469
	.uleb128 0x11
	.long	0x233
	.long	0x2499
	.uleb128 0x12
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.long	.LASF580
	.byte	0x9
	.byte	0x50
	.long	0x24a4
	.uleb128 0x13
	.long	0x2489
	.uleb128 0x11
	.long	0x26b
	.long	0x24b9
	.uleb128 0x12
	.long	0x140
	.byte	0x98
	.byte	0
	.uleb128 0x2c
	.long	.LASF581
	.byte	0x2
	.byte	0x3f
	.long	0x24c4
	.uleb128 0x13
	.long	0x24a9
	.uleb128 0x2c
	.long	.LASF582
	.byte	0xb
	.byte	0xe4
	.long	0x139
	.uleb128 0x2c
	.long	.LASF583
	.byte	0xb
	.byte	0xec
	.long	0x11ea
	.uleb128 0x11
	.long	0xbf4
	.long	0x24ef
	.uleb128 0x12
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	.LASF584
	.byte	0xb
	.value	0x116
	.long	0x24df
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
.LASF356:
	.string	"REG_BR_PROB"
.LASF386:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF313:
	.string	"rtstr"
.LASF373:
	.string	"NOTE_INSN_DELETED"
.LASF89:
	.string	"_unused2"
.LASF241:
	.string	"UMOD"
.LASF295:
	.string	"min_align"
.LASF75:
	.string	"_fileno"
.LASF410:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF490:
	.string	"TYPE_ICMOV"
.LASF321:
	.string	"first"
.LASF540:
	.string	"st_antin"
.LASF282:
	.string	"CONSTANT_P_RTX"
.LASF561:
	.string	"optimize_mode_switching"
.LASF576:
	.string	"_Bool"
.LASF312:
	.string	"rtuint"
.LASF582:
	.string	"n_basic_blocks"
.LASF316:
	.string	"rt_cselib"
.LASF185:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF526:
	.string	"difference"
.LASF245:
	.string	"LSHIFTRT"
.LASF564:
	.string	"entity_map"
.LASF179:
	.string	"MATCH_PAR_DUP"
.LASF80:
	.string	"_shortbuf"
.LASF587:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF240:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF463:
	.string	"num_edges"
.LASF507:
	.string	"insn_ptr"
.LASF173:
	.string	"MATCH_OPERAND"
.LASF154:
	.string	"CCFPmode"
.LASF43:
	.string	"reg_class"
.LASF262:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF300:
	.string	"max_after_base"
.LASF263:
	.string	"UNLT"
.LASF459:
	.string	"probability"
.LASF126:
	.string	"CTImode"
.LASF61:
	.string	"_flags"
.LASF443:
	.string	"next"
.LASF56:
	.string	"__off_t"
.LASF124:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF284:
	.string	"VEC_MERGE"
.LASF81:
	.string	"_lock"
.LASF412:
	.string	"uhint"
.LASF217:
	.string	"RETURN"
.LASF413:
	.string	"generic"
.LASF584:
	.string	"entry_exit_blocks"
.LASF14:
	.string	"elem"
.LASF160:
	.string	"MODE_FLOAT"
.LASF575:
	.string	"mode_set"
.LASF304:
	.string	"alias"
.LASF301:
	.string	"offset_unsigned"
.LASF130:
	.string	"V2SImode"
.LASF25:
	.string	"Q_REGS"
.LASF204:
	.string	"CODE_LABEL"
.LASF125:
	.string	"CDImode"
.LASF210:
	.string	"UNSPEC"
.LASF203:
	.string	"BARRIER"
.LASF379:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF206:
	.string	"COND_EXEC"
.LASF220:
	.string	"CONST_INT"
.LASF216:
	.string	"CALL"
.LASF566:
	.string	"max_num_modes"
.LASF500:
	.string	"TYPE_FXCH"
.LASF132:
	.string	"V4QImode"
.LASF195:
	.string	"ATTR"
.LASF336:
	.string	"count"
.LASF314:
	.string	"rttype"
.LASF44:
	.string	"fp_cw_mode"
.LASF19:
	.string	"DREG"
.LASF326:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF403:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF131:
	.string	"V2DImode"
.LASF440:
	.string	"varray_type"
.LASF309:
	.string	"mem_attrs"
.LASF67:
	.string	"_IO_write_end"
.LASF350:
	.string	"REG_UNUSED"
.LASF188:
	.string	"DEFINE_DELAY"
.LASF238:
	.string	"MINUS"
.LASF22:
	.string	"SIREG"
.LASF419:
	.string	"sched_info_tag"
.LASF228:
	.string	"STRICT_LOW_PART"
.LASF170:
	.string	"INCLUDE"
.LASF470:
	.string	"TYPE_OTHER"
.LASF399:
	.string	"GR_FRAME_POINTER"
.LASF334:
	.string	"index"
.LASF426:
	.string	"freq"
.LASF266:
	.string	"ZERO_EXTEND"
.LASF269:
	.string	"FLOAT_TRUNCATE"
.LASF396:
	.string	"GR_PC"
.LASF542:
	.string	"compute_nearerout"
.LASF21:
	.string	"BREG"
.LASF141:
	.string	"V2SFmode"
.LASF433:
	.string	"varray_data"
.LASF270:
	.string	"FLOAT"
.LASF362:
	.string	"REG_EH_CONTEXT"
.LASF96:
	.string	"machine_mode"
.LASF319:
	.string	"rtmem"
.LASF504:
	.string	"TYPE_MMX"
.LASF279:
	.string	"RANGE_REG"
.LASF317:
	.string	"rtbit"
.LASF442:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF103:
	.string	"TImode"
.LASF255:
	.string	"PRE_MODIFY"
.LASF47:
	.string	"FP_CW_ANY"
.LASF502:
	.string	"TYPE_CLD"
.LASF268:
	.string	"FLOAT_EXTEND"
.LASF423:
	.string	"last_note_uid"
.LASF6:
	.string	"in_struct"
.LASF374:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF101:
	.string	"SImode"
.LASF212:
	.string	"ADDR_VEC"
.LASF563:
	.string	"num_modes"
.LASF142:
	.string	"V2DFmode"
.LASF536:
	.string	"avin"
.LASF294:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF543:
	.string	"st_avloc"
.LASF308:
	.string	"align"
.LASF323:
	.string	"indx"
.LASF231:
	.string	"SYMBOL_REF"
.LASF372:
	.string	"NOTE_INSN_BIAS"
.LASF394:
	.string	"NOTE_INSN_MAX"
.LASF497:
	.string	"TYPE_FPSPC"
.LASF469:
	.string	"attr_type"
.LASF184:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF236:
	.string	"COMPARE"
.LASF264:
	.string	"LTGT"
.LASF276:
	.string	"HIGH"
.LASF233:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF1:
	.string	"mode"
.LASF102:
	.string	"DImode"
.LASF550:
	.string	"st_antout"
.LASF450:
	.string	"elms"
.LASF408:
	.string	"const_equiv_data"
.LASF74:
	.string	"_chain"
.LASF553:
	.string	"info"
.LASF254:
	.string	"POST_INC"
.LASF115:
	.string	"TFmode"
.LASF472:
	.string	"TYPE_ALU1"
.LASF52:
	.string	"unsigned char"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF589:
	.string	"_IO_lock_t"
.LASF430:
	.string	"basic_block"
.LASF98:
	.string	"BImode"
.LASF252:
	.string	"PRE_INC"
.LASF349:
	.string	"REG_NO_CONFLICT"
.LASF112:
	.string	"SFmode"
.LASF499:
	.string	"TYPE_FCMP"
.LASF491:
	.string	"TYPE_FMOV"
.LASF577:
	.string	"antic"
.LASF201:
	.string	"JUMP_INSN"
.LASF331:
	.string	"cond_local_set"
.LASF460:
	.string	"edge"
.LASF164:
	.string	"MODE_COMPLEX_FLOAT"
.LASF318:
	.string	"rttree"
.LASF371:
	.string	"insn_note"
.LASF390:
	.string	"NOTE_INSN_RANGE_END"
.LASF183:
	.string	"DEFINE_SPLIT"
.LASF222:
	.string	"CONST_VECTOR"
.LASF180:
	.string	"MATCH_INSN"
.LASF520:
	.string	"compute_antinout_edge"
.LASF113:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF453:
	.string	"gcov_type"
.LASF50:
	.string	"size_t"
.LASF214:
	.string	"PREFETCH"
.LASF473:
	.string	"TYPE_NEGNOT"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF107:
	.string	"PSImode"
.LASF496:
	.string	"TYPE_FDIV"
.LASF278:
	.string	"RANGE_INFO"
.LASF513:
	.string	"transp"
.LASF409:
	.string	"rtunion_def"
.LASF485:
	.string	"TYPE_SETCC"
.LASF489:
	.string	"TYPE_CALLV"
.LASF194:
	.string	"DEFINE_ATTR"
.LASF196:
	.string	"SET_ATTR"
.LASF121:
	.string	"TCmode"
.LASF476:
	.string	"TYPE_TEST"
.LASF271:
	.string	"UNSIGNED_FLOAT"
.LASF361:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF418:
	.string	"cselib_val_struct"
.LASF393:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF66:
	.string	"_IO_write_ptr"
.LASF243:
	.string	"ROTATE"
.LASF329:
	.string	"succ"
.LASF425:
	.string	"refs"
.LASF267:
	.string	"TRUNCATE"
.LASF354:
	.string	"REG_DEP_ANTI"
.LASF118:
	.string	"SCmode"
.LASF404:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF108:
	.string	"PDImode"
.LASF375:
	.string	"NOTE_INSN_BLOCK_END"
.LASF415:
	.string	"bitmap"
.LASF384:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF581:
	.string	"rtx_class"
.LASF571:
	.string	"link"
.LASF338:
	.string	"flags"
.LASF171:
	.string	"EXPR_LIST"
.LASF198:
	.string	"EQ_ATTR"
.LASF151:
	.string	"CCGOCmode"
.LASF229:
	.string	"CONCAT"
.LASF455:
	.string	"pred_next"
.LASF297:
	.string	"min_after_vec"
.LASF59:
	.string	"FILE"
.LASF235:
	.string	"COND"
.LASF447:
	.string	"simple_bitmap_def"
.LASF161:
	.string	"MODE_PARTIAL_INT"
.LASF537:
	.string	"compute_farthest"
.LASF15:
	.string	"tree"
.LASF119:
	.string	"DCmode"
.LASF531:
	.string	"compute_insert_delete"
.LASF570:
	.string	"live_now"
.LASF186:
	.string	"DEFINE_COMBINE"
.LASF585:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF244:
	.string	"ASHIFTRT"
.LASF495:
	.string	"TYPE_FMUL"
.LASF149:
	.string	"CCmode"
.LASF506:
	.string	"seginfo"
.LASF327:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF377:
	.string	"NOTE_INSN_LOOP_END"
.LASF147:
	.string	"V16SFmode"
.LASF391:
	.string	"NOTE_INSN_LIVE"
.LASF191:
	.string	"DEFINE_COND_EXEC"
.LASF529:
	.string	"later"
.LASF70:
	.string	"_IO_save_base"
.LASF187:
	.string	"DEFINE_EXPAND"
.LASF539:
	.string	"st_avin"
.LASF436:
	.string	"elements_used"
.LASF138:
	.string	"V8SImode"
.LASF200:
	.string	"INSN"
.LASF311:
	.string	"rtint"
.LASF230:
	.string	"LABEL_REF"
.LASF353:
	.string	"REG_LABEL"
.LASF432:
	.string	"elt_list"
.LASF341:
	.string	"REG_DEAD"
.LASF534:
	.string	"file"
.LASF381:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF84:
	.string	"__pad2"
.LASF580:
	.string	"mode_size"
.LASF344:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF452:
	.string	"regset"
.LASF464:
	.string	"index_to_edge"
.LASF567:
	.string	"emited"
.LASF467:
	.string	"UPDATE_LIFE_GLOBAL"
.LASF150:
	.string	"CCGCmode"
.LASF333:
	.string	"global_live_at_end"
.LASF226:
	.string	"SCRATCH"
.LASF136:
	.string	"V8QImode"
.LASF139:
	.string	"V8DImode"
.LASF167:
	.string	"MAX_MODE_CLASS"
.LASF481:
	.string	"TYPE_ISHIFT"
.LASF478:
	.string	"TYPE_IMOVX"
.LASF265:
	.string	"SIGN_EXTEND"
.LASF562:
	.string	"need_commit"
.LASF45:
	.string	"FP_CW_STORED"
.LASF287:
	.string	"VEC_DUPLICATE"
.LASF510:
	.string	"bb_info"
.LASF91:
	.string	"_next"
.LASF517:
	.string	"qout"
.LASF305:
	.string	"expr"
.LASF387:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF535:
	.string	"avloc"
.LASF525:
	.string	"earliest"
.LASF145:
	.string	"V8SFmode"
.LASF551:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF352:
	.string	"REG_CC_USER"
.LASF209:
	.string	"ASM_OPERANDS"
.LASF153:
	.string	"CCZmode"
.LASF378:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF556:
	.string	"live"
.LASF493:
	.string	"TYPE_FOP1"
.LASF367:
	.string	"REG_NON_LOCAL_GOTO"
.LASF213:
	.string	"ADDR_DIFF_VEC"
.LASF275:
	.string	"ZERO_EXTRACT"
.LASF411:
	.string	"hint"
.LASF208:
	.string	"ASM_INPUT"
.LASF258:
	.string	"ORDERED"
.LASF146:
	.string	"V8DFmode"
.LASF435:
	.string	"num_elements"
.LASF272:
	.string	"UNSIGNED_FIX"
.LASF572:
	.string	"current_mode"
.LASF46:
	.string	"FP_CW_UNINITIALIZED"
.LASF29:
	.string	"GENERAL_REGS"
.LASF487:
	.string	"TYPE_POP"
.LASF480:
	.string	"TYPE_INCDEC"
.LASF438:
	.string	"name"
.LASF172:
	.string	"INSN_LIST"
.LASF92:
	.string	"_sbuf"
.LASF280:
	.string	"RANGE_VAR"
.LASF431:
	.string	"changes_mode"
.LASF72:
	.string	"_IO_save_end"
.LASF159:
	.string	"MODE_INT"
.LASF437:
	.string	"element_size"
.LASF2:
	.string	"jump"
.LASF557:
	.string	"regno"
.LASF521:
	.string	"compute_earliest"
.LASF281:
	.string	"RANGE_LIVE"
.LASF129:
	.string	"V2HImode"
.LASF511:
	.string	"computing"
.LASF9:
	.string	"frame_related"
.LASF554:
	.string	"make_preds_opaque"
.LASF417:
	.string	"const_equiv"
.LASF422:
	.string	"last_uid"
.LASF315:
	.string	"rt_addr_diff_vec_flags"
.LASF401:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF290:
	.string	"SS_MINUS"
.LASF492:
	.string	"TYPE_FOP"
.LASF177:
	.string	"MATCH_PARALLEL"
.LASF134:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF468:
	.string	"UPDATE_LIFE_GLOBAL_RM_NOTES"
.LASF343:
	.string	"REG_EQUIV"
.LASF522:
	.string	"n_exprs"
.LASF53:
	.string	"short unsigned int"
.LASF54:
	.string	"signed char"
.LASF176:
	.string	"MATCH_OPERATOR"
.LASF573:
	.string	"src_bb"
.LASF434:
	.string	"varray_head_tag"
.LASF322:
	.string	"current"
.LASF578:
	.string	"comp"
.LASF292:
	.string	"SS_TRUNCATE"
.LASF357:
	.string	"REG_EXEC_COUNT"
.LASF296:
	.string	"base_after_vec"
.LASF181:
	.string	"DEFINE_INSN"
.LASF57:
	.string	"__off64_t"
.LASF135:
	.string	"V4DImode"
.LASF335:
	.string	"loop_depth"
.LASF64:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF82:
	.string	"_offset"
.LASF402:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF355:
	.string	"REG_DEP_OUTPUT"
.LASF69:
	.string	"_IO_buf_end"
.LASF448:
	.string	"n_bits"
.LASF190:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF291:
	.string	"US_MINUS"
.LASF546:
	.string	"compute_rev_insert_delete"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF274:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF428:
	.string	"live_length"
.LASF545:
	.string	"nearerout"
.LASF215:
	.string	"CLOBBER"
.LASF454:
	.string	"edge_def"
.LASF88:
	.string	"_mode"
.LASF165:
	.string	"MODE_VECTOR_INT"
.LASF65:
	.string	"_IO_write_base"
.LASF359:
	.string	"REG_SAVE_AREA"
.LASF283:
	.string	"CALL_PLACEHOLDER"
.LASF143:
	.string	"V4SFmode"
.LASF538:
	.string	"st_avout"
.LASF544:
	.string	"nearer"
.LASF512:
	.string	"antloc"
.LASF569:
	.string	"last_mode"
.LASF488:
	.string	"TYPE_CALL"
.LASF237:
	.string	"PLUS"
.LASF253:
	.string	"POST_DEC"
.LASF445:
	.string	"bits"
.LASF100:
	.string	"HImode"
.LASF339:
	.string	"rtunion"
.LASF380:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF466:
	.string	"UPDATE_LIFE_LOCAL"
.LASF163:
	.string	"MODE_COMPLEX_INT"
.LASF484:
	.string	"TYPE_IBR"
.LASF49:
	.string	"long int"
.LASF406:
	.string	"GR_VIRTUAL_CFA"
.LASF583:
	.string	"basic_block_info"
.LASF345:
	.string	"REG_WAS_0"
.LASF574:
	.string	"live_at_edge"
.LASF366:
	.string	"REG_NORETURN"
.LASF90:
	.string	"_IO_marker"
.LASF527:
	.string	"temp_bitmap"
.LASF114:
	.string	"XFmode"
.LASF365:
	.string	"REG_MAYBE_DEAD"
.LASF144:
	.string	"V4DFmode"
.LASF4:
	.string	"unchanging"
.LASF340:
	.string	"reg_note"
.LASF168:
	.string	"rtx_code"
.LASF591:
	.string	"new_seginfo"
.LASF471:
	.string	"TYPE_MULTI"
.LASF20:
	.string	"CREG"
.LASF169:
	.string	"UNKNOWN"
.LASF211:
	.string	"UNSPEC_VOLATILE"
.LASF383:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF530:
	.string	"laterin"
.LASF51:
	.string	"long unsigned int"
.LASF547:
	.string	"pre_edge_lcm"
.LASF11:
	.string	"rtx_def"
.LASF516:
	.string	"worklist"
.LASF110:
	.string	"HFmode"
.LASF218:
	.string	"TRAP_IF"
.LASF427:
	.string	"deaths"
.LASF363:
	.string	"REG_EH_REGION"
.LASF346:
	.string	"REG_RETVAL"
.LASF122:
	.string	"CQImode"
.LASF58:
	.string	"char"
.LASF120:
	.string	"XCmode"
.LASF18:
	.string	"AREG"
.LASF532:
	.string	"insert"
.LASF68:
	.string	"_IO_buf_base"
.LASF246:
	.string	"ROTATERT"
.LASF518:
	.string	"qend"
.LASF232:
	.string	"ADDRESSOF"
.LASF368:
	.string	"REG_SETJMP"
.LASF128:
	.string	"V2QImode"
.LASF106:
	.string	"PHImode"
.LASF63:
	.string	"_IO_read_end"
.LASF420:
	.string	"reg_info_def"
.LASF127:
	.string	"COImode"
.LASF475:
	.string	"TYPE_ICMP"
.LASF251:
	.string	"PRE_DEC"
.LASF477:
	.string	"TYPE_IMOV"
.LASF494:
	.string	"TYPE_FSGN"
.LASF60:
	.string	"_IO_FILE"
.LASF382:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF528:
	.string	"compute_laterin"
.LASF400:
	.string	"GR_HARD_FRAME_POINTER"
.LASF351:
	.string	"REG_CC_SETTER"
.LASF158:
	.string	"MODE_RANDOM"
.LASF533:
	.string	"delete"
.LASF289:
	.string	"US_PLUS"
.LASF462:
	.string	"num_blocks"
.LASF148:
	.string	"BLKmode"
.LASF117:
	.string	"HCmode"
.LASF223:
	.string	"CONST_STRING"
.LASF286:
	.string	"VEC_CONCAT"
.LASF483:
	.string	"TYPE_IDIV"
.LASF307:
	.string	"size"
.LASF83:
	.string	"__pad1"
.LASF85:
	.string	"__pad3"
.LASF86:
	.string	"__pad4"
.LASF87:
	.string	"__pad5"
.LASF358:
	.string	"REG_NOALIAS"
.LASF199:
	.string	"ATTR_FLAG"
.LASF155:
	.string	"CCFPUmode"
.LASF342:
	.string	"REG_INC"
.LASF189:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF451:
	.string	"sbitmap"
.LASF73:
	.string	"_markers"
.LASF93:
	.string	"_pos"
.LASF560:
	.string	"setter"
.LASF193:
	.string	"ADDRESS"
.LASF458:
	.string	"insns"
.LASF586:
	.string	"lcm.c"
.LASF414:
	.string	"cptr"
.LASF559:
	.string	"reg_becomes_live"
.LASF320:
	.string	"bitmap_head_def"
.LASF429:
	.string	"calls_crossed"
.LASF293:
	.string	"US_TRUNCATE"
.LASF395:
	.string	"global_rtl_index"
.LASF558:
	.string	"nregs"
.LASF288:
	.string	"SS_PLUS"
.LASF250:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF302:
	.string	"scale"
.LASF99:
	.string	"QImode"
.LASF579:
	.string	"target_flags"
.LASF590:
	.string	"compute_available"
.LASF439:
	.string	"data"
.LASF398:
	.string	"GR_STACK_POINTER"
.LASF111:
	.string	"TQFmode"
.LASF548:
	.string	"pre_edge_rev_lcm"
.LASF325:
	.string	"head"
.LASF299:
	.string	"min_after_base"
.LASF482:
	.string	"TYPE_IMUL"
.LASF416:
	.string	"sched"
.LASF17:
	.string	"NO_REGS"
.LASF524:
	.string	"kill"
.LASF104:
	.string	"OImode"
.LASF364:
	.string	"REG_SAVE_NOTE"
.LASF449:
	.string	"bytes"
.LASF248:
	.string	"SMAX"
.LASF407:
	.string	"GR_MAX"
.LASF285:
	.string	"VEC_SELECT"
.LASF348:
	.string	"REG_NONNEG"
.LASF166:
	.string	"MODE_VECTOR_FLOAT"
.LASF256:
	.string	"POST_MODIFY"
.LASF549:
	.string	"st_antloc"
.LASF523:
	.string	"avout"
.LASF360:
	.string	"REG_BR_PRED"
.LASF182:
	.string	"DEFINE_PEEPHOLE"
.LASF94:
	.string	"long long unsigned int"
.LASF389:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF306:
	.string	"offset"
.LASF303:
	.string	"addr_diff_vec_flags"
.LASF78:
	.string	"_cur_column"
.LASF178:
	.string	"MATCH_OP_DUP"
.LASF192:
	.string	"SEQUENCE"
.LASF109:
	.string	"QFmode"
.LASF503:
	.string	"TYPE_SSE"
.LASF424:
	.string	"sets"
.LASF219:
	.string	"RESX"
.LASF457:
	.string	"dest"
.LASF207:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF71:
	.string	"_IO_backup_base"
.LASF257:
	.string	"UNORDERED"
.LASF156:
	.string	"MAX_MACHINE_MODE"
.LASF62:
	.string	"_IO_read_ptr"
.LASF461:
	.string	"edge_list"
.LASF501:
	.string	"TYPE_STR"
.LASF332:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF174:
	.string	"MATCH_SCRATCH"
.LASF224:
	.string	"CONST"
.LASF273:
	.string	"SQRT"
.LASF397:
	.string	"GR_CC0"
.LASF157:
	.string	"mode_class"
.LASF239:
	.string	"MULT"
.LASF162:
	.string	"MODE_CC"
.LASF330:
	.string	"local_set"
.LASF105:
	.string	"PQImode"
.LASF519:
	.string	"qlen"
.LASF137:
	.string	"V8HImode"
.LASF77:
	.string	"_old_offset"
.LASF202:
	.string	"CALL_INSN"
.LASF227:
	.string	"SUBREG"
.LASF140:
	.string	"V16QImode"
.LASF369:
	.string	"REG_ALWAYS_RETURN"
.LASF95:
	.string	"long long int"
.LASF505:
	.string	"TYPE_FISTP"
.LASF347:
	.string	"REG_LIBCALL"
.LASF76:
	.string	"_flags2"
.LASF116:
	.string	"QCmode"
.LASF225:
	.string	"VALUE"
.LASF205:
	.string	"NOTE"
.LASF514:
	.string	"antin"
.LASF249:
	.string	"UMIN"
.LASF175:
	.string	"MATCH_DUP"
.LASF441:
	.string	"HARD_REG_ELT_TYPE"
.LASF324:
	.string	"basic_block_def"
.LASF498:
	.string	"TYPE_FCMOV"
.LASF486:
	.string	"TYPE_PUSH"
.LASF552:
	.string	"add_seginfo"
.LASF7:
	.string	"used"
.LASF541:
	.string	"farthest"
.LASF376:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF508:
	.string	"bbnum"
.LASF446:
	.string	"bitmap_element"
.LASF123:
	.string	"CHImode"
.LASF392:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF197:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF221:
	.string	"CONST_DOUBLE"
.LASF421:
	.string	"first_uid"
.LASF152:
	.string	"CCNOmode"
.LASF133:
	.string	"V4HImode"
.LASF479:
	.string	"TYPE_LEA"
.LASF259:
	.string	"UNEQ"
.LASF242:
	.string	"ASHIFT"
.LASF247:
	.string	"SMIN"
.LASF592:
	.string	"__FUNCTION__"
.LASF234:
	.string	"IF_THEN_ELSE"
.LASF509:
	.string	"regs_live"
.LASF388:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF385:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF48:
	.string	"unsigned int"
.LASF588:
	.string	"tree_node"
.LASF298:
	.string	"max_after_vec"
.LASF260:
	.string	"UNGE"
.LASF568:
	.string	"no_mode"
.LASF55:
	.string	"short int"
.LASF328:
	.string	"pred"
.LASF261:
	.string	"UNGT"
.LASF444:
	.string	"prev"
.LASF79:
	.string	"_vtable_offset"
.LASF555:
	.string	"reg_dies"
.LASF515:
	.string	"antout"
.LASF97:
	.string	"VOIDmode"
.LASF370:
	.string	"REG_VTABLE_REF"
.LASF405:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF277:
	.string	"LO_SUM"
.LASF465:
	.string	"update_life_extent"
.LASF565:
	.string	"n_entities"
.LASF337:
	.string	"frequency"
.LASF310:
	.string	"rtwint"
.LASF474:
	.string	"TYPE_ALU"
.LASF456:
	.string	"succ_next"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
