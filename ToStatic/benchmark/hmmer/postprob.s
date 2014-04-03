	.file	"postprob.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 postprob.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	P7OptimalAccuracy
	.type	P7OptimalAccuracy, @function
P7OptimalAccuracy:
.LFB2:
	.file 1 "postprob.c"
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# dsq, dsq
	movl	%esi, -44(%rbp)	# L, L
	movq	%rdx, -56(%rbp)	# hmm, hmm
	movq	%rcx, -64(%rbp)	# ret_tr, ret_tr
	.loc 1 103 0
	leaq	-24(%rbp), %rcx	#, tmp70
	movq	-56(%rbp), %rdx	# hmm, tmp71
	movl	-44(%rbp), %esi	# L, tmp72
	movq	-40(%rbp), %rax	# dsq, tmp73
	movq	%rax, %rdi	# tmp73,
	call	P7Forward	#
	.loc 1 104 0
	leaq	-16(%rbp), %rcx	#, tmp74
	movq	-56(%rbp), %rdx	# hmm, tmp75
	movl	-44(%rbp), %esi	# L, tmp76
	movq	-40(%rbp), %rax	# dsq, tmp77
	movq	%rax, %rdi	# tmp77,
	call	P7Backward	#
	.loc 1 106 0
	movq	-16(%rbp), %rdi	# backward, backward.0
	movq	-16(%rbp), %rcx	# backward, backward.1
	movq	-24(%rbp), %rdx	# forward, forward.2
	movq	-56(%rbp), %rsi	# hmm, tmp78
	movl	-44(%rbp), %eax	# L, tmp79
	movq	%rdi, %r8	# backward.0,
	movl	%eax, %edi	# tmp79,
	call	P7EmitterPosterior	#
	.loc 1 108 0
	movq	-24(%rbp), %rcx	# forward, forward.3
	movq	-16(%rbp), %rdx	# backward, backward.4
	movq	-56(%rbp), %rax	# hmm, tmp80
	movl	136(%rax), %esi	# hmm_3(D)->M, D.8702
	movq	-64(%rbp), %rdi	# ret_tr, tmp81
	movl	-44(%rbp), %eax	# L, tmp82
	movq	%rdi, %r8	# tmp81,
	movl	%eax, %edi	# tmp82,
	call	P7FillOptimalAccuracy	#
	unpcklps	%xmm0, %xmm0	# D.8703, D.8703
	cvtps2pd	%xmm0, %xmm1	# D.8703, tmp84
	movsd	%xmm1, -8(%rbp)	# tmp84, sc
	.loc 1 110 0
	movq	-24(%rbp), %rax	# forward, forward.5
	movq	%rax, %rdi	# forward.5,
	call	FreePlan7Matrix	#
	.loc 1 111 0
	movq	-16(%rbp), %rax	# backward, backward.6
	movq	%rax, %rdi	# backward.6,
	call	FreePlan7Matrix	#
	.loc 1 113 0
	movsd	-8(%rbp), %xmm0	# sc, D.8703
	cvtpd2ps	%xmm0, %xmm0	# D.8703, D.8703
	movss	%xmm0, -48(%rbp)	# D.8703, %sfp
	movl	-48(%rbp), %eax	# %sfp, <retval>
	.loc 1 114 0
	movl	%eax, -48(%rbp)	# <retval>, %sfp
	movss	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P7OptimalAccuracy, .-P7OptimalAccuracy
	.globl	P7Backward
	.type	P7Backward, @function
P7Backward:
.LFB3:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# dsq, dsq
	movl	%esi, -92(%rbp)	# L, L
	movq	%rdx, -104(%rbp)	# hmm, hmm
	movq	%rcx, -112(%rbp)	# ret_mx, ret_mx
	.loc 1 144 0
	movq	-104(%rbp), %rax	# hmm, tmp624
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	movl	-92(%rbp), %edx	# L, tmp625
	leal	1(%rdx), %edi	#, D.8705
	leaq	-32(%rbp), %r8	#, tmp626
	leaq	-40(%rbp), %rsi	#, tmp627
	leaq	-48(%rbp), %rcx	#, tmp628
	leaq	-56(%rbp), %rdx	#, tmp629
	movq	%r8, %r9	# tmp626,
	movq	%rsi, %r8	# tmp627,
	movl	%eax, %esi	# D.8705,
	call	AllocPlan7Matrix	#
	movq	%rax, -24(%rbp)	# tmp630, mx
	.loc 1 150 0
	movq	-56(%rbp), %rax	# xmx, xmx.7
	movl	-92(%rbp), %edx	# L, tmp631
	movslq	%edx, %rdx	# tmp631, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_13, D.8708
	leaq	8(%rax), %rdx	#, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp632
	movl	352(%rax), %eax	# hmm_5(D)->xsc, D.8705
	movl	%eax, (%rdx)	# D.8705, *_15
	.loc 1 151 0
	movq	-56(%rbp), %rax	# xmx, xmx.8
	movl	-92(%rbp), %edx	# L, tmp633
	movslq	%edx, %rdx	# tmp633, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_20, D.8708
	leaq	4(%rax), %rdx	#, D.8708
	movq	-56(%rbp), %rax	# xmx, xmx.9
	movl	-92(%rbp), %ecx	# L, tmp634
	movslq	%ecx, %rcx	# tmp634, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_26, D.8708
	addq	$8, %rax	#, D.8708
	movl	(%rax), %ecx	# *_28, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp635
	movl	344(%rax), %eax	# hmm_5(D)->xsc, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_22
	.loc 1 152 0
	movq	-56(%rbp), %rax	# xmx, xmx.10
	movl	-92(%rbp), %edx	# L, tmp636
	movslq	%edx, %rdx	# tmp636, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_35, D.8708
	leaq	12(%rax), %rcx	#, D.8708
	movq	-56(%rbp), %rax	# xmx, xmx.11
	movl	-92(%rbp), %edx	# L, tmp637
	movslq	%edx, %rdx	# tmp637, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_41, D.8708
	movq	-56(%rbp), %rdx	# xmx, xmx.12
	movl	-92(%rbp), %esi	# L, tmp638
	movslq	%esi, %rsi	# tmp638, D.8706
	salq	$3, %rsi	#, D.8706
	addq	%rsi, %rdx	# D.8706, D.8707
	movq	(%rdx), %rdx	# *_46, D.8708
	addq	$16, %rdx	#, D.8708
	movl	$-987654321, (%rdx)	#, *_48
	movl	(%rdx), %edx	# *_48, D.8705
	movl	%edx, (%rax)	# D.8705, *_42
	movl	(%rax), %eax	# *_42, D.8705
	movl	%eax, (%rcx)	# D.8705, *_37
	.loc 1 153 0
	movq	-104(%rbp), %rax	# hmm, tmp639
	movl	136(%rax), %eax	# hmm_5(D)->M, tmp640
	movl	%eax, -64(%rbp)	# tmp640, k
	jmp	.L4	#
.L5:
	.loc 1 154 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.13
	movl	-92(%rbp), %edx	# L, tmp641
	movslq	%edx, %rdx	# tmp641, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_55, D.8708
	movl	-64(%rbp), %edx	# k, tmp642
	movslq	%edx, %rdx	# tmp642, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rax, %rdx	# D.8708, D.8708
	movq	-56(%rbp), %rax	# xmx, xmx.14
	movl	-92(%rbp), %ecx	# L, tmp643
	movslq	%ecx, %rcx	# tmp643, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_63, D.8708
	addq	$4, %rax	#, D.8708
	movl	(%rax), %ecx	# *_65, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp644
	movq	376(%rax), %rax	# hmm_5(D)->esc, D.8708
	movl	-64(%rbp), %esi	# k, tmp645
	movslq	%esi, %rsi	# tmp645, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_70, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_59
	.loc 1 155 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.15
	movl	-92(%rbp), %edx	# L, tmp646
	movslq	%edx, %rdx	# tmp646, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_76, D.8708
	movl	-64(%rbp), %edx	# k, tmp647
	movslq	%edx, %rdx	# tmp647, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rax, %rdx	# D.8708, D.8708
	movq	-48(%rbp), %rax	# mmx, mmx.16
	movl	-92(%rbp), %ecx	# L, tmp648
	movslq	%ecx, %rcx	# tmp648, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_84, D.8708
	movl	-64(%rbp), %ecx	# k, tmp649
	movslq	%ecx, %rcx	# tmp649, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %ecx	# *_88, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp650
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8707
	movl	-92(%rbp), %esi	# L, tmp651
	movslq	%esi, %rdi	# tmp651, D.8709
	movq	-88(%rbp), %rsi	# dsq, tmp652
	addq	%rdi, %rsi	# D.8709, D.8710
	movzbl	(%rsi), %esi	# *_93, D.8711
	movsbq	%sil, %rsi	# D.8711, D.8706
	salq	$3, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_97, D.8708
	movl	-64(%rbp), %esi	# k, tmp653
	movslq	%esi, %rsi	# tmp653, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_101, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_80
	.loc 1 156 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.17
	movl	-92(%rbp), %edx	# L, tmp654
	movslq	%edx, %rdx	# tmp654, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_107, D.8708
	movl	-64(%rbp), %edx	# k, tmp655
	movslq	%edx, %rdx	# tmp655, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rax, %rdx	# D.8708, D.8708
	movq	-32(%rbp), %rax	# dmx, dmx.18
	movl	-92(%rbp), %ecx	# L, tmp656
	movslq	%ecx, %rcx	# tmp656, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_115, D.8708
	movl	-64(%rbp), %ecx	# k, tmp657
	movslq	%ecx, %rcx	# tmp657, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	$-987654321, (%rax)	#, *_119
	movl	(%rax), %eax	# *_119, D.8705
	movl	%eax, (%rdx)	# D.8705, *_111
	.loc 1 153 0 discriminator 2
	subl	$1, -64(%rbp)	#, k
.L4:
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, k
	jg	.L5	#,
	.loc 1 166 0 is_stmt 1
	movq	-104(%rbp), %rax	# hmm, tmp658
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$48, %rax	#, D.8707
	movq	(%rax), %rdx	# *_123, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp659
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	subq	$4, %rax	#, D.8709
	addq	%rax, %rdx	# D.8709, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp660
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$16, %rax	#, D.8707
	movq	(%rax), %rcx	# *_131, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp661
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	subq	$4, %rax	#, D.8709
	addq	%rcx, %rax	# D.8708, D.8708
	movl	$-987654321, (%rax)	#, *_137
	movl	(%rax), %eax	# *_137, D.8705
	movl	%eax, (%rdx)	# D.8705, *_129
	.loc 1 167 0
	movl	-92(%rbp), %eax	# L, tmp665
	subl	$1, %eax	#, tmp664
	movl	%eax, -68(%rbp)	# tmp664, i
	jmp	.L6	#
.L12:
	.loc 1 172 0
	movq	-56(%rbp), %rax	# xmx, xmx.19
	movl	-68(%rbp), %edx	# i, tmp666
	movslq	%edx, %rdx	# tmp666, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_143, D.8708
	leaq	8(%rax), %rdx	#, D.8708
	movq	-56(%rbp), %rax	# xmx, xmx.20
	movl	-68(%rbp), %ecx	# i, tmp667
	movslq	%ecx, %rcx	# tmp667, D.8709
	addq	$1, %rcx	#, D.8709
	salq	$3, %rcx	#, D.8709
	addq	%rcx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_150, D.8708
	addq	$8, %rax	#, D.8708
	movl	(%rax), %ecx	# *_152, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp668
	movl	356(%rax), %eax	# hmm_5(D)->xsc, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_145
	.loc 1 174 0
	movq	-56(%rbp), %rax	# xmx, xmx.21
	movl	-68(%rbp), %edx	# i, tmp669
	movslq	%edx, %rdx	# tmp669, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_159, D.8708
	movl	$-987654321, (%rax)	#, *_160
	.loc 1 182 0
	movq	-56(%rbp), %rax	# xmx, xmx.22
	movl	-68(%rbp), %edx	# i, tmp670
	movslq	%edx, %rdx	# tmp670, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rbx	# *_164, D.8708
	movq	-48(%rbp), %rax	# mmx, mmx.23
	movl	-68(%rbp), %edx	# i, tmp671
	movslq	%edx, %rdx	# tmp671, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rdx	# *_170, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp672
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	addq	%rdx, %rax	# D.8708, D.8708
	movl	(%rax), %edx	# *_175, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp673
	movq	368(%rax), %rcx	# hmm_5(D)->bsc, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp674
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	subq	$4, %rax	#, D.8709
	addq	%rcx, %rax	# D.8708, D.8708
	movl	(%rax), %eax	# *_182, D.8705
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.24
	movl	-68(%rbp), %ecx	# i, tmp675
	movslq	%ecx, %rcx	# tmp675, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_188, D.8708
	movl	(%rax), %eax	# *_189, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_165
	.loc 1 183 0
	movq	-104(%rbp), %rax	# hmm, tmp676
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	subl	$1, %eax	#, tmp677
	movl	%eax, -64(%rbp)	# tmp677, k
	jmp	.L7	#
.L8:
	.loc 1 184 0 discriminator 2
	movq	-56(%rbp), %rax	# xmx, xmx.25
	movl	-68(%rbp), %edx	# i, tmp678
	movslq	%edx, %rdx	# tmp678, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rbx	# *_197, D.8708
	movq	-48(%rbp), %rax	# mmx, mmx.26
	movl	-68(%rbp), %edx	# i, tmp679
	movslq	%edx, %rdx	# tmp679, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_203, D.8708
	movl	-64(%rbp), %edx	# k, tmp680
	movslq	%edx, %rdx	# tmp680, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8708
	movl	(%rax), %edx	# *_207, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp681
	movq	368(%rax), %rax	# hmm_5(D)->bsc, D.8708
	movl	-64(%rbp), %ecx	# k, tmp682
	movslq	%ecx, %rcx	# tmp682, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_212, D.8705
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.27
	movl	-68(%rbp), %ecx	# i, tmp683
	movslq	%ecx, %rcx	# tmp683, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_218, D.8708
	movl	(%rax), %eax	# *_219, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_198
	.loc 1 183 0 discriminator 2
	subl	$1, -64(%rbp)	#, k
.L7:
	.loc 1 183 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, k
	jg	.L8	#,
	.loc 1 186 0 is_stmt 1
	movq	-56(%rbp), %rax	# xmx, xmx.28
	movl	-68(%rbp), %edx	# i, tmp684
	movslq	%edx, %rdx	# tmp684, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_226, D.8708
	leaq	12(%rax), %rbx	#, D.8708
	.loc 1 187 0
	movq	-56(%rbp), %rax	# xmx, xmx.29
	movl	-68(%rbp), %edx	# i, tmp685
	movslq	%edx, %rdx	# tmp685, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_233, D.8708
	addq	$12, %rax	#, D.8708
	movl	(%rax), %edx	# *_235, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp686
	movl	364(%rax), %eax	# hmm_5(D)->xsc, D.8705
	.loc 1 186 0
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.30
	movl	-68(%rbp), %ecx	# i, tmp687
	movslq	%ecx, %rcx	# tmp687, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_242, D.8708
	movl	(%rax), %ecx	# *_243, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp688
	movl	360(%rax), %eax	# hmm_5(D)->xsc, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_228
	.loc 1 189 0
	movq	-56(%rbp), %rax	# xmx, xmx.31
	movl	-68(%rbp), %edx	# i, tmp689
	movslq	%edx, %rdx	# tmp689, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_251, D.8708
	leaq	4(%rax), %rbx	#, D.8708
	.loc 1 190 0
	movq	-56(%rbp), %rax	# xmx, xmx.32
	movl	-68(%rbp), %edx	# i, tmp690
	movslq	%edx, %rdx	# tmp690, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_257, D.8708
	addq	$12, %rax	#, D.8708
	movl	(%rax), %edx	# *_259, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp691
	movl	348(%rax), %eax	# hmm_5(D)->xsc, D.8705
	.loc 1 189 0
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.33
	movl	-68(%rbp), %ecx	# i, tmp692
	movslq	%ecx, %rcx	# tmp692, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_266, D.8708
	addq	$8, %rax	#, D.8708
	movl	(%rax), %ecx	# *_268, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp693
	movl	344(%rax), %eax	# hmm_5(D)->xsc, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_253
	.loc 1 192 0
	movq	-56(%rbp), %rax	# xmx, xmx.34
	movl	-68(%rbp), %edx	# i, tmp694
	movslq	%edx, %rdx	# tmp694, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_276, D.8708
	leaq	16(%rax), %rbx	#, D.8708
	.loc 1 193 0
	movq	-56(%rbp), %rax	# xmx, xmx.35
	movl	-68(%rbp), %edx	# i, tmp695
	movslq	%edx, %rdx	# tmp695, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_283, D.8708
	addq	$16, %rax	#, D.8708
	movl	(%rax), %edx	# *_285, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp696
	movl	340(%rax), %eax	# hmm_5(D)->xsc, D.8705
	.loc 1 192 0
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.36
	movl	-68(%rbp), %ecx	# i, tmp697
	movslq	%ecx, %rcx	# tmp697, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_292, D.8708
	movl	(%rax), %ecx	# *_293, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp698
	movl	336(%rax), %eax	# hmm_5(D)->xsc, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_278
	.loc 1 198 0
	cmpl	$0, -68(%rbp)	#, i
	jle	.L9	#,
	.loc 1 199 0
	movq	-48(%rbp), %rax	# mmx, mmx.37
	movl	-68(%rbp), %edx	# i, tmp699
	movslq	%edx, %rdx	# tmp699, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rdx	# *_301, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp700
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	addq	%rax, %rdx	# D.8706, D.8708
	movq	-56(%rbp), %rax	# xmx, xmx.38
	movl	-68(%rbp), %ecx	# i, tmp701
	movslq	%ecx, %rcx	# tmp701, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_310, D.8708
	addq	$4, %rax	#, D.8708
	movl	(%rax), %ecx	# *_312, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp702
	movq	376(%rax), %rsi	# hmm_5(D)->esc, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp703
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	addq	%rsi, %rax	# D.8708, D.8708
	movl	(%rax), %eax	# *_318, D.8705
	leal	(%rcx,%rax), %edi	#, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp704
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8707
	movl	-68(%rbp), %ecx	# i, tmp705
	movslq	%ecx, %rsi	# tmp705, D.8709
	movq	-88(%rbp), %rcx	# dsq, tmp706
	addq	%rsi, %rcx	# D.8709, D.8710
	movzbl	(%rcx), %ecx	# *_323, D.8711
	movsbq	%cl, %rcx	# D.8711, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rcx	# *_327, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp707
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	addq	%rcx, %rax	# D.8708, D.8708
	movl	(%rax), %eax	# *_332, D.8705
	addl	%edi, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_306
	.loc 1 200 0
	movq	-32(%rbp), %rax	# dmx, dmx.39
	movl	-68(%rbp), %edx	# i, tmp708
	movslq	%edx, %rdx	# tmp708, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rdx	# *_338, D.8708
	movq	-104(%rbp), %rax	# hmm, tmp709
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	cltq
	salq	$2, %rax	#, D.8706
	addq	%rdx, %rax	# D.8708, D.8708
	movl	$-987654321, (%rax)	#, *_343
	.loc 1 201 0
	movq	-104(%rbp), %rax	# hmm, tmp710
	movl	136(%rax), %eax	# hmm_5(D)->M, D.8705
	subl	$1, %eax	#, tmp711
	movl	%eax, -64(%rbp)	# tmp711, k
	jmp	.L10	#
.L11:
	.loc 1 203 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.40
	movl	-68(%rbp), %edx	# i, tmp712
	movslq	%edx, %rdx	# tmp712, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_349, D.8708
	movl	-64(%rbp), %edx	# k, tmp713
	movslq	%edx, %rdx	# tmp713, D.8706
	salq	$2, %rdx	#, D.8706
	leaq	(%rax,%rdx), %r12	#, D.8708
	.loc 1 206 0 discriminator 2
	movq	-32(%rbp), %rax	# dmx, dmx.41
	movl	-68(%rbp), %edx	# i, tmp714
	movslq	%edx, %rdx	# tmp714, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_357, D.8708
	movl	-64(%rbp), %edx	# k, tmp715
	movslq	%edx, %rdx	# tmp715, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$2, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8708
	movl	(%rax), %edx	# *_362, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp716
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$16, %rax	#, D.8707
	movq	(%rax), %rax	# *_365, D.8708
	movl	-64(%rbp), %ecx	# k, tmp717
	movslq	%ecx, %rcx	# tmp717, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_369, D.8705
	.loc 1 203 0 discriminator 2
	addl	%eax, %edx	# D.8705, D.8705
	.loc 1 205 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.42
	movl	-68(%rbp), %ecx	# i, tmp718
	movslq	%ecx, %rcx	# tmp718, D.8709
	addq	$1, %rcx	#, D.8709
	salq	$3, %rcx	#, D.8709
	addq	%rcx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_376, D.8708
	movl	-64(%rbp), %ecx	# k, tmp719
	movslq	%ecx, %rcx	# tmp719, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %ecx	# *_380, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp720
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$8, %rax	#, D.8707
	movq	(%rax), %rax	# *_383, D.8708
	movl	-64(%rbp), %esi	# k, tmp721
	movslq	%esi, %rsi	# tmp721, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_387, D.8705
	.loc 1 203 0 discriminator 2
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, %ebx	#, D.8705
	.loc 1 204 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.43
	movl	-68(%rbp), %edx	# i, tmp722
	movslq	%edx, %rdx	# tmp722, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_395, D.8708
	movl	-64(%rbp), %edx	# k, tmp723
	movslq	%edx, %rdx	# tmp723, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$2, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8708
	movl	(%rax), %edx	# *_400, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp724
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	movq	(%rax), %rax	# *_402, D.8708
	movl	-64(%rbp), %ecx	# k, tmp725
	movslq	%ecx, %rcx	# tmp725, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_406, D.8705
	.loc 1 203 0 discriminator 2
	addl	%eax, %edx	# D.8705, D.8705
	movq	-56(%rbp), %rax	# xmx, xmx.44
	movl	-68(%rbp), %ecx	# i, tmp726
	movslq	%ecx, %rcx	# tmp726, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_412, D.8708
	addq	$4, %rax	#, D.8708
	movl	(%rax), %ecx	# *_414, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp727
	movq	376(%rax), %rax	# hmm_5(D)->esc, D.8708
	movl	-64(%rbp), %esi	# k, tmp728
	movslq	%esi, %rsi	# tmp728, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_419, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%ebx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%r12)	# D.8705, *_353
	.loc 1 207 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.45
	movl	-68(%rbp), %edx	# i, tmp729
	movslq	%edx, %rdx	# tmp729, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_427, D.8708
	movl	-64(%rbp), %edx	# k, tmp730
	movslq	%edx, %rdx	# tmp730, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rax, %rdx	# D.8708, D.8708
	movq	-48(%rbp), %rax	# mmx, mmx.46
	movl	-68(%rbp), %ecx	# i, tmp731
	movslq	%ecx, %rcx	# tmp731, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_435, D.8708
	movl	-64(%rbp), %ecx	# k, tmp732
	movslq	%ecx, %rcx	# tmp732, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %ecx	# *_439, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp733
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.8707
	movl	-68(%rbp), %esi	# i, tmp734
	movslq	%esi, %rdi	# tmp734, D.8709
	movq	-88(%rbp), %rsi	# dsq, tmp735
	addq	%rdi, %rsi	# D.8709, D.8710
	movzbl	(%rsi), %esi	# *_443, D.8711
	movsbq	%sil, %rsi	# D.8711, D.8706
	salq	$3, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_447, D.8708
	movl	-64(%rbp), %esi	# k, tmp736
	movslq	%esi, %rsi	# tmp736, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_451, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_431
	.loc 1 209 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.47
	movl	-68(%rbp), %edx	# i, tmp737
	movslq	%edx, %rdx	# tmp737, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_457, D.8708
	movl	-64(%rbp), %edx	# k, tmp738
	movslq	%edx, %rdx	# tmp738, D.8706
	salq	$2, %rdx	#, D.8706
	leaq	(%rax,%rdx), %rbx	#, D.8708
	.loc 1 210 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.48
	movl	-68(%rbp), %edx	# i, tmp739
	movslq	%edx, %rdx	# tmp739, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_466, D.8708
	movl	-64(%rbp), %edx	# k, tmp740
	movslq	%edx, %rdx	# tmp740, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$2, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8708
	movl	(%rax), %edx	# *_471, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp741
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$24, %rax	#, D.8707
	movq	(%rax), %rax	# *_474, D.8708
	movl	-64(%rbp), %ecx	# k, tmp742
	movslq	%ecx, %rcx	# tmp742, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_478, D.8705
	.loc 1 209 0 discriminator 2
	addl	%eax, %edx	# D.8705, D.8705
	movq	-40(%rbp), %rax	# imx, imx.49
	movl	-68(%rbp), %ecx	# i, tmp743
	movslq	%ecx, %rcx	# tmp743, D.8709
	addq	$1, %rcx	#, D.8709
	salq	$3, %rcx	#, D.8709
	addq	%rcx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_485, D.8708
	movl	-64(%rbp), %ecx	# k, tmp744
	movslq	%ecx, %rcx	# tmp744, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %ecx	# *_489, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp745
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$32, %rax	#, D.8707
	movq	(%rax), %rax	# *_492, D.8708
	movl	-64(%rbp), %esi	# k, tmp746
	movslq	%esi, %rsi	# tmp746, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_496, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_461
	.loc 1 211 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.50
	movl	-68(%rbp), %edx	# i, tmp747
	movslq	%edx, %rdx	# tmp747, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_503, D.8708
	movl	-64(%rbp), %edx	# k, tmp748
	movslq	%edx, %rdx	# tmp748, D.8706
	salq	$2, %rdx	#, D.8706
	addq	%rax, %rdx	# D.8708, D.8708
	movq	-40(%rbp), %rax	# imx, imx.51
	movl	-68(%rbp), %ecx	# i, tmp749
	movslq	%ecx, %rcx	# tmp749, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_511, D.8708
	movl	-64(%rbp), %ecx	# k, tmp750
	movslq	%ecx, %rcx	# tmp750, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %ecx	# *_515, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp751
	movq	328(%rax), %rax	# hmm_5(D)->isc, D.8707
	movl	-68(%rbp), %esi	# i, tmp752
	movslq	%esi, %rdi	# tmp752, D.8709
	movq	-88(%rbp), %rsi	# dsq, tmp753
	addq	%rdi, %rsi	# D.8709, D.8710
	movzbl	(%rsi), %esi	# *_519, D.8711
	movsbq	%sil, %rsi	# D.8711, D.8706
	salq	$3, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_523, D.8708
	movl	-64(%rbp), %esi	# k, tmp754
	movslq	%esi, %rsi	# tmp754, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_527, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%eax, (%rdx)	# D.8705, *_507
	.loc 1 213 0 discriminator 2
	movq	-32(%rbp), %rax	# dmx, dmx.52
	movl	-68(%rbp), %edx	# i, tmp755
	movslq	%edx, %rdx	# tmp755, D.8706
	salq	$3, %rdx	#, D.8706
	addq	%rdx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_533, D.8708
	movl	-64(%rbp), %edx	# k, tmp756
	movslq	%edx, %rdx	# tmp756, D.8706
	salq	$2, %rdx	#, D.8706
	leaq	(%rax,%rdx), %rbx	#, D.8708
	.loc 1 214 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.53
	movl	-68(%rbp), %edx	# i, tmp757
	movslq	%edx, %rdx	# tmp757, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$3, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8707
	movq	(%rax), %rax	# *_542, D.8708
	movl	-64(%rbp), %edx	# k, tmp758
	movslq	%edx, %rdx	# tmp758, D.8709
	addq	$1, %rdx	#, D.8709
	salq	$2, %rdx	#, D.8709
	addq	%rdx, %rax	# D.8709, D.8708
	movl	(%rax), %edx	# *_547, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp759
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$40, %rax	#, D.8707
	movq	(%rax), %rax	# *_550, D.8708
	movl	-64(%rbp), %ecx	# k, tmp760
	movslq	%ecx, %rcx	# tmp760, D.8706
	salq	$2, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_554, D.8705
	.loc 1 213 0 discriminator 2
	addl	%eax, %edx	# D.8705, D.8705
	movq	-32(%rbp), %rax	# dmx, dmx.54
	movl	-68(%rbp), %ecx	# i, tmp761
	movslq	%ecx, %rcx	# tmp761, D.8706
	salq	$3, %rcx	#, D.8706
	addq	%rcx, %rax	# D.8706, D.8707
	movq	(%rax), %rax	# *_560, D.8708
	movl	-64(%rbp), %ecx	# k, tmp762
	movslq	%ecx, %rcx	# tmp762, D.8709
	addq	$1, %rcx	#, D.8709
	salq	$2, %rcx	#, D.8709
	addq	%rcx, %rax	# D.8709, D.8708
	movl	(%rax), %ecx	# *_565, D.8705
	movq	-104(%rbp), %rax	# hmm, tmp763
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.8707
	addq	$48, %rax	#, D.8707
	movq	(%rax), %rax	# *_568, D.8708
	movl	-64(%rbp), %esi	# k, tmp764
	movslq	%esi, %rsi	# tmp764, D.8706
	salq	$2, %rsi	#, D.8706
	addq	%rsi, %rax	# D.8706, D.8708
	movl	(%rax), %eax	# *_572, D.8705
	addl	%ecx, %eax	# D.8705, D.8705
	movl	%edx, %esi	# D.8705,
	movl	%eax, %edi	# D.8705,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8705, *_537
	.loc 1 201 0 discriminator 2
	subl	$1, -64(%rbp)	#, k
.L10:
	.loc 1 201 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, k
	jg	.L11	#,
.L9:
	.loc 1 167 0 is_stmt 1
	subl	$1, -68(%rbp)	#, i
.L6:
	.loc 1 167 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jns	.L12	#,
	.loc 1 221 0 is_stmt 1
	movq	-56(%rbp), %rax	# xmx, xmx.55
	movq	(%rax), %rax	# *xmx.55_578, D.8708
	movl	16(%rax), %eax	# MEM[(int *)_579 + 16B], tmp765
	movl	%eax, -60(%rbp)	# tmp765, sc
	.loc 1 223 0
	cmpq	$0, -112(%rbp)	#, ret_mx
	je	.L13	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# ret_mx, tmp766
	movq	-24(%rbp), %rdx	# mx, tmp767
	movq	%rdx, (%rax)	# tmp767, *ret_mx_581(D)
	jmp	.L14	#
.L13:
	.loc 1 224 0 is_stmt 1
	movq	-24(%rbp), %rax	# mx, tmp768
	movq	%rax, %rdi	# tmp768,
	call	FreePlan7Matrix	#
.L14:
	.loc 1 226 0
	movl	-60(%rbp), %eax	# sc, tmp769
	movl	%eax, %edi	# tmp769,
	call	Scorify	#
	movss	%xmm0, -96(%rbp)	#, %sfp
	movl	-96(%rbp), %eax	# %sfp, D.8712
	.loc 1 227 0
	movl	%eax, -96(%rbp)	# <retval>, %sfp
	movss	-96(%rbp), %xmm0	# %sfp,
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	P7Backward, .-P7Backward
	.globl	P7EmitterPosterior
	.type	P7EmitterPosterior, @function
P7EmitterPosterior:
.LFB4:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -52(%rbp)	# L, L
	movq	%rsi, -64(%rbp)	# hmm, hmm
	movq	%rdx, -72(%rbp)	# forward, forward
	movq	%rcx, -80(%rbp)	# backward, backward
	movq	%r8, -88(%rbp)	# mx, mx
	.loc 1 260 0
	movq	-80(%rbp), %rax	# backward, tmp541
	movq	(%rax), %rax	# backward_3(D)->xmx, D.8713
	movq	(%rax), %rax	# *_4, D.8714
	movl	16(%rax), %eax	# MEM[(int *)_5 + 16B], tmp542
	movl	%eax, -36(%rbp)	# tmp542, sc
	.loc 1 262 0
	movl	-52(%rbp), %eax	# L, tmp543
	movl	%eax, -44(%rbp)	# tmp543, i
	jmp	.L17	#
.L20:
	.loc 1 264 0
	movq	-88(%rbp), %rax	# mx, tmp544
	movq	(%rax), %rax	# mx_9(D)->xmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp545
	movslq	%edx, %rdx	# tmp545, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_13, D.8714
	leaq	8(%rax), %rdx	#, D.8714
	movq	-72(%rbp), %rax	# forward, tmp546
	movq	(%rax), %rax	# forward_16(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp547
	movslq	%ecx, %rcx	# tmp547, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_21, D.8714
	addq	$8, %rax	#, D.8714
	movl	(%rax), %ecx	# *_23, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp548
	movl	356(%rax), %eax	# hmm_25(D)->xsc, D.8717
	leal	(%rcx,%rax), %esi	#, D.8717
	movq	-80(%rbp), %rax	# backward, tmp549
	movq	(%rax), %rax	# backward_3(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp550
	movslq	%ecx, %rcx	# tmp550, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_31, D.8714
	addq	$8, %rax	#, D.8714
	movl	(%rax), %eax	# *_33, D.8717
	addl	%esi, %eax	# D.8717, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_15
	.loc 1 266 0
	movq	-88(%rbp), %rax	# mx, tmp551
	movq	(%rax), %rax	# mx_9(D)->xmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp552
	movslq	%edx, %rdx	# tmp552, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_40, D.8714
	leaq	12(%rax), %rdx	#, D.8714
	movq	-72(%rbp), %rax	# forward, tmp553
	movq	(%rax), %rax	# forward_16(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp554
	movslq	%ecx, %rcx	# tmp554, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_47, D.8714
	addq	$12, %rax	#, D.8714
	movl	(%rax), %ecx	# *_49, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp555
	movl	364(%rax), %eax	# hmm_25(D)->xsc, D.8717
	leal	(%rcx,%rax), %esi	#, D.8717
	movq	-80(%rbp), %rax	# backward, tmp556
	movq	(%rax), %rax	# backward_3(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp557
	movslq	%ecx, %rcx	# tmp557, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_56, D.8714
	addq	$12, %rax	#, D.8714
	movl	(%rax), %eax	# *_58, D.8717
	addl	%esi, %eax	# D.8717, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_42
	.loc 1 268 0
	movq	-88(%rbp), %rax	# mx, tmp558
	movq	(%rax), %rax	# mx_9(D)->xmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp559
	movslq	%edx, %rdx	# tmp559, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_65, D.8714
	leaq	16(%rax), %rdx	#, D.8714
	movq	-72(%rbp), %rax	# forward, tmp560
	movq	(%rax), %rax	# forward_16(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp561
	movslq	%ecx, %rcx	# tmp561, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_72, D.8714
	addq	$16, %rax	#, D.8714
	movl	(%rax), %ecx	# *_74, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp562
	movl	340(%rax), %eax	# hmm_25(D)->xsc, D.8717
	leal	(%rcx,%rax), %esi	#, D.8717
	movq	-80(%rbp), %rax	# backward, tmp563
	movq	(%rax), %rax	# backward_3(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp564
	movslq	%ecx, %rcx	# tmp564, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_81, D.8714
	addq	$16, %rax	#, D.8714
	movl	(%rax), %eax	# *_83, D.8717
	addl	%esi, %eax	# D.8717, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_67
	.loc 1 270 0
	movq	-88(%rbp), %rax	# mx, tmp565
	movq	(%rax), %rax	# mx_9(D)->xmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp566
	movslq	%edx, %rdx	# tmp566, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_90, D.8714
	movq	-88(%rbp), %rax	# mx, tmp567
	movq	(%rax), %rax	# mx_9(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp568
	movslq	%ecx, %rcx	# tmp568, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_95, D.8714
	addq	$4, %rax	#, D.8714
	movl	$-987654321, (%rax)	#, *_97
	movl	(%rax), %eax	# *_97, D.8717
	movl	%eax, (%rdx)	# D.8717, *_91
	.loc 1 272 0
	movl	$1, -40(%rbp)	#, k
	jmp	.L18	#
.L19:
	.loc 1 273 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp569
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp570
	movslq	%edx, %rdx	# tmp570, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_104, D.8714
	movl	-40(%rbp), %edx	# k, tmp571
	movslq	%edx, %rdx	# tmp571, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rax, %rdx	# D.8714, D.8714
	movq	-80(%rbp), %rax	# backward, tmp572
	movq	8(%rax), %rax	# backward_3(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp573
	movslq	%ecx, %rcx	# tmp573, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_112, D.8714
	movl	-40(%rbp), %ecx	# k, tmp574
	movslq	%ecx, %rcx	# tmp574, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_116, D.8717
	movl	%eax, (%rdx)	# D.8717, *_108
	.loc 1 274 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp575
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp576
	movslq	%edx, %rdx	# tmp576, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_121, D.8714
	movl	-40(%rbp), %edx	# k, tmp577
	movslq	%edx, %rdx	# tmp577, D.8715
	salq	$2, %rdx	#, D.8715
	leaq	(%rax,%rdx), %r12	#, D.8714
	movq	-88(%rbp), %rax	# mx, tmp578
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp579
	movslq	%edx, %rdx	# tmp579, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_129, D.8714
	movl	-40(%rbp), %edx	# k, tmp580
	movslq	%edx, %rdx	# tmp580, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8714
	movl	(%rax), %r13d	# *_133, D.8717
	.loc 1 277 0 discriminator 2
	movq	-72(%rbp), %rax	# forward, tmp581
	movq	24(%rax), %rax	# forward_16(D)->dmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp582
	movslq	%edx, %rdx	# tmp582, D.8715
	salq	$3, %rdx	#, D.8715
	subq	$8, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_139, D.8714
	movl	-40(%rbp), %edx	# k, tmp583
	movslq	%edx, %rdx	# tmp583, D.8715
	salq	$2, %rdx	#, D.8715
	subq	$4, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8714
	movl	(%rax), %edx	# *_144, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp584
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$40, %rax	#, D.8713
	movq	(%rax), %rax	# *_147, D.8714
	movl	-40(%rbp), %ecx	# k, tmp585
	movslq	%ecx, %rcx	# tmp585, D.8715
	salq	$2, %rcx	#, D.8715
	subq	$4, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8714
	movl	(%rax), %eax	# *_152, D.8717
	.loc 1 274 0 discriminator 2
	addl	%eax, %edx	# D.8717, D.8717
	.loc 1 276 0 discriminator 2
	movq	-72(%rbp), %rax	# forward, tmp586
	movq	(%rax), %rax	# forward_16(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp587
	movslq	%ecx, %rcx	# tmp587, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_159, D.8714
	movl	(%rax), %ecx	# *_160, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp588
	movq	368(%rax), %rax	# hmm_25(D)->bsc, D.8714
	movl	-40(%rbp), %esi	# k, tmp589
	movslq	%esi, %rsi	# tmp589, D.8715
	salq	$2, %rsi	#, D.8715
	addq	%rsi, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_165, D.8717
	.loc 1 274 0 discriminator 2
	addl	%ecx, %eax	# D.8717, D.8717
	movl	%edx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	movl	%eax, %ebx	#, D.8717
	.loc 1 275 0 discriminator 2
	movq	-72(%rbp), %rax	# forward, tmp590
	movq	16(%rax), %rax	# forward_16(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp591
	movslq	%edx, %rdx	# tmp591, D.8715
	salq	$3, %rdx	#, D.8715
	subq	$8, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_173, D.8714
	movl	-40(%rbp), %edx	# k, tmp592
	movslq	%edx, %rdx	# tmp592, D.8715
	salq	$2, %rdx	#, D.8715
	subq	$4, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8714
	movl	(%rax), %edx	# *_178, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp593
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$24, %rax	#, D.8713
	movq	(%rax), %rax	# *_181, D.8714
	movl	-40(%rbp), %ecx	# k, tmp594
	movslq	%ecx, %rcx	# tmp594, D.8715
	salq	$2, %rcx	#, D.8715
	subq	$4, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8714
	movl	(%rax), %eax	# *_186, D.8717
	.loc 1 274 0 discriminator 2
	addl	%eax, %edx	# D.8717, D.8717
	movq	-72(%rbp), %rax	# forward, tmp595
	movq	8(%rax), %rax	# forward_16(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp596
	movslq	%ecx, %rcx	# tmp596, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_193, D.8714
	movl	-40(%rbp), %ecx	# k, tmp597
	movslq	%ecx, %rcx	# tmp597, D.8715
	salq	$2, %rcx	#, D.8715
	subq	$4, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8714
	movl	(%rax), %ecx	# *_198, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp598
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	movq	(%rax), %rax	# *_200, D.8714
	movl	-40(%rbp), %esi	# k, tmp599
	movslq	%esi, %rsi	# tmp599, D.8715
	salq	$2, %rsi	#, D.8715
	subq	$4, %rsi	#, D.8716
	addq	%rsi, %rax	# D.8716, D.8714
	movl	(%rax), %eax	# *_205, D.8717
	addl	%ecx, %eax	# D.8717, D.8717
	movl	%edx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	movl	%ebx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	addl	%r13d, %eax	# D.8717, D.8717
	movl	%eax, (%r12)	# D.8717, *_125
	.loc 1 278 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp600
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp601
	movslq	%edx, %rdx	# tmp601, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_214, D.8714
	movl	-40(%rbp), %edx	# k, tmp602
	movslq	%edx, %rdx	# tmp602, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rax, %rdx	# D.8714, D.8714
	movq	-88(%rbp), %rax	# mx, tmp603
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp604
	movslq	%ecx, %rcx	# tmp604, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_222, D.8714
	movl	-40(%rbp), %ecx	# k, tmp605
	movslq	%ecx, %rcx	# tmp605, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_226, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_218
	.loc 1 280 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp606
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp607
	movslq	%edx, %rdx	# tmp607, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_232, D.8714
	movl	-40(%rbp), %edx	# k, tmp608
	movslq	%edx, %rdx	# tmp608, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rax, %rdx	# D.8714, D.8714
	movq	-80(%rbp), %rax	# backward, tmp609
	movq	16(%rax), %rax	# backward_3(D)->imx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp610
	movslq	%ecx, %rcx	# tmp610, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_240, D.8714
	movl	-40(%rbp), %ecx	# k, tmp611
	movslq	%ecx, %rcx	# tmp611, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_244, D.8717
	movl	%eax, (%rdx)	# D.8717, *_236
	.loc 1 281 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp612
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp613
	movslq	%edx, %rdx	# tmp613, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_249, D.8714
	movl	-40(%rbp), %edx	# k, tmp614
	movslq	%edx, %rdx	# tmp614, D.8715
	salq	$2, %rdx	#, D.8715
	leaq	(%rax,%rdx), %rbx	#, D.8714
	movq	-88(%rbp), %rax	# mx, tmp615
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp616
	movslq	%edx, %rdx	# tmp616, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_257, D.8714
	movl	-40(%rbp), %edx	# k, tmp617
	movslq	%edx, %rdx	# tmp617, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8714
	movl	(%rax), %r12d	# *_261, D.8717
	.loc 1 282 0 discriminator 2
	movq	-72(%rbp), %rax	# forward, tmp618
	movq	16(%rax), %rax	# forward_16(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp619
	movslq	%edx, %rdx	# tmp619, D.8715
	salq	$3, %rdx	#, D.8715
	subq	$8, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_267, D.8714
	movl	-40(%rbp), %edx	# k, tmp620
	movslq	%edx, %rdx	# tmp620, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8714
	movl	(%rax), %edx	# *_271, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp621
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$32, %rax	#, D.8713
	movq	(%rax), %rax	# *_274, D.8714
	movl	-40(%rbp), %ecx	# k, tmp622
	movslq	%ecx, %rcx	# tmp622, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_278, D.8717
	.loc 1 281 0 discriminator 2
	addl	%eax, %edx	# D.8717, D.8717
	movq	-72(%rbp), %rax	# forward, tmp623
	movq	8(%rax), %rax	# forward_16(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp624
	movslq	%ecx, %rcx	# tmp624, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_285, D.8714
	movl	-40(%rbp), %ecx	# k, tmp625
	movslq	%ecx, %rcx	# tmp625, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %ecx	# *_289, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp626
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$8, %rax	#, D.8713
	movq	(%rax), %rax	# *_292, D.8714
	movl	-40(%rbp), %esi	# k, tmp627
	movslq	%esi, %rsi	# tmp627, D.8715
	salq	$2, %rsi	#, D.8715
	addq	%rsi, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_296, D.8717
	addl	%ecx, %eax	# D.8717, D.8717
	movl	%edx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	addl	%r12d, %eax	# D.8717, D.8717
	movl	%eax, (%rbx)	# D.8717, *_253
	.loc 1 283 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp628
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp629
	movslq	%edx, %rdx	# tmp629, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_304, D.8714
	movl	-40(%rbp), %edx	# k, tmp630
	movslq	%edx, %rdx	# tmp630, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rax, %rdx	# D.8714, D.8714
	movq	-88(%rbp), %rax	# mx, tmp631
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp632
	movslq	%ecx, %rcx	# tmp632, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_312, D.8714
	movl	-40(%rbp), %ecx	# k, tmp633
	movslq	%ecx, %rcx	# tmp633, D.8715
	salq	$2, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8714
	movl	(%rax), %eax	# *_316, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_308
	.loc 1 285 0 discriminator 2
	movq	-88(%rbp), %rax	# mx, tmp634
	movq	24(%rax), %rax	# mx_9(D)->dmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp635
	movslq	%edx, %rdx	# tmp635, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_322, D.8714
	movl	-40(%rbp), %edx	# k, tmp636
	movslq	%edx, %rdx	# tmp636, D.8715
	salq	$2, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8714
	movl	$-987654321, (%rax)	#, *_326
	.loc 1 272 0 discriminator 2
	addl	$1, -40(%rbp)	#, k
.L18:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# hmm, tmp637
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cmpl	-40(%rbp), %eax	# k, D.8717
	jg	.L19	#,
	.loc 1 287 0 is_stmt 1
	movq	-88(%rbp), %rax	# mx, tmp638
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp639
	movslq	%edx, %rdx	# tmp639, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_331, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp640
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rax, %rdx	# D.8715, D.8714
	movq	-80(%rbp), %rax	# backward, tmp641
	movq	8(%rax), %rax	# backward_3(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp642
	movslq	%ecx, %rcx	# tmp642, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rcx	# *_340, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp643
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rcx, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_345, D.8717
	movl	%eax, (%rdx)	# D.8717, *_336
	.loc 1 288 0
	movq	-88(%rbp), %rax	# mx, tmp644
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp645
	movslq	%edx, %rdx	# tmp645, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_350, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp646
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	leaq	(%rdx,%rax), %r12	#, D.8714
	movq	-88(%rbp), %rax	# mx, tmp647
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp648
	movslq	%edx, %rdx	# tmp648, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_359, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp649
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rdx, %rax	# D.8714, D.8714
	movl	(%rax), %r13d	# *_364, D.8717
	.loc 1 291 0
	movq	-72(%rbp), %rax	# forward, tmp650
	movq	24(%rax), %rax	# forward_16(D)->dmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp651
	movslq	%edx, %rdx	# tmp651, D.8715
	salq	$3, %rdx	#, D.8715
	subq	$8, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8713
	movq	(%rax), %rdx	# *_370, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp652
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rdx, %rax	# D.8714, D.8714
	movl	(%rax), %edx	# *_376, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp653
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$40, %rax	#, D.8713
	movq	(%rax), %rcx	# *_379, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp654
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rcx, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_385, D.8717
	.loc 1 288 0
	addl	%eax, %edx	# D.8717, D.8717
	.loc 1 290 0
	movq	-72(%rbp), %rax	# forward, tmp655
	movq	(%rax), %rax	# forward_16(D)->xmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp656
	movslq	%ecx, %rcx	# tmp656, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rax	# *_392, D.8714
	movl	(%rax), %ecx	# *_393, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp657
	movq	368(%rax), %rsi	# hmm_25(D)->bsc, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp658
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rsi, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_399, D.8717
	.loc 1 288 0
	addl	%ecx, %eax	# D.8717, D.8717
	movl	%edx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	movl	%eax, %ebx	#, D.8717
	.loc 1 289 0
	movq	-72(%rbp), %rax	# forward, tmp659
	movq	16(%rax), %rax	# forward_16(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp660
	movslq	%edx, %rdx	# tmp660, D.8715
	salq	$3, %rdx	#, D.8715
	subq	$8, %rdx	#, D.8716
	addq	%rdx, %rax	# D.8716, D.8713
	movq	(%rax), %rdx	# *_407, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp661
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rdx, %rax	# D.8714, D.8714
	movl	(%rax), %edx	# *_413, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp662
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	addq	$24, %rax	#, D.8713
	movq	(%rax), %rcx	# *_416, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp663
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rcx, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_422, D.8717
	.loc 1 288 0
	addl	%eax, %edx	# D.8717, D.8717
	movq	-72(%rbp), %rax	# forward, tmp664
	movq	8(%rax), %rax	# forward_16(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp665
	movslq	%ecx, %rcx	# tmp665, D.8715
	salq	$3, %rcx	#, D.8715
	subq	$8, %rcx	#, D.8716
	addq	%rcx, %rax	# D.8716, D.8713
	movq	(%rax), %rcx	# *_429, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp666
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rcx, %rax	# D.8714, D.8714
	movl	(%rax), %ecx	# *_435, D.8717
	movq	-64(%rbp), %rax	# hmm, tmp667
	movq	312(%rax), %rax	# hmm_25(D)->tsc, D.8713
	movq	(%rax), %rsi	# *_437, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp668
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	subq	$4, %rax	#, D.8716
	addq	%rsi, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_443, D.8717
	addl	%ecx, %eax	# D.8717, D.8717
	movl	%edx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	movl	%ebx, %esi	# D.8717,
	movl	%eax, %edi	# D.8717,
	call	ILogsum	#
	addl	%r13d, %eax	# D.8717, D.8717
	movl	%eax, (%r12)	# D.8717, *_355
	.loc 1 292 0
	movq	-88(%rbp), %rax	# mx, tmp669
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp670
	movslq	%edx, %rdx	# tmp670, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_452, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp671
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rax, %rdx	# D.8715, D.8714
	movq	-88(%rbp), %rax	# mx, tmp672
	movq	8(%rax), %rax	# mx_9(D)->mmx, D.8713
	movl	-44(%rbp), %ecx	# i, tmp673
	movslq	%ecx, %rcx	# tmp673, D.8715
	salq	$3, %rcx	#, D.8715
	addq	%rcx, %rax	# D.8715, D.8713
	movq	(%rax), %rcx	# *_461, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp674
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rcx, %rax	# D.8714, D.8714
	movl	(%rax), %eax	# *_466, D.8717
	subl	-36(%rbp), %eax	# sc, D.8717
	movl	%eax, (%rdx)	# D.8717, *_457
	.loc 1 294 0
	movq	-88(%rbp), %rax	# mx, tmp675
	movq	16(%rax), %rax	# mx_9(D)->imx, D.8713
	movl	-44(%rbp), %edx	# i, tmp676
	movslq	%edx, %rdx	# tmp676, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_472, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp677
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	leaq	(%rdx,%rax), %rcx	#, D.8714
	movq	-88(%rbp), %rax	# mx, tmp678
	movq	24(%rax), %rax	# mx_9(D)->dmx, D.8713
	movl	-44(%rbp), %edx	# i, tmp679
	movslq	%edx, %rdx	# tmp679, D.8715
	salq	$3, %rdx	#, D.8715
	addq	%rdx, %rax	# D.8715, D.8713
	movq	(%rax), %rdx	# *_481, D.8714
	movq	-64(%rbp), %rax	# hmm, tmp680
	movl	136(%rax), %eax	# hmm_25(D)->M, D.8717
	cltq
	salq	$2, %rax	#, D.8715
	addq	%rax, %rdx	# D.8715, D.8714
	movq	-88(%rbp), %rax	# mx, tmp681
	movq	24(%rax), %rax	# mx_9(D)->dmx, D.8713
	movl	-44(%rbp), %esi	# i, tmp682
	movslq	%esi, %rsi	# tmp682, D.8715
	salq	$3, %rsi	#, D.8715
	addq	%rsi, %rax	# D.8715, D.8713
	movq	(%rax), %rax	# *_490, D.8714
	movl	$-987654321, (%rax)	#, *_491
	movl	(%rax), %eax	# *_491, D.8717
	movl	%eax, (%rdx)	# D.8717, *_486
	movl	(%rdx), %eax	# *_486, D.8717
	movl	%eax, (%rcx)	# D.8717, *_477
	.loc 1 262 0
	subl	$1, -44(%rbp)	#, i
.L17:
	.loc 1 262 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jg	.L20	#,
	.loc 1 297 0 is_stmt 1
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P7EmitterPosterior, .-P7EmitterPosterior
	.globl	P7FillOptimalAccuracy
	.type	P7FillOptimalAccuracy, @function
P7FillOptimalAccuracy:
.LFB5:
	.loc 1 324 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# L, L
	movl	%esi, -88(%rbp)	# M, M
	movq	%rdx, -96(%rbp)	# posterior, posterior
	movq	%rcx, -104(%rbp)	# mx, mx
	movq	%r8, -112(%rbp)	# ret_tr, ret_tr
	.loc 1 333 0
	movq	-104(%rbp), %rax	# mx, tmp512
	movq	(%rax), %rax	# mx_5(D)->xmx, tmp513
	movq	%rax, -48(%rbp)	# tmp513, xmx
	.loc 1 334 0
	movq	-104(%rbp), %rax	# mx, tmp514
	movq	8(%rax), %rax	# mx_5(D)->mmx, tmp515
	movq	%rax, -40(%rbp)	# tmp515, mmx
	.loc 1 335 0
	movq	-104(%rbp), %rax	# mx, tmp516
	movq	16(%rax), %rax	# mx_5(D)->imx, tmp517
	movq	%rax, -32(%rbp)	# tmp517, imx
	.loc 1 336 0
	movq	-104(%rbp), %rax	# mx, tmp518
	movq	24(%rax), %rax	# mx_5(D)->dmx, tmp519
	movq	%rax, -24(%rbp)	# tmp519, dmx
	.loc 1 343 0
	movq	-48(%rbp), %rax	# xmx, tmp520
	movq	(%rax), %rax	# *xmx_6, D.8718
	leaq	16(%rax), %rdi	#, D.8718
	movq	-48(%rbp), %rax	# xmx, tmp521
	movq	(%rax), %rax	# *xmx_6, D.8718
	movq	-48(%rbp), %rdx	# xmx, tmp522
	movq	(%rdx), %rdx	# *xmx_6, D.8718
	addq	$4, %rdx	#, D.8718
	movq	-48(%rbp), %rcx	# xmx, tmp523
	movq	(%rcx), %rcx	# *xmx_6, D.8718
	addq	$8, %rcx	#, D.8718
	movq	-48(%rbp), %rsi	# xmx, tmp524
	movq	(%rsi), %rsi	# *xmx_6, D.8718
	addq	$12, %rsi	#, D.8718
	movl	$-987654321, (%rsi)	#, *_18
	movl	(%rsi), %esi	# *_18, D.8719
	movl	%esi, (%rcx)	# D.8719, *_16
	movl	(%rcx), %ecx	# *_16, D.8719
	movl	%ecx, (%rdx)	# D.8719, *_14
	movl	(%rdx), %edx	# *_14, D.8719
	movl	%edx, (%rax)	# D.8719, *_12
	movl	(%rax), %eax	# *_12, D.8719
	movl	%eax, (%rdi)	# D.8719, *_11
	.loc 1 344 0
	movl	$0, -64(%rbp)	#, k
	jmp	.L22	#
.L23:
	.loc 1 345 0 discriminator 2
	movq	-40(%rbp), %rax	# mmx, tmp525
	movq	(%rax), %rax	# *mmx_7, D.8718
	movl	-64(%rbp), %edx	# k, tmp526
	movslq	%edx, %rdx	# tmp526, D.8720
	salq	$2, %rdx	#, D.8720
	leaq	(%rax,%rdx), %rcx	#, D.8718
	movq	-32(%rbp), %rax	# imx, tmp527
	movq	(%rax), %rax	# *imx_8, D.8718
	movl	-64(%rbp), %edx	# k, tmp528
	movslq	%edx, %rdx	# tmp528, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movq	-24(%rbp), %rdx	# dmx, tmp529
	movq	(%rdx), %rdx	# *dmx_9, D.8718
	movl	-64(%rbp), %esi	# k, tmp530
	movslq	%esi, %rsi	# tmp530, D.8720
	salq	$2, %rsi	#, D.8720
	addq	%rsi, %rdx	# D.8720, D.8718
	movl	$-987654321, (%rdx)	#, *_36
	movl	(%rdx), %edx	# *_36, D.8719
	movl	%edx, (%rax)	# D.8719, *_32
	movl	(%rax), %eax	# *_32, D.8719
	movl	%eax, (%rcx)	# D.8719, *_28
	.loc 1 344 0 discriminator 2
	addl	$1, -64(%rbp)	#, k
.L22:
	.loc 1 344 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# k, tmp531
	cmpl	-88(%rbp), %eax	# M, tmp531
	jle	.L23	#,
	.loc 1 351 0 is_stmt 1
	movl	$1, -68(%rbp)	#, i
	jmp	.L24	#
.L45:
	.loc 1 353 0
	movl	-68(%rbp), %eax	# i, tmp532
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp533
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rcx	# *_44, D.8718
	movl	-68(%rbp), %eax	# i, tmp534
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp535
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_48, D.8718
	movl	-68(%rbp), %edx	# i, tmp536
	movslq	%edx, %rdx	# tmp536, D.8720
	leaq	0(,%rdx,8), %rsi	#, D.8720
	movq	-24(%rbp), %rdx	# dmx, tmp537
	addq	%rsi, %rdx	# D.8720, D.8721
	movq	(%rdx), %rdx	# *_52, D.8718
	movl	$-987654321, (%rdx)	#, *_53
	movl	(%rdx), %edx	# *_53, D.8719
	movl	%edx, (%rax)	# D.8719, *_49
	movl	(%rax), %eax	# *_49, D.8719
	movl	%eax, (%rcx)	# D.8719, *_45
	.loc 1 355 0
	movl	$1, -64(%rbp)	#, k
	jmp	.L25	#
.L34:
	.loc 1 358 0
	movl	-68(%rbp), %eax	# i, tmp538
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp539
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_59, D.8718
	movl	-64(%rbp), %edx	# k, tmp540
	movslq	%edx, %rdx	# tmp540, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	$-987654321, (%rax)	#, *_63
	.loc 1 359 0
	movl	-68(%rbp), %eax	# i, tmp541
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-40(%rbp), %rax	# mmx, tmp542
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_67, D.8718
	movl	-64(%rbp), %edx	# k, tmp543
	movslq	%edx, %rdx	# tmp543, D.8720
	salq	$2, %rdx	#, D.8720
	subq	$4, %rdx	#, D.8722
	addq	%rdx, %rax	# D.8722, D.8718
	movl	(%rax), %eax	# *_72, tmp544
	movl	%eax, -60(%rbp)	# tmp544, sc
	movl	-68(%rbp), %eax	# i, tmp545
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp546
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_76, D.8718
	movl	-64(%rbp), %edx	# k, tmp547
	movslq	%edx, %rdx	# tmp547, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_80, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L26	#,
	.loc 1 360 0
	movl	-68(%rbp), %eax	# i, tmp548
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp549
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_84, D.8718
	movl	-64(%rbp), %edx	# k, tmp550
	movslq	%edx, %rdx	# tmp550, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp551
	movl	%eax, (%rdx)	# tmp551, *_88
.L26:
	.loc 1 361 0
	movl	-68(%rbp), %eax	# i, tmp552
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-32(%rbp), %rax	# imx, tmp553
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_92, D.8718
	movl	-64(%rbp), %edx	# k, tmp554
	movslq	%edx, %rdx	# tmp554, D.8720
	salq	$2, %rdx	#, D.8720
	subq	$4, %rdx	#, D.8722
	addq	%rdx, %rax	# D.8722, D.8718
	movl	(%rax), %eax	# *_97, tmp555
	movl	%eax, -60(%rbp)	# tmp555, sc
	movl	-68(%rbp), %eax	# i, tmp556
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp557
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_101, D.8718
	movl	-64(%rbp), %edx	# k, tmp558
	movslq	%edx, %rdx	# tmp558, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_105, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L27	#,
	.loc 1 362 0
	movl	-68(%rbp), %eax	# i, tmp559
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp560
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_109, D.8718
	movl	-64(%rbp), %edx	# k, tmp561
	movslq	%edx, %rdx	# tmp561, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp562
	movl	%eax, (%rdx)	# tmp562, *_113
.L27:
	.loc 1 363 0
	movl	-68(%rbp), %eax	# i, tmp563
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-24(%rbp), %rax	# dmx, tmp564
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_117, D.8718
	movl	-64(%rbp), %edx	# k, tmp565
	movslq	%edx, %rdx	# tmp565, D.8720
	salq	$2, %rdx	#, D.8720
	subq	$4, %rdx	#, D.8722
	addq	%rdx, %rax	# D.8722, D.8718
	movl	(%rax), %eax	# *_122, tmp566
	movl	%eax, -60(%rbp)	# tmp566, sc
	movl	-68(%rbp), %eax	# i, tmp567
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp568
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_126, D.8718
	movl	-64(%rbp), %edx	# k, tmp569
	movslq	%edx, %rdx	# tmp569, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_130, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L28	#,
	.loc 1 364 0
	movl	-68(%rbp), %eax	# i, tmp570
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp571
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_134, D.8718
	movl	-64(%rbp), %edx	# k, tmp572
	movslq	%edx, %rdx	# tmp572, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp573
	movl	%eax, (%rdx)	# tmp573, *_138
.L28:
	.loc 1 365 0
	movl	-68(%rbp), %eax	# i, tmp574
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-48(%rbp), %rax	# xmx, tmp575
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_142, D.8718
	movl	(%rax), %eax	# *_143, tmp576
	movl	%eax, -60(%rbp)	# tmp576, sc
	movl	-68(%rbp), %eax	# i, tmp577
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp578
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_147, D.8718
	movl	-64(%rbp), %edx	# k, tmp579
	movslq	%edx, %rdx	# tmp579, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_151, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L29	#,
	.loc 1 366 0
	movl	-68(%rbp), %eax	# i, tmp580
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp581
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_155, D.8718
	movl	-64(%rbp), %edx	# k, tmp582
	movslq	%edx, %rdx	# tmp582, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp583
	movl	%eax, (%rdx)	# tmp583, *_159
.L29:
	.loc 1 367 0
	movl	-68(%rbp), %eax	# i, tmp584
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp585
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_162, D.8718
	movl	-64(%rbp), %edx	# k, tmp586
	movslq	%edx, %rdx	# tmp586, D.8720
	salq	$2, %rdx	#, D.8720
	leaq	(%rax,%rdx), %rbx	#, D.8718
	movq	-96(%rbp), %rax	# posterior, tmp587
	movq	8(%rax), %rax	# posterior_167(D)->mmx, D.8721
	movl	-68(%rbp), %edx	# i, tmp588
	movslq	%edx, %rdx	# tmp588, D.8720
	salq	$3, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_171, D.8718
	movl	-64(%rbp), %edx	# k, tmp589
	movslq	%edx, %rdx	# tmp589, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %edx	# *_175, D.8719
	movl	-68(%rbp), %eax	# i, tmp590
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp591
	addq	%rcx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_179, D.8718
	movl	-64(%rbp), %ecx	# k, tmp592
	movslq	%ecx, %rcx	# tmp592, D.8720
	salq	$2, %rcx	#, D.8720
	addq	%rcx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_183, D.8719
	movl	%edx, %esi	# D.8719,
	movl	%eax, %edi	# D.8719,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8719, *_166
	.loc 1 370 0
	movl	-68(%rbp), %eax	# i, tmp593
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp594
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_188, D.8718
	movl	-64(%rbp), %edx	# k, tmp595
	movslq	%edx, %rdx	# tmp595, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	$-987654321, (%rax)	#, *_192
	.loc 1 371 0
	movl	-68(%rbp), %eax	# i, tmp596
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp597
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_195, D.8718
	movl	-64(%rbp), %edx	# k, tmp598
	movslq	%edx, %rdx	# tmp598, D.8720
	salq	$2, %rdx	#, D.8720
	subq	$4, %rdx	#, D.8722
	addq	%rdx, %rax	# D.8722, D.8718
	movl	(%rax), %eax	# *_200, tmp599
	movl	%eax, -60(%rbp)	# tmp599, sc
	movl	-68(%rbp), %eax	# i, tmp600
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp601
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_204, D.8718
	movl	-64(%rbp), %edx	# k, tmp602
	movslq	%edx, %rdx	# tmp602, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_208, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L30	#,
	.loc 1 372 0
	movl	-68(%rbp), %eax	# i, tmp603
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp604
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_212, D.8718
	movl	-64(%rbp), %edx	# k, tmp605
	movslq	%edx, %rdx	# tmp605, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp606
	movl	%eax, (%rdx)	# tmp606, *_216
.L30:
	.loc 1 373 0
	movl	-68(%rbp), %eax	# i, tmp607
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp608
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_219, D.8718
	movl	-64(%rbp), %edx	# k, tmp609
	movslq	%edx, %rdx	# tmp609, D.8720
	salq	$2, %rdx	#, D.8720
	subq	$4, %rdx	#, D.8722
	addq	%rdx, %rax	# D.8722, D.8718
	movl	(%rax), %eax	# *_224, tmp610
	movl	%eax, -60(%rbp)	# tmp610, sc
	movl	-68(%rbp), %eax	# i, tmp611
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp612
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_228, D.8718
	movl	-64(%rbp), %edx	# k, tmp613
	movslq	%edx, %rdx	# tmp613, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_232, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L31	#,
	.loc 1 374 0
	movl	-68(%rbp), %eax	# i, tmp614
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-24(%rbp), %rax	# dmx, tmp615
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_236, D.8718
	movl	-64(%rbp), %edx	# k, tmp616
	movslq	%edx, %rdx	# tmp616, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp617
	movl	%eax, (%rdx)	# tmp617, *_240
.L31:
	.loc 1 377 0
	movl	-68(%rbp), %eax	# i, tmp618
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp619
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_243, D.8718
	movl	-64(%rbp), %edx	# k, tmp620
	movslq	%edx, %rdx	# tmp620, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	$-987654321, (%rax)	#, *_247
	.loc 1 378 0
	movl	-68(%rbp), %eax	# i, tmp621
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-40(%rbp), %rax	# mmx, tmp622
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_251, D.8718
	movl	-64(%rbp), %edx	# k, tmp623
	movslq	%edx, %rdx	# tmp623, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_255, tmp624
	movl	%eax, -60(%rbp)	# tmp624, sc
	movl	-68(%rbp), %eax	# i, tmp625
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp626
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_259, D.8718
	movl	-64(%rbp), %edx	# k, tmp627
	movslq	%edx, %rdx	# tmp627, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_263, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L32	#,
	.loc 1 379 0
	movl	-68(%rbp), %eax	# i, tmp628
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp629
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_267, D.8718
	movl	-64(%rbp), %edx	# k, tmp630
	movslq	%edx, %rdx	# tmp630, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp631
	movl	%eax, (%rdx)	# tmp631, *_271
.L32:
	.loc 1 380 0
	movl	-68(%rbp), %eax	# i, tmp632
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rdx	#, D.8722
	movq	-32(%rbp), %rax	# imx, tmp633
	addq	%rdx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_275, D.8718
	movl	-64(%rbp), %edx	# k, tmp634
	movslq	%edx, %rdx	# tmp634, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_279, tmp635
	movl	%eax, -60(%rbp)	# tmp635, sc
	movl	-68(%rbp), %eax	# i, tmp636
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp637
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_283, D.8718
	movl	-64(%rbp), %edx	# k, tmp638
	movslq	%edx, %rdx	# tmp638, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_287, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L33	#,
	.loc 1 381 0
	movl	-68(%rbp), %eax	# i, tmp639
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp640
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_291, D.8718
	movl	-64(%rbp), %edx	# k, tmp641
	movslq	%edx, %rdx	# tmp641, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rax, %rdx	# D.8718, D.8718
	movl	-60(%rbp), %eax	# sc, tmp642
	movl	%eax, (%rdx)	# tmp642, *_295
.L33:
	.loc 1 382 0
	movl	-68(%rbp), %eax	# i, tmp643
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp644
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_298, D.8718
	movl	-64(%rbp), %edx	# k, tmp645
	movslq	%edx, %rdx	# tmp645, D.8720
	salq	$2, %rdx	#, D.8720
	leaq	(%rax,%rdx), %rbx	#, D.8718
	movq	-96(%rbp), %rax	# posterior, tmp646
	movq	16(%rax), %rax	# posterior_167(D)->imx, D.8721
	movl	-68(%rbp), %edx	# i, tmp647
	movslq	%edx, %rdx	# tmp647, D.8720
	salq	$3, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_306, D.8718
	movl	-64(%rbp), %edx	# k, tmp648
	movslq	%edx, %rdx	# tmp648, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %edx	# *_310, D.8719
	movl	-68(%rbp), %eax	# i, tmp649
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8720
	movq	-32(%rbp), %rax	# imx, tmp650
	addq	%rcx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_314, D.8718
	movl	-64(%rbp), %ecx	# k, tmp651
	movslq	%ecx, %rcx	# tmp651, D.8720
	salq	$2, %rcx	#, D.8720
	addq	%rcx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_318, D.8719
	movl	%edx, %esi	# D.8719,
	movl	%eax, %edi	# D.8719,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.8719, *_302
	.loc 1 355 0
	addl	$1, -64(%rbp)	#, k
.L25:
	.loc 1 355 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# k, tmp652
	cmpl	-88(%rbp), %eax	# M, tmp652
	jle	.L34	#,
	.loc 1 390 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp653
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp654
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_324, D.8718
	addq	$16, %rax	#, D.8718
	movl	$-987654321, (%rax)	#, *_326
	.loc 1 391 0
	movq	-96(%rbp), %rax	# posterior, tmp655
	movq	(%rax), %rax	# posterior_167(D)->xmx, D.8721
	movl	-68(%rbp), %edx	# i, tmp656
	movslq	%edx, %rdx	# tmp656, D.8720
	salq	$3, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_330, D.8718
	addq	$16, %rax	#, D.8718
	movl	(%rax), %edx	# *_332, D.8719
	movl	-68(%rbp), %eax	# i, tmp657
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rcx	#, D.8722
	movq	-48(%rbp), %rax	# xmx, tmp658
	addq	%rcx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_337, D.8718
	addq	$16, %rax	#, D.8718
	movl	(%rax), %eax	# *_339, D.8719
	movl	%edx, %esi	# D.8719,
	movl	%eax, %edi	# D.8719,
	call	ILogsum	#
	movl	%eax, -60(%rbp)	# tmp659, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L35	#,
	.loc 1 392 0
	movl	-68(%rbp), %eax	# i, tmp660
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp661
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_344, D.8718
	leaq	16(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp662
	movl	%eax, (%rdx)	# tmp662, *_346
.L35:
	.loc 1 395 0
	movl	-68(%rbp), %eax	# i, tmp663
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp664
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_349, D.8718
	addq	$4, %rax	#, D.8718
	movl	$-987654321, (%rax)	#, *_351
	.loc 1 396 0
	movl	$1, -64(%rbp)	#, k
	jmp	.L36	#
.L38:
	.loc 1 397 0
	movl	-68(%rbp), %eax	# i, tmp665
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-40(%rbp), %rax	# mmx, tmp666
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_355, D.8718
	movl	-64(%rbp), %edx	# k, tmp667
	movslq	%edx, %rdx	# tmp667, D.8720
	salq	$2, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8718
	movl	(%rax), %eax	# *_359, tmp668
	movl	%eax, -60(%rbp)	# tmp668, sc
	movl	-68(%rbp), %eax	# i, tmp669
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp670
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_363, D.8718
	addq	$4, %rax	#, D.8718
	movl	(%rax), %eax	# *_365, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L37	#,
	.loc 1 398 0
	movl	-68(%rbp), %eax	# i, tmp671
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp672
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_369, D.8718
	leaq	4(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp673
	movl	%eax, (%rdx)	# tmp673, *_371
.L37:
	.loc 1 396 0
	addl	$1, -64(%rbp)	#, k
.L36:
	.loc 1 396 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# k, tmp674
	cmpl	-88(%rbp), %eax	# M, tmp674
	jle	.L38	#,
	.loc 1 401 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp675
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp676
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_375, D.8718
	addq	$12, %rax	#, D.8718
	movl	$-987654321, (%rax)	#, *_377
	.loc 1 402 0
	movq	-96(%rbp), %rax	# posterior, tmp677
	movq	(%rax), %rax	# posterior_167(D)->xmx, D.8721
	movl	-68(%rbp), %edx	# i, tmp678
	movslq	%edx, %rdx	# tmp678, D.8720
	salq	$3, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_381, D.8718
	addq	$12, %rax	#, D.8718
	movl	(%rax), %edx	# *_383, D.8719
	movl	-68(%rbp), %eax	# i, tmp679
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rcx	#, D.8722
	movq	-48(%rbp), %rax	# xmx, tmp680
	addq	%rcx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_388, D.8718
	addq	$12, %rax	#, D.8718
	movl	(%rax), %eax	# *_390, D.8719
	movl	%edx, %esi	# D.8719,
	movl	%eax, %edi	# D.8719,
	call	ILogsum	#
	movl	%eax, -60(%rbp)	# tmp681, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L39	#,
	.loc 1 403 0
	movl	-68(%rbp), %eax	# i, tmp682
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp683
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_395, D.8718
	leaq	12(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp684
	movl	%eax, (%rdx)	# tmp684, *_397
.L39:
	.loc 1 404 0
	movl	-68(%rbp), %eax	# i, tmp685
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp686
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_400, D.8718
	movl	4(%rax), %eax	# MEM[(int *)_401 + 4B], tmp687
	movl	%eax, -60(%rbp)	# tmp687, sc
	movl	-68(%rbp), %eax	# i, tmp688
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp689
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_405, D.8718
	addq	$12, %rax	#, D.8718
	movl	(%rax), %eax	# *_407, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L40	#,
	.loc 1 405 0
	movl	-68(%rbp), %eax	# i, tmp690
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp691
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_411, D.8718
	leaq	12(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp692
	movl	%eax, (%rdx)	# tmp692, *_413
.L40:
	.loc 1 408 0
	movl	-68(%rbp), %eax	# i, tmp693
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp694
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_416, D.8718
	movl	$-987654321, (%rax)	#, *_417
	.loc 1 409 0
	movl	-68(%rbp), %eax	# i, tmp695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp696
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_420, D.8718
	movl	16(%rax), %eax	# MEM[(int *)_421 + 16B], tmp697
	movl	%eax, -60(%rbp)	# tmp697, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L41	#,
	.loc 1 410 0
	movl	-68(%rbp), %eax	# i, tmp698
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp699
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_425, D.8718
	movl	-60(%rbp), %edx	# sc, tmp700
	movl	%edx, (%rax)	# tmp700, *_426
.L41:
	.loc 1 411 0
	movl	-68(%rbp), %eax	# i, tmp701
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp702
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_429, D.8718
	movl	12(%rax), %eax	# MEM[(int *)_430 + 12B], tmp703
	movl	%eax, -60(%rbp)	# tmp703, sc
	movl	-68(%rbp), %eax	# i, tmp704
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp705
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_434, D.8718
	movl	(%rax), %eax	# *_435, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L42	#,
	.loc 1 412 0
	movl	-68(%rbp), %eax	# i, tmp706
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp707
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_439, D.8718
	movl	-60(%rbp), %edx	# sc, tmp708
	movl	%edx, (%rax)	# tmp708, *_440
.L42:
	.loc 1 415 0
	movl	-68(%rbp), %eax	# i, tmp709
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp710
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_443, D.8718
	addq	$8, %rax	#, D.8718
	movl	$-987654321, (%rax)	#, *_445
	.loc 1 416 0
	movq	-96(%rbp), %rax	# posterior, tmp711
	movq	(%rax), %rax	# posterior_167(D)->xmx, D.8721
	movl	-68(%rbp), %edx	# i, tmp712
	movslq	%edx, %rdx	# tmp712, D.8720
	salq	$3, %rdx	#, D.8720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_449, D.8718
	addq	$8, %rax	#, D.8718
	movl	(%rax), %edx	# *_451, D.8719
	movl	-68(%rbp), %eax	# i, tmp713
	cltq
	salq	$3, %rax	#, D.8720
	leaq	-8(%rax), %rcx	#, D.8722
	movq	-48(%rbp), %rax	# xmx, tmp714
	addq	%rcx, %rax	# D.8722, D.8721
	movq	(%rax), %rax	# *_456, D.8718
	addq	$8, %rax	#, D.8718
	movl	(%rax), %eax	# *_458, D.8719
	movl	%edx, %esi	# D.8719,
	movl	%eax, %edi	# D.8719,
	call	ILogsum	#
	movl	%eax, -60(%rbp)	# tmp715, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L43	#,
	.loc 1 417 0
	movl	-68(%rbp), %eax	# i, tmp716
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp717
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_463, D.8718
	leaq	8(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp718
	movl	%eax, (%rdx)	# tmp718, *_465
.L43:
	.loc 1 418 0
	movl	-68(%rbp), %eax	# i, tmp719
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp720
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_468, D.8718
	movl	4(%rax), %eax	# MEM[(int *)_469 + 4B], tmp721
	movl	%eax, -60(%rbp)	# tmp721, sc
	movl	-68(%rbp), %eax	# i, tmp722
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp723
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_473, D.8718
	addq	$8, %rax	#, D.8718
	movl	(%rax), %eax	# *_475, D.8719
	cmpl	%eax, -60(%rbp)	# D.8719, sc
	jle	.L44	#,
	.loc 1 419 0
	movl	-68(%rbp), %eax	# i, tmp724
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp725
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_479, D.8718
	leaq	8(%rax), %rdx	#, D.8718
	movl	-60(%rbp), %eax	# sc, tmp726
	movl	%eax, (%rdx)	# tmp726, *_481
.L44:
	.loc 1 351 0
	addl	$1, -68(%rbp)	#, i
.L24:
	.loc 1 351 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp727
	cmpl	-84(%rbp), %eax	# L, tmp727
	jle	.L45	#,
	.loc 1 423 0 is_stmt 1
	movl	-84(%rbp), %eax	# L, tmp728
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8720
	movq	-48(%rbp), %rax	# xmx, tmp729
	addq	%rdx, %rax	# D.8720, D.8721
	movq	(%rax), %rax	# *_485, D.8718
	movl	8(%rax), %eax	# MEM[(int *)_486 + 8B], tmp730
	movl	%eax, -60(%rbp)	# tmp730, sc
	.loc 1 425 0
	cmpq	$0, -112(%rbp)	#, ret_tr
	je	.L46	#,
	.loc 1 426 0
	leaq	-56(%rbp), %rdi	#, tmp731
	movq	-104(%rbp), %rcx	# mx, tmp732
	movq	-96(%rbp), %rdx	# posterior, tmp733
	movl	-88(%rbp), %esi	# M, tmp734
	movl	-84(%rbp), %eax	# L, tmp735
	movq	%rdi, %r8	# tmp731,
	movl	%eax, %edi	# tmp735,
	call	P7OptimalAccuracyTrace	#
	.loc 1 427 0
	movq	-56(%rbp), %rdx	# tr, tr.56
	movq	-112(%rbp), %rax	# ret_tr, tmp736
	movq	%rdx, (%rax)	# tr.56, *ret_tr_488(D)
.L46:
	.loc 1 430 0
	movl	-60(%rbp), %eax	# sc, tmp737
	movss	.LC0(%rip), %xmm0	#,
	movl	%eax, %edi	# tmp737,
	call	Score2Prob	#
	movss	%xmm0, -116(%rbp)	#, %sfp
	movl	-116(%rbp), %eax	# %sfp, D.8723
	.loc 1 431 0
	movl	%eax, -116(%rbp)	# <retval>, %sfp
	movss	-116(%rbp), %xmm0	# %sfp,
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7FillOptimalAccuracy, .-P7FillOptimalAccuracy
	.section	.rodata
.LC1:
	.string	"traceback failed"
.LC2:
	.string	"Traceback failed."
	.text
	.globl	P7OptimalAccuracyTrace
	.type	P7OptimalAccuracyTrace, @function
P7OptimalAccuracyTrace:
.LFB6:
	.loc 1 454 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)	# L, L
	movl	%esi, -88(%rbp)	# M, M
	movq	%rdx, -96(%rbp)	# posterior, posterior
	movq	%rcx, -104(%rbp)	# mx, mx
	movq	%r8, -112(%rbp)	# ret_tr, ret_tr
	.loc 1 467 0
	movl	-84(%rbp), %eax	# L, tmp659
	addl	$3, %eax	#, D.8724
	addl	%eax, %eax	# tmp660
	movl	%eax, -76(%rbp)	# tmp660, curralloc
	.loc 1 468 0
	leaq	-56(%rbp), %rdx	#, tmp661
	movl	-76(%rbp), %eax	# curralloc, tmp662
	movq	%rdx, %rsi	# tmp661,
	movl	%eax, %edi	# tmp662,
	call	P7AllocTrace	#
	.loc 1 470 0
	movq	-104(%rbp), %rax	# mx, tmp663
	movq	(%rax), %rax	# mx_22(D)->xmx, tmp664
	movq	%rax, -48(%rbp)	# tmp664, xmx
	.loc 1 471 0
	movq	-104(%rbp), %rax	# mx, tmp665
	movq	8(%rax), %rax	# mx_22(D)->mmx, tmp666
	movq	%rax, -40(%rbp)	# tmp666, mmx
	.loc 1 472 0
	movq	-104(%rbp), %rax	# mx, tmp667
	movq	16(%rax), %rax	# mx_22(D)->imx, tmp668
	movq	%rax, -32(%rbp)	# tmp668, imx
	.loc 1 473 0
	movq	-104(%rbp), %rax	# mx, tmp669
	movq	24(%rax), %rax	# mx_22(D)->dmx, tmp670
	movq	%rax, -24(%rbp)	# tmp670, dmx
	.loc 1 478 0
	movq	-56(%rbp), %rax	# tr, tr.57
	movq	8(%rax), %rax	# tr.57_27->statetype, D.8725
	movb	$9, (%rax)	#, *_28
	.loc 1 479 0
	movq	-56(%rbp), %rax	# tr, tr.58
	movq	16(%rax), %rax	# tr.58_29->nodeidx, D.8726
	movl	$0, (%rax)	#, *_30
	.loc 1 480 0
	movq	-56(%rbp), %rax	# tr, tr.59
	movq	24(%rax), %rax	# tr.59_31->pos, D.8726
	movl	$0, (%rax)	#, *_32
	.loc 1 481 0
	movq	-56(%rbp), %rax	# tr, tr.60
	movq	8(%rax), %rax	# tr.60_33->statetype, D.8725
	addq	$1, %rax	#, D.8725
	movb	$8, (%rax)	#, *_35
	.loc 1 482 0
	movq	-56(%rbp), %rax	# tr, tr.61
	movq	16(%rax), %rax	# tr.61_36->nodeidx, D.8726
	addq	$4, %rax	#, D.8726
	movl	$0, (%rax)	#, *_38
	.loc 1 483 0
	movq	-56(%rbp), %rax	# tr, tr.62
	movq	24(%rax), %rax	# tr.62_39->pos, D.8726
	addq	$4, %rax	#, D.8726
	movl	$0, (%rax)	#, *_41
	.loc 1 484 0
	movl	$2, -72(%rbp)	#, tpos
	.loc 1 485 0
	movl	-84(%rbp), %eax	# L, tmp671
	movl	%eax, -68(%rbp)	# tmp671, i
	.loc 1 489 0
	jmp	.L49	#
.L89:
	.loc 1 490 0
	movq	-56(%rbp), %rax	# tr, tr.63
	movq	8(%rax), %rax	# tr.63_51->statetype, D.8725
	movl	-72(%rbp), %edx	# tpos, tmp672
	movslq	%edx, %rdx	# tmp672, D.8727
	subq	$1, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8725
	movzbl	(%rax), %eax	# *_55, D.8728
	movsbl	%al, %eax	# D.8728, D.8724
	cmpl	$10, %eax	#, D.8724
	ja	.L50	#,
	movl	%eax, %eax	# D.8724, tmp673
	movq	.L52(,%rax,8), %rax	#, tmp674
	jmp	*%rax	# tmp674
	.section	.rodata
	.align 8
	.align 4
.L52:
	.quad	.L50
	.quad	.L51
	.quad	.L53
	.quad	.L54
	.quad	.L50
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.quad	.L50
	.quad	.L59
	.text
.L51:
	.loc 1 492 0
	movl	-68(%rbp), %eax	# i, tmp675
	cltq
	addq	$1, %rax	#, D.8727
	leaq	0(,%rax,8), %rdx	#, D.8727
	movq	-40(%rbp), %rax	# mmx, tmp676
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_61, D.8726
	movl	-64(%rbp), %edx	# k, tmp677
	movslq	%edx, %rdx	# tmp677, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %eax	# *_66, tmp678
	movl	%eax, -60(%rbp)	# tmp678, sc
	.loc 1 493 0
	movq	-96(%rbp), %rax	# posterior, tmp679
	movq	8(%rax), %rax	# posterior_68(D)->mmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp680
	movslq	%edx, %rdx	# tmp680, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_73, D.8726
	movl	-64(%rbp), %edx	# k, tmp681
	movslq	%edx, %rdx	# tmp681, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_78, D.8724
	movl	-68(%rbp), %eax	# i, tmp682
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-40(%rbp), %rax	# mmx, tmp683
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_82, D.8726
	movl	-64(%rbp), %ecx	# k, tmp684
	movslq	%ecx, %rcx	# tmp684, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_86, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L60	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L60	#,
	cmpl	$0, -64(%rbp)	#, k
	jle	.L60	#,
	.loc 1 495 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.64
	movq	8(%rax), %rdx	# tr.64_89->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp685
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$1, (%rax)	#, *_92
	.loc 1 496 0
	movq	-56(%rbp), %rax	# tr, tr.65
	movq	16(%rax), %rax	# tr.65_93->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp686
	movslq	%edx, %rdx	# tmp686, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.66
	leal	-1(%rax), %edx	#, tmp687
	movl	%edx, -64(%rbp)	# tmp687, k
	movl	%eax, (%rcx)	# k.66, *_97
	.loc 1 497 0
	movq	-56(%rbp), %rax	# tr, tr.67
	movq	24(%rax), %rax	# tr.67_100->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp688
	movslq	%edx, %rdx	# tmp688, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.68
	leal	-1(%rax), %edx	#, tmp689
	movl	%edx, -68(%rbp)	# tmp689, i
	movl	%eax, (%rcx)	# i.68, *_104
	jmp	.L61	#
.L60:
	.loc 1 499 0
	movq	-96(%rbp), %rax	# posterior, tmp690
	movq	8(%rax), %rax	# posterior_68(D)->mmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp691
	movslq	%edx, %rdx	# tmp691, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_111, D.8726
	movl	-64(%rbp), %edx	# k, tmp692
	movslq	%edx, %rdx	# tmp692, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_116, D.8724
	movl	-68(%rbp), %eax	# i, tmp693
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-32(%rbp), %rax	# imx, tmp694
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_120, D.8726
	movl	-64(%rbp), %ecx	# k, tmp695
	movslq	%ecx, %rcx	# tmp695, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_124, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L62	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L62	#,
	cmpl	$0, -64(%rbp)	#, k
	jle	.L62	#,
	.loc 1 501 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.69
	movq	8(%rax), %rdx	# tr.69_127->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp696
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$3, (%rax)	#, *_130
	.loc 1 502 0
	movq	-56(%rbp), %rax	# tr, tr.70
	movq	16(%rax), %rax	# tr.70_131->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp697
	movslq	%edx, %rdx	# tmp697, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rax, %rdx	# D.8726, D.8726
	movl	-64(%rbp), %eax	# k, tmp698
	movl	%eax, (%rdx)	# tmp698, *_135
	.loc 1 503 0
	movq	-56(%rbp), %rax	# tr, tr.71
	movq	24(%rax), %rax	# tr.71_136->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp699
	movslq	%edx, %rdx	# tmp699, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.72
	leal	-1(%rax), %edx	#, tmp700
	movl	%edx, -68(%rbp)	# tmp700, i
	movl	%eax, (%rcx)	# i.72, *_140
	jmp	.L61	#
.L62:
	.loc 1 505 0
	movq	-96(%rbp), %rax	# posterior, tmp701
	movq	8(%rax), %rax	# posterior_68(D)->mmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp702
	movslq	%edx, %rdx	# tmp702, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_147, D.8726
	movl	-64(%rbp), %edx	# k, tmp703
	movslq	%edx, %rdx	# tmp703, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_152, D.8724
	movl	-68(%rbp), %eax	# i, tmp704
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-24(%rbp), %rax	# dmx, tmp705
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_156, D.8726
	movl	-64(%rbp), %ecx	# k, tmp706
	movslq	%ecx, %rcx	# tmp706, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_160, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L63	#,
	.loc 1 505 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L63	#,
	cmpl	$1, -64(%rbp)	#, k
	jle	.L63	#,
	.loc 1 507 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.73
	movq	8(%rax), %rdx	# tr.73_163->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp707
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$2, (%rax)	#, *_166
	.loc 1 508 0
	movq	-56(%rbp), %rax	# tr, tr.74
	movq	16(%rax), %rax	# tr.74_167->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp708
	movslq	%edx, %rdx	# tmp708, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.75
	leal	-1(%rax), %edx	#, tmp709
	movl	%edx, -64(%rbp)	# tmp709, k
	movl	%eax, (%rcx)	# k.75, *_171
	.loc 1 509 0
	movq	-56(%rbp), %rax	# tr, tr.76
	movq	24(%rax), %rax	# tr.76_174->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp710
	movslq	%edx, %rdx	# tmp710, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_178
	jmp	.L61	#
.L63:
	.loc 1 511 0
	movq	-96(%rbp), %rax	# posterior, tmp711
	movq	8(%rax), %rax	# posterior_68(D)->mmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp712
	movslq	%edx, %rdx	# tmp712, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_183, D.8726
	movl	-64(%rbp), %edx	# k, tmp713
	movslq	%edx, %rdx	# tmp713, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_188, D.8724
	movl	-68(%rbp), %eax	# i, tmp714
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp715
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_192, D.8726
	movl	(%rax), %eax	# *_193, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L64	#,
	.loc 1 513 0
	movq	-56(%rbp), %rax	# tr, tr.77
	movq	8(%rax), %rdx	# tr.77_196->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp716
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$6, (%rax)	#, *_199
	.loc 1 514 0
	movq	-56(%rbp), %rax	# tr, tr.78
	movq	16(%rax), %rax	# tr.78_200->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp717
	movslq	%edx, %rdx	# tmp717, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_204
	.loc 1 515 0
	movq	-56(%rbp), %rax	# tr, tr.79
	movq	24(%rax), %rax	# tr.79_205->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp718
	movslq	%edx, %rdx	# tmp718, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_209
	jmp	.L61	#
.L64:
	.loc 1 517 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 518 0
	jmp	.L65	#
.L61:
	jmp	.L65	#
.L53:
	.loc 1 521 0
	movl	-68(%rbp), %eax	# i, tmp719
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-24(%rbp), %rax	# dmx, tmp720
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_212, D.8726
	movl	-64(%rbp), %edx	# k, tmp721
	movslq	%edx, %rdx	# tmp721, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_217, D.8724
	movl	-68(%rbp), %eax	# i, tmp722
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-40(%rbp), %rax	# mmx, tmp723
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_221, D.8726
	movl	-64(%rbp), %ecx	# k, tmp724
	movslq	%ecx, %rcx	# tmp724, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_225, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L66	#,
	.loc 1 521 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L66	#,
	cmpl	$0, -64(%rbp)	#, k
	jle	.L66	#,
	.loc 1 523 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.80
	movq	8(%rax), %rdx	# tr.80_227->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp725
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$1, (%rax)	#, *_230
	.loc 1 524 0
	movq	-56(%rbp), %rax	# tr, tr.81
	movq	16(%rax), %rax	# tr.81_231->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp726
	movslq	%edx, %rdx	# tmp726, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.82
	leal	-1(%rax), %edx	#, tmp727
	movl	%edx, -64(%rbp)	# tmp727, k
	movl	%eax, (%rcx)	# k.82, *_235
	.loc 1 525 0
	movq	-56(%rbp), %rax	# tr, tr.83
	movq	24(%rax), %rax	# tr.83_238->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp728
	movslq	%edx, %rdx	# tmp728, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.84
	leal	-1(%rax), %edx	#, tmp729
	movl	%edx, -68(%rbp)	# tmp729, i
	movl	%eax, (%rcx)	# i.84, *_242
	jmp	.L67	#
.L66:
	.loc 1 527 0
	movl	-68(%rbp), %eax	# i, tmp730
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-24(%rbp), %rax	# dmx, tmp731
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_247, D.8726
	movl	-64(%rbp), %edx	# k, tmp732
	movslq	%edx, %rdx	# tmp732, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$2, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8726
	movl	(%rax), %edx	# *_252, D.8724
	movl	-68(%rbp), %eax	# i, tmp733
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-24(%rbp), %rax	# dmx, tmp734
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_256, D.8726
	movl	-64(%rbp), %ecx	# k, tmp735
	movslq	%ecx, %rcx	# tmp735, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_260, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L68	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	cmpl	$1, -64(%rbp)	#, k
	jle	.L68	#,
	.loc 1 529 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.85
	movq	8(%rax), %rdx	# tr.85_262->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp736
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$2, (%rax)	#, *_265
	.loc 1 530 0
	movq	-56(%rbp), %rax	# tr, tr.86
	movq	16(%rax), %rax	# tr.86_266->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp737
	movslq	%edx, %rdx	# tmp737, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.87
	leal	-1(%rax), %edx	#, tmp738
	movl	%edx, -64(%rbp)	# tmp738, k
	movl	%eax, (%rcx)	# k.87, *_270
	.loc 1 531 0
	movq	-56(%rbp), %rax	# tr, tr.88
	movq	24(%rax), %rax	# tr.88_273->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp739
	movslq	%edx, %rdx	# tmp739, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_277
	jmp	.L67	#
.L68:
	.loc 1 533 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 534 0
	jmp	.L65	#
.L67:
	jmp	.L65	#
.L54:
	.loc 1 537 0
	movl	-68(%rbp), %eax	# i, tmp740
	cltq
	addq	$1, %rax	#, D.8727
	leaq	0(,%rax,8), %rdx	#, D.8727
	movq	-32(%rbp), %rax	# imx, tmp741
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_281, D.8726
	movl	-64(%rbp), %edx	# k, tmp742
	movslq	%edx, %rdx	# tmp742, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_285, tmp743
	movl	%eax, -60(%rbp)	# tmp743, sc
	.loc 1 538 0
	movq	-96(%rbp), %rax	# posterior, tmp744
	movq	16(%rax), %rax	# posterior_68(D)->imx, D.8729
	movl	-68(%rbp), %edx	# i, tmp745
	movslq	%edx, %rdx	# tmp745, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_291, D.8726
	movl	-64(%rbp), %edx	# k, tmp746
	movslq	%edx, %rdx	# tmp746, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	(%rax), %edx	# *_295, D.8724
	movl	-68(%rbp), %eax	# i, tmp747
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-40(%rbp), %rax	# mmx, tmp748
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_299, D.8726
	movl	-64(%rbp), %ecx	# k, tmp749
	movslq	%ecx, %rcx	# tmp749, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_303, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L69	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L69	#,
	cmpl	$0, -64(%rbp)	#, k
	jle	.L69	#,
	.loc 1 540 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.89
	movq	8(%rax), %rdx	# tr.89_306->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp750
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$1, (%rax)	#, *_309
	.loc 1 541 0
	movq	-56(%rbp), %rax	# tr, tr.90
	movq	16(%rax), %rax	# tr.90_310->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp751
	movslq	%edx, %rdx	# tmp751, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.91
	leal	-1(%rax), %edx	#, tmp752
	movl	%edx, -64(%rbp)	# tmp752, k
	movl	%eax, (%rcx)	# k.91, *_314
	.loc 1 542 0
	movq	-56(%rbp), %rax	# tr, tr.92
	movq	24(%rax), %rax	# tr.92_317->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp753
	movslq	%edx, %rdx	# tmp753, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.93
	leal	-1(%rax), %edx	#, tmp754
	movl	%edx, -68(%rbp)	# tmp754, i
	movl	%eax, (%rcx)	# i.93, *_321
	jmp	.L70	#
.L69:
	.loc 1 544 0
	movq	-96(%rbp), %rax	# posterior, tmp755
	movq	16(%rax), %rax	# posterior_68(D)->imx, D.8729
	movl	-68(%rbp), %edx	# i, tmp756
	movslq	%edx, %rdx	# tmp756, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_328, D.8726
	movl	-64(%rbp), %edx	# k, tmp757
	movslq	%edx, %rdx	# tmp757, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	(%rax), %edx	# *_332, D.8724
	movl	-68(%rbp), %eax	# i, tmp758
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-32(%rbp), %rax	# imx, tmp759
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_336, D.8726
	movl	-64(%rbp), %ecx	# k, tmp760
	movslq	%ecx, %rcx	# tmp760, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_340, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	-60(%rbp), %eax	# sc, D.8724
	jne	.L71	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L71	#,
	cmpl	$0, -64(%rbp)	#, k
	jle	.L71	#,
	.loc 1 546 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.94
	movq	8(%rax), %rdx	# tr.94_343->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp761
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$3, (%rax)	#, *_346
	.loc 1 547 0
	movq	-56(%rbp), %rax	# tr, tr.95
	movq	16(%rax), %rax	# tr.95_347->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp762
	movslq	%edx, %rdx	# tmp762, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rax, %rdx	# D.8726, D.8726
	movl	-64(%rbp), %eax	# k, tmp763
	movl	%eax, (%rdx)	# tmp763, *_351
	.loc 1 548 0
	movq	-56(%rbp), %rax	# tr, tr.96
	movq	24(%rax), %rax	# tr.96_352->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp764
	movslq	%edx, %rdx	# tmp764, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.97
	leal	-1(%rax), %edx	#, tmp765
	movl	%edx, -68(%rbp)	# tmp765, i
	movl	%eax, (%rcx)	# i.97, *_356
	jmp	.L70	#
.L71:
	.loc 1 550 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 551 0
	jmp	.L65	#
.L70:
	jmp	.L65	#
.L55:
	.loc 1 554 0
	cmpl	$0, -68(%rbp)	#, i
	jne	.L72	#,
	.loc 1 554 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp766
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp767
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_361, D.8726
	addq	$16, %rax	#, D.8726
	movl	(%rax), %eax	# *_363, D.8724
	cmpl	$-987654321, %eax	#, D.8724
	jne	.L72	#,
	.loc 1 556 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.98
	movq	8(%rax), %rdx	# tr.98_365->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp768
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$4, (%rax)	#, *_368
	.loc 1 557 0
	movq	-56(%rbp), %rax	# tr, tr.99
	movq	16(%rax), %rax	# tr.99_369->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp769
	movslq	%edx, %rdx	# tmp769, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_373
	.loc 1 558 0
	movq	-56(%rbp), %rax	# tr, tr.100
	movq	24(%rax), %rax	# tr.100_374->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp770
	movslq	%edx, %rdx	# tmp770, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_378
	jmp	.L73	#
.L72:
	.loc 1 560 0
	cmpl	$0, -68(%rbp)	#, i
	jle	.L74	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp771
	cltq
	addq	$1, %rax	#, D.8727
	leaq	0(,%rax,8), %rdx	#, D.8727
	movq	-48(%rbp), %rax	# xmx, tmp772
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_382, D.8726
	addq	$16, %rax	#, D.8726
	movl	(%rax), %ebx	# *_384, D.8724
	movq	-96(%rbp), %rax	# posterior, tmp773
	movq	(%rax), %rax	# posterior_68(D)->xmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp774
	movslq	%edx, %rdx	# tmp774, D.8727
	addq	$1, %rdx	#, D.8727
	salq	$3, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_390, D.8726
	addq	$16, %rax	#, D.8726
	movl	(%rax), %edx	# *_392, D.8724
	movl	-68(%rbp), %eax	# i, tmp775
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp776
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_396, D.8726
	addq	$16, %rax	#, D.8726
	movl	(%rax), %eax	# *_398, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	%eax, %ebx	# D.8724, D.8724
	jne	.L74	#,
	cmpl	$0, -68(%rbp)	#, i
	jle	.L74	#,
	.loc 1 562 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.101
	movq	8(%rax), %rdx	# tr.101_401->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp777
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$5, (%rax)	#, *_404
	.loc 1 563 0
	movq	-56(%rbp), %rax	# tr, tr.102
	movq	16(%rax), %rax	# tr.102_405->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp778
	movslq	%edx, %rdx	# tmp778, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_409
	.loc 1 564 0
	movq	-56(%rbp), %rax	# tr, tr.103
	movq	24(%rax), %rax	# tr.103_410->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp779
	movslq	%edx, %rdx	# tmp779, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_414
	.loc 1 565 0
	movq	-56(%rbp), %rax	# tr, tr.104
	movq	24(%rax), %rax	# tr.104_415->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp780
	movslq	%edx, %rdx	# tmp780, D.8730
	salq	$2, %rdx	#, D.8730
	subq	$4, %rdx	#, D.8727
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.105
	leal	-1(%rax), %edx	#, tmp781
	movl	%edx, -68(%rbp)	# tmp781, i
	movl	%eax, (%rcx)	# i.105, *_420
	jmp	.L73	#
.L74:
	.loc 1 567 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 568 0
	jmp	.L65	#
.L73:
	jmp	.L65	#
.L56:
	.loc 1 571 0
	movl	-68(%rbp), %eax	# i, tmp782
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp783
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_425, D.8726
	movl	(%rax), %edx	# *_426, D.8724
	movl	-68(%rbp), %eax	# i, tmp784
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp785
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_430, D.8726
	addq	$16, %rax	#, D.8726
	movl	(%rax), %eax	# *_432, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L75	#,
	.loc 1 573 0
	movq	-56(%rbp), %rax	# tr, tr.106
	movq	8(%rax), %rdx	# tr.106_434->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp786
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$5, (%rax)	#, *_437
	.loc 1 574 0
	movq	-56(%rbp), %rax	# tr, tr.107
	movq	16(%rax), %rax	# tr.107_438->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp787
	movslq	%edx, %rdx	# tmp787, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_442
	.loc 1 575 0
	movq	-56(%rbp), %rax	# tr, tr.108
	movq	24(%rax), %rax	# tr.108_443->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp788
	movslq	%edx, %rdx	# tmp788, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_447
	jmp	.L76	#
.L75:
	.loc 1 577 0
	movl	-68(%rbp), %eax	# i, tmp789
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp790
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_450, D.8726
	movl	(%rax), %edx	# *_451, D.8724
	movl	-68(%rbp), %eax	# i, tmp791
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp792
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_455, D.8726
	addq	$12, %rax	#, D.8726
	movl	(%rax), %eax	# *_457, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L77	#,
	.loc 1 579 0
	movq	-56(%rbp), %rax	# tr, tr.109
	movq	8(%rax), %rdx	# tr.109_459->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp793
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$10, (%rax)	#, *_462
	.loc 1 580 0
	movq	-56(%rbp), %rax	# tr, tr.110
	movq	16(%rax), %rax	# tr.110_463->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp794
	movslq	%edx, %rdx	# tmp794, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_467
	.loc 1 581 0
	movq	-56(%rbp), %rax	# tr, tr.111
	movq	24(%rax), %rax	# tr.111_468->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp795
	movslq	%edx, %rdx	# tmp795, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_472
	jmp	.L76	#
.L77:
	.loc 1 583 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 584 0
	jmp	.L65	#
.L76:
	jmp	.L65	#
.L57:
	.loc 1 587 0
	movl	-88(%rbp), %eax	# M, tmp796
	movl	%eax, -64(%rbp)	# tmp796, k
	jmp	.L78	#
.L81:
	.loc 1 588 0
	movl	-68(%rbp), %eax	# i, tmp797
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp798
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_477, D.8726
	addq	$4, %rax	#, D.8726
	movl	(%rax), %edx	# *_479, D.8724
	movl	-68(%rbp), %eax	# i, tmp799
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-40(%rbp), %rax	# mmx, tmp800
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_483, D.8726
	movl	-64(%rbp), %ecx	# k, tmp801
	movslq	%ecx, %rcx	# tmp801, D.8730
	salq	$2, %rcx	#, D.8730
	addq	%rcx, %rax	# D.8730, D.8726
	movl	(%rax), %eax	# *_487, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L79	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L79	#,
	.loc 1 590 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.112
	movq	8(%rax), %rdx	# tr.112_489->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp802
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$1, (%rax)	#, *_492
	.loc 1 591 0
	movq	-56(%rbp), %rax	# tr, tr.113
	movq	16(%rax), %rax	# tr.113_493->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp803
	movslq	%edx, %rdx	# tmp803, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-64(%rbp), %eax	# k, k.114
	leal	-1(%rax), %edx	#, tmp804
	movl	%edx, -64(%rbp)	# tmp804, k
	movl	%eax, (%rcx)	# k.114, *_497
	.loc 1 592 0
	movq	-56(%rbp), %rax	# tr, tr.115
	movq	24(%rax), %rax	# tr.115_500->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp805
	movslq	%edx, %rdx	# tmp805, D.8730
	salq	$2, %rdx	#, D.8730
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.116
	leal	-1(%rax), %edx	#, tmp806
	movl	%edx, -68(%rbp)	# tmp806, i
	movl	%eax, (%rcx)	# i.116, *_504
	.loc 1 593 0
	jmp	.L80	#
.L79:
	.loc 1 587 0
	subl	$1, -64(%rbp)	#, k
.L78:
	.loc 1 587 0 is_stmt 0 discriminator 1
	cmpl	$0, -64(%rbp)	#, k
	jg	.L81	#,
.L80:
	.loc 1 595 0 is_stmt 1
	cmpl	$0, -64(%rbp)	#, k
	jg	.L82	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 596 0 is_stmt 1 discriminator 1
	jmp	.L65	#
.L82:
	.loc 1 596 0 is_stmt 0
	jmp	.L65	#
.L58:
	.loc 1 599 0 is_stmt 1
	movl	-68(%rbp), %eax	# i, tmp807
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp808
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_510, D.8726
	addq	$8, %rax	#, D.8726
	movl	(%rax), %ebx	# *_512, D.8724
	movq	-96(%rbp), %rax	# posterior, tmp809
	movq	(%rax), %rax	# posterior_68(D)->xmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp810
	movslq	%edx, %rdx	# tmp810, D.8730
	salq	$3, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_517, D.8726
	addq	$8, %rax	#, D.8726
	movl	(%rax), %edx	# *_519, D.8724
	movl	-68(%rbp), %eax	# i, tmp811
	cltq
	salq	$3, %rax	#, D.8730
	leaq	-8(%rax), %rcx	#, D.8727
	movq	-48(%rbp), %rax	# xmx, tmp812
	addq	%rcx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_524, D.8726
	addq	$8, %rax	#, D.8726
	movl	(%rax), %eax	# *_526, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	%eax, %ebx	# D.8724, D.8724
	jne	.L83	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L83	#,
	.loc 1 601 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.117
	movq	8(%rax), %rdx	# tr.117_529->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp813
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$8, (%rax)	#, *_532
	.loc 1 602 0
	movq	-56(%rbp), %rax	# tr, tr.118
	movq	16(%rax), %rax	# tr.118_533->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp814
	movslq	%edx, %rdx	# tmp814, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_537
	.loc 1 603 0
	movq	-56(%rbp), %rax	# tr, tr.119
	movq	24(%rax), %rax	# tr.119_538->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp815
	movslq	%edx, %rdx	# tmp815, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_542
	.loc 1 604 0
	movq	-56(%rbp), %rax	# tr, tr.120
	movq	24(%rax), %rax	# tr.120_543->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp816
	movslq	%edx, %rdx	# tmp816, D.8730
	salq	$2, %rdx	#, D.8730
	subq	$4, %rdx	#, D.8727
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.121
	leal	-1(%rax), %edx	#, tmp817
	movl	%edx, -68(%rbp)	# tmp817, i
	movl	%eax, (%rcx)	# i.121, *_548
	jmp	.L84	#
.L83:
	.loc 1 606 0
	movl	-68(%rbp), %eax	# i, tmp818
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp819
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_553, D.8726
	addq	$8, %rax	#, D.8726
	movl	(%rax), %edx	# *_555, D.8724
	movl	-68(%rbp), %eax	# i, tmp820
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp821
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_559, D.8726
	addq	$4, %rax	#, D.8726
	movl	(%rax), %eax	# *_561, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L85	#,
	.loc 1 608 0
	movq	-56(%rbp), %rax	# tr, tr.122
	movq	8(%rax), %rdx	# tr.122_563->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp822
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$7, (%rax)	#, *_566
	.loc 1 609 0
	movq	-56(%rbp), %rax	# tr, tr.123
	movq	16(%rax), %rax	# tr.123_567->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp823
	movslq	%edx, %rdx	# tmp823, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_571
	.loc 1 610 0
	movq	-56(%rbp), %rax	# tr, tr.124
	movq	24(%rax), %rax	# tr.124_572->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp824
	movslq	%edx, %rdx	# tmp824, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_576
	jmp	.L84	#
.L85:
	.loc 1 612 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 613 0
	jmp	.L65	#
.L84:
	jmp	.L65	#
.L59:
	.loc 1 616 0
	movl	-68(%rbp), %eax	# i, tmp825
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp826
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_579, D.8726
	addq	$12, %rax	#, D.8726
	movl	(%rax), %ebx	# *_581, D.8724
	movq	-96(%rbp), %rax	# posterior, tmp827
	movq	(%rax), %rax	# posterior_68(D)->xmx, D.8729
	movl	-68(%rbp), %edx	# i, tmp828
	movslq	%edx, %rdx	# tmp828, D.8730
	salq	$3, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_586, D.8726
	addq	$12, %rax	#, D.8726
	movl	(%rax), %edx	# *_588, D.8724
	movl	-68(%rbp), %eax	# i, tmp829
	cltq
	salq	$3, %rax	#, D.8730
	leaq	-8(%rax), %rcx	#, D.8727
	movq	-48(%rbp), %rax	# xmx, tmp830
	addq	%rcx, %rax	# D.8727, D.8729
	movq	(%rax), %rax	# *_593, D.8726
	addq	$12, %rax	#, D.8726
	movl	(%rax), %eax	# *_595, D.8724
	movl	%edx, %esi	# D.8724,
	movl	%eax, %edi	# D.8724,
	call	ILogsum	#
	cmpl	%eax, %ebx	# D.8724, D.8724
	jne	.L86	#,
	.loc 1 616 0 is_stmt 0 discriminator 1
	cmpl	$0, -68(%rbp)	#, i
	jle	.L86	#,
	.loc 1 618 0 is_stmt 1
	movq	-56(%rbp), %rax	# tr, tr.125
	movq	8(%rax), %rdx	# tr.125_598->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp831
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$10, (%rax)	#, *_601
	.loc 1 619 0
	movq	-56(%rbp), %rax	# tr, tr.126
	movq	16(%rax), %rax	# tr.126_602->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp832
	movslq	%edx, %rdx	# tmp832, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_606
	.loc 1 620 0
	movq	-56(%rbp), %rax	# tr, tr.127
	movq	24(%rax), %rax	# tr.127_607->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp833
	movslq	%edx, %rdx	# tmp833, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_611
	.loc 1 621 0
	movq	-56(%rbp), %rax	# tr, tr.128
	movq	24(%rax), %rax	# tr.128_612->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp834
	movslq	%edx, %rdx	# tmp834, D.8730
	salq	$2, %rdx	#, D.8730
	subq	$4, %rdx	#, D.8727
	leaq	(%rax,%rdx), %rcx	#, D.8726
	movl	-68(%rbp), %eax	# i, i.129
	leal	-1(%rax), %edx	#, tmp835
	movl	%edx, -68(%rbp)	# tmp835, i
	movl	%eax, (%rcx)	# i.129, *_617
	jmp	.L87	#
.L86:
	.loc 1 623 0
	movl	-68(%rbp), %eax	# i, tmp836
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp837
	addq	%rdx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_622, D.8726
	addq	$12, %rax	#, D.8726
	movl	(%rax), %edx	# *_624, D.8724
	movl	-68(%rbp), %eax	# i, tmp838
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8730
	movq	-48(%rbp), %rax	# xmx, tmp839
	addq	%rcx, %rax	# D.8730, D.8729
	movq	(%rax), %rax	# *_628, D.8726
	addq	$4, %rax	#, D.8726
	movl	(%rax), %eax	# *_630, D.8724
	cmpl	%eax, %edx	# D.8724, D.8724
	jne	.L88	#,
	.loc 1 625 0
	movq	-56(%rbp), %rax	# tr, tr.130
	movq	8(%rax), %rdx	# tr.130_632->statetype, D.8725
	movl	-72(%rbp), %eax	# tpos, tmp840
	cltq
	addq	%rdx, %rax	# D.8725, D.8725
	movb	$7, (%rax)	#, *_635
	.loc 1 626 0
	movq	-56(%rbp), %rax	# tr, tr.131
	movq	16(%rax), %rax	# tr.131_636->nodeidx, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp841
	movslq	%edx, %rdx	# tmp841, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_640
	.loc 1 627 0
	movq	-56(%rbp), %rax	# tr, tr.132
	movq	24(%rax), %rax	# tr.132_641->pos, D.8726
	movl	-72(%rbp), %edx	# tpos, tmp842
	movslq	%edx, %rdx	# tmp842, D.8730
	salq	$2, %rdx	#, D.8730
	addq	%rdx, %rax	# D.8730, D.8726
	movl	$0, (%rax)	#, *_645
	jmp	.L87	#
.L88:
	.loc 1 629 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 630 0
	jmp	.L65	#
.L87:
	jmp	.L65	#
.L50:
	.loc 1 633 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L65:
	.loc 1 637 0
	addl	$1, -72(%rbp)	#, tpos
	.loc 1 638 0
	movl	-72(%rbp), %eax	# tpos, tmp843
	cmpl	-76(%rbp), %eax	# curralloc, tmp843
	jne	.L49	#,
	.loc 1 640 0
	movl	-84(%rbp), %eax	# L, tmp844
	addl	%eax, -76(%rbp)	# tmp844, curralloc
	.loc 1 641 0
	movq	-56(%rbp), %rax	# tr, tr.133
	movl	-76(%rbp), %edx	# curralloc, tmp845
	movl	%edx, %esi	# tmp845,
	movq	%rax, %rdi	# tr.133,
	call	P7ReallocTrace	#
.L49:
	.loc 1 489 0 discriminator 1
	movq	-56(%rbp), %rax	# tr, tr.134
	movq	8(%rax), %rax	# tr.134_45->statetype, D.8725
	movl	-72(%rbp), %edx	# tpos, tmp846
	movslq	%edx, %rdx	# tmp846, D.8727
	subq	$1, %rdx	#, D.8727
	addq	%rdx, %rax	# D.8727, D.8725
	movzbl	(%rax), %eax	# *_49, D.8728
	cmpb	$4, %al	#, D.8728
	jne	.L89	#,
	.loc 1 645 0
	movq	-56(%rbp), %rax	# tr, tr.135
	movl	-72(%rbp), %edx	# tpos, tmp847
	movl	%edx, (%rax)	# tmp847, tr.135_649->tlen
	.loc 1 646 0
	movq	-56(%rbp), %rax	# tr, tr.136
	movq	%rax, %rdi	# tr.136,
	call	P7ReverseTrace	#
	.loc 1 647 0
	movq	-56(%rbp), %rdx	# tr, tr.137
	movq	-112(%rbp), %rax	# ret_tr, tmp848
	movq	%rdx, (%rax)	# tr.137, *ret_tr_652(D)
	.loc 1 649 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	P7OptimalAccuracyTrace, .-P7OptimalAccuracyTrace
	.type	score2postcode, @function
score2postcode:
.LFB7:
	.loc 1 679 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# sc, sc
	.loc 1 681 0
	movl	-20(%rbp), %eax	# sc, tmp67
	movss	.LC0(%rip), %xmm0	#,
	movl	%eax, %edi	# tmp67,
	call	Score2Prob	#
	unpcklps	%xmm0, %xmm0	# D.8733, D.8733
	cvtps2pd	%xmm0, %xmm0	# D.8733, D.8734
	movsd	.LC3(%rip), %xmm1	#, tmp68
	mulsd	%xmm1, %xmm0	# tmp68, D.8734
	cvttsd2si	%xmm0, %eax	# D.8734, tmp69
	movb	%al, -1(%rbp)	# tmp69, i
	.loc 1 682 0
	cmpb	$9, -1(%rbp)	#, i
	jg	.L91	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %eax	# i, i.139
	addl	$48, %eax	#, D.8735
	jmp	.L92	#
.L91:
	.loc 1 682 0 discriminator 2
	movl	$42, %eax	#, iftmp.138
.L92:
	.loc 1 683 0 is_stmt 1 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	score2postcode, .-score2postcode
	.section	.rodata
.LC4:
	.string	"postprob.c"
	.text
	.globl	PostalCode
	.type	PostalCode, @function
PostalCode:
.LFB8:
	.loc 1 686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# L, L
	movq	%rsi, -64(%rbp)	# mx, mx
	movq	%rdx, -72(%rbp)	# tr, tr
	.loc 1 692 0
	movl	-52(%rbp), %eax	# L, tmp138
	addl	$1, %eax	#, D.8737
	cltq
	movq	%rax, %rdx	# D.8738,
	movl	$692, %esi	#,
	movl	$.LC4, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp139, postcode
	.loc 1 693 0
	movl	$0, -36(%rbp)	#, tpos
	jmp	.L95	#
.L104:
	.loc 1 695 0
	movq	-72(%rbp), %rax	# tr, tmp140
	movq	24(%rax), %rax	# tr_7(D)->pos, D.8739
	movl	-36(%rbp), %edx	# tpos, tmp141
	movslq	%edx, %rdx	# tmp141, D.8738
	salq	$2, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8739
	movl	(%rax), %eax	# *_12, tmp142
	movl	%eax, -32(%rbp)	# tmp142, i
	.loc 1 696 0
	movq	-72(%rbp), %rax	# tr, tmp143
	movq	16(%rax), %rax	# tr_7(D)->nodeidx, D.8739
	movl	-36(%rbp), %edx	# tpos, tmp144
	movslq	%edx, %rdx	# tmp144, D.8738
	salq	$2, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8739
	movl	(%rax), %eax	# *_17, tmp145
	movl	%eax, -28(%rbp)	# tmp145, k
	.loc 1 697 0
	cmpl	$0, -32(%rbp)	#, i
	jne	.L96	#,
	.loc 1 697 0 is_stmt 0 discriminator 1
	jmp	.L97	#
.L96:
	.loc 1 699 0 is_stmt 1
	movq	-72(%rbp), %rax	# tr, tmp146
	movq	8(%rax), %rdx	# tr_7(D)->statetype, D.8740
	movl	-36(%rbp), %eax	# tpos, tmp147
	cltq
	addq	%rdx, %rax	# D.8740, D.8740
	movzbl	(%rax), %eax	# *_21, D.8742
	movsbl	%al, %eax	# D.8742, D.8737
	cmpl	$10, %eax	#, D.8737
	ja	.L97	#,
	movl	%eax, %eax	# D.8737, tmp148
	movq	.L99(,%rax,8), %rax	#, tmp149
	jmp	*%rax	# tmp149
	.section	.rodata
	.align 8
	.align 4
.L99:
	.quad	.L97
	.quad	.L98
	.quad	.L97
	.quad	.L100
	.quad	.L97
	.quad	.L101
	.quad	.L97
	.quad	.L97
	.quad	.L102
	.quad	.L97
	.quad	.L103
	.text
.L98:
	.loc 1 700 0
	movl	-32(%rbp), %eax	# i, tmp150
	cltq
	leaq	-1(%rax), %rdx	#, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp151
	leaq	(%rdx,%rax), %rbx	#, D.8740
	movq	-64(%rbp), %rax	# mx, tmp152
	movq	8(%rax), %rax	# mx_27(D)->mmx, D.8743
	movl	-32(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, D.8738
	salq	$3, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8743
	movq	(%rax), %rax	# *_31, D.8739
	movl	-28(%rbp), %edx	# k, tmp154
	movslq	%edx, %rdx	# tmp154, D.8738
	salq	$2, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8739
	movl	(%rax), %eax	# *_35, D.8737
	movl	%eax, %edi	# D.8737,
	call	score2postcode	#
	movb	%al, (%rbx)	# D.8742, *_26
	jmp	.L97	#
.L100:
	.loc 1 701 0
	movl	-32(%rbp), %eax	# i, tmp155
	cltq
	leaq	-1(%rax), %rdx	#, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp156
	leaq	(%rdx,%rax), %rbx	#, D.8740
	movq	-64(%rbp), %rax	# mx, tmp157
	movq	16(%rax), %rax	# mx_27(D)->imx, D.8743
	movl	-32(%rbp), %edx	# i, tmp158
	movslq	%edx, %rdx	# tmp158, D.8738
	salq	$3, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8743
	movq	(%rax), %rax	# *_44, D.8739
	movl	-28(%rbp), %edx	# k, tmp159
	movslq	%edx, %rdx	# tmp159, D.8738
	salq	$2, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8739
	movl	(%rax), %eax	# *_48, D.8737
	movl	%eax, %edi	# D.8737,
	call	score2postcode	#
	movb	%al, (%rbx)	# D.8742, *_40
	jmp	.L97	#
.L101:
	.loc 1 702 0
	movl	-32(%rbp), %eax	# i, tmp160
	cltq
	leaq	-1(%rax), %rdx	#, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp161
	leaq	(%rdx,%rax), %rbx	#, D.8740
	movq	-64(%rbp), %rax	# mx, tmp162
	movq	(%rax), %rax	# mx_27(D)->xmx, D.8743
	movl	-32(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, D.8738
	salq	$3, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8743
	movq	(%rax), %rax	# *_57, D.8739
	addq	$16, %rax	#, D.8739
	movl	(%rax), %eax	# *_59, D.8737
	movl	%eax, %edi	# D.8737,
	call	score2postcode	#
	movb	%al, (%rbx)	# D.8742, *_53
	jmp	.L97	#
.L102:
	.loc 1 703 0
	movl	-32(%rbp), %eax	# i, tmp164
	cltq
	leaq	-1(%rax), %rdx	#, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp165
	leaq	(%rdx,%rax), %rbx	#, D.8740
	movq	-64(%rbp), %rax	# mx, tmp166
	movq	(%rax), %rax	# mx_27(D)->xmx, D.8743
	movl	-32(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.8738
	salq	$3, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8743
	movq	(%rax), %rax	# *_68, D.8739
	addq	$8, %rax	#, D.8739
	movl	(%rax), %eax	# *_70, D.8737
	movl	%eax, %edi	# D.8737,
	call	score2postcode	#
	movb	%al, (%rbx)	# D.8742, *_64
	jmp	.L97	#
.L103:
	.loc 1 704 0
	movl	-32(%rbp), %eax	# i, tmp168
	cltq
	leaq	-1(%rax), %rdx	#, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp169
	leaq	(%rdx,%rax), %rbx	#, D.8740
	movq	-64(%rbp), %rax	# mx, tmp170
	movq	(%rax), %rax	# mx_27(D)->xmx, D.8743
	movl	-32(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, D.8738
	salq	$3, %rdx	#, D.8738
	addq	%rdx, %rax	# D.8738, D.8743
	movq	(%rax), %rax	# *_79, D.8739
	addq	$12, %rax	#, D.8739
	movl	(%rax), %eax	# *_81, D.8737
	movl	%eax, %edi	# D.8737,
	call	score2postcode	#
	movb	%al, (%rbx)	# D.8742, *_75
	nop
.L97:
	.loc 1 693 0
	addl	$1, -36(%rbp)	#, tpos
.L95:
	.loc 1 693 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# tr, tmp172
	movl	(%rax), %eax	# tr_7(D)->tlen, D.8737
	cmpl	-36(%rbp), %eax	# tpos, D.8737
	jg	.L104	#,
	.loc 1 707 0 is_stmt 1
	movl	-52(%rbp), %eax	# L, tmp173
	movslq	%eax, %rdx	# tmp173, D.8741
	movq	-24(%rbp), %rax	# postcode, tmp174
	addq	%rdx, %rax	# D.8741, D.8740
	movb	$0, (%rax)	#, *_86
	.loc 1 709 0
	movq	-24(%rbp), %rax	# postcode, D.8740
	.loc 1 710 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PostalCode, .-PostalCode
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 8
.LC3:
	.long	0
	.long	1076101120
	.text
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8c9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.long	.LASF65
	.long	.LASF66
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
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x5
	.byte	0x8
	.long	0x74
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
	.uleb128 0x5
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x8
	.long	0x7b
	.uleb128 0x6
	.long	.LASF36
	.value	0x1d0
	.byte	0x2
	.byte	0x65
	.long	0x2fa
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x71
	.long	0x6e
	.byte	0
	.uleb128 0x8
	.string	"acc"
	.byte	0x2
	.byte	0x72
	.long	0x6e
	.byte	0x8
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x73
	.long	0x6e
	.byte	0x10
	.uleb128 0x8
	.string	"rf"
	.byte	0x2
	.byte	0x74
	.long	0x6e
	.byte	0x18
	.uleb128 0x8
	.string	"cs"
	.byte	0x2
	.byte	0x75
	.long	0x6e
	.byte	0x20
	.uleb128 0x8
	.string	"ca"
	.byte	0x2
	.byte	0x76
	.long	0x6e
	.byte	0x28
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x77
	.long	0x6e
	.byte	0x30
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x38
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x79
	.long	0x6e
	.byte	0x40
	.uleb128 0x8
	.string	"map"
	.byte	0x2
	.byte	0x7a
	.long	0x89
	.byte	0x48
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.byte	0x7b
	.long	0x57
	.byte	0x50
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x86
	.long	0x89
	.byte	0x58
	.uleb128 0x7
	.long	.LASF20
	.byte	0x2
	.byte	0x87
	.long	0x89
	.byte	0x60
	.uleb128 0x7
	.long	.LASF21
	.byte	0x2
	.byte	0x88
	.long	0x89
	.byte	0x68
	.uleb128 0x8
	.string	"ga1"
	.byte	0x2
	.byte	0x90
	.long	0x7b
	.byte	0x70
	.uleb128 0x8
	.string	"ga2"
	.byte	0x2
	.byte	0x90
	.long	0x7b
	.byte	0x74
	.uleb128 0x8
	.string	"tc1"
	.byte	0x2
	.byte	0x91
	.long	0x7b
	.byte	0x78
	.uleb128 0x8
	.string	"tc2"
	.byte	0x2
	.byte	0x91
	.long	0x7b
	.byte	0x7c
	.uleb128 0x8
	.string	"nc1"
	.byte	0x2
	.byte	0x92
	.long	0x7b
	.byte	0x80
	.uleb128 0x8
	.string	"nc2"
	.byte	0x2
	.byte	0x92
	.long	0x7b
	.byte	0x84
	.uleb128 0x8
	.string	"M"
	.byte	0x2
	.byte	0x9b
	.long	0x57
	.byte	0x88
	.uleb128 0x8
	.string	"t"
	.byte	0x2
	.byte	0x9c
	.long	0x2fa
	.byte	0x90
	.uleb128 0x8
	.string	"mat"
	.byte	0x2
	.byte	0x9d
	.long	0x2fa
	.byte	0x98
	.uleb128 0x8
	.string	"ins"
	.byte	0x2
	.byte	0x9e
	.long	0x2fa
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x2
	.byte	0x9f
	.long	0x7b
	.byte	0xa8
	.uleb128 0x8
	.string	"xt"
	.byte	0x2
	.byte	0xa8
	.long	0x300
	.byte	0xac
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0xa9
	.long	0x9d
	.byte	0xd0
	.uleb128 0x8
	.string	"end"
	.byte	0x2
	.byte	0xaa
	.long	0x9d
	.byte	0xd8
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0xae
	.long	0x316
	.byte	0xe0
	.uleb128 0x9
	.string	"p1"
	.byte	0x2
	.byte	0xaf
	.long	0x7b
	.value	0x130
	.uleb128 0x9
	.string	"tsc"
	.byte	0x2
	.byte	0xc5
	.long	0x326
	.value	0x138
	.uleb128 0x9
	.string	"msc"
	.byte	0x2
	.byte	0xc6
	.long	0x326
	.value	0x140
	.uleb128 0x9
	.string	"isc"
	.byte	0x2
	.byte	0xc7
	.long	0x326
	.value	0x148
	.uleb128 0x9
	.string	"xsc"
	.byte	0x2
	.byte	0xc8
	.long	0x32c
	.value	0x150
	.uleb128 0x9
	.string	"bsc"
	.byte	0x2
	.byte	0xc9
	.long	0x89
	.value	0x170
	.uleb128 0x9
	.string	"esc"
	.byte	0x2
	.byte	0xca
	.long	0x89
	.value	0x178
	.uleb128 0xa
	.long	.LASF25
	.byte	0x2
	.byte	0xcb
	.long	0x89
	.value	0x180
	.uleb128 0xa
	.long	.LASF26
	.byte	0x2
	.byte	0xcb
	.long	0x89
	.value	0x188
	.uleb128 0xa
	.long	.LASF27
	.byte	0x2
	.byte	0xcb
	.long	0x89
	.value	0x190
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.byte	0xcb
	.long	0x89
	.value	0x198
	.uleb128 0xa
	.long	.LASF29
	.byte	0x2
	.byte	0xcb
	.long	0x89
	.value	0x1a0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x2
	.byte	0xd6
	.long	0x326
	.value	0x1a8
	.uleb128 0xa
	.long	.LASF31
	.byte	0x2
	.byte	0xd7
	.long	0x326
	.value	0x1b0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x2
	.byte	0xd8
	.long	0x57
	.value	0x1b8
	.uleb128 0xa
	.long	.LASF33
	.byte	0x2
	.byte	0xd9
	.long	0x57
	.value	0x1bc
	.uleb128 0x9
	.string	"mu"
	.byte	0x2
	.byte	0xde
	.long	0x7b
	.value	0x1c0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x2
	.byte	0xdf
	.long	0x7b
	.value	0x1c4
	.uleb128 0xa
	.long	.LASF35
	.byte	0x2
	.byte	0xe1
	.long	0x57
	.value	0x1c8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d
	.uleb128 0xb
	.long	0x7b
	.long	0x316
	.uleb128 0xc
	.long	0x65
	.byte	0x3
	.uleb128 0xc
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x7b
	.long	0x326
	.uleb128 0xc
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x89
	.uleb128 0xb
	.long	0x57
	.long	0x342
	.uleb128 0xc
	.long	0x65
	.byte	0x3
	.uleb128 0xc
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x50
	.byte	0x2
	.value	0x121
	.long	0x3ec
	.uleb128 0xe
	.string	"xmx"
	.byte	0x2
	.value	0x122
	.long	0x326
	.byte	0
	.uleb128 0xe
	.string	"mmx"
	.byte	0x2
	.value	0x123
	.long	0x326
	.byte	0x8
	.uleb128 0xe
	.string	"imx"
	.byte	0x2
	.value	0x124
	.long	0x326
	.byte	0x10
	.uleb128 0xe
	.string	"dmx"
	.byte	0x2
	.value	0x125
	.long	0x326
	.byte	0x18
	.uleb128 0xf
	.long	.LASF38
	.byte	0x2
	.value	0x12b
	.long	0x6c
	.byte	0x20
	.uleb128 0xf
	.long	.LASF39
	.byte	0x2
	.value	0x12b
	.long	0x6c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF40
	.byte	0x2
	.value	0x12b
	.long	0x6c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF41
	.byte	0x2
	.value	0x12b
	.long	0x6c
	.byte	0x38
	.uleb128 0xf
	.long	.LASF42
	.byte	0x2
	.value	0x134
	.long	0x57
	.byte	0x40
	.uleb128 0xf
	.long	.LASF43
	.byte	0x2
	.value	0x135
	.long	0x57
	.byte	0x44
	.uleb128 0xf
	.long	.LASF44
	.byte	0x2
	.value	0x137
	.long	0x57
	.byte	0x48
	.uleb128 0xf
	.long	.LASF45
	.byte	0x2
	.value	0x138
	.long	0x57
	.byte	0x4c
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xa3
	.uleb128 0xd
	.long	.LASF46
	.byte	0x20
	.byte	0x2
	.value	0x176
	.long	0x434
	.uleb128 0xf
	.long	.LASF47
	.byte	0x2
	.value	0x177
	.long	0x57
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x2
	.value	0x178
	.long	0x6e
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x2
	.value	0x179
	.long	0x89
	.byte	0x10
	.uleb128 0xe
	.string	"pos"
	.byte	0x2
	.value	0x17a
	.long	0x89
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.byte	0x61
	.long	0x7b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b7
	.uleb128 0x11
	.string	"dsq"
	.byte	0x1
	.byte	0x61
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0x61
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0x61
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x61
	.long	0x4b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"sc"
	.byte	0x1
	.byte	0x63
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0x64
	.long	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x65
	.long	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x4bd
	.uleb128 0x5
	.byte	0x8
	.long	0x3f2
	.uleb128 0x5
	.byte	0x8
	.long	0x342
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1
	.byte	0x84
	.long	0x7b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x593
	.uleb128 0x11
	.string	"dsq"
	.byte	0x1
	.byte	0x84
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0x84
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0x84
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x84
	.long	0x593
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.string	"mx"
	.byte	0x1
	.byte	0x86
	.long	0x4c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"xmx"
	.byte	0x1
	.byte	0x87
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"mmx"
	.byte	0x1
	.byte	0x88
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"imx"
	.byte	0x1
	.byte	0x89
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"dmx"
	.byte	0x1
	.byte	0x8a
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.string	"k"
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"sc"
	.byte	0x1
	.byte	0x8c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x4c3
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0xfa
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x627
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0xfa
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0xfb
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0xfc
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0xfd
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.string	"mx"
	.byte	0x1
	.byte	0xfe
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x100
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.value	0x101
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.value	0x102
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0x13f
	.long	0x7b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x70b
	.uleb128 0x18
	.string	"L"
	.byte	0x1
	.value	0x13f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"M"
	.byte	0x1
	.value	0x140
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.value	0x141
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.string	"mx"
	.byte	0x1
	.value	0x142
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.value	0x143
	.long	0x4b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"tr"
	.byte	0x1
	.value	0x145
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"xmx"
	.byte	0x1
	.value	0x146
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"mmx"
	.byte	0x1
	.value	0x147
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"imx"
	.byte	0x1
	.value	0x148
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"dmx"
	.byte	0x1
	.value	0x149
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.value	0x14b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.value	0x1c1
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x80b
	.uleb128 0x18
	.string	"L"
	.byte	0x1
	.value	0x1c1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.string	"M"
	.byte	0x1
	.value	0x1c2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.value	0x1c3
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.string	"mx"
	.byte	0x1
	.value	0x1c4
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.long	.LASF50
	.byte	0x1
	.value	0x1c5
	.long	0x4b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"tr"
	.byte	0x1
	.value	0x1c7
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.value	0x1c8
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x1c9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x1ca
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.value	0x1cb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"xmx"
	.byte	0x1
	.value	0x1cc
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"mmx"
	.byte	0x1
	.value	0x1cc
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"imx"
	.byte	0x1
	.value	0x1cc
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"dmx"
	.byte	0x1
	.value	0x1cc
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.value	0x1cd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x2a6
	.long	0x74
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x849
	.uleb128 0x18
	.string	"sc"
	.byte	0x1
	.value	0x2a6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x2a8
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x1
	.value	0x2ad
	.long	0x6e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"L"
	.byte	0x1
	.value	0x2ad
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"mx"
	.byte	0x1
	.value	0x2ad
	.long	0x4c3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"tr"
	.byte	0x1
	.value	0x2ad
	.long	0x4bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x2af
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.value	0x2b0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"k"
	.byte	0x1
	.value	0x2b1
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x2b2
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF51:
	.string	"forward"
.LASF28:
	.string	"bsc_mem"
.LASF43:
	.string	"maxM"
.LASF42:
	.string	"maxN"
.LASF54:
	.string	"P7Backward"
.LASF34:
	.string	"lambda"
.LASF16:
	.string	"nseq"
.LASF55:
	.string	"ret_mx"
.LASF7:
	.string	"sizetype"
.LASF19:
	.string	"tpri"
.LASF23:
	.string	"begin"
.LASF47:
	.string	"tlen"
.LASF62:
	.string	"PostalCode"
.LASF17:
	.string	"ctime"
.LASF30:
	.string	"dnam"
.LASF5:
	.string	"short int"
.LASF48:
	.string	"statetype"
.LASF18:
	.string	"checksum"
.LASF57:
	.string	"posterior"
.LASF25:
	.string	"tsc_mem"
.LASF26:
	.string	"msc_mem"
.LASF9:
	.string	"float"
.LASF66:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF56:
	.string	"P7FillOptimalAccuracy"
.LASF38:
	.string	"xmx_mem"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"score2postcode"
.LASF20:
	.string	"mpri"
.LASF35:
	.string	"flags"
.LASF59:
	.string	"P7OptimalAccuracyTrace"
.LASF45:
	.string	"padM"
.LASF44:
	.string	"padN"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"dmx_mem"
.LASF36:
	.string	"plan7_s"
.LASF64:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF58:
	.string	"P7EmitterPosterior"
.LASF3:
	.string	"unsigned int"
.LASF61:
	.string	"tpos"
.LASF27:
	.string	"isc_mem"
.LASF2:
	.string	"short unsigned int"
.LASF31:
	.string	"dnai"
.LASF8:
	.string	"char"
.LASF29:
	.string	"esc_mem"
.LASF63:
	.string	"postcode"
.LASF49:
	.string	"nodeidx"
.LASF40:
	.string	"imx_mem"
.LASF0:
	.string	"long unsigned int"
.LASF52:
	.string	"backward"
.LASF21:
	.string	"ipri"
.LASF22:
	.string	"tbd1"
.LASF37:
	.string	"dpmatrix_s"
.LASF15:
	.string	"comlog"
.LASF13:
	.string	"name"
.LASF39:
	.string	"mmx_mem"
.LASF24:
	.string	"null"
.LASF53:
	.string	"P7OptimalAccuracy"
.LASF10:
	.string	"double"
.LASF50:
	.string	"ret_tr"
.LASF32:
	.string	"dna2"
.LASF33:
	.string	"dna4"
.LASF65:
	.string	"postprob.c"
.LASF60:
	.string	"curralloc"
.LASF14:
	.string	"desc"
.LASF46:
	.string	"p7trace_s"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
