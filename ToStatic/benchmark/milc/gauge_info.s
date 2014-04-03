	.file	"gauge_info.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# gauge_info.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 32
	.type	path_ind, @object
	.size	path_ind, 168
path_ind:
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	1
	.long	0
	.long	6
	.long	-1
	.long	-1
	.long	-1
	.zero	4
	.long	1
	.long	2
	.long	0
	.long	5
	.long	6
	.long	-1
	.zero	4
	.long	1
	.long	2
	.long	3
	.long	0
	.long	4
	.long	5
	.long	6
	.long	1
	.long	1
	.long	0
	.long	6
	.long	6
	.long	-1
	.zero	4
	.align 16
	.type	path_length_in, @object
	.size	path_length_in, 24
path_length_in:
	.long	1
	.long	3
	.long	3
	.long	5
	.long	7
	.long	5
	.align 4
	.type	quark_action_npaths, @object
	.size	quark_action_npaths, 4
quark_action_npaths:
	.long	6
	.align 32
	.type	path_coeff, @object
	.size	path_coeff, 48
path_coeff:
	.long	0
	.long	1071906816
	.long	1431655765
	.long	-1079683755
	.long	0
	.long	-1078984704
	.long	0
	.long	1066401792
	.long	1431655765
	.long	-1083878059
	.long	0
	.long	-1078984704
	.align 32
	.type	quark_action_description, @object
	.size	quark_action_description, 72
quark_action_description:
	.string	"\"O(a^2): couplings(pi)=0, Naik term, No O(a^2) errors, tadpole weights\""
	.section	.rodata
	.align 8
.LC0:
	.string	"\"Gauge plus fermion (improved)\""
.LC1:
	.string	"%s"
.LC2:
	.string	"action.description"
.LC3:
	.string	"gauge.description"
.LC4:
	.string	"%d"
.LC5:
	.string	"gauge.nloops"
.LC6:
	.string	"gauge.nreps"
.LC7:
	.string	"%f"
.LC8:
	.string	"gauge.beta11"
.LC9:
	.string	"gauge.tadpole.u0"
.LC10:
	.string	"quark.description"
.LC11:
	.string	"quark.flavors"
.LC12:
	.string	"quark.mass"
	.text
	.globl	write_appl_gauge_info
	.type	write_appl_gauge_info, @function
write_appl_gauge_info:
.LFB2:
	.file 1 "gauge_info.c"
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	.loc 1 42 0
	movq	-8(%rbp), %rax	# fp, tmp59
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$.LC0, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp59,
	call	write_gauge_info_item	#
	.loc 1 45 0
	movq	-8(%rbp), %rax	# fp, tmp60
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$gauge_action_description, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp60,
	call	write_gauge_info_item	#
	.loc 1 47 0
	movq	-8(%rbp), %rax	# fp, tmp61
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$gauge_action_nloops, %ecx	#,
	movl	$.LC4, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	write_gauge_info_item	#
	.loc 1 48 0
	movq	-8(%rbp), %rax	# fp, tmp62
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$gauge_action_nreps, %ecx	#,
	movl	$.LC4, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	write_gauge_info_item	#
	.loc 1 49 0
	movq	-8(%rbp), %rax	# fp, tmp63
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$beta, %ecx	#,
	movl	$.LC7, %edx	#,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	write_gauge_info_item	#
	.loc 1 50 0
	movq	-8(%rbp), %rax	# fp, tmp64
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$u0, %ecx	#,
	movl	$.LC7, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	write_gauge_info_item	#
	.loc 1 52 0
	movq	-8(%rbp), %rax	# fp, tmp65
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$quark_action_description, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	write_gauge_info_item	#
	.loc 1 53 0
	movq	-8(%rbp), %rax	# fp, tmp66
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$nflavors, %ecx	#,
	movl	$.LC4, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	write_gauge_info_item	#
	.loc 1 54 0
	movq	-8(%rbp), %rax	# fp, tmp67
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$mass, %ecx	#,
	movl	$.LC7, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	write_gauge_info_item	#
	.loc 1 56 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	write_appl_gauge_info, .-write_appl_gauge_info
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./quark_action.h"
	.file 7 "lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF62
	.byte	0x1
	.long	.LASF63
	.long	.LASF64
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
	.long	.LASF65
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
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xd
	.long	.LASF66
	.byte	0x1
	.byte	0x21
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df
	.uleb128 0xe
	.string	"fp"
	.byte	0x1
	.byte	0x21
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x2f5
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0xc
	.long	0x86
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x6
	.byte	0x16
	.long	0x2df
	.uleb128 0x9
	.byte	0x3
	.quad	path_ind
	.uleb128 0xb
	.long	0x62
	.long	0x31a
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x6
	.byte	0x1e
	.long	0x30a
	.uleb128 0x9
	.byte	0x3
	.quad	path_length_in
	.uleb128 0xf
	.long	.LASF53
	.byte	0x6
	.byte	0x1f
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	quark_action_npaths
	.uleb128 0xb
	.long	0x2a7
	.long	0x354
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x6
	.byte	0x20
	.long	0x344
	.uleb128 0x9
	.byte	0x3
	.quad	path_coeff
	.uleb128 0xb
	.long	0x95
	.long	0x379
	.uleb128 0xc
	.long	0x86
	.byte	0x47
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x6
	.byte	0x29
	.long	0x369
	.uleb128 0x9
	.byte	0x3
	.quad	quark_action_description
	.uleb128 0x10
	.long	.LASF56
	.byte	0x7
	.byte	0x77
	.long	0x62
	.uleb128 0x10
	.long	.LASF57
	.byte	0x7
	.byte	0x79
	.long	0x2a7
	.uleb128 0x10
	.long	.LASF58
	.byte	0x7
	.byte	0x79
	.long	0x2a7
	.uleb128 0x11
	.string	"u0"
	.byte	0x7
	.byte	0x79
	.long	0x2a7
	.uleb128 0xb
	.long	0x95
	.long	0x3c9
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x1f
	.long	0x3b9
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0x20
	.long	0x62
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x20
	.long	0x62
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
	.uleb128 0xe
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
.LASF50:
	.string	"double"
.LASF42:
	.string	"_IO_FILE"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF60:
	.string	"gauge_action_nloops"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF56:
	.string	"nflavors"
.LASF54:
	.string	"path_coeff"
.LASF49:
	.string	"float"
.LASF47:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"gauge_info.c"
.LASF22:
	.string	"_IO_save_base"
.LASF62:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"long long unsigned int"
.LASF55:
	.string	"quark_action_description"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
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
.LASF57:
	.string	"beta"
.LASF64:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF2:
	.string	"short unsigned int"
.LASF26:
	.string	"_chain"
.LASF66:
	.string	"write_appl_gauge_info"
.LASF8:
	.string	"__off_t"
.LASF59:
	.string	"gauge_action_description"
.LASF23:
	.string	"_IO_backup_base"
.LASF58:
	.string	"mass"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF51:
	.string	"path_ind"
.LASF31:
	.string	"_vtable_offset"
.LASF52:
	.string	"path_length_in"
.LASF12:
	.string	"FILE"
.LASF61:
	.string	"gauge_action_nreps"
.LASF53:
	.string	"quark_action_npaths"
.LASF65:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
