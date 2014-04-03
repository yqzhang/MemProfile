	.file	"str2words.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# str2words.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	str2words
	.type	str2words, @function
str2words:
.LFB2:
	.file 1 "str2words.c"
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# line, line
	movq	%rsi, -32(%rbp)	# ptr, ptr
	movl	%edx, -36(%rbp)	# max_ptr, max_ptr
	.loc 1 66 0
	movl	$0, -4(%rbp)	#, n
	.loc 1 67 0
	movl	$0, -8(%rbp)	#, i
	.loc 1 70 0
	jmp	.L2	#
.L4:
	.loc 1 70 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, i
.L2:
	movl	-8(%rbp), %eax	# i, tmp109
	movslq	%eax, %rdx	# tmp109, D.3047
	movq	-24(%rbp), %rax	# line, tmp110
	addq	%rdx, %rax	# D.3047, D.3048
	movzbl	(%rax), %eax	# *_12, D.3049
	testb	%al, %al	# D.3049
	je	.L3	#,
	.loc 1 70 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_14, D.3051
	movl	-8(%rbp), %edx	# i, tmp111
	movslq	%edx, %rcx	# tmp111, D.3047
	movq	-24(%rbp), %rdx	# line, tmp112
	addq	%rcx, %rdx	# D.3047, D.3048
	movzbl	(%rdx), %edx	# *_17, D.3049
	movsbq	%dl, %rdx	# D.3049, D.3052
	addq	%rdx, %rdx	# D.3052
	addq	%rdx, %rax	# D.3052, D.3051
	movzwl	(%rax), %eax	# *_21, D.3053
	movzwl	%ax, %eax	# D.3053, D.3054
	andl	$8192, %eax	#, D.3054
	testl	%eax, %eax	# D.3054
	jne	.L4	#,
.L3:
	.loc 1 71 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, D.3047
	movq	-24(%rbp), %rax	# line, tmp114
	addq	%rdx, %rax	# D.3047, D.3048
	movzbl	(%rax), %eax	# *_27, D.3049
	testb	%al, %al	# D.3049
	jne	.L5	#,
	.loc 1 72 0
	jmp	.L6	#
.L5:
	.loc 1 74 0
	movl	-4(%rbp), %eax	# n, tmp115
	cmpl	-36(%rbp), %eax	# max_ptr, tmp115
	jl	.L7	#,
	.loc 1 79 0
	jmp	.L8	#
.L10:
	.loc 1 80 0
	movl	-8(%rbp), %eax	# i, tmp116
	movslq	%eax, %rdx	# tmp116, D.3047
	movq	-24(%rbp), %rax	# line, tmp117
	addq	%rdx, %rax	# D.3047, D.3048
	movzbl	(%rax), %eax	# *_31, D.3049
	testb	%al, %al	# D.3049
	jne	.L9	#,
	.loc 1 81 0
	movl	-8(%rbp), %eax	# i, tmp118
	movslq	%eax, %rdx	# tmp118, D.3047
	movq	-24(%rbp), %rax	# line, tmp119
	addq	%rdx, %rax	# D.3047, D.3048
	movb	$32, (%rax)	#, *_34
.L9:
	.loc 1 79 0
	subl	$1, -8(%rbp)	#, i
.L8:
	.loc 1 79 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jns	.L10	#,
	.loc 1 83 0 is_stmt 1
	movl	$-1, %eax	#, D.3046
	jmp	.L11	#
.L7:
	.loc 1 87 0
	movl	-4(%rbp), %eax	# n, n.0
	leal	1(%rax), %edx	#, tmp120
	movl	%edx, -4(%rbp)	# tmp120, n
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3052
	movq	-32(%rbp), %rax	# ptr, tmp121
	addq	%rdx, %rax	# D.3052, D.3055
	movl	-8(%rbp), %edx	# i, tmp122
	movslq	%edx, %rcx	# tmp122, D.3047
	movq	-24(%rbp), %rdx	# line, tmp123
	addq	%rcx, %rdx	# D.3047, D.3048
	movq	%rdx, (%rax)	# D.3048, *_42
	.loc 1 88 0
	jmp	.L12	#
.L14:
	.loc 1 88 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, i
.L12:
	movl	-8(%rbp), %eax	# i, tmp124
	movslq	%eax, %rdx	# tmp124, D.3047
	movq	-24(%rbp), %rax	# line, tmp125
	addq	%rdx, %rax	# D.3047, D.3048
	movzbl	(%rax), %eax	# *_46, D.3049
	testb	%al, %al	# D.3049
	je	.L13	#,
	.loc 1 88 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_48, D.3051
	movl	-8(%rbp), %edx	# i, tmp126
	movslq	%edx, %rcx	# tmp126, D.3047
	movq	-24(%rbp), %rdx	# line, tmp127
	addq	%rcx, %rdx	# D.3047, D.3048
	movzbl	(%rdx), %edx	# *_51, D.3049
	movsbq	%dl, %rdx	# D.3049, D.3052
	addq	%rdx, %rdx	# D.3052
	addq	%rdx, %rax	# D.3052, D.3051
	movzwl	(%rax), %eax	# *_55, D.3053
	movzwl	%ax, %eax	# D.3053, D.3054
	andl	$8192, %eax	#, D.3054
	testl	%eax, %eax	# D.3054
	je	.L14	#,
.L13:
	.loc 1 89 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp128
	movslq	%eax, %rdx	# tmp128, D.3047
	movq	-24(%rbp), %rax	# line, tmp129
	addq	%rdx, %rax	# D.3047, D.3048
	movzbl	(%rax), %eax	# *_61, D.3049
	testb	%al, %al	# D.3049
	jne	.L15	#,
	.loc 1 90 0
	jmp	.L6	#
.L15:
	.loc 1 91 0
	movl	-8(%rbp), %eax	# i, i.1
	leal	1(%rax), %edx	#, tmp130
	movl	%edx, -8(%rbp)	# tmp130, i
	movslq	%eax, %rdx	# i.1, D.3047
	movq	-24(%rbp), %rax	# line, tmp131
	addq	%rdx, %rax	# D.3047, D.3048
	movb	$0, (%rax)	#, *_66
	.loc 1 92 0
	nop
	.loc 1 70 0
	jmp	.L2	#
.L6:
	.loc 1 94 0
	movl	-4(%rbp), %eax	# n, D.3046
.L11:
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	str2words, .-str2words
.Letext0:
	.file 2 "/usr/include/ctype.h"
	.file 3 "libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x163
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF27
	.byte	0x1
	.long	.LASF28
	.long	.LASF29
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x30
	.long	0xe3
	.uleb128 0x6
	.long	.LASF11
	.sleb128 256
	.uleb128 0x6
	.long	.LASF12
	.sleb128 512
	.uleb128 0x6
	.long	.LASF13
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF14
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF15
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF16
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF17
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF18
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF19
	.sleb128 1
	.uleb128 0x6
	.long	.LASF20
	.sleb128 2
	.uleb128 0x6
	.long	.LASF21
	.sleb128 4
	.uleb128 0x6
	.long	.LASF22
	.sleb128 8
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x3
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF24
	.uleb128 0x8
	.long	.LASF31
	.byte	0x1
	.byte	0x3e
	.long	0xe3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x160
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x3e
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.string	"ptr"
	.byte	0x1
	.byte	0x3e
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x3e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x40
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x9
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
	.uleb128 0xa
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
.LASF14:
	.string	"_ISdigit"
.LASF20:
	.string	"_IScntrl"
.LASF31:
	.string	"str2words"
.LASF2:
	.string	"short unsigned int"
.LASF18:
	.string	"_ISgraph"
.LASF17:
	.string	"_ISprint"
.LASF23:
	.string	"float"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"int32"
.LASF13:
	.string	"_ISalpha"
.LASF24:
	.string	"double"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF25:
	.string	"line"
.LASF22:
	.string	"_ISalnum"
.LASF7:
	.string	"sizetype"
.LASF19:
	.string	"_ISblank"
.LASF12:
	.string	"_ISlower"
.LASF9:
	.string	"long long int"
.LASF15:
	.string	"_ISxdigit"
.LASF8:
	.string	"char"
.LASF27:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF21:
	.string	"_ISpunct"
.LASF26:
	.string	"max_ptr"
.LASF16:
	.string	"_ISspace"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"str2words.c"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"_ISupper"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
