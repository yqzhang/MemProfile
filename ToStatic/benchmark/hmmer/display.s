	.file	"display.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 display.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	DisplayPlan7Posteriors
	.type	DisplayPlan7Posteriors, @function
DisplayPlan7Posteriors:
.LFB2:
	.file 1 "display.c"
	.loc 1 67 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# L, L
	movq	%rsi, -32(%rbp)	# hmm, hmm
	movq	%rdx, -40(%rbp)	# forward, forward
	movq	%rcx, -48(%rbp)	# backward, backward
	movq	%r8, -56(%rbp)	# viterbi, viterbi
	movq	%r9, -64(%rbp)	# optacc, optacc
	.loc 1 69 0
	movq	-56(%rbp), %rax	# viterbi, tmp59
	movq	%rax, -16(%rbp)	# tmp59, alignment
	.loc 1 70 0
	movq	-64(%rbp), %rax	# optacc, tmp60
	movq	%rax, -8(%rbp)	# tmp60, alignment
	.loc 1 71 0
	leaq	-16(%rbp), %rdi	#, tmp61
	movq	-48(%rbp), %rcx	# backward, tmp62
	movq	-40(%rbp), %rdx	# forward, tmp63
	movq	-32(%rbp), %rsi	# hmm, tmp64
	movl	-20(%rbp), %eax	# L, tmp65
	movl	$2, %r9d	#,
	movq	%rdi, %r8	# tmp61,
	movl	%eax, %edi	# tmp65,
	call	DisplayPlan7PostAlign	#
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DisplayPlan7Posteriors, .-DisplayPlan7Posteriors
	.section	.rodata
.LC0:
	.string	"unknown state"
	.text
	.globl	DisplayPlan7PostAlign
	.type	DisplayPlan7PostAlign, @function
DisplayPlan7PostAlign:
.LFB3:
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movl	%edi, -68(%rbp)	# L, L
	movq	%rsi, -80(%rbp)	# hmm, hmm
	movq	%rdx, -88(%rbp)	# forward, forward
	movq	%rcx, -96(%rbp)	# backward, backward
	movq	%r8, -104(%rbp)	# alignment, alignment
	movl	%r9d, -72(%rbp)	# A, A
	.loc 1 107 0
	movq	-88(%rbp), %rax	# forward, tmp549
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-68(%rbp), %edx	# L, tmp550
	movslq	%edx, %rdx	# tmp550, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_12, D.7216
	addq	$8, %rax	#, D.7216
	movl	(%rax), %edx	# *_14, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp551
	movl	352(%rax), %eax	# hmm_16(D)->xsc, D.7217
	addl	%edx, %eax	# D.7217, tmp552
	movl	%eax, -28(%rbp)	# tmp552, sc
	.loc 1 109 0
	movl	-72(%rbp), %eax	# A, tmp553
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7215,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp554, min
	.loc 1 110 0
	movl	-72(%rbp), %eax	# A, tmp555
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7215,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp556, max
	.loc 1 111 0
	movl	-72(%rbp), %eax	# A, tmp557
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.7215,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp558, on
	.loc 1 113 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L3	#
.L48:
	.loc 1 115 0
	movl	$0, -44(%rbp)	#, j
	jmp	.L4	#
.L11:
	.loc 1 116 0
	jmp	.L5	#
.L7:
	.loc 1 117 0
	movl	-44(%rbp), %eax	# j, tmp559
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7215
	movq	-24(%rbp), %rax	# min, tmp560
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_55, D.7217
	addl	$1, %edx	#, D.7217
	movl	%edx, (%rax)	# D.7217, *_55
.L5:
	.loc 1 116 0 discriminator 1
	movl	-44(%rbp), %eax	# j, tmp561
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7215
	movq	-104(%rbp), %rax	# alignment, tmp562
	addq	%rdx, %rax	# D.7215, D.7218
	movq	(%rax), %rax	# *_31, D.7219
	movq	24(%rax), %rax	# _32->pos, D.7216
	movl	-44(%rbp), %edx	# j, tmp563
	movslq	%edx, %rdx	# tmp563, D.7215
	leaq	0(,%rdx,4), %rcx	#, D.7215
	movq	-24(%rbp), %rdx	# min, tmp564
	addq	%rcx, %rdx	# D.7215, D.7216
	movl	(%rdx), %edx	# *_36, D.7217
	movslq	%edx, %rdx	# D.7217, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_40, D.7217
	movl	-48(%rbp), %edx	# i, tmp565
	subl	$1, %edx	#, D.7217
	cmpl	%edx, %eax	# D.7217, D.7217
	jge	.L6	#,
	.loc 1 116 0 is_stmt 0 discriminator 2
	movl	-44(%rbp), %eax	# j, tmp566
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7215
	movq	-24(%rbp), %rax	# min, tmp567
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_45, D.7217
	movl	-44(%rbp), %eax	# j, tmp568
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7215
	movq	-104(%rbp), %rax	# alignment, tmp569
	addq	%rcx, %rax	# D.7215, D.7218
	movq	(%rax), %rax	# *_49, D.7219
	movl	(%rax), %eax	# _50->tlen, D.7217
	subl	$1, %eax	#, D.7217
	cmpl	%eax, %edx	# D.7217, D.7217
	jl	.L7	#,
.L6:
	.loc 1 119 0 is_stmt 1
	jmp	.L8	#
.L10:
	.loc 1 120 0
	movl	-44(%rbp), %eax	# j, tmp570
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7215
	movq	-16(%rbp), %rax	# max, tmp571
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_84, D.7217
	addl	$1, %edx	#, D.7217
	movl	%edx, (%rax)	# D.7217, *_84
.L8:
	.loc 1 119 0 discriminator 1
	movl	-44(%rbp), %eax	# j, tmp572
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7215
	movq	-104(%rbp), %rax	# alignment, tmp573
	addq	%rdx, %rax	# D.7215, D.7218
	movq	(%rax), %rax	# *_60, D.7219
	movq	24(%rax), %rax	# _61->pos, D.7216
	movl	-44(%rbp), %edx	# j, tmp574
	movslq	%edx, %rdx	# tmp574, D.7215
	leaq	0(,%rdx,4), %rcx	#, D.7215
	movq	-16(%rbp), %rdx	# max, tmp575
	addq	%rcx, %rdx	# D.7215, D.7216
	movl	(%rdx), %edx	# *_65, D.7217
	movslq	%edx, %rdx	# D.7217, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_69, D.7217
	movl	-48(%rbp), %edx	# i, tmp576
	addl	$1, %edx	#, D.7217
	cmpl	%edx, %eax	# D.7217, D.7217
	jg	.L9	#,
	.loc 1 119 0 is_stmt 0 discriminator 2
	movl	-44(%rbp), %eax	# j, tmp577
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7215
	movq	-16(%rbp), %rax	# max, tmp578
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_74, D.7217
	movl	-44(%rbp), %eax	# j, tmp579
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7215
	movq	-104(%rbp), %rax	# alignment, tmp580
	addq	%rcx, %rax	# D.7215, D.7218
	movq	(%rax), %rax	# *_78, D.7219
	movl	(%rax), %eax	# _79->tlen, D.7217
	subl	$1, %eax	#, D.7217
	cmpl	%eax, %edx	# D.7217, D.7217
	jl	.L10	#,
.L9:
	.loc 1 115 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L4:
	.loc 1 115 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# j, tmp581
	cmpl	-72(%rbp), %eax	# A, tmp581
	jl	.L11	#,
	.loc 1 123 0 is_stmt 1
	movb	$1, -49(%rbp)	#, state
	jmp	.L12	#
.L47:
	.loc 1 125 0
	cmpb	$1, -49(%rbp)	#, state
	je	.L13	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	cmpb	$6, -49(%rbp)	#, state
	jne	.L14	#,
.L13:
	.loc 1 127 0 is_stmt 1
	movl	$1, -36(%rbp)	#, kmin
	.loc 1 128 0
	movq	-80(%rbp), %rax	# hmm, tmp582
	movl	136(%rax), %eax	# hmm_16(D)->M, tmp583
	movl	%eax, -32(%rbp)	# tmp583, kmax
	jmp	.L15	#
.L14:
	.loc 1 130 0
	cmpb	$2, -49(%rbp)	#, state
	jne	.L16	#,
	.loc 1 132 0
	movl	$2, -36(%rbp)	#, kmin
	.loc 1 133 0
	movq	-80(%rbp), %rax	# hmm, tmp584
	movl	136(%rax), %eax	# hmm_16(D)->M, D.7217
	subl	$1, %eax	#, tmp585
	movl	%eax, -32(%rbp)	# tmp585, kmax
	jmp	.L15	#
.L16:
	.loc 1 135 0
	cmpb	$3, -49(%rbp)	#, state
	jne	.L17	#,
	.loc 1 137 0
	movl	$1, -36(%rbp)	#, kmin
	.loc 1 138 0
	movq	-80(%rbp), %rax	# hmm, tmp586
	movl	136(%rax), %eax	# hmm_16(D)->M, D.7217
	subl	$1, %eax	#, tmp587
	movl	%eax, -32(%rbp)	# tmp587, kmax
	jmp	.L15	#
.L17:
	.loc 1 141 0
	movl	$0, -32(%rbp)	#, kmax
	movl	-32(%rbp), %eax	# kmax, tmp588
	movl	%eax, -36(%rbp)	# tmp588, kmin
.L15:
	.loc 1 143 0
	movl	-36(%rbp), %eax	# kmin, tmp589
	movl	%eax, -40(%rbp)	# tmp589, k
	jmp	.L18	#
.L33:
	.loc 1 145 0
	movsbl	-49(%rbp), %eax	# state, D.7217
	cmpl	$2, %eax	#, D.7217
	je	.L20	#,
	cmpl	$2, %eax	#, D.7217
	jg	.L21	#,
	cmpl	$1, %eax	#, D.7217
	je	.L22	#,
	.loc 1 201 0
	jmp	.L28	#
.L21:
	.loc 1 145 0
	cmpl	$3, %eax	#, D.7217
	je	.L23	#,
	cmpl	$6, %eax	#, D.7217
	je	.L24	#,
	.loc 1 201 0
	jmp	.L28	#
.L22:
	.loc 1 148 0
	movl	-48(%rbp), %eax	# i, tmp590
	cmpl	-68(%rbp), %eax	# L, tmp590
	jge	.L25	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# hmm, tmp591
	movl	136(%rax), %eax	# hmm_16(D)->M, D.7217
	cmpl	-40(%rbp), %eax	# k, D.7217
	jle	.L25	#,
	.loc 1 150 0 is_stmt 1
	movq	-88(%rbp), %rax	# forward, tmp592
	movq	8(%rax), %rax	# forward_7(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp593
	movslq	%edx, %rdx	# tmp593, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_105, D.7216
	movl	-40(%rbp), %edx	# k, tmp594
	movslq	%edx, %rdx	# tmp594, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_109, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp595
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	movq	(%rax), %rax	# *_111, D.7216
	movl	-40(%rbp), %ecx	# k, tmp596
	movslq	%ecx, %rcx	# tmp596, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_115, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp597
	movq	8(%rax), %rax	# backward_118(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp598
	movslq	%edx, %rdx	# tmp598, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_123, D.7216
	movl	-40(%rbp), %edx	# k, tmp599
	movslq	%edx, %rdx	# tmp599, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$2, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7216
	movl	(%rax), %eax	# *_128, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 149 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-40(%rbp), %eax	# k, tmp600
	leal	1(%rax), %r8d	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp601
	leal	1(%rax), %edi	#, D.7217
	movl	-40(%rbp), %edx	# k, tmp602
	movl	-48(%rbp), %eax	# i, tmp603
	movl	-72(%rbp), %esi	# A, tmp604
	movl	%esi, 40(%rsp)	# tmp604,
	movq	-8(%rbp), %rsi	# on, tmp605
	movq	%rsi, 32(%rsp)	# tmp605,
	movq	-16(%rbp), %rsi	# max, tmp606
	movq	%rsi, 24(%rsp)	# tmp606,
	movq	-24(%rbp), %rsi	# min, tmp607
	movq	%rsi, 16(%rsp)	# tmp607,
	movq	-104(%rbp), %rsi	# alignment, tmp608
	movq	%rsi, 8(%rsp)	# tmp608,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%r8d, %r9d	# D.7217,
	movl	%edi, %r8d	# D.7217,
	movl	$1, %ecx	#,
	movl	%eax, %esi	# tmp603,
	movl	$1, %edi	#,
	call	PrintTransition	#
.L25:
	.loc 1 153 0
	movl	-48(%rbp), %eax	# i, tmp609
	cmpl	-68(%rbp), %eax	# L, tmp609
	jge	.L26	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# hmm, tmp610
	movl	136(%rax), %eax	# hmm_16(D)->M, D.7217
	cmpl	-40(%rbp), %eax	# k, D.7217
	jle	.L26	#,
	.loc 1 155 0 is_stmt 1
	movq	-88(%rbp), %rax	# forward, tmp611
	movq	8(%rax), %rax	# forward_7(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp612
	movslq	%edx, %rdx	# tmp612, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_138, D.7216
	movl	-40(%rbp), %edx	# k, tmp613
	movslq	%edx, %rdx	# tmp613, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_142, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp614
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$8, %rax	#, D.7214
	movq	(%rax), %rax	# *_145, D.7216
	movl	-40(%rbp), %ecx	# k, tmp615
	movslq	%ecx, %rcx	# tmp615, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_149, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp616
	movq	16(%rax), %rax	# backward_118(D)->imx, D.7214
	movl	-48(%rbp), %edx	# i, tmp617
	movslq	%edx, %rdx	# tmp617, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_156, D.7216
	movl	-40(%rbp), %edx	# k, tmp618
	movslq	%edx, %rdx	# tmp618, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_160, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 154 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp619
	leal	1(%rax), %r8d	#, D.7217
	movl	-40(%rbp), %edi	# k, tmp620
	movl	-40(%rbp), %edx	# k, tmp621
	movl	-48(%rbp), %eax	# i, tmp622
	movl	-72(%rbp), %esi	# A, tmp623
	movl	%esi, 40(%rsp)	# tmp623,
	movq	-8(%rbp), %rsi	# on, tmp624
	movq	%rsi, 32(%rsp)	# tmp624,
	movq	-16(%rbp), %rsi	# max, tmp625
	movq	%rsi, 24(%rsp)	# tmp625,
	movq	-24(%rbp), %rsi	# min, tmp626
	movq	%rsi, 16(%rsp)	# tmp626,
	movq	-104(%rbp), %rsi	# alignment, tmp627
	movq	%rsi, 8(%rsp)	# tmp627,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%edi, %r9d	# tmp620,
	movl	$3, %ecx	#,
	movl	%eax, %esi	# tmp622,
	movl	$1, %edi	#,
	call	PrintTransition	#
.L26:
	.loc 1 158 0
	movq	-80(%rbp), %rax	# hmm, tmp628
	movl	136(%rax), %eax	# hmm_16(D)->M, D.7217
	subl	$1, %eax	#, D.7217
	cmpl	-40(%rbp), %eax	# k, D.7217
	jle	.L27	#,
	.loc 1 160 0
	movq	-88(%rbp), %rax	# forward, tmp629
	movq	8(%rax), %rax	# forward_7(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp630
	movslq	%edx, %rdx	# tmp630, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_170, D.7216
	movl	-40(%rbp), %edx	# k, tmp631
	movslq	%edx, %rdx	# tmp631, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_174, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp632
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$16, %rax	#, D.7214
	movq	(%rax), %rax	# *_177, D.7216
	movl	-40(%rbp), %ecx	# k, tmp633
	movslq	%ecx, %rcx	# tmp633, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_181, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp634
	movq	24(%rax), %rax	# backward_118(D)->dmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp635
	movslq	%edx, %rdx	# tmp635, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_187, D.7216
	movl	-40(%rbp), %edx	# k, tmp636
	movslq	%edx, %rdx	# tmp636, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$2, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7216
	movl	(%rax), %eax	# *_192, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 159 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-40(%rbp), %eax	# k, tmp637
	leal	1(%rax), %r8d	#, D.7217
	movl	-48(%rbp), %edi	# i, tmp638
	movl	-40(%rbp), %edx	# k, tmp639
	movl	-48(%rbp), %eax	# i, tmp640
	movl	-72(%rbp), %esi	# A, tmp641
	movl	%esi, 40(%rsp)	# tmp641,
	movq	-8(%rbp), %rsi	# on, tmp642
	movq	%rsi, 32(%rsp)	# tmp642,
	movq	-16(%rbp), %rsi	# max, tmp643
	movq	%rsi, 24(%rsp)	# tmp643,
	movq	-24(%rbp), %rsi	# min, tmp644
	movq	%rsi, 16(%rsp)	# tmp644,
	movq	-104(%rbp), %rsi	# alignment, tmp645
	movq	%rsi, 8(%rsp)	# tmp645,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%r8d, %r9d	# D.7217,
	movl	%edi, %r8d	# tmp638,
	movl	$2, %ecx	#,
	movl	%eax, %esi	# tmp640,
	movl	$1, %edi	#,
	call	PrintTransition	#
.L27:
	.loc 1 164 0
	movq	-88(%rbp), %rax	# forward, tmp646
	movq	8(%rax), %rax	# forward_7(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp647
	movslq	%edx, %rdx	# tmp647, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_200, D.7216
	movl	-40(%rbp), %edx	# k, tmp648
	movslq	%edx, %rdx	# tmp648, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_204, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp649
	movq	376(%rax), %rax	# hmm_16(D)->esc, D.7216
	movl	-40(%rbp), %ecx	# k, tmp650
	movslq	%ecx, %rcx	# tmp650, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_209, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp651
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp652
	movslq	%edx, %rdx	# tmp652, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_215, D.7216
	addq	$4, %rax	#, D.7216
	movl	(%rax), %eax	# *_217, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 163 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-48(%rbp), %edi	# i, tmp653
	movl	-40(%rbp), %edx	# k, tmp654
	movl	-48(%rbp), %eax	# i, tmp655
	movl	-72(%rbp), %esi	# A, tmp656
	movl	%esi, 40(%rsp)	# tmp656,
	movq	-8(%rbp), %rsi	# on, tmp657
	movq	%rsi, 32(%rsp)	# tmp657,
	movq	-16(%rbp), %rsi	# max, tmp658
	movq	%rsi, 24(%rsp)	# tmp658,
	movq	-24(%rbp), %rsi	# min, tmp659
	movq	%rsi, 16(%rsp)	# tmp659,
	movq	-104(%rbp), %rsi	# alignment, tmp660
	movq	%rsi, 8(%rsp)	# tmp660,
	movl	%ecx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%edi, %r8d	# tmp653,
	movl	$7, %ecx	#,
	movl	%eax, %esi	# tmp655,
	movl	$1, %edi	#,
	call	PrintTransition	#
	.loc 1 166 0
	jmp	.L28	#
.L20:
	.loc 1 169 0
	movl	-48(%rbp), %eax	# i, tmp661
	cmpl	-68(%rbp), %eax	# L, tmp661
	jge	.L29	#,
	.loc 1 171 0
	movq	-88(%rbp), %rax	# forward, tmp662
	movq	24(%rax), %rax	# forward_7(D)->dmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp663
	movslq	%edx, %rdx	# tmp663, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_224, D.7216
	movl	-40(%rbp), %edx	# k, tmp664
	movslq	%edx, %rdx	# tmp664, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_228, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp665
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$40, %rax	#, D.7214
	movq	(%rax), %rax	# *_231, D.7216
	movl	-40(%rbp), %ecx	# k, tmp666
	movslq	%ecx, %rcx	# tmp666, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_235, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp667
	movq	8(%rax), %rax	# backward_118(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp668
	movslq	%edx, %rdx	# tmp668, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_242, D.7216
	movl	-40(%rbp), %edx	# k, tmp669
	movslq	%edx, %rdx	# tmp669, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$2, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7216
	movl	(%rax), %eax	# *_247, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 170 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-40(%rbp), %eax	# k, tmp670
	leal	1(%rax), %r8d	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp671
	leal	1(%rax), %edi	#, D.7217
	movl	-40(%rbp), %edx	# k, tmp672
	movl	-48(%rbp), %eax	# i, tmp673
	movl	-72(%rbp), %esi	# A, tmp674
	movl	%esi, 40(%rsp)	# tmp674,
	movq	-8(%rbp), %rsi	# on, tmp675
	movq	%rsi, 32(%rsp)	# tmp675,
	movq	-16(%rbp), %rsi	# max, tmp676
	movq	%rsi, 24(%rsp)	# tmp676,
	movq	-24(%rbp), %rsi	# min, tmp677
	movq	%rsi, 16(%rsp)	# tmp677,
	movq	-104(%rbp), %rsi	# alignment, tmp678
	movq	%rsi, 8(%rsp)	# tmp678,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%r8d, %r9d	# D.7217,
	movl	%edi, %r8d	# D.7217,
	movl	$1, %ecx	#,
	movl	%eax, %esi	# tmp673,
	movl	$2, %edi	#,
	call	PrintTransition	#
.L29:
	.loc 1 175 0
	movq	-88(%rbp), %rax	# forward, tmp679
	movq	24(%rax), %rax	# forward_7(D)->dmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp680
	movslq	%edx, %rdx	# tmp680, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_256, D.7216
	movl	-40(%rbp), %edx	# k, tmp681
	movslq	%edx, %rdx	# tmp681, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_260, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp682
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$48, %rax	#, D.7214
	movq	(%rax), %rax	# *_263, D.7216
	movl	-40(%rbp), %ecx	# k, tmp683
	movslq	%ecx, %rcx	# tmp683, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_267, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp684
	movq	24(%rax), %rax	# backward_118(D)->dmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp685
	movslq	%edx, %rdx	# tmp685, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_273, D.7216
	movl	-40(%rbp), %edx	# k, tmp686
	movslq	%edx, %rdx	# tmp686, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$2, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7216
	movl	(%rax), %eax	# *_278, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 174 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-40(%rbp), %eax	# k, tmp687
	leal	1(%rax), %r8d	#, D.7217
	movl	-48(%rbp), %edi	# i, tmp688
	movl	-40(%rbp), %edx	# k, tmp689
	movl	-48(%rbp), %eax	# i, tmp690
	movl	-72(%rbp), %esi	# A, tmp691
	movl	%esi, 40(%rsp)	# tmp691,
	movq	-8(%rbp), %rsi	# on, tmp692
	movq	%rsi, 32(%rsp)	# tmp692,
	movq	-16(%rbp), %rsi	# max, tmp693
	movq	%rsi, 24(%rsp)	# tmp693,
	movq	-24(%rbp), %rsi	# min, tmp694
	movq	%rsi, 16(%rsp)	# tmp694,
	movq	-104(%rbp), %rsi	# alignment, tmp695
	movq	%rsi, 8(%rsp)	# tmp695,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%r8d, %r9d	# D.7217,
	movl	%edi, %r8d	# tmp688,
	movl	$2, %ecx	#,
	movl	%eax, %esi	# tmp690,
	movl	$2, %edi	#,
	call	PrintTransition	#
	.loc 1 178 0
	jmp	.L28	#
.L23:
	.loc 1 181 0
	movl	-48(%rbp), %eax	# i, tmp696
	cmpl	-68(%rbp), %eax	# L, tmp696
	jge	.L30	#,
	.loc 1 183 0
	movq	-88(%rbp), %rax	# forward, tmp697
	movq	16(%rax), %rax	# forward_7(D)->imx, D.7214
	movl	-48(%rbp), %edx	# i, tmp698
	movslq	%edx, %rdx	# tmp698, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_286, D.7216
	movl	-40(%rbp), %edx	# k, tmp699
	movslq	%edx, %rdx	# tmp699, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_290, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp700
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$24, %rax	#, D.7214
	movq	(%rax), %rax	# *_293, D.7216
	movl	-40(%rbp), %ecx	# k, tmp701
	movslq	%ecx, %rcx	# tmp701, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_297, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp702
	movq	8(%rax), %rax	# backward_118(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp703
	movslq	%edx, %rdx	# tmp703, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_304, D.7216
	movl	-40(%rbp), %edx	# k, tmp704
	movslq	%edx, %rdx	# tmp704, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$2, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7216
	movl	(%rax), %eax	# *_309, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 182 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-40(%rbp), %eax	# k, tmp705
	leal	1(%rax), %r8d	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp706
	leal	1(%rax), %edi	#, D.7217
	movl	-40(%rbp), %edx	# k, tmp707
	movl	-48(%rbp), %eax	# i, tmp708
	movl	-72(%rbp), %esi	# A, tmp709
	movl	%esi, 40(%rsp)	# tmp709,
	movq	-8(%rbp), %rsi	# on, tmp710
	movq	%rsi, 32(%rsp)	# tmp710,
	movq	-16(%rbp), %rsi	# max, tmp711
	movq	%rsi, 24(%rsp)	# tmp711,
	movq	-24(%rbp), %rsi	# min, tmp712
	movq	%rsi, 16(%rsp)	# tmp712,
	movq	-104(%rbp), %rsi	# alignment, tmp713
	movq	%rsi, 8(%rsp)	# tmp713,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%r8d, %r9d	# D.7217,
	movl	%edi, %r8d	# D.7217,
	movl	$1, %ecx	#,
	movl	%eax, %esi	# tmp708,
	movl	$3, %edi	#,
	call	PrintTransition	#
.L30:
	.loc 1 186 0
	movl	-48(%rbp), %eax	# i, tmp714
	cmpl	-68(%rbp), %eax	# L, tmp714
	jge	.L31	#,
	.loc 1 188 0
	movq	-88(%rbp), %rax	# forward, tmp715
	movq	16(%rax), %rax	# forward_7(D)->imx, D.7214
	movl	-48(%rbp), %edx	# i, tmp716
	movslq	%edx, %rdx	# tmp716, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_318, D.7216
	movl	-40(%rbp), %edx	# k, tmp717
	movslq	%edx, %rdx	# tmp717, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %edx	# *_322, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp718
	movq	312(%rax), %rax	# hmm_16(D)->tsc, D.7214
	addq	$32, %rax	#, D.7214
	movq	(%rax), %rax	# *_325, D.7216
	movl	-40(%rbp), %ecx	# k, tmp719
	movslq	%ecx, %rcx	# tmp719, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_329, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp720
	movq	16(%rax), %rax	# backward_118(D)->imx, D.7214
	movl	-48(%rbp), %edx	# i, tmp721
	movslq	%edx, %rdx	# tmp721, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_336, D.7216
	movl	-40(%rbp), %edx	# k, tmp722
	movslq	%edx, %rdx	# tmp722, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_340, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 187 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %ecx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp723
	leal	1(%rax), %r8d	#, D.7217
	movl	-40(%rbp), %edi	# k, tmp724
	movl	-40(%rbp), %edx	# k, tmp725
	movl	-48(%rbp), %eax	# i, tmp726
	movl	-72(%rbp), %esi	# A, tmp727
	movl	%esi, 40(%rsp)	# tmp727,
	movq	-8(%rbp), %rsi	# on, tmp728
	movq	%rsi, 32(%rsp)	# tmp728,
	movq	-16(%rbp), %rsi	# max, tmp729
	movq	%rsi, 24(%rsp)	# tmp729,
	movq	-24(%rbp), %rsi	# min, tmp730
	movq	%rsi, 16(%rsp)	# tmp730,
	movq	-104(%rbp), %rsi	# alignment, tmp731
	movq	%rsi, 8(%rsp)	# tmp731,
	movl	%ecx, (%rsp)	# D.7217,
	movl	%edi, %r9d	# tmp724,
	movl	$3, %ecx	#,
	movl	%eax, %esi	# tmp726,
	movl	$3, %edi	#,
	call	PrintTransition	#
	.loc 1 191 0
	jmp	.L28	#
.L31:
	jmp	.L28	#
.L24:
	.loc 1 194 0
	movl	-48(%rbp), %eax	# i, tmp732
	cmpl	-68(%rbp), %eax	# L, tmp732
	jge	.L32	#,
	.loc 1 196 0
	movq	-88(%rbp), %rax	# forward, tmp733
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp734
	movslq	%edx, %rdx	# tmp734, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_348, D.7216
	movl	(%rax), %edx	# *_349, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp735
	movq	368(%rax), %rax	# hmm_16(D)->bsc, D.7216
	movl	-40(%rbp), %ecx	# k, tmp736
	movslq	%ecx, %rcx	# tmp736, D.7215
	salq	$2, %rcx	#, D.7215
	addq	%rcx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_354, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp737
	movq	8(%rax), %rax	# backward_118(D)->mmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp738
	movslq	%edx, %rdx	# tmp738, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_361, D.7216
	movl	-40(%rbp), %edx	# k, tmp739
	movslq	%edx, %rdx	# tmp739, D.7215
	salq	$2, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7216
	movl	(%rax), %eax	# *_365, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 195 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp740
	leal	1(%rax), %edi	#, D.7217
	movl	-40(%rbp), %esi	# k, tmp741
	movl	-48(%rbp), %eax	# i, tmp742
	movl	-72(%rbp), %ecx	# A, tmp743
	movl	%ecx, 40(%rsp)	# tmp743,
	movq	-8(%rbp), %rcx	# on, tmp744
	movq	%rcx, 32(%rsp)	# tmp744,
	movq	-16(%rbp), %rcx	# max, tmp745
	movq	%rcx, 24(%rsp)	# tmp745,
	movq	-24(%rbp), %rcx	# min, tmp746
	movq	%rcx, 16(%rsp)	# tmp746,
	movq	-104(%rbp), %rcx	# alignment, tmp747
	movq	%rcx, 8(%rsp)	# tmp747,
	movl	%edx, (%rsp)	# D.7217,
	movl	%esi, %r9d	# tmp741,
	movl	%edi, %r8d	# D.7217,
	movl	$1, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp742,
	movl	$6, %edi	#,
	call	PrintTransition	#
	.loc 1 198 0
	jmp	.L49	#
.L32:
.L49:
	nop
.L28:
	.loc 1 143 0
	addl	$1, -40(%rbp)	#, k
.L18:
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# k, tmp748
	cmpl	-32(%rbp), %eax	# kmax, tmp748
	jle	.L33	#,
	.loc 1 206 0 is_stmt 1
	movsbl	-49(%rbp), %eax	# state, D.7217
	cmpl	$10, %eax	#, D.7217
	ja	.L34	#,
	movl	%eax, %eax	# D.7217, tmp749
	movq	.L36(,%rax,8), %rax	#, tmp750
	jmp	*%rax	# tmp750
	.section	.rodata
	.align 8
	.align 4
.L36:
	.quad	.L34
	.quad	.L50
	.quad	.L50
	.quad	.L50
	.quad	.L37
	.quad	.L38
	.quad	.L50
	.quad	.L39
	.quad	.L40
	.quad	.L50
	.quad	.L41
	.text
.L38:
	.loc 1 210 0
	movq	-88(%rbp), %rax	# forward, tmp751
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp752
	movslq	%edx, %rdx	# tmp752, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_375, D.7216
	addq	$16, %rax	#, D.7216
	movl	(%rax), %edx	# *_377, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp753
	movl	336(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp754
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp755
	movslq	%edx, %rdx	# tmp755, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_384, D.7216
	movl	(%rax), %eax	# *_385, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 209 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp756
	movl	-48(%rbp), %eax	# i, tmp757
	movl	-72(%rbp), %ecx	# A, tmp758
	movl	%ecx, 40(%rsp)	# tmp758,
	movq	-8(%rbp), %rcx	# on, tmp759
	movq	%rcx, 32(%rsp)	# tmp759,
	movq	-16(%rbp), %rcx	# max, tmp760
	movq	%rcx, 24(%rsp)	# tmp760,
	movq	-24(%rbp), %rcx	# min, tmp761
	movq	%rcx, 16(%rsp)	# tmp761,
	movq	-104(%rbp), %rcx	# alignment, tmp762
	movq	%rcx, 8(%rsp)	# tmp762,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp756,
	movl	$6, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp757,
	movl	$5, %edi	#,
	call	PrintTransition	#
	.loc 1 213 0
	movl	-48(%rbp), %eax	# i, tmp763
	cmpl	-68(%rbp), %eax	# L, tmp763
	jge	.L42	#,
	.loc 1 215 0
	movq	-88(%rbp), %rax	# forward, tmp764
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp765
	movslq	%edx, %rdx	# tmp765, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_392, D.7216
	addq	$16, %rax	#, D.7216
	movl	(%rax), %edx	# *_394, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp766
	movl	340(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp767
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp768
	movslq	%edx, %rdx	# tmp768, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_402, D.7216
	addq	$16, %rax	#, D.7216
	movl	(%rax), %eax	# *_404, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 214 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp769
	leal	1(%rax), %esi	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp770
	movl	-72(%rbp), %ecx	# A, tmp771
	movl	%ecx, 40(%rsp)	# tmp771,
	movq	-8(%rbp), %rcx	# on, tmp772
	movq	%rcx, 32(%rsp)	# tmp772,
	movq	-16(%rbp), %rcx	# max, tmp773
	movq	%rcx, 24(%rsp)	# tmp773,
	movq	-24(%rbp), %rcx	# min, tmp774
	movq	%rcx, 16(%rsp)	# tmp774,
	movq	-104(%rbp), %rcx	# alignment, tmp775
	movq	%rcx, 8(%rsp)	# tmp775,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# D.7217,
	movl	$5, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp770,
	movl	$5, %edi	#,
	call	PrintTransition	#
	.loc 1 217 0
	jmp	.L43	#
.L42:
	jmp	.L43	#
.L41:
	.loc 1 221 0
	movq	-88(%rbp), %rax	# forward, tmp776
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp777
	movslq	%edx, %rdx	# tmp777, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_412, D.7216
	addq	$12, %rax	#, D.7216
	movl	(%rax), %edx	# *_414, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp778
	movl	360(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp779
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp780
	movslq	%edx, %rdx	# tmp780, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_421, D.7216
	movl	(%rax), %eax	# *_422, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 220 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp781
	movl	-48(%rbp), %eax	# i, tmp782
	movl	-72(%rbp), %ecx	# A, tmp783
	movl	%ecx, 40(%rsp)	# tmp783,
	movq	-8(%rbp), %rcx	# on, tmp784
	movq	%rcx, 32(%rsp)	# tmp784,
	movq	-16(%rbp), %rcx	# max, tmp785
	movq	%rcx, 24(%rsp)	# tmp785,
	movq	-24(%rbp), %rcx	# min, tmp786
	movq	%rcx, 16(%rsp)	# tmp786,
	movq	-104(%rbp), %rcx	# alignment, tmp787
	movq	%rcx, 8(%rsp)	# tmp787,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp781,
	movl	$6, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp782,
	movl	$10, %edi	#,
	call	PrintTransition	#
	.loc 1 224 0
	movl	-48(%rbp), %eax	# i, tmp788
	cmpl	-68(%rbp), %eax	# L, tmp788
	jge	.L44	#,
	.loc 1 226 0
	movq	-88(%rbp), %rax	# forward, tmp789
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp790
	movslq	%edx, %rdx	# tmp790, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_429, D.7216
	addq	$12, %rax	#, D.7216
	movl	(%rax), %edx	# *_431, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp791
	movl	364(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp792
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp793
	movslq	%edx, %rdx	# tmp793, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_439, D.7216
	addq	$12, %rax	#, D.7216
	movl	(%rax), %eax	# *_441, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 225 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp794
	leal	1(%rax), %esi	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp795
	movl	-72(%rbp), %ecx	# A, tmp796
	movl	%ecx, 40(%rsp)	# tmp796,
	movq	-8(%rbp), %rcx	# on, tmp797
	movq	%rcx, 32(%rsp)	# tmp797,
	movq	-16(%rbp), %rcx	# max, tmp798
	movq	%rcx, 24(%rsp)	# tmp798,
	movq	-24(%rbp), %rcx	# min, tmp799
	movq	%rcx, 16(%rsp)	# tmp799,
	movq	-104(%rbp), %rcx	# alignment, tmp800
	movq	%rcx, 8(%rsp)	# tmp800,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# D.7217,
	movl	$10, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp795,
	movl	$10, %edi	#,
	call	PrintTransition	#
	.loc 1 228 0
	jmp	.L43	#
.L44:
	jmp	.L43	#
.L40:
	.loc 1 232 0
	movq	-88(%rbp), %rax	# forward, tmp801
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp802
	movslq	%edx, %rdx	# tmp802, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_449, D.7216
	addq	$8, %rax	#, D.7216
	movl	(%rax), %edx	# *_451, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp803
	movl	352(%rax), %eax	# hmm_16(D)->xsc, D.7217
	addl	%edx, %eax	# D.7217, D.7217
	.loc 1 231 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp804
	movl	-48(%rbp), %eax	# i, tmp805
	movl	-72(%rbp), %ecx	# A, tmp806
	movl	%ecx, 40(%rsp)	# tmp806,
	movq	-8(%rbp), %rcx	# on, tmp807
	movq	%rcx, 32(%rsp)	# tmp807,
	movq	-16(%rbp), %rcx	# max, tmp808
	movq	%rcx, 24(%rsp)	# tmp808,
	movq	-24(%rbp), %rcx	# min, tmp809
	movq	%rcx, 16(%rsp)	# tmp809,
	movq	-104(%rbp), %rcx	# alignment, tmp810
	movq	%rcx, 8(%rsp)	# tmp810,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp804,
	movl	$9, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp805,
	movl	$8, %edi	#,
	call	PrintTransition	#
	.loc 1 235 0
	movl	-48(%rbp), %eax	# i, tmp811
	cmpl	-68(%rbp), %eax	# L, tmp811
	jge	.L45	#,
	.loc 1 237 0
	movq	-88(%rbp), %rax	# forward, tmp812
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp813
	movslq	%edx, %rdx	# tmp813, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_459, D.7216
	addq	$8, %rax	#, D.7216
	movl	(%rax), %edx	# *_461, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp814
	movl	356(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp815
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp816
	movslq	%edx, %rdx	# tmp816, D.7220
	addq	$1, %rdx	#, D.7220
	salq	$3, %rdx	#, D.7220
	addq	%rdx, %rax	# D.7220, D.7214
	movq	(%rax), %rax	# *_469, D.7216
	addq	$8, %rax	#, D.7216
	movl	(%rax), %eax	# *_471, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 236 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %eax	# i, tmp817
	leal	1(%rax), %esi	#, D.7217
	movl	-48(%rbp), %eax	# i, tmp818
	movl	-72(%rbp), %ecx	# A, tmp819
	movl	%ecx, 40(%rsp)	# tmp819,
	movq	-8(%rbp), %rcx	# on, tmp820
	movq	%rcx, 32(%rsp)	# tmp820,
	movq	-16(%rbp), %rcx	# max, tmp821
	movq	%rcx, 24(%rsp)	# tmp821,
	movq	-24(%rbp), %rcx	# min, tmp822
	movq	%rcx, 16(%rsp)	# tmp822,
	movq	-104(%rbp), %rcx	# alignment, tmp823
	movq	%rcx, 8(%rsp)	# tmp823,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# D.7217,
	movl	$8, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp818,
	movl	$8, %edi	#,
	call	PrintTransition	#
	.loc 1 239 0
	jmp	.L43	#
.L45:
	jmp	.L43	#
.L39:
	.loc 1 243 0
	movq	-88(%rbp), %rax	# forward, tmp824
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp825
	movslq	%edx, %rdx	# tmp825, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_479, D.7216
	addq	$4, %rax	#, D.7216
	movl	(%rax), %edx	# *_481, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp826
	movl	344(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp827
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp828
	movslq	%edx, %rdx	# tmp828, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_488, D.7216
	addq	$8, %rax	#, D.7216
	movl	(%rax), %eax	# *_490, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 242 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp829
	movl	-48(%rbp), %eax	# i, tmp830
	movl	-72(%rbp), %ecx	# A, tmp831
	movl	%ecx, 40(%rsp)	# tmp831,
	movq	-8(%rbp), %rcx	# on, tmp832
	movq	%rcx, 32(%rsp)	# tmp832,
	movq	-16(%rbp), %rcx	# max, tmp833
	movq	%rcx, 24(%rsp)	# tmp833,
	movq	-24(%rbp), %rcx	# min, tmp834
	movq	%rcx, 16(%rsp)	# tmp834,
	movq	-104(%rbp), %rcx	# alignment, tmp835
	movq	%rcx, 8(%rsp)	# tmp835,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp829,
	movl	$8, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp830,
	movl	$7, %edi	#,
	call	PrintTransition	#
	.loc 1 247 0
	movq	-88(%rbp), %rax	# forward, tmp836
	movq	(%rax), %rax	# forward_7(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp837
	movslq	%edx, %rdx	# tmp837, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_497, D.7216
	addq	$4, %rax	#, D.7216
	movl	(%rax), %edx	# *_499, D.7217
	movq	-80(%rbp), %rax	# hmm, tmp838
	movl	348(%rax), %eax	# hmm_16(D)->xsc, D.7217
	leal	(%rdx,%rax), %ecx	#, D.7217
	movq	-96(%rbp), %rax	# backward, tmp839
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp840
	movslq	%edx, %rdx	# tmp840, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_506, D.7216
	addq	$12, %rax	#, D.7216
	movl	(%rax), %eax	# *_508, D.7217
	addl	%ecx, %eax	# D.7217, D.7217
	.loc 1 246 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp841
	movl	-48(%rbp), %eax	# i, tmp842
	movl	-72(%rbp), %ecx	# A, tmp843
	movl	%ecx, 40(%rsp)	# tmp843,
	movq	-8(%rbp), %rcx	# on, tmp844
	movq	%rcx, 32(%rsp)	# tmp844,
	movq	-16(%rbp), %rcx	# max, tmp845
	movq	%rcx, 24(%rsp)	# tmp845,
	movq	-24(%rbp), %rcx	# min, tmp846
	movq	%rcx, 16(%rsp)	# tmp846,
	movq	-104(%rbp), %rcx	# alignment, tmp847
	movq	%rcx, 8(%rsp)	# tmp847,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp841,
	movl	$10, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp842,
	movl	$7, %edi	#,
	call	PrintTransition	#
	.loc 1 249 0
	jmp	.L43	#
.L37:
	.loc 1 252 0
	cmpl	$0, -48(%rbp)	#, i
	jne	.L46	#,
	.loc 1 254 0
	movq	-96(%rbp), %rax	# backward, tmp848
	movq	(%rax), %rax	# backward_118(D)->xmx, D.7214
	movl	-48(%rbp), %edx	# i, tmp849
	movslq	%edx, %rdx	# tmp849, D.7215
	salq	$3, %rdx	#, D.7215
	addq	%rdx, %rax	# D.7215, D.7214
	movq	(%rax), %rax	# *_515, D.7216
	addq	$16, %rax	#, D.7216
	movl	(%rax), %eax	# *_517, D.7217
	.loc 1 253 0
	subl	-28(%rbp), %eax	# sc, D.7217
	movl	%eax, %edx	# D.7217, D.7217
	movl	-48(%rbp), %esi	# i, tmp850
	movl	-48(%rbp), %eax	# i, tmp851
	movl	-72(%rbp), %ecx	# A, tmp852
	movl	%ecx, 40(%rsp)	# tmp852,
	movq	-8(%rbp), %rcx	# on, tmp853
	movq	%rcx, 32(%rsp)	# tmp853,
	movq	-16(%rbp), %rcx	# max, tmp854
	movq	%rcx, 24(%rsp)	# tmp854,
	movq	-24(%rbp), %rcx	# min, tmp855
	movq	%rcx, 16(%rsp)	# tmp855,
	movq	-104(%rbp), %rcx	# alignment, tmp856
	movq	%rcx, 8(%rsp)	# tmp856,
	movl	%edx, (%rsp)	# D.7217,
	movl	$0, %r9d	#,
	movl	%esi, %r8d	# tmp850,
	movl	$5, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp851,
	movl	$4, %edi	#,
	call	PrintTransition	#
	.loc 1 256 0
	jmp	.L43	#
.L46:
	jmp	.L43	#
.L34:
	.loc 1 266 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L43	#
.L50:
	.loc 1 263 0
	nop
.L43:
	.loc 1 123 0
	movzbl	-49(%rbp), %eax	# state, state.0
	addl	$1, %eax	#, tmp857
	movb	%al, -49(%rbp)	# tmp857, state
.L12:
	.loc 1 123 0 is_stmt 0 discriminator 1
	cmpb	$10, -49(%rbp)	#, state
	jle	.L47	#,
	.loc 1 113 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L3:
	.loc 1 113 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp858
	cmpl	-68(%rbp), %eax	# L, tmp858
	jle	.L48	#,
	.loc 1 272 0 is_stmt 1
	movq	-24(%rbp), %rax	# min, tmp859
	movq	%rax, %rdi	# tmp859,
	call	free	#
	.loc 1 273 0
	movq	-16(%rbp), %rax	# max, tmp860
	movq	%rax, %rdi	# tmp860,
	call	free	#
	.loc 1 274 0
	movq	-8(%rbp), %rax	# on, tmp861
	movq	%rax, %rdi	# tmp861,
	call	free	#
	.loc 1 276 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	DisplayPlan7PostAlign, .-DisplayPlan7PostAlign
	.section	.rodata
.LC1:
	.string	"         *      "
.LC2:
	.string	"    %c      "
.LC3:
	.string	"\nN    "
.LC4:
	.string	"\nM%-3d "
.LC5:
	.string	"\nI%-3d "
.LC6:
	.string	"\nE    "
.LC7:
	.string	"\nC    "
.LC8:
	.string	"\nJ    "
.LC9:
	.string	"\nB    "
.LC10:
	.string	"\nD%-3d "
.LC11:
	.string	"\n"
	.text
	.globl	DisplayPlan7Matrix
	.type	DisplayPlan7Matrix, @function
DisplayPlan7Matrix:
.LFB4:
	.loc 1 299 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dsq, dsq
	movl	%esi, -28(%rbp)	# L, L
	movq	%rdx, -40(%rbp)	# hmm, hmm
	movq	%rcx, -48(%rbp)	# mx, mx
	.loc 1 303 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 304 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L52	#
.L53:
	.loc 1 304 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, D.7223
	movq	-24(%rbp), %rax	# dsq, tmp130
	addq	%rdx, %rax	# D.7223, D.7224
	movzbl	(%rax), %eax	# *_17, D.7225
	movsbl	%al, %eax	# D.7225, D.7226
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7225
	movsbl	%al, %eax	# D.7225, D.7226
	movl	%eax, %esi	# D.7226,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	addl	$1, -8(%rbp)	#, i
.L52:
	.loc 1 304 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp132
	cmpl	-28(%rbp), %eax	# L, tmp132
	jle	.L53	#,
	.loc 1 305 0 is_stmt 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 306 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L54	#
.L55:
	.loc 1 306 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp133
	movq	(%rax), %rax	# mx_24(D)->xmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp134
	movslq	%edx, %rdx	# tmp134, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_28, D.7229
	addq	$16, %rax	#, D.7229
	movl	(%rax), %eax	# *_30, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L54:
	.loc 1 306 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp135
	cmpl	-28(%rbp), %eax	# L, tmp135
	jle	.L55	#,
	.loc 1 307 0 is_stmt 1
	movl	$1, -4(%rbp)	#, k
	jmp	.L56	#
.L59:
	.loc 1 308 0
	movl	-4(%rbp), %eax	# k, tmp136
	movl	%eax, %esi	# tmp136,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 309 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L57	#
.L58:
	.loc 1 309 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp137
	movq	8(%rax), %rax	# mx_24(D)->mmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_40, D.7229
	movl	-4(%rbp), %edx	# k, tmp139
	movslq	%edx, %rdx	# tmp139, D.7228
	salq	$2, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7229
	movl	(%rax), %eax	# *_44, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L57:
	.loc 1 309 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp140
	cmpl	-28(%rbp), %eax	# L, tmp140
	jle	.L58	#,
	.loc 1 307 0 is_stmt 1
	addl	$1, -4(%rbp)	#, k
.L56:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hmm, tmp141
	movl	136(%rax), %eax	# hmm_34(D)->M, D.7226
	cmpl	-4(%rbp), %eax	# k, D.7226
	jge	.L59	#,
	.loc 1 311 0 is_stmt 1
	movl	$1, -4(%rbp)	#, k
	jmp	.L60	#
.L63:
	.loc 1 312 0
	movl	-4(%rbp), %eax	# k, tmp142
	movl	%eax, %esi	# tmp142,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 313 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L61	#
.L62:
	.loc 1 313 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp143
	movq	16(%rax), %rax	# mx_24(D)->imx, D.7227
	movl	-8(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_54, D.7229
	movl	-4(%rbp), %edx	# k, tmp145
	movslq	%edx, %rdx	# tmp145, D.7228
	salq	$2, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7229
	movl	(%rax), %eax	# *_58, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L61:
	.loc 1 313 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp146
	cmpl	-28(%rbp), %eax	# L, tmp146
	jle	.L62	#,
	.loc 1 311 0 is_stmt 1
	addl	$1, -4(%rbp)	#, k
.L60:
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hmm, tmp147
	movl	136(%rax), %eax	# hmm_34(D)->M, D.7226
	cmpl	-4(%rbp), %eax	# k, D.7226
	jg	.L63	#,
	.loc 1 315 0 is_stmt 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 316 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L64	#
.L65:
	.loc 1 316 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp148
	movq	(%rax), %rax	# mx_24(D)->xmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_66, D.7229
	addq	$4, %rax	#, D.7229
	movl	(%rax), %eax	# *_68, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L64:
	.loc 1 316 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp150
	cmpl	-28(%rbp), %eax	# L, tmp150
	jle	.L65	#,
	.loc 1 317 0 is_stmt 1
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 318 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L66	#
.L67:
	.loc 1 318 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp151
	movq	(%rax), %rax	# mx_24(D)->xmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp152
	movslq	%edx, %rdx	# tmp152, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_75, D.7229
	addq	$8, %rax	#, D.7229
	movl	(%rax), %eax	# *_77, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L66:
	.loc 1 318 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp153
	cmpl	-28(%rbp), %eax	# L, tmp153
	jle	.L67	#,
	.loc 1 319 0 is_stmt 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 320 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L68	#
.L69:
	.loc 1 320 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp154
	movq	(%rax), %rax	# mx_24(D)->xmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp155
	movslq	%edx, %rdx	# tmp155, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_84, D.7229
	addq	$12, %rax	#, D.7229
	movl	(%rax), %eax	# *_86, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L68:
	.loc 1 320 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp156
	cmpl	-28(%rbp), %eax	# L, tmp156
	jle	.L69	#,
	.loc 1 321 0 is_stmt 1
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 322 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L70	#
.L71:
	.loc 1 322 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp157
	movq	(%rax), %rax	# mx_24(D)->xmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp158
	movslq	%edx, %rdx	# tmp158, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_93, D.7229
	movl	(%rax), %eax	# *_94, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L70:
	.loc 1 322 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp159
	cmpl	-28(%rbp), %eax	# L, tmp159
	jle	.L71	#,
	.loc 1 323 0 is_stmt 1
	movl	$2, -4(%rbp)	#, k
	jmp	.L72	#
.L75:
	.loc 1 324 0
	movl	-4(%rbp), %eax	# k, tmp160
	movl	%eax, %esi	# tmp160,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 325 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 325 0 is_stmt 0 discriminator 2
	movq	-48(%rbp), %rax	# mx, tmp161
	movq	24(%rax), %rax	# mx_24(D)->dmx, D.7227
	movl	-8(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.7228
	salq	$3, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7227
	movq	(%rax), %rax	# *_103, D.7229
	movl	-4(%rbp), %edx	# k, tmp163
	movslq	%edx, %rdx	# tmp163, D.7228
	salq	$2, %rdx	#, D.7228
	addq	%rdx, %rax	# D.7228, D.7229
	movl	(%rax), %eax	# *_107, D.7226
	movl	%eax, %edi	# D.7226,
	call	PrintIscore	#
	addl	$1, -8(%rbp)	#, i
.L73:
	.loc 1 325 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp164
	cmpl	-28(%rbp), %eax	# L, tmp164
	jle	.L74	#,
	.loc 1 323 0 is_stmt 1
	addl	$1, -4(%rbp)	#, k
.L72:
	.loc 1 323 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hmm, tmp165
	movl	136(%rax), %eax	# hmm_34(D)->M, D.7226
	cmpl	-4(%rbp), %eax	# k, D.7226
	jg	.L75	#,
	.loc 1 327 0 is_stmt 1
	movl	$.LC11, %edi	#,
	call	puts	#
	.loc 1 328 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	DisplayPlan7Matrix, .-DisplayPlan7Matrix
	.section	.rodata
.LC13:
	.string	"%- #11.3e"
	.text
	.globl	PrintIscore
	.type	PrintIscore, @function
PrintIscore:
.LFB5:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# sc, sc
	.loc 1 334 0
	cvtsi2sd	-20(%rbp), %xmm0	# sc, tmp59
	movsd	%xmm0, -16(%rbp)	# tmp59, dsc
	.loc 1 335 0
	movabsq	$4654059855337520623, %rax	#, tmp60
	movq	%rax, -8(%rbp)	# tmp60, div
	.loc 1 336 0
	movsd	-16(%rbp), %xmm0	# dsc, tmp62
	divsd	-8(%rbp), %xmm0	# div, tmp61
	movsd	%xmm0, -16(%rbp)	# tmp61, dsc
	.loc 1 337 0
	movq	-16(%rbp), %rax	# dsc, tmp63
	movq	%rax, -32(%rbp)	# tmp63, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	movl	$.LC13, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 338 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	PrintIscore, .-PrintIscore
	.section	.rodata
.LC14:
	.string	"M%d"
.LC15:
	.string	"D%d"
.LC16:
	.string	"I%d"
.LC17:
	.string	"bad transition"
.LC19:
	.string	"%d\t%s\t%d\t%s\t%-14.7g\t"
	.text
	.globl	PrintTransition
	.type	PrintTransition, @function
PrintTransition:
.LFB6:
	.loc 1 353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movl	%esi, -72(%rbp)	# isrc, isrc
	movl	%edx, -76(%rbp)	# ksrc, ksrc
	movl	%ecx, %eax	# dest, tmp203
	movl	%r8d, -84(%rbp)	# idest, idest
	movl	%r9d, -88(%rbp)	# kdest, kdest
	movb	%dil, -68(%rbp)	# tmp202, src
	movb	%al, -80(%rbp)	# tmp203, dest
	movq	24(%rbp), %rax	# alignment, tmp204
	movq	%rax, -96(%rbp)	# tmp204, alignment
	movq	32(%rbp), %rax	# min, tmp205
	movq	%rax, -104(%rbp)	# tmp205, min
	movq	40(%rbp), %rax	# max, tmp206
	movq	%rax, -112(%rbp)	# tmp206, max
	movq	48(%rbp), %rax	# on, tmp207
	movq	%rax, -120(%rbp)	# tmp207, on
	.loc 1 353 0
	movq	%fs:40, %rax	#, tmp310
	movq	%rax, -8(%rbp)	# tmp310, D.7253
	xorl	%eax, %eax	# tmp310
	.loc 1 363 0
	movl	$0, -36(%rbp)	#, near
	.loc 1 365 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L78	#
.L89:
	.loc 1 366 0
	movl	-56(%rbp), %eax	# j, tmp208
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7243
	movq	-120(%rbp), %rax	# on, tmp209
	addq	%rdx, %rax	# D.7243, D.7244
	movl	$0, (%rax)	#, *_19
	.loc 1 367 0
	movl	$0, -44(%rbp)	#, pos
	movl	-56(%rbp), %eax	# j, tmp210
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7243
	movq	-104(%rbp), %rax	# min, tmp211
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_24, tmp212
	movl	%eax, -52(%rbp)	# tmp212, tpos
	jmp	.L79	#
.L88:
	.loc 1 369 0
	movl	-56(%rbp), %eax	# j, tmp213
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp214
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_34, D.7247
	movq	24(%rax), %rax	# _35->pos, D.7244
	movl	-52(%rbp), %edx	# tpos, tmp215
	movslq	%edx, %rdx	# tmp215, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_39, D.7245
	testl	%eax, %eax	# D.7245
	je	.L80	#,
	.loc 1 370 0
	movl	-56(%rbp), %eax	# j, tmp216
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp217
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_43, D.7247
	movq	24(%rax), %rax	# _44->pos, D.7244
	movl	-52(%rbp), %edx	# tpos, tmp218
	movslq	%edx, %rdx	# tmp218, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_48, tmp219
	movl	%eax, -44(%rbp)	# tmp219, pos
.L80:
	.loc 1 372 0
	movl	-56(%rbp), %eax	# j, tmp220
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp221
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_52, D.7247
	movq	8(%rax), %rdx	# _53->statetype, D.7248
	movl	-52(%rbp), %eax	# tpos, tmp222
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_56, D.7250
	cmpb	-68(%rbp), %al	# src, D.7250
	jne	.L81	#,
	.loc 1 373 0
	movl	-56(%rbp), %eax	# j, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp224
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_61, D.7247
	movq	16(%rax), %rax	# _62->nodeidx, D.7244
	movl	-52(%rbp), %edx	# tpos, tmp225
	movslq	%edx, %rdx	# tmp225, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_66, D.7245
	cmpl	-76(%rbp), %eax	# ksrc, D.7245
	jne	.L81	#,
	.loc 1 374 0
	movl	-72(%rbp), %eax	# isrc, tmp226
	cmpl	-44(%rbp), %eax	# pos, tmp226
	jne	.L81	#,
	.loc 1 375 0
	movl	$1, -36(%rbp)	#, near
.L81:
	.loc 1 377 0
	movl	-56(%rbp), %eax	# j, tmp227
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp228
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_73, D.7247
	movq	8(%rax), %rdx	# _74->statetype, D.7248
	movl	-52(%rbp), %eax	# tpos, tmp229
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_77, D.7250
	cmpb	-80(%rbp), %al	# dest, D.7250
	jne	.L82	#,
	.loc 1 378 0
	movl	-56(%rbp), %eax	# j, tmp230
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp231
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_82, D.7247
	movq	16(%rax), %rax	# _83->nodeidx, D.7244
	movl	-52(%rbp), %edx	# tpos, tmp232
	movslq	%edx, %rdx	# tmp232, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_87, D.7245
	cmpl	-88(%rbp), %eax	# kdest, D.7245
	jne	.L82	#,
	.loc 1 379 0
	movl	-84(%rbp), %eax	# idest, tmp233
	cmpl	-44(%rbp), %eax	# pos, tmp233
	jne	.L82	#,
	.loc 1 380 0
	movl	$1, -36(%rbp)	#, near
.L82:
	.loc 1 382 0
	movl	-56(%rbp), %eax	# j, tmp234
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp235
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_94, D.7247
	movl	(%rax), %eax	# _95->tlen, D.7245
	subl	$1, %eax	#, D.7245
	cmpl	-52(%rbp), %eax	# tpos, D.7245
	jle	.L83	#,
	.loc 1 384 0
	movl	-52(%rbp), %eax	# tpos, tmp239
	addl	$1, %eax	#, tmp238
	movl	%eax, -48(%rbp)	# tmp238, tnext
	.loc 1 388 0
	movl	-56(%rbp), %eax	# j, tmp240
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp241
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_101, D.7247
	movq	8(%rax), %rdx	# _102->statetype, D.7248
	movl	-52(%rbp), %eax	# tpos, tmp242
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_105, D.7250
	cmpb	$6, %al	#, D.7250
	jne	.L84	#,
	.loc 1 389 0
	jmp	.L85	#
.L86:
	.loc 1 390 0
	addl	$1, -48(%rbp)	#, tnext
.L85:
	.loc 1 389 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp243
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp244
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_109, D.7247
	movq	8(%rax), %rdx	# _110->statetype, D.7248
	movl	-48(%rbp), %eax	# tnext, tmp245
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_113, D.7250
	cmpb	$2, %al	#, D.7250
	jne	.L84	#,
	.loc 1 389 0 is_stmt 0 discriminator 2
	movl	-56(%rbp), %eax	# j, tmp246
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp247
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_117, D.7247
	movl	(%rax), %eax	# _118->tlen, D.7245
	subl	$1, %eax	#, D.7245
	cmpl	-48(%rbp), %eax	# tnext, D.7245
	jg	.L86	#,
.L84:
	.loc 1 392 0 is_stmt 1
	movl	-56(%rbp), %eax	# j, tmp248
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp249
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_124, D.7247
	movq	24(%rax), %rax	# _125->pos, D.7244
	movl	-48(%rbp), %edx	# tnext, tmp250
	movslq	%edx, %rdx	# tmp250, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_129, tmp251
	movl	%eax, -40(%rbp)	# tmp251, next
	.loc 1 393 0
	cmpl	$0, -40(%rbp)	#, next
	jne	.L87	#,
	.loc 1 394 0
	movl	-44(%rbp), %eax	# pos, tmp252
	movl	%eax, -40(%rbp)	# tmp252, next
.L87:
	.loc 1 396 0
	movl	-56(%rbp), %eax	# j, tmp253
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp254
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_134, D.7247
	movq	8(%rax), %rdx	# _135->statetype, D.7248
	movl	-52(%rbp), %eax	# tpos, tmp255
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_138, D.7250
	cmpb	-68(%rbp), %al	# src, D.7250
	jne	.L83	#,
	.loc 1 397 0
	movl	-56(%rbp), %eax	# j, tmp256
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp257
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_142, D.7247
	movq	16(%rax), %rax	# _143->nodeidx, D.7244
	movl	-52(%rbp), %edx	# tpos, tmp258
	movslq	%edx, %rdx	# tmp258, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_147, D.7245
	cmpl	-76(%rbp), %eax	# ksrc, D.7245
	jne	.L83	#,
	.loc 1 398 0
	movl	-72(%rbp), %eax	# isrc, tmp259
	cmpl	-44(%rbp), %eax	# pos, tmp259
	jne	.L83	#,
	.loc 1 399 0
	movl	-56(%rbp), %eax	# j, tmp260
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp261
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_151, D.7247
	movq	8(%rax), %rdx	# _152->statetype, D.7248
	movl	-48(%rbp), %eax	# tnext, tmp262
	cltq
	addq	%rdx, %rax	# D.7248, D.7248
	movzbl	(%rax), %eax	# *_155, D.7250
	cmpb	-80(%rbp), %al	# dest, D.7250
	jne	.L83	#,
	.loc 1 400 0
	movl	-56(%rbp), %eax	# j, tmp263
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7243
	movq	-96(%rbp), %rax	# alignment, tmp264
	addq	%rdx, %rax	# D.7243, D.7246
	movq	(%rax), %rax	# *_159, D.7247
	movq	16(%rax), %rax	# _160->nodeidx, D.7244
	movl	-48(%rbp), %edx	# tnext, tmp265
	movslq	%edx, %rdx	# tmp265, D.7243
	salq	$2, %rdx	#, D.7243
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_164, D.7245
	cmpl	-88(%rbp), %eax	# kdest, D.7245
	jne	.L83	#,
	.loc 1 401 0
	movl	-84(%rbp), %eax	# idest, tmp266
	cmpl	-40(%rbp), %eax	# next, tmp266
	jne	.L83	#,
	.loc 1 402 0
	movl	-56(%rbp), %eax	# j, tmp267
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7243
	movq	-120(%rbp), %rax	# on, tmp268
	addq	%rdx, %rax	# D.7243, D.7244
	movl	$1, (%rax)	#, *_168
.L83:
	.loc 1 367 0
	addl	$1, -52(%rbp)	#, tpos
.L79:
	.loc 1 367 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp269
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7243
	movq	-112(%rbp), %rax	# max, tmp270
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_29, D.7245
	cmpl	-52(%rbp), %eax	# tpos, D.7245
	jge	.L88	#,
	.loc 1 365 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L78:
	.loc 1 365 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp271
	cmpl	56(%rbp), %eax	# A, tmp271
	jl	.L89	#,
	.loc 1 407 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, near
	je	.L77	#,
	.loc 1 409 0
	movsbl	-68(%rbp), %eax	# src, D.7245
	cmpl	$10, %eax	#, D.7245
	ja	.L92	#,
	movl	%eax, %eax	# D.7245, tmp272
	movq	.L94(,%rax,8), %rax	#, tmp273
	jmp	*%rax	# tmp273
	.section	.rodata
	.align 8
	.align 4
.L94:
	.quad	.L92
	.quad	.L93
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.quad	.L100
	.quad	.L101
	.quad	.L102
	.quad	.L103
	.text
.L93:
	.loc 1 411 0
	movl	-76(%rbp), %edx	# ksrc, tmp274
	leaq	-32(%rbp), %rax	#, tmp275
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp275,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L104	#
.L95:
	.loc 1 412 0
	movl	-76(%rbp), %edx	# ksrc, tmp276
	leaq	-32(%rbp), %rax	#, tmp277
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp277,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L104	#
.L96:
	.loc 1 413 0
	movl	-76(%rbp), %edx	# ksrc, tmp278
	leaq	-32(%rbp), %rax	#, tmp279
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp279,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L104	#
.L97:
	.loc 1 414 0
	leaq	-32(%rbp), %rax	#, tmp280
	movw	$83, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L98:
	.loc 1 415 0
	leaq	-32(%rbp), %rax	#, tmp281
	movw	$78, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L99:
	.loc 1 416 0
	leaq	-32(%rbp), %rax	#, tmp282
	movw	$66, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L100:
	.loc 1 417 0
	leaq	-32(%rbp), %rax	#, tmp283
	movw	$69, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L101:
	.loc 1 418 0
	leaq	-32(%rbp), %rax	#, tmp284
	movw	$67, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L103:
	.loc 1 419 0
	leaq	-32(%rbp), %rax	#, tmp285
	movw	$74, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L102:
	.loc 1 420 0
	leaq	-32(%rbp), %rax	#, tmp286
	movw	$84, (%rax)	#, MEM[(void *)&src_str]
	jmp	.L104	#
.L92:
	.loc 1 421 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L104:
	.loc 1 424 0
	movsbl	-80(%rbp), %eax	# dest, D.7245
	cmpl	$10, %eax	#, D.7245
	ja	.L105	#,
	movl	%eax, %eax	# D.7245, tmp287
	movq	.L107(,%rax,8), %rax	#, tmp288
	jmp	*%rax	# tmp288
	.section	.rodata
	.align 8
	.align 4
.L107:
	.quad	.L105
	.quad	.L106
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.quad	.L111
	.quad	.L112
	.quad	.L113
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.text
.L106:
	.loc 1 426 0
	movl	-88(%rbp), %edx	# kdest, tmp289
	leaq	-16(%rbp), %rax	#, tmp290
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp290,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L117	#
.L108:
	.loc 1 427 0
	movl	-88(%rbp), %edx	# kdest, tmp291
	leaq	-16(%rbp), %rax	#, tmp292
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp292,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L117	#
.L109:
	.loc 1 428 0
	movl	-88(%rbp), %edx	# kdest, tmp293
	leaq	-16(%rbp), %rax	#, tmp294
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp294,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L117	#
.L110:
	.loc 1 429 0
	leaq	-16(%rbp), %rax	#, tmp295
	movw	$83, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L111:
	.loc 1 430 0
	leaq	-16(%rbp), %rax	#, tmp296
	movw	$78, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L112:
	.loc 1 431 0
	leaq	-16(%rbp), %rax	#, tmp297
	movw	$66, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L113:
	.loc 1 432 0
	leaq	-16(%rbp), %rax	#, tmp298
	movw	$69, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L114:
	.loc 1 433 0
	leaq	-16(%rbp), %rax	#, tmp299
	movw	$67, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L116:
	.loc 1 434 0
	leaq	-16(%rbp), %rax	#, tmp300
	movw	$74, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L115:
	.loc 1 435 0
	leaq	-16(%rbp), %rax	#, tmp301
	movw	$84, (%rax)	#, MEM[(void *)&dest_str]
	jmp	.L117	#
.L105:
	.loc 1 436 0
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L117:
	.loc 1 439 0
	movss	.LC18(%rip), %xmm0	#,
	movl	16(%rbp), %edi	# sc,
	call	Score2Prob	#
	unpcklps	%xmm0, %xmm0	# D.7251, D.7251
	cvtps2pd	%xmm0, %xmm0	# D.7251, D.7252
	leaq	-16(%rbp), %rsi	#, tmp302
	movl	-84(%rbp), %ecx	# idest, tmp303
	leaq	-32(%rbp), %rdx	#, tmp304
	movl	-72(%rbp), %eax	# isrc, tmp305
	movq	%rsi, %r8	# tmp302,
	movl	%eax, %esi	# tmp305,
	movl	$.LC19, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 441 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L118	#
.L121:
	.loc 1 442 0
	movl	-56(%rbp), %eax	# j, tmp306
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7243
	movq	-120(%rbp), %rax	# on, tmp307
	addq	%rdx, %rax	# D.7243, D.7244
	movl	(%rax), %eax	# *_179, D.7245
	testl	%eax, %eax	# D.7245
	je	.L119	#,
	.loc 1 442 0 is_stmt 0 discriminator 1
	movl	$42, %edi	#,
	call	putchar	#
.L119:
	.loc 1 443 0 is_stmt 1
	movl	56(%rbp), %eax	# A, tmp308
	subl	$1, %eax	#, D.7245
	cmpl	-56(%rbp), %eax	# j, D.7245
	jle	.L120	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	movl	$9, %edi	#,
	call	putchar	#
.L120:
	.loc 1 441 0 is_stmt 1
	addl	$1, -56(%rbp)	#, j
.L118:
	.loc 1 441 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp309
	cmpl	56(%rbp), %eax	# A, tmp309
	jl	.L121	#,
	.loc 1 446 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
.L77:
	.loc 1 448 0
	movq	-8(%rbp), %rax	# D.7253, tmp311
	xorq	%fs:40, %rax	#, tmp311
	je	.L122	#,
	call	__stack_chk_fail	#
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	PrintTransition, .-PrintTransition
	.section	.rodata
	.align 4
.LC18:
	.long	1065353216
	.text
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x805
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF74
	.byte	0x1
	.long	.LASF75
	.long	.LASF76
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
	.long	.LASF54
	.byte	0x1
	.byte	0x3e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b4
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0x3e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0x3e
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x3f
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0x40
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0x41
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x42
	.long	0x4ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x44
	.long	0x4c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x342
	.uleb128 0x5
	.byte	0x8
	.long	0x3f2
	.uleb128 0xb
	.long	0x4ba
	.long	0x4d0
	.uleb128 0xc
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x5a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c9
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0x5a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0x5a
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x5b
	.long	0x4b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0x5c
	.long	0x4b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x5d
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.string	"A"
	.byte	0x1
	.byte	0x5e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.string	"sc"
	.byte	0x1
	.byte	0x60
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x61
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.byte	0x62
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x63
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x64
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x65
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"min"
	.byte	0x1
	.byte	0x66
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"max"
	.byte	0x1
	.byte	0x67
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"on"
	.byte	0x1
	.byte	0x68
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x69
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x4ba
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.value	0x12a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x641
	.uleb128 0x16
	.string	"dsq"
	.byte	0x1
	.value	0x12a
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"L"
	.byte	0x1
	.value	0x12a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"hmm"
	.byte	0x1
	.value	0x12a
	.long	0x3ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"mx"
	.byte	0x1
	.value	0x12a
	.long	0x4b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x12c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x12d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF61
	.byte	0x1
	.value	0x14b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.value	0x14b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.string	"dsc"
	.byte	0x1
	.value	0x14c
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"div"
	.byte	0x1
	.value	0x14d
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.value	0x155
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dd
	.uleb128 0x16
	.string	"src"
	.byte	0x1
	.value	0x155
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.value	0x156
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.value	0x157
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0x158
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF66
	.byte	0x1
	.value	0x159
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.string	"sc"
	.byte	0x1
	.value	0x15b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.value	0x15c
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.string	"min"
	.byte	0x1
	.value	0x15d
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.string	"max"
	.byte	0x1
	.value	0x15e
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.string	"on"
	.byte	0x1
	.value	0x15f
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x16
	.string	"A"
	.byte	0x1
	.value	0x160
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x19
	.long	.LASF68
	.byte	0x1
	.value	0x162
	.long	0x7dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.value	0x163
	.long	0x7dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.value	0x164
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.value	0x165
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.value	0x166
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"pos"
	.byte	0x1
	.value	0x167
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.value	0x168
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.value	0x169
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xb
	.long	0x74
	.long	0x7ed
	.uleb128 0xc
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x74
	.long	0x7fd
	.uleb128 0xc
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x2
	.byte	0x39
	.long	0x7ed
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
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
.LASF62:
	.string	"PrintTransition"
.LASF50:
	.string	"forward"
.LASF28:
	.string	"bsc_mem"
.LASF77:
	.string	"Alphabet"
.LASF42:
	.string	"maxN"
.LASF52:
	.string	"viterbi"
.LASF65:
	.string	"dest"
.LASF59:
	.string	"state"
.LASF34:
	.string	"lambda"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF19:
	.string	"tpri"
.LASF23:
	.string	"begin"
.LASF47:
	.string	"tlen"
.LASF58:
	.string	"kmax"
.LASF30:
	.string	"dnam"
.LASF48:
	.string	"statetype"
.LASF18:
	.string	"checksum"
.LASF66:
	.string	"idest"
.LASF16:
	.string	"nseq"
.LASF25:
	.string	"tsc_mem"
.LASF26:
	.string	"msc_mem"
.LASF9:
	.string	"float"
.LASF57:
	.string	"kmin"
.LASF76:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF38:
	.string	"xmx_mem"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"isrc"
.LASF43:
	.string	"maxM"
.LASF69:
	.string	"dest_str"
.LASF56:
	.string	"alignment"
.LASF35:
	.string	"flags"
.LASF70:
	.string	"tpos"
.LASF45:
	.string	"padM"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"dmx_mem"
.LASF36:
	.string	"plan7_s"
.LASF74:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF71:
	.string	"tnext"
.LASF3:
	.string	"unsigned int"
.LASF68:
	.string	"src_str"
.LASF27:
	.string	"isc_mem"
.LASF2:
	.string	"short unsigned int"
.LASF72:
	.string	"next"
.LASF8:
	.string	"char"
.LASF29:
	.string	"esc_mem"
.LASF75:
	.string	"display.c"
.LASF61:
	.string	"PrintIscore"
.LASF49:
	.string	"nodeidx"
.LASF40:
	.string	"imx_mem"
.LASF17:
	.string	"ctime"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"backward"
.LASF21:
	.string	"ipri"
.LASF22:
	.string	"tbd1"
.LASF20:
	.string	"mpri"
.LASF44:
	.string	"padN"
.LASF73:
	.string	"near"
.LASF37:
	.string	"dpmatrix_s"
.LASF15:
	.string	"comlog"
.LASF13:
	.string	"name"
.LASF60:
	.string	"DisplayPlan7Matrix"
.LASF39:
	.string	"mmx_mem"
.LASF24:
	.string	"null"
.LASF31:
	.string	"dnai"
.LASF10:
	.string	"double"
.LASF64:
	.string	"ksrc"
.LASF55:
	.string	"DisplayPlan7PostAlign"
.LASF46:
	.string	"p7trace_s"
.LASF32:
	.string	"dna2"
.LASF67:
	.string	"kdest"
.LASF33:
	.string	"dna4"
.LASF54:
	.string	"DisplayPlan7Posteriors"
.LASF14:
	.string	"desc"
.LASF53:
	.string	"optacc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
