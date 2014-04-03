	.file	"expn.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX expn.c -mtune=generic -march=x86-64 -g
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
	.globl	quantum_exp_mod_n
	.type	quantum_exp_mod_n, @function
quantum_exp_mod_n:
.LFB5:
	.file 1 "expn.c"
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# N, N
	movl	%esi, -24(%rbp)	# x, x
	movl	%edx, -28(%rbp)	# width_input, width_input
	movl	%ecx, -32(%rbp)	# width, width
	movq	%r8, -40(%rbp)	# reg, reg
	.loc 1 44 0
	movl	-32(%rbp), %eax	# width, tmp64
	addl	$1, %eax	#, D.4185
	leal	(%rax,%rax), %edx	#, D.4185
	movq	-40(%rbp), %rax	# reg, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	%edx, %edi	# D.4185,
	call	quantum_sigma_x	#
	.loc 1 45 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 46 0
	movl	-24(%rbp), %eax	# x, tmp67
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, -4(%rbp)	# tmp68, f
	.loc 1 47 0
	movl	$1, -8(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 49 0 discriminator 2
	movl	-4(%rbp), %eax	# f, tmp71
	imull	-4(%rbp), %eax	# f, tmp70
	movl	%eax, -4(%rbp)	# tmp70, f
	.loc 1 50 0 discriminator 2
	movl	-4(%rbp), %eax	# f, tmp73
	cltd
	idivl	-20(%rbp)	# N
	movl	%edx, -4(%rbp)	# tmp74, f
	.loc 1 47 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L3:
	.loc 1 47 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp76
	cmpl	-12(%rbp), %eax	# i, tmp76
	jl	.L4	#,
	.loc 1 52 0 is_stmt 1
	movl	-32(%rbp), %edx	# width, tmp77
	movl	%edx, %eax	# tmp77, tmp78
	addl	%eax, %eax	# tmp78
	addl	%edx, %eax	# tmp77, D.4185
	leal	1(%rax), %edx	#, D.4185
	movl	-12(%rbp), %eax	# i, tmp79
	leal	(%rdx,%rax), %edi	#, D.4185
	movq	-40(%rbp), %rcx	# reg, tmp80
	movl	-32(%rbp), %edx	# width, tmp81
	movl	-4(%rbp), %esi	# f, tmp82
	movl	-20(%rbp), %eax	# N, tmp83
	movq	%rcx, %r8	# tmp80,
	movl	%edx, %ecx	# tmp81,
	movl	%edi, %edx	# D.4185,
	movl	%eax, %edi	# tmp83,
	call	mul_mod_n	#
	.loc 1 45 0
	addl	$1, -12(%rbp)	#, i
.L2:
	.loc 1 45 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp84
	cmpl	-28(%rbp), %eax	# width_input, tmp84
	jle	.L5	#,
	.loc 1 54 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quantum_exp_mod_n, .-quantum_exp_mod_n
.Letext0:
	.file 2 "qureg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ad
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF16
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.long	0xc1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x25
	.long	0x95
	.byte	0
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x26
	.long	0x80
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x29
	.long	0x9c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x20
	.byte	0x2
	.byte	0x2d
	.long	0x115
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x2f
	.long	0x34
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x30
	.long	0x34
	.byte	0x4
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x31
	.long	0x34
	.byte	0x8
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x32
	.long	0x115
	.byte	0x10
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x33
	.long	0x73
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xc1
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0x36
	.long	0xcc
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.byte	0x25
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aa
	.uleb128 0x9
	.string	"N"
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"reg"
	.byte	0x1
	.byte	0x25
	.long	0x1aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x28
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xb
	.string	"j"
	.byte	0x1
	.byte	0x28
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"f"
	.byte	0x1
	.byte	0x28
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x11b
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
.LASF15:
	.string	"state"
.LASF14:
	.string	"amplitude"
.LASF17:
	.string	"quantum_reg_struct"
.LASF23:
	.string	"quantum_reg_node"
.LASF13:
	.string	"complex float"
.LASF27:
	.string	"expn.c"
.LASF11:
	.string	"float"
.LASF28:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/462.libquantum/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF19:
	.string	"size"
.LASF0:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF12:
	.string	"double"
.LASF20:
	.string	"hashw"
.LASF25:
	.string	"width_input"
.LASF3:
	.string	"unsigned int"
.LASF16:
	.string	"quantum_reg_node_struct"
.LASF24:
	.string	"quantum_reg"
.LASF10:
	.string	"long long unsigned int"
.LASF22:
	.string	"hash"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF29:
	.string	"quantum_exp_mod_n"
.LASF18:
	.string	"width"
.LASF26:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"node"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
