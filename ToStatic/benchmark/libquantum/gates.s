	.file	"gates.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX gates.c -mtune=generic -march=x86-64
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
.LFB2:
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
	movl	(%rax), %eax	# *p_1, D.5644
	.loc 1 42 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	quantum_real, .-quantum_real
	.type	quantum_imag, @function
quantum_imag:
.LFB3:
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
	movl	4(%rax), %eax	# MEM[(float *)p_1 + 4B], D.5646
	.loc 1 51 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quantum_imag, .-quantum_imag
	.type	quantum_prob_inline, @function
quantum_prob_inline:
.LFB4:
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
	movaps	%xmm0, %xmm1	# tmp70, D.5647
	mulss	-8(%rbp), %xmm1	# r, D.5647
	movss	-4(%rbp), %xmm0	# i, tmp71
	mulss	-4(%rbp), %xmm0	# i, D.5647
	addss	%xmm1, %xmm0	# D.5647, D.5647
	movss	%xmm0, -40(%rbp)	# D.5647, %sfp
	movl	-40(%rbp), %eax	# %sfp, <retval>
	.loc 1 64 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	quantum_prob_inline, .-quantum_prob_inline
	.type	quantum_hash64, @function
quantum_hash64:
.LFB5:
	.file 2 "qureg.h"
	.loc 2 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# key, key
	movl	%esi, -28(%rbp)	# width, width
	.loc 2 84 0
	movq	-24(%rbp), %rax	# key, tmp65
	movl	%eax, %edx	# tmp65, D.5648
	movq	-24(%rbp), %rax	# key, tmp66
	shrq	$32, %rax	#, D.5649
	xorl	%edx, %eax	# D.5648, tmp67
	movl	%eax, -4(%rbp)	# tmp67, k32
	.loc 2 86 0
	movl	-4(%rbp), %eax	# k32, tmp69
	imull	$-1640562687, %eax, %eax	#, tmp69, tmp68
	movl	%eax, -4(%rbp)	# tmp68, k32
	.loc 2 87 0
	movl	$32, %eax	#, tmp70
	subl	-28(%rbp), %eax	# width, D.5650
	movl	%eax, %ecx	# D.5650, tmp72
	shrl	%cl, -4(%rbp)	# tmp72, k32
	.loc 2 89 0
	movl	-4(%rbp), %eax	# k32, D.5648
	.loc 2 90 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_hash64, .-quantum_hash64
	.type	quantum_get_state, @function
quantum_get_state:
.LFB6:
	.loc 2 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	.loc 2 99 0
	movl	24(%rbp), %edx	# reg.hashw, D.5651
	movq	-24(%rbp), %rax	# a, tmp86
	movl	%edx, %esi	# D.5651,
	movq	%rax, %rdi	# tmp86,
	call	quantum_hash64	#
	movl	%eax, -4(%rbp)	# D.5652, i
	.loc 2 101 0
	jmp	.L10	#
.L13:
	.loc 2 103 0
	movq	32(%rbp), %rax	# reg.node, D.5655
	movq	40(%rbp), %rdx	# reg.hash, D.5653
	movl	-4(%rbp), %ecx	# i, tmp87
	movslq	%ecx, %rcx	# tmp87, D.5654
	salq	$2, %rcx	#, D.5654
	addq	%rcx, %rdx	# D.5654, D.5653
	movl	(%rdx), %edx	# *_16, D.5651
	movslq	%edx, %rdx	# D.5651, D.5654
	salq	$4, %rdx	#, D.5654
	subq	$16, %rdx	#, D.5656
	addq	%rdx, %rax	# D.5656, D.5655
	movq	8(%rax), %rax	# _21->state, D.5657
	cmpq	-24(%rbp), %rax	# a, D.5657
	jne	.L11	#,
	.loc 2 104 0
	movq	40(%rbp), %rax	# reg.hash, D.5653
	movl	-4(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.5654
	salq	$2, %rdx	#, D.5654
	addq	%rdx, %rax	# D.5654, D.5653
	movl	(%rax), %eax	# *_26, D.5651
	subl	$1, %eax	#, D.5651
	jmp	.L12	#
.L11:
	.loc 2 105 0
	addl	$1, -4(%rbp)	#, i
	.loc 2 106 0
	movl	24(%rbp), %eax	# reg.hashw, D.5651
	movl	$1, %edx	#, tmp89
	movl	%eax, %ecx	# D.5651, tmp93
	sall	%cl, %edx	# tmp93, D.5651
	movl	%edx, %eax	# D.5651, D.5651
	cmpl	-4(%rbp), %eax	# i, D.5651
	jne	.L10	#,
	.loc 2 107 0
	movl	$0, -4(%rbp)	#, i
.L10:
	.loc 2 101 0 discriminator 1
	movq	40(%rbp), %rax	# reg.hash, D.5653
	movl	-4(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, D.5654
	salq	$2, %rdx	#, D.5654
	addq	%rdx, %rax	# D.5654, D.5653
	movl	(%rax), %eax	# *_10, D.5651
	testl	%eax, %eax	# D.5651
	jne	.L13	#,
	.loc 2 110 0
	movl	$-1, %eax	#, D.5651
.L12:
	.loc 2 112 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	quantum_get_state, .-quantum_get_state
	.type	quantum_add_hash, @function
quantum_add_hash:
.LFB7:
	.loc 2 118 0
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
	.loc 2 121 0
	movq	-40(%rbp), %rax	# reg, tmp73
	movl	8(%rax), %edx	# reg_2(D)->hashw, D.5658
	movq	-24(%rbp), %rax	# a, tmp74
	movl	%edx, %esi	# D.5658,
	movq	%rax, %rdi	# tmp74,
	call	quantum_hash64	#
	movl	%eax, -4(%rbp)	# D.5659, i
	.loc 2 123 0
	jmp	.L15	#
.L16:
	.loc 2 125 0
	addl	$1, -4(%rbp)	#, i
	.loc 2 126 0
	movq	-40(%rbp), %rax	# reg, tmp75
	movl	8(%rax), %eax	# reg_2(D)->hashw, D.5658
	movl	$1, %edx	#, tmp76
	movl	%eax, %ecx	# D.5658, tmp83
	sall	%cl, %edx	# tmp83, D.5658
	movl	%edx, %eax	# D.5658, D.5658
	cmpl	-4(%rbp), %eax	# i, D.5658
	jne	.L15	#,
	.loc 2 127 0
	movl	$0, -4(%rbp)	#, i
.L15:
	.loc 2 123 0 discriminator 1
	movq	-40(%rbp), %rax	# reg, tmp77
	movq	24(%rax), %rax	# reg_2(D)->hash, D.5660
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.5661
	salq	$2, %rdx	#, D.5661
	addq	%rdx, %rax	# D.5661, D.5660
	movl	(%rax), %eax	# *_10, D.5658
	testl	%eax, %eax	# D.5658
	jne	.L16	#,
	.loc 2 130 0
	movq	-40(%rbp), %rax	# reg, tmp79
	movq	24(%rax), %rax	# reg_2(D)->hash, D.5660
	movl	-4(%rbp), %edx	# i, tmp80
	movslq	%edx, %rdx	# tmp80, D.5661
	salq	$2, %rdx	#, D.5661
	addq	%rdx, %rax	# D.5661, D.5660
	movl	-28(%rbp), %edx	# pos, tmp81
	addl	$1, %edx	#, D.5658
	movl	%edx, (%rax)	# D.5658, *_19
	.loc 2 132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	quantum_add_hash, .-quantum_add_hash
	.globl	quantum_cnot
	.type	quantum_cnot, @function
quantum_cnot:
.LFB8:
	.file 3 "gates.c"
	.loc 3 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# control, control
	movl	%esi, -24(%rbp)	# target, target
	movq	%rdx, -32(%rbp)	# reg, reg
	.loc 3 52 0
	leaq	-8(%rbp), %rax	#, tmp80
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	quantum_qec_get_status	#
	.loc 3 54 0
	movl	-8(%rbp), %eax	# qec, qec.0
	testl	%eax, %eax	# qec.0
	je	.L18	#,
	.loc 3 55 0
	movq	-32(%rbp), %rdx	# reg, tmp81
	movl	-24(%rbp), %ecx	# target, tmp82
	movl	-20(%rbp), %eax	# control, tmp83
	movl	%ecx, %esi	# tmp82,
	movl	%eax, %edi	# tmp83,
	call	quantum_cnot_ft	#
	jmp	.L17	#
.L18:
	.loc 3 58 0
	movl	-24(%rbp), %edx	# target, tmp84
	movl	-20(%rbp), %eax	# control, tmp85
	movl	%eax, %esi	# tmp85,
	movl	$1, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5662
	jne	.L17	#,
	.loc 3 61 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L22	#
.L24:
	.loc 3 65 0
	movq	-32(%rbp), %rax	# reg, tmp86
	movq	16(%rax), %rax	# reg_5(D)->node, D.5663
	movl	-4(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, D.5664
	salq	$4, %rdx	#, D.5664
	addq	%rdx, %rax	# D.5664, D.5663
	movq	8(%rax), %rdx	# _12->state, D.5665
	movl	-20(%rbp), %eax	# control, tmp88
	movl	%eax, %ecx	# tmp88, tmp98
	shrq	%cl, %rdx	# tmp98, D.5665
	movq	%rdx, %rax	# D.5665, D.5665
	andl	$1, %eax	#, D.5665
	testq	%rax, %rax	# D.5665
	je	.L23	#,
	.loc 3 66 0
	movq	-32(%rbp), %rax	# reg, tmp89
	movq	16(%rax), %rax	# reg_5(D)->node, D.5663
	movl	-4(%rbp), %edx	# i, tmp90
	movslq	%edx, %rdx	# tmp90, D.5664
	salq	$4, %rdx	#, D.5664
	addq	%rax, %rdx	# D.5663, D.5663
	movq	-32(%rbp), %rax	# reg, tmp91
	movq	16(%rax), %rax	# reg_5(D)->node, D.5663
	movl	-4(%rbp), %ecx	# i, tmp92
	movslq	%ecx, %rcx	# tmp92, D.5664
	salq	$4, %rcx	#, D.5664
	addq	%rcx, %rax	# D.5664, D.5663
	movq	8(%rax), %rsi	# _23->state, D.5665
	movl	-24(%rbp), %eax	# target, tmp93
	movl	$1, %edi	#, tmp94
	movl	%eax, %ecx	# tmp93, tmp100
	salq	%cl, %rdi	# tmp100, D.5665
	movq	%rdi, %rax	# D.5665, D.5665
	xorq	%rsi, %rax	# D.5665, D.5665
	movq	%rax, 8(%rdx)	# D.5665, _19->state
.L23:
	.loc 3 61 0
	addl	$1, -4(%rbp)	#, i
.L22:
	.loc 3 61 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp95
	movl	4(%rax), %eax	# reg_5(D)->size, D.5662
	cmpl	-4(%rbp), %eax	# i, D.5662
	jg	.L24	#,
	.loc 3 68 0 is_stmt 1
	movq	-32(%rbp), %rax	# reg, tmp96
	movq	%rax, %rdi	# tmp96,
	call	quantum_decohere	#
.L17:
	.loc 3 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	quantum_cnot, .-quantum_cnot
	.globl	quantum_toffoli
	.type	quantum_toffoli, @function
quantum_toffoli:
.LFB9:
	.loc 3 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# control1, control1
	movl	%esi, -24(%rbp)	# control2, control2
	movl	%edx, -28(%rbp)	# target, target
	movq	%rcx, -40(%rbp)	# reg, reg
	.loc 3 80 0
	leaq	-8(%rbp), %rax	#, tmp87
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	quantum_qec_get_status	#
	.loc 3 82 0
	movl	-8(%rbp), %eax	# qec, qec.1
	testl	%eax, %eax	# qec.1
	je	.L26	#,
	.loc 3 83 0
	movq	-40(%rbp), %rcx	# reg, tmp88
	movl	-28(%rbp), %edx	# target, tmp89
	movl	-24(%rbp), %esi	# control2, tmp90
	movl	-20(%rbp), %eax	# control1, tmp91
	movl	%eax, %edi	# tmp91,
	call	quantum_toffoli_ft	#
	jmp	.L25	#
.L26:
	.loc 3 86 0
	movl	-28(%rbp), %ecx	# target, tmp92
	movl	-24(%rbp), %edx	# control2, tmp93
	movl	-20(%rbp), %eax	# control1, tmp94
	movl	%eax, %esi	# tmp94,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5666
	jne	.L25	#,
	.loc 3 89 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L30	#
.L32:
	.loc 3 94 0
	movq	-40(%rbp), %rax	# reg, tmp95
	movq	16(%rax), %rax	# reg_6(D)->node, D.5667
	movl	-4(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, D.5668
	salq	$4, %rdx	#, D.5668
	addq	%rdx, %rax	# D.5668, D.5667
	movq	8(%rax), %rdx	# _13->state, D.5669
	movl	-20(%rbp), %eax	# control1, tmp97
	movl	%eax, %ecx	# tmp97, tmp110
	shrq	%cl, %rdx	# tmp110, D.5669
	movq	%rdx, %rax	# D.5669, D.5669
	andl	$1, %eax	#, D.5669
	testq	%rax, %rax	# D.5669
	je	.L31	#,
	.loc 3 96 0
	movq	-40(%rbp), %rax	# reg, tmp98
	movq	16(%rax), %rax	# reg_6(D)->node, D.5667
	movl	-4(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, D.5668
	salq	$4, %rdx	#, D.5668
	addq	%rdx, %rax	# D.5668, D.5667
	movq	8(%rax), %rdx	# _20->state, D.5669
	movl	-24(%rbp), %eax	# control2, tmp100
	movl	%eax, %ecx	# tmp100, tmp112
	shrq	%cl, %rdx	# tmp112, D.5669
	movq	%rdx, %rax	# D.5669, D.5669
	andl	$1, %eax	#, D.5669
	testq	%rax, %rax	# D.5669
	je	.L31	#,
	.loc 3 98 0
	movq	-40(%rbp), %rax	# reg, tmp101
	movq	16(%rax), %rax	# reg_6(D)->node, D.5667
	movl	-4(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, D.5668
	salq	$4, %rdx	#, D.5668
	addq	%rax, %rdx	# D.5667, D.5667
	movq	-40(%rbp), %rax	# reg, tmp103
	movq	16(%rax), %rax	# reg_6(D)->node, D.5667
	movl	-4(%rbp), %ecx	# i, tmp104
	movslq	%ecx, %rcx	# tmp104, D.5668
	salq	$4, %rcx	#, D.5668
	addq	%rcx, %rax	# D.5668, D.5667
	movq	8(%rax), %rsi	# _31->state, D.5669
	movl	-28(%rbp), %eax	# target, tmp105
	movl	$1, %edi	#, tmp106
	movl	%eax, %ecx	# tmp105, tmp114
	salq	%cl, %rdi	# tmp114, D.5669
	movq	%rdi, %rax	# D.5669, D.5669
	xorq	%rsi, %rax	# D.5669, D.5669
	movq	%rax, 8(%rdx)	# D.5669, _27->state
.L31:
	.loc 3 89 0
	addl	$1, -4(%rbp)	#, i
.L30:
	.loc 3 89 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# reg, tmp107
	movl	4(%rax), %eax	# reg_6(D)->size, D.5666
	cmpl	-4(%rbp), %eax	# i, D.5666
	jg	.L32	#,
	.loc 3 102 0 is_stmt 1
	movq	-40(%rbp), %rax	# reg, tmp108
	movq	%rax, %rdi	# tmp108,
	call	quantum_decohere	#
.L25:
	.loc 3 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	quantum_toffoli, .-quantum_toffoli
	.section	.rodata
	.align 8
.LC0:
	.string	"Error allocating %i-element int array!\n"
	.text
	.globl	quantum_unbounded_toffoli
	.type	quantum_unbounded_toffoli, @function
quantum_unbounded_toffoli:
.LFB10:
	.loc 3 113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movl	%edi, -228(%rbp)	# controlling, controlling
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L34	#,
	.loc 3 113 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L34:
	movq	%rsi, -240(%rbp)	# reg, reg
	.loc 3 119 0
	movl	-228(%rbp), %eax	# controlling, tmp113
	cltq
	salq	$2, %rax	#, D.5670
	movq	%rax, %rdi	# D.5670,
	call	malloc	#
	movq	%rax, -208(%rbp)	# tmp114, controls
	.loc 3 120 0
	cmpq	$0, -208(%rbp)	#, controls
	jne	.L35	#,
	.loc 3 122 0
	movl	-228(%rbp), %eax	# controlling, tmp115
	movl	%eax, %esi	# tmp115,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 123 0
	movl	$1, %edi	#,
	call	exit	#
.L35:
	.loc 3 125 0
	movl	-228(%rbp), %eax	# controlling, tmp116
	cltq
	salq	$2, %rax	#, D.5670
	movq	%rax, %rdi	# D.5671,
	call	quantum_memman	#
	.loc 3 127 0
	movl	$16, -200(%rbp)	#, MEM[(struct [1] *)&bits].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&bits].fp_offset
	leaq	16(%rbp), %rax	#, tmp138
	movq	%rax, -192(%rbp)	# tmp138, MEM[(struct [1] *)&bits].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp139
	movq	%rax, -184(%rbp)	# tmp139, MEM[(struct [1] *)&bits].reg_save_area
	.loc 3 129 0
	movl	$0, -220(%rbp)	#, i
	jmp	.L36	#
.L39:
	.loc 3 130 0
	movl	-220(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5670
	movq	-208(%rbp), %rax	# controls, tmp119
	leaq	(%rdx,%rax), %rcx	#, D.5672
	movl	-200(%rbp), %eax	# bits.gp_offset, D.5673
	cmpl	$48, %eax	#, D.5673
	jae	.L37	#,
	.loc 3 130 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# bits.reg_save_area, D.5674
	movl	-200(%rbp), %eax	# bits.gp_offset, D.5673
	movl	%eax, %eax	# D.5673, D.5675
	addq	%rdx, %rax	# D.5674, addr.2
	movl	-200(%rbp), %edx	# bits.gp_offset, D.5673
	addl	$8, %edx	#, D.5673
	movl	%edx, -200(%rbp)	# D.5673, bits.gp_offset
	jmp	.L38	#
.L37:
	.loc 3 130 0 discriminator 1
	movq	-192(%rbp), %rdx	# bits.overflow_arg_area, D.5674
	movq	%rdx, %rax	# D.5674, addr.2
	addq	$8, %rdx	#, D.5674
	movq	%rdx, -192(%rbp)	# D.5674, bits.overflow_arg_area
.L38:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.2_4], D.5676
	movl	%eax, (%rcx)	# D.5676, *_16
	.loc 3 129 0 is_stmt 1 discriminator 1
	addl	$1, -220(%rbp)	#, i
.L36:
	movl	-220(%rbp), %eax	# i, tmp120
	cmpl	-228(%rbp), %eax	# controlling, tmp120
	jl	.L39	#,
	.loc 3 132 0
	movl	-200(%rbp), %eax	# bits.gp_offset, D.5673
	cmpl	$48, %eax	#, D.5673
	jae	.L40	#,
	.loc 3 132 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rdx	# bits.reg_save_area, D.5674
	movl	-200(%rbp), %eax	# bits.gp_offset, D.5673
	movl	%eax, %eax	# D.5673, D.5675
	addq	%rdx, %rax	# D.5674, addr.3
	movl	-200(%rbp), %edx	# bits.gp_offset, D.5673
	addl	$8, %edx	#, D.5673
	movl	%edx, -200(%rbp)	# D.5673, bits.gp_offset
	jmp	.L41	#
.L40:
	.loc 3 132 0 discriminator 1
	movq	-192(%rbp), %rdx	# bits.overflow_arg_area, D.5674
	movq	%rdx, %rax	# D.5674, addr.3
	addq	$8, %rdx	#, D.5674
	movq	%rdx, -192(%rbp)	# D.5674, bits.overflow_arg_area
.L41:
	movl	(%rax), %eax	# MEM[(int * {ref-all})addr.3_5], tmp121
	movl	%eax, -212(%rbp)	# tmp121, target
	.loc 3 136 0 is_stmt 1 discriminator 1
	movl	$0, -220(%rbp)	#, i
	jmp	.L42	#
.L47:
	.loc 3 138 0
	movl	$0, -216(%rbp)	#, j
	jmp	.L43	#
.L45:
	.loc 3 139 0
	addl	$1, -216(%rbp)	#, j
.L43:
	.loc 3 138 0 discriminator 1
	movl	-216(%rbp), %eax	# j, tmp122
	cmpl	-228(%rbp), %eax	# controlling, tmp122
	jge	.L44	#,
	.loc 3 139 0 discriminator 2
	movq	-240(%rbp), %rax	# reg, tmp123
	movq	16(%rax), %rax	# reg_41(D)->node, D.5677
	movl	-220(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, D.5670
	salq	$4, %rdx	#, D.5670
	addq	%rdx, %rax	# D.5670, D.5677
	movq	8(%rax), %rdx	# _47->state, D.5678
	movl	-216(%rbp), %eax	# j, tmp125
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5670
	movq	-208(%rbp), %rax	# controls, tmp126
	addq	%rcx, %rax	# D.5670, D.5672
	movl	(%rax), %eax	# *_51, D.5676
	.loc 3 138 0 discriminator 2
	movl	%eax, %ecx	# D.5676, tmp141
	shrq	%cl, %rdx	# tmp141, D.5678
	movq	%rdx, %rax	# D.5678, D.5678
	andl	$1, %eax	#, D.5678
	testq	%rax, %rax	# D.5678
	jne	.L45	#,
.L44:
	.loc 3 141 0
	movl	-216(%rbp), %eax	# j, tmp127
	cmpl	-228(%rbp), %eax	# controlling, tmp127
	jne	.L46	#,
	.loc 3 142 0
	movq	-240(%rbp), %rax	# reg, tmp128
	movq	16(%rax), %rax	# reg_41(D)->node, D.5677
	movl	-220(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, D.5670
	salq	$4, %rdx	#, D.5670
	addq	%rax, %rdx	# D.5677, D.5677
	movq	-240(%rbp), %rax	# reg, tmp130
	movq	16(%rax), %rax	# reg_41(D)->node, D.5677
	movl	-220(%rbp), %ecx	# i, tmp131
	movslq	%ecx, %rcx	# tmp131, D.5670
	salq	$4, %rcx	#, D.5670
	addq	%rcx, %rax	# D.5670, D.5677
	movq	8(%rax), %rsi	# _63->state, D.5678
	movl	-212(%rbp), %eax	# target, tmp132
	movl	$1, %edi	#, tmp133
	movl	%eax, %ecx	# tmp132, tmp143
	salq	%cl, %rdi	# tmp143, D.5678
	movq	%rdi, %rax	# D.5678, D.5678
	xorq	%rsi, %rax	# D.5678, D.5678
	movq	%rax, 8(%rdx)	# D.5678, _59->state
.L46:
	.loc 3 136 0
	addl	$1, -220(%rbp)	#, i
.L42:
	.loc 3 136 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# reg, tmp134
	movl	4(%rax), %eax	# reg_41(D)->size, D.5676
	cmpl	-220(%rbp), %eax	# i, D.5676
	jg	.L47	#,
	.loc 3 145 0 is_stmt 1
	movq	-208(%rbp), %rax	# controls, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 3 146 0
	movl	-228(%rbp), %eax	# controlling, tmp136
	negl	%eax	# D.5676
	cltq
	salq	$2, %rax	#, D.5670
	movq	%rax, %rdi	# D.5671,
	call	quantum_memman	#
	.loc 3 148 0
	movq	-240(%rbp), %rax	# reg, tmp137
	movq	%rax, %rdi	# tmp137,
	call	quantum_decohere	#
	.loc 3 150 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	quantum_unbounded_toffoli, .-quantum_unbounded_toffoli
	.globl	quantum_sigma_x
	.type	quantum_sigma_x, @function
quantum_sigma_x:
.LFB11:
	.loc 3 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 3 161 0
	leaq	-8(%rbp), %rax	#, tmp73
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	quantum_qec_get_status	#
	.loc 3 163 0
	movl	-8(%rbp), %eax	# qec, qec.4
	testl	%eax, %eax	# qec.4
	je	.L49	#,
	.loc 3 164 0
	movq	-32(%rbp), %rdx	# reg, tmp74
	movl	-20(%rbp), %eax	# target, tmp75
	movq	%rdx, %rsi	# tmp74,
	movl	%eax, %edi	# tmp75,
	call	quantum_sigma_x_ft	#
	jmp	.L48	#
.L49:
	.loc 3 167 0
	movl	-20(%rbp), %eax	# target, tmp76
	movl	%eax, %esi	# tmp76,
	movl	$3, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5682
	jne	.L48	#,
	.loc 3 170 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L53	#
.L54:
	.loc 3 174 0 discriminator 2
	movq	-32(%rbp), %rax	# reg, tmp77
	movq	16(%rax), %rax	# reg_4(D)->node, D.5683
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.5684
	salq	$4, %rdx	#, D.5684
	addq	%rax, %rdx	# D.5683, D.5683
	movq	-32(%rbp), %rax	# reg, tmp79
	movq	16(%rax), %rax	# reg_4(D)->node, D.5683
	movl	-4(%rbp), %ecx	# i, tmp80
	movslq	%ecx, %rcx	# tmp80, D.5684
	salq	$4, %rcx	#, D.5684
	addq	%rcx, %rax	# D.5684, D.5683
	movq	8(%rax), %rsi	# _15->state, D.5685
	movl	-20(%rbp), %eax	# target, tmp81
	movl	$1, %edi	#, tmp82
	movl	%eax, %ecx	# tmp81, tmp86
	salq	%cl, %rdi	# tmp86, D.5685
	movq	%rdi, %rax	# D.5685, D.5685
	xorq	%rsi, %rax	# D.5685, D.5685
	movq	%rax, 8(%rdx)	# D.5685, _11->state
	.loc 3 170 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L53:
	.loc 3 170 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp83
	movl	4(%rax), %eax	# reg_4(D)->size, D.5682
	cmpl	-4(%rbp), %eax	# i, D.5682
	jg	.L54	#,
	.loc 3 176 0 is_stmt 1
	movq	-32(%rbp), %rax	# reg, tmp84
	movq	%rax, %rdi	# tmp84,
	call	quantum_decohere	#
.L48:
	.loc 3 178 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	quantum_sigma_x, .-quantum_sigma_x
	.globl	quantum_sigma_y
	.type	quantum_sigma_y, @function
quantum_sigma_y:
.LFB12:
	.loc 3 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# target, target
	movq	%rsi, -48(%rbp)	# reg, reg
	.loc 3 187 0
	movl	-36(%rbp), %eax	# target, tmp111
	movl	%eax, %esi	# tmp111,
	movl	$4, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5686
	je	.L56	#,
	.loc 3 188 0
	jmp	.L55	#
.L56:
	.loc 3 190 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L58	#
.L61:
	.loc 3 195 0
	movq	-48(%rbp), %rax	# reg, tmp112
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, D.5688
	salq	$4, %rdx	#, D.5688
	addq	%rax, %rdx	# D.5687, D.5687
	movq	-48(%rbp), %rax	# reg, tmp114
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %ecx	# i, tmp115
	movslq	%ecx, %rcx	# tmp115, D.5688
	salq	$4, %rcx	#, D.5688
	addq	%rcx, %rax	# D.5688, D.5687
	movq	8(%rax), %rsi	# _14->state, D.5689
	movl	-36(%rbp), %eax	# target, tmp116
	movl	$1, %edi	#, tmp117
	movl	%eax, %ecx	# tmp116, tmp134
	salq	%cl, %rdi	# tmp134, D.5689
	movq	%rdi, %rax	# D.5689, D.5689
	xorq	%rsi, %rax	# D.5689, D.5689
	movq	%rax, 8(%rdx)	# D.5689, _10->state
	.loc 3 197 0
	movq	-48(%rbp), %rax	# reg, tmp118
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, D.5688
	salq	$4, %rdx	#, D.5688
	addq	%rdx, %rax	# D.5688, D.5687
	movq	8(%rax), %rdx	# _21->state, D.5689
	movl	-36(%rbp), %eax	# target, tmp120
	movl	%eax, %ecx	# tmp120, tmp136
	shrq	%cl, %rdx	# tmp136, D.5689
	movq	%rdx, %rax	# D.5689, D.5689
	andl	$1, %eax	#, D.5689
	testq	%rax, %rax	# D.5689
	je	.L59	#,
	.loc 3 198 0
	movq	-48(%rbp), %rax	# reg, tmp121
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, D.5688
	salq	$4, %rdx	#, D.5688
	leaq	(%rax,%rdx), %rbx	#, D.5687
	movq	-48(%rbp), %rax	# reg, tmp123
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp124
	movslq	%edx, %rdx	# tmp124, D.5688
	salq	$4, %rdx	#, D.5688
	addq	%rax, %rdx	# D.5687, D.5687
	movl	(%rdx), %eax	# _32->amplitude, D.5691
	movl	4(%rdx), %edx	# _32->amplitude, D.5691
	movss	.LC1(%rip), %xmm3	#,
	xorps	%xmm2, %xmm2	#
	movl	%edx, -72(%rbp)	# D.5691, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.5691, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, tmp125
	movq	%rax, -56(%rbp)	# tmp125,
	movl	-56(%rbp), %edx	#, D.5690
	movl	-52(%rbp), %eax	#, D.5690
	movl	%edx, (%rbx)	# D.5691, *_28
	movl	%eax, 4(%rbx)	# D.5691, *_28
	jmp	.L60	#
.L59:
	.loc 3 200 0
	movq	-48(%rbp), %rax	# reg, tmp126
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, D.5688
	salq	$4, %rdx	#, D.5688
	leaq	(%rax,%rdx), %rbx	#, D.5687
	movq	-48(%rbp), %rax	# reg, tmp128
	movq	16(%rax), %rax	# reg_5(D)->node, D.5687
	movl	-20(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, D.5688
	salq	$4, %rdx	#, D.5688
	addq	%rax, %rdx	# D.5687, D.5687
	movl	(%rdx), %eax	# _42->amplitude, D.5691
	movl	4(%rdx), %edx	# _42->amplitude, D.5691
	movss	.LC3(%rip), %xmm3	#,
	movss	.LC4(%rip), %xmm2	#,
	movl	%edx, -72(%rbp)	# D.5691, %sfp
	movss	-72(%rbp), %xmm1	# %sfp,
	movl	%eax, -72(%rbp)	# D.5691, %sfp
	movss	-72(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, tmp130
	movq	%rax, -64(%rbp)	# tmp130,
	movl	-64(%rbp), %edx	#, D.5690
	movl	-60(%rbp), %eax	#, D.5690
	movl	%edx, (%rbx)	# D.5691, *_38
	movl	%eax, 4(%rbx)	# D.5691, *_38
.L60:
	.loc 3 190 0
	addl	$1, -20(%rbp)	#, i
.L58:
	.loc 3 190 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg, tmp131
	movl	4(%rax), %eax	# reg_5(D)->size, D.5686
	cmpl	-20(%rbp), %eax	# i, D.5686
	jg	.L61	#,
	.loc 3 203 0 is_stmt 1
	movq	-48(%rbp), %rax	# reg, tmp132
	movq	%rax, %rdi	# tmp132,
	call	quantum_decohere	#
.L55:
	.loc 3 204 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	quantum_sigma_y, .-quantum_sigma_y
	.globl	quantum_sigma_z
	.type	quantum_sigma_z, @function
quantum_sigma_z:
.LFB13:
	.loc 3 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 3 213 0
	movl	-20(%rbp), %eax	# target, tmp86
	movl	%eax, %esi	# tmp86,
	movl	$5, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5692
	je	.L63	#,
	.loc 3 214 0
	jmp	.L62	#
.L63:
	.loc 3 216 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L65	#
.L67:
	.loc 3 220 0
	movq	-32(%rbp), %rax	# reg, tmp87
	movq	16(%rax), %rax	# reg_5(D)->node, D.5693
	movl	-4(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.5694
	salq	$4, %rdx	#, D.5694
	addq	%rdx, %rax	# D.5694, D.5693
	movq	8(%rax), %rdx	# _10->state, D.5695
	movl	-20(%rbp), %eax	# target, tmp89
	movl	%eax, %ecx	# tmp89, tmp99
	shrq	%cl, %rdx	# tmp99, D.5695
	movq	%rdx, %rax	# D.5695, D.5695
	andl	$1, %eax	#, D.5695
	testq	%rax, %rax	# D.5695
	je	.L66	#,
	.loc 3 221 0
	movq	-32(%rbp), %rax	# reg, tmp90
	movq	16(%rax), %rax	# reg_5(D)->node, D.5693
	movl	-4(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.5694
	salq	$4, %rdx	#, D.5694
	leaq	(%rax,%rdx), %rcx	#, D.5693
	movq	-32(%rbp), %rax	# reg, tmp92
	movq	16(%rax), %rax	# reg_5(D)->node, D.5693
	movl	-4(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.5694
	salq	$4, %rdx	#, D.5694
	addq	%rdx, %rax	# D.5694, D.5693
	movl	(%rax), %edx	# _21->amplitude, D.5696
	movl	4(%rax), %eax	# _21->amplitude, D.5696
	movl	%edx, -24(%rbp)	# D.4609, %sfp
	movss	-24(%rbp), %xmm1	# %sfp, D.5697
	movss	.LC5(%rip), %xmm0	#, tmp94
	movaps	%xmm1, %xmm2	# D.5697, D.5697
	xorps	%xmm0, %xmm2	# tmp94, D.5697
	movl	%eax, -24(%rbp)	# D.4609, %sfp
	movss	-24(%rbp), %xmm1	# %sfp, D.5697
	movss	.LC5(%rip), %xmm0	#, tmp95
	xorps	%xmm1, %xmm0	# D.5697, D.5697
	movss	%xmm2, -24(%rbp)	# D.5697, %sfp
	movl	-24(%rbp), %edx	# %sfp, D.5696
	movss	%xmm0, -24(%rbp)	# D.5697, %sfp
	movl	-24(%rbp), %eax	# %sfp, D.5696
	movl	%edx, (%rcx)	# D.5696, _17->amplitude
	movl	%eax, 4(%rcx)	# D.5696, _17->amplitude
.L66:
	.loc 3 216 0
	addl	$1, -4(%rbp)	#, i
.L65:
	.loc 3 216 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# reg, tmp96
	movl	4(%rax), %eax	# reg_5(D)->size, D.5692
	cmpl	-4(%rbp), %eax	# i, D.5692
	jg	.L67	#,
	.loc 3 223 0 is_stmt 1
	movq	-32(%rbp), %rax	# reg, tmp97
	movq	%rax, %rdi	# tmp97,
	call	quantum_decohere	#
.L62:
	.loc 3 224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	quantum_sigma_z, .-quantum_sigma_z
	.globl	quantum_swaptheleads
	.type	quantum_swaptheleads, @function
quantum_swaptheleads:
.LFB14:
	.loc 3 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# width, width
	movq	%rsi, -48(%rbp)	# reg, reg
	.loc 3 237 0
	leaq	-28(%rbp), %rax	#, tmp102
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	quantum_qec_get_status	#
	.loc 3 239 0
	movl	-28(%rbp), %eax	# qec, qec.5
	testl	%eax, %eax	# qec.5
	je	.L69	#,
	.loc 3 241 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L70	#
.L71:
	.loc 3 243 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp103
	movl	-36(%rbp), %edx	# width, tmp104
	leal	(%rdx,%rax), %ecx	#, D.5698
	movq	-48(%rbp), %rdx	# reg, tmp105
	movl	-24(%rbp), %eax	# i, tmp106
	movl	%ecx, %esi	# D.5698,
	movl	%eax, %edi	# tmp106,
	call	quantum_cnot	#
	.loc 3 244 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp107
	movl	-36(%rbp), %edx	# width, tmp108
	leal	(%rdx,%rax), %ecx	#, D.5698
	movq	-48(%rbp), %rdx	# reg, tmp109
	movl	-24(%rbp), %eax	# i, tmp110
	movl	%eax, %esi	# tmp110,
	movl	%ecx, %edi	# D.5698,
	call	quantum_cnot	#
	.loc 3 245 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp111
	movl	-36(%rbp), %edx	# width, tmp112
	leal	(%rdx,%rax), %ecx	#, D.5698
	movq	-48(%rbp), %rdx	# reg, tmp113
	movl	-24(%rbp), %eax	# i, tmp114
	movl	%ecx, %esi	# D.5698,
	movl	%eax, %edi	# tmp114,
	call	quantum_cnot	#
	.loc 3 241 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L70:
	.loc 3 241 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp115
	cmpl	-36(%rbp), %eax	# width, tmp115
	jl	.L71	#,
	jmp	.L68	#
.L69:
	.loc 3 250 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	jmp	.L73	#
.L78:
	.loc 3 253 0
	movl	-36(%rbp), %eax	# width, tmp116
	movl	%eax, %esi	# tmp116,
	movl	$14, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5698
	jne	.L68	#,
	.loc 3 258 0
	movq	-48(%rbp), %rax	# reg, tmp117
	movq	16(%rax), %rax	# reg_9(D)->node, D.5699
	movl	-24(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, D.5700
	salq	$4, %rdx	#, D.5700
	addq	%rdx, %rax	# D.5700, D.5699
	movq	8(%rax), %rax	# _19->state, D.5701
	movl	%eax, %edx	# D.5701, D.5702
	movl	-36(%rbp), %eax	# width, tmp119
	movl	$1, %esi	#, tmp120
	movl	%eax, %ecx	# tmp119, tmp141
	salq	%cl, %rsi	# tmp141, D.5701
	movq	%rsi, %rax	# D.5701, D.5701
	subl	$1, %eax	#, D.5702
	andl	%edx, %eax	# D.5702, D.5702
	movl	%eax, -12(%rbp)	# D.5702, pat1
	.loc 3 262 0
	movl	$0, -16(%rbp)	#, pat2
	.loc 3 264 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L76	#
.L77:
	.loc 3 265 0 discriminator 2
	movq	-48(%rbp), %rax	# reg, tmp121
	movq	16(%rax), %rax	# reg_9(D)->node, D.5699
	movl	-24(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, D.5700
	salq	$4, %rdx	#, D.5700
	addq	%rdx, %rax	# D.5700, D.5699
	movq	8(%rax), %rax	# _32->state, D.5701
	movl	%eax, %edx	# D.5701, D.5702
	movl	-20(%rbp), %eax	# j, tmp123
	movl	-36(%rbp), %ecx	# width, tmp124
	addl	%ecx, %eax	# tmp124, D.5698
	movl	$1, %esi	#, tmp125
	movl	%eax, %ecx	# D.5698, tmp143
	salq	%cl, %rsi	# tmp143, D.5701
	movq	%rsi, %rax	# D.5701, D.5701
	andl	%eax, %edx	# D.5702, D.5702
	movl	-16(%rbp), %eax	# pat2, pat2.6
	addl	%edx, %eax	# D.5702, D.5702
	movl	%eax, -16(%rbp)	# D.5702, pat2
	.loc 3 264 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L76:
	.loc 3 264 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp126
	cmpl	-36(%rbp), %eax	# width, tmp126
	jl	.L77	#,
	.loc 3 269 0 is_stmt 1
	movq	-48(%rbp), %rax	# reg, tmp127
	movq	16(%rax), %rax	# reg_9(D)->node, D.5699
	movl	-24(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, D.5700
	salq	$4, %rdx	#, D.5700
	addq	%rdx, %rax	# D.5700, D.5699
	movq	8(%rax), %rdx	# _46->state, D.5701
	movl	-16(%rbp), %eax	# pat2, tmp129
	movl	-12(%rbp), %ecx	# pat1, tmp130
	addl	%ecx, %eax	# tmp130, D.5698
	cltq
	subq	%rax, %rdx	# D.5701, tmp131
	movq	%rdx, %rax	# tmp131, tmp131
	movq	%rax, -8(%rbp)	# tmp131, l
	.loc 3 270 0
	movl	-36(%rbp), %eax	# width, tmp132
	movl	-12(%rbp), %edx	# pat1, tmp133
	movl	%eax, %ecx	# tmp132, tmp146
	sall	%cl, %edx	# tmp146, D.5698
	movl	%edx, %eax	# D.5698, D.5698
	cltq
	addq	%rax, -8(%rbp)	# D.5701, l
	.loc 3 271 0
	movl	-36(%rbp), %eax	# width, tmp134
	movl	-16(%rbp), %edx	# pat2, tmp135
	movl	%eax, %ecx	# tmp134, tmp148
	sarl	%cl, %edx	# tmp148, D.5698
	movl	%edx, %eax	# D.5698, D.5698
	cltq
	addq	%rax, -8(%rbp)	# D.5701, l
	.loc 3 272 0
	movq	-48(%rbp), %rax	# reg, tmp136
	movq	16(%rax), %rax	# reg_9(D)->node, D.5699
	movl	-24(%rbp), %edx	# i, tmp137
	movslq	%edx, %rdx	# tmp137, D.5700
	salq	$4, %rdx	#, D.5700
	addq	%rax, %rdx	# D.5699, D.5699
	movq	-8(%rbp), %rax	# l, tmp138
	movq	%rax, 8(%rdx)	# tmp138, _60->state
	.loc 3 250 0
	addl	$1, -24(%rbp)	#, i
.L73:
	.loc 3 250 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# reg, tmp139
	movl	4(%rax), %eax	# reg_9(D)->size, D.5698
	cmpl	-24(%rbp), %eax	# i, D.5698
	jg	.L78	#,
.L68:
	.loc 3 275 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	quantum_swaptheleads, .-quantum_swaptheleads
	.globl	quantum_swaptheleads_omuln_controlled
	.type	quantum_swaptheleads_omuln_controlled, @function
quantum_swaptheleads_omuln_controlled:
.LFB15:
	.loc 3 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# control, control
	movl	%esi, -24(%rbp)	# width, width
	movq	%rdx, -32(%rbp)	# reg, reg
	.loc 3 285 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L80	#
.L81:
	.loc 3 287 0 discriminator 2
	movl	-24(%rbp), %eax	# width, tmp71
	leal	(%rax,%rax), %edx	#, D.5703
	movl	-4(%rbp), %eax	# i, tmp72
	addl	%edx, %eax	# D.5703, D.5703
	leal	2(%rax), %edi	#, D.5703
	movl	-4(%rbp), %eax	# i, tmp73
	movl	-24(%rbp), %edx	# width, tmp74
	leal	(%rdx,%rax), %esi	#, D.5703
	movq	-32(%rbp), %rdx	# reg, tmp75
	movl	-20(%rbp), %eax	# control, tmp76
	movq	%rdx, %rcx	# tmp75,
	movl	%edi, %edx	# D.5703,
	movl	%eax, %edi	# tmp76,
	call	quantum_toffoli	#
	.loc 3 288 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp77
	movl	-24(%rbp), %edx	# width, tmp78
	leal	(%rdx,%rax), %edi	#, D.5703
	movl	-24(%rbp), %eax	# width, tmp79
	leal	(%rax,%rax), %edx	#, D.5703
	movl	-4(%rbp), %eax	# i, tmp80
	addl	%edx, %eax	# D.5703, D.5703
	leal	2(%rax), %esi	#, D.5703
	movq	-32(%rbp), %rdx	# reg, tmp81
	movl	-20(%rbp), %eax	# control, tmp82
	movq	%rdx, %rcx	# tmp81,
	movl	%edi, %edx	# D.5703,
	movl	%eax, %edi	# tmp82,
	call	quantum_toffoli	#
	.loc 3 289 0 discriminator 2
	movl	-24(%rbp), %eax	# width, tmp83
	leal	(%rax,%rax), %edx	#, D.5703
	movl	-4(%rbp), %eax	# i, tmp84
	addl	%edx, %eax	# D.5703, D.5703
	leal	2(%rax), %edi	#, D.5703
	movl	-4(%rbp), %eax	# i, tmp85
	movl	-24(%rbp), %edx	# width, tmp86
	leal	(%rdx,%rax), %esi	#, D.5703
	movq	-32(%rbp), %rdx	# reg, tmp87
	movl	-20(%rbp), %eax	# control, tmp88
	movq	%rdx, %rcx	# tmp87,
	movl	%edi, %edx	# D.5703,
	movl	%eax, %edi	# tmp88,
	call	quantum_toffoli	#
	.loc 3 285 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L80:
	.loc 3 285 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp89
	cmpl	-24(%rbp), %eax	# width, tmp89
	jl	.L81	#,
	.loc 3 291 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	quantum_swaptheleads_omuln_controlled, .-quantum_swaptheleads_omuln_controlled
	.section	.rodata
.LC6:
	.string	"Matrix is not a 2x2 matrix!"
	.align 8
.LC8:
	.string	"Not enough memory for %i-sized qubit!\n"
	.align 8
.LC10:
	.string	"Not enough memory for %i bytes array!\n"
	.align 4
.LC9:
	.long	0
	.long	0
	.text
	.globl	quantum_gate1
	.type	quantum_gate1, @function
quantum_gate1:
.LFB16:
	.loc 3 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$296, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# target, target
	movq	%rsi, %rax	# m, tmp399
	movq	%rdx, %rsi	# m, tmp400
	movq	%rsi, %rdx	# tmp400,
	movq	%rax, -128(%rbp)	# tmp398, m
	movq	%rdx, -120(%rbp)	#, m
	movq	%rcx, -112(%rbp)	# reg, reg
	.loc 3 299 0
	movl	$0, -72(%rbp)	#, addsize
	movl	$0, -68(%rbp)	#, decsize
	.loc 3 300 0
	movl	.LC2(%rip), %eax	#, tmp403
	movl	%eax, -32(%rbp)	# tmp403, tnot
	movl	.LC2(%rip), %eax	#, tmp404
	movl	%eax, -28(%rbp)	# tmp404, tnot
	.loc 3 304 0
	movl	-124(%rbp), %eax	# m.cols, D.5708
	cmpl	$2, %eax	#, D.5708
	jne	.L83	#,
	.loc 3 304 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# m.rows, D.5708
	cmpl	$2, %eax	#, D.5708
	je	.L84	#,
.L83:
	.loc 3 306 0 is_stmt 1
	movl	$.LC6, %edi	#,
	call	puts	#
	.loc 3 307 0
	movl	$1, %edi	#,
	call	exit	#
.L84:
	.loc 3 312 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L85	#
.L86:
	.loc 3 313 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp405
	movq	24(%rax), %rax	# reg_24(D)->hash, D.5709
	movl	-84(%rbp), %edx	# i, tmp406
	movslq	%edx, %rdx	# tmp406, D.5710
	salq	$2, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5709
	movl	$0, (%rax)	#, *_30
	.loc 3 312 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L85:
	.loc 3 312 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp407
	movl	8(%rax), %eax	# reg_24(D)->hashw, D.5708
	movl	$1, %edx	#, tmp408
	movl	%eax, %ecx	# D.5708, tmp592
	sall	%cl, %edx	# tmp592, D.5708
	movl	%edx, %eax	# D.5708, D.5708
	cmpl	-84(%rbp), %eax	# i, D.5708
	jg	.L86	#,
	.loc 3 315 0 is_stmt 1
	movl	$0, -84(%rbp)	#, i
	jmp	.L87	#
.L88:
	.loc 3 316 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp409
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp410
	movslq	%edx, %rdx	# tmp410, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rax	# _37->state, D.5712
	movq	-112(%rbp), %rdx	# reg, tmp411
	movl	-84(%rbp), %ecx	# i, tmp412
	movl	%ecx, %esi	# tmp412,
	movq	%rax, %rdi	# D.5712,
	call	quantum_add_hash	#
	.loc 3 315 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L87:
	.loc 3 315 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp413
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	cmpl	-84(%rbp), %eax	# i, D.5708
	jg	.L88	#,
	.loc 3 320 0 is_stmt 1
	movl	$0, -84(%rbp)	#, i
	jmp	.L89	#
.L94:
	.loc 3 322 0
	movq	-112(%rbp), %rax	# reg, tmp414
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp415
	movslq	%edx, %rdx	# tmp415, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rdx	# _45->state, D.5712
	movl	-100(%rbp), %eax	# target, tmp416
	movl	$1, %esi	#, tmp417
	movl	%eax, %ecx	# tmp416, tmp594
	salq	%cl, %rsi	# tmp594, D.5712
	movq	%rsi, %rax	# D.5712, D.5712
	movq	%rdx, %rcx	# D.5712, D.5712
	xorq	%rax, %rcx	# D.5712, D.5712
	movq	-112(%rbp), %rax	# reg, tmp418
	movq	(%rax), %rdx	# *reg_24(D), tmp419
	movq	%rdx, (%rsp)	# tmp419,
	movq	8(%rax), %rdx	# *reg_24(D), tmp420
	movq	%rdx, 8(%rsp)	# tmp420,
	movq	16(%rax), %rdx	# *reg_24(D), tmp421
	movq	%rdx, 16(%rsp)	# tmp421,
	movq	24(%rax), %rax	# *reg_24(D), tmp422
	movq	%rax, 24(%rsp)	# tmp422,
	movq	%rcx, %rdi	# D.5712,
	call	quantum_get_state	#
	movl	%eax, -80(%rbp)	# tmp423, j
	.loc 3 324 0
	cmpl	$-1, -80(%rbp)	#, j
	jne	.L90	#,
	.loc 3 334 0
	movq	-120(%rbp), %rax	# m.t, D.5713
	addq	$8, %rax	#, D.5713
	movl	(%rax), %edx	# *_52, D.5715
	movl	4(%rax), %eax	# *_52, D.5715
	movl	%edx, -136(%rbp)	# tmp424,
	movl	%eax, -132(%rbp)	# tmp425,
	movq	-136(%rbp), %rax	#, tmp426
	movq	%rax, -256(%rbp)	# tmp426, %sfp
	movq	-256(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.5715, D.5715
	cvtps2pd	%xmm0, %xmm0	# D.5715, D.5716
	ucomisd	.LC7(%rip), %xmm0	#, D.5716
	jbe	.L91	#,
	.loc 3 334 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp427
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp428
	movslq	%edx, %rdx	# tmp428, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rdx	# _59->state, D.5712
	movl	-100(%rbp), %eax	# target, tmp429
	movl	%eax, %ecx	# tmp429, tmp598
	shrq	%cl, %rdx	# tmp598, D.5712
	movq	%rdx, %rax	# D.5712, D.5712
	andl	$1, %eax	#, D.5712
	testq	%rax, %rax	# D.5712
	je	.L91	#,
	.loc 3 336 0 is_stmt 1
	addl	$1, -72(%rbp)	#, addsize
.L91:
	.loc 3 337 0
	movq	-120(%rbp), %rax	# m.t, D.5713
	addq	$16, %rax	#, D.5713
	movl	(%rax), %edx	# *_65, D.5715
	movl	4(%rax), %eax	# *_65, D.5715
	movl	%edx, -144(%rbp)	# tmp430,
	movl	%eax, -140(%rbp)	# tmp431,
	movq	-144(%rbp), %rax	#, tmp432
	movq	%rax, -256(%rbp)	# tmp432, %sfp
	movq	-256(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.5715, D.5715
	cvtps2pd	%xmm0, %xmm0	# D.5715, D.5716
	ucomisd	.LC7(%rip), %xmm0	#, D.5716
	jbe	.L90	#,
	.loc 3 337 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp433
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp434
	movslq	%edx, %rdx	# tmp434, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rdx	# _72->state, D.5712
	movl	-100(%rbp), %eax	# target, tmp435
	movl	%eax, %ecx	# tmp435, tmp601
	shrq	%cl, %rdx	# tmp601, D.5712
	movq	%rdx, %rax	# D.5712, D.5712
	andl	$1, %eax	#, D.5712
	testq	%rax, %rax	# D.5712
	jne	.L90	#,
	.loc 3 339 0 is_stmt 1
	addl	$1, -72(%rbp)	#, addsize
.L90:
	.loc 3 320 0
	addl	$1, -84(%rbp)	#, i
.L89:
	.loc 3 320 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp436
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	cmpl	-84(%rbp), %eax	# i, D.5708
	jg	.L94	#,
	.loc 3 347 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp437
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	movl	-72(%rbp), %eax	# addsize, tmp438
	addl	%edx, %eax	# D.5708, D.5708
	.loc 3 346 0
	cltq
	salq	$4, %rax	#, D.5710
	movq	%rax, %rdx	# D.5710, D.5710
	movq	-112(%rbp), %rax	# reg, tmp439
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movq	%rdx, %rsi	# D.5710,
	movq	%rax, %rdi	# D.5711,
	call	realloc	#
	movq	-112(%rbp), %rdx	# reg, tmp440
	movq	%rax, 16(%rdx)	# D.5717, reg_24(D)->node
	.loc 3 348 0
	movq	-112(%rbp), %rax	# reg, tmp441
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	testq	%rax, %rax	# D.5711
	jne	.L95	#,
	.loc 3 350 0
	movq	-112(%rbp), %rax	# reg, tmp442
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	movl	-72(%rbp), %eax	# addsize, tmp443
	addl	%edx, %eax	# D.5708, D.5708
	movl	%eax, %esi	# D.5708,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 351 0
	movl	$1, %edi	#,
	call	exit	#
.L95:
	.loc 3 353 0
	movl	-72(%rbp), %eax	# addsize, tmp444
	cltq
	salq	$4, %rax	#, D.5710
	movq	%rax, %rdi	# D.5718,
	call	quantum_memman	#
	.loc 3 355 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L96	#
.L97:
	.loc 3 357 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp445
	movq	16(%rax), %rdx	# reg_24(D)->node, D.5711
	movq	-112(%rbp), %rax	# reg, tmp446
	movl	4(%rax), %ecx	# reg_24(D)->size, D.5708
	movl	-84(%rbp), %eax	# i, tmp447
	addl	%ecx, %eax	# D.5708, D.5708
	cltq
	salq	$4, %rax	#, D.5710
	addq	%rdx, %rax	# D.5711, D.5711
	movq	$0, 8(%rax)	#, _96->state
	.loc 3 358 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp448
	movq	16(%rax), %rdx	# reg_24(D)->node, D.5711
	movq	-112(%rbp), %rax	# reg, tmp449
	movl	4(%rax), %ecx	# reg_24(D)->size, D.5708
	movl	-84(%rbp), %eax	# i, tmp450
	addl	%ecx, %eax	# D.5708, D.5708
	cltq
	salq	$4, %rax	#, D.5710
	addq	%rax, %rdx	# D.5710, D.5711
	movl	.LC9(%rip), %eax	#, tmp451
	movl	%eax, (%rdx)	# tmp451, _102->amplitude
	movl	.LC9+4(%rip), %eax	#, tmp452
	movl	%eax, 4(%rdx)	# tmp452, _102->amplitude
	.loc 3 355 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L96:
	.loc 3 355 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp453
	cmpl	-72(%rbp), %eax	# addsize, tmp453
	jl	.L97	#,
	.loc 3 361 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp454
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	movl	-72(%rbp), %eax	# addsize, tmp455
	addl	%edx, %eax	# D.5708, D.5708
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.5710,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp456, done
	.loc 3 362 0
	cmpq	$0, -40(%rbp)	#, done
	jne	.L98	#,
	.loc 3 365 0
	movq	-112(%rbp), %rax	# reg, tmp457
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	movl	-72(%rbp), %eax	# addsize, tmp458
	addl	%edx, %eax	# D.5708, D.5708
	.loc 3 364 0
	cltq
	movq	%rax, %rsi	# D.5710,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 366 0
	movl	$1, %edi	#,
	call	exit	#
.L98:
	.loc 3 368 0
	movq	-112(%rbp), %rax	# reg, tmp459
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	movslq	%eax, %rdx	# D.5708, D.5710
	movl	-72(%rbp), %eax	# addsize, tmp460
	cltq
	addq	%rdx, %rax	# D.5710, D.5710
	movq	%rax, %rdi	# D.5718,
	call	quantum_memman	#
	.loc 3 370 0
	movq	-112(%rbp), %rax	# reg, tmp461
	movl	4(%rax), %eax	# reg_24(D)->size, tmp462
	movl	%eax, -76(%rbp)	# tmp462, k
	.loc 3 372 0
	movq	-112(%rbp), %rax	# reg, tmp463
	movl	(%rax), %eax	# reg_24(D)->width, D.5708
	movl	$1, %edx	#, tmp464
	movl	%eax, %ecx	# D.5708, tmp604
	salq	%cl, %rdx	# tmp604, D.5712
	movq	%rdx, %rax	# D.5712, D.5712
	testq	%rax, %rax	# D.5712
	js	.L99	#,
	cvtsi2sdq	%rax, %xmm0	# D.5712, D.5716
	jmp	.L100	#
.L99:
	movq	%rax, %rdx	# D.5712, tmp466
	shrq	%rdx	# tmp466
	andl	$1, %eax	#, tmp467
	orq	%rax, %rdx	# tmp467, tmp466
	cvtsi2sdq	%rdx, %xmm0	# tmp466, tmp465
	addsd	%xmm0, %xmm0	# tmp465, D.5716
.L100:
	movsd	.LC11(%rip), %xmm1	#, tmp468
	divsd	%xmm0, %xmm1	# D.5716, D.5716
	movapd	%xmm1, %xmm0	# D.5716, D.5716
	movsd	.LC12(%rip), %xmm1	#, tmp469
	divsd	%xmm1, %xmm0	# tmp469, D.5716
	unpcklpd	%xmm0, %xmm0	# D.5716
	cvtpd2ps	%xmm0, %xmm4	# D.5716, tmp607
	movss	%xmm4, -64(%rbp)	# tmp607, limit
	.loc 3 376 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L101	#
.L117:
	.loc 3 378 0
	movl	-84(%rbp), %eax	# i, tmp470
	movslq	%eax, %rdx	# tmp470, D.5719
	movq	-40(%rbp), %rax	# done, tmp471
	addq	%rdx, %rax	# D.5719, D.5720
	movzbl	(%rax), %eax	# *_126, D.5721
	testb	%al, %al	# D.5721
	jne	.L102	#,
	.loc 3 382 0
	movq	-112(%rbp), %rax	# reg, tmp472
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp473
	movslq	%edx, %rdx	# tmp473, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rax	# _131->state, D.5712
	movl	%eax, %edx	# D.5712, D.5722
	movl	-100(%rbp), %eax	# target, tmp474
	movl	$1, %esi	#, tmp475
	movl	%eax, %ecx	# tmp474, tmp609
	salq	%cl, %rsi	# tmp609, D.5712
	movq	%rsi, %rax	# D.5712, D.5712
	andl	%edx, %eax	# D.5722, D.5722
	movl	%eax, -60(%rbp)	# D.5722, iset
	.loc 3 384 0
	movl	.LC2(%rip), %eax	#, tmp476
	movl	%eax, -32(%rbp)	# tmp476, tnot
	movl	.LC2(%rip), %eax	#, tmp477
	movl	%eax, -28(%rbp)	# tmp477, tnot
	.loc 3 385 0
	movq	-112(%rbp), %rax	# reg, tmp478
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp479
	movslq	%edx, %rdx	# tmp479, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movq	8(%rax), %rdx	# _142->state, D.5712
	.loc 3 386 0
	movl	-100(%rbp), %eax	# target, tmp480
	movl	$1, %esi	#, tmp481
	movl	%eax, %ecx	# tmp480, tmp611
	salq	%cl, %rsi	# tmp611, D.5712
	movq	%rsi, %rax	# D.5712, D.5712
	.loc 3 385 0
	movq	%rdx, %rcx	# D.5712, D.5712
	xorq	%rax, %rcx	# D.5712, D.5712
	movq	-112(%rbp), %rax	# reg, tmp482
	movq	(%rax), %rdx	# *reg_24(D), tmp483
	movq	%rdx, (%rsp)	# tmp483,
	movq	8(%rax), %rdx	# *reg_24(D), tmp484
	movq	%rdx, 8(%rsp)	# tmp484,
	movq	16(%rax), %rdx	# *reg_24(D), tmp485
	movq	%rdx, 16(%rsp)	# tmp485,
	movq	24(%rax), %rax	# *reg_24(D), tmp486
	movq	%rax, 24(%rsp)	# tmp486,
	movq	%rcx, %rdi	# D.5712,
	call	quantum_get_state	#
	movl	%eax, -80(%rbp)	# tmp487, j
	.loc 3 387 0
	movq	-112(%rbp), %rax	# reg, tmp488
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp489
	movslq	%edx, %rdx	# tmp489, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rax, %rdx	# D.5711, D.5711
	movl	(%rdx), %eax	# _150->amplitude, tmp490
	movl	%eax, -56(%rbp)	# tmp490, t$real
	movl	4(%rdx), %eax	# _150->amplitude, tmp491
	movl	%eax, -52(%rbp)	# tmp491, t$imag
	movl	-52(%rbp), %eax	# t$imag, tmp492
	movl	-56(%rbp), %edx	# t$real, tmp493
	movl	%edx, -24(%rbp)	# tmp493, t
	movl	%eax, -20(%rbp)	# tmp492, t
	.loc 3 389 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L125	#,
	.loc 3 390 0
	movq	-112(%rbp), %rax	# reg, tmp494
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-80(%rbp), %edx	# j, tmp495
	movslq	%edx, %rdx	# tmp495, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rax, %rdx	# D.5711, D.5711
	movl	(%rdx), %eax	# _155->amplitude, tmp496
	movl	%eax, -48(%rbp)	# tmp496, tnot$real
	movl	4(%rdx), %eax	# _155->amplitude, tmp497
	movl	%eax, -44(%rbp)	# tmp497, tnot$imag
	movl	-44(%rbp), %eax	# tnot$imag, tmp498
	movl	-48(%rbp), %edx	# tnot$real, tmp499
	movl	%edx, -32(%rbp)	# tmp499, tnot
	movl	%eax, -28(%rbp)	# tmp498, tnot
	jmp	.L103	#
.L125:
	movl	.LC2(%rip), %eax	#, tmp401
	movl	%eax, -44(%rbp)	# tmp401, tnot$imag
	movl	.LC2(%rip), %eax	#, tmp402
	movl	%eax, -48(%rbp)	# tmp402, tnot$real
.L103:
	.loc 3 392 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L104	#,
	.loc 3 393 0
	movq	-112(%rbp), %rax	# reg, tmp500
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp501
	movslq	%edx, %rdx	# tmp501, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	16(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_162, D.5715
	movl	4(%rdx), %edx	# *_162, D.5715
	movl	-44(%rbp), %esi	# tnot$imag, tmp502
	movl	-48(%rbp), %ecx	# tnot$real, tmp503
	movl	%esi, -256(%rbp)	# tmp502, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp503, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp504
	movq	%rax, -152(%rbp)	# tmp504,
	movl	-152(%rbp), %edx	#, D.5714
	movl	-148(%rbp), %eax	#, D.5714
	movl	%edx, -256(%rbp)	# D.5714, %sfp
	movl	%eax, -104(%rbp)	# D.5714, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	24(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_166, D.5715
	movl	4(%rdx), %edx	# *_166, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp505
	movl	-56(%rbp), %ecx	# t$real, tmp506
	movl	%esi, -264(%rbp)	# tmp505, %sfp
	movss	-264(%rbp), %xmm3	# %sfp,
	movl	%ecx, -264(%rbp)	# tmp506, %sfp
	movss	-264(%rbp), %xmm2	# %sfp,
	movl	%edx, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm1	# %sfp,
	movl	%eax, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -264(%rbp)	#, %sfp
	movq	-264(%rbp), %rax	# %sfp, tmp507
	movq	%rax, -160(%rbp)	# tmp507,
	movl	-160(%rbp), %edx	#, D.5714
	movl	-156(%rbp), %eax	#, D.5714
	movl	%edx, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm1	# %sfp, D.5715
	movl	%eax, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm0	# %sfp, D.5715
	addss	-256(%rbp), %xmm1	# %sfp, D.5715
	addss	-104(%rbp), %xmm0	# %sfp, D.5715
	movss	%xmm1, (%rbx)	# D.5715, *_160
	movss	%xmm0, 4(%rbx)	# D.5715, *_160
	jmp	.L105	#
.L104:
	.loc 3 396 0
	movq	-112(%rbp), %rax	# reg, tmp508
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp509
	movslq	%edx, %rdx	# tmp509, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rdx	# m.t, D.5713
	movl	(%rdx), %eax	# *_174, D.5715
	movl	4(%rdx), %edx	# *_174, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp510
	movl	-56(%rbp), %ecx	# t$real, tmp511
	movl	%esi, -256(%rbp)	# tmp510, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp511, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp512
	movq	%rax, -168(%rbp)	# tmp512,
	movl	-168(%rbp), %edx	#, D.5714
	movl	-164(%rbp), %eax	#, D.5714
	movl	%edx, -256(%rbp)	# D.5714, %sfp
	movl	%eax, -104(%rbp)	# D.5714, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	8(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_178, D.5715
	movl	4(%rdx), %edx	# *_178, D.5715
	movl	-44(%rbp), %esi	# tnot$imag, tmp513
	movl	-48(%rbp), %ecx	# tnot$real, tmp514
	movl	%esi, -264(%rbp)	# tmp513, %sfp
	movss	-264(%rbp), %xmm3	# %sfp,
	movl	%ecx, -264(%rbp)	# tmp514, %sfp
	movss	-264(%rbp), %xmm2	# %sfp,
	movl	%edx, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm1	# %sfp,
	movl	%eax, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -264(%rbp)	#, %sfp
	movq	-264(%rbp), %rax	# %sfp, tmp515
	movq	%rax, -176(%rbp)	# tmp515,
	movl	-176(%rbp), %edx	#, D.5714
	movl	-172(%rbp), %eax	#, D.5714
	movl	%edx, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm1	# %sfp, D.5715
	movl	%eax, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm0	# %sfp, D.5715
	addss	-256(%rbp), %xmm1	# %sfp, D.5715
	addss	-104(%rbp), %xmm0	# %sfp, D.5715
	movss	%xmm1, (%rbx)	# D.5715, *_173
	movss	%xmm0, 4(%rbx)	# D.5715, *_173
.L105:
	.loc 3 398 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L106	#,
	.loc 3 400 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L107	#,
	.loc 3 401 0
	movq	-112(%rbp), %rax	# reg, tmp516
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-80(%rbp), %edx	# j, tmp517
	movslq	%edx, %rdx	# tmp517, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rdx	# m.t, D.5713
	movl	(%rdx), %eax	# *_186, D.5715
	movl	4(%rdx), %edx	# *_186, D.5715
	movl	-44(%rbp), %esi	# tnot$imag, tmp518
	movl	-48(%rbp), %ecx	# tnot$real, tmp519
	movl	%esi, -256(%rbp)	# tmp518, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp519, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp520
	movq	%rax, -184(%rbp)	# tmp520,
	movl	-184(%rbp), %edx	#, D.5714
	movl	-180(%rbp), %eax	#, D.5714
	movl	%edx, -256(%rbp)	# D.5714, %sfp
	movl	%eax, -104(%rbp)	# D.5714, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	8(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_190, D.5715
	movl	4(%rdx), %edx	# *_190, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp521
	movl	-56(%rbp), %ecx	# t$real, tmp522
	movl	%esi, -264(%rbp)	# tmp521, %sfp
	movss	-264(%rbp), %xmm3	# %sfp,
	movl	%ecx, -264(%rbp)	# tmp522, %sfp
	movss	-264(%rbp), %xmm2	# %sfp,
	movl	%edx, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm1	# %sfp,
	movl	%eax, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -264(%rbp)	#, %sfp
	movq	-264(%rbp), %rax	# %sfp, tmp523
	movq	%rax, -192(%rbp)	# tmp523,
	movl	-192(%rbp), %edx	#, D.5714
	movl	-188(%rbp), %eax	#, D.5714
	movl	%edx, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm1	# %sfp, D.5715
	movl	%eax, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm0	# %sfp, D.5715
	addss	-256(%rbp), %xmm1	# %sfp, D.5715
	addss	-104(%rbp), %xmm0	# %sfp, D.5715
	movss	%xmm1, (%rbx)	# D.5715, *_185
	movss	%xmm0, 4(%rbx)	# D.5715, *_185
	jmp	.L109	#
.L107:
	.loc 3 404 0
	movq	-112(%rbp), %rax	# reg, tmp524
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-80(%rbp), %edx	# j, tmp525
	movslq	%edx, %rdx	# tmp525, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	16(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_199, D.5715
	movl	4(%rdx), %edx	# *_199, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp526
	movl	-56(%rbp), %ecx	# t$real, tmp527
	movl	%esi, -256(%rbp)	# tmp526, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp527, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp528
	movq	%rax, -200(%rbp)	# tmp528,
	movl	-200(%rbp), %edx	#, D.5714
	movl	-196(%rbp), %eax	#, D.5714
	movl	%edx, -256(%rbp)	# D.5714, %sfp
	movl	%eax, -104(%rbp)	# D.5714, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	24(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_203, D.5715
	movl	4(%rdx), %edx	# *_203, D.5715
	movl	-44(%rbp), %esi	# tnot$imag, tmp529
	movl	-48(%rbp), %ecx	# tnot$real, tmp530
	movl	%esi, -264(%rbp)	# tmp529, %sfp
	movss	-264(%rbp), %xmm3	# %sfp,
	movl	%ecx, -264(%rbp)	# tmp530, %sfp
	movss	-264(%rbp), %xmm2	# %sfp,
	movl	%edx, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm1	# %sfp,
	movl	%eax, -264(%rbp)	# D.5715, %sfp
	movss	-264(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -264(%rbp)	#, %sfp
	movq	-264(%rbp), %rax	# %sfp, tmp531
	movq	%rax, -208(%rbp)	# tmp531,
	movl	-208(%rbp), %edx	#, D.5714
	movl	-204(%rbp), %eax	#, D.5714
	movl	%edx, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm1	# %sfp, D.5715
	movl	%eax, -264(%rbp)	# D.5714, %sfp
	movss	-264(%rbp), %xmm0	# %sfp, D.5715
	addss	-256(%rbp), %xmm1	# %sfp, D.5715
	addss	-104(%rbp), %xmm0	# %sfp, D.5715
	movss	%xmm1, (%rbx)	# D.5715, *_197
	movss	%xmm0, 4(%rbx)	# D.5715, *_197
	jmp	.L109	#
.L106:
	.loc 3 416 0
	movq	-120(%rbp), %rax	# m.t, D.5713
	addq	$8, %rax	#, D.5713
	movl	(%rax), %edx	# *_208, D.5715
	movl	4(%rax), %eax	# *_208, D.5715
	movl	%edx, -216(%rbp)	# tmp532,
	movl	%eax, -212(%rbp)	# tmp533,
	movq	-216(%rbp), %rax	#, tmp534
	movq	%rax, -256(%rbp)	# tmp534, %sfp
	movq	-256(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.5715, D.5715
	cvtps2pd	%xmm0, %xmm0	# D.5715, D.5716
	movsd	.LC7(%rip), %xmm1	#, tmp535
	ucomisd	%xmm0, %xmm1	# D.5716, tmp535
	jbe	.L110	#,
	.loc 3 416 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, iset
	je	.L110	#,
	.loc 3 417 0 is_stmt 1
	jmp	.L112	#
.L110:
	.loc 3 418 0
	movq	-120(%rbp), %rax	# m.t, D.5713
	addq	$16, %rax	#, D.5713
	movl	(%rax), %edx	# *_213, D.5715
	movl	4(%rax), %eax	# *_213, D.5715
	movl	%edx, -224(%rbp)	# tmp536,
	movl	%eax, -220(%rbp)	# tmp537,
	movq	-224(%rbp), %rax	#, tmp538
	movq	%rax, -256(%rbp)	# tmp538, %sfp
	movq	-256(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	unpcklps	%xmm0, %xmm0	# D.5715, D.5715
	cvtps2pd	%xmm0, %xmm0	# D.5715, D.5716
	movsd	.LC7(%rip), %xmm1	#, tmp539
	ucomisd	%xmm0, %xmm1	# D.5716, tmp539
	jbe	.L113	#,
	.loc 3 418 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, iset
	jne	.L113	#,
	.loc 3 419 0 is_stmt 1
	jmp	.L112	#
.L113:
	.loc 3 421 0
	movq	-112(%rbp), %rax	# reg, tmp540
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-76(%rbp), %edx	# k, tmp541
	movslq	%edx, %rdx	# tmp541, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rax, %rdx	# D.5711, D.5711
	movq	-112(%rbp), %rax	# reg, tmp542
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %ecx	# i, tmp543
	movslq	%ecx, %rcx	# tmp543, D.5710
	salq	$4, %rcx	#, D.5710
	addq	%rcx, %rax	# D.5710, D.5711
	movq	8(%rax), %rsi	# _224->state, D.5712
	.loc 3 422 0
	movl	-100(%rbp), %eax	# target, tmp544
	movl	$1, %edi	#, tmp545
	movl	%eax, %ecx	# tmp544, tmp664
	salq	%cl, %rdi	# tmp664, D.5712
	movq	%rdi, %rax	# D.5712, D.5712
	xorq	%rsi, %rax	# D.5712, D.5712
	.loc 3 421 0
	movq	%rax, 8(%rdx)	# D.5712, _220->state
	.loc 3 424 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L115	#,
	.loc 3 425 0
	movq	-112(%rbp), %rax	# reg, tmp546
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-76(%rbp), %edx	# k, tmp547
	movslq	%edx, %rdx	# tmp547, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	8(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_233, D.5715
	movl	4(%rdx), %edx	# *_233, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp548
	movl	-56(%rbp), %ecx	# t$real, tmp549
	movl	%esi, -256(%rbp)	# tmp548, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp549, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp550
	movq	%rax, -232(%rbp)	# tmp550,
	movl	-232(%rbp), %edx	#, D.5714
	movl	-228(%rbp), %eax	#, D.5714
	movl	%edx, (%rbx)	# D.5715, *_231
	movl	%eax, 4(%rbx)	# D.5715, *_231
	jmp	.L116	#
.L115:
	.loc 3 428 0
	movq	-112(%rbp), %rax	# reg, tmp551
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-76(%rbp), %edx	# k, tmp552
	movslq	%edx, %rdx	# tmp552, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rbx	#, D.5711
	movq	-120(%rbp), %rax	# m.t, D.5713
	leaq	16(%rax), %rdx	#, D.5713
	movl	(%rdx), %eax	# *_241, D.5715
	movl	4(%rdx), %edx	# *_241, D.5715
	movl	-52(%rbp), %esi	# t$imag, tmp553
	movl	-56(%rbp), %ecx	# t$real, tmp554
	movl	%esi, -256(%rbp)	# tmp553, %sfp
	movss	-256(%rbp), %xmm3	# %sfp,
	movl	%ecx, -256(%rbp)	# tmp554, %sfp
	movss	-256(%rbp), %xmm2	# %sfp,
	movl	%edx, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm1	# %sfp,
	movl	%eax, -256(%rbp)	# D.5715, %sfp
	movss	-256(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -256(%rbp)	#, %sfp
	movq	-256(%rbp), %rax	# %sfp, tmp555
	movq	%rax, -240(%rbp)	# tmp555,
	movl	-240(%rbp), %edx	#, D.5714
	movl	-236(%rbp), %eax	#, D.5714
	movl	%edx, (%rbx)	# D.5715, *_239
	movl	%eax, 4(%rbx)	# D.5715, *_239
.L116:
	.loc 3 430 0
	addl	$1, -76(%rbp)	#, k
.L109:
	.loc 3 433 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L102	#,
	.loc 3 434 0
	movl	-80(%rbp), %eax	# j, tmp556
	movslq	%eax, %rdx	# tmp556, D.5719
	movq	-40(%rbp), %rax	# done, tmp557
	addq	%rdx, %rax	# D.5719, D.5720
	movb	$1, (%rax)	#, *_246
.L102:
	.loc 3 376 0
	addl	$1, -84(%rbp)	#, i
.L101:
	.loc 3 376 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp558
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	cmpl	-84(%rbp), %eax	# i, D.5708
	jg	.L117	#,
.L112:
	.loc 3 439 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp559
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	movl	-72(%rbp), %eax	# addsize, tmp560
	addl	%eax, %edx	# tmp560, D.5708
	movq	-112(%rbp), %rax	# reg, tmp561
	movl	%edx, 4(%rax)	# D.5708, reg_24(D)->size
	.loc 3 441 0
	movq	-40(%rbp), %rax	# done, tmp562
	movq	%rax, %rdi	# tmp562,
	call	free	#
	.loc 3 442 0
	movq	-112(%rbp), %rax	# reg, tmp563
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	negl	%eax	# D.5708
	cltq
	movq	%rax, %rdi	# D.5718,
	call	quantum_memman	#
	.loc 3 446 0
	movl	$0, -84(%rbp)	#, i
	movl	$0, -80(%rbp)	#, j
	jmp	.L118	#
.L122:
	.loc 3 448 0
	movq	-112(%rbp), %rax	# reg, tmp564
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp565
	movslq	%edx, %rdx	# tmp565, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movl	(%rax), %edx	# _259->amplitude, D.5715
	movl	4(%rax), %eax	# _259->amplitude, D.5715
	movl	%edx, -248(%rbp)	# tmp566,
	movl	%eax, -244(%rbp)	# tmp567,
	movq	-248(%rbp), %rax	#, tmp568
	movq	%rax, -256(%rbp)	# tmp568, %sfp
	movq	-256(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	movss	-64(%rbp), %xmm1	# limit, tmp569
	ucomiss	%xmm0, %xmm1	# D.5715, tmp569
	jbe	.L131	#,
	.loc 3 450 0
	addl	$1, -80(%rbp)	#, j
	.loc 3 451 0
	addl	$1, -68(%rbp)	#, decsize
	jmp	.L121	#
.L131:
	.loc 3 454 0
	cmpl	$0, -80(%rbp)	#, j
	je	.L121	#,
	.loc 3 456 0
	movq	-112(%rbp), %rax	# reg, tmp570
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-80(%rbp), %edx	# j, tmp571
	movl	-84(%rbp), %ecx	# i, tmp572
	subl	%edx, %ecx	# tmp571, D.5708
	movl	%ecx, %edx	# D.5708, D.5708
	movslq	%edx, %rdx	# D.5708, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rax, %rdx	# D.5711, D.5711
	movq	-112(%rbp), %rax	# reg, tmp573
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %ecx	# i, tmp574
	movslq	%ecx, %rcx	# tmp574, D.5710
	salq	$4, %rcx	#, D.5710
	addq	%rcx, %rax	# D.5710, D.5711
	movq	8(%rax), %rax	# _272->state, D.5712
	movq	%rax, 8(%rdx)	# D.5712, _268->state
	.loc 3 457 0
	movq	-112(%rbp), %rax	# reg, tmp575
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-80(%rbp), %edx	# j, tmp576
	movl	-84(%rbp), %ecx	# i, tmp577
	subl	%edx, %ecx	# tmp576, D.5708
	movl	%ecx, %edx	# D.5708, D.5708
	movslq	%edx, %rdx	# D.5708, D.5710
	salq	$4, %rdx	#, D.5710
	leaq	(%rax,%rdx), %rcx	#, D.5711
	movq	-112(%rbp), %rax	# reg, tmp578
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movl	-84(%rbp), %edx	# i, tmp579
	movslq	%edx, %rdx	# tmp579, D.5710
	salq	$4, %rdx	#, D.5710
	addq	%rdx, %rax	# D.5710, D.5711
	movl	(%rax), %edx	# _282->amplitude, D.5715
	movl	4(%rax), %eax	# _282->amplitude, D.5715
	movl	%edx, (%rcx)	# D.5715, *_278
	movl	%eax, 4(%rcx)	# D.5715, *_278
.L121:
	.loc 3 446 0
	addl	$1, -84(%rbp)	#, i
.L118:
	.loc 3 446 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp580
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	cmpl	-84(%rbp), %eax	# i, D.5708
	jg	.L122	#,
	.loc 3 461 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, decsize
	je	.L123	#,
	.loc 3 463 0
	movq	-112(%rbp), %rax	# reg, tmp581
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	subl	-68(%rbp), %eax	# decsize, D.5708
	movl	%eax, %edx	# D.5708, D.5708
	movq	-112(%rbp), %rax	# reg, tmp582
	movl	%edx, 4(%rax)	# D.5708, reg_24(D)->size
	.loc 3 464 0
	movq	-112(%rbp), %rax	# reg, tmp583
	movl	4(%rax), %eax	# reg_24(D)->size, D.5708
	cltq
	salq	$4, %rax	#, D.5710
	movq	%rax, %rdx	# D.5710, D.5710
	movq	-112(%rbp), %rax	# reg, tmp584
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	movq	%rdx, %rsi	# D.5710,
	movq	%rax, %rdi	# D.5711,
	call	realloc	#
	movq	-112(%rbp), %rdx	# reg, tmp585
	movq	%rax, 16(%rdx)	# D.5717, reg_24(D)->node
	.loc 3 465 0
	movq	-112(%rbp), %rax	# reg, tmp586
	movq	16(%rax), %rax	# reg_24(D)->node, D.5711
	testq	%rax, %rax	# D.5711
	jne	.L124	#,
	.loc 3 468 0
	movq	-112(%rbp), %rax	# reg, tmp587
	movl	4(%rax), %edx	# reg_24(D)->size, D.5708
	.loc 3 467 0
	movl	-72(%rbp), %eax	# addsize, tmp588
	addl	%edx, %eax	# D.5708, D.5708
	movl	%eax, %esi	# D.5708,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 469 0
	movl	$1, %edi	#,
	call	exit	#
.L124:
	.loc 3 471 0
	movl	-68(%rbp), %eax	# decsize, tmp589
	negl	%eax	# D.5708
	cltq
	salq	$4, %rax	#, D.5710
	movq	%rax, %rdi	# D.5718,
	call	quantum_memman	#
.L123:
	.loc 3 474 0
	movq	-112(%rbp), %rax	# reg, tmp590
	movq	%rax, %rdi	# tmp590,
	call	quantum_decohere	#
	.loc 3 475 0
	addq	$296, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	quantum_gate1, .-quantum_gate1
	.section	.rodata
.LC13:
	.string	"Matrix is not a 4x4 matrix!"
	.text
	.globl	quantum_gate2
	.type	quantum_gate2, @function
quantum_gate2:
.LFB17:
	.loc 3 484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$264, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -100(%rbp)	# control, control
	movl	%esi, -104(%rbp)	# target, target
	movq	%rdx, -128(%rbp)	# m, m
	movq	%rcx, -120(%rbp)	# m, m
	movq	%r8, -112(%rbp)	# reg, reg
	.loc 3 486 0
	movl	$0, -72(%rbp)	#, addsize
	movl	$0, -68(%rbp)	#, decsize
	.loc 3 487 0
	movl	.LC2(%rip), %eax	#, tmp404
	movl	%eax, -32(%rbp)	# tmp404, tnot
	movl	.LC2(%rip), %eax	#, tmp405
	movl	%eax, -28(%rbp)	# tmp405, tnot
	.loc 3 491 0
	movl	-124(%rbp), %eax	# m.cols, D.5732
	cmpl	$4, %eax	#, D.5732
	jne	.L133	#,
	.loc 3 491 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# m.rows, D.5732
	cmpl	$4, %eax	#, D.5732
	je	.L134	#,
.L133:
	.loc 3 493 0 is_stmt 1
	movl	$.LC13, %edi	#,
	call	puts	#
	.loc 3 494 0
	movl	$1, %edi	#,
	call	exit	#
.L134:
	.loc 3 499 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L135	#
.L136:
	.loc 3 500 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp406
	movq	24(%rax), %rax	# reg_24(D)->hash, D.5733
	movl	-84(%rbp), %edx	# i, tmp407
	movslq	%edx, %rdx	# tmp407, D.5734
	salq	$2, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5733
	movl	$0, (%rax)	#, *_30
	.loc 3 499 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L135:
	.loc 3 499 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp408
	movl	8(%rax), %eax	# reg_24(D)->hashw, D.5732
	movl	$1, %edx	#, tmp409
	movl	%eax, %ecx	# D.5732, tmp611
	sall	%cl, %edx	# tmp611, D.5732
	movl	%edx, %eax	# D.5732, D.5732
	cmpl	-84(%rbp), %eax	# i, D.5732
	jg	.L136	#,
	.loc 3 502 0 is_stmt 1
	movl	$0, -84(%rbp)	#, i
	jmp	.L137	#
.L138:
	.loc 3 503 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp410
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp411
	movslq	%edx, %rdx	# tmp411, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rax	# _37->state, D.5736
	movq	-112(%rbp), %rdx	# reg, tmp412
	movl	-84(%rbp), %ecx	# i, tmp413
	movl	%ecx, %esi	# tmp413,
	movq	%rax, %rdi	# D.5736,
	call	quantum_add_hash	#
	.loc 3 502 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L137:
	.loc 3 502 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp414
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	cmpl	-84(%rbp), %eax	# i, D.5732
	jg	.L138	#,
	.loc 3 507 0 is_stmt 1
	movl	$0, -84(%rbp)	#, i
	jmp	.L139	#
.L142:
	.loc 3 509 0
	movq	-112(%rbp), %rax	# reg, tmp415
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp416
	movslq	%edx, %rdx	# tmp416, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rdx	# _45->state, D.5736
	movl	-104(%rbp), %eax	# target, tmp417
	movl	$1, %esi	#, tmp418
	movl	%eax, %ecx	# tmp417, tmp613
	salq	%cl, %rsi	# tmp613, D.5736
	movq	%rsi, %rax	# D.5736, D.5736
	movq	%rdx, %rcx	# D.5736, D.5736
	xorq	%rax, %rcx	# D.5736, D.5736
	movq	-112(%rbp), %rax	# reg, tmp419
	movq	(%rax), %rdx	# *reg_24(D), tmp420
	movq	%rdx, (%rsp)	# tmp420,
	movq	8(%rax), %rdx	# *reg_24(D), tmp421
	movq	%rdx, 8(%rsp)	# tmp421,
	movq	16(%rax), %rdx	# *reg_24(D), tmp422
	movq	%rdx, 16(%rsp)	# tmp422,
	movq	24(%rax), %rax	# *reg_24(D), tmp423
	movq	%rax, 24(%rsp)	# tmp423,
	movq	%rcx, %rdi	# D.5736,
	call	quantum_get_state	#
	movl	%eax, -80(%rbp)	# tmp424, j
	.loc 3 511 0
	cmpl	$-1, -80(%rbp)	#, j
	jne	.L140	#,
	.loc 3 513 0
	movq	-120(%rbp), %rax	# m.t, D.5737
	addq	$8, %rax	#, D.5737
	movss	(%rax), %xmm1	# *_52, D.5746
	movss	4(%rax), %xmm0	# *_52, D.5746
	xorps	%xmm2, %xmm2	# tmp426
	ucomiss	%xmm2, %xmm1	# tmp426, D.5746
	setp	%dl	#, tmp425
	movl	$1, %eax	#, tmp428
	xorps	%xmm2, %xmm2	# tmp427
	ucomiss	%xmm2, %xmm1	# tmp427, D.5746
	cmovne	%eax, %edx	# tmp425,, tmp428, D.5747
	xorps	%xmm1, %xmm1	# tmp430
	ucomiss	%xmm1, %xmm0	# tmp430, D.5746
	setp	%cl	#, tmp429
	movl	$1, %eax	#, tmp432
	xorps	%xmm1, %xmm1	# tmp431
	ucomiss	%xmm1, %xmm0	# tmp431, D.5746
	cmove	%ecx, %eax	# tmp429,, D.5747
	orl	%edx, %eax	# D.5747, D.5747
	cmpb	$1, %al	#, D.5747
	jne	.L141	#,
	.loc 3 513 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp433
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp434
	movslq	%edx, %rdx	# tmp434, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rdx	# _57->state, D.5736
	movl	-104(%rbp), %eax	# target, tmp435
	movl	%eax, %ecx	# tmp435, tmp616
	shrq	%cl, %rdx	# tmp616, D.5736
	movq	%rdx, %rax	# D.5736, D.5736
	andl	$1, %eax	#, D.5736
	testq	%rax, %rax	# D.5736
	je	.L141	#,
	.loc 3 515 0 is_stmt 1
	addl	$1, -72(%rbp)	#, addsize
.L141:
	.loc 3 516 0
	movq	-120(%rbp), %rax	# m.t, D.5737
	addq	$16, %rax	#, D.5737
	movss	(%rax), %xmm1	# *_63, D.5746
	movss	4(%rax), %xmm0	# *_63, D.5746
	xorps	%xmm2, %xmm2	# tmp437
	ucomiss	%xmm2, %xmm1	# tmp437, D.5746
	setp	%dl	#, tmp436
	movl	$1, %eax	#, tmp439
	xorps	%xmm2, %xmm2	# tmp438
	ucomiss	%xmm2, %xmm1	# tmp438, D.5746
	cmovne	%eax, %edx	# tmp436,, tmp439, D.5747
	xorps	%xmm1, %xmm1	# tmp441
	ucomiss	%xmm1, %xmm0	# tmp441, D.5746
	setp	%cl	#, tmp440
	movl	$1, %eax	#, tmp443
	xorps	%xmm1, %xmm1	# tmp442
	ucomiss	%xmm1, %xmm0	# tmp442, D.5746
	cmove	%ecx, %eax	# tmp440,, D.5747
	orl	%edx, %eax	# D.5747, D.5747
	cmpb	$1, %al	#, D.5747
	jne	.L140	#,
	.loc 3 516 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp444
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp445
	movslq	%edx, %rdx	# tmp445, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rdx	# _68->state, D.5736
	movl	-104(%rbp), %eax	# target, tmp446
	movl	%eax, %ecx	# tmp446, tmp618
	shrq	%cl, %rdx	# tmp618, D.5736
	movq	%rdx, %rax	# D.5736, D.5736
	andl	$1, %eax	#, D.5736
	testq	%rax, %rax	# D.5736
	jne	.L140	#,
	.loc 3 518 0 is_stmt 1
	addl	$1, -72(%rbp)	#, addsize
.L140:
	.loc 3 507 0
	addl	$1, -84(%rbp)	#, i
.L139:
	.loc 3 507 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp447
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	cmpl	-84(%rbp), %eax	# i, D.5732
	jg	.L142	#,
	.loc 3 525 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp448
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	movl	-72(%rbp), %eax	# addsize, tmp449
	addl	%edx, %eax	# D.5732, D.5732
	.loc 3 524 0
	cltq
	salq	$4, %rax	#, D.5734
	movq	%rax, %rdx	# D.5734, D.5734
	movq	-112(%rbp), %rax	# reg, tmp450
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movq	%rdx, %rsi	# D.5734,
	movq	%rax, %rdi	# D.5735,
	call	realloc	#
	movq	-112(%rbp), %rdx	# reg, tmp451
	movq	%rax, 16(%rdx)	# D.5739, reg_24(D)->node
	.loc 3 526 0
	movq	-112(%rbp), %rax	# reg, tmp452
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	testq	%rax, %rax	# D.5735
	jne	.L143	#,
	.loc 3 528 0
	movq	-112(%rbp), %rax	# reg, tmp453
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	movl	-72(%rbp), %eax	# addsize, tmp454
	addl	%edx, %eax	# D.5732, D.5732
	movl	%eax, %esi	# D.5732,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 529 0
	movl	$1, %edi	#,
	call	exit	#
.L143:
	.loc 3 531 0
	movl	-72(%rbp), %eax	# addsize, tmp455
	cltq
	salq	$4, %rax	#, D.5734
	movq	%rax, %rdi	# D.5740,
	call	quantum_memman	#
	.loc 3 533 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L144	#
.L145:
	.loc 3 535 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp456
	movq	16(%rax), %rdx	# reg_24(D)->node, D.5735
	movq	-112(%rbp), %rax	# reg, tmp457
	movl	4(%rax), %ecx	# reg_24(D)->size, D.5732
	movl	-84(%rbp), %eax	# i, tmp458
	addl	%ecx, %eax	# D.5732, D.5732
	cltq
	salq	$4, %rax	#, D.5734
	addq	%rdx, %rax	# D.5735, D.5735
	movq	$0, 8(%rax)	#, _92->state
	.loc 3 536 0 discriminator 2
	movq	-112(%rbp), %rax	# reg, tmp459
	movq	16(%rax), %rdx	# reg_24(D)->node, D.5735
	movq	-112(%rbp), %rax	# reg, tmp460
	movl	4(%rax), %ecx	# reg_24(D)->size, D.5732
	movl	-84(%rbp), %eax	# i, tmp461
	addl	%ecx, %eax	# D.5732, D.5732
	cltq
	salq	$4, %rax	#, D.5734
	addq	%rax, %rdx	# D.5734, D.5735
	movl	.LC9(%rip), %eax	#, tmp462
	movl	%eax, (%rdx)	# tmp462, _98->amplitude
	movl	.LC9+4(%rip), %eax	#, tmp463
	movl	%eax, 4(%rdx)	# tmp463, _98->amplitude
	.loc 3 533 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L144:
	.loc 3 533 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# i, tmp464
	cmpl	-72(%rbp), %eax	# addsize, tmp464
	jl	.L145	#,
	.loc 3 539 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp465
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	movl	-72(%rbp), %eax	# addsize, tmp466
	addl	%edx, %eax	# D.5732, D.5732
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.5734,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp467, done
	.loc 3 540 0
	cmpq	$0, -40(%rbp)	#, done
	jne	.L146	#,
	.loc 3 543 0
	movq	-112(%rbp), %rax	# reg, tmp468
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	movl	-72(%rbp), %eax	# addsize, tmp469
	addl	%edx, %eax	# D.5732, D.5732
	.loc 3 542 0
	cltq
	movq	%rax, %rsi	# D.5734,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 544 0
	movl	$1, %edi	#,
	call	exit	#
.L146:
	.loc 3 546 0
	movq	-112(%rbp), %rax	# reg, tmp470
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	movslq	%eax, %rdx	# D.5732, D.5734
	movl	-72(%rbp), %eax	# addsize, tmp471
	cltq
	addq	%rdx, %rax	# D.5734, D.5734
	movq	%rax, %rdi	# D.5740,
	call	quantum_memman	#
	.loc 3 548 0
	movq	-112(%rbp), %rax	# reg, tmp472
	movl	4(%rax), %eax	# reg_24(D)->size, tmp473
	movl	%eax, -76(%rbp)	# tmp473, k
	.loc 3 550 0
	movq	-112(%rbp), %rax	# reg, tmp474
	movl	(%rax), %eax	# reg_24(D)->width, D.5732
	movl	$1, %edx	#, tmp475
	movl	%eax, %ecx	# D.5732, tmp621
	salq	%cl, %rdx	# tmp621, D.5736
	movq	%rdx, %rax	# D.5736, D.5736
	testq	%rax, %rax	# D.5736
	js	.L147	#,
	cvtsi2sdq	%rax, %xmm0	# D.5736, D.5741
	jmp	.L148	#
.L147:
	movq	%rax, %rdx	# D.5736, tmp477
	shrq	%rdx	# tmp477
	andl	$1, %eax	#, tmp478
	orq	%rax, %rdx	# tmp478, tmp477
	cvtsi2sdq	%rdx, %xmm0	# tmp477, tmp476
	addsd	%xmm0, %xmm0	# tmp476, D.5741
.L148:
	movsd	.LC11(%rip), %xmm1	#, tmp479
	divsd	%xmm0, %xmm1	# D.5741, D.5741
	movapd	%xmm1, %xmm0	# D.5741, D.5741
	movsd	.LC12(%rip), %xmm1	#, tmp480
	divsd	%xmm1, %xmm0	# tmp480, D.5741
	unpcklpd	%xmm0, %xmm0	# D.5741
	cvtpd2ps	%xmm0, %xmm4	# D.5741, tmp624
	movss	%xmm4, -64(%rbp)	# tmp624, limit
	.loc 3 554 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L149	#
.L163:
	.loc 3 556 0
	movl	-84(%rbp), %eax	# i, tmp481
	movslq	%eax, %rdx	# tmp481, D.5742
	movq	-40(%rbp), %rax	# done, tmp482
	addq	%rdx, %rax	# D.5742, D.5743
	movzbl	(%rax), %eax	# *_122, D.5744
	testb	%al, %al	# D.5744
	jne	.L150	#,
	.loc 3 560 0
	movq	-112(%rbp), %rax	# reg, tmp483
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp484
	movslq	%edx, %rdx	# tmp484, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rax	# _127->state, D.5736
	movl	%eax, %edx	# D.5736, D.5745
	movl	-104(%rbp), %eax	# target, tmp485
	movl	$1, %esi	#, tmp486
	movl	%eax, %ecx	# tmp485, tmp626
	salq	%cl, %rsi	# tmp626, D.5736
	movq	%rsi, %rax	# D.5736, D.5736
	andl	%edx, %eax	# D.5745, D.5745
	movl	%eax, -60(%rbp)	# D.5745, iset
	.loc 3 562 0
	movl	.LC2(%rip), %eax	#, tmp487
	movl	%eax, -32(%rbp)	# tmp487, tnot
	movl	.LC2(%rip), %eax	#, tmp488
	movl	%eax, -28(%rbp)	# tmp488, tnot
	.loc 3 563 0
	movq	-112(%rbp), %rax	# reg, tmp489
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp490
	movslq	%edx, %rdx	# tmp490, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movq	8(%rax), %rdx	# _138->state, D.5736
	.loc 3 564 0
	movl	-104(%rbp), %eax	# target, tmp491
	movl	$1, %esi	#, tmp492
	movl	%eax, %ecx	# tmp491, tmp628
	salq	%cl, %rsi	# tmp628, D.5736
	movq	%rsi, %rax	# D.5736, D.5736
	.loc 3 563 0
	movq	%rdx, %rcx	# D.5736, D.5736
	xorq	%rax, %rcx	# D.5736, D.5736
	movq	-112(%rbp), %rax	# reg, tmp493
	movq	(%rax), %rdx	# *reg_24(D), tmp494
	movq	%rdx, (%rsp)	# tmp494,
	movq	8(%rax), %rdx	# *reg_24(D), tmp495
	movq	%rdx, 8(%rsp)	# tmp495,
	movq	16(%rax), %rdx	# *reg_24(D), tmp496
	movq	%rdx, 16(%rsp)	# tmp496,
	movq	24(%rax), %rax	# *reg_24(D), tmp497
	movq	%rax, 24(%rsp)	# tmp497,
	movq	%rcx, %rdi	# D.5736,
	call	quantum_get_state	#
	movl	%eax, -80(%rbp)	# tmp498, j
	.loc 3 565 0
	movq	-112(%rbp), %rax	# reg, tmp499
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp500
	movslq	%edx, %rdx	# tmp500, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rax, %rdx	# D.5735, D.5735
	movl	(%rdx), %eax	# _146->amplitude, tmp501
	movl	%eax, -56(%rbp)	# tmp501, t$real
	movl	4(%rdx), %eax	# _146->amplitude, tmp502
	movl	%eax, -52(%rbp)	# tmp502, t$imag
	movl	-52(%rbp), %eax	# t$imag, tmp503
	movl	-56(%rbp), %edx	# t$real, tmp504
	movl	%edx, -24(%rbp)	# tmp504, t
	movl	%eax, -20(%rbp)	# tmp503, t
	.loc 3 567 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L171	#,
	.loc 3 568 0
	movq	-112(%rbp), %rax	# reg, tmp505
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-80(%rbp), %edx	# j, tmp506
	movslq	%edx, %rdx	# tmp506, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rax, %rdx	# D.5735, D.5735
	movl	(%rdx), %eax	# _151->amplitude, tmp507
	movl	%eax, -48(%rbp)	# tmp507, tnot$real
	movl	4(%rdx), %eax	# _151->amplitude, tmp508
	movl	%eax, -44(%rbp)	# tmp508, tnot$imag
	movl	-44(%rbp), %eax	# tnot$imag, tmp509
	movl	-48(%rbp), %edx	# tnot$real, tmp510
	movl	%edx, -32(%rbp)	# tmp510, tnot
	movl	%eax, -28(%rbp)	# tmp509, tnot
	jmp	.L151	#
.L171:
	movl	.LC2(%rip), %eax	#, tmp402
	movl	%eax, -44(%rbp)	# tmp402, tnot$imag
	movl	.LC2(%rip), %eax	#, tmp403
	movl	%eax, -48(%rbp)	# tmp403, tnot$real
.L151:
	.loc 3 570 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L152	#,
	.loc 3 571 0
	movq	-112(%rbp), %rax	# reg, tmp511
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp512
	movslq	%edx, %rdx	# tmp512, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	16(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_158, D.5746
	movl	4(%rdx), %edx	# *_158, D.5746
	movl	-44(%rbp), %esi	# tnot$imag, tmp513
	movl	-48(%rbp), %ecx	# tnot$real, tmp514
	movl	%esi, -224(%rbp)	# tmp513, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp514, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp515
	movq	%rax, -136(%rbp)	# tmp515,
	movl	-136(%rbp), %edx	#, D.5738
	movl	-132(%rbp), %eax	#, D.5738
	movl	%edx, -224(%rbp)	# D.5738, %sfp
	movl	%eax, -228(%rbp)	# D.5738, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	24(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_162, D.5746
	movl	4(%rdx), %edx	# *_162, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp516
	movl	-56(%rbp), %ecx	# t$real, tmp517
	movl	%esi, -240(%rbp)	# tmp516, %sfp
	movss	-240(%rbp), %xmm3	# %sfp,
	movl	%ecx, -240(%rbp)	# tmp517, %sfp
	movss	-240(%rbp), %xmm2	# %sfp,
	movl	%edx, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm1	# %sfp,
	movl	%eax, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -240(%rbp)	#, %sfp
	movq	-240(%rbp), %rax	# %sfp, tmp518
	movq	%rax, -144(%rbp)	# tmp518,
	movl	-144(%rbp), %edx	#, D.5738
	movl	-140(%rbp), %eax	#, D.5738
	movl	%edx, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm1	# %sfp, D.5746
	movl	%eax, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm0	# %sfp, D.5746
	addss	-224(%rbp), %xmm1	# %sfp, D.5746
	addss	-228(%rbp), %xmm0	# %sfp, D.5746
	movss	%xmm1, (%rbx)	# D.5746, *_156
	movss	%xmm0, 4(%rbx)	# D.5746, *_156
	jmp	.L153	#
.L152:
	.loc 3 574 0
	movq	-112(%rbp), %rax	# reg, tmp519
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp520
	movslq	%edx, %rdx	# tmp520, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rdx	# m.t, D.5737
	movl	(%rdx), %eax	# *_170, D.5746
	movl	4(%rdx), %edx	# *_170, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp521
	movl	-56(%rbp), %ecx	# t$real, tmp522
	movl	%esi, -224(%rbp)	# tmp521, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp522, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp523
	movq	%rax, -152(%rbp)	# tmp523,
	movl	-152(%rbp), %edx	#, D.5738
	movl	-148(%rbp), %eax	#, D.5738
	movl	%edx, -224(%rbp)	# D.5738, %sfp
	movl	%eax, -228(%rbp)	# D.5738, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	8(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_174, D.5746
	movl	4(%rdx), %edx	# *_174, D.5746
	movl	-44(%rbp), %esi	# tnot$imag, tmp524
	movl	-48(%rbp), %ecx	# tnot$real, tmp525
	movl	%esi, -240(%rbp)	# tmp524, %sfp
	movss	-240(%rbp), %xmm3	# %sfp,
	movl	%ecx, -240(%rbp)	# tmp525, %sfp
	movss	-240(%rbp), %xmm2	# %sfp,
	movl	%edx, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm1	# %sfp,
	movl	%eax, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -240(%rbp)	#, %sfp
	movq	-240(%rbp), %rax	# %sfp, tmp526
	movq	%rax, -160(%rbp)	# tmp526,
	movl	-160(%rbp), %edx	#, D.5738
	movl	-156(%rbp), %eax	#, D.5738
	movl	%edx, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm1	# %sfp, D.5746
	movl	%eax, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm0	# %sfp, D.5746
	addss	-224(%rbp), %xmm1	# %sfp, D.5746
	addss	-228(%rbp), %xmm0	# %sfp, D.5746
	movss	%xmm1, (%rbx)	# D.5746, *_169
	movss	%xmm0, 4(%rbx)	# D.5746, *_169
.L153:
	.loc 3 576 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L154	#,
	.loc 3 578 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L155	#,
	.loc 3 579 0
	movq	-112(%rbp), %rax	# reg, tmp527
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-80(%rbp), %edx	# j, tmp528
	movslq	%edx, %rdx	# tmp528, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rdx	# m.t, D.5737
	movl	(%rdx), %eax	# *_182, D.5746
	movl	4(%rdx), %edx	# *_182, D.5746
	movl	-44(%rbp), %esi	# tnot$imag, tmp529
	movl	-48(%rbp), %ecx	# tnot$real, tmp530
	movl	%esi, -224(%rbp)	# tmp529, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp530, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp531
	movq	%rax, -168(%rbp)	# tmp531,
	movl	-168(%rbp), %edx	#, D.5738
	movl	-164(%rbp), %eax	#, D.5738
	movl	%edx, -224(%rbp)	# D.5738, %sfp
	movl	%eax, -228(%rbp)	# D.5738, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	8(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_186, D.5746
	movl	4(%rdx), %edx	# *_186, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp532
	movl	-56(%rbp), %ecx	# t$real, tmp533
	movl	%esi, -240(%rbp)	# tmp532, %sfp
	movss	-240(%rbp), %xmm3	# %sfp,
	movl	%ecx, -240(%rbp)	# tmp533, %sfp
	movss	-240(%rbp), %xmm2	# %sfp,
	movl	%edx, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm1	# %sfp,
	movl	%eax, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -240(%rbp)	#, %sfp
	movq	-240(%rbp), %rax	# %sfp, tmp534
	movq	%rax, -176(%rbp)	# tmp534,
	movl	-176(%rbp), %edx	#, D.5738
	movl	-172(%rbp), %eax	#, D.5738
	movl	%edx, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm1	# %sfp, D.5746
	movl	%eax, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm0	# %sfp, D.5746
	addss	-224(%rbp), %xmm1	# %sfp, D.5746
	addss	-228(%rbp), %xmm0	# %sfp, D.5746
	movss	%xmm1, (%rbx)	# D.5746, *_181
	movss	%xmm0, 4(%rbx)	# D.5746, *_181
	jmp	.L157	#
.L155:
	.loc 3 582 0
	movq	-112(%rbp), %rax	# reg, tmp535
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-80(%rbp), %edx	# j, tmp536
	movslq	%edx, %rdx	# tmp536, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	16(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_195, D.5746
	movl	4(%rdx), %edx	# *_195, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp537
	movl	-56(%rbp), %ecx	# t$real, tmp538
	movl	%esi, -224(%rbp)	# tmp537, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp538, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp539
	movq	%rax, -184(%rbp)	# tmp539,
	movl	-184(%rbp), %edx	#, D.5738
	movl	-180(%rbp), %eax	#, D.5738
	movl	%edx, -224(%rbp)	# D.5738, %sfp
	movl	%eax, -228(%rbp)	# D.5738, %sfp
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	24(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_199, D.5746
	movl	4(%rdx), %edx	# *_199, D.5746
	movl	-44(%rbp), %esi	# tnot$imag, tmp540
	movl	-48(%rbp), %ecx	# tnot$real, tmp541
	movl	%esi, -240(%rbp)	# tmp540, %sfp
	movss	-240(%rbp), %xmm3	# %sfp,
	movl	%ecx, -240(%rbp)	# tmp541, %sfp
	movss	-240(%rbp), %xmm2	# %sfp,
	movl	%edx, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm1	# %sfp,
	movl	%eax, -240(%rbp)	# D.5746, %sfp
	movss	-240(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -240(%rbp)	#, %sfp
	movq	-240(%rbp), %rax	# %sfp, tmp542
	movq	%rax, -192(%rbp)	# tmp542,
	movl	-192(%rbp), %edx	#, D.5738
	movl	-188(%rbp), %eax	#, D.5738
	movl	%edx, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm1	# %sfp, D.5746
	movl	%eax, -240(%rbp)	# D.5738, %sfp
	movss	-240(%rbp), %xmm0	# %sfp, D.5746
	addss	-224(%rbp), %xmm1	# %sfp, D.5746
	addss	-228(%rbp), %xmm0	# %sfp, D.5746
	movss	%xmm1, (%rbx)	# D.5746, *_193
	movss	%xmm0, 4(%rbx)	# D.5746, *_193
	jmp	.L157	#
.L154:
	.loc 3 589 0
	movq	-120(%rbp), %rax	# m.t, D.5737
	addq	$8, %rax	#, D.5737
	movss	(%rax), %xmm1	# *_204, D.5746
	movss	4(%rax), %xmm0	# *_204, D.5746
	xorps	%xmm2, %xmm2	# tmp544
	ucomiss	%xmm2, %xmm1	# tmp544, D.5746
	setnp	%dl	#, tmp543
	movl	$0, %eax	#, tmp546
	xorps	%xmm2, %xmm2	# tmp545
	ucomiss	%xmm2, %xmm1	# tmp545, D.5746
	cmovne	%eax, %edx	# tmp543,, tmp546, D.5747
	xorps	%xmm1, %xmm1	# tmp548
	ucomiss	%xmm1, %xmm0	# tmp548, D.5746
	setnp	%cl	#, tmp547
	movl	$0, %eax	#, tmp550
	xorps	%xmm1, %xmm1	# tmp549
	ucomiss	%xmm1, %xmm0	# tmp549, D.5746
	cmove	%ecx, %eax	# tmp547,, D.5747
	andl	%edx, %eax	# D.5747, D.5747
	cmpb	$1, %al	#, D.5747
	jne	.L158	#,
	.loc 3 589 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, iset
	je	.L158	#,
	.loc 3 590 0 is_stmt 1
	jmp	.L159	#
.L158:
	.loc 3 591 0
	movq	-120(%rbp), %rax	# m.t, D.5737
	addq	$16, %rax	#, D.5737
	movss	(%rax), %xmm1	# *_207, D.5746
	movss	4(%rax), %xmm0	# *_207, D.5746
	xorps	%xmm2, %xmm2	# tmp552
	ucomiss	%xmm2, %xmm1	# tmp552, D.5746
	setnp	%dl	#, tmp551
	movl	$0, %eax	#, tmp554
	xorps	%xmm2, %xmm2	# tmp553
	ucomiss	%xmm2, %xmm1	# tmp553, D.5746
	cmovne	%eax, %edx	# tmp551,, tmp554, D.5747
	xorps	%xmm1, %xmm1	# tmp556
	ucomiss	%xmm1, %xmm0	# tmp556, D.5746
	setnp	%cl	#, tmp555
	movl	$0, %eax	#, tmp558
	xorps	%xmm1, %xmm1	# tmp557
	ucomiss	%xmm1, %xmm0	# tmp557, D.5746
	cmove	%ecx, %eax	# tmp555,, D.5747
	andl	%edx, %eax	# D.5747, D.5747
	cmpb	$1, %al	#, D.5747
	jne	.L160	#,
	.loc 3 591 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, iset
	jne	.L160	#,
	.loc 3 592 0 is_stmt 1
	jmp	.L159	#
.L160:
	.loc 3 594 0
	movq	-112(%rbp), %rax	# reg, tmp559
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-76(%rbp), %edx	# k, tmp560
	movslq	%edx, %rdx	# tmp560, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rax, %rdx	# D.5735, D.5735
	movq	-112(%rbp), %rax	# reg, tmp561
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %ecx	# i, tmp562
	movslq	%ecx, %rcx	# tmp562, D.5734
	salq	$4, %rcx	#, D.5734
	addq	%rcx, %rax	# D.5734, D.5735
	movq	8(%rax), %rsi	# _216->state, D.5736
	.loc 3 595 0
	movl	-104(%rbp), %eax	# target, tmp563
	movl	$1, %edi	#, tmp564
	movl	%eax, %ecx	# tmp563, tmp679
	salq	%cl, %rdi	# tmp679, D.5736
	movq	%rdi, %rax	# D.5736, D.5736
	xorq	%rsi, %rax	# D.5736, D.5736
	.loc 3 594 0
	movq	%rax, 8(%rdx)	# D.5736, _212->state
	.loc 3 597 0
	cmpl	$0, -60(%rbp)	#, iset
	je	.L161	#,
	.loc 3 598 0
	movq	-112(%rbp), %rax	# reg, tmp565
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-76(%rbp), %edx	# k, tmp566
	movslq	%edx, %rdx	# tmp566, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	8(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_225, D.5746
	movl	4(%rdx), %edx	# *_225, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp567
	movl	-56(%rbp), %ecx	# t$real, tmp568
	movl	%esi, -224(%rbp)	# tmp567, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp568, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp569
	movq	%rax, -200(%rbp)	# tmp569,
	movl	-200(%rbp), %edx	#, D.5738
	movl	-196(%rbp), %eax	#, D.5738
	movl	%edx, (%rbx)	# D.5746, *_223
	movl	%eax, 4(%rbx)	# D.5746, *_223
	jmp	.L162	#
.L161:
	.loc 3 601 0
	movq	-112(%rbp), %rax	# reg, tmp570
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-76(%rbp), %edx	# k, tmp571
	movslq	%edx, %rdx	# tmp571, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rbx	#, D.5735
	movq	-120(%rbp), %rax	# m.t, D.5737
	leaq	16(%rax), %rdx	#, D.5737
	movl	(%rdx), %eax	# *_233, D.5746
	movl	4(%rdx), %edx	# *_233, D.5746
	movl	-52(%rbp), %esi	# t$imag, tmp572
	movl	-56(%rbp), %ecx	# t$real, tmp573
	movl	%esi, -224(%rbp)	# tmp572, %sfp
	movss	-224(%rbp), %xmm3	# %sfp,
	movl	%ecx, -224(%rbp)	# tmp573, %sfp
	movss	-224(%rbp), %xmm2	# %sfp,
	movl	%edx, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm1	# %sfp,
	movl	%eax, -224(%rbp)	# D.5746, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -224(%rbp)	#, %sfp
	movq	-224(%rbp), %rax	# %sfp, tmp574
	movq	%rax, -208(%rbp)	# tmp574,
	movl	-208(%rbp), %edx	#, D.5738
	movl	-204(%rbp), %eax	#, D.5738
	movl	%edx, (%rbx)	# D.5746, *_231
	movl	%eax, 4(%rbx)	# D.5746, *_231
.L162:
	.loc 3 603 0
	addl	$1, -76(%rbp)	#, k
.L157:
	.loc 3 606 0
	cmpl	$0, -80(%rbp)	#, j
	js	.L150	#,
	.loc 3 607 0
	movl	-80(%rbp), %eax	# j, tmp575
	movslq	%eax, %rdx	# tmp575, D.5742
	movq	-40(%rbp), %rax	# done, tmp576
	addq	%rdx, %rax	# D.5742, D.5743
	movb	$1, (%rax)	#, *_238
.L150:
	.loc 3 554 0
	addl	$1, -84(%rbp)	#, i
.L149:
	.loc 3 554 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp577
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	cmpl	-84(%rbp), %eax	# i, D.5732
	jg	.L163	#,
.L159:
	.loc 3 612 0 is_stmt 1
	movq	-112(%rbp), %rax	# reg, tmp578
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	movl	-72(%rbp), %eax	# addsize, tmp579
	addl	%eax, %edx	# tmp579, D.5732
	movq	-112(%rbp), %rax	# reg, tmp580
	movl	%edx, 4(%rax)	# D.5732, reg_24(D)->size
	.loc 3 614 0
	movq	-40(%rbp), %rax	# done, tmp581
	movq	%rax, %rdi	# tmp581,
	call	free	#
	.loc 3 615 0
	movq	-112(%rbp), %rax	# reg, tmp582
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	negl	%eax	# D.5732
	cltq
	movq	%rax, %rdi	# D.5740,
	call	quantum_memman	#
	.loc 3 619 0
	movl	$0, -84(%rbp)	#, i
	movl	$0, -80(%rbp)	#, j
	jmp	.L164	#
.L168:
	.loc 3 621 0
	movq	-112(%rbp), %rax	# reg, tmp583
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp584
	movslq	%edx, %rdx	# tmp584, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movl	(%rax), %edx	# _251->amplitude, D.5746
	movl	4(%rax), %eax	# _251->amplitude, D.5746
	movl	%edx, -216(%rbp)	# tmp585,
	movl	%eax, -212(%rbp)	# tmp586,
	movq	-216(%rbp), %rax	#, tmp587
	movq	%rax, -224(%rbp)	# tmp587, %sfp
	movq	-224(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	movss	-64(%rbp), %xmm1	# limit, tmp588
	ucomiss	%xmm0, %xmm1	# D.5746, tmp588
	jbe	.L173	#,
	.loc 3 623 0
	addl	$1, -80(%rbp)	#, j
	.loc 3 624 0
	addl	$1, -68(%rbp)	#, decsize
	jmp	.L167	#
.L173:
	.loc 3 627 0
	cmpl	$0, -80(%rbp)	#, j
	je	.L167	#,
	.loc 3 629 0
	movq	-112(%rbp), %rax	# reg, tmp589
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-80(%rbp), %edx	# j, tmp590
	movl	-84(%rbp), %ecx	# i, tmp591
	subl	%edx, %ecx	# tmp590, D.5732
	movl	%ecx, %edx	# D.5732, D.5732
	movslq	%edx, %rdx	# D.5732, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rax, %rdx	# D.5735, D.5735
	movq	-112(%rbp), %rax	# reg, tmp592
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %ecx	# i, tmp593
	movslq	%ecx, %rcx	# tmp593, D.5734
	salq	$4, %rcx	#, D.5734
	addq	%rcx, %rax	# D.5734, D.5735
	movq	8(%rax), %rax	# _264->state, D.5736
	movq	%rax, 8(%rdx)	# D.5736, _260->state
	.loc 3 630 0
	movq	-112(%rbp), %rax	# reg, tmp594
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-80(%rbp), %edx	# j, tmp595
	movl	-84(%rbp), %ecx	# i, tmp596
	subl	%edx, %ecx	# tmp595, D.5732
	movl	%ecx, %edx	# D.5732, D.5732
	movslq	%edx, %rdx	# D.5732, D.5734
	salq	$4, %rdx	#, D.5734
	leaq	(%rax,%rdx), %rcx	#, D.5735
	movq	-112(%rbp), %rax	# reg, tmp597
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movl	-84(%rbp), %edx	# i, tmp598
	movslq	%edx, %rdx	# tmp598, D.5734
	salq	$4, %rdx	#, D.5734
	addq	%rdx, %rax	# D.5734, D.5735
	movl	(%rax), %edx	# _274->amplitude, D.5746
	movl	4(%rax), %eax	# _274->amplitude, D.5746
	movl	%edx, (%rcx)	# D.5746, *_270
	movl	%eax, 4(%rcx)	# D.5746, *_270
.L167:
	.loc 3 619 0
	addl	$1, -84(%rbp)	#, i
.L164:
	.loc 3 619 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# reg, tmp599
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	cmpl	-84(%rbp), %eax	# i, D.5732
	jg	.L168	#,
	.loc 3 634 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, decsize
	je	.L169	#,
	.loc 3 636 0
	movq	-112(%rbp), %rax	# reg, tmp600
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	subl	-68(%rbp), %eax	# decsize, D.5732
	movl	%eax, %edx	# D.5732, D.5732
	movq	-112(%rbp), %rax	# reg, tmp601
	movl	%edx, 4(%rax)	# D.5732, reg_24(D)->size
	.loc 3 637 0
	movq	-112(%rbp), %rax	# reg, tmp602
	movl	4(%rax), %eax	# reg_24(D)->size, D.5732
	cltq
	salq	$4, %rax	#, D.5734
	movq	%rax, %rdx	# D.5734, D.5734
	movq	-112(%rbp), %rax	# reg, tmp603
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	movq	%rdx, %rsi	# D.5734,
	movq	%rax, %rdi	# D.5735,
	call	realloc	#
	movq	-112(%rbp), %rdx	# reg, tmp604
	movq	%rax, 16(%rdx)	# D.5739, reg_24(D)->node
	.loc 3 638 0
	movq	-112(%rbp), %rax	# reg, tmp605
	movq	16(%rax), %rax	# reg_24(D)->node, D.5735
	testq	%rax, %rax	# D.5735
	jne	.L170	#,
	.loc 3 641 0
	movq	-112(%rbp), %rax	# reg, tmp606
	movl	4(%rax), %edx	# reg_24(D)->size, D.5732
	.loc 3 640 0
	movl	-72(%rbp), %eax	# addsize, tmp607
	addl	%edx, %eax	# D.5732, D.5732
	movl	%eax, %esi	# D.5732,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 3 642 0
	movl	$1, %edi	#,
	call	exit	#
.L170:
	.loc 3 644 0
	movl	-68(%rbp), %eax	# decsize, tmp608
	negl	%eax	# D.5732
	cltq
	salq	$4, %rax	#, D.5734
	movq	%rax, %rdi	# D.5740,
	call	quantum_memman	#
.L169:
	.loc 3 647 0
	movq	-112(%rbp), %rax	# reg, tmp609
	movq	%rax, %rdi	# tmp609,
	call	quantum_decohere	#
	.loc 3 648 0
	addq	$264, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	quantum_gate2, .-quantum_gate2
	.section	.rodata
	.align 4
.LC14:
	.long	1060439283
	.long	0
	.align 4
.LC15:
	.long	3207922931
	.long	0
	.text
	.globl	quantum_hadamard
	.type	quantum_hadamard, @function
quantum_hadamard:
.LFB18:
	.loc 3 654 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# target, target
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 3 657 0
	movl	-20(%rbp), %eax	# target, tmp67
	movl	%eax, %esi	# tmp67,
	movl	$6, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5749
	jne	.L174	#,
	.loc 3 660 0
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	quantum_new_matrix	#
	movq	%rax, -16(%rbp)	# tmp69, m
	movq	%rdx, -8(%rbp)	#, m
	.loc 3 662 0
	movq	-8(%rbp), %rax	# m.t, D.5750
	movl	.LC14(%rip), %edx	#, tmp70
	movl	%edx, (%rax)	# tmp70, *_3
	movl	.LC14+4(%rip), %edx	#, tmp71
	movl	%edx, 4(%rax)	# tmp71, *_3
	movq	-8(%rbp), %rax	# m.t, D.5750
	leaq	8(%rax), %rdx	#, D.5750
	movl	.LC14(%rip), %eax	#, tmp72
	movl	%eax, (%rdx)	# tmp72, *_5
	movl	.LC14+4(%rip), %eax	#, tmp73
	movl	%eax, 4(%rdx)	# tmp73, *_5
	.loc 3 663 0
	movq	-8(%rbp), %rax	# m.t, D.5750
	leaq	16(%rax), %rdx	#, D.5750
	movl	.LC14(%rip), %eax	#, tmp74
	movl	%eax, (%rdx)	# tmp74, *_7
	movl	.LC14+4(%rip), %eax	#, tmp75
	movl	%eax, 4(%rdx)	# tmp75, *_7
	movq	-8(%rbp), %rax	# m.t, D.5750
	leaq	24(%rax), %rdx	#, D.5750
	movl	.LC15(%rip), %eax	#, tmp76
	movl	%eax, (%rdx)	# tmp76, *_9
	movl	.LC15+4(%rip), %eax	#, tmp77
	movl	%eax, 4(%rdx)	# tmp77, *_9
	.loc 3 665 0
	movq	-32(%rbp), %rcx	# reg, tmp78
	movq	-16(%rbp), %rsi	# m, tmp79
	movq	-8(%rbp), %rdx	# m, tmp80
	movl	-20(%rbp), %eax	# target, tmp81
	movl	%eax, %edi	# tmp81,
	call	quantum_gate1	#
	.loc 3 667 0
	leaq	-16(%rbp), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	quantum_delete_matrix	#
.L174:
	.loc 3 669 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	quantum_hadamard, .-quantum_hadamard
	.globl	quantum_walsh
	.type	quantum_walsh, @function
quantum_walsh:
.LFB19:
	.loc 3 675 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# width, width
	movq	%rsi, -32(%rbp)	# reg, reg
	.loc 3 678 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L178	#
.L179:
	.loc 3 679 0 discriminator 2
	movq	-32(%rbp), %rdx	# reg, tmp59
	movl	-4(%rbp), %eax	# i, tmp60
	movq	%rdx, %rsi	# tmp59,
	movl	%eax, %edi	# tmp60,
	call	quantum_hadamard	#
	.loc 3 678 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L178:
	.loc 3 678 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp61
	cmpl	-20(%rbp), %eax	# width, tmp61
	jl	.L179	#,
	.loc 3 681 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	quantum_walsh, .-quantum_walsh
	.globl	quantum_r_x
	.type	quantum_r_x, @function
quantum_r_x:
.LFB20:
	.loc 3 687 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# target, target
	movss	%xmm0, -40(%rbp)	# gamma, gamma
	movq	%rsi, -48(%rbp)	# reg, reg
	.loc 3 690 0
	movss	-40(%rbp), %xmm0	# gamma, D.5753
	cvtps2pd	%xmm0, %xmm0	# D.5753, D.5753
	movl	-36(%rbp), %eax	# target, tmp98
	movl	%eax, %esi	# tmp98,
	movl	$7, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5754
	jne	.L180	#,
	.loc 3 693 0
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	quantum_new_matrix	#
	movq	%rax, -32(%rbp)	# tmp100, m
	movq	%rdx, -24(%rbp)	#, m
	.loc 3 695 0
	movq	-24(%rbp), %rbx	# m.t, D.5755
	movss	-40(%rbp), %xmm0	# gamma, tmp101
	movss	.LC16(%rip), %xmm1	#, tmp102
	divss	%xmm1, %xmm0	# tmp102, D.5756
	unpcklps	%xmm0, %xmm0	# D.5756, D.5756
	cvtps2pd	%xmm0, %xmm0	# D.5756, D.5753
	call	cos	#
	unpcklpd	%xmm0, %xmm0	# D.5753
	cvtpd2ps	%xmm0, %xmm0	# D.5753, D.5756
	movss	%xmm0, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5757
	movl	.LC2(%rip), %eax	#, D.5757
	movl	%edx, (%rbx)	# D.5757, *_5
	movl	%eax, 4(%rbx)	# D.5757, *_5
	movq	-24(%rbp), %rax	# m.t, D.5755
	leaq	8(%rax), %rbx	#, D.5755
	movss	-40(%rbp), %xmm0	# gamma, tmp103
	movss	.LC16(%rip), %xmm1	#, tmp104
	divss	%xmm1, %xmm0	# tmp104, D.5756
	unpcklps	%xmm0, %xmm0	# D.5756, D.5756
	cvtps2pd	%xmm0, %xmm0	# D.5756, D.5753
	call	sin	#
	movsd	.LC17(%rip), %xmm1	#, tmp105
	mulsd	%xmm0, %xmm1	# D.5753, D.5753
	unpcklpd	%xmm1, %xmm1	# D.5753
	cvtpd2ps	%xmm1, %xmm2	# D.5753, D.5756
	unpcklpd	%xmm0, %xmm0	# D.5753
	cvtpd2ps	%xmm0, %xmm0	# D.5753, D.5756
	movss	.LC5(%rip), %xmm1	#, tmp106
	xorps	%xmm1, %xmm0	# tmp106, D.5756
	movss	%xmm2, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5757
	movss	%xmm0, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %eax	# %sfp, D.5757
	movl	%edx, (%rbx)	# D.5757, *_12
	movl	%eax, 4(%rbx)	# D.5757, *_12
	.loc 3 696 0
	movq	-24(%rbp), %rax	# m.t, D.5755
	leaq	16(%rax), %rbx	#, D.5755
	movss	-40(%rbp), %xmm0	# gamma, tmp107
	movss	.LC16(%rip), %xmm1	#, tmp108
	divss	%xmm1, %xmm0	# tmp108, D.5756
	unpcklps	%xmm0, %xmm0	# D.5756, D.5756
	cvtps2pd	%xmm0, %xmm0	# D.5756, D.5753
	call	sin	#
	movsd	.LC17(%rip), %xmm1	#, tmp109
	mulsd	%xmm0, %xmm1	# D.5753, D.5753
	unpcklpd	%xmm1, %xmm1	# D.5753
	cvtpd2ps	%xmm1, %xmm2	# D.5753, D.5756
	unpcklpd	%xmm0, %xmm0	# D.5753
	cvtpd2ps	%xmm0, %xmm0	# D.5753, D.5756
	movss	.LC5(%rip), %xmm1	#, tmp110
	xorps	%xmm1, %xmm0	# tmp110, D.5756
	movss	%xmm2, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5757
	movss	%xmm0, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %eax	# %sfp, D.5757
	movl	%edx, (%rbx)	# D.5757, *_22
	movl	%eax, 4(%rbx)	# D.5757, *_22
	movq	-24(%rbp), %rax	# m.t, D.5755
	leaq	24(%rax), %rbx	#, D.5755
	movss	-40(%rbp), %xmm0	# gamma, tmp111
	movss	.LC16(%rip), %xmm1	#, tmp112
	divss	%xmm1, %xmm0	# tmp112, D.5756
	unpcklps	%xmm0, %xmm0	# D.5756, D.5756
	cvtps2pd	%xmm0, %xmm0	# D.5756, D.5753
	call	cos	#
	unpcklpd	%xmm0, %xmm0	# D.5753
	cvtpd2ps	%xmm0, %xmm0	# D.5753, D.5756
	movss	%xmm0, -52(%rbp)	# D.5756, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5757
	movl	.LC2(%rip), %eax	#, D.5757
	movl	%edx, (%rbx)	# D.5757, *_32
	movl	%eax, 4(%rbx)	# D.5757, *_32
	.loc 3 698 0
	movq	-48(%rbp), %rcx	# reg, tmp113
	movq	-32(%rbp), %rsi	# m, tmp114
	movq	-24(%rbp), %rdx	# m, tmp115
	movl	-36(%rbp), %eax	# target, tmp116
	movl	%eax, %edi	# tmp116,
	call	quantum_gate1	#
	.loc 3 700 0
	leaq	-32(%rbp), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	quantum_delete_matrix	#
.L180:
	.loc 3 702 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	quantum_r_x, .-quantum_r_x
	.globl	quantum_r_y
	.type	quantum_r_y, @function
quantum_r_y:
.LFB21:
	.loc 3 708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# target, target
	movss	%xmm0, -40(%rbp)	# gamma, gamma
	movq	%rsi, -48(%rbp)	# reg, reg
	.loc 3 711 0
	movss	-40(%rbp), %xmm0	# gamma, D.5758
	cvtps2pd	%xmm0, %xmm0	# D.5758, D.5758
	movl	-36(%rbp), %eax	# target, tmp93
	movl	%eax, %esi	# tmp93,
	movl	$8, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5759
	jne	.L183	#,
	.loc 3 714 0
	movl	$2, %esi	#,
	movl	$2, %edi	#,
	call	quantum_new_matrix	#
	movq	%rax, -32(%rbp)	# tmp95, m
	movq	%rdx, -24(%rbp)	#, m
	.loc 3 716 0
	movq	-24(%rbp), %rbx	# m.t, D.5760
	movss	-40(%rbp), %xmm0	# gamma, tmp96
	movss	.LC16(%rip), %xmm1	#, tmp97
	divss	%xmm1, %xmm0	# tmp97, D.5761
	unpcklps	%xmm0, %xmm0	# D.5761, D.5761
	cvtps2pd	%xmm0, %xmm0	# D.5761, D.5758
	call	cos	#
	unpcklpd	%xmm0, %xmm0	# D.5758
	cvtpd2ps	%xmm0, %xmm0	# D.5758, D.5761
	movss	%xmm0, -52(%rbp)	# D.5761, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5762
	movl	.LC2(%rip), %eax	#, D.5762
	movl	%edx, (%rbx)	# D.5762, *_5
	movl	%eax, 4(%rbx)	# D.5762, *_5
	movq	-24(%rbp), %rax	# m.t, D.5760
	leaq	8(%rax), %rbx	#, D.5760
	movss	-40(%rbp), %xmm0	# gamma, tmp98
	movss	.LC16(%rip), %xmm1	#, tmp99
	divss	%xmm1, %xmm0	# tmp99, D.5761
	unpcklps	%xmm0, %xmm0	# D.5761, D.5761
	cvtps2pd	%xmm0, %xmm0	# D.5761, D.5758
	call	sin	#
	unpcklpd	%xmm0, %xmm0	# D.5758
	cvtpd2ps	%xmm0, %xmm0	# D.5758, D.5761
	movss	.LC5(%rip), %xmm1	#, tmp100
	xorps	%xmm1, %xmm0	# tmp100, D.5761
	movss	%xmm0, -52(%rbp)	# D.5761, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5762
	movl	.LC2(%rip), %eax	#, D.5762
	movl	%edx, (%rbx)	# D.5762, *_12
	movl	%eax, 4(%rbx)	# D.5762, *_12
	.loc 3 717 0
	movq	-24(%rbp), %rax	# m.t, D.5760
	leaq	16(%rax), %rbx	#, D.5760
	movss	-40(%rbp), %xmm0	# gamma, tmp101
	movss	.LC16(%rip), %xmm1	#, tmp102
	divss	%xmm1, %xmm0	# tmp102, D.5761
	unpcklps	%xmm0, %xmm0	# D.5761, D.5761
	cvtps2pd	%xmm0, %xmm0	# D.5761, D.5758
	call	sin	#
	unpcklpd	%xmm0, %xmm0	# D.5758
	cvtpd2ps	%xmm0, %xmm0	# D.5758, D.5761
	movss	%xmm0, -52(%rbp)	# D.5761, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5762
	movl	.LC2(%rip), %eax	#, D.5762
	movl	%edx, (%rbx)	# D.5762, *_20
	movl	%eax, 4(%rbx)	# D.5762, *_20
	movq	-24(%rbp), %rax	# m.t, D.5760
	leaq	24(%rax), %rbx	#, D.5760
	movss	-40(%rbp), %xmm0	# gamma, tmp103
	movss	.LC16(%rip), %xmm1	#, tmp104
	divss	%xmm1, %xmm0	# tmp104, D.5761
	unpcklps	%xmm0, %xmm0	# D.5761, D.5761
	cvtps2pd	%xmm0, %xmm0	# D.5761, D.5758
	call	cos	#
	unpcklpd	%xmm0, %xmm0	# D.5758
	cvtpd2ps	%xmm0, %xmm0	# D.5758, D.5761
	movss	%xmm0, -52(%rbp)	# D.5761, %sfp
	movl	-52(%rbp), %edx	# %sfp, D.5762
	movl	.LC2(%rip), %eax	#, D.5762
	movl	%edx, (%rbx)	# D.5762, *_27
	movl	%eax, 4(%rbx)	# D.5762, *_27
	.loc 3 719 0
	movq	-48(%rbp), %rcx	# reg, tmp105
	movq	-32(%rbp), %rsi	# m, tmp106
	movq	-24(%rbp), %rdx	# m, tmp107
	movl	-36(%rbp), %eax	# target, tmp108
	movl	%eax, %edi	# tmp108,
	call	quantum_gate1	#
	.loc 3 721 0
	leaq	-32(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	quantum_delete_matrix	#
.L183:
	.loc 3 723 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	quantum_r_y, .-quantum_r_y
	.globl	quantum_r_z
	.type	quantum_r_z, @function
quantum_r_z:
.LFB22:
	.loc 3 729 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# target, target
	movss	%xmm0, -56(%rbp)	# gamma, gamma
	movq	%rsi, -64(%rbp)	# reg, reg
	.loc 3 733 0
	movss	-56(%rbp), %xmm0	# gamma, D.5765
	cvtps2pd	%xmm0, %xmm0	# D.5765, D.5765
	movl	-52(%rbp), %eax	# target, tmp102
	movl	%eax, %esi	# tmp102,
	movl	$9, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5766
	je	.L187	#,
	.loc 3 734 0
	jmp	.L186	#
.L187:
	.loc 3 736 0
	movss	-56(%rbp), %xmm0	# gamma, tmp103
	movss	.LC16(%rip), %xmm1	#, tmp104
	divss	%xmm1, %xmm0	# tmp104, D.5767
	call	quantum_cexp	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp105
	movq	%rax, -24(%rbp)	# tmp105, z
	movl	-24(%rbp), %eax	# z, tmp106
	movl	%eax, -32(%rbp)	# tmp106, z$real
	movl	-20(%rbp), %eax	# z, tmp107
	movl	%eax, -28(%rbp)	# tmp107, z$imag
	.loc 3 738 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L189	#
.L192:
	.loc 3 740 0
	movq	-64(%rbp), %rax	# reg, tmp108
	movq	16(%rax), %rax	# reg_9(D)->node, D.5768
	movl	-36(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.5769
	salq	$4, %rdx	#, D.5769
	addq	%rdx, %rax	# D.5769, D.5768
	movq	8(%rax), %rdx	# _14->state, D.5770
	movl	-52(%rbp), %eax	# target, tmp110
	movl	%eax, %ecx	# tmp110, tmp129
	shrq	%cl, %rdx	# tmp129, D.5770
	movq	%rdx, %rax	# D.5770, D.5770
	andl	$1, %eax	#, D.5770
	testq	%rax, %rax	# D.5770
	je	.L190	#,
	.loc 3 741 0
	movq	-64(%rbp), %rax	# reg, tmp111
	movq	16(%rax), %rax	# reg_9(D)->node, D.5768
	movl	-36(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, D.5769
	salq	$4, %rdx	#, D.5769
	leaq	(%rax,%rdx), %rbx	#, D.5768
	movq	-64(%rbp), %rax	# reg, tmp113
	movq	16(%rax), %rax	# reg_9(D)->node, D.5768
	movl	-36(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, D.5769
	salq	$4, %rdx	#, D.5769
	addq	%rax, %rdx	# D.5768, D.5768
	movl	(%rdx), %eax	# _25->amplitude, D.5767
	movl	4(%rdx), %edx	# _25->amplitude, D.5767
	movl	-28(%rbp), %esi	# z$imag, tmp115
	movl	-32(%rbp), %ecx	# z$real, tmp116
	movl	%esi, -88(%rbp)	# tmp115, %sfp
	movss	-88(%rbp), %xmm3	# %sfp,
	movl	%ecx, -88(%rbp)	# tmp116, %sfp
	movss	-88(%rbp), %xmm2	# %sfp,
	movl	%edx, -88(%rbp)	# D.5767, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	movl	%eax, -88(%rbp)	# D.5767, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp117
	movq	%rax, -72(%rbp)	# tmp117,
	movl	-72(%rbp), %edx	#, D.5771
	movl	-68(%rbp), %eax	#, D.5771
	movl	%edx, (%rbx)	# D.5767, *_21
	movl	%eax, 4(%rbx)	# D.5767, *_21
	jmp	.L191	#
.L190:
	.loc 3 743 0
	movq	-64(%rbp), %rax	# reg, tmp118
	movq	16(%rax), %rax	# reg_9(D)->node, D.5768
	movl	-36(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, D.5769
	salq	$4, %rdx	#, D.5769
	leaq	(%rax,%rdx), %rbx	#, D.5768
	movq	-64(%rbp), %rax	# reg, tmp120
	movq	16(%rax), %rax	# reg_9(D)->node, D.5768
	movl	-36(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, D.5769
	salq	$4, %rdx	#, D.5769
	addq	%rax, %rdx	# D.5768, D.5768
	movl	(%rdx), %eax	# _35->amplitude, D.5767
	movl	4(%rdx), %edx	# _35->amplitude, D.5767
	movl	-28(%rbp), %esi	# z$imag, tmp122
	movl	-32(%rbp), %ecx	# z$real, tmp123
	movl	%esi, -88(%rbp)	# tmp122, %sfp
	movss	-88(%rbp), %xmm3	# %sfp,
	movl	%ecx, -88(%rbp)	# tmp123, %sfp
	movss	-88(%rbp), %xmm2	# %sfp,
	movl	%edx, -88(%rbp)	# D.5767, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	movl	%eax, -88(%rbp)	# D.5767, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	__divsc3	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp124
	movq	%rax, -80(%rbp)	# tmp124,
	movl	-80(%rbp), %edx	#, D.5771
	movl	-76(%rbp), %eax	#, D.5771
	movl	%edx, (%rbx)	# D.5767, *_31
	movl	%eax, 4(%rbx)	# D.5767, *_31
.L191:
	.loc 3 738 0
	addl	$1, -36(%rbp)	#, i
.L189:
	.loc 3 738 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# reg, tmp125
	movl	4(%rax), %eax	# reg_9(D)->size, D.5766
	cmpl	-36(%rbp), %eax	# i, D.5766
	jg	.L192	#,
	.loc 3 746 0 is_stmt 1
	movq	-64(%rbp), %rax	# reg, tmp126
	movq	%rax, %rdi	# tmp126,
	call	quantum_decohere	#
.L186:
	.loc 3 747 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	quantum_r_z, .-quantum_r_z
	.globl	quantum_phase_scale
	.type	quantum_phase_scale, @function
quantum_phase_scale:
.LFB23:
	.loc 3 753 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# target, target
	movss	%xmm0, -56(%rbp)	# gamma, gamma
	movq	%rsi, -64(%rbp)	# reg, reg
	.loc 3 757 0
	movss	-56(%rbp), %xmm0	# gamma, D.5774
	cvtps2pd	%xmm0, %xmm0	# D.5774, D.5774
	movl	-52(%rbp), %eax	# target, tmp78
	movl	%eax, %esi	# tmp78,
	movl	$11, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5775
	je	.L194	#,
	.loc 3 758 0
	jmp	.L193	#
.L194:
	.loc 3 760 0
	movl	-56(%rbp), %eax	# gamma, tmp79
	movl	%eax, -80(%rbp)	# tmp79, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	quantum_cexp	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp80
	movq	%rax, -24(%rbp)	# tmp80, z
	movl	-24(%rbp), %eax	# z, tmp81
	movl	%eax, -32(%rbp)	# tmp81, z$real
	movl	-20(%rbp), %eax	# z, tmp82
	movl	%eax, -28(%rbp)	# tmp82, z$imag
	.loc 3 762 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L196	#
.L197:
	.loc 3 764 0 discriminator 2
	movq	-64(%rbp), %rax	# reg, tmp83
	movq	16(%rax), %rax	# reg_8(D)->node, D.5776
	movl	-36(%rbp), %edx	# i, tmp84
	movslq	%edx, %rdx	# tmp84, D.5777
	salq	$4, %rdx	#, D.5777
	leaq	(%rax,%rdx), %rbx	#, D.5776
	movq	-64(%rbp), %rax	# reg, tmp85
	movq	16(%rax), %rax	# reg_8(D)->node, D.5776
	movl	-36(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.5777
	salq	$4, %rdx	#, D.5777
	addq	%rax, %rdx	# D.5776, D.5776
	movl	(%rdx), %eax	# _17->amplitude, D.5779
	movl	4(%rdx), %edx	# _17->amplitude, D.5779
	movl	-28(%rbp), %esi	# z$imag, tmp87
	movl	-32(%rbp), %ecx	# z$real, tmp88
	movl	%esi, -80(%rbp)	# tmp87, %sfp
	movss	-80(%rbp), %xmm3	# %sfp,
	movl	%ecx, -80(%rbp)	# tmp88, %sfp
	movss	-80(%rbp), %xmm2	# %sfp,
	movl	%edx, -80(%rbp)	# D.5779, %sfp
	movss	-80(%rbp), %xmm1	# %sfp,
	movl	%eax, -80(%rbp)	# D.5779, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp89
	movq	%rax, -72(%rbp)	# tmp89,
	movl	-72(%rbp), %edx	#, D.5778
	movl	-68(%rbp), %eax	#, D.5778
	movl	%edx, (%rbx)	# D.5779, *_13
	movl	%eax, 4(%rbx)	# D.5779, *_13
	.loc 3 762 0 discriminator 2
	addl	$1, -36(%rbp)	#, i
.L196:
	.loc 3 762 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# reg, tmp90
	movl	4(%rax), %eax	# reg_8(D)->size, D.5775
	cmpl	-36(%rbp), %eax	# i, D.5775
	jg	.L197	#,
	.loc 3 767 0 is_stmt 1
	movq	-64(%rbp), %rax	# reg, tmp91
	movq	%rax, %rdi	# tmp91,
	call	quantum_decohere	#
.L193:
	.loc 3 768 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	quantum_phase_scale, .-quantum_phase_scale
	.globl	quantum_phase_kick
	.type	quantum_phase_kick, @function
quantum_phase_kick:
.LFB24:
	.loc 3 775 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# target, target
	movss	%xmm0, -56(%rbp)	# gamma, gamma
	movq	%rsi, -64(%rbp)	# reg, reg
	.loc 3 779 0
	movss	-56(%rbp), %xmm0	# gamma, D.5782
	cvtps2pd	%xmm0, %xmm0	# D.5782, D.5782
	movl	-52(%rbp), %eax	# target, tmp85
	movl	%eax, %esi	# tmp85,
	movl	$10, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5783
	je	.L199	#,
	.loc 3 780 0
	jmp	.L198	#
.L199:
	.loc 3 782 0
	movl	-56(%rbp), %eax	# gamma, tmp86
	movl	%eax, -80(%rbp)	# tmp86, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	quantum_cexp	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp87
	movq	%rax, -24(%rbp)	# tmp87, z
	movl	-24(%rbp), %eax	# z, tmp88
	movl	%eax, -32(%rbp)	# tmp88, z$real
	movl	-20(%rbp), %eax	# z, tmp89
	movl	%eax, -28(%rbp)	# tmp89, z$imag
	.loc 3 784 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L201	#
.L203:
	.loc 3 786 0
	movq	-64(%rbp), %rax	# reg, tmp90
	movq	16(%rax), %rax	# reg_8(D)->node, D.5784
	movl	-36(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.5785
	salq	$4, %rdx	#, D.5785
	addq	%rdx, %rax	# D.5785, D.5784
	movq	8(%rax), %rdx	# _13->state, D.5786
	movl	-52(%rbp), %eax	# target, tmp92
	movl	%eax, %ecx	# tmp92, tmp105
	shrq	%cl, %rdx	# tmp105, D.5786
	movq	%rdx, %rax	# D.5786, D.5786
	andl	$1, %eax	#, D.5786
	testq	%rax, %rax	# D.5786
	je	.L202	#,
	.loc 3 787 0
	movq	-64(%rbp), %rax	# reg, tmp93
	movq	16(%rax), %rax	# reg_8(D)->node, D.5784
	movl	-36(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, D.5785
	salq	$4, %rdx	#, D.5785
	leaq	(%rax,%rdx), %rbx	#, D.5784
	movq	-64(%rbp), %rax	# reg, tmp95
	movq	16(%rax), %rax	# reg_8(D)->node, D.5784
	movl	-36(%rbp), %edx	# i, tmp96
	movslq	%edx, %rdx	# tmp96, D.5785
	salq	$4, %rdx	#, D.5785
	addq	%rax, %rdx	# D.5784, D.5784
	movl	(%rdx), %eax	# _24->amplitude, D.5788
	movl	4(%rdx), %edx	# _24->amplitude, D.5788
	movl	-28(%rbp), %esi	# z$imag, tmp97
	movl	-32(%rbp), %ecx	# z$real, tmp98
	movl	%esi, -80(%rbp)	# tmp97, %sfp
	movss	-80(%rbp), %xmm3	# %sfp,
	movl	%ecx, -80(%rbp)	# tmp98, %sfp
	movss	-80(%rbp), %xmm2	# %sfp,
	movl	%edx, -80(%rbp)	# D.5788, %sfp
	movss	-80(%rbp), %xmm1	# %sfp,
	movl	%eax, -80(%rbp)	# D.5788, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp99
	movq	%rax, -72(%rbp)	# tmp99,
	movl	-72(%rbp), %edx	#, D.5787
	movl	-68(%rbp), %eax	#, D.5787
	movl	%edx, (%rbx)	# D.5788, *_20
	movl	%eax, 4(%rbx)	# D.5788, *_20
.L202:
	.loc 3 784 0
	addl	$1, -36(%rbp)	#, i
.L201:
	.loc 3 784 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# reg, tmp100
	movl	4(%rax), %eax	# reg_8(D)->size, D.5783
	cmpl	-36(%rbp), %eax	# i, D.5783
	jg	.L203	#,
	.loc 3 790 0 is_stmt 1
	movq	-64(%rbp), %rax	# reg, tmp101
	movq	%rax, %rdi	# tmp101,
	call	quantum_decohere	#
.L198:
	.loc 3 791 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	quantum_phase_kick, .-quantum_phase_kick
	.globl	quantum_cond_phase
	.type	quantum_cond_phase, @function
quantum_cond_phase:
.LFB25:
	.loc 3 797 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# control, control
	movl	%esi, -56(%rbp)	# target, target
	movq	%rdx, -64(%rbp)	# reg, reg
	.loc 3 801 0
	movl	-56(%rbp), %edx	# target, tmp96
	movl	-52(%rbp), %eax	# control, tmp97
	movl	%eax, %esi	# tmp97,
	movl	$12, %edi	#,
	movl	$0, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5791
	je	.L205	#,
	.loc 3 802 0
	jmp	.L204	#
.L205:
	.loc 3 804 0
	movl	-56(%rbp), %eax	# target, tmp98
	movl	-52(%rbp), %edx	# control, tmp99
	subl	%eax, %edx	# tmp98, D.5791
	movl	%edx, %eax	# D.5791, D.5791
	movl	$1, %edx	#, tmp100
	movl	%eax, %ecx	# D.5791, tmp125
	salq	%cl, %rdx	# tmp125, D.5792
	movq	%rdx, %rax	# D.5792, D.5792
	testq	%rax, %rax	# D.5792
	js	.L207	#,
	cvtsi2sdq	%rax, %xmm0	# D.5792, D.5793
	jmp	.L208	#
.L207:
	movq	%rax, %rdx	# D.5792, tmp102
	shrq	%rdx	# tmp102
	andl	$1, %eax	#, tmp103
	orq	%rax, %rdx	# tmp103, tmp102
	cvtsi2sdq	%rdx, %xmm0	# tmp102, tmp101
	addsd	%xmm0, %xmm0	# tmp101, D.5793
.L208:
	movsd	.LC18(%rip), %xmm1	#, tmp104
	divsd	%xmm0, %xmm1	# D.5793, D.5793
	movapd	%xmm1, %xmm0	# D.5793, D.5793
	unpcklpd	%xmm0, %xmm0	# D.5793
	cvtpd2ps	%xmm0, %xmm0	# D.5793, D.5794
	call	quantum_cexp	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp105
	movq	%rax, -24(%rbp)	# tmp105, z
	movl	-24(%rbp), %eax	# z, tmp106
	movl	%eax, -32(%rbp)	# tmp106, z$real
	movl	-20(%rbp), %eax	# z, tmp107
	movl	%eax, -28(%rbp)	# tmp107, z$imag
	.loc 3 806 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L209	#
.L211:
	.loc 3 808 0
	movq	-64(%rbp), %rax	# reg, tmp108
	movq	16(%rax), %rax	# reg_12(D)->node, D.5795
	movl	-36(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.5796
	salq	$4, %rdx	#, D.5796
	addq	%rdx, %rax	# D.5796, D.5795
	movq	8(%rax), %rdx	# _17->state, D.5792
	movl	-52(%rbp), %eax	# control, tmp110
	movl	%eax, %ecx	# tmp110, tmp130
	shrq	%cl, %rdx	# tmp130, D.5792
	movq	%rdx, %rax	# D.5792, D.5792
	andl	$1, %eax	#, D.5792
	testq	%rax, %rax	# D.5792
	je	.L210	#,
	.loc 3 810 0
	movq	-64(%rbp), %rax	# reg, tmp111
	movq	16(%rax), %rax	# reg_12(D)->node, D.5795
	movl	-36(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, D.5796
	salq	$4, %rdx	#, D.5796
	addq	%rdx, %rax	# D.5796, D.5795
	movq	8(%rax), %rdx	# _24->state, D.5792
	movl	-56(%rbp), %eax	# target, tmp113
	movl	%eax, %ecx	# tmp113, tmp132
	shrq	%cl, %rdx	# tmp132, D.5792
	movq	%rdx, %rax	# D.5792, D.5792
	andl	$1, %eax	#, D.5792
	testq	%rax, %rax	# D.5792
	je	.L210	#,
	.loc 3 811 0
	movq	-64(%rbp), %rax	# reg, tmp114
	movq	16(%rax), %rax	# reg_12(D)->node, D.5795
	movl	-36(%rbp), %edx	# i, tmp115
	movslq	%edx, %rdx	# tmp115, D.5796
	salq	$4, %rdx	#, D.5796
	leaq	(%rax,%rdx), %rbx	#, D.5795
	movq	-64(%rbp), %rax	# reg, tmp116
	movq	16(%rax), %rax	# reg_12(D)->node, D.5795
	movl	-36(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.5796
	salq	$4, %rdx	#, D.5796
	addq	%rax, %rdx	# D.5795, D.5795
	movl	(%rdx), %eax	# _35->amplitude, D.5794
	movl	4(%rdx), %edx	# _35->amplitude, D.5794
	movl	-28(%rbp), %esi	# z$imag, tmp118
	movl	-32(%rbp), %ecx	# z$real, tmp119
	movl	%esi, -80(%rbp)	# tmp118, %sfp
	movss	-80(%rbp), %xmm3	# %sfp,
	movl	%ecx, -80(%rbp)	# tmp119, %sfp
	movss	-80(%rbp), %xmm2	# %sfp,
	movl	%edx, -80(%rbp)	# D.5794, %sfp
	movss	-80(%rbp), %xmm1	# %sfp,
	movl	%eax, -80(%rbp)	# D.5794, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp120
	movq	%rax, -72(%rbp)	# tmp120,
	movl	-72(%rbp), %edx	#, D.5797
	movl	-68(%rbp), %eax	#, D.5797
	movl	%edx, (%rbx)	# D.5794, *_31
	movl	%eax, 4(%rbx)	# D.5794, *_31
.L210:
	.loc 3 806 0
	addl	$1, -36(%rbp)	#, i
.L209:
	.loc 3 806 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# reg, tmp121
	movl	4(%rax), %eax	# reg_12(D)->size, D.5791
	cmpl	-36(%rbp), %eax	# i, D.5791
	jg	.L211	#,
	.loc 3 815 0 is_stmt 1
	movq	-64(%rbp), %rax	# reg, tmp122
	movq	%rax, %rdi	# tmp122,
	call	quantum_decohere	#
.L204:
	.loc 3 816 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	quantum_cond_phase, .-quantum_cond_phase
	.globl	quantum_cond_phase_inv
	.type	quantum_cond_phase_inv, @function
quantum_cond_phase_inv:
.LFB26:
	.loc 3 821 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# control, control
	movl	%esi, -56(%rbp)	# target, target
	movq	%rdx, -64(%rbp)	# reg, reg
	.loc 3 825 0
	movl	-56(%rbp), %eax	# target, tmp95
	movl	-52(%rbp), %edx	# control, tmp96
	subl	%eax, %edx	# tmp95, D.5800
	movl	%edx, %eax	# D.5800, D.5800
	movl	$1, %edx	#, tmp97
	movl	%eax, %ecx	# D.5800, tmp122
	salq	%cl, %rdx	# tmp122, D.5801
	movq	%rdx, %rax	# D.5801, D.5801
	testq	%rax, %rax	# D.5801
	js	.L213	#,
	cvtsi2sdq	%rax, %xmm0	# D.5801, D.5802
	jmp	.L214	#
.L213:
	movq	%rax, %rdx	# D.5801, tmp99
	shrq	%rdx	# tmp99
	andl	$1, %eax	#, tmp100
	orq	%rax, %rdx	# tmp100, tmp99
	cvtsi2sdq	%rdx, %xmm0	# tmp99, tmp98
	addsd	%xmm0, %xmm0	# tmp98, D.5802
.L214:
	movsd	.LC19(%rip), %xmm1	#, tmp101
	divsd	%xmm0, %xmm1	# D.5802, D.5802
	movapd	%xmm1, %xmm0	# D.5802, D.5802
	unpcklpd	%xmm0, %xmm0	# D.5802
	cvtpd2ps	%xmm0, %xmm0	# D.5802, D.5803
	call	quantum_cexp	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp102
	movq	%rax, -24(%rbp)	# tmp102, z
	movl	-24(%rbp), %eax	# z, tmp103
	movl	%eax, -32(%rbp)	# tmp103, z$real
	movl	-20(%rbp), %eax	# z, tmp104
	movl	%eax, -28(%rbp)	# tmp104, z$imag
	.loc 3 827 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L215	#
.L217:
	.loc 3 829 0
	movq	-64(%rbp), %rax	# reg, tmp105
	movq	16(%rax), %rax	# reg_11(D)->node, D.5804
	movl	-36(%rbp), %edx	# i, tmp106
	movslq	%edx, %rdx	# tmp106, D.5805
	salq	$4, %rdx	#, D.5805
	addq	%rdx, %rax	# D.5805, D.5804
	movq	8(%rax), %rdx	# _16->state, D.5801
	movl	-52(%rbp), %eax	# control, tmp107
	movl	%eax, %ecx	# tmp107, tmp127
	shrq	%cl, %rdx	# tmp127, D.5801
	movq	%rdx, %rax	# D.5801, D.5801
	andl	$1, %eax	#, D.5801
	testq	%rax, %rax	# D.5801
	je	.L216	#,
	.loc 3 831 0
	movq	-64(%rbp), %rax	# reg, tmp108
	movq	16(%rax), %rax	# reg_11(D)->node, D.5804
	movl	-36(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, D.5805
	salq	$4, %rdx	#, D.5805
	addq	%rdx, %rax	# D.5805, D.5804
	movq	8(%rax), %rdx	# _23->state, D.5801
	movl	-56(%rbp), %eax	# target, tmp110
	movl	%eax, %ecx	# tmp110, tmp129
	shrq	%cl, %rdx	# tmp129, D.5801
	movq	%rdx, %rax	# D.5801, D.5801
	andl	$1, %eax	#, D.5801
	testq	%rax, %rax	# D.5801
	je	.L216	#,
	.loc 3 832 0
	movq	-64(%rbp), %rax	# reg, tmp111
	movq	16(%rax), %rax	# reg_11(D)->node, D.5804
	movl	-36(%rbp), %edx	# i, tmp112
	movslq	%edx, %rdx	# tmp112, D.5805
	salq	$4, %rdx	#, D.5805
	leaq	(%rax,%rdx), %rbx	#, D.5804
	movq	-64(%rbp), %rax	# reg, tmp113
	movq	16(%rax), %rax	# reg_11(D)->node, D.5804
	movl	-36(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, D.5805
	salq	$4, %rdx	#, D.5805
	addq	%rax, %rdx	# D.5804, D.5804
	movl	(%rdx), %eax	# _34->amplitude, D.5803
	movl	4(%rdx), %edx	# _34->amplitude, D.5803
	movl	-28(%rbp), %esi	# z$imag, tmp115
	movl	-32(%rbp), %ecx	# z$real, tmp116
	movl	%esi, -80(%rbp)	# tmp115, %sfp
	movss	-80(%rbp), %xmm3	# %sfp,
	movl	%ecx, -80(%rbp)	# tmp116, %sfp
	movss	-80(%rbp), %xmm2	# %sfp,
	movl	%edx, -80(%rbp)	# D.5803, %sfp
	movss	-80(%rbp), %xmm1	# %sfp,
	movl	%eax, -80(%rbp)	# D.5803, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, tmp117
	movq	%rax, -72(%rbp)	# tmp117,
	movl	-72(%rbp), %edx	#, D.5806
	movl	-68(%rbp), %eax	#, D.5806
	movl	%edx, (%rbx)	# D.5803, *_30
	movl	%eax, 4(%rbx)	# D.5803, *_30
.L216:
	.loc 3 827 0
	addl	$1, -36(%rbp)	#, i
.L215:
	.loc 3 827 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# reg, tmp118
	movl	4(%rax), %eax	# reg_11(D)->size, D.5800
	cmpl	-36(%rbp), %eax	# i, D.5800
	jg	.L217	#,
	.loc 3 836 0 is_stmt 1
	movq	-64(%rbp), %rax	# reg, tmp119
	movq	%rax, %rdi	# tmp119,
	call	quantum_decohere	#
	.loc 3 837 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	quantum_cond_phase_inv, .-quantum_cond_phase_inv
	.globl	quantum_cond_phase_kick
	.type	quantum_cond_phase_kick, @function
quantum_cond_phase_kick:
.LFB27:
	.loc 3 842 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# control, control
	movl	%esi, -56(%rbp)	# target, target
	movss	%xmm0, -60(%rbp)	# gamma, gamma
	movq	%rdx, -72(%rbp)	# reg, reg
	.loc 3 846 0
	movss	-60(%rbp), %xmm0	# gamma, D.5809
	cvtps2pd	%xmm0, %xmm0	# D.5809, D.5809
	movl	-56(%rbp), %edx	# target, tmp92
	movl	-52(%rbp), %eax	# control, tmp93
	movl	%eax, %esi	# tmp93,
	movl	$12, %edi	#,
	movl	$1, %eax	#,
	call	quantum_objcode_put	#
	testl	%eax, %eax	# D.5810
	je	.L219	#,
	.loc 3 847 0
	jmp	.L218	#
.L219:
	.loc 3 849 0
	movl	-60(%rbp), %eax	# gamma, tmp94
	movl	%eax, -88(%rbp)	# tmp94, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	quantum_cexp	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp95
	movq	%rax, -24(%rbp)	# tmp95, z
	movl	-24(%rbp), %eax	# z, tmp96
	movl	%eax, -32(%rbp)	# tmp96, z$real
	movl	-20(%rbp), %eax	# z, tmp97
	movl	%eax, -28(%rbp)	# tmp97, z$imag
	.loc 3 851 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L221	#
.L223:
	.loc 3 853 0
	movq	-72(%rbp), %rax	# reg, tmp98
	movq	16(%rax), %rax	# reg_9(D)->node, D.5811
	movl	-36(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, D.5812
	salq	$4, %rdx	#, D.5812
	addq	%rdx, %rax	# D.5812, D.5811
	movq	8(%rax), %rdx	# _14->state, D.5813
	movl	-52(%rbp), %eax	# control, tmp100
	movl	%eax, %ecx	# tmp100, tmp116
	shrq	%cl, %rdx	# tmp116, D.5813
	movq	%rdx, %rax	# D.5813, D.5813
	andl	$1, %eax	#, D.5813
	testq	%rax, %rax	# D.5813
	je	.L222	#,
	.loc 3 855 0
	movq	-72(%rbp), %rax	# reg, tmp101
	movq	16(%rax), %rax	# reg_9(D)->node, D.5811
	movl	-36(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, D.5812
	salq	$4, %rdx	#, D.5812
	addq	%rdx, %rax	# D.5812, D.5811
	movq	8(%rax), %rdx	# _21->state, D.5813
	movl	-56(%rbp), %eax	# target, tmp103
	movl	%eax, %ecx	# tmp103, tmp118
	shrq	%cl, %rdx	# tmp118, D.5813
	movq	%rdx, %rax	# D.5813, D.5813
	andl	$1, %eax	#, D.5813
	testq	%rax, %rax	# D.5813
	je	.L222	#,
	.loc 3 856 0
	movq	-72(%rbp), %rax	# reg, tmp104
	movq	16(%rax), %rax	# reg_9(D)->node, D.5811
	movl	-36(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.5812
	salq	$4, %rdx	#, D.5812
	leaq	(%rax,%rdx), %rbx	#, D.5811
	movq	-72(%rbp), %rax	# reg, tmp106
	movq	16(%rax), %rax	# reg_9(D)->node, D.5811
	movl	-36(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, D.5812
	salq	$4, %rdx	#, D.5812
	addq	%rax, %rdx	# D.5811, D.5811
	movl	(%rdx), %eax	# _32->amplitude, D.5815
	movl	4(%rdx), %edx	# _32->amplitude, D.5815
	movl	-28(%rbp), %esi	# z$imag, tmp108
	movl	-32(%rbp), %ecx	# z$real, tmp109
	movl	%esi, -88(%rbp)	# tmp108, %sfp
	movss	-88(%rbp), %xmm3	# %sfp,
	movl	%ecx, -88(%rbp)	# tmp109, %sfp
	movss	-88(%rbp), %xmm2	# %sfp,
	movl	%edx, -88(%rbp)	# D.5815, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	movl	%eax, -88(%rbp)	# D.5815, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	__mulsc3	#
	movq	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp110
	movq	%rax, -80(%rbp)	# tmp110,
	movl	-80(%rbp), %edx	#, D.5814
	movl	-76(%rbp), %eax	#, D.5814
	movl	%edx, (%rbx)	# D.5815, *_28
	movl	%eax, 4(%rbx)	# D.5815, *_28
.L222:
	.loc 3 851 0
	addl	$1, -36(%rbp)	#, i
.L221:
	.loc 3 851 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# reg, tmp111
	movl	4(%rax), %eax	# reg_9(D)->size, D.5810
	cmpl	-36(%rbp), %eax	# i, D.5810
	jg	.L223	#,
	.loc 3 859 0 is_stmt 1
	movq	-72(%rbp), %rax	# reg, tmp112
	movq	%rax, %rdi	# tmp112,
	call	quantum_decohere	#
.L218:
	.loc 3 860 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	quantum_cond_phase_kick, .-quantum_cond_phase_kick
	.globl	quantum_gate_counter
	.type	quantum_gate_counter, @function
quantum_gate_counter:
.LFB28:
	.loc 3 868 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# inc, inc
	.loc 3 871 0
	cmpl	$0, -4(%rbp)	#, inc
	jle	.L225	#,
	.loc 3 872 0
	movl	counter.4383(%rip), %edx	# counter, counter.7
	movl	-4(%rbp), %eax	# inc, tmp63
	addl	%edx, %eax	# counter.7, counter.8
	movl	%eax, counter.4383(%rip)	# counter.8, counter
	jmp	.L226	#
.L225:
	.loc 3 873 0
	cmpl	$0, -4(%rbp)	#, inc
	jns	.L226	#,
	.loc 3 874 0
	movl	$0, counter.4383(%rip)	#, counter
.L226:
	.loc 3 876 0
	movl	counter.4383(%rip), %eax	# counter, D.5816
	.loc 3 877 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	quantum_gate_counter, .-quantum_gate_counter
	.local	counter.4383
	.comm	counter.4383,4,4
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	3212836864
	.align 4
.LC4:
	.long	2147483648
	.align 16
.LC5:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC7:
	.long	3894859413
	.long	1041313291
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.align 8
.LC12:
	.long	0
	.long	1093567616
	.align 4
.LC16:
	.long	1073741824
	.align 8
.LC17:
	.long	0
	.long	-2147483648
	.align 8
.LC18:
	.long	1414677840
	.long	1074340347
	.align 8
.LC19:
	.long	1414677840
	.long	-1073143301
	.text
.Letext0:
	.file 4 "<built-in>"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "matrix.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc75
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0x1
	.long	.LASF80
	.long	.LASF81
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF15
	.byte	0x5
	.byte	0x28
	.long	0x9a
	.uleb128 0x7
	.long	0xaa
	.long	0xaa
	.uleb128 0x8
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x18
	.byte	0x4
	.byte	0
	.long	0xe7
	.uleb128 0xa
	.long	.LASF11
	.byte	0x4
	.byte	0
	.long	0x49
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x4
	.byte	0
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF13
	.byte	0x4
	.byte	0
	.long	0x6c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x6
	.byte	0x4f
	.long	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x9
	.long	.LASF20
	.byte	0x10
	.byte	0x7
	.byte	0x20
	.long	0x12f
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x21
	.long	0x34
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x22
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.string	"t"
	.byte	0x7
	.byte	0x23
	.long	0x12f
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x135
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF23
	.uleb128 0x6
	.long	.LASF24
	.byte	0x7
	.byte	0x26
	.long	0x100
	.uleb128 0x9
	.long	.LASF25
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0x16c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.byte	0x25
	.long	0x135
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.byte	0x26
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x2
	.byte	0x29
	.long	0x147
	.uleb128 0x9
	.long	.LASF29
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x1c0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x2
	.byte	0x2f
	.long	0x34
	.byte	0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x2
	.byte	0x30
	.long	0x34
	.byte	0x4
	.uleb128 0xa
	.long	.LASF32
	.byte	0x2
	.byte	0x31
	.long	0x34
	.byte	0x8
	.uleb128 0xa
	.long	.LASF33
	.byte	0x2
	.byte	0x32
	.long	0x1c0
	.byte	0x10
	.uleb128 0xa
	.long	.LASF34
	.byte	0x2
	.byte	0x33
	.long	0x7b
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x16c
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0x36
	.long	0x177
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0x26
	.long	0xf2
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x26
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x28
	.long	0x20b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xf2
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0x2f
	.long	0xf2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x24b
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"p"
	.byte	0x1
	.byte	0x31
	.long	0x20b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0x38
	.long	0xf2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x291
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.byte	0x38
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x3a
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x2
	.byte	0x50
	.long	0x49
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd
	.uleb128 0xd
	.string	"key"
	.byte	0x2
	.byte	0x50
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF30
	.byte	0x2
	.byte	0x50
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"k32"
	.byte	0x2
	.byte	0x52
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF40
	.byte	0x2
	.byte	0x5f
	.long	0x34
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x325
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x5f
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x5f
	.long	0x1c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"i"
	.byte	0x2
	.byte	0x61
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0x2
	.byte	0x75
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x377
	.uleb128 0xd
	.string	"a"
	.byte	0x2
	.byte	0x75
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"pos"
	.byte	0x2
	.byte	0x75
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"reg"
	.byte	0x2
	.byte	0x75
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"i"
	.byte	0x2
	.byte	0x77
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x1c6
	.uleb128 0x12
	.long	.LASF43
	.byte	0x3
	.byte	0x2f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df
	.uleb128 0x10
	.long	.LASF41
	.byte	0x3
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF42
	.byte	0x3
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0x2f
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0x31
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"qec"
	.byte	0x3
	.byte	0x32
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF44
	.byte	0x3
	.byte	0x4b
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x44f
	.uleb128 0x10
	.long	.LASF45
	.byte	0x3
	.byte	0x4b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF46
	.byte	0x3
	.byte	0x4b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF42
	.byte	0x3
	.byte	0x4b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0x4b
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0x4d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"qec"
	.byte	0x3
	.byte	0x4e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF47
	.byte	0x3
	.byte	0x70
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d3
	.uleb128 0x10
	.long	.LASF48
	.byte	0x3
	.byte	0x70
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0x70
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x13
	.uleb128 0x14
	.long	.LASF49
	.byte	0x3
	.byte	0x72
	.long	0xe7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.long	.LASF42
	.byte	0x3
	.byte	0x73
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x14
	.long	.LASF50
	.byte	0x3
	.byte	0x74
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0x75
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0xe
	.string	"j"
	.byte	0x3
	.byte	0x75
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x12
	.long	.LASF51
	.byte	0x3
	.byte	0x9c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x527
	.uleb128 0x10
	.long	.LASF42
	.byte	0x3
	.byte	0x9c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0x9c
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0x9e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.string	"qec"
	.byte	0x3
	.byte	0x9f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF52
	.byte	0x3
	.byte	0xb7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x56d
	.uleb128 0x10
	.long	.LASF42
	.byte	0x3
	.byte	0xb7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0xb7
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0xb9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x3
	.byte	0xd1
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b3
	.uleb128 0x10
	.long	.LASF42
	.byte	0x3
	.byte	0xd1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0xd1
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0xd3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.long	.LASF54
	.byte	0x3
	.byte	0xe6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b
	.uleb128 0x10
	.long	.LASF30
	.byte	0x3
	.byte	0xe6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.string	"reg"
	.byte	0x3
	.byte	0xe6
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"i"
	.byte	0x3
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"j"
	.byte	0x3
	.byte	0xe8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF55
	.byte	0x3
	.byte	0xe9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.long	.LASF56
	.byte	0x3
	.byte	0xe9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"qec"
	.byte	0x3
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"l"
	.byte	0x3
	.byte	0xeb
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF57
	.byte	0x3
	.value	0x119
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x694
	.uleb128 0x16
	.long	.LASF41
	.byte	0x3
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF30
	.byte	0x3
	.value	0x119
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x119
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x11b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x3
	.value	0x128
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x776
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x128
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x17
	.string	"m"
	.byte	0x3
	.value	0x128
	.long	0x13c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x128
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x12a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"j"
	.byte	0x3
	.value	0x12a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"k"
	.byte	0x3
	.value	0x12a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.long	.LASF59
	.byte	0x3
	.value	0x12a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LASF60
	.byte	0x3
	.value	0x12b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF61
	.byte	0x3
	.value	0x12b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"t"
	.byte	0x3
	.value	0x12c
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF62
	.byte	0x3
	.value	0x12c
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF63
	.byte	0x3
	.value	0x12d
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF64
	.byte	0x3
	.value	0x12e
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.long	.LASF65
	.byte	0x3
	.value	0x1e3
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x868
	.uleb128 0x16
	.long	.LASF41
	.byte	0x3
	.value	0x1e3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x1e3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.string	"m"
	.byte	0x3
	.value	0x1e3
	.long	0x13c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x1e3
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x1e5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"j"
	.byte	0x3
	.value	0x1e5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.string	"k"
	.byte	0x3
	.value	0x1e5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.long	.LASF59
	.byte	0x3
	.value	0x1e5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x19
	.long	.LASF60
	.byte	0x3
	.value	0x1e6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF61
	.byte	0x3
	.value	0x1e6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.string	"t"
	.byte	0x3
	.value	0x1e7
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF62
	.byte	0x3
	.value	0x1e7
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF63
	.byte	0x3
	.value	0x1e8
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF64
	.byte	0x3
	.value	0x1e9
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.long	.LASF66
	.byte	0x3
	.value	0x28d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b2
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x28d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x28d
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"m"
	.byte	0x3
	.value	0x28f
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x15
	.long	.LASF67
	.byte	0x3
	.value	0x2a2
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fc
	.uleb128 0x16
	.long	.LASF30
	.byte	0x3
	.value	0x2a2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x2a2
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x2a4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF68
	.byte	0x3
	.value	0x2ae
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x955
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x2ae
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x2ae
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x2ae
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"m"
	.byte	0x3
	.value	0x2b0
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.long	.LASF70
	.byte	0x3
	.value	0x2c3
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ae
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x2c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x2c3
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x2c3
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"m"
	.byte	0x3
	.value	0x2c5
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.long	.LASF71
	.byte	0x3
	.value	0x2d8
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xa17
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x2d8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x2d8
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x2d8
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x2da
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x2db
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF72
	.byte	0x3
	.value	0x2f0
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xa80
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x2f0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x2f0
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x2f0
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x2f2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x2f3
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF73
	.byte	0x3
	.value	0x306
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xae9
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x306
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x306
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x306
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x308
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x309
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF74
	.byte	0x3
	.value	0x31c
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xb52
	.uleb128 0x16
	.long	.LASF41
	.byte	0x3
	.value	0x31c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x31c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x31c
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x31e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x31f
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF75
	.byte	0x3
	.value	0x334
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xbbb
	.uleb128 0x16
	.long	.LASF41
	.byte	0x3
	.value	0x334
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x334
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x334
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x336
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x337
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.long	.LASF76
	.byte	0x3
	.value	0x349
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xc34
	.uleb128 0x16
	.long	.LASF41
	.byte	0x3
	.value	0x349
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF42
	.byte	0x3
	.value	0x349
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF69
	.byte	0x3
	.value	0x349
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x17
	.string	"reg"
	.byte	0x3
	.value	0x349
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"i"
	.byte	0x3
	.value	0x34b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x18
	.string	"z"
	.byte	0x3
	.value	0x34c
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x3
	.value	0x363
	.long	0x34
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"inc"
	.byte	0x3
	.value	0x363
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LASF78
	.byte	0x3
	.value	0x365
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	counter.4383
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
.LASF54:
	.string	"quantum_swaptheleads"
.LASF21:
	.string	"rows"
.LASF70:
	.string	"quantum_r_y"
.LASF11:
	.string	"gp_offset"
.LASF16:
	.string	"va_list"
.LASF64:
	.string	"done"
.LASF72:
	.string	"quantum_phase_scale"
.LASF82:
	.string	"quantum_add_hash"
.LASF77:
	.string	"quantum_gate_counter"
.LASF80:
	.string	"gates.c"
.LASF10:
	.string	"long long unsigned int"
.LASF63:
	.string	"limit"
.LASF39:
	.string	"quantum_hash64"
.LASF76:
	.string	"quantum_cond_phase_kick"
.LASF9:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF57:
	.string	"quantum_swaptheleads_omuln_controlled"
.LASF38:
	.string	"quantum_prob_inline"
.LASF75:
	.string	"quantum_cond_phase_inv"
.LASF27:
	.string	"state"
.LASF49:
	.string	"bits"
.LASF6:
	.string	"long int"
.LASF18:
	.string	"double"
.LASF35:
	.string	"quantum_reg"
.LASF24:
	.string	"quantum_matrix"
.LASF52:
	.string	"quantum_sigma_y"
.LASF53:
	.string	"quantum_sigma_z"
.LASF32:
	.string	"hashw"
.LASF41:
	.string	"control"
.LASF45:
	.string	"control1"
.LASF46:
	.string	"control2"
.LASF34:
	.string	"hash"
.LASF20:
	.string	"quantum_matrix_struct"
.LASF3:
	.string	"unsigned int"
.LASF69:
	.string	"gamma"
.LASF13:
	.string	"overflow_arg_area"
.LASF0:
	.string	"long unsigned int"
.LASF81:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF30:
	.string	"width"
.LASF31:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF44:
	.string	"quantum_toffoli"
.LASF37:
	.string	"quantum_imag"
.LASF40:
	.string	"quantum_get_state"
.LASF42:
	.string	"target"
.LASF29:
	.string	"quantum_reg_struct"
.LASF68:
	.string	"quantum_r_x"
.LASF71:
	.string	"quantum_r_z"
.LASF7:
	.string	"sizetype"
.LASF15:
	.string	"__gnuc_va_list"
.LASF23:
	.string	"complex float"
.LASF66:
	.string	"quantum_hadamard"
.LASF48:
	.string	"controlling"
.LASF51:
	.string	"quantum_sigma_x"
.LASF60:
	.string	"addsize"
.LASF17:
	.string	"float"
.LASF67:
	.string	"quantum_walsh"
.LASF59:
	.string	"iset"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF78:
	.string	"counter"
.LASF25:
	.string	"quantum_reg_node_struct"
.LASF14:
	.string	"reg_save_area"
.LASF50:
	.string	"controls"
.LASF43:
	.string	"quantum_cnot"
.LASF8:
	.string	"char"
.LASF73:
	.string	"quantum_phase_kick"
.LASF28:
	.string	"quantum_reg_node"
.LASF47:
	.string	"quantum_unbounded_toffoli"
.LASF58:
	.string	"quantum_gate1"
.LASF65:
	.string	"quantum_gate2"
.LASF36:
	.string	"quantum_real"
.LASF79:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"fp_offset"
.LASF61:
	.string	"decsize"
.LASF22:
	.string	"cols"
.LASF62:
	.string	"tnot"
.LASF74:
	.string	"quantum_cond_phase"
.LASF55:
	.string	"pat1"
.LASF56:
	.string	"pat2"
.LASF26:
	.string	"amplitude"
.LASF19:
	.string	"__va_list_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
