	.file	"debug.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 debug.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	do_nothing_debug_hooks
	.data
	.align 32
	.type	do_nothing_debug_hooks, @object
	.size	do_nothing_debug_hooks, 160
do_nothing_debug_hooks:
# init:
	.quad	debug_nothing_charstar
# finish:
	.quad	debug_nothing_charstar
# define:
	.quad	debug_nothing_int_charstar
# undef:
	.quad	debug_nothing_int_charstar
# start_source_file:
	.quad	debug_nothing_int_charstar
# end_source_file:
	.quad	debug_nothing_int
# begin_block:
	.quad	debug_nothing_int_int
# end_block:
	.quad	debug_nothing_int_int
# ignore_block:
	.quad	debug_true_tree
# source_line:
	.quad	debug_nothing_int_charstar
# begin_prologue:
	.quad	debug_nothing_int_charstar
# end_prologue:
	.quad	debug_nothing_int
# end_epilogue:
	.quad	debug_nothing_void
# begin_function:
	.quad	debug_nothing_tree
# end_function:
	.quad	debug_nothing_int
# function_decl:
	.quad	debug_nothing_tree
# global_decl:
	.quad	debug_nothing_tree
# deferred_inline_function:
	.quad	debug_nothing_tree
# outlining_inline_function:
	.quad	debug_nothing_tree
# label:
	.quad	debug_nothing_rtx
	.text
	.globl	debug_nothing_void
	.type	debug_nothing_void, @function
debug_nothing_void:
.LFB2:
	.file 1 "debug.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 53 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	debug_nothing_void, .-debug_nothing_void
	.globl	debug_nothing_tree
	.type	debug_nothing_tree, @function
debug_nothing_tree:
.LFB3:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# decl, decl
	.loc 1 59 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	debug_nothing_tree, .-debug_nothing_tree
	.globl	debug_true_tree
	.type	debug_true_tree, @function
debug_true_tree:
.LFB4:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# block, block
	.loc 1 65 0
	movl	$1, %eax	#, D.6768
	.loc 1 66 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	debug_true_tree, .-debug_true_tree
	.globl	debug_nothing_rtx
	.type	debug_nothing_rtx, @function
debug_nothing_rtx:
.LFB5:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# insn, insn
	.loc 1 72 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	debug_nothing_rtx, .-debug_nothing_rtx
	.globl	debug_nothing_charstar
	.type	debug_nothing_charstar, @function
debug_nothing_charstar:
.LFB6:
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# main_filename, main_filename
	.loc 1 78 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	debug_nothing_charstar, .-debug_nothing_charstar
	.globl	debug_nothing_int_charstar
	.type	debug_nothing_int_charstar, @function
debug_nothing_int_charstar:
.LFB7:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# line, line
	movq	%rsi, -16(%rbp)	# text, text
	.loc 1 85 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	debug_nothing_int_charstar, .-debug_nothing_int_charstar
	.globl	debug_nothing_int
	.type	debug_nothing_int, @function
debug_nothing_int:
.LFB8:
	.loc 1 90 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# line, line
	.loc 1 91 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	debug_nothing_int, .-debug_nothing_int
	.globl	debug_nothing_int_int
	.type	debug_nothing_int_int, @function
debug_nothing_int_int:
.LFB9:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# line, line
	movl	%esi, -8(%rbp)	# n, n
	.loc 1 98 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	debug_nothing_int_int, .-debug_nothing_int_int
.Letext0:
	.file 2 "debug.h"
	.file 3 "config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x1
	.long	.LASF46
	.long	.LASF47
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF48
	.uleb128 0x5
	.long	.LASF0
	.byte	0x3
	.byte	0xc
	.long	0x4e
	.uleb128 0x3
	.byte	0x8
	.long	0x54
	.uleb128 0x6
	.long	.LASF49
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.long	0xa5
	.uleb128 0x9
	.long	0x98
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0xa
	.long	.LASF50
	.byte	0xa0
	.byte	0x2
	.byte	0x18
	.long	0x1b5
	.uleb128 0xb
	.long	.LASF12
	.byte	0x2
	.byte	0x1c
	.long	0x1c0
	.byte	0
	.uleb128 0xb
	.long	.LASF13
	.byte	0x2
	.byte	0x1f
	.long	0x1c0
	.byte	0x8
	.uleb128 0xb
	.long	.LASF14
	.byte	0x2
	.byte	0x22
	.long	0x1d6
	.byte	0x10
	.uleb128 0xb
	.long	.LASF15
	.byte	0x2
	.byte	0x25
	.long	0x1d6
	.byte	0x18
	.uleb128 0xb
	.long	.LASF16
	.byte	0x2
	.byte	0x29
	.long	0x1d6
	.byte	0x20
	.uleb128 0xb
	.long	.LASF17
	.byte	0x2
	.byte	0x2d
	.long	0x1e7
	.byte	0x28
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.byte	0x31
	.long	0x1fd
	.byte	0x30
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.byte	0x34
	.long	0x1fd
	.byte	0x38
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.byte	0x3b
	.long	0x219
	.byte	0x40
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.byte	0x3e
	.long	0x1d6
	.byte	0x48
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.byte	0x43
	.long	0x1d6
	.byte	0x50
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.byte	0x47
	.long	0x1e7
	.byte	0x58
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x4a
	.long	0x220
	.byte	0x60
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.byte	0x4d
	.long	0x231
	.byte	0x68
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.byte	0x50
	.long	0x1e7
	.byte	0x70
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0x56
	.long	0x231
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.byte	0x5a
	.long	0x231
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x2
	.byte	0x5e
	.long	0x231
	.byte	0x88
	.uleb128 0xb
	.long	.LASF30
	.byte	0x2
	.byte	0x63
	.long	0x231
	.byte	0x90
	.uleb128 0xb
	.long	.LASF31
	.byte	0x2
	.byte	0x67
	.long	0x242
	.byte	0x98
	.byte	0
	.uleb128 0xc
	.long	0x1c0
	.uleb128 0xd
	.long	0x9f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b5
	.uleb128 0xc
	.long	0x1d6
	.uleb128 0xd
	.long	0x67
	.uleb128 0xd
	.long	0x9f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1c6
	.uleb128 0xc
	.long	0x1e7
	.uleb128 0xd
	.long	0x67
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1dc
	.uleb128 0xc
	.long	0x1fd
	.uleb128 0xd
	.long	0x67
	.uleb128 0xd
	.long	0x67
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1ed
	.uleb128 0xe
	.long	0x212
	.long	0x212
	.uleb128 0xd
	.long	0x43
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.long	.LASF32
	.uleb128 0x3
	.byte	0x8
	.long	0x203
	.uleb128 0xf
	.uleb128 0x3
	.byte	0x8
	.long	0x21f
	.uleb128 0xc
	.long	0x231
	.uleb128 0xd
	.long	0x43
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x226
	.uleb128 0xc
	.long	0x242
	.uleb128 0xd
	.long	0x2d
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x237
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x33
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF35
	.byte	0x1
	.byte	0x38
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x28d
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.byte	0x39
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.byte	0x3e
	.long	0x212
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x3f
	.long	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.byte	0x45
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e9
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x46
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.byte	0x4b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x315
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.byte	0x4c
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0x51
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x34f
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x52
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.byte	0x53
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x58
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x59
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.byte	0x5e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b3
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.byte	0x5f
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x60
	.long	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.byte	0x17
	.long	0xb8
	.uleb128 0x9
	.byte	0x3
	.quad	do_nothing_debug_hooks
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
.LASF35:
	.string	"debug_nothing_tree"
.LASF27:
	.string	"function_decl"
.LASF45:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF36:
	.string	"debug_nothing_rtx"
.LASF30:
	.string	"outlining_inline_function"
.LASF23:
	.string	"end_prologue"
.LASF50:
	.string	"gcc_debug_hooks"
.LASF21:
	.string	"source_line"
.LASF53:
	.string	"do_nothing_debug_hooks"
.LASF12:
	.string	"init"
.LASF42:
	.string	"text"
.LASF18:
	.string	"begin_block"
.LASF13:
	.string	"finish"
.LASF28:
	.string	"global_decl"
.LASF14:
	.string	"define"
.LASF34:
	.string	"block"
.LASF10:
	.string	"long long unsigned int"
.LASF5:
	.string	"unsigned char"
.LASF19:
	.string	"end_block"
.LASF4:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF26:
	.string	"end_function"
.LASF37:
	.string	"insn"
.LASF17:
	.string	"end_source_file"
.LASF24:
	.string	"end_epilogue"
.LASF16:
	.string	"start_source_file"
.LASF52:
	.string	"debug_true_tree"
.LASF20:
	.string	"ignore_block"
.LASF51:
	.string	"debug_nothing_void"
.LASF49:
	.string	"tree_node"
.LASF0:
	.string	"tree"
.LASF2:
	.string	"unsigned int"
.LASF9:
	.string	"char"
.LASF15:
	.string	"undef"
.LASF41:
	.string	"line"
.LASF46:
	.string	"debug.c"
.LASF39:
	.string	"main_filename"
.LASF38:
	.string	"debug_nothing_charstar"
.LASF1:
	.string	"sizetype"
.LASF11:
	.string	"long long int"
.LASF43:
	.string	"debug_nothing_int"
.LASF33:
	.string	"decl"
.LASF8:
	.string	"short int"
.LASF44:
	.string	"debug_nothing_int_int"
.LASF3:
	.string	"long int"
.LASF25:
	.string	"begin_function"
.LASF7:
	.string	"signed char"
.LASF29:
	.string	"deferred_inline_function"
.LASF47:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF31:
	.string	"label"
.LASF22:
	.string	"begin_prologue"
.LASF32:
	.string	"_Bool"
.LASF40:
	.string	"debug_nothing_int_charstar"
.LASF48:
	.string	"rtx_def"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
