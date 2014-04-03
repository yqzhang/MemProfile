	.file	"gaussrand.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# gaussrand.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	gaussian_rand_no
	.type	gaussian_rand_no, @function
gaussian_rand_no:
.LFB0:
	.file 1 "gaussrand.c"
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# prn_pt, prn_pt
	.loc 1 21 0
	movl	iset.3203(%rip), %eax	# iset, iset.0
	testl	%eax, %eax	# iset.0
	jne	.L2	#,
.L3:
	.loc 1 23 0 discriminator 1
	movq	-40(%rbp), %rax	# prn_pt, tmp72
	movq	%rax, %rdi	# tmp72,
	call	myrand	#
	addsd	%xmm0, %xmm0	# D.3228, D.3228
	movsd	.LC0(%rip), %xmm1	#, tmp74
	subsd	%xmm1, %xmm0	# tmp74, tmp73
	movsd	%xmm0, -32(%rbp)	# tmp73, v1
	.loc 1 24 0 discriminator 1
	movq	-40(%rbp), %rax	# prn_pt, tmp75
	movq	%rax, %rdi	# tmp75,
	call	myrand	#
	addsd	%xmm0, %xmm0	# D.3228, D.3228
	movsd	.LC0(%rip), %xmm1	#, tmp77
	subsd	%xmm1, %xmm0	# tmp77, tmp76
	movsd	%xmm0, -24(%rbp)	# tmp76, v2
	.loc 1 25 0 discriminator 1
	movsd	-32(%rbp), %xmm0	# v1, tmp78
	movapd	%xmm0, %xmm1	# tmp78, D.3228
	mulsd	-32(%rbp), %xmm1	# v1, D.3228
	movsd	-24(%rbp), %xmm0	# v2, tmp79
	mulsd	-24(%rbp), %xmm0	# v2, D.3228
	addsd	%xmm1, %xmm0	# D.3228, tmp80
	movsd	%xmm0, -16(%rbp)	# tmp80, r
	.loc 1 26 0 discriminator 1
	movsd	-16(%rbp), %xmm0	# r, tmp81
	movsd	.LC0(%rip), %xmm1	#, tmp82
	ucomisd	%xmm1, %xmm0	# tmp82, tmp81
	jae	.L3	#,
	.loc 1 27 0
	movq	-16(%rbp), %rax	# r, tmp83
	movq	%rax, -48(%rbp)	# tmp83, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	.LC1(%rip), %xmm1	#, tmp84
	xorpd	%xmm1, %xmm0	# tmp84, D.3228
	divsd	-16(%rbp), %xmm0	# r, D.3228
	call	sqrt	#
	movsd	%xmm0, -48(%rbp)	#, %sfp
	movq	-48(%rbp), %rax	# %sfp, tmp85
	movq	%rax, -8(%rbp)	# tmp85, fac
	.loc 1 28 0
	movsd	-32(%rbp), %xmm0	# v1, tmp86
	mulsd	-8(%rbp), %xmm0	# fac, gset.1
	movsd	%xmm0, gset.3204(%rip)	# gset.1, gset
	.loc 1 29 0
	movl	$1, iset.3203(%rip)	#, iset
	.loc 1 30 0
	movsd	-24(%rbp), %xmm0	# v2, tmp87
	mulsd	-8(%rbp), %xmm0	# fac, D.3228
	movsd	%xmm0, -48(%rbp)	# D.3228, %sfp
	movq	-48(%rbp), %rax	# %sfp, D.3228
	jmp	.L4	#
.L2:
	.loc 1 32 0
	movl	$0, iset.3203(%rip)	#, iset
	.loc 1 33 0
	movq	gset.3204(%rip), %rax	# gset, D.3228
.L4:
	.loc 1 35 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	gaussian_rand_no, .-gaussian_rand_no
	.local	iset.3203
	.comm	iset.3203,4,4
	.local	gset.3204
	.comm	gset.3204,8,8
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "random.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x180
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF12
	.byte	0x1
	.long	.LASF13
	.long	.LASF14
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0xcf
	.uleb128 0x5
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0
	.uleb128 0x5
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x8
	.uleb128 0x5
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x10
	.uleb128 0x5
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x18
	.uleb128 0x5
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x20
	.uleb128 0x5
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x28
	.uleb128 0x5
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0xcf
	.byte	0x30
	.uleb128 0x6
	.long	.LASF3
	.byte	0x2
	.byte	0x9
	.long	0xcf
	.byte	0x38
	.uleb128 0x6
	.long	.LASF4
	.byte	0x2
	.byte	0x9
	.long	0xcf
	.byte	0x40
	.uleb128 0x6
	.long	.LASF5
	.byte	0x2
	.byte	0x9
	.long	0xcf
	.byte	0x48
	.uleb128 0x6
	.long	.LASF6
	.byte	0x2
	.byte	0xa
	.long	0x34
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0xb
	.long	0x49
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x10
	.long	0x34
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x10
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF10
	.byte	0x1
	.byte	0x11
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	iset.3203
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0x12
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	gset.3204
	.uleb128 0xb
	.string	"fac"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"r"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"v1"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"v2"
	.byte	0x1
	.byte	0x13
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0xd6
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
	.uleb128 0xc
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
.LASF6:
	.string	"scale"
.LASF0:
	.string	"float"
.LASF4:
	.string	"addend"
.LASF7:
	.string	"long unsigned int"
.LASF11:
	.string	"gset"
.LASF3:
	.string	"multiplier"
.LASF14:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"double"
.LASF13:
	.string	"gaussrand.c"
.LASF9:
	.string	"unsigned int"
.LASF2:
	.string	"char"
.LASF17:
	.string	"prn_pt"
.LASF16:
	.string	"gaussian_rand_no"
.LASF8:
	.string	"sizetype"
.LASF5:
	.string	"ic_state"
.LASF12:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF10:
	.string	"iset"
.LASF15:
	.string	"double_prn"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
