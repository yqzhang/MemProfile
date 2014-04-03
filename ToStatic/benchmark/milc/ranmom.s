	.file	"ranmom.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# ranmom.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	ranmom
	.type	ranmom, @function
ranmom:
.LFB2:
	.file 1 "ranmom.c"
	.loc 1 9 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	.loc 1 12 0
	movl	$0, %r13d	#, i
	movq	lattice(%rip), %rbx	# lattice, s
	jmp	.L2	#
.L5:
	.loc 1 13 0
	movl	$0, %r12d	#, dir
	jmp	.L3	#
.L4:
	.loc 1 18 0 discriminator 2
	leaq	16(%rbx), %rcx	#, D.4991
	movslq	%r12d, %rdx	# dir, tmp65
	movq	%rdx, %rax	# tmp65, tmp66
	salq	$2, %rax	#, tmp66
	addq	%rdx, %rax	# tmp65, tmp66
	salq	$4, %rax	#, tmp67
	addq	$688, %rax	#, tmp68
	addq	%rbx, %rax	# s, D.4992
	movq	%rcx, %rsi	# D.4991,
	movq	%rax, %rdi	# D.4992,
	call	random_anti_hermitian	#
	.loc 1 13 0 discriminator 2
	addl	$1, %r12d	#, dir
.L3:
	.loc 1 13 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, dir
	jle	.L4	#,
	.loc 1 12 0 is_stmt 1
	addl	$1, %r13d	#, i
	addq	$2048, %rbx	#, s
.L2:
	.loc 1 12 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.0
	cmpl	%eax, %r13d	# sites_on_node.0, i
	jl	.L5	#,
	.loc 1 40 0 is_stmt 1
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ranmom, .-ranmom
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.file 5 "./lattice.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d2
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
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0xb0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x4a
	.long	0x88
	.byte	0
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x4b
	.long	0x88
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x4c
	.long	0x8f
	.uleb128 0x4
	.byte	0x58
	.byte	0x3
	.byte	0x6
	.long	0x141
	.uleb128 0x7
	.string	"r0"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x7
	.string	"r1"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x7
	.string	"r2"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x7
	.string	"r3"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x7
	.string	"r4"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x7
	.string	"r5"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x7
	.string	"r6"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x5
	.long	.LASF18
	.byte	0x3
	.byte	0xa
	.long	0x88
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0xb
	.long	0xbb
	.uleb128 0x4
	.byte	0x90
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.uleb128 0x7
	.string	"e"
	.byte	0x4
	.byte	0xe
	.long	0x15f
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xb0
	.long	0x175
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0x14c
	.uleb128 0x4
	.byte	0x30
	.byte	0x4
	.byte	0xf
	.long	0x193
	.uleb128 0x7
	.string	"c"
	.byte	0x4
	.byte	0xf
	.long	0x193
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xb0
	.long	0x1a3
	.uleb128 0x9
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.byte	0xf
	.long	0x180
	.uleb128 0x4
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x20b
	.uleb128 0x7
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0
	.uleb128 0x7
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0x10
	.uleb128 0x7
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0xb0
	.byte	0x20
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x30
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x38
	.uleb128 0x5
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x40
	.uleb128 0x5
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x88
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x1ae
	.uleb128 0x8
	.long	0x1a3
	.long	0x226
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.value	0x800
	.byte	0x5
	.byte	0x1f
	.long	0x33d
	.uleb128 0x7
	.string	"x"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x7
	.string	"y"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x7
	.string	"z"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x7
	.string	"t"
	.byte	0x5
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x5
	.long	.LASF28
	.byte	0x5
	.byte	0x24
	.long	0x6c
	.byte	0x8
	.uleb128 0x5
	.long	.LASF29
	.byte	0x5
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x5
	.long	.LASF30
	.byte	0x5
	.byte	0x29
	.long	0x141
	.byte	0x10
	.uleb128 0x5
	.long	.LASF31
	.byte	0x5
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x5
	.long	.LASF32
	.byte	0x5
	.byte	0x32
	.long	0x33d
	.byte	0x70
	.uleb128 0xb
	.string	"mom"
	.byte	0x5
	.byte	0x3e
	.long	0x34d
	.value	0x2b0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x5
	.byte	0x42
	.long	0x35d
	.value	0x3f0
	.uleb128 0xb
	.string	"phi"
	.byte	0x5
	.byte	0x45
	.long	0x1a3
	.value	0x410
	.uleb128 0xc
	.long	.LASF34
	.byte	0x5
	.byte	0x46
	.long	0x1a3
	.value	0x440
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x47
	.long	0x1a3
	.value	0x470
	.uleb128 0xb
	.string	"xxx"
	.byte	0x5
	.byte	0x48
	.long	0x1a3
	.value	0x4a0
	.uleb128 0xb
	.string	"ttt"
	.byte	0x5
	.byte	0x49
	.long	0x1a3
	.value	0x4d0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x4a
	.long	0x1a3
	.value	0x500
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x5d
	.long	0x216
	.value	0x530
	.uleb128 0xc
	.long	.LASF38
	.byte	0x5
	.byte	0x5f
	.long	0x216
	.value	0x5f0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x5
	.byte	0x60
	.long	0x1a3
	.value	0x6b0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x5
	.byte	0x62
	.long	0x175
	.value	0x6e0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x5
	.byte	0x62
	.long	0x175
	.value	0x770
	.byte	0
	.uleb128 0x8
	.long	0x175
	.long	0x34d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x20b
	.long	0x35d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x88
	.long	0x36d
	.uleb128 0x9
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x5
	.byte	0x63
	.long	0x226
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.byte	0x9
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b9
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xe
	.string	"dir"
	.byte	0x1
	.byte	0xa
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xb
	.long	0x3b9
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xf
	.byte	0x8
	.long	0x36d
	.uleb128 0x10
	.long	.LASF43
	.byte	0x5
	.byte	0x87
	.long	0x57
	.uleb128 0x10
	.long	.LASF44
	.byte	0x5
	.byte	0x9a
	.long	0x3b9
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LASF36:
	.string	"g_rand"
.LASF15:
	.string	"multiplier"
.LASF45:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF33:
	.string	"phase"
.LASF19:
	.string	"complex"
.LASF42:
	.string	"site"
.LASF37:
	.string	"tempvec"
.LASF35:
	.string	"cg_p"
.LASF38:
	.string	"templongvec"
.LASF29:
	.string	"index"
.LASF32:
	.string	"link"
.LASF11:
	.string	"float"
.LASF30:
	.string	"site_prn"
.LASF21:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"real"
.LASF44:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF43:
	.string	"sites_on_node"
.LASF28:
	.string	"parity"
.LASF23:
	.string	"m00im"
.LASF20:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"space"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF40:
	.string	"tempmat1"
.LASF14:
	.string	"imag"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"su3_vector"
.LASF41:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF39:
	.string	"templongv1"
.LASF31:
	.string	"space1"
.LASF16:
	.string	"addend"
.LASF48:
	.string	"ranmom"
.LASF47:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF46:
	.string	"ranmom.c"
.LASF34:
	.string	"resid"
.LASF17:
	.string	"ic_state"
.LASF25:
	.string	"m22im"
.LASF27:
	.string	"anti_hermitmat"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
