	.file	"mathsupport.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 mathsupport.c -mtune=generic -march=x86-64 -g
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
	.globl	Prob2Score
	.type	Prob2Score, @function
Prob2Score:
.LFB2:
	.file 1 "mathsupport.c"
	.loc 1 45 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# p, p
	movss	%xmm1, -8(%rbp)	# null, null
	.loc 1 46 0
	xorps	%xmm0, %xmm0	# tmp69
	ucomiss	-4(%rbp), %xmm0	# p, tmp69
	jp	.L2	#,
	xorps	%xmm0, %xmm0	# tmp70
	ucomiss	-4(%rbp), %xmm0	# p, tmp70
	jne	.L2	#,
	.loc 1 46 0 is_stmt 0 discriminator 1
	movl	$-987654321, %eax	#, D.6706
	jmp	.L4	#
.L2:
	.loc 1 47 0 is_stmt 1
	movss	-4(%rbp), %xmm0	# p, tmp71
	divss	-8(%rbp), %xmm0	# null, D.6707
	xorps	%xmm1, %xmm1	# tmp72
	ucomiss	%xmm1, %xmm0	# tmp72, D.6707
	jbe	.L10	#,
	.loc 1 47 0 is_stmt 0 discriminator 1
	movss	-4(%rbp), %xmm0	# p, tmp73
	divss	-8(%rbp), %xmm0	# null, D.6707
	unpcklps	%xmm0, %xmm0	# D.6707, D.6707
	cvtps2pd	%xmm0, %xmm0	# D.6707, D.6708
	call	log	#
	movsd	.LC1(%rip), %xmm1	#, tmp74
	mulsd	%xmm1, %xmm0	# tmp74, D.6708
	movsd	.LC2(%rip), %xmm1	#, tmp75
	mulsd	%xmm1, %xmm0	# tmp75, D.6708
	movsd	.LC3(%rip), %xmm1	#, tmp76
	addsd	%xmm1, %xmm0	# tmp76, iftmp.0
	movsd	%xmm0, -16(%rbp)	# iftmp.0, %sfp
	movq	-16(%rbp), %rax	# %sfp, iftmp.0
	jmp	.L7	#
.L10:
	.loc 1 47 0 discriminator 2
	movabsq	$-4511742254271954944, %rax	#, iftmp.0
.L7:
	.loc 1 47 0 discriminator 3
	movq	%rax, -16(%rbp)	# iftmp.0, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.6708, D.6706
.L4:
	.loc 1 48 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Prob2Score, .-Prob2Score
	.globl	Score2Prob
	.type	Score2Prob, @function
Score2Prob:
.LFB3:
	.loc 1 57 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# sc, sc
	movss	%xmm0, -8(%rbp)	# null, null
	.loc 1 58 0
	cmpl	$-987654321, -4(%rbp)	#, sc
	jne	.L12	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6710
	jmp	.L13	#
.L12:
	.loc 1 59 0 is_stmt 1
	movss	-8(%rbp), %xmm2	# null, D.6711
	cvtps2pd	%xmm2, %xmm2	# D.6711, D.6711
	movsd	%xmm2, -16(%rbp)	# D.6711, %sfp
	cvtsi2ss	-4(%rbp), %xmm0	# sc, D.6710
	unpcklps	%xmm0, %xmm0	# D.6710, D.6710
	cvtps2pd	%xmm0, %xmm0	# D.6710, D.6711
	movsd	.LC2(%rip), %xmm1	#, tmp68
	divsd	%xmm1, %xmm0	# tmp68, D.6711
	movsd	.LC5(%rip), %xmm1	#, tmp69
	mulsd	%xmm1, %xmm0	# tmp69, D.6711
	call	exp	#
	mulsd	-16(%rbp), %xmm0	# %sfp, D.6711
	unpcklpd	%xmm0, %xmm0	# D.6711
	cvtpd2ps	%xmm0, %xmm3	# D.6711, D.6710
	movss	%xmm3, -16(%rbp)	# D.6710, %sfp
	movl	-16(%rbp), %eax	# %sfp, D.6710
.L13:
	.loc 1 60 0
	movl	%eax, -16(%rbp)	# <retval>, %sfp
	movss	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Score2Prob, .-Score2Prob
	.globl	Scorify
	.type	Scorify, @function
Scorify:
.LFB4:
	.loc 1 70 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# sc, sc
	.loc 1 71 0
	cvtsi2ss	-4(%rbp), %xmm0	# sc, D.6712
	movss	.LC6(%rip), %xmm1	#, tmp62
	divss	%xmm1, %xmm0	# tmp62, D.6712
	movss	%xmm0, -8(%rbp)	# D.6712, %sfp
	movl	-8(%rbp), %eax	# %sfp, <retval>
	.loc 1 72 0
	movl	%eax, -8(%rbp)	# <retval>, %sfp
	movss	-8(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Scorify, .-Scorify
	.globl	PValue
	.type	PValue, @function
PValue:
.LFB5:
	.loc 1 90 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmm, hmm
	movss	%xmm0, -28(%rbp)	# sc, sc
	.loc 1 95 0
	movss	-28(%rbp), %xmm0	# sc, D.6713
	cvtps2pd	%xmm0, %xmm0	# D.6713, D.6713
	ucomisd	.LC7(%rip), %xmm0	#, D.6713
	jb	.L28	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, tmp71
	movq	%rax, -16(%rbp)	# tmp71, pval
	jmp	.L19	#
.L28:
	.loc 1 96 0 is_stmt 1
	movss	-28(%rbp), %xmm0	# sc, D.6713
	cvtps2pd	%xmm0, %xmm0	# D.6713, D.6713
	movsd	.LC9(%rip), %xmm1	#, tmp72
	ucomisd	%xmm0, %xmm1	# D.6713, tmp72
	jb	.L29	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	movabsq	$4607182418800017408, %rax	#, tmp73
	movq	%rax, -16(%rbp)	# tmp73, pval
	jmp	.L19	#
.L29:
	.loc 1 97 0 is_stmt 1
	movss	-28(%rbp), %xmm0	# sc, D.6713
	cvtps2pd	%xmm0, %xmm0	# D.6713, D.6713
	movsd	.LC5(%rip), %xmm1	#, tmp74
	mulsd	%xmm1, %xmm0	# tmp74, D.6713
	call	exp	#
	movsd	.LC10(%rip), %xmm1	#, tmp75
	addsd	%xmm1, %xmm0	# tmp75, D.6713
	movsd	.LC10(%rip), %xmm1	#, tmp77
	divsd	%xmm0, %xmm1	# D.6713, tmp76
	movapd	%xmm1, %xmm0	# tmp76, tmp76
	movsd	%xmm0, -16(%rbp)	# tmp76, pval
.L19:
	.loc 1 100 0
	cmpq	$0, -24(%rbp)	#, hmm
	je	.L22	#,
	.loc 1 100 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp78
	movl	456(%rax), %eax	# hmm_13(D)->flags, D.6714
	andl	$128, %eax	#, D.6714
	testl	%eax, %eax	# D.6714
	je	.L22	#,
	.loc 1 102 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp79
	movl	452(%rax), %ecx	# hmm_13(D)->lambda, D.6715
	movq	-24(%rbp), %rax	# hmm, tmp80
	movl	448(%rax), %edx	# hmm_13(D)->mu, D.6715
	movl	-28(%rbp), %eax	# sc, tmp81
	movl	%ecx, -40(%rbp)	# D.6715, %sfp
	movss	-40(%rbp), %xmm2	# %sfp,
	movl	%edx, -40(%rbp)	# D.6715, %sfp
	movss	-40(%rbp), %xmm1	# %sfp,
	movl	%eax, -40(%rbp)	# tmp81, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	call	ExtremeValueP	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rax	# %sfp, tmp82
	movq	%rax, -8(%rbp)	# tmp82, pval2
	.loc 1 103 0
	movsd	-16(%rbp), %xmm0	# pval, tmp83
	ucomisd	-8(%rbp), %xmm0	# pval2, tmp83
	jbe	.L22	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pval2, tmp84
	movq	%rax, -16(%rbp)	# tmp84, pval
.L22:
	.loc 1 105 0 is_stmt 1
	movq	-16(%rbp), %rax	# pval, D.6713
	.loc 1 106 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	PValue, .-PValue
	.globl	LogSum
	.type	LogSum, @function
LogSum:
.LFB6:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# p1, p1
	movss	%xmm1, -8(%rbp)	# p2, p2
	.loc 1 117 0
	movss	-4(%rbp), %xmm0	# p1, tmp79
	ucomiss	-8(%rbp), %xmm0	# p2, tmp79
	jbe	.L43	#,
	.loc 1 118 0
	movss	-4(%rbp), %xmm0	# p1, tmp80
	subss	-8(%rbp), %xmm0	# p2, D.6716
	ucomiss	.LC11(%rip), %xmm0	#, D.6716
	jbe	.L44	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# p1, iftmp.1
	jmp	.L35	#
.L44:
	.loc 1 118 0 discriminator 2
	movss	-4(%rbp), %xmm2	# p1, D.6717
	cvtps2pd	%xmm2, %xmm2	# D.6717, D.6717
	movsd	%xmm2, -16(%rbp)	# D.6717, %sfp
	movss	-8(%rbp), %xmm0	# p2, tmp81
	subss	-4(%rbp), %xmm0	# p1, D.6716
	unpcklps	%xmm0, %xmm0	# D.6716, D.6716
	cvtps2pd	%xmm0, %xmm0	# D.6716, D.6717
	call	exp	#
	movsd	.LC10(%rip), %xmm1	#, tmp82
	addsd	%xmm1, %xmm0	# tmp82, D.6717
	call	log	#
	addsd	-16(%rbp), %xmm0	# %sfp, D.6717
	unpcklpd	%xmm0, %xmm0	# D.6717
	cvtpd2ps	%xmm0, %xmm3	# D.6717, iftmp.1
	movss	%xmm3, -16(%rbp)	# iftmp.1, %sfp
	movl	-16(%rbp), %eax	# %sfp, iftmp.1
.L35:
	.loc 1 118 0 discriminator 3
	jmp	.L36	#
.L43:
	.loc 1 120 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# p2, tmp83
	subss	-4(%rbp), %xmm0	# p1, D.6716
	ucomiss	.LC11(%rip), %xmm0	#, D.6716
	jbe	.L45	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# p2, iftmp.2
	jmp	.L39	#
.L45:
	.loc 1 120 0 discriminator 2
	movss	-8(%rbp), %xmm4	# p2, D.6717
	cvtps2pd	%xmm4, %xmm4	# D.6717, D.6717
	movsd	%xmm4, -16(%rbp)	# D.6717, %sfp
	movss	-4(%rbp), %xmm0	# p1, tmp84
	subss	-8(%rbp), %xmm0	# p2, D.6716
	unpcklps	%xmm0, %xmm0	# D.6716, D.6716
	cvtps2pd	%xmm0, %xmm0	# D.6716, D.6717
	call	exp	#
	movsd	.LC10(%rip), %xmm1	#, tmp85
	addsd	%xmm1, %xmm0	# tmp85, D.6717
	call	log	#
	addsd	-16(%rbp), %xmm0	# %sfp, D.6717
	unpcklpd	%xmm0, %xmm0	# D.6717
	cvtpd2ps	%xmm0, %xmm5	# D.6717, iftmp.2
	movss	%xmm5, -16(%rbp)	# iftmp.2, %sfp
	movl	-16(%rbp), %eax	# %sfp, iftmp.2
.L39:
.L36:
	.loc 1 121 0 is_stmt 1
	movl	%eax, -16(%rbp)	# <retval>, %sfp
	movss	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	LogSum, .-LogSum
	.local	ilogsum_lookup
	.comm	ilogsum_lookup,80000,32
	.type	init_ilogsum, @function
init_ilogsum:
.LFB7:
	.loc 1 150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 152 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L47	#
.L48:
	.loc 1 154 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp69
	negl	%eax	# D.6718
	cvtsi2ss	%eax, %xmm0	# D.6718, D.6719
	unpcklps	%xmm0, %xmm0	# D.6719, D.6719
	cvtps2pd	%xmm0, %xmm0	# D.6719, D.6720
	movsd	.LC5(%rip), %xmm1	#, tmp70
	mulsd	%xmm1, %xmm0	# tmp70, D.6720
	movsd	.LC2(%rip), %xmm1	#, tmp71
	divsd	%xmm1, %xmm0	# tmp71, D.6720
	call	exp	#
	movsd	.LC10(%rip), %xmm1	#, tmp72
	addsd	%xmm1, %xmm0	# tmp72, D.6720
	call	log	#
	.loc 1 153 0 discriminator 2
	movsd	.LC12(%rip), %xmm1	#, tmp73
	mulsd	%xmm1, %xmm0	# tmp73, D.6720
	cvttsd2si	%xmm0, %edx	# D.6720, D.6718
	movl	-4(%rbp), %eax	# i, tmp75
	cltq
	movl	%edx, ilogsum_lookup(,%rax,4)	# D.6718, ilogsum_lookup
	.loc 1 152 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L47:
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpl	$19999, -4(%rbp)	#, i
	jle	.L48	#,
	.loc 1 155 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	init_ilogsum, .-init_ilogsum
	.globl	ILogsum
	.type	ILogsum, @function
ILogsum:
.LFB8:
	.loc 1 158 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# p1, p1
	movl	%esi, -24(%rbp)	# p2, p2
	.loc 1 165 0
	movl	firsttime.6274(%rip), %eax	# firsttime, firsttime.3
	testl	%eax, %eax	# firsttime.3
	je	.L50	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	call	init_ilogsum	#
	movl	$0, firsttime.6274(%rip)	#, firsttime
.L50:
	.loc 1 168 0 is_stmt 1
	movl	-24(%rbp), %eax	# p2, tmp69
	movl	-20(%rbp), %edx	# p1, tmp70
	subl	%eax, %edx	# tmp69, tmp68
	movl	%edx, %eax	# tmp68, tmp68
	movl	%eax, -4(%rbp)	# tmp68, diff
	.loc 1 169 0
	cmpl	$19999, -4(%rbp)	#, diff
	jle	.L51	#,
	.loc 1 169 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# p1, D.6721
	jmp	.L52	#
.L51:
	.loc 1 170 0 is_stmt 1
	cmpl	$-19999, -4(%rbp)	#, diff
	jge	.L53	#,
	.loc 1 170 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# p2, D.6721
	jmp	.L52	#
.L53:
	.loc 1 171 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, diff
	jle	.L54	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# diff, tmp72
	cltq
	movl	ilogsum_lookup(,%rax,4), %edx	# ilogsum_lookup, D.6721
	movl	-20(%rbp), %eax	# p1, tmp73
	addl	%edx, %eax	# D.6721, D.6721
	jmp	.L52	#
.L54:
	.loc 1 172 0 is_stmt 1
	movl	-4(%rbp), %eax	# diff, tmp74
	negl	%eax	# D.6721
	cltq
	movl	ilogsum_lookup(,%rax,4), %edx	# ilogsum_lookup, D.6721
	movl	-24(%rbp), %eax	# p2, tmp76
	addl	%edx, %eax	# D.6721, D.6721
.L52:
	.loc 1 173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ILogsum, .-ILogsum
	.globl	LogNorm
	.type	LogNorm, @function
LogNorm:
.LFB9:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# n, n
	.loc 1 188 0
	movl	.LC13(%rip), %eax	#, tmp105
	movl	%eax, -24(%rbp)	# tmp105, max
	.loc 1 189 0
	movl	.LC0(%rip), %eax	#, tmp106
	movl	%eax, -20(%rbp)	# tmp106, denom
	.loc 1 191 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L56	#
.L59:
	.loc 1 192 0
	movl	-28(%rbp), %eax	# x, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp108
	addq	%rdx, %rax	# D.6722, D.6723
	movss	(%rax), %xmm0	# *_15, D.6724
	ucomiss	-24(%rbp), %xmm0	# max, D.6724
	jbe	.L57	#,
	.loc 1 192 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp109
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp110
	addq	%rdx, %rax	# D.6722, D.6723
	movl	(%rax), %eax	# *_19, tmp111
	movl	%eax, -24(%rbp)	# tmp111, max
.L57:
	.loc 1 191 0 is_stmt 1
	addl	$1, -28(%rbp)	#, x
.L56:
	.loc 1 191 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp112
	cmpl	-44(%rbp), %eax	# n, tmp112
	jl	.L59	#,
	.loc 1 193 0 is_stmt 1
	movl	$0, -28(%rbp)	#, x
	jmp	.L60	#
.L63:
	.loc 1 194 0
	movl	-28(%rbp), %eax	# x, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp114
	addq	%rdx, %rax	# D.6722, D.6723
	movss	(%rax), %xmm0	# *_25, D.6724
	unpcklps	%xmm0, %xmm0	# D.6724, D.6724
	cvtps2pd	%xmm0, %xmm0	# D.6724, D.6725
	movss	-24(%rbp), %xmm1	# max, D.6725
	cvtps2pd	%xmm1, %xmm1	# D.6725, D.6725
	movsd	.LC14(%rip), %xmm2	#, tmp115
	subsd	%xmm2, %xmm1	# tmp115, D.6725
	ucomisd	%xmm1, %xmm0	# D.6725, D.6725
	jbe	.L61	#,
	.loc 1 195 0
	movss	-20(%rbp), %xmm3	# denom, D.6725
	cvtps2pd	%xmm3, %xmm3	# D.6725, D.6725
	movsd	%xmm3, -56(%rbp)	# D.6725, %sfp
	movl	-28(%rbp), %eax	# x, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp117
	addq	%rdx, %rax	# D.6722, D.6723
	movss	(%rax), %xmm0	# *_33, D.6724
	subss	-24(%rbp), %xmm0	# max, D.6724
	unpcklps	%xmm0, %xmm0	# D.6724, D.6724
	cvtps2pd	%xmm0, %xmm0	# D.6724, D.6725
	call	exp	#
	addsd	-56(%rbp), %xmm0	# %sfp, D.6725
	unpcklpd	%xmm0, %xmm0	# D.6725
	cvtpd2ps	%xmm0, %xmm4	# D.6725, tmp131
	movss	%xmm4, -20(%rbp)	# tmp131, denom
.L61:
	.loc 1 193 0
	addl	$1, -28(%rbp)	#, x
.L60:
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp118
	cmpl	-44(%rbp), %eax	# n, tmp118
	jl	.L63	#,
	.loc 1 196 0 is_stmt 1
	movl	$0, -28(%rbp)	#, x
	jmp	.L64	#
.L68:
	.loc 1 197 0
	movl	-28(%rbp), %eax	# x, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp120
	addq	%rdx, %rax	# D.6722, D.6723
	movss	(%rax), %xmm0	# *_44, D.6724
	unpcklps	%xmm0, %xmm0	# D.6724, D.6724
	cvtps2pd	%xmm0, %xmm0	# D.6724, D.6725
	movss	-24(%rbp), %xmm1	# max, D.6725
	cvtps2pd	%xmm1, %xmm1	# D.6725, D.6725
	movsd	.LC14(%rip), %xmm2	#, tmp121
	subsd	%xmm2, %xmm1	# tmp121, D.6725
	ucomisd	%xmm1, %xmm0	# D.6725, D.6725
	jbe	.L72	#,
	.loc 1 198 0
	movl	-28(%rbp), %eax	# x, tmp122
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp123
	leaq	(%rdx,%rax), %rbx	#, D.6723
	movl	-28(%rbp), %eax	# x, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp125
	addq	%rdx, %rax	# D.6722, D.6723
	movss	(%rax), %xmm0	# *_54, D.6724
	subss	-24(%rbp), %xmm0	# max, D.6724
	unpcklps	%xmm0, %xmm0	# D.6724, D.6724
	cvtps2pd	%xmm0, %xmm0	# D.6724, D.6725
	call	exp	#
	movss	-20(%rbp), %xmm1	# denom, D.6725
	cvtps2pd	%xmm1, %xmm1	# D.6725, D.6725
	divsd	%xmm1, %xmm0	# D.6725, D.6725
	unpcklpd	%xmm0, %xmm0	# D.6725
	cvtpd2ps	%xmm0, %xmm0	# D.6725, D.6724
	movss	%xmm0, (%rbx)	# D.6724, *_51
	jmp	.L67	#
.L72:
	.loc 1 200 0
	movl	-28(%rbp), %eax	# x, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6722
	movq	-40(%rbp), %rax	# vec, tmp127
	addq	%rax, %rdx	# tmp127, D.6723
	movl	.LC0(%rip), %eax	#, tmp128
	movl	%eax, (%rdx)	# tmp128, *_64
.L67:
	.loc 1 196 0
	addl	$1, -28(%rbp)	#, x
.L64:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp129
	cmpl	-44(%rbp), %eax	# n, tmp129
	jl	.L68	#,
	.loc 1 201 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	LogNorm, .-LogNorm
	.globl	Logp_cvec
	.type	Logp_cvec, @function
Logp_cvec:
.LFB10:
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# cvec, cvec
	movl	%esi, -44(%rbp)	# n, n
	movq	%rdx, -56(%rbp)	# alpha, alpha
	.loc 1 223 0
	movl	.LC0(%rip), %eax	#, tmp121
	movl	%eax, -20(%rbp)	# tmp121, lnp
	movl	-20(%rbp), %eax	# lnp, tmp122
	movl	%eax, -8(%rbp)	# tmp122, sum3
	movl	-8(%rbp), %eax	# sum3, tmp123
	movl	%eax, -12(%rbp)	# tmp123, sum2
	movl	-12(%rbp), %eax	# sum2, tmp124
	movl	%eax, -16(%rbp)	# tmp124, sum1
	.loc 1 224 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L74	#
.L75:
	.loc 1 226 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-40(%rbp), %rax	# cvec, tmp126
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm1	# *_15, D.6728
	movl	-4(%rbp), %eax	# x, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-56(%rbp), %rax	# alpha, tmp128
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_20, D.6728
	addss	%xmm1, %xmm0	# D.6728, D.6728
	movss	-16(%rbp), %xmm1	# sum1, tmp130
	addss	%xmm1, %xmm0	# tmp130, tmp129
	movss	%xmm0, -16(%rbp)	# tmp129, sum1
	.loc 1 227 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-56(%rbp), %rax	# alpha, tmp132
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_26, D.6728
	movss	-12(%rbp), %xmm1	# sum2, tmp134
	addss	%xmm1, %xmm0	# tmp134, tmp133
	movss	%xmm0, -12(%rbp)	# tmp133, sum2
	.loc 1 228 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-40(%rbp), %rax	# cvec, tmp136
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_31, D.6728
	movss	-8(%rbp), %xmm1	# sum3, tmp138
	addss	%xmm1, %xmm0	# tmp138, tmp137
	movss	%xmm0, -8(%rbp)	# tmp137, sum3
	.loc 1 229 0 discriminator 2
	movss	-20(%rbp), %xmm5	# lnp, D.6729
	cvtps2pd	%xmm5, %xmm5	# D.6729, D.6729
	movsd	%xmm5, -64(%rbp)	# D.6729, %sfp
	movl	-4(%rbp), %eax	# x, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-56(%rbp), %rax	# alpha, tmp140
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm1	# *_37, D.6728
	movl	-4(%rbp), %eax	# x, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-40(%rbp), %rax	# cvec, tmp142
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_41, D.6728
	addss	%xmm1, %xmm0	# D.6728, D.6728
	unpcklps	%xmm0, %xmm0	# D.6728, D.6728
	cvtps2pd	%xmm0, %xmm0	# D.6728, D.6729
	call	Gammln	#
	addsd	-64(%rbp), %xmm0	# %sfp, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm6	# D.6729, tmp152
	movss	%xmm6, -20(%rbp)	# tmp152, lnp
	.loc 1 230 0 discriminator 2
	movss	-20(%rbp), %xmm2	# lnp, D.6729
	cvtps2pd	%xmm2, %xmm2	# D.6729, D.6729
	movsd	%xmm2, -64(%rbp)	# D.6729, %sfp
	movl	-4(%rbp), %eax	# x, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-40(%rbp), %rax	# cvec, tmp144
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_51, D.6728
	unpcklps	%xmm0, %xmm0	# D.6728, D.6728
	cvtps2pd	%xmm0, %xmm0	# D.6728, D.6729
	movsd	.LC10(%rip), %xmm1	#, tmp145
	addsd	%xmm1, %xmm0	# tmp145, D.6729
	call	Gammln	#
	movsd	-64(%rbp), %xmm2	# %sfp, D.6729
	subsd	%xmm0, %xmm2	# D.6729, D.6729
	movapd	%xmm2, %xmm0	# D.6729, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm7	# D.6729, tmp155
	movss	%xmm7, -20(%rbp)	# tmp155, lnp
	.loc 1 231 0 discriminator 2
	movss	-20(%rbp), %xmm3	# lnp, D.6729
	cvtps2pd	%xmm3, %xmm3	# D.6729, D.6729
	movsd	%xmm3, -64(%rbp)	# D.6729, %sfp
	movl	-4(%rbp), %eax	# x, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6726
	movq	-56(%rbp), %rax	# alpha, tmp147
	addq	%rdx, %rax	# D.6726, D.6727
	movss	(%rax), %xmm0	# *_61, D.6728
	unpcklps	%xmm0, %xmm0	# D.6728, D.6728
	cvtps2pd	%xmm0, %xmm0	# D.6728, D.6729
	call	Gammln	#
	movsd	-64(%rbp), %xmm3	# %sfp, D.6729
	subsd	%xmm0, %xmm3	# D.6729, D.6729
	movapd	%xmm3, %xmm0	# D.6729, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm5	# D.6729, tmp158
	movss	%xmm5, -20(%rbp)	# tmp158, lnp
	.loc 1 224 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L74:
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp148
	cmpl	-44(%rbp), %eax	# n, tmp148
	jl	.L75	#,
	.loc 1 233 0 is_stmt 1
	movss	-20(%rbp), %xmm4	# lnp, D.6729
	cvtps2pd	%xmm4, %xmm4	# D.6729, D.6729
	movsd	%xmm4, -64(%rbp)	# D.6729, %sfp
	movss	-16(%rbp), %xmm0	# sum1, D.6729
	cvtps2pd	%xmm0, %xmm0	# D.6729, D.6729
	call	Gammln	#
	movsd	-64(%rbp), %xmm4	# %sfp, D.6729
	subsd	%xmm0, %xmm4	# D.6729, D.6729
	movapd	%xmm4, %xmm0	# D.6729, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm6	# D.6729, tmp161
	movss	%xmm6, -20(%rbp)	# tmp161, lnp
	.loc 1 234 0
	movss	-20(%rbp), %xmm7	# lnp, D.6729
	cvtps2pd	%xmm7, %xmm7	# D.6729, D.6729
	movsd	%xmm7, -64(%rbp)	# D.6729, %sfp
	movss	-12(%rbp), %xmm0	# sum2, D.6729
	cvtps2pd	%xmm0, %xmm0	# D.6729, D.6729
	call	Gammln	#
	addsd	-64(%rbp), %xmm0	# %sfp, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm5	# D.6729, tmp163
	movss	%xmm5, -20(%rbp)	# tmp163, lnp
	.loc 1 235 0
	movss	-20(%rbp), %xmm6	# lnp, D.6729
	cvtps2pd	%xmm6, %xmm6	# D.6729, D.6729
	movsd	%xmm6, -64(%rbp)	# D.6729, %sfp
	movss	-8(%rbp), %xmm0	# sum3, D.6729
	cvtps2pd	%xmm0, %xmm0	# D.6729, D.6729
	movsd	.LC10(%rip), %xmm1	#, tmp149
	addsd	%xmm1, %xmm0	# tmp149, D.6729
	call	Gammln	#
	addsd	-64(%rbp), %xmm0	# %sfp, D.6729
	unpcklpd	%xmm0, %xmm0	# D.6729
	cvtpd2ps	%xmm0, %xmm7	# D.6729, tmp165
	movss	%xmm7, -20(%rbp)	# tmp165, lnp
	.loc 1 236 0
	movl	-20(%rbp), %eax	# lnp, D.6728
	.loc 1 237 0
	movl	%eax, -64(%rbp)	# <retval>, %sfp
	movss	-64(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Logp_cvec, .-Logp_cvec
	.globl	SampleDirichlet
	.type	SampleDirichlet, @function
SampleDirichlet:
.LFB11:
	.loc 1 258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# alpha, alpha
	movl	%esi, -44(%rbp)	# n, n
	movq	%rdx, -56(%rbp)	# p, p
	.loc 1 261 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L78	#
.L79:
	.loc 1 262 0 discriminator 2
	movl	-20(%rbp), %eax	# x, tmp67
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6730
	movq	-56(%rbp), %rax	# p, tmp68
	leaq	(%rdx,%rax), %rbx	#, D.6731
	movl	-20(%rbp), %eax	# x, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6730
	movq	-40(%rbp), %rax	# alpha, tmp70
	addq	%rdx, %rax	# D.6730, D.6731
	movl	(%rax), %eax	# *_11, D.6732
	movl	%eax, -48(%rbp)	# D.6732, %sfp
	movss	-48(%rbp), %xmm0	# %sfp,
	call	SampleGamma	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, D.6732
	movl	%eax, (%rbx)	# D.6732, *_7
	.loc 1 261 0 discriminator 2
	addl	$1, -20(%rbp)	#, x
.L78:
	.loc 1 261 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp71
	cmpl	-44(%rbp), %eax	# n, tmp71
	jl	.L79	#,
	.loc 1 263 0 is_stmt 1
	movl	-44(%rbp), %edx	# n, tmp72
	movq	-56(%rbp), %rax	# p, tmp73
	movl	%edx, %esi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	FNorm	#
	.loc 1 264 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SampleDirichlet, .-SampleDirichlet
	.section	.rodata
	.align 8
.LC20:
	.string	"Invalid argument alpha < 0.0 to SampleGamma()"
	.text
	.globl	SampleGamma
	.type	SampleGamma, @function
SampleGamma:
.LFB12:
	.loc 1 282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movss	%xmm0, -36(%rbp)	# alpha, alpha
	.loc 1 285 0
	movss	-36(%rbp), %xmm0	# alpha, tmp118
	movss	.LC15(%rip), %xmm1	#, tmp119
	ucomiss	%xmm1, %xmm0	# tmp119, tmp118
	jb	.L99	#,
.L86:
	.loc 1 289 0
	movss	-36(%rbp), %xmm0	# alpha, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	addsd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp120
	subsd	%xmm1, %xmm0	# tmp120, D.6734
	call	sqrt	#
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm5	# D.6734, tmp147
	movss	%xmm5, -20(%rbp)	# tmp147, lambda
	.loc 1 290 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm6	# D.6734, tmp148
	movss	%xmm6, -16(%rbp)	# tmp148, U
	.loc 1 291 0
	movss	.LC15(%rip), %xmm0	#, tmp121
	subss	-16(%rbp), %xmm0	# U, D.6733
	movss	-16(%rbp), %xmm1	# U, tmp123
	divss	%xmm0, %xmm1	# D.6733, tmp122
	movaps	%xmm1, %xmm0	# tmp122, tmp122
	movss	%xmm0, -12(%rbp)	# tmp122, V
	.loc 1 292 0
	movss	-36(%rbp), %xmm7	# alpha, D.6734
	cvtps2pd	%xmm7, %xmm7	# D.6734, D.6734
	movsd	%xmm7, -48(%rbp)	# D.6734, %sfp
	movss	.LC15(%rip), %xmm0	#, tmp124
	divss	-20(%rbp), %xmm0	# lambda, D.6733
	unpcklps	%xmm0, %xmm0	# D.6733, D.6733
	cvtps2pd	%xmm0, %xmm1	# D.6733, D.6734
	movss	-12(%rbp), %xmm0	# V, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	call	pow	#
	mulsd	-48(%rbp), %xmm0	# %sfp, D.6734
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm5	# D.6734, tmp151
	movss	%xmm5, -8(%rbp)	# tmp151, X
	.loc 1 293 0
	movss	-36(%rbp), %xmm0	# alpha, tmp125
	subss	-8(%rbp), %xmm0	# X, D.6733
	unpcklps	%xmm0, %xmm0	# D.6733, D.6733
	cvtps2pd	%xmm0, %xmm0	# D.6733, D.6734
	call	exp	#
	movsd	.LC16(%rip), %xmm1	#, tmp126
	mulsd	%xmm1, %xmm0	# tmp126, D.6734
	movsd	%xmm0, -48(%rbp)	# D.6734, %sfp
	movss	-36(%rbp), %xmm0	# alpha, tmp127
	divss	-20(%rbp), %xmm0	# lambda, D.6733
	unpcklps	%xmm0, %xmm0	# D.6733, D.6733
	cvtps2pd	%xmm0, %xmm0	# D.6733, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp128
	addsd	%xmm0, %xmm1	# D.6734, D.6734
	movss	-12(%rbp), %xmm0	# V, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	call	pow	#
	movapd	%xmm0, %xmm3	# D.6734, D.6734
	mulsd	-48(%rbp), %xmm3	# %sfp, D.6734
	movsd	%xmm3, -48(%rbp)	# D.6734, %sfp
	movss	-12(%rbp), %xmm0	# V, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp129
	divsd	%xmm0, %xmm1	# D.6734, D.6734
	movapd	%xmm1, %xmm0	# D.6734, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp130
	addsd	%xmm1, %xmm0	# tmp130, D.6734
	movabsq	$4611686018427387904, %rax	#, tmp131
	movq	%rax, -56(%rbp)	# tmp131, %sfp
	movsd	-56(%rbp), %xmm1	# %sfp,
	call	pow	#
	mulsd	-48(%rbp), %xmm0	# %sfp, D.6734
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm6	# D.6734, tmp156
	movss	%xmm6, -4(%rbp)	# tmp156, W
	.loc 1 294 0
	call	sre_random	#
	movss	-4(%rbp), %xmm1	# W, D.6734
	cvtps2pd	%xmm1, %xmm1	# D.6734, D.6734
	ucomisd	%xmm0, %xmm1	# D.6734, D.6734
	jae	.L95	#,
	.loc 1 296 0
	jmp	.L86	#
.L95:
	.loc 1 295 0
	movl	-8(%rbp), %eax	# X, D.6733
	jmp	.L85	#
.L99:
	.loc 1 298 0
	movss	-36(%rbp), %xmm0	# alpha, tmp132
	xorps	%xmm1, %xmm1	# tmp133
	ucomiss	%xmm1, %xmm0	# tmp133, tmp132
	jbe	.L100	#,
.L94:
	.loc 1 302 0
	call	sre_random	#
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm7	# D.6734, tmp157
	movss	%xmm7, -16(%rbp)	# tmp157, U
	.loc 1 303 0
	movss	-16(%rbp), %xmm1	# U, D.6734
	cvtps2pd	%xmm1, %xmm1	# D.6734, D.6734
	movss	-36(%rbp), %xmm0	# alpha, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC18(%rip), %xmm2	#, tmp134
	divsd	%xmm2, %xmm0	# tmp134, D.6734
	movsd	.LC10(%rip), %xmm2	#, tmp135
	addsd	%xmm2, %xmm0	# tmp135, D.6734
	mulsd	%xmm1, %xmm0	# D.6734, D.6734
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm3	# D.6734, tmp158
	movss	%xmm3, -12(%rbp)	# tmp158, V
	.loc 1 304 0
	movss	-12(%rbp), %xmm0	# V, tmp136
	movss	.LC15(%rip), %xmm1	#, tmp137
	ucomiss	%xmm1, %xmm0	# tmp137, tmp136
	jbe	.L101	#,
	.loc 1 306 0
	movss	.LC15(%rip), %xmm0	#, tmp138
	subss	-12(%rbp), %xmm0	# V, D.6733
	unpcklps	%xmm0, %xmm0	# D.6733, D.6733
	cvtps2pd	%xmm0, %xmm1	# D.6733, D.6734
	movss	-36(%rbp), %xmm0	# alpha, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC18(%rip), %xmm2	#, tmp139
	divsd	%xmm2, %xmm0	# tmp139, D.6734
	addsd	%xmm1, %xmm0	# D.6734, D.6734
	movss	-36(%rbp), %xmm1	# alpha, D.6734
	cvtps2pd	%xmm1, %xmm1	# D.6734, D.6734
	divsd	%xmm1, %xmm0	# D.6734, D.6734
	call	log	#
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm0	# D.6734, D.6733
	movss	.LC19(%rip), %xmm1	#, tmp141
	xorps	%xmm1, %xmm0	# tmp141, tmp140
	movss	%xmm0, -8(%rbp)	# tmp140, X
	.loc 1 307 0
	call	sre_random	#
	movsd	%xmm0, -48(%rbp)	#, %sfp
	movss	-36(%rbp), %xmm0	# alpha, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp142
	movapd	%xmm0, %xmm4	# D.6734, D.6734
	subsd	%xmm1, %xmm4	# tmp142, D.6734
	movapd	%xmm4, %xmm1	# D.6734, D.6734
	movss	-8(%rbp), %xmm0	# X, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	call	pow	#
	ucomisd	-48(%rbp), %xmm0	# %sfp, D.6734
	jae	.L97	#,
	.loc 1 316 0
	jmp	.L94	#
.L97:
	.loc 1 308 0
	movl	-8(%rbp), %eax	# X, D.6733
	jmp	.L85	#
.L101:
	.loc 1 312 0
	movss	-36(%rbp), %xmm0	# alpha, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	movsd	.LC10(%rip), %xmm1	#, tmp143
	divsd	%xmm0, %xmm1	# D.6734, D.6734
	movss	-12(%rbp), %xmm0	# V, D.6734
	cvtps2pd	%xmm0, %xmm0	# D.6734, D.6734
	call	pow	#
	unpcklpd	%xmm0, %xmm0	# D.6734
	cvtpd2ps	%xmm0, %xmm4	# D.6734, tmp160
	movss	%xmm4, -8(%rbp)	# tmp160, X
	.loc 1 313 0
	call	sre_random	#
	movsd	%xmm0, -48(%rbp)	#, %sfp
	movss	-8(%rbp), %xmm1	# X, tmp144
	movss	.LC19(%rip), %xmm0	#, tmp145
	xorps	%xmm1, %xmm0	# tmp144, D.6733
	unpcklps	%xmm0, %xmm0	# D.6733, D.6733
	cvtps2pd	%xmm0, %xmm0	# D.6733, D.6734
	call	exp	#
	ucomisd	-48(%rbp), %xmm0	# %sfp, D.6734
	jae	.L98	#,
	.loc 1 316 0
	jmp	.L94	#
.L98:
	.loc 1 314 0
	movl	-8(%rbp), %eax	# X, D.6733
	jmp	.L85	#
.L100:
	.loc 1 318 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 320 0
	movl	.LC0(%rip), %eax	#, D.6733
.L85:
	.loc 1 321 0
	movl	%eax, -48(%rbp)	# <retval>, %sfp
	movss	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SampleGamma, .-SampleGamma
	.globl	SampleCountvector
	.type	SampleCountvector, @function
SampleCountvector:
.LFB13:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# n, n
	movl	%edx, -32(%rbp)	# c, c
	movq	%rcx, -40(%rbp)	# cvec, cvec
	.loc 1 334 0
	movl	-28(%rbp), %edx	# n, tmp68
	movq	-40(%rbp), %rax	# cvec, tmp69
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	FSet	#
	.loc 1 335 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L103	#
.L104:
	.loc 1 336 0 discriminator 2
	movl	-28(%rbp), %edx	# n, tmp70
	movq	-24(%rbp), %rax	# p, tmp71
	movl	%edx, %esi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	FChoose	#
	movslq	%eax, %rdx	# D.6736, D.6737
	leaq	0(,%rdx,4), %rcx	#, D.6737
	movq	-40(%rbp), %rdx	# cvec, tmp72
	addq	%rcx, %rdx	# D.6737, D.6738
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6737
	movq	-40(%rbp), %rax	# cvec, tmp73
	addq	%rcx, %rax	# D.6737, D.6738
	movss	(%rax), %xmm1	# *_13, D.6739
	movss	.LC15(%rip), %xmm0	#, tmp74
	addss	%xmm1, %xmm0	# D.6739, D.6739
	movss	%xmm0, (%rdx)	# D.6739, *_10
	.loc 1 335 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L103:
	.loc 1 335 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp75
	cmpl	-32(%rbp), %eax	# c, tmp75
	jl	.L104	#,
	.loc 1 337 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	SampleCountvector, .-SampleCountvector
	.globl	P_PvecGivenDirichlet
	.type	P_PvecGivenDirichlet, @function
P_PvecGivenDirichlet:
.LFB14:
	.loc 1 351 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# alpha, alpha
	.loc 1 356 0
	movl	.LC0(%rip), %eax	#, tmp96
	movl	%eax, -8(%rbp)	# tmp96, logp
	movl	-8(%rbp), %eax	# logp, tmp97
	movl	%eax, -12(%rbp)	# tmp97, sum
	.loc 1 357 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L106	#
.L109:
	.loc 1 358 0
	movl	-4(%rbp), %eax	# x, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6740
	movq	-24(%rbp), %rax	# p, tmp99
	addq	%rdx, %rax	# D.6740, D.6741
	movss	(%rax), %xmm0	# *_13, D.6742
	xorps	%xmm1, %xmm1	# tmp100
	ucomiss	%xmm1, %xmm0	# tmp100, D.6742
	jbe	.L107	#,
	.loc 1 360 0
	movss	-8(%rbp), %xmm3	# logp, D.6743
	cvtps2pd	%xmm3, %xmm3	# D.6743, D.6743
	movsd	%xmm3, -48(%rbp)	# D.6743, %sfp
	movl	-4(%rbp), %eax	# x, tmp101
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6740
	movq	-40(%rbp), %rax	# alpha, tmp102
	addq	%rdx, %rax	# D.6740, D.6741
	movss	(%rax), %xmm0	# *_19, D.6742
	unpcklps	%xmm0, %xmm0	# D.6742, D.6742
	cvtps2pd	%xmm0, %xmm0	# D.6742, D.6743
	movsd	.LC10(%rip), %xmm1	#, tmp103
	subsd	%xmm1, %xmm0	# tmp103, D.6743
	movsd	%xmm0, -56(%rbp)	# D.6743, %sfp
	movl	-4(%rbp), %eax	# x, tmp104
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6740
	movq	-24(%rbp), %rax	# p, tmp105
	addq	%rdx, %rax	# D.6740, D.6741
	movss	(%rax), %xmm0	# *_25, D.6742
	unpcklps	%xmm0, %xmm0	# D.6742, D.6742
	cvtps2pd	%xmm0, %xmm0	# D.6742, D.6743
	call	log	#
	mulsd	-56(%rbp), %xmm0	# %sfp, D.6743
	addsd	-48(%rbp), %xmm0	# %sfp, D.6743
	unpcklpd	%xmm0, %xmm0	# D.6743
	cvtpd2ps	%xmm0, %xmm4	# D.6743, tmp116
	movss	%xmm4, -8(%rbp)	# tmp116, logp
	.loc 1 361 0
	movss	-8(%rbp), %xmm2	# logp, D.6743
	cvtps2pd	%xmm2, %xmm2	# D.6743, D.6743
	movsd	%xmm2, -48(%rbp)	# D.6743, %sfp
	movl	-4(%rbp), %eax	# x, tmp106
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6740
	movq	-40(%rbp), %rax	# alpha, tmp107
	addq	%rdx, %rax	# D.6740, D.6741
	movss	(%rax), %xmm0	# *_35, D.6742
	unpcklps	%xmm0, %xmm0	# D.6742, D.6742
	cvtps2pd	%xmm0, %xmm0	# D.6742, D.6743
	call	Gammln	#
	movsd	-48(%rbp), %xmm2	# %sfp, D.6743
	subsd	%xmm0, %xmm2	# D.6743, D.6743
	movapd	%xmm2, %xmm0	# D.6743, D.6743
	unpcklpd	%xmm0, %xmm0	# D.6743
	cvtpd2ps	%xmm0, %xmm5	# D.6743, tmp119
	movss	%xmm5, -8(%rbp)	# tmp119, logp
	.loc 1 362 0
	movl	-4(%rbp), %eax	# x, tmp108
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6740
	movq	-40(%rbp), %rax	# alpha, tmp109
	addq	%rdx, %rax	# D.6740, D.6741
	movss	(%rax), %xmm0	# *_43, D.6742
	movss	-12(%rbp), %xmm1	# sum, tmp111
	addss	%xmm1, %xmm0	# tmp111, tmp110
	movss	%xmm0, -12(%rbp)	# tmp110, sum
.L107:
	.loc 1 357 0
	addl	$1, -4(%rbp)	#, x
.L106:
	.loc 1 357 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp112
	cmpl	-28(%rbp), %eax	# n, tmp112
	jl	.L109	#,
	.loc 1 364 0 is_stmt 1
	movss	-8(%rbp), %xmm6	# logp, D.6743
	cvtps2pd	%xmm6, %xmm6	# D.6743, D.6743
	movsd	%xmm6, -48(%rbp)	# D.6743, %sfp
	movss	-12(%rbp), %xmm0	# sum, D.6743
	cvtps2pd	%xmm0, %xmm0	# D.6743, D.6743
	call	Gammln	#
	addsd	-48(%rbp), %xmm0	# %sfp, D.6743
	unpcklpd	%xmm0, %xmm0	# D.6743
	cvtpd2ps	%xmm0, %xmm7	# D.6743, tmp121
	movss	%xmm7, -8(%rbp)	# tmp121, logp
	.loc 1 365 0
	movl	-8(%rbp), %eax	# logp, D.6742
	.loc 1 366 0
	movl	%eax, -48(%rbp)	# <retval>, %sfp
	movss	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	P_PvecGivenDirichlet, .-P_PvecGivenDirichlet
	.data
	.align 4
	.type	firsttime.6274, @object
	.size	firsttime.6274, 4
firsttime.6274:
	.long	1
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 8
.LC1:
	.long	1693346863
	.long	1073157447
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC5:
	.long	4272768156
	.long	1072049730
	.align 4
.LC6:
	.long	1148846080
	.align 8
.LC7:
	.long	4289417218
	.long	1083179007
	.align 8
.LC9:
	.long	4289417218
	.long	-1064304641
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 4
.LC11:
	.long	1112014848
	.align 8
.LC12:
	.long	3096499622
	.long	1083607751
	.align 4
.LC13:
	.long	4048155338
	.align 8
.LC14:
	.long	0
	.long	1078525952
	.align 4
.LC15:
	.long	1065353216
	.align 8
.LC16:
	.long	0
	.long	1070596096
	.align 8
.LC18:
	.long	2333366121
	.long	1074118410
	.align 16
.LC19:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7c2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0x1
	.long	.LASF61
	.long	.LASF62
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
	.uleb128 0x4
	.byte	0x8
	.long	0x48
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0x2d
	.uleb128 0x5
	.long	.LASF63
	.value	0x1d0
	.byte	0x2
	.byte	0x65
	.long	0x2f8
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x71
	.long	0x42
	.byte	0
	.uleb128 0x7
	.string	"acc"
	.byte	0x2
	.byte	0x72
	.long	0x42
	.byte	0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x73
	.long	0x42
	.byte	0x10
	.uleb128 0x7
	.string	"rf"
	.byte	0x2
	.byte	0x74
	.long	0x42
	.byte	0x18
	.uleb128 0x7
	.string	"cs"
	.byte	0x2
	.byte	0x75
	.long	0x42
	.byte	0x20
	.uleb128 0x7
	.string	"ca"
	.byte	0x2
	.byte	0x76
	.long	0x42
	.byte	0x28
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x77
	.long	0x42
	.byte	0x30
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x78
	.long	0x3b
	.byte	0x38
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x79
	.long	0x42
	.byte	0x40
	.uleb128 0x7
	.string	"map"
	.byte	0x2
	.byte	0x7a
	.long	0x87
	.byte	0x48
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x7b
	.long	0x3b
	.byte	0x50
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x86
	.long	0x87
	.byte	0x58
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x87
	.long	0x87
	.byte	0x60
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x88
	.long	0x87
	.byte	0x68
	.uleb128 0x7
	.string	"ga1"
	.byte	0x2
	.byte	0x90
	.long	0x2d
	.byte	0x70
	.uleb128 0x7
	.string	"ga2"
	.byte	0x2
	.byte	0x90
	.long	0x2d
	.byte	0x74
	.uleb128 0x7
	.string	"tc1"
	.byte	0x2
	.byte	0x91
	.long	0x2d
	.byte	0x78
	.uleb128 0x7
	.string	"tc2"
	.byte	0x2
	.byte	0x91
	.long	0x2d
	.byte	0x7c
	.uleb128 0x7
	.string	"nc1"
	.byte	0x2
	.byte	0x92
	.long	0x2d
	.byte	0x80
	.uleb128 0x7
	.string	"nc2"
	.byte	0x2
	.byte	0x92
	.long	0x2d
	.byte	0x84
	.uleb128 0x7
	.string	"M"
	.byte	0x2
	.byte	0x9b
	.long	0x3b
	.byte	0x88
	.uleb128 0x7
	.string	"t"
	.byte	0x2
	.byte	0x9c
	.long	0x2f8
	.byte	0x90
	.uleb128 0x7
	.string	"mat"
	.byte	0x2
	.byte	0x9d
	.long	0x2f8
	.byte	0x98
	.uleb128 0x7
	.string	"ins"
	.byte	0x2
	.byte	0x9e
	.long	0x2f8
	.byte	0xa0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x9f
	.long	0x2d
	.byte	0xa8
	.uleb128 0x7
	.string	"xt"
	.byte	0x2
	.byte	0xa8
	.long	0x2fe
	.byte	0xac
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0xa9
	.long	0x9b
	.byte	0xd0
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xaa
	.long	0x9b
	.byte	0xd8
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0xae
	.long	0x314
	.byte	0xe0
	.uleb128 0x8
	.string	"p1"
	.byte	0x2
	.byte	0xaf
	.long	0x2d
	.value	0x130
	.uleb128 0x8
	.string	"tsc"
	.byte	0x2
	.byte	0xc5
	.long	0x324
	.value	0x138
	.uleb128 0x8
	.string	"msc"
	.byte	0x2
	.byte	0xc6
	.long	0x324
	.value	0x140
	.uleb128 0x8
	.string	"isc"
	.byte	0x2
	.byte	0xc7
	.long	0x324
	.value	0x148
	.uleb128 0x8
	.string	"xsc"
	.byte	0x2
	.byte	0xc8
	.long	0x32a
	.value	0x150
	.uleb128 0x8
	.string	"bsc"
	.byte	0x2
	.byte	0xc9
	.long	0x87
	.value	0x170
	.uleb128 0x8
	.string	"esc"
	.byte	0x2
	.byte	0xca
	.long	0x87
	.value	0x178
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x180
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x188
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x190
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x198
	.uleb128 0x9
	.long	.LASF29
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x1a0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x2
	.byte	0xd6
	.long	0x324
	.value	0x1a8
	.uleb128 0x9
	.long	.LASF31
	.byte	0x2
	.byte	0xd7
	.long	0x324
	.value	0x1b0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x2
	.byte	0xd8
	.long	0x3b
	.value	0x1b8
	.uleb128 0x9
	.long	.LASF33
	.byte	0x2
	.byte	0xd9
	.long	0x3b
	.value	0x1bc
	.uleb128 0x8
	.string	"mu"
	.byte	0x2
	.byte	0xde
	.long	0x2d
	.value	0x1c0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x2
	.byte	0xdf
	.long	0x2d
	.value	0x1c4
	.uleb128 0x9
	.long	.LASF35
	.byte	0x2
	.byte	0xe1
	.long	0x3b
	.value	0x1c8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x9b
	.uleb128 0xa
	.long	0x2d
	.long	0x314
	.uleb128 0xb
	.long	0x80
	.byte	0x3
	.uleb128 0xb
	.long	0x80
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x2d
	.long	0x324
	.uleb128 0xb
	.long	0x80
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x87
	.uleb128 0xa
	.long	0x3b
	.long	0x340
	.uleb128 0xb
	.long	0x80
	.byte	0x3
	.uleb128 0xb
	.long	0x80
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xa1
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0x2c
	.long	0x3b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x382
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x2c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x2c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0x38
	.long	0x2d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bf
	.uleb128 0xd
	.string	"sc"
	.byte	0x1
	.byte	0x38
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.byte	0x38
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.byte	0x45
	.long	0x2d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ee
	.uleb128 0xd
	.string	"sc"
	.byte	0x1
	.byte	0x45
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x59
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x447
	.uleb128 0xd
	.string	"hmm"
	.byte	0x1
	.byte	0x59
	.long	0x340
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"sc"
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.byte	0x5b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0x5c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x483
	.uleb128 0xd
	.string	"p1"
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.string	"p2"
	.byte	0x1
	.byte	0x73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.byte	0x95
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ad
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x97
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c
	.uleb128 0xd
	.string	"p1"
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xd
	.string	"p2"
	.byte	0x1
	.byte	0x9d
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF44
	.byte	0x1
	.byte	0x9f
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.byte	0xa4
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	firsttime.6274
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.byte	0xb9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x56c
	.uleb128 0xd
	.string	"vec"
	.byte	0x1
	.byte	0xb9
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0xb9
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0xbb
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"max"
	.byte	0x1
	.byte	0xbc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.byte	0xbd
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.byte	0xd9
	.long	0x2d
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fb
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.byte	0xd9
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.byte	0xd9
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.byte	0xd9
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"lnp"
	.byte	0x1
	.byte	0xdb
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0xdc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"x"
	.byte	0x1
	.byte	0xdd
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.value	0x101
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x651
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0x101
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x101
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.value	0x101
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x103
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.value	0x119
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c6
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0x119
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"U"
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"V"
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"X"
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"W"
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.value	0x11b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF56
	.byte	0x1
	.value	0x14a
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x728
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.value	0x14a
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x14a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.value	0x14a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0x14a
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x14c
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.value	0x15e
	.long	0x2d
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x79f
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.value	0x15e
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.value	0x15e
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0x15e
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"sum"
	.byte	0x1
	.value	0x160
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.value	0x161
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x162
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	0x3b
	.long	0x7b0
	.uleb128 0x1a
	.long	0x80
	.value	0x4e1f
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x93
	.long	0x79f
	.uleb128 0x9
	.byte	0x3
	.quad	ilogsum_lookup
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x15
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
.LASF28:
	.string	"bsc_mem"
.LASF37:
	.string	"Score2Prob"
.LASF44:
	.string	"diff"
.LASF43:
	.string	"ILogsum"
.LASF34:
	.string	"lambda"
.LASF8:
	.string	"short int"
.LASF59:
	.string	"ilogsum_lookup"
.LASF10:
	.string	"sizetype"
.LASF19:
	.string	"tpri"
.LASF23:
	.string	"begin"
.LASF54:
	.string	"SampleDirichlet"
.LASF48:
	.string	"cvec"
.LASF17:
	.string	"ctime"
.LASF30:
	.string	"dnam"
.LASF39:
	.string	"PValue"
.LASF58:
	.string	"logp"
.LASF49:
	.string	"alpha"
.LASF16:
	.string	"nseq"
.LASF47:
	.string	"Logp_cvec"
.LASF25:
	.string	"tsc_mem"
.LASF26:
	.string	"msc_mem"
.LASF55:
	.string	"SampleGamma"
.LASF0:
	.string	"float"
.LASF27:
	.string	"isc_mem"
.LASF62:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF12:
	.string	"long long unsigned int"
.LASF40:
	.string	"pval"
.LASF9:
	.string	"long int"
.LASF64:
	.string	"init_ilogsum"
.LASF32:
	.string	"dna2"
.LASF4:
	.string	"unsigned char"
.LASF63:
	.string	"plan7_s"
.LASF41:
	.string	"pval2"
.LASF60:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF7:
	.string	"signed char"
.LASF35:
	.string	"flags"
.LASF53:
	.string	"LogNorm"
.LASF36:
	.string	"Prob2Score"
.LASF6:
	.string	"unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF46:
	.string	"denom"
.LASF38:
	.string	"Scorify"
.LASF2:
	.string	"char"
.LASF29:
	.string	"esc_mem"
.LASF45:
	.string	"firsttime"
.LASF50:
	.string	"sum1"
.LASF51:
	.string	"sum2"
.LASF52:
	.string	"sum3"
.LASF57:
	.string	"P_PvecGivenDirichlet"
.LASF56:
	.string	"SampleCountvector"
.LASF3:
	.string	"long unsigned int"
.LASF1:
	.string	"double"
.LASF21:
	.string	"ipri"
.LASF22:
	.string	"tbd1"
.LASF20:
	.string	"mpri"
.LASF18:
	.string	"checksum"
.LASF15:
	.string	"comlog"
.LASF13:
	.string	"name"
.LASF24:
	.string	"null"
.LASF31:
	.string	"dnai"
.LASF61:
	.string	"mathsupport.c"
.LASF33:
	.string	"dna4"
.LASF42:
	.string	"LogSum"
.LASF14:
	.string	"desc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
