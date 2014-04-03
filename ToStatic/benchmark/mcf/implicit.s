	.file	"implicit.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 implicit.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.align 8
.LC0:
	.string	"network %s: not enough memory\n"
	.text
	.globl	resize_prob
	.type	resize_prob, @function
resize_prob:
.LFB2:
	.file 1 "implicit.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# net, net
	.loc 1 42 0
	movq	-56(%rbp), %rax	# net, tmp85
	movq	416(%rax), %rdx	# net_3(D)->max_m, D.5108
	movq	-56(%rbp), %rax	# net, tmp86
	movq	456(%rax), %rax	# net_3(D)->max_new_m, D.5108
	addq	%rax, %rdx	# D.5108, D.5108
	movq	-56(%rbp), %rax	# net, tmp87
	movq	%rdx, 416(%rax)	# D.5108, net_3(D)->max_m
	.loc 1 43 0
	movq	-56(%rbp), %rax	# net, tmp88
	movq	448(%rax), %rdx	# net_3(D)->max_residual_new_m, D.5108
	movq	-56(%rbp), %rax	# net, tmp89
	movq	456(%rax), %rax	# net_3(D)->max_new_m, D.5108
	addq	%rax, %rdx	# D.5108, D.5108
	movq	-56(%rbp), %rax	# net, tmp90
	movq	%rdx, 448(%rax)	# D.5108, net_3(D)->max_residual_new_m
	.loc 1 55 0
	movq	-56(%rbp), %rax	# net, tmp91
	movq	416(%rax), %rax	# net_3(D)->max_m, D.5108
	salq	$6, %rax	#, D.5109
	movq	%rax, %rdx	# D.5109, D.5109
	movq	-56(%rbp), %rax	# net, tmp92
	movq	568(%rax), %rax	# net_3(D)->arcs, D.5110
	movq	%rdx, %rsi	# D.5109,
	movq	%rax, %rdi	# D.5110,
	call	realloc	#
	movq	%rax, -32(%rbp)	# tmp93, arc
	.loc 1 56 0
	cmpq	$0, -32(%rbp)	#, arc
	jne	.L2	#,
	.loc 1 58 0
	movq	-56(%rbp), %rax	# net, D.5111
	movq	%rax, %rsi	# D.5111,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 59 0
	movq	stdout(%rip), %rax	# stdout, stdout.0
	movq	%rax, %rdi	# stdout.0,
	call	fflush	#
	.loc 1 60 0
	movq	$-1, %rax	#, D.5108
	jmp	.L3	#
.L2:
	.loc 1 63 0
	movq	-32(%rbp), %rdx	# arc, arc.1
	movq	-56(%rbp), %rax	# net, tmp94
	movq	568(%rax), %rax	# net_3(D)->arcs, D.5110
	subq	%rax, %rdx	# D.5109, tmp95
	movq	%rdx, %rax	# tmp95, tmp95
	movq	%rax, -24(%rbp)	# tmp95, off
	.loc 1 65 0
	movq	-56(%rbp), %rax	# net, tmp96
	movq	-32(%rbp), %rdx	# arc, tmp97
	movq	%rdx, 568(%rax)	# tmp97, net_3(D)->arcs
	.loc 1 66 0
	movq	-56(%rbp), %rax	# net, tmp98
	movq	424(%rax), %rax	# net_3(D)->m, D.5108
	salq	$6, %rax	#, D.5109
	movq	%rax, %rdx	# D.5109, D.5109
	movq	-32(%rbp), %rax	# arc, tmp99
	addq	%rax, %rdx	# tmp99, D.5110
	movq	-56(%rbp), %rax	# net, tmp100
	movq	%rdx, 576(%rax)	# D.5110, net_3(D)->stop_arcs
	.loc 1 68 0
	movq	-56(%rbp), %rax	# net, tmp101
	movq	552(%rax), %rax	# net_3(D)->nodes, tmp102
	movq	%rax, -40(%rbp)	# tmp102, node
	movq	-40(%rbp), %rax	# node, tmp103
	movq	%rax, -16(%rbp)	# tmp103, root
	.loc 1 69 0
	addq	$104, -40(%rbp)	#, node
	movq	-56(%rbp), %rax	# net, tmp104
	movq	560(%rax), %rax	# net_3(D)->stop_nodes, tmp105
	movq	%rax, -8(%rbp)	# tmp105, stop
	jmp	.L4	#
.L6:
	.loc 1 70 0
	movq	-40(%rbp), %rax	# node, tmp106
	movq	24(%rax), %rax	# node_1->pred, D.5112
	cmpq	-16(%rbp), %rax	# root, D.5112
	je	.L5	#,
	.loc 1 71 0
	movq	-40(%rbp), %rax	# node, tmp107
	movq	48(%rax), %rax	# node_1->basic_arc, D.5110
	movq	%rax, %rdx	# D.5110, D.5109
	movq	-24(%rbp), %rax	# off, tmp108
	addq	%rdx, %rax	# D.5109, D.5109
	movq	%rax, %rdx	# D.5109, D.5110
	movq	-40(%rbp), %rax	# node, tmp109
	movq	%rdx, 48(%rax)	# D.5110, node_1->basic_arc
.L5:
	.loc 1 69 0
	addq	$104, -40(%rbp)	#, node
.L4:
	.loc 1 69 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# node, tmp110
	cmpq	-8(%rbp), %rax	# stop, tmp110
	jb	.L6	#,
	.loc 1 73 0 is_stmt 1
	movl	$0, %eax	#, D.5108
.L3:
	.loc 1 74 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	resize_prob, .-resize_prob
	.globl	insert_new_arc
	.type	insert_new_arc, @function
insert_new_arc:
.LFB3:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# new, new
	movq	%rsi, -32(%rbp)	# newpos, newpos
	movq	%rdx, -40(%rbp)	# tail, tail
	movq	%rcx, -48(%rbp)	# head, head
	movq	%r8, -56(%rbp)	# cost, cost
	movq	%r9, -64(%rbp)	# red_cost, red_cost
	.loc 1 97 0
	movq	-32(%rbp), %rax	# newpos, newpos.2
	salq	$6, %rax	#, D.5114
	movq	%rax, %rdx	# D.5114, D.5114
	movq	-24(%rbp), %rax	# new, tmp150
	addq	%rax, %rdx	# tmp150, D.5115
	movq	-40(%rbp), %rax	# tail, tmp151
	movq	%rax, 8(%rdx)	# tmp151, _6->tail
	.loc 1 98 0
	movq	-32(%rbp), %rax	# newpos, newpos.3
	salq	$6, %rax	#, D.5114
	movq	%rax, %rdx	# D.5114, D.5114
	movq	-24(%rbp), %rax	# new, tmp152
	addq	%rax, %rdx	# tmp152, D.5115
	movq	-48(%rbp), %rax	# head, tmp153
	movq	%rax, 16(%rdx)	# tmp153, _10->head
	.loc 1 99 0
	movq	-32(%rbp), %rax	# newpos, newpos.4
	salq	$6, %rax	#, D.5114
	movq	%rax, %rdx	# D.5114, D.5114
	movq	-24(%rbp), %rax	# new, tmp154
	addq	%rax, %rdx	# tmp154, D.5115
	movq	-56(%rbp), %rax	# cost, tmp155
	movq	%rax, 56(%rdx)	# tmp155, _14->org_cost
	.loc 1 100 0
	movq	-32(%rbp), %rax	# newpos, newpos.5
	salq	$6, %rax	#, D.5114
	movq	%rax, %rdx	# D.5114, D.5114
	movq	-24(%rbp), %rax	# new, tmp156
	addq	%rax, %rdx	# tmp156, D.5115
	movq	-56(%rbp), %rax	# cost, tmp157
	movq	%rax, (%rdx)	# tmp157, _18->cost
	.loc 1 101 0
	movq	-32(%rbp), %rax	# newpos, newpos.6
	salq	$6, %rax	#, D.5114
	movq	%rax, %rdx	# D.5114, D.5114
	movq	-24(%rbp), %rax	# new, tmp158
	addq	%rax, %rdx	# tmp158, D.5115
	movq	-64(%rbp), %rax	# red_cost, tmp159
	movq	%rax, 48(%rdx)	# tmp159, _21->flow
	.loc 1 103 0
	movq	-32(%rbp), %rax	# newpos, tmp163
	addq	$1, %rax	#, tmp162
	movq	%rax, -8(%rbp)	# tmp162, pos
	.loc 1 104 0
	jmp	.L8	#
.L10:
	.loc 1 106 0
	movq	-8(%rbp), %rax	# pos, pos.7
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp164
	addq	%rax, %rdx	# tmp164, D.5115
	movq	-8(%rbp), %rax	# pos, tmp165
	movq	%rax, %rcx	# tmp165, tmp166
	shrq	$63, %rcx	#, tmp166
	addq	%rcx, %rax	# tmp166, tmp167
	sarq	%rax	# tmp168
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rcx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp169
	addq	%rcx, %rax	# D.5117, D.5115
	movq	8(%rax), %rax	# _38->tail, D.5118
	movq	%rax, 8(%rdx)	# D.5118, _33->tail
	.loc 1 107 0
	movq	-8(%rbp), %rax	# pos, pos.8
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp170
	addq	%rax, %rdx	# tmp170, D.5115
	movq	-8(%rbp), %rax	# pos, tmp171
	movq	%rax, %rcx	# tmp171, tmp172
	shrq	$63, %rcx	#, tmp172
	addq	%rcx, %rax	# tmp172, tmp173
	sarq	%rax	# tmp174
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rcx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp175
	addq	%rcx, %rax	# D.5117, D.5115
	movq	16(%rax), %rax	# _48->head, D.5118
	movq	%rax, 16(%rdx)	# D.5118, _43->head
	.loc 1 108 0
	movq	-8(%rbp), %rax	# pos, pos.9
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp176
	addq	%rax, %rdx	# tmp176, D.5115
	movq	-8(%rbp), %rax	# pos, tmp177
	movq	%rax, %rcx	# tmp177, tmp178
	shrq	$63, %rcx	#, tmp178
	addq	%rcx, %rax	# tmp178, tmp179
	sarq	%rax	# tmp180
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rcx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp181
	addq	%rcx, %rax	# D.5117, D.5115
	movq	(%rax), %rax	# _58->cost, D.5116
	movq	%rax, (%rdx)	# D.5116, _53->cost
	.loc 1 109 0
	movq	-8(%rbp), %rax	# pos, pos.10
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp182
	addq	%rax, %rdx	# tmp182, D.5115
	movq	-8(%rbp), %rax	# pos, tmp183
	movq	%rax, %rcx	# tmp183, tmp184
	shrq	$63, %rcx	#, tmp184
	addq	%rcx, %rax	# tmp184, tmp185
	sarq	%rax	# tmp186
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rcx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp187
	addq	%rcx, %rax	# D.5117, D.5115
	movq	(%rax), %rax	# _68->cost, D.5116
	movq	%rax, 56(%rdx)	# D.5116, _63->org_cost
	.loc 1 110 0
	movq	-8(%rbp), %rax	# pos, pos.11
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp188
	addq	%rax, %rdx	# tmp188, D.5115
	movq	-8(%rbp), %rax	# pos, tmp189
	movq	%rax, %rcx	# tmp189, tmp190
	shrq	$63, %rcx	#, tmp190
	addq	%rcx, %rax	# tmp190, tmp191
	sarq	%rax	# tmp192
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rcx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp193
	addq	%rcx, %rax	# D.5117, D.5115
	movq	48(%rax), %rax	# _78->flow, D.5116
	movq	%rax, 48(%rdx)	# D.5116, _73->flow
	.loc 1 112 0
	movq	-8(%rbp), %rax	# pos, tmp195
	movq	%rax, %rdx	# tmp195, tmp196
	shrq	$63, %rdx	#, tmp196
	addq	%rdx, %rax	# tmp196, tmp197
	sarq	%rax	# tmp198
	movq	%rax, -8(%rbp)	# tmp198, pos
	.loc 1 113 0
	movq	-8(%rbp), %rax	# pos, pos.12
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp199
	addq	%rax, %rdx	# tmp199, D.5115
	movq	-40(%rbp), %rax	# tail, tmp200
	movq	%rax, 8(%rdx)	# tmp200, _84->tail
	.loc 1 114 0
	movq	-8(%rbp), %rax	# pos, pos.13
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp201
	addq	%rax, %rdx	# tmp201, D.5115
	movq	-48(%rbp), %rax	# head, tmp202
	movq	%rax, 16(%rdx)	# tmp202, _88->head
	.loc 1 115 0
	movq	-8(%rbp), %rax	# pos, pos.14
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp203
	addq	%rax, %rdx	# tmp203, D.5115
	movq	-56(%rbp), %rax	# cost, tmp204
	movq	%rax, (%rdx)	# tmp204, _92->cost
	.loc 1 116 0
	movq	-8(%rbp), %rax	# pos, pos.15
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp205
	addq	%rax, %rdx	# tmp205, D.5115
	movq	-56(%rbp), %rax	# cost, tmp206
	movq	%rax, 56(%rdx)	# tmp206, _96->org_cost
	.loc 1 117 0
	movq	-8(%rbp), %rax	# pos, pos.16
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp207
	addq	%rax, %rdx	# tmp207, D.5115
	movq	-64(%rbp), %rax	# red_cost, tmp208
	movq	%rax, 48(%rdx)	# tmp208, _100->flow
.L8:
	.loc 1 104 0 discriminator 1
	cmpq	$1, -8(%rbp)	#, pos
	je	.L9	#,
	.loc 1 104 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# pos, tmp209
	movq	%rax, %rdx	# tmp209, tmp210
	shrq	$63, %rdx	#, tmp210
	addq	%rdx, %rax	# tmp210, tmp211
	sarq	%rax	# tmp212
	salq	$6, %rax	#, D.5114
	leaq	-64(%rax), %rdx	#, D.5117
	movq	-24(%rbp), %rax	# new, tmp213
	addq	%rdx, %rax	# D.5117, D.5115
	movq	48(%rax), %rax	# _28->flow, D.5116
	cmpq	-64(%rbp), %rax	# red_cost, D.5116
	jl	.L10	#,
.L9:
	.loc 1 120 0 is_stmt 1
	nop
	.loc 1 121 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	insert_new_arc, .-insert_new_arc
	.globl	replace_weaker_arc
	.type	replace_weaker_arc, @function
replace_weaker_arc:
.LFB4:
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# net, net
	movq	%rsi, -32(%rbp)	# new, new
	movq	%rdx, -40(%rbp)	# tail, tail
	movq	%rcx, -48(%rbp)	# head, head
	movq	%r8, -56(%rbp)	# cost, cost
	movq	%r9, -64(%rbp)	# red_cost, red_cost
	.loc 1 144 0
	movq	-32(%rbp), %rax	# new, tmp146
	movq	-40(%rbp), %rdx	# tail, tmp147
	movq	%rdx, 8(%rax)	# tmp147, new_4(D)->tail
	.loc 1 145 0
	movq	-32(%rbp), %rax	# new, tmp148
	movq	-48(%rbp), %rdx	# head, tmp149
	movq	%rdx, 16(%rax)	# tmp149, new_4(D)->head
	.loc 1 146 0
	movq	-32(%rbp), %rax	# new, tmp150
	movq	-56(%rbp), %rdx	# cost, tmp151
	movq	%rdx, 56(%rax)	# tmp151, new_4(D)->org_cost
	.loc 1 147 0
	movq	-32(%rbp), %rax	# new, tmp152
	movq	-56(%rbp), %rdx	# cost, tmp153
	movq	%rdx, (%rax)	# tmp153, new_4(D)->cost
	.loc 1 148 0
	movq	-32(%rbp), %rax	# new, tmp154
	movq	-64(%rbp), %rdx	# red_cost, tmp155
	movq	%rdx, 48(%rax)	# tmp155, new_4(D)->flow
	.loc 1 150 0
	movq	$1, -16(%rbp)	#, pos
	.loc 1 151 0
	movq	-32(%rbp), %rax	# new, tmp156
	addq	$64, %rax	#, D.5119
	movq	48(%rax), %rdx	# _10->flow, D.5120
	movq	-32(%rbp), %rax	# new, tmp157
	subq	$-128, %rax	#, D.5119
	movq	48(%rax), %rax	# _12->flow, D.5120
	cmpq	%rax, %rdx	# D.5120, D.5120
	jle	.L13	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.17
	jmp	.L14	#
.L13:
	.loc 1 151 0 discriminator 2
	movl	$3, %eax	#, iftmp.17
.L14:
	.loc 1 151 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.17, cmp
	.loc 1 152 0 is_stmt 1 discriminator 3
	jmp	.L15	#
.L17:
	.loc 1 154 0
	movq	-16(%rbp), %rax	# pos, pos.18
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp158
	addq	%rax, %rdx	# tmp158, D.5119
	movq	-8(%rbp), %rax	# cmp, cmp.19
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rcx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp159
	addq	%rcx, %rax	# D.5122, D.5119
	movq	8(%rax), %rax	# _31->tail, D.5123
	movq	%rax, 8(%rdx)	# D.5123, _27->tail
	.loc 1 155 0
	movq	-16(%rbp), %rax	# pos, pos.20
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp160
	addq	%rax, %rdx	# tmp160, D.5119
	movq	-8(%rbp), %rax	# cmp, cmp.21
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rcx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp161
	addq	%rcx, %rax	# D.5122, D.5119
	movq	16(%rax), %rax	# _40->head, D.5123
	movq	%rax, 16(%rdx)	# D.5123, _36->head
	.loc 1 156 0
	movq	-16(%rbp), %rax	# pos, pos.22
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp162
	addq	%rax, %rdx	# tmp162, D.5119
	movq	-8(%rbp), %rax	# cmp, cmp.23
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rcx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp163
	addq	%rcx, %rax	# D.5122, D.5119
	movq	(%rax), %rax	# _49->cost, D.5120
	movq	%rax, (%rdx)	# D.5120, _45->cost
	.loc 1 157 0
	movq	-16(%rbp), %rax	# pos, pos.24
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp164
	addq	%rax, %rdx	# tmp164, D.5119
	movq	-8(%rbp), %rax	# cmp, cmp.25
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rcx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp165
	addq	%rcx, %rax	# D.5122, D.5119
	movq	(%rax), %rax	# _58->cost, D.5120
	movq	%rax, 56(%rdx)	# D.5120, _54->org_cost
	.loc 1 158 0
	movq	-16(%rbp), %rax	# pos, pos.26
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp166
	addq	%rax, %rdx	# tmp166, D.5119
	movq	-8(%rbp), %rax	# cmp, cmp.27
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rcx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp167
	addq	%rcx, %rax	# D.5122, D.5119
	movq	48(%rax), %rax	# _67->flow, D.5120
	movq	%rax, 48(%rdx)	# D.5120, _63->flow
	.loc 1 160 0
	movq	-8(%rbp), %rax	# cmp, cmp.28
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp168
	addq	%rax, %rdx	# tmp168, D.5119
	movq	-40(%rbp), %rax	# tail, tmp169
	movq	%rax, 8(%rdx)	# tmp169, _72->tail
	.loc 1 161 0
	movq	-8(%rbp), %rax	# cmp, cmp.29
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp170
	addq	%rax, %rdx	# tmp170, D.5119
	movq	-48(%rbp), %rax	# head, tmp171
	movq	%rax, 16(%rdx)	# tmp171, _76->head
	.loc 1 162 0
	movq	-8(%rbp), %rax	# cmp, cmp.30
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp172
	addq	%rax, %rdx	# tmp172, D.5119
	movq	-56(%rbp), %rax	# cost, tmp173
	movq	%rax, (%rdx)	# tmp173, _80->cost
	.loc 1 163 0
	movq	-8(%rbp), %rax	# cmp, cmp.31
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp174
	addq	%rax, %rdx	# tmp174, D.5119
	movq	-56(%rbp), %rax	# cost, tmp175
	movq	%rax, 56(%rdx)	# tmp175, _84->org_cost
	.loc 1 164 0
	movq	-8(%rbp), %rax	# cmp, cmp.32
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp176
	addq	%rax, %rdx	# tmp176, D.5119
	movq	-64(%rbp), %rax	# red_cost, tmp177
	movq	%rax, 48(%rdx)	# tmp177, _88->flow
	.loc 1 165 0
	movq	-8(%rbp), %rax	# cmp, tmp178
	movq	%rax, -16(%rbp)	# tmp178, pos
	.loc 1 166 0
	salq	-8(%rbp)	# cmp
	.loc 1 167 0
	movq	-8(%rbp), %rax	# cmp, tmp179
	leaq	1(%rax), %rdx	#, D.5120
	movq	-24(%rbp), %rax	# net, tmp180
	movq	448(%rax), %rax	# net_17(D)->max_residual_new_m, D.5120
	cmpq	%rax, %rdx	# D.5120, D.5120
	jg	.L15	#,
	.loc 1 168 0
	movq	-8(%rbp), %rax	# cmp, cmp.33
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp181
	addq	%rdx, %rax	# D.5122, D.5119
	movq	48(%rax), %rdx	# _96->flow, D.5120
	movq	-8(%rbp), %rax	# cmp, cmp.34
	salq	$6, %rax	#, D.5121
	movq	%rax, %rcx	# D.5121, D.5121
	movq	-32(%rbp), %rax	# new, tmp182
	addq	%rcx, %rax	# D.5121, D.5119
	movq	48(%rax), %rax	# _100->flow, D.5120
	cmpq	%rax, %rdx	# D.5120, D.5120
	jge	.L15	#,
	.loc 1 169 0
	addq	$1, -8(%rbp)	#, cmp
.L15:
	.loc 1 152 0 discriminator 1
	movq	-24(%rbp), %rax	# net, tmp183
	movq	448(%rax), %rax	# net_17(D)->max_residual_new_m, D.5120
	cmpq	-8(%rbp), %rax	# cmp, D.5120
	jl	.L16	#,
	.loc 1 152 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# cmp, cmp.35
	salq	$6, %rax	#, D.5121
	leaq	-64(%rax), %rdx	#, D.5122
	movq	-32(%rbp), %rax	# new, tmp184
	addq	%rdx, %rax	# D.5122, D.5119
	movq	48(%rax), %rax	# _22->flow, D.5120
	cmpq	-64(%rbp), %rax	# red_cost, D.5120
	jg	.L17	#,
.L16:
	.loc 1 172 0 is_stmt 1
	nop
	.loc 1 173 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	replace_weaker_arc, .-replace_weaker_arc
	.globl	price_out_impl
	.type	price_out_impl, @function
price_out_impl:
.LFB5:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -104(%rbp)	# net, net
	.loc 1 202 0
	movq	$0, -88(%rbp)	#, new_arcs
	.loc 1 203 0
	movq	$0, -80(%rbp)	#, resized
	.loc 1 205 0
	movq	$15, -72(%rbp)	#, min_impl_duration
	.loc 1 207 0
	movq	-104(%rbp), %rax	# net, tmp124
	movq	528(%rax), %rbx	# net_19(D)->bigM, bigM
	.loc 1 209 0
	movq	$30, -120(%rbp)	#, %sfp
	.loc 1 223 0
	subq	-72(%rbp), %rbx	# min_impl_duration, bigM_minus_min_impl_duration
	movq	%rbx, -128(%rbp)	# bigM_minus_min_impl_duration, %sfp
	.loc 1 227 0
	movq	-104(%rbp), %rax	# net, tmp125
	movq	408(%rax), %rax	# net_19(D)->n_trips, D.5124
	cmpq	$15000, %rax	#, D.5124
	jg	.L20	#,
	.loc 1 229 0
	movq	-104(%rbp), %rax	# net, tmp126
	movq	424(%rax), %rdx	# net_19(D)->m, D.5124
	movq	-104(%rbp), %rax	# net, tmp127
	movq	456(%rax), %rax	# net_19(D)->max_new_m, D.5124
	addq	%rax, %rdx	# D.5124, D.5124
	movq	-104(%rbp), %rax	# net, tmp128
	movq	416(%rax), %rax	# net_19(D)->max_m, D.5124
	cmpq	%rax, %rdx	# D.5124, D.5124
	jle	.L20	#,
	.loc 1 231 0
	movq	-104(%rbp), %rax	# net, tmp129
	movq	408(%rax), %rdx	# net_19(D)->n_trips, D.5124
	movq	-104(%rbp), %rax	# net, tmp130
	movq	408(%rax), %rax	# net_19(D)->n_trips, D.5124
	imulq	%rdx, %rax	# D.5124, D.5124
	movq	%rax, %rdx	# D.5124, tmp131
	shrq	$63, %rdx	#, tmp131
	addq	%rdx, %rax	# tmp131, tmp132
	sarq	%rax	# tmp133
	movq	%rax, %rdx	# tmp133, D.5124
	movq	-104(%rbp), %rax	# net, tmp134
	movq	424(%rax), %rax	# net_19(D)->m, D.5124
	addq	%rax, %rdx	# D.5124, D.5124
	movq	-104(%rbp), %rax	# net, tmp135
	movq	416(%rax), %rax	# net_19(D)->max_m, D.5124
	.loc 1 230 0
	cmpq	%rax, %rdx	# D.5124, D.5124
	jle	.L20	#,
	.loc 1 234 0
	movq	$1, -80(%rbp)	#, resized
	.loc 1 235 0
	movq	-104(%rbp), %rax	# net, tmp136
	movq	%rax, %rdi	# tmp136,
	call	resize_prob	#
	testq	%rax, %rax	# D.5124
	je	.L21	#,
	.loc 1 236 0
	movq	$-1, %rax	#, D.5124
	jmp	.L22	#
.L21:
	.loc 1 238 0
	movq	-104(%rbp), %rax	# net, tmp137
	movq	%rax, %rdi	# tmp137,
	call	refresh_neighbour_lists	#
.L20:
	.loc 1 259 0
	movq	-104(%rbp), %rax	# net, tmp138
	movq	576(%rax), %rbx	# net_19(D)->stop_arcs, arcnew
	.loc 1 260 0
	movq	-104(%rbp), %rax	# net, tmp139
	movq	408(%rax), %rax	# net_19(D)->n_trips, tmp140
	movq	%rax, -64(%rbp)	# tmp140, trips
	.loc 1 262 0
	movq	-104(%rbp), %rax	# net, tmp141
	movq	568(%rax), %r12	# net_19(D)->arcs, arcout
	.loc 1 263 0
	movq	$0, -96(%rbp)	#, i
	jmp	.L23	#
.L25:
	.loc 1 263 0 is_stmt 0 discriminator 1
	addq	$1, -96(%rbp)	#, i
	addq	$192, %r12	#, arcout
.L23:
	movq	-96(%rbp), %rax	# i, tmp142
	cmpq	-64(%rbp), %rax	# trips, tmp142
	jge	.L24	#,
	.loc 1 263 0 discriminator 2
	leaq	64(%r12), %rax	#, D.5125
	movl	24(%rax), %eax	# _42->ident, D.5126
	cmpl	$-1, %eax	#, D.5126
	je	.L25	#,
.L24:
	.loc 1 264 0 is_stmt 1
	movq	$0, -112(%rbp)	#, %sfp
	.loc 1 265 0
	jmp	.L26	#
.L35:
	.loc 1 267 0
	leaq	64(%r12), %rax	#, D.5125
	movl	24(%rax), %eax	# _47->ident, D.5126
	cmpl	$-1, %eax	#, D.5126
	je	.L27	#,
	.loc 1 269 0
	movq	16(%r12), %rax	# arcout_9->head, D.5127
	movq	56(%rax), %rax	# _49->firstout, D.5128
	movq	16(%rax), %rax	# _50->head, D.5127
	movq	-112(%rbp), %rcx	# %sfp, first_of_sparse_list
	movq	%rcx, 72(%rax)	# first_of_sparse_list, _51->arc_tmp
	.loc 1 270 0
	leaq	64(%r12), %rax	#, first_of_sparse_list
	movq	%rax, -112(%rbp)	# first_of_sparse_list, %sfp
.L27:
	.loc 1 273 0
	movl	24(%r12), %eax	# arcout_9->ident, D.5126
	cmpl	$-1, %eax	#, D.5126
	jne	.L28	#,
	.loc 1 274 0
	jmp	.L29	#
.L28:
	.loc 1 276 0
	movq	16(%r12), %r15	# arcout_9->head, head
	.loc 1 277 0
	movl	100(%r15), %eax	# head_54->time, D.5126
	movslq	%eax, %rdx	# D.5126, D.5124
	movq	56(%r12), %rax	# arcout_9->org_cost, D.5124
	subq	%rax, %rdx	# D.5124, D.5124
	movq	%rdx, %rax	# D.5124, D.5124
	addq	-128(%rbp), %rax	# %sfp, tmp143
	movq	%rax, -56(%rbp)	# tmp143, latest
	.loc 1 282 0
	movq	-112(%rbp), %rax	# %sfp, first_of_sparse_list
	movq	8(%rax), %rax	# first_of_sparse_list_13->tail, D.5127
	movq	72(%rax), %r14	# _61->arc_tmp, arcin
	.loc 1 283 0
	jmp	.L30	#
.L34:
	.loc 1 285 0
	movq	8(%r14), %r13	# arcin_10->tail, tail
	.loc 1 287 0
	movl	100(%r13), %eax	# tail_63->time, D.5126
	movslq	%eax, %rdx	# D.5126, D.5124
	movq	56(%r14), %rax	# arcin_10->org_cost, D.5124
	addq	%rdx, %rax	# D.5124, D.5124
	cmpq	-56(%rbp), %rax	# latest, D.5124
	jle	.L31	#,
	.loc 1 289 0
	movq	72(%r13), %r14	# tail_63->arc_tmp, arcin
	.loc 1 290 0
	jmp	.L30	#
.L31:
	.loc 1 293 0
	movq	0(%r13), %rax	# tail_63->potential, D.5124
	movq	-120(%rbp), %rdx	# %sfp, D.5124
	subq	%rax, %rdx	# D.5124, D.5124
	movq	(%r15), %rax	# head_54->potential, D.5124
	leaq	(%rdx,%rax), %r14	#, red_cost
	.loc 1 295 0
	testq	%r14, %r14	# red_cost
	jns	.L32	#,
	.loc 1 297 0
	movq	-104(%rbp), %rax	# net, tmp144
	movq	448(%rax), %rax	# net_19(D)->max_residual_new_m, D.5124
	cmpq	-88(%rbp), %rax	# new_arcs, D.5124
	jle	.L33	#,
	.loc 1 299 0
	movq	-88(%rbp), %rax	# new_arcs, tmp145
	movq	%r14, %r9	# red_cost,
	movq	-120(%rbp), %r8	# %sfp,
	movq	%r15, %rcx	# head,
	movq	%r13, %rdx	# tail,
	movq	%rax, %rsi	# tmp145,
	movq	%rbx, %rdi	# arcnew,
	call	insert_new_arc	#
	.loc 1 301 0
	addq	$1, -88(%rbp)	#, new_arcs
	jmp	.L32	#
.L33:
	.loc 1 303 0
	movq	48(%rbx), %rax	# arcnew_38->flow, D.5124
	cmpq	%r14, %rax	# red_cost, D.5124
	jle	.L32	#,
	.loc 1 304 0
	movq	-104(%rbp), %rax	# net, tmp146
	movq	%r14, %r9	# red_cost,
	movq	-120(%rbp), %r8	# %sfp,
	movq	%r15, %rcx	# head,
	movq	%r13, %rdx	# tail,
	movq	%rbx, %rsi	# arcnew,
	movq	%rax, %rdi	# tmp146,
	call	replace_weaker_arc	#
.L32:
	.loc 1 308 0
	movq	72(%r13), %r14	# tail_63->arc_tmp, arcin
.L30:
	.loc 1 283 0 discriminator 1
	testq	%r14, %r14	# arcin
	jne	.L34	#,
.L29:
	.loc 1 265 0
	addq	$1, -96(%rbp)	#, i
	addq	$192, %r12	#, arcout
.L26:
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# i, tmp147
	cmpq	-64(%rbp), %rax	# trips, tmp147
	jl	.L35	#,
	.loc 1 312 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, new_arcs
	je	.L36	#,
	.loc 1 314 0
	movq	-104(%rbp), %rax	# net, tmp148
	movq	576(%rax), %rbx	# net_19(D)->stop_arcs, arcnew
	.loc 1 315 0
	movq	-104(%rbp), %rax	# net, tmp149
	movq	576(%rax), %rax	# net_19(D)->stop_arcs, D.5128
	movq	-88(%rbp), %rdx	# new_arcs, new_arcs.36
	salq	$6, %rdx	#, D.5129
	addq	%rax, %rdx	# D.5128, D.5128
	movq	-104(%rbp), %rax	# net, tmp150
	movq	%rdx, 576(%rax)	# D.5128, net_19(D)->stop_arcs
	.loc 1 316 0
	movq	-104(%rbp), %rax	# net, tmp151
	movq	576(%rax), %r12	# net_19(D)->stop_arcs, stop
	.loc 1 317 0
	cmpq	$0, -80(%rbp)	#, resized
	je	.L37	#,
	.loc 1 319 0
	jmp	.L38	#
.L39:
	.loc 1 321 0 discriminator 2
	movq	$0, 48(%rbx)	#, arcnew_11->flow
	.loc 1 322 0 discriminator 2
	movl	$1, 24(%rbx)	#, arcnew_11->ident
	.loc 1 319 0 discriminator 2
	addq	$64, %rbx	#, arcnew
.L38:
	.loc 1 319 0 is_stmt 0 discriminator 1
	cmpq	%r12, %rbx	# stop, arcnew
	jne	.L39	#,
	jmp	.L40	#
.L37:
	.loc 1 327 0 is_stmt 1
	jmp	.L41	#
.L42:
	.loc 1 329 0 discriminator 2
	movq	$0, 48(%rbx)	#, arcnew_12->flow
	.loc 1 330 0 discriminator 2
	movl	$1, 24(%rbx)	#, arcnew_12->ident
	.loc 1 331 0 discriminator 2
	movq	8(%rbx), %rax	# arcnew_12->tail, D.5127
	movq	56(%rax), %rax	# _86->firstout, D.5128
	movq	%rax, 32(%rbx)	# D.5128, arcnew_12->nextout
	.loc 1 332 0 discriminator 2
	movq	8(%rbx), %rax	# arcnew_12->tail, D.5127
	movq	%rbx, 56(%rax)	# arcnew, _88->firstout
	.loc 1 333 0 discriminator 2
	movq	16(%rbx), %rax	# arcnew_12->head, D.5127
	movq	64(%rax), %rax	# _89->firstin, D.5128
	movq	%rax, 40(%rbx)	# D.5128, arcnew_12->nextin
	.loc 1 334 0 discriminator 2
	movq	16(%rbx), %rax	# arcnew_12->head, D.5127
	movq	%rbx, 64(%rax)	# arcnew, _91->firstin
	.loc 1 327 0 discriminator 2
	addq	$64, %rbx	#, arcnew
.L41:
	.loc 1 327 0 is_stmt 0 discriminator 1
	cmpq	%r12, %rbx	# stop, arcnew
	jne	.L42	#,
.L40:
	.loc 1 338 0 is_stmt 1
	movq	-104(%rbp), %rax	# net, tmp152
	movq	424(%rax), %rdx	# net_19(D)->m, D.5124
	movq	-88(%rbp), %rax	# new_arcs, tmp153
	addq	%rax, %rdx	# tmp153, D.5124
	movq	-104(%rbp), %rax	# net, tmp154
	movq	%rdx, 424(%rax)	# D.5124, net_19(D)->m
	.loc 1 339 0
	movq	-104(%rbp), %rax	# net, tmp155
	movq	440(%rax), %rdx	# net_19(D)->m_impl, D.5124
	movq	-88(%rbp), %rax	# new_arcs, tmp156
	addq	%rax, %rdx	# tmp156, D.5124
	movq	-104(%rbp), %rax	# net, tmp157
	movq	%rdx, 440(%rax)	# D.5124, net_19(D)->m_impl
	.loc 1 340 0
	movq	-104(%rbp), %rax	# net, tmp158
	movq	448(%rax), %rax	# net_19(D)->max_residual_new_m, D.5124
	subq	-88(%rbp), %rax	# new_arcs, D.5124
	movq	%rax, %rdx	# D.5124, D.5124
	movq	-104(%rbp), %rax	# net, tmp159
	movq	%rdx, 448(%rax)	# D.5124, net_19(D)->max_residual_new_m
.L36:
	.loc 1 350 0
	movq	-88(%rbp), %rax	# new_arcs, D.5124
.L22:
	.loc 1 351 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	price_out_impl, .-price_out_impl
	.globl	suspend_impl
	.type	suspend_impl, @function
suspend_impl:
.LFB6:
	.loc 1 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# net, net
	movq	%rsi, -64(%rbp)	# threshold, threshold
	movq	%rdx, -72(%rbp)	# all, all
	.loc 1 375 0
	cmpq	$0, -72(%rbp)	#, all
	je	.L44	#,
	.loc 1 376 0
	movq	-56(%rbp), %rax	# net, tmp90
	movq	440(%rax), %rax	# net_9(D)->m_impl, tmp91
	movq	%rax, -40(%rbp)	# tmp91, susp
	jmp	.L45	#
.L44:
	.loc 1 379 0
	movq	-56(%rbp), %rax	# net, tmp92
	movq	576(%rax), %rax	# net_9(D)->stop_arcs, tmp93
	movq	%rax, -8(%rbp)	# tmp93, stop
	.loc 1 380 0
	movq	-56(%rbp), %rax	# net, tmp94
	movq	568(%rax), %rdx	# net_9(D)->arcs, D.5131
	movq	-56(%rbp), %rax	# net, tmp95
	movq	424(%rax), %rcx	# net_9(D)->m, D.5132
	movq	-56(%rbp), %rax	# net, tmp96
	movq	440(%rax), %rax	# net_9(D)->m_impl, D.5132
	subq	%rax, %rcx	# D.5132, D.5132
	movq	%rcx, %rax	# D.5132, D.5132
	salq	$6, %rax	#, D.5133
	addq	%rdx, %rax	# D.5131, tmp97
	movq	%rax, -24(%rbp)	# tmp97, new_arc
	.loc 1 381 0
	movq	$0, -40(%rbp)	#, susp
	movq	-24(%rbp), %rax	# new_arc, tmp98
	movq	%rax, -16(%rbp)	# tmp98, arc
	jmp	.L46	#
.L52:
	.loc 1 383 0
	movq	-16(%rbp), %rax	# arc, tmp99
	movl	24(%rax), %eax	# arc_7->ident, D.5134
	cmpl	$1, %eax	#, D.5134
	jne	.L47	#,
	.loc 1 384 0
	movq	-16(%rbp), %rax	# arc, tmp100
	movq	(%rax), %rdx	# arc_7->cost, D.5132
	movq	-16(%rbp), %rax	# arc, tmp101
	movq	8(%rax), %rax	# arc_7->tail, D.5135
	movq	(%rax), %rax	# _23->potential, D.5132
	subq	%rax, %rdx	# D.5132, D.5132
	.loc 1 385 0
	movq	-16(%rbp), %rax	# arc, tmp102
	movq	16(%rax), %rax	# arc_7->head, D.5135
	movq	(%rax), %rax	# _26->potential, D.5132
	.loc 1 384 0
	addq	%rdx, %rax	# D.5132, tmp103
	movq	%rax, -32(%rbp)	# tmp103, red_cost
	jmp	.L48	#
.L47:
	.loc 1 388 0
	movq	$-2, -32(%rbp)	#, red_cost
	.loc 1 390 0
	movq	-16(%rbp), %rax	# arc, tmp104
	movl	24(%rax), %eax	# arc_7->ident, D.5134
	testl	%eax, %eax	# D.5134
	jne	.L48	#,
	.loc 1 392 0
	movq	-16(%rbp), %rax	# arc, tmp105
	movq	8(%rax), %rax	# arc_7->tail, D.5135
	movq	48(%rax), %rax	# _31->basic_arc, D.5131
	cmpq	-16(%rbp), %rax	# arc, D.5131
	jne	.L49	#,
	.loc 1 393 0
	movq	-16(%rbp), %rax	# arc, tmp106
	movq	8(%rax), %rax	# arc_7->tail, D.5135
	movq	-24(%rbp), %rdx	# new_arc, tmp107
	movq	%rdx, 48(%rax)	# tmp107, _33->basic_arc
	jmp	.L48	#
.L49:
	.loc 1 395 0
	movq	-16(%rbp), %rax	# arc, tmp108
	movq	16(%rax), %rax	# arc_7->head, D.5135
	movq	-24(%rbp), %rdx	# new_arc, tmp109
	movq	%rdx, 48(%rax)	# tmp109, _34->basic_arc
.L48:
	.loc 1 399 0
	movq	-32(%rbp), %rax	# red_cost, tmp110
	cmpq	-64(%rbp), %rax	# threshold, tmp110
	jle	.L50	#,
	.loc 1 400 0
	addq	$1, -40(%rbp)	#, susp
	jmp	.L51	#
.L50:
	.loc 1 403 0
	movq	-24(%rbp), %rax	# new_arc, tmp111
	movq	-16(%rbp), %rdx	# arc, tmp112
	movq	(%rdx), %rcx	# *arc_7, tmp113
	movq	%rcx, (%rax)	# tmp113, *new_arc_6
	movq	8(%rdx), %rcx	# *arc_7, tmp114
	movq	%rcx, 8(%rax)	# tmp114, *new_arc_6
	movq	16(%rdx), %rcx	# *arc_7, tmp115
	movq	%rcx, 16(%rax)	# tmp115, *new_arc_6
	movq	24(%rdx), %rcx	# *arc_7, tmp116
	movq	%rcx, 24(%rax)	# tmp116, *new_arc_6
	movq	32(%rdx), %rcx	# *arc_7, tmp117
	movq	%rcx, 32(%rax)	# tmp117, *new_arc_6
	movq	40(%rdx), %rcx	# *arc_7, tmp118
	movq	%rcx, 40(%rax)	# tmp118, *new_arc_6
	movq	48(%rdx), %rcx	# *arc_7, tmp119
	movq	%rcx, 48(%rax)	# tmp119, *new_arc_6
	movq	56(%rdx), %rdx	# *arc_7, tmp120
	movq	%rdx, 56(%rax)	# tmp120, *new_arc_6
	.loc 1 404 0
	addq	$64, -24(%rbp)	#, new_arc
.L51:
	.loc 1 381 0
	addq	$64, -16(%rbp)	#, arc
.L46:
	.loc 1 381 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# arc, tmp121
	cmpq	-8(%rbp), %rax	# stop, tmp121
	jb	.L52	#,
.L45:
	.loc 1 415 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, susp
	je	.L53	#,
	.loc 1 417 0
	movq	-56(%rbp), %rax	# net, tmp122
	movq	424(%rax), %rax	# net_9(D)->m, D.5132
	subq	-40(%rbp), %rax	# susp, D.5132
	movq	%rax, %rdx	# D.5132, D.5132
	movq	-56(%rbp), %rax	# net, tmp123
	movq	%rdx, 424(%rax)	# D.5132, net_9(D)->m
	.loc 1 418 0
	movq	-56(%rbp), %rax	# net, tmp124
	movq	440(%rax), %rax	# net_9(D)->m_impl, D.5132
	subq	-40(%rbp), %rax	# susp, D.5132
	movq	%rax, %rdx	# D.5132, D.5132
	movq	-56(%rbp), %rax	# net, tmp125
	movq	%rdx, 440(%rax)	# D.5132, net_9(D)->m_impl
	.loc 1 419 0
	movq	-56(%rbp), %rax	# net, tmp126
	movq	576(%rax), %rax	# net_9(D)->stop_arcs, D.5131
	movq	-40(%rbp), %rdx	# susp, susp.37
	salq	$6, %rdx	#, D.5133
	negq	%rdx	# D.5136
	addq	%rax, %rdx	# D.5131, D.5131
	movq	-56(%rbp), %rax	# net, tmp127
	movq	%rdx, 576(%rax)	# D.5131, net_9(D)->stop_arcs
	.loc 1 420 0
	movq	-56(%rbp), %rax	# net, tmp128
	movq	448(%rax), %rdx	# net_9(D)->max_residual_new_m, D.5132
	movq	-40(%rbp), %rax	# susp, tmp129
	addq	%rax, %rdx	# tmp129, D.5132
	movq	-56(%rbp), %rax	# net, tmp130
	movq	%rdx, 448(%rax)	# D.5132, net_9(D)->max_residual_new_m
	.loc 1 422 0
	movq	-56(%rbp), %rax	# net, tmp131
	movq	%rax, %rdi	# tmp131,
	call	refresh_neighbour_lists	#
.L53:
	.loc 1 425 0
	movq	-40(%rbp), %rax	# susp, D.5132
	.loc 1 426 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	suspend_impl, .-suspend_impl
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "defines.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x91a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF131
	.byte	0x1
	.long	.LASF132
	.long	.LASF133
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF134
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x45
	.long	0x69
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x63
	.long	0x2c4
	.uleb128 0x7
	.long	.LASF53
	.byte	0x68
	.byte	0x5
	.byte	0x6b
	.long	0x379
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0x6d
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0x6e
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0x6f
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0x70
	.long	0x379
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0x71
	.long	0x379
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0x72
	.long	0x379
	.byte	0x28
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0x73
	.long	0x402
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0x74
	.long	0x402
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0x74
	.long	0x402
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x5
	.byte	0x75
	.long	0x402
	.byte	0x48
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0x76
	.long	0x2a3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF65
	.byte	0x5
	.byte	0x77
	.long	0x69
	.byte	0x58
	.uleb128 0x8
	.long	.LASF66
	.byte	0x5
	.byte	0x78
	.long	0x62
	.byte	0x60
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0x79
	.long	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x5
	.byte	0x64
	.long	0x384
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF69
	.byte	0x5
	.byte	0x66
	.long	0x395
	.uleb128 0xd
	.string	"arc"
	.byte	0x40
	.byte	0x5
	.byte	0x7e
	.long	0x402
	.uleb128 0x8
	.long	.LASF70
	.byte	0x5
	.byte	0x80
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x5
	.byte	0x81
	.long	0x379
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x5
	.byte	0x81
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF73
	.byte	0x5
	.byte	0x82
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF74
	.byte	0x5
	.byte	0x83
	.long	0x402
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x5
	.byte	0x83
	.long	0x402
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0x84
	.long	0x2a3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF76
	.byte	0x5
	.byte	0x85
	.long	0x2ae
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x5
	.byte	0x67
	.long	0x40d
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0xe
	.long	.LASF78
	.value	0x270
	.byte	0x5
	.byte	0x8a
	.long	0x5a1
	.uleb128 0x8
	.long	.LASF79
	.byte	0x5
	.byte	0x8c
	.long	0x5a1
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x5
	.byte	0x8d
	.long	0x5a1
	.byte	0xc8
	.uleb128 0xf
	.string	"n"
	.byte	0x5
	.byte	0x8e
	.long	0x69
	.value	0x190
	.uleb128 0x10
	.long	.LASF81
	.byte	0x5
	.byte	0x8e
	.long	0x69
	.value	0x198
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1a0
	.uleb128 0xf
	.string	"m"
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF83
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.byte	0x8f
	.long	0x69
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF85
	.byte	0x5
	.byte	0x90
	.long	0x69
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF86
	.byte	0x5
	.byte	0x90
	.long	0x69
	.value	0x1c8
	.uleb128 0x10
	.long	.LASF87
	.byte	0x5
	.byte	0x92
	.long	0x69
	.value	0x1d0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x5
	.byte	0x93
	.long	0x69
	.value	0x1d8
	.uleb128 0x10
	.long	.LASF89
	.byte	0x5
	.byte	0x94
	.long	0x69
	.value	0x1e0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x5
	.byte	0x95
	.long	0x69
	.value	0x1e8
	.uleb128 0xf
	.string	"eps"
	.byte	0x5
	.byte	0x96
	.long	0x69
	.value	0x1f0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x5
	.byte	0x97
	.long	0x69
	.value	0x1f8
	.uleb128 0x10
	.long	.LASF92
	.byte	0x5
	.byte	0x98
	.long	0x69
	.value	0x200
	.uleb128 0x10
	.long	.LASF93
	.byte	0x5
	.byte	0x99
	.long	0x69
	.value	0x208
	.uleb128 0x10
	.long	.LASF94
	.byte	0x5
	.byte	0x9a
	.long	0x69
	.value	0x210
	.uleb128 0x10
	.long	.LASF95
	.byte	0x5
	.byte	0x9b
	.long	0x28e
	.value	0x218
	.uleb128 0x10
	.long	.LASF96
	.byte	0x5
	.byte	0x9c
	.long	0x2ae
	.value	0x220
	.uleb128 0x10
	.long	.LASF97
	.byte	0x5
	.byte	0x9d
	.long	0x379
	.value	0x228
	.uleb128 0x10
	.long	.LASF98
	.byte	0x5
	.byte	0x9d
	.long	0x379
	.value	0x230
	.uleb128 0x10
	.long	.LASF99
	.byte	0x5
	.byte	0x9e
	.long	0x402
	.value	0x238
	.uleb128 0x10
	.long	.LASF100
	.byte	0x5
	.byte	0x9e
	.long	0x402
	.value	0x240
	.uleb128 0x10
	.long	.LASF101
	.byte	0x5
	.byte	0x9f
	.long	0x402
	.value	0x248
	.uleb128 0x10
	.long	.LASF102
	.byte	0x5
	.byte	0x9f
	.long	0x402
	.value	0x250
	.uleb128 0x10
	.long	.LASF103
	.byte	0x5
	.byte	0xa0
	.long	0x69
	.value	0x258
	.uleb128 0x10
	.long	.LASF104
	.byte	0x5
	.byte	0xa1
	.long	0x69
	.value	0x260
	.uleb128 0x10
	.long	.LASF105
	.byte	0x5
	.byte	0xa2
	.long	0x69
	.value	0x268
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x5b1
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x5
	.byte	0xa3
	.long	0x413
	.uleb128 0x11
	.long	.LASF113
	.byte	0x1
	.byte	0x1c
	.long	0x69
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x633
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x1c
	.long	0x633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"arc"
	.byte	0x1
	.byte	0x22
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x23
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0x23
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF108
	.byte	0x1
	.byte	0x23
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"off"
	.byte	0x1
	.byte	0x24
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b1
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x15
	.long	.LASF111
	.byte	0x1
	.byte	0x53
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c7
	.uleb128 0x12
	.string	"new"
	.byte	0x1
	.byte	0x53
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.byte	0x53
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.byte	0x53
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x53
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.byte	0x54
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0x54
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"pos"
	.byte	0x1
	.byte	0x5f
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF112
	.byte	0x1
	.byte	0x81
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x757
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x81
	.long	0x633
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"new"
	.byte	0x1
	.byte	0x81
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.byte	0x81
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x81
	.long	0x63f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.byte	0x82
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.byte	0x82
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"pos"
	.byte	0x1
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"cmp"
	.byte	0x1
	.byte	0x8e
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF114
	.byte	0x1
	.byte	0xc2
	.long	0x69
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x874
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0xc2
	.long	0x633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xc8
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.long	.LASF115
	.byte	0x1
	.byte	0xc9
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF116
	.byte	0x1
	.byte	0xca
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x14
	.long	.LASF117
	.byte	0x1
	.byte	0xcb
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.long	.LASF118
	.byte	0x1
	.byte	0xcc
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF119
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.byte	0xcf
	.long	0x2ae
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.long	.LASF120
	.byte	0x1
	.byte	0xd0
	.long	0x2ae
	.uleb128 0x17
	.long	.LASF121
	.byte	0x1
	.byte	0xd1
	.long	0x2ae
	.uleb128 0x14
	.long	.LASF110
	.byte	0x1
	.byte	0xd2
	.long	0x2ae
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0xd3
	.long	0x2ae
	.uleb128 0x14
	.long	.LASF123
	.byte	0x1
	.byte	0xd5
	.long	0x639
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.long	.LASF124
	.byte	0x1
	.byte	0xd5
	.long	0x639
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x14
	.long	.LASF125
	.byte	0x1
	.byte	0xd5
	.long	0x639
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.byte	0xd5
	.long	0x639
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x17
	.long	.LASF126
	.byte	0x1
	.byte	0xd6
	.long	0x639
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0xd7
	.long	0x63f
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0xd7
	.long	0x63f
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.value	0x167
	.long	0x69
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x912
	.uleb128 0x19
	.string	"net"
	.byte	0x1
	.value	0x167
	.long	0x633
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.value	0x167
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.string	"all"
	.byte	0x1
	.value	0x167
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x1
	.value	0x16f
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.value	0x171
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x1
	.value	0x172
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"arc"
	.byte	0x1
	.value	0x172
	.long	0x639
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF107
	.byte	0x1
	.value	0x173
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF135
	.byte	0x6
	.byte	0xa9
	.long	0x25b
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF31:
	.string	"_shortbuf"
.LASF125:
	.string	"arcnew"
.LASF134:
	.string	"_IO_lock_t"
.LASF126:
	.string	"first_of_sparse_list"
.LASF20:
	.string	"_IO_buf_end"
.LASF97:
	.string	"nodes"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF72:
	.string	"head"
.LASF132:
	.string	"implicit.c"
.LASF93:
	.string	"pert_val"
.LASF24:
	.string	"_markers"
.LASF57:
	.string	"pred"
.LASF90:
	.string	"feasible"
.LASF63:
	.string	"arc_tmp"
.LASF55:
	.string	"orientation"
.LASF119:
	.string	"min_impl_duration"
.LASF124:
	.string	"arcin"
.LASF50:
	.string	"flow_t"
.LASF45:
	.string	"_pos"
.LASF98:
	.string	"stop_nodes"
.LASF135:
	.string	"stdout"
.LASF23:
	.string	"_IO_save_end"
.LASF107:
	.string	"stop"
.LASF46:
	.string	"float"
.LASF105:
	.string	"checksum"
.LASF89:
	.string	"perturbed"
.LASF49:
	.string	"long long unsigned int"
.LASF102:
	.string	"stop_dummy"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF56:
	.string	"child"
.LASF67:
	.string	"time"
.LASF115:
	.string	"trips"
.LASF26:
	.string	"_fileno"
.LASF130:
	.string	"new_arc"
.LASF58:
	.string	"sibling"
.LASF109:
	.string	"newpos"
.LASF87:
	.string	"primal_unbounded"
.LASF7:
	.string	"size_t"
.LASF122:
	.string	"bigM_minus_min_impl_duration"
.LASF111:
	.string	"insert_new_arc"
.LASF15:
	.string	"_IO_read_base"
.LASF43:
	.string	"_next"
.LASF99:
	.string	"arcs"
.LASF70:
	.string	"cost"
.LASF110:
	.string	"red_cost"
.LASF83:
	.string	"m_org"
.LASF113:
	.string	"resize_prob"
.LASF76:
	.string	"org_cost"
.LASF127:
	.string	"suspend_impl"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF73:
	.string	"ident"
.LASF60:
	.string	"basic_arc"
.LASF68:
	.string	"node_p"
.LASF52:
	.string	"node_t"
.LASF51:
	.string	"cost_t"
.LASF116:
	.string	"new_arcs"
.LASF123:
	.string	"arcout"
.LASF86:
	.string	"max_new_m"
.LASF16:
	.string	"_IO_write_base"
.LASF48:
	.string	"long long int"
.LASF21:
	.string	"_IO_save_base"
.LASF65:
	.string	"depth"
.LASF77:
	.string	"arc_p"
.LASF69:
	.string	"arc_t"
.LASF114:
	.string	"price_out_impl"
.LASF95:
	.string	"optcost"
.LASF75:
	.string	"nextin"
.LASF100:
	.string	"stop_arcs"
.LASF62:
	.string	"firstin"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF94:
	.string	"bigM"
.LASF30:
	.string	"_vtable_offset"
.LASF88:
	.string	"dual_unbounded"
.LASF120:
	.string	"head_potential"
.LASF85:
	.string	"max_residual_new_m"
.LASF64:
	.string	"flow"
.LASF131:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF108:
	.string	"root"
.LASF84:
	.string	"m_impl"
.LASF14:
	.string	"_IO_read_end"
.LASF79:
	.string	"inputfile"
.LASF112:
	.string	"replace_weaker_arc"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF118:
	.string	"latest"
.LASF92:
	.string	"feas_tol"
.LASF61:
	.string	"firstout"
.LASF53:
	.string	"node"
.LASF80:
	.string	"clustfile"
.LASF81:
	.string	"n_trips"
.LASF78:
	.string	"network"
.LASF66:
	.string	"number"
.LASF32:
	.string	"_lock"
.LASF117:
	.string	"resized"
.LASF10:
	.string	"sizetype"
.LASF96:
	.string	"ignore_impl"
.LASF0:
	.string	"long unsigned int"
.LASF28:
	.string	"_old_offset"
.LASF41:
	.string	"_IO_FILE"
.LASF59:
	.string	"sibling_prev"
.LASF74:
	.string	"nextout"
.LASF1:
	.string	"unsigned char"
.LASF104:
	.string	"bound_exchanges"
.LASF44:
	.string	"_sbuf"
.LASF17:
	.string	"_IO_write_ptr"
.LASF71:
	.string	"tail"
.LASF101:
	.string	"dummy_arcs"
.LASF82:
	.string	"max_m"
.LASF133:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF129:
	.string	"susp"
.LASF103:
	.string	"iterations"
.LASF106:
	.string	"network_t"
.LASF128:
	.string	"threshold"
.LASF8:
	.string	"__off_t"
.LASF121:
	.string	"arc_cost"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF47:
	.string	"double"
.LASF25:
	.string	"_chain"
.LASF91:
	.string	"opt_tol"
.LASF54:
	.string	"potential"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF19:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
