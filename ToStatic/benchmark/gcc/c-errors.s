	.file	"c-errors.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 c-errors.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	pedwarn_c99
	.type	pedwarn_c99, @function
pedwarn_c99:
.LFB2:
	.file 1 "c-errors.c"
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$608, %rsp	#,
	movq	%rsi, -168(%rbp)	#,
	movq	%rdx, -160(%rbp)	#,
	movq	%rcx, -152(%rbp)	#,
	movq	%r8, -144(%rbp)	#,
	movq	%r9, -136(%rbp)	#,
	testb	%al, %al	#
	je	.L2	#,
	.loc 1 34 0
	movaps	%xmm0, -128(%rbp)	#,
	movaps	%xmm1, -112(%rbp)	#,
	movaps	%xmm2, -96(%rbp)	#,
	movaps	%xmm3, -80(%rbp)	#,
	movaps	%xmm4, -64(%rbp)	#,
	movaps	%xmm5, -48(%rbp)	#,
	movaps	%xmm6, -32(%rbp)	#,
	movaps	%xmm7, -16(%rbp)	#,
.L2:
	movq	%rdi, -600(%rbp)	# msgid, msgid
	movq	%fs:40, %rax	#, tmp69
	movq	%rax, -184(%rbp)	# tmp69, D.10351
	xorl	%eax, %eax	# tmp69
.LBB2:
	.loc 1 37 0
	movl	$8, -584(%rbp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, -580(%rbp)	#, MEM[(struct [1] *)&ap].fp_offset
	leaq	16(%rbp), %rax	#, tmp71
	movq	%rax, -576(%rbp)	# tmp71, MEM[(struct [1] *)&ap].overflow_arg_area
	leaq	-176(%rbp), %rax	#, tmp72
	movq	%rax, -568(%rbp)	# tmp72, MEM[(struct [1] *)&ap].reg_save_area
.LBB3:
	.loc 1 41 0
	movl	flag_isoc99(%rip), %eax	# flag_isoc99, flag_isoc99.1
	.loc 1 40 0
	testl	%eax, %eax	# flag_isoc99.1
	je	.L3	#,
	.loc 1 41 0 discriminator 2
	movl	flag_pedantic_errors(%rip), %eax	# flag_pedantic_errors, flag_pedantic_errors.2
	.loc 1 40 0 discriminator 2
	testl	%eax, %eax	# flag_pedantic_errors.2
	jne	.L4	#,
.L3:
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L5	#
.L4:
	.loc 1 40 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L5:
	.loc 1 40 0 discriminator 4
	movl	lineno(%rip), %r8d	# lineno, lineno.3
	movq	input_filename(%rip), %rcx	# input_filename, input_filename.4
	leaq	-584(%rbp), %rdx	#, tmp65
	movq	-600(%rbp), %rsi	# msgid, tmp66
	leaq	-560(%rbp), %rdi	#, tmp67
	movl	%eax, %r9d	# iftmp.0,
	call	set_diagnostic_context	#
	.loc 1 42 0 is_stmt 1 discriminator 4
	leaq	-560(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	report_diagnostic	#
.LBE3:
.LBE2:
	.loc 1 44 0 discriminator 4
	movq	-184(%rbp), %rax	# D.10351, tmp70
	xorq	%fs:40, %rax	#, tmp70
	je	.L6	#,
	.loc 1 44 0 is_stmt 0
	call	__stack_chk_fail	#
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pedwarn_c99, .-pedwarn_c99
.Letext0:
	.file 2 "<built-in>"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.file 8 "obstack.h"
	.file 9 "diagnostic.h"
	.file 10 "tree.h"
	.file 11 "c-common.h"
	.file 12 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6e7
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.long	.LASF6
	.byte	0x3
	.byte	0x28
	.long	0x46
	.uleb128 0x5
	.long	0x56
	.long	0x56
	.uleb128 0x6
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0x93
	.uleb128 0x8
	.long	.LASF1
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0
	.uleb128 0x8
	.long	.LASF2
	.byte	0x2
	.byte	0
	.long	0x93
	.byte	0x4
	.uleb128 0x8
	.long	.LASF3
	.byte	0x2
	.byte	0
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF4
	.byte	0x2
	.byte	0
	.long	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x9
	.byte	0x8
	.uleb128 0x4
	.long	.LASF7
	.byte	0x3
	.byte	0x62
	.long	0x3b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x4
	.byte	0xd4
	.long	0xb9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x8c
	.long	0xa7
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0x8d
	.long	0xa7
	.uleb128 0xa
	.byte	0x8
	.long	0xf8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x4
	.long	.LASF18
	.byte	0x6
	.byte	0x30
	.long	0x10a
	.uleb128 0x7
	.long	.LASF20
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x28b
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x7
	.byte	0xfc
	.long	0xf2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF23
	.byte	0x7
	.byte	0xfd
	.long	0xf2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF24
	.byte	0x7
	.byte	0xfe
	.long	0xf2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF25
	.byte	0x7
	.byte	0xff
	.long	0xf2
	.byte	0x20
	.uleb128 0xb
	.long	.LASF26
	.byte	0x7
	.value	0x100
	.long	0xf2
	.byte	0x28
	.uleb128 0xb
	.long	.LASF27
	.byte	0x7
	.value	0x101
	.long	0xf2
	.byte	0x30
	.uleb128 0xb
	.long	.LASF28
	.byte	0x7
	.value	0x102
	.long	0xf2
	.byte	0x38
	.uleb128 0xb
	.long	.LASF29
	.byte	0x7
	.value	0x103
	.long	0xf2
	.byte	0x40
	.uleb128 0xb
	.long	.LASF30
	.byte	0x7
	.value	0x105
	.long	0xf2
	.byte	0x48
	.uleb128 0xb
	.long	.LASF31
	.byte	0x7
	.value	0x106
	.long	0xf2
	.byte	0x50
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.value	0x107
	.long	0xf2
	.byte	0x58
	.uleb128 0xb
	.long	.LASF33
	.byte	0x7
	.value	0x109
	.long	0x2d3
	.byte	0x60
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.value	0x10b
	.long	0x2d9
	.byte	0x68
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0xb
	.long	.LASF36
	.byte	0x7
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0xb
	.long	.LASF37
	.byte	0x7
	.value	0x113
	.long	0xdc
	.byte	0x78
	.uleb128 0xb
	.long	.LASF38
	.byte	0x7
	.value	0x117
	.long	0xc7
	.byte	0x80
	.uleb128 0xb
	.long	.LASF39
	.byte	0x7
	.value	0x118
	.long	0xce
	.byte	0x82
	.uleb128 0xb
	.long	.LASF40
	.byte	0x7
	.value	0x119
	.long	0x2df
	.byte	0x83
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.value	0x11d
	.long	0x2ef
	.byte	0x88
	.uleb128 0xb
	.long	.LASF42
	.byte	0x7
	.value	0x126
	.long	0xe7
	.byte	0x90
	.uleb128 0xb
	.long	.LASF43
	.byte	0x7
	.value	0x12f
	.long	0x9a
	.byte	0x98
	.uleb128 0xb
	.long	.LASF44
	.byte	0x7
	.value	0x130
	.long	0x9a
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x7
	.value	0x131
	.long	0x9a
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.value	0x132
	.long	0x9a
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.value	0x133
	.long	0xae
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x7
	.value	0x137
	.long	0x2f5
	.byte	0xc4
	.byte	0
	.uleb128 0x5
	.long	0xf8
	.long	0x29b
	.uleb128 0x6
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x7
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF50
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x2d3
	.uleb128 0x8
	.long	.LASF51
	.byte	0x7
	.byte	0xa2
	.long	0x2d3
	.byte	0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x7
	.byte	0xa3
	.long	0x2d9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF53
	.byte	0x7
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x2a2
	.uleb128 0xa
	.byte	0x8
	.long	0x10a
	.uleb128 0x5
	.long	0xf8
	.long	0x2ef
	.uleb128 0x6
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x29b
	.uleb128 0x5
	.long	0xf8
	.long	0x305
	.uleb128 0x6
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x30b
	.uleb128 0xd
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x7
	.long	.LASF56
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x34f
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0xa3
	.long	0xf2
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0xa4
	.long	0x34f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0xa5
	.long	0x28b
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x31e
	.uleb128 0x7
	.long	.LASF60
	.byte	0x58
	.byte	0x8
	.byte	0xa8
	.long	0x407
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0xaa
	.long	0xa7
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0xab
	.long	0x34f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0xac
	.long	0xf2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0xad
	.long	0xf2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xae
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xaf
	.long	0xa7
	.byte	0x28
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xb5
	.long	0x41b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xb6
	.long	0x431
	.byte	0x40
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0xb7
	.long	0x9a
	.byte	0x48
	.uleb128 0xe
	.long	.LASF71
	.byte	0x8
	.byte	0xbd
	.long	0x93
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xe
	.long	.LASF72
	.byte	0x8
	.byte	0xbe
	.long	0x93
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xe
	.long	.LASF73
	.byte	0x8
	.byte	0xc2
	.long	0x93
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	0x34f
	.long	0x41b
	.uleb128 0x10
	.long	0x9a
	.uleb128 0x10
	.long	0xa7
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x407
	.uleb128 0x11
	.long	0x431
	.uleb128 0x10
	.long	0x9a
	.uleb128 0x10
	.long	0x34f
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x421
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF74
	.uleb128 0x4
	.long	.LASF75
	.byte	0x9
	.byte	0x1c
	.long	0x449
	.uleb128 0x12
	.long	.LASF75
	.value	0x140
	.byte	0x9
	.byte	0x63
	.long	0x4a0
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x69
	.long	0x62c
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x6c
	.long	0x637
	.byte	0x50
	.uleb128 0x8
	.long	.LASF60
	.byte	0x9
	.byte	0x6f
	.long	0x355
	.byte	0x58
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x72
	.long	0x2d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x76
	.long	0x63d
	.byte	0xb4
	.uleb128 0x13
	.long	.LASF80
	.byte	0x9
	.byte	0x82
	.long	0x575
	.value	0x138
	.byte	0
	.uleb128 0x4
	.long	.LASF81
	.byte	0x9
	.byte	0x1d
	.long	0x4ab
	.uleb128 0x12
	.long	.LASF81
	.value	0x178
	.byte	0x9
	.byte	0xa2
	.long	0x52d
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0xa7
	.long	0x43e
	.byte	0
	.uleb128 0x13
	.long	.LASF83
	.byte	0x9
	.byte	0xaa
	.long	0x305
	.value	0x140
	.uleb128 0x13
	.long	.LASF84
	.byte	0x9
	.byte	0xae
	.long	0x616
	.value	0x148
	.uleb128 0x13
	.long	.LASF85
	.byte	0x9
	.byte	0xb1
	.long	0x305
	.value	0x150
	.uleb128 0x13
	.long	.LASF86
	.byte	0x9
	.byte	0xb4
	.long	0x2d
	.value	0x158
	.uleb128 0x13
	.long	.LASF87
	.byte	0x9
	.byte	0xb7
	.long	0x2d
	.value	0x15c
	.uleb128 0x13
	.long	.LASF88
	.byte	0x9
	.byte	0xc0
	.long	0x52d
	.value	0x160
	.uleb128 0x13
	.long	.LASF89
	.byte	0x9
	.byte	0xc3
	.long	0x52d
	.value	0x168
	.uleb128 0x13
	.long	.LASF90
	.byte	0x9
	.byte	0xc6
	.long	0x9a
	.value	0x170
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x533
	.uleb128 0x11
	.long	0x543
	.uleb128 0x10
	.long	0x543
	.uleb128 0x10
	.long	0x549
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x43e
	.uleb128 0xa
	.byte	0x8
	.long	0x4a0
	.uleb128 0x14
	.byte	0x4
	.byte	0x9
	.byte	0x32
	.long	0x56a
	.uleb128 0x15
	.long	.LASF91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF92
	.sleb128 1
	.uleb128 0x15
	.long	.LASF93
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF94
	.byte	0x9
	.byte	0x36
	.long	0x54f
	.uleb128 0x4
	.long	.LASF95
	.byte	0x9
	.byte	0x3b
	.long	0x580
	.uleb128 0xa
	.byte	0x8
	.long	0x586
	.uleb128 0xf
	.long	0x2d
	.long	0x595
	.uleb128 0x10
	.long	0x543
	.byte	0
	.uleb128 0x16
	.byte	0x50
	.byte	0x9
	.byte	0x3e
	.long	0x616
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x41
	.long	0x305
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x45
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x49
	.long	0x2d
	.byte	0xc
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x4c
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x4f
	.long	0x437
	.byte	0x14
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x52
	.long	0x437
	.byte	0x15
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x55
	.long	0x56a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x59
	.long	0x305
	.byte	0x20
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x5c
	.long	0x616
	.byte	0x28
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x5f
	.long	0x61c
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0x9c
	.uleb128 0x5
	.long	0x2d
	.long	0x62c
	.uleb128 0x6
	.long	0x34
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.long	.LASF106
	.byte	0x9
	.byte	0x60
	.long	0x595
	.uleb128 0xa
	.byte	0x8
	.long	0xff
	.uleb128 0x5
	.long	0xf8
	.long	0x64d
	.uleb128 0x6
	.long	0x34
	.byte	0x7f
	.byte	0
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.byte	0x21
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ba
	.uleb128 0x18
	.long	.LASF116
	.byte	0x1
	.byte	0x21
	.long	0x305
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x19
	.uleb128 0x1a
	.string	"dc"
	.byte	0x1
	.byte	0x23
	.long	0x4a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.string	"ap"
	.byte	0x1
	.byte	0x25
	.long	0x9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x1c
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF107
	.byte	0xa
	.value	0xa87
	.long	0x305
	.uleb128 0x1d
	.long	.LASF108
	.byte	0xa
	.value	0xa8a
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF109
	.byte	0xb
	.value	0x1b2
	.long	0x2d
	.uleb128 0x1d
	.long	.LASF110
	.byte	0xc
	.value	0x1c3
	.long	0x2d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1d
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
.LASF100:
	.string	"emitted_prefix_p"
.LASF57:
	.string	"limit"
.LASF64:
	.string	"next_free"
.LASF60:
	.string	"obstack"
.LASF79:
	.string	"digit_buffer"
.LASF39:
	.string	"_vtable_offset"
.LASF69:
	.string	"freefun"
.LASF105:
	.string	"diagnostic_count"
.LASF94:
	.string	"diagnostic_prefixing_rule_t"
.LASF84:
	.string	"args_ptr"
.LASF76:
	.string	"state"
.LASF111:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF99:
	.string	"indent_skip"
.LASF66:
	.string	"temp"
.LASF14:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF72:
	.string	"maybe_empty_object"
.LASF0:
	.string	"sizetype"
.LASF42:
	.string	"_offset"
.LASF26:
	.string	"_IO_write_ptr"
.LASF21:
	.string	"_flags"
.LASF28:
	.string	"_IO_buf_base"
.LASF7:
	.string	"va_list"
.LASF97:
	.string	"maximum_length"
.LASF19:
	.string	"__va_list_tag"
.LASF33:
	.string	"_markers"
.LASF23:
	.string	"_IO_read_end"
.LASF59:
	.string	"contents"
.LASF93:
	.string	"DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE"
.LASF65:
	.string	"chunk_limit"
.LASF112:
	.string	"c-errors.c"
.LASF86:
	.string	"line"
.LASF89:
	.string	"end_diagnostic"
.LASF103:
	.string	"cursor"
.LASF63:
	.string	"object_base"
.LASF113:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF110:
	.string	"flag_pedantic_errors"
.LASF41:
	.string	"_lock"
.LASF90:
	.string	"x_data"
.LASF8:
	.string	"long int"
.LASF2:
	.string	"fp_offset"
.LASF102:
	.string	"prefixing_rule"
.LASF38:
	.string	"_cur_column"
.LASF70:
	.string	"extra_arg"
.LASF96:
	.string	"prefix"
.LASF88:
	.string	"begin_diagnostic"
.LASF115:
	.string	"pedwarn_c99"
.LASF1:
	.string	"gp_offset"
.LASF101:
	.string	"need_newline_p"
.LASF25:
	.string	"_IO_write_base"
.LASF52:
	.string	"_sbuf"
.LASF20:
	.string	"_IO_FILE"
.LASF11:
	.string	"unsigned char"
.LASF104:
	.string	"format_args"
.LASF85:
	.string	"file"
.LASF68:
	.string	"chunkfun"
.LASF92:
	.string	"DIAGNOSTICS_SHOW_PREFIX_NEVER"
.LASF13:
	.string	"signed char"
.LASF108:
	.string	"lineno"
.LASF54:
	.string	"long long unsigned int"
.LASF56:
	.string	"_obstack_chunk"
.LASF91:
	.string	"DIAGNOSTICS_SHOW_PREFIX_ONCE"
.LASF75:
	.string	"output_buffer"
.LASF50:
	.string	"_IO_marker"
.LASF40:
	.string	"_shortbuf"
.LASF71:
	.string	"use_extra_arg"
.LASF10:
	.string	"long unsigned int"
.LASF116:
	.string	"msgid"
.LASF37:
	.string	"_old_offset"
.LASF34:
	.string	"_chain"
.LASF49:
	.string	"_unused2"
.LASF46:
	.string	"__pad4"
.LASF53:
	.string	"_pos"
.LASF12:
	.string	"short unsigned int"
.LASF4:
	.string	"reg_save_area"
.LASF17:
	.string	"char"
.LASF87:
	.string	"warn"
.LASF107:
	.string	"input_filename"
.LASF51:
	.string	"_next"
.LASF43:
	.string	"__pad1"
.LASF44:
	.string	"__pad2"
.LASF45:
	.string	"__pad3"
.LASF74:
	.string	"_Bool"
.LASF47:
	.string	"__pad5"
.LASF82:
	.string	"buffer"
.LASF78:
	.string	"line_length"
.LASF83:
	.string	"message"
.LASF32:
	.string	"_IO_save_end"
.LASF27:
	.string	"_IO_write_end"
.LASF16:
	.string	"__off64_t"
.LASF3:
	.string	"overflow_arg_area"
.LASF29:
	.string	"_IO_buf_end"
.LASF35:
	.string	"_fileno"
.LASF15:
	.string	"__off_t"
.LASF48:
	.string	"_mode"
.LASF61:
	.string	"chunk_size"
.LASF31:
	.string	"_IO_backup_base"
.LASF36:
	.string	"_flags2"
.LASF95:
	.string	"printer_fn"
.LASF24:
	.string	"_IO_read_base"
.LASF6:
	.string	"__gnuc_va_list"
.LASF80:
	.string	"format_decoder"
.LASF30:
	.string	"_IO_save_base"
.LASF106:
	.string	"output_state"
.LASF18:
	.string	"FILE"
.LASF58:
	.string	"prev"
.LASF5:
	.string	"unsigned int"
.LASF22:
	.string	"_IO_read_ptr"
.LASF67:
	.string	"alignment_mask"
.LASF77:
	.string	"stream"
.LASF98:
	.string	"ideal_maximum_length"
.LASF109:
	.string	"flag_isoc99"
.LASF62:
	.string	"chunk"
.LASF55:
	.string	"long long int"
.LASF114:
	.string	"_IO_lock_t"
.LASF81:
	.string	"diagnostic_context"
.LASF73:
	.string	"alloc_failed"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
