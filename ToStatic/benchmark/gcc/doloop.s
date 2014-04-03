	.file	"doloop.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 doloop.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	doloop_condition_get, @function
doloop_condition_get:
.LFB2:
	.file 1 "doloop.c"
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# pattern, pattern
	.loc 1 97 0
	movq	-40(%rbp), %rax	# pattern, tmp88
	movzwl	(%rax), %eax	# pattern_2(D)->code, D.11291
	cmpw	$39, %ax	#, D.11291
	je	.L2	#,
	.loc 1 98 0
	movl	$0, %eax	#, D.11290
	jmp	.L3	#
.L2:
	.loc 1 100 0
	movq	-40(%rbp), %rax	# pattern, tmp89
	movq	8(%rax), %rax	# pattern_2(D)->fld[0].rtvec, D.11292
	movq	8(%rax), %rax	# _5->elem, tmp90
	movq	%rax, -32(%rbp)	# tmp90, cmp
	.loc 1 101 0
	movq	-40(%rbp), %rax	# pattern, tmp91
	movq	8(%rax), %rax	# pattern_2(D)->fld[0].rtvec, D.11292
	movq	16(%rax), %rax	# _7->elem, tmp92
	movq	%rax, -24(%rbp)	# tmp92, inc
	.loc 1 104 0
	movq	-24(%rbp), %rax	# inc, tmp93
	movzwl	(%rax), %eax	# inc_8->code, D.11291
	cmpw	$47, %ax	#, D.11291
	jne	.L4	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# inc, tmp94
	movq	8(%rax), %rax	# inc_8->fld[0].rtx, D.11293
	movzwl	(%rax), %eax	# _10->code, D.11291
	cmpw	$61, %ax	#, D.11291
	je	.L5	#,
.L4:
	.loc 1 105 0 is_stmt 1
	movl	$0, %eax	#, D.11290
	jmp	.L3	#
.L5:
	.loc 1 108 0
	movq	-24(%rbp), %rax	# inc, tmp95
	movq	8(%rax), %rax	# inc_8->fld[0].rtx, tmp96
	movq	%rax, -16(%rbp)	# tmp96, reg
	.loc 1 113 0
	movq	-32(%rbp), %rax	# cmp, tmp97
	movzwl	(%rax), %eax	# cmp_6->code, D.11291
	cmpw	$47, %ax	#, D.11291
	jne	.L6	#,
	.loc 1 114 0
	movq	-32(%rbp), %rax	# cmp, tmp98
	movq	8(%rax), %rdx	# cmp_6->fld[0].rtx, D.11293
	movq	global_rtl(%rip), %rax	# global_rtl, D.11293
	cmpq	%rax, %rdx	# D.11293, D.11293
	jne	.L6	#,
	.loc 1 115 0
	movq	-32(%rbp), %rax	# cmp, tmp99
	movq	16(%rax), %rax	# cmp_6->fld[1].rtx, D.11293
	movzwl	(%rax), %eax	# _16->code, D.11291
	cmpw	$72, %ax	#, D.11291
	jne	.L6	#,
	.loc 1 116 0
	movq	-32(%rbp), %rax	# cmp, tmp100
	movq	16(%rax), %rax	# cmp_6->fld[1].rtx, D.11293
	movq	16(%rax), %rax	# _18->fld[1].rtx, D.11293
	movzwl	(%rax), %eax	# _19->code, D.11291
	cmpw	$67, %ax	#, D.11291
	jne	.L6	#,
	.loc 1 117 0
	movq	-32(%rbp), %rax	# cmp, tmp101
	movq	16(%rax), %rax	# cmp_6->fld[1].rtx, D.11293
	movq	24(%rax), %rdx	# _21->fld[2].rtx, D.11293
	movq	global_rtl(%rip), %rax	# global_rtl, D.11293
	cmpq	%rax, %rdx	# D.11293, D.11293
	je	.L7	#,
.L6:
	.loc 1 118 0
	movl	$0, %eax	#, D.11290
	jmp	.L3	#
.L7:
	.loc 1 121 0
	movq	-32(%rbp), %rax	# cmp, tmp102
	movq	16(%rax), %rax	# cmp_6->fld[1].rtx, D.11293
	movq	8(%rax), %rax	# _24->fld[0].rtx, tmp103
	movq	%rax, -8(%rbp)	# tmp103, condition
	.loc 1 123 0
	movq	-8(%rbp), %rax	# condition, tmp104
	movzwl	(%rax), %eax	# condition_25->code, D.11291
	cmpw	$104, %ax	#, D.11291
	je	.L8	#,
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# condition, tmp105
	movzwl	(%rax), %eax	# condition_25->code, D.11291
	cmpw	$102, %ax	#, D.11291
	jne	.L9	#,
.L8:
	.loc 1 124 0 is_stmt 1
	movq	-8(%rbp), %rax	# condition, tmp106
	movq	16(%rax), %rax	# condition_25->fld[1].rtx, D.11293
	movzwl	(%rax), %eax	# _28->code, D.11291
	cmpw	$54, %ax	#, D.11291
	je	.L10	#,
.L9:
	.loc 1 125 0
	movl	$0, %eax	#, D.11290
	jmp	.L3	#
.L10:
	.loc 1 127 0
	movq	-8(%rbp), %rax	# condition, tmp107
	movq	8(%rax), %rax	# condition_25->fld[0].rtx, D.11293
	cmpq	-16(%rbp), %rax	# reg, D.11293
	jne	.L11	#,
	.loc 1 128 0
	movq	-8(%rbp), %rax	# condition, D.11290
	jmp	.L3	#
.L11:
	.loc 1 130 0
	movq	-8(%rbp), %rax	# condition, tmp108
	movq	8(%rax), %rax	# condition_25->fld[0].rtx, D.11293
	movzwl	(%rax), %eax	# _32->code, D.11291
	cmpw	$75, %ax	#, D.11291
	jne	.L12	#,
	.loc 1 131 0
	movq	-8(%rbp), %rax	# condition, tmp109
	movq	8(%rax), %rax	# condition_25->fld[0].rtx, D.11293
	movq	8(%rax), %rax	# _34->fld[0].rtx, D.11293
	cmpq	-16(%rbp), %rax	# reg, D.11293
	jne	.L12	#,
	.loc 1 132 0
	movq	-8(%rbp), %rax	# condition, D.11290
	jmp	.L3	#
.L12:
	.loc 1 137 0
	movl	$0, %eax	#, D.11290
.L3:
	.loc 1 138 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	doloop_condition_get, .-doloop_condition_get
	.type	doloop_iterations_max, @function
doloop_iterations_max:
.LFB3:
	.loc 1 150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# loop_info, loop_info
	movl	%esi, -108(%rbp)	# mode, mode
	movl	%edx, -112(%rbp)	# nonneg, nonneg
	.loc 1 158 0
	movl	$0, -84(%rbp)	#, neg_inc
	.loc 1 159 0
	movq	-104(%rbp), %rax	# loop_info, tmp112
	movq	80(%rax), %rax	# loop_info_15(D)->increment, D.11295
	movq	8(%rax), %rax	# _16->fld[0].rtwint, tmp113
	movq	%rax, -56(%rbp)	# tmp113, abs_inc
	.loc 1 160 0
	cmpq	$0, -56(%rbp)	#, abs_inc
	jns	.L14	#,
	.loc 1 162 0
	negq	-56(%rbp)	# abs_inc
	.loc 1 163 0
	movl	$1, -84(%rbp)	#, neg_inc
.L14:
	.loc 1 166 0
	cmpl	$0, -84(%rbp)	#, neg_inc
	je	.L15	#,
	.loc 1 168 0
	movq	-104(%rbp), %rax	# loop_info, tmp114
	movl	88(%rax), %eax	# loop_info_15(D)->comparison_code, D.11296
	movl	%eax, %edi	# D.11296,
	call	swap_condition	#
	movl	%eax, -88(%rbp)	# tmp115, code
	.loc 1 169 0
	movq	-104(%rbp), %rax	# loop_info, tmp116
	movq	64(%rax), %rax	# loop_info_15(D)->final_equiv_value, tmp117
	movq	%rax, -72(%rbp)	# tmp117, min_value
	.loc 1 170 0
	movq	-104(%rbp), %rax	# loop_info, tmp118
	movq	56(%rax), %rax	# loop_info_15(D)->initial_equiv_value, tmp119
	movq	%rax, -64(%rbp)	# tmp119, max_value
	jmp	.L16	#
.L15:
	.loc 1 174 0
	movq	-104(%rbp), %rax	# loop_info, tmp120
	movl	88(%rax), %eax	# loop_info_15(D)->comparison_code, tmp121
	movl	%eax, -88(%rbp)	# tmp121, code
	.loc 1 175 0
	movq	-104(%rbp), %rax	# loop_info, tmp122
	movq	56(%rax), %rax	# loop_info_15(D)->initial_equiv_value, tmp123
	movq	%rax, -72(%rbp)	# tmp123, min_value
	.loc 1 176 0
	movq	-104(%rbp), %rax	# loop_info, tmp124
	movq	64(%rax), %rax	# loop_info_15(D)->final_equiv_value, tmp125
	movq	%rax, -64(%rbp)	# tmp125, max_value
.L16:
	.loc 1 184 0
	movl	-88(%rbp), %eax	# code, tmp127
	subl	$102, %eax	#, tmp126
	cmpl	$9, %eax	#, tmp126
	ja	.L17	#,
	movl	%eax, %eax	# tmp126, tmp128
	movq	.L19(,%rax,8), %rax	#, tmp129
	jmp	*%rax	# tmp129
	.section	.rodata
	.align 8
	.align 4
.L19:
	.quad	.L18
	.quad	.L17
	.quad	.L17
	.quad	.L17
	.quad	.L20
	.quad	.L20
	.quad	.L17
	.quad	.L17
	.quad	.L21
	.quad	.L21
	.text
.L21:
.LBB2:
	.loc 1 192 0
	movq	-72(%rbp), %rax	# min_value, tmp130
	movzwl	(%rax), %eax	# min_value_5->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L22	#,
	.loc 1 193 0
	movq	-72(%rbp), %rax	# min_value, tmp131
	movq	8(%rax), %rax	# min_value_5->fld[0].rtwint, D.11298
	movq	%rax, -40(%rbp)	# D.11298, umin
	jmp	.L23	#
.L22:
	.loc 1 195 0
	movq	$0, -40(%rbp)	#, umin
.L23:
	.loc 1 197 0
	movq	-64(%rbp), %rax	# max_value, tmp132
	movzwl	(%rax), %eax	# max_value_6->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L24	#,
	.loc 1 198 0
	movq	-64(%rbp), %rax	# max_value, tmp133
	movq	8(%rax), %rax	# max_value_6->fld[0].rtwint, D.11298
	movq	%rax, -48(%rbp)	# D.11298, umax
	jmp	.L25	#
.L24:
	.loc 1 200 0
	movl	-108(%rbp), %eax	# mode, mode.0
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$2, %edx	#, tmp135
	movl	%eax, %ecx	# D.11299, tmp169
	sall	%cl, %edx	# tmp169, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	subl	$1, %eax	#, D.11300
	movl	%eax, %eax	# D.11300, tmp170
	movq	%rax, -48(%rbp)	# tmp170, umax
.L25:
	.loc 1 202 0
	movq	-40(%rbp), %rax	# umin, tmp140
	movq	-48(%rbp), %rdx	# umax, tmp141
	subq	%rax, %rdx	# tmp140, tmp139
	movq	%rdx, %rax	# tmp139, tmp139
	movq	%rax, -80(%rbp)	# tmp139, n_iterations_max
	.loc 1 203 0
	jmp	.L26	#
.L20:
.LBE2:
.LBB3:
	.loc 1 212 0
	movq	-72(%rbp), %rax	# min_value, tmp142
	movzwl	(%rax), %eax	# min_value_5->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L27	#,
	.loc 1 213 0
	movq	-72(%rbp), %rax	# min_value, tmp143
	movq	8(%rax), %rax	# min_value_5->fld[0].rtwint, tmp144
	movq	%rax, -24(%rbp)	# tmp144, smin
	jmp	.L28	#
.L27:
	.loc 1 215 0
	movl	-108(%rbp), %eax	# mode, mode.1
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$1, %edx	#, tmp146
	movl	%eax, %ecx	# D.11299, tmp173
	sall	%cl, %edx	# tmp173, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	negl	%eax	# D.11300
	movl	%eax, %eax	# D.11300, tmp174
	movq	%rax, -24(%rbp)	# tmp174, smin
.L28:
	.loc 1 217 0
	movq	-64(%rbp), %rax	# max_value, tmp147
	movzwl	(%rax), %eax	# max_value_6->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L29	#,
	.loc 1 218 0
	movq	-64(%rbp), %rax	# max_value, tmp148
	movq	8(%rax), %rax	# max_value_6->fld[0].rtwint, tmp149
	movq	%rax, -32(%rbp)	# tmp149, smax
	jmp	.L30	#
.L29:
	.loc 1 220 0
	movl	-108(%rbp), %eax	# mode, mode.2
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$1, %edx	#, tmp151
	movl	%eax, %ecx	# D.11299, tmp176
	sall	%cl, %edx	# tmp176, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	subl	$1, %eax	#, D.11300
	movl	%eax, %eax	# D.11300, tmp177
	movq	%rax, -32(%rbp)	# tmp177, smax
.L30:
	.loc 1 222 0
	movq	-24(%rbp), %rax	# smin, tmp152
	movq	-32(%rbp), %rdx	# smax, tmp153
	subq	%rax, %rdx	# tmp152, D.11298
	movq	%rdx, %rax	# D.11298, D.11298
	movq	%rax, -80(%rbp)	# D.11298, n_iterations_max
	.loc 1 223 0
	jmp	.L26	#
.L18:
.LBE3:
	.loc 1 227 0
	movq	-72(%rbp), %rax	# min_value, tmp154
	movzwl	(%rax), %eax	# min_value_5->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L31	#,
	.loc 1 228 0
	movq	-64(%rbp), %rax	# max_value, tmp155
	movzwl	(%rax), %eax	# max_value_6->code, D.11297
	cmpw	$54, %ax	#, D.11297
	jne	.L31	#,
	.loc 1 229 0
	movq	-64(%rbp), %rax	# max_value, tmp156
	movq	8(%rax), %rdx	# max_value_6->fld[0].rtwint, D.11298
	movq	-72(%rbp), %rax	# min_value, tmp157
	movq	8(%rax), %rax	# min_value_5->fld[0].rtwint, D.11298
	subq	%rax, %rdx	# D.11298, D.11298
	movq	%rdx, %rax	# D.11298, D.11298
	movq	%rax, -80(%rbp)	# D.11298, n_iterations_max
	.loc 1 234 0
	jmp	.L26	#
.L31:
	.loc 1 233 0
	movl	-108(%rbp), %eax	# mode, mode.3
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$2, %edx	#, tmp159
	movl	%eax, %ecx	# D.11299, tmp181
	sall	%cl, %edx	# tmp181, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	subl	$1, %eax	#, D.11300
	movl	%eax, %eax	# D.11300, tmp182
	movq	%rax, -80(%rbp)	# tmp182, n_iterations_max
	.loc 1 234 0
	jmp	.L26	#
.L17:
	.loc 1 237 0
	movl	$0, %eax	#, D.11294
	jmp	.L33	#
.L26:
	.loc 1 240 0
	movq	-56(%rbp), %rbx	# abs_inc, abs_inc.4
	movq	-80(%rbp), %rax	# n_iterations_max, tmp162
	movl	$0, %edx	#, tmp161
	divq	%rbx	# abs_inc.4
	movq	%rax, -80(%rbp)	# tmp160, n_iterations_max
	.loc 1 244 0
	cmpl	$0, -112(%rbp)	#, nonneg
	je	.L34	#,
	.loc 1 245 0
	movl	-108(%rbp), %eax	# mode, mode.5
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$1, %edx	#, tmp164
	movl	%eax, %ecx	# D.11299, tmp185
	sall	%cl, %edx	# tmp185, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	movl	%eax, %eax	# D.11300, D.11294
	cmpq	-80(%rbp), %rax	# n_iterations_max, D.11294
	jae	.L34	#,
	.loc 1 246 0
	movl	-108(%rbp), %eax	# mode, mode.6
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11297
	movzwl	%ax, %eax	# D.11297, D.11299
	subl	$1, %eax	#, D.11299
	movl	$1, %edx	#, tmp166
	movl	%eax, %ecx	# D.11299, tmp187
	sall	%cl, %edx	# tmp187, D.11300
	movl	%edx, %eax	# D.11300, D.11300
	subl	$1, %eax	#, D.11300
	movl	%eax, %eax	# D.11300, tmp188
	movq	%rax, -80(%rbp)	# tmp188, n_iterations_max
.L34:
	.loc 1 248 0
	movq	-80(%rbp), %rax	# n_iterations_max, D.11294
.L33:
	.loc 1 249 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	doloop_iterations_max, .-doloop_iterations_max
	.section	.rodata
	.align 8
.LC0:
	.string	"Doloop: Invalid jump at loop end.\n"
	.align 8
.LC1:
	.string	"Doloop: Loop completely unrolled.\n"
	.align 8
.LC2:
	.string	"Doloop: Loop has multiple exit targets.\n"
	.align 8
.LC3:
	.string	"Doloop: Indirect jump in function.\n"
	.align 8
.LC4:
	.string	"Doloop: Function call in loop.\n"
	.align 8
.LC5:
	.string	"Doloop: Computed branch in the loop.\n"
	.align 8
.LC6:
	.string	"Doloop: Could not determine iteration info.\n"
	.align 8
.LC7:
	.string	"Doloop: Increment not an integer constant.\n"
	.align 8
.LC8:
	.string	"Doloop: NE loop with non-unity increment.\n"
	.align 8
.LC9:
	.string	"Doloop: Possible infinite iteration case ignored.\n"
	.text
	.type	doloop_valid_p, @function
doloop_valid_p:
.LFB4:
	.loc 1 258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# loop, loop
	movq	%rsi, -32(%rbp)	# jump_insn, jump_insn
	.loc 1 259 0
	movq	-24(%rbp), %rax	# loop, tmp112
	movq	160(%rax), %rax	# loop_2(D)->aux, tmp113
	movq	%rax, -8(%rbp)	# tmp113, loop_info
	.loc 1 262 0
	movq	-32(%rbp), %rax	# jump_insn, tmp114
	movq	%rax, %rdi	# tmp114,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.11302
	je	.L36	#,
	.loc 1 263 0
	movq	-32(%rbp), %rax	# jump_insn, tmp115
	movq	%rax, %rdi	# tmp115,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.11302
	jne	.L37	#,
.L36:
	.loc 1 265 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.7
	testq	%rax, %rax	# loop_dump_stream.7
	je	.L38	#,
	.loc 1 266 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.8
	movq	%rax, %rcx	# loop_dump_stream.8,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
.L38:
	.loc 1 268 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L37:
	.loc 1 272 0
	movq	-8(%rbp), %rax	# loop_info, tmp116
	movq	96(%rax), %rdx	# loop_info_3->n_iterations, D.11303
	movq	-8(%rbp), %rax	# loop_info, tmp117
	movl	104(%rax), %eax	# loop_info_3->unroll_number, D.11304
	movl	%eax, %eax	# D.11304, D.11303
	cmpq	%rax, %rdx	# D.11303, D.11303
	jne	.L40	#,
	.loc 1 274 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.9
	testq	%rax, %rax	# loop_dump_stream.9
	je	.L41	#,
	.loc 1 275 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.10
	movq	%rax, %rcx	# loop_dump_stream.10,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
.L41:
	.loc 1 277 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L40:
	.loc 1 284 0
	movq	-8(%rbp), %rax	# loop_info, tmp118
	movl	20(%rax), %eax	# loop_info_3->has_multiple_exit_targets, D.11302
	testl	%eax, %eax	# D.11302
	jne	.L42	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# loop, tmp119
	movl	240(%rax), %eax	# loop_2(D)->exit_count, D.11302
	testl	%eax, %eax	# D.11302
	je	.L43	#,
.L42:
	.loc 1 286 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.11
	testq	%rax, %rax	# loop_dump_stream.11
	je	.L44	#,
	.loc 1 287 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.12
	movq	%rax, %rcx	# loop_dump_stream.12,
	movl	$40, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
.L44:
	.loc 1 289 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L43:
	.loc 1 293 0
	movq	-8(%rbp), %rax	# loop_info, tmp120
	movl	24(%rax), %eax	# loop_info_3->has_indirect_jump, D.11302
	testl	%eax, %eax	# D.11302
	je	.L45	#,
	.loc 1 295 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.13
	testq	%rax, %rax	# loop_dump_stream.13
	je	.L46	#,
	.loc 1 296 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.14
	movq	%rax, %rcx	# loop_dump_stream.14,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
.L46:
	.loc 1 298 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L45:
	.loc 1 303 0
	movq	-8(%rbp), %rax	# loop_info, tmp121
	movl	(%rax), %eax	# loop_info_3->has_call, D.11302
	testl	%eax, %eax	# D.11302
	je	.L47	#,
	.loc 1 305 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.15
	testq	%rax, %rax	# loop_dump_stream.15
	je	.L48	#,
	.loc 1 306 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.16
	movq	%rax, %rcx	# loop_dump_stream.16,
	movl	$31, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
.L48:
	.loc 1 308 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L47:
	.loc 1 313 0
	movq	-8(%rbp), %rax	# loop_info, tmp122
	movl	16(%rax), %eax	# loop_info_3->has_tablejump, D.11302
	testl	%eax, %eax	# D.11302
	je	.L49	#,
	.loc 1 315 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.17
	testq	%rax, %rax	# loop_dump_stream.17
	je	.L50	#,
	.loc 1 316 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.18
	movq	%rax, %rcx	# loop_dump_stream.18,
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
.L50:
	.loc 1 318 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L49:
	.loc 1 321 0
	movq	-8(%rbp), %rax	# loop_info, tmp123
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	testq	%rax, %rax	# D.11305
	jne	.L51	#,
	.loc 1 323 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.19
	testq	%rax, %rax	# loop_dump_stream.19
	je	.L52	#,
	.loc 1 324 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.20
	movq	%rax, %rcx	# loop_dump_stream.20,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
.L52:
	.loc 1 326 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L51:
	.loc 1 329 0
	movq	-8(%rbp), %rax	# loop_info, tmp124
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movzwl	(%rax), %eax	# _31->code, D.11306
	cmpw	$54, %ax	#, D.11306
	je	.L53	#,
	.loc 1 331 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.21
	testq	%rax, %rax	# loop_dump_stream.21
	je	.L54	#,
	.loc 1 332 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.22
	movq	%rax, %rcx	# loop_dump_stream.22,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
.L54:
	.loc 1 334 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L53:
	.loc 1 341 0
	movq	-8(%rbp), %rax	# loop_info, tmp125
	movl	88(%rax), %eax	# loop_info_3->comparison_code, D.11307
	cmpl	$102, %eax	#, D.11307
	jne	.L55	#,
	.loc 1 342 0
	movq	-8(%rbp), %rax	# loop_info, tmp126
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _37->fld[0].rtwint, D.11308
	cmpq	$-1, %rax	#, D.11308
	je	.L55	#,
	.loc 1 343 0
	movq	-8(%rbp), %rax	# loop_info, tmp127
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _39->fld[0].rtwint, D.11308
	cmpq	$1, %rax	#, D.11308
	je	.L55	#,
	.loc 1 345 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.23
	testq	%rax, %rax	# loop_dump_stream.23
	je	.L56	#,
	.loc 1 346 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.24
	movq	%rax, %rcx	# loop_dump_stream.24,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
.L56:
	.loc 1 348 0
	movl	$0, %eax	#, D.11302
	jmp	.L39	#
.L55:
	.loc 1 352 0
	movq	-8(%rbp), %rax	# loop_info, tmp128
	movq	96(%rax), %rax	# loop_info_3->n_iterations, D.11303
	testq	%rax, %rax	# D.11303
	jne	.L57	#,
	.loc 1 353 0
	movq	-8(%rbp), %rax	# loop_info, tmp129
	movl	88(%rax), %eax	# loop_info_3->comparison_code, D.11307
	cmpl	$110, %eax	#, D.11307
	jne	.L58	#,
	.loc 1 354 0
	movq	-8(%rbp), %rax	# loop_info, tmp130
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _46->fld[0].rtwint, D.11308
	testq	%rax, %rax	# D.11308
	jg	.L59	#,
.L58:
	.loc 1 355 0
	movq	-8(%rbp), %rax	# loop_info, tmp131
	movl	88(%rax), %eax	# loop_info_3->comparison_code, D.11307
	cmpl	$108, %eax	#, D.11307
	jne	.L60	#,
	.loc 1 356 0
	movq	-8(%rbp), %rax	# loop_info, tmp132
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _49->fld[0].rtwint, D.11308
	testq	%rax, %rax	# D.11308
	js	.L59	#,
.L60:
	.loc 1 357 0
	movq	-8(%rbp), %rax	# loop_info, tmp133
	movl	88(%rax), %eax	# loop_info_3->comparison_code, D.11307
	cmpl	$111, %eax	#, D.11307
	jne	.L61	#,
	.loc 1 358 0
	movq	-8(%rbp), %rax	# loop_info, tmp134
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _52->fld[0].rtwint, D.11308
	cmpq	$1, %rax	#, D.11308
	jg	.L59	#,
.L61:
	.loc 1 359 0
	movq	-8(%rbp), %rax	# loop_info, tmp135
	movl	88(%rax), %eax	# loop_info_3->comparison_code, D.11307
	cmpl	$109, %eax	#, D.11307
	jne	.L57	#,
	.loc 1 360 0
	movq	-8(%rbp), %rax	# loop_info, tmp136
	movq	80(%rax), %rax	# loop_info_3->increment, D.11305
	movq	8(%rax), %rax	# _55->fld[0].rtwint, D.11308
	cmpq	$-1, %rax	#, D.11308
	jge	.L57	#,
.L59:
	.loc 1 388 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.25
	testq	%rax, %rax	# loop_dump_stream.25
	je	.L57	#,
	.loc 1 389 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.26
	movq	%rax, %rcx	# loop_dump_stream.26,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
.L57:
	.loc 1 393 0
	movl	$1, %eax	#, D.11302
.L39:
	.loc 1 394 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	doloop_valid_p, .-doloop_valid_p
	.section	.rodata
	.align 8
.LC10:
	.string	"Doloop: Inserting doloop pattern ("
.LC11:
	.string	"%ld"
.LC12:
	.string	"runtime"
.LC13:
	.string	" iterations)."
.LC14:
	.string	"doloop.c"
	.text
	.type	doloop_modify, @function
doloop_modify:
.LFB5:
	.loc 1 412 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# iterations, iterations
	movq	%rdx, -72(%rbp)	# iterations_max, iterations_max
	movq	%rcx, -80(%rbp)	# doloop_seq, doloop_seq
	movq	%r8, -88(%rbp)	# start_label, start_label
	movq	%r9, -96(%rbp)	# condition, condition
	.loc 1 417 0
	movl	$0, -40(%rbp)	#, nonneg
	.loc 1 420 0
	movq	-56(%rbp), %rax	# loop, tmp102
	movq	200(%rax), %rax	# loop_9(D)->end, D.11319
	movq	%rax, %rdi	# D.11319,
	call	prev_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp103, jump_insn
	.loc 1 422 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.27
	testq	%rax, %rax	# loop_dump_stream.27
	je	.L63	#,
	.loc 1 424 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.28
	movq	%rax, %rcx	# loop_dump_stream.28,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 425 0
	movq	-64(%rbp), %rax	# iterations, tmp104
	movzwl	(%rax), %eax	# iterations_14(D)->code, D.11320
	cmpw	$54, %ax	#, D.11320
	jne	.L64	#,
	.loc 1 426 0
	movq	-64(%rbp), %rax	# iterations, tmp105
	movq	8(%rax), %rdx	# iterations_14(D)->fld[0].rtwint, D.11321
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.29
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.29,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L65	#
.L64:
	.loc 1 429 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.30
	movq	%rax, %rcx	# loop_dump_stream.30,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
.L65:
	.loc 1 430 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.31
	movq	%rax, %rcx	# loop_dump_stream.31,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
.L63:
	.loc 1 436 0
	movq	-56(%rbp), %rax	# loop, tmp106
	movq	208(%rax), %rax	# loop_9(D)->top, D.11319
	testq	%rax, %rax	# D.11319
	je	.L66	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# loop, tmp107
	movq	208(%rax), %rax	# loop_9(D)->top, iftmp.32
	jmp	.L67	#
.L66:
	.loc 1 436 0 discriminator 2
	movq	-56(%rbp), %rax	# loop, tmp108
	movq	192(%rax), %rax	# loop_9(D)->start, iftmp.32
.L67:
	.loc 1 436 0 discriminator 3
	movq	-88(%rbp), %rdx	# start_label, tmp109
	movq	%rax, %rsi	# iftmp.32,
	movq	%rdx, %rdi	# tmp109,
	call	emit_label_after	#
	.loc 1 437 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# start_label, tmp110
	movl	32(%rax), %eax	# start_label_23(D)->fld[3].rtint, D.11322
	leal	1(%rax), %edx	#, D.11322
	movq	-88(%rbp), %rax	# start_label, tmp111
	movl	%edx, 32(%rax)	# D.11322, start_label_23(D)->fld[3].rtint
	.loc 1 441 0 discriminator 3
	movq	-16(%rbp), %rax	# jump_insn, tmp112
	movq	%rax, %rdi	# tmp112,
	call	delete_related_insns	#
	.loc 1 443 0 discriminator 3
	movq	-96(%rbp), %rax	# condition, tmp113
	movq	8(%rax), %rax	# condition_26(D)->fld[0].rtx, tmp114
	movq	%rax, -32(%rbp)	# tmp114, counter_reg
	.loc 1 444 0 discriminator 3
	movq	-32(%rbp), %rax	# counter_reg, tmp115
	movzwl	(%rax), %eax	# counter_reg_27->code, D.11320
	cmpw	$75, %ax	#, D.11320
	jne	.L68	#,
	.loc 1 445 0
	movq	-32(%rbp), %rax	# counter_reg, tmp116
	movq	8(%rax), %rax	# counter_reg_27->fld[0].rtx, tmp117
	movq	%rax, -32(%rbp)	# tmp117, counter_reg
.L68:
	.loc 1 447 0
	call	start_sequence	#
	.loc 1 449 0
	movq	-64(%rbp), %rax	# iterations, tmp118
	movq	%rax, -24(%rbp)	# tmp118, count
	.loc 1 450 0
	movl	$0, -36(%rbp)	#, decrement_count
	.loc 1 451 0
	movq	-96(%rbp), %rax	# condition, tmp119
	movzwl	(%rax), %eax	# condition_26(D)->code, D.11320
	movzwl	%ax, %eax	# D.11320, D.11323
	cmpl	$102, %eax	#, D.11323
	je	.L70	#,
	cmpl	$104, %eax	#, D.11323
	je	.L71	#,
	jmp	.L81	#
.L70:
	.loc 1 455 0
	movq	-96(%rbp), %rax	# condition, tmp120
	movq	16(%rax), %rdx	# condition_26(D)->fld[1].rtx, D.11319
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.11319
	cmpq	%rax, %rdx	# D.11319, D.11319
	jne	.L72	#,
	.loc 1 456 0
	movl	$1, -36(%rbp)	#, decrement_count
	jmp	.L73	#
.L72:
	.loc 1 457 0
	movq	-96(%rbp), %rax	# condition, tmp121
	movq	16(%rax), %rdx	# condition_26(D)->fld[1].rtx, D.11319
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.11319
	cmpq	%rax, %rdx	# D.11319, D.11319
	je	.L73	#,
	.loc 1 458 0
	movl	$__FUNCTION__.10675, %edx	#,
	movl	$458, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L73:
	.loc 1 459 0
	jmp	.L74	#
.L71:
	.loc 1 463 0
	movq	-96(%rbp), %rax	# condition, tmp122
	movq	16(%rax), %rdx	# condition_26(D)->fld[1].rtx, D.11319
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.11319
	cmpq	%rax, %rdx	# D.11319, D.11319
	je	.L75	#,
	.loc 1 464 0
	movl	$__FUNCTION__.10675, %edx	#,
	movl	$464, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L75:
	.loc 1 467 0
	movl	$1, -36(%rbp)	#, decrement_count
	.loc 1 471 0
	movq	-72(%rbp), %rax	# iterations_max, tmp123
	movq	8(%rax), %rax	# iterations_max_42(D)->fld[0].rtwint, D.11321
	movq	%rax, %rdx	# D.11321, D.11324
	.loc 1 472 0
	movq	-32(%rbp), %rax	# counter_reg, tmp124
	movzbl	2(%rax), %eax	# counter_reg_1->mode, D.11325
	movzbl	%al, %eax	# D.11325, D.11322
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.11320
	movzwl	%ax, %eax	# D.11320, D.11322
	subl	$1, %eax	#, D.11322
	movl	$1, %esi	#, tmp126
	movl	%eax, %ecx	# D.11322, tmp148
	sall	%cl, %esi	# tmp148, D.11323
	movl	%esi, %eax	# D.11323, D.11323
	movl	%eax, %eax	# D.11323, D.11324
	.loc 1 471 0
	cmpq	%rax, %rdx	# D.11324, D.11324
	ja	.L76	#,
	.loc 1 473 0
	movl	$1, -40(%rbp)	#, nonneg
	.loc 1 474 0
	jmp	.L74	#
.L76:
	jmp	.L74	#
.L81:
	.loc 1 478 0
	movl	$__FUNCTION__.10675, %edx	#,
	movl	$478, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L74:
	.loc 1 481 0
	cmpl	$0, -36(%rbp)	#, decrement_count
	je	.L77	#,
	.loc 1 483 0
	movq	-24(%rbp), %rax	# count, tmp127
	movzwl	(%rax), %eax	# count_30->code, D.11320
	cmpw	$54, %ax	#, D.11320
	jne	.L78	#,
	.loc 1 484 0
	movq	-24(%rbp), %rax	# count, tmp128
	movq	8(%rax), %rax	# count_30->fld[0].rtwint, D.11321
	subq	$1, %rax	#, D.11321
	movq	%rax, %rsi	# D.11321,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp129, count
	jmp	.L77	#
.L78:
	.loc 1 486 0
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.11319
	movq	-32(%rbp), %rax	# counter_reg, tmp130
	movzbl	2(%rax), %eax	# counter_reg_1->mode, D.11325
	movzbl	%al, %eax	# D.11325, D.11326
	movq	-24(%rbp), %rdx	# count, tmp131
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$76, %esi	#,
	movl	%eax, %edi	# D.11326,
	call	expand_simple_binop	#
	movq	%rax, -24(%rbp)	# tmp132, count
.L77:
	.loc 1 492 0
	movq	-24(%rbp), %rcx	# count, tmp133
	movq	-32(%rbp), %rax	# counter_reg, tmp134
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	convert_move	#
	.loc 1 493 0
	call	gen_sequence	#
	movq	%rax, -8(%rbp)	# tmp135, sequence
	.loc 1 494 0
	call	end_sequence	#
	.loc 1 495 0
	movq	-56(%rbp), %rax	# loop, tmp136
	movq	192(%rax), %rdx	# loop_9(D)->start, D.11319
	movq	-8(%rbp), %rax	# sequence, tmp137
	movq	%rdx, %rsi	# D.11319,
	movq	%rax, %rdi	# tmp137,
	call	emit_insn_before	#
	.loc 1 519 0
	movq	-56(%rbp), %rax	# loop, tmp138
	movq	200(%rax), %rdx	# loop_9(D)->end, D.11319
	movq	-80(%rbp), %rax	# doloop_seq, tmp139
	movq	%rdx, %rsi	# D.11319,
	movq	%rax, %rdi	# tmp139,
	call	emit_jump_insn_before	#
	.loc 1 520 0
	movq	-56(%rbp), %rax	# loop, tmp140
	movq	200(%rax), %rax	# loop_9(D)->end, D.11319
	movq	%rax, %rdi	# D.11319,
	call	prev_nonnote_insn	#
	movq	%rax, -16(%rbp)	# tmp141, jump_insn
	.loc 1 521 0
	movq	-16(%rbp), %rax	# jump_insn, tmp142
	movq	-88(%rbp), %rdx	# start_label, tmp143
	movq	%rdx, 64(%rax)	# tmp143, jump_insn_66->fld[7].rtx
	.loc 1 525 0
	cmpl	$0, -40(%rbp)	#, nonneg
	je	.L79	#,
	.loc 1 528 0
	movq	-16(%rbp), %rax	# jump_insn, tmp144
	movq	56(%rax), %rax	# jump_insn_66->fld[6].rtx, D.11319
	movq	%rax, %rcx	# D.11319,
	movl	$0, %edx	#,
	movl	$8, %esi	#,
	movl	$3, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-16(%rbp), %rdx	# jump_insn, tmp145
	movq	%rax, 56(%rdx)	# D.11319, jump_insn_66->fld[6].rtx
.L79:
	.loc 1 530 0
	movl	$1, %eax	#, D.11322
	.loc 1 531 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	doloop_modify, .-doloop_modify
	.section	.rodata
	.align 8
.LC15:
	.string	"Doloop: Basic induction var skips initial incr.\n"
.LC16:
	.string	"Doloop: Do-while loop.\n"
	.text
	.type	doloop_modify_runtime, @function
doloop_modify_runtime:
.LFB6:
	.loc 1 552 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$224, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)	# loop, loop
	movq	%rsi, -192(%rbp)	# iterations_max, iterations_max
	movq	%rdx, -200(%rbp)	# doloop_seq, doloop_seq
	movq	%rcx, -208(%rbp)	# start_label, start_label
	movl	%r8d, -212(%rbp)	# mode, mode
	movq	%r9, -224(%rbp)	# condition, condition
	.loc 1 553 0
	movq	-184(%rbp), %rax	# loop, tmp168
	movq	160(%rax), %rax	# loop_11(D)->aux, tmp169
	movq	%rax, -120(%rbp)	# tmp169, loop_info
	.loc 1 565 0
	movq	-120(%rbp), %rax	# loop_info, tmp170
	movq	80(%rax), %rax	# loop_info_12->increment, tmp171
	movq	%rax, -112(%rbp)	# tmp171, increment
	.loc 1 566 0
	movq	-120(%rbp), %rax	# loop_info, tmp172
	movq	32(%rax), %rax	# loop_info_12->initial_value, tmp173
	movq	%rax, -104(%rbp)	# tmp173, initial_value
	.loc 1 567 0
	movq	-120(%rbp), %rax	# loop_info, tmp174
	movq	48(%rax), %rax	# loop_info_12->final_value, tmp175
	movq	%rax, -96(%rbp)	# tmp175, final_value
	.loc 1 569 0
	movl	$0, -168(%rbp)	#, neg_inc
	.loc 1 570 0
	movq	-112(%rbp), %rax	# increment, tmp176
	movq	8(%rax), %rax	# increment_13->fld[0].rtwint, tmp177
	movq	%rax, -152(%rbp)	# tmp177, abs_inc
	.loc 1 571 0
	cmpq	$0, -152(%rbp)	#, abs_inc
	jns	.L83	#,
	.loc 1 573 0
	negq	-152(%rbp)	# abs_inc
	.loc 1 574 0
	movl	$1, -168(%rbp)	#, neg_inc
.L83:
	.loc 1 577 0
	movq	-120(%rbp), %rax	# loop_info, tmp178
	movl	88(%rax), %eax	# loop_info_12->comparison_code, tmp179
	movl	%eax, -164(%rbp)	# tmp179, comparison_code
	.loc 1 582 0
	cmpl	$111, -164(%rbp)	#, comparison_code
	je	.L84	#,
	.loc 1 579 0
	cmpl	$110, -164(%rbp)	#, comparison_code
	je	.L84	#,
	.loc 1 580 0
	cmpl	$109, -164(%rbp)	#, comparison_code
	je	.L84	#,
	.loc 1 581 0
	cmpl	$108, -164(%rbp)	#, comparison_code
	je	.L84	#,
	.loc 1 582 0
	cmpl	$102, -164(%rbp)	#, comparison_code
	jne	.L85	#,
.L84:
	.loc 1 582 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.33
	jmp	.L86	#
.L85:
	.loc 1 582 0 discriminator 2
	movl	$0, %eax	#, iftmp.33
.L86:
	.loc 1 578 0 is_stmt 1
	movl	%eax, -160(%rbp)	# iftmp.33, unsigned_p
	.loc 1 607 0
	call	start_sequence	#
	.loc 1 609 0
	cmpl	$0, -168(%rbp)	#, neg_inc
	je	.L87	#,
	.loc 1 609 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# final_value, iftmp.34
	jmp	.L88	#
.L87:
	.loc 1 609 0 discriminator 2
	movq	-104(%rbp), %rax	# initial_value, iftmp.34
.L88:
	.loc 1 609 0 discriminator 3
	movq	%rax, %rdi	# iftmp.34,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.11332
	cmpl	$0, -168(%rbp)	#, neg_inc
	je	.L89	#,
	.loc 1 609 0 discriminator 4
	movq	-104(%rbp), %rax	# initial_value, iftmp.35
	jmp	.L90	#
.L89:
	.loc 1 609 0 discriminator 5
	movq	-96(%rbp), %rax	# final_value, iftmp.35
.L90:
	.loc 1 609 0 discriminator 6
	movq	%rax, %rdi	# iftmp.35,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.11332
	movl	-160(%rbp), %ecx	# unsigned_p, tmp180
	movl	-212(%rbp), %eax	# mode, tmp181
	movl	$3, (%rsp)	#,
	movl	%ecx, %r9d	# tmp180,
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# D.11332,
	movl	$76, %esi	#,
	movl	%eax, %edi	# tmp181,
	call	expand_simple_binop	#
	movq	%rax, -144(%rbp)	# tmp182, diff
	.loc 1 637 0 is_stmt 1 discriminator 6
	movq	-184(%rbp), %rax	# loop, tmp183
	movq	216(%rax), %rax	# loop_11(D)->scan_start, D.11332
	testq	%rax, %rax	# D.11332
	je	.L91	#,
.LBB4:
	.loc 1 639 0
	movq	-120(%rbp), %rax	# loop_info, tmp184
	movq	72(%rax), %rax	# loop_info_12->iteration_var, tmp185
	movq	%rax, -88(%rbp)	# tmp185, iteration_var
	.loc 1 640 0
	movq	-184(%rbp), %rax	# loop, tmp186
	movq	160(%rax), %rax	# loop_11(D)->aux, D.11333
	addq	$208, %rax	#, tmp187
	movq	%rax, -80(%rbp)	# tmp187, ivs
	.loc 1 643 0
	movq	-80(%rbp), %rax	# ivs, tmp188
	movq	(%rax), %rdx	# ivs_35->regs, D.11334
	movq	-88(%rbp), %rax	# iteration_var, tmp189
	movl	8(%rax), %eax	# iteration_var_33->fld[0].rtuint, D.11335
	movl	%eax, %eax	# D.11335, D.11336
	salq	$4, %rax	#, D.11336
	addq	%rdx, %rax	# D.11334, D.11334
	movl	(%rax), %eax	# _40->type, D.11337
	cmpl	$1, %eax	#, D.11337
	jne	.L92	#,
	.loc 1 644 0
	movq	-80(%rbp), %rax	# ivs, tmp190
	movq	(%rax), %rdx	# ivs_35->regs, D.11334
	movq	-88(%rbp), %rax	# iteration_var, tmp191
	movl	8(%rax), %eax	# iteration_var_33->fld[0].rtuint, D.11335
	movl	%eax, %eax	# D.11335, D.11336
	salq	$4, %rax	#, D.11336
	addq	%rdx, %rax	# D.11334, D.11334
	movq	8(%rax), %rax	# _46->iv.class, tmp192
	movq	%rax, -128(%rbp)	# tmp192, bl
	jmp	.L93	#
.L92:
	.loc 1 645 0
	movq	-80(%rbp), %rax	# ivs, tmp193
	movq	(%rax), %rdx	# ivs_35->regs, D.11334
	movq	-88(%rbp), %rax	# iteration_var, tmp194
	movl	8(%rax), %eax	# iteration_var_33->fld[0].rtuint, D.11335
	movl	%eax, %eax	# D.11335, D.11336
	salq	$4, %rax	#, D.11336
	addq	%rdx, %rax	# D.11334, D.11334
	movl	(%rax), %eax	# _52->type, D.11337
	cmpl	$3, %eax	#, D.11337
	jne	.L94	#,
.LBB5:
	.loc 1 647 0
	movq	-80(%rbp), %rax	# ivs, tmp195
	movq	(%rax), %rdx	# ivs_35->regs, D.11334
	movq	-88(%rbp), %rax	# iteration_var, tmp196
	movl	8(%rax), %eax	# iteration_var_33->fld[0].rtuint, D.11335
	movl	%eax, %eax	# D.11335, D.11336
	salq	$4, %rax	#, D.11336
	addq	%rdx, %rax	# D.11334, D.11334
	movq	8(%rax), %rax	# _58->iv.info, tmp197
	movq	%rax, -72(%rbp)	# tmp197, v
	.loc 1 648 0
	movq	-80(%rbp), %rax	# ivs, tmp198
	movq	(%rax), %rdx	# ivs_35->regs, D.11334
	movq	-72(%rbp), %rax	# v, tmp199
	movq	16(%rax), %rax	# v_59->src_reg, D.11332
	movl	8(%rax), %eax	# _61->fld[0].rtuint, D.11335
	movl	%eax, %eax	# D.11335, D.11336
	salq	$4, %rax	#, D.11336
	addq	%rdx, %rax	# D.11334, D.11334
	movq	8(%rax), %rax	# _65->iv.class, tmp200
	movq	%rax, -128(%rbp)	# tmp200, bl
.LBE5:
	jmp	.L93	#
.L94:
	.loc 1 652 0
	movl	$__FUNCTION__.10702, %edx	#,
	movl	$652, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L93:
	.loc 1 654 0
	movq	-128(%rbp), %rax	# bl, tmp201
	movq	8(%rax), %rax	# bl_6->biv, D.11338
	movq	(%rax), %rax	# _67->insn, D.11332
	movl	8(%rax), %edx	# _68->fld[0].rtint, D.11339
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.36
	cmpl	%eax, %edx	# max_uid_for_loop.36, D.11339
	jge	.L91	#,
	.loc 1 655 0
	movq	-128(%rbp), %rax	# bl, tmp202
	movq	8(%rax), %rax	# bl_6->biv, D.11338
	movq	(%rax), %rax	# _71->insn, D.11332
	movl	8(%rax), %edx	# _72->fld[0].rtint, D.11339
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.38
	cmpl	%eax, %edx	# max_uid_for_loop.38, D.11339
	jge	.L95	#,
	.loc 1 655 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.39
	movq	-128(%rbp), %rax	# bl, tmp203
	movq	8(%rax), %rax	# bl_6->biv, D.11338
	movq	(%rax), %rax	# _76->insn, D.11332
	movl	8(%rax), %eax	# _77->fld[0].rtint, D.11339
	cltq
	salq	$2, %rax	#, D.11336
	addq	%rdx, %rax	# uid_luid.39, D.11340
	movl	(%rax), %edx	# *_81, iftmp.37
	movq	-184(%rbp), %rax	# loop, tmp204
	movq	216(%rax), %rax	# loop_11(D)->scan_start, D.11332
	movl	8(%rax), %ecx	# _83->fld[0].rtint, D.11339
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.41
	cmpl	%eax, %ecx	# max_uid_for_loop.41, D.11339
	jge	.L97	#,
	jmp	.L109	#
.L95:
	.loc 1 655 0 discriminator 2
	movl	$__FUNCTION__.10702, %edx	#,
	movl	$655, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L109:
	.loc 1 655 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.42
	movq	-184(%rbp), %rax	# loop, tmp205
	movq	216(%rax), %rax	# loop_11(D)->scan_start, D.11332
	movl	8(%rax), %eax	# _87->fld[0].rtint, D.11339
	cltq
	salq	$2, %rax	#, D.11336
	addq	%rcx, %rax	# uid_luid.42, D.11340
	movl	(%rax), %eax	# *_91, iftmp.40
	cmpl	%eax, %edx	# iftmp.40, iftmp.37
	jge	.L91	#,
	jmp	.L110	#
.L97:
	.loc 1 655 0 discriminator 2
	movl	$__FUNCTION__.10702, %edx	#,
	movl	$655, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L110:
	.loc 1 657 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.43
	testq	%rax, %rax	# loop_dump_stream.43
	je	.L99	#,
	.loc 1 658 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.44
	movq	%rax, %rcx	# loop_dump_stream.44,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
.L99:
	.loc 1 661 0
	movl	-160(%rbp), %edi	# unsigned_p, tmp206
	movq	-144(%rbp), %rsi	# diff, tmp207
	movq	-112(%rbp), %rcx	# increment, tmp208
	movq	-144(%rbp), %rdx	# diff, tmp209
	movl	-212(%rbp), %eax	# mode, tmp210
	movl	$3, (%rsp)	#,
	movl	%edi, %r9d	# tmp206,
	movq	%rsi, %r8	# tmp207,
	movl	$75, %esi	#,
	movl	%eax, %edi	# tmp210,
	call	expand_simple_binop	#
	movq	%rax, -144(%rbp)	# tmp211, diff
.L91:
.LBE4:
	.loc 1 666 0
	movq	-120(%rbp), %rax	# loop_info, tmp212
	movl	104(%rax), %eax	# loop_info_12->unroll_number, D.11335
	movl	%eax, %eax	# D.11335, D.11341
	imulq	-152(%rbp), %rax	# abs_inc, D.11341
	cmpq	$1, %rax	#, D.11341
	je	.L100	#,
.LBB6:
	.loc 1 673 0
	movq	-120(%rbp), %rax	# loop_info, tmp213
	movl	104(%rax), %eax	# loop_info_12->unroll_number, D.11335
	movl	%eax, %eax	# D.11335, D.11341
	imulq	-152(%rbp), %rax	# abs_inc, D.11341
	movq	%rax, %rdi	# D.11336,
	call	exact_log2_wide	#
	movl	%eax, -156(%rbp)	# tmp214, shift_count
	.loc 1 674 0
	cmpl	$0, -156(%rbp)	#, shift_count
	jns	.L101	#,
	.loc 1 675 0
	movl	$__FUNCTION__.10702, %edx	#,
	movl	$675, %esi	#,
	movl	$.LC14, %edi	#,
	call	fancy_abort	#
.L101:
	.loc 1 678 0
	movl	-156(%rbp), %eax	# shift_count, tmp215
	cltq
	movq	%rax, %rsi	# D.11341,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.11332
	movq	-144(%rbp), %rax	# diff, tmp216
	movzbl	2(%rax), %eax	# diff_3->mode, D.11342
	movzbl	%al, %eax	# D.11342, D.11343
	movq	-144(%rbp), %rdx	# diff, tmp217
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	$90, %esi	#,
	movl	%eax, %edi	# D.11343,
	call	expand_simple_binop	#
	movq	%rax, -136(%rbp)	# tmp218, iterations
	.loc 1 683 0
	cmpq	$1, -152(%rbp)	#, abs_inc
	je	.L102	#,
.LBB7:
	.loc 1 686 0
	movq	-120(%rbp), %rax	# loop_info, tmp219
	movl	104(%rax), %eax	# loop_info_12->unroll_number, D.11335
	movl	%eax, %eax	# D.11335, D.11341
	imulq	-152(%rbp), %rax	# abs_inc, D.11341
	subq	$1, %rax	#, D.11341
	movq	%rax, %rsi	# D.11341,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp220, count
	.loc 1 687 0
	movq	-136(%rbp), %rax	# iterations, tmp221
	movzbl	2(%rax), %eax	# iterations_108->mode, D.11342
	movzbl	%al, %eax	# D.11342, D.11343
	movq	-64(%rbp), %rcx	# count, tmp222
	movq	-144(%rbp), %rdx	# diff, tmp223
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	$83, %esi	#,
	movl	%eax, %edi	# D.11343,
	call	expand_simple_binop	#
	movq	%rax, -56(%rbp)	# tmp224, extra
	.loc 1 694 0
	call	gen_label_rtx	#
	movq	%rax, -48(%rbp)	# tmp225, label
	.loc 1 695 0
	movq	-120(%rbp), %rax	# loop_info, tmp226
	movl	104(%rax), %eax	# loop_info_12->unroll_number, D.11335
	subl	$1, %eax	#, D.11335
	movl	%eax, %eax	# D.11335, D.11341
	imulq	-152(%rbp), %rax	# abs_inc, D.11341
	movq	%rax, -40(%rbp)	# D.11341, limit
	.loc 1 698 0
	movq	-56(%rbp), %rax	# extra, tmp227
	movzbl	2(%rax), %eax	# extra_116->mode, D.11342
	.loc 1 696 0
	movzbl	%al, %r12d	# D.11342, D.11343
	cmpq	$0, -40(%rbp)	#, limit
	jne	.L103	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	movl	$103, %ebx	#, iftmp.45
	jmp	.L104	#
.L103:
	.loc 1 696 0 discriminator 2
	movl	$110, %ebx	#, iftmp.45
.L104:
	.loc 1 696 0 discriminator 3
	movq	-40(%rbp), %rax	# limit, limit.46
	movq	%rax, %rsi	# limit.46,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.11332
	movq	-56(%rbp), %rax	# extra, tmp228
	movq	-48(%rbp), %rdx	# label, tmp229
	movq	%rdx, (%rsp)	# tmp229,
	movl	$0, %r9d	#,
	movl	%r12d, %r8d	# D.11343,
	movl	$0, %ecx	#,
	movl	%ebx, %edx	# iftmp.45,
	movq	%rax, %rdi	# tmp228,
	call	emit_cmp_and_jump_insns	#
	.loc 1 699 0 is_stmt 1 discriminator 3
	call	get_last_insn	#
	movq	-48(%rbp), %rdx	# label, tmp230
	movq	%rdx, 64(%rax)	# tmp230, _129->fld[7].rtx
	.loc 1 700 0 discriminator 3
	movq	-48(%rbp), %rax	# label, tmp231
	movl	32(%rax), %eax	# label_117->fld[3].rtint, D.11339
	leal	1(%rax), %edx	#, D.11339
	movq	-48(%rbp), %rax	# label, tmp232
	movl	%edx, 32(%rax)	# D.11339, label_117->fld[3].rtint
	.loc 1 703 0 discriminator 3
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.11332
	movq	-136(%rbp), %rax	# iterations, tmp233
	movzbl	2(%rax), %eax	# iterations_108->mode, D.11342
	movzbl	%al, %eax	# D.11342, D.11343
	movq	-136(%rbp), %rsi	# iterations, tmp234
	movq	-136(%rbp), %rdx	# iterations, tmp235
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp234,
	movl	$75, %esi	#,
	movl	%eax, %edi	# D.11343,
	call	expand_simple_binop	#
	movq	%rax, -136(%rbp)	# tmp236, iterations
	.loc 1 708 0 discriminator 3
	movq	-48(%rbp), %rax	# label, tmp237
	movq	%rax, %rdi	# tmp237,
	call	emit_label	#
.LBE7:
.LBE6:
	jmp	.L105	#
.L102:
	jmp	.L105	#
.L100:
	.loc 1 712 0
	movq	-144(%rbp), %rax	# diff, tmp238
	movq	%rax, -136(%rbp)	# tmp238, iterations
.L105:
	.loc 1 723 0
	movq	-184(%rbp), %rax	# loop, tmp239
	movq	168(%rax), %rax	# loop_11(D)->vtop, D.11332
	testq	%rax, %rax	# D.11332
	jne	.L106	#,
.LBB8:
	.loc 1 727 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.47
	testq	%rax, %rax	# loop_dump_stream.47
	je	.L107	#,
	.loc 1 728 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.48
	movq	%rax, %rcx	# loop_dump_stream.48,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
.L107:
	.loc 1 734 0
	movq	-120(%rbp), %rax	# loop_info, tmp240
	movl	104(%rax), %eax	# loop_info_12->unroll_number, D.11335
	cmpl	$1, %eax	#, D.11335
	jne	.L106	#,
	.loc 1 738 0
	call	gen_label_rtx	#
	movq	%rax, -32(%rbp)	# tmp241, label
	.loc 1 739 0
	movq	-120(%rbp), %rax	# loop_info, tmp242
	movq	40(%rax), %rax	# loop_info_12->comparison_value, D.11332
	movq	%rax, %rdi	# D.11332,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.11332
	movq	-104(%rbp), %rax	# initial_value, tmp243
	movq	%rax, %rdi	# tmp243,
	call	copy_rtx	#
	movl	-212(%rbp), %esi	# mode, tmp244
	movl	-164(%rbp), %edx	# comparison_code, tmp245
	movq	-32(%rbp), %rcx	# label, tmp246
	movq	%rcx, (%rsp)	# tmp246,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp244,
	movl	$0, %ecx	#,
	movq	%rbx, %rsi	# D.11332,
	movq	%rax, %rdi	# D.11332,
	call	emit_cmp_and_jump_insns	#
	.loc 1 743 0
	call	get_last_insn	#
	movq	-32(%rbp), %rdx	# label, tmp247
	movq	%rdx, 64(%rax)	# tmp247, _145->fld[7].rtx
	.loc 1 744 0
	movq	-32(%rbp), %rax	# label, tmp248
	movl	32(%rax), %eax	# label_141->fld[3].rtint, D.11339
	leal	1(%rax), %edx	#, D.11339
	movq	-32(%rbp), %rax	# label, tmp249
	movl	%edx, 32(%rax)	# D.11339, label_141->fld[3].rtint
	.loc 1 745 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.11332
	movq	-136(%rbp), %rax	# iterations, tmp250
	movq	%rdx, %rsi	# D.11332,
	movq	%rax, %rdi	# tmp250,
	call	emit_move_insn	#
	.loc 1 746 0
	movq	-32(%rbp), %rax	# label, tmp251
	movq	%rax, %rdi	# tmp251,
	call	emit_label	#
.L106:
.LBE8:
	.loc 1 750 0
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp252, sequence
	.loc 1 751 0
	call	end_sequence	#
	.loc 1 752 0
	movq	-184(%rbp), %rax	# loop, tmp253
	movq	192(%rax), %rdx	# loop_11(D)->start, D.11332
	movq	-24(%rbp), %rax	# sequence, tmp254
	movq	%rdx, %rsi	# D.11332,
	movq	%rax, %rdi	# tmp254,
	call	emit_insn_before	#
	.loc 1 754 0
	movq	-224(%rbp), %r8	# condition, tmp255
	movq	-208(%rbp), %rdi	# start_label, tmp256
	movq	-200(%rbp), %rcx	# doloop_seq, tmp257
	movq	-192(%rbp), %rdx	# iterations_max, tmp258
	movq	-136(%rbp), %rsi	# iterations, tmp259
	movq	-184(%rbp), %rax	# loop, tmp260
	movq	%r8, %r9	# tmp255,
	movq	%rdi, %r8	# tmp256,
	movq	%rax, %rdi	# tmp260,
	call	doloop_modify	#
	.loc 1 756 0
	addq	$224, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	doloop_modify_runtime, .-doloop_modify_runtime
	.section	.rodata
	.align 8
.LC17:
	.string	"Doloop: Processing loop %d, enclosed levels %d.\n"
	.align 8
.LC18:
	.string	"Doloop: Cannot precondition loop.\n"
.LC19:
	.string	"Doloop: Not normal loop.\n"
	.align 8
.LC20:
	.string	"Doloop: Too few iterations (%ld) to be profitable.\n"
	.align 8
.LC21:
	.string	"Doloop: Target unwilling to use doloop pattern!\n"
	.align 8
.LC22:
	.string	"Doloop: Unrecognizable doloop pattern!\n"
	.text
	.globl	doloop_optimize
	.type	doloop_optimize, @function
doloop_optimize:
.LFB7:
	.loc 1 770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# loop, loop
	.loc 1 771 0
	movq	-152(%rbp), %rax	# loop, tmp106
	movq	160(%rax), %rax	# loop_6(D)->aux, tmp107
	movq	%rax, -80(%rbp)	# tmp107, loop_info
	.loc 1 785 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.49
	testq	%rax, %rax	# loop_dump_stream.49
	je	.L112	#,
	.loc 1 786 0
	movq	-152(%rbp), %rax	# loop, tmp108
	movl	124(%rax), %ecx	# loop_6(D)->level, D.11346
	movq	-152(%rbp), %rax	# loop, tmp109
	movl	(%rax), %edx	# loop_6(D)->num, D.11346
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.50
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.50,
	movl	$0, %eax	#,
	call	fprintf	#
.L112:
	.loc 1 790 0
	movq	-152(%rbp), %rax	# loop, tmp110
	movq	200(%rax), %rax	# loop_6(D)->end, D.11347
	movq	%rax, %rdi	# D.11347,
	call	prev_nonnote_insn	#
	movq	%rax, -72(%rbp)	# tmp111, jump_insn
	.loc 1 793 0
	movq	-72(%rbp), %rdx	# jump_insn, tmp112
	movq	-152(%rbp), %rax	# loop, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	doloop_valid_p	#
	testl	%eax, %eax	# D.11346
	jne	.L113	#,
	.loc 1 794 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L113:
	.loc 1 800 0
	leaq	-136(%rbp), %rdi	#, tmp114
	leaq	-112(%rbp), %rcx	#, tmp115
	leaq	-120(%rbp), %rdx	#, tmp116
	leaq	-128(%rbp), %rsi	#, tmp117
	movq	-152(%rbp), %rax	# loop, tmp118
	movq	%rdi, %r8	# tmp114,
	movq	%rax, %rdi	# tmp118,
	call	precondition_loop_p	#
	testl	%eax, %eax	# D.11346
	jne	.L115	#,
	.loc 1 803 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.51
	testq	%rax, %rax	# loop_dump_stream.51
	je	.L116	#,
	.loc 1 804 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.52
	movq	%rax, %rcx	# loop_dump_stream.52,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	fwrite	#
.L116:
	.loc 1 806 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L115:
	.loc 1 810 0
	movq	-80(%rbp), %rax	# loop_info, tmp119
	movq	96(%rax), %rax	# loop_info_7->n_iterations, tmp120
	movq	%rax, -64(%rbp)	# tmp120, n_iterations
	.loc 1 811 0
	cmpq	$0, -64(%rbp)	#, n_iterations
	je	.L117	#,
	.loc 1 815 0
	movq	-64(%rbp), %rax	# n_iterations, tmp121
	movq	%rax, -104(%rbp)	# tmp121, n_iterations_max
	jmp	.L118	#
.L117:
.LBB9:
	.loc 1 819 0
	movq	-72(%rbp), %rax	# jump_insn, tmp122
	movl	$0, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	find_reg_note	#
	testq	%rax, %rax	# D.11347
	setne	%al	#, D.11348
	movzbl	%al, %eax	# D.11348, tmp123
	movl	%eax, -132(%rbp)	# tmp123, nonneg
	.loc 1 823 0
	movl	-136(%rbp), %ecx	# mode, mode.53
	movl	-132(%rbp), %edx	# nonneg, tmp124
	movq	-80(%rbp), %rax	# loop_info, tmp125
	movl	%ecx, %esi	# mode.53,
	movq	%rax, %rdi	# tmp125,
	call	doloop_iterations_max	#
	movq	%rax, -104(%rbp)	# tmp126, n_iterations_max
	.loc 1 825 0
	cmpq	$0, -104(%rbp)	#, n_iterations_max
	jne	.L118	#,
	.loc 1 828 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.54
	testq	%rax, %rax	# loop_dump_stream.54
	je	.L119	#,
	.loc 1 829 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.55
	movq	%rax, %rcx	# loop_dump_stream.55,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
.L119:
	.loc 1 831 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L118:
.LBE9:
	.loc 1 838 0
	movq	-80(%rbp), %rax	# loop_info, tmp127
	movl	104(%rax), %eax	# loop_info_7->unroll_number, D.11349
	movl	%eax, %ebx	# D.11349, D.11350
	movq	-64(%rbp), %rax	# n_iterations, tmp130
	movl	$0, %edx	#, tmp129
	divq	%rbx	# D.11350
	movq	%rax, -64(%rbp)	# tmp128, n_iterations
	.loc 1 839 0
	movq	-80(%rbp), %rax	# loop_info, tmp131
	movl	104(%rax), %eax	# loop_info_7->unroll_number, D.11349
	movl	%eax, %ebx	# D.11349, D.11350
	movq	-104(%rbp), %rax	# n_iterations_max, tmp134
	movl	$0, %edx	#, tmp133
	divq	%rbx	# D.11350
	movq	%rax, -104(%rbp)	# tmp132, n_iterations_max
	.loc 1 841 0
	cmpq	$0, -64(%rbp)	#, n_iterations
	je	.L120	#,
	.loc 1 841 0 is_stmt 0 discriminator 1
	cmpq	$2, -64(%rbp)	#, n_iterations
	ja	.L120	#,
	.loc 1 843 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.56
	testq	%rax, %rax	# loop_dump_stream.56
	je	.L121	#,
	.loc 1 844 0
	movq	-64(%rbp), %rdx	# n_iterations, n_iterations.57
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.58
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.58,
	movl	$0, %eax	#,
	call	fprintf	#
.L121:
	.loc 1 847 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L120:
	.loc 1 850 0
	movq	-64(%rbp), %rax	# n_iterations, n_iterations.59
	movq	%rax, %rsi	# n_iterations.59,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -56(%rbp)	# tmp135, iterations
	.loc 1 851 0
	movq	-104(%rbp), %rax	# n_iterations_max, n_iterations_max.60
	movq	%rax, %rsi	# n_iterations_max.60,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -48(%rbp)	# tmp136, iterations_max
	.loc 1 856 0
	call	gen_label_rtx	#
	movq	%rax, -40(%rbp)	# tmp137, start_label
	.loc 1 857 0
	movl	-136(%rbp), %eax	# mode, mode.61
	movl	%eax, %edi	# mode.61,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp138, doloop_reg
	.loc 1 859 0
	movq	-152(%rbp), %rax	# loop, tmp139
	movl	124(%rax), %eax	# loop_6(D)->level, D.11346
	.loc 1 858 0
	cltq
	movq	%rax, %rsi	# D.11351,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.11347
	movq	-40(%rbp), %rdi	# start_label, tmp140
	movq	-48(%rbp), %rdx	# iterations_max, tmp141
	movq	-56(%rbp), %rsi	# iterations, tmp142
	movq	-32(%rbp), %rax	# doloop_reg, tmp143
	movq	%rdi, %r8	# tmp140,
	movq	%rax, %rdi	# tmp143,
	call	gen_doloop_end	#
	movq	%rax, -96(%rbp)	# tmp144, doloop_seq
	.loc 1 860 0
	cmpq	$0, -96(%rbp)	#, doloop_seq
	jne	.L122	#,
	.loc 1 860 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %edx	# mode, mode.62
	movl	word_mode(%rip), %eax	# word_mode, word_mode.63
	cmpl	%eax, %edx	# word_mode.63, mode.62
	je	.L122	#,
	.loc 1 862 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.64
	movl	%eax, %edx	# word_mode.64, D.11352
	movq	-32(%rbp), %rax	# doloop_reg, tmp145
	movb	%dl, 2(%rax)	# D.11352, doloop_reg_46->mode
	.loc 1 864 0
	movq	-152(%rbp), %rax	# loop, tmp146
	movl	124(%rax), %eax	# loop_6(D)->level, D.11346
	.loc 1 863 0
	cltq
	movq	%rax, %rsi	# D.11351,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.11347
	movq	-40(%rbp), %rdi	# start_label, tmp147
	movq	-48(%rbp), %rdx	# iterations_max, tmp148
	movq	-56(%rbp), %rsi	# iterations, tmp149
	movq	-32(%rbp), %rax	# doloop_reg, tmp150
	movq	%rdi, %r8	# tmp147,
	movq	%rax, %rdi	# tmp150,
	call	gen_doloop_end	#
	movq	%rax, -96(%rbp)	# tmp151, doloop_seq
.L122:
	.loc 1 866 0
	cmpq	$0, -96(%rbp)	#, doloop_seq
	jne	.L123	#,
	.loc 1 868 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.65
	testq	%rax, %rax	# loop_dump_stream.65
	je	.L124	#,
	.loc 1 869 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.66
	movq	%rax, %rcx	# loop_dump_stream.66,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
.L124:
	.loc 1 871 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L123:
	.loc 1 876 0
	movq	-96(%rbp), %rax	# doloop_seq, tmp152
	movzwl	(%rax), %eax	# doloop_seq_2->code, D.11353
	cmpw	$24, %ax	#, D.11353
	jne	.L125	#,
	.loc 1 878 0
	movq	-96(%rbp), %rax	# doloop_seq, tmp153
	movq	8(%rax), %rax	# doloop_seq_2->fld[0].rtvec, D.11354
	movq	-96(%rbp), %rdx	# doloop_seq, tmp154
	movq	8(%rdx), %rdx	# doloop_seq_2->fld[0].rtvec, D.11354
	movl	(%rdx), %edx	# _64->num_elem, D.11346
	subl	$1, %edx	#, D.11346
	movslq	%edx, %rdx	# D.11346, tmp155
	movq	8(%rax,%rdx,8), %rax	# _63->elem, tmp156
	movq	%rax, -88(%rbp)	# tmp156, doloop_pat
	.loc 1 879 0
	movq	-88(%rbp), %rax	# doloop_pat, tmp157
	movzwl	(%rax), %eax	# doloop_pat_67->code, D.11353
	cmpw	$33, %ax	#, D.11353
	jne	.L126	#,
	.loc 1 880 0
	movq	-88(%rbp), %rax	# doloop_pat, tmp158
	movq	32(%rax), %rax	# doloop_pat_67->fld[3].rtx, tmp159
	movq	%rax, -88(%rbp)	# tmp159, doloop_pat
	jmp	.L128	#
.L126:
	.loc 1 882 0
	movq	$0, -88(%rbp)	#, doloop_pat
	jmp	.L128	#
.L125:
	.loc 1 885 0
	movq	-96(%rbp), %rax	# doloop_seq, tmp160
	movq	%rax, -88(%rbp)	# tmp160, doloop_pat
.L128:
	.loc 1 887 0
	cmpq	$0, -88(%rbp)	#, doloop_pat
	je	.L129	#,
	.loc 1 888 0
	movq	-88(%rbp), %rax	# doloop_pat, tmp161
	movq	%rax, %rdi	# tmp161,
	call	doloop_condition_get	#
	movq	%rax, -24(%rbp)	# tmp162, condition
	cmpq	$0, -24(%rbp)	#, condition
	jne	.L130	#,
.L129:
	.loc 1 890 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.67
	testq	%rax, %rax	# loop_dump_stream.67
	je	.L131	#,
	.loc 1 891 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.68
	movq	%rax, %rcx	# loop_dump_stream.68,
	movl	$39, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
.L131:
	.loc 1 893 0
	movl	$0, %eax	#, D.11346
	jmp	.L133	#
.L130:
	.loc 1 896 0
	cmpq	$0, -64(%rbp)	#, n_iterations
	je	.L132	#,
	.loc 1 899 0
	movq	-24(%rbp), %r8	# condition, tmp163
	movq	-40(%rbp), %rdi	# start_label, tmp164
	movq	-96(%rbp), %rcx	# doloop_seq, tmp165
	movq	-48(%rbp), %rdx	# iterations_max, tmp166
	movq	-56(%rbp), %rsi	# iterations, tmp167
	movq	-152(%rbp), %rax	# loop, tmp168
	movq	%r8, %r9	# tmp163,
	movq	%rdi, %r8	# tmp164,
	movq	%rax, %rdi	# tmp168,
	call	doloop_modify	#
	jmp	.L133	#
.L132:
	.loc 1 903 0
	movl	-136(%rbp), %edi	# mode, mode.69
	movq	-24(%rbp), %r8	# condition, tmp169
	movq	-40(%rbp), %rcx	# start_label, tmp170
	movq	-96(%rbp), %rdx	# doloop_seq, tmp171
	movq	-48(%rbp), %rsi	# iterations_max, tmp172
	movq	-152(%rbp), %rax	# loop, tmp173
	movq	%r8, %r9	# tmp169,
	movl	%edi, %r8d	# mode.69,
	movq	%rax, %rdi	# tmp173,
	call	doloop_modify_runtime	#
.L133:
	.loc 1 905 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	doloop_optimize, .-doloop_optimize
	.section	.rodata
	.type	__FUNCTION__.10675, @object
	.size	__FUNCTION__.10675, 14
__FUNCTION__.10675:
	.string	"doloop_modify"
	.align 16
	.type	__FUNCTION__.10702, @object
	.size	__FUNCTION__.10702, 22
__FUNCTION__.10702:
	.string	"doloop_modify_runtime"
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
	.file 11 "expr.h"
	.file 12 "sbitmap.h"
	.file 13 "loop.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d8f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF538
	.byte	0x1
	.long	.LASF539
	.long	.LASF540
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
	.long	.LASF541
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
	.long	.LASF542
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
	.long	.LASF543
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
	.long	.LASF469
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
	.long	0xd93
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x9
	.byte	0x36
	.long	0xd93
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
	.long	0xe97
	.byte	0x20
	.uleb128 0x8
	.long	.LASF287
	.byte	0xa
	.byte	0xb7
	.long	0xe97
	.byte	0x28
	.uleb128 0x8
	.long	.LASF288
	.byte	0xa
	.byte	0xbc
	.long	0xe02
	.byte	0x30
	.uleb128 0x8
	.long	.LASF289
	.byte	0xa
	.byte	0xc0
	.long	0xe02
	.byte	0x38
	.uleb128 0x8
	.long	.LASF290
	.byte	0xa
	.byte	0xc6
	.long	0xe02
	.byte	0x40
	.uleb128 0x8
	.long	.LASF291
	.byte	0xa
	.byte	0xc8
	.long	0xe02
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
	.long	0xe0d
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
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xd09
	.uleb128 0x13
	.long	.LASF330
	.sleb128 0
	.uleb128 0x13
	.long	.LASF331
	.sleb128 1
	.uleb128 0x13
	.long	.LASF332
	.sleb128 2
	.uleb128 0x13
	.long	.LASF333
	.sleb128 3
	.uleb128 0x13
	.long	.LASF334
	.sleb128 4
	.uleb128 0x13
	.long	.LASF335
	.sleb128 5
	.uleb128 0x13
	.long	.LASF336
	.sleb128 6
	.uleb128 0x13
	.long	.LASF337
	.sleb128 7
	.uleb128 0x13
	.long	.LASF338
	.sleb128 8
	.uleb128 0x13
	.long	.LASF339
	.sleb128 9
	.uleb128 0x13
	.long	.LASF340
	.sleb128 10
	.uleb128 0x13
	.long	.LASF341
	.sleb128 11
	.byte	0
	.uleb128 0x1a
	.long	.LASF342
	.byte	0x4
	.byte	0xb
	.value	0x100
	.long	0xd35
	.uleb128 0x13
	.long	.LASF343
	.sleb128 0
	.uleb128 0x13
	.long	.LASF344
	.sleb128 1
	.uleb128 0x13
	.long	.LASF345
	.sleb128 2
	.uleb128 0x13
	.long	.LASF346
	.sleb128 3
	.uleb128 0x13
	.long	.LASF347
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF348
	.byte	0x28
	.byte	0x9
	.byte	0x2b
	.long	0xd72
	.uleb128 0x8
	.long	.LASF349
	.byte	0x9
	.byte	0x2d
	.long	0xd72
	.byte	0
	.uleb128 0x8
	.long	.LASF350
	.byte	0x9
	.byte	0x2e
	.long	0xd72
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x9
	.byte	0x2f
	.long	0x147
	.byte	0x10
	.uleb128 0x8
	.long	.LASF351
	.byte	0x9
	.byte	0x30
	.long	0xd78
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xd35
	.uleb128 0xf
	.long	0x162
	.long	0xd88
	.uleb128 0x10
	.long	0x140
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF352
	.byte	0x9
	.byte	0x31
	.long	0xd35
	.uleb128 0x3
	.byte	0x8
	.long	0xd88
	.uleb128 0x7
	.long	.LASF353
	.byte	0x9
	.byte	0x39
	.long	0xae1
	.uleb128 0x4
	.long	.LASF354
	.byte	0x18
	.byte	0xc
	.byte	0x1f
	.long	0xde1
	.uleb128 0x8
	.long	.LASF355
	.byte	0xc
	.byte	0x21
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF265
	.byte	0xc
	.byte	0x22
	.long	0x147
	.byte	0x4
	.uleb128 0x8
	.long	.LASF356
	.byte	0xc
	.byte	0x23
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF357
	.byte	0xc
	.byte	0x24
	.long	0xde1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	0x162
	.long	0xdf1
	.uleb128 0x10
	.long	0x140
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF358
	.byte	0xc
	.byte	0x25
	.long	0xdfc
	.uleb128 0x3
	.byte	0x8
	.long	0xda4
	.uleb128 0x7
	.long	.LASF359
	.byte	0xa
	.byte	0x21
	.long	0xd99
	.uleb128 0x7
	.long	.LASF360
	.byte	0xa
	.byte	0x74
	.long	0x150
	.uleb128 0x4
	.long	.LASF361
	.byte	0x40
	.byte	0xa
	.byte	0x77
	.long	0xe91
	.uleb128 0x8
	.long	.LASF362
	.byte	0xa
	.byte	0x79
	.long	0xe91
	.byte	0
	.uleb128 0x8
	.long	.LASF363
	.byte	0xa
	.byte	0x79
	.long	0xe91
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xa
	.byte	0x7c
	.long	0xbb4
	.byte	0x10
	.uleb128 0x8
	.long	.LASF364
	.byte	0xa
	.byte	0x7c
	.long	0xbb4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF365
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
	.long	.LASF366
	.byte	0xa
	.byte	0x85
	.long	0x139
	.byte	0x34
	.uleb128 0x8
	.long	.LASF294
	.byte	0xa
	.byte	0x86
	.long	0xe0d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe18
	.uleb128 0x7
	.long	.LASF367
	.byte	0xa
	.byte	0x88
	.long	0xe91
	.uleb128 0x7
	.long	.LASF368
	.byte	0xa
	.byte	0xdb
	.long	0xbb4
	.uleb128 0x1b
	.long	.LASF369
	.byte	0xf8
	.byte	0xa
	.value	0x148
	.long	0x1068
	.uleb128 0x1c
	.string	"num"
	.byte	0xa
	.value	0x14b
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF370
	.byte	0xa
	.value	0x14e
	.long	0xea2
	.byte	0x8
	.uleb128 0xd
	.long	.LASF371
	.byte	0xa
	.value	0x151
	.long	0xea2
	.byte	0x10
	.uleb128 0xd
	.long	.LASF372
	.byte	0xa
	.value	0x154
	.long	0xea2
	.byte	0x18
	.uleb128 0xd
	.long	.LASF373
	.byte	0xa
	.value	0x159
	.long	0x1068
	.byte	0x20
	.uleb128 0xd
	.long	.LASF374
	.byte	0xa
	.value	0x15c
	.long	0x139
	.byte	0x28
	.uleb128 0xd
	.long	.LASF279
	.byte	0xa
	.value	0x160
	.long	0xea2
	.byte	0x30
	.uleb128 0xd
	.long	.LASF375
	.byte	0xa
	.value	0x164
	.long	0xea2
	.byte	0x38
	.uleb128 0xd
	.long	.LASF376
	.byte	0xa
	.value	0x167
	.long	0xdf1
	.byte	0x40
	.uleb128 0xd
	.long	.LASF377
	.byte	0xa
	.value	0x16a
	.long	0x139
	.byte	0x48
	.uleb128 0xd
	.long	.LASF378
	.byte	0xa
	.value	0x16d
	.long	0x1068
	.byte	0x50
	.uleb128 0xd
	.long	.LASF379
	.byte	0xa
	.value	0x170
	.long	0x139
	.byte	0x58
	.uleb128 0xd
	.long	.LASF380
	.byte	0xa
	.value	0x173
	.long	0x1068
	.byte	0x60
	.uleb128 0xd
	.long	.LASF381
	.byte	0xa
	.value	0x176
	.long	0x139
	.byte	0x68
	.uleb128 0xd
	.long	.LASF382
	.byte	0xa
	.value	0x179
	.long	0xdf1
	.byte	0x70
	.uleb128 0xd
	.long	.LASF383
	.byte	0xa
	.value	0x17c
	.long	0x139
	.byte	0x78
	.uleb128 0xd
	.long	.LASF384
	.byte	0xa
	.value	0x180
	.long	0x139
	.byte	0x7c
	.uleb128 0xd
	.long	.LASF385
	.byte	0xa
	.value	0x183
	.long	0x106e
	.byte	0x80
	.uleb128 0xd
	.long	.LASF386
	.byte	0xa
	.value	0x186
	.long	0x106e
	.byte	0x88
	.uleb128 0xd
	.long	.LASF349
	.byte	0xa
	.value	0x189
	.long	0x106e
	.byte	0x90
	.uleb128 0xd
	.long	.LASF387
	.byte	0xa
	.value	0x18c
	.long	0x139
	.byte	0x98
	.uleb128 0xd
	.long	.LASF388
	.byte	0xa
	.value	0x18f
	.long	0x139
	.byte	0x9c
	.uleb128 0x1c
	.string	"aux"
	.byte	0xa
	.value	0x192
	.long	0x14e
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF389
	.byte	0xa
	.value	0x198
	.long	0x2d
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF390
	.byte	0xa
	.value	0x19c
	.long	0x2d
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF391
	.byte	0xa
	.value	0x19f
	.long	0x2d
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF392
	.byte	0xa
	.value	0x1a2
	.long	0x2d
	.byte	0xc0
	.uleb128 0x1c
	.string	"end"
	.byte	0xa
	.value	0x1a5
	.long	0x2d
	.byte	0xc8
	.uleb128 0x1c
	.string	"top"
	.byte	0xa
	.value	0x1a9
	.long	0x2d
	.byte	0xd0
	.uleb128 0xd
	.long	.LASF393
	.byte	0xa
	.value	0x1ac
	.long	0x2d
	.byte	0xd8
	.uleb128 0xd
	.long	.LASF394
	.byte	0xa
	.value	0x1af
	.long	0x2d
	.byte	0xe0
	.uleb128 0xd
	.long	.LASF395
	.byte	0xa
	.value	0x1ba
	.long	0x2d
	.byte	0xe8
	.uleb128 0xd
	.long	.LASF396
	.byte	0xa
	.value	0x1be
	.long	0x139
	.byte	0xf0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xe97
	.uleb128 0x3
	.byte	0x8
	.long	0xead
	.uleb128 0x12
	.long	.LASF397
	.byte	0x4
	.byte	0xd
	.byte	0x42
	.long	0x108d
	.uleb128 0x13
	.long	.LASF398
	.sleb128 0
	.uleb128 0x13
	.long	.LASF399
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF400
	.byte	0xa8
	.byte	0xd
	.byte	0x4c
	.long	0x124a
	.uleb128 0x8
	.long	.LASF401
	.byte	0xd
	.byte	0x4e
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF402
	.byte	0xd
	.byte	0x4f
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF403
	.byte	0xd
	.byte	0x51
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF404
	.byte	0xd
	.byte	0x53
	.long	0x1074
	.byte	0x18
	.uleb128 0x8
	.long	.LASF405
	.byte	0xd
	.byte	0x54
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF406
	.byte	0xd
	.byte	0x58
	.long	0xcad
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1
	.byte	0xd
	.byte	0x5c
	.long	0x3bd
	.byte	0x30
	.uleb128 0x6
	.string	"mem"
	.byte	0xd
	.byte	0x5d
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF407
	.byte	0xd
	.byte	0x5e
	.long	0x2d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF408
	.byte	0xd
	.byte	0x5f
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF409
	.byte	0xd
	.byte	0x60
	.long	0x139
	.byte	0x50
	.uleb128 0x8
	.long	.LASF410
	.byte	0xd
	.byte	0x61
	.long	0x2d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF411
	.byte	0xd
	.byte	0x65
	.long	0x147
	.byte	0x60
	.uleb128 0x5
	.long	.LASF412
	.byte	0xd
	.byte	0x68
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x64
	.uleb128 0x5
	.long	.LASF413
	.byte	0xd
	.byte	0x6d
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x64
	.uleb128 0x5
	.long	.LASF414
	.byte	0xd
	.byte	0x73
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x64
	.uleb128 0x5
	.long	.LASF415
	.byte	0xd
	.byte	0x74
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x64
	.uleb128 0x5
	.long	.LASF416
	.byte	0xd
	.byte	0x76
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x64
	.uleb128 0x5
	.long	.LASF417
	.byte	0xd
	.byte	0x77
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x64
	.uleb128 0x5
	.long	.LASF418
	.byte	0xd
	.byte	0x7a
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x64
	.uleb128 0x5
	.long	.LASF419
	.byte	0xd
	.byte	0x7e
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x64
	.uleb128 0x5
	.long	.LASF420
	.byte	0xd
	.byte	0x81
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x64
	.uleb128 0x5
	.long	.LASF421
	.byte	0xd
	.byte	0x83
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x64
	.uleb128 0x5
	.long	.LASF387
	.byte	0xd
	.byte	0x85
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x64
	.uleb128 0x5
	.long	.LASF422
	.byte	0xd
	.byte	0x86
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x64
	.uleb128 0x8
	.long	.LASF423
	.byte	0xd
	.byte	0x87
	.long	0x139
	.byte	0x68
	.uleb128 0x8
	.long	.LASF424
	.byte	0xd
	.byte	0x88
	.long	0x2d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF425
	.byte	0xd
	.byte	0x8c
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x8e
	.long	0x124a
	.byte	0x80
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x92
	.long	0x124a
	.byte	0x88
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0x95
	.long	0x150
	.byte	0x90
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0x99
	.long	0x124a
	.byte	0x98
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0x9d
	.long	0x2d
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x108d
	.uleb128 0x4
	.long	.LASF431
	.byte	0x60
	.byte	0xd
	.byte	0xa4
	.long	0x1338
	.uleb128 0x8
	.long	.LASF432
	.byte	0xd
	.byte	0xa6
	.long	0x147
	.byte	0
	.uleb128 0x8
	.long	.LASF433
	.byte	0xd
	.byte	0xa7
	.long	0x139
	.byte	0x4
	.uleb128 0x6
	.string	"biv"
	.byte	0xd
	.byte	0xa8
	.long	0x124a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF434
	.byte	0xd
	.byte	0xa9
	.long	0x139
	.byte	0x10
	.uleb128 0x6
	.string	"giv"
	.byte	0xd
	.byte	0xac
	.long	0x124a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF435
	.byte	0xd
	.byte	0xae
	.long	0x139
	.byte	0x20
	.uleb128 0x8
	.long	.LASF436
	.byte	0xd
	.byte	0xaf
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF437
	.byte	0xd
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF410
	.byte	0xd
	.byte	0xb1
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF349
	.byte	0xd
	.byte	0xb2
	.long	0x1338
	.byte	0x40
	.uleb128 0x8
	.long	.LASF438
	.byte	0xd
	.byte	0xb3
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF439
	.byte	0xd
	.byte	0xb4
	.long	0x2d
	.byte	0x50
	.uleb128 0x5
	.long	.LASF440
	.byte	0xd
	.byte	0xb5
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x58
	.uleb128 0x5
	.long	.LASF441
	.byte	0xd
	.byte	0xb6
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x58
	.uleb128 0x5
	.long	.LASF442
	.byte	0xd
	.byte	0xb8
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF443
	.byte	0xd
	.byte	0xba
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x58
	.uleb128 0x5
	.long	.LASF444
	.byte	0xd
	.byte	0xbc
	.long	0x147
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1250
	.uleb128 0x12
	.long	.LASF445
	.byte	0x4
	.byte	0xd
	.byte	0xc2
	.long	0x1363
	.uleb128 0x13
	.long	.LASF446
	.sleb128 0
	.uleb128 0x13
	.long	.LASF447
	.sleb128 1
	.uleb128 0x13
	.long	.LASF448
	.sleb128 2
	.uleb128 0x13
	.long	.LASF449
	.sleb128 3
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.byte	0xd
	.byte	0xd0
	.long	0x1382
	.uleb128 0x17
	.long	.LASF450
	.byte	0xd
	.byte	0xd2
	.long	0x1338
	.uleb128 0x17
	.long	.LASF451
	.byte	0xd
	.byte	0xd3
	.long	0x124a
	.byte	0
	.uleb128 0x1e
	.string	"iv"
	.byte	0x10
	.byte	0xd
	.byte	0xcd
	.long	0x13a5
	.uleb128 0x8
	.long	.LASF452
	.byte	0xd
	.byte	0xcf
	.long	0x133e
	.byte	0
	.uleb128 0x6
	.string	"iv"
	.byte	0xd
	.byte	0xd4
	.long	0x1363
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF453
	.byte	0x18
	.byte	0xd
	.byte	0xdd
	.long	0x13d6
	.uleb128 0x8
	.long	.LASF454
	.byte	0xd
	.byte	0xe1
	.long	0x13d6
	.byte	0
	.uleb128 0x8
	.long	.LASF455
	.byte	0xd
	.byte	0xe4
	.long	0x147
	.byte	0x8
	.uleb128 0x8
	.long	.LASF456
	.byte	0xd
	.byte	0xe8
	.long	0x1338
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1382
	.uleb128 0x4
	.long	.LASF457
	.byte	0x18
	.byte	0xd
	.byte	0xec
	.long	0x140d
	.uleb128 0x6
	.string	"mem"
	.byte	0xd
	.byte	0xee
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"reg"
	.byte	0xd
	.byte	0xef
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF458
	.byte	0xd
	.byte	0xf0
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF457
	.byte	0xd
	.byte	0xf1
	.long	0x13dc
	.uleb128 0x4
	.long	.LASF459
	.byte	0x18
	.byte	0xd
	.byte	0xf5
	.long	0x1466
	.uleb128 0xd
	.long	.LASF460
	.byte	0xd
	.value	0x101
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF461
	.byte	0xd
	.value	0x106
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF462
	.byte	0xd
	.value	0x10a
	.long	0x2d
	.byte	0x8
	.uleb128 0xd
	.long	.LASF463
	.byte	0xd
	.value	0x10e
	.long	0x1a1
	.byte	0x10
	.uleb128 0xd
	.long	.LASF464
	.byte	0xd
	.value	0x112
	.long	0x1a1
	.byte	0x11
	.byte	0
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x18
	.byte	0xd
	.value	0x116
	.long	0x14a8
	.uleb128 0x1c
	.string	"num"
	.byte	0xd
	.value	0x118
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF265
	.byte	0xd
	.value	0x119
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF466
	.byte	0xd
	.value	0x11a
	.long	0x14a8
	.byte	0x8
	.uleb128 0xd
	.long	.LASF467
	.byte	0xd
	.value	0x11b
	.long	0x139
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1418
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x10
	.byte	0xd
	.value	0x120
	.long	0x14d6
	.uleb128 0xd
	.long	.LASF283
	.byte	0xd
	.value	0x123
	.long	0x14db
	.byte	0
	.uleb128 0xd
	.long	.LASF375
	.byte	0xd
	.value	0x125
	.long	0x14db
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF470
	.uleb128 0x3
	.byte	0x8
	.long	0x14d6
	.uleb128 0x1b
	.long	.LASF471
	.byte	0xf0
	.byte	0xd
	.value	0x12b
	.long	0x1681
	.uleb128 0xd
	.long	.LASF472
	.byte	0xd
	.value	0x12e
	.long	0x139
	.byte	0
	.uleb128 0xd
	.long	.LASF473
	.byte	0xd
	.value	0x130
	.long	0x139
	.byte	0x4
	.uleb128 0xd
	.long	.LASF474
	.byte	0xd
	.value	0x132
	.long	0x139
	.byte	0x8
	.uleb128 0xd
	.long	.LASF475
	.byte	0xd
	.value	0x135
	.long	0x139
	.byte	0xc
	.uleb128 0xd
	.long	.LASF476
	.byte	0xd
	.value	0x137
	.long	0x139
	.byte	0x10
	.uleb128 0xd
	.long	.LASF477
	.byte	0xd
	.value	0x13a
	.long	0x139
	.byte	0x14
	.uleb128 0xd
	.long	.LASF478
	.byte	0xd
	.value	0x13c
	.long	0x139
	.byte	0x18
	.uleb128 0xd
	.long	.LASF436
	.byte	0xd
	.value	0x13e
	.long	0x2d
	.byte	0x20
	.uleb128 0xd
	.long	.LASF479
	.byte	0xd
	.value	0x140
	.long	0x2d
	.byte	0x28
	.uleb128 0xd
	.long	.LASF410
	.byte	0xd
	.value	0x142
	.long	0x2d
	.byte	0x30
	.uleb128 0xd
	.long	.LASF480
	.byte	0xd
	.value	0x145
	.long	0x2d
	.byte	0x38
	.uleb128 0xd
	.long	.LASF481
	.byte	0xd
	.value	0x148
	.long	0x2d
	.byte	0x40
	.uleb128 0xd
	.long	.LASF482
	.byte	0xd
	.value	0x14a
	.long	0x2d
	.byte	0x48
	.uleb128 0xd
	.long	.LASF483
	.byte	0xd
	.value	0x14c
	.long	0x2d
	.byte	0x50
	.uleb128 0xd
	.long	.LASF484
	.byte	0xd
	.value	0x14d
	.long	0x532
	.byte	0x58
	.uleb128 0xd
	.long	.LASF485
	.byte	0xd
	.value	0x153
	.long	0x162
	.byte	0x60
	.uleb128 0xd
	.long	.LASF486
	.byte	0xd
	.value	0x155
	.long	0x147
	.byte	0x68
	.uleb128 0xd
	.long	.LASF487
	.byte	0xd
	.value	0x156
	.long	0x139
	.byte	0x6c
	.uleb128 0x1c
	.string	"iv"
	.byte	0xd
	.value	0x158
	.long	0x1338
	.byte	0x70
	.uleb128 0xd
	.long	.LASF488
	.byte	0xd
	.value	0x15a
	.long	0x2d
	.byte	0x78
	.uleb128 0xd
	.long	.LASF489
	.byte	0xd
	.value	0x160
	.long	0x1681
	.byte	0x80
	.uleb128 0xd
	.long	.LASF490
	.byte	0xd
	.value	0x162
	.long	0x139
	.byte	0x88
	.uleb128 0xd
	.long	.LASF491
	.byte	0xd
	.value	0x164
	.long	0x139
	.byte	0x8c
	.uleb128 0xd
	.long	.LASF492
	.byte	0xd
	.value	0x169
	.long	0x139
	.byte	0x90
	.uleb128 0xd
	.long	.LASF493
	.byte	0xd
	.value	0x16c
	.long	0x139
	.byte	0x94
	.uleb128 0xd
	.long	.LASF494
	.byte	0xd
	.value	0x16e
	.long	0x139
	.byte	0x98
	.uleb128 0xd
	.long	.LASF495
	.byte	0xd
	.value	0x170
	.long	0x2d
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF496
	.byte	0xd
	.value	0x172
	.long	0x14ae
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF454
	.byte	0xd
	.value	0x174
	.long	0x1466
	.byte	0xb8
	.uleb128 0x1c
	.string	"ivs"
	.byte	0xd
	.value	0x176
	.long	0x13a5
	.byte	0xd0
	.uleb128 0xd
	.long	.LASF497
	.byte	0xd
	.value	0x178
	.long	0x139
	.byte	0xe8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x140d
	.uleb128 0x1f
	.long	.LASF499
	.byte	0x1
	.byte	0x4a
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x16ef
	.uleb128 0x20
	.long	.LASF501
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"cmp"
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"inc"
	.byte	0x1
	.byte	0x4e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"reg"
	.byte	0x1
	.byte	0x4f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF498
	.byte	0x1
	.byte	0x50
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x23
	.long	.LASF500
	.byte	0x1
	.byte	0x92
	.long	0x162
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x17f8
	.uleb128 0x20
	.long	.LASF471
	.byte	0x1
	.byte	0x93
	.long	0x17f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF1
	.byte	0x1
	.byte	0x94
	.long	0x3bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x20
	.long	.LASF442
	.byte	0x1
	.byte	0x95
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x22
	.long	.LASF502
	.byte	0x1
	.byte	0x97
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x22
	.long	.LASF0
	.byte	0x1
	.byte	0x98
	.long	0x532
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF503
	.byte	0x1
	.byte	0x99
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.long	.LASF504
	.byte	0x1
	.byte	0x9a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.long	.LASF505
	.byte	0x1
	.byte	0x9b
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF506
	.byte	0x1
	.byte	0x9c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x17c9
	.uleb128 0x22
	.long	.LASF507
	.byte	0x1
	.byte	0xbd
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.long	.LASF508
	.byte	0x1
	.byte	0xbe
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x22
	.long	.LASF509
	.byte	0x1
	.byte	0xd1
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.long	.LASF510
	.byte	0x1
	.byte	0xd2
	.long	0x150
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x17fe
	.uleb128 0x11
	.long	0x14e1
	.uleb128 0x23
	.long	.LASF511
	.byte	0x1
	.byte	0xff
	.long	0x139
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1852
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x100
	.long	0x1852
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF512
	.byte	0x1
	.value	0x101
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF471
	.byte	0x1
	.value	0x103
	.long	0x17f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1858
	.uleb128 0x11
	.long	0xead
	.uleb128 0x28
	.long	.LASF513
	.byte	0x1
	.value	0x194
	.long	0x139
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x194d
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x196
	.long	0x1852
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF514
	.byte	0x1
	.value	0x197
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF515
	.byte	0x1
	.value	0x198
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF516
	.byte	0x1
	.value	0x199
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x19a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x19b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF518
	.byte	0x1
	.value	0x19d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF294
	.byte	0x1
	.value	0x19e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF519
	.byte	0x1
	.value	0x19f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF512
	.byte	0x1
	.value	0x1a0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.long	.LASF442
	.byte	0x1
	.value	0x1a1
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF520
	.byte	0x1
	.value	0x1a2
	.long	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF524
	.long	0x195d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10675
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x195d
	.uleb128 0x10
	.long	0x140
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.long	0x194d
	.uleb128 0x28
	.long	.LASF521
	.byte	0x1
	.value	0x220
	.long	0x139
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba3
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x222
	.long	0x1852
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF515
	.byte	0x1
	.value	0x223
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF516
	.byte	0x1
	.value	0x224
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.long	.LASF517
	.byte	0x1
	.value	0x225
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF1
	.byte	0x1
	.value	0x226
	.long	0x3bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x26
	.long	.LASF498
	.byte	0x1
	.value	0x227
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x27
	.long	.LASF471
	.byte	0x1
	.value	0x229
	.long	0x17f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF505
	.byte	0x1
	.value	0x22a
	.long	0x150
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.long	.LASF506
	.byte	0x1
	.value	0x22b
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.long	.LASF522
	.byte	0x1
	.value	0x22c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.long	.LASF519
	.byte	0x1
	.value	0x22d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF514
	.byte	0x1
	.value	0x22e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF436
	.byte	0x1
	.value	0x22f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x230
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF483
	.byte	0x1
	.value	0x231
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF523
	.byte	0x1
	.value	0x232
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x27
	.long	.LASF484
	.byte	0x1
	.value	0x233
	.long	0x532
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x29
	.long	.LASF524
	.long	0x1bb3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.10702
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1b0b
	.uleb128 0x27
	.long	.LASF482
	.byte	0x1
	.value	0x27f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"ivs"
	.byte	0x1
	.value	0x280
	.long	0x1bb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.string	"bl"
	.byte	0x1
	.value	0x281
	.long	0x1338
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2a
	.string	"v"
	.byte	0x1
	.value	0x287
	.long	0x124a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1b81
	.uleb128 0x27
	.long	.LASF525
	.byte	0x1
	.value	0x29c
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x27
	.long	.LASF526
	.byte	0x1
	.value	0x29d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF527
	.byte	0x1
	.value	0x29e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF528
	.byte	0x1
	.value	0x29f
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x27
	.long	.LASF294
	.byte	0x1
	.value	0x2ae
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x27
	.long	.LASF527
	.byte	0x1
	.value	0x2d5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	0x1a1
	.long	0x1bb3
	.uleb128 0x10
	.long	0x140
	.byte	0x15
	.byte	0
	.uleb128 0x11
	.long	0x1ba3
	.uleb128 0x3
	.byte	0x8
	.long	0x13a5
	.uleb128 0x2b
	.long	.LASF544
	.byte	0x1
	.value	0x300
	.long	0x139
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cff
	.uleb128 0x26
	.long	.LASF369
	.byte	0x1
	.value	0x301
	.long	0x1852
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.long	.LASF471
	.byte	0x1
	.value	0x303
	.long	0x1cff
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x27
	.long	.LASF436
	.byte	0x1
	.value	0x304
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.long	.LASF410
	.byte	0x1
	.value	0x305
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.long	.LASF483
	.byte	0x1
	.value	0x306
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.long	.LASF512
	.byte	0x1
	.value	0x307
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.long	.LASF1
	.byte	0x1
	.value	0x308
	.long	0x3bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.long	.LASF485
	.byte	0x1
	.value	0x309
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.long	.LASF502
	.byte	0x1
	.value	0x30a
	.long	0x162
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.long	.LASF516
	.byte	0x1
	.value	0x30b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.long	.LASF529
	.byte	0x1
	.value	0x30b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.long	.LASF530
	.byte	0x1
	.value	0x30b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF514
	.byte	0x1
	.value	0x30c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.long	.LASF515
	.byte	0x1
	.value	0x30d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF517
	.byte	0x1
	.value	0x30e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF498
	.byte	0x1
	.value	0x30f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x27
	.long	.LASF442
	.byte	0x1
	.value	0x333
	.long	0x139
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x14e1
	.uleb128 0xf
	.long	0x170
	.long	0x1d15
	.uleb128 0x10
	.long	0x140
	.byte	0x3a
	.byte	0
	.uleb128 0x2c
	.long	.LASF531
	.byte	0x8
	.byte	0x60
	.long	0x1d20
	.uleb128 0x11
	.long	0x1d05
	.uleb128 0x2c
	.long	.LASF532
	.byte	0x8
	.byte	0xa4
	.long	0x3bd
	.uleb128 0xf
	.long	0x2d
	.long	0x1d40
	.uleb128 0x10
	.long	0x140
	.byte	0x80
	.byte	0
	.uleb128 0x2d
	.long	.LASF533
	.byte	0x2
	.value	0x611
	.long	0x1d30
	.uleb128 0xf
	.long	0x2d
	.long	0x1d5c
	.uleb128 0x10
	.long	0x140
	.byte	0xa
	.byte	0
	.uleb128 0x2d
	.long	.LASF534
	.byte	0x2
	.value	0x652
	.long	0x1d4c
	.uleb128 0x2d
	.long	.LASF535
	.byte	0xd
	.value	0x17e
	.long	0x3b7
	.uleb128 0x2d
	.long	.LASF536
	.byte	0xd
	.value	0x17f
	.long	0x139
	.uleb128 0x2d
	.long	.LASF537
	.byte	0xd
	.value	0x182
	.long	0x1d8c
	.uleb128 0x3
	.byte	0x8
	.long	0x1a8
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2a
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
.LASF314:
	.string	"REG_BR_PROB"
.LASF423:
	.string	"lifetime"
.LASF271:
	.string	"rtstr"
.LASF478:
	.string	"has_indirect_jump"
.LASF58:
	.string	"_unused2"
.LASF199:
	.string	"UMOD"
.LASF253:
	.string	"min_align"
.LASF44:
	.string	"_fileno"
.LASF279:
	.string	"first"
.LASF240:
	.string	"CONSTANT_P_RTX"
.LASF378:
	.string	"entry_edges"
.LASF270:
	.string	"rtuint"
.LASF433:
	.string	"biv_count"
.LASF274:
	.string	"rt_cselib"
.LASF143:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF203:
	.string	"LSHIFTRT"
.LASF512:
	.string	"jump_insn"
.LASF137:
	.string	"MATCH_PAR_DUP"
.LASF49:
	.string	"_shortbuf"
.LASF540:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF198:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF414:
	.string	"ignore"
.LASF416:
	.string	"always_executed"
.LASF434:
	.string	"giv_count"
.LASF513:
	.string	"doloop_modify"
.LASF131:
	.string	"MATCH_OPERAND"
.LASF417:
	.string	"maybe_multiple"
.LASF470:
	.string	"movable"
.LASF220:
	.string	"UNLE"
.LASF258:
	.string	"max_after_base"
.LASF221:
	.string	"UNLT"
.LASF490:
	.string	"mems_idx"
.LASF366:
	.string	"probability"
.LASF94:
	.string	"CTImode"
.LASF30:
	.string	"_flags"
.LASF349:
	.string	"next"
.LASF371:
	.string	"latch"
.LASF25:
	.string	"__off_t"
.LASF460:
	.string	"set_in_loop"
.LASF92:
	.string	"CSImode"
.LASF242:
	.string	"VEC_MERGE"
.LASF465:
	.string	"loop_regs"
.LASF50:
	.string	"_lock"
.LASF175:
	.string	"RETURN"
.LASF14:
	.string	"elem"
.LASF262:
	.string	"alias"
.LASF259:
	.string	"offset_unsigned"
.LASF98:
	.string	"V2SImode"
.LASF443:
	.string	"reversed"
.LASF440:
	.string	"incremented"
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
.LASF382:
	.string	"exits_doms"
.LASF100:
	.string	"V4QImode"
.LASF493:
	.string	"unknown_constant_address_altered"
.LASF153:
	.string	"ATTR"
.LASF404:
	.string	"giv_type"
.LASF471:
	.string	"loop_info"
.LASF272:
	.string	"rttype"
.LASF284:
	.string	"head_tree"
.LASF438:
	.string	"init_insn"
.LASF337:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF537:
	.string	"loop_dump_stream"
.LASF99:
	.string	"V2DImode"
.LASF394:
	.string	"sink"
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
.LASF464:
	.string	"moved_once"
.LASF410:
	.string	"final_value"
.LASF435:
	.string	"total_benefit"
.LASF186:
	.string	"STRICT_LOW_PART"
.LASF429:
	.string	"same_insn"
.LASF128:
	.string	"INCLUDE"
.LASF333:
	.string	"GR_FRAME_POINTER"
.LASF292:
	.string	"index"
.LASF454:
	.string	"regs"
.LASF224:
	.string	"ZERO_EXTEND"
.LASF227:
	.string	"FLOAT_TRUNCATE"
.LASF511:
	.string	"doloop_valid_p"
.LASF330:
	.string	"GR_PC"
.LASF364:
	.string	"dest"
.LASF109:
	.string	"V2SFmode"
.LASF228:
	.string	"FLOAT"
.LASF497:
	.string	"pre_header_has_call"
.LASF523:
	.string	"unsigned_p"
.LASF320:
	.string	"REG_EH_CONTEXT"
.LASF125:
	.string	"machine_mode"
.LASF462:
	.string	"single_usage"
.LASF277:
	.string	"rtmem"
.LASF237:
	.string	"RANGE_REG"
.LASF487:
	.string	"used_count_register"
.LASF275:
	.string	"rtbit"
.LASF348:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF71:
	.string	"TImode"
.LASF213:
	.string	"PRE_MODIFY"
.LASF517:
	.string	"start_label"
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
.LASF376:
	.string	"nodes"
.LASF481:
	.string	"final_equiv_value"
.LASF189:
	.string	"SYMBOL_REF"
.LASF520:
	.string	"decrement_count"
.LASF532:
	.string	"word_mode"
.LASF449:
	.string	"GENERAL_INDUCT"
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
.LASF357:
	.string	"elms"
.LASF521:
	.string	"doloop_modify_runtime"
.LASF43:
	.string	"_chain"
.LASF486:
	.string	"unroll_number"
.LASF451:
	.string	"info"
.LASF212:
	.string	"POST_INC"
.LASF83:
	.string	"TFmode"
.LASF21:
	.string	"unsigned char"
.LASF403:
	.string	"src_reg"
.LASF445:
	.string	"iv_mode"
.LASF531:
	.string	"mode_bitsize"
.LASF542:
	.string	"_IO_lock_t"
.LASF450:
	.string	"class"
.LASF368:
	.string	"basic_block"
.LASF66:
	.string	"BImode"
.LASF210:
	.string	"PRE_INC"
.LASF307:
	.string	"REG_NO_CONFLICT"
.LASF80:
	.string	"SFmode"
.LASF525:
	.string	"shift_count"
.LASF159:
	.string	"JUMP_INSN"
.LASF289:
	.string	"cond_local_set"
.LASF367:
	.string	"edge"
.LASF276:
	.string	"rttree"
.LASF141:
	.string	"DEFINE_SPLIT"
.LASF480:
	.string	"initial_equiv_value"
.LASF180:
	.string	"CONST_VECTOR"
.LASF138:
	.string	"MATCH_INSN"
.LASF81:
	.string	"DFmode"
.LASF360:
	.string	"gcov_type"
.LASF19:
	.string	"size_t"
.LASF172:
	.string	"PREFETCH"
.LASF75:
	.string	"PSImode"
.LASF236:
	.string	"RANGE_INFO"
.LASF379:
	.string	"num_entries"
.LASF372:
	.string	"pre_header"
.LASF543:
	.string	"rtunion_def"
.LASF152:
	.string	"DEFINE_ATTR"
.LASF154:
	.string	"SET_ATTR"
.LASF89:
	.string	"TCmode"
.LASF505:
	.string	"abs_inc"
.LASF229:
	.string	"UNSIGNED_FLOAT"
.LASF319:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF469:
	.string	"cselib_val_struct"
.LASF35:
	.string	"_IO_write_ptr"
.LASF201:
	.string	"ROTATE"
.LASF419:
	.string	"maybe_dead"
.LASF287:
	.string	"succ"
.LASF225:
	.string	"TRUNCATE"
.LASF463:
	.string	"may_not_optimize"
.LASF312:
	.string	"REG_DEP_ANTI"
.LASF86:
	.string	"SCmode"
.LASF509:
	.string	"smax"
.LASF338:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF76:
	.string	"PDImode"
.LASF353:
	.string	"bitmap"
.LASF296:
	.string	"flags"
.LASF129:
	.string	"EXPR_LIST"
.LASF156:
	.string	"EQ_ATTR"
.LASF387:
	.string	"shared"
.LASF119:
	.string	"CCGOCmode"
.LASF187:
	.string	"CONCAT"
.LASF362:
	.string	"pred_next"
.LASF255:
	.string	"min_after_vec"
.LASF522:
	.string	"diff"
.LASF28:
	.string	"FILE"
.LASF294:
	.string	"count"
.LASF354:
	.string	"simple_bitmap_def"
.LASF461:
	.string	"n_times_set"
.LASF15:
	.string	"tree"
.LASF87:
	.string	"DCmode"
.LASF427:
	.string	"same"
.LASF144:
	.string	"DEFINE_COMBINE"
.LASF538:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF425:
	.string	"ext_dependent"
.LASF202:
	.string	"ASHIFTRT"
.LASF529:
	.string	"doloop_pat"
.LASF117:
	.string	"CCmode"
.LASF285:
	.string	"end_tree"
.LASF484:
	.string	"comparison_code"
.LASF115:
	.string	"V16SFmode"
.LASF149:
	.string	"DEFINE_COND_EXEC"
.LASF39:
	.string	"_IO_save_base"
.LASF343:
	.string	"OPTAB_DIRECT"
.LASF442:
	.string	"nonneg"
.LASF145:
	.string	"DEFINE_EXPAND"
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
.LASF474:
	.string	"has_nonconst_call"
.LASF447:
	.string	"BASIC_INDUCT"
.LASF299:
	.string	"REG_DEAD"
.LASF53:
	.string	"__pad2"
.LASF302:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF359:
	.string	"regset"
.LASF405:
	.string	"dest_reg"
.LASF441:
	.string	"eliminable"
.LASF489:
	.string	"mems"
.LASF118:
	.string	"CCGCmode"
.LASF291:
	.string	"global_live_at_end"
.LASF508:
	.string	"umin"
.LASF456:
	.string	"list"
.LASF184:
	.string	"SCRATCH"
.LASF104:
	.string	"V8QImode"
.LASF498:
	.string	"condition"
.LASF107:
	.string	"V8DImode"
.LASF475:
	.string	"has_volatile"
.LASF428:
	.string	"const_adjust"
.LASF223:
	.string	"SIGN_EXTEND"
.LASF533:
	.string	"const_int_rtx"
.LASF245:
	.string	"VEC_DUPLICATE"
.LASF60:
	.string	"_next"
.LASF263:
	.string	"expr"
.LASF407:
	.string	"mult_val"
.LASF113:
	.string	"V8SFmode"
.LASF510:
	.string	"smin"
.LASF401:
	.string	"insn"
.LASF468:
	.string	"loop_movables"
.LASF310:
	.string	"REG_CC_USER"
.LASF167:
	.string	"ASM_OPERANDS"
.LASF534:
	.string	"global_rtl"
.LASF121:
	.string	"CCZmode"
.LASF346:
	.string	"OPTAB_LIB_WIDEN"
.LASF472:
	.string	"has_call"
.LASF325:
	.string	"REG_NON_LOCAL_GOTO"
.LASF171:
	.string	"ADDR_DIFF_VEC"
.LASF500:
	.string	"doloop_iterations_max"
.LASF233:
	.string	"ZERO_EXTRACT"
.LASF166:
	.string	"ASM_INPUT"
.LASF216:
	.string	"ORDERED"
.LASF114:
	.string	"V8DFmode"
.LASF477:
	.string	"has_multiple_exit_targets"
.LASF526:
	.string	"extra"
.LASF230:
	.string	"UNSIGNED_FIX"
.LASF496:
	.string	"movables"
.LASF122:
	.string	"CCFPmode"
.LASF384:
	.string	"level"
.LASF485:
	.string	"n_iterations"
.LASF130:
	.string	"INSN_LIST"
.LASF61:
	.string	"_sbuf"
.LASF238:
	.string	"RANGE_VAR"
.LASF479:
	.string	"comparison_value"
.LASF41:
	.string	"_IO_save_end"
.LASF193:
	.string	"COND"
.LASF2:
	.string	"jump"
.LASF377:
	.string	"num_nodes"
.LASF452:
	.string	"type"
.LASF239:
	.string	"RANGE_LIVE"
.LASF97:
	.string	"V2HImode"
.LASF9:
	.string	"frame_related"
.LASF459:
	.string	"loop_reg"
.LASF544:
	.string	"doloop_optimize"
.LASF273:
	.string	"rt_addr_diff_vec_flags"
.LASF335:
	.string	"GR_ARG_POINTER"
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
.LASF22:
	.string	"short unsigned int"
.LASF23:
	.string	"signed char"
.LASF134:
	.string	"MATCH_OPERATOR"
.LASF392:
	.string	"start"
.LASF280:
	.string	"current"
.LASF250:
	.string	"SS_TRUNCATE"
.LASF315:
	.string	"REG_EXEC_COUNT"
.LASF476:
	.string	"has_tablejump"
.LASF426:
	.string	"next_iv"
.LASF345:
	.string	"OPTAB_WIDEN"
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
.LASF420:
	.string	"auto_inc_opt"
.LASF33:
	.string	"_IO_read_base"
.LASF51:
	.string	"_offset"
.LASF400:
	.string	"induction"
.LASF336:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF390:
	.string	"cont"
.LASF313:
	.string	"REG_DEP_OUTPUT"
.LASF38:
	.string	"_IO_buf_end"
.LASF355:
	.string	"n_bits"
.LASF148:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF249:
	.string	"US_MINUS"
.LASF397:
	.string	"g_types"
.LASF483:
	.string	"increment"
.LASF232:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF173:
	.string	"CLOBBER"
.LASF361:
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
.LASF535:
	.string	"uid_luid"
.LASF111:
	.string	"V4SFmode"
.LASF398:
	.string	"DEST_ADDR"
.LASF195:
	.string	"PLUS"
.LASF211:
	.string	"POST_DEC"
.LASF351:
	.string	"bits"
.LASF68:
	.string	"HImode"
.LASF297:
	.string	"rtunion"
.LASF530:
	.string	"doloop_reg"
.LASF18:
	.string	"long int"
.LASF340:
	.string	"GR_VIRTUAL_CFA"
.LASF303:
	.string	"REG_WAS_0"
.LASF324:
	.string	"REG_NORETURN"
.LASF59:
	.string	"_IO_marker"
.LASF82:
	.string	"XFmode"
.LASF323:
	.string	"REG_MAYBE_DEAD"
.LASF528:
	.string	"limit"
.LASF112:
	.string	"V4DFmode"
.LASF408:
	.string	"add_val"
.LASF4:
	.string	"unchanging"
.LASF298:
	.string	"reg_note"
.LASF527:
	.string	"label"
.LASF458:
	.string	"optimize"
.LASF126:
	.string	"rtx_code"
.LASF501:
	.string	"pattern"
.LASF375:
	.string	"last"
.LASF411:
	.string	"combined_with"
.LASF473:
	.string	"has_libcall"
.LASF383:
	.string	"depth"
.LASF127:
	.string	"UNKNOWN"
.LASF169:
	.string	"UNSPEC_VOLATILE"
.LASF457:
	.string	"loop_mem_info"
.LASF20:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF78:
	.string	"HFmode"
.LASF176:
	.string	"TRAP_IF"
.LASF389:
	.string	"vtop"
.LASF321:
	.string	"REG_EH_REGION"
.LASF391:
	.string	"cont_dominator"
.LASF304:
	.string	"REG_RETVAL"
.LASF90:
	.string	"CQImode"
.LASF27:
	.string	"char"
.LASF495:
	.string	"first_loop_store_insn"
.LASF88:
	.string	"XCmode"
.LASF491:
	.string	"mems_allocated"
.LASF399:
	.string	"DEST_REG"
.LASF430:
	.string	"last_use"
.LASF37:
	.string	"_IO_buf_base"
.LASF204:
	.string	"ROTATERT"
.LASF190:
	.string	"ADDRESSOF"
.LASF395:
	.string	"exit_labels"
.LASF326:
	.string	"REG_SETJMP"
.LASF388:
	.string	"invalid"
.LASF467:
	.string	"multiple_uses"
.LASF96:
	.string	"V2QImode"
.LASF74:
	.string	"PHImode"
.LASF32:
	.string	"_IO_read_end"
.LASF347:
	.string	"OPTAB_MUST_WIDEN"
.LASF95:
	.string	"COImode"
.LASF209:
	.string	"PRE_DEC"
.LASF507:
	.string	"umax"
.LASF29:
	.string	"_IO_FILE"
.LASF506:
	.string	"neg_inc"
.LASF334:
	.string	"GR_HARD_FRAME_POINTER"
.LASF516:
	.string	"doloop_seq"
.LASF309:
	.string	"REG_CC_SETTER"
.LASF421:
	.string	"unrolled"
.LASF247:
	.string	"US_PLUS"
.LASF374:
	.string	"num_pre_header_edges"
.LASF116:
	.string	"BLKmode"
.LASF85:
	.string	"HCmode"
.LASF415:
	.string	"always_computable"
.LASF488:
	.string	"store_mems"
.LASF181:
	.string	"CONST_STRING"
.LASF244:
	.string	"VEC_CONCAT"
.LASF265:
	.string	"size"
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
.LASF448:
	.string	"NOT_BASIC_INDUCT"
.LASF300:
	.string	"REG_INC"
.LASF147:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF358:
	.string	"sbitmap"
.LASF42:
	.string	"_markers"
.LASF62:
	.string	"_pos"
.LASF151:
	.string	"ADDRESS"
.LASF365:
	.string	"insns"
.LASF381:
	.string	"num_exits"
.LASF412:
	.string	"replaceable"
.LASF380:
	.string	"exit_edges"
.LASF278:
	.string	"bitmap_head_def"
.LASF431:
	.string	"iv_class"
.LASF251:
	.string	"US_TRUNCATE"
.LASF329:
	.string	"global_rtl_index"
.LASF246:
	.string	"SS_PLUS"
.LASF208:
	.string	"UMAX"
.LASF260:
	.string	"scale"
.LASF67:
	.string	"QImode"
.LASF332:
	.string	"GR_STACK_POINTER"
.LASF402:
	.string	"new_reg"
.LASF79:
	.string	"TQFmode"
.LASF283:
	.string	"head"
.LASF503:
	.string	"min_value"
.LASF257:
	.string	"min_after_base"
.LASF439:
	.string	"init_set"
.LASF518:
	.string	"counter_reg"
.LASF72:
	.string	"OImode"
.LASF322:
	.string	"REG_SAVE_NOTE"
.LASF356:
	.string	"bytes"
.LASF539:
	.string	"doloop.c"
.LASF206:
	.string	"SMAX"
.LASF341:
	.string	"GR_MAX"
.LASF243:
	.string	"VEC_SELECT"
.LASF306:
	.string	"REG_NONNEG"
.LASF499:
	.string	"doloop_condition_get"
.LASF413:
	.string	"not_replaceable"
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
.LASF504:
	.string	"max_value"
.LASF344:
	.string	"OPTAB_LIB"
.LASF177:
	.string	"RESX"
.LASF165:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF494:
	.string	"num_mem_sets"
.LASF40:
	.string	"_IO_backup_base"
.LASF215:
	.string	"UNORDERED"
.LASF124:
	.string	"MAX_MACHINE_MODE"
.LASF31:
	.string	"_IO_read_ptr"
.LASF409:
	.string	"benefit"
.LASF466:
	.string	"array"
.LASF290:
	.string	"global_live_at_start"
.LASF132:
	.string	"MATCH_SCRATCH"
.LASF182:
	.string	"CONST"
.LASF231:
	.string	"SQRT"
.LASF446:
	.string	"UNKNOWN_INDUCT"
.LASF331:
	.string	"GR_CC0"
.LASF418:
	.string	"cant_derive"
.LASF197:
	.string	"MULT"
.LASF178:
	.string	"CONST_INT"
.LASF288:
	.string	"local_set"
.LASF73:
	.string	"PQImode"
.LASF386:
	.string	"inner"
.LASF105:
	.string	"V8HImode"
.LASF370:
	.string	"header"
.LASF46:
	.string	"_old_offset"
.LASF515:
	.string	"iterations_max"
.LASF160:
	.string	"CALL_INSN"
.LASF185:
	.string	"SUBREG"
.LASF108:
	.string	"V16QImode"
.LASF437:
	.string	"initial_test"
.LASF373:
	.string	"pre_header_edges"
.LASF327:
	.string	"REG_ALWAYS_RETURN"
.LASF64:
	.string	"long long int"
.LASF305:
	.string	"REG_LIBCALL"
.LASF45:
	.string	"_flags2"
.LASF393:
	.string	"scan_start"
.LASF84:
	.string	"QCmode"
.LASF183:
	.string	"VALUE"
.LASF163:
	.string	"NOTE"
.LASF455:
	.string	"n_regs"
.LASF207:
	.string	"UMIN"
.LASF133:
	.string	"MATCH_DUP"
.LASF482:
	.string	"iteration_var"
.LASF282:
	.string	"basic_block_def"
.LASF444:
	.string	"all_reduced"
.LASF7:
	.string	"used"
.LASF369:
	.string	"loop"
.LASF352:
	.string	"bitmap_element"
.LASF453:
	.string	"loop_ivs"
.LASF91:
	.string	"CHImode"
.LASF155:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF436:
	.string	"initial_value"
.LASF179:
	.string	"CONST_DOUBLE"
.LASF120:
	.string	"CCNOmode"
.LASF101:
	.string	"V4HImode"
.LASF396:
	.string	"exit_count"
.LASF217:
	.string	"UNEQ"
.LASF200:
	.string	"ASHIFT"
.LASF205:
	.string	"SMIN"
.LASF524:
	.string	"__FUNCTION__"
.LASF192:
	.string	"IF_THEN_ELSE"
.LASF502:
	.string	"n_iterations_max"
.LASF424:
	.string	"derive_adjustment"
.LASF514:
	.string	"iterations"
.LASF385:
	.string	"outer"
.LASF406:
	.string	"location"
.LASF17:
	.string	"unsigned int"
.LASF541:
	.string	"tree_node"
.LASF256:
	.string	"max_after_vec"
.LASF218:
	.string	"UNGE"
.LASF342:
	.string	"optab_methods"
.LASF24:
	.string	"short int"
.LASF286:
	.string	"pred"
.LASF219:
	.string	"UNGT"
.LASF422:
	.string	"no_const_addval"
.LASF350:
	.string	"prev"
.LASF48:
	.string	"_vtable_offset"
.LASF492:
	.string	"unknown_address_altered"
.LASF432:
	.string	"regno"
.LASF65:
	.string	"VOIDmode"
.LASF328:
	.string	"REG_VTABLE_REF"
.LASF339:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF519:
	.string	"sequence"
.LASF295:
	.string	"frequency"
.LASF268:
	.string	"rtwint"
.LASF363:
	.string	"succ_next"
.LASF536:
	.string	"max_uid_for_loop"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
