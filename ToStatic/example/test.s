	.file	"test.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu test.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fstack-protector -Wformat
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
	.globl	loop
	.type	loop, @function
loop:
.LFB2:
	.file 1 "test.c"
	.loc 1 3 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$3992, %rsp	#,
.L4:
.LBB2:
	.loc 1 7 0
	movl	$0, -4104(%rbp)	#, i
	jmp	.L2	#
.L3:
.LBB3:
	.loc 1 8 0 discriminator 2
	movl	$1, -4100(%rbp)	#, j
	.loc 1 9 0 discriminator 2
	movl	-4104(%rbp), %eax	# i, tmp62
	cltq
	movl	-4096(%rbp,%rax,4), %eax	# a, D.2307
	leal	1(%rax), %edx	#, D.2307
	movl	-4104(%rbp), %eax	# i, tmp64
	cltq
	movl	%edx, -4096(%rbp,%rax,4)	# D.2307, a
.LBE3:
	.loc 1 7 0 discriminator 2
	addl	$1, -4104(%rbp)	#, i
.L2:
	.loc 1 7 0 is_stmt 0 discriminator 1
	cmpl	$1023, -4104(%rbp)	#, i
	jle	.L3	#,
.LBE2:
	.loc 1 11 0 is_stmt 1
	jmp	.L4	#
	.cfi_endproc
.LFE2:
	.size	loop, .-loop
	.globl	dynamic
	.type	dynamic, @function
dynamic:
.LFB3:
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# param_double, param_double
	.loc 1 15 0
	movl	$40, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp59, pt
	.loc 1 16 0
	movq	-8(%rbp), %rax	# pt, tmp60
	movq	%rax, %rdi	# tmp60,
	call	free	#
	.loc 1 17 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	dynamic, .-dynamic
	.comm	global_const,80,32
	.local	global_static
	.comm	global_static,320,32
	.comm	global_dim,551,32
	.globl	main
	.type	main, @function
main:
.LFB4:
	.loc 1 23 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 25 0
	movabsq	$4626322717216342016, %rax	#, tmp61
	movq	%rax, -8(%rbp)	# tmp61, main_const
	.loc 1 27 0
	movl	$0, %eax	#,
	call	loop	#
	.loc 1 29 0
	movl	$0, %eax	#, D.2308
	.loc 1 30 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.data
	.align 4
	.type	main_static.2297, @object
	.size	main_static.2297, 4
main_static.2297:
	.long	10
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x202
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF19
	.byte	0x1
	.long	.LASF20
	.long	.LASF21
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0x3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf0
	.uleb128 0x6
	.string	"a"
	.byte	0x1
	.byte	0x4
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4112
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x6
	.string	"i"
	.byte	0x1
	.byte	0x6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4120
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x6
	.string	"j"
	.byte	0x1
	.byte	0x8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4116
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x34
	.long	0x101
	.uleb128 0x9
	.long	0x65
	.value	0x3ff
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0xe
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0xe
	.long	0x13a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"pt"
	.byte	0x1
	.byte	0xf
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF11
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1
	.byte	0x17
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x186
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	main_static.2297
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x19
	.long	0x186
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	0x13a
	.uleb128 0x8
	.long	0x13a
	.long	0x19b
	.uleb128 0xf
	.long	0x65
	.byte	0x27
	.byte	0
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0x14
	.long	0x18b
	.uleb128 0x9
	.byte	0x3
	.quad	global_static
	.uleb128 0x8
	.long	0x34
	.long	0x1c0
	.uleb128 0xf
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.long	.LASF17
	.byte	0x1
	.byte	0x13
	.long	0x1d5
	.uleb128 0x9
	.byte	0x3
	.quad	global_const
	.uleb128 0xe
	.long	0x1b0
	.uleb128 0x8
	.long	0x6c
	.long	0x1f0
	.uleb128 0xf
	.long	0x65
	.byte	0x12
	.uleb128 0xf
	.long	0x65
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.long	.LASF18
	.byte	0x1
	.byte	0x15
	.long	0x1da
	.uleb128 0x9
	.byte	0x3
	.quad	global_dim
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"dynamic"
.LASF17:
	.string	"global_const"
.LASF19:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fstack-protector"
.LASF15:
	.string	"main_const"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"global_dim"
.LASF16:
	.string	"global_static"
.LASF21:
	.string	"/home/yunqi/MemProfile/ToStatic/example"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF20:
	.string	"test.c"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"param_double"
.LASF11:
	.string	"double"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"main"
.LASF14:
	.string	"main_static"
.LASF22:
	.string	"loop"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
