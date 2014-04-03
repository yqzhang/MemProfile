	.file	"fast_algorithms.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 fast_algorithms.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.globl	P7Viterbi
	.type	P7Viterbi, @function
P7Viterbi:
.LFB2:
	.file 1 "fast_algorithms.c"
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$256, %rsp	#,
	movq	%rdi, -216(%rbp)	# dsq, dsq
	movl	%esi, -220(%rbp)	# L, L
	movq	%rdx, -232(%rbp)	# hmm, hmm
	movq	%rcx, -240(%rbp)	# mx, mx
	movq	%r8, -248(%rbp)	# ret_tr, ret_tr
	.loc 1 91 0
	movq	-232(%rbp), %rax	# hmm, tmp483
	movl	136(%rax), %edx	# hmm_7(D)->M, D.6751
	leaq	-160(%rbp), %r9	#, tmp484
	leaq	-168(%rbp), %r8	#, tmp485
	leaq	-176(%rbp), %rcx	#, tmp486
	movl	-220(%rbp), %esi	# L, tmp487
	movq	-240(%rbp), %rax	# mx, tmp488
	leaq	-152(%rbp), %rdi	#, tmp489
	movq	%rdi, (%rsp)	# tmp489,
	movq	%rax, %rdi	# tmp488,
	call	ResizePlan7Matrix	#
	.loc 1 95 0
	movq	-176(%rbp), %rax	# xmx, xmx.0
	movq	(%rax), %rax	# *xmx.0_11, D.6752
	addq	$16, %rax	#, D.6752
	movl	$0, (%rax)	#, *_13
	.loc 1 96 0
	movq	-176(%rbp), %rax	# xmx, xmx.1
	movq	(%rax), %rax	# *xmx.1_14, D.6752
	movq	-232(%rbp), %rdx	# hmm, tmp490
	movl	336(%rdx), %edx	# hmm_7(D)->xsc, D.6751
	movl	%edx, (%rax)	# D.6751, *_15
	.loc 1 97 0
	movq	-176(%rbp), %rax	# xmx, xmx.2
	movq	(%rax), %rax	# *xmx.2_17, D.6752
	leaq	4(%rax), %rcx	#, D.6752
	movq	-176(%rbp), %rax	# xmx, xmx.3
	movq	(%rax), %rax	# *xmx.3_20, D.6752
	addq	$8, %rax	#, D.6752
	movq	-176(%rbp), %rdx	# xmx, xmx.4
	movq	(%rdx), %rdx	# *xmx.4_23, D.6752
	addq	$12, %rdx	#, D.6752
	movl	$-987654321, (%rdx)	#, *_25
	movl	(%rdx), %edx	# *_25, D.6751
	movl	%edx, (%rax)	# D.6751, *_22
	movl	(%rax), %eax	# *_22, D.6751
	movl	%eax, (%rcx)	# D.6751, *_19
	.loc 1 98 0
	movl	$0, -204(%rbp)	#, k
	jmp	.L2	#
.L3:
	.loc 1 99 0 discriminator 2
	movq	-168(%rbp), %rax	# mmx, mmx.5
	movq	(%rax), %rax	# *mmx.5_30, D.6752
	movl	-204(%rbp), %edx	# k, tmp491
	movslq	%edx, %rdx	# tmp491, D.6753
	salq	$2, %rdx	#, D.6753
	leaq	(%rax,%rdx), %rcx	#, D.6752
	movq	-160(%rbp), %rax	# imx, imx.6
	movq	(%rax), %rax	# *imx.6_35, D.6752
	movl	-204(%rbp), %edx	# k, tmp492
	movslq	%edx, %rdx	# tmp492, D.6753
	salq	$2, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6752
	movq	-152(%rbp), %rdx	# dmx, dmx.7
	movq	(%rdx), %rdx	# *dmx.7_40, D.6752
	movl	-204(%rbp), %esi	# k, tmp493
	movslq	%esi, %rsi	# tmp493, D.6753
	salq	$2, %rsi	#, D.6753
	addq	%rsi, %rdx	# D.6753, D.6752
	movl	$-987654321, (%rdx)	#, *_44
	movl	(%rdx), %edx	# *_44, D.6751
	movl	%edx, (%rax)	# D.6751, *_39
	movl	(%rax), %eax	# *_39, D.6751
	movl	%eax, (%rcx)	# D.6751, *_34
	.loc 1 98 0 discriminator 2
	addl	$1, -204(%rbp)	#, k
.L2:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# hmm, tmp494
	movl	136(%rax), %eax	# hmm_7(D)->M, D.6751
	cmpl	-204(%rbp), %eax	# k, D.6751
	jge	.L3	#,
	.loc 1 103 0 is_stmt 1
	movq	-232(%rbp), %rax	# hmm, tmp495
	movl	136(%rax), %eax	# hmm_7(D)->M, tmp496
	movl	%eax, -196(%rbp)	# tmp496, M
	.loc 1 111 0
	movq	-232(%rbp), %rax	# hmm, tmp497
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	(%rax), %rax	# *_49, tmp498
	movq	%rax, -144(%rbp)	# tmp498, tpmm
	.loc 1 112 0
	movq	-232(%rbp), %rax	# hmm, tmp499
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	24(%rax), %rax	# MEM[(int * *)_51 + 24B], tmp500
	movq	%rax, -136(%rbp)	# tmp500, tpim
	.loc 1 113 0
	movq	-232(%rbp), %rax	# hmm, tmp501
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	40(%rax), %rax	# MEM[(int * *)_53 + 40B], tmp502
	movq	%rax, -128(%rbp)	# tmp502, tpdm
	.loc 1 114 0
	movq	-232(%rbp), %rax	# hmm, tmp503
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	16(%rax), %rax	# MEM[(int * *)_55 + 16B], tmp504
	movq	%rax, -120(%rbp)	# tmp504, tpmd
	.loc 1 115 0
	movq	-232(%rbp), %rax	# hmm, tmp505
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	48(%rax), %rax	# MEM[(int * *)_57 + 48B], tmp506
	movq	%rax, -112(%rbp)	# tmp506, tpdd
	.loc 1 116 0
	movq	-232(%rbp), %rax	# hmm, tmp507
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	8(%rax), %rax	# MEM[(int * *)_59 + 8B], tmp508
	movq	%rax, -104(%rbp)	# tmp508, tpmi
	.loc 1 117 0
	movq	-232(%rbp), %rax	# hmm, tmp509
	movq	312(%rax), %rax	# hmm_7(D)->tsc, D.6754
	movq	32(%rax), %rax	# MEM[(int * *)_61 + 32B], tmp510
	movq	%rax, -96(%rbp)	# tmp510, tpii
	.loc 1 118 0
	movq	-232(%rbp), %rax	# hmm, tmp511
	movq	368(%rax), %rax	# hmm_7(D)->bsc, tmp512
	movq	%rax, -88(%rbp)	# tmp512, bp
	.loc 1 119 0
	movl	$1, -208(%rbp)	#, i
	jmp	.L4	#
.L25:
	.loc 1 120 0
	movq	-168(%rbp), %rax	# mmx, mmx.8
	movl	-208(%rbp), %edx	# i, tmp513
	movslq	%edx, %rdx	# tmp513, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_68, tmp514
	movq	%rax, -80(%rbp)	# tmp514, mc
	.loc 1 121 0
	movq	-152(%rbp), %rax	# dmx, dmx.9
	movl	-208(%rbp), %edx	# i, tmp515
	movslq	%edx, %rdx	# tmp515, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_73, tmp516
	movq	%rax, -72(%rbp)	# tmp516, dc
	.loc 1 122 0
	movq	-160(%rbp), %rax	# imx, imx.10
	movl	-208(%rbp), %edx	# i, tmp517
	movslq	%edx, %rdx	# tmp517, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_78, tmp518
	movq	%rax, -64(%rbp)	# tmp518, ic
	.loc 1 123 0
	movq	-168(%rbp), %rax	# mmx, mmx.11
	movl	-208(%rbp), %edx	# i, tmp519
	movslq	%edx, %rdx	# tmp519, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_84, tmp520
	movq	%rax, -56(%rbp)	# tmp520, mpp
	.loc 1 124 0
	movq	-152(%rbp), %rax	# dmx, dmx.12
	movl	-208(%rbp), %edx	# i, tmp521
	movslq	%edx, %rdx	# tmp521, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_90, tmp522
	movq	%rax, -48(%rbp)	# tmp522, dpp
	.loc 1 125 0
	movq	-160(%rbp), %rax	# imx, imx.13
	movl	-208(%rbp), %edx	# i, tmp523
	movslq	%edx, %rdx	# tmp523, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_96, tmp524
	movq	%rax, -40(%rbp)	# tmp524, ip
	.loc 1 126 0
	movq	-176(%rbp), %rax	# xmx, xmx.14
	movl	-208(%rbp), %edx	# i, tmp525
	movslq	%edx, %rdx	# tmp525, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_102, D.6752
	movl	(%rax), %eax	# *_103, tmp526
	movl	%eax, -192(%rbp)	# tmp526, xmb
	.loc 1 127 0
	movq	-232(%rbp), %rax	# hmm, tmp527
	movq	320(%rax), %rax	# hmm_7(D)->msc, D.6754
	movl	-208(%rbp), %edx	# i, tmp528
	movslq	%edx, %rcx	# tmp528, D.6755
	movq	-216(%rbp), %rdx	# dsq, tmp529
	addq	%rcx, %rdx	# D.6755, D.6756
	movzbl	(%rdx), %edx	# *_108, D.6757
	movsbq	%dl, %rdx	# D.6757, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_112, tmp530
	movq	%rax, -32(%rbp)	# tmp530, ms
	.loc 1 128 0
	movq	-232(%rbp), %rax	# hmm, tmp531
	movq	328(%rax), %rax	# hmm_7(D)->isc, D.6754
	movl	-208(%rbp), %edx	# i, tmp532
	movslq	%edx, %rcx	# tmp532, D.6755
	movq	-216(%rbp), %rdx	# dsq, tmp533
	addq	%rcx, %rdx	# D.6755, D.6756
	movzbl	(%rdx), %edx	# *_116, D.6757
	movsbq	%dl, %rdx	# D.6757, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_120, tmp534
	movq	%rax, -24(%rbp)	# tmp534, is
	.loc 1 129 0
	movq	-80(%rbp), %rax	# mc, tmp535
	movl	$-987654321, (%rax)	#, *mc_69
	.loc 1 130 0
	movq	-72(%rbp), %rax	# dc, tmp536
	movl	$-987654321, (%rax)	#, *dc_74
	.loc 1 131 0
	movq	-64(%rbp), %rax	# ic, tmp537
	movl	$-987654321, (%rax)	#, *ic_79
	.loc 1 133 0
	movl	$1, -204(%rbp)	#, k
	jmp	.L5	#
.L14:
	.loc 1 134 0
	movl	-204(%rbp), %eax	# k, tmp538
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp539
	addq	%rdx, %rax	# D.6753, D.6752
	movl	-204(%rbp), %edx	# k, tmp540
	movslq	%edx, %rdx	# tmp540, D.6753
	salq	$2, %rdx	#, D.6753
	leaq	-4(%rdx), %rcx	#, D.6755
	movq	-56(%rbp), %rdx	# mpp, tmp541
	addq	%rcx, %rdx	# D.6755, D.6752
	movl	(%rdx), %ecx	# *_129, D.6751
	movl	-204(%rbp), %edx	# k, tmp542
	movslq	%edx, %rdx	# tmp542, D.6753
	salq	$2, %rdx	#, D.6753
	leaq	-4(%rdx), %rsi	#, D.6755
	movq	-144(%rbp), %rdx	# tpmm, tmp543
	addq	%rsi, %rdx	# D.6755, D.6752
	movl	(%rdx), %edx	# *_134, D.6751
	addl	%ecx, %edx	# D.6751, D.6751
	movl	%edx, (%rax)	# D.6751, *_125
	.loc 1 135 0
	movl	-204(%rbp), %eax	# k, tmp544
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rdx	#, D.6755
	movq	-40(%rbp), %rax	# ip, tmp545
	addq	%rdx, %rax	# D.6755, D.6752
	movl	(%rax), %edx	# *_140, D.6751
	movl	-204(%rbp), %eax	# k, tmp546
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rcx	#, D.6755
	movq	-136(%rbp), %rax	# tpim, tmp547
	addq	%rcx, %rax	# D.6755, D.6752
	movl	(%rax), %eax	# *_145, D.6751
	addl	%edx, %eax	# D.6751, tmp548
	movl	%eax, -188(%rbp)	# tmp548, sc
	movl	-204(%rbp), %eax	# k, tmp549
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp550
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_150, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L6	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp551
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp552
	addq	%rax, %rdx	# tmp552, D.6752
	movl	-188(%rbp), %eax	# sc, tmp553
	movl	%eax, (%rdx)	# tmp553, *_154
.L6:
	.loc 1 136 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp554
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rdx	#, D.6755
	movq	-48(%rbp), %rax	# dpp, tmp555
	addq	%rdx, %rax	# D.6755, D.6752
	movl	(%rax), %edx	# *_158, D.6751
	movl	-204(%rbp), %eax	# k, tmp556
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rcx	#, D.6755
	movq	-128(%rbp), %rax	# tpdm, tmp557
	addq	%rcx, %rax	# D.6755, D.6752
	movl	(%rax), %eax	# *_163, D.6751
	addl	%edx, %eax	# D.6751, tmp558
	movl	%eax, -188(%rbp)	# tmp558, sc
	movl	-204(%rbp), %eax	# k, tmp559
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp560
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_168, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L7	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp561
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp562
	addq	%rax, %rdx	# tmp562, D.6752
	movl	-188(%rbp), %eax	# sc, tmp563
	movl	%eax, (%rdx)	# tmp563, *_172
.L7:
	.loc 1 137 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp564
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-88(%rbp), %rax	# bp, tmp565
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %edx	# *_175, D.6751
	movl	-192(%rbp), %eax	# xmb, tmp569
	addl	%edx, %eax	# D.6751, tmp568
	movl	%eax, -188(%rbp)	# tmp568, sc
	movl	-204(%rbp), %eax	# k, tmp570
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp571
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_180, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L8	#,
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp572
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp573
	addq	%rax, %rdx	# tmp573, D.6752
	movl	-188(%rbp), %eax	# sc, tmp574
	movl	%eax, (%rdx)	# tmp574, *_184
.L8:
	.loc 1 138 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp575
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp576
	addq	%rdx, %rax	# D.6753, D.6752
	movl	-204(%rbp), %edx	# k, tmp577
	movslq	%edx, %rdx	# tmp577, D.6753
	leaq	0(,%rdx,4), %rcx	#, D.6753
	movq	-80(%rbp), %rdx	# mc, tmp578
	addq	%rcx, %rdx	# D.6753, D.6752
	movl	(%rdx), %ecx	# *_190, D.6751
	movl	-204(%rbp), %edx	# k, tmp579
	movslq	%edx, %rdx	# tmp579, D.6753
	leaq	0(,%rdx,4), %rsi	#, D.6753
	movq	-32(%rbp), %rdx	# ms, tmp580
	addq	%rsi, %rdx	# D.6753, D.6752
	movl	(%rdx), %edx	# *_194, D.6751
	addl	%ecx, %edx	# D.6751, D.6751
	movl	%edx, (%rax)	# D.6751, *_187
	.loc 1 139 0
	movl	-204(%rbp), %eax	# k, tmp581
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp582
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_199, D.6751
	cmpl	$-987654321, %eax	#, D.6751
	jge	.L9	#,
	.loc 1 139 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp583
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-80(%rbp), %rax	# mc, tmp584
	addq	%rdx, %rax	# D.6753, D.6752
	movl	$-987654321, (%rax)	#, *_203
.L9:
	.loc 1 141 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp585
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-72(%rbp), %rax	# dc, tmp586
	addq	%rdx, %rax	# D.6753, D.6752
	movl	-204(%rbp), %edx	# k, tmp587
	movslq	%edx, %rdx	# tmp587, D.6753
	salq	$2, %rdx	#, D.6753
	leaq	-4(%rdx), %rcx	#, D.6755
	movq	-72(%rbp), %rdx	# dc, tmp588
	addq	%rcx, %rdx	# D.6755, D.6752
	movl	(%rdx), %ecx	# *_210, D.6751
	movl	-204(%rbp), %edx	# k, tmp589
	movslq	%edx, %rdx	# tmp589, D.6753
	salq	$2, %rdx	#, D.6753
	leaq	-4(%rdx), %rsi	#, D.6755
	movq	-112(%rbp), %rdx	# tpdd, tmp590
	addq	%rsi, %rdx	# D.6755, D.6752
	movl	(%rdx), %edx	# *_215, D.6751
	addl	%ecx, %edx	# D.6751, D.6751
	movl	%edx, (%rax)	# D.6751, *_206
	.loc 1 142 0
	movl	-204(%rbp), %eax	# k, tmp591
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rdx	#, D.6755
	movq	-80(%rbp), %rax	# mc, tmp592
	addq	%rdx, %rax	# D.6755, D.6752
	movl	(%rax), %edx	# *_221, D.6751
	movl	-204(%rbp), %eax	# k, tmp593
	cltq
	salq	$2, %rax	#, D.6753
	leaq	-4(%rax), %rcx	#, D.6755
	movq	-120(%rbp), %rax	# tpmd, tmp594
	addq	%rcx, %rax	# D.6755, D.6752
	movl	(%rax), %eax	# *_226, D.6751
	addl	%edx, %eax	# D.6751, tmp595
	movl	%eax, -188(%rbp)	# tmp595, sc
	movl	-204(%rbp), %eax	# k, tmp596
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-72(%rbp), %rax	# dc, tmp597
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_231, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L10	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp598
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-72(%rbp), %rax	# dc, tmp599
	addq	%rax, %rdx	# tmp599, D.6752
	movl	-188(%rbp), %eax	# sc, tmp600
	movl	%eax, (%rdx)	# tmp600, *_235
.L10:
	.loc 1 143 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp601
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-72(%rbp), %rax	# dc, tmp602
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_238, D.6751
	cmpl	$-987654321, %eax	#, D.6751
	jge	.L11	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp603
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-72(%rbp), %rax	# dc, tmp604
	addq	%rdx, %rax	# D.6753, D.6752
	movl	$-987654321, (%rax)	#, *_242
.L11:
	.loc 1 145 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp605
	cmpl	-196(%rbp), %eax	# M, tmp605
	jge	.L12	#,
	.loc 1 146 0
	movl	-204(%rbp), %eax	# k, tmp606
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp607
	addq	%rdx, %rax	# D.6753, D.6752
	movl	-204(%rbp), %edx	# k, tmp608
	movslq	%edx, %rdx	# tmp608, D.6753
	leaq	0(,%rdx,4), %rcx	#, D.6753
	movq	-56(%rbp), %rdx	# mpp, tmp609
	addq	%rcx, %rdx	# D.6753, D.6752
	movl	(%rdx), %ecx	# *_248, D.6751
	movl	-204(%rbp), %edx	# k, tmp610
	movslq	%edx, %rdx	# tmp610, D.6753
	leaq	0(,%rdx,4), %rsi	#, D.6753
	movq	-104(%rbp), %rdx	# tpmi, tmp611
	addq	%rsi, %rdx	# D.6753, D.6752
	movl	(%rdx), %edx	# *_252, D.6751
	addl	%ecx, %edx	# D.6751, D.6751
	movl	%edx, (%rax)	# D.6751, *_245
	.loc 1 147 0
	movl	-204(%rbp), %eax	# k, tmp612
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-40(%rbp), %rax	# ip, tmp613
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %edx	# *_257, D.6751
	movl	-204(%rbp), %eax	# k, tmp614
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6753
	movq	-96(%rbp), %rax	# tpii, tmp615
	addq	%rcx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_261, D.6751
	addl	%edx, %eax	# D.6751, tmp616
	movl	%eax, -188(%rbp)	# tmp616, sc
	movl	-204(%rbp), %eax	# k, tmp617
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp618
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_266, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L13	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp619
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp620
	addq	%rax, %rdx	# tmp620, D.6752
	movl	-188(%rbp), %eax	# sc, tmp621
	movl	%eax, (%rdx)	# tmp621, *_270
.L13:
	.loc 1 148 0 is_stmt 1
	movl	-204(%rbp), %eax	# k, tmp622
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp623
	addq	%rdx, %rax	# D.6753, D.6752
	movl	-204(%rbp), %edx	# k, tmp624
	movslq	%edx, %rdx	# tmp624, D.6753
	leaq	0(,%rdx,4), %rcx	#, D.6753
	movq	-64(%rbp), %rdx	# ic, tmp625
	addq	%rcx, %rdx	# D.6753, D.6752
	movl	(%rdx), %ecx	# *_276, D.6751
	movl	-204(%rbp), %edx	# k, tmp626
	movslq	%edx, %rdx	# tmp626, D.6753
	leaq	0(,%rdx,4), %rsi	#, D.6753
	movq	-24(%rbp), %rdx	# is, tmp627
	addq	%rsi, %rdx	# D.6753, D.6752
	movl	(%rdx), %edx	# *_280, D.6751
	addl	%ecx, %edx	# D.6751, D.6751
	movl	%edx, (%rax)	# D.6751, *_273
	.loc 1 149 0
	movl	-204(%rbp), %eax	# k, tmp628
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp629
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_285, D.6751
	cmpl	$-987654321, %eax	#, D.6751
	jge	.L12	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp630
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-64(%rbp), %rax	# ic, tmp631
	addq	%rdx, %rax	# D.6753, D.6752
	movl	$-987654321, (%rax)	#, *_289
.L12:
	.loc 1 133 0 is_stmt 1
	addl	$1, -204(%rbp)	#, k
.L5:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	-204(%rbp), %eax	# k, tmp632
	cmpl	-196(%rbp), %eax	# M, tmp632
	jle	.L14	#,
	.loc 1 157 0 is_stmt 1
	movq	-176(%rbp), %rax	# xmx, xmx.15
	movl	-208(%rbp), %edx	# i, tmp633
	movslq	%edx, %rdx	# tmp633, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_294, D.6752
	addq	$16, %rax	#, D.6752
	movl	$-987654321, (%rax)	#, *_296
	.loc 1 158 0
	movq	-176(%rbp), %rax	# xmx, xmx.16
	movl	-208(%rbp), %edx	# i, tmp634
	movslq	%edx, %rdx	# tmp634, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_301, D.6752
	addq	$16, %rax	#, D.6752
	movl	(%rax), %edx	# *_303, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp635
	movl	340(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp636
	movl	%eax, -188(%rbp)	# tmp636, sc
	cmpl	$-987654320, -188(%rbp)	#, sc
	jl	.L15	#,
	.loc 1 159 0
	movq	-176(%rbp), %rax	# xmx, xmx.17
	movl	-208(%rbp), %edx	# i, tmp637
	movslq	%edx, %rdx	# tmp637, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_310, D.6752
	leaq	16(%rax), %rdx	#, D.6752
	movl	-188(%rbp), %eax	# sc, tmp638
	movl	%eax, (%rdx)	# tmp638, *_312
.L15:
	.loc 1 162 0
	movl	$-987654321, -200(%rbp)	#, xme
	.loc 1 163 0
	movq	-168(%rbp), %rax	# mmx, mmx.18
	movl	-208(%rbp), %edx	# i, tmp639
	movslq	%edx, %rdx	# tmp639, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_317, tmp640
	movq	%rax, -16(%rbp)	# tmp640, mpc
	.loc 1 164 0
	movq	-232(%rbp), %rax	# hmm, tmp641
	movq	376(%rax), %rax	# hmm_7(D)->esc, tmp642
	movq	%rax, -8(%rbp)	# tmp642, ep
	.loc 1 165 0
	movl	$1, -204(%rbp)	#, k
	jmp	.L16	#
.L18:
	.loc 1 166 0
	movl	-204(%rbp), %eax	# k, tmp643
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6753
	movq	-16(%rbp), %rax	# mpc, tmp644
	addq	%rdx, %rax	# D.6753, D.6752
	movl	(%rax), %edx	# *_324, D.6751
	movl	-204(%rbp), %eax	# k, tmp645
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6753
	movq	-8(%rbp), %rax	# ep, tmp646
	addq	%rcx, %rax	# D.6753, D.6752
	movl	(%rax), %eax	# *_328, D.6751
	addl	%edx, %eax	# D.6751, tmp647
	movl	%eax, -188(%rbp)	# tmp647, sc
	movl	-188(%rbp), %eax	# sc, tmp648
	cmpl	-200(%rbp), %eax	# xme, tmp648
	jle	.L17	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# sc, tmp649
	movl	%eax, -200(%rbp)	# tmp649, xme
.L17:
	.loc 1 165 0 is_stmt 1
	addl	$1, -204(%rbp)	#, k
.L16:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# hmm, tmp650
	movl	136(%rax), %eax	# hmm_7(D)->M, D.6751
	cmpl	-204(%rbp), %eax	# k, D.6751
	jge	.L18	#,
	.loc 1 167 0 is_stmt 1
	movq	-176(%rbp), %rax	# xmx, xmx.19
	movl	-208(%rbp), %edx	# i, tmp651
	movslq	%edx, %rdx	# tmp651, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_336, D.6752
	leaq	4(%rax), %rdx	#, D.6752
	movl	-200(%rbp), %eax	# xme, tmp652
	movl	%eax, (%rdx)	# tmp652, *_338
	.loc 1 169 0
	movq	-176(%rbp), %rax	# xmx, xmx.20
	movl	-208(%rbp), %edx	# i, tmp653
	movslq	%edx, %rdx	# tmp653, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_342, D.6752
	addq	$12, %rax	#, D.6752
	movl	$-987654321, (%rax)	#, *_344
	.loc 1 170 0
	movq	-176(%rbp), %rax	# xmx, xmx.21
	movl	-208(%rbp), %edx	# i, tmp654
	movslq	%edx, %rdx	# tmp654, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_349, D.6752
	addq	$12, %rax	#, D.6752
	movl	(%rax), %edx	# *_351, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp655
	movl	364(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp656
	movl	%eax, -188(%rbp)	# tmp656, sc
	cmpl	$-987654320, -188(%rbp)	#, sc
	jl	.L19	#,
	.loc 1 171 0
	movq	-176(%rbp), %rax	# xmx, xmx.22
	movl	-208(%rbp), %edx	# i, tmp657
	movslq	%edx, %rdx	# tmp657, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_358, D.6752
	leaq	12(%rax), %rdx	#, D.6752
	movl	-188(%rbp), %eax	# sc, tmp658
	movl	%eax, (%rdx)	# tmp658, *_360
.L19:
	.loc 1 172 0
	movq	-176(%rbp), %rax	# xmx, xmx.23
	movl	-208(%rbp), %edx	# i, tmp659
	movslq	%edx, %rdx	# tmp659, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_364, D.6752
	addq	$4, %rax	#, D.6752
	movl	(%rax), %edx	# *_366, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp660
	movl	348(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp661
	movl	%eax, -188(%rbp)	# tmp661, sc
	movq	-176(%rbp), %rax	# xmx, xmx.24
	movl	-208(%rbp), %edx	# i, tmp662
	movslq	%edx, %rdx	# tmp662, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_373, D.6752
	addq	$12, %rax	#, D.6752
	movl	(%rax), %eax	# *_375, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L20	#,
	.loc 1 173 0
	movq	-176(%rbp), %rax	# xmx, xmx.25
	movl	-208(%rbp), %edx	# i, tmp663
	movslq	%edx, %rdx	# tmp663, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_380, D.6752
	leaq	12(%rax), %rdx	#, D.6752
	movl	-188(%rbp), %eax	# sc, tmp664
	movl	%eax, (%rdx)	# tmp664, *_382
.L20:
	.loc 1 176 0
	movq	-176(%rbp), %rax	# xmx, xmx.26
	movl	-208(%rbp), %edx	# i, tmp665
	movslq	%edx, %rdx	# tmp665, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_386, D.6752
	movl	$-987654321, (%rax)	#, *_387
	.loc 1 177 0
	movq	-176(%rbp), %rax	# xmx, xmx.27
	movl	-208(%rbp), %edx	# i, tmp666
	movslq	%edx, %rdx	# tmp666, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_391, D.6752
	addq	$16, %rax	#, D.6752
	movl	(%rax), %edx	# *_393, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp667
	movl	336(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp668
	movl	%eax, -188(%rbp)	# tmp668, sc
	cmpl	$-987654320, -188(%rbp)	#, sc
	jl	.L21	#,
	.loc 1 178 0
	movq	-176(%rbp), %rax	# xmx, xmx.28
	movl	-208(%rbp), %edx	# i, tmp669
	movslq	%edx, %rdx	# tmp669, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_400, D.6752
	movl	-188(%rbp), %edx	# sc, tmp670
	movl	%edx, (%rax)	# tmp670, *_401
.L21:
	.loc 1 179 0
	movq	-176(%rbp), %rax	# xmx, xmx.29
	movl	-208(%rbp), %edx	# i, tmp671
	movslq	%edx, %rdx	# tmp671, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_405, D.6752
	addq	$12, %rax	#, D.6752
	movl	(%rax), %edx	# *_407, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp672
	movl	360(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp673
	movl	%eax, -188(%rbp)	# tmp673, sc
	movq	-176(%rbp), %rax	# xmx, xmx.30
	movl	-208(%rbp), %edx	# i, tmp674
	movslq	%edx, %rdx	# tmp674, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_414, D.6752
	movl	(%rax), %eax	# *_415, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L22	#,
	.loc 1 180 0
	movq	-176(%rbp), %rax	# xmx, xmx.31
	movl	-208(%rbp), %edx	# i, tmp675
	movslq	%edx, %rdx	# tmp675, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_420, D.6752
	movl	-188(%rbp), %edx	# sc, tmp676
	movl	%edx, (%rax)	# tmp676, *_421
.L22:
	.loc 1 183 0
	movq	-176(%rbp), %rax	# xmx, xmx.32
	movl	-208(%rbp), %edx	# i, tmp677
	movslq	%edx, %rdx	# tmp677, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_425, D.6752
	addq	$8, %rax	#, D.6752
	movl	$-987654321, (%rax)	#, *_427
	.loc 1 184 0
	movq	-176(%rbp), %rax	# xmx, xmx.33
	movl	-208(%rbp), %edx	# i, tmp678
	movslq	%edx, %rdx	# tmp678, D.6753
	salq	$3, %rdx	#, D.6753
	subq	$8, %rdx	#, D.6755
	addq	%rdx, %rax	# D.6755, D.6754
	movq	(%rax), %rax	# *_432, D.6752
	addq	$8, %rax	#, D.6752
	movl	(%rax), %edx	# *_434, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp679
	movl	356(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp680
	movl	%eax, -188(%rbp)	# tmp680, sc
	cmpl	$-987654320, -188(%rbp)	#, sc
	jl	.L23	#,
	.loc 1 185 0
	movq	-176(%rbp), %rax	# xmx, xmx.34
	movl	-208(%rbp), %edx	# i, tmp681
	movslq	%edx, %rdx	# tmp681, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_441, D.6752
	leaq	8(%rax), %rdx	#, D.6752
	movl	-188(%rbp), %eax	# sc, tmp682
	movl	%eax, (%rdx)	# tmp682, *_443
.L23:
	.loc 1 186 0
	movq	-176(%rbp), %rax	# xmx, xmx.35
	movl	-208(%rbp), %edx	# i, tmp683
	movslq	%edx, %rdx	# tmp683, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_447, D.6752
	addq	$4, %rax	#, D.6752
	movl	(%rax), %edx	# *_449, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp684
	movl	344(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp685
	movl	%eax, -188(%rbp)	# tmp685, sc
	movq	-176(%rbp), %rax	# xmx, xmx.36
	movl	-208(%rbp), %edx	# i, tmp686
	movslq	%edx, %rdx	# tmp686, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_456, D.6752
	addq	$8, %rax	#, D.6752
	movl	(%rax), %eax	# *_458, D.6751
	cmpl	%eax, -188(%rbp)	# D.6751, sc
	jle	.L24	#,
	.loc 1 187 0
	movq	-176(%rbp), %rax	# xmx, xmx.37
	movl	-208(%rbp), %edx	# i, tmp687
	movslq	%edx, %rdx	# tmp687, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_463, D.6752
	leaq	8(%rax), %rdx	#, D.6752
	movl	-188(%rbp), %eax	# sc, tmp688
	movl	%eax, (%rdx)	# tmp688, *_465
.L24:
	.loc 1 119 0
	addl	$1, -208(%rbp)	#, i
.L4:
	.loc 1 119 0 is_stmt 0 discriminator 1
	movl	-208(%rbp), %eax	# i, tmp689
	cmpl	-220(%rbp), %eax	# L, tmp689
	jle	.L25	#,
	.loc 1 190 0 is_stmt 1
	movq	-176(%rbp), %rax	# xmx, xmx.38
	movl	-220(%rbp), %edx	# L, tmp690
	movslq	%edx, %rdx	# tmp690, D.6753
	salq	$3, %rdx	#, D.6753
	addq	%rdx, %rax	# D.6753, D.6754
	movq	(%rax), %rax	# *_470, D.6752
	addq	$8, %rax	#, D.6752
	movl	(%rax), %edx	# *_472, D.6751
	movq	-232(%rbp), %rax	# hmm, tmp691
	movl	352(%rax), %eax	# hmm_7(D)->xsc, D.6751
	addl	%edx, %eax	# D.6751, tmp692
	movl	%eax, -188(%rbp)	# tmp692, sc
	.loc 1 192 0
	cmpq	$0, -248(%rbp)	#, ret_tr
	je	.L26	#,
	.loc 1 193 0
	leaq	-184(%rbp), %rdi	#, tmp693
	movq	-240(%rbp), %rcx	# mx, tmp694
	movl	-220(%rbp), %edx	# L, tmp695
	movq	-216(%rbp), %rsi	# dsq, tmp696
	movq	-232(%rbp), %rax	# hmm, tmp697
	movq	%rdi, %r8	# tmp693,
	movq	%rax, %rdi	# tmp697,
	call	P7ViterbiTrace	#
	.loc 1 194 0
	movq	-184(%rbp), %rdx	# tr, tr.39
	movq	-248(%rbp), %rax	# ret_tr, tmp698
	movq	%rdx, (%rax)	# tr.39, *ret_tr_476(D)
.L26:
	.loc 1 197 0
	movl	-188(%rbp), %eax	# sc, tmp699
	movl	%eax, %edi	# tmp699,
	call	Scorify	#
	movss	%xmm0, -224(%rbp)	#, %sfp
	movl	-224(%rbp), %eax	# %sfp, D.6758
	.loc 1 198 0
	movl	%eax, -224(%rbp)	# <retval>, %sfp
	movss	-224(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	P7Viterbi, .-P7Viterbi
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x64a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF58
	.byte	0x1
	.long	.LASF59
	.long	.LASF60
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
	.long	.LASF61
	.byte	0x1
	.byte	0x45
	.long	0x7b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b
	.uleb128 0x11
	.string	"dsq"
	.byte	0x1
	.byte	0x45
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x11
	.string	"L"
	.byte	0x1
	.byte	0x45
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1
	.byte	0x45
	.long	0x3ec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x11
	.string	"mx"
	.byte	0x1
	.byte	0x45
	.long	0x63b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x45
	.long	0x641
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x13
	.string	"tr"
	.byte	0x1
	.byte	0x47
	.long	0x647
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x13
	.string	"xmx"
	.byte	0x1
	.byte	0x48
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x13
	.string	"mmx"
	.byte	0x1
	.byte	0x49
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x13
	.string	"imx"
	.byte	0x1
	.byte	0x4a
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x13
	.string	"dmx"
	.byte	0x1
	.byte	0x4b
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x4c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x13
	.string	"k"
	.byte	0x1
	.byte	0x4c
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x13
	.string	"sc"
	.byte	0x1
	.byte	0x4d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x13
	.string	"mc"
	.byte	0x1
	.byte	0x4e
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.string	"dc"
	.byte	0x1
	.byte	0x4e
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x13
	.string	"ic"
	.byte	0x1
	.byte	0x4e
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.string	"ms"
	.byte	0x1
	.byte	0x4f
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"is"
	.byte	0x1
	.byte	0x4f
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"mpp"
	.byte	0x1
	.byte	0x50
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"mpc"
	.byte	0x1
	.byte	0x50
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"ip"
	.byte	0x1
	.byte	0x50
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.string	"bp"
	.byte	0x1
	.byte	0x51
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.string	"ep"
	.byte	0x1
	.byte	0x52
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"xmb"
	.byte	0x1
	.byte	0x53
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x13
	.string	"xme"
	.byte	0x1
	.byte	0x54
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x13
	.string	"dpp"
	.byte	0x1
	.byte	0x55
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF51
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x56
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x13
	.string	"M"
	.byte	0x1
	.byte	0x57
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x342
	.uleb128 0x5
	.byte	0x8
	.long	0x647
	.uleb128 0x5
	.byte	0x8
	.long	0x3f2
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
.LASF28:
	.string	"bsc_mem"
.LASF43:
	.string	"maxM"
.LASF42:
	.string	"maxN"
.LASF61:
	.string	"P7Viterbi"
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
.LASF17:
	.string	"ctime"
.LASF30:
	.string	"dnam"
.LASF48:
	.string	"statetype"
.LASF18:
	.string	"checksum"
.LASF16:
	.string	"nseq"
.LASF25:
	.string	"tsc_mem"
.LASF26:
	.string	"msc_mem"
.LASF9:
	.string	"float"
.LASF40:
	.string	"imx_mem"
.LASF60:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF38:
	.string	"xmx_mem"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"tpdd"
.LASF56:
	.string	"tpdm"
.LASF20:
	.string	"mpri"
.LASF35:
	.string	"flags"
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
.LASF58:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF27:
	.string	"isc_mem"
.LASF2:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF29:
	.string	"esc_mem"
.LASF49:
	.string	"nodeidx"
.LASF55:
	.string	"tpii"
.LASF54:
	.string	"tpim"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF21:
	.string	"ipri"
.LASF53:
	.string	"tpmd"
.LASF22:
	.string	"tbd1"
.LASF52:
	.string	"tpmi"
.LASF51:
	.string	"tpmm"
.LASF59:
	.string	"fast_algorithms.c"
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
.LASF31:
	.string	"dnai"
.LASF50:
	.string	"ret_tr"
.LASF32:
	.string	"dna2"
.LASF33:
	.string	"dna4"
.LASF14:
	.string	"desc"
.LASF46:
	.string	"p7trace_s"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
