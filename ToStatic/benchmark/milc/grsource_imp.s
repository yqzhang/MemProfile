	.file	"grsource_imp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# grsource_imp.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	grsource_imp
	.type	grsource_imp, @function
grsource_imp:
.LFB2:
	.file 1 "grsource_imp.c"
	.loc 1 20 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -36(%rbp)	# dest, dest
	movsd	%xmm0, -48(%rbp)	# mass, mass
	movl	%esi, -40(%rbp)	# parity, parity
	.loc 1 23 0
	movl	$0, %r13d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L2	#
.L5:
	.loc 1 24 0
	movl	$0, %r12d	#, j
	jmp	.L3	#
.L4:
	.loc 1 26 0 discriminator 2
	leaq	16(%rbx), %rax	#, D.4999
	movq	%rax, %rdi	# D.4999,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.5000
	movslq	%r12d, %rdx	# j, tmp70
	addq	$80, %rdx	#, tmp71
	salq	$4, %rdx	#, tmp72
	addq	%rbx, %rdx	# s, tmp73
	movq	%rax, (%rdx)	# D.5000, s_3->g_rand.c[j_2].real
	.loc 1 27 0 discriminator 2
	leaq	16(%rbx), %rax	#, D.4999
	movq	%rax, %rdi	# D.4999,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.5000
	movslq	%r12d, %rdx	# j, tmp74
	addq	$80, %rdx	#, tmp75
	salq	$4, %rdx	#, tmp76
	addq	%rbx, %rdx	# s, tmp77
	addq	$8, %rdx	#, tmp78
	movq	%rax, (%rdx)	# D.5000, s_3->g_rand.c[j_2].imag
	.loc 1 24 0 discriminator 2
	addl	$1, %r12d	#, j
.L3:
	.loc 1 24 0 is_stmt 0 discriminator 1
	cmpl	$2, %r12d	#, j
	jle	.L4	#,
	.loc 1 23 0 is_stmt 1
	addl	$1, %r13d	#, i
	addq	$2048, %rbx	#, s
.L2:
	.loc 1 23 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.0
	cmpl	%eax, %r13d	# sites_on_node.0, i
	jl	.L5	#,
	.loc 1 35 0 is_stmt 1
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.1
	testl	%eax, %eax	# valid_longlinks.1
	jne	.L6	#,
	.loc 1 35 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L6:
	.loc 1 36 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.2
	testl	%eax, %eax	# valid_fatlinks.2
	jne	.L7	#,
	.loc 1 36 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L7:
	.loc 1 38 0 is_stmt 1
	movl	-40(%rbp), %edx	# parity, tmp79
	movl	-36(%rbp), %eax	# dest, tmp80
	movl	%eax, %esi	# tmp80,
	movl	$1280, %edi	#,
	call	dslash_fn	#
	.loc 1 39 0
	movl	-40(%rbp), %edx	# parity, tmp81
	movl	-36(%rbp), %ecx	# dest, tmp82
	movl	-36(%rbp), %eax	# dest, tmp83
	movl	%ecx, %esi	# tmp82,
	movsd	.LC0(%rip), %xmm0	#,
	movl	%eax, %edi	# tmp83,
	call	scalar_mult_latvec	#
	.loc 1 40 0
	movsd	-48(%rbp), %xmm0	# mass, tmp84
	addsd	%xmm0, %xmm0	# tmp84, D.5000
	movl	-40(%rbp), %ecx	# parity, tmp85
	movl	-36(%rbp), %edx	# dest, tmp86
	movl	-36(%rbp), %eax	# dest, tmp87
	movl	$1280, %esi	#,
	movl	%eax, %edi	# tmp87,
	call	scalar_mult_add_latvec	#
	.loc 1 42 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	grsource_imp, .-grsource_imp
	.section	.rodata
.LC1:
	.string	"Site %d %d %d %d\n"
.LC2:
	.string	"%d %d\t%e\t%e\t%e\n"
	.text
	.globl	checkmul_imp
	.type	checkmul_imp, @function
checkmul_imp:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -36(%rbp)	# src, src
	movsd	%xmm0, -48(%rbp)	# mass, mass
	.loc 1 51 0
	movl	-36(%rbp), %eax	# src, tmp82
	movl	$3, %edx	#,
	movl	$1232, %esi	#,
	movl	%eax, %edi	# tmp82,
	call	dslash_fn	#
	.loc 1 52 0
	movsd	-48(%rbp), %xmm0	# mass, tmp83
	addsd	%xmm0, %xmm0	# tmp83, D.5002
	movl	-36(%rbp), %eax	# src, tmp84
	movl	$3, %ecx	#,
	movl	$1232, %edx	#,
	movl	%eax, %esi	# tmp84,
	movl	$1232, %edi	#,
	call	scalar_mult_add_latvec	#
	.loc 1 54 0
	movl	$0, %r13d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L9	#
.L12:
	.loc 1 55 0
	movzwl	6(%rbx), %eax	# s_3->t, D.5003
	movswl	%ax, %esi	# D.5003, D.5004
	movzwl	4(%rbx), %eax	# s_3->z, D.5003
	movswl	%ax, %ecx	# D.5003, D.5004
	movzwl	2(%rbx), %eax	# s_3->y, D.5003
	movswl	%ax, %edx	# D.5003, D.5004
	movzwl	(%rbx), %eax	# s_3->x, D.5003
	cwtl
	movl	%esi, %r8d	# D.5004,
	movl	%eax, %esi	# D.5004,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 56 0
	movl	$0, %r12d	#, j
	jmp	.L10	#
.L11:
	.loc 1 58 0 discriminator 2
	movslq	%r12d, %rax	# j, tmp85
	addq	$80, %rax	#, tmp86
	salq	$4, %rax	#, tmp87
	addq	%rbx, %rax	# s, tmp88
	movsd	(%rax), %xmm0	# s_3->g_rand.c[j_2].real, D.5002
	movslq	%r12d, %rax	# j, tmp89
	addq	$77, %rax	#, tmp90
	salq	$4, %rax	#, tmp91
	addq	%rbx, %rax	# s, tmp92
	movsd	(%rax), %xmm1	# s_3->ttt.c[j_2].real, D.5002
	.loc 1 57 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.5002, D.5002
	movslq	%r12d, %rax	# j, tmp93
	addq	$77, %rax	#, tmp94
	salq	$4, %rax	#, tmp95
	addq	%rbx, %rax	# s, tmp96
	movq	(%rax), %rdx	# s_3->ttt.c[j_2].real, D.5002
	movslq	%r12d, %rax	# j, tmp97
	addq	$80, %rax	#, tmp98
	salq	$4, %rax	#, tmp99
	addq	%rbx, %rax	# s, tmp100
	movq	(%rax), %rax	# s_3->g_rand.c[j_2].real, D.5002
	movapd	%xmm0, %xmm2	# D.5002,
	movq	%rdx, -56(%rbp)	# D.5002, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movq	%rax, -56(%rbp)	# D.5002, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	%r12d, %edx	# j,
	movl	%r13d, %esi	# i,
	movl	$.LC2, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 60 0 discriminator 2
	movslq	%r12d, %rax	# j, tmp101
	addq	$80, %rax	#, tmp102
	salq	$4, %rax	#, tmp103
	addq	%rbx, %rax	# s, tmp104
	addq	$8, %rax	#, tmp105
	movsd	(%rax), %xmm0	# s_3->g_rand.c[j_2].imag, D.5002
	movslq	%r12d, %rax	# j, tmp106
	addq	$77, %rax	#, tmp107
	salq	$4, %rax	#, tmp108
	addq	%rbx, %rax	# s, tmp109
	addq	$8, %rax	#, tmp110
	movsd	(%rax), %xmm1	# s_3->ttt.c[j_2].imag, D.5002
	.loc 1 59 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.5002, D.5002
	movslq	%r12d, %rax	# j, tmp111
	addq	$77, %rax	#, tmp112
	salq	$4, %rax	#, tmp113
	addq	%rbx, %rax	# s, tmp114
	addq	$8, %rax	#, tmp115
	movq	(%rax), %rdx	# s_3->ttt.c[j_2].imag, D.5002
	movslq	%r12d, %rax	# j, tmp116
	addq	$80, %rax	#, tmp117
	salq	$4, %rax	#, tmp118
	addq	%rbx, %rax	# s, tmp119
	addq	$8, %rax	#, tmp120
	movq	(%rax), %rax	# s_3->g_rand.c[j_2].imag, D.5002
	movapd	%xmm0, %xmm2	# D.5002,
	movq	%rdx, -56(%rbp)	# D.5002, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	movq	%rax, -56(%rbp)	# D.5002, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	movl	%r12d, %edx	# j,
	movl	%r13d, %esi	# i,
	movl	$.LC2, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 56 0 discriminator 2
	addl	$1, %r12d	#, j
.L10:
	.loc 1 56 0 is_stmt 0 discriminator 1
	cmpl	$2, %r12d	#, j
	jle	.L11	#,
	.loc 1 62 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 54 0
	addl	$1, %r13d	#, i
	addq	$2048, %rbx	#, s
.L9:
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.3
	cmpl	%eax, %r13d	# sites_on_node.3, i
	jl	.L12	#,
	.loc 1 65 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	checkmul_imp, .-checkmul_imp
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	-1074790400
	.text
.Letext0:
	.file 2 "random.h"
	.file 3 "./macros.h"
	.file 4 "./complex.h"
	.file 5 "./su3.h"
	.file 6 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x476
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF52
	.byte	0x1
	.long	.LASF53
	.long	.LASF54
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
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
	.uleb128 0x4
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0x115
	.uleb128 0x5
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x5
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x5
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x5
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x5
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x5
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x5
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0xa
	.long	0x88
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0xb
	.long	0x8f
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.long	0x57
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.byte	0x49
	.long	0x14c
	.uleb128 0x6
	.long	.LASF19
	.byte	0x4
	.byte	0x4a
	.long	0x88
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x4
	.byte	0x4b
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0x4c
	.long	0x12b
	.uleb128 0x4
	.byte	0x90
	.byte	0x5
	.byte	0xe
	.long	0x16a
	.uleb128 0x5
	.string	"e"
	.byte	0x5
	.byte	0xe
	.long	0x16a
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x14c
	.long	0x180
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x5
	.byte	0xe
	.long	0x157
	.uleb128 0x4
	.byte	0x30
	.byte	0x5
	.byte	0xf
	.long	0x19e
	.uleb128 0x5
	.string	"c"
	.byte	0x5
	.byte	0xf
	.long	0x19e
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x14c
	.long	0x1ae
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x5
	.byte	0xf
	.long	0x18b
	.uleb128 0x4
	.byte	0x50
	.byte	0x5
	.byte	0x10
	.long	0x216
	.uleb128 0x5
	.string	"m01"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0
	.uleb128 0x5
	.string	"m02"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0x10
	.uleb128 0x5
	.string	"m12"
	.byte	0x5
	.byte	0x11
	.long	0x14c
	.byte	0x20
	.uleb128 0x6
	.long	.LASF24
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x30
	.uleb128 0x6
	.long	.LASF25
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x38
	.uleb128 0x6
	.long	.LASF26
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x40
	.uleb128 0x6
	.long	.LASF27
	.byte	0x5
	.byte	0x11
	.long	0x88
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x11
	.long	0x1b9
	.uleb128 0x8
	.long	0x1ae
	.long	0x231
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x348
	.uleb128 0x5
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x5
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x5
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0x29
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x6
	.long	.LASF33
	.byte	0x6
	.byte	0x32
	.long	0x348
	.byte	0x70
	.uleb128 0xb
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x358
	.value	0x2b0
	.uleb128 0xc
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x368
	.value	0x3f0
	.uleb128 0xb
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1ae
	.value	0x410
	.uleb128 0xc
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1ae
	.value	0x440
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1ae
	.value	0x470
	.uleb128 0xb
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1ae
	.value	0x4a0
	.uleb128 0xb
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1ae
	.value	0x4d0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1ae
	.value	0x500
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x221
	.value	0x530
	.uleb128 0xc
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x221
	.value	0x5f0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1ae
	.value	0x6b0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x180
	.value	0x6e0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x180
	.value	0x770
	.byte	0
	.uleb128 0x8
	.long	0x180
	.long	0x358
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x216
	.long	0x368
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x88
	.long	0x378
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x231
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.byte	0x14
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ec
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.byte	0x14
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x14
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x16
	.long	0x3ec
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x10
	.byte	0x8
	.long	0x378
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.byte	0x30
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x44d
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0x30
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.byte	0x30
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x31
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.byte	0x31
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x32
	.long	0x3ec
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0x6
	.byte	0x87
	.long	0x57
	.uleb128 0x12
	.long	.LASF49
	.byte	0x6
	.byte	0x8e
	.long	0x57
	.uleb128 0x12
	.long	.LASF50
	.byte	0x6
	.byte	0x8f
	.long	0x57
	.uleb128 0x12
	.long	.LASF51
	.byte	0x6
	.byte	0x9a
	.long	0x3ec
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
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
.LASF37:
	.string	"g_rand"
.LASF18:
	.string	"field_offset"
.LASF13:
	.string	"multiplier"
.LASF52:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF34:
	.string	"phase"
.LASF21:
	.string	"complex"
.LASF50:
	.string	"valid_fatlinks"
.LASF43:
	.string	"site"
.LASF38:
	.string	"tempvec"
.LASF36:
	.string	"cg_p"
.LASF39:
	.string	"templongvec"
.LASF30:
	.string	"index"
.LASF46:
	.string	"grsource_imp"
.LASF33:
	.string	"link"
.LASF11:
	.string	"float"
.LASF31:
	.string	"site_prn"
.LASF22:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF19:
	.string	"real"
.LASF51:
	.string	"lattice"
.LASF47:
	.string	"checkmul_imp"
.LASF6:
	.string	"long int"
.LASF48:
	.string	"sites_on_node"
.LASF29:
	.string	"parity"
.LASF44:
	.string	"dest"
.LASF24:
	.string	"m00im"
.LASF17:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"space"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF16:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF20:
	.string	"imag"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"su3_vector"
.LASF42:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF40:
	.string	"templongv1"
.LASF32:
	.string	"space1"
.LASF14:
	.string	"addend"
.LASF54:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF53:
	.string	"grsource_imp.c"
.LASF0:
	.string	"long unsigned int"
.LASF25:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF35:
	.string	"resid"
.LASF45:
	.string	"mass"
.LASF15:
	.string	"ic_state"
.LASF49:
	.string	"valid_longlinks"
.LASF26:
	.string	"m22im"
.LASF28:
	.string	"anti_hermitmat"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
