	.file	"uncmp_ahmat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# uncmp_ahmat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	uncompress_anti_hermitian
	.type	uncompress_anti_hermitian, @function
uncompress_anti_hermitian:
.LFB0:
	.file 1 "uncmp_ahmat.c"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mat_antihermit, mat_antihermit
	movq	%rsi, -32(%rbp)	# mat_su3, mat_su3
	.loc 1 15 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp71
	movq	48(%rax), %rax	# mat_antihermit_1(D)->m00im, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp72
	movq	%rax, 8(%rdx)	# D.2180, mat_su3_3(D)->e[0][0].imag
	.loc 1 16 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp73
	movl	$0, %eax	#, tmp74
	movq	%rax, (%rdx)	# tmp74, mat_su3_3(D)->e[0][0].real
	.loc 1 17 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp75
	movq	56(%rax), %rax	# mat_antihermit_1(D)->m11im, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp76
	movq	%rax, 72(%rdx)	# D.2180, mat_su3_3(D)->e[1][1].imag
	.loc 1 18 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp77
	movl	$0, %eax	#, tmp78
	movq	%rax, 64(%rdx)	# tmp78, mat_su3_3(D)->e[1][1].real
	.loc 1 19 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp79
	movq	64(%rax), %rax	# mat_antihermit_1(D)->m22im, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp80
	movq	%rax, 136(%rdx)	# D.2180, mat_su3_3(D)->e[2][2].imag
	.loc 1 20 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp81
	movl	$0, %eax	#, tmp82
	movq	%rax, 128(%rdx)	# tmp82, mat_su3_3(D)->e[2][2].real
	.loc 1 21 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp83
	movq	8(%rax), %rax	# mat_antihermit_1(D)->m01.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp84
	movq	%rax, 24(%rdx)	# D.2180, mat_su3_3(D)->e[0][1].imag
	.loc 1 22 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp85
	movq	(%rax), %rax	# mat_antihermit_1(D)->m01.real, tmp86
	movq	%rax, -8(%rbp)	# tmp86, temp1
	.loc 1 23 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp87
	movq	-8(%rbp), %rax	# temp1, tmp88
	movq	%rax, 16(%rdx)	# tmp88, mat_su3_3(D)->e[0][1].real
	.loc 1 24 0
	movsd	-8(%rbp), %xmm1	# temp1, tmp89
	movsd	.LC1(%rip), %xmm0	#, tmp90
	xorpd	%xmm1, %xmm0	# tmp89, D.2180
	movq	-32(%rbp), %rax	# mat_su3, tmp91
	movsd	%xmm0, 48(%rax)	# D.2180, mat_su3_3(D)->e[1][0].real
	.loc 1 25 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp92
	movq	8(%rax), %rax	# mat_antihermit_1(D)->m01.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp93
	movq	%rax, 56(%rdx)	# D.2180, mat_su3_3(D)->e[1][0].imag
	.loc 1 26 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp94
	movq	24(%rax), %rax	# mat_antihermit_1(D)->m02.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp95
	movq	%rax, 40(%rdx)	# D.2180, mat_su3_3(D)->e[0][2].imag
	.loc 1 27 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp96
	movq	16(%rax), %rax	# mat_antihermit_1(D)->m02.real, tmp97
	movq	%rax, -8(%rbp)	# tmp97, temp1
	.loc 1 28 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp98
	movq	-8(%rbp), %rax	# temp1, tmp99
	movq	%rax, 32(%rdx)	# tmp99, mat_su3_3(D)->e[0][2].real
	.loc 1 29 0
	movsd	-8(%rbp), %xmm1	# temp1, tmp100
	movsd	.LC1(%rip), %xmm0	#, tmp101
	xorpd	%xmm1, %xmm0	# tmp100, D.2180
	movq	-32(%rbp), %rax	# mat_su3, tmp102
	movsd	%xmm0, 96(%rax)	# D.2180, mat_su3_3(D)->e[2][0].real
	.loc 1 30 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp103
	movq	24(%rax), %rax	# mat_antihermit_1(D)->m02.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp104
	movq	%rax, 104(%rdx)	# D.2180, mat_su3_3(D)->e[2][0].imag
	.loc 1 31 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp105
	movq	40(%rax), %rax	# mat_antihermit_1(D)->m12.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp106
	movq	%rax, 88(%rdx)	# D.2180, mat_su3_3(D)->e[1][2].imag
	.loc 1 32 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp107
	movq	32(%rax), %rax	# mat_antihermit_1(D)->m12.real, tmp108
	movq	%rax, -8(%rbp)	# tmp108, temp1
	.loc 1 33 0
	movq	-32(%rbp), %rdx	# mat_su3, tmp109
	movq	-8(%rbp), %rax	# temp1, tmp110
	movq	%rax, 80(%rdx)	# tmp110, mat_su3_3(D)->e[1][2].real
	.loc 1 34 0
	movsd	-8(%rbp), %xmm1	# temp1, tmp111
	movsd	.LC1(%rip), %xmm0	#, tmp112
	xorpd	%xmm1, %xmm0	# tmp111, D.2180
	movq	-32(%rbp), %rax	# mat_su3, tmp113
	movsd	%xmm0, 112(%rax)	# D.2180, mat_su3_3(D)->e[2][1].real
	.loc 1 35 0
	movq	-24(%rbp), %rax	# mat_antihermit, tmp114
	movq	40(%rax), %rax	# mat_antihermit_1(D)->m12.imag, D.2180
	movq	-32(%rbp), %rdx	# mat_su3, tmp115
	movq	%rax, 120(%rdx)	# D.2180, mat_su3_3(D)->e[2][1].imag
	.loc 1 36 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	uncompress_anti_hermitian, .-uncompress_anti_hermitian
	.section	.rodata
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x169
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
	.byte	0xb
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x160
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0xb
	.long	0x160
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0xc
	.long	0x166
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1
	.byte	0xe
	.long	0x4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0xff
	.uleb128 0xd
	.byte	0x8
	.long	0x97
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
.LASF16:
	.string	"uncmp_ahmat.c"
.LASF10:
	.string	"space"
.LASF11:
	.string	"anti_hermitmat"
.LASF3:
	.string	"long unsigned int"
.LASF17:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF13:
	.string	"mat_antihermit"
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
.LASF19:
	.string	"temp1"
.LASF15:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF18:
	.string	"uncompress_anti_hermitian"
.LASF14:
	.string	"mat_su3"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
