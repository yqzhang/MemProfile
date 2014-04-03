	.file	"treeup.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 treeup.c -mtune=generic -march=x86-64
# -g -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.globl	update_tree
	.type	update_tree, @function
update_tree:
.LFB2:
	.file 1 "treeup.c"
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -88(%rbp)	# cycle_ori, cycle_ori
	movq	%rsi, -96(%rbp)	# new_orientation, new_orientation
	movq	%rdx, -104(%rbp)	# delta, delta
	movq	%rcx, -112(%rbp)	# new_flow, new_flow
	movq	%r8, -120(%rbp)	# iplus, iplus
	movq	%r9, -128(%rbp)	# jplus, jplus
	.loc 1 71 0
	movq	40(%rbp), %rax	# bea, tmp101
	movq	8(%rax), %rax	# bea_17(D)->tail, D.4781
	cmpq	-128(%rbp), %rax	# jplus, D.4781
	jne	.L2	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	cmpq	$0, 48(%rbp)	#, sigma
	js	.L3	#,
.L2:
	.loc 1 72 0 is_stmt 1 discriminator 2
	movq	40(%rbp), %rax	# bea, tmp102
	movq	8(%rax), %rax	# bea_17(D)->tail, D.4781
	.loc 1 71 0 discriminator 2
	cmpq	-120(%rbp), %rax	# iplus, D.4781
	jne	.L4	#,
	.loc 1 72 0
	cmpq	$0, 48(%rbp)	#, sigma
	jle	.L4	#,
.L3:
	.loc 1 73 0
	movq	48(%rbp), %rax	# sigma, tmp104
	sarq	$63, %rax	#, tmp103
	xorq	%rax, 48(%rbp)	# tmp103, sigma
	subq	%rax, 48(%rbp)	# tmp103, sigma
	jmp	.L5	#
.L4:
	.loc 1 75 0
	movq	48(%rbp), %rax	# sigma, tmp106
	cqto
	movq	%rdx, %rax	# tmp105, D.4782
	xorq	48(%rbp), %rax	# sigma, D.4782
	subq	%rdx, %rax	# tmp105, D.4782
	negq	%rax	# tmp107
	movq	%rax, 48(%rbp)	# tmp107, sigma
.L5:
	.loc 1 77 0
	movq	16(%rbp), %rax	# iminus, tmp108
	movq	%rax, -72(%rbp)	# tmp108, father
	.loc 1 78 0
	movq	-72(%rbp), %rax	# father, tmp109
	movq	(%rax), %rdx	# father_27->potential, D.4782
	movq	48(%rbp), %rax	# sigma, tmp110
	addq	%rax, %rdx	# tmp110, D.4782
	movq	-72(%rbp), %rax	# father, tmp111
	movq	%rdx, (%rax)	# D.4782, father_27->potential
.L6:
	.loc 1 80 0
	movq	-72(%rbp), %rax	# father, tmp112
	movq	16(%rax), %rax	# father_5->child, tmp113
	movq	%rax, -64(%rbp)	# tmp113, temp
	.loc 1 81 0
	cmpq	$0, -64(%rbp)	#, temp
	je	.L7	#,
.L8:
	.loc 1 84 0
	movq	-64(%rbp), %rax	# temp, tmp114
	movq	(%rax), %rdx	# temp_8->potential, D.4782
	movq	48(%rbp), %rax	# sigma, tmp115
	addq	%rax, %rdx	# tmp115, D.4782
	movq	-64(%rbp), %rax	# temp, tmp116
	movq	%rdx, (%rax)	# D.4782, temp_8->potential
	.loc 1 85 0
	movq	-64(%rbp), %rax	# temp, tmp117
	movq	%rax, -72(%rbp)	# tmp117, father
	.loc 1 86 0
	jmp	.L6	#
.L7:
	.loc 1 89 0
	movq	-72(%rbp), %rax	# father, tmp118
	cmpq	16(%rbp), %rax	# iminus, tmp118
	jne	.L9	#,
	.loc 1 90 0
	nop
.L10:
	.loc 1 101 0
	movq	-120(%rbp), %rax	# iplus, tmp123
	movq	%rax, -64(%rbp)	# tmp123, temp
	.loc 1 102 0
	movq	-64(%rbp), %rax	# temp, tmp124
	movq	24(%rax), %rax	# temp_31->pred, tmp125
	movq	%rax, -72(%rbp)	# tmp125, father
	.loc 1 103 0
	movq	16(%rbp), %rax	# iminus, tmp126
	movq	88(%rax), %rax	# iminus_26(D)->depth, tmp127
	movq	%rax, -32(%rbp)	# tmp127, depth_iminus
	movq	-32(%rbp), %rax	# depth_iminus, tmp128
	movq	%rax, -48(%rbp)	# tmp128, new_depth
	.loc 1 104 0
	movq	-128(%rbp), %rax	# jplus, tmp129
	movq	%rax, -56(%rbp)	# tmp129, new_pred
	.loc 1 105 0
	movq	40(%rbp), %rax	# bea, tmp130
	movq	%rax, -80(%rbp)	# tmp130, new_basic_arc
	.loc 1 106 0
	jmp	.L12	#
.L9:
	.loc 1 91 0
	movq	-72(%rbp), %rax	# father, tmp119
	movq	32(%rax), %rax	# father_6->sibling, tmp120
	movq	%rax, -64(%rbp)	# tmp120, temp
	.loc 1 92 0
	cmpq	$0, -64(%rbp)	#, temp
	je	.L11	#,
	.loc 1 93 0
	jmp	.L8	#
.L11:
	.loc 1 94 0
	movq	-72(%rbp), %rax	# father, tmp121
	movq	24(%rax), %rax	# father_6->pred, tmp122
	movq	%rax, -72(%rbp)	# tmp122, father
	.loc 1 95 0
	jmp	.L7	#
.L19:
	.loc 1 108 0
	movq	-64(%rbp), %rax	# temp, tmp131
	movq	32(%rax), %rax	# temp_9->sibling, D.4781
	testq	%rax, %rax	# D.4781
	je	.L13	#,
	.loc 1 109 0
	movq	-64(%rbp), %rax	# temp, tmp132
	movq	32(%rax), %rax	# temp_9->sibling, D.4781
	movq	-64(%rbp), %rdx	# temp, tmp133
	movq	40(%rdx), %rdx	# temp_9->sibling_prev, D.4781
	movq	%rdx, 40(%rax)	# D.4781, _41->sibling_prev
.L13:
	.loc 1 110 0
	movq	-64(%rbp), %rax	# temp, tmp134
	movq	40(%rax), %rax	# temp_9->sibling_prev, D.4781
	testq	%rax, %rax	# D.4781
	je	.L14	#,
	.loc 1 111 0
	movq	-64(%rbp), %rax	# temp, tmp135
	movq	40(%rax), %rax	# temp_9->sibling_prev, D.4781
	movq	-64(%rbp), %rdx	# temp, tmp136
	movq	32(%rdx), %rdx	# temp_9->sibling, D.4781
	movq	%rdx, 32(%rax)	# D.4781, _44->sibling
	jmp	.L15	#
.L14:
	.loc 1 112 0
	movq	-64(%rbp), %rax	# temp, tmp137
	movq	32(%rax), %rdx	# temp_9->sibling, D.4781
	movq	-72(%rbp), %rax	# father, tmp138
	movq	%rdx, 16(%rax)	# D.4781, father_7->child
.L15:
	.loc 1 115 0
	movq	-64(%rbp), %rax	# temp, tmp139
	movq	-56(%rbp), %rdx	# new_pred, tmp140
	movq	%rdx, 24(%rax)	# tmp140, temp_9->pred
	.loc 1 116 0
	movq	-56(%rbp), %rax	# new_pred, tmp141
	movq	16(%rax), %rdx	# new_pred_14->child, D.4781
	movq	-64(%rbp), %rax	# temp, tmp142
	movq	%rdx, 32(%rax)	# D.4781, temp_9->sibling
	.loc 1 117 0
	movq	-64(%rbp), %rax	# temp, tmp143
	movq	32(%rax), %rax	# temp_9->sibling, D.4781
	testq	%rax, %rax	# D.4781
	je	.L16	#,
	.loc 1 118 0
	movq	-64(%rbp), %rax	# temp, tmp144
	movq	32(%rax), %rax	# temp_9->sibling, D.4781
	movq	-64(%rbp), %rdx	# temp, tmp145
	movq	%rdx, 40(%rax)	# tmp145, _49->sibling_prev
.L16:
	.loc 1 119 0
	movq	-56(%rbp), %rax	# new_pred, tmp146
	movq	-64(%rbp), %rdx	# temp, tmp147
	movq	%rdx, 16(%rax)	# tmp147, new_pred_14->child
	.loc 1 120 0
	movq	-64(%rbp), %rax	# temp, tmp148
	movq	$0, 40(%rax)	#, temp_9->sibling_prev
	.loc 1 122 0
	movq	-64(%rbp), %rax	# temp, tmp149
	movl	8(%rax), %eax	# temp_9->orientation, D.4783
	testl	%eax, %eax	# D.4783
	sete	%al	#, D.4784
	movzbl	%al, %eax	# D.4784, tmp150
	movq	%rax, -24(%rbp)	# tmp150, orientation_temp
	.loc 1 123 0
	movq	-24(%rbp), %rax	# orientation_temp, tmp151
	cmpq	-88(%rbp), %rax	# cycle_ori, tmp151
	jne	.L17	#,
	.loc 1 124 0
	movq	-64(%rbp), %rax	# temp, tmp152
	movq	80(%rax), %rdx	# temp_9->flow, D.4782
	movq	-104(%rbp), %rax	# delta, tmp156
	addq	%rdx, %rax	# D.4782, tmp155
	movq	%rax, -40(%rbp)	# tmp155, flow_temp
	jmp	.L18	#
.L17:
	.loc 1 126 0
	movq	-64(%rbp), %rax	# temp, tmp157
	movq	80(%rax), %rax	# temp_9->flow, D.4782
	subq	-104(%rbp), %rax	# delta, tmp159
	movq	%rax, -40(%rbp)	# tmp159, flow_temp
.L18:
	.loc 1 127 0
	movq	-64(%rbp), %rax	# temp, tmp160
	movq	48(%rax), %rax	# temp_9->basic_arc, tmp161
	movq	%rax, -16(%rbp)	# tmp161, basic_arc_temp
	.loc 1 128 0
	movq	-64(%rbp), %rax	# temp, tmp162
	movq	88(%rax), %rax	# temp_9->depth, tmp163
	movq	%rax, -8(%rbp)	# tmp163, depth_temp
	.loc 1 130 0
	movq	-96(%rbp), %rax	# new_orientation, tmp164
	movl	%eax, %edx	# tmp164, D.4783
	movq	-64(%rbp), %rax	# temp, tmp165
	movl	%edx, 8(%rax)	# D.4783, temp_9->orientation
	.loc 1 131 0
	movq	-64(%rbp), %rax	# temp, tmp166
	movq	-112(%rbp), %rdx	# new_flow, tmp167
	movq	%rdx, 80(%rax)	# tmp167, temp_9->flow
	.loc 1 132 0
	movq	-64(%rbp), %rax	# temp, tmp168
	movq	-80(%rbp), %rdx	# new_basic_arc, tmp169
	movq	%rdx, 48(%rax)	# tmp169, temp_9->basic_arc
	.loc 1 133 0
	movq	-64(%rbp), %rax	# temp, tmp170
	movq	-48(%rbp), %rdx	# new_depth, tmp171
	movq	%rdx, 88(%rax)	# tmp171, temp_9->depth
	.loc 1 135 0
	movq	-64(%rbp), %rax	# temp, tmp172
	movq	%rax, -56(%rbp)	# tmp172, new_pred
	.loc 1 136 0
	movq	-24(%rbp), %rax	# orientation_temp, tmp173
	movq	%rax, -96(%rbp)	# tmp173, new_orientation
	.loc 1 137 0
	movq	-40(%rbp), %rax	# flow_temp, tmp174
	movq	%rax, -112(%rbp)	# tmp174, new_flow
	.loc 1 138 0
	movq	-16(%rbp), %rax	# basic_arc_temp, tmp175
	movq	%rax, -80(%rbp)	# tmp175, new_basic_arc
	.loc 1 139 0
	movq	-8(%rbp), %rax	# depth_temp, tmp180
	movq	-32(%rbp), %rdx	# depth_iminus, tmp181
	subq	%rax, %rdx	# tmp180, tmp179
	movq	%rdx, %rax	# tmp179, tmp179
	movq	%rax, -48(%rbp)	# tmp179, new_depth
	.loc 1 140 0
	movq	-72(%rbp), %rax	# father, tmp182
	movq	%rax, -64(%rbp)	# tmp182, temp
	.loc 1 141 0
	movq	-64(%rbp), %rax	# temp, tmp183
	movq	24(%rax), %rax	# temp_67->pred, tmp184
	movq	%rax, -72(%rbp)	# tmp184, father
.L12:
	.loc 1 106 0 discriminator 1
	movq	-64(%rbp), %rax	# temp, tmp185
	cmpq	24(%rbp), %rax	# jminus, tmp185
	jne	.L19	#,
	.loc 1 144 0
	movq	-104(%rbp), %rax	# delta, tmp186
	cmpq	56(%rbp), %rax	# feas_tol, tmp186
	jle	.L20	#,
	.loc 1 146 0
	movq	24(%rbp), %rax	# jminus, tmp187
	movq	%rax, -64(%rbp)	# tmp187, temp
	jmp	.L21	#
.L24:
	.loc 1 148 0
	movq	-64(%rbp), %rax	# temp, tmp188
	movq	88(%rax), %rax	# temp_10->depth, D.4782
	subq	-32(%rbp), %rax	# depth_iminus, D.4782
	movq	%rax, %rdx	# D.4782, D.4782
	movq	-64(%rbp), %rax	# temp, tmp189
	movq	%rdx, 88(%rax)	# D.4782, temp_10->depth
	.loc 1 149 0
	movq	-64(%rbp), %rax	# temp, tmp190
	movl	8(%rax), %eax	# temp_10->orientation, D.4783
	cltq
	cmpq	-88(%rbp), %rax	# cycle_ori, D.4782
	je	.L22	#,
	.loc 1 150 0
	movq	-64(%rbp), %rax	# temp, tmp191
	movq	80(%rax), %rdx	# temp_10->flow, D.4782
	movq	-104(%rbp), %rax	# delta, tmp192
	addq	%rax, %rdx	# tmp192, D.4782
	movq	-64(%rbp), %rax	# temp, tmp193
	movq	%rdx, 80(%rax)	# D.4782, temp_10->flow
	jmp	.L23	#
.L22:
	.loc 1 152 0
	movq	-64(%rbp), %rax	# temp, tmp194
	movq	80(%rax), %rax	# temp_10->flow, D.4782
	subq	-104(%rbp), %rax	# delta, D.4782
	movq	%rax, %rdx	# D.4782, D.4782
	movq	-64(%rbp), %rax	# temp, tmp195
	movq	%rdx, 80(%rax)	# D.4782, temp_10->flow
.L23:
	.loc 1 146 0
	movq	-64(%rbp), %rax	# temp, tmp196
	movq	24(%rax), %rax	# temp_10->pred, tmp197
	movq	%rax, -64(%rbp)	# tmp197, temp
.L21:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# temp, tmp198
	cmpq	32(%rbp), %rax	# w, tmp198
	jne	.L24	#,
	.loc 1 154 0 is_stmt 1
	movq	-128(%rbp), %rax	# jplus, tmp199
	movq	%rax, -64(%rbp)	# tmp199, temp
	jmp	.L25	#
.L28:
	.loc 1 156 0
	movq	-64(%rbp), %rax	# temp, tmp200
	movq	88(%rax), %rdx	# temp_11->depth, D.4782
	movq	-32(%rbp), %rax	# depth_iminus, tmp201
	addq	%rax, %rdx	# tmp201, D.4782
	movq	-64(%rbp), %rax	# temp, tmp202
	movq	%rdx, 88(%rax)	# D.4782, temp_11->depth
	.loc 1 157 0
	movq	-64(%rbp), %rax	# temp, tmp203
	movl	8(%rax), %eax	# temp_11->orientation, D.4783
	cltq
	cmpq	-88(%rbp), %rax	# cycle_ori, D.4782
	jne	.L26	#,
	.loc 1 158 0
	movq	-64(%rbp), %rax	# temp, tmp204
	movq	80(%rax), %rdx	# temp_11->flow, D.4782
	movq	-104(%rbp), %rax	# delta, tmp205
	addq	%rax, %rdx	# tmp205, D.4782
	movq	-64(%rbp), %rax	# temp, tmp206
	movq	%rdx, 80(%rax)	# D.4782, temp_11->flow
	jmp	.L27	#
.L26:
	.loc 1 160 0
	movq	-64(%rbp), %rax	# temp, tmp207
	movq	80(%rax), %rax	# temp_11->flow, D.4782
	subq	-104(%rbp), %rax	# delta, D.4782
	movq	%rax, %rdx	# D.4782, D.4782
	movq	-64(%rbp), %rax	# temp, tmp208
	movq	%rdx, 80(%rax)	# D.4782, temp_11->flow
.L27:
	.loc 1 154 0
	movq	-64(%rbp), %rax	# temp, tmp209
	movq	24(%rax), %rax	# temp_11->pred, tmp210
	movq	%rax, -64(%rbp)	# tmp210, temp
.L25:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# temp, tmp211
	cmpq	32(%rbp), %rax	# w, tmp211
	jne	.L28	#,
	jmp	.L1	#
.L20:
	.loc 1 165 0 is_stmt 1
	movq	24(%rbp), %rax	# jminus, tmp212
	movq	%rax, -64(%rbp)	# tmp212, temp
	jmp	.L30	#
.L31:
	.loc 1 166 0 discriminator 2
	movq	-64(%rbp), %rax	# temp, tmp213
	movq	88(%rax), %rax	# temp_12->depth, D.4782
	subq	-32(%rbp), %rax	# depth_iminus, D.4782
	movq	%rax, %rdx	# D.4782, D.4782
	movq	-64(%rbp), %rax	# temp, tmp214
	movq	%rdx, 88(%rax)	# D.4782, temp_12->depth
	.loc 1 165 0 discriminator 2
	movq	-64(%rbp), %rax	# temp, tmp215
	movq	24(%rax), %rax	# temp_12->pred, tmp216
	movq	%rax, -64(%rbp)	# tmp216, temp
.L30:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# temp, tmp217
	cmpq	32(%rbp), %rax	# w, tmp217
	jne	.L31	#,
	.loc 1 167 0 is_stmt 1
	movq	-128(%rbp), %rax	# jplus, tmp218
	movq	%rax, -64(%rbp)	# tmp218, temp
	jmp	.L32	#
.L33:
	.loc 1 168 0 discriminator 2
	movq	-64(%rbp), %rax	# temp, tmp219
	movq	88(%rax), %rdx	# temp_13->depth, D.4782
	movq	-32(%rbp), %rax	# depth_iminus, tmp220
	addq	%rax, %rdx	# tmp220, D.4782
	movq	-64(%rbp), %rax	# temp, tmp221
	movq	%rdx, 88(%rax)	# D.4782, temp_13->depth
	.loc 1 167 0 discriminator 2
	movq	-64(%rbp), %rax	# temp, tmp222
	movq	24(%rax), %rax	# temp_13->pred, tmp223
	movq	%rax, -64(%rbp)	# tmp223, temp
.L32:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# temp, tmp224
	cmpq	32(%rbp), %rax	# w, tmp224
	jne	.L33	#,
.L1:
	.loc 1 171 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	update_tree, .-update_tree
.Letext0:
	.file 2 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x39e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x44
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x63
	.long	0xb0
	.uleb128 0x5
	.long	.LASF32
	.byte	0x68
	.byte	0x2
	.byte	0x6b
	.long	0x165
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x6d
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x6e
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x6f
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x70
	.long	0x165
	.byte	0x18
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x71
	.long	0x165
	.byte	0x20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x72
	.long	0x165
	.byte	0x28
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x73
	.long	0x1ee
	.byte	0x30
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x1ee
	.byte	0x38
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0x74
	.long	0x1ee
	.byte	0x40
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x75
	.long	0x1ee
	.byte	0x48
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x76
	.long	0x8f
	.byte	0x50
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.byte	0x77
	.long	0x5e
	.byte	0x58
	.uleb128 0x6
	.long	.LASF28
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x60
	.uleb128 0x6
	.long	.LASF29
	.byte	0x2
	.byte	0x79
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x2
	.byte	0x64
	.long	0x170
	.uleb128 0x7
	.byte	0x8
	.long	0xb0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x2
	.byte	0x66
	.long	0x181
	.uleb128 0x8
	.string	"arc"
	.byte	0x40
	.byte	0x2
	.byte	0x7e
	.long	0x1ee
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.byte	0x80
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x8
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF36
	.byte	0x2
	.byte	0x82
	.long	0x57
	.byte	0x18
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2
	.byte	0x83
	.long	0x1ee
	.byte	0x20
	.uleb128 0x6
	.long	.LASF38
	.byte	0x2
	.byte	0x83
	.long	0x1ee
	.byte	0x28
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x84
	.long	0x8f
	.byte	0x30
	.uleb128 0x6
	.long	.LASF39
	.byte	0x2
	.byte	0x85
	.long	0x9a
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x2
	.byte	0x67
	.long	0x1f9
	.uleb128 0x7
	.byte	0x8
	.long	0x181
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1
	.byte	0x1d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x395
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.byte	0x1e
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xa
	.long	.LASF42
	.byte	0x1
	.byte	0x1f
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xa
	.long	.LASF43
	.byte	0x1
	.byte	0x20
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xa
	.long	.LASF44
	.byte	0x1
	.byte	0x21
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.byte	0x22
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.byte	0x23
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1
	.byte	0x24
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x1
	.byte	0x25
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.string	"w"
	.byte	0x1
	.byte	0x26
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.string	"bea"
	.byte	0x1
	.byte	0x27
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.byte	0x28
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.byte	0x29
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.byte	0x3a
	.long	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.byte	0x3b
	.long	0x39b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.byte	0x3c
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.long	.LASF54
	.byte	0x1
	.byte	0x3d
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.long	.LASF55
	.byte	0x1
	.byte	0x3e
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.long	.LASF56
	.byte	0x1
	.byte	0x3f
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.byte	0x40
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.byte	0x42
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.long	.LASF60
	.byte	0x1
	.byte	0x43
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF61
	.byte	0x1
	.byte	0x4f
	.quad	.L6
	.uleb128 0xd
	.long	.LASF62
	.byte	0x1
	.byte	0x53
	.quad	.L8
	.uleb128 0xd
	.long	.LASF63
	.byte	0x1
	.byte	0x58
	.quad	.L7
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0x61
	.quad	.L10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x7
	.byte	0x8
	.long	0x176
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
	.uleb128 0xe
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
.LASF68:
	.string	"update_tree"
.LASF60:
	.string	"flow_temp"
.LASF42:
	.string	"new_orientation"
.LASF45:
	.string	"iplus"
.LASF22:
	.string	"basic_arc"
.LASF54:
	.string	"temp"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF38:
	.string	"nextin"
.LASF43:
	.string	"delta"
.LASF23:
	.string	"firstout"
.LASF20:
	.string	"sibling"
.LASF35:
	.string	"head"
.LASF14:
	.string	"cost_t"
.LASF56:
	.string	"orientation_temp"
.LASF9:
	.string	"float"
.LASF44:
	.string	"new_flow"
.LASF25:
	.string	"arc_tmp"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"potential"
.LASF50:
	.string	"feas_tol"
.LASF6:
	.string	"long int"
.LASF32:
	.string	"node"
.LASF46:
	.string	"jplus"
.LASF24:
	.string	"firstin"
.LASF21:
	.string	"sibling_prev"
.LASF55:
	.string	"new_pred"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"iminus"
.LASF34:
	.string	"tail"
.LASF65:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF37:
	.string	"nextout"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF67:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF15:
	.string	"node_t"
.LASF3:
	.string	"unsigned int"
.LASF49:
	.string	"sigma"
.LASF30:
	.string	"node_p"
.LASF58:
	.string	"depth_iminus"
.LASF17:
	.string	"orientation"
.LASF53:
	.string	"father"
.LASF29:
	.string	"time"
.LASF2:
	.string	"short unsigned int"
.LASF52:
	.string	"new_basic_arc"
.LASF8:
	.string	"char"
.LASF33:
	.string	"cost"
.LASF66:
	.string	"treeup.c"
.LASF27:
	.string	"depth"
.LASF26:
	.string	"flow"
.LASF0:
	.string	"long unsigned int"
.LASF39:
	.string	"org_cost"
.LASF10:
	.string	"double"
.LASF41:
	.string	"cycle_ori"
.LASF18:
	.string	"child"
.LASF13:
	.string	"flow_t"
.LASF64:
	.string	"CONTINUE"
.LASF59:
	.string	"new_depth"
.LASF19:
	.string	"pred"
.LASF61:
	.string	"RECURSION"
.LASF51:
	.string	"basic_arc_temp"
.LASF36:
	.string	"ident"
.LASF28:
	.string	"number"
.LASF63:
	.string	"TEST"
.LASF40:
	.string	"arc_p"
.LASF31:
	.string	"arc_t"
.LASF57:
	.string	"depth_temp"
.LASF48:
	.string	"jminus"
.LASF62:
	.string	"ITERATION"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
