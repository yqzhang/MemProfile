	.file	"mcf.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 mcf.c -mtune=generic -march=x86-64 -g
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
	.comm	net,624,32
	.section	.rodata
	.align 8
.LC0:
	.string	"active arcs                : %ld\n"
	.align 8
.LC1:
	.string	"simplex iterations         : %ld\n"
	.align 8
.LC2:
	.string	"objective value            : %0.0f\n"
	.align 8
.LC3:
	.string	"erased arcs                : %ld\n"
	.align 8
.LC4:
	.string	"new implicit arcs          : %ld\n"
.LC5:
	.string	"not enough memory, exit(-1)"
	.align 8
.LC6:
	.string	"checksum                   : %ld\n"
	.text
	.globl	global_opt
	.type	global_opt, @function
global_opt:
.LFB2:
	.file 1 "mcf.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 44 0
	movq	$-1, -16(%rbp)	#, new_arcs
	.loc 1 45 0
	movq	$5, -8(%rbp)	#, residual_nb_it
	.loc 1 48 0
	jmp	.L2	#
.L8:
	.loc 1 51 0
	movq	net+424(%rip), %rax	# net.m, D.4754
	movq	%rax, %rsi	# D.4754,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 54 0
	movl	$net, %edi	#,
	call	primal_net_simplex	#
	.loc 1 58 0
	movq	net+600(%rip), %rax	# net.iterations, D.4754
	movq	%rax, %rsi	# D.4754,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 59 0
	movl	$net, %edi	#,
	call	flow_cost	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, D.4755
	movq	%rax, -24(%rbp)	# D.4755, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	movl	$.LC2, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 67 0
	cmpq	$0, -8(%rbp)	#, residual_nb_it
	jne	.L3	#,
	.loc 1 68 0
	jmp	.L4	#
.L3:
	.loc 1 71 0
	movq	net+440(%rip), %rax	# net.m_impl, D.4754
	testq	%rax, %rax	# D.4754
	je	.L5	#,
	.loc 1 73 0
	movl	$0, %edx	#,
	movq	$-1, %rsi	#,
	movl	$net, %edi	#,
	call	suspend_impl	#
	movq	%rax, -16(%rbp)	# tmp66, new_arcs
	.loc 1 76 0
	cmpq	$0, -16(%rbp)	#, new_arcs
	je	.L5	#,
	.loc 1 77 0
	movq	-16(%rbp), %rax	# new_arcs, tmp67
	movq	%rax, %rsi	# tmp67,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L5:
	.loc 1 82 0
	movl	$net, %edi	#,
	call	price_out_impl	#
	movq	%rax, -16(%rbp)	# tmp68, new_arcs
	.loc 1 85 0
	cmpq	$0, -16(%rbp)	#, new_arcs
	je	.L6	#,
	.loc 1 86 0
	movq	-16(%rbp), %rax	# new_arcs, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L6:
	.loc 1 89 0
	cmpq	$0, -16(%rbp)	#, new_arcs
	jns	.L7	#,
	.loc 1 92 0
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 95 0
	movl	$-1, %edi	#,
	call	exit	#
.L7:
	.loc 1 103 0
	subq	$1, -8(%rbp)	#, residual_nb_it
.L2:
	.loc 1 48 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, new_arcs
	jne	.L8	#,
.L4:
	.loc 1 106 0
	movq	net+616(%rip), %rax	# net.checksum, D.4754
	movq	%rax, %rsi	# D.4754,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 108 0
	movl	$0, %eax	#, D.4754
	.loc 1 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	global_opt, .-global_opt
	.section	.rodata
	.align 8
.LC7:
	.string	"\nMCF SPEC CPU2006 version 1.10"
	.align 8
.LC8:
	.string	"Copyright (c) 1998-2000 Zuse Institut Berlin (ZIB)"
	.align 8
.LC9:
	.string	"Copyright (c) 2000-2002 Andreas Loebel & ZIB"
	.align 8
.LC10:
	.string	"Copyright (c) 2003-2005 Andreas Loebel"
.LC11:
	.string	"read error, exit"
	.align 8
.LC12:
	.string	"nodes                      : %ld\n"
.LC13:
	.string	"done"
.LC14:
	.string	"mcf.out"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
	.loc 1 124 0
	cmpl	$1, -4(%rbp)	#, argc
	jg	.L11	#,
	.loc 1 125 0
	movl	$-1, %eax	#, D.4764
	jmp	.L12	#
.L11:
	.loc 1 128 0
	movl	$.LC7, %edi	#,
	call	puts	#
	.loc 1 129 0
	movl	$.LC8, %edi	#,
	call	puts	#
	.loc 1 130 0
	movl	$.LC9, %edi	#,
	call	puts	#
	.loc 1 131 0
	movl	$.LC10, %edi	#,
	call	puts	#
	.loc 1 132 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 136 0
	movl	$624, %edx	#,
	movl	$0, %esi	#,
	movl	$net, %edi	#,
	call	memset	#
	.loc 1 137 0
	movq	$10000000, net+528(%rip)	#, net.bigM
	.loc 1 139 0
	movq	-16(%rbp), %rax	# argv, tmp66
	addq	$8, %rax	#, D.4765
	movq	(%rax), %rax	# *_5, D.4766
	movq	%rax, %rsi	# D.4766,
	movl	$net, %edi	#,
	call	strcpy	#
	.loc 1 141 0
	movl	$net, %edi	#,
	call	read_min	#
	testq	%rax, %rax	# D.4767
	je	.L13	#,
	.loc 1 143 0
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 144 0
	movl	$net, %edi	#,
	call	getfree	#
	.loc 1 145 0
	movl	$-1, %eax	#, D.4764
	jmp	.L12	#
.L13:
	.loc 1 150 0
	movq	net+408(%rip), %rax	# net.n_trips, D.4767
	movq	%rax, %rsi	# D.4767,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 154 0
	movl	$net, %edi	#,
	call	primal_start_artificial	#
	.loc 1 155 0
	call	global_opt	#
	.loc 1 159 0
	movl	$.LC13, %edi	#,
	call	puts	#
	.loc 1 164 0
	movl	$net, %esi	#,
	movl	$.LC14, %edi	#,
	call	write_circulations	#
	testq	%rax, %rax	# D.4767
	je	.L14	#,
	.loc 1 166 0
	movl	$net, %edi	#,
	call	getfree	#
	.loc 1 167 0
	movl	$-1, %eax	#, D.4764
	jmp	.L12	#
.L14:
	.loc 1 171 0
	movl	$net, %edi	#,
	call	getfree	#
	.loc 1 172 0
	movl	$0, %eax	#, D.4764
.L12:
	.loc 1 173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x437
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF75
	.byte	0x1
	.long	.LASF76
	.long	.LASF77
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF13
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x5
	.byte	0x8
	.long	0x7d
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x45
	.long	0x69
	.uleb128 0x6
	.long	.LASF31
	.byte	0x68
	.byte	0x3
	.byte	0x6b
	.long	0x16b
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x6d
	.long	0xab
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x3
	.byte	0x6e
	.long	0x62
	.byte	0x8
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x6f
	.long	0x16b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0x70
	.long	0x16b
	.byte	0x18
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0x71
	.long	0x16b
	.byte	0x20
	.uleb128 0x7
	.long	.LASF21
	.byte	0x3
	.byte	0x72
	.long	0x16b
	.byte	0x28
	.uleb128 0x7
	.long	.LASF22
	.byte	0x3
	.byte	0x73
	.long	0x1e9
	.byte	0x30
	.uleb128 0x7
	.long	.LASF23
	.byte	0x3
	.byte	0x74
	.long	0x1e9
	.byte	0x38
	.uleb128 0x7
	.long	.LASF24
	.byte	0x3
	.byte	0x74
	.long	0x1e9
	.byte	0x40
	.uleb128 0x7
	.long	.LASF25
	.byte	0x3
	.byte	0x75
	.long	0x1e9
	.byte	0x48
	.uleb128 0x7
	.long	.LASF26
	.byte	0x3
	.byte	0x76
	.long	0xa0
	.byte	0x50
	.uleb128 0x7
	.long	.LASF27
	.byte	0x3
	.byte	0x77
	.long	0x69
	.byte	0x58
	.uleb128 0x7
	.long	.LASF28
	.byte	0x3
	.byte	0x78
	.long	0x62
	.byte	0x60
	.uleb128 0x7
	.long	.LASF29
	.byte	0x3
	.byte	0x79
	.long	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF30
	.byte	0x3
	.byte	0x64
	.long	0x176
	.uleb128 0x5
	.byte	0x8
	.long	0xb6
	.uleb128 0x8
	.string	"arc"
	.byte	0x40
	.byte	0x3
	.byte	0x7e
	.long	0x1e9
	.uleb128 0x7
	.long	.LASF32
	.byte	0x3
	.byte	0x80
	.long	0xab
	.byte	0
	.uleb128 0x7
	.long	.LASF33
	.byte	0x3
	.byte	0x81
	.long	0x16b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF34
	.byte	0x3
	.byte	0x81
	.long	0x16b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF35
	.byte	0x3
	.byte	0x82
	.long	0x62
	.byte	0x18
	.uleb128 0x7
	.long	.LASF36
	.byte	0x3
	.byte	0x83
	.long	0x1e9
	.byte	0x20
	.uleb128 0x7
	.long	.LASF37
	.byte	0x3
	.byte	0x83
	.long	0x1e9
	.byte	0x28
	.uleb128 0x7
	.long	.LASF26
	.byte	0x3
	.byte	0x84
	.long	0xa0
	.byte	0x30
	.uleb128 0x7
	.long	.LASF38
	.byte	0x3
	.byte	0x85
	.long	0xab
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x3
	.byte	0x67
	.long	0x1f4
	.uleb128 0x5
	.byte	0x8
	.long	0x17c
	.uleb128 0x9
	.long	.LASF40
	.value	0x270
	.byte	0x3
	.byte	0x8a
	.long	0x388
	.uleb128 0x7
	.long	.LASF41
	.byte	0x3
	.byte	0x8c
	.long	0x388
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x3
	.byte	0x8d
	.long	0x388
	.byte	0xc8
	.uleb128 0xa
	.string	"n"
	.byte	0x3
	.byte	0x8e
	.long	0x69
	.value	0x190
	.uleb128 0xb
	.long	.LASF43
	.byte	0x3
	.byte	0x8e
	.long	0x69
	.value	0x198
	.uleb128 0xb
	.long	.LASF44
	.byte	0x3
	.byte	0x8f
	.long	0x69
	.value	0x1a0
	.uleb128 0xa
	.string	"m"
	.byte	0x3
	.byte	0x8f
	.long	0x69
	.value	0x1a8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x3
	.byte	0x8f
	.long	0x69
	.value	0x1b0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x3
	.byte	0x8f
	.long	0x69
	.value	0x1b8
	.uleb128 0xb
	.long	.LASF47
	.byte	0x3
	.byte	0x90
	.long	0x69
	.value	0x1c0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x3
	.byte	0x90
	.long	0x69
	.value	0x1c8
	.uleb128 0xb
	.long	.LASF49
	.byte	0x3
	.byte	0x92
	.long	0x69
	.value	0x1d0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x3
	.byte	0x93
	.long	0x69
	.value	0x1d8
	.uleb128 0xb
	.long	.LASF51
	.byte	0x3
	.byte	0x94
	.long	0x69
	.value	0x1e0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x3
	.byte	0x95
	.long	0x69
	.value	0x1e8
	.uleb128 0xa
	.string	"eps"
	.byte	0x3
	.byte	0x96
	.long	0x69
	.value	0x1f0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x3
	.byte	0x97
	.long	0x69
	.value	0x1f8
	.uleb128 0xb
	.long	.LASF54
	.byte	0x3
	.byte	0x98
	.long	0x69
	.value	0x200
	.uleb128 0xb
	.long	.LASF55
	.byte	0x3
	.byte	0x99
	.long	0x69
	.value	0x208
	.uleb128 0xb
	.long	.LASF56
	.byte	0x3
	.byte	0x9a
	.long	0x69
	.value	0x210
	.uleb128 0xb
	.long	.LASF57
	.byte	0x3
	.byte	0x9b
	.long	0x8b
	.value	0x218
	.uleb128 0xb
	.long	.LASF58
	.byte	0x3
	.byte	0x9c
	.long	0xab
	.value	0x220
	.uleb128 0xb
	.long	.LASF59
	.byte	0x3
	.byte	0x9d
	.long	0x16b
	.value	0x228
	.uleb128 0xb
	.long	.LASF60
	.byte	0x3
	.byte	0x9d
	.long	0x16b
	.value	0x230
	.uleb128 0xb
	.long	.LASF61
	.byte	0x3
	.byte	0x9e
	.long	0x1e9
	.value	0x238
	.uleb128 0xb
	.long	.LASF62
	.byte	0x3
	.byte	0x9e
	.long	0x1e9
	.value	0x240
	.uleb128 0xb
	.long	.LASF63
	.byte	0x3
	.byte	0x9f
	.long	0x1e9
	.value	0x248
	.uleb128 0xb
	.long	.LASF64
	.byte	0x3
	.byte	0x9f
	.long	0x1e9
	.value	0x250
	.uleb128 0xb
	.long	.LASF65
	.byte	0x3
	.byte	0xa0
	.long	0x69
	.value	0x258
	.uleb128 0xb
	.long	.LASF66
	.byte	0x3
	.byte	0xa1
	.long	0x69
	.value	0x260
	.uleb128 0xb
	.long	.LASF67
	.byte	0x3
	.byte	0xa2
	.long	0x69
	.value	0x268
	.byte	0
	.uleb128 0xc
	.long	0x7d
	.long	0x398
	.uleb128 0xd
	.long	0x70
	.byte	0xc7
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x3
	.byte	0xa3
	.long	0x1fa
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.byte	0x23
	.long	0x69
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e1
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.byte	0x28
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF70
	.byte	0x1
	.byte	0x29
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x1
	.byte	0x75
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x41f
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x75
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x75
	.long	0x41f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x77
	.uleb128 0x11
	.string	"net"
	.byte	0x1
	.byte	0x1c
	.long	0x398
	.uleb128 0x9
	.byte	0x3
	.quad	net
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF63:
	.string	"dummy_arcs"
.LASF50:
	.string	"dual_unbounded"
.LASF60:
	.string	"stop_nodes"
.LASF56:
	.string	"bigM"
.LASF22:
	.string	"basic_arc"
.LASF5:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF18:
	.string	"child"
.LASF69:
	.string	"new_arcs"
.LASF57:
	.string	"optcost"
.LASF37:
	.string	"nextin"
.LASF23:
	.string	"firstout"
.LASF20:
	.string	"sibling"
.LASF47:
	.string	"max_residual_new_m"
.LASF64:
	.string	"stop_dummy"
.LASF34:
	.string	"head"
.LASF59:
	.string	"nodes"
.LASF67:
	.string	"checksum"
.LASF15:
	.string	"cost_t"
.LASF9:
	.string	"float"
.LASF44:
	.string	"max_m"
.LASF25:
	.string	"arc_tmp"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"potential"
.LASF46:
	.string	"m_impl"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"ignore_impl"
.LASF53:
	.string	"opt_tol"
.LASF31:
	.string	"node"
.LASF24:
	.string	"firstin"
.LASF21:
	.string	"sibling_prev"
.LASF43:
	.string	"n_trips"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"perturbed"
.LASF61:
	.string	"arcs"
.LASF73:
	.string	"argc"
.LASF75:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF40:
	.string	"network"
.LASF77:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF30:
	.string	"node_p"
.LASF33:
	.string	"tail"
.LASF17:
	.string	"orientation"
.LASF74:
	.string	"argv"
.LASF29:
	.string	"time"
.LASF48:
	.string	"max_new_m"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF32:
	.string	"cost"
.LASF71:
	.string	"global_opt"
.LASF72:
	.string	"main"
.LASF54:
	.string	"feas_tol"
.LASF55:
	.string	"pert_val"
.LASF42:
	.string	"clustfile"
.LASF27:
	.string	"depth"
.LASF26:
	.string	"flow"
.LASF62:
	.string	"stop_arcs"
.LASF0:
	.string	"long unsigned int"
.LASF38:
	.string	"org_cost"
.LASF10:
	.string	"double"
.LASF52:
	.string	"feasible"
.LASF76:
	.string	"mcf.c"
.LASF68:
	.string	"network_t"
.LASF14:
	.string	"flow_t"
.LASF49:
	.string	"primal_unbounded"
.LASF65:
	.string	"iterations"
.LASF70:
	.string	"residual_nb_it"
.LASF41:
	.string	"inputfile"
.LASF19:
	.string	"pred"
.LASF7:
	.string	"sizetype"
.LASF45:
	.string	"m_org"
.LASF35:
	.string	"ident"
.LASF28:
	.string	"number"
.LASF39:
	.string	"arc_p"
.LASF66:
	.string	"bound_exchanges"
.LASF36:
	.string	"nextout"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
