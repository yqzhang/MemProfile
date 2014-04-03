	.file	"measure.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX measure.c -mtune=generic -march=x86-64
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
	.type	quantum_real, @function
quantum_real:
.LFB5:
	.file 1 "lq_complex.h"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, -40(%rbp)	# a, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp63
	movq	%rax, -24(%rbp)	# tmp63,
	movl	-24(%rbp), %edx	#, tmp61
	movl	-20(%rbp), %eax	#, tmp62
	movl	%edx, -32(%rbp)	# tmp61, a
	movl	%eax, -28(%rbp)	# tmp62, a
	.loc 1 40 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 1 41 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	(%rax), %eax	# *p_1, D.4465
	.loc 1 42 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_real, .-quantum_real
	.type	quantum_imag, @function
quantum_imag:
.LFB6:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%xmm0, -40(%rbp)	# a, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp63
	movq	%rax, -24(%rbp)	# tmp63,
	movl	-24(%rbp), %edx	#, tmp61
	movl	-20(%rbp), %eax	#, tmp62
	movl	%edx, -32(%rbp)	# tmp61, a
	movl	%eax, -28(%rbp)	# tmp62, a
	.loc 1 49 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 1 50 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	4(%rax), %eax	# MEM[(float *)p_1 + 4B], D.4467
	.loc 1 51 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_imag, .-quantum_imag
	.type	quantum_prob_inline, @function
quantum_prob_inline:
.LFB7:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%xmm0, -40(%rbp)	# a, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp65
	movq	%rax, -24(%rbp)	# tmp65,
	movl	-24(%rbp), %edx	#, tmp63
	movl	-20(%rbp), %eax	#, tmp64
	movl	%edx, -32(%rbp)	# tmp63, a
	movl	%eax, -28(%rbp)	# tmp64, a
	.loc 1 60 0
	movq	-32(%rbp), %rax	# a, tmp66
	movq	%rax, -40(%rbp)	# tmp66, %sfp
	movq	-40(%rbp), %xmm0	# %sfp,
	call	quantum_real	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp67
	movl	%eax, -8(%rbp)	# tmp67, r
	.loc 1 61 0
	movq	-32(%rbp), %rax	# a, tmp68
	movq	%rax, -40(%rbp)	# tmp68, %sfp
	movq	-40(%rbp), %xmm0	# %sfp,
	call	quantum_imag	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp69
	movl	%eax, -4(%rbp)	# tmp69, i
	.loc 1 63 0
	movss	-8(%rbp), %xmm0	# r, tmp70
	movaps	%xmm0, %xmm1	# tmp70, D.4468
	mulss	-8(%rbp), %xmm1	# r, D.4468
	movss	-4(%rbp), %xmm0	# i, tmp71
	mulss	-4(%rbp), %xmm0	# i, D.4468
	addss	%xmm1, %xmm0	# D.4468, D.4468
	movss	%xmm0, -40(%rbp)	# D.4468, %sfp
	movl	-40(%rbp), %eax	# %sfp, <retval>
	.loc 1 64 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_prob_inline, .-quantum_prob_inline
	.globl	quantum_frand
	.type	quantum_frand, @function
quantum_frand:
.LFB8:
	.file 2 "measure.c"
	.loc 2 51 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 2 53 0
	call	spec_rand	#
	movsd	%xmm0, -8(%rbp)	#, %sfp
	movq	-8(%rbp), %rax	# %sfp, D.4469
	.loc 2 57 0
	movq	%rax, -8(%rbp)	# <retval>, %sfp
	movsd	-8(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_frand, .-quantum_frand
	.globl	quantum_measure
	.type	quantum_measure, @function
quantum_measure:
.LFB9:
	.loc 2 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 2 67 0
	movl	$128, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.4471
	je	.L10	#,
	.loc 2 68 0
	movl	$0, %eax	#, D.4470
	jmp	.L11	#
.L10:
	.loc 2 72 0
	movl	$0, %eax	#,
	call	quantum_frand	#
	movsd	%xmm0, -32(%rbp)	#, %sfp
	movq	-32(%rbp), %rax	# %sfp, tmp75
	movq	%rax, -8(%rbp)	# tmp75, r
	.loc 2 74 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L12	#
.L15:
	.loc 2 80 0
	movq	32(%rbp), %rax	# reg.node, D.4472
	movl	-12(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, D.4473
	salq	$4, %rdx	#, D.4473
	addq	%rdx, %rax	# D.4473, D.4472
	movl	(%rax), %edx	# _12->amplitude, D.4474
	movl	4(%rax), %eax	# _12->amplitude, D.4474
	movl	%edx, -24(%rbp)	# tmp77,
	movl	%eax, -20(%rbp)	# tmp78,
	movq	-24(%rbp), %rax	#, tmp79
	movq	%rax, -32(%rbp)	# tmp79, %sfp
	movq	-32(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4475, D.4475
	cvtps2pd	%xmm0, %xmm0	# D.4475, D.4476
	movsd	-8(%rbp), %xmm1	# r, tmp81
	subsd	%xmm0, %xmm1	# D.4476, tmp80
	movapd	%xmm1, %xmm0	# tmp80, tmp80
	movsd	%xmm0, -8(%rbp)	# tmp80, r
	.loc 2 81 0
	xorpd	%xmm0, %xmm0	# tmp82
	ucomisd	-8(%rbp), %xmm0	# r, tmp82
	jb	.L17	#,
	.loc 2 82 0
	movq	32(%rbp), %rax	# reg.node, D.4472
	movl	-12(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.4473
	salq	$4, %rdx	#, D.4473
	addq	%rdx, %rax	# D.4473, D.4472
	movq	8(%rax), %rax	# _20->state, D.4470
	jmp	.L11	#
.L17:
	.loc 2 74 0
	addl	$1, -12(%rbp)	#, i
.L12:
	.loc 2 74 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4471
	cmpl	-12(%rbp), %eax	# i, D.4471
	jg	.L15	#,
	.loc 2 90 0 is_stmt 1
	movq	$-1, %rax	#, D.4470
.L11:
	.loc 2 91 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_measure, .-quantum_measure
	.globl	quantum_bmeasure
	.type	quantum_bmeasure, @function
quantum_bmeasure:
.LFB10:
	.loc 2 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%edi, -68(%rbp)	# pos, pos
	movq	%rsi, -80(%rbp)	# reg, reg
	.loc 2 102 0
	movl	$0, -60(%rbp)	#, result
	.loc 2 103 0
	movl	$0, %eax	#, tmp77
	movq	%rax, -56(%rbp)	# tmp77, pa
	.loc 2 107 0
	movl	-68(%rbp), %eax	# pos, tmp78
	movl	%eax, %esi	# tmp78,
	movl	$129, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.4477
	je	.L19	#,
	.loc 2 108 0
	movl	$0, %eax	#, D.4477
	jmp	.L26	#
.L19:
	.loc 2 110 0
	movl	-68(%rbp), %eax	# pos, tmp79
	movl	$1, %edx	#, tmp80
	movl	%eax, %ecx	# tmp79, tmp110
	salq	%cl, %rdx	# tmp110, tmp81
	movq	%rdx, %rax	# tmp81, tmp81
	movq	%rax, -48(%rbp)	# tmp81, pos2
	.loc 2 114 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L21	#
.L23:
	.loc 2 116 0
	movq	-80(%rbp), %rax	# reg, tmp82
	movq	16(%rax), %rax	# reg_13(D)->node, D.4478
	movl	-64(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.4479
	salq	$4, %rdx	#, D.4479
	addq	%rdx, %rax	# D.4479, D.4478
	movq	8(%rax), %rax	# _18->state, D.4480
	andq	-48(%rbp), %rax	# pos2, D.4480
	testq	%rax, %rax	# D.4480
	jne	.L22	#,
	.loc 2 117 0
	movq	-80(%rbp), %rax	# reg, tmp84
	movq	16(%rax), %rax	# reg_13(D)->node, D.4478
	movl	-64(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.4479
	salq	$4, %rdx	#, D.4479
	addq	%rdx, %rax	# D.4479, D.4478
	movl	(%rax), %edx	# _24->amplitude, D.4481
	movl	4(%rax), %eax	# _24->amplitude, D.4481
	movl	%edx, -88(%rbp)	# tmp86,
	movl	%eax, -84(%rbp)	# tmp87,
	movq	-88(%rbp), %rax	#, tmp88
	movq	%rax, -96(%rbp)	# tmp88, %sfp
	movq	-96(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4482, D.4482
	cvtps2pd	%xmm0, %xmm0	# D.4482, D.4483
	movsd	-56(%rbp), %xmm1	# pa, tmp90
	addsd	%xmm1, %xmm0	# tmp90, tmp89
	movsd	%xmm0, -56(%rbp)	# tmp89, pa
.L22:
	.loc 2 114 0
	addl	$1, -64(%rbp)	#, i
.L21:
	.loc 2 114 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# reg, tmp91
	movl	4(%rax), %eax	# reg_13(D)->size, D.4477
	cmpl	-64(%rbp), %eax	# i, D.4477
	jg	.L23	#,
	.loc 2 123 0 is_stmt 1
	movl	$0, %eax	#,
	call	quantum_frand	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, tmp92
	movq	%rax, -40(%rbp)	# tmp92, r
	.loc 2 125 0
	movsd	-40(%rbp), %xmm0	# r, tmp93
	ucomisd	-56(%rbp), %xmm0	# pa, tmp93
	jbe	.L24	#,
	.loc 2 126 0
	movl	$1, -60(%rbp)	#, result
.L24:
	.loc 2 128 0
	leaq	-32(%rbp), %rcx	#, tmp94
	movl	-60(%rbp), %edx	# result, tmp95
	movl	-68(%rbp), %esi	# pos, tmp96
	movq	-80(%rbp), %rax	# reg, tmp97
	movq	(%rax), %rdi	# *reg_13(D), tmp98
	movq	%rdi, (%rsp)	# tmp98,
	movq	8(%rax), %rdi	# *reg_13(D), tmp99
	movq	%rdi, 8(%rsp)	# tmp99,
	movq	16(%rax), %rdi	# *reg_13(D), tmp100
	movq	%rdi, 16(%rsp)	# tmp100,
	movq	24(%rax), %rax	# *reg_13(D), tmp101
	movq	%rax, 24(%rsp)	# tmp101,
	movq	%rcx, %rdi	# tmp94,
	call	quantum_state_collapse	#
	.loc 2 130 0
	movq	-80(%rbp), %rax	# reg, tmp102
	movq	%rax, %rdi	# tmp102,
	call	quantum_delete_qureg_hashpreserve	#
	.loc 2 131 0
	movq	-80(%rbp), %rax	# reg, tmp103
	movq	-32(%rbp), %rdx	# out, tmp104
	movq	%rdx, (%rax)	# tmp104, *reg_13(D)
	movq	-24(%rbp), %rdx	# out, tmp105
	movq	%rdx, 8(%rax)	# tmp105, *reg_13(D)
	movq	-16(%rbp), %rdx	# out, tmp106
	movq	%rdx, 16(%rax)	# tmp106, *reg_13(D)
	movq	-8(%rbp), %rdx	# out, tmp107
	movq	%rdx, 24(%rax)	# tmp107, *reg_13(D)
	.loc 2 133 0
	movl	-60(%rbp), %eax	# result, D.4477
.L26:
	.loc 2 134 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_bmeasure, .-quantum_bmeasure
	.section	.rodata
	.align 8
.LC2:
	.string	"Not enough memory for %i-sized qubit!\n"
	.align 4
.LC1:
	.long	0
	.long	0
	.text
	.globl	quantum_bmeasure_bitpreserve
	.type	quantum_bmeasure_bitpreserve, @function
quantum_bmeasure_bitpreserve:
.LFB11:
	.loc 2 141 0
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
	movl	%edi, -100(%rbp)	# pos, pos
	movq	%rsi, -112(%rbp)	# reg, reg
	.loc 2 143 0
	movl	$0, -88(%rbp)	#, size
	movl	$0, -84(%rbp)	#, result
	.loc 2 144 0
	movl	$0, %eax	#, tmp161
	movq	%rax, -80(%rbp)	# tmp161, d
	movl	$0, %eax	#, tmp162
	movq	%rax, -72(%rbp)	# tmp162, pa
	.loc 2 148 0
	movl	-100(%rbp), %eax	# pos, tmp163
	movl	%eax, %esi	# tmp163,
	movl	$130, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.4486
	je	.L29	#,
	.loc 2 149 0
	movl	$0, %eax	#, D.4486
	jmp	.L49	#
.L29:
	.loc 2 151 0
	movl	-100(%rbp), %eax	# pos, tmp164
	movl	$1, %edx	#, tmp165
	movl	%eax, %ecx	# tmp164, tmp234
	salq	%cl, %rdx	# tmp234, tmp166
	movq	%rdx, %rax	# tmp166, tmp166
	movq	%rax, -64(%rbp)	# tmp166, pos2
	.loc 2 155 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L31	#
.L33:
	.loc 2 157 0
	movq	-112(%rbp), %rax	# reg, tmp167
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movq	8(%rax), %rax	# _30->state, D.4489
	andq	-64(%rbp), %rax	# pos2, D.4489
	testq	%rax, %rax	# D.4489
	jne	.L32	#,
	.loc 2 158 0
	movq	-112(%rbp), %rax	# reg, tmp169
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp170
	movslq	%edx, %rdx	# tmp170, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movl	(%rax), %edx	# _36->amplitude, D.4490
	movl	4(%rax), %eax	# _36->amplitude, D.4490
	movl	%edx, -120(%rbp)	# tmp171,
	movl	%eax, -116(%rbp)	# tmp172,
	movq	-120(%rbp), %rax	#, tmp173
	movq	%rax, -144(%rbp)	# tmp173, %sfp
	movq	-144(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4491, D.4491
	cvtps2pd	%xmm0, %xmm0	# D.4491, D.4492
	movsd	-72(%rbp), %xmm1	# pa, tmp175
	addsd	%xmm1, %xmm0	# tmp175, tmp174
	movsd	%xmm0, -72(%rbp)	# tmp174, pa
.L32:
	.loc 2 155 0
	addl	$1, -96(%rbp)	#, i
.L31:
	.loc 2 155 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp176
	movl	4(%rax), %eax	# reg_25(D)->size, D.4486
	cmpl	-96(%rbp), %eax	# i, D.4486
	jg	.L33	#,
	.loc 2 164 0 is_stmt 1
	movl	$0, %eax	#,
	call	quantum_frand	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rax	# %sfp, tmp177
	movq	%rax, -56(%rbp)	# tmp177, r
	.loc 2 166 0
	movsd	-56(%rbp), %xmm0	# r, tmp178
	ucomisd	-72(%rbp), %xmm0	# pa, tmp178
	jbe	.L34	#,
	.loc 2 167 0
	movl	$1, -84(%rbp)	#, result
.L34:
	.loc 2 172 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L36	#
.L42:
	.loc 2 174 0
	movq	-112(%rbp), %rax	# reg, tmp179
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movq	8(%rax), %rax	# _49->state, D.4489
	andq	-64(%rbp), %rax	# pos2, D.4489
	testq	%rax, %rax	# D.4489
	je	.L37	#,
	.loc 2 176 0
	cmpl	$0, -84(%rbp)	#, result
	jne	.L38	#,
	.loc 2 177 0
	movq	-112(%rbp), %rax	# reg, tmp181
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rax, %rdx	# D.4487, D.4487
	movl	.LC1(%rip), %eax	#, tmp183
	movl	%eax, (%rdx)	# tmp183, _55->amplitude
	movl	.LC1+4(%rip), %eax	#, tmp184
	movl	%eax, 4(%rdx)	# tmp184, _55->amplitude
	jmp	.L40	#
.L38:
	.loc 2 180 0
	movq	-112(%rbp), %rax	# reg, tmp185
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movl	(%rax), %edx	# _59->amplitude, D.4490
	movl	4(%rax), %eax	# _59->amplitude, D.4490
	movl	%edx, -128(%rbp)	# tmp187,
	movl	%eax, -124(%rbp)	# tmp188,
	movq	-128(%rbp), %rax	#, tmp189
	movq	%rax, -144(%rbp)	# tmp189, %sfp
	movq	-144(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4491, D.4491
	cvtps2pd	%xmm0, %xmm0	# D.4491, D.4492
	movsd	-80(%rbp), %xmm1	# d, tmp191
	addsd	%xmm1, %xmm0	# tmp191, tmp190
	movsd	%xmm0, -80(%rbp)	# tmp190, d
	.loc 2 181 0
	addl	$1, -88(%rbp)	#, size
	jmp	.L40	#
.L37:
	.loc 2 186 0
	cmpl	$0, -84(%rbp)	#, result
	je	.L41	#,
	.loc 2 187 0
	movq	-112(%rbp), %rax	# reg, tmp192
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp193
	movslq	%edx, %rdx	# tmp193, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rax, %rdx	# D.4487, D.4487
	movl	.LC1(%rip), %eax	#, tmp194
	movl	%eax, (%rdx)	# tmp194, _68->amplitude
	movl	.LC1+4(%rip), %eax	#, tmp195
	movl	%eax, 4(%rdx)	# tmp195, _68->amplitude
	jmp	.L40	#
.L41:
	.loc 2 190 0
	movq	-112(%rbp), %rax	# reg, tmp196
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movl	(%rax), %edx	# _72->amplitude, D.4490
	movl	4(%rax), %eax	# _72->amplitude, D.4490
	movl	%edx, -136(%rbp)	# tmp198,
	movl	%eax, -132(%rbp)	# tmp199,
	movq	-136(%rbp), %rax	#, tmp200
	movq	%rax, -144(%rbp)	# tmp200, %sfp
	movq	-144(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4491, D.4491
	cvtps2pd	%xmm0, %xmm0	# D.4491, D.4492
	movsd	-80(%rbp), %xmm1	# d, tmp202
	addsd	%xmm1, %xmm0	# tmp202, tmp201
	movsd	%xmm0, -80(%rbp)	# tmp201, d
	.loc 2 191 0
	addl	$1, -88(%rbp)	#, size
.L40:
	.loc 2 172 0
	addl	$1, -96(%rbp)	#, i
.L36:
	.loc 2 172 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp203
	movl	4(%rax), %eax	# reg_25(D)->size, D.4486
	cmpl	-96(%rbp), %eax	# i, D.4486
	jg	.L42	#,
	.loc 2 198 0 is_stmt 1
	movl	-88(%rbp), %eax	# size, tmp204
	movl	%eax, -44(%rbp)	# tmp204, out.size
	.loc 2 199 0
	movl	-88(%rbp), %eax	# size, tmp205
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.4488,
	call	calloc	#
	movq	%rax, -32(%rbp)	# D.4493, out.node
	.loc 2 200 0
	movq	-32(%rbp), %rax	# out.node, D.4487
	testq	%rax, %rax	# D.4487
	jne	.L43	#,
	.loc 2 202 0
	movl	-88(%rbp), %eax	# size, tmp207
	movl	%eax, %esi	# tmp207,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 2 203 0
	movl	$1, %edi	#,
	call	exit	#
.L43:
	.loc 2 205 0
	movl	-88(%rbp), %eax	# size, tmp208
	cltq
	salq	$4, %rax	#, D.4488
	movq	%rax, %rdi	# D.4494,
	call	quantum_memman	#
	.loc 2 206 0
	movq	-112(%rbp), %rax	# reg, tmp209
	movl	8(%rax), %eax	# reg_25(D)->hashw, D.4486
	movl	%eax, -40(%rbp)	# D.4486, out.hashw
	.loc 2 207 0
	movq	-112(%rbp), %rax	# reg, tmp210
	movq	24(%rax), %rax	# reg_25(D)->hash, D.4495
	movq	%rax, -24(%rbp)	# D.4495, out.hash
	.loc 2 208 0
	movq	-112(%rbp), %rax	# reg, tmp211
	movl	(%rax), %eax	# reg_25(D)->width, D.4486
	movl	%eax, -48(%rbp)	# D.4486, out.width
	.loc 2 213 0
	movl	$0, -96(%rbp)	#, i
	movl	$0, -92(%rbp)	#, j
	jmp	.L44	#
.L48:
	.loc 2 215 0
	movq	-112(%rbp), %rax	# reg, tmp212
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rdx, %rax	# D.4488, D.4487
	movl	(%rax), %edx	# _94->amplitude, D.4490
	movl	4(%rax), %eax	# _94->amplitude, D.4490
	movl	%edx, -144(%rbp)	# D.4422, %sfp
	movss	-144(%rbp), %xmm0	# %sfp, D.4491
	xorps	%xmm1, %xmm1	# tmp214
	ucomiss	%xmm1, %xmm0	# tmp214, D.4491
	jp	.L45	#,
	xorps	%xmm1, %xmm1	# tmp215
	ucomiss	%xmm1, %xmm0	# tmp215, D.4491
	jne	.L45	#,
	.loc 2 215 0 is_stmt 0 discriminator 1
	movl	%eax, -144(%rbp)	# D.4422, %sfp
	movss	-144(%rbp), %xmm0	# %sfp, D.4491
	xorps	%xmm1, %xmm1	# tmp216
	ucomiss	%xmm1, %xmm0	# tmp216, D.4491
	jp	.L45	#,
	xorps	%xmm1, %xmm1	# tmp217
	ucomiss	%xmm1, %xmm0	# tmp217, D.4491
	je	.L46	#,
.L45:
	.loc 2 217 0 is_stmt 1
	movq	-32(%rbp), %rax	# out.node, D.4487
	movl	-92(%rbp), %edx	# j, tmp218
	movslq	%edx, %rdx	# tmp218, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rax, %rdx	# D.4487, D.4487
	movq	-112(%rbp), %rax	# reg, tmp219
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %ecx	# i, tmp220
	movslq	%ecx, %rcx	# tmp220, D.4488
	salq	$4, %rcx	#, D.4488
	addq	%rcx, %rax	# D.4488, D.4487
	movq	8(%rax), %rax	# _105->state, D.4489
	movq	%rax, 8(%rdx)	# D.4489, _101->state
	.loc 2 218 0
	movq	-32(%rbp), %rax	# out.node, D.4487
	movl	-92(%rbp), %edx	# j, tmp221
	movslq	%edx, %rdx	# tmp221, D.4488
	salq	$4, %rdx	#, D.4488
	leaq	(%rax,%rdx), %rbx	#, D.4487
	movq	-112(%rbp), %rax	# reg, tmp222
	movq	16(%rax), %rax	# reg_25(D)->node, D.4487
	movl	-96(%rbp), %edx	# i, tmp223
	movslq	%edx, %rdx	# tmp223, D.4488
	salq	$4, %rdx	#, D.4488
	addq	%rax, %rdx	# D.4487, D.4487
	movl	(%rdx), %eax	# _114->amplitude, D.4490
	movl	4(%rdx), %edx	# _114->amplitude, D.4490
	movl	%edx, %r12d	# D.4490, D.4446
	movl	%eax, -144(%rbp)	# D.4446, %sfp
	movq	-80(%rbp), %rax	# d, tmp224
	movq	%rax, -152(%rbp)	# tmp224, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.4492
	cvtpd2ps	%xmm0, %xmm0	# D.4492, D.4491
	movss	-144(%rbp), %xmm2	# %sfp, D.4491
	divss	%xmm0, %xmm2	# D.4491, D.4491
	movl	%r12d, -144(%rbp)	# D.4446, %sfp
	movss	-144(%rbp), %xmm1	# %sfp, D.4491
	divss	%xmm0, %xmm1	# D.4491, D.4491
	movaps	%xmm1, %xmm0	# D.4491, D.4491
	movss	%xmm2, -144(%rbp)	# D.4491, %sfp
	movl	-144(%rbp), %edx	# %sfp, D.4490
	movss	%xmm0, -144(%rbp)	# D.4491, %sfp
	movl	-144(%rbp), %eax	# %sfp, D.4490
	movl	%edx, (%rbx)	# D.4490, _110->amplitude
	movl	%eax, 4(%rbx)	# D.4490, _110->amplitude
	.loc 2 220 0
	addl	$1, -92(%rbp)	#, j
.L46:
	.loc 2 213 0
	addl	$1, -96(%rbp)	#, i
.L44:
	.loc 2 213 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp225
	movl	4(%rax), %eax	# reg_25(D)->size, D.4486
	cmpl	-96(%rbp), %eax	# i, D.4486
	jg	.L48	#,
	.loc 2 224 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp226
	movq	%rax, %rdi	# tmp226,
	call	quantum_delete_qureg_hashpreserve	#
	.loc 2 225 0
	movq	-112(%rbp), %rax	# reg, tmp227
	movq	-48(%rbp), %rdx	# out, tmp228
	movq	%rdx, (%rax)	# tmp228, *reg_25(D)
	movq	-40(%rbp), %rdx	# out, tmp229
	movq	%rdx, 8(%rax)	# tmp229, *reg_25(D)
	movq	-32(%rbp), %rdx	# out, tmp230
	movq	%rdx, 16(%rax)	# tmp230, *reg_25(D)
	movq	-24(%rbp), %rdx	# out, tmp231
	movq	%rdx, 24(%rax)	# tmp231, *reg_25(D)
	.loc 2 226 0
	movl	-84(%rbp), %eax	# result, D.4486
.L49:
	.loc 2 227 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	quantum_bmeasure_bitpreserve, .-quantum_bmeasure_bitpreserve
.Letext0:
	.file 3 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x399
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF16
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.long	0xc1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x25
	.long	0x95
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x26
	.long	0x73
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x3
	.byte	0x29
	.long	0x9c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x20
	.byte	0x3
	.byte	0x2d
	.long	0x115
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0x2f
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0x30
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0x31
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x3
	.byte	0x32
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF22
	.byte	0x3
	.byte	0x33
	.long	0x81
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x3
	.byte	0x36
	.long	0xcc
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x26
	.long	0x87
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x160
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x26
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x28
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x87
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x2f
	.long	0x87
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0x31
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x38
	.long	0x87
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e6
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x38
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.string	"r"
	.byte	0x1
	.byte	0x3a
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x2
	.byte	0x32
	.long	0x8e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.long	.LASF28
	.byte	0x2
	.byte	0x3e
	.long	0x73
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x24b
	.uleb128 0x9
	.string	"reg"
	.byte	0x2
	.byte	0x3e
	.long	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"r"
	.byte	0x2
	.byte	0x40
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.byte	0x41
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x2
	.byte	0x63
	.long	0x57
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd
	.uleb128 0x9
	.string	"pos"
	.byte	0x2
	.byte	0x63
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x9
	.string	"reg"
	.byte	0x2
	.byte	0x63
	.long	0x2dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.byte	0x65
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF30
	.byte	0x2
	.byte	0x66
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xa
	.string	"pa"
	.byte	0x2
	.byte	0x67
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.string	"r"
	.byte	0x2
	.byte	0x67
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF31
	.byte	0x2
	.byte	0x68
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x69
	.long	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x11b
	.uleb128 0xf
	.long	.LASF36
	.byte	0x2
	.byte	0x8c
	.long	0x57
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"pos"
	.byte	0x2
	.byte	0x8c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x9
	.string	"reg"
	.byte	0x2
	.byte	0x8c
	.long	0x2dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xa
	.string	"i"
	.byte	0x2
	.byte	0x8e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xa
	.string	"j"
	.byte	0x2
	.byte	0x8e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0xe
	.long	.LASF19
	.byte	0x2
	.byte	0x8f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xe
	.long	.LASF30
	.byte	0x2
	.byte	0x8f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.string	"d"
	.byte	0x2
	.byte	0x90
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xa
	.string	"pa"
	.byte	0x2
	.byte	0x90
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.string	"r"
	.byte	0x2
	.byte	0x90
	.long	0x8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.long	.LASF31
	.byte	0x2
	.byte	0x91
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.string	"out"
	.byte	0x2
	.byte	0x92
	.long	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
.LASF32:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
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
	.string	"quantum_bmeasure"
.LASF11:
	.string	"float"
.LASF34:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"size"
.LASF3:
	.string	"long unsigned int"
.LASF28:
	.string	"quantum_measure"
.LASF1:
	.string	"short unsigned int"
.LASF0:
	.string	"unsigned char"
.LASF12:
	.string	"double"
.LASF26:
	.string	"quantum_imag"
.LASF36:
	.string	"quantum_bmeasure_bitpreserve"
.LASF20:
	.string	"hashw"
.LASF33:
	.string	"measure.c"
.LASF2:
	.string	"unsigned int"
.LASF16:
	.string	"quantum_reg_node_struct"
.LASF24:
	.string	"quantum_reg"
.LASF27:
	.string	"quantum_prob_inline"
.LASF9:
	.string	"long long unsigned int"
.LASF30:
	.string	"result"
.LASF22:
	.string	"hash"
.LASF25:
	.string	"quantum_real"
.LASF7:
	.string	"sizetype"
.LASF10:
	.string	"long long int"
.LASF18:
	.string	"width"
.LASF31:
	.string	"pos2"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF8:
	.string	"char"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"quantum_frand"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
