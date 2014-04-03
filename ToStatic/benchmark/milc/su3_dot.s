	.file	"su3_dot.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# su3_dot.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	su3_dot
	.type	su3_dot, @function
su3_dot:
.LFB0:
	.file 1 "su3_dot.c"
	.loc 1 10 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -32(%rbp)	# a, a
	movq	%rsi, -40(%rbp)	# b, b
	.loc 1 30 0
	movq	-32(%rbp), %rax	# a, tmp85
	movsd	(%rax), %xmm2	# a_1(D)->c[0].real, ar
	movq	-32(%rbp), %rax	# a, tmp86
	movsd	8(%rax), %xmm3	# a_1(D)->c[0].imag, ai
	.loc 1 31 0
	movq	-40(%rbp), %rax	# b, tmp87
	movsd	(%rax), %xmm4	# b_4(D)->c[0].real, br
	movq	-40(%rbp), %rax	# b, tmp88
	movsd	8(%rax), %xmm5	# b_4(D)->c[0].imag, bi
	.loc 1 32 0
	movapd	%xmm2, %xmm1	# ar, D.2193
	mulsd	%xmm4, %xmm1	# br, D.2193
	movapd	%xmm3, %xmm0	# ai, D.2193
	mulsd	%xmm5, %xmm0	# bi, D.2193
	addsd	%xmm0, %xmm1	# D.2193, cr
	movapd	%xmm1, %xmm6	# cr, cr
	.loc 1 33 0
	mulsd	%xmm5, %xmm2	# bi, D.2193
	movapd	%xmm2, %xmm0	# D.2193, D.2193
	mulsd	%xmm4, %xmm3	# br, D.2193
	movapd	%xmm3, %xmm1	# D.2193, D.2193
	subsd	%xmm1, %xmm0	# D.2193, ci
	movapd	%xmm0, %xmm2	# ci, ci
	.loc 1 35 0
	movq	-32(%rbp), %rax	# a, tmp89
	movsd	16(%rax), %xmm4	# a_1(D)->c[1].real, ar
	movq	-32(%rbp), %rax	# a, tmp90
	movsd	24(%rax), %xmm5	# a_1(D)->c[1].imag, ai
	.loc 1 36 0
	movq	-40(%rbp), %rax	# b, tmp91
	movsd	16(%rax), %xmm3	# b_4(D)->c[1].real, br
	movq	-40(%rbp), %rax	# b, tmp92
	movsd	24(%rax), %xmm7	# b_4(D)->c[1].imag, bi
	.loc 1 37 0
	movapd	%xmm4, %xmm1	# ar, D.2193
	mulsd	%xmm3, %xmm1	# br, D.2193
	movapd	%xmm5, %xmm0	# ai, D.2193
	mulsd	%xmm7, %xmm0	# bi, D.2193
	addsd	%xmm1, %xmm0	# D.2193, D.2193
	addsd	%xmm6, %xmm0	# cr, cr
	movapd	%xmm0, %xmm8	# cr, cr
	.loc 1 38 0
	mulsd	%xmm7, %xmm4	# bi, D.2193
	movapd	%xmm4, %xmm0	# D.2193, D.2193
	mulsd	%xmm3, %xmm5	# br, D.2193
	movapd	%xmm5, %xmm1	# D.2193, D.2193
	subsd	%xmm1, %xmm0	# D.2193, D.2193
	addsd	%xmm2, %xmm0	# ci, ci
	movapd	%xmm0, %xmm2	# ci, ci
	.loc 1 40 0
	movq	-32(%rbp), %rax	# a, tmp93
	movsd	32(%rax), %xmm6	# a_1(D)->c[2].real, ar
	movq	-32(%rbp), %rax	# a, tmp94
	movsd	40(%rax), %xmm7	# a_1(D)->c[2].imag, ai
	.loc 1 41 0
	movq	-40(%rbp), %rax	# b, tmp95
	movsd	32(%rax), %xmm3	# b_4(D)->c[2].real, br
	movq	-40(%rbp), %rax	# b, tmp96
	movsd	40(%rax), %xmm4	# b_4(D)->c[2].imag, bi
	.loc 1 42 0
	movapd	%xmm6, %xmm1	# ar, D.2193
	mulsd	%xmm3, %xmm1	# br, D.2193
	movapd	%xmm7, %xmm0	# ai, D.2193
	mulsd	%xmm4, %xmm0	# bi, D.2193
	addsd	%xmm1, %xmm0	# D.2193, D.2193
	addsd	%xmm8, %xmm0	# cr, cr
	movapd	%xmm0, %xmm5	# cr, cr
	.loc 1 43 0
	mulsd	%xmm4, %xmm6	# bi, D.2193
	movapd	%xmm6, %xmm0	# D.2193, D.2193
	mulsd	%xmm3, %xmm7	# br, D.2193
	movapd	%xmm7, %xmm1	# D.2193, D.2193
	subsd	%xmm1, %xmm0	# D.2193, D.2193
	addsd	%xmm2, %xmm0	# ci, ci
	.loc 1 45 0
	movsd	%xmm5, -48(%rbp)	# cr, %sfp
	movq	-48(%rbp), %r12	# %sfp, cc
	.loc 1 46 0
	movsd	%xmm0, -48(%rbp)	# ci, %sfp
	movq	-48(%rbp), %r13	# %sfp, cc
	.loc 1 47 0
	movq	%r12, %rax	# cc, D.2189
	movq	%r13, %rdx	# cc, D.2189
	movq	%rax, %rcx	# D.2189, tmp98
	movq	%rdx, %rbx	# D.2189,
	movq	%rdx, %rax	#, <retval>
	.loc 1 50 0
	movq	%rcx, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm1	# %sfp,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	su3_dot, .-su3_dot
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x134
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF8
	.byte	0x1
	.long	.LASF9
	.long	.LASF10
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x30
	.byte	0x3
	.byte	0xf
	.long	0x81
	.uleb128 0x6
	.string	"c"
	.byte	0x3
	.byte	0xf
	.long	0x81
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x55
	.long	0x91
	.uleb128 0x8
	.long	0x67
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x3
	.byte	0xf
	.long	0x6e
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0xa
	.long	0x55
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x131
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0xa
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"b"
	.byte	0x1
	.byte	0xa
	.long	0x131
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"ar"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xc
	.string	"ai"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xc
	.string	"br"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xc
	.string	"bi"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xc
	.string	"cr"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xc
	.string	"ci"
	.byte	0x1
	.byte	0x1a
	.long	0x4e
	.uleb128 0xd
	.string	"cc"
	.byte	0x1
	.byte	0x1c
	.long	0x55
	.uleb128 0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x8
	.byte	0x5d
	.byte	0x93
	.uleb128 0x8
	.byte	0
	.uleb128 0xe
	.byte	0x8
	.long	0x91
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
.LASF9:
	.string	"su3_dot.c"
.LASF6:
	.string	"su3_vector"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF1:
	.string	"imag"
.LASF7:
	.string	"unsigned int"
.LASF0:
	.string	"real"
.LASF4:
	.string	"sizetype"
.LASF8:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF11:
	.string	"su3_dot"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
