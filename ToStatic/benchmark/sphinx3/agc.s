	.file	"agc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 agc.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.globl	agc_max
	.type	agc_max, @function
agc_max:
.LFB2:
	.file 1 "agc.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mfc, mfc
	movl	%esi, -28(%rbp)	# n_frame, n_frame
	.loc 1 66 0
	movq	-24(%rbp), %rax	# mfc, tmp79
	movq	(%rax), %rax	# *mfc_5(D), D.4934
	movl	(%rax), %eax	# *_6, tmp80
	movl	%eax, -8(%rbp)	# tmp80, maxc0
	.loc 1 67 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 68 0
	movl	-4(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4935
	movq	-24(%rbp), %rax	# mfc, tmp82
	addq	%rdx, %rax	# D.4935, D.4936
	movq	(%rax), %rax	# *_12, D.4934
	movss	(%rax), %xmm0	# *_13, D.4937
	ucomiss	-8(%rbp), %xmm0	# maxc0, D.4937
	jbe	.L3	#,
	.loc 1 69 0
	movl	-4(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4935
	movq	-24(%rbp), %rax	# mfc, tmp84
	addq	%rdx, %rax	# D.4935, D.4936
	movq	(%rax), %rax	# *_17, D.4934
	movl	(%rax), %eax	# *_18, tmp85
	movl	%eax, -8(%rbp)	# tmp85, maxc0
.L3:
	.loc 1 67 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 67 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp86
	cmpl	-28(%rbp), %eax	# n_frame, tmp86
	jl	.L5	#,
	.loc 1 72 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 73 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4935
	movq	-24(%rbp), %rax	# mfc, tmp88
	addq	%rdx, %rax	# D.4935, D.4936
	movq	(%rax), %rax	# *_24, D.4934
	movl	-4(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, D.4935
	leaq	0(,%rdx,8), %rcx	#, D.4935
	movq	-24(%rbp), %rdx	# mfc, tmp90
	addq	%rcx, %rdx	# D.4935, D.4936
	movq	(%rdx), %rdx	# *_28, D.4934
	movss	(%rdx), %xmm0	# *_29, D.4937
	subss	-8(%rbp), %xmm0	# maxc0, D.4937
	movss	%xmm0, (%rax)	# D.4937, *_25
	.loc 1 72 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L6:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp91
	cmpl	-28(%rbp), %eax	# n_frame, tmp91
	jl	.L7	#,
	.loc 1 74 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	agc_max, .-agc_max
.Letext0:
	.file 2 "./libutil/prim_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x102
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF17
	.byte	0x1
	.long	.LASF18
	.long	.LASF19
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x81
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.byte	0x3b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xf9
	.uleb128 0x6
	.string	"mfc"
	.byte	0x1
	.byte	0x3b
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x3b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x3d
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x3e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.long	0xff
	.uleb128 0xa
	.byte	0x8
	.long	0x81
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF15:
	.string	"n_frame"
.LASF13:
	.string	"int32"
.LASF20:
	.string	"agc_max"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"float32"
.LASF19:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF18:
	.string	"agc.c"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF0:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF16:
	.string	"maxc0"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
