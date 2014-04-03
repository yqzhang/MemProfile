	.file	"classic.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX classic.c -mtune=generic -march=x86-64
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
	.globl	quantum_ipow
	.type	quantum_ipow, @function
quantum_ipow:
.LFB0:
	.file 1 "classic.c"
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# b, b
	.loc 1 40 0
	movl	$1, -4(%rbp)	#, r
	.loc 1 42 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 43 0 discriminator 2
	movl	-4(%rbp), %eax	# r, tmp62
	imull	-20(%rbp), %eax	# a, tmp61
	movl	%eax, -4(%rbp)	# tmp61, r
	.loc 1 42 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 42 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp63
	cmpl	-24(%rbp), %eax	# b, tmp63
	jl	.L3	#,
	.loc 1 45 0 is_stmt 1
	movl	-4(%rbp), %eax	# r, D.2849
	.loc 1 46 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	quantum_ipow, .-quantum_ipow
	.globl	quantum_gcd
	.type	quantum_gcd, @function
quantum_gcd:
.LFB1:
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# u, u
	movl	%esi, -24(%rbp)	# v, v
	.loc 1 55 0
	jmp	.L6	#
.L7:
	.loc 1 57 0
	movl	-20(%rbp), %eax	# u, tmp62
	cltd
	idivl	-24(%rbp)	# v
	movl	%edx, -4(%rbp)	# tmp63, r
	.loc 1 58 0
	movl	-24(%rbp), %eax	# v, tmp65
	movl	%eax, -20(%rbp)	# tmp65, u
	.loc 1 59 0
	movl	-4(%rbp), %eax	# r, tmp66
	movl	%eax, -24(%rbp)	# tmp66, v
.L6:
	.loc 1 55 0 discriminator 1
	cmpl	$0, -24(%rbp)	#, v
	jne	.L7	#,
	.loc 1 61 0
	movl	-20(%rbp), %eax	# u, D.2850
	.loc 1 62 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	quantum_gcd, .-quantum_gcd
	.globl	quantum_frac_approx
	.type	quantum_frac_approx, @function
quantum_frac_approx:
.LFB2:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# a, a
	movq	%rsi, -64(%rbp)	# b, b
	movl	%edx, -68(%rbp)	# width, width
	.loc 1 69 0
	movq	-56(%rbp), %rax	# a, tmp83
	movl	(%rax), %eax	# *a_10(D), D.2851
	cvtsi2ss	%eax, %xmm0	# D.2851, D.2852
	movq	-64(%rbp), %rax	# b, tmp84
	movl	(%rax), %eax	# *b_13(D), D.2851
	cvtsi2ss	%eax, %xmm1	# D.2851, D.2852
	divss	%xmm1, %xmm0	# D.2852, tmp85
	movss	%xmm0, -8(%rbp)	# tmp85, f
	.loc 1 70 0
	movl	-8(%rbp), %eax	# f, tmp86
	movl	%eax, -36(%rbp)	# tmp86, g
	.loc 1 71 0
	movl	$0, -32(%rbp)	#, num2
	movl	$1, -28(%rbp)	#, den2
	movl	$1, -24(%rbp)	#, num1
	movl	$0, -20(%rbp)	#, den1
	movl	$0, -16(%rbp)	#, num
	movl	$0, -12(%rbp)	#, den
.L12:
	.loc 1 75 0
	movss	-36(%rbp), %xmm0	# g, D.2853
	cvtps2pd	%xmm0, %xmm0	# D.2853, D.2853
	movsd	.LC0(%rip), %xmm1	#, tmp87
	addsd	%xmm1, %xmm0	# tmp87, D.2853
	cvttsd2si	%xmm0, %eax	# D.2853, tmp88
	movl	%eax, -4(%rbp)	# tmp88, i
	.loc 1 77 0
	movss	-36(%rbp), %xmm0	# g, D.2853
	cvtps2pd	%xmm0, %xmm0	# D.2853, D.2853
	cvtsi2sd	-4(%rbp), %xmm1	# i, D.2853
	movsd	.LC0(%rip), %xmm2	#, tmp89
	subsd	%xmm2, %xmm1	# tmp89, D.2853
	subsd	%xmm1, %xmm0	# D.2853, D.2853
	unpcklpd	%xmm0, %xmm0	# D.2853
	cvtpd2ps	%xmm0, %xmm3	# D.2853, tmp118
	movss	%xmm3, -36(%rbp)	# tmp118, g
	.loc 1 78 0
	movss	.LC1(%rip), %xmm0	#, tmp91
	divss	-36(%rbp), %xmm0	# g, tmp90
	movss	%xmm0, -36(%rbp)	# tmp90, g
	.loc 1 80 0
	movl	-4(%rbp), %eax	# i, tmp92
	imull	-20(%rbp), %eax	# den1, D.2851
	movl	%eax, %edx	# D.2851, D.2851
	movl	-28(%rbp), %eax	# den2, tmp93
	leal	(%rdx,%rax), %esi	#, D.2851
	movl	-68(%rbp), %eax	# width, tmp94
	movl	$1, %edx	#, tmp95
	movl	%eax, %ecx	# tmp94, tmp121
	sall	%cl, %edx	# tmp121, D.2851
	movl	%edx, %eax	# D.2851, D.2851
	cmpl	%eax, %esi	# D.2851, D.2851
	jle	.L10	#,
	.loc 1 81 0
	jmp	.L11	#
.L10:
	.loc 1 83 0
	movl	-4(%rbp), %eax	# i, tmp96
	imull	-24(%rbp), %eax	# num1, D.2851
	movl	%eax, %edx	# D.2851, D.2851
	movl	-32(%rbp), %eax	# num2, tmp100
	addl	%edx, %eax	# D.2851, tmp99
	movl	%eax, -16(%rbp)	# tmp99, num
	.loc 1 84 0
	movl	-4(%rbp), %eax	# i, tmp101
	imull	-20(%rbp), %eax	# den1, D.2851
	movl	%eax, %edx	# D.2851, D.2851
	movl	-28(%rbp), %eax	# den2, tmp105
	addl	%edx, %eax	# D.2851, tmp104
	movl	%eax, -12(%rbp)	# tmp104, den
	.loc 1 86 0
	movl	-24(%rbp), %eax	# num1, tmp106
	movl	%eax, -32(%rbp)	# tmp106, num2
	.loc 1 87 0
	movl	-20(%rbp), %eax	# den1, tmp107
	movl	%eax, -28(%rbp)	# tmp107, den2
	.loc 1 88 0
	movl	-16(%rbp), %eax	# num, tmp108
	movl	%eax, -24(%rbp)	# tmp108, num1
	.loc 1 89 0
	movl	-12(%rbp), %eax	# den, tmp109
	movl	%eax, -20(%rbp)	# tmp109, den1
	.loc 1 93 0
	cvtsi2ss	-16(%rbp), %xmm0	# num, D.2852
	cvtsi2ss	-12(%rbp), %xmm1	# den, D.2852
	divss	%xmm1, %xmm0	# D.2852, D.2852
	subss	-8(%rbp), %xmm0	# f, D.2852
	movss	.LC2(%rip), %xmm1	#, tmp110
	andps	%xmm1, %xmm0	# tmp110, D.2852
	unpcklps	%xmm0, %xmm0	# D.2852, D.2852
	cvtps2pd	%xmm0, %xmm0	# D.2852, D.2853
	movl	-68(%rbp), %eax	# width, tmp111
	movl	$2, %edx	#, tmp112
	movl	%eax, %ecx	# tmp111, tmp125
	sall	%cl, %edx	# tmp125, D.2851
	movl	%edx, %eax	# D.2851, D.2851
	cvtsi2sd	%eax, %xmm1	# D.2851, D.2853
	movsd	.LC3(%rip), %xmm2	#, tmp113
	divsd	%xmm1, %xmm2	# D.2853, D.2853
	movapd	%xmm2, %xmm1	# D.2853, D.2853
	ucomisd	%xmm1, %xmm0	# D.2853, D.2853
	ja	.L12	#,
.L11:
	.loc 1 95 0
	movq	-56(%rbp), %rax	# a, tmp114
	movl	-16(%rbp), %edx	# num, tmp115
	movl	%edx, (%rax)	# tmp115, *a_10(D)
	.loc 1 96 0
	movq	-64(%rbp), %rax	# b, tmp116
	movl	-12(%rbp), %edx	# den, tmp117
	movl	%edx, (%rax)	# tmp117, *b_13(D)
	.loc 1 98 0
	nop
	.loc 1 99 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	quantum_frac_approx, .-quantum_frac_approx
	.globl	quantum_getwidth
	.type	quantum_getwidth, @function
quantum_getwidth:
.LFB3:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	.loc 1 108 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L15	#
.L16:
	.loc 1 108 0 is_stmt 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L15:
	.loc 1 108 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp62
	movl	$1, %edx	#, tmp63
	movl	%eax, %ecx	# tmp62, tmp66
	sall	%cl, %edx	# tmp66, D.2854
	movl	%edx, %eax	# D.2854, D.2854
	cmpl	-20(%rbp), %eax	# n, D.2854
	jl	.L16	#,
	.loc 1 110 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, D.2854
	.loc 1 111 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quantum_getwidth, .-quantum_getwidth
	.globl	quantum_inverse_mod
	.type	quantum_inverse_mod, @function
quantum_inverse_mod:
.LFB4:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 120 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L19	#
.L20:
	.loc 1 120 0 is_stmt 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L19:
	.loc 1 120 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp63
	imull	-24(%rbp), %eax	# c, D.2855
	cltd
	idivl	-20(%rbp)	# n
	movl	%edx, %eax	# tmp64, D.2855
	cmpl	$1, %eax	#, D.2855
	jne	.L20	#,
	.loc 1 122 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, D.2855
	.loc 1 123 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	quantum_inverse_mod, .-quantum_inverse_mod
	.section	.rodata
	.align 8
.LC0:
	.long	2296604913
	.long	1054144693
	.align 4
.LC1:
	.long	1065353216
	.align 16
.LC2:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF13
	.byte	0x1
	.long	.LASF14
	.long	.LASF15
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
	.long	.LASF3
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x28
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	.LASF4
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xe1
	.uleb128 0x5
	.string	"u"
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"v"
	.byte	0x1
	.byte	0x33
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"r"
	.byte	0x1
	.byte	0x35
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x43
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.byte	0x43
	.long	0x1a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"b"
	.byte	0x1
	.byte	0x43
	.long	0x1a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.long	.LASF5
	.byte	0x1
	.byte	0x43
	.long	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"f"
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"g"
	.byte	0x1
	.byte	0x46
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.long	.LASF6
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF7
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.long	.LASF8
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF9
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"num"
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"den"
	.byte	0x1
	.byte	0x47
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x68
	.long	0x3b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e0
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x68
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x6a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF12
	.byte	0x1
	.byte	0x74
	.long	0x3b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x74
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.string	"c"
	.byte	0x1
	.byte	0x74
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x76
	.long	0x3b
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF3:
	.string	"quantum_ipow"
.LASF0:
	.string	"float"
.LASF9:
	.string	"den1"
.LASF7:
	.string	"den2"
.LASF12:
	.string	"quantum_inverse_mod"
.LASF8:
	.string	"num1"
.LASF14:
	.string	"classic.c"
.LASF15:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF6:
	.string	"num2"
.LASF1:
	.string	"double"
.LASF2:
	.string	"char"
.LASF11:
	.string	"quantum_frac_approx"
.LASF4:
	.string	"quantum_gcd"
.LASF10:
	.string	"quantum_getwidth"
.LASF5:
	.string	"width"
.LASF13:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
