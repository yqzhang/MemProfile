	.file	"expmed.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 expmed.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	sdiv_pow2_cheap
	.comm	sdiv_pow2_cheap,4,4
	.local	smod_pow2_cheap
	.comm	smod_pow2_cheap,4,4
	.local	add_cost
	.comm	add_cost,4,4
	.local	negate_cost
	.comm	negate_cost,4,4
	.local	zero_cost
	.comm	zero_cost,4,4
	.local	shift_cost
	.comm	shift_cost,256,32
	.local	shiftadd_cost
	.comm	shiftadd_cost,256,32
	.local	shiftsub_cost
	.comm	shiftsub_cost,256,32
	.local	mul_cost
	.comm	mul_cost,236,32
	.local	div_cost
	.comm	div_cost,236,32
	.local	mul_widen_cost
	.comm	mul_widen_cost,236,32
	.local	mul_highpart_cost
	.comm	mul_highpart_cost,236,32
	.globl	init_expmed
	.type	init_expmed, @function
init_expmed:
.LFB2:
	.file 1 "expmed.c"
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 108 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.0
	movl	$10000, %esi	#,
	movl	%eax, %edi	# word_mode.0,
	call	gen_rtx_REG	#
	movq	%rax, -64(%rbp)	# tmp160, reg
	.loc 1 114 0
	call	start_sequence	#
	.loc 1 116 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.1
	movl	$10000, %esi	#,
	movl	%eax, %edi	# word_mode.1,
	call	gen_rtx_REG	#
	movq	%rax, -64(%rbp)	# tmp161, reg
	.loc 1 118 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17493
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	%eax, zero_cost(%rip)	# zero_cost.2, zero_cost
	.loc 1 119 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.3
	movq	-64(%rbp), %rcx	# reg, tmp162
	movq	-64(%rbp), %rdx	# reg, tmp163
	movl	%eax, %esi	# word_mode.3,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	%eax, add_cost(%rip)	# add_cost.4, add_cost
	.loc 1 121 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.5
	movq	-64(%rbp), %rdx	# reg, tmp164
	movl	%eax, %esi	# word_mode.5,
	movl	$87, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movq	-64(%rbp), %rax	# reg, tmp165
	movq	%rdx, %rcx	# D.17493,
	movq	%rax, %rdx	# tmp165,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.17493,
	call	emit_insn	#
	movq	%rax, -56(%rbp)	# tmp166, shift_insn
	.loc 1 126 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.6
	movq	-64(%rbp), %rdx	# reg, tmp167
	movl	%eax, %esi	# word_mode.6,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.7
	movq	-64(%rbp), %rcx	# reg, tmp168
	movl	%eax, %esi	# word_mode.7,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movq	-64(%rbp), %rax	# reg, tmp169
	movq	%rdx, %rcx	# D.17493,
	movq	%rax, %rdx	# tmp169,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.17493,
	call	emit_insn	#
	movq	%rax, -48(%rbp)	# tmp170, shiftadd_insn
	.loc 1 133 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.8
	movq	-64(%rbp), %rdx	# reg, tmp171
	movl	%eax, %esi	# word_mode.8,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.9
	movq	-64(%rbp), %rcx	# reg, tmp172
	movl	%eax, %esi	# word_mode.9,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movq	-64(%rbp), %rax	# reg, tmp173
	movq	%rdx, %rcx	# D.17493,
	movq	%rax, %rdx	# tmp173,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdi	# D.17493,
	call	emit_insn	#
	movq	%rax, -40(%rbp)	# tmp174, shiftsub_insn
	.loc 1 139 0
	call	init_recog	#
	.loc 1 141 0
	movl	$0, shift_cost(%rip)	#, shift_cost
	.loc 1 142 0
	movl	add_cost(%rip), %eax	# add_cost, add_cost.10
	movl	%eax, shiftsub_cost(%rip)	# add_cost.10, shiftsub_cost
	movl	shiftsub_cost(%rip), %eax	# shiftsub_cost, D.17494
	movl	%eax, shiftadd_cost(%rip)	# D.17494, shiftadd_cost
	.loc 1 144 0
	movl	$1, -76(%rbp)	#, m
	jmp	.L2	#
.L6:
	.loc 1 146 0
	movl	-76(%rbp), %eax	# m, tmp176
	cltq
	movl	$32000, shiftsub_cost(,%rax,4)	#, shiftsub_cost
	movl	-76(%rbp), %eax	# m, tmp178
	cltq
	movl	shiftsub_cost(,%rax,4), %edx	# shiftsub_cost, D.17494
	movl	-76(%rbp), %eax	# m, tmp180
	cltq
	movl	%edx, shiftadd_cost(,%rax,4)	# D.17494, shiftadd_cost
	movl	-76(%rbp), %eax	# m, tmp182
	cltq
	movl	shiftadd_cost(,%rax,4), %edx	# shiftadd_cost, D.17494
	movl	-76(%rbp), %eax	# m, tmp184
	cltq
	movl	%edx, shift_cost(,%rax,4)	# D.17494, shift_cost
	.loc 1 148 0
	movq	-56(%rbp), %rax	# shift_insn, tmp185
	movq	32(%rax), %rax	# shift_insn_16->fld[3].rtx, D.17493
	movq	16(%rax), %rbx	# _36->fld[1].rtx, D.17493
	movl	-76(%rbp), %eax	# m, tmp186
	cltq
	movq	%rax, %rsi	# D.17495,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, 16(%rbx)	# D.17493, _37->fld[1].rtx
	.loc 1 149 0
	movq	-56(%rbp), %rax	# shift_insn, tmp187
	movq	32(%rax), %rax	# shift_insn_16->fld[3].rtx, D.17493
	leaq	-80(%rbp), %rdx	#, tmp188
	movq	-56(%rbp), %rcx	# shift_insn, tmp189
	movq	%rcx, %rsi	# tmp189,
	movq	%rax, %rdi	# D.17493,
	call	recog	#
	testl	%eax, %eax	# D.17494
	js	.L3	#,
	.loc 1 150 0
	movq	-56(%rbp), %rax	# shift_insn, tmp190
	movq	32(%rax), %rax	# shift_insn_16->fld[3].rtx, D.17493
	movq	16(%rax), %rax	# _42->fld[1].rtx, D.17493
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	-76(%rbp), %edx	# m, tmp192
	movslq	%edx, %rdx	# tmp192, tmp191
	movl	%eax, shift_cost(,%rdx,4)	# D.17494, shift_cost
.L3:
	.loc 1 152 0
	movq	-48(%rbp), %rax	# shiftadd_insn, tmp193
	movq	32(%rax), %rax	# shiftadd_insn_23->fld[3].rtx, D.17493
	movq	16(%rax), %rax	# _45->fld[1].rtx, D.17493
	movq	8(%rax), %rbx	# _46->fld[0].rtx, D.17493
	.loc 1 153 0
	movl	-76(%rbp), %eax	# m, tmp194
	movl	$1, %edx	#, tmp195
	movl	%eax, %ecx	# tmp194, tmp245
	salq	%cl, %rdx	# tmp245, D.17495
	movq	%rdx, %rax	# D.17495, D.17495
	movq	%rax, %rsi	# D.17495,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, 16(%rbx)	# D.17493, _47->fld[1].rtx
	.loc 1 154 0
	movq	-48(%rbp), %rax	# shiftadd_insn, tmp196
	movq	32(%rax), %rax	# shiftadd_insn_23->fld[3].rtx, D.17493
	leaq	-80(%rbp), %rdx	#, tmp197
	movq	-48(%rbp), %rcx	# shiftadd_insn, tmp198
	movq	%rcx, %rsi	# tmp198,
	movq	%rax, %rdi	# D.17493,
	call	recog	#
	testl	%eax, %eax	# D.17494
	js	.L4	#,
	.loc 1 155 0
	movq	-48(%rbp), %rax	# shiftadd_insn, tmp199
	movq	32(%rax), %rax	# shiftadd_insn_23->fld[3].rtx, D.17493
	movq	16(%rax), %rax	# _52->fld[1].rtx, D.17493
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	-76(%rbp), %edx	# m, tmp201
	movslq	%edx, %rdx	# tmp201, tmp200
	movl	%eax, shiftadd_cost(,%rdx,4)	# D.17494, shiftadd_cost
.L4:
	.loc 1 157 0
	movq	-40(%rbp), %rax	# shiftsub_insn, tmp202
	movq	32(%rax), %rax	# shiftsub_insn_30->fld[3].rtx, D.17493
	movq	16(%rax), %rax	# _55->fld[1].rtx, D.17493
	movq	8(%rax), %rbx	# _56->fld[0].rtx, D.17493
	.loc 1 158 0
	movl	-76(%rbp), %eax	# m, tmp203
	movl	$1, %edx	#, tmp204
	movl	%eax, %ecx	# tmp203, tmp247
	salq	%cl, %rdx	# tmp247, D.17495
	movq	%rdx, %rax	# D.17495, D.17495
	movq	%rax, %rsi	# D.17495,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, 16(%rbx)	# D.17493, _57->fld[1].rtx
	.loc 1 159 0
	movq	-40(%rbp), %rax	# shiftsub_insn, tmp205
	movq	32(%rax), %rax	# shiftsub_insn_30->fld[3].rtx, D.17493
	leaq	-80(%rbp), %rdx	#, tmp206
	movq	-40(%rbp), %rcx	# shiftsub_insn, tmp207
	movq	%rcx, %rsi	# tmp207,
	movq	%rax, %rdi	# D.17493,
	call	recog	#
	testl	%eax, %eax	# D.17494
	js	.L5	#,
	.loc 1 160 0
	movq	-40(%rbp), %rax	# shiftsub_insn, tmp208
	movq	32(%rax), %rax	# shiftsub_insn_30->fld[3].rtx, D.17493
	movq	16(%rax), %rax	# _62->fld[1].rtx, D.17493
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	-76(%rbp), %edx	# m, tmp210
	movslq	%edx, %rdx	# tmp210, tmp209
	movl	%eax, shiftsub_cost(,%rdx,4)	# D.17494, shiftsub_cost
.L5:
	.loc 1 144 0
	addl	$1, -76(%rbp)	#, m
.L2:
	.loc 1 144 0 is_stmt 0 discriminator 1
	cmpl	$63, -76(%rbp)	#, m
	jle	.L6	#,
	.loc 1 163 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.11
	movq	-64(%rbp), %rdx	# reg, tmp211
	movl	%eax, %esi	# word_mode.11,
	movl	$77, %edi	#,
	call	gen_rtx_fmt_e	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movl	%eax, negate_cost(%rip)	# negate_cost.12, negate_cost
	.loc 1 166 0
	movl	$32, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.13
	movq	-64(%rbp), %rdx	# reg, tmp212
	movl	%eax, %esi	# word_mode.13,
	movl	$79, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	.loc 1 167 0
	movl	add_cost(%rip), %edx	# add_cost, add_cost.14
	addl	%edx, %edx	# D.17494
	cmpl	%edx, %eax	# D.17494, D.17494
	setle	%al	#, D.17496
	movzbl	%al, %eax	# D.17496, sdiv_pow2_cheap.15
	.loc 1 166 0
	movl	%eax, sdiv_pow2_cheap(%rip)	# sdiv_pow2_cheap.15, sdiv_pow2_cheap
	.loc 1 169 0
	movl	$32, %esi	#,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17493
	movl	word_mode(%rip), %eax	# word_mode, word_mode.16
	movq	-64(%rbp), %rdx	# reg, tmp213
	movl	%eax, %esi	# word_mode.16,
	movl	$80, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	.loc 1 170 0
	movl	add_cost(%rip), %edx	# add_cost, add_cost.17
	addl	%edx, %edx	# D.17494
	cmpl	%edx, %eax	# D.17494, D.17494
	setle	%al	#, D.17496
	movzbl	%al, %eax	# D.17496, smod_pow2_cheap.18
	.loc 1 169 0
	movl	%eax, smod_pow2_cheap(%rip)	# smod_pow2_cheap.18, smod_pow2_cheap
	.loc 1 172 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp214
	movl	%eax, -72(%rbp)	# tmp214, mode
	jmp	.L7	#
.L9:
	.loc 1 176 0
	movl	-72(%rbp), %eax	# mode, tmp215
	movl	$10000, %esi	#,
	movl	%eax, %edi	# tmp215,
	call	gen_rtx_REG	#
	movq	%rax, -64(%rbp)	# tmp216, reg
	.loc 1 177 0
	movl	-72(%rbp), %ebx	# mode, mode.19
	movq	-64(%rbp), %rcx	# reg, tmp217
	movq	-64(%rbp), %rdx	# reg, tmp218
	movl	-72(%rbp), %eax	# mode, tmp219
	movl	%eax, %esi	# tmp219,
	movl	$81, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movslq	%ebx, %rdx	# mode.19, tmp220
	movl	%eax, div_cost(,%rdx,4)	# D.17494, div_cost
	.loc 1 178 0
	movl	-72(%rbp), %ebx	# mode, mode.20
	movq	-64(%rbp), %rcx	# reg, tmp221
	movq	-64(%rbp), %rdx	# reg, tmp222
	movl	-72(%rbp), %eax	# mode, tmp223
	movl	%eax, %esi	# tmp223,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movslq	%ebx, %rdx	# mode.20, tmp224
	movl	%eax, mul_cost(,%rdx,4)	# D.17494, mul_cost
	.loc 1 179 0
	movl	-72(%rbp), %eax	# mode, mode.21
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17497
	movzbl	%al, %eax	# D.17497, tmp226
	movl	%eax, -68(%rbp)	# tmp226, wider_mode
	.loc 1 180 0
	cmpl	$0, -68(%rbp)	#, wider_mode
	je	.L8	#,
	.loc 1 182 0
	movl	-68(%rbp), %r12d	# wider_mode, wider_mode.22
	.loc 1 183 0
	movq	-64(%rbp), %rdx	# reg, tmp227
	movl	-68(%rbp), %eax	# wider_mode, tmp228
	movl	%eax, %esi	# tmp228,
	movl	$121, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rbx	#, D.17493
	movq	-64(%rbp), %rdx	# reg, tmp229
	movl	-68(%rbp), %eax	# wider_mode, tmp230
	movl	%eax, %esi	# tmp230,
	movl	$121, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdx	#, D.17493
	movl	-68(%rbp), %eax	# wider_mode, tmp231
	movq	%rbx, %rcx	# D.17493,
	movl	%eax, %esi	# tmp231,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movslq	%r12d, %rdx	# wider_mode.22, tmp232
	movl	%eax, mul_widen_cost(,%rdx,4)	# D.17494, mul_widen_cost
	.loc 1 187 0
	movl	-72(%rbp), %r13d	# mode, mode.23
	.loc 1 188 0
	movl	-72(%rbp), %eax	# mode, mode.24
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17498
	movzwl	%ax, %eax	# D.17498, D.17495
	movq	%rax, %rsi	# D.17495,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.17493
	movq	-64(%rbp), %rdx	# reg, tmp234
	movl	-68(%rbp), %eax	# wider_mode, tmp235
	movl	%eax, %esi	# tmp235,
	movl	$121, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %r12	#, D.17493
	movq	-64(%rbp), %rdx	# reg, tmp236
	movl	-68(%rbp), %eax	# wider_mode, tmp237
	movl	%eax, %esi	# tmp237,
	movl	$121, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdx	#, D.17493
	movl	-68(%rbp), %eax	# wider_mode, tmp238
	movq	%r12, %rcx	# D.17493,
	movl	%eax, %esi	# tmp238,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movl	-68(%rbp), %eax	# wider_mode, tmp239
	movq	%rbx, %rcx	# D.17493,
	movl	%eax, %esi	# tmp239,
	movl	$90, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17493
	movl	-72(%rbp), %eax	# mode, tmp240
	movl	%eax, %esi	# tmp240,
	movl	$122, %edi	#,
	call	gen_rtx_fmt_e	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17493,
	call	rtx_cost	#
	movslq	%r13d, %rdx	# mode.23, tmp241
	movl	%eax, mul_highpart_cost(,%rdx,4)	# D.17494, mul_highpart_cost
.L8:
	.loc 1 174 0
	movl	-72(%rbp), %eax	# mode, mode.25
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17497
	movzbl	%al, %eax	# D.17497, tmp243
	movl	%eax, -72(%rbp)	# tmp243, mode
.L7:
	.loc 1 172 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, mode
	jne	.L9	#,
	.loc 1 201 0
	call	end_sequence	#
	.loc 1 202 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_expmed, .-init_expmed
	.globl	negate_rtx
	.type	negate_rtx, @function
negate_rtx:
.LFB3:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# x, x
	.loc 1 213 0
	movl	-20(%rbp), %ecx	# mode, tmp62
	movq	-32(%rbp), %rdx	# x, tmp63
	movl	-20(%rbp), %eax	# mode, tmp64
	movl	%eax, %esi	# tmp64,
	movl	$77, %edi	#,
	call	simplify_unary_operation	#
	movq	%rax, -8(%rbp)	# tmp65, result
	.loc 1 215 0
	cmpq	$0, -8(%rbp)	#, result
	jne	.L11	#,
	.loc 1 216 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17499
	movq	-32(%rbp), %rdx	# x, tmp66
	movl	-20(%rbp), %eax	# mode, tmp67
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp67,
	call	expand_unop	#
	movq	%rax, -8(%rbp)	# tmp68, result
.L11:
	.loc 1 218 0
	movq	-8(%rbp), %rax	# result, D.17500
	.loc 1 219 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	negate_rtx, .-negate_rtx
	.section	.rodata
.LC0:
	.string	"expmed.c"
	.text
	.globl	mode_for_extraction
	.type	mode_for_extraction, @function
mode_for_extraction:
.LFB4:
	.loc 1 229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# pattern, pattern
	movl	%esi, -24(%rbp)	# opno, opno
	.loc 1 232 0
	movl	-20(%rbp), %eax	# pattern, pattern
	cmpl	$1, %eax	#, pattern
	je	.L15	#,
	cmpl	$1, %eax	#, pattern
	jb	.L16	#,
	cmpl	$2, %eax	#, pattern
	je	.L17	#,
	jmp	.L22	#
.L16:
	.loc 1 237 0
	movq	$insn_data+44560, -8(%rbp)	#, data
	.loc 1 238 0
	jmp	.L18	#
.L15:
	.loc 1 245 0
	movq	$insn_data+44480, -8(%rbp)	#, data
	.loc 1 246 0
	jmp	.L18	#
.L17:
	.loc 1 253 0
	movq	$insn_data+44520, -8(%rbp)	#, data
	.loc 1 254 0
	jmp	.L18	#
.L22:
	.loc 1 259 0
	movl	$__FUNCTION__.12772, %edx	#,
	movl	$259, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L18:
	.loc 1 262 0
	cmpl	$-1, -24(%rbp)	#, opno
	jne	.L19	#,
	.loc 1 263 0
	movl	$0, %eax	#, D.17501
	jmp	.L20	#
.L19:
	.loc 1 267 0
	movq	-8(%rbp), %rax	# data, tmp72
	movq	24(%rax), %rcx	# data_1->operand, D.17502
	movl	-24(%rbp), %eax	# opno, tmp73
	movslq	%eax, %rdx	# tmp73, D.17503
	movq	%rdx, %rax	# D.17503, tmp74
	addq	%rax, %rax	# tmp74
	addq	%rdx, %rax	# D.17503, tmp74
	salq	$3, %rax	#, tmp75
	addq	%rcx, %rax	# D.17502, D.17502
	movzwl	16(%rax), %eax	# _12->mode, D.17504
	testw	%ax, %ax	# D.17504
	jne	.L21	#,
	.loc 1 268 0
	movl	word_mode(%rip), %eax	# word_mode, D.17501
	jmp	.L20	#
.L21:
	.loc 1 269 0
	movq	-8(%rbp), %rax	# data, tmp76
	movq	24(%rax), %rcx	# data_1->operand, D.17502
	movl	-24(%rbp), %eax	# opno, tmp77
	movslq	%eax, %rdx	# tmp77, D.17503
	movq	%rdx, %rax	# D.17503, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# D.17503, tmp78
	salq	$3, %rax	#, tmp79
	addq	%rcx, %rax	# D.17502, D.17502
	movzwl	16(%rax), %eax	# _18->mode, D.17504
	movzwl	%ax, %eax	# D.17504, D.17501
.L20:
	.loc 1 270 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	mode_for_extraction, .-mode_for_extraction
	.globl	store_bit_field
	.type	store_bit_field, @function
store_bit_field:
.LFB5:
	.loc 1 296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# str_rtx, str_rtx
	movq	%rsi, -176(%rbp)	# bitsize, bitsize
	movq	%rdx, -184(%rbp)	# bitnum, bitnum
	movl	%ecx, -188(%rbp)	# fieldmode, fieldmode
	movq	%r8, -200(%rbp)	# value, value
	movq	%r9, -208(%rbp)	# total_size, total_size
	.loc 1 298 0
	movq	-168(%rbp), %rax	# str_rtx, tmp342
	movzwl	(%rax), %eax	# str_rtx_50(D)->code, D.17507
	.loc 1 297 0
	cmpw	$66, %ax	#, D.17507
	je	.L24	#,
	.loc 1 298 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.28
	andl	$33554432, %eax	#, D.17508
	.loc 1 297 0 discriminator 1
	testl	%eax, %eax	# D.17508
	je	.L25	#,
	.loc 1 297 0 is_stmt 0 discriminator 3
	movl	$64, %eax	#, iftmp.27
	jmp	.L27	#
.L25:
	.loc 1 297 0 discriminator 4
	movl	$32, %eax	#, iftmp.27
	jmp	.L27	#
.L24:
	.loc 1 297 0 discriminator 2
	movl	$8, %eax	#, iftmp.26
.L27:
	.loc 1 297 0 discriminator 5
	movl	%eax, -140(%rbp)	# iftmp.26, unit
	.loc 1 299 0 is_stmt 1 discriminator 5
	movl	-140(%rbp), %ebx	# unit, D.17509
	movq	-184(%rbp), %rax	# bitnum, tmp345
	movl	$0, %edx	#, tmp344
	divq	%rbx	# D.17509
	movq	%rax, -88(%rbp)	# tmp343, offset
	.loc 1 300 0 discriminator 5
	movl	-140(%rbp), %ecx	# unit, D.17509
	movq	-184(%rbp), %rax	# bitnum, tmp347
	movl	$0, %edx	#, tmp348
	divq	%rcx	# D.17509
	movq	%rdx, -48(%rbp)	# tmp348, bitpos
	.loc 1 301 0 discriminator 5
	movq	-168(%rbp), %rax	# str_rtx, tmp350
	movq	%rax, -80(%rbp)	# tmp350, op0
	.loc 1 304 0 discriminator 5
	movl	$3, %esi	#,
	movl	$0, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -136(%rbp)	# tmp351, op_mode
	.loc 1 308 0 discriminator 5
	cmpq	$0, -208(%rbp)	#, total_size
	js	.L28	#,
	.loc 1 309 0
	movq	-208(%rbp), %rax	# total_size, total_size.29
	movq	-48(%rbp), %rdx	# bitpos, tmp352
	shrq	$7, %rdx	#, D.17509
	.loc 1 310 0
	salq	$4, %rdx	#, D.17509
	.loc 1 309 0
	subq	%rdx, %rax	# D.17509, D.17509
	movq	%rax, -208(%rbp)	# D.17509, total_size
	.loc 1 312 0
	jmp	.L29	#
.L28:
	jmp	.L29	#
.L32:
	.loc 1 319 0
	movq	-80(%rbp), %rax	# op0, tmp353
	movl	16(%rax), %eax	# op0_8->fld[1].rtuint, D.17510
	movl	target_flags(%rip), %edx	# target_flags, target_flags.31
	andl	$33554432, %edx	#, D.17508
	testl	%edx, %edx	# D.17508
	je	.L30	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.30
	jmp	.L31	#
.L30:
	.loc 1 319 0 discriminator 2
	movl	$4, %ebx	#, iftmp.30
.L31:
	.loc 1 319 0 discriminator 3
	movl	$0, %edx	#, tmp355
	divl	%ebx	# iftmp.30
	movl	%eax, %eax	# D.17510, D.17509
	addq	%rax, -88(%rbp)	# D.17509, offset
	.loc 1 322 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# op0, tmp356
	movq	8(%rax), %rax	# op0_8->fld[0].rtx, tmp357
	movq	%rax, -80(%rbp)	# tmp357, op0
.L29:
	.loc 1 312 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp358
	movzwl	(%rax), %eax	# op0_8->code, D.17507
	cmpw	$63, %ax	#, D.17507
	je	.L32	#,
	.loc 1 325 0
	movq	-200(%rbp), %rax	# value, tmp359
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp359,
	call	protect_from_queue	#
	movq	%rax, -200(%rbp)	# tmp360, value
	.loc 1 327 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.32
	testl	%eax, %eax	# flag_force_mem.32
	je	.L33	#,
.LBB2:
	.loc 1 329 0
	movl	generating_concat_p(%rip), %eax	# generating_concat_p, tmp361
	movl	%eax, -132(%rbp)	# tmp361, old_generating_concat_p
	.loc 1 330 0
	movl	$0, generating_concat_p(%rip)	#, generating_concat_p
	.loc 1 331 0
	movq	-200(%rbp), %rax	# value, tmp362
	movq	%rax, %rdi	# tmp362,
	call	force_not_mem	#
	movq	%rax, -200(%rbp)	# tmp363, value
	.loc 1 332 0
	movl	-132(%rbp), %eax	# old_generating_concat_p, tmp364
	movl	%eax, generating_concat_p(%rip)	# tmp364, generating_concat_p
.L33:
.LBE2:
	.loc 1 342 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.34
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L34	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.33
	jmp	.L35	#
.L34:
	.loc 1 342 0 discriminator 2
	movl	$32, %ebx	#, iftmp.33
.L35:
	.loc 1 342 0 discriminator 3
	movq	-184(%rbp), %rax	# bitnum, tmp365
	movl	$0, %edx	#, tmp366
	divq	%rbx	# iftmp.33
	movq	%rdx, %rcx	# tmp366, tmp366
	movq	%rcx, %rax	# tmp366, D.17509
	shrq	$3, %rax	#, D.17509
	movl	%eax, %edx	# D.17509, D.17511
	.loc 1 343 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.36
	andl	$33554432, %eax	#, D.17508
	.loc 1 342 0 discriminator 3
	testl	%eax, %eax	# D.17508
	je	.L36	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.35
	jmp	.L37	#
.L36:
	.loc 1 342 0 discriminator 2
	movl	$4, %eax	#, iftmp.35
.L37:
	.loc 1 342 0 discriminator 3
	movq	-88(%rbp), %rcx	# offset, tmp368
	imull	%ecx, %eax	# D.17511, D.17511
	addl	%edx, %eax	# D.17511, D.17511
	movl	%eax, -128(%rbp)	# D.17511, byte_offset
	.loc 1 345 0 is_stmt 1 discriminator 3
	cmpq	$0, -48(%rbp)	#, bitpos
	jne	.L38	#,
	.loc 1 346 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.37
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, D.17509
	cmpq	-176(%rbp), %rax	# bitsize, D.17509
	jne	.L38	#,
	.loc 1 347 0
	movq	-80(%rbp), %rax	# op0, tmp370
	movzwl	(%rax), %eax	# op0_8->code, D.17507
	cmpw	$66, %ax	#, D.17507
	je	.L39	#,
	.loc 1 348 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.38
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	movzbl	%al, %edx	# D.17512, D.17508
	movl	target_flags(%rip), %eax	# target_flags, target_flags.40
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L40	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.39
	jmp	.L41	#
.L40:
	.loc 1 348 0 discriminator 2
	movl	$4, %eax	#, iftmp.39
.L41:
	.loc 1 347 0 is_stmt 1
	cmpl	%eax, %edx	# iftmp.39, D.17508
	jge	.L42	#,
	.loc 1 349 0
	movq	-80(%rbp), %rax	# op0, tmp372
	movzbl	2(%rax), %eax	# op0_8->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17512
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.41
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	cmpb	%al, %dl	# D.17512, D.17512
	jne	.L38	#,
.L42:
	.loc 1 350 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.42
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	movzbl	%al, %ecx	# D.17512, D.17508
	movl	-128(%rbp), %eax	# byte_offset, tmp376
	cltd
	idivl	%ecx	# D.17508
	movl	%edx, %eax	# tmp377, D.17508
	testl	%eax, %eax	# D.17508
	jne	.L38	#,
.L39:
	.loc 1 355 0
	movq	-80(%rbp), %rax	# op0, tmp379
	movzbl	2(%rax), %eax	# op0_8->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-188(%rbp), %eax	# fieldmode, D.17510
	je	.L43	#,
	.loc 1 357 0
	movq	-80(%rbp), %rax	# op0, tmp380
	movzwl	(%rax), %eax	# op0_8->code, D.17507
	cmpw	$63, %ax	#, D.17507
	jne	.L44	#,
	.loc 1 359 0
	movq	-80(%rbp), %rax	# op0, tmp381
	movq	8(%rax), %rax	# op0_8->fld[0].rtx, D.17513
	movzbl	2(%rax), %eax	# _127->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-188(%rbp), %eax	# fieldmode, D.17510
	je	.L45	#,
	.loc 1 360 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.43
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$1, %eax	#, D.17514
	je	.L45	#,
	.loc 1 361 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.44
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$3, %eax	#, D.17514
	jne	.L46	#,
.L45:
	.loc 1 362 0
	movq	-80(%rbp), %rax	# op0, tmp384
	movq	8(%rax), %rax	# op0_8->fld[0].rtx, tmp385
	movq	%rax, -80(%rbp)	# tmp385, op0
	jmp	.L44	#
.L46:
	.loc 1 367 0
	movl	$__FUNCTION__.12791, %edx	#,
	movl	$367, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L44:
	.loc 1 369 0
	movq	-80(%rbp), %rax	# op0, tmp386
	movzwl	(%rax), %eax	# op0_9->code, D.17507
	cmpw	$61, %ax	#, D.17507
	jne	.L47	#,
	.loc 1 370 0
	movl	-128(%rbp), %edx	# byte_offset, tmp387
	movq	-80(%rbp), %rcx	# op0, tmp388
	movl	-188(%rbp), %eax	# fieldmode, tmp389
	movq	%rcx, %rsi	# tmp388,
	movl	%eax, %edi	# tmp389,
	call	gen_rtx_SUBREG	#
	movq	%rax, -80(%rbp)	# tmp390, op0
	jmp	.L43	#
.L47:
	.loc 1 372 0
	movq	-88(%rbp), %rdx	# offset, offset.45
	movl	-188(%rbp), %esi	# fieldmode, tmp391
	movq	-80(%rbp), %rax	# op0, tmp392
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp392,
	call	adjust_address_1	#
	movq	%rax, -80(%rbp)	# tmp393, op0
.L43:
	.loc 1 374 0
	movq	-200(%rbp), %rdx	# value, tmp394
	movq	-80(%rbp), %rax	# op0, tmp395
	movq	%rdx, %rsi	# tmp394,
	movq	%rax, %rdi	# tmp395,
	call	emit_move_insn	#
	.loc 1 375 0
	movq	-200(%rbp), %rax	# value, D.17506
	jmp	.L48	#
.L38:
.LBB3:
	.loc 1 383 0
	movq	-80(%rbp), %rax	# op0, tmp396
	movzbl	2(%rax), %eax	# op0_8->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17515
	movl	%eax, %edi	# D.17515,
	call	int_mode_for_mode	#
	movl	%eax, -124(%rbp)	# tmp397, imode
	.loc 1 384 0
	movq	-80(%rbp), %rax	# op0, tmp398
	movzbl	2(%rax), %eax	# op0_8->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-124(%rbp), %eax	# imode, D.17510
	je	.L49	#,
	.loc 1 386 0
	movq	-80(%rbp), %rax	# op0, tmp399
	movzwl	(%rax), %eax	# op0_8->code, D.17507
	cmpw	$66, %ax	#, D.17507
	jne	.L50	#,
	.loc 1 387 0
	movl	-124(%rbp), %esi	# imode, tmp400
	movq	-80(%rbp), %rax	# op0, tmp401
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp401,
	call	adjust_address_1	#
	movq	%rax, -80(%rbp)	# tmp402, op0
	jmp	.L49	#
.L50:
	.loc 1 388 0
	cmpl	$51, -124(%rbp)	#, imode
	je	.L51	#,
	.loc 1 389 0
	movq	-80(%rbp), %rdx	# op0, tmp403
	movl	-124(%rbp), %eax	# imode, tmp404
	movq	%rdx, %rsi	# tmp403,
	movl	%eax, %edi	# tmp404,
	call	gen_lowpart	#
	movq	%rax, -80(%rbp)	# tmp405, op0
	jmp	.L49	#
.L51:
	.loc 1 391 0
	movl	$__FUNCTION__.12791, %edx	#,
	movl	$391, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L49:
.LBE3:
	.loc 1 397 0
	movq	-80(%rbp), %rax	# op0, tmp406
	movzwl	(%rax), %eax	# op0_11->code, D.17507
	cmpw	$66, %ax	#, D.17507
	jne	.L127	#,
	.loc 1 399 0
	movq	-80(%rbp), %rax	# op0, tmp407
	movq	%rax, %rdi	# tmp407,
	call	shallow_copy_rtx	#
	movq	%rax, -80(%rbp)	# tmp408, op0
	.loc 1 400 0
	movq	-80(%rbp), %rax	# op0, tmp409
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp409,
	call	set_mem_alias_set	#
	.loc 1 401 0
	movq	-80(%rbp), %rax	# op0, tmp410
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp410,
	call	set_mem_expr	#
.L127:
	.loc 1 415 0
	movq	-80(%rbp), %rax	# op0, tmp411
	movzwl	(%rax), %eax	# op0_12->code, D.17507
	cmpw	$66, %ax	#, D.17507
	je	.L53	#,
	.loc 1 416 0
	cmpq	$0, -48(%rbp)	#, bitpos
	jne	.L53	#,
	.loc 1 417 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.46
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, D.17509
	cmpq	-176(%rbp), %rax	# bitsize, D.17509
	jne	.L53	#,
	.loc 1 418 0
	movq	optab_table+248(%rip), %rax	# optab_table, D.17516
	movl	-188(%rbp), %edx	# fieldmode, fieldmode.47
	movslq	%edx, %rdx	# fieldmode.47, tmp413
	salq	$4, %rdx	#, tmp414
	addq	%rdx, %rax	# tmp414, tmp415
	movl	8(%rax), %eax	# _154->handlers[fieldmode.47_155].insn_code, D.17517
	cmpl	$1317, %eax	#, D.17517
	je	.L53	#,
.LBB4:
	.loc 1 421 0
	movq	optab_table+248(%rip), %rax	# optab_table, D.17516
	movl	-188(%rbp), %edx	# fieldmode, fieldmode.48
	movslq	%edx, %rdx	# fieldmode.48, tmp416
	salq	$4, %rdx	#, tmp417
	addq	%rdx, %rax	# tmp417, tmp418
	movl	8(%rax), %eax	# _157->handlers[fieldmode.48_158].insn_code, D.17517
	movl	%eax, -120(%rbp)	# D.17517, icode
	.loc 1 424 0
	movq	-200(%rbp), %rax	# value, tmp419
	movzwl	(%rax), %eax	# value_1->code, D.17507
	cmpw	$54, %ax	#, D.17507
	je	.L54	#,
	.loc 1 424 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# value, tmp420
	movzwl	(%rax), %eax	# value_1->code, D.17507
	cmpw	$61, %ax	#, D.17507
	jne	.L55	#,
.L54:
	.loc 1 425 0 is_stmt 1
	movq	-200(%rbp), %rdx	# value, tmp421
	movl	-188(%rbp), %eax	# fieldmode, tmp422
	movq	%rdx, %rsi	# tmp421,
	movl	%eax, %edi	# tmp422,
	call	gen_lowpart	#
	movq	%rax, -200(%rbp)	# tmp423, value
	jmp	.L56	#
.L55:
	.loc 1 426 0
	movq	-200(%rbp), %rax	# value, tmp424
	movzwl	(%rax), %eax	# value_1->code, D.17507
	cmpw	$68, %ax	#, D.17507
	je	.L56	#,
	.loc 1 427 0
	movq	-200(%rbp), %rax	# value, tmp425
	movzwl	(%rax), %eax	# value_1->code, D.17507
	cmpw	$67, %ax	#, D.17507
	je	.L56	#,
	.loc 1 428 0
	movq	-200(%rbp), %rax	# value, tmp426
	movzwl	(%rax), %eax	# value_1->code, D.17507
	.loc 1 426 0
	cmpw	$58, %ax	#, D.17507
	je	.L56	#,
	.loc 1 429 0
	movq	-200(%rbp), %rcx	# value, tmp427
	movl	-188(%rbp), %eax	# fieldmode, tmp428
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp427,
	movl	%eax, %edi	# tmp428,
	call	convert_to_mode	#
	movq	%rax, -200(%rbp)	# tmp429, value
.L56:
	.loc 1 431 0
	movl	-120(%rbp), %eax	# icode, tmp431
	movslq	%eax, %rdx	# tmp431, tmp430
	movq	%rdx, %rax	# tmp430, tmp432
	salq	$2, %rax	#, tmp432
	addq	%rdx, %rax	# tmp430, tmp432
	salq	$3, %rax	#, tmp433
	addq	$insn_data+24, %rax	#, tmp434
	movq	(%rax), %rax	# insn_data[icode_160].operand, D.17518
	addq	$24, %rax	#, D.17518
	movq	(%rax), %rax	# _169->predicate, D.17519
	movl	-188(%rbp), %ecx	# fieldmode, tmp435
	movq	-200(%rbp), %rdx	# value, tmp436
	movl	%ecx, %esi	# tmp435,
	movq	%rdx, %rdi	# tmp436,
	call	*%rax	# D.17519
	testl	%eax, %eax	# D.17508
	jne	.L57	#,
	.loc 1 432 0
	movq	-200(%rbp), %rdx	# value, tmp437
	movl	-188(%rbp), %eax	# fieldmode, tmp438
	movq	%rdx, %rsi	# tmp437,
	movl	%eax, %edi	# tmp438,
	call	copy_to_mode_reg	#
	movq	%rax, -200(%rbp)	# tmp439, value
.L57:
	.loc 1 434 0
	movq	-80(%rbp), %rax	# op0, tmp440
	movzwl	(%rax), %eax	# op0_12->code, D.17507
	cmpw	$63, %ax	#, D.17507
	jne	.L58	#,
	.loc 1 436 0
	movq	-80(%rbp), %rax	# op0, tmp441
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, D.17513
	movzbl	2(%rax), %eax	# _174->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-188(%rbp), %eax	# fieldmode, D.17510
	je	.L59	#,
	.loc 1 437 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.49
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$1, %eax	#, D.17514
	je	.L59	#,
	.loc 1 438 0
	movl	-188(%rbp), %eax	# fieldmode, fieldmode.50
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$3, %eax	#, D.17514
	jne	.L60	#,
.L59:
	.loc 1 439 0
	movq	-80(%rbp), %rax	# op0, tmp444
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, tmp445
	movq	%rax, -80(%rbp)	# tmp445, op0
	jmp	.L58	#
.L60:
	.loc 1 444 0
	movl	$__FUNCTION__.12791, %edx	#,
	movl	$444, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L58:
	.loc 1 448 0
	movl	-120(%rbp), %eax	# icode, tmp447
	movslq	%eax, %rdx	# tmp447, tmp446
	movq	%rdx, %rax	# tmp446, tmp448
	salq	$2, %rax	#, tmp448
	addq	%rdx, %rax	# tmp446, tmp448
	salq	$3, %rax	#, tmp449
	addq	$insn_data+16, %rax	#, tmp450
	movq	(%rax), %rbx	# insn_data[icode_160].genfun, D.17520
	.loc 1 449 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.52
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L61	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movl	$64, %ecx	#, iftmp.51
	jmp	.L62	#
.L61:
	.loc 1 449 0 discriminator 2
	movl	$32, %ecx	#, iftmp.51
.L62:
	.loc 1 449 0 discriminator 3
	movq	-184(%rbp), %rax	# bitnum, tmp451
	movl	$0, %edx	#, tmp452
	divq	%rcx	# iftmp.51
	movq	%rdx, %rcx	# tmp452, tmp452
	movq	%rcx, %rax	# tmp452, D.17509
	shrq	$3, %rax	#, D.17509
	.loc 1 447 0 is_stmt 1 discriminator 3
	movl	%eax, %edx	# D.17509, D.17511
	.loc 1 450 0 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.54
	andl	$33554432, %eax	#, D.17508
	.loc 1 447 0 discriminator 3
	testl	%eax, %eax	# D.17508
	je	.L63	#,
	.loc 1 447 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.53
	jmp	.L64	#
.L63:
	.loc 1 447 0 discriminator 2
	movl	$4, %eax	#, iftmp.53
.L64:
	.loc 1 447 0 discriminator 3
	movq	-88(%rbp), %rcx	# offset, tmp454
	imull	%ecx, %eax	# D.17511, D.17511
	addl	%edx, %eax	# D.17511, D.17511
	movl	%eax, %edx	# D.17511, D.17508
	movq	-80(%rbp), %rcx	# op0, tmp455
	movl	-188(%rbp), %eax	# fieldmode, tmp456
	movq	%rcx, %rsi	# tmp455,
	movl	%eax, %edi	# tmp456,
	call	gen_rtx_SUBREG	#
	movq	-200(%rbp), %rdx	# value, tmp457
	movq	%rdx, %rsi	# tmp457,
	movq	%rax, %rdi	# D.17513,
	movl	$0, %eax	#,
	call	*%rbx	# D.17520
	movq	%rax, %rdi	# D.17513,
	call	emit_insn	#
	.loc 1 453 0 is_stmt 1 discriminator 3
	movq	-200(%rbp), %rax	# value, D.17506
	jmp	.L48	#
.L53:
.LBE4:
	.loc 1 458 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.56
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L65	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.55
	jmp	.L66	#
.L65:
	.loc 1 458 0 discriminator 2
	movl	$32, %eax	#, iftmp.55
.L66:
	.loc 1 458 0 discriminator 3
	cmpq	-176(%rbp), %rax	# bitsize, iftmp.55
	jae	.L67	#,
.LBB5:
	.loc 1 466 0 is_stmt 1
	movl	$0, -116(%rbp)	#, backwards
	.loc 1 467 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.58
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L68	#,
	.loc 1 467 0 is_stmt 0 discriminator 1
	movl	$63, %eax	#, iftmp.57
	jmp	.L69	#
.L68:
	.loc 1 467 0 discriminator 2
	movl	$31, %eax	#, iftmp.57
.L69:
	.loc 1 467 0 discriminator 3
	movq	-176(%rbp), %rdx	# bitsize, tmp458
	addq	%rdx, %rax	# tmp458, D.17509
	movl	target_flags(%rip), %edx	# target_flags, target_flags.60
	andl	$33554432, %edx	#, D.17508
	testl	%edx, %edx	# D.17508
	je	.L70	#,
	.loc 1 467 0 discriminator 1
	movl	$64, %ebx	#, iftmp.59
	jmp	.L71	#
.L70:
	.loc 1 467 0 discriminator 2
	movl	$32, %ebx	#, iftmp.59
.L71:
	.loc 1 467 0 discriminator 3
	movl	$0, %edx	#, tmp460
	divq	%rbx	# iftmp.59
	movl	%eax, -112(%rbp)	# D.17509, nwords
	.loc 1 475 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.62
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L72	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.61
	jmp	.L73	#
.L72:
	.loc 1 475 0 discriminator 2
	movl	$32, %eax	#, iftmp.61
.L73:
	.loc 1 475 0 discriminator 3
	imull	-112(%rbp), %eax	# nwords, D.17510
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17510,
	call	smallest_mode_for_size	#
	movl	%eax, -188(%rbp)	# tmp461, fieldmode
	.loc 1 477 0 is_stmt 1 discriminator 3
	movl	$0, -148(%rbp)	#, i
	jmp	.L74	#
.L89:
.LBB6:
	.loc 1 481 0
	cmpl	$0, -116(%rbp)	#, backwards
	je	.L75	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp462
	movl	-112(%rbp), %edx	# nwords, tmp463
	subl	%eax, %edx	# tmp462, D.17510
	movl	%edx, %eax	# D.17510, D.17510
	subl	$1, %eax	#, iftmp.63
	jmp	.L76	#
.L75:
	.loc 1 481 0 discriminator 2
	movl	-148(%rbp), %eax	# i, iftmp.63
.L76:
	.loc 1 481 0 discriminator 3
	movl	%eax, -108(%rbp)	# iftmp.63, wordnum
	.loc 1 482 0 is_stmt 1 discriminator 3
	cmpl	$0, -116(%rbp)	#, backwards
	je	.L77	#,
	.loc 1 483 0
	movq	-176(%rbp), %rax	# bitsize, tmp464
	movl	%eax, %edx	# tmp464, D.17508
	movl	-148(%rbp), %eax	# i, i.65
	notl	%eax	# D.17508
	movl	%eax, %ecx	# D.17508, D.17508
	movl	target_flags(%rip), %eax	# target_flags, target_flags.67
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L78	#,
	.loc 1 483 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.66
	jmp	.L79	#
.L78:
	.loc 1 483 0 discriminator 2
	movl	$32, %eax	#, iftmp.66
.L79:
	.loc 1 483 0 discriminator 1
	imull	%ecx, %eax	# D.17508, D.17508
	addl	%edx, %eax	# D.17508, D.17508
	movl	$0, %edx	#, tmp465
	testl	%eax, %eax	# D.17508
	cmovs	%edx, %eax	# D.17508,, tmp465, D.17508
	jmp	.L80	#
.L77:
	.loc 1 486 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.69
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L81	#,
	.loc 1 486 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.68
	jmp	.L82	#
.L81:
	.loc 1 486 0 discriminator 2
	movl	$32, %eax	#, iftmp.68
.L82:
	.loc 1 486 0 discriminator 3
	movl	-148(%rbp), %edx	# i, i.70
	imull	%edx, %eax	# i.70, D.17508
.L80:
	.loc 1 482 0 is_stmt 1 discriminator 1
	movl	%eax, -104(%rbp)	# iftmp.64, bit_offset
	.loc 1 492 0 discriminator 1
	movq	-200(%rbp), %rax	# value, tmp466
	movzbl	2(%rax), %eax	# value_1->mode, D.17512
	.loc 1 488 0 discriminator 1
	testb	%al, %al	# D.17512
	je	.L83	#,
	.loc 1 494 0
	movq	-200(%rbp), %rax	# value, tmp467
	movzbl	2(%rax), %eax	# value_1->mode, D.17512
	.loc 1 488 0
	movzbl	%al, %eax	# D.17512, iftmp.71
	jmp	.L84	#
.L83:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# fieldmode, iftmp.71
.L84:
	.loc 1 488 0 discriminator 2
	movl	-108(%rbp), %esi	# wordnum, tmp468
	movq	-200(%rbp), %rcx	# value, tmp469
	movl	%eax, %edx	# iftmp.71,
	movq	%rcx, %rdi	# tmp469,
	call	operand_subword_force	#
	movq	%rax, %rdi	#, D.17513
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.72
	movl	-104(%rbp), %edx	# bit_offset, D.17509
	movq	-184(%rbp), %rax	# bitnum, tmp470
	leaq	(%rdx,%rax), %r10	#, D.17509
	movl	target_flags(%rip), %eax	# target_flags, target_flags.74
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L85	#,
	.loc 1 488 0 discriminator 1
	movl	$64, %eax	#, iftmp.73
	jmp	.L86	#
.L85:
	.loc 1 488 0 discriminator 2
	movl	$32, %eax	#, iftmp.73
.L86:
	.loc 1 488 0 discriminator 3
	imull	-148(%rbp), %eax	# i, D.17510
	movl	%eax, %eax	# D.17510, D.17509
	movq	-176(%rbp), %rdx	# bitsize, tmp471
	subq	%rax, %rdx	# D.17509, D.17509
	movl	target_flags(%rip), %eax	# target_flags, target_flags.76
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L87	#,
	movl	$64, %eax	#, iftmp.75
	jmp	.L88	#
.L87:
	.loc 1 488 0 discriminator 4
	movl	$32, %eax	#, iftmp.75
.L88:
	.loc 1 488 0 discriminator 5
	cmpq	%rax, %rdx	# iftmp.75, D.17509
	cmovbe	%rdx, %rax	# D.17509,, D.17509
	movq	%rax, %rsi	# D.17509, D.17509
	movq	-208(%rbp), %rdx	# total_size, tmp472
	movq	-80(%rbp), %rax	# op0, tmp473
	movq	%rdx, %r9	# tmp472,
	movq	%rdi, %r8	# D.17513,
	movq	%r10, %rdx	# D.17509,
	movq	%rax, %rdi	# tmp473,
	call	store_bit_field	#
.LBE6:
	.loc 1 477 0 is_stmt 1 discriminator 5
	addl	$1, -148(%rbp)	#, i
.L74:
	.loc 1 477 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp474
	cmpl	-112(%rbp), %eax	# nwords, tmp474
	jb	.L89	#,
	.loc 1 497 0 is_stmt 1
	movq	-200(%rbp), %rax	# value, D.17506
	jmp	.L48	#
.L67:
.LBE5:
	.loc 1 506 0
	movq	-80(%rbp), %rax	# op0, tmp475
	movzwl	(%rax), %eax	# op0_12->code, D.17507
	cmpw	$66, %ax	#, D.17507
	je	.L90	#,
	.loc 1 508 0
	cmpq	$0, -88(%rbp)	#, offset
	jne	.L91	#,
	.loc 1 509 0
	movq	-80(%rbp), %rax	# op0, tmp476
	movzbl	2(%rax), %eax	# op0_12->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	movzbl	%al, %edx	# D.17512, D.17508
	movl	target_flags(%rip), %eax	# target_flags, target_flags.78
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L92	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.77
	jmp	.L93	#
.L92:
	.loc 1 509 0 discriminator 2
	movl	$4, %eax	#, iftmp.77
.L93:
	.loc 1 509 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.77, D.17508
	jle	.L94	#,
.L91:
	.loc 1 511 0 is_stmt 1
	movq	-80(%rbp), %rax	# op0, tmp478
	movzwl	(%rax), %eax	# op0_12->code, D.17507
	cmpw	$61, %ax	#, D.17507
	je	.L95	#,
	.loc 1 517 0
	movq	-80(%rbp), %rax	# op0, tmp479
	movzwl	(%rax), %eax	# op0_12->code, D.17507
	cmpw	$63, %ax	#, D.17507
	jne	.L96	#,
	.loc 1 518 0
	movq	-80(%rbp), %rax	# op0, tmp480
	movzbl	2(%rax), %eax	# op0_12->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17512
	.loc 1 519 0
	movq	-80(%rbp), %rax	# op0, tmp482
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, D.17513
	movzbl	2(%rax), %eax	# _283->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	.loc 1 518 0
	cmpb	%al, %dl	# D.17512, D.17512
	jne	.L96	#,
	.loc 1 520 0
	movq	-80(%rbp), %rax	# op0, tmp484
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, tmp485
	movq	%rax, -80(%rbp)	# tmp485, op0
	jmp	.L95	#
.L96:
	.loc 1 522 0
	movl	$__FUNCTION__.12791, %edx	#,
	movl	$522, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L95:
	.loc 1 525 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.80
	andl	$33554432, %eax	#, D.17508
	.loc 1 524 0
	testl	%eax, %eax	# D.17508
	je	.L97	#,
	.loc 1 524 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.79
	jmp	.L98	#
.L97:
	.loc 1 524 0 discriminator 2
	movl	$4, %eax	#, iftmp.79
.L98:
	.loc 1 524 0 discriminator 3
	movq	-88(%rbp), %rdx	# offset, tmp486
	imull	%edx, %eax	# D.17511, D.17511
	movl	%eax, %ebx	# D.17511, D.17508
	movl	target_flags(%rip), %eax	# target_flags, target_flags.82
	andl	$33554432, %eax	#, D.17508
	testl	%eax, %eax	# D.17508
	je	.L99	#,
	.loc 1 524 0 discriminator 4
	movl	$64, %eax	#, iftmp.81
	jmp	.L100	#
.L99:
	.loc 1 524 0 discriminator 5
	movl	$32, %eax	#, iftmp.81
.L100:
	.loc 1 524 0 discriminator 6
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# iftmp.81,
	call	mode_for_size	#
	movq	-80(%rbp), %rcx	# op0, tmp487
	movl	%ebx, %edx	# D.17508,
	movq	%rcx, %rsi	# tmp487,
	movl	%eax, %edi	# D.17515,
	call	gen_rtx_SUBREG	#
	movq	%rax, -80(%rbp)	# tmp488, op0
.L94:
	.loc 1 527 0 is_stmt 1
	movq	$0, -88(%rbp)	#, offset
	jmp	.L101	#
.L90:
	.loc 1 530 0
	movq	-80(%rbp), %rax	# op0, tmp489
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp489,
	call	protect_from_queue	#
	movq	%rax, -80(%rbp)	# tmp490, op0
.L101:
	.loc 1 536 0
	movq	-200(%rbp), %rax	# value, tmp491
	movzbl	2(%rax), %eax	# value_1->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$1, %eax	#, D.17514
	je	.L102	#,
	.loc 1 537 0
	movq	-200(%rbp), %rax	# value, tmp493
	movzbl	2(%rax), %eax	# value_1->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17514
	cmpl	$3, %eax	#, D.17514
	je	.L102	#,
	.loc 1 538 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.83
	movq	-200(%rbp), %rdx	# value, tmp495
	movq	%rdx, %rsi	# tmp495,
	movl	%eax, %edi	# word_mode.83,
	call	gen_lowpart	#
	movq	%rax, -200(%rbp)	# tmp496, value
.L102:
	.loc 1 544 0
	movq	-200(%rbp), %rax	# value, tmp497
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	.loc 1 543 0
	cmpb	$51, %al	#, D.17512
	je	.L103	#,
	.loc 1 545 0
	cmpq	$1, -176(%rbp)	#, bitsize
	jne	.L104	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# value, tmp498
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$54, %ax	#, D.17507
	je	.L103	#,
.L104:
	.loc 1 547 0 is_stmt 1
	movl	-136(%rbp), %eax	# op_mode, op_mode.84
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, D.17509
	cmpq	-176(%rbp), %rax	# bitsize, D.17509
	jb	.L103	#,
	.loc 1 548 0
	movq	-80(%rbp), %rax	# op0, tmp500
	movzwl	(%rax), %eax	# op0_16->code, D.17507
	cmpw	$61, %ax	#, D.17507
	je	.L105	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp501
	movzwl	(%rax), %eax	# op0_16->code, D.17507
	cmpw	$63, %ax	#, D.17507
	jne	.L106	#,
.L105:
	.loc 1 549 0 is_stmt 1 discriminator 2
	movq	-48(%rbp), %rax	# bitpos, tmp502
	movq	-176(%rbp), %rdx	# bitsize, tmp503
	addq	%rax, %rdx	# tmp502, D.17509
	movl	-136(%rbp), %eax	# op_mode, op_mode.85
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, D.17509
	.loc 1 548 0 discriminator 2
	cmpq	%rax, %rdx	# D.17509, D.17509
	ja	.L103	#,
.L106:
.LBB7:
	.loc 1 551 0
	movq	-48(%rbp), %rax	# bitpos, tmp505
	movl	%eax, -100(%rbp)	# tmp505, xbitpos
	.loc 1 553 0
	movq	-80(%rbp), %rax	# op0, tmp506
	movq	%rax, -64(%rbp)	# tmp506, xop0
	.loc 1 554 0
	call	get_last_insn	#
	movq	%rax, -40(%rbp)	# tmp507, last
	.loc 1 556 0
	movl	$3, %esi	#,
	movl	$0, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -96(%rbp)	# tmp508, maxmode
	.loc 1 557 0
	movl	volatile_ok(%rip), %eax	# volatile_ok, tmp509
	movl	%eax, -92(%rbp)	# tmp509, save_volatile_ok
	.loc 1 559 0
	movl	$1, volatile_ok(%rip)	#, volatile_ok
	.loc 1 565 0
	movq	-80(%rbp), %rax	# op0, tmp510
	movzwl	(%rax), %eax	# op0_16->code, D.17507
	cmpw	$66, %ax	#, D.17507
	jne	.L107	#,
	.loc 1 566 0
	movq	insn_data+44584(%rip), %rax	# insn_data[1114].operand, D.17518
	.loc 1 567 0
	movq	(%rax), %rax	# _328->predicate, D.17519
	movq	-80(%rbp), %rdx	# op0, tmp511
	movl	$0, %esi	#,
	movq	%rdx, %rdi	# tmp511,
	call	*%rax	# D.17519
	.loc 1 566 0
	testl	%eax, %eax	# D.17508
	jne	.L107	#,
.LBB8:
	.loc 1 577 0
	movq	-80(%rbp), %rax	# op0, tmp512
	movzbl	2(%rax), %eax	# op0_16->mode, D.17512
	cmpb	$51, %al	#, D.17512
	je	.L108	#,
	.loc 1 578 0
	movq	-80(%rbp), %rax	# op0, tmp513
	movzbl	2(%rax), %eax	# op0_16->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17512
	movl	-96(%rbp), %eax	# maxmode, maxmode.86
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	cmpb	%al, %dl	# D.17512, D.17512
	jbe	.L109	#,
.L108:
	.loc 1 581 0
	movq	-80(%rbp), %rax	# op0, tmp516
	movzbl	3(%rax), %eax	# *op0_16, tmp519
	shrb	$3, %al	#, D.17521
	andl	$1, %eax	#, D.17521
	.loc 1 580 0
	movzbl	%al, %ecx	# D.17521, D.17508
	movq	-80(%rbp), %rax	# op0, tmp520
	movq	16(%rax), %rax	# op0_16->fld[1].rtmem, D.17522
	testq	%rax, %rax	# D.17522
	je	.L110	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp521
	movq	16(%rax), %rax	# op0_16->fld[1].rtmem, D.17522
	movl	32(%rax), %eax	# _342->align, iftmp.87
	jmp	.L111	#
.L110:
	.loc 1 580 0 discriminator 2
	movl	$8, %eax	#, iftmp.87
.L111:
	.loc 1 580 0 discriminator 3
	movq	-184(%rbp), %rdx	# bitnum, tmp522
	movl	%edx, %esi	# tmp522, D.17508
	movq	-176(%rbp), %rdx	# bitsize, tmp523
	movl	%edx, %edi	# tmp523, D.17508
	movl	-96(%rbp), %edx	# maxmode, tmp524
	movl	%ecx, %r8d	# D.17508,
	movl	%edx, %ecx	# tmp524,
	movl	%eax, %edx	# iftmp.87,
	call	get_best_mode	#
	movl	%eax, -144(%rbp)	# tmp525, bestmode
	jmp	.L112	#
.L109:
	.loc 1 583 0 is_stmt 1
	movq	-80(%rbp), %rax	# op0, tmp526
	movzbl	2(%rax), %eax	# op0_16->mode, D.17512
	movzbl	%al, %eax	# D.17512, tmp527
	movl	%eax, -144(%rbp)	# tmp527, bestmode
.L112:
	.loc 1 585 0
	cmpl	$0, -144(%rbp)	#, bestmode
	jne	.L113	#,
	.loc 1 588 0
	jmp	.L103	#
.L113:
	.loc 1 592 0
	movl	-144(%rbp), %eax	# bestmode, bestmode.88
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, tmp529
	movl	%eax, -140(%rbp)	# tmp529, unit
	.loc 1 593 0
	movl	-140(%rbp), %ebx	# unit, D.17509
	movq	-184(%rbp), %rax	# bitnum, tmp532
	movl	$0, %edx	#, tmp531
	divq	%rbx	# D.17509
	movq	%rax, %rdx	# tmp530, D.17509
	movl	-144(%rbp), %eax	# bestmode, bestmode.89
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	movzbl	%al, %eax	# D.17512, D.17509
	imulq	%rdx, %rax	# D.17509, tmp534
	movq	%rax, -88(%rbp)	# tmp534, offset
	.loc 1 594 0
	movl	-140(%rbp), %ecx	# unit, D.17509
	movq	-184(%rbp), %rax	# bitnum, tmp536
	movl	$0, %edx	#, tmp537
	divq	%rcx	# D.17509
	movq	%rdx, -48(%rbp)	# tmp537, bitpos
	.loc 1 595 0
	movq	-88(%rbp), %rdx	# offset, offset.90
	movl	-144(%rbp), %esi	# bestmode, tmp539
	movq	-80(%rbp), %rax	# op0, tmp540
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp540,
	call	adjust_address_1	#
	movq	%rax, -80(%rbp)	# tmp541, op0
	.loc 1 599 0
	movq	-80(%rbp), %rax	# op0, tmp542
	movq	%rax, %rdi	# tmp542,
	call	copy_to_reg	#
	movq	%rax, -32(%rbp)	# tmp543, tempreg
	.loc 1 600 0
	movq	-208(%rbp), %r8	# total_size, tmp544
	movq	-200(%rbp), %rdi	# value, tmp545
	movl	-188(%rbp), %ecx	# fieldmode, tmp546
	movq	-48(%rbp), %rdx	# bitpos, tmp547
	movq	-176(%rbp), %rsi	# bitsize, tmp548
	movq	-32(%rbp), %rax	# tempreg, tmp549
	movq	%r8, %r9	# tmp544,
	movq	%rdi, %r8	# tmp545,
	movq	%rax, %rdi	# tmp549,
	call	store_bit_field	#
	.loc 1 602 0
	movq	-32(%rbp), %rdx	# tempreg, tmp550
	movq	-80(%rbp), %rax	# op0, tmp551
	movq	%rdx, %rsi	# tmp550,
	movq	%rax, %rdi	# tmp551,
	call	emit_move_insn	#
	.loc 1 603 0
	movq	-200(%rbp), %rax	# value, D.17506
	jmp	.L48	#
.L107:
.LBE8:
	.loc 1 605 0
	movl	-92(%rbp), %eax	# save_volatile_ok, tmp552
	movl	%eax, volatile_ok(%rip)	# tmp552, volatile_ok
	.loc 1 608 0
	movq	-64(%rbp), %rax	# xop0, tmp553
	movzwl	(%rax), %eax	# xop0_323->code, D.17507
	cmpw	$66, %ax	#, D.17507
	jne	.L114	#,
	.loc 1 609 0
	movq	-88(%rbp), %rdx	# offset, offset.91
	movl	byte_mode(%rip), %esi	# byte_mode, byte_mode.92
	movq	-64(%rbp), %rax	# xop0, tmp554
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp554,
	call	adjust_address_1	#
	movq	%rax, -64(%rbp)	# tmp555, xop0
.L114:
	.loc 1 613 0
	movq	-64(%rbp), %rax	# xop0, tmp556
	movzwl	(%rax), %eax	# xop0_21->code, D.17507
	cmpw	$63, %ax	#, D.17507
	jne	.L115	#,
	.loc 1 616 0
	movq	-64(%rbp), %rax	# xop0, tmp557
	movl	16(%rax), %eax	# xop0_21->fld[1].rtuint, D.17510
	movl	%eax, %edx	# D.17510, D.17508
	movq	-64(%rbp), %rax	# xop0, tmp558
	movq	8(%rax), %rcx	# xop0_21->fld[0].rtx, D.17513
	movl	-96(%rbp), %eax	# maxmode, tmp559
	movq	%rcx, %rsi	# D.17513,
	movl	%eax, %edi	# tmp559,
	call	gen_rtx_SUBREG	#
	movq	%rax, -64(%rbp)	# tmp560, xop0
.L115:
	.loc 1 617 0
	movq	-64(%rbp), %rax	# xop0, tmp561
	movzwl	(%rax), %eax	# xop0_22->code, D.17507
	cmpw	$61, %ax	#, D.17507
	jne	.L128	#,
	.loc 1 617 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# xop0, tmp562
	movzbl	2(%rax), %eax	# xop0_22->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-96(%rbp), %eax	# maxmode, D.17510
	je	.L128	#,
	.loc 1 618 0 is_stmt 1
	movq	-64(%rbp), %rcx	# xop0, tmp563
	movl	-96(%rbp), %eax	# maxmode, tmp564
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp563,
	movl	%eax, %edi	# tmp564,
	call	gen_rtx_SUBREG	#
	movq	%rax, -64(%rbp)	# tmp565, xop0
.L128:
	.loc 1 631 0
	movl	-96(%rbp), %eax	# maxmode, maxmode.96
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, tmp567
	movl	%eax, -140(%rbp)	# tmp567, unit
	.loc 1 634 0
	movq	-200(%rbp), %rax	# value, tmp568
	movq	%rax, -72(%rbp)	# tmp568, value1
	.loc 1 635 0
	movq	-200(%rbp), %rax	# value, tmp569
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17510
	cmpl	-96(%rbp), %eax	# maxmode, D.17510
	je	.L117	#,
	.loc 1 637 0
	movq	-200(%rbp), %rax	# value, tmp570
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17507
	movzwl	%ax, %eax	# D.17507, D.17509
	cmpq	-176(%rbp), %rax	# bitsize, D.17509
	jb	.L118	#,
	.loc 1 643 0
	movq	-200(%rbp), %rax	# value, tmp572
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	movzbl	%al, %eax	# D.17512, D.17508
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17512
	movl	-96(%rbp), %eax	# maxmode, maxmode.97
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17512
	cmpb	%al, %dl	# D.17512, D.17512
	jae	.L119	#,
.LBB9:
	.loc 1 647 0
	movq	-200(%rbp), %rax	# value, tmp575
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	movzbl	%al, %edx	# D.17512, D.17515
	movq	-72(%rbp), %rsi	# value1, tmp576
	movl	-96(%rbp), %eax	# maxmode, tmp577
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp577,
	call	simplify_subreg	#
	movq	%rax, -56(%rbp)	# tmp578, tmp
	.loc 1 648 0
	cmpq	$0, -56(%rbp)	#, tmp
	jne	.L120	#,
	.loc 1 652 0
	movq	-200(%rbp), %rax	# value, tmp579
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	.loc 1 649 0
	movzbl	%al, %ebx	# D.17512, D.17515
	.loc 1 650 0
	movq	-200(%rbp), %rax	# value, tmp580
	movzbl	2(%rax), %eax	# value_4->mode, D.17512
	.loc 1 649 0
	movzbl	%al, %eax	# D.17512, D.17515
	movq	-72(%rbp), %rdx	# value1, tmp581
	movq	%rdx, %rsi	# tmp581,
	movl	%eax, %edi	# D.17515,
	call	force_reg	#
	movq	%rax, %rsi	#, D.17513
	movl	-96(%rbp), %eax	# maxmode, tmp582
	movl	$0, %ecx	#,
	movl	%ebx, %edx	# D.17515,
	movl	%eax, %edi	# tmp582,
	call	simplify_gen_subreg	#
	movq	%rax, -56(%rbp)	# tmp583, tmp
.L120:
	.loc 1 653 0
	movq	-56(%rbp), %rax	# tmp, tmp584
	movq	%rax, -72(%rbp)	# tmp584, value1
.LBE9:
	jmp	.L117	#
.L119:
	.loc 1 656 0
	movq	-72(%rbp), %rdx	# value1, tmp585
	movl	-96(%rbp), %eax	# maxmode, tmp586
	movq	%rdx, %rsi	# tmp585,
	movl	%eax, %edi	# tmp586,
	call	gen_lowpart	#
	movq	%rax, -72(%rbp)	# tmp587, value1
	jmp	.L117	#
.L118:
	.loc 1 658 0
	movq	-200(%rbp), %rax	# value, tmp588
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$54, %ax	#, D.17507
	jne	.L122	#,
	.loc 1 659 0
	movq	-200(%rbp), %rax	# value, tmp589
	movq	8(%rax), %rax	# value_4->fld[0].rtwint, D.17523
	movl	-96(%rbp), %edx	# maxmode, tmp590
	movl	%edx, %esi	# tmp590,
	movq	%rax, %rdi	# D.17523,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17523,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -72(%rbp)	# tmp591, value1
	jmp	.L117	#
.L122:
	.loc 1 660 0
	movq	-200(%rbp), %rax	# value, tmp592
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$67, %ax	#, D.17507
	je	.L117	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# value, tmp593
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$68, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp594
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$54, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp595
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$55, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp596
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$58, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp597
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$134, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp598
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$56, %ax	#, D.17507
	je	.L117	#,
	movq	-200(%rbp), %rax	# value, tmp599
	movzwl	(%rax), %eax	# value_4->code, D.17507
	cmpw	$140, %ax	#, D.17507
	je	.L117	#,
	.loc 1 665 0 is_stmt 1
	movl	$__FUNCTION__.12791, %edx	#,
	movl	$665, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L117:
	.loc 1 670 0
	movq	insn_data+44584(%rip), %rax	# insn_data[1114].operand, D.17518
	addq	$72, %rax	#, D.17518
	.loc 1 671 0
	movq	(%rax), %rax	# _415->predicate, D.17519
	movl	-96(%rbp), %ecx	# maxmode, tmp600
	movq	-72(%rbp), %rdx	# value1, tmp601
	movl	%ecx, %esi	# tmp600,
	movq	%rdx, %rdi	# tmp601,
	call	*%rax	# D.17519
	.loc 1 670 0
	testl	%eax, %eax	# D.17508
	jne	.L123	#,
	.loc 1 672 0
	movq	-72(%rbp), %rdx	# value1, tmp602
	movl	-96(%rbp), %eax	# maxmode, tmp603
	movq	%rdx, %rsi	# tmp602,
	movl	%eax, %edi	# tmp603,
	call	force_reg	#
	movq	%rax, -72(%rbp)	# tmp604, value1
.L123:
	.loc 1 674 0
	movl	-100(%rbp), %eax	# xbitpos, tmp605
	cltq
	movq	%rax, %rsi	# D.17523,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.17513
	movq	-176(%rbp), %rax	# bitsize, bitsize.98
	movq	%rax, %rsi	# bitsize.98,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.17513
	movq	-72(%rbp), %rdx	# value1, tmp606
	movq	-64(%rbp), %rax	# xop0, tmp607
	movq	%rdx, %rcx	# tmp606,
	movq	%rbx, %rdx	# D.17513,
	movq	%rax, %rdi	# tmp607,
	call	gen_insv	#
	movq	%rax, -24(%rbp)	# tmp608, pat
	.loc 1 675 0
	cmpq	$0, -24(%rbp)	#, pat
	je	.L124	#,
	.loc 1 676 0
	movq	-24(%rbp), %rax	# pat, tmp609
	movq	%rax, %rdi	# tmp609,
	call	emit_insn	#
.LBE7:
	.loc 1 550 0
	jmp	.L126	#
.L124:
.LBB10:
	.loc 1 679 0
	movq	-40(%rbp), %rax	# last, tmp610
	movq	%rax, %rdi	# tmp610,
	call	delete_insns_since	#
	.loc 1 680 0
	movq	-200(%rbp), %rdi	# value, tmp611
	movq	-48(%rbp), %rcx	# bitpos, tmp612
	movq	-176(%rbp), %rdx	# bitsize, tmp613
	movq	-88(%rbp), %rsi	# offset, tmp614
	movq	-80(%rbp), %rax	# op0, tmp615
	movq	%rdi, %r8	# tmp611,
	movq	%rax, %rdi	# tmp615,
	call	store_fixed_bit_field	#
.LBE10:
	.loc 1 550 0
	jmp	.L126	#
.L103:
	.loc 1 686 0
	movq	-200(%rbp), %rdi	# value, tmp616
	movq	-48(%rbp), %rcx	# bitpos, tmp617
	movq	-176(%rbp), %rdx	# bitsize, tmp618
	movq	-88(%rbp), %rsi	# offset, tmp619
	movq	-80(%rbp), %rax	# op0, tmp620
	movq	%rdi, %r8	# tmp616,
	movq	%rax, %rdi	# tmp620,
	call	store_fixed_bit_field	#
.L126:
	.loc 1 687 0
	movq	-200(%rbp), %rax	# value, D.17506
.L48:
	.loc 1 688 0
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	store_bit_field, .-store_bit_field
	.type	store_fixed_bit_field, @function
store_fixed_bit_field:
.LFB6:
	.loc 1 706 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# op0, op0
	movq	%rsi, -80(%rbp)	# offset, offset
	movq	%rdx, -88(%rbp)	# bitsize, bitsize
	movq	%rcx, -96(%rbp)	# bitpos, bitpos
	movq	%r8, -104(%rbp)	# value, value
	.loc 1 708 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.100
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L130	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.99
	jmp	.L131	#
.L130:
	.loc 1 708 0 discriminator 2
	movl	$32, %eax	#, iftmp.99
.L131:
	.loc 1 708 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.99, total_bits
	.loc 1 710 0 is_stmt 1 discriminator 3
	movl	$0, -56(%rbp)	#, all_zero
	.loc 1 711 0 discriminator 3
	movl	$0, -52(%rbp)	#, all_one
	.loc 1 720 0 discriminator 3
	movq	-72(%rbp), %rax	# op0, tmp151
	movzwl	(%rax), %eax	# op0_29(D)->code, D.17528
	cmpw	$61, %ax	#, D.17528
	je	.L132	#,
	.loc 1 720 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, tmp152
	movzwl	(%rax), %eax	# op0_29(D)->code, D.17528
	cmpw	$63, %ax	#, D.17528
	jne	.L133	#,
.L132:
	.loc 1 722 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, offset
	je	.L134	#,
	.loc 1 723 0
	movl	$__FUNCTION__.12826, %edx	#,
	movl	$723, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L134:
	.loc 1 725 0
	movq	-96(%rbp), %rax	# bitpos, tmp153
	movq	-88(%rbp), %rdx	# bitsize, tmp154
	addq	%rax, %rdx	# tmp153, D.17533
	movl	target_flags(%rip), %eax	# target_flags, target_flags.102
	andl	$33554432, %eax	#, D.17527
	testl	%eax, %eax	# D.17527
	je	.L135	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.101
	jmp	.L136	#
.L135:
	.loc 1 725 0 discriminator 2
	movl	$32, %eax	#, iftmp.101
.L136:
	.loc 1 725 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.101, D.17533
	jbe	.L137	#,
	.loc 1 727 0 is_stmt 1
	movq	-104(%rbp), %rcx	# value, tmp155
	movq	-96(%rbp), %rdx	# bitpos, tmp156
	movq	-88(%rbp), %rsi	# bitsize, tmp157
	movq	-72(%rbp), %rax	# op0, tmp158
	movq	%rax, %rdi	# tmp158,
	call	store_split_bit_field	#
	.loc 1 728 0
	jmp	.L129	#
.L137:
	.loc 1 725 0 discriminator 1
	jmp	.L139	#
.L133:
	.loc 1 738 0
	movq	-72(%rbp), %rax	# op0, tmp159
	movzbl	2(%rax), %eax	# op0_29(D)->mode, D.17529
	movzbl	%al, %eax	# D.17529, tmp160
	movl	%eax, -60(%rbp)	# tmp160, mode
	.loc 1 739 0
	movl	-60(%rbp), %eax	# mode, mode.103
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17528
	testw	%ax, %ax	# D.17528
	je	.L140	#,
	.loc 1 740 0
	movl	-60(%rbp), %eax	# mode, mode.104
	cltq
	movzwl	mode_bitsize(%rax,%rax), %edx	# mode_bitsize, D.17528
	movl	word_mode(%rip), %eax	# word_mode, word_mode.105
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17528
	cmpw	%ax, %dx	# D.17528, D.17528
	jbe	.L141	#,
.L140:
	.loc 1 741 0
	movl	word_mode(%rip), %eax	# word_mode, tmp164
	movl	%eax, -60(%rbp)	# tmp164, mode
.L141:
	.loc 1 743 0
	movq	-72(%rbp), %rax	# op0, tmp165
	movzbl	3(%rax), %eax	# *op0_29(D), tmp168
	shrb	$3, %al	#, D.17530
	andl	$1, %eax	#, D.17530
	.loc 1 742 0
	movzbl	%al, %ecx	# D.17530, D.17527
	.loc 1 743 0
	movq	-72(%rbp), %rax	# op0, tmp169
	movq	16(%rax), %rax	# op0_29(D)->fld[1].rtmem, D.17531
	.loc 1 742 0
	testq	%rax, %rax	# D.17531
	je	.L142	#,
	.loc 1 743 0
	movq	-72(%rbp), %rax	# op0, tmp170
	movq	16(%rax), %rax	# op0_29(D)->fld[1].rtmem, D.17531
	.loc 1 742 0
	movl	32(%rax), %eax	# _45->align, iftmp.107
	jmp	.L143	#
.L142:
	.loc 1 742 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.107
.L143:
	.loc 1 742 0 discriminator 2
	movq	-80(%rbp), %rdx	# offset, tmp171
	leal	0(,%rdx,8), %esi	#, D.17532
	movq	-96(%rbp), %rdx	# bitpos, tmp172
	addl	%esi, %edx	# D.17532, D.17532
	movl	%edx, %esi	# D.17532, D.17527
	movq	-88(%rbp), %rdx	# bitsize, tmp173
	movl	%edx, %edi	# tmp173, D.17527
	movl	-60(%rbp), %edx	# mode, tmp174
	movl	%ecx, %r8d	# D.17527,
	movl	%edx, %ecx	# tmp174,
	movl	%eax, %edx	# iftmp.107,
	call	get_best_mode	#
	movl	%eax, -60(%rbp)	# tmp175, mode
	.loc 1 745 0 is_stmt 1 discriminator 2
	cmpl	$0, -60(%rbp)	#, mode
	jne	.L144	#,
	.loc 1 749 0
	movq	-80(%rbp), %rax	# offset, tmp176
	leaq	0(,%rax,8), %rdx	#, D.17533
	movq	-96(%rbp), %rax	# bitpos, tmp177
	leaq	(%rdx,%rax), %rdi	#, D.17533
	movq	-104(%rbp), %rdx	# value, tmp178
	movq	-88(%rbp), %rsi	# bitsize, tmp179
	movq	-72(%rbp), %rax	# op0, tmp180
	movq	%rdx, %rcx	# tmp178,
	movq	%rdi, %rdx	# D.17533,
	movq	%rax, %rdi	# tmp180,
	call	store_split_bit_field	#
	.loc 1 751 0
	jmp	.L129	#
.L144:
	.loc 1 754 0
	movl	-60(%rbp), %eax	# mode, mode.108
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17528
	movzwl	%ax, %eax	# D.17528, tmp182
	movl	%eax, -48(%rbp)	# tmp182, total_bits
	.loc 1 759 0
	movl	-48(%rbp), %eax	# total_bits, D.17533
	cmpq	-96(%rbp), %rax	# bitpos, D.17533
	ja	.L145	#,
	.loc 1 761 0
	movl	-48(%rbp), %ebx	# total_bits, D.17533
	movq	-96(%rbp), %rax	# bitpos, tmp185
	movl	$0, %edx	#, tmp184
	divq	%rbx	# D.17533
	movq	%rax, %rdx	# tmp183, D.17533
	movl	-48(%rbp), %eax	# total_bits, tmp186
	shrl	$3, %eax	#, D.17534
	movl	%eax, %eax	# D.17534, D.17533
	imulq	%rdx, %rax	# D.17533, D.17533
	addq	%rax, -80(%rbp)	# D.17533, offset
	.loc 1 762 0
	movl	-48(%rbp), %ebx	# total_bits, D.17533
	movq	-96(%rbp), %rax	# bitpos, tmp189
	movl	$0, %edx	#, tmp188
	divq	%rbx	# D.17533
	movq	%rax, %rdx	# tmp187, D.17533
	movl	-48(%rbp), %eax	# total_bits, tmp190
	shrl	$3, %eax	#, D.17534
	movl	%eax, %eax	# D.17534, D.17533
	imulq	%rdx, %rax	# D.17533, D.17533
	.loc 1 763 0
	salq	$3, %rax	#, D.17533
	.loc 1 762 0
	subq	%rax, -96(%rbp)	# D.17533, bitpos
.L145:
	.loc 1 770 0
	movl	-48(%rbp), %eax	# total_bits, tmp191
	shrl	$3, %eax	#, D.17534
	movl	%eax, %ecx	# D.17534, D.17533
	movq	-80(%rbp), %rax	# offset, tmp192
	movl	$0, %edx	#, tmp193
	divq	%rcx	# D.17533
	movq	%rdx, %rax	# tmp193, D.17533
	salq	$3, %rax	#, D.17533
	addq	%rax, -96(%rbp)	# D.17533, bitpos
	.loc 1 771 0
	movl	-48(%rbp), %eax	# total_bits, tmp195
	shrl	$3, %eax	#, D.17534
	movl	%eax, %ecx	# D.17534, D.17533
	movq	-80(%rbp), %rax	# offset, tmp196
	movl	$0, %edx	#, tmp197
	divq	%rcx	# D.17533
	movq	%rdx, %rax	# tmp197, D.17533
	subq	%rax, -80(%rbp)	# D.17533, offset
	.loc 1 772 0
	movq	-80(%rbp), %rdx	# offset, offset.109
	movl	-60(%rbp), %esi	# mode, tmp199
	movq	-72(%rbp), %rax	# op0, tmp200
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp200,
	call	adjust_address_1	#
	movq	%rax, -72(%rbp)	# tmp201, op0
.L139:
	.loc 1 775 0
	movq	-72(%rbp), %rax	# op0, tmp202
	movzbl	2(%rax), %eax	# op0_1->mode, D.17529
	movzbl	%al, %eax	# D.17529, tmp203
	movl	%eax, -60(%rbp)	# tmp203, mode
	.loc 1 795 0
	movq	-104(%rbp), %rax	# value, tmp204
	movzwl	(%rax), %eax	# value_60(D)->code, D.17528
	cmpw	$54, %ax	#, D.17528
	jne	.L146	#,
.LBB11:
	.loc 1 797 0
	movq	-104(%rbp), %rax	# value, tmp205
	movq	8(%rax), %rax	# value_60(D)->fld[0].rtwint, tmp206
	movq	%rax, -24(%rbp)	# tmp206, v
	.loc 1 799 0
	cmpq	$63, -88(%rbp)	#, bitsize
	ja	.L147	#,
	.loc 1 800 0
	movq	-88(%rbp), %rax	# bitsize, tmp207
	movl	$1, %edx	#, tmp208
	movl	%eax, %ecx	# D.17527, tmp263
	salq	%cl, %rdx	# tmp263, D.17535
	movq	%rdx, %rax	# D.17535, D.17535
	subq	$1, %rax	#, D.17535
	andq	%rax, -24(%rbp)	# D.17535, v
.L147:
	.loc 1 802 0
	cmpq	$0, -24(%rbp)	#, v
	jne	.L148	#,
	.loc 1 803 0
	movl	$1, -56(%rbp)	#, all_zero
	jmp	.L149	#
.L148:
	.loc 1 804 0
	cmpq	$63, -88(%rbp)	#, bitsize
	ja	.L150	#,
	.loc 1 805 0
	movq	-88(%rbp), %rax	# bitsize, tmp209
	movl	$1, %edx	#, tmp210
	movl	%eax, %ecx	# D.17527, tmp265
	salq	%cl, %rdx	# tmp265, D.17535
	movq	%rdx, %rax	# D.17535, D.17535
	subq	$1, %rax	#, D.17535
	cmpq	-24(%rbp), %rax	# v, D.17535
	je	.L151	#,
.L150:
	.loc 1 806 0
	cmpq	$64, -88(%rbp)	#, bitsize
	jne	.L149	#,
	.loc 1 806 0 is_stmt 0 discriminator 1
	cmpq	$-1, -24(%rbp)	#, v
	jne	.L149	#,
.L151:
	.loc 1 807 0 is_stmt 1
	movl	$1, -52(%rbp)	#, all_one
.L149:
	.loc 1 809 0 discriminator 1
	movq	-88(%rbp), %rax	# bitsize, tmp211
	movl	%eax, %ecx	# tmp211, D.17527
	movq	-96(%rbp), %rax	# bitpos, tmp212
	movl	%eax, %edx	# tmp212, D.17527
	movq	-104(%rbp), %rsi	# value, tmp213
	movl	-60(%rbp), %eax	# mode, tmp214
	movl	%eax, %edi	# tmp214,
	call	lshift_value	#
	movq	%rax, -104(%rbp)	# tmp215, value
.LBE11:
	jmp	.L152	#
.L146:
.LBB12:
	.loc 1 813 0
	movq	-104(%rbp), %rax	# value, tmp216
	movzbl	2(%rax), %eax	# value_60(D)->mode, D.17529
	movzbl	%al, %eax	# D.17529, D.17527
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17528
	movzwl	%ax, %eax	# D.17528, D.17533
	.loc 1 814 0
	cmpq	-88(%rbp), %rax	# bitsize, D.17533
	je	.L153	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# bitsize, tmp218
	movq	-96(%rbp), %rdx	# bitpos, tmp219
	addq	%rax, %rdx	# tmp218, D.17533
	movl	-60(%rbp), %eax	# mode, mode.111
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17528
	movzwl	%ax, %eax	# D.17528, D.17533
	cmpq	%rax, %rdx	# D.17533, D.17533
	je	.L153	#,
	.loc 1 814 0 discriminator 3
	movl	$1, %eax	#, iftmp.110
	jmp	.L154	#
.L153:
	.loc 1 814 0 discriminator 2
	movl	$0, %eax	#, iftmp.110
.L154:
	.loc 1 813 0 is_stmt 1
	movl	%eax, -44(%rbp)	# iftmp.110, must_and
	.loc 1 816 0
	movq	-104(%rbp), %rax	# value, tmp221
	movzbl	2(%rax), %eax	# value_60(D)->mode, D.17529
	movzbl	%al, %eax	# D.17529, D.17534
	cmpl	-60(%rbp), %eax	# mode, D.17534
	je	.L155	#,
	.loc 1 818 0
	movq	-104(%rbp), %rax	# value, tmp222
	movzwl	(%rax), %eax	# value_60(D)->code, D.17528
	cmpw	$61, %ax	#, D.17528
	je	.L156	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# value, tmp223
	movzwl	(%rax), %eax	# value_60(D)->code, D.17528
	cmpw	$63, %ax	#, D.17528
	jne	.L157	#,
.L156:
	.loc 1 819 0 is_stmt 1
	movl	-60(%rbp), %eax	# mode, mode.112
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17529
	movq	-104(%rbp), %rax	# value, tmp225
	movzbl	2(%rax), %eax	# value_60(D)->mode, D.17529
	movzbl	%al, %eax	# D.17529, D.17527
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17529
	cmpb	%al, %dl	# D.17529, D.17529
	jae	.L157	#,
	.loc 1 820 0
	movq	-104(%rbp), %rdx	# value, tmp227
	movl	-60(%rbp), %eax	# mode, tmp228
	movq	%rdx, %rsi	# tmp227,
	movl	%eax, %edi	# tmp228,
	call	gen_lowpart	#
	movq	%rax, -104(%rbp)	# tmp229, value
	jmp	.L155	#
.L157:
	.loc 1 822 0
	movq	-104(%rbp), %rcx	# value, tmp230
	movl	-60(%rbp), %eax	# mode, tmp231
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp230,
	movl	%eax, %edi	# tmp231,
	call	convert_to_mode	#
	movq	%rax, -104(%rbp)	# tmp232, value
.L155:
	.loc 1 825 0
	cmpl	$0, -44(%rbp)	#, must_and
	je	.L158	#,
	.loc 1 826 0
	movq	-88(%rbp), %rax	# bitsize, tmp233
	movl	%eax, %edx	# tmp233, D.17527
	movl	-60(%rbp), %eax	# mode, tmp234
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp234,
	call	mask_rtx	#
	movq	%rax, %rcx	#, D.17536
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17537
	movq	-104(%rbp), %rdx	# value, tmp235
	movl	-60(%rbp), %eax	# mode, tmp236
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp236,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp237, value
.L158:
	.loc 1 829 0
	cmpq	$0, -96(%rbp)	#, bitpos
	je	.L152	#,
	.loc 1 830 0
	movq	-96(%rbp), %rax	# bitpos, tmp238
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17538
	movq	-104(%rbp), %rdx	# value, tmp239
	movl	-60(%rbp), %eax	# mode, tmp240
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp240,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -104(%rbp)	# tmp241, value
.L152:
.LBE12:
	.loc 1 837 0
	movq	-72(%rbp), %rax	# op0, tmp242
	movzwl	(%rax), %eax	# op0_1->code, D.17528
	cmpw	$61, %ax	#, D.17528
	je	.L159	#,
	.loc 1 837 0 is_stmt 0 discriminator 2
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.114
	testl	%eax, %eax	# flag_force_mem.114
	jne	.L160	#,
.L159:
	.loc 1 837 0 discriminator 1
	movq	-72(%rbp), %rax	# op0, iftmp.113
	jmp	.L161	#
.L160:
	movl	$0, %eax	#, iftmp.113
.L161:
	.loc 1 837 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.113, subtarget
	.loc 1 839 0 is_stmt 1 discriminator 3
	cmpl	$0, -52(%rbp)	#, all_one
	jne	.L162	#,
	.loc 1 841 0
	movq	-88(%rbp), %rax	# bitsize, tmp243
	movl	%eax, %edx	# tmp243, D.17527
	movq	-96(%rbp), %rax	# bitpos, tmp244
	movl	%eax, %esi	# tmp244, D.17527
	movl	-60(%rbp), %eax	# mode, tmp245
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp245,
	call	mask_rtx	#
	movq	%rax, %rcx	#, D.17536
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17537
	movq	-40(%rbp), %rdi	# subtarget, tmp246
	movq	-72(%rbp), %rdx	# op0, tmp247
	movl	-60(%rbp), %eax	# mode, tmp248
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp246,
	movl	%eax, %edi	# tmp248,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp249, temp
	.loc 1 844 0
	movq	-32(%rbp), %rax	# temp, tmp250
	movq	%rax, -40(%rbp)	# tmp250, subtarget
	jmp	.L163	#
.L162:
	.loc 1 847 0
	movq	-72(%rbp), %rax	# op0, tmp251
	movq	%rax, -32(%rbp)	# tmp251, temp
.L163:
	.loc 1 851 0
	cmpl	$0, -56(%rbp)	#, all_zero
	jne	.L164	#,
	.loc 1 852 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17537
	movq	-40(%rbp), %rdi	# subtarget, tmp252
	movq	-104(%rbp), %rcx	# value, tmp253
	movq	-32(%rbp), %rdx	# temp, tmp254
	movl	-60(%rbp), %eax	# mode, tmp255
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp252,
	movl	%eax, %edi	# tmp255,
	call	expand_binop	#
	movq	%rax, -32(%rbp)	# tmp256, temp
.L164:
	.loc 1 854 0
	movq	-72(%rbp), %rax	# op0, tmp257
	cmpq	-32(%rbp), %rax	# temp, tmp257
	je	.L129	#,
	.loc 1 855 0
	movq	-32(%rbp), %rdx	# temp, tmp258
	movq	-72(%rbp), %rax	# op0, tmp259
	movq	%rdx, %rsi	# tmp258,
	movq	%rax, %rdi	# tmp259,
	call	emit_move_insn	#
.L129:
	.loc 1 856 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	store_fixed_bit_field, .-store_fixed_bit_field
	.type	store_split_bit_field, @function
store_split_bit_field:
.LFB7:
	.loc 1 872 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# op0, op0
	movq	%rsi, -96(%rbp)	# bitsize, bitsize
	movq	%rdx, -104(%rbp)	# bitpos, bitpos
	movq	%rcx, -112(%rbp)	# value, value
	.loc 1 874 0
	movl	$0, -72(%rbp)	#, bitsdone
	.loc 1 878 0
	movq	-88(%rbp), %rax	# op0, tmp134
	movzwl	(%rax), %eax	# op0_15(D)->code, D.17539
	cmpw	$61, %ax	#, D.17539
	je	.L166	#,
	.loc 1 878 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp135
	movzwl	(%rax), %eax	# op0_15(D)->code, D.17539
	cmpw	$63, %ax	#, D.17539
	jne	.L167	#,
.L166:
	.loc 1 879 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.116
	andl	$33554432, %eax	#, D.17540
	testl	%eax, %eax	# D.17540
	je	.L168	#,
	.loc 1 879 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.115
	jmp	.L169	#
.L168:
	.loc 1 879 0 discriminator 2
	movl	$32, %eax	#, iftmp.115
.L169:
	.loc 1 879 0 discriminator 3
	movl	%eax, -76(%rbp)	# iftmp.115, unit
	jmp	.L170	#
.L167:
	.loc 1 881 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.118
	andl	$33554432, %eax	#, D.17540
	testl	%eax, %eax	# D.17540
	je	.L171	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	movl	$64, %edx	#, iftmp.117
	jmp	.L172	#
.L171:
	.loc 1 881 0 discriminator 2
	movl	$32, %edx	#, iftmp.117
.L172:
	.loc 1 881 0 discriminator 3
	movq	-88(%rbp), %rax	# op0, tmp136
	movq	16(%rax), %rax	# op0_15(D)->fld[1].rtmem, D.17541
	testq	%rax, %rax	# D.17541
	je	.L173	#,
	.loc 1 881 0 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp137
	movq	16(%rax), %rax	# op0_15(D)->fld[1].rtmem, D.17541
	movl	32(%rax), %eax	# _23->align, iftmp.119
	jmp	.L174	#
.L173:
	.loc 1 881 0 discriminator 2
	movl	$8, %eax	#, iftmp.119
.L174:
	.loc 1 881 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.119, iftmp.117
	cmovbe	%edx, %eax	# iftmp.117,, tmp138
	movl	%eax, -76(%rbp)	# tmp138, unit
.L170:
	.loc 1 886 0 is_stmt 1
	movq	-112(%rbp), %rax	# value, tmp139
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$67, %ax	#, D.17539
	je	.L175	#,
	.loc 1 886 0 is_stmt 0 discriminator 2
	movq	-112(%rbp), %rax	# value, tmp140
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$68, %ax	#, D.17539
	je	.L175	#,
	.loc 1 886 0 discriminator 1
	movq	-112(%rbp), %rax	# value, tmp141
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$54, %ax	#, D.17539
	je	.L175	#,
	movq	-112(%rbp), %rax	# value, tmp142
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$55, %ax	#, D.17539
	je	.L175	#,
	movq	-112(%rbp), %rax	# value, tmp143
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$58, %ax	#, D.17539
	je	.L175	#,
	movq	-112(%rbp), %rax	# value, tmp144
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$134, %ax	#, D.17539
	je	.L175	#,
	movq	-112(%rbp), %rax	# value, tmp145
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$56, %ax	#, D.17539
	je	.L175	#,
	movq	-112(%rbp), %rax	# value, tmp146
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$140, %ax	#, D.17539
	jne	.L176	#,
.L175:
	movq	-112(%rbp), %rax	# value, tmp147
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$54, %ax	#, D.17539
	je	.L176	#,
.LBB13:
	.loc 1 888 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.120
	movq	-112(%rbp), %rdx	# value, tmp148
	movq	%rdx, %rsi	# tmp148,
	movl	%eax, %edi	# word_mode.120,
	call	gen_lowpart_common	#
	movq	%rax, -40(%rbp)	# tmp149, word
	.loc 1 890 0
	cmpq	$0, -40(%rbp)	#, word
	je	.L177	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# value, tmp150
	cmpq	-40(%rbp), %rax	# word, tmp150
	je	.L177	#,
	.loc 1 891 0 is_stmt 1
	movq	-40(%rbp), %rax	# word, tmp151
	movq	%rax, -112(%rbp)	# tmp151, value
.LBE13:
	.loc 1 887 0
	jmp	.L181	#
.L177:
.LBB14:
	.loc 1 894 0
	movq	-112(%rbp), %rax	# value, tmp152
	movzbl	2(%rax), %eax	# value_32(D)->mode, D.17542
	.loc 1 893 0
	testb	%al, %al	# D.17542
	je	.L179	#,
	.loc 1 895 0
	movq	-112(%rbp), %rax	# value, tmp153
	movzbl	2(%rax), %eax	# value_32(D)->mode, D.17542
	.loc 1 893 0
	movzbl	%al, %eax	# D.17542, iftmp.121
	jmp	.L180	#
.L179:
	.loc 1 893 0 is_stmt 0 discriminator 1
	movl	word_mode(%rip), %eax	# word_mode, iftmp.121
.L180:
	.loc 1 893 0 discriminator 2
	movq	-112(%rbp), %rdx	# value, tmp154
	movq	%rdx, %rsi	# tmp154,
	movl	%eax, %edi	# iftmp.121,
	call	force_reg	#
	movq	%rax, %rdx	#, D.17543
	movl	word_mode(%rip), %eax	# word_mode, word_mode.122
	movq	%rdx, %rsi	# D.17543,
	movl	%eax, %edi	# word_mode.122,
	call	gen_lowpart_common	#
	movq	%rax, -112(%rbp)	# tmp155, value
.LBE14:
	.loc 1 887 0 is_stmt 1 discriminator 2
	jmp	.L181	#
.L176:
	.loc 1 898 0
	movq	-112(%rbp), %rax	# value, tmp156
	movzwl	(%rax), %eax	# value_32(D)->code, D.17539
	cmpw	$70, %ax	#, D.17539
	jne	.L181	#,
	.loc 1 899 0
	movq	-112(%rbp), %rax	# value, tmp157
	movq	%rax, %rdi	# tmp157,
	call	copy_to_reg	#
	movq	%rax, -112(%rbp)	# tmp158, value
	.loc 1 901 0
	jmp	.L182	#
.L181:
	jmp	.L182	#
.L192:
.LBB15:
	.loc 1 908 0
	movl	-72(%rbp), %edx	# bitsdone, D.17544
	movq	-104(%rbp), %rax	# bitpos, tmp159
	addq	%rdx, %rax	# D.17544, D.17544
	movl	-76(%rbp), %ebx	# unit, D.17544
	movl	$0, %edx	#, tmp161
	divq	%rbx	# D.17544
	movq	%rax, -48(%rbp)	# tmp160, offset
	.loc 1 909 0
	movl	-72(%rbp), %edx	# bitsdone, D.17544
	movq	-104(%rbp), %rax	# bitpos, tmp162
	addq	%rdx, %rax	# D.17544, D.17544
	movl	-76(%rbp), %ecx	# unit, D.17544
	movl	$0, %edx	#, tmp163
	divq	%rcx	# D.17544
	movq	%rdx, -32(%rbp)	# tmp163, thispos
	.loc 1 914 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.124
	andl	$33554432, %eax	#, D.17540
	testl	%eax, %eax	# D.17540
	je	.L183	#,
	.loc 1 914 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.123
	jmp	.L184	#
.L183:
	.loc 1 914 0 discriminator 2
	movl	$32, %eax	#, iftmp.123
.L184:
	.loc 1 914 0 discriminator 3
	movl	-72(%rbp), %edx	# bitsdone, D.17544
	movq	-96(%rbp), %rcx	# bitsize, tmp165
	subq	%rdx, %rcx	# D.17544, D.17544
	movq	%rcx, %rdx	# D.17544, D.17544
	cmpq	%rdx, %rax	# D.17544, iftmp.123
	cmova	%rdx, %rax	# iftmp.123,, D.17544, tmp166
	movq	%rax, -24(%rbp)	# tmp166, thissize
	.loc 1 915 0 is_stmt 1 discriminator 3
	movl	-76(%rbp), %eax	# unit, D.17544
	subq	-32(%rbp), %rax	# thispos, D.17544
	movq	%rax, %rdx	# D.17544, D.17544
	movq	-24(%rbp), %rax	# thissize, tmp168
	cmpq	%rax, %rdx	# tmp168, D.17544
	cmovbe	%rdx, %rax	# D.17544,, tmp167
	movq	%rax, -24(%rbp)	# tmp167, thissize
	.loc 1 945 0 discriminator 3
	movq	-112(%rbp), %rax	# value, tmp169
	movzwl	(%rax), %eax	# value_2->code, D.17539
	cmpw	$54, %ax	#, D.17539
	jne	.L185	#,
	.loc 1 946 0
	movq	-112(%rbp), %rax	# value, tmp170
	movq	8(%rax), %rax	# value_2->fld[0].rtwint, D.17545
	movq	%rax, %rdx	# D.17545, D.17544
	movl	-72(%rbp), %eax	# bitsdone, bitsdone.128
	movq	%rdx, %rsi	# D.17544, D.17544
	movl	%eax, %ecx	# bitsdone.128, tmp200
	shrq	%cl, %rsi	# tmp200, D.17544
	movq	-24(%rbp), %rax	# thissize, tmp171
	movl	$1, %edx	#, tmp172
	movl	%eax, %ecx	# D.17540, tmp202
	salq	%cl, %rdx	# tmp202, D.17545
	movq	%rdx, %rax	# D.17545, D.17545
	subq	$1, %rax	#, D.17545
	andq	%rsi, %rax	# D.17544, D.17544
	movq	%rax, %rsi	# D.17545,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp173, part
	jmp	.L186	#
.L185:
	.loc 1 950 0
	movl	-72(%rbp), %ecx	# bitsdone, D.17544
	movl	word_mode(%rip), %eax	# word_mode, word_mode.129
	movq	-24(%rbp), %rdx	# thissize, tmp174
	movq	-112(%rbp), %rsi	# value, tmp175
	movl	$1, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# D.17544,
	movq	%rdx, %rcx	# tmp174,
	movl	$0, %edx	#,
	movl	%eax, %edi	# word_mode.129,
	call	extract_fixed_bit_field	#
	movq	%rax, -64(%rbp)	# tmp176, part
.L186:
	.loc 1 960 0
	movq	-88(%rbp), %rax	# op0, tmp177
	movzwl	(%rax), %eax	# op0_15(D)->code, D.17539
	cmpw	$63, %ax	#, D.17539
	jne	.L187	#,
.LBB16:
	.loc 1 962 0
	movq	-88(%rbp), %rax	# op0, tmp178
	movl	16(%rax), %eax	# op0_15(D)->fld[1].rtuint, D.17546
	movl	target_flags(%rip), %edx	# target_flags, target_flags.131
	andl	$33554432, %edx	#, D.17540
	testl	%edx, %edx	# D.17540
	je	.L188	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.130
	jmp	.L189	#
.L188:
	.loc 1 962 0 discriminator 2
	movl	$4, %ebx	#, iftmp.130
.L189:
	.loc 1 962 0 discriminator 1
	movl	$0, %edx	#, tmp180
	divl	%ebx	# iftmp.130
	movl	%eax, %edx	# tmp179, D.17546
	movq	-48(%rbp), %rax	# offset, tmp181
	addl	%edx, %eax	# D.17546, D.17547
	movl	%eax, -68(%rbp)	# D.17547, word_offset
	.loc 1 964 0 is_stmt 1 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp182
	movq	8(%rax), %rax	# op0_15(D)->fld[0].rtx, D.17543
	movzbl	2(%rax), %eax	# _100->mode, D.17542
	.loc 1 963 0 discriminator 1
	movzbl	%al, %edx	# D.17542, D.17548
	movl	-68(%rbp), %ecx	# word_offset, word_offset.132
	movq	-88(%rbp), %rax	# op0, tmp183
	movq	8(%rax), %rax	# op0_15(D)->fld[0].rtx, D.17543
	movl	%ecx, %esi	# word_offset.132,
	movq	%rax, %rdi	# D.17543,
	call	operand_subword_force	#
	movq	%rax, -56(%rbp)	# tmp184, word
	.loc 1 965 0 discriminator 1
	movq	$0, -48(%rbp)	#, offset
.LBE16:
	jmp	.L190	#
.L187:
	.loc 1 967 0
	movq	-88(%rbp), %rax	# op0, tmp185
	movzwl	(%rax), %eax	# op0_15(D)->code, D.17539
	cmpw	$61, %ax	#, D.17539
	jne	.L191	#,
	.loc 1 969 0
	movq	-88(%rbp), %rax	# op0, tmp186
	movzbl	2(%rax), %eax	# op0_15(D)->mode, D.17542
	movzbl	%al, %edx	# D.17542, D.17548
	movq	-48(%rbp), %rax	# offset, tmp187
	movl	%eax, %ecx	# tmp187, D.17546
	movq	-88(%rbp), %rax	# op0, tmp188
	movl	%ecx, %esi	# D.17546,
	movq	%rax, %rdi	# tmp188,
	call	operand_subword_force	#
	movq	%rax, -56(%rbp)	# tmp189, word
	.loc 1 970 0
	movq	$0, -48(%rbp)	#, offset
	jmp	.L190	#
.L191:
	.loc 1 973 0
	movq	-88(%rbp), %rax	# op0, tmp190
	movq	%rax, -56(%rbp)	# tmp190, word
.L190:
	.loc 1 977 0
	movl	-76(%rbp), %eax	# unit, D.17544
	imulq	-48(%rbp), %rax	# offset, D.17544
	shrq	$3, %rax	#, D.17544
	movq	%rax, %rsi	# D.17544, D.17544
	movq	-64(%rbp), %rdi	# part, tmp191
	movq	-32(%rbp), %rcx	# thispos, tmp192
	movq	-24(%rbp), %rdx	# thissize, tmp193
	movq	-56(%rbp), %rax	# word, tmp194
	movq	%rdi, %r8	# tmp191,
	movq	%rax, %rdi	# tmp194,
	call	store_fixed_bit_field	#
	.loc 1 979 0
	movq	-24(%rbp), %rax	# thissize, tmp195
	addl	%eax, -72(%rbp)	# D.17546, bitsdone
.L182:
.LBE15:
	.loc 1 901 0 discriminator 1
	movl	-72(%rbp), %eax	# bitsdone, D.17544
	cmpq	-96(%rbp), %rax	# bitsize, D.17544
	jb	.L192	#,
	.loc 1 981 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	store_split_bit_field, .-store_split_bit_field
	.globl	extract_bit_field
	.type	extract_bit_field, @function
extract_bit_field:
.LFB8:
	.loc 1 1013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$376, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# str_rtx, str_rtx
	movq	%rsi, -336(%rbp)	# bitsize, bitsize
	movq	%rdx, -344(%rbp)	# bitnum, bitnum
	movl	%ecx, -348(%rbp)	# unsignedp, unsignedp
	movq	%r8, -360(%rbp)	# target, target
	movl	%r9d, -352(%rbp)	# mode, mode
	.loc 1 1015 0
	movq	-328(%rbp), %rax	# str_rtx, tmp381
	movzwl	(%rax), %eax	# str_rtx_74(D)->code, D.17550
	.loc 1 1014 0
	cmpw	$66, %ax	#, D.17550
	je	.L194	#,
	.loc 1 1015 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.135
	andl	$33554432, %eax	#, D.17551
	.loc 1 1014 0 discriminator 1
	testl	%eax, %eax	# D.17551
	je	.L195	#,
	.loc 1 1014 0 is_stmt 0 discriminator 3
	movl	$64, %eax	#, iftmp.134
	jmp	.L197	#
.L195:
	.loc 1 1014 0 discriminator 4
	movl	$32, %eax	#, iftmp.134
	jmp	.L197	#
.L194:
	.loc 1 1014 0 discriminator 2
	movl	$8, %eax	#, iftmp.133
.L197:
	.loc 1 1014 0 discriminator 5
	movl	%eax, -288(%rbp)	# iftmp.133, unit
	.loc 1 1016 0 is_stmt 1 discriminator 5
	movl	-288(%rbp), %ebx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp384
	movl	$0, %edx	#, tmp383
	divq	%rbx	# D.17552
	movq	%rax, -216(%rbp)	# tmp382, offset
	.loc 1 1017 0 discriminator 5
	movl	-288(%rbp), %ecx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp386
	movl	$0, %edx	#, tmp387
	divq	%rcx	# D.17552
	movq	%rdx, -112(%rbp)	# tmp387, bitpos
	.loc 1 1018 0 discriminator 5
	movq	-328(%rbp), %rax	# str_rtx, tmp389
	movq	%rax, -208(%rbp)	# tmp389, op0
	.loc 1 1019 0 discriminator 5
	movq	-360(%rbp), %rax	# target, tmp390
	movq	%rax, -200(%rbp)	# tmp390, spec_target
	.loc 1 1020 0 discriminator 5
	movq	$0, -192(%rbp)	#, spec_target_subreg
	.loc 1 1022 0 discriminator 5
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -284(%rbp)	# tmp391, extv_mode
	.loc 1 1023 0 discriminator 5
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -280(%rbp)	# tmp392, extzv_mode
	.loc 1 1029 0 discriminator 5
	cmpq	$0, 24(%rbp)	#, total_size
	js	.L198	#,
	.loc 1 1030 0
	movq	24(%rbp), %rax	# total_size, total_size.136
	movq	-112(%rbp), %rdx	# bitpos, tmp393
	shrq	$7, %rdx	#, D.17552
	.loc 1 1031 0
	salq	$4, %rdx	#, D.17552
	.loc 1 1030 0
	subq	%rdx, %rax	# D.17552, D.17552
	movq	%rax, 24(%rbp)	# D.17552, total_size
.L198:
	.loc 1 1033 0
	cmpl	$0, 16(%rbp)	#, tmode
	jne	.L199	#,
	.loc 1 1034 0
	movl	-352(%rbp), %eax	# mode, tmp394
	movl	%eax, 16(%rbp)	# tmp394, tmode
	.loc 1 1035 0
	jmp	.L200	#
.L199:
	jmp	.L200	#
.L205:
.LBB17:
	.loc 1 1037 0
	movq	-208(%rbp), %rax	# op0, tmp395
	movzbl	2(%rax), %eax	# op0_10->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp397
	movl	%eax, -276(%rbp)	# tmp397, outer_size
	.loc 1 1038 0
	movq	-208(%rbp), %rax	# op0, tmp398
	movq	8(%rax), %rax	# op0_10->fld[0].rtx, D.17554
	movzbl	2(%rax), %eax	# _108->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp400
	movl	%eax, -272(%rbp)	# tmp400, inner_size
	.loc 1 1040 0
	movq	-208(%rbp), %rax	# op0, tmp401
	movl	16(%rax), %eax	# op0_10->fld[1].rtuint, D.17555
	movl	target_flags(%rip), %edx	# target_flags, target_flags.138
	andl	$33554432, %edx	#, D.17551
	testl	%edx, %edx	# D.17551
	je	.L201	#,
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.137
	jmp	.L202	#
.L201:
	.loc 1 1040 0 discriminator 2
	movl	$4, %ebx	#, iftmp.137
.L202:
	.loc 1 1040 0 discriminator 3
	movl	$0, %edx	#, tmp403
	divl	%ebx	# iftmp.137
	movl	%eax, %eax	# D.17555, D.17552
	addq	%rax, -216(%rbp)	# D.17552, offset
	.loc 1 1042 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.140
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L203	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.139
	jmp	.L204	#
.L203:
	.loc 1 1042 0 discriminator 2
	movl	$32, %eax	#, iftmp.139
.L204:
	.loc 1 1042 0 discriminator 3
	movl	-272(%rbp), %edx	# inner_size, tmp405
	cmpl	%edx, %eax	# tmp405, iftmp.139
	cmovg	%edx, %eax	# iftmp.139,, tmp405, tmp404
	movl	%eax, -272(%rbp)	# tmp404, inner_size
	.loc 1 1054 0 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax	# op0, tmp406
	movq	8(%rax), %rax	# op0_10->fld[0].rtx, tmp407
	movq	%rax, -208(%rbp)	# tmp407, op0
.L200:
.LBE17:
	.loc 1 1035 0 discriminator 1
	movq	-208(%rbp), %rax	# op0, tmp408
	movzwl	(%rax), %eax	# op0_10->code, D.17550
	cmpw	$63, %ax	#, D.17550
	je	.L205	#,
	.loc 1 1057 0
	movq	-208(%rbp), %rax	# op0, tmp409
	movzwl	(%rax), %eax	# op0_10->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L206	#,
	.loc 1 1058 0
	movq	-208(%rbp), %rax	# op0, tmp410
	movzbl	2(%rax), %eax	# op0_10->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-352(%rbp), %eax	# mode, D.17555
	jne	.L206	#,
	.loc 1 1059 0
	cmpq	$0, -344(%rbp)	#, bitnum
	jne	.L206	#,
	.loc 1 1060 0
	movq	-208(%rbp), %rax	# op0, tmp411
	movzbl	2(%rax), %eax	# op0_10->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	cmpq	-336(%rbp), %rax	# bitsize, D.17552
	jne	.L206	#,
	.loc 1 1063 0
	movq	-208(%rbp), %rax	# op0, D.17549
	jmp	.L207	#
.L206:
.LBB18:
	.loc 1 1069 0
	movq	-208(%rbp), %rax	# op0, tmp413
	movzbl	2(%rax), %eax	# op0_10->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17556
	movl	%eax, %edi	# D.17556,
	call	int_mode_for_mode	#
	movl	%eax, -268(%rbp)	# tmp414, imode
	.loc 1 1070 0
	movq	-208(%rbp), %rax	# op0, tmp415
	movzbl	2(%rax), %eax	# op0_10->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-268(%rbp), %eax	# imode, D.17555
	je	.L208	#,
	.loc 1 1072 0
	movq	-208(%rbp), %rax	# op0, tmp416
	movzwl	(%rax), %eax	# op0_10->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L209	#,
	.loc 1 1073 0
	movl	-268(%rbp), %esi	# imode, tmp417
	movq	-208(%rbp), %rax	# op0, tmp418
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp418,
	call	adjust_address_1	#
	movq	%rax, -208(%rbp)	# tmp419, op0
	jmp	.L208	#
.L209:
	.loc 1 1074 0
	cmpl	$51, -268(%rbp)	#, imode
	je	.L210	#,
	.loc 1 1075 0
	movq	-208(%rbp), %rdx	# op0, tmp420
	movl	-268(%rbp), %eax	# imode, tmp421
	movq	%rdx, %rsi	# tmp420,
	movl	%eax, %edi	# tmp421,
	call	gen_lowpart	#
	movq	%rax, -208(%rbp)	# tmp422, op0
	jmp	.L208	#
.L210:
	.loc 1 1077 0
	movl	$__FUNCTION__.12875, %edx	#,
	movl	$1077, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L208:
.LBE18:
	.loc 1 1083 0
	movq	-208(%rbp), %rax	# op0, tmp423
	movzwl	(%rax), %eax	# op0_11->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L323	#,
	.loc 1 1085 0
	movq	-208(%rbp), %rax	# op0, tmp424
	movq	%rax, %rdi	# tmp424,
	call	shallow_copy_rtx	#
	movq	%rax, -208(%rbp)	# tmp425, op0
	.loc 1 1086 0
	movq	-208(%rbp), %rax	# op0, tmp426
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp426,
	call	set_mem_alias_set	#
	.loc 1 1087 0
	movq	-208(%rbp), %rax	# op0, tmp427
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp427,
	call	set_mem_expr	#
.L323:
	.loc 1 1108 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.142
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L212	#,
	.loc 1 1108 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.141
	jmp	.L213	#
.L212:
	.loc 1 1108 0 discriminator 2
	movl	$32, %ebx	#, iftmp.141
.L213:
	.loc 1 1108 0 discriminator 3
	movq	-344(%rbp), %rax	# bitnum, tmp428
	movl	$0, %edx	#, tmp429
	divq	%rbx	# iftmp.141
	movq	%rdx, %rcx	# tmp429, tmp429
	movq	%rcx, %rax	# tmp429, D.17552
	shrq	$3, %rax	#, D.17552
	movl	%eax, %edx	# D.17552, D.17557
	.loc 1 1109 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.144
	andl	$33554432, %eax	#, D.17551
	.loc 1 1108 0 discriminator 3
	testl	%eax, %eax	# D.17551
	je	.L214	#,
	.loc 1 1108 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.143
	jmp	.L215	#
.L214:
	.loc 1 1108 0 discriminator 2
	movl	$4, %eax	#, iftmp.143
.L215:
	.loc 1 1108 0 discriminator 3
	movq	-216(%rbp), %rcx	# offset, tmp431
	imull	%ecx, %eax	# D.17557, D.17557
	addl	%edx, %eax	# D.17557, D.17557
	movl	%eax, -264(%rbp)	# D.17557, byte_offset
	.loc 1 1111 0 is_stmt 1 discriminator 3
	movl	16(%rbp), %eax	# tmode, tmode.146
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$7, %eax	#, D.17558
	je	.L216	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax	# tmode, tmode.147
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$8, %eax	#, D.17558
	je	.L216	#,
	.loc 1 1113 0 is_stmt 1 discriminator 1
	movl	16(%rbp), %eax	# tmode, tmode.148
	cltq
	movl	mode_class(,%rax,4), %ecx	# mode_class, D.17558
	movq	-336(%rbp), %rax	# bitsize, tmp435
	.loc 1 1111 0 discriminator 1
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.17558,
	movl	%eax, %edi	# D.17555,
	call	mode_for_size	#
	jmp	.L217	#
.L216:
	.loc 1 1111 0 is_stmt 0 discriminator 2
	movl	-352(%rbp), %eax	# mode, iftmp.145
.L217:
	.loc 1 1111 0 discriminator 3
	movl	%eax, -260(%rbp)	# iftmp.145, mode1
	.loc 1 1115 0 is_stmt 1 discriminator 3
	movq	-208(%rbp), %rax	# op0, tmp436
	movzwl	(%rax), %eax	# op0_12->code, D.17550
	cmpw	$66, %ax	#, D.17550
	je	.L218	#,
	.loc 1 1118 0
	movl	-260(%rbp), %eax	# mode1, mode1.149
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	testb	%al, %al	# D.17553
	je	.L218	#,
	.loc 1 1119 0
	movl	-260(%rbp), %eax	# mode1, mode1.150
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %ecx	# D.17553, D.17551
	movl	-264(%rbp), %eax	# byte_offset, tmp439
	cltd
	idivl	%ecx	# D.17551
	movl	%edx, %eax	# tmp440, D.17551
	testl	%eax, %eax	# D.17551
	je	.L219	#,
.L218:
	.loc 1 1120 0
	movq	-208(%rbp), %rax	# op0, tmp442
	movzwl	(%rax), %eax	# op0_12->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L220	#,
.L219:
	.loc 1 1124 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.152
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L221	#,
	.loc 1 1124 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.151
	jmp	.L222	#
.L221:
	.loc 1 1124 0 discriminator 2
	movl	$32, %eax	#, iftmp.151
.L222:
	.loc 1 1124 0 discriminator 3
	cmpq	-336(%rbp), %rax	# bitsize, iftmp.151
	ja	.L223	#,
	.loc 1 1124 0 discriminator 1
	movl	-352(%rbp), %eax	# mode, mode.153
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	cmpq	-336(%rbp), %rax	# bitsize, D.17552
	jne	.L223	#,
	.loc 1 1125 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.155
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L224	#,
	.loc 1 1125 0 is_stmt 0 discriminator 1
	movl	$64, %ebx	#, iftmp.154
	jmp	.L225	#
.L224:
	.loc 1 1125 0 discriminator 2
	movl	$32, %ebx	#, iftmp.154
.L225:
	.loc 1 1125 0 discriminator 3
	movq	-112(%rbp), %rax	# bitpos, tmp444
	movl	$0, %edx	#, tmp445
	divq	%rbx	# iftmp.154
	movq	%rdx, %rcx	# tmp445, tmp445
	movq	%rcx, %rax	# tmp445, D.17552
	testq	%rax, %rax	# D.17552
	je	.L226	#,
.L223:
	.loc 1 1126 0 is_stmt 1
	movl	16(%rbp), %eax	# tmode, tmode.156
	cltq
	movl	mode_class(,%rax,4), %ecx	# mode_class, D.17558
	movq	-336(%rbp), %rax	# bitsize, tmp448
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.17558,
	movl	%eax, %edi	# D.17555,
	call	mode_for_size	#
	cmpl	$51, %eax	#, D.17556
	je	.L220	#,
	.loc 1 1131 0
	cmpq	$0, -112(%rbp)	#, bitpos
	jne	.L220	#,
.L226:
	.loc 1 1135 0
	movq	-208(%rbp), %rax	# op0, tmp449
	movzbl	2(%rax), %eax	# op0_12->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-260(%rbp), %eax	# mode1, D.17555
	je	.L227	#,
	.loc 1 1137 0
	movq	-208(%rbp), %rax	# op0, tmp450
	movzwl	(%rax), %eax	# op0_12->code, D.17550
	cmpw	$63, %ax	#, D.17550
	jne	.L228	#,
	.loc 1 1139 0
	movq	-208(%rbp), %rax	# op0, tmp451
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, D.17554
	movzbl	2(%rax), %eax	# _198->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-260(%rbp), %eax	# mode1, D.17555
	je	.L229	#,
	.loc 1 1140 0
	movl	-260(%rbp), %eax	# mode1, mode1.157
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$1, %eax	#, D.17558
	je	.L229	#,
	.loc 1 1141 0
	movl	-260(%rbp), %eax	# mode1, mode1.158
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$3, %eax	#, D.17558
	jne	.L230	#,
.L229:
	.loc 1 1142 0
	movq	-208(%rbp), %rax	# op0, tmp454
	movq	8(%rax), %rax	# op0_12->fld[0].rtx, tmp455
	movq	%rax, -208(%rbp)	# tmp455, op0
	jmp	.L228	#
.L230:
	.loc 1 1147 0
	movl	$__FUNCTION__.12875, %edx	#,
	movl	$1147, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L228:
	.loc 1 1149 0
	movq	-208(%rbp), %rax	# op0, tmp456
	movzwl	(%rax), %eax	# op0_13->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L231	#,
	.loc 1 1150 0
	movl	-264(%rbp), %edx	# byte_offset, tmp457
	movq	-208(%rbp), %rcx	# op0, tmp458
	movl	-260(%rbp), %eax	# mode1, tmp459
	movq	%rcx, %rsi	# tmp458,
	movl	%eax, %edi	# tmp459,
	call	gen_rtx_SUBREG	#
	movq	%rax, -208(%rbp)	# tmp460, op0
	jmp	.L227	#
.L231:
	.loc 1 1152 0
	movq	-216(%rbp), %rdx	# offset, offset.159
	movl	-260(%rbp), %esi	# mode1, tmp461
	movq	-208(%rbp), %rax	# op0, tmp462
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp462,
	call	adjust_address_1	#
	movq	%rax, -208(%rbp)	# tmp463, op0
.L227:
	.loc 1 1154 0
	movl	-260(%rbp), %eax	# mode1, tmp464
	cmpl	-352(%rbp), %eax	# mode, tmp464
	je	.L232	#,
	.loc 1 1155 0
	movl	-348(%rbp), %edx	# unsignedp, tmp465
	movq	-208(%rbp), %rax	# op0, tmp466
	movq	%rax, %rsi	# tmp466,
	movl	16(%rbp), %edi	# tmode,
	call	convert_to_mode	#
	jmp	.L207	#
.L232:
	.loc 1 1156 0
	movq	-208(%rbp), %rax	# op0, D.17549
	jmp	.L207	#
.L220:
	.loc 1 1161 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.161
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L233	#,
	.loc 1 1161 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.160
	jmp	.L234	#
.L233:
	.loc 1 1161 0 discriminator 2
	movl	$32, %eax	#, iftmp.160
.L234:
	.loc 1 1161 0 discriminator 3
	cmpq	-336(%rbp), %rax	# bitsize, iftmp.160
	jae	.L235	#,
.LBB19:
	.loc 1 1168 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.163
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L236	#,
	.loc 1 1168 0 is_stmt 0 discriminator 1
	movl	$63, %eax	#, iftmp.162
	jmp	.L237	#
.L236:
	.loc 1 1168 0 discriminator 2
	movl	$31, %eax	#, iftmp.162
.L237:
	.loc 1 1168 0 discriminator 3
	movq	-336(%rbp), %rdx	# bitsize, tmp467
	addq	%rdx, %rax	# tmp467, D.17552
	movl	target_flags(%rip), %edx	# target_flags, target_flags.165
	andl	$33554432, %edx	#, D.17551
	testl	%edx, %edx	# D.17551
	je	.L238	#,
	.loc 1 1168 0 discriminator 1
	movl	$64, %ebx	#, iftmp.164
	jmp	.L239	#
.L238:
	.loc 1 1168 0 discriminator 2
	movl	$32, %ebx	#, iftmp.164
.L239:
	.loc 1 1168 0 discriminator 3
	movl	$0, %edx	#, tmp469
	divq	%rbx	# iftmp.164
	movl	%eax, -256(%rbp)	# D.17552, nwords
	.loc 1 1171 0 is_stmt 1 discriminator 3
	cmpq	$0, -360(%rbp)	#, target
	je	.L240	#,
	.loc 1 1171 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# target, tmp470
	movzwl	(%rax), %eax	# target_89(D)->code, D.17550
	cmpw	$61, %ax	#, D.17550
	je	.L241	#,
.L240:
	.loc 1 1172 0 is_stmt 1
	movl	-352(%rbp), %eax	# mode, tmp471
	movl	%eax, %edi	# tmp471,
	call	gen_reg_rtx	#
	movq	%rax, -360(%rbp)	# tmp472, target
.L241:
	.loc 1 1175 0
	movq	-360(%rbp), %rax	# target, tmp473
	movq	%rax, %rdx	# tmp473,
	movl	$0, %esi	#,
	movl	$49, %edi	#,
	call	gen_rtx_fmt_e	#
	movq	%rax, %rdi	# D.17554,
	call	emit_insn	#
	.loc 1 1177 0
	movl	$0, -308(%rbp)	#, i
	jmp	.L242	#
.L251:
.LBB20:
	.loc 1 1182 0
	movl	-308(%rbp), %eax	# i, tmp474
	movl	%eax, -252(%rbp)	# tmp474, wordnum
	.loc 1 1190 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.167
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L243	#,
	.loc 1 1190 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.166
	jmp	.L244	#
.L243:
	.loc 1 1190 0 discriminator 2
	movl	$32, %eax	#, iftmp.166
.L244:
	.loc 1 1190 0 discriminator 3
	movl	-308(%rbp), %edx	# i, i.168
	imull	%edx, %eax	# i.168, D.17551
	.loc 1 1187 0 is_stmt 1 discriminator 3
	movl	%eax, -248(%rbp)	# D.17551, bit_offset
	.loc 1 1191 0 discriminator 3
	movl	-252(%rbp), %esi	# wordnum, tmp475
	movq	-360(%rbp), %rax	# target, tmp476
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp476,
	call	operand_subword	#
	movq	%rax, -104(%rbp)	# tmp477, target_part
	.loc 1 1193 0 discriminator 3
	movl	word_mode(%rip), %ecx	# word_mode, word_mode.169
	movl	-248(%rbp), %edx	# bit_offset, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp478
	leaq	(%rdx,%rax), %rdi	#, D.17552
	movl	target_flags(%rip), %eax	# target_flags, target_flags.171
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L245	#,
	.loc 1 1193 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.170
	jmp	.L246	#
.L245:
	.loc 1 1193 0 discriminator 2
	movl	$32, %eax	#, iftmp.170
.L246:
	.loc 1 1193 0 discriminator 3
	imull	-308(%rbp), %eax	# i, D.17555
	movl	%eax, %eax	# D.17555, D.17552
	movq	-336(%rbp), %rdx	# bitsize, tmp479
	subq	%rax, %rdx	# D.17552, D.17552
	movl	target_flags(%rip), %eax	# target_flags, target_flags.173
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L247	#,
	.loc 1 1193 0 discriminator 1
	movl	$64, %eax	#, iftmp.172
	jmp	.L248	#
.L247:
	.loc 1 1193 0 discriminator 2
	movl	$32, %eax	#, iftmp.172
.L248:
	.loc 1 1193 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.172, D.17552
	cmovbe	%rdx, %rax	# D.17552,, D.17552
	movq	%rax, %rsi	# D.17552, D.17552
	.loc 1 1192 0 is_stmt 1 discriminator 3
	movl	-352(%rbp), %r9d	# mode, tmp480
	movq	-104(%rbp), %r8	# target_part, tmp481
	movq	-208(%rbp), %rax	# op0, tmp482
	movq	24(%rbp), %rdx	# total_size, tmp483
	movq	%rdx, 8(%rsp)	# tmp483,
	movl	%ecx, (%rsp)	# word_mode.169,
	movl	$1, %ecx	#,
	movq	%rdi, %rdx	# D.17552,
	movq	%rax, %rdi	# tmp482,
	call	extract_bit_field	#
	movq	%rax, -96(%rbp)	# tmp484, result_part
	.loc 1 1198 0 discriminator 3
	cmpq	$0, -104(%rbp)	#, target_part
	jne	.L249	#,
	.loc 1 1199 0
	movl	$__FUNCTION__.12875, %edx	#,
	movl	$1199, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L249:
	.loc 1 1201 0
	movq	-96(%rbp), %rax	# result_part, tmp485
	cmpq	-104(%rbp), %rax	# target_part, tmp485
	je	.L250	#,
	.loc 1 1202 0
	movq	-96(%rbp), %rdx	# result_part, tmp486
	movq	-104(%rbp), %rax	# target_part, tmp487
	movq	%rdx, %rsi	# tmp486,
	movq	%rax, %rdi	# tmp487,
	call	emit_move_insn	#
.L250:
.LBE20:
	.loc 1 1177 0
	addl	$1, -308(%rbp)	#, i
.L242:
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# i, tmp488
	cmpl	-256(%rbp), %eax	# nwords, tmp488
	jb	.L251	#,
	.loc 1 1205 0 is_stmt 1
	cmpl	$0, -348(%rbp)	#, unsignedp
	je	.L252	#,
	.loc 1 1209 0
	movq	-360(%rbp), %rax	# target, tmp489
	movzbl	2(%rax), %eax	# target_1->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %edx	# D.17553, D.17555
	movl	target_flags(%rip), %eax	# target_flags, target_flags.175
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L253	#,
	.loc 1 1209 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.174
	jmp	.L254	#
.L253:
	.loc 1 1209 0 discriminator 2
	movl	$4, %eax	#, iftmp.174
.L254:
	.loc 1 1209 0 discriminator 3
	imull	-256(%rbp), %eax	# nwords, D.17555
	cmpl	%eax, %edx	# D.17555, D.17555
	jbe	.L255	#,
.LBB21:
	.loc 1 1213 0 is_stmt 1
	movq	-360(%rbp), %rax	# target, tmp491
	movzbl	2(%rax), %eax	# target_1->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	movl	target_flags(%rip), %edx	# target_flags, target_flags.177
	andl	$33554432, %edx	#, D.17551
	testl	%edx, %edx	# D.17551
	je	.L256	#,
	.loc 1 1213 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.176
	jmp	.L257	#
.L256:
	.loc 1 1213 0 discriminator 2
	movl	$4, %ebx	#, iftmp.176
.L257:
	.loc 1 1213 0 discriminator 3
	cltd
	idivl	%ebx	# iftmp.176
	movl	%eax, -244(%rbp)	# D.17551, total_words
	.loc 1 1214 0 is_stmt 1 discriminator 3
	movl	-256(%rbp), %eax	# nwords, tmp495
	movl	%eax, -304(%rbp)	# tmp495, i
	jmp	.L258	#
.L259:
	.loc 1 1216 0 discriminator 2
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, D.17554
	movl	-304(%rbp), %esi	# i, tmp496
	movq	-360(%rbp), %rax	# target, tmp497
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp497,
	call	operand_subword	#
	movq	%rbx, %rsi	# D.17554,
	movq	%rax, %rdi	# D.17554,
	call	emit_move_insn	#
	.loc 1 1214 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L258:
	.loc 1 1214 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp498
	cmpl	-244(%rbp), %eax	# total_words, tmp498
	jb	.L259	#,
.L255:
.LBE21:
	.loc 1 1221 0 is_stmt 1
	movq	-360(%rbp), %rax	# target, D.17549
	jmp	.L207	#
.L252:
	.loc 1 1226 0
	movl	-352(%rbp), %eax	# mode, mode.178
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	.loc 1 1225 0
	movzwl	%ax, %eax	# D.17550, D.17552
	subq	-336(%rbp), %rax	# bitsize, D.17552
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17552,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17559
	movq	-360(%rbp), %rdx	# target, tmp500
	movl	-352(%rbp), %eax	# mode, tmp501
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp501,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -360(%rbp)	# tmp502, target
	.loc 1 1229 0
	movl	-352(%rbp), %eax	# mode, mode.179
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	.loc 1 1228 0
	movzwl	%ax, %eax	# D.17550, D.17552
	subq	-336(%rbp), %rax	# bitsize, D.17552
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17552,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17559
	movq	-360(%rbp), %rdx	# target, tmp504
	movl	-352(%rbp), %eax	# mode, tmp505
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp505,
	movl	$83, %edi	#,
	call	expand_shift	#
	jmp	.L207	#
.L235:
.LBE19:
	.loc 1 1240 0
	movl	16(%rbp), %edi	# tmode,
	call	int_mode_for_mode	#
	movl	%eax, -312(%rbp)	# tmp506, int_mode
	.loc 1 1241 0
	cmpl	$51, -312(%rbp)	#, int_mode
	jne	.L260	#,
	.loc 1 1242 0
	movl	-352(%rbp), %eax	# mode, tmp507
	movl	%eax, %edi	# tmp507,
	call	int_mode_for_mode	#
	movl	%eax, -312(%rbp)	# tmp508, int_mode
.L260:
	.loc 1 1243 0
	cmpl	$51, -312(%rbp)	#, int_mode
	jne	.L261	#,
	.loc 1 1244 0
	movl	$__FUNCTION__.12875, %edx	#,
	movl	$1244, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L261:
	.loc 1 1250 0
	movq	-208(%rbp), %rax	# op0, tmp509
	movzwl	(%rax), %eax	# op0_12->code, D.17550
	cmpw	$66, %ax	#, D.17550
	je	.L262	#,
	.loc 1 1252 0
	cmpq	$0, -216(%rbp)	#, offset
	jne	.L263	#,
	.loc 1 1253 0
	movq	-208(%rbp), %rax	# op0, tmp510
	movzbl	2(%rax), %eax	# op0_12->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %edx	# D.17553, D.17551
	movl	target_flags(%rip), %eax	# target_flags, target_flags.181
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L264	#,
	.loc 1 1253 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.180
	jmp	.L265	#
.L264:
	.loc 1 1253 0 discriminator 2
	movl	$4, %eax	#, iftmp.180
.L265:
	.loc 1 1253 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.180, D.17551
	jle	.L266	#,
.L263:
	.loc 1 1255 0 is_stmt 1
	movq	-208(%rbp), %rax	# op0, tmp512
	movzwl	(%rax), %eax	# op0_12->code, D.17550
	cmpw	$61, %ax	#, D.17550
	je	.L267	#,
	.loc 1 1256 0
	movq	-208(%rbp), %rax	# op0, tmp513
	movq	%rax, %rdi	# tmp513,
	call	copy_to_reg	#
	movq	%rax, -208(%rbp)	# tmp514, op0
.L267:
	.loc 1 1258 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.183
	andl	$33554432, %eax	#, D.17551
	.loc 1 1257 0
	testl	%eax, %eax	# D.17551
	je	.L268	#,
	.loc 1 1257 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.182
	jmp	.L269	#
.L268:
	.loc 1 1257 0 discriminator 2
	movl	$4, %eax	#, iftmp.182
.L269:
	.loc 1 1257 0 discriminator 3
	movq	-216(%rbp), %rdx	# offset, tmp515
	imull	%edx, %eax	# D.17557, D.17557
	movl	%eax, %ebx	# D.17557, D.17551
	movl	target_flags(%rip), %eax	# target_flags, target_flags.185
	andl	$33554432, %eax	#, D.17551
	testl	%eax, %eax	# D.17551
	je	.L270	#,
	.loc 1 1257 0 discriminator 4
	movl	$64, %eax	#, iftmp.184
	jmp	.L271	#
.L270:
	.loc 1 1257 0 discriminator 5
	movl	$32, %eax	#, iftmp.184
.L271:
	.loc 1 1257 0 discriminator 6
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# iftmp.184,
	call	mode_for_size	#
	movq	-208(%rbp), %rcx	# op0, tmp516
	movl	%ebx, %edx	# D.17551,
	movq	%rcx, %rsi	# tmp516,
	movl	%eax, %edi	# D.17556,
	call	gen_rtx_SUBREG	#
	movq	%rax, -208(%rbp)	# tmp517, op0
.L266:
	.loc 1 1260 0 is_stmt 1
	movq	$0, -216(%rbp)	#, offset
	jmp	.L272	#
.L262:
	.loc 1 1263 0
	movq	-328(%rbp), %rax	# str_rtx, tmp518
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp518,
	call	protect_from_queue	#
	movq	%rax, -208(%rbp)	# tmp519, op0
.L272:
	.loc 1 1267 0
	cmpl	$0, -348(%rbp)	#, unsignedp
	je	.L273	#,
	.loc 1 1270 0
	movl	-280(%rbp), %eax	# extzv_mode, extzv_mode.186
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	.loc 1 1269 0
	cmpq	-336(%rbp), %rax	# bitsize, D.17552
	jb	.L274	#,
	.loc 1 1271 0
	movq	-208(%rbp), %rax	# op0, tmp521
	movzwl	(%rax), %eax	# op0_17->code, D.17550
	cmpw	$61, %ax	#, D.17550
	je	.L275	#,
	.loc 1 1271 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# op0, tmp522
	movzwl	(%rax), %eax	# op0_17->code, D.17550
	cmpw	$63, %ax	#, D.17550
	jne	.L276	#,
.L275:
	.loc 1 1272 0 is_stmt 1 discriminator 2
	movq	-112(%rbp), %rax	# bitpos, tmp523
	movq	-336(%rbp), %rdx	# bitsize, tmp524
	addq	%rax, %rdx	# tmp523, D.17552
	movl	-280(%rbp), %eax	# extzv_mode, extzv_mode.187
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	.loc 1 1271 0 discriminator 2
	cmpq	%rax, %rdx	# D.17552, D.17552
	ja	.L274	#,
.L276:
.LBB22:
	.loc 1 1274 0
	movq	-112(%rbp), %rax	# bitpos, tmp526
	movq	%rax, -184(%rbp)	# tmp526, xbitpos
	movq	-216(%rbp), %rax	# offset, tmp527
	movq	%rax, -88(%rbp)	# tmp527, xoffset
	.loc 1 1276 0
	call	get_last_insn	#
	movq	%rax, -80(%rbp)	# tmp528, last
	.loc 1 1277 0
	movq	-208(%rbp), %rax	# op0, tmp529
	movq	%rax, -176(%rbp)	# tmp529, xop0
	.loc 1 1278 0
	movq	-360(%rbp), %rax	# target, tmp530
	movq	%rax, -168(%rbp)	# tmp530, xtarget
	.loc 1 1279 0
	movq	-200(%rbp), %rax	# spec_target, tmp531
	movq	%rax, -160(%rbp)	# tmp531, xspec_target
	.loc 1 1280 0
	movq	-192(%rbp), %rax	# spec_target_subreg, tmp532
	movq	%rax, -152(%rbp)	# tmp532, xspec_target_subreg
	.loc 1 1282 0
	movl	$0, %esi	#,
	movl	$2, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -240(%rbp)	# tmp533, maxmode
	.loc 1 1284 0
	movq	-176(%rbp), %rax	# xop0, tmp534
	movzwl	(%rax), %eax	# xop0_334->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L277	#,
.LBB23:
	.loc 1 1286 0
	movl	volatile_ok(%rip), %eax	# volatile_ok, tmp535
	movl	%eax, -236(%rbp)	# tmp535, save_volatile_ok
	.loc 1 1287 0
	movl	$1, volatile_ok(%rip)	#, volatile_ok
	.loc 1 1290 0
	movq	insn_data+44544(%rip), %rax	# insn_data[1113].operand, D.17560
	addq	$24, %rax	#, D.17560
	.loc 1 1291 0
	movq	(%rax), %rax	# _342->predicate, D.17561
	movq	-176(%rbp), %rdx	# xop0, tmp536
	movzbl	2(%rdx), %edx	# xop0_334->mode, D.17553
	movzbl	%dl, %ecx	# D.17553, D.17556
	movq	-176(%rbp), %rdx	# xop0, tmp537
	movl	%ecx, %esi	# D.17556,
	movq	%rdx, %rdi	# tmp537,
	call	*%rax	# D.17561
	.loc 1 1290 0
	testl	%eax, %eax	# D.17551
	jne	.L278	#,
.LBB24:
	.loc 1 1302 0
	movq	-176(%rbp), %rax	# xop0, tmp538
	movzbl	2(%rax), %eax	# xop0_334->mode, D.17553
	cmpb	$51, %al	#, D.17553
	je	.L279	#,
	.loc 1 1303 0
	movq	-208(%rbp), %rax	# op0, tmp539
	movzbl	2(%rax), %eax	# op0_17->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17553
	.loc 1 1304 0
	movl	-240(%rbp), %eax	# maxmode, maxmode.188
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	.loc 1 1303 0
	cmpb	%al, %dl	# D.17553, D.17553
	jbe	.L280	#,
.L279:
	.loc 1 1307 0
	movq	-176(%rbp), %rax	# xop0, tmp542
	movzbl	3(%rax), %eax	# *xop0_334, tmp545
	shrb	$3, %al	#, D.17562
	andl	$1, %eax	#, D.17562
	.loc 1 1305 0
	movzbl	%al, %ecx	# D.17562, D.17551
	.loc 1 1306 0
	movq	-176(%rbp), %rax	# xop0, tmp546
	movq	16(%rax), %rax	# xop0_334->fld[1].rtmem, D.17563
	.loc 1 1305 0
	testq	%rax, %rax	# D.17563
	je	.L281	#,
	.loc 1 1306 0
	movq	-176(%rbp), %rax	# xop0, tmp547
	movq	16(%rax), %rax	# xop0_334->fld[1].rtmem, D.17563
	.loc 1 1305 0
	movl	32(%rax), %eax	# _358->align, iftmp.189
	jmp	.L282	#
.L281:
	.loc 1 1305 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.189
.L282:
	.loc 1 1305 0 discriminator 2
	movq	-344(%rbp), %rdx	# bitnum, tmp548
	movl	%edx, %esi	# tmp548, D.17551
	movq	-336(%rbp), %rdx	# bitsize, tmp549
	movl	%edx, %edi	# tmp549, D.17551
	movl	-240(%rbp), %edx	# maxmode, tmp550
	movl	%ecx, %r8d	# D.17551,
	movl	%edx, %ecx	# tmp550,
	movl	%eax, %edx	# iftmp.189,
	call	get_best_mode	#
	movl	%eax, -300(%rbp)	# tmp551, bestmode
	jmp	.L283	#
.L280:
	.loc 1 1309 0 is_stmt 1
	movq	-176(%rbp), %rax	# xop0, tmp552
	movzbl	2(%rax), %eax	# xop0_334->mode, D.17553
	movzbl	%al, %eax	# D.17553, tmp553
	movl	%eax, -300(%rbp)	# tmp553, bestmode
.L283:
	.loc 1 1311 0
	cmpl	$0, -300(%rbp)	#, bestmode
	jne	.L284	#,
	.loc 1 1314 0
	jmp	.L274	#
.L284:
	.loc 1 1318 0
	movl	-300(%rbp), %eax	# bestmode, bestmode.190
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp555
	movl	%eax, -288(%rbp)	# tmp555, unit
	.loc 1 1319 0
	movl	-288(%rbp), %ebx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp558
	movl	$0, %edx	#, tmp557
	divq	%rbx	# D.17552
	movq	%rax, %rdx	# tmp556, D.17552
	movl	-300(%rbp), %eax	# bestmode, bestmode.191
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %eax	# D.17553, D.17552
	imulq	%rdx, %rax	# D.17552, tmp560
	movq	%rax, -88(%rbp)	# tmp560, xoffset
	.loc 1 1320 0
	movl	-288(%rbp), %ecx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp562
	movl	$0, %edx	#, tmp563
	divq	%rcx	# D.17552
	movq	%rdx, -184(%rbp)	# tmp563, xbitpos
	.loc 1 1321 0
	movq	-88(%rbp), %rdx	# xoffset, xoffset.192
	movl	-300(%rbp), %esi	# bestmode, tmp565
	movq	-176(%rbp), %rax	# xop0, tmp566
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp566,
	call	adjust_address_1	#
	movq	%rax, -176(%rbp)	# tmp567, xop0
	.loc 1 1324 0
	movq	-176(%rbp), %rdx	# xop0, tmp568
	movl	-300(%rbp), %eax	# bestmode, tmp569
	movq	%rdx, %rsi	# tmp568,
	movl	%eax, %edi	# tmp569,
	call	force_reg	#
	movq	%rax, -176(%rbp)	# tmp570, xop0
.LBE24:
	jmp	.L285	#
.L278:
	.loc 1 1330 0
	movq	-88(%rbp), %rdx	# xoffset, xoffset.193
	movl	byte_mode(%rip), %esi	# byte_mode, byte_mode.194
	movq	-176(%rbp), %rax	# xop0, tmp571
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp571,
	call	adjust_address_1	#
	movq	%rax, -176(%rbp)	# tmp572, xop0
.L285:
	.loc 1 1332 0
	movl	-236(%rbp), %eax	# save_volatile_ok, tmp573
	movl	%eax, volatile_ok(%rip)	# tmp573, volatile_ok
.L277:
.LBE23:
	.loc 1 1337 0
	movq	-176(%rbp), %rax	# xop0, tmp574
	movzwl	(%rax), %eax	# xop0_32->code, D.17550
	cmpw	$63, %ax	#, D.17550
	jne	.L286	#,
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# xop0, tmp575
	movzbl	2(%rax), %eax	# xop0_32->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-240(%rbp), %eax	# maxmode, D.17555
	je	.L286	#,
	.loc 1 1338 0 is_stmt 1
	jmp	.L274	#
.L286:
	.loc 1 1339 0
	movq	-176(%rbp), %rax	# xop0, tmp576
	movzwl	(%rax), %eax	# xop0_32->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L324	#,
	.loc 1 1339 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# xop0, tmp577
	movzbl	2(%rax), %eax	# xop0_32->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-240(%rbp), %eax	# maxmode, D.17555
	je	.L324	#,
	.loc 1 1340 0 is_stmt 1
	movq	-176(%rbp), %rcx	# xop0, tmp578
	movl	-240(%rbp), %eax	# maxmode, tmp579
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp578,
	movl	%eax, %edi	# tmp579,
	call	gen_rtx_SUBREG	#
	movq	%rax, -176(%rbp)	# tmp580, xop0
.L324:
	.loc 1 1351 0
	movl	-240(%rbp), %eax	# maxmode, maxmode.196
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp582
	movl	%eax, -288(%rbp)	# tmp582, unit
	.loc 1 1353 0
	cmpq	$0, -168(%rbp)	#, xtarget
	je	.L288	#,
	.loc 1 1354 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.197
	testl	%eax, %eax	# flag_force_mem.197
	je	.L289	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# xtarget, tmp583
	movzwl	(%rax), %eax	# xtarget_335->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L289	#,
.L288:
	.loc 1 1355 0 is_stmt 1
	movl	16(%rbp), %edi	# tmode,
	call	gen_reg_rtx	#
	movq	%rax, -160(%rbp)	# tmp584, xspec_target
	movq	-160(%rbp), %rax	# xspec_target, tmp585
	movq	%rax, -168(%rbp)	# tmp585, xtarget
.L289:
	.loc 1 1357 0
	movq	-168(%rbp), %rax	# xtarget, tmp586
	movzbl	2(%rax), %eax	# xtarget_34->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-240(%rbp), %eax	# maxmode, D.17555
	je	.L290	#,
	.loc 1 1359 0
	movq	-168(%rbp), %rax	# xtarget, tmp587
	movzwl	(%rax), %eax	# xtarget_34->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L291	#,
.LBB25:
	.loc 1 1361 0
	movl	-240(%rbp), %eax	# maxmode, maxmode.198
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17553
	.loc 1 1362 0
	movq	-168(%rbp), %rax	# xtarget, tmp589
	movzbl	2(%rax), %eax	# xtarget_34->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	cmpb	%al, %dl	# D.17553, D.17553
	seta	%al	#, D.17564
	.loc 1 1361 0
	movzbl	%al, %eax	# D.17564, tmp591
	movl	%eax, -232(%rbp)	# tmp591, wider
	.loc 1 1363 0
	movq	-168(%rbp), %rdx	# xtarget, tmp592
	movl	-240(%rbp), %eax	# maxmode, tmp593
	movq	%rdx, %rsi	# tmp592,
	movl	%eax, %edi	# tmp593,
	call	gen_lowpart	#
	movq	%rax, -168(%rbp)	# tmp594, xtarget
	.loc 1 1364 0
	cmpl	$0, -232(%rbp)	#, wider
	je	.L292	#,
	.loc 1 1365 0
	movq	-168(%rbp), %rax	# xtarget, tmp595
	movq	%rax, -152(%rbp)	# tmp595, xspec_target_subreg
.LBE25:
	jmp	.L290	#
.L292:
	jmp	.L290	#
.L291:
	.loc 1 1368 0
	movl	-240(%rbp), %eax	# maxmode, tmp596
	movl	%eax, %edi	# tmp596,
	call	gen_reg_rtx	#
	movq	%rax, -168(%rbp)	# tmp597, xtarget
.L290:
	.loc 1 1373 0
	movq	insn_data+44544(%rip), %rax	# insn_data[1113].operand, D.17560
	.loc 1 1374 0
	movq	(%rax), %rax	# _408->predicate, D.17561
	movl	-240(%rbp), %ecx	# maxmode, tmp598
	movq	-168(%rbp), %rdx	# xtarget, tmp599
	movl	%ecx, %esi	# tmp598,
	movq	%rdx, %rdi	# tmp599,
	call	*%rax	# D.17561
	.loc 1 1373 0
	testl	%eax, %eax	# D.17551
	jne	.L293	#,
	.loc 1 1375 0
	movl	-240(%rbp), %eax	# maxmode, tmp600
	movl	%eax, %edi	# tmp600,
	call	gen_reg_rtx	#
	movq	%rax, -168(%rbp)	# tmp601, xtarget
.L293:
	.loc 1 1377 0
	movq	-336(%rbp), %rax	# bitsize, bitsize.199
	movq	%rax, %rsi	# bitsize.199,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -72(%rbp)	# tmp602, bitsize_rtx
	.loc 1 1378 0
	movq	-184(%rbp), %rax	# xbitpos, xbitpos.200
	movq	%rax, %rsi	# xbitpos.200,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -64(%rbp)	# tmp603, bitpos_rtx
	.loc 1 1380 0
	movq	-168(%rbp), %rax	# xtarget, tmp604
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp604,
	call	protect_from_queue	#
	movq	-64(%rbp), %rcx	# bitpos_rtx, tmp605
	movq	-72(%rbp), %rdx	# bitsize_rtx, tmp606
	movq	-176(%rbp), %rsi	# xop0, tmp607
	movq	%rax, %rdi	# D.17554,
	call	gen_extzv	#
	movq	%rax, -56(%rbp)	# tmp608, pat
	.loc 1 1382 0
	cmpq	$0, -56(%rbp)	#, pat
	je	.L294	#,
	.loc 1 1384 0
	movq	-56(%rbp), %rax	# pat, tmp609
	movq	%rax, %rdi	# tmp609,
	call	emit_insn	#
	.loc 1 1385 0
	movq	-168(%rbp), %rax	# xtarget, tmp610
	movq	%rax, -360(%rbp)	# tmp610, target
	.loc 1 1386 0
	movq	-160(%rbp), %rax	# xspec_target, tmp611
	movq	%rax, -200(%rbp)	# tmp611, spec_target
	.loc 1 1387 0
	movq	-152(%rbp), %rax	# xspec_target_subreg, tmp612
	movq	%rax, -192(%rbp)	# tmp612, spec_target_subreg
.LBE22:
	.loc 1 1273 0
	jmp	.L296	#
.L294:
.LBB26:
	.loc 1 1391 0
	movq	-80(%rbp), %rax	# last, tmp613
	movq	%rax, %rdi	# tmp613,
	call	delete_insns_since	#
	.loc 1 1392 0
	movq	-360(%rbp), %r8	# target, tmp614
	movq	-112(%rbp), %rdi	# bitpos, tmp615
	movq	-336(%rbp), %rcx	# bitsize, tmp616
	movq	-216(%rbp), %rdx	# offset, tmp617
	movq	-208(%rbp), %rsi	# op0, tmp618
	movl	-312(%rbp), %eax	# int_mode, tmp619
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp614,
	movq	%rdi, %r8	# tmp615,
	movl	%eax, %edi	# tmp619,
	call	extract_fixed_bit_field	#
	movq	%rax, -360(%rbp)	# tmp620, target
.LBE26:
	.loc 1 1273 0
	jmp	.L296	#
.L274:
	.loc 1 1398 0
	movq	-360(%rbp), %r8	# target, tmp621
	movq	-112(%rbp), %rdi	# bitpos, tmp622
	movq	-336(%rbp), %rcx	# bitsize, tmp623
	movq	-216(%rbp), %rdx	# offset, tmp624
	movq	-208(%rbp), %rsi	# op0, tmp625
	movl	-312(%rbp), %eax	# int_mode, tmp626
	movl	$1, (%rsp)	#,
	movq	%r8, %r9	# tmp621,
	movq	%rdi, %r8	# tmp622,
	movl	%eax, %edi	# tmp626,
	call	extract_fixed_bit_field	#
	movq	%rax, -360(%rbp)	# tmp627, target
	jmp	.L297	#
.L296:
	jmp	.L297	#
.L273:
	.loc 1 1404 0
	movl	-284(%rbp), %eax	# extv_mode, extv_mode.201
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	.loc 1 1403 0
	cmpq	-336(%rbp), %rax	# bitsize, D.17552
	jb	.L298	#,
	.loc 1 1405 0
	movq	-208(%rbp), %rax	# op0, tmp629
	movzwl	(%rax), %eax	# op0_17->code, D.17550
	cmpw	$61, %ax	#, D.17550
	je	.L299	#,
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# op0, tmp630
	movzwl	(%rax), %eax	# op0_17->code, D.17550
	cmpw	$63, %ax	#, D.17550
	jne	.L300	#,
.L299:
	.loc 1 1406 0 is_stmt 1 discriminator 2
	movq	-112(%rbp), %rax	# bitpos, tmp631
	movq	-336(%rbp), %rdx	# bitsize, tmp632
	addq	%rax, %rdx	# tmp631, D.17552
	movl	-284(%rbp), %eax	# extv_mode, extv_mode.202
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17552
	.loc 1 1405 0 discriminator 2
	cmpq	%rax, %rdx	# D.17552, D.17552
	ja	.L298	#,
.L300:
.LBB27:
	.loc 1 1408 0
	movq	-112(%rbp), %rax	# bitpos, tmp634
	movl	%eax, -296(%rbp)	# tmp634, xbitpos
	movq	-216(%rbp), %rax	# offset, tmp635
	movl	%eax, -228(%rbp)	# tmp635, xoffset
	.loc 1 1410 0
	call	get_last_insn	#
	movq	%rax, -48(%rbp)	# tmp636, last
	.loc 1 1411 0
	movq	-208(%rbp), %rax	# op0, tmp637
	movq	%rax, -144(%rbp)	# tmp637, xop0
	movq	-360(%rbp), %rax	# target, tmp638
	movq	%rax, -136(%rbp)	# tmp638, xtarget
	.loc 1 1412 0
	movq	-200(%rbp), %rax	# spec_target, tmp639
	movq	%rax, -128(%rbp)	# tmp639, xspec_target
	.loc 1 1413 0
	movq	-192(%rbp), %rax	# spec_target_subreg, tmp640
	movq	%rax, -120(%rbp)	# tmp640, xspec_target_subreg
	.loc 1 1415 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	mode_for_extraction	#
	movl	%eax, -224(%rbp)	# tmp641, maxmode
	.loc 1 1417 0
	movq	-144(%rbp), %rax	# xop0, tmp642
	movzwl	(%rax), %eax	# xop0_435->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L301	#,
	.loc 1 1420 0
	movq	insn_data+44504(%rip), %rax	# insn_data[1112].operand, D.17560
	addq	$24, %rax	#, D.17560
	.loc 1 1421 0
	movq	(%rax), %rax	# _442->predicate, D.17561
	movq	-144(%rbp), %rdx	# xop0, tmp643
	movzbl	2(%rdx), %edx	# xop0_435->mode, D.17553
	movzbl	%dl, %ecx	# D.17553, D.17556
	movq	-144(%rbp), %rdx	# xop0, tmp644
	movl	%ecx, %esi	# D.17556,
	movq	%rdx, %rdi	# tmp644,
	call	*%rax	# D.17561
	.loc 1 1420 0
	testl	%eax, %eax	# D.17551
	jne	.L302	#,
.LBB28:
	.loc 1 1432 0
	movq	-144(%rbp), %rax	# xop0, tmp645
	movzbl	2(%rax), %eax	# xop0_435->mode, D.17553
	cmpb	$51, %al	#, D.17553
	je	.L303	#,
	.loc 1 1433 0
	movq	-208(%rbp), %rax	# op0, tmp646
	movzbl	2(%rax), %eax	# op0_17->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17553
	.loc 1 1434 0
	movl	-224(%rbp), %eax	# maxmode, maxmode.203
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	.loc 1 1433 0
	cmpb	%al, %dl	# D.17553, D.17553
	jbe	.L304	#,
.L303:
	.loc 1 1437 0
	movq	-144(%rbp), %rax	# xop0, tmp649
	movzbl	3(%rax), %eax	# *xop0_435, tmp652
	shrb	$3, %al	#, D.17562
	andl	$1, %eax	#, D.17562
	.loc 1 1435 0
	movzbl	%al, %ecx	# D.17562, D.17551
	.loc 1 1436 0
	movq	-144(%rbp), %rax	# xop0, tmp653
	movq	16(%rax), %rax	# xop0_435->fld[1].rtmem, D.17563
	.loc 1 1435 0
	testq	%rax, %rax	# D.17563
	je	.L305	#,
	.loc 1 1436 0
	movq	-144(%rbp), %rax	# xop0, tmp654
	movq	16(%rax), %rax	# xop0_435->fld[1].rtmem, D.17563
	.loc 1 1435 0
	movl	32(%rax), %eax	# _458->align, iftmp.204
	jmp	.L306	#
.L305:
	.loc 1 1435 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.204
.L306:
	.loc 1 1435 0 discriminator 2
	movq	-344(%rbp), %rdx	# bitnum, tmp655
	movl	%edx, %esi	# tmp655, D.17551
	movq	-336(%rbp), %rdx	# bitsize, tmp656
	movl	%edx, %edi	# tmp656, D.17551
	movl	-224(%rbp), %edx	# maxmode, tmp657
	movl	%ecx, %r8d	# D.17551,
	movl	%edx, %ecx	# tmp657,
	movl	%eax, %edx	# iftmp.204,
	call	get_best_mode	#
	movl	%eax, -292(%rbp)	# tmp658, bestmode
	jmp	.L307	#
.L304:
	.loc 1 1439 0 is_stmt 1
	movq	-144(%rbp), %rax	# xop0, tmp659
	movzbl	2(%rax), %eax	# xop0_435->mode, D.17553
	movzbl	%al, %eax	# D.17553, tmp660
	movl	%eax, -292(%rbp)	# tmp660, bestmode
.L307:
	.loc 1 1441 0
	cmpl	$0, -292(%rbp)	#, bestmode
	jne	.L308	#,
	.loc 1 1444 0
	jmp	.L298	#
.L308:
	.loc 1 1448 0
	movl	-292(%rbp), %eax	# bestmode, bestmode.205
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp662
	movl	%eax, -288(%rbp)	# tmp662, unit
	.loc 1 1449 0
	movl	-288(%rbp), %ebx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp665
	movl	$0, %edx	#, tmp664
	divq	%rbx	# D.17552
	movl	%eax, %edx	# D.17552, D.17557
	movl	-292(%rbp), %eax	# bestmode, bestmode.206
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	movzbl	%al, %eax	# D.17553, D.17557
	imull	%edx, %eax	# D.17557, D.17557
	movl	%eax, -228(%rbp)	# D.17557, xoffset
	.loc 1 1450 0
	movl	-288(%rbp), %ecx	# unit, D.17552
	movq	-344(%rbp), %rax	# bitnum, tmp667
	movl	$0, %edx	#, tmp668
	divq	%rcx	# D.17552
	movq	%rdx, %rax	# tmp668, D.17552
	movl	%eax, -296(%rbp)	# D.17552, xbitpos
	.loc 1 1451 0
	movl	-228(%rbp), %eax	# xoffset, tmp670
	movslq	%eax, %rdx	# tmp670, D.17565
	movl	-292(%rbp), %esi	# bestmode, tmp671
	movq	-144(%rbp), %rax	# xop0, tmp672
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp672,
	call	adjust_address_1	#
	movq	%rax, -144(%rbp)	# tmp673, xop0
	.loc 1 1454 0
	movq	-144(%rbp), %rdx	# xop0, tmp674
	movl	-292(%rbp), %eax	# bestmode, tmp675
	movq	%rdx, %rsi	# tmp674,
	movl	%eax, %edi	# tmp675,
	call	force_reg	#
	movq	%rax, -144(%rbp)	# tmp676, xop0
.LBE28:
	jmp	.L301	#
.L302:
	.loc 1 1460 0
	movl	-228(%rbp), %eax	# xoffset, tmp677
	movslq	%eax, %rdx	# tmp677, D.17565
	movl	byte_mode(%rip), %esi	# byte_mode, byte_mode.207
	movq	-144(%rbp), %rax	# xop0, tmp678
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp678,
	call	adjust_address_1	#
	movq	%rax, -144(%rbp)	# tmp679, xop0
.L301:
	.loc 1 1465 0
	movq	-144(%rbp), %rax	# xop0, tmp680
	movzwl	(%rax), %eax	# xop0_42->code, D.17550
	cmpw	$63, %ax	#, D.17550
	jne	.L309	#,
	.loc 1 1465 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# xop0, tmp681
	movzbl	2(%rax), %eax	# xop0_42->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-224(%rbp), %eax	# maxmode, D.17555
	je	.L309	#,
	.loc 1 1466 0 is_stmt 1
	jmp	.L298	#
.L309:
	.loc 1 1467 0
	movq	-144(%rbp), %rax	# xop0, tmp682
	movzwl	(%rax), %eax	# xop0_42->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L325	#,
	.loc 1 1467 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# xop0, tmp683
	movzbl	2(%rax), %eax	# xop0_42->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-224(%rbp), %eax	# maxmode, D.17555
	je	.L325	#,
	.loc 1 1468 0 is_stmt 1
	movq	-144(%rbp), %rcx	# xop0, tmp684
	movl	-224(%rbp), %eax	# maxmode, tmp685
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp684,
	movl	%eax, %edi	# tmp685,
	call	gen_rtx_SUBREG	#
	movq	%rax, -144(%rbp)	# tmp686, xop0
.L325:
	.loc 1 1480 0
	movl	-224(%rbp), %eax	# maxmode, maxmode.211
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, tmp688
	movl	%eax, -288(%rbp)	# tmp688, unit
	.loc 1 1482 0
	cmpq	$0, -136(%rbp)	#, xtarget
	je	.L311	#,
	.loc 1 1483 0
	movl	flag_force_mem(%rip), %eax	# flag_force_mem, flag_force_mem.212
	testl	%eax, %eax	# flag_force_mem.212
	je	.L312	#,
	.loc 1 1483 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# xtarget, tmp689
	movzwl	(%rax), %eax	# xtarget_436->code, D.17550
	cmpw	$66, %ax	#, D.17550
	jne	.L312	#,
.L311:
	.loc 1 1484 0 is_stmt 1
	movl	16(%rbp), %edi	# tmode,
	call	gen_reg_rtx	#
	movq	%rax, -128(%rbp)	# tmp690, xspec_target
	movq	-128(%rbp), %rax	# xspec_target, tmp691
	movq	%rax, -136(%rbp)	# tmp691, xtarget
.L312:
	.loc 1 1486 0
	movq	-136(%rbp), %rax	# xtarget, tmp692
	movzbl	2(%rax), %eax	# xtarget_44->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-224(%rbp), %eax	# maxmode, D.17555
	je	.L313	#,
	.loc 1 1488 0
	movq	-136(%rbp), %rax	# xtarget, tmp693
	movzwl	(%rax), %eax	# xtarget_44->code, D.17550
	cmpw	$61, %ax	#, D.17550
	jne	.L314	#,
.LBB29:
	.loc 1 1490 0
	movl	-224(%rbp), %eax	# maxmode, maxmode.213
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17553
	.loc 1 1491 0
	movq	-136(%rbp), %rax	# xtarget, tmp695
	movzbl	2(%rax), %eax	# xtarget_44->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17551
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17553
	cmpb	%al, %dl	# D.17553, D.17553
	seta	%al	#, D.17564
	.loc 1 1490 0
	movzbl	%al, %eax	# D.17564, tmp697
	movl	%eax, -220(%rbp)	# tmp697, wider
	.loc 1 1492 0
	movq	-136(%rbp), %rdx	# xtarget, tmp698
	movl	-224(%rbp), %eax	# maxmode, tmp699
	movq	%rdx, %rsi	# tmp698,
	movl	%eax, %edi	# tmp699,
	call	gen_lowpart	#
	movq	%rax, -136(%rbp)	# tmp700, xtarget
	.loc 1 1493 0
	cmpl	$0, -220(%rbp)	#, wider
	je	.L315	#,
	.loc 1 1494 0
	movq	-136(%rbp), %rax	# xtarget, tmp701
	movq	%rax, -120(%rbp)	# tmp701, xspec_target_subreg
.LBE29:
	jmp	.L313	#
.L315:
	jmp	.L313	#
.L314:
	.loc 1 1497 0
	movl	-224(%rbp), %eax	# maxmode, tmp702
	movl	%eax, %edi	# tmp702,
	call	gen_reg_rtx	#
	movq	%rax, -136(%rbp)	# tmp703, xtarget
.L313:
	.loc 1 1502 0
	movq	insn_data+44504(%rip), %rax	# insn_data[1112].operand, D.17560
	.loc 1 1503 0
	movq	(%rax), %rax	# _511->predicate, D.17561
	movl	-224(%rbp), %ecx	# maxmode, tmp704
	movq	-136(%rbp), %rdx	# xtarget, tmp705
	movl	%ecx, %esi	# tmp704,
	movq	%rdx, %rdi	# tmp705,
	call	*%rax	# D.17561
	.loc 1 1502 0
	testl	%eax, %eax	# D.17551
	jne	.L316	#,
	.loc 1 1504 0
	movl	-224(%rbp), %eax	# maxmode, tmp706
	movl	%eax, %edi	# tmp706,
	call	gen_reg_rtx	#
	movq	%rax, -136(%rbp)	# tmp707, xtarget
.L316:
	.loc 1 1506 0
	movq	-336(%rbp), %rax	# bitsize, bitsize.214
	movq	%rax, %rsi	# bitsize.214,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -40(%rbp)	# tmp708, bitsize_rtx
	.loc 1 1507 0
	movl	-296(%rbp), %eax	# xbitpos, tmp709
	cltq
	movq	%rax, %rsi	# D.17565,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp710, bitpos_rtx
	.loc 1 1509 0
	movq	-136(%rbp), %rax	# xtarget, tmp711
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp711,
	call	protect_from_queue	#
	movq	-32(%rbp), %rcx	# bitpos_rtx, tmp712
	movq	-40(%rbp), %rdx	# bitsize_rtx, tmp713
	movq	-144(%rbp), %rsi	# xop0, tmp714
	movq	%rax, %rdi	# D.17554,
	call	gen_extv	#
	movq	%rax, -24(%rbp)	# tmp715, pat
	.loc 1 1511 0
	cmpq	$0, -24(%rbp)	#, pat
	je	.L317	#,
	.loc 1 1513 0
	movq	-24(%rbp), %rax	# pat, tmp716
	movq	%rax, %rdi	# tmp716,
	call	emit_insn	#
	.loc 1 1514 0
	movq	-136(%rbp), %rax	# xtarget, tmp717
	movq	%rax, -360(%rbp)	# tmp717, target
	.loc 1 1515 0
	movq	-128(%rbp), %rax	# xspec_target, tmp718
	movq	%rax, -200(%rbp)	# tmp718, spec_target
	.loc 1 1516 0
	movq	-120(%rbp), %rax	# xspec_target_subreg, tmp719
	movq	%rax, -192(%rbp)	# tmp719, spec_target_subreg
.LBE27:
	.loc 1 1407 0
	jmp	.L297	#
.L317:
.LBB30:
	.loc 1 1520 0
	movq	-48(%rbp), %rax	# last, tmp720
	movq	%rax, %rdi	# tmp720,
	call	delete_insns_since	#
	.loc 1 1521 0
	movq	-360(%rbp), %r8	# target, tmp721
	movq	-112(%rbp), %rdi	# bitpos, tmp722
	movq	-336(%rbp), %rcx	# bitsize, tmp723
	movq	-216(%rbp), %rdx	# offset, tmp724
	movq	-208(%rbp), %rsi	# op0, tmp725
	movl	-312(%rbp), %eax	# int_mode, tmp726
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp721,
	movq	%rdi, %r8	# tmp722,
	movl	%eax, %edi	# tmp726,
	call	extract_fixed_bit_field	#
	movq	%rax, -360(%rbp)	# tmp727, target
.LBE30:
	.loc 1 1407 0
	jmp	.L297	#
.L298:
	.loc 1 1527 0
	movq	-360(%rbp), %r8	# target, tmp728
	movq	-112(%rbp), %rdi	# bitpos, tmp729
	movq	-336(%rbp), %rcx	# bitsize, tmp730
	movq	-216(%rbp), %rdx	# offset, tmp731
	movq	-208(%rbp), %rsi	# op0, tmp732
	movl	-312(%rbp), %eax	# int_mode, tmp733
	movl	$0, (%rsp)	#,
	movq	%r8, %r9	# tmp728,
	movq	%rdi, %r8	# tmp729,
	movl	%eax, %edi	# tmp733,
	call	extract_fixed_bit_field	#
	movq	%rax, -360(%rbp)	# tmp734, target
.L297:
	.loc 1 1530 0
	movq	-360(%rbp), %rax	# target, tmp735
	cmpq	-200(%rbp), %rax	# spec_target, tmp735
	jne	.L319	#,
	.loc 1 1531 0
	movq	-360(%rbp), %rax	# target, D.17549
	jmp	.L207	#
.L319:
	.loc 1 1532 0
	movq	-360(%rbp), %rax	# target, tmp736
	cmpq	-192(%rbp), %rax	# spec_target_subreg, tmp736
	jne	.L320	#,
	.loc 1 1533 0
	movq	-200(%rbp), %rax	# spec_target, D.17549
	jmp	.L207	#
.L320:
	.loc 1 1534 0
	movq	-360(%rbp), %rax	# target, tmp737
	movzbl	2(%rax), %eax	# target_5->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	16(%rbp), %eax	# tmode, D.17555
	je	.L321	#,
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movq	-360(%rbp), %rax	# target, tmp738
	movzbl	2(%rax), %eax	# target_5->mode, D.17553
	movzbl	%al, %eax	# D.17553, D.17555
	cmpl	-352(%rbp), %eax	# mode, D.17555
	je	.L321	#,
	.loc 1 1539 0 is_stmt 1
	movl	16(%rbp), %eax	# tmode, tmode.215
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$1, %eax	#, D.17558
	je	.L322	#,
	.loc 1 1540 0
	movl	16(%rbp), %eax	# tmode, tmode.216
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17558
	cmpl	$3, %eax	#, D.17558
	je	.L322	#,
	.loc 1 1542 0
	movl	16(%rbp), %eax	# tmode, tmode.217
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17550
	movzwl	%ax, %eax	# D.17550, D.17555
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.17555,
	call	mode_for_size	#
	movl	-348(%rbp), %edx	# unsignedp, tmp742
	movq	-360(%rbp), %rcx	# target, tmp743
	movq	%rcx, %rsi	# tmp743,
	movl	%eax, %edi	# D.17556,
	call	convert_to_mode	#
	movq	%rax, -360(%rbp)	# tmp744, target
	.loc 1 1545 0
	movq	-360(%rbp), %rax	# target, tmp745
	movq	%rax, %rsi	# tmp745,
	movl	16(%rbp), %edi	# tmode,
	call	gen_lowpart	#
	jmp	.L207	#
.L322:
	.loc 1 1548 0
	movl	-348(%rbp), %edx	# unsignedp, tmp746
	movq	-360(%rbp), %rax	# target, tmp747
	movq	%rax, %rsi	# tmp747,
	movl	16(%rbp), %edi	# tmode,
	call	convert_to_mode	#
	jmp	.L207	#
.L321:
	.loc 1 1550 0
	movq	-360(%rbp), %rax	# target, D.17549
.L207:
	.loc 1 1551 0
	addq	$376, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	extract_bit_field, .-extract_bit_field
	.type	extract_fixed_bit_field, @function
extract_fixed_bit_field:
.LFB9:
	.loc 1 1576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# tmode, tmode
	movq	%rsi, -80(%rbp)	# op0, op0
	movq	%rdx, -88(%rbp)	# offset, offset
	movq	%rcx, -96(%rbp)	# bitsize, bitsize
	movq	%r8, -104(%rbp)	# bitpos, bitpos
	movq	%r9, -112(%rbp)	# target, target
	.loc 1 1577 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.219
	andl	$33554432, %eax	#, D.17567
	testl	%eax, %eax	# D.17567
	je	.L327	#,
	.loc 1 1577 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.218
	jmp	.L328	#
.L327:
	.loc 1 1577 0 discriminator 2
	movl	$32, %eax	#, iftmp.218
.L328:
	.loc 1 1577 0 discriminator 3
	movl	%eax, -52(%rbp)	# iftmp.218, total_bits
	.loc 1 1580 0 is_stmt 1 discriminator 3
	movq	-80(%rbp), %rax	# op0, tmp146
	movzwl	(%rax), %eax	# op0_23(D)->code, D.17568
	cmpw	$63, %ax	#, D.17568
	je	.L329	#,
	.loc 1 1580 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# op0, tmp147
	movzwl	(%rax), %eax	# op0_23(D)->code, D.17568
	cmpw	$61, %ax	#, D.17568
	jne	.L330	#,
.L329:
	.loc 1 1583 0 is_stmt 1
	movq	-104(%rbp), %rax	# bitpos, tmp148
	movq	-96(%rbp), %rdx	# bitsize, tmp149
	addq	%rax, %rdx	# tmp148, D.17572
	movl	target_flags(%rip), %eax	# target_flags, target_flags.221
	andl	$33554432, %eax	#, D.17567
	testl	%eax, %eax	# D.17567
	je	.L331	#,
	.loc 1 1583 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.220
	jmp	.L332	#
.L331:
	.loc 1 1583 0 discriminator 2
	movl	$32, %eax	#, iftmp.220
.L332:
	.loc 1 1583 0 discriminator 3
	cmpq	%rax, %rdx	# iftmp.220, D.17572
	jbe	.L333	#,
	.loc 1 1584 0 is_stmt 1
	movq	-104(%rbp), %rdx	# bitpos, tmp150
	movq	-96(%rbp), %rsi	# bitsize, tmp151
	movq	-80(%rbp), %rax	# op0, tmp152
	movl	16(%rbp), %ecx	# unsignedp,
	movq	%rax, %rdi	# tmp152,
	call	extract_split_bit_field	#
	jmp	.L334	#
.L333:
	.loc 1 1583 0 discriminator 1
	jmp	.L335	#
.L330:
	.loc 1 1593 0
	movq	-80(%rbp), %rax	# op0, tmp153
	movzbl	3(%rax), %eax	# *op0_23(D), tmp156
	shrb	$3, %al	#, D.17569
	andl	$1, %eax	#, D.17569
	.loc 1 1592 0
	movzbl	%al, %ecx	# D.17569, D.17567
	movl	word_mode(%rip), %edx	# word_mode, word_mode.222
	.loc 1 1593 0
	movq	-80(%rbp), %rax	# op0, tmp157
	movq	16(%rax), %rax	# op0_23(D)->fld[1].rtmem, D.17570
	.loc 1 1592 0
	testq	%rax, %rax	# D.17570
	je	.L336	#,
	.loc 1 1593 0
	movq	-80(%rbp), %rax	# op0, tmp158
	movq	16(%rax), %rax	# op0_23(D)->fld[1].rtmem, D.17570
	.loc 1 1592 0
	movl	32(%rax), %eax	# _30->align, iftmp.223
	jmp	.L337	#
.L336:
	.loc 1 1592 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.223
.L337:
	.loc 1 1592 0 discriminator 2
	movq	-88(%rbp), %rsi	# offset, tmp159
	leal	0(,%rsi,8), %edi	#, D.17571
	movq	-104(%rbp), %rsi	# bitpos, tmp160
	addl	%edi, %esi	# D.17571, D.17571
	movq	-96(%rbp), %rdi	# bitsize, tmp161
	movl	%ecx, %r8d	# D.17567,
	movl	%edx, %ecx	# word_mode.222,
	movl	%eax, %edx	# iftmp.223,
	call	get_best_mode	#
	movl	%eax, -56(%rbp)	# tmp162, mode
	.loc 1 1595 0 is_stmt 1 discriminator 2
	cmpl	$0, -56(%rbp)	#, mode
	jne	.L338	#,
	.loc 1 1599 0
	movq	-88(%rbp), %rax	# offset, tmp163
	leaq	0(,%rax,8), %rdx	#, D.17572
	.loc 1 1598 0
	movq	-104(%rbp), %rax	# bitpos, tmp164
	addq	%rax, %rdx	# tmp164, D.17572
	movq	-96(%rbp), %rsi	# bitsize, tmp165
	movq	-80(%rbp), %rax	# op0, tmp166
	movl	16(%rbp), %ecx	# unsignedp,
	movq	%rax, %rdi	# tmp166,
	call	extract_split_bit_field	#
	jmp	.L334	#
.L338:
	.loc 1 1602 0
	movl	-56(%rbp), %eax	# mode, mode.224
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	movzwl	%ax, %eax	# D.17568, tmp168
	movl	%eax, -52(%rbp)	# tmp168, total_bits
	.loc 1 1607 0
	movl	-52(%rbp), %eax	# total_bits, D.17572
	cmpq	-104(%rbp), %rax	# bitpos, D.17572
	ja	.L339	#,
	.loc 1 1609 0
	movl	-52(%rbp), %ebx	# total_bits, D.17572
	movq	-104(%rbp), %rax	# bitpos, tmp171
	movl	$0, %edx	#, tmp170
	divq	%rbx	# D.17572
	movq	%rax, %rdx	# tmp169, D.17572
	movl	-52(%rbp), %eax	# total_bits, tmp172
	shrl	$3, %eax	#, D.17573
	movl	%eax, %eax	# D.17573, D.17572
	imulq	%rdx, %rax	# D.17572, D.17572
	addq	%rax, -88(%rbp)	# D.17572, offset
	.loc 1 1610 0
	movl	-52(%rbp), %ebx	# total_bits, D.17572
	movq	-104(%rbp), %rax	# bitpos, tmp175
	movl	$0, %edx	#, tmp174
	divq	%rbx	# D.17572
	movq	%rax, %rdx	# tmp173, D.17572
	movl	-52(%rbp), %eax	# total_bits, tmp176
	shrl	$3, %eax	#, D.17573
	movl	%eax, %eax	# D.17573, D.17572
	imulq	%rdx, %rax	# D.17572, D.17572
	.loc 1 1611 0
	salq	$3, %rax	#, D.17572
	.loc 1 1610 0
	subq	%rax, -104(%rbp)	# D.17572, bitpos
.L339:
	.loc 1 1618 0
	movl	-52(%rbp), %eax	# total_bits, tmp177
	shrl	$3, %eax	#, D.17573
	movl	%eax, %ecx	# D.17573, D.17572
	movq	-88(%rbp), %rax	# offset, tmp178
	movl	$0, %edx	#, tmp179
	divq	%rcx	# D.17572
	movq	%rdx, %rax	# tmp179, D.17572
	salq	$3, %rax	#, D.17572
	addq	%rax, -104(%rbp)	# D.17572, bitpos
	.loc 1 1619 0
	movl	-52(%rbp), %eax	# total_bits, tmp181
	shrl	$3, %eax	#, D.17573
	movl	%eax, %ecx	# D.17573, D.17572
	movq	-88(%rbp), %rax	# offset, tmp182
	movl	$0, %edx	#, tmp183
	divq	%rcx	# D.17572
	movq	%rdx, %rax	# tmp183, D.17572
	subq	%rax, -88(%rbp)	# D.17572, offset
	.loc 1 1620 0
	movq	-88(%rbp), %rdx	# offset, offset.225
	movl	-56(%rbp), %esi	# mode, tmp185
	movq	-80(%rbp), %rax	# op0, tmp186
	movl	$1, %r8d	#,
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp186,
	call	adjust_address_1	#
	movq	%rax, -80(%rbp)	# tmp187, op0
.L335:
	.loc 1 1623 0
	movq	-80(%rbp), %rax	# op0, tmp188
	movzbl	2(%rax), %eax	# op0_1->mode, D.17574
	movzbl	%al, %eax	# D.17574, tmp189
	movl	%eax, -56(%rbp)	# tmp189, mode
	.loc 1 1633 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L340	#,
	.loc 1 1635 0
	cmpq	$0, -104(%rbp)	#, bitpos
	je	.L341	#,
.LBB31:
	.loc 1 1639 0
	movq	-104(%rbp), %rax	# bitpos, tmp190
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	build_int_2_wide	#
	movq	%rax, -40(%rbp)	# tmp191, amount
	.loc 1 1644 0
	cmpq	$0, -112(%rbp)	#, target
	je	.L342	#,
	.loc 1 1642 0
	movq	-112(%rbp), %rax	# target, tmp192
	movzwl	(%rax), %eax	# target_84(D)->code, D.17568
	cmpw	$61, %ax	#, D.17568
	jne	.L342	#,
	.loc 1 1643 0
	movq	-112(%rbp), %rax	# target, tmp193
	movzbl	3(%rax), %eax	# *target_84(D), D.17574
	andl	$64, %eax	#, D.17574
	testb	%al, %al	# D.17574
	jne	.L342	#,
	.loc 1 1644 0
	movq	-112(%rbp), %rax	# target, iftmp.226
	jmp	.L343	#
.L342:
	.loc 1 1644 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.226
.L343:
	.loc 1 1642 0 is_stmt 1
	movq	%rax, -48(%rbp)	# iftmp.226, subtarget
	.loc 1 1645 0
	movl	-68(%rbp), %eax	# tmode, tmp194
	cmpl	-56(%rbp), %eax	# mode, tmp194
	je	.L344	#,
	.loc 1 1645 0 is_stmt 0 discriminator 1
	movq	$0, -48(%rbp)	#, subtarget
.L344:
	.loc 1 1646 0 is_stmt 1
	movq	-48(%rbp), %rsi	# subtarget, tmp195
	movq	-40(%rbp), %rcx	# amount, tmp196
	movq	-80(%rbp), %rdx	# op0, tmp197
	movl	-56(%rbp), %eax	# mode, tmp198
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp195,
	movl	%eax, %esi	# tmp198,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -80(%rbp)	# tmp199, op0
.L341:
.LBE31:
	.loc 1 1649 0
	movl	-56(%rbp), %eax	# mode, tmp200
	cmpl	-68(%rbp), %eax	# tmode, tmp200
	je	.L345	#,
	.loc 1 1650 0
	movq	-80(%rbp), %rcx	# op0, tmp201
	movl	-68(%rbp), %eax	# tmode, tmp202
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp201,
	movl	%eax, %edi	# tmp202,
	call	convert_to_mode	#
	movq	%rax, -80(%rbp)	# tmp203, op0
.L345:
	.loc 1 1655 0
	movl	-56(%rbp), %eax	# mode, mode.227
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	movzwl	%ax, %eax	# D.17568, D.17572
	movq	-96(%rbp), %rdx	# bitsize, tmp205
	movq	-104(%rbp), %rcx	# bitpos, tmp206
	addq	%rcx, %rdx	# tmp206, D.17572
	cmpq	%rdx, %rax	# D.17572, D.17572
	je	.L346	#,
	.loc 1 1656 0
	movq	-96(%rbp), %rax	# bitsize, tmp207
	movl	%eax, %edx	# tmp207, D.17567
	.loc 1 1657 0
	movq	-80(%rbp), %rax	# op0, tmp208
	movzbl	2(%rax), %eax	# op0_3->mode, D.17574
	.loc 1 1656 0
	movzbl	%al, %eax	# D.17574, D.17575
	movl	$0, %ecx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.17575,
	call	mask_rtx	#
	movq	%rax, %rcx	#, D.17576
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17577
	movq	-80(%rbp), %rax	# op0, tmp209
	movzbl	2(%rax), %eax	# op0_3->mode, D.17574
	movzbl	%al, %eax	# D.17574, D.17575
	movq	-112(%rbp), %rdi	# target, tmp210
	movq	-80(%rbp), %rdx	# op0, tmp211
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp210,
	movl	%eax, %edi	# D.17575,
	call	expand_binop	#
	jmp	.L334	#
.L346:
	.loc 1 1659 0
	movq	-80(%rbp), %rax	# op0, D.17566
	jmp	.L334	#
.L340:
	.loc 1 1664 0
	movq	-80(%rbp), %rdx	# op0, tmp212
	movl	-56(%rbp), %eax	# mode, tmp213
	movq	%rdx, %rsi	# tmp212,
	movl	%eax, %edi	# tmp213,
	call	force_reg	#
	movq	%rax, -80(%rbp)	# tmp214, op0
	.loc 1 1665 0
	movl	-56(%rbp), %eax	# mode, tmp215
	cmpl	-68(%rbp), %eax	# tmode, tmp215
	je	.L347	#,
	.loc 1 1666 0
	movq	$0, -112(%rbp)	#, target
.L347:
	.loc 1 1670 0
	movl	class_narrowest_mode+4(%rip), %eax	# class_narrowest_mode, tmp216
	movl	%eax, -56(%rbp)	# tmp216, mode
	jmp	.L348	#
.L351:
	.loc 1 1672 0
	movl	-56(%rbp), %eax	# mode, mode.228
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	movzwl	%ax, %eax	# D.17568, D.17572
	movq	-104(%rbp), %rdx	# bitpos, tmp218
	movq	-96(%rbp), %rcx	# bitsize, tmp219
	addq	%rcx, %rdx	# tmp219, D.17572
	cmpq	%rdx, %rax	# D.17572, D.17572
	jb	.L349	#,
	.loc 1 1674 0
	movq	-80(%rbp), %rcx	# op0, tmp220
	movl	-56(%rbp), %eax	# mode, tmp221
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp220,
	movl	%eax, %edi	# tmp221,
	call	convert_to_mode	#
	movq	%rax, -80(%rbp)	# tmp222, op0
	.loc 1 1675 0
	jmp	.L350	#
.L349:
	.loc 1 1671 0
	movl	-56(%rbp), %eax	# mode, mode.229
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17574
	movzbl	%al, %eax	# D.17574, tmp224
	movl	%eax, -56(%rbp)	# tmp224, mode
.L348:
	.loc 1 1670 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, mode
	jne	.L351	#,
.L350:
	.loc 1 1678 0
	movl	-56(%rbp), %eax	# mode, mode.230
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	movzwl	%ax, %eax	# D.17568, D.17572
	movq	-104(%rbp), %rdx	# bitpos, tmp226
	movq	-96(%rbp), %rcx	# bitsize, tmp227
	addq	%rcx, %rdx	# tmp227, D.17572
	cmpq	%rdx, %rax	# D.17572, D.17572
	je	.L352	#,
.LBB32:
	.loc 1 1681 0
	movl	-56(%rbp), %eax	# mode, mode.231
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	movzwl	%ax, %eax	# D.17568, D.17572
	movq	-104(%rbp), %rdx	# bitpos, tmp229
	movq	-96(%rbp), %rcx	# bitsize, tmp230
	addq	%rcx, %rdx	# tmp230, D.17572
	subq	%rdx, %rax	# D.17572, D.17572
	.loc 1 1680 0
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17572,
	call	build_int_2_wide	#
	movq	%rax, -32(%rbp)	# tmp231, amount
	.loc 1 1686 0
	cmpq	$0, -112(%rbp)	#, target
	je	.L353	#,
	.loc 1 1684 0
	movq	-112(%rbp), %rax	# target, tmp232
	movzwl	(%rax), %eax	# target_6->code, D.17568
	cmpw	$61, %ax	#, D.17568
	jne	.L353	#,
	.loc 1 1685 0
	movq	-112(%rbp), %rax	# target, tmp233
	movzbl	3(%rax), %eax	# *target_6, D.17574
	andl	$64, %eax	#, D.17574
	testb	%al, %al	# D.17574
	jne	.L353	#,
	.loc 1 1686 0
	movq	-112(%rbp), %rax	# target, iftmp.232
	jmp	.L354	#
.L353:
	.loc 1 1686 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.232
.L354:
	.loc 1 1684 0 is_stmt 1
	movq	%rax, -24(%rbp)	# iftmp.232, subtarget
	.loc 1 1687 0
	movq	-24(%rbp), %rsi	# subtarget, tmp234
	movq	-32(%rbp), %rcx	# amount, tmp235
	movq	-80(%rbp), %rdx	# op0, tmp236
	movl	-56(%rbp), %eax	# mode, tmp237
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp234,
	movl	%eax, %esi	# tmp237,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -80(%rbp)	# tmp238, op0
.L352:
.LBE32:
	.loc 1 1691 0
	movl	-56(%rbp), %eax	# mode, mode.233
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17568
	.loc 1 1690 0
	movzwl	%ax, %eax	# D.17568, D.17572
	subq	-96(%rbp), %rax	# bitsize, D.17572
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17572,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17578
	movq	-112(%rbp), %rsi	# target, tmp240
	movq	-80(%rbp), %rdx	# op0, tmp241
	movl	-56(%rbp), %eax	# mode, tmp242
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp240,
	movl	%eax, %esi	# tmp242,
	movl	$83, %edi	#,
	call	expand_shift	#
.L334:
	.loc 1 1693 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	extract_fixed_bit_field, .-extract_fixed_bit_field
	.type	mask_rtx, @function
mask_rtx:
.LFB10:
	.loc 1 1705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movl	%esi, -24(%rbp)	# bitpos, bitpos
	movl	%edx, -28(%rbp)	# bitsize, bitsize
	movl	%ecx, -32(%rbp)	# complement, complement
	.loc 1 1708 0
	cmpl	$63, -24(%rbp)	#, bitpos
	jg	.L356	#,
	.loc 1 1709 0
	movl	-24(%rbp), %eax	# bitpos, tmp74
	movq	$-1, %rdx	#, tmp75
	movl	%eax, %ecx	# tmp74, tmp93
	salq	%cl, %rdx	# tmp93, tmp76
	movq	%rdx, %rax	# tmp76, tmp76
	movq	%rax, -16(%rbp)	# tmp76, masklow
	jmp	.L357	#
.L356:
	.loc 1 1711 0
	movq	$0, -16(%rbp)	#, masklow
.L357:
	.loc 1 1713 0
	movl	-28(%rbp), %eax	# bitsize, tmp77
	movl	-24(%rbp), %edx	# bitpos, tmp78
	addl	%edx, %eax	# tmp78, D.17579
	cmpl	$63, %eax	#, D.17579
	jg	.L358	#,
	.loc 1 1715 0
	movl	$64, %eax	#, tmp79
	subl	-24(%rbp), %eax	# bitpos, D.17579
	subl	-28(%rbp), %eax	# bitsize, D.17579
	movq	$-1, %rdx	#, tmp80
	movl	%eax, %ecx	# D.17579, tmp94
	shrq	%cl, %rdx	# tmp94, D.17580
	.loc 1 1714 0
	movq	-16(%rbp), %rax	# masklow, masklow.234
	andq	%rdx, %rax	# D.17580, D.17580
	movq	%rax, -16(%rbp)	# D.17580, masklow
.L358:
	.loc 1 1717 0
	cmpl	$64, -24(%rbp)	#, bitpos
	jg	.L359	#,
	.loc 1 1718 0
	movq	$-1, -8(%rbp)	#, maskhigh
	jmp	.L360	#
.L359:
	.loc 1 1720 0
	movl	-24(%rbp), %eax	# bitpos, tmp81
	subl	$64, %eax	#, D.17579
	movq	$-1, %rdx	#, tmp82
	movl	%eax, %ecx	# D.17579, tmp96
	salq	%cl, %rdx	# tmp96, tmp83
	movq	%rdx, %rax	# tmp83, tmp83
	movq	%rax, -8(%rbp)	# tmp83, maskhigh
.L360:
	.loc 1 1722 0
	movl	-28(%rbp), %eax	# bitsize, tmp84
	movl	-24(%rbp), %edx	# bitpos, tmp85
	addl	%edx, %eax	# tmp85, D.17579
	cmpl	$64, %eax	#, D.17579
	jle	.L361	#,
	.loc 1 1724 0
	movl	$128, %eax	#, tmp86
	subl	-24(%rbp), %eax	# bitpos, D.17579
	subl	-28(%rbp), %eax	# bitsize, D.17579
	movq	$-1, %rdx	#, tmp87
	movl	%eax, %ecx	# D.17579, tmp97
	shrq	%cl, %rdx	# tmp97, D.17580
	.loc 1 1723 0
	movq	-8(%rbp), %rax	# maskhigh, maskhigh.235
	andq	%rdx, %rax	# D.17580, D.17580
	movq	%rax, -8(%rbp)	# D.17580, maskhigh
	jmp	.L362	#
.L361:
	.loc 1 1726 0
	movq	$0, -8(%rbp)	#, maskhigh
.L362:
	.loc 1 1728 0
	cmpl	$0, -32(%rbp)	#, complement
	je	.L363	#,
	.loc 1 1730 0
	notq	-8(%rbp)	# maskhigh
	.loc 1 1731 0
	notq	-16(%rbp)	# masklow
.L363:
	.loc 1 1734 0
	movl	-20(%rbp), %edx	# mode, tmp88
	movq	-8(%rbp), %rcx	# maskhigh, tmp89
	movq	-16(%rbp), %rax	# masklow, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	immed_double_const	#
	.loc 1 1735 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mask_rtx, .-mask_rtx
	.type	lshift_value, @function
lshift_value:
.LFB11:
	.loc 1 1745 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -36(%rbp)	# mode, mode
	movq	%rsi, -48(%rbp)	# value, value
	movl	%edx, -40(%rbp)	# bitpos, bitpos
	movl	%ecx, -52(%rbp)	# bitsize, bitsize
	.loc 1 1746 0
	movq	-48(%rbp), %rax	# value, tmp71
	movq	8(%rax), %rax	# value_5(D)->fld[0].rtwint, D.17582
	movq	%rax, -24(%rbp)	# D.17582, v
	.loc 1 1749 0
	cmpl	$63, -52(%rbp)	#, bitsize
	jg	.L366	#,
	.loc 1 1750 0
	movl	-52(%rbp), %eax	# bitsize, tmp72
	movq	$-1, %rdx	#, tmp73
	movl	%eax, %ecx	# tmp72, tmp85
	salq	%cl, %rdx	# tmp85, D.17582
	movq	%rdx, %rax	# D.17582, D.17582
	notq	%rax	# D.17582
	andq	%rax, -24(%rbp)	# D.17583, v
.L366:
	.loc 1 1752 0
	cmpl	$63, -40(%rbp)	#, bitpos
	jg	.L367	#,
	.loc 1 1754 0
	movl	-40(%rbp), %eax	# bitpos, tmp74
	movq	-24(%rbp), %rdx	# v, tmp75
	movl	%eax, %ecx	# tmp74, tmp87
	salq	%cl, %rdx	# tmp87, D.17583
	movq	%rdx, %rax	# D.17583, D.17583
	movq	%rax, -16(%rbp)	# D.17583, low
	.loc 1 1755 0
	cmpl	$0, -40(%rbp)	#, bitpos
	jle	.L368	#,
	.loc 1 1755 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, tmp76
	subl	-40(%rbp), %eax	# bitpos, D.17584
	movq	-24(%rbp), %rdx	# v, tmp77
	movl	%eax, %ecx	# D.17584, tmp89
	shrq	%cl, %rdx	# tmp89, D.17583
	movq	%rdx, %rax	# D.17583, D.17583
	jmp	.L369	#
.L368:
	.loc 1 1755 0 discriminator 2
	movl	$0, %eax	#, iftmp.236
.L369:
	.loc 1 1755 0 discriminator 1
	movq	%rax, -8(%rbp)	# iftmp.236, high
	jmp	.L370	#
.L367:
	.loc 1 1759 0 is_stmt 1
	movq	$0, -16(%rbp)	#, low
	.loc 1 1760 0
	movl	-40(%rbp), %eax	# bitpos, tmp78
	subl	$64, %eax	#, D.17584
	movq	-24(%rbp), %rdx	# v, tmp79
	movl	%eax, %ecx	# D.17584, tmp91
	salq	%cl, %rdx	# tmp91, D.17583
	movq	%rdx, %rax	# D.17583, D.17583
	movq	%rax, -8(%rbp)	# D.17583, high
.L370:
	.loc 1 1763 0
	movl	-36(%rbp), %edx	# mode, tmp80
	movq	-8(%rbp), %rcx	# high, tmp81
	movq	-16(%rbp), %rax	# low, tmp82
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	immed_double_const	#
	.loc 1 1764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lshift_value, .-lshift_value
	.type	extract_split_bit_field, @function
extract_split_bit_field:
.LFB12:
	.loc 1 1778 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# op0, op0
	movq	%rsi, -96(%rbp)	# bitsize, bitsize
	movq	%rdx, -104(%rbp)	# bitpos, bitpos
	movl	%ecx, -108(%rbp)	# unsignedp, unsignedp
	.loc 1 1780 0
	movl	$0, -76(%rbp)	#, bitsdone
	.loc 1 1781 0
	movq	$0, -64(%rbp)	#, result
	.loc 1 1782 0
	movl	$1, -72(%rbp)	#, first
	.loc 1 1786 0
	movq	-88(%rbp), %rax	# op0, tmp127
	movzwl	(%rax), %eax	# op0_20(D)->code, D.17587
	cmpw	$61, %ax	#, D.17587
	je	.L373	#,
	.loc 1 1786 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp128
	movzwl	(%rax), %eax	# op0_20(D)->code, D.17587
	cmpw	$63, %ax	#, D.17587
	jne	.L374	#,
.L373:
	.loc 1 1787 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.238
	andl	$33554432, %eax	#, D.17588
	testl	%eax, %eax	# D.17588
	je	.L375	#,
	.loc 1 1787 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.237
	jmp	.L376	#
.L375:
	.loc 1 1787 0 discriminator 2
	movl	$32, %eax	#, iftmp.237
.L376:
	.loc 1 1787 0 discriminator 3
	movl	%eax, -80(%rbp)	# iftmp.237, unit
	.loc 1 1791 0 is_stmt 1 discriminator 3
	jmp	.L382	#
.L374:
	.loc 1 1789 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.240
	andl	$33554432, %eax	#, D.17588
	testl	%eax, %eax	# D.17588
	je	.L378	#,
	.loc 1 1789 0 is_stmt 0 discriminator 1
	movl	$64, %edx	#, iftmp.239
	jmp	.L379	#
.L378:
	.loc 1 1789 0 discriminator 2
	movl	$32, %edx	#, iftmp.239
.L379:
	.loc 1 1789 0 discriminator 3
	movq	-88(%rbp), %rax	# op0, tmp129
	movq	16(%rax), %rax	# op0_20(D)->fld[1].rtmem, D.17589
	testq	%rax, %rax	# D.17589
	je	.L380	#,
	.loc 1 1789 0 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp130
	movq	16(%rax), %rax	# op0_20(D)->fld[1].rtmem, D.17589
	movl	32(%rax), %eax	# _28->align, iftmp.241
	jmp	.L381	#
.L380:
	.loc 1 1789 0 discriminator 2
	movl	$8, %eax	#, iftmp.241
.L381:
	.loc 1 1789 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.241, iftmp.239
	cmovbe	%edx, %eax	# iftmp.239,, tmp131
	movl	%eax, -80(%rbp)	# tmp131, unit
	.loc 1 1791 0 is_stmt 1 discriminator 3
	jmp	.L382	#
.L393:
.LBB33:
	.loc 1 1798 0
	movl	-76(%rbp), %edx	# bitsdone, D.17590
	movq	-104(%rbp), %rax	# bitpos, tmp132
	addq	%rdx, %rax	# D.17590, D.17590
	movl	-80(%rbp), %ebx	# unit, D.17590
	movl	$0, %edx	#, tmp134
	divq	%rbx	# D.17590
	movq	%rax, -40(%rbp)	# tmp133, offset
	.loc 1 1799 0
	movl	-76(%rbp), %edx	# bitsdone, D.17590
	movq	-104(%rbp), %rax	# bitpos, tmp135
	addq	%rdx, %rax	# D.17590, D.17590
	movl	-80(%rbp), %ecx	# unit, D.17590
	movl	$0, %edx	#, tmp136
	divq	%rcx	# D.17590
	movq	%rdx, -32(%rbp)	# tmp136, thispos
	.loc 1 1804 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.243
	andl	$33554432, %eax	#, D.17588
	testl	%eax, %eax	# D.17588
	je	.L383	#,
	.loc 1 1804 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.242
	jmp	.L384	#
.L383:
	.loc 1 1804 0 discriminator 2
	movl	$32, %eax	#, iftmp.242
.L384:
	.loc 1 1804 0 discriminator 3
	movl	-76(%rbp), %edx	# bitsdone, D.17590
	movq	-96(%rbp), %rcx	# bitsize, tmp138
	subq	%rdx, %rcx	# D.17590, D.17590
	movq	%rcx, %rdx	# D.17590, D.17590
	cmpq	%rdx, %rax	# D.17590, iftmp.242
	cmova	%rdx, %rax	# iftmp.242,, D.17590, tmp139
	movq	%rax, -24(%rbp)	# tmp139, thissize
	.loc 1 1805 0 is_stmt 1 discriminator 3
	movl	-80(%rbp), %eax	# unit, D.17590
	subq	-32(%rbp), %rax	# thispos, D.17590
	movq	%rax, %rdx	# D.17590, D.17590
	movq	-24(%rbp), %rax	# thissize, tmp141
	cmpq	%rax, %rdx	# tmp141, D.17590
	cmovbe	%rdx, %rax	# D.17590,, tmp140
	movq	%rax, -24(%rbp)	# tmp140, thissize
	.loc 1 1813 0 discriminator 3
	movq	-88(%rbp), %rax	# op0, tmp142
	movzwl	(%rax), %eax	# op0_20(D)->code, D.17587
	cmpw	$63, %ax	#, D.17587
	jne	.L385	#,
.LBB34:
	.loc 1 1815 0
	movq	-88(%rbp), %rax	# op0, tmp143
	movl	16(%rax), %eax	# op0_20(D)->fld[1].rtuint, D.17591
	movl	target_flags(%rip), %edx	# target_flags, target_flags.245
	andl	$33554432, %edx	#, D.17588
	testl	%edx, %edx	# D.17588
	je	.L386	#,
	.loc 1 1815 0 is_stmt 0 discriminator 1
	movl	$8, %ebx	#, iftmp.244
	jmp	.L387	#
.L386:
	.loc 1 1815 0 discriminator 2
	movl	$4, %ebx	#, iftmp.244
.L387:
	.loc 1 1815 0 discriminator 1
	movl	$0, %edx	#, tmp145
	divl	%ebx	# iftmp.244
	movl	%eax, %edx	# tmp144, D.17591
	movq	-40(%rbp), %rax	# offset, tmp146
	addl	%edx, %eax	# D.17591, D.17592
	movl	%eax, -68(%rbp)	# D.17592, word_offset
	.loc 1 1817 0 is_stmt 1 discriminator 1
	movq	-88(%rbp), %rax	# op0, tmp147
	movq	8(%rax), %rax	# op0_20(D)->fld[0].rtx, D.17593
	movzbl	2(%rax), %eax	# _68->mode, D.17594
	.loc 1 1816 0 discriminator 1
	movzbl	%al, %edx	# D.17594, D.17595
	movl	-68(%rbp), %ecx	# word_offset, word_offset.246
	movq	-88(%rbp), %rax	# op0, tmp148
	movq	8(%rax), %rax	# op0_20(D)->fld[0].rtx, D.17593
	movl	%ecx, %esi	# word_offset.246,
	movq	%rax, %rdi	# D.17593,
	call	operand_subword_force	#
	movq	%rax, -48(%rbp)	# tmp149, word
	.loc 1 1818 0 discriminator 1
	movq	$0, -40(%rbp)	#, offset
.LBE34:
	jmp	.L388	#
.L385:
	.loc 1 1820 0
	movq	-88(%rbp), %rax	# op0, tmp150
	movzwl	(%rax), %eax	# op0_20(D)->code, D.17587
	cmpw	$61, %ax	#, D.17587
	jne	.L389	#,
	.loc 1 1822 0
	movq	-88(%rbp), %rax	# op0, tmp151
	movzbl	2(%rax), %eax	# op0_20(D)->mode, D.17594
	movzbl	%al, %edx	# D.17594, D.17595
	movq	-40(%rbp), %rax	# offset, tmp152
	movl	%eax, %ecx	# tmp152, D.17591
	movq	-88(%rbp), %rax	# op0, tmp153
	movl	%ecx, %esi	# D.17591,
	movq	%rax, %rdi	# tmp153,
	call	operand_subword_force	#
	movq	%rax, -48(%rbp)	# tmp154, word
	.loc 1 1823 0
	movq	$0, -40(%rbp)	#, offset
	jmp	.L388	#
.L389:
	.loc 1 1826 0
	movq	-88(%rbp), %rax	# op0, tmp155
	movq	%rax, -48(%rbp)	# tmp155, word
.L388:
	.loc 1 1833 0
	movl	-80(%rbp), %eax	# unit, D.17590
	imulq	-40(%rbp), %rax	# offset, D.17590
	.loc 1 1832 0
	shrq	$3, %rax	#, D.17590
	movq	%rax, %rdi	# D.17590, D.17590
	movl	word_mode(%rip), %eax	# word_mode, word_mode.247
	movq	-32(%rbp), %rcx	# thispos, tmp156
	movq	-24(%rbp), %rdx	# thissize, tmp157
	movq	-48(%rbp), %rsi	# word, tmp158
	movl	$1, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp156,
	movq	%rdx, %rcx	# tmp157,
	movq	%rdi, %rdx	# D.17590,
	movl	%eax, %edi	# word_mode.247,
	call	extract_fixed_bit_field	#
	movq	%rax, -56(%rbp)	# tmp159, part
	.loc 1 1835 0
	movq	-24(%rbp), %rax	# thissize, tmp160
	addl	%eax, -76(%rbp)	# D.17591, bitsdone
	.loc 1 1846 0
	movl	-76(%rbp), %eax	# bitsdone, D.17590
	cmpq	-24(%rbp), %rax	# thissize, D.17590
	je	.L390	#,
	.loc 1 1847 0
	movl	-76(%rbp), %eax	# bitsdone, D.17590
	subq	-24(%rbp), %rax	# thissize, D.17590
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17590,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17596
	movl	word_mode(%rip), %eax	# word_mode, word_mode.249
	movq	-56(%rbp), %rdx	# part, tmp161
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# word_mode.249,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -56(%rbp)	# tmp162, part
.L390:
	.loc 1 1851 0
	cmpl	$0, -72(%rbp)	#, first
	je	.L391	#,
	.loc 1 1852 0
	movq	-56(%rbp), %rax	# part, tmp163
	movq	%rax, -64(%rbp)	# tmp163, result
	jmp	.L392	#
.L391:
	.loc 1 1856 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17597
	movl	word_mode(%rip), %eax	# word_mode, word_mode.250
	movq	-64(%rbp), %rcx	# result, tmp164
	movq	-56(%rbp), %rdx	# part, tmp165
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.250,
	call	expand_binop	#
	movq	%rax, -64(%rbp)	# tmp166, result
.L392:
	.loc 1 1859 0
	movl	$0, -72(%rbp)	#, first
.L382:
.LBE33:
	.loc 1 1791 0 discriminator 1
	movl	-76(%rbp), %eax	# bitsdone, D.17590
	cmpq	-96(%rbp), %rax	# bitsize, D.17590
	jb	.L393	#,
	.loc 1 1863 0
	cmpl	$0, -108(%rbp)	#, unsignedp
	je	.L394	#,
	.loc 1 1864 0
	movq	-64(%rbp), %rax	# result, D.17586
	jmp	.L395	#
.L394:
	.loc 1 1867 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.252
	andl	$33554432, %eax	#, D.17588
	.loc 1 1866 0
	testl	%eax, %eax	# D.17588
	je	.L396	#,
	.loc 1 1866 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.251
	jmp	.L397	#
.L396:
	.loc 1 1866 0 discriminator 2
	movl	$32, %eax	#, iftmp.251
.L397:
	.loc 1 1866 0 discriminator 3
	subq	-96(%rbp), %rax	# bitsize, D.17590
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17590,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17596
	movl	word_mode(%rip), %eax	# word_mode, word_mode.253
	movq	-64(%rbp), %rdx	# result, tmp167
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# word_mode.253,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -64(%rbp)	# tmp168, result
	.loc 1 1870 0 is_stmt 1 discriminator 3
	movl	target_flags(%rip), %eax	# target_flags, target_flags.255
	andl	$33554432, %eax	#, D.17588
	.loc 1 1869 0 discriminator 3
	testl	%eax, %eax	# D.17588
	je	.L398	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.254
	jmp	.L399	#
.L398:
	.loc 1 1869 0 discriminator 2
	movl	$32, %eax	#, iftmp.254
.L399:
	.loc 1 1869 0 discriminator 3
	subq	-96(%rbp), %rax	# bitsize, D.17590
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17590,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17596
	movl	word_mode(%rip), %eax	# word_mode, word_mode.256
	movq	-64(%rbp), %rdx	# result, tmp169
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# word_mode.256,
	movl	$83, %edi	#,
	call	expand_shift	#
.L395:
	.loc 1 1871 0 is_stmt 1
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	extract_split_bit_field, .-extract_split_bit_field
	.globl	expand_inc
	.type	expand_inc, @function
expand_inc:
.LFB13:
	.loc 1 1878 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# inc, inc
	.loc 1 1879 0
	movq	optab_table(%rip), %rsi	# optab_table, D.17598
	movq	-24(%rbp), %rax	# target, tmp62
	movzbl	2(%rax), %eax	# target_2(D)->mode, D.17599
	movzbl	%al, %eax	# D.17599, D.17600
	movq	-24(%rbp), %rdi	# target, tmp63
	movq	-32(%rbp), %rcx	# inc, tmp64
	movq	-24(%rbp), %rdx	# target, tmp65
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp63,
	movl	%eax, %edi	# D.17600,
	call	expand_binop	#
	movq	%rax, -8(%rbp)	# tmp66, value
	.loc 1 1882 0
	movq	-8(%rbp), %rax	# value, tmp67
	cmpq	-24(%rbp), %rax	# target, tmp67
	je	.L400	#,
	.loc 1 1883 0
	movq	-8(%rbp), %rdx	# value, tmp68
	movq	-24(%rbp), %rax	# target, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	emit_move_insn	#
.L400:
	.loc 1 1884 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	expand_inc, .-expand_inc
	.globl	expand_dec
	.type	expand_dec, @function
expand_dec:
.LFB14:
	.loc 1 1891 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# dec, dec
	.loc 1 1892 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17601
	movq	-24(%rbp), %rax	# target, tmp62
	movzbl	2(%rax), %eax	# target_2(D)->mode, D.17602
	movzbl	%al, %eax	# D.17602, D.17603
	movq	-24(%rbp), %rdi	# target, tmp63
	movq	-32(%rbp), %rcx	# dec, tmp64
	movq	-24(%rbp), %rdx	# target, tmp65
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp63,
	movl	%eax, %edi	# D.17603,
	call	expand_binop	#
	movq	%rax, -8(%rbp)	# tmp66, value
	.loc 1 1895 0
	movq	-8(%rbp), %rax	# value, tmp67
	cmpq	-24(%rbp), %rax	# target, tmp67
	je	.L402	#,
	.loc 1 1896 0
	movq	-8(%rbp), %rdx	# value, tmp68
	movq	-24(%rbp), %rax	# target, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	emit_move_insn	#
.L402:
	.loc 1 1897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	expand_dec, .-expand_dec
	.globl	expand_shift
	.type	expand_shift, @function
expand_shift:
.LFB15:
	.loc 1 1914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -84(%rbp)	# code, code
	movl	%esi, -88(%rbp)	# mode, mode
	movq	%rdx, -96(%rbp)	# shifted, shifted
	movq	%rcx, -104(%rbp)	# amount, amount
	movq	%r8, -112(%rbp)	# target, target
	movl	%r9d, -116(%rbp)	# unsignedp, unsignedp
	.loc 1 1915 0
	movq	$0, -56(%rbp)	#, temp
	.loc 1 1916 0
	cmpl	$82, -84(%rbp)	#, code
	je	.L405	#,
	.loc 1 1916 0 is_stmt 0 discriminator 2
	cmpl	$84, -84(%rbp)	#, code
	jne	.L406	#,
.L405:
	.loc 1 1916 0 discriminator 1
	movl	$1, %eax	#, iftmp.257
	jmp	.L407	#
.L406:
	.loc 1 1916 0 discriminator 3
	movl	$0, %eax	#, iftmp.257
.L407:
	.loc 1 1916 0 discriminator 4
	movl	%eax, -64(%rbp)	# iftmp.257, left
	.loc 1 1917 0 is_stmt 1 discriminator 4
	cmpl	$84, -84(%rbp)	#, code
	je	.L408	#,
	.loc 1 1917 0 is_stmt 0 discriminator 2
	cmpl	$85, -84(%rbp)	#, code
	jne	.L409	#,
.L408:
	.loc 1 1917 0 discriminator 1
	movl	$1, %eax	#, iftmp.258
	jmp	.L410	#
.L409:
	.loc 1 1917 0 discriminator 3
	movl	$0, %eax	#, iftmp.258
.L410:
	.loc 1 1917 0 discriminator 4
	movl	%eax, -60(%rbp)	# iftmp.258, rotate
	.loc 1 1924 0 is_stmt 1 discriminator 4
	movq	-104(%rbp), %rax	# amount, tmp91
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	expand_expr	#
	movq	%rax, -48(%rbp)	# tmp92, op1
	.loc 1 1940 0 discriminator 4
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17605
	cmpq	-48(%rbp), %rax	# op1, D.17605
	jne	.L411	#,
	.loc 1 1941 0
	movq	-96(%rbp), %rax	# shifted, D.17604
	jmp	.L412	#
.L411:
	.loc 1 1943 0
	movl	$0, -76(%rbp)	#, try
	jmp	.L413	#
.L440:
.LBB35:
	.loc 1 1947 0
	cmpl	$0, -76(%rbp)	#, try
	jne	.L414	#,
	.loc 1 1948 0
	movl	$0, -72(%rbp)	#, methods
	jmp	.L415	#
.L414:
	.loc 1 1949 0
	cmpl	$1, -76(%rbp)	#, try
	jne	.L416	#,
	.loc 1 1950 0
	movl	$2, -72(%rbp)	#, methods
	jmp	.L415	#
.L416:
	.loc 1 1952 0
	movl	$3, -72(%rbp)	#, methods
.L415:
	.loc 1 1954 0
	cmpl	$0, -60(%rbp)	#, rotate
	je	.L417	#,
	.loc 1 1957 0
	cmpl	$2, -72(%rbp)	#, methods
	jne	.L418	#,
	.loc 1 1958 0
	jmp	.L419	#
.L418:
	.loc 1 1959 0
	cmpl	$3, -72(%rbp)	#, methods
	jne	.L420	#,
.LBB36:
	.loc 1 1973 0
	movq	-112(%rbp), %rax	# target, tmp93
	cmpq	-96(%rbp), %rax	# shifted, tmp93
	je	.L421	#,
	.loc 1 1973 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# target, iftmp.259
	jmp	.L422	#
.L421:
	.loc 1 1973 0 discriminator 2
	movl	$0, %eax	#, iftmp.259
.L422:
	.loc 1 1973 0 discriminator 3
	movq	%rax, -40(%rbp)	# iftmp.259, subtarget
	.loc 1 1975 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# amount, tmp94
	movq	8(%rax), %rax	# amount_26(D)->common.type, tmp95
	movq	%rax, -32(%rbp)	# tmp95, type
	.loc 1 1976 0 discriminator 3
	movq	-48(%rbp), %rdx	# op1, tmp96
	movq	-32(%rbp), %rax	# type, tmp97
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# tmp97,
	call	make_tree	#
	movq	%rax, -24(%rbp)	# tmp98, new_amount
	.loc 1 1980 0 discriminator 3
	movl	-88(%rbp), %eax	# mode, mode.260
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17606
	.loc 1 1978 0 discriminator 3
	movzwl	%ax, %eax	# D.17606, D.17607
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17607,
	call	build_int_2_wide	#
	movq	%rax, %rdx	#, D.17608
	movq	-32(%rbp), %rax	# type, tmp100
	movq	%rdx, %rsi	# D.17608,
	movq	%rax, %rdi	# tmp100,
	call	convert	#
	movq	%rax, %rdx	#, D.17608
	movq	-104(%rbp), %rcx	# amount, tmp101
	movq	-32(%rbp), %rax	# type, tmp102
	movq	%rax, %rsi	# tmp102,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	.loc 1 1977 0 discriminator 3
	movq	%rax, %rdi	# D.17608,
	call	fold	#
	movq	%rax, -16(%rbp)	# tmp103, other_amount
	.loc 1 1984 0 discriminator 3
	movq	-96(%rbp), %rdx	# shifted, tmp104
	movl	-88(%rbp), %eax	# mode, tmp105
	movq	%rdx, %rsi	# tmp104,
	movl	%eax, %edi	# tmp105,
	call	force_reg	#
	movq	%rax, -96(%rbp)	# tmp106, shifted
	.loc 1 1986 0 discriminator 3
	cmpl	$0, -64(%rbp)	#, left
	je	.L423	#,
	.loc 1 1986 0 is_stmt 0 discriminator 1
	movl	$82, %eax	#, iftmp.261
	jmp	.L424	#
.L423:
	.loc 1 1986 0 discriminator 2
	movl	$83, %eax	#, iftmp.261
.L424:
	.loc 1 1986 0 discriminator 3
	movq	-40(%rbp), %rdi	# subtarget, tmp107
	movq	-24(%rbp), %rcx	# new_amount, tmp108
	movq	-96(%rbp), %rdx	# shifted, tmp109
	movl	-88(%rbp), %esi	# mode, tmp110
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp107,
	movl	%eax, %edi	# iftmp.261,
	call	expand_shift	#
	movq	%rax, -56(%rbp)	# tmp111, temp
	.loc 1 1988 0 is_stmt 1 discriminator 3
	cmpl	$0, -64(%rbp)	#, left
	je	.L425	#,
	.loc 1 1988 0 is_stmt 0 discriminator 1
	movl	$83, %eax	#, iftmp.262
	jmp	.L426	#
.L425:
	.loc 1 1988 0 discriminator 2
	movl	$82, %eax	#, iftmp.262
.L426:
	.loc 1 1988 0 discriminator 3
	movq	-16(%rbp), %rcx	# other_amount, tmp112
	movq	-96(%rbp), %rdx	# shifted, tmp113
	movl	-88(%rbp), %esi	# mode, tmp114
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# iftmp.262,
	call	expand_shift	#
	movq	%rax, -8(%rbp)	# tmp115, temp1
	.loc 1 1990 0 is_stmt 1 discriminator 3
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17609
	movl	-116(%rbp), %r9d	# unsignedp, tmp116
	movq	-112(%rbp), %r8	# target, tmp117
	movq	-8(%rbp), %rcx	# temp1, tmp118
	movq	-56(%rbp), %rdx	# temp, tmp119
	movl	-88(%rbp), %eax	# mode, tmp120
	movl	-72(%rbp), %edi	# methods, tmp121
	movl	%edi, (%rsp)	# tmp121,
	movl	%eax, %edi	# tmp120,
	call	expand_binop	#
	jmp	.L412	#
.L420:
.LBE36:
	.loc 1 1994 0
	cmpl	$0, -64(%rbp)	#, left
	je	.L427	#,
	.loc 1 1994 0 is_stmt 0 discriminator 1
	movq	optab_table+192(%rip), %rax	# optab_table, iftmp.263
	jmp	.L428	#
.L427:
	.loc 1 1994 0 discriminator 2
	movq	optab_table+200(%rip), %rax	# optab_table, iftmp.263
.L428:
	.loc 1 1994 0 discriminator 3
	movl	-116(%rbp), %r9d	# unsignedp, tmp122
	movq	-112(%rbp), %r8	# target, tmp123
	movq	-48(%rbp), %rcx	# op1, tmp124
	movq	-96(%rbp), %rdx	# shifted, tmp125
	movl	-88(%rbp), %edi	# mode, tmp126
	movl	-72(%rbp), %esi	# methods, tmp127
	movl	%esi, (%rsp)	# tmp127,
	movq	%rax, %rsi	# iftmp.263,
	call	expand_binop	#
	movq	%rax, -56(%rbp)	# tmp128, temp
	.loc 1 2001 0 is_stmt 1 discriminator 3
	cmpq	$0, -56(%rbp)	#, temp
	jne	.L432	#,
	.loc 1 2001 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# op1, tmp129
	movzwl	(%rax), %eax	# op1_27->code, D.17606
	cmpw	$54, %ax	#, D.17606
	jne	.L432	#,
	.loc 1 2002 0 is_stmt 1
	movq	-48(%rbp), %rax	# op1, tmp130
	movq	8(%rax), %rax	# op1_27->fld[0].rtwint, D.17610
	testq	%rax, %rax	# D.17610
	jle	.L432	#,
	.loc 1 2003 0
	movq	-48(%rbp), %rax	# op1, tmp131
	movq	8(%rax), %rax	# op1_27->fld[0].rtwint, D.17610
	movl	%eax, %edx	# D.17610, D.17611
	movl	-88(%rbp), %eax	# mode, mode.264
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17606
	movzwl	%ax, %eax	# D.17606, D.17611
	cmpl	%eax, %edx	# D.17611, D.17611
	jae	.L432	#,
	.loc 1 2007 0
	movl	-88(%rbp), %eax	# mode, mode.265
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17606
	.loc 1 2004 0
	movzwl	%ax, %edx	# D.17606, D.17610
	.loc 1 2007 0
	movq	-48(%rbp), %rax	# op1, tmp134
	movq	8(%rax), %rax	# op1_27->fld[0].rtwint, D.17610
	.loc 1 2004 0
	subq	%rax, %rdx	# D.17610, D.17610
	movq	%rdx, %rax	# D.17610, D.17610
	movq	%rax, %rsi	# D.17610,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17605
	cmpl	$0, -64(%rbp)	#, left
	je	.L430	#,
	.loc 1 2004 0 is_stmt 0 discriminator 1
	movq	optab_table+200(%rip), %rax	# optab_table, iftmp.266
	jmp	.L431	#
.L430:
	.loc 1 2004 0 discriminator 2
	movq	optab_table+192(%rip), %rax	# optab_table, iftmp.266
.L431:
	.loc 1 2004 0 discriminator 3
	movl	-116(%rbp), %r9d	# unsignedp, tmp135
	movq	-112(%rbp), %r8	# target, tmp136
	movq	-96(%rbp), %rdx	# shifted, tmp137
	movl	-88(%rbp), %edi	# mode, tmp138
	movl	-72(%rbp), %esi	# methods, tmp139
	movl	%esi, (%rsp)	# tmp139,
	movq	%rax, %rsi	# iftmp.266,
	call	expand_binop	#
	movq	%rax, -56(%rbp)	# tmp140, temp
	jmp	.L432	#
.L417:
	.loc 1 2011 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, unsignedp
	je	.L432	#,
	.loc 1 2012 0
	cmpl	$0, -64(%rbp)	#, left
	je	.L433	#,
	.loc 1 2012 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.267
	jmp	.L434	#
.L433:
	.loc 1 2012 0 discriminator 2
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.267
.L434:
	.loc 1 2012 0 discriminator 3
	movl	-116(%rbp), %r9d	# unsignedp, tmp141
	movq	-112(%rbp), %r8	# target, tmp142
	movq	-48(%rbp), %rcx	# op1, tmp143
	movq	-96(%rbp), %rdx	# shifted, tmp144
	movl	-88(%rbp), %edi	# mode, tmp145
	movl	-72(%rbp), %esi	# methods, tmp146
	movl	%esi, (%rsp)	# tmp146,
	movq	%rax, %rsi	# iftmp.267,
	call	expand_binop	#
	movq	%rax, -56(%rbp)	# tmp147, temp
.L432:
	.loc 1 2019 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, temp
	jne	.L419	#,
	.loc 1 2019 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, rotate
	jne	.L419	#,
	.loc 1 2020 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, unsignedp
	je	.L435	#,
	.loc 1 2020 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, left
	jne	.L419	#,
	cmpl	$2, -72(%rbp)	#, methods
	jne	.L419	#,
.L435:
.LBB37:
	.loc 1 2022 0 is_stmt 1
	movl	-72(%rbp), %eax	# methods, tmp148
	movl	%eax, -68(%rbp)	# tmp148, methods1
	.loc 1 2026 0
	cmpl	$0, -116(%rbp)	#, unsignedp
	je	.L436	#,
	.loc 1 2027 0
	movl	$4, -68(%rbp)	#, methods1
.L436:
	.loc 1 2031 0
	cmpl	$0, -64(%rbp)	#, left
	je	.L437	#,
	.loc 1 2031 0 is_stmt 0 discriminator 1
	movq	optab_table+168(%rip), %rax	# optab_table, iftmp.268
	jmp	.L438	#
.L437:
	.loc 1 2031 0 discriminator 2
	movq	optab_table+184(%rip), %rax	# optab_table, iftmp.268
.L438:
	.loc 1 2031 0 discriminator 3
	movl	-116(%rbp), %r9d	# unsignedp, tmp149
	movq	-112(%rbp), %r8	# target, tmp150
	movq	-48(%rbp), %rcx	# op1, tmp151
	movq	-96(%rbp), %rdx	# shifted, tmp152
	movl	-88(%rbp), %edi	# mode, tmp153
	movl	-68(%rbp), %esi	# methods1, tmp154
	movl	%esi, (%rsp)	# tmp154,
	movq	%rax, %rsi	# iftmp.268,
	call	expand_binop	#
	movq	%rax, -56(%rbp)	# tmp155, temp
.L419:
.LBE37:
.LBE35:
	.loc 1 1943 0 is_stmt 1
	addl	$1, -76(%rbp)	#, try
.L413:
	.loc 1 1943 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, temp
	jne	.L439	#,
	.loc 1 1943 0 discriminator 2
	cmpl	$2, -76(%rbp)	#, try
	jle	.L440	#,
.L439:
	.loc 1 2042 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, temp
	jne	.L441	#,
	.loc 1 2043 0
	movl	$__FUNCTION__.13007, %edx	#,
	movl	$2043, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L441:
	.loc 1 2044 0
	movq	-56(%rbp), %rax	# temp, D.17604
.L412:
	.loc 1 2045 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	expand_shift, .-expand_shift
	.type	synth_mult, @function
synth_mult:
.LFB16:
	.loc 1 2104 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# alg_out, alg_out
	movq	%rsi, -144(%rbp)	# t, t
	movl	%edx, -148(%rbp)	# cost_limit, cost_limit
	.loc 1 2112 0
	movl	-148(%rbp), %eax	# cost_limit, tmp178
	movl	%eax, %edx	# tmp178, D.17612
	movq	-136(%rbp), %rax	# alg_out, tmp179
	movw	%dx, (%rax)	# D.17612, alg_out_33(D)->cost
	.loc 1 2114 0
	cmpl	$0, -148(%rbp)	#, cost_limit
	jg	.L443	#,
	.loc 1 2115 0
	jmp	.L442	#
.L443:
	.loc 1 2118 0
	cmpq	$1, -144(%rbp)	#, t
	jne	.L445	#,
	.loc 1 2120 0
	movq	-136(%rbp), %rax	# alg_out, tmp180
	movw	$1, 2(%rax)	#, alg_out_33(D)->ops
	.loc 1 2121 0
	movq	-136(%rbp), %rax	# alg_out, tmp181
	movw	$0, (%rax)	#, alg_out_33(D)->cost
	.loc 1 2122 0
	movq	-136(%rbp), %rax	# alg_out, tmp182
	movl	$1, 4(%rax)	#, alg_out_33(D)->op
	.loc 1 2123 0
	jmp	.L442	#
.L445:
	.loc 1 2128 0
	cmpq	$0, -144(%rbp)	#, t
	jne	.L446	#,
	.loc 1 2130 0
	movl	zero_cost(%rip), %eax	# zero_cost, zero_cost.269
	cmpl	-148(%rbp), %eax	# cost_limit, zero_cost.269
	jl	.L447	#,
	.loc 1 2131 0
	jmp	.L442	#
.L447:
	.loc 1 2134 0
	movq	-136(%rbp), %rax	# alg_out, tmp183
	movw	$1, 2(%rax)	#, alg_out_33(D)->ops
	.loc 1 2135 0
	movl	zero_cost(%rip), %eax	# zero_cost, zero_cost.270
	movl	%eax, %edx	# zero_cost.270, D.17612
	movq	-136(%rbp), %rax	# alg_out, tmp184
	movw	%dx, (%rax)	# D.17612, alg_out_33(D)->cost
	.loc 1 2136 0
	movq	-136(%rbp), %rax	# alg_out, tmp185
	movl	$0, 4(%rax)	#, alg_out_33(D)->op
	.loc 1 2137 0
	jmp	.L442	#
.L446:
	.loc 1 2143 0
	movl	$16, %eax	#, tmp405
	subq	$1, %rax	#, tmp186
	addq	$339, %rax	#, tmp187
	movl	$16, %ebx	#, tmp406
	movl	$0, %edx	#, tmp190
	divq	%rbx	# tmp406
	imulq	$16, %rax, %rax	#, tmp189, tmp191
	subq	%rax, %rsp	# tmp191,
	movq	%rsp, %rax	#, tmp192
	addq	$15, %rax	#, tmp193
	shrq	$4, %rax	#, tmp194
	salq	$4, %rax	#, tmp195
	movq	%rax, -112(%rbp)	# tmp195, alg_in
	.loc 1 2144 0
	movl	$16, %eax	#, tmp407
	subq	$1, %rax	#, tmp196
	addq	$339, %rax	#, tmp197
	movl	$16, %ebx	#, tmp408
	movl	$0, %edx	#, tmp200
	divq	%rbx	# tmp408
	imulq	$16, %rax, %rax	#, tmp199, tmp201
	subq	%rax, %rsp	# tmp201,
	movq	%rsp, %rax	#, tmp202
	addq	$15, %rax	#, tmp203
	shrq	$4, %rax	#, tmp204
	salq	$4, %rax	#, tmp205
	movq	%rax, -104(%rbp)	# tmp205, best_alg
	.loc 1 2149 0
	movq	-144(%rbp), %rax	# t, tmp206
	andl	$1, %eax	#, D.17613
	testq	%rax, %rax	# D.17613
	jne	.L448	#,
	.loc 1 2151 0
	movq	-144(%rbp), %rax	# t, tmp207
	negq	%rax	# D.17613
	andq	-144(%rbp), %rax	# t, D.17613
	movq	%rax, %rdi	# D.17613,
	call	floor_log2_wide	#
	movl	%eax, -120(%rbp)	# tmp208, m
	.loc 1 2152 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.272
	andl	$33554432, %eax	#, D.17614
	testl	%eax, %eax	# D.17614
	je	.L449	#,
	.loc 1 2152 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.271
	jmp	.L450	#
.L449:
	.loc 1 2152 0 discriminator 2
	movl	$32, %eax	#, iftmp.271
.L450:
	.loc 1 2152 0 discriminator 3
	cmpl	-120(%rbp), %eax	# m, iftmp.271
	jle	.L448	#,
	.loc 1 2154 0 is_stmt 1
	movl	-120(%rbp), %eax	# m, tmp212
	movq	-144(%rbp), %rdx	# t, tmp214
	movl	%eax, %ecx	# tmp212, tmp412
	shrq	%cl, %rdx	# tmp412, tmp213
	movq	%rdx, %rax	# tmp213, tmp213
	movq	%rax, -88(%rbp)	# tmp213, q
	.loc 1 2155 0
	movl	-120(%rbp), %eax	# m, tmp216
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, tmp217
	movl	%eax, -116(%rbp)	# tmp217, cost
	.loc 1 2156 0
	movl	-116(%rbp), %eax	# cost, tmp218
	movl	-148(%rbp), %edx	# cost_limit, tmp219
	subl	%eax, %edx	# tmp218, D.17614
	movq	-88(%rbp), %rcx	# q, tmp220
	movq	-112(%rbp), %rax	# alg_in, tmp221
	movq	%rcx, %rsi	# tmp220,
	movq	%rax, %rdi	# tmp221,
	call	synth_mult	#
	.loc 1 2158 0
	movq	-112(%rbp), %rax	# alg_in, tmp222
	movzwl	(%rax), %eax	# alg_in_38->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2159 0
	movl	-116(%rbp), %eax	# cost, tmp223
	cmpl	-148(%rbp), %eax	# cost_limit, tmp223
	jge	.L448	#,
.LBB38:
	.loc 1 2162 0
	movq	-112(%rbp), %rax	# alg_in, tmp224
	movq	%rax, -80(%rbp)	# tmp224, x
	movq	-104(%rbp), %rax	# best_alg, tmp225
	movq	%rax, -112(%rbp)	# tmp225, alg_in
	movq	-80(%rbp), %rax	# x, tmp226
	movq	%rax, -104(%rbp)	# tmp226, best_alg
	.loc 1 2163 0
	movq	-104(%rbp), %rax	# best_alg, tmp227
	movzwl	2(%rax), %eax	# best_alg_56->ops, D.17612
	cwtl
	movl	-120(%rbp), %edx	# m, tmp228
	movl	%edx, %ecx	# tmp228, D.17615
	movq	-104(%rbp), %rdx	# best_alg, tmp229
	cltq
	movb	%cl, 260(%rdx,%rax)	# D.17615, best_alg_56->log
	.loc 1 2164 0
	movq	-104(%rbp), %rax	# best_alg, tmp231
	movzwl	2(%rax), %eax	# best_alg_56->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp232
	movslq	%edx, %rdx	# D.17614, tmp233
	movl	$2, 4(%rax,%rdx,4)	#, best_alg_56->op
	.loc 1 2165 0
	movl	-116(%rbp), %eax	# cost, tmp234
	movl	%eax, -148(%rbp)	# tmp234, cost_limit
.L448:
.LBE38:
	.loc 1 2171 0
	movq	-144(%rbp), %rax	# t, tmp235
	andl	$1, %eax	#, D.17613
	testq	%rax, %rax	# D.17613
	je	.L451	#,
.LBB39:
	.loc 1 2175 0
	movq	$1, -96(%rbp)	#, w
	jmp	.L452	#
.L453:
	.loc 1 2175 0 is_stmt 0 discriminator 2
	salq	-96(%rbp)	# w
.L452:
	.loc 1 2175 0 discriminator 1
	movq	-144(%rbp), %rax	# t, tmp236
	movq	-96(%rbp), %rdx	# w, tmp237
	andq	%rdx, %rax	# tmp237, D.17613
	testq	%rax, %rax	# D.17613
	jne	.L453	#,
	.loc 1 2182 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, w
	je	.L454	#,
	.loc 1 2183 0
	cmpq	$2, -96(%rbp)	#, w
	jbe	.L455	#,
	.loc 1 2186 0
	cmpq	$3, -144(%rbp)	#, t
	je	.L455	#,
.L454:
	.loc 1 2190 0
	movl	add_cost(%rip), %eax	# add_cost, tmp238
	movl	%eax, -116(%rbp)	# tmp238, cost
	.loc 1 2191 0
	movl	-116(%rbp), %eax	# cost, tmp239
	movl	-148(%rbp), %edx	# cost_limit, tmp240
	subl	%eax, %edx	# tmp239, D.17614
	movq	-144(%rbp), %rax	# t, tmp241
	leaq	1(%rax), %rcx	#, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp242
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp242,
	call	synth_mult	#
	.loc 1 2193 0
	movq	-112(%rbp), %rax	# alg_in, tmp243
	movzwl	(%rax), %eax	# alg_in_10->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2194 0
	movl	-116(%rbp), %eax	# cost, tmp244
	cmpl	-148(%rbp), %eax	# cost_limit, tmp244
	jge	.L456	#,
.LBB40:
	.loc 1 2197 0
	movq	-112(%rbp), %rax	# alg_in, tmp245
	movq	%rax, -64(%rbp)	# tmp245, x
	movq	-104(%rbp), %rax	# best_alg, tmp246
	movq	%rax, -112(%rbp)	# tmp246, alg_in
	movq	-64(%rbp), %rax	# x, tmp247
	movq	%rax, -104(%rbp)	# tmp247, best_alg
	.loc 1 2198 0
	movq	-104(%rbp), %rax	# best_alg, tmp248
	movzwl	2(%rax), %eax	# best_alg_89->ops, D.17612
	cwtl
	movq	-104(%rbp), %rdx	# best_alg, tmp249
	cltq
	movb	$0, 260(%rdx,%rax)	#, best_alg_89->log
	.loc 1 2199 0
	movq	-104(%rbp), %rax	# best_alg, tmp251
	movzwl	2(%rax), %eax	# best_alg_89->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp252
	movslq	%edx, %rdx	# D.17614, tmp253
	movl	$4, 4(%rax,%rdx,4)	#, best_alg_89->op
	.loc 1 2200 0
	movl	-116(%rbp), %eax	# cost, tmp254
	movl	%eax, -148(%rbp)	# tmp254, cost_limit
.LBE40:
	.loc 1 2194 0
	jmp	.L451	#
.L456:
	.loc 1 2194 0 is_stmt 0 discriminator 1
	jmp	.L451	#
.L455:
	.loc 1 2207 0 is_stmt 1
	movl	add_cost(%rip), %eax	# add_cost, tmp255
	movl	%eax, -116(%rbp)	# tmp255, cost
	.loc 1 2208 0
	movl	-116(%rbp), %eax	# cost, tmp256
	movl	-148(%rbp), %edx	# cost_limit, tmp257
	subl	%eax, %edx	# tmp256, D.17614
	movq	-144(%rbp), %rax	# t, tmp258
	leaq	-1(%rax), %rcx	#, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp259
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp259,
	call	synth_mult	#
	.loc 1 2210 0
	movq	-112(%rbp), %rax	# alg_in, tmp260
	movzwl	(%rax), %eax	# alg_in_10->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2211 0
	movl	-116(%rbp), %eax	# cost, tmp261
	cmpl	-148(%rbp), %eax	# cost_limit, tmp261
	jge	.L451	#,
.LBB41:
	.loc 1 2214 0
	movq	-112(%rbp), %rax	# alg_in, tmp262
	movq	%rax, -72(%rbp)	# tmp262, x
	movq	-104(%rbp), %rax	# best_alg, tmp263
	movq	%rax, -112(%rbp)	# tmp263, alg_in
	movq	-72(%rbp), %rax	# x, tmp264
	movq	%rax, -104(%rbp)	# tmp264, best_alg
	.loc 1 2215 0
	movq	-104(%rbp), %rax	# best_alg, tmp265
	movzwl	2(%rax), %eax	# best_alg_75->ops, D.17612
	cwtl
	movq	-104(%rbp), %rdx	# best_alg, tmp266
	cltq
	movb	$0, 260(%rdx,%rax)	#, best_alg_75->log
	.loc 1 2216 0
	movq	-104(%rbp), %rax	# best_alg, tmp268
	movzwl	2(%rax), %eax	# best_alg_75->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp269
	movslq	%edx, %rdx	# D.17614, tmp270
	movl	$3, 4(%rax,%rdx,4)	#, best_alg_75->op
	.loc 1 2217 0
	movl	-116(%rbp), %eax	# cost, tmp271
	movl	%eax, -148(%rbp)	# tmp271, cost_limit
.L451:
.LBE41:
.LBE39:
	.loc 1 2232 0
	movq	-144(%rbp), %rax	# t, tmp272
	subq	$1, %rax	#, D.17613
	movq	%rax, %rdi	# D.17613,
	call	floor_log2_wide	#
	movl	%eax, -120(%rbp)	# tmp273, m
	jmp	.L457	#
.L467:
.LBB42:
	.loc 1 2236 0
	movl	-120(%rbp), %eax	# m, tmp274
	movl	$1, %edx	#, tmp275
	movl	%eax, %ecx	# tmp274, tmp414
	salq	%cl, %rdx	# tmp414, D.17613
	movq	%rdx, %rax	# D.17613, D.17613
	addq	$1, %rax	#, tmp276
	movq	%rax, -56(%rbp)	# tmp276, d
	.loc 1 2237 0
	movq	-144(%rbp), %rax	# t, tmp277
	movl	$0, %edx	#, tmp278
	divq	-56(%rbp)	# d
	movq	%rdx, %rax	# tmp278, D.17613
	testq	%rax, %rax	# D.17613
	jne	.L458	#,
	.loc 1 2237 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# t, tmp280
	cmpq	-56(%rbp), %rax	# d, tmp280
	jbe	.L458	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.274
	andl	$33554432, %eax	#, D.17614
	testl	%eax, %eax	# D.17614
	je	.L459	#,
	movl	$64, %eax	#, iftmp.273
	jmp	.L460	#
.L459:
	.loc 1 2237 0 discriminator 2
	movl	$32, %eax	#, iftmp.273
.L460:
	.loc 1 2237 0 discriminator 3
	cmpl	-120(%rbp), %eax	# m, iftmp.273
	jle	.L458	#,
	.loc 1 2239 0 is_stmt 1
	movl	-120(%rbp), %eax	# m, tmp282
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17614
	movl	add_cost(%rip), %eax	# add_cost, add_cost.275
	addl	%eax, %edx	# add_cost.275, D.17614
	movl	-120(%rbp), %eax	# m, tmp284
	cltq
	movl	shiftadd_cost(,%rax,4), %eax	# shiftadd_cost, D.17614
	cmpl	%eax, %edx	# D.17614, D.17614
	cmovle	%edx, %eax	# D.17614,, tmp285
	movl	%eax, -116(%rbp)	# tmp285, cost
	.loc 1 2240 0
	movl	-116(%rbp), %eax	# cost, tmp286
	movl	-148(%rbp), %edx	# cost_limit, tmp287
	movl	%edx, %esi	# tmp287, D.17614
	subl	%eax, %esi	# tmp286, D.17614
	movq	-144(%rbp), %rax	# t, tmp290
	movl	$0, %edx	#, tmp289
	divq	-56(%rbp)	# d
	movq	%rax, %rcx	# tmp288, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp291
	movl	%esi, %edx	# D.17614,
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp291,
	call	synth_mult	#
	.loc 1 2242 0
	movq	-112(%rbp), %rax	# alg_in, tmp292
	movzwl	(%rax), %eax	# alg_in_12->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2243 0
	movl	-116(%rbp), %eax	# cost, tmp293
	cmpl	-148(%rbp), %eax	# cost_limit, tmp293
	jge	.L461	#,
.LBB43:
	.loc 1 2246 0
	movq	-112(%rbp), %rax	# alg_in, tmp294
	movq	%rax, -48(%rbp)	# tmp294, x
	movq	-104(%rbp), %rax	# best_alg, tmp295
	movq	%rax, -112(%rbp)	# tmp295, alg_in
	movq	-48(%rbp), %rax	# x, tmp296
	movq	%rax, -104(%rbp)	# tmp296, best_alg
	.loc 1 2247 0
	movq	-104(%rbp), %rax	# best_alg, tmp297
	movzwl	2(%rax), %eax	# best_alg_116->ops, D.17612
	cwtl
	movl	-120(%rbp), %edx	# m, tmp298
	movl	%edx, %ecx	# tmp298, D.17615
	movq	-104(%rbp), %rdx	# best_alg, tmp299
	cltq
	movb	%cl, 260(%rdx,%rax)	# D.17615, best_alg_116->log
	.loc 1 2248 0
	movq	-104(%rbp), %rax	# best_alg, tmp301
	movzwl	2(%rax), %eax	# best_alg_116->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp302
	movslq	%edx, %rdx	# D.17614, tmp303
	movl	$5, 4(%rax,%rdx,4)	#, best_alg_116->op
	.loc 1 2249 0
	movl	-116(%rbp), %eax	# cost, tmp304
	movl	%eax, -148(%rbp)	# tmp304, cost_limit
.LBE43:
	.loc 1 2252 0
	jmp	.L462	#
.L461:
	jmp	.L462	#
.L458:
	.loc 1 2255 0
	movl	-120(%rbp), %eax	# m, tmp305
	movl	$1, %edx	#, tmp306
	movl	%eax, %ecx	# tmp305, tmp417
	salq	%cl, %rdx	# tmp417, D.17613
	movq	%rdx, %rax	# D.17613, D.17613
	subq	$1, %rax	#, tmp307
	movq	%rax, -56(%rbp)	# tmp307, d
	.loc 1 2256 0
	movq	-144(%rbp), %rax	# t, tmp308
	movl	$0, %edx	#, tmp309
	divq	-56(%rbp)	# d
	movq	%rdx, %rax	# tmp309, D.17613
	testq	%rax, %rax	# D.17613
	jne	.L463	#,
	.loc 1 2256 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# t, tmp311
	cmpq	-56(%rbp), %rax	# d, tmp311
	jbe	.L463	#,
	movl	target_flags(%rip), %eax	# target_flags, target_flags.277
	andl	$33554432, %eax	#, D.17614
	testl	%eax, %eax	# D.17614
	je	.L464	#,
	movl	$64, %eax	#, iftmp.276
	jmp	.L465	#
.L464:
	.loc 1 2256 0 discriminator 2
	movl	$32, %eax	#, iftmp.276
.L465:
	.loc 1 2256 0 discriminator 3
	cmpl	-120(%rbp), %eax	# m, iftmp.276
	jle	.L463	#,
	.loc 1 2258 0 is_stmt 1
	movl	-120(%rbp), %eax	# m, tmp313
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17614
	movl	add_cost(%rip), %eax	# add_cost, add_cost.278
	addl	%eax, %edx	# add_cost.278, D.17614
	movl	-120(%rbp), %eax	# m, tmp315
	cltq
	movl	shiftsub_cost(,%rax,4), %eax	# shiftsub_cost, D.17614
	cmpl	%eax, %edx	# D.17614, D.17614
	cmovle	%edx, %eax	# D.17614,, tmp316
	movl	%eax, -116(%rbp)	# tmp316, cost
	.loc 1 2259 0
	movl	-116(%rbp), %eax	# cost, tmp317
	movl	-148(%rbp), %edx	# cost_limit, tmp318
	movl	%edx, %esi	# tmp318, D.17614
	subl	%eax, %esi	# tmp317, D.17614
	movq	-144(%rbp), %rax	# t, tmp321
	movl	$0, %edx	#, tmp320
	divq	-56(%rbp)	# d
	movq	%rax, %rcx	# tmp319, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp322
	movl	%esi, %edx	# D.17614,
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp322,
	call	synth_mult	#
	.loc 1 2261 0
	movq	-112(%rbp), %rax	# alg_in, tmp323
	movzwl	(%rax), %eax	# alg_in_12->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2262 0
	movl	-116(%rbp), %eax	# cost, tmp324
	cmpl	-148(%rbp), %eax	# cost_limit, tmp324
	jge	.L466	#,
.LBB44:
	.loc 1 2265 0
	movq	-112(%rbp), %rax	# alg_in, tmp325
	movq	%rax, -40(%rbp)	# tmp325, x
	movq	-104(%rbp), %rax	# best_alg, tmp326
	movq	%rax, -112(%rbp)	# tmp326, alg_in
	movq	-40(%rbp), %rax	# x, tmp327
	movq	%rax, -104(%rbp)	# tmp327, best_alg
	.loc 1 2266 0
	movq	-104(%rbp), %rax	# best_alg, tmp328
	movzwl	2(%rax), %eax	# best_alg_142->ops, D.17612
	cwtl
	movl	-120(%rbp), %edx	# m, tmp329
	movl	%edx, %ecx	# tmp329, D.17615
	movq	-104(%rbp), %rdx	# best_alg, tmp330
	cltq
	movb	%cl, 260(%rdx,%rax)	# D.17615, best_alg_142->log
	.loc 1 2267 0
	movq	-104(%rbp), %rax	# best_alg, tmp332
	movzwl	2(%rax), %eax	# best_alg_142->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp333
	movslq	%edx, %rdx	# D.17614, tmp334
	movl	$6, 4(%rax,%rdx,4)	#, best_alg_142->op
	.loc 1 2268 0
	movl	-116(%rbp), %eax	# cost, tmp335
	movl	%eax, -148(%rbp)	# tmp335, cost_limit
.LBE44:
	.loc 1 2270 0
	jmp	.L462	#
.L466:
	jmp	.L462	#
.L463:
.LBE42:
	.loc 1 2232 0
	subl	$1, -120(%rbp)	#, m
.L457:
	.loc 1 2232 0 is_stmt 0 discriminator 1
	cmpl	$1, -120(%rbp)	#, m
	jg	.L467	#,
.L462:
	.loc 1 2276 0 is_stmt 1
	movq	-144(%rbp), %rax	# t, tmp336
	andl	$1, %eax	#, D.17613
	testq	%rax, %rax	# D.17613
	je	.L468	#,
	.loc 1 2278 0
	movq	-144(%rbp), %rax	# t, tmp340
	subq	$1, %rax	#, tmp339
	movq	%rax, -88(%rbp)	# tmp339, q
	.loc 1 2279 0
	movq	-88(%rbp), %rax	# q, tmp341
	negq	%rax	# D.17613
	andq	%rax, -88(%rbp)	# D.17613, q
	.loc 1 2280 0
	movq	-88(%rbp), %rax	# q, tmp342
	movq	%rax, %rdi	# tmp342,
	call	exact_log2_wide	#
	movl	%eax, -120(%rbp)	# tmp343, m
	.loc 1 2281 0
	cmpl	$0, -120(%rbp)	#, m
	js	.L469	#,
	.loc 1 2281 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.280
	andl	$33554432, %eax	#, D.17614
	testl	%eax, %eax	# D.17614
	je	.L470	#,
	movl	$64, %eax	#, iftmp.279
	jmp	.L471	#
.L470:
	.loc 1 2281 0 discriminator 2
	movl	$32, %eax	#, iftmp.279
.L471:
	.loc 1 2281 0 discriminator 3
	cmpl	-120(%rbp), %eax	# m, iftmp.279
	jle	.L469	#,
	.loc 1 2283 0 is_stmt 1
	movl	-120(%rbp), %eax	# m, tmp345
	cltq
	movl	shiftadd_cost(,%rax,4), %eax	# shiftadd_cost, tmp346
	movl	%eax, -116(%rbp)	# tmp346, cost
	.loc 1 2284 0
	movl	-116(%rbp), %eax	# cost, tmp347
	movl	-148(%rbp), %edx	# cost_limit, tmp348
	subl	%eax, %edx	# tmp347, D.17614
	movq	-144(%rbp), %rax	# t, tmp349
	leaq	-1(%rax), %rsi	#, D.17613
	movl	-120(%rbp), %eax	# m, tmp350
	movl	%eax, %ecx	# tmp350, tmp420
	shrq	%cl, %rsi	# tmp420, D.17613
	movq	%rsi, %rcx	# D.17613, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp351
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp351,
	call	synth_mult	#
	.loc 1 2286 0
	movq	-112(%rbp), %rax	# alg_in, tmp352
	movzwl	(%rax), %eax	# alg_in_15->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2287 0
	movl	-116(%rbp), %eax	# cost, tmp353
	cmpl	-148(%rbp), %eax	# cost_limit, tmp353
	jge	.L469	#,
.LBB45:
	.loc 1 2290 0
	movq	-112(%rbp), %rax	# alg_in, tmp354
	movq	%rax, -32(%rbp)	# tmp354, x
	movq	-104(%rbp), %rax	# best_alg, tmp355
	movq	%rax, -112(%rbp)	# tmp355, alg_in
	movq	-32(%rbp), %rax	# x, tmp356
	movq	%rax, -104(%rbp)	# tmp356, best_alg
	.loc 1 2291 0
	movq	-104(%rbp), %rax	# best_alg, tmp357
	movzwl	2(%rax), %eax	# best_alg_168->ops, D.17612
	cwtl
	movl	-120(%rbp), %edx	# m, tmp358
	movl	%edx, %ecx	# tmp358, D.17615
	movq	-104(%rbp), %rdx	# best_alg, tmp359
	cltq
	movb	%cl, 260(%rdx,%rax)	# D.17615, best_alg_168->log
	.loc 1 2292 0
	movq	-104(%rbp), %rax	# best_alg, tmp361
	movzwl	2(%rax), %eax	# best_alg_168->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp362
	movslq	%edx, %rdx	# D.17614, tmp363
	movl	$7, 4(%rax,%rdx,4)	#, best_alg_168->op
	.loc 1 2293 0
	movl	-116(%rbp), %eax	# cost, tmp364
	movl	%eax, -148(%rbp)	# tmp364, cost_limit
.L469:
.LBE45:
	.loc 1 2297 0
	movq	-144(%rbp), %rax	# t, tmp368
	addq	$1, %rax	#, tmp367
	movq	%rax, -88(%rbp)	# tmp367, q
	.loc 1 2298 0
	movq	-88(%rbp), %rax	# q, tmp369
	negq	%rax	# D.17613
	andq	%rax, -88(%rbp)	# D.17613, q
	.loc 1 2299 0
	movq	-88(%rbp), %rax	# q, tmp370
	movq	%rax, %rdi	# tmp370,
	call	exact_log2_wide	#
	movl	%eax, -120(%rbp)	# tmp371, m
	.loc 1 2300 0
	cmpl	$0, -120(%rbp)	#, m
	js	.L468	#,
	.loc 1 2300 0 is_stmt 0 discriminator 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.282
	andl	$33554432, %eax	#, D.17614
	testl	%eax, %eax	# D.17614
	je	.L472	#,
	movl	$64, %eax	#, iftmp.281
	jmp	.L473	#
.L472:
	.loc 1 2300 0 discriminator 2
	movl	$32, %eax	#, iftmp.281
.L473:
	.loc 1 2300 0 discriminator 3
	cmpl	-120(%rbp), %eax	# m, iftmp.281
	jle	.L468	#,
	.loc 1 2302 0 is_stmt 1
	movl	-120(%rbp), %eax	# m, tmp373
	cltq
	movl	shiftsub_cost(,%rax,4), %eax	# shiftsub_cost, tmp374
	movl	%eax, -116(%rbp)	# tmp374, cost
	.loc 1 2303 0
	movl	-116(%rbp), %eax	# cost, tmp375
	movl	-148(%rbp), %edx	# cost_limit, tmp376
	subl	%eax, %edx	# tmp375, D.17614
	movq	-144(%rbp), %rax	# t, tmp377
	leaq	1(%rax), %rsi	#, D.17613
	movl	-120(%rbp), %eax	# m, tmp378
	movl	%eax, %ecx	# tmp378, tmp422
	shrq	%cl, %rsi	# tmp422, D.17613
	movq	%rsi, %rcx	# D.17613, D.17613
	movq	-112(%rbp), %rax	# alg_in, tmp379
	movq	%rcx, %rsi	# D.17613,
	movq	%rax, %rdi	# tmp379,
	call	synth_mult	#
	.loc 1 2305 0
	movq	-112(%rbp), %rax	# alg_in, tmp380
	movzwl	(%rax), %eax	# alg_in_16->cost, D.17612
	cwtl
	addl	%eax, -116(%rbp)	# D.17614, cost
	.loc 1 2306 0
	movl	-116(%rbp), %eax	# cost, tmp381
	cmpl	-148(%rbp), %eax	# cost_limit, tmp381
	jge	.L468	#,
.LBB46:
	.loc 1 2309 0
	movq	-112(%rbp), %rax	# alg_in, tmp382
	movq	%rax, -24(%rbp)	# tmp382, x
	movq	-104(%rbp), %rax	# best_alg, tmp383
	movq	%rax, -112(%rbp)	# tmp383, alg_in
	movq	-24(%rbp), %rax	# x, tmp384
	movq	%rax, -104(%rbp)	# tmp384, best_alg
	.loc 1 2310 0
	movq	-104(%rbp), %rax	# best_alg, tmp385
	movzwl	2(%rax), %eax	# best_alg_192->ops, D.17612
	cwtl
	movl	-120(%rbp), %edx	# m, tmp386
	movl	%edx, %ecx	# tmp386, D.17615
	movq	-104(%rbp), %rdx	# best_alg, tmp387
	cltq
	movb	%cl, 260(%rdx,%rax)	# D.17615, best_alg_192->log
	.loc 1 2311 0
	movq	-104(%rbp), %rax	# best_alg, tmp389
	movzwl	2(%rax), %eax	# best_alg_192->ops, D.17612
	movswl	%ax, %edx	# D.17612, D.17614
	movq	-104(%rbp), %rax	# best_alg, tmp390
	movslq	%edx, %rdx	# D.17614, tmp391
	movl	$8, 4(%rax,%rdx,4)	#, best_alg_192->op
	.loc 1 2312 0
	movl	-116(%rbp), %eax	# cost, tmp392
	movl	%eax, -148(%rbp)	# tmp392, cost_limit
.L468:
.LBE46:
	.loc 1 2319 0
	movq	-136(%rbp), %rax	# alg_out, tmp393
	movzwl	(%rax), %eax	# alg_out_33(D)->cost, D.17612
	cwtl
	cmpl	-148(%rbp), %eax	# cost_limit, D.17614
	jne	.L474	#,
	.loc 1 2320 0
	jmp	.L442	#
.L474:
	.loc 1 2324 0
	movq	-104(%rbp), %rax	# best_alg, tmp394
	movzwl	2(%rax), %eax	# best_alg_24->ops, D.17612
	cmpw	$64, %ax	#, D.17612
	jne	.L475	#,
	.loc 1 2325 0
	jmp	.L442	#
.L475:
	.loc 1 2330 0
	movq	-104(%rbp), %rax	# best_alg, tmp395
	movzwl	2(%rax), %eax	# best_alg_24->ops, D.17612
	addl	$1, %eax	#, D.17616
	movl	%eax, %edx	# D.17616, D.17612
	movq	-136(%rbp), %rax	# alg_out, tmp396
	movw	%dx, 2(%rax)	# D.17612, alg_out_33(D)->ops
	.loc 1 2331 0
	movl	-148(%rbp), %eax	# cost_limit, tmp397
	movl	%eax, %edx	# tmp397, D.17612
	movq	-136(%rbp), %rax	# alg_out, tmp398
	movw	%dx, (%rax)	# D.17612, alg_out_33(D)->cost
	.loc 1 2333 0
	movq	-136(%rbp), %rax	# alg_out, tmp399
	movzwl	2(%rax), %eax	# alg_out_33(D)->ops, D.17612
	.loc 1 2332 0
	movswq	%ax, %rax	# D.17612, D.17613
	leaq	0(,%rax,4), %rdx	#, D.17613
	movq	-104(%rbp), %rax	# best_alg, tmp400
	leaq	4(%rax), %rcx	#, D.17617
	movq	-136(%rbp), %rax	# alg_out, tmp401
	addq	$4, %rax	#, D.17617
	movq	%rcx, %rsi	# D.17617,
	movq	%rax, %rdi	# D.17617,
	call	memcpy	#
	.loc 1 2335 0
	movq	-136(%rbp), %rax	# alg_out, tmp402
	movzwl	2(%rax), %eax	# alg_out_33(D)->ops, D.17612
	.loc 1 2334 0
	movswq	%ax, %rax	# D.17612, D.17613
	movq	-104(%rbp), %rdx	# best_alg, tmp403
	leaq	260(%rdx), %rsi	#, D.17618
	movq	-136(%rbp), %rdx	# alg_out, tmp404
	leaq	260(%rdx), %rcx	#, D.17618
	movq	%rax, %rdx	# D.17613,
	movq	%rcx, %rdi	# D.17618,
	call	memcpy	#
.L442:
	.loc 1 2336 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	synth_mult, .-synth_mult
	.globl	expand_mult
	.type	expand_mult, @function
expand_mult:
.LFB17:
	.loc 1 2351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$824, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -788(%rbp)	# mode, mode
	movq	%rsi, -800(%rbp)	# op0, op0
	movq	%rdx, -808(%rbp)	# op1, op1
	movq	%rcx, -816(%rbp)	# target, target
	movl	%r8d, -792(%rbp)	# unsignedp, unsignedp
	.loc 1 2351 0
	movq	%fs:40, %rax	#, tmp329
	movq	%rax, -24(%rbp)	# tmp329, D.17632
	xorl	%eax, %eax	# tmp329
	.loc 1 2352 0
	movq	-808(%rbp), %rax	# op1, tmp167
	movq	%rax, -760(%rbp)	# tmp167, const_op1
	.loc 1 2363 0
	movq	-808(%rbp), %rax	# op1, tmp168
	movzwl	(%rax), %eax	# op1_29(D)->code, D.17620
	cmpw	$55, %ax	#, D.17620
	jne	.L477	#,
	.loc 1 2364 0
	movq	-808(%rbp), %rax	# op1, tmp169
	movzbl	2(%rax), %eax	# op1_29(D)->mode, D.17621
	movzbl	%al, %eax	# D.17621, D.17622
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17623
	cmpl	$1, %eax	#, D.17623
	jne	.L477	#,
	.loc 1 2365 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.283
	andl	$33554432, %eax	#, D.17622
	testl	%eax, %eax	# D.17622
	jne	.L477	#,
	.loc 1 2366 0
	movq	-808(%rbp), %rax	# op1, tmp171
	movq	24(%rax), %rax	# op1_29(D)->fld[2].rtwint, D.17624
	testq	%rax, %rax	# D.17624
	jne	.L477	#,
	.loc 1 2367 0
	movq	-808(%rbp), %rax	# op1, tmp172
	movq	16(%rax), %rax	# op1_29(D)->fld[1].rtwint, D.17624
	movq	%rax, %rsi	# D.17624,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -760(%rbp)	# tmp173, const_op1
	jmp	.L478	#
.L477:
	.loc 1 2368 0
	movl	-788(%rbp), %eax	# mode, mode.284
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17620
	cmpw	$32, %ax	#, D.17620
	jbe	.L478	#,
	.loc 1 2369 0
	movq	-808(%rbp), %rax	# op1, tmp175
	movzwl	(%rax), %eax	# op1_29(D)->code, D.17620
	cmpw	$54, %ax	#, D.17620
	jne	.L478	#,
	.loc 1 2370 0
	movq	-808(%rbp), %rax	# op1, tmp176
	movq	8(%rax), %rax	# op1_29(D)->fld[0].rtwint, D.17624
	testq	%rax, %rax	# D.17624
	jns	.L478	#,
	.loc 1 2371 0
	movq	$0, -760(%rbp)	#, const_op1
.L478:
	.loc 1 2378 0
	cmpq	$0, -760(%rbp)	#, const_op1
	je	.L479	#,
	.loc 1 2378 0 is_stmt 0 discriminator 1
	movq	-760(%rbp), %rax	# const_op1, tmp177
	movzwl	(%rax), %eax	# const_op1_3->code, D.17620
	cmpw	$54, %ax	#, D.17620
	jne	.L479	#,
	.loc 1 2379 0 is_stmt 1
	cmpl	$0, -792(%rbp)	#, unsignedp
	jne	.L480	#,
	.loc 1 2379 0 is_stmt 0 discriminator 1
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.285
	testl	%eax, %eax	# flag_trapv.285
	jne	.L479	#,
.L480:
.LBB47:
	.loc 1 2383 0 is_stmt 1
	movq	-808(%rbp), %rax	# op1, tmp178
	movq	8(%rax), %rax	# op1_29(D)->fld[0].rtwint, tmp179
	movq	%rax, -728(%rbp)	# tmp179, val
	.loc 1 2387 0
	movl	$0, -784(%rbp)	#, variant
	.loc 1 2391 0
	movq	-800(%rbp), %rdx	# op0, tmp180
	movl	-788(%rbp), %eax	# mode, tmp181
	movq	%rdx, %rsi	# tmp180,
	movl	%eax, %edi	# tmp181,
	call	force_reg	#
	movq	%rax, -800(%rbp)	# tmp182, op0
	.loc 1 2397 0
	movq	-808(%rbp), %rcx	# op1, tmp183
	movq	-800(%rbp), %rdx	# op0, tmp184
	movl	-788(%rbp), %eax	# mode, tmp185
	movl	%eax, %esi	# tmp185,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$47, %esi	#,
	movq	%rax, %rdi	# D.17625,
	call	rtx_cost	#
	movl	%eax, -772(%rbp)	# tmp186, mult_cost
	.loc 1 2398 0
	movl	add_cost(%rip), %edx	# add_cost, add_cost.286
	movl	%edx, %eax	# add_cost.286, tmp187
	addl	%eax, %eax	# tmp187
	addl	%edx, %eax	# add_cost.286, tmp187
	sall	$2, %eax	#, tmp188
	movl	%eax, %edx	# tmp187, D.17622
	movl	-772(%rbp), %eax	# mult_cost, tmp190
	cmpl	%eax, %edx	# tmp190, D.17622
	cmovle	%edx, %eax	# D.17622,, tmp189
	movl	%eax, -772(%rbp)	# tmp189, mult_cost
	.loc 1 2400 0
	movq	-728(%rbp), %rcx	# val, val.287
	movl	-772(%rbp), %edx	# mult_cost, tmp191
	leaq	-688(%rbp), %rax	#, tmp192
	movq	%rcx, %rsi	# val.287,
	movq	%rax, %rdi	# tmp192,
	call	synth_mult	#
	.loc 1 2404 0
	movl	-788(%rbp), %eax	# mode, mode.288
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17620
	cmpw	$32, %ax	#, D.17620
	ja	.L481	#,
	.loc 1 2407 0
	movzwl	-688(%rbp), %eax	# alg.cost, D.17626
	movswl	%ax, %edx	# D.17626, D.17622
	movl	-772(%rbp), %eax	# mult_cost, tmp194
	cmpl	%eax, %edx	# tmp194, D.17622
	cmovg	%eax, %edx	# D.17622,, tmp194, D.17622
	.loc 1 2406 0
	movl	negate_cost(%rip), %eax	# negate_cost, negate_cost.289
	subl	%eax, %edx	# negate_cost.289, D.17622
	movq	-728(%rbp), %rax	# val, tmp195
	negq	%rax	# D.17624
	movq	%rax, %rcx	# D.17624, D.17627
	leaq	-352(%rbp), %rax	#, tmp196
	movq	%rcx, %rsi	# D.17627,
	movq	%rax, %rdi	# tmp196,
	call	synth_mult	#
	.loc 1 2408 0
	movzwl	-352(%rbp), %eax	# alg2.cost, D.17626
	movswl	%ax, %edx	# D.17626, D.17622
	movl	negate_cost(%rip), %eax	# negate_cost, negate_cost.290
	addl	%eax, %edx	# negate_cost.290, D.17622
	movzwl	-688(%rbp), %eax	# alg.cost, D.17626
	cwtl
	cmpl	%eax, %edx	# D.17622, D.17622
	jge	.L481	#,
	.loc 1 2409 0
	leaq	-688(%rbp), %rdx	#, tmp197
	leaq	-352(%rbp), %rax	#, tmp198
	movl	$40, %ecx	#, tmp199
	movq	%rdx, %rdi	# tmp197, tmp197
	movq	%rax, %rsi	# tmp198, tmp198
	rep movsq
	movq	%rsi, %rax	# tmp198, tmp198
	movq	%rdi, %rdx	# tmp197, tmp197
	movl	(%rax), %ecx	# alg2, tmp200
	movl	%ecx, (%rdx)	# tmp200, alg
	addq	$4, %rdx	#, tmp197
	addq	$4, %rax	#, tmp198
	movl	$1, -784(%rbp)	#, variant
.L481:
	.loc 1 2414 0
	movzwl	-688(%rbp), %eax	# alg.cost, D.17626
	movswl	%ax, %edx	# D.17626, D.17622
	movl	-772(%rbp), %eax	# mult_cost, tmp201
	cmpl	%eax, %edx	# tmp201, D.17622
	cmovg	%eax, %edx	# D.17622,, tmp201, D.17622
	.loc 1 2413 0
	movl	add_cost(%rip), %eax	# add_cost, add_cost.291
	subl	%eax, %edx	# add_cost.291, D.17622
	movq	-728(%rbp), %rax	# val, tmp202
	subq	$1, %rax	#, D.17624
	movq	%rax, %rcx	# D.17624, D.17627
	leaq	-352(%rbp), %rax	#, tmp203
	movq	%rcx, %rsi	# D.17627,
	movq	%rax, %rdi	# tmp203,
	call	synth_mult	#
	.loc 1 2415 0
	movzwl	-352(%rbp), %eax	# alg2.cost, D.17626
	movswl	%ax, %edx	# D.17626, D.17622
	movl	add_cost(%rip), %eax	# add_cost, add_cost.292
	addl	%eax, %edx	# add_cost.292, D.17622
	movzwl	-688(%rbp), %eax	# alg.cost, D.17626
	cwtl
	cmpl	%eax, %edx	# D.17622, D.17622
	jge	.L482	#,
	.loc 1 2416 0
	leaq	-688(%rbp), %rdx	#, tmp204
	leaq	-352(%rbp), %rax	#, tmp205
	movl	$40, %ecx	#, tmp206
	movq	%rdx, %rdi	# tmp204, tmp204
	movq	%rax, %rsi	# tmp205, tmp205
	rep movsq
	movq	%rsi, %rax	# tmp205, tmp205
	movq	%rdi, %rdx	# tmp204, tmp204
	movl	(%rax), %ecx	# alg2, tmp207
	movl	%ecx, (%rdx)	# tmp207, alg
	addq	$4, %rdx	#, tmp204
	addq	$4, %rax	#, tmp205
	movl	$2, -784(%rbp)	#, variant
.L482:
	.loc 1 2418 0
	movzwl	-688(%rbp), %eax	# alg.cost, D.17626
	cwtl
	cmpl	-772(%rbp), %eax	# mult_cost, D.17622
	jge	.L479	#,
.LBB48:
	.loc 1 2425 0
	movq	-800(%rbp), %rax	# op0, tmp208
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp208,
	call	protect_from_queue	#
	movq	%rax, -800(%rbp)	# tmp209, op0
	.loc 1 2429 0
	movq	-800(%rbp), %rax	# op0, tmp210
	movzwl	(%rax), %eax	# op0_91->code, D.17620
	cmpw	$66, %ax	#, D.17620
	jne	.L484	#,
	.loc 1 2430 0
	movq	-800(%rbp), %rdx	# op0, tmp211
	movl	-788(%rbp), %eax	# mode, tmp212
	movq	%rdx, %rsi	# tmp211,
	movl	%eax, %edi	# tmp212,
	call	force_reg	#
	movq	%rax, -800(%rbp)	# tmp213, op0
.L484:
	.loc 1 2435 0
	movl	-684(%rbp), %eax	# alg.op, D.17628
	testl	%eax, %eax	# D.17628
	jne	.L485	#,
	.loc 1 2437 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.17625
	movl	-788(%rbp), %eax	# mode, tmp214
	movq	%rdx, %rsi	# D.17625,
	movl	%eax, %edi	# tmp214,
	call	copy_to_mode_reg	#
	movq	%rax, -744(%rbp)	# tmp215, accum
	.loc 1 2438 0
	movq	$0, -752(%rbp)	#, val_so_far
	jmp	.L486	#
.L485:
	.loc 1 2440 0
	movl	-684(%rbp), %eax	# alg.op, D.17628
	cmpl	$1, %eax	#, D.17628
	jne	.L487	#,
	.loc 1 2442 0
	movq	-800(%rbp), %rdx	# op0, tmp216
	movl	-788(%rbp), %eax	# mode, tmp217
	movq	%rdx, %rsi	# tmp216,
	movl	%eax, %edi	# tmp217,
	call	copy_to_mode_reg	#
	movq	%rax, -744(%rbp)	# tmp218, accum
	.loc 1 2443 0
	movq	$1, -752(%rbp)	#, val_so_far
	jmp	.L486	#
.L487:
	.loc 1 2446 0
	movl	$__FUNCTION__.13089, %edx	#,
	movl	$2446, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L486:
	.loc 1 2448 0
	movl	$1, -780(%rbp)	#, opno
	jmp	.L488	#
.L520:
.LBB49:
	.loc 1 2450 0
	movl	-780(%rbp), %eax	# opno, tmp220
	cltq
	movzbl	-428(%rbp,%rax), %eax	# alg.log, D.17629
	movsbl	%al, %eax	# D.17629, tmp221
	movl	%eax, -768(%rbp)	# tmp221, log
	.loc 1 2451 0
	call	preserve_subexpressions_p	#
	movl	%eax, -764(%rbp)	# tmp222, preserve
	.loc 1 2452 0
	cmpl	$0, -764(%rbp)	#, preserve
	jne	.L489	#,
	.loc 1 2452 0 is_stmt 0 discriminator 1
	movq	-744(%rbp), %rax	# accum, iftmp.293
	jmp	.L490	#
.L489:
	.loc 1 2452 0 discriminator 2
	movl	$0, %eax	#, iftmp.293
.L490:
	.loc 1 2452 0 discriminator 3
	movq	%rax, -720(%rbp)	# iftmp.293, shift_subtarget
	.loc 1 2454 0 is_stmt 1 discriminator 3
	movzwl	-686(%rbp), %eax	# alg.ops, D.17626
	cwtl
	subl	$1, %eax	#, D.17622
	.loc 1 2456 0 discriminator 3
	cmpl	-780(%rbp), %eax	# opno, D.17622
	jne	.L491	#,
	.loc 1 2454 0
	cmpq	$0, -816(%rbp)	#, target
	je	.L491	#,
	.loc 1 2454 0 is_stmt 0 discriminator 1
	cmpl	$2, -784(%rbp)	#, variant
	je	.L491	#,
	.loc 1 2455 0 is_stmt 1
	cmpl	$0, -764(%rbp)	#, preserve
	jne	.L491	#,
	.loc 1 2456 0
	movq	-816(%rbp), %rax	# target, iftmp.294
	jmp	.L492	#
.L491:
	.loc 1 2456 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.294
.L492:
	.loc 1 2453 0 is_stmt 1
	movq	%rax, -712(%rbp)	# iftmp.294, add_target
	.loc 1 2457 0
	cmpl	$0, -764(%rbp)	#, preserve
	jne	.L493	#,
	.loc 1 2457 0 is_stmt 0 discriminator 1
	movq	-744(%rbp), %rax	# accum, iftmp.295
	jmp	.L494	#
.L493:
	.loc 1 2457 0 discriminator 2
	movl	$0, %eax	#, iftmp.295
.L494:
	.loc 1 2457 0 discriminator 3
	movq	%rax, -704(%rbp)	# iftmp.295, accum_target
	.loc 1 2459 0 is_stmt 1 discriminator 3
	movl	-780(%rbp), %eax	# opno, tmp224
	cltq
	movl	-684(%rbp,%rax,4), %eax	# alg.op, D.17628
	cmpl	$8, %eax	#, D.17628
	ja	.L495	#,
	movl	%eax, %eax	# D.17628, tmp225
	movq	.L497(,%rax,8), %rax	#, tmp226
	jmp	*%rax	# tmp226
	.section	.rodata
	.align 8
	.align 4
.L497:
	.quad	.L495
	.quad	.L495
	.quad	.L496
	.quad	.L498
	.quad	.L499
	.quad	.L500
	.quad	.L501
	.quad	.L502
	.quad	.L503
	.text
.L496:
	.loc 1 2462 0
	movl	-768(%rbp), %eax	# log, tmp227
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-744(%rbp), %rdx	# accum, tmp228
	movl	-788(%rbp), %eax	# mode, tmp229
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp229,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -744(%rbp)	# tmp230, accum
	.loc 1 2464 0
	movl	-768(%rbp), %eax	# log, tmp231
	movl	%eax, %ecx	# tmp231, tmp335
	salq	%cl, -752(%rbp)	# tmp335, val_so_far
	.loc 1 2465 0
	jmp	.L504	#
.L498:
	.loc 1 2468 0
	movl	-768(%rbp), %eax	# log, tmp232
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-800(%rbp), %rdx	# op0, tmp233
	movl	-788(%rbp), %eax	# mode, tmp234
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp234,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -736(%rbp)	# tmp235, tem
	.loc 1 2470 0
	cmpq	$0, -712(%rbp)	#, add_target
	je	.L505	#,
	.loc 1 2470 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rbx	# add_target, iftmp.296
	jmp	.L506	#
.L505:
	.loc 1 2470 0 discriminator 2
	movq	-704(%rbp), %rbx	# accum_target, iftmp.296
.L506:
	.loc 1 2470 0 discriminator 3
	movq	-736(%rbp), %rcx	# tem, tmp236
	movq	-744(%rbp), %rdx	# accum, tmp237
	movl	-788(%rbp), %eax	# mode, tmp238
	movl	%eax, %esi	# tmp238,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.296,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp239, accum
	.loc 1 2473 0 is_stmt 1 discriminator 3
	movl	-768(%rbp), %eax	# log, tmp240
	movl	$1, %edx	#, tmp241
	movl	%eax, %ecx	# tmp240, tmp337
	salq	%cl, %rdx	# tmp337, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	addq	%rax, -752(%rbp)	# D.17624, val_so_far
	.loc 1 2474 0 discriminator 3
	jmp	.L504	#
.L499:
	.loc 1 2477 0
	movl	-768(%rbp), %eax	# log, tmp242
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-800(%rbp), %rdx	# op0, tmp243
	movl	-788(%rbp), %eax	# mode, tmp244
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp244,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -736(%rbp)	# tmp245, tem
	.loc 1 2479 0
	cmpq	$0, -712(%rbp)	#, add_target
	je	.L507	#,
	.loc 1 2479 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rbx	# add_target, iftmp.297
	jmp	.L508	#
.L507:
	.loc 1 2479 0 discriminator 2
	movq	-704(%rbp), %rbx	# accum_target, iftmp.297
.L508:
	.loc 1 2479 0 discriminator 3
	movq	-736(%rbp), %rcx	# tem, tmp246
	movq	-744(%rbp), %rdx	# accum, tmp247
	movl	-788(%rbp), %eax	# mode, tmp248
	movl	%eax, %esi	# tmp248,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.297,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp249, accum
	.loc 1 2482 0 is_stmt 1 discriminator 3
	movl	-768(%rbp), %eax	# log, tmp250
	movl	$1, %edx	#, tmp251
	movl	%eax, %ecx	# tmp250, tmp339
	salq	%cl, %rdx	# tmp339, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	subq	%rax, -752(%rbp)	# D.17624, val_so_far
	.loc 1 2483 0 discriminator 3
	jmp	.L504	#
.L502:
	.loc 1 2486 0
	movl	-768(%rbp), %eax	# log, tmp252
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-720(%rbp), %rsi	# shift_subtarget, tmp253
	movq	-744(%rbp), %rdx	# accum, tmp254
	movl	-788(%rbp), %eax	# mode, tmp255
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp253,
	movl	%eax, %esi	# tmp255,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -744(%rbp)	# tmp256, accum
	.loc 1 2489 0
	cmpq	$0, -712(%rbp)	#, add_target
	je	.L509	#,
	.loc 1 2489 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rbx	# add_target, iftmp.298
	jmp	.L510	#
.L509:
	.loc 1 2489 0 discriminator 2
	movq	-704(%rbp), %rbx	# accum_target, iftmp.298
.L510:
	.loc 1 2489 0 discriminator 3
	movq	-800(%rbp), %rcx	# op0, tmp257
	movq	-744(%rbp), %rdx	# accum, tmp258
	movl	-788(%rbp), %eax	# mode, tmp259
	movl	%eax, %esi	# tmp259,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.298,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp260, accum
	.loc 1 2492 0 is_stmt 1 discriminator 3
	movl	-768(%rbp), %eax	# log, tmp261
	movq	-752(%rbp), %rdx	# val_so_far, tmp262
	movl	%eax, %ecx	# tmp261, tmp341
	salq	%cl, %rdx	# tmp341, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	addq	$1, %rax	#, tmp263
	movq	%rax, -752(%rbp)	# tmp263, val_so_far
	.loc 1 2493 0 discriminator 3
	jmp	.L504	#
.L503:
	.loc 1 2496 0
	movl	-768(%rbp), %eax	# log, tmp264
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-720(%rbp), %rsi	# shift_subtarget, tmp265
	movq	-744(%rbp), %rdx	# accum, tmp266
	movl	-788(%rbp), %eax	# mode, tmp267
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp265,
	movl	%eax, %esi	# tmp267,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -744(%rbp)	# tmp268, accum
	.loc 1 2499 0
	cmpq	$0, -712(%rbp)	#, add_target
	je	.L511	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rbx	# add_target, iftmp.299
	jmp	.L512	#
.L511:
	.loc 1 2499 0 discriminator 2
	movq	-704(%rbp), %rbx	# accum_target, iftmp.299
.L512:
	.loc 1 2499 0 discriminator 3
	movq	-800(%rbp), %rcx	# op0, tmp269
	movq	-744(%rbp), %rdx	# accum, tmp270
	movl	-788(%rbp), %eax	# mode, tmp271
	movl	%eax, %esi	# tmp271,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.299,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp272, accum
	.loc 1 2502 0 is_stmt 1 discriminator 3
	movl	-768(%rbp), %eax	# log, tmp273
	movq	-752(%rbp), %rdx	# val_so_far, tmp274
	movl	%eax, %ecx	# tmp273, tmp343
	salq	%cl, %rdx	# tmp343, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	subq	$1, %rax	#, tmp275
	movq	%rax, -752(%rbp)	# tmp275, val_so_far
	.loc 1 2503 0 discriminator 3
	jmp	.L504	#
.L500:
	.loc 1 2506 0
	movl	-768(%rbp), %eax	# log, tmp276
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-744(%rbp), %rdx	# accum, tmp277
	movl	-788(%rbp), %eax	# mode, tmp278
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp278,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -736(%rbp)	# tmp279, tem
	.loc 1 2508 0
	cmpq	$0, -712(%rbp)	#, add_target
	je	.L513	#,
	.loc 1 2508 0 is_stmt 0 discriminator 1
	movq	-712(%rbp), %rbx	# add_target, iftmp.300
	jmp	.L514	#
.L513:
	.loc 1 2508 0 discriminator 2
	movq	-704(%rbp), %rbx	# accum_target, iftmp.300
.L514:
	.loc 1 2508 0 discriminator 3
	movq	-736(%rbp), %rcx	# tem, tmp280
	movq	-744(%rbp), %rdx	# accum, tmp281
	movl	-788(%rbp), %eax	# mode, tmp282
	movl	%eax, %esi	# tmp282,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.300,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp283, accum
	.loc 1 2511 0 is_stmt 1 discriminator 3
	movl	-768(%rbp), %eax	# log, tmp284
	movq	-752(%rbp), %rdx	# val_so_far, tmp285
	movl	%eax, %ecx	# tmp284, tmp345
	salq	%cl, %rdx	# tmp345, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	addq	%rax, -752(%rbp)	# D.17624, val_so_far
	.loc 1 2512 0 discriminator 3
	jmp	.L504	#
.L501:
	.loc 1 2515 0
	movl	-768(%rbp), %eax	# log, tmp286
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17627,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17630
	movq	-744(%rbp), %rdx	# accum, tmp287
	movl	-788(%rbp), %eax	# mode, tmp288
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp288,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -736(%rbp)	# tmp289, tem
	.loc 1 2517 0
	cmpq	$0, -712(%rbp)	#, add_target
	jne	.L515	#,
	.loc 1 2519 0
	cmpl	$0, -764(%rbp)	#, preserve
	jne	.L516	#,
	.loc 1 2519 0 is_stmt 0 discriminator 1
	movq	-736(%rbp), %rax	# tem, iftmp.302
	jmp	.L517	#
.L516:
	.loc 1 2519 0 discriminator 2
	movl	$0, %eax	#, iftmp.302
.L517:
	.loc 1 2517 0 is_stmt 1 discriminator 1
	movq	%rax, %rbx	# iftmp.302, iftmp.301
	jmp	.L518	#
.L515:
	movq	-712(%rbp), %rbx	# add_target, iftmp.301
.L518:
	.loc 1 2517 0 is_stmt 0 discriminator 2
	movq	-744(%rbp), %rcx	# accum, tmp290
	movq	-736(%rbp), %rdx	# tem, tmp291
	movl	-788(%rbp), %eax	# mode, tmp292
	movl	%eax, %esi	# tmp292,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rbx, %rsi	# iftmp.301,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp293, accum
	.loc 1 2520 0 is_stmt 1 discriminator 2
	movl	-768(%rbp), %eax	# log, tmp294
	movq	-752(%rbp), %rdx	# val_so_far, tmp295
	movl	%eax, %ecx	# tmp294, tmp347
	salq	%cl, %rdx	# tmp347, D.17624
	movq	%rdx, %rax	# D.17624, D.17624
	subq	-752(%rbp), %rax	# val_so_far, tmp297
	movq	%rax, -752(%rbp)	# tmp297, val_so_far
	.loc 1 2521 0 discriminator 2
	jmp	.L504	#
.L495:
	.loc 1 2524 0
	movl	$__FUNCTION__.13089, %edx	#,
	movl	$2524, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L504:
	.loc 1 2532 0
	movq	-800(%rbp), %rax	# op0, tmp298
	movq	%rax, -736(%rbp)	# tmp298, tem
	movl	-788(%rbp), %eax	# mode, tmp299
	movl	%eax, -776(%rbp)	# tmp299, nmode
	.loc 1 2533 0
	movq	-744(%rbp), %rax	# accum, tmp300
	movzwl	(%rax), %eax	# accum_12->code, D.17620
	cmpw	$63, %ax	#, D.17620
	jne	.L519	#,
	.loc 1 2535 0
	movq	-744(%rbp), %rax	# accum, tmp301
	movq	8(%rax), %rax	# accum_12->fld[0].rtx, D.17625
	movzbl	2(%rax), %eax	# _184->mode, D.17621
	movzbl	%al, %eax	# D.17621, tmp302
	movl	%eax, -776(%rbp)	# tmp302, nmode
	.loc 1 2536 0
	movq	-800(%rbp), %rdx	# op0, tmp303
	movl	-776(%rbp), %eax	# nmode, tmp304
	movq	%rdx, %rsi	# tmp303,
	movl	%eax, %edi	# tmp304,
	call	gen_lowpart	#
	movq	%rax, -736(%rbp)	# tmp305, tem
.L519:
	.loc 1 2539 0
	call	get_last_insn	#
	movq	%rax, -696(%rbp)	# tmp306, insn
	.loc 1 2540 0
	movq	-752(%rbp), %rax	# val_so_far, tmp307
	movq	%rax, %rsi	# tmp307,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17625
	movq	-736(%rbp), %rdx	# tem, tmp308
	movl	-776(%rbp), %eax	# nmode, tmp309
	movl	%eax, %esi	# tmp309,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17625
	movq	-696(%rbp), %rax	# insn, tmp310
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp310,
	call	set_unique_reg_note	#
.LBE49:
	.loc 1 2448 0
	addl	$1, -780(%rbp)	#, opno
.L488:
	.loc 1 2448 0 is_stmt 0 discriminator 1
	movzwl	-686(%rbp), %eax	# alg.ops, D.17626
	cwtl
	cmpl	-780(%rbp), %eax	# opno, D.17622
	jg	.L520	#,
	.loc 1 2546 0 is_stmt 1
	cmpl	$1, -784(%rbp)	#, variant
	jne	.L521	#,
	.loc 1 2548 0
	negq	-752(%rbp)	# val_so_far
	.loc 1 2549 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17631
	movq	-816(%rbp), %rcx	# target, tmp311
	movq	-744(%rbp), %rdx	# accum, tmp312
	movl	-788(%rbp), %eax	# mode, tmp313
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp313,
	call	expand_unop	#
	movq	%rax, -744(%rbp)	# tmp314, accum
	jmp	.L522	#
.L521:
	.loc 1 2551 0
	cmpl	$2, -784(%rbp)	#, variant
	jne	.L522	#,
	.loc 1 2553 0
	addq	$1, -752(%rbp)	#, val_so_far
	.loc 1 2554 0
	movq	-800(%rbp), %rcx	# op0, tmp315
	movq	-744(%rbp), %rdx	# accum, tmp316
	movl	-788(%rbp), %eax	# mode, tmp317
	movl	%eax, %esi	# tmp317,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-816(%rbp), %rdx	# target, tmp318
	movq	%rdx, %rsi	# tmp318,
	movq	%rax, %rdi	# D.17625,
	call	force_operand	#
	movq	%rax, -744(%rbp)	# tmp319, accum
.L522:
	.loc 1 2557 0
	movq	-728(%rbp), %rax	# val, tmp320
	cmpq	-752(%rbp), %rax	# val_so_far, tmp320
	je	.L523	#,
	.loc 1 2558 0
	movl	$__FUNCTION__.13089, %edx	#,
	movl	$2558, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L523:
	.loc 1 2560 0
	movq	-744(%rbp), %rax	# accum, D.17619
	jmp	.L524	#
.L479:
.LBE48:
.LBE47:
	.loc 1 2566 0
	cmpl	$0, -792(%rbp)	#, unsignedp
	jne	.L525	#,
	.loc 1 2568 0
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.304
	testl	%eax, %eax	# flag_trapv.304
	je	.L525	#,
	.loc 1 2568 0 is_stmt 0 discriminator 1
	movl	-788(%rbp), %eax	# mode, mode.305
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17623
	cmpl	$1, %eax	#, D.17623
	jne	.L525	#,
	.loc 1 2566 0 is_stmt 1
	movq	optab_table+40(%rip), %rax	# optab_table, iftmp.303
	jmp	.L526	#
.L525:
	.loc 1 2566 0 is_stmt 0 discriminator 1
	movq	optab_table+32(%rip), %rax	# optab_table, iftmp.303
.L526:
	.loc 1 2566 0 discriminator 2
	movl	-792(%rbp), %r8d	# unsignedp, tmp322
	movq	-816(%rbp), %rsi	# target, tmp323
	movq	-808(%rbp), %rcx	# op1, tmp324
	movq	-800(%rbp), %rdx	# op0, tmp325
	movl	-788(%rbp), %edi	# mode, tmp326
	movl	$3, (%rsp)	#,
	movl	%r8d, %r9d	# tmp322,
	movq	%rsi, %r8	# tmp323,
	movq	%rax, %rsi	# iftmp.303,
	call	expand_binop	#
	movq	%rax, -800(%rbp)	# tmp327, op0
	.loc 1 2571 0 is_stmt 1 discriminator 2
	cmpq	$0, -800(%rbp)	#, op0
	jne	.L527	#,
	.loc 1 2572 0
	movl	$__FUNCTION__.13089, %edx	#,
	movl	$2572, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L527:
	.loc 1 2573 0
	movq	-800(%rbp), %rax	# op0, D.17619
.L524:
	.loc 1 2574 0
	movq	-24(%rbp), %rbx	# D.17632, tmp330
	xorq	%fs:40, %rbx	#, tmp330
	je	.L528	#,
	call	__stack_chk_fail	#
.L528:
	addq	$824, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	expand_mult, .-expand_mult
	.globl	ceil_log2
	.type	ceil_log2, @function
ceil_log2:
.LFB18:
	.loc 1 2581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	.loc 1 2582 0
	movq	-8(%rbp), %rax	# x, tmp63
	subq	$1, %rax	#, D.17635
	movq	%rax, %rdi	# D.17635,
	call	floor_log2_wide	#
	addl	$1, %eax	#, D.17636
	.loc 1 2583 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ceil_log2, .-ceil_log2
	.type	choose_multiplier, @function
choose_multiplier:
.LFB19:
	.loc 1 2610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -120(%rbp)	# d, d
	movl	%esi, -124(%rbp)	# n, n
	movl	%edx, -128(%rbp)	# precision, precision
	movq	%rcx, -136(%rbp)	# multiplier_ptr, multiplier_ptr
	movq	%r8, -144(%rbp)	# post_shift_ptr, post_shift_ptr
	movq	%r9, -152(%rbp)	# lgup_ptr, lgup_ptr
	.loc 1 2619 0
	movq	-120(%rbp), %rax	# d, tmp94
	movq	%rax, %rdi	# tmp94,
	call	ceil_log2	#
	movl	%eax, -100(%rbp)	# tmp95, lgup
	.loc 1 2621 0
	movl	-100(%rbp), %eax	# lgup, tmp96
	cmpl	-124(%rbp), %eax	# n, tmp96
	jle	.L532	#,
	.loc 1 2622 0
	movl	$__FUNCTION__.13130, %edx	#,
	movl	$2622, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L532:
	.loc 1 2624 0
	movl	-100(%rbp), %eax	# lgup, tmp101
	movl	-124(%rbp), %edx	# n, tmp102
	addl	%edx, %eax	# tmp102, tmp100
	movl	%eax, -96(%rbp)	# tmp100, pow
	.loc 1 2625 0
	movl	-100(%rbp), %eax	# lgup, tmp103
	movl	-124(%rbp), %edx	# n, tmp104
	addl	%edx, %eax	# tmp104, D.17638
	subl	-128(%rbp), %eax	# precision, tmp106
	movl	%eax, -92(%rbp)	# tmp106, pow2
	.loc 1 2627 0
	cmpl	$128, -96(%rbp)	#, pow
	jne	.L533	#,
	.loc 1 2631 0
	movl	$__FUNCTION__.13130, %edx	#,
	movl	$2631, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L533:
	.loc 1 2635 0
	cmpl	$63, -96(%rbp)	#, pow
	jle	.L534	#,
	.loc 1 2637 0
	movl	-96(%rbp), %eax	# pow, tmp107
	subl	$64, %eax	#, D.17638
	movl	$1, %edx	#, tmp108
	movl	%eax, %ecx	# D.17638, tmp148
	salq	%cl, %rdx	# tmp148, tmp109
	movq	%rdx, %rax	# tmp109, tmp109
	movq	%rax, -32(%rbp)	# tmp109, nh
	.loc 1 2638 0
	movq	$0, -40(%rbp)	#, nl
	jmp	.L535	#
.L534:
	.loc 1 2642 0
	movq	$0, -32(%rbp)	#, nh
	.loc 1 2643 0
	movl	-96(%rbp), %eax	# pow, tmp110
	movl	$1, %edx	#, tmp111
	movl	%eax, %ecx	# tmp110, tmp150
	salq	%cl, %rdx	# tmp150, tmp112
	movq	%rdx, %rax	# tmp112, tmp112
	movq	%rax, -40(%rbp)	# tmp112, nl
.L535:
	.loc 1 2645 0
	movq	-120(%rbp), %rsi	# d, tmp113
	movq	-32(%rbp), %rdx	# nh, tmp114
	movq	-40(%rbp), %rax	# nl, tmp115
	leaq	-48(%rbp), %rcx	#, tmp116
	movq	%rcx, 24(%rsp)	# tmp116,
	leaq	-56(%rbp), %rcx	#, tmp117
	movq	%rcx, 16(%rsp)	# tmp117,
	leaq	-80(%rbp), %rcx	#, tmp118
	movq	%rcx, 8(%rsp)	# tmp118,
	leaq	-64(%rbp), %rcx	#, tmp119
	movq	%rcx, (%rsp)	# tmp119,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp113,
	movq	%rdx, %rcx	# tmp114,
	movq	%rax, %rdx	# tmp115,
	movl	$1, %esi	#,
	movl	$62, %edi	#,
	call	div_and_round_double	#
	.loc 1 2649 0
	cmpl	$63, -92(%rbp)	#, pow2
	jle	.L536	#,
	.loc 1 2650 0
	movl	-92(%rbp), %eax	# pow2, tmp120
	subl	$64, %eax	#, D.17638
	movl	$1, %edx	#, tmp121
	movl	%eax, %ecx	# D.17638, tmp152
	salq	%cl, %rdx	# tmp152, D.17639
	movq	%rdx, %rax	# D.17639, D.17639
	orq	%rax, -32(%rbp)	# D.17639, nh
	jmp	.L537	#
.L536:
	.loc 1 2652 0
	movl	-92(%rbp), %eax	# pow2, tmp122
	movl	$1, %edx	#, tmp123
	movl	%eax, %ecx	# tmp122, tmp154
	salq	%cl, %rdx	# tmp154, D.17637
	movq	%rdx, %rax	# D.17637, D.17637
	orq	%rax, -40(%rbp)	# D.17637, nl
.L537:
	.loc 1 2653 0
	movq	-120(%rbp), %rsi	# d, tmp124
	movq	-32(%rbp), %rdx	# nh, tmp125
	movq	-40(%rbp), %rax	# nl, tmp126
	leaq	-48(%rbp), %rcx	#, tmp127
	movq	%rcx, 24(%rsp)	# tmp127,
	leaq	-56(%rbp), %rcx	#, tmp128
	movq	%rcx, 16(%rsp)	# tmp128,
	leaq	-88(%rbp), %rcx	#, tmp129
	movq	%rcx, 8(%rsp)	# tmp129,
	leaq	-72(%rbp), %rcx	#, tmp130
	movq	%rcx, (%rsp)	# tmp130,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp124,
	movq	%rdx, %rcx	# tmp125,
	movq	%rax, %rdx	# tmp126,
	movl	$1, %esi	#,
	movl	$62, %edi	#,
	call	div_and_round_double	#
	.loc 1 2656 0
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.306
	testq	%rax, %rax	# mhigh_hi.306
	je	.L538	#,
	.loc 1 2656 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# nh, nh.307
	subq	-120(%rbp), %rax	# d, D.17637
	cmpq	-120(%rbp), %rax	# d, D.17637
	jb	.L538	#,
	.loc 1 2657 0 is_stmt 1
	movl	$__FUNCTION__.13130, %edx	#,
	movl	$2657, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L538:
	.loc 1 2658 0
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.308
	cmpq	$1, %rax	#, mhigh_hi.308
	jg	.L539	#,
	.loc 1 2658 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# mlow_hi, mlow_hi.309
	cmpq	$1, %rax	#, mlow_hi.309
	jle	.L540	#,
.L539:
	.loc 1 2659 0 is_stmt 1
	movl	$__FUNCTION__.13130, %edx	#,
	movl	$2659, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L540:
	.loc 1 2661 0
	movq	-80(%rbp), %rdx	# mlow_hi, mlow_hi.310
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.311
	cmpq	%rax, %rdx	# mhigh_hi.311, mlow_hi.310
	jl	.L541	#,
	.loc 1 2661 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx	# mlow_hi, mlow_hi.312
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.313
	cmpq	%rax, %rdx	# mhigh_hi.313, mlow_hi.312
	jne	.L542	#,
	movq	-64(%rbp), %rdx	# mlow_lo, mlow_lo.314
	movq	-72(%rbp), %rax	# mhigh_lo, mhigh_lo.315
	cmpq	%rax, %rdx	# mhigh_lo.315, mlow_lo.314
	jb	.L541	#,
.L542:
	.loc 1 2662 0 is_stmt 1
	movl	$__FUNCTION__.13130, %edx	#,
	movl	$2662, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L541:
	.loc 1 2668 0
	movl	-100(%rbp), %eax	# lgup, tmp131
	movl	%eax, -104(%rbp)	# tmp131, post_shift
	jmp	.L543	#
.L546:
.LBB50:
	.loc 1 2670 0
	movq	-80(%rbp), %rax	# mlow_hi, mlow_hi.316
	salq	$63, %rax	#, D.17639
	movq	-64(%rbp), %rdx	# mlow_lo, mlow_lo.317
	shrq	%rdx	# D.17637
	orq	%rdx, %rax	# D.17637, tmp132
	movq	%rax, -24(%rbp)	# tmp132, ml_lo
	.loc 1 2671 0
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.318
	salq	$63, %rax	#, D.17639
	movq	-72(%rbp), %rdx	# mhigh_lo, mhigh_lo.319
	shrq	%rdx	# D.17637
	orq	%rdx, %rax	# D.17637, tmp133
	movq	%rax, -16(%rbp)	# tmp133, mh_lo
	.loc 1 2672 0
	movq	-24(%rbp), %rax	# ml_lo, tmp134
	cmpq	-16(%rbp), %rax	# mh_lo, tmp134
	jb	.L544	#,
	.loc 1 2673 0
	jmp	.L545	#
.L544:
	.loc 1 2675 0
	movq	$0, -80(%rbp)	#, mlow_hi
	.loc 1 2676 0
	movq	-24(%rbp), %rax	# ml_lo, tmp135
	movq	%rax, -64(%rbp)	# tmp135, mlow_lo
	.loc 1 2677 0
	movq	$0, -88(%rbp)	#, mhigh_hi
	.loc 1 2678 0
	movq	-16(%rbp), %rax	# mh_lo, tmp136
	movq	%rax, -72(%rbp)	# tmp136, mhigh_lo
.LBE50:
	.loc 1 2668 0
	subl	$1, -104(%rbp)	#, post_shift
.L543:
	.loc 1 2668 0 is_stmt 0 discriminator 1
	cmpl	$0, -104(%rbp)	#, post_shift
	jg	.L546	#,
.L545:
	.loc 1 2681 0 is_stmt 1
	movq	-144(%rbp), %rax	# post_shift_ptr, tmp137
	movl	-104(%rbp), %edx	# post_shift, tmp138
	movl	%edx, (%rax)	# tmp138, *post_shift_ptr_49(D)
	.loc 1 2682 0
	movq	-152(%rbp), %rax	# lgup_ptr, tmp139
	movl	-100(%rbp), %edx	# lgup, tmp140
	movl	%edx, (%rax)	# tmp140, *lgup_ptr_50(D)
	.loc 1 2683 0
	cmpl	$63, -124(%rbp)	#, n
	jg	.L547	#,
.LBB51:
	.loc 1 2685 0
	movl	-124(%rbp), %eax	# n, tmp141
	movl	$1, %edx	#, tmp142
	movl	%eax, %ecx	# tmp141, tmp156
	salq	%cl, %rdx	# tmp156, D.17637
	movq	%rdx, %rax	# D.17637, D.17637
	subq	$1, %rax	#, tmp143
	movq	%rax, -8(%rbp)	# tmp143, mask
	.loc 1 2686 0
	movq	-72(%rbp), %rax	# mhigh_lo, mhigh_lo.320
	andq	-8(%rbp), %rax	# mask, D.17637
	movq	%rax, %rdx	# D.17637, D.17637
	movq	-136(%rbp), %rax	# multiplier_ptr, tmp144
	movq	%rdx, (%rax)	# D.17637, *multiplier_ptr_55(D)
	.loc 1 2687 0
	movq	-72(%rbp), %rax	# mhigh_lo, mhigh_lo.321
	cmpq	-8(%rbp), %rax	# mask, mhigh_lo.321
	setae	%al	#, D.17640
	movzbl	%al, %eax	# D.17640, D.17637
	jmp	.L549	#
.L547:
.LBE51:
	.loc 1 2691 0
	movq	-72(%rbp), %rdx	# mhigh_lo, mhigh_lo.322
	movq	-136(%rbp), %rax	# multiplier_ptr, tmp145
	movq	%rdx, (%rax)	# mhigh_lo.322, *multiplier_ptr_55(D)
	.loc 1 2692 0
	movq	-88(%rbp), %rax	# mhigh_hi, mhigh_hi.323
.L549:
	.loc 1 2694 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	choose_multiplier, .-choose_multiplier
	.type	invert_mod2n, @function
invert_mod2n:
.LFB20:
	.loc 1 2703 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# x, x
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 2711 0
	movq	-40(%rbp), %rax	# x, tmp66
	movq	%rax, -16(%rbp)	# tmp66, y
	.loc 1 2712 0
	movl	$3, -20(%rbp)	#, nbit
	.loc 1 2716 0
	cmpl	$64, -44(%rbp)	#, n
	je	.L551	#,
	.loc 1 2716 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# n, tmp67
	movl	$1, %edx	#, tmp68
	movl	%eax, %ecx	# tmp67, tmp76
	salq	%cl, %rdx	# tmp76, D.17641
	movq	%rdx, %rax	# D.17641, D.17641
	subq	$1, %rax	#, iftmp.324
	jmp	.L552	#
.L551:
	.loc 1 2716 0 discriminator 2
	movq	$-1, %rax	#, iftmp.324
.L552:
	.loc 1 2714 0 is_stmt 1
	movq	%rax, -8(%rbp)	# iftmp.324, mask
	.loc 1 2718 0
	jmp	.L553	#
.L554:
	.loc 1 2720 0
	movq	-40(%rbp), %rax	# x, tmp69
	imulq	-16(%rbp), %rax	# y, D.17641
	movl	$2, %edx	#, tmp70
	subq	%rax, %rdx	# D.17641, D.17641
	movq	%rdx, %rax	# D.17641, D.17641
	imulq	-16(%rbp), %rax	# y, D.17641
	andq	-8(%rbp), %rax	# mask, tmp72
	movq	%rax, -16(%rbp)	# tmp72, y
	.loc 1 2721 0
	sall	-20(%rbp)	# nbit
.L553:
	.loc 1 2718 0 discriminator 1
	movl	-20(%rbp), %eax	# nbit, tmp73
	cmpl	-44(%rbp), %eax	# n, tmp73
	jl	.L554	#,
	.loc 1 2723 0
	movq	-16(%rbp), %rax	# y, D.17641
	.loc 1 2724 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	invert_mod2n, .-invert_mod2n
	.globl	expand_mult_highpart_adjust
	.type	expand_mult_highpart_adjust, @function
expand_mult_highpart_adjust:
.LFB21:
	.loc 1 2741 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# adj_operand, adj_operand
	movq	%rdx, -40(%rbp)	# op0, op0
	movq	%rcx, -48(%rbp)	# op1, op1
	movq	%r8, -56(%rbp)	# target, target
	movl	%r9d, -24(%rbp)	# unsignedp, unsignedp
	.loc 1 2743 0
	cmpl	$0, -24(%rbp)	#, unsignedp
	je	.L557	#,
	.loc 1 2743 0 is_stmt 0 discriminator 1
	movl	$75, %eax	#, iftmp.325
	jmp	.L558	#
.L557:
	.loc 1 2743 0 discriminator 2
	movl	$76, %eax	#, iftmp.325
.L558:
	.loc 1 2743 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.325, adj_code
	.loc 1 2746 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# mode, mode.326
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17642
	movzwl	%ax, %eax	# D.17642, D.17643
	subl	$1, %eax	#, D.17643
	.loc 1 2745 0 discriminator 3
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17644,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17645
	movq	-40(%rbp), %rdx	# op0, tmp77
	movl	-20(%rbp), %eax	# mode, tmp78
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp78,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -8(%rbp)	# tmp79, tem
	.loc 1 2748 0 discriminator 3
	movq	-48(%rbp), %rdx	# op1, tmp80
	movq	-8(%rbp), %rsi	# tem, tmp81
	movl	-20(%rbp), %eax	# mode, tmp82
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp82,
	call	expand_and	#
	movq	%rax, -8(%rbp)	# tmp83, tem
	.loc 1 2750 0 discriminator 3
	movq	-8(%rbp), %rcx	# tem, tmp84
	movq	-32(%rbp), %rdx	# adj_operand, tmp85
	movl	-20(%rbp), %esi	# mode, tmp86
	movl	-12(%rbp), %eax	# adj_code, tmp87
	movl	%eax, %edi	# tmp87,
	call	gen_rtx_fmt_ee	#
	movq	-32(%rbp), %rdx	# adj_operand, tmp88
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# D.17646,
	call	force_operand	#
	movq	%rax, -32(%rbp)	# tmp89, adj_operand
	.loc 1 2754 0 discriminator 3
	movl	-20(%rbp), %eax	# mode, mode.327
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17642
	movzwl	%ax, %eax	# D.17642, D.17643
	subl	$1, %eax	#, D.17643
	.loc 1 2753 0 discriminator 3
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17644,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17645
	movq	-48(%rbp), %rdx	# op1, tmp91
	movl	-20(%rbp), %eax	# mode, tmp92
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp92,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -8(%rbp)	# tmp93, tem
	.loc 1 2756 0 discriminator 3
	movq	-40(%rbp), %rdx	# op0, tmp94
	movq	-8(%rbp), %rsi	# tem, tmp95
	movl	-20(%rbp), %eax	# mode, tmp96
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp96,
	call	expand_and	#
	movq	%rax, -8(%rbp)	# tmp97, tem
	.loc 1 2757 0 discriminator 3
	movq	-8(%rbp), %rcx	# tem, tmp98
	movq	-32(%rbp), %rdx	# adj_operand, tmp99
	movl	-20(%rbp), %esi	# mode, tmp100
	movl	-12(%rbp), %eax	# adj_code, tmp101
	movl	%eax, %edi	# tmp101,
	call	gen_rtx_fmt_ee	#
	movq	-56(%rbp), %rdx	# target, tmp102
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# D.17646,
	call	force_operand	#
	movq	%rax, -56(%rbp)	# tmp103, target
	.loc 1 2760 0 discriminator 3
	movq	-56(%rbp), %rax	# target, D.17647
	.loc 1 2761 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	expand_mult_highpart_adjust, .-expand_mult_highpart_adjust
	.globl	expand_mult_highpart
	.type	expand_mult_highpart, @function
expand_mult_highpart:
.LFB22:
	.loc 1 2780 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -68(%rbp)	# mode, mode
	movq	%rsi, -80(%rbp)	# op0, op0
	movq	%rdx, -88(%rbp)	# cnst1, cnst1
	movq	%rcx, -96(%rbp)	# target, target
	movl	%r8d, -72(%rbp)	# unsignedp, unsignedp
	movl	%r9d, -100(%rbp)	# max_cost, max_cost
	.loc 1 2781 0
	movl	-68(%rbp), %eax	# mode, mode.328
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17649
	movzbl	%al, %eax	# D.17649, tmp138
	movl	%eax, -56(%rbp)	# tmp138, wider_mode
	.loc 1 2785 0
	movl	-68(%rbp), %eax	# mode, mode.329
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17650
	movzwl	%ax, %eax	# D.17650, tmp140
	movl	%eax, -52(%rbp)	# tmp140, size
	.loc 1 2789 0
	cmpl	$64, -52(%rbp)	#, size
	jle	.L561	#,
	.loc 1 2790 0
	movl	$__FUNCTION__.13172, %edx	#,
	movl	$2790, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L561:
	.loc 1 2792 0
	movq	-88(%rbp), %rax	# cnst1, cnst1.330
	movl	-68(%rbp), %edx	# mode, tmp141
	movl	%edx, %esi	# tmp141,
	movq	%rax, %rdi	# cnst1.330,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17651,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -40(%rbp)	# tmp142, op1
	.loc 1 2795 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	jne	.L562	#,
	.loc 1 2798 0
	movq	-88(%rbp), %rax	# cnst1, cnst1.332
	.loc 1 2795 0
	sarq	$63, %rax	#, iftmp.331
	jmp	.L563	#
.L562:
	.loc 1 2795 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.331
.L563:
	.loc 1 2795 0 discriminator 2
	movq	-88(%rbp), %rcx	# cnst1, cnst1.333
	movl	-56(%rbp), %edx	# wider_mode, tmp143
	movq	%rax, %rsi	# iftmp.331,
	movq	%rcx, %rdi	# cnst1.333,
	call	immed_double_const	#
	movq	%rax, -32(%rbp)	# tmp144, wide_op1
	.loc 1 2803 0 is_stmt 1 discriminator 2
	movl	target_flags(%rip), %eax	# target_flags, target_flags.335
	andl	$33554432, %eax	#, D.17652
	testl	%eax, %eax	# D.17652
	je	.L564	#,
	.loc 1 2803 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.334
	jmp	.L565	#
.L564:
	.loc 1 2803 0 discriminator 2
	movl	$32, %eax	#, iftmp.334
.L565:
	.loc 1 2803 0 discriminator 3
	cmpl	-52(%rbp), %eax	# size, iftmp.334
	jle	.L566	#,
	.loc 1 2804 0 is_stmt 1
	movl	-56(%rbp), %eax	# wider_mode, wider_mode.336
	cltq
	movl	mul_cost(,%rax,4), %edx	# mul_cost, D.17652
	movl	-52(%rbp), %eax	# size, tmp146
	subl	$1, %eax	#, D.17652
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17652
	addl	%edx, %eax	# D.17652, D.17652
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L566	#,
	.loc 1 2808 0
	movl	-72(%rbp), %edx	# unsignedp, tmp148
	movq	-80(%rbp), %rcx	# op0, tmp149
	movl	-56(%rbp), %eax	# wider_mode, tmp150
	movq	%rcx, %rsi	# tmp149,
	movl	%eax, %edi	# tmp150,
	call	convert_to_mode	#
	movq	%rax, -80(%rbp)	# tmp151, op0
	.loc 1 2812 0
	movq	-32(%rbp), %rdx	# wide_op1, tmp152
	movq	-80(%rbp), %rsi	# op0, tmp153
	movl	-56(%rbp), %eax	# wider_mode, tmp154
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp154,
	call	expand_mult	#
	movq	%rax, -24(%rbp)	# tmp155, tem
	.loc 1 2813 0
	movl	-52(%rbp), %eax	# size, tmp156
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17653,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17654
	movq	-24(%rbp), %rdx	# tem, tmp157
	movl	-56(%rbp), %eax	# wider_mode, tmp158
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp158,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -24(%rbp)	# tmp159, tem
	.loc 1 2815 0
	movl	-72(%rbp), %ecx	# unsignedp, tmp160
	movq	-24(%rbp), %rdx	# tem, tmp161
	movl	-56(%rbp), %esi	# wider_mode, tmp162
	movl	-68(%rbp), %eax	# mode, tmp163
	movl	%eax, %edi	# tmp163,
	call	convert_modes	#
	jmp	.L567	#
.L566:
	.loc 1 2818 0
	cmpq	$0, -96(%rbp)	#, target
	jne	.L568	#,
	.loc 1 2819 0
	movl	-68(%rbp), %eax	# mode, tmp164
	movl	%eax, %edi	# tmp164,
	call	gen_reg_rtx	#
	movq	%rax, -96(%rbp)	# tmp165, target
.L568:
	.loc 1 2823 0
	movl	-68(%rbp), %eax	# mode, mode.337
	cltq
	movl	mul_highpart_cost(,%rax,4), %eax	# mul_highpart_cost, D.17652
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L569	#,
	.loc 1 2825 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	je	.L570	#,
	.loc 1 2825 0 is_stmt 0 discriminator 1
	movq	optab_table+56(%rip), %rax	# optab_table, iftmp.338
	jmp	.L571	#
.L570:
	.loc 1 2825 0 discriminator 2
	movq	optab_table+48(%rip), %rax	# optab_table, iftmp.338
.L571:
	.loc 1 2825 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.338, mul_highpart_optab
	.loc 1 2826 0 is_stmt 1 discriminator 3
	movl	-72(%rbp), %r8d	# unsignedp, tmp167
	movq	-96(%rbp), %rdi	# target, tmp168
	movq	-40(%rbp), %rcx	# op1, tmp169
	movq	-80(%rbp), %rdx	# op0, tmp170
	movq	-16(%rbp), %rsi	# mul_highpart_optab, tmp171
	movl	-68(%rbp), %eax	# mode, tmp172
	movl	$0, (%rsp)	#,
	movl	%r8d, %r9d	# tmp167,
	movq	%rdi, %r8	# tmp168,
	movl	%eax, %edi	# tmp172,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp173, target
	.loc 1 2828 0 discriminator 3
	cmpq	$0, -96(%rbp)	#, target
	je	.L569	#,
	.loc 1 2829 0
	movq	-96(%rbp), %rax	# target, D.17648
	jmp	.L567	#
.L569:
	.loc 1 2834 0
	movl	-52(%rbp), %eax	# size, tmp174
	leal	-1(%rax), %edx	#, D.17652
	movl	target_flags(%rip), %eax	# target_flags, target_flags.340
	andl	$33554432, %eax	#, D.17652
	testl	%eax, %eax	# D.17652
	je	.L572	#,
	.loc 1 2834 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.339
	jmp	.L573	#
.L572:
	.loc 1 2834 0 discriminator 2
	movl	$32, %eax	#, iftmp.339
.L573:
	.loc 1 2834 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.339, D.17652
	jge	.L574	#,
	.loc 1 2835 0 is_stmt 1
	movl	-68(%rbp), %eax	# mode, mode.341
	cltq
	movl	mul_highpart_cost(,%rax,4), %edx	# mul_highpart_cost, D.17652
	movl	-52(%rbp), %eax	# size, tmp176
	subl	$1, %eax	#, D.17652
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17652
	addl	%eax, %eax	# D.17652
	addl	%eax, %edx	# D.17652, D.17652
	movl	add_cost(%rip), %eax	# add_cost, add_cost.342
	sall	$2, %eax	#, D.17652
	addl	%edx, %eax	# D.17652, D.17652
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L574	#,
	.loc 1 2838 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	je	.L575	#,
	.loc 1 2838 0 is_stmt 0 discriminator 1
	movq	optab_table+48(%rip), %rax	# optab_table, iftmp.343
	jmp	.L576	#
.L575:
	.loc 1 2838 0 discriminator 2
	movq	optab_table+56(%rip), %rax	# optab_table, iftmp.343
.L576:
	.loc 1 2838 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.343, mul_highpart_optab
	.loc 1 2839 0 is_stmt 1 discriminator 3
	movl	-72(%rbp), %r8d	# unsignedp, tmp178
	movq	-96(%rbp), %rdi	# target, tmp179
	movq	-40(%rbp), %rcx	# op1, tmp180
	movq	-80(%rbp), %rdx	# op0, tmp181
	movq	-16(%rbp), %rsi	# mul_highpart_optab, tmp182
	movl	-68(%rbp), %eax	# mode, tmp183
	movl	$0, (%rsp)	#,
	movl	%r8d, %r9d	# tmp178,
	movq	%rdi, %r8	# tmp179,
	movl	%eax, %edi	# tmp183,
	call	expand_binop	#
	movq	%rax, -96(%rbp)	# tmp184, target
	.loc 1 2841 0 discriminator 3
	cmpq	$0, -96(%rbp)	#, target
	je	.L574	#,
	.loc 1 2843 0
	movl	-72(%rbp), %r8d	# unsignedp, tmp185
	movq	-96(%rbp), %rdi	# target, tmp186
	movq	-40(%rbp), %rcx	# op1, tmp187
	movq	-80(%rbp), %rdx	# op0, tmp188
	movq	-96(%rbp), %rsi	# target, tmp189
	movl	-68(%rbp), %eax	# mode, tmp190
	movl	%r8d, %r9d	# tmp185,
	movq	%rdi, %r8	# tmp186,
	movl	%eax, %edi	# tmp190,
	call	expand_mult_highpart_adjust	#
	jmp	.L567	#
.L574:
	.loc 1 2848 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	je	.L577	#,
	.loc 1 2848 0 is_stmt 0 discriminator 1
	movq	optab_table+72(%rip), %rax	# optab_table, iftmp.344
	jmp	.L578	#
.L577:
	.loc 1 2848 0 discriminator 2
	movq	optab_table+64(%rip), %rax	# optab_table, iftmp.344
.L578:
	.loc 1 2848 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.344, moptab
	.loc 1 2849 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %edx	# wider_mode, wider_mode.345
	movq	-48(%rbp), %rax	# moptab, tmp191
	movslq	%edx, %rdx	# wider_mode.345, tmp192
	salq	$4, %rdx	#, tmp193
	addq	%rdx, %rax	# tmp193, tmp194
	movl	8(%rax), %eax	# moptab_80->handlers[wider_mode.345_81].insn_code, D.17655
	cmpl	$1317, %eax	#, D.17655
	je	.L579	#,
	.loc 1 2850 0
	movl	-56(%rbp), %eax	# wider_mode, wider_mode.346
	cltq
	movl	mul_widen_cost(,%rax,4), %eax	# mul_widen_cost, D.17652
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L579	#,
	.loc 1 2852 0
	movq	-40(%rbp), %rdx	# op1, tmp196
	movl	-68(%rbp), %eax	# mode, tmp197
	movq	%rdx, %rsi	# tmp196,
	movl	%eax, %edi	# tmp197,
	call	force_reg	#
	movq	%rax, -40(%rbp)	# tmp198, op1
	.loc 1 2853 0
	jmp	.L580	#
.L579:
	.loc 1 2857 0
	movq	optab_table+32(%rip), %rax	# optab_table, tmp199
	movq	%rax, -48(%rbp)	# tmp199, moptab
	.loc 1 2858 0
	movq	optab_table+32(%rip), %rax	# optab_table, D.17656
	movl	-56(%rbp), %edx	# wider_mode, wider_mode.347
	movslq	%edx, %rdx	# wider_mode.347, tmp200
	salq	$4, %rdx	#, tmp201
	addq	%rdx, %rax	# tmp201, tmp202
	movl	8(%rax), %eax	# _87->handlers[wider_mode.347_88].insn_code, D.17655
	cmpl	$1317, %eax	#, D.17655
	je	.L581	#,
	.loc 1 2859 0
	movl	-52(%rbp), %eax	# size, tmp203
	leal	-1(%rax), %edx	#, D.17652
	movl	target_flags(%rip), %eax	# target_flags, target_flags.349
	andl	$33554432, %eax	#, D.17652
	testl	%eax, %eax	# D.17652
	je	.L582	#,
	.loc 1 2859 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.348
	jmp	.L583	#
.L582:
	.loc 1 2859 0 discriminator 2
	movl	$32, %eax	#, iftmp.348
.L583:
	.loc 1 2859 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.348, D.17652
	jge	.L581	#,
	.loc 1 2860 0 is_stmt 1
	movl	-56(%rbp), %eax	# wider_mode, wider_mode.350
	cltq
	movl	mul_cost(,%rax,4), %edx	# mul_cost, D.17652
	movl	-52(%rbp), %eax	# size, tmp205
	subl	$1, %eax	#, D.17652
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17652
	addl	%edx, %eax	# D.17652, D.17652
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L581	#,
	.loc 1 2862 0
	movq	-32(%rbp), %rax	# wide_op1, tmp207
	movq	%rax, -40(%rbp)	# tmp207, op1
	.loc 1 2863 0
	jmp	.L580	#
.L581:
	.loc 1 2867 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	je	.L584	#,
	.loc 1 2867 0 is_stmt 0 discriminator 1
	movq	optab_table+64(%rip), %rax	# optab_table, iftmp.351
	jmp	.L585	#
.L584:
	.loc 1 2867 0 discriminator 2
	movq	optab_table+72(%rip), %rax	# optab_table, iftmp.351
.L585:
	.loc 1 2867 0 discriminator 3
	movq	%rax, -48(%rbp)	# iftmp.351, moptab
	.loc 1 2868 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %edx	# wider_mode, wider_mode.352
	movq	-48(%rbp), %rax	# moptab, tmp208
	movslq	%edx, %rdx	# wider_mode.352, tmp209
	salq	$4, %rdx	#, tmp210
	addq	%rdx, %rax	# tmp210, tmp211
	movl	8(%rax), %eax	# moptab_103->handlers[wider_mode.352_104].insn_code, D.17655
	cmpl	$1317, %eax	#, D.17655
	je	.L586	#,
	.loc 1 2869 0
	movl	-52(%rbp), %eax	# size, tmp212
	leal	-1(%rax), %edx	#, D.17652
	movl	target_flags(%rip), %eax	# target_flags, target_flags.354
	andl	$33554432, %eax	#, D.17652
	testl	%eax, %eax	# D.17652
	je	.L587	#,
	.loc 1 2869 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.353
	jmp	.L588	#
.L587:
	.loc 1 2869 0 discriminator 2
	movl	$32, %eax	#, iftmp.353
.L588:
	.loc 1 2869 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.353, D.17652
	jge	.L586	#,
	.loc 1 2870 0 is_stmt 1
	movl	-56(%rbp), %eax	# wider_mode, wider_mode.355
	cltq
	movl	mul_widen_cost(,%rax,4), %edx	# mul_widen_cost, D.17652
	.loc 1 2871 0
	movl	-52(%rbp), %eax	# size, tmp214
	subl	$1, %eax	#, D.17652
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17652
	addl	%eax, %eax	# D.17652
	addl	%eax, %edx	# D.17652, D.17652
	movl	add_cost(%rip), %eax	# add_cost, add_cost.356
	sall	$2, %eax	#, D.17652
	addl	%edx, %eax	# D.17652, D.17652
	.loc 1 2870 0
	cmpl	-100(%rbp), %eax	# max_cost, D.17652
	jge	.L586	#,
.LBB52:
	.loc 1 2873 0
	movq	-40(%rbp), %rdx	# op1, tmp216
	movl	-68(%rbp), %eax	# mode, tmp217
	movq	%rdx, %rsi	# tmp216,
	movl	%eax, %edi	# tmp217,
	call	force_reg	#
	movq	%rax, -8(%rbp)	# tmp218, regop1
	.loc 1 2874 0
	cmpl	$0, -72(%rbp)	#, unsignedp
	sete	%al	#, D.17657
	movzbl	%al, %edi	# D.17657, D.17652
	movq	-8(%rbp), %rcx	# regop1, tmp219
	movq	-80(%rbp), %rdx	# op0, tmp220
	movq	-48(%rbp), %rsi	# moptab, tmp221
	movl	-56(%rbp), %eax	# wider_mode, tmp222
	movl	$2, (%rsp)	#,
	movl	%edi, %r9d	# D.17652,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp222,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp223, tem
	.loc 1 2876 0
	cmpq	$0, -24(%rbp)	#, tem
	je	.L586	#,
	.loc 1 2879 0
	movl	-52(%rbp), %eax	# size, tmp224
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17653,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17654
	movq	-24(%rbp), %rdx	# tem, tmp225
	movl	-56(%rbp), %eax	# wider_mode, tmp226
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp226,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -24(%rbp)	# tmp227, tem
	.loc 1 2881 0
	movl	-72(%rbp), %ecx	# unsignedp, tmp228
	movq	-24(%rbp), %rdx	# tem, tmp229
	movl	-56(%rbp), %esi	# wider_mode, tmp230
	movl	-68(%rbp), %eax	# mode, tmp231
	movl	%eax, %edi	# tmp231,
	call	convert_modes	#
	movq	%rax, -24(%rbp)	# tmp232, tem
	.loc 1 2883 0
	movl	-72(%rbp), %r8d	# unsignedp, tmp233
	movq	-96(%rbp), %rdi	# target, tmp234
	movq	-40(%rbp), %rcx	# op1, tmp235
	movq	-80(%rbp), %rdx	# op0, tmp236
	movq	-24(%rbp), %rsi	# tem, tmp237
	movl	-68(%rbp), %eax	# mode, tmp238
	movl	%r8d, %r9d	# tmp233,
	movq	%rdi, %r8	# tmp234,
	movl	%eax, %edi	# tmp238,
	call	expand_mult_highpart_adjust	#
	jmp	.L567	#
.L586:
.LBE52:
	.loc 1 2888 0
	movl	$0, %eax	#, D.17648
	jmp	.L567	#
.L580:
	.loc 1 2892 0
	movl	-72(%rbp), %edi	# unsignedp, tmp239
	movq	-40(%rbp), %rcx	# op1, tmp240
	movq	-80(%rbp), %rdx	# op0, tmp241
	movq	-48(%rbp), %rsi	# moptab, tmp242
	movl	-56(%rbp), %eax	# wider_mode, tmp243
	movl	$2, (%rsp)	#,
	movl	%edi, %r9d	# tmp239,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp243,
	call	expand_binop	#
	movq	%rax, -24(%rbp)	# tmp244, tem
	.loc 1 2894 0
	cmpq	$0, -24(%rbp)	#, tem
	jne	.L589	#,
	.loc 1 2895 0
	movl	$0, %eax	#, D.17648
	jmp	.L567	#
.L589:
	.loc 1 2898 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.357
	cmpl	%eax, -68(%rbp)	# word_mode.357, mode
	jne	.L590	#,
	.loc 1 2900 0
	movq	-24(%rbp), %rdx	# tem, tmp245
	movl	-68(%rbp), %eax	# mode, tmp246
	movq	%rdx, %rsi	# tmp245,
	movl	%eax, %edi	# tmp246,
	call	gen_highpart	#
	jmp	.L567	#
.L590:
	.loc 1 2904 0
	movl	-52(%rbp), %eax	# size, tmp247
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17653,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17654
	movq	-24(%rbp), %rdx	# tem, tmp248
	movl	-56(%rbp), %eax	# wider_mode, tmp249
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp249,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -24(%rbp)	# tmp250, tem
	.loc 1 2906 0
	movl	-72(%rbp), %ecx	# unsignedp, tmp251
	movq	-24(%rbp), %rdx	# tem, tmp252
	movl	-56(%rbp), %esi	# wider_mode, tmp253
	movl	-68(%rbp), %eax	# mode, tmp254
	movl	%eax, %edi	# tmp254,
	call	convert_modes	#
.L567:
	.loc 1 2908 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	expand_mult_highpart, .-expand_mult_highpart
	.globl	expand_divmod
	.type	expand_divmod, @function
expand_divmod:
.LFB23:
	.loc 1 2957 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$816, %rsp	#,
	movl	%edi, -756(%rbp)	# rem_flag, rem_flag
	movl	%esi, -760(%rbp)	# code, code
	movl	%edx, -764(%rbp)	# mode, mode
	movq	%rcx, -776(%rbp)	# op0, op0
	movq	%r8, -784(%rbp)	# op1, op1
	movq	%r9, -792(%rbp)	# target, target
	.loc 1 2960 0
	movq	$0, -688(%rbp)	#, quotient
	movq	$0, -680(%rbp)	#, remainder
	.loc 1 2969 0
	movq	-784(%rbp), %rax	# op1, tmp531
	movzwl	(%rax), %eax	# op1_124(D)->code, D.17659
	cmpw	$54, %ax	#, D.17659
	sete	%al	#, D.17660
	movzbl	%al, %eax	# D.17660, tmp532
	movl	%eax, -736(%rbp)	# tmp532, op1_is_constant
	.loc 1 2971 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L592	#,
	.loc 1 2971 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp533
	movq	8(%rax), %rdx	# op1_124(D)->fld[0].rtwint, D.17661
	movq	-784(%rbp), %rax	# op1, tmp534
	movq	8(%rax), %rax	# op1_124(D)->fld[0].rtwint, D.17661
	subq	$1, %rax	#, D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	je	.L593	#,
	.loc 1 2972 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	jne	.L592	#,
	.loc 1 2972 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp535
	movq	8(%rax), %rax	# op1_124(D)->fld[0].rtwint, D.17661
	negq	%rax	# D.17661
	movq	%rax, %rdx	# D.17661, D.17661
	movq	-784(%rbp), %rax	# op1, tmp536
	movq	8(%rax), %rax	# op1_124(D)->fld[0].rtwint, D.17661
	notq	%rax	# D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L592	#,
.L593:
	.loc 1 2971 0 is_stmt 1 discriminator 3
	movl	$1, %eax	#, iftmp.358
	jmp	.L594	#
.L592:
	.loc 1 2971 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.358
.L594:
	.loc 1 2970 0 is_stmt 1
	movl	%eax, -732(%rbp)	# iftmp.358, op1_is_pow2
	.loc 1 3006 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17662
	cmpq	-784(%rbp), %rax	# op1, D.17662
	jne	.L595	#,
	.loc 1 3007 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L596	#,
	.loc 1 3007 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.359
	jmp	.L597	#
.L596:
	.loc 1 3007 0 discriminator 2
	movq	-776(%rbp), %rax	# op0, iftmp.359
.L597:
	.loc 1 3007 0 discriminator 3
	jmp	.L598	#
.L595:
	.loc 1 3011 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	jne	.L599	#,
	.loc 1 3011 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.17662
	cmpq	-784(%rbp), %rax	# op1, D.17662
	jne	.L599	#,
	.loc 1 3013 0 is_stmt 1
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L600	#,
	.loc 1 3014 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17658
	jmp	.L598	#
.L600:
	.loc 1 3015 0
	movl	flag_trapv(%rip), %eax	# flag_trapv, flag_trapv.361
	testl	%eax, %eax	# flag_trapv.361
	je	.L601	#,
	.loc 1 3015 0 is_stmt 0 discriminator 1
	movl	-764(%rbp), %eax	# mode, mode.362
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17663
	cmpl	$1, %eax	#, D.17663
	jne	.L601	#,
	movq	optab_table+264(%rip), %rax	# optab_table, iftmp.360
	jmp	.L602	#
.L601:
	.loc 1 3015 0 discriminator 2
	movq	optab_table+256(%rip), %rax	# optab_table, iftmp.360
.L602:
	.loc 1 3015 0 discriminator 3
	movq	-792(%rbp), %rcx	# target, tmp538
	movq	-776(%rbp), %rdx	# op0, tmp539
	movl	-764(%rbp), %edi	# mode, tmp540
	movl	$0, %r8d	#,
	movq	%rax, %rsi	# iftmp.360,
	call	expand_unop	#
	jmp	.L598	#
.L599:
	.loc 1 3019 0 is_stmt 1
	cmpq	$0, -792(%rbp)	#, target
	je	.L603	#,
	.loc 1 3023 0
	movq	-792(%rbp), %rax	# target, tmp541
	movzwl	(%rax), %eax	# target_155(D)->code, D.17659
	cmpw	$61, %ax	#, D.17659
	jne	.L604	#,
	.loc 1 3023 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp542
	movzbl	3(%rax), %eax	# *target_155(D), D.17664
	andl	$64, %eax	#, D.17664
	testb	%al, %al	# D.17664
	jne	.L605	#,
.L604:
	.loc 1 3025 0 is_stmt 1
	cmpl	$0, -756(%rbp)	#, rem_flag
	jne	.L606	#,
	.loc 1 3025 0 is_stmt 0 discriminator 1
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L607	#,
.L606:
	.loc 1 3026 0 is_stmt 1
	movq	-776(%rbp), %rdx	# op0, tmp543
	movq	-792(%rbp), %rax	# target, tmp544
	movq	%rdx, %rsi	# tmp543,
	movq	%rax, %rdi	# tmp544,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17665
	jne	.L605	#,
	.loc 1 3027 0
	movq	-776(%rbp), %rax	# op0, tmp545
	movzwl	(%rax), %eax	# op0_144(D)->code, D.17659
	cmpw	$66, %ax	#, D.17659
	jne	.L607	#,
	.loc 1 3027 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp546
	movzwl	(%rax), %eax	# target_155(D)->code, D.17659
	cmpw	$66, %ax	#, D.17659
	je	.L605	#,
.L607:
	.loc 1 3028 0 is_stmt 1
	movq	-784(%rbp), %rdx	# op1, tmp547
	movq	-792(%rbp), %rax	# target, tmp548
	movq	%rdx, %rsi	# tmp547,
	movq	%rax, %rdi	# tmp548,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17665
	jne	.L605	#,
	.loc 1 3029 0
	movq	-784(%rbp), %rax	# op1, tmp549
	movzwl	(%rax), %eax	# op1_124(D)->code, D.17659
	cmpw	$66, %ax	#, D.17659
	jne	.L603	#,
	.loc 1 3029 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp550
	movzwl	(%rax), %eax	# target_155(D)->code, D.17659
	cmpw	$66, %ax	#, D.17659
	jne	.L603	#,
.L605:
	.loc 1 3030 0 is_stmt 1
	movq	$0, -792(%rbp)	#, target
.L603:
	.loc 1 3054 0
	cmpl	$0, -732(%rbp)	#, op1_is_pow2
	je	.L608	#,
	.loc 1 3052 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17662
	cmpq	-784(%rbp), %rax	# op1, D.17662
	je	.L608	#,
	.loc 1 3053 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L609	#,
	.loc 1 3053 0 is_stmt 0 discriminator 1
	movq	optab_table+176(%rip), %rax	# optab_table, iftmp.364
	jmp	.L610	#
.L609:
	.loc 1 3053 0 discriminator 2
	movq	optab_table+184(%rip), %rax	# optab_table, iftmp.364
.L610:
	.loc 1 3054 0 is_stmt 1
	jmp	.L611	#
.L608:
	.loc 1 3054 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L612	#,
	movq	optab_table+104(%rip), %rax	# optab_table, iftmp.365
	jmp	.L611	#
.L612:
	.loc 1 3054 0 discriminator 2
	movq	optab_table+80(%rip), %rax	# optab_table, iftmp.365
.L611:
	.loc 1 3052 0 is_stmt 1
	movq	%rax, -656(%rbp)	# iftmp.363, optab1
	.loc 1 3057 0
	cmpl	$0, -732(%rbp)	#, op1_is_pow2
	je	.L614	#,
	.loc 1 3055 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17662
	cmpq	-784(%rbp), %rax	# op1, D.17662
	jne	.L615	#,
.L614:
	.loc 1 3057 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L616	#,
	movq	optab_table+112(%rip), %rax	# optab_table, iftmp.367
	jmp	.L617	#
.L616:
	.loc 1 3057 0 is_stmt 0 discriminator 2
	movq	optab_table+96(%rip), %rax	# optab_table, iftmp.367
.L617:
	.loc 1 3057 0 discriminator 3
	jmp	.L618	#
.L615:
	.loc 1 3057 0
	movq	-656(%rbp), %rax	# optab1, iftmp.366
.L618:
	.loc 1 3055 0 is_stmt 1
	movq	%rax, -648(%rbp)	# iftmp.366, optab2
	.loc 1 3059 0
	movl	-764(%rbp), %eax	# mode, tmp551
	movl	%eax, -740(%rbp)	# tmp551, compute_mode
	jmp	.L619	#
.L621:
	.loc 1 3061 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.368
	movq	-656(%rbp), %rax	# optab1, tmp552
	movslq	%edx, %rdx	# compute_mode.368, tmp553
	salq	$4, %rdx	#, tmp554
	addq	%rdx, %rax	# tmp554, tmp555
	movl	8(%rax), %eax	# optab1_174->handlers[compute_mode.368_182].insn_code, D.17666
	cmpl	$1317, %eax	#, D.17666
	jne	.L620	#,
	.loc 1 3062 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.369
	movq	-648(%rbp), %rax	# optab2, tmp556
	movslq	%edx, %rdx	# compute_mode.369, tmp557
	salq	$4, %rdx	#, tmp558
	addq	%rdx, %rax	# tmp558, tmp559
	movl	8(%rax), %eax	# optab2_180->handlers[compute_mode.369_184].insn_code, D.17666
	cmpl	$1317, %eax	#, D.17666
	jne	.L620	#,
	.loc 1 3060 0
	movl	-740(%rbp), %eax	# compute_mode, compute_mode.370
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17664
	movzbl	%al, %eax	# D.17664, tmp561
	movl	%eax, -740(%rbp)	# tmp561, compute_mode
.L619:
	.loc 1 3059 0 discriminator 1
	cmpl	$0, -740(%rbp)	#, compute_mode
	jne	.L621	#,
.L620:
	.loc 1 3065 0
	cmpl	$0, -740(%rbp)	#, compute_mode
	jne	.L622	#,
	.loc 1 3066 0
	movl	-764(%rbp), %eax	# mode, tmp562
	movl	%eax, -740(%rbp)	# tmp562, compute_mode
	jmp	.L623	#
.L624:
	.loc 1 3068 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.371
	movq	-656(%rbp), %rax	# optab1, tmp563
	movslq	%edx, %rdx	# compute_mode.371, tmp564
	salq	$4, %rdx	#, tmp565
	addq	%rdx, %rax	# tmp565, tmp566
	addq	$16, %rax	#, tmp567
	movq	(%rax), %rax	# optab1_174->handlers[compute_mode.371_190].libfunc, D.17662
	testq	%rax, %rax	# D.17662
	jne	.L622	#,
	.loc 1 3069 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.372
	movq	-648(%rbp), %rax	# optab2, tmp568
	movslq	%edx, %rdx	# compute_mode.372, tmp569
	salq	$4, %rdx	#, tmp570
	addq	%rdx, %rax	# tmp570, tmp571
	addq	$16, %rax	#, tmp572
	movq	(%rax), %rax	# optab2_180->handlers[compute_mode.372_192].libfunc, D.17662
	testq	%rax, %rax	# D.17662
	jne	.L622	#,
	.loc 1 3067 0
	movl	-740(%rbp), %eax	# compute_mode, compute_mode.373
	cltq
	movzbl	mode_wider_mode(%rax), %eax	# mode_wider_mode, D.17664
	movzbl	%al, %eax	# D.17664, tmp574
	movl	%eax, -740(%rbp)	# tmp574, compute_mode
.L623:
	.loc 1 3066 0 discriminator 1
	cmpl	$0, -740(%rbp)	#, compute_mode
	jne	.L624	#,
.L622:
	.loc 1 3074 0
	cmpl	$0, -740(%rbp)	#, compute_mode
	jne	.L625	#,
	.loc 1 3075 0
	movl	-764(%rbp), %eax	# mode, tmp575
	movl	%eax, -740(%rbp)	# tmp575, compute_mode
.L625:
	.loc 1 3077 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L626	#,
	.loc 1 3077 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp576
	movzbl	2(%rax), %eax	# target_13->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	jne	.L626	#,
	.loc 1 3078 0 is_stmt 1
	movq	-792(%rbp), %rax	# target, tmp577
	movq	%rax, -696(%rbp)	# tmp577, tquotient
	jmp	.L627	#
.L626:
	.loc 1 3080 0
	movl	-740(%rbp), %eax	# compute_mode, tmp578
	movl	%eax, %edi	# tmp578,
	call	gen_reg_rtx	#
	movq	%rax, -696(%rbp)	# tmp579, tquotient
.L627:
	.loc 1 3082 0
	movl	-740(%rbp), %eax	# compute_mode, compute_mode.374
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17659
	movzwl	%ax, %eax	# D.17659, tmp581
	movl	%eax, -724(%rbp)	# tmp581, size
	.loc 1 3093 0
	movl	-740(%rbp), %eax	# compute_mode, compute_mode.375
	cltq
	movl	div_cost(,%rax,4), %edx	# div_cost, D.17665
	.loc 1 3096 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L628	#,
	.loc 1 3094 0
	movq	last_div_const.13198(%rip), %rax	# last_div_const, last_div_const.377
	testq	%rax, %rax	# last_div_const.377
	je	.L629	#,
	.loc 1 3094 0 is_stmt 0 discriminator 1
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L629	#,
	.loc 1 3095 0 is_stmt 1 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp583
	movq	8(%rax), %rcx	# op1_124(D)->fld[0].rtwint, D.17661
	movq	last_div_const.13198(%rip), %rax	# last_div_const, last_div_const.378
	.loc 1 3094 0 discriminator 1
	cmpq	%rax, %rcx	# last_div_const.378, D.17661
	je	.L628	#,
.L629:
	.loc 1 3096 0
	movl	-740(%rbp), %eax	# compute_mode, compute_mode.379
	cltq
	movl	mul_cost(,%rax,4), %ecx	# mul_cost, D.17665
	movl	add_cost(%rip), %eax	# add_cost, add_cost.380
	addl	%ecx, %eax	# D.17665, iftmp.376
	jmp	.L630	#
.L628:
	.loc 1 3096 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.376
.L630:
	.loc 1 3093 0 is_stmt 1
	subl	%eax, %edx	# iftmp.376, tmp585
	movl	%edx, %eax	# tmp585, tmp585
	movl	%eax, -720(%rbp)	# tmp585, max_cost
	.loc 1 3098 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	jne	.L631	#,
	.loc 1 3098 0 is_stmt 0 discriminator 1
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L631	#,
	movq	-784(%rbp), %rax	# op1, tmp586
	movq	8(%rax), %rax	# op1_124(D)->fld[0].rtwint, iftmp.381
	jmp	.L632	#
.L631:
	.loc 1 3098 0 discriminator 2
	movl	$0, %eax	#, iftmp.381
.L632:
	.loc 1 3098 0 discriminator 3
	movq	%rax, last_div_const.13198(%rip)	# iftmp.381, last_div_const
	.loc 1 3101 0 is_stmt 1 discriminator 3
	movl	-740(%rbp), %eax	# compute_mode, tmp587
	cmpl	-764(%rbp), %eax	# mode, tmp587
	je	.L633	#,
	.loc 1 3103 0
	movq	-776(%rbp), %rdx	# op0, tmp588
	movl	-764(%rbp), %esi	# mode, tmp589
	movl	-740(%rbp), %eax	# compute_mode, tmp590
	movl	16(%rbp), %ecx	# unsignedp,
	movl	%eax, %edi	# tmp590,
	call	convert_modes	#
	movq	%rax, -776(%rbp)	# tmp591, op0
	.loc 1 3104 0
	movq	-784(%rbp), %rdx	# op1, tmp592
	movl	-764(%rbp), %esi	# mode, tmp593
	movl	-740(%rbp), %eax	# compute_mode, tmp594
	movl	16(%rbp), %ecx	# unsignedp,
	movl	%eax, %edi	# tmp594,
	call	convert_modes	#
	movq	%rax, -784(%rbp)	# tmp595, op1
	.loc 1 3108 0
	movq	-784(%rbp), %rax	# op1, tmp596
	movzwl	(%rax), %eax	# op1_219->code, D.17659
	cmpw	$54, %ax	#, D.17659
	sete	%al	#, D.17660
	movzbl	%al, %eax	# D.17660, tmp597
	movl	%eax, -736(%rbp)	# tmp597, op1_is_constant
	.loc 1 3110 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L634	#,
	.loc 1 3110 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp598
	movq	8(%rax), %rdx	# op1_219->fld[0].rtwint, D.17661
	movq	-784(%rbp), %rax	# op1, tmp599
	movq	8(%rax), %rax	# op1_219->fld[0].rtwint, D.17661
	subq	$1, %rax	#, D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	je	.L635	#,
	.loc 1 3111 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	jne	.L634	#,
	.loc 1 3112 0
	movq	-784(%rbp), %rax	# op1, tmp600
	movq	8(%rax), %rax	# op1_219->fld[0].rtwint, D.17661
	negq	%rax	# D.17661
	movq	%rax, %rdx	# D.17661, D.17661
	movq	-784(%rbp), %rax	# op1, tmp601
	movq	8(%rax), %rax	# op1_219->fld[0].rtwint, D.17661
	notq	%rax	# D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L634	#,
.L635:
	.loc 1 3110 0 discriminator 3
	movl	$1, %eax	#, iftmp.382
	jmp	.L636	#
.L634:
	.loc 1 3110 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.382
.L636:
	.loc 1 3109 0 is_stmt 1
	movl	%eax, -732(%rbp)	# iftmp.382, op1_is_pow2
.L633:
	.loc 1 3117 0
	movq	-776(%rbp), %rax	# op0, tmp602
	movzwl	(%rax), %eax	# op0_4->code, D.17659
	cmpw	$66, %ax	#, D.17659
	jne	.L637	#,
	.loc 1 3117 0 is_stmt 0 discriminator 1
	movq	-776(%rbp), %rax	# op0, tmp603
	movzbl	3(%rax), %eax	# *op0_4, D.17664
	andl	$8, %eax	#, D.17664
	testb	%al, %al	# D.17664
	je	.L637	#,
	.loc 1 3118 0 is_stmt 1
	movq	-776(%rbp), %rdx	# op0, tmp604
	movl	-740(%rbp), %eax	# compute_mode, tmp605
	movq	%rdx, %rsi	# tmp604,
	movl	%eax, %edi	# tmp605,
	call	force_reg	#
	movq	%rax, -776(%rbp)	# tmp606, op0
.L637:
	.loc 1 3119 0
	movq	-784(%rbp), %rax	# op1, tmp607
	movzwl	(%rax), %eax	# op1_7->code, D.17659
	cmpw	$66, %ax	#, D.17659
	jne	.L638	#,
	.loc 1 3119 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp608
	movzbl	3(%rax), %eax	# *op1_7, D.17664
	andl	$8, %eax	#, D.17664
	testb	%al, %al	# D.17664
	je	.L638	#,
	.loc 1 3120 0 is_stmt 1
	movq	-784(%rbp), %rdx	# op1, tmp609
	movl	-740(%rbp), %eax	# compute_mode, tmp610
	movq	%rdx, %rsi	# tmp609,
	movl	%eax, %edi	# tmp610,
	call	force_reg	#
	movq	%rax, -784(%rbp)	# tmp611, op1
.L638:
	.loc 1 3124 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	jne	.L639	#,
	.loc 1 3124 0 is_stmt 0 discriminator 1
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L640	#,
.L639:
	.loc 1 3125 0 is_stmt 1
	movq	-776(%rbp), %rdx	# op0, tmp612
	movl	-740(%rbp), %eax	# compute_mode, tmp613
	movq	%rdx, %rsi	# tmp612,
	movl	%eax, %edi	# tmp613,
	call	force_reg	#
	movq	%rax, -776(%rbp)	# tmp614, op0
.L640:
	.loc 1 3127 0
	call	get_last_insn	#
	movq	%rax, -640(%rbp)	# tmp615, last
	.loc 1 3130 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L641	#,
	.loc 1 3132 0
	cmpl	$64, -760(%rbp)	#, code
	jne	.L642	#,
	.loc 1 3133 0
	movl	$62, -760(%rbp)	#, code
.L642:
	.loc 1 3134 0
	cmpl	$68, -760(%rbp)	#, code
	jne	.L643	#,
	.loc 1 3135 0
	movl	$66, -760(%rbp)	#, code
.L643:
	.loc 1 3136 0
	cmpl	$71, -760(%rbp)	#, code
	jne	.L641	#,
	.loc 1 3136 0 is_stmt 0 discriminator 1
	cmpl	$0, -732(%rbp)	#, op1_is_pow2
	je	.L641	#,
	.loc 1 3137 0 is_stmt 1
	movl	$62, -760(%rbp)	#, code
.L641:
	.loc 1 3140 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17662
	cmpq	-784(%rbp), %rax	# op1, D.17662
	je	.L644	#,
	.loc 1 3141 0
	movl	-760(%rbp), %eax	# code, tmp617
	subl	$62, %eax	#, tmp616
	cmpl	$9, %eax	#, tmp616
	ja	.L645	#,
	movl	%eax, %eax	# tmp616, tmp618
	movq	.L647(,%rax,8), %rax	#, tmp619
	jmp	*%rax	# tmp619
	.section	.rodata
	.align 8
	.align 4
.L647:
	.quad	.L646
	.quad	.L648
	.quad	.L649
	.quad	.L650
	.quad	.L646
	.quad	.L648
	.quad	.L649
	.quad	.L650
	.quad	.L645
	.quad	.L651
	.text
.L646:
	.loc 1 3145 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L652	#,
	.loc 1 3147 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L653	#,
.LBB53:
	.loc 1 3152 0
	movq	-784(%rbp), %rax	# op1, tmp620
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	movq	%rax, -632(%rbp)	# D.17661, d
	.loc 1 3154 0
	movq	-632(%rbp), %rax	# d, tmp621
	subq	$1, %rax	#, D.17668
	andq	-632(%rbp), %rax	# d, D.17668
	testq	%rax, %rax	# D.17668
	jne	.L654	#,
	.loc 1 3156 0
	movq	-632(%rbp), %rax	# d, tmp622
	movq	%rax, %rdi	# tmp622,
	call	floor_log2_wide	#
	movl	%eax, -728(%rbp)	# tmp623, pre_shift
	.loc 1 3157 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L655	#,
	.loc 1 3161 0
	movl	-728(%rbp), %eax	# pre_shift, tmp624
	movl	$1, %edx	#, tmp625
	movl	%eax, %ecx	# tmp624, tmp1411
	salq	%cl, %rdx	# tmp1411, D.17661
	movq	%rdx, %rax	# D.17661, D.17661
	.loc 1 3160 0
	subq	$1, %rax	#, D.17661
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17662
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp626
	movq	-776(%rbp), %rdx	# op0, tmp627
	movl	-740(%rbp), %eax	# compute_mode, tmp628
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp626,
	movl	%eax, %edi	# tmp628,
	call	expand_binop	#
	movq	%rax, -680(%rbp)	# tmp629, remainder
	.loc 1 3164 0
	cmpq	$0, -680(%rbp)	#, remainder
	je	.L655	#,
	.loc 1 3165 0
	movq	-680(%rbp), %rdx	# remainder, tmp630
	movl	-764(%rbp), %eax	# mode, tmp631
	movq	%rdx, %rsi	# tmp630,
	movl	%eax, %edi	# tmp631,
	call	gen_lowpart	#
	jmp	.L598	#
.L655:
	.loc 1 3167 0
	movl	-728(%rbp), %eax	# pre_shift, tmp632
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp633
	movq	-776(%rbp), %rdx	# op0, tmp634
	movl	-740(%rbp), %eax	# compute_mode, tmp635
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp633,
	movl	%eax, %esi	# tmp635,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp636, quotient
	jmp	.L656	#
.L654:
	.loc 1 3171 0
	cmpl	$64, -724(%rbp)	#, size
	jg	.L644	#,
	.loc 1 3173 0
	movl	-724(%rbp), %eax	# size, tmp637
	subl	$1, %eax	#, D.17665
	movl	$1, %edx	#, tmp638
	movl	%eax, %ecx	# D.17665, tmp1413
	salq	%cl, %rdx	# tmp1413, D.17668
	movq	%rdx, %rax	# D.17668, D.17668
	cmpq	-632(%rbp), %rax	# d, D.17668
	ja	.L658	#,
	.loc 1 3177 0
	movl	-740(%rbp), %esi	# compute_mode, tmp639
	movq	-784(%rbp), %rcx	# op1, tmp640
	movq	-776(%rbp), %rdx	# op0, tmp641
	movq	-696(%rbp), %rax	# tquotient, tmp642
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	%esi, %r8d	# tmp639,
	movl	$108, %esi	#,
	movq	%rax, %rdi	# tmp642,
	call	emit_store_flag	#
	movq	%rax, -688(%rbp)	# tmp643, quotient
	.loc 1 3179 0
	cmpq	$0, -688(%rbp)	#, quotient
	jne	.L656	#,
	.loc 1 3180 0
	jmp	.L811	#
.L658:
	.loc 1 3187 0
	leaq	-744(%rbp), %r8	#, tmp644
	leaq	-748(%rbp), %rdi	#, tmp645
	leaq	-704(%rbp), %rcx	#, tmp646
	movl	-724(%rbp), %edx	# size, tmp647
	movl	-724(%rbp), %esi	# size, tmp648
	movq	-632(%rbp), %rax	# d, tmp649
	movq	%r8, %r9	# tmp644,
	movq	%rdi, %r8	# tmp645,
	movq	%rax, %rdi	# tmp649,
	call	choose_multiplier	#
	movq	%rax, -672(%rbp)	# tmp650, mh
	.loc 1 3193 0
	cmpq	$0, -672(%rbp)	#, mh
	je	.L661	#,
	.loc 1 3193 0 is_stmt 0 discriminator 1
	movq	-632(%rbp), %rax	# d, tmp651
	andl	$1, %eax	#, D.17668
	testq	%rax, %rax	# D.17668
	jne	.L661	#,
	.loc 1 3195 0 is_stmt 1
	movq	-632(%rbp), %rax	# d, tmp652
	negq	%rax	# D.17668
	andq	-632(%rbp), %rax	# d, D.17668
	movq	%rax, %rdi	# D.17668,
	call	floor_log2_wide	#
	movl	%eax, -728(%rbp)	# tmp653, pre_shift
	.loc 1 3196 0
	movl	-728(%rbp), %eax	# pre_shift, tmp654
	movl	-724(%rbp), %edx	# size, tmp655
	movl	%edx, %esi	# tmp655, D.17665
	subl	%eax, %esi	# tmp654, D.17665
	movl	-728(%rbp), %eax	# pre_shift, tmp656
	movq	-632(%rbp), %rdx	# d, tmp657
	movq	%rdx, %rdi	# tmp657, D.17668
	movl	%eax, %ecx	# tmp656, tmp1416
	shrq	%cl, %rdi	# tmp1416, D.17668
	leaq	-744(%rbp), %r8	#, tmp658
	leaq	-748(%rbp), %rcx	#, tmp659
	leaq	-704(%rbp), %rdx	#, tmp660
	movl	-724(%rbp), %eax	# size, tmp661
	movq	%r8, %r9	# tmp658,
	movq	%rcx, %r8	# tmp659,
	movq	%rdx, %rcx	# tmp660,
	movl	%esi, %edx	# D.17665,
	movl	%eax, %esi	# tmp661,
	call	choose_multiplier	#
	movq	%rax, -672(%rbp)	# tmp662, mh
	.loc 1 3199 0
	cmpq	$0, -672(%rbp)	#, mh
	je	.L662	#,
	.loc 1 3200 0
	movl	$__FUNCTION__.13214, %edx	#,
	movl	$3200, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L662:
	.loc 1 3199 0 discriminator 1
	jmp	.L663	#
.L661:
	.loc 1 3203 0
	movl	$0, -728(%rbp)	#, pre_shift
.L663:
	.loc 1 3205 0
	cmpq	$0, -672(%rbp)	#, mh
	je	.L664	#,
.LBB54:
	.loc 1 3209 0
	movl	-748(%rbp), %eax	# post_shift, post_shift.383
	leal	-1(%rax), %edx	#, D.17665
	movl	target_flags(%rip), %eax	# target_flags, target_flags.385
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L665	#,
	.loc 1 3209 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.384
	jmp	.L666	#
.L665:
	.loc 1 3209 0 discriminator 2
	movl	$32, %eax	#, iftmp.384
.L666:
	.loc 1 3209 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.384, D.17665
	jl	.L667	#,
	.loc 1 3210 0 is_stmt 1
	jmp	.L652	#
.L667:
	.loc 1 3212 0
	movl	-748(%rbp), %eax	# post_shift, post_shift.386
	subl	$1, %eax	#, D.17665
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17665
	.loc 1 3213 0
	movl	shift_cost+4(%rip), %eax	# shift_cost, D.17665
	addl	%eax, %edx	# D.17665, D.17665
	movl	add_cost(%rip), %eax	# add_cost, add_cost.387
	addl	%eax, %eax	# D.17665
	.loc 1 3212 0
	addl	%edx, %eax	# D.17665, tmp664
	movl	%eax, -716(%rbp)	# tmp664, extra_cost
	.loc 1 3214 0
	movl	-716(%rbp), %eax	# extra_cost, tmp665
	movl	-720(%rbp), %edx	# max_cost, tmp666
	movl	%edx, %ecx	# tmp666, D.17665
	subl	%eax, %ecx	# tmp665, D.17665
	movq	-704(%rbp), %rdx	# ml, ml.388
	movq	-776(%rbp), %rsi	# op0, tmp667
	movl	-740(%rbp), %eax	# compute_mode, tmp668
	movl	%ecx, %r9d	# D.17665,
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp668,
	call	expand_mult_highpart	#
	movq	%rax, -624(%rbp)	# tmp669, t1
	.loc 1 3217 0
	cmpq	$0, -624(%rbp)	#, t1
	jne	.L668	#,
	.loc 1 3218 0
	jmp	.L652	#
.L668:
	.loc 1 3219 0
	movq	-624(%rbp), %rcx	# t1, tmp670
	movq	-776(%rbp), %rdx	# op0, tmp671
	movl	-740(%rbp), %eax	# compute_mode, tmp672
	movl	%eax, %esi	# tmp672,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -616(%rbp)	# tmp673, t2
	.loc 1 3222 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-616(%rbp), %rdx	# t2, tmp674
	movl	-740(%rbp), %eax	# compute_mode, tmp675
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp675,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -608(%rbp)	# tmp676, t3
	.loc 1 3224 0
	movq	-608(%rbp), %rcx	# t3, tmp677
	movq	-624(%rbp), %rdx	# t1, tmp678
	movl	-740(%rbp), %eax	# compute_mode, tmp679
	movl	%eax, %esi	# tmp679,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -600(%rbp)	# tmp680, t4
	.loc 1 3229 0
	movl	-748(%rbp), %eax	# post_shift, post_shift.389
	subl	$1, %eax	#, D.17665
	.loc 1 3228 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp681
	movq	-600(%rbp), %rdx	# t4, tmp682
	movl	-740(%rbp), %eax	# compute_mode, tmp683
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp681,
	movl	%eax, %esi	# tmp683,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp684, quotient
.LBE54:
	jmp	.L656	#
.L664:
.LBB55:
	.loc 1 3236 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.391
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L669	#,
	.loc 1 3236 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.390
	jmp	.L670	#
.L669:
	.loc 1 3236 0 discriminator 2
	movl	$32, %eax	#, iftmp.390
.L670:
	.loc 1 3236 0 discriminator 3
	cmpl	-728(%rbp), %eax	# pre_shift, iftmp.390
	jle	.L811	#,
	.loc 1 3237 0 is_stmt 1
	movl	target_flags(%rip), %eax	# target_flags, target_flags.393
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L671	#,
	.loc 1 3237 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.392
	jmp	.L672	#
.L671:
	.loc 1 3237 0 discriminator 2
	movl	$32, %eax	#, iftmp.392
.L672:
	.loc 1 3237 0 discriminator 3
	movl	-748(%rbp), %edx	# post_shift, post_shift.394
	cmpl	%edx, %eax	# post_shift.394, iftmp.392
	jle	.L811	#,
	.loc 1 3240 0 is_stmt 1
	movl	-728(%rbp), %eax	# pre_shift, tmp685
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp686
	movl	-740(%rbp), %eax	# compute_mode, tmp687
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp687,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -592(%rbp)	# tmp688, t1
	.loc 1 3243 0
	movl	-728(%rbp), %eax	# pre_shift, tmp690
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17665
	.loc 1 3244 0
	movl	-748(%rbp), %eax	# post_shift, post_shift.395
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17665
	.loc 1 3243 0
	addl	%edx, %eax	# D.17665, tmp692
	movl	%eax, -716(%rbp)	# tmp692, extra_cost
	.loc 1 3245 0
	movl	-716(%rbp), %eax	# extra_cost, tmp693
	movl	-720(%rbp), %edx	# max_cost, tmp694
	movl	%edx, %ecx	# tmp694, D.17665
	subl	%eax, %ecx	# tmp693, D.17665
	movq	-704(%rbp), %rdx	# ml, ml.396
	movq	-592(%rbp), %rsi	# t1, tmp695
	movl	-740(%rbp), %eax	# compute_mode, tmp696
	movl	%ecx, %r9d	# D.17665,
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp696,
	call	expand_mult_highpart	#
	movq	%rax, -584(%rbp)	# tmp697, t2
	.loc 1 3248 0
	cmpq	$0, -584(%rbp)	#, t2
	jne	.L673	#,
	.loc 1 3249 0
	nop
	jmp	.L652	#
.L673:
	.loc 1 3251 0
	movl	-748(%rbp), %eax	# post_shift, post_shift.397
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp698
	movq	-584(%rbp), %rdx	# t2, tmp699
	movl	-740(%rbp), %eax	# compute_mode, tmp700
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp698,
	movl	%eax, %esi	# tmp700,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp701, quotient
.L656:
.LBE55:
	.loc 1 3260 0
	call	get_last_insn	#
	movq	%rax, -576(%rbp)	# tmp702, insn
	.loc 1 3261 0
	movq	-576(%rbp), %rax	# insn, tmp703
	cmpq	-640(%rbp), %rax	# last, tmp703
	je	.L674	#,
	.loc 1 3262 0
	movq	-576(%rbp), %rax	# insn, tmp704
	movzwl	(%rax), %eax	# insn_327->code, D.17659
	movzwl	%ax, %eax	# D.17659, D.17665
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17671
	cmpb	$105, %al	#, D.17671
	jne	.L675	#,
	.loc 1 3262 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rax	# insn, tmp706
	movq	32(%rax), %rax	# insn_327->fld[3].rtx, D.17662
	movzwl	(%rax), %eax	# _331->code, D.17659
	cmpw	$47, %ax	#, D.17659
	jne	.L676	#,
	.loc 1 3262 0 discriminator 3
	movq	-576(%rbp), %rax	# insn, tmp707
	movq	32(%rax), %rax	# insn_327->fld[3].rtx, iftmp.399
	jmp	.L678	#
.L676:
	.loc 1 3262 0 discriminator 4
	movq	-576(%rbp), %rax	# insn, tmp708
	movq	32(%rax), %rdx	# insn_327->fld[3].rtx, D.17662
	movq	-576(%rbp), %rax	# insn, tmp709
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp709,
	call	single_set_2	#
	jmp	.L678	#
.L675:
	.loc 1 3262 0 discriminator 2
	movl	$0, %eax	#, iftmp.398
.L678:
	.loc 1 3262 0 discriminator 5
	movq	%rax, -568(%rbp)	# iftmp.398, set
	cmpq	$0, -568(%rbp)	#, set
	je	.L674	#,
	.loc 1 3263 0 is_stmt 1
	movq	-568(%rbp), %rax	# set, tmp710
	movq	8(%rax), %rax	# set_338->fld[0].rtx, D.17662
	cmpq	-688(%rbp), %rax	# quotient, D.17662
	jne	.L674	#,
	.loc 1 3264 0
	movq	-784(%rbp), %rcx	# op1, tmp711
	movq	-776(%rbp), %rdx	# op0, tmp712
	movl	-740(%rbp), %eax	# compute_mode, tmp713
	movl	%eax, %esi	# tmp713,
	movl	$81, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17662
	movq	-576(%rbp), %rax	# insn, tmp714
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp714,
	call	set_unique_reg_note	#
.LBE53:
	jmp	.L679	#
.L674:
	jmp	.L679	#
.L653:
.LBB56:
	.loc 1 3272 0
	movq	-784(%rbp), %rax	# op1, tmp715
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, tmp716
	movq	%rax, -664(%rbp)	# tmp716, d
	.loc 1 3273 0
	movq	-664(%rbp), %rax	# d, tmp718
	cqto
	movq	%rdx, %rax	# tmp717, D.17661
	xorq	-664(%rbp), %rax	# d, D.17661
	subq	%rdx, %rax	# tmp717, D.17661
	movq	%rax, -560(%rbp)	# D.17661, abs_d
	.loc 1 3276 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L680	#,
	.loc 1 3276 0 is_stmt 0 discriminator 1
	cmpq	$0, -664(%rbp)	#, d
	jns	.L680	#,
	.loc 1 3278 0 is_stmt 1
	movq	-560(%rbp), %rax	# abs_d, tmp719
	movq	%rax, -664(%rbp)	# tmp719, d
	.loc 1 3279 0
	movq	-560(%rbp), %rax	# abs_d, abs_d.400
	movl	-740(%rbp), %edx	# compute_mode, tmp720
	movl	%edx, %esi	# tmp720,
	movq	%rax, %rdi	# abs_d.400,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -784(%rbp)	# tmp721, op1
.L680:
	.loc 1 3282 0
	cmpq	$1, -664(%rbp)	#, d
	jne	.L681	#,
	.loc 1 3283 0
	movq	-776(%rbp), %rax	# op0, tmp722
	movq	%rax, -688(%rbp)	# tmp722, quotient
	jmp	.L682	#
.L681:
	.loc 1 3284 0
	cmpq	$-1, -664(%rbp)	#, d
	jne	.L683	#,
	.loc 1 3285 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17669
	movq	-696(%rbp), %rcx	# tquotient, tmp723
	movq	-776(%rbp), %rdx	# op0, tmp724
	movl	-740(%rbp), %eax	# compute_mode, tmp725
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp725,
	call	expand_unop	#
	movq	%rax, -688(%rbp)	# tmp726, quotient
	jmp	.L682	#
.L683:
	.loc 1 3287 0
	movl	-724(%rbp), %eax	# size, tmp727
	subl	$1, %eax	#, D.17665
	movl	$1, %edx	#, tmp728
	movl	%eax, %ecx	# D.17665, tmp1421
	salq	%cl, %rdx	# tmp1421, D.17668
	movq	%rdx, %rax	# D.17668, D.17668
	cmpq	-560(%rbp), %rax	# abs_d, D.17668
	jne	.L684	#,
	.loc 1 3290 0
	movl	-740(%rbp), %esi	# compute_mode, tmp729
	movq	-784(%rbp), %rcx	# op1, tmp730
	movq	-776(%rbp), %rdx	# op0, tmp731
	movq	-696(%rbp), %rax	# tquotient, tmp732
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	%esi, %r8d	# tmp729,
	movl	$103, %esi	#,
	movq	%rax, %rdi	# tmp732,
	call	emit_store_flag	#
	movq	%rax, -688(%rbp)	# tmp733, quotient
	.loc 1 3292 0
	cmpq	$0, -688(%rbp)	#, quotient
	jne	.L682	#,
	.loc 1 3293 0
	jmp	.L812	#
.L684:
	.loc 1 3295 0
	movq	-664(%rbp), %rax	# d, tmp734
	subq	$1, %rax	#, D.17661
	andq	-664(%rbp), %rax	# d, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L686	#,
	.loc 1 3295 0 is_stmt 0 discriminator 1
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L687	#,
	.loc 1 3296 0 is_stmt 1
	movl	smod_pow2_cheap(%rip), %eax	# smod_pow2_cheap, smod_pow2_cheap.401
	testl	%eax, %eax	# smod_pow2_cheap.401
	jne	.L688	#,
	jmp	.L686	#
.L687:
	movl	sdiv_pow2_cheap(%rip), %eax	# sdiv_pow2_cheap, sdiv_pow2_cheap.402
	testl	%eax, %eax	# sdiv_pow2_cheap.402
	je	.L686	#,
.L688:
	.loc 1 3301 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L689	#,
	.loc 1 3301 0 is_stmt 0 discriminator 1
	movq	optab_table+120(%rip), %rax	# optab_table, iftmp.403
	jmp	.L690	#
.L689:
	.loc 1 3301 0 discriminator 2
	movq	optab_table+80(%rip), %rax	# optab_table, iftmp.403
.L690:
	.loc 1 3302 0 is_stmt 1 discriminator 3
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.404
	movslq	%edx, %rdx	# compute_mode.404, tmp735
	salq	$4, %rdx	#, tmp736
	addq	%rdx, %rax	# tmp736, tmp737
	movl	8(%rax), %eax	# iftmp.403_94->handlers[compute_mode.404_360].insn_code, D.17666
	.loc 1 3301 0 discriminator 3
	cmpl	$1317, %eax	#, D.17666
	jne	.L691	#,
	.loc 1 3304 0
	movq	optab_table+96(%rip), %rax	# optab_table, D.17669
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.405
	.loc 1 3305 0
	movslq	%edx, %rdx	# compute_mode.405, tmp738
	salq	$4, %rdx	#, tmp739
	addq	%rdx, %rax	# tmp739, tmp740
	movl	8(%rax), %eax	# _362->handlers[compute_mode.405_363].insn_code, D.17666
	.loc 1 3304 0
	cmpl	$1317, %eax	#, D.17666
	je	.L686	#,
.L691:
	.loc 1 3295 0
	jmp	.L682	#
.L686:
	.loc 1 3307 0
	movq	-560(%rbp), %rax	# abs_d, tmp741
	subq	$1, %rax	#, D.17668
	andq	-560(%rbp), %rax	# abs_d, D.17668
	testq	%rax, %rax	# D.17668
	jne	.L692	#,
	.loc 1 3309 0
	movq	-560(%rbp), %rax	# abs_d, tmp742
	movq	%rax, %rdi	# tmp742,
	call	floor_log2_wide	#
	movl	%eax, -748(%rbp)	# lgup.406, lgup
	.loc 1 3310 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.407
	testl	%eax, %eax	# ix86_branch_cost.407
	jle	.L693	#,
	.loc 1 3310 0 is_stmt 0 discriminator 1
	cmpq	$2, -560(%rbp)	#, abs_d
	je	.L694	#,
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.408
	cmpl	$2, %eax	#, ix86_branch_cost.408
	jg	.L694	#,
.L693:
.LBB57:
	.loc 1 3312 0 is_stmt 1
	call	gen_label_rtx	#
	movq	%rax, -528(%rbp)	# tmp743, label
	.loc 1 3315 0
	movq	-776(%rbp), %rdx	# op0, tmp744
	movl	-740(%rbp), %eax	# compute_mode, tmp745
	movq	%rdx, %rsi	# tmp744,
	movl	%eax, %edi	# tmp745,
	call	copy_to_mode_reg	#
	movq	%rax, -520(%rbp)	# tmp746, t1
	.loc 1 3316 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-528(%rbp), %rcx	# label, tmp747
	movl	-740(%rbp), %edx	# compute_mode, tmp748
	movq	-520(%rbp), %rax	# t1, tmp749
	movq	%rcx, %r8	# tmp747,
	movl	%edx, %ecx	# tmp748,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp749,
	call	do_cmp_and_jump	#
	.loc 1 3318 0
	movq	-560(%rbp), %rax	# abs_d, tmp750
	subq	$1, %rax	#, D.17668
	movl	-740(%rbp), %edx	# compute_mode, tmp751
	movl	%edx, %esi	# tmp751,
	movq	%rax, %rdi	# D.17661,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.17662
	movq	-520(%rbp), %rax	# t1, tmp752
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp752,
	call	expand_inc	#
	.loc 1 3320 0
	movq	-528(%rbp), %rax	# label, tmp753
	movq	%rax, %rdi	# tmp753,
	call	emit_label	#
	.loc 1 3321 0
	movl	-748(%rbp), %eax	# lgup, lgup.409
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp754
	movq	-520(%rbp), %rdx	# t1, tmp755
	movl	-740(%rbp), %eax	# compute_mode, tmp756
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp754,
	movl	%eax, %esi	# tmp756,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp757, quotient
.LBE57:
	.loc 1 3311 0
	jmp	.L695	#
.L694:
.LBB58:
	.loc 1 3329 0
	movl	-724(%rbp), %eax	# size, tmp758
	subl	$1, %eax	#, D.17665
	.loc 1 3328 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp759
	movl	-740(%rbp), %eax	# compute_mode, tmp760
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp760,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -552(%rbp)	# tmp761, t1
	.loc 1 3332 0
	movl	-748(%rbp), %eax	# lgup, lgup.410
	movl	-724(%rbp), %edx	# size, tmp762
	subl	%eax, %edx	# lgup.410, D.17665
	movl	%edx, %eax	# D.17665, D.17665
	.loc 1 3331 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-552(%rbp), %rdx	# t1, tmp763
	movl	-740(%rbp), %eax	# compute_mode, tmp764
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp764,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -544(%rbp)	# tmp765, t2
	.loc 1 3334 0
	movq	-544(%rbp), %rcx	# t2, tmp766
	movq	-776(%rbp), %rdx	# op0, tmp767
	movl	-740(%rbp), %eax	# compute_mode, tmp768
	movl	%eax, %esi	# tmp768,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -536(%rbp)	# tmp769, t3
	.loc 1 3337 0
	movl	-748(%rbp), %eax	# lgup, lgup.411
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp770
	movq	-536(%rbp), %rdx	# t3, tmp771
	movl	-740(%rbp), %eax	# compute_mode, tmp772
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp770,
	movl	%eax, %esi	# tmp772,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp773, quotient
.L695:
.LBE58:
	.loc 1 3344 0
	cmpq	$0, -664(%rbp)	#, d
	jns	.L682	#,
	.loc 1 3346 0
	call	get_last_insn	#
	movq	%rax, -576(%rbp)	# tmp774, insn
	.loc 1 3347 0
	movq	-576(%rbp), %rax	# insn, tmp775
	cmpq	-640(%rbp), %rax	# last, tmp775
	je	.L697	#,
	.loc 1 3348 0
	movq	-576(%rbp), %rax	# insn, tmp776
	movzwl	(%rax), %eax	# insn_396->code, D.17659
	movzwl	%ax, %eax	# D.17659, D.17665
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17671
	cmpb	$105, %al	#, D.17671
	jne	.L698	#,
	.loc 1 3348 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rax	# insn, tmp778
	movq	32(%rax), %rax	# insn_396->fld[3].rtx, D.17662
	movzwl	(%rax), %eax	# _400->code, D.17659
	cmpw	$47, %ax	#, D.17659
	jne	.L699	#,
	.loc 1 3348 0 discriminator 3
	movq	-576(%rbp), %rax	# insn, tmp779
	movq	32(%rax), %rax	# insn_396->fld[3].rtx, iftmp.413
	jmp	.L701	#
.L699:
	.loc 1 3348 0 discriminator 4
	movq	-576(%rbp), %rax	# insn, tmp780
	movq	32(%rax), %rdx	# insn_396->fld[3].rtx, D.17662
	movq	-576(%rbp), %rax	# insn, tmp781
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp781,
	call	single_set_2	#
	jmp	.L701	#
.L698:
	.loc 1 3348 0 discriminator 2
	movl	$0, %eax	#, iftmp.412
.L701:
	.loc 1 3348 0 discriminator 5
	movq	%rax, -568(%rbp)	# iftmp.412, set
	cmpq	$0, -568(%rbp)	#, set
	je	.L697	#,
	.loc 1 3349 0 is_stmt 1
	movq	-568(%rbp), %rax	# set, tmp782
	movq	8(%rax), %rax	# set_407->fld[0].rtx, D.17662
	cmpq	-688(%rbp), %rax	# quotient, D.17662
	jne	.L697	#,
	.loc 1 3350 0
	movq	-560(%rbp), %rax	# abs_d, abs_d.414
	testq	%rax, %rax	# abs_d.414
	js	.L697	#,
	.loc 1 3352 0
	movq	-560(%rbp), %rax	# abs_d, abs_d.415
	movl	-740(%rbp), %edx	# compute_mode, tmp783
	movl	%edx, %esi	# tmp783,
	movq	%rax, %rdi	# abs_d.415,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17662
	movq	-776(%rbp), %rdx	# op0, tmp784
	movl	-740(%rbp), %eax	# compute_mode, tmp785
	movl	%eax, %esi	# tmp785,
	movl	$79, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17662
	movq	-576(%rbp), %rax	# insn, tmp786
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp786,
	call	set_unique_reg_note	#
.L697:
	.loc 1 3361 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rcx	# quotient, tmp787
	movq	-688(%rbp), %rdx	# quotient, tmp788
	movl	-740(%rbp), %eax	# compute_mode, tmp789
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp789,
	call	expand_unop	#
	movq	%rax, -688(%rbp)	# tmp790, quotient
	jmp	.L682	#
.L692:
	.loc 1 3365 0
	cmpl	$64, -724(%rbp)	#, size
	jg	.L644	#,
	.loc 1 3367 0
	movl	-724(%rbp), %eax	# size, tmp791
	leal	-1(%rax), %edi	#, D.17665
	leaq	-748(%rbp), %r8	#, tmp792
	leaq	-744(%rbp), %rcx	#, tmp793
	leaq	-704(%rbp), %rdx	#, tmp794
	movl	-724(%rbp), %esi	# size, tmp795
	movq	-560(%rbp), %rax	# abs_d, tmp796
	movq	%r8, %r9	# tmp792,
	movq	%rcx, %r8	# tmp793,
	movq	%rdx, %rcx	# tmp794,
	movl	%edi, %edx	# D.17665,
	movq	%rax, %rdi	# tmp796,
	call	choose_multiplier	#
	.loc 1 3369 0
	movl	-724(%rbp), %eax	# size, tmp797
	subl	$1, %eax	#, D.17665
	movl	$1, %edx	#, tmp798
	movl	%eax, %ecx	# D.17665, tmp1423
	salq	%cl, %rdx	# tmp1423, D.17668
	movq	-704(%rbp), %rax	# ml, ml.416
	cmpq	%rax, %rdx	# ml.416, D.17668
	jbe	.L703	#,
.LBB59:
	.loc 1 3373 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.418
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L704	#,
	.loc 1 3373 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.417
	jmp	.L705	#
.L704:
	.loc 1 3373 0 discriminator 2
	movl	$32, %eax	#, iftmp.417
.L705:
	.loc 1 3373 0 discriminator 3
	movl	-744(%rbp), %edx	# post_shift, post_shift.419
	cmpl	%edx, %eax	# post_shift.419, iftmp.417
	jle	.L812	#,
	.loc 1 3374 0 is_stmt 1
	movl	-724(%rbp), %eax	# size, tmp799
	leal	-1(%rax), %edx	#, D.17665
	movl	target_flags(%rip), %eax	# target_flags, target_flags.421
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L706	#,
	.loc 1 3374 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.420
	jmp	.L707	#
.L706:
	.loc 1 3374 0 discriminator 2
	movl	$32, %eax	#, iftmp.420
.L707:
	.loc 1 3374 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.420, D.17665
	jge	.L812	#,
	.loc 1 3377 0 is_stmt 1
	movl	-744(%rbp), %eax	# post_shift, post_shift.422
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17665
	.loc 1 3378 0
	movl	-724(%rbp), %eax	# size, tmp801
	subl	$1, %eax	#, D.17665
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17665
	addl	%eax, %edx	# D.17665, D.17665
	movl	add_cost(%rip), %eax	# add_cost, add_cost.423
	.loc 1 3377 0
	addl	%edx, %eax	# D.17665, tmp803
	movl	%eax, -716(%rbp)	# tmp803, extra_cost
	.loc 1 3379 0
	movl	-716(%rbp), %eax	# extra_cost, tmp804
	movl	-720(%rbp), %edx	# max_cost, tmp805
	movl	%edx, %ecx	# tmp805, D.17665
	subl	%eax, %ecx	# tmp804, D.17665
	movq	-704(%rbp), %rdx	# ml, ml.424
	movq	-776(%rbp), %rsi	# op0, tmp806
	movl	-740(%rbp), %eax	# compute_mode, tmp807
	movl	%ecx, %r9d	# D.17665,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp807,
	call	expand_mult_highpart	#
	movq	%rax, -512(%rbp)	# tmp808, t1
	.loc 1 3382 0
	cmpq	$0, -512(%rbp)	#, t1
	jne	.L708	#,
	.loc 1 3383 0
	jmp	.L652	#
.L708:
	.loc 1 3384 0
	movl	-744(%rbp), %eax	# post_shift, post_shift.425
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-512(%rbp), %rdx	# t1, tmp809
	movl	-740(%rbp), %eax	# compute_mode, tmp810
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp810,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -504(%rbp)	# tmp811, t2
	.loc 1 3387 0
	movl	-724(%rbp), %eax	# size, tmp812
	subl	$1, %eax	#, D.17665
	.loc 1 3386 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp813
	movl	-740(%rbp), %eax	# compute_mode, tmp814
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp814,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -496(%rbp)	# tmp815, t3
	.loc 1 3388 0
	cmpq	$0, -664(%rbp)	#, d
	jns	.L709	#,
	.loc 1 3390 0
	movq	-504(%rbp), %rcx	# t2, tmp816
	movq	-496(%rbp), %rdx	# t3, tmp817
	movl	-740(%rbp), %eax	# compute_mode, tmp818
	movl	%eax, %esi	# tmp818,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp819
	movq	%rdx, %rsi	# tmp819,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp820, quotient
	jmp	.L682	#
.L709:
	.loc 1 3395 0
	movq	-496(%rbp), %rcx	# t3, tmp821
	movq	-504(%rbp), %rdx	# t2, tmp822
	movl	-740(%rbp), %eax	# compute_mode, tmp823
	movl	%eax, %esi	# tmp823,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp824
	movq	%rdx, %rsi	# tmp824,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp825, quotient
.LBE59:
	jmp	.L682	#
.L703:
.LBB60:
	.loc 1 3403 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.427
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L712	#,
	.loc 1 3403 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.426
	jmp	.L713	#
.L712:
	.loc 1 3403 0 discriminator 2
	movl	$32, %eax	#, iftmp.426
.L713:
	.loc 1 3403 0 discriminator 3
	movl	-744(%rbp), %edx	# post_shift, post_shift.428
	cmpl	%edx, %eax	# post_shift.428, iftmp.426
	jle	.L812	#,
	.loc 1 3404 0 is_stmt 1
	movl	-724(%rbp), %eax	# size, tmp826
	leal	-1(%rax), %edx	#, D.17665
	movl	target_flags(%rip), %eax	# target_flags, target_flags.430
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L714	#,
	.loc 1 3404 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.429
	jmp	.L715	#
.L714:
	.loc 1 3404 0 discriminator 2
	movl	$32, %eax	#, iftmp.429
.L715:
	.loc 1 3404 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.429, D.17665
	jge	.L812	#,
	.loc 1 3407 0 is_stmt 1
	movl	-724(%rbp), %eax	# size, tmp827
	subl	$1, %eax	#, D.17665
	movq	$-1, %rdx	#, tmp828
	movl	%eax, %ecx	# D.17665, tmp1425
	salq	%cl, %rdx	# tmp1425, D.17668
	movq	-704(%rbp), %rax	# ml, ml.431
	orq	%rdx, %rax	# D.17668, ml.432
	movq	%rax, -704(%rbp)	# ml.432, ml
	.loc 1 3408 0
	movl	-744(%rbp), %eax	# post_shift, post_shift.433
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17665
	.loc 1 3409 0
	movl	-724(%rbp), %eax	# size, tmp830
	subl	$1, %eax	#, D.17665
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17665
	addl	%eax, %edx	# D.17665, D.17665
	movl	add_cost(%rip), %eax	# add_cost, add_cost.434
	addl	%eax, %eax	# D.17665
	.loc 1 3408 0
	addl	%edx, %eax	# D.17665, tmp832
	movl	%eax, -716(%rbp)	# tmp832, extra_cost
	.loc 1 3410 0
	movl	-716(%rbp), %eax	# extra_cost, tmp833
	movl	-720(%rbp), %edx	# max_cost, tmp834
	movl	%edx, %ecx	# tmp834, D.17665
	subl	%eax, %ecx	# tmp833, D.17665
	movq	-704(%rbp), %rdx	# ml, ml.435
	movq	-776(%rbp), %rsi	# op0, tmp835
	movl	-740(%rbp), %eax	# compute_mode, tmp836
	movl	%ecx, %r9d	# D.17665,
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp836,
	call	expand_mult_highpart	#
	movq	%rax, -488(%rbp)	# tmp837, t1
	.loc 1 3413 0
	cmpq	$0, -488(%rbp)	#, t1
	jne	.L716	#,
	.loc 1 3414 0
	nop
	jmp	.L652	#
.L716:
	.loc 1 3415 0
	movq	-776(%rbp), %rcx	# op0, tmp838
	movq	-488(%rbp), %rdx	# t1, tmp839
	movl	-740(%rbp), %eax	# compute_mode, tmp840
	movl	%eax, %esi	# tmp840,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -480(%rbp)	# tmp841, t2
	.loc 1 3418 0
	movl	-744(%rbp), %eax	# post_shift, post_shift.436
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-480(%rbp), %rdx	# t2, tmp842
	movl	-740(%rbp), %eax	# compute_mode, tmp843
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp843,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -472(%rbp)	# tmp844, t3
	.loc 1 3422 0
	movl	-724(%rbp), %eax	# size, tmp845
	subl	$1, %eax	#, D.17665
	.loc 1 3421 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp846
	movl	-740(%rbp), %eax	# compute_mode, tmp847
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp847,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -464(%rbp)	# tmp848, t4
	.loc 1 3424 0
	cmpq	$0, -664(%rbp)	#, d
	jns	.L717	#,
	.loc 1 3426 0
	movq	-472(%rbp), %rcx	# t3, tmp849
	movq	-464(%rbp), %rdx	# t4, tmp850
	movl	-740(%rbp), %eax	# compute_mode, tmp851
	movl	%eax, %esi	# tmp851,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp852
	movq	%rdx, %rsi	# tmp852,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp853, quotient
	jmp	.L682	#
.L717:
	.loc 1 3431 0
	movq	-464(%rbp), %rcx	# t4, tmp854
	movq	-472(%rbp), %rdx	# t3, tmp855
	movl	-740(%rbp), %eax	# compute_mode, tmp856
	movl	%eax, %esi	# tmp856,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp857
	movq	%rdx, %rsi	# tmp857,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp858, quotient
.L682:
.LBE60:
	.loc 1 3439 0
	call	get_last_insn	#
	movq	%rax, -576(%rbp)	# tmp859, insn
	.loc 1 3440 0
	movq	-576(%rbp), %rax	# insn, tmp860
	cmpq	-640(%rbp), %rax	# last, tmp860
	je	.L679	#,
	.loc 1 3441 0
	movq	-576(%rbp), %rax	# insn, tmp861
	movzwl	(%rax), %eax	# insn_491->code, D.17659
	movzwl	%ax, %eax	# D.17659, D.17665
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.17671
	cmpb	$105, %al	#, D.17671
	jne	.L719	#,
	.loc 1 3441 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rax	# insn, tmp863
	movq	32(%rax), %rax	# insn_491->fld[3].rtx, D.17662
	movzwl	(%rax), %eax	# _495->code, D.17659
	cmpw	$47, %ax	#, D.17659
	jne	.L720	#,
	.loc 1 3441 0 discriminator 3
	movq	-576(%rbp), %rax	# insn, tmp864
	movq	32(%rax), %rax	# insn_491->fld[3].rtx, iftmp.438
	jmp	.L722	#
.L720:
	.loc 1 3441 0 discriminator 4
	movq	-576(%rbp), %rax	# insn, tmp865
	movq	32(%rax), %rdx	# insn_491->fld[3].rtx, D.17662
	movq	-576(%rbp), %rax	# insn, tmp866
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp866,
	call	single_set_2	#
	jmp	.L722	#
.L719:
	.loc 1 3441 0 discriminator 2
	movl	$0, %eax	#, iftmp.437
.L722:
	.loc 1 3441 0 discriminator 5
	movq	%rax, -568(%rbp)	# iftmp.437, set
	cmpq	$0, -568(%rbp)	#, set
	je	.L679	#,
	.loc 1 3442 0 is_stmt 1
	movq	-568(%rbp), %rax	# set, tmp867
	movq	8(%rax), %rax	# set_502->fld[0].rtx, D.17662
	cmpq	-688(%rbp), %rax	# quotient, D.17662
	jne	.L679	#,
	.loc 1 3443 0
	movq	-784(%rbp), %rcx	# op1, tmp868
	movq	-776(%rbp), %rdx	# op0, tmp869
	movl	-740(%rbp), %eax	# compute_mode, tmp870
	movl	%eax, %esi	# tmp870,
	movl	$79, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17662
	movq	-576(%rbp), %rax	# insn, tmp871
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp871,
	call	set_unique_reg_note	#
.LBE56:
	.loc 1 3447 0
	jmp	.L644	#
.L679:
	jmp	.L644	#
.L811:
.LBB61:
	.loc 1 3180 0
	nop
	jmp	.L652	#
.L812:
.LBE61:
.LBB62:
	.loc 1 3293 0
	nop
.L652:
.LBE62:
	.loc 1 3450 0
	movq	-640(%rbp), %rax	# last, tmp872
	movq	%rax, %rdi	# tmp872,
	call	delete_insns_since	#
	.loc 1 3451 0
	jmp	.L644	#
.L649:
	.loc 1 3456 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L723	#,
	.loc 1 3456 0 is_stmt 0 discriminator 1
	cmpl	$64, -724(%rbp)	#, size
	jg	.L723	#,
.LBB63:
	.loc 1 3460 0 is_stmt 1
	movq	-784(%rbp), %rax	# op1, tmp873
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, tmp874
	movq	%rax, -456(%rbp)	# tmp874, d
	.loc 1 3462 0
	cmpq	$0, -456(%rbp)	#, d
	jle	.L724	#,
	.loc 1 3466 0
	movq	-456(%rbp), %rax	# d, tmp875
	subq	$1, %rax	#, D.17661
	andq	-456(%rbp), %rax	# d, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L725	#,
	.loc 1 3468 0
	movq	-456(%rbp), %rax	# d, d.439
	movq	%rax, %rdi	# d.439,
	call	floor_log2_wide	#
	movl	%eax, -712(%rbp)	# tmp876, pre_shift
	.loc 1 3469 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L726	#,
	.loc 1 3472 0
	movl	-712(%rbp), %eax	# pre_shift, tmp877
	movl	$1, %edx	#, tmp878
	movl	%eax, %ecx	# tmp877, tmp1428
	salq	%cl, %rdx	# tmp1428, D.17661
	movq	%rdx, %rax	# D.17661, D.17661
	.loc 1 3471 0
	subq	$1, %rax	#, D.17661
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17662
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp879
	movq	-776(%rbp), %rdx	# op0, tmp880
	movl	-740(%rbp), %eax	# compute_mode, tmp881
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp879,
	movl	%eax, %edi	# tmp881,
	call	expand_binop	#
	movq	%rax, -680(%rbp)	# tmp882, remainder
	.loc 1 3474 0
	cmpq	$0, -680(%rbp)	#, remainder
	je	.L726	#,
	.loc 1 3475 0
	movq	-680(%rbp), %rdx	# remainder, tmp883
	movl	-764(%rbp), %eax	# mode, tmp884
	movq	%rdx, %rsi	# tmp883,
	movl	%eax, %edi	# tmp884,
	call	gen_lowpart	#
	jmp	.L598	#
.L726:
	.loc 1 3477 0
	movl	-712(%rbp), %eax	# pre_shift, tmp885
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp886
	movq	-776(%rbp), %rdx	# op0, tmp887
	movl	-740(%rbp), %eax	# compute_mode, tmp888
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp886,
	movl	%eax, %esi	# tmp888,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -688(%rbp)	# tmp889, quotient
	jmp	.L723	#
.L725:
.LBB64:
	.loc 1 3485 0
	movl	-724(%rbp), %eax	# size, tmp890
	leal	-1(%rax), %edi	#, D.17665
	movq	-456(%rbp), %rax	# d, d.440
	leaq	-748(%rbp), %r8	#, tmp891
	leaq	-744(%rbp), %rcx	#, tmp892
	leaq	-704(%rbp), %rdx	#, tmp893
	movl	-724(%rbp), %esi	# size, tmp894
	movq	%r8, %r9	# tmp891,
	movq	%rcx, %r8	# tmp892,
	movq	%rdx, %rcx	# tmp893,
	movl	%edi, %edx	# D.17665,
	movq	%rax, %rdi	# d.440,
	call	choose_multiplier	#
	movq	%rax, -448(%rbp)	# tmp895, mh
	.loc 1 3487 0
	cmpq	$0, -448(%rbp)	#, mh
	je	.L728	#,
	.loc 1 3488 0
	movl	$__FUNCTION__.13214, %edx	#,
	movl	$3488, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L728:
	.loc 1 3490 0
	movl	target_flags(%rip), %eax	# target_flags, target_flags.442
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L729	#,
	.loc 1 3490 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.441
	jmp	.L730	#
.L729:
	.loc 1 3490 0 discriminator 2
	movl	$32, %eax	#, iftmp.441
.L730:
	.loc 1 3490 0 discriminator 3
	movl	-744(%rbp), %edx	# post_shift, post_shift.443
	cmpl	%edx, %eax	# post_shift.443, iftmp.441
	jle	.L727	#,
	.loc 1 3491 0 is_stmt 1
	movl	-724(%rbp), %eax	# size, tmp896
	leal	-1(%rax), %edx	#, D.17665
	movl	target_flags(%rip), %eax	# target_flags, target_flags.445
	andl	$33554432, %eax	#, D.17665
	testl	%eax, %eax	# D.17665
	je	.L731	#,
	.loc 1 3491 0 is_stmt 0 discriminator 1
	movl	$64, %eax	#, iftmp.444
	jmp	.L732	#
.L731:
	.loc 1 3491 0 discriminator 2
	movl	$32, %eax	#, iftmp.444
.L732:
	.loc 1 3491 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.444, D.17665
	jge	.L727	#,
	.loc 1 3494 0 is_stmt 1
	movl	-724(%rbp), %eax	# size, tmp897
	subl	$1, %eax	#, D.17665
	.loc 1 3493 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp898
	movl	-740(%rbp), %eax	# compute_mode, tmp899
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp899,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -440(%rbp)	# tmp900, t1
	.loc 1 3496 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-440(%rbp), %rcx	# t1, tmp901
	movq	-776(%rbp), %rdx	# op0, tmp902
	movl	-740(%rbp), %eax	# compute_mode, tmp903
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp903,
	call	expand_binop	#
	movq	%rax, -432(%rbp)	# tmp904, t2
	.loc 1 3498 0
	movl	-744(%rbp), %eax	# post_shift, post_shift.446
	cltq
	movl	shift_cost(,%rax,4), %edx	# shift_cost, D.17665
	.loc 1 3499 0
	movl	-724(%rbp), %eax	# size, tmp906
	subl	$1, %eax	#, D.17665
	cltq
	movl	shift_cost(,%rax,4), %eax	# shift_cost, D.17665
	addl	%eax, %edx	# D.17665, D.17665
	movl	add_cost(%rip), %eax	# add_cost, add_cost.447
	addl	%eax, %eax	# D.17665
	.loc 1 3498 0
	addl	%edx, %eax	# D.17665, tmp908
	movl	%eax, -716(%rbp)	# tmp908, extra_cost
	.loc 1 3500 0
	movl	-716(%rbp), %eax	# extra_cost, tmp909
	movl	-720(%rbp), %edx	# max_cost, tmp910
	movl	%edx, %ecx	# tmp910, D.17665
	subl	%eax, %ecx	# tmp909, D.17665
	movq	-704(%rbp), %rdx	# ml, ml.448
	movq	-432(%rbp), %rsi	# t2, tmp911
	movl	-740(%rbp), %eax	# compute_mode, tmp912
	movl	%ecx, %r9d	# D.17665,
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp912,
	call	expand_mult_highpart	#
	movq	%rax, -424(%rbp)	# tmp913, t3
	.loc 1 3503 0
	cmpq	$0, -424(%rbp)	#, t3
	je	.L727	#,
	.loc 1 3505 0
	movl	-744(%rbp), %eax	# post_shift, post_shift.449
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-424(%rbp), %rdx	# t3, tmp914
	movl	-740(%rbp), %eax	# compute_mode, tmp915
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp915,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -416(%rbp)	# tmp916, t4
	.loc 1 3508 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-696(%rbp), %rdi	# tquotient, tmp917
	movq	-440(%rbp), %rcx	# t1, tmp918
	movq	-416(%rbp), %rdx	# t4, tmp919
	movl	-740(%rbp), %eax	# compute_mode, tmp920
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp917,
	movl	%eax, %edi	# tmp920,
	call	expand_binop	#
	movq	%rax, -688(%rbp)	# tmp921, quotient
.LBE64:
	jmp	.L723	#
.L727:
	jmp	.L723	#
.L724:
.LBB65:
	.loc 1 3518 0
	movq	const_int_rtx+504(%rip), %rcx	# const_int_rtx, D.17662
	movq	-776(%rbp), %rdx	# op0, tmp922
	movl	-740(%rbp), %eax	# compute_mode, tmp923
	movl	%eax, %esi	# tmp923,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -408(%rbp)	# tmp924, t1
	.loc 1 3520 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17669
	movq	-408(%rbp), %rcx	# t1, tmp925
	movq	-776(%rbp), %rdx	# op0, tmp926
	movl	-740(%rbp), %eax	# compute_mode, tmp927
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp927,
	call	expand_binop	#
	movq	%rax, -400(%rbp)	# tmp928, t2
	.loc 1 3523 0
	movl	-724(%rbp), %eax	# size, tmp929
	subl	$1, %eax	#, D.17665
	.loc 1 3522 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-400(%rbp), %rdx	# t2, tmp930
	movl	-740(%rbp), %eax	# compute_mode, tmp931
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp931,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -392(%rbp)	# tmp932, nsign
	.loc 1 3524 0
	movq	-392(%rbp), %rcx	# nsign, tmp933
	movq	-408(%rbp), %rdx	# t1, tmp934
	movl	-740(%rbp), %eax	# compute_mode, tmp935
	movl	%eax, %esi	# tmp935,
	movl	$76, %edi	#,
	call	gen_rtx_fmt_ee	#
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -384(%rbp)	# tmp936, t3
	.loc 1 3526 0
	movq	-784(%rbp), %rcx	# op1, tmp937
	movq	-384(%rbp), %rdx	# t3, tmp938
	movl	-740(%rbp), %eax	# compute_mode, tmp939
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rcx, %r8	# tmp937,
	movq	%rdx, %rcx	# tmp938,
	movl	%eax, %edx	# tmp939,
	movl	$62, %esi	#,
	movl	$0, %edi	#,
	call	expand_divmod	#
	movq	%rax, -376(%rbp)	# tmp940, t4
	.loc 1 3528 0
	cmpq	$0, -376(%rbp)	#, t4
	je	.L733	#,
.LBB66:
	.loc 1 3531 0
	movq	optab_table+288(%rip), %rsi	# optab_table, D.17669
	movq	-392(%rbp), %rdx	# nsign, tmp941
	movl	-740(%rbp), %eax	# compute_mode, tmp942
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp942,
	call	expand_unop	#
	movq	%rax, -368(%rbp)	# tmp943, t5
	.loc 1 3533 0
	movq	-368(%rbp), %rcx	# t5, tmp944
	movq	-376(%rbp), %rdx	# t4, tmp945
	movl	-740(%rbp), %eax	# compute_mode, tmp946
	movl	%eax, %esi	# tmp946,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp947
	movq	%rdx, %rsi	# tmp947,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp948, quotient
.LBE66:
.LBE65:
	jmp	.L723	#
.L733:
.L723:
.LBE63:
	.loc 1 3540 0
	cmpq	$0, -688(%rbp)	#, quotient
	je	.L734	#,
	.loc 1 3541 0
	jmp	.L644	#
.L734:
	.loc 1 3542 0
	movq	-640(%rbp), %rax	# last, tmp949
	movq	%rax, %rdi	# tmp949,
	call	delete_insns_since	#
	.loc 1 3549 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L735	#,
	.loc 1 3549 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp950
	movzbl	2(%rax), %eax	# target_13->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	je	.L736	#,
.L735:
	.loc 1 3550 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp951
	movl	%eax, %edi	# tmp951,
	call	gen_reg_rtx	#
	movq	%rax, -792(%rbp)	# tmp952, target
.L736:
	.loc 1 3552 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L737	#,
	.loc 1 3555 0
	movq	-792(%rbp), %rax	# target, tmp953
	movzwl	(%rax), %eax	# target_14->code, D.17659
	cmpw	$61, %ax	#, D.17659
	je	.L738	#,
	.loc 1 3555 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp954
	movl	%eax, %edi	# tmp954,
	call	gen_reg_rtx	#
	jmp	.L739	#
.L738:
	.loc 1 3555 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.450
.L739:
	.loc 1 3555 0 discriminator 1
	movq	%rax, -680(%rbp)	# iftmp.450, remainder
	.loc 1 3556 0 is_stmt 1 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp955
	movl	%eax, %edi	# tmp955,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp956, quotient
	jmp	.L740	#
.L737:
	.loc 1 3561 0
	movq	-792(%rbp), %rax	# target, tmp957
	movzwl	(%rax), %eax	# target_14->code, D.17659
	cmpw	$61, %ax	#, D.17659
	je	.L741	#,
	.loc 1 3561 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp958
	movl	%eax, %edi	# tmp958,
	call	gen_reg_rtx	#
	jmp	.L742	#
.L741:
	.loc 1 3561 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.451
.L742:
	.loc 1 3561 0 discriminator 3
	movq	%rax, -688(%rbp)	# iftmp.451, quotient
	.loc 1 3562 0 is_stmt 1 discriminator 3
	movl	-740(%rbp), %eax	# compute_mode, tmp959
	movl	%eax, %edi	# tmp959,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp960, remainder
.L740:
	.loc 1 3565 0
	movq	optab_table+96(%rip), %rax	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp961
	movq	-688(%rbp), %rcx	# quotient, tmp962
	movq	-784(%rbp), %rdx	# op1, tmp963
	movq	-776(%rbp), %rsi	# op0, tmp964
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp961,
	movq	%rax, %rdi	# D.17669,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	je	.L743	#,
.LBB67:
	.loc 1 3571 0
	call	gen_label_rtx	#
	movq	%rax, -360(%rbp)	# tmp965, label
	.loc 1 3572 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-360(%rbp), %rcx	# label, tmp966
	movl	-740(%rbp), %edx	# compute_mode, tmp967
	movq	-680(%rbp), %rax	# remainder, tmp968
	movq	%rcx, %r8	# tmp966,
	movl	%edx, %ecx	# tmp967,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp968,
	call	do_cmp_and_jump	#
	.loc 1 3573 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-784(%rbp), %rcx	# op1, tmp969
	movq	-776(%rbp), %rdx	# op0, tmp970
	movl	-740(%rbp), %eax	# compute_mode, tmp971
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp971,
	call	expand_binop	#
	movq	%rax, -352(%rbp)	# tmp972, tem
	.loc 1 3575 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-360(%rbp), %rcx	# label, tmp973
	movl	-740(%rbp), %edx	# compute_mode, tmp974
	movq	-352(%rbp), %rax	# tem, tmp975
	movq	%rcx, %r8	# tmp973,
	movl	%edx, %ecx	# tmp974,
	movl	$104, %edx	#,
	movq	%rax, %rdi	# tmp975,
	call	do_cmp_and_jump	#
	.loc 1 3576 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp976
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp976,
	call	expand_dec	#
	.loc 1 3577 0
	movq	-784(%rbp), %rdx	# op1, tmp977
	movq	-680(%rbp), %rax	# remainder, tmp978
	movq	%rdx, %rsi	# tmp977,
	movq	%rax, %rdi	# tmp978,
	call	expand_inc	#
	.loc 1 3578 0
	movq	-360(%rbp), %rax	# label, tmp979
	movq	%rax, %rdi	# tmp979,
	call	emit_label	#
	.loc 1 3579 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L744	#,
	.loc 1 3579 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# remainder, iftmp.452
	jmp	.L745	#
.L744:
	.loc 1 3579 0 discriminator 2
	movq	-688(%rbp), %rax	# quotient, iftmp.452
.L745:
	.loc 1 3579 0 discriminator 3
	movl	-764(%rbp), %edx	# mode, tmp980
	movq	%rax, %rsi	# iftmp.452,
	movl	%edx, %edi	# tmp980,
	call	gen_lowpart	#
	jmp	.L598	#
.L743:
.LBE67:
.LBB68:
	.loc 1 3589 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp981
	movl	%eax, %edi	# tmp981,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp982, quotient
	.loc 1 3590 0
	movq	-776(%rbp), %rdx	# op0, tmp983
	movl	-740(%rbp), %eax	# compute_mode, tmp984
	movq	%rdx, %rsi	# tmp983,
	movl	%eax, %edi	# tmp984,
	call	copy_to_mode_reg	#
	movq	%rax, -344(%rbp)	# tmp985, adjusted_op0
	.loc 1 3591 0
	call	gen_label_rtx	#
	movq	%rax, -336(%rbp)	# tmp986, label1
	.loc 1 3592 0
	call	gen_label_rtx	#
	movq	%rax, -328(%rbp)	# tmp987, label2
	.loc 1 3593 0
	call	gen_label_rtx	#
	movq	%rax, -320(%rbp)	# tmp988, label3
	.loc 1 3594 0
	call	gen_label_rtx	#
	movq	%rax, -312(%rbp)	# tmp989, label4
	.loc 1 3595 0
	call	gen_label_rtx	#
	movq	%rax, -304(%rbp)	# tmp990, label5
	.loc 1 3596 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-328(%rbp), %rcx	# label2, tmp991
	movl	-740(%rbp), %edx	# compute_mode, tmp992
	movq	-784(%rbp), %rax	# op1, tmp993
	movq	%rcx, %r8	# tmp991,
	movl	%edx, %ecx	# tmp992,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp993,
	call	do_cmp_and_jump	#
	.loc 1 3597 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-336(%rbp), %rcx	# label1, tmp994
	movl	-740(%rbp), %edx	# compute_mode, tmp995
	movq	-344(%rbp), %rax	# adjusted_op0, tmp996
	movq	%rcx, %r8	# tmp994,
	movl	%edx, %ecx	# tmp995,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp996,
	call	do_cmp_and_jump	#
	.loc 1 3598 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp997
	movq	-784(%rbp), %rcx	# op1, tmp998
	movq	-344(%rbp), %rdx	# adjusted_op0, tmp999
	movl	-740(%rbp), %eax	# compute_mode, tmp1000
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp997,
	movl	%eax, %edi	# tmp1000,
	call	expand_binop	#
	movq	%rax, -296(%rbp)	# tmp1001, tem
	.loc 1 3600 0
	movq	-296(%rbp), %rax	# tem, tmp1002
	cmpq	-688(%rbp), %rax	# quotient, tmp1002
	je	.L746	#,
	.loc 1 3601 0
	movq	-296(%rbp), %rdx	# tem, tmp1003
	movq	-688(%rbp), %rax	# quotient, tmp1004
	movq	%rdx, %rsi	# tmp1003,
	movq	%rax, %rdi	# tmp1004,
	call	emit_move_insn	#
.L746:
	.loc 1 3602 0
	movq	-304(%rbp), %rax	# label5, tmp1005
	movq	%rax, %rdi	# tmp1005,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3603 0
	call	emit_barrier	#
	.loc 1 3604 0
	movq	-336(%rbp), %rax	# label1, tmp1006
	movq	%rax, %rdi	# tmp1006,
	call	emit_label	#
	.loc 1 3605 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-344(%rbp), %rax	# adjusted_op0, tmp1007
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1007,
	call	expand_inc	#
	.loc 1 3606 0
	movq	-312(%rbp), %rax	# label4, tmp1008
	movq	%rax, %rdi	# tmp1008,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3607 0
	call	emit_barrier	#
	.loc 1 3608 0
	movq	-328(%rbp), %rax	# label2, tmp1009
	movq	%rax, %rdi	# tmp1009,
	call	emit_label	#
	.loc 1 3609 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-320(%rbp), %rcx	# label3, tmp1010
	movl	-740(%rbp), %edx	# compute_mode, tmp1011
	movq	-344(%rbp), %rax	# adjusted_op0, tmp1012
	movq	%rcx, %r8	# tmp1010,
	movl	%edx, %ecx	# tmp1011,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp1012,
	call	do_cmp_and_jump	#
	.loc 1 3610 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1013
	movq	-784(%rbp), %rcx	# op1, tmp1014
	movq	-344(%rbp), %rdx	# adjusted_op0, tmp1015
	movl	-740(%rbp), %eax	# compute_mode, tmp1016
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1013,
	movl	%eax, %edi	# tmp1016,
	call	expand_binop	#
	movq	%rax, -296(%rbp)	# tmp1017, tem
	.loc 1 3612 0
	movq	-296(%rbp), %rax	# tem, tmp1018
	cmpq	-688(%rbp), %rax	# quotient, tmp1018
	je	.L747	#,
	.loc 1 3613 0
	movq	-296(%rbp), %rdx	# tem, tmp1019
	movq	-688(%rbp), %rax	# quotient, tmp1020
	movq	%rdx, %rsi	# tmp1019,
	movq	%rax, %rdi	# tmp1020,
	call	emit_move_insn	#
.L747:
	.loc 1 3614 0
	movq	-304(%rbp), %rax	# label5, tmp1021
	movq	%rax, %rdi	# tmp1021,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3615 0
	call	emit_barrier	#
	.loc 1 3616 0
	movq	-320(%rbp), %rax	# label3, tmp1022
	movq	%rax, %rdi	# tmp1022,
	call	emit_label	#
	.loc 1 3617 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-344(%rbp), %rax	# adjusted_op0, tmp1023
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1023,
	call	expand_dec	#
	.loc 1 3618 0
	movq	-312(%rbp), %rax	# label4, tmp1024
	movq	%rax, %rdi	# tmp1024,
	call	emit_label	#
	.loc 1 3619 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1025
	movq	-784(%rbp), %rcx	# op1, tmp1026
	movq	-344(%rbp), %rdx	# adjusted_op0, tmp1027
	movl	-740(%rbp), %eax	# compute_mode, tmp1028
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1025,
	movl	%eax, %edi	# tmp1028,
	call	expand_binop	#
	movq	%rax, -296(%rbp)	# tmp1029, tem
	.loc 1 3621 0
	movq	-296(%rbp), %rax	# tem, tmp1030
	cmpq	-688(%rbp), %rax	# quotient, tmp1030
	je	.L748	#,
	.loc 1 3622 0
	movq	-296(%rbp), %rdx	# tem, tmp1031
	movq	-688(%rbp), %rax	# quotient, tmp1032
	movq	%rdx, %rsi	# tmp1031,
	movq	%rax, %rdi	# tmp1032,
	call	emit_move_insn	#
.L748:
	.loc 1 3623 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1033
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1033,
	call	expand_dec	#
	.loc 1 3624 0
	movq	-304(%rbp), %rax	# label5, tmp1034
	movq	%rax, %rdi	# tmp1034,
	call	emit_label	#
.LBE68:
	.loc 1 3626 0
	jmp	.L644	#
.L648:
	.loc 1 3630 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L749	#,
	.loc 1 3632 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L750	#,
	.loc 1 3632 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp1035
	movq	8(%rax), %rdx	# op1_8->fld[0].rtwint, D.17661
	movq	-784(%rbp), %rax	# op1, tmp1036
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	subq	$1, %rax	#, D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L750	#,
.LBB69:
	.loc 1 3635 0 is_stmt 1
	movq	-784(%rbp), %rax	# op1, tmp1037
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	movq	%rax, -288(%rbp)	# D.17661, d
	.loc 1 3637 0
	movq	-288(%rbp), %rax	# d, tmp1038
	movq	%rax, %rdi	# tmp1038,
	call	floor_log2_wide	#
	.loc 1 3636 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp1039
	movq	-776(%rbp), %rdx	# op0, tmp1040
	movl	-740(%rbp), %eax	# compute_mode, tmp1041
	movl	$1, %r9d	#,
	movq	%rsi, %r8	# tmp1039,
	movl	%eax, %esi	# tmp1041,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -280(%rbp)	# tmp1042, t1
	.loc 1 3640 0
	movq	-288(%rbp), %rax	# d, tmp1043
	subq	$1, %rax	#, D.17668
	.loc 1 3639 0
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17662
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17669
	movq	-776(%rbp), %rdx	# op0, tmp1044
	movl	-740(%rbp), %eax	# compute_mode, tmp1045
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1045,
	call	expand_binop	#
	movq	%rax, -272(%rbp)	# tmp1046, t2
	.loc 1 3642 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1047
	movl	%eax, %edi	# tmp1047,
	call	gen_reg_rtx	#
	movq	%rax, -264(%rbp)	# tmp1048, t3
	.loc 1 3643 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17662
	movl	-740(%rbp), %esi	# compute_mode, tmp1049
	movq	-272(%rbp), %rdx	# t2, tmp1050
	movq	-264(%rbp), %rax	# t3, tmp1051
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	%esi, %r8d	# tmp1049,
	movl	$102, %esi	#,
	movq	%rax, %rdi	# tmp1051,
	call	emit_store_flag	#
	movq	%rax, -264(%rbp)	# tmp1052, t3
	.loc 1 3645 0
	cmpq	$0, -264(%rbp)	#, t3
	jne	.L751	#,
.LBB70:
	.loc 1 3648 0
	call	gen_label_rtx	#
	movq	%rax, -256(%rbp)	# tmp1053, lab
	.loc 1 3649 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-256(%rbp), %rcx	# lab, tmp1054
	movl	-740(%rbp), %edx	# compute_mode, tmp1055
	movq	-272(%rbp), %rax	# t2, tmp1056
	movq	%rcx, %r8	# tmp1054,
	movl	%edx, %ecx	# tmp1055,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp1056,
	call	do_cmp_and_jump	#
	.loc 1 3650 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-280(%rbp), %rax	# t1, tmp1057
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1057,
	call	expand_inc	#
	.loc 1 3651 0
	movq	-256(%rbp), %rax	# lab, tmp1058
	movq	%rax, %rdi	# tmp1058,
	call	emit_label	#
	.loc 1 3652 0
	movq	-280(%rbp), %rax	# t1, tmp1059
	movq	%rax, -688(%rbp)	# tmp1059, quotient
.LBE70:
	.loc 1 3658 0
	jmp	.L644	#
.L751:
	.loc 1 3655 0
	movq	-264(%rbp), %rcx	# t3, tmp1060
	movq	-280(%rbp), %rdx	# t1, tmp1061
	movl	-740(%rbp), %eax	# compute_mode, tmp1062
	movl	%eax, %esi	# tmp1062,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp1063
	movq	%rdx, %rsi	# tmp1063,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp1064, quotient
	.loc 1 3658 0
	jmp	.L644	#
.L750:
.LBE69:
	.loc 1 3666 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L753	#,
	.loc 1 3666 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp1065
	movzbl	2(%rax), %eax	# target_13->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	je	.L754	#,
.L753:
	.loc 1 3667 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1066
	movl	%eax, %edi	# tmp1066,
	call	gen_reg_rtx	#
	movq	%rax, -792(%rbp)	# tmp1067, target
.L754:
	.loc 1 3669 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L755	#,
	.loc 1 3671 0
	movq	-792(%rbp), %rax	# target, tmp1068
	movzwl	(%rax), %eax	# target_15->code, D.17659
	.loc 1 3672 0
	cmpw	$61, %ax	#, D.17659
	je	.L756	#,
	.loc 1 3672 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1069
	movl	%eax, %edi	# tmp1069,
	call	gen_reg_rtx	#
	jmp	.L757	#
.L756:
	.loc 1 3672 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.453
.L757:
	.loc 1 3671 0 is_stmt 1 discriminator 2
	movq	%rax, -680(%rbp)	# iftmp.453, remainder
	.loc 1 3673 0 discriminator 2
	movl	-740(%rbp), %eax	# compute_mode, tmp1070
	movl	%eax, %edi	# tmp1070,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1071, quotient
	jmp	.L758	#
.L755:
	.loc 1 3677 0
	movq	-792(%rbp), %rax	# target, tmp1072
	movzwl	(%rax), %eax	# target_15->code, D.17659
	.loc 1 3678 0
	cmpw	$61, %ax	#, D.17659
	je	.L759	#,
	.loc 1 3678 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1073
	movl	%eax, %edi	# tmp1073,
	call	gen_reg_rtx	#
	jmp	.L760	#
.L759:
	.loc 1 3678 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.454
.L760:
	.loc 1 3677 0 is_stmt 1
	movq	%rax, -688(%rbp)	# iftmp.454, quotient
	.loc 1 3679 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1074
	movl	%eax, %edi	# tmp1074,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp1075, remainder
.L758:
	.loc 1 3682 0
	movq	optab_table+112(%rip), %rax	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1076
	movq	-688(%rbp), %rcx	# quotient, tmp1077
	movq	-784(%rbp), %rdx	# op1, tmp1078
	movq	-776(%rbp), %rsi	# op0, tmp1079
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1076,
	movq	%rax, %rdi	# D.17669,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	je	.L761	#,
.LBB71:
	.loc 1 3687 0
	call	gen_label_rtx	#
	movq	%rax, -248(%rbp)	# tmp1080, label
	.loc 1 3688 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-248(%rbp), %rcx	# label, tmp1081
	movl	-740(%rbp), %edx	# compute_mode, tmp1082
	movq	-680(%rbp), %rax	# remainder, tmp1083
	movq	%rcx, %r8	# tmp1081,
	movl	%edx, %ecx	# tmp1082,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp1083,
	call	do_cmp_and_jump	#
	.loc 1 3690 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1084
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1084,
	call	expand_inc	#
	.loc 1 3691 0
	movq	-784(%rbp), %rdx	# op1, tmp1085
	movq	-680(%rbp), %rax	# remainder, tmp1086
	movq	%rdx, %rsi	# tmp1085,
	movq	%rax, %rdi	# tmp1086,
	call	expand_dec	#
	.loc 1 3692 0
	movq	-248(%rbp), %rax	# label, tmp1087
	movq	%rax, %rdi	# tmp1087,
	call	emit_label	#
	.loc 1 3693 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L762	#,
	.loc 1 3693 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# remainder, iftmp.455
	jmp	.L763	#
.L762:
	.loc 1 3693 0 discriminator 2
	movq	-688(%rbp), %rax	# quotient, iftmp.455
.L763:
	.loc 1 3693 0 discriminator 3
	movl	-764(%rbp), %edx	# mode, tmp1088
	movq	%rax, %rsi	# iftmp.455,
	movl	%edx, %edi	# tmp1088,
	call	gen_lowpart	#
	jmp	.L598	#
.L761:
.LBE71:
.LBB72:
	.loc 1 3702 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1089
	movl	%eax, %edi	# tmp1089,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1090, quotient
	.loc 1 3703 0
	movq	-776(%rbp), %rdx	# op0, tmp1091
	movl	-740(%rbp), %eax	# compute_mode, tmp1092
	movq	%rdx, %rsi	# tmp1091,
	movl	%eax, %edi	# tmp1092,
	call	copy_to_mode_reg	#
	movq	%rax, -240(%rbp)	# tmp1093, adjusted_op0
	.loc 1 3704 0
	call	gen_label_rtx	#
	movq	%rax, -232(%rbp)	# tmp1094, label1
	.loc 1 3705 0
	call	gen_label_rtx	#
	movq	%rax, -224(%rbp)	# tmp1095, label2
	.loc 1 3706 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-232(%rbp), %rcx	# label1, tmp1096
	movl	-740(%rbp), %edx	# compute_mode, tmp1097
	movq	-240(%rbp), %rax	# adjusted_op0, tmp1098
	movq	%rcx, %r8	# tmp1096,
	movl	%edx, %ecx	# tmp1097,
	movl	$102, %edx	#,
	movq	%rax, %rdi	# tmp1098,
	call	do_cmp_and_jump	#
	.loc 1 3708 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1099
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1099,
	call	emit_move_insn	#
	.loc 1 3709 0
	movq	-224(%rbp), %rax	# label2, tmp1100
	movq	%rax, %rdi	# tmp1100,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3710 0
	call	emit_barrier	#
	.loc 1 3711 0
	movq	-232(%rbp), %rax	# label1, tmp1101
	movq	%rax, %rdi	# tmp1101,
	call	emit_label	#
	.loc 1 3712 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-240(%rbp), %rax	# adjusted_op0, tmp1102
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1102,
	call	expand_dec	#
	.loc 1 3713 0
	movq	optab_table+104(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1103
	movq	-784(%rbp), %rcx	# op1, tmp1104
	movq	-240(%rbp), %rdx	# adjusted_op0, tmp1105
	movl	-740(%rbp), %eax	# compute_mode, tmp1106
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1103,
	movl	%eax, %edi	# tmp1106,
	call	expand_binop	#
	movq	%rax, -216(%rbp)	# tmp1107, tem
	.loc 1 3715 0
	movq	-216(%rbp), %rax	# tem, tmp1108
	cmpq	-688(%rbp), %rax	# quotient, tmp1108
	je	.L764	#,
	.loc 1 3716 0
	movq	-216(%rbp), %rdx	# tem, tmp1109
	movq	-688(%rbp), %rax	# quotient, tmp1110
	movq	%rdx, %rsi	# tmp1109,
	movq	%rax, %rdi	# tmp1110,
	call	emit_move_insn	#
.L764:
	.loc 1 3717 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1111
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1111,
	call	expand_inc	#
	.loc 1 3718 0
	movq	-224(%rbp), %rax	# label2, tmp1112
	movq	%rax, %rdi	# tmp1112,
	call	emit_label	#
.LBE72:
	.loc 1 3844 0
	jmp	.L644	#
.L749:
	.loc 1 3723 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L766	#,
	.loc 1 3723 0 is_stmt 0 discriminator 1
	movq	-784(%rbp), %rax	# op1, tmp1113
	movq	8(%rax), %rdx	# op1_8->fld[0].rtwint, D.17661
	movq	-784(%rbp), %rax	# op1, tmp1114
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	subq	$1, %rax	#, D.17661
	andq	%rdx, %rax	# D.17661, D.17661
	testq	%rax, %rax	# D.17661
	jne	.L766	#,
	.loc 1 3724 0 is_stmt 1
	movq	-784(%rbp), %rax	# op1, tmp1115
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	testq	%rax, %rax	# D.17661
	js	.L766	#,
.LBB73:
	.loc 1 3733 0
	movq	-784(%rbp), %rax	# op1, tmp1116
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, D.17661
	movq	%rax, -208(%rbp)	# D.17661, d
	.loc 1 3735 0
	movq	-208(%rbp), %rax	# d, tmp1117
	movq	%rax, %rdi	# tmp1117,
	call	floor_log2_wide	#
	.loc 1 3734 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-696(%rbp), %rsi	# tquotient, tmp1118
	movq	-776(%rbp), %rdx	# op0, tmp1119
	movl	-740(%rbp), %eax	# compute_mode, tmp1120
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp1118,
	movl	%eax, %esi	# tmp1120,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -200(%rbp)	# tmp1121, t1
	.loc 1 3738 0
	movq	-208(%rbp), %rax	# d, tmp1122
	subq	$1, %rax	#, D.17668
	.loc 1 3737 0
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.17662
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17669
	movq	-776(%rbp), %rdx	# op0, tmp1123
	movl	-740(%rbp), %eax	# compute_mode, tmp1124
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1124,
	call	expand_binop	#
	movq	%rax, -192(%rbp)	# tmp1125, t2
	.loc 1 3740 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1126
	movl	%eax, %edi	# tmp1126,
	call	gen_reg_rtx	#
	movq	%rax, -184(%rbp)	# tmp1127, t3
	.loc 1 3741 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17662
	movl	-740(%rbp), %esi	# compute_mode, tmp1128
	movq	-192(%rbp), %rdx	# t2, tmp1129
	movq	-184(%rbp), %rax	# t3, tmp1130
	movl	$1, (%rsp)	#,
	movl	$1, %r9d	#,
	movl	%esi, %r8d	# tmp1128,
	movl	$102, %esi	#,
	movq	%rax, %rdi	# tmp1130,
	call	emit_store_flag	#
	movq	%rax, -184(%rbp)	# tmp1131, t3
	.loc 1 3743 0
	cmpq	$0, -184(%rbp)	#, t3
	jne	.L767	#,
.LBB74:
	.loc 1 3746 0
	call	gen_label_rtx	#
	movq	%rax, -176(%rbp)	# tmp1132, lab
	.loc 1 3747 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-176(%rbp), %rcx	# lab, tmp1133
	movl	-740(%rbp), %edx	# compute_mode, tmp1134
	movq	-192(%rbp), %rax	# t2, tmp1135
	movq	%rcx, %r8	# tmp1133,
	movl	%edx, %ecx	# tmp1134,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp1135,
	call	do_cmp_and_jump	#
	.loc 1 3748 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-200(%rbp), %rax	# t1, tmp1136
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1136,
	call	expand_inc	#
	.loc 1 3749 0
	movq	-176(%rbp), %rax	# lab, tmp1137
	movq	%rax, %rdi	# tmp1137,
	call	emit_label	#
	.loc 1 3750 0
	movq	-200(%rbp), %rax	# t1, tmp1138
	movq	%rax, -688(%rbp)	# tmp1138, quotient
.LBE74:
	.loc 1 3756 0
	jmp	.L644	#
.L767:
	.loc 1 3753 0
	movq	-184(%rbp), %rcx	# t3, tmp1139
	movq	-200(%rbp), %rdx	# t1, tmp1140
	movl	-740(%rbp), %eax	# compute_mode, tmp1141
	movl	%eax, %esi	# tmp1141,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	-696(%rbp), %rdx	# tquotient, tmp1142
	movq	%rdx, %rsi	# tmp1142,
	movq	%rax, %rdi	# D.17662,
	call	force_operand	#
	movq	%rax, -688(%rbp)	# tmp1143, quotient
	.loc 1 3756 0
	jmp	.L644	#
.L766:
.LBE73:
	.loc 1 3764 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L769	#,
	.loc 1 3764 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp1144
	movzbl	2(%rax), %eax	# target_13->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	je	.L770	#,
.L769:
	.loc 1 3765 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1145
	movl	%eax, %edi	# tmp1145,
	call	gen_reg_rtx	#
	movq	%rax, -792(%rbp)	# tmp1146, target
.L770:
	.loc 1 3766 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L771	#,
	.loc 1 3768 0
	movq	-792(%rbp), %rax	# target, tmp1147
	movzwl	(%rax), %eax	# target_16->code, D.17659
	.loc 1 3769 0
	cmpw	$61, %ax	#, D.17659
	je	.L772	#,
	.loc 1 3769 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1148
	movl	%eax, %edi	# tmp1148,
	call	gen_reg_rtx	#
	jmp	.L773	#
.L772:
	.loc 1 3769 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.456
.L773:
	.loc 1 3768 0 is_stmt 1 discriminator 3
	movq	%rax, -680(%rbp)	# iftmp.456, remainder
	.loc 1 3770 0 discriminator 3
	movl	-740(%rbp), %eax	# compute_mode, tmp1149
	movl	%eax, %edi	# tmp1149,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1150, quotient
	jmp	.L774	#
.L771:
	.loc 1 3774 0
	movq	-792(%rbp), %rax	# target, tmp1151
	movzwl	(%rax), %eax	# target_16->code, D.17659
	.loc 1 3775 0
	cmpw	$61, %ax	#, D.17659
	je	.L775	#,
	.loc 1 3775 0 is_stmt 0 discriminator 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1152
	movl	%eax, %edi	# tmp1152,
	call	gen_reg_rtx	#
	jmp	.L776	#
.L775:
	.loc 1 3775 0 discriminator 2
	movq	-792(%rbp), %rax	# target, iftmp.457
.L776:
	.loc 1 3774 0 is_stmt 1
	movq	%rax, -688(%rbp)	# iftmp.457, quotient
	.loc 1 3776 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1153
	movl	%eax, %edi	# tmp1153,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp1154, remainder
.L774:
	.loc 1 3779 0
	movq	optab_table+96(%rip), %rax	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1155
	movq	-688(%rbp), %rcx	# quotient, tmp1156
	movq	-784(%rbp), %rdx	# op1, tmp1157
	movq	-776(%rbp), %rsi	# op0, tmp1158
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1155,
	movq	%rax, %rdi	# D.17669,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	je	.L777	#,
.LBB75:
	.loc 1 3785 0
	call	gen_label_rtx	#
	movq	%rax, -168(%rbp)	# tmp1159, label
	.loc 1 3786 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-168(%rbp), %rcx	# label, tmp1160
	movl	-740(%rbp), %edx	# compute_mode, tmp1161
	movq	-680(%rbp), %rax	# remainder, tmp1162
	movq	%rcx, %r8	# tmp1160,
	movl	%edx, %ecx	# tmp1161,
	movl	$103, %edx	#,
	movq	%rax, %rdi	# tmp1162,
	call	do_cmp_and_jump	#
	.loc 1 3788 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-784(%rbp), %rcx	# op1, tmp1163
	movq	-776(%rbp), %rdx	# op0, tmp1164
	movl	-740(%rbp), %eax	# compute_mode, tmp1165
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1165,
	call	expand_binop	#
	movq	%rax, -160(%rbp)	# tmp1166, tem
	.loc 1 3790 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-168(%rbp), %rcx	# label, tmp1167
	movl	-740(%rbp), %edx	# compute_mode, tmp1168
	movq	-160(%rbp), %rax	# tem, tmp1169
	movq	%rcx, %r8	# tmp1167,
	movl	%edx, %ecx	# tmp1168,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp1169,
	call	do_cmp_and_jump	#
	.loc 1 3791 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1170
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1170,
	call	expand_inc	#
	.loc 1 3792 0
	movq	-784(%rbp), %rdx	# op1, tmp1171
	movq	-680(%rbp), %rax	# remainder, tmp1172
	movq	%rdx, %rsi	# tmp1171,
	movq	%rax, %rdi	# tmp1172,
	call	expand_dec	#
	.loc 1 3793 0
	movq	-168(%rbp), %rax	# label, tmp1173
	movq	%rax, %rdi	# tmp1173,
	call	emit_label	#
	.loc 1 3794 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L778	#,
	.loc 1 3794 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# remainder, iftmp.458
	jmp	.L779	#
.L778:
	.loc 1 3794 0 discriminator 2
	movq	-688(%rbp), %rax	# quotient, iftmp.458
.L779:
	.loc 1 3794 0 discriminator 3
	movl	-764(%rbp), %edx	# mode, tmp1174
	movq	%rax, %rsi	# iftmp.458,
	movl	%edx, %edi	# tmp1174,
	call	gen_lowpart	#
	jmp	.L598	#
.L777:
.LBE75:
.LBB76:
	.loc 1 3804 0 is_stmt 1
	movl	-740(%rbp), %eax	# compute_mode, tmp1175
	movl	%eax, %edi	# tmp1175,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1176, quotient
	.loc 1 3805 0
	movq	-776(%rbp), %rdx	# op0, tmp1177
	movl	-740(%rbp), %eax	# compute_mode, tmp1178
	movq	%rdx, %rsi	# tmp1177,
	movl	%eax, %edi	# tmp1178,
	call	copy_to_mode_reg	#
	movq	%rax, -152(%rbp)	# tmp1179, adjusted_op0
	.loc 1 3806 0
	call	gen_label_rtx	#
	movq	%rax, -144(%rbp)	# tmp1180, label1
	.loc 1 3807 0
	call	gen_label_rtx	#
	movq	%rax, -136(%rbp)	# tmp1181, label2
	.loc 1 3808 0
	call	gen_label_rtx	#
	movq	%rax, -128(%rbp)	# tmp1182, label3
	.loc 1 3809 0
	call	gen_label_rtx	#
	movq	%rax, -120(%rbp)	# tmp1183, label4
	.loc 1 3810 0
	call	gen_label_rtx	#
	movq	%rax, -112(%rbp)	# tmp1184, label5
	.loc 1 3811 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-136(%rbp), %rcx	# label2, tmp1185
	movl	-740(%rbp), %edx	# compute_mode, tmp1186
	movq	-784(%rbp), %rax	# op1, tmp1187
	movq	%rcx, %r8	# tmp1185,
	movl	%edx, %ecx	# tmp1186,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp1187,
	call	do_cmp_and_jump	#
	.loc 1 3812 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-144(%rbp), %rcx	# label1, tmp1188
	movl	-740(%rbp), %edx	# compute_mode, tmp1189
	movq	-152(%rbp), %rax	# adjusted_op0, tmp1190
	movq	%rcx, %r8	# tmp1188,
	movl	%edx, %ecx	# tmp1189,
	movl	$105, %edx	#,
	movq	%rax, %rdi	# tmp1190,
	call	do_cmp_and_jump	#
	.loc 1 3814 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1191
	movq	-784(%rbp), %rcx	# op1, tmp1192
	movq	-152(%rbp), %rdx	# adjusted_op0, tmp1193
	movl	-740(%rbp), %eax	# compute_mode, tmp1194
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1191,
	movl	%eax, %edi	# tmp1194,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp1195, tem
	.loc 1 3816 0
	movq	-104(%rbp), %rax	# tem, tmp1196
	cmpq	-688(%rbp), %rax	# quotient, tmp1196
	je	.L780	#,
	.loc 1 3817 0
	movq	-104(%rbp), %rdx	# tem, tmp1197
	movq	-688(%rbp), %rax	# quotient, tmp1198
	movq	%rdx, %rsi	# tmp1197,
	movq	%rax, %rdi	# tmp1198,
	call	emit_move_insn	#
.L780:
	.loc 1 3818 0
	movq	-112(%rbp), %rax	# label5, tmp1199
	movq	%rax, %rdi	# tmp1199,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3819 0
	call	emit_barrier	#
	.loc 1 3820 0
	movq	-144(%rbp), %rax	# label1, tmp1200
	movq	%rax, %rdi	# tmp1200,
	call	emit_label	#
	.loc 1 3821 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-152(%rbp), %rax	# adjusted_op0, tmp1201
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1201,
	call	expand_dec	#
	.loc 1 3822 0
	movq	-120(%rbp), %rax	# label4, tmp1202
	movq	%rax, %rdi	# tmp1202,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3823 0
	call	emit_barrier	#
	.loc 1 3824 0
	movq	-136(%rbp), %rax	# label2, tmp1203
	movq	%rax, %rdi	# tmp1203,
	call	emit_label	#
	.loc 1 3825 0
	movq	const_int_rtx+512(%rip), %rsi	# const_int_rtx, D.17662
	movq	-128(%rbp), %rcx	# label3, tmp1204
	movl	-740(%rbp), %edx	# compute_mode, tmp1205
	movq	-152(%rbp), %rax	# adjusted_op0, tmp1206
	movq	%rcx, %r8	# tmp1204,
	movl	%edx, %ecx	# tmp1205,
	movl	$107, %edx	#,
	movq	%rax, %rdi	# tmp1206,
	call	do_cmp_and_jump	#
	.loc 1 3827 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1207
	movq	-784(%rbp), %rcx	# op1, tmp1208
	movq	-152(%rbp), %rdx	# adjusted_op0, tmp1209
	movl	-740(%rbp), %eax	# compute_mode, tmp1210
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1207,
	movl	%eax, %edi	# tmp1210,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp1211, tem
	.loc 1 3829 0
	movq	-104(%rbp), %rax	# tem, tmp1212
	cmpq	-688(%rbp), %rax	# quotient, tmp1212
	je	.L781	#,
	.loc 1 3830 0
	movq	-104(%rbp), %rdx	# tem, tmp1213
	movq	-688(%rbp), %rax	# quotient, tmp1214
	movq	%rdx, %rsi	# tmp1213,
	movq	%rax, %rdi	# tmp1214,
	call	emit_move_insn	#
.L781:
	.loc 1 3831 0
	movq	-112(%rbp), %rax	# label5, tmp1215
	movq	%rax, %rdi	# tmp1215,
	call	gen_jump	#
	movq	%rax, %rdi	# D.17662,
	call	emit_jump_insn	#
	.loc 1 3832 0
	call	emit_barrier	#
	.loc 1 3833 0
	movq	-128(%rbp), %rax	# label3, tmp1216
	movq	%rax, %rdi	# tmp1216,
	call	emit_label	#
	.loc 1 3834 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-152(%rbp), %rax	# adjusted_op0, tmp1217
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1217,
	call	expand_inc	#
	.loc 1 3835 0
	movq	-120(%rbp), %rax	# label4, tmp1218
	movq	%rax, %rdi	# tmp1218,
	call	emit_label	#
	.loc 1 3836 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1219
	movq	-784(%rbp), %rcx	# op1, tmp1220
	movq	-152(%rbp), %rdx	# adjusted_op0, tmp1221
	movl	-740(%rbp), %eax	# compute_mode, tmp1222
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1219,
	movl	%eax, %edi	# tmp1222,
	call	expand_binop	#
	movq	%rax, -104(%rbp)	# tmp1223, tem
	.loc 1 3838 0
	movq	-104(%rbp), %rax	# tem, tmp1224
	cmpq	-688(%rbp), %rax	# quotient, tmp1224
	je	.L782	#,
	.loc 1 3839 0
	movq	-104(%rbp), %rdx	# tem, tmp1225
	movq	-688(%rbp), %rax	# quotient, tmp1226
	movq	%rdx, %rsi	# tmp1225,
	movq	%rax, %rdi	# tmp1226,
	call	emit_move_insn	#
.L782:
	.loc 1 3840 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1227
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1227,
	call	expand_inc	#
	.loc 1 3841 0
	movq	-112(%rbp), %rax	# label5, tmp1228
	movq	%rax, %rdi	# tmp1228,
	call	emit_label	#
.LBE76:
	.loc 1 3844 0
	jmp	.L644	#
.L651:
	.loc 1 3847 0
	cmpl	$0, -736(%rbp)	#, op1_is_constant
	je	.L783	#,
	.loc 1 3847 0 is_stmt 0 discriminator 1
	cmpl	$64, -724(%rbp)	#, size
	jg	.L783	#,
.LBB77:
	.loc 1 3849 0 is_stmt 1
	movq	-784(%rbp), %rax	# op1, tmp1229
	movq	8(%rax), %rax	# op1_8->fld[0].rtwint, tmp1230
	movq	%rax, -96(%rbp)	# tmp1230, d
	.loc 1 3854 0
	movq	-96(%rbp), %rax	# d, tmp1231
	negq	%rax	# D.17661
	andq	-96(%rbp), %rax	# d, D.17661
	movq	%rax, %rdi	# D.17668,
	call	floor_log2_wide	#
	movl	%eax, -708(%rbp)	# tmp1232, pre_shift
	.loc 1 3855 0
	movl	-708(%rbp), %eax	# pre_shift, tmp1233
	movq	-96(%rbp), %rdx	# d, tmp1234
	movl	%eax, %ecx	# tmp1233, tmp1431
	sarq	%cl, %rdx	# tmp1431, D.17661
	movq	%rdx, %rax	# D.17661, D.17661
	movl	-724(%rbp), %edx	# size, tmp1235
	movl	%edx, %esi	# tmp1235,
	movq	%rax, %rdi	# D.17668,
	call	invert_mod2n	#
	movq	%rax, -88(%rbp)	# tmp1236, ml
	.loc 1 3856 0
	movl	-708(%rbp), %eax	# pre_shift, tmp1237
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-776(%rbp), %rdx	# op0, tmp1238
	movl	-740(%rbp), %eax	# compute_mode, tmp1239
	movl	16(%rbp), %r9d	# unsignedp,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp1239,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -80(%rbp)	# tmp1240, t1
	.loc 1 3858 0
	movq	-88(%rbp), %rax	# ml, ml.459
	movl	-740(%rbp), %edx	# compute_mode, tmp1241
	movl	%edx, %esi	# tmp1241,
	movq	%rax, %rdi	# ml.459,
	call	trunc_int_for_mode	#
	movq	%rax, %rsi	# D.17661,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.17662
	movq	-80(%rbp), %rsi	# t1, tmp1242
	movl	-740(%rbp), %eax	# compute_mode, tmp1243
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp1243,
	call	expand_mult	#
	movq	%rax, -688(%rbp)	# tmp1244, quotient
	.loc 1 3863 0
	call	get_last_insn	#
	movq	%rax, -576(%rbp)	# tmp1245, insn
	.loc 1 3864 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L784	#,
	.loc 1 3864 0 is_stmt 0 discriminator 1
	movl	$81, %eax	#, iftmp.460
	jmp	.L785	#
.L784:
	.loc 1 3864 0 discriminator 2
	movl	$79, %eax	#, iftmp.460
.L785:
	.loc 1 3864 0 discriminator 3
	movq	-784(%rbp), %rcx	# op1, tmp1246
	movq	-776(%rbp), %rdx	# op0, tmp1247
	movl	-740(%rbp), %esi	# compute_mode, tmp1248
	movl	%eax, %edi	# iftmp.460,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.17662
	movq	-576(%rbp), %rax	# insn, tmp1249
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp1249,
	call	set_unique_reg_note	#
.LBE77:
	.loc 1 3870 0 is_stmt 1 discriminator 3
	jmp	.L644	#
.L783:
	.loc 1 3870 0 is_stmt 0
	jmp	.L644	#
.L650:
	.loc 1 3874 0 is_stmt 1
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L786	#,
.LBB78:
	.loc 1 3878 0
	call	gen_label_rtx	#
	movq	%rax, -72(%rbp)	# tmp1250, label
	.loc 1 3879 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1251
	movl	%eax, %edi	# tmp1251,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1252, quotient
	.loc 1 3880 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1253
	movl	%eax, %edi	# tmp1253,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp1254, remainder
	.loc 1 3881 0
	movq	optab_table+112(%rip), %rax	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1255
	movq	-688(%rbp), %rcx	# quotient, tmp1256
	movq	-784(%rbp), %rdx	# op1, tmp1257
	movq	-776(%rbp), %rsi	# op0, tmp1258
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1255,
	movq	%rax, %rdi	# D.17669,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	jne	.L787	#,
.LBB79:
	.loc 1 3884 0
	movq	optab_table+104(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1259
	movq	-784(%rbp), %rcx	# op1, tmp1260
	movq	-776(%rbp), %rdx	# op0, tmp1261
	movl	-740(%rbp), %eax	# compute_mode, tmp1262
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1259,
	movl	%eax, %edi	# tmp1262,
	call	expand_binop	#
	movq	%rax, -688(%rbp)	# tmp1263, quotient
	.loc 1 3886 0
	movq	-784(%rbp), %rdx	# op1, tmp1264
	movq	-688(%rbp), %rsi	# quotient, tmp1265
	movl	-740(%rbp), %eax	# compute_mode, tmp1266
	movl	$1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp1266,
	call	expand_mult	#
	movq	%rax, -64(%rbp)	# tmp1267, tem
	.loc 1 3887 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1268
	movq	-64(%rbp), %rcx	# tem, tmp1269
	movq	-776(%rbp), %rdx	# op0, tmp1270
	movl	-740(%rbp), %eax	# compute_mode, tmp1271
	movl	$3, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp1268,
	movl	%eax, %edi	# tmp1271,
	call	expand_binop	#
	movq	%rax, -680(%rbp)	# tmp1272, remainder
.L787:
.LBE79:
	.loc 1 3890 0
	movq	-784(%rbp), %rax	# op1, tmp1273
	movq	$-1, %rsi	#,
	movq	%rax, %rdi	# tmp1273,
	call	plus_constant_wide	#
	movq	%rax, -56(%rbp)	# tmp1274, tem
	.loc 1 3891 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-56(%rbp), %rdx	# tem, tmp1275
	movl	-740(%rbp), %eax	# compute_mode, tmp1276
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp1276,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -56(%rbp)	# tmp1277, tem
	.loc 1 3893 0
	movq	-72(%rbp), %rcx	# label, tmp1278
	movl	-740(%rbp), %edx	# compute_mode, tmp1279
	movq	-56(%rbp), %rsi	# tem, tmp1280
	movq	-680(%rbp), %rax	# remainder, tmp1281
	movq	%rcx, %r8	# tmp1278,
	movl	%edx, %ecx	# tmp1279,
	movl	$110, %edx	#,
	movq	%rax, %rdi	# tmp1281,
	call	do_cmp_and_jump	#
	.loc 1 3894 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17662
	movq	-688(%rbp), %rax	# quotient, tmp1282
	movq	%rdx, %rsi	# D.17662,
	movq	%rax, %rdi	# tmp1282,
	call	expand_inc	#
	.loc 1 3895 0
	movq	-784(%rbp), %rdx	# op1, tmp1283
	movq	-680(%rbp), %rax	# remainder, tmp1284
	movq	%rdx, %rsi	# tmp1283,
	movq	%rax, %rdi	# tmp1284,
	call	expand_dec	#
	.loc 1 3896 0
	movq	-72(%rbp), %rax	# label, tmp1285
	movq	%rax, %rdi	# tmp1285,
	call	emit_label	#
.LBE78:
	jmp	.L788	#
.L786:
.LBB80:
	.loc 1 3902 0
	call	gen_label_rtx	#
	movq	%rax, -48(%rbp)	# tmp1286, label
	.loc 1 3903 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1287
	movl	%eax, %edi	# tmp1287,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1288, quotient
	.loc 1 3904 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1289
	movl	%eax, %edi	# tmp1289,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp1290, remainder
	.loc 1 3905 0
	movq	optab_table+96(%rip), %rax	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1291
	movq	-688(%rbp), %rcx	# quotient, tmp1292
	movq	-784(%rbp), %rdx	# op1, tmp1293
	movq	-776(%rbp), %rsi	# op0, tmp1294
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1291,
	movq	%rax, %rdi	# D.17669,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	jne	.L789	#,
.LBB81:
	.loc 1 3908 0
	movq	optab_table+80(%rip), %rsi	# optab_table, D.17669
	movq	-688(%rbp), %rdi	# quotient, tmp1295
	movq	-784(%rbp), %rcx	# op1, tmp1296
	movq	-776(%rbp), %rdx	# op0, tmp1297
	movl	-740(%rbp), %eax	# compute_mode, tmp1298
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1295,
	movl	%eax, %edi	# tmp1298,
	call	expand_binop	#
	movq	%rax, -688(%rbp)	# tmp1299, quotient
	.loc 1 3910 0
	movq	-784(%rbp), %rdx	# op1, tmp1300
	movq	-688(%rbp), %rsi	# quotient, tmp1301
	movl	-740(%rbp), %eax	# compute_mode, tmp1302
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp1302,
	call	expand_mult	#
	movq	%rax, -40(%rbp)	# tmp1303, tem
	.loc 1 3911 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17669
	movq	-680(%rbp), %rdi	# remainder, tmp1304
	movq	-40(%rbp), %rcx	# tem, tmp1305
	movq	-776(%rbp), %rdx	# op0, tmp1306
	movl	-740(%rbp), %eax	# compute_mode, tmp1307
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp1304,
	movl	%eax, %edi	# tmp1307,
	call	expand_binop	#
	movq	%rax, -680(%rbp)	# tmp1308, remainder
.L789:
.LBE81:
	.loc 1 3914 0
	movq	-680(%rbp), %rsi	# remainder, tmp1309
	movl	-740(%rbp), %eax	# compute_mode, tmp1310
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp1310,
	call	expand_abs	#
	movq	%rax, -32(%rbp)	# tmp1311, abs_rem
	.loc 1 3915 0
	movq	-784(%rbp), %rsi	# op1, tmp1312
	movl	-740(%rbp), %eax	# compute_mode, tmp1313
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp1313,
	call	expand_abs	#
	movq	%rax, -24(%rbp)	# tmp1314, abs_op1
	.loc 1 3916 0
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-32(%rbp), %rdx	# abs_rem, tmp1315
	movl	-740(%rbp), %eax	# compute_mode, tmp1316
	movl	$1, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp1316,
	movl	$82, %edi	#,
	call	expand_shift	#
	movq	%rax, -16(%rbp)	# tmp1317, tem
	.loc 1 3918 0
	movq	-48(%rbp), %rcx	# label, tmp1318
	movl	-740(%rbp), %edx	# compute_mode, tmp1319
	movq	-24(%rbp), %rsi	# abs_op1, tmp1320
	movq	-16(%rbp), %rax	# tem, tmp1321
	movq	%rcx, %r8	# tmp1318,
	movl	%edx, %ecx	# tmp1319,
	movl	$111, %edx	#,
	movq	%rax, %rdi	# tmp1321,
	call	do_cmp_and_jump	#
	.loc 1 3919 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-784(%rbp), %rcx	# op1, tmp1322
	movq	-776(%rbp), %rdx	# op0, tmp1323
	movl	-740(%rbp), %eax	# compute_mode, tmp1324
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1324,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp1325, tem
	.loc 1 3922 0
	movl	-724(%rbp), %eax	# size, tmp1326
	subl	$1, %eax	#, D.17665
	.loc 1 3921 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17668,
	call	build_int_2_wide	#
	movq	%rax, %rcx	#, D.17670
	movq	-16(%rbp), %rdx	# tem, tmp1327
	movl	-740(%rbp), %eax	# compute_mode, tmp1328
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %esi	# tmp1328,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -8(%rbp)	# tmp1329, mask
	.loc 1 3923 0
	movq	const_int_rtx+520(%rip), %rcx	# const_int_rtx, D.17662
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-8(%rbp), %rdx	# mask, tmp1330
	movl	-740(%rbp), %eax	# compute_mode, tmp1331
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1331,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp1332, tem
	.loc 1 3925 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17669
	movq	-8(%rbp), %rcx	# mask, tmp1333
	movq	-16(%rbp), %rdx	# tem, tmp1334
	movl	-740(%rbp), %eax	# compute_mode, tmp1335
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1335,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp1336, tem
	.loc 1 3927 0
	movq	-16(%rbp), %rdx	# tem, tmp1337
	movq	-688(%rbp), %rax	# quotient, tmp1338
	movq	%rdx, %rsi	# tmp1337,
	movq	%rax, %rdi	# tmp1338,
	call	expand_inc	#
	.loc 1 3928 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17669
	movq	-784(%rbp), %rcx	# op1, tmp1339
	movq	-8(%rbp), %rdx	# mask, tmp1340
	movl	-740(%rbp), %eax	# compute_mode, tmp1341
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1341,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp1342, tem
	.loc 1 3930 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17669
	movq	-8(%rbp), %rcx	# mask, tmp1343
	movq	-16(%rbp), %rdx	# tem, tmp1344
	movl	-740(%rbp), %eax	# compute_mode, tmp1345
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp1345,
	call	expand_binop	#
	movq	%rax, -16(%rbp)	# tmp1346, tem
	.loc 1 3932 0
	movq	-16(%rbp), %rdx	# tem, tmp1347
	movq	-680(%rbp), %rax	# remainder, tmp1348
	movq	%rdx, %rsi	# tmp1347,
	movq	%rax, %rdi	# tmp1348,
	call	expand_dec	#
	.loc 1 3933 0
	movq	-48(%rbp), %rax	# label, tmp1349
	movq	%rax, %rdi	# tmp1349,
	call	emit_label	#
.L788:
.LBE80:
	.loc 1 3935 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L790	#,
	.loc 1 3935 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# remainder, iftmp.461
	jmp	.L791	#
.L790:
	.loc 1 3935 0 discriminator 2
	movq	-688(%rbp), %rax	# quotient, iftmp.461
.L791:
	.loc 1 3935 0 discriminator 3
	movl	-764(%rbp), %edx	# mode, tmp1350
	movq	%rax, %rsi	# iftmp.461,
	movl	%edx, %edi	# tmp1350,
	call	gen_lowpart	#
	jmp	.L598	#
.L645:
	.loc 1 3938 0 is_stmt 1
	movl	$__FUNCTION__.13214, %edx	#,
	movl	$3938, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L644:
	.loc 1 3941 0
	cmpq	$0, -688(%rbp)	#, quotient
	jne	.L792	#,
	.loc 1 3943 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L793	#,
	.loc 1 3943 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp1351
	movzbl	2(%rax), %eax	# target_18->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	je	.L793	#,
	.loc 1 3944 0 is_stmt 1
	movq	$0, -792(%rbp)	#, target
.L793:
	.loc 1 3946 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L794	#,
	.loc 1 3961 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.463
	movq	-648(%rbp), %rax	# optab2, tmp1352
	movslq	%edx, %rdx	# compute_mode.463, tmp1353
	salq	$4, %rdx	#, tmp1354
	addq	%rdx, %rax	# tmp1354, tmp1355
	movl	8(%rax), %eax	# optab2_180->handlers[compute_mode.463_812].insn_code, D.17666
	.loc 1 3958 0
	cmpl	$1317, %eax	#, D.17666
	je	.L795	#,
	.loc 1 3958 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.462
	jmp	.L796	#
.L795:
	.loc 1 3958 0 discriminator 2
	movl	$2, %eax	#, iftmp.462
.L796:
	.loc 1 3958 0 discriminator 3
	movq	optab_table+120(%rip), %rdx	# optab_table, D.17669
	movq	optab_table+128(%rip), %rsi	# optab_table, D.17669
	movq	-792(%rbp), %r9	# target, tmp1356
	movq	-784(%rbp), %r8	# op1, tmp1357
	movq	-776(%rbp), %rcx	# op0, tmp1358
	movl	-740(%rbp), %edi	# compute_mode, tmp1359
	movl	%eax, 8(%rsp)	# iftmp.462,
	movl	16(%rbp), %eax	# unsignedp, tmp1360
	movl	%eax, (%rsp)	# tmp1360,
	call	sign_expand_binop	#
	movq	%rax, -680(%rbp)	# tmp1361, remainder
	.loc 1 3964 0 is_stmt 1 discriminator 3
	cmpq	$0, -680(%rbp)	#, remainder
	jne	.L797	#,
	.loc 1 3968 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1362
	movl	%eax, %edi	# tmp1362,
	call	gen_reg_rtx	#
	movq	%rax, -680(%rbp)	# tmp1363, remainder
	.loc 1 3969 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L798	#,
	.loc 1 3969 0 is_stmt 0 discriminator 1
	movq	optab_table+112(%rip), %rax	# optab_table, iftmp.464
	jmp	.L799	#
.L798:
	.loc 1 3969 0 discriminator 2
	movq	optab_table+96(%rip), %rax	# optab_table, iftmp.464
.L799:
	.loc 1 3969 0 discriminator 3
	movq	-680(%rbp), %rcx	# remainder, tmp1364
	movq	-784(%rbp), %rdx	# op1, tmp1365
	movq	-776(%rbp), %rsi	# op0, tmp1366
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rcx, %r8	# tmp1364,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# iftmp.464,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	jne	.L797	#,
	.loc 1 3974 0 is_stmt 1
	movq	$0, -680(%rbp)	#, remainder
.L797:
	.loc 1 3977 0
	cmpq	$0, -680(%rbp)	#, remainder
	je	.L794	#,
	.loc 1 3978 0
	movq	-680(%rbp), %rdx	# remainder, tmp1367
	movl	-764(%rbp), %eax	# mode, tmp1368
	movq	%rdx, %rsi	# tmp1367,
	movl	%eax, %edi	# tmp1368,
	call	gen_lowpart	#
	jmp	.L598	#
.L794:
	.loc 1 3989 0
	movl	-740(%rbp), %edx	# compute_mode, compute_mode.466
	movq	-648(%rbp), %rax	# optab2, tmp1369
	movslq	%edx, %rdx	# compute_mode.466, tmp1370
	salq	$4, %rdx	#, tmp1371
	addq	%rdx, %rax	# tmp1371, tmp1372
	movl	8(%rax), %eax	# optab2_180->handlers[compute_mode.466_825].insn_code, D.17666
	.loc 1 3986 0
	cmpl	$1317, %eax	#, D.17666
	je	.L800	#,
	.loc 1 3986 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.465
	jmp	.L801	#
.L800:
	.loc 1 3986 0 discriminator 2
	movl	$2, %eax	#, iftmp.465
.L801:
	.loc 1 3986 0 discriminator 3
	cmpl	$0, -756(%rbp)	#, rem_flag
	jne	.L802	#,
	.loc 1 3986 0 discriminator 4
	movq	-792(%rbp), %rdx	# target, iftmp.467
	jmp	.L803	#
.L802:
	.loc 1 3986 0 discriminator 5
	movl	$0, %edx	#, iftmp.467
.L803:
	.loc 1 3986 0 discriminator 6
	movq	optab_table+80(%rip), %r10	# optab_table, D.17669
	movq	optab_table+104(%rip), %rsi	# optab_table, D.17669
	movq	-784(%rbp), %r8	# op1, tmp1373
	movq	-776(%rbp), %rcx	# op0, tmp1374
	movl	-740(%rbp), %edi	# compute_mode, tmp1375
	movl	%eax, 8(%rsp)	# iftmp.465,
	movl	16(%rbp), %eax	# unsignedp, tmp1376
	movl	%eax, (%rsp)	# tmp1376,
	movq	%rdx, %r9	# iftmp.467,
	movq	%r10, %rdx	# D.17669,
	call	sign_expand_binop	#
	movq	%rax, -688(%rbp)	# tmp1377, quotient
	.loc 1 3993 0 is_stmt 1 discriminator 6
	cmpq	$0, -688(%rbp)	#, quotient
	jne	.L792	#,
	.loc 1 3997 0
	movl	-740(%rbp), %eax	# compute_mode, tmp1378
	movl	%eax, %edi	# tmp1378,
	call	gen_reg_rtx	#
	movq	%rax, -688(%rbp)	# tmp1379, quotient
	.loc 1 3998 0
	cmpl	$0, 16(%rbp)	#, unsignedp
	je	.L804	#,
	.loc 1 3998 0 is_stmt 0 discriminator 1
	movq	optab_table+112(%rip), %rax	# optab_table, iftmp.468
	jmp	.L805	#
.L804:
	.loc 1 3998 0 discriminator 2
	movq	optab_table+96(%rip), %rax	# optab_table, iftmp.468
.L805:
	.loc 1 3998 0 discriminator 3
	movq	-688(%rbp), %rcx	# quotient, tmp1380
	movq	-784(%rbp), %rdx	# op1, tmp1381
	movq	-776(%rbp), %rsi	# op0, tmp1382
	movl	16(%rbp), %r9d	# unsignedp,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# iftmp.468,
	call	expand_twoval_binop	#
	testl	%eax, %eax	# D.17665
	jne	.L792	#,
	.loc 1 4002 0 is_stmt 1
	movq	$0, -688(%rbp)	#, quotient
	.loc 1 4003 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	jne	.L792	#,
	.loc 1 4006 0
	movq	optab_table+80(%rip), %rdx	# optab_table, D.17669
	movq	optab_table+104(%rip), %rsi	# optab_table, D.17669
	movq	-792(%rbp), %r9	# target, tmp1383
	movq	-784(%rbp), %r8	# op1, tmp1384
	movq	-776(%rbp), %rcx	# op0, tmp1385
	movl	-740(%rbp), %eax	# compute_mode, tmp1386
	movl	$3, 8(%rsp)	#,
	movl	16(%rbp), %edi	# unsignedp, tmp1387
	movl	%edi, (%rsp)	# tmp1387,
	movl	%eax, %edi	# tmp1386,
	call	sign_expand_binop	#
	movq	%rax, -688(%rbp)	# tmp1388, quotient
.L792:
	.loc 1 4014 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L806	#,
	.loc 1 4016 0
	cmpq	$0, -792(%rbp)	#, target
	je	.L807	#,
	.loc 1 4016 0 is_stmt 0 discriminator 1
	movq	-792(%rbp), %rax	# target, tmp1389
	movzbl	2(%rax), %eax	# target_20->mode, D.17664
	movzbl	%al, %eax	# D.17664, D.17667
	cmpl	-740(%rbp), %eax	# compute_mode, D.17667
	je	.L807	#,
	.loc 1 4017 0 is_stmt 1
	movq	$0, -792(%rbp)	#, target
.L807:
	.loc 1 4019 0
	cmpq	$0, -688(%rbp)	#, quotient
	jne	.L808	#,
	.loc 1 4021 0
	movq	optab_table+120(%rip), %rdx	# optab_table, D.17669
	movq	optab_table+128(%rip), %rsi	# optab_table, D.17669
	movq	-792(%rbp), %r9	# target, tmp1390
	movq	-784(%rbp), %r8	# op1, tmp1391
	movq	-776(%rbp), %rcx	# op0, tmp1392
	movl	-740(%rbp), %eax	# compute_mode, tmp1393
	movl	$3, 8(%rsp)	#,
	movl	16(%rbp), %edi	# unsignedp, tmp1394
	movl	%edi, (%rsp)	# tmp1394,
	movl	%eax, %edi	# tmp1393,
	call	sign_expand_binop	#
	movq	%rax, -680(%rbp)	# tmp1395, remainder
	jmp	.L806	#
.L808:
	.loc 1 4027 0
	movq	-784(%rbp), %rdx	# op1, tmp1396
	movq	-688(%rbp), %rsi	# quotient, tmp1397
	movl	-740(%rbp), %eax	# compute_mode, tmp1398
	movl	16(%rbp), %r8d	# unsignedp,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp1398,
	call	expand_mult	#
	movq	%rax, -680(%rbp)	# tmp1399, remainder
	.loc 1 4029 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17669
	movq	-792(%rbp), %rdi	# target, tmp1400
	movq	-680(%rbp), %rcx	# remainder, tmp1401
	movq	-776(%rbp), %rdx	# op0, tmp1402
	movl	-740(%rbp), %eax	# compute_mode, tmp1403
	movl	$3, (%rsp)	#,
	movl	16(%rbp), %r9d	# unsignedp,
	movq	%rdi, %r8	# tmp1400,
	movl	%eax, %edi	# tmp1403,
	call	expand_binop	#
	movq	%rax, -680(%rbp)	# tmp1404, remainder
.L806:
	.loc 1 4035 0
	cmpl	$0, -756(%rbp)	#, rem_flag
	je	.L809	#,
	.loc 1 4035 0 is_stmt 0 discriminator 1
	movq	-680(%rbp), %rax	# remainder, iftmp.469
	jmp	.L810	#
.L809:
	.loc 1 4035 0 discriminator 2
	movq	-688(%rbp), %rax	# quotient, iftmp.469
.L810:
	.loc 1 4035 0 discriminator 3
	movl	-764(%rbp), %edx	# mode, tmp1405
	movq	%rax, %rsi	# iftmp.469,
	movl	%edx, %edi	# tmp1405,
	call	gen_lowpart	#
.L598:
	.loc 1 4036 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	expand_divmod, .-expand_divmod
	.globl	make_tree
	.type	make_tree, @function
make_tree:
.LFB24:
	.loc 1 4047 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -120(%rbp)	# type, type
	movq	%rsi, -128(%rbp)	# x, x
	.loc 1 4050 0
	movq	-128(%rbp), %rax	# x, tmp143
	movzwl	(%rax), %eax	# x_7(D)->code, D.17674
	movzwl	%ax, %eax	# D.17674, D.17675
	subl	$54, %eax	#, tmp144
	cmpl	$67, %eax	#, tmp144
	ja	.L814	#,
	movl	%eax, %eax	# tmp144, tmp145
	movq	.L816(,%rax,8), %rax	#, tmp146
	jmp	*%rax	# tmp146
	.section	.rodata
	.align 8
	.align 4
.L816:
	.quad	.L815
	.quad	.L817
	.quad	.L818
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L819
	.quad	.L820
	.quad	.L821
	.quad	.L822
	.quad	.L823
	.quad	.L814
	.quad	.L824
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L825
	.quad	.L814
	.quad	.L826
	.quad	.L827
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L814
	.quad	.L828
	.quad	.L828
	.text
.L815:
	.loc 1 4053 0
	movq	-120(%rbp), %rax	# type, tmp147
	movzbl	17(%rax), %eax	# *type_10(D), D.17676
	andl	$32, %eax	#, D.17676
	testb	%al, %al	# D.17676
	je	.L829	#,
	.loc 1 4053 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# type, tmp148
	movzbl	61(%rax), %eax	# *type_10(D), tmp151
	shrb	%al	# D.17677
	movzbl	%al, %eax	# D.17677, D.17678
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17674
	cmpw	$63, %ax	#, D.17674
	jbe	.L830	#,
.L829:
	.loc 1 4053 0 discriminator 2
	movq	-128(%rbp), %rax	# x, tmp153
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtwint, D.17679
	testq	%rax, %rax	# D.17679
	js	.L831	#,
.L830:
	.loc 1 4053 0 discriminator 1
	movl	$0, %eax	#, iftmp.470
	jmp	.L832	#
.L831:
	movq	$-1, %rax	#, iftmp.470
.L832:
	.loc 1 4053 0 discriminator 3
	movq	-128(%rbp), %rdx	# x, tmp154
	movq	8(%rdx), %rdx	# x_7(D)->fld[0].rtwint, D.17679
	movq	%rax, %rsi	# iftmp.470,
	movq	%rdx, %rdi	# D.17680,
	call	build_int_2_wide	#
	movq	%rax, -104(%rbp)	# tmp155, t
	.loc 1 4057 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# t, tmp156
	movq	-120(%rbp), %rdx	# type, tmp157
	movq	%rdx, 8(%rax)	# tmp157, t_21->common.type
	.loc 1 4058 0 discriminator 3
	movq	-104(%rbp), %rax	# t, D.17673
	jmp	.L833	#
.L817:
	.loc 1 4061 0
	movq	-128(%rbp), %rax	# x, tmp158
	movzbl	2(%rax), %eax	# x_7(D)->mode, D.17676
	testb	%al, %al	# D.17676
	jne	.L834	#,
	.loc 1 4063 0
	movq	-128(%rbp), %rax	# x, tmp159
	movq	24(%rax), %rdx	# x_7(D)->fld[2].rtwint, D.17679
	movq	-128(%rbp), %rax	# x, tmp160
	movq	16(%rax), %rax	# x_7(D)->fld[1].rtwint, D.17679
	movq	%rdx, %rsi	# D.17679,
	movq	%rax, %rdi	# D.17680,
	call	build_int_2_wide	#
	movq	%rax, -104(%rbp)	# tmp161, t
	.loc 1 4064 0
	movq	-104(%rbp), %rax	# t, tmp162
	movq	-120(%rbp), %rdx	# type, tmp163
	movq	%rdx, 8(%rax)	# tmp163, t_27->common.type
	jmp	.L835	#
.L834:
.LBB82:
.LBB83:
	.loc 1 4070 0
	movq	-128(%rbp), %rax	# x, tmp164
	leaq	16(%rax), %rcx	#, D.17681
	leaq	-48(%rbp), %rax	#, tmp165
	movl	$24, %edx	#,
	movq	%rcx, %rsi	# D.17681,
	movq	%rax, %rdi	# tmp165,
	call	memcpy	#
	movq	-48(%rbp), %rax	# u.d, tmp166
	movq	%rax, -80(%rbp)	# tmp166, d
	movq	-40(%rbp), %rax	# u.d, tmp167
	movq	%rax, -72(%rbp)	# tmp167, d
	movq	-32(%rbp), %rax	# u.d, tmp168
	movq	%rax, -64(%rbp)	# tmp168, d
.LBE83:
	.loc 1 4071 0
	movq	-120(%rbp), %rax	# type, tmp169
	movq	-80(%rbp), %rdx	# d, tmp170
	movq	%rdx, (%rsp)	# tmp170,
	movq	-72(%rbp), %rdx	# d, tmp171
	movq	%rdx, 8(%rsp)	# tmp171,
	movq	-64(%rbp), %rdx	# d, tmp172
	movq	%rdx, 16(%rsp)	# tmp172,
	movq	%rax, %rdi	# tmp169,
	call	build_real	#
	movq	%rax, -104(%rbp)	# tmp173, t
.L835:
.LBE82:
	.loc 1 4074 0
	movq	-104(%rbp), %rax	# t, D.17673
	jmp	.L833	#
.L818:
.LBB84:
	.loc 1 4080 0
	movq	$0, -96(%rbp)	#, t
	.loc 1 4082 0
	movq	-128(%rbp), %rax	# x, tmp174
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtvec, D.17682
	movl	(%rax), %eax	# _32->num_elem, tmp175
	movl	%eax, -108(%rbp)	# tmp175, units
	.loc 1 4085 0
	movl	-108(%rbp), %eax	# units, tmp179
	subl	$1, %eax	#, tmp178
	movl	%eax, -112(%rbp)	# tmp178, i
	jmp	.L836	#
.L837:
	.loc 1 4087 0 discriminator 2
	movq	-128(%rbp), %rax	# x, tmp180
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtvec, D.17682
	movl	-112(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, tmp181
	movq	8(%rax,%rdx,8), %rax	# _35->elem, tmp183
	movq	%rax, -88(%rbp)	# tmp183, elt
	.loc 1 4088 0 discriminator 2
	movq	-88(%rbp), %rdx	# elt, tmp184
	movq	-120(%rbp), %rax	# type, tmp185
	movq	%rdx, %rsi	# tmp184,
	movq	%rax, %rdi	# tmp185,
	call	make_tree	#
	movq	-96(%rbp), %rdx	# t, tmp186
	movq	%rax, %rsi	# D.17683,
	movl	$0, %edi	#,
	call	tree_cons	#
	movq	%rax, -96(%rbp)	# tmp187, t
	.loc 1 4085 0 discriminator 2
	subl	$1, -112(%rbp)	#, i
.L836:
	.loc 1 4085 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, i
	jns	.L837	#,
	.loc 1 4091 0 is_stmt 1
	movq	-96(%rbp), %rdx	# t, tmp188
	movq	-120(%rbp), %rax	# type, tmp189
	movq	%rdx, %rsi	# tmp188,
	movq	%rax, %rdi	# tmp189,
	call	build_vector	#
	jmp	.L833	#
.L819:
.LBE84:
	.loc 1 4095 0
	movq	-128(%rbp), %rax	# x, tmp190
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp191
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp191,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp192
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp193
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp193,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp194
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp194,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L820:
	.loc 1 4099 0
	movq	-128(%rbp), %rax	# x, tmp195
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp196
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp196,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp197
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp198
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp198,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp199
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp199,
	movl	$60, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L821:
	.loc 1 4103 0
	movq	-128(%rbp), %rax	# x, tmp200
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp201
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp201,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp202
	movq	%rax, %rsi	# tmp202,
	movl	$77, %edi	#,
	call	build1	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L822:
	.loc 1 4106 0
	movq	-128(%rbp), %rax	# x, tmp203
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp204
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp204,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp205
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp206
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp206,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp207
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp207,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L825:
	.loc 1 4110 0
	movq	-128(%rbp), %rax	# x, tmp208
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp209
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp209,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp210
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp211
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp211,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp212
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp212,
	movl	$82, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L827:
	.loc 1 4114 0
	movq	-128(%rbp), %rax	# x, tmp213
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp214
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp214,
	call	make_tree	#
	movq	%rax, %r12	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp215
	movq	8(%rax), %rbx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp216
	movq	%rax, %rdi	# tmp216,
	call	unsigned_type	#
	movq	%rbx, %rsi	# D.17684,
	movq	%rax, %rdi	# D.17683,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp217
	movq	%rax, %rdi	# tmp217,
	call	unsigned_type	#
	movq	%r12, %rcx	# D.17683,
	movq	%rbx, %rdx	# D.17683,
	movq	%rax, %rsi	# D.17683,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp218
	movq	%rdx, %rsi	# D.17683,
	movq	%rax, %rdi	# tmp218,
	call	convert	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L826:
	.loc 1 4121 0
	movq	-128(%rbp), %rax	# x, tmp219
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp220
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp220,
	call	make_tree	#
	movq	%rax, %r12	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp221
	movq	8(%rax), %rbx	# x_7(D)->fld[0].rtx, D.17684
	movq	-120(%rbp), %rax	# type, tmp222
	movq	%rax, %rdi	# tmp222,
	call	signed_type	#
	movq	%rbx, %rsi	# D.17684,
	movq	%rax, %rdi	# D.17683,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp223
	movq	%rax, %rdi	# tmp223,
	call	signed_type	#
	movq	%r12, %rcx	# D.17683,
	movq	%rbx, %rdx	# D.17683,
	movq	%rax, %rsi	# D.17683,
	movl	$83, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp224
	movq	%rdx, %rsi	# D.17683,
	movq	%rax, %rdi	# tmp224,
	call	convert	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L823:
	.loc 1 4127 0
	movq	-120(%rbp), %rax	# type, tmp225
	movzbl	16(%rax), %eax	# type_10(D)->common.code, D.17676
	cmpb	$7, %al	#, D.17676
	je	.L838	#,
	.loc 1 4128 0
	movq	-120(%rbp), %rax	# type, tmp226
	movq	%rax, %rdi	# tmp226,
	call	signed_type	#
	movq	%rax, -104(%rbp)	# tmp227, t
	jmp	.L839	#
.L838:
	.loc 1 4130 0
	movq	-120(%rbp), %rax	# type, tmp228
	movq	%rax, -104(%rbp)	# tmp228, t
.L839:
	.loc 1 4132 0
	movq	-128(%rbp), %rax	# x, tmp229
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-104(%rbp), %rax	# t, tmp230
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp230,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp231
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-104(%rbp), %rax	# t, tmp232
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp232,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-104(%rbp), %rax	# t, tmp233
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp233,
	movl	$62, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp234
	movq	%rdx, %rsi	# D.17683,
	movq	%rax, %rdi	# tmp234,
	call	convert	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L824:
	.loc 1 4137 0
	movq	-120(%rbp), %rax	# type, tmp235
	movq	%rax, %rdi	# tmp235,
	call	unsigned_type	#
	movq	%rax, -104(%rbp)	# tmp236, t
	.loc 1 4138 0
	movq	-128(%rbp), %rax	# x, tmp237
	movq	16(%rax), %rdx	# x_7(D)->fld[1].rtx, D.17684
	movq	-104(%rbp), %rax	# t, tmp238
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp238,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17683
	movq	-128(%rbp), %rax	# x, tmp239
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-104(%rbp), %rax	# t, tmp240
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp240,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-104(%rbp), %rax	# t, tmp241
	movq	%rbx, %rcx	# D.17683,
	movq	%rax, %rsi	# tmp241,
	movl	$62, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp242
	movq	%rdx, %rsi	# D.17683,
	movq	%rax, %rdi	# tmp242,
	call	convert	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L828:
	.loc 1 4145 0
	movq	-128(%rbp), %rax	# x, tmp243
	movzwl	(%rax), %eax	# x_7(D)->code, D.17674
	cmpw	$121, %ax	#, D.17674
	sete	%al	#, D.17685
	movzbl	%al, %edx	# D.17685, D.17678
	movq	-128(%rbp), %rax	# x, tmp244
	movq	8(%rax), %rax	# x_7(D)->fld[0].rtx, D.17684
	movzbl	2(%rax), %eax	# _108->mode, D.17676
	movzbl	%al, %eax	# D.17676, D.17686
	movl	%edx, %esi	# D.17678,
	movl	%eax, %edi	# D.17686,
	call	type_for_mode	#
	movq	%rax, -104(%rbp)	# tmp245, t
	.loc 1 4146 0
	movq	-128(%rbp), %rax	# x, tmp246
	movq	8(%rax), %rdx	# x_7(D)->fld[0].rtx, D.17684
	movq	-104(%rbp), %rax	# t, tmp247
	movq	%rdx, %rsi	# D.17684,
	movq	%rax, %rdi	# tmp247,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17683
	movq	-120(%rbp), %rax	# type, tmp248
	movq	%rdx, %rsi	# D.17683,
	movq	%rax, %rdi	# tmp248,
	call	convert	#
	movq	%rax, %rdi	# D.17683,
	call	fold	#
	jmp	.L833	#
.L814:
	.loc 1 4149 0
	movl	$120, %edi	#,
	call	make_node	#
	movq	%rax, -104(%rbp)	# tmp249, t
	.loc 1 4150 0
	movq	-104(%rbp), %rax	# t, tmp250
	movq	-120(%rbp), %rdx	# type, tmp251
	movq	%rdx, 8(%rax)	# tmp251, t_116->common.type
	.loc 1 4159 0
	movq	-104(%rbp), %rax	# t, tmp252
	leaq	40(%rax), %rdx	#, D.17687
	movq	-128(%rbp), %rax	# x, tmp253
	movq	%rax, (%rdx)	# tmp253, MEM[(struct rtx_def * *)_117]
	.loc 1 4162 0
	movq	-104(%rbp), %rax	# t, tmp254
	addq	$32, %rax	#, D.17687
	movq	$0, (%rax)	#, MEM[(struct rtx_def * *)_118]
	.loc 1 4163 0
	movq	-104(%rbp), %rax	# t, D.17673
.L833:
	.loc 1 4165 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	make_tree, .-make_tree
	.globl	expand_mult_add
	.type	expand_mult_add, @function
expand_mult_add:
.LFB25:
	.loc 1 4180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)	# x, x
	movq	%rsi, -64(%rbp)	# target, target
	movq	%rdx, -72(%rbp)	# mult, mult
	movq	%rcx, -80(%rbp)	# add, add
	movl	%r8d, -84(%rbp)	# mode, mode
	movl	%r9d, -88(%rbp)	# unsignedp, unsignedp
	.loc 1 4181 0
	movl	-88(%rbp), %edx	# unsignedp, tmp71
	movl	-84(%rbp), %eax	# mode, tmp72
	movl	%edx, %esi	# tmp71,
	movl	%eax, %edi	# tmp72,
	call	type_for_mode	#
	movq	%rax, -40(%rbp)	# tmp73, type
	.loc 1 4182 0
	movq	-80(%rbp), %rax	# add, tmp74
	movzbl	2(%rax), %eax	# add_5(D)->mode, D.17689
	.loc 1 4183 0
	testb	%al, %al	# D.17689
	je	.L841	#,
	.loc 1 4183 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# add, tmp75
	movzbl	2(%rax), %eax	# add_5(D)->mode, D.17689
	movzbl	%al, %eax	# D.17689, D.17690
	movl	-88(%rbp), %edx	# unsignedp, tmp76
	movl	%edx, %esi	# tmp76,
	movl	%eax, %edi	# D.17690,
	call	type_for_mode	#
	jmp	.L842	#
.L841:
	.loc 1 4183 0 discriminator 2
	movq	-40(%rbp), %rax	# type, iftmp.471
.L842:
	.loc 1 4182 0 is_stmt 1
	movq	%rax, -32(%rbp)	# iftmp.471, add_type
	.loc 1 4184 0
	movq	-80(%rbp), %rdx	# add, tmp77
	movq	-32(%rbp), %rax	# add_type, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	make_tree	#
	movq	%rax, %rbx	#, D.17691
	movq	-72(%rbp), %rdx	# mult, tmp79
	movq	-40(%rbp), %rax	# type, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	make_tree	#
	movq	%rax, %r12	#, D.17691
	movq	-56(%rbp), %rdx	# x, tmp81
	movq	-40(%rbp), %rax	# type, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	make_tree	#
	movq	%rax, %rdx	#, D.17691
	movq	-40(%rbp), %rax	# type, tmp83
	movq	%r12, %rcx	# D.17691,
	movq	%rax, %rsi	# tmp83,
	movl	$61, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17691,
	call	fold	#
	movq	%rax, %rdx	#, D.17691
	movq	-40(%rbp), %rax	# type, tmp84
	movq	%rbx, %rcx	# D.17691,
	movq	%rax, %rsi	# tmp84,
	movl	$59, %edi	#,
	movl	$0, %eax	#,
	call	build	#
	movq	%rax, %rdi	# D.17691,
	call	fold	#
	movq	%rax, -24(%rbp)	# tmp85, result
	.loc 1 4190 0
	movq	-64(%rbp), %rsi	# target, tmp86
	movq	-24(%rbp), %rax	# result, tmp87
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp87,
	call	expand_expr	#
	.loc 1 4191 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	expand_mult_add, .-expand_mult_add
	.globl	expand_and
	.type	expand_and, @function
expand_and:
.LFB26:
	.loc 1 4202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	movq	%rsi, -32(%rbp)	# op0, op0
	movq	%rdx, -40(%rbp)	# op1, op1
	movq	%rcx, -48(%rbp)	# target, target
	.loc 1 4203 0
	movq	$0, -8(%rbp)	#, tem
	.loc 1 4205 0
	movq	-32(%rbp), %rax	# op0, tmp64
	movzbl	2(%rax), %eax	# op0_5(D)->mode, D.17693
	testb	%al, %al	# D.17693
	jne	.L845	#,
	.loc 1 4205 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op1, tmp65
	movzbl	2(%rax), %eax	# op1_7(D)->mode, D.17693
	testb	%al, %al	# D.17693
	jne	.L845	#,
	.loc 1 4206 0 is_stmt 1
	movq	-40(%rbp), %rcx	# op1, tmp66
	movq	-32(%rbp), %rdx	# op0, tmp67
	movl	-20(%rbp), %eax	# mode, tmp68
	movl	%eax, %esi	# tmp68,
	movl	$83, %edi	#,
	call	simplify_binary_operation	#
	movq	%rax, -8(%rbp)	# tmp69, tem
.L845:
	.loc 1 4207 0
	cmpq	$0, -8(%rbp)	#, tem
	jne	.L846	#,
	.loc 1 4208 0
	movq	optab_table+144(%rip), %rsi	# optab_table, D.17694
	movq	-48(%rbp), %rdi	# target, tmp70
	movq	-40(%rbp), %rcx	# op1, tmp71
	movq	-32(%rbp), %rdx	# op0, tmp72
	movl	-20(%rbp), %eax	# mode, tmp73
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp70,
	movl	%eax, %edi	# tmp73,
	call	expand_binop	#
	movq	%rax, -8(%rbp)	# tmp74, tem
.L846:
	.loc 1 4210 0
	cmpq	$0, -48(%rbp)	#, target
	jne	.L847	#,
	.loc 1 4211 0
	movq	-8(%rbp), %rax	# tem, tmp75
	movq	%rax, -48(%rbp)	# tmp75, target
	jmp	.L848	#
.L847:
	.loc 1 4212 0
	movq	-8(%rbp), %rax	# tem, tmp76
	cmpq	-48(%rbp), %rax	# target, tmp76
	je	.L848	#,
	.loc 1 4213 0
	movq	-8(%rbp), %rdx	# tem, tmp77
	movq	-48(%rbp), %rax	# target, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	emit_move_insn	#
.L848:
	.loc 1 4214 0
	movq	-48(%rbp), %rax	# target, D.17695
	.loc 1 4215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	expand_and, .-expand_and
	.globl	emit_store_flag
	.type	emit_store_flag, @function
emit_store_flag:
.LFB27:
	.loc 1 4240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# target, target
	movl	%esi, -124(%rbp)	# code, code
	movq	%rdx, -136(%rbp)	# op0, op0
	movq	%rcx, -144(%rbp)	# op1, op1
	movl	%r8d, -128(%rbp)	# mode, mode
	movl	%r9d, -148(%rbp)	# unsignedp, unsignedp
	.loc 1 4244 0
	movq	-120(%rbp), %rax	# target, tmp214
	movzbl	2(%rax), %eax	# target_61(D)->mode, D.17697
	movzbl	%al, %eax	# D.17697, tmp215
	movl	%eax, -96(%rbp)	# tmp215, target_mode
	.loc 1 4246 0
	call	get_last_insn	#
	movq	%rax, -72(%rbp)	# tmp216, last
	.loc 1 4250 0
	movq	-136(%rbp), %rax	# op0, tmp217
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp217,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp218, op0
	.loc 1 4251 0
	movq	-144(%rbp), %rax	# op1, tmp219
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp219,
	call	protect_from_queue	#
	movq	%rax, -144(%rbp)	# tmp220, op1
	.loc 1 4253 0
	cmpl	$0, -148(%rbp)	#, unsignedp
	je	.L851	#,
	.loc 1 4254 0
	movl	-124(%rbp), %eax	# code, tmp221
	movl	%eax, %edi	# tmp221,
	call	unsigned_condition	#
	movl	%eax, -124(%rbp)	# tmp222, code
.L851:
	.loc 1 4259 0
	movq	-144(%rbp), %rdx	# op1, tmp223
	movq	-136(%rbp), %rax	# op0, tmp224
	movq	%rdx, %rsi	# tmp223,
	movq	%rax, %rdi	# tmp224,
	call	swap_commutative_operands_p	#
	testl	%eax, %eax	# D.17698
	je	.L852	#,
	.loc 1 4261 0
	movq	-136(%rbp), %rax	# op0, tmp225
	movq	%rax, -80(%rbp)	# tmp225, tem
	.loc 1 4262 0
	movq	-144(%rbp), %rax	# op1, tmp226
	movq	%rax, -136(%rbp)	# tmp226, op0
	.loc 1 4263 0
	movq	-80(%rbp), %rax	# tem, tmp227
	movq	%rax, -144(%rbp)	# tmp227, op1
	.loc 1 4264 0
	movl	-124(%rbp), %eax	# code, tmp228
	movl	%eax, %edi	# tmp228,
	call	swap_condition	#
	movl	%eax, -124(%rbp)	# tmp229, code
.L852:
	.loc 1 4267 0
	cmpl	$0, -128(%rbp)	#, mode
	jne	.L853	#,
	.loc 1 4268 0
	movq	-136(%rbp), %rax	# op0, tmp230
	movzbl	2(%rax), %eax	# op0_11->mode, D.17697
	movzbl	%al, %eax	# D.17697, tmp231
	movl	%eax, -128(%rbp)	# tmp231, mode
.L853:
	.loc 1 4274 0
	movl	-124(%rbp), %eax	# code, tmp233
	subl	$104, %eax	#, tmp232
	cmpl	$7, %eax	#, tmp232
	ja	.L935	#,
	movl	%eax, %eax	# tmp232, tmp234
	movq	.L856(,%rax,8), %rax	#, tmp235
	jmp	*%rax	# tmp235
	.section	.rodata
	.align 8
	.align 4
.L856:
	.quad	.L855
	.quad	.L857
	.quad	.L858
	.quad	.L859
	.quad	.L860
	.quad	.L935
	.quad	.L935
	.quad	.L861
	.text
.L859:
	.loc 1 4277 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L862	#,
	.loc 1 4278 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp236
	movq	%rax, -144(%rbp)	# tmp236, op1
	movl	$106, -124(%rbp)	#, code
	.loc 1 4279 0
	jmp	.L863	#
.L862:
	jmp	.L863	#
.L858:
	.loc 1 4281 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L864	#,
	.loc 1 4282 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp237
	movq	%rax, -144(%rbp)	# tmp237, op1
	movl	$107, -124(%rbp)	#, code
	.loc 1 4283 0
	jmp	.L863	#
.L864:
	jmp	.L863	#
.L855:
	.loc 1 4285 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L865	#,
	.loc 1 4286 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp238
	movq	%rax, -144(%rbp)	# tmp238, op1
	movl	$105, -124(%rbp)	#, code
	.loc 1 4287 0
	jmp	.L863	#
.L865:
	jmp	.L863	#
.L857:
	.loc 1 4289 0
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L866	#,
	.loc 1 4290 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp239
	movq	%rax, -144(%rbp)	# tmp239, op1
	movl	$104, -124(%rbp)	#, code
	.loc 1 4291 0
	jmp	.L863	#
.L866:
	jmp	.L863	#
.L860:
	.loc 1 4293 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L867	#,
	.loc 1 4294 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp240
	movq	%rax, -144(%rbp)	# tmp240, op1
	movl	$102, -124(%rbp)	#, code
	.loc 1 4295 0
	jmp	.L863	#
.L867:
	jmp	.L863	#
.L861:
	.loc 1 4297 0
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L868	#,
	.loc 1 4298 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp241
	movq	%rax, -144(%rbp)	# tmp241, op1
	movl	$103, -124(%rbp)	#, code
	.loc 1 4299 0
	jmp	.L863	#
.L868:
	jmp	.L863	#
.L935:
	.loc 1 4301 0
	nop
.L863:
	.loc 1 4306 0
	movl	-128(%rbp), %eax	# mode, mode.472
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %edx	# D.17700, D.17698
	movl	target_flags(%rip), %eax	# target_flags, target_flags.474
	andl	$33554432, %eax	#, D.17698
	testl	%eax, %eax	# D.17698
	je	.L869	#,
	.loc 1 4306 0 is_stmt 0 discriminator 1
	movl	$128, %eax	#, iftmp.473
	jmp	.L870	#
.L869:
	.loc 1 4306 0 discriminator 2
	movl	$64, %eax	#, iftmp.473
.L870:
	.loc 1 4306 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.473, D.17698
	jne	.L871	#,
	.loc 1 4307 0 is_stmt 1
	movl	-128(%rbp), %eax	# mode, mode.475
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17701
	cmpl	$1, %eax	#, D.17701
	jne	.L871	#,
	.loc 1 4308 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L871	#,
	.loc 1 4309 0
	movq	-136(%rbp), %rax	# op0, tmp244
	movzwl	(%rax), %eax	# op0_11->code, D.17700
	cmpw	$66, %ax	#, D.17700
	jne	.L872	#,
	.loc 1 4309 0 is_stmt 0 discriminator 1
	movq	-136(%rbp), %rax	# op0, tmp245
	movzbl	3(%rax), %eax	# *op0_11, D.17697
	andl	$8, %eax	#, D.17697
	testb	%al, %al	# D.17697
	jne	.L871	#,
.L872:
	.loc 1 4311 0 is_stmt 1
	cmpl	$103, -124(%rbp)	#, code
	je	.L873	#,
	.loc 1 4311 0 is_stmt 0 discriminator 1
	cmpl	$102, -124(%rbp)	#, code
	jne	.L874	#,
.L873:
.LBB85:
	.loc 1 4314 0 is_stmt 1
	movl	word_mode(%rip), %eax	# word_mode, word_mode.476
	movq	-136(%rbp), %rdx	# op0, tmp246
	movq	%rdx, %rsi	# tmp246,
	movl	%eax, %edi	# word_mode.476,
	call	gen_highpart	#
	movq	%rax, -64(%rbp)	# tmp247, op0h
	.loc 1 4315 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.477
	movq	-136(%rbp), %rdx	# op0, tmp248
	movq	%rdx, %rsi	# tmp248,
	movl	%eax, %edi	# word_mode.477,
	call	gen_lowpart	#
	movq	%rax, -56(%rbp)	# tmp249, op0l
	.loc 1 4316 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17702
	movl	word_mode(%rip), %eax	# word_mode, word_mode.478
	movl	-148(%rbp), %edi	# unsignedp, tmp250
	movq	-56(%rbp), %rcx	# op0l, tmp251
	movq	-64(%rbp), %rdx	# op0h, tmp252
	movl	$0, (%rsp)	#,
	movl	%edi, %r9d	# tmp250,
	movl	$0, %r8d	#,
	movl	%eax, %edi	# word_mode.478,
	call	expand_binop	#
	movq	%rax, -48(%rbp)	# tmp253, op0both
	.loc 1 4318 0
	cmpq	$0, -48(%rbp)	#, op0both
	je	.L875	#,
	.loc 1 4319 0
	movl	word_mode(%rip), %r8d	# word_mode, word_mode.479
	movl	-148(%rbp), %r9d	# unsignedp, tmp254
	movq	-144(%rbp), %rcx	# op1, tmp255
	movq	-48(%rbp), %rdx	# op0both, tmp256
	movl	-124(%rbp), %esi	# code, tmp257
	movq	-120(%rbp), %rax	# target, tmp258
	movl	16(%rbp), %edi	# normalizep, tmp259
	movl	%edi, (%rsp)	# tmp259,
	movq	%rax, %rdi	# tmp258,
	call	emit_store_flag	#
	jmp	.L876	#
.L875:
.LBE85:
	.loc 1 4312 0
	jmp	.L871	#
.L874:
	.loc 1 4322 0
	cmpl	$107, -124(%rbp)	#, code
	je	.L877	#,
	.loc 1 4322 0 is_stmt 0 discriminator 1
	cmpl	$104, -124(%rbp)	#, code
	jne	.L871	#,
.L877:
	.loc 1 4324 0 is_stmt 1
	movl	word_mode(%rip), %ebx	# word_mode, word_mode.480
	movl	word_mode(%rip), %eax	# word_mode, word_mode.481
	movq	-136(%rbp), %rdx	# op0, tmp260
	movq	%rdx, %rsi	# tmp260,
	movl	%eax, %edi	# word_mode.481,
	call	gen_highpart	#
	movq	%rax, %rdx	#, D.17699
	movl	-148(%rbp), %r8d	# unsignedp, tmp261
	movq	-144(%rbp), %rcx	# op1, tmp262
	movl	-124(%rbp), %esi	# code, tmp263
	movq	-120(%rbp), %rax	# target, tmp264
	movl	16(%rbp), %edi	# normalizep, tmp265
	movl	%edi, (%rsp)	# tmp265,
	movl	%r8d, %r9d	# tmp261,
	movl	%ebx, %r8d	# word_mode.480,
	movq	%rax, %rdi	# tmp264,
	call	emit_store_flag	#
	jmp	.L876	#
.L871:
	.loc 1 4329 0
	movl	-124(%rbp), %eax	# code, code.482
	cltq
	movl	setcc_gen_code(,%rax,4), %eax	# setcc_gen_code, tmp267
	movl	%eax, -92(%rbp)	# tmp267, icode
	.loc 1 4333 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L878	#,
	.loc 1 4333 0 is_stmt 0 discriminator 1
	cmpl	$107, -124(%rbp)	#, code
	je	.L879	#,
	cmpl	$104, -124(%rbp)	#, code
	jne	.L878	#,
.L879:
	.loc 1 4334 0 is_stmt 1
	movl	-128(%rbp), %eax	# mode, mode.483
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17701
	.loc 1 4335 0
	cmpl	$1, %eax	#, D.17701
	jne	.L878	#,
	.loc 1 4340 0
	movq	-120(%rbp), %rax	# target, tmp269
	movq	%rax, -88(%rbp)	# tmp269, subtarget
	.loc 1 4345 0
	movl	-96(%rbp), %eax	# target_mode, target_mode.484
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17697
	movl	-128(%rbp), %eax	# mode, mode.485
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17697
	cmpb	%al, %dl	# D.17697, D.17697
	jbe	.L880	#,
	.loc 1 4347 0
	movq	-136(%rbp), %rax	# op0, tmp272
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp272,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp273, op0
	.loc 1 4348 0
	movq	-136(%rbp), %rdx	# op0, tmp274
	movl	-128(%rbp), %esi	# mode, tmp275
	movl	-96(%rbp), %eax	# target_mode, tmp276
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp276,
	call	convert_modes	#
	movq	%rax, -136(%rbp)	# tmp277, op0
	.loc 1 4349 0
	movl	-96(%rbp), %eax	# target_mode, tmp278
	movl	%eax, -128(%rbp)	# tmp278, mode
.L880:
	.loc 1 4352 0
	movl	-96(%rbp), %eax	# target_mode, tmp279
	cmpl	-128(%rbp), %eax	# mode, tmp279
	je	.L881	#,
	.loc 1 4353 0
	movq	$0, -88(%rbp)	#, subtarget
.L881:
	.loc 1 4355 0
	cmpl	$104, -124(%rbp)	#, code
	jne	.L934	#,
	.loc 1 4356 0
	movq	optab_table+288(%rip), %rsi	# optab_table, D.17702
	movq	-136(%rbp), %rdx	# op0, tmp280
	movl	-128(%rbp), %eax	# mode, tmp281
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp281,
	call	expand_unop	#
	movq	%rax, -136(%rbp)	# tmp282, op0
.L934:
	.loc 1 4364 0
	cmpl	$-1, 16(%rbp)	#, normalizep
	setne	%al	#, D.17703
	movzbl	%al, %ebx	# D.17703, D.17698
	.loc 1 4365 0
	movl	-128(%rbp), %eax	# mode, mode.486
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4364 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17704,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.17705
	movq	-88(%rbp), %rsi	# subtarget, tmp284
	movq	-136(%rbp), %rdx	# op0, tmp285
	movl	-128(%rbp), %eax	# mode, tmp286
	movl	%ebx, %r9d	# D.17698,
	movq	%rsi, %r8	# tmp284,
	movl	%eax, %esi	# tmp286,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -136(%rbp)	# tmp287, op0
	.loc 1 4368 0
	movl	-128(%rbp), %eax	# mode, tmp288
	cmpl	-96(%rbp), %eax	# target_mode, tmp288
	je	.L883	#,
	.loc 1 4369 0
	movq	-136(%rbp), %rdx	# op0, tmp289
	movl	-128(%rbp), %esi	# mode, tmp290
	movl	-96(%rbp), %eax	# target_mode, tmp291
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp291,
	call	convert_modes	#
	movq	%rax, -136(%rbp)	# tmp292, op0
.L883:
	.loc 1 4371 0
	movq	-136(%rbp), %rax	# op0, D.17696
	jmp	.L876	#
.L878:
	.loc 1 4374 0
	cmpl	$1317, -92(%rbp)	#, icode
	je	.L884	#,
.LBB86:
	.loc 1 4385 0
	call	emit_queue	#
	.loc 1 4386 0
	call	do_pending_stack_adjust	#
	.loc 1 4387 0
	call	get_last_insn	#
	movq	%rax, -72(%rbp)	# tmp293, last
	.loc 1 4390 0
	movl	-128(%rbp), %edi	# mode, tmp294
	movl	-148(%rbp), %ecx	# unsignedp, tmp295
	movl	-124(%rbp), %edx	# code, tmp296
	movq	-144(%rbp), %rsi	# op1, tmp297
	movq	-136(%rbp), %rax	# op0, tmp298
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp294,
	movq	%rax, %rdi	# tmp298,
	call	compare_from_rtx	#
	movq	%rax, -40(%rbp)	# tmp299, comparison
	.loc 1 4391 0
	movq	-40(%rbp), %rax	# comparison, tmp300
	movzwl	(%rax), %eax	# comparison_153->code, D.17700
	cmpw	$54, %ax	#, D.17700
	jne	.L885	#,
	.loc 1 4392 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17699
	.loc 1 4393 0
	cmpq	-40(%rbp), %rax	# comparison, D.17699
	jne	.L886	#,
	.loc 1 4393 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, iftmp.487
	jmp	.L887	#
.L886:
	.loc 1 4394 0 is_stmt 1
	cmpl	$1, 16(%rbp)	#, normalizep
	jne	.L888	#,
	.loc 1 4394 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, iftmp.488
	jmp	.L887	#
.L888:
	.loc 1 4395 0 is_stmt 1
	cmpl	$-1, 16(%rbp)	#, normalizep
	jne	.L890	#,
	.loc 1 4395 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+504(%rip), %rax	# const_int_rtx, iftmp.489
	jmp	.L887	#
.L890:
	.loc 1 4395 0 discriminator 2
	movq	const_true_rtx(%rip), %rax	# const_true_rtx, iftmp.489
.L887:
	.loc 1 4392 0 is_stmt 1
	jmp	.L876	#
.L885:
	.loc 1 4403 0
	movq	-40(%rbp), %rax	# comparison, tmp301
	movzwl	(%rax), %eax	# comparison_153->code, D.17700
	movzwl	%ax, %eax	# D.17700, tmp302
	movl	%eax, -124(%rbp)	# tmp302, code
	.loc 1 4406 0
	movl	-92(%rbp), %eax	# icode, icode.490
	movslq	%eax, %rdx	# icode.490, tmp303
	movq	%rdx, %rax	# tmp303, tmp304
	salq	$2, %rax	#, tmp304
	addq	%rdx, %rax	# tmp303, tmp304
	salq	$3, %rax	#, tmp305
	addq	$insn_data+24, %rax	#, tmp306
	movq	(%rax), %rax	# insn_data[icode.490_165].operand, D.17706
	movzwl	16(%rax), %eax	# _166->mode, D.17700
	movzwl	%ax, %eax	# D.17700, tmp307
	movl	%eax, -100(%rbp)	# tmp307, compare_mode
	.loc 1 4407 0
	movq	-120(%rbp), %rax	# target, tmp308
	movq	%rax, -88(%rbp)	# tmp308, subtarget
	.loc 1 4408 0
	movl	-92(%rbp), %eax	# icode, icode.491
	movslq	%eax, %rdx	# icode.491, tmp309
	movq	%rdx, %rax	# tmp309, tmp310
	salq	$2, %rax	#, tmp310
	addq	%rdx, %rax	# tmp309, tmp310
	salq	$3, %rax	#, tmp311
	addq	$insn_data+24, %rax	#, tmp312
	movq	(%rax), %rax	# insn_data[icode.491_170].operand, D.17706
	movq	(%rax), %rax	# _171->predicate, tmp313
	movq	%rax, -32(%rbp)	# tmp313, pred
	.loc 1 4409 0
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.17698
	jne	.L892	#,
	.loc 1 4410 0
	movl	-100(%rbp), %ecx	# compare_mode, tmp314
	movq	-88(%rbp), %rdx	# subtarget, tmp315
	movq	-32(%rbp), %rax	# pred, tmp316
	movl	%ecx, %esi	# tmp314,
	movq	%rdx, %rdi	# tmp315,
	call	*%rax	# tmp316
	testl	%eax, %eax	# D.17698
	jne	.L893	#,
.L892:
	.loc 1 4411 0
	movl	-100(%rbp), %eax	# compare_mode, tmp317
	movl	%eax, %edi	# tmp317,
	call	gen_reg_rtx	#
	movq	%rax, -88(%rbp)	# tmp318, subtarget
.L893:
	.loc 1 4413 0
	movl	-92(%rbp), %eax	# icode, icode.492
	movslq	%eax, %rdx	# icode.492, tmp319
	movq	%rdx, %rax	# tmp319, tmp320
	salq	$2, %rax	#, tmp320
	addq	%rdx, %rax	# tmp319, tmp320
	salq	$3, %rax	#, tmp321
	addq	$insn_data+16, %rax	#, tmp322
	movq	(%rax), %rdx	# insn_data[icode.492_176].genfun, D.17707
	movq	-88(%rbp), %rax	# subtarget, tmp323
	movq	%rax, %rdi	# tmp323,
	movl	$0, %eax	#,
	call	*%rdx	# D.17707
	movq	%rax, -24(%rbp)	# tmp324, pattern
	.loc 1 4414 0
	cmpq	$0, -24(%rbp)	#, pattern
	je	.L884	#,
	.loc 1 4416 0
	movq	-24(%rbp), %rax	# pattern, tmp325
	movq	%rax, %rdi	# tmp325,
	call	emit_insn	#
	.loc 1 4426 0
	movl	-96(%rbp), %eax	# target_mode, target_mode.493
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.17697
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.494
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17697
	cmpb	%al, %dl	# D.17697, D.17697
	jbe	.L894	#,
	.loc 1 4429 0
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.496
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	.loc 1 4428 0
	cmpw	$64, %ax	#, D.17700
	ja	.L895	#,
	.loc 1 4433 0 discriminator 1
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.497
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4431 0 discriminator 1
	movl	$1, %edx	#, tmp330
	movl	%eax, %ecx	# D.17698, tmp463
	sarq	%cl, %rdx	# tmp463, D.17704
	movq	%rdx, %rax	# D.17704, D.17704
	andl	$1, %eax	#, D.17704
	.loc 1 4428 0 discriminator 1
	testq	%rax, %rax	# D.17704
	jne	.L895	#,
	.loc 1 4428 0 is_stmt 0 discriminator 3
	movl	$1, %eax	#, iftmp.495
	jmp	.L896	#
.L895:
	.loc 1 4428 0 discriminator 2
	movl	$0, %eax	#, iftmp.495
.L896:
	.loc 1 4428 0 discriminator 4
	movq	-88(%rbp), %rsi	# subtarget, tmp331
	movq	-120(%rbp), %rcx	# target, tmp332
	movl	%eax, %edx	# iftmp.495,
	movq	%rcx, %rdi	# tmp332,
	call	convert_move	#
	.loc 1 4434 0 is_stmt 1 discriminator 4
	movq	-120(%rbp), %rax	# target, tmp333
	movq	%rax, -136(%rbp)	# tmp333, op0
	.loc 1 4435 0 discriminator 4
	movl	-96(%rbp), %eax	# target_mode, tmp334
	movl	%eax, -100(%rbp)	# tmp334, compare_mode
	jmp	.L897	#
.L894:
	.loc 1 4438 0
	movq	-88(%rbp), %rax	# subtarget, tmp335
	movq	%rax, -136(%rbp)	# tmp335, op0
.L897:
	.loc 1 4443 0
	call	preserve_subexpressions_p	#
	testl	%eax, %eax	# D.17698
	je	.L898	#,
	.loc 1 4444 0
	movq	$0, -88(%rbp)	#, subtarget
.L898:
	.loc 1 4448 0
	cmpl	$0, 16(%rbp)	#, normalizep
	je	.L899	#,
	.loc 1 4448 0 is_stmt 0 discriminator 1
	cmpl	$1, 16(%rbp)	#, normalizep
	je	.L899	#,
	.loc 1 4452 0 is_stmt 1
	cmpl	$-1, 16(%rbp)	#, normalizep
	jne	.L900	#,
	.loc 1 4453 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp336
	movq	-136(%rbp), %rdx	# op0, tmp337
	movl	-100(%rbp), %eax	# compare_mode, tmp338
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp338,
	call	expand_unop	#
	movq	%rax, -136(%rbp)	# tmp339, op0
	jmp	.L899	#
.L900:
	.loc 1 4458 0
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.498
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	cmpw	$64, %ax	#, D.17700
	ja	.L901	#,
	.loc 1 4461 0
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.499
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4459 0
	movl	$1, %edx	#, tmp342
	movl	%eax, %ecx	# D.17698, tmp465
	sarq	%cl, %rdx	# tmp465, D.17704
	movq	%rdx, %rax	# D.17704, D.17704
	andl	$1, %eax	#, D.17704
	testq	%rax, %rax	# D.17704
	je	.L901	#,
	.loc 1 4462 0
	cmpl	$1, 16(%rbp)	#, normalizep
	sete	%al	#, D.17703
	movzbl	%al, %ebx	# D.17703, D.17698
	.loc 1 4463 0
	movl	-100(%rbp), %eax	# compare_mode, compare_mode.500
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4462 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17704,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.17705
	movq	-88(%rbp), %rsi	# subtarget, tmp344
	movq	-136(%rbp), %rdx	# op0, tmp345
	movl	-100(%rbp), %eax	# compare_mode, tmp346
	movl	%ebx, %r9d	# D.17698,
	movq	%rsi, %r8	# tmp344,
	movl	%eax, %esi	# tmp346,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -136(%rbp)	# tmp347, op0
	jmp	.L899	#
.L901:
	.loc 1 4467 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17699
	movq	-88(%rbp), %rcx	# subtarget, tmp348
	movq	-136(%rbp), %rsi	# op0, tmp349
	movl	-100(%rbp), %eax	# compare_mode, tmp350
	movl	%eax, %edi	# tmp350,
	call	expand_and	#
	movq	%rax, -136(%rbp)	# tmp351, op0
	.loc 1 4468 0
	cmpl	$-1, 16(%rbp)	#, normalizep
	jne	.L899	#,
	.loc 1 4469 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17702
	movq	-136(%rbp), %rcx	# op0, tmp352
	movq	-136(%rbp), %rdx	# op0, tmp353
	movl	-100(%rbp), %eax	# compare_mode, tmp354
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp354,
	call	expand_unop	#
	movq	%rax, -136(%rbp)	# tmp355, op0
.L899:
	.loc 1 4476 0
	movl	-96(%rbp), %eax	# target_mode, tmp356
	cmpl	-100(%rbp), %eax	# compare_mode, tmp356
	je	.L903	#,
	.loc 1 4478 0
	movq	-136(%rbp), %rcx	# op0, tmp357
	movq	-120(%rbp), %rax	# target, tmp358
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp357,
	movq	%rax, %rdi	# tmp358,
	call	convert_move	#
	.loc 1 4479 0
	movq	-120(%rbp), %rax	# target, D.17696
	jmp	.L876	#
.L903:
	.loc 1 4482 0
	movq	-136(%rbp), %rax	# op0, D.17696
	jmp	.L876	#
.L884:
.LBE86:
	.loc 1 4486 0
	movq	-72(%rbp), %rax	# last, tmp359
	movq	%rax, %rdi	# tmp359,
	call	delete_insns_since	#
	.loc 1 4491 0
	movl	flag_expensive_optimizations(%rip), %eax	# flag_expensive_optimizations, flag_expensive_optimizations.502
	.loc 1 4492 0
	testl	%eax, %eax	# flag_expensive_optimizations.502
	jne	.L904	#,
	.loc 1 4492 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# target_mode, tmp360
	cmpl	-128(%rbp), %eax	# mode, tmp360
	jne	.L904	#,
	movq	-120(%rbp), %rax	# target, iftmp.501
	jmp	.L905	#
.L904:
	.loc 1 4492 0 discriminator 2
	movl	$0, %eax	#, iftmp.501
.L905:
	.loc 1 4491 0 is_stmt 1
	movq	%rax, -88(%rbp)	# iftmp.501, subtarget
	.loc 1 4501 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.503
	testl	%eax, %eax	# ix86_branch_cost.503
	jle	.L906	#,
	.loc 1 4502 0
	movl	-128(%rbp), %eax	# mode, mode.504
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17701
	cmpl	$1, %eax	#, D.17701
	jne	.L906	#,
	.loc 1 4502 0 is_stmt 0 discriminator 1
	cmpl	$103, -124(%rbp)	#, code
	je	.L907	#,
	cmpl	$102, -124(%rbp)	#, code
	jne	.L906	#,
.L907:
	.loc 1 4503 0 is_stmt 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	je	.L906	#,
	.loc 1 4505 0
	movq	optab_table+160(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp362
	movq	-144(%rbp), %rcx	# op1, tmp363
	movq	-136(%rbp), %rdx	# op0, tmp364
	movl	-128(%rbp), %eax	# mode, tmp365
	movl	$2, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp362,
	movl	%eax, %edi	# tmp365,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp366, tem
	.loc 1 4508 0
	cmpq	$0, -80(%rbp)	#, tem
	jne	.L908	#,
	.loc 1 4509 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp367
	movq	-144(%rbp), %rcx	# op1, tmp368
	movq	-136(%rbp), %rdx	# op0, tmp369
	movl	-128(%rbp), %eax	# mode, tmp370
	movl	$2, (%rsp)	#,
	movl	$1, %r9d	#,
	movq	%rdi, %r8	# tmp367,
	movl	%eax, %edi	# tmp370,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp371, tem
.L908:
	.loc 1 4511 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L909	#,
	.loc 1 4512 0
	movq	const_int_rtx+512(%rip), %rcx	# const_int_rtx, D.17699
	movl	-148(%rbp), %r9d	# unsignedp, tmp372
	movl	-128(%rbp), %r8d	# mode, tmp373
	movq	-80(%rbp), %rdx	# tem, tmp374
	movl	-124(%rbp), %esi	# code, tmp375
	movq	-120(%rbp), %rax	# target, tmp376
	movl	16(%rbp), %edi	# normalizep, tmp377
	movl	%edi, (%rsp)	# tmp377,
	movq	%rax, %rdi	# tmp376,
	call	emit_store_flag	#
	movq	%rax, -80(%rbp)	# tmp378, tem
.L909:
	.loc 1 4514 0
	cmpq	$0, -80(%rbp)	#, tem
	jne	.L910	#,
	.loc 1 4515 0
	movq	-72(%rbp), %rax	# last, tmp379
	movq	%rax, %rdi	# tmp379,
	call	delete_insns_since	#
.L910:
	.loc 1 4516 0
	movq	-80(%rbp), %rax	# tem, D.17696
	jmp	.L876	#
.L906:
	.loc 1 4524 0
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.505
	testl	%eax, %eax	# ix86_branch_cost.505
	je	.L911	#,
	.loc 1 4525 0
	movl	-128(%rbp), %eax	# mode, mode.506
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17701
	cmpl	$1, %eax	#, D.17701
	jne	.L911	#,
	.loc 1 4525 0 is_stmt 0 discriminator 1
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17699
	cmpq	-144(%rbp), %rax	# op1, D.17699
	jne	.L911	#,
	.loc 1 4526 0 is_stmt 1
	cmpl	$103, -124(%rbp)	#, code
	je	.L912	#,
	.loc 1 4526 0 is_stmt 0 discriminator 1
	cmpl	$102, -124(%rbp)	#, code
	je	.L912	#,
	.loc 1 4527 0 is_stmt 1
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.507
	cmpl	$1, %eax	#, ix86_branch_cost.507
	jle	.L911	#,
	.loc 1 4527 0 is_stmt 0 discriminator 1
	cmpl	$106, -124(%rbp)	#, code
	je	.L912	#,
	cmpl	$105, -124(%rbp)	#, code
	je	.L912	#,
.L911:
	.loc 1 4528 0 is_stmt 1
	movl	$0, %eax	#, D.17696
	jmp	.L876	#
.L912:
	.loc 1 4533 0
	cmpl	$0, 16(%rbp)	#, normalizep
	jne	.L913	#,
	.loc 1 4536 0
	movl	$1, 16(%rbp)	#, normalizep
.L913:
	.loc 1 4549 0
	movq	$0, -80(%rbp)	#, tem
	.loc 1 4554 0
	cmpl	$106, -124(%rbp)	#, code
	jne	.L914	#,
	.loc 1 4557 0
	movq	-136(%rbp), %rdx	# op0, tmp381
	movq	-88(%rbp), %rax	# subtarget, tmp382
	movq	%rdx, %rsi	# tmp381,
	movq	%rax, %rdi	# tmp382,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17698
	je	.L915	#,
	.loc 1 4558 0
	movq	$0, -88(%rbp)	#, subtarget
.L915:
	.loc 1 4560 0
	movq	const_int_rtx+520(%rip), %rcx	# const_int_rtx, D.17699
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp383
	movq	-136(%rbp), %rdx	# op0, tmp384
	movl	-128(%rbp), %eax	# mode, tmp385
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp383,
	movl	%eax, %edi	# tmp385,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp386, tem
	.loc 1 4562 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L914	#,
	.loc 1 4563 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp387
	movq	-80(%rbp), %rcx	# tem, tmp388
	movq	-136(%rbp), %rdx	# op0, tmp389
	movl	-128(%rbp), %eax	# mode, tmp390
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp387,
	movl	%eax, %edi	# tmp390,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp391, tem
.L914:
	.loc 1 4570 0
	cmpl	$105, -124(%rbp)	#, code
	jne	.L916	#,
	.loc 1 4572 0
	movq	-136(%rbp), %rdx	# op0, tmp392
	movq	-88(%rbp), %rax	# subtarget, tmp393
	movq	%rdx, %rsi	# tmp392,
	movq	%rax, %rdi	# tmp393,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17698
	je	.L917	#,
	.loc 1 4573 0
	movq	$0, -88(%rbp)	#, subtarget
.L917:
	.loc 1 4576 0
	movl	-128(%rbp), %eax	# mode, mode.511
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4575 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17704,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.17705
	movq	-88(%rbp), %rsi	# subtarget, tmp395
	movq	-136(%rbp), %rdx	# op0, tmp396
	movl	-128(%rbp), %eax	# mode, tmp397
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp395,
	movl	%eax, %esi	# tmp397,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -80(%rbp)	# tmp398, tem
	.loc 1 4578 0
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp399
	movq	-136(%rbp), %rcx	# op0, tmp400
	movq	-80(%rbp), %rdx	# tem, tmp401
	movl	-128(%rbp), %eax	# mode, tmp402
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp399,
	movl	%eax, %edi	# tmp402,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp403, tem
.L916:
	.loc 1 4582 0
	cmpl	$103, -124(%rbp)	#, code
	je	.L918	#,
	.loc 1 4582 0 is_stmt 0 discriminator 1
	cmpl	$102, -124(%rbp)	#, code
	jne	.L919	#,
.L918:
	.loc 1 4599 0 is_stmt 1
	movq	optab_table+272(%rip), %rax	# optab_table, D.17702
	movl	-128(%rbp), %edx	# mode, mode.512
	movslq	%edx, %rdx	# mode.512, tmp404
	salq	$4, %rdx	#, tmp405
	addq	%rdx, %rax	# tmp405, tmp406
	movl	8(%rax), %eax	# _263->handlers[mode.512_264].insn_code, D.17708
	cmpl	$1317, %eax	#, D.17708
	je	.L920	#,
	.loc 1 4600 0
	movq	optab_table+272(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp407
	movq	-136(%rbp), %rdx	# op0, tmp408
	movl	-128(%rbp), %eax	# mode, tmp409
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp409,
	call	expand_unop	#
	movq	%rax, -80(%rbp)	# tmp410, tem
	jmp	.L921	#
.L920:
	.loc 1 4601 0
	movq	optab_table+296(%rip), %rax	# optab_table, D.17702
	movl	-128(%rbp), %edx	# mode, mode.513
	movslq	%edx, %rdx	# mode.513, tmp411
	salq	$4, %rdx	#, tmp412
	addq	%rdx, %rax	# tmp412, tmp413
	movl	8(%rax), %eax	# _268->handlers[mode.513_269].insn_code, D.17708
	cmpl	$1317, %eax	#, D.17708
	je	.L922	#,
	.loc 1 4602 0
	movq	optab_table+296(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp414
	movq	-136(%rbp), %rdx	# op0, tmp415
	movl	-128(%rbp), %eax	# mode, tmp416
	movl	$1, %r8d	#,
	movl	%eax, %edi	# tmp416,
	call	expand_unop	#
	movq	%rax, -80(%rbp)	# tmp417, tem
	jmp	.L921	#
.L922:
	.loc 1 4603 0
	movl	-128(%rbp), %eax	# mode, mode.514
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.17697
	movzbl	%al, %edx	# D.17697, D.17698
	movl	target_flags(%rip), %eax	# target_flags, target_flags.516
	andl	$33554432, %eax	#, D.17698
	testl	%eax, %eax	# D.17698
	je	.L923	#,
	.loc 1 4603 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.515
	jmp	.L924	#
.L923:
	.loc 1 4603 0 discriminator 2
	movl	$4, %eax	#, iftmp.515
.L924:
	.loc 1 4603 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.515, D.17698
	jge	.L921	#,
	.loc 1 4605 0 is_stmt 1
	movq	-136(%rbp), %rax	# op0, tmp419
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp419,
	call	protect_from_queue	#
	movq	%rax, -136(%rbp)	# tmp420, op0
	.loc 1 4606 0
	movl	word_mode(%rip), %eax	# word_mode, word_mode.517
	movq	-136(%rbp), %rdx	# op0, tmp421
	movl	-128(%rbp), %esi	# mode, tmp422
	movl	$1, %ecx	#,
	movl	%eax, %edi	# word_mode.517,
	call	convert_modes	#
	movq	%rax, -80(%rbp)	# tmp423, tem
	.loc 1 4607 0
	movl	word_mode(%rip), %eax	# word_mode, tmp424
	movl	%eax, -128(%rbp)	# tmp424, mode
.L921:
	.loc 1 4610 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L925	#,
	.loc 1 4612 0
	cmpl	$103, -124(%rbp)	#, code
	jne	.L926	#,
	.loc 1 4613 0
	movq	const_int_rtx+520(%rip), %rcx	# const_int_rtx, D.17699
	movq	optab_table+16(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp425
	movq	-80(%rbp), %rdx	# tem, tmp426
	movl	-128(%rbp), %eax	# mode, tmp427
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp425,
	movl	%eax, %edi	# tmp427,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp428, tem
	jmp	.L925	#
.L926:
	.loc 1 4616 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp429
	movq	-80(%rbp), %rdx	# tem, tmp430
	movl	-128(%rbp), %eax	# mode, tmp431
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp431,
	call	expand_unop	#
	movq	%rax, -80(%rbp)	# tmp432, tem
.L925:
	.loc 1 4624 0
	cmpq	$0, -80(%rbp)	#, tem
	jne	.L919	#,
	.loc 1 4624 0 is_stmt 0 discriminator 1
	cmpl	$102, -124(%rbp)	#, code
	je	.L927	#,
	movl	ix86_branch_cost(%rip), %eax	# ix86_branch_cost, ix86_branch_cost.518
	cmpl	$1, %eax	#, ix86_branch_cost.518
	jle	.L919	#,
.L927:
	.loc 1 4626 0 is_stmt 1
	movq	-136(%rbp), %rdx	# op0, tmp433
	movq	-88(%rbp), %rax	# subtarget, tmp434
	movq	%rdx, %rsi	# tmp433,
	movq	%rax, %rdi	# tmp434,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.17698
	je	.L928	#,
	.loc 1 4627 0
	movq	$0, -88(%rbp)	#, subtarget
.L928:
	.loc 1 4629 0
	movq	optab_table+256(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp435
	movq	-136(%rbp), %rdx	# op0, tmp436
	movl	-128(%rbp), %eax	# mode, tmp437
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp437,
	call	expand_unop	#
	movq	%rax, -80(%rbp)	# tmp438, tem
	.loc 1 4630 0
	movq	optab_table+152(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rdi	# subtarget, tmp439
	movq	-136(%rbp), %rcx	# op0, tmp440
	movq	-80(%rbp), %rdx	# tem, tmp441
	movl	-128(%rbp), %eax	# mode, tmp442
	movl	$2, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# tmp439,
	movl	%eax, %edi	# tmp442,
	call	expand_binop	#
	movq	%rax, -80(%rbp)	# tmp443, tem
	.loc 1 4633 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L919	#,
	.loc 1 4633 0 is_stmt 0 discriminator 1
	cmpl	$103, -124(%rbp)	#, code
	jne	.L919	#,
	.loc 1 4634 0 is_stmt 1
	movq	optab_table+288(%rip), %rsi	# optab_table, D.17702
	movq	-88(%rbp), %rcx	# subtarget, tmp444
	movq	-80(%rbp), %rdx	# tem, tmp445
	movl	-128(%rbp), %eax	# mode, tmp446
	movl	$0, %r8d	#,
	movl	%eax, %edi	# tmp446,
	call	expand_unop	#
	movq	%rax, -80(%rbp)	# tmp447, tem
.L919:
	.loc 1 4638 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L929	#,
	.loc 1 4638 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, normalizep
	je	.L929	#,
	.loc 1 4639 0 is_stmt 1
	cmpl	$1, 16(%rbp)	#, normalizep
	sete	%al	#, D.17703
	movzbl	%al, %ebx	# D.17703, D.17698
	.loc 1 4640 0
	movl	-128(%rbp), %eax	# mode, mode.519
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.17700
	movzwl	%ax, %eax	# D.17700, D.17698
	subl	$1, %eax	#, D.17698
	.loc 1 4639 0
	cltq
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.17704,
	call	size_int_wide	#
	movq	%rax, %rcx	#, D.17705
	movq	-88(%rbp), %rsi	# subtarget, tmp449
	movq	-80(%rbp), %rdx	# tem, tmp450
	movl	-128(%rbp), %eax	# mode, tmp451
	movl	%ebx, %r9d	# D.17698,
	movq	%rsi, %r8	# tmp449,
	movl	%eax, %esi	# tmp451,
	movl	$83, %edi	#,
	call	expand_shift	#
	movq	%rax, -80(%rbp)	# tmp452, tem
.L929:
	.loc 1 4643 0
	cmpq	$0, -80(%rbp)	#, tem
	je	.L930	#,
	.loc 1 4645 0
	movq	-80(%rbp), %rax	# tem, tmp453
	movzbl	2(%rax), %eax	# tem_49->mode, D.17697
	movzbl	%al, %eax	# D.17697, D.17709
	cmpl	-96(%rbp), %eax	# target_mode, D.17709
	je	.L931	#,
	.loc 1 4647 0
	movq	-80(%rbp), %rcx	# tem, tmp454
	movq	-120(%rbp), %rax	# target, tmp455
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp454,
	movq	%rax, %rdi	# tmp455,
	call	convert_move	#
	.loc 1 4648 0
	movq	-120(%rbp), %rax	# target, tmp456
	movq	%rax, -80(%rbp)	# tmp456, tem
	jmp	.L933	#
.L931:
	.loc 1 4650 0
	cmpq	$0, -88(%rbp)	#, subtarget
	jne	.L933	#,
	.loc 1 4652 0
	movq	-80(%rbp), %rdx	# tem, tmp457
	movq	-120(%rbp), %rax	# target, tmp458
	movq	%rdx, %rsi	# tmp457,
	movq	%rax, %rdi	# tmp458,
	call	emit_move_insn	#
	.loc 1 4653 0
	movq	-120(%rbp), %rax	# target, tmp459
	movq	%rax, -80(%rbp)	# tmp459, tem
	jmp	.L933	#
.L930:
	.loc 1 4657 0
	movq	-72(%rbp), %rax	# last, tmp460
	movq	%rax, %rdi	# tmp460,
	call	delete_insns_since	#
.L933:
	.loc 1 4659 0
	movq	-80(%rbp), %rax	# tem, D.17696
.L876:
	.loc 1 4660 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	emit_store_flag, .-emit_store_flag
	.globl	emit_store_flag_force
	.type	emit_store_flag_force, @function
emit_store_flag_force:
.LFB28:
	.loc 1 4672 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -24(%rbp)	# target, target
	movl	%esi, -28(%rbp)	# code, code
	movq	%rdx, -40(%rbp)	# op0, op0
	movq	%rcx, -48(%rbp)	# op1, op1
	movl	%r8d, -32(%rbp)	# mode, mode
	movl	%r9d, -52(%rbp)	# unsignedp, unsignedp
	.loc 1 4676 0
	movl	-52(%rbp), %r9d	# unsignedp, tmp68
	movl	-32(%rbp), %r8d	# mode, tmp69
	movq	-48(%rbp), %rcx	# op1, tmp70
	movq	-40(%rbp), %rdx	# op0, tmp71
	movl	-28(%rbp), %esi	# code, tmp72
	movq	-24(%rbp), %rax	# target, tmp73
	movl	16(%rbp), %edi	# normalizep, tmp74
	movl	%edi, (%rsp)	# tmp74,
	movq	%rax, %rdi	# tmp73,
	call	emit_store_flag	#
	movq	%rax, -16(%rbp)	# tmp75, tem
	.loc 1 4677 0
	cmpq	$0, -16(%rbp)	#, tem
	je	.L937	#,
	.loc 1 4678 0
	movq	-16(%rbp), %rax	# tem, D.17710
	jmp	.L938	#
.L937:
	.loc 1 4680 0
	cmpl	$0, 16(%rbp)	#, normalizep
	jne	.L939	#,
	.loc 1 4681 0
	movl	$1, 16(%rbp)	#, normalizep
.L939:
	.loc 1 4685 0
	movq	-24(%rbp), %rax	# target, tmp76
	movzwl	(%rax), %eax	# target_3(D)->code, D.17711
	cmpw	$61, %ax	#, D.17711
	jne	.L940	#,
	.loc 1 4686 0
	movq	-40(%rbp), %rdx	# op0, tmp77
	movq	-24(%rbp), %rax	# target, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17712
	jne	.L940	#,
	.loc 1 4686 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# op1, tmp79
	movq	-24(%rbp), %rax	# target, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.17712
	je	.L941	#,
.L940:
	.loc 1 4687 0 is_stmt 1
	movq	-24(%rbp), %rax	# target, tmp81
	movzbl	2(%rax), %eax	# target_3(D)->mode, D.17713
	movzbl	%al, %eax	# D.17713, D.17714
	movl	%eax, %edi	# D.17714,
	call	gen_reg_rtx	#
	movq	%rax, -24(%rbp)	# tmp82, target
.L941:
	.loc 1 4689 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.17715
	movq	-24(%rbp), %rax	# target, tmp83
	movq	%rdx, %rsi	# D.17715,
	movq	%rax, %rdi	# tmp83,
	call	emit_move_insn	#
	.loc 1 4690 0
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp84, label
	.loc 1 4691 0
	movl	-32(%rbp), %r8d	# mode, tmp85
	movl	-52(%rbp), %ecx	# unsignedp, tmp86
	movl	-28(%rbp), %edx	# code, tmp87
	movq	-48(%rbp), %rsi	# op1, tmp88
	movq	-40(%rbp), %rax	# op0, tmp89
	movq	-8(%rbp), %rdi	# label, tmp90
	movq	%rdi, 8(%rsp)	# tmp90,
	movq	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rax, %rdi	# tmp89,
	call	do_compare_rtx_and_jump	#
	.loc 1 4694 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.17715
	movq	-24(%rbp), %rax	# target, tmp91
	movq	%rdx, %rsi	# D.17715,
	movq	%rax, %rdi	# tmp91,
	call	emit_move_insn	#
	.loc 1 4695 0
	movq	-8(%rbp), %rax	# label, tmp92
	movq	%rax, %rdi	# tmp92,
	call	emit_label	#
	.loc 1 4697 0
	movq	-24(%rbp), %rax	# target, D.17710
.L938:
	.loc 1 4698 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	emit_store_flag_force, .-emit_store_flag_force
	.type	do_cmp_and_jump, @function
do_cmp_and_jump:
.LFB29:
	.loc 1 4714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# arg1, arg1
	movq	%rsi, -32(%rbp)	# arg2, arg2
	movl	%edx, -36(%rbp)	# op, op
	movl	%ecx, -40(%rbp)	# mode, mode
	movq	%r8, -48(%rbp)	# label, label
	.loc 1 4718 0
	movl	-40(%rbp), %eax	# mode, mode.520
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.17716
	cmpl	$1, %eax	#, D.17716
	jne	.L943	#,
	.loc 1 4719 0
	movl	-40(%rbp), %ecx	# mode, tmp69
	movl	-36(%rbp), %eax	# op, tmp70
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	can_compare_p	#
	testl	%eax, %eax	# D.17717
	jne	.L943	#,
.LBB87:
	.loc 1 4721 0
	call	gen_label_rtx	#
	movq	%rax, -8(%rbp)	# tmp71, label2
	.loc 1 4723 0
	movl	-36(%rbp), %eax	# op, tmp73
	subl	$102, %eax	#, tmp72
	cmpl	$9, %eax	#, tmp72
	ja	.L944	#,
	movl	%eax, %eax	# tmp72, tmp74
	movq	.L946(,%rax,8), %rax	#, tmp75
	jmp	*%rax	# tmp75
	.section	.rodata
	.align 8
	.align 4
.L946:
	.quad	.L945
	.quad	.L947
	.quad	.L948
	.quad	.L949
	.quad	.L944
	.quad	.L950
	.quad	.L944
	.quad	.L944
	.quad	.L951
	.quad	.L952
	.text
.L952:
	.loc 1 4726 0
	movq	-48(%rbp), %rdi	# label, tmp76
	movq	-8(%rbp), %rsi	# label2, tmp77
	movq	-24(%rbp), %rcx	# arg1, tmp78
	movq	-32(%rbp), %rdx	# arg2, tmp79
	movl	-40(%rbp), %eax	# mode, tmp80
	movq	%rdi, %r9	# tmp76,
	movq	%rsi, %r8	# tmp77,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp80,
	call	do_jump_by_parts_greater_rtx	#
	.loc 1 4727 0
	jmp	.L953	#
.L951:
	.loc 1 4730 0
	movq	-8(%rbp), %rdi	# label2, tmp81
	movq	-48(%rbp), %rsi	# label, tmp82
	movq	-32(%rbp), %rcx	# arg2, tmp83
	movq	-24(%rbp), %rdx	# arg1, tmp84
	movl	-40(%rbp), %eax	# mode, tmp85
	movq	%rdi, %r9	# tmp81,
	movq	%rsi, %r8	# tmp82,
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp85,
	call	do_jump_by_parts_greater_rtx	#
	.loc 1 4731 0
	jmp	.L953	#
.L950:
	.loc 1 4734 0
	movq	-48(%rbp), %rdi	# label, tmp86
	movq	-8(%rbp), %rsi	# label2, tmp87
	movq	-24(%rbp), %rcx	# arg1, tmp88
	movq	-32(%rbp), %rdx	# arg2, tmp89
	movl	-40(%rbp), %eax	# mode, tmp90
	movq	%rdi, %r9	# tmp86,
	movq	%rsi, %r8	# tmp87,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp90,
	call	do_jump_by_parts_greater_rtx	#
	.loc 1 4735 0
	jmp	.L953	#
.L949:
	.loc 1 4738 0
	movq	-48(%rbp), %rdi	# label, tmp91
	movq	-8(%rbp), %rsi	# label2, tmp92
	movq	-32(%rbp), %rcx	# arg2, tmp93
	movq	-24(%rbp), %rdx	# arg1, tmp94
	movl	-40(%rbp), %eax	# mode, tmp95
	movq	%rdi, %r9	# tmp91,
	movq	%rsi, %r8	# tmp92,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp95,
	call	do_jump_by_parts_greater_rtx	#
	.loc 1 4739 0
	jmp	.L953	#
.L948:
	.loc 1 4742 0
	movq	-8(%rbp), %rdi	# label2, tmp96
	movq	-48(%rbp), %rsi	# label, tmp97
	movq	-24(%rbp), %rcx	# arg1, tmp98
	movq	-32(%rbp), %rdx	# arg2, tmp99
	movl	-40(%rbp), %eax	# mode, tmp100
	movq	%rdi, %r9	# tmp96,
	movq	%rsi, %r8	# tmp97,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp100,
	call	do_jump_by_parts_greater_rtx	#
	.loc 1 4743 0
	jmp	.L953	#
.L947:
	.loc 1 4748 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17718
	cmpq	-32(%rbp), %rax	# arg2, D.17718
	jne	.L954	#,
	.loc 1 4748 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg1, tmp101
	movzbl	2(%rax), %eax	# arg1_8(D)->mode, D.17719
	movzbl	%al, %eax	# D.17719, D.17720
	cmpl	-40(%rbp), %eax	# mode, D.17720
	je	.L955	#,
.L954:
	.loc 1 4749 0 is_stmt 1
	movl	$__FUNCTION__.13412, %edx	#,
	movl	$4749, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L955:
	.loc 1 4750 0
	movq	-48(%rbp), %rdx	# label, tmp102
	movq	-8(%rbp), %rcx	# label2, tmp103
	movq	-24(%rbp), %rax	# arg1, tmp104
	movq	%rcx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	do_jump_by_parts_equality_rtx	#
	.loc 1 4751 0
	jmp	.L953	#
.L945:
	.loc 1 4754 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.17718
	cmpq	-32(%rbp), %rax	# arg2, D.17718
	jne	.L956	#,
	.loc 1 4754 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arg1, tmp105
	movzbl	2(%rax), %eax	# arg1_8(D)->mode, D.17719
	movzbl	%al, %eax	# D.17719, D.17720
	cmpl	-40(%rbp), %eax	# mode, D.17720
	je	.L957	#,
.L956:
	.loc 1 4755 0 is_stmt 1
	movl	$__FUNCTION__.13412, %edx	#,
	movl	$4755, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L957:
	.loc 1 4756 0
	movq	-8(%rbp), %rdx	# label2, tmp106
	movq	-48(%rbp), %rcx	# label, tmp107
	movq	-24(%rbp), %rax	# arg1, tmp108
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	do_jump_by_parts_equality_rtx	#
	.loc 1 4757 0
	jmp	.L953	#
.L944:
	.loc 1 4760 0
	movl	$__FUNCTION__.13412, %edx	#,
	movl	$4760, %esi	#,
	movl	$.LC0, %edi	#,
	call	fancy_abort	#
.L953:
	.loc 1 4763 0
	movq	-8(%rbp), %rax	# label2, tmp109
	movq	%rax, %rdi	# tmp109,
	call	emit_label	#
.LBE87:
	.loc 1 4720 0
	jmp	.L942	#
.L943:
	.loc 1 4766 0
	movl	-40(%rbp), %edi	# mode, tmp110
	movl	-36(%rbp), %edx	# op, tmp111
	movq	-32(%rbp), %rsi	# arg2, tmp112
	movq	-24(%rbp), %rax	# arg1, tmp113
	movq	-48(%rbp), %rcx	# label, tmp114
	movq	%rcx, (%rsp)	# tmp114,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp110,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp113,
	call	emit_cmp_and_jump_insns	#
.L942:
	.loc 1 4767 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	do_cmp_and_jump, .-do_cmp_and_jump
	.section	.rodata
	.align 16
	.type	__FUNCTION__.12772, @object
	.size	__FUNCTION__.12772, 20
__FUNCTION__.12772:
	.string	"mode_for_extraction"
	.align 16
	.type	__FUNCTION__.12791, @object
	.size	__FUNCTION__.12791, 16
__FUNCTION__.12791:
	.string	"store_bit_field"
	.align 16
	.type	__FUNCTION__.12826, @object
	.size	__FUNCTION__.12826, 22
__FUNCTION__.12826:
	.string	"store_fixed_bit_field"
	.align 16
	.type	__FUNCTION__.12875, @object
	.size	__FUNCTION__.12875, 18
__FUNCTION__.12875:
	.string	"extract_bit_field"
	.type	__FUNCTION__.13007, @object
	.size	__FUNCTION__.13007, 13
__FUNCTION__.13007:
	.string	"expand_shift"
	.type	__FUNCTION__.13089, @object
	.size	__FUNCTION__.13089, 12
__FUNCTION__.13089:
	.string	"expand_mult"
	.align 16
	.type	__FUNCTION__.13130, @object
	.size	__FUNCTION__.13130, 18
__FUNCTION__.13130:
	.string	"choose_multiplier"
	.align 16
	.type	__FUNCTION__.13172, @object
	.size	__FUNCTION__.13172, 21
__FUNCTION__.13172:
	.string	"expand_mult_highpart"
	.local	last_div_const.13198
	.comm	last_div_const.13198,8,8
	.type	__FUNCTION__.13214, @object
	.size	__FUNCTION__.13214, 14
__FUNCTION__.13214:
	.string	"expand_divmod"
	.align 16
	.type	__FUNCTION__.13412, @object
	.size	__FUNCTION__.13412, 16
__FUNCTION__.13412:
	.string	"do_cmp_and_jump"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "tree.h"
	.file 5 "machmode.h"
	.file 6 "real.h"
	.file 7 "hashtable.h"
	.file 8 "expr.h"
	.file 9 "insn-codes.h"
	.file 10 "optabs.h"
	.file 11 "recog.h"
	.file 12 "i386.h"
	.file 13 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5b60
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF1649
	.byte	0x1
	.long	.LASF1650
	.long	.LASF1651
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
	.long	0x1ec
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0x9c3
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
	.long	0x1de
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0x9d3
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
	.long	.LASF252
	.byte	0xd0
	.byte	0x4
	.value	0x744
	.long	0x1de
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.value	0x746
	.long	0x11f0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x747
	.long	0x13b0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x748
	.long	0x1435
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x749
	.long	0x14ee
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x74a
	.long	0x146a
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x74b
	.long	0x14ac
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x74c
	.long	0x1553
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x74d
	.long	0x1991
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x74e
	.long	0x16e2
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x74f
	.long	0x157a
	.uleb128 0xb
	.string	"vec"
	.byte	0x4
	.value	0x750
	.long	0x15af
	.uleb128 0xb
	.string	"exp"
	.byte	0x4
	.value	0x751
	.long	0x15f2
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x752
	.long	0x1627
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF27
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF29
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF30
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.long	.LASF31
	.uleb128 0xd
	.byte	0x2
	.byte	0x7
	.long	.LASF32
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF33
	.uleb128 0xd
	.byte	0x2
	.byte	0x5
	.long	.LASF34
	.uleb128 0x3
	.byte	0x8
	.long	0x223
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.long	.LASF35
	.uleb128 0xe
	.long	0x223
	.long	0x23a
	.uleb128 0xf
	.long	0x1e5
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x240
	.uleb128 0x10
	.long	0x223
	.uleb128 0xd
	.byte	0x8
	.byte	0x7
	.long	.LASF36
	.uleb128 0xd
	.byte	0x8
	.byte	0x5
	.long	.LASF37
	.uleb128 0x3
	.byte	0x8
	.long	0x1de
	.uleb128 0x3
	.byte	0x8
	.long	0x25f
	.uleb128 0x11
	.uleb128 0x12
	.long	.LASF98
	.byte	0x4
	.byte	0x5
	.byte	0x1d
	.long	0x3d5
	.uleb128 0x13
	.long	.LASF38
	.sleb128 0
	.uleb128 0x13
	.long	.LASF39
	.sleb128 1
	.uleb128 0x13
	.long	.LASF40
	.sleb128 2
	.uleb128 0x13
	.long	.LASF41
	.sleb128 3
	.uleb128 0x13
	.long	.LASF42
	.sleb128 4
	.uleb128 0x13
	.long	.LASF43
	.sleb128 5
	.uleb128 0x13
	.long	.LASF44
	.sleb128 6
	.uleb128 0x13
	.long	.LASF45
	.sleb128 7
	.uleb128 0x13
	.long	.LASF46
	.sleb128 8
	.uleb128 0x13
	.long	.LASF47
	.sleb128 9
	.uleb128 0x13
	.long	.LASF48
	.sleb128 10
	.uleb128 0x13
	.long	.LASF49
	.sleb128 11
	.uleb128 0x13
	.long	.LASF50
	.sleb128 12
	.uleb128 0x13
	.long	.LASF51
	.sleb128 13
	.uleb128 0x13
	.long	.LASF52
	.sleb128 14
	.uleb128 0x13
	.long	.LASF53
	.sleb128 15
	.uleb128 0x13
	.long	.LASF54
	.sleb128 16
	.uleb128 0x13
	.long	.LASF55
	.sleb128 17
	.uleb128 0x13
	.long	.LASF56
	.sleb128 18
	.uleb128 0x13
	.long	.LASF57
	.sleb128 19
	.uleb128 0x13
	.long	.LASF58
	.sleb128 20
	.uleb128 0x13
	.long	.LASF59
	.sleb128 21
	.uleb128 0x13
	.long	.LASF60
	.sleb128 22
	.uleb128 0x13
	.long	.LASF61
	.sleb128 23
	.uleb128 0x13
	.long	.LASF62
	.sleb128 24
	.uleb128 0x13
	.long	.LASF63
	.sleb128 25
	.uleb128 0x13
	.long	.LASF64
	.sleb128 26
	.uleb128 0x13
	.long	.LASF65
	.sleb128 27
	.uleb128 0x13
	.long	.LASF66
	.sleb128 28
	.uleb128 0x13
	.long	.LASF67
	.sleb128 29
	.uleb128 0x13
	.long	.LASF68
	.sleb128 30
	.uleb128 0x13
	.long	.LASF69
	.sleb128 31
	.uleb128 0x13
	.long	.LASF70
	.sleb128 32
	.uleb128 0x13
	.long	.LASF71
	.sleb128 33
	.uleb128 0x13
	.long	.LASF72
	.sleb128 34
	.uleb128 0x13
	.long	.LASF73
	.sleb128 35
	.uleb128 0x13
	.long	.LASF74
	.sleb128 36
	.uleb128 0x13
	.long	.LASF75
	.sleb128 37
	.uleb128 0x13
	.long	.LASF76
	.sleb128 38
	.uleb128 0x13
	.long	.LASF77
	.sleb128 39
	.uleb128 0x13
	.long	.LASF78
	.sleb128 40
	.uleb128 0x13
	.long	.LASF79
	.sleb128 41
	.uleb128 0x13
	.long	.LASF80
	.sleb128 42
	.uleb128 0x13
	.long	.LASF81
	.sleb128 43
	.uleb128 0x13
	.long	.LASF82
	.sleb128 44
	.uleb128 0x13
	.long	.LASF83
	.sleb128 45
	.uleb128 0x13
	.long	.LASF84
	.sleb128 46
	.uleb128 0x13
	.long	.LASF85
	.sleb128 47
	.uleb128 0x13
	.long	.LASF86
	.sleb128 48
	.uleb128 0x13
	.long	.LASF87
	.sleb128 49
	.uleb128 0x13
	.long	.LASF88
	.sleb128 50
	.uleb128 0x13
	.long	.LASF89
	.sleb128 51
	.uleb128 0x13
	.long	.LASF90
	.sleb128 52
	.uleb128 0x13
	.long	.LASF91
	.sleb128 53
	.uleb128 0x13
	.long	.LASF92
	.sleb128 54
	.uleb128 0x13
	.long	.LASF93
	.sleb128 55
	.uleb128 0x13
	.long	.LASF94
	.sleb128 56
	.uleb128 0x13
	.long	.LASF95
	.sleb128 57
	.uleb128 0x13
	.long	.LASF96
	.sleb128 58
	.uleb128 0x13
	.long	.LASF97
	.sleb128 59
	.byte	0
	.uleb128 0x12
	.long	.LASF99
	.byte	0x4
	.byte	0x5
	.byte	0x2c
	.long	0x41e
	.uleb128 0x13
	.long	.LASF100
	.sleb128 0
	.uleb128 0x13
	.long	.LASF101
	.sleb128 1
	.uleb128 0x13
	.long	.LASF102
	.sleb128 2
	.uleb128 0x13
	.long	.LASF103
	.sleb128 3
	.uleb128 0x13
	.long	.LASF104
	.sleb128 4
	.uleb128 0x13
	.long	.LASF105
	.sleb128 5
	.uleb128 0x13
	.long	.LASF106
	.sleb128 6
	.uleb128 0x13
	.long	.LASF107
	.sleb128 7
	.uleb128 0x13
	.long	.LASF108
	.sleb128 8
	.uleb128 0x13
	.long	.LASF109
	.sleb128 9
	.byte	0
	.uleb128 0x12
	.long	.LASF110
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0x81a
	.uleb128 0x13
	.long	.LASF111
	.sleb128 0
	.uleb128 0x14
	.string	"NIL"
	.sleb128 1
	.uleb128 0x13
	.long	.LASF112
	.sleb128 2
	.uleb128 0x13
	.long	.LASF113
	.sleb128 3
	.uleb128 0x13
	.long	.LASF114
	.sleb128 4
	.uleb128 0x13
	.long	.LASF115
	.sleb128 5
	.uleb128 0x13
	.long	.LASF116
	.sleb128 6
	.uleb128 0x13
	.long	.LASF117
	.sleb128 7
	.uleb128 0x13
	.long	.LASF118
	.sleb128 8
	.uleb128 0x13
	.long	.LASF119
	.sleb128 9
	.uleb128 0x13
	.long	.LASF120
	.sleb128 10
	.uleb128 0x13
	.long	.LASF121
	.sleb128 11
	.uleb128 0x13
	.long	.LASF122
	.sleb128 12
	.uleb128 0x13
	.long	.LASF123
	.sleb128 13
	.uleb128 0x13
	.long	.LASF124
	.sleb128 14
	.uleb128 0x13
	.long	.LASF125
	.sleb128 15
	.uleb128 0x13
	.long	.LASF126
	.sleb128 16
	.uleb128 0x13
	.long	.LASF127
	.sleb128 17
	.uleb128 0x13
	.long	.LASF128
	.sleb128 18
	.uleb128 0x13
	.long	.LASF129
	.sleb128 19
	.uleb128 0x13
	.long	.LASF130
	.sleb128 20
	.uleb128 0x13
	.long	.LASF131
	.sleb128 21
	.uleb128 0x13
	.long	.LASF132
	.sleb128 22
	.uleb128 0x13
	.long	.LASF133
	.sleb128 23
	.uleb128 0x13
	.long	.LASF134
	.sleb128 24
	.uleb128 0x13
	.long	.LASF135
	.sleb128 25
	.uleb128 0x13
	.long	.LASF136
	.sleb128 26
	.uleb128 0x13
	.long	.LASF137
	.sleb128 27
	.uleb128 0x13
	.long	.LASF138
	.sleb128 28
	.uleb128 0x13
	.long	.LASF139
	.sleb128 29
	.uleb128 0x13
	.long	.LASF140
	.sleb128 30
	.uleb128 0x13
	.long	.LASF141
	.sleb128 31
	.uleb128 0x13
	.long	.LASF142
	.sleb128 32
	.uleb128 0x13
	.long	.LASF143
	.sleb128 33
	.uleb128 0x13
	.long	.LASF144
	.sleb128 34
	.uleb128 0x13
	.long	.LASF145
	.sleb128 35
	.uleb128 0x13
	.long	.LASF146
	.sleb128 36
	.uleb128 0x13
	.long	.LASF147
	.sleb128 37
	.uleb128 0x13
	.long	.LASF148
	.sleb128 38
	.uleb128 0x13
	.long	.LASF149
	.sleb128 39
	.uleb128 0x13
	.long	.LASF150
	.sleb128 40
	.uleb128 0x13
	.long	.LASF151
	.sleb128 41
	.uleb128 0x13
	.long	.LASF152
	.sleb128 42
	.uleb128 0x13
	.long	.LASF153
	.sleb128 43
	.uleb128 0x13
	.long	.LASF154
	.sleb128 44
	.uleb128 0x13
	.long	.LASF155
	.sleb128 45
	.uleb128 0x13
	.long	.LASF156
	.sleb128 46
	.uleb128 0x14
	.string	"SET"
	.sleb128 47
	.uleb128 0x14
	.string	"USE"
	.sleb128 48
	.uleb128 0x13
	.long	.LASF157
	.sleb128 49
	.uleb128 0x13
	.long	.LASF158
	.sleb128 50
	.uleb128 0x13
	.long	.LASF159
	.sleb128 51
	.uleb128 0x13
	.long	.LASF160
	.sleb128 52
	.uleb128 0x13
	.long	.LASF161
	.sleb128 53
	.uleb128 0x13
	.long	.LASF162
	.sleb128 54
	.uleb128 0x13
	.long	.LASF163
	.sleb128 55
	.uleb128 0x13
	.long	.LASF164
	.sleb128 56
	.uleb128 0x13
	.long	.LASF165
	.sleb128 57
	.uleb128 0x13
	.long	.LASF166
	.sleb128 58
	.uleb128 0x14
	.string	"PC"
	.sleb128 59
	.uleb128 0x13
	.long	.LASF167
	.sleb128 60
	.uleb128 0x14
	.string	"REG"
	.sleb128 61
	.uleb128 0x13
	.long	.LASF168
	.sleb128 62
	.uleb128 0x13
	.long	.LASF169
	.sleb128 63
	.uleb128 0x13
	.long	.LASF170
	.sleb128 64
	.uleb128 0x13
	.long	.LASF171
	.sleb128 65
	.uleb128 0x14
	.string	"MEM"
	.sleb128 66
	.uleb128 0x13
	.long	.LASF172
	.sleb128 67
	.uleb128 0x13
	.long	.LASF173
	.sleb128 68
	.uleb128 0x14
	.string	"CC0"
	.sleb128 69
	.uleb128 0x13
	.long	.LASF174
	.sleb128 70
	.uleb128 0x13
	.long	.LASF175
	.sleb128 71
	.uleb128 0x13
	.long	.LASF176
	.sleb128 72
	.uleb128 0x13
	.long	.LASF177
	.sleb128 73
	.uleb128 0x13
	.long	.LASF178
	.sleb128 74
	.uleb128 0x13
	.long	.LASF179
	.sleb128 75
	.uleb128 0x13
	.long	.LASF180
	.sleb128 76
	.uleb128 0x14
	.string	"NEG"
	.sleb128 77
	.uleb128 0x13
	.long	.LASF181
	.sleb128 78
	.uleb128 0x14
	.string	"DIV"
	.sleb128 79
	.uleb128 0x14
	.string	"MOD"
	.sleb128 80
	.uleb128 0x13
	.long	.LASF182
	.sleb128 81
	.uleb128 0x13
	.long	.LASF183
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
	.long	.LASF184
	.sleb128 87
	.uleb128 0x13
	.long	.LASF185
	.sleb128 88
	.uleb128 0x13
	.long	.LASF186
	.sleb128 89
	.uleb128 0x13
	.long	.LASF187
	.sleb128 90
	.uleb128 0x13
	.long	.LASF188
	.sleb128 91
	.uleb128 0x13
	.long	.LASF189
	.sleb128 92
	.uleb128 0x13
	.long	.LASF190
	.sleb128 93
	.uleb128 0x13
	.long	.LASF191
	.sleb128 94
	.uleb128 0x13
	.long	.LASF192
	.sleb128 95
	.uleb128 0x13
	.long	.LASF193
	.sleb128 96
	.uleb128 0x13
	.long	.LASF194
	.sleb128 97
	.uleb128 0x13
	.long	.LASF195
	.sleb128 98
	.uleb128 0x13
	.long	.LASF196
	.sleb128 99
	.uleb128 0x13
	.long	.LASF197
	.sleb128 100
	.uleb128 0x13
	.long	.LASF198
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
	.long	.LASF199
	.sleb128 112
	.uleb128 0x13
	.long	.LASF200
	.sleb128 113
	.uleb128 0x13
	.long	.LASF201
	.sleb128 114
	.uleb128 0x13
	.long	.LASF202
	.sleb128 115
	.uleb128 0x13
	.long	.LASF203
	.sleb128 116
	.uleb128 0x13
	.long	.LASF204
	.sleb128 117
	.uleb128 0x13
	.long	.LASF205
	.sleb128 118
	.uleb128 0x13
	.long	.LASF206
	.sleb128 119
	.uleb128 0x13
	.long	.LASF207
	.sleb128 120
	.uleb128 0x13
	.long	.LASF208
	.sleb128 121
	.uleb128 0x13
	.long	.LASF209
	.sleb128 122
	.uleb128 0x13
	.long	.LASF210
	.sleb128 123
	.uleb128 0x13
	.long	.LASF211
	.sleb128 124
	.uleb128 0x13
	.long	.LASF212
	.sleb128 125
	.uleb128 0x14
	.string	"FIX"
	.sleb128 126
	.uleb128 0x13
	.long	.LASF213
	.sleb128 127
	.uleb128 0x13
	.long	.LASF214
	.sleb128 128
	.uleb128 0x14
	.string	"ABS"
	.sleb128 129
	.uleb128 0x13
	.long	.LASF215
	.sleb128 130
	.uleb128 0x14
	.string	"FFS"
	.sleb128 131
	.uleb128 0x13
	.long	.LASF216
	.sleb128 132
	.uleb128 0x13
	.long	.LASF217
	.sleb128 133
	.uleb128 0x13
	.long	.LASF218
	.sleb128 134
	.uleb128 0x13
	.long	.LASF219
	.sleb128 135
	.uleb128 0x13
	.long	.LASF220
	.sleb128 136
	.uleb128 0x13
	.long	.LASF221
	.sleb128 137
	.uleb128 0x13
	.long	.LASF222
	.sleb128 138
	.uleb128 0x13
	.long	.LASF223
	.sleb128 139
	.uleb128 0x13
	.long	.LASF224
	.sleb128 140
	.uleb128 0x13
	.long	.LASF225
	.sleb128 141
	.uleb128 0x13
	.long	.LASF226
	.sleb128 142
	.uleb128 0x13
	.long	.LASF227
	.sleb128 143
	.uleb128 0x13
	.long	.LASF228
	.sleb128 144
	.uleb128 0x13
	.long	.LASF229
	.sleb128 145
	.uleb128 0x13
	.long	.LASF230
	.sleb128 146
	.uleb128 0x13
	.long	.LASF231
	.sleb128 147
	.uleb128 0x13
	.long	.LASF232
	.sleb128 148
	.uleb128 0x13
	.long	.LASF233
	.sleb128 149
	.uleb128 0x13
	.long	.LASF234
	.sleb128 150
	.uleb128 0x13
	.long	.LASF235
	.sleb128 151
	.uleb128 0x14
	.string	"PHI"
	.sleb128 152
	.uleb128 0x13
	.long	.LASF236
	.sleb128 153
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0x89b
	.uleb128 0x5
	.long	.LASF237
	.byte	0x2
	.byte	0x47
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF238
	.byte	0x2
	.byte	0x49
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF239
	.byte	0x2
	.byte	0x4a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF240
	.byte	0x2
	.byte	0x4c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF241
	.byte	0x2
	.byte	0x4e
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF242
	.byte	0x2
	.byte	0x50
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF243
	.byte	0x2
	.byte	0x53
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF244
	.byte	0x2
	.byte	0x55
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF245
	.byte	0x2
	.byte	0x56
	.long	0x81a
	.uleb128 0x15
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0x8eb
	.uleb128 0x8
	.long	.LASF246
	.byte	0x2
	.byte	0x5e
	.long	0x1f3
	.byte	0
	.uleb128 0x8
	.long	.LASF247
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF248
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF249
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF250
	.byte	0x2
	.byte	0x62
	.long	0x1ec
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF251
	.byte	0x2
	.byte	0x63
	.long	0x8a6
	.uleb128 0x16
	.long	.LASF253
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0x991
	.uleb128 0x17
	.long	.LASF254
	.byte	0x2
	.byte	0x69
	.long	0x1f3
	.uleb128 0x17
	.long	.LASF255
	.byte	0x2
	.byte	0x6a
	.long	0x1de
	.uleb128 0x17
	.long	.LASF256
	.byte	0x2
	.byte	0x6b
	.long	0x1ec
	.uleb128 0x17
	.long	.LASF257
	.byte	0x2
	.byte	0x6c
	.long	0x23a
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
	.long	.LASF258
	.byte	0x2
	.byte	0x6f
	.long	0x260
	.uleb128 0x17
	.long	.LASF259
	.byte	0x2
	.byte	0x70
	.long	0x89b
	.uleb128 0x17
	.long	.LASF260
	.byte	0x2
	.byte	0x71
	.long	0x996
	.uleb128 0x17
	.long	.LASF261
	.byte	0x2
	.byte	0x72
	.long	0x9a1
	.uleb128 0x17
	.long	.LASF262
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x18
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0x9ac
	.uleb128 0x17
	.long	.LASF263
	.byte	0x2
	.byte	0x75
	.long	0x9b2
	.byte	0
	.uleb128 0x19
	.long	.LASF264
	.uleb128 0x3
	.byte	0x8
	.long	0x991
	.uleb128 0x19
	.long	.LASF265
	.uleb128 0x3
	.byte	0x8
	.long	0x99c
	.uleb128 0x19
	.long	.LASF266
	.uleb128 0x3
	.byte	0x8
	.long	0x9a7
	.uleb128 0x3
	.byte	0x8
	.long	0x8eb
	.uleb128 0x7
	.long	.LASF267
	.byte	0x2
	.byte	0x76
	.long	0x8f6
	.uleb128 0xe
	.long	0x9b8
	.long	0x9d3
	.uleb128 0xf
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x2d
	.long	0x9e3
	.uleb128 0xf
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xaa5
	.uleb128 0x13
	.long	.LASF269
	.sleb128 1
	.uleb128 0x13
	.long	.LASF270
	.sleb128 2
	.uleb128 0x13
	.long	.LASF271
	.sleb128 3
	.uleb128 0x13
	.long	.LASF272
	.sleb128 4
	.uleb128 0x13
	.long	.LASF273
	.sleb128 5
	.uleb128 0x13
	.long	.LASF274
	.sleb128 6
	.uleb128 0x13
	.long	.LASF275
	.sleb128 7
	.uleb128 0x13
	.long	.LASF276
	.sleb128 8
	.uleb128 0x13
	.long	.LASF277
	.sleb128 9
	.uleb128 0x13
	.long	.LASF278
	.sleb128 10
	.uleb128 0x13
	.long	.LASF279
	.sleb128 11
	.uleb128 0x13
	.long	.LASF280
	.sleb128 12
	.uleb128 0x13
	.long	.LASF281
	.sleb128 13
	.uleb128 0x13
	.long	.LASF282
	.sleb128 14
	.uleb128 0x13
	.long	.LASF283
	.sleb128 15
	.uleb128 0x13
	.long	.LASF284
	.sleb128 16
	.uleb128 0x13
	.long	.LASF285
	.sleb128 17
	.uleb128 0x13
	.long	.LASF286
	.sleb128 18
	.uleb128 0x13
	.long	.LASF287
	.sleb128 19
	.uleb128 0x13
	.long	.LASF288
	.sleb128 20
	.uleb128 0x13
	.long	.LASF289
	.sleb128 21
	.uleb128 0x13
	.long	.LASF290
	.sleb128 22
	.uleb128 0x13
	.long	.LASF291
	.sleb128 23
	.uleb128 0x13
	.long	.LASF292
	.sleb128 24
	.uleb128 0x13
	.long	.LASF293
	.sleb128 25
	.uleb128 0x13
	.long	.LASF294
	.sleb128 26
	.uleb128 0x13
	.long	.LASF295
	.sleb128 27
	.uleb128 0x13
	.long	.LASF296
	.sleb128 28
	.uleb128 0x13
	.long	.LASF297
	.sleb128 29
	.uleb128 0x13
	.long	.LASF298
	.sleb128 30
	.byte	0
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xb54
	.uleb128 0x13
	.long	.LASF300
	.sleb128 -100
	.uleb128 0x13
	.long	.LASF301
	.sleb128 -99
	.uleb128 0x13
	.long	.LASF302
	.sleb128 -98
	.uleb128 0x13
	.long	.LASF303
	.sleb128 -97
	.uleb128 0x13
	.long	.LASF304
	.sleb128 -96
	.uleb128 0x13
	.long	.LASF305
	.sleb128 -95
	.uleb128 0x13
	.long	.LASF306
	.sleb128 -94
	.uleb128 0x13
	.long	.LASF307
	.sleb128 -93
	.uleb128 0x13
	.long	.LASF308
	.sleb128 -92
	.uleb128 0x13
	.long	.LASF309
	.sleb128 -91
	.uleb128 0x13
	.long	.LASF310
	.sleb128 -90
	.uleb128 0x13
	.long	.LASF311
	.sleb128 -89
	.uleb128 0x13
	.long	.LASF312
	.sleb128 -88
	.uleb128 0x13
	.long	.LASF313
	.sleb128 -87
	.uleb128 0x13
	.long	.LASF314
	.sleb128 -86
	.uleb128 0x13
	.long	.LASF315
	.sleb128 -85
	.uleb128 0x13
	.long	.LASF316
	.sleb128 -84
	.uleb128 0x13
	.long	.LASF317
	.sleb128 -83
	.uleb128 0x13
	.long	.LASF318
	.sleb128 -82
	.uleb128 0x13
	.long	.LASF319
	.sleb128 -81
	.uleb128 0x13
	.long	.LASF320
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF321
	.sleb128 -79
	.uleb128 0x13
	.long	.LASF322
	.sleb128 -78
	.byte	0
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xbaa
	.uleb128 0x13
	.long	.LASF324
	.sleb128 0
	.uleb128 0x13
	.long	.LASF325
	.sleb128 1
	.uleb128 0x13
	.long	.LASF326
	.sleb128 2
	.uleb128 0x13
	.long	.LASF327
	.sleb128 3
	.uleb128 0x13
	.long	.LASF328
	.sleb128 4
	.uleb128 0x13
	.long	.LASF329
	.sleb128 5
	.uleb128 0x13
	.long	.LASF330
	.sleb128 6
	.uleb128 0x13
	.long	.LASF331
	.sleb128 7
	.uleb128 0x13
	.long	.LASF332
	.sleb128 8
	.uleb128 0x13
	.long	.LASF333
	.sleb128 9
	.uleb128 0x13
	.long	.LASF334
	.sleb128 10
	.uleb128 0x13
	.long	.LASF335
	.sleb128 11
	.byte	0
	.uleb128 0x12
	.long	.LASF336
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.long	0xf83
	.uleb128 0x13
	.long	.LASF337
	.sleb128 0
	.uleb128 0x13
	.long	.LASF338
	.sleb128 1
	.uleb128 0x13
	.long	.LASF339
	.sleb128 2
	.uleb128 0x13
	.long	.LASF340
	.sleb128 3
	.uleb128 0x13
	.long	.LASF341
	.sleb128 4
	.uleb128 0x13
	.long	.LASF342
	.sleb128 5
	.uleb128 0x13
	.long	.LASF343
	.sleb128 6
	.uleb128 0x13
	.long	.LASF344
	.sleb128 7
	.uleb128 0x13
	.long	.LASF345
	.sleb128 8
	.uleb128 0x13
	.long	.LASF346
	.sleb128 9
	.uleb128 0x13
	.long	.LASF347
	.sleb128 10
	.uleb128 0x13
	.long	.LASF348
	.sleb128 11
	.uleb128 0x13
	.long	.LASF349
	.sleb128 12
	.uleb128 0x13
	.long	.LASF350
	.sleb128 13
	.uleb128 0x13
	.long	.LASF351
	.sleb128 14
	.uleb128 0x13
	.long	.LASF352
	.sleb128 15
	.uleb128 0x13
	.long	.LASF353
	.sleb128 16
	.uleb128 0x13
	.long	.LASF354
	.sleb128 17
	.uleb128 0x13
	.long	.LASF355
	.sleb128 18
	.uleb128 0x13
	.long	.LASF356
	.sleb128 19
	.uleb128 0x13
	.long	.LASF357
	.sleb128 20
	.uleb128 0x13
	.long	.LASF358
	.sleb128 21
	.uleb128 0x13
	.long	.LASF359
	.sleb128 22
	.uleb128 0x13
	.long	.LASF360
	.sleb128 23
	.uleb128 0x13
	.long	.LASF361
	.sleb128 24
	.uleb128 0x13
	.long	.LASF362
	.sleb128 25
	.uleb128 0x13
	.long	.LASF363
	.sleb128 26
	.uleb128 0x13
	.long	.LASF364
	.sleb128 27
	.uleb128 0x13
	.long	.LASF365
	.sleb128 28
	.uleb128 0x13
	.long	.LASF366
	.sleb128 29
	.uleb128 0x13
	.long	.LASF367
	.sleb128 30
	.uleb128 0x13
	.long	.LASF368
	.sleb128 31
	.uleb128 0x13
	.long	.LASF369
	.sleb128 32
	.uleb128 0x13
	.long	.LASF370
	.sleb128 33
	.uleb128 0x13
	.long	.LASF371
	.sleb128 34
	.uleb128 0x13
	.long	.LASF372
	.sleb128 35
	.uleb128 0x13
	.long	.LASF373
	.sleb128 36
	.uleb128 0x13
	.long	.LASF374
	.sleb128 37
	.uleb128 0x13
	.long	.LASF375
	.sleb128 38
	.uleb128 0x13
	.long	.LASF376
	.sleb128 39
	.uleb128 0x13
	.long	.LASF377
	.sleb128 40
	.uleb128 0x13
	.long	.LASF378
	.sleb128 41
	.uleb128 0x13
	.long	.LASF379
	.sleb128 42
	.uleb128 0x13
	.long	.LASF380
	.sleb128 43
	.uleb128 0x13
	.long	.LASF381
	.sleb128 44
	.uleb128 0x13
	.long	.LASF382
	.sleb128 45
	.uleb128 0x13
	.long	.LASF383
	.sleb128 46
	.uleb128 0x13
	.long	.LASF384
	.sleb128 47
	.uleb128 0x13
	.long	.LASF385
	.sleb128 48
	.uleb128 0x13
	.long	.LASF386
	.sleb128 49
	.uleb128 0x13
	.long	.LASF387
	.sleb128 50
	.uleb128 0x13
	.long	.LASF388
	.sleb128 51
	.uleb128 0x13
	.long	.LASF389
	.sleb128 52
	.uleb128 0x13
	.long	.LASF390
	.sleb128 53
	.uleb128 0x13
	.long	.LASF391
	.sleb128 54
	.uleb128 0x13
	.long	.LASF392
	.sleb128 55
	.uleb128 0x13
	.long	.LASF393
	.sleb128 56
	.uleb128 0x13
	.long	.LASF394
	.sleb128 57
	.uleb128 0x13
	.long	.LASF395
	.sleb128 58
	.uleb128 0x13
	.long	.LASF396
	.sleb128 59
	.uleb128 0x13
	.long	.LASF397
	.sleb128 60
	.uleb128 0x13
	.long	.LASF398
	.sleb128 61
	.uleb128 0x13
	.long	.LASF399
	.sleb128 62
	.uleb128 0x13
	.long	.LASF400
	.sleb128 63
	.uleb128 0x13
	.long	.LASF401
	.sleb128 64
	.uleb128 0x13
	.long	.LASF402
	.sleb128 65
	.uleb128 0x13
	.long	.LASF403
	.sleb128 66
	.uleb128 0x13
	.long	.LASF404
	.sleb128 67
	.uleb128 0x13
	.long	.LASF405
	.sleb128 68
	.uleb128 0x13
	.long	.LASF406
	.sleb128 69
	.uleb128 0x13
	.long	.LASF407
	.sleb128 70
	.uleb128 0x13
	.long	.LASF408
	.sleb128 71
	.uleb128 0x13
	.long	.LASF409
	.sleb128 72
	.uleb128 0x13
	.long	.LASF410
	.sleb128 73
	.uleb128 0x13
	.long	.LASF411
	.sleb128 74
	.uleb128 0x13
	.long	.LASF412
	.sleb128 75
	.uleb128 0x13
	.long	.LASF413
	.sleb128 76
	.uleb128 0x13
	.long	.LASF414
	.sleb128 77
	.uleb128 0x13
	.long	.LASF415
	.sleb128 78
	.uleb128 0x13
	.long	.LASF416
	.sleb128 79
	.uleb128 0x13
	.long	.LASF417
	.sleb128 80
	.uleb128 0x13
	.long	.LASF418
	.sleb128 81
	.uleb128 0x13
	.long	.LASF419
	.sleb128 82
	.uleb128 0x13
	.long	.LASF420
	.sleb128 83
	.uleb128 0x13
	.long	.LASF421
	.sleb128 84
	.uleb128 0x13
	.long	.LASF422
	.sleb128 85
	.uleb128 0x13
	.long	.LASF423
	.sleb128 86
	.uleb128 0x13
	.long	.LASF424
	.sleb128 87
	.uleb128 0x13
	.long	.LASF425
	.sleb128 88
	.uleb128 0x13
	.long	.LASF426
	.sleb128 89
	.uleb128 0x13
	.long	.LASF427
	.sleb128 90
	.uleb128 0x13
	.long	.LASF428
	.sleb128 91
	.uleb128 0x13
	.long	.LASF429
	.sleb128 92
	.uleb128 0x13
	.long	.LASF430
	.sleb128 93
	.uleb128 0x13
	.long	.LASF431
	.sleb128 94
	.uleb128 0x13
	.long	.LASF432
	.sleb128 95
	.uleb128 0x13
	.long	.LASF433
	.sleb128 96
	.uleb128 0x13
	.long	.LASF434
	.sleb128 97
	.uleb128 0x13
	.long	.LASF435
	.sleb128 98
	.uleb128 0x13
	.long	.LASF436
	.sleb128 99
	.uleb128 0x13
	.long	.LASF437
	.sleb128 100
	.uleb128 0x13
	.long	.LASF438
	.sleb128 101
	.uleb128 0x13
	.long	.LASF439
	.sleb128 102
	.uleb128 0x13
	.long	.LASF440
	.sleb128 103
	.uleb128 0x13
	.long	.LASF441
	.sleb128 104
	.uleb128 0x13
	.long	.LASF442
	.sleb128 105
	.uleb128 0x13
	.long	.LASF443
	.sleb128 106
	.uleb128 0x13
	.long	.LASF444
	.sleb128 107
	.uleb128 0x13
	.long	.LASF445
	.sleb128 108
	.uleb128 0x13
	.long	.LASF446
	.sleb128 109
	.uleb128 0x13
	.long	.LASF447
	.sleb128 110
	.uleb128 0x13
	.long	.LASF448
	.sleb128 111
	.uleb128 0x13
	.long	.LASF449
	.sleb128 112
	.uleb128 0x13
	.long	.LASF450
	.sleb128 113
	.uleb128 0x13
	.long	.LASF451
	.sleb128 114
	.uleb128 0x13
	.long	.LASF452
	.sleb128 115
	.uleb128 0x13
	.long	.LASF453
	.sleb128 116
	.uleb128 0x13
	.long	.LASF454
	.sleb128 117
	.uleb128 0x13
	.long	.LASF455
	.sleb128 118
	.uleb128 0x13
	.long	.LASF456
	.sleb128 119
	.uleb128 0x13
	.long	.LASF457
	.sleb128 120
	.uleb128 0x13
	.long	.LASF458
	.sleb128 121
	.uleb128 0x13
	.long	.LASF459
	.sleb128 122
	.uleb128 0x13
	.long	.LASF460
	.sleb128 123
	.uleb128 0x13
	.long	.LASF461
	.sleb128 124
	.uleb128 0x13
	.long	.LASF462
	.sleb128 125
	.uleb128 0x13
	.long	.LASF463
	.sleb128 126
	.uleb128 0x13
	.long	.LASF464
	.sleb128 127
	.uleb128 0x13
	.long	.LASF465
	.sleb128 128
	.uleb128 0x13
	.long	.LASF466
	.sleb128 129
	.uleb128 0x13
	.long	.LASF467
	.sleb128 130
	.uleb128 0x13
	.long	.LASF468
	.sleb128 131
	.uleb128 0x13
	.long	.LASF469
	.sleb128 132
	.uleb128 0x13
	.long	.LASF470
	.sleb128 133
	.uleb128 0x13
	.long	.LASF471
	.sleb128 134
	.uleb128 0x13
	.long	.LASF472
	.sleb128 135
	.uleb128 0x13
	.long	.LASF473
	.sleb128 136
	.uleb128 0x13
	.long	.LASF474
	.sleb128 137
	.uleb128 0x13
	.long	.LASF475
	.sleb128 138
	.uleb128 0x13
	.long	.LASF476
	.sleb128 139
	.uleb128 0x13
	.long	.LASF477
	.sleb128 140
	.uleb128 0x13
	.long	.LASF478
	.sleb128 141
	.uleb128 0x13
	.long	.LASF479
	.sleb128 142
	.uleb128 0x13
	.long	.LASF480
	.sleb128 143
	.uleb128 0x13
	.long	.LASF481
	.sleb128 144
	.uleb128 0x13
	.long	.LASF482
	.sleb128 145
	.uleb128 0x13
	.long	.LASF483
	.sleb128 146
	.uleb128 0x13
	.long	.LASF484
	.sleb128 147
	.byte	0
	.uleb128 0x12
	.long	.LASF485
	.byte	0x4
	.byte	0x4
	.byte	0x54
	.long	0x11f0
	.uleb128 0x13
	.long	.LASF486
	.sleb128 0
	.uleb128 0x13
	.long	.LASF487
	.sleb128 1
	.uleb128 0x13
	.long	.LASF488
	.sleb128 2
	.uleb128 0x13
	.long	.LASF489
	.sleb128 3
	.uleb128 0x13
	.long	.LASF490
	.sleb128 4
	.uleb128 0x13
	.long	.LASF491
	.sleb128 5
	.uleb128 0x13
	.long	.LASF492
	.sleb128 6
	.uleb128 0x13
	.long	.LASF493
	.sleb128 7
	.uleb128 0x13
	.long	.LASF494
	.sleb128 8
	.uleb128 0x13
	.long	.LASF495
	.sleb128 9
	.uleb128 0x13
	.long	.LASF496
	.sleb128 10
	.uleb128 0x13
	.long	.LASF497
	.sleb128 11
	.uleb128 0x13
	.long	.LASF498
	.sleb128 12
	.uleb128 0x13
	.long	.LASF499
	.sleb128 13
	.uleb128 0x13
	.long	.LASF500
	.sleb128 14
	.uleb128 0x13
	.long	.LASF501
	.sleb128 15
	.uleb128 0x13
	.long	.LASF502
	.sleb128 16
	.uleb128 0x13
	.long	.LASF503
	.sleb128 17
	.uleb128 0x13
	.long	.LASF504
	.sleb128 18
	.uleb128 0x13
	.long	.LASF505
	.sleb128 19
	.uleb128 0x13
	.long	.LASF506
	.sleb128 20
	.uleb128 0x13
	.long	.LASF507
	.sleb128 21
	.uleb128 0x13
	.long	.LASF508
	.sleb128 22
	.uleb128 0x13
	.long	.LASF509
	.sleb128 23
	.uleb128 0x13
	.long	.LASF510
	.sleb128 24
	.uleb128 0x13
	.long	.LASF511
	.sleb128 25
	.uleb128 0x13
	.long	.LASF512
	.sleb128 26
	.uleb128 0x13
	.long	.LASF513
	.sleb128 27
	.uleb128 0x13
	.long	.LASF514
	.sleb128 28
	.uleb128 0x13
	.long	.LASF515
	.sleb128 29
	.uleb128 0x13
	.long	.LASF516
	.sleb128 30
	.uleb128 0x13
	.long	.LASF517
	.sleb128 31
	.uleb128 0x13
	.long	.LASF518
	.sleb128 32
	.uleb128 0x13
	.long	.LASF519
	.sleb128 33
	.uleb128 0x13
	.long	.LASF520
	.sleb128 34
	.uleb128 0x13
	.long	.LASF521
	.sleb128 35
	.uleb128 0x13
	.long	.LASF522
	.sleb128 36
	.uleb128 0x13
	.long	.LASF523
	.sleb128 37
	.uleb128 0x13
	.long	.LASF524
	.sleb128 38
	.uleb128 0x13
	.long	.LASF525
	.sleb128 39
	.uleb128 0x13
	.long	.LASF526
	.sleb128 40
	.uleb128 0x13
	.long	.LASF527
	.sleb128 41
	.uleb128 0x13
	.long	.LASF528
	.sleb128 42
	.uleb128 0x13
	.long	.LASF529
	.sleb128 43
	.uleb128 0x13
	.long	.LASF530
	.sleb128 44
	.uleb128 0x13
	.long	.LASF531
	.sleb128 45
	.uleb128 0x13
	.long	.LASF532
	.sleb128 46
	.uleb128 0x13
	.long	.LASF533
	.sleb128 47
	.uleb128 0x13
	.long	.LASF534
	.sleb128 48
	.uleb128 0x13
	.long	.LASF535
	.sleb128 49
	.uleb128 0x13
	.long	.LASF536
	.sleb128 50
	.uleb128 0x13
	.long	.LASF537
	.sleb128 51
	.uleb128 0x13
	.long	.LASF538
	.sleb128 52
	.uleb128 0x13
	.long	.LASF539
	.sleb128 53
	.uleb128 0x13
	.long	.LASF540
	.sleb128 54
	.uleb128 0x13
	.long	.LASF541
	.sleb128 55
	.uleb128 0x13
	.long	.LASF542
	.sleb128 56
	.uleb128 0x13
	.long	.LASF543
	.sleb128 57
	.uleb128 0x13
	.long	.LASF544
	.sleb128 58
	.uleb128 0x13
	.long	.LASF545
	.sleb128 59
	.uleb128 0x13
	.long	.LASF546
	.sleb128 60
	.uleb128 0x13
	.long	.LASF547
	.sleb128 61
	.uleb128 0x13
	.long	.LASF548
	.sleb128 62
	.uleb128 0x13
	.long	.LASF549
	.sleb128 63
	.uleb128 0x13
	.long	.LASF550
	.sleb128 64
	.uleb128 0x13
	.long	.LASF551
	.sleb128 65
	.uleb128 0x13
	.long	.LASF552
	.sleb128 66
	.uleb128 0x13
	.long	.LASF553
	.sleb128 67
	.uleb128 0x13
	.long	.LASF554
	.sleb128 68
	.uleb128 0x13
	.long	.LASF555
	.sleb128 69
	.uleb128 0x13
	.long	.LASF556
	.sleb128 70
	.uleb128 0x13
	.long	.LASF557
	.sleb128 71
	.uleb128 0x13
	.long	.LASF558
	.sleb128 72
	.uleb128 0x13
	.long	.LASF559
	.sleb128 73
	.uleb128 0x13
	.long	.LASF560
	.sleb128 74
	.uleb128 0x13
	.long	.LASF561
	.sleb128 75
	.uleb128 0x13
	.long	.LASF562
	.sleb128 76
	.uleb128 0x13
	.long	.LASF563
	.sleb128 77
	.uleb128 0x13
	.long	.LASF564
	.sleb128 78
	.uleb128 0x13
	.long	.LASF565
	.sleb128 79
	.uleb128 0x13
	.long	.LASF566
	.sleb128 80
	.uleb128 0x13
	.long	.LASF567
	.sleb128 81
	.uleb128 0x13
	.long	.LASF568
	.sleb128 82
	.uleb128 0x13
	.long	.LASF569
	.sleb128 83
	.uleb128 0x13
	.long	.LASF570
	.sleb128 84
	.uleb128 0x13
	.long	.LASF571
	.sleb128 85
	.uleb128 0x13
	.long	.LASF572
	.sleb128 86
	.uleb128 0x13
	.long	.LASF573
	.sleb128 87
	.uleb128 0x13
	.long	.LASF574
	.sleb128 88
	.uleb128 0x13
	.long	.LASF575
	.sleb128 89
	.uleb128 0x13
	.long	.LASF576
	.sleb128 90
	.uleb128 0x13
	.long	.LASF577
	.sleb128 91
	.uleb128 0x13
	.long	.LASF578
	.sleb128 92
	.uleb128 0x13
	.long	.LASF579
	.sleb128 93
	.uleb128 0x13
	.long	.LASF580
	.sleb128 94
	.uleb128 0x13
	.long	.LASF581
	.sleb128 95
	.byte	0
	.uleb128 0x4
	.long	.LASF582
	.byte	0x18
	.byte	0x4
	.byte	0x79
	.long	0x138c
	.uleb128 0x8
	.long	.LASF583
	.byte	0x4
	.byte	0x7b
	.long	0x123
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x7c
	.long	0x123
	.byte	0x8
	.uleb128 0x5
	.long	.LASF0
	.byte	0x4
	.byte	0x7e
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x10
	.uleb128 0x5
	.long	.LASF584
	.byte	0x4
	.byte	0x80
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.uleb128 0x5
	.long	.LASF585
	.byte	0x4
	.byte	0x81
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x10
	.uleb128 0x5
	.long	.LASF586
	.byte	0x4
	.byte	0x82
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x10
	.uleb128 0x5
	.long	.LASF587
	.byte	0x4
	.byte	0x83
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x10
	.uleb128 0x5
	.long	.LASF588
	.byte	0x4
	.byte	0x84
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.uleb128 0x5
	.long	.LASF589
	.byte	0x4
	.byte	0x85
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.uleb128 0x5
	.long	.LASF590
	.byte	0x4
	.byte	0x86
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.uleb128 0x5
	.long	.LASF591
	.byte	0x4
	.byte	0x87
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x10
	.uleb128 0x5
	.long	.LASF592
	.byte	0x4
	.byte	0x89
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x10
	.uleb128 0x5
	.long	.LASF593
	.byte	0x4
	.byte	0x8a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.uleb128 0x5
	.long	.LASF594
	.byte	0x4
	.byte	0x8b
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.uleb128 0x5
	.long	.LASF595
	.byte	0x4
	.byte	0x8c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.uleb128 0x5
	.long	.LASF596
	.byte	0x4
	.byte	0x8d
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.uleb128 0x5
	.long	.LASF597
	.byte	0x4
	.byte	0x8e
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.uleb128 0x5
	.long	.LASF598
	.byte	0x4
	.byte	0x8f
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x10
	.uleb128 0x5
	.long	.LASF599
	.byte	0x4
	.byte	0x90
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x10
	.uleb128 0x5
	.long	.LASF600
	.byte	0x4
	.byte	0x92
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uleb128 0x5
	.long	.LASF601
	.byte	0x4
	.byte	0x93
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x10
	.uleb128 0x5
	.long	.LASF602
	.byte	0x4
	.byte	0x94
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.uleb128 0x5
	.long	.LASF603
	.byte	0x4
	.byte	0x95
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.uleb128 0x5
	.long	.LASF604
	.byte	0x4
	.byte	0x96
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x10
	.uleb128 0x5
	.long	.LASF605
	.byte	0x4
	.byte	0x97
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x10
	.uleb128 0x5
	.long	.LASF606
	.byte	0x4
	.byte	0x98
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x10
	.uleb128 0x5
	.long	.LASF607
	.byte	0x4
	.byte	0x99
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.byte	0x10
	.byte	0x4
	.value	0x2c9
	.long	0x13b0
	.uleb128 0x1c
	.string	"low"
	.byte	0x4
	.value	0x2ca
	.long	0x1fa
	.byte	0
	.uleb128 0x1d
	.long	.LASF608
	.byte	0x4
	.value	0x2cb
	.long	0x1f3
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	.LASF609
	.byte	0x30
	.byte	0x4
	.value	0x2c1
	.long	0x13e5
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x2c3
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x2c4
	.long	0x2d
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF17
	.byte	0x4
	.value	0x2cc
	.long	0x138c
	.byte	0x20
	.byte	0
	.uleb128 0x15
	.byte	0x18
	.byte	0x6
	.byte	0x6b
	.long	0x13f8
	.uleb128 0x6
	.string	"r"
	.byte	0x6
	.byte	0x6c
	.long	0x13f8
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x1f3
	.long	0x1408
	.uleb128 0xf
	.long	0x1e5
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF610
	.byte	0x6
	.byte	0x6d
	.long	0x13e5
	.uleb128 0x9
	.long	.LASF611
	.byte	0x18
	.byte	0x6
	.value	0x1bd
	.long	0x1435
	.uleb128 0xb
	.string	"d"
	.byte	0x6
	.value	0x1bf
	.long	0x1408
	.uleb128 0xb
	.string	"i"
	.byte	0x6
	.value	0x1c0
	.long	0x13f8
	.byte	0
	.uleb128 0x1e
	.long	.LASF612
	.byte	0x38
	.byte	0x4
	.value	0x2de
	.long	0x146a
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x2e0
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x2e1
	.long	0x2d
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF18
	.byte	0x4
	.value	0x2e2
	.long	0x1408
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.long	.LASF613
	.byte	0x30
	.byte	0x4
	.value	0x2e9
	.long	0x14ac
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x2eb
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x2ec
	.long	0x2d
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF614
	.byte	0x4
	.value	0x2ed
	.long	0x1de
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF615
	.byte	0x4
	.value	0x2ee
	.long	0x23a
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF616
	.byte	0x30
	.byte	0x4
	.value	0x2f5
	.long	0x14ee
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x2f7
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x2f8
	.long	0x2d
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF617
	.byte	0x4
	.value	0x2f9
	.long	0x123
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF618
	.byte	0x4
	.value	0x2fa
	.long	0x123
	.byte	0x28
	.byte	0
	.uleb128 0x1e
	.long	.LASF619
	.byte	0x28
	.byte	0x4
	.value	0x300
	.long	0x1523
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x302
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x303
	.long	0x2d
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF620
	.byte	0x4
	.value	0x304
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.long	.LASF621
	.byte	0x10
	.byte	0x7
	.byte	0x1a
	.long	0x1548
	.uleb128 0x6
	.string	"len"
	.byte	0x7
	.byte	0x1c
	.long	0x1ec
	.byte	0
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x1d
	.long	0x1548
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x154e
	.uleb128 0x10
	.long	0x201
	.uleb128 0x1e
	.long	.LASF622
	.byte	0x28
	.byte	0x4
	.value	0x317
	.long	0x157a
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x319
	.long	0x11f0
	.byte	0
	.uleb128 0x1c
	.string	"id"
	.byte	0x4
	.value	0x31a
	.long	0x1523
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.long	.LASF623
	.byte	0x28
	.byte	0x4
	.value	0x321
	.long	0x15af
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x323
	.long	0x11f0
	.byte	0
	.uleb128 0x1d
	.long	.LASF624
	.byte	0x4
	.value	0x324
	.long	0x123
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF625
	.byte	0x4
	.value	0x325
	.long	0x123
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.long	.LASF626
	.byte	0x28
	.byte	0x4
	.value	0x32e
	.long	0x15e2
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x330
	.long	0x11f0
	.byte	0
	.uleb128 0x1d
	.long	.LASF614
	.byte	0x4
	.value	0x331
	.long	0x1de
	.byte	0x18
	.uleb128 0x1c
	.string	"a"
	.byte	0x4
	.value	0x332
	.long	0x15e2
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	0x123
	.long	0x15f2
	.uleb128 0xf
	.long	0x1e5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF627
	.byte	0x28
	.byte	0x4
	.value	0x36f
	.long	0x1627
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x371
	.long	0x11f0
	.byte	0
	.uleb128 0x1d
	.long	.LASF628
	.byte	0x4
	.value	0x372
	.long	0x1de
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF629
	.byte	0x4
	.value	0x373
	.long	0x15e2
	.byte	0x20
	.byte	0
	.uleb128 0x1e
	.long	.LASF630
	.byte	0x50
	.byte	0x4
	.value	0x3a3
	.long	0x16c0
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x3a5
	.long	0x11f0
	.byte	0
	.uleb128 0x1f
	.long	.LASF631
	.byte	0x4
	.value	0x3a7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF632
	.byte	0x4
	.value	0x3a8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF633
	.byte	0x4
	.value	0x3a9
	.long	0x1ec
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF634
	.byte	0x4
	.value	0x3ab
	.long	0x123
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF635
	.byte	0x4
	.value	0x3ac
	.long	0x123
	.byte	0x28
	.uleb128 0x1d
	.long	.LASF636
	.byte	0x4
	.value	0x3ad
	.long	0x123
	.byte	0x30
	.uleb128 0x1d
	.long	.LASF637
	.byte	0x4
	.value	0x3ae
	.long	0x123
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF638
	.byte	0x4
	.value	0x3af
	.long	0x123
	.byte	0x40
	.uleb128 0x1d
	.long	.LASF639
	.byte	0x4
	.value	0x3b0
	.long	0x123
	.byte	0x48
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x4d8
	.long	0x16e2
	.uleb128 0xa
	.long	.LASF640
	.byte	0x4
	.value	0x4d8
	.long	0x1de
	.uleb128 0xa
	.long	.LASF615
	.byte	0x4
	.value	0x4d8
	.long	0x21d
	.byte	0
	.uleb128 0x1e
	.long	.LASF641
	.byte	0xa8
	.byte	0x4
	.value	0x4b8
	.long	0x18f7
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x4ba
	.long	0x11f0
	.byte	0
	.uleb128 0x1d
	.long	.LASF642
	.byte	0x4
	.value	0x4bb
	.long	0x123
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF249
	.byte	0x4
	.value	0x4bc
	.long	0x123
	.byte	0x20
	.uleb128 0x1d
	.long	.LASF643
	.byte	0x4
	.value	0x4bd
	.long	0x123
	.byte	0x28
	.uleb128 0x1d
	.long	.LASF644
	.byte	0x4
	.value	0x4be
	.long	0x123
	.byte	0x30
	.uleb128 0x1c
	.string	"uid"
	.byte	0x4
	.value	0x4bf
	.long	0x1ec
	.byte	0x38
	.uleb128 0x1f
	.long	.LASF645
	.byte	0x4
	.value	0x4c1
	.long	0x1ec
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x4c2
	.long	0x1ec
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF646
	.byte	0x4
	.value	0x4c4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF647
	.byte	0x4
	.value	0x4c5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF648
	.byte	0x4
	.value	0x4c6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF649
	.byte	0x4
	.value	0x4c7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF650
	.byte	0x4
	.value	0x4c8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF651
	.byte	0x4
	.value	0x4c9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF652
	.byte	0x4
	.value	0x4ca
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF600
	.byte	0x4
	.value	0x4cc
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF601
	.byte	0x4
	.value	0x4cd
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF602
	.byte	0x4
	.value	0x4ce
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF603
	.byte	0x4
	.value	0x4cf
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF604
	.byte	0x4
	.value	0x4d0
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF605
	.byte	0x4
	.value	0x4d1
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF606
	.byte	0x4
	.value	0x4d2
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1f
	.long	.LASF653
	.byte	0x4
	.value	0x4d3
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x3c
	.uleb128 0x1d
	.long	.LASF250
	.byte	0x4
	.value	0x4d5
	.long	0x1ec
	.byte	0x40
	.uleb128 0x1d
	.long	.LASF654
	.byte	0x4
	.value	0x4d6
	.long	0x123
	.byte	0x48
	.uleb128 0x1d
	.long	.LASF655
	.byte	0x4
	.value	0x4d7
	.long	0x123
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF656
	.byte	0x4
	.value	0x4d8
	.long	0x16c0
	.byte	0x58
	.uleb128 0x1d
	.long	.LASF657
	.byte	0x4
	.value	0x4d9
	.long	0x123
	.byte	0x60
	.uleb128 0x1d
	.long	.LASF658
	.byte	0x4
	.value	0x4da
	.long	0x123
	.byte	0x68
	.uleb128 0x1d
	.long	.LASF659
	.byte	0x4
	.value	0x4db
	.long	0x123
	.byte	0x70
	.uleb128 0x1d
	.long	.LASF660
	.byte	0x4
	.value	0x4dc
	.long	0x123
	.byte	0x78
	.uleb128 0x1d
	.long	.LASF661
	.byte	0x4
	.value	0x4dd
	.long	0x123
	.byte	0x80
	.uleb128 0x1d
	.long	.LASF662
	.byte	0x4
	.value	0x4de
	.long	0x123
	.byte	0x88
	.uleb128 0x1d
	.long	.LASF663
	.byte	0x4
	.value	0x4df
	.long	0x123
	.byte	0x90
	.uleb128 0x1d
	.long	.LASF664
	.byte	0x4
	.value	0x4e0
	.long	0x1f3
	.byte	0x98
	.uleb128 0x1d
	.long	.LASF665
	.byte	0x4
	.value	0x4e2
	.long	0x18fc
	.byte	0xa0
	.byte	0
	.uleb128 0x19
	.long	.LASF666
	.uleb128 0x3
	.byte	0x8
	.long	0x18f7
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.value	0x717
	.long	0x192c
	.uleb128 0x1f
	.long	.LASF250
	.byte	0x4
	.value	0x717
	.long	0x1ec
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0x1f
	.long	.LASF667
	.byte	0x4
	.value	0x717
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x70e
	.long	0x1954
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x711
	.long	0xf83
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x714
	.long	0x1f3
	.uleb128 0xb
	.string	"a"
	.byte	0x4
	.value	0x717
	.long	0x1902
	.byte	0
	.uleb128 0x20
	.byte	0x8
	.byte	0x4
	.value	0x72c
	.long	0x1986
	.uleb128 0xb
	.string	"f"
	.byte	0x4
	.value	0x72d
	.long	0x198b
	.uleb128 0xb
	.string	"r"
	.byte	0x4
	.value	0x72e
	.long	0x2d
	.uleb128 0xb
	.string	"t"
	.byte	0x4
	.value	0x72f
	.long	0x123
	.uleb128 0xb
	.string	"i"
	.byte	0x4
	.value	0x730
	.long	0x1de
	.byte	0
	.uleb128 0x19
	.long	.LASF668
	.uleb128 0x3
	.byte	0x8
	.long	0x1986
	.uleb128 0x1e
	.long	.LASF669
	.byte	0xd0
	.byte	0x4
	.value	0x6dc
	.long	0x1d15
	.uleb128 0x1d
	.long	.LASF16
	.byte	0x4
	.value	0x6de
	.long	0x11f0
	.byte	0
	.uleb128 0x1d
	.long	.LASF670
	.byte	0x4
	.value	0x6df
	.long	0x23a
	.byte	0x18
	.uleb128 0x1d
	.long	.LASF671
	.byte	0x4
	.value	0x6e0
	.long	0x1de
	.byte	0x20
	.uleb128 0x1c
	.string	"uid"
	.byte	0x4
	.value	0x6e1
	.long	0x1ec
	.byte	0x24
	.uleb128 0x1d
	.long	.LASF249
	.byte	0x4
	.value	0x6e2
	.long	0x123
	.byte	0x28
	.uleb128 0x1f
	.long	.LASF1
	.byte	0x4
	.value	0x6e3
	.long	0x1ec
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF672
	.byte	0x4
	.value	0x6e5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF673
	.byte	0x4
	.value	0x6e6
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF674
	.byte	0x4
	.value	0x6e7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF675
	.byte	0x4
	.value	0x6e8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF676
	.byte	0x4
	.value	0x6e9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF677
	.byte	0x4
	.value	0x6ea
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF678
	.byte	0x4
	.value	0x6eb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF632
	.byte	0x4
	.value	0x6ec
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF679
	.byte	0x4
	.value	0x6ee
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF680
	.byte	0x4
	.value	0x6ef
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF681
	.byte	0x4
	.value	0x6f0
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF682
	.byte	0x4
	.value	0x6f1
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF683
	.byte	0x4
	.value	0x6f2
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF684
	.byte	0x4
	.value	0x6f3
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF685
	.byte	0x4
	.value	0x6f4
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF686
	.byte	0x4
	.value	0x6f5
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF687
	.byte	0x4
	.value	0x6f7
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF688
	.byte	0x4
	.value	0x6f8
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF689
	.byte	0x4
	.value	0x6f9
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF690
	.byte	0x4
	.value	0x6fa
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF691
	.byte	0x4
	.value	0x6fb
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF692
	.byte	0x4
	.value	0x6fc
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF693
	.byte	0x4
	.value	0x6fd
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x30
	.uleb128 0x1f
	.long	.LASF652
	.byte	0x4
	.value	0x6ff
	.long	0x1ec
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF694
	.byte	0x4
	.value	0x700
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF653
	.byte	0x4
	.value	0x701
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF695
	.byte	0x4
	.value	0x702
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF600
	.byte	0x4
	.value	0x705
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF601
	.byte	0x4
	.value	0x706
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF602
	.byte	0x4
	.value	0x707
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF603
	.byte	0x4
	.value	0x708
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF604
	.byte	0x4
	.value	0x709
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF605
	.byte	0x4
	.value	0x70a
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF606
	.byte	0x4
	.value	0x70b
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x34
	.uleb128 0x1f
	.long	.LASF696
	.byte	0x4
	.value	0x70c
	.long	0x1ec
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.uleb128 0x1c
	.string	"u1"
	.byte	0x4
	.value	0x718
	.long	0x192c
	.byte	0x38
	.uleb128 0x1d
	.long	.LASF643
	.byte	0x4
	.value	0x71a
	.long	0x123
	.byte	0x40
	.uleb128 0x1d
	.long	.LASF657
	.byte	0x4
	.value	0x71b
	.long	0x123
	.byte	0x48
	.uleb128 0x1d
	.long	.LASF663
	.byte	0x4
	.value	0x71c
	.long	0x123
	.byte	0x50
	.uleb128 0x1d
	.long	.LASF697
	.byte	0x4
	.value	0x71d
	.long	0x123
	.byte	0x58
	.uleb128 0x1d
	.long	.LASF698
	.byte	0x4
	.value	0x71e
	.long	0x123
	.byte	0x60
	.uleb128 0x1d
	.long	.LASF699
	.byte	0x4
	.value	0x71f
	.long	0x123
	.byte	0x68
	.uleb128 0x1d
	.long	.LASF637
	.byte	0x4
	.value	0x720
	.long	0x123
	.byte	0x70
	.uleb128 0x1d
	.long	.LASF700
	.byte	0x4
	.value	0x721
	.long	0x123
	.byte	0x78
	.uleb128 0x1d
	.long	.LASF701
	.byte	0x4
	.value	0x722
	.long	0x123
	.byte	0x80
	.uleb128 0x1d
	.long	.LASF644
	.byte	0x4
	.value	0x723
	.long	0x123
	.byte	0x88
	.uleb128 0x1c
	.string	"rtl"
	.byte	0x4
	.value	0x724
	.long	0x2d
	.byte	0x90
	.uleb128 0x1d
	.long	.LASF702
	.byte	0x4
	.value	0x725
	.long	0x2d
	.byte	0x98
	.uleb128 0x1c
	.string	"u2"
	.byte	0x4
	.value	0x731
	.long	0x1954
	.byte	0xa0
	.uleb128 0x1d
	.long	.LASF703
	.byte	0x4
	.value	0x734
	.long	0x123
	.byte	0xa8
	.uleb128 0x1d
	.long	.LASF704
	.byte	0x4
	.value	0x738
	.long	0x123
	.byte	0xb0
	.uleb128 0x1d
	.long	.LASF705
	.byte	0x4
	.value	0x73a
	.long	0x123
	.byte	0xb8
	.uleb128 0x1d
	.long	.LASF706
	.byte	0x4
	.value	0x73b
	.long	0x1f3
	.byte	0xc0
	.uleb128 0x1d
	.long	.LASF665
	.byte	0x4
	.value	0x73d
	.long	0x1d1a
	.byte	0xc8
	.byte	0
	.uleb128 0x19
	.long	.LASF707
	.uleb128 0x3
	.byte	0x8
	.long	0x1d15
	.uleb128 0x1a
	.long	.LASF708
	.byte	0x4
	.byte	0x4
	.value	0x757
	.long	0x1e66
	.uleb128 0x13
	.long	.LASF709
	.sleb128 0
	.uleb128 0x13
	.long	.LASF710
	.sleb128 1
	.uleb128 0x13
	.long	.LASF711
	.sleb128 2
	.uleb128 0x13
	.long	.LASF712
	.sleb128 3
	.uleb128 0x13
	.long	.LASF713
	.sleb128 4
	.uleb128 0x13
	.long	.LASF714
	.sleb128 5
	.uleb128 0x13
	.long	.LASF715
	.sleb128 6
	.uleb128 0x13
	.long	.LASF716
	.sleb128 7
	.uleb128 0x13
	.long	.LASF717
	.sleb128 8
	.uleb128 0x13
	.long	.LASF718
	.sleb128 9
	.uleb128 0x13
	.long	.LASF719
	.sleb128 10
	.uleb128 0x13
	.long	.LASF720
	.sleb128 11
	.uleb128 0x13
	.long	.LASF721
	.sleb128 12
	.uleb128 0x13
	.long	.LASF722
	.sleb128 13
	.uleb128 0x13
	.long	.LASF723
	.sleb128 14
	.uleb128 0x13
	.long	.LASF724
	.sleb128 15
	.uleb128 0x13
	.long	.LASF725
	.sleb128 16
	.uleb128 0x13
	.long	.LASF726
	.sleb128 17
	.uleb128 0x13
	.long	.LASF727
	.sleb128 18
	.uleb128 0x13
	.long	.LASF728
	.sleb128 19
	.uleb128 0x13
	.long	.LASF729
	.sleb128 20
	.uleb128 0x13
	.long	.LASF730
	.sleb128 21
	.uleb128 0x13
	.long	.LASF731
	.sleb128 22
	.uleb128 0x13
	.long	.LASF732
	.sleb128 23
	.uleb128 0x13
	.long	.LASF733
	.sleb128 24
	.uleb128 0x13
	.long	.LASF734
	.sleb128 25
	.uleb128 0x13
	.long	.LASF735
	.sleb128 26
	.uleb128 0x13
	.long	.LASF736
	.sleb128 27
	.uleb128 0x13
	.long	.LASF737
	.sleb128 28
	.uleb128 0x13
	.long	.LASF738
	.sleb128 29
	.uleb128 0x13
	.long	.LASF739
	.sleb128 30
	.uleb128 0x13
	.long	.LASF740
	.sleb128 31
	.uleb128 0x13
	.long	.LASF741
	.sleb128 32
	.uleb128 0x13
	.long	.LASF742
	.sleb128 33
	.uleb128 0x13
	.long	.LASF743
	.sleb128 34
	.uleb128 0x13
	.long	.LASF744
	.sleb128 35
	.uleb128 0x13
	.long	.LASF745
	.sleb128 36
	.uleb128 0x13
	.long	.LASF746
	.sleb128 37
	.uleb128 0x13
	.long	.LASF747
	.sleb128 38
	.uleb128 0x13
	.long	.LASF748
	.sleb128 39
	.uleb128 0x13
	.long	.LASF749
	.sleb128 40
	.uleb128 0x13
	.long	.LASF750
	.sleb128 41
	.uleb128 0x13
	.long	.LASF751
	.sleb128 42
	.uleb128 0x13
	.long	.LASF752
	.sleb128 43
	.uleb128 0x13
	.long	.LASF753
	.sleb128 44
	.uleb128 0x13
	.long	.LASF754
	.sleb128 45
	.uleb128 0x13
	.long	.LASF755
	.sleb128 46
	.uleb128 0x13
	.long	.LASF756
	.sleb128 47
	.uleb128 0x13
	.long	.LASF757
	.sleb128 48
	.uleb128 0x13
	.long	.LASF758
	.sleb128 49
	.uleb128 0x13
	.long	.LASF759
	.sleb128 50
	.uleb128 0x13
	.long	.LASF760
	.sleb128 51
	.byte	0
	.uleb128 0x1a
	.long	.LASF761
	.byte	0x4
	.byte	0x4
	.value	0x7e4
	.long	0x1ebc
	.uleb128 0x13
	.long	.LASF762
	.sleb128 0
	.uleb128 0x13
	.long	.LASF763
	.sleb128 1
	.uleb128 0x13
	.long	.LASF764
	.sleb128 2
	.uleb128 0x13
	.long	.LASF765
	.sleb128 3
	.uleb128 0x13
	.long	.LASF766
	.sleb128 4
	.uleb128 0x13
	.long	.LASF767
	.sleb128 5
	.uleb128 0x13
	.long	.LASF768
	.sleb128 6
	.uleb128 0x13
	.long	.LASF769
	.sleb128 7
	.uleb128 0x13
	.long	.LASF770
	.sleb128 8
	.uleb128 0x13
	.long	.LASF771
	.sleb128 9
	.uleb128 0x13
	.long	.LASF772
	.sleb128 10
	.uleb128 0x13
	.long	.LASF773
	.sleb128 11
	.byte	0
	.uleb128 0x10
	.long	0x23a
	.uleb128 0xd
	.byte	0x1
	.byte	0x2
	.long	.LASF774
	.uleb128 0x1a
	.long	.LASF775
	.byte	0x4
	.byte	0x4
	.value	0x972
	.long	0x1f00
	.uleb128 0x13
	.long	.LASF776
	.sleb128 0
	.uleb128 0x13
	.long	.LASF777
	.sleb128 1
	.uleb128 0x13
	.long	.LASF778
	.sleb128 2
	.uleb128 0x13
	.long	.LASF779
	.sleb128 3
	.uleb128 0x13
	.long	.LASF780
	.sleb128 4
	.uleb128 0x13
	.long	.LASF781
	.sleb128 5
	.uleb128 0x13
	.long	.LASF782
	.sleb128 6
	.byte	0
	.uleb128 0x1a
	.long	.LASF783
	.byte	0x4
	.byte	0x8
	.value	0x100
	.long	0x1f2c
	.uleb128 0x13
	.long	.LASF784
	.sleb128 0
	.uleb128 0x13
	.long	.LASF785
	.sleb128 1
	.uleb128 0x13
	.long	.LASF786
	.sleb128 2
	.uleb128 0x13
	.long	.LASF787
	.sleb128 3
	.uleb128 0x13
	.long	.LASF788
	.sleb128 4
	.byte	0
	.uleb128 0x1a
	.long	.LASF789
	.byte	0x4
	.byte	0x8
	.value	0x2ed
	.long	0x1f4c
	.uleb128 0x13
	.long	.LASF790
	.sleb128 0
	.uleb128 0x13
	.long	.LASF791
	.sleb128 1
	.uleb128 0x13
	.long	.LASF792
	.sleb128 2
	.byte	0
	.uleb128 0x12
	.long	.LASF793
	.byte	0x4
	.byte	0x9
	.byte	0x7
	.long	0x2e39
	.uleb128 0x13
	.long	.LASF794
	.sleb128 0
	.uleb128 0x13
	.long	.LASF795
	.sleb128 2
	.uleb128 0x13
	.long	.LASF796
	.sleb128 15
	.uleb128 0x13
	.long	.LASF797
	.sleb128 16
	.uleb128 0x13
	.long	.LASF798
	.sleb128 30
	.uleb128 0x13
	.long	.LASF799
	.sleb128 31
	.uleb128 0x13
	.long	.LASF800
	.sleb128 42
	.uleb128 0x13
	.long	.LASF801
	.sleb128 73
	.uleb128 0x13
	.long	.LASF802
	.sleb128 77
	.uleb128 0x13
	.long	.LASF803
	.sleb128 80
	.uleb128 0x13
	.long	.LASF804
	.sleb128 105
	.uleb128 0x13
	.long	.LASF805
	.sleb128 106
	.uleb128 0x13
	.long	.LASF806
	.sleb128 107
	.uleb128 0x13
	.long	.LASF807
	.sleb128 115
	.uleb128 0x13
	.long	.LASF808
	.sleb128 116
	.uleb128 0x13
	.long	.LASF809
	.sleb128 117
	.uleb128 0x13
	.long	.LASF810
	.sleb128 118
	.uleb128 0x13
	.long	.LASF811
	.sleb128 120
	.uleb128 0x13
	.long	.LASF812
	.sleb128 121
	.uleb128 0x13
	.long	.LASF813
	.sleb128 122
	.uleb128 0x13
	.long	.LASF814
	.sleb128 123
	.uleb128 0x13
	.long	.LASF815
	.sleb128 125
	.uleb128 0x13
	.long	.LASF816
	.sleb128 126
	.uleb128 0x13
	.long	.LASF817
	.sleb128 142
	.uleb128 0x13
	.long	.LASF818
	.sleb128 143
	.uleb128 0x13
	.long	.LASF819
	.sleb128 153
	.uleb128 0x13
	.long	.LASF820
	.sleb128 154
	.uleb128 0x13
	.long	.LASF821
	.sleb128 155
	.uleb128 0x13
	.long	.LASF822
	.sleb128 156
	.uleb128 0x13
	.long	.LASF823
	.sleb128 158
	.uleb128 0x13
	.long	.LASF824
	.sleb128 159
	.uleb128 0x13
	.long	.LASF825
	.sleb128 160
	.uleb128 0x13
	.long	.LASF826
	.sleb128 161
	.uleb128 0x13
	.long	.LASF827
	.sleb128 163
	.uleb128 0x13
	.long	.LASF828
	.sleb128 164
	.uleb128 0x13
	.long	.LASF829
	.sleb128 165
	.uleb128 0x13
	.long	.LASF830
	.sleb128 166
	.uleb128 0x13
	.long	.LASF831
	.sleb128 167
	.uleb128 0x13
	.long	.LASF832
	.sleb128 173
	.uleb128 0x13
	.long	.LASF833
	.sleb128 179
	.uleb128 0x13
	.long	.LASF834
	.sleb128 180
	.uleb128 0x13
	.long	.LASF835
	.sleb128 181
	.uleb128 0x13
	.long	.LASF836
	.sleb128 182
	.uleb128 0x13
	.long	.LASF837
	.sleb128 183
	.uleb128 0x13
	.long	.LASF838
	.sleb128 184
	.uleb128 0x13
	.long	.LASF839
	.sleb128 191
	.uleb128 0x13
	.long	.LASF840
	.sleb128 208
	.uleb128 0x13
	.long	.LASF841
	.sleb128 227
	.uleb128 0x13
	.long	.LASF842
	.sleb128 231
	.uleb128 0x13
	.long	.LASF843
	.sleb128 235
	.uleb128 0x13
	.long	.LASF844
	.sleb128 236
	.uleb128 0x13
	.long	.LASF845
	.sleb128 266
	.uleb128 0x13
	.long	.LASF846
	.sleb128 267
	.uleb128 0x13
	.long	.LASF847
	.sleb128 274
	.uleb128 0x13
	.long	.LASF848
	.sleb128 275
	.uleb128 0x13
	.long	.LASF849
	.sleb128 277
	.uleb128 0x13
	.long	.LASF850
	.sleb128 281
	.uleb128 0x13
	.long	.LASF851
	.sleb128 302
	.uleb128 0x13
	.long	.LASF852
	.sleb128 355
	.uleb128 0x13
	.long	.LASF853
	.sleb128 356
	.uleb128 0x13
	.long	.LASF854
	.sleb128 358
	.uleb128 0x13
	.long	.LASF855
	.sleb128 359
	.uleb128 0x13
	.long	.LASF856
	.sleb128 374
	.uleb128 0x13
	.long	.LASF857
	.sleb128 375
	.uleb128 0x13
	.long	.LASF858
	.sleb128 377
	.uleb128 0x13
	.long	.LASF859
	.sleb128 378
	.uleb128 0x13
	.long	.LASF860
	.sleb128 405
	.uleb128 0x13
	.long	.LASF861
	.sleb128 407
	.uleb128 0x13
	.long	.LASF862
	.sleb128 418
	.uleb128 0x13
	.long	.LASF863
	.sleb128 423
	.uleb128 0x13
	.long	.LASF864
	.sleb128 425
	.uleb128 0x13
	.long	.LASF865
	.sleb128 426
	.uleb128 0x13
	.long	.LASF866
	.sleb128 448
	.uleb128 0x13
	.long	.LASF867
	.sleb128 487
	.uleb128 0x13
	.long	.LASF868
	.sleb128 502
	.uleb128 0x13
	.long	.LASF869
	.sleb128 507
	.uleb128 0x13
	.long	.LASF870
	.sleb128 513
	.uleb128 0x13
	.long	.LASF871
	.sleb128 514
	.uleb128 0x13
	.long	.LASF872
	.sleb128 515
	.uleb128 0x13
	.long	.LASF873
	.sleb128 516
	.uleb128 0x13
	.long	.LASF874
	.sleb128 517
	.uleb128 0x13
	.long	.LASF875
	.sleb128 518
	.uleb128 0x13
	.long	.LASF876
	.sleb128 519
	.uleb128 0x13
	.long	.LASF877
	.sleb128 520
	.uleb128 0x13
	.long	.LASF878
	.sleb128 521
	.uleb128 0x13
	.long	.LASF879
	.sleb128 522
	.uleb128 0x13
	.long	.LASF880
	.sleb128 523
	.uleb128 0x13
	.long	.LASF881
	.sleb128 524
	.uleb128 0x13
	.long	.LASF882
	.sleb128 559
	.uleb128 0x13
	.long	.LASF883
	.sleb128 560
	.uleb128 0x13
	.long	.LASF884
	.sleb128 561
	.uleb128 0x13
	.long	.LASF885
	.sleb128 562
	.uleb128 0x13
	.long	.LASF886
	.sleb128 563
	.uleb128 0x13
	.long	.LASF887
	.sleb128 564
	.uleb128 0x13
	.long	.LASF888
	.sleb128 566
	.uleb128 0x13
	.long	.LASF889
	.sleb128 567
	.uleb128 0x13
	.long	.LASF890
	.sleb128 572
	.uleb128 0x13
	.long	.LASF891
	.sleb128 573
	.uleb128 0x13
	.long	.LASF892
	.sleb128 575
	.uleb128 0x13
	.long	.LASF893
	.sleb128 576
	.uleb128 0x13
	.long	.LASF894
	.sleb128 577
	.uleb128 0x13
	.long	.LASF895
	.sleb128 578
	.uleb128 0x13
	.long	.LASF896
	.sleb128 580
	.uleb128 0x13
	.long	.LASF897
	.sleb128 581
	.uleb128 0x13
	.long	.LASF898
	.sleb128 582
	.uleb128 0x13
	.long	.LASF899
	.sleb128 583
	.uleb128 0x13
	.long	.LASF900
	.sleb128 584
	.uleb128 0x13
	.long	.LASF901
	.sleb128 585
	.uleb128 0x13
	.long	.LASF902
	.sleb128 586
	.uleb128 0x13
	.long	.LASF903
	.sleb128 587
	.uleb128 0x13
	.long	.LASF904
	.sleb128 588
	.uleb128 0x13
	.long	.LASF905
	.sleb128 589
	.uleb128 0x13
	.long	.LASF906
	.sleb128 590
	.uleb128 0x13
	.long	.LASF907
	.sleb128 591
	.uleb128 0x13
	.long	.LASF908
	.sleb128 592
	.uleb128 0x13
	.long	.LASF909
	.sleb128 593
	.uleb128 0x13
	.long	.LASF910
	.sleb128 594
	.uleb128 0x13
	.long	.LASF911
	.sleb128 595
	.uleb128 0x13
	.long	.LASF912
	.sleb128 596
	.uleb128 0x13
	.long	.LASF913
	.sleb128 597
	.uleb128 0x13
	.long	.LASF914
	.sleb128 598
	.uleb128 0x13
	.long	.LASF915
	.sleb128 599
	.uleb128 0x13
	.long	.LASF916
	.sleb128 600
	.uleb128 0x13
	.long	.LASF917
	.sleb128 601
	.uleb128 0x13
	.long	.LASF918
	.sleb128 602
	.uleb128 0x13
	.long	.LASF919
	.sleb128 603
	.uleb128 0x13
	.long	.LASF920
	.sleb128 604
	.uleb128 0x13
	.long	.LASF921
	.sleb128 605
	.uleb128 0x13
	.long	.LASF922
	.sleb128 606
	.uleb128 0x13
	.long	.LASF923
	.sleb128 607
	.uleb128 0x13
	.long	.LASF924
	.sleb128 608
	.uleb128 0x13
	.long	.LASF925
	.sleb128 609
	.uleb128 0x13
	.long	.LASF926
	.sleb128 610
	.uleb128 0x13
	.long	.LASF927
	.sleb128 611
	.uleb128 0x13
	.long	.LASF928
	.sleb128 612
	.uleb128 0x13
	.long	.LASF929
	.sleb128 613
	.uleb128 0x13
	.long	.LASF930
	.sleb128 615
	.uleb128 0x13
	.long	.LASF931
	.sleb128 636
	.uleb128 0x13
	.long	.LASF932
	.sleb128 637
	.uleb128 0x13
	.long	.LASF933
	.sleb128 638
	.uleb128 0x13
	.long	.LASF934
	.sleb128 639
	.uleb128 0x13
	.long	.LASF935
	.sleb128 640
	.uleb128 0x13
	.long	.LASF936
	.sleb128 649
	.uleb128 0x13
	.long	.LASF937
	.sleb128 650
	.uleb128 0x13
	.long	.LASF938
	.sleb128 657
	.uleb128 0x13
	.long	.LASF939
	.sleb128 659
	.uleb128 0x13
	.long	.LASF940
	.sleb128 660
	.uleb128 0x13
	.long	.LASF941
	.sleb128 661
	.uleb128 0x13
	.long	.LASF942
	.sleb128 662
	.uleb128 0x13
	.long	.LASF943
	.sleb128 663
	.uleb128 0x13
	.long	.LASF944
	.sleb128 664
	.uleb128 0x13
	.long	.LASF945
	.sleb128 672
	.uleb128 0x13
	.long	.LASF946
	.sleb128 674
	.uleb128 0x13
	.long	.LASF947
	.sleb128 675
	.uleb128 0x13
	.long	.LASF948
	.sleb128 676
	.uleb128 0x13
	.long	.LASF949
	.sleb128 677
	.uleb128 0x13
	.long	.LASF950
	.sleb128 678
	.uleb128 0x13
	.long	.LASF951
	.sleb128 679
	.uleb128 0x13
	.long	.LASF952
	.sleb128 680
	.uleb128 0x13
	.long	.LASF953
	.sleb128 681
	.uleb128 0x13
	.long	.LASF954
	.sleb128 682
	.uleb128 0x13
	.long	.LASF955
	.sleb128 683
	.uleb128 0x13
	.long	.LASF956
	.sleb128 684
	.uleb128 0x13
	.long	.LASF957
	.sleb128 685
	.uleb128 0x13
	.long	.LASF958
	.sleb128 686
	.uleb128 0x13
	.long	.LASF959
	.sleb128 687
	.uleb128 0x13
	.long	.LASF960
	.sleb128 688
	.uleb128 0x13
	.long	.LASF961
	.sleb128 689
	.uleb128 0x13
	.long	.LASF962
	.sleb128 690
	.uleb128 0x13
	.long	.LASF963
	.sleb128 691
	.uleb128 0x13
	.long	.LASF964
	.sleb128 692
	.uleb128 0x13
	.long	.LASF965
	.sleb128 693
	.uleb128 0x13
	.long	.LASF966
	.sleb128 694
	.uleb128 0x13
	.long	.LASF967
	.sleb128 695
	.uleb128 0x13
	.long	.LASF968
	.sleb128 696
	.uleb128 0x13
	.long	.LASF969
	.sleb128 697
	.uleb128 0x13
	.long	.LASF970
	.sleb128 698
	.uleb128 0x13
	.long	.LASF971
	.sleb128 699
	.uleb128 0x13
	.long	.LASF972
	.sleb128 700
	.uleb128 0x13
	.long	.LASF973
	.sleb128 701
	.uleb128 0x13
	.long	.LASF974
	.sleb128 702
	.uleb128 0x13
	.long	.LASF975
	.sleb128 703
	.uleb128 0x13
	.long	.LASF976
	.sleb128 708
	.uleb128 0x13
	.long	.LASF977
	.sleb128 712
	.uleb128 0x13
	.long	.LASF978
	.sleb128 718
	.uleb128 0x13
	.long	.LASF979
	.sleb128 724
	.uleb128 0x13
	.long	.LASF980
	.sleb128 726
	.uleb128 0x13
	.long	.LASF981
	.sleb128 727
	.uleb128 0x13
	.long	.LASF982
	.sleb128 728
	.uleb128 0x13
	.long	.LASF983
	.sleb128 729
	.uleb128 0x13
	.long	.LASF984
	.sleb128 730
	.uleb128 0x13
	.long	.LASF985
	.sleb128 731
	.uleb128 0x13
	.long	.LASF986
	.sleb128 732
	.uleb128 0x13
	.long	.LASF987
	.sleb128 733
	.uleb128 0x13
	.long	.LASF988
	.sleb128 734
	.uleb128 0x13
	.long	.LASF989
	.sleb128 735
	.uleb128 0x13
	.long	.LASF990
	.sleb128 736
	.uleb128 0x13
	.long	.LASF991
	.sleb128 737
	.uleb128 0x13
	.long	.LASF992
	.sleb128 738
	.uleb128 0x13
	.long	.LASF993
	.sleb128 739
	.uleb128 0x13
	.long	.LASF994
	.sleb128 740
	.uleb128 0x13
	.long	.LASF995
	.sleb128 741
	.uleb128 0x13
	.long	.LASF996
	.sleb128 742
	.uleb128 0x13
	.long	.LASF997
	.sleb128 743
	.uleb128 0x13
	.long	.LASF998
	.sleb128 744
	.uleb128 0x13
	.long	.LASF999
	.sleb128 745
	.uleb128 0x13
	.long	.LASF1000
	.sleb128 746
	.uleb128 0x13
	.long	.LASF1001
	.sleb128 747
	.uleb128 0x13
	.long	.LASF1002
	.sleb128 748
	.uleb128 0x13
	.long	.LASF1003
	.sleb128 749
	.uleb128 0x13
	.long	.LASF1004
	.sleb128 750
	.uleb128 0x13
	.long	.LASF1005
	.sleb128 751
	.uleb128 0x13
	.long	.LASF1006
	.sleb128 752
	.uleb128 0x13
	.long	.LASF1007
	.sleb128 753
	.uleb128 0x13
	.long	.LASF1008
	.sleb128 754
	.uleb128 0x13
	.long	.LASF1009
	.sleb128 755
	.uleb128 0x13
	.long	.LASF1010
	.sleb128 756
	.uleb128 0x13
	.long	.LASF1011
	.sleb128 757
	.uleb128 0x13
	.long	.LASF1012
	.sleb128 758
	.uleb128 0x13
	.long	.LASF1013
	.sleb128 759
	.uleb128 0x13
	.long	.LASF1014
	.sleb128 760
	.uleb128 0x13
	.long	.LASF1015
	.sleb128 761
	.uleb128 0x13
	.long	.LASF1016
	.sleb128 762
	.uleb128 0x13
	.long	.LASF1017
	.sleb128 763
	.uleb128 0x13
	.long	.LASF1018
	.sleb128 764
	.uleb128 0x13
	.long	.LASF1019
	.sleb128 765
	.uleb128 0x13
	.long	.LASF1020
	.sleb128 766
	.uleb128 0x13
	.long	.LASF1021
	.sleb128 767
	.uleb128 0x13
	.long	.LASF1022
	.sleb128 768
	.uleb128 0x13
	.long	.LASF1023
	.sleb128 769
	.uleb128 0x13
	.long	.LASF1024
	.sleb128 770
	.uleb128 0x13
	.long	.LASF1025
	.sleb128 771
	.uleb128 0x13
	.long	.LASF1026
	.sleb128 772
	.uleb128 0x13
	.long	.LASF1027
	.sleb128 773
	.uleb128 0x13
	.long	.LASF1028
	.sleb128 774
	.uleb128 0x13
	.long	.LASF1029
	.sleb128 775
	.uleb128 0x13
	.long	.LASF1030
	.sleb128 776
	.uleb128 0x13
	.long	.LASF1031
	.sleb128 777
	.uleb128 0x13
	.long	.LASF1032
	.sleb128 778
	.uleb128 0x13
	.long	.LASF1033
	.sleb128 779
	.uleb128 0x13
	.long	.LASF1034
	.sleb128 780
	.uleb128 0x13
	.long	.LASF1035
	.sleb128 781
	.uleb128 0x13
	.long	.LASF1036
	.sleb128 782
	.uleb128 0x13
	.long	.LASF1037
	.sleb128 783
	.uleb128 0x13
	.long	.LASF1038
	.sleb128 784
	.uleb128 0x13
	.long	.LASF1039
	.sleb128 785
	.uleb128 0x13
	.long	.LASF1040
	.sleb128 786
	.uleb128 0x13
	.long	.LASF1041
	.sleb128 787
	.uleb128 0x13
	.long	.LASF1042
	.sleb128 788
	.uleb128 0x13
	.long	.LASF1043
	.sleb128 789
	.uleb128 0x13
	.long	.LASF1044
	.sleb128 790
	.uleb128 0x13
	.long	.LASF1045
	.sleb128 791
	.uleb128 0x13
	.long	.LASF1046
	.sleb128 792
	.uleb128 0x13
	.long	.LASF1047
	.sleb128 793
	.uleb128 0x13
	.long	.LASF1048
	.sleb128 794
	.uleb128 0x13
	.long	.LASF1049
	.sleb128 795
	.uleb128 0x13
	.long	.LASF1050
	.sleb128 796
	.uleb128 0x13
	.long	.LASF1051
	.sleb128 797
	.uleb128 0x13
	.long	.LASF1052
	.sleb128 798
	.uleb128 0x13
	.long	.LASF1053
	.sleb128 799
	.uleb128 0x13
	.long	.LASF1054
	.sleb128 800
	.uleb128 0x13
	.long	.LASF1055
	.sleb128 801
	.uleb128 0x13
	.long	.LASF1056
	.sleb128 802
	.uleb128 0x13
	.long	.LASF1057
	.sleb128 803
	.uleb128 0x13
	.long	.LASF1058
	.sleb128 806
	.uleb128 0x13
	.long	.LASF1059
	.sleb128 807
	.uleb128 0x13
	.long	.LASF1060
	.sleb128 808
	.uleb128 0x13
	.long	.LASF1061
	.sleb128 809
	.uleb128 0x13
	.long	.LASF1062
	.sleb128 810
	.uleb128 0x13
	.long	.LASF1063
	.sleb128 811
	.uleb128 0x13
	.long	.LASF1064
	.sleb128 812
	.uleb128 0x13
	.long	.LASF1065
	.sleb128 813
	.uleb128 0x13
	.long	.LASF1066
	.sleb128 814
	.uleb128 0x13
	.long	.LASF1067
	.sleb128 815
	.uleb128 0x13
	.long	.LASF1068
	.sleb128 816
	.uleb128 0x13
	.long	.LASF1069
	.sleb128 817
	.uleb128 0x13
	.long	.LASF1070
	.sleb128 818
	.uleb128 0x13
	.long	.LASF1071
	.sleb128 819
	.uleb128 0x13
	.long	.LASF1072
	.sleb128 820
	.uleb128 0x13
	.long	.LASF1073
	.sleb128 821
	.uleb128 0x13
	.long	.LASF1074
	.sleb128 822
	.uleb128 0x13
	.long	.LASF1075
	.sleb128 823
	.uleb128 0x13
	.long	.LASF1076
	.sleb128 824
	.uleb128 0x13
	.long	.LASF1077
	.sleb128 825
	.uleb128 0x13
	.long	.LASF1078
	.sleb128 826
	.uleb128 0x13
	.long	.LASF1079
	.sleb128 827
	.uleb128 0x13
	.long	.LASF1080
	.sleb128 828
	.uleb128 0x13
	.long	.LASF1081
	.sleb128 829
	.uleb128 0x13
	.long	.LASF1082
	.sleb128 830
	.uleb128 0x13
	.long	.LASF1083
	.sleb128 831
	.uleb128 0x13
	.long	.LASF1084
	.sleb128 834
	.uleb128 0x13
	.long	.LASF1085
	.sleb128 835
	.uleb128 0x13
	.long	.LASF1086
	.sleb128 836
	.uleb128 0x13
	.long	.LASF1087
	.sleb128 837
	.uleb128 0x13
	.long	.LASF1088
	.sleb128 838
	.uleb128 0x13
	.long	.LASF1089
	.sleb128 839
	.uleb128 0x13
	.long	.LASF1090
	.sleb128 840
	.uleb128 0x13
	.long	.LASF1091
	.sleb128 841
	.uleb128 0x13
	.long	.LASF1092
	.sleb128 842
	.uleb128 0x13
	.long	.LASF1093
	.sleb128 843
	.uleb128 0x13
	.long	.LASF1094
	.sleb128 844
	.uleb128 0x13
	.long	.LASF1095
	.sleb128 846
	.uleb128 0x13
	.long	.LASF1096
	.sleb128 847
	.uleb128 0x13
	.long	.LASF1097
	.sleb128 848
	.uleb128 0x13
	.long	.LASF1098
	.sleb128 849
	.uleb128 0x13
	.long	.LASF1099
	.sleb128 850
	.uleb128 0x13
	.long	.LASF1100
	.sleb128 851
	.uleb128 0x13
	.long	.LASF1101
	.sleb128 852
	.uleb128 0x13
	.long	.LASF1102
	.sleb128 861
	.uleb128 0x13
	.long	.LASF1103
	.sleb128 865
	.uleb128 0x13
	.long	.LASF1104
	.sleb128 870
	.uleb128 0x13
	.long	.LASF1105
	.sleb128 871
	.uleb128 0x13
	.long	.LASF1106
	.sleb128 878
	.uleb128 0x13
	.long	.LASF1107
	.sleb128 880
	.uleb128 0x13
	.long	.LASF1108
	.sleb128 884
	.uleb128 0x13
	.long	.LASF1109
	.sleb128 888
	.uleb128 0x13
	.long	.LASF1110
	.sleb128 892
	.uleb128 0x13
	.long	.LASF1111
	.sleb128 904
	.uleb128 0x13
	.long	.LASF1112
	.sleb128 905
	.uleb128 0x13
	.long	.LASF1113
	.sleb128 906
	.uleb128 0x13
	.long	.LASF1114
	.sleb128 907
	.uleb128 0x13
	.long	.LASF1115
	.sleb128 908
	.uleb128 0x13
	.long	.LASF1116
	.sleb128 909
	.uleb128 0x13
	.long	.LASF1117
	.sleb128 913
	.uleb128 0x13
	.long	.LASF1118
	.sleb128 916
	.uleb128 0x13
	.long	.LASF1119
	.sleb128 919
	.uleb128 0x13
	.long	.LASF1120
	.sleb128 922
	.uleb128 0x13
	.long	.LASF1121
	.sleb128 925
	.uleb128 0x13
	.long	.LASF1122
	.sleb128 926
	.uleb128 0x13
	.long	.LASF1123
	.sleb128 927
	.uleb128 0x13
	.long	.LASF1124
	.sleb128 928
	.uleb128 0x13
	.long	.LASF1125
	.sleb128 932
	.uleb128 0x13
	.long	.LASF1126
	.sleb128 933
	.uleb128 0x13
	.long	.LASF1127
	.sleb128 934
	.uleb128 0x13
	.long	.LASF1128
	.sleb128 935
	.uleb128 0x13
	.long	.LASF1129
	.sleb128 939
	.uleb128 0x13
	.long	.LASF1130
	.sleb128 940
	.uleb128 0x13
	.long	.LASF1131
	.sleb128 941
	.uleb128 0x13
	.long	.LASF1132
	.sleb128 942
	.uleb128 0x13
	.long	.LASF1133
	.sleb128 946
	.uleb128 0x13
	.long	.LASF1134
	.sleb128 947
	.uleb128 0x13
	.long	.LASF1135
	.sleb128 948
	.uleb128 0x13
	.long	.LASF1136
	.sleb128 949
	.uleb128 0x13
	.long	.LASF1137
	.sleb128 951
	.uleb128 0x13
	.long	.LASF1138
	.sleb128 953
	.uleb128 0x13
	.long	.LASF1139
	.sleb128 963
	.uleb128 0x13
	.long	.LASF1140
	.sleb128 964
	.uleb128 0x13
	.long	.LASF1141
	.sleb128 965
	.uleb128 0x13
	.long	.LASF1142
	.sleb128 966
	.uleb128 0x13
	.long	.LASF1143
	.sleb128 967
	.uleb128 0x13
	.long	.LASF1144
	.sleb128 968
	.uleb128 0x13
	.long	.LASF1145
	.sleb128 969
	.uleb128 0x13
	.long	.LASF1146
	.sleb128 971
	.uleb128 0x13
	.long	.LASF1147
	.sleb128 972
	.uleb128 0x13
	.long	.LASF1148
	.sleb128 973
	.uleb128 0x13
	.long	.LASF1149
	.sleb128 974
	.uleb128 0x13
	.long	.LASF1150
	.sleb128 975
	.uleb128 0x13
	.long	.LASF1151
	.sleb128 976
	.uleb128 0x13
	.long	.LASF1152
	.sleb128 977
	.uleb128 0x13
	.long	.LASF1153
	.sleb128 978
	.uleb128 0x13
	.long	.LASF1154
	.sleb128 979
	.uleb128 0x13
	.long	.LASF1155
	.sleb128 980
	.uleb128 0x13
	.long	.LASF1156
	.sleb128 981
	.uleb128 0x13
	.long	.LASF1157
	.sleb128 982
	.uleb128 0x13
	.long	.LASF1158
	.sleb128 983
	.uleb128 0x13
	.long	.LASF1159
	.sleb128 984
	.uleb128 0x13
	.long	.LASF1160
	.sleb128 985
	.uleb128 0x13
	.long	.LASF1161
	.sleb128 986
	.uleb128 0x13
	.long	.LASF1162
	.sleb128 987
	.uleb128 0x13
	.long	.LASF1163
	.sleb128 988
	.uleb128 0x13
	.long	.LASF1164
	.sleb128 989
	.uleb128 0x13
	.long	.LASF1165
	.sleb128 990
	.uleb128 0x13
	.long	.LASF1166
	.sleb128 991
	.uleb128 0x13
	.long	.LASF1167
	.sleb128 992
	.uleb128 0x13
	.long	.LASF1168
	.sleb128 993
	.uleb128 0x13
	.long	.LASF1169
	.sleb128 994
	.uleb128 0x13
	.long	.LASF1170
	.sleb128 995
	.uleb128 0x13
	.long	.LASF1171
	.sleb128 996
	.uleb128 0x13
	.long	.LASF1172
	.sleb128 997
	.uleb128 0x13
	.long	.LASF1173
	.sleb128 998
	.uleb128 0x13
	.long	.LASF1174
	.sleb128 999
	.uleb128 0x13
	.long	.LASF1175
	.sleb128 1000
	.uleb128 0x13
	.long	.LASF1176
	.sleb128 1002
	.uleb128 0x13
	.long	.LASF1177
	.sleb128 1006
	.uleb128 0x13
	.long	.LASF1178
	.sleb128 1007
	.uleb128 0x13
	.long	.LASF1179
	.sleb128 1008
	.uleb128 0x13
	.long	.LASF1180
	.sleb128 1009
	.uleb128 0x13
	.long	.LASF1181
	.sleb128 1011
	.uleb128 0x13
	.long	.LASF1182
	.sleb128 1012
	.uleb128 0x13
	.long	.LASF1183
	.sleb128 1016
	.uleb128 0x13
	.long	.LASF1184
	.sleb128 1017
	.uleb128 0x13
	.long	.LASF1185
	.sleb128 1018
	.uleb128 0x13
	.long	.LASF1186
	.sleb128 1019
	.uleb128 0x13
	.long	.LASF1187
	.sleb128 1020
	.uleb128 0x13
	.long	.LASF1188
	.sleb128 1021
	.uleb128 0x13
	.long	.LASF1189
	.sleb128 1022
	.uleb128 0x13
	.long	.LASF1190
	.sleb128 1023
	.uleb128 0x13
	.long	.LASF1191
	.sleb128 1024
	.uleb128 0x13
	.long	.LASF1192
	.sleb128 1025
	.uleb128 0x13
	.long	.LASF1193
	.sleb128 1026
	.uleb128 0x13
	.long	.LASF1194
	.sleb128 1027
	.uleb128 0x13
	.long	.LASF1195
	.sleb128 1029
	.uleb128 0x13
	.long	.LASF1196
	.sleb128 1030
	.uleb128 0x13
	.long	.LASF1197
	.sleb128 1031
	.uleb128 0x13
	.long	.LASF1198
	.sleb128 1032
	.uleb128 0x13
	.long	.LASF1199
	.sleb128 1039
	.uleb128 0x13
	.long	.LASF1200
	.sleb128 1046
	.uleb128 0x13
	.long	.LASF1201
	.sleb128 1047
	.uleb128 0x13
	.long	.LASF1202
	.sleb128 1052
	.uleb128 0x13
	.long	.LASF1203
	.sleb128 1059
	.uleb128 0x13
	.long	.LASF1204
	.sleb128 1065
	.uleb128 0x13
	.long	.LASF1205
	.sleb128 1066
	.uleb128 0x13
	.long	.LASF1206
	.sleb128 1071
	.uleb128 0x13
	.long	.LASF1207
	.sleb128 1073
	.uleb128 0x13
	.long	.LASF1208
	.sleb128 1076
	.uleb128 0x13
	.long	.LASF1209
	.sleb128 1078
	.uleb128 0x13
	.long	.LASF1210
	.sleb128 1080
	.uleb128 0x13
	.long	.LASF1211
	.sleb128 1084
	.uleb128 0x13
	.long	.LASF1212
	.sleb128 1085
	.uleb128 0x13
	.long	.LASF1213
	.sleb128 1086
	.uleb128 0x13
	.long	.LASF1214
	.sleb128 1089
	.uleb128 0x13
	.long	.LASF1215
	.sleb128 1090
	.uleb128 0x13
	.long	.LASF1216
	.sleb128 1091
	.uleb128 0x13
	.long	.LASF1217
	.sleb128 1094
	.uleb128 0x13
	.long	.LASF1218
	.sleb128 1095
	.uleb128 0x13
	.long	.LASF1219
	.sleb128 1096
	.uleb128 0x13
	.long	.LASF1220
	.sleb128 1097
	.uleb128 0x13
	.long	.LASF1221
	.sleb128 1098
	.uleb128 0x13
	.long	.LASF1222
	.sleb128 1101
	.uleb128 0x13
	.long	.LASF1223
	.sleb128 1102
	.uleb128 0x13
	.long	.LASF1224
	.sleb128 1103
	.uleb128 0x13
	.long	.LASF1225
	.sleb128 1104
	.uleb128 0x13
	.long	.LASF1226
	.sleb128 1105
	.uleb128 0x13
	.long	.LASF1227
	.sleb128 1106
	.uleb128 0x13
	.long	.LASF1228
	.sleb128 1107
	.uleb128 0x13
	.long	.LASF1229
	.sleb128 1108
	.uleb128 0x13
	.long	.LASF1230
	.sleb128 1109
	.uleb128 0x13
	.long	.LASF1231
	.sleb128 1110
	.uleb128 0x13
	.long	.LASF1232
	.sleb128 1111
	.uleb128 0x13
	.long	.LASF1233
	.sleb128 1112
	.uleb128 0x13
	.long	.LASF1234
	.sleb128 1113
	.uleb128 0x13
	.long	.LASF1235
	.sleb128 1114
	.uleb128 0x13
	.long	.LASF1236
	.sleb128 1115
	.uleb128 0x13
	.long	.LASF1237
	.sleb128 1116
	.uleb128 0x13
	.long	.LASF1238
	.sleb128 1117
	.uleb128 0x13
	.long	.LASF1239
	.sleb128 1118
	.uleb128 0x13
	.long	.LASF1240
	.sleb128 1119
	.uleb128 0x13
	.long	.LASF1241
	.sleb128 1120
	.uleb128 0x13
	.long	.LASF1242
	.sleb128 1121
	.uleb128 0x13
	.long	.LASF1243
	.sleb128 1122
	.uleb128 0x13
	.long	.LASF1244
	.sleb128 1123
	.uleb128 0x13
	.long	.LASF1245
	.sleb128 1124
	.uleb128 0x13
	.long	.LASF1246
	.sleb128 1125
	.uleb128 0x13
	.long	.LASF1247
	.sleb128 1126
	.uleb128 0x13
	.long	.LASF1248
	.sleb128 1127
	.uleb128 0x13
	.long	.LASF1249
	.sleb128 1128
	.uleb128 0x13
	.long	.LASF1250
	.sleb128 1129
	.uleb128 0x13
	.long	.LASF1251
	.sleb128 1130
	.uleb128 0x13
	.long	.LASF1252
	.sleb128 1131
	.uleb128 0x13
	.long	.LASF1253
	.sleb128 1132
	.uleb128 0x13
	.long	.LASF1254
	.sleb128 1137
	.uleb128 0x13
	.long	.LASF1255
	.sleb128 1138
	.uleb128 0x13
	.long	.LASF1256
	.sleb128 1139
	.uleb128 0x13
	.long	.LASF1257
	.sleb128 1140
	.uleb128 0x13
	.long	.LASF1258
	.sleb128 1141
	.uleb128 0x13
	.long	.LASF1259
	.sleb128 1142
	.uleb128 0x13
	.long	.LASF1260
	.sleb128 1143
	.uleb128 0x13
	.long	.LASF1261
	.sleb128 1144
	.uleb128 0x13
	.long	.LASF1262
	.sleb128 1145
	.uleb128 0x13
	.long	.LASF1263
	.sleb128 1146
	.uleb128 0x13
	.long	.LASF1264
	.sleb128 1147
	.uleb128 0x13
	.long	.LASF1265
	.sleb128 1148
	.uleb128 0x13
	.long	.LASF1266
	.sleb128 1149
	.uleb128 0x13
	.long	.LASF1267
	.sleb128 1150
	.uleb128 0x13
	.long	.LASF1268
	.sleb128 1151
	.uleb128 0x13
	.long	.LASF1269
	.sleb128 1152
	.uleb128 0x13
	.long	.LASF1270
	.sleb128 1153
	.uleb128 0x13
	.long	.LASF1271
	.sleb128 1154
	.uleb128 0x13
	.long	.LASF1272
	.sleb128 1159
	.uleb128 0x13
	.long	.LASF1273
	.sleb128 1160
	.uleb128 0x13
	.long	.LASF1274
	.sleb128 1161
	.uleb128 0x13
	.long	.LASF1275
	.sleb128 1166
	.uleb128 0x13
	.long	.LASF1276
	.sleb128 1167
	.uleb128 0x13
	.long	.LASF1277
	.sleb128 1168
	.uleb128 0x13
	.long	.LASF1278
	.sleb128 1169
	.uleb128 0x13
	.long	.LASF1279
	.sleb128 1170
	.uleb128 0x13
	.long	.LASF1280
	.sleb128 1171
	.uleb128 0x13
	.long	.LASF1281
	.sleb128 1172
	.uleb128 0x13
	.long	.LASF1282
	.sleb128 1173
	.uleb128 0x13
	.long	.LASF1283
	.sleb128 1174
	.uleb128 0x13
	.long	.LASF1284
	.sleb128 1175
	.uleb128 0x13
	.long	.LASF1285
	.sleb128 1176
	.uleb128 0x13
	.long	.LASF1286
	.sleb128 1177
	.uleb128 0x13
	.long	.LASF1287
	.sleb128 1180
	.uleb128 0x13
	.long	.LASF1288
	.sleb128 1183
	.uleb128 0x13
	.long	.LASF1289
	.sleb128 1184
	.uleb128 0x13
	.long	.LASF1290
	.sleb128 1185
	.uleb128 0x13
	.long	.LASF1291
	.sleb128 1186
	.uleb128 0x13
	.long	.LASF1292
	.sleb128 1187
	.uleb128 0x13
	.long	.LASF1293
	.sleb128 1188
	.uleb128 0x13
	.long	.LASF1294
	.sleb128 1189
	.uleb128 0x13
	.long	.LASF1295
	.sleb128 1190
	.uleb128 0x13
	.long	.LASF1296
	.sleb128 1191
	.uleb128 0x13
	.long	.LASF1297
	.sleb128 1192
	.uleb128 0x13
	.long	.LASF1298
	.sleb128 1193
	.uleb128 0x13
	.long	.LASF1299
	.sleb128 1194
	.uleb128 0x13
	.long	.LASF1300
	.sleb128 1195
	.uleb128 0x13
	.long	.LASF1301
	.sleb128 1196
	.uleb128 0x13
	.long	.LASF1302
	.sleb128 1197
	.uleb128 0x13
	.long	.LASF1303
	.sleb128 1198
	.uleb128 0x13
	.long	.LASF1304
	.sleb128 1199
	.uleb128 0x13
	.long	.LASF1305
	.sleb128 1200
	.uleb128 0x13
	.long	.LASF1306
	.sleb128 1201
	.uleb128 0x13
	.long	.LASF1307
	.sleb128 1202
	.uleb128 0x13
	.long	.LASF1308
	.sleb128 1203
	.uleb128 0x13
	.long	.LASF1309
	.sleb128 1204
	.uleb128 0x13
	.long	.LASF1310
	.sleb128 1205
	.uleb128 0x13
	.long	.LASF1311
	.sleb128 1206
	.uleb128 0x13
	.long	.LASF1312
	.sleb128 1209
	.uleb128 0x13
	.long	.LASF1313
	.sleb128 1210
	.uleb128 0x13
	.long	.LASF1314
	.sleb128 1211
	.uleb128 0x13
	.long	.LASF1315
	.sleb128 1212
	.uleb128 0x13
	.long	.LASF1316
	.sleb128 1213
	.uleb128 0x13
	.long	.LASF1317
	.sleb128 1215
	.uleb128 0x13
	.long	.LASF1318
	.sleb128 1216
	.uleb128 0x13
	.long	.LASF1319
	.sleb128 1217
	.uleb128 0x13
	.long	.LASF1320
	.sleb128 1220
	.uleb128 0x13
	.long	.LASF1321
	.sleb128 1223
	.uleb128 0x13
	.long	.LASF1322
	.sleb128 1226
	.uleb128 0x13
	.long	.LASF1323
	.sleb128 1229
	.uleb128 0x13
	.long	.LASF1324
	.sleb128 1233
	.uleb128 0x13
	.long	.LASF1325
	.sleb128 1234
	.uleb128 0x13
	.long	.LASF1326
	.sleb128 1235
	.uleb128 0x13
	.long	.LASF1327
	.sleb128 1298
	.uleb128 0x13
	.long	.LASF1328
	.sleb128 1299
	.uleb128 0x13
	.long	.LASF1329
	.sleb128 1300
	.uleb128 0x13
	.long	.LASF1330
	.sleb128 1301
	.uleb128 0x13
	.long	.LASF1331
	.sleb128 1302
	.uleb128 0x13
	.long	.LASF1332
	.sleb128 1303
	.uleb128 0x13
	.long	.LASF1333
	.sleb128 1304
	.uleb128 0x13
	.long	.LASF1334
	.sleb128 1305
	.uleb128 0x13
	.long	.LASF1335
	.sleb128 1314
	.uleb128 0x13
	.long	.LASF1336
	.sleb128 1315
	.uleb128 0x13
	.long	.LASF1337
	.sleb128 1316
	.uleb128 0x13
	.long	.LASF1338
	.sleb128 1317
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0xa
	.byte	0x2c
	.long	0x2e5a
	.uleb128 0x8
	.long	.LASF793
	.byte	0xa
	.byte	0x2d
	.long	0x1f4c
	.byte	0
	.uleb128 0x8
	.long	.LASF1339
	.byte	0xa
	.byte	0x2e
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x21
	.long	.LASF1340
	.value	0x3b8
	.byte	0xa
	.byte	0x29
	.long	0x2e80
	.uleb128 0x8
	.long	.LASF0
	.byte	0xa
	.byte	0x2b
	.long	0x41e
	.byte	0
	.uleb128 0x8
	.long	.LASF1341
	.byte	0xa
	.byte	0x2f
	.long	0x2e80
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x2e39
	.long	0x2e90
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x7
	.long	.LASF1340
	.byte	0xa
	.byte	0x30
	.long	0x2e9b
	.uleb128 0x3
	.byte	0x8
	.long	0x2e5a
	.uleb128 0x12
	.long	.LASF1342
	.byte	0x4
	.byte	0xa
	.byte	0x37
	.long	0x2fda
	.uleb128 0x13
	.long	.LASF1343
	.sleb128 0
	.uleb128 0x13
	.long	.LASF1344
	.sleb128 1
	.uleb128 0x13
	.long	.LASF1345
	.sleb128 2
	.uleb128 0x13
	.long	.LASF1346
	.sleb128 3
	.uleb128 0x13
	.long	.LASF1347
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1348
	.sleb128 5
	.uleb128 0x13
	.long	.LASF1349
	.sleb128 6
	.uleb128 0x13
	.long	.LASF1350
	.sleb128 7
	.uleb128 0x13
	.long	.LASF1351
	.sleb128 8
	.uleb128 0x13
	.long	.LASF1352
	.sleb128 9
	.uleb128 0x13
	.long	.LASF1353
	.sleb128 10
	.uleb128 0x13
	.long	.LASF1354
	.sleb128 11
	.uleb128 0x13
	.long	.LASF1355
	.sleb128 12
	.uleb128 0x13
	.long	.LASF1356
	.sleb128 13
	.uleb128 0x13
	.long	.LASF1357
	.sleb128 14
	.uleb128 0x13
	.long	.LASF1358
	.sleb128 15
	.uleb128 0x13
	.long	.LASF1359
	.sleb128 16
	.uleb128 0x13
	.long	.LASF1360
	.sleb128 17
	.uleb128 0x13
	.long	.LASF1361
	.sleb128 18
	.uleb128 0x13
	.long	.LASF1362
	.sleb128 19
	.uleb128 0x13
	.long	.LASF1363
	.sleb128 20
	.uleb128 0x13
	.long	.LASF1364
	.sleb128 21
	.uleb128 0x13
	.long	.LASF1365
	.sleb128 22
	.uleb128 0x13
	.long	.LASF1366
	.sleb128 23
	.uleb128 0x13
	.long	.LASF1367
	.sleb128 24
	.uleb128 0x13
	.long	.LASF1368
	.sleb128 25
	.uleb128 0x13
	.long	.LASF1369
	.sleb128 26
	.uleb128 0x13
	.long	.LASF1370
	.sleb128 27
	.uleb128 0x13
	.long	.LASF1371
	.sleb128 28
	.uleb128 0x13
	.long	.LASF1372
	.sleb128 29
	.uleb128 0x13
	.long	.LASF1373
	.sleb128 30
	.uleb128 0x13
	.long	.LASF1374
	.sleb128 31
	.uleb128 0x13
	.long	.LASF1375
	.sleb128 32
	.uleb128 0x13
	.long	.LASF1376
	.sleb128 33
	.uleb128 0x13
	.long	.LASF1377
	.sleb128 34
	.uleb128 0x13
	.long	.LASF1378
	.sleb128 35
	.uleb128 0x13
	.long	.LASF1379
	.sleb128 36
	.uleb128 0x13
	.long	.LASF1380
	.sleb128 37
	.uleb128 0x13
	.long	.LASF1381
	.sleb128 38
	.uleb128 0x13
	.long	.LASF1382
	.sleb128 39
	.uleb128 0x13
	.long	.LASF1383
	.sleb128 40
	.uleb128 0x13
	.long	.LASF1384
	.sleb128 41
	.uleb128 0x13
	.long	.LASF1385
	.sleb128 42
	.uleb128 0x13
	.long	.LASF1386
	.sleb128 43
	.uleb128 0x13
	.long	.LASF1387
	.sleb128 44
	.uleb128 0x13
	.long	.LASF1388
	.sleb128 45
	.uleb128 0x13
	.long	.LASF1389
	.sleb128 46
	.uleb128 0x13
	.long	.LASF1390
	.sleb128 47
	.uleb128 0x13
	.long	.LASF1391
	.sleb128 48
	.uleb128 0x13
	.long	.LASF1392
	.sleb128 49
	.byte	0
	.uleb128 0x1a
	.long	.LASF1393
	.byte	0x4
	.byte	0xa
	.value	0x12a
	.long	0x2ffa
	.uleb128 0x13
	.long	.LASF1394
	.sleb128 0
	.uleb128 0x13
	.long	.LASF1395
	.sleb128 1
	.uleb128 0x13
	.long	.LASF1396
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF1397
	.byte	0xb
	.byte	0xd4
	.long	0x3005
	.uleb128 0x3
	.byte	0x8
	.long	0x300b
	.uleb128 0x22
	.long	0x1de
	.long	0x301f
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x23
	.long	0x260
	.byte	0
	.uleb128 0x7
	.long	.LASF1398
	.byte	0xb
	.byte	0xd6
	.long	0x302a
	.uleb128 0x3
	.byte	0x8
	.long	0x3030
	.uleb128 0x22
	.long	0x2d
	.long	0x3040
	.uleb128 0x23
	.long	0x2d
	.uleb128 0x24
	.byte	0
	.uleb128 0x4
	.long	.LASF1399
	.byte	0x18
	.byte	0xb
	.byte	0xd8
	.long	0x308c
	.uleb128 0x8
	.long	.LASF1400
	.byte	0xb
	.byte	0xda
	.long	0x308c
	.byte	0
	.uleb128 0x8
	.long	.LASF1401
	.byte	0xb
	.byte	0xdc
	.long	0x1ebc
	.byte	0x8
	.uleb128 0x5
	.long	.LASF1
	.byte	0xb
	.byte	0xde
	.long	0x3091
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1402
	.byte	0xb
	.byte	0xe0
	.long	0x240
	.byte	0x12
	.uleb128 0x8
	.long	.LASF1403
	.byte	0xb
	.byte	0xe2
	.long	0x240
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	0x2ffa
	.uleb128 0x10
	.long	0x1ec
	.uleb128 0x4
	.long	.LASF1404
	.byte	0x28
	.byte	0xb
	.byte	0xec
	.long	0x3103
	.uleb128 0x8
	.long	.LASF657
	.byte	0xb
	.byte	0xee
	.long	0x1ebc
	.byte	0
	.uleb128 0x8
	.long	.LASF1405
	.byte	0xb
	.byte	0xef
	.long	0x259
	.byte	0x8
	.uleb128 0x8
	.long	.LASF1406
	.byte	0xb
	.byte	0xf0
	.long	0x3103
	.byte	0x10
	.uleb128 0x8
	.long	.LASF1407
	.byte	0xb
	.byte	0xf1
	.long	0x3108
	.byte	0x18
	.uleb128 0x8
	.long	.LASF1408
	.byte	0xb
	.byte	0xf3
	.long	0x240
	.byte	0x20
	.uleb128 0x8
	.long	.LASF1409
	.byte	0xb
	.byte	0xf4
	.long	0x240
	.byte	0x21
	.uleb128 0x8
	.long	.LASF1410
	.byte	0xb
	.byte	0xf5
	.long	0x240
	.byte	0x22
	.uleb128 0x8
	.long	.LASF1411
	.byte	0xb
	.byte	0xf6
	.long	0x240
	.byte	0x23
	.byte	0
	.uleb128 0x10
	.long	0x301f
	.uleb128 0x10
	.long	0x310d
	.uleb128 0x3
	.byte	0x8
	.long	0x3113
	.uleb128 0x10
	.long	0x3040
	.uleb128 0x1a
	.long	.LASF1412
	.byte	0x4
	.byte	0x1
	.value	0x7ff
	.long	0x3174
	.uleb128 0x13
	.long	.LASF1413
	.sleb128 0
	.uleb128 0x13
	.long	.LASF1414
	.sleb128 1
	.uleb128 0x13
	.long	.LASF1415
	.sleb128 2
	.uleb128 0x13
	.long	.LASF1416
	.sleb128 3
	.uleb128 0x13
	.long	.LASF1417
	.sleb128 4
	.uleb128 0x13
	.long	.LASF1418
	.sleb128 5
	.uleb128 0x13
	.long	.LASF1419
	.sleb128 6
	.uleb128 0x13
	.long	.LASF1420
	.sleb128 7
	.uleb128 0x13
	.long	.LASF1421
	.sleb128 8
	.uleb128 0x13
	.long	.LASF1422
	.sleb128 9
	.uleb128 0x13
	.long	.LASF1423
	.sleb128 10
	.uleb128 0x13
	.long	.LASF1424
	.sleb128 11
	.uleb128 0x13
	.long	.LASF1425
	.sleb128 12
	.byte	0
	.uleb128 0x25
	.long	.LASF1426
	.value	0x144
	.byte	0x1
	.value	0x818
	.long	0x31b7
	.uleb128 0x1d
	.long	.LASF1427
	.byte	0x1
	.value	0x81a
	.long	0x216
	.byte	0
	.uleb128 0x1c
	.string	"ops"
	.byte	0x1
	.value	0x81b
	.long	0x216
	.byte	0x2
	.uleb128 0x1c
	.string	"op"
	.byte	0x1
	.value	0x821
	.long	0x31b7
	.byte	0x4
	.uleb128 0x26
	.string	"log"
	.byte	0x1
	.value	0x822
	.long	0x31c7
	.value	0x104
	.byte	0
	.uleb128 0xe
	.long	0x3118
	.long	0x31c7
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3f
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x31d7
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3f
	.byte	0
	.uleb128 0x27
	.long	.LASF1512
	.byte	0x1
	.byte	0x68
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3269
	.uleb128 0x28
	.string	"reg"
	.byte	0x1
	.byte	0x6c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF1428
	.byte	0x1
	.byte	0x6d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF1429
	.byte	0x1
	.byte	0x6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF1430
	.byte	0x1
	.byte	0x6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF1431
	.byte	0x1
	.byte	0x6e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.byte	0x6f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x29
	.long	.LASF1
	.byte	0x1
	.byte	0x70
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF1432
	.byte	0x1
	.byte	0x70
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x2a
	.long	.LASF1433
	.byte	0x1
	.byte	0xd1
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x32b3
	.uleb128 0x2b
	.long	.LASF1
	.byte	0x1
	.byte	0xd2
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.byte	0xd3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF698
	.byte	0x1
	.byte	0xd5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2a
	.long	.LASF1434
	.byte	0x1
	.byte	0xe2
	.long	0x260
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3312
	.uleb128 0x2b
	.long	.LASF1435
	.byte	0x1
	.byte	0xe3
	.long	0x1f2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.long	.LASF1436
	.byte	0x1
	.byte	0xe4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF1437
	.byte	0x1
	.byte	0xe6
	.long	0x3312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x331d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12772
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3318
	.uleb128 0x10
	.long	0x3096
	.uleb128 0x10
	.long	0x22a
	.uleb128 0x2e
	.long	.LASF1438
	.byte	0x1
	.value	0x121
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x35da
	.uleb128 0x2f
	.long	.LASF1439
	.byte	0x1
	.value	0x122
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x123
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF1441
	.byte	0x1
	.value	0x124
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2f
	.long	.LASF1442
	.byte	0x1
	.value	0x125
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0x126
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2f
	.long	.LASF1443
	.byte	0x1
	.value	0x127
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x30
	.long	.LASF1444
	.byte	0x1
	.value	0x129
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x12b
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1445
	.byte	0x1
	.value	0x12c
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x12d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1446
	.byte	0x1
	.value	0x12e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF1447
	.byte	0x1
	.value	0x130
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x35ea
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12791
	.uleb128 0x32
	.long	.LASF1488
	.byte	0x1
	.value	0x2ac
	.quad	.L103
	.uleb128 0x33
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x344c
	.uleb128 0x30
	.long	.LASF1449
	.byte	0x1
	.value	0x149
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x33
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x3472
	.uleb128 0x30
	.long	.LASF1450
	.byte	0x1
	.value	0x17f
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x3498
	.uleb128 0x30
	.long	.LASF1451
	.byte	0x1
	.value	0x1a5
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x33
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x350e
	.uleb128 0x30
	.long	.LASF1452
	.byte	0x1
	.value	0x1d2
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x30
	.long	.LASF1453
	.byte	0x1
	.value	0x1d3
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x1d4
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x34
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x30
	.long	.LASF1454
	.byte	0x1
	.value	0x1e1
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF1455
	.byte	0x1
	.value	0x1e2
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0
	.uleb128 0x30
	.long	.LASF1456
	.byte	0x1
	.value	0x227
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF1457
	.byte	0x1
	.value	0x228
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1458
	.byte	0x1
	.value	0x229
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1459
	.byte	0x1
	.value	0x22a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x22b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1460
	.byte	0x1
	.value	0x22c
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1461
	.byte	0x1
	.value	0x22d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x33
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x35b6
	.uleb128 0x30
	.long	.LASF1462
	.byte	0x1
	.value	0x239
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1463
	.byte	0x1
	.value	0x23a
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x34
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x31
	.string	"tmp"
	.byte	0x1
	.value	0x285
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x35ea
	.uleb128 0xf
	.long	0x1e5
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	0x35da
	.uleb128 0x36
	.long	.LASF1470
	.byte	0x1
	.value	0x2be
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3712
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x2bf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x2c0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x2c0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x2c0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0x2c1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x2c3
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.long	.LASF1464
	.byte	0x1
	.value	0x2c4
	.long	0x1ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1465
	.byte	0x1
	.value	0x2c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1466
	.byte	0x1
	.value	0x2c5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1467
	.byte	0x1
	.value	0x2c6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1468
	.byte	0x1
	.value	0x2c7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x3722
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12826
	.uleb128 0x33
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x36f0
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x31d
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x30
	.long	.LASF1469
	.byte	0x1
	.value	0x32d
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x3722
	.uleb128 0xf
	.long	0x1e5
	.byte	0x15
	.byte	0
	.uleb128 0x10
	.long	0x3712
	.uleb128 0x36
	.long	.LASF1471
	.byte	0x1
	.value	0x364
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3840
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x365
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x366
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x366
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0x367
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1444
	.byte	0x1
	.value	0x369
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.long	.LASF1472
	.byte	0x1
	.value	0x36a
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x38
	.long	.Ldebug_ranges0+0x30
	.long	0x37be
	.uleb128 0x30
	.long	.LASF1473
	.byte	0x1
	.value	0x378
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x34
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0x387
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1475
	.byte	0x1
	.value	0x388
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1473
	.byte	0x1
	.value	0x388
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1476
	.byte	0x1
	.value	0x389
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x38a
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x30
	.long	.LASF1477
	.byte	0x1
	.value	0x3c2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1478
	.byte	0x1
	.value	0x3ec
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cf8
	.uleb128 0x2f
	.long	.LASF1439
	.byte	0x1
	.value	0x3ee
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x3ef
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x2f
	.long	.LASF1441
	.byte	0x1
	.value	0x3f0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x3f1
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x3f2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x3f3
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x2f
	.long	.LASF1481
	.byte	0x1
	.value	0x3f3
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF1443
	.byte	0x1
	.value	0x3f4
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF1444
	.byte	0x1
	.value	0x3f6
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x3f8
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x30
	.long	.LASF1445
	.byte	0x1
	.value	0x3f9
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0x3fa
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x30
	.long	.LASF1482
	.byte	0x1
	.value	0x3fb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x30
	.long	.LASF1483
	.byte	0x1
	.value	0x3fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x30
	.long	.LASF1484
	.byte	0x1
	.value	0x3fd
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x30
	.long	.LASF1485
	.byte	0x1
	.value	0x3fe
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x30
	.long	.LASF1486
	.byte	0x1
	.value	0x3ff
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.long	.LASF1487
	.byte	0x1
	.value	0x400
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x30
	.long	.LASF1446
	.byte	0x1
	.value	0x401
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x3d08
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.12875
	.uleb128 0x32
	.long	.LASF1489
	.byte	0x1
	.value	0x575
	.quad	.L274
	.uleb128 0x32
	.long	.LASF1490
	.byte	0x1
	.value	0x5f6
	.quad	.L298
	.uleb128 0x33
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x39f9
	.uleb128 0x30
	.long	.LASF1491
	.byte	0x1
	.value	0x40d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x30
	.long	.LASF1492
	.byte	0x1
	.value	0x40e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x33
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0x3a1f
	.uleb128 0x30
	.long	.LASF1450
	.byte	0x1
	.value	0x42d
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x33
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x3ad9
	.uleb128 0x30
	.long	.LASF1453
	.byte	0x1
	.value	0x490
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x491
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x33
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x3aa8
	.uleb128 0x30
	.long	.LASF1454
	.byte	0x1
	.value	0x49e
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x30
	.long	.LASF1455
	.byte	0x1
	.value	0x4a3
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x30
	.long	.LASF1493
	.byte	0x1
	.value	0x4a7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1494
	.byte	0x1
	.value	0x4a8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x34
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0x4bb
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x30
	.long	.LASF1495
	.byte	0x1
	.value	0x4bb
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.Ldebug_ranges0+0x60
	.long	0x3bfd
	.uleb128 0x30
	.long	.LASF1456
	.byte	0x1
	.value	0x4fa
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x30
	.long	.LASF1496
	.byte	0x1
	.value	0x4fa
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1497
	.byte	0x1
	.value	0x4fb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1498
	.byte	0x1
	.value	0x4fb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1459
	.byte	0x1
	.value	0x4fc
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1458
	.byte	0x1
	.value	0x4fd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x30
	.long	.LASF1499
	.byte	0x1
	.value	0x4fe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x30
	.long	.LASF1500
	.byte	0x1
	.value	0x4ff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF1501
	.byte	0x1
	.value	0x500
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x501
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1460
	.byte	0x1
	.value	0x502
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x33
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0x3bda
	.uleb128 0x30
	.long	.LASF1461
	.byte	0x1
	.value	0x506
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x34
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x30
	.long	.LASF1463
	.byte	0x1
	.value	0x50e
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x30
	.long	.LASF1502
	.byte	0x1
	.value	0x551
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.Ldebug_ranges0+0x90
	.uleb128 0x30
	.long	.LASF1456
	.byte	0x1
	.value	0x580
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x30
	.long	.LASF1496
	.byte	0x1
	.value	0x580
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x30
	.long	.LASF1497
	.byte	0x1
	.value	0x581
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1498
	.byte	0x1
	.value	0x581
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1459
	.byte	0x1
	.value	0x582
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1458
	.byte	0x1
	.value	0x583
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.long	.LASF1499
	.byte	0x1
	.value	0x583
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF1500
	.byte	0x1
	.value	0x584
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF1501
	.byte	0x1
	.value	0x585
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x31
	.string	"pat"
	.byte	0x1
	.value	0x586
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1460
	.byte	0x1
	.value	0x587
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x33
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x3cd4
	.uleb128 0x30
	.long	.LASF1463
	.byte	0x1
	.value	0x590
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.uleb128 0x34
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.uleb128 0x30
	.long	.LASF1502
	.byte	0x1
	.value	0x5d2
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x3d08
	.uleb128 0xf
	.long	0x1e5
	.byte	0x11
	.byte	0
	.uleb128 0x10
	.long	0x3cf8
	.uleb128 0x39
	.long	.LASF1504
	.byte	0x1
	.value	0x622
	.long	0x2d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e23
	.uleb128 0x2f
	.long	.LASF1481
	.byte	0x1
	.value	0x624
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x625
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x626
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x626
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x626
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x625
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x627
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1464
	.byte	0x1
	.value	0x629
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF1
	.byte	0x1
	.value	0x62a
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0x3df2
	.uleb128 0x30
	.long	.LASF1503
	.byte	0x1
	.value	0x667
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1465
	.byte	0x1
	.value	0x66a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x34
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x30
	.long	.LASF1503
	.byte	0x1
	.value	0x690
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1465
	.byte	0x1
	.value	0x694
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF1505
	.byte	0x1
	.value	0x6a6
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ea0
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x6a7
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x6a8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x6a8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF1506
	.byte	0x1
	.value	0x6a8
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1507
	.byte	0x1
	.value	0x6aa
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1508
	.byte	0x1
	.value	0x6aa
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1509
	.byte	0x1
	.value	0x6cd
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2b
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x6ce
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF625
	.byte	0x1
	.value	0x6cf
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x6d0
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x6d0
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0x6d2
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"low"
	.byte	0x1
	.value	0x6d3
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF608
	.byte	0x1
	.value	0x6d3
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1510
	.byte	0x1
	.value	0x6ee
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x404e
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x6ef
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1440
	.byte	0x1
	.value	0x6f0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1445
	.byte	0x1
	.value	0x6f0
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x6f1
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x30
	.long	.LASF1444
	.byte	0x1
	.value	0x6f3
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1472
	.byte	0x1
	.value	0x6f4
	.long	0x1ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x30
	.long	.LASF698
	.byte	0x1
	.value	0x6f5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1511
	.byte	0x1
	.value	0x6f6
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x30
	.long	.LASF1474
	.byte	0x1
	.value	0x701
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1475
	.byte	0x1
	.value	0x702
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1473
	.byte	0x1
	.value	0x702
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1476
	.byte	0x1
	.value	0x703
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x704
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x30
	.long	.LASF1477
	.byte	0x1
	.value	0x717
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	.LASF1513
	.byte	0x1
	.value	0x754
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x409a
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x755
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"inc"
	.byte	0x1
	.value	0x755
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF625
	.byte	0x1
	.value	0x757
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF1514
	.byte	0x1
	.value	0x761
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e6
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x762
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.string	"dec"
	.byte	0x1
	.value	0x762
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF625
	.byte	0x1
	.value	0x764
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1515
	.byte	0x1
	.value	0x773
	.long	0x2d
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x4270
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x774
	.long	0xbaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x775
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1516
	.byte	0x1
	.value	0x776
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1503
	.byte	0x1
	.value	0x777
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x778
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x779
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0x77b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF1466
	.byte	0x1
	.value	0x77b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1517
	.byte	0x1
	.value	0x77c
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1518
	.byte	0x1
	.value	0x77d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x31
	.string	"try"
	.byte	0x1
	.value	0x77e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x4280
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13007
	.uleb128 0x34
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x30
	.long	.LASF1519
	.byte	0x1
	.value	0x799
	.long	0x1f00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x33
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0x424c
	.uleb128 0x30
	.long	.LASF1465
	.byte	0x1
	.value	0x7b5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1520
	.byte	0x1
	.value	0x7b6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x7b7
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1521
	.byte	0x1
	.value	0x7b8
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1522
	.byte	0x1
	.value	0x7b9
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x30
	.long	.LASF1523
	.byte	0x1
	.value	0x7e6
	.long	0x1f00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x4280
	.uleb128 0xf
	.long	0x1e5
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	0x4270
	.uleb128 0x36
	.long	.LASF1524
	.byte	0x1
	.value	0x834
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x4452
	.uleb128 0x2f
	.long	.LASF1525
	.byte	0x1
	.value	0x835
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x37
	.string	"t"
	.byte	0x1
	.value	0x836
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1526
	.byte	0x1
	.value	0x837
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x31
	.string	"m"
	.byte	0x1
	.value	0x839
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF1527
	.byte	0x1
	.value	0x83a
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1528
	.byte	0x1
	.value	0x83a
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF1427
	.byte	0x1
	.value	0x83b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x31
	.string	"q"
	.byte	0x1
	.value	0x83c
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x4341
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x871
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x33
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x43a9
	.uleb128 0x31
	.string	"w"
	.byte	0x1
	.value	0x87d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x33
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x4388
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x894
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x34
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8a5
	.long	0x4452
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x440f
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0x8ba
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x43ef
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8c5
	.long	0x4452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x34
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8d8
	.long	0x4452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x4432
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x8f1
	.long	0x4452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x34
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x904
	.long	0x4452
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x3174
	.uleb128 0x2e
	.long	.LASF1529
	.byte	0x1
	.value	0x92b
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4640
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x92c
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x92d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0x92d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x92d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x92e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x30
	.long	.LASF1530
	.byte	0x1
	.value	0x930
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x4650
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13089
	.uleb128 0x34
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x31
	.string	"alg"
	.byte	0x1
	.value	0x94d
	.long	0x3174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x30
	.long	.LASF1531
	.byte	0x1
	.value	0x94e
	.long	0x3174
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.value	0x94f
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x30
	.long	.LASF1532
	.byte	0x1
	.value	0x950
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x30
	.long	.LASF1533
	.byte	0x1
	.value	0x951
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x30
	.long	.LASF1534
	.byte	0x1
	.value	0x952
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x3b
	.byte	0x4
	.byte	0x1
	.value	0x953
	.long	0x457a
	.uleb128 0x13
	.long	.LASF1535
	.sleb128 0
	.uleb128 0x13
	.long	.LASF1536
	.sleb128 1
	.uleb128 0x13
	.long	.LASF1537
	.sleb128 2
	.byte	0
	.uleb128 0x30
	.long	.LASF1538
	.byte	0x1
	.value	0x953
	.long	0x455e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x34
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x30
	.long	.LASF1436
	.byte	0x1
	.value	0x975
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x30
	.long	.LASF1539
	.byte	0x1
	.value	0x976
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x976
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x30
	.long	.LASF1540
	.byte	0x1
	.value	0x977
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x34
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x31
	.string	"log"
	.byte	0x1
	.value	0x992
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x30
	.long	.LASF1541
	.byte	0x1
	.value	0x993
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x30
	.long	.LASF1542
	.byte	0x1
	.value	0x994
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x30
	.long	.LASF1543
	.byte	0x1
	.value	0x995
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x30
	.long	.LASF1544
	.byte	0x1
	.value	0x999
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x4650
	.uleb128 0xf
	.long	0x1e5
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.long	0x4640
	.uleb128 0x2e
	.long	.LASF1545
	.byte	0x1
	.value	0xa13
	.long	0x1de
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4685
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0xa14
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x39
	.long	.LASF1546
	.byte	0x1
	.value	0xa2b
	.long	0x1fa
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x4827
	.uleb128 0x37
	.string	"d"
	.byte	0x1
	.value	0xa2c
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.value	0xa2d
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.long	.LASF645
	.byte	0x1
	.value	0xa2e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1547
	.byte	0x1
	.value	0xa2f
	.long	0x4827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.long	.LASF1548
	.byte	0x1
	.value	0xa30
	.long	0x253
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1549
	.byte	0x1
	.value	0xa31
	.long	0x253
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x30
	.long	.LASF1550
	.byte	0x1
	.value	0xa33
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1551
	.byte	0x1
	.value	0xa33
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1552
	.byte	0x1
	.value	0xa34
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1553
	.byte	0x1
	.value	0xa34
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1554
	.byte	0x1
	.value	0xa35
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF1555
	.byte	0x1
	.value	0xa35
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"pow"
	.byte	0x1
	.value	0xa36
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x30
	.long	.LASF1556
	.byte	0x1
	.value	0xa36
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x31
	.string	"nl"
	.byte	0x1
	.value	0xa37
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1557
	.byte	0x1
	.value	0xa37
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"nh"
	.byte	0x1
	.value	0xa38
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1558
	.byte	0x1
	.value	0xa38
	.long	0x1f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x482d
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13130
	.uleb128 0x33
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.long	0x4805
	.uleb128 0x30
	.long	.LASF1559
	.byte	0x1
	.value	0xa6e
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1560
	.byte	0x1
	.value	0xa6f
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x34
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x30
	.long	.LASF1561
	.byte	0x1
	.value	0xa7d
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1fa
	.uleb128 0x10
	.long	0x3cf8
	.uleb128 0x3c
	.long	.LASF1562
	.byte	0x1
	.value	0xa8c
	.long	0x1fa
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x489a
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0xa8d
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"n"
	.byte	0x1
	.value	0xa8e
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF1561
	.byte	0x1
	.value	0xa96
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"y"
	.byte	0x1
	.value	0xa97
	.long	0x1fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1563
	.byte	0x1
	.value	0xa98
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2e
	.long	.LASF1564
	.byte	0x1
	.value	0xab1
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4936
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xab2
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF1565
	.byte	0x1
	.value	0xab3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0xab3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0xab3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0xab3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0xab4
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xab6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1566
	.byte	0x1
	.value	0xab7
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.long	.LASF1567
	.byte	0x1
	.value	0xad6
	.long	0x2d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a68
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xad7
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0xad8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1568
	.byte	0x1
	.value	0xad9
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0xad8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0xada
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF1569
	.byte	0x1
	.value	0xadb
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF1432
	.byte	0x1
	.value	0xadd
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1570
	.byte	0x1
	.value	0xade
	.long	0x2e90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1571
	.byte	0x1
	.value	0xadf
	.long	0x2e90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xae0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF249
	.byte	0x1
	.value	0xae1
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0xae2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1572
	.byte	0x1
	.value	0xae2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x4a78
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13172
	.uleb128 0x3d
	.string	"try"
	.byte	0x1
	.value	0xb4a
	.quad	.L580
	.uleb128 0x34
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x30
	.long	.LASF1573
	.byte	0x1
	.value	0xb39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x4a78
	.uleb128 0xf
	.long	0x1e5
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	0x4a68
	.uleb128 0x2e
	.long	.LASF1574
	.byte	0x1
	.value	0xb87
	.long	0x2d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x53b5
	.uleb128 0x2f
	.long	.LASF1575
	.byte	0x1
	.value	0xb88
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0xb89
	.long	0xbaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0xb8a
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0xb8b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0xb8b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0xb8b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0xb8c
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1576
	.byte	0x1
	.value	0xb8e
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x30
	.long	.LASF1577
	.byte	0x1
	.value	0xb8f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.uleb128 0x30
	.long	.LASF1578
	.byte	0x1
	.value	0xb90
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.uleb128 0x30
	.long	.LASF1579
	.byte	0x1
	.value	0xb90
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x30
	.long	.LASF1459
	.byte	0x1
	.value	0xb91
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x30
	.long	.LASF249
	.byte	0x1
	.value	0xb92
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x30
	.long	.LASF1533
	.byte	0x1
	.value	0xb93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0xb93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x30
	.long	.LASF1580
	.byte	0x1
	.value	0xb94
	.long	0x2e90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.uleb128 0x30
	.long	.LASF1581
	.byte	0x1
	.value	0xb94
	.long	0x2e90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.uleb128 0x30
	.long	.LASF1582
	.byte	0x1
	.value	0xb95
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x30
	.long	.LASF1583
	.byte	0x1
	.value	0xb95
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x30
	.long	.LASF1569
	.byte	0x1
	.value	0xb96
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.uleb128 0x30
	.long	.LASF1584
	.byte	0x1
	.value	0xb96
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x30
	.long	.LASF1585
	.byte	0x1
	.value	0xb97
	.long	0x1f3
	.uleb128 0x9
	.byte	0x3
	.quad	last_div_const.13198
	.uleb128 0x32
	.long	.LASF1586
	.byte	0x1
	.value	0xd79
	.quad	.L652
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x53c5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13214
	.uleb128 0x38
	.long	.Ldebug_ranges0+0xc0
	.long	0x4d0f
	.uleb128 0x31
	.string	"mh"
	.byte	0x1
	.value	0xc4d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x31
	.string	"ml"
	.byte	0x1
	.value	0xc4d
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x30
	.long	.LASF1587
	.byte	0x1
	.value	0xc4e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x30
	.long	.LASF1555
	.byte	0x1
	.value	0xc4e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x30
	.long	.LASF1431
	.byte	0x1
	.value	0xc4f
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xc50
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x33
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x4cde
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xc87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xc87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xc87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x31
	.string	"t4"
	.byte	0x1
	.value	0xc87
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.byte	0
	.uleb128 0x34
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xca2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xca2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.Ldebug_ranges0+0xf0
	.long	0x4e6f
	.uleb128 0x31
	.string	"ml"
	.byte	0x1
	.value	0xcc6
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x30
	.long	.LASF1554
	.byte	0x1
	.value	0xcc7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x30
	.long	.LASF1555
	.byte	0x1
	.value	0xcc7
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xcc8
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x30
	.long	.LASF1588
	.byte	0x1
	.value	0xcc9
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x33
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x4d9a
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xcf0
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xcf1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.byte	0
	.uleb128 0x33
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.long	0x4ddd
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xcff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xcff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xcff
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.uleb128 0x33
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0x4e20
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xd2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xd2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xd2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.byte	0
	.uleb128 0x34
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xd49
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xd49
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xd49
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x31
	.string	"t4"
	.byte	0x1
	.value	0xd49
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.long	0x4fb2
	.uleb128 0x31
	.string	"mh"
	.byte	0x1
	.value	0xd82
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x31
	.string	"ml"
	.byte	0x1
	.value	0xd82
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x30
	.long	.LASF1587
	.byte	0x1
	.value	0xd83
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.uleb128 0x30
	.long	.LASF1554
	.byte	0x1
	.value	0xd83
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x30
	.long	.LASF1555
	.byte	0x1
	.value	0xd83
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xd84
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x33
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.long	0x4f32
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xd9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xd9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xd9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x31
	.string	"t4"
	.byte	0x1
	.value	0xd9b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.byte	0
	.uleb128 0x34
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.uleb128 0x30
	.long	.LASF1590
	.byte	0x1
	.value	0xdbd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xdbd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xdbd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xdbd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x31
	.string	"t4"
	.byte	0x1
	.value	0xdbd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x34
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.uleb128 0x31
	.string	"t5"
	.byte	0x1
	.value	0xdca
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.long	0x4fe8
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xdf2
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xdf3
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.byte	0
	.uleb128 0x33
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.long	0x506e
	.uleb128 0x30
	.long	.LASF1591
	.byte	0x1
	.value	0xe01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x30
	.long	.LASF1592
	.byte	0x1
	.value	0xe01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x30
	.long	.LASF1593
	.byte	0x1
	.value	0xe01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x30
	.long	.LASF1594
	.byte	0x1
	.value	0xe01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x30
	.long	.LASF1595
	.byte	0x1
	.value	0xe01
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x30
	.long	.LASF1596
	.byte	0x1
	.value	0xe02
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xe03
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x33
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.long	0x50e1
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xe32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xe32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xe32
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xe33
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x34
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x31
	.string	"lab"
	.byte	0x1
	.value	0xe3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.long	0x5107
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xe67
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x33
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.long	0x515d
	.uleb128 0x30
	.long	.LASF1591
	.byte	0x1
	.value	0xe73
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x30
	.long	.LASF1592
	.byte	0x1
	.value	0xe73
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x30
	.long	.LASF1596
	.byte	0x1
	.value	0xe74
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xe74
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x33
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.long	0x51d0
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xe94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x31
	.string	"t2"
	.byte	0x1
	.value	0xe94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.string	"t3"
	.byte	0x1
	.value	0xe94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xe95
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x34
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.uleb128 0x31
	.string	"lab"
	.byte	0x1
	.value	0xea1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.byte	0
	.uleb128 0x33
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x5206
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xec8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xec9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x33
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.long	0x528c
	.uleb128 0x30
	.long	.LASF1591
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x30
	.long	.LASF1592
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x30
	.long	.LASF1593
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF1594
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF1595
	.byte	0x1
	.value	0xed8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1596
	.byte	0x1
	.value	0xed9
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xeda
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x33
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x52de
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xf09
	.long	0x1f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"ml"
	.byte	0x1
	.value	0xf0a
	.long	0x1fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1587
	.byte	0x1
	.value	0xf0b
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x31
	.string	"t1"
	.byte	0x1
	.value	0xf0c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x33
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.long	0x5336
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xf24
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xf25
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x34
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xf2b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x30
	.long	.LASF1597
	.byte	0x1
	.value	0xf3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF1598
	.byte	0x1
	.value	0xf3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xf3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1561
	.byte	0x1
	.value	0xf3c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0xf3d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0xf43
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x223
	.long	0x53c5
	.uleb128 0xf
	.long	0x1e5
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.long	0x53b5
	.uleb128 0x2e
	.long	.LASF1599
	.byte	0x1
	.value	0xfcc
	.long	0x123
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x54aa
	.uleb128 0x2f
	.long	.LASF24
	.byte	0x1
	.value	0xfcd
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0xfce
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xfd0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x33
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.long	0x545b
	.uleb128 0x31
	.string	"d"
	.byte	0x1
	.value	0xfe4
	.long	0x1408
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x34
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.uleb128 0x31
	.string	"u"
	.byte	0x1
	.value	0xfe6
	.long	0x1413
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x34
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.uleb128 0x31
	.string	"i"
	.byte	0x1
	.value	0xfee
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF1600
	.byte	0x1
	.value	0xfee
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x31
	.string	"elt"
	.byte	0x1
	.value	0xfef
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.string	"t"
	.byte	0x1
	.value	0xff0
	.long	0x123
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF1601
	.byte	0x1
	.value	0x1050
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x5558
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.value	0x1051
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x1051
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF1602
	.byte	0x1
	.value	0x1051
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x37
	.string	"add"
	.byte	0x1
	.value	0x1051
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x1052
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x1053
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF24
	.byte	0x1
	.value	0x1055
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF1603
	.byte	0x1
	.value	0x1056
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF698
	.byte	0x1
	.value	0x1058
	.long	0x123
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF1604
	.byte	0x1
	.value	0x1067
	.long	0x2d
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x55c6
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x1068
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x1069
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0x1069
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x1069
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x106b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF1605
	.byte	0x1
	.value	0x1089
	.long	0x2d
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x5745
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x108a
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x108b
	.long	0x41e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x108c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0x108c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x108d
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x108e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2f
	.long	.LASF1606
	.byte	0x1
	.value	0x108f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF1465
	.byte	0x1
	.value	0x1091
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF1451
	.byte	0x1
	.value	0x1092
	.long	0x1f4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x30
	.long	.LASF1607
	.byte	0x1
	.value	0x1093
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x30
	.long	.LASF1608
	.byte	0x1
	.value	0x1094
	.long	0x260
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x1095
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF1459
	.byte	0x1
	.value	0x1096
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF1435
	.byte	0x1
	.value	0x1097
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF1609
	.byte	0x1
	.value	0x1097
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3e
	.long	.LASF1448
	.long	0x5745
	.uleb128 0x33
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x5723
	.uleb128 0x30
	.long	.LASF1610
	.byte	0x1
	.value	0x10da
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF1611
	.byte	0x1
	.value	0x10db
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF1612
	.byte	0x1
	.value	0x10dc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x34
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x30
	.long	.LASF1613
	.byte	0x1
	.value	0x1118
	.long	0x2ffa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x35da
	.uleb128 0x2e
	.long	.LASF1614
	.byte	0x1
	.value	0x1239
	.long	0x2d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x57f5
	.uleb128 0x2f
	.long	.LASF1480
	.byte	0x1
	.value	0x123a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF0
	.byte	0x1
	.value	0x123b
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x37
	.string	"op0"
	.byte	0x1
	.value	0x123c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x37
	.string	"op1"
	.byte	0x1
	.value	0x123c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x123d
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF1479
	.byte	0x1
	.value	0x123e
	.long	0x1de
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF1606
	.byte	0x1
	.value	0x123f
	.long	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.string	"tem"
	.byte	0x1
	.value	0x1241
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF1589
	.byte	0x1
	.value	0x1241
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF1615
	.byte	0x1
	.value	0x1266
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x5892
	.uleb128 0x2f
	.long	.LASF1616
	.byte	0x1
	.value	0x1267
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF1617
	.byte	0x1
	.value	0x1267
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x37
	.string	"op"
	.byte	0x1
	.value	0x1268
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x1269
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF1589
	.byte	0x1
	.value	0x1267
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF1448
	.long	0x5892
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.13412
	.uleb128 0x34
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.uleb128 0x30
	.long	.LASF1592
	.byte	0x1
	.value	0x1271
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	0x35da
	.uleb128 0x29
	.long	.LASF1618
	.byte	0x1
	.byte	0x3d
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	sdiv_pow2_cheap
	.uleb128 0x29
	.long	.LASF1619
	.byte	0x1
	.byte	0x3d
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	smod_pow2_cheap
	.uleb128 0x29
	.long	.LASF1620
	.byte	0x1
	.byte	0x5e
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	add_cost
	.uleb128 0x29
	.long	.LASF1621
	.byte	0x1
	.byte	0x5e
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	negate_cost
	.uleb128 0x29
	.long	.LASF1622
	.byte	0x1
	.byte	0x5e
	.long	0x1de
	.uleb128 0x9
	.byte	0x3
	.quad	zero_cost
	.uleb128 0xe
	.long	0x1de
	.long	0x5910
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3f
	.byte	0
	.uleb128 0x29
	.long	.LASF1623
	.byte	0x1
	.byte	0x5f
	.long	0x5900
	.uleb128 0x9
	.byte	0x3
	.quad	shift_cost
	.uleb128 0x29
	.long	.LASF1624
	.byte	0x1
	.byte	0x60
	.long	0x5900
	.uleb128 0x9
	.byte	0x3
	.quad	shiftadd_cost
	.uleb128 0x29
	.long	.LASF1625
	.byte	0x1
	.byte	0x61
	.long	0x5900
	.uleb128 0x9
	.byte	0x3
	.quad	shiftsub_cost
	.uleb128 0xe
	.long	0x1de
	.long	0x595f
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x29
	.long	.LASF1626
	.byte	0x1
	.byte	0x62
	.long	0x594f
	.uleb128 0x9
	.byte	0x3
	.quad	mul_cost
	.uleb128 0x29
	.long	.LASF1627
	.byte	0x1
	.byte	0x63
	.long	0x594f
	.uleb128 0x9
	.byte	0x3
	.quad	div_cost
	.uleb128 0x29
	.long	.LASF1628
	.byte	0x1
	.byte	0x64
	.long	0x594f
	.uleb128 0x9
	.byte	0x3
	.quad	mul_widen_cost
	.uleb128 0x29
	.long	.LASF1629
	.byte	0x1
	.byte	0x65
	.long	0x594f
	.uleb128 0x9
	.byte	0x3
	.quad	mul_highpart_cost
	.uleb128 0x3f
	.long	.LASF1630
	.byte	0xc
	.byte	0x62
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1631
	.byte	0xc
	.value	0xc39
	.long	0x1de
	.uleb128 0xe
	.long	0x3d5
	.long	0x59da
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF99
	.byte	0x5
	.byte	0x34
	.long	0x59e5
	.uleb128 0x10
	.long	0x59ca
	.uleb128 0xe
	.long	0x201
	.long	0x59fa
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1632
	.byte	0x5
	.byte	0x50
	.long	0x5a05
	.uleb128 0x10
	.long	0x59ea
	.uleb128 0xe
	.long	0x208
	.long	0x5a1a
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1633
	.byte	0x5
	.byte	0x60
	.long	0x5a25
	.uleb128 0x10
	.long	0x5a0a
	.uleb128 0xe
	.long	0x1fa
	.long	0x5a3a
	.uleb128 0xf
	.long	0x1e5
	.byte	0x3a
	.byte	0
	.uleb128 0x3f
	.long	.LASF1634
	.byte	0x5
	.byte	0x6a
	.long	0x5a45
	.uleb128 0x10
	.long	0x5a2a
	.uleb128 0x3f
	.long	.LASF1635
	.byte	0x5
	.byte	0x7b
	.long	0x5a55
	.uleb128 0x10
	.long	0x59ea
	.uleb128 0xe
	.long	0x260
	.long	0x5a6a
	.uleb128 0xf
	.long	0x1e5
	.byte	0x8
	.byte	0
	.uleb128 0x3f
	.long	.LASF1636
	.byte	0x5
	.byte	0x9d
	.long	0x5a75
	.uleb128 0x10
	.long	0x5a5a
	.uleb128 0x3f
	.long	.LASF1637
	.byte	0x5
	.byte	0xa3
	.long	0x260
	.uleb128 0x3f
	.long	.LASF1638
	.byte	0x5
	.byte	0xa4
	.long	0x260
	.uleb128 0xe
	.long	0x223
	.long	0x5aa0
	.uleb128 0xf
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1639
	.byte	0x2
	.byte	0x3f
	.long	0x5aab
	.uleb128 0x10
	.long	0x5a90
	.uleb128 0x40
	.long	.LASF1640
	.byte	0x2
	.value	0x4be
	.long	0x1de
	.uleb128 0xe
	.long	0x2d
	.long	0x5acc
	.uleb128 0xf
	.long	0x1e5
	.byte	0x80
	.byte	0
	.uleb128 0x40
	.long	.LASF1641
	.byte	0x2
	.value	0x611
	.long	0x5abc
	.uleb128 0x40
	.long	.LASF1642
	.byte	0x2
	.value	0x617
	.long	0x2d
	.uleb128 0x3f
	.long	.LASF1643
	.byte	0xd
	.byte	0xef
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1644
	.byte	0xd
	.value	0x12a
	.long	0x1de
	.uleb128 0x40
	.long	.LASF1645
	.byte	0xd
	.value	0x248
	.long	0x1de
	.uleb128 0xe
	.long	0x2e90
	.long	0x5b17
	.uleb128 0xf
	.long	0x1e5
	.byte	0x30
	.byte	0
	.uleb128 0x3f
	.long	.LASF1646
	.byte	0xa
	.byte	0x9b
	.long	0x5b07
	.uleb128 0xe
	.long	0x1f4c
	.long	0x5b32
	.uleb128 0xf
	.long	0x1e5
	.byte	0x98
	.byte	0
	.uleb128 0x3f
	.long	.LASF1647
	.byte	0xa
	.byte	0xf1
	.long	0x5b22
	.uleb128 0x3f
	.long	.LASF1648
	.byte	0xb
	.byte	0x8d
	.long	0x1de
	.uleb128 0xe
	.long	0x3096
	.long	0x5b53
	.uleb128 0x41
	.byte	0
	.uleb128 0x3f
	.long	.LASF1404
	.byte	0xb
	.byte	0xf9
	.long	0x5b5e
	.uleb128 0x10
	.long	0x5b48
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x5
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB7-.Ltext0
	.quad	.LBE7-.Ltext0
	.quad	.LBB10-.Ltext0
	.quad	.LBE10-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB13-.Ltext0
	.quad	.LBE13-.Ltext0
	.quad	.LBB14-.Ltext0
	.quad	.LBE14-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB22-.Ltext0
	.quad	.LBE22-.Ltext0
	.quad	.LBB26-.Ltext0
	.quad	.LBE26-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB27-.Ltext0
	.quad	.LBE27-.Ltext0
	.quad	.LBB30-.Ltext0
	.quad	.LBE30-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB53-.Ltext0
	.quad	.LBE53-.Ltext0
	.quad	.LBB61-.Ltext0
	.quad	.LBE61-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB56-.Ltext0
	.quad	.LBE56-.Ltext0
	.quad	.LBB62-.Ltext0
	.quad	.LBE62-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF744:
	.string	"TI_UV8HI_TYPE"
.LASF284:
	.string	"REG_BR_PROB"
.LASF749:
	.string	"TI_UV16QI_TYPE"
.LASF314:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF1158:
	.string	"CODE_FOR_mulqihi3"
.LASF257:
	.string	"rtstr"
.LASF764:
	.string	"itk_unsigned_char"
.LASF392:
	.string	"WITH_CLEANUP_EXPR"
.LASF382:
	.string	"VTABLE_REF"
.LASF1023:
	.string	"CODE_FOR_mmx_uavgv4hi3"
.LASF1586:
	.string	"fail1"
.LASF301:
	.string	"NOTE_INSN_DELETED"
.LASF1013:
	.string	"CODE_FOR_mulv4hi3"
.LASF540:
	.string	"BUILT_IN_AGGREGATE_INCOMING_ADDRESS"
.LASF183:
	.string	"UMOD"
.LASF237:
	.string	"min_align"
.LASF469:
	.string	"POSTINCREMENT_EXPR"
.LASF947:
	.string	"CODE_FOR_sse_movups"
.LASF490:
	.string	"BUILT_IN_FABSF"
.LASF405:
	.string	"FLOOR_MOD_EXPR"
.LASF1268:
	.string	"CODE_FOR_bungt"
.LASF992:
	.string	"CODE_FOR_vmsminv4sf3"
.LASF839:
	.string	"CODE_FOR_addqi3_cc"
.LASF1500:
	.string	"xspec_target"
.LASF1561:
	.string	"mask"
.LASF1204:
	.string	"CODE_FOR_absxf2"
.LASF1513:
	.string	"expand_inc"
.LASF1010:
	.string	"CODE_FOR_sssubv4hi3"
.LASF1322:
	.string	"CODE_FOR_maxdf3"
.LASF1106:
	.string	"CODE_FOR_zero_extendhisi2"
.LASF1210:
	.string	"CODE_FOR_ashldi3"
.LASF1364:
	.string	"OTI_ashl"
.LASF756:
	.string	"TI_V2SI_TYPE"
.LASF1142:
	.string	"CODE_FOR_addtf3"
.LASF1068:
	.string	"CODE_FOR_pf2id"
.LASF966:
	.string	"CODE_FOR_mulv4sf3"
.LASF954:
	.string	"CODE_FOR_sse_movhlps"
.LASF1366:
	.string	"OTI_ashr"
.LASF717:
	.string	"TI_UINTSI_TYPE"
.LASF1592:
	.string	"label2"
.LASF224:
	.string	"CONSTANT_P_RTX"
.LASF1594:
	.string	"label4"
.LASF641:
	.string	"tree_type"
.LASF422:
	.string	"RROTATE_EXPR"
.LASF871:
	.string	"CODE_FOR_return_internal"
.LASF1069:
	.string	"CODE_FOR_pf2iw"
.LASF458:
	.string	"ADDR_EXPR"
.LASF1028:
	.string	"CODE_FOR_eqv8qi3"
.LASF1239:
	.string	"CODE_FOR_sgtu"
.LASF1489:
	.string	"extzv_loses"
.LASF1367:
	.string	"OTI_rotl"
.LASF1371:
	.string	"OTI_umin"
.LASF1376:
	.string	"OTI_negv"
.LASF26:
	.string	"block"
.LASF1368:
	.string	"OTI_rotr"
.LASF814:
	.string	"CODE_FOR_extendhisi2"
.LASF774:
	.string	"_Bool"
.LASF256:
	.string	"rtuint"
.LASF1646:
	.string	"optab_table"
.LASF833:
	.string	"CODE_FOR_floathixf2"
.LASF693:
	.string	"pure_flag"
.LASF260:
	.string	"rt_cselib"
.LASF943:
	.string	"CODE_FOR_movv2si_internal"
.LASF127:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF1080:
	.string	"CODE_FOR_pfrsqit1v2sf3"
.LASF447:
	.string	"IN_EXPR"
.LASF187:
	.string	"LSHIFTRT"
.LASF914:
	.string	"CODE_FOR_strsethi_1"
.LASF852:
	.string	"CODE_FOR_negsf2_memory"
.LASF16:
	.string	"common"
.LASF1183:
	.string	"CODE_FOR_andhi3"
.LASF1255:
	.string	"CODE_FOR_bne"
.LASF574:
	.string	"BUILT_IN_EH_RETURN"
.LASF121:
	.string	"MATCH_PAR_DUP"
.LASF1478:
	.string	"extract_bit_field"
.LASF1651:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF886:
	.string	"CODE_FOR_sqrtdf2_1_sse_only"
.LASF182:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF716:
	.string	"TI_UINTHI_TYPE"
.LASF1000:
	.string	"CODE_FOR_addv4hi3"
.LASF430:
	.string	"TRUTH_AND_EXPR"
.LASF513:
	.string	"BUILT_IN_STRCPY"
.LASF879:
	.string	"CODE_FOR_leave"
.LASF584:
	.string	"side_effects_flag"
.LASF1205:
	.string	"CODE_FOR_abstf2"
.LASF1032:
	.string	"CODE_FOR_gtv4hi3"
.LASF115:
	.string	"MATCH_OPERAND"
.LASF1171:
	.string	"CODE_FOR_divxf3"
.LASF736:
	.string	"TI_VOID_TYPE"
.LASF1449:
	.string	"old_generating_concat_p"
.LASF576:
	.string	"BUILT_IN_VARARGS_START"
.LASF976:
	.string	"CODE_FOR_sse_andti3"
.LASF618:
	.string	"imag"
.LASF1252:
	.string	"CODE_FOR_sunlt"
.LASF1275:
	.string	"CODE_FOR_call_pop"
.LASF1558:
	.string	"dummy2"
.LASF1251:
	.string	"CODE_FOR_sunle"
.LASF474:
	.string	"LABEL_EXPR"
.LASF204:
	.string	"UNLE"
.LASF1341:
	.string	"handlers"
.LASF242:
	.string	"max_after_base"
.LASF617:
	.string	"real"
.LASF723:
	.string	"TI_NULL_POINTER"
.LASF205:
	.string	"UNLT"
.LASF962:
	.string	"CODE_FOR_addv4sf3"
.LASF1469:
	.string	"must_and"
.LASF354:
	.string	"FILE_TYPE"
.LASF639:
	.string	"fragment_chain"
.LASF613:
	.string	"tree_string"
.LASF438:
	.string	"EQ_EXPR"
.LASF647:
	.string	"no_force_blk_flag"
.LASF1552:
	.string	"mhigh_lo"
.LASF1097:
	.string	"CODE_FOR_movstricthi"
.LASF638:
	.string	"fragment_origin"
.LASF1315:
	.string	"CODE_FOR_movsfcc"
.LASF752:
	.string	"TI_V4SI_TYPE"
.LASF553:
	.string	"BUILT_IN_FWRITE"
.LASF1148:
	.string	"CODE_FOR_subqi3"
.LASF1132:
	.string	"CODE_FOR_fix_truncsfhi2"
.LASF1263:
	.string	"CODE_FOR_bleu"
.LASF67:
	.string	"CTImode"
.LASF594:
	.string	"static_flag"
.LASF1470:
	.string	"store_fixed_bit_field"
.LASF1339:
	.string	"libfunc"
.LASF432:
	.string	"TRUTH_XOR_EXPR"
.LASF1584:
	.string	"extra_cost"
.LASF684:
	.string	"static_dtor_flag"
.LASF614:
	.string	"length"
.LASF394:
	.string	"PLACEHOLDER_EXPR"
.LASF1468:
	.string	"all_one"
.LASF666:
	.string	"lang_type"
.LASF1524:
	.string	"synth_mult"
.LASF427:
	.string	"BIT_NOT_EXPR"
.LASF1559:
	.string	"ml_lo"
.LASF1529:
	.string	"expand_mult"
.LASF595:
	.string	"public_flag"
.LASF413:
	.string	"FLOAT_EXPR"
.LASF675:
	.string	"inline_flag"
.LASF1642:
	.string	"const_true_rtx"
.LASF726:
	.string	"TI_BITSIZE_ZERO"
.LASF1203:
	.string	"CODE_FOR_absdf2"
.LASF1600:
	.string	"units"
.LASF372:
	.string	"PARM_DECL"
.LASF1075:
	.string	"CODE_FOR_pavgusb"
.LASF65:
	.string	"CSImode"
.LASF532:
	.string	"BUILT_IN_COSL"
.LASF226:
	.string	"VEC_MERGE"
.LASF1240:
	.string	"CODE_FOR_slt"
.LASF917:
	.string	"CODE_FOR_strsetqi_rex_1"
.LASF1459:
	.string	"last"
.LASF463:
	.string	"CONJ_EXPR"
.LASF1159:
	.string	"CODE_FOR_umulditi3"
.LASF159:
	.string	"RETURN"
.LASF503:
	.string	"BUILT_IN_BZERO"
.LASF1064:
	.string	"CODE_FOR_pfmaxv2sf3"
.LASF479:
	.string	"LABELED_BLOCK_EXPR"
.LASF836:
	.string	"CODE_FOR_floatsitf2"
.LASF536:
	.string	"BUILT_IN_ARGS_INFO"
.LASF952:
	.string	"CODE_FOR_sse_movntv4sf"
.LASF14:
	.string	"elem"
.LASF855:
	.string	"CODE_FOR_negdf2_ifs"
.LASF1058:
	.string	"CODE_FOR_addv2sf3"
.LASF102:
	.string	"MODE_FLOAT"
.LASF509:
	.string	"BUILT_IN_MEMCMP"
.LASF1061:
	.string	"CODE_FOR_gtv2sf3"
.LASF551:
	.string	"BUILT_IN_FPUTC"
.LASF543:
	.string	"BUILT_IN_RETURN"
.LASF1571:
	.string	"moptab"
.LASF1018:
	.string	"CODE_FOR_mmx_xordi3"
.LASF591:
	.string	"unused_0"
.LASF607:
	.string	"unused_1"
.LASF1477:
	.string	"word_offset"
.LASF714:
	.string	"TI_INTTI_TYPE"
.LASF552:
	.string	"BUILT_IN_FPUTS"
.LASF480:
	.string	"EXIT_BLOCK_EXPR"
.LASF928:
	.string	"CODE_FOR_strlenqi_rex_1"
.LASF246:
	.string	"alias"
.LASF243:
	.string	"offset_unsigned"
.LASF1182:
	.string	"CODE_FOR_andsi3"
.LASF71:
	.string	"V2SImode"
.LASF558:
	.string	"BUILT_IN_FPUTC_UNLOCKED"
.LASF1175:
	.string	"CODE_FOR_divmoddi4"
.LASF1340:
	.string	"optab"
.LASF351:
	.string	"OFFSET_TYPE"
.LASF1242:
	.string	"CODE_FOR_sge"
.LASF733:
	.string	"TI_FLOAT_TYPE"
.LASF19:
	.string	"vector"
.LASF478:
	.string	"LOOP_EXPR"
.LASF146:
	.string	"CODE_LABEL"
.LASF559:
	.string	"BUILT_IN_FPUTS_UNLOCKED"
.LASF66:
	.string	"CDImode"
.LASF1395:
	.string	"ccp_cmov"
.LASF152:
	.string	"UNSPEC"
.LASF470:
	.string	"VA_ARG_EXPR"
.LASF525:
	.string	"BUILT_IN_SIN"
.LASF987:
	.string	"CODE_FOR_sse_unpckhps"
.LASF145:
	.string	"BARRIER"
.LASF739:
	.string	"TI_PTRDIFF_TYPE"
.LASF307:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF148:
	.string	"COND_EXEC"
.LASF859:
	.string	"CODE_FOR_absdf2_ifs"
.LASF1457:
	.string	"value1"
.LASF162:
	.string	"CONST_INT"
.LASF1238:
	.string	"CODE_FOR_sgt"
.LASF158:
	.string	"CALL"
.LASF1361:
	.string	"OTI_and"
.LASF1312:
	.string	"CODE_FOR_movdicc"
.LASF695:
	.string	"uninlinable"
.LASF387:
	.string	"TARGET_EXPR"
.LASF73:
	.string	"V4QImode"
.LASF1177:
	.string	"CODE_FOR_udivmodhi4"
.LASF137:
	.string	"ATTR"
.LASF572:
	.string	"BUILT_IN_FROB_RETURN_ADDR"
.LASF1516:
	.string	"shifted"
.LASF1446:
	.string	"byte_offset"
.LASF258:
	.string	"rttype"
.LASF1071:
	.string	"CODE_FOR_pfnacc"
.LASF1200:
	.string	"CODE_FOR_negxf2"
.LASF1128:
	.string	"CODE_FOR_fix_truncsfsi2"
.LASF974:
	.string	"CODE_FOR_sqrtv4sf2"
.LASF331:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF642:
	.string	"values"
.LASF609:
	.string	"tree_int_cst"
.LASF1098:
	.string	"CODE_FOR_movqi"
.LASF1636:
	.string	"class_narrowest_mode"
.LASF1622:
	.string	"zero_cost"
.LASF1541:
	.string	"preserve"
.LASF528:
	.string	"BUILT_IN_SINF"
.LASF72:
	.string	"V2DImode"
.LASF1369:
	.string	"OTI_smin"
.LASF531:
	.string	"BUILT_IN_SINL"
.LASF588:
	.string	"readonly_flag"
.LASF957:
	.string	"CODE_FOR_sse_movlps"
.LASF408:
	.string	"EXACT_DIV_EXPR"
.LASF251:
	.string	"mem_attrs"
.LASF1278:
	.string	"CODE_FOR_call_value_pop"
.LASF278:
	.string	"REG_UNUSED"
.LASF130:
	.string	"DEFINE_DELAY"
.LASF180:
	.string	"MINUS"
.LASF1001:
	.string	"CODE_FOR_addv2si3"
.LASF1418:
	.string	"alg_add_factor"
.LASF1033:
	.string	"CODE_FOR_gtv2si3"
.LASF1608:
	.string	"target_mode"
.LASF445:
	.string	"UNGE_EXPR"
.LASF508:
	.string	"BUILT_IN_MEMCPY"
.LASF375:
	.string	"NAMESPACE_DECL"
.LASF170:
	.string	"STRICT_LOW_PART"
.LASF1327:
	.string	"CODE_FOR_conditional_trap"
.LASF1320:
	.string	"CODE_FOR_mindf3"
.LASF1472:
	.string	"bitsdone"
.LASF1034:
	.string	"CODE_FOR_umaxv8qi3"
.LASF112:
	.string	"INCLUDE"
.LASF1179:
	.string	"CODE_FOR_testqi_ccz_1"
.LASF327:
	.string	"GR_FRAME_POINTER"
.LASF583:
	.string	"chain"
.LASF1401:
	.string	"constraint"
.LASF941:
	.string	"CODE_FOR_movv8qi_internal"
.LASF208:
	.string	"ZERO_EXTEND"
.LASF537:
	.string	"BUILT_IN_CONSTANT_P"
.LASF211:
	.string	"FLOAT_TRUNCATE"
.LASF563:
	.string	"BUILT_IN_ISGREATEREQUAL"
.LASF569:
	.string	"BUILT_IN_DWARF_CFA"
.LASF360:
	.string	"FUNCTION_TYPE"
.LASF985:
	.string	"CODE_FOR_sse_comi"
.LASF669:
	.string	"tree_decl"
.LASF931:
	.string	"CODE_FOR_pro_epilogue_adjust_stack_rex64"
.LASF324:
	.string	"GR_PC"
.LASF1119:
	.string	"CODE_FOR_truncxfdf2"
.LASF1092:
	.string	"CODE_FOR_cmptf"
.LASF1102:
	.string	"CODE_FOR_movsf"
.LASF82:
	.string	"V2SFmode"
.LASF1167:
	.string	"CODE_FOR_mulxf3"
.LASF212:
	.string	"FLOAT"
.LASF290:
	.string	"REG_EH_CONTEXT"
.LASF98:
	.string	"machine_mode"
.LASF1220:
	.string	"CODE_FOR_ashrqi3"
.LASF359:
	.string	"QUAL_UNION_TYPE"
.LASF1580:
	.string	"optab1"
.LASF1492:
	.string	"inner_size"
.LASF1447:
	.string	"op_mode"
.LASF263:
	.string	"rtmem"
.LASF221:
	.string	"RANGE_REG"
.LASF261:
	.string	"rtbit"
.LASF475:
	.string	"GOTO_EXPR"
.LASF3:
	.string	"call"
.LASF44:
	.string	"TImode"
.LASF197:
	.string	"PRE_MODIFY"
.LASF1079:
	.string	"CODE_FOR_pfrsqrtv2sf2"
.LASF1328:
	.string	"CODE_FOR_movti"
.LASF819:
	.string	"CODE_FOR_fix_truncdi_nomemory"
.LASF386:
	.string	"INIT_EXPR"
.LASF1246:
	.string	"CODE_FOR_sunordered"
.LASF1067:
	.string	"CODE_FOR_femms"
.LASF1072:
	.string	"CODE_FOR_pfpnacc"
.LASF421:
	.string	"LROTATE_EXPR"
.LASF610:
	.string	"realvaluetype"
.LASF210:
	.string	"FLOAT_EXTEND"
.LASF506:
	.string	"BUILT_IN_INDEX"
.LASF789:
	.string	"extraction_pattern"
.LASF849:
	.string	"CODE_FOR_udivmodsi4"
.LASF380:
	.string	"ARRAY_REF"
.LASF452:
	.string	"NOP_EXPR"
.LASF691:
	.string	"no_limit_stack"
.LASF6:
	.string	"in_struct"
.LASF1507:
	.string	"masklow"
.LASF801:
	.string	"CODE_FOR_movsi_insv_1"
.LASF1014:
	.string	"CODE_FOR_smulv4hi3_highpart"
.LASF302:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF42:
	.string	"SImode"
.LASF1161:
	.string	"CODE_FOR_mulditi3"
.LASF154:
	.string	"ADDR_VEC"
.LASF807:
	.string	"CODE_FOR_zero_extendsidi2_32"
.LASF1147:
	.string	"CODE_FOR_subhi3"
.LASF1465:
	.string	"subtarget"
.LASF1273:
	.string	"CODE_FOR_tablejump"
.LASF1314:
	.string	"CODE_FOR_movhicc"
.LASF918:
	.string	"CODE_FOR_rep_stosdi_rex64"
.LASF83:
	.string	"V2DFmode"
.LASF406:
	.string	"ROUND_MOD_EXPR"
.LASF1359:
	.string	"OTI_umod"
.LASF236:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF1099:
	.string	"CODE_FOR_reload_outqi"
.LASF883:
	.string	"CODE_FOR_sqrtsf2_1_sse_only"
.LASF1578:
	.string	"quotient"
.LASF1385:
	.string	"OTI_ucmp"
.LASF597:
	.string	"protected_flag"
.LASF24:
	.string	"type"
.LASF808:
	.string	"CODE_FOR_zero_extendsidi2_rex64"
.LASF1488:
	.string	"insv_loses"
.LASF1421:
	.string	"alg_sub_t2_m"
.LASF1572:
	.string	"wide_op1"
.LASF885:
	.string	"CODE_FOR_sqrtdf2_1"
.LASF402:
	.string	"ROUND_DIV_EXPR"
.LASF863:
	.string	"CODE_FOR_ashrdi3_1"
.LASF1048:
	.string	"CODE_FOR_mmx_packuswb"
.LASF1434:
	.string	"mode_for_extraction"
.LASF173:
	.string	"SYMBOL_REF"
.LASF300:
	.string	"NOTE_INSN_BIAS"
.LASF942:
	.string	"CODE_FOR_movv4hi_internal"
.LASF1638:
	.string	"word_mode"
.LASF70:
	.string	"V2HImode"
.LASF707:
	.string	"lang_decl"
.LASF417:
	.string	"ABS_EXPR"
.LASF322:
	.string	"NOTE_INSN_MAX"
.LASF1100:
	.string	"CODE_FOR_movstrictqi"
.LASF1253:
	.string	"CODE_FOR_sltgt"
.LASF794:
	.string	"CODE_FOR_cmpdi_ccno_1_rex64"
.LASF1588:
	.string	"abs_d"
.LASF1357:
	.string	"OTI_udivmod"
.LASF818:
	.string	"CODE_FOR_truncdfsf2_sse_only"
.LASF633:
	.string	"block_num"
.LASF925:
	.string	"CODE_FOR_cmpstrqi_1"
.LASF126:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF178:
	.string	"COMPARE"
.LASF206:
	.string	"LTGT"
.LASF627:
	.string	"tree_exp"
.LASF850:
	.string	"CODE_FOR_testsi_1"
.LASF1274:
	.string	"CODE_FOR_doloop_end"
.LASF972:
	.string	"CODE_FOR_rsqrtv4sf2"
.LASF1466:
	.string	"temp"
.LASF1479:
	.string	"unsignedp"
.LASF1180:
	.string	"CODE_FOR_testqi_ext_ccno_0"
.LASF218:
	.string	"HIGH"
.LASF175:
	.string	"QUEUED"
.LASF1404:
	.string	"insn_data"
.LASF1629:
	.string	"mul_highpart_cost"
.LASF1:
	.string	"mode"
.LASF43:
	.string	"DImode"
.LASF429:
	.string	"TRUTH_ORIF_EXPR"
.LASF486:
	.string	"BUILT_IN_ALLOCA"
.LASF1462:
	.string	"tempreg"
.LASF1051:
	.string	"CODE_FOR_mmx_punpckhdq"
.LASF1029:
	.string	"CODE_FOR_eqv4hi3"
.LASF1424:
	.string	"alg_factor"
.LASF790:
	.string	"EP_insv"
.LASF1196:
	.string	"CODE_FOR_neghi2"
.LASF1375:
	.string	"OTI_neg"
.LASF770:
	.string	"itk_unsigned_long"
.LASF78:
	.string	"V8HImode"
.LASF1425:
	.string	"alg_shiftop"
.LASF1356:
	.string	"OTI_udiv"
.LASF1021:
	.string	"CODE_FOR_mmx_nanddi3"
.LASF196:
	.string	"POST_INC"
.LASF391:
	.string	"METHOD_CALL_EXPR"
.LASF1387:
	.string	"OTI_strlen"
.LASF719:
	.string	"TI_UINTTI_TYPE"
.LASF1319:
	.string	"CODE_FOR_minsf3"
.LASF1088:
	.string	"CODE_FOR_cmpdi_1_rex64"
.LASF813:
	.string	"CODE_FOR_extendqidi2"
.LASF870:
	.string	"CODE_FOR_blockage"
.LASF891:
	.string	"CODE_FOR_sinsf2"
.LASF683:
	.string	"static_ctor_flag"
.LASF56:
	.string	"TFmode"
.LASF357:
	.string	"RECORD_TYPE"
.LASF31:
	.string	"unsigned char"
.LASF589:
	.string	"unsigned_flag"
.LASF1084:
	.string	"CODE_FOR_cmpdi"
.LASF1198:
	.string	"CODE_FOR_negsf2"
.LASF1121:
	.string	"CODE_FOR_fix_truncxfdi2"
.LASF1130:
	.string	"CODE_FOR_fix_trunctfhi2"
.LASF697:
	.string	"arguments"
.LASF1104:
	.string	"CODE_FOR_movxf"
.LASF1199:
	.string	"CODE_FOR_negdf2"
.LASF1633:
	.string	"mode_bitsize"
.LASF926:
	.string	"CODE_FOR_cmpstrqi_rex_1"
.LASF738:
	.string	"TI_CONST_PTR_TYPE"
.LASF771:
	.string	"itk_long_long"
.LASF955:
	.string	"CODE_FOR_sse_movlhps"
.LASF1498:
	.string	"bitpos_rtx"
.LASF39:
	.string	"BImode"
.LASF194:
	.string	"PRE_INC"
.LASF277:
	.string	"REG_NO_CONFLICT"
.LASF53:
	.string	"SFmode"
.LASF1576:
	.string	"compute_mode"
.LASF930:
	.string	"CODE_FOR_x86_movsicc_0_m1"
.LASF1221:
	.string	"CODE_FOR_lshrdi3"
.LASF1059:
	.string	"CODE_FOR_subv2sf3"
.LASF1504:
	.string	"extract_fixed_bit_field"
.LASF650:
	.string	"packed_flag"
.LASF423:
	.string	"BIT_IOR_EXPR"
.LASF1146:
	.string	"CODE_FOR_subsi3"
.LASF1546:
	.string	"choose_multiplier"
.LASF487:
	.string	"BUILT_IN_ABS"
.LASF369:
	.string	"CONST_DECL"
.LASF612:
	.string	"tree_real_cst"
.LASF1442:
	.string	"fieldmode"
.LASF938:
	.string	"CODE_FOR_trap"
.LASF374:
	.string	"FIELD_DECL"
.LASF143:
	.string	"JUMP_INSN"
.LASF1283:
	.string	"CODE_FOR_prologue"
.LASF1480:
	.string	"target"
.LASF766:
	.string	"itk_unsigned_short"
.LASF1577:
	.string	"tquotient"
.LASF1245:
	.string	"CODE_FOR_sleu"
.LASF497:
	.string	"BUILT_IN_CREAL"
.LASF1112:
	.string	"CODE_FOR_extendsfxf2"
.LASF1056:
	.string	"CODE_FOR_ldmxcsr"
.LASF1397:
	.string	"insn_operand_predicate_fn"
.LASF106:
	.string	"MODE_COMPLEX_FLOAT"
.LASF1049:
	.string	"CODE_FOR_mmx_punpckhbw"
.LASF262:
	.string	"rttree"
.LASF674:
	.string	"regdecl_flag"
.LASF1568:
	.string	"cnst1"
.LASF493:
	.string	"BUILT_IN_IMAXABS"
.LASF348:
	.string	"BOOLEAN_TYPE"
.LASF1511:
	.string	"first"
.LASF299:
	.string	"insn_note"
.LASF1407:
	.string	"operand"
.LASF1244:
	.string	"CODE_FOR_sle"
.LASF318:
	.string	"NOTE_INSN_RANGE_END"
.LASF1288:
	.string	"CODE_FOR_sqrtsf2"
.LASF916:
	.string	"CODE_FOR_strsetqi_1"
.LASF125:
	.string	"DEFINE_SPLIT"
.LASF939:
	.string	"CODE_FOR_movv4sf_internal"
.LASF1215:
	.string	"CODE_FOR_ashlqi3"
.LASF967:
	.string	"CODE_FOR_vmmulv4sf3"
.LASF562:
	.string	"BUILT_IN_ISGREATER"
.LASF1063:
	.string	"CODE_FOR_eqv2sf3"
.LASF1481:
	.string	"tmode"
.LASF546:
	.string	"BUILT_IN_TRAP"
.LASF1153:
	.string	"CODE_FOR_muldi3"
.LASF164:
	.string	"CONST_VECTOR"
.LASF455:
	.string	"SAVE_EXPR"
.LASF122:
	.string	"MATCH_INSN"
.LASF608:
	.string	"high"
.LASF1485:
	.string	"extv_mode"
.LASF1291:
	.string	"CODE_FOR_movstrdi"
.LASF919:
	.string	"CODE_FOR_rep_stossi"
.LASF755:
	.string	"TI_V4HI_TYPE"
.LASF1540:
	.string	"nmode"
.LASF54:
	.string	"DFmode"
.LASF803:
	.string	"CODE_FOR_popdi1"
.LASF156:
	.string	"PREFETCH"
.LASF1510:
	.string	"extract_split_bit_field"
.LASF48:
	.string	"PSImode"
.LASF1526:
	.string	"cost_limit"
.LASF512:
	.string	"BUILT_IN_STRNCAT"
.LASF1109:
	.string	"CODE_FOR_zero_extendsidi2"
.LASF1333:
	.string	"CODE_FOR_movv8qi"
.LASF220:
	.string	"RANGE_INFO"
.LASF1045:
	.string	"CODE_FOR_mmx_ashldi3"
.LASF1195:
	.string	"CODE_FOR_negsi2"
.LASF777:
	.string	"SSIZETYPE"
.LASF1188:
	.string	"CODE_FOR_iorqi3"
.LASF934:
	.string	"CODE_FOR_sse_movdfcc"
.LASF1024:
	.string	"CODE_FOR_mmx_psadbw"
.LASF792:
	.string	"EP_extzv"
.LASF1412:
	.string	"alg_code"
.LASF253:
	.string	"rtunion_def"
.LASF367:
	.string	"FUNCTION_DECL"
.LASF1282:
	.string	"CODE_FOR_return"
.LASF1351:
	.string	"OTI_smul_widen"
.LASF565:
	.string	"BUILT_IN_ISLESSEQUAL"
.LASF136:
	.string	"DEFINE_ATTR"
.LASF778:
	.string	"USIZETYPE"
.LASF388:
	.string	"COND_EXPR"
.LASF138:
	.string	"SET_ATTR"
.LASF62:
	.string	"TCmode"
.LASF1373:
	.string	"OTI_mov"
.LASF878:
	.string	"CODE_FOR_eh_return_di"
.LASF1265:
	.string	"CODE_FOR_bordered"
.LASF1011:
	.string	"CODE_FOR_ussubv8qi3"
.LASF409:
	.string	"FIX_TRUNC_EXPR"
.LASF1518:
	.string	"rotate"
.LASF213:
	.string	"UNSIGNED_FLOAT"
.LASF289:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF264:
	.string	"cselib_val_struct"
.LASF805:
	.string	"CODE_FOR_swaptf"
.LASF1020:
	.string	"CODE_FOR_mmx_anddi3"
.LASF321:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF1150:
	.string	"CODE_FOR_subtf3"
.LASF929:
	.string	"CODE_FOR_x86_movdicc_0_m1_rex64"
.LASF1086:
	.string	"CODE_FOR_cmphi"
.LASF345:
	.string	"COMPLEX_TYPE"
.LASF185:
	.string	"ROTATE"
.LASF547:
	.string	"BUILT_IN_PREFETCH"
.LASF1301:
	.string	"CODE_FOR_strsetdi_rex64"
.LASF419:
	.string	"LSHIFT_EXPR"
.LASF209:
	.string	"TRUNCATE"
.LASF282:
	.string	"REG_DEP_ANTI"
.LASF59:
	.string	"SCmode"
.LASF963:
	.string	"CODE_FOR_vmaddv4sf3"
.LASF1164:
	.string	"CODE_FOR_umulsi3_highpart"
.LASF1509:
	.string	"lshift_value"
.LASF332:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF761:
	.string	"integer_type_kind"
.LASF49:
	.string	"PDImode"
.LASF1386:
	.string	"OTI_tst"
.LASF303:
	.string	"NOTE_INSN_BLOCK_END"
.LASF362:
	.string	"INTEGER_CST"
.LASF370:
	.string	"TYPE_DECL"
.LASF730:
	.string	"TI_COMPLEX_FLOAT_TYPE"
.LASF1605:
	.string	"emit_store_flag"
.LASF1324:
	.string	"CODE_FOR_allocate_stack_worker"
.LASF1493:
	.string	"target_part"
.LASF312:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF973:
	.string	"CODE_FOR_vmrsqrtv4sf2"
.LASF1515:
	.string	"expand_shift"
.LASF1583:
	.string	"op1_is_pow2"
.LASF1178:
	.string	"CODE_FOR_testsi_ccno_1"
.LASF851:
	.string	"CODE_FOR_andqi_ext_0"
.LASF1365:
	.string	"OTI_lshr"
.LASF661:
	.string	"main_variant"
.LASF1030:
	.string	"CODE_FOR_eqv2si3"
.LASF466:
	.string	"PREDECREMENT_EXPR"
.LASF722:
	.string	"TI_INTEGER_MINUS_ONE"
.LASF1519:
	.string	"methods"
.LASF735:
	.string	"TI_LONG_DOUBLE_TYPE"
.LASF113:
	.string	"EXPR_LIST"
.LASF140:
	.string	"EQ_ATTR"
.LASF1496:
	.string	"xoffset"
.LASF732:
	.string	"TI_COMPLEX_LONG_DOUBLE_TYPE"
.LASF1383:
	.string	"OTI_cos"
.LASF1347:
	.string	"OTI_smul"
.LASF92:
	.string	"CCGOCmode"
.LASF171:
	.string	"CONCAT"
.LASF523:
	.string	"BUILT_IN_STRRCHR"
.LASF751:
	.string	"TI_V16SF_TYPE"
.LASF239:
	.string	"min_after_vec"
.LASF731:
	.string	"TI_COMPLEX_DOUBLE_TYPE"
.LASF893:
	.string	"CODE_FOR_sintf2"
.LASF1211:
	.string	"CODE_FOR_x86_shift_adj_1"
.LASF1214:
	.string	"CODE_FOR_ashlhi3"
.LASF1212:
	.string	"CODE_FOR_x86_shift_adj_2"
.LASF177:
	.string	"COND"
.LASF346:
	.string	"VECTOR_TYPE"
.LASF103:
	.string	"MODE_PARTIAL_INT"
.LASF1237:
	.string	"CODE_FOR_sne"
.LASF1193:
	.string	"CODE_FOR_xorqi_cc_ext_1"
.LASF1219:
	.string	"CODE_FOR_ashrhi3"
.LASF1201:
	.string	"CODE_FOR_negtf2"
.LASF504:
	.string	"BUILT_IN_BCMP"
.LASF15:
	.string	"tree"
.LASF664:
	.string	"alias_set"
.LASF60:
	.string	"DCmode"
.LASF1194:
	.string	"CODE_FOR_negdi2"
.LASF1035:
	.string	"CODE_FOR_smaxv4hi3"
.LASF1455:
	.string	"bit_offset"
.LASF128:
	.string	"DEFINE_COMBINE"
.LASF1649:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF1229:
	.string	"CODE_FOR_rotrdi3"
.LASF426:
	.string	"BIT_ANDTC_EXPR"
.LASF737:
	.string	"TI_PTR_TYPE"
.LASF22:
	.string	"identifier"
.LASF186:
	.string	"ASHIFTRT"
.LASF1313:
	.string	"CODE_FOR_movsicc"
.LASF1008:
	.string	"CODE_FOR_subv2si3"
.LASF911:
	.string	"CODE_FOR_strsetdi_rex_1"
.LASF1464:
	.string	"total_bits"
.LASF1337:
	.string	"CODE_FOR_prefetch"
.LASF909:
	.string	"CODE_FOR_rep_movqi"
.LASF1256:
	.string	"CODE_FOR_bgt"
.LASF90:
	.string	"CCmode"
.LASF575:
	.string	"BUILT_IN_EH_RETURN_DATA_REGNO"
.LASF567:
	.string	"BUILT_IN_ISUNORDERED"
.LASF632:
	.string	"abstract_flag"
.LASF989:
	.string	"CODE_FOR_smaxv4sf3"
.LASF984:
	.string	"CODE_FOR_vmmaskncmpv4sf3"
.LASF1363:
	.string	"OTI_xor"
.LASF305:
	.string	"NOTE_INSN_LOOP_END"
.LASF88:
	.string	"V16SFmode"
.LASF847:
	.string	"CODE_FOR_divmodhi4"
.LASF905:
	.string	"CODE_FOR_strmovqi_rex_1"
.LASF1111:
	.string	"CODE_FOR_extendsfdf2"
.LASF699:
	.string	"initial"
.LASF428:
	.string	"TRUTH_ANDIF_EXPR"
.LASF844:
	.string	"CODE_FOR_subsi3_carry_zext"
.LASF319:
	.string	"NOTE_INSN_LIVE"
.LASF889:
	.string	"CODE_FOR_sqrttf2"
.LASF133:
	.string	"DEFINE_COND_EXEC"
.LASF1532:
	.string	"val_so_far"
.LASF1512:
	.string	"init_expmed"
.LASF776:
	.string	"SIZETYPE"
.LASF784:
	.string	"OPTAB_DIRECT"
.LASF830:
	.string	"CODE_FOR_x86_fldcw_1"
.LASF1573:
	.string	"regop1"
.LASF1567:
	.string	"expand_mult_highpart"
.LASF791:
	.string	"EP_extv"
.LASF1129:
	.string	"CODE_FOR_fix_truncxfhi2"
.LASF433:
	.string	"TRUTH_NOT_EXPR"
.LASF129:
	.string	"DEFINE_EXPAND"
.LASF414:
	.string	"NEGATE_EXPR"
.LASF1554:
	.string	"lgup"
.LASF1456:
	.string	"xbitpos"
.LASF1027:
	.string	"CODE_FOR_mmx_pshufw"
.LASF79:
	.string	"V8SImode"
.LASF1514:
	.string	"expand_dec"
.LASF142:
	.string	"INSN"
.LASF255:
	.string	"rtint"
.LASF1486:
	.string	"extzv_mode"
.LASF577:
	.string	"BUILT_IN_STDARG_START"
.LASF810:
	.string	"CODE_FOR_zero_extendqidi2"
.LASF689:
	.string	"comdat_flag"
.LASF713:
	.string	"TI_INTDI_TYPE"
.LASF172:
	.string	"LABEL_REF"
.LASF718:
	.string	"TI_UINTDI_TYPE"
.LASF281:
	.string	"REG_LABEL"
.LASF907:
	.string	"CODE_FOR_rep_movsi"
.LASF728:
	.string	"TI_BITSIZE_UNIT"
.LASF279:
	.string	"REG_CC_SETTER"
.LASF1574:
	.string	"expand_divmod"
.LASF1303:
	.string	"CODE_FOR_strsetsi_rex64"
.LASF1259:
	.string	"CODE_FOR_bltu"
.LASF958:
	.string	"CODE_FOR_sse_loadss"
.LASF269:
	.string	"REG_DEAD"
.LASF309:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF449:
	.string	"CARD_EXPR"
.LASF1632:
	.string	"mode_size"
.LASF272:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF17:
	.string	"int_cst"
.LASF1483:
	.string	"spec_target_subreg"
.LASF988:
	.string	"CODE_FOR_sse_unpcklps"
.LASF734:
	.string	"TI_DOUBLE_TYPE"
.LASF873:
	.string	"CODE_FOR_return_indirect_internal"
.LASF1453:
	.string	"nwords"
.LASF1403:
	.string	"eliminable"
.LASF1416:
	.string	"alg_add_t_m2"
.LASF1082:
	.string	"CODE_FOR_pswapdv2si2"
.LASF545:
	.string	"BUILT_IN_LONGJMP"
.LASF619:
	.string	"tree_vector"
.LASF927:
	.string	"CODE_FOR_strlenqi_1"
.LASF353:
	.string	"METHOD_TYPE"
.LASF1141:
	.string	"CODE_FOR_addxf3"
.LASF91:
	.string	"CCGCmode"
.LASF896:
	.string	"CODE_FOR_cosxf2"
.LASF1626:
	.string	"mul_cost"
.LASF1081:
	.string	"CODE_FOR_pmulhrwv4hi3"
.LASF25:
	.string	"list"
.LASF922:
	.string	"CODE_FOR_rep_stosqi_rex64"
.LASF1525:
	.string	"alg_out"
.LASF451:
	.string	"CONVERT_EXPR"
.LASF168:
	.string	"SCRATCH"
.LASF77:
	.string	"V8QImode"
.LASF1191:
	.string	"CODE_FOR_xorhi3"
.LASF403:
	.string	"TRUNC_MOD_EXPR"
.LASF80:
	.string	"V8DImode"
.LASF109:
	.string	"MAX_MODE_CLASS"
.LASF1307:
	.string	"CODE_FOR_strsetqi_rex64"
.LASF906:
	.string	"CODE_FOR_rep_movdi_rex64"
.LASF860:
	.string	"CODE_FOR_ashldi3_1"
.LASF872:
	.string	"CODE_FOR_return_pop_internal"
.LASF772:
	.string	"itk_unsigned_long_long"
.LASF845:
	.string	"CODE_FOR_divqi3"
.LASF1287:
	.string	"CODE_FOR_ffssi2"
.LASF399:
	.string	"TRUNC_DIV_EXPR"
.LASF207:
	.string	"SIGN_EXTEND"
.LASF1073:
	.string	"CODE_FOR_pi2fw"
.LASF456:
	.string	"UNSAVE_EXPR"
.LASF1257:
	.string	"CODE_FOR_bgtu"
.LASF398:
	.string	"MULT_EXPR"
.LASF625:
	.string	"value"
.LASF1641:
	.string	"const_int_rtx"
.LASF229:
	.string	"VEC_DUPLICATE"
.LASF798:
	.string	"CODE_FOR_x86_fnstsw_1"
.LASF437:
	.string	"GE_EXPR"
.LASF1272:
	.string	"CODE_FOR_indirect_jump"
.LASF337:
	.string	"ERROR_MARK"
.LASF1127:
	.string	"CODE_FOR_fix_truncdfsi2"
.LASF1644:
	.string	"flag_expensive_optimizations"
.LASF519:
	.string	"BUILT_IN_STRPBRK"
.LASF1410:
	.string	"n_alternatives"
.LASF1610:
	.string	"op0h"
.LASF459:
	.string	"REFERENCE_EXPR"
.LASF1124:
	.string	"CODE_FOR_fix_truncsfdi2"
.LASF247:
	.string	"expr"
.LASF404:
	.string	"CEIL_MOD_EXPR"
.LASF1543:
	.string	"add_target"
.LASF1262:
	.string	"CODE_FOR_ble"
.LASF315:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF1335:
	.string	"CODE_FOR_sfence"
.LASF640:
	.string	"address"
.LASF1441:
	.string	"bitnum"
.LASF1535:
	.string	"basic_variant"
.LASF1060:
	.string	"CODE_FOR_subrv2sf3"
.LASF599:
	.string	"deprecated_flag"
.LASF548:
	.string	"BUILT_IN_PUTCHAR"
.LASF979:
	.string	"CODE_FOR_sse_xorti3"
.LASF1126:
	.string	"CODE_FOR_fix_trunctfsi2"
.LASF1585:
	.string	"last_div_const"
.LASF86:
	.string	"V8SFmode"
.LASF1163:
	.string	"CODE_FOR_umuldi3_highpart"
.LASF400:
	.string	"CEIL_DIV_EXPR"
.LASF1440:
	.string	"bitsize"
.LASF1533:
	.string	"insn"
.LASF538:
	.string	"BUILT_IN_FRAME_ADDRESS"
.LASF915:
	.string	"CODE_FOR_strsethi_rex_1"
.LASF1189:
	.string	"CODE_FOR_xordi3"
.LASF280:
	.string	"REG_CC_USER"
.LASF1620:
	.string	"add_cost"
.LASF151:
	.string	"ASM_OPERANDS"
.LASF702:
	.string	"live_range_rtl"
.LASF658:
	.string	"minval"
.LASF596:
	.string	"private_flag"
.LASF94:
	.string	"CCZmode"
.LASF1631:
	.string	"ix86_branch_cost"
.LASF306:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF781:
	.string	"UBITSIZETYPE"
.LASF401:
	.string	"FLOOR_DIV_EXPR"
.LASF339:
	.string	"TREE_LIST"
.LASF1087:
	.string	"CODE_FOR_cmpqi"
.LASF1521:
	.string	"new_amount"
.LASF995:
	.string	"CODE_FOR_cvttps2pi"
.LASF1225:
	.string	"CODE_FOR_rotldi3"
.LASF1074:
	.string	"CODE_FOR_floatv2si2"
.LASF787:
	.string	"OPTAB_LIB_WIDEN"
.LASF710:
	.string	"TI_INTQI_TYPE"
.LASF637:
	.string	"abstract_origin"
.LASF366:
	.string	"STRING_CST"
.LASF434:
	.string	"LT_EXPR"
.LASF1426:
	.string	"algorithm"
.LASF295:
	.string	"REG_NON_LOCAL_GOTO"
.LASF1555:
	.string	"post_shift"
.LASF1305:
	.string	"CODE_FOR_strsethi_rex64"
.LASF155:
	.string	"ADDR_DIFF_VEC"
.LASF1070:
	.string	"CODE_FOR_pfacc"
.LASF1157:
	.string	"CODE_FOR_umulqihi3"
.LASF424:
	.string	"BIT_XOR_EXPR"
.LASF797:
	.string	"CODE_FOR_cmpqi_ext_3_insn_rex64"
.LASF482:
	.string	"SWITCH_EXPR"
.LASF877:
	.string	"CODE_FOR_eh_return_si"
.LASF431:
	.string	"TRUTH_OR_EXPR"
.LASF1213:
	.string	"CODE_FOR_ashlsi3"
.LASF217:
	.string	"ZERO_EXTRACT"
.LASF846:
	.string	"CODE_FOR_udivqi3"
.LASF978:
	.string	"CODE_FOR_sse_iorti3"
.LASF150:
	.string	"ASM_INPUT"
.LASF473:
	.string	"GOTO_SUBROUTINE_EXPR"
.LASF621:
	.string	"ht_identifier"
.LASF200:
	.string	"ORDERED"
.LASF87:
	.string	"V8DFmode"
.LASF1380:
	.string	"OTI_ffs"
.LASF1218:
	.string	"CODE_FOR_ashrsi3"
.LASF1317:
	.string	"CODE_FOR_movxfcc"
.LASF700:
	.string	"assembler_name"
.LASF1499:
	.string	"xtarget"
.LASF1185:
	.string	"CODE_FOR_iordi3"
.LASF835:
	.string	"CODE_FOR_floatsixf2"
.LASF1548:
	.string	"post_shift_ptr"
.LASF415:
	.string	"MIN_EXPR"
.LASF743:
	.string	"TI_UV4SI_TYPE"
.LASF823:
	.string	"CODE_FOR_fix_truncsi_nomemory"
.LASF648:
	.string	"needs_constructing_flag"
.LASF214:
	.string	"UNSIGNED_FIX"
.LASF1625:
	.string	"shiftsub_cost"
.LASF410:
	.string	"FIX_CEIL_EXPR"
.LASF1331:
	.string	"CODE_FOR_movv2si"
.LASF516:
	.string	"BUILT_IN_STRNCMP"
.LASF1019:
	.string	"CODE_FOR_mmx_clrdi"
.LASF1618:
	.string	"sdiv_pow2_cheap"
.LASF1094:
	.string	"CODE_FOR_cmpsf"
.LASF1085:
	.string	"CODE_FOR_cmpsi"
.LASF1016:
	.string	"CODE_FOR_mmx_pmaddwd"
.LASF616:
	.string	"tree_complex"
.LASF1494:
	.string	"result_part"
.LASF1612:
	.string	"op0both"
.LASF953:
	.string	"CODE_FOR_sse_movntdi"
.LASF983:
	.string	"CODE_FOR_vmmaskcmpv4sf3"
.LASF1118:
	.string	"CODE_FOR_trunctfsf2"
.LASF95:
	.string	"CCFPmode"
.LASF435:
	.string	"LE_EXPR"
.LASF698:
	.string	"result"
.LASF969:
	.string	"CODE_FOR_vmdivv4sf3"
.LASF1537:
	.string	"add_variant"
.LASF657:
	.string	"name"
.LASF114:
	.string	"INSN_LIST"
.LASF1176:
	.string	"CODE_FOR_divmodsi4"
.LASF222:
	.string	"RANGE_VAR"
.LASF1012:
	.string	"CODE_FOR_ussubv4hi3"
.LASF1165:
	.string	"CODE_FOR_smuldi3_highpart"
.LASF101:
	.string	"MODE_INT"
.LASF1026:
	.string	"CODE_FOR_mmx_pextrw"
.LASF1344:
	.string	"OTI_addv"
.LASF18:
	.string	"real_cst"
.LASF416:
	.string	"MAX_EXPR"
.LASF1286:
	.string	"CODE_FOR_eh_return"
.LASF2:
	.string	"jump"
.LASF630:
	.string	"tree_block"
.LASF1444:
	.string	"unit"
.LASF724:
	.string	"TI_SIZE_ZERO"
.LASF949:
	.string	"CODE_FOR_mmx_pmovmskb"
.LASF635:
	.string	"subblocks"
.LASF1241:
	.string	"CODE_FOR_sltu"
.LASF876:
	.string	"CODE_FOR_prologue_get_pc"
.LASF1419:
	.string	"alg_sub_factor"
.LASF765:
	.string	"itk_short"
.LASF1224:
	.string	"CODE_FOR_lshrqi3"
.LASF510:
	.string	"BUILT_IN_MEMSET"
.LASF223:
	.string	"RANGE_LIVE"
.LASF1388:
	.string	"OTI_cbranch"
.LASF407:
	.string	"RDIV_EXPR"
.LASF9:
	.string	"frame_related"
.LASF677:
	.string	"virtual_flag"
.LASF1560:
	.string	"mh_lo"
.LASF652:
	.string	"pointer_depth"
.LASF812:
	.string	"CODE_FOR_extendhidi2"
.LASF615:
	.string	"pointer"
.LASF1389:
	.string	"OTI_cmov"
.LASF368:
	.string	"LABEL_DECL"
.LASF1137:
	.string	"CODE_FOR_adddi3"
.LASF842:
	.string	"CODE_FOR_subdi3_carry_rex64"
.LASF581:
	.string	"END_BUILTINS"
.LASF259:
	.string	"rt_addr_diff_vec_flags"
.LASF1206:
	.string	"CODE_FOR_one_cmpldi2"
.LASF779:
	.string	"BITSIZETYPE"
.LASF329:
	.string	"GR_ARG_POINTER"
.LASF1134:
	.string	"CODE_FOR_floatdisf2"
.LASF420:
	.string	"RSHIFT_EXPR"
.LASF27:
	.string	"sizetype"
.LASF894:
	.string	"CODE_FOR_cosdf2"
.LASF232:
	.string	"SS_MINUS"
.LASF1290:
	.string	"CODE_FOR_movstrsi"
.LASF932:
	.string	"CODE_FOR_sse_movsfcc"
.LASF1292:
	.string	"CODE_FOR_strmovdi_rex64"
.LASF1611:
	.string	"op0l"
.LASF364:
	.string	"COMPLEX_CST"
.LASF119:
	.string	"MATCH_PARALLEL"
.LASF75:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF898:
	.string	"CODE_FOR_cld"
.LASF582:
	.string	"tree_common"
.LASF271:
	.string	"REG_EQUIV"
.LASF662:
	.string	"binfo"
.LASF727:
	.string	"TI_BITSIZE_ONE"
.LASF32:
	.string	"short unsigned int"
.LASF1156:
	.string	"CODE_FOR_mulqi3"
.LASF33:
	.string	"signed char"
.LASF721:
	.string	"TI_INTEGER_ONE"
.LASF118:
	.string	"MATCH_OPERATOR"
.LASF1172:
	.string	"CODE_FOR_divtf3"
.LASF624:
	.string	"purpose"
.LASF1135:
	.string	"CODE_FOR_floatsidf2"
.LASF1635:
	.string	"mode_wider_mode"
.LASF1534:
	.string	"mult_cost"
.LASF711:
	.string	"TI_INTHI_TYPE"
.LASF654:
	.string	"pointer_to"
.LASF1202:
	.string	"CODE_FOR_abssf2"
.LASF1318:
	.string	"CODE_FOR_movtfcc"
.LASF1495:
	.string	"total_words"
.LASF686:
	.string	"weak_flag"
.LASF703:
	.string	"saved_tree"
.LASF626:
	.string	"tree_vec"
.LASF1542:
	.string	"shift_subtarget"
.LASF831:
	.string	"CODE_FOR_floathisf2"
.LASF670:
	.string	"filename"
.LASF1399:
	.string	"insn_operand_data"
.LASF1458:
	.string	"xop0"
.LASF1169:
	.string	"CODE_FOR_muldf3"
.LASF234:
	.string	"SS_TRUNCATE"
.LASF468:
	.string	"POSTDECREMENT_EXPR"
.LASF285:
	.string	"REG_EXEC_COUNT"
.LASF902:
	.string	"CODE_FOR_strmovhi_1"
.LASF556:
	.string	"BUILT_IN_PUTS_UNLOCKED"
.LASF968:
	.string	"CODE_FOR_divv4sf3"
.LASF933:
	.string	"CODE_FOR_sse_movsfcc_eq"
.LASF560:
	.string	"BUILT_IN_FWRITE_UNLOCKED"
.LASF786:
	.string	"OPTAB_WIDEN"
.LASF238:
	.string	"base_after_vec"
.LASF123:
	.string	"DEFINE_INSN"
.LASF760:
	.string	"TI_MAX"
.LASF1310:
	.string	"CODE_FOR_strlensi"
.LASF76:
	.string	"V4DImode"
.LASF1475:
	.string	"part"
.LASF817:
	.string	"CODE_FOR_truncdfsf2_3"
.LASF593:
	.string	"nothrow_flag"
.LASF937:
	.string	"CODE_FOR_allocate_stack_worker_rex64"
.LASF1216:
	.string	"CODE_FOR_ashrdi3"
.LASF1174:
	.string	"CODE_FOR_divsf3"
.LASF1062:
	.string	"CODE_FOR_gev2sf3"
.LASF472:
	.string	"TRY_FINALLY_EXPR"
.LASF1502:
	.string	"wider"
.LASF20:
	.string	"string"
.LASF809:
	.string	"CODE_FOR_zero_extendhidi2"
.LASF913:
	.string	"CODE_FOR_strsetsi_rex_1"
.LASF330:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF436:
	.string	"GT_EXPR"
.LASF1091:
	.string	"CODE_FOR_cmpxf"
.LASF283:
	.string	"REG_DEP_OUTPUT"
.LASF1460:
	.string	"maxmode"
.LASF826:
	.string	"CODE_FOR_fix_truncdfsi_sse"
.LASF656:
	.string	"symtab"
.LASF132:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF1564:
	.string	"expand_mult_highpart_adjust"
.LASF233:
	.string	"US_MINUS"
.LASF1038:
	.string	"CODE_FOR_ashrv4hi3"
.LASF895:
	.string	"CODE_FOR_cossf2"
.LASF1352:
	.string	"OTI_umul_widen"
.LASF1002:
	.string	"CODE_FOR_ssaddv8qi3"
.LASF745:
	.string	"TI_UV8QI_TYPE"
.LASF1428:
	.string	"shift_insn"
.LASF376:
	.string	"COMPONENT_REF"
.LASF216:
	.string	"SIGN_EXTRACT"
.LASF678:
	.string	"ignored_flag"
.LASF8:
	.string	"integrated"
.LASF1603:
	.string	"add_type"
.LASF910:
	.string	"CODE_FOR_rep_movqi_rex64"
.LASF1261:
	.string	"CODE_FOR_bgeu"
.LASF397:
	.string	"MINUS_EXPR"
.LASF982:
	.string	"CODE_FOR_maskncmpv4sf3"
.LASF1634:
	.string	"mode_mask_array"
.LASF1433:
	.string	"negate_rtx"
.LASF157:
	.string	"CLOBBER"
.LASF1046:
	.string	"CODE_FOR_mmx_packsswb"
.LASF660:
	.string	"next_variant"
.LASF107:
	.string	"MODE_VECTOR_INT"
.LASF692:
	.string	"built_in_class"
.LASF1557:
	.string	"dummy1"
.LASF287:
	.string	"REG_SAVE_AREA"
.LASF1162:
	.string	"CODE_FOR_mulsidi3"
.LASF225:
	.string	"CALL_PLACEHOLDER"
.LASF668:
	.string	"function"
.LASF520:
	.string	"BUILT_IN_STRSPN"
.LASF84:
	.string	"V4SFmode"
.LASF1047:
	.string	"CODE_FOR_mmx_packssdw"
.LASF384:
	.string	"COMPOUND_EXPR"
.LASF1015:
	.string	"CODE_FOR_umulv4hi3_highpart"
.LASF715:
	.string	"TI_UINTQI_TYPE"
.LASF1144:
	.string	"CODE_FOR_addsf3"
.LASF1439:
	.string	"str_rtx"
.LASF1304:
	.string	"CODE_FOR_strsethi"
.LASF539:
	.string	"BUILT_IN_RETURN_ADDRESS"
.LASF643:
	.string	"size_unit"
.LASF555:
	.string	"BUILT_IN_PUTCHAR_UNLOCKED"
.LASF179:
	.string	"PLUS"
.LASF507:
	.string	"BUILT_IN_RINDEX"
.LASF822:
	.string	"CODE_FOR_fix_truncdfdi_sse"
.LASF1614:
	.string	"emit_store_flag_force"
.LASF1300:
	.string	"CODE_FOR_clrstrdi"
.LASF195:
	.string	"POST_DEC"
.LASF1040:
	.string	"CODE_FOR_lshrv4hi3"
.LASF41:
	.string	"HImode"
.LASF1114:
	.string	"CODE_FOR_extenddfxf2"
.LASF267:
	.string	"rtunion"
.LASF308:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF1042:
	.string	"CODE_FOR_mmx_lshrdi3"
.LASF105:
	.string	"MODE_COMPLEX_INT"
.LASF1050:
	.string	"CODE_FOR_mmx_punpckhwd"
.LASF484:
	.string	"LAST_AND_UNUSED_TREE_CODE"
.LASF1232:
	.string	"CODE_FOR_rotrqi3"
.LASF1423:
	.string	"alg_subtract"
.LASF29:
	.string	"long int"
.LASF334:
	.string	"GR_VIRTUAL_CFA"
.LASF350:
	.string	"POINTER_TYPE"
.LASF1570:
	.string	"mul_highpart_optab"
.LASF418:
	.string	"FFS_EXPR"
.LASF273:
	.string	"REG_WAS_0"
.LASF342:
	.string	"VOID_TYPE"
.LASF1117:
	.string	"CODE_FOR_truncxfsf2"
.LASF951:
	.string	"CODE_FOR_mmx_maskmovq_rex"
.LASF454:
	.string	"VIEW_CONVERT_EXPR"
.LASF709:
	.string	"TI_ERROR_MARK"
.LASF294:
	.string	"REG_NORETURN"
.LASF55:
	.string	"XFmode"
.LASF293:
	.string	"REG_MAYBE_DEAD"
.LASF1336:
	.string	"CODE_FOR_sse_prologue_save"
.LASF1505:
	.string	"mask_rtx"
.LASF85:
	.string	"V4DFmode"
.LASF815:
	.string	"CODE_FOR_extendqihi2"
.LASF1077:
	.string	"CODE_FOR_pfrcpit1v2sf3"
.LASF980:
	.string	"CODE_FOR_sse_clrv4sf"
.LASF4:
	.string	"unchanging"
.LASF681:
	.string	"defer_output"
.LASF757:
	.string	"TI_V2SF_TYPE"
.LASF1391:
	.string	"OTI_push"
.LASF880:
	.string	"CODE_FOR_leave_rex64"
.LASF908:
	.string	"CODE_FOR_rep_movsi_rex64"
.LASF1065:
	.string	"CODE_FOR_pfminv2sf3"
.LASF268:
	.string	"reg_note"
.LASF840:
	.string	"CODE_FOR_addsi_1_zext"
.LASF1589:
	.string	"label"
.LASF1640:
	.string	"generating_concat_p"
.LASF950:
	.string	"CODE_FOR_mmx_maskmovq"
.LASF1095:
	.string	"CODE_FOR_movsi"
.LASF998:
	.string	"CODE_FOR_cvttss2si"
.LASF663:
	.string	"context"
.LASF110:
	.string	"rtx_code"
.LASF923:
	.string	"CODE_FOR_cmpstrqi_nz_1"
.LASF1435:
	.string	"pattern"
.LASF395:
	.string	"WITH_RECORD_EXPR"
.LASF1402:
	.string	"strict_low"
.LASF708:
	.string	"tree_index"
.LASF1473:
	.string	"word"
.LASF1093:
	.string	"CODE_FOR_cmpdf"
.LASF1277:
	.string	"CODE_FOR_call_exp"
.LASF1267:
	.string	"CODE_FOR_bunge"
.LASF1223:
	.string	"CODE_FOR_lshrhi3"
.LASF1400:
	.string	"predicate"
.LASF1597:
	.string	"abs_rem"
.LASF631:
	.string	"handler_block_flag"
.LASF1579:
	.string	"remainder"
.LASF694:
	.string	"non_addressable"
.LASF491:
	.string	"BUILT_IN_FABSL"
.LASF834:
	.string	"CODE_FOR_floathitf2"
.LASF865:
	.string	"CODE_FOR_ashrsi3_31"
.LASF1235:
	.string	"CODE_FOR_insv"
.LASF1325:
	.string	"CODE_FOR_allocate_stack"
.LASF1590:
	.string	"nsign"
.LASF1393:
	.string	"can_compare_purpose"
.LASF874:
	.string	"CODE_FOR_nop"
.LASF1427:
	.string	"cost"
.LASF1443:
	.string	"total_size"
.LASF970:
	.string	"CODE_FOR_rcpv4sf2"
.LASF571:
	.string	"BUILT_IN_INIT_DWARF_REG_SIZES"
.LASF1530:
	.string	"const_op1"
.LASF1308:
	.string	"CODE_FOR_cmpstrsi"
.LASF1413:
	.string	"alg_zero"
.LASF1181:
	.string	"CODE_FOR_anddi3"
.LASF111:
	.string	"UNKNOWN"
.LASF153:
	.string	"UNSPEC_VOLATILE"
.LASF1052:
	.string	"CODE_FOR_mmx_punpcklbw"
.LASF381:
	.string	"ARRAY_RANGE_REF"
.LASF782:
	.string	"TYPE_KIND_LAST"
.LASF1549:
	.string	"lgup_ptr"
.LASF518:
	.string	"BUILT_IN_STRSTR"
.LASF680:
	.string	"common_flag"
.LASF1501:
	.string	"xspec_target_subreg"
.LASF311:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF30:
	.string	"long unsigned int"
.LASF688:
	.string	"no_instrument_function_entry_exit"
.LASF590:
	.string	"asm_written_flag"
.LASF11:
	.string	"rtx_def"
.LASF336:
	.string	"tree_code"
.LASF1105:
	.string	"CODE_FOR_movtf"
.LASF1637:
	.string	"byte_mode"
.LASF1390:
	.string	"OTI_cstore"
.LASF881:
	.string	"CODE_FOR_ffssi_1"
.LASF51:
	.string	"HFmode"
.LASF554:
	.string	"BUILT_IN_FPRINTF"
.LASF1438:
	.string	"store_bit_field"
.LASF585:
	.string	"constant_flag"
.LASF526:
	.string	"BUILT_IN_COS"
.LASF160:
	.string	"TRAP_IF"
.LASF924:
	.string	"CODE_FOR_cmpstrqi_nz_rex_1"
.LASF611:
	.string	"real_extract"
.LASF598:
	.string	"bounded_flag"
.LASF373:
	.string	"RESULT_DECL"
.LASF471:
	.string	"TRY_CATCH_EXPR"
.LASF291:
	.string	"REG_EH_REGION"
.LASF750:
	.string	"TI_V4SF_TYPE"
.LASF623:
	.string	"tree_list"
.LASF897:
	.string	"CODE_FOR_costf2"
.LASF1408:
	.string	"n_operands"
.LASF1381:
	.string	"OTI_sqrt"
.LASF274:
	.string	"REG_RETVAL"
.LASF1039:
	.string	"CODE_FOR_ashrv2si3"
.LASF63:
	.string	"CQImode"
.LASF837:
	.string	"CODE_FOR_floatdixf2"
.LASF1017:
	.string	"CODE_FOR_mmx_iordi3"
.LASF35:
	.string	"char"
.LASF912:
	.string	"CODE_FOR_strsetsi_1"
.LASF61:
	.string	"XCmode"
.LASF566:
	.string	"BUILT_IN_ISLESSGREATER"
.LASF965:
	.string	"CODE_FOR_vmsubv4sf3"
.LASF1170:
	.string	"CODE_FOR_mulsf3"
.LASF1619:
	.string	"smod_pow2_cheap"
.LASF485:
	.string	"built_in_function"
.LASF1384:
	.string	"OTI_cmp"
.LASF453:
	.string	"NON_LVALUE_EXPR"
.LASF1595:
	.string	"label5"
.LASF1054:
	.string	"CODE_FOR_mmx_punpckldq"
.LASF1454:
	.string	"wordnum"
.LASF690:
	.string	"malloc_flag"
.LASF1143:
	.string	"CODE_FOR_adddf3"
.LASF816:
	.string	"CODE_FOR_extendqisi2"
.LASF1036:
	.string	"CODE_FOR_uminv8qi3"
.LASF188:
	.string	"ROTATERT"
.LASF1409:
	.string	"n_dups"
.LASF1591:
	.string	"label1"
.LASF645:
	.string	"precision"
.LASF1593:
	.string	"label3"
.LASF1149:
	.string	"CODE_FOR_subxf3"
.LASF862:
	.string	"CODE_FOR_ashrdi3_63_rex64"
.LASF174:
	.string	"ADDRESSOF"
.LASF758:
	.string	"TI_V16QI_TYPE"
.LASF296:
	.string	"REG_SETJMP"
.LASF1125:
	.string	"CODE_FOR_fix_truncxfsi2"
.LASF1298:
	.string	"CODE_FOR_strmovqi_rex64"
.LASF69:
	.string	"V2QImode"
.LASF476:
	.string	"RETURN_EXPR"
.LASF500:
	.string	"BUILT_IN_CIMAG"
.LASF541:
	.string	"BUILT_IN_APPLY_ARGS"
.LASF47:
	.string	"PHImode"
.LASF628:
	.string	"complexity"
.LASF649:
	.string	"transparent_union_flag"
.LASF1599:
	.string	"make_tree"
.LASF1296:
	.string	"CODE_FOR_strmovhi_rex64"
.LASF775:
	.string	"size_type_kind"
.LASF788:
	.string	"OPTAB_MUST_WIDEN"
.LASF1452:
	.string	"backwards"
.LASF68:
	.string	"COImode"
.LASF1041:
	.string	"CODE_FOR_lshrv2si3"
.LASF193:
	.string	"PRE_DEC"
.LASF1192:
	.string	"CODE_FOR_xorqi3"
.LASF858:
	.string	"CODE_FOR_absdf2_memory"
.LASF793:
	.string	"insn_code"
.LASF1430:
	.string	"shiftsub_insn"
.LASF1222:
	.string	"CODE_FOR_lshrsi3"
.LASF310:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF328:
	.string	"GR_HARD_FRAME_POINTER"
.LASF1160:
	.string	"CODE_FOR_umulsidi3"
.LASF250:
	.string	"align"
.LASF921:
	.string	"CODE_FOR_rep_stosqi"
.LASF568:
	.string	"BUILT_IN_UNWIND_INIT"
.LASF762:
	.string	"itk_char"
.LASF1131:
	.string	"CODE_FOR_fix_truncdfhi2"
.LASF1057:
	.string	"CODE_FOR_stmxcsr"
.LASF1394:
	.string	"ccp_jump"
.LASF829:
	.string	"CODE_FOR_x86_fnstcw_1"
.LASF997:
	.string	"CODE_FOR_cvtss2si"
.LASF1306:
	.string	"CODE_FOR_strsetqi"
.LASF729:
	.string	"TI_COMPLEX_INTEGER_TYPE"
.LASF1228:
	.string	"CODE_FOR_rotlqi3"
.LASF100:
	.string	"MODE_RANDOM"
.LASF231:
	.string	"US_PLUS"
.LASF882:
	.string	"CODE_FOR_sqrtsf2_1"
.LASF1450:
	.string	"imode"
.LASF1285:
	.string	"CODE_FOR_sibcall_epilogue"
.LASF1551:
	.string	"mlow_hi"
.LASF892:
	.string	"CODE_FOR_sinxf2"
.LASF89:
	.string	"BLKmode"
.LASF1484:
	.string	"int_mode"
.LASF994:
	.string	"CODE_FOR_cvtps2pi"
.LASF1269:
	.string	"CODE_FOR_bunle"
.LASF58:
	.string	"HCmode"
.LASF389:
	.string	"BIND_EXPR"
.LASF843:
	.string	"CODE_FOR_subsi3_carry"
.LASF461:
	.string	"FDESC_EXPR"
.LASF875:
	.string	"CODE_FOR_prologue_set_got"
.LASF944:
	.string	"CODE_FOR_movv2sf_internal"
.LASF748:
	.string	"TI_UV2SF_TYPE"
.LASF1311:
	.string	"CODE_FOR_strlendi"
.LASF396:
	.string	"PLUS_EXPR"
.LASF903:
	.string	"CODE_FOR_strmovhi_rex_1"
.LASF1270:
	.string	"CODE_FOR_bunlt"
.LASF754:
	.string	"TI_V8QI_TYPE"
.LASF1503:
	.string	"amount"
.LASF1152:
	.string	"CODE_FOR_subsf3"
.LASF1078:
	.string	"CODE_FOR_pfrcpit2v2sf3"
.LASF1083:
	.string	"CODE_FOR_pswapdv2sf2"
.LASF499:
	.string	"BUILT_IN_CREALL"
.LASF1154:
	.string	"CODE_FOR_mulsi3"
.LASF1520:
	.string	"temp1"
.LASF759:
	.string	"TI_MAIN_IDENTIFIER"
.LASF1405:
	.string	"output"
.LASF517:
	.string	"BUILT_IN_STRLEN"
.LASF358:
	.string	"UNION_TYPE"
.LASF981:
	.string	"CODE_FOR_maskcmpv4sf3"
.LASF606:
	.string	"lang_flag_6"
.LASF165:
	.string	"CONST_STRING"
.LASF228:
	.string	"VEC_CONCAT"
.LASF1545:
	.string	"ceil_log2"
.LASF848:
	.string	"CODE_FOR_udivmoddi4"
.LASF249:
	.string	"size"
.LASF800:
	.string	"CODE_FOR_popsi1"
.LASF1231:
	.string	"CODE_FOR_rotrhi3"
.LASF460:
	.string	"ENTRY_VALUE_EXPR"
.LASF535:
	.string	"BUILT_IN_NEXT_ARG"
.LASF240:
	.string	"max_after_vec"
.LASF665:
	.string	"lang_specific"
.LASF796:
	.string	"CODE_FOR_cmpqi_ext_3_insn"
.LASF286:
	.string	"REG_NOALIAS"
.LASF1596:
	.string	"adjusted_op0"
.LASF141:
	.string	"ATTR_FLAG"
.LASF1294:
	.string	"CODE_FOR_strmovsi_rex64"
.LASF1334:
	.string	"CODE_FOR_movv2sf"
.LASF96:
	.string	"CCFPUmode"
.LASF975:
	.string	"CODE_FOR_vmsqrtv4sf2"
.LASF1374:
	.string	"OTI_movstrict"
.LASF986:
	.string	"CODE_FOR_sse_ucomi"
.LASF270:
	.string	"REG_INC"
.LASF131:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF1302:
	.string	"CODE_FOR_strsetsi"
.LASF857:
	.string	"CODE_FOR_abssf2_ifs"
.LASF685:
	.string	"artificial_flag"
.LASF956:
	.string	"CODE_FOR_sse_movhps"
.LASF1613:
	.string	"pred"
.LASF1378:
	.string	"OTI_absv"
.LASF1254:
	.string	"CODE_FOR_beq"
.LASF135:
	.string	"ADDRESS"
.LASF866:
	.string	"CODE_FOR_lshrdi3_1"
.LASF441:
	.string	"ORDERED_EXPR"
.LASF1358:
	.string	"OTI_smod"
.LASF579:
	.string	"BUILT_IN_VA_COPY"
.LASF991:
	.string	"CODE_FOR_sminv4sf3"
.LASF1332:
	.string	"CODE_FOR_movv4hi"
.LASF21:
	.string	"complex"
.LASF888:
	.string	"CODE_FOR_sqrtxf2"
.LASF1173:
	.string	"CODE_FOR_divdf3"
.LASF820:
	.string	"CODE_FOR_fix_truncdi_memory"
.LASF494:
	.string	"BUILT_IN_CONJ"
.LASF378:
	.string	"INDIRECT_REF"
.LASF1616:
	.string	"arg1"
.LASF352:
	.string	"REFERENCE_TYPE"
.LASF265:
	.string	"bitmap_head_def"
.LASF636:
	.string	"supercontext"
.LASF1621:
	.string	"negate_cost"
.LASF580:
	.string	"BUILT_IN_EXPECT"
.LASF811:
	.string	"CODE_FOR_extendsidi2_rex64"
.LASF1406:
	.string	"genfun"
.LASF659:
	.string	"maxval"
.LASF1321:
	.string	"CODE_FOR_maxsf3"
.LASF1323:
	.string	"CODE_FOR_pro_epilogue_adjust_stack"
.LASF440:
	.string	"UNORDERED_EXPR"
.LASF828:
	.string	"CODE_FOR_fix_trunchi_memory"
.LASF742:
	.string	"TI_UV4SF_TYPE"
.LASF1556:
	.string	"pow2"
.LASF1107:
	.string	"CODE_FOR_zero_extendqihi2"
.LASF1264:
	.string	"CODE_FOR_bunordered"
.LASF1006:
	.string	"CODE_FOR_subv8qi3"
.LASF1422:
	.string	"alg_add"
.LASF235:
	.string	"US_TRUNCATE"
.LASF1247:
	.string	"CODE_FOR_sordered"
.LASF602:
	.string	"lang_flag_2"
.LASF1003:
	.string	"CODE_FOR_ssaddv4hi3"
.LASF521:
	.string	"BUILT_IN_STRCSPN"
.LASF1429:
	.string	"shiftadd_insn"
.LASF448:
	.string	"SET_LE_EXPR"
.LASF1168:
	.string	"CODE_FOR_multf3"
.LASF948:
	.string	"CODE_FOR_sse_movmskps"
.LASF1140:
	.string	"CODE_FOR_addqi3"
.LASF1628:
	.string	"mul_widen_cost"
.LASF323:
	.string	"global_rtl_index"
.LASF901:
	.string	"CODE_FOR_strmovsi_rex_1"
.LASF1382:
	.string	"OTI_sin"
.LASF945:
	.string	"CODE_FOR_movti_internal"
.LASF1243:
	.string	"CODE_FOR_sgeu"
.LASF1623:
	.string	"shift_cost"
.LASF230:
	.string	"SS_PLUS"
.LASF825:
	.string	"CODE_FOR_fix_truncsfsi_sse"
.LASF192:
	.string	"UMAX"
.LASF467:
	.string	"PREINCREMENT_EXPR"
.LASF244:
	.string	"scale"
.LASF671:
	.string	"linenum"
.LASF40:
	.string	"QImode"
.LASF1043:
	.string	"CODE_FOR_ashlv4hi3"
.LASF1355:
	.string	"OTI_sdivmod"
.LASF1476:
	.string	"thispos"
.LASF890:
	.string	"CODE_FOR_sindf2"
.LASF1630:
	.string	"target_flags"
.LASF1309:
	.string	"CODE_FOR_cmpintqi"
.LASF1553:
	.string	"mlow_lo"
.LASF1648:
	.string	"volatile_ok"
.LASF444:
	.string	"UNGT_EXPR"
.LASF1349:
	.string	"OTI_smul_highpart"
.LASF1437:
	.string	"data"
.LASF326:
	.string	"GR_STACK_POINTER"
.LASF1531:
	.string	"alg2"
.LASF653:
	.string	"user_align"
.LASF1431:
	.string	"dummy"
.LASF488:
	.string	"BUILT_IN_LABS"
.LASF52:
	.string	"TQFmode"
.LASF1342:
	.string	"optab_index"
.LASF1279:
	.string	"CODE_FOR_call_value"
.LASF587:
	.string	"volatile_flag"
.LASF1346:
	.string	"OTI_subv"
.LASF864:
	.string	"CODE_FOR_x86_shrd_1"
.LASF511:
	.string	"BUILT_IN_STRCAT"
.LASF527:
	.string	"BUILT_IN_SQRTF"
.LASF824:
	.string	"CODE_FOR_fix_truncsi_memory"
.LASF241:
	.string	"min_after_base"
.LASF530:
	.string	"BUILT_IN_SQRTL"
.LASF1230:
	.string	"CODE_FOR_rotrsi3"
.LASF1350:
	.string	"OTI_umul_highpart"
.LASF1022:
	.string	"CODE_FOR_mmx_uavgv8qi3"
.LASF1463:
	.string	"bestmode"
.LASF768:
	.string	"itk_unsigned_int"
.LASF959:
	.string	"CODE_FOR_sse_movss"
.LASF355:
	.string	"ARRAY_TYPE"
.LASF1562:
	.string	"invert_mod2n"
.LASF483:
	.string	"EXC_PTR_EXPR"
.LASF795:
	.string	"CODE_FOR_cmpdi_1_insn_rex64"
.LASF1145:
	.string	"CODE_FOR_subdi3"
.LASF505:
	.string	"BUILT_IN_FFS"
.LASF1607:
	.string	"compare_mode"
.LASF592:
	.string	"used_flag"
.LASF550:
	.string	"BUILT_IN_PRINTF"
.LASF349:
	.string	"CHAR_TYPE"
.LASF1517:
	.string	"left"
.LASF644:
	.string	"attributes"
.LASF753:
	.string	"TI_V8HI_TYPE"
.LASF1005:
	.string	"CODE_FOR_usaddv4hi3"
.LASF1544:
	.string	"accum_target"
.LASF1260:
	.string	"CODE_FOR_bge"
.LASF1166:
	.string	"CODE_FOR_smulsi3_highpart"
.LASF1281:
	.string	"CODE_FOR_untyped_call"
.LASF411:
	.string	"FIX_FLOOR_EXPR"
.LASF821:
	.string	"CODE_FOR_fix_truncsfdi_sse"
.LASF45:
	.string	"OImode"
.LASF292:
	.string	"REG_SAVE_NOTE"
.LASF557:
	.string	"BUILT_IN_PRINTF_UNLOCKED"
.LASF940:
	.string	"CODE_FOR_movv4si_internal"
.LASF1338:
	.string	"CODE_FOR_nothing"
.LASF600:
	.string	"lang_flag_0"
.LASF601:
	.string	"lang_flag_1"
.LASF377:
	.string	"BIT_FIELD_REF"
.LASF603:
	.string	"lang_flag_3"
.LASF604:
	.string	"lang_flag_4"
.LASF605:
	.string	"lang_flag_5"
.LASF190:
	.string	"SMAX"
.LASF696:
	.string	"lang_flag_7"
.LASF1565:
	.string	"adj_operand"
.LASF335:
	.string	"GR_MAX"
.LASF706:
	.string	"pointer_alias_set"
.LASF227:
	.string	"VEC_SELECT"
.LASF1353:
	.string	"OTI_sdiv"
.LASF492:
	.string	"BUILT_IN_LLABS"
.LASF276:
	.string	"REG_NONNEG"
.LASF371:
	.string	"VAR_DECL"
.LASF629:
	.string	"operands"
.LASF1289:
	.string	"CODE_FOR_sqrtdf2"
.LASF385:
	.string	"MODIFY_EXPR"
.LASF899:
	.string	"CODE_FOR_strmovdi_rex_1"
.LASF804:
	.string	"CODE_FOR_swapxf"
.LASF622:
	.string	"tree_identifier"
.LASF108:
	.string	"MODE_VECTOR_FLOAT"
.LASF1528:
	.string	"best_alg"
.LASF340:
	.string	"TREE_VEC"
.LASF198:
	.string	"POST_MODIFY"
.LASF1316:
	.string	"CODE_FOR_movdfcc"
.LASF1609:
	.string	"comparison"
.LASF533:
	.string	"BUILT_IN_SAVEREGS"
.LASF1415:
	.string	"alg_shift"
.LASF477:
	.string	"EXIT_EXPR"
.LASF495:
	.string	"BUILT_IN_CONJF"
.LASF1582:
	.string	"op1_is_constant"
.LASF288:
	.string	"REG_BR_PRED"
.LASF1420:
	.string	"alg_add_t2_m"
.LASF496:
	.string	"BUILT_IN_CONJL"
.LASF124:
	.string	"DEFINE_PEEPHOLE"
.LASF1108:
	.string	"CODE_FOR_zero_extendqisi2"
.LASF36:
	.string	"long long unsigned int"
.LASF317:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF248:
	.string	"offset"
.LASF245:
	.string	"addr_diff_vec_flags"
.LASF1575:
	.string	"rem_flag"
.LASF120:
	.string	"MATCH_OP_DUP"
.LASF134:
	.string	"SEQUENCE"
.LASF1445:
	.string	"bitpos"
.LASF338:
	.string	"IDENTIFIER_NODE"
.LASF746:
	.string	"TI_UV4HI_TYPE"
.LASF961:
	.string	"CODE_FOR_sse_shufps"
.LASF1491:
	.string	"outer_size"
.LASF1227:
	.string	"CODE_FOR_rotlhi3"
.LASF999:
	.string	"CODE_FOR_addv8qi3"
.LASF1136:
	.string	"CODE_FOR_floatdidf2"
.LASF50:
	.string	"QFmode"
.LASF1031:
	.string	"CODE_FOR_gtv8qi3"
.LASF1523:
	.string	"methods1"
.LASF1299:
	.string	"CODE_FOR_clrstrsi"
.LASF701:
	.string	"section_name"
.LASF1569:
	.string	"max_cost"
.LASF1297:
	.string	"CODE_FOR_strmovqi"
.LASF1354:
	.string	"OTI_sdivv"
.LASF785:
	.string	"OPTAB_LIB"
.LASF887:
	.string	"CODE_FOR_sqrtdf2_i387"
.LASF442:
	.string	"UNLT_EXPR"
.LASF1527:
	.string	"alg_in"
.LASF361:
	.string	"LANG_TYPE"
.LASF161:
	.string	"RESX"
.LASF1348:
	.string	"OTI_smulv"
.LASF1089:
	.string	"CODE_FOR_cmpsi_1"
.LASF900:
	.string	"CODE_FOR_strmovsi_1"
.LASF1090:
	.string	"CODE_FOR_cmpqi_ext_3"
.LASF149:
	.string	"PARALLEL"
.LASF13:
	.string	"num_elem"
.LASF720:
	.string	"TI_INTEGER_ZERO"
.LASF1411:
	.string	"output_format"
.LASF1110:
	.string	"CODE_FOR_extendsidi2"
.LASF199:
	.string	"UNORDERED"
.LASF1187:
	.string	"CODE_FOR_iorhi3"
.LASF97:
	.string	"MAX_MACHINE_MODE"
.LASF1209:
	.string	"CODE_FOR_one_cmplqi2"
.LASF1197:
	.string	"CODE_FOR_negqi2"
.LASF767:
	.string	"itk_int"
.LASF667:
	.string	"off_align"
.LASF1076:
	.string	"CODE_FOR_pfrcpv2sf2"
.LASF1329:
	.string	"CODE_FOR_movv4sf"
.LASF1601:
	.string	"expand_mult_add"
.LASF534:
	.string	"BUILT_IN_CLASSIFY_TYPE"
.LASF116:
	.string	"MATCH_SCRATCH"
.LASF166:
	.string	"CONST"
.LASF215:
	.string	"SQRT"
.LASF1508:
	.string	"maskhigh"
.LASF646:
	.string	"string_flag"
.LASF827:
	.string	"CODE_FOR_fix_trunchi_nomemory"
.LASF1487:
	.string	"mode1"
.LASF325:
	.string	"GR_CC0"
.LASF1414:
	.string	"alg_m"
.LASF99:
	.string	"mode_class"
.LASF181:
	.string	"MULT"
.LASF356:
	.string	"SET_TYPE"
.LASF104:
	.string	"MODE_CC"
.LASF634:
	.string	"vars"
.LASF884:
	.string	"CODE_FOR_sqrtsf2_i387"
.LASF390:
	.string	"CALL_EXPR"
.LASF46:
	.string	"PQImode"
.LASF1598:
	.string	"abs_op1"
.LASF425:
	.string	"BIT_AND_EXPR"
.LASF1293:
	.string	"CODE_FOR_strmovsi"
.LASF464:
	.string	"REALPART_EXPR"
.LASF1037:
	.string	"CODE_FOR_sminv4hi3"
.LASF443:
	.string	"UNLE_EXPR"
.LASF1044:
	.string	"CODE_FOR_ashlv2si3"
.LASF1271:
	.string	"CODE_FOR_bltgt"
.LASF712:
	.string	"TI_INTSI_TYPE"
.LASF501:
	.string	"BUILT_IN_CIMAGF"
.LASF673:
	.string	"nonlocal_flag"
.LASF502:
	.string	"BUILT_IN_CIMAGL"
.LASF144:
	.string	"CALL_INSN"
.LASF1066:
	.string	"CODE_FOR_mulv2sf3"
.LASF1615:
	.string	"do_cmp_and_jump"
.LASF996:
	.string	"CODE_FOR_cvtsi2ss"
.LASF1326:
	.string	"CODE_FOR_builtin_setjmp_receiver"
.LASF169:
	.string	"SUBREG"
.LASF904:
	.string	"CODE_FOR_strmovqi_1"
.LASF651:
	.string	"restrict_flag"
.LASF1451:
	.string	"icode"
.LASF1490:
	.string	"extv_loses"
.LASF1604:
	.string	"expand_and"
.LASF81:
	.string	"V16QImode"
.LASF977:
	.string	"CODE_FOR_sse_nandti3"
.LASF1190:
	.string	"CODE_FOR_xorsi3"
.LASF297:
	.string	"REG_ALWAYS_RETURN"
.LASF489:
	.string	"BUILT_IN_FABS"
.LASF802:
	.string	"CODE_FOR_pushdi2_rex64"
.LASF838:
	.string	"CODE_FOR_floatditf2"
.LASF23:
	.string	"decl"
.LASF867:
	.string	"CODE_FOR_setcc_2"
.LASF465:
	.string	"IMAGPART_EXPR"
.LASF37:
	.string	"long long int"
.LASF747:
	.string	"TI_UV2SI_TYPE"
.LASF1370:
	.string	"OTI_smax"
.LASF704:
	.string	"inlined_fns"
.LASF773:
	.string	"itk_none"
.LASF993:
	.string	"CODE_FOR_cvtpi2ps"
.LASF275:
	.string	"REG_LIBCALL"
.LASF861:
	.string	"CODE_FOR_x86_shld_1"
.LASF780:
	.string	"SBITSIZETYPE"
.LASF57:
	.string	"QCmode"
.LASF167:
	.string	"VALUE"
.LASF147:
	.string	"NOTE"
.LASF1432:
	.string	"wider_mode"
.LASF1506:
	.string	"complement"
.LASF1226:
	.string	"CODE_FOR_rotlsi3"
.LASF393:
	.string	"CLEANUP_POINT_EXPR"
.LASF1139:
	.string	"CODE_FOR_addhi3"
.LASF960:
	.string	"CODE_FOR_sse_storess"
.LASF1266:
	.string	"CODE_FOR_buneq"
.LASF1547:
	.string	"multiplier_ptr"
.LASF1120:
	.string	"CODE_FOR_trunctfdf2"
.LASF1482:
	.string	"spec_target"
.LASF1208:
	.string	"CODE_FOR_one_cmplhi2"
.LASF1184:
	.string	"CODE_FOR_andqi3"
.LASF191:
	.string	"UMIN"
.LASF117:
	.string	"MATCH_DUP"
.LASF363:
	.string	"REAL_CST"
.LASF564:
	.string	"BUILT_IN_ISLESS"
.LASF522:
	.string	"BUILT_IN_STRCHR"
.LASF1522:
	.string	"other_amount"
.LASF578:
	.string	"BUILT_IN_VA_END"
.LASF266:
	.string	"basic_block_def"
.LASF1474:
	.string	"thissize"
.LASF573:
	.string	"BUILT_IN_EXTRACT_RETURN_ADDR"
.LASF1113:
	.string	"CODE_FOR_extendsftf2"
.LASF1581:
	.string	"optab2"
.LASF1362:
	.string	"OTI_ior"
.LASF655:
	.string	"reference_to"
.LASF1606:
	.string	"normalizep"
.LASF1639:
	.string	"rtx_class"
.LASF1103:
	.string	"CODE_FOR_movdf"
.LASF1233:
	.string	"CODE_FOR_extv"
.LASF1101:
	.string	"CODE_FOR_movdi"
.LASF412:
	.string	"FIX_ROUND_EXPR"
.LASF1360:
	.string	"OTI_ftrunc"
.LASF439:
	.string	"NE_EXPR"
.LASF542:
	.string	"BUILT_IN_APPLY"
.LASF7:
	.string	"used"
.LASF935:
	.string	"CODE_FOR_sse_movdfcc_eq"
.LASF529:
	.string	"BUILT_IN_COSF"
.LASF347:
	.string	"ENUMERAL_TYPE"
.LASF1234:
	.string	"CODE_FOR_extzv"
.LASF868:
	.string	"CODE_FOR_jump"
.LASF1647:
	.string	"setcc_gen_code"
.LASF869:
	.string	"CODE_FOR_doloop_end_internal"
.LASF1377:
	.string	"OTI_abs"
.LASF304:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF1284:
	.string	"CODE_FOR_epilogue"
.LASF832:
	.string	"CODE_FOR_floathidf2"
.LASF1186:
	.string	"CODE_FOR_iorsi3"
.LASF64:
	.string	"CHImode"
.LASF1643:
	.string	"flag_force_mem"
.LASF498:
	.string	"BUILT_IN_CREALF"
.LASF320:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF139:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF687:
	.string	"non_addr_const_p"
.LASF971:
	.string	"CODE_FOR_vmrcpv4sf2"
.LASF620:
	.string	"elements"
.LASF763:
	.string	"itk_signed_char"
.LASF1004:
	.string	"CODE_FOR_usaddv8qi3"
.LASF1330:
	.string	"CODE_FOR_movv4si"
.LASF163:
	.string	"CONST_DOUBLE"
.LASF1248:
	.string	"CODE_FOR_suneq"
.LASF544:
	.string	"BUILT_IN_SETJMP"
.LASF725:
	.string	"TI_SIZE_ONE"
.LASF1602:
	.string	"mult"
.LASF561:
	.string	"BUILT_IN_FPRINTF_UNLOCKED"
.LASF769:
	.string	"itk_long"
.LASF1151:
	.string	"CODE_FOR_subdf3"
.LASF1155:
	.string	"CODE_FOR_mulhi3"
.LASF93:
	.string	"CCNOmode"
.LASF1217:
	.string	"CODE_FOR_x86_shift_adj_3"
.LASF74:
	.string	"V4HImode"
.LASF383:
	.string	"CONSTRUCTOR"
.LASF1009:
	.string	"CODE_FOR_sssubv8qi3"
.LASF1627:
	.string	"div_cost"
.LASF201:
	.string	"UNEQ"
.LASF341:
	.string	"BLOCK"
.LASF1471:
	.string	"store_split_bit_field"
.LASF184:
	.string	"ASHIFT"
.LASF741:
	.string	"TI_VOID_LIST_NODE"
.LASF189:
	.string	"SMIN"
.LASF1448:
	.string	"__FUNCTION__"
.LASF1645:
	.string	"flag_trapv"
.LASF176:
	.string	"IF_THEN_ELSE"
.LASF676:
	.string	"bit_field_flag"
.LASF549:
	.string	"BUILT_IN_PUTS"
.LASF679:
	.string	"in_system_header_flag"
.LASF1563:
	.string	"nbit"
.LASF1617:
	.string	"arg2"
.LASF1343:
	.string	"OTI_add"
.LASF1417:
	.string	"alg_sub_t_m2"
.LASF682:
	.string	"transparent_union"
.LASF1461:
	.string	"save_volatile_ok"
.LASF316:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF705:
	.string	"vindex"
.LASF1116:
	.string	"CODE_FOR_truncdfsf2"
.LASF946:
	.string	"CODE_FOR_sse_movaps"
.LASF806:
	.string	"CODE_FOR_zero_extendhisi2_and"
.LASF841:
	.string	"CODE_FOR_addqi_ext_1"
.LASF313:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF1392:
	.string	"OTI_MAX"
.LASF1650:
	.string	"expmed.c"
.LASF365:
	.string	"VECTOR_CST"
.LASF28:
	.string	"unsigned int"
.LASF457:
	.string	"RTL_EXPR"
.LASF252:
	.string	"tree_node"
.LASF1249:
	.string	"CODE_FOR_sunge"
.LASF1538:
	.string	"variant"
.LASF446:
	.string	"UNEQ_EXPR"
.LASF856:
	.string	"CODE_FOR_abssf2_memory"
.LASF514:
	.string	"BUILT_IN_STRNCPY"
.LASF1236:
	.string	"CODE_FOR_seq"
.LASF920:
	.string	"CODE_FOR_rep_stossi_rex64"
.LASF1250:
	.string	"CODE_FOR_sungt"
.LASF1536:
	.string	"negate_variant"
.LASF1295:
	.string	"CODE_FOR_strmovhi"
.LASF1372:
	.string	"OTI_umax"
.LASF1138:
	.string	"CODE_FOR_addsi3"
.LASF343:
	.string	"INTEGER_TYPE"
.LASF202:
	.string	"UNGE"
.LASF1007:
	.string	"CODE_FOR_subv4hi3"
.LASF1345:
	.string	"OTI_sub"
.LASF990:
	.string	"CODE_FOR_vmsmaxv4sf3"
.LASF1396:
	.string	"ccp_store_flag"
.LASF854:
	.string	"CODE_FOR_negdf2_memory"
.LASF1207:
	.string	"CODE_FOR_one_cmplsi2"
.LASF1436:
	.string	"opno"
.LASF783:
	.string	"optab_methods"
.LASF799:
	.string	"CODE_FOR_x86_sahf_1"
.LASF672:
	.string	"external_flag"
.LASF34:
	.string	"short int"
.LASF450:
	.string	"RANGE_EXPR"
.LASF203:
	.string	"UNGT"
.LASF524:
	.string	"BUILT_IN_SQRT"
.LASF379:
	.string	"BUFFER_REF"
.LASF1379:
	.string	"OTI_one_cmpl"
.LASF1123:
	.string	"CODE_FOR_fix_truncdfdi2"
.LASF936:
	.string	"CODE_FOR_allocate_stack_worker_1"
.LASF462:
	.string	"COMPLEX_EXPR"
.LASF1624:
	.string	"shiftadd_cost"
.LASF570:
	.string	"BUILT_IN_DWARF_FP_REGNUM"
.LASF1258:
	.string	"CODE_FOR_blt"
.LASF1055:
	.string	"CODE_FOR_emms"
.LASF1025:
	.string	"CODE_FOR_mmx_pinsrw"
.LASF1398:
	.string	"insn_gen_fn"
.LASF1497:
	.string	"bitsize_rtx"
.LASF1096:
	.string	"CODE_FOR_movhi"
.LASF1566:
	.string	"adj_code"
.LASF1467:
	.string	"all_zero"
.LASF1280:
	.string	"CODE_FOR_call_value_exp"
.LASF38:
	.string	"VOIDmode"
.LASF298:
	.string	"REG_VTABLE_REF"
.LASF964:
	.string	"CODE_FOR_subv4sf3"
.LASF740:
	.string	"TI_VA_LIST_TYPE"
.LASF1115:
	.string	"CODE_FOR_extenddftf2"
.LASF333:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF219:
	.string	"LO_SUM"
.LASF1122:
	.string	"CODE_FOR_fix_trunctfdi2"
.LASF586:
	.string	"addressable_flag"
.LASF853:
	.string	"CODE_FOR_negsf2_ifs"
.LASF1053:
	.string	"CODE_FOR_mmx_punpcklwd"
.LASF515:
	.string	"BUILT_IN_STRCMP"
.LASF1133:
	.string	"CODE_FOR_floatsisf2"
.LASF1587:
	.string	"pre_shift"
.LASF344:
	.string	"REAL_TYPE"
.LASF1550:
	.string	"mhigh_hi"
.LASF254:
	.string	"rtwint"
.LASF1276:
	.string	"CODE_FOR_call"
.LASF481:
	.string	"EXPR_WITH_FILE_LOCATION"
.LASF1539:
	.string	"accum"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
