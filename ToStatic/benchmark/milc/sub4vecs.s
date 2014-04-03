	.file	"sub4vecs.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# sub4vecs.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	sub_four_su3_vecs
	.type	sub_four_su3_vecs, @function
sub_four_su3_vecs:
.LFB0:
	.file 1 "sub4vecs.c"
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b1, b1
	movq	%rdx, -24(%rbp)	# b2, b2
	movq	%rcx, -32(%rbp)	# b3, b3
	movq	%r8, -40(%rbp)	# b4, b4
	.loc 1 26 0
	movq	-8(%rbp), %rax	# a, tmp131
	movsd	(%rax), %xmm0	# a_1(D)->c[0].real, D.2242
	movq	-16(%rbp), %rax	# b1, tmp132
	movsd	(%rax), %xmm1	# b1_3(D)->c[0].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp133
	movsd	%xmm0, (%rax)	# D.2242, a_1(D)->c[0].real
	movq	-8(%rbp), %rax	# a, tmp134
	movsd	8(%rax), %xmm0	# a_1(D)->c[0].imag, D.2242
	movq	-16(%rbp), %rax	# b1, tmp135
	movsd	8(%rax), %xmm1	# b1_3(D)->c[0].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp136
	movsd	%xmm0, 8(%rax)	# D.2242, a_1(D)->c[0].imag
	.loc 1 27 0
	movq	-8(%rbp), %rax	# a, tmp137
	movsd	16(%rax), %xmm0	# a_1(D)->c[1].real, D.2242
	movq	-16(%rbp), %rax	# b1, tmp138
	movsd	16(%rax), %xmm1	# b1_3(D)->c[1].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp139
	movsd	%xmm0, 16(%rax)	# D.2242, a_1(D)->c[1].real
	movq	-8(%rbp), %rax	# a, tmp140
	movsd	24(%rax), %xmm0	# a_1(D)->c[1].imag, D.2242
	movq	-16(%rbp), %rax	# b1, tmp141
	movsd	24(%rax), %xmm1	# b1_3(D)->c[1].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp142
	movsd	%xmm0, 24(%rax)	# D.2242, a_1(D)->c[1].imag
	.loc 1 28 0
	movq	-8(%rbp), %rax	# a, tmp143
	movsd	32(%rax), %xmm0	# a_1(D)->c[2].real, D.2242
	movq	-16(%rbp), %rax	# b1, tmp144
	movsd	32(%rax), %xmm1	# b1_3(D)->c[2].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp145
	movsd	%xmm0, 32(%rax)	# D.2242, a_1(D)->c[2].real
	movq	-8(%rbp), %rax	# a, tmp146
	movsd	40(%rax), %xmm0	# a_1(D)->c[2].imag, D.2242
	movq	-16(%rbp), %rax	# b1, tmp147
	movsd	40(%rax), %xmm1	# b1_3(D)->c[2].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp148
	movsd	%xmm0, 40(%rax)	# D.2242, a_1(D)->c[2].imag
	.loc 1 29 0
	movq	-8(%rbp), %rax	# a, tmp149
	movsd	(%rax), %xmm0	# a_1(D)->c[0].real, D.2242
	movq	-24(%rbp), %rax	# b2, tmp150
	movsd	(%rax), %xmm1	# b2_22(D)->c[0].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp151
	movsd	%xmm0, (%rax)	# D.2242, a_1(D)->c[0].real
	movq	-8(%rbp), %rax	# a, tmp152
	movsd	8(%rax), %xmm0	# a_1(D)->c[0].imag, D.2242
	movq	-24(%rbp), %rax	# b2, tmp153
	movsd	8(%rax), %xmm1	# b2_22(D)->c[0].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp154
	movsd	%xmm0, 8(%rax)	# D.2242, a_1(D)->c[0].imag
	.loc 1 30 0
	movq	-8(%rbp), %rax	# a, tmp155
	movsd	16(%rax), %xmm0	# a_1(D)->c[1].real, D.2242
	movq	-24(%rbp), %rax	# b2, tmp156
	movsd	16(%rax), %xmm1	# b2_22(D)->c[1].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp157
	movsd	%xmm0, 16(%rax)	# D.2242, a_1(D)->c[1].real
	movq	-8(%rbp), %rax	# a, tmp158
	movsd	24(%rax), %xmm0	# a_1(D)->c[1].imag, D.2242
	movq	-24(%rbp), %rax	# b2, tmp159
	movsd	24(%rax), %xmm1	# b2_22(D)->c[1].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp160
	movsd	%xmm0, 24(%rax)	# D.2242, a_1(D)->c[1].imag
	.loc 1 31 0
	movq	-8(%rbp), %rax	# a, tmp161
	movsd	32(%rax), %xmm0	# a_1(D)->c[2].real, D.2242
	movq	-24(%rbp), %rax	# b2, tmp162
	movsd	32(%rax), %xmm1	# b2_22(D)->c[2].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp163
	movsd	%xmm0, 32(%rax)	# D.2242, a_1(D)->c[2].real
	movq	-8(%rbp), %rax	# a, tmp164
	movsd	40(%rax), %xmm0	# a_1(D)->c[2].imag, D.2242
	movq	-24(%rbp), %rax	# b2, tmp165
	movsd	40(%rax), %xmm1	# b2_22(D)->c[2].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp166
	movsd	%xmm0, 40(%rax)	# D.2242, a_1(D)->c[2].imag
	.loc 1 32 0
	movq	-8(%rbp), %rax	# a, tmp167
	movsd	(%rax), %xmm0	# a_1(D)->c[0].real, D.2242
	movq	-32(%rbp), %rax	# b3, tmp168
	movsd	(%rax), %xmm1	# b3_41(D)->c[0].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp169
	movsd	%xmm0, (%rax)	# D.2242, a_1(D)->c[0].real
	movq	-8(%rbp), %rax	# a, tmp170
	movsd	8(%rax), %xmm0	# a_1(D)->c[0].imag, D.2242
	movq	-32(%rbp), %rax	# b3, tmp171
	movsd	8(%rax), %xmm1	# b3_41(D)->c[0].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp172
	movsd	%xmm0, 8(%rax)	# D.2242, a_1(D)->c[0].imag
	.loc 1 33 0
	movq	-8(%rbp), %rax	# a, tmp173
	movsd	16(%rax), %xmm0	# a_1(D)->c[1].real, D.2242
	movq	-32(%rbp), %rax	# b3, tmp174
	movsd	16(%rax), %xmm1	# b3_41(D)->c[1].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp175
	movsd	%xmm0, 16(%rax)	# D.2242, a_1(D)->c[1].real
	movq	-8(%rbp), %rax	# a, tmp176
	movsd	24(%rax), %xmm0	# a_1(D)->c[1].imag, D.2242
	movq	-32(%rbp), %rax	# b3, tmp177
	movsd	24(%rax), %xmm1	# b3_41(D)->c[1].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp178
	movsd	%xmm0, 24(%rax)	# D.2242, a_1(D)->c[1].imag
	.loc 1 34 0
	movq	-8(%rbp), %rax	# a, tmp179
	movsd	32(%rax), %xmm0	# a_1(D)->c[2].real, D.2242
	movq	-32(%rbp), %rax	# b3, tmp180
	movsd	32(%rax), %xmm1	# b3_41(D)->c[2].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp181
	movsd	%xmm0, 32(%rax)	# D.2242, a_1(D)->c[2].real
	movq	-8(%rbp), %rax	# a, tmp182
	movsd	40(%rax), %xmm0	# a_1(D)->c[2].imag, D.2242
	movq	-32(%rbp), %rax	# b3, tmp183
	movsd	40(%rax), %xmm1	# b3_41(D)->c[2].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp184
	movsd	%xmm0, 40(%rax)	# D.2242, a_1(D)->c[2].imag
	.loc 1 35 0
	movq	-8(%rbp), %rax	# a, tmp185
	movsd	(%rax), %xmm0	# a_1(D)->c[0].real, D.2242
	movq	-40(%rbp), %rax	# b4, tmp186
	movsd	(%rax), %xmm1	# b4_60(D)->c[0].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp187
	movsd	%xmm0, (%rax)	# D.2242, a_1(D)->c[0].real
	movq	-8(%rbp), %rax	# a, tmp188
	movsd	8(%rax), %xmm0	# a_1(D)->c[0].imag, D.2242
	movq	-40(%rbp), %rax	# b4, tmp189
	movsd	8(%rax), %xmm1	# b4_60(D)->c[0].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp190
	movsd	%xmm0, 8(%rax)	# D.2242, a_1(D)->c[0].imag
	.loc 1 36 0
	movq	-8(%rbp), %rax	# a, tmp191
	movsd	16(%rax), %xmm0	# a_1(D)->c[1].real, D.2242
	movq	-40(%rbp), %rax	# b4, tmp192
	movsd	16(%rax), %xmm1	# b4_60(D)->c[1].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp193
	movsd	%xmm0, 16(%rax)	# D.2242, a_1(D)->c[1].real
	movq	-8(%rbp), %rax	# a, tmp194
	movsd	24(%rax), %xmm0	# a_1(D)->c[1].imag, D.2242
	movq	-40(%rbp), %rax	# b4, tmp195
	movsd	24(%rax), %xmm1	# b4_60(D)->c[1].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp196
	movsd	%xmm0, 24(%rax)	# D.2242, a_1(D)->c[1].imag
	.loc 1 37 0
	movq	-8(%rbp), %rax	# a, tmp197
	movsd	32(%rax), %xmm0	# a_1(D)->c[2].real, D.2242
	movq	-40(%rbp), %rax	# b4, tmp198
	movsd	32(%rax), %xmm1	# b4_60(D)->c[2].real, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp199
	movsd	%xmm0, 32(%rax)	# D.2242, a_1(D)->c[2].real
	movq	-8(%rbp), %rax	# a, tmp200
	movsd	40(%rax), %xmm0	# a_1(D)->c[2].imag, D.2242
	movq	-40(%rbp), %rax	# b4, tmp201
	movsd	40(%rax), %xmm1	# b4_60(D)->c[2].imag, D.2242
	subsd	%xmm1, %xmm0	# D.2242, D.2242
	movq	-8(%rbp), %rax	# a, tmp202
	movsd	%xmm0, 40(%rax)	# D.2242, a_1(D)->c[2].imag
	.loc 1 38 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sub_four_su3_vecs, .-sub_four_su3_vecs
.Letext0:
	.file 2 "complex.h"
	.file 3 "su3.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10b
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
	.byte	0x18
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x108
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.byte	0x18
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xb
	.string	"b1"
	.byte	0x1
	.byte	0x18
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xb
	.string	"b2"
	.byte	0x1
	.byte	0x18
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"b3"
	.byte	0x1
	.byte	0x19
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"b4"
	.byte	0x1
	.byte	0x19
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xc
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
.LASF6:
	.string	"su3_vector"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"double"
.LASF11:
	.string	"sub_four_su3_vecs"
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
.LASF9:
	.string	"sub4vecs.c"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
