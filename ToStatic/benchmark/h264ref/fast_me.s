	.file	"fast_me.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 fast_me.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	McostState,8,8
	.comm	all_mincost,8,8
	.comm	all_bwmincost,8,8
	.comm	pred_SAD_space,4,4
	.comm	pred_SAD_time,4,4
	.comm	pred_SAD_ref,4,4
	.comm	pred_SAD_uplayer,4,4
	.comm	FME_blocktype,4,4
	.comm	pred_MV_time,8,4
	.comm	pred_MV_ref,8,4
	.comm	pred_MV_uplayer,8,4
	.comm	Quantize_step,4,4
	.comm	Bsize,32,32
	.comm	Thresh4x4,4,4
	.comm	AlphaSec,32,32
	.comm	AlphaThird,32,32
	.comm	flag_intra,8,8
	.comm	flag_intra_SAD,4,4
	.comm	SearchState,8,8
	.local	PelY_14
	.comm	PelY_14,8,8
	.section	.rodata
	.align 32
	.type	quant_coef, @object
	.size	quant_coef, 384
quant_coef:
	.long	13107
	.long	8066
	.long	13107
	.long	8066
	.long	8066
	.long	5243
	.long	8066
	.long	5243
	.long	13107
	.long	8066
	.long	13107
	.long	8066
	.long	8066
	.long	5243
	.long	8066
	.long	5243
	.long	11916
	.long	7490
	.long	11916
	.long	7490
	.long	7490
	.long	4660
	.long	7490
	.long	4660
	.long	11916
	.long	7490
	.long	11916
	.long	7490
	.long	7490
	.long	4660
	.long	7490
	.long	4660
	.long	10082
	.long	6554
	.long	10082
	.long	6554
	.long	6554
	.long	4194
	.long	6554
	.long	4194
	.long	10082
	.long	6554
	.long	10082
	.long	6554
	.long	6554
	.long	4194
	.long	6554
	.long	4194
	.long	9362
	.long	5825
	.long	9362
	.long	5825
	.long	5825
	.long	3647
	.long	5825
	.long	3647
	.long	9362
	.long	5825
	.long	9362
	.long	5825
	.long	5825
	.long	3647
	.long	5825
	.long	3647
	.long	8192
	.long	5243
	.long	8192
	.long	5243
	.long	5243
	.long	3355
	.long	5243
	.long	3355
	.long	8192
	.long	5243
	.long	8192
	.long	5243
	.long	5243
	.long	3355
	.long	5243
	.long	3355
	.long	7282
	.long	4559
	.long	7282
	.long	4559
	.long	4559
	.long	2893
	.long	4559
	.long	2893
	.long	7282
	.long	4559
	.long	7282
	.long	4559
	.long	4559
	.long	2893
	.long	4559
	.long	2893
	.text
	.globl	DefineThreshold
	.type	DefineThreshold, @function
DefineThreshold:
.LFB2:
	.file 1 "fast_me.c"
	.loc 1 75 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 76 0
	movl	.LC0(%rip), %eax	#, tmp59
	movl	%eax, AlphaSec+4(%rip)	# tmp59, AlphaSec
	.loc 1 77 0
	movl	.LC0(%rip), %eax	#, tmp60
	movl	%eax, AlphaSec+8(%rip)	# tmp60, AlphaSec
	.loc 1 78 0
	movl	.LC0(%rip), %eax	#, tmp61
	movl	%eax, AlphaSec+12(%rip)	# tmp61, AlphaSec
	.loc 1 79 0
	movl	.LC1(%rip), %eax	#, tmp62
	movl	%eax, AlphaSec+16(%rip)	# tmp62, AlphaSec
	.loc 1 80 0
	movl	.LC2(%rip), %eax	#, tmp63
	movl	%eax, AlphaSec+20(%rip)	# tmp63, AlphaSec
	.loc 1 81 0
	movl	.LC2(%rip), %eax	#, tmp64
	movl	%eax, AlphaSec+24(%rip)	# tmp64, AlphaSec
	.loc 1 82 0
	movl	.LC3(%rip), %eax	#, tmp65
	movl	%eax, AlphaSec+28(%rip)	# tmp65, AlphaSec
	.loc 1 84 0
	movl	.LC4(%rip), %eax	#, tmp66
	movl	%eax, AlphaThird+4(%rip)	# tmp66, AlphaThird
	.loc 1 85 0
	movl	.LC5(%rip), %eax	#, tmp67
	movl	%eax, AlphaThird+8(%rip)	# tmp67, AlphaThird
	.loc 1 86 0
	movl	.LC5(%rip), %eax	#, tmp68
	movl	%eax, AlphaThird+12(%rip)	# tmp68, AlphaThird
	.loc 1 87 0
	movl	.LC6(%rip), %eax	#, tmp69
	movl	%eax, AlphaThird+16(%rip)	# tmp69, AlphaThird
	.loc 1 88 0
	movl	.LC7(%rip), %eax	#, tmp70
	movl	%eax, AlphaThird+20(%rip)	# tmp70, AlphaThird
	.loc 1 89 0
	movl	.LC8(%rip), %eax	#, tmp71
	movl	%eax, AlphaThird+24(%rip)	# tmp71, AlphaThird
	.loc 1 90 0
	movl	.LC9(%rip), %eax	#, tmp72
	movl	%eax, AlphaThird+28(%rip)	# tmp72, AlphaThird
	.loc 1 92 0
	movl	$0, %eax	#,
	call	DefineThresholdMB	#
	.loc 1 93 0
	nop
	.loc 1 94 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DefineThreshold, .-DefineThreshold
	.globl	DefineThresholdMB
	.type	DefineThresholdMB, @function
DefineThresholdMB:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 98 0
	movq	input(%rip), %rax	# input, input.0
	movl	16(%rax), %ecx	# input.0_2->qpN, D.7356
	movl	$715827883, %edx	#, tmp87
	movl	%ecx, %eax	# D.7356, tmp130
	imull	%edx	# tmp87
	movl	%ecx, %eax	# D.7356, tmp88
	sarl	$31, %eax	#, tmp88
	subl	%eax, %edx	# tmp88, tmp89
	movl	%edx, %eax	# tmp89, tmp89
	movl	%eax, -16(%rbp)	# tmp89, gb_qp_per
	.loc 1 99 0
	movq	input(%rip), %rax	# input, input.1
	movl	16(%rax), %ecx	# input.1_5->qpN, D.7356
	movl	$715827883, %edx	#, tmp91
	movl	%ecx, %eax	# D.7356, tmp131
	imull	%edx	# tmp91
	movl	%ecx, %eax	# D.7356, tmp92
	sarl	$31, %eax	#, tmp92
	subl	%eax, %edx	# tmp92, tmp93
	movl	%edx, %eax	# tmp93, tmp93
	movl	%eax, -12(%rbp)	# tmp93, gb_qp_rem
	movl	-12(%rbp), %edx	# gb_qp_rem, tmp94
	movl	%edx, %eax	# tmp94, tmp95
	addl	%eax, %eax	# tmp95
	addl	%edx, %eax	# tmp94, tmp95
	addl	%eax, %eax	# tmp96
	subl	%eax, %ecx	# tmp95, tmp97
	movl	%ecx, %eax	# tmp97, tmp97
	movl	%eax, -12(%rbp)	# tmp97, gb_qp_rem
	.loc 1 101 0
	movl	-16(%rbp), %eax	# gb_qp_per, tmp101
	addl	$15, %eax	#, tmp100
	movl	%eax, -8(%rbp)	# tmp100, gb_q_bits
	.loc 1 104 0
	movq	img(%rip), %rax	# img, img.2
	movl	24(%rax), %eax	# img.2_9->type, D.7356
	cmpl	$2, %eax	#, D.7356
	jne	.L4	#,
	.loc 1 105 0
	movl	-8(%rbp), %eax	# gb_q_bits, tmp102
	movl	$1, %edx	#, tmp103
	movl	%eax, %ecx	# tmp102, tmp142
	sall	%cl, %edx	# tmp142, D.7356
	movl	%edx, %ecx	# D.7356, D.7356
	movl	$1431655766, %edx	#, tmp105
	movl	%ecx, %eax	# D.7356, tmp132
	imull	%edx	# tmp105
	movl	%ecx, %eax	# D.7356, tmp106
	sarl	$31, %eax	#, tmp106
	subl	%eax, %edx	# tmp106, tmp107
	movl	%edx, %eax	# tmp107, tmp107
	movl	%eax, -20(%rbp)	# tmp107, gb_qp_const
	jmp	.L5	#
.L4:
	.loc 1 107 0
	movl	-8(%rbp), %eax	# gb_q_bits, tmp108
	movl	$1, %edx	#, tmp109
	movl	%eax, %ecx	# tmp108, tmp147
	sall	%cl, %edx	# tmp147, D.7356
	movl	%edx, %ecx	# D.7356, D.7356
	movl	$715827883, %edx	#, tmp111
	movl	%ecx, %eax	# D.7356, tmp133
	imull	%edx	# tmp111
	movl	%ecx, %eax	# D.7356, tmp112
	sarl	$31, %eax	#, tmp112
	subl	%eax, %edx	# tmp112, tmp113
	movl	%edx, %eax	# tmp113, tmp113
	movl	%eax, -20(%rbp)	# tmp113, gb_qp_const
.L5:
	.loc 1 109 0
	movl	-8(%rbp), %eax	# gb_q_bits, tmp114
	movl	$1, %edx	#, tmp115
	movl	%eax, %ecx	# tmp114, tmp152
	sall	%cl, %edx	# tmp152, D.7356
	movl	%edx, %eax	# D.7356, D.7356
	subl	-20(%rbp), %eax	# gb_qp_const, D.7356
	movl	-12(%rbp), %edx	# gb_qp_rem, tmp117
	movslq	%edx, %rdx	# tmp117, tmp116
	salq	$6, %rdx	#, tmp118
	addq	$quant_coef, %rdx	#, tmp119
	movl	(%rdx), %esi	# quant_coef, D.7356
	cltd
	idivl	%esi	# D.7356
	movl	%eax, -4(%rbp)	# tmp120, Thresh4x4
	.loc 1 110 0
	cvtsi2ss	-4(%rbp), %xmm0	# Thresh4x4, D.7357
	movss	.LC10(%rip), %xmm1	#, tmp122
	divss	%xmm1, %xmm0	# tmp122, Quantize_step.3
	movss	%xmm0, Quantize_step(%rip)	# Quantize_step.3, Quantize_step
	.loc 1 111 0
	movss	Quantize_step(%rip), %xmm1	# Quantize_step, Quantize_step.4
	movss	.LC11(%rip), %xmm0	#, tmp123
	mulss	%xmm1, %xmm0	# Quantize_step.4, D.7357
	movss	%xmm0, Bsize+28(%rip)	# D.7357, Bsize
	.loc 1 113 0
	movss	Bsize+28(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp124
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+24(%rip)	# D.7357, Bsize
	.loc 1 114 0
	movss	Bsize+28(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp125
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+20(%rip)	# D.7357, Bsize
	.loc 1 115 0
	movss	Bsize+20(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp126
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+16(%rip)	# D.7357, Bsize
	.loc 1 116 0
	movss	Bsize+16(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp127
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+12(%rip)	# D.7357, Bsize
	.loc 1 117 0
	movss	Bsize+16(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp128
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+8(%rip)	# D.7357, Bsize
	.loc 1 118 0
	movss	Bsize+8(%rip), %xmm1	# Bsize, D.7357
	movss	.LC12(%rip), %xmm0	#, tmp129
	mulss	%xmm1, %xmm0	# D.7357, D.7357
	movss	%xmm0, Bsize+4(%rip)	# D.7357, Bsize
	.loc 1 119 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	DefineThresholdMB, .-DefineThresholdMB
	.section	.rodata
.LC13:
	.string	"get_mem_mv: mv"
	.text
	.globl	get_mem_mincost
	.type	get_mem_mincost, @function
get_mem_mincost:
.LFB4:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# mv, mv
	.loc 1 136 0
	movq	img(%rip), %rax	# img, img.5
	movl	52(%rax), %eax	# img.5_5->width, D.7358
	leal	3(%rax), %edx	#, tmp143
	testl	%eax, %eax	# tmp142
	cmovs	%edx, %eax	# tmp143,, tmp142
	sarl	$2, %eax	#, tmp144
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7359,
	call	calloc	#
	movq	%rax, %rdx	# tmp145, D.7360
	movq	-40(%rbp), %rax	# mv, tmp146
	movq	%rdx, (%rax)	# D.7360, *mv_10(D)
	movq	-40(%rbp), %rax	# mv, tmp147
	movq	(%rax), %rax	# *mv_10(D), D.7361
	testq	%rax, %rax	# D.7361
	jne	.L7	#,
	.loc 1 137 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L7:
	.loc 1 138 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L8	#
.L19:
	.loc 1 140 0
	movq	-40(%rbp), %rax	# mv, tmp148
	movq	(%rax), %rax	# *mv_10(D), D.7361
	movl	-32(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.7359
	salq	$3, %rdx	#, D.7359
	leaq	(%rax,%rdx), %rbx	#, D.7361
	movq	img(%rip), %rax	# img, img.6
	movl	60(%rax), %eax	# img.6_20->height, D.7358
	leal	3(%rax), %edx	#, tmp151
	testl	%eax, %eax	# tmp150
	cmovs	%edx, %eax	# tmp151,, tmp150
	sarl	$2, %eax	#, tmp152
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7359,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7360, *_19
	movq	(%rbx), %rax	# *_19, D.7362
	testq	%rax, %rax	# D.7362
	jne	.L9	#,
	.loc 1 141 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L9:
	.loc 1 142 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L10	#
.L18:
	.loc 1 144 0
	movq	-40(%rbp), %rax	# mv, tmp154
	movq	(%rax), %rax	# *mv_10(D), D.7361
	movl	-32(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7361
	movq	(%rax), %rax	# *_33, D.7362
	movl	-28(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, D.7359
	salq	$3, %rdx	#, D.7359
	leaq	(%rax,%rdx), %rbx	#, D.7362
	movq	img(%rip), %rax	# img, img.7
	movl	36(%rax), %eax	# img.7_38->max_num_references, D.7358
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7359,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7360, *_37
	movq	(%rbx), %rax	# *_37, D.7363
	testq	%rax, %rax	# D.7363
	jne	.L11	#,
	.loc 1 145 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L11:
	.loc 1 146 0
	movl	$0, -24(%rbp)	#, k
	jmp	.L12	#
.L17:
	.loc 1 148 0
	movq	-40(%rbp), %rax	# mv, tmp158
	movq	(%rax), %rax	# *mv_10(D), D.7361
	movl	-32(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7361
	movq	(%rax), %rax	# *_49, D.7362
	movl	-28(%rbp), %edx	# j, tmp160
	movslq	%edx, %rdx	# tmp160, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7362
	movq	(%rax), %rax	# *_53, D.7363
	movl	-24(%rbp), %edx	# k, tmp161
	movslq	%edx, %rdx	# tmp161, D.7359
	salq	$3, %rdx	#, D.7359
	leaq	(%rax,%rdx), %rbx	#, D.7363
	movl	$8, %esi	#,
	movl	$9, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7360, *_57
	movq	(%rbx), %rax	# *_57, D.7364
	testq	%rax, %rax	# D.7364
	jne	.L13	#,
	.loc 1 149 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L13:
	.loc 1 150 0
	movl	$0, -20(%rbp)	#, l
	jmp	.L14	#
.L16:
	.loc 1 151 0
	movq	-40(%rbp), %rax	# mv, tmp163
	movq	(%rax), %rax	# *mv_10(D), D.7361
	movl	-32(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7361
	movq	(%rax), %rax	# *_64, D.7362
	movl	-28(%rbp), %edx	# j, tmp165
	movslq	%edx, %rdx	# tmp165, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7362
	movq	(%rax), %rax	# *_68, D.7363
	movl	-24(%rbp), %edx	# k, tmp166
	movslq	%edx, %rdx	# tmp166, D.7359
	salq	$3, %rdx	#, D.7359
	addq	%rdx, %rax	# D.7359, D.7363
	movq	(%rax), %rax	# *_72, D.7364
	movl	-20(%rbp), %edx	# l, tmp167
	movslq	%edx, %rdx	# tmp167, D.7359
	salq	$3, %rdx	#, D.7359
	leaq	(%rax,%rdx), %rbx	#, D.7364
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7360, *_76
	movq	(%rbx), %rax	# *_76, D.7365
	testq	%rax, %rax	# D.7365
	jne	.L15	#,
	.loc 1 152 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L15:
	.loc 1 150 0
	addl	$1, -20(%rbp)	#, l
.L14:
	.loc 1 150 0 is_stmt 0 discriminator 1
	cmpl	$8, -20(%rbp)	#, l
	jle	.L16	#,
	.loc 1 146 0 is_stmt 1
	addl	$1, -24(%rbp)	#, k
.L12:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.8
	movl	36(%rax), %eax	# img.8_44->max_num_references, D.7358
	cmpl	-24(%rbp), %eax	# k, D.7358
	jg	.L17	#,
	.loc 1 142 0 is_stmt 1
	addl	$1, -28(%rbp)	#, j
.L10:
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.9
	movl	60(%rax), %eax	# img.9_27->height, D.7358
	leal	3(%rax), %edx	#, tmp170
	testl	%eax, %eax	# tmp169
	cmovs	%edx, %eax	# tmp170,, tmp169
	sarl	$2, %eax	#, tmp171
	cmpl	-28(%rbp), %eax	# j, D.7358
	jg	.L18	#,
	.loc 1 138 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L8:
	.loc 1 138 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.10
	movl	52(%rax), %eax	# img.10_13->width, D.7358
	leal	3(%rax), %edx	#, tmp173
	testl	%eax, %eax	# tmp172
	cmovs	%edx, %eax	# tmp173,, tmp172
	sarl	$2, %eax	#, tmp174
	cmpl	-32(%rbp), %eax	# i, D.7358
	jg	.L19	#,
	.loc 1 157 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.11
	movl	52(%rax), %eax	# img.11_83->width, D.7358
	leal	3(%rax), %edx	#, tmp176
	testl	%eax, %eax	# tmp175
	cmovs	%edx, %eax	# tmp176,, tmp175
	sarl	$2, %eax	#, tmp177
	movl	%eax, %edx	# tmp177, D.7358
	movq	img(%rip), %rax	# img, img.12
	movl	60(%rax), %eax	# img.12_86->height, D.7358
	imull	%edx, %eax	# D.7358, D.7358
	leal	3(%rax), %edx	#, tmp179
	testl	%eax, %eax	# tmp178
	cmovs	%edx, %eax	# tmp179,, tmp178
	sarl	$2, %eax	#, tmp180
	movl	%eax, %edx	# tmp180, D.7358
	movq	img(%rip), %rax	# img, img.13
	movl	36(%rax), %eax	# img.13_90->max_num_references, D.7358
	imull	%edx, %eax	# D.7358, D.7358
	imull	$108, %eax, %eax	#, D.7366, D.7366
	.loc 1 158 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_mem_mincost, .-get_mem_mincost
	.globl	get_mem_bwmincost
	.type	get_mem_bwmincost, @function
get_mem_bwmincost:
.LFB5:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# mv, mv
	.loc 1 174 0
	movq	img(%rip), %rax	# img, img.14
	movl	52(%rax), %eax	# img.14_5->width, D.7368
	leal	3(%rax), %edx	#, tmp143
	testl	%eax, %eax	# tmp142
	cmovs	%edx, %eax	# tmp143,, tmp142
	sarl	$2, %eax	#, tmp144
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7369,
	call	calloc	#
	movq	%rax, %rdx	# tmp145, D.7370
	movq	-40(%rbp), %rax	# mv, tmp146
	movq	%rdx, (%rax)	# D.7370, *mv_10(D)
	movq	-40(%rbp), %rax	# mv, tmp147
	movq	(%rax), %rax	# *mv_10(D), D.7371
	testq	%rax, %rax	# D.7371
	jne	.L22	#,
	.loc 1 175 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L22:
	.loc 1 176 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L23	#
.L34:
	.loc 1 178 0
	movq	-40(%rbp), %rax	# mv, tmp148
	movq	(%rax), %rax	# *mv_10(D), D.7371
	movl	-32(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.7369
	salq	$3, %rdx	#, D.7369
	leaq	(%rax,%rdx), %rbx	#, D.7371
	movq	img(%rip), %rax	# img, img.15
	movl	60(%rax), %eax	# img.15_20->height, D.7368
	leal	3(%rax), %edx	#, tmp151
	testl	%eax, %eax	# tmp150
	cmovs	%edx, %eax	# tmp151,, tmp150
	sarl	$2, %eax	#, tmp152
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7369,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7370, *_19
	movq	(%rbx), %rax	# *_19, D.7372
	testq	%rax, %rax	# D.7372
	jne	.L24	#,
	.loc 1 179 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L24:
	.loc 1 180 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L25	#
.L33:
	.loc 1 182 0
	movq	-40(%rbp), %rax	# mv, tmp154
	movq	(%rax), %rax	# *mv_10(D), D.7371
	movl	-32(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7371
	movq	(%rax), %rax	# *_33, D.7372
	movl	-28(%rbp), %edx	# j, tmp156
	movslq	%edx, %rdx	# tmp156, D.7369
	salq	$3, %rdx	#, D.7369
	leaq	(%rax,%rdx), %rbx	#, D.7372
	movq	img(%rip), %rax	# img, img.16
	movl	36(%rax), %eax	# img.16_38->max_num_references, D.7368
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.7369,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7370, *_37
	movq	(%rbx), %rax	# *_37, D.7373
	testq	%rax, %rax	# D.7373
	jne	.L26	#,
	.loc 1 183 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L26:
	.loc 1 184 0
	movl	$0, -24(%rbp)	#, k
	jmp	.L27	#
.L32:
	.loc 1 186 0
	movq	-40(%rbp), %rax	# mv, tmp158
	movq	(%rax), %rax	# *mv_10(D), D.7371
	movl	-32(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7371
	movq	(%rax), %rax	# *_49, D.7372
	movl	-28(%rbp), %edx	# j, tmp160
	movslq	%edx, %rdx	# tmp160, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7372
	movq	(%rax), %rax	# *_53, D.7373
	movl	-24(%rbp), %edx	# k, tmp161
	movslq	%edx, %rdx	# tmp161, D.7369
	salq	$3, %rdx	#, D.7369
	leaq	(%rax,%rdx), %rbx	#, D.7373
	movl	$8, %esi	#,
	movl	$9, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7370, *_57
	movq	(%rbx), %rax	# *_57, D.7374
	testq	%rax, %rax	# D.7374
	jne	.L28	#,
	.loc 1 187 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L28:
	.loc 1 188 0
	movl	$0, -20(%rbp)	#, l
	jmp	.L29	#
.L31:
	.loc 1 189 0
	movq	-40(%rbp), %rax	# mv, tmp163
	movq	(%rax), %rax	# *mv_10(D), D.7371
	movl	-32(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7371
	movq	(%rax), %rax	# *_64, D.7372
	movl	-28(%rbp), %edx	# j, tmp165
	movslq	%edx, %rdx	# tmp165, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7372
	movq	(%rax), %rax	# *_68, D.7373
	movl	-24(%rbp), %edx	# k, tmp166
	movslq	%edx, %rdx	# tmp166, D.7369
	salq	$3, %rdx	#, D.7369
	addq	%rdx, %rax	# D.7369, D.7373
	movq	(%rax), %rax	# *_72, D.7374
	movl	-20(%rbp), %edx	# l, tmp167
	movslq	%edx, %rdx	# tmp167, D.7369
	salq	$3, %rdx	#, D.7369
	leaq	(%rax,%rdx), %rbx	#, D.7374
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	calloc	#
	movq	%rax, (%rbx)	# D.7370, *_76
	movq	(%rbx), %rax	# *_76, D.7375
	testq	%rax, %rax	# D.7375
	jne	.L30	#,
	.loc 1 190 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L30:
	.loc 1 188 0
	addl	$1, -20(%rbp)	#, l
.L29:
	.loc 1 188 0 is_stmt 0 discriminator 1
	cmpl	$8, -20(%rbp)	#, l
	jle	.L31	#,
	.loc 1 184 0 is_stmt 1
	addl	$1, -24(%rbp)	#, k
.L27:
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.17
	movl	36(%rax), %eax	# img.17_44->max_num_references, D.7368
	cmpl	-24(%rbp), %eax	# k, D.7368
	jg	.L32	#,
	.loc 1 180 0 is_stmt 1
	addl	$1, -28(%rbp)	#, j
.L25:
	.loc 1 180 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.18
	movl	60(%rax), %eax	# img.18_27->height, D.7368
	leal	3(%rax), %edx	#, tmp170
	testl	%eax, %eax	# tmp169
	cmovs	%edx, %eax	# tmp170,, tmp169
	sarl	$2, %eax	#, tmp171
	cmpl	-28(%rbp), %eax	# j, D.7368
	jg	.L33	#,
	.loc 1 176 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L23:
	.loc 1 176 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.19
	movl	52(%rax), %eax	# img.19_13->width, D.7368
	leal	3(%rax), %edx	#, tmp173
	testl	%eax, %eax	# tmp172
	cmovs	%edx, %eax	# tmp173,, tmp172
	sarl	$2, %eax	#, tmp174
	cmpl	-32(%rbp), %eax	# i, D.7368
	jg	.L34	#,
	.loc 1 195 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.20
	movl	52(%rax), %eax	# img.20_83->width, D.7368
	leal	3(%rax), %edx	#, tmp176
	testl	%eax, %eax	# tmp175
	cmovs	%edx, %eax	# tmp176,, tmp175
	sarl	$2, %eax	#, tmp177
	movl	%eax, %edx	# tmp177, D.7368
	movq	img(%rip), %rax	# img, img.21
	movl	60(%rax), %eax	# img.21_86->height, D.7368
	imull	%edx, %eax	# D.7368, D.7368
	leal	3(%rax), %edx	#, tmp179
	testl	%eax, %eax	# tmp178
	cmovs	%edx, %eax	# tmp179,, tmp178
	sarl	$2, %eax	#, tmp180
	movl	%eax, %edx	# tmp180, D.7368
	movq	img(%rip), %rax	# img, img.22
	movl	36(%rax), %eax	# img.22_90->max_num_references, D.7368
	imull	%edx, %eax	# D.7368, D.7368
	imull	$108, %eax, %eax	#, D.7376, D.7376
	.loc 1 196 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_mem_bwmincost, .-get_mem_bwmincost
	.section	.rodata
.LC14:
	.string	"get_mem_FME: flag_intra"
	.text
	.globl	get_mem_FME
	.type	get_mem_FME, @function
get_mem_FME:
.LFB6:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 200 0
	movl	$0, -4(%rbp)	#, memory_size
	.loc 1 201 0
	movq	img(%rip), %rax	# img, img.23
	movl	52(%rax), %eax	# img.23_2->width, D.7377
	sarl	$4, %eax	#, D.7377
	addl	$1, %eax	#, D.7377
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7378,
	call	calloc	#
	movq	%rax, flag_intra(%rip)	# flag_intra.24, flag_intra
	movq	flag_intra(%rip), %rax	# flag_intra, flag_intra.25
	testq	%rax, %rax	# flag_intra.25
	jne	.L37	#,
	.loc 1 201 0 is_stmt 0 discriminator 1
	movl	$.LC14, %edi	#,
	call	no_mem_exit	#
.L37:
	.loc 1 203 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.26
	movl	32(%rax), %eax	# input.26_9->search_range, D.7377
	addl	%eax, %eax	# D.7377
	leal	1(%rax), %edx	#, D.7377
	movq	input(%rip), %rax	# input, input.27
	movl	32(%rax), %eax	# input.27_13->search_range, D.7377
	addl	%eax, %eax	# D.7377
	addl	$1, %eax	#, D.7377
	movl	%eax, %esi	# D.7377,
	movl	$McostState, %edi	#,
	call	get_mem2Dint	#
	addl	%eax, -4(%rbp)	# D.7377, memory_size
	.loc 1 204 0
	movl	$all_mincost, %edi	#,
	call	get_mem_mincost	#
	addl	%eax, -4(%rbp)	# D.7377, memory_size
	.loc 1 205 0
	movl	$all_bwmincost, %edi	#,
	call	get_mem_bwmincost	#
	addl	%eax, -4(%rbp)	# D.7377, memory_size
	.loc 1 206 0
	movl	$7, %edx	#,
	movl	$7, %esi	#,
	movl	$SearchState, %edi	#,
	call	get_mem2D	#
	addl	%eax, -4(%rbp)	# D.7377, memory_size
	.loc 1 208 0
	movl	-4(%rbp), %eax	# memory_size, D.7377
	.loc 1 209 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_mem_FME, .-get_mem_FME
	.globl	free_mem_mincost
	.type	free_mem_mincost, @function
free_mem_mincost:
.LFB7:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mv, mv
	.loc 1 223 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L40	#
.L47:
	.loc 1 225 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L41	#
.L46:
	.loc 1 227 0
	movl	$0, -8(%rbp)	#, k
	jmp	.L42	#
.L45:
	.loc 1 229 0
	movl	$0, -4(%rbp)	#, l
	jmp	.L43	#
.L44:
	.loc 1 230 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7381
	movq	-24(%rbp), %rax	# mv, tmp108
	addq	%rdx, %rax	# D.7381, D.7382
	movq	(%rax), %rax	# *_20, D.7383
	movl	-12(%rbp), %edx	# j, tmp109
	movslq	%edx, %rdx	# tmp109, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7383
	movq	(%rax), %rax	# *_24, D.7384
	movl	-8(%rbp), %edx	# k, tmp110
	movslq	%edx, %rdx	# tmp110, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7384
	movq	(%rax), %rax	# *_28, D.7385
	movl	-4(%rbp), %edx	# l, tmp111
	movslq	%edx, %rdx	# tmp111, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7385
	movq	(%rax), %rax	# *_32, D.7386
	movq	%rax, %rdi	# D.7386,
	call	free	#
	.loc 1 229 0 discriminator 2
	addl	$1, -4(%rbp)	#, l
.L43:
	.loc 1 229 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, l
	jle	.L44	#,
	.loc 1 231 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7381
	movq	-24(%rbp), %rax	# mv, tmp113
	addq	%rdx, %rax	# D.7381, D.7382
	movq	(%rax), %rax	# *_37, D.7383
	movl	-12(%rbp), %edx	# j, tmp114
	movslq	%edx, %rdx	# tmp114, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7383
	movq	(%rax), %rax	# *_41, D.7384
	movl	-8(%rbp), %edx	# k, tmp115
	movslq	%edx, %rdx	# tmp115, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7384
	movq	(%rax), %rax	# *_45, D.7385
	movq	%rax, %rdi	# D.7385,
	call	free	#
	.loc 1 227 0
	addl	$1, -8(%rbp)	#, k
.L42:
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.28
	movl	36(%rax), %eax	# img.28_14->max_num_references, D.7380
	cmpl	-8(%rbp), %eax	# k, D.7380
	jg	.L45	#,
	.loc 1 233 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7381
	movq	-24(%rbp), %rax	# mv, tmp117
	addq	%rdx, %rax	# D.7381, D.7382
	movq	(%rax), %rax	# *_50, D.7383
	movl	-12(%rbp), %edx	# j, tmp118
	movslq	%edx, %rdx	# tmp118, D.7381
	salq	$3, %rdx	#, D.7381
	addq	%rdx, %rax	# D.7381, D.7383
	movq	(%rax), %rax	# *_54, D.7384
	movq	%rax, %rdi	# D.7384,
	call	free	#
	.loc 1 225 0
	addl	$1, -12(%rbp)	#, j
.L41:
	.loc 1 225 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.29
	movl	60(%rax), %eax	# img.29_10->height, D.7380
	leal	3(%rax), %edx	#, tmp120
	testl	%eax, %eax	# tmp119
	cmovs	%edx, %eax	# tmp120,, tmp119
	sarl	$2, %eax	#, tmp121
	cmpl	-12(%rbp), %eax	# j, D.7380
	jg	.L46	#,
	.loc 1 235 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7381
	movq	-24(%rbp), %rax	# mv, tmp123
	addq	%rdx, %rax	# D.7381, D.7382
	movq	(%rax), %rax	# *_59, D.7383
	movq	%rax, %rdi	# D.7383,
	call	free	#
	.loc 1 223 0
	addl	$1, -16(%rbp)	#, i
.L40:
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.30
	movl	52(%rax), %eax	# img.30_6->width, D.7380
	leal	3(%rax), %edx	#, tmp125
	testl	%eax, %eax	# tmp124
	cmovs	%edx, %eax	# tmp125,, tmp124
	sarl	$2, %eax	#, tmp126
	cmpl	-16(%rbp), %eax	# i, D.7380
	jg	.L47	#,
	.loc 1 237 0 is_stmt 1
	movq	-24(%rbp), %rax	# mv, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free	#
	.loc 1 238 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	free_mem_mincost, .-free_mem_mincost
	.globl	free_mem_bwmincost
	.type	free_mem_bwmincost, @function
free_mem_bwmincost:
.LFB8:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mv, mv
	.loc 1 252 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L49	#
.L56:
	.loc 1 254 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L50	#
.L55:
	.loc 1 256 0
	movl	$0, -8(%rbp)	#, k
	jmp	.L51	#
.L54:
	.loc 1 258 0
	movl	$0, -4(%rbp)	#, l
	jmp	.L52	#
.L53:
	.loc 1 259 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7388
	movq	-24(%rbp), %rax	# mv, tmp108
	addq	%rdx, %rax	# D.7388, D.7389
	movq	(%rax), %rax	# *_20, D.7390
	movl	-12(%rbp), %edx	# j, tmp109
	movslq	%edx, %rdx	# tmp109, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7390
	movq	(%rax), %rax	# *_24, D.7391
	movl	-8(%rbp), %edx	# k, tmp110
	movslq	%edx, %rdx	# tmp110, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7391
	movq	(%rax), %rax	# *_28, D.7392
	movl	-4(%rbp), %edx	# l, tmp111
	movslq	%edx, %rdx	# tmp111, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7392
	movq	(%rax), %rax	# *_32, D.7393
	movq	%rax, %rdi	# D.7393,
	call	free	#
	.loc 1 258 0 discriminator 2
	addl	$1, -4(%rbp)	#, l
.L52:
	.loc 1 258 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, l
	jle	.L53	#,
	.loc 1 260 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp112
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7388
	movq	-24(%rbp), %rax	# mv, tmp113
	addq	%rdx, %rax	# D.7388, D.7389
	movq	(%rax), %rax	# *_37, D.7390
	movl	-12(%rbp), %edx	# j, tmp114
	movslq	%edx, %rdx	# tmp114, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7390
	movq	(%rax), %rax	# *_41, D.7391
	movl	-8(%rbp), %edx	# k, tmp115
	movslq	%edx, %rdx	# tmp115, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7391
	movq	(%rax), %rax	# *_45, D.7392
	movq	%rax, %rdi	# D.7392,
	call	free	#
	.loc 1 256 0
	addl	$1, -8(%rbp)	#, k
.L51:
	.loc 1 256 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.31
	movl	36(%rax), %eax	# img.31_14->max_num_references, D.7387
	cmpl	-8(%rbp), %eax	# k, D.7387
	jg	.L54	#,
	.loc 1 262 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7388
	movq	-24(%rbp), %rax	# mv, tmp117
	addq	%rdx, %rax	# D.7388, D.7389
	movq	(%rax), %rax	# *_50, D.7390
	movl	-12(%rbp), %edx	# j, tmp118
	movslq	%edx, %rdx	# tmp118, D.7388
	salq	$3, %rdx	#, D.7388
	addq	%rdx, %rax	# D.7388, D.7390
	movq	(%rax), %rax	# *_54, D.7391
	movq	%rax, %rdi	# D.7391,
	call	free	#
	.loc 1 254 0
	addl	$1, -12(%rbp)	#, j
.L50:
	.loc 1 254 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.32
	movl	60(%rax), %eax	# img.32_10->height, D.7387
	leal	3(%rax), %edx	#, tmp120
	testl	%eax, %eax	# tmp119
	cmovs	%edx, %eax	# tmp120,, tmp119
	sarl	$2, %eax	#, tmp121
	cmpl	-12(%rbp), %eax	# j, D.7387
	jg	.L55	#,
	.loc 1 264 0 is_stmt 1
	movl	-16(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7388
	movq	-24(%rbp), %rax	# mv, tmp123
	addq	%rdx, %rax	# D.7388, D.7389
	movq	(%rax), %rax	# *_59, D.7390
	movq	%rax, %rdi	# D.7390,
	call	free	#
	.loc 1 252 0
	addl	$1, -16(%rbp)	#, i
.L49:
	.loc 1 252 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.33
	movl	52(%rax), %eax	# img.33_6->width, D.7387
	leal	3(%rax), %edx	#, tmp125
	testl	%eax, %eax	# tmp124
	cmovs	%edx, %eax	# tmp125,, tmp124
	sarl	$2, %eax	#, tmp126
	cmpl	-16(%rbp), %eax	# i, D.7387
	jg	.L56	#,
	.loc 1 266 0 is_stmt 1
	movq	-24(%rbp), %rax	# mv, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free	#
	.loc 1 267 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_mem_bwmincost, .-free_mem_bwmincost
	.globl	free_mem_FME
	.type	free_mem_FME, @function
free_mem_FME:
.LFB9:
	.loc 1 270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 271 0
	movq	McostState(%rip), %rax	# McostState, McostState.34
	movq	%rax, %rdi	# McostState.34,
	call	free_mem2Dint	#
	.loc 1 272 0
	movq	all_mincost(%rip), %rax	# all_mincost, all_mincost.35
	movq	%rax, %rdi	# all_mincost.35,
	call	free_mem_mincost	#
	.loc 1 273 0
	movq	all_bwmincost(%rip), %rax	# all_bwmincost, all_bwmincost.36
	movq	%rax, %rdi	# all_bwmincost.36,
	call	free_mem_bwmincost	#
	.loc 1 275 0
	movq	SearchState(%rip), %rax	# SearchState, SearchState.37
	movq	%rax, %rdi	# SearchState.37,
	call	free_mem2D	#
	.loc 1 277 0
	movq	flag_intra(%rip), %rax	# flag_intra, flag_intra.38
	movq	%rax, %rdi	# flag_intra.38,
	call	free	#
	.loc 1 278 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_mem_FME, .-free_mem_FME
	.globl	PartCalMad
	.type	PartCalMad, @function
PartCalMad:
.LFB10:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# ref_pic, ref_pic
	movq	%rsi, -48(%rbp)	# orig_pic, orig_pic
	movq	%rdx, -56(%rbp)	# get_ref_line, get_ref_line
	movl	%ecx, -60(%rbp)	# blocksize_y, blocksize_y
	movl	%r8d, -64(%rbp)	# blocksize_x, blocksize_x
	movl	%r9d, -68(%rbp)	# blocksize_x4, blocksize_x4
	.loc 1 284 0
	movq	img(%rip), %rax	# img, img.40
	movl	72400(%rax), %eax	# img.40_9->MbaffFrameFlag, D.7394
	testl	%eax, %eax	# D.7394
	je	.L59	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.41
	movq	14168(%rax), %rdx	# img.41_11->mb_data, D.7395
	movq	img(%rip), %rax	# img, img.42
	movl	12(%rax), %eax	# img.42_13->current_mb_nr, D.7394
	cltq
	imulq	$632, %rax, %rax	#, D.7396, D.7396
	addq	%rdx, %rax	# D.7395, D.7395
	movl	532(%rax), %eax	# _17->mb_field, D.7394
	testl	%eax, %eax	# D.7394
	je	.L59	#,
	movq	img(%rip), %rax	# img, img.43
	movl	60(%rax), %eax	# img.43_19->height, D.7394
	movl	%eax, %edx	# D.7394, tmp129
	shrl	$31, %edx	#, tmp129
	addl	%edx, %eax	# tmp129, tmp130
	sarl	%eax	# tmp131
	jmp	.L60	#
.L59:
	.loc 1 284 0 discriminator 2
	movq	img(%rip), %rax	# img, img.44
	movl	60(%rax), %eax	# img.44_22->height, iftmp.39
.L60:
	.loc 1 284 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.39, height
	.loc 1 286 0 is_stmt 1 discriminator 3
	movl	$0, -28(%rbp)	#, y
	jmp	.L61	#
.L66:
	.loc 1 288 0
	movq	img(%rip), %rax	# img, img.45
	movl	52(%rax), %r8d	# img.45_28->width, D.7394
	movl	-28(%rbp), %eax	# y, tmp132
	movl	40(%rbp), %edx	# cand_y, tmp133
	leal	(%rdx,%rax), %r10d	#, D.7394
	movl	-20(%rbp), %ecx	# height, tmp134
	movl	32(%rbp), %edx	# cand_x, tmp135
	movq	-40(%rbp), %rsi	# ref_pic, tmp136
	movl	-64(%rbp), %edi	# blocksize_x, tmp137
	movq	-56(%rbp), %rax	# get_ref_line, tmp138
	movl	%r8d, %r9d	# D.7394,
	movl	%ecx, %r8d	# tmp134,
	movl	%edx, %ecx	# tmp135,
	movl	%r10d, %edx	# D.7394,
	call	*%rax	# tmp138
	movq	%rax, -8(%rbp)	# tmp139, ref_line
	.loc 1 289 0
	movl	-28(%rbp), %eax	# y, tmp140
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7396
	movq	-48(%rbp), %rax	# orig_pic, tmp141
	addq	%rdx, %rax	# D.7396, D.7397
	movq	(%rax), %rax	# *_40, tmp142
	movq	%rax, -16(%rbp)	# tmp142, orig_line
	.loc 1 291 0
	movl	$0, -24(%rbp)	#, x4
	jmp	.L62	#
.L63:
	.loc 1 293 0 discriminator 2
	movq	byte_abs(%rip), %rcx	# byte_abs, byte_abs.46
	movq	-16(%rbp), %rax	# orig_line, orig_line.47
	leaq	2(%rax), %rdx	#, tmp143
	movq	%rdx, -16(%rbp)	# tmp143, orig_line
	movzwl	(%rax), %eax	# *orig_line.47_45, D.7398
	movzwl	%ax, %esi	# D.7398, D.7394
	movq	-8(%rbp), %rax	# ref_line, ref_line.48
	leaq	2(%rax), %rdx	#, tmp144
	movq	%rdx, -8(%rbp)	# tmp144, ref_line
	movzwl	(%rax), %eax	# *ref_line.48_49, D.7398
	movzwl	%ax, %eax	# D.7398, D.7394
	subl	%eax, %esi	# D.7394, D.7394
	movl	%esi, %eax	# D.7394, D.7394
	cltq
	salq	$2, %rax	#, D.7396
	addq	%rcx, %rax	# byte_abs.46, D.7399
	movl	(%rax), %eax	# *_56, D.7394
	addl	%eax, 16(%rbp)	# D.7394, mcost
	.loc 1 294 0 discriminator 2
	movq	byte_abs(%rip), %rcx	# byte_abs, byte_abs.49
	movq	-16(%rbp), %rax	# orig_line, orig_line.50
	leaq	2(%rax), %rdx	#, tmp145
	movq	%rdx, -16(%rbp)	# tmp145, orig_line
	movzwl	(%rax), %eax	# *orig_line.50_60, D.7398
	movzwl	%ax, %esi	# D.7398, D.7394
	movq	-8(%rbp), %rax	# ref_line, ref_line.51
	leaq	2(%rax), %rdx	#, tmp146
	movq	%rdx, -8(%rbp)	# tmp146, ref_line
	movzwl	(%rax), %eax	# *ref_line.51_64, D.7398
	movzwl	%ax, %eax	# D.7398, D.7394
	subl	%eax, %esi	# D.7394, D.7394
	movl	%esi, %eax	# D.7394, D.7394
	cltq
	salq	$2, %rax	#, D.7396
	addq	%rcx, %rax	# byte_abs.49, D.7399
	movl	(%rax), %eax	# *_71, D.7394
	addl	%eax, 16(%rbp)	# D.7394, mcost
	.loc 1 295 0 discriminator 2
	movq	byte_abs(%rip), %rcx	# byte_abs, byte_abs.52
	movq	-16(%rbp), %rax	# orig_line, orig_line.53
	leaq	2(%rax), %rdx	#, tmp147
	movq	%rdx, -16(%rbp)	# tmp147, orig_line
	movzwl	(%rax), %eax	# *orig_line.53_75, D.7398
	movzwl	%ax, %esi	# D.7398, D.7394
	movq	-8(%rbp), %rax	# ref_line, ref_line.54
	leaq	2(%rax), %rdx	#, tmp148
	movq	%rdx, -8(%rbp)	# tmp148, ref_line
	movzwl	(%rax), %eax	# *ref_line.54_79, D.7398
	movzwl	%ax, %eax	# D.7398, D.7394
	subl	%eax, %esi	# D.7394, D.7394
	movl	%esi, %eax	# D.7394, D.7394
	cltq
	salq	$2, %rax	#, D.7396
	addq	%rcx, %rax	# byte_abs.52, D.7399
	movl	(%rax), %eax	# *_86, D.7394
	addl	%eax, 16(%rbp)	# D.7394, mcost
	.loc 1 296 0 discriminator 2
	movq	byte_abs(%rip), %rcx	# byte_abs, byte_abs.55
	movq	-16(%rbp), %rax	# orig_line, orig_line.56
	leaq	2(%rax), %rdx	#, tmp149
	movq	%rdx, -16(%rbp)	# tmp149, orig_line
	movzwl	(%rax), %eax	# *orig_line.56_90, D.7398
	movzwl	%ax, %esi	# D.7398, D.7394
	movq	-8(%rbp), %rax	# ref_line, ref_line.57
	leaq	2(%rax), %rdx	#, tmp150
	movq	%rdx, -8(%rbp)	# tmp150, ref_line
	movzwl	(%rax), %eax	# *ref_line.57_94, D.7398
	movzwl	%ax, %eax	# D.7398, D.7394
	subl	%eax, %esi	# D.7394, D.7394
	movl	%esi, %eax	# D.7394, D.7394
	cltq
	salq	$2, %rax	#, D.7396
	addq	%rcx, %rax	# byte_abs.55, D.7399
	movl	(%rax), %eax	# *_101, D.7394
	addl	%eax, 16(%rbp)	# D.7394, mcost
	.loc 1 291 0 discriminator 2
	addl	$1, -24(%rbp)	#, x4
.L62:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# x4, tmp151
	cmpl	-68(%rbp), %eax	# blocksize_x4, tmp151
	jl	.L63	#,
	.loc 1 298 0 is_stmt 1
	movl	16(%rbp), %eax	# mcost, tmp152
	cmpl	24(%rbp), %eax	# min_mcost, tmp152
	jl	.L64	#,
	.loc 1 300 0
	jmp	.L65	#
.L64:
	.loc 1 286 0
	addl	$1, -28(%rbp)	#, y
.L61:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# y, tmp153
	cmpl	-60(%rbp), %eax	# blocksize_y, tmp153
	jl	.L66	#,
.L65:
	.loc 1 303 0 is_stmt 1
	movl	16(%rbp), %eax	# mcost, D.7394
	.loc 1 304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PartCalMad, .-PartCalMad
	.globl	FastIntegerPelBlockMotionSearch
	.type	FastIntegerPelBlockMotionSearch, @function
FastIntegerPelBlockMotionSearch:
.LFB11:
	.loc 1 353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -136(%rbp)	# orig_pic, orig_pic
	movl	%esi, %eax	# ref, tmp1136
	movl	%edx, -144(%rbp)	# list, list
	movl	%ecx, -148(%rbp)	# pic_pix_x, pic_pix_x
	movl	%r8d, -152(%rbp)	# pic_pix_y, pic_pix_y
	movl	%r9d, -156(%rbp)	# blocktype, blocktype
	movl	16(%rbp), %ecx	# pred_mv_x, tmp1137
	movl	24(%rbp), %edx	# pred_mv_y, tmp1138
	movsd	%xmm0, -176(%rbp)	# lambda, lambda
	movw	%ax, -140(%rbp)	# tmp1136, ref
	movw	%cx, -160(%rbp)	# tmp1137, pred_mv_x
	movw	%dx, -164(%rbp)	# tmp1138, pred_mv_y
	.loc 1 363 0
	movq	img(%rip), %rax	# img, img.59
	movl	72400(%rax), %eax	# img.59_135->MbaffFrameFlag, D.7400
	testl	%eax, %eax	# D.7400
	je	.L69	#,
	.loc 1 363 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.60
	movq	14168(%rax), %rdx	# img.60_137->mb_data, D.7401
	movq	img(%rip), %rax	# img, img.61
	movl	12(%rax), %eax	# img.61_139->current_mb_nr, D.7400
	cltq
	imulq	$632, %rax, %rax	#, D.7402, D.7402
	addq	%rdx, %rax	# D.7401, D.7401
	movl	532(%rax), %eax	# _143->mb_field, D.7400
	testl	%eax, %eax	# D.7400
	je	.L69	#,
	movq	img(%rip), %rax	# img, img.63
	movl	12(%rax), %eax	# img.63_145->current_mb_nr, D.7400
	andl	$1, %eax	#, D.7403
	testl	%eax, %eax	# D.7403
	je	.L70	#,
	movl	$4, %eax	#, iftmp.62
	jmp	.L71	#
.L70:
	.loc 1 363 0 discriminator 2
	movl	$2, %eax	#, iftmp.62
.L71:
	.loc 1 363 0 discriminator 3
	jmp	.L72	#
.L69:
	.loc 1 363 0 discriminator 2
	movl	$0, %eax	#, iftmp.58
.L72:
	.loc 1 363 0 discriminator 3
	movl	%eax, -84(%rbp)	# iftmp.58, list_offset
	.loc 1 364 0 is_stmt 1 discriminator 3
	movl	-84(%rbp), %eax	# list_offset, tmp1139
	movl	-144(%rbp), %edx	# list, tmp1140
	addl	%edx, %eax	# tmp1140, D.7400
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.7404
	movswq	-140(%rbp), %rdx	# ref, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7404
	movq	(%rax), %rax	# *_160, D.7405
	movq	6432(%rax), %rax	# _161->imgY_11, tmp1142
	movq	%rax, -8(%rbp)	# tmp1142, ref_pic
	.loc 1 365 0 discriminator 3
	movsd	-176(%rbp), %xmm1	# lambda, tmp1143
	movsd	.LC15(%rip), %xmm0	#, tmp1144
	mulsd	%xmm1, %xmm0	# tmp1143, D.7406
	movsd	.LC16(%rip), %xmm1	#, tmp1145
	addsd	%xmm1, %xmm0	# tmp1145, D.7406
	cvttsd2si	%xmm0, %eax	# D.7406, tmp1146
	movl	%eax, -80(%rbp)	# tmp1146, lambda_factor
	.loc 1 366 0 discriminator 3
	movl	$2, -76(%rbp)	#, mvshift
	.loc 1 367 0 discriminator 3
	movq	input(%rip), %rax	# input, input.64
	movl	-156(%rbp), %edx	# blocktype, tmp1148
	movslq	%edx, %rdx	# tmp1148, tmp1147
	movl	84(%rax,%rdx,8), %eax	# input.64_168->blc_size, tmp1149
	movl	%eax, -72(%rbp)	# tmp1149, blocksize_y
	.loc 1 368 0 discriminator 3
	movq	input(%rip), %rax	# input, input.65
	movl	-156(%rbp), %edx	# blocktype, tmp1151
	movslq	%edx, %rdx	# tmp1151, tmp1150
	addq	$10, %rdx	#, tmp1152
	movl	(%rax,%rdx,8), %eax	# input.65_171->blc_size, tmp1153
	movl	%eax, -68(%rbp)	# tmp1153, blocksize_x
	.loc 1 369 0 discriminator 3
	movl	-68(%rbp), %eax	# blocksize_x, tmp1157
	sarl	$2, %eax	#, tmp1156
	movl	%eax, -64(%rbp)	# tmp1156, blocksize_x4
	.loc 1 370 0 discriminator 3
	movl	-76(%rbp), %eax	# mvshift, tmp1158
	movl	-148(%rbp), %edx	# pic_pix_x, tmp1159
	movl	%eax, %ecx	# tmp1158, tmp2109
	sall	%cl, %edx	# tmp2109, D.7400
	movswl	-160(%rbp), %eax	# pred_mv_x, D.7400
	addl	%edx, %eax	# D.7400, tmp1160
	movl	%eax, -60(%rbp)	# tmp1160, pred_x
	.loc 1 371 0 discriminator 3
	movl	-76(%rbp), %eax	# mvshift, tmp1161
	movl	-152(%rbp), %edx	# pic_pix_y, tmp1162
	movl	%eax, %ecx	# tmp1161, tmp2110
	sall	%cl, %edx	# tmp2110, D.7400
	movswl	-164(%rbp), %eax	# pred_mv_y, D.7400
	addl	%edx, %eax	# D.7400, tmp1163
	movl	%eax, -56(%rbp)	# tmp1163, pred_y
	.loc 1 372 0 discriminator 3
	movq	32(%rbp), %rax	# mv_x, tmp1164
	movzwl	(%rax), %eax	# *mv_x_184(D), D.7407
	movswl	%ax, %edx	# D.7407, D.7400
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1168
	addl	%edx, %eax	# D.7400, tmp1167
	movl	%eax, -52(%rbp)	# tmp1167, center_x
	.loc 1 373 0 discriminator 3
	movq	40(%rbp), %rax	# mv_y, tmp1169
	movzwl	(%rax), %eax	# *mv_y_188(D), D.7407
	movswl	%ax, %edx	# D.7407, D.7400
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1173
	addl	%edx, %eax	# D.7400, tmp1172
	movl	%eax, -48(%rbp)	# tmp1172, center_y
	.loc 1 374 0 discriminator 3
	movl	$0, -120(%rbp)	#, best_x
	movl	$0, -116(%rbp)	#, best_y
	.loc 1 378 0 discriminator 3
	movq	input(%rip), %rax	# input, input.66
	movl	1236(%rax), %eax	# input.66_194->successive_Bframe, tmp1174
	movl	%eax, -44(%rbp)	# tmp1174, N_Bframe
	.loc 1 380 0 discriminator 3
	movq	img(%rip), %rax	# img, img.68
	movl	72400(%rax), %eax	# img.68_196->MbaffFrameFlag, D.7400
	testl	%eax, %eax	# D.7400
	je	.L73	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.69
	movq	14168(%rax), %rdx	# img.69_198->mb_data, D.7401
	movq	img(%rip), %rax	# img, img.70
	movl	12(%rax), %eax	# img.70_200->current_mb_nr, D.7400
	cltq
	imulq	$632, %rax, %rax	#, D.7402, D.7402
	addq	%rdx, %rax	# D.7401, D.7401
	movl	532(%rax), %eax	# _204->mb_field, D.7400
	testl	%eax, %eax	# D.7400
	je	.L73	#,
	movq	img(%rip), %rax	# img, img.71
	movl	60(%rax), %eax	# img.71_206->height, D.7400
	movl	%eax, %edx	# D.7400, tmp1175
	shrl	$31, %edx	#, tmp1175
	addl	%edx, %eax	# tmp1175, tmp1176
	sarl	%eax	# tmp1177
	jmp	.L74	#
.L73:
	.loc 1 380 0 discriminator 2
	movq	img(%rip), %rax	# img, img.72
	movl	60(%rax), %eax	# img.72_209->height, iftmp.67
.L74:
	.loc 1 380 0 discriminator 3
	movl	%eax, -40(%rbp)	# iftmp.67, height
	.loc 1 384 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# center_x, tmp1178
	cmpl	48(%rbp), %eax	# search_range, tmp1178
	jle	.L75	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.73
	movl	52(%rax), %eax	# img.73_213->width, D.7400
	subl	$1, %eax	#, D.7400
	subl	48(%rbp), %eax	# search_range, D.7400
	subl	-68(%rbp), %eax	# blocksize_x, D.7400
	cmpl	-52(%rbp), %eax	# center_x, D.7400
	jle	.L75	#,
	movl	-48(%rbp), %eax	# center_y, tmp1179
	cmpl	48(%rbp), %eax	# search_range, tmp1179
	jle	.L75	#,
	.loc 1 385 0 is_stmt 1
	movl	-40(%rbp), %eax	# height, tmp1180
	subl	$1, %eax	#, D.7400
	subl	48(%rbp), %eax	# search_range, D.7400
	subl	-72(%rbp), %eax	# blocksize_y, D.7400
	cmpl	-48(%rbp), %eax	# center_y, D.7400
	jle	.L75	#,
	.loc 1 387 0
	movq	$FastLineX, -16(%rbp)	#, get_ref_line
	jmp	.L76	#
.L75:
	.loc 1 391 0
	movq	$UMVLineX, -16(%rbp)	#, get_ref_line
.L76:
	.loc 1 395 0
	movl	48(%rbp), %eax	# search_range, tmp1181
	sall	$3, %eax	#, D.7400
	leal	4(%rax), %edx	#, D.7400
	movl	48(%rbp), %eax	# search_range, tmp1182
	addl	%eax, %eax	# D.7400
	addl	$1, %eax	#, D.7400
	imull	%edx, %eax	# D.7400, D.7400
	movslq	%eax, %rdx	# D.7400, D.7402
	movq	McostState(%rip), %rax	# McostState, McostState.74
	movq	(%rax), %rax	# *McostState.74_229, D.7408
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7408,
	call	memset	#
	.loc 1 398 0
	cmpw	$0, -140(%rbp)	#, ref
	jle	.L77	#,
	.loc 1 400 0
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.75
	testl	%eax, %eax	# pred_SAD_ref.75
	je	.L78	#,
	.loc 1 402 0
	movl	-156(%rbp), %eax	# blocktype, tmp1184
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_ref(%rip), %edx	# pred_SAD_ref, pred_SAD_ref.76
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.77
	imull	%edx, %eax	# pred_SAD_ref.76, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1186
	cltq
	movss	AlphaSec(,%rax,4), %xmm1	# AlphaSec, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1187
	movss	%xmm0, -92(%rbp)	# tmp1187, betaSec
	.loc 1 403 0
	movl	-156(%rbp), %eax	# blocktype, tmp1189
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_ref(%rip), %edx	# pred_SAD_ref, pred_SAD_ref.78
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.79
	imull	%edx, %eax	# pred_SAD_ref.78, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1191
	cltq
	movss	AlphaThird(,%rax,4), %xmm1	# AlphaThird, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1192
	movss	%xmm0, -88(%rbp)	# tmp1192, betaThird
	jmp	.L80	#
.L78:
	.loc 1 407 0
	movl	.LC17(%rip), %eax	#, tmp1193
	movl	%eax, -92(%rbp)	# tmp1193, betaSec
	.loc 1 408 0
	movl	.LC17(%rip), %eax	#, tmp1194
	movl	%eax, -88(%rbp)	# tmp1194, betaThird
	jmp	.L80	#
.L77:
	.loc 1 413 0
	cmpl	$1, -156(%rbp)	#, blocktype
	jne	.L81	#,
	.loc 1 415 0
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.80
	testl	%eax, %eax	# pred_SAD_space.80
	je	.L82	#,
	.loc 1 417 0
	movl	-156(%rbp), %eax	# blocktype, tmp1196
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_space(%rip), %edx	# pred_SAD_space, pred_SAD_space.81
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.82
	imull	%edx, %eax	# pred_SAD_space.81, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1198
	cltq
	movss	AlphaSec(,%rax,4), %xmm1	# AlphaSec, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1199
	movss	%xmm0, -92(%rbp)	# tmp1199, betaSec
	.loc 1 418 0
	movl	-156(%rbp), %eax	# blocktype, tmp1201
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_space(%rip), %edx	# pred_SAD_space, pred_SAD_space.83
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.84
	imull	%edx, %eax	# pred_SAD_space.83, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1203
	cltq
	movss	AlphaThird(,%rax,4), %xmm1	# AlphaThird, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1204
	movss	%xmm0, -88(%rbp)	# tmp1204, betaThird
	jmp	.L80	#
.L82:
	.loc 1 422 0
	movl	.LC17(%rip), %eax	#, tmp1205
	movl	%eax, -92(%rbp)	# tmp1205, betaSec
	.loc 1 423 0
	movl	.LC17(%rip), %eax	#, tmp1206
	movl	%eax, -88(%rbp)	# tmp1206, betaThird
	jmp	.L80	#
.L81:
	.loc 1 428 0
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.85
	testl	%eax, %eax	# pred_SAD_uplayer.85
	je	.L84	#,
	.loc 1 430 0
	movl	-156(%rbp), %eax	# blocktype, tmp1208
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_uplayer(%rip), %edx	# pred_SAD_uplayer, pred_SAD_uplayer.86
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.87
	imull	%edx, %eax	# pred_SAD_uplayer.86, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1210
	cltq
	movss	AlphaSec(,%rax,4), %xmm1	# AlphaSec, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1211
	movss	%xmm0, -92(%rbp)	# tmp1211, betaSec
	.loc 1 431 0
	movl	-156(%rbp), %eax	# blocktype, tmp1213
	cltq
	movss	Bsize(,%rax,4), %xmm1	# Bsize, D.7409
	movl	pred_SAD_uplayer(%rip), %edx	# pred_SAD_uplayer, pred_SAD_uplayer.88
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.89
	imull	%edx, %eax	# pred_SAD_uplayer.88, D.7400
	cvtsi2ss	%eax, %xmm0	# D.7400, D.7409
	divss	%xmm0, %xmm1	# D.7409, D.7409
	movaps	%xmm1, %xmm0	# D.7409, D.7409
	movl	-156(%rbp), %eax	# blocktype, tmp1215
	cltq
	movss	AlphaThird(,%rax,4), %xmm1	# AlphaThird, D.7409
	subss	%xmm1, %xmm0	# D.7409, tmp1216
	movss	%xmm0, -88(%rbp)	# tmp1216, betaThird
	jmp	.L80	#
.L84:
	.loc 1 435 0
	movl	.LC17(%rip), %eax	#, tmp1217
	movl	%eax, -92(%rbp)	# tmp1217, betaSec
	.loc 1 436 0
	movl	.LC17(%rip), %eax	#, tmp1218
	movl	%eax, -88(%rbp)	# tmp1218, betaThird
.L80:
	.loc 1 443 0
	movl	-52(%rbp), %eax	# center_x, tmp1219
	movl	%eax, -36(%rbp)	# tmp1219, cand_x
	.loc 1 444 0
	movl	-48(%rbp), %eax	# center_y, tmp1220
	movl	%eax, -32(%rbp)	# tmp1220, cand_y
	.loc 1 445 0
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.90
	movl	-76(%rbp), %eax	# mvshift, tmp1221
	movl	-36(%rbp), %esi	# cand_x, tmp1222
	movl	%eax, %ecx	# tmp1221, tmp2119
	sall	%cl, %esi	# tmp2119, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.90, D.7408
	movl	(%rax), %edx	# *_295, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.91
	movl	-76(%rbp), %eax	# mvshift, tmp1223
	movl	-32(%rbp), %edi	# cand_y, tmp1224
	movl	%eax, %ecx	# tmp1223, tmp2121
	sall	%cl, %edi	# tmp2121, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.91, D.7408
	movl	(%rax), %eax	# *_302, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1225
	movl	%eax, -28(%rbp)	# tmp1225, mcost
	.loc 1 446 0
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1226
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1227
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1228
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1229
	movq	-136(%rbp), %rsi	# orig_pic, tmp1230
	movq	-8(%rbp), %rax	# ref_pic, tmp1231
	movl	-32(%rbp), %edi	# cand_y, tmp1232
	movl	%edi, 24(%rsp)	# tmp1232,
	movl	-36(%rbp), %edi	# cand_x, tmp1233
	movl	%edi, 16(%rsp)	# tmp1233,
	movl	56(%rbp), %edi	# min_mcost, tmp1234
	movl	%edi, 8(%rsp)	# tmp1234,
	movl	-28(%rbp), %edi	# mcost, tmp1235
	movl	%edi, (%rsp)	# tmp1235,
	movq	%rax, %rdi	# tmp1231,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1236, mcost
	.loc 1 447 0
	movq	McostState(%rip), %rax	# McostState, McostState.92
	movl	48(%rbp), %edx	# search_range, tmp1237
	movslq	%edx, %rdx	# tmp1237, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_313, D.7408
	movl	48(%rbp), %edx	# search_range, tmp1238
	movslq	%edx, %rdx	# tmp1238, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1239
	movl	%eax, (%rdx)	# tmp1239, *_317
	.loc 1 448 0
	movl	-28(%rbp), %eax	# mcost, tmp1240
	cmpl	56(%rbp), %eax	# min_mcost, tmp1240
	jge	.L85	#,
	.loc 1 450 0
	movl	-28(%rbp), %eax	# mcost, tmp1241
	movl	%eax, 56(%rbp)	# tmp1241, min_mcost
	.loc 1 451 0
	movl	-36(%rbp), %eax	# cand_x, tmp1242
	movl	%eax, -120(%rbp)	# tmp1242, best_x
	.loc 1 452 0
	movl	-32(%rbp), %eax	# cand_y, tmp1243
	movl	%eax, -116(%rbp)	# tmp1243, best_y
.L85:
	.loc 1 455 0
	movl	-120(%rbp), %eax	# best_x, tmp1244
	movl	%eax, -108(%rbp)	# tmp1244, iXMinNow
	.loc 1 456 0
	movl	-116(%rbp), %eax	# best_y, tmp1245
	movl	%eax, -112(%rbp)	# tmp1245, iYMinNow
	.loc 1 457 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L86	#
.L88:
	.loc 1 459 0
	movl	-100(%rbp), %eax	# m, tmp1247
	cltq
	movl	Diamond_x.4793(,%rax,4), %edx	# Diamond_x, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1251
	addl	%edx, %eax	# D.7400, tmp1250
	movl	%eax, -36(%rbp)	# tmp1250, cand_x
	.loc 1 460 0
	movl	-100(%rbp), %eax	# m, tmp1253
	cltq
	movl	Diamond_y.4794(,%rax,4), %edx	# Diamond_y, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp1257
	addl	%edx, %eax	# D.7400, tmp1256
	movl	%eax, -32(%rbp)	# tmp1256, cand_y
	.loc 1 461 0
	movl	-52(%rbp), %eax	# center_x, tmp1258
	movl	-36(%rbp), %edx	# cand_x, tmp1259
	subl	%eax, %edx	# tmp1258, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1260, D.7400
	subl	%edx, %eax	# tmp1260, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L87	#,
	.loc 1 461 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1261
	movl	-32(%rbp), %edx	# cand_y, tmp1262
	subl	%eax, %edx	# tmp1261, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1263, D.7400
	subl	%edx, %eax	# tmp1263, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L87	#,
	movq	McostState(%rip), %rax	# McostState, McostState.93
	movl	-48(%rbp), %edx	# center_y, tmp1264
	movl	-32(%rbp), %ecx	# cand_y, tmp1265
	subl	%edx, %ecx	# tmp1264, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1266
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_337, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1267
	movl	-36(%rbp), %ecx	# cand_x, tmp1268
	subl	%edx, %ecx	# tmp1267, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1269
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_343, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L87	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.94
	movl	-76(%rbp), %eax	# mvshift, tmp1270
	movl	-36(%rbp), %esi	# cand_x, tmp1271
	movl	%eax, %ecx	# tmp1270, tmp2125
	sall	%cl, %esi	# tmp2125, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.94, D.7408
	movl	(%rax), %edx	# *_350, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.95
	movl	-76(%rbp), %eax	# mvshift, tmp1272
	movl	-32(%rbp), %edi	# cand_y, tmp1273
	movl	%eax, %ecx	# tmp1272, tmp2127
	sall	%cl, %edi	# tmp2127, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.95, D.7408
	movl	(%rax), %eax	# *_357, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1274
	movl	%eax, -28(%rbp)	# tmp1274, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1275
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1276
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1277
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1278
	movq	-136(%rbp), %rsi	# orig_pic, tmp1279
	movq	-8(%rbp), %rax	# ref_pic, tmp1280
	movl	-32(%rbp), %edi	# cand_y, tmp1281
	movl	%edi, 24(%rsp)	# tmp1281,
	movl	-36(%rbp), %edi	# cand_x, tmp1282
	movl	%edi, 16(%rsp)	# tmp1282,
	movl	56(%rbp), %edi	# min_mcost, tmp1283
	movl	%edi, 8(%rsp)	# tmp1283,
	movl	-28(%rbp), %edi	# mcost, tmp1284
	movl	%edi, (%rsp)	# tmp1284,
	movq	%rax, %rdi	# tmp1280,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1285, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.96
	movl	-48(%rbp), %edx	# center_y, tmp1286
	movl	-32(%rbp), %ecx	# cand_y, tmp1287
	subl	%edx, %ecx	# tmp1286, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1288
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_368, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1289
	movl	-36(%rbp), %ecx	# cand_x, tmp1290
	subl	%edx, %ecx	# tmp1289, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1291
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1292
	movl	%eax, (%rdx)	# tmp1292, *_374
	movl	-28(%rbp), %eax	# mcost, tmp1293
	cmpl	56(%rbp), %eax	# min_mcost, tmp1293
	jge	.L87	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1294
	movl	%eax, -120(%rbp)	# tmp1294, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1295
	movl	%eax, -116(%rbp)	# tmp1295, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1296
	movl	%eax, 56(%rbp)	# tmp1296, min_mcost
.L87:
	.loc 1 457 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L86:
	.loc 1 457 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, m
	jle	.L88	#,
	.loc 1 464 0 is_stmt 1
	movl	-52(%rbp), %eax	# center_x, tmp1297
	cmpl	-148(%rbp), %eax	# pic_pix_x, tmp1297
	jne	.L89	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1298
	cmpl	-152(%rbp), %eax	# pic_pix_y, tmp1298
	je	.L90	#,
.L89:
	.loc 1 466 0 is_stmt 1
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1299
	movl	%eax, -36(%rbp)	# tmp1299, cand_x
	.loc 1 467 0
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1300
	movl	%eax, -32(%rbp)	# tmp1300, cand_y
	.loc 1 468 0
	movl	-52(%rbp), %eax	# center_x, tmp1301
	movl	-36(%rbp), %edx	# cand_x, tmp1302
	subl	%eax, %edx	# tmp1301, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1303, D.7400
	subl	%edx, %eax	# tmp1303, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L91	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1304
	movl	-32(%rbp), %edx	# cand_y, tmp1305
	subl	%eax, %edx	# tmp1304, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1306, D.7400
	subl	%edx, %eax	# tmp1306, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L91	#,
	movq	McostState(%rip), %rax	# McostState, McostState.97
	movl	-48(%rbp), %edx	# center_y, tmp1307
	movl	-32(%rbp), %ecx	# cand_y, tmp1308
	subl	%edx, %ecx	# tmp1307, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1309
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_390, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1310
	movl	-36(%rbp), %ecx	# cand_x, tmp1311
	subl	%edx, %ecx	# tmp1310, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1312
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_396, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L91	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.98
	movl	-76(%rbp), %eax	# mvshift, tmp1313
	movl	-36(%rbp), %esi	# cand_x, tmp1314
	movl	%eax, %ecx	# tmp1313, tmp2131
	sall	%cl, %esi	# tmp2131, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.98, D.7408
	movl	(%rax), %edx	# *_403, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.99
	movl	-76(%rbp), %eax	# mvshift, tmp1315
	movl	-32(%rbp), %edi	# cand_y, tmp1316
	movl	%eax, %ecx	# tmp1315, tmp2133
	sall	%cl, %edi	# tmp2133, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.99, D.7408
	movl	(%rax), %eax	# *_410, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1317
	movl	%eax, -28(%rbp)	# tmp1317, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1318
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1319
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1320
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1321
	movq	-136(%rbp), %rsi	# orig_pic, tmp1322
	movq	-8(%rbp), %rax	# ref_pic, tmp1323
	movl	-32(%rbp), %edi	# cand_y, tmp1324
	movl	%edi, 24(%rsp)	# tmp1324,
	movl	-36(%rbp), %edi	# cand_x, tmp1325
	movl	%edi, 16(%rsp)	# tmp1325,
	movl	56(%rbp), %edi	# min_mcost, tmp1326
	movl	%edi, 8(%rsp)	# tmp1326,
	movl	-28(%rbp), %edi	# mcost, tmp1327
	movl	%edi, (%rsp)	# tmp1327,
	movq	%rax, %rdi	# tmp1323,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1328, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.100
	movl	-48(%rbp), %edx	# center_y, tmp1329
	movl	-32(%rbp), %ecx	# cand_y, tmp1330
	subl	%edx, %ecx	# tmp1329, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1331
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_421, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1332
	movl	-36(%rbp), %ecx	# cand_x, tmp1333
	subl	%edx, %ecx	# tmp1332, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1334
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1335
	movl	%eax, (%rdx)	# tmp1335, *_427
	movl	-28(%rbp), %eax	# mcost, tmp1336
	cmpl	56(%rbp), %eax	# min_mcost, tmp1336
	jge	.L91	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1337
	movl	%eax, -120(%rbp)	# tmp1337, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1338
	movl	%eax, -116(%rbp)	# tmp1338, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1339
	movl	%eax, 56(%rbp)	# tmp1339, min_mcost
.L91:
	.loc 1 470 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp1340
	movl	%eax, -108(%rbp)	# tmp1340, iXMinNow
	.loc 1 471 0
	movl	-116(%rbp), %eax	# best_y, tmp1341
	movl	%eax, -112(%rbp)	# tmp1341, iYMinNow
	.loc 1 472 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L92	#
.L94:
	.loc 1 474 0
	movl	-100(%rbp), %eax	# m, tmp1343
	cltq
	movl	Diamond_x.4793(,%rax,4), %edx	# Diamond_x, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1347
	addl	%edx, %eax	# D.7400, tmp1346
	movl	%eax, -36(%rbp)	# tmp1346, cand_x
	.loc 1 475 0
	movl	-100(%rbp), %eax	# m, tmp1349
	cltq
	movl	Diamond_y.4794(,%rax,4), %edx	# Diamond_y, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp1353
	addl	%edx, %eax	# D.7400, tmp1352
	movl	%eax, -32(%rbp)	# tmp1352, cand_y
	.loc 1 476 0
	movl	-52(%rbp), %eax	# center_x, tmp1354
	movl	-36(%rbp), %edx	# cand_x, tmp1355
	subl	%eax, %edx	# tmp1354, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1356, D.7400
	subl	%edx, %eax	# tmp1356, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L93	#,
	.loc 1 476 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1357
	movl	-32(%rbp), %edx	# cand_y, tmp1358
	subl	%eax, %edx	# tmp1357, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1359, D.7400
	subl	%edx, %eax	# tmp1359, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L93	#,
	movq	McostState(%rip), %rax	# McostState, McostState.101
	movl	-48(%rbp), %edx	# center_y, tmp1360
	movl	-32(%rbp), %ecx	# cand_y, tmp1361
	subl	%edx, %ecx	# tmp1360, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1362
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_447, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1363
	movl	-36(%rbp), %ecx	# cand_x, tmp1364
	subl	%edx, %ecx	# tmp1363, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1365
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_453, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L93	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.102
	movl	-76(%rbp), %eax	# mvshift, tmp1366
	movl	-36(%rbp), %esi	# cand_x, tmp1367
	movl	%eax, %ecx	# tmp1366, tmp2137
	sall	%cl, %esi	# tmp2137, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.102, D.7408
	movl	(%rax), %edx	# *_460, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.103
	movl	-76(%rbp), %eax	# mvshift, tmp1368
	movl	-32(%rbp), %edi	# cand_y, tmp1369
	movl	%eax, %ecx	# tmp1368, tmp2139
	sall	%cl, %edi	# tmp2139, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.103, D.7408
	movl	(%rax), %eax	# *_467, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1370
	movl	%eax, -28(%rbp)	# tmp1370, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1371
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1372
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1373
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1374
	movq	-136(%rbp), %rsi	# orig_pic, tmp1375
	movq	-8(%rbp), %rax	# ref_pic, tmp1376
	movl	-32(%rbp), %edi	# cand_y, tmp1377
	movl	%edi, 24(%rsp)	# tmp1377,
	movl	-36(%rbp), %edi	# cand_x, tmp1378
	movl	%edi, 16(%rsp)	# tmp1378,
	movl	56(%rbp), %edi	# min_mcost, tmp1379
	movl	%edi, 8(%rsp)	# tmp1379,
	movl	-28(%rbp), %edi	# mcost, tmp1380
	movl	%edi, (%rsp)	# tmp1380,
	movq	%rax, %rdi	# tmp1376,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1381, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.104
	movl	-48(%rbp), %edx	# center_y, tmp1382
	movl	-32(%rbp), %ecx	# cand_y, tmp1383
	subl	%edx, %ecx	# tmp1382, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1384
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_478, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1385
	movl	-36(%rbp), %ecx	# cand_x, tmp1386
	subl	%edx, %ecx	# tmp1385, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1387
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1388
	movl	%eax, (%rdx)	# tmp1388, *_484
	movl	-28(%rbp), %eax	# mcost, tmp1389
	cmpl	56(%rbp), %eax	# min_mcost, tmp1389
	jge	.L93	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1390
	movl	%eax, -120(%rbp)	# tmp1390, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1391
	movl	%eax, -116(%rbp)	# tmp1391, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1392
	movl	%eax, 56(%rbp)	# tmp1392, min_mcost
.L93:
	.loc 1 472 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L92:
	.loc 1 472 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, m
	jle	.L94	#,
.L90:
	.loc 1 480 0 is_stmt 1
	cmpl	$1, -156(%rbp)	#, blocktype
	jle	.L95	#,
	.loc 1 482 0
	movl	pred_MV_uplayer(%rip), %eax	# pred_MV_uplayer, D.7400
	leal	3(%rax), %edx	#, tmp1394
	testl	%eax, %eax	# tmp1393
	cmovs	%edx, %eax	# tmp1394,, tmp1393
	sarl	$2, %eax	#, tmp1395
	movl	%eax, %edx	# tmp1395, D.7400
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1399
	addl	%edx, %eax	# D.7400, tmp1398
	movl	%eax, -36(%rbp)	# tmp1398, cand_x
	.loc 1 483 0
	movl	pred_MV_uplayer+4(%rip), %eax	# pred_MV_uplayer, D.7400
	leal	3(%rax), %edx	#, tmp1401
	testl	%eax, %eax	# tmp1400
	cmovs	%edx, %eax	# tmp1401,, tmp1400
	sarl	$2, %eax	#, tmp1402
	movl	%eax, %edx	# tmp1402, D.7400
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1406
	addl	%edx, %eax	# D.7400, tmp1405
	movl	%eax, -32(%rbp)	# tmp1405, cand_y
	.loc 1 484 0
	movl	-52(%rbp), %eax	# center_x, tmp1407
	movl	-36(%rbp), %edx	# cand_x, tmp1408
	subl	%eax, %edx	# tmp1407, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1409, D.7400
	subl	%edx, %eax	# tmp1409, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L96	#,
	.loc 1 484 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1410
	movl	-32(%rbp), %edx	# cand_y, tmp1411
	subl	%eax, %edx	# tmp1410, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1412, D.7400
	subl	%edx, %eax	# tmp1412, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L96	#,
	movq	McostState(%rip), %rax	# McostState, McostState.105
	movl	-48(%rbp), %edx	# center_y, tmp1413
	movl	-32(%rbp), %ecx	# cand_y, tmp1414
	subl	%edx, %ecx	# tmp1413, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1415
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_504, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1416
	movl	-36(%rbp), %ecx	# cand_x, tmp1417
	subl	%edx, %ecx	# tmp1416, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1418
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_510, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L96	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.106
	movl	-76(%rbp), %eax	# mvshift, tmp1419
	movl	-36(%rbp), %esi	# cand_x, tmp1420
	movl	%eax, %ecx	# tmp1419, tmp2143
	sall	%cl, %esi	# tmp2143, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.106, D.7408
	movl	(%rax), %edx	# *_517, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.107
	movl	-76(%rbp), %eax	# mvshift, tmp1421
	movl	-32(%rbp), %edi	# cand_y, tmp1422
	movl	%eax, %ecx	# tmp1421, tmp2145
	sall	%cl, %edi	# tmp2145, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.107, D.7408
	movl	(%rax), %eax	# *_524, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1423
	movl	%eax, -28(%rbp)	# tmp1423, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1424
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1425
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1426
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1427
	movq	-136(%rbp), %rsi	# orig_pic, tmp1428
	movq	-8(%rbp), %rax	# ref_pic, tmp1429
	movl	-32(%rbp), %edi	# cand_y, tmp1430
	movl	%edi, 24(%rsp)	# tmp1430,
	movl	-36(%rbp), %edi	# cand_x, tmp1431
	movl	%edi, 16(%rsp)	# tmp1431,
	movl	56(%rbp), %edi	# min_mcost, tmp1432
	movl	%edi, 8(%rsp)	# tmp1432,
	movl	-28(%rbp), %edi	# mcost, tmp1433
	movl	%edi, (%rsp)	# tmp1433,
	movq	%rax, %rdi	# tmp1429,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1434, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.108
	movl	-48(%rbp), %edx	# center_y, tmp1435
	movl	-32(%rbp), %ecx	# cand_y, tmp1436
	subl	%edx, %ecx	# tmp1435, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1437
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_535, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1438
	movl	-36(%rbp), %ecx	# cand_x, tmp1439
	subl	%edx, %ecx	# tmp1438, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1440
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1441
	movl	%eax, (%rdx)	# tmp1441, *_541
	movl	-28(%rbp), %eax	# mcost, tmp1442
	cmpl	56(%rbp), %eax	# min_mcost, tmp1442
	jge	.L96	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1443
	movl	%eax, -120(%rbp)	# tmp1443, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1444
	movl	%eax, -116(%rbp)	# tmp1444, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1445
	movl	%eax, 56(%rbp)	# tmp1445, min_mcost
.L96:
	.loc 1 485 0 is_stmt 1
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.109
	movl	56(%rbp), %edx	# min_mcost, tmp1446
	subl	%eax, %edx	# pred_SAD_uplayer.109, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.110
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.110, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L221	#,
	.loc 1 486 0
	jmp	.L99	#
.L221:
	.loc 1 487 0
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.111
	movl	56(%rbp), %edx	# min_mcost, tmp1447
	subl	%eax, %edx	# pred_SAD_uplayer.111, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.112
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.112, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L95	#,
	.loc 1 488 0
	jmp	.L101	#
.L95:
	.loc 1 492 0
	movq	img(%rip), %rax	# img, img.113
	movl	(%rax), %eax	# img.113_557->number, D.7400
	movswl	-140(%rbp), %edx	# ref, D.7400
	addl	$1, %edx	#, D.7400
	cmpl	%edx, %eax	# D.7400, D.7400
	jle	.L102	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	cmpw	$-1, -140(%rbp)	#, ref
	jne	.L103	#,
.L102:
	.loc 1 492 0 discriminator 2
	cmpl	$1, -144(%rbp)	#, list
	jne	.L104	#,
	.loc 1 492 0 discriminator 1
	movl	Bframe_ctr(%rip), %eax	# Bframe_ctr, Bframe_ctr.114
	cltd
	idivl	-44(%rbp)	# N_Bframe
	movl	%edx, %eax	# tmp1448, D.7400
	cmpl	$1, %eax	#, D.7400
	jle	.L104	#,
.L103:
	.loc 1 494 0 is_stmt 1
	movl	pred_MV_time(%rip), %eax	# pred_MV_time, D.7400
	leal	3(%rax), %edx	#, tmp1451
	testl	%eax, %eax	# tmp1450
	cmovs	%edx, %eax	# tmp1451,, tmp1450
	sarl	$2, %eax	#, tmp1452
	movl	%eax, %edx	# tmp1452, D.7400
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1456
	addl	%edx, %eax	# D.7400, tmp1455
	movl	%eax, -36(%rbp)	# tmp1455, cand_x
	.loc 1 495 0
	movl	pred_MV_time+4(%rip), %eax	# pred_MV_time, D.7400
	leal	3(%rax), %edx	#, tmp1458
	testl	%eax, %eax	# tmp1457
	cmovs	%edx, %eax	# tmp1458,, tmp1457
	sarl	$2, %eax	#, tmp1459
	movl	%eax, %edx	# tmp1459, D.7400
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1463
	addl	%edx, %eax	# D.7400, tmp1462
	movl	%eax, -32(%rbp)	# tmp1462, cand_y
	.loc 1 496 0
	movl	-52(%rbp), %eax	# center_x, tmp1464
	movl	-36(%rbp), %edx	# cand_x, tmp1465
	subl	%eax, %edx	# tmp1464, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1466, D.7400
	subl	%edx, %eax	# tmp1466, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L104	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1467
	movl	-32(%rbp), %edx	# cand_y, tmp1468
	subl	%eax, %edx	# tmp1467, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1469, D.7400
	subl	%edx, %eax	# tmp1469, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L104	#,
	movq	McostState(%rip), %rax	# McostState, McostState.115
	movl	-48(%rbp), %edx	# center_y, tmp1470
	movl	-32(%rbp), %ecx	# cand_y, tmp1471
	subl	%edx, %ecx	# tmp1470, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1472
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_578, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1473
	movl	-36(%rbp), %ecx	# cand_x, tmp1474
	subl	%edx, %ecx	# tmp1473, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1475
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_584, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L104	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.116
	movl	-76(%rbp), %eax	# mvshift, tmp1476
	movl	-36(%rbp), %esi	# cand_x, tmp1477
	movl	%eax, %ecx	# tmp1476, tmp2151
	sall	%cl, %esi	# tmp2151, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.116, D.7408
	movl	(%rax), %edx	# *_591, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.117
	movl	-76(%rbp), %eax	# mvshift, tmp1478
	movl	-32(%rbp), %edi	# cand_y, tmp1479
	movl	%eax, %ecx	# tmp1478, tmp2153
	sall	%cl, %edi	# tmp2153, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.117, D.7408
	movl	(%rax), %eax	# *_598, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1480
	movl	%eax, -28(%rbp)	# tmp1480, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1481
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1482
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1483
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1484
	movq	-136(%rbp), %rsi	# orig_pic, tmp1485
	movq	-8(%rbp), %rax	# ref_pic, tmp1486
	movl	-32(%rbp), %edi	# cand_y, tmp1487
	movl	%edi, 24(%rsp)	# tmp1487,
	movl	-36(%rbp), %edi	# cand_x, tmp1488
	movl	%edi, 16(%rsp)	# tmp1488,
	movl	56(%rbp), %edi	# min_mcost, tmp1489
	movl	%edi, 8(%rsp)	# tmp1489,
	movl	-28(%rbp), %edi	# mcost, tmp1490
	movl	%edi, (%rsp)	# tmp1490,
	movq	%rax, %rdi	# tmp1486,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1491, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.118
	movl	-48(%rbp), %edx	# center_y, tmp1492
	movl	-32(%rbp), %ecx	# cand_y, tmp1493
	subl	%edx, %ecx	# tmp1492, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1494
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_609, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1495
	movl	-36(%rbp), %ecx	# cand_x, tmp1496
	subl	%edx, %ecx	# tmp1495, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1497
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1498
	movl	%eax, (%rdx)	# tmp1498, *_615
	movl	-28(%rbp), %eax	# mcost, tmp1499
	cmpl	56(%rbp), %eax	# min_mcost, tmp1499
	jge	.L104	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1500
	movl	%eax, -120(%rbp)	# tmp1500, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1501
	movl	%eax, -116(%rbp)	# tmp1501, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1502
	movl	%eax, 56(%rbp)	# tmp1502, min_mcost
.L104:
	.loc 1 500 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.119
	movl	2880(%rax), %eax	# input.119_619->PicInterlace, D.7400
	cmpl	$1, %eax	#, D.7400
	jne	.L105	#,
	.loc 1 502 0
	cmpl	$0, -144(%rbp)	#, list
	jne	.L106	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	cmpw	$0, -140(%rbp)	#, ref
	jg	.L107	#,
.L106:
	.loc 1 502 0 discriminator 2
	movq	img(%rip), %rax	# img, img.120
	movl	24(%rax), %eax	# img.120_621->type, D.7400
	cmpl	$1, %eax	#, D.7400
	jne	.L109	#,
	.loc 1 502 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, list
	jne	.L109	#,
	cmpw	$0, -140(%rbp)	#, ref
	je	.L107	#,
	cmpw	$2, -140(%rbp)	#, ref
	jne	.L109	#,
.L107:
	.loc 1 505 0 is_stmt 1
	movl	pred_MV_ref(%rip), %eax	# pred_MV_ref, D.7400
	leal	3(%rax), %edx	#, tmp1504
	testl	%eax, %eax	# tmp1503
	cmovs	%edx, %eax	# tmp1504,, tmp1503
	sarl	$2, %eax	#, tmp1505
	movl	%eax, %edx	# tmp1505, D.7400
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1509
	addl	%edx, %eax	# D.7400, tmp1508
	movl	%eax, -36(%rbp)	# tmp1508, cand_x
	.loc 1 506 0
	movl	pred_MV_ref+4(%rip), %eax	# pred_MV_ref, D.7400
	leal	3(%rax), %edx	#, tmp1511
	testl	%eax, %eax	# tmp1510
	cmovs	%edx, %eax	# tmp1511,, tmp1510
	sarl	$2, %eax	#, tmp1512
	movl	%eax, %edx	# tmp1512, D.7400
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1516
	addl	%edx, %eax	# D.7400, tmp1515
	movl	%eax, -32(%rbp)	# tmp1515, cand_y
	.loc 1 507 0
	movl	-52(%rbp), %eax	# center_x, tmp1517
	movl	-36(%rbp), %edx	# cand_x, tmp1518
	subl	%eax, %edx	# tmp1517, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1519, D.7400
	subl	%edx, %eax	# tmp1519, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L109	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1520
	movl	-32(%rbp), %edx	# cand_y, tmp1521
	subl	%eax, %edx	# tmp1520, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1522, D.7400
	subl	%edx, %eax	# tmp1522, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L109	#,
	movq	McostState(%rip), %rax	# McostState, McostState.121
	movl	-48(%rbp), %edx	# center_y, tmp1523
	movl	-32(%rbp), %ecx	# cand_y, tmp1524
	subl	%edx, %ecx	# tmp1523, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1525
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_638, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1526
	movl	-36(%rbp), %ecx	# cand_x, tmp1527
	subl	%edx, %ecx	# tmp1526, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1528
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_644, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L109	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.122
	movl	-76(%rbp), %eax	# mvshift, tmp1529
	movl	-36(%rbp), %esi	# cand_x, tmp1530
	movl	%eax, %ecx	# tmp1529, tmp2157
	sall	%cl, %esi	# tmp2157, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.122, D.7408
	movl	(%rax), %edx	# *_651, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.123
	movl	-76(%rbp), %eax	# mvshift, tmp1531
	movl	-32(%rbp), %edi	# cand_y, tmp1532
	movl	%eax, %ecx	# tmp1531, tmp2159
	sall	%cl, %edi	# tmp2159, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.123, D.7408
	movl	(%rax), %eax	# *_658, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1533
	movl	%eax, -28(%rbp)	# tmp1533, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1534
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1535
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1536
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1537
	movq	-136(%rbp), %rsi	# orig_pic, tmp1538
	movq	-8(%rbp), %rax	# ref_pic, tmp1539
	movl	-32(%rbp), %edi	# cand_y, tmp1540
	movl	%edi, 24(%rsp)	# tmp1540,
	movl	-36(%rbp), %edi	# cand_x, tmp1541
	movl	%edi, 16(%rsp)	# tmp1541,
	movl	56(%rbp), %edi	# min_mcost, tmp1542
	movl	%edi, 8(%rsp)	# tmp1542,
	movl	-28(%rbp), %edi	# mcost, tmp1543
	movl	%edi, (%rsp)	# tmp1543,
	movq	%rax, %rdi	# tmp1539,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1544, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.124
	movl	-48(%rbp), %edx	# center_y, tmp1545
	movl	-32(%rbp), %ecx	# cand_y, tmp1546
	subl	%edx, %ecx	# tmp1545, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1547
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_669, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1548
	movl	-36(%rbp), %ecx	# cand_x, tmp1549
	subl	%edx, %ecx	# tmp1548, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1550
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1551
	movl	%eax, (%rdx)	# tmp1551, *_675
	movl	-28(%rbp), %eax	# mcost, tmp1552
	cmpl	56(%rbp), %eax	# min_mcost, tmp1552
	jge	.L109	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1553
	movl	%eax, -120(%rbp)	# tmp1553, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1554
	movl	%eax, -116(%rbp)	# tmp1554, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1555
	movl	%eax, 56(%rbp)	# tmp1555, min_mcost
	jmp	.L109	#
.L105:
	.loc 1 512 0 is_stmt 1
	cmpl	$0, -144(%rbp)	#, list
	jne	.L110	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	cmpw	$0, -140(%rbp)	#, ref
	jg	.L111	#,
.L110:
	.loc 1 512 0 discriminator 2
	movq	img(%rip), %rax	# img, img.125
	movl	24(%rax), %eax	# img.125_679->type, D.7400
	cmpl	$1, %eax	#, D.7400
	jne	.L109	#,
	.loc 1 512 0 discriminator 1
	cmpl	$0, -144(%rbp)	#, list
	jne	.L109	#,
	cmpw	$0, -140(%rbp)	#, ref
	jne	.L109	#,
.L111:
	.loc 1 515 0 is_stmt 1
	movl	pred_MV_ref(%rip), %eax	# pred_MV_ref, D.7400
	leal	3(%rax), %edx	#, tmp1557
	testl	%eax, %eax	# tmp1556
	cmovs	%edx, %eax	# tmp1557,, tmp1556
	sarl	$2, %eax	#, tmp1558
	movl	%eax, %edx	# tmp1558, D.7400
	movl	-148(%rbp), %eax	# pic_pix_x, tmp1562
	addl	%edx, %eax	# D.7400, tmp1561
	movl	%eax, -36(%rbp)	# tmp1561, cand_x
	.loc 1 516 0
	movl	pred_MV_ref+4(%rip), %eax	# pred_MV_ref, D.7400
	leal	3(%rax), %edx	#, tmp1564
	testl	%eax, %eax	# tmp1563
	cmovs	%edx, %eax	# tmp1564,, tmp1563
	sarl	$2, %eax	#, tmp1565
	movl	%eax, %edx	# tmp1565, D.7400
	movl	-152(%rbp), %eax	# pic_pix_y, tmp1569
	addl	%edx, %eax	# D.7400, tmp1568
	movl	%eax, -32(%rbp)	# tmp1568, cand_y
	.loc 1 517 0
	movl	-52(%rbp), %eax	# center_x, tmp1570
	movl	-36(%rbp), %edx	# cand_x, tmp1571
	subl	%eax, %edx	# tmp1570, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1572, D.7400
	subl	%edx, %eax	# tmp1572, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L109	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1573
	movl	-32(%rbp), %edx	# cand_y, tmp1574
	subl	%eax, %edx	# tmp1573, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1575, D.7400
	subl	%edx, %eax	# tmp1575, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L109	#,
	movq	McostState(%rip), %rax	# McostState, McostState.126
	movl	-48(%rbp), %edx	# center_y, tmp1576
	movl	-32(%rbp), %ecx	# cand_y, tmp1577
	subl	%edx, %ecx	# tmp1576, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1578
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_696, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1579
	movl	-36(%rbp), %ecx	# cand_x, tmp1580
	subl	%edx, %ecx	# tmp1579, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1581
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_702, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L109	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.127
	movl	-76(%rbp), %eax	# mvshift, tmp1582
	movl	-36(%rbp), %esi	# cand_x, tmp1583
	movl	%eax, %ecx	# tmp1582, tmp2163
	sall	%cl, %esi	# tmp2163, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.127, D.7408
	movl	(%rax), %edx	# *_709, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.128
	movl	-76(%rbp), %eax	# mvshift, tmp1584
	movl	-32(%rbp), %edi	# cand_y, tmp1585
	movl	%eax, %ecx	# tmp1584, tmp2165
	sall	%cl, %edi	# tmp2165, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.128, D.7408
	movl	(%rax), %eax	# *_716, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1586
	movl	%eax, -28(%rbp)	# tmp1586, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1587
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1588
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1589
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1590
	movq	-136(%rbp), %rsi	# orig_pic, tmp1591
	movq	-8(%rbp), %rax	# ref_pic, tmp1592
	movl	-32(%rbp), %edi	# cand_y, tmp1593
	movl	%edi, 24(%rsp)	# tmp1593,
	movl	-36(%rbp), %edi	# cand_x, tmp1594
	movl	%edi, 16(%rsp)	# tmp1594,
	movl	56(%rbp), %edi	# min_mcost, tmp1595
	movl	%edi, 8(%rsp)	# tmp1595,
	movl	-28(%rbp), %edi	# mcost, tmp1596
	movl	%edi, (%rsp)	# tmp1596,
	movq	%rax, %rdi	# tmp1592,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1597, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.129
	movl	-48(%rbp), %edx	# center_y, tmp1598
	movl	-32(%rbp), %ecx	# cand_y, tmp1599
	subl	%edx, %ecx	# tmp1598, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1600
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_727, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1601
	movl	-36(%rbp), %ecx	# cand_x, tmp1602
	subl	%edx, %ecx	# tmp1601, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1603
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1604
	movl	%eax, (%rdx)	# tmp1604, *_733
	movl	-28(%rbp), %eax	# mcost, tmp1605
	cmpl	56(%rbp), %eax	# min_mcost, tmp1605
	jge	.L109	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1606
	movl	%eax, -120(%rbp)	# tmp1606, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1607
	movl	%eax, -116(%rbp)	# tmp1607, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1608
	movl	%eax, 56(%rbp)	# tmp1608, min_mcost
.L109:
	.loc 1 521 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp1609
	movl	%eax, -108(%rbp)	# tmp1609, iXMinNow
	.loc 1 522 0
	movl	-116(%rbp), %eax	# best_y, tmp1610
	movl	%eax, -112(%rbp)	# tmp1610, iYMinNow
	.loc 1 523 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L112	#
.L114:
	.loc 1 525 0
	movl	-100(%rbp), %eax	# m, tmp1612
	cltq
	movl	Diamond_x.4793(,%rax,4), %edx	# Diamond_x, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1616
	addl	%edx, %eax	# D.7400, tmp1615
	movl	%eax, -36(%rbp)	# tmp1615, cand_x
	.loc 1 526 0
	movl	-100(%rbp), %eax	# m, tmp1618
	cltq
	movl	Diamond_y.4794(,%rax,4), %edx	# Diamond_y, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp1622
	addl	%edx, %eax	# D.7400, tmp1621
	movl	%eax, -32(%rbp)	# tmp1621, cand_y
	.loc 1 527 0
	movl	-52(%rbp), %eax	# center_x, tmp1623
	movl	-36(%rbp), %edx	# cand_x, tmp1624
	subl	%eax, %edx	# tmp1623, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1625, D.7400
	subl	%edx, %eax	# tmp1625, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L113	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1626
	movl	-32(%rbp), %edx	# cand_y, tmp1627
	subl	%eax, %edx	# tmp1626, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1628, D.7400
	subl	%edx, %eax	# tmp1628, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L113	#,
	movq	McostState(%rip), %rax	# McostState, McostState.130
	movl	-48(%rbp), %edx	# center_y, tmp1629
	movl	-32(%rbp), %ecx	# cand_y, tmp1630
	subl	%edx, %ecx	# tmp1629, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1631
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_753, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1632
	movl	-36(%rbp), %ecx	# cand_x, tmp1633
	subl	%edx, %ecx	# tmp1632, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1634
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_759, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L113	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.131
	movl	-76(%rbp), %eax	# mvshift, tmp1635
	movl	-36(%rbp), %esi	# cand_x, tmp1636
	movl	%eax, %ecx	# tmp1635, tmp2169
	sall	%cl, %esi	# tmp2169, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.131, D.7408
	movl	(%rax), %edx	# *_766, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.132
	movl	-76(%rbp), %eax	# mvshift, tmp1637
	movl	-32(%rbp), %edi	# cand_y, tmp1638
	movl	%eax, %ecx	# tmp1637, tmp2171
	sall	%cl, %edi	# tmp2171, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.132, D.7408
	movl	(%rax), %eax	# *_773, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1639
	movl	%eax, -28(%rbp)	# tmp1639, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1640
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1641
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1642
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1643
	movq	-136(%rbp), %rsi	# orig_pic, tmp1644
	movq	-8(%rbp), %rax	# ref_pic, tmp1645
	movl	-32(%rbp), %edi	# cand_y, tmp1646
	movl	%edi, 24(%rsp)	# tmp1646,
	movl	-36(%rbp), %edi	# cand_x, tmp1647
	movl	%edi, 16(%rsp)	# tmp1647,
	movl	56(%rbp), %edi	# min_mcost, tmp1648
	movl	%edi, 8(%rsp)	# tmp1648,
	movl	-28(%rbp), %edi	# mcost, tmp1649
	movl	%edi, (%rsp)	# tmp1649,
	movq	%rax, %rdi	# tmp1645,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1650, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.133
	movl	-48(%rbp), %edx	# center_y, tmp1651
	movl	-32(%rbp), %ecx	# cand_y, tmp1652
	subl	%edx, %ecx	# tmp1651, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1653
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_784, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1654
	movl	-36(%rbp), %ecx	# cand_x, tmp1655
	subl	%edx, %ecx	# tmp1654, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1656
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1657
	movl	%eax, (%rdx)	# tmp1657, *_790
	movl	-28(%rbp), %eax	# mcost, tmp1658
	cmpl	56(%rbp), %eax	# min_mcost, tmp1658
	jge	.L113	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1659
	movl	%eax, -120(%rbp)	# tmp1659, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1660
	movl	%eax, -116(%rbp)	# tmp1660, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1661
	movl	%eax, 56(%rbp)	# tmp1661, min_mcost
.L113:
	.loc 1 523 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L112:
	.loc 1 523 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, m
	jle	.L114	#,
	.loc 1 531 0 is_stmt 1
	cmpw	$0, -140(%rbp)	#, ref
	jle	.L115	#,
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.134
	movl	56(%rbp), %edx	# min_mcost, tmp1662
	subl	%eax, %edx	# pred_SAD_ref.134, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.135
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.135, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L222	#,
	jmp	.L99	#
.L222:
	.loc 1 531 0 discriminator 2
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.136
	movl	56(%rbp), %edx	# min_mcost, tmp1663
	subl	%eax, %edx	# pred_SAD_ref.136, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.137
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.137, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L118	#,
	.loc 1 531 0 discriminator 1
	jmp	.L101	#
.L115:
	.loc 1 531 0 discriminator 2
	cmpl	$1, -156(%rbp)	#, blocktype
	jle	.L120	#,
	.loc 1 531 0 discriminator 1
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.138
	movl	56(%rbp), %edx	# min_mcost, tmp1664
	subl	%eax, %edx	# pred_SAD_uplayer.138, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.139
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.139, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L223	#,
	jmp	.L99	#
.L223:
	.loc 1 531 0 discriminator 2
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.140
	movl	56(%rbp), %edx	# min_mcost, tmp1665
	subl	%eax, %edx	# pred_SAD_uplayer.140, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.141
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.141, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L118	#,
	.loc 1 531 0 discriminator 1
	jmp	.L101	#
.L120:
	.loc 1 531 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.142
	movl	56(%rbp), %edx	# min_mcost, tmp1666
	subl	%eax, %edx	# pred_SAD_space.142, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.143
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.143, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L224	#,
	.loc 1 531 0 discriminator 1
	jmp	.L99	#
.L224:
	.loc 1 531 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.144
	movl	56(%rbp), %edx	# min_mcost, tmp1667
	subl	%eax, %edx	# pred_SAD_space.144, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.145
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.145, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L118	#,
	.loc 1 531 0 discriminator 1
	jmp	.L101	#
.L118:
	.loc 1 533 0 is_stmt 1
	cmpl	$6, -156(%rbp)	#, blocktype
	jle	.L127	#,
	.loc 1 534 0
	jmp	.L101	#
.L127:
	.loc 1 536 0
	nop
.L128:
	.loc 1 539 0
	movl	-120(%rbp), %eax	# best_x, tmp1668
	movl	%eax, -108(%rbp)	# tmp1668, iXMinNow
	.loc 1 540 0
	movl	-116(%rbp), %eax	# best_y, tmp1669
	movl	%eax, -112(%rbp)	# tmp1669, iYMinNow
	.loc 1 542 0
	movl	$1, -104(%rbp)	#, i
	jmp	.L129	#
.L132:
	.loc 1 544 0
	movl	-104(%rbp), %eax	# i, tmp1670
	addl	%eax, %eax	# D.7400
	subl	$1, %eax	#, tmp1671
	movl	%eax, -24(%rbp)	# tmp1671, search_step
	.loc 1 545 0
	movl	-24(%rbp), %eax	# search_step, tmp1676
	movl	-108(%rbp), %edx	# iXMinNow, tmp1677
	addl	%edx, %eax	# tmp1677, tmp1675
	movl	%eax, -36(%rbp)	# tmp1675, cand_x
	.loc 1 546 0
	movl	-112(%rbp), %eax	# iYMinNow, tmp1678
	movl	%eax, -32(%rbp)	# tmp1678, cand_y
	.loc 1 547 0
	movl	-52(%rbp), %eax	# center_x, tmp1679
	movl	-36(%rbp), %edx	# cand_x, tmp1680
	subl	%eax, %edx	# tmp1679, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1681, D.7400
	subl	%edx, %eax	# tmp1681, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L130	#,
	.loc 1 547 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1682
	movl	-32(%rbp), %edx	# cand_y, tmp1683
	subl	%eax, %edx	# tmp1682, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1684, D.7400
	subl	%edx, %eax	# tmp1684, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L130	#,
	movq	McostState(%rip), %rax	# McostState, McostState.146
	movl	-48(%rbp), %edx	# center_y, tmp1685
	movl	-32(%rbp), %ecx	# cand_y, tmp1686
	subl	%edx, %ecx	# tmp1685, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1687
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_848, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1688
	movl	-36(%rbp), %ecx	# cand_x, tmp1689
	subl	%edx, %ecx	# tmp1688, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1690
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_854, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L130	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.147
	movl	-76(%rbp), %eax	# mvshift, tmp1691
	movl	-36(%rbp), %esi	# cand_x, tmp1692
	movl	%eax, %ecx	# tmp1691, tmp2181
	sall	%cl, %esi	# tmp2181, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.147, D.7408
	movl	(%rax), %edx	# *_861, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.148
	movl	-76(%rbp), %eax	# mvshift, tmp1693
	movl	-32(%rbp), %edi	# cand_y, tmp1694
	movl	%eax, %ecx	# tmp1693, tmp2183
	sall	%cl, %edi	# tmp2183, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.148, D.7408
	movl	(%rax), %eax	# *_868, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1695
	movl	%eax, -28(%rbp)	# tmp1695, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1696
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1697
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1698
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1699
	movq	-136(%rbp), %rsi	# orig_pic, tmp1700
	movq	-8(%rbp), %rax	# ref_pic, tmp1701
	movl	-32(%rbp), %edi	# cand_y, tmp1702
	movl	%edi, 24(%rsp)	# tmp1702,
	movl	-36(%rbp), %edi	# cand_x, tmp1703
	movl	%edi, 16(%rsp)	# tmp1703,
	movl	56(%rbp), %edi	# min_mcost, tmp1704
	movl	%edi, 8(%rsp)	# tmp1704,
	movl	-28(%rbp), %edi	# mcost, tmp1705
	movl	%edi, (%rsp)	# tmp1705,
	movq	%rax, %rdi	# tmp1701,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1706, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.149
	movl	-48(%rbp), %edx	# center_y, tmp1707
	movl	-32(%rbp), %ecx	# cand_y, tmp1708
	subl	%edx, %ecx	# tmp1707, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1709
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_879, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1710
	movl	-36(%rbp), %ecx	# cand_x, tmp1711
	subl	%edx, %ecx	# tmp1710, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1712
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1713
	movl	%eax, (%rdx)	# tmp1713, *_885
	movl	-28(%rbp), %eax	# mcost, tmp1714
	cmpl	56(%rbp), %eax	# min_mcost, tmp1714
	jge	.L130	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1715
	movl	%eax, -120(%rbp)	# tmp1715, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1716
	movl	%eax, -116(%rbp)	# tmp1716, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1717
	movl	%eax, 56(%rbp)	# tmp1717, min_mcost
.L130:
	.loc 1 548 0 is_stmt 1
	movl	-24(%rbp), %eax	# search_step, tmp1722
	movl	-108(%rbp), %edx	# iXMinNow, tmp1723
	subl	%eax, %edx	# tmp1722, tmp1721
	movl	%edx, %eax	# tmp1721, tmp1721
	movl	%eax, -36(%rbp)	# tmp1721, cand_x
	.loc 1 549 0
	movl	-112(%rbp), %eax	# iYMinNow, tmp1724
	movl	%eax, -32(%rbp)	# tmp1724, cand_y
	.loc 1 550 0
	movl	-52(%rbp), %eax	# center_x, tmp1725
	movl	-36(%rbp), %edx	# cand_x, tmp1726
	subl	%eax, %edx	# tmp1725, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1727, D.7400
	subl	%edx, %eax	# tmp1727, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L131	#,
	.loc 1 550 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1728
	movl	-32(%rbp), %edx	# cand_y, tmp1729
	subl	%eax, %edx	# tmp1728, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1730, D.7400
	subl	%edx, %eax	# tmp1730, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L131	#,
	movq	McostState(%rip), %rax	# McostState, McostState.150
	movl	-48(%rbp), %edx	# center_y, tmp1731
	movl	-32(%rbp), %ecx	# cand_y, tmp1732
	subl	%edx, %ecx	# tmp1731, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1733
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_900, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1734
	movl	-36(%rbp), %ecx	# cand_x, tmp1735
	subl	%edx, %ecx	# tmp1734, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1736
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_906, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L131	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.151
	movl	-76(%rbp), %eax	# mvshift, tmp1737
	movl	-36(%rbp), %esi	# cand_x, tmp1738
	movl	%eax, %ecx	# tmp1737, tmp2188
	sall	%cl, %esi	# tmp2188, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.151, D.7408
	movl	(%rax), %edx	# *_913, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.152
	movl	-76(%rbp), %eax	# mvshift, tmp1739
	movl	-32(%rbp), %edi	# cand_y, tmp1740
	movl	%eax, %ecx	# tmp1739, tmp2190
	sall	%cl, %edi	# tmp2190, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.152, D.7408
	movl	(%rax), %eax	# *_920, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1741
	movl	%eax, -28(%rbp)	# tmp1741, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1742
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1743
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1744
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1745
	movq	-136(%rbp), %rsi	# orig_pic, tmp1746
	movq	-8(%rbp), %rax	# ref_pic, tmp1747
	movl	-32(%rbp), %edi	# cand_y, tmp1748
	movl	%edi, 24(%rsp)	# tmp1748,
	movl	-36(%rbp), %edi	# cand_x, tmp1749
	movl	%edi, 16(%rsp)	# tmp1749,
	movl	56(%rbp), %edi	# min_mcost, tmp1750
	movl	%edi, 8(%rsp)	# tmp1750,
	movl	-28(%rbp), %edi	# mcost, tmp1751
	movl	%edi, (%rsp)	# tmp1751,
	movq	%rax, %rdi	# tmp1747,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1752, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.153
	movl	-48(%rbp), %edx	# center_y, tmp1753
	movl	-32(%rbp), %ecx	# cand_y, tmp1754
	subl	%edx, %ecx	# tmp1753, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1755
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_931, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1756
	movl	-36(%rbp), %ecx	# cand_x, tmp1757
	subl	%edx, %ecx	# tmp1756, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1758
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1759
	movl	%eax, (%rdx)	# tmp1759, *_937
	movl	-28(%rbp), %eax	# mcost, tmp1760
	cmpl	56(%rbp), %eax	# min_mcost, tmp1760
	jge	.L131	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1761
	movl	%eax, -120(%rbp)	# tmp1761, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1762
	movl	%eax, -116(%rbp)	# tmp1762, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1763
	movl	%eax, 56(%rbp)	# tmp1763, min_mcost
.L131:
	.loc 1 542 0 is_stmt 1
	addl	$1, -104(%rbp)	#, i
.L129:
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	48(%rbp), %eax	# search_range, tmp1764
	movl	%eax, %edx	# tmp1764, tmp1765
	shrl	$31, %edx	#, tmp1765
	addl	%edx, %eax	# tmp1765, tmp1766
	sarl	%eax	# tmp1767
	cmpl	-104(%rbp), %eax	# i, D.7400
	jge	.L132	#,
	.loc 1 553 0 is_stmt 1
	movl	$1, -104(%rbp)	#, i
	jmp	.L133	#
.L136:
	.loc 1 555 0
	movl	-104(%rbp), %eax	# i, tmp1768
	addl	%eax, %eax	# D.7400
	subl	$1, %eax	#, tmp1769
	movl	%eax, -24(%rbp)	# tmp1769, search_step
	.loc 1 556 0
	movl	-108(%rbp), %eax	# iXMinNow, tmp1770
	movl	%eax, -36(%rbp)	# tmp1770, cand_x
	.loc 1 557 0
	movl	-24(%rbp), %eax	# search_step, tmp1775
	movl	-112(%rbp), %edx	# iYMinNow, tmp1776
	addl	%edx, %eax	# tmp1776, tmp1774
	movl	%eax, -32(%rbp)	# tmp1774, cand_y
	.loc 1 558 0
	movl	-52(%rbp), %eax	# center_x, tmp1777
	movl	-36(%rbp), %edx	# cand_x, tmp1778
	subl	%eax, %edx	# tmp1777, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1779, D.7400
	subl	%edx, %eax	# tmp1779, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L134	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1780
	movl	-32(%rbp), %edx	# cand_y, tmp1781
	subl	%eax, %edx	# tmp1780, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1782, D.7400
	subl	%edx, %eax	# tmp1782, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L134	#,
	movq	McostState(%rip), %rax	# McostState, McostState.154
	movl	-48(%rbp), %edx	# center_y, tmp1783
	movl	-32(%rbp), %ecx	# cand_y, tmp1784
	subl	%edx, %ecx	# tmp1783, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1785
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_957, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1786
	movl	-36(%rbp), %ecx	# cand_x, tmp1787
	subl	%edx, %ecx	# tmp1786, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1788
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_963, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L134	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.155
	movl	-76(%rbp), %eax	# mvshift, tmp1789
	movl	-36(%rbp), %esi	# cand_x, tmp1790
	movl	%eax, %ecx	# tmp1789, tmp2195
	sall	%cl, %esi	# tmp2195, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.155, D.7408
	movl	(%rax), %edx	# *_970, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.156
	movl	-76(%rbp), %eax	# mvshift, tmp1791
	movl	-32(%rbp), %edi	# cand_y, tmp1792
	movl	%eax, %ecx	# tmp1791, tmp2197
	sall	%cl, %edi	# tmp2197, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.156, D.7408
	movl	(%rax), %eax	# *_977, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1793
	movl	%eax, -28(%rbp)	# tmp1793, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1794
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1795
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1796
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1797
	movq	-136(%rbp), %rsi	# orig_pic, tmp1798
	movq	-8(%rbp), %rax	# ref_pic, tmp1799
	movl	-32(%rbp), %edi	# cand_y, tmp1800
	movl	%edi, 24(%rsp)	# tmp1800,
	movl	-36(%rbp), %edi	# cand_x, tmp1801
	movl	%edi, 16(%rsp)	# tmp1801,
	movl	56(%rbp), %edi	# min_mcost, tmp1802
	movl	%edi, 8(%rsp)	# tmp1802,
	movl	-28(%rbp), %edi	# mcost, tmp1803
	movl	%edi, (%rsp)	# tmp1803,
	movq	%rax, %rdi	# tmp1799,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1804, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.157
	movl	-48(%rbp), %edx	# center_y, tmp1805
	movl	-32(%rbp), %ecx	# cand_y, tmp1806
	subl	%edx, %ecx	# tmp1805, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1807
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_988, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1808
	movl	-36(%rbp), %ecx	# cand_x, tmp1809
	subl	%edx, %ecx	# tmp1808, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1810
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1811
	movl	%eax, (%rdx)	# tmp1811, *_994
	movl	-28(%rbp), %eax	# mcost, tmp1812
	cmpl	56(%rbp), %eax	# min_mcost, tmp1812
	jge	.L134	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1813
	movl	%eax, -120(%rbp)	# tmp1813, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1814
	movl	%eax, -116(%rbp)	# tmp1814, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1815
	movl	%eax, 56(%rbp)	# tmp1815, min_mcost
.L134:
	.loc 1 559 0 is_stmt 1
	movl	-108(%rbp), %eax	# iXMinNow, tmp1816
	movl	%eax, -36(%rbp)	# tmp1816, cand_x
	.loc 1 560 0
	movl	-24(%rbp), %eax	# search_step, tmp1821
	movl	-112(%rbp), %edx	# iYMinNow, tmp1822
	subl	%eax, %edx	# tmp1821, tmp1820
	movl	%edx, %eax	# tmp1820, tmp1820
	movl	%eax, -32(%rbp)	# tmp1820, cand_y
	.loc 1 561 0
	movl	-52(%rbp), %eax	# center_x, tmp1823
	movl	-36(%rbp), %edx	# cand_x, tmp1824
	subl	%eax, %edx	# tmp1823, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1825, D.7400
	subl	%edx, %eax	# tmp1825, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L135	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1826
	movl	-32(%rbp), %edx	# cand_y, tmp1827
	subl	%eax, %edx	# tmp1826, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1828, D.7400
	subl	%edx, %eax	# tmp1828, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L135	#,
	movq	McostState(%rip), %rax	# McostState, McostState.158
	movl	-48(%rbp), %edx	# center_y, tmp1829
	movl	-32(%rbp), %ecx	# cand_y, tmp1830
	subl	%edx, %ecx	# tmp1829, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1831
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1009, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1832
	movl	-36(%rbp), %ecx	# cand_x, tmp1833
	subl	%edx, %ecx	# tmp1832, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1834
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_1015, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L135	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.159
	movl	-76(%rbp), %eax	# mvshift, tmp1835
	movl	-36(%rbp), %esi	# cand_x, tmp1836
	movl	%eax, %ecx	# tmp1835, tmp2202
	sall	%cl, %esi	# tmp2202, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.159, D.7408
	movl	(%rax), %edx	# *_1022, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.160
	movl	-76(%rbp), %eax	# mvshift, tmp1837
	movl	-32(%rbp), %edi	# cand_y, tmp1838
	movl	%eax, %ecx	# tmp1837, tmp2204
	sall	%cl, %edi	# tmp2204, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.160, D.7408
	movl	(%rax), %eax	# *_1029, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1839
	movl	%eax, -28(%rbp)	# tmp1839, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1840
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1841
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1842
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1843
	movq	-136(%rbp), %rsi	# orig_pic, tmp1844
	movq	-8(%rbp), %rax	# ref_pic, tmp1845
	movl	-32(%rbp), %edi	# cand_y, tmp1846
	movl	%edi, 24(%rsp)	# tmp1846,
	movl	-36(%rbp), %edi	# cand_x, tmp1847
	movl	%edi, 16(%rsp)	# tmp1847,
	movl	56(%rbp), %edi	# min_mcost, tmp1848
	movl	%edi, 8(%rsp)	# tmp1848,
	movl	-28(%rbp), %edi	# mcost, tmp1849
	movl	%edi, (%rsp)	# tmp1849,
	movq	%rax, %rdi	# tmp1845,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1850, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.161
	movl	-48(%rbp), %edx	# center_y, tmp1851
	movl	-32(%rbp), %ecx	# cand_y, tmp1852
	subl	%edx, %ecx	# tmp1851, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1853
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1040, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1854
	movl	-36(%rbp), %ecx	# cand_x, tmp1855
	subl	%edx, %ecx	# tmp1854, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1856
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1857
	movl	%eax, (%rdx)	# tmp1857, *_1046
	movl	-28(%rbp), %eax	# mcost, tmp1858
	cmpl	56(%rbp), %eax	# min_mcost, tmp1858
	jge	.L135	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1859
	movl	%eax, -120(%rbp)	# tmp1859, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1860
	movl	%eax, -116(%rbp)	# tmp1860, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1861
	movl	%eax, 56(%rbp)	# tmp1861, min_mcost
.L135:
	.loc 1 553 0 is_stmt 1
	addl	$1, -104(%rbp)	#, i
.L133:
	.loc 1 553 0 is_stmt 0 discriminator 1
	movl	48(%rbp), %eax	# search_range, tmp1862
	leal	3(%rax), %edx	#, tmp1864
	testl	%eax, %eax	# tmp1863
	cmovs	%edx, %eax	# tmp1864,, tmp1863
	sarl	$2, %eax	#, tmp1865
	cmpl	-104(%rbp), %eax	# i, D.7400
	jge	.L136	#,
	.loc 1 564 0 is_stmt 1
	cmpw	$0, -140(%rbp)	#, ref
	jle	.L137	#,
	.loc 1 564 0 is_stmt 0 discriminator 1
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.162
	movl	56(%rbp), %edx	# min_mcost, tmp1866
	subl	%eax, %edx	# pred_SAD_ref.162, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.163
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.163, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L225	#,
	jmp	.L99	#
.L225:
	.loc 1 564 0 discriminator 2
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.164
	movl	56(%rbp), %edx	# min_mcost, tmp1867
	subl	%eax, %edx	# pred_SAD_ref.164, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.165
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.165, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L140	#,
	.loc 1 564 0 discriminator 1
	jmp	.L101	#
.L137:
	.loc 1 564 0 discriminator 2
	cmpl	$1, -156(%rbp)	#, blocktype
	jle	.L142	#,
	.loc 1 564 0 discriminator 1
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.166
	movl	56(%rbp), %edx	# min_mcost, tmp1868
	subl	%eax, %edx	# pred_SAD_uplayer.166, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.167
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.167, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L226	#,
	jmp	.L99	#
.L226:
	.loc 1 564 0 discriminator 2
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.168
	movl	56(%rbp), %edx	# min_mcost, tmp1869
	subl	%eax, %edx	# pred_SAD_uplayer.168, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.169
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.169, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L140	#,
	.loc 1 564 0 discriminator 1
	jmp	.L101	#
.L142:
	.loc 1 564 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.170
	movl	56(%rbp), %edx	# min_mcost, tmp1870
	subl	%eax, %edx	# pred_SAD_space.170, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.171
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.171, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L227	#,
	.loc 1 564 0 discriminator 1
	jmp	.L99	#
.L227:
	.loc 1 564 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.172
	movl	56(%rbp), %edx	# min_mcost, tmp1871
	subl	%eax, %edx	# pred_SAD_space.172, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.173
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.173, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L140	#,
	.loc 1 564 0 discriminator 1
	jmp	.L101	#
.L140:
	.loc 1 566 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp1872
	movl	%eax, -108(%rbp)	# tmp1872, iXMinNow
	.loc 1 567 0
	movl	-116(%rbp), %eax	# best_y, tmp1873
	movl	%eax, -112(%rbp)	# tmp1873, iYMinNow
	.loc 1 569 0
	movl	$1, -124(%rbp)	#, pos
	jmp	.L149	#
.L151:
	.loc 1 571 0
	movq	spiral_search_x(%rip), %rax	# spiral_search_x, spiral_search_x.174
	movl	-124(%rbp), %edx	# pos, tmp1874
	movslq	%edx, %rdx	# tmp1874, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %edx	# *_1093, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1878
	addl	%edx, %eax	# D.7400, tmp1877
	movl	%eax, -36(%rbp)	# tmp1877, cand_x
	.loc 1 572 0
	movq	spiral_search_y(%rip), %rax	# spiral_search_y, spiral_search_y.175
	movl	-124(%rbp), %edx	# pos, tmp1879
	movslq	%edx, %rdx	# tmp1879, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %edx	# *_1099, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp1883
	addl	%edx, %eax	# D.7400, tmp1882
	movl	%eax, -32(%rbp)	# tmp1882, cand_y
	.loc 1 573 0
	movl	-52(%rbp), %eax	# center_x, tmp1884
	movl	-36(%rbp), %edx	# cand_x, tmp1885
	subl	%eax, %edx	# tmp1884, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1886, D.7400
	subl	%edx, %eax	# tmp1886, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L150	#,
	.loc 1 573 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1887
	movl	-32(%rbp), %edx	# cand_y, tmp1888
	subl	%eax, %edx	# tmp1887, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1889, D.7400
	subl	%edx, %eax	# tmp1889, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L150	#,
	movq	McostState(%rip), %rax	# McostState, McostState.176
	movl	-48(%rbp), %edx	# center_y, tmp1890
	movl	-32(%rbp), %ecx	# cand_y, tmp1891
	subl	%edx, %ecx	# tmp1890, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1892
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1111, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1893
	movl	-36(%rbp), %ecx	# cand_x, tmp1894
	subl	%edx, %ecx	# tmp1893, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1895
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_1117, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L150	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.177
	movl	-76(%rbp), %eax	# mvshift, tmp1896
	movl	-36(%rbp), %esi	# cand_x, tmp1897
	movl	%eax, %ecx	# tmp1896, tmp2214
	sall	%cl, %esi	# tmp2214, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.177, D.7408
	movl	(%rax), %edx	# *_1124, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.178
	movl	-76(%rbp), %eax	# mvshift, tmp1898
	movl	-32(%rbp), %edi	# cand_y, tmp1899
	movl	%eax, %ecx	# tmp1898, tmp2216
	sall	%cl, %edi	# tmp2216, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.178, D.7408
	movl	(%rax), %eax	# *_1131, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1900
	movl	%eax, -28(%rbp)	# tmp1900, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1901
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1902
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1903
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1904
	movq	-136(%rbp), %rsi	# orig_pic, tmp1905
	movq	-8(%rbp), %rax	# ref_pic, tmp1906
	movl	-32(%rbp), %edi	# cand_y, tmp1907
	movl	%edi, 24(%rsp)	# tmp1907,
	movl	-36(%rbp), %edi	# cand_x, tmp1908
	movl	%edi, 16(%rsp)	# tmp1908,
	movl	56(%rbp), %edi	# min_mcost, tmp1909
	movl	%edi, 8(%rsp)	# tmp1909,
	movl	-28(%rbp), %edi	# mcost, tmp1910
	movl	%edi, (%rsp)	# tmp1910,
	movq	%rax, %rdi	# tmp1906,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1911, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.179
	movl	-48(%rbp), %edx	# center_y, tmp1912
	movl	-32(%rbp), %ecx	# cand_y, tmp1913
	subl	%edx, %ecx	# tmp1912, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1914
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1142, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1915
	movl	-36(%rbp), %ecx	# cand_x, tmp1916
	subl	%edx, %ecx	# tmp1915, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1917
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1918
	movl	%eax, (%rdx)	# tmp1918, *_1148
	movl	-28(%rbp), %eax	# mcost, tmp1919
	cmpl	56(%rbp), %eax	# min_mcost, tmp1919
	jge	.L150	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1920
	movl	%eax, -120(%rbp)	# tmp1920, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1921
	movl	%eax, -116(%rbp)	# tmp1921, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1922
	movl	%eax, 56(%rbp)	# tmp1922, min_mcost
.L150:
	.loc 1 569 0 is_stmt 1
	addl	$1, -124(%rbp)	#, pos
.L149:
	.loc 1 569 0 is_stmt 0 discriminator 1
	cmpl	$24, -124(%rbp)	#, pos
	jle	.L151	#,
	.loc 1 576 0 is_stmt 1
	cmpw	$0, -140(%rbp)	#, ref
	jle	.L152	#,
	.loc 1 576 0 is_stmt 0 discriminator 1
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.180
	movl	56(%rbp), %edx	# min_mcost, tmp1923
	subl	%eax, %edx	# pred_SAD_ref.180, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.181
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.181, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L228	#,
	jmp	.L99	#
.L228:
	.loc 1 576 0 discriminator 2
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.182
	movl	56(%rbp), %edx	# min_mcost, tmp1924
	subl	%eax, %edx	# pred_SAD_ref.182, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.183
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.183, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L155	#,
	.loc 1 576 0 discriminator 1
	jmp	.L101	#
.L152:
	.loc 1 576 0 discriminator 2
	cmpl	$1, -156(%rbp)	#, blocktype
	jle	.L157	#,
	.loc 1 576 0 discriminator 1
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.184
	movl	56(%rbp), %edx	# min_mcost, tmp1925
	subl	%eax, %edx	# pred_SAD_uplayer.184, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.185
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.185, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L229	#,
	jmp	.L99	#
.L229:
	.loc 1 576 0 discriminator 2
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.186
	movl	56(%rbp), %edx	# min_mcost, tmp1926
	subl	%eax, %edx	# pred_SAD_uplayer.186, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.187
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.187, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L155	#,
	.loc 1 576 0 discriminator 1
	jmp	.L101	#
.L157:
	.loc 1 576 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.188
	movl	56(%rbp), %edx	# min_mcost, tmp1927
	subl	%eax, %edx	# pred_SAD_space.188, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.189
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.189, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L230	#,
	.loc 1 576 0 discriminator 1
	jmp	.L99	#
.L230:
	.loc 1 576 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.190
	movl	56(%rbp), %edx	# min_mcost, tmp1928
	subl	%eax, %edx	# pred_SAD_space.190, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.191
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.191, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L155	#,
	.loc 1 576 0 discriminator 1
	jmp	.L101	#
.L155:
	.loc 1 578 0 is_stmt 1
	movl	$1, -104(%rbp)	#, i
	jmp	.L164	#
.L180:
	.loc 1 580 0
	movl	$0, -96(%rbp)	#, iAbort
	.loc 1 581 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L165	#
.L167:
	.loc 1 583 0
	movl	-100(%rbp), %eax	# m, tmp1930
	cltq
	movl	Big_Hexagon_x.4797(,%rax,4), %eax	# Big_Hexagon_x, D.7400
	imull	-104(%rbp), %eax	# i, D.7400
	movl	%eax, %edx	# D.7400, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1934
	addl	%edx, %eax	# D.7400, tmp1933
	movl	%eax, -36(%rbp)	# tmp1933, cand_x
	.loc 1 584 0
	movl	-100(%rbp), %eax	# m, tmp1936
	cltq
	movl	Big_Hexagon_y.4798(,%rax,4), %eax	# Big_Hexagon_y, D.7400
	imull	-104(%rbp), %eax	# i, D.7400
	movl	%eax, %edx	# D.7400, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp1940
	addl	%edx, %eax	# D.7400, tmp1939
	movl	%eax, -32(%rbp)	# tmp1939, cand_y
	.loc 1 585 0
	movl	-52(%rbp), %eax	# center_x, tmp1941
	movl	-36(%rbp), %edx	# cand_x, tmp1942
	subl	%eax, %edx	# tmp1941, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1943, D.7400
	subl	%edx, %eax	# tmp1943, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L166	#,
	.loc 1 585 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp1944
	movl	-32(%rbp), %edx	# cand_y, tmp1945
	subl	%eax, %edx	# tmp1944, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp1946, D.7400
	subl	%edx, %eax	# tmp1946, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L166	#,
	movq	McostState(%rip), %rax	# McostState, McostState.192
	movl	-48(%rbp), %edx	# center_y, tmp1947
	movl	-32(%rbp), %ecx	# cand_y, tmp1948
	subl	%edx, %ecx	# tmp1947, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1949
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1208, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1950
	movl	-36(%rbp), %ecx	# cand_x, tmp1951
	subl	%edx, %ecx	# tmp1950, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1952
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_1214, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L166	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.193
	movl	-76(%rbp), %eax	# mvshift, tmp1953
	movl	-36(%rbp), %esi	# cand_x, tmp1954
	movl	%eax, %ecx	# tmp1953, tmp2228
	sall	%cl, %esi	# tmp2228, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.193, D.7408
	movl	(%rax), %edx	# *_1221, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.194
	movl	-76(%rbp), %eax	# mvshift, tmp1955
	movl	-32(%rbp), %edi	# cand_y, tmp1956
	movl	%eax, %ecx	# tmp1955, tmp2230
	sall	%cl, %edi	# tmp2230, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.194, D.7408
	movl	(%rax), %eax	# *_1228, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp1957
	movl	%eax, -28(%rbp)	# tmp1957, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp1958
	movl	-68(%rbp), %r8d	# blocksize_x, tmp1959
	movl	-72(%rbp), %ecx	# blocksize_y, tmp1960
	movq	-16(%rbp), %rdx	# get_ref_line, tmp1961
	movq	-136(%rbp), %rsi	# orig_pic, tmp1962
	movq	-8(%rbp), %rax	# ref_pic, tmp1963
	movl	-32(%rbp), %edi	# cand_y, tmp1964
	movl	%edi, 24(%rsp)	# tmp1964,
	movl	-36(%rbp), %edi	# cand_x, tmp1965
	movl	%edi, 16(%rsp)	# tmp1965,
	movl	56(%rbp), %edi	# min_mcost, tmp1966
	movl	%edi, 8(%rsp)	# tmp1966,
	movl	-28(%rbp), %edi	# mcost, tmp1967
	movl	%edi, (%rsp)	# tmp1967,
	movq	%rax, %rdi	# tmp1963,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp1968, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.195
	movl	-48(%rbp), %edx	# center_y, tmp1969
	movl	-32(%rbp), %ecx	# cand_y, tmp1970
	subl	%edx, %ecx	# tmp1969, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1971
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1239, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp1972
	movl	-36(%rbp), %ecx	# cand_x, tmp1973
	subl	%edx, %ecx	# tmp1972, D.7400
	movl	48(%rbp), %edx	# search_range, tmp1974
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp1975
	movl	%eax, (%rdx)	# tmp1975, *_1245
	movl	-28(%rbp), %eax	# mcost, tmp1976
	cmpl	56(%rbp), %eax	# min_mcost, tmp1976
	jge	.L166	#,
	movl	-36(%rbp), %eax	# cand_x, tmp1977
	movl	%eax, -120(%rbp)	# tmp1977, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp1978
	movl	%eax, -116(%rbp)	# tmp1978, best_y
	movl	-28(%rbp), %eax	# mcost, tmp1979
	movl	%eax, 56(%rbp)	# tmp1979, min_mcost
	movl	$1, -96(%rbp)	#, iAbort
.L166:
	.loc 1 581 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L165:
	.loc 1 581 0 is_stmt 0 discriminator 1
	cmpl	$15, -100(%rbp)	#, m
	jle	.L167	#,
	.loc 1 587 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, iAbort
	je	.L168	#,
	.loc 1 590 0
	cmpw	$0, -140(%rbp)	#, ref
	jle	.L169	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.196
	movl	56(%rbp), %edx	# min_mcost, tmp1980
	subl	%eax, %edx	# pred_SAD_ref.196, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.197
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.197, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L231	#,
	jmp	.L99	#
.L231:
	.loc 1 590 0 discriminator 2
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.198
	movl	56(%rbp), %edx	# min_mcost, tmp1981
	subl	%eax, %edx	# pred_SAD_ref.198, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_ref(%rip), %eax	# pred_SAD_ref, pred_SAD_ref.199
	cvtsi2ss	%eax, %xmm0	# pred_SAD_ref.199, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L168	#,
	.loc 1 590 0 discriminator 1
	jmp	.L101	#
.L169:
	.loc 1 590 0 discriminator 2
	cmpl	$1, -156(%rbp)	#, blocktype
	jle	.L173	#,
	.loc 1 590 0 discriminator 1
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.200
	movl	56(%rbp), %edx	# min_mcost, tmp1982
	subl	%eax, %edx	# pred_SAD_uplayer.200, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.201
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.201, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L232	#,
	jmp	.L99	#
.L232:
	.loc 1 590 0 discriminator 2
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.202
	movl	56(%rbp), %edx	# min_mcost, tmp1983
	subl	%eax, %edx	# pred_SAD_uplayer.202, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_uplayer(%rip), %eax	# pred_SAD_uplayer, pred_SAD_uplayer.203
	cvtsi2ss	%eax, %xmm0	# pred_SAD_uplayer.203, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L168	#,
	.loc 1 590 0 discriminator 1
	jmp	.L101	#
.L173:
	.loc 1 590 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.204
	movl	56(%rbp), %edx	# min_mcost, tmp1984
	subl	%eax, %edx	# pred_SAD_space.204, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.205
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.205, D.7409
	mulss	-88(%rbp), %xmm0	# betaThird, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L233	#,
	.loc 1 590 0 discriminator 1
	jmp	.L99	#
.L233:
	.loc 1 590 0 discriminator 2
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.206
	movl	56(%rbp), %edx	# min_mcost, tmp1985
	subl	%eax, %edx	# pred_SAD_space.206, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cvtsi2ss	%eax, %xmm1	# D.7400, D.7409
	movl	pred_SAD_space(%rip), %eax	# pred_SAD_space, pred_SAD_space.207
	cvtsi2ss	%eax, %xmm0	# pred_SAD_space.207, D.7409
	mulss	-92(%rbp), %xmm0	# betaSec, D.7409
	ucomiss	%xmm1, %xmm0	# D.7409, D.7409
	jbe	.L168	#,
	.loc 1 590 0 discriminator 1
	jmp	.L101	#
.L168:
	.loc 1 578 0 is_stmt 1
	addl	$1, -104(%rbp)	#, i
.L164:
	.loc 1 578 0 is_stmt 0 discriminator 1
	movl	48(%rbp), %eax	# search_range, tmp1986
	leal	3(%rax), %edx	#, tmp1988
	testl	%eax, %eax	# tmp1987
	cmovs	%edx, %eax	# tmp1988,, tmp1987
	sarl	$2, %eax	#, tmp1989
	cmpl	-104(%rbp), %eax	# i, D.7400
	jge	.L180	#,
.L101:
	.loc 1 594 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp1990
	movl	%eax, -108(%rbp)	# tmp1990, iXMinNow
	.loc 1 595 0
	movl	-116(%rbp), %eax	# best_y, tmp1991
	movl	%eax, -112(%rbp)	# tmp1991, iYMinNow
	.loc 1 596 0
	movl	$0, -104(%rbp)	#, i
	jmp	.L181	#
.L186:
	.loc 1 598 0
	movl	$1, -96(%rbp)	#, iAbort
	.loc 1 599 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L182	#
.L184:
	.loc 1 601 0
	movl	-100(%rbp), %eax	# m, tmp1993
	cltq
	movl	Hexagon_x.4795(,%rax,4), %edx	# Hexagon_x, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp1997
	addl	%edx, %eax	# D.7400, tmp1996
	movl	%eax, -36(%rbp)	# tmp1996, cand_x
	.loc 1 602 0
	movl	-100(%rbp), %eax	# m, tmp1999
	cltq
	movl	Hexagon_y.4796(,%rax,4), %edx	# Hexagon_y, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp2003
	addl	%edx, %eax	# D.7400, tmp2002
	movl	%eax, -32(%rbp)	# tmp2002, cand_y
	.loc 1 603 0
	movl	-52(%rbp), %eax	# center_x, tmp2004
	movl	-36(%rbp), %edx	# cand_x, tmp2005
	subl	%eax, %edx	# tmp2004, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp2006, D.7400
	subl	%edx, %eax	# tmp2006, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L183	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp2007
	movl	-32(%rbp), %edx	# cand_y, tmp2008
	subl	%eax, %edx	# tmp2007, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp2009, D.7400
	subl	%edx, %eax	# tmp2009, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L183	#,
	movq	McostState(%rip), %rax	# McostState, McostState.208
	movl	-48(%rbp), %edx	# center_y, tmp2010
	movl	-32(%rbp), %ecx	# cand_y, tmp2011
	subl	%edx, %ecx	# tmp2010, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2012
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1306, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp2013
	movl	-36(%rbp), %ecx	# cand_x, tmp2014
	subl	%edx, %ecx	# tmp2013, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2015
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_1312, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L183	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.209
	movl	-76(%rbp), %eax	# mvshift, tmp2016
	movl	-36(%rbp), %esi	# cand_x, tmp2017
	movl	%eax, %ecx	# tmp2016, tmp2240
	sall	%cl, %esi	# tmp2240, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.209, D.7408
	movl	(%rax), %edx	# *_1319, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.210
	movl	-76(%rbp), %eax	# mvshift, tmp2018
	movl	-32(%rbp), %edi	# cand_y, tmp2019
	movl	%eax, %ecx	# tmp2018, tmp2242
	sall	%cl, %edi	# tmp2242, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.210, D.7408
	movl	(%rax), %eax	# *_1326, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp2020
	movl	%eax, -28(%rbp)	# tmp2020, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp2021
	movl	-68(%rbp), %r8d	# blocksize_x, tmp2022
	movl	-72(%rbp), %ecx	# blocksize_y, tmp2023
	movq	-16(%rbp), %rdx	# get_ref_line, tmp2024
	movq	-136(%rbp), %rsi	# orig_pic, tmp2025
	movq	-8(%rbp), %rax	# ref_pic, tmp2026
	movl	-32(%rbp), %edi	# cand_y, tmp2027
	movl	%edi, 24(%rsp)	# tmp2027,
	movl	-36(%rbp), %edi	# cand_x, tmp2028
	movl	%edi, 16(%rsp)	# tmp2028,
	movl	56(%rbp), %edi	# min_mcost, tmp2029
	movl	%edi, 8(%rsp)	# tmp2029,
	movl	-28(%rbp), %edi	# mcost, tmp2030
	movl	%edi, (%rsp)	# tmp2030,
	movq	%rax, %rdi	# tmp2026,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp2031, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.211
	movl	-48(%rbp), %edx	# center_y, tmp2032
	movl	-32(%rbp), %ecx	# cand_y, tmp2033
	subl	%edx, %ecx	# tmp2032, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2034
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1337, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp2035
	movl	-36(%rbp), %ecx	# cand_x, tmp2036
	subl	%edx, %ecx	# tmp2035, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2037
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp2038
	movl	%eax, (%rdx)	# tmp2038, *_1343
	movl	-28(%rbp), %eax	# mcost, tmp2039
	cmpl	56(%rbp), %eax	# min_mcost, tmp2039
	jge	.L183	#,
	movl	-36(%rbp), %eax	# cand_x, tmp2040
	movl	%eax, -120(%rbp)	# tmp2040, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp2041
	movl	%eax, -116(%rbp)	# tmp2041, best_y
	movl	-28(%rbp), %eax	# mcost, tmp2042
	movl	%eax, 56(%rbp)	# tmp2042, min_mcost
	movl	$0, -96(%rbp)	#, iAbort
.L183:
	.loc 1 599 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L182:
	.loc 1 599 0 is_stmt 0 discriminator 1
	cmpl	$5, -100(%rbp)	#, m
	jle	.L184	#,
	.loc 1 605 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, iAbort
	je	.L185	#,
	.loc 1 606 0
	jmp	.L99	#
.L185:
	.loc 1 607 0
	movl	-120(%rbp), %eax	# best_x, tmp2043
	movl	%eax, -108(%rbp)	# tmp2043, iXMinNow
	.loc 1 608 0
	movl	-116(%rbp), %eax	# best_y, tmp2044
	movl	%eax, -112(%rbp)	# tmp2044, iYMinNow
	.loc 1 596 0
	addl	$1, -104(%rbp)	#, i
.L181:
	.loc 1 596 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# i, tmp2045
	cmpl	48(%rbp), %eax	# search_range, tmp2045
	jl	.L186	#,
.L99:
	.loc 1 611 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp2046
	movl	%eax, -108(%rbp)	# tmp2046, iXMinNow
	.loc 1 612 0
	movl	-116(%rbp), %eax	# best_y, tmp2047
	movl	%eax, -112(%rbp)	# tmp2047, iYMinNow
	.loc 1 613 0
	movl	$0, -104(%rbp)	#, i
	jmp	.L187	#
.L193:
	.loc 1 615 0
	movl	$65536, -20(%rbp)	#, iSADLayer
	.loc 1 616 0
	movl	$1, -96(%rbp)	#, iAbort
	.loc 1 617 0
	movl	$0, -100(%rbp)	#, m
	jmp	.L188	#
.L190:
	.loc 1 619 0
	movl	-100(%rbp), %eax	# m, tmp2049
	cltq
	movl	Diamond_x.4793(,%rax,4), %edx	# Diamond_x, D.7400
	movl	-108(%rbp), %eax	# iXMinNow, tmp2053
	addl	%edx, %eax	# D.7400, tmp2052
	movl	%eax, -36(%rbp)	# tmp2052, cand_x
	.loc 1 620 0
	movl	-100(%rbp), %eax	# m, tmp2055
	cltq
	movl	Diamond_y.4794(,%rax,4), %edx	# Diamond_y, D.7400
	movl	-112(%rbp), %eax	# iYMinNow, tmp2059
	addl	%edx, %eax	# D.7400, tmp2058
	movl	%eax, -32(%rbp)	# tmp2058, cand_y
	.loc 1 621 0
	movl	-52(%rbp), %eax	# center_x, tmp2060
	movl	-36(%rbp), %edx	# cand_x, tmp2061
	subl	%eax, %edx	# tmp2060, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp2062, D.7400
	subl	%edx, %eax	# tmp2062, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L189	#,
	.loc 1 621 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# center_y, tmp2063
	movl	-32(%rbp), %edx	# cand_y, tmp2064
	subl	%eax, %edx	# tmp2063, D.7400
	movl	%edx, %eax	# D.7400, D.7400
	cltd
	xorl	%edx, %eax	# tmp2065, D.7400
	subl	%edx, %eax	# tmp2065, D.7400
	cmpl	48(%rbp), %eax	# search_range, D.7400
	jg	.L189	#,
	movq	McostState(%rip), %rax	# McostState, McostState.212
	movl	-48(%rbp), %edx	# center_y, tmp2066
	movl	-32(%rbp), %ecx	# cand_y, tmp2067
	subl	%edx, %ecx	# tmp2066, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2068
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1371, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp2069
	movl	-36(%rbp), %ecx	# cand_x, tmp2070
	subl	%edx, %ecx	# tmp2069, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2071
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7408
	movl	(%rax), %eax	# *_1377, D.7400
	testl	%eax, %eax	# D.7400
	jne	.L189	#,
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.213
	movl	-76(%rbp), %eax	# mvshift, tmp2072
	movl	-36(%rbp), %esi	# cand_x, tmp2073
	movl	%eax, %ecx	# tmp2072, tmp2246
	sall	%cl, %esi	# tmp2246, D.7400
	movl	%esi, %eax	# D.7400, D.7400
	subl	-60(%rbp), %eax	# pred_x, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rdx, %rax	# mvbits.213, D.7408
	movl	(%rax), %edx	# *_1384, D.7400
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.214
	movl	-76(%rbp), %eax	# mvshift, tmp2074
	movl	-32(%rbp), %edi	# cand_y, tmp2075
	movl	%eax, %ecx	# tmp2074, tmp2248
	sall	%cl, %edi	# tmp2248, D.7400
	movl	%edi, %eax	# D.7400, D.7400
	subl	-56(%rbp), %eax	# pred_y, D.7400
	cltq
	salq	$2, %rax	#, D.7402
	addq	%rsi, %rax	# mvbits.214, D.7408
	movl	(%rax), %eax	# *_1391, D.7400
	addl	%edx, %eax	# D.7400, D.7400
	imull	-80(%rbp), %eax	# lambda_factor, D.7400
	sarl	$16, %eax	#, tmp2076
	movl	%eax, -28(%rbp)	# tmp2076, mcost
	movl	-64(%rbp), %r9d	# blocksize_x4, tmp2077
	movl	-68(%rbp), %r8d	# blocksize_x, tmp2078
	movl	-72(%rbp), %ecx	# blocksize_y, tmp2079
	movq	-16(%rbp), %rdx	# get_ref_line, tmp2080
	movq	-136(%rbp), %rsi	# orig_pic, tmp2081
	movq	-8(%rbp), %rax	# ref_pic, tmp2082
	movl	-32(%rbp), %edi	# cand_y, tmp2083
	movl	%edi, 24(%rsp)	# tmp2083,
	movl	-36(%rbp), %edi	# cand_x, tmp2084
	movl	%edi, 16(%rsp)	# tmp2084,
	movl	56(%rbp), %edi	# min_mcost, tmp2085
	movl	%edi, 8(%rsp)	# tmp2085,
	movl	-28(%rbp), %edi	# mcost, tmp2086
	movl	%edi, (%rsp)	# tmp2086,
	movq	%rax, %rdi	# tmp2082,
	call	PartCalMad	#
	movl	%eax, -28(%rbp)	# tmp2087, mcost
	movq	McostState(%rip), %rax	# McostState, McostState.215
	movl	-48(%rbp), %edx	# center_y, tmp2088
	movl	-32(%rbp), %ecx	# cand_y, tmp2089
	subl	%edx, %ecx	# tmp2088, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2090
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$3, %rdx	#, D.7402
	addq	%rdx, %rax	# D.7402, D.7410
	movq	(%rax), %rax	# *_1402, D.7408
	movl	-52(%rbp), %edx	# center_x, tmp2091
	movl	-36(%rbp), %ecx	# cand_x, tmp2092
	subl	%edx, %ecx	# tmp2091, D.7400
	movl	48(%rbp), %edx	# search_range, tmp2093
	addl	%ecx, %edx	# D.7400, D.7400
	movslq	%edx, %rdx	# D.7400, D.7402
	salq	$2, %rdx	#, D.7402
	addq	%rax, %rdx	# D.7408, D.7408
	movl	-28(%rbp), %eax	# mcost, tmp2094
	movl	%eax, (%rdx)	# tmp2094, *_1408
	movl	-28(%rbp), %eax	# mcost, tmp2095
	cmpl	56(%rbp), %eax	# min_mcost, tmp2095
	jge	.L189	#,
	movl	-36(%rbp), %eax	# cand_x, tmp2096
	movl	%eax, -120(%rbp)	# tmp2096, best_x
	movl	-32(%rbp), %eax	# cand_y, tmp2097
	movl	%eax, -116(%rbp)	# tmp2097, best_y
	movl	-28(%rbp), %eax	# mcost, tmp2098
	movl	%eax, 56(%rbp)	# tmp2098, min_mcost
	movl	$0, -96(%rbp)	#, iAbort
.L189:
	.loc 1 617 0 is_stmt 1
	addl	$1, -100(%rbp)	#, m
.L188:
	.loc 1 617 0 is_stmt 0 discriminator 1
	cmpl	$3, -100(%rbp)	#, m
	jle	.L190	#,
	.loc 1 623 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, iAbort
	je	.L191	#,
	.loc 1 624 0
	jmp	.L192	#
.L191:
	.loc 1 625 0
	movl	-120(%rbp), %eax	# best_x, tmp2099
	movl	%eax, -108(%rbp)	# tmp2099, iXMinNow
	.loc 1 626 0
	movl	-116(%rbp), %eax	# best_y, tmp2100
	movl	%eax, -112(%rbp)	# tmp2100, iYMinNow
	.loc 1 613 0
	addl	$1, -104(%rbp)	#, i
.L187:
	.loc 1 613 0 is_stmt 0 discriminator 1
	movl	-104(%rbp), %eax	# i, tmp2101
	cmpl	48(%rbp), %eax	# search_range, tmp2101
	jl	.L193	#,
.L192:
	.loc 1 629 0 is_stmt 1
	movl	-120(%rbp), %eax	# best_x, tmp2102
	movl	%eax, %edx	# tmp2102, D.7411
	movl	-148(%rbp), %eax	# pic_pix_x, tmp2103
	subl	%eax, %edx	# D.7411, D.7411
	movl	%edx, %eax	# D.7411, D.7411
	movl	%eax, %edx	# D.7411, D.7407
	movq	32(%rbp), %rax	# mv_x, tmp2104
	movw	%dx, (%rax)	# D.7407, *mv_x_184(D)
	.loc 1 630 0
	movl	-116(%rbp), %eax	# best_y, tmp2105
	movl	%eax, %edx	# tmp2105, D.7411
	movl	-152(%rbp), %eax	# pic_pix_y, tmp2106
	subl	%eax, %edx	# D.7411, D.7411
	movl	%edx, %eax	# D.7411, D.7411
	movl	%eax, %edx	# D.7411, D.7407
	movq	40(%rbp), %rax	# mv_y, tmp2107
	movw	%dx, (%rax)	# D.7407, *mv_y_188(D)
	.loc 1 631 0
	movl	56(%rbp), %eax	# min_mcost, D.7400
	.loc 1 632 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	FastIntegerPelBlockMotionSearch, .-FastIntegerPelBlockMotionSearch
	.globl	AddUpSADQuarter
	.type	AddUpSADQuarter, @function
AddUpSADQuarter:
.LFB12:
	.loc 1 651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$1200, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -1188(%rbp)	# pic_pix_x, pic_pix_x
	movl	%esi, -1192(%rbp)	# pic_pix_y, pic_pix_y
	movl	%edx, -1196(%rbp)	# blocksize_x, blocksize_x
	movl	%ecx, -1200(%rbp)	# blocksize_y, blocksize_y
	movl	%r8d, -1204(%rbp)	# cand_mv_x, cand_mv_x
	movl	%r9d, -1208(%rbp)	# cand_mv_y, cand_mv_y
	.loc 1 655 0
	movl	32(%rbp), %eax	# Mvmcost, tmp269
	movl	%eax, -1164(%rbp)	# tmp269, mcost
	.loc 1 659 0
	movq	16(%rbp), %rax	# ref_picture, tmp270
	movq	6448(%rax), %rax	# ref_picture_15(D)->imgY_ups, tmp271
	movq	%rax, -1128(%rbp)	# tmp271, ref_pic
	.loc 1 660 0
	movq	16(%rbp), %rax	# ref_picture, tmp272
	movl	6392(%rax), %eax	# ref_picture_15(D)->size_x, tmp273
	movl	%eax, -1148(%rbp)	# tmp273, img_width
	.loc 1 661 0
	movq	16(%rbp), %rax	# ref_picture, tmp274
	movl	6396(%rax), %eax	# ref_picture_15(D)->size_y, tmp275
	movl	%eax, -1144(%rbp)	# tmp275, img_height
	.loc 1 664 0
	movl	$0, -1172(%rbp)	#, y0
	movl	$0, -1176(%rbp)	#, abort_search
	jmp	.L235	#
.L246:
	.loc 1 666 0
	movl	-1172(%rbp), %eax	# y0, tmp276
	movl	-1192(%rbp), %edx	# pic_pix_y, tmp277
	addl	%edx, %eax	# tmp277, D.7412
	leal	0(,%rax,4), %edx	#, D.7412
	movl	-1208(%rbp), %eax	# cand_mv_y, tmp281
	addl	%edx, %eax	# D.7412, tmp280
	movl	%eax, -1140(%rbp)	# tmp280, ry0
	.loc 1 668 0
	movl	$0, -1168(%rbp)	#, x0
	jmp	.L236	#
.L244:
	.loc 1 670 0
	movl	-1168(%rbp), %eax	# x0, tmp282
	movl	-1188(%rbp), %edx	# pic_pix_x, tmp283
	addl	%edx, %eax	# tmp283, D.7412
	leal	0(,%rax,4), %edx	#, D.7412
	movl	-1204(%rbp), %eax	# cand_mv_x, tmp287
	addl	%edx, %eax	# D.7412, tmp286
	movl	%eax, -1136(%rbp)	# tmp286, rx0
	.loc 1 671 0
	leaq	-1104(%rbp), %rax	#, tmp288
	movq	%rax, -1120(%rbp)	# tmp288, d
	.loc 1 673 0
	movl	-1172(%rbp), %eax	# y0, tmp289
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7413
	movq	24(%rbp), %rax	# orig_pic, tmp290
	addq	%rdx, %rax	# D.7413, D.7414
	movq	(%rax), %rax	# *_38, tmp291
	movq	%rax, -1112(%rbp)	# tmp291, orig_line
	movl	-1140(%rbp), %eax	# ry0, tmp292
	movl	%eax, -1132(%rbp)	# tmp292, ry
	.loc 1 674 0
	movq	-1120(%rbp), %rbx	# d, d.216
	leaq	4(%rbx), %rax	#, tmp293
	movq	%rax, -1120(%rbp)	# tmp293, d
	movl	-1168(%rbp), %eax	# x0, tmp294
	cltq
	leaq	(%rax,%rax), %rdx	#, D.7413
	movq	-1112(%rbp), %rax	# orig_line, tmp295
	addq	%rdx, %rax	# D.7413, D.7415
	movzwl	(%rax), %eax	# *_45, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.217
	movl	-1148(%rbp), %r8d	# img_width, tmp296
	movl	-1144(%rbp), %ecx	# img_height, tmp297
	movl	-1136(%rbp), %edx	# rx0, tmp298
	movl	-1132(%rbp), %esi	# ry, tmp299
	movq	-1128(%rbp), %rdi	# ref_pic, tmp300
	call	*%rax	# PelY_14.217
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.216_41
	.loc 1 675 0
	movq	-1120(%rbp), %rbx	# d, d.218
	leaq	4(%rbx), %rax	#, tmp301
	movq	%rax, -1120(%rbp)	# tmp301, d
	movl	-1168(%rbp), %eax	# x0, tmp302
	cltq
	addq	$1, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp303
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_57, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.219
	movl	-1136(%rbp), %edx	# rx0, tmp304
	leal	4(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp305
	movl	-1144(%rbp), %edx	# img_height, tmp306
	movl	-1132(%rbp), %esi	# ry, tmp307
	movq	-1128(%rbp), %rdi	# ref_pic, tmp308
	movl	%ecx, %r8d	# tmp305,
	movl	%edx, %ecx	# tmp306,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.219
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.218_52
	.loc 1 676 0
	movq	-1120(%rbp), %rbx	# d, d.220
	leaq	4(%rbx), %rax	#, tmp309
	movq	%rax, -1120(%rbp)	# tmp309, d
	movl	-1168(%rbp), %eax	# x0, tmp310
	cltq
	addq	$2, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp311
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_70, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.221
	movl	-1136(%rbp), %edx	# rx0, tmp312
	leal	8(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp313
	movl	-1144(%rbp), %edx	# img_height, tmp314
	movl	-1132(%rbp), %esi	# ry, tmp315
	movq	-1128(%rbp), %rdi	# ref_pic, tmp316
	movl	%ecx, %r8d	# tmp313,
	movl	%edx, %ecx	# tmp314,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.221
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.220_65
	.loc 1 677 0
	movq	-1120(%rbp), %rbx	# d, d.222
	leaq	4(%rbx), %rax	#, tmp317
	movq	%rax, -1120(%rbp)	# tmp317, d
	movl	-1168(%rbp), %eax	# x0, tmp318
	cltq
	addq	$3, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp319
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_83, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.223
	movl	-1136(%rbp), %edx	# rx0, tmp320
	leal	12(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp321
	movl	-1144(%rbp), %edx	# img_height, tmp322
	movl	-1132(%rbp), %esi	# ry, tmp323
	movq	-1128(%rbp), %rdi	# ref_pic, tmp324
	movl	%ecx, %r8d	# tmp321,
	movl	%edx, %ecx	# tmp322,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.223
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.222_78
	.loc 1 679 0
	movl	-1172(%rbp), %eax	# y0, tmp325
	cltq
	addq	$1, %rax	#, D.7417
	leaq	0(,%rax,8), %rdx	#, D.7417
	movq	24(%rbp), %rax	# orig_pic, tmp326
	addq	%rdx, %rax	# D.7417, D.7414
	movq	(%rax), %rax	# *_94, tmp327
	movq	%rax, -1112(%rbp)	# tmp327, orig_line
	movl	-1140(%rbp), %eax	# ry0, tmp331
	addl	$4, %eax	#, tmp330
	movl	%eax, -1132(%rbp)	# tmp330, ry
	.loc 1 680 0
	movq	-1120(%rbp), %rbx	# d, d.224
	leaq	4(%rbx), %rax	#, tmp332
	movq	%rax, -1120(%rbp)	# tmp332, d
	movl	-1168(%rbp), %eax	# x0, tmp333
	cltq
	leaq	(%rax,%rax), %rdx	#, D.7413
	movq	-1112(%rbp), %rax	# orig_line, tmp334
	addq	%rdx, %rax	# D.7413, D.7415
	movzwl	(%rax), %eax	# *_101, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.225
	movl	-1148(%rbp), %r8d	# img_width, tmp335
	movl	-1144(%rbp), %ecx	# img_height, tmp336
	movl	-1136(%rbp), %edx	# rx0, tmp337
	movl	-1132(%rbp), %esi	# ry, tmp338
	movq	-1128(%rbp), %rdi	# ref_pic, tmp339
	call	*%rax	# PelY_14.225
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.224_97
	.loc 1 681 0
	movq	-1120(%rbp), %rbx	# d, d.226
	leaq	4(%rbx), %rax	#, tmp340
	movq	%rax, -1120(%rbp)	# tmp340, d
	movl	-1168(%rbp), %eax	# x0, tmp341
	cltq
	addq	$1, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp342
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_113, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.227
	movl	-1136(%rbp), %edx	# rx0, tmp343
	leal	4(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp344
	movl	-1144(%rbp), %edx	# img_height, tmp345
	movl	-1132(%rbp), %esi	# ry, tmp346
	movq	-1128(%rbp), %rdi	# ref_pic, tmp347
	movl	%ecx, %r8d	# tmp344,
	movl	%edx, %ecx	# tmp345,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.227
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.226_108
	.loc 1 682 0
	movq	-1120(%rbp), %rbx	# d, d.228
	leaq	4(%rbx), %rax	#, tmp348
	movq	%rax, -1120(%rbp)	# tmp348, d
	movl	-1168(%rbp), %eax	# x0, tmp349
	cltq
	addq	$2, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp350
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_126, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.229
	movl	-1136(%rbp), %edx	# rx0, tmp351
	leal	8(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp352
	movl	-1144(%rbp), %edx	# img_height, tmp353
	movl	-1132(%rbp), %esi	# ry, tmp354
	movq	-1128(%rbp), %rdi	# ref_pic, tmp355
	movl	%ecx, %r8d	# tmp352,
	movl	%edx, %ecx	# tmp353,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.229
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.228_121
	.loc 1 683 0
	movq	-1120(%rbp), %rbx	# d, d.230
	leaq	4(%rbx), %rax	#, tmp356
	movq	%rax, -1120(%rbp)	# tmp356, d
	movl	-1168(%rbp), %eax	# x0, tmp357
	cltq
	addq	$3, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp358
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_139, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.231
	movl	-1136(%rbp), %edx	# rx0, tmp359
	leal	12(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp360
	movl	-1144(%rbp), %edx	# img_height, tmp361
	movl	-1132(%rbp), %esi	# ry, tmp362
	movq	-1128(%rbp), %rdi	# ref_pic, tmp363
	movl	%ecx, %r8d	# tmp360,
	movl	%edx, %ecx	# tmp361,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.231
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.230_134
	.loc 1 685 0
	movl	-1172(%rbp), %eax	# y0, tmp364
	cltq
	addq	$2, %rax	#, D.7417
	leaq	0(,%rax,8), %rdx	#, D.7417
	movq	24(%rbp), %rax	# orig_pic, tmp365
	addq	%rdx, %rax	# D.7417, D.7414
	movq	(%rax), %rax	# *_150, tmp366
	movq	%rax, -1112(%rbp)	# tmp366, orig_line
	movl	-1140(%rbp), %eax	# ry0, tmp370
	addl	$8, %eax	#, tmp369
	movl	%eax, -1132(%rbp)	# tmp369, ry
	.loc 1 686 0
	movq	-1120(%rbp), %rbx	# d, d.232
	leaq	4(%rbx), %rax	#, tmp371
	movq	%rax, -1120(%rbp)	# tmp371, d
	movl	-1168(%rbp), %eax	# x0, tmp372
	cltq
	leaq	(%rax,%rax), %rdx	#, D.7413
	movq	-1112(%rbp), %rax	# orig_line, tmp373
	addq	%rdx, %rax	# D.7413, D.7415
	movzwl	(%rax), %eax	# *_157, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.233
	movl	-1148(%rbp), %r8d	# img_width, tmp374
	movl	-1144(%rbp), %ecx	# img_height, tmp375
	movl	-1136(%rbp), %edx	# rx0, tmp376
	movl	-1132(%rbp), %esi	# ry, tmp377
	movq	-1128(%rbp), %rdi	# ref_pic, tmp378
	call	*%rax	# PelY_14.233
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.232_153
	.loc 1 687 0
	movq	-1120(%rbp), %rbx	# d, d.234
	leaq	4(%rbx), %rax	#, tmp379
	movq	%rax, -1120(%rbp)	# tmp379, d
	movl	-1168(%rbp), %eax	# x0, tmp380
	cltq
	addq	$1, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp381
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_169, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.235
	movl	-1136(%rbp), %edx	# rx0, tmp382
	leal	4(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp383
	movl	-1144(%rbp), %edx	# img_height, tmp384
	movl	-1132(%rbp), %esi	# ry, tmp385
	movq	-1128(%rbp), %rdi	# ref_pic, tmp386
	movl	%ecx, %r8d	# tmp383,
	movl	%edx, %ecx	# tmp384,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.235
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.234_164
	.loc 1 688 0
	movq	-1120(%rbp), %rbx	# d, d.236
	leaq	4(%rbx), %rax	#, tmp387
	movq	%rax, -1120(%rbp)	# tmp387, d
	movl	-1168(%rbp), %eax	# x0, tmp388
	cltq
	addq	$2, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp389
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_182, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.237
	movl	-1136(%rbp), %edx	# rx0, tmp390
	leal	8(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp391
	movl	-1144(%rbp), %edx	# img_height, tmp392
	movl	-1132(%rbp), %esi	# ry, tmp393
	movq	-1128(%rbp), %rdi	# ref_pic, tmp394
	movl	%ecx, %r8d	# tmp391,
	movl	%edx, %ecx	# tmp392,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.237
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.236_177
	.loc 1 689 0
	movq	-1120(%rbp), %rbx	# d, d.238
	leaq	4(%rbx), %rax	#, tmp395
	movq	%rax, -1120(%rbp)	# tmp395, d
	movl	-1168(%rbp), %eax	# x0, tmp396
	cltq
	addq	$3, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp397
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_195, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.239
	movl	-1136(%rbp), %edx	# rx0, tmp398
	leal	12(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp399
	movl	-1144(%rbp), %edx	# img_height, tmp400
	movl	-1132(%rbp), %esi	# ry, tmp401
	movq	-1128(%rbp), %rdi	# ref_pic, tmp402
	movl	%ecx, %r8d	# tmp399,
	movl	%edx, %ecx	# tmp400,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.239
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.238_190
	.loc 1 691 0
	movl	-1172(%rbp), %eax	# y0, tmp403
	cltq
	addq	$3, %rax	#, D.7417
	leaq	0(,%rax,8), %rdx	#, D.7417
	movq	24(%rbp), %rax	# orig_pic, tmp404
	addq	%rdx, %rax	# D.7417, D.7414
	movq	(%rax), %rax	# *_206, tmp405
	movq	%rax, -1112(%rbp)	# tmp405, orig_line
	movl	-1140(%rbp), %eax	# ry0, tmp409
	addl	$12, %eax	#, tmp408
	movl	%eax, -1132(%rbp)	# tmp408, ry
	.loc 1 692 0
	movq	-1120(%rbp), %rbx	# d, d.240
	leaq	4(%rbx), %rax	#, tmp410
	movq	%rax, -1120(%rbp)	# tmp410, d
	movl	-1168(%rbp), %eax	# x0, tmp411
	cltq
	leaq	(%rax,%rax), %rdx	#, D.7413
	movq	-1112(%rbp), %rax	# orig_line, tmp412
	addq	%rdx, %rax	# D.7413, D.7415
	movzwl	(%rax), %eax	# *_213, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.241
	movl	-1148(%rbp), %r8d	# img_width, tmp413
	movl	-1144(%rbp), %ecx	# img_height, tmp414
	movl	-1136(%rbp), %edx	# rx0, tmp415
	movl	-1132(%rbp), %esi	# ry, tmp416
	movq	-1128(%rbp), %rdi	# ref_pic, tmp417
	call	*%rax	# PelY_14.241
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.240_209
	.loc 1 693 0
	movq	-1120(%rbp), %rbx	# d, d.242
	leaq	4(%rbx), %rax	#, tmp418
	movq	%rax, -1120(%rbp)	# tmp418, d
	movl	-1168(%rbp), %eax	# x0, tmp419
	cltq
	addq	$1, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp420
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_225, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.243
	movl	-1136(%rbp), %edx	# rx0, tmp421
	leal	4(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp422
	movl	-1144(%rbp), %edx	# img_height, tmp423
	movl	-1132(%rbp), %esi	# ry, tmp424
	movq	-1128(%rbp), %rdi	# ref_pic, tmp425
	movl	%ecx, %r8d	# tmp422,
	movl	%edx, %ecx	# tmp423,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.243
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.242_220
	.loc 1 694 0
	movq	-1120(%rbp), %rbx	# d, d.244
	leaq	4(%rbx), %rax	#, tmp426
	movq	%rax, -1120(%rbp)	# tmp426, d
	movl	-1168(%rbp), %eax	# x0, tmp427
	cltq
	addq	$2, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp428
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_238, D.7416
	movzwl	%ax, %r12d	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.245
	movl	-1136(%rbp), %edx	# rx0, tmp429
	leal	8(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp430
	movl	-1144(%rbp), %edx	# img_height, tmp431
	movl	-1132(%rbp), %esi	# ry, tmp432
	movq	-1128(%rbp), %rdi	# ref_pic, tmp433
	movl	%ecx, %r8d	# tmp430,
	movl	%edx, %ecx	# tmp431,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.245
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %r12d	# D.7412, D.7412
	movl	%r12d, %eax	# D.7412, D.7412
	movl	%eax, (%rbx)	# D.7412, *d.244_233
	.loc 1 695 0
	movl	-1168(%rbp), %eax	# x0, tmp434
	cltq
	addq	$3, %rax	#, D.7417
	leaq	(%rax,%rax), %rdx	#, D.7417
	movq	-1112(%rbp), %rax	# orig_line, tmp435
	addq	%rdx, %rax	# D.7417, D.7415
	movzwl	(%rax), %eax	# *_249, D.7416
	movzwl	%ax, %ebx	# D.7416, D.7412
	movq	PelY_14(%rip), %rax	# PelY_14, PelY_14.246
	movl	-1136(%rbp), %edx	# rx0, tmp436
	leal	12(%rdx), %r9d	#, D.7412
	movl	-1148(%rbp), %ecx	# img_width, tmp437
	movl	-1144(%rbp), %edx	# img_height, tmp438
	movl	-1132(%rbp), %esi	# ry, tmp439
	movq	-1128(%rbp), %rdi	# ref_pic, tmp440
	movl	%ecx, %r8d	# tmp437,
	movl	%edx, %ecx	# tmp438,
	movl	%r9d, %edx	# D.7412,
	call	*%rax	# PelY_14.246
	movzwl	%ax, %eax	# D.7416, D.7412
	subl	%eax, %ebx	# D.7412, D.7412
	movl	%ebx, %edx	# D.7412, D.7412
	movq	-1120(%rbp), %rax	# d, tmp441
	movl	%edx, (%rax)	# D.7412, *d_234
	.loc 1 697 0
	cmpl	$0, 48(%rbp)	#, useABT
	jne	.L237	#,
	.loc 1 699 0
	movq	input(%rip), %rax	# input, input.247
	movl	24(%rax), %edx	# input.247_258->hadamard, D.7412
	leaq	-1104(%rbp), %rax	#, tmp442
	movl	%edx, %esi	# D.7412,
	movq	%rax, %rdi	# tmp442,
	call	SATD	#
	addl	%eax, -1164(%rbp)	# D.7412, mcost
	movl	-1164(%rbp), %eax	# mcost, tmp443
	cmpl	40(%rbp), %eax	# min_mcost, tmp443
	jle	.L238	#,
	.loc 1 701 0
	movl	$1, -1176(%rbp)	#, abort_search
	.loc 1 702 0
	jmp	.L239	#
.L237:
	.loc 1 707 0
	movl	-1172(%rbp), %eax	# y0, tmp444
	movl	%eax, -1160(%rbp)	# tmp444, yy
	movl	$0, -1156(%rbp)	#, kk
	jmp	.L240	#
.L243:
	.loc 1 708 0
	movl	-1168(%rbp), %eax	# x0, tmp445
	movl	%eax, -1152(%rbp)	# tmp445, xx
	jmp	.L241	#
.L242:
	.loc 1 709 0 discriminator 2
	movl	-1156(%rbp), %eax	# kk, tmp447
	cltq
	movl	-1104(%rbp,%rax,4), %eax	# diff, D.7412
	movl	-1152(%rbp), %edx	# xx, tmp449
	movslq	%edx, %rdx	# tmp449, tmp448
	movl	-1160(%rbp), %ecx	# yy, tmp451
	movslq	%ecx, %rcx	# tmp451, tmp450
	salq	$4, %rcx	#, tmp452
	addq	%rcx, %rdx	# tmp452, tmp453
	movl	%eax, -1040(%rbp,%rdx,4)	# D.7412, curr_diff
	.loc 1 708 0 discriminator 2
	addl	$1, -1152(%rbp)	#, xx
	addl	$1, -1156(%rbp)	#, kk
.L241:
	.loc 1 708 0 is_stmt 0 discriminator 1
	movl	-1168(%rbp), %eax	# x0, tmp454
	addl	$4, %eax	#, D.7412
	cmpl	-1152(%rbp), %eax	# xx, D.7412
	jg	.L242	#,
	.loc 1 707 0 is_stmt 1
	addl	$1, -1160(%rbp)	#, yy
.L240:
	.loc 1 707 0 is_stmt 0 discriminator 1
	movl	-1172(%rbp), %eax	# y0, tmp455
	addl	$4, %eax	#, D.7412
	cmpl	-1160(%rbp), %eax	# yy, D.7412
	jg	.L243	#,
.L238:
	.loc 1 668 0 is_stmt 1
	addl	$4, -1168(%rbp)	#, x0
.L236:
	.loc 1 668 0 is_stmt 0 discriminator 1
	movl	-1168(%rbp), %eax	# x0, tmp456
	cmpl	-1196(%rbp), %eax	# blocksize_x, tmp456
	jl	.L244	#,
.L239:
	.loc 1 664 0 is_stmt 1
	addl	$4, -1172(%rbp)	#, y0
.L235:
	.loc 1 664 0 is_stmt 0 discriminator 1
	movl	-1172(%rbp), %eax	# y0, tmp457
	cmpl	-1200(%rbp), %eax	# blocksize_y, tmp457
	jge	.L245	#,
	.loc 1 664 0 discriminator 2
	cmpl	$0, -1176(%rbp)	#, abort_search
	je	.L246	#,
.L245:
	.loc 1 714 0 is_stmt 1
	movl	-1164(%rbp), %eax	# mcost, D.7412
	.loc 1 715 0
	addq	$1200, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	AddUpSADQuarter, .-AddUpSADQuarter
	.globl	FastSubPelBlockMotionSearch
	.type	FastSubPelBlockMotionSearch, @function
FastSubPelBlockMotionSearch:
.LFB13:
	.loc 1 734 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rdi, -136(%rbp)	# orig_pic, orig_pic
	movl	%esi, %eax	# ref, tmp275
	movl	%edx, -144(%rbp)	# list, list
	movl	%ecx, -148(%rbp)	# pic_pix_x, pic_pix_x
	movl	%r8d, -152(%rbp)	# pic_pix_y, pic_pix_y
	movl	%r9d, -156(%rbp)	# blocktype, blocktype
	movl	16(%rbp), %ecx	# pred_mv_x, tmp276
	movl	24(%rbp), %edx	# pred_mv_y, tmp277
	movsd	%xmm0, -176(%rbp)	# lambda, lambda
	movw	%ax, -140(%rbp)	# tmp275, ref
	movw	%cx, -160(%rbp)	# tmp276, pred_mv_x
	movw	%dx, -164(%rbp)	# tmp277, pred_mv_y
	.loc 1 740 0
	movq	img(%rip), %rax	# img, img.249
	movl	72400(%rax), %eax	# img.249_30->MbaffFrameFlag, D.7418
	testl	%eax, %eax	# D.7418
	je	.L249	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.250
	movq	14168(%rax), %rdx	# img.250_32->mb_data, D.7419
	movq	img(%rip), %rax	# img, img.251
	movl	12(%rax), %eax	# img.251_34->current_mb_nr, D.7418
	cltq
	imulq	$632, %rax, %rax	#, D.7420, D.7420
	addq	%rdx, %rax	# D.7419, D.7419
	movl	532(%rax), %eax	# _38->mb_field, D.7418
	testl	%eax, %eax	# D.7418
	je	.L249	#,
	movq	img(%rip), %rax	# img, img.253
	movl	12(%rax), %eax	# img.253_40->current_mb_nr, D.7418
	andl	$1, %eax	#, D.7421
	testl	%eax, %eax	# D.7421
	je	.L250	#,
	movl	$4, %eax	#, iftmp.252
	jmp	.L251	#
.L250:
	.loc 1 740 0 discriminator 2
	movl	$2, %eax	#, iftmp.252
.L251:
	.loc 1 740 0 discriminator 3
	jmp	.L252	#
.L249:
	.loc 1 740 0 discriminator 2
	movl	$0, %eax	#, iftmp.248
.L252:
	.loc 1 740 0 discriminator 3
	movl	%eax, -88(%rbp)	# iftmp.248, list_offset
	.loc 1 741 0 is_stmt 1 discriminator 3
	movl	-88(%rbp), %eax	# list_offset, tmp278
	movl	-144(%rbp), %edx	# list, tmp279
	addl	%edx, %eax	# tmp279, D.7418
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.7422
	movswq	-140(%rbp), %rdx	# ref, D.7420
	salq	$3, %rdx	#, D.7420
	addq	%rdx, %rax	# D.7420, D.7422
	movq	(%rax), %rax	# *_55, tmp281
	movq	%rax, -8(%rbp)	# tmp281, ref_picture
	.loc 1 743 0 discriminator 3
	movsd	-176(%rbp), %xmm1	# lambda, tmp282
	movsd	.LC15(%rip), %xmm0	#, tmp283
	mulsd	%xmm1, %xmm0	# tmp282, D.7423
	movsd	.LC16(%rip), %xmm1	#, tmp284
	addsd	%xmm1, %xmm0	# tmp284, D.7423
	cvttsd2si	%xmm0, %eax	# D.7423, tmp285
	movl	%eax, -84(%rbp)	# tmp285, lambda_factor
	.loc 1 744 0 discriminator 3
	movl	$0, -80(%rbp)	#, mv_shift
	.loc 1 745 0 discriminator 3
	movq	input(%rip), %rax	# input, input.254
	movl	-156(%rbp), %edx	# blocktype, tmp287
	movslq	%edx, %rdx	# tmp287, tmp286
	addq	$10, %rdx	#, tmp288
	movl	(%rax,%rdx,8), %eax	# input.254_62->blc_size, tmp289
	movl	%eax, -76(%rbp)	# tmp289, blocksize_x
	.loc 1 746 0 discriminator 3
	movq	input(%rip), %rax	# input, input.255
	movl	-156(%rbp), %edx	# blocktype, tmp291
	movslq	%edx, %rdx	# tmp291, tmp290
	movl	84(%rax,%rdx,8), %eax	# input.255_65->blc_size, tmp292
	movl	%eax, -72(%rbp)	# tmp292, blocksize_y
	.loc 1 747 0 discriminator 3
	movl	-148(%rbp), %eax	# pic_pix_x, tmp296
	sall	$2, %eax	#, tmp295
	movl	%eax, -68(%rbp)	# tmp295, pic4_pix_x
	.loc 1 748 0 discriminator 3
	movl	-152(%rbp), %eax	# pic_pix_y, tmp300
	sall	$2, %eax	#, tmp299
	movl	%eax, -64(%rbp)	# tmp299, pic4_pix_y
	.loc 1 749 0 discriminator 3
	movq	-8(%rbp), %rax	# ref_picture, tmp301
	movl	6392(%rax), %eax	# ref_picture_56->size_x, D.7418
	subl	-76(%rbp), %eax	# blocksize_x, D.7418
	addl	$1, %eax	#, D.7418
	sall	$2, %eax	#, tmp302
	movl	%eax, -60(%rbp)	# tmp302, max_pos_x4
	.loc 1 750 0 discriminator 3
	movq	-8(%rbp), %rax	# ref_picture, tmp303
	movl	6396(%rax), %eax	# ref_picture_56->size_y, D.7418
	subl	-72(%rbp), %eax	# blocksize_y, D.7418
	addl	$1, %eax	#, D.7418
	sall	$2, %eax	#, tmp304
	movl	%eax, -56(%rbp)	# tmp304, max_pos_y4
	.loc 1 753 0 discriminator 3
	movl	$0, -100(%rbp)	#, currmv_x
	movl	$0, -96(%rbp)	#, currmv_y
	.loc 1 759 0 discriminator 3
	movq	32(%rbp), %rax	# mv_x, tmp305
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	sall	$2, %eax	#, D.7418
	movl	%eax, %edx	# D.7418, D.7424
	movq	32(%rbp), %rax	# mv_x, tmp306
	movw	%dx, (%rax)	# D.7424, *mv_x_81(D)
	.loc 1 760 0 discriminator 3
	movq	40(%rbp), %rax	# mv_y, tmp307
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	sall	$2, %eax	#, D.7418
	movl	%eax, %edx	# D.7418, D.7424
	movq	40(%rbp), %rax	# mv_y, tmp308
	movw	%dx, (%rax)	# D.7424, *mv_y_86(D)
	.loc 1 761 0 discriminator 3
	movq	32(%rbp), %rax	# mv_x, tmp309
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-68(%rbp), %eax	# pic4_pix_x, tmp310
	addl	%edx, %eax	# D.7418, D.7418
	cmpl	$1, %eax	#, D.7418
	jle	.L253	#,
	.loc 1 761 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax	# mv_x, tmp311
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-68(%rbp), %eax	# pic4_pix_x, tmp312
	addl	%eax, %edx	# tmp312, D.7418
	movl	-60(%rbp), %eax	# max_pos_x4, tmp313
	subl	$2, %eax	#, D.7418
	cmpl	%eax, %edx	# D.7418, D.7418
	jge	.L253	#,
	.loc 1 762 0 is_stmt 1 discriminator 1
	movq	40(%rbp), %rax	# mv_y, tmp314
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-64(%rbp), %eax	# pic4_pix_y, tmp315
	addl	%edx, %eax	# D.7418, D.7418
	.loc 1 761 0 discriminator 1
	cmpl	$1, %eax	#, D.7418
	jle	.L253	#,
	.loc 1 762 0
	movq	40(%rbp), %rax	# mv_y, tmp316
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-64(%rbp), %eax	# pic4_pix_y, tmp317
	addl	%eax, %edx	# tmp317, D.7418
	movl	-56(%rbp), %eax	# max_pos_y4, tmp318
	subl	$2, %eax	#, D.7418
	cmpl	%eax, %edx	# D.7418, D.7418
	jge	.L253	#,
	.loc 1 764 0
	movq	$FastPelY_14, PelY_14(%rip)	#, PelY_14
	jmp	.L254	#
.L253:
	.loc 1 768 0
	movq	$UMVPelY_14, PelY_14(%rip)	#, PelY_14
.L254:
	.loc 1 771 0
	movl	$3, -52(%rbp)	#, search_range_dynamic
	.loc 1 772 0
	movswl	-160(%rbp), %edx	# pred_mv_x, D.7418
	movq	32(%rbp), %rax	# mv_x, tmp319
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, tmp320
	sarl	$31, %eax	#, tmp320
	shrl	$30, %eax	#, tmp321
	addl	%eax, %edx	# tmp321, tmp322
	andl	$3, %edx	#, tmp323
	subl	%eax, %edx	# tmp321, tmp324
	movl	%edx, %eax	# tmp324, tmp324
	movl	%eax, -48(%rbp)	# tmp324, pred_frac_mv_x
	.loc 1 773 0
	movswl	-164(%rbp), %edx	# pred_mv_y, D.7418
	movq	40(%rbp), %rax	# mv_y, tmp325
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, tmp326
	sarl	$31, %eax	#, tmp326
	shrl	$30, %eax	#, tmp327
	addl	%eax, %edx	# tmp327, tmp328
	andl	$3, %edx	#, tmp329
	subl	%eax, %edx	# tmp327, tmp330
	movl	%edx, %eax	# tmp330, tmp330
	movl	%eax, -44(%rbp)	# tmp330, pred_frac_mv_y
	.loc 1 775 0
	movl	pred_MV_uplayer(%rip), %edx	# pred_MV_uplayer, D.7418
	movq	32(%rbp), %rax	# mv_x, tmp331
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, tmp332
	sarl	$31, %eax	#, tmp332
	shrl	$30, %eax	#, tmp333
	addl	%eax, %edx	# tmp333, tmp334
	andl	$3, %edx	#, tmp335
	subl	%eax, %edx	# tmp333, tmp336
	movl	%edx, %eax	# tmp336, tmp336
	movl	%eax, -40(%rbp)	# tmp336, pred_frac_up_mv_x
	.loc 1 776 0
	movl	pred_MV_uplayer+4(%rip), %edx	# pred_MV_uplayer, D.7418
	movq	40(%rbp), %rax	# mv_y, tmp337
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, tmp338
	sarl	$31, %eax	#, tmp338
	shrl	$30, %eax	#, tmp339
	addl	%eax, %edx	# tmp339, tmp340
	andl	$3, %edx	#, tmp341
	subl	%eax, %edx	# tmp339, tmp342
	movl	%edx, %eax	# tmp342, tmp342
	movl	%eax, -36(%rbp)	# tmp342, pred_frac_up_mv_y
	.loc 1 779 0
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp343
	addl	%eax, %eax	# D.7418
	leal	1(%rax), %edx	#, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp344
	addl	%eax, %eax	# D.7418
	addl	$1, %eax	#, D.7418
	imull	%edx, %eax	# D.7418, D.7418
	movslq	%eax, %rdx	# D.7418, D.7420
	movq	SearchState(%rip), %rax	# SearchState, SearchState.256
	movq	(%rax), %rax	# *SearchState.256_134, D.7425
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.7425,
	call	memset	#
	.loc 1 781 0
	movq	input(%rip), %rax	# input, input.257
	movl	24(%rax), %eax	# input.257_136->hadamard, D.7418
	testl	%eax, %eax	# D.7418
	je	.L255	#,
	.loc 1 783 0
	movq	32(%rbp), %rax	# mv_x, tmp345
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	%eax, -32(%rbp)	# tmp346, cand_mv_x
	.loc 1 784 0
	movq	40(%rbp), %rax	# mv_y, tmp347
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	%eax, -28(%rbp)	# tmp348, cand_mv_y
	.loc 1 785 0
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.258
	movl	-80(%rbp), %eax	# mv_shift, tmp349
	movl	-32(%rbp), %esi	# cand_mv_x, tmp350
	movl	%eax, %ecx	# tmp349, tmp487
	sall	%cl, %esi	# tmp487, D.7418
	movl	%esi, %ecx	# D.7418, D.7418
	movswl	-160(%rbp), %eax	# pred_mv_x, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rdx, %rax	# mvbits.258, D.7426
	movl	(%rax), %edx	# *_148, D.7418
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.259
	movl	-80(%rbp), %eax	# mv_shift, tmp351
	movl	-28(%rbp), %edi	# cand_mv_y, tmp352
	movl	%eax, %ecx	# tmp351, tmp490
	sall	%cl, %edi	# tmp490, D.7418
	movl	%edi, %ecx	# D.7418, D.7418
	movswl	-164(%rbp), %eax	# pred_mv_y, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rsi, %rax	# mvbits.259, D.7426
	movl	(%rax), %eax	# *_156, D.7418
	addl	%edx, %eax	# D.7418, D.7418
	imull	-84(%rbp), %eax	# lambda_factor, D.7418
	sarl	$16, %eax	#, tmp353
	movl	%eax, -24(%rbp)	# tmp353, mv_cost
	.loc 1 786 0
	movl	-28(%rbp), %r9d	# cand_mv_y, tmp354
	movl	-32(%rbp), %r8d	# cand_mv_x, tmp355
	movl	-72(%rbp), %ecx	# blocksize_y, tmp356
	movl	-76(%rbp), %edx	# blocksize_x, tmp357
	movl	-152(%rbp), %esi	# pic_pix_y, tmp358
	movl	-148(%rbp), %eax	# pic_pix_x, tmp359
	movl	72(%rbp), %edi	# useABT, tmp360
	movl	%edi, 32(%rsp)	# tmp360,
	movl	64(%rbp), %edi	# min_mcost, tmp361
	movl	%edi, 24(%rsp)	# tmp361,
	movl	-24(%rbp), %edi	# mv_cost, tmp362
	movl	%edi, 16(%rsp)	# tmp362,
	movq	-136(%rbp), %rdi	# orig_pic, tmp363
	movq	%rdi, 8(%rsp)	# tmp363,
	movq	-8(%rbp), %rdi	# ref_picture, tmp364
	movq	%rdi, (%rsp)	# tmp364,
	movl	%eax, %edi	# tmp359,
	call	AddUpSADQuarter	#
	movl	%eax, -20(%rbp)	# tmp365, mcost
	.loc 1 787 0
	movq	SearchState(%rip), %rax	# SearchState, SearchState.260
	movl	-52(%rbp), %edx	# search_range_dynamic, tmp366
	movslq	%edx, %rdx	# tmp366, D.7420
	salq	$3, %rdx	#, D.7420
	addq	%rdx, %rax	# D.7420, D.7427
	movq	(%rax), %rdx	# *_168, D.7425
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp367
	cltq
	addq	%rdx, %rax	# D.7425, D.7425
	movb	$1, (%rax)	#, *_171
	.loc 1 788 0
	movl	-20(%rbp), %eax	# mcost, tmp368
	cmpl	64(%rbp), %eax	# min_mcost, tmp368
	jge	.L257	#,
	.loc 1 790 0
	movl	-20(%rbp), %eax	# mcost, tmp369
	movl	%eax, 64(%rbp)	# tmp369, min_mcost
	.loc 1 791 0
	movl	-32(%rbp), %eax	# cand_mv_x, tmp370
	movl	%eax, -100(%rbp)	# tmp370, currmv_x
	.loc 1 792 0
	movl	-28(%rbp), %eax	# cand_mv_y, tmp371
	movl	%eax, -96(%rbp)	# tmp371, currmv_y
	jmp	.L257	#
.L255:
	.loc 1 797 0
	movq	SearchState(%rip), %rax	# SearchState, SearchState.261
	movl	-52(%rbp), %edx	# search_range_dynamic, tmp372
	movslq	%edx, %rdx	# tmp372, D.7420
	salq	$3, %rdx	#, D.7420
	addq	%rdx, %rax	# D.7420, D.7427
	movq	(%rax), %rdx	# *_178, D.7425
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp373
	cltq
	addq	%rdx, %rax	# D.7425, D.7425
	movb	$1, (%rax)	#, *_181
	.loc 1 798 0
	movq	32(%rbp), %rax	# mv_x, tmp374
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	%eax, -100(%rbp)	# tmp375, currmv_x
	.loc 1 799 0
	movq	40(%rbp), %rax	# mv_y, tmp376
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	%eax, -96(%rbp)	# tmp377, currmv_y
.L257:
	.loc 1 802 0
	cmpl	$0, -48(%rbp)	#, pred_frac_mv_x
	jne	.L258	#,
	.loc 1 802 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, pred_frac_mv_y
	je	.L259	#,
.L258:
	.loc 1 804 0 is_stmt 1
	movq	32(%rbp), %rax	# mv_x, tmp378
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-48(%rbp), %eax	# pred_frac_mv_x, tmp382
	addl	%edx, %eax	# D.7418, tmp381
	movl	%eax, -32(%rbp)	# tmp381, cand_mv_x
	.loc 1 805 0
	movq	40(%rbp), %rax	# mv_y, tmp383
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	movswl	%ax, %edx	# D.7424, D.7418
	movl	-44(%rbp), %eax	# pred_frac_mv_y, tmp387
	addl	%edx, %eax	# D.7418, tmp386
	movl	%eax, -28(%rbp)	# tmp386, cand_mv_y
	.loc 1 806 0
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.262
	movl	-80(%rbp), %eax	# mv_shift, tmp388
	movl	-32(%rbp), %esi	# cand_mv_x, tmp389
	movl	%eax, %ecx	# tmp388, tmp493
	sall	%cl, %esi	# tmp493, D.7418
	movl	%esi, %ecx	# D.7418, D.7418
	movswl	-160(%rbp), %eax	# pred_mv_x, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rdx, %rax	# mvbits.262, D.7426
	movl	(%rax), %edx	# *_198, D.7418
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.263
	movl	-80(%rbp), %eax	# mv_shift, tmp390
	movl	-28(%rbp), %edi	# cand_mv_y, tmp391
	movl	%eax, %ecx	# tmp390, tmp496
	sall	%cl, %edi	# tmp496, D.7418
	movl	%edi, %ecx	# D.7418, D.7418
	movswl	-164(%rbp), %eax	# pred_mv_y, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rsi, %rax	# mvbits.263, D.7426
	movl	(%rax), %eax	# *_206, D.7418
	addl	%edx, %eax	# D.7418, D.7418
	imull	-84(%rbp), %eax	# lambda_factor, D.7418
	sarl	$16, %eax	#, tmp392
	movl	%eax, -24(%rbp)	# tmp392, mv_cost
	.loc 1 807 0
	movl	-28(%rbp), %r9d	# cand_mv_y, tmp393
	movl	-32(%rbp), %r8d	# cand_mv_x, tmp394
	movl	-72(%rbp), %ecx	# blocksize_y, tmp395
	movl	-76(%rbp), %edx	# blocksize_x, tmp396
	movl	-152(%rbp), %esi	# pic_pix_y, tmp397
	movl	-148(%rbp), %eax	# pic_pix_x, tmp398
	movl	72(%rbp), %edi	# useABT, tmp399
	movl	%edi, 32(%rsp)	# tmp399,
	movl	64(%rbp), %edi	# min_mcost, tmp400
	movl	%edi, 24(%rsp)	# tmp400,
	movl	-24(%rbp), %edi	# mv_cost, tmp401
	movl	%edi, 16(%rsp)	# tmp401,
	movq	-136(%rbp), %rdi	# orig_pic, tmp402
	movq	%rdi, 8(%rsp)	# tmp402,
	movq	-8(%rbp), %rdi	# ref_picture, tmp403
	movq	%rdi, (%rsp)	# tmp403,
	movl	%eax, %edi	# tmp398,
	call	AddUpSADQuarter	#
	movl	%eax, -20(%rbp)	# tmp404, mcost
	.loc 1 808 0
	movq	SearchState(%rip), %rdx	# SearchState, SearchState.264
	movq	40(%rbp), %rax	# mv_y, tmp405
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	-28(%rbp), %ecx	# cand_mv_y, tmp406
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp407
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$3, %rax	#, D.7420
	addq	%rdx, %rax	# SearchState.264, D.7427
	movq	(%rax), %rdx	# *_219, D.7425
	movq	32(%rbp), %rax	# mv_x, tmp408
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	-32(%rbp), %ecx	# cand_mv_x, tmp409
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp410
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	addq	%rdx, %rax	# D.7425, D.7425
	movb	$1, (%rax)	#, *_226
	.loc 1 809 0
	movl	-20(%rbp), %eax	# mcost, tmp411
	cmpl	64(%rbp), %eax	# min_mcost, tmp411
	jge	.L259	#,
	.loc 1 811 0
	movl	-20(%rbp), %eax	# mcost, tmp412
	movl	%eax, 64(%rbp)	# tmp412, min_mcost
	.loc 1 812 0
	movl	-32(%rbp), %eax	# cand_mv_x, tmp413
	movl	%eax, -100(%rbp)	# tmp413, currmv_x
	.loc 1 813 0
	movl	-28(%rbp), %eax	# cand_mv_y, tmp414
	movl	%eax, -96(%rbp)	# tmp414, currmv_y
.L259:
	.loc 1 818 0
	movl	-100(%rbp), %eax	# currmv_x, tmp415
	movl	%eax, -116(%rbp)	# tmp415, iXMinNow
	.loc 1 819 0
	movl	-96(%rbp), %eax	# currmv_y, tmp416
	movl	%eax, -112(%rbp)	# tmp416, iYMinNow
	.loc 1 820 0
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp417
	addl	%eax, %eax	# D.7418
	addl	$1, %eax	#, tmp418
	movl	%eax, -16(%rbp)	# tmp418, iCurrSearchRange
	.loc 1 821 0
	movl	$0, -108(%rbp)	#, i
	jmp	.L260	#
.L266:
	.loc 1 823 0
	movl	$1, -92(%rbp)	#, abort_search
	.loc 1 824 0
	movl	$65536, -12(%rbp)	#, iSADLayer
	.loc 1 825 0
	movl	$0, -104(%rbp)	#, m
	jmp	.L261	#
.L263:
	.loc 1 827 0
	movl	-104(%rbp), %eax	# m, tmp420
	cltq
	movl	Diamond_x.4932(,%rax,4), %edx	# Diamond_x, D.7418
	movl	-116(%rbp), %eax	# iXMinNow, tmp424
	addl	%edx, %eax	# D.7418, tmp423
	movl	%eax, -32(%rbp)	# tmp423, cand_mv_x
	.loc 1 828 0
	movl	-104(%rbp), %eax	# m, tmp426
	cltq
	movl	Diamond_y.4933(,%rax,4), %edx	# Diamond_y, D.7418
	movl	-112(%rbp), %eax	# iYMinNow, tmp430
	addl	%edx, %eax	# D.7418, tmp429
	movl	%eax, -28(%rbp)	# tmp429, cand_mv_y
	.loc 1 830 0
	movq	32(%rbp), %rax	# mv_x, tmp431
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	-32(%rbp), %edx	# cand_mv_x, tmp432
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, D.7418
	cltd
	xorl	%edx, %eax	# tmp433, D.7418
	subl	%edx, %eax	# tmp433, D.7418
	cmpl	-52(%rbp), %eax	# search_range_dynamic, D.7418
	jg	.L262	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	movq	40(%rbp), %rax	# mv_y, tmp434
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	-28(%rbp), %edx	# cand_mv_y, tmp435
	subl	%eax, %edx	# D.7418, D.7418
	movl	%edx, %eax	# D.7418, D.7418
	cltd
	xorl	%edx, %eax	# tmp436, D.7418
	subl	%edx, %eax	# tmp436, D.7418
	cmpl	-52(%rbp), %eax	# search_range_dynamic, D.7418
	jg	.L262	#,
	.loc 1 832 0 is_stmt 1
	movq	SearchState(%rip), %rdx	# SearchState, SearchState.265
	movq	40(%rbp), %rax	# mv_y, tmp437
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	-28(%rbp), %ecx	# cand_mv_y, tmp438
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp439
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$3, %rax	#, D.7420
	addq	%rdx, %rax	# SearchState.265, D.7427
	movq	(%rax), %rdx	# *_257, D.7425
	movq	32(%rbp), %rax	# mv_x, tmp440
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	-32(%rbp), %ecx	# cand_mv_x, tmp441
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp442
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	addq	%rdx, %rax	# D.7425, D.7425
	movzbl	(%rax), %eax	# *_264, D.7429
	testb	%al, %al	# D.7429
	jne	.L262	#,
	.loc 1 834 0
	movq	mvbits(%rip), %rdx	# mvbits, mvbits.266
	movl	-80(%rbp), %eax	# mv_shift, tmp443
	movl	-32(%rbp), %esi	# cand_mv_x, tmp444
	movl	%eax, %ecx	# tmp443, tmp501
	sall	%cl, %esi	# tmp501, D.7418
	movl	%esi, %ecx	# D.7418, D.7418
	movswl	-160(%rbp), %eax	# pred_mv_x, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rdx, %rax	# mvbits.266, D.7426
	movl	(%rax), %edx	# *_272, D.7418
	movq	mvbits(%rip), %rsi	# mvbits, mvbits.267
	movl	-80(%rbp), %eax	# mv_shift, tmp445
	movl	-28(%rbp), %edi	# cand_mv_y, tmp446
	movl	%eax, %ecx	# tmp445, tmp504
	sall	%cl, %edi	# tmp504, D.7418
	movl	%edi, %ecx	# D.7418, D.7418
	movswl	-164(%rbp), %eax	# pred_mv_y, D.7418
	subl	%eax, %ecx	# D.7418, D.7418
	movl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$2, %rax	#, D.7420
	addq	%rsi, %rax	# mvbits.267, D.7426
	movl	(%rax), %eax	# *_280, D.7418
	addl	%edx, %eax	# D.7418, D.7418
	imull	-84(%rbp), %eax	# lambda_factor, D.7418
	sarl	$16, %eax	#, tmp447
	movl	%eax, -24(%rbp)	# tmp447, mv_cost
	.loc 1 835 0
	movl	-28(%rbp), %r9d	# cand_mv_y, tmp448
	movl	-32(%rbp), %r8d	# cand_mv_x, tmp449
	movl	-72(%rbp), %ecx	# blocksize_y, tmp450
	movl	-76(%rbp), %edx	# blocksize_x, tmp451
	movl	-152(%rbp), %esi	# pic_pix_y, tmp452
	movl	-148(%rbp), %eax	# pic_pix_x, tmp453
	movl	72(%rbp), %edi	# useABT, tmp454
	movl	%edi, 32(%rsp)	# tmp454,
	movl	64(%rbp), %edi	# min_mcost, tmp455
	movl	%edi, 24(%rsp)	# tmp455,
	movl	-24(%rbp), %edi	# mv_cost, tmp456
	movl	%edi, 16(%rsp)	# tmp456,
	movq	-136(%rbp), %rdi	# orig_pic, tmp457
	movq	%rdi, 8(%rsp)	# tmp457,
	movq	-8(%rbp), %rdi	# ref_picture, tmp458
	movq	%rdi, (%rsp)	# tmp458,
	movl	%eax, %edi	# tmp453,
	call	AddUpSADQuarter	#
	movl	%eax, -20(%rbp)	# tmp459, mcost
	.loc 1 836 0
	movq	SearchState(%rip), %rdx	# SearchState, SearchState.268
	movq	40(%rbp), %rax	# mv_y, tmp460
	movzwl	(%rax), %eax	# *mv_y_86(D), D.7424
	cwtl
	movl	-28(%rbp), %ecx	# cand_mv_y, tmp461
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp462
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	salq	$3, %rax	#, D.7420
	addq	%rdx, %rax	# SearchState.268, D.7427
	movq	(%rax), %rdx	# *_293, D.7425
	movq	32(%rbp), %rax	# mv_x, tmp463
	movzwl	(%rax), %eax	# *mv_x_81(D), D.7424
	cwtl
	movl	-32(%rbp), %ecx	# cand_mv_x, tmp464
	subl	%eax, %ecx	# D.7418, D.7418
	movl	-52(%rbp), %eax	# search_range_dynamic, tmp465
	addl	%ecx, %eax	# D.7418, D.7418
	cltq
	addq	%rdx, %rax	# D.7425, D.7425
	movb	$1, (%rax)	#, *_300
	.loc 1 837 0
	movl	-20(%rbp), %eax	# mcost, tmp466
	cmpl	64(%rbp), %eax	# min_mcost, tmp466
	jge	.L262	#,
	.loc 1 839 0
	movl	-20(%rbp), %eax	# mcost, tmp467
	movl	%eax, 64(%rbp)	# tmp467, min_mcost
	.loc 1 840 0
	movl	-32(%rbp), %eax	# cand_mv_x, tmp468
	movl	%eax, -100(%rbp)	# tmp468, currmv_x
	.loc 1 841 0
	movl	-28(%rbp), %eax	# cand_mv_y, tmp469
	movl	%eax, -96(%rbp)	# tmp469, currmv_y
	.loc 1 842 0
	movl	$0, -92(%rbp)	#, abort_search
.L262:
	.loc 1 825 0
	addl	$1, -104(%rbp)	#, m
.L261:
	.loc 1 825 0 is_stmt 0 discriminator 1
	cmpl	$3, -104(%rbp)	#, m
	jle	.L263	#,
	.loc 1 848 0 is_stmt 1
	movl	-100(%rbp), %eax	# currmv_x, tmp470
	movl	%eax, -116(%rbp)	# tmp470, iXMinNow
	.loc 1 849 0
	movl	-96(%rbp), %eax	# currmv_y, tmp471
	movl	%eax, -112(%rbp)	# tmp471, iYMinNow
	.loc 1 850 0
	cmpl	$0, -92(%rbp)	#, abort_search
	je	.L264	#,
	.loc 1 851 0
	jmp	.L265	#
.L264:
	.loc 1 821 0
	addl	$1, -108(%rbp)	#, i
.L260:
	.loc 1 821 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# i, tmp472
	cmpl	-16(%rbp), %eax	# iCurrSearchRange, tmp472
	jl	.L266	#,
.L265:
	.loc 1 854 0 is_stmt 1
	movl	-100(%rbp), %eax	# currmv_x, tmp473
	movl	%eax, %edx	# tmp473, D.7424
	movq	32(%rbp), %rax	# mv_x, tmp474
	movw	%dx, (%rax)	# D.7424, *mv_x_81(D)
	.loc 1 855 0
	movl	-96(%rbp), %eax	# currmv_y, tmp475
	movl	%eax, %edx	# tmp475, D.7424
	movq	40(%rbp), %rax	# mv_y, tmp476
	movw	%dx, (%rax)	# D.7424, *mv_y_86(D)
	.loc 1 858 0
	movl	64(%rbp), %eax	# min_mcost, D.7418
	.loc 1 859 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	FastSubPelBlockMotionSearch, .-FastSubPelBlockMotionSearch
	.globl	decide_intrabk_SAD
	.type	decide_intrabk_SAD, @function
decide_intrabk_SAD:
.LFB14:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 875 0
	movq	img(%rip), %rax	# img, img.269
	movl	24(%rax), %eax	# img.269_2->type, D.7430
	testl	%eax, %eax	# D.7430
	je	.L269	#,
	.loc 1 877 0
	movq	img(%rip), %rax	# img, img.270
	movl	152(%rax), %eax	# img.270_4->pix_x, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L270	#,
	.loc 1 877 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.271
	movl	156(%rax), %eax	# img.271_6->pix_y, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L270	#,
	.loc 1 879 0 is_stmt 1
	movl	$0, flag_intra_SAD(%rip)	#, flag_intra_SAD
	jmp	.L269	#
.L270:
	.loc 1 881 0
	movq	img(%rip), %rax	# img, img.272
	movl	152(%rax), %eax	# img.272_8->pix_x, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L271	#,
	.loc 1 883 0
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.273
	movq	img(%rip), %rax	# img, img.274
	movl	152(%rax), %eax	# img.274_11->pix_x, D.7430
	sarl	$4, %eax	#, D.7430
	cltq
	salq	$2, %rax	#, D.7431
	addq	%rdx, %rax	# flag_intra.273, D.7432
	movl	(%rax), %eax	# *_16, flag_intra_SAD.275
	movl	%eax, flag_intra_SAD(%rip)	# flag_intra_SAD.275, flag_intra_SAD
	jmp	.L269	#
.L271:
	.loc 1 885 0
	movq	img(%rip), %rax	# img, img.276
	movl	156(%rax), %eax	# img.276_18->pix_y, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L272	#,
	.loc 1 887 0
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.277
	movq	img(%rip), %rax	# img, img.278
	movl	152(%rax), %eax	# img.278_21->pix_x, D.7430
	sarl	$4, %eax	#, D.7430
	cltq
	salq	$2, %rax	#, D.7431
	subq	$4, %rax	#, D.7433
	addq	%rdx, %rax	# flag_intra.277, D.7432
	movl	(%rax), %eax	# *_27, flag_intra_SAD.279
	movl	%eax, flag_intra_SAD(%rip)	# flag_intra_SAD.279, flag_intra_SAD
	jmp	.L269	#
.L272:
	.loc 1 891 0
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.281
	movq	img(%rip), %rax	# img, img.282
	movl	152(%rax), %eax	# img.282_30->pix_x, D.7430
	sarl	$4, %eax	#, D.7430
	cltq
	salq	$2, %rax	#, D.7431
	addq	%rdx, %rax	# flag_intra.281, D.7432
	movl	(%rax), %eax	# *_35, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L273	#,
	.loc 1 891 0 is_stmt 0 discriminator 2
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.283
	movq	img(%rip), %rax	# img, img.284
	movl	152(%rax), %eax	# img.284_38->pix_x, D.7430
	sarl	$4, %eax	#, D.7430
	cltq
	salq	$2, %rax	#, D.7431
	subq	$4, %rax	#, D.7433
	addq	%rdx, %rax	# flag_intra.283, D.7432
	movl	(%rax), %eax	# *_44, D.7430
	testl	%eax, %eax	# D.7430
	jne	.L273	#,
	.loc 1 891 0 discriminator 1
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.285
	movq	img(%rip), %rax	# img, img.286
	movl	152(%rax), %eax	# img.286_47->pix_x, D.7430
	sarl	$4, %eax	#, D.7430
	cltq
	addq	$1, %rax	#, D.7433
	salq	$2, %rax	#, D.7433
	addq	%rdx, %rax	# flag_intra.285, D.7432
	movl	(%rax), %eax	# *_53, D.7430
	testl	%eax, %eax	# D.7430
	je	.L274	#,
.L273:
	movl	$1, %eax	#, iftmp.280
	jmp	.L275	#
.L274:
	.loc 1 891 0 discriminator 3
	movl	$0, %eax	#, iftmp.280
.L275:
	.loc 1 891 0 discriminator 4
	movl	%eax, flag_intra_SAD(%rip)	# iftmp.280, flag_intra_SAD
.L269:
	.loc 1 894 0 is_stmt 1
	nop
	.loc 1 895 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	decide_intrabk_SAD, .-decide_intrabk_SAD
	.globl	skip_intrabk_SAD
	.type	skip_intrabk_SAD, @function
skip_intrabk_SAD:
.LFB15:
	.loc 1 898 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# best_mode, best_mode
	movl	%esi, -24(%rbp)	# ref_max, ref_max
	.loc 1 900 0
	movq	img(%rip), %rax	# img, img.287
	movl	(%rax), %eax	# img.287_6->number, D.7434
	testl	%eax, %eax	# D.7434
	jle	.L278	#,
	.loc 1 901 0
	movq	flag_intra(%rip), %rdx	# flag_intra, flag_intra.288
	movq	img(%rip), %rax	# img, img.289
	movl	152(%rax), %eax	# img.289_9->pix_x, D.7434
	sarl	$4, %eax	#, D.7434
	cltq
	salq	$2, %rax	#, D.7435
	addq	%rax, %rdx	# D.7435, D.7436
	cmpl	$9, -20(%rbp)	#, best_mode
	je	.L279	#,
	.loc 1 901 0 is_stmt 0 discriminator 2
	cmpl	$10, -20(%rbp)	#, best_mode
	jne	.L280	#,
.L279:
	.loc 1 901 0 discriminator 1
	movl	$1, %eax	#, iftmp.290
	jmp	.L281	#
.L280:
	.loc 1 901 0 discriminator 3
	movl	$0, %eax	#, iftmp.290
.L281:
	.loc 1 901 0 discriminator 4
	movl	%eax, (%rdx)	# iftmp.290, *_14
.L278:
	.loc 1 902 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.291
	movl	24(%rax), %eax	# img.291_18->type, D.7434
	testl	%eax, %eax	# D.7434
	je	.L282	#,
	.loc 1 902 0 is_stmt 0 discriminator 1
	cmpl	$9, -20(%rbp)	#, best_mode
	je	.L283	#,
	cmpl	$10, -20(%rbp)	#, best_mode
	jne	.L282	#,
.L283:
	.loc 1 904 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L284	#
.L291:
	.loc 1 906 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L285	#
.L290:
	.loc 1 908 0
	movl	$1, -8(%rbp)	#, k
	jmp	.L286	#
.L289:
	.loc 1 910 0
	movl	$0, -4(%rbp)	#, ref
	jmp	.L287	#
.L288:
	.loc 1 912 0 discriminator 2
	movq	all_mincost(%rip), %rdx	# all_mincost, all_mincost.292
	movq	img(%rip), %rax	# img, img.293
	movl	152(%rax), %eax	# img.293_26->pix_x, D.7434
	sarl	$2, %eax	#, D.7434
	movl	%eax, %ecx	# D.7434, D.7434
	movl	-16(%rbp), %eax	# i, tmp96
	addl	%ecx, %eax	# D.7434, D.7434
	cltq
	salq	$3, %rax	#, D.7435
	addq	%rdx, %rax	# all_mincost.292, D.7437
	movq	(%rax), %rdx	# *_32, D.7438
	movq	img(%rip), %rax	# img, img.294
	movl	156(%rax), %eax	# img.294_34->pix_y, D.7434
	sarl	$2, %eax	#, D.7434
	movl	%eax, %ecx	# D.7434, D.7434
	movl	-12(%rbp), %eax	# j, tmp97
	addl	%ecx, %eax	# D.7434, D.7434
	cltq
	salq	$3, %rax	#, D.7435
	addq	%rdx, %rax	# D.7438, D.7438
	movq	(%rax), %rax	# *_40, D.7439
	movl	-4(%rbp), %edx	# ref, tmp98
	movslq	%edx, %rdx	# tmp98, D.7435
	salq	$3, %rdx	#, D.7435
	addq	%rdx, %rax	# D.7435, D.7439
	movq	(%rax), %rax	# *_44, D.7440
	movl	-8(%rbp), %edx	# k, tmp99
	movslq	%edx, %rdx	# tmp99, D.7435
	salq	$3, %rdx	#, D.7435
	addq	%rdx, %rax	# D.7435, D.7440
	movq	(%rax), %rax	# *_48, D.7436
	movl	$0, (%rax)	#, *_49
	.loc 1 910 0 discriminator 2
	addl	$1, -4(%rbp)	#, ref
.L287:
	.loc 1 910 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# ref, tmp100
	cmpl	-24(%rbp), %eax	# ref_max, tmp100
	jl	.L288	#,
	.loc 1 908 0 is_stmt 1
	addl	$1, -8(%rbp)	#, k
.L286:
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpl	$7, -8(%rbp)	#, k
	jle	.L289	#,
	.loc 1 906 0 is_stmt 1
	addl	$1, -12(%rbp)	#, j
.L285:
	.loc 1 906 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, j
	jle	.L290	#,
	.loc 1 904 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L284:
	.loc 1 904 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L291	#,
.L282:
	.loc 1 919 0 is_stmt 1
	nop
	.loc 1 920 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	skip_intrabk_SAD, .-skip_intrabk_SAD
	.data
	.align 16
	.type	Diamond_x.4793, @object
	.size	Diamond_x.4793, 16
Diamond_x.4793:
	.long	-1
	.long	0
	.long	1
	.long	0
	.align 16
	.type	Diamond_y.4794, @object
	.size	Diamond_y.4794, 16
Diamond_y.4794:
	.long	0
	.long	1
	.long	0
	.long	-1
	.align 32
	.type	Big_Hexagon_x.4797, @object
	.size	Big_Hexagon_x.4797, 64
Big_Hexagon_x.4797:
	.long	0
	.long	-2
	.long	-4
	.long	-4
	.long	-4
	.long	-4
	.long	-4
	.long	-2
	.long	0
	.long	2
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	2
	.align 32
	.type	Big_Hexagon_y.4798, @object
	.size	Big_Hexagon_y.4798, 64
Big_Hexagon_y.4798:
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.long	-1
	.long	-2
	.long	-3
	.long	-4
	.long	-3
	.long	-2
	.long	-1
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
	.type	Hexagon_x.4795, @object
	.size	Hexagon_x.4795, 24
Hexagon_x.4795:
	.long	2
	.long	1
	.long	-1
	.long	-2
	.long	-1
	.long	1
	.align 16
	.type	Hexagon_y.4796, @object
	.size	Hexagon_y.4796, 24
Hexagon_y.4796:
	.long	0
	.long	-2
	.long	-2
	.long	0
	.long	2
	.long	2
	.align 16
	.type	Diamond_x.4932, @object
	.size	Diamond_x.4932, 16
Diamond_x.4932:
	.long	-1
	.long	0
	.long	1
	.long	0
	.align 16
	.type	Diamond_y.4933, @object
	.size	Diamond_y.4933, 16
Diamond_y.4933:
	.long	0
	.long	1
	.long	0
	.long	-1
	.section	.rodata
	.align 4
.LC0:
	.long	1008981770
	.align 4
.LC1:
	.long	1017370378
	.align 4
.LC2:
	.long	1022739087
	.align 4
.LC3:
	.long	1025758986
	.align 4
.LC4:
	.long	1031127695
	.align 4
.LC5:
	.long	1032805417
	.align 4
.LC6:
	.long	1034147594
	.align 4
.LC7:
	.long	1039516303
	.align 4
.LC8:
	.long	1038174126
	.align 4
.LC9:
	.long	1041865114
	.align 4
.LC10:
	.long	1102284063
	.align 4
.LC11:
	.long	1132462080
	.align 4
.LC12:
	.long	1082130432
	.align 8
.LC15:
	.long	0
	.long	1089470464
	.align 8
.LC16:
	.long	0
	.long	1071644672
	.align 4
.LC17:
	.long	0
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3161
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF640
	.byte	0x1
	.long	.LASF641
	.long	.LASF642
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	0x34
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xc2
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0x2d
	.long	0xad
	.uleb128 0x4
	.long	0x34
	.long	0xdd
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x70
	.long	0x109
	.uleb128 0x9
	.long	.LASF17
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.uleb128 0x9
	.long	.LASF19
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x148
	.uleb128 0x9
	.long	.LASF20
	.sleb128 0
	.uleb128 0x9
	.long	.LASF21
	.sleb128 1
	.uleb128 0x9
	.long	.LASF22
	.sleb128 2
	.uleb128 0x9
	.long	.LASF23
	.sleb128 3
	.uleb128 0x9
	.long	.LASF24
	.sleb128 4
	.uleb128 0x9
	.long	.LASF25
	.sleb128 5
	.uleb128 0x9
	.long	.LASF26
	.sleb128 6
	.uleb128 0x9
	.long	.LASF27
	.sleb128 7
	.uleb128 0x9
	.long	.LASF28
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x163
	.uleb128 0x9
	.long	.LASF29
	.sleb128 0
	.uleb128 0x9
	.long	.LASF30
	.sleb128 1
	.uleb128 0x9
	.long	.LASF31
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.byte	0xbe
	.long	0x148
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x195
	.uleb128 0x9
	.long	.LASF33
	.sleb128 0
	.uleb128 0x9
	.long	.LASF34
	.sleb128 1
	.uleb128 0x9
	.long	.LASF35
	.sleb128 2
	.uleb128 0x9
	.long	.LASF36
	.sleb128 3
	.uleb128 0x9
	.long	.LASF37
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x285
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF40
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xd5
	.long	0xdd
	.byte	0x18
	.uleb128 0xb
	.long	.LASF44
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF47
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF49
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF50
	.byte	0x5
	.byte	0xdd
	.long	0xdd
	.byte	0x40
	.uleb128 0xb
	.long	.LASF51
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF52
	.byte	0x5
	.byte	0xe2
	.long	0x195
	.uleb128 0x7
	.long	.LASF53
	.byte	0x5
	.byte	0xe4
	.long	0x29b
	.uleb128 0x6
	.byte	0x8
	.long	0x285
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x2ce
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF55
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF56
	.byte	0x5
	.byte	0xee
	.long	0x2a1
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x345
	.uleb128 0xe
	.long	.LASF57
	.byte	0x5
	.value	0x104
	.long	0x345
	.byte	0
	.uleb128 0xf
	.long	.LASF58
	.byte	0x5
	.value	0x105
	.long	0x35b
	.value	0x210
	.uleb128 0xf
	.long	.LASF59
	.byte	0x5
	.value	0x106
	.long	0x371
	.value	0x330
	.uleb128 0xf
	.long	.LASF60
	.byte	0x5
	.value	0x107
	.long	0x387
	.value	0x470
	.uleb128 0xf
	.long	.LASF61
	.byte	0x5
	.value	0x108
	.long	0x39d
	.value	0x530
	.uleb128 0xf
	.long	.LASF62
	.byte	0x5
	.value	0x109
	.long	0x39d
	.value	0x570
	.uleb128 0xf
	.long	.LASF63
	.byte	0x5
	.value	0x10a
	.long	0x3ad
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x35b
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x371
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x387
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x39d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x3ad
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x3bd
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF64
	.byte	0x5
	.value	0x10c
	.long	0x2d9
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x45d
	.uleb128 0xe
	.long	.LASF65
	.byte	0x5
	.value	0x11b
	.long	0x45d
	.byte	0
	.uleb128 0xe
	.long	.LASF66
	.byte	0x5
	.value	0x11c
	.long	0x39d
	.byte	0x20
	.uleb128 0xe
	.long	.LASF67
	.byte	0x5
	.value	0x11d
	.long	0x46d
	.byte	0x60
	.uleb128 0xf
	.long	.LASF68
	.byte	0x5
	.value	0x11e
	.long	0x483
	.value	0x120
	.uleb128 0xf
	.long	.LASF69
	.byte	0x5
	.value	0x11f
	.long	0x499
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x5
	.value	0x120
	.long	0x499
	.value	0xd00
	.uleb128 0xf
	.long	.LASF71
	.byte	0x5
	.value	0x121
	.long	0x4af
	.value	0x1660
	.uleb128 0xf
	.long	.LASF72
	.byte	0x5
	.value	0x122
	.long	0x4af
	.value	0x1980
	.uleb128 0xf
	.long	.LASF73
	.byte	0x5
	.value	0x123
	.long	0x499
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x5
	.value	0x124
	.long	0x499
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x46d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x483
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x499
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x4af
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x2ce
	.long	0x4c5
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x5
	.value	0x125
	.long	0x3c9
	.uleb128 0x11
	.long	.LASF80
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x506
	.uleb128 0xe
	.long	.LASF76
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x138
	.long	0x506
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d1
	.uleb128 0x10
	.long	.LASF79
	.byte	0x5
	.value	0x139
	.long	0x4d1
	.uleb128 0x11
	.long	.LASF81
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x574
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF83
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x143
	.long	0x574
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x518
	.uleb128 0x10
	.long	.LASF87
	.byte	0x5
	.value	0x144
	.long	0x518
	.uleb128 0x11
	.long	.LASF88
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x614
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF90
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF91
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF94
	.byte	0x5
	.value	0x158
	.long	0x62e
	.byte	0x20
	.uleb128 0xe
	.long	.LASF95
	.byte	0x5
	.value	0x15a
	.long	0x64a
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x62e
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x83
	.uleb128 0x14
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x614
	.uleb128 0x13
	.long	0x644
	.uleb128 0x14
	.long	0x644
	.uleb128 0x14
	.long	0x290
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x586
	.uleb128 0x6
	.byte	0x8
	.long	0x634
	.uleb128 0x10
	.long	.LASF96
	.byte	0x5
	.value	0x15c
	.long	0x586
	.uleb128 0x15
	.long	.LASF97
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x8d6
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF99
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF100
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF101
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF102
	.byte	0x5
	.value	0x166
	.long	0xcd
	.byte	0x14
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x168
	.long	0x8d6
	.byte	0x38
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x169
	.long	0x8d6
	.byte	0x40
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x8dc
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF106
	.byte	0x5
	.value	0x16d
	.long	0x8fe
	.value	0x14c
	.uleb128 0xf
	.long	.LASF107
	.byte	0x5
	.value	0x16e
	.long	0x8fe
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x170
	.long	0xe3
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x171
	.long	0x90e
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x172
	.long	0x90e
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF117
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x18a
	.long	0x91e
	.value	0x248
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF135
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65c
	.uleb128 0x4
	.long	0x34
	.long	0x8fe
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x90e
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x91e
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF140
	.uleb128 0x10
	.long	.LASF141
	.byte	0x5
	.value	0x196
	.long	0x65c
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x9ca
	.uleb128 0xe
	.long	.LASF142
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF143
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF144
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF146
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF147
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF151
	.byte	0x5
	.value	0x1a8
	.long	0xdd
	.byte	0x20
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF153
	.byte	0x5
	.value	0x1ab
	.long	0x931
	.uleb128 0x11
	.long	.LASF154
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xa0b
	.uleb128 0xe
	.long	.LASF155
	.byte	0x5
	.value	0x1b1
	.long	0xa0b
	.byte	0
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.value	0x1b2
	.long	0x285
	.byte	0x8
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x1b4
	.long	0xa31
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9ca
	.uleb128 0x18
	.long	0x34
	.long	0xa25
	.uleb128 0x14
	.long	0xa25
	.uleb128 0x14
	.long	0xa2b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x650
	.uleb128 0x6
	.byte	0x8
	.long	0x9d6
	.uleb128 0x6
	.byte	0x8
	.long	0xa11
	.uleb128 0x10
	.long	.LASF158
	.byte	0x5
	.value	0x1b8
	.long	0x9d6
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xb50
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1c3
	.long	0xb50
	.byte	0x18
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1c4
	.long	0xb56
	.byte	0x20
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1c5
	.long	0xb5c
	.byte	0x28
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1c8
	.long	0xb62
	.byte	0x30
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1d3
	.long	0xb77
	.byte	0x78
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1d5
	.long	0xb7d
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa37
	.uleb128 0x6
	.byte	0x8
	.long	0x3bd
	.uleb128 0x6
	.byte	0x8
	.long	0x4c5
	.uleb128 0x6
	.byte	0x8
	.long	0x50c
	.uleb128 0x18
	.long	0xc2
	.long	0xb77
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb68
	.uleb128 0x4
	.long	0x34
	.long	0xb93
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF178
	.byte	0x5
	.value	0x1d7
	.long	0xa43
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xc09
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1df
	.long	0xc09
	.byte	0x8
	.uleb128 0xf
	.long	.LASF182
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF183
	.byte	0x5
	.value	0x1e1
	.long	0xc1f
	.value	0x32c
	.uleb128 0xf
	.long	.LASF184
	.byte	0x5
	.value	0x1e2
	.long	0xc1f
	.value	0x330
	.uleb128 0xf
	.long	.LASF185
	.byte	0x5
	.value	0x1e3
	.long	0xc1f
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xc19
	.long	0xc19
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb93
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF186
	.uleb128 0x10
	.long	.LASF187
	.byte	0x5
	.value	0x1e4
	.long	0xb9f
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xc3e
	.uleb128 0x6
	.byte	0x8
	.long	0xc44
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xdd
	.uleb128 0xd
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1458
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x2b3
	.long	0x1458
	.byte	0x50
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x2b4
	.long	0x1458
	.byte	0x90
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF209
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x2b9
	.long	0x146e
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF213
	.byte	0x5
	.value	0x2ba
	.long	0x146e
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF214
	.byte	0x5
	.value	0x2bb
	.long	0x146e
	.value	0x270
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x2bc
	.long	0x146e
	.value	0x338
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x2bd
	.long	0x146e
	.value	0x400
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF218
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF219
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF220
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF221
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF222
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF223
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF224
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF225
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF226
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF227
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF238
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF239
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF240
	.byte	0x5
	.value	0x2df
	.long	0x147e
	.value	0x52c
	.uleb128 0xf
	.long	.LASF241
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF242
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF243
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF249
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF250
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF251
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x2f7
	.long	0x91e
	.value	0x978
	.uleb128 0xf
	.long	.LASF261
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF262
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF263
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF264
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF265
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF266
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF267
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF268
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF269
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF270
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF271
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF272
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF273
	.byte	0x5
	.value	0x30a
	.long	0x146e
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF274
	.byte	0x5
	.value	0x30b
	.long	0x146e
	.value	0xa78
	.uleb128 0xf
	.long	.LASF275
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF276
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF277
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF278
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF279
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF280
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF281
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF282
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF283
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF284
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF285
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF286
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF287
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF288
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF289
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF290
	.byte	0x5
	.value	0x327
	.long	0x146e
	.value	0xb88
	.uleb128 0xf
	.long	.LASF291
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF292
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF293
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0xf
	.long	.LASF294
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0xf
	.long	.LASF295
	.byte	0x5
	.value	0x32d
	.long	0xdd
	.value	0xc68
	.uleb128 0xf
	.long	.LASF296
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0xf
	.long	.LASF297
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF298
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF299
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF300
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF301
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF302
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF303
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF304
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF305
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF306
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF307
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF308
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF309
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF310
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF311
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF312
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF313
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF314
	.byte	0x5
	.value	0x346
	.long	0xcd
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF315
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF316
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF317
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF318
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF319
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF320
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF321
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF322
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF323
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF324
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF325
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF326
	.byte	0x5
	.value	0x35c
	.long	0x148f
	.value	0xd08
	.uleb128 0xf
	.long	.LASF327
	.byte	0x5
	.value	0x35e
	.long	0x146e
	.value	0xd38
	.uleb128 0xf
	.long	.LASF328
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x146e
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x147e
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x148f
	.uleb128 0x19
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0x91e
	.long	0x149f
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF329
	.byte	0x5
	.value	0x361
	.long	0xc50
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1e90
	.uleb128 0xe
	.long	.LASF330
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF331
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF332
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF333
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF334
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF335
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF336
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF101
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF337
	.byte	0x5
	.value	0x372
	.long	0xc1f
	.byte	0x30
	.uleb128 0xe
	.long	.LASF338
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF339
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF340
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF341
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF342
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF343
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF344
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF345
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF346
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF348
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF349
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x37f
	.long	0xc32
	.byte	0x68
	.uleb128 0xe
	.long	.LASF351
	.byte	0x5
	.value	0x380
	.long	0xc32
	.byte	0x70
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x383
	.long	0x1e90
	.byte	0x80
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF356
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF357
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF358
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF359
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF360
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF361
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF362
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF363
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF364
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF365
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF366
	.byte	0x5
	.value	0x395
	.long	0x1e96
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF367
	.byte	0x5
	.value	0x397
	.long	0x1eb2
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF368
	.byte	0x5
	.value	0x398
	.long	0x1ece
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF369
	.byte	0x5
	.value	0x399
	.long	0x1eea
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1f0c
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1f22
	.value	0x3338
	.uleb128 0xf
	.long	.LASF370
	.byte	0x5
	.value	0x39d
	.long	0x1f38
	.value	0x3738
	.uleb128 0xf
	.long	.LASF371
	.byte	0x5
	.value	0x39e
	.long	0x1e90
	.value	0x3740
	.uleb128 0xf
	.long	.LASF372
	.byte	0x5
	.value	0x3a0
	.long	0x1f3e
	.value	0x3748
	.uleb128 0xf
	.long	.LASF373
	.byte	0x5
	.value	0x3a1
	.long	0xc19
	.value	0x3750
	.uleb128 0xf
	.long	.LASF374
	.byte	0x5
	.value	0x3a2
	.long	0x1f44
	.value	0x3758
	.uleb128 0xf
	.long	.LASF375
	.byte	0x5
	.value	0x3a3
	.long	0x1f4a
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF376
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF377
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF378
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF379
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF380
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF381
	.byte	0x5
	.value	0x3ac
	.long	0x1f5b
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF382
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF383
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF384
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF385
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF386
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF387
	.byte	0x5
	.value	0x3b4
	.long	0x91e
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF388
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF389
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF392
	.byte	0x5
	.value	0x3ba
	.long	0x1f71
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x5
	.value	0x3bb
	.long	0x1f71
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x5
	.value	0x3bd
	.long	0x1f71
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF395
	.byte	0x5
	.value	0x3be
	.long	0x1f71
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x5
	.value	0x3bf
	.long	0x1f95
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF222
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.value	0x3ce
	.long	0x1fa5
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF301
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.value	0x3e4
	.long	0x1fbb
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.value	0x409
	.long	0x1fcb
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF303
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x5
	.value	0x413
	.long	0x91e
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x5
	.value	0x41b
	.long	0x1fd1
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF299
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF204
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF475
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF476
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF324
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF478
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc32
	.uleb128 0x4
	.long	0x42
	.long	0x1eb2
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1ece
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1eea
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1f0c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x1f22
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f38
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1e90
	.uleb128 0x6
	.byte	0x8
	.long	0xc26
	.uleb128 0x6
	.byte	0x8
	.long	0x925
	.uleb128 0x4
	.long	0x650
	.long	0x1f5b
	.uleb128 0x19
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f71
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f77
	.uleb128 0x6
	.byte	0x8
	.long	0x1f7d
	.uleb128 0x6
	.byte	0x8
	.long	0x1f83
	.uleb128 0x6
	.byte	0x8
	.long	0x1f89
	.uleb128 0x6
	.byte	0x8
	.long	0x1f8f
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1fa5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1fbb
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1fcb
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x57a
	.uleb128 0x6
	.byte	0x8
	.long	0x91e
	.uleb128 0x10
	.long	.LASF479
	.byte	0x5
	.value	0x449
	.long	0x14ab
	.uleb128 0x1d
	.long	.LASF480
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x2259
	.uleb128 0xb
	.long	.LASF335
	.byte	0x6
	.byte	0x17
	.long	0x163
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF481
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF482
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF483
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF484
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF485
	.byte	0x6
	.byte	0x1e
	.long	0x2259
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x6
	.byte	0x1f
	.long	0x2259
	.value	0x648
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x6
	.byte	0x20
	.long	0x2259
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x6
	.byte	0x21
	.long	0x2259
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF421
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF84
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF407
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x6
	.byte	0x31
	.long	0xc3e
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x6
	.byte	0x32
	.long	0xc44
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x6
	.byte	0x33
	.long	0xc44
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x6
	.byte	0x34
	.long	0xc3e
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x6
	.byte	0x35
	.long	0xc3e
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x6
	.byte	0x36
	.long	0xc38
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x6
	.byte	0x38
	.long	0xdd
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x6
	.byte	0x3a
	.long	0x1f83
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x6
	.byte	0x3c
	.long	0x226f
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x6
	.byte	0x3f
	.long	0x226f
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x1f7d
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x6
	.byte	0x44
	.long	0xc4a
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x6
	.byte	0x45
	.long	0xc4a
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF399
	.byte	0x6
	.byte	0x47
	.long	0x2281
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x6
	.byte	0x48
	.long	0x2281
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x6
	.byte	0x49
	.long	0x2281
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0xe3
	.long	0x226f
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2275
	.uleb128 0x6
	.byte	0x8
	.long	0x227b
	.uleb128 0x6
	.byte	0x8
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.long	0x1fe3
	.uleb128 0x7
	.long	.LASF520
	.byte	0x6
	.byte	0x52
	.long	0x1fe3
	.uleb128 0x6
	.byte	0x8
	.long	0x2287
	.uleb128 0x20
	.long	.LASF532
	.byte	0x1
	.byte	0x4a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF643
	.byte	0x1
	.byte	0x60
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2315
	.uleb128 0x22
	.long	.LASF521
	.byte	0x1
	.byte	0x62
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.long	.LASF522
	.byte	0x1
	.byte	0x63
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.long	.LASF523
	.byte	0x1
	.byte	0x65
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF524
	.byte	0x1
	.byte	0x66
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.long	.LASF525
	.byte	0x1
	.byte	0x66
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF526
	.byte	0x1
	.byte	0x84
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2374
	.uleb128 0x24
	.string	"mv"
	.byte	0x1
	.byte	0x84
	.long	0x2374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x86
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0x86
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.byte	0x86
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"l"
	.byte	0x1
	.byte	0x86
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x237a
	.uleb128 0x6
	.byte	0x8
	.long	0x1f38
	.uleb128 0x23
	.long	.LASF527
	.byte	0x1
	.byte	0xa9
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x23df
	.uleb128 0x24
	.string	"mv"
	.byte	0x1
	.byte	0xa9
	.long	0x2374
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"l"
	.byte	0x1
	.byte	0xab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF529
	.byte	0x1
	.byte	0xc6
	.long	0x34
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x240f
	.uleb128 0x22
	.long	.LASF528
	.byte	0x1
	.byte	0xc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF530
	.byte	0x1
	.byte	0xdb
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x246a
	.uleb128 0x24
	.string	"mv"
	.byte	0x1
	.byte	0xdb
	.long	0x237a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"l"
	.byte	0x1
	.byte	0xdd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF531
	.byte	0x1
	.byte	0xf8
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c5
	.uleb128 0x24
	.string	"mv"
	.byte	0x1
	.byte	0xf8
	.long	0x237a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0xfa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0xfa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.byte	0xfa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"l"
	.byte	0x1
	.byte	0xfa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF533
	.byte	0x1
	.value	0x10d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF534
	.byte	0x1
	.value	0x119
	.long	0x34
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e4
	.uleb128 0x2a
	.long	.LASF535
	.byte	0x1
	.value	0x119
	.long	0xc44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF536
	.byte	0x1
	.value	0x119
	.long	0xc3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2a
	.long	.LASF537
	.byte	0x1
	.value	0x119
	.long	0x260c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2a
	.long	.LASF538
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.long	.LASF539
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.long	.LASF540
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF541
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF542
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF543
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF544
	.byte	0x1
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2b
	.string	"y"
	.byte	0x1
	.value	0x11b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2b
	.string	"x4"
	.byte	0x1
	.value	0x11b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF340
	.byte	0x1
	.value	0x11c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x11d
	.long	0xc44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x11d
	.long	0xc44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	0xc44
	.long	0x260c
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0xc44
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x25e4
	.uleb128 0x29
	.long	.LASF547
	.byte	0x1
	.value	0x154
	.long	0x34
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2977
	.uleb128 0x2a
	.long	.LASF536
	.byte	0x1
	.value	0x154
	.long	0xc3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"ref"
	.byte	0x1
	.value	0x155
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x156
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x157
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF550
	.byte	0x1
	.value	0x158
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF551
	.byte	0x1
	.value	0x159
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x15b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.long	.LASF554
	.byte	0x1
	.value	0x15c
	.long	0x1f8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF555
	.byte	0x1
	.value	0x15d
	.long	0x1f8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF194
	.byte	0x1
	.value	0x15e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF542
	.byte	0x1
	.value	0x15f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x1
	.value	0x160
	.long	0x91e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x1
	.value	0x162
	.long	0x90e
	.uleb128 0x9
	.byte	0x3
	.quad	Diamond_x.4793
	.uleb128 0x2c
	.long	.LASF558
	.byte	0x1
	.value	0x163
	.long	0x90e
	.uleb128 0x9
	.byte	0x3
	.quad	Diamond_y.4794
	.uleb128 0x2c
	.long	.LASF559
	.byte	0x1
	.value	0x164
	.long	0x2977
	.uleb128 0x9
	.byte	0x3
	.quad	Hexagon_x.4795
	.uleb128 0x2c
	.long	.LASF560
	.byte	0x1
	.value	0x165
	.long	0x2977
	.uleb128 0x9
	.byte	0x3
	.quad	Hexagon_y.4796
	.uleb128 0x2c
	.long	.LASF561
	.byte	0x1
	.value	0x166
	.long	0x8fe
	.uleb128 0x9
	.byte	0x3
	.quad	Big_Hexagon_x.4797
	.uleb128 0x2c
	.long	.LASF562
	.byte	0x1
	.value	0x167
	.long	0x8fe
	.uleb128 0x9
	.byte	0x3
	.quad	Big_Hexagon_y.4798
	.uleb128 0x2b
	.string	"pos"
	.byte	0x1
	.value	0x169
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x169
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF544
	.byte	0x1
	.value	0x169
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF541
	.byte	0x1
	.value	0x169
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF537
	.byte	0x1
	.value	0x16a
	.long	0x260c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF563
	.byte	0x1
	.value	0x16b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF535
	.byte	0x1
	.value	0x16c
	.long	0xc44
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF564
	.byte	0x1
	.value	0x16d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF565
	.byte	0x1
	.value	0x16e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF538
	.byte	0x1
	.value	0x16f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF539
	.byte	0x1
	.value	0x170
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF540
	.byte	0x1
	.value	0x171
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF566
	.byte	0x1
	.value	0x172
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF567
	.byte	0x1
	.value	0x173
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF568
	.byte	0x1
	.value	0x174
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF569
	.byte	0x1
	.value	0x175
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF570
	.byte	0x1
	.value	0x176
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.long	.LASF571
	.byte	0x1
	.value	0x176
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF572
	.byte	0x1
	.value	0x177
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF573
	.byte	0x1
	.value	0x177
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.long	.LASF574
	.byte	0x1
	.value	0x177
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x178
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x178
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF575
	.byte	0x1
	.value	0x178
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF576
	.byte	0x1
	.value	0x179
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF577
	.byte	0x1
	.value	0x17a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF578
	.byte	0x1
	.value	0x17b
	.long	0xc1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF579
	.byte	0x1
	.value	0x17b
	.long	0xc1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF340
	.byte	0x1
	.value	0x17c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF580
	.byte	0x1
	.value	0x262
	.quad	.L99
	.uleb128 0x2e
	.long	.LASF581
	.byte	0x1
	.value	0x251
	.quad	.L101
	.uleb128 0x2e
	.long	.LASF582
	.byte	0x1
	.value	0x21a
	.quad	.L128
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2987
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x29
	.long	.LASF583
	.byte	0x1
	.value	0x288
	.long	0x34
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b5d
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x288
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1204
	.uleb128 0x2a
	.long	.LASF550
	.byte	0x1
	.value	0x288
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x2a
	.long	.LASF539
	.byte	0x1
	.value	0x288
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1212
	.uleb128 0x2a
	.long	.LASF538
	.byte	0x1
	.value	0x288
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x2a
	.long	.LASF584
	.byte	0x1
	.value	0x289
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1220
	.uleb128 0x2a
	.long	.LASF585
	.byte	0x1
	.value	0x289
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x2a
	.long	.LASF586
	.byte	0x1
	.value	0x289
	.long	0x2292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF536
	.byte	0x1
	.value	0x289
	.long	0xc3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF587
	.byte	0x1
	.value	0x28a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF542
	.byte	0x1
	.value	0x28a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF588
	.byte	0x1
	.value	0x28a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2c
	.long	.LASF589
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x2b
	.string	"y0"
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1188
	.uleb128 0x2b
	.string	"x0"
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x2b
	.string	"rx0"
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x2b
	.string	"ry0"
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x2b
	.string	"ry"
	.byte	0x1
	.value	0x28c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x28d
	.long	0xc44
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x2c
	.long	.LASF590
	.byte	0x1
	.value	0x28e
	.long	0x8fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x2b
	.string	"d"
	.byte	0x1
	.value	0x28e
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x2c
	.long	.LASF541
	.byte	0x1
	.value	0x28f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1180
	.uleb128 0x2b
	.string	"yy"
	.byte	0x1
	.value	0x290
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x2b
	.string	"kk"
	.byte	0x1
	.value	0x290
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1172
	.uleb128 0x2b
	.string	"xx"
	.byte	0x1
	.value	0x290
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x2c
	.long	.LASF591
	.byte	0x1
	.value	0x291
	.long	0x1f22
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2c
	.long	.LASF535
	.byte	0x1
	.value	0x293
	.long	0xc3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x2c
	.long	.LASF202
	.byte	0x1
	.value	0x294
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1164
	.uleb128 0x2c
	.long	.LASF203
	.byte	0x1
	.value	0x295
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.byte	0
	.uleb128 0x29
	.long	.LASF592
	.byte	0x1
	.value	0x2cf
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e47
	.uleb128 0x2a
	.long	.LASF536
	.byte	0x1
	.value	0x2cf
	.long	0xc3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2d
	.string	"ref"
	.byte	0x1
	.value	0x2d0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x2d1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x2d2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.long	.LASF550
	.byte	0x1
	.value	0x2d3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.long	.LASF551
	.byte	0x1
	.value	0x2d4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2a
	.long	.LASF552
	.byte	0x1
	.value	0x2d5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x2d6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2a
	.long	.LASF554
	.byte	0x1
	.value	0x2d7
	.long	0x1f8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.long	.LASF555
	.byte	0x1
	.value	0x2d8
	.long	0x1f8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2a
	.long	.LASF593
	.byte	0x1
	.value	0x2d9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2a
	.long	.LASF594
	.byte	0x1
	.value	0x2da
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2a
	.long	.LASF542
	.byte	0x1
	.value	0x2db
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x2a
	.long	.LASF556
	.byte	0x1
	.value	0x2dc
	.long	0x91e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2a
	.long	.LASF588
	.byte	0x1
	.value	0x2dd
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x2c
	.long	.LASF557
	.byte	0x1
	.value	0x2df
	.long	0x90e
	.uleb128 0x9
	.byte	0x3
	.quad	Diamond_x.4932
	.uleb128 0x2c
	.long	.LASF558
	.byte	0x1
	.value	0x2e0
	.long	0x90e
	.uleb128 0x9
	.byte	0x3
	.quad	Diamond_y.4933
	.uleb128 0x2c
	.long	.LASF541
	.byte	0x1
	.value	0x2e1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF584
	.byte	0x1
	.value	0x2e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF585
	.byte	0x1
	.value	0x2e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF563
	.byte	0x1
	.value	0x2e4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF586
	.byte	0x1
	.value	0x2e5
	.long	0x2292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF564
	.byte	0x1
	.value	0x2e7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF595
	.byte	0x1
	.value	0x2e8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2c
	.long	.LASF539
	.byte	0x1
	.value	0x2e9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2c
	.long	.LASF538
	.byte	0x1
	.value	0x2ea
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF596
	.byte	0x1
	.value	0x2eb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.long	.LASF597
	.byte	0x1
	.value	0x2ec
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF598
	.byte	0x1
	.value	0x2ed
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.long	.LASF599
	.byte	0x1
	.value	0x2ee
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF600
	.byte	0x1
	.value	0x2f0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF574
	.byte	0x1
	.value	0x2f0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.long	.LASF573
	.byte	0x1
	.value	0x2f0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x2f0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.long	.LASF575
	.byte	0x1
	.value	0x2f1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"m"
	.byte	0x1
	.value	0x2f1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF601
	.byte	0x1
	.value	0x2f1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.long	.LASF602
	.byte	0x1
	.value	0x2f1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.long	.LASF603
	.byte	0x1
	.value	0x2f1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF604
	.byte	0x1
	.value	0x2f2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF605
	.byte	0x1
	.value	0x2f2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF589
	.byte	0x1
	.value	0x2f2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF606
	.byte	0x1
	.value	0x2f3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF607
	.byte	0x1
	.value	0x2f5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF608
	.byte	0x1
	.value	0x2f5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x2f
	.long	.LASF609
	.byte	0x1
	.value	0x369
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF610
	.byte	0x1
	.value	0x381
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed4
	.uleb128 0x2a
	.long	.LASF611
	.byte	0x1
	.value	0x381
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.long	.LASF612
	.byte	0x1
	.value	0x381
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x383
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.value	0x383
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2b
	.string	"k"
	.byte	0x1
	.value	0x383
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.string	"ref"
	.byte	0x1
	.value	0x383
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	0x42
	.long	0x2ef7
	.uleb128 0x14
	.long	0xc3e
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x22
	.long	.LASF613
	.byte	0x1
	.byte	0x3e
	.long	0x2f0c
	.uleb128 0x9
	.byte	0x3
	.quad	PelY_14
	.uleb128 0x6
	.byte	0x8
	.long	0x2ed4
	.uleb128 0x4
	.long	0x34
	.long	0x2f2e
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.long	.LASF614
	.byte	0x1
	.byte	0x40
	.long	0x2f43
	.uleb128 0x9
	.byte	0x3
	.quad	quant_coef
	.uleb128 0x31
	.long	0x2f12
	.uleb128 0x32
	.long	.LASF615
	.byte	0x5
	.value	0x21d
	.long	0x34
	.uleb128 0x32
	.long	.LASF616
	.byte	0x5
	.value	0x4b7
	.long	0x2f60
	.uleb128 0x6
	.byte	0x8
	.long	0x149f
	.uleb128 0x33
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2f72
	.uleb128 0x6
	.byte	0x8
	.long	0x1fd7
	.uleb128 0x4
	.long	0x2f88
	.long	0x2f88
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2292
	.uleb128 0x34
	.long	.LASF617
	.byte	0x6
	.byte	0xa0
	.long	0x2f78
	.uleb128 0x35
	.long	.LASF618
	.byte	0x1
	.byte	0x22
	.long	0xc32
	.uleb128 0x9
	.byte	0x3
	.quad	McostState
	.uleb128 0x35
	.long	.LASF619
	.byte	0x1
	.byte	0x24
	.long	0x237a
	.uleb128 0x9
	.byte	0x3
	.quad	all_mincost
	.uleb128 0x35
	.long	.LASF620
	.byte	0x1
	.byte	0x25
	.long	0x237a
	.uleb128 0x9
	.byte	0x3
	.quad	all_bwmincost
	.uleb128 0x35
	.long	.LASF621
	.byte	0x1
	.byte	0x26
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	pred_SAD_space
	.uleb128 0x35
	.long	.LASF622
	.byte	0x1
	.byte	0x26
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	pred_SAD_time
	.uleb128 0x35
	.long	.LASF623
	.byte	0x1
	.byte	0x26
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	pred_SAD_ref
	.uleb128 0x35
	.long	.LASF624
	.byte	0x1
	.byte	0x26
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	pred_SAD_uplayer
	.uleb128 0x35
	.long	.LASF625
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	FME_blocktype
	.uleb128 0x35
	.long	.LASF626
	.byte	0x1
	.byte	0x28
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	pred_MV_time
	.uleb128 0x35
	.long	.LASF627
	.byte	0x1
	.byte	0x28
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	pred_MV_ref
	.uleb128 0x35
	.long	.LASF628
	.byte	0x1
	.byte	0x28
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	pred_MV_uplayer
	.uleb128 0x35
	.long	.LASF629
	.byte	0x1
	.byte	0x2b
	.long	0xc1f
	.uleb128 0x9
	.byte	0x3
	.quad	Quantize_step
	.uleb128 0x4
	.long	0xc1f
	.long	0x30a5
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.long	.LASF630
	.byte	0x1
	.byte	0x2c
	.long	0x3095
	.uleb128 0x9
	.byte	0x3
	.quad	Bsize
	.uleb128 0x35
	.long	.LASF525
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	Thresh4x4
	.uleb128 0x35
	.long	.LASF631
	.byte	0x1
	.byte	0x2e
	.long	0x3095
	.uleb128 0x9
	.byte	0x3
	.quad	AlphaSec
	.uleb128 0x35
	.long	.LASF632
	.byte	0x1
	.byte	0x2f
	.long	0x3095
	.uleb128 0x9
	.byte	0x3
	.quad	AlphaThird
	.uleb128 0x35
	.long	.LASF633
	.byte	0x1
	.byte	0x30
	.long	0x83
	.uleb128 0x9
	.byte	0x3
	.quad	flag_intra
	.uleb128 0x35
	.long	.LASF634
	.byte	0x1
	.byte	0x31
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	flag_intra_SAD
	.uleb128 0x35
	.long	.LASF635
	.byte	0x1
	.byte	0x33
	.long	0xc4a
	.uleb128 0x9
	.byte	0x3
	.quad	SearchState
	.uleb128 0x34
	.long	.LASF636
	.byte	0x1
	.byte	0x38
	.long	0x83
	.uleb128 0x34
	.long	.LASF637
	.byte	0x1
	.byte	0x39
	.long	0x83
	.uleb128 0x34
	.long	.LASF638
	.byte	0x1
	.byte	0x3a
	.long	0x83
	.uleb128 0x34
	.long	.LASF639
	.byte	0x1
	.byte	0x3b
	.long	0x83
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x4
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF625:
	.string	"FME_blocktype"
.LASF465:
	.string	"bitdepth_luma_qp_scale"
.LASF312:
	.string	"channel_type"
.LASF331:
	.string	"nb_references"
.LASF17:
	.string	"FRAME_CODING"
.LASF520:
	.string	"StorablePicture"
.LASF466:
	.string	"bitdepth_chroma_qp_scale"
.LASF313:
	.string	"ScalingMatrixPresentFlag"
.LASF431:
	.string	"no_output_of_prior_pics_flag"
.LASF23:
	.string	"BITS_INTER_MB"
.LASF397:
	.string	"num_ref_idx_l1_active"
.LASF413:
	.string	"pic_order_cnt_lsb"
.LASF455:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF458:
	.string	"DeblockCall"
.LASF504:
	.string	"imgY_ups_w"
.LASF28:
	.string	"MAX_BITCOUNTER_MB"
.LASF339:
	.string	"width_cr"
.LASF426:
	.string	"PicSizeInMbs"
.LASF34:
	.string	"B_SLICE"
.LASF375:
	.string	"MB_SyntaxElements"
.LASF502:
	.string	"imgY_11_w"
.LASF370:
	.string	"cofAC"
.LASF570:
	.string	"best_x"
.LASF496:
	.string	"size_x_cr"
.LASF532:
	.string	"DefineThreshold"
.LASF473:
	.string	"lossless_qpprime_flag"
.LASF242:
	.string	"PocMemoryManagement"
.LASF385:
	.string	"imgtr_next_P_fld"
.LASF194:
	.string	"search_range"
.LASF400:
	.string	"mvscale"
.LASF16:
	.string	"int64"
.LASF181:
	.string	"slices"
.LASF84:
	.string	"long_term_pic_num"
.LASF562:
	.string	"Big_Hexagon_y"
.LASF33:
	.string	"P_SLICE"
.LASF351:
	.string	"ipredmode8x8"
.LASF355:
	.string	"mb_y"
.LASF433:
	.string	"dec_ref_pic_marking_buffer"
.LASF211:
	.string	"infile_header"
.LASF262:
	.string	"full_search"
.LASF606:
	.string	"mv_cost"
.LASF86:
	.string	"max_long_term_frame_idx_plus1"
.LASF474:
	.string	"mb_cr_size_x"
.LASF307:
	.string	"DisplayEncParams"
.LASF564:
	.string	"lambda_factor"
.LASF399:
	.string	"top_field"
.LASF54:
	.string	"state"
.LASF627:
	.string	"pred_MV_ref"
.LASF523:
	.string	"gb_q_bits"
.LASF257:
	.string	"Intra16x16ParDisable"
.LASF68:
	.string	"bcbp_contexts"
.LASF88:
	.string	"syntaxelement"
.LASF220:
	.string	"successive_Bframe"
.LASF230:
	.string	"WeightedPrediction"
.LASF89:
	.string	"type"
.LASF390:
	.string	"fw_mb_mode"
.LASF427:
	.string	"FrameSizeInMbs"
.LASF508:
	.string	"ref_id"
.LASF136:
	.string	"LFDisableIdc"
.LASF498:
	.string	"chroma_vector_adjustment"
.LASF223:
	.string	"directInferenceFlag"
.LASF150:
	.string	"bits_to_go_skip"
.LASF392:
	.string	"pred_mv"
.LASF302:
	.string	"context_init_method"
.LASF537:
	.string	"get_ref_line"
.LASF304:
	.string	"AllowTransform8x8"
.LASF471:
	.string	"num_blk8x8_uv"
.LASF209:
	.string	"slice_argument"
.LASF167:
	.string	"rmpni_buffer"
.LASF636:
	.string	"byte_abs"
.LASF250:
	.string	"InterSearch8x4"
.LASF117:
	.string	"mb_field"
.LASF249:
	.string	"InterSearch8x8"
.LASF283:
	.string	"NumFramesInELSubSeq"
.LASF575:
	.string	"iSADLayer"
.LASF85:
	.string	"long_term_frame_idx"
.LASF618:
	.string	"McostState"
.LASF488:
	.string	"bottom_ref_pic_num"
.LASF350:
	.string	"ipredmode"
.LASF236:
	.string	"RDBSliceWeightOnly"
.LASF201:
	.string	"GenerateMultiplePPS"
.LASF109:
	.string	"b8mode"
.LASF322:
	.string	"cr_qp_index_offset"
.LASF176:
	.string	"slice_too_big"
.LASF367:
	.string	"mprr_2"
.LASF368:
	.string	"mprr_3"
.LASF590:
	.string	"diff"
.LASF143:
	.string	"bits_to_go"
.LASF81:
	.string	"DecRefPicMarking_s"
.LASF87:
	.string	"DecRefPicMarking_t"
.LASF561:
	.string	"Big_Hexagon_x"
.LASF456:
	.string	"bot_MB"
.LASF454:
	.string	"BasicUnit"
.LASF195:
	.string	"num_ref_frames"
.LASF50:
	.string	"EcodestrmS"
.LASF377:
	.string	"intra_block"
.LASF27:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF477:
	.string	"auto_crop_right"
.LASF641:
	.string	"fast_me.c"
.LASF489:
	.string	"pic_num"
.LASF369:
	.string	"mprr_c"
.LASF534:
	.string	"PartCalMad"
.LASF126:
	.string	"all_blk_8x8"
.LASF271:
	.string	"nobskip"
.LASF429:
	.string	"nal_reference_idc"
.LASF419:
	.string	"framepoc"
.LASF435:
	.string	"NumberofTextureBits"
.LASF365:
	.string	"opix_c_y"
.LASF232:
	.string	"UseWeightedReferenceME"
.LASF491:
	.string	"used_for_reference"
.LASF587:
	.string	"Mvmcost"
.LASF285:
	.string	"RandomIntraMBRefresh"
.LASF457:
	.string	"write_macroblock_frame"
.LASF147:
	.string	"stored_byte_buf"
.LASF20:
	.string	"BITS_HEADER"
.LASF329:
	.string	"InputParameters"
.LASF286:
	.string	"LFSendParameters"
.LASF423:
	.string	"PicHeightInMapUnits"
.LASF486:
	.string	"frm_ref_pic_num"
.LASF637:
	.string	"mvbits"
.LASF443:
	.string	"NumberofGOP"
.LASF463:
	.string	"bitdepth_luma"
.LASF526:
	.string	"get_mem_mincost"
.LASF24:
	.string	"BITS_CBP_MB"
.LASF631:
	.string	"AlphaSec"
.LASF364:
	.string	"opix_c_x"
.LASF40:
	.string	"Ebuffer"
.LASF546:
	.string	"ref_line"
.LASF212:
	.string	"infile"
.LASF527:
	.string	"get_mem_bwmincost"
.LASF39:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF337:
	.string	"framerate"
.LASF162:
	.string	"max_part_nr"
.LASF53:
	.string	"EncodingEnvironmentPtr"
.LASF408:
	.string	"delta_pic_order_always_zero_flag"
.LASF354:
	.string	"mb_x"
.LASF116:
	.string	"IntraChromaPredModeFlag"
.LASF93:
	.string	"context"
.LASF171:
	.string	"long_term_pic_idx_l0"
.LASF175:
	.string	"long_term_pic_idx_l1"
.LASF168:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF172:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF445:
	.string	"NumberofPPicture"
.LASF440:
	.string	"NumberofMBHeaderBits"
.LASF371:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF107:
	.string	"intra_pred_modes8x8"
.LASF227:
	.string	"BiPredMESubPel"
.LASF566:
	.string	"pred_x"
.LASF19:
	.string	"ADAPTIVE_CODING"
.LASF459:
	.string	"last_pic_bottom_field"
.LASF224:
	.string	"BiPredMotionEstimation"
.LASF394:
	.string	"bipred_mv1"
.LASF395:
	.string	"bipred_mv2"
.LASF70:
	.string	"last_contexts"
.LASF115:
	.string	"c_ipred_mode"
.LASF296:
	.string	"run_length_minus1"
.LASF470:
	.string	"max_imgpel_value_uv"
.LASF205:
	.string	"intra_upd"
.LASF169:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF173:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF170:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF174:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF289:
	.string	"SPPercentageThreshold"
.LASF144:
	.string	"byte_buf"
.LASF188:
	.string	"ProfileIDC"
.LASF578:
	.string	"betaSec"
.LASF129:
	.string	"bi_pred_me"
.LASF549:
	.string	"pic_pix_x"
.LASF550:
	.string	"pic_pix_y"
.LASF100:
	.string	"delta_qp"
.LASF261:
	.string	"chroma_qp_index_offset"
.LASF336:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF349:
	.string	"block_c_x"
.LASF528:
	.string	"memory_size"
.LASF63:
	.string	"transform_size_contexts"
.LASF432:
	.string	"long_term_reference_flag"
.LASF199:
	.string	"Log2MaxFrameNum"
.LASF556:
	.string	"lambda"
.LASF345:
	.string	"is_intra_block"
.LASF161:
	.string	"start_mb_nr"
.LASF617:
	.string	"listX"
.LASF308:
	.string	"RCEnable"
.LASF234:
	.string	"RDPictureIntra"
.LASF198:
	.string	"B_List1_refs"
.LASF221:
	.string	"qpBRSOffset"
.LASF493:
	.string	"non_existing"
.LASF287:
	.string	"SparePictureOption"
.LASF21:
	.string	"BITS_TOTAL_MB"
.LASF264:
	.string	"qpN2"
.LASF217:
	.string	"intra_period"
.LASF103:
	.string	"mb_available_up"
.LASF415:
	.string	"delta_pic_order_cnt"
.LASF252:
	.string	"InterSearch4x4"
.LASF251:
	.string	"InterSearch4x8"
.LASF642:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF501:
	.string	"imgY_11"
.LASF434:
	.string	"NumberofHeaderBits"
.LASF267:
	.string	"qp02"
.LASF92:
	.string	"bitpattern"
.LASF37:
	.string	"SI_SLICE"
.LASF62:
	.string	"mb_aff_contexts"
.LASF127:
	.string	"luma_transform_size_8x8_flag"
.LASF314:
	.string	"ScalingListPresentFlag"
.LASF357:
	.string	"block_y"
.LASF237:
	.string	"SkipIntraInInterSlices"
.LASF553:
	.string	"pred_mv_y"
.LASF372:
	.string	"currentPicture"
.LASF58:
	.string	"b8_type_contexts"
.LASF632:
	.string	"AlphaThird"
.LASF294:
	.string	"bottom_right"
.LASF231:
	.string	"WeightedBiprediction"
.LASF605:
	.string	"pred_frac_mv_y"
.LASF388:
	.string	"p_interval"
.LASF187:
	.string	"Picture"
.LASF482:
	.string	"bottom_poc"
.LASF386:
	.string	"imgtr_last_P_fld"
.LASF543:
	.string	"cand_x"
.LASF616:
	.string	"input"
.LASF274:
	.string	"LeakyBucketParamFile"
.LASF503:
	.string	"imgY_ups"
.LASF190:
	.string	"no_frames"
.LASF132:
	.string	"prev_delta_qp"
.LASF202:
	.string	"img_width"
.LASF241:
	.string	"PyramidRefReorder"
.LASF572:
	.string	"search_step"
.LASF346:
	.string	"is_v_block"
.LASF208:
	.string	"slice_mode"
.LASF246:
	.string	"InterSearch16x16"
.LASF348:
	.string	"mb_y_intra"
.LASF57:
	.string	"mb_type_contexts"
.LASF293:
	.string	"top_left"
.LASF591:
	.string	"curr_diff"
.LASF151:
	.string	"streamBuffer"
.LASF48:
	.string	"Ebits_to_goS"
.LASF588:
	.string	"useABT"
.LASF247:
	.string	"InterSearch16x8"
.LASF446:
	.string	"MADofMB"
.LASF599:
	.string	"max_pos_y4"
.LASF396:
	.string	"num_ref_idx_l0_active"
.LASF303:
	.string	"model_number"
.LASF35:
	.string	"I_SLICE"
.LASF565:
	.string	"mvshift"
.LASF226:
	.string	"BiPredMESearchRange"
.LASF607:
	.string	"pred_frac_up_mv_x"
.LASF97:
	.string	"macroblock"
.LASF533:
	.string	"free_mem_FME"
.LASF417:
	.string	"toppoc"
.LASF407:
	.string	"MbaffFrameFlag"
.LASF38:
	.string	"Elow"
.LASF362:
	.string	"opix_x"
.LASF311:
	.string	"basicunit"
.LASF552:
	.string	"pred_mv_x"
.LASF481:
	.string	"top_poc"
.LASF275:
	.string	"PicInterlace"
.LASF160:
	.string	"picture_type"
.LASF476:
	.string	"chroma_qp_offset"
.LASF240:
	.string	"ExplicitPyramidFormat"
.LASF425:
	.string	"PicHeightInMbs"
.LASF323:
	.string	"lossless_qpprime_y_zero_flag"
.LASF480:
	.string	"storable_picture"
.LASF619:
	.string	"all_mincost"
.LASF216:
	.string	"QmatrixFile"
.LASF233:
	.string	"RDPictureDecision"
.LASF52:
	.string	"EncodingEnvironment"
.LASF157:
	.string	"writeSyntaxElement"
.LASF189:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF66:
	.string	"cipr_contexts"
.LASF51:
	.string	"Ecodestrm_lenS"
.LASF309:
	.string	"bit_rate"
.LASF163:
	.string	"num_mb"
.LASF418:
	.string	"bottompoc"
.LASF200:
	.string	"ResendPPS"
.LASF558:
	.string	"Diamond_y"
.LASF621:
	.string	"pred_SAD_space"
.LASF634:
	.string	"flag_intra_SAD"
.LASF255:
	.string	"Intra4x4DiagDisable"
.LASF382:
	.string	"pstruct_next_P"
.LASF113:
	.string	"lf_alpha_c0_offset"
.LASF478:
	.string	"auto_crop_bottom"
.LASF215:
	.string	"TraceFile"
.LASF569:
	.string	"center_y"
.LASF579:
	.string	"betaThird"
.LASF600:
	.string	"search_range_dynamic"
.LASF210:
	.string	"UseConstrainedIntraPred"
.LASF447:
	.string	"BasicUnitQP"
.LASF439:
	.string	"NumberofMBTextureBits"
.LASF582:
	.string	"first_step"
.LASF522:
	.string	"gb_qp_rem"
.LASF111:
	.string	"cbp_bits"
.LASF499:
	.string	"coded_frame"
.LASF483:
	.string	"frame_poc"
.LASF360:
	.string	"pix_c_x"
.LASF361:
	.string	"pix_c_y"
.LASF192:
	.string	"hadamard"
.LASF389:
	.string	"b_frame_to_code"
.LASF581:
	.string	"sec_step"
.LASF182:
	.string	"bits_per_picture"
.LASF347:
	.string	"mb_y_upd"
.LASF328:
	.string	"OffsetMatrixPresentFlag"
.LASF281:
	.string	"NoOfDecoders"
.LASF76:
	.string	"RMPNI"
.LASF31:
	.string	"BOTTOM_FIELD"
.LASF137:
	.string	"LFAlphaC0Offset"
.LASF114:
	.string	"lf_beta_offset"
.LASF83:
	.string	"difference_of_pic_nums_minus1"
.LASF284:
	.string	"NumFrameIn2ndIGOP"
.LASF416:
	.string	"field_picture"
.LASF218:
	.string	"idr_enable"
.LASF366:
	.string	"mprr"
.LASF219:
	.string	"start_frame"
.LASF500:
	.string	"imgY"
.LASF64:
	.string	"MotionInfoContexts"
.LASF580:
	.string	"third_step"
.LASF584:
	.string	"cand_mv_x"
.LASF585:
	.string	"cand_mv_y"
.LASF9:
	.string	"long long int"
.LASF387:
	.string	"b_interval"
.LASF41:
	.string	"Ebits_to_go"
.LASF379:
	.string	"fld_flag"
.LASF381:
	.string	"direct_intraP_ref"
.LASF338:
	.string	"width"
.LASF105:
	.string	"mb_type"
.LASF146:
	.string	"stored_bits_to_go"
.LASF475:
	.string	"mb_cr_size_y"
.LASF586:
	.string	"ref_picture"
.LASF602:
	.string	"currmv_y"
.LASF412:
	.string	"offset_for_ref_frame"
.LASF535:
	.string	"ref_pic"
.LASF99:
	.string	"slice_nr"
.LASF615:
	.string	"Bframe_ctr"
.LASF184:
	.string	"distortion_u"
.LASF185:
	.string	"distortion_v"
.LASF183:
	.string	"distortion_y"
.LASF149:
	.string	"byte_pos_skip"
.LASF138:
	.string	"LFBetaOffset"
.LASF547:
	.string	"FastIntegerPelBlockMotionSearch"
.LASF140:
	.string	"double"
.LASF544:
	.string	"cand_y"
.LASF608:
	.string	"pred_frac_up_mv_y"
.LASF288:
	.string	"SPDetectionThreshold"
.LASF512:
	.string	"frame"
.LASF145:
	.string	"stored_byte_pos"
.LASF324:
	.string	"residue_transform_flag"
.LASF384:
	.string	"imgtr_last_P_frm"
.LASF601:
	.string	"currmv_x"
.LASF71:
	.string	"one_contexts"
.LASF497:
	.string	"size_y_cr"
.LASF276:
	.string	"MbInterlace"
.LASF560:
	.string	"Hexagon_y"
.LASF101:
	.string	"qpsp"
.LASF186:
	.string	"float"
.LASF610:
	.string	"skip_intrabk_SAD"
.LASF306:
	.string	"ReportFrameStats"
.LASF239:
	.string	"PyramidCoding"
.LASF55:
	.string	"count"
.LASF133:
	.string	"prev_cbp"
.LASF243:
	.string	"symbol_mode"
.LASF629:
	.string	"Quantize_step"
.LASF56:
	.string	"BiContextType"
.LASF492:
	.string	"is_output"
.LASF380:
	.string	"rd_pass"
.LASF376:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF530:
	.string	"free_mem_mincost"
.LASF72:
	.string	"abs_contexts"
.LASF42:
	.string	"Ebits_to_follow"
.LASF152:
	.string	"write_flag"
.LASF333:
	.string	"total_number_mb"
.LASF214:
	.string	"ReconFile"
.LASF44:
	.string	"Ecodestrm_len"
.LASF166:
	.string	"tex_ctx"
.LASF228:
	.string	"sp_periodicity"
.LASF574:
	.string	"iXMinNow"
.LASF444:
	.string	"TotalQpforPPicture"
.LASF104:
	.string	"mb_available_left"
.LASF80:
	.string	"RMPNIbuffer_s"
.LASF79:
	.string	"RMPNIbuffer_t"
.LASF299:
	.string	"slice_group_change_cycle"
.LASF326:
	.string	"LambdaWeight"
.LASF75:
	.string	"TextureInfoContexts"
.LASF511:
	.string	"bottom_field"
.LASF332:
	.string	"current_mb_nr"
.LASF272:
	.string	"NumberLeakyBuckets"
.LASF485:
	.string	"ref_pic_num"
.LASF403:
	.string	"layer"
.LASF571:
	.string	"best_y"
.LASF110:
	.string	"b8pdir"
.LASF179:
	.string	"no_slices"
.LASF410:
	.string	"offset_for_top_to_bottom_field"
.LASF259:
	.string	"ChromaIntraDisable"
.LASF611:
	.string	"best_mode"
.LASF383:
	.string	"imgtr_next_P_frm"
.LASF449:
	.string	"FieldControl"
.LASF441:
	.string	"NumberofCodedBFrame"
.LASF548:
	.string	"list"
.LASF402:
	.string	"i16offset"
.LASF258:
	.string	"Intra16x16PlaneDisable"
.LASF628:
	.string	"pred_MV_uplayer"
.LASF229:
	.string	"qpsp_pred"
.LASF623:
	.string	"pred_SAD_ref"
.LASF301:
	.string	"pic_order_cnt_type"
.LASF358:
	.string	"pix_x"
.LASF359:
	.string	"pix_y"
.LASF640:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF479:
	.string	"ImageParameters"
.LASF603:
	.string	"iCurrSearchRange"
.LASF156:
	.string	"ee_cabac"
.LASF539:
	.string	"blocksize_x"
.LASF538:
	.string	"blocksize_y"
.LASF13:
	.string	"FALSE"
.LASF134:
	.string	"predict_qp"
.LASF626:
	.string	"pred_MV_time"
.LASF18:
	.string	"FIELD_CODING"
.LASF567:
	.string	"pred_y"
.LASF193:
	.string	"hadamardqpel"
.LASF398:
	.string	"field_mode"
.LASF254:
	.string	"Intra4x4ParDisable"
.LASF356:
	.string	"block_x"
.LASF273:
	.string	"LeakyBucketRateFile"
.LASF203:
	.string	"img_height"
.LASF207:
	.string	"part_size"
.LASF245:
	.string	"partition_mode"
.LASF630:
	.string	"Bsize"
.LASF612:
	.string	"ref_max"
.LASF460:
	.string	"last_has_mmco_5"
.LASF519:
	.string	"frame_cropping_rect_bottom_offset"
.LASF74:
	.string	"fld_last_contexts"
.LASF409:
	.string	"offset_for_non_ref_pic"
.LASF139:
	.string	"skip_flag"
.LASF421:
	.string	"frame_num"
.LASF69:
	.string	"map_contexts"
.LASF290:
	.string	"SliceGroupConfigFileName"
.LASF36:
	.string	"SP_SLICE"
.LASF82:
	.string	"memory_management_control_operation"
.LASF620:
	.string	"all_bwmincost"
.LASF277:
	.string	"IntraBottom"
.LASF153:
	.string	"Bitstream"
.LASF327:
	.string	"QOffsetMatrixFile"
.LASF197:
	.string	"B_List0_refs"
.LASF405:
	.string	"NoResidueDirect"
.LASF453:
	.string	"NumberofCodedMacroBlocks"
.LASF159:
	.string	"picture_id"
.LASF514:
	.string	"frame_mbs_only_flag"
.LASF378:
	.string	"fld_type"
.LASF442:
	.string	"NumberofCodedPFrame"
.LASF10:
	.string	"long long unsigned int"
.LASF22:
	.string	"BITS_MB_MODE"
.LASF598:
	.string	"max_pos_x4"
.LASF225:
	.string	"BiPredMERefinements"
.LASF106:
	.string	"intra_pred_modes"
.LASF341:
	.string	"height_cr"
.LASF393:
	.string	"all_mv"
.LASF266:
	.string	"qp2start"
.LASF624:
	.string	"pred_SAD_uplayer"
.LASF340:
	.string	"height"
.LASF335:
	.string	"structure"
.LASF177:
	.string	"field_ctx"
.LASF540:
	.string	"blocksize_x4"
.LASF510:
	.string	"field_frame"
.LASF158:
	.string	"DataPartition"
.LASF374:
	.string	"mb_data"
.LASF518:
	.string	"frame_cropping_rect_top_offset"
.LASF310:
	.string	"SeinitialQP"
.LASF576:
	.string	"iAbort"
.LASF437:
	.string	"NumberofBasicUnitTextureBits"
.LASF411:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF178:
	.string	"Slice"
.LASF154:
	.string	"datapartition"
.LASF49:
	.string	"Ebits_to_followS"
.LASF342:
	.string	"height_cr_frame"
.LASF529:
	.string	"get_mem_FME"
.LASF554:
	.string	"mv_x"
.LASF451:
	.string	"Frame_Total_Number_MB"
.LASF555:
	.string	"mv_y"
.LASF90:
	.string	"value1"
.LASF91:
	.string	"value2"
.LASF542:
	.string	"min_mcost"
.LASF516:
	.string	"frame_cropping_rect_left_offset"
.LASF320:
	.string	"rgb_input_flag"
.LASF155:
	.string	"bitstream"
.LASF196:
	.string	"P_List0_refs"
.LASF282:
	.string	"RestrictRef"
.LASF487:
	.string	"top_ref_pic_num"
.LASF573:
	.string	"iYMinNow"
.LASF604:
	.string	"pred_frac_mv_x"
.LASF45:
	.string	"ElowS"
.LASF596:
	.string	"pic4_pix_x"
.LASF597:
	.string	"pic4_pix_y"
.LASF531:
	.string	"free_mem_bwmincost"
.LASF292:
	.string	"slice_group_map_type"
.LASF15:
	.string	"Boolean"
.LASF244:
	.string	"of_mode"
.LASF467:
	.string	"bitdepth_lambda_scale"
.LASF270:
	.string	"disthres"
.LASF404:
	.string	"old_layer"
.LASF330:
	.string	"number"
.LASF513:
	.string	"chroma_format_idc"
.LASF268:
	.string	"qpBRS2Offset"
.LASF469:
	.string	"max_imgpel_value"
.LASF422:
	.string	"PicWidthInMbs"
.LASF635:
	.string	"SearchState"
.LASF278:
	.string	"LossRateA"
.LASF279:
	.string	"LossRateB"
.LASF280:
	.string	"LossRateC"
.LASF462:
	.string	"pic_unit_size_on_disk"
.LASF468:
	.string	"dc_pred_value"
.LASF472:
	.string	"num_cdc_coeff"
.LASF319:
	.string	"img_width_cr"
.LASF141:
	.string	"Macroblock"
.LASF60:
	.string	"ref_no_contexts"
.LASF206:
	.string	"blc_size"
.LASF609:
	.string	"decide_intrabk_SAD"
.LASF29:
	.string	"FRAME"
.LASF430:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF26:
	.string	"BITS_COEFF_UV_MB"
.LASF12:
	.string	"byte"
.LASF78:
	.string	"Next"
.LASF238:
	.string	"BRefPictures"
.LASF77:
	.string	"Data"
.LASF643:
	.string	"DefineThresholdMB"
.LASF448:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF484:
	.string	"order_num"
.LASF509:
	.string	"moving_block"
.LASF43:
	.string	"Ecodestrm"
.LASF363:
	.string	"opix_y"
.LASF204:
	.string	"yuv_format"
.LASF315:
	.string	"FMEnable"
.LASF406:
	.string	"redundant_pic_cnt"
.LASF524:
	.string	"gb_qp_const"
.LASF391:
	.string	"bw_mb_mode"
.LASF300:
	.string	"redundant_slice_flag"
.LASF316:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF521:
	.string	"gb_qp_per"
.LASF269:
	.string	"rdopt"
.LASF47:
	.string	"EbufferS"
.LASF595:
	.string	"mv_shift"
.LASF420:
	.string	"ThisPOC"
.LASF622:
	.string	"pred_SAD_time"
.LASF438:
	.string	"TotalMADBasicUnit"
.LASF131:
	.string	"prev_qp"
.LASF551:
	.string	"blocktype"
.LASF253:
	.string	"IntraDisableInterOnly"
.LASF557:
	.string	"Diamond_x"
.LASF59:
	.string	"mv_res_contexts"
.LASF248:
	.string	"InterSearch8x16"
.LASF536:
	.string	"orig_pic"
.LASF130:
	.string	"actj"
.LASF291:
	.string	"num_slice_groups_minus1"
.LASF414:
	.string	"delta_pic_order_cnt_bottom"
.LASF401:
	.string	"buf_cycle"
.LASF25:
	.string	"BITS_COEFF_Y_MB"
.LASF352:
	.string	"cod_counter"
.LASF559:
	.string	"Hexagon_x"
.LASF164:
	.string	"partArr"
.LASF142:
	.string	"byte_pos"
.LASF633:
	.string	"flag_intra"
.LASF213:
	.string	"outfile"
.LASF65:
	.string	"ipr_contexts"
.LASF118:
	.string	"mbAddrA"
.LASF119:
	.string	"mbAddrB"
.LASF120:
	.string	"mbAddrC"
.LASF121:
	.string	"mbAddrD"
.LASF592:
	.string	"FastSubPelBlockMotionSearch"
.LASF305:
	.string	"LowPassForIntra8x8"
.LASF353:
	.string	"nz_coeff"
.LASF541:
	.string	"mcost"
.LASF545:
	.string	"orig_line"
.LASF61:
	.string	"delta_qp_contexts"
.LASF256:
	.string	"Intra4x4DirDisable"
.LASF614:
	.string	"quant_coef"
.LASF436:
	.string	"NumberofBasicUnitHeaderBits"
.LASF96:
	.string	"SyntaxElement"
.LASF265:
	.string	"qpB2"
.LASF317:
	.string	"BitDepthChroma"
.LASF452:
	.string	"IFLAG"
.LASF461:
	.string	"pre_frame_num"
.LASF428:
	.string	"pic_order_present_flag"
.LASF613:
	.string	"PelY_14"
.LASF112:
	.string	"lf_disable"
.LASF593:
	.string	"search_pos2"
.LASF30:
	.string	"TOP_FIELD"
.LASF594:
	.string	"search_pos4"
.LASF494:
	.string	"size_x"
.LASF495:
	.string	"size_y"
.LASF180:
	.string	"idr_flag"
.LASF638:
	.string	"spiral_search_x"
.LASF639:
	.string	"spiral_search_y"
.LASF2:
	.string	"short unsigned int"
.LASF450:
	.string	"FieldFrame"
.LASF263:
	.string	"last_frame"
.LASF517:
	.string	"frame_cropping_rect_right_offset"
.LASF135:
	.string	"predict_error"
.LASF334:
	.string	"current_slice_nr"
.LASF222:
	.string	"direct_spatial_mv_pred_flag"
.LASF191:
	.string	"jumpd"
.LASF568:
	.string	"center_x"
.LASF464:
	.string	"bitdepth_chroma"
.LASF94:
	.string	"mapping"
.LASF506:
	.string	"ref_idx"
.LASF318:
	.string	"img_height_cr"
.LASF577:
	.string	"N_Bframe"
.LASF515:
	.string	"frame_cropping_flag"
.LASF505:
	.string	"imgUV"
.LASF298:
	.string	"slice_group_change_rate_minus1"
.LASF525:
	.string	"Thresh4x4"
.LASF507:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF563:
	.string	"list_offset"
.LASF95:
	.string	"writing"
.LASF295:
	.string	"slice_group_id"
.LASF73:
	.string	"fld_map_contexts"
.LASF148:
	.string	"byte_buf_skip"
.LASF297:
	.string	"slice_group_change_direction_flag"
.LASF260:
	.string	"FrameRate"
.LASF235:
	.string	"RDPSliceWeightOnly"
.LASF67:
	.string	"cbp_contexts"
.LASF321:
	.string	"cb_qp_index_offset"
.LASF165:
	.string	"mot_ctx"
.LASF589:
	.string	"abort_search"
.LASF128:
	.string	"NoMbPartLessThan8x8Flag"
.LASF343:
	.string	"subblock_x"
.LASF344:
	.string	"subblock_y"
.LASF490:
	.string	"is_long_term"
.LASF325:
	.string	"UseExplicitLambdaParams"
.LASF98:
	.string	"currSEnr"
.LASF32:
	.string	"PictureStructure"
.LASF424:
	.string	"FrameHeightInMbs"
.LASF373:
	.string	"currentSlice"
.LASF102:
	.string	"bitcounter"
.LASF46:
	.string	"ErangeS"
.LASF122:
	.string	"mbAvailA"
.LASF123:
	.string	"mbAvailB"
.LASF124:
	.string	"mbAvailC"
.LASF125:
	.string	"mbAvailD"
.LASF108:
	.string	"cbp_blk"
.LASF583:
	.string	"AddUpSADQuarter"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
