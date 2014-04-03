	.file	"kb.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64 kb.c
# -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
.LC0:
	.string	"-tmatfloor"
.LC1:
	.string	"-tmat"
.LC2:
	.string	"-gs"
.LC3:
	.string	"-subvq"
.LC4:
	.string	"-mixwfloor"
.LC5:
	.string	"-mixw"
.LC6:
	.string	"-varfloor"
.LC7:
	.string	"-var"
.LC8:
	.string	"-mean"
.LC9:
	.string	"-uw"
.LC10:
	.string	"-wip"
.LC11:
	.string	"-lw"
.LC12:
	.string	"-fillprob"
.LC13:
	.string	"-silprob"
.LC14:
	.string	"-senmgau"
.LC15:
	.string	"-fillpen"
.LC16:
	.string	"-lmdumpdir"
.LC17:
	.string	"-lmctlfn"
.LC18:
	.string	"-lm"
.LC19:
	.string	"-fdict"
.LC20:
	.string	"-dict"
.LC21:
	.string	"-mdef"
.LC22:
	.string	"-agc"
.LC23:
	.string	"-varnorm"
.LC24:
	.string	"-cmn"
.LC25:
	.string	"-feat"
.LC26:
	.string	"-logbase"
.LC27:
	.string	""
.LC28:
	.string	"FATAL_ERROR"
.LC29:
	.string	"kb.c"
.LC30:
	.string	"Initialization of kb failed\n"
.LC31:
	.string	"</s>"
.LC32:
	.string	"<s>"
.LC33:
	.string	"%s or %s not in dictionary\n"
.LC34:
	.string	"%s or %s not in LM %s\n"
.LC35:
	.string	"%s or %s not in LM\n"
	.align 8
.LC36:
	.string	"Tmat contains arcs skipping more than 1 state\n"
.LC37:
	.string	"SIL"
	.align 8
.LC38:
	.string	"Silence phone '%s' not in mdef\n"
.LC39:
	.string	"INFO"
.LC40:
	.string	"Building lextrees\n"
.LC41:
	.string	"-Nlextree"
.LC42:
	.string	"ERROR"
	.align 8
.LC43:
	.string	"No. of ugtrees specified: %d; will instantiate 1 ugtree\n"
	.align 8
.LC44:
	.string	"Creating Unigram Table for lm %d name %s\n"
	.align 8
.LC45:
	.string	"Size of word table after unigram + words in class: %d.\n"
.LC46:
	.string	"%d active words in %s\n"
	.align 8
.LC47:
	.string	"Size of word table after adding alternative prons: %d.\n"
.LC48:
	.string	"-treeugprob"
	.align 8
.LC49:
	.string	"Lextrees (%d) for lm %d name %s, %d nodes(ug)\n"
.LC50:
	.string	"Creating Unigram Table\n"
	.align 8
.LC51:
	.string	"Size of word table after unigram + words in class: %d\n"
.LC52:
	.string	"%d active words\n"
.LC53:
	.string	"Lextrees(%d), %d nodes(ug)\n"
	.align 8
.LC54:
	.string	"Lextrees(%d), %d nodes(filler)\n"
.LC55:
	.string	"-lextreedump"
	.align 8
.LC56:
	.string	"Currently, doesn't support -lextreedump for multiple-LMs\n"
.LC57:
	.string	"UGTREE %d\n"
.LC58:
	.string	"FILLERTREE %d\n"
.LC59:
	.string	"-wbeam"
.LC60:
	.string	"-pbeam"
.LC61:
	.string	"-beam"
.LC62:
	.string	"-subvqbeam"
	.align 8
.LC63:
	.string	"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\n"
.LC64:
	.string	"-ds"
.LC65:
	.string	"Down Sampling Ratio = %d\n"
.LC66:
	.string	"-cond_ds"
	.align 8
.LC67:
	.string	"Conditional Down Sampling Parameter = %d\n"
	.align 8
.LC68:
	.string	"Conditional Down Sampling require the use of Gaussian Selection map\n"
.LC69:
	.string	"-gs4gs"
	.align 8
.LC70:
	.string	"GS map would be used for Gaussian Selection? = %d\n"
.LC71:
	.string	"-svq4svq"
	.align 8
.LC72:
	.string	"SVQ would be used as Gaussian Score ?= %d\n"
.LC73:
	.string	"-ci_pbeam"
	.align 8
.LC74:
	.string	"CI phone beam to prune the number of parent CI phones in CI-base GMM Selection = %d\n"
	.align 8
.LC75:
	.string	"Virtually no CI phone beam is applied now. (ci_pbeam>1000000)\n"
.LC76:
	.string	"-wend_beam"
.LC77:
	.string	"Word-end pruning beam: %d\n"
.LC78:
	.string	"-pl_window"
	.align 8
.LC79:
	.string	"Phoneme look-ahead window size = %d\n"
.LC80:
	.string	"-pl_beam"
.LC81:
	.string	"Phoneme look-ahead beam = %d\n"
.LC82:
	.string	"feat_array_alloc() failed\n"
.LC83:
	.string	"-bghist"
.LC85:
	.string	"-hmmhistbinsize"
.LC86:
	.string	"-hypseg"
.LC87:
	.string	"w"
	.align 8
.LC88:
	.string	"fopen(%s,w) failed; use FWDXCT: from std logfile\n"
.LC89:
	.string	"-hyp"
	.text
	.globl	kb_init
	.type	kb_init, @function
kb_init:
.LFB2:
	.file 1 "kb.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$408, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -168(%rbp)	# kb, kb
	.loc 1 84 0
	movq	-168(%rbp), %rax	# kb, tmp539
	movl	$504, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp539,
	call	memset	#
	.loc 1 85 0
	movq	-168(%rbp), %rax	# kb, tmp540
	movq	$0, (%rax)	#, kb_26(D)->kbcore
	.loc 1 115 0
	movl	$.LC0, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_27], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm4	# D.6824, D.6825
	movsd	%xmm4, -176(%rbp)	# D.6825, %sfp
	.loc 1 114 0
	movl	$.LC1, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %r14	#, D.6823
	.loc 1 113 0
	movl	$.LC2, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %r15	#, D.6823
	.loc 1 112 0
	movl	$.LC3, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -184(%rbp)	#, %sfp
	.loc 1 111 0
	movl	$.LC4, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_33], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm5	# D.6824, D.6825
	movsd	%xmm5, -192(%rbp)	# D.6825, %sfp
	.loc 1 110 0
	movl	$.LC5, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -200(%rbp)	#, %sfp
	.loc 1 109 0
	movl	$.LC6, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_37], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm6	# D.6824, D.6825
	movsd	%xmm6, -208(%rbp)	# D.6825, %sfp
	.loc 1 108 0
	movl	$.LC7, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -216(%rbp)	#, %sfp
	.loc 1 107 0
	movl	$.LC8, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -224(%rbp)	#, %sfp
	.loc 1 106 0
	movl	$.LC9, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_42], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm1	# D.6824, D.6825
	movsd	%xmm1, -232(%rbp)	# D.6825, %sfp
	.loc 1 105 0
	movl	$.LC10, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_45], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm2	# D.6824, D.6825
	movsd	%xmm2, -240(%rbp)	# D.6825, %sfp
	.loc 1 104 0
	movl	$.LC11, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_48], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm3	# D.6824, D.6825
	movsd	%xmm3, -248(%rbp)	# D.6825, %sfp
	.loc 1 103 0
	movl	$.LC12, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_51], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm0	# D.6824, D.6825
	movsd	%xmm0, -256(%rbp)	# D.6825, %sfp
	.loc 1 102 0
	movl	$.LC13, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_54], D.6824
	.loc 1 87 0
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm8	# D.6824, D.6825
	movsd	%xmm8, -264(%rbp)	# D.6825, %sfp
	.loc 1 101 0
	movl	$.LC14, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -272(%rbp)	#, %sfp
	.loc 1 100 0
	movl	$.LC15, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -280(%rbp)	#, %sfp
	.loc 1 99 0
	movl	$.LC16, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -288(%rbp)	#, %sfp
	.loc 1 98 0
	movl	$.LC17, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -296(%rbp)	#, %sfp
	.loc 1 97 0
	movl	$.LC18, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -304(%rbp)	#, %sfp
	.loc 1 94 0
	movl	$.LC19, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -312(%rbp)	#, %sfp
	.loc 1 93 0
	movl	$.LC20, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -320(%rbp)	#, %sfp
	.loc 1 92 0
	movl	$.LC21, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -328(%rbp)	#, %sfp
	.loc 1 91 0
	movl	$.LC22, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -336(%rbp)	#, %sfp
	.loc 1 90 0
	movl	$.LC23, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %r13	#, D.6823
	.loc 1 89 0
	movl	$.LC24, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %r12	#, D.6823
	.loc 1 88 0
	movl	$.LC25, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, %rbx	#, D.6823
	.loc 1 87 0
	movl	$.LC26, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_69], D.6824
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm0	# D.6824, D.6825
	movsd	-176(%rbp), %xmm4	# %sfp, D.6825
	movsd	%xmm4, 104(%rsp)	# D.6825,
	movq	%r14, 96(%rsp)	# D.6823,
	movq	%r15, 88(%rsp)	# D.6823,
	movq	-184(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 80(%rsp)	# D.6823,
	movq	-200(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 72(%rsp)	# D.6823,
	movq	-216(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 64(%rsp)	# D.6823,
	movq	-224(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 56(%rsp)	# D.6823,
	movq	-272(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 48(%rsp)	# D.6823,
	movq	-280(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 40(%rsp)	# D.6823,
	movq	-288(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 32(%rsp)	# D.6823,
	movq	-296(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 24(%rsp)	# D.6823,
	movq	-304(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, 16(%rsp)	# D.6823,
	movq	$.LC27, 8(%rsp)	#,
	movq	-312(%rbp), %rsi	# %sfp, D.6823
	movq	%rsi, (%rsp)	# D.6823,
	movsd	-192(%rbp), %xmm7	# %sfp,
	movsd	-208(%rbp), %xmm6	# %sfp,
	movsd	-232(%rbp), %xmm5	# %sfp,
	movsd	-240(%rbp), %xmm4	# %sfp,
	movsd	-248(%rbp), %xmm3	# %sfp,
	movsd	-256(%rbp), %xmm2	# %sfp,
	movsd	-264(%rbp), %xmm1	# %sfp,
	movq	-320(%rbp), %r9	# %sfp,
	movq	-328(%rbp), %r8	# %sfp,
	movq	-336(%rbp), %rcx	# %sfp,
	movq	%r13, %rdx	# D.6823,
	movq	%r12, %rsi	# D.6823,
	movq	%rbx, %rdi	# D.6823,
	call	kbcore_init	#
	movq	-168(%rbp), %rdx	# kb, tmp541
	movq	%rax, (%rdx)	# D.6826, kb_26(D)->kbcore
	.loc 1 116 0
	movq	-168(%rbp), %rax	# kb, tmp542
	movq	(%rax), %rax	# kb_26(D)->kbcore, D.6826
	testq	%rax, %rax	# D.6826
	jne	.L2	#,
	.loc 1 117 0
	movl	$.LC28, %edx	#,
	movl	$117, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 120 0
	movq	-168(%rbp), %rax	# kb, tmp543
	movq	(%rax), %rax	# kb_26(D)->kbcore, tmp544
	movq	%rax, -128(%rbp)	# tmp544, kbcore
	.loc 1 122 0
	movq	-128(%rbp), %rax	# kbcore, tmp545
	movq	8(%rax), %rax	# kbcore_74->mdef, tmp546
	movq	%rax, -120(%rbp)	# tmp546, mdef
	.loc 1 123 0
	movq	-128(%rbp), %rax	# kbcore, tmp547
	movq	16(%rax), %rax	# kbcore_74->dict, tmp548
	movq	%rax, -112(%rbp)	# tmp548, dict
	.loc 1 124 0
	movq	-128(%rbp), %rax	# kbcore, tmp549
	movq	32(%rax), %rax	# kbcore_74->lm, tmp550
	movq	%rax, -104(%rbp)	# tmp550, lm
	.loc 1 125 0
	movq	-128(%rbp), %rax	# kbcore, tmp551
	movq	40(%rax), %rax	# kbcore_74->lmset, tmp552
	movq	%rax, -96(%rbp)	# tmp552, lmset
	.loc 1 126 0
	movq	-128(%rbp), %rax	# kbcore, tmp553
	movq	24(%rax), %rax	# kbcore_74->dict2pid, tmp554
	movq	%rax, -88(%rbp)	# tmp554, d2p
	.loc 1 128 0
	movq	-112(%rbp), %rax	# dict, tmp555
	movl	72(%rax), %eax	# dict_76->startwid, D.6827
	testl	%eax, %eax	# D.6827
	js	.L3	#,
	.loc 1 128 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# dict, tmp556
	movl	76(%rax), %eax	# dict_76->finishwid, D.6827
	testl	%eax, %eax	# D.6827
	jns	.L4	#,
.L3:
	.loc 1 129 0 is_stmt 1
	movl	$.LC28, %edx	#,
	movl	$129, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC31, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L4:
	.loc 1 131 0
	cmpq	$0, -96(%rbp)	#, lmset
	je	.L5	#,
	.loc 1 132 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L6	#
.L9:
	.loc 1 133 0
	movl	-148(%rbp), %eax	# i, tmp557
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp558
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _86->lm, D.6830
	movzwl	24(%rax), %eax	# _87->startlwid, D.6831
	cmpw	$-1, %ax	#, D.6831
	je	.L7	#,
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp559
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp560
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _91->lm, D.6830
	movzwl	26(%rax), %eax	# _92->finishlwid, D.6831
	cmpw	$-1, %ax	#, D.6831
	jne	.L8	#,
.L7:
	.loc 1 134 0 is_stmt 1
	movl	$.LC28, %edx	#,
	movl	$134, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	-148(%rbp), %eax	# i, tmp561
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp562
	addq	%rdx, %rax	# D.6828, D.6829
	movq	(%rax), %rax	# _96->name, D.6832
	movq	%rax, %rcx	# D.6832,
	movl	$.LC31, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L8:
	.loc 1 132 0
	addl	$1, -148(%rbp)	#, i
.L6:
	.loc 1 132 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# kbcore, tmp563
	movl	96(%rax), %eax	# kbcore_74->n_lm, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L9	#,
	jmp	.L10	#
.L5:
	.loc 1 136 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, lm
	je	.L10	#,
	.loc 1 137 0
	movq	-104(%rbp), %rax	# lm, tmp564
	movzwl	24(%rax), %eax	# lm_77->startlwid, D.6831
	cmpw	$-1, %ax	#, D.6831
	je	.L11	#,
	.loc 1 137 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# lm, tmp565
	movzwl	26(%rax), %eax	# lm_77->finishlwid, D.6831
	cmpw	$-1, %ax	#, D.6831
	jne	.L10	#,
.L11:
	.loc 1 138 0 is_stmt 1
	movl	$.LC28, %edx	#,
	movl	$138, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC31, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L10:
	.loc 1 143 0
	movq	-128(%rbp), %rax	# kbcore, tmp566
	movq	88(%rax), %rax	# kbcore_74->tmat, D.6833
	movq	%rax, %rdi	# D.6833,
	call	tmat_chk_1skip	#
	testl	%eax, %eax	# D.6827
	jns	.L12	#,
	.loc 1 144 0
	movl	$.LC28, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L12:
	.loc 1 151 0
	cmpq	$0, -96(%rbp)	#, lmset
	je	.L13	#,
	.loc 1 152 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L14	#
.L19:
	.loc 1 153 0
	movl	-148(%rbp), %eax	# i, tmp567
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp568
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _107->lm, D.6830
	movq	40(%rax), %rdx	# _108->ug, D.6834
	movl	-148(%rbp), %eax	# i, tmp569
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rcx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp570
	addq	%rcx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _112->lm, D.6830
	movzwl	24(%rax), %eax	# _113->startlwid, D.6831
	movzwl	%ax, %eax	# D.6831, D.6828
	salq	$4, %rax	#, D.6828
	addq	%rdx, %rax	# D.6834, D.6834
	movl	$-1, (%rax)	#, _117->dictwid
	.loc 1 154 0
	movl	-148(%rbp), %eax	# i, tmp571
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp572
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _120->lm, D.6830
	movq	40(%rax), %rdx	# _121->ug, D.6834
	movl	-148(%rbp), %eax	# i, tmp573
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rcx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp574
	addq	%rcx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _125->lm, D.6830
	movzwl	26(%rax), %eax	# _126->finishlwid, D.6831
	movzwl	%ax, %eax	# D.6831, D.6828
	salq	$4, %rax	#, D.6828
	addq	%rdx, %rax	# D.6834, D.6834
	movl	$-1, (%rax)	#, _130->dictwid
	.loc 1 156 0
	movq	-112(%rbp), %rax	# dict, tmp575
	movl	72(%rax), %eax	# dict_76->startwid, tmp576
	movl	%eax, -152(%rbp)	# tmp576, w
	jmp	.L15	#
.L16:
	.loc 1 157 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp577
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp578
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _134->lm, D.6830
	movq	208(%rax), %rax	# _135->dict2lmwid, D.6835
	movl	-152(%rbp), %edx	# w, tmp579
	movslq	%edx, %rdx	# tmp579, D.6828
	addq	%rdx, %rdx	# D.6828
	addq	%rdx, %rax	# D.6828, D.6835
	movw	$-1, (%rax)	#, *_139
	.loc 1 156 0 discriminator 2
	movq	-112(%rbp), %rax	# dict, tmp580
	movq	32(%rax), %rcx	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp581
	movslq	%eax, %rdx	# tmp581, D.6828
	movq	%rdx, %rax	# D.6828, tmp582
	salq	$2, %rax	#, tmp582
	addq	%rdx, %rax	# D.6828, tmp582
	salq	$3, %rax	#, tmp583
	addq	%rcx, %rax	# D.6836, D.6836
	movl	20(%rax), %eax	# _143->alt, tmp584
	movl	%eax, -152(%rbp)	# tmp584, w
.L15:
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, w
	jns	.L16	#,
	.loc 1 158 0 is_stmt 1
	movq	-112(%rbp), %rax	# dict, tmp585
	movl	76(%rax), %eax	# dict_76->finishwid, tmp586
	movl	%eax, -152(%rbp)	# tmp586, w
	jmp	.L17	#
.L18:
	.loc 1 159 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp587
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp588
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _148->lm, D.6830
	movq	208(%rax), %rax	# _149->dict2lmwid, D.6835
	movl	-152(%rbp), %edx	# w, tmp589
	movslq	%edx, %rdx	# tmp589, D.6828
	addq	%rdx, %rdx	# D.6828
	addq	%rdx, %rax	# D.6828, D.6835
	movw	$-1, (%rax)	#, *_153
	.loc 1 158 0 discriminator 2
	movq	-112(%rbp), %rax	# dict, tmp590
	movq	32(%rax), %rcx	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp591
	movslq	%eax, %rdx	# tmp591, D.6828
	movq	%rdx, %rax	# D.6828, tmp592
	salq	$2, %rax	#, tmp592
	addq	%rdx, %rax	# D.6828, tmp592
	salq	$3, %rax	#, tmp593
	addq	%rcx, %rax	# D.6836, D.6836
	movl	20(%rax), %eax	# _157->alt, tmp594
	movl	%eax, -152(%rbp)	# tmp594, w
.L17:
	.loc 1 158 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, w
	jns	.L18	#,
	.loc 1 152 0 is_stmt 1
	addl	$1, -148(%rbp)	#, i
.L14:
	.loc 1 152 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# kbcore, tmp595
	movl	96(%rax), %eax	# kbcore_74->n_lm, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L19	#,
	jmp	.L20	#
.L13:
	.loc 1 162 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, lm
	je	.L20	#,
	.loc 1 163 0
	movq	-104(%rbp), %rax	# lm, tmp596
	movq	40(%rax), %rdx	# lm_77->ug, D.6834
	movq	-104(%rbp), %rax	# lm, tmp597
	movzwl	24(%rax), %eax	# lm_77->startlwid, D.6831
	movzwl	%ax, %eax	# D.6831, D.6828
	salq	$4, %rax	#, D.6828
	addq	%rdx, %rax	# D.6834, D.6834
	movl	$-1, (%rax)	#, _164->dictwid
	.loc 1 164 0
	movq	-104(%rbp), %rax	# lm, tmp598
	movq	40(%rax), %rdx	# lm_77->ug, D.6834
	movq	-104(%rbp), %rax	# lm, tmp599
	movzwl	26(%rax), %eax	# lm_77->finishlwid, D.6831
	movzwl	%ax, %eax	# D.6831, D.6828
	salq	$4, %rax	#, D.6828
	addq	%rdx, %rax	# D.6834, D.6834
	movl	$-1, (%rax)	#, _169->dictwid
	.loc 1 165 0
	movq	-112(%rbp), %rax	# dict, tmp600
	movl	72(%rax), %eax	# dict_76->startwid, tmp601
	movl	%eax, -152(%rbp)	# tmp601, w
	jmp	.L21	#
.L22:
	.loc 1 166 0 discriminator 2
	movq	-128(%rbp), %rax	# kbcore, tmp602
	movq	56(%rax), %rax	# kbcore_74->dict2lmwid, D.6835
	movl	-152(%rbp), %edx	# w, tmp603
	movslq	%edx, %rdx	# tmp603, D.6828
	addq	%rdx, %rdx	# D.6828
	addq	%rdx, %rax	# D.6828, D.6835
	movw	$-1, (%rax)	#, *_174
	.loc 1 165 0 discriminator 2
	movq	-112(%rbp), %rax	# dict, tmp604
	movq	32(%rax), %rcx	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp605
	movslq	%eax, %rdx	# tmp605, D.6828
	movq	%rdx, %rax	# D.6828, tmp606
	salq	$2, %rax	#, tmp606
	addq	%rdx, %rax	# D.6828, tmp606
	salq	$3, %rax	#, tmp607
	addq	%rcx, %rax	# D.6836, D.6836
	movl	20(%rax), %eax	# _178->alt, tmp608
	movl	%eax, -152(%rbp)	# tmp608, w
.L21:
	.loc 1 165 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, w
	jns	.L22	#,
	.loc 1 167 0 is_stmt 1
	movq	-112(%rbp), %rax	# dict, tmp609
	movl	76(%rax), %eax	# dict_76->finishwid, tmp610
	movl	%eax, -152(%rbp)	# tmp610, w
	jmp	.L23	#
.L24:
	.loc 1 168 0 discriminator 2
	movq	-128(%rbp), %rax	# kbcore, tmp611
	movq	56(%rax), %rax	# kbcore_74->dict2lmwid, D.6835
	movl	-152(%rbp), %edx	# w, tmp612
	movslq	%edx, %rdx	# tmp612, D.6828
	addq	%rdx, %rdx	# D.6828
	addq	%rdx, %rax	# D.6828, D.6835
	movw	$-1, (%rax)	#, *_184
	.loc 1 167 0 discriminator 2
	movq	-112(%rbp), %rax	# dict, tmp613
	movq	32(%rax), %rcx	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp614
	movslq	%eax, %rdx	# tmp614, D.6828
	movq	%rdx, %rax	# D.6828, tmp615
	salq	$2, %rax	#, tmp615
	addq	%rdx, %rax	# D.6828, tmp615
	salq	$3, %rax	#, tmp616
	addq	%rcx, %rax	# D.6836, D.6836
	movl	20(%rax), %eax	# _188->alt, tmp617
	movl	%eax, -152(%rbp)	# tmp617, w
.L23:
	.loc 1 167 0 is_stmt 0 discriminator 1
	cmpl	$0, -152(%rbp)	#, w
	jns	.L24	#,
.L20:
	.loc 1 171 0 is_stmt 1
	movq	-128(%rbp), %rax	# kbcore, tmp618
	movq	8(%rax), %rax	# kbcore_74->mdef, D.6837
	movzbl	88(%rax), %eax	# _190->sil, tmp619
	movb	%al, -153(%rbp)	# tmp619, sil
	.loc 1 172 0
	cmpb	$0, -153(%rbp)	#, sil
	jns	.L25	#,
	.loc 1 173 0
	movl	$.LC28, %edx	#,
	movl	$173, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC37, %esi	#,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L25:
	.loc 1 176 0
	movq	-120(%rbp), %rax	# mdef, tmp620
	movl	16(%rax), %eax	# mdef_75->n_sen, D.6827
	cltq
	movl	$176, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp621
	movq	%rax, 88(%rdx)	# D.6838, kb_26(D)->sen_active
	.loc 1 177 0
	movq	-120(%rbp), %rax	# mdef, tmp622
	movl	16(%rax), %eax	# mdef_75->n_sen, D.6827
	cltq
	movl	$177, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp623
	movq	%rax, 96(%rdx)	# D.6838, kb_26(D)->rec_sen_active
	.loc 1 178 0
	movq	-120(%rbp), %rax	# mdef, tmp624
	movl	56(%rax), %eax	# mdef_75->n_sseq, D.6827
	cltq
	movl	$178, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp625
	movq	%rax, 72(%rdx)	# D.6838, kb_26(D)->ssid_active
	.loc 1 179 0
	movq	-88(%rbp), %rax	# d2p, tmp626
	movl	52(%rax), %eax	# d2p_79->n_comsseq, D.6827
	cltq
	movl	$179, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp627
	movq	%rax, 80(%rdx)	# D.6838, kb_26(D)->comssid_active
	.loc 1 182 0
	movq	-120(%rbp), %rax	# mdef, tmp628
	movl	(%rax), %eax	# mdef_75->n_ciphone, D.6827
	addl	$1, %eax	#, D.6827
	cltq
	movl	$182, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	%rax, -80(%rbp)	# tmp629, lc
	.loc 1 183 0
	movq	-120(%rbp), %rax	# mdef, tmp630
	movl	(%rax), %eax	# mdef_75->n_ciphone, D.6827
	addl	$31, %eax	#, D.6827
	sarl	$5, %eax	#, D.6827
	cltq
	movl	$183, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	%rax, -72(%rbp)	# tmp631, lc_active
	.loc 1 184 0
	movl	$0, -152(%rbp)	#, w
	jmp	.L26	#
.L28:
	.loc 1 185 0
	movq	-112(%rbp), %rax	# dict, tmp632
	movq	32(%rax), %rcx	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp633
	movslq	%eax, %rdx	# tmp633, D.6828
	movq	%rdx, %rax	# D.6828, tmp634
	salq	$2, %rax	#, tmp634
	addq	%rdx, %rax	# D.6828, tmp634
	salq	$3, %rax	#, tmp635
	addq	%rcx, %rax	# D.6836, D.6836
	movq	8(%rax), %rcx	# _218->ciphone, D.6839
	movq	-112(%rbp), %rax	# dict, tmp636
	movq	32(%rax), %rsi	# dict_76->word, D.6836
	movl	-152(%rbp), %eax	# w, tmp637
	movslq	%eax, %rdx	# tmp637, D.6828
	movq	%rdx, %rax	# D.6828, tmp638
	salq	$2, %rax	#, tmp638
	addq	%rdx, %rax	# D.6828, tmp638
	salq	$3, %rax	#, tmp639
	addq	%rsi, %rax	# D.6836, D.6836
	movl	16(%rax), %eax	# _223->pronlen, D.6827
	cltq
	subq	$1, %rax	#, D.6840
	addq	%rcx, %rax	# D.6839, D.6839
	movzbl	(%rax), %eax	# *_227, tmp640
	movb	%al, -154(%rbp)	# tmp640, ci
	.loc 1 186 0
	movq	-120(%rbp), %rax	# mdef, tmp641
	movq	32(%rax), %rax	# mdef_75->ciphone, D.6841
	movsbq	-154(%rbp), %rdx	# ci, D.6828
	salq	$4, %rdx	#, D.6828
	addq	%rdx, %rax	# D.6828, D.6841
	movl	8(%rax), %eax	# _232->filler, D.6827
	testl	%eax, %eax	# D.6827
	jne	.L27	#,
	.loc 1 187 0
	movzbl	-154(%rbp), %eax	# ci, tmp642
	sarb	$5, %al	#, D.6842
	movsbq	%al, %rax	# D.6842, D.6828
	leaq	0(,%rax,4), %rdx	#, D.6828
	movq	-72(%rbp), %rax	# lc_active, tmp643
	addq	%rdx, %rax	# D.6828, D.6843
	movzbl	-154(%rbp), %edx	# ci, tmp644
	sarb	$5, %dl	#, D.6842
	movsbq	%dl, %rdx	# D.6842, D.6828
	leaq	0(,%rdx,4), %rcx	#, D.6828
	movq	-72(%rbp), %rdx	# lc_active, tmp645
	addq	%rcx, %rdx	# D.6828, D.6843
	movl	(%rdx), %esi	# *_241, D.6844
	movsbl	-154(%rbp), %edx	# ci, D.6827
	andl	$31, %edx	#, D.6827
	movl	$1, %edi	#, tmp646
	movl	%edx, %ecx	# D.6827, tmp898
	sall	%cl, %edi	# tmp898, D.6827
	movl	%edi, %edx	# D.6827, D.6827
	orl	%esi, %edx	# D.6844, D.6844
	movl	%edx, (%rax)	# D.6844, *_237
.L27:
	.loc 1 184 0
	addl	$1, -152(%rbp)	#, w
.L26:
	.loc 1 184 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# dict, tmp647
	movl	52(%rax), %eax	# dict_76->n_word, D.6827
	cmpl	-152(%rbp), %eax	# w, D.6827
	jg	.L28	#,
	.loc 1 189 0 is_stmt 1
	movq	-120(%rbp), %rax	# mdef, tmp648
	movzbl	88(%rax), %eax	# mdef_75->sil, tmp649
	movb	%al, -154(%rbp)	# tmp649, ci
	.loc 1 190 0
	movzbl	-154(%rbp), %eax	# ci, tmp650
	sarb	$5, %al	#, D.6842
	movsbq	%al, %rax	# D.6842, D.6828
	leaq	0(,%rax,4), %rdx	#, D.6828
	movq	-72(%rbp), %rax	# lc_active, tmp651
	addq	%rdx, %rax	# D.6828, D.6843
	movzbl	-154(%rbp), %edx	# ci, tmp652
	sarb	$5, %dl	#, D.6842
	movsbq	%dl, %rdx	# D.6842, D.6828
	leaq	0(,%rdx,4), %rcx	#, D.6828
	movq	-72(%rbp), %rdx	# lc_active, tmp653
	addq	%rcx, %rdx	# D.6828, D.6843
	movl	(%rdx), %esi	# *_257, D.6844
	movsbl	-154(%rbp), %edx	# ci, D.6827
	andl	$31, %edx	#, D.6827
	movl	$1, %edi	#, tmp654
	movl	%edx, %ecx	# D.6827, tmp900
	sall	%cl, %edi	# tmp900, D.6827
	movl	%edi, %edx	# D.6827, D.6827
	orl	%esi, %edx	# D.6844, D.6844
	movl	%edx, (%rax)	# D.6844, *_253
	.loc 1 191 0
	movb	$0, -154(%rbp)	#, ci
	movl	$0, -140(%rbp)	#, n_lc
	jmp	.L29	#
.L31:
	.loc 1 192 0
	movzbl	-154(%rbp), %eax	# ci, tmp655
	sarb	$5, %al	#, D.6842
	movsbq	%al, %rax	# D.6842, D.6828
	leaq	0(,%rax,4), %rdx	#, D.6828
	movq	-72(%rbp), %rax	# lc_active, tmp656
	addq	%rdx, %rax	# D.6828, D.6843
	movl	(%rax), %edx	# *_271, D.6844
	movsbl	-154(%rbp), %eax	# ci, D.6827
	andl	$31, %eax	#, D.6827
	movl	$1, %esi	#, tmp657
	movl	%eax, %ecx	# D.6827, tmp902
	sall	%cl, %esi	# tmp902, D.6827
	movl	%esi, %eax	# D.6827, D.6827
	andl	%edx, %eax	# D.6844, D.6844
	testl	%eax, %eax	# D.6844
	je	.L30	#,
	.loc 1 193 0
	movl	-140(%rbp), %eax	# n_lc, n_lc.0
	leal	1(%rax), %edx	#, tmp658
	movl	%edx, -140(%rbp)	# tmp658, n_lc
	movslq	%eax, %rdx	# n_lc.0, D.6840
	movq	-80(%rbp), %rax	# lc, tmp659
	addq	%rax, %rdx	# tmp659, D.6839
	movzbl	-154(%rbp), %eax	# ci, tmp660
	movb	%al, (%rdx)	# tmp660, *_281
.L30:
	.loc 1 191 0
	movzbl	-154(%rbp), %eax	# ci, ci.1
	addl	$1, %eax	#, tmp661
	movb	%al, -154(%rbp)	# tmp661, ci
.L29:
	.loc 1 191 0 is_stmt 0 discriminator 1
	movsbl	-154(%rbp), %edx	# ci, D.6827
	movq	-120(%rbp), %rax	# mdef, tmp662
	movl	(%rax), %eax	# mdef_75->n_ciphone, D.6827
	cmpl	%eax, %edx	# D.6827, D.6827
	jl	.L31	#,
	.loc 1 195 0 is_stmt 1
	movl	-140(%rbp), %eax	# n_lc, tmp663
	movslq	%eax, %rdx	# tmp663, D.6840
	movq	-80(%rbp), %rax	# lc, tmp664
	addq	%rdx, %rax	# D.6840, D.6839
	movb	$-1, (%rax)	#, *_285
	.loc 1 197 0
	movl	$.LC39, %edx	#,
	movl	$197, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC40, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 199 0
	movl	$.LC41, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_286], D.6827
	movq	-168(%rbp), %rax	# kb, tmp665
	movl	%edx, 8(%rax)	# D.6827, kb_26(D)->n_lextree
	.loc 1 200 0
	movq	-168(%rbp), %rax	# kb, tmp666
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	testl	%eax, %eax	# D.6827
	jg	.L32	#,
	.loc 1 201 0
	movl	$.LC42, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movq	-168(%rbp), %rax	# kb, tmp667
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 203 0
	movq	-168(%rbp), %rax	# kb, tmp668
	movl	$1, 8(%rax)	#, kb_26(D)->n_lextree
.L32:
	.loc 1 208 0
	movq	-112(%rbp), %rax	# dict, tmp669
	movl	52(%rax), %eax	# dict_76->n_word, D.6827
	cltq
	movl	$208, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	%rax, -64(%rbp)	# tmp670, wp
	.loc 1 211 0
	cmpq	$0, -96(%rbp)	#, lmset
	je	.L33	#,
	.loc 1 212 0
	movq	-128(%rbp), %rax	# kbcore, tmp671
	movl	96(%rax), %edx	# kbcore_74->n_lm, D.6827
	movq	-168(%rbp), %rax	# kb, tmp672
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	%edx, %eax	# D.6827, D.6827
	cltq
	movl	$212, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp673
	movq	%rax, 24(%rdx)	# D.6838, kb_26(D)->ugtreeMulti
	.loc 1 214 0
	movq	-168(%rbp), %rax	# kb, tmp674
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cltq
	movl	$214, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp675
	movq	%rax, 16(%rdx)	# D.6838, kb_26(D)->ugtree
	.loc 1 216 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L34	#
.L43:
	.loc 1 217 0
	movl	$.LC39, %edx	#,
	movl	$217, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-148(%rbp), %eax	# i, tmp676
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp677
	addq	%rdx, %rax	# D.6828, D.6829
	movq	(%rax), %rdx	# _305->name, D.6832
	movl	-148(%rbp), %eax	# i, tmp678
	movl	%eax, %esi	# tmp678,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 218 0
	movl	$0, -144(%rbp)	#, n
	.loc 1 219 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L35	#
.L36:
	.loc 1 220 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp679
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp680
	addq	%rdx, %rax	# D.6828, D.6845
	movl	$-1, (%rax)	#, _312->wid
	.loc 1 221 0 discriminator 2
	movl	-132(%rbp), %eax	# j, tmp681
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp682
	addq	%rdx, %rax	# D.6828, D.6845
	movl	$-1, 4(%rax)	#, _315->prob
	.loc 1 219 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L35:
	.loc 1 219 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# dict, tmp683
	movl	52(%rax), %eax	# dict_76->n_word, D.6827
	cmpl	-132(%rbp), %eax	# j, D.6827
	jg	.L36	#,
	.loc 1 223 0 is_stmt 1
	movl	-148(%rbp), %eax	# i, tmp684
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp685
	addq	%rdx, %rax	# D.6828, D.6829
	movq	8(%rax), %rax	# _319->lm, D.6830
	movq	-64(%rbp), %rdx	# wp, tmp686
	movq	-112(%rbp), %rsi	# dict, tmp687
	movq	%rdx, %rcx	# tmp686,
	movl	$-2147483648, %edx	#,
	movq	%rax, %rdi	# D.6830,
	call	lm_ug_wordprob	#
	movl	%eax, -144(%rbp)	# tmp688, n
	.loc 1 224 0
	movl	$.LC39, %edx	#,
	movl	$224, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-144(%rbp), %eax	# n, tmp689
	movl	%eax, %esi	# tmp689,
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 225 0
	cmpl	$0, -144(%rbp)	#, n
	jg	.L37	#,
	.loc 1 226 0
	movl	$.LC28, %edx	#,
	movl	$226, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	-148(%rbp), %eax	# i, tmp690
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp691
	addq	%rdx, %rax	# D.6828, D.6829
	movq	(%rax), %rdx	# _324->name, D.6832
	movl	-144(%rbp), %eax	# n, tmp692
	movl	%eax, %esi	# tmp692,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L37:
	.loc 1 227 0
	movl	-144(%rbp), %edx	# n, tmp693
	movq	-64(%rbp), %rcx	# wp, tmp694
	movq	-112(%rbp), %rax	# dict, tmp695
	movq	%rcx, %rsi	# tmp694,
	movq	%rax, %rdi	# tmp695,
	call	wid_wordprob2alt	#
	movl	%eax, -144(%rbp)	# tmp696, n
	.loc 1 228 0
	movl	$.LC39, %edx	#,
	movl	$228, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-144(%rbp), %eax	# n, tmp697
	movl	%eax, %esi	# tmp697,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 229 0
	movl	$.LC48, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_327], D.6827
	testl	%eax, %eax	# D.6827
	jne	.L38	#,
	.loc 1 230 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L39	#
.L40:
	.loc 1 231 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp698
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp699
	addq	%rdx, %rax	# D.6828, D.6845
	movl	$-1, 4(%rax)	#, _332->prob
	.loc 1 230 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L39:
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp700
	cmpl	-144(%rbp), %eax	# n, tmp700
	jl	.L40	#,
.L38:
	.loc 1 234 0 is_stmt 1
	movl	$0, -132(%rbp)	#, j
	jmp	.L41	#
.L42:
	.loc 1 235 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp701
	movq	24(%rax), %rdx	# kb_26(D)->ugtreeMulti, D.6846
	movq	-168(%rbp), %rax	# kb, tmp702
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	-148(%rbp), %eax	# i, D.6827
	movl	%eax, %ecx	# D.6827, D.6827
	movl	-132(%rbp), %eax	# j, tmp703
	addl	%ecx, %eax	# D.6827, D.6827
	cltq
	salq	$3, %rax	#, D.6828
	leaq	(%rdx,%rax), %rbx	#, D.6846
	movq	-80(%rbp), %rcx	# lc, tmp704
	movl	-144(%rbp), %edx	# n, tmp705
	movq	-64(%rbp), %rsi	# wp, tmp706
	movq	-128(%rbp), %rax	# kbcore, tmp707
	movq	%rax, %rdi	# tmp707,
	call	lextree_build	#
	movq	%rax, (%rbx)	# D.6847, *_342
	.loc 1 236 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp708
	movq	24(%rax), %rdx	# kb_26(D)->ugtreeMulti, D.6846
	movq	-168(%rbp), %rax	# kb, tmp709
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	-148(%rbp), %eax	# i, D.6827
	movl	%eax, %ecx	# D.6827, D.6827
	movl	-132(%rbp), %eax	# j, tmp710
	addl	%ecx, %eax	# D.6827, D.6827
	cltq
	salq	$3, %rax	#, D.6828
	addq	%rdx, %rax	# D.6846, D.6846
	movq	(%rax), %rax	# *_350, D.6847
	movl	$0, (%rax)	#, _351->type
	.loc 1 237 0 discriminator 2
	movl	$.LC39, %edx	#,
	movl	$237, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 238 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp711
	movq	24(%rax), %rdx	# kb_26(D)->ugtreeMulti, D.6846
	movq	-168(%rbp), %rax	# kb, tmp712
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	-148(%rbp), %eax	# i, D.6827
	movl	%eax, %ecx	# D.6827, D.6827
	movl	-132(%rbp), %eax	# j, tmp713
	addl	%ecx, %eax	# D.6827, D.6827
	cltq
	salq	$3, %rax	#, D.6828
	addq	%rdx, %rax	# D.6846, D.6846
	movq	(%rax), %rax	# *_358, D.6847
	.loc 1 237 0 discriminator 2
	movl	28(%rax), %esi	# _359->n_node, D.6827
	.loc 1 238 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp714
	cltq
	salq	$4, %rax	#, D.6828
	movq	%rax, %rdx	# D.6828, D.6828
	movq	-96(%rbp), %rax	# lmset, tmp715
	addq	%rdx, %rax	# D.6828, D.6829
	.loc 1 237 0 discriminator 2
	movq	(%rax), %rcx	# _363->name, D.6832
	movq	-168(%rbp), %rax	# kb, tmp716
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	movl	-148(%rbp), %edx	# i, tmp717
	movl	%esi, %r8d	# D.6827,
	movl	%eax, %esi	# D.6827,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 234 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L41:
	.loc 1 234 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp718
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cmpl	-132(%rbp), %eax	# j, D.6827
	jg	.L42	#,
	.loc 1 216 0 is_stmt 1
	addl	$1, -148(%rbp)	#, i
.L34:
	.loc 1 216 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# kbcore, tmp719
	movl	96(%rax), %eax	# kbcore_74->n_lm, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L43	#,
	jmp	.L44	#
.L33:
	.loc 1 242 0 is_stmt 1
	cmpq	$0, -104(%rbp)	#, lm
	je	.L44	#,
	.loc 1 243 0
	movl	$.LC39, %edx	#,
	movl	$243, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 244 0
	movl	$0, -144(%rbp)	#, n
	.loc 1 245 0
	movq	-64(%rbp), %rdx	# wp, tmp720
	movq	-112(%rbp), %rsi	# dict, tmp721
	movq	-104(%rbp), %rax	# lm, tmp722
	movq	%rdx, %rcx	# tmp720,
	movl	$-2147483648, %edx	#,
	movq	%rax, %rdi	# tmp722,
	call	lm_ug_wordprob	#
	movl	%eax, -144(%rbp)	# tmp723, n
	.loc 1 246 0
	movl	$.LC39, %edx	#,
	movl	$246, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-144(%rbp), %eax	# n, tmp724
	movl	%eax, %esi	# tmp724,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 247 0
	cmpl	$0, -144(%rbp)	#, n
	jg	.L45	#,
	.loc 1 248 0
	movl	$.LC28, %edx	#,
	movl	$248, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	-144(%rbp), %eax	# n, tmp725
	movl	%eax, %esi	# tmp725,
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L45:
	.loc 1 249 0
	movl	-144(%rbp), %edx	# n, tmp726
	movq	-64(%rbp), %rcx	# wp, tmp727
	movq	-112(%rbp), %rax	# dict, tmp728
	movq	%rcx, %rsi	# tmp727,
	movq	%rax, %rdi	# tmp728,
	call	wid_wordprob2alt	#
	movl	%eax, -144(%rbp)	# tmp729, n
	.loc 1 252 0
	movl	$.LC48, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_371], D.6827
	testl	%eax, %eax	# D.6827
	jne	.L46	#,
	.loc 1 253 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L47	#
.L48:
	.loc 1 254 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp730
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp731
	addq	%rdx, %rax	# D.6828, D.6845
	movl	$-1, 4(%rax)	#, _376->prob
	.loc 1 253 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L47:
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp732
	cmpl	-144(%rbp), %eax	# n, tmp732
	jl	.L48	#,
.L46:
	.loc 1 258 0 is_stmt 1
	movq	-168(%rbp), %rax	# kb, tmp733
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cltq
	movl	$258, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp734
	movq	%rax, 16(%rdx)	# D.6838, kb_26(D)->ugtree
	.loc 1 259 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 260 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp735
	movq	16(%rax), %rax	# kb_26(D)->ugtree, D.6846
	movl	-148(%rbp), %edx	# i, tmp736
	movslq	%edx, %rdx	# tmp736, D.6828
	salq	$3, %rdx	#, D.6828
	leaq	(%rax,%rdx), %rbx	#, D.6846
	movq	-80(%rbp), %rcx	# lc, tmp737
	movl	-144(%rbp), %edx	# n, tmp738
	movq	-64(%rbp), %rsi	# wp, tmp739
	movq	-128(%rbp), %rax	# kbcore, tmp740
	movq	%rax, %rdi	# tmp740,
	call	lextree_build	#
	movq	%rax, (%rbx)	# D.6847, *_386
	.loc 1 261 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp741
	movq	16(%rax), %rax	# kb_26(D)->ugtree, D.6846
	movl	-148(%rbp), %edx	# i, tmp742
	movslq	%edx, %rdx	# tmp742, D.6828
	salq	$3, %rdx	#, D.6828
	addq	%rdx, %rax	# D.6828, D.6846
	movq	(%rax), %rax	# *_391, D.6847
	movl	$0, (%rax)	#, _392->type
	.loc 1 259 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L49:
	.loc 1 259 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp743
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L50	#,
	.loc 1 263 0 is_stmt 1
	movl	$.LC39, %edx	#,
	movl	$263, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 264 0
	movq	-168(%rbp), %rax	# kb, tmp744
	movq	16(%rax), %rax	# kb_26(D)->ugtree, D.6846
	movq	(%rax), %rax	# *_394, D.6847
	.loc 1 263 0
	movl	28(%rax), %edx	# _395->n_node, D.6827
	movq	-168(%rbp), %rax	# kb, tmp745
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L44:
	.loc 1 271 0
	movl	$0, -144(%rbp)	#, n
	.loc 1 272 0
	movq	-112(%rbp), %rax	# dict, tmp746
	movl	56(%rax), %eax	# dict_76->filler_start, tmp747
	movl	%eax, -148(%rbp)	# tmp747, i
	jmp	.L51	#
.L53:
	.loc 1 273 0
	movl	-148(%rbp), %edx	# i, tmp748
	movq	-112(%rbp), %rax	# dict, tmp749
	movl	%edx, %esi	# tmp748,
	movq	%rax, %rdi	# tmp749,
	call	dict_filler_word	#
	testl	%eax, %eax	# D.6827
	je	.L52	#,
	.loc 1 274 0
	movl	-144(%rbp), %eax	# n, tmp750
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp751
	addq	%rax, %rdx	# tmp751, D.6845
	movl	-148(%rbp), %eax	# i, tmp752
	movl	%eax, (%rdx)	# tmp752, _404->wid
	.loc 1 275 0
	movl	-144(%rbp), %eax	# n, tmp753
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6828
	movq	-64(%rbp), %rax	# wp, tmp754
	leaq	(%rdx,%rax), %rbx	#, D.6845
	movq	-128(%rbp), %rax	# kbcore, tmp755
	movq	48(%rax), %rax	# kbcore_74->fillpen, D.6848
	movl	-148(%rbp), %edx	# i, tmp756
	movl	%edx, %esi	# tmp756,
	movq	%rax, %rdi	# D.6848,
	call	fillpen	#
	movl	%eax, 4(%rbx)	# D.6827, _407->prob
	.loc 1 276 0
	addl	$1, -144(%rbp)	#, n
.L52:
	.loc 1 272 0
	addl	$1, -148(%rbp)	#, i
.L51:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# dict, tmp757
	movl	60(%rax), %eax	# dict_76->filler_end, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jge	.L53	#,
	.loc 1 281 0 is_stmt 1
	movq	-168(%rbp), %rax	# kb, tmp758
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cltq
	movl	$281, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp759
	movq	%rax, 32(%rdx)	# D.6838, kb_26(D)->fillertree
	.loc 1 282 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L54	#
.L55:
	.loc 1 283 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp760
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movl	-148(%rbp), %edx	# i, tmp761
	movslq	%edx, %rdx	# tmp761, D.6828
	salq	$3, %rdx	#, D.6828
	leaq	(%rax,%rdx), %rbx	#, D.6846
	movl	-144(%rbp), %edx	# n, tmp762
	movq	-64(%rbp), %rsi	# wp, tmp763
	movq	-128(%rbp), %rax	# kbcore, tmp764
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp764,
	call	lextree_build	#
	movq	%rax, (%rbx)	# D.6847, *_420
	.loc 1 284 0 discriminator 2
	movq	-168(%rbp), %rax	# kb, tmp765
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movl	-148(%rbp), %edx	# i, tmp766
	movslq	%edx, %rdx	# tmp766, D.6828
	salq	$3, %rdx	#, D.6828
	addq	%rdx, %rax	# D.6828, D.6846
	movq	(%rax), %rax	# *_425, D.6847
	movl	$-1, (%rax)	#, _426->type
	.loc 1 282 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L54:
	.loc 1 282 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp767
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L55	#,
	.loc 1 286 0 is_stmt 1
	movq	-64(%rbp), %rax	# wp, tmp768
	movq	%rax, %rdi	# tmp768,
	call	ckd_free	#
	.loc 1 287 0
	movq	-80(%rbp), %rax	# lc, tmp769
	movq	%rax, %rdi	# tmp769,
	call	ckd_free	#
	.loc 1 288 0
	movq	-72(%rbp), %rax	# lc_active, tmp770
	movq	%rax, %rdi	# tmp770,
	call	ckd_free	#
	.loc 1 291 0
	movl	$.LC39, %edx	#,
	movl	$291, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 293 0
	movq	-168(%rbp), %rax	# kb, tmp771
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movq	(%rax), %rax	# *_428, D.6847
	.loc 1 291 0
	movl	28(%rax), %edx	# _429->n_node, D.6827
	movq	-168(%rbp), %rax	# kb, tmp772
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 296 0
	movl	$.LC55, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %eax	# MEM[(int32 *)_432], D.6827
	testl	%eax, %eax	# D.6827
	je	.L56	#,
	.loc 1 297 0
	cmpq	$0, -96(%rbp)	#, lmset
	je	.L57	#,
	.loc 1 298 0
	movl	$.LC28, %edx	#,
	movl	$298, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L57:
	.loc 1 300 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L58	#
.L59:
	.loc 1 301 0 discriminator 2
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movl	-148(%rbp), %edx	# i, tmp773
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# stderr.2,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 302 0 discriminator 2
	movq	stderr(%rip), %rdx	# stderr, stderr.3
	movq	-168(%rbp), %rax	# kb, tmp774
	movq	16(%rax), %rax	# kb_26(D)->ugtree, D.6846
	movl	-148(%rbp), %ecx	# i, tmp775
	movslq	%ecx, %rcx	# tmp775, D.6828
	salq	$3, %rcx	#, D.6828
	addq	%rcx, %rax	# D.6828, D.6846
	movq	(%rax), %rax	# *_441, D.6847
	movq	-112(%rbp), %rcx	# dict, tmp776
	movq	%rcx, %rsi	# tmp776,
	movq	%rax, %rdi	# D.6847,
	call	lextree_dump	#
	.loc 1 300 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L58:
	.loc 1 300 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp777
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L59	#,
	.loc 1 304 0 is_stmt 1
	movl	$0, -148(%rbp)	#, i
	jmp	.L60	#
.L61:
	.loc 1 305 0 discriminator 2
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movl	-148(%rbp), %edx	# i, tmp778
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# stderr.4,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 306 0 discriminator 2
	movq	stderr(%rip), %rdx	# stderr, stderr.5
	movq	-168(%rbp), %rax	# kb, tmp779
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movl	-148(%rbp), %ecx	# i, tmp780
	movslq	%ecx, %rcx	# tmp780, D.6828
	salq	$3, %rcx	#, D.6828
	addq	%rcx, %rax	# D.6828, D.6846
	movq	(%rax), %rax	# *_451, D.6847
	movq	-112(%rbp), %rcx	# dict, tmp781
	movq	%rcx, %rsi	# tmp781,
	movq	%rax, %rdi	# D.6847,
	call	lextree_dump	#
	.loc 1 304 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L60:
	.loc 1 304 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp782
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	cmpl	-148(%rbp), %eax	# i, D.6827
	jg	.L61	#,
	.loc 1 308 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movq	%rax, %rdi	# stderr.6,
	call	fflush	#
.L56:
	.loc 1 312 0
	movq	-128(%rbp), %rax	# kbcore, tmp783
	movq	24(%rax), %rax	# kbcore_74->dict2pid, D.6849
	.loc 1 311 0
	movl	48(%rax), %edx	# _455->n_comstate, D.6827
	movq	-128(%rbp), %rax	# kbcore, tmp784
	movq	64(%rax), %rax	# kbcore_74->mgau, D.6850
	movl	(%rax), %eax	# _457->n_mgau, D.6827
	movl	%edx, %esi	# D.6827,
	movl	%eax, %edi	# D.6827,
	call	ascr_init	#
	movq	-168(%rbp), %rdx	# kb, tmp785
	movq	%rax, 152(%rdx)	# D.6851, kb_26(D)->ascr
	.loc 1 316 0
	movl	$.LC59, %edi	#,
	call	cmd_ln_access	#
	.loc 1 313 0
	movq	(%rax), %r13	# MEM[(float64 *)_460], D.6825
	.loc 1 315 0
	movl	$.LC60, %edi	#,
	call	cmd_ln_access	#
	.loc 1 313 0
	movq	(%rax), %r12	# MEM[(float64 *)_462], D.6825
	.loc 1 314 0
	movl	$.LC61, %edi	#,
	call	cmd_ln_access	#
	.loc 1 313 0
	movq	(%rax), %rbx	# MEM[(float64 *)_464], D.6825
	movl	$.LC62, %edi	#,
	call	cmd_ln_access	#
	movq	(%rax), %rax	# MEM[(float64 *)_466], D.6825
	movq	%r13, -176(%rbp)	# D.6825, %sfp
	movsd	-176(%rbp), %xmm3	# %sfp,
	movq	%r12, -176(%rbp)	# D.6825, %sfp
	movsd	-176(%rbp), %xmm2	# %sfp,
	movq	%rbx, -176(%rbp)	# D.6825, %sfp
	movsd	-176(%rbp), %xmm1	# %sfp,
	movq	%rax, -176(%rbp)	# D.6825, %sfp
	movsd	-176(%rbp), %xmm0	# %sfp,
	call	beam_init	#
	movq	-168(%rbp), %rdx	# kb, tmp786
	movq	%rax, 160(%rdx)	# D.6852, kb_26(D)->beam
	.loc 1 317 0
	movl	$.LC39, %edx	#,
	movl	$317, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 318 0
	movq	-168(%rbp), %rax	# kb, tmp787
	movq	160(%rax), %rax	# kb_26(D)->beam, D.6852
	.loc 1 317 0
	movl	(%rax), %esi	# _469->subvq, D.6827
	.loc 1 318 0
	movq	-168(%rbp), %rax	# kb, tmp788
	movq	160(%rax), %rax	# kb_26(D)->beam, D.6852
	.loc 1 317 0
	movl	12(%rax), %ecx	# _471->word, D.6827
	.loc 1 318 0
	movq	-168(%rbp), %rax	# kb, tmp789
	movq	160(%rax), %rax	# kb_26(D)->beam, D.6852
	.loc 1 317 0
	movl	8(%rax), %edx	# _473->ptrans, D.6827
	.loc 1 318 0
	movq	-168(%rbp), %rax	# kb, tmp790
	movq	160(%rax), %rax	# kb_26(D)->beam, D.6852
	.loc 1 317 0
	movl	4(%rax), %eax	# _475->hmm, D.6827
	movl	%esi, %r8d	# D.6827,
	movl	%eax, %esi	# D.6827,
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 321 0
	movl	$.LC64, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_477], D.6827
	movq	-168(%rbp), %rax	# kb, tmp791
	movl	%edx, 168(%rax)	# D.6827, kb_26(D)->ds_ratio
	.loc 1 322 0
	movl	$.LC39, %edx	#,
	movl	$322, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp792
	movl	168(%rax), %eax	# kb_26(D)->ds_ratio, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 324 0
	movq	-168(%rbp), %rax	# kb, tmp793
	movl	$-1, 104(%rax)	#, kb_26(D)->rec_bstcid
	.loc 1 325 0
	movq	-168(%rbp), %rax	# kb, tmp794
	movl	$0, 136(%rax)	#, kb_26(D)->skip_count
	.loc 1 327 0
	movl	$.LC66, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_480], D.6827
	movq	-168(%rbp), %rax	# kb, tmp795
	movl	%edx, 172(%rax)	# D.6827, kb_26(D)->cond_ds
	.loc 1 328 0
	movl	$.LC39, %edx	#,
	movl	$328, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp796
	movl	172(%rax), %eax	# kb_26(D)->cond_ds, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC67, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 330 0
	movq	-168(%rbp), %rax	# kb, tmp797
	movl	172(%rax), %eax	# kb_26(D)->cond_ds, D.6827
	testl	%eax, %eax	# D.6827
	jle	.L62	#,
	.loc 1 330 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# kb, tmp798
	movq	(%rax), %rax	# kb_26(D)->kbcore, D.6826
	movq	80(%rax), %rax	# _484->gs, D.6853
	testq	%rax, %rax	# D.6853
	jne	.L62	#,
	movl	$.LC28, %edx	#,
	movl	$330, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC68, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L62:
	.loc 1 332 0 is_stmt 1
	movl	$.LC69, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_486], D.6827
	movq	-168(%rbp), %rax	# kb, tmp799
	movl	%edx, 176(%rax)	# D.6827, kb_26(D)->gs4gs
	.loc 1 333 0
	movl	$.LC39, %edx	#,
	movl	$333, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp800
	movl	176(%rax), %eax	# kb_26(D)->gs4gs, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC70, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 335 0
	movl	$.LC71, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_489], D.6827
	movq	-168(%rbp), %rax	# kb, tmp801
	movl	%edx, 180(%rax)	# D.6827, kb_26(D)->svq4svq
	.loc 1 336 0
	movl	$.LC39, %edx	#,
	movl	$336, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp802
	movl	180(%rax), %eax	# kb_26(D)->svq4svq, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC72, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 338 0
	movl	$.LC73, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_492], D.6824
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm0	# D.6824, D.6825
	call	logs3	#
	negl	%eax	# D.6827
	movl	%eax, %edx	# D.6827, D.6827
	movq	-168(%rbp), %rax	# kb, tmp803
	movl	%edx, 184(%rax)	# D.6827, kb_26(D)->ci_pbeam
	.loc 1 339 0
	movl	$.LC39, %edx	#,
	movl	$339, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp804
	movl	184(%rax), %eax	# kb_26(D)->ci_pbeam, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC74, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 340 0
	movq	-168(%rbp), %rax	# kb, tmp805
	movl	184(%rax), %eax	# kb_26(D)->ci_pbeam, D.6827
	cmpl	$10000000, %eax	#, D.6827
	jle	.L63	#,
	.loc 1 341 0
	movl	$.LC39, %edx	#,
	movl	$341, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC75, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L63:
	.loc 1 344 0
	movl	$.LC76, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_499], D.6824
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm0	# D.6824, D.6825
	call	logs3	#
	negl	%eax	# D.6827
	movl	%eax, %edx	# D.6827, D.6827
	movq	-168(%rbp), %rax	# kb, tmp806
	movl	%edx, 204(%rax)	# D.6827, kb_26(D)->wend_beam
	.loc 1 345 0
	movl	$.LC39, %edx	#,
	movl	$345, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp807
	movl	204(%rax), %eax	# kb_26(D)->wend_beam, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC77, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 347 0
	movl	$.LC78, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_505], D.6827
	movq	-168(%rbp), %rax	# kb, tmp808
	movl	%edx, 188(%rax)	# D.6827, kb_26(D)->pl_window
	.loc 1 348 0
	movl	$.LC39, %edx	#,
	movl	$348, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp809
	movl	188(%rax), %eax	# kb_26(D)->pl_window, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC79, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 350 0
	movq	-168(%rbp), %rax	# kb, tmp810
	movl	$0, 192(%rax)	#, kb_26(D)->pl_window_start
	.loc 1 352 0
	movl	$.LC80, %edi	#,
	call	cmd_ln_access	#
	movss	(%rax), %xmm0	# MEM[(float32 *)_508], D.6824
	unpcklps	%xmm0, %xmm0	# D.6824, D.6824
	cvtps2pd	%xmm0, %xmm0	# D.6824, D.6825
	call	logs3	#
	movq	-168(%rbp), %rdx	# kb, tmp811
	movl	%eax, 200(%rdx)	# D.6827, kb_26(D)->pl_beam
	.loc 1 353 0
	movl	$.LC39, %edx	#,
	movl	$353, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-168(%rbp), %rax	# kb, tmp812
	movl	200(%rax), %eax	# kb_26(D)->pl_beam, D.6827
	movl	%eax, %esi	# D.6827,
	movl	$.LC81, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 355 0
	movl	$0, -136(%rbp)	#, cisencnt
	jmp	.L64	#
.L65:
	.loc 1 355 0 is_stmt 0 discriminator 2
	addl	$1, -136(%rbp)	#, cisencnt
.L64:
	.loc 1 355 0 discriminator 1
	movq	-120(%rbp), %rax	# mdef, tmp813
	movq	64(%rax), %rax	# mdef_75->cd2cisen, D.6854
	movl	-136(%rbp), %edx	# cisencnt, tmp814
	movslq	%edx, %rdx	# tmp814, D.6828
	addq	%rdx, %rdx	# D.6828
	addq	%rdx, %rax	# D.6828, D.6854
	movzwl	(%rax), %eax	# *_517, D.6855
	cwtl
	cmpl	-136(%rbp), %eax	# cisencnt, D.6827
	je	.L65	#,
	.loc 1 358 0 is_stmt 1
	movq	-168(%rbp), %rax	# kb, tmp815
	movl	188(%rax), %eax	# kb_26(D)->pl_window, D.6827
	movl	-136(%rbp), %esi	# cisencnt, tmp816
	movl	$358, %r8d	#,
	movl	$.LC29, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# D.6827,
	call	__ckd_calloc_2d__	#
	movq	-168(%rbp), %rdx	# kb, tmp817
	movq	%rax, 112(%rdx)	# D.6856, kb_26(D)->cache_ci_senscr
	.loc 1 359 0
	movq	-168(%rbp), %rax	# kb, tmp818
	movl	188(%rax), %eax	# kb_26(D)->pl_window, D.6827
	cltq
	movl	$359, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp819
	movq	%rax, 120(%rdx)	# D.6838, kb_26(D)->cache_best_list
	.loc 1 360 0
	movq	-120(%rbp), %rax	# mdef, tmp820
	movl	(%rax), %eax	# mdef_75->n_ciphone, D.6827
	cltq
	movl	$360, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp821
	movq	%rax, 128(%rdx)	# D.6838, kb_26(D)->phn_heur_list
	.loc 1 363 0
	movq	-128(%rbp), %rax	# kbcore, tmp822
	movq	(%rax), %rax	# kbcore_74->fcb, D.6857
	movl	$15000, %esi	#,
	movq	%rax, %rdi	# D.6857,
	call	feat_array_alloc	#
	movq	-168(%rbp), %rdx	# kb, tmp823
	movq	%rax, 56(%rdx)	# D.6858, kb_26(D)->feat
	movq	-168(%rbp), %rax	# kb, tmp824
	movq	56(%rax), %rax	# kb_26(D)->feat, D.6858
	testq	%rax, %rax	# D.6858
	jne	.L66	#,
	.loc 1 364 0
	movl	$.LC28, %edx	#,
	movl	$364, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movl	$.LC82, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L66:
	.loc 1 366 0
	movl	$.LC83, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_532], D.6827
	movq	-168(%rbp), %rax	# kb, tmp825
	movq	160(%rax), %rax	# kb_26(D)->beam, D.6852
	movl	12(%rax), %ecx	# _534->word, D.6827
	movq	-128(%rbp), %rax	# kbcore, tmp826
	movl	%ecx, %esi	# D.6827,
	movq	%rax, %rdi	# tmp826,
	call	vithist_init	#
	movq	-168(%rbp), %rdx	# kb, tmp827
	movq	%rax, 48(%rdx)	# D.6859, kb_26(D)->vithist
	.loc 1 368 0
	movq	-168(%rbp), %rax	# kb, tmp828
	addq	$248, %rax	#, D.6860
	movq	%rax, %rdi	# D.6860,
	call	ptmr_init	#
	.loc 1 369 0
	movq	-168(%rbp), %rax	# kb, tmp829
	addq	$304, %rax	#, D.6860
	movq	%rax, %rdi	# D.6860,
	call	ptmr_init	#
	.loc 1 370 0
	movq	-168(%rbp), %rax	# kb, tmp830
	addq	$360, %rax	#, D.6860
	movq	%rax, %rdi	# D.6860,
	call	ptmr_init	#
	.loc 1 371 0
	movq	-168(%rbp), %rax	# kb, tmp831
	movl	$0, 416(%rax)	#, kb_26(D)->tot_fr
	.loc 1 372 0
	movq	-168(%rbp), %rdx	# kb, tmp832
	movl	$0, %eax	#, tmp833
	movq	%rax, 424(%rdx)	# tmp833, kb_26(D)->tot_sen_eval
	.loc 1 373 0
	movq	-168(%rbp), %rdx	# kb, tmp834
	movl	$0, %eax	#, tmp835
	movq	%rax, 432(%rdx)	# tmp835, kb_26(D)->tot_gau_eval
	.loc 1 374 0
	movq	-168(%rbp), %rdx	# kb, tmp836
	movl	$0, %eax	#, tmp837
	movq	%rax, 440(%rdx)	# tmp837, kb_26(D)->tot_hmm_eval
	.loc 1 375 0
	movq	-168(%rbp), %rdx	# kb, tmp838
	movl	$0, %eax	#, tmp839
	movq	%rax, 448(%rdx)	# tmp839, kb_26(D)->tot_wd_exit
	.loc 1 377 0
	movl	$.LC85, %edi	#,
	call	cmd_ln_access	#
	movl	(%rax), %edx	# MEM[(int32 *)_540], D.6827
	movq	-168(%rbp), %rax	# kb, tmp840
	movl	%edx, 244(%rax)	# D.6827, kb_26(D)->hmm_hist_binsize
	.loc 1 379 0
	cmpq	$0, -96(%rbp)	#, lmset
	je	.L67	#,
	.loc 1 380 0
	movq	-168(%rbp), %rax	# kb, tmp841
	movq	24(%rax), %rax	# kb_26(D)->ugtreeMulti, D.6846
	movq	(%rax), %rax	# *_542, D.6847
	movl	28(%rax), %edx	# _543->n_node, D.6827
	movq	-168(%rbp), %rax	# kb, tmp842
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movq	(%rax), %rax	# *_545, D.6847
	movl	28(%rax), %eax	# _546->n_node, D.6827
	addl	%eax, %edx	# D.6827, D.6827
	movq	-168(%rbp), %rax	# kb, tmp843
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	%edx, %eax	# D.6827, tmp844
	movl	%eax, -144(%rbp)	# tmp844, n
	jmp	.L68	#
.L67:
	.loc 1 382 0
	movq	-168(%rbp), %rax	# kb, tmp845
	movq	16(%rax), %rax	# kb_26(D)->ugtree, D.6846
	movq	(%rax), %rax	# *_551, D.6847
	movl	28(%rax), %edx	# _552->n_node, D.6827
	movq	-168(%rbp), %rax	# kb, tmp846
	movq	32(%rax), %rax	# kb_26(D)->fillertree, D.6846
	movq	(%rax), %rax	# *_554, D.6847
	movl	28(%rax), %eax	# _555->n_node, D.6827
	addl	%eax, %edx	# D.6827, D.6827
	movq	-168(%rbp), %rax	# kb, tmp847
	movl	8(%rax), %eax	# kb_26(D)->n_lextree, D.6827
	imull	%edx, %eax	# D.6827, tmp848
	movl	%eax, -144(%rbp)	# tmp848, n
.L68:
	.loc 1 384 0
	movq	-168(%rbp), %rax	# kb, tmp849
	movl	244(%rax), %ebx	# kb_26(D)->hmm_hist_binsize, D.6827
	movl	-144(%rbp), %eax	# n, tmp852
	cltd
	idivl	%ebx	# D.6827
	movl	%eax, -144(%rbp)	# tmp850, n
	.loc 1 385 0
	movl	-144(%rbp), %eax	# n, tmp853
	leal	1(%rax), %edx	#, D.6827
	movq	-168(%rbp), %rax	# kb, tmp854
	movl	%edx, 240(%rax)	# D.6827, kb_26(D)->hmm_hist_bins
	.loc 1 386 0
	movl	-144(%rbp), %eax	# n, tmp855
	addl	$1, %eax	#, D.6827
	cltq
	movl	$386, %ecx	#,
	movl	$.LC29, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6828,
	call	__ckd_calloc__	#
	movq	-168(%rbp), %rdx	# kb, tmp856
	movq	%rax, 232(%rdx)	# D.6838, kb_26(D)->hmm_hist
	.loc 1 389 0
	movl	$.LC86, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -56(%rbp)	# tmp857, str
	.loc 1 390 0
	movq	-168(%rbp), %rax	# kb, tmp858
	movq	$0, 464(%rax)	#, kb_26(D)->matchsegfp
	.loc 1 391 0
	cmpq	$0, -56(%rbp)	#, str
	je	.L69	#,
	.loc 1 395 0
	movq	-56(%rbp), %rax	# str, tmp859
	movl	$.LC87, %esi	#,
	movq	%rax, %rdi	# tmp859,
	call	fopen	#
	movq	-168(%rbp), %rdx	# kb, tmp860
	movq	%rax, 464(%rdx)	# D.6861, kb_26(D)->matchsegfp
	movq	-168(%rbp), %rax	# kb, tmp861
	movq	464(%rax), %rax	# kb_26(D)->matchsegfp, D.6861
	testq	%rax, %rax	# D.6861
	jne	.L69	#,
	.loc 1 397 0
	movl	$.LC42, %edx	#,
	movl	$397, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# str, tmp862
	movq	%rax, %rsi	# tmp862,
	movl	$.LC88, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L69:
	.loc 1 400 0
	movl	$.LC89, %edi	#,
	call	cmd_ln_access	#
	movq	%rax, -56(%rbp)	# tmp863, str
	.loc 1 401 0
	movq	-168(%rbp), %rax	# kb, tmp864
	movq	$0, 456(%rax)	#, kb_26(D)->matchfp
	.loc 1 402 0
	cmpq	$0, -56(%rbp)	#, str
	je	.L1	#,
	.loc 1 406 0
	movq	-56(%rbp), %rax	# str, tmp865
	movl	$.LC87, %esi	#,
	movq	%rax, %rdi	# tmp865,
	call	fopen	#
	movq	-168(%rbp), %rdx	# kb, tmp866
	movq	%rax, 456(%rdx)	# D.6861, kb_26(D)->matchfp
	movq	-168(%rbp), %rax	# kb, tmp867
	movq	456(%rax), %rax	# kb_26(D)->matchfp, D.6861
	testq	%rax, %rax	# D.6861
	jne	.L1	#,
	.loc 1 408 0
	movl	$.LC42, %edx	#,
	movl	$408, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# str, tmp868
	movq	%rax, %rsi	# tmp868,
	movl	$.LC88, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L1:
	.loc 1 410 0
	addq	$408, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	kb_init, .-kb_init
	.section	.rodata
.LC90:
	.string	"Inside kb_setlm\n"
	.align 8
.LC91:
	.string	"LM name %s cannot be found! Fall back to use base LM model\n"
.LC92:
	.string	"Current LM name %s.\n"
.LC93:
	.string	"Current LM name %s\n"
.LC94:
	.string	"LM ug size %d\n"
.LC95:
	.string	"LM bg size %d\n"
.LC96:
	.string	"LM tg size %d\n"
.LC97:
	.string	"HMM history bin size %d\n"
	.text
	.globl	kb_setlm
	.type	kb_setlm, @function
kb_setlm:
.LFB3:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# lmname, lmname
	movq	%rsi, -64(%rbp)	# kb, kb
	.loc 1 415 0
	movq	$0, -32(%rbp)	#, kbc
	.loc 1 421 0
	movq	-64(%rbp), %rax	# kb, tmp138
	movq	(%rax), %rax	# kb_8(D)->kbcore, tmp139
	movq	%rax, -32(%rbp)	# tmp139, kbc
	.loc 1 422 0
	movq	-32(%rbp), %rax	# kbc, tmp140
	movq	40(%rax), %rax	# kbc_9->lmset, tmp141
	movq	%rax, -24(%rbp)	# tmp141, lms
	.loc 1 424 0
	movl	$.LC39, %edx	#,
	movl	$424, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC90, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 425 0
	movq	-32(%rbp), %rax	# kbc, tmp142
	movq	$0, 32(%rax)	#, kbc_9->lm
	.loc 1 426 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L72	#
.L73:
	.loc 1 427 0 discriminator 2
	movq	-64(%rbp), %rax	# kb, tmp143
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.6953
	movl	-40(%rbp), %edx	# j, tmp144
	movslq	%edx, %rdx	# tmp144, D.6954
	salq	$3, %rdx	#, D.6954
	addq	%rdx, %rax	# D.6954, D.6953
	movq	$0, (%rax)	#, *_16
	.loc 1 426 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L72:
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp145
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	cmpl	-40(%rbp), %eax	# j, D.6952
	jg	.L73	#,
	.loc 1 430 0 is_stmt 1
	movl	$.LC39, %edx	#,
	movl	$430, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC90, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 431 0
	cmpq	$0, -24(%rbp)	#, lms
	jne	.L74	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movl	$.LC17, %edi	#,
	call	cmd_ln_access	#
	testq	%rax, %rax	# D.6955
	je	.L75	#,
.L74:
	.loc 1 432 0 is_stmt 1
	movl	$0, -44(%rbp)	#, i
	jmp	.L76	#
.L81:
	.loc 1 433 0
	movl	-44(%rbp), %eax	# i, tmp146
	cltq
	salq	$4, %rax	#, D.6954
	movq	%rax, %rdx	# D.6954, D.6954
	movq	-24(%rbp), %rax	# lms, tmp147
	addq	%rdx, %rax	# D.6954, D.6956
	movq	(%rax), %rdx	# _24->name, D.6957
	movq	-56(%rbp), %rax	# lmname, tmp148
	movq	%rdx, %rsi	# D.6957,
	movq	%rax, %rdi	# tmp148,
	call	strcmp	#
	testl	%eax, %eax	# D.6952
	jne	.L77	#,
	.loc 1 435 0
	movl	-44(%rbp), %eax	# i, tmp149
	cltq
	salq	$4, %rax	#, D.6954
	movq	%rax, %rdx	# D.6954, D.6954
	movq	-24(%rbp), %rax	# lms, tmp150
	addq	%rdx, %rax	# D.6954, D.6956
	movq	8(%rax), %rdx	# _30->lm, D.6958
	movq	-32(%rbp), %rax	# kbc, tmp151
	movq	%rdx, 32(%rax)	# D.6958, kbc_9->lm
	.loc 1 437 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L78	#
.L79:
	.loc 1 438 0 discriminator 2
	movq	-64(%rbp), %rax	# kb, tmp152
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.6953
	movl	-40(%rbp), %edx	# j, tmp153
	movslq	%edx, %rdx	# tmp153, D.6954
	salq	$3, %rdx	#, D.6954
	addq	%rax, %rdx	# D.6953, D.6953
	movq	-64(%rbp), %rax	# kb, tmp154
	movq	24(%rax), %rcx	# kb_8(D)->ugtreeMulti, D.6953
	movq	-64(%rbp), %rax	# kb, tmp155
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	imull	-44(%rbp), %eax	# i, D.6952
	movl	%eax, %esi	# D.6952, D.6952
	movl	-40(%rbp), %eax	# j, tmp156
	addl	%esi, %eax	# D.6952, D.6952
	cltq
	salq	$3, %rax	#, D.6954
	addq	%rcx, %rax	# D.6953, D.6953
	movq	(%rax), %rax	# *_44, D.6959
	movq	%rax, (%rdx)	# D.6959, *_37
	.loc 1 437 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L78:
	.loc 1 437 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp157
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	cmpl	-40(%rbp), %eax	# j, D.6952
	jg	.L79	#,
	.loc 1 441 0 is_stmt 1
	jmp	.L80	#
.L77:
	.loc 1 432 0
	addl	$1, -44(%rbp)	#, i
.L76:
	.loc 1 432 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# kbc, tmp158
	movl	96(%rax), %eax	# kbc_9->n_lm, D.6952
	cmpl	-44(%rbp), %eax	# i, D.6952
	jg	.L81	#,
.L80:
	.loc 1 444 0 is_stmt 1
	movq	-32(%rbp), %rax	# kbc, tmp159
	movq	32(%rax), %rax	# kbc_9->lm, D.6958
	testq	%rax, %rax	# D.6958
	jne	.L75	#,
	.loc 1 445 0
	movl	$.LC42, %edx	#,
	movl	$445, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_header	#
	movq	-56(%rbp), %rax	# lmname, tmp160
	movq	%rax, %rsi	# tmp160,
	movl	$.LC91, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 446 0
	movq	-24(%rbp), %rax	# lms, tmp161
	movq	8(%rax), %rdx	# lms_10->lm, D.6958
	movq	-32(%rbp), %rax	# kbc, tmp162
	movq	%rdx, 32(%rax)	# D.6958, kbc_9->lm
	.loc 1 447 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L82	#
.L83:
	.loc 1 448 0 discriminator 2
	movq	-64(%rbp), %rax	# kb, tmp163
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.6953
	movl	-40(%rbp), %edx	# j, tmp164
	movslq	%edx, %rdx	# tmp164, D.6954
	salq	$3, %rdx	#, D.6954
	addq	%rax, %rdx	# D.6953, D.6953
	movq	-64(%rbp), %rax	# kb, tmp165
	movq	24(%rax), %rax	# kb_8(D)->ugtreeMulti, D.6953
	movl	-40(%rbp), %ecx	# j, tmp166
	movslq	%ecx, %rcx	# tmp166, D.6954
	salq	$3, %rcx	#, D.6954
	addq	%rcx, %rax	# D.6954, D.6953
	movq	(%rax), %rax	# *_59, D.6959
	movq	%rax, (%rdx)	# D.6959, *_55
	.loc 1 447 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L82:
	.loc 1 447 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp167
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	cmpl	-40(%rbp), %eax	# j, D.6952
	jg	.L83	#,
.L75:
	.loc 1 453 0 is_stmt 1
	movl	$.LC39, %edx	#,
	movl	$453, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-44(%rbp), %eax	# i, tmp168
	cltq
	salq	$4, %rax	#, D.6954
	movq	%rax, %rdx	# D.6954, D.6954
	movq	-24(%rbp), %rax	# lms, tmp169
	addq	%rdx, %rax	# D.6954, D.6956
	movq	(%rax), %rax	# _64->name, D.6957
	movq	%rax, %rsi	# D.6957,
	movl	$.LC92, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 463 0
	movq	-64(%rbp), %rax	# kb, tmp170
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.6953
	movq	(%rax), %rax	# *_66, D.6959
	movl	28(%rax), %edx	# _67->n_node, D.6952
	movq	-64(%rbp), %rax	# kb, tmp171
	movq	32(%rax), %rax	# kb_8(D)->fillertree, D.6953
	movq	(%rax), %rax	# *_69, D.6959
	movl	28(%rax), %eax	# _70->n_node, D.6952
	addl	%eax, %edx	# D.6952, D.6952
	movq	-64(%rbp), %rax	# kb, tmp172
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	imull	%edx, %eax	# D.6952, tmp173
	movl	%eax, -36(%rbp)	# tmp173, n
	.loc 1 464 0
	movq	-64(%rbp), %rax	# kb, tmp174
	movl	244(%rax), %ebx	# kb_8(D)->hmm_hist_binsize, D.6952
	movl	-36(%rbp), %eax	# n, tmp177
	cltd
	idivl	%ebx	# D.6952
	movl	%eax, -36(%rbp)	# tmp175, n
	.loc 1 465 0
	movl	-36(%rbp), %eax	# n, tmp178
	leal	1(%rax), %edx	#, D.6952
	movq	-64(%rbp), %rax	# kb, tmp179
	movl	%edx, 240(%rax)	# D.6952, kb_8(D)->hmm_hist_bins
	.loc 1 466 0
	movl	-36(%rbp), %eax	# n, tmp180
	addl	$1, %eax	#, D.6952
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6954
	movq	-64(%rbp), %rax	# kb, tmp181
	movq	232(%rax), %rax	# kb_8(D)->hmm_hist, D.6960
	movl	$466, %ecx	#,
	movl	$.LC29, %edx	#,
	movq	%rax, %rdi	# D.6960,
	call	__ckd_realloc__	#
	movq	-64(%rbp), %rdx	# kb, tmp182
	movq	%rax, 232(%rdx)	# D.6961, kb_8(D)->hmm_hist
	.loc 1 468 0
	movl	$.LC39, %edx	#,
	movl	$468, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-44(%rbp), %eax	# i, tmp183
	cltq
	salq	$4, %rax	#, D.6954
	movq	%rax, %rdx	# D.6954, D.6954
	movq	-24(%rbp), %rax	# lms, tmp184
	addq	%rdx, %rax	# D.6954, D.6956
	movq	(%rax), %rax	# _85->name, D.6957
	movq	%rax, %rsi	# D.6957,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 469 0
	movl	$.LC39, %edx	#,
	movl	$469, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# kbc, tmp185
	movq	32(%rax), %rax	# kbc_9->lm, D.6958
	movl	(%rax), %eax	# _87->n_ug, D.6952
	movl	%eax, %esi	# D.6952,
	movl	$.LC94, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 470 0
	movl	$.LC39, %edx	#,
	movl	$470, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# kbc, tmp186
	movq	32(%rax), %rax	# kbc_9->lm, D.6958
	movl	4(%rax), %eax	# _89->n_bg, D.6952
	movl	%eax, %esi	# D.6952,
	movl	$.LC95, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 471 0
	movl	$.LC39, %edx	#,
	movl	$471, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# kbc, tmp187
	movq	32(%rax), %rax	# kbc_9->lm, D.6958
	movl	8(%rax), %eax	# _91->n_tg, D.6952
	movl	%eax, %esi	# D.6952,
	movl	$.LC96, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 472 0
	movl	$.LC39, %edx	#,
	movl	$472, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	movl	-36(%rbp), %eax	# n, tmp188
	addl	$1, %eax	#, D.6952
	movl	%eax, %esi	# D.6952,
	movl	$.LC97, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 474 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L84	#
.L85:
	.loc 1 475 0 discriminator 2
	movl	$.LC39, %edx	#,
	movl	$475, %esi	#,
	movl	$.LC29, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 476 0 discriminator 2
	movq	-64(%rbp), %rax	# kb, tmp189
	movq	16(%rax), %rax	# kb_8(D)->ugtree, D.6953
	movl	-40(%rbp), %edx	# j, tmp190
	movslq	%edx, %rdx	# tmp190, D.6954
	salq	$3, %rdx	#, D.6954
	addq	%rdx, %rax	# D.6954, D.6953
	movq	(%rax), %rax	# *_99, D.6959
	.loc 1 475 0 discriminator 2
	movl	28(%rax), %edx	# _100->n_node, D.6952
	movq	-64(%rbp), %rax	# kb, tmp191
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	movl	%eax, %esi	# D.6952,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 474 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L84:
	.loc 1 474 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# kb, tmp192
	movl	8(%rax), %eax	# kb_8(D)->n_lextree, D.6952
	cmpl	-40(%rbp), %eax	# j, D.6952
	jg	.L85	#,
	.loc 1 483 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	kb_setlm, .-kb_setlm
	.globl	kb_lextree_active_swap
	.type	kb_lextree_active_swap, @function
kb_lextree_active_swap:
.LFB4:
	.loc 1 491 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# kb, kb
	.loc 1 494 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L87	#
.L88:
	.loc 1 495 0 discriminator 2
	movq	-24(%rbp), %rax	# kb, tmp70
	movq	16(%rax), %rax	# kb_3(D)->ugtree, D.6971
	movl	-4(%rbp), %edx	# i, tmp71
	movslq	%edx, %rdx	# tmp71, D.6972
	salq	$3, %rdx	#, D.6972
	addq	%rdx, %rax	# D.6972, D.6971
	movq	(%rax), %rax	# *_8, D.6973
	movq	%rax, %rdi	# D.6973,
	call	lextree_active_swap	#
	.loc 1 496 0 discriminator 2
	movq	-24(%rbp), %rax	# kb, tmp72
	movq	32(%rax), %rax	# kb_3(D)->fillertree, D.6971
	movl	-4(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.6972
	salq	$3, %rdx	#, D.6972
	addq	%rdx, %rax	# D.6972, D.6971
	movq	(%rax), %rax	# *_13, D.6973
	movq	%rax, %rdi	# D.6973,
	call	lextree_active_swap	#
	.loc 1 494 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L87:
	.loc 1 494 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp74
	movl	8(%rax), %eax	# kb_3(D)->n_lextree, D.6970
	cmpl	-4(%rbp), %eax	# i, D.6970
	jg	.L88	#,
	.loc 1 498 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	kb_lextree_active_swap, .-kb_lextree_active_swap
	.globl	kb_freehyps
	.type	kb_freehyps, @function
kb_freehyps:
.LFB5:
	.loc 1 502 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# kb, kb
	.loc 1 503 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 505 0
	movq	-24(%rbp), %rax	# kb, tmp74
	movq	472(%rax), %rax	# kb_3(D)->hyp_segs, D.6974
	testq	%rax, %rax	# D.6974
	je	.L90	#,
	.loc 1 506 0
	jmp	.L91	#
.L93:
	.loc 1 507 0
	movq	-24(%rbp), %rax	# kb, tmp75
	movq	472(%rax), %rax	# kb_3(D)->hyp_segs, D.6974
	movl	-4(%rbp), %edx	# i, tmp76
	movslq	%edx, %rdx	# tmp76, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6974
	movq	(%rax), %rax	# *_9, D.6977
	testq	%rax, %rax	# D.6977
	je	.L92	#,
	.loc 1 508 0
	movq	-24(%rbp), %rax	# kb, tmp77
	movq	472(%rax), %rax	# kb_3(D)->hyp_segs, D.6974
	movl	-4(%rbp), %edx	# i, tmp78
	movslq	%edx, %rdx	# tmp78, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6974
	movq	(%rax), %rax	# *_14, D.6977
	movq	%rax, %rdi	# D.6977,
	call	ckd_free	#
.L92:
	.loc 1 506 0
	addl	$1, -4(%rbp)	#, i
.L91:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp79
	movl	480(%rax), %eax	# kb_3(D)->hyp_seglen, D.6975
	cmpl	-4(%rbp), %eax	# i, D.6975
	jg	.L93	#,
	.loc 1 511 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp80
	movq	472(%rax), %rax	# kb_3(D)->hyp_segs, D.6974
	movq	%rax, %rdi	# D.6974,
	call	ckd_free	#
	.loc 1 512 0
	movq	-24(%rbp), %rax	# kb, tmp81
	movl	$0, 480(%rax)	#, kb_3(D)->hyp_seglen
.L90:
	.loc 1 515 0
	movq	-24(%rbp), %rax	# kb, tmp82
	movq	488(%rax), %rax	# kb_3(D)->hyp_str, D.6978
	testq	%rax, %rax	# D.6978
	je	.L89	#,
	.loc 1 516 0
	movq	-24(%rbp), %rax	# kb, tmp83
	movq	488(%rax), %rax	# kb_3(D)->hyp_str, D.6978
	movq	%rax, %rdi	# D.6978,
	call	ckd_free	#
	.loc 1 517 0
	movq	-24(%rbp), %rax	# kb, tmp84
	movl	$0, 496(%rax)	#, kb_3(D)->hyp_strlen
.L89:
	.loc 1 519 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	kb_freehyps, .-kb_freehyps
	.globl	kb_free
	.type	kb_free, @function
kb_free:
.LFB6:
	.loc 1 524 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# kb, kb
	.loc 1 525 0
	movq	-24(%rbp), %rax	# kb, tmp91
	movq	48(%rax), %rax	# kb_1(D)->vithist, tmp92
	movq	%rax, -8(%rbp)	# tmp92, vithist
	.loc 1 527 0
	movq	-24(%rbp), %rax	# kb, tmp93
	movq	88(%rax), %rax	# kb_1(D)->sen_active, D.6979
	testq	%rax, %rax	# D.6979
	je	.L96	#,
	.loc 1 528 0
	movq	-24(%rbp), %rax	# kb, tmp94
	movq	88(%rax), %rax	# kb_1(D)->sen_active, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L96:
	.loc 1 529 0
	movq	-24(%rbp), %rax	# kb, tmp95
	movq	72(%rax), %rax	# kb_1(D)->ssid_active, D.6979
	testq	%rax, %rax	# D.6979
	je	.L97	#,
	.loc 1 530 0
	movq	-24(%rbp), %rax	# kb, tmp96
	movq	72(%rax), %rax	# kb_1(D)->ssid_active, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L97:
	.loc 1 531 0
	movq	-24(%rbp), %rax	# kb, tmp97
	movq	80(%rax), %rax	# kb_1(D)->comssid_active, D.6979
	testq	%rax, %rax	# D.6979
	je	.L98	#,
	.loc 1 532 0
	movq	-24(%rbp), %rax	# kb, tmp98
	movq	80(%rax), %rax	# kb_1(D)->comssid_active, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L98:
	.loc 1 533 0
	movq	-24(%rbp), %rax	# kb, tmp99
	movq	32(%rax), %rax	# kb_1(D)->fillertree, D.6980
	testq	%rax, %rax	# D.6980
	je	.L99	#,
	.loc 1 534 0
	movq	-24(%rbp), %rax	# kb, tmp100
	movq	32(%rax), %rax	# kb_1(D)->fillertree, D.6980
	movq	%rax, %rdi	# D.6980,
	call	ckd_free	#
.L99:
	.loc 1 535 0
	movq	-24(%rbp), %rax	# kb, tmp101
	movq	232(%rax), %rax	# kb_1(D)->hmm_hist, D.6979
	testq	%rax, %rax	# D.6979
	je	.L100	#,
	.loc 1 536 0
	movq	-24(%rbp), %rax	# kb, tmp102
	movq	232(%rax), %rax	# kb_1(D)->hmm_hist, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L100:
	.loc 1 540 0
	cmpq	$0, -8(%rbp)	#, vithist
	je	.L101	#,
	.loc 1 541 0
	movq	-8(%rbp), %rax	# vithist, tmp103
	movq	(%rax), %rax	# vithist_2->entry, D.6981
	movq	%rax, %rdi	# D.6981,
	call	ckd_free	#
	.loc 1 542 0
	movq	-8(%rbp), %rax	# vithist, tmp104
	movq	8(%rax), %rax	# vithist_2->frame_start, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
	.loc 1 543 0
	movq	-8(%rbp), %rax	# vithist, tmp105
	movq	32(%rax), %rax	# vithist_2->bestscore, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
	.loc 1 544 0
	movq	-8(%rbp), %rax	# vithist, tmp106
	movq	40(%rax), %rax	# vithist_2->bestvh, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
	.loc 1 545 0
	movq	-8(%rbp), %rax	# vithist, tmp107
	movq	48(%rax), %rax	# vithist_2->lms2vh_root, D.6982
	movq	%rax, %rdi	# D.6982,
	call	ckd_free	#
	.loc 1 546 0
	movq	-24(%rbp), %rax	# kb, tmp108
	movq	48(%rax), %rax	# kb_1(D)->vithist, D.6983
	movq	%rax, %rdi	# D.6983,
	call	ckd_free	#
.L101:
	.loc 1 550 0
	movq	-24(%rbp), %rax	# kb, tmp109
	movq	(%rax), %rax	# kb_1(D)->kbcore, D.6984
	movq	%rax, %rdi	# D.6984,
	call	kbcore_free	#
	.loc 1 552 0
	movq	-24(%rbp), %rax	# kb, tmp110
	movq	56(%rax), %rax	# kb_1(D)->feat, D.6985
	testq	%rax, %rax	# D.6985
	je	.L102	#,
	.loc 1 553 0
	movq	-24(%rbp), %rax	# kb, tmp111
	movq	56(%rax), %rax	# kb_1(D)->feat, D.6985
	movq	(%rax), %rax	# *_21, D.6986
	movq	(%rax), %rax	# *_22, D.6987
	movq	%rax, %rdi	# D.6987,
	call	ckd_free	#
	.loc 1 554 0
	movq	-24(%rbp), %rax	# kb, tmp112
	movq	56(%rax), %rax	# kb_1(D)->feat, D.6985
	movq	%rax, %rdi	# D.6985,
	call	ckd_free_2d	#
.L102:
	.loc 1 557 0
	movq	-24(%rbp), %rax	# kb, tmp113
	movq	112(%rax), %rax	# kb_1(D)->cache_ci_senscr, D.6988
	testq	%rax, %rax	# D.6988
	je	.L103	#,
	.loc 1 558 0
	movq	-24(%rbp), %rax	# kb, tmp114
	movq	112(%rax), %rax	# kb_1(D)->cache_ci_senscr, D.6988
	movq	%rax, %rdi	# D.6988,
	call	ckd_free_2d	#
.L103:
	.loc 1 560 0
	movq	-24(%rbp), %rax	# kb, tmp115
	movq	120(%rax), %rax	# kb_1(D)->cache_best_list, D.6979
	testq	%rax, %rax	# D.6979
	je	.L104	#,
	.loc 1 561 0
	movq	-24(%rbp), %rax	# kb, tmp116
	movq	120(%rax), %rax	# kb_1(D)->cache_best_list, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L104:
	.loc 1 563 0
	movq	-24(%rbp), %rax	# kb, tmp117
	movq	128(%rax), %rax	# kb_1(D)->phn_heur_list, D.6979
	testq	%rax, %rax	# D.6979
	je	.L105	#,
	.loc 1 564 0
	movq	-24(%rbp), %rax	# kb, tmp118
	movq	128(%rax), %rax	# kb_1(D)->phn_heur_list, D.6979
	movq	%rax, %rdi	# D.6979,
	call	ckd_free	#
.L105:
	.loc 1 567 0
	movq	-24(%rbp), %rax	# kb, tmp119
	movq	464(%rax), %rax	# kb_1(D)->matchsegfp, D.6989
	testq	%rax, %rax	# D.6989
	je	.L106	#,
	.loc 1 567 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp120
	movq	464(%rax), %rax	# kb_1(D)->matchsegfp, D.6989
	movq	%rax, %rdi	# D.6989,
	call	fclose	#
.L106:
	.loc 1 568 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp121
	movq	456(%rax), %rax	# kb_1(D)->matchfp, D.6989
	testq	%rax, %rax	# D.6989
	je	.L107	#,
	.loc 1 568 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp122
	movq	456(%rax), %rax	# kb_1(D)->matchfp, D.6989
	movq	%rax, %rdi	# D.6989,
	call	fclose	#
.L107:
	.loc 1 570 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp123
	movq	%rax, %rdi	# tmp123,
	call	kb_freehyps	#
	.loc 1 571 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	kb_free, .-kb_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/bitvec.h"
	.file 8 "./libutil/glist.h"
	.file 9 "./libutil/hash.h"
	.file 10 "./libutil/profile.h"
	.file 11 "feat.h"
	.file 12 "cont_mgau.h"
	.file 13 "s3types.h"
	.file 14 "mdef.h"
	.file 15 "dict.h"
	.file 16 "dict2pid.h"
	.file 17 "fillpen.h"
	.file 18 "lmclass.h"
	.file 19 "lm.h"
	.file 20 "tmat.h"
	.file 21 "vector.h"
	.file 22 "subvq.h"
	.file 23 "gs.h"
	.file 24 "kbcore.h"
	.file 25 "hmm.h"
	.file 26 "hyp.h"
	.file 27 "vithist.h"
	.file 28 "ascr.h"
	.file 29 "lextree.h"
	.file 30 "beam.h"
	.file 31 "kb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c68
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF375
	.byte	0x1
	.long	.LASF376
	.long	.LASF377
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF378
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0xe
	.long	.LASF379
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x355
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x4b
	.long	0x2da
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4c
	.long	0x2fb
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x4d
	.long	0x306
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x4e
	.long	0x311
	.uleb128 0x2
	.long	.LASF60
	.byte	0x7
	.byte	0x43
	.long	0x36b
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF61
	.byte	0x10
	.byte	0x8
	.byte	0x4c
	.long	0x396
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x4e
	.long	0x396
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x371
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x4f
	.long	0x371
	.uleb128 0x2
	.long	.LASF65
	.byte	0x8
	.byte	0x50
	.long	0x3b2
	.uleb128 0x6
	.byte	0x8
	.long	0x39c
	.uleb128 0x7
	.long	.LASF66
	.byte	0x18
	.byte	0x9
	.byte	0x58
	.long	0x3f5
	.uleb128 0x11
	.string	"key"
	.byte	0x9
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x9
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x9
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.byte	0x5f
	.long	0x3f5
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3b8
	.uleb128 0x2
	.long	.LASF67
	.byte	0x9
	.byte	0x60
	.long	0x3b8
	.uleb128 0x12
	.byte	0x10
	.byte	0x9
	.byte	0x62
	.long	0x433
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x63
	.long	0x433
	.byte	0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF70
	.byte	0x9
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3fb
	.uleb128 0x2
	.long	.LASF71
	.byte	0x9
	.byte	0x68
	.long	0x406
	.uleb128 0x12
	.byte	0x38
	.byte	0xa
	.byte	0x53
	.long	0x4a1
	.uleb128 0x8
	.long	.LASF72
	.byte	0xa
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0xa
	.byte	0x56
	.long	0x306
	.byte	0x8
	.uleb128 0x8
	.long	.LASF74
	.byte	0xa
	.byte	0x57
	.long	0x306
	.byte	0x10
	.uleb128 0x8
	.long	.LASF75
	.byte	0xa
	.byte	0x58
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF76
	.byte	0xa
	.byte	0x59
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF77
	.byte	0xa
	.byte	0x5a
	.long	0x306
	.byte	0x28
	.uleb128 0x8
	.long	.LASF78
	.byte	0xa
	.byte	0x5b
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0xa
	.byte	0x5c
	.long	0x444
	.uleb128 0x7
	.long	.LASF80
	.byte	0x38
	.byte	0xb
	.byte	0x48
	.long	0x531
	.uleb128 0x8
	.long	.LASF72
	.byte	0xb
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0xb
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF82
	.byte	0xb
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF83
	.byte	0xb
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF84
	.byte	0xb
	.byte	0x4d
	.long	0x531
	.byte	0x18
	.uleb128 0x8
	.long	.LASF85
	.byte	0xb
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xb
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF86
	.byte	0xb
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xb
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF87
	.byte	0xb
	.byte	0x54
	.long	0x55e
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x54c
	.uleb128 0x14
	.long	0x54c
	.uleb128 0x14
	.long	0x552
	.uleb128 0x14
	.long	0x552
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ac
	.uleb128 0x6
	.byte	0x8
	.long	0x558
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x537
	.uleb128 0x2
	.long	.LASF88
	.byte	0xb
	.byte	0x5a
	.long	0x4ac
	.uleb128 0x12
	.byte	0x28
	.byte	0xc
	.byte	0x5f
	.long	0x5b4
	.uleb128 0x8
	.long	.LASF89
	.byte	0xc
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF90
	.byte	0xc
	.byte	0x62
	.long	0x552
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xc
	.byte	0x63
	.long	0x552
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xc
	.byte	0x66
	.long	0x558
	.byte	0x18
	.uleb128 0x8
	.long	.LASF91
	.byte	0xc
	.byte	0x69
	.long	0x531
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF92
	.byte	0xc
	.byte	0x6c
	.long	0x56f
	.uleb128 0x12
	.byte	0x30
	.byte	0xc
	.byte	0x74
	.long	0x628
	.uleb128 0x8
	.long	.LASF93
	.byte	0xc
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF95
	.byte	0xc
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x78
	.long	0x628
	.byte	0x10
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b4
	.uleb128 0x2
	.long	.LASF101
	.byte	0xc
	.byte	0x81
	.long	0x5bf
	.uleb128 0x2
	.long	.LASF102
	.byte	0xd
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF103
	.byte	0xd
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF104
	.byte	0xd
	.byte	0x57
	.long	0x644
	.uleb128 0x2
	.long	.LASF105
	.byte	0xd
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF106
	.byte	0xd
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF107
	.byte	0xd
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF108
	.byte	0xd
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF109
	.byte	0xd
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x15
	.byte	0x4
	.byte	0xe
	.byte	0x48
	.long	0x6b8
	.uleb128 0x16
	.long	.LASF110
	.sleb128 0
	.uleb128 0x16
	.long	.LASF111
	.sleb128 1
	.uleb128 0x16
	.long	.LASF112
	.sleb128 2
	.uleb128 0x16
	.long	.LASF113
	.sleb128 3
	.uleb128 0x16
	.long	.LASF114
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF115
	.byte	0xe
	.byte	0x4e
	.long	0x691
	.uleb128 0x12
	.byte	0x10
	.byte	0xe
	.byte	0x54
	.long	0x6e4
	.uleb128 0x8
	.long	.LASF72
	.byte	0xe
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF116
	.byte	0xe
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF117
	.byte	0xe
	.byte	0x58
	.long	0x6c3
	.uleb128 0x12
	.byte	0x10
	.byte	0xe
	.byte	0x5e
	.long	0x73d
	.uleb128 0x8
	.long	.LASF118
	.byte	0xe
	.byte	0x5f
	.long	0x64f
	.byte	0
	.uleb128 0x8
	.long	.LASF119
	.byte	0xe
	.byte	0x62
	.long	0x65a
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xe
	.byte	0x63
	.long	0x639
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xe
	.byte	0x63
	.long	0x639
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xe
	.byte	0x63
	.long	0x639
	.byte	0xa
	.uleb128 0x8
	.long	.LASF120
	.byte	0xe
	.byte	0x64
	.long	0x6b8
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF121
	.byte	0xe
	.byte	0x65
	.long	0x6ef
	.uleb128 0x7
	.long	.LASF122
	.byte	0x10
	.byte	0xe
	.byte	0x6c
	.long	0x778
	.uleb128 0x11
	.string	"rc"
	.byte	0xe
	.byte	0x6d
	.long	0x639
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xe
	.byte	0x6e
	.long	0x644
	.byte	0x4
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0x6f
	.long	0x778
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x748
	.uleb128 0x2
	.long	.LASF123
	.byte	0xe
	.byte	0x70
	.long	0x748
	.uleb128 0x7
	.long	.LASF124
	.byte	0x18
	.byte	0xe
	.byte	0x72
	.long	0x7b9
	.uleb128 0x11
	.string	"lc"
	.byte	0xe
	.byte	0x73
	.long	0x639
	.byte	0
	.uleb128 0x8
	.long	.LASF125
	.byte	0xe
	.byte	0x74
	.long	0x7b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0xe
	.byte	0x75
	.long	0x7bf
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x77e
	.uleb128 0x6
	.byte	0x8
	.long	0x789
	.uleb128 0x2
	.long	.LASF126
	.byte	0xe
	.byte	0x76
	.long	0x789
	.uleb128 0x12
	.byte	0x68
	.byte	0xe
	.byte	0x7a
	.long	0x899
	.uleb128 0x8
	.long	.LASF127
	.byte	0xe
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0xe
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF129
	.byte	0xe
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF130
	.byte	0xe
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF131
	.byte	0xe
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF132
	.byte	0xe
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF133
	.byte	0xe
	.byte	0x82
	.long	0x899
	.byte	0x18
	.uleb128 0x8
	.long	.LASF134
	.byte	0xe
	.byte	0x83
	.long	0x89f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF135
	.byte	0xe
	.byte	0x84
	.long	0x8a5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x85
	.long	0x8ab
	.byte	0x30
	.uleb128 0x8
	.long	.LASF137
	.byte	0xe
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF138
	.byte	0xe
	.byte	0x89
	.long	0x8b1
	.byte	0x40
	.uleb128 0x8
	.long	.LASF139
	.byte	0xe
	.byte	0x8c
	.long	0x8b7
	.byte	0x48
	.uleb128 0x8
	.long	.LASF140
	.byte	0xe
	.byte	0x8d
	.long	0x531
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xe
	.byte	0x8f
	.long	0x639
	.byte	0x58
	.uleb128 0x8
	.long	.LASF141
	.byte	0xe
	.byte	0x91
	.long	0x8bd
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x439
	.uleb128 0x6
	.byte	0x8
	.long	0x6e4
	.uleb128 0x6
	.byte	0x8
	.long	0x73d
	.uleb128 0x6
	.byte	0x8
	.long	0x8b1
	.uleb128 0x6
	.byte	0x8
	.long	0x686
	.uleb128 0x6
	.byte	0x8
	.long	0x639
	.uleb128 0x6
	.byte	0x8
	.long	0x8c3
	.uleb128 0x6
	.byte	0x8
	.long	0x8c9
	.uleb128 0x6
	.byte	0x8
	.long	0x7c5
	.uleb128 0x2
	.long	.LASF142
	.byte	0xe
	.byte	0x96
	.long	0x7d0
	.uleb128 0x12
	.byte	0x28
	.byte	0xf
	.byte	0x47
	.long	0x937
	.uleb128 0x8
	.long	.LASF143
	.byte	0xf
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF134
	.byte	0xf
	.byte	0x49
	.long	0x8b7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF144
	.byte	0xf
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xf
	.byte	0x4b
	.long	0x665
	.byte	0x14
	.uleb128 0x8
	.long	.LASF145
	.byte	0xf
	.byte	0x4c
	.long	0x665
	.byte	0x18
	.uleb128 0x8
	.long	.LASF89
	.byte	0xf
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF146
	.byte	0xf
	.byte	0x51
	.long	0x937
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x665
	.uleb128 0x2
	.long	.LASF147
	.byte	0xf
	.byte	0x52
	.long	0x8da
	.uleb128 0x12
	.byte	0x58
	.byte	0xf
	.byte	0x54
	.long	0x9f8
	.uleb128 0x8
	.long	.LASF148
	.byte	0xf
	.byte	0x55
	.long	0x9f8
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xf
	.byte	0x56
	.long	0x899
	.byte	0x8
	.uleb128 0x8
	.long	.LASF149
	.byte	0xf
	.byte	0x57
	.long	0x9fe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF127
	.byte	0xf
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF143
	.byte	0xf
	.byte	0x59
	.long	0xa04
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xf
	.byte	0x5a
	.long	0x899
	.byte	0x28
	.uleb128 0x8
	.long	.LASF150
	.byte	0xf
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF151
	.byte	0xf
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF153
	.byte	0xf
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF154
	.byte	0xf
	.byte	0x5f
	.long	0x937
	.byte	0x40
	.uleb128 0x8
	.long	.LASF155
	.byte	0xf
	.byte	0x62
	.long	0x665
	.byte	0x48
	.uleb128 0x8
	.long	.LASF156
	.byte	0xf
	.byte	0x63
	.long	0x665
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF157
	.byte	0xf
	.byte	0x64
	.long	0x665
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8cf
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x93d
	.uleb128 0x2
	.long	.LASF158
	.byte	0xf
	.byte	0x65
	.long	0x948
	.uleb128 0x12
	.byte	0x38
	.byte	0x10
	.byte	0x63
	.long	0xa7e
	.uleb128 0x8
	.long	.LASF159
	.byte	0x10
	.byte	0x64
	.long	0xa7e
	.byte	0
	.uleb128 0x8
	.long	.LASF160
	.byte	0x10
	.byte	0x67
	.long	0xa8a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x69
	.long	0xa7e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x6c
	.long	0x8ab
	.byte	0x18
	.uleb128 0x8
	.long	.LASF163
	.byte	0x10
	.byte	0x6e
	.long	0x8ab
	.byte	0x20
	.uleb128 0x8
	.long	.LASF164
	.byte	0x10
	.byte	0x70
	.long	0x531
	.byte	0x28
	.uleb128 0x8
	.long	.LASF165
	.byte	0x10
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF166
	.byte	0x10
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa84
	.uleb128 0x6
	.byte	0x8
	.long	0x64f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7e
	.uleb128 0x2
	.long	.LASF167
	.byte	0x10
	.byte	0x74
	.long	0xa15
	.uleb128 0x12
	.byte	0x20
	.byte	0x11
	.byte	0x3e
	.long	0xad3
	.uleb128 0x8
	.long	.LASF168
	.byte	0x11
	.byte	0x3f
	.long	0xad3
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x11
	.byte	0x41
	.long	0x531
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x11
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x11
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa0a
	.uleb128 0x2
	.long	.LASF170
	.byte	0x11
	.byte	0x45
	.long	0xa9b
	.uleb128 0x7
	.long	.LASF171
	.byte	0x18
	.byte	0x12
	.byte	0x42
	.long	0xb21
	.uleb128 0x8
	.long	.LASF143
	.byte	0x12
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0x12
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0x12
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x12
	.byte	0x47
	.long	0xb21
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xae4
	.uleb128 0x2
	.long	.LASF174
	.byte	0x12
	.byte	0x49
	.long	0xb21
	.uleb128 0x7
	.long	.LASF175
	.byte	0x18
	.byte	0x12
	.byte	0x4f
	.long	0xb63
	.uleb128 0x8
	.long	.LASF72
	.byte	0x12
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF176
	.byte	0x12
	.byte	0x51
	.long	0xb27
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x12
	.byte	0x52
	.long	0xb63
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb32
	.uleb128 0x2
	.long	.LASF177
	.byte	0x12
	.byte	0x54
	.long	0xb63
	.uleb128 0x17
	.byte	0x4
	.byte	0x13
	.byte	0x4d
	.long	0xb8f
	.uleb128 0xf
	.string	"f"
	.byte	0x13
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x13
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF178
	.byte	0x13
	.byte	0x50
	.long	0xb74
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x52
	.long	0xbd3
	.uleb128 0x8
	.long	.LASF172
	.byte	0x13
	.byte	0x53
	.long	0x665
	.byte	0
	.uleb128 0x8
	.long	.LASF169
	.byte	0x13
	.byte	0x57
	.long	0xb8f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF179
	.byte	0x13
	.byte	0x58
	.long	0xb8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF180
	.byte	0x13
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF181
	.byte	0x13
	.byte	0x5a
	.long	0xb9a
	.uleb128 0x12
	.byte	0x8
	.byte	0x13
	.byte	0x5c
	.long	0xc17
	.uleb128 0x11
	.string	"wid"
	.byte	0x13
	.byte	0x5d
	.long	0x670
	.byte	0
	.uleb128 0x8
	.long	.LASF182
	.byte	0x13
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF183
	.byte	0x13
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF184
	.byte	0x13
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF185
	.byte	0x13
	.byte	0x61
	.long	0xbde
	.uleb128 0x12
	.byte	0x4
	.byte	0x13
	.byte	0x63
	.long	0xc43
	.uleb128 0x11
	.string	"wid"
	.byte	0x13
	.byte	0x64
	.long	0x670
	.byte	0
	.uleb128 0x8
	.long	.LASF182
	.byte	0x13
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF186
	.byte	0x13
	.byte	0x66
	.long	0xc22
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x6c
	.long	0xc6e
	.uleb128 0x11
	.string	"bg"
	.byte	0x13
	.byte	0x6d
	.long	0xc6e
	.byte	0
	.uleb128 0x8
	.long	.LASF187
	.byte	0x13
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc17
	.uleb128 0x2
	.long	.LASF188
	.byte	0x13
	.byte	0x70
	.long	0xc4e
	.uleb128 0x7
	.long	.LASF189
	.byte	0x20
	.byte	0x13
	.byte	0x7a
	.long	0xcd2
	.uleb128 0x11
	.string	"w1"
	.byte	0x13
	.byte	0x7b
	.long	0x670
	.byte	0
	.uleb128 0x8
	.long	.LASF190
	.byte	0x13
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x13
	.byte	0x7e
	.long	0xcd2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0x13
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF187
	.byte	0x13
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF63
	.byte	0x13
	.byte	0x81
	.long	0xcd8
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc43
	.uleb128 0x6
	.byte	0x8
	.long	0xc7f
	.uleb128 0x2
	.long	.LASF191
	.byte	0x13
	.byte	0x82
	.long	0xc7f
	.uleb128 0x12
	.byte	0xc
	.byte	0x13
	.byte	0x88
	.long	0xd0a
	.uleb128 0x8
	.long	.LASF192
	.byte	0x13
	.byte	0x89
	.long	0xd0a
	.byte	0
	.uleb128 0x8
	.long	.LASF193
	.byte	0x13
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x670
	.long	0xd1a
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF194
	.byte	0x13
	.byte	0x8b
	.long	0xce9
	.uleb128 0x7
	.long	.LASF195
	.byte	0xf8
	.byte	0x13
	.byte	0xb4
	.long	0xf31
	.uleb128 0x8
	.long	.LASF196
	.byte	0x13
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF197
	.byte	0x13
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF190
	.byte	0x13
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF198
	.byte	0x13
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF199
	.byte	0x13
	.byte	0xba
	.long	0x9fe
	.byte	0x10
	.uleb128 0x8
	.long	.LASF200
	.byte	0x13
	.byte	0xbc
	.long	0x670
	.byte	0x18
	.uleb128 0x8
	.long	.LASF201
	.byte	0x13
	.byte	0xbd
	.long	0x670
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF202
	.byte	0x13
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF203
	.byte	0x13
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x13
	.byte	0xc2
	.long	0xf31
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x13
	.byte	0xc3
	.long	0xc6e
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x13
	.byte	0xc4
	.long	0xcd2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF204
	.byte	0x13
	.byte	0xc5
	.long	0xf37
	.byte	0x40
	.uleb128 0x8
	.long	.LASF205
	.byte	0x13
	.byte	0xc6
	.long	0xf3d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF206
	.byte	0x13
	.byte	0xc8
	.long	0xf49
	.byte	0x50
	.uleb128 0x8
	.long	.LASF207
	.byte	0x13
	.byte	0xc9
	.long	0xf49
	.byte	0x58
	.uleb128 0x8
	.long	.LASF208
	.byte	0x13
	.byte	0xca
	.long	0xf49
	.byte	0x60
	.uleb128 0x8
	.long	.LASF209
	.byte	0x13
	.byte	0xcb
	.long	0x531
	.byte	0x68
	.uleb128 0x8
	.long	.LASF210
	.byte	0x13
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF211
	.byte	0x13
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF212
	.byte	0x13
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x13
	.byte	0xd1
	.long	0xf4f
	.byte	0x80
	.uleb128 0x8
	.long	.LASF213
	.byte	0x13
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF214
	.byte	0x13
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF215
	.byte	0x13
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x13
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x13
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF216
	.byte	0x13
	.byte	0xdd
	.long	0xf55
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF217
	.byte	0x13
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF218
	.byte	0x13
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF219
	.byte	0x13
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF220
	.byte	0x13
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF221
	.byte	0x13
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF222
	.byte	0x13
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF223
	.byte	0x13
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF224
	.byte	0x13
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF225
	.byte	0x13
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF226
	.byte	0x13
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF227
	.byte	0x13
	.byte	0xef
	.long	0xf5b
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF228
	.byte	0x13
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0xf4
	.long	0xf61
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF230
	.byte	0x13
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF231
	.byte	0x13
	.byte	0xf6
	.long	0x531
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbd3
	.uleb128 0x6
	.byte	0x8
	.long	0xc74
	.uleb128 0x6
	.byte	0x8
	.long	0xf43
	.uleb128 0x6
	.byte	0x8
	.long	0xcde
	.uleb128 0x6
	.byte	0x8
	.long	0xb8f
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xd1a
	.uleb128 0x6
	.byte	0x8
	.long	0x670
	.uleb128 0x6
	.byte	0x8
	.long	0xb69
	.uleb128 0x2
	.long	.LASF232
	.byte	0x13
	.byte	0xf8
	.long	0xd25
	.uleb128 0x7
	.long	.LASF233
	.byte	0x10
	.byte	0x13
	.byte	0xfb
	.long	0xf96
	.uleb128 0x8
	.long	.LASF72
	.byte	0x13
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x13
	.byte	0xfd
	.long	0xf96
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf67
	.uleb128 0x2
	.long	.LASF234
	.byte	0x13
	.byte	0xfe
	.long	0xf72
	.uleb128 0x18
	.byte	0x8
	.byte	0x13
	.value	0x10c
	.long	0xfcb
	.uleb128 0x19
	.string	"wid"
	.byte	0x13
	.value	0x10d
	.long	0x665
	.byte	0
	.uleb128 0x9
	.long	.LASF169
	.byte	0x13
	.value	0x10e
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF235
	.byte	0x13
	.value	0x10f
	.long	0xfa7
	.uleb128 0x12
	.byte	0x10
	.byte	0x14
	.byte	0x4a
	.long	0x1003
	.uleb128 0x11
	.string	"tp"
	.byte	0x14
	.byte	0x4b
	.long	0x1003
	.byte	0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x14
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x14
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1009
	.uleb128 0x6
	.byte	0x8
	.long	0x531
	.uleb128 0x2
	.long	.LASF237
	.byte	0x14
	.byte	0x50
	.long	0xfd7
	.uleb128 0x12
	.byte	0x8
	.byte	0x15
	.byte	0x47
	.long	0x1037
	.uleb128 0x11
	.string	"r"
	.byte	0x15
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0x15
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x15
	.byte	0x4a
	.long	0x101a
	.uleb128 0x12
	.byte	0x28
	.byte	0x15
	.byte	0xf0
	.long	0x1093
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF95
	.byte	0x15
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF90
	.byte	0x15
	.byte	0xf3
	.long	0x552
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x15
	.byte	0xf4
	.long	0x552
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x15
	.byte	0xf5
	.long	0x558
	.byte	0x18
	.uleb128 0x8
	.long	.LASF97
	.byte	0x15
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF240
	.byte	0x15
	.byte	0xf8
	.long	0x1042
	.uleb128 0x12
	.byte	0x48
	.byte	0x16
	.byte	0x52
	.long	0x111f
	.uleb128 0x8
	.long	.LASF241
	.byte	0x16
	.byte	0x53
	.long	0x1037
	.byte	0
	.uleb128 0x8
	.long	.LASF242
	.byte	0x16
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF243
	.byte	0x16
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF244
	.byte	0x16
	.byte	0x57
	.long	0x1009
	.byte	0x10
	.uleb128 0x8
	.long	.LASF245
	.byte	0x16
	.byte	0x58
	.long	0x111f
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x16
	.byte	0x59
	.long	0x1003
	.byte	0x20
	.uleb128 0x8
	.long	.LASF246
	.byte	0x16
	.byte	0x60
	.long	0x558
	.byte	0x28
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x61
	.long	0x1009
	.byte	0x30
	.uleb128 0x8
	.long	.LASF248
	.byte	0x16
	.byte	0x63
	.long	0x531
	.byte	0x38
	.uleb128 0x8
	.long	.LASF249
	.byte	0x16
	.byte	0x64
	.long	0x531
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1093
	.uleb128 0x2
	.long	.LASF250
	.byte	0x16
	.byte	0x65
	.long	0x109e
	.uleb128 0x7
	.long	.LASF251
	.byte	0x38
	.byte	0x17
	.byte	0x3c
	.long	0x11b4
	.uleb128 0x8
	.long	.LASF93
	.byte	0x17
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF252
	.byte	0x17
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF253
	.byte	0x17
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF254
	.byte	0x17
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF255
	.byte	0x17
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF256
	.byte	0x17
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF257
	.byte	0x17
	.byte	0x43
	.long	0x552
	.byte	0x18
	.uleb128 0x8
	.long	.LASF258
	.byte	0x17
	.byte	0x44
	.long	0x11b4
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x17
	.byte	0x45
	.long	0xf4f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF249
	.byte	0x17
	.byte	0x46
	.long	0x531
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ba
	.uleb128 0x6
	.byte	0x8
	.long	0x36b
	.uleb128 0x2
	.long	.LASF259
	.byte	0x17
	.byte	0x47
	.long	0x1130
	.uleb128 0x12
	.byte	0x68
	.byte	0x18
	.byte	0x50
	.long	0x127a
	.uleb128 0x11
	.string	"fcb"
	.byte	0x18
	.byte	0x51
	.long	0x127a
	.byte	0
	.uleb128 0x8
	.long	.LASF148
	.byte	0x18
	.byte	0x52
	.long	0x9f8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF168
	.byte	0x18
	.byte	0x53
	.long	0xad3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF260
	.byte	0x18
	.byte	0x54
	.long	0x1280
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x18
	.byte	0x55
	.long	0xf96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF261
	.byte	0x18
	.byte	0x56
	.long	0x1286
	.byte	0x28
	.uleb128 0x8
	.long	.LASF262
	.byte	0x18
	.byte	0x57
	.long	0x128c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF227
	.byte	0x18
	.byte	0x58
	.long	0xf5b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF96
	.byte	0x18
	.byte	0x59
	.long	0x1292
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x18
	.byte	0x5a
	.long	0x1298
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x18
	.byte	0x5b
	.long	0x129e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF119
	.byte	0x18
	.byte	0x5c
	.long	0x12a4
	.byte	0x58
	.uleb128 0x8
	.long	.LASF263
	.byte	0x18
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF264
	.byte	0x18
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x564
	.uleb128 0x6
	.byte	0x8
	.long	0xa90
	.uleb128 0x6
	.byte	0x8
	.long	0xf9c
	.uleb128 0x6
	.byte	0x8
	.long	0xad9
	.uleb128 0x6
	.byte	0x8
	.long	0x62e
	.uleb128 0x6
	.byte	0x8
	.long	0x1125
	.uleb128 0x6
	.byte	0x8
	.long	0x11c0
	.uleb128 0x6
	.byte	0x8
	.long	0x100f
	.uleb128 0x2
	.long	.LASF265
	.byte	0x18
	.byte	0x5f
	.long	0x11cb
	.uleb128 0x12
	.byte	0x8
	.byte	0x19
	.byte	0x69
	.long	0x12d6
	.uleb128 0x8
	.long	.LASF266
	.byte	0x19
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF267
	.byte	0x19
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF268
	.byte	0x19
	.byte	0x6c
	.long	0x12b5
	.uleb128 0x12
	.byte	0x28
	.byte	0x19
	.byte	0x6e
	.long	0x1324
	.uleb128 0x8
	.long	.LASF269
	.byte	0x19
	.byte	0x6f
	.long	0x1324
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x19
	.byte	0x70
	.long	0x12d6
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x19
	.byte	0x71
	.long	0x12d6
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x19
	.byte	0x72
	.long	0x1009
	.byte	0x18
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12d6
	.uleb128 0x2
	.long	.LASF271
	.byte	0x19
	.byte	0x74
	.long	0x12e1
	.uleb128 0x12
	.byte	0x1c
	.byte	0x1a
	.byte	0x3c
	.long	0x138f
	.uleb128 0x11
	.string	"id"
	.byte	0x1a
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1a
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x1a
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x1a
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1a
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF193
	.byte	0x1a
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF274
	.byte	0x1a
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF275
	.byte	0x1a
	.byte	0x43
	.long	0x1335
	.uleb128 0x12
	.byte	0x4
	.byte	0x1b
	.byte	0x50
	.long	0x13af
	.uleb128 0x8
	.long	.LASF192
	.byte	0x1b
	.byte	0x51
	.long	0x13af
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x670
	.long	0x13bf
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1b
	.byte	0x4f
	.long	0x13d3
	.uleb128 0x10
	.long	.LASF276
	.byte	0x1b
	.byte	0x52
	.long	0x139a
	.byte	0
	.uleb128 0x2
	.long	.LASF277
	.byte	0x1b
	.byte	0x53
	.long	0x13bf
	.uleb128 0x12
	.byte	0x24
	.byte	0x1b
	.byte	0x59
	.long	0x145d
	.uleb128 0x11
	.string	"wid"
	.byte	0x1b
	.byte	0x5a
	.long	0x665
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x1b
	.byte	0x5b
	.long	0x67b
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x1b
	.byte	0x5b
	.long	0x67b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1b
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF193
	.byte	0x1b
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF266
	.byte	0x1b
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1b
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF274
	.byte	0x1b
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF279
	.byte	0x1b
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1b
	.byte	0x62
	.long	0x13d3
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF281
	.byte	0x1b
	.byte	0x63
	.long	0x13de
	.uleb128 0x12
	.byte	0x18
	.byte	0x1b
	.byte	0x79
	.long	0x14a0
	.uleb128 0x8
	.long	.LASF269
	.byte	0x1b
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1b
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x1b
	.byte	0x7c
	.long	0x14a0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1b
	.byte	0x7d
	.long	0x3a7
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x145d
	.uleb128 0x2
	.long	.LASF283
	.byte	0x1b
	.byte	0x7f
	.long	0x1468
	.uleb128 0x12
	.byte	0x40
	.byte	0x1b
	.byte	0x88
	.long	0x1532
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1b
	.byte	0x89
	.long	0x1532
	.byte	0
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1b
	.byte	0x8a
	.long	0x531
	.byte	0x8
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1b
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1b
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1b
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1b
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1b
	.byte	0x94
	.long	0x531
	.byte	0x20
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1b
	.byte	0x95
	.long	0x531
	.byte	0x28
	.uleb128 0x8
	.long	.LASF291
	.byte	0x1b
	.byte	0x97
	.long	0x1538
	.byte	0x30
	.uleb128 0x8
	.long	.LASF292
	.byte	0x1b
	.byte	0x98
	.long	0x3a7
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14a0
	.uleb128 0x6
	.byte	0x8
	.long	0x153e
	.uleb128 0x6
	.byte	0x8
	.long	0x14a6
	.uleb128 0x2
	.long	.LASF293
	.byte	0x1b
	.byte	0x99
	.long	0x14b1
	.uleb128 0x12
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.long	0x1570
	.uleb128 0x11
	.string	"sen"
	.byte	0x1c
	.byte	0x41
	.long	0x531
	.byte	0
	.uleb128 0x8
	.long	.LASF294
	.byte	0x1c
	.byte	0x42
	.long	0x531
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF295
	.byte	0x1c
	.byte	0x43
	.long	0x154f
	.uleb128 0x12
	.byte	0x50
	.byte	0x1d
	.byte	0x5e
	.long	0x15ef
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1d
	.byte	0x5f
	.long	0x132a
	.byte	0
	.uleb128 0x8
	.long	.LASF282
	.byte	0x1d
	.byte	0x60
	.long	0x3a7
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1d
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF169
	.byte	0x1d
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF118
	.byte	0x1d
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1d
	.byte	0x64
	.long	0xa84
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1d
	.byte	0x66
	.long	0x639
	.byte	0x48
	.uleb128 0x8
	.long	.LASF297
	.byte	0x1d
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF298
	.byte	0x1d
	.byte	0x68
	.long	0x67b
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF299
	.byte	0x1d
	.byte	0x69
	.long	0x157b
	.uleb128 0x12
	.byte	0x10
	.byte	0x1d
	.byte	0x76
	.long	0x161a
	.uleb128 0x11
	.string	"lc"
	.byte	0x1d
	.byte	0x77
	.long	0x639
	.byte	0
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1d
	.byte	0x78
	.long	0x3a7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF301
	.byte	0x1d
	.byte	0x7a
	.long	0x15fa
	.uleb128 0x12
	.byte	0x40
	.byte	0x1d
	.byte	0x7f
	.long	0x16b2
	.uleb128 0x8
	.long	.LASF274
	.byte	0x1d
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF300
	.byte	0x1d
	.byte	0x82
	.long	0x3a7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1d
	.byte	0x83
	.long	0x16b2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF303
	.byte	0x1d
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF304
	.byte	0x1d
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF305
	.byte	0x1d
	.byte	0x87
	.long	0x16b8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF306
	.byte	0x1d
	.byte	0x88
	.long	0x16b8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1d
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF308
	.byte	0x1d
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF309
	.byte	0x1d
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF310
	.byte	0x1d
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x161a
	.uleb128 0x6
	.byte	0x8
	.long	0x16be
	.uleb128 0x6
	.byte	0x8
	.long	0x15ef
	.uleb128 0x2
	.long	.LASF311
	.byte	0x1d
	.byte	0x8f
	.long	0x1625
	.uleb128 0x12
	.byte	0x10
	.byte	0x1e
	.byte	0x40
	.long	0x1708
	.uleb128 0x8
	.long	.LASF312
	.byte	0x1e
	.byte	0x41
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1e
	.byte	0x42
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF313
	.byte	0x1e
	.byte	0x43
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF143
	.byte	0x1e
	.byte	0x44
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF314
	.byte	0x1e
	.byte	0x45
	.long	0x16cf
	.uleb128 0x1b
	.value	0x1f8
	.byte	0x1f
	.byte	0x56
	.long	0x19b2
	.uleb128 0x8
	.long	.LASF315
	.byte	0x1f
	.byte	0x57
	.long	0x19b2
	.byte	0
	.uleb128 0x8
	.long	.LASF316
	.byte	0x1f
	.byte	0x58
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF317
	.byte	0x1f
	.byte	0x59
	.long	0x19b8
	.byte	0x10
	.uleb128 0x8
	.long	.LASF318
	.byte	0x1f
	.byte	0x5a
	.long	0x19b8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF319
	.byte	0x1f
	.byte	0x5b
	.long	0x19b8
	.byte	0x20
	.uleb128 0x8
	.long	.LASF320
	.byte	0x1f
	.byte	0x5c
	.long	0x2b9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF321
	.byte	0x1f
	.byte	0x5e
	.long	0x19c4
	.byte	0x30
	.uleb128 0x8
	.long	.LASF322
	.byte	0x1f
	.byte	0x60
	.long	0x19ca
	.byte	0x38
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1f
	.byte	0x61
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1f
	.byte	0x63
	.long	0x531
	.byte	0x48
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1f
	.byte	0x64
	.long	0x531
	.byte	0x50
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1f
	.byte	0x65
	.long	0x531
	.byte	0x58
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1f
	.byte	0x66
	.long	0x531
	.byte	0x60
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1f
	.byte	0x67
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF328
	.byte	0x1f
	.byte	0x68
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF329
	.byte	0x1f
	.byte	0x6a
	.long	0x1009
	.byte	0x70
	.uleb128 0x8
	.long	.LASF330
	.byte	0x1f
	.byte	0x6b
	.long	0x531
	.byte	0x78
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1f
	.byte	0x6c
	.long	0x531
	.byte	0x80
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1f
	.byte	0x6d
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1f
	.byte	0x6e
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1f
	.byte	0x6f
	.long	0x2b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1f
	.byte	0x71
	.long	0x19d0
	.byte	0x98
	.uleb128 0x8
	.long	.LASF334
	.byte	0x1f
	.byte	0x72
	.long	0x19d6
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF335
	.byte	0x1f
	.byte	0x73
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF336
	.byte	0x1f
	.byte	0x74
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1f
	.byte	0x78
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1f
	.byte	0x7a
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1f
	.byte	0x7c
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF340
	.byte	0x1f
	.byte	0x7f
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1f
	.byte	0x80
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1f
	.byte	0x81
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1f
	.byte	0x82
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1f
	.byte	0x83
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1f
	.byte	0x84
	.long	0x8f
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1f
	.byte	0x86
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF347
	.byte	0x1f
	.byte	0x87
	.long	0x2b9
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF348
	.byte	0x1f
	.byte	0x88
	.long	0x2b9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF349
	.byte	0x1f
	.byte	0x89
	.long	0x531
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1f
	.byte	0x8a
	.long	0x2b9
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF351
	.byte	0x1f
	.byte	0x8b
	.long	0x2b9
	.byte	0xf4
	.uleb128 0x8
	.long	.LASF352
	.byte	0x1f
	.byte	0x8d
	.long	0x4a1
	.byte	0xf8
	.uleb128 0x1c
	.long	.LASF353
	.byte	0x1f
	.byte	0x8e
	.long	0x4a1
	.value	0x130
	.uleb128 0x1c
	.long	.LASF354
	.byte	0x1f
	.byte	0x8f
	.long	0x4a1
	.value	0x168
	.uleb128 0x1c
	.long	.LASF355
	.byte	0x1f
	.byte	0x90
	.long	0x2b9
	.value	0x1a0
	.uleb128 0x1c
	.long	.LASF356
	.byte	0x1f
	.byte	0x91
	.long	0x306
	.value	0x1a8
	.uleb128 0x1c
	.long	.LASF357
	.byte	0x1f
	.byte	0x92
	.long	0x306
	.value	0x1b0
	.uleb128 0x1c
	.long	.LASF358
	.byte	0x1f
	.byte	0x93
	.long	0x306
	.value	0x1b8
	.uleb128 0x1c
	.long	.LASF359
	.byte	0x1f
	.byte	0x94
	.long	0x306
	.value	0x1c0
	.uleb128 0x1c
	.long	.LASF360
	.byte	0x1f
	.byte	0x95
	.long	0xf4f
	.value	0x1c8
	.uleb128 0x1c
	.long	.LASF361
	.byte	0x1f
	.byte	0x96
	.long	0xf4f
	.value	0x1d0
	.uleb128 0x1c
	.long	.LASF362
	.byte	0x1f
	.byte	0x98
	.long	0x19dc
	.value	0x1d8
	.uleb128 0x1c
	.long	.LASF363
	.byte	0x1f
	.byte	0x99
	.long	0x2b9
	.value	0x1e0
	.uleb128 0x1c
	.long	.LASF364
	.byte	0x1f
	.byte	0x9a
	.long	0x8f
	.value	0x1e8
	.uleb128 0x1c
	.long	.LASF365
	.byte	0x1f
	.byte	0x9b
	.long	0x2b9
	.value	0x1f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12aa
	.uleb128 0x6
	.byte	0x8
	.long	0x19be
	.uleb128 0x6
	.byte	0x8
	.long	0x16c4
	.uleb128 0x6
	.byte	0x8
	.long	0x1544
	.uleb128 0x6
	.byte	0x8
	.long	0x552
	.uleb128 0x6
	.byte	0x8
	.long	0x1570
	.uleb128 0x6
	.byte	0x8
	.long	0x1708
	.uleb128 0x6
	.byte	0x8
	.long	0x19e2
	.uleb128 0x6
	.byte	0x8
	.long	0x138f
	.uleb128 0x2
	.long	.LASF366
	.byte	0x1f
	.byte	0x9c
	.long	0x1713
	.uleb128 0x1d
	.long	.LASF369
	.byte	0x1
	.byte	0x41
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b21
	.uleb128 0x1e
	.string	"kb"
	.byte	0x1
	.byte	0x41
	.long	0x1b21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF315
	.byte	0x1
	.byte	0x43
	.long	0x19b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.byte	0x44
	.long	0x9f8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x1
	.byte	0x45
	.long	0xad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x20
	.string	"d2p"
	.byte	0x1
	.byte	0x46
	.long	0x1280
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.string	"lm"
	.byte	0x1
	.byte	0x47
	.long	0xf96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1f
	.long	.LASF261
	.byte	0x1
	.byte	0x48
	.long	0x1286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.string	"sil"
	.byte	0x1
	.byte	0x49
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -169
	.uleb128 0x20
	.string	"ci"
	.byte	0x1
	.byte	0x49
	.long	0x639
	.uleb128 0x3
	.byte	0x91
	.sleb128 -170
	.uleb128 0x20
	.string	"w"
	.byte	0x1
	.byte	0x4a
	.long	0x665
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x20
	.string	"n"
	.byte	0x1
	.byte	0x4b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1f
	.long	.LASF303
	.byte	0x1
	.byte	0x4b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x20
	.string	"wp"
	.byte	0x1
	.byte	0x4c
	.long	0x1b27
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.string	"lc"
	.byte	0x1
	.byte	0x4d
	.long	0x8b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.long	.LASF367
	.byte	0x1
	.byte	0x4e
	.long	0x360
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x20
	.string	"str"
	.byte	0x1
	.byte	0x4f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF368
	.byte	0x1
	.byte	0x50
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.string	"j"
	.byte	0x1
	.byte	0x51
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19e8
	.uleb128 0x6
	.byte	0x8
	.long	0xfcb
	.uleb128 0x21
	.long	.LASF370
	.byte	0x1
	.value	0x19c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb0
	.uleb128 0x22
	.long	.LASF371
	.byte	0x1
	.value	0x19c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"kb"
	.byte	0x1
	.value	0x19c
	.long	0x1b21
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"lms"
	.byte	0x1
	.value	0x19e
	.long	0x1286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"kbc"
	.byte	0x1
	.value	0x19f
	.long	0x19b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1a0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x24
	.string	"j"
	.byte	0x1
	.value	0x1a1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.string	"n"
	.byte	0x1
	.value	0x1a2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x21
	.long	.LASF372
	.byte	0x1
	.value	0x1ea
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bea
	.uleb128 0x23
	.string	"kb"
	.byte	0x1
	.value	0x1ea
	.long	0x1b21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1ec
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF373
	.byte	0x1
	.value	0x1f5
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c24
	.uleb128 0x23
	.string	"kb"
	.byte	0x1
	.value	0x1f5
	.long	0x1b21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.value	0x1f7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF374
	.byte	0x1
	.value	0x20b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c60
	.uleb128 0x23
	.string	"kb"
	.byte	0x1
	.value	0x20b
	.long	0x1b21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF321
	.byte	0x1
	.value	0x20d
	.long	0x19c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF380
	.byte	0x4
	.byte	0xaa
	.long	0x266
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF60:
	.string	"bitvec_t"
.LASF7:
	.string	"size_t"
.LASF253:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF358:
	.string	"tot_hmm_eval"
.LASF136:
	.string	"sseq"
.LASF299:
	.string	"lextree_node_t"
.LASF207:
	.string	"tgprob"
.LASF187:
	.string	"used"
.LASF145:
	.string	"basewid"
.LASF366:
	.string	"kb_t"
.LASF109:
	.string	"s3senid_t"
.LASF142:
	.string	"mdef_t"
.LASF300:
	.string	"root"
.LASF168:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF258:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF209:
	.string	"tg_segbase"
.LASF324:
	.string	"comssid_active"
.LASF131:
	.string	"n_sen"
.LASF294:
	.string	"comsen"
.LASF353:
	.string	"tm_srch"
.LASF163:
	.string	"comsseq"
.LASF359:
	.string	"tot_wd_exit"
.LASF17:
	.string	"_IO_write_base"
.LASF146:
	.string	"comp"
.LASF269:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF219:
	.string	"n_bg_score"
.LASF274:
	.string	"type"
.LASF243:
	.string	"vqsize"
.LASF192:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF110:
	.string	"WORD_POSN_BEGIN"
.LASF342:
	.string	"pl_window_effective"
.LASF101:
	.string	"mgau_model_t"
.LASF326:
	.string	"rec_sen_active"
.LASF53:
	.string	"int8"
.LASF85:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF217:
	.string	"n_bg_fill"
.LASF282:
	.string	"children"
.LASF289:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF96:
	.string	"mgau"
.LASF229:
	.string	"lmclass"
.LASF307:
	.string	"n_active"
.LASF320:
	.string	"n_lextrans"
.LASF167:
	.string	"dict2pid_t"
.LASF81:
	.string	"cepsize"
.LASF93:
	.string	"n_mgau"
.LASF310:
	.string	"wbest"
.LASF118:
	.string	"ssid"
.LASF250:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF94:
	.string	"max_comp"
.LASF334:
	.string	"beam"
.LASF245:
	.string	"gautbl"
.LASF149:
	.string	"ciphone_str"
.LASF71:
	.string	"hash_table_t"
.LASF264:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF267:
	.string	"history"
.LASF322:
	.string	"feat"
.LASF214:
	.string	"bgoff"
.LASF134:
	.string	"ciphone"
.LASF119:
	.string	"tmat"
.LASF107:
	.string	"s3lmwid_t"
.LASF223:
	.string	"n_tg_score"
.LASF79:
	.string	"ptmr_t"
.LASF156:
	.string	"finishwid"
.LASF83:
	.string	"n_stream"
.LASF224:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF268:
	.string	"hmm_state_t"
.LASF296:
	.string	"ssid_lc"
.LASF42:
	.string	"_IO_FILE"
.LASF316:
	.string	"n_lextree"
.LASF248:
	.string	"gauscore"
.LASF306:
	.string	"next_active"
.LASF121:
	.string	"phone_t"
.LASF277:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF164:
	.string	"comwt"
.LASF331:
	.string	"phn_heur_list"
.LASF186:
	.string	"tg_t"
.LASF188:
	.string	"membg_t"
.LASF165:
	.string	"n_comstate"
.LASF350:
	.string	"hmm_hist_bins"
.LASF225:
	.string	"n_tgcache_hit"
.LASF266:
	.string	"score"
.LASF116:
	.string	"filler"
.LASF348:
	.string	"utt_gau_eval"
.LASF155:
	.string	"startwid"
.LASF203:
	.string	"bg_seg_sz"
.LASF338:
	.string	"svq4svq"
.LASF68:
	.string	"table"
.LASF335:
	.string	"ds_ratio"
.LASF319:
	.string	"fillertree"
.LASF11:
	.string	"char"
.LASF336:
	.string	"cond_ds"
.LASF180:
	.string	"firstbg"
.LASF106:
	.string	"s3wid_t"
.LASF255:
	.string	"n_featlen"
.LASF91:
	.string	"mixw"
.LASF176:
	.string	"wordlist"
.LASF361:
	.string	"matchsegfp"
.LASF241:
	.string	"origsize"
.LASF233:
	.string	"lmset_s"
.LASF234:
	.string	"lmset_t"
.LASF378:
	.string	"_IO_lock_t"
.LASF152:
	.string	"filler_start"
.LASF124:
	.string	"ph_lc_s"
.LASF126:
	.string	"ph_lc_t"
.LASF247:
	.string	"vqdist"
.LASF297:
	.string	"composite"
.LASF325:
	.string	"sen_active"
.LASF360:
	.string	"matchfp"
.LASF166:
	.string	"n_comsseq"
.LASF169:
	.string	"prob"
.LASF301:
	.string	"lextree_lcroot_t"
.LASF276:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF162:
	.string	"comstate"
.LASF137:
	.string	"n_sseq"
.LASF362:
	.string	"hyp_segs"
.LASF46:
	.string	"_pos"
.LASF122:
	.string	"ph_rc_s"
.LASF123:
	.string	"ph_rc_t"
.LASF275:
	.string	"hyp_t"
.LASF292:
	.string	"lwidlist"
.LASF98:
	.string	"frm_sen_eval"
.LASF153:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF349:
	.string	"hmm_hist"
.LASF161:
	.string	"single_lc"
.LASF138:
	.string	"cd2cisen"
.LASF170:
	.string	"fillpen_t"
.LASF206:
	.string	"bgprob"
.LASF357:
	.string	"tot_gau_eval"
.LASF103:
	.string	"s3pid_t"
.LASF230:
	.string	"n_lmclass"
.LASF303:
	.string	"n_lc"
.LASF305:
	.string	"active"
.LASF218:
	.string	"n_bg_inmem"
.LASF364:
	.string	"hyp_str"
.LASF379:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF263:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF352:
	.string	"tm_sen"
.LASF221:
	.string	"n_tg_fill"
.LASF205:
	.string	"tginfo"
.LASF237:
	.string	"tmat_t"
.LASF198:
	.string	"max_ug"
.LASF369:
	.string	"kb_init"
.LASF0:
	.string	"long unsigned int"
.LASF181:
	.string	"ug_t"
.LASF376:
	.string	"kb.c"
.LASF127:
	.string	"n_ciphone"
.LASF333:
	.string	"bestwordscore"
.LASF235:
	.string	"wordprob_t"
.LASF28:
	.string	"_flags2"
.LASF189:
	.string	"tginfo_s"
.LASF191:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF371:
	.string	"lmname"
.LASF340:
	.string	"pl_window"
.LASF77:
	.string	"start_cpu"
.LASF295:
	.string	"ascr_t"
.LASF147:
	.string	"dictword_t"
.LASF251:
	.string	"gs_s"
.LASF259:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF272:
	.string	"vhid"
.LASF261:
	.string	"lmset"
.LASF105:
	.string	"s3tmatid_t"
.LASF323:
	.string	"ssid_active"
.LASF228:
	.string	"dict_size"
.LASF339:
	.string	"ci_pbeam"
.LASF373:
	.string	"kb_freehyps"
.LASF29:
	.string	"_old_offset"
.LASF222:
	.string	"n_tg_inmem"
.LASF115:
	.string	"word_posn_t"
.LASF212:
	.string	"n_tgbowt"
.LASF328:
	.string	"rec_bst_senscr"
.LASF304:
	.string	"n_node"
.LASF171:
	.string	"lmclass_word_s"
.LASF174:
	.string	"lmclass_word_t"
.LASF363:
	.string	"hyp_seglen"
.LASF47:
	.string	"long long int"
.LASF239:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF159:
	.string	"internal"
.LASF141:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF199:
	.string	"wordstr"
.LASF314:
	.string	"beam_t"
.LASF347:
	.string	"utt_sen_eval"
.LASF315:
	.string	"kbcore"
.LASF100:
	.string	"gau_type"
.LASF273:
	.string	"ascr"
.LASF271:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF139:
	.string	"sen2cimap"
.LASF254:
	.string	"n_density"
.LASF330:
	.string	"cache_best_list"
.LASF78:
	.string	"start_elapsed"
.LASF20:
	.string	"_IO_buf_base"
.LASF244:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF374:
	.string	"kb_free"
.LASF113:
	.string	"WORD_POSN_INTERNAL"
.LASF158:
	.string	"dict_t"
.LASF111:
	.string	"WORD_POSN_END"
.LASF194:
	.string	"lm_tgcache_entry_t"
.LASF256:
	.string	"n_mbyte"
.LASF298:
	.string	"frame"
.LASF92:
	.string	"mgau_t"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF45:
	.string	"_sbuf"
.LASF73:
	.string	"t_cpu"
.LASF249:
	.string	"mgau_sl"
.LASF293:
	.string	"vithist_t"
.LASF377:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF133:
	.string	"ciphone_ht"
.LASF283:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF242:
	.string	"n_sv"
.LASF182:
	.string	"probid"
.LASF288:
	.string	"bghist"
.LASF76:
	.string	"t_tot_elapsed"
.LASF40:
	.string	"_mode"
.LASF351:
	.string	"hmm_hist_binsize"
.LASF337:
	.string	"gs4gs"
.LASF375:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF208:
	.string	"tgbowt"
.LASF193:
	.string	"lscr"
.LASF321:
	.string	"vithist"
.LASF112:
	.string	"WORD_POSN_SINGLE"
.LASF311:
	.string	"lextree_t"
.LASF190:
	.string	"n_tg"
.LASF148:
	.string	"mdef"
.LASF246:
	.string	"subvec"
.LASF343:
	.string	"pl_beam"
.LASF327:
	.string	"rec_bstcid"
.LASF238:
	.string	"arraysize_t"
.LASF317:
	.string	"ugtree"
.LASF143:
	.string	"word"
.LASF132:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF82:
	.string	"cepsize_used"
.LASF196:
	.string	"n_ug"
.LASF66:
	.string	"hash_entry_s"
.LASF67:
	.string	"hash_entry_t"
.LASF216:
	.string	"tgcache"
.LASF284:
	.string	"entry"
.LASF84:
	.string	"stream_len"
.LASF157:
	.string	"silwid"
.LASF260:
	.string	"dict2pid"
.LASF355:
	.string	"tot_fr"
.LASF69:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF89:
	.string	"n_comp"
.LASF97:
	.string	"distfloor"
.LASF332:
	.string	"skip_count"
.LASF240:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF368:
	.string	"cisencnt"
.LASF226:
	.string	"access_type"
.LASF102:
	.string	"s3cipid_t"
.LASF90:
	.string	"mean"
.LASF117:
	.string	"ciphone_t"
.LASF215:
	.string	"tgoff"
.LASF280:
	.string	"lmstate"
.LASF125:
	.string	"rclist"
.LASF345:
	.string	"uttid"
.LASF65:
	.string	"glist_t"
.LASF80:
	.string	"feat_s"
.LASF88:
	.string	"feat_t"
.LASF365:
	.string	"hyp_strlen"
.LASF285:
	.string	"frame_start"
.LASF86:
	.string	"varnorm"
.LASF61:
	.string	"gnode_s"
.LASF64:
	.string	"gnode_t"
.LASF75:
	.string	"t_tot_cpu"
.LASF197:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF309:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF318:
	.string	"ugtreeMulti"
.LASF195:
	.string	"lm_s"
.LASF232:
	.string	"lm_t"
.LASF172:
	.string	"dictwid"
.LASF160:
	.string	"ldiph_lc"
.LASF308:
	.string	"n_next_active"
.LASF120:
	.string	"wpos"
.LASF87:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF281:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF135:
	.string	"phone"
.LASF202:
	.string	"log_bg_seg_sz"
.LASF372:
	.string	"kb_lextree_active_swap"
.LASF154:
	.string	"comp_head"
.LASF130:
	.string	"n_ci_sen"
.LASF184:
	.string	"firsttg"
.LASF95:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF200:
	.string	"startlwid"
.LASF252:
	.string	"n_feat"
.LASF178:
	.string	"lmlog_t"
.LASF72:
	.string	"name"
.LASF99:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF286:
	.string	"n_entry"
.LASF380:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF183:
	.string	"bowtid"
.LASF173:
	.string	"LOGprob"
.LASF140:
	.string	"ciphone2n_cd_sen"
.LASF370:
	.string	"kb_setlm"
.LASF291:
	.string	"lms2vh_root"
.LASF290:
	.string	"bestvh"
.LASF108:
	.string	"s3frmid_t"
.LASF129:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF312:
	.string	"subvq"
.LASF313:
	.string	"ptrans"
.LASF257:
	.string	"codeword"
.LASF344:
	.string	"wend_beam"
.LASF287:
	.string	"n_frm"
.LASF279:
	.string	"valid"
.LASF210:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF356:
	.string	"tot_sen_eval"
.LASF367:
	.string	"lc_active"
.LASF104:
	.string	"s3ssid_t"
.LASF262:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF211:
	.string	"n_tgprob"
.LASF74:
	.string	"t_elapsed"
.LASF231:
	.string	"inclass_ugscore"
.LASF179:
	.string	"bowt"
.LASF236:
	.string	"n_state"
.LASF70:
	.string	"nocase"
.LASF175:
	.string	"lmclass_s"
.LASF177:
	.string	"lmclass_t"
.LASF27:
	.string	"_fileno"
.LASF114:
	.string	"WORD_POSN_UNDEFINED"
.LASF150:
	.string	"max_words"
.LASF270:
	.string	"bestscore"
.LASF354:
	.string	"tm_ovrhd"
.LASF58:
	.string	"float64"
.LASF227:
	.string	"dict2lmwid"
.LASF128:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF204:
	.string	"membg"
.LASF302:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF213:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF185:
	.string	"bg_t"
.LASF329:
	.string	"cache_ci_senscr"
.LASF201:
	.string	"finishlwid"
.LASF151:
	.string	"n_word"
.LASF341:
	.string	"pl_window_start"
.LASF144:
	.string	"pronlen"
.LASF265:
	.string	"kbcore_t"
.LASF278:
	.string	"pred"
.LASF63:
	.string	"next"
.LASF220:
	.string	"n_bg_bo"
.LASF62:
	.string	"data"
.LASF55:
	.string	"uint16"
.LASF346:
	.string	"utt_hmm_eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
