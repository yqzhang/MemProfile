	.file	"alignio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 alignio.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC0:
	.string	"alignio.c"
	.text
	.globl	AllocAlignment
	.type	AllocAlignment, @function
AllocAlignment:
.LFB2:
	.file 1 "alignio.c"
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# nseq, nseq
	movl	%esi, -40(%rbp)	# alen, alen
	movq	%rdx, -48(%rbp)	# ret_aseq, ret_aseq
	movq	%rcx, -56(%rbp)	# ainfo, ainfo
	.loc 1 48 0
	movq	-56(%rbp), %rax	# ainfo, tmp78
	movq	%rax, %rdi	# tmp78,
	call	InitAinfo	#
	.loc 1 50 0
	movl	-36(%rbp), %eax	# nseq, tmp79
	cltq
	salq	$3, %rax	#, D.6839
	movq	%rax, %rdx	# D.6839,
	movl	$50, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp80, aseq
	.loc 1 51 0
	movl	$0, -28(%rbp)	#, idx
	jmp	.L2	#
.L3:
	.loc 1 52 0 discriminator 2
	movl	-28(%rbp), %eax	# idx, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6839
	movq	-24(%rbp), %rax	# aseq, tmp82
	leaq	(%rdx,%rax), %rbx	#, D.6840
	movl	-40(%rbp), %eax	# alen, tmp83
	addl	$1, %eax	#, D.6841
	cltq
	movq	%rax, %rdx	# D.6839,
	movl	$52, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6842, *_11
	.loc 1 51 0 discriminator 2
	addl	$1, -28(%rbp)	#, idx
.L2:
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp84
	cmpl	-36(%rbp), %eax	# nseq, tmp84
	jl	.L3	#,
	.loc 1 54 0 is_stmt 1
	movq	-56(%rbp), %rax	# ainfo, tmp85
	movl	-40(%rbp), %edx	# alen, tmp86
	movl	%edx, 4(%rax)	# tmp86, ainfo_3(D)->alen
	.loc 1 55 0
	movq	-56(%rbp), %rax	# ainfo, tmp87
	movl	-36(%rbp), %edx	# nseq, tmp88
	movl	%edx, 8(%rax)	# tmp88, ainfo_3(D)->nseq
	.loc 1 57 0
	movl	-36(%rbp), %eax	# nseq, tmp89
	cltq
	salq	$2, %rax	#, D.6839
	movq	%rax, %rdx	# D.6839,
	movl	$57, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-56(%rbp), %rdx	# ainfo, tmp90
	movq	%rax, 16(%rdx)	# D.6842, ainfo_3(D)->wgt
	.loc 1 58 0
	movq	-56(%rbp), %rax	# ainfo, tmp91
	movq	16(%rax), %rax	# ainfo_3(D)->wgt, D.6843
	movl	-36(%rbp), %edx	# nseq, tmp92
	movss	.LC1(%rip), %xmm0	#,
	movl	%edx, %esi	# tmp92,
	movq	%rax, %rdi	# D.6843,
	call	FSet	#
	.loc 1 60 0
	movl	-36(%rbp), %eax	# nseq, tmp93
	cltq
	imulq	$360, %rax, %rax	#, D.6839, D.6839
	movq	%rax, %rdx	# D.6839,
	movl	$60, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-56(%rbp), %rdx	# ainfo, tmp94
	movq	%rax, 40(%rdx)	# D.6842, ainfo_3(D)->sqinfo
	.loc 1 61 0
	movl	$0, -28(%rbp)	#, idx
	jmp	.L4	#
.L5:
	.loc 1 62 0 discriminator 2
	movq	-56(%rbp), %rax	# ainfo, tmp95
	movq	40(%rax), %rdx	# ainfo_3(D)->sqinfo, D.6844
	movl	-28(%rbp), %eax	# idx, tmp96
	cltq
	imulq	$360, %rax, %rax	#, D.6839, D.6839
	addq	%rdx, %rax	# D.6844, D.6844
	movl	$0, (%rax)	#, _28->flags
	.loc 1 61 0 discriminator 2
	addl	$1, -28(%rbp)	#, idx
.L4:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# idx, tmp97
	cmpl	-36(%rbp), %eax	# nseq, tmp97
	jl	.L5	#,
	.loc 1 64 0 is_stmt 1
	movq	-48(%rbp), %rax	# ret_aseq, tmp98
	movq	-24(%rbp), %rdx	# aseq, tmp99
	movq	%rdx, (%rax)	# tmp99, *ret_aseq_30(D)
	.loc 1 65 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	AllocAlignment, .-AllocAlignment
	.globl	InitAinfo
	.type	InitAinfo, @function
InitAinfo:
.LFB3:
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# ainfo, ainfo
	.loc 1 82 0
	movq	-8(%rbp), %rax	# ainfo, tmp62
	movq	$0, 48(%rax)	#, ainfo_1(D)->name
	.loc 1 83 0
	movq	-8(%rbp), %rax	# ainfo, tmp63
	movq	$0, 56(%rax)	#, ainfo_1(D)->desc
	.loc 1 84 0
	movq	-8(%rbp), %rax	# ainfo, tmp64
	movq	$0, 24(%rax)	#, ainfo_1(D)->cs
	.loc 1 85 0
	movq	-8(%rbp), %rax	# ainfo, tmp65
	movq	$0, 32(%rax)	#, ainfo_1(D)->rf
	.loc 1 86 0
	movq	-8(%rbp), %rax	# ainfo, tmp66
	movq	$0, 64(%rax)	#, ainfo_1(D)->acc
	.loc 1 87 0
	movq	-8(%rbp), %rax	# ainfo, tmp67
	movq	$0, 72(%rax)	#, ainfo_1(D)->au
	.loc 1 88 0
	movq	-8(%rbp), %rax	# ainfo, tmp68
	movl	$0, (%rax)	#, ainfo_1(D)->flags
	.loc 1 90 0
	movq	-8(%rbp), %rdx	# ainfo, tmp69
	movl	.LC2(%rip), %eax	#, tmp70
	movl	%eax, 84(%rdx)	# tmp70, ainfo_1(D)->tc2
	movq	-8(%rbp), %rax	# ainfo, tmp71
	movl	84(%rax), %eax	# ainfo_1(D)->tc2, D.6846
	movq	-8(%rbp), %rdx	# ainfo, tmp72
	movl	%eax, 80(%rdx)	# D.6846, ainfo_1(D)->tc1
	.loc 1 91 0
	movq	-8(%rbp), %rdx	# ainfo, tmp73
	movl	.LC2(%rip), %eax	#, tmp74
	movl	%eax, 92(%rdx)	# tmp74, ainfo_1(D)->nc2
	movq	-8(%rbp), %rax	# ainfo, tmp75
	movl	92(%rax), %eax	# ainfo_1(D)->nc2, D.6846
	movq	-8(%rbp), %rdx	# ainfo, tmp76
	movl	%eax, 88(%rdx)	# D.6846, ainfo_1(D)->nc1
	.loc 1 92 0
	movq	-8(%rbp), %rdx	# ainfo, tmp77
	movl	.LC2(%rip), %eax	#, tmp78
	movl	%eax, 100(%rdx)	# tmp78, ainfo_1(D)->ga2
	movq	-8(%rbp), %rax	# ainfo, tmp79
	movl	100(%rax), %eax	# ainfo_1(D)->ga2, D.6846
	movq	-8(%rbp), %rdx	# ainfo, tmp80
	movl	%eax, 96(%rdx)	# D.6846, ainfo_1(D)->ga1
	.loc 1 93 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	InitAinfo, .-InitAinfo
	.globl	FreeAlignment
	.type	FreeAlignment, @function
FreeAlignment:
.LFB4:
	.loc 1 106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# aseqs, aseqs
	movq	%rsi, -32(%rbp)	# ainfo, ainfo
	.loc 1 109 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L8	#
.L11:
	.loc 1 111 0
	movq	-32(%rbp), %rax	# ainfo, tmp97
	movq	40(%rax), %rdx	# ainfo_3(D)->sqinfo, D.6848
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	imulq	$360, %rax, %rax	#, D.6849, D.6849
	addq	%rdx, %rax	# D.6848, D.6848
	movl	(%rax), %eax	# _8->flags, D.6847
	andl	$512, %eax	#, D.6847
	testl	%eax, %eax	# D.6847
	je	.L9	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp99
	movq	40(%rax), %rdx	# ainfo_3(D)->sqinfo, D.6848
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	imulq	$360, %rax, %rax	#, D.6849, D.6849
	addq	%rdx, %rax	# D.6848, D.6848
	movq	344(%rax), %rax	# _14->ss, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L9:
	.loc 1 112 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp101
	movq	40(%rax), %rdx	# ainfo_3(D)->sqinfo, D.6848
	movl	-4(%rbp), %eax	# i, tmp102
	cltq
	imulq	$360, %rax, %rax	#, D.6849, D.6849
	addq	%rdx, %rax	# D.6848, D.6848
	movl	(%rax), %eax	# _19->flags, D.6847
	andl	$1024, %eax	#, D.6847
	testl	%eax, %eax	# D.6847
	je	.L10	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp103
	movq	40(%rax), %rdx	# ainfo_3(D)->sqinfo, D.6848
	movl	-4(%rbp), %eax	# i, tmp104
	cltq
	imulq	$360, %rax, %rax	#, D.6849, D.6849
	addq	%rdx, %rax	# D.6848, D.6848
	movq	352(%rax), %rax	# _25->sa, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L10:
	.loc 1 109 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L8:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp105
	movl	8(%rax), %eax	# ainfo_3(D)->nseq, D.6847
	cmpl	-4(%rbp), %eax	# i, D.6847
	jg	.L11	#,
	.loc 1 114 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp106
	movq	24(%rax), %rax	# ainfo_3(D)->cs, D.6850
	testq	%rax, %rax	# D.6850
	je	.L12	#,
	.loc 1 114 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp107
	movq	24(%rax), %rax	# ainfo_3(D)->cs, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L12:
	.loc 1 115 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp108
	movq	32(%rax), %rax	# ainfo_3(D)->rf, D.6850
	testq	%rax, %rax	# D.6850
	je	.L13	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp109
	movq	32(%rax), %rax	# ainfo_3(D)->rf, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L13:
	.loc 1 116 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp110
	movq	48(%rax), %rax	# ainfo_3(D)->name, D.6850
	testq	%rax, %rax	# D.6850
	je	.L14	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp111
	movq	48(%rax), %rax	# ainfo_3(D)->name, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L14:
	.loc 1 117 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp112
	movq	56(%rax), %rax	# ainfo_3(D)->desc, D.6850
	testq	%rax, %rax	# D.6850
	je	.L15	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp113
	movq	56(%rax), %rax	# ainfo_3(D)->desc, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L15:
	.loc 1 118 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp114
	movq	64(%rax), %rax	# ainfo_3(D)->acc, D.6850
	testq	%rax, %rax	# D.6850
	je	.L16	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp115
	movq	64(%rax), %rax	# ainfo_3(D)->acc, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L16:
	.loc 1 119 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp116
	movq	72(%rax), %rax	# ainfo_3(D)->au, D.6850
	testq	%rax, %rax	# D.6850
	je	.L17	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp117
	movq	72(%rax), %rax	# ainfo_3(D)->au, D.6850
	movq	%rax, %rdi	# D.6850,
	call	free	#
.L17:
	.loc 1 121 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp118
	movq	40(%rax), %rax	# ainfo_3(D)->sqinfo, D.6848
	movq	%rax, %rdi	# D.6848,
	call	free	#
	.loc 1 122 0
	movq	-32(%rbp), %rax	# ainfo, tmp119
	movq	16(%rax), %rax	# ainfo_3(D)->wgt, D.6851
	movq	%rax, %rdi	# D.6851,
	call	free	#
	.loc 1 123 0
	movq	-32(%rbp), %rax	# ainfo, tmp120
	movl	8(%rax), %edx	# ainfo_3(D)->nseq, D.6847
	movq	-24(%rbp), %rax	# aseqs, tmp121
	movl	%edx, %esi	# D.6847,
	movq	%rax, %rdi	# tmp121,
	call	Free2DArray	#
	.loc 1 124 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FreeAlignment, .-FreeAlignment
	.globl	SAMizeAlignment
	.type	SAMizeAlignment, @function
SAMizeAlignment:
.LFB5:
	.loc 1 145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# nseq, nseq
	movl	%edx, -48(%rbp)	# alen, alen
	.loc 1 151 0
	movl	$0, -20(%rbp)	#, col
	jmp	.L19	#
.L31:
	.loc 1 153 0
	movl	$0, -4(%rbp)	#, sawgap
	movl	-4(%rbp), %eax	# sawgap, tmp165
	movl	%eax, -8(%rbp)	# tmp165, sawupper
	movl	-8(%rbp), %eax	# sawupper, tmp166
	movl	%eax, -12(%rbp)	# tmp166, sawlower
	.loc 1 155 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L20	#
.L25:
	.loc 1 157 0
	movl	-16(%rbp), %eax	# i, tmp167
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp168
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_19, D.6854
	movl	-20(%rbp), %eax	# col, tmp169
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_22, D.6856
	cmpb	$32, %al	#, D.6856
	je	.L21	#,
	.loc 1 157 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp171
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_26, D.6854
	movl	-20(%rbp), %eax	# col, tmp172
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_29, D.6856
	cmpb	$46, %al	#, D.6856
	je	.L21	#,
	.loc 1 157 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp174
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_33, D.6854
	movl	-20(%rbp), %eax	# col, tmp175
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_36, D.6856
	cmpb	$95, %al	#, D.6856
	je	.L21	#,
	movl	-16(%rbp), %eax	# i, tmp176
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp177
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_40, D.6854
	movl	-20(%rbp), %eax	# col, tmp178
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_43, D.6856
	cmpb	$45, %al	#, D.6856
	je	.L21	#,
	movl	-16(%rbp), %eax	# i, tmp179
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp180
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_47, D.6854
	movl	-20(%rbp), %eax	# col, tmp181
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_50, D.6856
	cmpb	$126, %al	#, D.6856
	jne	.L22	#,
.L21:
	movl	$1, -4(%rbp)	#, sawgap
	jmp	.L23	#
.L22:
	.loc 1 158 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_52, D.6858
	movl	-16(%rbp), %edx	# i, tmp182
	movslq	%edx, %rdx	# tmp182, D.6852
	leaq	0(,%rdx,8), %rcx	#, D.6852
	movq	-40(%rbp), %rdx	# aseq, tmp183
	addq	%rcx, %rdx	# D.6852, D.6853
	movq	(%rdx), %rcx	# *_56, D.6854
	movl	-20(%rbp), %edx	# col, tmp184
	movslq	%edx, %rdx	# tmp184, D.6855
	addq	%rcx, %rdx	# D.6854, D.6854
	movzbl	(%rdx), %edx	# *_59, D.6856
	movsbq	%dl, %rdx	# D.6856, D.6852
	addq	%rdx, %rdx	# D.6852
	addq	%rdx, %rax	# D.6852, D.6858
	movzwl	(%rax), %eax	# *_63, D.6859
	movzwl	%ax, %eax	# D.6859, D.6860
	andl	$256, %eax	#, D.6860
	testl	%eax, %eax	# D.6860
	je	.L24	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movl	$1, -8(%rbp)	#, sawupper
	jmp	.L23	#
.L24:
	.loc 1 159 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_68, D.6858
	movl	-16(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, D.6852
	leaq	0(,%rdx,8), %rcx	#, D.6852
	movq	-40(%rbp), %rdx	# aseq, tmp186
	addq	%rcx, %rdx	# D.6852, D.6853
	movq	(%rdx), %rcx	# *_72, D.6854
	movl	-20(%rbp), %edx	# col, tmp187
	movslq	%edx, %rdx	# tmp187, D.6855
	addq	%rcx, %rdx	# D.6854, D.6854
	movzbl	(%rdx), %edx	# *_75, D.6856
	movsbq	%dl, %rdx	# D.6856, D.6852
	addq	%rdx, %rdx	# D.6852
	addq	%rdx, %rax	# D.6852, D.6858
	movzwl	(%rax), %eax	# *_79, D.6859
	movzwl	%ax, %eax	# D.6859, D.6860
	andl	$512, %eax	#, D.6860
	testl	%eax, %eax	# D.6860
	je	.L23	#,
	.loc 1 159 0 is_stmt 0 discriminator 1
	movl	$1, -12(%rbp)	#, sawlower
.L23:
	.loc 1 155 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L20:
	.loc 1 155 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp188
	cmpl	-44(%rbp), %eax	# nseq, tmp188
	jl	.L25	#,
	.loc 1 162 0 is_stmt 1
	movb	$45, -21(%rbp)	#, gapchar
	.loc 1 163 0
	cmpl	$0, -12(%rbp)	#, sawlower
	je	.L26	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, sawupper
	jne	.L26	#,
	movb	$46, -21(%rbp)	#, gapchar
.L26:
	.loc 1 166 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L27	#
.L30:
	.loc 1 167 0
	movl	-16(%rbp), %eax	# i, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp190
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_91, D.6854
	movl	-20(%rbp), %eax	# col, tmp191
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_94, D.6856
	cmpb	$32, %al	#, D.6856
	je	.L28	#,
	.loc 1 167 0 is_stmt 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp192
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp193
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_98, D.6854
	movl	-20(%rbp), %eax	# col, tmp194
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_101, D.6856
	cmpb	$46, %al	#, D.6856
	je	.L28	#,
	.loc 1 167 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp196
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_105, D.6854
	movl	-20(%rbp), %eax	# col, tmp197
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_108, D.6856
	cmpb	$95, %al	#, D.6856
	je	.L28	#,
	movl	-16(%rbp), %eax	# i, tmp198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp199
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_112, D.6854
	movl	-20(%rbp), %eax	# col, tmp200
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_115, D.6856
	cmpb	$45, %al	#, D.6856
	je	.L28	#,
	movl	-16(%rbp), %eax	# i, tmp201
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp202
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_119, D.6854
	movl	-20(%rbp), %eax	# col, tmp203
	cltq
	addq	%rdx, %rax	# D.6854, D.6854
	movzbl	(%rax), %eax	# *_122, D.6856
	cmpb	$126, %al	#, D.6856
	jne	.L29	#,
.L28:
	movl	-16(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6852
	movq	-40(%rbp), %rax	# aseq, tmp205
	addq	%rdx, %rax	# D.6852, D.6853
	movq	(%rax), %rdx	# *_126, D.6854
	movl	-20(%rbp), %eax	# col, tmp206
	cltq
	addq	%rax, %rdx	# D.6855, D.6854
	movzbl	-21(%rbp), %eax	# gapchar, tmp207
	movb	%al, (%rdx)	# tmp207, *_129
.L29:
	.loc 1 166 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L27:
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp208
	cmpl	-44(%rbp), %eax	# nseq, tmp208
	jl	.L30	#,
	.loc 1 151 0 is_stmt 1
	addl	$1, -20(%rbp)	#, col
.L19:
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# col, tmp209
	cmpl	-48(%rbp), %eax	# alen, tmp209
	jl	.L31	#,
	.loc 1 169 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SAMizeAlignment, .-SAMizeAlignment
	.globl	SAMizeAlignmentByGapFrac
	.type	SAMizeAlignmentByGapFrac, @function
SAMizeAlignmentByGapFrac:
.LFB6:
	.loc 1 191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# nseq, nseq
	movl	%edx, -48(%rbp)	# alen, alen
	movss	%xmm0, -52(%rbp)	# maxgap, maxgap
	.loc 1 196 0
	movl	$0, -28(%rbp)	#, apos
	jmp	.L33	#
.L51:
	.loc 1 199 0
	movl	$0, -20(%rbp)	#, ngap
	.loc 1 200 0
	movl	$0, -24(%rbp)	#, idx
	jmp	.L34	#
.L37:
	.loc 1 201 0
	movl	-24(%rbp), %eax	# idx, tmp211
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp212
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_15, D.6863
	movl	-28(%rbp), %eax	# apos, tmp213
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_18, D.6865
	cmpb	$32, %al	#, D.6865
	je	.L35	#,
	.loc 1 201 0 is_stmt 0 discriminator 2
	movl	-24(%rbp), %eax	# idx, tmp214
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp215
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_22, D.6863
	movl	-28(%rbp), %eax	# apos, tmp216
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_25, D.6865
	cmpb	$46, %al	#, D.6865
	je	.L35	#,
	.loc 1 201 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp217
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp218
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_29, D.6863
	movl	-28(%rbp), %eax	# apos, tmp219
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_32, D.6865
	cmpb	$95, %al	#, D.6865
	je	.L35	#,
	movl	-24(%rbp), %eax	# idx, tmp220
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp221
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_36, D.6863
	movl	-28(%rbp), %eax	# apos, tmp222
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_39, D.6865
	cmpb	$45, %al	#, D.6865
	je	.L35	#,
	movl	-24(%rbp), %eax	# idx, tmp223
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp224
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_43, D.6863
	movl	-28(%rbp), %eax	# apos, tmp225
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_46, D.6865
	cmpb	$126, %al	#, D.6865
	jne	.L36	#,
.L35:
	addl	$1, -20(%rbp)	#, ngap
.L36:
	.loc 1 200 0 is_stmt 1
	addl	$1, -24(%rbp)	#, idx
.L34:
	.loc 1 200 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp226
	cmpl	-44(%rbp), %eax	# nseq, tmp226
	jl	.L37	#,
	.loc 1 204 0 is_stmt 1
	cvtsi2ss	-20(%rbp), %xmm0	# ngap, D.6866
	cvtsi2ss	-44(%rbp), %xmm1	# nseq, D.6866
	divss	%xmm1, %xmm0	# D.6866, D.6866
	ucomiss	-52(%rbp), %xmm0	# maxgap, D.6866
	jbe	.L53	#,
	.loc 1 206 0
	movl	$0, -24(%rbp)	#, idx
	jmp	.L40	#
.L44:
	.loc 1 207 0
	movl	-24(%rbp), %eax	# idx, tmp227
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp228
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_57, D.6863
	movl	-28(%rbp), %eax	# apos, tmp229
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_60, D.6865
	cmpb	$32, %al	#, D.6865
	je	.L41	#,
	.loc 1 207 0 is_stmt 0 discriminator 2
	movl	-24(%rbp), %eax	# idx, tmp230
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp231
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_64, D.6863
	movl	-28(%rbp), %eax	# apos, tmp232
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_67, D.6865
	cmpb	$46, %al	#, D.6865
	je	.L41	#,
	.loc 1 207 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp233
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp234
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_71, D.6863
	movl	-28(%rbp), %eax	# apos, tmp235
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_74, D.6865
	cmpb	$95, %al	#, D.6865
	je	.L41	#,
	movl	-24(%rbp), %eax	# idx, tmp236
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp237
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_78, D.6863
	movl	-28(%rbp), %eax	# apos, tmp238
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_81, D.6865
	cmpb	$45, %al	#, D.6865
	je	.L41	#,
	movl	-24(%rbp), %eax	# idx, tmp239
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp240
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_85, D.6863
	movl	-28(%rbp), %eax	# apos, tmp241
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_88, D.6865
	cmpb	$126, %al	#, D.6865
	jne	.L42	#,
.L41:
	movl	-24(%rbp), %eax	# idx, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp243
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_108, D.6863
	movl	-28(%rbp), %eax	# apos, tmp244
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movb	$46, (%rax)	#, *_111
	jmp	.L43	#
.L42:
	.loc 1 208 0 is_stmt 1
	movl	-24(%rbp), %eax	# idx, tmp245
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp246
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_92, D.6863
	movl	-28(%rbp), %eax	# apos, tmp247
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.6863
	movl	-24(%rbp), %eax	# idx, tmp248
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp249
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_98, D.6863
	movl	-28(%rbp), %eax	# apos, tmp250
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_101, D.6865
	movsbl	%al, %eax	# D.6865, D.6867
	movl	%eax, %edi	# D.6867,
	call	tolower	#
	movb	%al, (%rbx)	# D.6865, *_95
.L43:
	.loc 1 206 0
	addl	$1, -24(%rbp)	#, idx
.L40:
	.loc 1 206 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp251
	cmpl	-44(%rbp), %eax	# nseq, tmp251
	jl	.L44	#,
	jmp	.L45	#
.L53:
	.loc 1 212 0 is_stmt 1
	movl	$0, -24(%rbp)	#, idx
	jmp	.L46	#
.L50:
	.loc 1 213 0
	movl	-24(%rbp), %eax	# idx, tmp252
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp253
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_116, D.6863
	movl	-28(%rbp), %eax	# apos, tmp254
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_119, D.6865
	cmpb	$32, %al	#, D.6865
	je	.L47	#,
	.loc 1 213 0 is_stmt 0 discriminator 2
	movl	-24(%rbp), %eax	# idx, tmp255
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp256
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_123, D.6863
	movl	-28(%rbp), %eax	# apos, tmp257
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_126, D.6865
	cmpb	$46, %al	#, D.6865
	je	.L47	#,
	.loc 1 213 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp258
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp259
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_130, D.6863
	movl	-28(%rbp), %eax	# apos, tmp260
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_133, D.6865
	cmpb	$95, %al	#, D.6865
	je	.L47	#,
	movl	-24(%rbp), %eax	# idx, tmp261
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp262
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_137, D.6863
	movl	-28(%rbp), %eax	# apos, tmp263
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_140, D.6865
	cmpb	$45, %al	#, D.6865
	je	.L47	#,
	movl	-24(%rbp), %eax	# idx, tmp264
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp265
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_144, D.6863
	movl	-28(%rbp), %eax	# apos, tmp266
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_147, D.6865
	cmpb	$126, %al	#, D.6865
	jne	.L48	#,
.L47:
	movl	-24(%rbp), %eax	# idx, tmp267
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp268
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_167, D.6863
	movl	-28(%rbp), %eax	# apos, tmp269
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movb	$45, (%rax)	#, *_170
	jmp	.L49	#
.L48:
	.loc 1 214 0 is_stmt 1
	movl	-24(%rbp), %eax	# idx, tmp270
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp271
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_151, D.6863
	movl	-28(%rbp), %eax	# apos, tmp272
	cltq
	leaq	(%rdx,%rax), %rbx	#, D.6863
	movl	-24(%rbp), %eax	# idx, tmp273
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6861
	movq	-40(%rbp), %rax	# aseq, tmp274
	addq	%rdx, %rax	# D.6861, D.6862
	movq	(%rax), %rdx	# *_157, D.6863
	movl	-28(%rbp), %eax	# apos, tmp275
	cltq
	addq	%rdx, %rax	# D.6863, D.6863
	movzbl	(%rax), %eax	# *_160, D.6865
	movsbl	%al, %eax	# D.6865, D.6867
	movl	%eax, %edi	# D.6867,
	call	toupper	#
	movb	%al, (%rbx)	# D.6865, *_154
.L49:
	.loc 1 212 0
	addl	$1, -24(%rbp)	#, idx
.L46:
	.loc 1 212 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# idx, tmp276
	cmpl	-44(%rbp), %eax	# nseq, tmp276
	jl	.L50	#,
.L45:
	.loc 1 196 0 is_stmt 1
	addl	$1, -28(%rbp)	#, apos
.L33:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# apos, tmp277
	cmpl	-48(%rbp), %eax	# alen, tmp277
	jl	.L51	#,
	.loc 1 217 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SAMizeAlignmentByGapFrac, .-SAMizeAlignmentByGapFrac
	.globl	MakeAlignedString
	.type	MakeAlignedString, @function
MakeAlignedString:
.LFB7:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# alen, alen
	movq	%rdx, -56(%rbp)	# ss, ss
	movq	%rcx, -64(%rbp)	# ret_s, ret_s
	.loc 1 242 0
	movl	-44(%rbp), %eax	# alen, tmp89
	addl	$1, %eax	#, D.6868
	cltq
	movq	%rax, %rdx	# D.6869,
	movl	$242, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp90, new
	.loc 1 243 0
	movl	$0, -28(%rbp)	#, rpos
	movl	-28(%rbp), %eax	# rpos, tmp91
	movl	%eax, -32(%rbp)	# tmp91, apos
	jmp	.L55	#
.L58:
	.loc 1 244 0
	movl	-32(%rbp), %eax	# apos, tmp92
	movslq	%eax, %rdx	# tmp92, D.6870
	movq	-40(%rbp), %rax	# aseq, tmp93
	addq	%rdx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_13, D.6872
	cmpb	$32, %al	#, D.6872
	je	.L56	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# apos, tmp94
	movslq	%eax, %rdx	# tmp94, D.6870
	movq	-40(%rbp), %rax	# aseq, tmp95
	addq	%rdx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_16, D.6872
	cmpb	$46, %al	#, D.6872
	je	.L56	#,
	movl	-32(%rbp), %eax	# apos, tmp96
	movslq	%eax, %rdx	# tmp96, D.6870
	movq	-40(%rbp), %rax	# aseq, tmp97
	addq	%rdx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_19, D.6872
	cmpb	$95, %al	#, D.6872
	je	.L56	#,
	movl	-32(%rbp), %eax	# apos, tmp98
	movslq	%eax, %rdx	# tmp98, D.6870
	movq	-40(%rbp), %rax	# aseq, tmp99
	addq	%rdx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_22, D.6872
	cmpb	$45, %al	#, D.6872
	je	.L56	#,
	movl	-32(%rbp), %eax	# apos, tmp100
	movslq	%eax, %rdx	# tmp100, D.6870
	movq	-40(%rbp), %rax	# aseq, tmp101
	addq	%rdx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_25, D.6872
	cmpb	$126, %al	#, D.6872
	je	.L56	#,
	.loc 1 246 0 is_stmt 1
	movl	-32(%rbp), %eax	# apos, tmp102
	movslq	%eax, %rdx	# tmp102, D.6870
	movq	-24(%rbp), %rax	# new, tmp103
	addq	%rax, %rdx	# tmp103, D.6871
	movl	-28(%rbp), %eax	# rpos, tmp104
	movslq	%eax, %rcx	# tmp104, D.6870
	movq	-56(%rbp), %rax	# ss, tmp105
	addq	%rcx, %rax	# D.6870, D.6871
	movzbl	(%rax), %eax	# *_31, D.6872
	movb	%al, (%rdx)	# D.6872, *_28
	.loc 1 247 0
	addl	$1, -28(%rbp)	#, rpos
	jmp	.L57	#
.L56:
	.loc 1 250 0
	movl	-32(%rbp), %eax	# apos, tmp106
	movslq	%eax, %rdx	# tmp106, D.6870
	movq	-24(%rbp), %rax	# new, tmp107
	addq	%rdx, %rax	# D.6870, D.6871
	movb	$46, (%rax)	#, *_35
.L57:
	.loc 1 243 0
	addl	$1, -32(%rbp)	#, apos
.L55:
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# apos, tmp108
	cmpl	-44(%rbp), %eax	# alen, tmp108
	jl	.L58	#,
	.loc 1 251 0 is_stmt 1
	movl	-32(%rbp), %eax	# apos, tmp109
	movslq	%eax, %rdx	# tmp109, D.6870
	movq	-24(%rbp), %rax	# new, tmp110
	addq	%rdx, %rax	# D.6870, D.6871
	movb	$0, (%rax)	#, *_38
	.loc 1 253 0
	movl	-28(%rbp), %eax	# rpos, tmp111
	movslq	%eax, %rbx	# tmp111, D.6869
	movq	-56(%rbp), %rax	# ss, tmp112
	movq	%rax, %rdi	# tmp112,
	call	strlen	#
	cmpq	%rax, %rbx	# D.6869, D.6869
	je	.L59	#,
	.loc 1 254 0
	movl	$6, squid_errno(%rip)	#, squid_errno
	movq	-24(%rbp), %rax	# new, tmp113
	movq	%rax, %rdi	# tmp113,
	call	free	#
	movl	$0, %eax	#, D.6868
	jmp	.L60	#
.L59:
	.loc 1 255 0
	movq	-64(%rbp), %rax	# ret_s, tmp114
	movq	-24(%rbp), %rdx	# new, tmp115
	movq	%rdx, (%rax)	# tmp115, *ret_s_42(D)
	.loc 1 256 0
	movl	$1, %eax	#, D.6868
.L60:
	.loc 1 257 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	MakeAlignedString, .-MakeAlignedString
	.globl	MakeDealignedString
	.type	MakeDealignedString, @function
MakeDealignedString:
.LFB8:
	.loc 1 276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# alen, alen
	movq	%rdx, -56(%rbp)	# ss, ss
	movq	%rcx, -64(%rbp)	# ret_s, ret_s
	.loc 1 280 0
	movl	-44(%rbp), %eax	# alen, tmp87
	addl	$1, %eax	#, D.6873
	cltq
	movq	%rax, %rdx	# D.6874,
	movl	$280, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp88, new
	.loc 1 281 0
	movl	$0, -28(%rbp)	#, rpos
	movl	-28(%rbp), %eax	# rpos, tmp89
	movl	%eax, -32(%rbp)	# tmp89, apos
	jmp	.L62	#
.L64:
	.loc 1 282 0
	movl	-32(%rbp), %eax	# apos, tmp90
	movslq	%eax, %rdx	# tmp90, D.6875
	movq	-40(%rbp), %rax	# aseq, tmp91
	addq	%rdx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_13, D.6877
	cmpb	$32, %al	#, D.6877
	je	.L63	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# apos, tmp92
	movslq	%eax, %rdx	# tmp92, D.6875
	movq	-40(%rbp), %rax	# aseq, tmp93
	addq	%rdx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_16, D.6877
	cmpb	$46, %al	#, D.6877
	je	.L63	#,
	movl	-32(%rbp), %eax	# apos, tmp94
	movslq	%eax, %rdx	# tmp94, D.6875
	movq	-40(%rbp), %rax	# aseq, tmp95
	addq	%rdx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_19, D.6877
	cmpb	$95, %al	#, D.6877
	je	.L63	#,
	movl	-32(%rbp), %eax	# apos, tmp96
	movslq	%eax, %rdx	# tmp96, D.6875
	movq	-40(%rbp), %rax	# aseq, tmp97
	addq	%rdx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_22, D.6877
	cmpb	$45, %al	#, D.6877
	je	.L63	#,
	movl	-32(%rbp), %eax	# apos, tmp98
	movslq	%eax, %rdx	# tmp98, D.6875
	movq	-40(%rbp), %rax	# aseq, tmp99
	addq	%rdx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_25, D.6877
	cmpb	$126, %al	#, D.6877
	je	.L63	#,
	.loc 1 284 0 is_stmt 1
	movl	-28(%rbp), %eax	# rpos, tmp100
	movslq	%eax, %rdx	# tmp100, D.6875
	movq	-24(%rbp), %rax	# new, tmp101
	addq	%rax, %rdx	# tmp101, D.6876
	movl	-32(%rbp), %eax	# apos, tmp102
	movslq	%eax, %rcx	# tmp102, D.6875
	movq	-56(%rbp), %rax	# ss, tmp103
	addq	%rcx, %rax	# D.6875, D.6876
	movzbl	(%rax), %eax	# *_31, D.6877
	movb	%al, (%rdx)	# D.6877, *_28
	.loc 1 285 0
	addl	$1, -28(%rbp)	#, rpos
.L63:
	.loc 1 281 0
	addl	$1, -32(%rbp)	#, apos
.L62:
	.loc 1 281 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# apos, tmp104
	cmpl	-44(%rbp), %eax	# alen, tmp104
	jl	.L64	#,
	.loc 1 287 0 is_stmt 1
	movl	-28(%rbp), %eax	# rpos, tmp105
	movslq	%eax, %rdx	# tmp105, D.6875
	movq	-24(%rbp), %rax	# new, tmp106
	addq	%rdx, %rax	# D.6875, D.6876
	movb	$0, (%rax)	#, *_36
	.loc 1 288 0
	movl	-44(%rbp), %eax	# alen, tmp107
	movslq	%eax, %rbx	# tmp107, D.6874
	movq	-56(%rbp), %rax	# ss, tmp108
	movq	%rax, %rdi	# tmp108,
	call	strlen	#
	cmpq	%rax, %rbx	# D.6874, D.6874
	je	.L65	#,
	.loc 1 289 0
	movl	$6, squid_errno(%rip)	#, squid_errno
	movq	-24(%rbp), %rax	# new, tmp109
	movq	%rax, %rdi	# tmp109,
	call	free	#
	movl	$0, %eax	#, D.6873
	jmp	.L66	#
.L65:
	.loc 1 290 0
	movq	-64(%rbp), %rax	# ret_s, tmp110
	movq	-24(%rbp), %rdx	# new, tmp111
	movq	%rdx, (%rax)	# tmp111, *ret_s_40(D)
	.loc 1 291 0
	movl	$1, %eax	#, D.6873
.L66:
	.loc 1 292 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	MakeDealignedString, .-MakeDealignedString
	.globl	DealignedLength
	.type	DealignedLength, @function
DealignedLength:
.LFB9:
	.loc 1 306 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# aseq, aseq
	.loc 1 308 0
	movl	$0, -4(%rbp)	#, rlen
	jmp	.L68	#
.L70:
	.loc 1 309 0
	movq	-24(%rbp), %rax	# aseq, tmp67
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	cmpb	$32, %al	#, D.6878
	je	.L69	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# aseq, tmp68
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	cmpb	$46, %al	#, D.6878
	je	.L69	#,
	movq	-24(%rbp), %rax	# aseq, tmp69
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	cmpb	$95, %al	#, D.6878
	je	.L69	#,
	movq	-24(%rbp), %rax	# aseq, tmp70
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	cmpb	$45, %al	#, D.6878
	je	.L69	#,
	movq	-24(%rbp), %rax	# aseq, tmp71
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	cmpb	$126, %al	#, D.6878
	je	.L69	#,
	addl	$1, -4(%rbp)	#, rlen
.L69:
	.loc 1 308 0 is_stmt 1
	addq	$1, -24(%rbp)	#, aseq
.L68:
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# aseq, tmp72
	movzbl	(%rax), %eax	# *aseq_1, D.6878
	testb	%al, %al	# D.6878
	jne	.L70	#,
	.loc 1 310 0 is_stmt 1
	movl	-4(%rbp), %eax	# rlen, D.6879
	.loc 1 311 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DealignedLength, .-DealignedLength
	.section	.rodata
.LC3:
	.string	" \t\n"
.LC4:
	.string	""
.LC5:
	.string	"%*s%-10.10s %5d %s %5d\n"
.LC6:
	.string	"%*s                 %s\n"
	.text
	.globl	WritePairwiseAlignment
	.type	WritePairwiseAlignment, @function
WritePairwiseAlignment:
.LFB10:
	.loc 1 337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$376, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)	# ofp, ofp
	movq	%rsi, -320(%rbp)	# aseq1, aseq1
	movq	%rdx, -328(%rbp)	# name1, name1
	movl	%ecx, -332(%rbp)	# spos1, spos1
	movq	%r8, -344(%rbp)	# aseq2, aseq2
	movq	%r9, -352(%rbp)	# name2, name2
	movq	24(%rbp), %rax	# pam, tmp108
	movq	%rax, -360(%rbp)	# tmp108, pam
	.loc 1 337 0
	movq	%fs:40, %rax	#, tmp215
	movq	%rax, -24(%rbp)	# tmp215, D.6887
	xorl	%eax, %eax	# tmp215
	.loc 1 350 0
	movq	-328(%rbp), %rcx	# name1, tmp109
	leaq	-256(%rbp), %rax	#, tmp110
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	strncpy	#
	.loc 1 351 0
	movb	$0, -246(%rbp)	#, sname1
	.loc 1 352 0
	leaq	-256(%rbp), %rax	#, tmp111
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	strtok	#
	.loc 1 354 0
	movq	-352(%rbp), %rcx	# name2, tmp112
	leaq	-240(%rbp), %rax	#, tmp113
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	strncpy	#
	.loc 1 355 0
	movb	$0, -230(%rbp)	#, sname2
	.loc 1 356 0
	leaq	-240(%rbp), %rax	#, tmp114
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	strtok	#
	.loc 1 358 0
	movq	-320(%rbp), %rax	# aseq1, tmp115
	movq	%rax, -272(%rbp)	# tmp115, s1
	.loc 1 359 0
	movq	-344(%rbp), %rax	# aseq2, tmp116
	movq	%rax, -264(%rbp)	# tmp116, s2
	.loc 1 360 0
	movl	-332(%rbp), %eax	# spos1, tmp117
	movl	%eax, -300(%rbp)	# tmp117, rpos1
	.loc 1 361 0
	movl	16(%rbp), %eax	# spos2, tmp118
	movl	%eax, -296(%rbp)	# tmp118, rpos2
	.loc 1 363 0
	movl	$1, -304(%rbp)	#, still_going
	.loc 1 364 0
	jmp	.L73	#
.L91:
	.loc 1 366 0
	movl	$0, -304(%rbp)	#, still_going
	.loc 1 369 0
	movq	-272(%rbp), %rcx	# s1, tmp119
	leaq	-224(%rbp), %rax	#, tmp120
	movl	$60, %edx	#,
	movq	%rcx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp120,
	call	strncpy	#
	movb	$0, -164(%rbp)	#, buf1
	.loc 1 370 0
	movq	-264(%rbp), %rcx	# s2, tmp121
	leaq	-96(%rbp), %rax	#, tmp122
	movl	$60, %edx	#,
	movq	%rcx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	strncpy	#
	movb	$0, -36(%rbp)	#, buf2
	.loc 1 371 0
	leaq	-224(%rbp), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	strlen	#
	movl	%eax, -280(%rbp)	# D.6880, count1
	.loc 1 372 0
	leaq	-96(%rbp), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	strlen	#
	movl	%eax, -276(%rbp)	# D.6880, count2
	.loc 1 375 0
	cmpl	$60, -280(%rbp)	#, count1
	jne	.L74	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	movq	-272(%rbp), %rax	# s1, tmp125
	addq	$60, %rax	#, D.6881
	movzbl	(%rax), %eax	# *_30, D.6882
	testb	%al, %al	# D.6882
	jne	.L75	#,
.L74:
	.loc 1 375 0 discriminator 2
	cmpl	$60, -276(%rbp)	#, count2
	jne	.L76	#,
	.loc 1 376 0 is_stmt 1
	movq	-264(%rbp), %rax	# s2, tmp126
	addq	$60, %rax	#, D.6881
	movzbl	(%rax), %eax	# *_32, D.6882
	testb	%al, %al	# D.6882
	je	.L76	#,
.L75:
	.loc 1 377 0
	movl	$1, -304(%rbp)	#, still_going
.L76:
	.loc 1 380 0
	movl	-280(%rbp), %eax	# count1, tmp127
	cltq
	addq	%rax, -272(%rbp)	# D.6883, s1
	.loc 1 381 0
	movl	-276(%rbp), %eax	# count2, tmp128
	cltq
	addq	%rax, -264(%rbp)	# D.6883, s2
	.loc 1 384 0
	movl	$0, -284(%rbp)	#, apos
	jmp	.L77	#
.L84:
	.loc 1 386 0
	movl	-284(%rbp), %eax	# apos, tmp130
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$32, %al	#, D.6882
	je	.L78	#,
	.loc 1 386 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp132
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$46, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp134
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$95, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp136
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$45, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp138
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$126, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp140
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$32, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp142
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$46, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp144
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$95, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp146
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$45, %al	#, D.6882
	je	.L78	#,
	movl	-284(%rbp), %eax	# apos, tmp148
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$126, %al	#, D.6882
	je	.L78	#,
	.loc 1 388 0 is_stmt 1
	movl	-284(%rbp), %eax	# apos, tmp150
	cltq
	movzbl	-224(%rbp,%rax), %edx	# buf1, D.6882
	movl	-284(%rbp), %eax	# apos, tmp152
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	%al, %dl	# D.6882, D.6882
	jne	.L79	#,
	.loc 1 389 0
	movl	-284(%rbp), %eax	# apos, tmp154
	cltq
	movzbl	-224(%rbp,%rax), %edx	# buf1, D.6882
	movl	-284(%rbp), %eax	# apos, tmp156
	cltq
	movb	%dl, -160(%rbp,%rax)	# D.6882, bufmid
	jmp	.L80	#
.L79:
	.loc 1 390 0
	movl	-284(%rbp), %eax	# apos, tmp158
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	movsbq	%al, %rax	# D.6882, D.6880
	salq	$3, %rax	#, D.6880
	leaq	-520(%rax), %rdx	#, D.6883
	movq	-360(%rbp), %rax	# pam, tmp159
	addq	%rdx, %rax	# D.6883, D.6884
	movq	(%rax), %rdx	# *_58, D.6885
	movl	-284(%rbp), %eax	# apos, tmp161
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	movsbq	%al, %rax	# D.6882, D.6880
	salq	$2, %rax	#, D.6880
	subq	$260, %rax	#, D.6883
	addq	%rdx, %rax	# D.6885, D.6885
	movl	(%rax), %eax	# *_64, D.6886
	testl	%eax, %eax	# D.6886
	jle	.L81	#,
	.loc 1 391 0
	movl	-284(%rbp), %eax	# apos, tmp163
	cltq
	movb	$43, -160(%rbp,%rax)	#, bufmid
	jmp	.L80	#
.L81:
	.loc 1 393 0
	movl	-284(%rbp), %eax	# apos, tmp165
	cltq
	movb	$32, -160(%rbp,%rax)	#, bufmid
	.loc 1 388 0
	jmp	.L82	#
.L80:
	jmp	.L82	#
.L78:
	.loc 1 396 0
	movl	-284(%rbp), %eax	# apos, tmp167
	cltq
	movb	$32, -160(%rbp,%rax)	#, bufmid
.L82:
	.loc 1 384 0
	addl	$1, -284(%rbp)	#, apos
.L77:
	.loc 1 384 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp168
	cmpl	-280(%rbp), %eax	# count1, tmp168
	jge	.L83	#,
	.loc 1 384 0 discriminator 2
	movl	-284(%rbp), %eax	# apos, tmp169
	cmpl	-276(%rbp), %eax	# count2, tmp169
	jl	.L84	#,
.L83:
	.loc 1 398 0 is_stmt 1
	movl	-284(%rbp), %eax	# apos, tmp171
	cltq
	movb	$0, -160(%rbp,%rax)	#, bufmid
	.loc 1 400 0
	movl	$0, -292(%rbp)	#, rawcount1
	.loc 1 401 0
	movl	$0, -284(%rbp)	#, apos
	jmp	.L85	#
.L87:
	.loc 1 402 0
	movl	-284(%rbp), %eax	# apos, tmp173
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$32, %al	#, D.6882
	je	.L86	#,
	.loc 1 402 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp175
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$46, %al	#, D.6882
	je	.L86	#,
	movl	-284(%rbp), %eax	# apos, tmp177
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$95, %al	#, D.6882
	je	.L86	#,
	movl	-284(%rbp), %eax	# apos, tmp179
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$45, %al	#, D.6882
	je	.L86	#,
	movl	-284(%rbp), %eax	# apos, tmp181
	cltq
	movzbl	-224(%rbp,%rax), %eax	# buf1, D.6882
	cmpb	$126, %al	#, D.6882
	je	.L86	#,
	addl	$1, -292(%rbp)	#, rawcount1
.L86:
	.loc 1 401 0 is_stmt 1
	addl	$1, -284(%rbp)	#, apos
.L85:
	.loc 1 401 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp182
	cmpl	-280(%rbp), %eax	# count1, tmp182
	jl	.L87	#,
	.loc 1 404 0 is_stmt 1
	movl	$0, -288(%rbp)	#, rawcount2
	.loc 1 405 0
	movl	$0, -284(%rbp)	#, apos
	jmp	.L88	#
.L90:
	.loc 1 406 0
	movl	-284(%rbp), %eax	# apos, tmp184
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$32, %al	#, D.6882
	je	.L89	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp186
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$46, %al	#, D.6882
	je	.L89	#,
	movl	-284(%rbp), %eax	# apos, tmp188
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$95, %al	#, D.6882
	je	.L89	#,
	movl	-284(%rbp), %eax	# apos, tmp190
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$45, %al	#, D.6882
	je	.L89	#,
	movl	-284(%rbp), %eax	# apos, tmp192
	cltq
	movzbl	-96(%rbp,%rax), %eax	# buf2, D.6882
	cmpb	$126, %al	#, D.6882
	je	.L89	#,
	addl	$1, -288(%rbp)	#, rawcount2
.L89:
	.loc 1 405 0 is_stmt 1
	addl	$1, -284(%rbp)	#, apos
.L88:
	.loc 1 405 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# apos, tmp193
	cmpl	-276(%rbp), %eax	# count2, tmp193
	jl	.L90	#,
	.loc 1 409 0 is_stmt 1
	movl	-292(%rbp), %eax	# rawcount1, tmp194
	movl	-300(%rbp), %edx	# rpos1, tmp195
	addl	%edx, %eax	# tmp195, D.6886
	.loc 1 408 0
	leal	-1(%rax), %ecx	#, D.6886
	movl	-300(%rbp), %edi	# rpos1, tmp196
	leaq	-256(%rbp), %rsi	#, tmp197
	movl	32(%rbp), %edx	# indent, tmp198
	movq	-312(%rbp), %rax	# ofp, tmp199
	movl	%ecx, 8(%rsp)	# D.6886,
	leaq	-224(%rbp), %rcx	#, tmp200
	movq	%rcx, (%rsp)	# tmp200,
	movl	%edi, %r9d	# tmp196,
	movq	%rsi, %r8	# tmp197,
	movl	$.LC4, %ecx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp199,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 410 0
	leaq	-160(%rbp), %rcx	#, tmp201
	movl	32(%rbp), %edx	# indent, tmp202
	movq	-312(%rbp), %rax	# ofp, tmp203
	movq	%rcx, %r8	# tmp201,
	movl	$.LC4, %ecx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp203,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 413 0
	movl	-288(%rbp), %eax	# rawcount2, tmp204
	movl	-296(%rbp), %edx	# rpos2, tmp205
	addl	%edx, %eax	# tmp205, D.6886
	.loc 1 412 0
	leal	-1(%rax), %ecx	#, D.6886
	movl	-296(%rbp), %edi	# rpos2, tmp206
	leaq	-240(%rbp), %rsi	#, tmp207
	movl	32(%rbp), %edx	# indent, tmp208
	movq	-312(%rbp), %rax	# ofp, tmp209
	movl	%ecx, 8(%rsp)	# D.6886,
	leaq	-96(%rbp), %rcx	#, tmp210
	movq	%rcx, (%rsp)	# tmp210,
	movl	%edi, %r9d	# tmp206,
	movq	%rsi, %r8	# tmp207,
	movl	$.LC4, %ecx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp209,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 414 0
	movq	-312(%rbp), %rax	# ofp, tmp211
	movq	%rax, %rsi	# tmp211,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 416 0
	movl	-292(%rbp), %eax	# rawcount1, tmp212
	addl	%eax, -300(%rbp)	# tmp212, rpos1
	.loc 1 417 0
	movl	-288(%rbp), %eax	# rawcount2, tmp213
	addl	%eax, -296(%rbp)	# tmp213, rpos2
.L73:
	.loc 1 364 0 discriminator 1
	cmpl	$0, -304(%rbp)	#, still_going
	jne	.L91	#,
	.loc 1 420 0
	movl	$1, %eax	#, D.6886
	.loc 1 421 0
	movq	-24(%rbp), %rbx	# D.6887, tmp216
	xorq	%fs:40, %rbx	#, tmp216
	je	.L93	#,
	call	__stack_chk_fail	#
.L93:
	addq	$376, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	WritePairwiseAlignment, .-WritePairwiseAlignment
	.globl	MingapAlignment
	.type	MingapAlignment, @function
MingapAlignment:
.LFB11:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# aseqs, aseqs
	movq	%rsi, -32(%rbp)	# ainfo, ainfo
	.loc 1 439 0
	movl	$0, -12(%rbp)	#, apos
	movl	$0, -8(%rbp)	#, mpos
	jmp	.L95	#
.L106:
	.loc 1 442 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L96	#
.L99:
	.loc 1 443 0
	movl	-4(%rbp), %eax	# idx, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp148
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_19, D.6894
	movl	-12(%rbp), %eax	# apos, tmp149
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_22, D.6896
	cmpb	$32, %al	#, D.6896
	je	.L97	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp150
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp151
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_26, D.6894
	movl	-12(%rbp), %eax	# apos, tmp152
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_29, D.6896
	cmpb	$46, %al	#, D.6896
	je	.L97	#,
	movl	-4(%rbp), %eax	# idx, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp154
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_33, D.6894
	movl	-12(%rbp), %eax	# apos, tmp155
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_36, D.6896
	cmpb	$95, %al	#, D.6896
	je	.L97	#,
	movl	-4(%rbp), %eax	# idx, tmp156
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp157
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_40, D.6894
	movl	-12(%rbp), %eax	# apos, tmp158
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_43, D.6896
	cmpb	$45, %al	#, D.6896
	je	.L97	#,
	movl	-4(%rbp), %eax	# idx, tmp159
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp160
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_47, D.6894
	movl	-12(%rbp), %eax	# apos, tmp161
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_50, D.6896
	cmpb	$126, %al	#, D.6896
	je	.L97	#,
	.loc 1 444 0 is_stmt 1
	jmp	.L98	#
.L97:
	.loc 1 442 0
	addl	$1, -4(%rbp)	#, idx
.L96:
	.loc 1 442 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp162
	movl	8(%rax), %eax	# ainfo_15(D)->nseq, D.6897
	cmpl	-4(%rbp), %eax	# idx, D.6897
	jg	.L99	#,
.L98:
	.loc 1 445 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp163
	movl	8(%rax), %eax	# ainfo_15(D)->nseq, D.6897
	cmpl	-4(%rbp), %eax	# idx, D.6897
	jne	.L100	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	jmp	.L101	#
.L100:
	.loc 1 448 0 is_stmt 1
	movl	-8(%rbp), %eax	# mpos, tmp164
	cmpl	-12(%rbp), %eax	# apos, tmp164
	je	.L102	#,
	.loc 1 450 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L103	#
.L104:
	.loc 1 451 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp166
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_58, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp167
	cltq
	addq	%rax, %rdx	# D.6895, D.6894
	movl	-4(%rbp), %eax	# idx, tmp168
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp169
	addq	%rcx, %rax	# D.6898, D.6899
	movq	(%rax), %rcx	# *_64, D.6894
	movl	-12(%rbp), %eax	# apos, tmp170
	cltq
	addq	%rcx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_67, D.6896
	movb	%al, (%rdx)	# D.6896, *_61
	.loc 1 450 0 discriminator 2
	addl	$1, -4(%rbp)	#, idx
.L103:
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp171
	movl	8(%rax), %eax	# ainfo_15(D)->nseq, D.6897
	cmpl	-4(%rbp), %eax	# idx, D.6897
	jg	.L104	#,
	.loc 1 453 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp172
	movq	24(%rax), %rax	# ainfo_15(D)->cs, D.6894
	testq	%rax, %rax	# D.6894
	je	.L105	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp173
	movq	24(%rax), %rdx	# ainfo_15(D)->cs, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp174
	cltq
	addq	%rax, %rdx	# D.6895, D.6894
	movq	-32(%rbp), %rax	# ainfo, tmp175
	movq	24(%rax), %rcx	# ainfo_15(D)->cs, D.6894
	movl	-12(%rbp), %eax	# apos, tmp176
	cltq
	addq	%rcx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_76, D.6896
	movb	%al, (%rdx)	# D.6896, *_73
.L105:
	.loc 1 454 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp177
	movq	32(%rax), %rax	# ainfo_15(D)->rf, D.6894
	testq	%rax, %rax	# D.6894
	je	.L102	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp178
	movq	32(%rax), %rdx	# ainfo_15(D)->rf, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp179
	cltq
	addq	%rax, %rdx	# D.6895, D.6894
	movq	-32(%rbp), %rax	# ainfo, tmp180
	movq	32(%rax), %rcx	# ainfo_15(D)->rf, D.6894
	movl	-12(%rbp), %eax	# apos, tmp181
	cltq
	addq	%rcx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_84, D.6896
	movb	%al, (%rdx)	# D.6896, *_81
.L102:
	.loc 1 456 0 is_stmt 1
	addl	$1, -8(%rbp)	#, mpos
.L101:
	.loc 1 439 0
	addl	$1, -12(%rbp)	#, apos
.L95:
	.loc 1 439 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# aseqs, tmp182
	movq	(%rax), %rdx	# *aseqs_9(D), D.6894
	movl	-12(%rbp), %eax	# apos, tmp183
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movzbl	(%rax), %eax	# *_12, D.6896
	testb	%al, %al	# D.6896
	jne	.L106	#,
	.loc 1 459 0 is_stmt 1
	movl	$0, -4(%rbp)	#, idx
	jmp	.L107	#
.L108:
	.loc 1 460 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp184
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6898
	movq	-24(%rbp), %rax	# aseqs, tmp185
	addq	%rdx, %rax	# D.6898, D.6899
	movq	(%rax), %rdx	# *_92, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp186
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movb	$0, (%rax)	#, *_95
	.loc 1 459 0 discriminator 2
	addl	$1, -4(%rbp)	#, idx
.L107:
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp187
	movl	8(%rax), %eax	# ainfo_15(D)->nseq, D.6897
	cmpl	-4(%rbp), %eax	# idx, D.6897
	jg	.L108	#,
	.loc 1 461 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp188
	movl	-8(%rbp), %edx	# mpos, tmp189
	movl	%edx, 4(%rax)	# tmp189, ainfo_15(D)->alen
	.loc 1 462 0
	movq	-32(%rbp), %rax	# ainfo, tmp190
	movq	24(%rax), %rax	# ainfo_15(D)->cs, D.6894
	testq	%rax, %rax	# D.6894
	je	.L109	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp191
	movq	24(%rax), %rdx	# ainfo_15(D)->cs, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp192
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movb	$0, (%rax)	#, *_100
.L109:
	.loc 1 463 0 is_stmt 1
	movq	-32(%rbp), %rax	# ainfo, tmp193
	movq	32(%rax), %rax	# ainfo_15(D)->rf, D.6894
	testq	%rax, %rax	# D.6894
	je	.L110	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# ainfo, tmp194
	movq	32(%rax), %rdx	# ainfo_15(D)->rf, D.6894
	movl	-8(%rbp), %eax	# mpos, tmp195
	cltq
	addq	%rdx, %rax	# D.6894, D.6894
	movb	$0, (%rax)	#, *_104
.L110:
	.loc 1 464 0 is_stmt 1
	movl	$1, %eax	#, D.6897
	.loc 1 465 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	MingapAlignment, .-MingapAlignment
	.globl	RandomAlignment
	.type	RandomAlignment, @function
RandomAlignment:
.LFB12:
	.loc 1 516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# rseqs, rseqs
	movq	%rsi, -96(%rbp)	# sqinfo, sqinfo
	movl	%edx, -100(%rbp)	# nseq, nseq
	movss	%xmm0, -104(%rbp)	# pop, pop
	movss	%xmm1, -108(%rbp)	# pex, pex
	movq	%rcx, -120(%rbp)	# ret_aseqs, ret_aseqs
	movq	%r8, -128(%rbp)	# ainfo, ainfo
	.loc 1 530 0
	movl	-100(%rbp), %eax	# nseq, tmp233
	cltq
	salq	$2, %rax	#, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$530, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -48(%rbp)	# tmp234, rlen
	.loc 1 531 0
	movl	$0, -76(%rbp)	#, M
	.loc 1 532 0
	movl	$9999999, -52(%rbp)	#, minlen
	.loc 1 533 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L113	#
.L114:
	.loc 1 535 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-48(%rbp), %rax	# rlen, tmp236
	leaq	(%rdx,%rax), %rbx	#, D.6901
	movl	-64(%rbp), %eax	# idx, tmp237
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-88(%rbp), %rax	# rseqs, tmp238
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rax	# *_40, D.6903
	movq	%rax, %rdi	# D.6903,
	call	strlen	#
	movl	%eax, (%rbx)	# D.6904, *_36
	.loc 1 536 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp239
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-48(%rbp), %rax	# rlen, tmp240
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_46, D.6904
	addl	%eax, -76(%rbp)	# D.6904, M
	.loc 1 537 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp241
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-48(%rbp), %rax	# rlen, tmp242
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %edx	# *_51, D.6904
	movl	-52(%rbp), %eax	# minlen, tmp244
	cmpl	%eax, %edx	# tmp244, D.6904
	cmovle	%edx, %eax	# D.6904,, tmp243
	movl	%eax, -52(%rbp)	# tmp243, minlen
	.loc 1 533 0 discriminator 2
	addl	$1, -64(%rbp)	#, idx
.L113:
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp245
	cmpl	-100(%rbp), %eax	# nseq, tmp245
	jl	.L114	#,
	.loc 1 539 0 is_stmt 1
	cvtsi2ss	-76(%rbp), %xmm0	# M, D.6905
	unpcklps	%xmm0, %xmm0	# D.6905, D.6905
	cvtps2pd	%xmm0, %xmm0	# D.6905, D.6906
	movss	-104(%rbp), %xmm2	# pop, D.6906
	cvtps2pd	%xmm2, %xmm2	# D.6906, D.6906
	movss	-108(%rbp), %xmm1	# pex, D.6906
	cvtps2pd	%xmm1, %xmm1	# D.6906, D.6906
	movsd	.LC7(%rip), %xmm3	#, tmp246
	subsd	%xmm1, %xmm3	# D.6906, D.6906
	movapd	%xmm3, %xmm1	# D.6906, D.6906
	movsd	.LC7(%rip), %xmm3	#, tmp247
	divsd	%xmm1, %xmm3	# D.6906, D.6906
	movapd	%xmm3, %xmm1	# D.6906, D.6906
	movsd	.LC7(%rip), %xmm3	#, tmp248
	addsd	%xmm3, %xmm1	# tmp248, D.6906
	mulsd	%xmm2, %xmm1	# D.6906, D.6906
	movsd	.LC7(%rip), %xmm2	#, tmp249
	addsd	%xmm2, %xmm1	# tmp249, D.6906
	divsd	%xmm1, %xmm0	# D.6906, D.6906
	cvttsd2si	%xmm0, %eax	# D.6906, tmp250
	movl	%eax, -76(%rbp)	# tmp250, M
	.loc 1 540 0
	movl	-76(%rbp), %eax	# M, tmp254
	cltd
	idivl	-100(%rbp)	# nseq
	movl	%eax, -76(%rbp)	# tmp252, M
	.loc 1 541 0
	movl	-76(%rbp), %eax	# M, tmp255
	cmpl	-52(%rbp), %eax	# minlen, tmp255
	jle	.L115	#,
	.loc 1 541 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# minlen, tmp256
	movl	%eax, -76(%rbp)	# tmp256, M
.L115:
	.loc 1 545 0 is_stmt 1
	movl	-100(%rbp), %eax	# nseq, tmp257
	cltq
	salq	$3, %rax	#, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$545, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -40(%rbp)	# tmp258, ins
	.loc 1 546 0
	movl	-76(%rbp), %eax	# M, tmp259
	addl	$1, %eax	#, D.6904
	cltq
	salq	$2, %rax	#, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$546, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp260, master_ins
	.loc 1 547 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L116	#
.L119:
	.loc 1 549 0
	movl	-64(%rbp), %eax	# idx, tmp261
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp262
	leaq	(%rdx,%rax), %rbx	#, D.6907
	movl	-76(%rbp), %eax	# M, tmp263
	addl	$1, %eax	#, D.6904
	cltq
	salq	$2, %rax	#, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$549, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6908, *_80
	.loc 1 550 0
	movl	$0, -68(%rbp)	#, rpos
	jmp	.L117	#
.L118:
	.loc 1 551 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp264
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp265
	addq	%rdx, %rax	# D.6900, D.6907
	movq	(%rax), %rax	# *_88, D.6901
	movl	-68(%rbp), %edx	# rpos, tmp266
	movslq	%edx, %rdx	# tmp266, D.6900
	salq	$2, %rdx	#, D.6900
	addq	%rdx, %rax	# D.6900, D.6901
	movl	$0, (%rax)	#, *_92
	.loc 1 550 0 discriminator 2
	addl	$1, -68(%rbp)	#, rpos
.L117:
	.loc 1 550 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# rpos, tmp267
	cmpl	-76(%rbp), %eax	# M, tmp267
	jle	.L118	#,
	.loc 1 547 0 is_stmt 1
	addl	$1, -64(%rbp)	#, idx
.L116:
	.loc 1 547 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp268
	cmpl	-100(%rbp), %eax	# nseq, tmp268
	jl	.L119	#,
	.loc 1 554 0 is_stmt 1
	movss	-104(%rbp), %xmm0	# pop, tmp269
	addss	-108(%rbp), %xmm0	# pex, D.6905
	movss	-104(%rbp), %xmm1	# pop, tmp271
	divss	%xmm0, %xmm1	# D.6905, tmp270
	movaps	%xmm1, %xmm0	# tmp270, tmp270
	movss	%xmm0, -104(%rbp)	# tmp270, pop
	.loc 1 555 0
	movss	.LC1(%rip), %xmm0	#, tmp273
	subss	-104(%rbp), %xmm0	# pop, tmp272
	movss	%xmm0, -108(%rbp)	# tmp272, pex
	.loc 1 557 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L120	#
.L125:
	.loc 1 559 0
	movl	$-1, -72(%rbp)	#, apos
	.loc 1 560 0
	movl	$0, -68(%rbp)	#, rpos
	jmp	.L121	#
.L124:
	.loc 1 562 0
	call	sre_random	#
	movss	-104(%rbp), %xmm1	# pop, D.6906
	cvtps2pd	%xmm1, %xmm1	# D.6906, D.6906
	ucomisd	%xmm0, %xmm1	# D.6906, D.6906
	ja	.L122	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	cmpl	$-1, -72(%rbp)	#, apos
	jne	.L123	#,
.L122:
	.loc 1 563 0 is_stmt 1
	call	sre_random	#
	movl	-76(%rbp), %eax	# M, tmp274
	addl	$1, %eax	#, D.6904
	cvtsi2sd	%eax, %xmm1	# D.6904, D.6906
	mulsd	%xmm1, %xmm0	# D.6906, D.6906
	cvttsd2si	%xmm0, %eax	# D.6906, tmp275
	movl	%eax, -72(%rbp)	# tmp275, apos
.L123:
	.loc 1 564 0
	movl	-64(%rbp), %eax	# idx, tmp276
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp277
	addq	%rdx, %rax	# D.6900, D.6907
	movq	(%rax), %rax	# *_115, D.6901
	movl	-72(%rbp), %edx	# apos, tmp278
	movslq	%edx, %rdx	# tmp278, D.6900
	salq	$2, %rdx	#, D.6900
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %edx	# *_119, D.6904
	addl	$1, %edx	#, D.6904
	movl	%edx, (%rax)	# D.6904, *_119
	.loc 1 560 0
	addl	$1, -68(%rbp)	#, rpos
.L121:
	.loc 1 560 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp279
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-48(%rbp), %rax	# rlen, tmp280
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_103, D.6904
	subl	-76(%rbp), %eax	# M, D.6904
	cmpl	-68(%rbp), %eax	# rpos, D.6904
	jg	.L124	#,
	.loc 1 557 0 is_stmt 1
	addl	$1, -64(%rbp)	#, idx
.L120:
	.loc 1 557 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp281
	cmpl	-100(%rbp), %eax	# nseq, tmp281
	jl	.L125	#,
	.loc 1 568 0 is_stmt 1
	movl	-76(%rbp), %eax	# M, tmp282
	movl	%eax, -80(%rbp)	# tmp282, alen
	.loc 1 569 0
	movl	$0, -72(%rbp)	#, apos
	jmp	.L126	#
.L130:
	.loc 1 571 0
	movl	-72(%rbp), %eax	# apos, tmp283
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-32(%rbp), %rax	# master_ins, tmp284
	addq	%rdx, %rax	# D.6900, D.6901
	movl	$0, (%rax)	#, *_128
	.loc 1 572 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L127	#
.L129:
	.loc 1 573 0
	movl	-64(%rbp), %eax	# idx, tmp285
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp286
	addq	%rdx, %rax	# D.6900, D.6907
	movq	(%rax), %rax	# *_132, D.6901
	movl	-72(%rbp), %edx	# apos, tmp287
	movslq	%edx, %rdx	# tmp287, D.6900
	salq	$2, %rdx	#, D.6900
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %edx	# *_136, D.6904
	movl	-72(%rbp), %eax	# apos, tmp288
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6900
	movq	-32(%rbp), %rax	# master_ins, tmp289
	addq	%rcx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_140, D.6904
	cmpl	%eax, %edx	# D.6904, D.6904
	jle	.L128	#,
	.loc 1 574 0
	movl	-72(%rbp), %eax	# apos, tmp290
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-32(%rbp), %rax	# master_ins, tmp291
	addq	%rax, %rdx	# tmp291, D.6901
	movl	-64(%rbp), %eax	# idx, tmp292
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp293
	addq	%rcx, %rax	# D.6900, D.6907
	movq	(%rax), %rax	# *_147, D.6901
	movl	-72(%rbp), %ecx	# apos, tmp294
	movslq	%ecx, %rcx	# tmp294, D.6900
	salq	$2, %rcx	#, D.6900
	addq	%rcx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_151, D.6904
	movl	%eax, (%rdx)	# D.6904, *_144
.L128:
	.loc 1 572 0
	addl	$1, -64(%rbp)	#, idx
.L127:
	.loc 1 572 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp295
	cmpl	-100(%rbp), %eax	# nseq, tmp295
	jl	.L129	#,
	.loc 1 575 0 is_stmt 1
	movl	-72(%rbp), %eax	# apos, tmp296
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-32(%rbp), %rax	# master_ins, tmp297
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_156, D.6904
	addl	%eax, -80(%rbp)	# D.6904, alen
	.loc 1 569 0
	addl	$1, -72(%rbp)	#, apos
.L126:
	.loc 1 569 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# apos, tmp298
	cmpl	-76(%rbp), %eax	# M, tmp298
	jle	.L130	#,
	.loc 1 581 0 is_stmt 1
	movl	-100(%rbp), %eax	# nseq, tmp299
	cltq
	salq	$3, %rax	#, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$581, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp300, aseqs
	.loc 1 582 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L131	#
.L132:
	.loc 1 583 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp301
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-24(%rbp), %rax	# aseqs, tmp302
	leaq	(%rdx,%rax), %rbx	#, D.6902
	movl	-80(%rbp), %eax	# alen, tmp303
	addl	$1, %eax	#, D.6904
	cltq
	movq	%rax, %rdx	# D.6900,
	movl	$583, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6908, *_166
	.loc 1 582 0 discriminator 2
	addl	$1, -64(%rbp)	#, idx
.L131:
	.loc 1 582 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp304
	cmpl	-100(%rbp), %eax	# nseq, tmp304
	jl	.L132	#,
	.loc 1 584 0 is_stmt 1
	movl	$0, -64(%rbp)	#, idx
	jmp	.L133	#
.L141:
	.loc 1 586 0
	movl	$0, -68(%rbp)	#, rpos
	movl	-68(%rbp), %eax	# rpos, tmp305
	movl	%eax, -72(%rbp)	# tmp305, apos
	.loc 1 588 0
	movl	$0, -60(%rbp)	#, statepos
	jmp	.L134	#
.L140:
	.loc 1 590 0
	movl	$0, -56(%rbp)	#, count
	jmp	.L135	#
.L136:
	.loc 1 591 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp306
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-24(%rbp), %rax	# aseqs, tmp307
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rcx	# *_186, D.6903
	movl	-72(%rbp), %eax	# apos, apos.0
	leal	1(%rax), %edx	#, tmp308
	movl	%edx, -72(%rbp)	# tmp308, apos
	cltq
	addq	%rax, %rcx	# D.6909, D.6903
	movl	-64(%rbp), %eax	# idx, tmp309
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-88(%rbp), %rax	# rseqs, tmp310
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rsi	# *_194, D.6903
	movl	-68(%rbp), %eax	# rpos, rpos.1
	leal	1(%rax), %edx	#, tmp311
	movl	%edx, -68(%rbp)	# tmp311, rpos
	cltq
	addq	%rsi, %rax	# D.6903, D.6903
	movzbl	(%rax), %eax	# *_199, D.6910
	movb	%al, (%rcx)	# D.6910, *_191
	.loc 1 590 0 discriminator 2
	addl	$1, -56(%rbp)	#, count
.L135:
	.loc 1 590 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp312
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-40(%rbp), %rax	# ins, tmp313
	addq	%rdx, %rax	# D.6900, D.6907
	movq	(%rax), %rax	# *_178, D.6901
	movl	-60(%rbp), %edx	# statepos, tmp314
	movslq	%edx, %rdx	# tmp314, D.6900
	salq	$2, %rdx	#, D.6900
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_182, D.6904
	cmpl	-56(%rbp), %eax	# count, D.6904
	jg	.L136	#,
	.loc 1 592 0 is_stmt 1
	jmp	.L137	#
.L138:
	.loc 1 593 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp315
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-24(%rbp), %rax	# aseqs, tmp316
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rcx	# *_208, D.6903
	movl	-72(%rbp), %eax	# apos, apos.2
	leal	1(%rax), %edx	#, tmp317
	movl	%edx, -72(%rbp)	# tmp317, apos
	cltq
	addq	%rcx, %rax	# D.6903, D.6903
	movb	$32, (%rax)	#, *_213
	.loc 1 592 0 discriminator 2
	addl	$1, -56(%rbp)	#, count
.L137:
	.loc 1 592 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# statepos, tmp318
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6900
	movq	-32(%rbp), %rax	# master_ins, tmp319
	addq	%rdx, %rax	# D.6900, D.6901
	movl	(%rax), %eax	# *_204, D.6904
	cmpl	-56(%rbp), %eax	# count, D.6904
	jg	.L138	#,
	.loc 1 595 0 is_stmt 1
	movl	-60(%rbp), %eax	# statepos, tmp320
	cmpl	-76(%rbp), %eax	# M, tmp320
	je	.L139	#,
	.loc 1 596 0
	movl	-64(%rbp), %eax	# idx, tmp321
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-24(%rbp), %rax	# aseqs, tmp322
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rcx	# *_217, D.6903
	movl	-72(%rbp), %eax	# apos, apos.3
	leal	1(%rax), %edx	#, tmp323
	movl	%edx, -72(%rbp)	# tmp323, apos
	cltq
	addq	%rax, %rcx	# D.6909, D.6903
	movl	-64(%rbp), %eax	# idx, tmp324
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-88(%rbp), %rax	# rseqs, tmp325
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rsi	# *_225, D.6903
	movl	-68(%rbp), %eax	# rpos, rpos.4
	leal	1(%rax), %edx	#, tmp326
	movl	%edx, -68(%rbp)	# tmp326, rpos
	cltq
	addq	%rsi, %rax	# D.6903, D.6903
	movzbl	(%rax), %eax	# *_230, D.6910
	movb	%al, (%rcx)	# D.6910, *_222
.L139:
	.loc 1 588 0
	addl	$1, -60(%rbp)	#, statepos
.L134:
	.loc 1 588 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# statepos, tmp327
	cmpl	-76(%rbp), %eax	# M, tmp327
	jle	.L140	#,
	.loc 1 598 0 is_stmt 1
	movl	-64(%rbp), %eax	# idx, tmp328
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6900
	movq	-24(%rbp), %rax	# aseqs, tmp329
	addq	%rdx, %rax	# D.6900, D.6902
	movq	(%rax), %rdx	# *_235, D.6903
	movl	-80(%rbp), %eax	# alen, tmp330
	cltq
	addq	%rdx, %rax	# D.6903, D.6903
	movb	$0, (%rax)	#, *_238
	.loc 1 584 0
	addl	$1, -64(%rbp)	#, idx
.L133:
	.loc 1 584 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp331
	cmpl	-100(%rbp), %eax	# nseq, tmp331
	jl	.L141	#,
	.loc 1 600 0 is_stmt 1
	movq	-128(%rbp), %rax	# ainfo, tmp332
	movl	$0, (%rax)	#, ainfo_240(D)->flags
	.loc 1 601 0
	movq	-128(%rbp), %rax	# ainfo, tmp333
	movl	-80(%rbp), %edx	# alen, tmp334
	movl	%edx, 4(%rax)	# tmp334, ainfo_240(D)->alen
	.loc 1 602 0
	movq	-128(%rbp), %rax	# ainfo, tmp335
	movl	-100(%rbp), %edx	# nseq, tmp336
	movl	%edx, 8(%rax)	# tmp336, ainfo_240(D)->nseq
	.loc 1 603 0
	movl	-100(%rbp), %eax	# nseq, tmp337
	cltq
	imulq	$360, %rax, %rax	#, D.6900, D.6900
	movq	%rax, %rdx	# D.6900,
	movl	$603, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-128(%rbp), %rdx	# ainfo, tmp338
	movq	%rax, 40(%rdx)	# D.6908, ainfo_240(D)->sqinfo
	.loc 1 604 0
	movl	$0, -64(%rbp)	#, idx
	jmp	.L142	#
.L143:
	.loc 1 605 0 discriminator 2
	movl	-64(%rbp), %eax	# idx, tmp339
	cltq
	imulq	$360, %rax, %rdx	#, D.6900, D.6900
	movq	-96(%rbp), %rax	# sqinfo, tmp340
	addq	%rax, %rdx	# tmp340, D.6911
	movq	-128(%rbp), %rax	# ainfo, tmp341
	movq	40(%rax), %rcx	# ainfo_240(D)->sqinfo, D.6912
	movl	-64(%rbp), %eax	# idx, tmp342
	cltq
	imulq	$360, %rax, %rax	#, D.6900, D.6900
	addq	%rcx, %rax	# D.6912, D.6911
	movq	%rdx, %rsi	# D.6911,
	movq	%rax, %rdi	# D.6911,
	call	SeqinfoCopy	#
	.loc 1 604 0 discriminator 2
	addl	$1, -64(%rbp)	#, idx
.L142:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# idx, tmp343
	cmpl	-100(%rbp), %eax	# nseq, tmp343
	jl	.L143	#,
	.loc 1 607 0 is_stmt 1
	movq	-48(%rbp), %rax	# rlen, tmp344
	movq	%rax, %rdi	# tmp344,
	call	free	#
	.loc 1 608 0
	movq	-32(%rbp), %rax	# master_ins, tmp345
	movq	%rax, %rdi	# tmp345,
	call	free	#
	.loc 1 609 0
	movl	-100(%rbp), %edx	# nseq, tmp346
	movq	-40(%rbp), %rax	# ins, tmp347
	movl	%edx, %esi	# tmp346,
	movq	%rax, %rdi	# tmp347,
	call	Free2DArray	#
	.loc 1 610 0
	movq	-120(%rbp), %rax	# ret_aseqs, tmp348
	movq	-24(%rbp), %rdx	# aseqs, tmp349
	movq	%rdx, (%rax)	# tmp349, *ret_aseqs_254(D)
	.loc 1 611 0
	movl	$1, %eax	#, D.6904
	.loc 1 612 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	RandomAlignment, .-RandomAlignment
	.globl	AlignmentHomogenousGapsym
	.type	AlignmentHomogenousGapsym, @function
AlignmentHomogenousGapsym:
.LFB13:
	.loc 1 636 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# aseq, aseq
	movl	%esi, -28(%rbp)	# nseq, nseq
	movl	%edx, -32(%rbp)	# alen, alen
	movl	%ecx, %eax	# gapsym, tmp100
	movb	%al, -36(%rbp)	# tmp100, gapsym
	.loc 1 639 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L146	#
.L151:
	.loc 1 640 0
	movl	$0, -4(%rbp)	#, apos
	jmp	.L147	#
.L150:
	.loc 1 641 0
	movl	-8(%rbp), %eax	# i, tmp101
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp102
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_10, D.6915
	movl	-4(%rbp), %eax	# apos, tmp103
	cltq
	addq	%rdx, %rax	# D.6915, D.6915
	movzbl	(%rax), %eax	# *_13, D.6917
	cmpb	$32, %al	#, D.6917
	je	.L148	#,
	.loc 1 641 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp104
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp105
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_17, D.6915
	movl	-4(%rbp), %eax	# apos, tmp106
	cltq
	addq	%rdx, %rax	# D.6915, D.6915
	movzbl	(%rax), %eax	# *_20, D.6917
	cmpb	$46, %al	#, D.6917
	je	.L148	#,
	.loc 1 641 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp108
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_24, D.6915
	movl	-4(%rbp), %eax	# apos, tmp109
	cltq
	addq	%rdx, %rax	# D.6915, D.6915
	movzbl	(%rax), %eax	# *_27, D.6917
	cmpb	$95, %al	#, D.6917
	je	.L148	#,
	movl	-8(%rbp), %eax	# i, tmp110
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp111
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_31, D.6915
	movl	-4(%rbp), %eax	# apos, tmp112
	cltq
	addq	%rdx, %rax	# D.6915, D.6915
	movzbl	(%rax), %eax	# *_34, D.6917
	cmpb	$45, %al	#, D.6917
	je	.L148	#,
	movl	-8(%rbp), %eax	# i, tmp113
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp114
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_38, D.6915
	movl	-4(%rbp), %eax	# apos, tmp115
	cltq
	addq	%rdx, %rax	# D.6915, D.6915
	movzbl	(%rax), %eax	# *_41, D.6917
	cmpb	$126, %al	#, D.6917
	jne	.L149	#,
.L148:
	movl	-8(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6913
	movq	-24(%rbp), %rax	# aseq, tmp117
	addq	%rdx, %rax	# D.6913, D.6914
	movq	(%rax), %rdx	# *_45, D.6915
	movl	-4(%rbp), %eax	# apos, tmp118
	cltq
	addq	%rax, %rdx	# D.6916, D.6915
	movzbl	-36(%rbp), %eax	# gapsym, tmp119
	movb	%al, (%rdx)	# tmp119, *_48
.L149:
	.loc 1 640 0 is_stmt 1
	addl	$1, -4(%rbp)	#, apos
.L147:
	.loc 1 640 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# apos, tmp120
	cmpl	-32(%rbp), %eax	# alen, tmp120
	jl	.L150	#,
	.loc 1 639 0 is_stmt 1
	addl	$1, -8(%rbp)	#, i
.L146:
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp121
	cmpl	-28(%rbp), %eax	# nseq, tmp121
	jl	.L151	#,
	.loc 1 642 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	AlignmentHomogenousGapsym, .-AlignmentHomogenousGapsym
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC2:
	.long	0
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "msa.h"
	.file 8 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc3a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF130
	.byte	0x1
	.long	.LASF131
	.long	.LASF132
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
	.long	.LASF133
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
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x30
	.long	0x302
	.uleb128 0xe
	.long	.LASF49
	.sleb128 256
	.uleb128 0xe
	.long	.LASF50
	.sleb128 512
	.uleb128 0xe
	.long	.LASF51
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF52
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF53
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF54
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF55
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF56
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF57
	.sleb128 1
	.uleb128 0xe
	.long	.LASF58
	.sleb128 2
	.uleb128 0xe
	.long	.LASF59
	.sleb128 4
	.uleb128 0xe
	.long	.LASF60
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0xf
	.long	.LASF63
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x3b2
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x56
	.long	0x3b2
	.byte	0x4
	.uleb128 0x10
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x3b2
	.byte	0x44
	.uleb128 0x10
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x3b2
	.byte	0x84
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x59
	.long	0x3c2
	.byte	0xc4
	.uleb128 0x11
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF67
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x12
	.long	.LASF68
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x12
	.long	.LASF69
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x12
	.long	.LASF70
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0x11
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0x11
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3c2
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3d2
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0x6
	.byte	0x62
	.long	0x310
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x7
	.long	.LASF72
	.byte	0x68
	.byte	0x7
	.byte	0x41
	.long	0x4bf
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x42
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x43
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x44
	.long	0x62
	.byte	0x8
	.uleb128 0x10
	.string	"wgt"
	.byte	0x7
	.byte	0x45
	.long	0x4bf
	.byte	0x10
	.uleb128 0x10
	.string	"cs"
	.byte	0x7
	.byte	0x46
	.long	0x8f
	.byte	0x18
	.uleb128 0x10
	.string	"rf"
	.byte	0x7
	.byte	0x47
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x48
	.long	0x4c5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x4b
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x4c
	.long	0x8f
	.byte	0x38
	.uleb128 0x10
	.string	"acc"
	.byte	0x7
	.byte	0x4d
	.long	0x8f
	.byte	0x40
	.uleb128 0x10
	.string	"au"
	.byte	0x7
	.byte	0x4e
	.long	0x8f
	.byte	0x48
	.uleb128 0x10
	.string	"tc1"
	.byte	0x7
	.byte	0x4f
	.long	0x302
	.byte	0x50
	.uleb128 0x10
	.string	"tc2"
	.byte	0x7
	.byte	0x4f
	.long	0x302
	.byte	0x54
	.uleb128 0x10
	.string	"nc1"
	.byte	0x7
	.byte	0x50
	.long	0x302
	.byte	0x58
	.uleb128 0x10
	.string	"nc2"
	.byte	0x7
	.byte	0x50
	.long	0x302
	.byte	0x5c
	.uleb128 0x10
	.string	"ga1"
	.byte	0x7
	.byte	0x51
	.long	0x302
	.byte	0x60
	.uleb128 0x10
	.string	"ga2"
	.byte	0x7
	.byte	0x51
	.long	0x302
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x302
	.uleb128 0x6
	.byte	0x8
	.long	0x310
	.uleb128 0x2
	.long	.LASF76
	.byte	0x7
	.byte	0x53
	.long	0x3e9
	.uleb128 0x6
	.byte	0x8
	.long	0x3e3
	.uleb128 0x6
	.byte	0x8
	.long	0x3d2
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x2b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x555
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x2b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x2b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x2b
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x2b
	.long	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF79
	.byte	0x1
	.byte	0x2d
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"idx"
	.byte	0x1
	.byte	0x2e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4cb
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0x50
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x587
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x50
	.long	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF82
	.byte	0x1
	.byte	0x69
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd
	.uleb128 0x14
	.long	.LASF83
	.byte	0x1
	.byte	0x69
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x69
	.long	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.byte	0x90
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x667
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0x90
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x90
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x90
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"col"
	.byte	0x1
	.byte	0x92
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x93
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.long	.LASF86
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0x95
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.byte	0xbe
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e8
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0xbe
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0xbe
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0xbe
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0xbe
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0xc0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"idx"
	.byte	0x1
	.byte	0xc1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.byte	0xed
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x76d
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0xed
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0xed
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.string	"ss"
	.byte	0x1
	.byte	0xed
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.byte	0xed
	.long	0x3e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"new"
	.byte	0x1
	.byte	0xef
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0xf0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.value	0x113
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fa
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.value	0x113
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.value	0x113
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1c
	.string	"ss"
	.byte	0x1
	.value	0x113
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF93
	.byte	0x1
	.value	0x113
	.long	0x3e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"new"
	.byte	0x1
	.value	0x115
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x116
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.value	0x116
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1f
	.long	.LASF97
	.byte	0x1
	.value	0x131
	.long	0x62
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x83b
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.value	0x131
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.value	0x133
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF99
	.byte	0x1
	.value	0x14d
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x9da
	.uleb128 0x1c
	.string	"ofp"
	.byte	0x1
	.value	0x14d
	.long	0x3dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.value	0x14e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.long	.LASF101
	.byte	0x1
	.value	0x14e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1b
	.long	.LASF102
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.value	0x14f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.value	0x14f
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.value	0x14f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"pam"
	.byte	0x1
	.value	0x150
	.long	0x9da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x1
	.value	0x150
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.value	0x152
	.long	0x9e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.value	0x153
	.long	0x9e0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x154
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x1
	.value	0x155
	.long	0x9f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.value	0x156
	.long	0x9f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.value	0x157
	.long	0x9f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.string	"s1"
	.byte	0x1
	.value	0x158
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1d
	.string	"s2"
	.byte	0x1
	.value	0x158
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1e
	.long	.LASF113
	.byte	0x1
	.value	0x159
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1e
	.long	.LASF114
	.byte	0x1
	.value	0x159
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.value	0x15a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.value	0x15a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x1
	.value	0x15b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x15b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x15c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xb
	.long	0x95
	.long	0x9f0
	.uleb128 0xc
	.long	0x86
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xa00
	.uleb128 0xc
	.long	0x86
	.byte	0x3c
	.byte	0
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.value	0x1af
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6e
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.value	0x1af
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.value	0x1af
	.long	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x1b1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x1
	.value	0x1b2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x1b3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x1
	.value	0x202
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xbbb
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.value	0x202
	.long	0x3e3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x1
	.value	0x202
	.long	0x4dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.value	0x202
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x1c
	.string	"pop"
	.byte	0x1
	.value	0x202
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.string	"pex"
	.byte	0x1
	.value	0x202
	.long	0x302
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1b
	.long	.LASF123
	.byte	0x1
	.value	0x203
	.long	0x4d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.value	0x203
	.long	0x555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.long	.LASF83
	.byte	0x1
	.value	0x205
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF73
	.byte	0x1
	.value	0x206
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.value	0x207
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"M"
	.byte	0x1
	.value	0x208
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1d
	.string	"ins"
	.byte	0x1
	.value	0x209
	.long	0x9da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.value	0x20a
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x20b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.value	0x20b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x20b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.value	0x20c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0x20d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF127
	.byte	0x1
	.value	0x20e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.value	0x27b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xc32
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.value	0x27b
	.long	0x3e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.value	0x27b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.value	0x27b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x1
	.value	0x27b
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x27d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x27d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x21
	.long	.LASF134
	.byte	0x6
	.byte	0x3b
	.long	0x62
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
.LASF8:
	.string	"__off_t"
.LASF126:
	.string	"count"
.LASF56:
	.string	"_ISgraph"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF93:
	.string	"ret_s"
.LASF32:
	.string	"_shortbuf"
.LASF121:
	.string	"RandomAlignment"
.LASF97:
	.string	"DealignedLength"
.LASF112:
	.string	"buf2"
.LASF54:
	.string	"_ISspace"
.LASF120:
	.string	"mpos"
.LASF63:
	.string	"seqinfo_s"
.LASF70:
	.string	"type"
.LASF20:
	.string	"_IO_buf_base"
.LASF74:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF89:
	.string	"SAMizeAlignmentByGapFrac"
.LASF51:
	.string	"_ISalpha"
.LASF52:
	.string	"_ISdigit"
.LASF107:
	.string	"sname1"
.LASF72:
	.string	"aliinfo_s"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"AllocAlignment"
.LASF71:
	.string	"SQINFO"
.LASF13:
	.string	"_flags"
.LASF98:
	.string	"rlen"
.LASF75:
	.string	"sqinfo"
.LASF60:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF87:
	.string	"sawgap"
.LASF69:
	.string	"olen"
.LASF115:
	.string	"rpos1"
.LASF116:
	.string	"rpos2"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF57:
	.string	"_ISblank"
.LASF59:
	.string	"_ISpunct"
.LASF129:
	.string	"gapsym"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF65:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF91:
	.string	"apos"
.LASF108:
	.string	"sname2"
.LASF77:
	.string	"ret_aseq"
.LASF46:
	.string	"_pos"
.LASF84:
	.string	"SAMizeAlignment"
.LASF95:
	.string	"MakeAlignedString"
.LASF22:
	.string	"_IO_save_base"
.LASF104:
	.string	"name2"
.LASF86:
	.string	"sawupper"
.LASF33:
	.string	"_lock"
.LASF106:
	.string	"indent"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF119:
	.string	"MingapAlignment"
.LASF100:
	.string	"aseq1"
.LASF110:
	.string	"buf1"
.LASF10:
	.string	"sizetype"
.LASF79:
	.string	"aseq"
.LASF76:
	.string	"AINFO"
.LASF88:
	.string	"gapchar"
.LASF127:
	.string	"minlen"
.LASF66:
	.string	"desc"
.LASF14:
	.string	"_IO_read_ptr"
.LASF9:
	.string	"__off64_t"
.LASF133:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF99:
	.string	"WritePairwiseAlignment"
.LASF122:
	.string	"rseqs"
.LASF101:
	.string	"name1"
.LASF83:
	.string	"aseqs"
.LASF61:
	.string	"float"
.LASF125:
	.string	"statepos"
.LASF85:
	.string	"sawlower"
.LASF78:
	.string	"ainfo"
.LASF25:
	.string	"_markers"
.LASF96:
	.string	"MakeDealignedString"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF117:
	.string	"rawcount1"
.LASF118:
	.string	"rawcount2"
.LASF134:
	.string	"squid_errno"
.LASF82:
	.string	"FreeAlignment"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF68:
	.string	"stop"
.LASF92:
	.string	"ngap"
.LASF62:
	.string	"double"
.LASF103:
	.string	"aseq2"
.LASF11:
	.string	"char"
.LASF58:
	.string	"_IScntrl"
.LASF73:
	.string	"alen"
.LASF90:
	.string	"maxgap"
.LASF53:
	.string	"_ISxdigit"
.LASF131:
	.string	"alignio.c"
.LASF50:
	.string	"_ISlower"
.LASF44:
	.string	"_next"
.LASF94:
	.string	"rpos"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF2:
	.string	"short unsigned int"
.LASF124:
	.string	"master_ins"
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
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF102:
	.string	"spos1"
.LASF105:
	.string	"spos2"
.LASF81:
	.string	"InitAinfo"
.LASF128:
	.string	"AlignmentHomogenousGapsym"
.LASF111:
	.string	"bufmid"
.LASF49:
	.string	"_ISupper"
.LASF113:
	.string	"count1"
.LASF114:
	.string	"count2"
.LASF130:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF123:
	.string	"ret_aseqs"
.LASF64:
	.string	"flags"
.LASF132:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF67:
	.string	"start"
.LASF17:
	.string	"_IO_write_base"
.LASF55:
	.string	"_ISprint"
.LASF109:
	.string	"still_going"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
