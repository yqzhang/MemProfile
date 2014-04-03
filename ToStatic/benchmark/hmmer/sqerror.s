	.file	"sqerror.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sqerror.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	squid_errno,4,4
	.section	.rodata
.LC0:
	.string	"\nFATAL: "
	.text
	.globl	Die
	.type	Die, @function
Die:
.LFB2:
	.file 1 "sqerror.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L2	#,
	.loc 1 37 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L2:
	movq	%rdi, -216(%rbp)	# format, format
	.loc 1 40 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 41 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&argp].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&argp].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&argp].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&argp].reg_save_area
	.loc 1 42 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	leaq	-200(%rbp), %rdx	#, tmp64
	movq	-216(%rbp), %rcx	# format, tmp65
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# stderr.1,
	call	vfprintf	#
	.loc 1 44 0
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	%rax, %rsi	# stderr.2,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 45 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	%rax, %rdi	# stderr.3,
	call	fflush	#
	.loc 1 47 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE2:
	.size	Die, .-Die
	.section	.rodata
.LC1:
	.string	"WARNING: "
	.text
	.globl	Warn
	.type	Warn, @function
Warn:
.LFB3:
	.loc 1 62 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$224, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L4	#,
	.loc 1 62 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L4:
	movq	%rdi, -216(%rbp)	# format, format
	.loc 1 65 0
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rcx	# stderr.4,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 66 0
	movl	$8, -200(%rbp)	#, MEM[(struct [1] *)&argp].gp_offset
	movl	$48, -196(%rbp)	#, MEM[(struct [1] *)&argp].fp_offset
	leaq	16(%rbp), %rax	#, tmp66
	movq	%rax, -192(%rbp)	# tmp66, MEM[(struct [1] *)&argp].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp67
	movq	%rax, -184(%rbp)	# tmp67, MEM[(struct [1] *)&argp].reg_save_area
	.loc 1 67 0
	movq	stderr(%rip), %rax	# stderr, stderr.5
	leaq	-200(%rbp), %rdx	#, tmp64
	movq	-216(%rbp), %rcx	# format, tmp65
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# stderr.5,
	call	vfprintf	#
	.loc 1 69 0
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movq	%rax, %rsi	# stderr.6,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 70 0
	movq	stderr(%rip), %rax	# stderr, stderr.7
	movq	%rax, %rdi	# stderr.7,
	call	fflush	#
	.loc 1 71 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Warn, .-Warn
	.section	.rodata
.LC2:
	.string	"\nPANIC [%s line %d] "
.LC3:
	.string	"Unusual error"
	.text
	.globl	Panic
	.type	Panic, @function
Panic:
.LFB4:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# file, file
	movl	%esi, -12(%rbp)	# line, line
	.loc 1 90 0
	movq	stderr(%rip), %rax	# stderr, stderr.8
	movl	-12(%rbp), %ecx	# line, tmp60
	movq	-8(%rbp), %rdx	# file, tmp61
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.8,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 91 0
	movl	$.LC3, %edi	#,
	call	perror	#
	.loc 1 92 0
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE4:
	.size	Panic, .-Panic
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 6 "<built-in>"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x2ad
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x2b3
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x2b9
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x2c9
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x2cf
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x28
	.long	0x228
	.uleb128 0xa
	.long	0x238
	.long	0x238
	.uleb128 0xb
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0
	.long	0x275
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0
	.long	0x4d
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0
	.long	0x4d
	.byte	0x4
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0
	.long	0x8d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0
	.long	0x8d
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	.LASF68
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF48
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x2ad
	.uleb128 0x8
	.long	.LASF49
	.byte	0x4
	.byte	0xa2
	.long	0x2ad
	.byte	0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x4
	.byte	0xa3
	.long	0x2b3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF51
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27c
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xa
	.long	0x95
	.long	0x2c9
	.uleb128 0xb
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x275
	.uleb128 0xa
	.long	0x95
	.long	0x2df
	.uleb128 0xb
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x4f
	.long	0x21d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF54
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF56
	.uleb128 0xd
	.string	"Die"
	.byte	0x1
	.byte	0x24
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x343
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x24
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x26
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.byte	0x3d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x380
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0x3d
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x3f
	.long	0x2df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.byte	0x58
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ba
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.byte	0x58
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.byte	0x58
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x12
	.long	.LASF63
	.byte	0x7
	.byte	0xaa
	.long	0x2b3
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x18
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	squid_errno
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF28:
	.string	"_old_offset"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF18:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF55:
	.string	"long long int"
.LASF19:
	.string	"_IO_buf_base"
.LASF61:
	.string	"file"
.LASF43:
	.string	"__va_list_tag"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF52:
	.string	"va_list"
.LASF62:
	.string	"line"
.LASF53:
	.string	"float"
.LASF63:
	.string	"stderr"
.LASF67:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF58:
	.string	"format"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF45:
	.string	"fp_offset"
.LASF29:
	.string	"_cur_column"
.LASF44:
	.string	"gp_offset"
.LASF51:
	.string	"_pos"
.LASF50:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"long long unsigned int"
.LASF31:
	.string	"_shortbuf"
.LASF3:
	.string	"unsigned int"
.LASF48:
	.string	"_IO_marker"
.LASF59:
	.string	"argp"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF66:
	.string	"sqerror.c"
.LASF20:
	.string	"_IO_buf_end"
.LASF47:
	.string	"reg_save_area"
.LASF11:
	.string	"char"
.LASF49:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF54:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF46:
	.string	"overflow_arg_area"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF57:
	.string	"Warn"
.LASF41:
	.string	"__gnuc_va_list"
.LASF30:
	.string	"_vtable_offset"
.LASF64:
	.string	"squid_errno"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF60:
	.string	"Panic"
.LASF12:
	.string	"_flags"
.LASF68:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
