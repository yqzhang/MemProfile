	.file	"pbeampp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 pbeampp.c -mtune=generic
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
	.globl	bea_is_dual_infeasible
	.type	bea_is_dual_infeasible, @function
bea_is_dual_infeasible:
.LFB2:
	.file 1 "pbeampp.c"
	.loc 1 40 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arc, arc
	movq	%rsi, -16(%rbp)	# red_cost, red_cost
	.loc 1 42 0
	cmpq	$0, -16(%rbp)	#, red_cost
	jns	.L2	#,
	.loc 1 41 0
	movq	-8(%rbp), %rax	# arc, tmp64
	movl	24(%rax), %eax	# arc_3(D)->ident, D.4816
	cmpl	$1, %eax	#, D.4816
	je	.L3	#,
.L2:
	.loc 1 42 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, red_cost
	jle	.L4	#,
	.loc 1 42 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# arc, tmp65
	movl	24(%rax), %eax	# arc_3(D)->ident, D.4816
	cmpl	$2, %eax	#, D.4816
	jne	.L4	#,
.L3:
	.loc 1 42 0 discriminator 1
	movl	$1, %eax	#, iftmp.0
	jmp	.L5	#
.L4:
	.loc 1 42 0 discriminator 3
	movl	$0, %eax	#, iftmp.0
.L5:
	.loc 1 43 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bea_is_dual_infeasible, .-bea_is_dual_infeasible
	.local	basket_size
	.comm	basket_size,8,8
	.local	basket
	.comm	basket,8424,32
	.local	perm
	.comm	perm,2808,32
	.globl	sort_basket
	.type	sort_basket, @function
sort_basket:
.LFB3:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# min, min
	movq	%rsi, -48(%rbp)	# max, max
	.loc 1 75 0
	movq	-40(%rbp), %rax	# min, tmp67
	movq	%rax, -32(%rbp)	# tmp67, l
	movq	-48(%rbp), %rax	# max, tmp68
	movq	%rax, -24(%rbp)	# tmp68, r
	.loc 1 77 0
	movq	-24(%rbp), %rax	# r, tmp69
	movq	-32(%rbp), %rdx	# l, tmp70
	addq	%rdx, %rax	# tmp70, D.4817
	movq	%rax, %rdx	# D.4817, tmp71
	shrq	$63, %rdx	#, tmp71
	addq	%rdx, %rax	# tmp71, tmp72
	sarq	%rax	# tmp73
	movq	perm(,%rax,8), %rax	# perm, D.4818
	movq	16(%rax), %rax	# _13->abs_cost, tmp74
	movq	%rax, -16(%rbp)	# tmp74, cut
	.loc 1 81 0
	jmp	.L8	#
.L14:
	jmp	.L8	#
.L9:
	.loc 1 82 0
	addq	$1, -32(%rbp)	#, l
.L8:
	.loc 1 81 0 discriminator 1
	movq	-32(%rbp), %rax	# l, tmp75
	movq	perm(,%rax,8), %rax	# perm, D.4818
	movq	16(%rax), %rax	# _15->abs_cost, D.4817
	cmpq	-16(%rbp), %rax	# cut, D.4817
	jg	.L9	#,
	.loc 1 83 0
	jmp	.L10	#
.L11:
	.loc 1 84 0
	subq	$1, -24(%rbp)	#, r
.L10:
	.loc 1 83 0 discriminator 1
	movq	-24(%rbp), %rax	# r, tmp76
	movq	perm(,%rax,8), %rax	# perm, D.4818
	movq	16(%rax), %rax	# _18->abs_cost, D.4817
	cmpq	-16(%rbp), %rax	# cut, D.4817
	jl	.L11	#,
	.loc 1 86 0
	movq	-32(%rbp), %rax	# l, tmp77
	cmpq	-24(%rbp), %rax	# r, tmp77
	jge	.L12	#,
	.loc 1 88 0
	movq	-32(%rbp), %rax	# l, tmp78
	movq	perm(,%rax,8), %rax	# perm, tmp79
	movq	%rax, -8(%rbp)	# tmp79, xchange
	.loc 1 89 0
	movq	-24(%rbp), %rax	# r, tmp80
	movq	perm(,%rax,8), %rdx	# perm, D.4818
	movq	-32(%rbp), %rax	# l, tmp81
	movq	%rdx, perm(,%rax,8)	# D.4818, perm
	.loc 1 90 0
	movq	-24(%rbp), %rax	# r, tmp82
	movq	-8(%rbp), %rdx	# xchange, tmp83
	movq	%rdx, perm(,%rax,8)	# tmp83, perm
.L12:
	.loc 1 92 0
	movq	-32(%rbp), %rax	# l, tmp84
	cmpq	-24(%rbp), %rax	# r, tmp84
	jg	.L13	#,
	.loc 1 94 0
	addq	$1, -32(%rbp)	#, l
	subq	$1, -24(%rbp)	#, r
.L13:
	.loc 1 98 0
	movq	-32(%rbp), %rax	# l, tmp85
	cmpq	-24(%rbp), %rax	# r, tmp85
	jle	.L14	#,
	.loc 1 100 0
	movq	-40(%rbp), %rax	# min, tmp86
	cmpq	-24(%rbp), %rax	# r, tmp86
	jge	.L15	#,
	.loc 1 101 0
	movq	-24(%rbp), %rdx	# r, tmp87
	movq	-40(%rbp), %rax	# min, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	sort_basket	#
.L15:
	.loc 1 102 0
	movq	-32(%rbp), %rax	# l, tmp89
	cmpq	-48(%rbp), %rax	# max, tmp89
	jge	.L7	#,
	.loc 1 102 0 is_stmt 0 discriminator 1
	cmpq	$50, -32(%rbp)	#, l
	jg	.L7	#,
	.loc 1 103 0 is_stmt 1
	movq	-48(%rbp), %rdx	# max, tmp90
	movq	-32(%rbp), %rax	# l, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	sort_basket	#
.L7:
	.loc 1 104 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	sort_basket, .-sort_basket
	.local	nr_group
	.comm	nr_group,8,8
	.local	group_pos
	.comm	group_pos,8,8
	.data
	.align 8
	.type	initialize, @object
	.size	initialize, 8
initialize:
	.quad	1
	.text
	.globl	primal_bea_mpp
	.type	primal_bea_mpp, @function
primal_bea_mpp:
.LFB4:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# m, m
	movq	%rsi, -64(%rbp)	# arcs, arcs
	movq	%rdx, -72(%rbp)	# stop_arcs, stop_arcs
	movq	%rcx, -80(%rbp)	# red_cost_of_bea, red_cost_of_bea
	.loc 1 133 0
	movq	initialize(%rip), %rax	# initialize, initialize.1
	testq	%rax, %rax	# initialize.1
	je	.L18	#,
	.loc 1 135 0
	movq	$1, -40(%rbp)	#, i
	jmp	.L19	#
.L20:
	.loc 1 136 0 discriminator 2
	movq	-40(%rbp), %rdx	# i, tmp114
	movq	%rdx, %rax	# tmp114, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp114, tmp115
	salq	$3, %rax	#, tmp116
	leaq	basket(%rax), %rdx	#, D.4820
	movq	-40(%rbp), %rax	# i, tmp117
	movq	%rdx, perm(,%rax,8)	# D.4820, perm
	.loc 1 135 0 discriminator 2
	addq	$1, -40(%rbp)	#, i
.L19:
	.loc 1 135 0 is_stmt 0 discriminator 1
	cmpq	$350, -40(%rbp)	#, i
	jle	.L20	#,
	.loc 1 137 0 is_stmt 1
	movq	-56(%rbp), %rax	# m, tmp118
	leaq	-1(%rax), %rcx	#, D.4821
	movabsq	$7870610804782742023, %rdx	#, tmp120
	movq	%rcx, %rax	# D.4821, tmp159
	imulq	%rdx	# tmp120
	sarq	$7, %rdx	#, tmp121
	movq	%rcx, %rax	# D.4821, tmp122
	sarq	$63, %rax	#, tmp122
	subq	%rax, %rdx	# tmp122, D.4821
	movq	%rdx, %rax	# D.4821, D.4821
	addq	$1, %rax	#, nr_group.2
	movq	%rax, nr_group(%rip)	# nr_group.2, nr_group
	.loc 1 138 0
	movq	$0, group_pos(%rip)	#, group_pos
	.loc 1 139 0
	movq	$0, basket_size(%rip)	#, basket_size
	.loc 1 140 0
	movq	$0, initialize(%rip)	#, initialize
	jmp	.L21	#
.L18:
	.loc 1 144 0
	movq	$2, -40(%rbp)	#, i
	movq	$0, -32(%rbp)	#, next
	jmp	.L22	#
.L27:
	.loc 1 146 0
	movq	-40(%rbp), %rax	# i, tmp123
	movq	perm(,%rax,8), %rax	# perm, D.4820
	movq	(%rax), %rax	# _18->a, tmp124
	movq	%rax, -24(%rbp)	# tmp124, arc
	.loc 1 147 0
	movq	-24(%rbp), %rax	# arc, tmp125
	movq	(%rax), %rdx	# arc_19->cost, D.4821
	movq	-24(%rbp), %rax	# arc, tmp126
	movq	8(%rax), %rax	# arc_19->tail, D.4822
	movq	(%rax), %rax	# _21->potential, D.4821
	subq	%rax, %rdx	# D.4821, D.4821
	movq	-24(%rbp), %rax	# arc, tmp127
	movq	16(%rax), %rax	# arc_19->head, D.4822
	movq	(%rax), %rax	# _24->potential, D.4821
	addq	%rdx, %rax	# D.4821, tmp128
	movq	%rax, -16(%rbp)	# tmp128, red_cost
	.loc 1 148 0
	cmpq	$0, -16(%rbp)	#, red_cost
	jns	.L23	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arc, tmp129
	movl	24(%rax), %eax	# arc_19->ident, D.4823
	cmpl	$1, %eax	#, D.4823
	je	.L24	#,
.L23:
	.loc 1 149 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, red_cost
	jle	.L25	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arc, tmp130
	movl	24(%rax), %eax	# arc_19->ident, D.4823
	cmpl	$2, %eax	#, D.4823
	jne	.L25	#,
.L24:
	.loc 1 151 0 is_stmt 1
	addq	$1, -32(%rbp)	#, next
	.loc 1 152 0
	movq	-32(%rbp), %rax	# next, tmp131
	movq	perm(,%rax,8), %rax	# perm, D.4820
	movq	-24(%rbp), %rdx	# arc, tmp132
	movq	%rdx, (%rax)	# tmp132, _30->a
	.loc 1 153 0
	movq	-32(%rbp), %rax	# next, tmp133
	movq	perm(,%rax,8), %rax	# perm, D.4820
	movq	-16(%rbp), %rdx	# red_cost, tmp134
	movq	%rdx, 8(%rax)	# tmp134, _31->cost
	.loc 1 154 0
	movq	-32(%rbp), %rax	# next, tmp135
	movq	perm(,%rax,8), %rcx	# perm, D.4820
	movq	-16(%rbp), %rax	# red_cost, tmp137
	cqto
	movq	%rdx, %rax	# tmp136, D.4821
	xorq	-16(%rbp), %rax	# red_cost, D.4821
	subq	%rdx, %rax	# tmp136, D.4821
	movq	%rax, 16(%rcx)	# D.4821, _32->abs_cost
.L25:
	.loc 1 144 0
	addq	$1, -40(%rbp)	#, i
.L22:
	.loc 1 144 0 is_stmt 0 discriminator 1
	cmpq	$50, -40(%rbp)	#, i
	jg	.L26	#,
	.loc 1 144 0 discriminator 2
	movq	basket_size(%rip), %rax	# basket_size, basket_size.3
	cmpq	%rax, -40(%rbp)	# basket_size.3, i
	jle	.L27	#,
.L26:
	.loc 1 157 0 is_stmt 1
	movq	-32(%rbp), %rax	# next, tmp138
	movq	%rax, basket_size(%rip)	# tmp138, basket_size
.L21:
	.loc 1 160 0
	movq	group_pos(%rip), %rax	# group_pos, tmp139
	movq	%rax, -8(%rbp)	# tmp139, old_group_pos
.L28:
	.loc 1 164 0
	movq	group_pos(%rip), %rax	# group_pos, group_pos.4
	salq	$6, %rax	#, D.4824
	movq	%rax, %rdx	# D.4824, D.4824
	movq	-64(%rbp), %rax	# arcs, tmp143
	addq	%rdx, %rax	# D.4824, tmp142
	movq	%rax, -24(%rbp)	# tmp142, arc
	.loc 1 165 0
	jmp	.L29	#
.L31:
	.loc 1 167 0
	movq	-24(%rbp), %rax	# arc, tmp144
	movl	24(%rax), %eax	# arc_5->ident, D.4823
	testl	%eax, %eax	# D.4823
	jle	.L30	#,
	.loc 1 170 0
	movq	-24(%rbp), %rax	# arc, tmp145
	movq	(%rax), %rdx	# arc_5->cost, D.4821
	movq	-24(%rbp), %rax	# arc, tmp146
	movq	8(%rax), %rax	# arc_5->tail, D.4822
	movq	(%rax), %rax	# _44->potential, D.4821
	subq	%rax, %rdx	# D.4821, D.4821
	movq	-24(%rbp), %rax	# arc, tmp147
	movq	16(%rax), %rax	# arc_5->head, D.4822
	movq	(%rax), %rax	# _47->potential, D.4821
	addq	%rdx, %rax	# D.4821, tmp148
	movq	%rax, -16(%rbp)	# tmp148, red_cost
	.loc 1 171 0
	movq	-16(%rbp), %rdx	# red_cost, tmp149
	movq	-24(%rbp), %rax	# arc, tmp150
	movq	%rdx, %rsi	# tmp149,
	movq	%rax, %rdi	# tmp150,
	call	bea_is_dual_infeasible	#
	testl	%eax, %eax	# D.4823
	je	.L30	#,
	.loc 1 173 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.6
	addq	$1, %rax	#, basket_size.7
	movq	%rax, basket_size(%rip)	# basket_size.7, basket_size
	.loc 1 174 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.8
	movq	perm(,%rax,8), %rax	# perm, D.4820
	movq	-24(%rbp), %rdx	# arc, tmp151
	movq	%rdx, (%rax)	# tmp151, _54->a
	.loc 1 175 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.9
	movq	perm(,%rax,8), %rax	# perm, D.4820
	movq	-16(%rbp), %rdx	# red_cost, tmp152
	movq	%rdx, 8(%rax)	# tmp152, _56->cost
	.loc 1 176 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.10
	movq	perm(,%rax,8), %rcx	# perm, D.4820
	movq	-16(%rbp), %rax	# red_cost, tmp154
	cqto
	movq	%rdx, %rax	# tmp153, D.4821
	xorq	-16(%rbp), %rax	# red_cost, D.4821
	subq	%rdx, %rax	# tmp153, D.4821
	movq	%rax, 16(%rcx)	# D.4821, _58->abs_cost
.L30:
	.loc 1 165 0
	movq	nr_group(%rip), %rax	# nr_group, nr_group.11
	salq	$6, %rax	#, D.4824
	addq	%rax, -24(%rbp)	# D.4824, arc
.L29:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# arc, tmp155
	cmpq	-72(%rbp), %rax	# stop_arcs, tmp155
	jb	.L31	#,
	.loc 1 182 0 is_stmt 1
	movq	group_pos(%rip), %rax	# group_pos, group_pos.13
	addq	$1, %rax	#, group_pos.14
	movq	%rax, group_pos(%rip)	# group_pos.14, group_pos
	movq	group_pos(%rip), %rdx	# group_pos, group_pos.15
	movq	nr_group(%rip), %rax	# nr_group, nr_group.16
	cmpq	%rax, %rdx	# nr_group.16, group_pos.15
	jne	.L32	#,
	.loc 1 183 0
	movq	$0, group_pos(%rip)	#, group_pos
.L32:
	.loc 1 185 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.17
	cmpq	$49, %rax	#, basket_size.17
	jg	.L33	#,
	.loc 1 185 0 is_stmt 0 discriminator 1
	movq	group_pos(%rip), %rax	# group_pos, group_pos.18
	cmpq	-8(%rbp), %rax	# old_group_pos, group_pos.18
	je	.L33	#,
	.loc 1 186 0 is_stmt 1
	jmp	.L28	#
.L33:
	.loc 1 188 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.19
	testq	%rax, %rax	# basket_size.19
	jne	.L34	#,
	.loc 1 190 0
	movq	$1, initialize(%rip)	#, initialize
	.loc 1 191 0
	movq	-80(%rbp), %rax	# red_cost_of_bea, tmp156
	movq	$0, (%rax)	#, *red_cost_of_bea_71(D)
	.loc 1 192 0
	movl	$0, %eax	#, D.4819
	jmp	.L35	#
.L34:
	.loc 1 195 0
	movq	basket_size(%rip), %rax	# basket_size, basket_size.20
	movq	%rax, %rsi	# basket_size.20,
	movl	$1, %edi	#,
	call	sort_basket	#
	.loc 1 197 0
	movq	perm+8(%rip), %rax	# perm, D.4820
	movq	8(%rax), %rdx	# _74->cost, D.4821
	movq	-80(%rbp), %rax	# red_cost_of_bea, tmp157
	movq	%rdx, (%rax)	# D.4821, *red_cost_of_bea_71(D)
	.loc 1 198 0
	movq	perm+8(%rip), %rax	# perm, D.4820
	movq	(%rax), %rax	# _76->a, D.4819
.L35:
	.loc 1 199 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	primal_bea_mpp, .-primal_bea_mpp
.Letext0:
	.file 2 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x438
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.long	.LASF58
	.long	.LASF59
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
	.uleb128 0x5
	.long	.LASF31
	.byte	0x68
	.byte	0x2
	.byte	0x6b
	.long	0x15a
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x6d
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x6e
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x6f
	.long	0x15a
	.byte	0x10
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x70
	.long	0x15a
	.byte	0x18
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x71
	.long	0x15a
	.byte	0x20
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x72
	.long	0x15a
	.byte	0x28
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x73
	.long	0x1e3
	.byte	0x30
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x74
	.long	0x1e3
	.byte	0x38
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0x74
	.long	0x1e3
	.byte	0x40
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0x75
	.long	0x1e3
	.byte	0x48
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x76
	.long	0x8f
	.byte	0x50
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.byte	0x77
	.long	0x5e
	.byte	0x58
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x60
	.uleb128 0x6
	.long	.LASF28
	.byte	0x2
	.byte	0x79
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x2
	.byte	0x64
	.long	0x165
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x4
	.long	.LASF30
	.byte	0x2
	.byte	0x66
	.long	0x176
	.uleb128 0x8
	.string	"arc"
	.byte	0x40
	.byte	0x2
	.byte	0x7e
	.long	0x1e3
	.uleb128 0x6
	.long	.LASF32
	.byte	0x2
	.byte	0x80
	.long	0x9a
	.byte	0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x2
	.byte	0x81
	.long	0x15a
	.byte	0x8
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.byte	0x81
	.long	0x15a
	.byte	0x10
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.byte	0x82
	.long	0x57
	.byte	0x18
	.uleb128 0x6
	.long	.LASF36
	.byte	0x2
	.byte	0x83
	.long	0x1e3
	.byte	0x20
	.uleb128 0x6
	.long	.LASF37
	.byte	0x2
	.byte	0x83
	.long	0x1e3
	.byte	0x28
	.uleb128 0x6
	.long	.LASF25
	.byte	0x2
	.byte	0x84
	.long	0x8f
	.byte	0x30
	.uleb128 0x6
	.long	.LASF38
	.byte	0x2
	.byte	0x85
	.long	0x9a
	.byte	0x38
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x2
	.byte	0x67
	.long	0x1ee
	.uleb128 0x7
	.byte	0x8
	.long	0x176
	.uleb128 0x5
	.long	.LASF40
	.byte	0x18
	.byte	0x1
	.byte	0x33
	.long	0x223
	.uleb128 0x9
	.string	"a"
	.byte	0x1
	.byte	0x35
	.long	0x223
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1
	.byte	0x36
	.long	0x9a
	.byte	0x8
	.uleb128 0x6
	.long	.LASF41
	.byte	0x1
	.byte	0x37
	.long	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x16b
	.uleb128 0x4
	.long	.LASF42
	.byte	0x1
	.byte	0x38
	.long	0x1f4
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.byte	0x22
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x272
	.uleb128 0xb
	.string	"arc"
	.byte	0x1
	.byte	0x22
	.long	0x223
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x22
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xd
	.long	.LASF60
	.byte	0x1
	.byte	0x41
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e0
	.uleb128 0xb
	.string	"min"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"max"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"r"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"cut"
	.byte	0x1
	.byte	0x48
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF44
	.byte	0x1
	.byte	0x49
	.long	0x2e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x229
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.byte	0x77
	.long	0x223
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x395
	.uleb128 0xb
	.string	"m"
	.byte	0x1
	.byte	0x77
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.byte	0x77
	.long	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xc
	.long	.LASF48
	.byte	0x1
	.byte	0x77
	.long	0x223
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xc
	.long	.LASF49
	.byte	0x1
	.byte	0x78
	.long	0x395
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x81
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"arc"
	.byte	0x1
	.byte	0x82
	.long	0x223
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF43
	.byte	0x1
	.byte	0x83
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0xa2
	.quad	.L28
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x9a
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x3a
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	basket_size
	.uleb128 0x12
	.long	0x229
	.long	0x3c1
	.uleb128 0x13
	.long	0x65
	.value	0x15e
	.byte	0
	.uleb128 0xf
	.long	.LASF40
	.byte	0x1
	.byte	0x3b
	.long	0x3b0
	.uleb128 0x9
	.byte	0x3
	.quad	basket
	.uleb128 0x12
	.long	0x2e0
	.long	0x3e7
	.uleb128 0x13
	.long	0x65
	.value	0x15e
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0x3c
	.long	0x3d6
	.uleb128 0x9
	.byte	0x3
	.quad	perm
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0x6f
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	nr_group
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x70
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	group_pos
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x73
	.long	0x5e
	.uleb128 0x9
	.byte	0x3
	.quad	initialize
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF58:
	.string	"pbeampp.c"
.LASF20:
	.string	"sibling_prev"
.LASF21:
	.string	"basic_arc"
.LASF39:
	.string	"arc_p"
.LASF46:
	.string	"primal_bea_mpp"
.LASF7:
	.string	"sizetype"
.LASF37:
	.string	"nextin"
.LASF22:
	.string	"firstout"
.LASF19:
	.string	"sibling"
.LASF54:
	.string	"nr_group"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"node"
.LASF34:
	.string	"head"
.LASF25:
	.string	"flow"
.LASF14:
	.string	"cost_t"
.LASF51:
	.string	"old_group_pos"
.LASF9:
	.string	"float"
.LASF24:
	.string	"arc_tmp"
.LASF11:
	.string	"long long int"
.LASF15:
	.string	"potential"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"firstin"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"initialize"
.LASF52:
	.string	"basket_size"
.LASF47:
	.string	"arcs"
.LASF40:
	.string	"basket"
.LASF57:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF33:
	.string	"tail"
.LASF59:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF29:
	.string	"node_p"
.LASF16:
	.string	"orientation"
.LASF28:
	.string	"time"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF32:
	.string	"cost"
.LASF41:
	.string	"abs_cost"
.LASF26:
	.string	"depth"
.LASF44:
	.string	"xchange"
.LASF48:
	.string	"stop_arcs"
.LASF61:
	.string	"NEXT"
.LASF42:
	.string	"BASKET"
.LASF0:
	.string	"long unsigned int"
.LASF38:
	.string	"org_cost"
.LASF43:
	.string	"red_cost"
.LASF10:
	.string	"double"
.LASF49:
	.string	"red_cost_of_bea"
.LASF17:
	.string	"child"
.LASF13:
	.string	"flow_t"
.LASF60:
	.string	"sort_basket"
.LASF18:
	.string	"pred"
.LASF53:
	.string	"perm"
.LASF45:
	.string	"bea_is_dual_infeasible"
.LASF35:
	.string	"ident"
.LASF27:
	.string	"number"
.LASF55:
	.string	"group_pos"
.LASF30:
	.string	"arc_t"
.LASF50:
	.string	"next"
.LASF36:
	.string	"nextout"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
