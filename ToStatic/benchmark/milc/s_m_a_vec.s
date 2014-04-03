	.file	"s_m_a_vec.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# s_m_a_vec.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	scalar_mult_add_su3_vector
	.type	scalar_mult_add_su3_vector, @function
scalar_mult_add_su3_vector:
.LFB0:
	.file 1 "s_m_a_vec.c"
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)	# a, a
	movq	%rsi, -24(%rbp)	# b, b
	movsd	%xmm0, -32(%rbp)	# s, s
	movq	%rdx, -40(%rbp)	# c, c
	.loc 1 18 0
	movl	$0, %ebx	#, i
	jmp	.L2	#
.L3:
	.loc 1 19 0 discriminator 2
	movq	-16(%rbp), %rax	# a, tmp68
	movslq	%ebx, %rdx	# i, tmp69
	salq	$4, %rdx	#, tmp70
	addq	%rdx, %rax	# tmp70, tmp71
	movsd	(%rax), %xmm1	# a_3(D)->c[i_1].real, D.2181
	movq	-24(%rbp), %rax	# b, tmp72
	movslq	%ebx, %rdx	# i, tmp73
	salq	$4, %rdx	#, tmp74
	addq	%rdx, %rax	# tmp74, tmp75
	movsd	(%rax), %xmm0	# b_5(D)->c[i_1].real, D.2181
	mulsd	-32(%rbp), %xmm0	# s, D.2181
	addsd	%xmm1, %xmm0	# D.2181, D.2181
	movq	-40(%rbp), %rax	# c, tmp76
	movslq	%ebx, %rdx	# i, tmp77
	salq	$4, %rdx	#, tmp78
	addq	%rdx, %rax	# tmp78, tmp79
	movsd	%xmm0, (%rax)	# D.2181, c_10(D)->c[i_1].real
	.loc 1 20 0 discriminator 2
	movq	-16(%rbp), %rax	# a, tmp80
	movslq	%ebx, %rdx	# i, tmp81
	salq	$4, %rdx	#, tmp82
	addq	%rdx, %rax	# tmp82, tmp83
	addq	$8, %rax	#, tmp84
	movsd	(%rax), %xmm1	# a_3(D)->c[i_1].imag, D.2181
	movq	-24(%rbp), %rax	# b, tmp85
	movslq	%ebx, %rdx	# i, tmp86
	salq	$4, %rdx	#, tmp87
	addq	%rdx, %rax	# tmp87, tmp88
	addq	$8, %rax	#, tmp89
	movsd	(%rax), %xmm0	# b_5(D)->c[i_1].imag, D.2181
	mulsd	-32(%rbp), %xmm0	# s, D.2181
	addsd	%xmm1, %xmm0	# D.2181, D.2181
	movq	-40(%rbp), %rax	# c, tmp90
	movslq	%ebx, %rdx	# i, tmp91
	salq	$4, %rdx	#, tmp92
	addq	%rdx, %rax	# tmp92, tmp93
	addq	$8, %rax	#, tmp94
	movsd	%xmm0, (%rax)	# D.2181, c_10(D)->c[i_1].imag
	.loc 1 18 0 discriminator 2
	addl	$1, %ebx	#, i
.L2:
	.loc 1 18 0 is_stmt 0 discriminator 1
	cmpl	$2, %ebx	#, i
	jle	.L3	#,
	.loc 1 37 0 is_stmt 1
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	scalar_mult_add_su3_vector, .-scalar_mult_add_su3_vector
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x106
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF8
	.byte	0x1
	.long	.LASF9
	.long	.LASF10
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0x4e
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x4a
	.long	0x4e
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0x4b
	.long	0x4e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x4c
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x30
	.byte	0x3
	.byte	0xf
	.long	0x81
	.uleb128 0x6
	.string	"c"
	.byte	0x3
	.byte	0xf
	.long	0x81
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0x91
	.uleb128 0x8
	.long	0x67
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0xf
	.long	0x6e
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0xd
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x103
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0xd
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0xd
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"s"
	.byte	0x1
	.byte	0xd
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"c"
	.byte	0x1
	.byte	0xe
	.long	0x103
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x9c
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x91
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF5:
	.string	"complex"
.LASF9:
	.string	"s_m_a_vec.c"
.LASF6:
	.string	"su3_vector"
.LASF11:
	.string	"scalar_mult_add_su3_vector"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
