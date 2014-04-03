	.file	"filehandle.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 filehandle.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
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
	.section	.rodata
.LC0:
	.string	"%s\n"
	.text
	.globl	error
	.type	error, @function
error:
.LFB2:
	.file 1 "filehandle.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# text, text
	movl	%esi, -12(%rbp)	# code, code
	.loc 1 40 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	-8(%rbp), %rdx	# text, tmp60
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.0,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 41 0
	movl	$0, %eax	#,
	call	flush_dpb	#
	.loc 1 42 0
	movl	-12(%rbp), %eax	# code, tmp61
	movl	%eax, %edi	# tmp61,
	call	exit	#
	.cfi_endproc
.LFE2:
	.size	error, .-error
	.globl	write_PPS
	.type	write_PPS, @function
write_PPS:
.LFB3:
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# len, len
	movl	%esi, -24(%rbp)	# PPS_id, PPS_id
	.loc 1 55 0
	movq	$0, -8(%rbp)	#, nalu
	.loc 1 56 0
	movl	-24(%rbp), %eax	# PPS_id, tmp63
	movl	%eax, %edi	# tmp63,
	call	GeneratePic_parameter_set_NALU	#
	movq	%rax, -8(%rbp)	# tmp64, nalu
	.loc 1 57 0
	movq	WriteNALU(%rip), %rax	# WriteNALU, WriteNALU.1
	movq	-8(%rbp), %rdx	# nalu, tmp65
	movq	%rdx, %rdi	# tmp65,
	call	*%rax	# WriteNALU.1
	addl	%eax, -20(%rbp)	# D.4365, len
	.loc 1 58 0
	movq	-8(%rbp), %rax	# nalu, tmp66
	movq	%rax, %rdi	# tmp66,
	call	FreeNALU	#
	.loc 1 60 0
	movl	-20(%rbp), %eax	# len, D.4365
	.loc 1 61 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	write_PPS, .-write_PPS
	.section	.rodata
	.align 8
.LC1:
	.string	"Output File Mode %d not supported"
	.text
	.globl	start_sequence
	.type	start_sequence, @function
start_sequence:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 72 0
	movl	$0, -16(%rbp)	#, len
	movq	input(%rip), %rax	# input, input.3
	movl	60(%rax), %eax	# input.3_6->GenerateMultiplePPS, D.4366
	testl	%eax, %eax	# D.4366
	je	.L5	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.2
	jmp	.L6	#
.L5:
	.loc 1 72 0 discriminator 2
	movl	$1, %eax	#, iftmp.2
.L6:
	.loc 1 72 0 discriminator 3
	movl	%eax, -12(%rbp)	# iftmp.2, total_pps
	.loc 1 76 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.4
	movl	2360(%rax), %eax	# input.4_11->of_mode, D.4366
	testl	%eax, %eax	# D.4366
	je	.L8	#,
	cmpl	$1, %eax	#, D.4366
	je	.L9	#,
	.loc 1 76 0 is_stmt 0
	jmp	.L14	#
.L8:
	.loc 1 79 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.5
	addq	$424, %rax	#, D.4367
	movq	%rax, %rdi	# D.4367,
	call	OpenAnnexbFile	#
	.loc 1 80 0
	movq	$WriteAnnexbNALU, WriteNALU(%rip)	#, WriteNALU
	.loc 1 81 0
	jmp	.L10	#
.L9:
	.loc 1 83 0
	movq	input(%rip), %rax	# input, input.6
	addq	$424, %rax	#, D.4367
	movq	%rax, %rdi	# D.4367,
	call	OpenRTPFile	#
	.loc 1 84 0
	movq	$WriteRTPNALU, WriteNALU(%rip)	#, WriteNALU
	.loc 1 85 0
	jmp	.L10	#
.L14:
	.loc 1 87 0
	movq	input(%rip), %rax	# input, input.7
	movl	2360(%rax), %eax	# input.7_17->of_mode, D.4366
	movl	%eax, %ecx	# D.4366,
	movl	$.LC1, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 88 0
	movl	$1, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 89 0
	movl	$1, %eax	#, D.4366
	jmp	.L11	#
.L10:
	.loc 1 97 0
	movq	$0, -8(%rbp)	#, nalu
	.loc 1 98 0
	movl	$0, %eax	#,
	call	GenerateSeq_parameter_set_NALU	#
	movq	%rax, -8(%rbp)	# tmp75, nalu
	.loc 1 99 0
	movq	WriteNALU(%rip), %rax	# WriteNALU, WriteNALU.8
	movq	-8(%rbp), %rdx	# nalu, tmp76
	movq	%rdx, %rdi	# tmp76,
	call	*%rax	# WriteNALU.8
	addl	%eax, -16(%rbp)	# D.4366, len
	.loc 1 100 0
	movq	-8(%rbp), %rax	# nalu, tmp77
	movq	%rax, %rdi	# tmp77,
	call	FreeNALU	#
	.loc 1 103 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 105 0 discriminator 2
	movl	-20(%rbp), %edx	# i, tmp78
	movl	-16(%rbp), %eax	# len, tmp79
	movl	%edx, %esi	# tmp78,
	movl	%eax, %edi	# tmp79,
	call	write_PPS	#
	movl	%eax, -16(%rbp)	# tmp80, len
	.loc 1 103 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L12:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp81
	cmpl	-12(%rbp), %eax	# total_pps, tmp81
	jl	.L13	#,
	.loc 1 107 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.9
	movl	-16(%rbp), %edx	# len, tmp82
	movl	%edx, 1492(%rax)	# tmp82, stats.9_28->bit_ctr_parametersets_n
	.loc 1 108 0
	movl	$0, %eax	#, D.4366
.L11:
	.loc 1 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	start_sequence, .-start_sequence
	.globl	terminate_sequence
	.type	terminate_sequence, @function
terminate_sequence:
.LFB5:
	.loc 1 119 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 125 0
	movq	input(%rip), %rax	# input, input.10
	movl	2360(%rax), %eax	# input.10_2->of_mode, D.4369
	testl	%eax, %eax	# D.4369
	je	.L17	#,
	cmpl	$1, %eax	#, D.4369
	je	.L18	#,
	jmp	.L21	#
.L17:
	.loc 1 128 0
	movl	$0, %eax	#,
	call	CloseAnnexbFile	#
	.loc 1 129 0
	nop
	.loc 1 138 0
	movl	$1, %eax	#, D.4369
	jmp	.L20	#
.L18:
	.loc 1 131 0
	movl	$0, %eax	#,
	call	CloseRTPFile	#
	.loc 1 132 0
	movl	$0, %eax	#, D.4369
	jmp	.L20	#
.L21:
	.loc 1 134 0
	movq	input(%rip), %rax	# input, input.11
	movl	2360(%rax), %eax	# input.11_6->of_mode, D.4369
	movl	%eax, %ecx	# D.4369,
	movl	$.LC1, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 135 0
	movl	$1, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 136 0
	movl	$1, %eax	#, D.4369
.L20:
	.loc 1 139 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	terminate_sequence, .-terminate_sequence
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "defines.h"
	.file 6 "global.h"
	.file 7 "nalucommon.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "nalu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf41
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF252
	.byte	0x1
	.long	.LASF253
	.long	.LASF254
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
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x231
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x269
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x26f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x275
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x285
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x28b
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF255
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x269
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x269
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x26f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0xb
	.long	0x95
	.long	0x285
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x231
	.uleb128 0xb
	.long	0x95
	.long	0x29b
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0x1e
	.long	0x46
	.uleb128 0xb
	.long	0x3f
	.long	0x2b6
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29b
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.byte	0x69
	.long	0x2d1
	.uleb128 0xe
	.long	.LASF49
	.sleb128 0
	.uleb128 0xe
	.long	.LASF50
	.sleb128 1
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0x2e1
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF51
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF52
	.uleb128 0xf
	.value	0xe08
	.byte	0x6
	.value	0x295
	.long	0xaf7
	.uleb128 0x9
	.long	.LASF53
	.byte	0x6
	.value	0x297
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF54
	.byte	0x6
	.value	0x298
	.long	0x3f
	.byte	0x4
	.uleb128 0x9
	.long	.LASF55
	.byte	0x6
	.value	0x29a
	.long	0x3f
	.byte	0x8
	.uleb128 0x10
	.string	"qp0"
	.byte	0x6
	.value	0x29b
	.long	0x3f
	.byte	0xc
	.uleb128 0x10
	.string	"qpN"
	.byte	0x6
	.value	0x29c
	.long	0x3f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.value	0x29d
	.long	0x3f
	.byte	0x14
	.uleb128 0x9
	.long	.LASF57
	.byte	0x6
	.value	0x29e
	.long	0x3f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF58
	.byte	0x6
	.value	0x2a0
	.long	0x3f
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF59
	.byte	0x6
	.value	0x2a1
	.long	0x3f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF60
	.byte	0x6
	.value	0x2a4
	.long	0x3f
	.byte	0x24
	.uleb128 0x9
	.long	.LASF61
	.byte	0x6
	.value	0x2a5
	.long	0x3f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF62
	.byte	0x6
	.value	0x2a6
	.long	0x3f
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF63
	.byte	0x6
	.value	0x2a7
	.long	0x3f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF64
	.byte	0x6
	.value	0x2a8
	.long	0x3f
	.byte	0x34
	.uleb128 0x9
	.long	.LASF65
	.byte	0x6
	.value	0x2a9
	.long	0x3f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF66
	.byte	0x6
	.value	0x2aa
	.long	0x3f
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.value	0x2ac
	.long	0x3f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.value	0x2ad
	.long	0x3f
	.byte	0x44
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.value	0x2ae
	.long	0x3f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF70
	.byte	0x6
	.value	0x2af
	.long	0x3f
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF71
	.byte	0x6
	.value	0x2b3
	.long	0xaf7
	.byte	0x50
	.uleb128 0x9
	.long	.LASF72
	.byte	0x6
	.value	0x2b4
	.long	0xaf7
	.byte	0x90
	.uleb128 0x9
	.long	.LASF73
	.byte	0x6
	.value	0x2b5
	.long	0x3f
	.byte	0xd0
	.uleb128 0x9
	.long	.LASF74
	.byte	0x6
	.value	0x2b6
	.long	0x3f
	.byte	0xd4
	.uleb128 0x9
	.long	.LASF75
	.byte	0x6
	.value	0x2b7
	.long	0x3f
	.byte	0xd8
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x2b8
	.long	0x3f
	.byte	0xdc
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x2b9
	.long	0xb0d
	.byte	0xe0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x6
	.value	0x2ba
	.long	0xb0d
	.value	0x1a8
	.uleb128 0x11
	.long	.LASF79
	.byte	0x6
	.value	0x2bb
	.long	0xb0d
	.value	0x270
	.uleb128 0x11
	.long	.LASF80
	.byte	0x6
	.value	0x2bc
	.long	0xb0d
	.value	0x338
	.uleb128 0x11
	.long	.LASF81
	.byte	0x6
	.value	0x2bd
	.long	0xb0d
	.value	0x400
	.uleb128 0x11
	.long	.LASF82
	.byte	0x6
	.value	0x2be
	.long	0x3f
	.value	0x4c8
	.uleb128 0x11
	.long	.LASF83
	.byte	0x6
	.value	0x2c0
	.long	0x3f
	.value	0x4cc
	.uleb128 0x11
	.long	.LASF84
	.byte	0x6
	.value	0x2c1
	.long	0x3f
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF85
	.byte	0x6
	.value	0x2c4
	.long	0x3f
	.value	0x4d4
	.uleb128 0x12
	.string	"qpB"
	.byte	0x6
	.value	0x2c5
	.long	0x3f
	.value	0x4d8
	.uleb128 0x11
	.long	.LASF86
	.byte	0x6
	.value	0x2c6
	.long	0x3f
	.value	0x4dc
	.uleb128 0x11
	.long	.LASF87
	.byte	0x6
	.value	0x2c7
	.long	0x3f
	.value	0x4e0
	.uleb128 0x11
	.long	.LASF88
	.byte	0x6
	.value	0x2c8
	.long	0x3f
	.value	0x4e4
	.uleb128 0x11
	.long	.LASF89
	.byte	0x6
	.value	0x2ca
	.long	0x3f
	.value	0x4e8
	.uleb128 0x11
	.long	.LASF90
	.byte	0x6
	.value	0x2cb
	.long	0x3f
	.value	0x4ec
	.uleb128 0x11
	.long	.LASF91
	.byte	0x6
	.value	0x2cc
	.long	0x3f
	.value	0x4f0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x6
	.value	0x2cd
	.long	0x3f
	.value	0x4f4
	.uleb128 0x11
	.long	.LASF93
	.byte	0x6
	.value	0x2d1
	.long	0x3f
	.value	0x4f8
	.uleb128 0x11
	.long	.LASF94
	.byte	0x6
	.value	0x2d2
	.long	0x3f
	.value	0x4fc
	.uleb128 0x11
	.long	.LASF95
	.byte	0x6
	.value	0x2d3
	.long	0x3f
	.value	0x500
	.uleb128 0x11
	.long	.LASF96
	.byte	0x6
	.value	0x2d5
	.long	0x3f
	.value	0x504
	.uleb128 0x11
	.long	.LASF97
	.byte	0x6
	.value	0x2d6
	.long	0x3f
	.value	0x508
	.uleb128 0x11
	.long	.LASF98
	.byte	0x6
	.value	0x2d7
	.long	0x3f
	.value	0x50c
	.uleb128 0x11
	.long	.LASF99
	.byte	0x6
	.value	0x2d8
	.long	0x3f
	.value	0x510
	.uleb128 0x11
	.long	.LASF100
	.byte	0x6
	.value	0x2d9
	.long	0x3f
	.value	0x514
	.uleb128 0x11
	.long	.LASF101
	.byte	0x6
	.value	0x2da
	.long	0x3f
	.value	0x518
	.uleb128 0x11
	.long	.LASF102
	.byte	0x6
	.value	0x2db
	.long	0x3f
	.value	0x51c
	.uleb128 0x11
	.long	.LASF103
	.byte	0x6
	.value	0x2dc
	.long	0x3f
	.value	0x520
	.uleb128 0x11
	.long	.LASF104
	.byte	0x6
	.value	0x2dd
	.long	0x3f
	.value	0x524
	.uleb128 0x11
	.long	.LASF105
	.byte	0x6
	.value	0x2de
	.long	0x3f
	.value	0x528
	.uleb128 0x11
	.long	.LASF106
	.byte	0x6
	.value	0x2df
	.long	0xb1d
	.value	0x52c
	.uleb128 0x11
	.long	.LASF107
	.byte	0x6
	.value	0x2e0
	.long	0x3f
	.value	0x92c
	.uleb128 0x11
	.long	.LASF108
	.byte	0x6
	.value	0x2e1
	.long	0x3f
	.value	0x930
	.uleb128 0x11
	.long	.LASF109
	.byte	0x6
	.value	0x2e3
	.long	0x3f
	.value	0x934
	.uleb128 0x11
	.long	.LASF110
	.byte	0x6
	.value	0x2e4
	.long	0x3f
	.value	0x938
	.uleb128 0x11
	.long	.LASF111
	.byte	0x6
	.value	0x2e5
	.long	0x3f
	.value	0x93c
	.uleb128 0x11
	.long	.LASF112
	.byte	0x6
	.value	0x2e7
	.long	0x3f
	.value	0x940
	.uleb128 0x11
	.long	.LASF113
	.byte	0x6
	.value	0x2e8
	.long	0x3f
	.value	0x944
	.uleb128 0x11
	.long	.LASF114
	.byte	0x6
	.value	0x2e9
	.long	0x3f
	.value	0x948
	.uleb128 0x11
	.long	.LASF115
	.byte	0x6
	.value	0x2ea
	.long	0x3f
	.value	0x94c
	.uleb128 0x11
	.long	.LASF116
	.byte	0x6
	.value	0x2eb
	.long	0x3f
	.value	0x950
	.uleb128 0x11
	.long	.LASF117
	.byte	0x6
	.value	0x2ec
	.long	0x3f
	.value	0x954
	.uleb128 0x11
	.long	.LASF118
	.byte	0x6
	.value	0x2ed
	.long	0x3f
	.value	0x958
	.uleb128 0x11
	.long	.LASF119
	.byte	0x6
	.value	0x2ef
	.long	0x3f
	.value	0x95c
	.uleb128 0x11
	.long	.LASF120
	.byte	0x6
	.value	0x2f0
	.long	0x3f
	.value	0x960
	.uleb128 0x11
	.long	.LASF121
	.byte	0x6
	.value	0x2f1
	.long	0x3f
	.value	0x964
	.uleb128 0x11
	.long	.LASF122
	.byte	0x6
	.value	0x2f2
	.long	0x3f
	.value	0x968
	.uleb128 0x11
	.long	.LASF123
	.byte	0x6
	.value	0x2f3
	.long	0x3f
	.value	0x96c
	.uleb128 0x11
	.long	.LASF124
	.byte	0x6
	.value	0x2f4
	.long	0x3f
	.value	0x970
	.uleb128 0x11
	.long	.LASF125
	.byte	0x6
	.value	0x2f5
	.long	0x3f
	.value	0x974
	.uleb128 0x11
	.long	.LASF126
	.byte	0x6
	.value	0x2f7
	.long	0x2e1
	.value	0x978
	.uleb128 0x11
	.long	.LASF127
	.byte	0x6
	.value	0x2f9
	.long	0x3f
	.value	0x980
	.uleb128 0x11
	.long	.LASF128
	.byte	0x6
	.value	0x2fb
	.long	0x3f
	.value	0x984
	.uleb128 0x11
	.long	.LASF129
	.byte	0x6
	.value	0x2fe
	.long	0x3f
	.value	0x988
	.uleb128 0x11
	.long	.LASF130
	.byte	0x6
	.value	0x301
	.long	0x3f
	.value	0x98c
	.uleb128 0x11
	.long	.LASF131
	.byte	0x6
	.value	0x301
	.long	0x3f
	.value	0x990
	.uleb128 0x11
	.long	.LASF132
	.byte	0x6
	.value	0x301
	.long	0x3f
	.value	0x994
	.uleb128 0x11
	.long	.LASF133
	.byte	0x6
	.value	0x302
	.long	0x3f
	.value	0x998
	.uleb128 0x11
	.long	.LASF134
	.byte	0x6
	.value	0x302
	.long	0x3f
	.value	0x99c
	.uleb128 0x11
	.long	.LASF135
	.byte	0x6
	.value	0x304
	.long	0x3f
	.value	0x9a0
	.uleb128 0x11
	.long	.LASF136
	.byte	0x6
	.value	0x305
	.long	0x3f
	.value	0x9a4
	.uleb128 0x11
	.long	.LASF137
	.byte	0x6
	.value	0x306
	.long	0x3f
	.value	0x9a8
	.uleb128 0x11
	.long	.LASF138
	.byte	0x6
	.value	0x309
	.long	0x3f
	.value	0x9ac
	.uleb128 0x11
	.long	.LASF139
	.byte	0x6
	.value	0x30a
	.long	0xb0d
	.value	0x9b0
	.uleb128 0x11
	.long	.LASF140
	.byte	0x6
	.value	0x30b
	.long	0xb0d
	.value	0xa78
	.uleb128 0x11
	.long	.LASF141
	.byte	0x6
	.value	0x30e
	.long	0x3f
	.value	0xb40
	.uleb128 0x11
	.long	.LASF142
	.byte	0x6
	.value	0x30f
	.long	0x3f
	.value	0xb44
	.uleb128 0x11
	.long	.LASF143
	.byte	0x6
	.value	0x311
	.long	0x3f
	.value	0xb48
	.uleb128 0x11
	.long	.LASF144
	.byte	0x6
	.value	0x313
	.long	0x3f
	.value	0xb4c
	.uleb128 0x11
	.long	.LASF145
	.byte	0x6
	.value	0x314
	.long	0x3f
	.value	0xb50
	.uleb128 0x11
	.long	.LASF146
	.byte	0x6
	.value	0x315
	.long	0x3f
	.value	0xb54
	.uleb128 0x11
	.long	.LASF147
	.byte	0x6
	.value	0x316
	.long	0x3f
	.value	0xb58
	.uleb128 0x11
	.long	.LASF148
	.byte	0x6
	.value	0x317
	.long	0x3f
	.value	0xb5c
	.uleb128 0x11
	.long	.LASF149
	.byte	0x6
	.value	0x318
	.long	0x3f
	.value	0xb60
	.uleb128 0x11
	.long	.LASF150
	.byte	0x6
	.value	0x319
	.long	0x3f
	.value	0xb64
	.uleb128 0x11
	.long	.LASF151
	.byte	0x6
	.value	0x31b
	.long	0x3f
	.value	0xb68
	.uleb128 0x11
	.long	.LASF152
	.byte	0x6
	.value	0x31d
	.long	0x3f
	.value	0xb6c
	.uleb128 0x11
	.long	.LASF153
	.byte	0x6
	.value	0x31e
	.long	0x3f
	.value	0xb70
	.uleb128 0x11
	.long	.LASF154
	.byte	0x6
	.value	0x31f
	.long	0x3f
	.value	0xb74
	.uleb128 0x11
	.long	.LASF155
	.byte	0x6
	.value	0x320
	.long	0x3f
	.value	0xb78
	.uleb128 0x11
	.long	.LASF156
	.byte	0x6
	.value	0x322
	.long	0x3f
	.value	0xb7c
	.uleb128 0x11
	.long	.LASF157
	.byte	0x6
	.value	0x323
	.long	0x3f
	.value	0xb80
	.uleb128 0x11
	.long	.LASF158
	.byte	0x6
	.value	0x324
	.long	0x3f
	.value	0xb84
	.uleb128 0x11
	.long	.LASF159
	.byte	0x6
	.value	0x327
	.long	0xb0d
	.value	0xb88
	.uleb128 0x11
	.long	.LASF160
	.byte	0x6
	.value	0x328
	.long	0x3f
	.value	0xc50
	.uleb128 0x11
	.long	.LASF161
	.byte	0x6
	.value	0x329
	.long	0x3f
	.value	0xc54
	.uleb128 0x11
	.long	.LASF162
	.byte	0x6
	.value	0x32b
	.long	0x9c
	.value	0xc58
	.uleb128 0x11
	.long	.LASF163
	.byte	0x6
	.value	0x32c
	.long	0x9c
	.value	0xc60
	.uleb128 0x11
	.long	.LASF164
	.byte	0x6
	.value	0x32d
	.long	0x2b6
	.value	0xc68
	.uleb128 0x11
	.long	.LASF165
	.byte	0x6
	.value	0x32e
	.long	0x9c
	.value	0xc70
	.uleb128 0x11
	.long	.LASF166
	.byte	0x6
	.value	0x330
	.long	0x3f
	.value	0xc78
	.uleb128 0x11
	.long	.LASF167
	.byte	0x6
	.value	0x331
	.long	0x3f
	.value	0xc7c
	.uleb128 0x11
	.long	.LASF168
	.byte	0x6
	.value	0x332
	.long	0x3f
	.value	0xc80
	.uleb128 0x11
	.long	.LASF169
	.byte	0x6
	.value	0x334
	.long	0x3f
	.value	0xc84
	.uleb128 0x11
	.long	.LASF170
	.byte	0x6
	.value	0x335
	.long	0x3f
	.value	0xc88
	.uleb128 0x11
	.long	.LASF171
	.byte	0x6
	.value	0x337
	.long	0x3f
	.value	0xc8c
	.uleb128 0x11
	.long	.LASF172
	.byte	0x6
	.value	0x338
	.long	0x3f
	.value	0xc90
	.uleb128 0x11
	.long	.LASF173
	.byte	0x6
	.value	0x339
	.long	0x3f
	.value	0xc94
	.uleb128 0x11
	.long	.LASF174
	.byte	0x6
	.value	0x33a
	.long	0x3f
	.value	0xc98
	.uleb128 0x11
	.long	.LASF175
	.byte	0x6
	.value	0x33b
	.long	0x3f
	.value	0xc9c
	.uleb128 0x11
	.long	.LASF176
	.byte	0x6
	.value	0x33c
	.long	0x3f
	.value	0xca0
	.uleb128 0x11
	.long	.LASF177
	.byte	0x6
	.value	0x33f
	.long	0x3f
	.value	0xca4
	.uleb128 0x11
	.long	.LASF178
	.byte	0x6
	.value	0x340
	.long	0x3f
	.value	0xca8
	.uleb128 0x11
	.long	.LASF179
	.byte	0x6
	.value	0x341
	.long	0x3f
	.value	0xcac
	.uleb128 0x11
	.long	.LASF180
	.byte	0x6
	.value	0x342
	.long	0x3f
	.value	0xcb0
	.uleb128 0x11
	.long	.LASF181
	.byte	0x6
	.value	0x343
	.long	0x3f
	.value	0xcb4
	.uleb128 0x11
	.long	.LASF182
	.byte	0x6
	.value	0x345
	.long	0x3f
	.value	0xcb8
	.uleb128 0x11
	.long	.LASF183
	.byte	0x6
	.value	0x346
	.long	0x2a6
	.value	0xcbc
	.uleb128 0x11
	.long	.LASF184
	.byte	0x6
	.value	0x349
	.long	0x3f
	.value	0xcdc
	.uleb128 0x11
	.long	.LASF185
	.byte	0x6
	.value	0x34c
	.long	0x3f
	.value	0xce0
	.uleb128 0x11
	.long	.LASF186
	.byte	0x6
	.value	0x34d
	.long	0x3f
	.value	0xce4
	.uleb128 0x11
	.long	.LASF187
	.byte	0x6
	.value	0x34e
	.long	0x3f
	.value	0xce8
	.uleb128 0x11
	.long	.LASF188
	.byte	0x6
	.value	0x34f
	.long	0x3f
	.value	0xcec
	.uleb128 0x11
	.long	.LASF189
	.byte	0x6
	.value	0x350
	.long	0x3f
	.value	0xcf0
	.uleb128 0x11
	.long	.LASF190
	.byte	0x6
	.value	0x351
	.long	0x3f
	.value	0xcf4
	.uleb128 0x11
	.long	.LASF191
	.byte	0x6
	.value	0x352
	.long	0x3f
	.value	0xcf8
	.uleb128 0x11
	.long	.LASF192
	.byte	0x6
	.value	0x355
	.long	0x3f
	.value	0xcfc
	.uleb128 0x11
	.long	.LASF193
	.byte	0x6
	.value	0x358
	.long	0x3f
	.value	0xd00
	.uleb128 0x11
	.long	.LASF194
	.byte	0x6
	.value	0x35b
	.long	0x3f
	.value	0xd04
	.uleb128 0x11
	.long	.LASF195
	.byte	0x6
	.value	0x35c
	.long	0xb2e
	.value	0xd08
	.uleb128 0x11
	.long	.LASF196
	.byte	0x6
	.value	0x35e
	.long	0xb0d
	.value	0xd38
	.uleb128 0x11
	.long	.LASF197
	.byte	0x6
	.value	0x35f
	.long	0x3f
	.value	0xe00
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0xb0d
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xb1d
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xb2e
	.uleb128 0x13
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0xb
	.long	0x2e1
	.long	0xb3e
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	.LASF198
	.byte	0x6
	.value	0x361
	.long	0x2ef
	.uleb128 0xf
	.value	0x5d8
	.byte	0x6
	.value	0x44d
	.long	0xd27
	.uleb128 0x9
	.long	.LASF199
	.byte	0x6
	.value	0x44f
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF200
	.byte	0x6
	.value	0x450
	.long	0x3f
	.byte	0x4
	.uleb128 0x9
	.long	.LASF201
	.byte	0x6
	.value	0x451
	.long	0x2e8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF202
	.byte	0x6
	.value	0x452
	.long	0x2e8
	.byte	0xc
	.uleb128 0x9
	.long	.LASF203
	.byte	0x6
	.value	0x453
	.long	0x3f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF204
	.byte	0x6
	.value	0x454
	.long	0x3f
	.byte	0x14
	.uleb128 0x9
	.long	.LASF205
	.byte	0x6
	.value	0x455
	.long	0x3f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF206
	.byte	0x6
	.value	0x456
	.long	0x3f
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF207
	.byte	0x6
	.value	0x457
	.long	0xd27
	.byte	0x20
	.uleb128 0x9
	.long	.LASF208
	.byte	0x6
	.value	0x458
	.long	0xd3d
	.byte	0x48
	.uleb128 0x11
	.long	.LASF209
	.byte	0x6
	.value	0x459
	.long	0xd3d
	.value	0x174
	.uleb128 0x11
	.long	.LASF210
	.byte	0x6
	.value	0x45a
	.long	0x2d1
	.value	0x2a0
	.uleb128 0x11
	.long	.LASF211
	.byte	0x6
	.value	0x45d
	.long	0x9c
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF212
	.byte	0x6
	.value	0x45e
	.long	0x9c
	.value	0x2b8
	.uleb128 0x11
	.long	.LASF213
	.byte	0x6
	.value	0x45f
	.long	0x3f
	.value	0x2c0
	.uleb128 0x11
	.long	.LASF214
	.byte	0x6
	.value	0x460
	.long	0x3f
	.value	0x2c4
	.uleb128 0x11
	.long	.LASF215
	.byte	0x6
	.value	0x461
	.long	0x3f
	.value	0x2c8
	.uleb128 0x11
	.long	.LASF216
	.byte	0x6
	.value	0x462
	.long	0x2e8
	.value	0x2cc
	.uleb128 0x11
	.long	.LASF217
	.byte	0x6
	.value	0x463
	.long	0x2e8
	.value	0x2d0
	.uleb128 0x11
	.long	.LASF218
	.byte	0x6
	.value	0x464
	.long	0x2e8
	.value	0x2d4
	.uleb128 0x11
	.long	.LASF219
	.byte	0x6
	.value	0x466
	.long	0xd3d
	.value	0x2d8
	.uleb128 0x11
	.long	.LASF220
	.byte	0x6
	.value	0x467
	.long	0xd3d
	.value	0x404
	.uleb128 0x11
	.long	.LASF221
	.byte	0x6
	.value	0x468
	.long	0xd53
	.value	0x530
	.uleb128 0x11
	.long	.LASF222
	.byte	0x6
	.value	0x469
	.long	0xd53
	.value	0x544
	.uleb128 0x11
	.long	.LASF223
	.byte	0x6
	.value	0x46a
	.long	0xd53
	.value	0x558
	.uleb128 0x11
	.long	.LASF224
	.byte	0x6
	.value	0x46b
	.long	0xd53
	.value	0x56c
	.uleb128 0x11
	.long	.LASF225
	.byte	0x6
	.value	0x46c
	.long	0xd53
	.value	0x580
	.uleb128 0x11
	.long	.LASF226
	.byte	0x6
	.value	0x46d
	.long	0xd53
	.value	0x594
	.uleb128 0x11
	.long	.LASF227
	.byte	0x6
	.value	0x46e
	.long	0xd53
	.value	0x5a8
	.uleb128 0x11
	.long	.LASF228
	.byte	0x6
	.value	0x470
	.long	0x3f
	.value	0x5bc
	.uleb128 0x11
	.long	.LASF229
	.byte	0x6
	.value	0x471
	.long	0x3f
	.value	0x5c0
	.uleb128 0x11
	.long	.LASF230
	.byte	0x6
	.value	0x472
	.long	0x9c
	.value	0x5c8
	.uleb128 0x11
	.long	.LASF231
	.byte	0x6
	.value	0x473
	.long	0x3f
	.value	0x5d0
	.uleb128 0x11
	.long	.LASF232
	.byte	0x6
	.value	0x474
	.long	0x3f
	.value	0x5d4
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0xd3d
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0xd53
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.uleb128 0xc
	.long	0x86
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.long	0x3f
	.long	0xd63
	.uleb128 0xc
	.long	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.long	.LASF233
	.byte	0x6
	.value	0x475
	.long	0xb4a
	.uleb128 0x15
	.byte	0x20
	.byte	0x7
	.byte	0x28
	.long	0xdcc
	.uleb128 0x8
	.long	.LASF234
	.byte	0x7
	.byte	0x2a
	.long	0x3f
	.byte	0
	.uleb128 0x16
	.string	"len"
	.byte	0x7
	.byte	0x2b
	.long	0x54
	.byte	0x4
	.uleb128 0x8
	.long	.LASF235
	.byte	0x7
	.byte	0x2c
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x7
	.byte	0x2d
	.long	0x3f
	.byte	0xc
	.uleb128 0x8
	.long	.LASF237
	.byte	0x7
	.byte	0x2e
	.long	0x3f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF238
	.byte	0x7
	.byte	0x2f
	.long	0x3f
	.byte	0x14
	.uleb128 0x16
	.string	"buf"
	.byte	0x7
	.byte	0x30
	.long	0x2b6
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF239
	.byte	0x7
	.byte	0x31
	.long	0xd6f
	.uleb128 0x17
	.long	.LASF243
	.byte	0x1
	.byte	0x26
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xe11
	.uleb128 0x18
	.long	.LASF240
	.byte	0x1
	.byte	0x26
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF241
	.byte	0x1
	.byte	0x26
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.long	.LASF256
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5d
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF242
	.byte	0x1
	.byte	0x34
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF245
	.byte	0x1
	.byte	0x36
	.long	0xe5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdcc
	.uleb128 0x1c
	.long	.LASF244
	.byte	0x1
	.byte	0x46
	.long	0x3f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xebb
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.long	.LASF246
	.byte	0x1
	.byte	0x48
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF245
	.byte	0x1
	.byte	0x49
	.long	0xe5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF257
	.byte	0x1
	.byte	0x76
	.long	0x3f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	.LASF247
	.byte	0x8
	.byte	0xaa
	.long	0x26f
	.uleb128 0xb
	.long	0x95
	.long	0xef4
	.uleb128 0x13
	.long	0x86
	.value	0x12b
	.byte	0
	.uleb128 0x20
	.long	.LASF248
	.byte	0x6
	.value	0x222
	.long	0xee3
	.uleb128 0x20
	.long	.LASF249
	.byte	0x6
	.value	0x4b7
	.long	0xf0c
	.uleb128 0x6
	.byte	0x8
	.long	0xb3e
	.uleb128 0x20
	.long	.LASF250
	.byte	0x6
	.value	0x4b9
	.long	0xf1e
	.uleb128 0x6
	.byte	0x8
	.long	0xd63
	.uleb128 0x21
	.long	0x3f
	.long	0xf33
	.uleb128 0x22
	.long	0xe5d
	.byte	0
	.uleb128 0x1f
	.long	.LASF251
	.byte	0x9
	.byte	0x1a
	.long	0xf3e
	.uleb128 0x6
	.byte	0x8
	.long	0xf24
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
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
.LASF216:
	.string	"bitrate_I"
.LASF181:
	.string	"channel_type"
.LASF217:
	.string	"bitrate_P"
.LASF182:
	.string	"ScalingMatrixPresentFlag"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF257:
	.string	"terminate_sequence"
.LASF108:
	.string	"PocMemoryManagement"
.LASF59:
	.string	"search_range"
.LASF25:
	.string	"_IO_save_end"
.LASF76:
	.string	"infile_header"
.LASF207:
	.string	"b8_mode_0_use"
.LASF128:
	.string	"full_search"
.LASF176:
	.string	"DisplayEncParams"
.LASF18:
	.string	"_IO_write_base"
.LASF34:
	.string	"_lock"
.LASF123:
	.string	"Intra16x16ParDisable"
.LASF250:
	.string	"stats"
.LASF239:
	.string	"NALU_t"
.LASF85:
	.string	"successive_Bframe"
.LASF96:
	.string	"WeightedPrediction"
.LASF23:
	.string	"_IO_save_base"
.LASF153:
	.string	"LFDisableIdc"
.LASF88:
	.string	"directInferenceFlag"
.LASF90:
	.string	"BiPredMERefinements"
.LASF171:
	.string	"context_init_method"
.LASF173:
	.string	"AllowTransform8x8"
.LASF74:
	.string	"slice_argument"
.LASF27:
	.string	"_chain"
.LASF116:
	.string	"InterSearch8x4"
.LASF115:
	.string	"InterSearch8x8"
.LASF149:
	.string	"NumFramesInELSubSeq"
.LASF31:
	.string	"_cur_column"
.LASF102:
	.string	"RDBSliceWeightOnly"
.LASF66:
	.string	"GenerateMultiplePPS"
.LASF224:
	.string	"tmp_bit_use_cbp"
.LASF191:
	.string	"cr_qp_index_offset"
.LASF236:
	.string	"nal_unit_type"
.LASF60:
	.string	"num_ref_frames"
.LASF6:
	.string	"long int"
.LASF137:
	.string	"nobskip"
.LASF237:
	.string	"nal_reference_idc"
.LASF210:
	.string	"intra_chroma_mode"
.LASF44:
	.string	"_IO_marker"
.LASF98:
	.string	"UseWeightedReferenceME"
.LASF121:
	.string	"Intra4x4DiagDisable"
.LASF151:
	.string	"RandomIntraMBRefresh"
.LASF253:
	.string	"filehandle.c"
.LASF198:
	.string	"InputParameters"
.LASF152:
	.string	"LFSendParameters"
.LASF243:
	.string	"error"
.LASF242:
	.string	"PPS_id"
.LASF246:
	.string	"total_pps"
.LASF4:
	.string	"signed char"
.LASF43:
	.string	"_IO_FILE"
.LASF110:
	.string	"of_mode"
.LASF80:
	.string	"TraceFile"
.LASF197:
	.string	"OffsetMatrixPresentFlag"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"infile"
.LASF245:
	.string	"nalu"
.LASF244:
	.string	"start_sequence"
.LASF89:
	.string	"BiPredMotionEstimation"
.LASF165:
	.string	"run_length_minus1"
.LASF70:
	.string	"intra_upd"
.LASF235:
	.string	"max_size"
.LASF158:
	.string	"SPPercentageThreshold"
.LASF53:
	.string	"ProfileIDC"
.LASF127:
	.string	"chroma_qp_index_offset"
.LASF223:
	.string	"bit_use_header"
.LASF11:
	.string	"char"
.LASF64:
	.string	"Log2MaxFrameNum"
.LASF177:
	.string	"RCEnable"
.LASF100:
	.string	"RDPictureIntra"
.LASF63:
	.string	"B_List1_refs"
.LASF255:
	.string	"_IO_lock_t"
.LASF86:
	.string	"qpBRSOffset"
.LASF156:
	.string	"SparePictureOption"
.LASF130:
	.string	"qpN2"
.LASF82:
	.string	"intra_period"
.LASF118:
	.string	"InterSearch4x4"
.LASF117:
	.string	"InterSearch4x8"
.LASF254:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF15:
	.string	"_IO_read_ptr"
.LASF133:
	.string	"qp02"
.LASF183:
	.string	"ScalingListPresentFlag"
.LASF103:
	.string	"SkipIntraInInterSlices"
.LASF47:
	.string	"_pos"
.LASF238:
	.string	"forbidden_bit"
.LASF163:
	.string	"bottom_right"
.LASF97:
	.string	"WeightedBiprediction"
.LASF240:
	.string	"text"
.LASF249:
	.string	"input"
.LASF140:
	.string	"LeakyBucketParamFile"
.LASF26:
	.string	"_markers"
.LASF55:
	.string	"no_frames"
.LASF67:
	.string	"img_width"
.LASF107:
	.string	"PyramidRefReorder"
.LASF73:
	.string	"slice_mode"
.LASF112:
	.string	"InterSearch16x16"
.LASF162:
	.string	"top_left"
.LASF113:
	.string	"InterSearch16x8"
.LASF219:
	.string	"mode_use"
.LASF172:
	.string	"model_number"
.LASF91:
	.string	"BiPredMESearchRange"
.LASF220:
	.string	"bit_use_mode"
.LASF35:
	.string	"_offset"
.LASF180:
	.string	"basicunit"
.LASF141:
	.string	"PicInterlace"
.LASF106:
	.string	"ExplicitPyramidFormat"
.LASF192:
	.string	"lossless_qpprime_y_zero_flag"
.LASF81:
	.string	"QmatrixFile"
.LASF99:
	.string	"RDPictureDecision"
.LASF54:
	.string	"LevelIDC"
.LASF222:
	.string	"bit_use_mb_type"
.LASF0:
	.string	"long unsigned int"
.LASF178:
	.string	"bit_rate"
.LASF29:
	.string	"_flags2"
.LASF226:
	.string	"bit_use_coeffC"
.LASF65:
	.string	"ResendPPS"
.LASF256:
	.string	"write_PPS"
.LASF17:
	.string	"_IO_read_base"
.LASF225:
	.string	"bit_use_coeffY"
.LASF42:
	.string	"_unused2"
.LASF232:
	.string	"bit_ctr_parametersets_n"
.LASF75:
	.string	"UseConstrainedIntraPred"
.LASF233:
	.string	"StatParameters"
.LASF30:
	.string	"_old_offset"
.LASF57:
	.string	"hadamard"
.LASF147:
	.string	"NoOfDecoders"
.LASF154:
	.string	"LFAlphaC0Offset"
.LASF150:
	.string	"NumFrameIn2ndIGOP"
.LASF212:
	.string	"bit_use_mode_Bframe"
.LASF83:
	.string	"idr_enable"
.LASF84:
	.string	"start_frame"
.LASF234:
	.string	"startcodeprefix_len"
.LASF12:
	.string	"long long int"
.LASF227:
	.string	"bit_use_delta_quant"
.LASF155:
	.string	"LFBetaOffset"
.LASF51:
	.string	"double"
.LASF20:
	.string	"_IO_write_end"
.LASF157:
	.string	"SPDetectionThreshold"
.LASF193:
	.string	"residue_transform_flag"
.LASF142:
	.string	"MbInterlace"
.LASF229:
	.string	"em_prev_bits_fld"
.LASF94:
	.string	"qpsp"
.LASF52:
	.string	"float"
.LASF175:
	.string	"ReportFrameStats"
.LASF105:
	.string	"PyramidCoding"
.LASF109:
	.string	"symbol_mode"
.LASF21:
	.string	"_IO_buf_base"
.LASF3:
	.string	"unsigned int"
.LASF206:
	.string	"bit_ctr_emulationprevention"
.LASF79:
	.string	"ReconFile"
.LASF93:
	.string	"sp_periodicity"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF46:
	.string	"_sbuf"
.LASF168:
	.string	"slice_group_change_cycle"
.LASF195:
	.string	"LambdaWeight"
.LASF201:
	.string	"bitr"
.LASF138:
	.string	"NumberLeakyBuckets"
.LASF14:
	.string	"_flags"
.LASF125:
	.string	"ChromaIntraDisable"
.LASF124:
	.string	"Intra16x16PlaneDisable"
.LASF251:
	.string	"WriteNALU"
.LASF95:
	.string	"qpsp_pred"
.LASF41:
	.string	"_mode"
.LASF208:
	.string	"mode_use_transform_8x8"
.LASF170:
	.string	"pic_order_cnt_type"
.LASF252:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF58:
	.string	"hadamardqpel"
.LASF120:
	.string	"Intra4x4ParDisable"
.LASF139:
	.string	"LeakyBucketRateFile"
.LASF68:
	.string	"img_height"
.LASF72:
	.string	"part_size"
.LASF111:
	.string	"partition_mode"
.LASF248:
	.string	"errortext"
.LASF159:
	.string	"SliceGroupConfigFileName"
.LASF143:
	.string	"IntraBottom"
.LASF215:
	.string	"bit_ctr_B"
.LASF196:
	.string	"QOffsetMatrixFile"
.LASF62:
	.string	"B_List0_refs"
.LASF213:
	.string	"bit_ctr_I"
.LASF214:
	.string	"bit_ctr_P"
.LASF49:
	.string	"PAR_OF_ANNEXB"
.LASF204:
	.string	"bit_ctr_n"
.LASF13:
	.string	"long long unsigned int"
.LASF8:
	.string	"__off_t"
.LASF132:
	.string	"qp2start"
.LASF230:
	.string	"em_prev_bits"
.LASF136:
	.string	"disthres"
.LASF179:
	.string	"SeinitialQP"
.LASF228:
	.string	"em_prev_bits_frm"
.LASF189:
	.string	"rgb_input_flag"
.LASF61:
	.string	"P_List0_refs"
.LASF148:
	.string	"RestrictRef"
.LASF24:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_shortbuf"
.LASF203:
	.string	"bit_ctr"
.LASF161:
	.string	"slice_group_map_type"
.LASF199:
	.string	"quant0"
.LASF200:
	.string	"quant1"
.LASF45:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF241:
	.string	"code"
.LASF134:
	.string	"qpBRS2Offset"
.LASF144:
	.string	"LossRateA"
.LASF145:
	.string	"LossRateB"
.LASF146:
	.string	"LossRateC"
.LASF221:
	.string	"bit_use_stuffingBits"
.LASF22:
	.string	"_IO_buf_end"
.LASF188:
	.string	"img_width_cr"
.LASF71:
	.string	"blc_size"
.LASF209:
	.string	"mode_use_transform_4x4"
.LASF211:
	.string	"mode_use_Bframe"
.LASF48:
	.string	"byte"
.LASF104:
	.string	"BRefPictures"
.LASF247:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF69:
	.string	"yuv_format"
.LASF184:
	.string	"FMEnable"
.LASF169:
	.string	"redundant_slice_flag"
.LASF185:
	.string	"BitDepthLuma"
.LASF32:
	.string	"_vtable_offset"
.LASF135:
	.string	"rdopt"
.LASF119:
	.string	"IntraDisableInterOnly"
.LASF114:
	.string	"InterSearch8x16"
.LASF160:
	.string	"num_slice_groups_minus1"
.LASF231:
	.string	"bit_ctr_parametersets"
.LASF78:
	.string	"outfile"
.LASF16:
	.string	"_IO_read_end"
.LASF174:
	.string	"LowPassForIntra8x8"
.LASF122:
	.string	"Intra4x4DirDisable"
.LASF131:
	.string	"qpB2"
.LASF186:
	.string	"BitDepthChroma"
.LASF28:
	.string	"_fileno"
.LASF92:
	.string	"BiPredMESubPel"
.LASF50:
	.string	"PAR_OF_RTP"
.LASF2:
	.string	"short unsigned int"
.LASF129:
	.string	"last_frame"
.LASF87:
	.string	"direct_spatial_mv_pred_flag"
.LASF56:
	.string	"jumpd"
.LASF202:
	.string	"bitrate"
.LASF19:
	.string	"_IO_write_ptr"
.LASF187:
	.string	"img_height_cr"
.LASF167:
	.string	"slice_group_change_rate_minus1"
.LASF164:
	.string	"slice_group_id"
.LASF166:
	.string	"slice_group_change_direction_flag"
.LASF126:
	.string	"FrameRate"
.LASF101:
	.string	"RDPSliceWeightOnly"
.LASF190:
	.string	"cb_qp_index_offset"
.LASF194:
	.string	"UseExplicitLambdaParams"
.LASF218:
	.string	"bitrate_B"
.LASF205:
	.string	"bit_slice"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
