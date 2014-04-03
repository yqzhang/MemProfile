	.file	"specrand.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 specrand.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	seedi
	.comm	seedi,4,4
	.globl	spec_srand
	.type	spec_srand, @function
spec_srand:
.LFB0:
	.file 1 "specrand.c"
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# seed, seed
	.loc 1 17 0
	movl	-4(%rbp), %eax	# seed, tmp59
	movl	%eax, seedi(%rip)	# tmp59, seedi
	.loc 1 18 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	spec_srand, .-spec_srand
	.globl	spec_rand
	.type	spec_rand, @function
spec_rand:
.LFB1:
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 35 0
	movl	seedi(%rip), %ecx	# seedi, seedi.0
	movl	$-2092037281, %edx	#, tmp74
	movl	%ecx, %eax	# seedi.0, tmp91
	imull	%edx	# tmp74
	leal	(%rdx,%rcx), %eax	#, tmp75
	sarl	$16, %eax	#, tmp76
	movl	%eax, %edx	# tmp76, tmp76
	movl	%ecx, %eax	# seedi.0, tmp77
	sarl	$31, %eax	#, tmp77
	subl	%eax, %edx	# tmp77, tmp78
	movl	%edx, %eax	# tmp78, tmp78
	movl	%eax, -12(%rbp)	# tmp78, hi
	.loc 1 36 0
	movl	seedi(%rip), %ecx	# seedi, seedi.1
	movl	$-2092037281, %edx	#, tmp80
	movl	%ecx, %eax	# seedi.1, tmp92
	imull	%edx	# tmp80
	leal	(%rdx,%rcx), %eax	#, tmp81
	sarl	$16, %eax	#, tmp82
	movl	%eax, %edx	# tmp82, tmp82
	movl	%ecx, %eax	# seedi.1, tmp83
	sarl	$31, %eax	#, tmp83
	subl	%eax, %edx	# tmp83, tmp84
	movl	%edx, %eax	# tmp84, tmp84
	movl	%eax, -8(%rbp)	# tmp84, lo
	movl	-8(%rbp), %eax	# lo, tmp86
	imull	$127773, %eax, %eax	#, tmp86, tmp85
	subl	%eax, %ecx	# tmp85, tmp87
	movl	%ecx, %eax	# tmp87, tmp87
	movl	%eax, -8(%rbp)	# tmp87, lo
	.loc 1 37 0
	movl	-8(%rbp), %eax	# lo, lo.2
	imull	$16807, %eax, %edx	#, lo.2, D.1748
	movl	-12(%rbp), %eax	# hi, hi.3
	imull	$-2836, %eax, %eax	#, hi.3, D.1748
	addl	%edx, %eax	# D.1748, D.1748
	movl	%eax, -4(%rbp)	# D.1748, test
	.loc 1 38 0
	cmpl	$0, -4(%rbp)	#, test
	jle	.L3	#,
	.loc 1 39 0
	movl	-4(%rbp), %eax	# test, tmp88
	movl	%eax, seedi(%rip)	# tmp88, seedi
	jmp	.L4	#
.L3:
	.loc 1 41 0
	movl	-4(%rbp), %eax	# test, test.4
	addl	$2147483647, %eax	#, D.1748
	movl	%eax, seedi(%rip)	# seedi.5, seedi
.L4:
	.loc 1 43 0
	movl	seedi(%rip), %eax	# seedi, seedi.6
	cvtsi2sd	%eax, %xmm0	# seedi.6, D.1749
	movsd	.LC0(%rip), %xmm1	#, tmp89
	divsd	%xmm1, %xmm0	# tmp89, D.1749
	movsd	%xmm0, -24(%rbp)	# D.1749, %sfp
	movq	-24(%rbp), %rax	# %sfp, <retval>
	.loc 1 44 0
	movq	%rax, -24(%rbp)	# <retval>, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	spec_rand, .-spec_rand
	.section	.rodata
	.align 8
.LC0:
	.long	4290772992
	.long	1105199103
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3
	.byte	0x1
	.long	.LASF4
	.long	.LASF5
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF6
	.byte	0x1
	.byte	0x10
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x59
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x10
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.long	.LASF8
	.byte	0x1
	.byte	0x19
	.long	0xaa
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa
	.uleb128 0x6
	.string	"lo"
	.byte	0x1
	.byte	0x1f
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"hi"
	.byte	0x1
	.byte	0x20
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.long	.LASF0
	.byte	0x1
	.byte	0x21
	.long	0x59
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF1
	.uleb128 0x7
	.long	.LASF2
	.byte	0x1
	.byte	0xe
	.long	0x59
	.uleb128 0x9
	.byte	0x3
	.quad	seedi
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
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
.LASF7:
	.string	"seed"
.LASF3:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"specrand.c"
.LASF5:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF6:
	.string	"spec_srand"
.LASF1:
	.string	"double"
.LASF8:
	.string	"spec_rand"
.LASF0:
	.string	"test"
.LASF2:
	.string	"seedi"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
