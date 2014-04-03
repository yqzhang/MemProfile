	.file	"rand_ahmat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# rand_ahmat.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	random_anti_hermitian
	.type	random_anti_hermitian, @function
random_anti_hermitian:
.LFB0:
	.file 1 "rand_ahmat.c"
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# mat_antihermit, mat_antihermit
	movq	%rsi, -48(%rbp)	# prn_pt, prn_pt
	.loc 1 18 0
	movabsq	$4603375528459645724, %rax	#, tmp71
	movq	%rax, -24(%rbp)	# tmp71, sqrt_third
	.loc 1 19 0
	movq	-48(%rbp), %rax	# prn_pt, tmp72
	movq	%rax, %rdi	# tmp72,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp73
	movq	%rax, -16(%rbp)	# tmp73, r3
	.loc 1 20 0
	movq	-48(%rbp), %rax	# prn_pt, tmp74
	movq	%rax, %rdi	# tmp74,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, tmp75
	movq	%rax, -8(%rbp)	# tmp75, r8
	.loc 1 21 0
	movsd	-24(%rbp), %xmm0	# sqrt_third, tmp76
	mulsd	-8(%rbp), %xmm0	# r8, D.3221
	addsd	-16(%rbp), %xmm0	# r3, D.3221
	movq	-40(%rbp), %rax	# mat_antihermit, tmp77
	movsd	%xmm0, 48(%rax)	# D.3221, mat_antihermit_7(D)->m00im
	.loc 1 22 0
	movsd	-24(%rbp), %xmm0	# sqrt_third, tmp78
	mulsd	-8(%rbp), %xmm0	# r8, D.3221
	subsd	-16(%rbp), %xmm0	# r3, D.3221
	movq	-40(%rbp), %rax	# mat_antihermit, tmp79
	movsd	%xmm0, 56(%rax)	# D.3221, mat_antihermit_7(D)->m11im
	.loc 1 23 0
	movsd	-24(%rbp), %xmm1	# sqrt_third, tmp80
	movsd	.LC1(%rip), %xmm0	#, tmp81
	mulsd	%xmm1, %xmm0	# tmp80, D.3221
	mulsd	-8(%rbp), %xmm0	# r8, D.3221
	movq	-40(%rbp), %rax	# mat_antihermit, tmp82
	movsd	%xmm0, 64(%rax)	# D.3221, mat_antihermit_7(D)->m22im
	.loc 1 24 0
	movq	-48(%rbp), %rax	# prn_pt, tmp83
	movq	%rax, %rdi	# tmp83,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp84
	movq	%rax, (%rdx)	# D.3221, mat_antihermit_7(D)->m01.real
	.loc 1 25 0
	movq	-48(%rbp), %rax	# prn_pt, tmp85
	movq	%rax, %rdi	# tmp85,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp86
	movq	%rax, 16(%rdx)	# D.3221, mat_antihermit_7(D)->m02.real
	.loc 1 26 0
	movq	-48(%rbp), %rax	# prn_pt, tmp87
	movq	%rax, %rdi	# tmp87,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp88
	movq	%rax, 32(%rdx)	# D.3221, mat_antihermit_7(D)->m12.real
	.loc 1 27 0
	movq	-48(%rbp), %rax	# prn_pt, tmp89
	movq	%rax, %rdi	# tmp89,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp90
	movq	%rax, 8(%rdx)	# D.3221, mat_antihermit_7(D)->m01.imag
	.loc 1 28 0
	movq	-48(%rbp), %rax	# prn_pt, tmp91
	movq	%rax, %rdi	# tmp91,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp92
	movq	%rax, 24(%rdx)	# D.3221, mat_antihermit_7(D)->m02.imag
	.loc 1 29 0
	movq	-48(%rbp), %rax	# prn_pt, tmp93
	movq	%rax, %rdi	# tmp93,
	call	gaussian_rand_no	#
	movsd	%xmm0, -56(%rbp)	#, %sfp
	movq	-56(%rbp), %rax	# %sfp, D.3221
	movq	-40(%rbp), %rdx	# mat_antihermit, tmp94
	movq	%rax, 40(%rdx)	# D.3221, mat_antihermit_7(D)->m12.imag
	.loc 1 31 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	random_anti_hermitian, .-random_anti_hermitian
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	-1073741824
	.text
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ee
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
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0x6a
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x4a
	.long	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x4b
	.long	0x34
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x4c
	.long	0x49
	.uleb128 0x4
	.byte	0x58
	.byte	0x3
	.byte	0x6
	.long	0xfb
	.uleb128 0x7
	.string	"r0"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0
	.uleb128 0x7
	.string	"r1"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x8
	.uleb128 0x7
	.string	"r2"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x10
	.uleb128 0x7
	.string	"r3"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x18
	.uleb128 0x7
	.string	"r4"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x20
	.uleb128 0x7
	.string	"r5"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x28
	.uleb128 0x7
	.string	"r6"
	.byte	0x3
	.byte	0x8
	.long	0xfb
	.byte	0x30
	.uleb128 0x5
	.long	.LASF5
	.byte	0x3
	.byte	0x9
	.long	0xfb
	.byte	0x38
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0x9
	.long	0xfb
	.byte	0x40
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x9
	.long	0xfb
	.byte	0x48
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0xa
	.long	0x34
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0xb
	.long	0x75
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x171
	.uleb128 0x7
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0x6a
	.byte	0
	.uleb128 0x7
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0x6a
	.byte	0x10
	.uleb128 0x7
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0x6a
	.byte	0x20
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x11
	.long	0x34
	.byte	0x30
	.uleb128 0x5
	.long	.LASF14
	.byte	0x4
	.byte	0x11
	.long	0x34
	.byte	0x38
	.uleb128 0x5
	.long	.LASF15
	.byte	0x4
	.byte	0x11
	.long	0x34
	.byte	0x40
	.uleb128 0x5
	.long	.LASF16
	.byte	0x4
	.byte	0x11
	.long	0x34
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.byte	0x11
	.long	0x114
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0xe
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0xe
	.long	0x1e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0xe
	.long	0x1eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"r3"
	.byte	0x1
	.byte	0xf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"r8"
	.byte	0x1
	.byte	0xf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x10
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.long	0x171
	.uleb128 0xc
	.byte	0x8
	.long	0x102
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
	.uleb128 0xb
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
.LASF10:
	.string	"complex"
.LASF23:
	.string	"rand_ahmat.c"
.LASF8:
	.string	"scale"
.LASF16:
	.string	"space"
.LASF0:
	.string	"float"
.LASF14:
	.string	"m11im"
.LASF6:
	.string	"addend"
.LASF9:
	.string	"long unsigned int"
.LASF25:
	.string	"random_anti_hermitian"
.LASF5:
	.string	"multiplier"
.LASF24:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF1:
	.string	"double"
.LASF4:
	.string	"imag"
.LASF19:
	.string	"mat_antihermit"
.LASF13:
	.string	"m00im"
.LASF18:
	.string	"unsigned int"
.LASF3:
	.string	"real"
.LASF2:
	.string	"char"
.LASF20:
	.string	"prn_pt"
.LASF21:
	.string	"sqrt_third"
.LASF15:
	.string	"m22im"
.LASF12:
	.string	"sizetype"
.LASF7:
	.string	"ic_state"
.LASF22:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF11:
	.string	"double_prn"
.LASF17:
	.string	"anti_hermitmat"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
