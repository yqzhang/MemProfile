	.file	"output.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 output.c -mtune=generic -march=x86-64
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
	.section	.rodata
.LC0:
	.string	"w"
.LC1:
	.string	"()\n"
.LC2:
	.string	"***\n"
.LC3:
	.string	"%d\n"
	.text
	.globl	write_circulations
	.type	write_circulations, @function
write_circulations:
.LFB2:
	.file 1 "output.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# outfile, outfile
	movq	%rsi, -64(%rbp)	# net, net
	.loc 1 40 0
	movq	$0, -16(%rbp)	#, out
	.loc 1 44 0
	movq	-64(%rbp), %rax	# net, tmp83
	movq	576(%rax), %rdx	# net_6(D)->stop_arcs, D.4725
	movq	-64(%rbp), %rax	# net, tmp84
	movq	440(%rax), %rax	# net_6(D)->m_impl, D.4724
	salq	$6, %rax	#, D.4726
	negq	%rax	# D.4727
	addq	%rdx, %rax	# D.4725, tmp85
	movq	%rax, -8(%rbp)	# tmp85, first_impl
	.loc 1 46 0
	movq	-56(%rbp), %rax	# outfile, tmp86
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	fopen	#
	movq	%rax, -16(%rbp)	# tmp87, out
	cmpq	$0, -16(%rbp)	#, out
	jne	.L2	#,
	.loc 1 47 0
	movq	$-1, %rax	#, D.4724
	jmp	.L3	#
.L2:
	.loc 1 49 0
	movq	-64(%rbp), %rax	# net, tmp88
	movq	%rax, %rdi	# tmp88,
	call	refresh_neighbour_lists	#
	.loc 1 51 0
	movq	-64(%rbp), %rax	# net, tmp89
	movq	552(%rax), %rcx	# net_6(D)->nodes, D.4728
	movq	-64(%rbp), %rax	# net, tmp90
	movq	400(%rax), %rax	# net_6(D)->n, D.4724
	movq	%rax, %rdx	# D.4724, D.4726
	movq	%rdx, %rax	# D.4726, tmp91
	addq	%rax, %rax	# tmp91
	addq	%rdx, %rax	# D.4726, tmp91
	salq	$2, %rax	#, tmp91
	addq	%rdx, %rax	# D.4726, tmp91
	salq	$3, %rax	#, tmp92
	addq	%rcx, %rax	# D.4728, D.4728
	movq	56(%rax), %rax	# _20->firstout, tmp93
	movq	%rax, -40(%rbp)	# tmp93, block
	jmp	.L4	#
.L15:
	.loc 1 53 0
	movq	-40(%rbp), %rax	# block, tmp94
	movq	48(%rax), %rax	# block_1->flow, D.4724
	testq	%rax, %rax	# D.4724
	je	.L5	#,
	.loc 1 55 0
	movq	-16(%rbp), %rax	# out, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 57 0
	movq	-40(%rbp), %rax	# block, tmp96
	movq	%rax, -32(%rbp)	# tmp96, arc
	.loc 1 58 0
	jmp	.L6	#
.L14:
	.loc 1 60 0
	movq	-32(%rbp), %rax	# arc, tmp97
	cmpq	-8(%rbp), %rax	# first_impl, tmp97
	jb	.L7	#,
	.loc 1 61 0
	movq	-16(%rbp), %rax	# out, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
.L7:
	.loc 1 63 0
	movq	-32(%rbp), %rax	# arc, tmp99
	movq	16(%rax), %rax	# arc_2->head, D.4728
	movl	96(%rax), %eax	# _24->number, D.4729
	negl	%eax	# D.4729
	movl	%eax, %edx	# D.4729, D.4729
	movq	-16(%rbp), %rax	# out, tmp100
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 64 0
	movq	-32(%rbp), %rax	# arc, tmp101
	movq	16(%rax), %rcx	# arc_2->head, D.4728
	movq	-64(%rbp), %rax	# net, tmp102
	movq	408(%rax), %rax	# net_6(D)->n_trips, D.4724
	movq	%rax, %rdx	# D.4724, D.4726
	movq	%rdx, %rax	# D.4726, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# D.4726, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# D.4726, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# D.4728, D.4728
	movq	56(%rax), %rax	# _31->firstout, tmp105
	movq	%rax, -24(%rbp)	# tmp105, arc2
	.loc 1 65 0
	jmp	.L8	#
.L11:
	.loc 1 66 0
	movq	-24(%rbp), %rax	# arc2, tmp106
	movq	48(%rax), %rax	# arc2_3->flow, D.4724
	testq	%rax, %rax	# D.4724
	je	.L9	#,
	.loc 1 67 0
	jmp	.L10	#
.L9:
	.loc 1 65 0
	movq	-24(%rbp), %rax	# arc2, tmp107
	movq	32(%rax), %rax	# arc2_3->nextout, tmp108
	movq	%rax, -24(%rbp)	# tmp108, arc2
.L8:
	.loc 1 65 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, arc2
	jne	.L11	#,
.L10:
	.loc 1 68 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, arc2
	jne	.L12	#,
	.loc 1 70 0
	movq	-16(%rbp), %rax	# out, tmp109
	movq	%rax, %rdi	# tmp109,
	call	fclose	#
	.loc 1 71 0
	movq	$-1, %rax	#, D.4724
	jmp	.L3	#
.L12:
	.loc 1 74 0
	movq	-24(%rbp), %rax	# arc2, tmp110
	movq	16(%rax), %rax	# arc2_3->head, D.4728
	movl	96(%rax), %eax	# _36->number, D.4729
	testl	%eax, %eax	# D.4729
	je	.L13	#,
	.loc 1 75 0
	movq	-24(%rbp), %rax	# arc2, tmp111
	movq	%rax, -32(%rbp)	# tmp111, arc
	jmp	.L6	#
.L13:
	.loc 1 77 0
	movq	$0, -32(%rbp)	#, arc
.L6:
	.loc 1 58 0 discriminator 1
	cmpq	$0, -32(%rbp)	#, arc
	jne	.L14	#,
.L5:
	.loc 1 51 0
	movq	-40(%rbp), %rax	# block, tmp112
	movq	32(%rax), %rax	# block_1->nextout, tmp113
	movq	%rax, -40(%rbp)	# tmp113, block
.L4:
	.loc 1 51 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, block
	jne	.L15	#,
	.loc 1 84 0 is_stmt 1
	movq	-16(%rbp), %rax	# out, tmp114
	movq	%rax, %rdi	# tmp114,
	call	fclose	#
	.loc 1 86 0
	movl	$0, %eax	#, D.4724
.L3:
	.loc 1 87 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	write_circulations, .-write_circulations
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x651
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF111
	.byte	0x1
	.long	.LASF112
	.long	.LASF113
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
	.long	.LASF114
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x45
	.long	0x69
	.uleb128 0x7
	.long	.LASF53
	.byte	0x68
	.byte	0x6
	.byte	0x6b
	.long	0x379
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x6d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x6e
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x6f
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x70
	.long	0x379
	.byte	0x18
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x71
	.long	0x379
	.byte	0x20
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x72
	.long	0x379
	.byte	0x28
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x73
	.long	0x402
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x74
	.long	0x402
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x74
	.long	0x402
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x75
	.long	0x402
	.byte	0x48
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x76
	.long	0x2ae
	.byte	0x50
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x77
	.long	0x69
	.byte	0x58
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x78
	.long	0x62
	.byte	0x60
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x79
	.long	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x6
	.byte	0x64
	.long	0x384
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF69
	.byte	0x6
	.byte	0x66
	.long	0x395
	.uleb128 0xd
	.string	"arc"
	.byte	0x40
	.byte	0x6
	.byte	0x7e
	.long	0x402
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x81
	.long	0x379
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x81
	.long	0x379
	.byte	0x10
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x82
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x83
	.long	0x402
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x83
	.long	0x402
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x84
	.long	0x2ae
	.byte	0x30
	.uleb128 0x8
	.long	.LASF76
	.byte	0x6
	.byte	0x85
	.long	0x2b9
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6
	.byte	0x67
	.long	0x40d
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0xe
	.long	.LASF78
	.value	0x270
	.byte	0x6
	.byte	0x8a
	.long	0x5a1
	.uleb128 0x8
	.long	.LASF79
	.byte	0x6
	.byte	0x8c
	.long	0x5a1
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x6
	.byte	0x8d
	.long	0x5a1
	.byte	0xc8
	.uleb128 0xf
	.string	"n"
	.byte	0x6
	.byte	0x8e
	.long	0x69
	.value	0x190
	.uleb128 0x10
	.long	.LASF81
	.byte	0x6
	.byte	0x8e
	.long	0x69
	.value	0x198
	.uleb128 0x10
	.long	.LASF82
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1a0
	.uleb128 0xf
	.string	"m"
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF83
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF85
	.byte	0x6
	.byte	0x90
	.long	0x69
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF86
	.byte	0x6
	.byte	0x90
	.long	0x69
	.value	0x1c8
	.uleb128 0x10
	.long	.LASF87
	.byte	0x6
	.byte	0x92
	.long	0x69
	.value	0x1d0
	.uleb128 0x10
	.long	.LASF88
	.byte	0x6
	.byte	0x93
	.long	0x69
	.value	0x1d8
	.uleb128 0x10
	.long	.LASF89
	.byte	0x6
	.byte	0x94
	.long	0x69
	.value	0x1e0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x6
	.byte	0x95
	.long	0x69
	.value	0x1e8
	.uleb128 0xf
	.string	"eps"
	.byte	0x6
	.byte	0x96
	.long	0x69
	.value	0x1f0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x6
	.byte	0x97
	.long	0x69
	.value	0x1f8
	.uleb128 0x10
	.long	.LASF92
	.byte	0x6
	.byte	0x98
	.long	0x69
	.value	0x200
	.uleb128 0x10
	.long	.LASF93
	.byte	0x6
	.byte	0x99
	.long	0x69
	.value	0x208
	.uleb128 0x10
	.long	.LASF94
	.byte	0x6
	.byte	0x9a
	.long	0x69
	.value	0x210
	.uleb128 0x10
	.long	.LASF95
	.byte	0x6
	.byte	0x9b
	.long	0x299
	.value	0x218
	.uleb128 0x10
	.long	.LASF96
	.byte	0x6
	.byte	0x9c
	.long	0x2b9
	.value	0x220
	.uleb128 0x10
	.long	.LASF97
	.byte	0x6
	.byte	0x9d
	.long	0x379
	.value	0x228
	.uleb128 0x10
	.long	.LASF98
	.byte	0x6
	.byte	0x9d
	.long	0x379
	.value	0x230
	.uleb128 0x10
	.long	.LASF99
	.byte	0x6
	.byte	0x9e
	.long	0x402
	.value	0x238
	.uleb128 0x10
	.long	.LASF100
	.byte	0x6
	.byte	0x9e
	.long	0x402
	.value	0x240
	.uleb128 0x10
	.long	.LASF101
	.byte	0x6
	.byte	0x9f
	.long	0x402
	.value	0x248
	.uleb128 0x10
	.long	.LASF102
	.byte	0x6
	.byte	0x9f
	.long	0x402
	.value	0x250
	.uleb128 0x10
	.long	.LASF103
	.byte	0x6
	.byte	0xa0
	.long	0x69
	.value	0x258
	.uleb128 0x10
	.long	.LASF104
	.byte	0x6
	.byte	0xa1
	.long	0x69
	.value	0x260
	.uleb128 0x10
	.long	.LASF105
	.byte	0x6
	.byte	0xa2
	.long	0x69
	.value	0x268
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x5b1
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x6
	.byte	0xa3
	.long	0x413
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1
	.byte	0x1e
	.long	0x69
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x642
	.uleb128 0x12
	.long	.LASF107
	.byte	0x1
	.byte	0x1f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"net"
	.byte	0x1
	.byte	0x20
	.long	0x642
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.string	"out"
	.byte	0x1
	.byte	0x28
	.long	0x648
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.byte	0x29
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"arc"
	.byte	0x1
	.byte	0x2a
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF109
	.byte	0x1
	.byte	0x2b
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.byte	0x2c
	.long	0x64e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b1
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LASF80:
	.string	"clustfile"
.LASF28:
	.string	"_flags2"
.LASF101:
	.string	"dummy_arcs"
.LASF88:
	.string	"dual_unbounded"
.LASF98:
	.string	"stop_nodes"
.LASF16:
	.string	"_IO_read_base"
.LASF94:
	.string	"bigM"
.LASF42:
	.string	"_IO_FILE"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF56:
	.string	"child"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF107:
	.string	"outfile"
.LASF60:
	.string	"basic_arc"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF58:
	.string	"sibling"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"double"
.LASF85:
	.string	"max_residual_new_m"
.LASF102:
	.string	"stop_dummy"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF72:
	.string	"head"
.LASF97:
	.string	"nodes"
.LASF105:
	.string	"checksum"
.LASF109:
	.string	"arc2"
.LASF104:
	.string	"bound_exchanges"
.LASF52:
	.string	"cost_t"
.LASF41:
	.string	"_unused2"
.LASF91:
	.string	"opt_tol"
.LASF47:
	.string	"float"
.LASF82:
	.string	"max_m"
.LASF63:
	.string	"arc_tmp"
.LASF49:
	.string	"long long int"
.LASF86:
	.string	"max_new_m"
.LASF84:
	.string	"m_impl"
.LASF112:
	.string	"output.c"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF96:
	.string	"ignore_impl"
.LASF30:
	.string	"_cur_column"
.LASF108:
	.string	"block"
.LASF46:
	.string	"_pos"
.LASF53:
	.string	"node"
.LASF62:
	.string	"firstin"
.LASF59:
	.string	"sibling_prev"
.LASF29:
	.string	"_old_offset"
.LASF81:
	.string	"n_trips"
.LASF1:
	.string	"unsigned char"
.LASF89:
	.string	"perturbed"
.LASF99:
	.string	"arcs"
.LASF111:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF74:
	.string	"nextout"
.LASF4:
	.string	"signed char"
.LASF95:
	.string	"optcost"
.LASF50:
	.string	"long long unsigned int"
.LASF78:
	.string	"network"
.LASF113:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF71:
	.string	"tail"
.LASF55:
	.string	"orientation"
.LASF17:
	.string	"_IO_write_base"
.LASF67:
	.string	"time"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF115:
	.string	"write_circulations"
.LASF11:
	.string	"char"
.LASF70:
	.string	"cost"
.LASF92:
	.string	"feas_tol"
.LASF93:
	.string	"pert_val"
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
.LASF68:
	.string	"node_p"
.LASF65:
	.string	"depth"
.LASF64:
	.string	"flow"
.LASF100:
	.string	"stop_arcs"
.LASF2:
	.string	"short unsigned int"
.LASF61:
	.string	"firstout"
.LASF0:
	.string	"long unsigned int"
.LASF76:
	.string	"org_cost"
.LASF19:
	.string	"_IO_write_end"
.LASF54:
	.string	"potential"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF90:
	.string	"feasible"
.LASF26:
	.string	"_chain"
.LASF106:
	.string	"network_t"
.LASF51:
	.string	"flow_t"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF87:
	.string	"primal_unbounded"
.LASF103:
	.string	"iterations"
.LASF79:
	.string	"inputfile"
.LASF40:
	.string	"_mode"
.LASF57:
	.string	"pred"
.LASF31:
	.string	"_vtable_offset"
.LASF83:
	.string	"m_org"
.LASF22:
	.string	"_IO_save_base"
.LASF73:
	.string	"ident"
.LASF66:
	.string	"number"
.LASF12:
	.string	"FILE"
.LASF45:
	.string	"_sbuf"
.LASF77:
	.string	"arc_p"
.LASF75:
	.string	"nextin"
.LASF69:
	.string	"arc_t"
.LASF114:
	.string	"_IO_lock_t"
.LASF110:
	.string	"first_impl"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
