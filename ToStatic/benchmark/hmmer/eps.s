	.file	"eps.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 eps.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC0:
	.string	"Courier"
	.align 8
.LC1:
	.string	"No EPS fmt if alignment is >50 columns"
	.align 8
.LC2:
	.string	"Alignment too wide to write in EPS"
.LC3:
	.string	"Too many seqs to write in EPS"
.LC4:
	.string	"%%!PS-Adobe-3.0 EPSF-3.0\n"
.LC5:
	.string	"%%%%BoundingBox: %d %d %d %d\n"
.LC6:
	.string	"%%%%Pages: 1\n"
.LC7:
	.string	"%%%%EndComments\n"
.LC8:
	.string	"/%s findfont\n"
.LC9:
	.string	"%d scalefont\n"
.LC10:
	.string	"setfont\n"
.LC11:
	.string	"newpath\n"
.LC12:
	.string	"%d %d moveto\n"
.LC13:
	.string	"(%s) show\n"
.LC14:
	.string	"(%c) show\n"
	.text
	.globl	EPSWriteSmallMSA
	.type	EPSWriteSmallMSA, @function
EPSWriteSmallMSA:
.LFB2:
	.file 1 "eps.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# fp, fp
	movq	%rsi, -80(%rbp)	# msa, msa
	.loc 1 60 0
	movl	$8, -40(%rbp)	#, fontwidth
	.loc 1 61 0
	movl	$9, -36(%rbp)	#, hspace
	.loc 1 62 0
	movl	$15, -32(%rbp)	#, vspace
	.loc 1 63 0
	movl	$-1, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_strdup	#
	movq	%rax, -8(%rbp)	# tmp89, font
	.loc 1 64 0
	movl	$12, -28(%rbp)	#, fontsize
	.loc 1 68 0
	movl	$0, -56(%rbp)	#, namewidth
	.loc 1 69 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L2	#
.L4:
	.loc 1 70 0
	movq	-80(%rbp), %rax	# msa, tmp90
	movq	8(%rax), %rax	# msa_14(D)->sqname, D.5635
	movl	-52(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.5636
	salq	$3, %rdx	#, D.5636
	addq	%rdx, %rax	# D.5636, D.5635
	movq	(%rax), %rax	# *_19, D.5637
	movq	%rax, %rdi	# D.5637,
	call	strlen	#
	movl	%eax, -24(%rbp)	# D.5636, len
	movl	-24(%rbp), %eax	# len, tmp92
	cmpl	-56(%rbp), %eax	# namewidth, tmp92
	jle	.L3	#,
	.loc 1 71 0
	movl	-24(%rbp), %eax	# len, tmp93
	movl	%eax, -56(%rbp)	# tmp93, namewidth
.L3:
	.loc 1 69 0
	addl	$1, -52(%rbp)	#, i
.L2:
	.loc 1 69 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp94
	movl	28(%rax), %eax	# msa_14(D)->nseq, D.5634
	cmpl	-52(%rbp), %eax	# i, D.5634
	jg	.L4	#,
	.loc 1 72 0 is_stmt 1
	addl	$1, -56(%rbp)	#, namewidth
	.loc 1 73 0
	movl	-56(%rbp), %eax	# namewidth, tmp96
	imull	-40(%rbp), %eax	# fontwidth, tmp95
	movl	%eax, -56(%rbp)	# tmp95, namewidth
	.loc 1 77 0
	movq	-80(%rbp), %rax	# msa, tmp97
	movl	24(%rax), %eax	# msa_14(D)->alen, D.5634
	cmpl	$50, %eax	#, D.5634
	jle	.L5	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L5:
	.loc 1 78 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp98
	movl	24(%rax), %eax	# msa_14(D)->alen, D.5634
	imull	-36(%rbp), %eax	# hspace, D.5634
	movl	%eax, %edx	# D.5634, D.5634
	movl	-56(%rbp), %eax	# namewidth, tmp102
	addl	%edx, %eax	# D.5634, tmp101
	movl	%eax, -20(%rbp)	# tmp101, width
	.loc 1 79 0
	cmpl	$612, -20(%rbp)	#, width
	jle	.L6	#,
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L6:
	.loc 1 80 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp103
	movl	28(%rax), %eax	# msa_14(D)->nseq, D.5634
	imull	-32(%rbp), %eax	# vspace, tmp104
	movl	%eax, -16(%rbp)	# tmp104, height
	.loc 1 81 0
	cmpl	$792, -16(%rbp)	#, height
	jle	.L7	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L7:
	.loc 1 85 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp105
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 86 0
	movl	-16(%rbp), %ecx	# height, tmp106
	movl	-20(%rbp), %edx	# width, tmp107
	movq	-72(%rbp), %rax	# fp, tmp108
	movl	%ecx, %r9d	# tmp106,
	movl	%edx, %r8d	# tmp107,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 87 0
	movq	-72(%rbp), %rax	# fp, tmp109
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp109,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 88 0
	movq	-72(%rbp), %rax	# fp, tmp110
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 92 0
	movq	-8(%rbp), %rdx	# font, tmp111
	movq	-72(%rbp), %rax	# fp, tmp112
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp112,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 93 0
	movl	-28(%rbp), %edx	# fontsize, tmp113
	movq	-72(%rbp), %rax	# fp, tmp114
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 94 0
	movq	-72(%rbp), %rax	# fp, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 95 0
	movq	-72(%rbp), %rax	# fp, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 99 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L8	#
.L11:
	.loc 1 101 0
	movq	-80(%rbp), %rax	# msa, tmp117
	movl	28(%rax), %eax	# msa_14(D)->nseq, D.5634
	subl	-52(%rbp), %eax	# i, D.5634
	subl	$1, %eax	#, D.5634
	imull	-32(%rbp), %eax	# vspace, tmp118
	movl	%eax, -12(%rbp)	# tmp118, ypos
	.loc 1 103 0
	movl	-12(%rbp), %edx	# ypos, tmp119
	movq	-72(%rbp), %rax	# fp, tmp120
	movl	%edx, %ecx	# tmp119,
	movl	$0, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp120,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 104 0
	movq	-80(%rbp), %rax	# msa, tmp121
	movq	8(%rax), %rax	# msa_14(D)->sqname, D.5635
	movl	-52(%rbp), %edx	# i, tmp122
	movslq	%edx, %rdx	# tmp122, D.5636
	salq	$3, %rdx	#, D.5636
	addq	%rdx, %rax	# D.5636, D.5635
	movq	(%rax), %rdx	# *_43, D.5637
	movq	-72(%rbp), %rax	# fp, tmp123
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 106 0
	movl	-56(%rbp), %eax	# namewidth, tmp124
	movl	%eax, -44(%rbp)	# tmp124, xpos
	.loc 1 107 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L9	#
.L10:
	.loc 1 109 0 discriminator 2
	movl	-12(%rbp), %ecx	# ypos, tmp125
	movl	-44(%rbp), %edx	# xpos, tmp126
	movq	-72(%rbp), %rax	# fp, tmp127
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 110 0 discriminator 2
	movq	-80(%rbp), %rax	# msa, tmp128
	movq	(%rax), %rax	# msa_14(D)->aseq, D.5635
	movl	-52(%rbp), %edx	# i, tmp129
	movslq	%edx, %rdx	# tmp129, D.5636
	salq	$3, %rdx	#, D.5636
	addq	%rdx, %rax	# D.5636, D.5635
	movq	(%rax), %rdx	# *_51, D.5637
	movl	-48(%rbp), %eax	# j, tmp130
	cltq
	addq	%rdx, %rax	# D.5637, D.5637
	movzbl	(%rax), %eax	# *_54, D.5639
	movsbl	%al, %edx	# D.5639, D.5634
	movq	-72(%rbp), %rax	# fp, tmp131
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 111 0 discriminator 2
	movl	-36(%rbp), %eax	# hspace, tmp132
	addl	%eax, -44(%rbp)	# tmp132, xpos
	.loc 1 107 0 discriminator 2
	addl	$1, -48(%rbp)	#, j
.L9:
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp133
	movl	24(%rax), %eax	# msa_14(D)->alen, D.5634
	cmpl	-48(%rbp), %eax	# j, D.5634
	jg	.L10	#,
	.loc 1 99 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L8:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp134
	movl	28(%rax), %eax	# msa_14(D)->nseq, D.5634
	cmpl	-52(%rbp), %eax	# i, D.5634
	jg	.L11	#,
	.loc 1 115 0 is_stmt 1
	movq	-8(%rbp), %rax	# font, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 1 116 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	EPSWriteSmallMSA, .-EPSWriteSmallMSA
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "gki.h"
	.file 7 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6a8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF99
	.byte	0x1
	.long	.LASF100
	.long	.LASF101
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
	.long	.LASF102
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
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x7
	.long	.LASF51
	.byte	0x18
	.byte	0x6
	.byte	0x1a
	.long	0x2e5
	.uleb128 0xd
	.string	"key"
	.byte	0x6
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.string	"idx"
	.byte	0x6
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xd
	.string	"nxt"
	.byte	0x6
	.byte	0x1d
	.long	0x2e5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0xe
	.byte	0x18
	.byte	0x6
	.byte	0x24
	.long	0x324
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x25
	.long	0x324
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e5
	.uleb128 0xf
	.string	"GKI"
	.byte	0x6
	.byte	0x2a
	.long	0x2eb
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0x10
	.long	.LASF56
	.value	0x168
	.byte	0x7
	.byte	0x70
	.long	0x583
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x73
	.long	0x33b
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x74
	.long	0x33b
	.byte	0x8
	.uleb128 0xd
	.string	"wgt"
	.byte	0x7
	.byte	0x75
	.long	0x341
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xd
	.string	"acc"
	.byte	0x7
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xd
	.string	"au"
	.byte	0x7
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xd
	.string	"rf"
	.byte	0x7
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x84
	.long	0x33b
	.byte	0x60
	.uleb128 0x8
	.long	.LASF68
	.byte	0x7
	.byte	0x85
	.long	0x33b
	.byte	0x68
	.uleb128 0xd
	.string	"ss"
	.byte	0x7
	.byte	0x86
	.long	0x33b
	.byte	0x70
	.uleb128 0xd
	.string	"sa"
	.byte	0x7
	.byte	0x87
	.long	0x33b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF69
	.byte	0x7
	.byte	0x88
	.long	0x583
	.byte	0x80
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0x89
	.long	0x593
	.byte	0x98
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0x90
	.long	0x33b
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x94
	.long	0x33b
	.byte	0xc0
	.uleb128 0xd
	.string	"gf"
	.byte	0x7
	.byte	0x95
	.long	0x33b
	.byte	0xc8
	.uleb128 0xd
	.string	"ngf"
	.byte	0x7
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF76
	.byte	0x7
	.byte	0x99
	.long	0x33b
	.byte	0xd8
	.uleb128 0xd
	.string	"gs"
	.byte	0x7
	.byte	0x9a
	.long	0x5a3
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x7
	.byte	0x9b
	.long	0x5a9
	.byte	0xe8
	.uleb128 0xd
	.string	"ngs"
	.byte	0x7
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x7
	.byte	0x9e
	.long	0x33b
	.byte	0xf8
	.uleb128 0x11
	.string	"gc"
	.byte	0x7
	.byte	0x9f
	.long	0x33b
	.value	0x100
	.uleb128 0x12
	.long	.LASF79
	.byte	0x7
	.byte	0xa0
	.long	0x5a9
	.value	0x108
	.uleb128 0x11
	.string	"ngc"
	.byte	0x7
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x12
	.long	.LASF80
	.byte	0x7
	.byte	0xa3
	.long	0x33b
	.value	0x118
	.uleb128 0x11
	.string	"gr"
	.byte	0x7
	.byte	0xa4
	.long	0x5a3
	.value	0x120
	.uleb128 0x12
	.long	.LASF81
	.byte	0x7
	.byte	0xa5
	.long	0x5a9
	.value	0x128
	.uleb128 0x11
	.string	"ngr"
	.byte	0x7
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x12
	.long	.LASF82
	.byte	0x7
	.byte	0xaa
	.long	0x5a9
	.value	0x138
	.uleb128 0x12
	.long	.LASF83
	.byte	0x7
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x12
	.long	.LASF84
	.byte	0x7
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF85
	.byte	0x7
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x12
	.long	.LASF86
	.byte	0x7
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x12
	.long	.LASF87
	.byte	0x7
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x12
	.long	.LASF88
	.byte	0x7
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x593
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x5a3
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x33b
	.uleb128 0x6
	.byte	0x8
	.long	0x32a
	.uleb128 0xf
	.string	"MSA"
	.byte	0x7
	.byte	0xb1
	.long	0x347
	.uleb128 0x6
	.byte	0x8
	.long	0x5af
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.byte	0x2b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0x2b
	.long	0x335
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"msa"
	.byte	0x1
	.byte	0x2b
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0x2d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF90
	.byte	0x1
	.byte	0x2e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0x2f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0x30
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.byte	0x31
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0x32
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x33
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0x33
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.byte	0x34
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.byte	0x35
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.long	.LASF96
	.byte	0x1
	.byte	0x35
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF97
	.byte	0x1
	.byte	0x36
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.long	.LASF98
	.byte	0x1
	.byte	0x36
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF91:
	.string	"hspace"
.LASF7:
	.string	"size_t"
.LASF98:
	.string	"ypos"
.LASF32:
	.string	"_shortbuf"
.LASF100:
	.string	"eps.c"
.LASF62:
	.string	"type"
.LASF68:
	.string	"sqdesc"
.LASF78:
	.string	"gc_tag"
.LASF75:
	.string	"alloc_ngf"
.LASF60:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF103:
	.string	"EPSWriteSmallMSA"
.LASF76:
	.string	"gs_tag"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF97:
	.string	"xpos"
.LASF90:
	.string	"fontwidth"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF102:
	.string	"_IO_lock_t"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF73:
	.string	"alloc_ncomment"
.LASF53:
	.string	"primelevel"
.LASF50:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF84:
	.string	"nseqlump"
.LASF67:
	.string	"sqacc"
.LASF94:
	.string	"fontsize"
.LASF56:
	.string	"msa_struct"
.LASF92:
	.string	"vspace"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF87:
	.string	"salen"
.LASF88:
	.string	"lastidx"
.LASF0:
	.string	"long unsigned int"
.LASF86:
	.string	"sslen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF63:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF95:
	.string	"width"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"_pos"
.LASF22:
	.string	"_IO_save_base"
.LASF89:
	.string	"namewidth"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF65:
	.string	"ss_cons"
.LASF79:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF80:
	.string	"gr_tag"
.LASF70:
	.string	"cutoff_is_set"
.LASF64:
	.string	"desc"
.LASF19:
	.string	"_IO_write_end"
.LASF77:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF83:
	.string	"nseqalloc"
.LASF85:
	.string	"sqlen"
.LASF49:
	.string	"float"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"comment"
.LASF21:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF52:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF55:
	.string	"nkeys"
.LASF12:
	.string	"FILE"
.LASF11:
	.string	"char"
.LASF66:
	.string	"sa_cons"
.LASF51:
	.string	"gki_elem"
.LASF59:
	.string	"alen"
.LASF82:
	.string	"index"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"ncomment"
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
.LASF69:
	.string	"cutoff"
.LASF41:
	.string	"_unused2"
.LASF93:
	.string	"font"
.LASF99:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF61:
	.string	"flags"
.LASF58:
	.string	"sqname"
.LASF81:
	.string	"gr_idx"
.LASF54:
	.string	"nhash"
.LASF101:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF96:
	.string	"height"
.LASF74:
	.string	"gf_tag"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF57:
	.string	"aseq"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
