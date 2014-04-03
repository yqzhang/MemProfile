	.file	"omuln.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX omuln.c -mtune=generic -march=x86-64
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
	.globl	emul
	.type	emul, @function
emul:
.LFB5:
	.file 1 "omuln.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# a, a
	movl	%esi, -24(%rbp)	# L, L
	movl	%edx, -28(%rbp)	# width, width
	movq	%rcx, -40(%rbp)	# reg, reg
	.loc 1 33 0
	movl	-28(%rbp), %eax	# width, tmp67
	subl	$1, %eax	#, tmp66
	movl	%eax, -4(%rbp)	# tmp66, i
	jmp	.L2	#
.L4:
	.loc 1 33 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp68
	movl	-20(%rbp), %edx	# a, tmp69
	movl	%eax, %ecx	# tmp68, tmp76
	sarl	%cl, %edx	# tmp76, D.2516
	movl	%edx, %eax	# D.2516, D.2516
	andl	$1, %eax	#, D.2516
	testl	%eax, %eax	# D.2516
	je	.L3	#,
	.loc 1 34 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp70
	movl	-28(%rbp), %edx	# width, tmp71
	leal	(%rdx,%rax), %esi	#, D.2516
	movl	-28(%rbp), %eax	# width, tmp72
	addl	$1, %eax	#, D.2516
	leal	(%rax,%rax), %edi	#, D.2516
	movq	-40(%rbp), %rdx	# reg, tmp73
	movl	-24(%rbp), %eax	# L, tmp74
	movq	%rdx, %rcx	# tmp73,
	movl	%esi, %edx	# D.2516,
	movl	%eax, %esi	# tmp74,
	call	quantum_toffoli	#
.L3:
	.loc 1 33 0 discriminator 1
	subl	$1, -4(%rbp)	#, i
.L2:
	cmpl	$0, -4(%rbp)	#, i
	jns	.L4	#,
	.loc 1 36 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	emul, .-emul
	.globl	muln
	.type	muln, @function
muln:
.LFB6:
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# N, N
	movl	%esi, -24(%rbp)	# a, a
	movl	%edx, -28(%rbp)	# ctl, ctl
	movl	%ecx, -32(%rbp)	# width, width
	movq	%r8, -40(%rbp)	# reg, reg
	.loc 1 40 0
	movl	-32(%rbp), %eax	# width, tmp73
	addl	%eax, %eax	# D.2517
	addl	$1, %eax	#, tmp74
	movl	%eax, -4(%rbp)	# tmp74, L
	.loc 1 42 0
	movl	-32(%rbp), %eax	# width, tmp75
	addl	$1, %eax	#, D.2517
	leal	(%rax,%rax), %esi	#, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp76
	movl	-4(%rbp), %edx	# L, tmp77
	movl	-28(%rbp), %eax	# ctl, tmp78
	movl	%eax, %edi	# tmp78,
	call	quantum_toffoli	#
	.loc 1 44 0
	movl	-24(%rbp), %eax	# a, tmp79
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, %eax	# tmp80, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp82
	movl	-32(%rbp), %edx	# width, tmp83
	movl	-4(%rbp), %esi	# L, tmp84
	movl	%eax, %edi	# D.2517,
	call	emul	#
	.loc 1 46 0
	movl	-32(%rbp), %eax	# width, tmp85
	addl	$1, %eax	#, D.2517
	leal	(%rax,%rax), %esi	#, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp86
	movl	-4(%rbp), %edx	# L, tmp87
	movl	-28(%rbp), %eax	# ctl, tmp88
	movl	%eax, %edi	# tmp88,
	call	quantum_toffoli	#
	.loc 1 48 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 49 0 discriminator 2
	movl	-32(%rbp), %eax	# width, tmp89
	addl	$1, %eax	#, D.2517
	leal	(%rax,%rax), %edx	#, D.2517
	movl	-8(%rbp), %eax	# i, tmp90
	leal	(%rdx,%rax), %esi	#, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp91
	movl	-4(%rbp), %edx	# L, tmp92
	movl	-28(%rbp), %eax	# ctl, tmp93
	movl	%eax, %edi	# tmp93,
	call	quantum_toffoli	#
	.loc 1 50 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp94
	movl	-24(%rbp), %edx	# a, tmp95
	movl	%eax, %ecx	# tmp94, tmp108
	sall	%cl, %edx	# tmp108, D.2517
	movl	%edx, %eax	# D.2517, D.2517
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, %esi	# tmp96, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp98
	movl	-32(%rbp), %edx	# width, tmp99
	movl	-20(%rbp), %eax	# N, tmp100
	movl	%eax, %edi	# tmp100,
	call	add_mod_n	#
	.loc 1 51 0 discriminator 2
	movl	-32(%rbp), %eax	# width, tmp101
	addl	$1, %eax	#, D.2517
	leal	(%rax,%rax), %edx	#, D.2517
	movl	-8(%rbp), %eax	# i, tmp102
	leal	(%rdx,%rax), %esi	#, D.2517
	movq	-40(%rbp), %rcx	# reg, tmp103
	movl	-4(%rbp), %edx	# L, tmp104
	movl	-28(%rbp), %eax	# ctl, tmp105
	movl	%eax, %edi	# tmp105,
	call	quantum_toffoli	#
	.loc 1 48 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L6:
	.loc 1 48 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp106
	cmpl	-32(%rbp), %eax	# width, tmp106
	jl	.L7	#,
	.loc 1 55 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	muln, .-muln
	.globl	muln_inv
	.type	muln_inv, @function
muln_inv:
.LFB7:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# N, N
	movl	%esi, -24(%rbp)	# a, a
	movl	%edx, -28(%rbp)	# ctl, ctl
	movl	%ecx, -32(%rbp)	# width, width
	movq	%r8, -40(%rbp)	# reg, reg
	.loc 1 59 0
	movl	-32(%rbp), %eax	# width, tmp74
	addl	%eax, %eax	# D.2518
	addl	$1, %eax	#, tmp75
	movl	%eax, -4(%rbp)	# tmp75, L
	.loc 1 61 0
	movl	-24(%rbp), %edx	# a, tmp76
	movl	-20(%rbp), %eax	# N, tmp77
	movl	%edx, %esi	# tmp76,
	movl	%eax, %edi	# tmp77,
	call	quantum_inverse_mod	#
	movl	%eax, -24(%rbp)	# tmp78, a
	.loc 1 63 0
	movl	-32(%rbp), %eax	# width, tmp82
	subl	$1, %eax	#, tmp81
	movl	%eax, -8(%rbp)	# tmp81, i
	jmp	.L9	#
.L10:
	.loc 1 64 0 discriminator 2
	movl	-32(%rbp), %eax	# width, tmp83
	addl	$1, %eax	#, D.2518
	leal	(%rax,%rax), %edx	#, D.2518
	movl	-8(%rbp), %eax	# i, tmp84
	leal	(%rdx,%rax), %esi	#, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp85
	movl	-4(%rbp), %edx	# L, tmp86
	movl	-28(%rbp), %eax	# ctl, tmp87
	movl	%eax, %edi	# tmp87,
	call	quantum_toffoli	#
	.loc 1 65 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp88
	movl	-24(%rbp), %edx	# a, tmp89
	movl	%eax, %ecx	# tmp88, tmp116
	sall	%cl, %edx	# tmp116, D.2518
	movl	%edx, %eax	# D.2518, D.2518
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, %eax	# tmp90, D.2518
	movl	-20(%rbp), %edx	# N, tmp92
	movl	%edx, %esi	# tmp92, D.2518
	subl	%eax, %esi	# D.2518, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp93
	movl	-32(%rbp), %edx	# width, tmp94
	movl	-20(%rbp), %eax	# N, tmp95
	movl	%eax, %edi	# tmp95,
	call	add_mod_n	#
	.loc 1 66 0 discriminator 2
	movl	-32(%rbp), %eax	# width, tmp96
	addl	$1, %eax	#, D.2518
	leal	(%rax,%rax), %edx	#, D.2518
	movl	-8(%rbp), %eax	# i, tmp97
	leal	(%rdx,%rax), %esi	#, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp98
	movl	-4(%rbp), %edx	# L, tmp99
	movl	-28(%rbp), %eax	# ctl, tmp100
	movl	%eax, %edi	# tmp100,
	call	quantum_toffoli	#
	.loc 1 63 0 discriminator 2
	subl	$1, -8(%rbp)	#, i
.L9:
	.loc 1 63 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jg	.L10	#,
	.loc 1 69 0 is_stmt 1
	movl	-32(%rbp), %eax	# width, tmp101
	addl	$1, %eax	#, D.2518
	leal	(%rax,%rax), %esi	#, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp102
	movl	-4(%rbp), %edx	# L, tmp103
	movl	-28(%rbp), %eax	# ctl, tmp104
	movl	%eax, %edi	# tmp104,
	call	quantum_toffoli	#
	.loc 1 70 0
	movl	-24(%rbp), %eax	# a, tmp105
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, %eax	# tmp106, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp108
	movl	-32(%rbp), %edx	# width, tmp109
	movl	-4(%rbp), %esi	# L, tmp110
	movl	%eax, %edi	# D.2518,
	call	emul	#
	.loc 1 71 0
	movl	-32(%rbp), %eax	# width, tmp111
	addl	$1, %eax	#, D.2518
	leal	(%rax,%rax), %esi	#, D.2518
	movq	-40(%rbp), %rcx	# reg, tmp112
	movl	-4(%rbp), %edx	# L, tmp113
	movl	-28(%rbp), %eax	# ctl, tmp114
	movl	%eax, %edi	# tmp114,
	call	quantum_toffoli	#
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	muln_inv, .-muln_inv
	.globl	mul_mod_n
	.type	mul_mod_n, @function
mul_mod_n:
.LFB8:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# N, N
	movl	%esi, -8(%rbp)	# a, a
	movl	%edx, -12(%rbp)	# ctl, ctl
	movl	%ecx, -16(%rbp)	# width, width
	movq	%r8, -24(%rbp)	# reg, reg
	.loc 1 77 0
	movq	-24(%rbp), %rdi	# reg, tmp59
	movl	-16(%rbp), %ecx	# width, tmp60
	movl	-12(%rbp), %edx	# ctl, tmp61
	movl	-8(%rbp), %esi	# a, tmp62
	movl	-4(%rbp), %eax	# N, tmp63
	movq	%rdi, %r8	# tmp59,
	movl	%eax, %edi	# tmp63,
	call	muln	#
	.loc 1 79 0
	movq	-24(%rbp), %rdx	# reg, tmp64
	movl	-16(%rbp), %ecx	# width, tmp65
	movl	-12(%rbp), %eax	# ctl, tmp66
	movl	%ecx, %esi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	quantum_swaptheleads_omuln_controlled	#
	.loc 1 81 0
	movq	-24(%rbp), %rdi	# reg, tmp67
	movl	-16(%rbp), %ecx	# width, tmp68
	movl	-12(%rbp), %edx	# ctl, tmp69
	movl	-8(%rbp), %esi	# a, tmp70
	movl	-4(%rbp), %eax	# N, tmp71
	movq	%rdi, %r8	# tmp67,
	movl	%eax, %edi	# tmp71,
	call	muln_inv	#
	.loc 1 83 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mul_mod_n, .-mul_mod_n
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF26
	.byte	0x1
	.long	.LASF27
	.long	.LASF28
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x3
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF14
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0xad
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x25
	.long	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x26
	.long	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x29
	.long	0x88
	.uleb128 0x4
	.long	.LASF15
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x101
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.byte	0x2f
	.long	0x2d
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0x30
	.long	0x2d
	.byte	0x4
	.uleb128 0x5
	.long	.LASF18
	.byte	0x2
	.byte	0x31
	.long	0x2d
	.byte	0x8
	.uleb128 0x5
	.long	.LASF19
	.byte	0x2
	.byte	0x32
	.long	0x101
	.byte	0x10
	.uleb128 0x5
	.long	.LASF20
	.byte	0x2
	.byte	0x33
	.long	0x107
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xad
	.uleb128 0x7
	.byte	0x8
	.long	0x2d
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x36
	.long	0xb8
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x1e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x176
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"L"
	.byte	0x1
	.byte	0x1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x1e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x1e
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x20
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x10d
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0x26
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4
	.uleb128 0x9
	.string	"N"
	.byte	0x1
	.byte	0x26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ctl"
	.byte	0x1
	.byte	0x26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x26
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"L"
	.byte	0x1
	.byte	0x28
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x39
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x26c
	.uleb128 0x9
	.string	"N"
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"ctl"
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x39
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x39
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"L"
	.byte	0x1
	.byte	0x3b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x4b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.string	"N"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"ctl"
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x4b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x4b
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.string	"omuln.c"
.LASF13:
	.string	"state"
.LASF12:
	.string	"amplitude"
.LASF15:
	.string	"quantum_reg_struct"
.LASF21:
	.string	"quantum_reg_node"
.LASF0:
	.string	"complex float"
.LASF29:
	.string	"mul_mod_n"
.LASF23:
	.string	"emul"
.LASF28:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF17:
	.string	"size"
.LASF4:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"hashw"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"quantum_reg_node_struct"
.LASF22:
	.string	"quantum_reg"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"hash"
.LASF25:
	.string	"muln_inv"
.LASF8:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF16:
	.string	"width"
.LASF26:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"short int"
.LASF19:
	.string	"node"
.LASF7:
	.string	"long int"
.LASF24:
	.string	"muln"
.LASF5:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
