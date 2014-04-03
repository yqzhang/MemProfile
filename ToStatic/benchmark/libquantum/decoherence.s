	.file	"decoherence.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX decoherence.c -mtune=generic
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
	.globl	status
	.bss
	.align 4
	.type	status, @object
	.size	status, 4
status:
	.zero	4
	.globl	lambda
	.align 4
	.type	lambda, @object
	.size	lambda, 4
lambda:
	.zero	4
	.text
	.globl	quantum_get_decoherence
	.type	quantum_get_decoherence, @function
quantum_get_decoherence:
.LFB8:
	.file 1 "decoherence.c"
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 50 0
	movl	lambda(%rip), %eax	# lambda, D.4280
	.loc 1 51 0
	movl	%eax, -4(%rbp)	# <retval>, %sfp
	movss	-4(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_get_decoherence, .-quantum_get_decoherence
	.globl	quantum_set_decoherence
	.type	quantum_set_decoherence, @function
quantum_set_decoherence:
.LFB9:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)	# l, l
	.loc 1 59 0
	xorps	%xmm0, %xmm0	# tmp59
	ucomiss	-4(%rbp), %xmm0	# l, tmp59
	jp	.L7	#,
	xorps	%xmm0, %xmm0	# tmp60
	ucomiss	-4(%rbp), %xmm0	# l, tmp60
	je	.L8	#,
.L7:
	.loc 1 61 0
	movl	$1, status(%rip)	#, status
	.loc 1 62 0
	movl	-4(%rbp), %eax	# l, tmp61
	movl	%eax, lambda(%rip)	# tmp61, lambda
	jmp	.L3	#
.L8:
	.loc 1 65 0
	movl	$0, status(%rip)	#, status
.L3:
	.loc 1 66 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_set_decoherence, .-quantum_set_decoherence
	.section	.rodata
	.align 8
.LC1:
	.string	"Not enough memory for %i-sized array of float!\n"
	.text
	.globl	quantum_decohere
	.type	quantum_decohere, @function
quantum_decohere:
.LFB10:
	.loc 1 74 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -88(%rbp)	# reg, reg
	.loc 1 82 0
	movl	$1, %edi	#,
	call	quantum_gate_counter	#
	.loc 1 84 0
	movl	status(%rip), %eax	# status, status.0
	testl	%eax, %eax	# status.0
	je	.L9	#,
	.loc 1 87 0
	movq	-88(%rbp), %rax	# reg, tmp136
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.4283,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp137, nrands
	.loc 1 88 0
	cmpq	$0, -40(%rbp)	#, nrands
	jne	.L11	#,
	.loc 1 90 0
	movq	-88(%rbp), %rax	# reg, tmp138
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	movl	%eax, %esi	# D.4282,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 92 0
	movl	$1, %edi	#,
	call	exit	#
.L11:
	.loc 1 94 0
	movq	-88(%rbp), %rax	# reg, tmp139
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	cltq
	salq	$2, %rax	#, D.4283
	movq	%rax, %rdi	# D.4284,
	call	quantum_memman	#
	.loc 1 96 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 101 0 discriminator 1
	movl	$0, %eax	#,
	call	quantum_frand	#
	addsd	%xmm0, %xmm0	# D.4285, D.4285
	movsd	.LC2(%rip), %xmm1	#, tmp140
	subsd	%xmm1, %xmm0	# tmp140, D.4285
	unpcklpd	%xmm0, %xmm0	# D.4285
	cvtpd2ps	%xmm0, %xmm4	# D.4285, tmp176
	movss	%xmm4, -56(%rbp)	# tmp176, u
	.loc 1 102 0 discriminator 1
	movl	$0, %eax	#,
	call	quantum_frand	#
	addsd	%xmm0, %xmm0	# D.4285, D.4285
	movsd	.LC2(%rip), %xmm1	#, tmp141
	subsd	%xmm1, %xmm0	# tmp141, D.4285
	unpcklpd	%xmm0, %xmm0	# D.4285
	cvtpd2ps	%xmm0, %xmm5	# D.4285, tmp177
	movss	%xmm5, -52(%rbp)	# tmp177, v
	.loc 1 103 0 discriminator 1
	movss	-56(%rbp), %xmm0	# u, tmp142
	movaps	%xmm0, %xmm1	# tmp142, D.4286
	mulss	-56(%rbp), %xmm1	# u, D.4286
	movss	-52(%rbp), %xmm0	# v, tmp143
	mulss	-52(%rbp), %xmm0	# v, D.4286
	addss	%xmm1, %xmm0	# D.4286, tmp144
	movss	%xmm0, -48(%rbp)	# tmp144, s
	.loc 1 104 0 discriminator 1
	movss	-48(%rbp), %xmm0	# s, tmp145
	movss	.LC3(%rip), %xmm1	#, tmp146
	ucomiss	%xmm1, %xmm0	# tmp146, tmp145
	jae	.L13	#,
	.loc 1 106 0
	movss	-56(%rbp), %xmm6	# u, D.4285
	cvtps2pd	%xmm6, %xmm6	# D.4285, D.4285
	movsd	%xmm6, -112(%rbp)	# D.4285, %sfp
	movss	-48(%rbp), %xmm0	# s, D.4285
	cvtps2pd	%xmm0, %xmm0	# D.4285, D.4285
	call	log	#
	movsd	.LC4(%rip), %xmm1	#, tmp147
	mulsd	%xmm1, %xmm0	# tmp147, D.4285
	movss	-48(%rbp), %xmm1	# s, D.4285
	cvtps2pd	%xmm1, %xmm1	# D.4285, D.4285
	divsd	%xmm1, %xmm0	# D.4285, D.4285
	call	sqrt	#
	mulsd	-112(%rbp), %xmm0	# %sfp, D.4285
	unpcklpd	%xmm0, %xmm0	# D.4285
	cvtpd2ps	%xmm0, %xmm7	# D.4285, tmp180
	movss	%xmm7, -44(%rbp)	# tmp180, x
	.loc 1 108 0
	movss	-44(%rbp), %xmm2	# x, D.4285
	cvtps2pd	%xmm2, %xmm2	# D.4285, D.4285
	movsd	%xmm2, -112(%rbp)	# D.4285, %sfp
	movss	lambda(%rip), %xmm0	# lambda, lambda.1
	addss	%xmm0, %xmm0	# lambda.1, D.4286
	unpcklps	%xmm0, %xmm0	# D.4286, D.4286
	cvtps2pd	%xmm0, %xmm0	# D.4286, D.4285
	call	sqrt	#
	mulsd	-112(%rbp), %xmm0	# %sfp, D.4285
	unpcklpd	%xmm0, %xmm0	# D.4285
	cvtpd2ps	%xmm0, %xmm3	# D.4285, tmp182
	movss	%xmm3, -44(%rbp)	# tmp182, x
	.loc 1 110 0
	movl	-64(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4283
	movq	-40(%rbp), %rax	# nrands, tmp149
	addq	%rdx, %rax	# D.4283, D.4287
	movss	-44(%rbp), %xmm0	# x, tmp150
	movss	.LC5(%rip), %xmm1	#, tmp151
	divss	%xmm1, %xmm0	# tmp151, D.4286
	movss	%xmm0, (%rax)	# D.4286, *_47
	.loc 1 96 0
	addl	$1, -64(%rbp)	#, i
.L12:
	.loc 1 96 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# reg, tmp152
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	cmpl	-64(%rbp), %eax	# i, D.4282
	jg	.L13	#,
	.loc 1 116 0 is_stmt 1
	movl	$0, -64(%rbp)	#, i
	jmp	.L14	#
.L19:
	.loc 1 118 0
	movl	.LC0(%rip), %eax	#, tmp153
	movl	%eax, -68(%rbp)	# tmp153, angle
	.loc 1 120 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L15	#
.L18:
	.loc 1 122 0
	movq	-88(%rbp), %rax	# reg, tmp154
	movq	16(%rax), %rax	# reg_7(D)->node, D.4288
	movl	-64(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.4283
	salq	$4, %rdx	#, D.4283
	addq	%rdx, %rax	# D.4283, D.4288
	movq	8(%rax), %rdx	# _58->state, D.4289
	movl	-60(%rbp), %eax	# j, tmp156
	movl	%eax, %ecx	# tmp156, tmp184
	shrq	%cl, %rdx	# tmp184, D.4289
	movq	%rdx, %rax	# D.4289, D.4289
	andl	$1, %eax	#, D.4289
	testq	%rax, %rax	# D.4289
	je	.L16	#,
	.loc 1 123 0
	movl	-60(%rbp), %eax	# j, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4283
	movq	-40(%rbp), %rax	# nrands, tmp158
	addq	%rdx, %rax	# D.4283, D.4287
	movss	(%rax), %xmm0	# *_64, D.4286
	movss	-68(%rbp), %xmm1	# angle, tmp160
	addss	%xmm1, %xmm0	# tmp160, tmp159
	movss	%xmm0, -68(%rbp)	# tmp159, angle
	jmp	.L17	#
.L16:
	.loc 1 125 0
	movl	-60(%rbp), %eax	# j, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, D.4283
	movq	-40(%rbp), %rax	# nrands, tmp162
	addq	%rdx, %rax	# D.4283, D.4287
	movss	(%rax), %xmm1	# *_69, D.4286
	movss	-68(%rbp), %xmm0	# angle, tmp164
	subss	%xmm1, %xmm0	# D.4286, tmp163
	movss	%xmm0, -68(%rbp)	# tmp163, angle
.L17:
	.loc 1 120 0
	addl	$1, -60(%rbp)	#, j
.L15:
	.loc 1 120 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# reg, tmp165
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	cmpl	-60(%rbp), %eax	# j, D.4282
	jg	.L18	#,
	.loc 1 128 0 is_stmt 1
	movq	-88(%rbp), %rax	# reg, tmp166
	movq	16(%rax), %rax	# reg_7(D)->node, D.4288
	movl	-64(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.4283
	salq	$4, %rdx	#, D.4283
	leaq	(%rax,%rdx), %r13	#, D.4288
	movq	-88(%rbp), %rax	# reg, tmp168
	movq	16(%rax), %rax	# reg_7(D)->node, D.4288
	movl	-64(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.4283
	salq	$4, %rdx	#, D.4283
	addq	%rdx, %rax	# D.4283, D.4288
	movl	(%rax), %ebx	# _80->amplitude, D.4286
	movl	4(%rax), %r12d	# _80->amplitude, D.4286
	movl	-68(%rbp), %eax	# angle, tmp170
	movl	%eax, -112(%rbp)	# tmp170, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	quantum_cexp	#
	movq	%xmm0, -112(%rbp)	#, %sfp
	movq	-112(%rbp), %rax	# %sfp, tmp171
	movq	%rax, -96(%rbp)	# tmp171,
	movl	-96(%rbp), %eax	#, D.4290
	movl	-92(%rbp), %edx	#, D.4290
	movl	%edx, -112(%rbp)	# D.4286, %sfp
	movss	-112(%rbp), %xmm3	# %sfp,
	movl	%eax, -112(%rbp)	# D.4286, %sfp
	movss	-112(%rbp), %xmm2	# %sfp,
	movl	%r12d, -112(%rbp)	# D.4286, %sfp
	movss	-112(%rbp), %xmm1	# %sfp,
	movl	%ebx, -112(%rbp)	# D.4286, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -112(%rbp)	#, %sfp
	movq	-112(%rbp), %rax	# %sfp, tmp172
	movq	%rax, -104(%rbp)	# tmp172,
	movl	-104(%rbp), %edx	#, D.4290
	movl	-100(%rbp), %eax	#, D.4290
	movl	%edx, 0(%r13)	# D.4286, *_76
	movl	%eax, 4(%r13)	# D.4286, *_76
	.loc 1 116 0
	addl	$1, -64(%rbp)	#, i
.L14:
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# reg, tmp173
	movl	4(%rax), %eax	# reg_7(D)->size, D.4282
	cmpl	-64(%rbp), %eax	# i, D.4282
	jg	.L19	#,
	.loc 1 131 0 is_stmt 1
	movq	-40(%rbp), %rax	# nrands, tmp174
	movq	%rax, %rdi	# tmp174,
	call	free	#
	.loc 1 132 0
	movq	-88(%rbp), %rax	# reg, tmp175
	movl	(%rax), %eax	# reg_7(D)->width, D.4282
	negl	%eax	# D.4282
	cltq
	salq	$2, %rax	#, D.4283
	movq	%rax, %rdi	# D.4284,
	call	quantum_memman	#
.L9:
	.loc 1 135 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_decohere, .-quantum_decohere
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 4
.LC3:
	.long	1065353216
	.align 8
.LC4:
	.long	0
	.long	-1073741824
	.align 4
.LC5:
	.long	1073741824
	.text
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x236
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1
	.long	.LASF32
	.long	.LASF33
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF16
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0xc1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x25
	.long	0x95
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x26
	.long	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x29
	.long	0x9c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x115
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x2f
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x30
	.long	0x3b
	.byte	0x4
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x31
	.long	0x3b
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x32
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x33
	.long	0x81
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x36
	.long	0xcc
	.uleb128 0x8
	.long	.LASF34
	.byte	0x1
	.byte	0x30
	.long	0x2d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x39
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d
	.uleb128 0xa
	.string	"l"
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x49
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x203
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x49
	.long	0x203
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xc
	.string	"u"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.string	"v"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.string	"s"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"x"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.byte	0x4c
	.long	0x209
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x4d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.byte	0x4e
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x11b
	.uleb128 0x4
	.byte	0x8
	.long	0x2d
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x28
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	status
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x2d
	.long	0x2d
	.uleb128 0x9
	.byte	0x3
	.quad	lambda
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF27:
	.string	"nrands"
.LASF15:
	.string	"state"
.LASF14:
	.string	"amplitude"
.LASF17:
	.string	"quantum_reg_struct"
.LASF23:
	.string	"quantum_reg_node"
.LASF13:
	.string	"complex float"
.LASF29:
	.string	"status"
.LASF32:
	.string	"decoherence.c"
.LASF0:
	.string	"float"
.LASF33:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"size"
.LASF3:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF28:
	.string	"angle"
.LASF18:
	.string	"width"
.LASF4:
	.string	"unsigned char"
.LASF1:
	.string	"double"
.LASF20:
	.string	"hashw"
.LASF30:
	.string	"lambda"
.LASF6:
	.string	"unsigned int"
.LASF16:
	.string	"quantum_reg_node_struct"
.LASF24:
	.string	"quantum_reg"
.LASF12:
	.string	"long long unsigned int"
.LASF22:
	.string	"hash"
.LASF10:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"char"
.LASF25:
	.string	"quantum_set_decoherence"
.LASF31:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF8:
	.string	"short int"
.LASF21:
	.string	"node"
.LASF9:
	.string	"long int"
.LASF7:
	.string	"signed char"
.LASF34:
	.string	"quantum_get_decoherence"
.LASF26:
	.string	"quantum_decohere"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
