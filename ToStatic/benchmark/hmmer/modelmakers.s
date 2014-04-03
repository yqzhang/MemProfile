	.file	"modelmakers.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 modelmakers.c -mtune=generic -march=x86-64 -g
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
	.section	.rodata
	.align 8
.LC0:
	.string	"Alignment must have RF annotation to hand-build an HMM"
.LC1:
	.string	"modelmakers.c"
	.text
	.globl	P7Handmodelmaker
	.type	P7Handmodelmaker, @function
P7Handmodelmaker:
.LFB2:
	.file 1 "modelmakers.c"
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# dsq, dsq
	movq	%rdx, -40(%rbp)	# ret_hmm, ret_hmm
	movq	%rcx, -48(%rbp)	# ret_tr, ret_tr
	.loc 1 107 0
	movq	-24(%rbp), %rax	# msa, tmp109
	movq	88(%rax), %rax	# msa_2(D)->rf, D.9205
	testq	%rax, %rax	# D.9205
	jne	.L2	#,
	.loc 1 108 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L2:
	.loc 1 111 0
	movq	-24(%rbp), %rax	# msa, tmp110
	movl	24(%rax), %eax	# msa_2(D)->alen, D.9206
	addl	$1, %eax	#, D.9206
	cltq
	salq	$2, %rax	#, D.9207
	movq	%rax, %rdx	# D.9207,
	movl	$111, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp111, matassign
	.loc 1 115 0
	movq	-8(%rbp), %rax	# matassign, tmp112
	movl	$0, (%rax)	#, *matassign_8
	.loc 1 116 0
	movl	$0, -12(%rbp)	#, apos
	jmp	.L3	#
.L6:
	.loc 1 118 0
	movl	-12(%rbp), %eax	# apos, tmp113
	cltq
	addq	$1, %rax	#, D.9208
	leaq	0(,%rax,4), %rdx	#, D.9208
	movq	-8(%rbp), %rax	# matassign, tmp114
	addq	%rdx, %rax	# D.9208, D.9209
	movl	$0, (%rax)	#, *_14
	.loc 1 119 0
	movq	-24(%rbp), %rax	# msa, tmp115
	movq	88(%rax), %rdx	# msa_2(D)->rf, D.9205
	movl	-12(%rbp), %eax	# apos, tmp116
	cltq
	addq	%rdx, %rax	# D.9205, D.9205
	movzbl	(%rax), %eax	# *_17, D.9210
	cmpb	$32, %al	#, D.9210
	je	.L4	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp117
	movq	88(%rax), %rdx	# msa_2(D)->rf, D.9205
	movl	-12(%rbp), %eax	# apos, tmp118
	cltq
	addq	%rdx, %rax	# D.9205, D.9205
	movzbl	(%rax), %eax	# *_21, D.9210
	cmpb	$46, %al	#, D.9210
	je	.L4	#,
	movq	-24(%rbp), %rax	# msa, tmp119
	movq	88(%rax), %rdx	# msa_2(D)->rf, D.9205
	movl	-12(%rbp), %eax	# apos, tmp120
	cltq
	addq	%rdx, %rax	# D.9205, D.9205
	movzbl	(%rax), %eax	# *_25, D.9210
	cmpb	$95, %al	#, D.9210
	je	.L4	#,
	movq	-24(%rbp), %rax	# msa, tmp121
	movq	88(%rax), %rdx	# msa_2(D)->rf, D.9205
	movl	-12(%rbp), %eax	# apos, tmp122
	cltq
	addq	%rdx, %rax	# D.9205, D.9205
	movzbl	(%rax), %eax	# *_29, D.9210
	cmpb	$45, %al	#, D.9210
	je	.L4	#,
	movq	-24(%rbp), %rax	# msa, tmp123
	movq	88(%rax), %rdx	# msa_2(D)->rf, D.9205
	movl	-12(%rbp), %eax	# apos, tmp124
	cltq
	addq	%rdx, %rax	# D.9205, D.9205
	movzbl	(%rax), %eax	# *_33, D.9210
	cmpb	$126, %al	#, D.9210
	je	.L4	#,
	.loc 1 120 0 is_stmt 1
	movl	-12(%rbp), %eax	# apos, tmp125
	cltq
	addq	$1, %rax	#, D.9208
	leaq	0(,%rax,4), %rdx	#, D.9208
	movq	-8(%rbp), %rax	# matassign, tmp126
	addq	%rdx, %rax	# D.9208, D.9209
	movl	-12(%rbp), %edx	# apos, tmp127
	movslq	%edx, %rdx	# tmp127, D.9208
	addq	$1, %rdx	#, D.9208
	leaq	0(,%rdx,4), %rcx	#, D.9208
	movq	-8(%rbp), %rdx	# matassign, tmp128
	addq	%rcx, %rdx	# D.9208, D.9209
	movl	(%rdx), %edx	# *_42, D.9206
	orl	$1, %edx	#, D.9206
	movl	%edx, (%rax)	# D.9206, *_38
	jmp	.L5	#
.L4:
	.loc 1 122 0
	movl	-12(%rbp), %eax	# apos, tmp129
	cltq
	addq	$1, %rax	#, D.9208
	leaq	0(,%rax,4), %rdx	#, D.9208
	movq	-8(%rbp), %rax	# matassign, tmp130
	addq	%rdx, %rax	# D.9208, D.9209
	movl	-12(%rbp), %edx	# apos, tmp131
	movslq	%edx, %rdx	# tmp131, D.9208
	addq	$1, %rdx	#, D.9208
	leaq	0(,%rdx,4), %rcx	#, D.9208
	movq	-8(%rbp), %rdx	# matassign, tmp132
	addq	%rcx, %rdx	# D.9208, D.9209
	movl	(%rdx), %edx	# *_52, D.9206
	orl	$8, %edx	#, D.9206
	movl	%edx, (%rax)	# D.9206, *_48
.L5:
	.loc 1 116 0
	addl	$1, -12(%rbp)	#, apos
.L3:
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp133
	movl	24(%rax), %eax	# msa_2(D)->alen, D.9206
	cmpl	-12(%rbp), %eax	# apos, D.9206
	jg	.L6	#,
	.loc 1 128 0 is_stmt 1
	movq	-48(%rbp), %rdi	# ret_tr, tmp134
	movq	-40(%rbp), %rcx	# ret_hmm, tmp135
	movq	-8(%rbp), %rdx	# matassign, tmp136
	movq	-32(%rbp), %rsi	# dsq, tmp137
	movq	-24(%rbp), %rax	# msa, tmp138
	movq	%rdi, %r8	# tmp134,
	movq	%rax, %rdi	# tmp138,
	call	matassign2hmm	#
	.loc 1 130 0
	movq	-8(%rbp), %rax	# matassign, tmp139
	movq	%rax, %rdi	# tmp139,
	call	free	#
	.loc 1 131 0
	nop
	.loc 1 132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P7Handmodelmaker, .-P7Handmodelmaker
	.globl	P7Fastmodelmaker
	.type	P7Fastmodelmaker, @function
P7Fastmodelmaker:
.LFB3:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# dsq, dsq
	movss	%xmm0, -52(%rbp)	# maxgap, maxgap
	movq	%rdx, -64(%rbp)	# ret_hmm, ret_hmm
	movq	%rcx, -72(%rbp)	# ret_tr, ret_tr
	.loc 1 172 0
	movq	-40(%rbp), %rax	# msa, tmp133
	movl	24(%rax), %eax	# msa_5(D)->alen, D.9213
	addl	$1, %eax	#, D.9213
	cltq
	salq	$2, %rax	#, D.9214
	movq	%rax, %rdx	# D.9214,
	movl	$172, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp134, matassign
	.loc 1 176 0
	movq	-8(%rbp), %rax	# matassign, tmp135
	movl	$0, (%rax)	#, *matassign_10
	.loc 1 177 0
	movl	$0, -16(%rbp)	#, apos
	jmp	.L9	#
.L17:
	.loc 1 178 0
	movl	-16(%rbp), %eax	# apos, tmp136
	cltq
	addq	$1, %rax	#, D.9215
	leaq	0(,%rax,4), %rdx	#, D.9215
	movq	-8(%rbp), %rax	# matassign, tmp137
	addq	%rdx, %rax	# D.9215, D.9216
	movl	$0, (%rax)	#, *_16
	.loc 1 180 0
	movl	$0, -12(%rbp)	#, ngap
	.loc 1 181 0
	movl	$0, -20(%rbp)	#, idx
	jmp	.L10	#
.L13:
	.loc 1 182 0
	movq	-40(%rbp), %rax	# msa, tmp138
	movq	(%rax), %rax	# msa_5(D)->aseq, D.9217
	movl	-20(%rbp), %edx	# idx, tmp139
	movslq	%edx, %rdx	# tmp139, D.9214
	salq	$3, %rdx	#, D.9214
	addq	%rdx, %rax	# D.9214, D.9217
	movq	(%rax), %rdx	# *_23, D.9218
	movl	-16(%rbp), %eax	# apos, tmp140
	cltq
	addq	%rdx, %rax	# D.9218, D.9218
	movzbl	(%rax), %eax	# *_26, D.9219
	cmpb	$32, %al	#, D.9219
	je	.L11	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp141
	movq	(%rax), %rax	# msa_5(D)->aseq, D.9217
	movl	-20(%rbp), %edx	# idx, tmp142
	movslq	%edx, %rdx	# tmp142, D.9214
	salq	$3, %rdx	#, D.9214
	addq	%rdx, %rax	# D.9214, D.9217
	movq	(%rax), %rdx	# *_31, D.9218
	movl	-16(%rbp), %eax	# apos, tmp143
	cltq
	addq	%rdx, %rax	# D.9218, D.9218
	movzbl	(%rax), %eax	# *_34, D.9219
	cmpb	$46, %al	#, D.9219
	je	.L11	#,
	movq	-40(%rbp), %rax	# msa, tmp144
	movq	(%rax), %rax	# msa_5(D)->aseq, D.9217
	movl	-20(%rbp), %edx	# idx, tmp145
	movslq	%edx, %rdx	# tmp145, D.9214
	salq	$3, %rdx	#, D.9214
	addq	%rdx, %rax	# D.9214, D.9217
	movq	(%rax), %rdx	# *_39, D.9218
	movl	-16(%rbp), %eax	# apos, tmp146
	cltq
	addq	%rdx, %rax	# D.9218, D.9218
	movzbl	(%rax), %eax	# *_42, D.9219
	cmpb	$95, %al	#, D.9219
	je	.L11	#,
	movq	-40(%rbp), %rax	# msa, tmp147
	movq	(%rax), %rax	# msa_5(D)->aseq, D.9217
	movl	-20(%rbp), %edx	# idx, tmp148
	movslq	%edx, %rdx	# tmp148, D.9214
	salq	$3, %rdx	#, D.9214
	addq	%rdx, %rax	# D.9214, D.9217
	movq	(%rax), %rdx	# *_47, D.9218
	movl	-16(%rbp), %eax	# apos, tmp149
	cltq
	addq	%rdx, %rax	# D.9218, D.9218
	movzbl	(%rax), %eax	# *_50, D.9219
	cmpb	$45, %al	#, D.9219
	je	.L11	#,
	movq	-40(%rbp), %rax	# msa, tmp150
	movq	(%rax), %rax	# msa_5(D)->aseq, D.9217
	movl	-20(%rbp), %edx	# idx, tmp151
	movslq	%edx, %rdx	# tmp151, D.9214
	salq	$3, %rdx	#, D.9214
	addq	%rdx, %rax	# D.9214, D.9217
	movq	(%rax), %rdx	# *_55, D.9218
	movl	-16(%rbp), %eax	# apos, tmp152
	cltq
	addq	%rdx, %rax	# D.9218, D.9218
	movzbl	(%rax), %eax	# *_58, D.9219
	cmpb	$126, %al	#, D.9219
	jne	.L12	#,
.L11:
	.loc 1 183 0 is_stmt 1
	addl	$1, -12(%rbp)	#, ngap
.L12:
	.loc 1 181 0
	addl	$1, -20(%rbp)	#, idx
.L10:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp153
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.9213
	cmpl	-20(%rbp), %eax	# idx, D.9213
	jg	.L13	#,
	.loc 1 185 0 is_stmt 1
	cvtsi2ss	-12(%rbp), %xmm0	# ngap, D.9220
	movq	-40(%rbp), %rax	# msa, tmp154
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.9213
	cvtsi2ss	%eax, %xmm1	# D.9213, D.9220
	divss	%xmm1, %xmm0	# D.9220, D.9220
	ucomiss	-52(%rbp), %xmm0	# maxgap, D.9220
	jbe	.L20	#,
	.loc 1 186 0
	movl	-16(%rbp), %eax	# apos, tmp155
	cltq
	addq	$1, %rax	#, D.9215
	leaq	0(,%rax,4), %rdx	#, D.9215
	movq	-8(%rbp), %rax	# matassign, tmp156
	addq	%rdx, %rax	# D.9215, D.9216
	movl	-16(%rbp), %edx	# apos, tmp157
	movslq	%edx, %rdx	# tmp157, D.9215
	addq	$1, %rdx	#, D.9215
	leaq	0(,%rdx,4), %rcx	#, D.9215
	movq	-8(%rbp), %rdx	# matassign, tmp158
	addq	%rcx, %rdx	# D.9215, D.9216
	movl	(%rdx), %edx	# *_74, D.9213
	orl	$8, %edx	#, D.9213
	movl	%edx, (%rax)	# D.9213, *_70
	jmp	.L16	#
.L20:
	.loc 1 188 0
	movl	-16(%rbp), %eax	# apos, tmp159
	cltq
	addq	$1, %rax	#, D.9215
	leaq	0(,%rax,4), %rdx	#, D.9215
	movq	-8(%rbp), %rax	# matassign, tmp160
	addq	%rdx, %rax	# D.9215, D.9216
	movl	-16(%rbp), %edx	# apos, tmp161
	movslq	%edx, %rdx	# tmp161, D.9215
	addq	$1, %rdx	#, D.9215
	leaq	0(,%rdx,4), %rcx	#, D.9215
	movq	-8(%rbp), %rdx	# matassign, tmp162
	addq	%rcx, %rdx	# D.9215, D.9216
	movl	(%rdx), %edx	# *_84, D.9213
	orl	$1, %edx	#, D.9213
	movl	%edx, (%rax)	# D.9213, *_80
.L16:
	.loc 1 177 0
	addl	$1, -16(%rbp)	#, apos
.L9:
	.loc 1 177 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp163
	movl	24(%rax), %eax	# msa_5(D)->alen, D.9213
	cmpl	-16(%rbp), %eax	# apos, D.9213
	jg	.L17	#,
	.loc 1 195 0 is_stmt 1
	movq	-72(%rbp), %rdi	# ret_tr, tmp164
	movq	-64(%rbp), %rcx	# ret_hmm, tmp165
	movq	-8(%rbp), %rdx	# matassign, tmp166
	movq	-48(%rbp), %rsi	# dsq, tmp167
	movq	-40(%rbp), %rax	# msa, tmp168
	movq	%rdi, %r8	# tmp164,
	movq	%rax, %rdi	# tmp168,
	call	matassign2hmm	#
	.loc 1 197 0
	movq	-8(%rbp), %rax	# matassign, tmp169
	movq	%rax, %rdi	# tmp169,
	call	free	#
	.loc 1 198 0
	nop
	.loc 1 199 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	P7Fastmodelmaker, .-P7Fastmodelmaker
	.globl	P7Maxmodelmaker
	.type	P7Maxmodelmaker, @function
P7Maxmodelmaker:
.LFB4:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$504, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -440(%rbp)	# msa, msa
	movq	%rsi, -448(%rbp)	# dsq, dsq
	movss	%xmm0, -452(%rbp)	# maxgap, maxgap
	movq	%rdx, -464(%rbp)	# prior, prior
	movq	%rcx, -472(%rbp)	# null, null
	movss	%xmm1, -456(%rbp)	# null_p1, null_p1
	movss	%xmm2, -476(%rbp)	# mpri, mpri
	movq	%r8, -488(%rbp)	# ret_hmm, ret_hmm
	movq	%r9, -496(%rbp)	# ret_tr, ret_tr
	.loc 1 255 0
	movq	-440(%rbp), %rax	# msa, tmp565
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	addl	$1, %eax	#, D.9221
	cltq
	salq	$3, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$255, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -360(%rbp)	# tmp566, matc
	.loc 1 256 0
	movq	-440(%rbp), %rax	# msa, tmp567
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	addl	$2, %eax	#, D.9221
	cltq
	salq	$2, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$256, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -352(%rbp)	# tmp568, sc
	.loc 1 257 0
	movq	-440(%rbp), %rax	# msa, tmp569
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	addl	$2, %eax	#, D.9221
	cltq
	salq	$2, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$257, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -344(%rbp)	# tmp570, tbck
	.loc 1 258 0
	movq	-440(%rbp), %rax	# msa, tmp571
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	addl	$1, %eax	#, D.9221
	cltq
	salq	$2, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$258, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -336(%rbp)	# tmp572, matassign
	.loc 1 259 0
	movq	-440(%rbp), %rax	# msa, tmp573
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cltq
	salq	$2, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$259, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -328(%rbp)	# tmp574, insopt
	.loc 1 260 0
	movl	$0, -420(%rbp)	#, i
	jmp	.L22	#
.L23:
	.loc 1 261 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp575
	cltq
	addq	$1, %rax	#, D.9223
	leaq	0(,%rax,8), %rdx	#, D.9223
	movq	-360(%rbp), %rax	# matc, tmp576
	leaq	(%rdx,%rax), %rbx	#, D.9224
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.0
	cltq
	salq	$2, %rax	#, D.9222
	movq	%rax, %rdx	# D.9222,
	movl	$261, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.9225, *_69
	.loc 1 262 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.1
	movl	-420(%rbp), %eax	# i, tmp577
	cltq
	addq	$1, %rax	#, D.9223
	leaq	0(,%rax,8), %rcx	#, D.9223
	movq	-360(%rbp), %rax	# matc, tmp578
	addq	%rcx, %rax	# D.9223, D.9224
	movq	(%rax), %rax	# *_78, D.9226
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.1,
	movq	%rax, %rdi	# D.9226,
	call	FSet	#
	.loc 1 260 0 discriminator 2
	addl	$1, -420(%rbp)	#, i
.L22:
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp579
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	cmpl	-420(%rbp), %eax	# i, D.9221
	jg	.L23	#,
	.loc 1 267 0 is_stmt 1
	movl	$0, -420(%rbp)	#, i
	jmp	.L24	#
.L28:
	.loc 1 268 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L25	#
.L27:
	.loc 1 269 0
	movq	-440(%rbp), %rax	# msa, tmp580
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp581
	movslq	%edx, %rdx	# tmp581, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_88, D.9228
	movl	-420(%rbp), %eax	# i, tmp582
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_91, D.9229
	cmpb	$32, %al	#, D.9229
	je	.L26	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp583
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp584
	movslq	%edx, %rdx	# tmp584, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_96, D.9228
	movl	-420(%rbp), %eax	# i, tmp585
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_99, D.9229
	cmpb	$46, %al	#, D.9229
	je	.L26	#,
	movq	-440(%rbp), %rax	# msa, tmp586
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp587
	movslq	%edx, %rdx	# tmp587, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_104, D.9228
	movl	-420(%rbp), %eax	# i, tmp588
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_107, D.9229
	cmpb	$95, %al	#, D.9229
	je	.L26	#,
	movq	-440(%rbp), %rax	# msa, tmp589
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp590
	movslq	%edx, %rdx	# tmp590, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_112, D.9228
	movl	-420(%rbp), %eax	# i, tmp591
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_115, D.9229
	cmpb	$45, %al	#, D.9229
	je	.L26	#,
	movq	-440(%rbp), %rax	# msa, tmp592
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp593
	movslq	%edx, %rdx	# tmp593, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_120, D.9228
	movl	-420(%rbp), %eax	# i, tmp594
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_123, D.9229
	cmpb	$126, %al	#, D.9229
	je	.L26	#,
	.loc 1 270 0 is_stmt 1
	movq	-440(%rbp), %rax	# msa, tmp595
	movq	16(%rax), %rax	# msa_39(D)->wgt, D.9226
	movl	-424(%rbp), %edx	# idx, tmp596
	movslq	%edx, %rdx	# tmp596, D.9222
	salq	$2, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9226
	movl	(%rax), %ebx	# *_128, D.9230
	movq	-440(%rbp), %rax	# msa, tmp597
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp598
	movslq	%edx, %rdx	# tmp598, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rdx	# *_133, D.9228
	movl	-420(%rbp), %eax	# i, tmp599
	cltq
	addq	%rdx, %rax	# D.9228, D.9228
	movzbl	(%rax), %eax	# *_136, D.9229
	movsbl	%al, %eax	# D.9229, D.9221
	movl	%eax, %edi	# D.9221,
	call	SymbolIndex	#
	movsbl	%al, %edx	# D.9229, D.9221
	movl	-420(%rbp), %eax	# i, tmp600
	cltq
	addq	$1, %rax	#, D.9223
	leaq	0(,%rax,8), %rcx	#, D.9223
	movq	-360(%rbp), %rax	# matc, tmp601
	addq	%rcx, %rax	# D.9223, D.9224
	movq	(%rax), %rax	# *_145, D.9226
	movl	%ebx, -480(%rbp)	# D.9230, %sfp
	movss	-480(%rbp), %xmm0	# %sfp,
	movl	%edx, %esi	# D.9221,
	movq	%rax, %rdi	# D.9226,
	call	P7CountSymbol	#
.L26:
	.loc 1 268 0
	addl	$1, -424(%rbp)	#, idx
.L25:
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp602
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L27	#,
	.loc 1 267 0 is_stmt 1
	addl	$1, -420(%rbp)	#, i
.L24:
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp603
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	cmpl	-420(%rbp), %eax	# i, D.9221
	jg	.L28	#,
	.loc 1 271 0 is_stmt 1
	movss	-476(%rbp), %xmm0	# mpri, tmp604
	xorps	%xmm1, %xmm1	# tmp605
	ucomiss	%xmm1, %xmm0	# tmp605, tmp604
	jbe	.L126	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movss	-476(%rbp), %xmm0	# mpri, D.9231
	cvtps2pd	%xmm0, %xmm0	# D.9231, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp606
	mulsd	%xmm1, %xmm0	# tmp606, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm3	# D.9231, iftmp.2
	movss	%xmm3, -480(%rbp)	# iftmp.2, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.2
	jmp	.L31	#
.L126:
	.loc 1 271 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.2
.L31:
	.loc 1 271 0 discriminator 3
	movl	%eax, -476(%rbp)	# iftmp.2, mpri
	.loc 1 273 0 is_stmt 1 discriminator 3
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.3
	movq	-464(%rbp), %rax	# prior, tmp607
	leaq	24016(%rax), %rcx	#, D.9232
	leaq	-176(%rbp), %rax	#, tmp608
	movq	%rcx, %rsi	# D.9232,
	movq	%rax, %rdi	# tmp608,
	call	FCopy	#
	.loc 1 274 0 discriminator 3
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.4
	leaq	-176(%rbp), %rax	#, tmp609
	movl	%edx, %esi	# Alphabet_size.4,
	movq	%rax, %rdi	# tmp609,
	call	FNorm	#
	.loc 1 275 0 discriminator 3
	movq	-440(%rbp), %rax	# msa, tmp610
	movl	28(%rax), %edx	# msa_39(D)->nseq, D.9221
	movq	-440(%rbp), %rax	# msa, tmp611
	movq	16(%rax), %rax	# msa_39(D)->wgt, D.9226
	movl	%edx, %esi	# D.9221,
	movq	%rax, %rdi	# D.9226,
	call	FSum	#
	movss	%xmm0, -480(%rbp)	#, %sfp
	movl	-480(%rbp), %eax	# %sfp, tmp612
	movl	%eax, -388(%rbp)	# tmp612, wgtsum
	.loc 1 276 0 discriminator 3
	movl	$0, -412(%rbp)	#, x
	jmp	.L32	#
.L36:
	.loc 1 277 0
	movl	-412(%rbp), %eax	# x, tmp614
	cltq
	movss	-176(%rbp,%rax,4), %xmm0	# insp, D.9230
	movl	-412(%rbp), %eax	# x, tmp615
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-472(%rbp), %rax	# null, tmp616
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm1	# *_169, D.9230
	divss	%xmm1, %xmm0	# D.9230, D.9230
	xorps	%xmm1, %xmm1	# tmp617
	ucomiss	%xmm1, %xmm0	# tmp617, D.9230
	jbe	.L127	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# x, tmp619
	cltq
	movss	-176(%rbp,%rax,4), %xmm0	# insp, D.9230
	movl	-412(%rbp), %eax	# x, tmp620
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-472(%rbp), %rax	# null, tmp621
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm1	# *_175, D.9230
	divss	%xmm1, %xmm0	# D.9230, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp622
	mulsd	%xmm1, %xmm0	# tmp622, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm4	# D.9231, iftmp.5
	movss	%xmm4, -480(%rbp)	# iftmp.5, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.5
	jmp	.L35	#
.L127:
	.loc 1 277 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.5
.L35:
	.loc 1 277 0 discriminator 3
	movl	-412(%rbp), %edx	# x, tmp624
	movslq	%edx, %rdx	# tmp624, tmp623
	movl	%eax, -176(%rbp,%rdx,4)	# iftmp.5, insp
	.loc 1 276 0 is_stmt 1 discriminator 3
	addl	$1, -412(%rbp)	#, x
.L32:
	.loc 1 276 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.6
	cmpl	%eax, -412(%rbp)	# Alphabet_size.6, x
	jl	.L36	#,
	.loc 1 281 0 is_stmt 1
	movq	-440(%rbp), %rax	# msa, tmp625
	movq	%rax, %rdi	# tmp625,
	call	estimate_model_length	#
	movl	%eax, -384(%rbp)	# tmp626, est_M
	.loc 1 282 0
	movl	-384(%rbp), %eax	# est_M, tmp627
	subl	$1, %eax	#, D.9221
	cvtsi2ss	%eax, %xmm0	# D.9221, D.9230
	movss	.LC5(%rip), %xmm1	#, tmp629
	divss	%xmm0, %xmm1	# D.9230, tmp628
	movaps	%xmm1, %xmm0	# tmp628, tmp628
	movss	%xmm0, -380(%rbp)	# tmp628, t_me
	.loc 1 283 0
	movl	.LC5(%rip), %eax	#, tmp630
	movl	%eax, -376(%rbp)	# tmp630, bm1
	.loc 1 284 0
	movl	-384(%rbp), %eax	# est_M, tmp631
	subl	$1, %eax	#, D.9221
	cvtsi2ss	%eax, %xmm0	# D.9221, D.9230
	movss	.LC5(%rip), %xmm1	#, tmp633
	divss	%xmm0, %xmm1	# D.9230, tmp632
	movaps	%xmm1, %xmm0	# tmp632, tmp632
	movss	%xmm0, -372(%rbp)	# tmp632, bm2
	.loc 1 285 0
	movss	-376(%rbp), %xmm0	# bm1, tmp634
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp635
	ucomiss	%xmm1, %xmm0	# tmp635, D.9230
	jbe	.L128	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	movss	-376(%rbp), %xmm0	# bm1, tmp636
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp637
	mulsd	%xmm1, %xmm0	# tmp637, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm5	# D.9231, iftmp.7
	movss	%xmm5, -480(%rbp)	# iftmp.7, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.7
	jmp	.L39	#
.L128:
	.loc 1 285 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.7
.L39:
	.loc 1 285 0 discriminator 3
	movl	%eax, -376(%rbp)	# iftmp.7, bm1
	.loc 1 286 0 is_stmt 1 discriminator 3
	movss	-372(%rbp), %xmm0	# bm2, tmp638
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp639
	ucomiss	%xmm1, %xmm0	# tmp639, D.9230
	jbe	.L129	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movss	-372(%rbp), %xmm0	# bm2, tmp640
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp641
	mulsd	%xmm1, %xmm0	# tmp641, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm6	# D.9231, iftmp.8
	movss	%xmm6, -480(%rbp)	# iftmp.8, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.8
	jmp	.L42	#
.L129:
	.loc 1 286 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.8
.L42:
	.loc 1 286 0 discriminator 3
	movl	%eax, -372(%rbp)	# iftmp.8, bm2
	.loc 1 291 0 is_stmt 1 discriminator 3
	movl	.LC5(%rip), %eax	#, tmp642
	movl	%eax, -368(%rbp)	# tmp642, maxgap
	.loc 1 292 0 discriminator 3
	movq	-440(%rbp), %rax	# msa, tmp643
	movl	24(%rax), %eax	# msa_39(D)->alen, tmp644
	movl	%eax, -404(%rbp)	# tmp644, last
	jmp	.L43	#
.L51:
	.loc 1 293 0
	movl	$0, -392(%rbp)	#, ngap
	.loc 1 294 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L44	#
.L47:
	.loc 1 295 0
	movq	-440(%rbp), %rax	# msa, tmp645
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp646
	movslq	%edx, %rdx	# tmp646, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_217, D.9228
	movl	-404(%rbp), %edx	# last, tmp647
	movslq	%edx, %rdx	# tmp647, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_221, D.9229
	cmpb	$32, %al	#, D.9229
	je	.L45	#,
	.loc 1 295 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# msa, tmp648
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp649
	movslq	%edx, %rdx	# tmp649, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_226, D.9228
	movl	-404(%rbp), %edx	# last, tmp650
	movslq	%edx, %rdx	# tmp650, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_230, D.9229
	cmpb	$46, %al	#, D.9229
	je	.L45	#,
	.loc 1 295 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp651
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp652
	movslq	%edx, %rdx	# tmp652, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_235, D.9228
	movl	-404(%rbp), %edx	# last, tmp653
	movslq	%edx, %rdx	# tmp653, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_239, D.9229
	cmpb	$95, %al	#, D.9229
	je	.L45	#,
	movq	-440(%rbp), %rax	# msa, tmp654
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp655
	movslq	%edx, %rdx	# tmp655, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_244, D.9228
	movl	-404(%rbp), %edx	# last, tmp656
	movslq	%edx, %rdx	# tmp656, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_248, D.9229
	cmpb	$45, %al	#, D.9229
	je	.L45	#,
	movq	-440(%rbp), %rax	# msa, tmp657
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp658
	movslq	%edx, %rdx	# tmp658, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_253, D.9228
	movl	-404(%rbp), %edx	# last, tmp659
	movslq	%edx, %rdx	# tmp659, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_257, D.9229
	cmpb	$126, %al	#, D.9229
	jne	.L46	#,
.L45:
	addl	$1, -392(%rbp)	#, ngap
.L46:
	.loc 1 294 0 is_stmt 1
	addl	$1, -424(%rbp)	#, idx
.L44:
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp660
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L47	#,
	.loc 1 296 0 is_stmt 1
	cvtsi2ss	-392(%rbp), %xmm0	# ngap, D.9230
	movq	-440(%rbp), %rax	# msa, tmp661
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cvtsi2ss	%eax, %xmm1	# D.9221, D.9230
	divss	%xmm1, %xmm0	# D.9230, D.9230
	movss	-368(%rbp), %xmm1	# maxgap, tmp662
	ucomiss	%xmm0, %xmm1	# D.9230, tmp662
	jb	.L130	#,
	.loc 1 297 0
	jmp	.L50	#
.L130:
	.loc 1 292 0
	subl	$1, -404(%rbp)	#, last
.L43:
	.loc 1 292 0 is_stmt 0 discriminator 1
	cmpl	$0, -404(%rbp)	#, last
	jg	.L51	#,
.L50:
	.loc 1 302 0 is_stmt 1
	movl	-404(%rbp), %eax	# last, tmp663
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp664
	addq	%rax, %rdx	# tmp664, D.9226
	movl	.LC2(%rip), %eax	#, tmp665
	movl	%eax, (%rdx)	# tmp665, *_268
	.loc 1 303 0
	movl	-404(%rbp), %eax	# last, tmp666
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-344(%rbp), %rax	# tbck, tmp667
	addq	%rdx, %rax	# D.9222, D.9233
	movl	$0, (%rax)	#, *_271
	.loc 1 307 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L52	#
.L56:
	.loc 1 308 0
	movl	-404(%rbp), %eax	# last, tmp668
	movl	%eax, -420(%rbp)	# tmp668, i
	jmp	.L53	#
.L55:
	.loc 1 309 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp669
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp670
	movslq	%edx, %rdx	# tmp670, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_323, D.9228
	movl	-420(%rbp), %edx	# i, tmp671
	movslq	%edx, %rdx	# tmp671, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movb	$95, (%rax)	#, *_327
	.loc 1 308 0 discriminator 1
	subl	$1, -420(%rbp)	#, i
.L53:
	cmpl	$0, -420(%rbp)	#, i
	jle	.L54	#,
	.loc 1 308 0 is_stmt 0 discriminator 2
	movq	-440(%rbp), %rax	# msa, tmp672
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp673
	movslq	%edx, %rdx	# tmp673, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_278, D.9228
	movl	-420(%rbp), %edx	# i, tmp674
	movslq	%edx, %rdx	# tmp674, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_282, D.9229
	cmpb	$32, %al	#, D.9229
	je	.L55	#,
	movq	-440(%rbp), %rax	# msa, tmp675
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp676
	movslq	%edx, %rdx	# tmp676, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_287, D.9228
	movl	-420(%rbp), %edx	# i, tmp677
	movslq	%edx, %rdx	# tmp677, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_291, D.9229
	cmpb	$46, %al	#, D.9229
	je	.L55	#,
	.loc 1 308 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp678
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp679
	movslq	%edx, %rdx	# tmp679, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_296, D.9228
	movl	-420(%rbp), %edx	# i, tmp680
	movslq	%edx, %rdx	# tmp680, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_300, D.9229
	cmpb	$95, %al	#, D.9229
	je	.L55	#,
	movq	-440(%rbp), %rax	# msa, tmp681
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp682
	movslq	%edx, %rdx	# tmp682, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_305, D.9228
	movl	-420(%rbp), %edx	# i, tmp683
	movslq	%edx, %rdx	# tmp683, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_309, D.9229
	cmpb	$45, %al	#, D.9229
	je	.L55	#,
	movq	-440(%rbp), %rax	# msa, tmp684
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp685
	movslq	%edx, %rdx	# tmp685, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_314, D.9228
	movl	-420(%rbp), %edx	# i, tmp686
	movslq	%edx, %rdx	# tmp686, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_318, D.9229
	cmpb	$126, %al	#, D.9229
	je	.L55	#,
.L54:
	.loc 1 307 0 is_stmt 1
	addl	$1, -424(%rbp)	#, idx
.L52:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp687
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L56	#,
	.loc 1 313 0 is_stmt 1
	movl	-404(%rbp), %eax	# last, tmp691
	subl	$1, %eax	#, tmp690
	movl	%eax, -420(%rbp)	# tmp690, i
	jmp	.L57	#
.L95:
	.loc 1 315 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.9
	movl	-420(%rbp), %eax	# i, tmp692
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9222
	movq	-360(%rbp), %rax	# matc, tmp693
	addq	%rcx, %rax	# D.9222, D.9224
	movq	(%rax), %rcx	# *_334, D.9226
	leaq	-256(%rbp), %rax	#, tmp694
	movq	%rcx, %rsi	# D.9226,
	movq	%rax, %rdi	# tmp694,
	call	FCopy	#
	.loc 1 316 0
	movq	-464(%rbp), %rax	# prior, tmp695
	leaq	7212(%rax), %rdi	#, D.9234
	movq	-464(%rbp), %rax	# prior, tmp696
	leaq	6412(%rax), %rcx	#, D.9235
	movq	-464(%rbp), %rax	# prior, tmp697
	movl	6408(%rax), %edx	# prior_157(D)->mnum, D.9221
	movq	-464(%rbp), %rsi	# prior, tmp698
	leaq	-256(%rbp), %rax	#, tmp699
	movl	$0, %r9d	#,
	movq	%rdi, %r8	# D.9234,
	movq	%rax, %rdi	# tmp699,
	call	P7PriorifyEmissionVector	#
	.loc 1 317 0
	movl	$0, -412(%rbp)	#, x
	jmp	.L58	#
.L62:
	.loc 1 318 0
	movl	-412(%rbp), %eax	# x, tmp701
	cltq
	movss	-256(%rbp,%rax,4), %xmm0	# matp, D.9230
	movl	-412(%rbp), %eax	# x, tmp702
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-472(%rbp), %rax	# null, tmp703
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm1	# *_344, D.9230
	divss	%xmm1, %xmm0	# D.9230, D.9230
	xorps	%xmm1, %xmm1	# tmp704
	ucomiss	%xmm1, %xmm0	# tmp704, D.9230
	jbe	.L131	#,
	.loc 1 318 0 is_stmt 0 discriminator 1
	movl	-412(%rbp), %eax	# x, tmp706
	cltq
	movss	-256(%rbp,%rax,4), %xmm0	# matp, D.9230
	movl	-412(%rbp), %eax	# x, tmp707
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-472(%rbp), %rax	# null, tmp708
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm1	# *_350, D.9230
	divss	%xmm1, %xmm0	# D.9230, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp709
	mulsd	%xmm1, %xmm0	# tmp709, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm7	# D.9231, iftmp.10
	movss	%xmm7, -480(%rbp)	# iftmp.10, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.10
	jmp	.L61	#
.L131:
	.loc 1 318 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.10
.L61:
	.loc 1 318 0 discriminator 3
	movl	-412(%rbp), %edx	# x, tmp711
	movslq	%edx, %rdx	# tmp711, tmp710
	movl	%eax, -256(%rbp,%rdx,4)	# iftmp.10, matp
	.loc 1 317 0 is_stmt 1 discriminator 3
	addl	$1, -412(%rbp)	#, x
.L58:
	.loc 1 317 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.11
	cmpl	%eax, -412(%rbp)	# Alphabet_size.11, x
	jl	.L62	#,
	.loc 1 321 0 is_stmt 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.12
	leaq	-96(%rbp), %rax	#, tmp712
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.12,
	movq	%rax, %rdi	# tmp712,
	call	FSet	#
	.loc 1 322 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L63	#
.L64:
	.loc 1 322 0 is_stmt 0 discriminator 2
	movl	-424(%rbp), %eax	# idx, tmp713
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-328(%rbp), %rax	# insopt, tmp714
	addq	%rdx, %rax	# D.9222, D.9233
	movl	$0, (%rax)	#, *_364
	addl	$1, -424(%rbp)	#, idx
.L63:
	.loc 1 322 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp715
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L64	#,
	.loc 1 324 0 is_stmt 1
	movl	-420(%rbp), %eax	# i, tmp716
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp717
	addq	%rax, %rdx	# tmp717, D.9226
	movl	.LC6(%rip), %eax	#, tmp718
	movl	%eax, (%rdx)	# tmp718, *_368
	.loc 1 325 0
	movl	-420(%rbp), %eax	# i, tmp722
	addl	$1, %eax	#, tmp721
	movl	%eax, -416(%rbp)	# tmp721, j
	jmp	.L65	#
.L94:
	.loc 1 327 0
	movq	-440(%rbp), %rax	# msa, tmp723
	movq	16(%rax), %r9	# msa_39(D)->wgt, D.9226
	movq	-440(%rbp), %rax	# msa, tmp724
	movl	28(%rax), %esi	# msa_39(D)->nseq, D.9221
	movq	-440(%rbp), %rax	# msa, tmp725
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-416(%rbp), %r8d	# j, tmp726
	movl	-420(%rbp), %ecx	# i, tmp727
	movq	-328(%rbp), %rdx	# insopt, tmp728
	leaq	-320(%rbp), %rdi	#, tmp729
	movq	%rdi, (%rsp)	# tmp729,
	movq	%rax, %rdi	# D.9227,
	call	build_cij	#
	movl	%eax, -364(%rbp)	# tmp730, code
	.loc 1 328 0
	cmpl	$-1, -364(%rbp)	#, code
	jne	.L66	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	jmp	.L67	#
.L66:
	.loc 1 329 0 is_stmt 1
	cmpl	$1, -364(%rbp)	#, code
	jne	.L68	#,
	.loc 1 330 0
	leaq	-320(%rbp), %rcx	#, tmp731
	leaq	-288(%rbp), %rax	#, tmp732
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp731,
	movq	%rax, %rdi	# tmp732,
	call	FCopy	#
	.loc 1 331 0
	movq	-464(%rbp), %rax	# prior, tmp733
	leaq	8(%rax), %rdx	#, D.9235
	movq	-464(%rbp), %rcx	# prior, tmp734
	leaq	-288(%rbp), %rax	#, tmp735
	movq	%rcx, %rsi	# tmp734,
	movq	%rax, %rdi	# tmp735,
	call	P7PriorifyTransitionVector	#
	.loc 1 332 0
	leaq	-288(%rbp), %rax	#, tmp736
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp736,
	call	FNorm	#
	.loc 1 333 0
	movss	-288(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp737
	ucomiss	%xmm1, %xmm0	# tmp737, D.9230
	jbe	.L132	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	movss	-288(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp738
	mulsd	%xmm1, %xmm0	# tmp738, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm2	# D.9231, iftmp.13
	movss	%xmm2, -480(%rbp)	# iftmp.13, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.13
	jmp	.L71	#
.L132:
	.loc 1 333 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.13
.L71:
	.loc 1 333 0 discriminator 3
	movl	%eax, -288(%rbp)	# iftmp.13, tij
	.loc 1 334 0 is_stmt 1 discriminator 3
	movss	-284(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp739
	ucomiss	%xmm1, %xmm0	# tmp739, D.9230
	jbe	.L133	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movss	-284(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp740
	mulsd	%xmm1, %xmm0	# tmp740, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm3	# D.9231, iftmp.14
	movss	%xmm3, -480(%rbp)	# iftmp.14, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.14
	jmp	.L74	#
.L133:
	.loc 1 334 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.14
.L74:
	.loc 1 334 0 discriminator 3
	movl	%eax, -284(%rbp)	# iftmp.14, tij
	.loc 1 335 0 is_stmt 1 discriminator 3
	movss	-280(%rbp), %xmm0	# tij, D.9230
	xorps	%xmm1, %xmm1	# tmp741
	ucomiss	%xmm1, %xmm0	# tmp741, D.9230
	jbe	.L134	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	movss	-280(%rbp), %xmm0	# tij, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp742
	mulsd	%xmm1, %xmm0	# tmp742, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm4	# D.9231, iftmp.15
	movss	%xmm4, -480(%rbp)	# iftmp.15, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.15
	jmp	.L77	#
.L134:
	.loc 1 335 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.15
.L77:
	.loc 1 335 0 discriminator 3
	movl	%eax, -280(%rbp)	# iftmp.15, tij
	.loc 1 336 0 is_stmt 1 discriminator 3
	movss	-276(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp743
	ucomiss	%xmm1, %xmm0	# tmp743, D.9230
	jbe	.L135	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movss	-276(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp744
	mulsd	%xmm1, %xmm0	# tmp744, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm5	# D.9231, iftmp.16
	movss	%xmm5, -480(%rbp)	# iftmp.16, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.16
	jmp	.L80	#
.L135:
	.loc 1 336 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.16
.L80:
	.loc 1 336 0 discriminator 3
	movl	%eax, -276(%rbp)	# iftmp.16, tij
	.loc 1 337 0 is_stmt 1 discriminator 3
	movss	-272(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp745
	ucomiss	%xmm1, %xmm0	# tmp745, D.9230
	jbe	.L136	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movss	-272(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp746
	mulsd	%xmm1, %xmm0	# tmp746, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm6	# D.9231, iftmp.17
	movss	%xmm6, -480(%rbp)	# iftmp.17, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.17
	jmp	.L83	#
.L136:
	.loc 1 337 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.17
.L83:
	.loc 1 337 0 discriminator 3
	movl	%eax, -272(%rbp)	# iftmp.17, tij
	.loc 1 338 0 is_stmt 1 discriminator 3
	movss	-268(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	xorps	%xmm1, %xmm1	# tmp747
	ucomiss	%xmm1, %xmm0	# tmp747, D.9230
	jbe	.L137	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movss	-268(%rbp), %xmm0	# tij, D.9230
	divss	-456(%rbp), %xmm0	# null_p1, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp748
	mulsd	%xmm1, %xmm0	# tmp748, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm7	# D.9231, iftmp.18
	movss	%xmm7, -480(%rbp)	# iftmp.18, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.18
	jmp	.L86	#
.L137:
	.loc 1 338 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.18
.L86:
	.loc 1 338 0 discriminator 3
	movl	%eax, -268(%rbp)	# iftmp.18, tij
	.loc 1 339 0 is_stmt 1 discriminator 3
	movss	-264(%rbp), %xmm0	# tij, D.9230
	xorps	%xmm1, %xmm1	# tmp749
	ucomiss	%xmm1, %xmm0	# tmp749, D.9230
	jbe	.L138	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	movss	-264(%rbp), %xmm0	# tij, D.9230
	unpcklps	%xmm0, %xmm0	# D.9230, D.9230
	cvtps2pd	%xmm0, %xmm0	# D.9230, D.9231
	call	log	#
	movsd	.LC3(%rip), %xmm1	#, tmp750
	mulsd	%xmm1, %xmm0	# tmp750, D.9231
	unpcklpd	%xmm0, %xmm0	# D.9231
	cvtpd2ps	%xmm0, %xmm2	# D.9231, iftmp.19
	movss	%xmm2, -480(%rbp)	# iftmp.19, %sfp
	movl	-480(%rbp), %eax	# %sfp, iftmp.19
	jmp	.L89	#
.L138:
	.loc 1 339 0 discriminator 2
	movl	.LC4(%rip), %eax	#, iftmp.19
.L89:
	.loc 1 339 0 discriminator 3
	movl	%eax, -264(%rbp)	# iftmp.19, tij
	.loc 1 341 0 is_stmt 1 discriminator 3
	movl	-416(%rbp), %eax	# j, tmp751
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp752
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm3	# *_436, D.9230
	movss	%xmm3, -480(%rbp)	# D.9230, %sfp
	leaq	-320(%rbp), %rcx	#, tmp753
	leaq	-288(%rbp), %rax	#, tmp754
	movl	$7, %edx	#,
	movq	%rcx, %rsi	# tmp753,
	movq	%rax, %rdi	# tmp754,
	call	FDot	#
	addss	-480(%rbp), %xmm0	# %sfp, D.9230
	movss	%xmm0, -480(%rbp)	# D.9230, %sfp
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.20
	leaq	-96(%rbp), %rcx	#, tmp755
	leaq	-176(%rbp), %rax	#, tmp756
	movq	%rcx, %rsi	# tmp755,
	movq	%rax, %rdi	# tmp756,
	call	FDot	#
	addss	-480(%rbp), %xmm0	# %sfp, tmp757
	movss	%xmm0, -400(%rbp)	# tmp757, new
	.loc 1 348 0 discriminator 3
	movl	-420(%rbp), %eax	# i, tmp758
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp759
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm1	# *_445, D.9230
	movss	-400(%rbp), %xmm0	# new, tmp760
	ucomiss	%xmm1, %xmm0	# D.9230, tmp760
	jbe	.L68	#,
	.loc 1 349 0
	movl	-420(%rbp), %eax	# i, tmp761
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp762
	addq	%rax, %rdx	# tmp762, D.9226
	movl	-400(%rbp), %eax	# new, tmp763
	movl	%eax, (%rdx)	# tmp763, *_449
	.loc 1 350 0
	movl	-420(%rbp), %eax	# i, tmp764
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-344(%rbp), %rax	# tbck, tmp765
	addq	%rax, %rdx	# tmp765, D.9233
	movl	-416(%rbp), %eax	# j, tmp766
	movl	%eax, (%rdx)	# tmp766, *_452
.L68:
	.loc 1 354 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.21
	movl	-416(%rbp), %eax	# j, tmp767
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9222
	movq	-360(%rbp), %rax	# matc, tmp768
	addq	%rcx, %rax	# D.9222, D.9224
	movq	(%rax), %rcx	# *_456, D.9226
	leaq	-96(%rbp), %rax	#, tmp769
	movq	%rcx, %rsi	# D.9226,
	movq	%rax, %rdi	# tmp769,
	call	FAdd	#
	.loc 1 355 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L91	#
.L93:
	.loc 1 356 0
	movq	-440(%rbp), %rax	# msa, tmp770
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp771
	movslq	%edx, %rdx	# tmp771, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_463, D.9228
	movl	-416(%rbp), %edx	# j, tmp772
	movslq	%edx, %rdx	# tmp772, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_467, D.9229
	cmpb	$32, %al	#, D.9229
	je	.L92	#,
	.loc 1 356 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp773
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp774
	movslq	%edx, %rdx	# tmp774, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_472, D.9228
	movl	-416(%rbp), %edx	# j, tmp775
	movslq	%edx, %rdx	# tmp775, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_476, D.9229
	cmpb	$46, %al	#, D.9229
	je	.L92	#,
	movq	-440(%rbp), %rax	# msa, tmp776
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp777
	movslq	%edx, %rdx	# tmp777, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_481, D.9228
	movl	-416(%rbp), %edx	# j, tmp778
	movslq	%edx, %rdx	# tmp778, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_485, D.9229
	cmpb	$95, %al	#, D.9229
	je	.L92	#,
	movq	-440(%rbp), %rax	# msa, tmp779
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp780
	movslq	%edx, %rdx	# tmp780, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_490, D.9228
	movl	-416(%rbp), %edx	# j, tmp781
	movslq	%edx, %rdx	# tmp781, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_494, D.9229
	cmpb	$45, %al	#, D.9229
	je	.L92	#,
	movq	-440(%rbp), %rax	# msa, tmp782
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp783
	movslq	%edx, %rdx	# tmp783, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_499, D.9228
	movl	-416(%rbp), %edx	# j, tmp784
	movslq	%edx, %rdx	# tmp784, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_503, D.9229
	cmpb	$126, %al	#, D.9229
	je	.L92	#,
	movl	-424(%rbp), %eax	# idx, tmp785
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-328(%rbp), %rax	# insopt, tmp786
	addq	%rdx, %rax	# D.9222, D.9233
	movl	(%rax), %edx	# *_507, D.9221
	addl	$1, %edx	#, D.9221
	movl	%edx, (%rax)	# D.9221, *_507
.L92:
	.loc 1 355 0 is_stmt 1
	addl	$1, -424(%rbp)	#, idx
.L91:
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp787
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L93	#,
	.loc 1 325 0 is_stmt 1
	addl	$1, -416(%rbp)	#, j
.L65:
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	-416(%rbp), %eax	# j, tmp788
	cmpl	-404(%rbp), %eax	# last, tmp788
	jle	.L94	#,
.L67:
	.loc 1 360 0 is_stmt 1
	movl	-420(%rbp), %eax	# i, tmp789
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp790
	leaq	(%rdx,%rax), %rbx	#, D.9226
	movl	-420(%rbp), %eax	# i, tmp791
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp792
	addq	%rdx, %rax	# D.9222, D.9226
	movss	(%rax), %xmm4	# *_517, D.9230
	movss	%xmm4, -480(%rbp)	# D.9230, %sfp
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.22
	movl	-420(%rbp), %eax	# i, tmp793
	cltq
	leaq	0(,%rax,8), %rcx	#, D.9222
	movq	-360(%rbp), %rax	# matc, tmp794
	addq	%rcx, %rax	# D.9222, D.9224
	movq	(%rax), %rcx	# *_522, D.9226
	leaq	-256(%rbp), %rax	#, tmp795
	movq	%rcx, %rsi	# D.9226,
	movq	%rax, %rdi	# tmp795,
	call	FDot	#
	movss	-476(%rbp), %xmm1	# mpri, tmp796
	mulss	-388(%rbp), %xmm1	# wgtsum, D.9230
	addss	%xmm1, %xmm0	# D.9230, D.9230
	addss	-480(%rbp), %xmm0	# %sfp, D.9230
	movss	%xmm0, (%rbx)	# D.9230, *_514
	.loc 1 313 0
	subl	$1, -420(%rbp)	#, i
.L57:
	.loc 1 313 0 is_stmt 0 discriminator 1
	cmpl	$0, -420(%rbp)	#, i
	jg	.L95	#,
	.loc 1 367 0 is_stmt 1
	movl	.LC6(%rip), %eax	#, tmp797
	movl	%eax, -396(%rbp)	# tmp797, bestsc
	.loc 1 368 0
	movl	$0, -408(%rbp)	#, first
	.loc 1 369 0
	movl	$1, -420(%rbp)	#, i
	jmp	.L96	#
.L104:
	.loc 1 370 0
	movl	-420(%rbp), %eax	# i, tmp798
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-352(%rbp), %rax	# sc, tmp799
	addq	%rdx, %rax	# D.9222, D.9226
	movl	(%rax), %eax	# *_534, tmp800
	movl	%eax, -400(%rbp)	# tmp800, new
	.loc 1 371 0
	movl	$0, -424(%rbp)	#, idx
	jmp	.L97	#
.L101:
	.loc 1 372 0
	movq	-440(%rbp), %rax	# msa, tmp801
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp802
	movslq	%edx, %rdx	# tmp802, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_541, D.9228
	movl	-420(%rbp), %edx	# i, tmp803
	movslq	%edx, %rdx	# tmp803, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_545, D.9229
	cmpb	$32, %al	#, D.9229
	je	.L98	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp804
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp805
	movslq	%edx, %rdx	# tmp805, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_550, D.9228
	movl	-420(%rbp), %edx	# i, tmp806
	movslq	%edx, %rdx	# tmp806, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_554, D.9229
	cmpb	$46, %al	#, D.9229
	je	.L98	#,
	movq	-440(%rbp), %rax	# msa, tmp807
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp808
	movslq	%edx, %rdx	# tmp808, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_559, D.9228
	movl	-420(%rbp), %edx	# i, tmp809
	movslq	%edx, %rdx	# tmp809, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_563, D.9229
	cmpb	$95, %al	#, D.9229
	je	.L98	#,
	movq	-440(%rbp), %rax	# msa, tmp810
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp811
	movslq	%edx, %rdx	# tmp811, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_568, D.9228
	movl	-420(%rbp), %edx	# i, tmp812
	movslq	%edx, %rdx	# tmp812, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_572, D.9229
	cmpb	$45, %al	#, D.9229
	je	.L98	#,
	movq	-440(%rbp), %rax	# msa, tmp813
	movq	(%rax), %rax	# msa_39(D)->aseq, D.9227
	movl	-424(%rbp), %edx	# idx, tmp814
	movslq	%edx, %rdx	# tmp814, D.9222
	salq	$3, %rdx	#, D.9222
	addq	%rdx, %rax	# D.9222, D.9227
	movq	(%rax), %rax	# *_577, D.9228
	movl	-420(%rbp), %edx	# i, tmp815
	movslq	%edx, %rdx	# tmp815, D.9223
	subq	$1, %rdx	#, D.9223
	addq	%rdx, %rax	# D.9223, D.9228
	movzbl	(%rax), %eax	# *_581, D.9229
	cmpb	$126, %al	#, D.9229
	jne	.L99	#,
.L98:
	.loc 1 373 0 is_stmt 1
	movss	-400(%rbp), %xmm0	# new, tmp817
	addss	-372(%rbp), %xmm0	# bm2, tmp816
	movss	%xmm0, -400(%rbp)	# tmp816, new
	jmp	.L100	#
.L99:
	.loc 1 375 0
	movss	-400(%rbp), %xmm0	# new, tmp819
	addss	-376(%rbp), %xmm0	# bm1, tmp818
	movss	%xmm0, -400(%rbp)	# tmp818, new
.L100:
	.loc 1 371 0
	addl	$1, -424(%rbp)	#, idx
.L97:
	.loc 1 371 0 is_stmt 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp820
	movl	28(%rax), %eax	# msa_39(D)->nseq, D.9221
	cmpl	-424(%rbp), %eax	# idx, D.9221
	jg	.L101	#,
	.loc 1 377 0 is_stmt 1
	movss	-400(%rbp), %xmm0	# new, tmp821
	ucomiss	-396(%rbp), %xmm0	# bestsc, tmp821
	jbe	.L102	#,
	.loc 1 378 0
	movl	-400(%rbp), %eax	# new, tmp822
	movl	%eax, -396(%rbp)	# tmp822, bestsc
	.loc 1 379 0
	movl	-420(%rbp), %eax	# i, tmp823
	movl	%eax, -408(%rbp)	# tmp823, first
.L102:
	.loc 1 369 0
	addl	$1, -420(%rbp)	#, i
.L96:
	.loc 1 369 0 is_stmt 0 discriminator 1
	movl	-420(%rbp), %eax	# i, tmp824
	cmpl	-404(%rbp), %eax	# last, tmp824
	jle	.L104	#,
	.loc 1 385 0 is_stmt 1
	movq	-336(%rbp), %rax	# matassign, tmp825
	movl	$0, (%rax)	#, *matassign_59
	.loc 1 386 0
	movl	$1, -420(%rbp)	#, i
	jmp	.L105	#
.L106:
	.loc 1 386 0 is_stmt 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp826
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-336(%rbp), %rax	# matassign, tmp827
	addq	%rdx, %rax	# D.9222, D.9233
	movl	$8, (%rax)	#, *_593
	addl	$1, -420(%rbp)	#, i
.L105:
	.loc 1 386 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp828
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	cmpl	-420(%rbp), %eax	# i, D.9221
	jge	.L106	#,
	.loc 1 387 0 is_stmt 1
	movl	-408(%rbp), %eax	# first, tmp829
	movl	%eax, -420(%rbp)	# tmp829, i
	jmp	.L107	#
.L108:
	.loc 1 388 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp830
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-336(%rbp), %rax	# matassign, tmp831
	addq	%rdx, %rax	# D.9222, D.9233
	movl	-420(%rbp), %edx	# i, tmp832
	movslq	%edx, %rdx	# tmp832, D.9222
	leaq	0(,%rdx,4), %rcx	#, D.9222
	movq	-336(%rbp), %rdx	# matassign, tmp833
	addq	%rcx, %rdx	# D.9222, D.9233
	movl	(%rdx), %edx	# *_601, D.9221
	andl	$-9, %edx	#, D.9221
	movl	%edx, (%rax)	# D.9221, *_598
	.loc 1 389 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp834
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-336(%rbp), %rax	# matassign, tmp835
	addq	%rdx, %rax	# D.9222, D.9233
	movl	-420(%rbp), %edx	# i, tmp836
	movslq	%edx, %rdx	# tmp836, D.9222
	leaq	0(,%rdx,4), %rcx	#, D.9222
	movq	-336(%rbp), %rdx	# matassign, tmp837
	addq	%rcx, %rdx	# D.9222, D.9233
	movl	(%rdx), %edx	# *_609, D.9221
	orl	$1, %edx	#, D.9221
	movl	%edx, (%rax)	# D.9221, *_606
	.loc 1 387 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp838
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9222
	movq	-344(%rbp), %rax	# tbck, tmp839
	addq	%rdx, %rax	# D.9222, D.9233
	movl	(%rax), %eax	# *_614, tmp840
	movl	%eax, -420(%rbp)	# tmp840, i
.L107:
	.loc 1 387 0 is_stmt 0 discriminator 1
	cmpl	$0, -420(%rbp)	#, i
	jne	.L108	#,
	.loc 1 395 0 is_stmt 1
	movq	-496(%rbp), %rdi	# ret_tr, tmp841
	movq	-488(%rbp), %rcx	# ret_hmm, tmp842
	movq	-336(%rbp), %rdx	# matassign, tmp843
	movq	-448(%rbp), %rsi	# dsq, tmp844
	movq	-440(%rbp), %rax	# msa, tmp845
	movq	%rdi, %r8	# tmp841,
	movq	%rax, %rdi	# tmp845,
	call	matassign2hmm	#
	.loc 1 399 0
	movl	$1, -420(%rbp)	#, i
	jmp	.L109	#
.L110:
	.loc 1 399 0 is_stmt 0 discriminator 2
	movl	-420(%rbp), %eax	# i, tmp846
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9222
	movq	-360(%rbp), %rax	# matc, tmp847
	addq	%rdx, %rax	# D.9222, D.9224
	movq	(%rax), %rax	# *_623, D.9226
	movq	%rax, %rdi	# D.9226,
	call	free	#
	addl	$1, -420(%rbp)	#, i
.L109:
	.loc 1 399 0 discriminator 1
	movq	-440(%rbp), %rax	# msa, tmp848
	movl	24(%rax), %eax	# msa_39(D)->alen, D.9221
	cmpl	-420(%rbp), %eax	# i, D.9221
	jge	.L110	#,
	.loc 1 400 0 is_stmt 1
	movq	-360(%rbp), %rax	# matc, tmp849
	movq	%rax, %rdi	# tmp849,
	call	free	#
	.loc 1 401 0
	movq	-352(%rbp), %rax	# sc, tmp850
	movq	%rax, %rdi	# tmp850,
	call	free	#
	.loc 1 402 0
	movq	-344(%rbp), %rax	# tbck, tmp851
	movq	%rax, %rdi	# tmp851,
	call	free	#
	.loc 1 403 0
	movq	-336(%rbp), %rax	# matassign, tmp852
	movq	%rax, %rdi	# tmp852,
	call	free	#
	.loc 1 404 0
	movq	-328(%rbp), %rax	# insopt, tmp853
	movq	%rax, %rdi	# tmp853,
	call	free	#
	.loc 1 405 0
	addq	$504, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P7Maxmodelmaker, .-P7Maxmodelmaker
	.type	build_cij, @function
build_cij:
.LFB5:
	.loc 1 439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# aseqs, aseqs
	movl	%esi, -28(%rbp)	# nseq, nseq
	movq	%rdx, -40(%rbp)	# insopt, insopt
	movl	%ecx, -32(%rbp)	# i, i
	movl	%r8d, -44(%rbp)	# j, j
	movq	%r9, -56(%rbp)	# wgt, wgt
	.loc 1 442 0
	subl	$1, -32(%rbp)	#, i
	.loc 1 443 0
	subl	$1, -44(%rbp)	#, j
	.loc 1 444 0
	xorps	%xmm0, %xmm0	#
	movl	$8, %esi	#,
	movq	16(%rbp), %rdi	# cij,
	call	FSet	#
	.loc 1 445 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L140	#
.L155:
	.loc 1 446 0
	movl	-4(%rbp), %eax	# idx, tmp315
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9238
	movq	-40(%rbp), %rax	# insopt, tmp316
	addq	%rdx, %rax	# D.9238, D.9239
	movl	(%rax), %eax	# *_13, D.9237
	testl	%eax, %eax	# D.9237
	jle	.L141	#,
	.loc 1 447 0
	movl	-4(%rbp), %eax	# idx, tmp317
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp318
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_18, D.9241
	movl	-32(%rbp), %eax	# i, tmp319
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_21, D.9243
	cmpb	$32, %al	#, D.9243
	je	.L142	#,
	.loc 1 447 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp320
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp321
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_25, D.9241
	movl	-32(%rbp), %eax	# i, tmp322
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_28, D.9243
	cmpb	$46, %al	#, D.9243
	je	.L142	#,
	.loc 1 447 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp323
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp324
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_32, D.9241
	movl	-32(%rbp), %eax	# i, tmp325
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_35, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L142	#,
	movl	-4(%rbp), %eax	# idx, tmp326
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp327
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_39, D.9241
	movl	-32(%rbp), %eax	# i, tmp328
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_42, D.9243
	cmpb	$45, %al	#, D.9243
	je	.L142	#,
	movl	-4(%rbp), %eax	# idx, tmp329
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp330
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_46, D.9241
	movl	-32(%rbp), %eax	# i, tmp331
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_49, D.9243
	cmpb	$126, %al	#, D.9243
	jne	.L143	#,
.L142:
	movl	$-1, %eax	#, D.9237
	jmp	.L144	#
.L143:
	.loc 1 448 0 is_stmt 1
	movl	-4(%rbp), %eax	# idx, tmp332
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp333
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_53, D.9241
	movl	-44(%rbp), %eax	# j, tmp334
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_56, D.9243
	cmpb	$32, %al	#, D.9243
	je	.L145	#,
	.loc 1 448 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp335
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp336
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_60, D.9241
	movl	-44(%rbp), %eax	# j, tmp337
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_63, D.9243
	cmpb	$46, %al	#, D.9243
	je	.L145	#,
	.loc 1 448 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp338
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp339
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_67, D.9241
	movl	-44(%rbp), %eax	# j, tmp340
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_70, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L145	#,
	movl	-4(%rbp), %eax	# idx, tmp341
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp342
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_74, D.9241
	movl	-44(%rbp), %eax	# j, tmp343
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_77, D.9243
	cmpb	$45, %al	#, D.9243
	je	.L145	#,
	movl	-4(%rbp), %eax	# idx, tmp344
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp345
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_81, D.9241
	movl	-44(%rbp), %eax	# j, tmp346
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_84, D.9243
	cmpb	$126, %al	#, D.9243
	jne	.L146	#,
.L145:
	movl	$0, %eax	#, D.9237
	jmp	.L144	#
.L146:
	.loc 1 449 0 is_stmt 1
	movq	16(%rbp), %rax	# cij, tmp347
	addq	$4, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp348
	addq	$4, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_87, D.9245
	movl	-4(%rbp), %edx	# idx, tmp349
	movslq	%edx, %rdx	# tmp349, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp350
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm0	# *_92, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_86
	.loc 1 450 0
	movq	16(%rbp), %rax	# cij, tmp351
	addq	$16, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp352
	addq	$16, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_96, D.9245
	movl	-4(%rbp), %edx	# idx, tmp353
	movslq	%edx, %rdx	# tmp353, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-40(%rbp), %rdx	# insopt, tmp354
	addq	%rcx, %rdx	# D.9238, D.9239
	movl	(%rdx), %edx	# *_100, D.9237
	subl	$1, %edx	#, D.9237
	cvtsi2ss	%edx, %xmm0	# D.9237, D.9245
	movl	-4(%rbp), %edx	# idx, tmp355
	movslq	%edx, %rdx	# tmp355, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp356
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm2	# *_106, D.9245
	mulss	%xmm2, %xmm0	# D.9245, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_95
	.loc 1 451 0
	movq	16(%rbp), %rax	# cij, tmp357
	addq	$12, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp358
	addq	$12, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_111, D.9245
	movl	-4(%rbp), %edx	# idx, tmp359
	movslq	%edx, %rdx	# tmp359, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp360
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm0	# *_115, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_110
	jmp	.L147	#
.L141:
	.loc 1 453 0
	movl	-4(%rbp), %eax	# idx, tmp361
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp362
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_122, D.9241
	movl	-32(%rbp), %eax	# i, tmp363
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_125, D.9243
	cmpb	$32, %al	#, D.9243
	je	.L148	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp364
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp365
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_129, D.9241
	movl	-32(%rbp), %eax	# i, tmp366
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_132, D.9243
	cmpb	$46, %al	#, D.9243
	je	.L148	#,
	movl	-4(%rbp), %eax	# idx, tmp367
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp368
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_136, D.9241
	movl	-32(%rbp), %eax	# i, tmp369
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_139, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L148	#,
	movl	-4(%rbp), %eax	# idx, tmp370
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp371
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_143, D.9241
	movl	-32(%rbp), %eax	# i, tmp372
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_146, D.9243
	cmpb	$45, %al	#, D.9243
	je	.L148	#,
	movl	-4(%rbp), %eax	# idx, tmp373
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp374
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_150, D.9241
	movl	-32(%rbp), %eax	# i, tmp375
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_153, D.9243
	cmpb	$126, %al	#, D.9243
	je	.L148	#,
	.loc 1 454 0 is_stmt 1
	movl	-4(%rbp), %eax	# idx, tmp376
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp377
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_157, D.9241
	movl	-44(%rbp), %eax	# j, tmp378
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_160, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L149	#,
	.loc 1 455 0
	movl	-4(%rbp), %eax	# idx, tmp379
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp380
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_164, D.9241
	movl	-44(%rbp), %eax	# j, tmp381
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_167, D.9243
	cmpb	$32, %al	#, D.9243
	je	.L150	#,
	.loc 1 455 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp382
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp383
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_171, D.9241
	movl	-44(%rbp), %eax	# j, tmp384
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_174, D.9243
	cmpb	$46, %al	#, D.9243
	je	.L150	#,
	.loc 1 455 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp385
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp386
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_178, D.9241
	movl	-44(%rbp), %eax	# j, tmp387
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_181, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L150	#,
	movl	-4(%rbp), %eax	# idx, tmp388
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp389
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_185, D.9241
	movl	-44(%rbp), %eax	# j, tmp390
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_188, D.9243
	cmpb	$45, %al	#, D.9243
	je	.L150	#,
	movl	-4(%rbp), %eax	# idx, tmp391
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp392
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_192, D.9241
	movl	-44(%rbp), %eax	# j, tmp393
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_195, D.9243
	cmpb	$126, %al	#, D.9243
	jne	.L151	#,
.L150:
	movq	16(%rbp), %rax	# cij, tmp394
	addq	$8, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp395
	addq	$8, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_204, D.9245
	movl	-4(%rbp), %edx	# idx, tmp396
	movslq	%edx, %rdx	# tmp396, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp397
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm0	# *_208, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_203
	jmp	.L149	#
.L151:
	.loc 1 456 0 is_stmt 1
	movq	16(%rbp), %rax	# cij, tmp398
	movss	(%rax), %xmm1	# *cij_7(D), D.9245
	movl	-4(%rbp), %eax	# idx, tmp399
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9238
	movq	-56(%rbp), %rax	# wgt, tmp400
	addq	%rdx, %rax	# D.9238, D.9244
	movss	(%rax), %xmm0	# *_200, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movq	16(%rbp), %rax	# cij, tmp401
	movss	%xmm0, (%rax)	# D.9245, *cij_7(D)
	.loc 1 454 0
	jmp	.L147	#
.L149:
	jmp	.L147	#
.L148:
	.loc 1 458 0
	movl	-4(%rbp), %eax	# idx, tmp402
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp403
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_213, D.9241
	movl	-44(%rbp), %eax	# j, tmp404
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_216, D.9243
	cmpb	$95, %al	#, D.9243
	jne	.L152	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	jmp	.L147	#
.L152:
	.loc 1 459 0 is_stmt 1
	movl	-4(%rbp), %eax	# idx, tmp405
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp406
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_220, D.9241
	movl	-44(%rbp), %eax	# j, tmp407
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_223, D.9243
	cmpb	$32, %al	#, D.9243
	je	.L153	#,
	.loc 1 459 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp408
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp409
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_227, D.9241
	movl	-44(%rbp), %eax	# j, tmp410
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_230, D.9243
	cmpb	$46, %al	#, D.9243
	je	.L153	#,
	.loc 1 459 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp411
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp412
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_234, D.9241
	movl	-44(%rbp), %eax	# j, tmp413
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_237, D.9243
	cmpb	$95, %al	#, D.9243
	je	.L153	#,
	movl	-4(%rbp), %eax	# idx, tmp414
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp415
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_241, D.9241
	movl	-44(%rbp), %eax	# j, tmp416
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_244, D.9243
	cmpb	$45, %al	#, D.9243
	je	.L153	#,
	movl	-4(%rbp), %eax	# idx, tmp417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9238
	movq	-24(%rbp), %rax	# aseqs, tmp418
	addq	%rdx, %rax	# D.9238, D.9240
	movq	(%rax), %rdx	# *_248, D.9241
	movl	-44(%rbp), %eax	# j, tmp419
	cltq
	addq	%rdx, %rax	# D.9241, D.9241
	movzbl	(%rax), %eax	# *_251, D.9243
	cmpb	$126, %al	#, D.9243
	jne	.L154	#,
.L153:
	movq	16(%rbp), %rax	# cij, tmp420
	addq	$24, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp421
	addq	$24, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_262, D.9245
	movl	-4(%rbp), %edx	# idx, tmp422
	movslq	%edx, %rdx	# tmp422, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp423
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm0	# *_266, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_261
	jmp	.L147	#
.L154:
	.loc 1 460 0 is_stmt 1
	movq	16(%rbp), %rax	# cij, tmp424
	addq	$20, %rax	#, D.9244
	movq	16(%rbp), %rdx	# cij, tmp425
	addq	$20, %rdx	#, D.9244
	movss	(%rdx), %xmm1	# *_254, D.9245
	movl	-4(%rbp), %edx	# idx, tmp426
	movslq	%edx, %rdx	# tmp426, D.9238
	leaq	0(,%rdx,4), %rcx	#, D.9238
	movq	-56(%rbp), %rdx	# wgt, tmp427
	addq	%rcx, %rdx	# D.9238, D.9244
	movss	(%rdx), %xmm0	# *_258, D.9245
	addss	%xmm1, %xmm0	# D.9245, D.9245
	movss	%xmm0, (%rax)	# D.9245, *_253
.L147:
	.loc 1 445 0
	addl	$1, -4(%rbp)	#, idx
.L140:
	.loc 1 445 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp428
	cmpl	-28(%rbp), %eax	# nseq, tmp428
	jl	.L155	#,
	.loc 1 464 0 is_stmt 1
	movl	$1, %eax	#, D.9237
.L144:
	.loc 1 465 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	build_cij, .-build_cij
	.type	estimate_model_length, @function
estimate_model_length:
.LFB6:
	.loc 1 479 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	.loc 1 481 0
	movl	.LC2(%rip), %eax	#, tmp81
	movl	%eax, -8(%rbp)	# tmp81, total
	.loc 1 482 0
	movl	.LC2(%rip), %eax	#, tmp82
	movl	%eax, -4(%rbp)	# tmp82, wgtsum
	.loc 1 484 0
	movl	$0, -12(%rbp)	#, idx
	jmp	.L157	#
.L158:
	.loc 1 486 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp83
	movq	16(%rax), %rax	# msa_7(D)->wgt, D.9247
	movl	-12(%rbp), %edx	# idx, tmp84
	movslq	%edx, %rdx	# tmp84, D.9248
	salq	$2, %rdx	#, D.9248
	addq	%rdx, %rax	# D.9248, D.9247
	movss	(%rax), %xmm2	# *_12, D.9249
	movss	%xmm2, -28(%rbp)	# D.9249, %sfp
	movq	-24(%rbp), %rax	# msa, tmp85
	movq	(%rax), %rax	# msa_7(D)->aseq, D.9250
	movl	-12(%rbp), %edx	# idx, tmp86
	movslq	%edx, %rdx	# tmp86, D.9248
	salq	$3, %rdx	#, D.9248
	addq	%rdx, %rax	# D.9248, D.9250
	movq	(%rax), %rax	# *_17, D.9251
	movq	%rax, %rdi	# D.9251,
	call	DealignedLength	#
	cvtsi2ss	%eax, %xmm0	# D.9246, D.9249
	mulss	-28(%rbp), %xmm0	# %sfp, D.9249
	movss	-8(%rbp), %xmm1	# total, tmp88
	addss	%xmm1, %xmm0	# tmp88, tmp87
	movss	%xmm0, -8(%rbp)	# tmp87, total
	.loc 1 487 0 discriminator 2
	movq	-24(%rbp), %rax	# msa, tmp89
	movq	16(%rax), %rax	# msa_7(D)->wgt, D.9247
	movl	-12(%rbp), %edx	# idx, tmp90
	movslq	%edx, %rdx	# tmp90, D.9248
	salq	$2, %rdx	#, D.9248
	addq	%rdx, %rax	# D.9248, D.9247
	movss	(%rax), %xmm0	# *_26, D.9249
	movss	-4(%rbp), %xmm1	# wgtsum, tmp92
	addss	%xmm1, %xmm0	# tmp92, tmp91
	movss	%xmm0, -4(%rbp)	# tmp91, wgtsum
	.loc 1 484 0 discriminator 2
	addl	$1, -12(%rbp)	#, idx
.L157:
	.loc 1 484 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# msa, tmp93
	movl	28(%rax), %eax	# msa_7(D)->nseq, D.9246
	cmpl	-12(%rbp), %eax	# idx, D.9246
	jg	.L158	#,
	.loc 1 490 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# total, tmp94
	divss	-4(%rbp), %xmm0	# wgtsum, D.9249
	cvttss2si	%xmm0, %eax	# D.9249, D.9246
	.loc 1 491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	estimate_model_length, .-estimate_model_length
	.section	.rodata
	.align 8
.LC7:
	.ascii	"No conserved consensus columns found; abortin"
	.string	"g construction!\nThis is an unusual situation. Reexamine your sequence alignment. It is\nprobably unusually full of gaps, or lots of sequence fragments. You may be\nable to force HMMER to model it; see the --fast (and --gapmax), or --hand\noptions to hmmbuild."
	.text
	.type	matassign2hmm, @function
matassign2hmm:
.LFB7:
	.loc 1 514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# dsq, dsq
	movq	%rdx, -56(%rbp)	# matassign, matassign
	movq	%rcx, -64(%rbp)	# ret_hmm, ret_hmm
	movq	%r8, -72(%rbp)	# ret_tr, ret_tr
	.loc 1 522 0
	movl	$0, -28(%rbp)	#, M
	.loc 1 523 0
	movl	$1, -20(%rbp)	#, apos
	jmp	.L161	#
.L163:
	.loc 1 524 0
	movl	-20(%rbp), %eax	# apos, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp157
	addq	%rdx, %rax	# D.9253, D.9254
	movl	(%rax), %eax	# *_17, D.9252
	andl	$1, %eax	#, D.9252
	testl	%eax, %eax	# D.9252
	je	.L162	#,
	.loc 1 525 0
	addl	$1, -28(%rbp)	#, M
.L162:
	.loc 1 523 0
	addl	$1, -20(%rbp)	#, apos
.L161:
	.loc 1 523 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp158
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	cmpl	-20(%rbp), %eax	# apos, D.9252
	jge	.L163	#,
	.loc 1 528 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, M
	jne	.L164	#,
	.loc 1 529 0
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L164:
	.loc 1 536 0
	movl	$1, -20(%rbp)	#, apos
	jmp	.L165	#
.L167:
	.loc 1 537 0 discriminator 1
	movl	-20(%rbp), %eax	# apos, tmp159
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp160
	addq	%rdx, %rax	# D.9253, D.9254
	movl	-20(%rbp), %edx	# apos, tmp161
	movslq	%edx, %rdx	# tmp161, D.9253
	leaq	0(,%rdx,4), %rcx	#, D.9253
	movq	-56(%rbp), %rdx	# matassign, tmp162
	addq	%rcx, %rdx	# D.9253, D.9254
	movl	(%rdx), %edx	# *_34, D.9252
	orl	$16, %edx	#, D.9252
	movl	%edx, (%rax)	# D.9252, *_31
	.loc 1 536 0 discriminator 1
	addl	$1, -20(%rbp)	#, apos
.L165:
	movl	-20(%rbp), %eax	# apos, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp164
	addq	%rdx, %rax	# D.9253, D.9254
	movl	(%rax), %eax	# *_25, D.9252
	andl	$8, %eax	#, D.9252
	testl	%eax, %eax	# D.9252
	je	.L166	#,
	.loc 1 536 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp165
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	cmpl	-20(%rbp), %eax	# apos, D.9252
	jge	.L167	#,
.L166:
	.loc 1 538 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp166
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	cmpl	-20(%rbp), %eax	# apos, D.9252
	jl	.L168	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# apos, tmp167
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp168
	addq	%rdx, %rax	# D.9253, D.9254
	movl	-20(%rbp), %edx	# apos, tmp169
	movslq	%edx, %rdx	# tmp169, D.9253
	leaq	0(,%rdx,4), %rcx	#, D.9253
	movq	-56(%rbp), %rdx	# matassign, tmp170
	addq	%rcx, %rdx	# D.9253, D.9254
	movl	(%rdx), %edx	# *_44, D.9252
	orl	$2, %edx	#, D.9252
	movl	%edx, (%rax)	# D.9252, *_41
.L168:
	.loc 1 541 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp171
	movl	24(%rax), %eax	# msa_12(D)->alen, tmp172
	movl	%eax, -20(%rbp)	# tmp172, apos
	jmp	.L169	#
.L171:
	.loc 1 542 0 discriminator 1
	movl	-20(%rbp), %eax	# apos, tmp173
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp174
	addq	%rdx, %rax	# D.9253, D.9254
	movl	-20(%rbp), %edx	# apos, tmp175
	movslq	%edx, %rdx	# tmp175, D.9253
	leaq	0(,%rdx,4), %rcx	#, D.9253
	movq	-56(%rbp), %rdx	# matassign, tmp176
	addq	%rcx, %rdx	# D.9253, D.9254
	movl	(%rdx), %edx	# *_58, D.9252
	orl	$32, %edx	#, D.9252
	movl	%edx, (%rax)	# D.9252, *_55
	.loc 1 541 0 discriminator 1
	subl	$1, -20(%rbp)	#, apos
.L169:
	movl	-20(%rbp), %eax	# apos, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp178
	addq	%rdx, %rax	# D.9253, D.9254
	movl	(%rax), %eax	# *_50, D.9252
	andl	$8, %eax	#, D.9252
	testl	%eax, %eax	# D.9252
	je	.L170	#,
	.loc 1 541 0 is_stmt 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, apos
	jg	.L171	#,
.L170:
	.loc 1 543 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, apos
	jle	.L172	#,
	.loc 1 543 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# apos, tmp179
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9253
	movq	-56(%rbp), %rax	# matassign, tmp180
	addq	%rdx, %rax	# D.9253, D.9254
	movl	-20(%rbp), %edx	# apos, tmp181
	movslq	%edx, %rdx	# tmp181, D.9253
	leaq	0(,%rdx,4), %rcx	#, D.9253
	movq	-56(%rbp), %rdx	# matassign, tmp182
	addq	%rcx, %rdx	# D.9253, D.9254
	movl	(%rdx), %edx	# *_67, D.9252
	orl	$4, %edx	#, D.9252
	movl	%edx, (%rax)	# D.9252, *_64
.L172:
	.loc 1 548 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp183
	movl	24(%rax), %edx	# msa_12(D)->alen, D.9252
	movq	-40(%rbp), %rax	# msa, tmp184
	movl	28(%rax), %esi	# msa_12(D)->nseq, D.9252
	movq	-40(%rbp), %rax	# msa, tmp185
	movq	(%rax), %rax	# msa_12(D)->aseq, D.9255
	leaq	-16(%rbp), %rdi	#, tmp186
	movq	-56(%rbp), %rcx	# matassign, tmp187
	movq	%rdi, %r8	# tmp186,
	movq	%rax, %rdi	# D.9255,
	call	fake_tracebacks	#
	.loc 1 550 0
	movl	-28(%rbp), %eax	# M, tmp188
	movl	%eax, %edi	# tmp188,
	call	AllocPlan7	#
	movq	%rax, -8(%rbp)	# tmp189, hmm
	.loc 1 551 0
	movq	-8(%rbp), %rax	# hmm, tmp190
	movq	%rax, %rdi	# tmp190,
	call	ZeroPlan7	#
	.loc 1 552 0
	movl	$0, -24(%rbp)	#, idx
	jmp	.L173	#
.L174:
	.loc 1 554 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.23
	movl	-24(%rbp), %edx	# idx, tmp191
	movslq	%edx, %rdx	# tmp191, D.9253
	salq	$3, %rdx	#, D.9253
	addq	%rdx, %rax	# D.9253, D.9256
	movq	(%rax), %rdx	# *_79, D.9257
	movq	-40(%rbp), %rax	# msa, tmp192
	movq	16(%rax), %rax	# msa_12(D)->wgt, D.9258
	movl	-24(%rbp), %ecx	# idx, tmp193
	movslq	%ecx, %rcx	# tmp193, D.9253
	salq	$2, %rcx	#, D.9253
	addq	%rcx, %rax	# D.9253, D.9258
	movl	(%rax), %eax	# *_84, D.9259
	movl	-24(%rbp), %ecx	# idx, tmp194
	movslq	%ecx, %rcx	# tmp194, D.9253
	leaq	0(,%rcx,8), %rsi	#, D.9253
	movq	-48(%rbp), %rcx	# dsq, tmp195
	addq	%rsi, %rcx	# D.9253, D.9255
	movq	(%rcx), %rsi	# *_89, D.9260
	movq	-8(%rbp), %rcx	# hmm, tmp196
	movl	%eax, -76(%rbp)	# D.9259, %sfp
	movss	-76(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp196,
	call	P7TraceCount	#
	.loc 1 552 0 discriminator 2
	addl	$1, -24(%rbp)	#, idx
.L173:
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp197
	movl	28(%rax), %eax	# msa_12(D)->nseq, D.9252
	cmpl	-24(%rbp), %eax	# idx, D.9252
	jg	.L174	#,
	.loc 1 557 0 is_stmt 1
	movq	-40(%rbp), %rdx	# msa, tmp198
	movq	-56(%rbp), %rcx	# matassign, tmp199
	movq	-8(%rbp), %rax	# hmm, tmp200
	movq	%rcx, %rsi	# tmp199,
	movq	%rax, %rdi	# tmp200,
	call	annotate_model	#
	.loc 1 563 0
	movq	-40(%rbp), %rax	# msa, tmp201
	movq	88(%rax), %rax	# msa_12(D)->rf, D.9260
	testq	%rax, %rax	# D.9260
	je	.L175	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp202
	movq	88(%rax), %rax	# msa_12(D)->rf, D.9260
	movq	%rax, %rdi	# D.9260,
	call	free	#
.L175:
	.loc 1 564 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp203
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	addl	$1, %eax	#, D.9252
	cltq
	movq	%rax, %rdx	# D.9253,
	movl	$564, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	-40(%rbp), %rdx	# msa, tmp204
	movq	%rax, 88(%rdx)	# D.9261, msa_12(D)->rf
	.loc 1 565 0
	movl	$0, -20(%rbp)	#, apos
	jmp	.L176	#
.L179:
	.loc 1 566 0
	movq	-40(%rbp), %rax	# msa, tmp205
	movq	88(%rax), %rdx	# msa_12(D)->rf, D.9260
	movl	-20(%rbp), %eax	# apos, tmp206
	cltq
	addq	%rax, %rdx	# D.9262, D.9260
	movl	-20(%rbp), %eax	# apos, tmp207
	cltq
	addq	$1, %rax	#, D.9262
	leaq	0(,%rax,4), %rcx	#, D.9262
	movq	-56(%rbp), %rax	# matassign, tmp208
	addq	%rcx, %rax	# D.9262, D.9254
	movl	(%rax), %eax	# *_106, D.9252
	andl	$1, %eax	#, D.9252
	testl	%eax, %eax	# D.9252
	je	.L177	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	movl	$120, %eax	#, iftmp.24
	jmp	.L178	#
.L177:
	.loc 1 566 0 discriminator 2
	movl	$46, %eax	#, iftmp.24
.L178:
	.loc 1 566 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.24, *_102
	.loc 1 565 0 is_stmt 1 discriminator 3
	addl	$1, -20(%rbp)	#, apos
.L176:
	.loc 1 565 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp209
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	cmpl	-20(%rbp), %eax	# apos, D.9252
	jg	.L179	#,
	.loc 1 567 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp210
	movq	88(%rax), %rdx	# msa_12(D)->rf, D.9260
	movq	-40(%rbp), %rax	# msa, tmp211
	movl	24(%rax), %eax	# msa_12(D)->alen, D.9252
	cltq
	addq	%rdx, %rax	# D.9260, D.9260
	movb	$0, (%rax)	#, *_115
	.loc 1 570 0
	cmpq	$0, -72(%rbp)	#, ret_tr
	je	.L180	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# tr, tr.25
	movq	-72(%rbp), %rax	# ret_tr, tmp212
	movq	%rdx, (%rax)	# tr.25, *ret_tr_116(D)
	jmp	.L181	#
.L180:
	.loc 1 571 0 is_stmt 1
	movl	$0, -24(%rbp)	#, idx
	jmp	.L182	#
.L183:
	.loc 1 571 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.26
	movl	-24(%rbp), %edx	# idx, tmp213
	movslq	%edx, %rdx	# tmp213, D.9253
	salq	$3, %rdx	#, D.9253
	addq	%rdx, %rax	# D.9253, D.9256
	movq	(%rax), %rax	# *_123, D.9257
	movq	%rax, %rdi	# D.9257,
	call	P7FreeTrace	#
	addl	$1, -24(%rbp)	#, idx
.L182:
	.loc 1 571 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp214
	movl	28(%rax), %eax	# msa_12(D)->nseq, D.9252
	cmpl	-24(%rbp), %eax	# idx, D.9252
	jg	.L183	#,
	.loc 1 571 0 discriminator 3
	movq	-16(%rbp), %rax	# tr, tr.27
	movq	%rax, %rdi	# tr.27,
	call	free	#
.L181:
	.loc 1 572 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, ret_hmm
	je	.L184	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp215
	movq	-8(%rbp), %rdx	# hmm, tmp216
	movq	%rdx, (%rax)	# tmp216, *ret_hmm_127(D)
	jmp	.L185	#
.L184:
	.loc 1 572 0 discriminator 2
	movq	-8(%rbp), %rax	# hmm, tmp217
	movq	%rax, %rdi	# tmp217,
	call	FreePlan7	#
.L185:
	.loc 1 573 0 is_stmt 1
	nop
	.loc 1 574 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	matassign2hmm, .-matassign2hmm
	.type	fake_tracebacks, @function
fake_tracebacks:
.LFB8:
	.loc 1 599 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# nseq, nseq
	movl	%edx, -48(%rbp)	# alen, alen
	movq	%rcx, -56(%rbp)	# matassign, matassign
	movq	%r8, -64(%rbp)	# ret_tr, ret_tr
	.loc 1 607 0
	movl	-44(%rbp), %eax	# nseq, tmp514
	cltq
	salq	$3, %rax	#, D.9264
	movq	%rax, %rdx	# D.9264,
	movl	$607, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp515, tr
	.loc 1 609 0
	movl	$0, -28(%rbp)	#, idx
	jmp	.L188	#
.L201:
	.loc 1 611 0
	movl	-28(%rbp), %eax	# idx, tmp516
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp517
	addq	%rax, %rdx	# tmp517, D.9265
	movl	-48(%rbp), %eax	# alen, tmp518
	addl	$6, %eax	#, D.9266
	movq	%rdx, %rsi	# D.9265,
	movl	%eax, %edi	# D.9266,
	call	P7AllocTrace	#
	.loc 1 614 0
	movl	-28(%rbp), %eax	# idx, tmp519
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp520
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_25, D.9267
	movq	8(%rax), %rax	# _26->statetype, D.9268
	movb	$4, (%rax)	#, *_27
	.loc 1 615 0
	movl	-28(%rbp), %eax	# idx, tmp521
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp522
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_30, D.9267
	movq	16(%rax), %rax	# _31->nodeidx, D.9269
	movl	$0, (%rax)	#, *_32
	.loc 1 616 0
	movl	-28(%rbp), %eax	# idx, tmp523
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp524
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_35, D.9267
	movq	24(%rax), %rax	# _36->pos, D.9269
	movl	$0, (%rax)	#, *_37
	.loc 1 619 0
	movl	-28(%rbp), %eax	# idx, tmp525
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp526
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_40, D.9267
	movq	8(%rax), %rax	# _41->statetype, D.9268
	addq	$1, %rax	#, D.9268
	movb	$5, (%rax)	#, *_43
	.loc 1 620 0
	movl	-28(%rbp), %eax	# idx, tmp527
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp528
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_46, D.9267
	movq	16(%rax), %rax	# _47->nodeidx, D.9269
	addq	$4, %rax	#, D.9269
	movl	$0, (%rax)	#, *_49
	.loc 1 621 0
	movl	-28(%rbp), %eax	# idx, tmp529
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp530
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_52, D.9267
	movq	24(%rax), %rax	# _53->pos, D.9269
	addq	$4, %rax	#, D.9269
	movl	$0, (%rax)	#, *_55
	.loc 1 623 0
	movl	$1, -24(%rbp)	#, i
	.loc 1 624 0
	movl	$0, -20(%rbp)	#, k
	.loc 1 625 0
	movl	$2, -12(%rbp)	#, tpos
	.loc 1 626 0
	movl	$0, -16(%rbp)	#, apos
	jmp	.L189	#
.L200:
	.loc 1 628 0
	movl	-28(%rbp), %eax	# idx, tmp531
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp532
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_62, D.9267
	movq	8(%rax), %rdx	# _63->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp533
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$0, (%rax)	#, *_66
	.loc 1 630 0
	movl	-16(%rbp), %eax	# apos, tmp534
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp535
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_71, D.9266
	andl	$2, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L190	#,
	.loc 1 632 0
	movl	-28(%rbp), %eax	# idx, tmp536
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp537
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_76, D.9267
	movq	8(%rax), %rdx	# _77->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp538
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$6, (%rax)	#, *_80
	.loc 1 633 0
	movl	-28(%rbp), %eax	# idx, tmp539
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp540
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_83, D.9267
	movq	16(%rax), %rax	# _84->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp541
	movslq	%edx, %rdx	# tmp541, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_88
	.loc 1 634 0
	movl	-28(%rbp), %eax	# idx, tmp542
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp543
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_91, D.9267
	movq	24(%rax), %rax	# _92->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp544
	movslq	%edx, %rdx	# tmp544, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_96
	.loc 1 635 0
	addl	$1, -12(%rbp)	#, tpos
.L190:
	.loc 1 638 0
	movl	-16(%rbp), %eax	# apos, tmp545
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp546
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_101, D.9266
	andl	$1, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L191	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp547
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp548
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_107, D.9268
	movl	-16(%rbp), %eax	# apos, tmp549
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_110, D.9272
	cmpb	$32, %al	#, D.9272
	je	.L191	#,
	movl	-28(%rbp), %eax	# idx, tmp550
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp551
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_114, D.9268
	movl	-16(%rbp), %eax	# apos, tmp552
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_117, D.9272
	cmpb	$46, %al	#, D.9272
	je	.L191	#,
	movl	-28(%rbp), %eax	# idx, tmp553
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp554
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_121, D.9268
	movl	-16(%rbp), %eax	# apos, tmp555
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_124, D.9272
	cmpb	$95, %al	#, D.9272
	je	.L191	#,
	movl	-28(%rbp), %eax	# idx, tmp556
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp557
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_128, D.9268
	movl	-16(%rbp), %eax	# apos, tmp558
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_131, D.9272
	cmpb	$45, %al	#, D.9272
	je	.L191	#,
	movl	-28(%rbp), %eax	# idx, tmp559
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp560
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_135, D.9268
	movl	-16(%rbp), %eax	# apos, tmp561
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_138, D.9272
	cmpb	$126, %al	#, D.9272
	je	.L191	#,
	.loc 1 640 0 is_stmt 1
	addl	$1, -20(%rbp)	#, k
	.loc 1 641 0
	movl	-28(%rbp), %eax	# idx, tmp562
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp563
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_143, D.9267
	movq	8(%rax), %rdx	# _144->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp564
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$1, (%rax)	#, *_147
	.loc 1 642 0
	movl	-28(%rbp), %eax	# idx, tmp565
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp566
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_150, D.9267
	movq	16(%rax), %rax	# _151->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp567
	movslq	%edx, %rdx	# tmp567, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-20(%rbp), %eax	# k, tmp568
	movl	%eax, (%rdx)	# tmp568, *_155
	.loc 1 643 0
	movl	-28(%rbp), %eax	# idx, tmp569
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp570
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_158, D.9267
	movq	24(%rax), %rax	# _159->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp571
	movslq	%edx, %rdx	# tmp571, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-24(%rbp), %eax	# i, tmp572
	movl	%eax, (%rdx)	# tmp572, *_163
	.loc 1 644 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 645 0
	addl	$1, -12(%rbp)	#, tpos
	jmp	.L192	#
.L191:
	.loc 1 647 0
	movl	-16(%rbp), %eax	# apos, tmp573
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp574
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_169, D.9266
	andl	$1, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L193	#,
	.loc 1 650 0
	addl	$1, -20(%rbp)	#, k
	.loc 1 651 0
	movl	-28(%rbp), %eax	# idx, tmp575
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp576
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_175, D.9267
	movq	8(%rax), %rax	# _176->statetype, D.9268
	movl	-12(%rbp), %edx	# tpos, tmp577
	movslq	%edx, %rdx	# tmp577, D.9270
	subq	$1, %rdx	#, D.9270
	addq	%rdx, %rax	# D.9270, D.9268
	movzbl	(%rax), %eax	# *_180, D.9272
	cmpb	$6, %al	#, D.9272
	je	.L192	#,
	.loc 1 653 0
	movl	-28(%rbp), %eax	# idx, tmp578
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp579
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_184, D.9267
	movq	8(%rax), %rdx	# _185->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp580
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$2, (%rax)	#, *_188
	.loc 1 654 0
	movl	-28(%rbp), %eax	# idx, tmp581
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp582
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_191, D.9267
	movq	16(%rax), %rax	# _192->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp583
	movslq	%edx, %rdx	# tmp583, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-20(%rbp), %eax	# k, tmp584
	movl	%eax, (%rdx)	# tmp584, *_196
	.loc 1 655 0
	movl	-28(%rbp), %eax	# idx, tmp585
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp586
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_199, D.9267
	movq	24(%rax), %rax	# _200->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp587
	movslq	%edx, %rdx	# tmp587, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_204
	.loc 1 656 0
	addl	$1, -12(%rbp)	#, tpos
	jmp	.L192	#
.L193:
	.loc 1 659 0
	movl	-16(%rbp), %eax	# apos, tmp588
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp589
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_209, D.9266
	andl	$16, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L195	#,
	.loc 1 660 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp590
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp591
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_214, D.9268
	movl	-16(%rbp), %eax	# apos, tmp592
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_217, D.9272
	.loc 1 659 0 discriminator 1
	cmpb	$32, %al	#, D.9272
	je	.L195	#,
	.loc 1 660 0
	movl	-28(%rbp), %eax	# idx, tmp593
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp594
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_221, D.9268
	movl	-16(%rbp), %eax	# apos, tmp595
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_224, D.9272
	cmpb	$46, %al	#, D.9272
	je	.L195	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp596
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp597
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_228, D.9268
	movl	-16(%rbp), %eax	# apos, tmp598
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_231, D.9272
	cmpb	$95, %al	#, D.9272
	je	.L195	#,
	movl	-28(%rbp), %eax	# idx, tmp599
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp600
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_235, D.9268
	movl	-16(%rbp), %eax	# apos, tmp601
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_238, D.9272
	cmpb	$45, %al	#, D.9272
	je	.L195	#,
	movl	-28(%rbp), %eax	# idx, tmp602
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp603
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_242, D.9268
	movl	-16(%rbp), %eax	# apos, tmp604
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_245, D.9272
	cmpb	$126, %al	#, D.9272
	je	.L195	#,
	.loc 1 662 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp605
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp606
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_249, D.9267
	movq	8(%rax), %rdx	# _250->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp607
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$5, (%rax)	#, *_253
	.loc 1 663 0
	movl	-28(%rbp), %eax	# idx, tmp608
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp609
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_256, D.9267
	movq	16(%rax), %rax	# _257->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp610
	movslq	%edx, %rdx	# tmp610, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_261
	.loc 1 664 0
	movl	-28(%rbp), %eax	# idx, tmp611
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp612
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_264, D.9267
	movq	24(%rax), %rax	# _265->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp613
	movslq	%edx, %rdx	# tmp613, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-24(%rbp), %eax	# i, tmp614
	movl	%eax, (%rdx)	# tmp614, *_269
	.loc 1 665 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 666 0
	addl	$1, -12(%rbp)	#, tpos
	jmp	.L192	#
.L195:
	.loc 1 668 0
	movl	-16(%rbp), %eax	# apos, tmp615
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp616
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_275, D.9266
	andl	$32, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L196	#,
	.loc 1 669 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp617
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp618
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_280, D.9268
	movl	-16(%rbp), %eax	# apos, tmp619
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_283, D.9272
	.loc 1 668 0 discriminator 1
	cmpb	$32, %al	#, D.9272
	je	.L196	#,
	.loc 1 669 0
	movl	-28(%rbp), %eax	# idx, tmp620
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp621
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_287, D.9268
	movl	-16(%rbp), %eax	# apos, tmp622
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_290, D.9272
	cmpb	$46, %al	#, D.9272
	je	.L196	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp623
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp624
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_294, D.9268
	movl	-16(%rbp), %eax	# apos, tmp625
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_297, D.9272
	cmpb	$95, %al	#, D.9272
	je	.L196	#,
	movl	-28(%rbp), %eax	# idx, tmp626
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp627
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_301, D.9268
	movl	-16(%rbp), %eax	# apos, tmp628
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_304, D.9272
	cmpb	$45, %al	#, D.9272
	je	.L196	#,
	movl	-28(%rbp), %eax	# idx, tmp629
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp630
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_308, D.9268
	movl	-16(%rbp), %eax	# apos, tmp631
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_311, D.9272
	cmpb	$126, %al	#, D.9272
	je	.L196	#,
	.loc 1 671 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp632
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp633
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_315, D.9267
	movq	8(%rax), %rdx	# _316->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp634
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$8, (%rax)	#, *_319
	.loc 1 672 0
	movl	-28(%rbp), %eax	# idx, tmp635
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp636
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_322, D.9267
	movq	16(%rax), %rax	# _323->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp637
	movslq	%edx, %rdx	# tmp637, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_327
	.loc 1 673 0
	movl	-28(%rbp), %eax	# idx, tmp638
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp639
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_330, D.9267
	movq	24(%rax), %rax	# _331->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp640
	movslq	%edx, %rdx	# tmp640, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-24(%rbp), %eax	# i, tmp641
	movl	%eax, (%rdx)	# tmp641, *_335
	.loc 1 674 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 675 0
	addl	$1, -12(%rbp)	#, tpos
	jmp	.L192	#
.L196:
	.loc 1 677 0
	movl	-28(%rbp), %eax	# idx, tmp642
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp643
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_340, D.9268
	movl	-16(%rbp), %eax	# apos, tmp644
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_343, D.9272
	cmpb	$32, %al	#, D.9272
	je	.L192	#,
	.loc 1 677 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp645
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp646
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_347, D.9268
	movl	-16(%rbp), %eax	# apos, tmp647
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_350, D.9272
	cmpb	$46, %al	#, D.9272
	je	.L192	#,
	movl	-28(%rbp), %eax	# idx, tmp648
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp649
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_354, D.9268
	movl	-16(%rbp), %eax	# apos, tmp650
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_357, D.9272
	cmpb	$95, %al	#, D.9272
	je	.L192	#,
	movl	-28(%rbp), %eax	# idx, tmp651
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp652
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_361, D.9268
	movl	-16(%rbp), %eax	# apos, tmp653
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_364, D.9272
	cmpb	$45, %al	#, D.9272
	je	.L192	#,
	movl	-28(%rbp), %eax	# idx, tmp654
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-40(%rbp), %rax	# aseq, tmp655
	addq	%rdx, %rax	# D.9264, D.9271
	movq	(%rax), %rdx	# *_368, D.9268
	movl	-16(%rbp), %eax	# apos, tmp656
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movzbl	(%rax), %eax	# *_371, D.9272
	cmpb	$126, %al	#, D.9272
	je	.L192	#,
	.loc 1 679 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp657
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp658
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_375, D.9267
	movq	8(%rax), %rdx	# _376->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp659
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$3, (%rax)	#, *_379
	.loc 1 680 0
	movl	-28(%rbp), %eax	# idx, tmp660
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp661
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_382, D.9267
	movq	16(%rax), %rax	# _383->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp662
	movslq	%edx, %rdx	# tmp662, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-20(%rbp), %eax	# k, tmp663
	movl	%eax, (%rdx)	# tmp663, *_387
	.loc 1 681 0
	movl	-28(%rbp), %eax	# idx, tmp664
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp665
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_390, D.9267
	movq	24(%rax), %rax	# _391->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp666
	movslq	%edx, %rdx	# tmp666, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rax, %rdx	# D.9269, D.9269
	movl	-24(%rbp), %eax	# i, tmp667
	movl	%eax, (%rdx)	# tmp667, *_395
	.loc 1 682 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 683 0
	addl	$1, -12(%rbp)	#, tpos
.L192:
	.loc 1 686 0
	movl	-16(%rbp), %eax	# apos, tmp668
	cltq
	addq	$1, %rax	#, D.9270
	leaq	0(,%rax,4), %rdx	#, D.9270
	movq	-56(%rbp), %rax	# matassign, tmp669
	addq	%rdx, %rax	# D.9270, D.9269
	movl	(%rax), %eax	# *_401, D.9266
	andl	$4, %eax	#, D.9266
	testl	%eax, %eax	# D.9266
	je	.L197	#,
	.loc 1 691 0
	jmp	.L198	#
.L199:
	.loc 1 692 0
	subl	$1, -12(%rbp)	#, tpos
.L198:
	.loc 1 691 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp670
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp671
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_406, D.9267
	movq	8(%rax), %rax	# _407->statetype, D.9268
	movl	-12(%rbp), %edx	# tpos, tmp672
	movslq	%edx, %rdx	# tmp672, D.9270
	subq	$1, %rdx	#, D.9270
	addq	%rdx, %rax	# D.9270, D.9268
	movzbl	(%rax), %eax	# *_411, D.9272
	cmpb	$2, %al	#, D.9272
	je	.L199	#,
	.loc 1 693 0
	movl	-28(%rbp), %eax	# idx, tmp673
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp674
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_416, D.9267
	movq	8(%rax), %rdx	# _417->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp675
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$7, (%rax)	#, *_420
	.loc 1 694 0
	movl	-28(%rbp), %eax	# idx, tmp676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp677
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_423, D.9267
	movq	16(%rax), %rax	# _424->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp678
	movslq	%edx, %rdx	# tmp678, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_428
	.loc 1 695 0
	movl	-28(%rbp), %eax	# idx, tmp679
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp680
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_431, D.9267
	movq	24(%rax), %rax	# _432->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp681
	movslq	%edx, %rdx	# tmp681, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_436
	.loc 1 696 0
	addl	$1, -12(%rbp)	#, tpos
	.loc 1 700 0
	movl	-28(%rbp), %eax	# idx, tmp682
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp683
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_440, D.9267
	movq	8(%rax), %rdx	# _441->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp684
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$8, (%rax)	#, *_444
	.loc 1 701 0
	movl	-28(%rbp), %eax	# idx, tmp685
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp686
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_447, D.9267
	movq	16(%rax), %rax	# _448->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp687
	movslq	%edx, %rdx	# tmp687, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_452
	.loc 1 702 0
	movl	-28(%rbp), %eax	# idx, tmp688
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp689
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_455, D.9267
	movq	24(%rax), %rax	# _456->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp690
	movslq	%edx, %rdx	# tmp690, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_460
	.loc 1 703 0
	addl	$1, -12(%rbp)	#, tpos
.L197:
	.loc 1 626 0
	addl	$1, -16(%rbp)	#, apos
.L189:
	.loc 1 626 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# apos, tmp691
	cmpl	-48(%rbp), %eax	# alen, tmp691
	jl	.L200	#,
	.loc 1 707 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp692
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp693
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_465, D.9267
	movq	8(%rax), %rdx	# _466->statetype, D.9268
	movl	-12(%rbp), %eax	# tpos, tmp694
	cltq
	addq	%rdx, %rax	# D.9268, D.9268
	movb	$9, (%rax)	#, *_469
	.loc 1 708 0
	movl	-28(%rbp), %eax	# idx, tmp695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp696
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_472, D.9267
	movq	16(%rax), %rax	# _473->nodeidx, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp697
	movslq	%edx, %rdx	# tmp697, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_477
	.loc 1 709 0
	movl	-28(%rbp), %eax	# idx, tmp698
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp699
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_480, D.9267
	movq	24(%rax), %rax	# _481->pos, D.9269
	movl	-12(%rbp), %edx	# tpos, tmp700
	movslq	%edx, %rdx	# tmp700, D.9264
	salq	$2, %rdx	#, D.9264
	addq	%rdx, %rax	# D.9264, D.9269
	movl	$0, (%rax)	#, *_485
	.loc 1 710 0
	movl	-28(%rbp), %eax	# idx, tmp701
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp702
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_488, D.9267
	addl	$1, -12(%rbp)	#, tpos
	movl	-12(%rbp), %edx	# tpos, tmp703
	movl	%edx, (%rax)	# tmp703, _489->tlen
	.loc 1 713 0
	movl	-28(%rbp), %eax	# idx, tmp704
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9264
	movq	-8(%rbp), %rax	# tr, tmp705
	addq	%rdx, %rax	# D.9264, D.9265
	movq	(%rax), %rax	# *_493, D.9267
	movl	-20(%rbp), %esi	# k, tmp706
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.9267,
	call	trace_doctor	#
	.loc 1 609 0
	addl	$1, -28(%rbp)	#, idx
.L188:
	.loc 1 609 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp707
	cmpl	-44(%rbp), %eax	# nseq, tmp707
	jl	.L201	#,
	.loc 1 717 0 is_stmt 1
	movq	-64(%rbp), %rax	# ret_tr, tmp708
	movq	-8(%rbp), %rdx	# tr, tmp709
	movq	%rdx, (%rax)	# tmp709, *ret_tr_496(D)
	.loc 1 718 0
	nop
	.loc 1 719 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fake_tracebacks, .-fake_tracebacks
	.type	trace_doctor, @function
trace_doctor:
.LFB9:
	.loc 1 746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# tr, tr
	movl	%esi, -28(%rbp)	# mlen, mlen
	movq	%rdx, -40(%rbp)	# ret_ndi, ret_ndi
	movq	%rcx, -48(%rbp)	# ret_nid, ret_nid
	.loc 1 752 0
	movl	$0, -4(%rbp)	#, nid
	movl	-4(%rbp), %eax	# nid, tmp323
	movl	%eax, -8(%rbp)	# tmp323, ndi
	.loc 1 753 0
	movl	$0, -12(%rbp)	#, npos
	movl	-12(%rbp), %eax	# npos, tmp324
	movl	%eax, -16(%rbp)	# tmp324, opos
	.loc 1 754 0
	jmp	.L204	#
.L211:
	.loc 1 756 0
	movq	-24(%rbp), %rax	# tr, tmp325
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp326
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_13, D.9276
	cmpb	$2, %al	#, D.9276
	jne	.L205	#,
	.loc 1 756 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp327
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp328
	movslq	%edx, %rdx	# tmp328, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_18, D.9276
	cmpb	$3, %al	#, D.9276
	jne	.L205	#,
	.loc 1 757 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp329
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp330
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_22
	.loc 1 758 0
	movq	-24(%rbp), %rax	# tr, tmp331
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp332
	movslq	%edx, %rdx	# tmp332, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp333
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp334
	movslq	%ecx, %rcx	# tmp334, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_30, D.9273
	movl	%eax, (%rdx)	# D.9273, *_26
	.loc 1 759 0
	movq	-24(%rbp), %rax	# tr, tmp335
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp336
	movslq	%edx, %rdx	# tmp336, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp337
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp338
	movslq	%ecx, %rcx	# tmp338, D.9275
	addq	$1, %rcx	#, D.9275
	salq	$2, %rcx	#, D.9275
	addq	%rcx, %rax	# D.9275, D.9277
	movl	(%rax), %eax	# *_40, D.9273
	movl	%eax, (%rdx)	# D.9273, *_35
	.loc 1 760 0
	addl	$2, -16(%rbp)	#, opos
	.loc 1 761 0
	addl	$1, -12(%rbp)	#, npos
	.loc 1 762 0
	addl	$1, -8(%rbp)	#, ndi
	jmp	.L204	#
.L205:
	.loc 1 764 0
	movq	-24(%rbp), %rax	# tr, tmp339
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp340
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_47, D.9276
	cmpb	$3, %al	#, D.9276
	jne	.L206	#,
	.loc 1 764 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp341
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp342
	movslq	%edx, %rdx	# tmp342, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_52, D.9276
	cmpb	$2, %al	#, D.9276
	jne	.L206	#,
	.loc 1 765 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp343
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp344
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_56
	.loc 1 766 0
	movq	-24(%rbp), %rax	# tr, tmp345
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp346
	movslq	%edx, %rdx	# tmp346, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp347
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp348
	movslq	%ecx, %rcx	# tmp348, D.9275
	addq	$1, %rcx	#, D.9275
	salq	$2, %rcx	#, D.9275
	addq	%rcx, %rax	# D.9275, D.9277
	movl	(%rax), %eax	# *_65, D.9273
	movl	%eax, (%rdx)	# D.9273, *_60
	.loc 1 767 0
	movq	-24(%rbp), %rax	# tr, tmp349
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp350
	movslq	%edx, %rdx	# tmp350, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp351
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp352
	movslq	%ecx, %rcx	# tmp352, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_74, D.9273
	movl	%eax, (%rdx)	# D.9273, *_70
	.loc 1 768 0
	addl	$2, -16(%rbp)	#, opos
	.loc 1 769 0
	addl	$1, -12(%rbp)	#, npos
	.loc 1 770 0
	addl	$1, -4(%rbp)	#, nid
	jmp	.L204	#
.L206:
	.loc 1 772 0
	movq	-24(%rbp), %rax	# tr, tmp353
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp354
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_81, D.9276
	cmpb	$3, %al	#, D.9276
	jne	.L207	#,
	.loc 1 772 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp355
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp356
	movslq	%edx, %rdx	# tmp356, D.9275
	subq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_86, D.9276
	cmpb	$6, %al	#, D.9276
	jne	.L207	#,
	.loc 1 773 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp357
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp358
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_90
	.loc 1 774 0
	movq	-24(%rbp), %rax	# tr, tmp359
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp360
	movslq	%edx, %rdx	# tmp360, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp361
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp362
	movslq	%ecx, %rcx	# tmp362, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_98, D.9273
	movl	%eax, (%rdx)	# D.9273, *_94
	.loc 1 775 0
	movq	-24(%rbp), %rax	# tr, tmp363
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp364
	movslq	%edx, %rdx	# tmp364, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp365
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp366
	movslq	%ecx, %rcx	# tmp366, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_107, D.9273
	movl	%eax, (%rdx)	# D.9273, *_103
	.loc 1 776 0
	addl	$1, -16(%rbp)	#, opos
	.loc 1 777 0
	addl	$1, -12(%rbp)	#, npos
	jmp	.L204	#
.L207:
	.loc 1 779 0
	movq	-24(%rbp), %rax	# tr, tmp367
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp368
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_113, D.9276
	cmpb	$3, %al	#, D.9276
	jne	.L208	#,
	.loc 1 779 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp369
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp370
	movslq	%edx, %rdx	# tmp370, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_118, D.9276
	cmpb	$7, %al	#, D.9276
	jne	.L208	#,
	.loc 1 780 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp371
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp372
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_122
	.loc 1 781 0
	movq	-24(%rbp), %rax	# tr, tmp373
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp374
	movslq	%edx, %rdx	# tmp374, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp375
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp376
	movslq	%ecx, %rcx	# tmp376, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_130, D.9273
	addl	$1, %eax	#, D.9273
	movl	%eax, (%rdx)	# D.9273, *_126
	.loc 1 782 0
	movq	-24(%rbp), %rax	# tr, tmp377
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp378
	movslq	%edx, %rdx	# tmp378, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp379
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp380
	movslq	%ecx, %rcx	# tmp380, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_140, D.9273
	movl	%eax, (%rdx)	# D.9273, *_136
	.loc 1 783 0
	addl	$1, -16(%rbp)	#, opos
	.loc 1 784 0
	addl	$1, -12(%rbp)	#, npos
	jmp	.L204	#
.L208:
	.loc 1 786 0
	movq	-24(%rbp), %rax	# tr, tmp381
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp382
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_146, D.9276
	cmpb	$6, %al	#, D.9276
	jne	.L209	#,
	.loc 1 786 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp383
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp384
	movslq	%edx, %rdx	# tmp384, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_151, D.9276
	cmpb	$7, %al	#, D.9276
	jne	.L209	#,
	.loc 1 787 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp385
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp386
	movslq	%edx, %rdx	# tmp386, D.9275
	subq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_156, D.9276
	cmpb	$5, %al	#, D.9276
	jne	.L209	#,
	.loc 1 787 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp387
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %edx	# opos, tmp388
	movslq	%edx, %rdx	# tmp388, D.9278
	salq	$2, %rdx	#, D.9278
	subq	$4, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	(%rax), %eax	# *_162, D.9273
	testl	%eax, %eax	# D.9273
	jle	.L209	#,
	.loc 1 788 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp389
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp390
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_166
	.loc 1 789 0
	movq	-24(%rbp), %rax	# tr, tmp391
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp392
	movslq	%edx, %rdx	# tmp392, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rdx, %rax	# D.9278, D.9277
	movl	$1, (%rax)	#, *_170
	.loc 1 790 0
	movq	-24(%rbp), %rax	# tr, tmp393
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp394
	movslq	%edx, %rdx	# tmp394, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp395
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp396
	movslq	%ecx, %rcx	# tmp396, D.9278
	salq	$2, %rcx	#, D.9278
	subq	$4, %rcx	#, D.9275
	addq	%rcx, %rax	# D.9275, D.9277
	movl	(%rax), %eax	# *_179, D.9273
	movl	%eax, (%rdx)	# D.9273, *_174
	.loc 1 791 0
	movq	-24(%rbp), %rax	# tr, tmp397
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %edx	# npos, tmp398
	movslq	%edx, %rdx	# tmp398, D.9275
	subq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movb	$6, (%rax)	#, *_184
	.loc 1 792 0
	movq	-24(%rbp), %rax	# tr, tmp399
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp400
	movslq	%edx, %rdx	# tmp400, D.9278
	salq	$2, %rdx	#, D.9278
	subq	$4, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_189
	.loc 1 793 0
	movq	-24(%rbp), %rax	# tr, tmp401
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp402
	movslq	%edx, %rdx	# tmp402, D.9278
	salq	$2, %rdx	#, D.9278
	subq	$4, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_194
	.loc 1 794 0
	addl	$1, -16(%rbp)	#, opos
	.loc 1 795 0
	addl	$1, -12(%rbp)	#, npos
	jmp	.L204	#
.L209:
	.loc 1 797 0
	movq	-24(%rbp), %rax	# tr, tmp403
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp404
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_199, D.9276
	cmpb	$7, %al	#, D.9276
	jne	.L210	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp405
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp406
	movslq	%edx, %rdx	# tmp406, D.9275
	subq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_204, D.9276
	cmpb	$6, %al	#, D.9276
	jne	.L210	#,
	.loc 1 798 0 is_stmt 1
	movq	-24(%rbp), %rax	# tr, tmp407
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp408
	movslq	%edx, %rdx	# tmp408, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_209, D.9276
	cmpb	$8, %al	#, D.9276
	jne	.L210	#,
	.loc 1 799 0
	movq	-24(%rbp), %rax	# tr, tmp409
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %edx	# opos, tmp410
	movslq	%edx, %rdx	# tmp410, D.9275
	addq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movzbl	(%rax), %eax	# *_214, D.9276
	cmpb	$8, %al	#, D.9276
	jne	.L210	#,
	.loc 1 800 0
	movq	-24(%rbp), %rax	# tr, tmp411
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp412
	cltq
	addq	%rdx, %rax	# D.9274, D.9274
	movb	$1, (%rax)	#, *_218
	.loc 1 801 0
	movq	-24(%rbp), %rax	# tr, tmp413
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp414
	movslq	%edx, %rdx	# tmp414, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movl	-28(%rbp), %eax	# mlen, tmp415
	movl	%eax, (%rdx)	# tmp415, *_222
	.loc 1 802 0
	movq	-24(%rbp), %rax	# tr, tmp416
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp417
	movslq	%edx, %rdx	# tmp417, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp418
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp419
	movslq	%ecx, %rcx	# tmp419, D.9275
	addq	$2, %rcx	#, D.9275
	salq	$2, %rcx	#, D.9275
	addq	%rcx, %rax	# D.9275, D.9277
	movl	(%rax), %eax	# *_232, D.9273
	movl	%eax, (%rdx)	# D.9273, *_227
	.loc 1 803 0
	movq	-24(%rbp), %rax	# tr, tmp420
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %edx	# npos, tmp421
	movslq	%edx, %rdx	# tmp421, D.9275
	addq	$1, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movb	$7, (%rax)	#, *_237
	.loc 1 804 0
	movq	-24(%rbp), %rax	# tr, tmp422
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp423
	movslq	%edx, %rdx	# tmp423, D.9275
	addq	$1, %rdx	#, D.9275
	salq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_242
	.loc 1 805 0
	movq	-24(%rbp), %rax	# tr, tmp424
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp425
	movslq	%edx, %rdx	# tmp425, D.9275
	addq	$1, %rdx	#, D.9275
	salq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_247
	.loc 1 806 0
	movq	-24(%rbp), %rax	# tr, tmp426
	movq	8(%rax), %rax	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %edx	# npos, tmp427
	movslq	%edx, %rdx	# tmp427, D.9275
	addq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9274
	movb	$8, (%rax)	#, *_251
	.loc 1 807 0
	movq	-24(%rbp), %rax	# tr, tmp428
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp429
	movslq	%edx, %rdx	# tmp429, D.9275
	addq	$2, %rdx	#, D.9275
	salq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_256
	.loc 1 808 0
	movq	-24(%rbp), %rax	# tr, tmp430
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp431
	movslq	%edx, %rdx	# tmp431, D.9275
	addq	$2, %rdx	#, D.9275
	salq	$2, %rdx	#, D.9275
	addq	%rdx, %rax	# D.9275, D.9277
	movl	$0, (%rax)	#, *_261
	.loc 1 809 0
	addl	$3, -16(%rbp)	#, opos
	.loc 1 810 0
	addl	$3, -12(%rbp)	#, npos
	jmp	.L204	#
.L210:
	.loc 1 813 0
	movq	-24(%rbp), %rax	# tr, tmp432
	movq	8(%rax), %rdx	# tr_9(D)->statetype, D.9274
	movl	-12(%rbp), %eax	# npos, tmp433
	cltq
	addq	%rax, %rdx	# D.9275, D.9274
	movq	-24(%rbp), %rax	# tr, tmp434
	movq	8(%rax), %rcx	# tr_9(D)->statetype, D.9274
	movl	-16(%rbp), %eax	# opos, tmp435
	cltq
	addq	%rcx, %rax	# D.9274, D.9274
	movzbl	(%rax), %eax	# *_269, D.9276
	movb	%al, (%rdx)	# D.9276, *_266
	.loc 1 814 0
	movq	-24(%rbp), %rax	# tr, tmp436
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-12(%rbp), %edx	# npos, tmp437
	movslq	%edx, %rdx	# tmp437, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp438
	movq	16(%rax), %rax	# tr_9(D)->nodeidx, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp439
	movslq	%ecx, %rcx	# tmp439, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_278, D.9273
	movl	%eax, (%rdx)	# D.9273, *_274
	.loc 1 815 0
	movq	-24(%rbp), %rax	# tr, tmp440
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-12(%rbp), %edx	# npos, tmp441
	movslq	%edx, %rdx	# tmp441, D.9278
	salq	$2, %rdx	#, D.9278
	addq	%rax, %rdx	# D.9277, D.9277
	movq	-24(%rbp), %rax	# tr, tmp442
	movq	24(%rax), %rax	# tr_9(D)->pos, D.9277
	movl	-16(%rbp), %ecx	# opos, tmp443
	movslq	%ecx, %rcx	# tmp443, D.9278
	salq	$2, %rcx	#, D.9278
	addq	%rcx, %rax	# D.9278, D.9277
	movl	(%rax), %eax	# *_287, D.9273
	movl	%eax, (%rdx)	# D.9273, *_283
	.loc 1 816 0
	addl	$1, -16(%rbp)	#, opos
	.loc 1 817 0
	addl	$1, -12(%rbp)	#, npos
.L204:
	.loc 1 754 0 discriminator 1
	movq	-24(%rbp), %rax	# tr, tmp444
	movl	(%rax), %eax	# tr_9(D)->tlen, D.9273
	cmpl	-16(%rbp), %eax	# opos, D.9273
	jg	.L211	#,
	.loc 1 820 0
	movq	-24(%rbp), %rax	# tr, tmp445
	movl	-12(%rbp), %edx	# npos, tmp446
	movl	%edx, (%rax)	# tmp446, tr_9(D)->tlen
	.loc 1 822 0
	cmpq	$0, -40(%rbp)	#, ret_ndi
	je	.L212	#,
	.loc 1 822 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# ret_ndi, tmp447
	movl	-8(%rbp), %edx	# ndi, tmp448
	movl	%edx, (%rax)	# tmp448, *ret_ndi_291(D)
.L212:
	.loc 1 823 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, ret_nid
	je	.L213	#,
	.loc 1 823 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ret_nid, tmp449
	movl	-4(%rbp), %edx	# nid, tmp450
	movl	%edx, (%rax)	# tmp450, *ret_nid_292(D)
.L213:
	.loc 1 824 0 is_stmt 1
	nop
	.loc 1 825 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	trace_doctor, .-trace_doctor
	.section	.rodata
.LC8:
	.string	"X-PRM"
.LC9:
	.string	"X-PRI"
.LC10:
	.string	"X-PRT"
	.text
	.type	annotate_model, @function
annotate_model:
.LFB10:
	.loc 1 840 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movq	%rsi, -32(%rbp)	# matassign, matassign
	movq	%rdx, -40(%rbp)	# msa, msa
	.loc 1 848 0
	movq	-40(%rbp), %rax	# msa, tmp396
	movq	88(%rax), %rax	# msa_25(D)->rf, D.9279
	testq	%rax, %rax	# D.9279
	je	.L216	#,
	.loc 1 849 0
	movq	-24(%rbp), %rax	# hmm, tmp397
	movq	24(%rax), %rax	# hmm_27(D)->rf, D.9279
	movb	$32, (%rax)	#, *_28
	.loc 1 850 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp398
	movl	%eax, -16(%rbp)	# tmp398, apos
	jmp	.L217	#
.L221:
	.loc 1 851 0
	movl	-16(%rbp), %eax	# apos, tmp399
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp400
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_35, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L218	#,
	.loc 1 852 0
	movq	-24(%rbp), %rax	# hmm, tmp401
	movq	24(%rax), %rcx	# hmm_27(D)->rf, D.9279
	movl	-12(%rbp), %eax	# k, k.28
	leal	1(%rax), %edx	#, tmp402
	movl	%edx, -12(%rbp)	# tmp402, k
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.9279
	movq	-40(%rbp), %rax	# msa, tmp403
	movq	88(%rax), %rax	# msa_25(D)->rf, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp404
	movslq	%ecx, %rcx	# tmp404, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_46, D.9284
	cmpb	$32, %al	#, D.9284
	je	.L219	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp405
	movq	88(%rax), %rax	# msa_25(D)->rf, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp406
	movslq	%ecx, %rcx	# tmp406, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_51, iftmp.29
	jmp	.L220	#
.L219:
	.loc 1 852 0 discriminator 2
	movl	$46, %eax	#, iftmp.29
.L220:
	.loc 1 852 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.29, *_42
.L218:
	.loc 1 850 0 is_stmt 1
	addl	$1, -16(%rbp)	#, apos
.L217:
	.loc 1 850 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp407
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L221	#,
	.loc 1 853 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp408
	movq	24(%rax), %rdx	# hmm_27(D)->rf, D.9279
	movl	-12(%rbp), %eax	# k, tmp409
	cltq
	addq	%rdx, %rax	# D.9279, D.9279
	movb	$0, (%rax)	#, *_57
	.loc 1 854 0
	movq	-24(%rbp), %rax	# hmm, tmp410
	movl	456(%rax), %eax	# hmm_27(D)->flags, D.9280
	orl	$4, %eax	#, D.9280
	movl	%eax, %edx	# D.9280, D.9280
	movq	-24(%rbp), %rax	# hmm, tmp411
	movl	%edx, 456(%rax)	# D.9280, hmm_27(D)->flags
.L216:
	.loc 1 860 0
	movq	-40(%rbp), %rax	# msa, tmp412
	movq	72(%rax), %rax	# msa_25(D)->ss_cons, D.9279
	testq	%rax, %rax	# D.9279
	je	.L222	#,
	.loc 1 861 0
	movq	-24(%rbp), %rax	# hmm, tmp413
	movq	32(%rax), %rax	# hmm_27(D)->cs, D.9279
	movb	$32, (%rax)	#, *_61
	.loc 1 862 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp414
	movl	%eax, -16(%rbp)	# tmp414, apos
	jmp	.L223	#
.L227:
	.loc 1 863 0
	movl	-16(%rbp), %eax	# apos, tmp415
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp416
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_67, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L224	#,
	.loc 1 864 0
	movq	-24(%rbp), %rax	# hmm, tmp417
	movq	32(%rax), %rcx	# hmm_27(D)->cs, D.9279
	movl	-12(%rbp), %eax	# k, k.30
	leal	1(%rax), %edx	#, tmp418
	movl	%edx, -12(%rbp)	# tmp418, k
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.9279
	movq	-40(%rbp), %rax	# msa, tmp419
	movq	72(%rax), %rax	# msa_25(D)->ss_cons, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp420
	movslq	%ecx, %rcx	# tmp420, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_78, D.9284
	cmpb	$32, %al	#, D.9284
	je	.L225	#,
	.loc 1 864 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp421
	movq	72(%rax), %rax	# msa_25(D)->ss_cons, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp422
	movslq	%ecx, %rcx	# tmp422, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_83, iftmp.31
	jmp	.L226	#
.L225:
	.loc 1 864 0 discriminator 2
	movl	$46, %eax	#, iftmp.31
.L226:
	.loc 1 864 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.31, *_74
.L224:
	.loc 1 862 0 is_stmt 1
	addl	$1, -16(%rbp)	#, apos
.L223:
	.loc 1 862 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp423
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L227	#,
	.loc 1 865 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp424
	movq	32(%rax), %rdx	# hmm_27(D)->cs, D.9279
	movl	-12(%rbp), %eax	# k, tmp425
	cltq
	addq	%rdx, %rax	# D.9279, D.9279
	movb	$0, (%rax)	#, *_89
	.loc 1 866 0
	movq	-24(%rbp), %rax	# hmm, tmp426
	movl	456(%rax), %eax	# hmm_27(D)->flags, D.9280
	orl	$8, %eax	#, D.9280
	movl	%eax, %edx	# D.9280, D.9280
	movq	-24(%rbp), %rax	# hmm, tmp427
	movl	%edx, 456(%rax)	# D.9280, hmm_27(D)->flags
.L222:
	.loc 1 872 0
	movq	-40(%rbp), %rax	# msa, tmp428
	movq	80(%rax), %rax	# msa_25(D)->sa_cons, D.9279
	testq	%rax, %rax	# D.9279
	je	.L228	#,
	.loc 1 873 0
	movq	-24(%rbp), %rax	# hmm, tmp429
	movq	40(%rax), %rax	# hmm_27(D)->ca, D.9279
	movb	$32, (%rax)	#, *_93
	.loc 1 874 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp430
	movl	%eax, -16(%rbp)	# tmp430, apos
	jmp	.L229	#
.L233:
	.loc 1 875 0
	movl	-16(%rbp), %eax	# apos, tmp431
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp432
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_99, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L230	#,
	.loc 1 876 0
	movq	-24(%rbp), %rax	# hmm, tmp433
	movq	40(%rax), %rcx	# hmm_27(D)->ca, D.9279
	movl	-12(%rbp), %eax	# k, k.32
	leal	1(%rax), %edx	#, tmp434
	movl	%edx, -12(%rbp)	# tmp434, k
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.9279
	movq	-40(%rbp), %rax	# msa, tmp435
	movq	80(%rax), %rax	# msa_25(D)->sa_cons, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp436
	movslq	%ecx, %rcx	# tmp436, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_110, D.9284
	cmpb	$32, %al	#, D.9284
	je	.L231	#,
	.loc 1 876 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp437
	movq	80(%rax), %rax	# msa_25(D)->sa_cons, D.9279
	movl	-16(%rbp), %ecx	# apos, tmp438
	movslq	%ecx, %rcx	# tmp438, D.9283
	subq	$1, %rcx	#, D.9283
	addq	%rcx, %rax	# D.9283, D.9279
	movzbl	(%rax), %eax	# *_115, iftmp.33
	jmp	.L232	#
.L231:
	.loc 1 876 0 discriminator 2
	movl	$46, %eax	#, iftmp.33
.L232:
	.loc 1 876 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.33, *_106
.L230:
	.loc 1 874 0 is_stmt 1
	addl	$1, -16(%rbp)	#, apos
.L229:
	.loc 1 874 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp439
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L233	#,
	.loc 1 877 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp440
	movq	40(%rax), %rdx	# hmm_27(D)->ca, D.9279
	movl	-12(%rbp), %eax	# k, tmp441
	cltq
	addq	%rdx, %rax	# D.9279, D.9279
	movb	$0, (%rax)	#, *_121
	.loc 1 878 0
	movq	-24(%rbp), %rax	# hmm, tmp442
	movl	456(%rax), %eax	# hmm_27(D)->flags, D.9280
	orb	$32, %ah	#, D.9280
	movl	%eax, %edx	# D.9280, D.9280
	movq	-24(%rbp), %rax	# hmm, tmp443
	movl	%edx, 456(%rax)	# D.9280, hmm_27(D)->flags
.L228:
	.loc 1 883 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp444
	movl	%eax, -16(%rbp)	# tmp444, apos
	jmp	.L234	#
.L236:
	.loc 1 884 0
	movl	-16(%rbp), %eax	# apos, tmp445
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp446
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_129, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L235	#,
	.loc 1 885 0
	movq	-24(%rbp), %rax	# hmm, tmp447
	movq	72(%rax), %rcx	# hmm_27(D)->map, D.9282
	movl	-12(%rbp), %eax	# k, k.34
	leal	1(%rax), %edx	#, tmp448
	movl	%edx, -12(%rbp)	# tmp448, k
	cltq
	salq	$2, %rax	#, D.9281
	leaq	(%rcx,%rax), %rdx	#, D.9282
	movl	-16(%rbp), %eax	# apos, tmp449
	movl	%eax, (%rdx)	# tmp449, *_137
.L235:
	.loc 1 883 0
	addl	$1, -16(%rbp)	#, apos
.L234:
	.loc 1 883 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp450
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L236	#,
	.loc 1 886 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp451
	movl	456(%rax), %eax	# hmm_27(D)->flags, D.9280
	orb	$1, %ah	#, D.9280
	movl	%eax, %edx	# D.9280, D.9280
	movq	-24(%rbp), %rax	# hmm, tmp452
	movl	%edx, 456(%rax)	# D.9280, hmm_27(D)->flags
	.loc 1 894 0
	movq	-40(%rbp), %rax	# msa, tmp453
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp453,
	call	MSAGetGC	#
	movq	%rax, -8(%rbp)	# tmp454, pri
	cmpq	$0, -8(%rbp)	#, pri
	je	.L237	#,
	.loc 1 896 0
	movq	-24(%rbp), %rax	# hmm, tmp455
	movl	136(%rax), %eax	# hmm_27(D)->M, D.9280
	addl	$1, %eax	#, D.9280
	cltq
	salq	$2, %rax	#, D.9281
	movq	%rax, %rdx	# D.9281,
	movl	$896, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# hmm, tmp456
	movq	%rax, 96(%rdx)	# D.9285, hmm_27(D)->mpri
	.loc 1 897 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp457
	movl	%eax, -16(%rbp)	# tmp457, apos
	jmp	.L238	#
.L244:
	.loc 1 898 0
	movl	-16(%rbp), %eax	# apos, tmp458
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp459
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_152, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L239	#,
	.loc 1 900 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_155, D.9287
	movl	-16(%rbp), %edx	# apos, tmp460
	movslq	%edx, %rdx	# tmp460, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp461
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_159, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_163, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$2048, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L240	#,
	.loc 1 900 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp462
	movq	96(%rax), %rax	# hmm_27(D)->mpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp463
	movslq	%edx, %rdx	# tmp463, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp464
	movslq	%edx, %rdx	# tmp464, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp465
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_173, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$48, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_170
	jmp	.L241	#
.L240:
	.loc 1 901 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_177, D.9287
	movl	-16(%rbp), %edx	# apos, tmp466
	movslq	%edx, %rdx	# tmp466, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp467
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_181, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_185, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$512, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L242	#,
	.loc 1 901 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp468
	movq	96(%rax), %rax	# hmm_27(D)->mpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp469
	movslq	%edx, %rdx	# tmp469, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp470
	movslq	%edx, %rdx	# tmp470, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp471
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_195, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$87, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_192
	jmp	.L241	#
.L242:
	.loc 1 902 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_199, D.9287
	movl	-16(%rbp), %edx	# apos, tmp472
	movslq	%edx, %rdx	# tmp472, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp473
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_203, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_207, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$256, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L243	#,
	.loc 1 902 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp474
	movq	96(%rax), %rax	# hmm_27(D)->mpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp475
	movslq	%edx, %rdx	# tmp475, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp476
	movslq	%edx, %rdx	# tmp476, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp477
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_217, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$55, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_214
	jmp	.L241	#
.L243:
	.loc 1 903 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp478
	movq	96(%rax), %rax	# hmm_27(D)->mpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp479
	movslq	%edx, %rdx	# tmp479, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	$-1, (%rax)	#, *_224
.L241:
	.loc 1 904 0
	addl	$1, -12(%rbp)	#, k
.L239:
	.loc 1 897 0
	addl	$1, -16(%rbp)	#, apos
.L238:
	.loc 1 897 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp480
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L244	#,
.L237:
	.loc 1 909 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp481
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp481,
	call	MSAGetGC	#
	movq	%rax, -8(%rbp)	# tmp482, pri
	cmpq	$0, -8(%rbp)	#, pri
	je	.L245	#,
	.loc 1 911 0
	movq	-24(%rbp), %rax	# hmm, tmp483
	movl	136(%rax), %eax	# hmm_27(D)->M, D.9280
	addl	$1, %eax	#, D.9280
	cltq
	salq	$2, %rax	#, D.9281
	movq	%rax, %rdx	# D.9281,
	movl	$911, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# hmm, tmp484
	movq	%rax, 104(%rdx)	# D.9285, hmm_27(D)->ipri
	.loc 1 912 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp485
	movl	%eax, -16(%rbp)	# tmp485, apos
	jmp	.L246	#
.L252:
	.loc 1 913 0
	movl	-16(%rbp), %eax	# apos, tmp486
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp487
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_238, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L247	#,
	.loc 1 915 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_241, D.9287
	movl	-16(%rbp), %edx	# apos, tmp488
	movslq	%edx, %rdx	# tmp488, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp489
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_245, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_249, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$2048, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L248	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp490
	movq	104(%rax), %rax	# hmm_27(D)->ipri, D.9282
	movl	-12(%rbp), %edx	# k, tmp491
	movslq	%edx, %rdx	# tmp491, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp492
	movslq	%edx, %rdx	# tmp492, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp493
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_259, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$48, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_256
	jmp	.L249	#
.L248:
	.loc 1 916 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_263, D.9287
	movl	-16(%rbp), %edx	# apos, tmp494
	movslq	%edx, %rdx	# tmp494, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp495
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_267, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_271, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$512, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L250	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp496
	movq	104(%rax), %rax	# hmm_27(D)->ipri, D.9282
	movl	-12(%rbp), %edx	# k, tmp497
	movslq	%edx, %rdx	# tmp497, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp498
	movslq	%edx, %rdx	# tmp498, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp499
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_281, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$87, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_278
	jmp	.L249	#
.L250:
	.loc 1 917 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_285, D.9287
	movl	-16(%rbp), %edx	# apos, tmp500
	movslq	%edx, %rdx	# tmp500, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp501
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_289, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_293, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$256, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L251	#,
	.loc 1 917 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp502
	movq	104(%rax), %rax	# hmm_27(D)->ipri, D.9282
	movl	-12(%rbp), %edx	# k, tmp503
	movslq	%edx, %rdx	# tmp503, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp504
	movslq	%edx, %rdx	# tmp504, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp505
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_303, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$55, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_300
	jmp	.L249	#
.L251:
	.loc 1 918 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp506
	movq	104(%rax), %rax	# hmm_27(D)->ipri, D.9282
	movl	-12(%rbp), %edx	# k, tmp507
	movslq	%edx, %rdx	# tmp507, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	$-1, (%rax)	#, *_310
.L249:
	.loc 1 919 0
	addl	$1, -12(%rbp)	#, k
.L247:
	.loc 1 912 0
	addl	$1, -16(%rbp)	#, apos
.L246:
	.loc 1 912 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp508
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L252	#,
.L245:
	.loc 1 924 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp509
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp509,
	call	MSAGetGC	#
	movq	%rax, -8(%rbp)	# tmp510, pri
	cmpq	$0, -8(%rbp)	#, pri
	je	.L215	#,
	.loc 1 926 0
	movq	-24(%rbp), %rax	# hmm, tmp511
	movl	136(%rax), %eax	# hmm_27(D)->M, D.9280
	addl	$1, %eax	#, D.9280
	cltq
	salq	$2, %rax	#, D.9281
	movq	%rax, %rdx	# D.9281,
	movl	$926, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# hmm, tmp512
	movq	%rax, 88(%rdx)	# D.9285, hmm_27(D)->tpri
	.loc 1 927 0
	movl	$1, -12(%rbp)	#, k
	movl	-12(%rbp), %eax	# k, tmp513
	movl	%eax, -16(%rbp)	# tmp513, apos
	jmp	.L254	#
.L260:
	.loc 1 928 0
	movl	-16(%rbp), %eax	# apos, tmp514
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9281
	movq	-32(%rbp), %rax	# matassign, tmp515
	addq	%rdx, %rax	# D.9281, D.9282
	movl	(%rax), %eax	# *_324, D.9280
	andl	$1, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L255	#,
	.loc 1 930 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_327, D.9287
	movl	-16(%rbp), %edx	# apos, tmp516
	movslq	%edx, %rdx	# tmp516, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp517
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_331, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_335, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$2048, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L256	#,
	.loc 1 930 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp518
	movq	88(%rax), %rax	# hmm_27(D)->tpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp519
	movslq	%edx, %rdx	# tmp519, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp520
	movslq	%edx, %rdx	# tmp520, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp521
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_345, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$48, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_342
	jmp	.L257	#
.L256:
	.loc 1 931 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_349, D.9287
	movl	-16(%rbp), %edx	# apos, tmp522
	movslq	%edx, %rdx	# tmp522, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp523
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_353, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_357, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$512, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L258	#,
	.loc 1 931 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp524
	movq	88(%rax), %rax	# hmm_27(D)->tpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp525
	movslq	%edx, %rdx	# tmp525, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp526
	movslq	%edx, %rdx	# tmp526, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp527
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_367, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$87, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_364
	jmp	.L257	#
.L258:
	.loc 1 932 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_371, D.9287
	movl	-16(%rbp), %edx	# apos, tmp528
	movslq	%edx, %rdx	# tmp528, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp529
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_375, D.9284
	movsbq	%dl, %rdx	# D.9284, D.9281
	addq	%rdx, %rdx	# D.9281
	addq	%rdx, %rax	# D.9281, D.9287
	movzwl	(%rax), %eax	# *_379, D.9288
	movzwl	%ax, %eax	# D.9288, D.9280
	andl	$256, %eax	#, D.9280
	testl	%eax, %eax	# D.9280
	je	.L259	#,
	.loc 1 932 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp530
	movq	88(%rax), %rax	# hmm_27(D)->tpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp531
	movslq	%edx, %rdx	# tmp531, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	-16(%rbp), %edx	# apos, tmp532
	movslq	%edx, %rdx	# tmp532, D.9283
	leaq	-1(%rdx), %rcx	#, D.9283
	movq	-8(%rbp), %rdx	# pri, tmp533
	addq	%rcx, %rdx	# D.9283, D.9279
	movzbl	(%rdx), %edx	# *_389, D.9284
	movsbl	%dl, %edx	# D.9284, D.9280
	subl	$55, %edx	#, D.9280
	movl	%edx, (%rax)	# D.9280, *_386
	jmp	.L257	#
.L259:
	.loc 1 933 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp534
	movq	88(%rax), %rax	# hmm_27(D)->tpri, D.9282
	movl	-12(%rbp), %edx	# k, tmp535
	movslq	%edx, %rdx	# tmp535, D.9281
	salq	$2, %rdx	#, D.9281
	addq	%rdx, %rax	# D.9281, D.9282
	movl	$-1, (%rax)	#, *_396
.L257:
	.loc 1 934 0
	addl	$1, -12(%rbp)	#, k
.L255:
	.loc 1 927 0
	addl	$1, -16(%rbp)	#, apos
.L254:
	.loc 1 927 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp536
	movl	24(%rax), %eax	# msa_25(D)->alen, D.9280
	cmpl	-16(%rbp), %eax	# apos, D.9280
	jge	.L260	#,
.L215:
	.loc 1 938 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	annotate_model, .-annotate_model
	.section	.rodata
.LC11:
	.string	"%3d %c %c %c\n"
	.text
	.type	print_matassign, @function
print_matassign:
.LFB11:
	.loc 1 942 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# matassign, matassign
	movl	%esi, -28(%rbp)	# alen, alen
	.loc 1 945 0
	movl	$0, -4(%rbp)	#, apos
	jmp	.L262	#
.L271:
	.loc 1 950 0
	movl	-4(%rbp), %eax	# apos, tmp87
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9292
	movq	-24(%rbp), %rax	# matassign, tmp88
	addq	%rdx, %rax	# D.9292, D.9293
	movl	(%rax), %eax	# *_10, D.9294
	andl	$16, %eax	#, D.9294
	.loc 1 946 0
	testl	%eax, %eax	# D.9294
	jne	.L263	#,
	.loc 1 951 0
	movl	-4(%rbp), %eax	# apos, tmp89
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9292
	movq	-24(%rbp), %rax	# matassign, tmp90
	addq	%rdx, %rax	# D.9292, D.9293
	movl	(%rax), %eax	# *_15, D.9294
	andl	$32, %eax	#, D.9294
	.loc 1 950 0
	testl	%eax, %eax	# D.9294
	je	.L264	#,
.L263:
	.loc 1 946 0 discriminator 1
	movl	$124, %ecx	#, iftmp.35
	jmp	.L265	#
.L264:
	.loc 1 946 0 is_stmt 0
	movl	$32, %ecx	#, iftmp.35
.L265:
	.loc 1 949 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax	# apos, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9292
	movq	-24(%rbp), %rax	# matassign, tmp92
	addq	%rdx, %rax	# D.9292, D.9293
	movl	(%rax), %eax	# *_22, D.9294
	andl	$2, %eax	#, D.9294
	.loc 1 946 0 discriminator 2
	testl	%eax, %eax	# D.9294
	jne	.L266	#,
	.loc 1 949 0
	movl	-4(%rbp), %eax	# apos, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, D.9292
	movq	-24(%rbp), %rax	# matassign, tmp94
	addq	%rdx, %rax	# D.9292, D.9293
	movl	(%rax), %eax	# *_27, D.9294
	andl	$4, %eax	#, D.9294
	testl	%eax, %eax	# D.9294
	je	.L267	#,
.L266:
	.loc 1 946 0 discriminator 3
	movl	$60, %edx	#, iftmp.36
	jmp	.L268	#
.L267:
	.loc 1 946 0 is_stmt 0
	movl	$32, %edx	#, iftmp.36
.L268:
	.loc 1 948 0 is_stmt 1 discriminator 4
	movl	-4(%rbp), %eax	# apos, tmp95
	cltq
	leaq	0(,%rax,4), %rsi	#, D.9292
	movq	-24(%rbp), %rax	# matassign, tmp96
	addq	%rsi, %rax	# D.9292, D.9293
	movl	(%rax), %eax	# *_34, D.9294
	andl	$1, %eax	#, D.9294
	.loc 1 946 0 discriminator 4
	testl	%eax, %eax	# D.9294
	je	.L269	#,
	.loc 1 946 0 is_stmt 0 discriminator 5
	movl	$120, %eax	#, iftmp.37
	jmp	.L270	#
.L269:
	.loc 1 946 0 discriminator 6
	movl	$32, %eax	#, iftmp.37
.L270:
	.loc 1 946 0 discriminator 7
	movl	-4(%rbp), %esi	# apos, tmp97
	movl	%ecx, %r8d	# iftmp.35,
	movl	%edx, %ecx	# iftmp.36,
	movl	%eax, %edx	# iftmp.37,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 945 0 is_stmt 1 discriminator 7
	addl	$1, -4(%rbp)	#, apos
.L262:
	.loc 1 945 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# apos, tmp98
	cmpl	-28(%rbp), %eax	# alen, tmp98
	jle	.L271	#,
	.loc 1 953 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_matassign, .-print_matassign
	.section	.rodata
	.align 4
.LC2:
	.long	0
	.align 8
.LC3:
	.long	1693346863
	.long	1073157447
	.align 4
.LC4:
	.long	3323739136
	.align 4
.LC5:
	.long	1056964608
	.align 4
.LC6:
	.long	4286578687
	.text
.Letext0:
	.file 2 "gki.h"
	.file 3 "msa.h"
	.file 4 "structs.h"
	.file 5 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xed1
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
	.uleb128 0x4
	.byte	0x8
	.long	0x72
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x30
	.long	0xe3
	.uleb128 0x6
	.long	.LASF11
	.sleb128 256
	.uleb128 0x6
	.long	.LASF12
	.sleb128 512
	.uleb128 0x6
	.long	.LASF13
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF14
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF16
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF17
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF18
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF19
	.sleb128 1
	.uleb128 0x6
	.long	.LASF20
	.sleb128 2
	.uleb128 0x6
	.long	.LASF21
	.sleb128 4
	.uleb128 0x6
	.long	.LASF22
	.sleb128 8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF29
	.byte	0x18
	.byte	0x2
	.byte	0x1a
	.long	0x128
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x1b
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.string	"idx"
	.byte	0x2
	.byte	0x1c
	.long	0x57
	.byte	0x8
	.uleb128 0x8
	.string	"nxt"
	.byte	0x2
	.byte	0x1d
	.long	0x128
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xf7
	.uleb128 0x9
	.byte	0x18
	.byte	0x2
	.byte	0x24
	.long	0x167
	.uleb128 0xa
	.long	.LASF25
	.byte	0x2
	.byte	0x25
	.long	0x167
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.byte	0x27
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.byte	0x28
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.byte	0x29
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x128
	.uleb128 0xb
	.string	"GKI"
	.byte	0x2
	.byte	0x2a
	.long	0x12e
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0xc
	.long	.LASF30
	.value	0x168
	.byte	0x3
	.byte	0x70
	.long	0x3c0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x3
	.byte	0x73
	.long	0x178
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x3
	.byte	0x74
	.long	0x178
	.byte	0x8
	.uleb128 0x8
	.string	"wgt"
	.byte	0x3
	.byte	0x75
	.long	0x17e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF33
	.byte	0x3
	.byte	0x76
	.long	0x57
	.byte	0x18
	.uleb128 0xa
	.long	.LASF34
	.byte	0x3
	.byte	0x77
	.long	0x57
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0x3
	.byte	0x7b
	.long	0x57
	.byte	0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0x3
	.byte	0x7c
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF37
	.byte	0x3
	.byte	0x7d
	.long	0x6c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF38
	.byte	0x3
	.byte	0x7e
	.long	0x6c
	.byte	0x30
	.uleb128 0x8
	.string	"acc"
	.byte	0x3
	.byte	0x7f
	.long	0x6c
	.byte	0x38
	.uleb128 0x8
	.string	"au"
	.byte	0x3
	.byte	0x80
	.long	0x6c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF39
	.byte	0x3
	.byte	0x81
	.long	0x6c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF40
	.byte	0x3
	.byte	0x82
	.long	0x6c
	.byte	0x50
	.uleb128 0x8
	.string	"rf"
	.byte	0x3
	.byte	0x83
	.long	0x6c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF41
	.byte	0x3
	.byte	0x84
	.long	0x178
	.byte	0x60
	.uleb128 0xa
	.long	.LASF42
	.byte	0x3
	.byte	0x85
	.long	0x178
	.byte	0x68
	.uleb128 0x8
	.string	"ss"
	.byte	0x3
	.byte	0x86
	.long	0x178
	.byte	0x70
	.uleb128 0x8
	.string	"sa"
	.byte	0x3
	.byte	0x87
	.long	0x178
	.byte	0x78
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.byte	0x88
	.long	0x3c0
	.byte	0x80
	.uleb128 0xa
	.long	.LASF44
	.byte	0x3
	.byte	0x89
	.long	0x3d0
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x3
	.byte	0x90
	.long	0x178
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x3
	.byte	0x91
	.long	0x57
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x3
	.byte	0x92
	.long	0x57
	.byte	0xbc
	.uleb128 0xa
	.long	.LASF48
	.byte	0x3
	.byte	0x94
	.long	0x178
	.byte	0xc0
	.uleb128 0x8
	.string	"gf"
	.byte	0x3
	.byte	0x95
	.long	0x178
	.byte	0xc8
	.uleb128 0x8
	.string	"ngf"
	.byte	0x3
	.byte	0x96
	.long	0x57
	.byte	0xd0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x3
	.byte	0x97
	.long	0x57
	.byte	0xd4
	.uleb128 0xa
	.long	.LASF50
	.byte	0x3
	.byte	0x99
	.long	0x178
	.byte	0xd8
	.uleb128 0x8
	.string	"gs"
	.byte	0x3
	.byte	0x9a
	.long	0x3e0
	.byte	0xe0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x3
	.byte	0x9b
	.long	0x3e6
	.byte	0xe8
	.uleb128 0x8
	.string	"ngs"
	.byte	0x3
	.byte	0x9c
	.long	0x57
	.byte	0xf0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x3
	.byte	0x9e
	.long	0x178
	.byte	0xf8
	.uleb128 0xd
	.string	"gc"
	.byte	0x3
	.byte	0x9f
	.long	0x178
	.value	0x100
	.uleb128 0xe
	.long	.LASF53
	.byte	0x3
	.byte	0xa0
	.long	0x3e6
	.value	0x108
	.uleb128 0xd
	.string	"ngc"
	.byte	0x3
	.byte	0xa1
	.long	0x57
	.value	0x110
	.uleb128 0xe
	.long	.LASF54
	.byte	0x3
	.byte	0xa3
	.long	0x178
	.value	0x118
	.uleb128 0xd
	.string	"gr"
	.byte	0x3
	.byte	0xa4
	.long	0x3e0
	.value	0x120
	.uleb128 0xe
	.long	.LASF55
	.byte	0x3
	.byte	0xa5
	.long	0x3e6
	.value	0x128
	.uleb128 0xd
	.string	"ngr"
	.byte	0x3
	.byte	0xa6
	.long	0x57
	.value	0x130
	.uleb128 0xe
	.long	.LASF56
	.byte	0x3
	.byte	0xaa
	.long	0x3e6
	.value	0x138
	.uleb128 0xe
	.long	.LASF57
	.byte	0x3
	.byte	0xab
	.long	0x57
	.value	0x140
	.uleb128 0xe
	.long	.LASF58
	.byte	0x3
	.byte	0xac
	.long	0x57
	.value	0x144
	.uleb128 0xe
	.long	.LASF59
	.byte	0x3
	.byte	0xad
	.long	0xe3
	.value	0x148
	.uleb128 0xe
	.long	.LASF60
	.byte	0x3
	.byte	0xae
	.long	0xe3
	.value	0x150
	.uleb128 0xe
	.long	.LASF61
	.byte	0x3
	.byte	0xaf
	.long	0xe3
	.value	0x158
	.uleb128 0xe
	.long	.LASF62
	.byte	0x3
	.byte	0xb0
	.long	0x57
	.value	0x160
	.byte	0
	.uleb128 0xf
	.long	0x79
	.long	0x3d0
	.uleb128 0x10
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0x3e0
	.uleb128 0x10
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x178
	.uleb128 0x4
	.byte	0x8
	.long	0x16d
	.uleb128 0xb
	.string	"MSA"
	.byte	0x3
	.byte	0xb1
	.long	0x184
	.uleb128 0x4
	.byte	0x8
	.long	0x3ec
	.uleb128 0xc
	.long	.LASF63
	.value	0x1d0
	.byte	0x4
	.byte	0x65
	.long	0x654
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0x71
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.string	"acc"
	.byte	0x4
	.byte	0x72
	.long	0x6c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.byte	0x73
	.long	0x6c
	.byte	0x10
	.uleb128 0x8
	.string	"rf"
	.byte	0x4
	.byte	0x74
	.long	0x6c
	.byte	0x18
	.uleb128 0x8
	.string	"cs"
	.byte	0x4
	.byte	0x75
	.long	0x6c
	.byte	0x20
	.uleb128 0x8
	.string	"ca"
	.byte	0x4
	.byte	0x76
	.long	0x6c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF64
	.byte	0x4
	.byte	0x77
	.long	0x6c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.byte	0x78
	.long	0x57
	.byte	0x38
	.uleb128 0xa
	.long	.LASF65
	.byte	0x4
	.byte	0x79
	.long	0x6c
	.byte	0x40
	.uleb128 0x8
	.string	"map"
	.byte	0x4
	.byte	0x7a
	.long	0xe3
	.byte	0x48
	.uleb128 0xa
	.long	.LASF66
	.byte	0x4
	.byte	0x7b
	.long	0x57
	.byte	0x50
	.uleb128 0xa
	.long	.LASF67
	.byte	0x4
	.byte	0x86
	.long	0xe3
	.byte	0x58
	.uleb128 0xa
	.long	.LASF68
	.byte	0x4
	.byte	0x87
	.long	0xe3
	.byte	0x60
	.uleb128 0xa
	.long	.LASF69
	.byte	0x4
	.byte	0x88
	.long	0xe3
	.byte	0x68
	.uleb128 0x8
	.string	"ga1"
	.byte	0x4
	.byte	0x90
	.long	0x79
	.byte	0x70
	.uleb128 0x8
	.string	"ga2"
	.byte	0x4
	.byte	0x90
	.long	0x79
	.byte	0x74
	.uleb128 0x8
	.string	"tc1"
	.byte	0x4
	.byte	0x91
	.long	0x79
	.byte	0x78
	.uleb128 0x8
	.string	"tc2"
	.byte	0x4
	.byte	0x91
	.long	0x79
	.byte	0x7c
	.uleb128 0x8
	.string	"nc1"
	.byte	0x4
	.byte	0x92
	.long	0x79
	.byte	0x80
	.uleb128 0x8
	.string	"nc2"
	.byte	0x4
	.byte	0x92
	.long	0x79
	.byte	0x84
	.uleb128 0x8
	.string	"M"
	.byte	0x4
	.byte	0x9b
	.long	0x57
	.byte	0x88
	.uleb128 0x8
	.string	"t"
	.byte	0x4
	.byte	0x9c
	.long	0x654
	.byte	0x90
	.uleb128 0x8
	.string	"mat"
	.byte	0x4
	.byte	0x9d
	.long	0x654
	.byte	0x98
	.uleb128 0x8
	.string	"ins"
	.byte	0x4
	.byte	0x9e
	.long	0x654
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x4
	.byte	0x9f
	.long	0x79
	.byte	0xa8
	.uleb128 0x8
	.string	"xt"
	.byte	0x4
	.byte	0xa8
	.long	0x65a
	.byte	0xac
	.uleb128 0xa
	.long	.LASF71
	.byte	0x4
	.byte	0xa9
	.long	0x17e
	.byte	0xd0
	.uleb128 0x8
	.string	"end"
	.byte	0x4
	.byte	0xaa
	.long	0x17e
	.byte	0xd8
	.uleb128 0xa
	.long	.LASF72
	.byte	0x4
	.byte	0xae
	.long	0x670
	.byte	0xe0
	.uleb128 0xd
	.string	"p1"
	.byte	0x4
	.byte	0xaf
	.long	0x79
	.value	0x130
	.uleb128 0xd
	.string	"tsc"
	.byte	0x4
	.byte	0xc5
	.long	0x680
	.value	0x138
	.uleb128 0xd
	.string	"msc"
	.byte	0x4
	.byte	0xc6
	.long	0x680
	.value	0x140
	.uleb128 0xd
	.string	"isc"
	.byte	0x4
	.byte	0xc7
	.long	0x680
	.value	0x148
	.uleb128 0xd
	.string	"xsc"
	.byte	0x4
	.byte	0xc8
	.long	0x686
	.value	0x150
	.uleb128 0xd
	.string	"bsc"
	.byte	0x4
	.byte	0xc9
	.long	0xe3
	.value	0x170
	.uleb128 0xd
	.string	"esc"
	.byte	0x4
	.byte	0xca
	.long	0xe3
	.value	0x178
	.uleb128 0xe
	.long	.LASF73
	.byte	0x4
	.byte	0xcb
	.long	0xe3
	.value	0x180
	.uleb128 0xe
	.long	.LASF74
	.byte	0x4
	.byte	0xcb
	.long	0xe3
	.value	0x188
	.uleb128 0xe
	.long	.LASF75
	.byte	0x4
	.byte	0xcb
	.long	0xe3
	.value	0x190
	.uleb128 0xe
	.long	.LASF76
	.byte	0x4
	.byte	0xcb
	.long	0xe3
	.value	0x198
	.uleb128 0xe
	.long	.LASF77
	.byte	0x4
	.byte	0xcb
	.long	0xe3
	.value	0x1a0
	.uleb128 0xe
	.long	.LASF78
	.byte	0x4
	.byte	0xd6
	.long	0x680
	.value	0x1a8
	.uleb128 0xe
	.long	.LASF79
	.byte	0x4
	.byte	0xd7
	.long	0x680
	.value	0x1b0
	.uleb128 0xe
	.long	.LASF80
	.byte	0x4
	.byte	0xd8
	.long	0x57
	.value	0x1b8
	.uleb128 0xe
	.long	.LASF81
	.byte	0x4
	.byte	0xd9
	.long	0x57
	.value	0x1bc
	.uleb128 0xd
	.string	"mu"
	.byte	0x4
	.byte	0xde
	.long	0x79
	.value	0x1c0
	.uleb128 0xe
	.long	.LASF82
	.byte	0x4
	.byte	0xdf
	.long	0x79
	.value	0x1c4
	.uleb128 0xe
	.long	.LASF35
	.byte	0x4
	.byte	0xe1
	.long	0x57
	.value	0x1c8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x17e
	.uleb128 0xf
	.long	0x79
	.long	0x670
	.uleb128 0x10
	.long	0x65
	.byte	0x3
	.uleb128 0x10
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	0x79
	.long	0x680
	.uleb128 0x10
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xe3
	.uleb128 0xf
	.long	0x57
	.long	0x69c
	.uleb128 0x10
	.long	0x65
	.byte	0x3
	.uleb128 0x10
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6a2
	.uleb128 0x4
	.byte	0x8
	.long	0x3fd
	.uleb128 0x11
	.long	.LASF83
	.byte	0x20
	.byte	0x4
	.value	0x176
	.long	0x6ea
	.uleb128 0x12
	.long	.LASF84
	.byte	0x4
	.value	0x177
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x4
	.value	0x178
	.long	0x6c
	.byte	0x8
	.uleb128 0x12
	.long	.LASF86
	.byte	0x4
	.value	0x179
	.long	0xe3
	.byte	0x10
	.uleb128 0x13
	.string	"pos"
	.byte	0x4
	.value	0x17a
	.long	0xe3
	.byte	0x18
	.byte	0
	.uleb128 0x14
	.long	.LASF87
	.value	0x9c50
	.byte	0x4
	.value	0x181
	.long	0x779
	.uleb128 0x12
	.long	.LASF88
	.byte	0x4
	.value	0x182
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF89
	.byte	0x4
	.value	0x184
	.long	0x57
	.byte	0x4
	.uleb128 0x13
	.string	"tq"
	.byte	0x4
	.value	0x185
	.long	0x779
	.byte	0x8
	.uleb128 0x15
	.string	"t"
	.byte	0x4
	.value	0x186
	.long	0x789
	.value	0x328
	.uleb128 0x16
	.long	.LASF90
	.byte	0x4
	.value	0x188
	.long	0x57
	.value	0x1908
	.uleb128 0x15
	.string	"mq"
	.byte	0x4
	.value	0x189
	.long	0x779
	.value	0x190c
	.uleb128 0x15
	.string	"m"
	.byte	0x4
	.value	0x18a
	.long	0x79f
	.value	0x1c2c
	.uleb128 0x16
	.long	.LASF91
	.byte	0x4
	.value	0x18c
	.long	0x57
	.value	0x5aac
	.uleb128 0x15
	.string	"iq"
	.byte	0x4
	.value	0x18d
	.long	0x779
	.value	0x5ab0
	.uleb128 0x15
	.string	"i"
	.byte	0x4
	.value	0x18e
	.long	0x79f
	.value	0x5dd0
	.byte	0
	.uleb128 0xf
	.long	0x79
	.long	0x789
	.uleb128 0x10
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0xf
	.long	0x79
	.long	0x79f
	.uleb128 0x10
	.long	0x65
	.byte	0xc7
	.uleb128 0x10
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x79
	.long	0x7b5
	.uleb128 0x10
	.long	0x65
	.byte	0xc7
	.uleb128 0x10
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.long	.LASF96
	.byte	0x1
	.byte	0x64
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x827
	.uleb128 0x18
	.string	"msa"
	.byte	0x1
	.byte	0x64
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"dsq"
	.byte	0x1
	.byte	0x64
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x65
	.long	0x69c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0x65
	.long	0x827
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0x67
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0x68
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x82d
	.uleb128 0x4
	.byte	0x8
	.long	0x833
	.uleb128 0x4
	.byte	0x8
	.long	0x6a8
	.uleb128 0x17
	.long	.LASF97
	.byte	0x1
	.byte	0xa2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d8
	.uleb128 0x18
	.string	"msa"
	.byte	0x1
	.byte	0xa2
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"dsq"
	.byte	0x1
	.byte	0xa2
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.byte	0xa2
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xa3
	.long	0x69c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0xa3
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0xa5
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.byte	0xa6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0xa7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.byte	0xa8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF100
	.byte	0x1
	.byte	0xe3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xaed
	.uleb128 0x18
	.string	"msa"
	.byte	0x1
	.byte	0xe3
	.long	0x3f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x18
	.string	"dsq"
	.byte	0x1
	.byte	0xe3
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x19
	.long	.LASF98
	.byte	0x1
	.byte	0xe3
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.byte	0xe4
	.long	0xaed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0xe5
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.byte	0xe5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1
	.byte	0xe5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0xe6
	.long	0x69c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0xe6
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.byte	0xe8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.byte	0xe9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xea
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.byte	0xeb
	.long	0x654
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1b
	.string	"cij"
	.byte	0x1
	.byte	0xec
	.long	0xaf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.string	"tij"
	.byte	0x1
	.byte	0xec
	.long	0xaf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.byte	0xed
	.long	0x670
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.byte	0xee
	.long	0x670
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.byte	0xef
	.long	0x670
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.string	"sc"
	.byte	0x1
	.byte	0xf0
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.byte	0xf1
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1a
	.long	.LASF94
	.byte	0x1
	.byte	0xf2
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.byte	0xf3
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.byte	0xf4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.byte	0xf4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x1b
	.string	"bm1"
	.byte	0x1
	.byte	0xf5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x1b
	.string	"bm2"
	.byte	0x1
	.byte	0xf5
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.byte	0xf6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x1
	.byte	0xf7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x1b
	.string	"new"
	.byte	0x1
	.byte	0xf8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x1
	.byte	0xf8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x1
	.byte	0xf9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.byte	0xfa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.byte	0xfb
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6ea
	.uleb128 0xf
	.long	0x79
	.long	0xb03
	.uleb128 0x10
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.value	0x1b5
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9b
	.uleb128 0x1d
	.long	.LASF116
	.byte	0x1
	.value	0x1b5
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x1
	.value	0x1b5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x1b5
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x1b5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.value	0x1b5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.string	"wgt"
	.byte	0x1
	.value	0x1b6
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"cij"
	.byte	0x1
	.value	0x1b6
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x1b8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x1
	.value	0x1de
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfa
	.uleb128 0x1e
	.string	"msa"
	.byte	0x1
	.value	0x1de
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x1e0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF119
	.byte	0x1
	.value	0x1e1
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LASF115
	.byte	0x1
	.value	0x1e2
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.value	0x200
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xcaf
	.uleb128 0x1e
	.string	"msa"
	.byte	0x1
	.value	0x200
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"dsq"
	.byte	0x1
	.value	0x200
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x200
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF92
	.byte	0x1
	.value	0x201
	.long	0x69c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.long	.LASF93
	.byte	0x1
	.value	0x201
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1f
	.string	"hmm"
	.byte	0x1
	.value	0x203
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x204
	.long	0x82d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"M"
	.byte	0x1
	.value	0x205
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x206
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1
	.value	0x207
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x255
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xd70
	.uleb128 0x1d
	.long	.LASF31
	.byte	0x1
	.value	0x255
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF34
	.byte	0x1
	.value	0x255
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.value	0x255
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x255
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF93
	.byte	0x1
	.value	0x256
	.long	0x827
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"tr"
	.byte	0x1
	.value	0x258
	.long	0x82d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x259
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x25a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"k"
	.byte	0x1
	.value	0x25b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1
	.value	0x25c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF122
	.byte	0x1
	.value	0x25d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x2e9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xe06
	.uleb128 0x1e
	.string	"tr"
	.byte	0x1
	.value	0x2e9
	.long	0x833
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.value	0x2e9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1
	.value	0x2e9
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x1
	.value	0x2e9
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x2eb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.value	0x2ec
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"ndi"
	.byte	0x1
	.value	0x2ed
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"nid"
	.byte	0x1
	.value	0x2ed
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.value	0x347
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7d
	.uleb128 0x1e
	.string	"hmm"
	.byte	0x1
	.value	0x347
	.long	0x6a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x347
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"msa"
	.byte	0x1
	.value	0x347
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1
	.value	0x349
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"k"
	.byte	0x1
	.value	0x34a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.string	"pri"
	.byte	0x1
	.value	0x34b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.value	0x3ad
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xec9
	.uleb128 0x1d
	.long	.LASF94
	.byte	0x1
	.value	0x3ad
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF33
	.byte	0x1
	.value	0x3ad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF95
	.byte	0x1
	.value	0x3af
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF134
	.byte	0x4
	.byte	0x3b
	.long	0x57
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
.LASF101:
	.string	"prior"
.LASF18:
	.string	"_ISgraph"
.LASF129:
	.string	"annotate_model"
.LASF66:
	.string	"checksum"
.LASF85:
	.string	"statetype"
.LASF44:
	.string	"cutoff_is_set"
.LASF16:
	.string	"_ISspace"
.LASF75:
	.string	"isc_mem"
.LASF36:
	.string	"type"
.LASF77:
	.string	"esc_mem"
.LASF52:
	.string	"gc_tag"
.LASF49:
	.string	"alloc_ngf"
.LASF34:
	.string	"nseq"
.LASF24:
	.string	"long long unsigned int"
.LASF97:
	.string	"P7Fastmodelmaker"
.LASF73:
	.string	"tsc_mem"
.LASF103:
	.string	"matc"
.LASF13:
	.string	"_ISalpha"
.LASF130:
	.string	"print_matassign"
.LASF19:
	.string	"_ISblank"
.LASF14:
	.string	"_ISdigit"
.LASF82:
	.string	"lambda"
.LASF50:
	.string	"gs_tag"
.LASF23:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF126:
	.string	"ret_nid"
.LASF6:
	.string	"long int"
.LASF90:
	.string	"mnum"
.LASF79:
	.string	"dnai"
.LASF117:
	.string	"build_cij"
.LASF47:
	.string	"alloc_ncomment"
.LASF26:
	.string	"primelevel"
.LASF121:
	.string	"fake_tracebacks"
.LASF108:
	.string	"insopt"
.LASF58:
	.string	"nseqlump"
.LASF33:
	.string	"alen"
.LASF41:
	.string	"sqacc"
.LASF96:
	.string	"P7Handmodelmaker"
.LASF21:
	.string	"_ISpunct"
.LASF3:
	.string	"unsigned int"
.LASF61:
	.string	"salen"
.LASF62:
	.string	"lastidx"
.LASF0:
	.string	"long unsigned int"
.LASF134:
	.string	"Alphabet_size"
.LASF106:
	.string	"insc"
.LASF74:
	.string	"msc_mem"
.LASF37:
	.string	"name"
.LASF112:
	.string	"t_me"
.LASF105:
	.string	"insp"
.LASF2:
	.string	"short unsigned int"
.LASF110:
	.string	"last"
.LASF30:
	.string	"msa_struct"
.LASF104:
	.string	"matp"
.LASF68:
	.string	"mpri"
.LASF119:
	.string	"total"
.LASF124:
	.string	"mlen"
.LASF65:
	.string	"ctime"
.LASF39:
	.string	"ss_cons"
.LASF53:
	.string	"gc_idx"
.LASF42:
	.string	"sqdesc"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"gr_tag"
.LASF100:
	.string	"P7Maxmodelmaker"
.LASF31:
	.string	"aseq"
.LASF125:
	.string	"ret_ndi"
.LASF107:
	.string	"tbck"
.LASF87:
	.string	"p7prior_s"
.LASF76:
	.string	"bsc_mem"
.LASF60:
	.string	"sslen"
.LASF88:
	.string	"strategy"
.LASF70:
	.string	"tbd1"
.LASF38:
	.string	"desc"
.LASF78:
	.string	"dnam"
.LASF51:
	.string	"gs_idx"
.LASF57:
	.string	"nseqalloc"
.LASF115:
	.string	"wgtsum"
.LASF59:
	.string	"sqlen"
.LASF64:
	.string	"comlog"
.LASF113:
	.string	"bestsc"
.LASF122:
	.string	"tpos"
.LASF9:
	.string	"float"
.LASF95:
	.string	"apos"
.LASF132:
	.string	"modelmakers.c"
.LASF72:
	.string	"null"
.LASF91:
	.string	"inum"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"null_p1"
.LASF45:
	.string	"comment"
.LASF80:
	.string	"dna2"
.LASF63:
	.string	"plan7_s"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"table"
.LASF28:
	.string	"nkeys"
.LASF99:
	.string	"ngap"
.LASF10:
	.string	"double"
.LASF89:
	.string	"tnum"
.LASF109:
	.string	"first"
.LASF8:
	.string	"char"
.LASF40:
	.string	"sa_cons"
.LASF29:
	.string	"gki_elem"
.LASF20:
	.string	"_IScntrl"
.LASF118:
	.string	"estimate_model_length"
.LASF98:
	.string	"maxgap"
.LASF15:
	.string	"_ISxdigit"
.LASF56:
	.string	"index"
.LASF12:
	.string	"_ISlower"
.LASF92:
	.string	"ret_hmm"
.LASF86:
	.string	"nodeidx"
.LASF46:
	.string	"ncomment"
.LASF123:
	.string	"trace_doctor"
.LASF127:
	.string	"opos"
.LASF43:
	.string	"cutoff"
.LASF120:
	.string	"matassign2hmm"
.LASF114:
	.string	"code"
.LASF116:
	.string	"aseqs"
.LASF69:
	.string	"ipri"
.LASF22:
	.string	"_ISalnum"
.LASF94:
	.string	"matassign"
.LASF81:
	.string	"dna4"
.LASF11:
	.string	"_ISupper"
.LASF93:
	.string	"ret_tr"
.LASF131:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF35:
	.string	"flags"
.LASF32:
	.string	"sqname"
.LASF83:
	.string	"p7trace_s"
.LASF55:
	.string	"gr_idx"
.LASF27:
	.string	"nhash"
.LASF128:
	.string	"npos"
.LASF111:
	.string	"est_M"
.LASF133:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF71:
	.string	"begin"
.LASF67:
	.string	"tpri"
.LASF48:
	.string	"gf_tag"
.LASF17:
	.string	"_ISprint"
.LASF84:
	.string	"tlen"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
