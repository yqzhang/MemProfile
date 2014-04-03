	.file	"qureg.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX qureg.c -mtune=generic -march=x86-64
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
	.type	quantum_hash64, @function
quantum_hash64:
.LFB2:
	.file 1 "qureg.h"
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# key, key
	movl	%esi, -28(%rbp)	# width, width
	.loc 1 84 0
	movq	-24(%rbp), %rax	# key, tmp65
	movl	%eax, %edx	# tmp65, D.4739
	movq	-24(%rbp), %rax	# key, tmp66
	shrq	$32, %rax	#, D.4740
	xorl	%edx, %eax	# D.4739, tmp67
	movl	%eax, -4(%rbp)	# tmp67, k32
	.loc 1 86 0
	movl	-4(%rbp), %eax	# k32, tmp69
	imull	$-1640562687, %eax, %eax	#, tmp69, tmp68
	movl	%eax, -4(%rbp)	# tmp68, k32
	.loc 1 87 0
	movl	$32, %eax	#, tmp70
	subl	-28(%rbp), %eax	# width, D.4741
	movl	%eax, %ecx	# D.4741, tmp72
	shrl	%cl, -4(%rbp)	# tmp72, k32
	.loc 1 89 0
	movl	-4(%rbp), %eax	# k32, D.4739
	.loc 1 90 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	quantum_hash64, .-quantum_hash64
	.type	quantum_get_state, @function
quantum_get_state:
.LFB3:
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	.loc 1 99 0
	movl	24(%rbp), %edx	# reg.hashw, D.4742
	movq	-24(%rbp), %rax	# a, tmp86
	movl	%edx, %esi	# D.4742,
	movq	%rax, %rdi	# tmp86,
	call	quantum_hash64	#
	movl	%eax, -4(%rbp)	# D.4743, i
	.loc 1 101 0
	jmp	.L4	#
.L7:
	.loc 1 103 0
	movq	32(%rbp), %rax	# reg.node, D.4746
	movq	40(%rbp), %rdx	# reg.hash, D.4744
	movl	-4(%rbp), %ecx	# i, tmp87
	movslq	%ecx, %rcx	# tmp87, D.4745
	salq	$2, %rcx	#, D.4745
	addq	%rcx, %rdx	# D.4745, D.4744
	movl	(%rdx), %edx	# *_16, D.4742
	movslq	%edx, %rdx	# D.4742, D.4745
	salq	$4, %rdx	#, D.4745
	subq	$16, %rdx	#, D.4747
	addq	%rdx, %rax	# D.4747, D.4746
	movq	8(%rax), %rax	# _21->state, D.4748
	cmpq	-24(%rbp), %rax	# a, D.4748
	jne	.L5	#,
	.loc 1 104 0
	movq	40(%rbp), %rax	# reg.hash, D.4744
	movl	-4(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.4745
	salq	$2, %rdx	#, D.4745
	addq	%rdx, %rax	# D.4745, D.4744
	movl	(%rax), %eax	# *_26, D.4742
	subl	$1, %eax	#, D.4742
	jmp	.L6	#
.L5:
	.loc 1 105 0
	addl	$1, -4(%rbp)	#, i
	.loc 1 106 0
	movl	24(%rbp), %eax	# reg.hashw, D.4742
	movl	$1, %edx	#, tmp89
	movl	%eax, %ecx	# D.4742, tmp93
	sall	%cl, %edx	# tmp93, D.4742
	movl	%edx, %eax	# D.4742, D.4742
	cmpl	-4(%rbp), %eax	# i, D.4742
	jne	.L4	#,
	.loc 1 107 0
	movl	$0, -4(%rbp)	#, i
.L4:
	.loc 1 101 0 discriminator 1
	movq	40(%rbp), %rax	# reg.hash, D.4744
	movl	-4(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, D.4745
	salq	$2, %rdx	#, D.4745
	addq	%rdx, %rax	# D.4745, D.4744
	movl	(%rax), %eax	# *_10, D.4742
	testl	%eax, %eax	# D.4742
	jne	.L7	#,
	.loc 1 110 0
	movl	$-1, %eax	#, D.4742
.L6:
	.loc 1 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quantum_get_state, .-quantum_get_state
	.type	quantum_add_hash, @function
quantum_add_hash:
.LFB4:
	.loc 1 118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# pos, pos
	movq	%rdx, -40(%rbp)	# reg, reg
	.loc 1 121 0
	movq	-40(%rbp), %rax	# reg, tmp73
	movl	8(%rax), %edx	# reg_2(D)->hashw, D.4749
	movq	-24(%rbp), %rax	# a, tmp74
	movl	%edx, %esi	# D.4749,
	movq	%rax, %rdi	# tmp74,
	call	quantum_hash64	#
	movl	%eax, -4(%rbp)	# D.4750, i
	.loc 1 123 0
	jmp	.L9	#
.L10:
	.loc 1 125 0
	addl	$1, -4(%rbp)	#, i
	.loc 1 126 0
	movq	-40(%rbp), %rax	# reg, tmp75
	movl	8(%rax), %eax	# reg_2(D)->hashw, D.4749
	movl	$1, %edx	#, tmp76
	movl	%eax, %ecx	# D.4749, tmp83
	sall	%cl, %edx	# tmp83, D.4749
	movl	%edx, %eax	# D.4749, D.4749
	cmpl	-4(%rbp), %eax	# i, D.4749
	jne	.L9	#,
	.loc 1 127 0
	movl	$0, -4(%rbp)	#, i
.L9:
	.loc 1 123 0 discriminator 1
	movq	-40(%rbp), %rax	# reg, tmp77
	movq	24(%rax), %rax	# reg_2(D)->hash, D.4751
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.4752
	salq	$2, %rdx	#, D.4752
	addq	%rdx, %rax	# D.4752, D.4751
	movl	(%rax), %eax	# *_10, D.4749
	testl	%eax, %eax	# D.4749
	jne	.L10	#,
	.loc 1 130 0
	movq	-40(%rbp), %rax	# reg, tmp79
	movq	24(%rax), %rax	# reg_2(D)->hash, D.4751
	movl	-4(%rbp), %edx	# i, tmp80
	movslq	%edx, %rdx	# tmp80, D.4752
	salq	$2, %rdx	#, D.4752
	addq	%rdx, %rax	# D.4752, D.4751
	movl	-28(%rbp), %edx	# pos, tmp81
	addl	$1, %edx	#, D.4749
	movl	%edx, (%rax)	# D.4749, *_19
	.loc 1 132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	quantum_add_hash, .-quantum_add_hash
	.type	quantum_real, @function
quantum_real:
.LFB5:
	.file 2 "lq_complex.h"
	.loc 2 39 0
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
	.loc 2 40 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 2 41 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	(%rax), %eax	# *p_1, D.4753
	.loc 2 42 0
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
	.loc 2 48 0
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
	.loc 2 49 0
	leaq	-32(%rbp), %rax	#, tmp64
	movq	%rax, -8(%rbp)	# tmp64, p
	.loc 2 50 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	4(%rax), %eax	# MEM[(float *)p_1 + 4B], D.4755
	.loc 2 51 0
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
	.loc 2 57 0
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
	.loc 2 60 0
	movq	-32(%rbp), %rax	# a, tmp66
	movq	%rax, -40(%rbp)	# tmp66, %sfp
	movq	-40(%rbp), %xmm0	# %sfp,
	call	quantum_real	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp67
	movl	%eax, -8(%rbp)	# tmp67, r
	.loc 2 61 0
	movq	-32(%rbp), %rax	# a, tmp68
	movq	%rax, -40(%rbp)	# tmp68, %sfp
	movq	-40(%rbp), %xmm0	# %sfp,
	call	quantum_imag	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp69
	movl	%eax, -4(%rbp)	# tmp69, i
	.loc 2 63 0
	movss	-8(%rbp), %xmm0	# r, tmp70
	movaps	%xmm0, %xmm1	# tmp70, D.4756
	mulss	-8(%rbp), %xmm1	# r, D.4756
	movss	-4(%rbp), %xmm0	# i, tmp71
	mulss	-4(%rbp), %xmm0	# i, D.4756
	addss	%xmm1, %xmm0	# D.4756, D.4756
	movss	%xmm0, -40(%rbp)	# D.4756, %sfp
	movl	-40(%rbp), %eax	# %sfp, <retval>
	.loc 2 64 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_prob_inline, .-quantum_prob_inline
	.section	.rodata
	.align 8
.LC0:
	.string	"Error! Cannot convert a multi-column-matrix (%i)!\n"
	.align 8
.LC2:
	.string	"Not enough memory for %i-sized qubit!\n"
	.align 8
.LC3:
	.string	"Not enough memory for %i-sized hash!\n"
	.text
	.globl	quantum_matrix2qureg
	.type	quantum_matrix2qureg, @function
quantum_matrix2qureg:
.LFB8:
	.file 3 "qureg.c"
	.loc 3 46 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -64(%rbp)	# m, m
	movl	%edx, -68(%rbp)	# width, width
	.loc 3 48 0
	movl	$0, -36(%rbp)	#, size
	.loc 3 50 0
	movq	-64(%rbp), %rax	# m, tmp117
	movl	4(%rax), %eax	# m_8(D)->cols, D.4757
	cmpl	$1, %eax	#, D.4757
	je	.L18	#,
	.loc 3 52 0
	movq	-64(%rbp), %rax	# m, tmp118
	movl	4(%rax), %eax	# m_8(D)->cols, D.4757
	movl	%eax, %esi	# D.4757,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 53 0
	movl	$1, %edi	#,
	call	exit	#
.L18:
	.loc 3 56 0
	movl	-68(%rbp), %eax	# width, tmp119
	movl	%eax, -32(%rbp)	# tmp119, reg.width
	.loc 3 60 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L19	#
.L23:
	.loc 3 62 0
	movq	-64(%rbp), %rax	# m, tmp120
	movq	8(%rax), %rax	# m_8(D)->t, D.4758
	movl	-44(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, D.4759
	salq	$3, %rdx	#, D.4759
	addq	%rdx, %rax	# D.4759, D.4758
	movl	(%rax), %edx	# *_17, D.4760
	movl	4(%rax), %eax	# *_17, D.4760
	movl	%edx, -72(%rbp)	# D.4247, %sfp
	movss	-72(%rbp), %xmm0	# %sfp, D.4761
	xorps	%xmm1, %xmm1	# tmp122
	ucomiss	%xmm1, %xmm0	# tmp122, D.4761
	jp	.L20	#,
	xorps	%xmm1, %xmm1	# tmp123
	ucomiss	%xmm1, %xmm0	# tmp123, D.4761
	jne	.L20	#,
	.loc 3 62 0 is_stmt 0 discriminator 1
	movl	%eax, -72(%rbp)	# D.4247, %sfp
	movss	-72(%rbp), %xmm0	# %sfp, D.4761
	xorps	%xmm1, %xmm1	# tmp124
	ucomiss	%xmm1, %xmm0	# tmp124, D.4761
	jp	.L20	#,
	xorps	%xmm1, %xmm1	# tmp125
	ucomiss	%xmm1, %xmm0	# tmp125, D.4761
	je	.L21	#,
.L20:
	.loc 3 63 0 is_stmt 1
	addl	$1, -36(%rbp)	#, size
.L21:
	.loc 3 60 0
	addl	$1, -44(%rbp)	#, i
.L19:
	.loc 3 60 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# m, tmp126
	movl	(%rax), %eax	# m_8(D)->rows, D.4757
	cmpl	-44(%rbp), %eax	# i, D.4757
	jg	.L23	#,
	.loc 3 68 0 is_stmt 1
	movl	-36(%rbp), %eax	# size, tmp127
	movl	%eax, -28(%rbp)	# tmp127, reg.size
	.loc 3 69 0
	movl	-68(%rbp), %eax	# width, tmp128
	addl	$2, %eax	#, D.4757
	movl	%eax, -24(%rbp)	# D.4757, reg.hashw
	.loc 3 71 0
	movl	-36(%rbp), %eax	# size, tmp129
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.4759,
	call	calloc	#
	movq	%rax, -16(%rbp)	# D.4762, reg.node
	.loc 3 72 0
	movq	-16(%rbp), %rax	# reg.node, D.4763
	testq	%rax, %rax	# D.4763
	jne	.L24	#,
	.loc 3 74 0
	movl	-36(%rbp), %eax	# size, tmp131
	movl	%eax, %esi	# tmp131,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 75 0
	movl	$1, %edi	#,
	call	exit	#
.L24:
	.loc 3 77 0
	movl	-36(%rbp), %eax	# size, tmp132
	cltq
	salq	$4, %rax	#, D.4759
	movq	%rax, %rdi	# D.4764,
	call	quantum_memman	#
	.loc 3 81 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4757
	movl	$1, %edx	#, tmp133
	movl	%eax, %ecx	# D.4757, tmp157
	sall	%cl, %edx	# tmp157, D.4757
	movl	%edx, %eax	# D.4757, D.4757
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.4759,
	call	calloc	#
	movq	%rax, -8(%rbp)	# D.4762, reg.hash
	.loc 3 82 0
	movq	-8(%rbp), %rax	# reg.hash, D.4765
	testq	%rax, %rax	# D.4765
	jne	.L25	#,
	.loc 3 84 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4757
	movl	$1, %edx	#, tmp135
	movl	%eax, %ecx	# D.4757, tmp159
	sall	%cl, %edx	# tmp159, D.4757
	movl	%edx, %eax	# D.4757, D.4757
	movl	%eax, %esi	# D.4757,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 85 0
	movl	$1, %edi	#,
	call	exit	#
.L25:
	.loc 3 87 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4757
	movl	$1, %edx	#, tmp136
	movl	%eax, %ecx	# D.4757, tmp161
	sall	%cl, %edx	# tmp161, D.4757
	movl	%edx, %eax	# D.4757, D.4757
	cltq
	salq	$2, %rax	#, D.4759
	movq	%rax, %rdi	# D.4764,
	call	quantum_memman	#
	.loc 3 92 0
	movl	$0, -44(%rbp)	#, i
	movl	$0, -40(%rbp)	#, j
	jmp	.L26	#
.L30:
	.loc 3 94 0
	movq	-64(%rbp), %rax	# m, tmp137
	movq	8(%rax), %rax	# m_8(D)->t, D.4758
	movl	-44(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, D.4759
	salq	$3, %rdx	#, D.4759
	addq	%rdx, %rax	# D.4759, D.4758
	movl	(%rax), %edx	# *_48, D.4760
	movl	4(%rax), %eax	# *_48, D.4760
	movl	%edx, -72(%rbp)	# D.4282, %sfp
	movss	-72(%rbp), %xmm0	# %sfp, D.4761
	xorps	%xmm1, %xmm1	# tmp139
	ucomiss	%xmm1, %xmm0	# tmp139, D.4761
	jp	.L27	#,
	xorps	%xmm1, %xmm1	# tmp140
	ucomiss	%xmm1, %xmm0	# tmp140, D.4761
	jne	.L27	#,
	.loc 3 94 0 is_stmt 0 discriminator 1
	movl	%eax, -72(%rbp)	# D.4282, %sfp
	movss	-72(%rbp), %xmm0	# %sfp, D.4761
	xorps	%xmm1, %xmm1	# tmp141
	ucomiss	%xmm1, %xmm0	# tmp141, D.4761
	jp	.L27	#,
	xorps	%xmm1, %xmm1	# tmp142
	ucomiss	%xmm1, %xmm0	# tmp142, D.4761
	je	.L28	#,
.L27:
	.loc 3 96 0 is_stmt 1
	movq	-16(%rbp), %rax	# reg.node, D.4763
	movl	-40(%rbp), %edx	# j, tmp143
	movslq	%edx, %rdx	# tmp143, D.4759
	salq	$4, %rdx	#, D.4759
	addq	%rax, %rdx	# D.4763, D.4763
	movl	-44(%rbp), %eax	# i, tmp144
	cltq
	movq	%rax, 8(%rdx)	# D.4766, _55->state
	.loc 3 97 0
	movq	-16(%rbp), %rax	# reg.node, D.4763
	movl	-40(%rbp), %edx	# j, tmp145
	movslq	%edx, %rdx	# tmp145, D.4759
	salq	$4, %rdx	#, D.4759
	leaq	(%rax,%rdx), %rcx	#, D.4763
	movq	-64(%rbp), %rax	# m, tmp146
	movq	8(%rax), %rax	# m_8(D)->t, D.4758
	movl	-44(%rbp), %edx	# i, tmp147
	movslq	%edx, %rdx	# tmp147, D.4759
	salq	$3, %rdx	#, D.4759
	addq	%rdx, %rax	# D.4759, D.4758
	movl	(%rax), %edx	# *_64, D.4760
	movl	4(%rax), %eax	# *_64, D.4760
	movl	%edx, (%rcx)	# D.4760, _60->amplitude
	movl	%eax, 4(%rcx)	# D.4760, _60->amplitude
	.loc 3 98 0
	addl	$1, -40(%rbp)	#, j
.L28:
	.loc 3 92 0
	addl	$1, -44(%rbp)	#, i
.L26:
	.loc 3 92 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# m, tmp148
	movl	(%rax), %eax	# m_8(D)->rows, D.4757
	cmpl	-44(%rbp), %eax	# i, D.4757
	jg	.L30	#,
	.loc 3 102 0 is_stmt 1
	movq	-56(%rbp), %rax	# .result_ptr, tmp149
	movq	-32(%rbp), %rdx	# reg, tmp150
	movq	%rdx, (%rax)	# tmp150, <retval>
	movq	-24(%rbp), %rdx	# reg, tmp151
	movq	%rdx, 8(%rax)	# tmp151, <retval>
	movq	-16(%rbp), %rdx	# reg, tmp152
	movq	%rdx, 16(%rax)	# tmp152, <retval>
	movq	-8(%rbp), %rdx	# reg, tmp153
	movq	%rdx, 24(%rax)	# tmp153, <retval>
	.loc 3 103 0
	movq	-56(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_matrix2qureg, .-quantum_matrix2qureg
	.section	.rodata
.LC5:
	.string	"QUOBFILE"
	.align 4
.LC4:
	.long	1065353216
	.long	0
	.text
	.globl	quantum_new_qureg
	.type	quantum_new_qureg, @function
quantum_new_qureg:
.LFB9:
	.loc 3 109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -64(%rbp)	# initval, initval
	movl	%edx, -68(%rbp)	# width, width
	.loc 3 113 0
	movl	-68(%rbp), %eax	# width, tmp76
	movl	%eax, -32(%rbp)	# tmp76, reg.width
	.loc 3 114 0
	movl	$1, -28(%rbp)	#, reg.size
	.loc 3 115 0
	movl	-68(%rbp), %eax	# width, tmp77
	addl	$2, %eax	#, D.4771
	movl	%eax, -24(%rbp)	# D.4771, reg.hashw
	.loc 3 119 0
	movl	$16, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -16(%rbp)	# D.4772, reg.node
	.loc 3 120 0
	movq	-16(%rbp), %rax	# reg.node, D.4773
	testq	%rax, %rax	# D.4773
	jne	.L33	#,
	.loc 3 122 0
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 123 0
	movl	$1, %edi	#,
	call	exit	#
.L33:
	.loc 3 125 0
	movl	$16, %edi	#,
	call	quantum_memman	#
	.loc 3 129 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4771
	movl	$1, %edx	#, tmp79
	movl	%eax, %ecx	# D.4771, tmp95
	sall	%cl, %edx	# tmp95, D.4771
	movl	%edx, %eax	# D.4771, D.4771
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.4774,
	call	calloc	#
	movq	%rax, -8(%rbp)	# D.4772, reg.hash
	.loc 3 130 0
	movq	-8(%rbp), %rax	# reg.hash, D.4775
	testq	%rax, %rax	# D.4775
	jne	.L34	#,
	.loc 3 132 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4771
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# D.4771, tmp97
	sall	%cl, %edx	# tmp97, D.4771
	movl	%edx, %eax	# D.4771, D.4771
	movl	%eax, %esi	# D.4771,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 133 0
	movl	$1, %edi	#,
	call	exit	#
.L34:
	.loc 3 135 0
	movl	-24(%rbp), %eax	# reg.hashw, D.4771
	movl	$1, %edx	#, tmp82
	movl	%eax, %ecx	# D.4771, tmp99
	sall	%cl, %edx	# tmp99, D.4771
	movl	%edx, %eax	# D.4771, D.4771
	cltq
	salq	$2, %rax	#, D.4774
	movq	%rax, %rdi	# D.4776,
	call	quantum_memman	#
	.loc 3 139 0
	movq	-16(%rbp), %rax	# reg.node, D.4773
	movq	-64(%rbp), %rdx	# initval, tmp83
	movq	%rdx, 8(%rax)	# tmp83, _17->state
	.loc 3 140 0
	movq	-16(%rbp), %rax	# reg.node, D.4773
	movl	.LC4(%rip), %edx	#, tmp84
	movl	%edx, (%rax)	# tmp84, _19->amplitude
	movl	.LC4+4(%rip), %edx	#, tmp85
	movl	%edx, 4(%rax)	# tmp85, _19->amplitude
	.loc 3 146 0
	movl	$.LC5, %edi	#,
	call	getenv	#
	movq	%rax, -40(%rbp)	# tmp86, c
	.loc 3 148 0
	cmpq	$0, -40(%rbp)	#, c
	je	.L35	#,
	.loc 3 150 0
	movl	$0, %eax	#,
	call	quantum_objcode_start	#
	.loc 3 151 0
	movq	-40(%rbp), %rax	# c, tmp87
	movq	%rax, %rdi	# tmp87,
	call	quantum_objcode_file	#
	.loc 3 152 0
	movl	$quantum_objcode_exit, %edi	#,
	call	atexit	#
.L35:
	.loc 3 155 0
	movq	-64(%rbp), %rax	# initval, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$0, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	.loc 3 157 0
	movq	-56(%rbp), %rax	# .result_ptr, tmp89
	movq	-32(%rbp), %rdx	# reg, tmp90
	movq	%rdx, (%rax)	# tmp90, <retval>
	movq	-24(%rbp), %rdx	# reg, tmp91
	movq	%rdx, 8(%rax)	# tmp91, <retval>
	movq	-16(%rbp), %rdx	# reg, tmp92
	movq	%rdx, 16(%rax)	# tmp92, <retval>
	movq	-8(%rbp), %rdx	# reg, tmp93
	movq	%rdx, 24(%rax)	# tmp93, <retval>
	.loc 3 158 0
	movq	-56(%rbp), %rax	# .result_ptr,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_new_qureg, .-quantum_new_qureg
	.globl	quantum_qureg2matrix
	.type	quantum_qureg2matrix, @function
quantum_qureg2matrix:
.LFB10:
	.loc 3 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 3 168 0
	movl	16(%rbp), %eax	# reg.width, D.4780
	movl	$1, %edx	#, tmp78
	movl	%eax, %ecx	# D.4780, tmp85
	sall	%cl, %edx	# tmp85, D.4780
	movl	%edx, %eax	# D.4780, D.4780
	movl	%eax, %esi	# D.4780,
	movl	$1, %edi	#,
	call	quantum_new_matrix	#
	movq	%rax, -16(%rbp)	# tmp80, m
	movq	%rdx, -8(%rbp)	#, m
	.loc 3 170 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L38	#
.L39:
	.loc 3 171 0 discriminator 2
	movq	-8(%rbp), %rax	# m.t, D.4781
	movq	32(%rbp), %rdx	# reg.node, D.4782
	movl	-20(%rbp), %ecx	# i, tmp81
	movslq	%ecx, %rcx	# tmp81, D.4783
	salq	$4, %rcx	#, D.4783
	addq	%rcx, %rdx	# D.4783, D.4782
	movq	8(%rdx), %rdx	# _10->state, D.4784
	salq	$3, %rdx	#, D.4784
	leaq	(%rax,%rdx), %rcx	#, D.4781
	movq	32(%rbp), %rax	# reg.node, D.4782
	movl	-20(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.4783
	salq	$4, %rdx	#, D.4783
	addq	%rdx, %rax	# D.4783, D.4782
	movl	(%rax), %edx	# _17->amplitude, D.4785
	movl	4(%rax), %eax	# _17->amplitude, D.4785
	movl	%edx, (%rcx)	# D.4785, *_13
	movl	%eax, 4(%rcx)	# D.4785, *_13
	.loc 3 170 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L38:
	.loc 3 170 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4780
	cmpl	-20(%rbp), %eax	# i, D.4780
	jg	.L39	#,
	.loc 3 173 0 is_stmt 1
	movq	-16(%rbp), %rax	# m, D.4346
	movq	-8(%rbp), %rdx	# m, D.4346
	.loc 3 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_qureg2matrix, .-quantum_qureg2matrix
	.globl	quantum_destroy_hash
	.type	quantum_destroy_hash, @function
quantum_destroy_hash:
.LFB11:
	.loc 3 180 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 3 181 0
	movq	-8(%rbp), %rax	# reg, tmp66
	movq	24(%rax), %rax	# reg_1(D)->hash, D.4786
	movq	%rax, %rdi	# D.4786,
	call	free	#
	.loc 3 182 0
	movq	-8(%rbp), %rax	# reg, tmp67
	movl	8(%rax), %eax	# reg_1(D)->hashw, D.4787
	movl	$1, %edx	#, tmp68
	movl	%eax, %ecx	# D.4787, tmp71
	sall	%cl, %edx	# tmp71, D.4787
	movl	%edx, %eax	# D.4787, D.4787
	negl	%eax	# D.4787
	cltq
	salq	$2, %rax	#, D.4788
	movq	%rax, %rdi	# D.4789,
	call	quantum_memman	#
	.loc 3 183 0
	movq	-8(%rbp), %rax	# reg, tmp69
	movq	$0, 24(%rax)	#, reg_1(D)->hash
	.loc 3 184 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	quantum_destroy_hash, .-quantum_destroy_hash
	.globl	quantum_delete_qureg
	.type	quantum_delete_qureg, @function
quantum_delete_qureg:
.LFB12:
	.loc 3 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 3 191 0
	movq	-8(%rbp), %rax	# reg, tmp65
	movq	%rax, %rdi	# tmp65,
	call	quantum_destroy_hash	#
	.loc 3 192 0
	movq	-8(%rbp), %rax	# reg, tmp66
	movq	16(%rax), %rax	# reg_1(D)->node, D.4790
	movq	%rax, %rdi	# D.4790,
	call	free	#
	.loc 3 193 0
	movq	-8(%rbp), %rax	# reg, tmp67
	movl	4(%rax), %eax	# reg_1(D)->size, D.4791
	negl	%eax	# D.4791
	cltq
	salq	$4, %rax	#, D.4792
	movq	%rax, %rdi	# D.4793,
	call	quantum_memman	#
	.loc 3 194 0
	movq	-8(%rbp), %rax	# reg, tmp68
	movq	$0, 16(%rax)	#, reg_1(D)->node
	.loc 3 195 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	quantum_delete_qureg, .-quantum_delete_qureg
	.globl	quantum_delete_qureg_hashpreserve
	.type	quantum_delete_qureg_hashpreserve, @function
quantum_delete_qureg_hashpreserve:
.LFB13:
	.loc 3 201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# reg, reg
	.loc 3 202 0
	movq	-8(%rbp), %rax	# reg, tmp65
	movq	16(%rax), %rax	# reg_1(D)->node, D.4794
	movq	%rax, %rdi	# D.4794,
	call	free	#
	.loc 3 203 0
	movq	-8(%rbp), %rax	# reg, tmp66
	movl	4(%rax), %eax	# reg_1(D)->size, D.4795
	negl	%eax	# D.4795
	cltq
	salq	$4, %rax	#, D.4796
	movq	%rax, %rdi	# D.4797,
	call	quantum_memman	#
	.loc 3 204 0
	movq	-8(%rbp), %rax	# reg, tmp67
	movq	$0, 16(%rax)	#, reg_1(D)->node
	.loc 3 205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	quantum_delete_qureg_hashpreserve, .-quantum_delete_qureg_hashpreserve
	.section	.rodata
.LC6:
	.string	"% f %+fi|%lli> (%e) (|"
.LC7:
	.string	"%i"
.LC8:
	.string	">)"
	.text
	.globl	quantum_print_qureg
	.type	quantum_print_qureg, @function
quantum_print_qureg:
.LFB14:
	.loc 3 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	.loc 3 214 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L45	#
.L49:
	.loc 3 218 0
	movq	32(%rbp), %rax	# reg.node, D.4799
	movl	-24(%rbp), %edx	# i, tmp100
	movslq	%edx, %rdx	# tmp100, D.4800
	salq	$4, %rdx	#, D.4800
	addq	%rdx, %rax	# D.4800, D.4799
	movl	(%rax), %edx	# _8->amplitude, D.4801
	movl	4(%rax), %eax	# _8->amplitude, D.4801
	movl	%edx, -40(%rbp)	# tmp101,
	movl	%eax, -36(%rbp)	# tmp102,
	movq	-40(%rbp), %rax	#, tmp103
	movq	%rax, -64(%rbp)	# tmp103, %sfp
	movq	-64(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	.loc 3 216 0
	unpcklps	%xmm0, %xmm0	# D.4802, D.4802
	cvtps2pd	%xmm0, %xmm3	# D.4802, D.4803
	movsd	%xmm3, -64(%rbp)	# D.4803, %sfp
	.loc 3 217 0
	movq	32(%rbp), %rax	# reg.node, D.4799
	movl	-24(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, D.4800
	salq	$4, %rdx	#, D.4800
	addq	%rdx, %rax	# D.4800, D.4799
	.loc 3 216 0
	movq	8(%rax), %rbx	# _15->state, D.4804
	.loc 3 217 0
	movq	32(%rbp), %rax	# reg.node, D.4799
	movl	-24(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.4800
	salq	$4, %rdx	#, D.4800
	addq	%rdx, %rax	# D.4800, D.4799
	movl	(%rax), %edx	# _20->amplitude, D.4801
	movl	4(%rax), %eax	# _20->amplitude, D.4801
	movl	%edx, -48(%rbp)	# tmp106,
	movl	%eax, -44(%rbp)	# tmp107,
	movq	-48(%rbp), %rax	#, tmp108
	movq	%rax, -72(%rbp)	# tmp108, %sfp
	movq	-72(%rbp), %xmm0	# %sfp,
	call	quantum_imag	#
	.loc 3 216 0
	unpcklps	%xmm0, %xmm0	# D.4802, D.4802
	cvtps2pd	%xmm0, %xmm4	# D.4802, D.4803
	movsd	%xmm4, -72(%rbp)	# D.4803, %sfp
	movq	32(%rbp), %rax	# reg.node, D.4799
	movl	-24(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.4800
	salq	$4, %rdx	#, D.4800
	addq	%rdx, %rax	# D.4800, D.4799
	movl	(%rax), %edx	# _27->amplitude, D.4801
	movl	4(%rax), %eax	# _27->amplitude, D.4801
	movl	%edx, -56(%rbp)	# tmp110,
	movl	%eax, -52(%rbp)	# tmp111,
	movq	-56(%rbp), %rax	#, tmp112
	movq	%rax, -80(%rbp)	# tmp112, %sfp
	movq	-80(%rbp), %xmm0	# %sfp,
	call	quantum_real	#
	unpcklps	%xmm0, %xmm0	# D.4802, D.4802
	cvtps2pd	%xmm0, %xmm0	# D.4802, D.4803
	movsd	-64(%rbp), %xmm2	# %sfp,
	movq	%rbx, %rsi	# D.4804,
	movsd	-72(%rbp), %xmm1	# %sfp,
	movl	$.LC6, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 3 219 0
	movl	16(%rbp), %eax	# reg.width, D.4798
	subl	$1, %eax	#, tmp113
	movl	%eax, -20(%rbp)	# tmp113, j
	jmp	.L46	#
.L48:
	.loc 3 221 0
	movl	-20(%rbp), %eax	# j, tmp114
	cltd
	shrl	$30, %edx	#, tmp116
	addl	%edx, %eax	# tmp116, tmp117
	andl	$3, %eax	#, tmp118
	subl	%edx, %eax	# tmp116, tmp119
	cmpl	$3, %eax	#, D.4798
	jne	.L47	#,
	.loc 3 222 0
	movl	$32, %edi	#,
	call	putchar	#
.L47:
	.loc 3 223 0
	movq	32(%rbp), %rax	# reg.node, D.4799
	movl	-24(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, D.4800
	salq	$4, %rdx	#, D.4800
	addq	%rdx, %rax	# D.4800, D.4799
	movq	8(%rax), %rdx	# _37->state, D.4804
	movl	-20(%rbp), %eax	# j, tmp121
	movl	%eax, %ecx	# tmp121, tmp128
	shrq	%cl, %rdx	# tmp128, D.4804
	movq	%rdx, %rax	# D.4804, D.4804
	andl	$1, %eax	#, D.4804
	testq	%rax, %rax	# D.4804
	setne	%al	#, D.4805
	movzbl	%al, %eax	# D.4805, D.4798
	movl	%eax, %esi	# D.4798,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 219 0
	subl	$1, -20(%rbp)	#, j
.L46:
	.loc 3 219 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, j
	jns	.L48	#,
	.loc 3 226 0 is_stmt 1
	movl	$.LC8, %edi	#,
	call	puts	#
	.loc 3 214 0
	addl	$1, -24(%rbp)	#, i
.L45:
	.loc 3 214 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4798
	cmpl	-24(%rbp), %eax	# i, D.4798
	jg	.L49	#,
	.loc 3 229 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 3 230 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	quantum_print_qureg, .-quantum_print_qureg
	.section	.rodata
.LC9:
	.string	"%i: %lli\n"
	.text
	.globl	quantum_print_expn
	.type	quantum_print_expn, @function
quantum_print_expn:
.LFB15:
	.loc 3 236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 3 239 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L51	#
.L52:
	.loc 3 241 0 discriminator 2
	movq	32(%rbp), %rax	# reg.node, D.4810
	movl	-4(%rbp), %edx	# i, tmp70
	movslq	%edx, %rdx	# tmp70, D.4811
	salq	$4, %rdx	#, D.4811
	addq	%rdx, %rax	# D.4811, D.4810
	movq	8(%rax), %rdx	# _7->state, D.4812
	movl	16(%rbp), %eax	# reg.width, D.4809
	movl	%eax, %ecx	# D.4809, tmp71
	shrl	$31, %ecx	#, tmp71
	addl	%ecx, %eax	# tmp71, tmp72
	sarl	%eax	# tmp73
	movl	-4(%rbp), %esi	# i, tmp74
	movl	%eax, %ecx	# D.4809, tmp78
	sall	%cl, %esi	# tmp78, D.4809
	movl	%esi, %eax	# D.4809, D.4809
	cltq
	subq	%rax, %rdx	# D.4812, D.4812
	movl	-4(%rbp), %eax	# i, tmp75
	movl	%eax, %esi	# tmp75,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 239 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L51:
	.loc 3 239 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4809
	cmpl	-4(%rbp), %eax	# i, D.4809
	jg	.L52	#,
	.loc 3 243 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	quantum_print_expn, .-quantum_print_expn
	.globl	quantum_addscratch
	.type	quantum_addscratch, @function
quantum_addscratch:
.LFB16:
	.loc 3 250 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# bits, bits
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 3 254 0
	movq	-32(%rbp), %rax	# reg, tmp71
	movl	(%rax), %eax	# reg_2(D)->width, tmp72
	movl	%eax, -12(%rbp)	# tmp72, oldwidth
	.loc 3 256 0
	movq	-32(%rbp), %rax	# reg, tmp73
	movl	(%rax), %edx	# reg_2(D)->width, D.4814
	movl	-20(%rbp), %eax	# bits, tmp74
	addl	%eax, %edx	# tmp74, D.4814
	movq	-32(%rbp), %rax	# reg, tmp75
	movl	%edx, (%rax)	# D.4814, reg_2(D)->width
	.loc 3 258 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L54	#
.L55:
	.loc 3 260 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp76
	movq	16(%rax), %rax	# reg_2(D)->node, D.4815
	movl	-16(%rbp), %edx	# i, tmp77
	movslq	%edx, %rdx	# tmp77, D.4816
	salq	$4, %rdx	#, D.4816
	addq	%rdx, %rax	# D.4816, D.4815
	movq	8(%rax), %rdx	# _12->state, D.4817
	movl	-20(%rbp), %eax	# bits, tmp78
	movl	%eax, %ecx	# tmp78, tmp85
	salq	%cl, %rdx	# tmp85, tmp79
	movq	%rdx, %rax	# tmp79, tmp79
	movq	%rax, -8(%rbp)	# tmp79, l
	.loc 3 261 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp80
	movq	16(%rax), %rax	# reg_2(D)->node, D.4815
	movl	-16(%rbp), %edx	# i, tmp81
	movslq	%edx, %rdx	# tmp81, D.4816
	salq	$4, %rdx	#, D.4816
	addq	%rax, %rdx	# D.4815, D.4815
	movq	-8(%rbp), %rax	# l, tmp82
	movq	%rax, 8(%rdx)	# tmp82, _18->state
	.loc 3 258 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L54:
	.loc 3 258 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp83
	movl	4(%rax), %eax	# reg_2(D)->size, D.4814
	cmpl	-16(%rbp), %eax	# i, D.4814
	jg	.L55	#,
	.loc 3 263 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	quantum_addscratch, .-quantum_addscratch
	.section	.rodata
.LC10:
	.string	"%i: %i %llu\n"
	.text
	.globl	quantum_print_hash
	.type	quantum_print_hash, @function
quantum_print_hash:
.LFB17:
	.loc 3 270 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 3 273 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L57	#
.L59:
	.loc 3 275 0
	cmpl	$0, -4(%rbp)	#, i
	je	.L58	#,
	.loc 3 277 0
	movq	32(%rbp), %rax	# reg.node, D.4819
	movq	40(%rbp), %rdx	# reg.hash, D.4820
	movl	-4(%rbp), %ecx	# i, tmp78
	movslq	%ecx, %rcx	# tmp78, D.4821
	salq	$2, %rcx	#, D.4821
	addq	%rcx, %rdx	# D.4821, D.4820
	movl	(%rdx), %edx	# *_9, D.4818
	movslq	%edx, %rdx	# D.4818, D.4821
	salq	$4, %rdx	#, D.4821
	subq	$16, %rdx	#, D.4822
	addq	%rdx, %rax	# D.4822, D.4819
	.loc 3 276 0
	movq	8(%rax), %rdx	# _14->state, D.4823
	movq	40(%rbp), %rax	# reg.hash, D.4820
	movl	-4(%rbp), %ecx	# i, tmp79
	movslq	%ecx, %rcx	# tmp79, D.4821
	salq	$2, %rcx	#, D.4821
	addq	%rcx, %rax	# D.4821, D.4820
	movl	(%rax), %eax	# *_19, D.4818
	leal	-1(%rax), %esi	#, D.4818
	movl	-4(%rbp), %eax	# i, tmp80
	movq	%rdx, %rcx	# D.4823,
	movl	%esi, %edx	# D.4818,
	movl	%eax, %esi	# tmp80,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L58:
	.loc 3 273 0
	addl	$1, -4(%rbp)	#, i
.L57:
	.loc 3 273 0 is_stmt 0 discriminator 1
	movl	24(%rbp), %eax	# reg.hashw, D.4818
	movl	$1, %edx	#, tmp81
	movl	%eax, %ecx	# D.4818, tmp83
	sall	%cl, %edx	# tmp83, D.4818
	movl	%edx, %eax	# D.4818, D.4818
	cmpl	-4(%rbp), %eax	# i, D.4818
	jg	.L59	#,
	.loc 3 280 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	quantum_print_hash, .-quantum_print_hash
	.globl	quantum_kronecker
	.type	quantum_kronecker, @function
quantum_kronecker:
.LFB18:
	.loc 3 286 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# .result_ptr, .result_ptr
	movq	%rsi, -80(%rbp)	# reg1, reg1
	movq	%rdx, -88(%rbp)	# reg2, reg2
	.loc 3 290 0
	movq	-80(%rbp), %rax	# reg1, tmp139
	movl	(%rax), %edx	# reg1_3(D)->width, D.4825
	movq	-88(%rbp), %rax	# reg2, tmp140
	movl	(%rax), %eax	# reg2_5(D)->width, D.4825
	addl	%edx, %eax	# D.4825, D.4825
	movl	%eax, -48(%rbp)	# D.4825, reg.width
	.loc 3 291 0
	movq	-80(%rbp), %rax	# reg1, tmp141
	movl	4(%rax), %edx	# reg1_3(D)->size, D.4825
	movq	-88(%rbp), %rax	# reg2, tmp142
	movl	4(%rax), %eax	# reg2_5(D)->size, D.4825
	imull	%edx, %eax	# D.4825, D.4825
	movl	%eax, -44(%rbp)	# D.4825, reg.size
	.loc 3 292 0
	movq	-80(%rbp), %rax	# reg1, tmp143
	movl	4(%rax), %edx	# reg1_3(D)->size, D.4825
	movq	-88(%rbp), %rax	# reg2, tmp144
	movl	4(%rax), %eax	# reg2_5(D)->size, D.4825
	imull	%edx, %eax	# D.4825, D.4825
	addl	$2, %eax	#, D.4825
	movl	%eax, -40(%rbp)	# D.4825, reg.hashw
	.loc 3 297 0
	movl	-44(%rbp), %eax	# reg.size, D.4825
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.4826,
	call	calloc	#
	movq	%rax, -32(%rbp)	# D.4827, reg.node
	.loc 3 298 0
	movq	-32(%rbp), %rax	# reg.node, D.4828
	testq	%rax, %rax	# D.4828
	jne	.L61	#,
	.loc 3 300 0
	movl	-44(%rbp), %eax	# reg.size, D.4825
	movl	%eax, %esi	# D.4825,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 301 0
	movl	$1, %edi	#,
	call	exit	#
.L61:
	.loc 3 303 0
	movl	-44(%rbp), %eax	# reg.size, D.4825
	cltq
	salq	$4, %rax	#, D.4826
	movq	%rax, %rdi	# D.4829,
	call	quantum_memman	#
	.loc 3 308 0
	movl	-40(%rbp), %eax	# reg.hashw, D.4825
	movl	$1, %edx	#, tmp146
	movl	%eax, %ecx	# D.4825, tmp172
	sall	%cl, %edx	# tmp172, D.4825
	movl	%edx, %eax	# D.4825, D.4825
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.4826,
	call	calloc	#
	movq	%rax, -24(%rbp)	# D.4827, reg.hash
	.loc 3 309 0
	movq	-24(%rbp), %rax	# reg.hash, D.4830
	testq	%rax, %rax	# D.4830
	jne	.L62	#,
	.loc 3 311 0
	movl	-40(%rbp), %eax	# reg.hashw, D.4825
	movl	$1, %edx	#, tmp148
	movl	%eax, %ecx	# D.4825, tmp174
	sall	%cl, %edx	# tmp174, D.4825
	movl	%edx, %eax	# D.4825, D.4825
	movl	%eax, %esi	# D.4825,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 312 0
	movl	$1, %edi	#,
	call	exit	#
.L62:
	.loc 3 314 0
	movl	-40(%rbp), %eax	# reg.hashw, D.4825
	movl	$1, %edx	#, tmp149
	movl	%eax, %ecx	# D.4825, tmp176
	sall	%cl, %edx	# tmp176, D.4825
	movl	%edx, %eax	# D.4825, D.4825
	cltq
	salq	$2, %rax	#, D.4826
	movq	%rax, %rdi	# D.4829,
	call	quantum_memman	#
	.loc 3 316 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L63	#
.L66:
	.loc 3 317 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L64	#
.L65:
	.loc 3 323 0 discriminator 2
	movq	-32(%rbp), %rdx	# reg.node, D.4828
	movq	-88(%rbp), %rax	# reg2, tmp150
	movl	4(%rax), %eax	# reg2_5(D)->size, D.4825
	imull	-56(%rbp), %eax	# i, D.4825
	movl	%eax, %ecx	# D.4825, D.4825
	movl	-52(%rbp), %eax	# j, tmp151
	addl	%ecx, %eax	# D.4825, D.4825
	cltq
	salq	$4, %rax	#, D.4826
	addq	%rax, %rdx	# D.4826, D.4828
	movq	-80(%rbp), %rax	# reg1, tmp152
	movq	16(%rax), %rax	# reg1_3(D)->node, D.4828
	movl	-56(%rbp), %ecx	# i, tmp153
	movslq	%ecx, %rcx	# tmp153, D.4826
	salq	$4, %rcx	#, D.4826
	addq	%rcx, %rax	# D.4826, D.4828
	movq	8(%rax), %rsi	# _50->state, D.4831
	movq	-88(%rbp), %rax	# reg2, tmp154
	movl	(%rax), %eax	# reg2_5(D)->width, D.4825
	movl	%eax, %ecx	# D.4825, tmp178
	salq	%cl, %rsi	# tmp178, D.4831
	.loc 3 324 0 discriminator 2
	movq	-88(%rbp), %rax	# reg2, tmp155
	movq	16(%rax), %rax	# reg2_5(D)->node, D.4828
	movl	-52(%rbp), %ecx	# j, tmp156
	movslq	%ecx, %rcx	# tmp156, D.4826
	salq	$4, %rcx	#, D.4826
	addq	%rcx, %rax	# D.4826, D.4828
	movq	8(%rax), %rax	# _57->state, D.4831
	orq	%rsi, %rax	# D.4831, D.4831
	.loc 3 323 0 discriminator 2
	movq	%rax, 8(%rdx)	# D.4831, _46->state
	.loc 3 325 0 discriminator 2
	movq	-32(%rbp), %rdx	# reg.node, D.4828
	movq	-88(%rbp), %rax	# reg2, tmp157
	movl	4(%rax), %eax	# reg2_5(D)->size, D.4825
	imull	-56(%rbp), %eax	# i, D.4825
	movl	%eax, %ecx	# D.4825, D.4825
	movl	-52(%rbp), %eax	# j, tmp158
	addl	%ecx, %eax	# D.4825, D.4825
	cltq
	salq	$4, %rax	#, D.4826
	leaq	(%rdx,%rax), %rbx	#, D.4828
	.loc 3 326 0 discriminator 2
	movq	-80(%rbp), %rax	# reg1, tmp159
	movq	16(%rax), %rax	# reg1_3(D)->node, D.4828
	movl	-56(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, D.4826
	salq	$4, %rdx	#, D.4826
	addq	%rax, %rdx	# D.4828, D.4828
	movl	(%rdx), %eax	# _70->amplitude, D.4833
	movl	4(%rdx), %edx	# _70->amplitude, D.4833
	movq	-88(%rbp), %rcx	# reg2, tmp161
	movq	16(%rcx), %rcx	# reg2_5(D)->node, D.4828
	movl	-52(%rbp), %esi	# j, tmp162
	movslq	%esi, %rsi	# tmp162, D.4826
	salq	$4, %rsi	#, D.4826
	addq	%rcx, %rsi	# D.4828, D.4828
	movl	(%rsi), %ecx	# _75->amplitude, D.4833
	movl	4(%rsi), %esi	# _75->amplitude, D.4833
	movl	%esi, -104(%rbp)	# D.4833, %sfp
	movss	-104(%rbp), %xmm3	# %sfp,
	movl	%ecx, -104(%rbp)	# D.4833, %sfp
	movss	-104(%rbp), %xmm2	# %sfp,
	movl	%edx, -104(%rbp)	# D.4833, %sfp
	movss	-104(%rbp), %xmm1	# %sfp,
	movl	%eax, -104(%rbp)	# D.4833, %sfp
	movss	-104(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, tmp163
	movq	%rax, -96(%rbp)	# tmp163,
	movl	-96(%rbp), %edx	#, D.4832
	movl	-92(%rbp), %eax	#, D.4832
	movl	%edx, (%rbx)	# D.4833, *_66
	.loc 3 325 0 discriminator 2
	movl	%eax, 4(%rbx)	# D.4833, *_66
	.loc 3 317 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L64:
	.loc 3 317 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# reg2, tmp164
	movl	4(%rax), %eax	# reg2_5(D)->size, D.4825
	cmpl	-52(%rbp), %eax	# j, D.4825
	jg	.L65	#,
	.loc 3 316 0 is_stmt 1
	addl	$1, -56(%rbp)	#, i
.L63:
	.loc 3 316 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# reg1, tmp165
	movl	4(%rax), %eax	# reg1_3(D)->size, D.4825
	cmpl	-56(%rbp), %eax	# i, D.4825
	jg	.L66	#,
	.loc 3 329 0 is_stmt 1
	movq	-72(%rbp), %rax	# .result_ptr, tmp166
	movq	-48(%rbp), %rdx	# reg, tmp167
	movq	%rdx, (%rax)	# tmp167, <retval>
	movq	-40(%rbp), %rdx	# reg, tmp168
	movq	%rdx, 8(%rax)	# tmp168, <retval>
	movq	-32(%rbp), %rdx	# reg, tmp169
	movq	%rdx, 16(%rax)	# tmp169, <retval>
	movq	-24(%rbp), %rdx	# reg, tmp170
	movq	%rdx, 24(%rax)	# tmp170, <retval>
	.loc 3 330 0
	movq	-72(%rbp), %rax	# .result_ptr,
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	quantum_kronecker, .-quantum_kronecker
	.section	.rodata
	.align 8
.LC12:
	.string	"Not enough memory for %i-sized quantum register!\n"
	.text
	.globl	quantum_state_collapse
	.type	quantum_state_collapse, @function
quantum_state_collapse:
.LFB19:
	.loc 3 336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	addq	$-128, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# .result_ptr, .result_ptr
	movl	%esi, -108(%rbp)	# pos, pos
	movl	%edx, -112(%rbp)	# value, value
	.loc 3 338 0
	movl	$0, -84(%rbp)	#, size
	.loc 3 339 0
	movl	$0, %eax	#, tmp145
	movq	%rax, -80(%rbp)	# tmp145, d
	.loc 3 340 0
	movq	$0, -72(%rbp)	#, lpat
	movq	$0, -64(%rbp)	#, rpat
	.loc 3 343 0
	movl	-108(%rbp), %eax	# pos, tmp146
	movl	$1, %edx	#, tmp147
	movl	%eax, %ecx	# tmp146, tmp183
	salq	%cl, %rdx	# tmp183, tmp148
	movq	%rdx, %rax	# tmp148, tmp148
	movq	%rax, -56(%rbp)	# tmp148, pos2
	.loc 3 348 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L69	#
.L73:
	.loc 3 350 0
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _24->state, D.4838
	andq	-56(%rbp), %rax	# pos2, D.4838
	testq	%rax, %rax	# D.4838
	je	.L70	#,
	.loc 3 350 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, value
	jne	.L71	#,
.L70:
	.loc 3 351 0 is_stmt 1
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _31->state, D.4838
	andq	-56(%rbp), %rax	# pos2, D.4838
	testq	%rax, %rax	# D.4838
	jne	.L72	#,
	.loc 3 351 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, value
	jne	.L72	#,
.L71:
	.loc 3 353 0 is_stmt 1
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movl	(%rax), %edx	# _37->amplitude, D.4839
	movl	4(%rax), %eax	# _37->amplitude, D.4839
	movl	%edx, -120(%rbp)	# tmp152,
	movl	%eax, -116(%rbp)	# tmp153,
	movq	-120(%rbp), %rax	#, tmp154
	movq	%rax, -128(%rbp)	# tmp154, %sfp
	movq	-128(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.4840, D.4840
	cvtps2pd	%xmm0, %xmm0	# D.4840, D.4841
	movsd	-80(%rbp), %xmm1	# d, tmp156
	addsd	%xmm1, %xmm0	# tmp156, tmp155
	movsd	%xmm0, -80(%rbp)	# tmp155, d
	.loc 3 354 0
	addl	$1, -84(%rbp)	#, size
.L72:
	.loc 3 348 0
	addl	$1, -96(%rbp)	#, i
.L69:
	.loc 3 348 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4835
	cmpl	-96(%rbp), %eax	# i, D.4835
	jg	.L73	#,
	.loc 3 360 0 is_stmt 1
	movl	16(%rbp), %eax	# reg.width, D.4835
	subl	$1, %eax	#, D.4835
	movl	%eax, -48(%rbp)	# D.4835, out.width
	.loc 3 361 0
	movl	-84(%rbp), %eax	# size, tmp157
	movl	%eax, -44(%rbp)	# tmp157, out.size
	.loc 3 362 0
	movl	-84(%rbp), %eax	# size, tmp158
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.4837,
	call	calloc	#
	movq	%rax, -32(%rbp)	# D.4842, out.node
	.loc 3 363 0
	movq	-32(%rbp), %rax	# out.node, D.4836
	testq	%rax, %rax	# D.4836
	jne	.L74	#,
	.loc 3 365 0
	movl	-84(%rbp), %eax	# size, tmp160
	movl	%eax, %esi	# tmp160,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 366 0
	movl	$1, %edi	#,
	call	exit	#
.L74:
	.loc 3 368 0
	movl	-84(%rbp), %eax	# size, tmp161
	cltq
	salq	$4, %rax	#, D.4837
	movq	%rax, %rdi	# D.4843,
	call	quantum_memman	#
	.loc 3 369 0
	movl	24(%rbp), %eax	# reg.hashw, D.4835
	movl	%eax, -40(%rbp)	# D.4835, out.hashw
	.loc 3 370 0
	movq	40(%rbp), %rax	# reg.hash, D.4844
	movq	%rax, -24(%rbp)	# D.4844, out.hash
	.loc 3 375 0
	movl	$0, -96(%rbp)	#, i
	movl	$0, -92(%rbp)	#, j
	jmp	.L75	#
.L83:
	.loc 3 377 0
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _60->state, D.4838
	andq	-56(%rbp), %rax	# pos2, D.4838
	testq	%rax, %rax	# D.4838
	je	.L76	#,
	.loc 3 377 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, value
	jne	.L77	#,
.L76:
	.loc 3 378 0 is_stmt 1
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _66->state, D.4838
	andq	-56(%rbp), %rax	# pos2, D.4838
	testq	%rax, %rax	# D.4838
	jne	.L78	#,
	.loc 3 378 0 is_stmt 0 discriminator 1
	cmpl	$0, -112(%rbp)	#, value
	jne	.L78	#,
.L77:
	.loc 3 380 0 is_stmt 1
	movl	$0, -88(%rbp)	#, k
	movq	$0, -64(%rbp)	#, rpat
	jmp	.L79	#
.L80:
	.loc 3 381 0 discriminator 2
	movl	-88(%rbp), %eax	# k, tmp164
	movl	$1, %edx	#, tmp165
	movl	%eax, %ecx	# tmp164, tmp186
	salq	%cl, %rdx	# tmp186, D.4838
	movq	%rdx, %rax	# D.4838, D.4838
	addq	%rax, -64(%rbp)	# D.4838, rpat
	.loc 3 380 0 discriminator 2
	addl	$1, -88(%rbp)	#, k
.L79:
	.loc 3 380 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# k, tmp166
	cmpl	-108(%rbp), %eax	# pos, tmp166
	jl	.L80	#,
	.loc 3 383 0 is_stmt 1
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _77->state, D.4838
	andq	%rax, -64(%rbp)	# D.4838, rpat
	.loc 3 385 0
	movl	$63, -88(%rbp)	#, k
	movq	$0, -72(%rbp)	#, lpat
	jmp	.L81	#
.L82:
	.loc 3 386 0 discriminator 2
	movl	-88(%rbp), %eax	# k, tmp168
	movl	$1, %edx	#, tmp169
	movl	%eax, %ecx	# tmp168, tmp188
	salq	%cl, %rdx	# tmp188, D.4838
	movq	%rdx, %rax	# D.4838, D.4838
	addq	%rax, -72(%rbp)	# D.4838, lpat
	.loc 3 385 0 discriminator 2
	subl	$1, -88(%rbp)	#, k
.L81:
	.loc 3 385 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# k, tmp170
	cmpl	-108(%rbp), %eax	# pos, tmp170
	jg	.L82	#,
	.loc 3 388 0 is_stmt 1
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rdx, %rax	# D.4837, D.4836
	movq	8(%rax), %rax	# _88->state, D.4838
	andq	%rax, -72(%rbp)	# D.4838, lpat
	.loc 3 390 0
	movq	-32(%rbp), %rax	# out.node, D.4836
	movl	-92(%rbp), %edx	# j, tmp172
	movslq	%edx, %rdx	# tmp172, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rax, %rdx	# D.4836, D.4836
	movq	-72(%rbp), %rax	# lpat, tmp173
	shrq	%rax	# D.4838
	orq	-64(%rbp), %rax	# rpat, D.4838
	movq	%rax, 8(%rdx)	# D.4838, _94->state
	.loc 3 391 0
	movq	-32(%rbp), %rax	# out.node, D.4836
	movl	-92(%rbp), %edx	# j, tmp174
	movslq	%edx, %rdx	# tmp174, D.4837
	salq	$4, %rdx	#, D.4837
	leaq	(%rax,%rdx), %rbx	#, D.4836
	movq	32(%rbp), %rax	# reg.node, D.4836
	movl	-96(%rbp), %edx	# i, tmp175
	movslq	%edx, %rdx	# tmp175, D.4837
	salq	$4, %rdx	#, D.4837
	addq	%rax, %rdx	# D.4836, D.4836
	movl	(%rdx), %eax	# _104->amplitude, D.4839
	movl	4(%rdx), %edx	# _104->amplitude, D.4839
	movl	%edx, %r12d	# D.4839, D.4621
	movl	%eax, -128(%rbp)	# D.4621, %sfp
	movq	-80(%rbp), %rax	# d, tmp176
	movq	%rax, -136(%rbp)	# tmp176, %sfp
	movsd	-136(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.4841
	cvtpd2ps	%xmm0, %xmm0	# D.4841, D.4840
	movss	-128(%rbp), %xmm2	# %sfp, D.4840
	divss	%xmm0, %xmm2	# D.4840, D.4840
	movl	%r12d, -128(%rbp)	# D.4621, %sfp
	movss	-128(%rbp), %xmm1	# %sfp, D.4840
	divss	%xmm0, %xmm1	# D.4840, D.4840
	movaps	%xmm1, %xmm0	# D.4840, D.4840
	movss	%xmm2, -128(%rbp)	# D.4840, %sfp
	movl	-128(%rbp), %edx	# %sfp, D.4839
	movss	%xmm0, -128(%rbp)	# D.4840, %sfp
	movl	-128(%rbp), %eax	# %sfp, D.4839
	movl	%edx, (%rbx)	# D.4839, _100->amplitude
	movl	%eax, 4(%rbx)	# D.4839, _100->amplitude
	.loc 3 393 0
	addl	$1, -92(%rbp)	#, j
.L78:
	.loc 3 375 0
	addl	$1, -96(%rbp)	#, i
.L75:
	.loc 3 375 0 is_stmt 0 discriminator 1
	movl	20(%rbp), %eax	# reg.size, D.4835
	cmpl	-96(%rbp), %eax	# i, D.4835
	jg	.L83	#,
	.loc 3 397 0 is_stmt 1
	movq	-104(%rbp), %rax	# .result_ptr, tmp177
	movq	-48(%rbp), %rdx	# out, tmp178
	movq	%rdx, (%rax)	# tmp178, <retval>
	movq	-40(%rbp), %rdx	# out, tmp179
	movq	%rdx, 8(%rax)	# tmp179, <retval>
	movq	-32(%rbp), %rdx	# out, tmp180
	movq	%rdx, 16(%rax)	# tmp180, <retval>
	movq	-24(%rbp), %rdx	# out, tmp181
	movq	%rdx, 24(%rax)	# tmp181, <retval>
	.loc 3 399 0
	movq	-104(%rbp), %rax	# .result_ptr,
	subq	$-128, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	quantum_state_collapse, .-quantum_state_collapse
	.globl	quantum_dot_product
	.type	quantum_dot_product, @function
quantum_dot_product:
.LFB20:
	.loc 3 405 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -40(%rbp)	# reg1, reg1
	movq	%rsi, -48(%rbp)	# reg2, reg2
	.loc 3 407 0
	movl	.LC1(%rip), %eax	#, tmp106
	movl	%eax, -8(%rbp)	# tmp106, f
	movl	.LC1(%rip), %eax	#, tmp107
	movl	%eax, -4(%rbp)	# tmp107, f
	.loc 3 409 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L86	#
.L87:
	.loc 3 410 0 discriminator 2
	movq	-48(%rbp), %rax	# reg2, tmp108
	movq	24(%rax), %rax	# reg2_8(D)->hash, D.4850
	movl	-24(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.4851
	salq	$2, %rdx	#, D.4851
	addq	%rdx, %rax	# D.4851, D.4850
	movl	$0, (%rax)	#, *_14
	.loc 3 409 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L86:
	.loc 3 409 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg2, tmp110
	movl	8(%rax), %eax	# reg2_8(D)->hashw, D.4849
	movl	$1, %edx	#, tmp111
	movl	%eax, %ecx	# D.4849, tmp146
	sall	%cl, %edx	# tmp146, D.4849
	movl	%edx, %eax	# D.4849, D.4849
	cmpl	-24(%rbp), %eax	# i, D.4849
	jg	.L87	#,
	.loc 3 412 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	jmp	.L88	#
.L89:
	.loc 3 413 0 discriminator 2
	movq	-48(%rbp), %rax	# reg2, tmp112
	movq	16(%rax), %rax	# reg2_8(D)->node, D.4852
	movl	-24(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, D.4851
	salq	$4, %rdx	#, D.4851
	addq	%rdx, %rax	# D.4851, D.4852
	movq	8(%rax), %rax	# _21->state, D.4853
	movq	-48(%rbp), %rdx	# reg2, tmp114
	movl	-24(%rbp), %ecx	# i, tmp115
	movl	%ecx, %esi	# tmp115,
	movq	%rax, %rdi	# D.4853,
	call	quantum_add_hash	#
	.loc 3 412 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L88:
	.loc 3 412 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg2, tmp116
	movl	4(%rax), %eax	# reg2_8(D)->size, D.4849
	cmpl	-24(%rbp), %eax	# i, D.4849
	jg	.L89	#,
	.loc 3 415 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	movl	.LC1(%rip), %eax	#, tmp104
	movl	%eax, -12(%rbp)	# tmp104, f$imag
	movl	.LC1(%rip), %eax	#, tmp105
	movl	%eax, -16(%rbp)	# tmp105, f$real
	jmp	.L90	#
.L92:
	.loc 3 417 0
	movq	-40(%rbp), %rax	# reg1, tmp117
	movq	16(%rax), %rax	# reg1_25(D)->node, D.4852
	movl	-24(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, D.4851
	salq	$4, %rdx	#, D.4851
	addq	%rdx, %rax	# D.4851, D.4852
	movq	8(%rax), %rdx	# _30->state, D.4853
	movq	-48(%rbp), %rax	# reg2, tmp119
	movq	(%rax), %rcx	# *reg2_8(D), tmp120
	movq	%rcx, (%rsp)	# tmp120,
	movq	8(%rax), %rcx	# *reg2_8(D), tmp121
	movq	%rcx, 8(%rsp)	# tmp121,
	movq	16(%rax), %rcx	# *reg2_8(D), tmp122
	movq	%rcx, 16(%rsp)	# tmp122,
	movq	24(%rax), %rax	# *reg2_8(D), tmp123
	movq	%rax, 24(%rsp)	# tmp123,
	movq	%rdx, %rdi	# D.4853,
	call	quantum_get_state	#
	movl	%eax, -20(%rbp)	# tmp124, j
	.loc 3 419 0
	cmpl	$0, -20(%rbp)	#, j
	js	.L91	#,
	.loc 3 420 0
	movq	-40(%rbp), %rax	# reg1, tmp125
	movq	16(%rax), %rax	# reg1_25(D)->node, D.4852
	movl	-24(%rbp), %edx	# i, tmp126
	movslq	%edx, %rdx	# tmp126, D.4851
	salq	$4, %rdx	#, D.4851
	addq	%rdx, %rax	# D.4851, D.4852
	movl	(%rax), %edx	# _36->amplitude, D.4855
	movl	4(%rax), %eax	# _36->amplitude, D.4855
	movl	%edx, -56(%rbp)	# tmp127,
	movl	%eax, -52(%rbp)	# tmp128,
	movq	-56(%rbp), %rax	#, tmp129
	movq	%rax, -88(%rbp)	# tmp129, %sfp
	movq	-88(%rbp), %xmm0	# %sfp,
	call	quantum_conj	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp130
	movq	%rax, -64(%rbp)	# tmp130,
	movl	-64(%rbp), %eax	#, D.4854
	movl	-60(%rbp), %edx	#, D.4854
	movq	-48(%rbp), %rcx	# reg2, tmp131
	movq	16(%rcx), %rcx	# reg2_8(D)->node, D.4852
	movl	-20(%rbp), %esi	# j, tmp132
	movslq	%esi, %rsi	# tmp132, D.4851
	salq	$4, %rsi	#, D.4851
	addq	%rcx, %rsi	# D.4852, D.4852
	movl	(%rsi), %ecx	# _42->amplitude, D.4855
	movl	4(%rsi), %esi	# _42->amplitude, D.4855
	movl	%esi, -88(%rbp)	# D.4855, %sfp
	movss	-88(%rbp), %xmm3	# %sfp,
	movl	%ecx, -88(%rbp)	# D.4855, %sfp
	movss	-88(%rbp), %xmm2	# %sfp,
	movl	%edx, -88(%rbp)	# D.4855, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	movl	%eax, -88(%rbp)	# D.4855, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp133
	movq	%rax, -72(%rbp)	# tmp133,
	movl	-72(%rbp), %edx	#, D.4854
	movl	-68(%rbp), %eax	#, D.4854
	movl	%edx, -88(%rbp)	# D.4854, %sfp
	movss	-88(%rbp), %xmm0	# %sfp, D.4855
	movl	%eax, -88(%rbp)	# D.4854, %sfp
	movss	-88(%rbp), %xmm1	# %sfp, D.4855
	movss	-16(%rbp), %xmm2	# f$real, tmp135
	addss	%xmm2, %xmm0	# tmp135, tmp134
	movss	%xmm0, -16(%rbp)	# tmp134, f$real
	movss	-12(%rbp), %xmm0	# f$imag, tmp137
	addss	%xmm1, %xmm0	# D.4855, tmp136
	movss	%xmm0, -12(%rbp)	# tmp136, f$imag
	movl	-12(%rbp), %eax	# f$imag, tmp138
	movl	-16(%rbp), %edx	# f$real, tmp139
	movl	%edx, -8(%rbp)	# tmp139, f
	movl	%eax, -4(%rbp)	# tmp138, f
.L91:
	.loc 3 415 0
	addl	$1, -24(%rbp)	#, i
.L90:
	.loc 3 415 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# reg1, tmp140
	movl	4(%rax), %eax	# reg1_25(D)->size, D.4849
	cmpl	-24(%rbp), %eax	# i, D.4849
	jg	.L92	#,
	.loc 3 423 0 is_stmt 1
	movl	-16(%rbp), %edx	# f$real, D.4854
	movl	-12(%rbp), %eax	# f$imag, D.4854
	movl	%edx, -80(%rbp)	# tmp143,
	movl	%eax, -76(%rbp)	# tmp144,
	movq	-80(%rbp), %rax	#, <retval>
	.loc 3 425 0
	movq	%rax, -88(%rbp)	# <retval>, %sfp
	movq	-88(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	quantum_dot_product, .-quantum_dot_product
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.text
.Letext0:
	.file 4 "matrix.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x775
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x1
	.long	.LASF57
	.long	.LASF58
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
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF16
	.byte	0x10
	.byte	0x4
	.byte	0x20
	.long	0xca
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0x21
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0x22
	.long	0x57
	.byte	0x4
	.uleb128 0x7
	.string	"t"
	.byte	0x4
	.byte	0x23
	.long	0xca
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xd0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF15
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x26
	.long	0x9b
	.uleb128 0x5
	.long	.LASF17
	.byte	0x10
	.byte	0x1
	.byte	0x23
	.long	0x107
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x25
	.long	0xd0
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x26
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x29
	.long	0xe2
	.uleb128 0x5
	.long	.LASF22
	.byte	0x20
	.byte	0x1
	.byte	0x2d
	.long	0x15b
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x30
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.byte	0x31
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.byte	0x32
	.long	0x15b
	.byte	0x10
	.uleb128 0x6
	.long	.LASF27
	.byte	0x1
	.byte	0x33
	.long	0x79
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x107
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x36
	.long	0x112
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x50
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b8
	.uleb128 0xa
	.string	"key"
	.byte	0x1
	.byte	0x50
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x50
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"k32"
	.byte	0x1
	.byte	0x52
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.byte	0x5f
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x200
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x5f
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x5f
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x61
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.byte	0x75
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x252
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x75
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"pos"
	.byte	0x1
	.byte	0x75
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.string	"reg"
	.byte	0x1
	.byte	0x75
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x77
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x161
	.uleb128 0x9
	.long	.LASF31
	.byte	0x2
	.byte	0x26
	.long	0x8d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x292
	.uleb128 0xa
	.string	"a"
	.byte	0x2
	.byte	0x26
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"p"
	.byte	0x2
	.byte	0x28
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x8d
	.uleb128 0x9
	.long	.LASF32
	.byte	0x2
	.byte	0x2f
	.long	0x8d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d2
	.uleb128 0xa
	.string	"a"
	.byte	0x2
	.byte	0x2f
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"p"
	.byte	0x2
	.byte	0x31
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x2
	.byte	0x38
	.long	0x8d
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x318
	.uleb128 0xa
	.string	"a"
	.byte	0x2
	.byte	0x38
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"r"
	.byte	0x2
	.byte	0x3a
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"i"
	.byte	0x2
	.byte	0x3a
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF34
	.byte	0x3
	.byte	0x2d
	.long	0x161
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a
	.uleb128 0xa
	.string	"m"
	.byte	0x3
	.byte	0x2d
	.long	0x38a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.long	.LASF23
	.byte	0x3
	.byte	0x2d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"reg"
	.byte	0x3
	.byte	0x2f
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x3
	.byte	0x30
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xc
	.string	"j"
	.byte	0x3
	.byte	0x30
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF24
	.byte	0x3
	.byte	0x30
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xd7
	.uleb128 0xf
	.long	.LASF35
	.byte	0x3
	.byte	0x6c
	.long	0x161
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ea
	.uleb128 0xb
	.long	.LASF36
	.byte	0x3
	.byte	0x6c
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xb
	.long	.LASF23
	.byte	0x3
	.byte	0x6c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xc
	.string	"reg"
	.byte	0x3
	.byte	0x6e
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"c"
	.byte	0x3
	.byte	0x6f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x3
	.byte	0xa3
	.long	0xd7
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x432
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xa3
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"m"
	.byte	0x3
	.byte	0xa5
	.long	0xd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"i"
	.byte	0x3
	.byte	0xa6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x3
	.byte	0xb3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xb3
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF39
	.byte	0x3
	.byte	0xbd
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xbd
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF40
	.byte	0x3
	.byte	0xc8
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b6
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xc8
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF41
	.byte	0x3
	.byte	0xd2
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fa
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xd2
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"i"
	.byte	0x3
	.byte	0xd4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"j"
	.byte	0x3
	.byte	0xd4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x3
	.byte	0xeb
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x532
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xeb
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"i"
	.byte	0x3
	.byte	0xed
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF43
	.byte	0x3
	.byte	0xf9
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0xb
	.long	.LASF44
	.byte	0x3
	.byte	0xf9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.string	"reg"
	.byte	0x3
	.byte	0xf9
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"i"
	.byte	0x3
	.byte	0xfb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF45
	.byte	0x3
	.byte	0xfb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"l"
	.byte	0x3
	.byte	0xfc
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF46
	.byte	0x3
	.value	0x10d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd
	.uleb128 0x14
	.string	"reg"
	.byte	0x3
	.value	0x10d
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"i"
	.byte	0x3
	.value	0x10f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF47
	.byte	0x3
	.value	0x11d
	.long	0x161
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b
	.uleb128 0x17
	.long	.LASF48
	.byte	0x3
	.value	0x11d
	.long	0x252
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF49
	.byte	0x3
	.value	0x11d
	.long	0x252
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x15
	.string	"i"
	.byte	0x3
	.value	0x11f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"j"
	.byte	0x3
	.value	0x11f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"reg"
	.byte	0x3
	.value	0x120
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x16
	.long	.LASF50
	.byte	0x3
	.value	0x14f
	.long	0x161
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x714
	.uleb128 0x14
	.string	"pos"
	.byte	0x3
	.value	0x14f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x17
	.long	.LASF51
	.byte	0x3
	.value	0x14f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x14
	.string	"reg"
	.byte	0x3
	.value	0x14f
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"i"
	.byte	0x3
	.value	0x151
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.string	"j"
	.byte	0x3
	.value	0x151
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.string	"k"
	.byte	0x3
	.value	0x151
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.long	.LASF24
	.byte	0x3
	.value	0x152
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.string	"d"
	.byte	0x3
	.value	0x153
	.long	0x94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF52
	.byte	0x3
	.value	0x154
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF53
	.byte	0x3
	.value	0x154
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.long	.LASF54
	.byte	0x3
	.value	0x154
	.long	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"out"
	.byte	0x3
	.value	0x155
	.long	0x161
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x19
	.long	.LASF55
	.byte	0x3
	.value	0x194
	.long	0xd0
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF48
	.byte	0x3
	.value	0x194
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF49
	.byte	0x3
	.value	0x194
	.long	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"i"
	.byte	0x3
	.value	0x196
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"j"
	.byte	0x3
	.value	0x196
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"f"
	.byte	0x3
	.value	0x197
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
.LASF13:
	.string	"rows"
.LASF59:
	.string	"quantum_add_hash"
.LASF30:
	.string	"quantum_get_state"
.LASF10:
	.string	"long long unsigned int"
.LASF29:
	.string	"quantum_hash64"
.LASF47:
	.string	"quantum_kronecker"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"quantum_prob_inline"
.LASF38:
	.string	"quantum_destroy_hash"
.LASF34:
	.string	"quantum_matrix2qureg"
.LASF19:
	.string	"state"
.LASF44:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"double"
.LASF28:
	.string	"quantum_reg"
.LASF20:
	.string	"quantum_matrix"
.LASF25:
	.string	"hashw"
.LASF42:
	.string	"quantum_print_expn"
.LASF27:
	.string	"hash"
.LASF51:
	.string	"value"
.LASF41:
	.string	"quantum_print_qureg"
.LASF45:
	.string	"oldwidth"
.LASF16:
	.string	"quantum_matrix_struct"
.LASF3:
	.string	"unsigned int"
.LASF52:
	.string	"lpat"
.LASF43:
	.string	"quantum_addscratch"
.LASF0:
	.string	"long unsigned int"
.LASF58:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF23:
	.string	"width"
.LASF24:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF32:
	.string	"quantum_imag"
.LASF54:
	.string	"pos2"
.LASF22:
	.string	"quantum_reg_struct"
.LASF50:
	.string	"quantum_state_collapse"
.LASF7:
	.string	"sizetype"
.LASF46:
	.string	"quantum_print_hash"
.LASF39:
	.string	"quantum_delete_qureg"
.LASF36:
	.string	"initval"
.LASF15:
	.string	"complex float"
.LASF11:
	.string	"float"
.LASF48:
	.string	"reg1"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"node"
.LASF35:
	.string	"quantum_new_qureg"
.LASF5:
	.string	"short int"
.LASF49:
	.string	"reg2"
.LASF17:
	.string	"quantum_reg_node_struct"
.LASF57:
	.string	"qureg.c"
.LASF40:
	.string	"quantum_delete_qureg_hashpreserve"
.LASF55:
	.string	"quantum_dot_product"
.LASF8:
	.string	"char"
.LASF37:
	.string	"quantum_qureg2matrix"
.LASF21:
	.string	"quantum_reg_node"
.LASF31:
	.string	"quantum_real"
.LASF56:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"cols"
.LASF53:
	.string	"rpat"
.LASF18:
	.string	"amplitude"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
