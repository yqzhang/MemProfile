	.file	"splay-tree.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 splay-tree.c -mtune=generic -march=x86-64 -g
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
	.type	splay_tree_delete_helper, @function
splay_tree_delete_helper:
.LFB2:
	.file 1 "splay-tree.c"
	.loc 1 59 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# node, node
	.loc 1 60 0
	cmpq	$0, -16(%rbp)	#, node
	jne	.L2	#,
	.loc 1 61 0
	jmp	.L1	#
.L2:
	.loc 1 63 0
	movq	-16(%rbp), %rax	# node, tmp69
	movq	16(%rax), %rdx	# node_1(D)->left, D.5711
	movq	-8(%rbp), %rax	# sp, tmp70
	movq	%rdx, %rsi	# D.5711,
	movq	%rax, %rdi	# tmp70,
	call	splay_tree_delete_helper	#
	.loc 1 64 0
	movq	-16(%rbp), %rax	# node, tmp71
	movq	24(%rax), %rdx	# node_1(D)->right, D.5711
	movq	-8(%rbp), %rax	# sp, tmp72
	movq	%rdx, %rsi	# D.5711,
	movq	%rax, %rdi	# tmp72,
	call	splay_tree_delete_helper	#
	.loc 1 66 0
	movq	-8(%rbp), %rax	# sp, tmp73
	movq	16(%rax), %rax	# sp_3(D)->delete_key, D.5712
	testq	%rax, %rax	# D.5712
	je	.L4	#,
	.loc 1 67 0
	movq	-8(%rbp), %rax	# sp, tmp74
	movq	16(%rax), %rax	# sp_3(D)->delete_key, D.5712
	movq	-16(%rbp), %rdx	# node, tmp75
	movq	(%rdx), %rdx	# node_1(D)->key, D.5713
	movq	%rdx, %rdi	# D.5713,
	call	*%rax	# D.5712
.L4:
	.loc 1 68 0
	movq	-8(%rbp), %rax	# sp, tmp76
	movq	24(%rax), %rax	# sp_3(D)->delete_value, D.5714
	testq	%rax, %rax	# D.5714
	je	.L5	#,
	.loc 1 69 0
	movq	-8(%rbp), %rax	# sp, tmp77
	movq	24(%rax), %rax	# sp_3(D)->delete_value, D.5714
	movq	-16(%rbp), %rdx	# node, tmp78
	movq	8(%rdx), %rdx	# node_1(D)->value, D.5713
	movq	%rdx, %rdi	# D.5713,
	call	*%rax	# D.5714
.L5:
	.loc 1 71 0
	movq	-8(%rbp), %rax	# sp, tmp79
	movq	40(%rax), %rax	# sp_3(D)->deallocate, D.5715
	movq	-8(%rbp), %rdx	# sp, tmp80
	movq	48(%rdx), %rcx	# sp_3(D)->allocate_data, D.5716
	movq	-16(%rbp), %rdx	# node, tmp81
	movq	%rcx, %rsi	# D.5716,
	movq	%rdx, %rdi	# tmp81,
	call	*%rax	# D.5715
.L1:
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	splay_tree_delete_helper, .-splay_tree_delete_helper
	.type	splay_tree_splay_helper, @function
splay_tree_splay_helper:
.LFB3:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# sp, sp
	movq	%rsi, -64(%rbp)	# key, key
	movq	%rdx, -72(%rbp)	# node, node
	movq	%rcx, -80(%rbp)	# parent, parent
	movq	%r8, -88(%rbp)	# grandparent, grandparent
	.loc 1 89 0
	movq	-72(%rbp), %rax	# node, tmp102
	movq	(%rax), %rax	# *node_4(D), tmp103
	movq	%rax, -24(%rbp)	# tmp103, n
	.loc 1 91 0
	cmpq	$0, -24(%rbp)	#, n
	jne	.L7	#,
	.loc 1 92 0
	movq	-80(%rbp), %rax	# parent, tmp104
	movq	(%rax), %rax	# *parent_6(D), D.5717
	jmp	.L8	#
.L7:
	.loc 1 94 0
	movq	-56(%rbp), %rax	# sp, tmp105
	movq	8(%rax), %rax	# sp_8(D)->comp, D.5718
	movq	-24(%rbp), %rdx	# n, tmp106
	movq	(%rdx), %rcx	# n_5->key, D.5719
	movq	-64(%rbp), %rdx	# key, tmp107
	movq	%rcx, %rsi	# D.5719,
	movq	%rdx, %rdi	# tmp107,
	call	*%rax	# D.5718
	movl	%eax, -36(%rbp)	# tmp108, comparison
	.loc 1 96 0
	cmpl	$0, -36(%rbp)	#, comparison
	jne	.L9	#,
	.loc 1 98 0
	movq	$0, -32(%rbp)	#, next
	jmp	.L10	#
.L9:
	.loc 1 99 0
	cmpl	$0, -36(%rbp)	#, comparison
	jns	.L11	#,
	.loc 1 101 0
	movq	-24(%rbp), %rax	# n, tmp112
	addq	$16, %rax	#, tmp111
	movq	%rax, -32(%rbp)	# tmp111, next
	jmp	.L10	#
.L11:
	.loc 1 104 0
	movq	-24(%rbp), %rax	# n, tmp116
	addq	$24, %rax	#, tmp115
	movq	%rax, -32(%rbp)	# tmp115, next
.L10:
	.loc 1 106 0
	cmpq	$0, -32(%rbp)	#, next
	je	.L12	#,
	.loc 1 109 0
	movq	-80(%rbp), %rdi	# parent, tmp117
	movq	-72(%rbp), %rcx	# node, tmp118
	movq	-32(%rbp), %rdx	# next, tmp119
	movq	-64(%rbp), %rsi	# key, tmp120
	movq	-56(%rbp), %rax	# sp, tmp121
	movq	%rdi, %r8	# tmp117,
	movq	%rax, %rdi	# tmp121,
	call	splay_tree_splay_helper	#
	movq	%rax, -24(%rbp)	# tmp122, n
	.loc 1 113 0
	movq	-72(%rbp), %rax	# node, tmp123
	movq	(%rax), %rax	# *node_4(D), D.5720
	cmpq	-24(%rbp), %rax	# n, D.5720
	je	.L12	#,
	.loc 1 114 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L12:
	.loc 1 117 0
	cmpq	$0, -80(%rbp)	#, parent
	jne	.L13	#,
	.loc 1 119 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L13:
	.loc 1 123 0
	cmpq	$0, -88(%rbp)	#, grandparent
	jne	.L14	#,
	.loc 1 125 0
	movq	-80(%rbp), %rax	# parent, tmp124
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	16(%rax), %rax	# _21->left, D.5720
	cmpq	-24(%rbp), %rax	# n, D.5720
	jne	.L15	#,
	.loc 1 127 0
	movq	-24(%rbp), %rax	# n, tmp125
	movq	24(%rax), %rdx	# n_2->right, D.5720
	movq	-72(%rbp), %rax	# node, tmp126
	movq	%rdx, (%rax)	# D.5720, *node_4(D)
	.loc 1 128 0
	movq	-80(%rbp), %rax	# parent, tmp127
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp128
	movq	%rdx, 24(%rax)	# D.5720, n_2->right
	jmp	.L16	#
.L15:
	.loc 1 132 0
	movq	-24(%rbp), %rax	# n, tmp129
	movq	16(%rax), %rdx	# n_2->left, D.5720
	movq	-72(%rbp), %rax	# node, tmp130
	movq	%rdx, (%rax)	# D.5720, *node_4(D)
	.loc 1 133 0
	movq	-80(%rbp), %rax	# parent, tmp131
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp132
	movq	%rdx, 16(%rax)	# D.5720, n_2->left
.L16:
	.loc 1 135 0
	movq	-80(%rbp), %rax	# parent, tmp133
	movq	-24(%rbp), %rdx	# n, tmp134
	movq	%rdx, (%rax)	# tmp134, *parent_6(D)
	.loc 1 136 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L14:
	.loc 1 141 0
	movq	-80(%rbp), %rax	# parent, tmp135
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	16(%rax), %rax	# _28->left, D.5720
	cmpq	-24(%rbp), %rax	# n, D.5720
	jne	.L17	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# parent, tmp136
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-88(%rbp), %rax	# grandparent, tmp137
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	16(%rax), %rax	# _31->left, D.5720
	cmpq	%rax, %rdx	# D.5720, D.5720
	jne	.L17	#,
.LBB2:
	.loc 1 143 0 is_stmt 1
	movq	-80(%rbp), %rax	# parent, tmp138
	movq	(%rax), %rax	# *parent_6(D), tmp139
	movq	%rax, -16(%rbp)	# tmp139, p
	.loc 1 145 0
	movq	-88(%rbp), %rax	# grandparent, tmp140
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	-16(%rbp), %rdx	# p, tmp141
	movq	24(%rdx), %rdx	# p_33->right, D.5720
	movq	%rdx, 16(%rax)	# D.5720, _34->left
	.loc 1 146 0
	movq	-88(%rbp), %rax	# grandparent, tmp142
	movq	(%rax), %rdx	# *grandparent_20(D), D.5720
	movq	-16(%rbp), %rax	# p, tmp143
	movq	%rdx, 24(%rax)	# D.5720, p_33->right
	.loc 1 147 0
	movq	-24(%rbp), %rax	# n, tmp144
	movq	24(%rax), %rdx	# n_2->right, D.5720
	movq	-16(%rbp), %rax	# p, tmp145
	movq	%rdx, 16(%rax)	# D.5720, p_33->left
	.loc 1 148 0
	movq	-24(%rbp), %rax	# n, tmp146
	movq	-16(%rbp), %rdx	# p, tmp147
	movq	%rdx, 24(%rax)	# tmp147, n_2->right
	.loc 1 149 0
	movq	-88(%rbp), %rax	# grandparent, tmp148
	movq	-24(%rbp), %rdx	# n, tmp149
	movq	%rdx, (%rax)	# tmp149, *grandparent_20(D)
	.loc 1 150 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L17:
.LBE2:
	.loc 1 152 0
	movq	-80(%rbp), %rax	# parent, tmp150
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	24(%rax), %rax	# _39->right, D.5720
	cmpq	-24(%rbp), %rax	# n, D.5720
	jne	.L18	#,
	.loc 1 152 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# parent, tmp151
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-88(%rbp), %rax	# grandparent, tmp152
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	24(%rax), %rax	# _42->right, D.5720
	cmpq	%rax, %rdx	# D.5720, D.5720
	jne	.L18	#,
.LBB3:
	.loc 1 154 0 is_stmt 1
	movq	-80(%rbp), %rax	# parent, tmp153
	movq	(%rax), %rax	# *parent_6(D), tmp154
	movq	%rax, -8(%rbp)	# tmp154, p
	.loc 1 156 0
	movq	-88(%rbp), %rax	# grandparent, tmp155
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	-8(%rbp), %rdx	# p, tmp156
	movq	16(%rdx), %rdx	# p_44->left, D.5720
	movq	%rdx, 24(%rax)	# D.5720, _45->right
	.loc 1 157 0
	movq	-88(%rbp), %rax	# grandparent, tmp157
	movq	(%rax), %rdx	# *grandparent_20(D), D.5720
	movq	-8(%rbp), %rax	# p, tmp158
	movq	%rdx, 16(%rax)	# D.5720, p_44->left
	.loc 1 158 0
	movq	-24(%rbp), %rax	# n, tmp159
	movq	16(%rax), %rdx	# n_2->left, D.5720
	movq	-8(%rbp), %rax	# p, tmp160
	movq	%rdx, 24(%rax)	# D.5720, p_44->right
	.loc 1 159 0
	movq	-24(%rbp), %rax	# n, tmp161
	movq	-8(%rbp), %rdx	# p, tmp162
	movq	%rdx, 16(%rax)	# tmp162, n_2->left
	.loc 1 160 0
	movq	-88(%rbp), %rax	# grandparent, tmp163
	movq	-24(%rbp), %rdx	# n, tmp164
	movq	%rdx, (%rax)	# tmp164, *grandparent_20(D)
	.loc 1 161 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L18:
.LBE3:
	.loc 1 166 0
	movq	-80(%rbp), %rax	# parent, tmp165
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	16(%rax), %rax	# _50->left, D.5720
	cmpq	-24(%rbp), %rax	# n, D.5720
	jne	.L19	#,
	.loc 1 168 0
	movq	-80(%rbp), %rax	# parent, tmp166
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	-24(%rbp), %rdx	# n, tmp167
	movq	24(%rdx), %rdx	# n_2->right, D.5720
	movq	%rdx, 16(%rax)	# D.5720, _52->left
	.loc 1 169 0
	movq	-80(%rbp), %rax	# parent, tmp168
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp169
	movq	%rdx, 24(%rax)	# D.5720, n_2->right
	.loc 1 170 0
	movq	-88(%rbp), %rax	# grandparent, tmp170
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	-24(%rbp), %rdx	# n, tmp171
	movq	16(%rdx), %rdx	# n_2->left, D.5720
	movq	%rdx, 24(%rax)	# D.5720, _55->right
	.loc 1 171 0
	movq	-88(%rbp), %rax	# grandparent, tmp172
	movq	(%rax), %rdx	# *grandparent_20(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp173
	movq	%rdx, 16(%rax)	# D.5720, n_2->left
	.loc 1 172 0
	movq	-88(%rbp), %rax	# grandparent, tmp174
	movq	-24(%rbp), %rdx	# n, tmp175
	movq	%rdx, (%rax)	# tmp175, *grandparent_20(D)
	.loc 1 173 0
	movq	-24(%rbp), %rax	# n, D.5717
	jmp	.L8	#
.L19:
	.loc 1 177 0
	movq	-80(%rbp), %rax	# parent, tmp176
	movq	(%rax), %rax	# *parent_6(D), D.5720
	movq	-24(%rbp), %rdx	# n, tmp177
	movq	16(%rdx), %rdx	# n_2->left, D.5720
	movq	%rdx, 24(%rax)	# D.5720, _59->right
	.loc 1 178 0
	movq	-80(%rbp), %rax	# parent, tmp178
	movq	(%rax), %rdx	# *parent_6(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp179
	movq	%rdx, 16(%rax)	# D.5720, n_2->left
	.loc 1 179 0
	movq	-88(%rbp), %rax	# grandparent, tmp180
	movq	(%rax), %rax	# *grandparent_20(D), D.5720
	movq	-24(%rbp), %rdx	# n, tmp181
	movq	24(%rdx), %rdx	# n_2->right, D.5720
	movq	%rdx, 16(%rax)	# D.5720, _62->left
	.loc 1 180 0
	movq	-88(%rbp), %rax	# grandparent, tmp182
	movq	(%rax), %rdx	# *grandparent_20(D), D.5720
	movq	-24(%rbp), %rax	# n, tmp183
	movq	%rdx, 24(%rax)	# D.5720, n_2->right
	.loc 1 181 0
	movq	-88(%rbp), %rax	# grandparent, tmp184
	movq	-24(%rbp), %rdx	# n, tmp185
	movq	%rdx, (%rax)	# tmp185, *grandparent_20(D)
	.loc 1 182 0
	movq	-24(%rbp), %rax	# n, D.5717
.L8:
	.loc 1 184 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	splay_tree_splay_helper, .-splay_tree_splay_helper
	.type	splay_tree_splay, @function
splay_tree_splay:
.LFB4:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# key, key
	.loc 1 193 0
	movq	-8(%rbp), %rax	# sp, tmp61
	movq	(%rax), %rax	# sp_1(D)->root, D.5721
	testq	%rax, %rax	# D.5721
	jne	.L21	#,
	.loc 1 194 0
	jmp	.L20	#
.L21:
	.loc 1 196 0
	movq	-8(%rbp), %rdx	# sp, D.5722
	movq	-16(%rbp), %rsi	# key, tmp62
	movq	-8(%rbp), %rax	# sp, tmp63
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	splay_tree_splay_helper	#
.L20:
	.loc 1 198 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	splay_tree_splay, .-splay_tree_splay
	.type	splay_tree_foreach_helper, @function
splay_tree_foreach_helper:
.LFB5:
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sp, sp
	movq	%rsi, -32(%rbp)	# node, node
	movq	%rdx, -40(%rbp)	# fn, fn
	movq	%rcx, -48(%rbp)	# data, data
	.loc 1 214 0
	cmpq	$0, -32(%rbp)	#, node
	jne	.L24	#,
	.loc 1 215 0
	movl	$0, %eax	#, D.5723
	jmp	.L25	#
.L24:
	.loc 1 217 0
	movq	-32(%rbp), %rax	# node, tmp63
	movq	16(%rax), %rsi	# node_2(D)->left, D.5724
	movq	-48(%rbp), %rcx	# data, tmp64
	movq	-40(%rbp), %rdx	# fn, tmp65
	movq	-24(%rbp), %rax	# sp, tmp66
	movq	%rax, %rdi	# tmp66,
	call	splay_tree_foreach_helper	#
	movl	%eax, -4(%rbp)	# tmp67, val
	.loc 1 218 0
	cmpl	$0, -4(%rbp)	#, val
	je	.L26	#,
	.loc 1 219 0
	movl	-4(%rbp), %eax	# val, D.5723
	jmp	.L25	#
.L26:
	.loc 1 221 0
	movq	-48(%rbp), %rcx	# data, tmp68
	movq	-32(%rbp), %rdx	# node, tmp69
	movq	-40(%rbp), %rax	# fn, tmp70
	movq	%rcx, %rsi	# tmp68,
	movq	%rdx, %rdi	# tmp69,
	call	*%rax	# tmp70
	movl	%eax, -4(%rbp)	# tmp71, val
	.loc 1 222 0
	cmpl	$0, -4(%rbp)	#, val
	je	.L27	#,
	.loc 1 223 0
	movl	-4(%rbp), %eax	# val, D.5723
	jmp	.L25	#
.L27:
	.loc 1 225 0
	movq	-32(%rbp), %rax	# node, tmp72
	movq	24(%rax), %rsi	# node_2(D)->right, D.5724
	movq	-48(%rbp), %rcx	# data, tmp73
	movq	-40(%rbp), %rdx	# fn, tmp74
	movq	-24(%rbp), %rax	# sp, tmp75
	movq	%rax, %rdi	# tmp75,
	call	splay_tree_foreach_helper	#
.L25:
	.loc 1 226 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	splay_tree_foreach_helper, .-splay_tree_foreach_helper
	.type	splay_tree_xmalloc_allocate, @function
splay_tree_xmalloc_allocate:
.LFB6:
	.loc 1 234 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# size, size
	movq	%rsi, -16(%rbp)	# data, data
	.loc 1 235 0
	movl	-4(%rbp), %eax	# size, tmp62
	cltq
	movq	%rax, %rdi	# D.5725,
	call	xmalloc	#
	.loc 1 236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	splay_tree_xmalloc_allocate, .-splay_tree_xmalloc_allocate
	.type	splay_tree_xmalloc_deallocate, @function
splay_tree_xmalloc_deallocate:
.LFB7:
	.loc 1 242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# object, object
	movq	%rsi, -16(%rbp)	# data, data
	.loc 1 243 0
	movq	-8(%rbp), %rax	# object, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 244 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	splay_tree_xmalloc_deallocate, .-splay_tree_xmalloc_deallocate
	.globl	splay_tree_new
	.type	splay_tree_new, @function
splay_tree_new:
.LFB8:
	.loc 1 257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# compare_fn, compare_fn
	movq	%rsi, -16(%rbp)	# delete_key_fn, delete_key_fn
	movq	%rdx, -24(%rbp)	# delete_value_fn, delete_value_fn
	.loc 1 258 0
	movq	-24(%rbp), %rdx	# delete_value_fn, tmp61
	movq	-16(%rbp), %rsi	# delete_key_fn, tmp62
	movq	-8(%rbp), %rax	# compare_fn, tmp63
	movl	$0, %r9d	#,
	movl	$splay_tree_xmalloc_deallocate, %r8d	#,
	movl	$splay_tree_xmalloc_allocate, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	splay_tree_new_with_allocator	#
	.loc 1 261 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	splay_tree_new, .-splay_tree_new
	.globl	splay_tree_new_with_allocator
	.type	splay_tree_new_with_allocator, @function
splay_tree_new_with_allocator:
.LFB9:
	.loc 1 277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# compare_fn, compare_fn
	movq	%rsi, -32(%rbp)	# delete_key_fn, delete_key_fn
	movq	%rdx, -40(%rbp)	# delete_value_fn, delete_value_fn
	movq	%rcx, -48(%rbp)	# allocate_fn, allocate_fn
	movq	%r8, -56(%rbp)	# deallocate_fn, deallocate_fn
	movq	%r9, -64(%rbp)	# allocate_data, allocate_data
	.loc 1 278 0
	movq	-64(%rbp), %rdx	# allocate_data, tmp61
	movq	-48(%rbp), %rax	# allocate_fn, tmp62
	movq	%rdx, %rsi	# tmp61,
	movl	$56, %edi	#,
	call	*%rax	# tmp62
	movq	%rax, -8(%rbp)	# tmp63, sp
	.loc 1 280 0
	movq	-8(%rbp), %rax	# sp, tmp64
	movq	$0, (%rax)	#, sp_3->root
	.loc 1 281 0
	movq	-8(%rbp), %rax	# sp, tmp65
	movq	-24(%rbp), %rdx	# compare_fn, tmp66
	movq	%rdx, 8(%rax)	# tmp66, sp_3->comp
	.loc 1 282 0
	movq	-8(%rbp), %rax	# sp, tmp67
	movq	-32(%rbp), %rdx	# delete_key_fn, tmp68
	movq	%rdx, 16(%rax)	# tmp68, sp_3->delete_key
	.loc 1 283 0
	movq	-8(%rbp), %rax	# sp, tmp69
	movq	-40(%rbp), %rdx	# delete_value_fn, tmp70
	movq	%rdx, 24(%rax)	# tmp70, sp_3->delete_value
	.loc 1 284 0
	movq	-8(%rbp), %rax	# sp, tmp71
	movq	-48(%rbp), %rdx	# allocate_fn, tmp72
	movq	%rdx, 32(%rax)	# tmp72, sp_3->allocate
	.loc 1 285 0
	movq	-8(%rbp), %rax	# sp, tmp73
	movq	-56(%rbp), %rdx	# deallocate_fn, tmp74
	movq	%rdx, 40(%rax)	# tmp74, sp_3->deallocate
	.loc 1 286 0
	movq	-8(%rbp), %rax	# sp, tmp75
	movq	-64(%rbp), %rdx	# allocate_data, tmp76
	movq	%rdx, 48(%rax)	# tmp76, sp_3->allocate_data
	.loc 1 288 0
	movq	-8(%rbp), %rax	# sp, D.5728
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	splay_tree_new_with_allocator, .-splay_tree_new_with_allocator
	.globl	splay_tree_delete
	.type	splay_tree_delete, @function
splay_tree_delete:
.LFB10:
	.loc 1 296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	.loc 1 297 0
	movq	-8(%rbp), %rax	# sp, tmp62
	movq	(%rax), %rdx	# sp_1(D)->root, D.5729
	movq	-8(%rbp), %rax	# sp, tmp63
	movq	%rdx, %rsi	# D.5729,
	movq	%rax, %rdi	# tmp63,
	call	splay_tree_delete_helper	#
	.loc 1 298 0
	movq	-8(%rbp), %rax	# sp, tmp64
	movq	40(%rax), %rax	# sp_1(D)->deallocate, D.5730
	movq	-8(%rbp), %rdx	# sp, tmp65
	movq	48(%rdx), %rcx	# sp_1(D)->allocate_data, D.5731
	movq	-8(%rbp), %rdx	# sp, tmp66
	movq	%rcx, %rsi	# D.5731,
	movq	%rdx, %rdi	# tmp66,
	call	*%rax	# D.5730
	.loc 1 299 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	splay_tree_delete, .-splay_tree_delete
	.globl	splay_tree_insert
	.type	splay_tree_insert, @function
splay_tree_insert:
.LFB11:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sp, sp
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# value, value
	.loc 1 311 0
	movl	$0, -12(%rbp)	#, comparison
	.loc 1 313 0
	movq	-32(%rbp), %rdx	# key, tmp83
	movq	-24(%rbp), %rax	# sp, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	splay_tree_splay	#
	.loc 1 315 0
	movq	-24(%rbp), %rax	# sp, tmp85
	movq	(%rax), %rax	# sp_3(D)->root, D.5732
	testq	%rax, %rax	# D.5732
	je	.L37	#,
	.loc 1 316 0
	movq	-24(%rbp), %rax	# sp, tmp86
	movq	8(%rax), %rax	# sp_3(D)->comp, D.5733
	movq	-24(%rbp), %rdx	# sp, tmp87
	movq	(%rdx), %rdx	# sp_3(D)->root, D.5732
	movq	(%rdx), %rdx	# _7->key, D.5734
	movq	-32(%rbp), %rcx	# key, tmp88
	movq	%rcx, %rsi	# tmp88,
	movq	%rdx, %rdi	# D.5734,
	call	*%rax	# D.5733
	movl	%eax, -12(%rbp)	# tmp89, comparison
.L37:
	.loc 1 318 0
	movq	-24(%rbp), %rax	# sp, tmp90
	movq	(%rax), %rax	# sp_3(D)->root, D.5732
	testq	%rax, %rax	# D.5732
	je	.L38	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, comparison
	jne	.L38	#,
	.loc 1 322 0 is_stmt 1
	movq	-24(%rbp), %rax	# sp, tmp91
	movq	24(%rax), %rax	# sp_3(D)->delete_value, D.5735
	testq	%rax, %rax	# D.5735
	je	.L39	#,
	.loc 1 323 0
	movq	-24(%rbp), %rax	# sp, tmp92
	movq	24(%rax), %rax	# sp_3(D)->delete_value, D.5735
	movq	-24(%rbp), %rdx	# sp, tmp93
	movq	(%rdx), %rdx	# sp_3(D)->root, D.5732
	movq	8(%rdx), %rdx	# _13->value, D.5734
	movq	%rdx, %rdi	# D.5734,
	call	*%rax	# D.5735
.L39:
	.loc 1 324 0
	movq	-24(%rbp), %rax	# sp, tmp94
	movq	(%rax), %rax	# sp_3(D)->root, D.5732
	movq	-40(%rbp), %rdx	# value, tmp95
	movq	%rdx, 8(%rax)	# tmp95, _15->value
	jmp	.L40	#
.L38:
.LBB4:
	.loc 1 332 0
	movq	-24(%rbp), %rax	# sp, tmp96
	movq	32(%rax), %rax	# sp_3(D)->allocate, D.5736
	movq	-24(%rbp), %rdx	# sp, tmp97
	movq	48(%rdx), %rdx	# sp_3(D)->allocate_data, D.5737
	.loc 1 331 0
	movq	%rdx, %rsi	# D.5737,
	movl	$32, %edi	#,
	call	*%rax	# D.5736
	movq	%rax, -8(%rbp)	# tmp98, node
	.loc 1 334 0
	movq	-8(%rbp), %rax	# node, tmp99
	movq	-32(%rbp), %rdx	# key, tmp100
	movq	%rdx, (%rax)	# tmp100, node_19->key
	.loc 1 335 0
	movq	-8(%rbp), %rax	# node, tmp101
	movq	-40(%rbp), %rdx	# value, tmp102
	movq	%rdx, 8(%rax)	# tmp102, node_19->value
	.loc 1 337 0
	movq	-24(%rbp), %rax	# sp, tmp103
	movq	(%rax), %rax	# sp_3(D)->root, D.5732
	testq	%rax, %rax	# D.5732
	jne	.L41	#,
	.loc 1 338 0
	movq	-8(%rbp), %rax	# node, tmp104
	movq	$0, 24(%rax)	#, node_19->right
	movq	-8(%rbp), %rax	# node, tmp105
	movq	24(%rax), %rdx	# node_19->right, D.5732
	movq	-8(%rbp), %rax	# node, tmp106
	movq	%rdx, 16(%rax)	# D.5732, node_19->left
	jmp	.L42	#
.L41:
	.loc 1 339 0
	cmpl	$0, -12(%rbp)	#, comparison
	jns	.L43	#,
	.loc 1 341 0
	movq	-24(%rbp), %rax	# sp, tmp107
	movq	(%rax), %rdx	# sp_3(D)->root, D.5732
	movq	-8(%rbp), %rax	# node, tmp108
	movq	%rdx, 16(%rax)	# D.5732, node_19->left
	.loc 1 342 0
	movq	-8(%rbp), %rax	# node, tmp109
	movq	16(%rax), %rax	# node_19->left, D.5732
	movq	24(%rax), %rdx	# _23->right, D.5732
	movq	-8(%rbp), %rax	# node, tmp110
	movq	%rdx, 24(%rax)	# D.5732, node_19->right
	.loc 1 343 0
	movq	-8(%rbp), %rax	# node, tmp111
	movq	16(%rax), %rax	# node_19->left, D.5732
	movq	$0, 24(%rax)	#, _25->right
	jmp	.L42	#
.L43:
	.loc 1 347 0
	movq	-24(%rbp), %rax	# sp, tmp112
	movq	(%rax), %rdx	# sp_3(D)->root, D.5732
	movq	-8(%rbp), %rax	# node, tmp113
	movq	%rdx, 24(%rax)	# D.5732, node_19->right
	.loc 1 348 0
	movq	-8(%rbp), %rax	# node, tmp114
	movq	24(%rax), %rax	# node_19->right, D.5732
	movq	16(%rax), %rdx	# _27->left, D.5732
	movq	-8(%rbp), %rax	# node, tmp115
	movq	%rdx, 16(%rax)	# D.5732, node_19->left
	.loc 1 349 0
	movq	-8(%rbp), %rax	# node, tmp116
	movq	24(%rax), %rax	# node_19->right, D.5732
	movq	$0, 16(%rax)	#, _29->left
.L42:
	.loc 1 352 0
	movq	-24(%rbp), %rax	# sp, tmp117
	movq	-8(%rbp), %rdx	# node, tmp118
	movq	%rdx, (%rax)	# tmp118, sp_3(D)->root
.L40:
.LBE4:
	.loc 1 355 0
	movq	-24(%rbp), %rax	# sp, tmp119
	movq	(%rax), %rax	# sp_3(D)->root, D.5738
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	splay_tree_insert, .-splay_tree_insert
	.globl	splay_tree_remove
	.type	splay_tree_remove, @function
splay_tree_remove:
.LFB12:
	.loc 1 364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sp, sp
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 365 0
	movq	-32(%rbp), %rdx	# key, tmp74
	movq	-24(%rbp), %rax	# sp, tmp75
	movq	%rdx, %rsi	# tmp74,
	movq	%rax, %rdi	# tmp75,
	call	splay_tree_splay	#
	.loc 1 367 0
	movq	-24(%rbp), %rax	# sp, tmp76
	movq	(%rax), %rax	# sp_2(D)->root, D.5739
	testq	%rax, %rax	# D.5739
	je	.L45	#,
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sp, tmp77
	movq	8(%rax), %rax	# sp_2(D)->comp, D.5740
	movq	-24(%rbp), %rdx	# sp, tmp78
	movq	(%rdx), %rdx	# sp_2(D)->root, D.5739
	movq	(%rdx), %rdx	# _6->key, D.5741
	movq	-32(%rbp), %rcx	# key, tmp79
	movq	%rcx, %rsi	# tmp79,
	movq	%rdx, %rdi	# D.5741,
	call	*%rax	# D.5740
	testl	%eax, %eax	# D.5742
	jne	.L45	#,
.LBB5:
	.loc 1 371 0 is_stmt 1
	movq	-24(%rbp), %rax	# sp, tmp80
	movq	(%rax), %rax	# sp_2(D)->root, D.5739
	movq	16(%rax), %rax	# _9->left, tmp81
	movq	%rax, -16(%rbp)	# tmp81, left
	.loc 1 372 0
	movq	-24(%rbp), %rax	# sp, tmp82
	movq	(%rax), %rax	# sp_2(D)->root, D.5739
	movq	24(%rax), %rax	# _11->right, tmp83
	movq	%rax, -8(%rbp)	# tmp83, right
	.loc 1 375 0
	movq	-24(%rbp), %rax	# sp, tmp84
	movq	24(%rax), %rax	# sp_2(D)->delete_value, D.5743
	testq	%rax, %rax	# D.5743
	je	.L47	#,
	.loc 1 376 0
	movq	-24(%rbp), %rax	# sp, tmp85
	movq	24(%rax), %rax	# sp_2(D)->delete_value, D.5743
	movq	-24(%rbp), %rdx	# sp, tmp86
	movq	(%rdx), %rdx	# sp_2(D)->root, D.5739
	movq	8(%rdx), %rdx	# _15->value, D.5741
	movq	%rdx, %rdi	# D.5741,
	call	*%rax	# D.5743
.L47:
	.loc 1 377 0
	movq	-24(%rbp), %rax	# sp, tmp87
	movq	40(%rax), %rax	# sp_2(D)->deallocate, D.5744
	movq	-24(%rbp), %rdx	# sp, tmp88
	movq	48(%rdx), %rcx	# sp_2(D)->allocate_data, D.5745
	movq	-24(%rbp), %rdx	# sp, tmp89
	movq	(%rdx), %rdx	# sp_2(D)->root, D.5739
	movq	%rcx, %rsi	# D.5745,
	movq	%rdx, %rdi	# D.5739,
	call	*%rax	# D.5744
	.loc 1 381 0
	cmpq	$0, -16(%rbp)	#, left
	je	.L48	#,
	.loc 1 383 0
	movq	-24(%rbp), %rax	# sp, tmp90
	movq	-16(%rbp), %rdx	# left, tmp91
	movq	%rdx, (%rax)	# tmp91, sp_2(D)->root
	.loc 1 387 0
	cmpq	$0, -8(%rbp)	#, right
	je	.L45	#,
	.loc 1 389 0
	jmp	.L50	#
.L51:
	.loc 1 390 0
	movq	-16(%rbp), %rax	# left, tmp92
	movq	24(%rax), %rax	# left_1->right, tmp93
	movq	%rax, -16(%rbp)	# tmp93, left
.L50:
	.loc 1 389 0 discriminator 1
	movq	-16(%rbp), %rax	# left, tmp94
	movq	24(%rax), %rax	# left_1->right, D.5739
	testq	%rax, %rax	# D.5739
	jne	.L51	#,
	.loc 1 391 0
	movq	-16(%rbp), %rax	# left, tmp95
	movq	-8(%rbp), %rdx	# right, tmp96
	movq	%rdx, 24(%rax)	# tmp96, left_1->right
	jmp	.L45	#
.L48:
	.loc 1 395 0
	movq	-24(%rbp), %rax	# sp, tmp97
	movq	-8(%rbp), %rdx	# right, tmp98
	movq	%rdx, (%rax)	# tmp98, sp_2(D)->root
.L45:
.LBE5:
	.loc 1 397 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	splay_tree_remove, .-splay_tree_remove
	.globl	splay_tree_lookup
	.type	splay_tree_lookup, @function
splay_tree_lookup:
.LFB13:
	.loc 1 406 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# key, key
	.loc 1 407 0
	movq	-16(%rbp), %rdx	# key, tmp66
	movq	-8(%rbp), %rax	# sp, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	splay_tree_splay	#
	.loc 1 409 0
	movq	-8(%rbp), %rax	# sp, tmp68
	movq	(%rax), %rax	# sp_2(D)->root, D.5747
	testq	%rax, %rax	# D.5747
	je	.L53	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sp, tmp69
	movq	8(%rax), %rax	# sp_2(D)->comp, D.5748
	movq	-8(%rbp), %rdx	# sp, tmp70
	movq	(%rdx), %rdx	# sp_2(D)->root, D.5747
	movq	(%rdx), %rdx	# _6->key, D.5749
	movq	-16(%rbp), %rcx	# key, tmp71
	movq	%rcx, %rsi	# tmp71,
	movq	%rdx, %rdi	# D.5749,
	call	*%rax	# D.5748
	testl	%eax, %eax	# D.5750
	jne	.L53	#,
	.loc 1 410 0 is_stmt 1
	movq	-8(%rbp), %rax	# sp, tmp72
	movq	(%rax), %rax	# sp_2(D)->root, D.5746
	jmp	.L54	#
.L53:
	.loc 1 412 0
	movl	$0, %eax	#, D.5746
.L54:
	.loc 1 413 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	splay_tree_lookup, .-splay_tree_lookup
	.globl	splay_tree_max
	.type	splay_tree_max, @function
splay_tree_max:
.LFB14:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sp, sp
	.loc 1 421 0
	movq	-24(%rbp), %rax	# sp, tmp62
	movq	(%rax), %rax	# sp_3(D)->root, tmp63
	movq	%rax, -8(%rbp)	# tmp63, n
	.loc 1 423 0
	cmpq	$0, -8(%rbp)	#, n
	jne	.L56	#,
	.loc 1 424 0
	movl	$0, %eax	#, D.5751
	jmp	.L57	#
.L56:
	.loc 1 426 0
	jmp	.L58	#
.L59:
	.loc 1 427 0
	movq	-8(%rbp), %rax	# n, tmp64
	movq	24(%rax), %rax	# n_1->right, tmp65
	movq	%rax, -8(%rbp)	# tmp65, n
.L58:
	.loc 1 426 0 discriminator 1
	movq	-8(%rbp), %rax	# n, tmp66
	movq	24(%rax), %rax	# n_1->right, D.5752
	testq	%rax, %rax	# D.5752
	jne	.L59	#,
	.loc 1 429 0
	movq	-8(%rbp), %rax	# n, D.5751
.L57:
	.loc 1 430 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	splay_tree_max, .-splay_tree_max
	.globl	splay_tree_min
	.type	splay_tree_min, @function
splay_tree_min:
.LFB15:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# sp, sp
	.loc 1 438 0
	movq	-24(%rbp), %rax	# sp, tmp62
	movq	(%rax), %rax	# sp_3(D)->root, tmp63
	movq	%rax, -8(%rbp)	# tmp63, n
	.loc 1 440 0
	cmpq	$0, -8(%rbp)	#, n
	jne	.L61	#,
	.loc 1 441 0
	movl	$0, %eax	#, D.5753
	jmp	.L62	#
.L61:
	.loc 1 443 0
	jmp	.L63	#
.L64:
	.loc 1 444 0
	movq	-8(%rbp), %rax	# n, tmp64
	movq	16(%rax), %rax	# n_1->left, tmp65
	movq	%rax, -8(%rbp)	# tmp65, n
.L63:
	.loc 1 443 0 discriminator 1
	movq	-8(%rbp), %rax	# n, tmp66
	movq	16(%rax), %rax	# n_1->left, D.5754
	testq	%rax, %rax	# D.5754
	jne	.L64	#,
	.loc 1 446 0
	movq	-8(%rbp), %rax	# n, D.5753
.L62:
	.loc 1 447 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	splay_tree_min, .-splay_tree_min
	.globl	splay_tree_predecessor
	.type	splay_tree_predecessor, @function
splay_tree_predecessor:
.LFB16:
	.loc 1 456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sp, sp
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 461 0
	movq	-24(%rbp), %rax	# sp, tmp67
	movq	(%rax), %rax	# sp_4(D)->root, D.5756
	testq	%rax, %rax	# D.5756
	jne	.L66	#,
	.loc 1 462 0
	movl	$0, %eax	#, D.5755
	jmp	.L67	#
.L66:
	.loc 1 466 0
	movq	-32(%rbp), %rdx	# key, tmp68
	movq	-24(%rbp), %rax	# sp, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	splay_tree_splay	#
	.loc 1 467 0
	movq	-24(%rbp), %rax	# sp, tmp70
	movq	8(%rax), %rax	# sp_4(D)->comp, D.5757
	movq	-24(%rbp), %rdx	# sp, tmp71
	movq	(%rdx), %rdx	# sp_4(D)->root, D.5756
	movq	(%rdx), %rdx	# _9->key, D.5758
	movq	-32(%rbp), %rcx	# key, tmp72
	movq	%rcx, %rsi	# tmp72,
	movq	%rdx, %rdi	# D.5758,
	call	*%rax	# D.5757
	movl	%eax, -12(%rbp)	# tmp73, comparison
	.loc 1 470 0
	cmpl	$0, -12(%rbp)	#, comparison
	jns	.L68	#,
	.loc 1 471 0
	movq	-24(%rbp), %rax	# sp, tmp74
	movq	(%rax), %rax	# sp_4(D)->root, D.5755
	jmp	.L67	#
.L68:
	.loc 1 474 0
	movq	-24(%rbp), %rax	# sp, tmp75
	movq	(%rax), %rax	# sp_4(D)->root, D.5756
	movq	16(%rax), %rax	# _13->left, tmp76
	movq	%rax, -8(%rbp)	# tmp76, node
	.loc 1 475 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L69	#,
	.loc 1 476 0
	jmp	.L70	#
.L71:
	.loc 1 477 0
	movq	-8(%rbp), %rax	# node, tmp77
	movq	24(%rax), %rax	# node_1->right, tmp78
	movq	%rax, -8(%rbp)	# tmp78, node
.L70:
	.loc 1 476 0 discriminator 1
	movq	-8(%rbp), %rax	# node, tmp79
	movq	24(%rax), %rax	# node_1->right, D.5756
	testq	%rax, %rax	# D.5756
	jne	.L71	#,
.L69:
	.loc 1 479 0
	movq	-8(%rbp), %rax	# node, D.5755
.L67:
	.loc 1 480 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	splay_tree_predecessor, .-splay_tree_predecessor
	.globl	splay_tree_successor
	.type	splay_tree_successor, @function
splay_tree_successor:
.LFB17:
	.loc 1 489 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sp, sp
	movq	%rsi, -32(%rbp)	# key, key
	.loc 1 494 0
	movq	-24(%rbp), %rax	# sp, tmp67
	movq	(%rax), %rax	# sp_4(D)->root, D.5760
	testq	%rax, %rax	# D.5760
	jne	.L73	#,
	.loc 1 495 0
	movl	$0, %eax	#, D.5759
	jmp	.L74	#
.L73:
	.loc 1 499 0
	movq	-32(%rbp), %rdx	# key, tmp68
	movq	-24(%rbp), %rax	# sp, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	splay_tree_splay	#
	.loc 1 500 0
	movq	-24(%rbp), %rax	# sp, tmp70
	movq	8(%rax), %rax	# sp_4(D)->comp, D.5761
	movq	-24(%rbp), %rdx	# sp, tmp71
	movq	(%rdx), %rdx	# sp_4(D)->root, D.5760
	movq	(%rdx), %rdx	# _9->key, D.5762
	movq	-32(%rbp), %rcx	# key, tmp72
	movq	%rcx, %rsi	# tmp72,
	movq	%rdx, %rdi	# D.5762,
	call	*%rax	# D.5761
	movl	%eax, -12(%rbp)	# tmp73, comparison
	.loc 1 503 0
	cmpl	$0, -12(%rbp)	#, comparison
	jle	.L75	#,
	.loc 1 504 0
	movq	-24(%rbp), %rax	# sp, tmp74
	movq	(%rax), %rax	# sp_4(D)->root, D.5759
	jmp	.L74	#
.L75:
	.loc 1 507 0
	movq	-24(%rbp), %rax	# sp, tmp75
	movq	(%rax), %rax	# sp_4(D)->root, D.5760
	movq	24(%rax), %rax	# _13->right, tmp76
	movq	%rax, -8(%rbp)	# tmp76, node
	.loc 1 508 0
	cmpq	$0, -8(%rbp)	#, node
	je	.L76	#,
	.loc 1 509 0
	jmp	.L77	#
.L78:
	.loc 1 510 0
	movq	-8(%rbp), %rax	# node, tmp77
	movq	16(%rax), %rax	# node_1->left, tmp78
	movq	%rax, -8(%rbp)	# tmp78, node
.L77:
	.loc 1 509 0 discriminator 1
	movq	-8(%rbp), %rax	# node, tmp79
	movq	16(%rax), %rax	# node_1->left, D.5760
	testq	%rax, %rax	# D.5760
	jne	.L78	#,
.L76:
	.loc 1 512 0
	movq	-8(%rbp), %rax	# node, D.5759
.L74:
	.loc 1 513 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	splay_tree_successor, .-splay_tree_successor
	.globl	splay_tree_foreach
	.type	splay_tree_foreach, @function
splay_tree_foreach:
.LFB18:
	.loc 1 525 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# sp, sp
	movq	%rsi, -16(%rbp)	# fn, fn
	movq	%rdx, -24(%rbp)	# data, data
	.loc 1 526 0
	movq	-8(%rbp), %rax	# sp, tmp62
	movq	(%rax), %rsi	# sp_1(D)->root, D.5763
	movq	-24(%rbp), %rcx	# data, tmp63
	movq	-16(%rbp), %rdx	# fn, tmp64
	movq	-8(%rbp), %rax	# sp, tmp65
	movq	%rax, %rdi	# tmp65,
	call	splay_tree_foreach_helper	#
	.loc 1 527 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	splay_tree_foreach, .-splay_tree_foreach
	.globl	splay_tree_compare_ints
	.type	splay_tree_compare_ints, @function
splay_tree_compare_ints:
.LFB19:
	.loc 1 535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# k1, k1
	movq	%rsi, -16(%rbp)	# k2, k2
	.loc 1 536 0
	movq	-8(%rbp), %rax	# k1, tmp65
	movl	%eax, %edx	# tmp65, D.5765
	movq	-16(%rbp), %rax	# k2, tmp66
	cmpl	%eax, %edx	# D.5765, D.5765
	jge	.L82	#,
	.loc 1 537 0
	movl	$-1, %eax	#, D.5765
	jmp	.L83	#
.L82:
	.loc 1 538 0
	movq	-8(%rbp), %rax	# k1, tmp67
	movl	%eax, %edx	# tmp67, D.5765
	movq	-16(%rbp), %rax	# k2, tmp68
	cmpl	%eax, %edx	# D.5765, D.5765
	jle	.L84	#,
	.loc 1 539 0
	movl	$1, %eax	#, D.5765
	jmp	.L83	#
.L84:
	.loc 1 541 0
	movl	$0, %eax	#, D.5765
.L83:
	.loc 1 542 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	splay_tree_compare_ints, .-splay_tree_compare_ints
	.globl	splay_tree_compare_pointers
	.type	splay_tree_compare_pointers, @function
splay_tree_compare_pointers:
.LFB20:
	.loc 1 550 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# k1, k1
	movq	%rsi, -16(%rbp)	# k2, k2
	.loc 1 551 0
	movq	-8(%rbp), %rdx	# k1, k1.0
	movq	-16(%rbp), %rax	# k2, k2.1
	cmpq	%rax, %rdx	# k2.1, k1.0
	jae	.L86	#,
	.loc 1 552 0
	movl	$-1, %eax	#, D.5766
	jmp	.L87	#
.L86:
	.loc 1 553 0
	movq	-8(%rbp), %rdx	# k1, k1.2
	movq	-16(%rbp), %rax	# k2, k2.3
	cmpq	%rax, %rdx	# k2.3, k1.2
	jbe	.L88	#,
	.loc 1 554 0
	movl	$1, %eax	#, D.5766
	jmp	.L87	#
.L88:
	.loc 1 556 0
	movl	$0, %eax	#, D.5766
.L87:
	.loc 1 557 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	splay_tree_compare_pointers, .-splay_tree_compare_pointers
.Letext0:
	.file 2 "splay-tree.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x87a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.long	.LASF65
	.long	.LASF66
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x31
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x32
	.long	0x3b
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x36
	.long	0xa4
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0x7
	.long	.LASF23
	.byte	0x20
	.byte	0x2
	.byte	0x54
	.long	0xe7
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x57
	.long	0x83
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x2
	.byte	0x5a
	.long	0x8e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x2
	.byte	0x5d
	.long	0x99
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0x5e
	.long	0x99
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0x3a
	.long	0xf2
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0xa
	.long	0x2d
	.long	0x10c
	.uleb128 0xb
	.long	0x83
	.uleb128 0xb
	.long	0x83
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.byte	0x3e
	.long	0x117
	.uleb128 0x6
	.byte	0x8
	.long	0x11d
	.uleb128 0xc
	.long	0x128
	.uleb128 0xb
	.long	0x83
	.byte	0
	.uleb128 0x5
	.long	.LASF19
	.byte	0x2
	.byte	0x42
	.long	0x133
	.uleb128 0x6
	.byte	0x8
	.long	0x139
	.uleb128 0xc
	.long	0x144
	.uleb128 0xb
	.long	0x8e
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x2
	.byte	0x45
	.long	0x14f
	.uleb128 0x6
	.byte	0x8
	.long	0x155
	.uleb128 0xa
	.long	0x2d
	.long	0x169
	.uleb128 0xb
	.long	0x99
	.uleb128 0xb
	.long	0x6c
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0x4b
	.long	0x174
	.uleb128 0x6
	.byte	0x8
	.long	0x17a
	.uleb128 0xa
	.long	0x6c
	.long	0x18e
	.uleb128 0xb
	.long	0x2d
	.uleb128 0xb
	.long	0x6c
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x2
	.byte	0x51
	.long	0x199
	.uleb128 0x6
	.byte	0x8
	.long	0x19f
	.uleb128 0xc
	.long	0x1af
	.uleb128 0xb
	.long	0x6c
	.uleb128 0xb
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x38
	.byte	0x2
	.byte	0x62
	.long	0x210
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0x65
	.long	0x99
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0x68
	.long	0xe7
	.byte	0x8
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.byte	0x6b
	.long	0x10c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0x6e
	.long	0x128
	.byte	0x18
	.uleb128 0x9
	.long	.LASF29
	.byte	0x2
	.byte	0x71
	.long	0x169
	.byte	0x20
	.uleb128 0x9
	.long	.LASF30
	.byte	0x2
	.byte	0x72
	.long	0x18e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF31
	.byte	0x2
	.byte	0x73
	.long	0x6c
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.long	.LASF32
	.byte	0x2
	.byte	0x75
	.long	0x21b
	.uleb128 0x6
	.byte	0x8
	.long	0x1af
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.byte	0x38
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x25a
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0x39
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x3a
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.byte	0x4e
	.long	0x99
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x32e
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0x4f
	.long	0x210
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0x50
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0x51
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.byte	0x52
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF35
	.byte	0x1
	.byte	0x53
	.long	0x32e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x55
	.long	0x32e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x56
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.byte	0x57
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x30f
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x8f
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x12
	.string	"p"
	.byte	0x1
	.byte	0x9a
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x99
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0xbd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x36d
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0xbe
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.byte	0xbf
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0xce
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d3
	.uleb128 0xe
	.string	"sp"
	.byte	0x1
	.byte	0xcf
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.byte	0xd0
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"fn"
	.byte	0x1
	.byte	0xd1
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0xd2
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"val"
	.byte	0x1
	.byte	0xd4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF43
	.byte	0x1
	.byte	0xe7
	.long	0x6c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x411
	.uleb128 0xf
	.long	.LASF44
	.byte	0x1
	.byte	0xe8
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0xe9
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0xef
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0xf0
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF42
	.byte	0x1
	.byte	0xf1
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x17
	.long	.LASF49
	.byte	0x1
	.byte	0xfd
	.long	0x210
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x498
	.uleb128 0xf
	.long	.LASF46
	.byte	0x1
	.byte	0xfe
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF47
	.byte	0x1
	.byte	0xff
	.long	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF48
	.byte	0x1
	.value	0x100
	.long	0x128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.value	0x10d
	.long	0x210
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x525
	.uleb128 0x18
	.long	.LASF46
	.byte	0x1
	.value	0x10f
	.long	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF47
	.byte	0x1
	.value	0x110
	.long	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF48
	.byte	0x1
	.value	0x111
	.long	0x128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x112
	.long	0x169
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.value	0x113
	.long	0x18e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF31
	.byte	0x1
	.value	0x114
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.string	"sp"
	.byte	0x1
	.value	0x116
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF54
	.byte	0x1
	.value	0x126
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x552
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x127
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF53
	.byte	0x1
	.value	0x132
	.long	0x99
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d1
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x133
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"key"
	.byte	0x1
	.value	0x134
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF14
	.byte	0x1
	.value	0x135
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x1
	.value	0x137
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.value	0x149
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x169
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x63d
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x16a
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"key"
	.byte	0x1
	.value	0x16b
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x1d
	.long	.LASF15
	.byte	0x1
	.value	0x171
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x1
	.value	0x171
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF56
	.byte	0x1
	.value	0x193
	.long	0x99
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x67d
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x194
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"key"
	.byte	0x1
	.value	0x195
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF57
	.byte	0x1
	.value	0x1a2
	.long	0x99
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x6bb
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x1a3
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x1a5
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.value	0x1b3
	.long	0x99
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f9
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x1b4
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x1b6
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0x1c5
	.long	0x99
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x757
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x1c6
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"key"
	.byte	0x1
	.value	0x1c7
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x1
	.value	0x1c9
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.value	0x1ca
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0x1e6
	.long	0x99
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b5
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x1e7
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"key"
	.byte	0x1
	.value	0x1e8
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x1
	.value	0x1ea
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.value	0x1eb
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.value	0x209
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x803
	.uleb128 0x1c
	.string	"sp"
	.byte	0x1
	.value	0x20a
	.long	0x210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"fn"
	.byte	0x1
	.value	0x20b
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF42
	.byte	0x1
	.value	0x20c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.value	0x214
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x842
	.uleb128 0x1c
	.string	"k1"
	.byte	0x1
	.value	0x215
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"k2"
	.byte	0x1
	.value	0x216
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF63
	.byte	0x1
	.value	0x223
	.long	0x2d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"k1"
	.byte	0x1
	.value	0x224
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"k2"
	.byte	0x1
	.value	0x225
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
.LASF26:
	.string	"comp"
.LASF47:
	.string	"delete_key_fn"
.LASF16:
	.string	"right"
.LASF53:
	.string	"splay_tree_insert"
.LASF54:
	.string	"splay_tree_delete"
.LASF17:
	.string	"splay_tree_compare_fn"
.LASF6:
	.string	"short int"
.LASF45:
	.string	"object"
.LASF65:
	.string	"splay-tree.c"
.LASF55:
	.string	"splay_tree_remove"
.LASF67:
	.string	"splay_tree_xmalloc_deallocate"
.LASF57:
	.string	"splay_tree_max"
.LASF11:
	.string	"splay_tree_key"
.LASF14:
	.string	"value"
.LASF59:
	.string	"splay_tree_predecessor"
.LASF40:
	.string	"splay_tree_splay_helper"
.LASF27:
	.string	"delete_key"
.LASF63:
	.string	"splay_tree_compare_pointers"
.LASF43:
	.string	"splay_tree_xmalloc_allocate"
.LASF61:
	.string	"splay_tree_foreach"
.LASF34:
	.string	"parent"
.LASF66:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF12:
	.string	"splay_tree_value"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF46:
	.string	"compare_fn"
.LASF21:
	.string	"splay_tree_allocate_fn"
.LASF50:
	.string	"splay_tree_new_with_allocator"
.LASF23:
	.string	"splay_tree_node_s"
.LASF32:
	.string	"splay_tree"
.LASF33:
	.string	"node"
.LASF13:
	.string	"splay_tree_node"
.LASF56:
	.string	"splay_tree_lookup"
.LASF30:
	.string	"deallocate"
.LASF2:
	.string	"unsigned char"
.LASF37:
	.string	"comparison"
.LASF64:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF48:
	.string	"delete_value_fn"
.LASF5:
	.string	"signed char"
.LASF4:
	.string	"unsigned int"
.LASF20:
	.string	"splay_tree_foreach_fn"
.LASF22:
	.string	"splay_tree_deallocate_fn"
.LASF29:
	.string	"allocate"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"delete_value"
.LASF8:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF15:
	.string	"left"
.LASF19:
	.string	"splay_tree_delete_value_fn"
.LASF18:
	.string	"splay_tree_delete_key_fn"
.LASF38:
	.string	"splay_tree_delete_helper"
.LASF42:
	.string	"data"
.LASF1:
	.string	"long unsigned int"
.LASF51:
	.string	"allocate_fn"
.LASF60:
	.string	"splay_tree_successor"
.LASF44:
	.string	"size"
.LASF49:
	.string	"splay_tree_new"
.LASF31:
	.string	"allocate_data"
.LASF0:
	.string	"sizetype"
.LASF24:
	.string	"splay_tree_s"
.LASF52:
	.string	"deallocate_fn"
.LASF41:
	.string	"splay_tree_foreach_helper"
.LASF39:
	.string	"splay_tree_splay"
.LASF62:
	.string	"splay_tree_compare_ints"
.LASF35:
	.string	"grandparent"
.LASF25:
	.string	"root"
.LASF36:
	.string	"next"
.LASF58:
	.string	"splay_tree_min"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
