	.file	"params.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 params.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	compiler_params,8,8
	.local	num_compiler_params
	.comm	num_compiler_params,8,8
	.globl	add_params
	.type	add_params, @function
add_params:
.LFB2:
	.file 1 "params.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# params, params
	movq	%rsi, -16(%rbp)	# n, n
	.loc 1 49 0
	movq	num_compiler_params(%rip), %rdx	# num_compiler_params, num_compiler_params.0
	movq	-16(%rbp), %rax	# n, tmp71
	addq	%rax, %rdx	# tmp71, D.6828
	.loc 1 48 0
	movq	%rdx, %rax	# D.6828, tmp72
	addq	%rax, %rax	# tmp72
	addq	%rdx, %rax	# D.6828, tmp72
	salq	$3, %rax	#, tmp73
	movq	%rax, %rdx	# tmp72, D.6828
	movq	compiler_params(%rip), %rax	# compiler_params, compiler_params.1
	movq	%rdx, %rsi	# D.6828,
	movq	%rax, %rdi	# compiler_params.1,
	call	xrealloc	#
	.loc 1 46 0
	movq	%rax, compiler_params(%rip)	# compiler_params.2, compiler_params
	.loc 1 51 0
	movq	-16(%rbp), %rdx	# n, tmp74
	movq	%rdx, %rax	# tmp74, tmp75
	addq	%rax, %rax	# tmp75
	addq	%rdx, %rax	# tmp74, tmp75
	salq	$3, %rax	#, tmp76
	movq	%rax, %rcx	# tmp75, D.6828
	movq	compiler_params(%rip), %rsi	# compiler_params, compiler_params.3
	movq	num_compiler_params(%rip), %rdx	# num_compiler_params, num_compiler_params.4
	movq	%rdx, %rax	# num_compiler_params.4, tmp77
	addq	%rax, %rax	# tmp77
	addq	%rdx, %rax	# num_compiler_params.4, tmp77
	salq	$3, %rax	#, tmp78
	leaq	(%rsi,%rax), %rdi	#, D.6829
	movq	-8(%rbp), %rax	# params, tmp79
	movq	%rcx, %rdx	# D.6828,
	movq	%rax, %rsi	# tmp79,
	call	memcpy	#
	.loc 1 55 0
	movq	num_compiler_params(%rip), %rdx	# num_compiler_params, num_compiler_params.5
	movq	-16(%rbp), %rax	# n, tmp80
	addq	%rdx, %rax	# num_compiler_params.5, num_compiler_params.6
	movq	%rax, num_compiler_params(%rip)	# num_compiler_params.6, num_compiler_params
	.loc 1 56 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	add_params, .-add_params
	.section	.rodata
.LC0:
	.string	"invalid parameter `%s'"
	.text
	.globl	set_param_value
	.type	set_param_value, @function
set_param_value:
.LFB3:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	movl	%esi, -28(%rbp)	# value, value
	.loc 1 68 0
	cmpl	$-1, -28(%rbp)	#, value
	jne	.L3	#,
	.loc 1 69 0
	call	abort	#
.L3:
	.loc 1 72 0
	movq	$0, -8(%rbp)	#, i
	jmp	.L4	#
.L7:
	.loc 1 73 0
	movq	compiler_params(%rip), %rcx	# compiler_params, compiler_params.7
	movq	-8(%rbp), %rdx	# i, tmp68
	movq	%rdx, %rax	# tmp68, tmp69
	addq	%rax, %rax	# tmp69
	addq	%rdx, %rax	# tmp68, tmp69
	salq	$3, %rax	#, tmp70
	addq	%rcx, %rax	# compiler_params.7, D.6831
	movq	(%rax), %rax	# _7->option, D.6832
	movq	-24(%rbp), %rdx	# name, tmp71
	movq	%rdx, %rsi	# tmp71,
	movq	%rax, %rdi	# D.6832,
	call	strcmp	#
	testl	%eax, %eax	# D.6833
	jne	.L5	#,
	.loc 1 75 0
	movq	compiler_params(%rip), %rcx	# compiler_params, compiler_params.8
	movq	-8(%rbp), %rdx	# i, tmp72
	movq	%rdx, %rax	# tmp72, tmp73
	addq	%rax, %rax	# tmp73
	addq	%rdx, %rax	# tmp72, tmp73
	salq	$3, %rax	#, tmp74
	leaq	(%rcx,%rax), %rdx	#, D.6831
	movl	-28(%rbp), %eax	# value, tmp75
	movl	%eax, 8(%rdx)	# tmp75, _13->value
	.loc 1 76 0
	jmp	.L2	#
.L5:
	.loc 1 72 0
	addq	$1, -8(%rbp)	#, i
.L4:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movq	num_compiler_params(%rip), %rax	# num_compiler_params, num_compiler_params.9
	cmpq	%rax, -8(%rbp)	# num_compiler_params.9, i
	jb	.L7	#,
	.loc 1 80 0 is_stmt 1
	movq	-24(%rbp), %rax	# name, tmp76
	movq	%rax, %rsi	# tmp76,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	error	#
.L2:
	.loc 1 81 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_param_value, .-set_param_value
.Letext0:
	.file 2 "params.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x1
	.long	.LASF22
	.long	.LASF23
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF14
	.byte	0x3
	.byte	0xd4
	.long	0x54
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x8
	.long	0x84
	.uleb128 0x6
	.long	0x77
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF15
	.byte	0x18
	.byte	0x2
	.byte	0x2c
	.long	0xc8
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0x30
	.long	0xc8
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x32
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x34
	.long	0xc8
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.long	0x7e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x35
	.long	0x97
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x29
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x110
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.byte	0x2a
	.long	0x110
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x116
	.uleb128 0x6
	.long	0xcd
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x3d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x161
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x3e
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x3f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x41
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x24
	.long	0x49
	.uleb128 0x9
	.byte	0x3
	.quad	num_compiler_params
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x20
	.long	0x18b
	.uleb128 0x9
	.byte	0x3
	.quad	compiler_params
	.uleb128 0x5
	.byte	0x8
	.long	0xcd
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
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xc
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
.LASF10:
	.string	"long long int"
.LASF24:
	.string	"compiler_params"
.LASF14:
	.string	"size_t"
.LASF15:
	.string	"param_info"
.LASF3:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF9:
	.string	"long long unsigned int"
.LASF22:
	.string	"params.c"
.LASF11:
	.string	"option"
.LASF17:
	.string	"add_params"
.LASF4:
	.string	"unsigned char"
.LASF13:
	.string	"help"
.LASF8:
	.string	"char"
.LASF2:
	.string	"long int"
.LASF21:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF18:
	.string	"set_param_value"
.LASF16:
	.string	"params"
.LASF12:
	.string	"value"
.LASF7:
	.string	"short int"
.LASF1:
	.string	"unsigned int"
.LASF0:
	.string	"sizetype"
.LASF20:
	.string	"num_compiler_params"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
