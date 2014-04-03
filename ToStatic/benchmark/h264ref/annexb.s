	.file	"annexb.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 annexb.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	f
	.comm	f,8,8
	.globl	WriteAnnexbNALU
	.type	WriteAnnexbNALU, @function
WriteAnnexbNALU:
.LFB2:
	.file 1 "annexb.c"
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# n, n
	.loc 1 36 0
	movl	$0, -4(%rbp)	#, BitsWritten
	.loc 1 44 0
	movq	-24(%rbp), %rax	# n, tmp78
	movl	(%rax), %eax	# n_3(D)->startcodeprefix_len, D.4122
	cmpl	$3, %eax	#, D.4122
	jle	.L2	#,
	.loc 1 49 0
	movl	$8, -4(%rbp)	#, BitsWritten
.L2:
	.loc 1 56 0
	addl	$24, -4(%rbp)	#, BitsWritten
	.loc 1 58 0
	movq	-24(%rbp), %rax	# n, tmp79
	movq	24(%rax), %rax	# n_3(D)->buf, D.4123
	.loc 1 59 0
	movq	-24(%rbp), %rdx	# n, tmp80
	movl	20(%rdx), %edx	# n_3(D)->forbidden_bit, D.4122
	sall	$7, %edx	#, D.4122
	.loc 1 58 0
	movl	%edx, %ecx	# D.4122, D.4124
	.loc 1 60 0
	movq	-24(%rbp), %rdx	# n, tmp81
	movl	16(%rdx), %edx	# n_3(D)->nal_reference_idc, D.4122
	sall	$5, %edx	#, D.4122
	.loc 1 58 0
	orl	%edx, %ecx	# D.4124, D.4124
	.loc 1 61 0
	movq	-24(%rbp), %rdx	# n, tmp82
	movl	12(%rdx), %edx	# n_3(D)->nal_unit_type, D.4122
	.loc 1 58 0
	orl	%ecx, %edx	# D.4124, D.4124
	movb	%dl, (%rax)	# D.4125, *_7
	.loc 1 73 0
	movq	-24(%rbp), %rax	# n, tmp83
	movl	4(%rax), %eax	# n_3(D)->len, D.4126
	leal	0(,%rax,8), %edx	#, D.4126
	movl	-4(%rbp), %eax	# BitsWritten, BitsWritten.0
	addl	%edx, %eax	# D.4126, D.4126
	movl	%eax, -4(%rbp)	# D.4126, BitsWritten
	.loc 1 83 0
	movl	-4(%rbp), %eax	# BitsWritten, D.4122
	.loc 1 84 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	WriteAnnexbNALU, .-WriteAnnexbNALU
	.section	.rodata
.LC0:
	.string	"wb"
	.align 8
.LC1:
	.string	"Fatal: cannot open Annex B bytestream file '%s', exit (-1)\n"
	.text
	.globl	OpenAnnexbFile
	.type	OpenAnnexbFile, @function
OpenAnnexbFile:
.LFB3:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# Filename, Filename
	.loc 1 102 0
	movq	-8(%rbp), %rax	# Filename, tmp61
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	fopen	#
	movq	%rax, f(%rip)	# f.1, f
	movq	f(%rip), %rax	# f, f.2
	testq	%rax, %rax	# f.2
	jne	.L4	#,
	.loc 1 104 0
	movq	-8(%rbp), %rax	# Filename, tmp62
	movq	%rax, %rsi	# tmp62,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 105 0
	movl	$-1, %edi	#,
	call	exit	#
.L4:
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	OpenAnnexbFile, .-OpenAnnexbFile
	.section	.rodata
	.align 8
.LC2:
	.string	"Fatal: cannot close Annex B bytestream file, exit (-1)"
	.text
	.globl	CloseAnnexbFile
	.type	CloseAnnexbFile, @function
CloseAnnexbFile:
.LFB4:
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 120 0
	movq	f(%rip), %rax	# f, f.3
	movq	%rax, %rdi	# f.3,
	call	fclose	#
	testl	%eax, %eax	# D.4129
	je	.L6	#,
	.loc 1 122 0
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 123 0
	movl	$-1, %edi	#,
	call	exit	#
.L6:
	.loc 1 125 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	CloseAnnexbFile, .-CloseAnnexbFile
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "defines.h"
	.file 7 "nalucommon.h"
	.file 8 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x403
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
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
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
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0x8f
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
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x5b
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
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x3f
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
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23d
	.uleb128 0x6
	.byte	0x8
	.long	0xb5
	.uleb128 0xb
	.long	0x95
	.long	0x28a
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x236
	.uleb128 0xb
	.long	0x95
	.long	0x2a0
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x1e
	.long	0x46
	.uleb128 0x6
	.byte	0x8
	.long	0x2a0
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x9b
	.long	0x2f0
	.uleb128 0xe
	.long	.LASF50
	.sleb128 0
	.uleb128 0xe
	.long	.LASF51
	.sleb128 1
	.uleb128 0xe
	.long	.LASF52
	.sleb128 2
	.uleb128 0xe
	.long	.LASF53
	.sleb128 3
	.uleb128 0xe
	.long	.LASF54
	.sleb128 4
	.uleb128 0xe
	.long	.LASF55
	.sleb128 5
	.uleb128 0xe
	.long	.LASF56
	.sleb128 6
	.uleb128 0xe
	.long	.LASF57
	.sleb128 7
	.uleb128 0xe
	.long	.LASF58
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF59
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF60
	.uleb128 0xf
	.byte	0x20
	.byte	0x7
	.byte	0x28
	.long	0x35b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x2a
	.long	0x3f
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x7
	.byte	0x2b
	.long	0x54
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x2c
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x2d
	.long	0x3f
	.byte	0xc
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x2e
	.long	0x3f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x2f
	.long	0x3f
	.byte	0x14
	.uleb128 0x10
	.string	"buf"
	.byte	0x7
	.byte	0x30
	.long	0x2ab
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x31
	.long	0x2fe
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.byte	0x22
	.long	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a2
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x22
	.long	0x3a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x24
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x35b
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x64
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d4
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x64
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0x77
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x15
	.long	0x400
	.uleb128 0x9
	.byte	0x3
	.quad	f
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
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
	.uleb128 0x4
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
.LASF53:
	.string	"BITS_INTER_MB"
.LASF31:
	.string	"_old_offset"
.LASF44:
	.string	"_IO_FILE"
.LASF20:
	.string	"_IO_write_ptr"
.LASF26:
	.string	"_IO_save_end"
.LASF21:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF50:
	.string	"BITS_HEADER"
.LASF10:
	.string	"sizetype"
.LASF36:
	.string	"_offset"
.LASF67:
	.string	"Filename"
.LASF15:
	.string	"_flags"
.LASF68:
	.string	"BitsWritten"
.LASF22:
	.string	"_IO_buf_base"
.LASF61:
	.string	"startcodeprefix_len"
.LASF27:
	.string	"_markers"
.LASF17:
	.string	"_IO_read_end"
.LASF64:
	.string	"nal_reference_idc"
.LASF60:
	.string	"float"
.LASF12:
	.string	"long long int"
.LASF35:
	.string	"_lock"
.LASF75:
	.string	"CloseAnnexbFile"
.LASF6:
	.string	"long int"
.LASF51:
	.string	"BITS_TOTAL_MB"
.LASF63:
	.string	"nal_unit_type"
.LASF32:
	.string	"_cur_column"
.LASF48:
	.string	"_pos"
.LASF54:
	.string	"BITS_CBP_MB"
.LASF49:
	.string	"byte"
.LASF47:
	.string	"_sbuf"
.LASF58:
	.string	"MAX_BITCOUNTER_MB"
.LASF1:
	.string	"unsigned char"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF65:
	.string	"forbidden_bit"
.LASF3:
	.string	"unsigned int"
.LASF45:
	.string	"_IO_marker"
.LASF34:
	.string	"_shortbuf"
.LASF19:
	.string	"_IO_write_base"
.LASF43:
	.string	"_unused2"
.LASF16:
	.string	"_IO_read_ptr"
.LASF23:
	.string	"_IO_buf_end"
.LASF73:
	.string	"WriteAnnexbNALU"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"char"
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
.LASF55:
	.string	"BITS_COEFF_Y_MB"
.LASF2:
	.string	"short unsigned int"
.LASF74:
	.string	"OpenAnnexbFile"
.LASF0:
	.string	"long unsigned int"
.LASF52:
	.string	"BITS_MB_MODE"
.LASF66:
	.string	"NALU_t"
.LASF59:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF70:
	.string	"annexb.c"
.LASF8:
	.string	"__off_t"
.LASF28:
	.string	"_chain"
.LASF57:
	.string	"BITS_DELTA_QUANT_MB"
.LASF25:
	.string	"_IO_backup_base"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF18:
	.string	"_IO_read_base"
.LASF62:
	.string	"max_size"
.LASF33:
	.string	"_vtable_offset"
.LASF24:
	.string	"_IO_save_base"
.LASF29:
	.string	"_fileno"
.LASF14:
	.string	"FILE"
.LASF56:
	.string	"BITS_COEFF_UV_MB"
.LASF72:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
