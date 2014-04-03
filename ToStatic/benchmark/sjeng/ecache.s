	.file	"ecache.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ecache.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	ECache,8,8
	.comm	ECacheProbes,4,4
	.comm	ECacheHits,4,4
	.globl	storeECache
	.type	storeECache, @function
storeECache:
.LFB2:
	.file 1 "ecache.c"
	.loc 1 28 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# score, score
	.loc 1 31 0
	movl	hash(%rip), %eax	# hash, hash.0
	movl	ECacheSize(%rip), %edx	# ECacheSize, ECacheSize.1
	movl	%edx, %ecx	# ECacheSize.1, ECacheSize.2
	movl	$0, %edx	#, tmp77
	divl	%ecx	# ECacheSize.2
	movl	%edx, %eax	# tmp77, D.3968
	movl	%eax, -4(%rbp)	# D.3968, ecindex
	.loc 1 33 0
	movq	ECache(%rip), %rcx	# ECache, ECache.3
	movl	-4(%rbp), %eax	# ecindex, tmp79
	movslq	%eax, %rdx	# tmp79, D.3969
	movq	%rdx, %rax	# D.3969, tmp80
	addq	%rax, %rax	# tmp80
	addq	%rdx, %rax	# D.3969, tmp80
	salq	$2, %rax	#, tmp81
	leaq	(%rcx,%rax), %rdx	#, D.3970
	movl	hash(%rip), %eax	# hash, hash.4
	movl	%eax, (%rdx)	# hash.4, _9->stored_hash
	.loc 1 34 0
	movq	ECache(%rip), %rcx	# ECache, ECache.5
	movl	-4(%rbp), %eax	# ecindex, tmp82
	movslq	%eax, %rdx	# tmp82, D.3969
	movq	%rdx, %rax	# D.3969, tmp83
	addq	%rax, %rax	# tmp83
	addq	%rdx, %rax	# D.3969, tmp83
	salq	$2, %rax	#, tmp84
	leaq	(%rcx,%rax), %rdx	#, D.3970
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.6
	movl	%eax, 4(%rdx)	# hold_hash.6, _14->hold_hash
	.loc 1 35 0
	movq	ECache(%rip), %rcx	# ECache, ECache.7
	movl	-4(%rbp), %eax	# ecindex, tmp85
	movslq	%eax, %rdx	# tmp85, D.3969
	movq	%rdx, %rax	# D.3969, tmp86
	addq	%rax, %rax	# tmp86
	addq	%rdx, %rax	# D.3969, tmp86
	salq	$2, %rax	#, tmp87
	leaq	(%rcx,%rax), %rdx	#, D.3970
	movl	-20(%rbp), %eax	# score, tmp88
	movl	%eax, 8(%rdx)	# tmp88, _19->score
	.loc 1 36 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	storeECache, .-storeECache
	.globl	checkECache
	.type	checkECache, @function
checkECache:
.LFB3:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# score, score
	movq	%rsi, -32(%rbp)	# in_cache, in_cache
	.loc 1 42 0
	movl	ECacheProbes(%rip), %eax	# ECacheProbes, ECacheProbes.8
	addl	$1, %eax	#, ECacheProbes.9
	movl	%eax, ECacheProbes(%rip)	# ECacheProbes.9, ECacheProbes
	.loc 1 44 0
	movl	hash(%rip), %eax	# hash, hash.10
	movl	ECacheSize(%rip), %edx	# ECacheSize, ECacheSize.11
	movl	%edx, %ecx	# ECacheSize.11, ECacheSize.12
	movl	$0, %edx	#, tmp84
	divl	%ecx	# ECacheSize.12
	movl	%edx, %eax	# tmp84, D.3971
	movl	%eax, -4(%rbp)	# D.3971, ecindex
	.loc 1 46 0
	movq	ECache(%rip), %rcx	# ECache, ECache.13
	movl	-4(%rbp), %eax	# ecindex, tmp86
	movslq	%eax, %rdx	# tmp86, D.3972
	movq	%rdx, %rax	# D.3972, tmp87
	addq	%rax, %rax	# tmp87
	addq	%rdx, %rax	# D.3972, tmp87
	salq	$2, %rax	#, tmp88
	addq	%rcx, %rax	# ECache.13, D.3973
	movl	(%rax), %edx	# _11->stored_hash, D.3971
	movl	hash(%rip), %eax	# hash, hash.14
	cmpl	%eax, %edx	# hash.14, D.3971
	jne	.L2	#,
	.loc 1 47 0 discriminator 1
	movq	ECache(%rip), %rcx	# ECache, ECache.15
	movl	-4(%rbp), %eax	# ecindex, tmp89
	movslq	%eax, %rdx	# tmp89, D.3972
	movq	%rdx, %rax	# D.3972, tmp90
	addq	%rax, %rax	# tmp90
	addq	%rdx, %rax	# D.3972, tmp90
	salq	$2, %rax	#, tmp91
	addq	%rcx, %rax	# ECache.15, D.3973
	movl	4(%rax), %edx	# _17->hold_hash, D.3971
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.16
	.loc 1 46 0 discriminator 1
	cmpl	%eax, %edx	# hold_hash.16, D.3971
	jne	.L2	#,
	.loc 1 50 0
	movl	ECacheHits(%rip), %eax	# ECacheHits, ECacheHits.17
	addl	$1, %eax	#, ECacheHits.18
	movl	%eax, ECacheHits(%rip)	# ECacheHits.18, ECacheHits
	.loc 1 52 0
	movq	-32(%rbp), %rax	# in_cache, tmp92
	movl	$1, (%rax)	#, *in_cache_22(D)
	.loc 1 53 0
	movq	ECache(%rip), %rcx	# ECache, ECache.19
	movl	-4(%rbp), %eax	# ecindex, tmp93
	movslq	%eax, %rdx	# tmp93, D.3972
	movq	%rdx, %rax	# D.3972, tmp94
	addq	%rax, %rax	# tmp94
	addq	%rdx, %rax	# D.3972, tmp94
	salq	$2, %rax	#, tmp95
	addq	%rcx, %rax	# ECache.19, D.3973
	movl	8(%rax), %edx	# _26->score, D.3974
	movq	-24(%rbp), %rax	# score, tmp96
	movl	%edx, (%rax)	# D.3974, *score_28(D)
.L2:
	.loc 1 55 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	checkECache, .-checkECache
	.globl	reset_ecache
	.type	reset_ecache, @function
reset_ecache:
.LFB4:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 59 0
	movl	ECacheSize(%rip), %eax	# ECacheSize, ECacheSize.20
	movslq	%eax, %rdx	# ECacheSize.20, D.3975
	movq	%rdx, %rax	# D.3975, tmp63
	addq	%rax, %rax	# tmp63
	addq	%rdx, %rax	# D.3975, tmp63
	salq	$2, %rax	#, tmp64
	movq	%rax, %rdx	# tmp63, D.3975
	movq	ECache(%rip), %rax	# ECache, ECache.21
	movl	$0, %esi	#,
	movq	%rax, %rdi	# ECache.21,
	call	memset	#
	.loc 1 60 0
	nop
	.loc 1 61 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	reset_ecache, .-reset_ecache
	.section	.rodata
	.align 8
.LC0:
	.string	"Out of memory allocating ECache."
	.text
	.globl	alloc_ecache
	.type	alloc_ecache, @function
alloc_ecache:
.LFB5:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 65 0
	movl	ECacheSize(%rip), %eax	# ECacheSize, ECacheSize.22
	movslq	%eax, %rdx	# ECacheSize.22, D.3976
	movq	%rdx, %rax	# D.3976, tmp64
	addq	%rax, %rax	# tmp64
	addq	%rdx, %rax	# D.3976, tmp64
	salq	$2, %rax	#, tmp65
	movq	%rax, %rdi	# D.3976,
	call	malloc	#
	movq	%rax, ECache(%rip)	# ECache.23, ECache
	.loc 1 67 0
	movq	ECache(%rip), %rax	# ECache, ECache.24
	testq	%rax, %rax	# ECache.24
	jne	.L7	#,
	.loc 1 69 0
	movl	$.LC0, %edi	#,
	call	puts	#
	.loc 1 70 0
	movl	$1, %edi	#,
	call	exit	#
.L7:
	.loc 1 76 0
	nop
	.loc 1 77 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	alloc_ecache, .-alloc_ecache
	.globl	free_ecache
	.type	free_ecache, @function
free_ecache:
.LFB6:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 81 0
	movq	ECache(%rip), %rax	# ECache, ECache.25
	movq	%rax, %rdi	# ECache.25,
	call	free	#
	.loc 1 82 0
	nop
	.loc 1 83 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	free_ecache, .-free_ecache
.Letext0:
	.file 2 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ef
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
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x5
	.byte	0xc
	.byte	0x1
	.byte	0xe
	.long	0xb4
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x10
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x11
	.long	0x3b
	.byte	0x4
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x12
	.long	0x57
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.byte	0x13
	.long	0x87
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x1b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x1b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x1d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x26
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x141
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x26
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x28
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x39
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x3f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x4f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF21
	.byte	0x2
	.byte	0x38
	.long	0x3b
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.byte	0x18
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	ECacheProbes
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.byte	0x19
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	ECacheHits
	.uleb128 0xc
	.long	.LASF12
	.byte	0x2
	.byte	0x41
	.long	0x3b
	.uleb128 0xc
	.long	.LASF24
	.byte	0x2
	.byte	0x99
	.long	0x57
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.byte	0x16
	.long	0x1ec
	.uleb128 0x9
	.byte	0x3
	.quad	ECache
	.uleb128 0x4
	.byte	0x8
	.long	0xb4
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
.LASF20:
	.string	"free_ecache"
.LASF16:
	.string	"in_cache"
.LASF22:
	.string	"ECacheProbes"
.LASF27:
	.string	"ecache.c"
.LASF19:
	.string	"alloc_ecache"
.LASF13:
	.string	"score"
.LASF4:
	.string	"signed char"
.LASF17:
	.string	"ecindex"
.LASF0:
	.string	"unsigned char"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF29:
	.string	"ECacheType"
.LASF21:
	.string	"hash"
.LASF23:
	.string	"ECacheHits"
.LASF12:
	.string	"hold_hash"
.LASF2:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF11:
	.string	"stored_hash"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF28:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF8:
	.string	"char"
.LASF26:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"reset_ecache"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"storeECache"
.LASF24:
	.string	"ECacheSize"
.LASF15:
	.string	"checkECache"
.LASF25:
	.string	"ECache"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
