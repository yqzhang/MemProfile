	.file	"io_nonansi.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# io_nonansi.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
	.align 8
.LC0:
	.string	"g_open: Node %d. Append not supported in PIOFS\n"
	.align 8
.LC1:
	.string	"g_open: Node %d. mode %s not recognized\n"
	.align 8
.LC2:
	.string	"g_open: Node %d error %d opening %s\n"
	.align 8
.LC3:
	.string	"g_open: Node %d can't malloc fp\n"
	.text
	.globl	g_open
	.type	g_open, @function
g_open:
.LFB2:
	.file 1 "io_nonansi.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	movq	%rsi, -32(%rbp)	# mode, mode
	.loc 1 40 0
	movq	-32(%rbp), %rax	# mode, tmp72
	movzbl	(%rax), %eax	# *mode_4(D), D.5710
	cmpb	$97, %al	#, D.5710
	jne	.L2	#,
	.loc 1 42 0
	movl	this_node(%rip), %eax	# this_node, this_node.0
	movl	%eax, %esi	# this_node.0,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 43 0
	movl	$0, %eax	#, D.5709
	jmp	.L3	#
.L2:
	.loc 1 46 0
	movq	-32(%rbp), %rax	# mode, tmp73
	movzbl	(%rax), %eax	# *mode_4(D), D.5710
	cmpb	$119, %al	#, D.5710
	jne	.L4	#,
	.loc 1 48 0
	movl	$65, -16(%rbp)	#, oflg
	jmp	.L5	#
.L4:
	.loc 1 51 0
	movq	-32(%rbp), %rax	# mode, tmp74
	movzbl	(%rax), %eax	# *mode_4(D), D.5710
	cmpb	$114, %al	#, D.5710
	jne	.L6	#,
	.loc 1 53 0
	movl	$0, -16(%rbp)	#, oflg
	.loc 1 54 0
	movq	-32(%rbp), %rax	# mode, tmp75
	movl	$43, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	strchr	#
	testq	%rax, %rax	# D.5711
	je	.L5	#,
	.loc 1 55 0
	movl	$2, -16(%rbp)	#, oflg
	jmp	.L5	#
.L6:
	.loc 1 60 0
	movl	this_node(%rip), %eax	# this_node, this_node.1
	movq	-32(%rbp), %rdx	# mode, tmp76
	movl	%eax, %esi	# this_node.1,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 61 0
	movl	$0, %eax	#, D.5709
	jmp	.L3	#
.L5:
	.loc 1 66 0
	movl	-16(%rbp), %ecx	# oflg, tmp77
	movq	-24(%rbp), %rax	# filename, tmp78
	movl	$420, %edx	#,
	movl	%ecx, %esi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, -12(%rbp)	# tmp79, fd
	cmpl	$-1, -12(%rbp)	#, fd
	jne	.L8	#,
	.loc 1 69 0
	call	__errno_location	#
	.loc 1 68 0
	movl	(%rax), %edx	# *_18, D.5713
	movl	this_node(%rip), %eax	# this_node, this_node.2
	movq	-24(%rbp), %rcx	# filename, tmp80
	movl	%eax, %esi	# this_node.2,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 70 0
	movl	$0, %eax	#, D.5709
	jmp	.L3	#
.L8:
	.loc 1 79 0
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp81, fp
	.loc 1 80 0
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L9	#,
	.loc 1 82 0
	movl	this_node(%rip), %eax	# this_node, this_node.3
	movl	%eax, %esi	# this_node.3,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 83 0
	movq	stdout(%rip), %rax	# stdout, stdout.4
	movq	%rax, %rdi	# stdout.4,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L9:
	.loc 1 86 0
	movq	-8(%rbp), %rax	# fp, tmp82
	movl	-12(%rbp), %edx	# fd, tmp83
	movl	%edx, (%rax)	# tmp83, *fp_22
	.loc 1 88 0
	movq	-8(%rbp), %rax	# fp, D.5709
.L3:
	.loc 1 89 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	g_open, .-g_open
	.globl	g_seek
	.type	g_seek, @function
g_seek:
.LFB3:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# stream, stream
	movq	%rsi, -32(%rbp)	# offset, offset
	movl	%edx, -36(%rbp)	# whence, whence
	.loc 1 94 0
	movq	-24(%rbp), %rax	# stream, tmp62
	movl	(%rax), %eax	# MEM[(int *)stream_1(D)], tmp63
	movl	%eax, -4(%rbp)	# tmp63, fd
	.loc 1 96 0
	movl	-36(%rbp), %edx	# whence, tmp64
	movq	-32(%rbp), %rcx	# offset, tmp65
	movl	-4(%rbp), %eax	# fd, tmp66
	movq	%rcx, %rsi	# tmp65,
	movl	%eax, %edi	# tmp66,
	call	lseek	#
	.loc 1 97 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	g_seek, .-g_seek
	.globl	g_write
	.type	g_write, @function
g_write:
.LFB4:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movq	%rsi, -32(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# nmemb, nmemb
	movq	%rcx, -48(%rbp)	# stream, stream
	.loc 1 102 0
	movq	-48(%rbp), %rax	# stream, tmp68
	movl	(%rax), %eax	# MEM[(int *)stream_1(D)], tmp69
	movl	%eax, -4(%rbp)	# tmp69, fd
	.loc 1 104 0
	movq	-32(%rbp), %rax	# size, tmp70
	movl	%eax, %edx	# tmp70, D.5720
	movq	-40(%rbp), %rax	# nmemb, tmp71
	imull	%edx, %eax	# D.5720, D.5720
	movslq	%eax, %rdx	# D.5721, D.5722
	movq	-24(%rbp), %rcx	# ptr, tmp72
	movl	-4(%rbp), %eax	# fd, tmp73
	movq	%rcx, %rsi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	write	#
	movl	$0, %edx	#, tmp75
	divq	-32(%rbp)	# size
	.loc 1 105 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	g_write, .-g_write
	.globl	g_read
	.type	g_read, @function
g_read:
.LFB5:
	.loc 1 108 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	movq	%rsi, -32(%rbp)	# size, size
	movq	%rdx, -40(%rbp)	# nmemb, nmemb
	movq	%rcx, -48(%rbp)	# stream, stream
	.loc 1 110 0
	movq	-48(%rbp), %rax	# stream, tmp68
	movl	(%rax), %eax	# MEM[(int *)stream_1(D)], tmp69
	movl	%eax, -4(%rbp)	# tmp69, fd
	.loc 1 112 0
	movq	-32(%rbp), %rax	# size, tmp70
	movl	%eax, %edx	# tmp70, D.5726
	movq	-40(%rbp), %rax	# nmemb, tmp71
	imull	%edx, %eax	# D.5726, D.5726
	movslq	%eax, %rdx	# D.5727, D.5728
	movq	-24(%rbp), %rcx	# ptr, tmp72
	movl	-4(%rbp), %eax	# fd, tmp73
	movq	%rcx, %rsi	# tmp72,
	movl	%eax, %edi	# tmp73,
	call	read	#
	movl	$0, %edx	#, tmp75
	divq	-32(%rbp)	# size
	.loc 1 113 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	g_read, .-g_read
	.globl	g_close
	.type	g_close, @function
g_close:
.LFB6:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stream, stream
	.loc 1 118 0
	movq	-24(%rbp), %rax	# stream, tmp61
	movl	(%rax), %eax	# MEM[(int *)stream_1(D)], tmp62
	movl	%eax, -8(%rbp)	# tmp62, fd
	.loc 1 120 0
	movl	-8(%rbp), %eax	# fd, tmp63
	movl	%eax, %edi	# tmp63,
	call	close	#
	movl	%eax, -4(%rbp)	# tmp64, status
	.loc 1 121 0
	movq	-24(%rbp), %rax	# stream, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free	#
	.loc 1 122 0
	movl	-4(%rbp), %eax	# status, D.5731
	.loc 1 123 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	g_close, .-g_close
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4c2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.long	.LASF69
	.long	.LASF70
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x2
	.long	.LASF47
	.byte	0x4
	.byte	0x5a
	.long	0x70
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x6
	.byte	0x8
	.long	0x2c2
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x1c
	.long	0x2d1
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x33d
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0x1c
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0x1c
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x1e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x1e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.string	"fp"
	.byte	0x1
	.byte	0x1f
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x396
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x5b
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x5b
	.long	0x29d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x63
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fd
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x63
	.long	0x2bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x63
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x65
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x464
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x6b
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x6b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x6b
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x6d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x73
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4af
	.uleb128 0x10
	.long	.LASF57
	.byte	0x1
	.byte	0x73
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x75
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x75
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x14
	.long	.LASF67
	.byte	0x6
	.byte	0x8b
	.long	0x62
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
.LASF29:
	.string	"_old_offset"
.LASF63:
	.string	"g_read"
.LASF24:
	.string	"_IO_save_end"
.LASF19:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF55:
	.string	"g_open"
.LASF18:
	.string	"_IO_write_ptr"
.LASF52:
	.string	"filename"
.LASF53:
	.string	"mode"
.LASF69:
	.string	"io_nonansi.c"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF60:
	.string	"g_write"
.LASF67:
	.string	"this_node"
.LASF50:
	.string	"float"
.LASF48:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"offset"
.LASF57:
	.string	"stream"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF56:
	.string	"g_seek"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF49:
	.string	"long long unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF65:
	.string	"status"
.LASF11:
	.string	"char"
.LASF62:
	.string	"nmemb"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF64:
	.string	"g_close"
.LASF2:
	.string	"short unsigned int"
.LASF70:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF59:
	.string	"whence"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF61:
	.string	"size"
.LASF47:
	.string	"off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF54:
	.string	"oflg"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF66:
	.string	"stdout"
.LASF71:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
