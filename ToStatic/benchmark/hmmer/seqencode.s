	.file	"seqencode.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 seqencode.c -mtune=generic -march=x86-64 -g
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
	.globl	seqcmp
	.type	seqcmp, @function
seqcmp:
.LFB2:
	.file 1 "seqencode.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	movl	%edx, -36(%rbp)	# allow, allow
	.loc 1 30 0
	movl	$0, -4(%rbp)	#, mmat
	.loc 1 32 0
	jmp	.L2	#
.L5:
	.loc 1 34 0
	movq	-24(%rbp), %rax	# s1, tmp69
	movzbl	(%rax), %edx	# *s1_1, D.5852
	movq	-32(%rbp), %rax	# s2, tmp70
	movzbl	(%rax), %eax	# *s2_3, D.5852
	andl	%eax, %edx	# D.5852, D.5853
	movq	-32(%rbp), %rax	# s2, tmp71
	movzbl	(%rax), %eax	# *s2_3, D.5852
	cmpb	%al, %dl	# D.5852, D.5853
	je	.L3	#,
	.loc 1 35 0
	addl	$1, -4(%rbp)	#, mmat
.L3:
	.loc 1 36 0
	addq	$1, -24(%rbp)	#, s1
	.loc 1 37 0
	addq	$1, -32(%rbp)	#, s2
.L2:
	.loc 1 32 0 discriminator 1
	movq	-24(%rbp), %rax	# s1, tmp72
	movzbl	(%rax), %eax	# *s1_1, D.5852
	testb	%al, %al	# D.5852
	je	.L4	#,
	.loc 1 32 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# s2, tmp73
	movzbl	(%rax), %eax	# *s2_3, D.5852
	testb	%al, %al	# D.5852
	je	.L4	#,
	.loc 1 32 0 discriminator 1
	movl	-4(%rbp), %eax	# mmat, tmp74
	cmpl	-36(%rbp), %eax	# allow, tmp74
	jle	.L5	#,
.L4:
	.loc 1 39 0 is_stmt 1
	jmp	.L6	#
.L8:
	.loc 1 40 0
	addl	$1, -4(%rbp)	#, mmat
.L6:
	.loc 1 39 0 discriminator 1
	movq	-24(%rbp), %rax	# s1, s1.0
	leaq	1(%rax), %rdx	#, tmp75
	movq	%rdx, -24(%rbp)	# tmp75, s1
	movzbl	(%rax), %eax	# *s1.0_20, D.5852
	testb	%al, %al	# D.5852
	je	.L7	#,
	.loc 1 39 0 is_stmt 0 discriminator 2
	movl	-4(%rbp), %eax	# mmat, tmp76
	cmpl	-36(%rbp), %eax	# allow, tmp76
	jle	.L8	#,
.L7:
	.loc 1 41 0 is_stmt 1
	movl	-4(%rbp), %eax	# mmat, D.5854
	.loc 1 42 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	seqcmp, .-seqcmp
	.globl	seqncmp
	.type	seqncmp, @function
seqncmp:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	movl	%edx, -36(%rbp)	# n, n
	movl	%ecx, -40(%rbp)	# allow, allow
	.loc 1 49 0
	movl	$0, -4(%rbp)	#, mmat
	.loc 1 51 0
	jmp	.L11	#
.L15:
	.loc 1 54 0
	movq	-24(%rbp), %rax	# s1, tmp70
	movzbl	(%rax), %edx	# *s1_1, D.5856
	movq	-32(%rbp), %rax	# s2, tmp71
	movzbl	(%rax), %eax	# *s2_3, D.5856
	andl	%eax, %edx	# D.5856, D.5857
	movq	-32(%rbp), %rax	# s2, tmp72
	movzbl	(%rax), %eax	# *s2_3, D.5856
	cmpb	%al, %dl	# D.5856, D.5857
	je	.L12	#,
	.loc 1 54 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, mmat
	movl	-4(%rbp), %eax	# mmat, tmp73
	cmpl	-40(%rbp), %eax	# allow, tmp73
	jle	.L12	#,
	.loc 1 56 0 is_stmt 1
	movl	-4(%rbp), %eax	# mmat, D.5855
	jmp	.L13	#
.L12:
	.loc 1 57 0
	addq	$1, -24(%rbp)	#, s1
	.loc 1 58 0
	addq	$1, -32(%rbp)	#, s2
.L11:
	.loc 1 51 0 discriminator 1
	movq	-32(%rbp), %rax	# s2, tmp74
	movzbl	(%rax), %eax	# *s2_3, D.5856
	testb	%al, %al	# D.5856
	je	.L14	#,
	.loc 1 52 0 discriminator 2
	movl	-36(%rbp), %eax	# n, n.1
	leal	-1(%rax), %edx	#, tmp75
	movl	%edx, -36(%rbp)	# tmp75, n
	.loc 1 51 0 discriminator 2
	testl	%eax, %eax	# n.1
	jne	.L15	#,
.L14:
	.loc 1 60 0
	jmp	.L16	#
.L18:
	.loc 1 61 0
	addl	$1, -4(%rbp)	#, mmat
.L16:
	.loc 1 60 0 discriminator 1
	movl	-36(%rbp), %eax	# n, n.2
	leal	-1(%rax), %edx	#, tmp76
	movl	%edx, -36(%rbp)	# tmp76, n
	testl	%eax, %eax	# n.2
	je	.L17	#,
	.loc 1 60 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# s1, s1.3
	leaq	1(%rax), %rdx	#, tmp77
	movq	%rdx, -24(%rbp)	# tmp77, s1
	movzbl	(%rax), %eax	# *s1.3_29, D.5856
	testb	%al, %al	# D.5856
	je	.L17	#,
	.loc 1 60 0 discriminator 1
	movl	-4(%rbp), %eax	# mmat, tmp78
	cmpl	-40(%rbp), %eax	# allow, tmp78
	jle	.L18	#,
.L17:
	.loc 1 62 0 is_stmt 1
	movl	-4(%rbp), %eax	# mmat, D.5855
.L13:
	.loc 1 63 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	seqncmp, .-seqncmp
	.globl	seqencode
	.type	seqencode, @function
seqencode:
.LFB4:
	.loc 1 72 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# codeseq, codeseq
	movq	%rsi, -32(%rbp)	# str, str
	.loc 1 76 0
	movq	-24(%rbp), %rax	# codeseq, tmp78
	movq	%rax, -8(%rbp)	# tmp78, ptr
	.loc 1 77 0
	jmp	.L20	#
.L27:
	.loc 1 79 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_9, D.5861
	movq	-32(%rbp), %rax	# str, tmp79
	movzbl	(%rax), %eax	# *str_1, D.5859
	movsbq	%al, %rax	# D.5859, D.5862
	addq	%rax, %rax	# D.5862
	addq	%rdx, %rax	# D.5861, D.5861
	movzwl	(%rax), %eax	# *_14, D.5863
	movzwl	%ax, %eax	# D.5863, D.5858
	andl	$512, %eax	#, D.5858
	testl	%eax, %eax	# D.5858
	je	.L21	#,
	.loc 1 79 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# str, tmp80
	movzbl	(%rax), %eax	# *str_1, D.5859
	movsbl	%al, %eax	# D.5859, D.5858
	movl	%eax, %edi	# D.5858,
	call	toupper	#
	movl	%eax, %edx	# D.5858, D.5859
	movq	-32(%rbp), %rax	# str, tmp81
	movb	%dl, (%rax)	# D.5859, *str_1
.L21:
	.loc 1 80 0 is_stmt 1
	movl	$0, -12(%rbp)	#, idx
	jmp	.L22	#
.L24:
	.loc 1 80 0 is_stmt 0 discriminator 1
	addl	$1, -12(%rbp)	#, idx
.L22:
	movq	-32(%rbp), %rax	# str, tmp82
	movzbl	(%rax), %edx	# *str_1, D.5859
	movl	-12(%rbp), %eax	# idx, tmp84
	cltq
	movzbl	iupac(,%rax,4), %eax	# iupac[idx_3].sym, D.5859
	cmpb	%al, %dl	# D.5859, D.5859
	je	.L23	#,
	.loc 1 80 0 discriminator 2
	cmpl	$17, -12(%rbp)	#, idx
	jle	.L24	#,
.L23:
	.loc 1 82 0 is_stmt 1
	cmpl	$17, -12(%rbp)	#, idx
	jle	.L25	#,
	.loc 1 84 0
	movq	-8(%rbp), %rax	# ptr, tmp85
	movb	$0, (%rax)	#, *ptr_2
	.loc 1 85 0
	movl	$0, %eax	#, D.5858
	jmp	.L26	#
.L25:
	.loc 1 88 0
	movl	-12(%rbp), %eax	# idx, tmp87
	cltq
	movzbl	iupac+2(,%rax,4), %edx	# iupac[idx_3].code, D.5859
	movq	-8(%rbp), %rax	# ptr, tmp88
	movb	%dl, (%rax)	# D.5859, *ptr_2
	.loc 1 89 0
	addq	$1, -8(%rbp)	#, ptr
	.loc 1 90 0
	addq	$1, -32(%rbp)	#, str
.L20:
	.loc 1 77 0 discriminator 1
	movq	-32(%rbp), %rax	# str, tmp89
	movzbl	(%rax), %eax	# *str_1, D.5859
	testb	%al, %al	# D.5859
	jne	.L27	#,
	.loc 1 92 0
	movq	-8(%rbp), %rax	# ptr, tmp90
	movb	$0, (%rax)	#, *ptr_2
	.loc 1 93 0
	movl	$1, %eax	#, D.5858
.L26:
	.loc 1 94 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	seqencode, .-seqencode
	.globl	coded_revcomp
	.type	coded_revcomp, @function
coded_revcomp:
.LFB5:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# comp, comp
	movq	%rsi, -64(%rbp)	# seq, seq
	.loc 1 105 0
	movq	-64(%rbp), %rax	# seq, tmp67
	movq	%rax, %rdi	# tmp67,
	call	strlen	#
	movq	%rax, -8(%rbp)	# D.5865, bases
	.loc 1 107 0
	movq	-56(%rbp), %rax	# comp, tmp68
	movq	%rax, -24(%rbp)	# tmp68, fwdp
	.loc 1 108 0
	movq	-8(%rbp), %rax	# bases, bases.4
	leaq	-1(%rax), %rdx	#, D.5866
	movq	-64(%rbp), %rax	# seq, tmp72
	addq	%rdx, %rax	# D.5866, tmp71
	movq	%rax, -32(%rbp)	# tmp71, bckp
	.loc 1 109 0
	movq	$0, -16(%rbp)	#, pos
	jmp	.L29	#
.L35:
	.loc 1 111 0
	movl	$0, -36(%rbp)	#, idx
	jmp	.L30	#
.L32:
	.loc 1 111 0 is_stmt 0 discriminator 1
	addl	$1, -36(%rbp)	#, idx
.L30:
	movq	-32(%rbp), %rax	# bckp, tmp73
	movzbl	(%rax), %edx	# *bckp_1, D.5867
	movl	-36(%rbp), %eax	# idx, tmp75
	cltq
	movzbl	iupac+2(,%rax,4), %eax	# iupac[idx_3].code, D.5867
	cmpb	%al, %dl	# D.5867, D.5867
	je	.L31	#,
	.loc 1 111 0 discriminator 2
	cmpl	$16, -36(%rbp)	#, idx
	jle	.L32	#,
.L31:
	.loc 1 112 0 is_stmt 1
	cmpl	$17, -36(%rbp)	#, idx
	jle	.L33	#,
	.loc 1 114 0
	movq	-24(%rbp), %rax	# fwdp, tmp76
	movb	$0, (%rax)	#, *fwdp_2
	.loc 1 115 0
	movl	$0, %eax	#, D.5864
	jmp	.L34	#
.L33:
	.loc 1 118 0
	movl	-36(%rbp), %eax	# idx, tmp78
	cltq
	movzbl	iupac+3(,%rax,4), %edx	# iupac[idx_3].comp, D.5867
	movq	-24(%rbp), %rax	# fwdp, tmp79
	movb	%dl, (%rax)	# D.5867, *fwdp_2
	.loc 1 119 0
	addq	$1, -24(%rbp)	#, fwdp
	.loc 1 120 0
	subq	$1, -32(%rbp)	#, bckp
	.loc 1 109 0
	addq	$1, -16(%rbp)	#, pos
.L29:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# pos, tmp80
	cmpq	-8(%rbp), %rax	# bases, tmp80
	jl	.L35	#,
	.loc 1 122 0 is_stmt 1
	movq	-24(%rbp), %rax	# fwdp, tmp81
	movb	$0, (%rax)	#, *fwdp_2
	.loc 1 123 0
	movl	$1, %eax	#, D.5864
.L34:
	.loc 1 124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	coded_revcomp, .-coded_revcomp
	.globl	seqdecode
	.type	seqdecode, @function
seqdecode:
.LFB6:
	.loc 1 128 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# codeseq, codeseq
	.loc 1 132 0
	movl	$0, -4(%rbp)	#, pos
	.loc 1 133 0
	jmp	.L37	#
.L43:
	.loc 1 135 0
	movl	$0, -8(%rbp)	#, idx
	jmp	.L38	#
.L40:
	.loc 1 135 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, idx
.L38:
	movq	-32(%rbp), %rax	# codeseq, tmp71
	movzbl	(%rax), %edx	# *codeseq_1, D.5869
	movl	-8(%rbp), %eax	# idx, tmp73
	cltq
	movzbl	iupac+2(,%rax,4), %eax	# iupac[idx_2].code, D.5869
	cmpb	%al, %dl	# D.5869, D.5869
	je	.L39	#,
	.loc 1 135 0 discriminator 2
	cmpl	$16, -8(%rbp)	#, idx
	jle	.L40	#,
.L39:
	.loc 1 137 0 is_stmt 1
	cmpl	$17, -8(%rbp)	#, idx
	jle	.L41	#,
	.loc 1 139 0
	movl	-4(%rbp), %eax	# pos, tmp74
	movslq	%eax, %rdx	# tmp74, D.5870
	movq	-24(%rbp), %rax	# str, tmp75
	addq	%rdx, %rax	# D.5870, D.5871
	movb	$88, (%rax)	#, *_14
	.loc 1 140 0
	movl	$0, %eax	#, D.5868
	jmp	.L42	#
.L41:
	.loc 1 143 0
	movl	-4(%rbp), %eax	# pos, tmp76
	movslq	%eax, %rdx	# tmp76, D.5870
	movq	-24(%rbp), %rax	# str, tmp77
	addq	%rax, %rdx	# tmp77, D.5871
	movl	-8(%rbp), %eax	# idx, tmp79
	cltq
	movzbl	iupac(,%rax,4), %eax	# iupac[idx_2].sym, D.5869
	movb	%al, (%rdx)	# D.5869, *_17
	.loc 1 144 0
	addq	$1, -32(%rbp)	#, codeseq
	.loc 1 145 0
	addl	$1, -4(%rbp)	#, pos
.L37:
	.loc 1 133 0 discriminator 1
	movq	-32(%rbp), %rax	# codeseq, tmp80
	movzbl	(%rax), %eax	# *codeseq_1, D.5869
	testb	%al, %al	# D.5869
	jne	.L43	#,
	.loc 1 147 0
	movl	-4(%rbp), %eax	# pos, tmp81
	movslq	%eax, %rdx	# tmp81, D.5870
	movq	-24(%rbp), %rax	# str, tmp82
	addq	%rdx, %rax	# D.5870, D.5871
	movb	$0, (%rax)	#, *_22
	.loc 1 148 0
	movl	$1, %eax	#, D.5868
.L42:
	.loc 1 149 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	seqdecode, .-seqdecode
	.globl	seqndecode
	.type	seqndecode, @function
seqndecode:
.LFB7:
	.loc 1 156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# str, str
	movq	%rsi, -32(%rbp)	# codeseq, codeseq
	movl	%edx, -36(%rbp)	# n, n
	.loc 1 158 0
	movl	$0, -4(%rbp)	#, pos
	.loc 1 160 0
	jmp	.L45	#
.L51:
	.loc 1 162 0
	movl	$0, -8(%rbp)	#, idx
	jmp	.L46	#
.L48:
	.loc 1 162 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, idx
.L46:
	movq	-32(%rbp), %rax	# codeseq, tmp70
	movzbl	(%rax), %edx	# *codeseq_1, D.5873
	movl	-8(%rbp), %eax	# idx, tmp72
	cltq
	movzbl	iupac+2(,%rax,4), %eax	# iupac[idx_3].code, D.5873
	cmpb	%al, %dl	# D.5873, D.5873
	je	.L47	#,
	.loc 1 162 0 discriminator 2
	cmpl	$16, -8(%rbp)	#, idx
	jle	.L48	#,
.L47:
	.loc 1 163 0 is_stmt 1
	cmpl	$17, -8(%rbp)	#, idx
	jle	.L49	#,
	.loc 1 165 0
	movl	-4(%rbp), %eax	# pos, tmp73
	movslq	%eax, %rdx	# tmp73, D.5874
	movq	-24(%rbp), %rax	# str, tmp74
	addq	%rdx, %rax	# D.5874, D.5875
	movb	$88, (%rax)	#, *_16
	.loc 1 166 0
	movl	$0, %eax	#, D.5872
	jmp	.L50	#
.L49:
	.loc 1 169 0
	movl	-4(%rbp), %eax	# pos, tmp75
	movslq	%eax, %rdx	# tmp75, D.5874
	movq	-24(%rbp), %rax	# str, tmp76
	addq	%rax, %rdx	# tmp76, D.5875
	movl	-8(%rbp), %eax	# idx, tmp78
	cltq
	movzbl	iupac(,%rax,4), %eax	# iupac[idx_3].sym, D.5873
	movb	%al, (%rdx)	# D.5873, *_19
	.loc 1 170 0
	addq	$1, -32(%rbp)	#, codeseq
	.loc 1 171 0
	addl	$1, -4(%rbp)	#, pos
.L45:
	.loc 1 160 0 discriminator 1
	subl	$1, -36(%rbp)	#, n
	cmpl	$0, -36(%rbp)	#, n
	jns	.L51	#,
	.loc 1 173 0
	movl	-4(%rbp), %eax	# pos, tmp79
	movslq	%eax, %rdx	# tmp79, D.5874
	movq	-24(%rbp), %rax	# str, tmp80
	addq	%rdx, %rax	# D.5874, D.5875
	movb	$0, (%rax)	#, *_24
	.loc 1 174 0
	movl	$1, %eax	#, D.5872
.L50:
	.loc 1 175 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	seqndecode, .-seqndecode
.Letext0:
	.file 2 "squid.h"
	.file 3 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x39d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x1
	.long	.LASF41
	.long	.LASF42
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
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x7
	.long	.LASF43
	.byte	0x4
	.byte	0x2
	.byte	0x75
	.long	0x12e
	.uleb128 0x8
	.string	"sym"
	.byte	0x2
	.byte	0x76
	.long	0x72
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0x77
	.long	0x72
	.byte	0x1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0x78
	.long	0x72
	.byte	0x2
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.byte	0x79
	.long	0x72
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x1c
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x186
	.uleb128 0xb
	.string	"s1"
	.byte	0x1
	.byte	0x1c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"s2"
	.byte	0x1
	.byte	0x1c
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x1c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x1e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea
	.uleb128 0xb
	.string	"s1"
	.byte	0x1
	.byte	0x2f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"s2"
	.byte	0x1
	.byte	0x2f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x2f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.byte	0x31
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.byte	0x46
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x244
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x46
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.string	"str"
	.byte	0x1
	.byte	0x47
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"ptr"
	.byte	0x1
	.byte	0x49
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"idx"
	.byte	0x1
	.byte	0x4a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.byte	0x62
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0x62
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xb
	.string	"seq"
	.byte	0x1
	.byte	0x62
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.byte	0x64
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.byte	0x65
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.byte	0x65
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.string	"idx"
	.byte	0x1
	.byte	0x66
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x67
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.byte	0x7f
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x324
	.uleb128 0xb
	.string	"str"
	.byte	0x1
	.byte	0x7f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x7f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"idx"
	.byte	0x1
	.byte	0x81
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x82
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0x98
	.long	0x57
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a
	.uleb128 0xb
	.string	"str"
	.byte	0x1
	.byte	0x99
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x9a
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.string	"n"
	.byte	0x1
	.byte	0x9b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xf
	.string	"idx"
	.byte	0x1
	.byte	0x9d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.byte	0x9e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	0xf1
	.long	0x395
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF44
	.byte	0x2
	.byte	0x7b
	.long	0x38a
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LASF32:
	.string	"seqencode"
.LASF25:
	.string	"symcomp"
.LASF35:
	.string	"bases"
.LASF12:
	.string	"_ISdigit"
.LASF18:
	.string	"_IScntrl"
.LASF44:
	.string	"iupac"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"double"
.LASF16:
	.string	"_ISgraph"
.LASF15:
	.string	"_ISprint"
.LASF17:
	.string	"_ISblank"
.LASF39:
	.string	"seqndecode"
.LASF21:
	.string	"float"
.LASF4:
	.string	"signed char"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"comp"
.LASF0:
	.string	"long unsigned int"
.LASF11:
	.string	"_ISalpha"
.LASF28:
	.string	"allow"
.LASF37:
	.string	"fwdp"
.LASF34:
	.string	"coded_revcomp"
.LASF38:
	.string	"seqdecode"
.LASF43:
	.string	"iupactype"
.LASF31:
	.string	"mmat"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"code"
.LASF42:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF24:
	.string	"long long unsigned int"
.LASF20:
	.string	"_ISalnum"
.LASF7:
	.string	"sizetype"
.LASF33:
	.string	"codeseq"
.LASF10:
	.string	"_ISlower"
.LASF23:
	.string	"long long int"
.LASF13:
	.string	"_ISxdigit"
.LASF40:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"_ISpunct"
.LASF29:
	.string	"seqcmp"
.LASF30:
	.string	"seqncmp"
.LASF14:
	.string	"_ISspace"
.LASF41:
	.string	"seqencode.c"
.LASF6:
	.string	"long int"
.LASF36:
	.string	"bckp"
.LASF9:
	.string	"_ISupper"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
