	.file	"psimplex.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 psimplex.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.globl	primal_net_simplex
	.type	primal_net_simplex, @function
primal_net_simplex:
.LFB2:
	.file 1 "psimplex.c"
	.loc 1 35 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)	# net, net
	.loc 1 38 0
	movq	$0, -144(%rbp)	#, opt
	.loc 1 48 0
	movq	-200(%rbp), %rax	# net, tmp93
	movq	568(%rax), %rax	# net_10(D)->arcs, tmp94
	movq	%rax, -104(%rbp)	# tmp94, arcs
	.loc 1 49 0
	movq	-200(%rbp), %rax	# net, tmp95
	movq	576(%rax), %rax	# net_10(D)->stop_arcs, tmp96
	movq	%rax, -96(%rbp)	# tmp96, stop_arcs
	.loc 1 51 0
	movq	-200(%rbp), %rax	# net, tmp97
	movq	424(%rax), %rax	# net_10(D)->m, tmp98
	movq	%rax, -88(%rbp)	# tmp98, m
	.loc 1 54 0
	movq	-200(%rbp), %rax	# net, tmp102
	addq	$600, %rax	#, tmp101
	movq	%rax, -80(%rbp)	# tmp101, iterations
	.loc 1 55 0
	movq	-200(%rbp), %rax	# net, tmp106
	addq	$608, %rax	#, tmp105
	movq	%rax, -72(%rbp)	# tmp105, bound_exchanges
	.loc 1 56 0
	movq	-200(%rbp), %rax	# net, tmp110
	addq	$616, %rax	#, tmp109
	movq	%rax, -64(%rbp)	# tmp109, checksum
	.loc 1 59 0
	jmp	.L2	#
.L18:
	.loc 1 61 0
	leaq	-160(%rbp), %rcx	#, tmp111
	movq	-96(%rbp), %rdx	# stop_arcs, tmp112
	movq	-104(%rbp), %rsi	# arcs, tmp113
	movq	-88(%rbp), %rax	# m, tmp114
	movq	%rax, %rdi	# tmp114,
	call	primal_bea_mpp	#
	movq	%rax, -56(%rbp)	# tmp115, bea
	cmpq	$0, -56(%rbp)	#, bea
	je	.L3	#,
	.loc 1 63 0
	movq	-80(%rbp), %rax	# iterations, tmp116
	movq	(%rax), %rax	# *iterations_14, D.4785
	leaq	1(%rax), %rdx	#, D.4785
	movq	-80(%rbp), %rax	# iterations, tmp117
	movq	%rdx, (%rax)	# D.4785, *iterations_14
	.loc 1 71 0
	movq	-160(%rbp), %rax	# red_cost_of_bea, red_cost_of_bea.0
	testq	%rax, %rax	# red_cost_of_bea.0
	jle	.L4	#,
	.loc 1 73 0
	movq	-56(%rbp), %rax	# bea, tmp118
	movq	16(%rax), %rax	# bea_17->head, tmp119
	movq	%rax, -128(%rbp)	# tmp119, iplus
	.loc 1 74 0
	movq	-56(%rbp), %rax	# bea, tmp120
	movq	8(%rax), %rax	# bea_17->tail, tmp121
	movq	%rax, -120(%rbp)	# tmp121, jplus
	jmp	.L5	#
.L4:
	.loc 1 78 0
	movq	-56(%rbp), %rax	# bea, tmp122
	movq	8(%rax), %rax	# bea_17->tail, tmp123
	movq	%rax, -128(%rbp)	# tmp123, iplus
	.loc 1 79 0
	movq	-56(%rbp), %rax	# bea, tmp124
	movq	16(%rax), %rax	# bea_17->head, tmp125
	movq	%rax, -120(%rbp)	# tmp125, jplus
.L5:
	.loc 1 82 0
	movq	$1, -184(%rbp)	#, delta
	.loc 1 83 0
	leaq	-168(%rbp), %rdi	#, tmp126
	movq	-120(%rbp), %rcx	# jplus, tmp127
	movq	-128(%rbp), %rdx	# iplus, tmp128
	leaq	-176(%rbp), %rsi	#, tmp129
	leaq	-184(%rbp), %rax	#, tmp130
	movq	%rdi, %r8	# tmp126,
	movq	%rax, %rdi	# tmp130,
	call	primal_iminus	#
	movq	%rax, -48(%rbp)	# tmp131, iminus
	.loc 1 86 0
	cmpq	$0, -48(%rbp)	#, iminus
	jne	.L6	#,
	.loc 1 88 0
	movq	-72(%rbp), %rax	# bound_exchanges, tmp132
	movq	(%rax), %rax	# *bound_exchanges_15, D.4785
	leaq	1(%rax), %rdx	#, D.4785
	movq	-72(%rbp), %rax	# bound_exchanges, tmp133
	movq	%rdx, (%rax)	# D.4785, *bound_exchanges_15
	.loc 1 90 0
	movq	-56(%rbp), %rax	# bea, tmp134
	movl	24(%rax), %eax	# bea_17->ident, D.4786
	cmpl	$2, %eax	#, D.4786
	jne	.L7	#,
	.loc 1 91 0
	movq	-56(%rbp), %rax	# bea, tmp135
	movl	$1, 24(%rax)	#, bea_17->ident
	jmp	.L8	#
.L7:
	.loc 1 93 0
	movq	-56(%rbp), %rax	# bea, tmp136
	movl	$2, 24(%rax)	#, bea_17->ident
.L8:
	.loc 1 95 0
	movq	-184(%rbp), %rax	# delta, delta.1
	testq	%rax, %rax	# delta.1
	je	.L2	#,
	.loc 1 96 0
	movq	-168(%rbp), %rdx	# w, w.2
	movq	-120(%rbp), %rcx	# jplus, tmp137
	movq	-128(%rbp), %rax	# iplus, tmp138
	movq	%rcx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	primal_update_flow	#
	jmp	.L2	#
.L6:
	.loc 1 100 0
	movq	-176(%rbp), %rax	# xchange, xchange.3
	testq	%rax, %rax	# xchange.3
	je	.L11	#,
	.loc 1 102 0
	movq	-120(%rbp), %rax	# jplus, tmp139
	movq	%rax, -40(%rbp)	# tmp139, temp
	.loc 1 103 0
	movq	-128(%rbp), %rax	# iplus, tmp140
	movq	%rax, -120(%rbp)	# tmp140, jplus
	.loc 1 104 0
	movq	-40(%rbp), %rax	# temp, tmp141
	movq	%rax, -128(%rbp)	# tmp141, iplus
.L11:
	.loc 1 107 0
	movq	-48(%rbp), %rax	# iminus, tmp142
	movq	24(%rax), %rax	# iminus_25->pred, tmp143
	movq	%rax, -32(%rbp)	# tmp143, jminus
	.loc 1 109 0
	movq	-48(%rbp), %rax	# iminus, tmp144
	movq	48(%rax), %rax	# iminus_25->basic_arc, tmp145
	movq	%rax, -24(%rbp)	# tmp145, bla
	.loc 1 111 0
	movq	-48(%rbp), %rax	# iminus, tmp146
	movl	8(%rax), %eax	# iminus_25->orientation, D.4786
	movslq	%eax, %rdx	# D.4786, D.4785
	movq	-176(%rbp), %rax	# xchange, xchange.4
	cmpq	%rax, %rdx	# xchange.4, D.4785
	je	.L12	#,
	.loc 1 112 0
	movq	$1, -112(%rbp)	#, new_set
	jmp	.L13	#
.L12:
	.loc 1 114 0
	movq	$2, -112(%rbp)	#, new_set
.L13:
	.loc 1 116 0
	movq	-160(%rbp), %rax	# red_cost_of_bea, red_cost_of_bea.5
	testq	%rax, %rax	# red_cost_of_bea.5
	jle	.L14	#,
	.loc 1 117 0
	movq	-184(%rbp), %rax	# delta, delta.6
	movl	$1, %edx	#, tmp147
	subq	%rax, %rdx	# delta.6, tmp148
	movq	%rdx, %rax	# tmp148, tmp148
	movq	%rax, -152(%rbp)	# tmp148, new_flow
	jmp	.L15	#
.L14:
	.loc 1 119 0
	movq	-184(%rbp), %rax	# delta, tmp149
	movq	%rax, -152(%rbp)	# tmp149, new_flow
.L15:
	.loc 1 121 0
	movq	-56(%rbp), %rax	# bea, tmp150
	movq	8(%rax), %rax	# bea_17->tail, D.4787
	cmpq	-128(%rbp), %rax	# iplus, D.4787
	jne	.L16	#,
	.loc 1 122 0
	movq	$1, -136(%rbp)	#, new_orientation
	jmp	.L17	#
.L16:
	.loc 1 124 0
	movq	$0, -136(%rbp)	#, new_orientation
.L17:
	.loc 1 126 0
	movq	-200(%rbp), %rax	# net, tmp151
	movq	512(%rax), %r9	# net_10(D)->feas_tol, D.4785
	movq	-160(%rbp), %r8	# red_cost_of_bea, red_cost_of_bea.7
	movq	-168(%rbp), %rdi	# w, w.8
	movq	-184(%rbp), %rdx	# delta, delta.9
	movq	-176(%rbp), %rax	# xchange, xchange.10
	testq	%rax, %rax	# xchange.10
	sete	%al	#, D.4788
	movzbl	%al, %eax	# D.4788, D.4785
	movq	-120(%rbp), %r11	# jplus, tmp152
	movq	-128(%rbp), %r10	# iplus, tmp153
	movq	-152(%rbp), %rcx	# new_flow, tmp154
	movq	-136(%rbp), %rsi	# new_orientation, tmp155
	movq	%r9, 40(%rsp)	# D.4785,
	movq	%r8, 32(%rsp)	# red_cost_of_bea.7,
	movq	-56(%rbp), %r8	# bea, tmp156
	movq	%r8, 24(%rsp)	# tmp156,
	movq	%rdi, 16(%rsp)	# w.8,
	movq	-32(%rbp), %rdi	# jminus, tmp157
	movq	%rdi, 8(%rsp)	# tmp157,
	movq	-48(%rbp), %rdi	# iminus, tmp158
	movq	%rdi, (%rsp)	# tmp158,
	movq	%r11, %r9	# tmp152,
	movq	%r10, %r8	# tmp153,
	movq	%rax, %rdi	# D.4785,
	call	update_tree	#
	.loc 1 131 0
	movq	-56(%rbp), %rax	# bea, tmp159
	movl	$0, 24(%rax)	#, bea_17->ident
	.loc 1 132 0
	movq	-112(%rbp), %rax	# new_set, tmp160
	movl	%eax, %edx	# tmp160, D.4786
	movq	-24(%rbp), %rax	# bla, tmp161
	movl	%edx, 24(%rax)	# D.4786, bla_36->ident
	.loc 1 134 0
	movq	-80(%rbp), %rax	# iterations, tmp162
	movq	(%rax), %rax	# *iterations_14, D.4785
	leaq	-1(%rax), %rcx	#, D.4785
	movabsq	$-6640827866535438581, %rdx	#, tmp164
	movq	%rcx, %rax	# D.4785, tmp180
	imulq	%rdx	# tmp164
	leaq	(%rdx,%rcx), %rax	#, tmp165
	sarq	$7, %rax	#, tmp166
	movq	%rax, %rdx	# tmp166, tmp166
	movq	%rcx, %rax	# D.4785, tmp167
	sarq	$63, %rax	#, tmp167
	subq	%rax, %rdx	# tmp167, D.4785
	movq	%rdx, %rax	# D.4785, tmp168
	salq	$2, %rax	#, tmp168
	addq	%rdx, %rax	# D.4785, tmp168
	leaq	0(,%rax,4), %rdx	#, tmp169
	addq	%rdx, %rax	# tmp169, tmp168
	salq	$3, %rax	#, tmp170
	subq	%rax, %rcx	# tmp168, D.4785
	movq	%rcx, %rdx	# D.4785, D.4785
	testq	%rdx, %rdx	# D.4785
	jne	.L2	#,
	.loc 1 136 0
	movq	-64(%rbp), %rax	# checksum, tmp171
	movq	(%rax), %rbx	# *checksum_16, D.4785
	movq	-200(%rbp), %rax	# net, tmp172
	movq	%rax, %rdi	# tmp172,
	call	refresh_potential	#
	leaq	(%rbx,%rax), %rdx	#, D.4785
	movq	-64(%rbp), %rax	# checksum, tmp173
	movq	%rdx, (%rax)	# D.4785, *checksum_16
	jmp	.L2	#
.L3:
	.loc 1 148 0
	movq	$1, -144(%rbp)	#, opt
.L2:
	.loc 1 59 0 discriminator 1
	cmpq	$0, -144(%rbp)	#, opt
	je	.L18	#,
	.loc 1 152 0
	movq	-64(%rbp), %rax	# checksum, tmp174
	movq	(%rax), %rbx	# *checksum_16, D.4785
	movq	-200(%rbp), %rax	# net, tmp175
	movq	%rax, %rdi	# tmp175,
	call	refresh_potential	#
	leaq	(%rbx,%rax), %rdx	#, D.4785
	movq	-64(%rbp), %rax	# checksum, tmp176
	movq	%rdx, (%rax)	# D.4785, *checksum_16
	.loc 1 153 0
	movq	-200(%rbp), %rax	# net, tmp177
	movq	%rax, %rdi	# tmp177,
	call	primal_feasible	#
	.loc 1 154 0
	movq	-200(%rbp), %rax	# net, tmp178
	movq	%rax, %rdi	# tmp178,
	call	dual_feasible	#
	.loc 1 156 0
	movl	$0, %eax	#, D.4785
	.loc 1 157 0
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	primal_net_simplex, .-primal_net_simplex
.Letext0:
	.file 2 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x521
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.long	.LASF83
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
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x44
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x45
	.long	0x5e
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x63
	.long	0xb0
	.uleb128 0x5
	.long	.LASF32
	.byte	0x68
	.byte	0x2
	.byte	0x6b
	.long	0x165
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x6d
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x6e
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x6f
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x70
	.long	0x165
	.byte	0x18
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x71
	.long	0x165
	.byte	0x20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x72
	.long	0x165
	.byte	0x28
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x73
	.long	0x1ee
	.byte	0x30
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x1ee
	.byte	0x38
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0x74
	.long	0x1ee
	.byte	0x40
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x75
	.long	0x1ee
	.byte	0x48
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x76
	.long	0x8f
	.byte	0x50
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.byte	0x77
	.long	0x5e
	.byte	0x58
	.uleb128 0x6
	.long	.LASF28
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x60
	.uleb128 0x6
	.long	.LASF29
	.byte	0x2
	.byte	0x79
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x2
	.byte	0x64
	.long	0x170
	.uleb128 0x7
	.byte	0x8
	.long	0xb0
	.uleb128 0x4
	.long	.LASF31
	.byte	0x2
	.byte	0x66
	.long	0x181
	.uleb128 0x8
	.string	"arc"
	.byte	0x40
	.byte	0x2
	.byte	0x7e
	.long	0x1ee
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.byte	0x80
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x8
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0x81
	.long	0x165
	.byte	0x10
	.uleb128 0x6
	.long	.LASF36
	.byte	0x2
	.byte	0x82
	.long	0x57
	.byte	0x18
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2
	.byte	0x83
	.long	0x1ee
	.byte	0x20
	.uleb128 0x6
	.long	.LASF38
	.byte	0x2
	.byte	0x83
	.long	0x1ee
	.byte	0x28
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x84
	.long	0x8f
	.byte	0x30
	.uleb128 0x6
	.long	.LASF39
	.byte	0x2
	.byte	0x85
	.long	0x9a
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x2
	.byte	0x67
	.long	0x1f9
	.uleb128 0x7
	.byte	0x8
	.long	0x181
	.uleb128 0x9
	.long	.LASF41
	.value	0x270
	.byte	0x2
	.byte	0x8a
	.long	0x38d
	.uleb128 0x6
	.long	.LASF42
	.byte	0x2
	.byte	0x8c
	.long	0x38d
	.byte	0
	.uleb128 0x6
	.long	.LASF43
	.byte	0x2
	.byte	0x8d
	.long	0x38d
	.byte	0xc8
	.uleb128 0xa
	.string	"n"
	.byte	0x2
	.byte	0x8e
	.long	0x5e
	.value	0x190
	.uleb128 0xb
	.long	.LASF44
	.byte	0x2
	.byte	0x8e
	.long	0x5e
	.value	0x198
	.uleb128 0xb
	.long	.LASF45
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1a0
	.uleb128 0xa
	.string	"m"
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1a8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1b0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x2
	.byte	0x8f
	.long	0x5e
	.value	0x1b8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x2
	.byte	0x90
	.long	0x5e
	.value	0x1c0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x2
	.byte	0x90
	.long	0x5e
	.value	0x1c8
	.uleb128 0xb
	.long	.LASF50
	.byte	0x2
	.byte	0x92
	.long	0x5e
	.value	0x1d0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x2
	.byte	0x93
	.long	0x5e
	.value	0x1d8
	.uleb128 0xb
	.long	.LASF52
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.value	0x1e0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x2
	.byte	0x95
	.long	0x5e
	.value	0x1e8
	.uleb128 0xa
	.string	"eps"
	.byte	0x2
	.byte	0x96
	.long	0x5e
	.value	0x1f0
	.uleb128 0xb
	.long	.LASF54
	.byte	0x2
	.byte	0x97
	.long	0x5e
	.value	0x1f8
	.uleb128 0xb
	.long	.LASF55
	.byte	0x2
	.byte	0x98
	.long	0x5e
	.value	0x200
	.uleb128 0xb
	.long	.LASF56
	.byte	0x2
	.byte	0x99
	.long	0x5e
	.value	0x208
	.uleb128 0xb
	.long	.LASF57
	.byte	0x2
	.byte	0x9a
	.long	0x5e
	.value	0x210
	.uleb128 0xb
	.long	.LASF58
	.byte	0x2
	.byte	0x9b
	.long	0x7a
	.value	0x218
	.uleb128 0xb
	.long	.LASF59
	.byte	0x2
	.byte	0x9c
	.long	0x9a
	.value	0x220
	.uleb128 0xb
	.long	.LASF60
	.byte	0x2
	.byte	0x9d
	.long	0x165
	.value	0x228
	.uleb128 0xb
	.long	.LASF61
	.byte	0x2
	.byte	0x9d
	.long	0x165
	.value	0x230
	.uleb128 0xb
	.long	.LASF62
	.byte	0x2
	.byte	0x9e
	.long	0x1ee
	.value	0x238
	.uleb128 0xb
	.long	.LASF63
	.byte	0x2
	.byte	0x9e
	.long	0x1ee
	.value	0x240
	.uleb128 0xb
	.long	.LASF64
	.byte	0x2
	.byte	0x9f
	.long	0x1ee
	.value	0x248
	.uleb128 0xb
	.long	.LASF65
	.byte	0x2
	.byte	0x9f
	.long	0x1ee
	.value	0x250
	.uleb128 0xb
	.long	.LASF66
	.byte	0x2
	.byte	0xa0
	.long	0x5e
	.value	0x258
	.uleb128 0xb
	.long	.LASF67
	.byte	0x2
	.byte	0xa1
	.long	0x5e
	.value	0x260
	.uleb128 0xb
	.long	.LASF68
	.byte	0x2
	.byte	0xa2
	.long	0x5e
	.value	0x268
	.byte	0
	.uleb128 0xc
	.long	0x6c
	.long	0x39d
	.uleb128 0xd
	.long	0x65
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	.LASF69
	.byte	0x2
	.byte	0xa3
	.long	0x1ff
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0x1e
	.long	0x5e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c
	.uleb128 0xf
	.string	"net"
	.byte	0x1
	.byte	0x1e
	.long	0x50c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.byte	0x24
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x25
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x11
	.string	"opt"
	.byte	0x1
	.byte	0x26
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x27
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x28
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x29
	.long	0x512
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x2a
	.long	0x512
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.byte	0x2b
	.long	0x512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.byte	0x2c
	.long	0x512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"w"
	.byte	0x1
	.byte	0x2d
	.long	0x512
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x11
	.string	"bea"
	.byte	0x1
	.byte	0x2e
	.long	0x518
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.string	"bla"
	.byte	0x1
	.byte	0x2f
	.long	0x518
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x30
	.long	0x518
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x31
	.long	0x518
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.byte	0x32
	.long	0x512
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"m"
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.byte	0x34
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.byte	0x35
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x36
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x10
	.long	.LASF67
	.byte	0x1
	.byte	0x37
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x38
	.long	0x51e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x39d
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x7
	.byte	0x8
	.long	0x176
	.uleb128 0x7
	.byte	0x8
	.long	0x5e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0x18
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
.LASF84:
	.string	"primal_net_simplex"
.LASF64:
	.string	"dummy_arcs"
.LASF51:
	.string	"dual_unbounded"
.LASF61:
	.string	"stop_nodes"
.LASF73:
	.string	"new_orientation"
.LASF57:
	.string	"bigM"
.LASF74:
	.string	"iplus"
.LASF22:
	.string	"basic_arc"
.LASF78:
	.string	"temp"
.LASF5:
	.string	"short int"
.LASF18:
	.string	"child"
.LASF7:
	.string	"sizetype"
.LASF58:
	.string	"optcost"
.LASF38:
	.string	"nextin"
.LASF70:
	.string	"delta"
.LASF23:
	.string	"firstout"
.LASF20:
	.string	"sibling"
.LASF48:
	.string	"max_residual_new_m"
.LASF65:
	.string	"stop_dummy"
.LASF35:
	.string	"head"
.LASF60:
	.string	"nodes"
.LASF68:
	.string	"checksum"
.LASF67:
	.string	"bound_exchanges"
.LASF14:
	.string	"cost_t"
.LASF79:
	.string	"new_set"
.LASF9:
	.string	"float"
.LASF45:
	.string	"max_m"
.LASF71:
	.string	"new_flow"
.LASF25:
	.string	"arc_tmp"
.LASF11:
	.string	"long long int"
.LASF16:
	.string	"potential"
.LASF47:
	.string	"m_impl"
.LASF6:
	.string	"long int"
.LASF59:
	.string	"ignore_impl"
.LASF54:
	.string	"opt_tol"
.LASF82:
	.string	"psimplex.c"
.LASF32:
	.string	"node"
.LASF75:
	.string	"jplus"
.LASF24:
	.string	"firstin"
.LASF21:
	.string	"sibling_prev"
.LASF44:
	.string	"n_trips"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"perturbed"
.LASF76:
	.string	"iminus"
.LASF62:
	.string	"arcs"
.LASF81:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF41:
	.string	"network"
.LASF83:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF15:
	.string	"node_t"
.LASF3:
	.string	"unsigned int"
.LASF30:
	.string	"node_p"
.LASF34:
	.string	"tail"
.LASF17:
	.string	"orientation"
.LASF29:
	.string	"time"
.LASF49:
	.string	"max_new_m"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF33:
	.string	"cost"
.LASF55:
	.string	"feas_tol"
.LASF56:
	.string	"pert_val"
.LASF43:
	.string	"clustfile"
.LASF27:
	.string	"depth"
.LASF26:
	.string	"flow"
.LASF72:
	.string	"xchange"
.LASF63:
	.string	"stop_arcs"
.LASF0:
	.string	"long unsigned int"
.LASF39:
	.string	"org_cost"
.LASF10:
	.string	"double"
.LASF80:
	.string	"red_cost_of_bea"
.LASF53:
	.string	"feasible"
.LASF69:
	.string	"network_t"
.LASF13:
	.string	"flow_t"
.LASF50:
	.string	"primal_unbounded"
.LASF66:
	.string	"iterations"
.LASF42:
	.string	"inputfile"
.LASF19:
	.string	"pred"
.LASF46:
	.string	"m_org"
.LASF36:
	.string	"ident"
.LASF28:
	.string	"number"
.LASF40:
	.string	"arc_p"
.LASF31:
	.string	"arc_t"
.LASF77:
	.string	"jminus"
.LASF37:
	.string	"nextout"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
