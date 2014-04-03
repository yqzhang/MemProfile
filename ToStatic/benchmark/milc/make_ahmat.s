	.file	"make_ahmat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# make_ahmat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	make_anti_hermitian
	.type	make_anti_hermitian, @function
make_anti_hermitian:
.LFB0:
	.file 1 "make_ahmat.c"
	.loc 1 30 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# m3, m3
	movq	%rsi, -32(%rbp)	# ah3, ah3
	.loc 1 34 0
	movq	-24(%rbp), %rax	# m3, tmp86
	movsd	8(%rax), %xmm1	# m3_1(D)->e[0][0].imag, D.2196
	movq	-24(%rbp), %rax	# m3, tmp87
	movsd	72(%rax), %xmm0	# m3_1(D)->e[1][1].imag, D.2196
	.loc 1 33 0
	addsd	%xmm1, %xmm0	# D.2196, tmp88
	movsd	%xmm0, -16(%rbp)	# tmp88, temp
	.loc 1 35 0
	movq	-24(%rbp), %rax	# m3, tmp89
	movsd	136(%rax), %xmm0	# m3_1(D)->e[2][2].imag, D.2196
	addsd	-16(%rbp), %xmm0	# temp, tmp90
	movsd	%xmm0, -8(%rbp)	# tmp90, temp2
	.loc 1 36 0
	movsd	-8(%rbp), %xmm1	# temp2, tmp92
	movsd	.LC0(%rip), %xmm0	#, tmp93
	mulsd	%xmm1, %xmm0	# tmp92, tmp91
	movsd	%xmm0, -16(%rbp)	# tmp91, temp
	.loc 1 37 0
	movq	-24(%rbp), %rax	# m3, tmp94
	movsd	8(%rax), %xmm0	# m3_1(D)->e[0][0].imag, D.2196
	subsd	-16(%rbp), %xmm0	# temp, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp95
	movsd	%xmm0, 48(%rax)	# D.2196, ah3_10(D)->m00im
	.loc 1 38 0
	movq	-24(%rbp), %rax	# m3, tmp96
	movsd	72(%rax), %xmm0	# m3_1(D)->e[1][1].imag, D.2196
	subsd	-16(%rbp), %xmm0	# temp, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp97
	movsd	%xmm0, 56(%rax)	# D.2196, ah3_10(D)->m11im
	.loc 1 39 0
	movq	-24(%rbp), %rax	# m3, tmp98
	movsd	136(%rax), %xmm0	# m3_1(D)->e[2][2].imag, D.2196
	subsd	-16(%rbp), %xmm0	# temp, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp99
	movsd	%xmm0, 64(%rax)	# D.2196, ah3_10(D)->m22im
	.loc 1 40 0
	movq	-24(%rbp), %rax	# m3, tmp100
	movsd	16(%rax), %xmm0	# m3_1(D)->e[0][1].real, D.2196
	movq	-24(%rbp), %rax	# m3, tmp101
	movsd	48(%rax), %xmm1	# m3_1(D)->e[1][0].real, D.2196
	subsd	%xmm1, %xmm0	# D.2196, tmp102
	movsd	%xmm0, -16(%rbp)	# tmp102, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp103
	movsd	.LC1(%rip), %xmm0	#, tmp104
	mulsd	%xmm1, %xmm0	# tmp103, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp105
	movsd	%xmm0, (%rax)	# D.2196, ah3_10(D)->m01.real
	.loc 1 41 0
	movq	-24(%rbp), %rax	# m3, tmp106
	movsd	32(%rax), %xmm0	# m3_1(D)->e[0][2].real, D.2196
	movq	-24(%rbp), %rax	# m3, tmp107
	movsd	96(%rax), %xmm1	# m3_1(D)->e[2][0].real, D.2196
	subsd	%xmm1, %xmm0	# D.2196, tmp108
	movsd	%xmm0, -16(%rbp)	# tmp108, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp109
	movsd	.LC1(%rip), %xmm0	#, tmp110
	mulsd	%xmm1, %xmm0	# tmp109, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp111
	movsd	%xmm0, 16(%rax)	# D.2196, ah3_10(D)->m02.real
	.loc 1 42 0
	movq	-24(%rbp), %rax	# m3, tmp112
	movsd	80(%rax), %xmm0	# m3_1(D)->e[1][2].real, D.2196
	movq	-24(%rbp), %rax	# m3, tmp113
	movsd	112(%rax), %xmm1	# m3_1(D)->e[2][1].real, D.2196
	subsd	%xmm1, %xmm0	# D.2196, tmp114
	movsd	%xmm0, -16(%rbp)	# tmp114, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp115
	movsd	.LC1(%rip), %xmm0	#, tmp116
	mulsd	%xmm1, %xmm0	# tmp115, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp117
	movsd	%xmm0, 32(%rax)	# D.2196, ah3_10(D)->m12.real
	.loc 1 43 0
	movq	-24(%rbp), %rax	# m3, tmp118
	movsd	24(%rax), %xmm1	# m3_1(D)->e[0][1].imag, D.2196
	movq	-24(%rbp), %rax	# m3, tmp119
	movsd	56(%rax), %xmm0	# m3_1(D)->e[1][0].imag, D.2196
	addsd	%xmm1, %xmm0	# D.2196, tmp120
	movsd	%xmm0, -16(%rbp)	# tmp120, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp121
	movsd	.LC1(%rip), %xmm0	#, tmp122
	mulsd	%xmm1, %xmm0	# tmp121, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp123
	movsd	%xmm0, 8(%rax)	# D.2196, ah3_10(D)->m01.imag
	.loc 1 44 0
	movq	-24(%rbp), %rax	# m3, tmp124
	movsd	40(%rax), %xmm1	# m3_1(D)->e[0][2].imag, D.2196
	movq	-24(%rbp), %rax	# m3, tmp125
	movsd	104(%rax), %xmm0	# m3_1(D)->e[2][0].imag, D.2196
	addsd	%xmm1, %xmm0	# D.2196, tmp126
	movsd	%xmm0, -16(%rbp)	# tmp126, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp127
	movsd	.LC1(%rip), %xmm0	#, tmp128
	mulsd	%xmm1, %xmm0	# tmp127, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp129
	movsd	%xmm0, 24(%rax)	# D.2196, ah3_10(D)->m02.imag
	.loc 1 45 0
	movq	-24(%rbp), %rax	# m3, tmp130
	movsd	88(%rax), %xmm1	# m3_1(D)->e[1][2].imag, D.2196
	movq	-24(%rbp), %rax	# m3, tmp131
	movsd	120(%rax), %xmm0	# m3_1(D)->e[2][1].imag, D.2196
	addsd	%xmm1, %xmm0	# D.2196, tmp132
	movsd	%xmm0, -16(%rbp)	# tmp132, temp
	movsd	-16(%rbp), %xmm1	# temp, tmp133
	movsd	.LC1(%rip), %xmm0	#, tmp134
	mulsd	%xmm1, %xmm0	# tmp133, D.2196
	movq	-32(%rbp), %rax	# ah3, tmp135
	movsd	%xmm0, 40(%rax)	# D.2196, ah3_10(D)->m12.imag
	.loc 1 47 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	make_anti_hermitian, .-make_anti_hermitian
	.section	.rodata
	.align 8
.LC0:
	.long	1371607770
	.long	1070945621
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x176
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x1
	.long	.LASF16
	.long	.LASF17
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0x4e
	.uleb128 0x3
	.long	.LASF0
	.byte	0x2
	.byte	0x4a
	.long	0x4e
	.byte	0
	.uleb128 0x3
	.long	.LASF1
	.byte	0x2
	.byte	0x4b
	.long	0x4e
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x4c
	.long	0x2d
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x90
	.byte	0x3
	.byte	0xe
	.long	0x7a
	.uleb128 0x6
	.string	"e"
	.byte	0x3
	.byte	0xe
	.long	0x7a
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0x90
	.uleb128 0x8
	.long	0x90
	.byte	0x2
	.uleb128 0x8
	.long	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0xe
	.long	0x67
	.uleb128 0x2
	.byte	0x50
	.byte	0x3
	.byte	0x10
	.long	0xff
	.uleb128 0x6
	.string	"m01"
	.byte	0x3
	.byte	0x11
	.long	0x55
	.byte	0
	.uleb128 0x6
	.string	"m02"
	.byte	0x3
	.byte	0x11
	.long	0x55
	.byte	0x10
	.uleb128 0x6
	.string	"m12"
	.byte	0x3
	.byte	0x11
	.long	0x55
	.byte	0x20
	.uleb128 0x3
	.long	.LASF7
	.byte	0x3
	.byte	0x11
	.long	0x4e
	.byte	0x30
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0x11
	.long	0x4e
	.byte	0x38
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x11
	.long	0x4e
	.byte	0x40
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x11
	.long	0x4e
	.byte	0x48
	.byte	0
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x11
	.long	0xa2
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x1e
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d
	.uleb128 0xb
	.string	"m3"
	.byte	0x1
	.byte	0x1e
	.long	0x16d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"ah3"
	.byte	0x1
	.byte	0x1e
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF14
	.byte	0x1
	.byte	0x1f
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x97
	.uleb128 0xd
	.byte	0x8
	.long	0xff
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xd
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
.LASF5:
	.string	"complex"
.LASF8:
	.string	"m11im"
.LASF6:
	.string	"su3_matrix"
.LASF10:
	.string	"space"
.LASF11:
	.string	"anti_hermitmat"
.LASF3:
	.string	"long unsigned int"
.LASF13:
	.string	"temp"
.LASF17:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"m00im"
.LASF12:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF9:
	.string	"m22im"
.LASF4:
	.string	"sizetype"
.LASF16:
	.string	"make_ahmat.c"
.LASF14:
	.string	"temp2"
.LASF15:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF18:
	.string	"make_anti_hermitian"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
