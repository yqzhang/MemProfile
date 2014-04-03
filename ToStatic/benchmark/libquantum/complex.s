	.file	"complex.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX complex.c -mtune=generic -march=x86-64
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
.LFB0:
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
	movl	(%rax), %eax	# *p_1, D.3094
	.loc 1 42 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	quantum_real, .-quantum_real
	.type	quantum_imag, @function
quantum_imag:
.LFB1:
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
	movl	4(%rax), %eax	# MEM[(float *)p_1 + 4B], D.3096
	.loc 1 51 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	quantum_imag, .-quantum_imag
	.type	quantum_prob_inline, @function
quantum_prob_inline:
.LFB2:
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
	movaps	%xmm0, %xmm1	# tmp70, D.3097
	mulss	-8(%rbp), %xmm1	# r, D.3097
	movss	-4(%rbp), %xmm0	# i, tmp71
	mulss	-4(%rbp), %xmm0	# i, D.3097
	addss	%xmm1, %xmm0	# D.3097, D.3097
	movss	%xmm0, -40(%rbp)	# D.3097, %sfp
	movl	-40(%rbp), %eax	# %sfp, <retval>
	.loc 1 64 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	quantum_prob_inline, .-quantum_prob_inline
	.globl	quantum_conj
	.type	quantum_conj, @function
quantum_conj:
.LFB3:
	.file 2 "complex.c"
	.loc 2 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%xmm0, -48(%rbp)	# a, %sfp
	movq	-48(%rbp), %rax	# %sfp, tmp68
	movq	%rax, -24(%rbp)	# tmp68,
	movl	-24(%rbp), %edx	#, tmp66
	movl	-20(%rbp), %eax	#, tmp67
	movl	%edx, -32(%rbp)	# tmp66, a
	movl	%eax, -28(%rbp)	# tmp67, a
	.loc 2 39 0
	movq	-32(%rbp), %rax	# a, tmp69
	movq	%rax, -48(%rbp)	# tmp69, %sfp
	movq	-48(%rbp), %xmm0	# %sfp,
	call	quantum_real	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, tmp70
	movl	%eax, -8(%rbp)	# tmp70, r
	.loc 2 40 0
	movq	-32(%rbp), %rax	# a, tmp71
	movq	%rax, -48(%rbp)	# tmp71, %sfp
	movq	-48(%rbp), %xmm0	# %sfp,
	call	quantum_imag	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, tmp72
	movl	%eax, -4(%rbp)	# tmp72, i
	.loc 2 42 0
	movss	-4(%rbp), %xmm0	# i, i.0
	xorps	%xmm1, %xmm1	# tmp73
	mulss	%xmm0, %xmm1	# i.0, D.3098
	movss	-8(%rbp), %xmm2	# r, tmp74
	subss	%xmm1, %xmm2	# D.3098, D.3098
	movss	.LC1(%rip), %xmm1	#, tmp75
	xorps	%xmm1, %xmm0	# tmp75, D.3098
	movss	%xmm2, -48(%rbp)	# D.3098, %sfp
	movl	-48(%rbp), %edx	# %sfp, D.3099
	movss	%xmm0, -48(%rbp)	# D.3098, %sfp
	movl	-48(%rbp), %eax	# %sfp, D.3099
	movl	%edx, -40(%rbp)	# tmp78,
	movl	%eax, -36(%rbp)	# tmp79,
	movq	-40(%rbp), %rax	#, <retval>
	.loc 2 43 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movq	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quantum_conj, .-quantum_conj
	.globl	quantum_prob
	.type	quantum_prob, @function
quantum_prob:
.LFB4:
	.loc 2 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%xmm0, -24(%rbp)	# a, %sfp
	movq	-24(%rbp), %rax	# %sfp, tmp63
	movq	%rax, -8(%rbp)	# tmp63,
	movl	-8(%rbp), %edx	#, tmp61
	movl	-4(%rbp), %eax	#, tmp62
	movl	%edx, -16(%rbp)	# tmp61, a
	movl	%eax, -12(%rbp)	# tmp62, a
	.loc 2 50 0
	movq	-16(%rbp), %rax	# a, tmp64
	movq	%rax, -24(%rbp)	# tmp64, %sfp
	movq	-24(%rbp), %xmm0	# %sfp,
	call	quantum_prob_inline	#
	movss	%xmm0, -24(%rbp)	#, %sfp
	movl	-24(%rbp), %eax	# %sfp, D.3100
	.loc 2 51 0
	movl	%eax, -24(%rbp)	# <retval>, %sfp
	movss	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	quantum_prob, .-quantum_prob
	.globl	quantum_cexp
	.type	quantum_cexp, @function
quantum_cexp:
.LFB5:
	.loc 2 56 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -4(%rbp)	# phi, phi
	.loc 2 57 0
	movss	-4(%rbp), %xmm0	# phi, D.3101
	cvtps2pd	%xmm0, %xmm0	# D.3101, D.3101
	call	sin	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movss	-4(%rbp), %xmm0	# phi, D.3101
	cvtps2pd	%xmm0, %xmm0	# D.3101, D.3101
	call	cos	#
	xorpd	%xmm1, %xmm1	# tmp76
	mulsd	-24(%rbp), %xmm1	# %sfp, D.3101
	addsd	%xmm1, %xmm0	# D.3101, D.3101
	movsd	%xmm0, -32(%rbp)	# D.3101, %sfp
	movq	-32(%rbp), %rdx	# %sfp, D.3102
	movq	-24(%rbp), %rax	# %sfp, D.3102
	movq	%rdx, -24(%rbp)	# D.3081, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp, D.3101
	unpcklpd	%xmm0, %xmm0	# D.3101
	cvtpd2ps	%xmm0, %xmm1	# D.3101, D.3103
	movq	%rax, -24(%rbp)	# D.3081, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp, D.3101
	unpcklpd	%xmm0, %xmm0	# D.3101
	cvtpd2ps	%xmm0, %xmm0	# D.3101, D.3103
	movss	%xmm1, -24(%rbp)	# D.3103, %sfp
	movl	-24(%rbp), %edx	# %sfp, D.3104
	movss	%xmm0, -24(%rbp)	# D.3103, %sfp
	movl	-24(%rbp), %eax	# %sfp, D.3104
	movl	%edx, -12(%rbp)	# tmp79,
	movl	%eax, -8(%rbp)	# tmp80,
	movq	-12(%rbp), %rax	#, <retval>
	.loc 2 58 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movq	-24(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_cexp, .-quantum_cexp
	.section	.rodata
	.align 16
.LC1:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ad
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF9
	.byte	0x1
	.long	.LASF10
	.long	.LASF11
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
	.uleb128 0x4
	.long	.LASF4
	.byte	0x1
	.byte	0x26
	.long	0x2d
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x83
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x26
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0x28
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF3
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x4
	.long	.LASF5
	.byte	0x1
	.byte	0x2f
	.long	0x2d
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xca
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x2f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"p"
	.byte	0x1
	.byte	0x31
	.long	0x8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF6
	.byte	0x1
	.byte	0x38
	.long	0x2d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x110
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x38
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF7
	.byte	0x2
	.byte	0x23
	.long	0x83
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x156
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.byte	0x23
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"r"
	.byte	0x2
	.byte	0x25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"i"
	.byte	0x2
	.byte	0x25
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF8
	.byte	0x2
	.byte	0x30
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x184
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.byte	0x30
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x2
	.byte	0x37
	.long	0x83
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"phi"
	.byte	0x2
	.byte	0x37
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xa
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
.LASF4:
	.string	"quantum_real"
.LASF7:
	.string	"quantum_conj"
.LASF12:
	.string	"quantum_cexp"
.LASF2:
	.string	"char"
.LASF9:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF1:
	.string	"double"
.LASF3:
	.string	"complex float"
.LASF11:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF10:
	.string	"complex.c"
.LASF0:
	.string	"float"
.LASF8:
	.string	"quantum_prob"
.LASF5:
	.string	"quantum_imag"
.LASF6:
	.string	"quantum_prob_inline"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
