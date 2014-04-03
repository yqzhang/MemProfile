	.file	"stack.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 stack.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"stack.c"
	.align 8
.LC1:
	.string	"Memory allocation failure at %s line %d"
	.text
	.globl	InitIntStack
	.type	InitIntStack, @function
InitIntStack:
.LFB2:
	.file 1 "stack.c"
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 41 0
	movl	$16, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp61, stack
	cmpq	$0, -8(%rbp)	#, stack
	jne	.L2	#,
	.loc 1 42 0
	movl	$42, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L2:
	.loc 1 43 0
	movq	-8(%rbp), %rax	# stack, tmp62
	movq	$0, 8(%rax)	#, stack_1->nxt
	.loc 1 44 0
	movq	-8(%rbp), %rax	# stack, D.5456
	.loc 1 45 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	InitIntStack, .-InitIntStack
	.globl	PushIntStack
	.type	PushIntStack, @function
PushIntStack:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stack, stack
	movl	%esi, -28(%rbp)	# data, data
	.loc 1 51 0
	movl	$16, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp60, new
	cmpq	$0, -8(%rbp)	#, new
	jne	.L5	#,
	.loc 1 52 0
	movl	$52, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L5:
	.loc 1 53 0
	movq	-8(%rbp), %rax	# new, tmp61
	movl	-28(%rbp), %edx	# data, tmp62
	movl	%edx, (%rax)	# tmp62, new_1->data
	.loc 1 55 0
	movq	-24(%rbp), %rax	# stack, tmp63
	movq	8(%rax), %rdx	# stack_3(D)->nxt, D.5459
	movq	-8(%rbp), %rax	# new, tmp64
	movq	%rdx, 8(%rax)	# D.5459, new_1->nxt
	.loc 1 56 0
	movq	-24(%rbp), %rax	# stack, tmp65
	movq	-8(%rbp), %rdx	# new, tmp66
	movq	%rdx, 8(%rax)	# tmp66, stack_3(D)->nxt
	.loc 1 57 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	PushIntStack, .-PushIntStack
	.globl	PopIntStack
	.type	PopIntStack, @function
PopIntStack:
.LFB4:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stack, stack
	movq	%rsi, -32(%rbp)	# ret_data, ret_data
	.loc 1 64 0
	movq	-24(%rbp), %rax	# stack, tmp64
	movq	8(%rax), %rax	# stack_2(D)->nxt, D.5461
	testq	%rax, %rax	# D.5461
	jne	.L7	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5460
	jmp	.L8	#
.L7:
	.loc 1 66 0 is_stmt 1
	movq	-24(%rbp), %rax	# stack, tmp65
	movq	8(%rax), %rax	# stack_2(D)->nxt, tmp66
	movq	%rax, -8(%rbp)	# tmp66, old
	.loc 1 67 0
	movq	-8(%rbp), %rax	# old, tmp67
	movq	8(%rax), %rdx	# old_5->nxt, D.5461
	movq	-24(%rbp), %rax	# stack, tmp68
	movq	%rdx, 8(%rax)	# D.5461, stack_2(D)->nxt
	.loc 1 69 0
	movq	-8(%rbp), %rax	# old, tmp69
	movl	(%rax), %edx	# old_5->data, D.5460
	movq	-32(%rbp), %rax	# ret_data, tmp70
	movl	%edx, (%rax)	# D.5460, *ret_data_8(D)
	.loc 1 70 0
	movq	-8(%rbp), %rax	# old, tmp71
	movq	%rax, %rdi	# tmp71,
	call	free	#
	.loc 1 71 0
	movl	$1, %eax	#, D.5460
.L8:
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	PopIntStack, .-PopIntStack
	.globl	ReverseIntStack
	.type	ReverseIntStack, @function
ReverseIntStack:
.LFB5:
	.loc 1 76 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# stack, stack
	.loc 1 80 0
	movq	-24(%rbp), %rax	# stack, tmp60
	movq	8(%rax), %rax	# stack_2(D)->nxt, tmp61
	movq	%rax, -16(%rbp)	# tmp61, old
	.loc 1 81 0
	movq	-24(%rbp), %rax	# stack, tmp62
	movq	$0, 8(%rax)	#, stack_2(D)->nxt
	.loc 1 82 0
	jmp	.L10	#
.L11:
	.loc 1 84 0
	movq	-16(%rbp), %rax	# old, tmp63
	movq	%rax, -8(%rbp)	# tmp63, new
	.loc 1 85 0
	movq	-16(%rbp), %rax	# old, tmp64
	movq	8(%rax), %rax	# old_1->nxt, tmp65
	movq	%rax, -16(%rbp)	# tmp65, old
	.loc 1 86 0
	movq	-24(%rbp), %rax	# stack, tmp66
	movq	8(%rax), %rdx	# stack_2(D)->nxt, D.5462
	movq	-8(%rbp), %rax	# new, tmp67
	movq	%rdx, 8(%rax)	# D.5462, new_4->nxt
	.loc 1 87 0
	movq	-24(%rbp), %rax	# stack, tmp68
	movq	-8(%rbp), %rdx	# new, tmp69
	movq	%rdx, 8(%rax)	# tmp69, stack_2(D)->nxt
.L10:
	.loc 1 82 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, old
	jne	.L11	#,
	.loc 1 89 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ReverseIntStack, .-ReverseIntStack
	.globl	FreeIntStack
	.type	FreeIntStack, @function
FreeIntStack:
.LFB6:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# stack, stack
	.loc 1 95 0
	movl	$0, -4(%rbp)	#, count
	.loc 1 97 0
	jmp	.L13	#
.L14:
	.loc 1 98 0
	addl	$1, -4(%rbp)	#, count
.L13:
	.loc 1 97 0 discriminator 1
	leaq	-8(%rbp), %rdx	#, tmp62
	movq	-24(%rbp), %rax	# stack, tmp63
	movq	%rdx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	PopIntStack	#
	testl	%eax, %eax	# D.5463
	jne	.L14	#,
	.loc 1 99 0
	movq	-24(%rbp), %rax	# stack, tmp64
	movq	%rax, %rdi	# tmp64,
	call	free	#
	.loc 1 100 0
	movl	-4(%rbp), %eax	# count, D.5463
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FreeIntStack, .-FreeIntStack
.Letext0:
	.file 2 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x214
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF22
	.byte	0x1
	.long	.LASF23
	.long	.LASF24
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
	.uleb128 0x5
	.long	.LASF25
	.byte	0x10
	.byte	0x2
	.value	0x11a
	.long	0xbd
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.value	0x11b
	.long	0x34
	.byte	0
	.uleb128 0x7
	.string	"nxt"
	.byte	0x2
	.value	0x11c
	.long	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x95
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x25
	.long	0xbd
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf3
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x2f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x2f
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"new"
	.byte	0x1
	.byte	0x31
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x3c
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x187
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x3c
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x3c
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"old"
	.byte	0x1
	.byte	0x3e
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x4b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x4b
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.string	"old"
	.byte	0x1
	.byte	0x4d
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"new"
	.byte	0x1
	.byte	0x4e
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.byte	0x5c
	.long	0x34
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x5c
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x5e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
.LASF2:
	.string	"short unsigned int"
.LASF19:
	.string	"ReverseIntStack"
.LASF23:
	.string	"stack.c"
.LASF14:
	.string	"stack"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"data"
.LASF16:
	.string	"PopIntStack"
.LASF17:
	.string	"ret_data"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF21:
	.string	"count"
.LASF6:
	.string	"long int"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF12:
	.string	"double"
.LASF20:
	.string	"FreeIntStack"
.LASF25:
	.string	"intstack_s"
.LASF4:
	.string	"signed char"
.LASF3:
	.string	"unsigned int"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"float"
.LASF18:
	.string	"PushIntStack"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF15:
	.string	"InitIntStack"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
