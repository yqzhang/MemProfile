	.file	"rcfile.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 rcfile.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	rcfile,8,8
	.comm	line,256,32
	.comm	TTSize,4,4
	.comm	ECacheSize,4,4
	.comm	PBSize,4,4
	.comm	cfg_booklearn,4,4
	.comm	cfg_razordrop,4,4
	.comm	cfg_cutdrop,4,4
	.comm	cfg_ksafety,540,32
	.comm	cfg_tropism,140,32
	.comm	havercfile,4,4
	.comm	cfg_futprune,4,4
	.comm	cfg_devscale,4,4
	.comm	cfg_onerep,4,4
	.comm	cfg_recap,4,4
	.comm	cfg_smarteval,4,4
	.comm	cfg_attackeval,4,4
	.comm	cfg_scalefac,4,4
	.section	.rodata
.LC1:
	.string	"%u"
	.text
	.globl	read_rcfile
	.type	read_rcfile, @function
read_rcfile:
.LFB2:
	.file 1 "rcfile.c"
	.loc 1 36 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 39 0
	movl	$3000000, TTSize(%rip)	#, TTSize
	.loc 1 40 0
	movl	$1000000, ECacheSize(%rip)	#, ECacheSize
	.loc 1 41 0
	movl	$200000, PBSize(%rip)	#, PBSize
	.loc 1 43 0
	movl	$1, cfg_devscale(%rip)	#, cfg_devscale
	.loc 1 44 0
	movl	.LC0(%rip), %eax	#, tmp79
	movl	%eax, cfg_scalefac(%rip)	# tmp79, cfg_scalefac
	.loc 1 45 0
	movl	$1, cfg_razordrop(%rip)	#, cfg_razordrop
	.loc 1 46 0
	movl	$0, cfg_cutdrop(%rip)	#, cfg_cutdrop
	.loc 1 47 0
	movl	$1, cfg_futprune(%rip)	#, cfg_futprune
	.loc 1 48 0
	movl	$1, cfg_smarteval(%rip)	#, cfg_smarteval
	.loc 1 49 0
	movl	$0, cfg_attackeval(%rip)	#, cfg_attackeval
	.loc 1 50 0
	movl	$1, cfg_onerep(%rip)	#, cfg_onerep
	.loc 1 51 0
	movl	$0, cfg_recap(%rip)	#, cfg_recap
	.loc 1 53 0
	movl	$0, havercfile(%rip)	#, havercfile
	.loc 1 56 0
	movl	cfg_devscale(%rip), %eax	# cfg_devscale, cfg_devscale.0
	leal	(%rax,%rax), %edx	#, D.3919
	movl	havercfile(%rip), %eax	# havercfile, havercfile.1
	addl	%edx, %eax	# D.3919, D.3919
	.loc 1 57 0
	leal	4(%rax), %edx	#, D.3919
	.loc 1 58 0
	movl	cfg_razordrop(%rip), %eax	# cfg_razordrop, cfg_razordrop.2
	sall	$3, %eax	#, D.3919
	addl	%eax, %edx	# D.3919, D.3919
	.loc 1 59 0
	movl	cfg_cutdrop(%rip), %eax	# cfg_cutdrop, cfg_cutdrop.3
	sall	$4, %eax	#, D.3919
	addl	%eax, %edx	# D.3919, D.3919
	.loc 1 60 0
	movl	cfg_futprune(%rip), %eax	# cfg_futprune, cfg_futprune.4
	sall	$5, %eax	#, D.3919
	addl	%eax, %edx	# D.3919, D.3919
	.loc 1 61 0
	movl	cfg_smarteval(%rip), %eax	# cfg_smarteval, cfg_smarteval.5
	sall	$6, %eax	#, D.3919
	addl	%eax, %edx	# D.3919, D.3919
	.loc 1 62 0
	movl	cfg_attackeval(%rip), %eax	# cfg_attackeval, cfg_attackeval.6
	sall	$7, %eax	#, D.3919
	addl	%edx, %eax	# D.3919, D.3919
	.loc 1 55 0
	movl	%eax, -4(%rbp)	# D.3919, setc
	.loc 1 65 0
	movl	-4(%rbp), %eax	# setc, tmp80
	movl	%eax, %edx	# tmp80,
	movl	$.LC1, %esi	#,
	movl	$setcode, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 67 0
	call	initialize_eval	#
	.loc 1 68 0
	call	alloc_hash	#
	.loc 1 69 0
	call	alloc_ecache	#
	.loc 1 71 0
	nop
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	read_rcfile, .-read_rcfile
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4a7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.long	.LASF70
	.long	.LASF71
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
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x8c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x8d
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xb5
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x236
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x57
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0x84
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0x84
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0x84
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0x84
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0x84
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0x84
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0x84
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0x84
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0x84
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0x84
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0x84
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x26e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x274
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x57
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x57
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x65
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x34
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x49
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x27a
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x28a
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x70
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x82
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x82
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0x82
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0x82
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x91
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x57
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x290
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x26e
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x26e
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x274
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23d
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x8a
	.long	0x28a
	.uleb128 0xc
	.long	0x7b
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x236
	.uleb128 0xb
	.long	0x8a
	.long	0x2a0
	.uleb128 0xc
	.long	0x7b
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF73
	.byte	0x1
	.byte	0x23
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc
	.uleb128 0xe
	.long	.LASF74
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_booklearn
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x1c
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_devscale
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x16
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_razordrop
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_cutdrop
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0x1b
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_futprune
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0x1d
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_onerep
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x1e
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_recap
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x1f
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_smarteval
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x20
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_attackeval
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.byte	0x21
	.long	0x39e
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_scalefac
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF59
	.uleb128 0xb
	.long	0x57
	.long	0x3bb
	.uleb128 0xc
	.long	0x7b
	.byte	0xe
	.uleb128 0xc
	.long	0x7b
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x18
	.long	0x3a5
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_ksafety
	.uleb128 0xb
	.long	0x57
	.long	0x3e6
	.uleb128 0xc
	.long	0x7b
	.byte	0x4
	.uleb128 0xc
	.long	0x7b
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x1
	.byte	0x19
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	cfg_tropism
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0x1a
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	havercfile
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x11
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	TTSize
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	PBSize
	.uleb128 0xf
	.long	.LASF65
	.byte	0x1
	.byte	0x12
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	ECacheSize
	.uleb128 0xb
	.long	0x8a
	.long	0x45f
	.uleb128 0xc
	.long	0x7b
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.long	.LASF66
	.byte	0x6
	.byte	0xa6
	.long	0x44f
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.byte	0xe
	.long	0x47f
	.uleb128 0x9
	.byte	0x3
	.quad	rcfile
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x8a
	.long	0x495
	.uleb128 0xc
	.long	0x7b
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0x1
	.byte	0xf
	.long	0x485
	.uleb128 0x9
	.byte	0x3
	.quad	line
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF63:
	.string	"TTSize"
.LASF57:
	.string	"cfg_attackeval"
.LASF44:
	.string	"_IO_FILE"
.LASF26:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF49:
	.string	"cfg_booklearn"
.LASF9:
	.string	"sizetype"
.LASF36:
	.string	"_offset"
.LASF53:
	.string	"cfg_futprune"
.LASF20:
	.string	"_IO_write_ptr"
.LASF15:
	.string	"_flags"
.LASF70:
	.string	"rcfile.c"
.LASF22:
	.string	"_IO_buf_base"
.LASF27:
	.string	"_markers"
.LASF58:
	.string	"cfg_scalefac"
.LASF56:
	.string	"cfg_smarteval"
.LASF64:
	.string	"PBSize"
.LASF68:
	.string	"line"
.LASF67:
	.string	"rcfile"
.LASF62:
	.string	"havercfile"
.LASF66:
	.string	"setcode"
.LASF59:
	.string	"float"
.LASF12:
	.string	"long long int"
.LASF35:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF50:
	.string	"cfg_devscale"
.LASF32:
	.string	"_cur_column"
.LASF48:
	.string	"_pos"
.LASF65:
	.string	"ECacheSize"
.LASF47:
	.string	"_sbuf"
.LASF31:
	.string	"_old_offset"
.LASF0:
	.string	"unsigned char"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF73:
	.string	"read_rcfile"
.LASF2:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_read_end"
.LASF19:
	.string	"_IO_write_base"
.LASF43:
	.string	"_unused2"
.LASF16:
	.string	"_IO_read_ptr"
.LASF23:
	.string	"_IO_buf_end"
.LASF10:
	.string	"char"
.LASF74:
	.string	"setc"
.LASF46:
	.string	"_next"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF1:
	.string	"short unsigned int"
.LASF3:
	.string	"long unsigned int"
.LASF21:
	.string	"_IO_write_end"
.LASF8:
	.string	"__off64_t"
.LASF29:
	.string	"_fileno"
.LASF52:
	.string	"cfg_cutdrop"
.LASF28:
	.string	"_chain"
.LASF7:
	.string	"__off_t"
.LASF25:
	.string	"_IO_backup_base"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF60:
	.string	"cfg_ksafety"
.LASF33:
	.string	"_vtable_offset"
.LASF51:
	.string	"cfg_razordrop"
.LASF24:
	.string	"_IO_save_base"
.LASF54:
	.string	"cfg_onerep"
.LASF14:
	.string	"FILE"
.LASF61:
	.string	"cfg_tropism"
.LASF72:
	.string	"_IO_lock_t"
.LASF55:
	.string	"cfg_recap"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
