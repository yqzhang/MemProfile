	.file	"unlimit.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# unlimit.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	unlimit
	.type	unlimit, @function
unlimit:
.LFB0:
	.file 1 "unlimit.c"
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 69 0
	leaq	-16(%rbp), %rax	#, tmp60
	movq	%rax, %rsi	# tmp60,
	movl	$2, %edi	#,
	call	getrlimit	#
	.loc 1 70 0
	movq	-8(%rbp), %rax	# rl.rlim_max, D.1959
	movq	%rax, -16(%rbp)	# D.1959, rl.rlim_cur
	.loc 1 71 0
	leaq	-16(%rbp), %rax	#, tmp61
	movq	%rax, %rsi	# tmp61,
	movl	$2, %edi	#,
	call	setrlimit	#
	.loc 1 73 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	unlimit, .-unlimit
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/resource.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x151
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF32
	.byte	0x1
	.long	.LASF33
	.long	.LASF34
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.long	.LASF28
	.byte	0x2
	.byte	0x91
	.long	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF35
	.byte	0x4
	.byte	0x3
	.byte	0x1f
	.long	0xfd
	.uleb128 0x6
	.long	.LASF9
	.sleb128 0
	.uleb128 0x6
	.long	.LASF10
	.sleb128 1
	.uleb128 0x6
	.long	.LASF11
	.sleb128 2
	.uleb128 0x6
	.long	.LASF12
	.sleb128 3
	.uleb128 0x6
	.long	.LASF13
	.sleb128 4
	.uleb128 0x6
	.long	.LASF14
	.sleb128 5
	.uleb128 0x6
	.long	.LASF15
	.sleb128 7
	.uleb128 0x6
	.long	.LASF16
	.sleb128 7
	.uleb128 0x6
	.long	.LASF17
	.sleb128 9
	.uleb128 0x6
	.long	.LASF18
	.sleb128 6
	.uleb128 0x6
	.long	.LASF19
	.sleb128 8
	.uleb128 0x6
	.long	.LASF20
	.sleb128 10
	.uleb128 0x6
	.long	.LASF21
	.sleb128 11
	.uleb128 0x6
	.long	.LASF22
	.sleb128 12
	.uleb128 0x6
	.long	.LASF23
	.sleb128 13
	.uleb128 0x6
	.long	.LASF24
	.sleb128 14
	.uleb128 0x6
	.long	.LASF25
	.sleb128 15
	.uleb128 0x6
	.long	.LASF26
	.sleb128 16
	.uleb128 0x6
	.long	.LASF27
	.sleb128 16
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x3
	.byte	0x83
	.long	0x6c
	.uleb128 0x7
	.long	.LASF36
	.byte	0x10
	.byte	0x3
	.byte	0x8b
	.long	0x12d
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.byte	0x8e
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.byte	0x90
	.long	0xfd
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0x40
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.string	"rl"
	.byte	0x1
	.byte	0x43
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
.LASF21:
	.string	"__RLIMIT_SIGPENDING"
.LASF24:
	.string	"__RLIMIT_RTPRIO"
.LASF37:
	.string	"unlimit"
.LASF13:
	.string	"RLIMIT_CORE"
.LASF32:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF25:
	.string	"__RLIMIT_RTTIME"
.LASF29:
	.string	"rlim_t"
.LASF31:
	.string	"rlim_max"
.LASF6:
	.string	"long int"
.LASF35:
	.string	"__rlimit_resource"
.LASF12:
	.string	"RLIMIT_STACK"
.LASF20:
	.string	"__RLIMIT_LOCKS"
.LASF11:
	.string	"RLIMIT_DATA"
.LASF14:
	.string	"__RLIMIT_RSS"
.LASF27:
	.string	"__RLIM_NLIMITS"
.LASF0:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF18:
	.string	"__RLIMIT_NPROC"
.LASF8:
	.string	"char"
.LASF16:
	.string	"__RLIMIT_OFILE"
.LASF33:
	.string	"unlimit.c"
.LASF23:
	.string	"__RLIMIT_NICE"
.LASF34:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"RLIMIT_FSIZE"
.LASF9:
	.string	"RLIMIT_CPU"
.LASF30:
	.string	"rlim_cur"
.LASF17:
	.string	"RLIMIT_AS"
.LASF19:
	.string	"__RLIMIT_MEMLOCK"
.LASF22:
	.string	"__RLIMIT_MSGQUEUE"
.LASF15:
	.string	"RLIMIT_NOFILE"
.LASF36:
	.string	"rlimit"
.LASF28:
	.string	"__rlim_t"
.LASF26:
	.string	"__RLIMIT_NLIMITS"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
