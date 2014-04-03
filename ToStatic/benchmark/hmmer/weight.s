	.file	"weight.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 weight.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC1:
	.string	"Cluster() failed"
.LC2:
	.string	"weight.c"
	.text
	.globl	GSCWeights
	.type	GSCWeights, @function
GSCWeights:
.LFB2:
	.file 1 "weight.c"
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# aseq, aseq
	movl	%esi, -60(%rbp)	# nseq, nseq
	movl	%edx, -64(%rbp)	# alen, alen
	movq	%rcx, -72(%rbp)	# wgt, wgt
	.loc 1 56 0
	cmpl	$1, -60(%rbp)	#, nseq
	jne	.L2	#,
	.loc 1 56 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rdx	# wgt, tmp92
	movl	.LC0(%rip), %eax	#, tmp93
	movl	%eax, (%rdx)	# tmp93, *wgt_4(D)
	jmp	.L1	#
.L2:
	.loc 1 62 0 is_stmt 1
	leaq	-40(%rbp), %rdx	#, tmp94
	movl	-60(%rbp), %ecx	# nseq, tmp95
	movq	-56(%rbp), %rax	# aseq, tmp96
	movl	%ecx, %esi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	MakeDiffMx	#
	.loc 1 63 0
	movq	-40(%rbp), %rax	# dmx, dmx.0
	leaq	-32(%rbp), %rdx	#, tmp97
	movl	-60(%rbp), %esi	# nseq, tmp98
	movq	%rdx, %rcx	# tmp97,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# dmx.0,
	call	Cluster	#
	testl	%eax, %eax	# D.6738
	jne	.L4	#,
	.loc 1 63 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L4:
	.loc 1 67 0 is_stmt 1
	movl	-60(%rbp), %eax	# nseq, tmp99
	cltq
	salq	$3, %rax	#, D.6739
	subq	$4, %rax	#, D.6739
	movq	%rax, %rdx	# D.6739,
	movl	$67, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp100, lwt
	.loc 1 68 0
	movl	-60(%rbp), %eax	# nseq, tmp101
	cltq
	salq	$3, %rax	#, D.6739
	subq	$4, %rax	#, D.6739
	movq	%rax, %rdx	# D.6739,
	movl	$68, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp102, rwt
	.loc 1 69 0
	movl	-60(%rbp), %eax	# nseq, tmp103
	cltq
	salq	$3, %rax	#, D.6739
	subq	$4, %rax	#, D.6739
	movq	%rax, %rdx	# D.6739,
	movl	$69, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp104, fwt
	.loc 1 76 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L5	#
.L6:
	.loc 1 77 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6739
	movq	-24(%rbp), %rax	# lwt, tmp106
	leaq	(%rdx,%rax), %rcx	#, D.6740
	movl	-44(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6739
	movq	-16(%rbp), %rax	# rwt, tmp108
	addq	%rax, %rdx	# tmp108, D.6740
	movl	.LC3(%rip), %eax	#, tmp109
	movl	%eax, (%rdx)	# tmp109, *_26
	movl	(%rdx), %eax	# *_26, D.6741
	movl	%eax, (%rcx)	# D.6741, *_23
	.loc 1 76 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L5:
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp110
	cmpl	-60(%rbp), %eax	# nseq, tmp110
	jl	.L6	#,
	.loc 1 80 0 is_stmt 1
	movq	-32(%rbp), %rax	# tree, tree.1
	movl	-60(%rbp), %edi	# nseq, tmp111
	movq	-16(%rbp), %rcx	# rwt, tmp112
	movq	-24(%rbp), %rdx	# lwt, tmp113
	movl	-60(%rbp), %esi	# nseq, tmp114
	movl	%edi, %r8d	# tmp111,
	movq	%rax, %rdi	# tree.1,
	call	upweight	#
	.loc 1 84 0
	movl	-60(%rbp), %eax	# nseq, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6739
	movq	-8(%rbp), %rax	# fwt, tmp116
	addq	%rdx, %rax	# D.6739, D.6740
	cvtsi2ss	-60(%rbp), %xmm0	# nseq, D.6741
	movss	%xmm0, (%rax)	# D.6741, *_32
	.loc 1 85 0
	movq	-32(%rbp), %rax	# tree, tree.2
	movl	-60(%rbp), %r8d	# nseq, tmp117
	movq	-8(%rbp), %rdi	# fwt, tmp118
	movq	-16(%rbp), %rcx	# rwt, tmp119
	movq	-24(%rbp), %rdx	# lwt, tmp120
	movl	-60(%rbp), %esi	# nseq, tmp121
	movl	%r8d, %r9d	# tmp117,
	movq	%rdi, %r8	# tmp118,
	movq	%rax, %rdi	# tree.2,
	call	downweight	#
	.loc 1 87 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 1 88 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6739
	movq	-72(%rbp), %rax	# wgt, tmp123
	addq	%rax, %rdx	# tmp123, D.6740
	movl	-44(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6739
	movq	-8(%rbp), %rax	# fwt, tmp125
	addq	%rcx, %rax	# D.6739, D.6740
	movl	(%rax), %eax	# *_41, D.6741
	movl	%eax, (%rdx)	# D.6741, *_38
	.loc 1 87 0 discriminator 2
	addl	$1, -44(%rbp)	#, i
.L7:
	.loc 1 87 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp126
	cmpl	-60(%rbp), %eax	# nseq, tmp126
	jl	.L8	#,
	.loc 1 90 0 is_stmt 1
	movq	-40(%rbp), %rax	# dmx, dmx.3
	movq	%rax, %rdi	# dmx.3,
	call	FMX2Free	#
	.loc 1 91 0
	movq	-32(%rbp), %rax	# tree, tree.4
	movl	-60(%rbp), %edx	# nseq, tmp127
	movl	%edx, %esi	# tmp127,
	movq	%rax, %rdi	# tree.4,
	call	FreePhylo	#
	.loc 1 92 0
	movq	-24(%rbp), %rax	# lwt, tmp128
	movq	%rax, %rdi	# tmp128,
	call	free	#
	movq	-16(%rbp), %rax	# rwt, tmp129
	movq	%rax, %rdi	# tmp129,
	call	free	#
	movq	-8(%rbp), %rax	# fwt, tmp130
	movq	%rax, %rdi	# tmp130,
	call	free	#
.L1:
	.loc 1 93 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	GSCWeights, .-GSCWeights
	.type	upweight, @function
upweight:
.LFB3:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# tree, tree
	movl	%esi, -28(%rbp)	# nseq, nseq
	movq	%rdx, -40(%rbp)	# lwt, lwt
	movq	%rcx, -48(%rbp)	# rwt, rwt
	movl	%r8d, -32(%rbp)	# node, node
	.loc 1 100 0
	movl	-28(%rbp), %eax	# nseq, tmp103
	movl	-32(%rbp), %edx	# node, tmp104
	subl	%eax, %edx	# tmp103, D.6744
	movl	%edx, %eax	# D.6744, D.6744
	movslq	%eax, %rdx	# D.6744, D.6745
	movq	%rdx, %rax	# D.6745, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# D.6745, tmp105
	salq	$3, %rax	#, tmp106
	movq	%rax, %rdx	# tmp105, D.6745
	movq	-24(%rbp), %rax	# tree, tmp107
	addq	%rdx, %rax	# D.6745, D.6746
	movl	4(%rax), %eax	# _7->left, tmp108
	movl	%eax, -8(%rbp)	# tmp108, ld
	.loc 1 101 0
	movl	-8(%rbp), %eax	# ld, tmp109
	cmpl	-28(%rbp), %eax	# nseq, tmp109
	jl	.L10	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %edi	# ld, tmp110
	movq	-48(%rbp), %rcx	# rwt, tmp111
	movq	-40(%rbp), %rdx	# lwt, tmp112
	movl	-28(%rbp), %esi	# nseq, tmp113
	movq	-24(%rbp), %rax	# tree, tmp114
	movl	%edi, %r8d	# tmp110,
	movq	%rax, %rdi	# tmp114,
	call	upweight	#
.L10:
	.loc 1 102 0 is_stmt 1
	movl	-28(%rbp), %eax	# nseq, tmp115
	movl	-32(%rbp), %edx	# node, tmp116
	subl	%eax, %edx	# tmp115, D.6744
	movl	%edx, %eax	# D.6744, D.6744
	movslq	%eax, %rdx	# D.6744, D.6745
	movq	%rdx, %rax	# D.6745, tmp117
	salq	$2, %rax	#, tmp117
	addq	%rdx, %rax	# D.6745, tmp117
	salq	$3, %rax	#, tmp118
	movq	%rax, %rdx	# tmp117, D.6745
	movq	-24(%rbp), %rax	# tree, tmp119
	addq	%rdx, %rax	# D.6745, D.6746
	movl	8(%rax), %eax	# _14->right, tmp120
	movl	%eax, -4(%rbp)	# tmp120, rd
	.loc 1 103 0
	movl	-4(%rbp), %eax	# rd, tmp121
	cmpl	-28(%rbp), %eax	# nseq, tmp121
	jl	.L11	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %edi	# rd, tmp122
	movq	-48(%rbp), %rcx	# rwt, tmp123
	movq	-40(%rbp), %rdx	# lwt, tmp124
	movl	-28(%rbp), %esi	# nseq, tmp125
	movq	-24(%rbp), %rax	# tree, tmp126
	movl	%edi, %r8d	# tmp122,
	movq	%rax, %rdi	# tmp126,
	call	upweight	#
.L11:
	.loc 1 104 0 is_stmt 1
	movl	-32(%rbp), %eax	# node, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-40(%rbp), %rax	# lwt, tmp128
	leaq	(%rdx,%rax), %rcx	#, D.6747
	movl	-8(%rbp), %eax	# ld, tmp129
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-40(%rbp), %rax	# lwt, tmp130
	addq	%rdx, %rax	# D.6745, D.6747
	movss	(%rax), %xmm1	# *_21, D.6748
	movl	-8(%rbp), %eax	# ld, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-48(%rbp), %rax	# rwt, tmp132
	addq	%rdx, %rax	# D.6745, D.6747
	movss	(%rax), %xmm0	# *_25, D.6748
	addss	%xmm1, %xmm0	# D.6748, D.6748
	movl	-28(%rbp), %eax	# nseq, tmp133
	movl	-32(%rbp), %edx	# node, tmp134
	subl	%eax, %edx	# tmp133, D.6744
	movl	%edx, %eax	# D.6744, D.6744
	movslq	%eax, %rdx	# D.6744, D.6745
	movq	%rdx, %rax	# D.6745, tmp135
	salq	$2, %rax	#, tmp135
	addq	%rdx, %rax	# D.6745, tmp135
	salq	$3, %rax	#, tmp136
	movq	%rax, %rdx	# tmp135, D.6745
	movq	-24(%rbp), %rax	# tree, tmp137
	addq	%rdx, %rax	# D.6745, D.6746
	movss	16(%rax), %xmm1	# _31->lblen, D.6748
	addss	%xmm1, %xmm0	# D.6748, D.6748
	movss	%xmm0, (%rcx)	# D.6748, *_18
	.loc 1 105 0
	movl	-32(%rbp), %eax	# node, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-48(%rbp), %rax	# rwt, tmp139
	leaq	(%rdx,%rax), %rcx	#, D.6747
	movl	-4(%rbp), %eax	# rd, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-40(%rbp), %rax	# lwt, tmp141
	addq	%rdx, %rax	# D.6745, D.6747
	movss	(%rax), %xmm1	# *_39, D.6748
	movl	-4(%rbp), %eax	# rd, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6745
	movq	-48(%rbp), %rax	# rwt, tmp143
	addq	%rdx, %rax	# D.6745, D.6747
	movss	(%rax), %xmm0	# *_43, D.6748
	addss	%xmm1, %xmm0	# D.6748, D.6748
	movl	-28(%rbp), %eax	# nseq, tmp144
	movl	-32(%rbp), %edx	# node, tmp145
	subl	%eax, %edx	# tmp144, D.6744
	movl	%edx, %eax	# D.6744, D.6744
	movslq	%eax, %rdx	# D.6744, D.6745
	movq	%rdx, %rax	# D.6745, tmp146
	salq	$2, %rax	#, tmp146
	addq	%rdx, %rax	# D.6745, tmp146
	salq	$3, %rax	#, tmp147
	movq	%rax, %rdx	# tmp146, D.6745
	movq	-24(%rbp), %rax	# tree, tmp148
	addq	%rdx, %rax	# D.6745, D.6746
	movss	20(%rax), %xmm1	# _49->rblen, D.6748
	addss	%xmm1, %xmm0	# D.6748, D.6748
	movss	%xmm0, (%rcx)	# D.6748, *_36
	.loc 1 106 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	upweight, .-upweight
	.type	downweight, @function
downweight:
.LFB4:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# tree, tree
	movl	%esi, -28(%rbp)	# nseq, nseq
	movq	%rdx, -40(%rbp)	# lwt, lwt
	movq	%rcx, -48(%rbp)	# rwt, rwt
	movq	%r8, -56(%rbp)	# fwt, fwt
	movl	%r9d, -32(%rbp)	# node, node
	.loc 1 115 0
	movl	-28(%rbp), %eax	# nseq, tmp154
	movl	-32(%rbp), %edx	# node, tmp155
	subl	%eax, %edx	# tmp154, D.6749
	movl	%edx, %eax	# D.6749, D.6749
	movslq	%eax, %rdx	# D.6749, D.6750
	movq	%rdx, %rax	# D.6750, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.6750, tmp156
	salq	$3, %rax	#, tmp157
	movq	%rax, %rdx	# tmp156, D.6750
	movq	-24(%rbp), %rax	# tree, tmp158
	addq	%rdx, %rax	# D.6750, D.6751
	movl	4(%rax), %eax	# _9->left, tmp159
	movl	%eax, -16(%rbp)	# tmp159, ld
	.loc 1 116 0
	movl	-28(%rbp), %eax	# nseq, tmp160
	movl	-32(%rbp), %edx	# node, tmp161
	subl	%eax, %edx	# tmp160, D.6749
	movl	%edx, %eax	# D.6749, D.6749
	movslq	%eax, %rdx	# D.6749, D.6750
	movq	%rdx, %rax	# D.6750, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.6750, tmp162
	salq	$3, %rax	#, tmp163
	movq	%rax, %rdx	# tmp162, D.6750
	movq	-24(%rbp), %rax	# tree, tmp164
	addq	%rdx, %rax	# D.6750, D.6751
	movl	8(%rax), %eax	# _14->right, tmp165
	movl	%eax, -12(%rbp)	# tmp165, rd
	.loc 1 117 0
	movl	-32(%rbp), %eax	# node, tmp166
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-40(%rbp), %rax	# lwt, tmp167
	addq	%rdx, %rax	# D.6750, D.6752
	movss	(%rax), %xmm1	# *_19, D.6753
	movl	-32(%rbp), %eax	# node, tmp168
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-48(%rbp), %rax	# rwt, tmp169
	addq	%rdx, %rax	# D.6750, D.6752
	movss	(%rax), %xmm0	# *_24, D.6753
	addss	%xmm1, %xmm0	# D.6753, D.6753
	xorps	%xmm1, %xmm1	# tmp170
	ucomiss	%xmm1, %xmm0	# tmp170, D.6753
	jbe	.L23	#,
	.loc 1 119 0
	movl	-16(%rbp), %eax	# ld, tmp171
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-56(%rbp), %rax	# fwt, tmp172
	addq	%rdx, %rax	# D.6750, D.6752
	movl	-32(%rbp), %edx	# node, tmp173
	movslq	%edx, %rdx	# tmp173, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-56(%rbp), %rdx	# fwt, tmp174
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm2	# *_33, D.6753
	movl	-32(%rbp), %edx	# node, tmp175
	movslq	%edx, %rdx	# tmp175, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-40(%rbp), %rdx	# lwt, tmp176
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm1	# *_37, D.6753
	movl	-32(%rbp), %edx	# node, tmp177
	movslq	%edx, %rdx	# tmp177, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-40(%rbp), %rdx	# lwt, tmp178
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm3	# *_41, D.6753
	movl	-32(%rbp), %edx	# node, tmp179
	movslq	%edx, %rdx	# tmp179, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-48(%rbp), %rdx	# rwt, tmp180
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm0	# *_45, D.6753
	addss	%xmm3, %xmm0	# D.6753, D.6753
	divss	%xmm0, %xmm1	# D.6753, D.6753
	movaps	%xmm1, %xmm0	# D.6753, D.6753
	mulss	%xmm2, %xmm0	# D.6753, D.6753
	movss	%xmm0, (%rax)	# D.6753, *_30
	.loc 1 120 0
	movl	-12(%rbp), %eax	# rd, tmp181
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-56(%rbp), %rax	# fwt, tmp182
	addq	%rdx, %rax	# D.6750, D.6752
	movl	-32(%rbp), %edx	# node, tmp183
	movslq	%edx, %rdx	# tmp183, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-56(%rbp), %rdx	# fwt, tmp184
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm2	# *_55, D.6753
	movl	-32(%rbp), %edx	# node, tmp185
	movslq	%edx, %rdx	# tmp185, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-48(%rbp), %rdx	# rwt, tmp186
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm1	# *_59, D.6753
	movl	-32(%rbp), %edx	# node, tmp187
	movslq	%edx, %rdx	# tmp187, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-40(%rbp), %rdx	# lwt, tmp188
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm3	# *_63, D.6753
	movl	-32(%rbp), %edx	# node, tmp189
	movslq	%edx, %rdx	# tmp189, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-48(%rbp), %rdx	# rwt, tmp190
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm0	# *_67, D.6753
	addss	%xmm3, %xmm0	# D.6753, D.6753
	divss	%xmm0, %xmm1	# D.6753, D.6753
	movaps	%xmm1, %xmm0	# D.6753, D.6753
	mulss	%xmm2, %xmm0	# D.6753, D.6753
	movss	%xmm0, (%rax)	# D.6753, *_52
	jmp	.L15	#
.L23:
	.loc 1 124 0
	movl	-16(%rbp), %eax	# ld, tmp191
	cmpl	-28(%rbp), %eax	# nseq, tmp191
	jl	.L16	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# nseq, tmp192
	movl	-16(%rbp), %edx	# ld, tmp193
	subl	%eax, %edx	# tmp192, D.6749
	movl	%edx, %eax	# D.6749, D.6749
	movslq	%eax, %rdx	# D.6749, D.6750
	movq	%rdx, %rax	# D.6750, tmp194
	salq	$2, %rax	#, tmp194
	addq	%rdx, %rax	# D.6750, tmp194
	salq	$3, %rax	#, tmp195
	movq	%rax, %rdx	# tmp194, D.6750
	movq	-24(%rbp), %rax	# tree, tmp196
	addq	%rdx, %rax	# D.6750, D.6751
	movl	32(%rax), %eax	# _75->incnum, D.6749
	cvtsi2sd	%eax, %xmm0	# D.6749, D.6754
	unpcklpd	%xmm0, %xmm0	# D.6754
	cvtpd2ps	%xmm0, %xmm4	# D.6754, iftmp.5
	movss	%xmm4, -60(%rbp)	# iftmp.5, %sfp
	movl	-60(%rbp), %eax	# %sfp, iftmp.5
	jmp	.L17	#
.L16:
	.loc 1 124 0 discriminator 2
	movl	.LC0(%rip), %eax	#, iftmp.5
.L17:
	.loc 1 124 0 discriminator 3
	movl	%eax, -8(%rbp)	# iftmp.5, lnum
	.loc 1 125 0 is_stmt 1 discriminator 3
	movl	-12(%rbp), %eax	# rd, tmp197
	cmpl	-28(%rbp), %eax	# nseq, tmp197
	jl	.L18	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# nseq, tmp198
	movl	-12(%rbp), %edx	# rd, tmp199
	subl	%eax, %edx	# tmp198, D.6749
	movl	%edx, %eax	# D.6749, D.6749
	movslq	%eax, %rdx	# D.6749, D.6750
	movq	%rdx, %rax	# D.6750, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rdx, %rax	# D.6750, tmp200
	salq	$3, %rax	#, tmp201
	movq	%rax, %rdx	# tmp200, D.6750
	movq	-24(%rbp), %rax	# tree, tmp202
	addq	%rdx, %rax	# D.6750, D.6751
	movl	32(%rax), %eax	# _84->incnum, D.6749
	cvtsi2sd	%eax, %xmm0	# D.6749, D.6754
	unpcklpd	%xmm0, %xmm0	# D.6754
	cvtpd2ps	%xmm0, %xmm5	# D.6754, iftmp.6
	movss	%xmm5, -60(%rbp)	# iftmp.6, %sfp
	movl	-60(%rbp), %eax	# %sfp, iftmp.6
	jmp	.L19	#
.L18:
	.loc 1 125 0 discriminator 2
	movl	.LC0(%rip), %eax	#, iftmp.6
.L19:
	.loc 1 125 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.6, rnum
	.loc 1 126 0 is_stmt 1 discriminator 3
	movl	-16(%rbp), %eax	# ld, tmp203
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-56(%rbp), %rax	# fwt, tmp204
	addq	%rdx, %rax	# D.6750, D.6752
	movl	-32(%rbp), %edx	# node, tmp205
	movslq	%edx, %rdx	# tmp205, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-56(%rbp), %rdx	# fwt, tmp206
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm0	# *_95, D.6753
	mulss	-8(%rbp), %xmm0	# lnum, D.6753
	movss	-8(%rbp), %xmm1	# lnum, tmp207
	addss	-4(%rbp), %xmm1	# rnum, D.6753
	divss	%xmm1, %xmm0	# D.6753, D.6753
	movss	%xmm0, (%rax)	# D.6753, *_92
	.loc 1 127 0 discriminator 3
	movl	-12(%rbp), %eax	# rd, tmp208
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6750
	movq	-56(%rbp), %rax	# fwt, tmp209
	addq	%rdx, %rax	# D.6750, D.6752
	movl	-32(%rbp), %edx	# node, tmp210
	movslq	%edx, %rdx	# tmp210, D.6750
	leaq	0(,%rdx,4), %rcx	#, D.6750
	movq	-56(%rbp), %rdx	# fwt, tmp211
	addq	%rcx, %rdx	# D.6750, D.6752
	movss	(%rdx), %xmm0	# *_105, D.6753
	mulss	-4(%rbp), %xmm0	# rnum, D.6753
	movss	-8(%rbp), %xmm1	# lnum, tmp212
	addss	-4(%rbp), %xmm1	# rnum, D.6753
	divss	%xmm1, %xmm0	# D.6753, D.6753
	movss	%xmm0, (%rax)	# D.6753, *_102
.L15:
	.loc 1 130 0
	movl	-16(%rbp), %eax	# ld, tmp213
	cmpl	-28(%rbp), %eax	# nseq, tmp213
	jl	.L20	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %r8d	# ld, tmp214
	movq	-56(%rbp), %rdi	# fwt, tmp215
	movq	-48(%rbp), %rcx	# rwt, tmp216
	movq	-40(%rbp), %rdx	# lwt, tmp217
	movl	-28(%rbp), %esi	# nseq, tmp218
	movq	-24(%rbp), %rax	# tree, tmp219
	movl	%r8d, %r9d	# tmp214,
	movq	%rdi, %r8	# tmp215,
	movq	%rax, %rdi	# tmp219,
	call	downweight	#
.L20:
	.loc 1 131 0 is_stmt 1
	movl	-12(%rbp), %eax	# rd, tmp220
	cmpl	-28(%rbp), %eax	# nseq, tmp220
	jl	.L12	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %r8d	# rd, tmp221
	movq	-56(%rbp), %rdi	# fwt, tmp222
	movq	-48(%rbp), %rcx	# rwt, tmp223
	movq	-40(%rbp), %rdx	# lwt, tmp224
	movl	-28(%rbp), %esi	# nseq, tmp225
	movq	-24(%rbp), %rax	# tree, tmp226
	movl	%r8d, %r9d	# tmp221,
	movq	%rdi, %r8	# tmp222,
	movq	%rax, %rdi	# tmp226,
	call	downweight	#
.L12:
	.loc 1 132 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	downweight, .-downweight
	.section	.rodata
.LC4:
	.string	"simple_diffmx() failed"
	.text
	.globl	VoronoiWeights
	.type	VoronoiWeights, @function
VoronoiWeights:
.LFB5:
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$240, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -232(%rbp)	# aseq, aseq
	movl	%esi, -236(%rbp)	# nseq, nseq
	movl	%edx, -240(%rbp)	# alen, alen
	movq	%rcx, -248(%rbp)	# wgt, wgt
	.loc 1 175 0
	cmpl	$1, -236(%rbp)	#, nseq
	jne	.L25	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rdx	# wgt, tmp250
	movl	.LC0(%rip), %eax	#, tmp251
	movl	%eax, (%rdx)	# tmp251, *wgt_24(D)
	jmp	.L24	#
.L25:
	.loc 1 177 0 is_stmt 1
	movl	$50, -180(%rbp)	#, itscale
	.loc 1 182 0
	leaq	-168(%rbp), %rdx	#, tmp252
	movl	-236(%rbp), %ecx	# nseq, tmp253
	movq	-232(%rbp), %rax	# aseq, tmp254
	movl	%ecx, %esi	# tmp253,
	movq	%rax, %rdi	# tmp254,
	call	simple_diffmx	#
	testl	%eax, %eax	# D.6756
	jne	.L27	#,
	.loc 1 183 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L27:
	.loc 1 184 0
	movl	-236(%rbp), %eax	# nseq, tmp255
	cltq
	salq	$2, %rax	#, D.6757
	movq	%rax, %rdx	# D.6757,
	movl	$184, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -160(%rbp)	# tmp256, halfmin
	.loc 1 185 0
	movl	$0, -208(%rbp)	#, idx
	jmp	.L28	#
.L34:
	.loc 1 187 0
	movl	.LC0(%rip), %eax	#, tmp257
	movl	%eax, -196(%rbp)	# tmp257, min
	movl	$0, -200(%rbp)	#, i
	jmp	.L29	#
.L33:
	.loc 1 189 0
	movl	-200(%rbp), %eax	# i, tmp258
	cmpl	-208(%rbp), %eax	# idx, tmp258
	jne	.L30	#,
	.loc 1 189 0 is_stmt 0 discriminator 1
	jmp	.L31	#
.L30:
	.loc 1 190 0 is_stmt 1
	movq	-168(%rbp), %rax	# dmx, dmx.7
	movl	-208(%rbp), %edx	# idx, tmp259
	movslq	%edx, %rdx	# tmp259, D.6757
	salq	$3, %rdx	#, D.6757
	addq	%rdx, %rax	# D.6757, D.6758
	movq	(%rax), %rax	# *_37, D.6759
	movl	-200(%rbp), %edx	# i, tmp260
	movslq	%edx, %rdx	# tmp260, D.6757
	salq	$2, %rdx	#, D.6757
	addq	%rdx, %rax	# D.6757, D.6759
	movss	(%rax), %xmm1	# *_41, D.6760
	movss	-196(%rbp), %xmm0	# min, tmp261
	ucomiss	%xmm1, %xmm0	# D.6760, tmp261
	jbe	.L31	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# dmx, dmx.8
	movl	-208(%rbp), %edx	# idx, tmp262
	movslq	%edx, %rdx	# tmp262, D.6757
	salq	$3, %rdx	#, D.6757
	addq	%rdx, %rax	# D.6757, D.6758
	movq	(%rax), %rax	# *_46, D.6759
	movl	-200(%rbp), %edx	# i, tmp263
	movslq	%edx, %rdx	# tmp263, D.6757
	salq	$2, %rdx	#, D.6757
	addq	%rdx, %rax	# D.6757, D.6759
	movl	(%rax), %eax	# *_50, tmp264
	movl	%eax, -196(%rbp)	# tmp264, min
.L31:
	.loc 1 187 0 is_stmt 1
	addl	$1, -200(%rbp)	#, i
.L29:
	.loc 1 187 0 is_stmt 0 discriminator 1
	movl	-200(%rbp), %eax	# i, tmp265
	cmpl	-236(%rbp), %eax	# nseq, tmp265
	jl	.L33	#,
	.loc 1 192 0 is_stmt 1
	movl	-208(%rbp), %eax	# idx, tmp266
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-160(%rbp), %rax	# halfmin, tmp267
	addq	%rdx, %rax	# D.6757, D.6759
	movss	-196(%rbp), %xmm0	# min, tmp268
	movss	.LC5(%rip), %xmm1	#, tmp269
	divss	%xmm1, %xmm0	# tmp269, D.6760
	movss	%xmm0, (%rax)	# D.6760, *_55
	.loc 1 185 0
	addl	$1, -208(%rbp)	#, idx
.L28:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# idx, tmp270
	cmpl	-236(%rbp), %eax	# nseq, tmp270
	jl	.L34	#,
	.loc 1 194 0 is_stmt 1
	movq	-168(%rbp), %rax	# dmx, dmx.9
	movl	-236(%rbp), %edx	# nseq, tmp271
	movl	%edx, %esi	# tmp271,
	movq	%rax, %rdi	# dmx.9,
	call	Free2DArray	#
	.loc 1 198 0
	movl	-240(%rbp), %eax	# alen, tmp272
	cltq
	salq	$3, %rax	#, D.6757
	movq	%rax, %rdx	# D.6757,
	movl	$198, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -152(%rbp)	# tmp273, psym
	.loc 1 199 0
	movl	-240(%rbp), %eax	# alen, tmp274
	cltq
	salq	$2, %rax	#, D.6757
	movq	%rax, %rdx	# D.6757,
	movl	$199, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -144(%rbp)	# tmp275, nsym
	.loc 1 200 0
	movl	$0, -212(%rbp)	#, acol
	jmp	.L35	#
.L36:
	.loc 1 201 0 discriminator 2
	movl	-212(%rbp), %eax	# acol, tmp276
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-152(%rbp), %rax	# psym, tmp277
	leaq	(%rdx,%rax), %rbx	#, D.6761
	movl	$27, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6762, *_69
	.loc 1 200 0 discriminator 2
	addl	$1, -212(%rbp)	#, acol
.L35:
	.loc 1 200 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# acol, tmp278
	cmpl	-240(%rbp), %eax	# alen, tmp278
	jl	.L36	#,
	.loc 1 204 0 is_stmt 1
	movl	$0, -212(%rbp)	#, acol
	jmp	.L37	#
.L49:
	.loc 1 206 0
	leaq	-128(%rbp), %rax	#, tmp279
	movl	$108, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	memset	#
	.loc 1 207 0
	movl	$0, -208(%rbp)	#, idx
	jmp	.L38	#
.L44:
	.loc 1 208 0
	movl	-208(%rbp), %eax	# idx, tmp280
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp281
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_76, D.6763
	movl	-212(%rbp), %eax	# acol, tmp282
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_79, D.6765
	cmpb	$32, %al	#, D.6765
	je	.L39	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# idx, tmp283
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp284
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_83, D.6763
	movl	-212(%rbp), %eax	# acol, tmp285
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_86, D.6765
	cmpb	$46, %al	#, D.6765
	je	.L39	#,
	movl	-208(%rbp), %eax	# idx, tmp286
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp287
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_90, D.6763
	movl	-212(%rbp), %eax	# acol, tmp288
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_93, D.6765
	cmpb	$95, %al	#, D.6765
	je	.L39	#,
	movl	-208(%rbp), %eax	# idx, tmp289
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp290
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_97, D.6763
	movl	-212(%rbp), %eax	# acol, tmp291
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_100, D.6765
	cmpb	$45, %al	#, D.6765
	je	.L39	#,
	movl	-208(%rbp), %eax	# idx, tmp292
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp293
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_104, D.6763
	movl	-212(%rbp), %eax	# acol, tmp294
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_107, D.6765
	cmpb	$126, %al	#, D.6765
	je	.L39	#,
	.loc 1 210 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_109, D.6767
	movl	-208(%rbp), %edx	# idx, tmp295
	movslq	%edx, %rdx	# tmp295, D.6757
	leaq	0(,%rdx,8), %rcx	#, D.6757
	movq	-232(%rbp), %rdx	# aseq, tmp296
	addq	%rcx, %rdx	# D.6757, D.6761
	movq	(%rdx), %rcx	# *_113, D.6763
	movl	-212(%rbp), %edx	# acol, tmp297
	movslq	%edx, %rdx	# tmp297, D.6764
	addq	%rcx, %rdx	# D.6763, D.6763
	movzbl	(%rdx), %edx	# *_116, D.6765
	movsbq	%dl, %rdx	# D.6765, D.6757
	addq	%rdx, %rdx	# D.6757
	addq	%rdx, %rax	# D.6757, D.6767
	movzwl	(%rax), %eax	# *_120, D.6768
	movzwl	%ax, %eax	# D.6768, D.6756
	andl	$256, %eax	#, D.6756
	testl	%eax, %eax	# D.6756
	je	.L40	#,
	.loc 1 211 0
	movl	-208(%rbp), %eax	# idx, tmp298
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp299
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_126, D.6763
	movl	-212(%rbp), %eax	# acol, tmp300
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_129, D.6765
	movsbl	%al, %eax	# D.6765, D.6756
	subl	$65, %eax	#, tmp301
	movl	%eax, -204(%rbp)	# tmp301, symidx
	jmp	.L41	#
.L40:
	.loc 1 213 0
	movl	-208(%rbp), %eax	# idx, tmp302
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp303
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_135, D.6763
	movl	-212(%rbp), %eax	# acol, tmp304
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_138, D.6765
	movsbl	%al, %eax	# D.6765, D.6756
	subl	$97, %eax	#, tmp305
	movl	%eax, -204(%rbp)	# tmp305, symidx
.L41:
	.loc 1 214 0
	cmpl	$0, -204(%rbp)	#, symidx
	js	.L42	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	cmpl	$25, -204(%rbp)	#, symidx
	jg	.L42	#,
	.loc 1 215 0 is_stmt 1
	movl	-204(%rbp), %eax	# symidx, tmp307
	cltq
	movl	$1, -128(%rbp,%rax,4)	#, symseen
	.loc 1 214 0
	jmp	.L43	#
.L42:
	.loc 1 214 0 is_stmt 0 discriminator 2
	jmp	.L43	#
.L39:
	.loc 1 218 0 is_stmt 1
	movl	$1, -24(%rbp)	#, symseen
.L43:
	.loc 1 207 0
	addl	$1, -208(%rbp)	#, idx
.L38:
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# idx, tmp308
	cmpl	-236(%rbp), %eax	# nseq, tmp308
	jl	.L44	#,
	.loc 1 220 0 is_stmt 1
	movl	-212(%rbp), %eax	# acol, tmp309
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp310
	addq	%rdx, %rax	# D.6757, D.6769
	movl	$0, (%rax)	#, *_145
	movl	$0, -200(%rbp)	#, i
	jmp	.L45	#
.L47:
	.loc 1 221 0
	movl	-200(%rbp), %eax	# i, tmp312
	cltq
	movl	-128(%rbp,%rax,4), %eax	# symseen, D.6756
	testl	%eax, %eax	# D.6756
	je	.L46	#,
	.loc 1 223 0
	movl	-212(%rbp), %eax	# acol, tmp313
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-152(%rbp), %rax	# psym, tmp314
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_150, D.6763
	movl	-212(%rbp), %eax	# acol, tmp315
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp316
	addq	%rcx, %rax	# D.6757, D.6769
	movl	(%rax), %eax	# *_154, D.6756
	cltq
	addq	%rax, %rdx	# D.6764, D.6763
	movl	-200(%rbp), %eax	# i, tmp317
	addl	$65, %eax	#, D.6770
	movb	%al, (%rdx)	# D.6765, *_157
	.loc 1 224 0
	movl	-212(%rbp), %eax	# acol, tmp318
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp319
	addq	%rdx, %rax	# D.6757, D.6769
	movl	(%rax), %edx	# *_163, D.6756
	addl	$1, %edx	#, D.6756
	movl	%edx, (%rax)	# D.6756, *_163
.L46:
	.loc 1 220 0
	addl	$1, -200(%rbp)	#, i
.L45:
	.loc 1 220 0 is_stmt 0 discriminator 1
	cmpl	$25, -200(%rbp)	#, i
	jle	.L47	#,
	.loc 1 226 0 is_stmt 1
	movl	-24(%rbp), %eax	# symseen, D.6756
	testl	%eax, %eax	# D.6756
	je	.L48	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# acol, tmp320
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-152(%rbp), %rax	# psym, tmp321
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rdx	# *_170, D.6763
	movl	-212(%rbp), %eax	# acol, tmp322
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp323
	addq	%rcx, %rax	# D.6757, D.6769
	movl	(%rax), %eax	# *_174, D.6756
	cltq
	addq	%rdx, %rax	# D.6763, D.6763
	movb	$32, (%rax)	#, *_177
	movl	-212(%rbp), %eax	# acol, tmp324
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp325
	addq	%rdx, %rax	# D.6757, D.6769
	movl	(%rax), %edx	# *_180, D.6756
	addl	$1, %edx	#, D.6756
	movl	%edx, (%rax)	# D.6756, *_180
.L48:
	.loc 1 204 0 is_stmt 1
	addl	$1, -212(%rbp)	#, acol
.L37:
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# acol, tmp326
	cmpl	-240(%rbp), %eax	# alen, tmp326
	jl	.L49	#,
	.loc 1 268 0 is_stmt 1
	movl	-240(%rbp), %eax	# alen, tmp327
	addl	$1, %eax	#, D.6756
	cltq
	movq	%rax, %rdx	# D.6757,
	movl	$268, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -136(%rbp)	# tmp328, randseq
	.loc 1 270 0
	movl	$42, -184(%rbp)	#, best
	.loc 1 271 0
	movl	-236(%rbp), %edx	# nseq, tmp329
	movq	-248(%rbp), %rax	# wgt, tmp330
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# tmp329,
	movq	%rax, %rdi	# tmp330,
	call	FSet	#
	.loc 1 272 0
	movl	$0, -188(%rbp)	#, iteration
	jmp	.L50	#
.L65:
	.loc 1 274 0
	movl	$0, -212(%rbp)	#, acol
	jmp	.L51	#
.L54:
	.loc 1 275 0
	movl	-212(%rbp), %eax	# acol, tmp331
	movslq	%eax, %rdx	# tmp331, D.6764
	movq	-136(%rbp), %rax	# randseq, tmp332
	leaq	(%rdx,%rax), %rbx	#, D.6763
	movl	-212(%rbp), %eax	# acol, tmp333
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp334
	addq	%rdx, %rax	# D.6757, D.6769
	movl	(%rax), %eax	# *_195, D.6756
	testl	%eax, %eax	# D.6756
	je	.L52	#,
	.loc 1 275 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# acol, tmp335
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-152(%rbp), %rax	# psym, tmp336
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %r12	# *_199, D.6763
	call	sre_random	#
	movl	-212(%rbp), %eax	# acol, tmp337
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-144(%rbp), %rax	# nsym, tmp338
	addq	%rdx, %rax	# D.6757, D.6769
	movl	(%rax), %eax	# *_204, D.6756
	cvtsi2sd	%eax, %xmm1	# D.6756, D.6771
	mulsd	%xmm1, %xmm0	# D.6771, D.6771
	cvttsd2si	%xmm0, %eax	# D.6771, D.6756
	cltq
	addq	%r12, %rax	# D.6763, D.6763
	movzbl	(%rax), %eax	# *_210, iftmp.10
	jmp	.L53	#
.L52:
	.loc 1 275 0 discriminator 2
	movl	$32, %eax	#, iftmp.10
.L53:
	.loc 1 275 0 discriminator 3
	movb	%al, (%rbx)	# iftmp.10, *_192
	.loc 1 274 0 is_stmt 1 discriminator 3
	addl	$1, -212(%rbp)	#, acol
.L51:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# acol, tmp339
	cmpl	-240(%rbp), %eax	# alen, tmp339
	jl	.L54	#,
	.loc 1 276 0 is_stmt 1
	movl	-212(%rbp), %eax	# acol, tmp340
	movslq	%eax, %rdx	# tmp340, D.6764
	movq	-136(%rbp), %rax	# randseq, tmp341
	addq	%rdx, %rax	# D.6764, D.6763
	movb	$0, (%rax)	#, *_215
	.loc 1 278 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.6771
	cvtpd2ps	%xmm0, %xmm2	# D.6771, tmp376
	movss	%xmm2, -192(%rbp)	# tmp376, champion
	.loc 1 279 0
	movl	.LC0(%rip), %eax	#, tmp342
	movl	%eax, -196(%rbp)	# tmp342, min
	movl	$0, -208(%rbp)	#, idx
	jmp	.L55	#
.L64:
	.loc 1 281 0
	movl	-208(%rbp), %eax	# idx, tmp343
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6757
	movq	-232(%rbp), %rax	# aseq, tmp344
	addq	%rdx, %rax	# D.6757, D.6761
	movq	(%rax), %rax	# *_222, D.6763
	movq	-136(%rbp), %rdx	# randseq, tmp345
	movq	%rdx, %rsi	# tmp345,
	movq	%rax, %rdi	# D.6763,
	call	simple_distance	#
	movss	%xmm0, -252(%rbp)	#, %sfp
	movl	-252(%rbp), %eax	# %sfp, tmp346
	movl	%eax, -176(%rbp)	# tmp346, dist
	.loc 1 282 0
	movl	-208(%rbp), %eax	# idx, tmp347
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-160(%rbp), %rax	# halfmin, tmp348
	addq	%rdx, %rax	# D.6757, D.6759
	movss	(%rax), %xmm0	# *_227, D.6760
	ucomiss	-176(%rbp), %xmm0	# dist, D.6760
	jbe	.L73	#,
	.loc 1 284 0
	movl	-208(%rbp), %eax	# idx, tmp349
	movl	%eax, -184(%rbp)	# tmp349, best
	.loc 1 285 0
	jmp	.L58	#
.L73:
	.loc 1 287 0
	movss	-196(%rbp), %xmm0	# min, tmp350
	ucomiss	-176(%rbp), %xmm0	# dist, tmp350
	jbe	.L74	#,
	.loc 1 288 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.6771
	cvtpd2ps	%xmm0, %xmm3	# D.6771, tmp378
	movss	%xmm3, -192(%rbp)	# tmp378, champion
	movl	-208(%rbp), %eax	# idx, tmp351
	movl	%eax, -184(%rbp)	# tmp351, best
	movl	-176(%rbp), %eax	# dist, tmp352
	movl	%eax, -196(%rbp)	# tmp352, min
	jmp	.L61	#
.L74:
	.loc 1 289 0
	movss	-176(%rbp), %xmm0	# dist, tmp353
	ucomiss	-196(%rbp), %xmm0	# min, tmp353
	jp	.L61	#,
	movss	-176(%rbp), %xmm0	# dist, tmp354
	ucomiss	-196(%rbp), %xmm0	# min, tmp354
	jne	.L61	#,
	.loc 1 291 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.6771
	cvtpd2ps	%xmm0, %xmm4	# D.6771, tmp379
	movss	%xmm4, -172(%rbp)	# tmp379, challenge
	.loc 1 292 0
	movss	-172(%rbp), %xmm0	# challenge, tmp355
	ucomiss	-192(%rbp), %xmm0	# champion, tmp355
	jbe	.L61	#,
	.loc 1 293 0
	movl	-172(%rbp), %eax	# challenge, tmp356
	movl	%eax, -192(%rbp)	# tmp356, champion
	movl	-208(%rbp), %eax	# idx, tmp357
	movl	%eax, -184(%rbp)	# tmp357, best
	movl	-176(%rbp), %eax	# dist, tmp358
	movl	%eax, -196(%rbp)	# tmp358, min
.L61:
	.loc 1 279 0
	addl	$1, -208(%rbp)	#, idx
.L55:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# idx, tmp359
	cmpl	-236(%rbp), %eax	# nseq, tmp359
	jl	.L64	#,
.L58:
	.loc 1 296 0 is_stmt 1
	movl	-184(%rbp), %eax	# best, tmp360
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-248(%rbp), %rax	# wgt, tmp361
	addq	%rdx, %rax	# D.6757, D.6759
	movl	-184(%rbp), %edx	# best, tmp362
	movslq	%edx, %rdx	# tmp362, D.6757
	leaq	0(,%rdx,4), %rcx	#, D.6757
	movq	-248(%rbp), %rdx	# wgt, tmp363
	addq	%rcx, %rdx	# D.6757, D.6759
	movss	(%rdx), %xmm1	# *_245, D.6760
	movss	.LC0(%rip), %xmm0	#, tmp364
	addss	%xmm1, %xmm0	# D.6760, D.6760
	movss	%xmm0, (%rax)	# D.6760, *_242
	.loc 1 272 0
	addl	$1, -188(%rbp)	#, iteration
.L50:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movl	-180(%rbp), %eax	# itscale, tmp365
	imull	-236(%rbp), %eax	# nseq, D.6756
	cmpl	-188(%rbp), %eax	# iteration, D.6756
	jg	.L65	#,
	.loc 1 299 0 is_stmt 1
	movl	$0, -208(%rbp)	#, idx
	jmp	.L66	#
.L67:
	.loc 1 300 0 discriminator 2
	movl	-208(%rbp), %eax	# idx, tmp366
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6757
	movq	-248(%rbp), %rax	# wgt, tmp367
	addq	%rdx, %rax	# D.6757, D.6759
	movl	-208(%rbp), %edx	# idx, tmp368
	movslq	%edx, %rdx	# tmp368, D.6757
	leaq	0(,%rdx,4), %rcx	#, D.6757
	movq	-248(%rbp), %rdx	# wgt, tmp369
	addq	%rcx, %rdx	# D.6757, D.6759
	movss	(%rdx), %xmm1	# *_255, D.6760
	cvtsi2ss	-180(%rbp), %xmm0	# itscale, D.6760
	divss	%xmm0, %xmm1	# D.6760, D.6760
	movaps	%xmm1, %xmm0	# D.6760, D.6760
	movss	%xmm0, (%rax)	# D.6760, *_252
	.loc 1 299 0 discriminator 2
	addl	$1, -208(%rbp)	#, idx
.L66:
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# idx, tmp370
	cmpl	-236(%rbp), %eax	# nseq, tmp370
	jl	.L67	#,
	.loc 1 302 0 is_stmt 1
	movq	-136(%rbp), %rax	# randseq, tmp371
	movq	%rax, %rdi	# tmp371,
	call	free	#
	.loc 1 303 0
	movq	-144(%rbp), %rax	# nsym, tmp372
	movq	%rax, %rdi	# tmp372,
	call	free	#
	.loc 1 304 0
	movq	-160(%rbp), %rax	# halfmin, tmp373
	movq	%rax, %rdi	# tmp373,
	call	free	#
	.loc 1 305 0
	movl	-240(%rbp), %edx	# alen, tmp374
	movq	-152(%rbp), %rax	# psym, tmp375
	movl	%edx, %esi	# tmp374,
	movq	%rax, %rdi	# tmp375,
	call	Free2DArray	#
.L24:
	.loc 1 306 0
	addq	$240, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	VoronoiWeights, .-VoronoiWeights
	.type	simple_distance, @function
simple_distance:
.LFB6:
	.loc 1 317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 318 0
	movl	$0, -8(%rbp)	#, diff
	.loc 1 319 0
	movl	$0, -4(%rbp)	#, valid
	.loc 1 321 0
	jmp	.L76	#
.L81:
	.loc 1 323 0
	movq	-24(%rbp), %rax	# s1, tmp77
	movzbl	(%rax), %eax	# *s1_1, D.6773
	cmpb	$32, %al	#, D.6773
	je	.L77	#,
	.loc 1 323 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# s1, tmp78
	movzbl	(%rax), %eax	# *s1_1, D.6773
	cmpb	$46, %al	#, D.6773
	je	.L77	#,
	.loc 1 323 0 discriminator 1
	movq	-24(%rbp), %rax	# s1, tmp79
	movzbl	(%rax), %eax	# *s1_1, D.6773
	cmpb	$95, %al	#, D.6773
	je	.L77	#,
	movq	-24(%rbp), %rax	# s1, tmp80
	movzbl	(%rax), %eax	# *s1_1, D.6773
	cmpb	$45, %al	#, D.6773
	je	.L77	#,
	movq	-24(%rbp), %rax	# s1, tmp81
	movzbl	(%rax), %eax	# *s1_1, D.6773
	cmpb	$126, %al	#, D.6773
	je	.L77	#,
	movq	-32(%rbp), %rax	# s2, tmp82
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	$32, %al	#, D.6773
	je	.L77	#,
	movq	-32(%rbp), %rax	# s2, tmp83
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	$46, %al	#, D.6773
	je	.L77	#,
	movq	-32(%rbp), %rax	# s2, tmp84
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	$95, %al	#, D.6773
	je	.L77	#,
	movq	-32(%rbp), %rax	# s2, tmp85
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	$45, %al	#, D.6773
	je	.L77	#,
	movq	-32(%rbp), %rax	# s2, tmp86
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	$126, %al	#, D.6773
	jne	.L78	#,
.L77:
	jmp	.L79	#
.L78:
	.loc 1 324 0 is_stmt 1
	movq	-24(%rbp), %rax	# s1, tmp87
	movzbl	(%rax), %edx	# *s1_1, D.6773
	movq	-32(%rbp), %rax	# s2, tmp88
	movzbl	(%rax), %eax	# *s2_2, D.6773
	cmpb	%al, %dl	# D.6773, D.6773
	je	.L80	#,
	.loc 1 324 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, diff
.L80:
	.loc 1 325 0 is_stmt 1
	addl	$1, -4(%rbp)	#, valid
.L79:
	.loc 1 321 0
	addq	$1, -24(%rbp)	#, s1
	addq	$1, -32(%rbp)	#, s2
.L76:
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s1, tmp89
	movzbl	(%rax), %eax	# *s1_1, D.6773
	testb	%al, %al	# D.6773
	jne	.L81	#,
	.loc 1 327 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, valid
	jle	.L82	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	cvtsi2ss	-8(%rbp), %xmm0	# diff, D.6774
	cvtsi2ss	-4(%rbp), %xmm1	# valid, D.6774
	divss	%xmm1, %xmm0	# D.6774, iftmp.11
	movss	%xmm0, -36(%rbp)	# iftmp.11, %sfp
	movl	-36(%rbp), %eax	# %sfp, iftmp.11
	jmp	.L83	#
.L82:
	.loc 1 327 0 discriminator 2
	movl	.LC3(%rip), %eax	#, iftmp.11
.L83:
	.loc 1 328 0 is_stmt 1 discriminator 3
	movl	%eax, -36(%rbp)	# <retval>, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	simple_distance, .-simple_distance
	.section	.rodata
.LC6:
	.string	"malloc failed"
	.text
	.type	simple_diffmx, @function
simple_diffmx:
.LFB7:
	.loc 1 346 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# aseqs, aseqs
	movl	%esi, -44(%rbp)	# num, num
	movq	%rdx, -56(%rbp)	# ret_dmx, ret_dmx
	.loc 1 352 0
	movl	-44(%rbp), %eax	# num, tmp94
	cltq
	salq	$3, %rax	#, D.6775
	movq	%rax, %rdi	# D.6775,
	call	malloc	#
	movq	%rax, -24(%rbp)	# tmp95, dmx
	cmpq	$0, -24(%rbp)	#, dmx
	jne	.L86	#,
	.loc 1 353 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L86:
	.loc 1 354 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L87	#
.L89:
	.loc 1 355 0
	movl	-32(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6775
	movq	-24(%rbp), %rax	# dmx, tmp97
	leaq	(%rdx,%rax), %rbx	#, D.6776
	movl	-44(%rbp), %eax	# num, tmp98
	cltq
	salq	$2, %rax	#, D.6775
	movq	%rax, %rdi	# D.6775,
	call	malloc	#
	movq	%rax, (%rbx)	# D.6777, *_11
	movq	(%rbx), %rax	# *_11, D.6778
	testq	%rax, %rax	# D.6778
	jne	.L88	#,
	.loc 1 356 0
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L88:
	.loc 1 354 0
	addl	$1, -32(%rbp)	#, i
.L87:
	.loc 1 354 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# num, tmp100
	jl	.L89	#,
	.loc 1 360 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L90	#
.L93:
	.loc 1 361 0
	movl	-32(%rbp), %eax	# i, tmp101
	movl	%eax, -28(%rbp)	# tmp101, j
	jmp	.L91	#
.L92:
	.loc 1 362 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp102
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6775
	movq	-24(%rbp), %rax	# dmx, tmp103
	addq	%rdx, %rax	# D.6775, D.6776
	movq	(%rax), %rax	# *_21, D.6778
	movl	-28(%rbp), %edx	# j, tmp104
	movslq	%edx, %rdx	# tmp104, D.6775
	salq	$2, %rdx	#, D.6775
	leaq	(%rax,%rdx), %r12	#, D.6778
	movl	-28(%rbp), %eax	# j, tmp105
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6775
	movq	-24(%rbp), %rax	# dmx, tmp106
	addq	%rdx, %rax	# D.6775, D.6776
	movq	(%rax), %rax	# *_28, D.6778
	movl	-32(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, D.6775
	salq	$2, %rdx	#, D.6775
	leaq	(%rax,%rdx), %rbx	#, D.6778
	movl	-28(%rbp), %eax	# j, tmp108
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6775
	movq	-40(%rbp), %rax	# aseqs, tmp109
	addq	%rdx, %rax	# D.6775, D.6779
	movq	(%rax), %rdx	# *_36, D.6780
	movl	-32(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6775
	movq	-40(%rbp), %rax	# aseqs, tmp111
	addq	%rcx, %rax	# D.6775, D.6779
	movq	(%rax), %rax	# *_40, D.6780
	movq	%rdx, %rsi	# D.6780,
	movq	%rax, %rdi	# D.6780,
	call	simple_distance	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, D.6781
	movl	%eax, (%rbx)	# D.6781, *_32
	movl	(%rbx), %eax	# *_32, D.6781
	movl	%eax, (%r12)	# D.6781, *_25
	.loc 1 361 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L91:
	.loc 1 361 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# j, tmp112
	cmpl	-44(%rbp), %eax	# num, tmp112
	jl	.L92	#,
	.loc 1 360 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L90:
	.loc 1 360 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp113
	cmpl	-44(%rbp), %eax	# num, tmp113
	jl	.L93	#,
	.loc 1 366 0 is_stmt 1
	movq	-56(%rbp), %rax	# ret_dmx, tmp114
	movq	-24(%rbp), %rdx	# dmx, tmp115
	movq	%rdx, (%rax)	# tmp115, *ret_dmx_46(D)
	.loc 1 367 0
	movl	$1, %eax	#, D.6782
	.loc 1 368 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	simple_diffmx, .-simple_diffmx
	.globl	BlosumWeights
	.type	BlosumWeights, @function
BlosumWeights:
.LFB8:
	.loc 1 395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseqs, aseqs
	movl	%esi, -44(%rbp)	# nseq, nseq
	movl	%edx, -48(%rbp)	# alen, alen
	movss	%xmm0, -52(%rbp)	# maxid, maxid
	movq	%rcx, -64(%rbp)	# wgt, wgt
	.loc 1 400 0
	leaq	-24(%rbp), %r8	#, tmp91
	leaq	-16(%rbp), %rcx	#, tmp92
	movl	-52(%rbp), %eax	# maxid, tmp93
	movl	-48(%rbp), %edx	# alen, tmp94
	movl	-44(%rbp), %esi	# nseq, tmp95
	movq	-40(%rbp), %rdi	# aseqs, tmp96
	movl	%eax, -56(%rbp)	# tmp93, %sfp
	movss	-56(%rbp), %xmm0	# %sfp,
	call	SingleLinkCluster	#
	.loc 1 402 0
	movl	-44(%rbp), %edx	# nseq, tmp97
	movq	-64(%rbp), %rax	# wgt, tmp98
	movss	.LC0(%rip), %xmm0	#,
	movl	%edx, %esi	# tmp97,
	movq	%rax, %rdi	# tmp98,
	call	FSet	#
	.loc 1 403 0
	movl	-24(%rbp), %eax	# nc, nc.12
	cltq
	salq	$2, %rax	#, D.6784
	movq	%rax, %rdx	# D.6784,
	movl	$403, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp99, nmem
	.loc 1 405 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L96	#
.L97:
	.loc 1 405 0 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp100
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6784
	movq	-8(%rbp), %rax	# nmem, tmp101
	addq	%rdx, %rax	# D.6784, D.6785
	movl	$0, (%rax)	#, *_17
	addl	$1, -20(%rbp)	#, i
.L96:
	.loc 1 405 0 discriminator 1
	movl	-24(%rbp), %eax	# nc, nc.13
	cmpl	%eax, -20(%rbp)	# nc.13, i
	jl	.L97	#,
	.loc 1 406 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L98	#
.L99:
	.loc 1 406 0 is_stmt 0 discriminator 2
	movq	-16(%rbp), %rax	# c, c.14
	movl	-20(%rbp), %edx	# i, tmp102
	movslq	%edx, %rdx	# tmp102, D.6784
	salq	$2, %rdx	#, D.6784
	addq	%rdx, %rax	# D.6784, D.6785
	movl	(%rax), %eax	# *_23, D.6786
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6784
	movq	-8(%rbp), %rax	# nmem, tmp103
	addq	%rdx, %rax	# D.6784, D.6785
	movl	(%rax), %edx	# *_27, D.6786
	addl	$1, %edx	#, D.6786
	movl	%edx, (%rax)	# D.6786, *_27
	addl	$1, -20(%rbp)	#, i
.L98:
	.loc 1 406 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp104
	cmpl	-44(%rbp), %eax	# nseq, tmp104
	jl	.L99	#,
	.loc 1 407 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L100	#
.L101:
	.loc 1 407 0 is_stmt 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6784
	movq	-64(%rbp), %rax	# wgt, tmp106
	addq	%rax, %rdx	# tmp106, D.6787
	movq	-16(%rbp), %rax	# c, c.15
	movl	-20(%rbp), %ecx	# i, tmp107
	movslq	%ecx, %rcx	# tmp107, D.6784
	salq	$2, %rcx	#, D.6784
	addq	%rcx, %rax	# D.6784, D.6785
	movl	(%rax), %eax	# *_38, D.6786
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6784
	movq	-8(%rbp), %rax	# nmem, tmp108
	addq	%rcx, %rax	# D.6784, D.6785
	movl	(%rax), %eax	# *_42, D.6786
	cvtsi2ss	%eax, %xmm0	# D.6786, D.6788
	movss	.LC0(%rip), %xmm1	#, tmp109
	divss	%xmm0, %xmm1	# D.6788, D.6788
	movaps	%xmm1, %xmm0	# D.6788, D.6788
	movss	%xmm0, (%rdx)	# D.6788, *_34
	addl	$1, -20(%rbp)	#, i
.L100:
	.loc 1 407 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp110
	cmpl	-44(%rbp), %eax	# nseq, tmp110
	jl	.L101	#,
	.loc 1 409 0 is_stmt 1
	movq	-8(%rbp), %rax	# nmem, tmp111
	movq	%rax, %rdi	# tmp111,
	call	free	#
	.loc 1 410 0
	movq	-16(%rbp), %rax	# c, c.16
	movq	%rax, %rdi	# c.16,
	call	free	#
	.loc 1 411 0
	nop
	.loc 1 412 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	BlosumWeights, .-BlosumWeights
	.globl	PositionBasedWeights
	.type	PositionBasedWeights, @function
PositionBasedWeights:
.LFB9:
	.loc 1 464 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# aseq, aseq
	movl	%esi, -172(%rbp)	# nseq, nseq
	movl	%edx, -176(%rbp)	# alen, alen
	movq	%rcx, -184(%rbp)	# wgt, wgt
	.loc 1 471 0
	movl	-172(%rbp), %edx	# nseq, tmp143
	movq	-184(%rbp), %rax	# wgt, tmp144
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	FSet	#
	.loc 1 472 0
	movl	$0, -140(%rbp)	#, pos
	jmp	.L104	#
.L116:
	.loc 1 474 0
	movl	$0, -136(%rbp)	#, x
	jmp	.L105	#
.L106:
	.loc 1 474 0 is_stmt 0 discriminator 2
	movl	-136(%rbp), %eax	# x, tmp146
	cltq
	movl	$0, -128(%rbp,%rax,4)	#, rescount
	addl	$1, -136(%rbp)	#, x
.L105:
	.loc 1 474 0 discriminator 1
	cmpl	$25, -136(%rbp)	#, x
	jle	.L106	#,
	.loc 1 475 0 is_stmt 1
	movl	$0, -144(%rbp)	#, idx
	jmp	.L107	#
.L109:
	.loc 1 476 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_16, D.6790
	movl	-144(%rbp), %edx	# idx, tmp147
	movslq	%edx, %rdx	# tmp147, D.6791
	leaq	0(,%rdx,8), %rcx	#, D.6791
	movq	-168(%rbp), %rdx	# aseq, tmp148
	addq	%rcx, %rdx	# D.6791, D.6792
	movq	(%rdx), %rcx	# *_21, D.6793
	movl	-140(%rbp), %edx	# pos, tmp149
	movslq	%edx, %rdx	# tmp149, D.6794
	addq	%rcx, %rdx	# D.6793, D.6793
	movzbl	(%rdx), %edx	# *_24, D.6795
	movsbq	%dl, %rdx	# D.6795, D.6791
	addq	%rdx, %rdx	# D.6791
	addq	%rdx, %rax	# D.6791, D.6790
	movzwl	(%rax), %eax	# *_28, D.6796
	movzwl	%ax, %eax	# D.6796, D.6797
	andl	$1024, %eax	#, D.6797
	testl	%eax, %eax	# D.6797
	je	.L108	#,
	.loc 1 477 0
	movl	-144(%rbp), %eax	# idx, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6791
	movq	-168(%rbp), %rax	# aseq, tmp151
	addq	%rdx, %rax	# D.6791, D.6792
	movq	(%rax), %rdx	# *_34, D.6793
	movl	-140(%rbp), %eax	# pos, tmp152
	cltq
	addq	%rdx, %rax	# D.6793, D.6793
	movzbl	(%rax), %eax	# *_37, D.6795
	movsbl	%al, %eax	# D.6795, D.6797
	movl	%eax, %edi	# D.6797,
	call	toupper	#
	subl	$65, %eax	#, D.6797
	movslq	%eax, %rdx	# D.6797, tmp153
	movl	-128(%rbp,%rdx,4), %edx	# rescount, D.6797
	addl	$1, %edx	#, D.6797
	cltq
	movl	%edx, -128(%rbp,%rax,4)	# D.6797, rescount
.L108:
	.loc 1 475 0
	addl	$1, -144(%rbp)	#, idx
.L107:
	.loc 1 475 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# idx, tmp155
	cmpl	-172(%rbp), %eax	# nseq, tmp155
	jl	.L109	#,
	.loc 1 479 0 is_stmt 1
	movl	$0, -148(%rbp)	#, nres
	.loc 1 480 0
	movl	$0, -136(%rbp)	#, x
	jmp	.L110	#
.L112:
	.loc 1 481 0
	movl	-136(%rbp), %eax	# x, tmp157
	cltq
	movl	-128(%rbp,%rax,4), %eax	# rescount, D.6797
	testl	%eax, %eax	# D.6797
	jle	.L111	#,
	.loc 1 481 0 is_stmt 0 discriminator 1
	addl	$1, -148(%rbp)	#, nres
.L111:
	.loc 1 480 0 is_stmt 1
	addl	$1, -136(%rbp)	#, x
.L110:
	.loc 1 480 0 is_stmt 0 discriminator 1
	cmpl	$25, -136(%rbp)	#, x
	jle	.L112	#,
	.loc 1 483 0 is_stmt 1
	movl	$0, -144(%rbp)	#, idx
	jmp	.L113	#
.L115:
	.loc 1 484 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_51, D.6790
	movl	-144(%rbp), %edx	# idx, tmp158
	movslq	%edx, %rdx	# tmp158, D.6791
	leaq	0(,%rdx,8), %rcx	#, D.6791
	movq	-168(%rbp), %rdx	# aseq, tmp159
	addq	%rcx, %rdx	# D.6791, D.6792
	movq	(%rdx), %rcx	# *_55, D.6793
	movl	-140(%rbp), %edx	# pos, tmp160
	movslq	%edx, %rdx	# tmp160, D.6794
	addq	%rcx, %rdx	# D.6793, D.6793
	movzbl	(%rdx), %edx	# *_58, D.6795
	movsbq	%dl, %rdx	# D.6795, D.6791
	addq	%rdx, %rdx	# D.6791
	addq	%rdx, %rax	# D.6791, D.6790
	movzwl	(%rax), %eax	# *_62, D.6796
	movzwl	%ax, %eax	# D.6796, D.6797
	andl	$1024, %eax	#, D.6797
	testl	%eax, %eax	# D.6797
	je	.L114	#,
	.loc 1 485 0
	movl	-144(%rbp), %eax	# idx, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6791
	movq	-184(%rbp), %rax	# wgt, tmp162
	leaq	(%rdx,%rax), %rbx	#, D.6798
	movl	-144(%rbp), %eax	# idx, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6791
	movq	-184(%rbp), %rax	# wgt, tmp164
	addq	%rdx, %rax	# D.6791, D.6798
	movss	(%rax), %xmm0	# *_71, D.6799
	unpcklps	%xmm0, %xmm0	# D.6799, D.6799
	cvtps2pd	%xmm0, %xmm4	# D.6799, D.6800
	movsd	%xmm4, -192(%rbp)	# D.6800, %sfp
	movl	-144(%rbp), %eax	# idx, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6791
	movq	-168(%rbp), %rax	# aseq, tmp166
	addq	%rdx, %rax	# D.6791, D.6792
	movq	(%rax), %rdx	# *_76, D.6793
	movl	-140(%rbp), %eax	# pos, tmp167
	cltq
	addq	%rdx, %rax	# D.6793, D.6793
	movzbl	(%rax), %eax	# *_79, D.6795
	movsbl	%al, %eax	# D.6795, D.6797
	movl	%eax, %edi	# D.6797,
	call	toupper	#
	subl	$65, %eax	#, D.6797
	cltq
	movl	-128(%rbp,%rax,4), %eax	# rescount, D.6797
	imull	-148(%rbp), %eax	# nres, D.6797
	cvtsi2ss	%eax, %xmm0	# D.6797, D.6799
	unpcklps	%xmm0, %xmm0	# D.6799, D.6799
	cvtps2pd	%xmm0, %xmm0	# D.6799, D.6800
	movsd	.LC7(%rip), %xmm1	#, tmp169
	divsd	%xmm0, %xmm1	# D.6800, D.6800
	movapd	%xmm1, %xmm0	# D.6800, D.6800
	addsd	-192(%rbp), %xmm0	# %sfp, D.6800
	unpcklpd	%xmm0, %xmm0	# D.6800
	cvtpd2ps	%xmm0, %xmm0	# D.6800, D.6799
	movss	%xmm0, (%rbx)	# D.6799, *_68
.L114:
	.loc 1 483 0
	addl	$1, -144(%rbp)	#, idx
.L113:
	.loc 1 483 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# idx, tmp170
	cmpl	-172(%rbp), %eax	# nseq, tmp170
	jl	.L115	#,
	.loc 1 472 0 is_stmt 1
	addl	$1, -140(%rbp)	#, pos
.L104:
	.loc 1 472 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# pos, tmp171
	cmpl	-176(%rbp), %eax	# alen, tmp171
	jl	.L116	#,
	.loc 1 488 0 is_stmt 1
	movl	$0, -144(%rbp)	#, idx
	jmp	.L117	#
.L118:
	.loc 1 489 0 discriminator 2
	movl	-144(%rbp), %eax	# idx, tmp172
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6791
	movq	-184(%rbp), %rax	# wgt, tmp173
	leaq	(%rdx,%rax), %rbx	#, D.6798
	movl	-144(%rbp), %eax	# idx, tmp174
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6791
	movq	-184(%rbp), %rax	# wgt, tmp175
	addq	%rdx, %rax	# D.6791, D.6798
	movss	(%rax), %xmm2	# *_99, D.6799
	movss	%xmm2, -192(%rbp)	# D.6799, %sfp
	movl	-144(%rbp), %eax	# idx, tmp176
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6791
	movq	-168(%rbp), %rax	# aseq, tmp177
	addq	%rdx, %rax	# D.6791, D.6792
	movq	(%rax), %rax	# *_103, D.6793
	movq	%rax, %rdi	# D.6793,
	call	DealignedLength	#
	cvtsi2ss	%eax, %xmm0	# D.6797, D.6799
	movss	-192(%rbp), %xmm2	# %sfp, D.6799
	divss	%xmm0, %xmm2	# D.6799, D.6799
	movaps	%xmm2, %xmm0	# D.6799, D.6799
	movss	%xmm0, (%rbx)	# D.6799, *_96
	.loc 1 488 0 discriminator 2
	addl	$1, -144(%rbp)	#, idx
.L117:
	.loc 1 488 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# idx, tmp178
	cmpl	-172(%rbp), %eax	# nseq, tmp178
	jl	.L118	#,
	.loc 1 490 0 is_stmt 1
	cvtsi2ss	-172(%rbp), %xmm3	# nseq, D.6799
	movss	%xmm3, -192(%rbp)	# D.6799, %sfp
	movl	-172(%rbp), %edx	# nseq, tmp179
	movq	-184(%rbp), %rax	# wgt, tmp180
	movl	%edx, %esi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	FSum	#
	movss	-192(%rbp), %xmm3	# %sfp, tmp181
	divss	%xmm0, %xmm3	# D.6799, tmp181
	movaps	%xmm3, %xmm0	# tmp181, tmp181
	movss	%xmm0, -132(%rbp)	# tmp181, norm
	.loc 1 491 0
	movl	-132(%rbp), %eax	# norm, tmp182
	movl	-172(%rbp), %ecx	# nseq, tmp183
	movq	-184(%rbp), %rdx	# wgt, tmp184
	movl	%eax, -192(%rbp)	# tmp182, %sfp
	movss	-192(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp183,
	movq	%rdx, %rdi	# tmp184,
	call	FScale	#
	.loc 1 492 0
	nop
	.loc 1 493 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PositionBasedWeights, .-PositionBasedWeights
	.section	.rodata
	.align 8
.LC8:
	.string	"removing %12s -- fractional identity %.2f to %s\n"
	.text
	.globl	FilterAlignment
	.type	FilterAlignment, @function
FilterAlignment:
.LFB10:
	.loc 1 522 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# msa, msa
	movss	%xmm0, -60(%rbp)	# cutoff, cutoff
	movq	%rsi, -72(%rbp)	# ret_new, ret_new
	.loc 1 532 0
	movq	-56(%rbp), %rax	# msa, tmp106
	movl	28(%rax), %eax	# msa_7(D)->nseq, D.6801
	cltq
	salq	$2, %rax	#, D.6802
	movq	%rax, %rdx	# D.6802,
	movl	$532, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp107, list
	.loc 1 533 0
	movq	-56(%rbp), %rax	# msa, tmp108
	movl	28(%rax), %eax	# msa_7(D)->nseq, D.6801
	cltq
	salq	$2, %rax	#, D.6802
	movq	%rax, %rdx	# D.6802,
	movl	$533, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp109, useme
	.loc 1 534 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L121	#
.L122:
	.loc 1 534 0 is_stmt 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6802
	movq	-8(%rbp), %rax	# useme, tmp111
	addq	%rdx, %rax	# D.6802, D.6803
	movl	$0, (%rax)	#, *_20
	addl	$1, -32(%rbp)	#, i
.L121:
	.loc 1 534 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp112
	movl	28(%rax), %eax	# msa_7(D)->nseq, D.6801
	cmpl	-32(%rbp), %eax	# i, D.6801
	jg	.L122	#,
	.loc 1 536 0 is_stmt 1
	movl	$0, -36(%rbp)	#, nnew
	.loc 1 537 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L123	#
.L130:
	.loc 1 539 0
	movl	$0, -24(%rbp)	#, remove
	.loc 1 540 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L124	#
.L128:
	.loc 1 542 0
	movq	-56(%rbp), %rax	# msa, tmp113
	movq	(%rax), %rax	# msa_7(D)->aseq, D.6804
	movl	-28(%rbp), %edx	# j, tmp114
	movslq	%edx, %rdx	# tmp114, D.6802
	leaq	0(,%rdx,4), %rcx	#, D.6802
	movq	-16(%rbp), %rdx	# list, tmp115
	addq	%rcx, %rdx	# D.6802, D.6803
	movl	(%rdx), %edx	# *_30, D.6801
	movslq	%edx, %rdx	# D.6801, D.6802
	salq	$3, %rdx	#, D.6802
	addq	%rdx, %rax	# D.6802, D.6804
	movq	(%rax), %rdx	# *_34, D.6805
	movq	-56(%rbp), %rax	# msa, tmp116
	movq	(%rax), %rax	# msa_7(D)->aseq, D.6804
	movl	-32(%rbp), %ecx	# i, tmp117
	movslq	%ecx, %rcx	# tmp117, D.6802
	salq	$3, %rcx	#, D.6802
	addq	%rcx, %rax	# D.6802, D.6804
	movq	(%rax), %rax	# *_39, D.6805
	movq	%rdx, %rsi	# D.6805,
	movq	%rax, %rdi	# D.6805,
	call	PairwiseIdentity	#
	movss	%xmm0, -64(%rbp)	#, %sfp
	movl	-64(%rbp), %eax	# %sfp, tmp118
	movl	%eax, -20(%rbp)	# tmp118, ident
	.loc 1 543 0
	movss	-20(%rbp), %xmm0	# ident, tmp119
	ucomiss	-60(%rbp), %xmm0	# cutoff, tmp119
	jbe	.L133	#,
	.loc 1 545 0
	movl	$1, -24(%rbp)	#, remove
	.loc 1 548 0
	movq	-56(%rbp), %rax	# msa, tmp120
	movq	8(%rax), %rax	# msa_7(D)->sqname, D.6804
	movl	-28(%rbp), %edx	# j, tmp121
	movslq	%edx, %rdx	# tmp121, D.6802
	leaq	0(,%rdx,4), %rcx	#, D.6802
	movq	-16(%rbp), %rdx	# list, tmp122
	addq	%rcx, %rdx	# D.6802, D.6803
	movl	(%rdx), %edx	# *_47, D.6801
	movslq	%edx, %rdx	# D.6801, D.6802
	salq	$3, %rdx	#, D.6802
	addq	%rdx, %rax	# D.6802, D.6804
	.loc 1 546 0
	movq	(%rax), %rdx	# *_51, D.6805
	movss	-20(%rbp), %xmm0	# ident, D.6806
	cvtps2pd	%xmm0, %xmm0	# D.6806, D.6806
	.loc 1 547 0
	movq	-56(%rbp), %rax	# msa, tmp123
	movq	8(%rax), %rax	# msa_7(D)->sqname, D.6804
	movl	-32(%rbp), %ecx	# i, tmp124
	movslq	%ecx, %rcx	# tmp124, D.6802
	salq	$3, %rcx	#, D.6802
	addq	%rcx, %rax	# D.6802, D.6804
	.loc 1 546 0
	movq	(%rax), %rax	# *_57, D.6805
	movq	%rax, %rsi	# D.6805,
	movl	$.LC8, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 549 0
	jmp	.L127	#
.L133:
	.loc 1 540 0
	addl	$1, -28(%rbp)	#, j
.L124:
	.loc 1 540 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# j, tmp125
	cmpl	-36(%rbp), %eax	# nnew, tmp125
	jl	.L128	#,
.L127:
	.loc 1 552 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, remove
	jne	.L129	#,
	.loc 1 553 0
	movl	-36(%rbp), %eax	# nnew, nnew.17
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -36(%rbp)	# tmp126, nnew
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6802
	movq	-16(%rbp), %rax	# list, tmp127
	addq	%rax, %rdx	# tmp127, D.6803
	movl	-32(%rbp), %eax	# i, tmp128
	movl	%eax, (%rdx)	# tmp128, *_64
	.loc 1 554 0
	movl	-32(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6802
	movq	-8(%rbp), %rax	# useme, tmp130
	addq	%rdx, %rax	# D.6802, D.6803
	movl	$1, (%rax)	#, *_67
.L129:
	.loc 1 537 0
	addl	$1, -32(%rbp)	#, i
.L123:
	.loc 1 537 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp131
	movl	28(%rax), %eax	# msa_7(D)->nseq, D.6801
	cmpl	-32(%rbp), %eax	# i, D.6801
	jg	.L130	#,
	.loc 1 558 0 is_stmt 1
	movq	-72(%rbp), %rdx	# ret_new, tmp132
	movq	-8(%rbp), %rcx	# useme, tmp133
	movq	-56(%rbp), %rax	# msa, tmp134
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	MSASmallerAlignment	#
	.loc 1 559 0
	movq	-16(%rbp), %rax	# list, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 1 560 0
	movq	-8(%rbp), %rax	# useme, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free	#
	.loc 1 561 0
	nop
	.loc 1 562 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	FilterAlignment, .-FilterAlignment
	.section	.rodata
.LC9:
	.string	"chose %d: %s\n"
	.text
	.globl	SampleAlignment
	.type	SampleAlignment, @function
SampleAlignment:
.LFB11:
	.loc 1 588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# msa, msa
	movl	%esi, -44(%rbp)	# sample, sample
	movq	%rdx, -56(%rbp)	# ret_new, ret_new
	.loc 1 596 0
	movq	-40(%rbp), %rax	# msa, tmp103
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6808
	cltq
	salq	$2, %rax	#, D.6809
	movq	%rax, %rdx	# D.6809,
	movl	$596, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp104, list
	.loc 1 597 0
	movq	-40(%rbp), %rax	# msa, tmp105
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6808
	cltq
	salq	$2, %rax	#, D.6809
	movq	%rax, %rdx	# D.6809,
	movl	$597, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp106, useme
	.loc 1 598 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L135	#
.L136:
	.loc 1 600 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6809
	movq	-16(%rbp), %rax	# list, tmp108
	addq	%rax, %rdx	# tmp108, D.6810
	movl	-28(%rbp), %eax	# i, tmp109
	movl	%eax, (%rdx)	# tmp109, *_18
	.loc 1 601 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6809
	movq	-8(%rbp), %rax	# useme, tmp111
	addq	%rdx, %rax	# D.6809, D.6810
	movl	$0, (%rax)	#, *_21
	.loc 1 598 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L135:
	.loc 1 598 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp112
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6808
	cmpl	-28(%rbp), %eax	# i, D.6808
	jg	.L136	#,
	.loc 1 606 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp113
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6808
	cmpl	-44(%rbp), %eax	# sample, D.6808
	jg	.L137	#,
	.loc 1 606 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp114
	movl	28(%rax), %eax	# msa_5(D)->nseq, tmp115
	movl	%eax, -44(%rbp)	# tmp115, sample
.L137:
	.loc 1 609 0 is_stmt 1
	movq	-40(%rbp), %rax	# msa, tmp116
	movl	28(%rax), %eax	# msa_5(D)->nseq, tmp117
	movl	%eax, -24(%rbp)	# tmp117, len
	movl	$0, -28(%rbp)	#, i
	jmp	.L138	#
.L139:
	.loc 1 611 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-24(%rbp), %xmm1	# len, D.6811
	mulsd	%xmm1, %xmm0	# D.6811, D.6811
	cvttsd2si	%xmm0, %eax	# D.6811, tmp118
	movl	%eax, -20(%rbp)	# tmp118, idx
	.loc 1 612 0 discriminator 2
	movq	-40(%rbp), %rax	# msa, tmp119
	movq	8(%rax), %rax	# msa_5(D)->sqname, D.6812
	movl	-20(%rbp), %edx	# idx, tmp120
	movslq	%edx, %rdx	# tmp120, D.6809
	leaq	0(,%rdx,4), %rcx	#, D.6809
	movq	-16(%rbp), %rdx	# list, tmp121
	addq	%rcx, %rdx	# D.6809, D.6810
	movl	(%rdx), %edx	# *_35, D.6808
	movslq	%edx, %rdx	# D.6808, D.6809
	salq	$3, %rdx	#, D.6809
	addq	%rdx, %rax	# D.6809, D.6812
	movq	(%rax), %rdx	# *_39, D.6813
	movl	-20(%rbp), %eax	# idx, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6809
	movq	-16(%rbp), %rax	# list, tmp123
	addq	%rcx, %rax	# D.6809, D.6810
	movl	(%rax), %eax	# *_43, D.6808
	movl	%eax, %esi	# D.6808,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 613 0 discriminator 2
	movl	-20(%rbp), %eax	# idx, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6809
	movq	-16(%rbp), %rax	# list, tmp125
	addq	%rdx, %rax	# D.6809, D.6810
	movl	(%rax), %eax	# *_47, D.6808
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6809
	movq	-8(%rbp), %rax	# useme, tmp126
	addq	%rdx, %rax	# D.6809, D.6810
	movl	$1, (%rax)	#, *_51
	.loc 1 614 0 discriminator 2
	movl	-20(%rbp), %eax	# idx, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6809
	movq	-16(%rbp), %rax	# list, tmp128
	addq	%rax, %rdx	# tmp128, D.6810
	subl	$1, -24(%rbp)	#, len
	movl	-24(%rbp), %eax	# len, tmp129
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6809
	movq	-16(%rbp), %rax	# list, tmp130
	addq	%rcx, %rax	# D.6809, D.6810
	movl	(%rax), %eax	# *_58, D.6808
	movl	%eax, (%rdx)	# D.6808, *_54
	.loc 1 609 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L138:
	.loc 1 609 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp131
	cmpl	-44(%rbp), %eax	# sample, tmp131
	jl	.L139	#,
	.loc 1 617 0 is_stmt 1
	movq	-56(%rbp), %rdx	# ret_new, tmp132
	movq	-8(%rbp), %rcx	# useme, tmp133
	movq	-40(%rbp), %rax	# msa, tmp134
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	MSASmallerAlignment	#
	.loc 1 618 0
	movq	-16(%rbp), %rax	# list, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	.loc 1 619 0
	movq	-8(%rbp), %rax	# useme, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free	#
	.loc 1 620 0
	nop
	.loc 1 621 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SampleAlignment, .-SampleAlignment
	.globl	SingleLinkCluster
	.type	SingleLinkCluster, @function
SingleLinkCluster:
.LFB12:
	.loc 1 706 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# aseq, aseq
	movl	%esi, -60(%rbp)	# nseq, nseq
	movl	%edx, -64(%rbp)	# alen, alen
	movss	%xmm0, -68(%rbp)	# maxid, maxid
	movq	%rcx, -80(%rbp)	# ret_c, ret_c
	movq	%r8, -88(%rbp)	# ret_nc, ret_nc
	.loc 1 716 0
	movl	-60(%rbp), %eax	# nseq, tmp112
	cltq
	salq	$2, %rax	#, D.6815
	movq	%rax, %rdx	# D.6815,
	movl	$716, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp113, a
	.loc 1 717 0
	movl	-60(%rbp), %eax	# nseq, tmp114
	cltq
	salq	$2, %rax	#, D.6815
	movq	%rax, %rdx	# D.6815,
	movl	$717, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp115, b
	.loc 1 718 0
	movl	-60(%rbp), %eax	# nseq, tmp116
	cltq
	salq	$2, %rax	#, D.6815
	movq	%rax, %rdx	# D.6815,
	movl	$718, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp117, c
	.loc 1 719 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L142	#
.L143:
	.loc 1 719 0 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-24(%rbp), %rax	# a, tmp119
	addq	%rax, %rdx	# tmp119, D.6816
	movl	-36(%rbp), %eax	# i, tmp120
	movl	%eax, (%rdx)	# tmp120, *_25
	addl	$1, -36(%rbp)	#, i
.L142:
	.loc 1 719 0 discriminator 1
	movl	-36(%rbp), %eax	# i, tmp121
	cmpl	-60(%rbp), %eax	# nseq, tmp121
	jl	.L143	#,
	.loc 1 720 0 is_stmt 1
	movl	-60(%rbp), %eax	# nseq, tmp122
	movl	%eax, -48(%rbp)	# tmp122, na
	.loc 1 721 0
	movl	$0, -44(%rbp)	#, nb
	.loc 1 722 0
	movl	$0, -40(%rbp)	#, nc
	.loc 1 726 0
	jmp	.L144	#
.L151:
	.loc 1 728 0
	movl	-48(%rbp), %eax	# na, tmp123
	cltq
	salq	$2, %rax	#, D.6815
	leaq	-4(%rax), %rdx	#, D.6817
	movq	-24(%rbp), %rax	# a, tmp124
	addq	%rdx, %rax	# D.6817, D.6816
	movl	(%rax), %eax	# *_33, tmp125
	movl	%eax, -32(%rbp)	# tmp125, v
	subl	$1, -48(%rbp)	#, na
	.loc 1 729 0
	movl	-44(%rbp), %eax	# nb, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-16(%rbp), %rax	# b, tmp127
	addq	%rax, %rdx	# tmp127, D.6816
	movl	-32(%rbp), %eax	# v, tmp128
	movl	%eax, (%rdx)	# tmp128, *_38
	addl	$1, -44(%rbp)	#, nb
	.loc 1 730 0
	jmp	.L145	#
.L150:
	.loc 1 732 0
	movl	-44(%rbp), %eax	# nb, tmp129
	cltq
	salq	$2, %rax	#, D.6815
	leaq	-4(%rax), %rdx	#, D.6817
	movq	-16(%rbp), %rax	# b, tmp130
	addq	%rdx, %rax	# D.6817, D.6816
	movl	(%rax), %eax	# *_43, tmp131
	movl	%eax, -32(%rbp)	# tmp131, v
	subl	$1, -44(%rbp)	#, nb
	.loc 1 733 0
	movl	-32(%rbp), %eax	# v, tmp132
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-8(%rbp), %rax	# c, tmp133
	addq	%rax, %rdx	# tmp133, D.6816
	movl	-40(%rbp), %eax	# nc, tmp134
	movl	%eax, (%rdx)	# tmp134, *_48
	.loc 1 734 0
	movl	-48(%rbp), %eax	# na, tmp138
	subl	$1, %eax	#, tmp137
	movl	%eax, -36(%rbp)	# tmp137, i
	jmp	.L146	#
.L149:
	.loc 1 735 0
	movl	-36(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-24(%rbp), %rax	# a, tmp140
	addq	%rdx, %rax	# D.6815, D.6816
	movl	(%rax), %eax	# *_52, D.6818
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6815
	movq	-56(%rbp), %rax	# aseq, tmp141
	addq	%rdx, %rax	# D.6815, D.6819
	movq	(%rax), %rdx	# *_57, D.6820
	movl	-32(%rbp), %eax	# v, tmp142
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6815
	movq	-56(%rbp), %rax	# aseq, tmp143
	addq	%rcx, %rax	# D.6815, D.6819
	movq	(%rax), %rax	# *_61, D.6820
	movq	%rdx, %rsi	# D.6820,
	movq	%rax, %rdi	# D.6820,
	call	simple_distance	#
	unpcklps	%xmm0, %xmm0	# D.6821, D.6821
	cvtps2pd	%xmm0, %xmm1	# D.6821, D.6822
	movss	-68(%rbp), %xmm0	# maxid, D.6822
	cvtps2pd	%xmm0, %xmm0	# D.6822, D.6822
	movsd	.LC7(%rip), %xmm2	#, tmp144
	subsd	%xmm0, %xmm2	# D.6822, D.6822
	movapd	%xmm2, %xmm0	# D.6822, D.6822
	ucomisd	%xmm1, %xmm0	# D.6822, D.6822
	jb	.L147	#,
	.loc 1 737 0
	movl	-36(%rbp), %eax	# i, tmp145
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-24(%rbp), %rax	# a, tmp146
	addq	%rdx, %rax	# D.6815, D.6816
	movl	(%rax), %eax	# *_70, tmp147
	movl	%eax, -28(%rbp)	# tmp147, w
	movl	-36(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-24(%rbp), %rax	# a, tmp149
	addq	%rax, %rdx	# tmp149, D.6816
	movl	-48(%rbp), %eax	# na, tmp150
	cltq
	salq	$2, %rax	#, D.6815
	leaq	-4(%rax), %rcx	#, D.6817
	movq	-24(%rbp), %rax	# a, tmp151
	addq	%rcx, %rax	# D.6817, D.6816
	movl	(%rax), %eax	# *_78, D.6818
	movl	%eax, (%rdx)	# D.6818, *_74
	subl	$1, -48(%rbp)	#, na
	.loc 1 738 0
	movl	-44(%rbp), %eax	# nb, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6815
	movq	-16(%rbp), %rax	# b, tmp153
	addq	%rax, %rdx	# tmp153, D.6816
	movl	-28(%rbp), %eax	# w, tmp154
	movl	%eax, (%rdx)	# tmp154, *_83
	addl	$1, -44(%rbp)	#, nb
.L147:
	.loc 1 734 0
	subl	$1, -36(%rbp)	#, i
.L146:
	.loc 1 734 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, i
	jns	.L149	#,
.L145:
	.loc 1 730 0 is_stmt 1 discriminator 1
	cmpl	$0, -44(%rbp)	#, nb
	jg	.L150	#,
	.loc 1 741 0
	addl	$1, -40(%rbp)	#, nc
.L144:
	.loc 1 726 0 discriminator 1
	cmpl	$0, -48(%rbp)	#, na
	jg	.L151	#,
	.loc 1 746 0
	movq	-24(%rbp), %rax	# a, tmp155
	movq	%rax, %rdi	# tmp155,
	call	free	#
	.loc 1 747 0
	movq	-16(%rbp), %rax	# b, tmp156
	movq	%rax, %rdi	# tmp156,
	call	free	#
	.loc 1 748 0
	movq	-80(%rbp), %rax	# ret_c, tmp157
	movq	-8(%rbp), %rdx	# c, tmp158
	movq	%rdx, (%rax)	# tmp158, *ret_c_87(D)
	.loc 1 749 0
	movq	-88(%rbp), %rax	# ret_nc, tmp159
	movl	-40(%rbp), %edx	# nc, tmp160
	movl	%edx, (%rax)	# tmp160, *ret_nc_88(D)
	.loc 1 750 0
	nop
	.loc 1 751 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SingleLinkCluster, .-SingleLinkCluster
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC3:
	.long	0
	.align 4
.LC5:
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "gki.h"
	.file 3 "msa.h"
	.file 4 "squid.h"
	.file 5 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc70
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x1
	.long	.LASF121
	.long	.LASF122
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.byte	0x30
	.long	0xd5
	.uleb128 0x6
	.long	.LASF9
	.sleb128 256
	.uleb128 0x6
	.long	.LASF10
	.sleb128 512
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF12
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF13
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF14
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF15
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF16
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF17
	.sleb128 1
	.uleb128 0x6
	.long	.LASF18
	.sleb128 2
	.uleb128 0x6
	.long	.LASF19
	.sleb128 4
	.uleb128 0x6
	.long	.LASF20
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF22
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF29
	.byte	0x18
	.byte	0x2
	.byte	0x1a
	.long	0x128
	.uleb128 0x8
	.string	"key"
	.byte	0x2
	.byte	0x1b
	.long	0x6c
	.byte	0
	.uleb128 0x8
	.string	"idx"
	.byte	0x2
	.byte	0x1c
	.long	0x57
	.byte	0x8
	.uleb128 0x8
	.string	"nxt"
	.byte	0x2
	.byte	0x1d
	.long	0x128
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xf7
	.uleb128 0x9
	.byte	0x18
	.byte	0x2
	.byte	0x24
	.long	0x167
	.uleb128 0xa
	.long	.LASF25
	.byte	0x2
	.byte	0x25
	.long	0x167
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.byte	0x27
	.long	0x57
	.byte	0x8
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.byte	0x28
	.long	0x57
	.byte	0xc
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.byte	0x29
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x128
	.uleb128 0xb
	.string	"GKI"
	.byte	0x2
	.byte	0x2a
	.long	0x12e
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0xd5
	.uleb128 0xc
	.long	.LASF30
	.value	0x168
	.byte	0x3
	.byte	0x70
	.long	0x3c0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x3
	.byte	0x73
	.long	0x178
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x3
	.byte	0x74
	.long	0x178
	.byte	0x8
	.uleb128 0x8
	.string	"wgt"
	.byte	0x3
	.byte	0x75
	.long	0x17e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF33
	.byte	0x3
	.byte	0x76
	.long	0x57
	.byte	0x18
	.uleb128 0xa
	.long	.LASF34
	.byte	0x3
	.byte	0x77
	.long	0x57
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF35
	.byte	0x3
	.byte	0x7b
	.long	0x57
	.byte	0x20
	.uleb128 0xa
	.long	.LASF36
	.byte	0x3
	.byte	0x7c
	.long	0x57
	.byte	0x24
	.uleb128 0xa
	.long	.LASF37
	.byte	0x3
	.byte	0x7d
	.long	0x6c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF38
	.byte	0x3
	.byte	0x7e
	.long	0x6c
	.byte	0x30
	.uleb128 0x8
	.string	"acc"
	.byte	0x3
	.byte	0x7f
	.long	0x6c
	.byte	0x38
	.uleb128 0x8
	.string	"au"
	.byte	0x3
	.byte	0x80
	.long	0x6c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF39
	.byte	0x3
	.byte	0x81
	.long	0x6c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF40
	.byte	0x3
	.byte	0x82
	.long	0x6c
	.byte	0x50
	.uleb128 0x8
	.string	"rf"
	.byte	0x3
	.byte	0x83
	.long	0x6c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF41
	.byte	0x3
	.byte	0x84
	.long	0x178
	.byte	0x60
	.uleb128 0xa
	.long	.LASF42
	.byte	0x3
	.byte	0x85
	.long	0x178
	.byte	0x68
	.uleb128 0x8
	.string	"ss"
	.byte	0x3
	.byte	0x86
	.long	0x178
	.byte	0x70
	.uleb128 0x8
	.string	"sa"
	.byte	0x3
	.byte	0x87
	.long	0x178
	.byte	0x78
	.uleb128 0xa
	.long	.LASF43
	.byte	0x3
	.byte	0x88
	.long	0x3c0
	.byte	0x80
	.uleb128 0xa
	.long	.LASF44
	.byte	0x3
	.byte	0x89
	.long	0x3d0
	.byte	0x98
	.uleb128 0xa
	.long	.LASF45
	.byte	0x3
	.byte	0x90
	.long	0x178
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x3
	.byte	0x91
	.long	0x57
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF47
	.byte	0x3
	.byte	0x92
	.long	0x57
	.byte	0xbc
	.uleb128 0xa
	.long	.LASF48
	.byte	0x3
	.byte	0x94
	.long	0x178
	.byte	0xc0
	.uleb128 0x8
	.string	"gf"
	.byte	0x3
	.byte	0x95
	.long	0x178
	.byte	0xc8
	.uleb128 0x8
	.string	"ngf"
	.byte	0x3
	.byte	0x96
	.long	0x57
	.byte	0xd0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x3
	.byte	0x97
	.long	0x57
	.byte	0xd4
	.uleb128 0xa
	.long	.LASF50
	.byte	0x3
	.byte	0x99
	.long	0x178
	.byte	0xd8
	.uleb128 0x8
	.string	"gs"
	.byte	0x3
	.byte	0x9a
	.long	0x3e0
	.byte	0xe0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x3
	.byte	0x9b
	.long	0x3e6
	.byte	0xe8
	.uleb128 0x8
	.string	"ngs"
	.byte	0x3
	.byte	0x9c
	.long	0x57
	.byte	0xf0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x3
	.byte	0x9e
	.long	0x178
	.byte	0xf8
	.uleb128 0xd
	.string	"gc"
	.byte	0x3
	.byte	0x9f
	.long	0x178
	.value	0x100
	.uleb128 0xe
	.long	.LASF53
	.byte	0x3
	.byte	0xa0
	.long	0x3e6
	.value	0x108
	.uleb128 0xd
	.string	"ngc"
	.byte	0x3
	.byte	0xa1
	.long	0x57
	.value	0x110
	.uleb128 0xe
	.long	.LASF54
	.byte	0x3
	.byte	0xa3
	.long	0x178
	.value	0x118
	.uleb128 0xd
	.string	"gr"
	.byte	0x3
	.byte	0xa4
	.long	0x3e0
	.value	0x120
	.uleb128 0xe
	.long	.LASF55
	.byte	0x3
	.byte	0xa5
	.long	0x3e6
	.value	0x128
	.uleb128 0xd
	.string	"ngr"
	.byte	0x3
	.byte	0xa6
	.long	0x57
	.value	0x130
	.uleb128 0xe
	.long	.LASF56
	.byte	0x3
	.byte	0xaa
	.long	0x3e6
	.value	0x138
	.uleb128 0xe
	.long	.LASF57
	.byte	0x3
	.byte	0xab
	.long	0x57
	.value	0x140
	.uleb128 0xe
	.long	.LASF58
	.byte	0x3
	.byte	0xac
	.long	0x57
	.value	0x144
	.uleb128 0xe
	.long	.LASF59
	.byte	0x3
	.byte	0xad
	.long	0xe3
	.value	0x148
	.uleb128 0xe
	.long	.LASF60
	.byte	0x3
	.byte	0xae
	.long	0xe3
	.value	0x150
	.uleb128 0xe
	.long	.LASF61
	.byte	0x3
	.byte	0xaf
	.long	0xe3
	.value	0x158
	.uleb128 0xe
	.long	.LASF62
	.byte	0x3
	.byte	0xb0
	.long	0x57
	.value	0x160
	.byte	0
	.uleb128 0xf
	.long	0xd5
	.long	0x3d0
	.uleb128 0x10
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0x3e0
	.uleb128 0x10
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x178
	.uleb128 0x4
	.byte	0x8
	.long	0x16d
	.uleb128 0xb
	.string	"MSA"
	.byte	0x3
	.byte	0xb1
	.long	0x184
	.uleb128 0x4
	.byte	0x8
	.long	0x3ec
	.uleb128 0x11
	.long	.LASF63
	.byte	0x28
	.byte	0x4
	.value	0x102
	.long	0x473
	.uleb128 0x12
	.long	.LASF64
	.byte	0x4
	.value	0x103
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF65
	.byte	0x4
	.value	0x104
	.long	0x57
	.byte	0x4
	.uleb128 0x12
	.long	.LASF66
	.byte	0x4
	.value	0x105
	.long	0x57
	.byte	0x8
	.uleb128 0x12
	.long	.LASF67
	.byte	0x4
	.value	0x106
	.long	0xd5
	.byte	0xc
	.uleb128 0x12
	.long	.LASF68
	.byte	0x4
	.value	0x107
	.long	0xd5
	.byte	0x10
	.uleb128 0x12
	.long	.LASF69
	.byte	0x4
	.value	0x108
	.long	0xd5
	.byte	0x14
	.uleb128 0x12
	.long	.LASF70
	.byte	0x4
	.value	0x109
	.long	0x6c
	.byte	0x18
	.uleb128 0x12
	.long	.LASF71
	.byte	0x4
	.value	0x10a
	.long	0x57
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.long	.LASF123
	.byte	0x4
	.byte	0x4
	.value	0x111
	.long	0x493
	.uleb128 0x6
	.long	.LASF72
	.sleb128 0
	.uleb128 0x6
	.long	.LASF73
	.sleb128 1
	.uleb128 0x6
	.long	.LASF74
	.sleb128 2
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x2e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x53f
	.uleb128 0x15
	.long	.LASF31
	.byte	0x1
	.byte	0x2e
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.long	.LASF33
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"wgt"
	.byte	0x1
	.byte	0x2e
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"dmx"
	.byte	0x1
	.byte	0x30
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.byte	0x31
	.long	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"lwt"
	.byte	0x1
	.byte	0x32
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"rwt"
	.byte	0x1
	.byte	0x32
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"fwt"
	.byte	0x1
	.byte	0x33
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x34
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x17e
	.uleb128 0x4
	.byte	0x8
	.long	0x3fd
	.uleb128 0x19
	.long	.LASF77
	.byte	0x1
	.byte	0x60
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9
	.uleb128 0x15
	.long	.LASF75
	.byte	0x1
	.byte	0x60
	.long	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x60
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"lwt"
	.byte	0x1
	.byte	0x60
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"rwt"
	.byte	0x1
	.byte	0x60
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x60
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ld"
	.byte	0x1
	.byte	0x62
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"rd"
	.byte	0x1
	.byte	0x62
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF78
	.byte	0x1
	.byte	0x6e
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x672
	.uleb128 0x15
	.long	.LASF75
	.byte	0x1
	.byte	0x6e
	.long	0x545
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x6e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"lwt"
	.byte	0x1
	.byte	0x6e
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"rwt"
	.byte	0x1
	.byte	0x6e
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"fwt"
	.byte	0x1
	.byte	0x6e
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x6e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"ld"
	.byte	0x1
	.byte	0x70
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"rd"
	.byte	0x1
	.byte	0x70
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.byte	0x71
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.byte	0x71
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x9a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c9
	.uleb128 0x15
	.long	.LASF31
	.byte	0x1
	.byte	0x9a
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x15
	.long	.LASF34
	.byte	0x1
	.byte	0x9a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x15
	.long	.LASF33
	.byte	0x1
	.byte	0x9a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x16
	.string	"wgt"
	.byte	0x1
	.byte	0x9a
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x17
	.string	"dmx"
	.byte	0x1
	.byte	0x9c
	.long	0x53f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0x9d
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.byte	0x9e
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.byte	0x9f
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0xa0
	.long	0x7c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0xa1
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x18
	.long	.LASF88
	.byte	0x1
	.byte	0xa2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.byte	0xa3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.byte	0xa4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x17
	.string	"min"
	.byte	0x1
	.byte	0xa6
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x18
	.long	.LASF90
	.byte	0x1
	.byte	0xa7
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.byte	0xa8
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.byte	0xa8
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.byte	0xa9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.byte	0xaa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.byte	0xab
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0x7d9
	.uleb128 0x10
	.long	0x65
	.byte	0x1a
	.byte	0
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.value	0x13c
	.long	0xd5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x836
	.uleb128 0x1b
	.string	"s1"
	.byte	0x1
	.value	0x13c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"s2"
	.byte	0x1
	.value	0x13c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x13e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x13f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x157
	.long	0x57
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b0
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x1
	.value	0x157
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"num"
	.byte	0x1
	.value	0x158
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.value	0x159
	.long	0x8b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.string	"dmx"
	.byte	0x1
	.value	0x15b
	.long	0x53f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x15c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.value	0x15c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x53f
	.uleb128 0x20
	.long	.LASF101
	.byte	0x1
	.value	0x18a
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x959
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x1
	.value	0x18a
	.long	0x178
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x1
	.value	0x18a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x1
	.value	0x18a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x1
	.value	0x18a
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.string	"wgt"
	.byte	0x1
	.value	0x18a
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.value	0x18c
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"nc"
	.byte	0x1
	.value	0x18c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x1
	.value	0x18d
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x18e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x1cf
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa16
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.value	0x1cf
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x1
	.value	0x1cf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x1
	.value	0x1cf
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.string	"wgt"
	.byte	0x1
	.value	0x1cf
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x1
	.value	0x1d1
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x1
	.value	0x1d2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x1d3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.string	"pos"
	.byte	0x1
	.value	0x1d3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.value	0x1d4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x1d5
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0xf
	.long	0x57
	.long	0xa26
	.uleb128 0x10
	.long	0x65
	.byte	0x19
	.byte	0
	.uleb128 0x20
	.long	.LASF108
	.byte	0x1
	.value	0x209
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xada
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x209
	.long	0x3f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF43
	.byte	0x1
	.value	0x209
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x209
	.long	0xada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x1
	.value	0x20b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.value	0x20c
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x20d
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x1
	.value	0x20e
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x20f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"j"
	.byte	0x1
	.value	0x20f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x1
	.value	0x210
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3f7
	.uleb128 0x20
	.long	.LASF115
	.byte	0x1
	.value	0x24b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb76
	.uleb128 0x1b
	.string	"msa"
	.byte	0x1
	.value	0x24b
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.value	0x24b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x24b
	.long	0xada
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.value	0x24d
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0x24e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x24f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"idx"
	.byte	0x1
	.value	0x24f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.string	"len"
	.byte	0x1
	.value	0x250
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF117
	.byte	0x1
	.value	0x2c0
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc6d
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.value	0x2c0
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x1
	.value	0x2c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x1
	.value	0x2c0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF102
	.byte	0x1
	.value	0x2c0
	.long	0xd5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x2c1
	.long	0xc6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF119
	.byte	0x1
	.value	0x2c1
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1f
	.string	"a"
	.byte	0x1
	.value	0x2c3
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.string	"na"
	.byte	0x1
	.value	0x2c3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.string	"b"
	.byte	0x1
	.value	0x2c4
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.string	"nb"
	.byte	0x1
	.value	0x2c4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.string	"c"
	.byte	0x1
	.value	0x2c5
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.string	"nc"
	.byte	0x1
	.value	0x2c6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.string	"v"
	.byte	0x1
	.value	0x2c7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.string	"w"
	.byte	0x1
	.value	0x2c7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.value	0x2c8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xe3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x16
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
.LASF110:
	.string	"nnew"
.LASF92:
	.string	"champion"
.LASF16:
	.string	"_ISgraph"
.LASF44:
	.string	"cutoff_is_set"
.LASF63:
	.string	"phylo_s"
.LASF117:
	.string	"SingleLinkCluster"
.LASF36:
	.string	"type"
.LASF119:
	.string	"ret_nc"
.LASF52:
	.string	"gc_tag"
.LASF49:
	.string	"alloc_ngf"
.LASF34:
	.string	"nseq"
.LASF24:
	.string	"long long unsigned int"
.LASF67:
	.string	"diff"
.LASF104:
	.string	"PositionBasedWeights"
.LASF11:
	.string	"_ISalpha"
.LASF116:
	.string	"sample"
.LASF12:
	.string	"_ISdigit"
.LASF50:
	.string	"gs_tag"
.LASF23:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF107:
	.string	"norm"
.LASF103:
	.string	"nmem"
.LASF64:
	.string	"parent"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"CLUSTER_MAX"
.LASF47:
	.string	"alloc_ncomment"
.LASF26:
	.string	"primelevel"
.LASF5:
	.string	"short int"
.LASF22:
	.string	"double"
.LASF93:
	.string	"itscale"
.LASF58:
	.string	"nseqlump"
.LASF17:
	.string	"_ISblank"
.LASF41:
	.string	"sqacc"
.LASF114:
	.string	"remove"
.LASF19:
	.string	"_ISpunct"
.LASF79:
	.string	"lnum"
.LASF118:
	.string	"ret_c"
.LASF2:
	.string	"unsigned int"
.LASF94:
	.string	"iteration"
.LASF83:
	.string	"halfmin"
.LASF61:
	.string	"salen"
.LASF62:
	.string	"lastidx"
.LASF3:
	.string	"long unsigned int"
.LASF60:
	.string	"sslen"
.LASF37:
	.string	"name"
.LASF1:
	.string	"short unsigned int"
.LASF74:
	.string	"CLUSTER_MIN"
.LASF30:
	.string	"msa_struct"
.LASF123:
	.string	"clust_strategy"
.LASF121:
	.string	"weight.c"
.LASF66:
	.string	"right"
.LASF86:
	.string	"symseen"
.LASF89:
	.string	"symidx"
.LASF39:
	.string	"ss_cons"
.LASF84:
	.string	"psym"
.LASF53:
	.string	"gc_idx"
.LASF42:
	.string	"sqdesc"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"gr_tag"
.LASF108:
	.string	"FilterAlignment"
.LASF31:
	.string	"aseq"
.LASF14:
	.string	"_ISspace"
.LASF68:
	.string	"lblen"
.LASF81:
	.string	"GSCWeights"
.LASF38:
	.string	"desc"
.LASF100:
	.string	"ret_dmx"
.LASF51:
	.string	"gs_idx"
.LASF82:
	.string	"VoronoiWeights"
.LASF57:
	.string	"nseqalloc"
.LASF59:
	.string	"sqlen"
.LASF99:
	.string	"aseqs"
.LASF21:
	.string	"float"
.LASF69:
	.string	"rblen"
.LASF48:
	.string	"gf_tag"
.LASF70:
	.string	"is_in"
.LASF0:
	.string	"unsigned char"
.LASF102:
	.string	"maxid"
.LASF45:
	.string	"comment"
.LASF76:
	.string	"node"
.LASF87:
	.string	"randseq"
.LASF25:
	.string	"table"
.LASF28:
	.string	"nkeys"
.LASF115:
	.string	"SampleAlignment"
.LASF77:
	.string	"upweight"
.LASF85:
	.string	"nsym"
.LASF88:
	.string	"acol"
.LASF96:
	.string	"valid"
.LASF72:
	.string	"CLUSTER_MEAN"
.LASF101:
	.string	"BlosumWeights"
.LASF8:
	.string	"char"
.LASF40:
	.string	"sa_cons"
.LASF106:
	.string	"nres"
.LASF105:
	.string	"rescount"
.LASF29:
	.string	"gki_elem"
.LASF18:
	.string	"_IScntrl"
.LASF33:
	.string	"alen"
.LASF13:
	.string	"_ISxdigit"
.LASF56:
	.string	"index"
.LASF95:
	.string	"best"
.LASF10:
	.string	"_ISlower"
.LASF98:
	.string	"simple_diffmx"
.LASF71:
	.string	"incnum"
.LASF46:
	.string	"ncomment"
.LASF109:
	.string	"ret_new"
.LASF90:
	.string	"dist"
.LASF43:
	.string	"cutoff"
.LASF20:
	.string	"_ISalnum"
.LASF113:
	.string	"ident"
.LASF75:
	.string	"tree"
.LASF9:
	.string	"_ISupper"
.LASF78:
	.string	"downweight"
.LASF120:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF35:
	.string	"flags"
.LASF112:
	.string	"useme"
.LASF32:
	.string	"sqname"
.LASF55:
	.string	"gr_idx"
.LASF27:
	.string	"nhash"
.LASF80:
	.string	"rnum"
.LASF122:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF91:
	.string	"challenge"
.LASF111:
	.string	"list"
.LASF97:
	.string	"simple_distance"
.LASF65:
	.string	"left"
.LASF15:
	.string	"_ISprint"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
