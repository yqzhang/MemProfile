	.file	"aligneval.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 aligneval.c -mtune=generic -march=x86-64 -g
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
	.globl	ComparePairAlignments
	.type	ComparePairAlignments, @function
ComparePairAlignments:
.LFB2:
	.file 1 "aligneval.c"
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# known1, known1
	movq	%rsi, -64(%rbp)	# known2, known2
	movq	%rdx, -72(%rbp)	# calc1, calc1
	movq	%rcx, -80(%rbp)	# calc2, calc2
	.loc 1 104 0
	leaq	-44(%rbp), %rcx	#, tmp76
	leaq	-16(%rbp), %rdx	#, tmp77
	movq	-80(%rbp), %rsi	# calc2, tmp78
	movq	-72(%rbp), %rax	# calc1, tmp79
	movq	%rax, %rdi	# tmp79,
	call	make_alilist	#
	testl	%eax, %eax	# D.6404
	jne	.L2	#,
	.loc 1 104 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6403
	jmp	.L8	#
.L2:
	.loc 1 105 0 is_stmt 1
	leaq	-40(%rbp), %rcx	#, tmp80
	leaq	-8(%rbp), %rdx	#, tmp81
	movq	-72(%rbp), %rsi	# calc1, tmp82
	movq	-80(%rbp), %rax	# calc2, tmp83
	movq	%rax, %rdi	# tmp83,
	call	make_alilist	#
	testl	%eax, %eax	# D.6404
	jne	.L4	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6403
	jmp	.L8	#
.L4:
	.loc 1 106 0 is_stmt 1
	leaq	-44(%rbp), %rcx	#, tmp84
	leaq	-32(%rbp), %rdx	#, tmp85
	movq	-64(%rbp), %rsi	# known2, tmp86
	movq	-56(%rbp), %rax	# known1, tmp87
	movq	%rax, %rdi	# tmp87,
	call	make_alilist	#
	testl	%eax, %eax	# D.6404
	jne	.L5	#,
	.loc 1 106 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6403
	jmp	.L8	#
.L5:
	.loc 1 107 0 is_stmt 1
	leaq	-40(%rbp), %rcx	#, tmp88
	leaq	-24(%rbp), %rdx	#, tmp89
	movq	-56(%rbp), %rsi	# known1, tmp90
	movq	-64(%rbp), %rax	# known2, tmp91
	movq	%rax, %rdi	# tmp91,
	call	make_alilist	#
	testl	%eax, %eax	# D.6404
	jne	.L6	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6403
	jmp	.L8	#
.L6:
	.loc 1 108 0 is_stmt 1
	movl	-40(%rbp), %r9d	# len2, len2.0
	movl	-44(%rbp), %r8d	# len1, len1.1
	movq	-8(%rbp), %rcx	# tlist2, tlist2.2
	movq	-16(%rbp), %rdx	# tlist1, tlist1.3
	movq	-24(%rbp), %rsi	# klist2, klist2.4
	movq	-32(%rbp), %rax	# klist1, klist1.5
	leaq	-36(%rbp), %rdi	#, tmp92
	movq	%rdi, (%rsp)	# tmp92,
	movq	%rax, %rdi	# klist1.5,
	call	compare_lists	#
	testl	%eax, %eax	# D.6404
	jne	.L7	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6403
	jmp	.L8	#
.L7:
	.loc 1 110 0 is_stmt 1
	movq	-32(%rbp), %rax	# klist1, klist1.6
	movq	%rax, %rdi	# klist1.6,
	call	free	#
	.loc 1 111 0
	movq	-24(%rbp), %rax	# klist2, klist2.7
	movq	%rax, %rdi	# klist2.7,
	call	free	#
	.loc 1 112 0
	movq	-16(%rbp), %rax	# tlist1, tlist1.8
	movq	%rax, %rdi	# tlist1.8,
	call	free	#
	.loc 1 113 0
	movq	-8(%rbp), %rax	# tlist2, tlist2.9
	movq	%rax, %rdi	# tlist2.9,
	call	free	#
	.loc 1 114 0
	movl	-36(%rbp), %eax	# score, D.6403
.L8:
	.loc 1 115 0
	movl	%eax, -84(%rbp)	# <retval>, %sfp
	movss	-84(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ComparePairAlignments, .-ComparePairAlignments
	.globl	CompareRefPairAlignments
	.type	CompareRefPairAlignments, @function
CompareRefPairAlignments:
.LFB3:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -56(%rbp)	# ref, ref
	movq	%rsi, -64(%rbp)	# known1, known1
	movq	%rdx, -72(%rbp)	# known2, known2
	movq	%rcx, -80(%rbp)	# calc1, calc1
	movq	%r8, -88(%rbp)	# calc2, calc2
	.loc 1 142 0
	leaq	-16(%rbp), %r9	#, tmp76
	movq	-88(%rbp), %r8	# calc2, tmp77
	movq	-80(%rbp), %rcx	# calc1, tmp78
	movq	-72(%rbp), %rdx	# known2, tmp79
	movq	-64(%rbp), %rsi	# known1, tmp80
	movq	-56(%rbp), %rax	# ref, tmp81
	leaq	-44(%rbp), %rdi	#, tmp82
	movq	%rdi, (%rsp)	# tmp82,
	movq	%rax, %rdi	# tmp81,
	call	make_ref_alilist	#
	testl	%eax, %eax	# D.6407
	jne	.L10	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6406
	jmp	.L16	#
.L10:
	.loc 1 143 0 is_stmt 1
	leaq	-8(%rbp), %r9	#, tmp83
	movq	-80(%rbp), %r8	# calc1, tmp84
	movq	-88(%rbp), %rcx	# calc2, tmp85
	movq	-64(%rbp), %rdx	# known1, tmp86
	movq	-72(%rbp), %rsi	# known2, tmp87
	movq	-56(%rbp), %rax	# ref, tmp88
	leaq	-40(%rbp), %rdi	#, tmp89
	movq	%rdi, (%rsp)	# tmp89,
	movq	%rax, %rdi	# tmp88,
	call	make_ref_alilist	#
	testl	%eax, %eax	# D.6407
	jne	.L12	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6406
	jmp	.L16	#
.L12:
	.loc 1 144 0 is_stmt 1
	leaq	-32(%rbp), %r9	#, tmp90
	movq	-72(%rbp), %r8	# known2, tmp91
	movq	-64(%rbp), %rcx	# known1, tmp92
	movq	-72(%rbp), %rdx	# known2, tmp93
	movq	-64(%rbp), %rsi	# known1, tmp94
	movq	-56(%rbp), %rax	# ref, tmp95
	leaq	-44(%rbp), %rdi	#, tmp96
	movq	%rdi, (%rsp)	# tmp96,
	movq	%rax, %rdi	# tmp95,
	call	make_ref_alilist	#
	testl	%eax, %eax	# D.6407
	jne	.L13	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6406
	jmp	.L16	#
.L13:
	.loc 1 145 0 is_stmt 1
	leaq	-24(%rbp), %r9	#, tmp97
	movq	-64(%rbp), %r8	# known1, tmp98
	movq	-72(%rbp), %rcx	# known2, tmp99
	movq	-64(%rbp), %rdx	# known1, tmp100
	movq	-72(%rbp), %rsi	# known2, tmp101
	movq	-56(%rbp), %rax	# ref, tmp102
	leaq	-40(%rbp), %rdi	#, tmp103
	movq	%rdi, (%rsp)	# tmp103,
	movq	%rax, %rdi	# tmp102,
	call	make_ref_alilist	#
	testl	%eax, %eax	# D.6407
	jne	.L14	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6406
	jmp	.L16	#
.L14:
	.loc 1 146 0 is_stmt 1
	movl	-40(%rbp), %r9d	# len2, len2.10
	movl	-44(%rbp), %r8d	# len1, len1.11
	movq	-8(%rbp), %rcx	# tlist2, tlist2.12
	movq	-16(%rbp), %rdx	# tlist1, tlist1.13
	movq	-24(%rbp), %rsi	# klist2, klist2.14
	movq	-32(%rbp), %rax	# klist1, klist1.15
	leaq	-36(%rbp), %rdi	#, tmp104
	movq	%rdi, (%rsp)	# tmp104,
	movq	%rax, %rdi	# klist1.15,
	call	compare_lists	#
	testl	%eax, %eax	# D.6407
	jne	.L15	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6406
	jmp	.L16	#
.L15:
	.loc 1 148 0 is_stmt 1
	movq	-32(%rbp), %rax	# klist1, klist1.16
	movq	%rax, %rdi	# klist1.16,
	call	free	#
	.loc 1 149 0
	movq	-24(%rbp), %rax	# klist2, klist2.17
	movq	%rax, %rdi	# klist2.17,
	call	free	#
	.loc 1 150 0
	movq	-16(%rbp), %rax	# tlist1, tlist1.18
	movq	%rax, %rdi	# tlist1.18,
	call	free	#
	.loc 1 151 0
	movq	-8(%rbp), %rax	# tlist2, tlist2.19
	movq	%rax, %rdi	# tlist2.19,
	call	free	#
	.loc 1 152 0
	movl	-36(%rbp), %eax	# score, D.6406
.L16:
	.loc 1 153 0
	movl	%eax, -92(%rbp)	# <retval>, %sfp
	movss	-92(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	CompareRefPairAlignments, .-CompareRefPairAlignments
	.section	.rodata
.LC1:
	.string	"aligneval.c"
	.text
	.type	make_alilist, @function
make_alilist:
.LFB4:
	.loc 1 171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# s1, s1
	movq	%rsi, -48(%rbp)	# s2, s2
	movq	%rdx, -56(%rbp)	# ret_s1_list, ret_s1_list
	movq	%rcx, -64(%rbp)	# ret_listlen, ret_listlen
	.loc 1 179 0
	movq	-40(%rbp), %rax	# s1, tmp115
	movq	%rax, %rdi	# tmp115,
	call	strlen	#
	salq	$2, %rax	#, D.6408
	movq	%rax, %rdx	# D.6408,
	movl	$179, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp116, s1_list
	.loc 1 180 0
	movl	$0, -12(%rbp)	#, r2
	movl	-12(%rbp), %eax	# r2, tmp117
	movl	%eax, -16(%rbp)	# tmp117, r1
	.loc 1 181 0
	movl	$0, -20(%rbp)	#, col
	jmp	.L18	#
.L23:
	.loc 1 186 0
	movl	-20(%rbp), %eax	# col, tmp118
	movslq	%eax, %rdx	# tmp118, D.6409
	movq	-40(%rbp), %rax	# s1, tmp119
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_18, D.6411
	cmpb	$32, %al	#, D.6411
	je	.L19	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# col, tmp120
	movslq	%eax, %rdx	# tmp120, D.6409
	movq	-40(%rbp), %rax	# s1, tmp121
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_21, D.6411
	cmpb	$46, %al	#, D.6411
	je	.L19	#,
	movl	-20(%rbp), %eax	# col, tmp122
	movslq	%eax, %rdx	# tmp122, D.6409
	movq	-40(%rbp), %rax	# s1, tmp123
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_24, D.6411
	cmpb	$95, %al	#, D.6411
	je	.L19	#,
	movl	-20(%rbp), %eax	# col, tmp124
	movslq	%eax, %rdx	# tmp124, D.6409
	movq	-40(%rbp), %rax	# s1, tmp125
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_27, D.6411
	cmpb	$45, %al	#, D.6411
	je	.L19	#,
	movl	-20(%rbp), %eax	# col, tmp126
	movslq	%eax, %rdx	# tmp126, D.6409
	movq	-40(%rbp), %rax	# s1, tmp127
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_30, D.6411
	cmpb	$126, %al	#, D.6411
	je	.L19	#,
	.loc 1 188 0 is_stmt 1
	movl	-16(%rbp), %eax	# r1, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6408
	movq	-8(%rbp), %rax	# s1_list, tmp129
	addq	%rax, %rdx	# tmp129, D.6412
	movl	-20(%rbp), %eax	# col, tmp130
	movslq	%eax, %rcx	# tmp130, D.6409
	movq	-48(%rbp), %rax	# s2, tmp131
	addq	%rcx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_37, D.6411
	cmpb	$32, %al	#, D.6411
	je	.L20	#,
	.loc 1 188 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# col, tmp132
	movslq	%eax, %rcx	# tmp132, D.6409
	movq	-48(%rbp), %rax	# s2, tmp133
	addq	%rcx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_40, D.6411
	cmpb	$46, %al	#, D.6411
	je	.L20	#,
	movl	-20(%rbp), %eax	# col, tmp134
	movslq	%eax, %rcx	# tmp134, D.6409
	movq	-48(%rbp), %rax	# s2, tmp135
	addq	%rcx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_43, D.6411
	cmpb	$95, %al	#, D.6411
	je	.L20	#,
	movl	-20(%rbp), %eax	# col, tmp136
	movslq	%eax, %rcx	# tmp136, D.6409
	movq	-48(%rbp), %rax	# s2, tmp137
	addq	%rcx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_46, D.6411
	cmpb	$45, %al	#, D.6411
	je	.L20	#,
	movl	-20(%rbp), %eax	# col, tmp138
	movslq	%eax, %rcx	# tmp138, D.6409
	movq	-48(%rbp), %rax	# s2, tmp139
	addq	%rcx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_49, D.6411
	cmpb	$126, %al	#, D.6411
	je	.L20	#,
	movl	-12(%rbp), %eax	# r2, iftmp.20
	jmp	.L21	#
.L20:
	.loc 1 188 0 discriminator 2
	movl	$-1, %eax	#, iftmp.20
.L21:
	.loc 1 188 0 discriminator 3
	movl	%eax, (%rdx)	# iftmp.20, *_34
	.loc 1 189 0 is_stmt 1 discriminator 3
	addl	$1, -16(%rbp)	#, r1
.L19:
	.loc 1 194 0
	movl	-20(%rbp), %eax	# col, tmp140
	movslq	%eax, %rdx	# tmp140, D.6409
	movq	-48(%rbp), %rax	# s2, tmp141
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_55, D.6411
	cmpb	$32, %al	#, D.6411
	je	.L22	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# col, tmp142
	movslq	%eax, %rdx	# tmp142, D.6409
	movq	-48(%rbp), %rax	# s2, tmp143
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_58, D.6411
	cmpb	$46, %al	#, D.6411
	je	.L22	#,
	movl	-20(%rbp), %eax	# col, tmp144
	movslq	%eax, %rdx	# tmp144, D.6409
	movq	-48(%rbp), %rax	# s2, tmp145
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_61, D.6411
	cmpb	$95, %al	#, D.6411
	je	.L22	#,
	movl	-20(%rbp), %eax	# col, tmp146
	movslq	%eax, %rdx	# tmp146, D.6409
	movq	-48(%rbp), %rax	# s2, tmp147
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_64, D.6411
	cmpb	$45, %al	#, D.6411
	je	.L22	#,
	movl	-20(%rbp), %eax	# col, tmp148
	movslq	%eax, %rdx	# tmp148, D.6409
	movq	-48(%rbp), %rax	# s2, tmp149
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_67, D.6411
	cmpb	$126, %al	#, D.6411
	je	.L22	#,
	.loc 1 195 0 is_stmt 1
	addl	$1, -12(%rbp)	#, r2
.L22:
	.loc 1 181 0
	addl	$1, -20(%rbp)	#, col
.L18:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# col, tmp150
	movslq	%eax, %rdx	# tmp150, D.6409
	movq	-40(%rbp), %rax	# s1, tmp151
	addq	%rdx, %rax	# D.6409, D.6410
	movzbl	(%rax), %eax	# *_15, D.6411
	testb	%al, %al	# D.6411
	jne	.L23	#,
	.loc 1 198 0 is_stmt 1
	movq	-64(%rbp), %rax	# ret_listlen, tmp152
	movl	-16(%rbp), %edx	# r1, tmp153
	movl	%edx, (%rax)	# tmp153, *ret_listlen_71(D)
	.loc 1 199 0
	movq	-56(%rbp), %rax	# ret_s1_list, tmp154
	movq	-8(%rbp), %rdx	# s1_list, tmp155
	movq	%rdx, (%rax)	# tmp155, *ret_s1_list_72(D)
	.loc 1 200 0
	movl	$1, %eax	#, D.6413
	.loc 1 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	make_alilist, .-make_alilist
	.type	make_ref_alilist, @function
make_ref_alilist:
.LFB5:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# ref, ref
	movq	%rsi, -48(%rbp)	# k1, k1
	movq	%rdx, -56(%rbp)	# k2, k2
	movq	%rcx, -64(%rbp)	# s1, s1
	movq	%r8, -72(%rbp)	# s2, s2
	movq	%r9, -80(%rbp)	# ret_s1_list, ret_s1_list
	.loc 1 236 0
	movq	-64(%rbp), %rax	# s1, tmp163
	movq	%rax, %rdi	# tmp163,
	call	strlen	#
	salq	$2, %rax	#, D.6415
	movq	%rax, %rdx	# D.6415,
	movl	$236, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp164, s1_list
	.loc 1 237 0
	movq	-64(%rbp), %rax	# s1, tmp165
	movq	%rax, %rdi	# tmp165,
	call	strlen	#
	salq	$2, %rax	#, D.6415
	movq	%rax, %rdx	# D.6415,
	movl	$237, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp166, canons1
	.loc 1 243 0
	movl	$0, -28(%rbp)	#, r1
	.loc 1 244 0
	movl	$0, -32(%rbp)	#, col
	jmp	.L26	#
.L28:
	.loc 1 246 0
	movl	-32(%rbp), %eax	# col, tmp167
	movslq	%eax, %rdx	# tmp167, D.6416
	movq	-48(%rbp), %rax	# k1, tmp168
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_26, D.6418
	cmpb	$32, %al	#, D.6418
	je	.L27	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp169
	movslq	%eax, %rdx	# tmp169, D.6416
	movq	-48(%rbp), %rax	# k1, tmp170
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_29, D.6418
	cmpb	$46, %al	#, D.6418
	je	.L27	#,
	movl	-32(%rbp), %eax	# col, tmp171
	movslq	%eax, %rdx	# tmp171, D.6416
	movq	-48(%rbp), %rax	# k1, tmp172
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_32, D.6418
	cmpb	$95, %al	#, D.6418
	je	.L27	#,
	movl	-32(%rbp), %eax	# col, tmp173
	movslq	%eax, %rdx	# tmp173, D.6416
	movq	-48(%rbp), %rax	# k1, tmp174
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_35, D.6418
	cmpb	$45, %al	#, D.6418
	je	.L27	#,
	movl	-32(%rbp), %eax	# col, tmp175
	movslq	%eax, %rdx	# tmp175, D.6416
	movq	-48(%rbp), %rax	# k1, tmp176
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_38, D.6418
	cmpb	$126, %al	#, D.6418
	je	.L27	#,
	.loc 1 248 0 is_stmt 1
	movl	-28(%rbp), %eax	# r1, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6415
	movq	-8(%rbp), %rax	# canons1, tmp178
	addq	%rax, %rdx	# tmp178, D.6419
	movl	-32(%rbp), %eax	# col, tmp179
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6415
	movq	-40(%rbp), %rax	# ref, tmp180
	addq	%rcx, %rax	# D.6415, D.6419
	movl	(%rax), %eax	# *_46, D.6420
	testl	%eax, %eax	# D.6420
	setne	%al	#, D.6421
	movzbl	%al, %eax	# D.6421, D.6420
	movl	%eax, (%rdx)	# D.6420, *_42
	.loc 1 249 0
	addl	$1, -28(%rbp)	#, r1
.L27:
	.loc 1 244 0
	addl	$1, -32(%rbp)	#, col
.L26:
	.loc 1 244 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp181
	movslq	%eax, %rdx	# tmp181, D.6416
	movq	-48(%rbp), %rax	# k1, tmp182
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_23, D.6418
	testb	%al, %al	# D.6418
	jne	.L28	#,
	.loc 1 258 0 is_stmt 1
	movl	$0, -20(%rbp)	#, lpos
	movl	-20(%rbp), %eax	# lpos, tmp183
	movl	%eax, -24(%rbp)	# tmp183, r2
	movl	-24(%rbp), %eax	# r2, tmp184
	movl	%eax, -28(%rbp)	# tmp184, r1
	.loc 1 259 0
	movl	$0, -32(%rbp)	#, col
	jmp	.L29	#
.L35:
	.loc 1 261 0
	movl	-32(%rbp), %eax	# col, tmp185
	movslq	%eax, %rdx	# tmp185, D.6416
	movq	-64(%rbp), %rax	# s1, tmp186
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_60, D.6418
	cmpb	$32, %al	#, D.6418
	je	.L30	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp187
	movslq	%eax, %rdx	# tmp187, D.6416
	movq	-64(%rbp), %rax	# s1, tmp188
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_63, D.6418
	cmpb	$46, %al	#, D.6418
	je	.L30	#,
	movl	-32(%rbp), %eax	# col, tmp189
	movslq	%eax, %rdx	# tmp189, D.6416
	movq	-64(%rbp), %rax	# s1, tmp190
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_66, D.6418
	cmpb	$95, %al	#, D.6418
	je	.L30	#,
	movl	-32(%rbp), %eax	# col, tmp191
	movslq	%eax, %rdx	# tmp191, D.6416
	movq	-64(%rbp), %rax	# s1, tmp192
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_69, D.6418
	cmpb	$45, %al	#, D.6418
	je	.L30	#,
	movl	-32(%rbp), %eax	# col, tmp193
	movslq	%eax, %rdx	# tmp193, D.6416
	movq	-64(%rbp), %rax	# s1, tmp194
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_72, D.6418
	cmpb	$126, %al	#, D.6418
	je	.L30	#,
	movl	-28(%rbp), %eax	# r1, tmp195
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6415
	movq	-8(%rbp), %rax	# canons1, tmp196
	addq	%rdx, %rax	# D.6415, D.6419
	movl	(%rax), %eax	# *_76, D.6420
	testl	%eax, %eax	# D.6420
	je	.L30	#,
	.loc 1 263 0 is_stmt 1
	movl	-20(%rbp), %eax	# lpos, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6415
	movq	-16(%rbp), %rax	# s1_list, tmp198
	addq	%rax, %rdx	# tmp198, D.6419
	movl	-32(%rbp), %eax	# col, tmp199
	movslq	%eax, %rcx	# tmp199, D.6416
	movq	-72(%rbp), %rax	# s2, tmp200
	addq	%rcx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_83, D.6418
	cmpb	$32, %al	#, D.6418
	je	.L31	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp201
	movslq	%eax, %rcx	# tmp201, D.6416
	movq	-72(%rbp), %rax	# s2, tmp202
	addq	%rcx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_86, D.6418
	cmpb	$46, %al	#, D.6418
	je	.L31	#,
	movl	-32(%rbp), %eax	# col, tmp203
	movslq	%eax, %rcx	# tmp203, D.6416
	movq	-72(%rbp), %rax	# s2, tmp204
	addq	%rcx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_89, D.6418
	cmpb	$95, %al	#, D.6418
	je	.L31	#,
	movl	-32(%rbp), %eax	# col, tmp205
	movslq	%eax, %rcx	# tmp205, D.6416
	movq	-72(%rbp), %rax	# s2, tmp206
	addq	%rcx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_92, D.6418
	cmpb	$45, %al	#, D.6418
	je	.L31	#,
	movl	-32(%rbp), %eax	# col, tmp207
	movslq	%eax, %rcx	# tmp207, D.6416
	movq	-72(%rbp), %rax	# s2, tmp208
	addq	%rcx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_95, D.6418
	cmpb	$126, %al	#, D.6418
	je	.L31	#,
	movl	-24(%rbp), %eax	# r2, iftmp.21
	jmp	.L32	#
.L31:
	.loc 1 263 0 discriminator 2
	movl	$-1, %eax	#, iftmp.21
.L32:
	.loc 1 263 0 discriminator 3
	movl	%eax, (%rdx)	# iftmp.21, *_80
	.loc 1 264 0 is_stmt 1 discriminator 3
	addl	$1, -20(%rbp)	#, lpos
.L30:
	.loc 1 267 0
	movl	-32(%rbp), %eax	# col, tmp209
	movslq	%eax, %rdx	# tmp209, D.6416
	movq	-64(%rbp), %rax	# s1, tmp210
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_101, D.6418
	cmpb	$32, %al	#, D.6418
	je	.L33	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp211
	movslq	%eax, %rdx	# tmp211, D.6416
	movq	-64(%rbp), %rax	# s1, tmp212
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_104, D.6418
	cmpb	$46, %al	#, D.6418
	je	.L33	#,
	movl	-32(%rbp), %eax	# col, tmp213
	movslq	%eax, %rdx	# tmp213, D.6416
	movq	-64(%rbp), %rax	# s1, tmp214
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_107, D.6418
	cmpb	$95, %al	#, D.6418
	je	.L33	#,
	movl	-32(%rbp), %eax	# col, tmp215
	movslq	%eax, %rdx	# tmp215, D.6416
	movq	-64(%rbp), %rax	# s1, tmp216
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_110, D.6418
	cmpb	$45, %al	#, D.6418
	je	.L33	#,
	movl	-32(%rbp), %eax	# col, tmp217
	movslq	%eax, %rdx	# tmp217, D.6416
	movq	-64(%rbp), %rax	# s1, tmp218
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_113, D.6418
	cmpb	$126, %al	#, D.6418
	je	.L33	#,
	.loc 1 268 0 is_stmt 1
	addl	$1, -28(%rbp)	#, r1
.L33:
	.loc 1 269 0
	movl	-32(%rbp), %eax	# col, tmp219
	movslq	%eax, %rdx	# tmp219, D.6416
	movq	-72(%rbp), %rax	# s2, tmp220
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_117, D.6418
	cmpb	$32, %al	#, D.6418
	je	.L34	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp221
	movslq	%eax, %rdx	# tmp221, D.6416
	movq	-72(%rbp), %rax	# s2, tmp222
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_120, D.6418
	cmpb	$46, %al	#, D.6418
	je	.L34	#,
	movl	-32(%rbp), %eax	# col, tmp223
	movslq	%eax, %rdx	# tmp223, D.6416
	movq	-72(%rbp), %rax	# s2, tmp224
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_123, D.6418
	cmpb	$95, %al	#, D.6418
	je	.L34	#,
	movl	-32(%rbp), %eax	# col, tmp225
	movslq	%eax, %rdx	# tmp225, D.6416
	movq	-72(%rbp), %rax	# s2, tmp226
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_126, D.6418
	cmpb	$45, %al	#, D.6418
	je	.L34	#,
	movl	-32(%rbp), %eax	# col, tmp227
	movslq	%eax, %rdx	# tmp227, D.6416
	movq	-72(%rbp), %rax	# s2, tmp228
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_129, D.6418
	cmpb	$126, %al	#, D.6418
	je	.L34	#,
	.loc 1 270 0 is_stmt 1
	addl	$1, -24(%rbp)	#, r2
.L34:
	.loc 1 259 0
	addl	$1, -32(%rbp)	#, col
.L29:
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# col, tmp229
	movslq	%eax, %rdx	# tmp229, D.6416
	movq	-64(%rbp), %rax	# s1, tmp230
	addq	%rdx, %rax	# D.6416, D.6417
	movzbl	(%rax), %eax	# *_57, D.6418
	testb	%al, %al	# D.6418
	jne	.L35	#,
	.loc 1 273 0 is_stmt 1
	movq	-8(%rbp), %rax	# canons1, tmp231
	movq	%rax, %rdi	# tmp231,
	call	free	#
	.loc 1 274 0
	movq	16(%rbp), %rax	# ret_listlen, tmp232
	movl	-20(%rbp), %edx	# lpos, tmp233
	movl	%edx, (%rax)	# tmp233, *ret_listlen_133(D)
	.loc 1 275 0
	movq	-80(%rbp), %rax	# ret_s1_list, tmp234
	movq	-16(%rbp), %rdx	# s1_list, tmp235
	movq	%rdx, (%rax)	# tmp235, *ret_s1_list_134(D)
	.loc 1 276 0
	movl	$1, %eax	#, D.6420
	.loc 1 277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	make_ref_alilist, .-make_ref_alilist
	.type	compare_lists, @function
compare_lists:
.LFB6:
	.loc 1 296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# k1, k1
	movq	%rsi, -32(%rbp)	# k2, k2
	movq	%rdx, -40(%rbp)	# t1, t1
	movq	%rcx, -48(%rbp)	# t2, t2
	movl	%r8d, -52(%rbp)	# len1, len1
	movl	%r9d, -56(%rbp)	# len2, len2
	.loc 1 301 0
	movl	.LC2(%rip), %eax	#, tmp78
	movl	%eax, -8(%rbp)	# tmp78, tot
	movl	-8(%rbp), %eax	# tot, tmp79
	movl	%eax, -12(%rbp)	# tmp79, id
	.loc 1 302 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L38	#
.L40:
	.loc 1 304 0
	movss	-8(%rbp), %xmm1	# tot, tmp81
	movss	.LC3(%rip), %xmm0	#, tmp82
	addss	%xmm1, %xmm0	# tmp81, tmp80
	movss	%xmm0, -8(%rbp)	# tmp80, tot
	.loc 1 305 0
	movl	-4(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6422
	movq	-40(%rbp), %rax	# t1, tmp84
	addq	%rdx, %rax	# D.6422, D.6423
	movl	(%rax), %edx	# *_17, D.6424
	movl	-4(%rbp), %eax	# i, tmp85
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6422
	movq	-24(%rbp), %rax	# k1, tmp86
	addq	%rcx, %rax	# D.6422, D.6423
	movl	(%rax), %eax	# *_22, D.6424
	cmpl	%eax, %edx	# D.6424, D.6424
	jne	.L39	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movss	-12(%rbp), %xmm1	# id, tmp88
	movss	.LC3(%rip), %xmm0	#, tmp89
	addss	%xmm1, %xmm0	# tmp88, tmp87
	movss	%xmm0, -12(%rbp)	# tmp87, id
.L39:
	.loc 1 302 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L38:
	.loc 1 302 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp90
	cmpl	-52(%rbp), %eax	# len1, tmp90
	jl	.L40	#,
	.loc 1 308 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L41	#
.L43:
	.loc 1 310 0
	movss	-8(%rbp), %xmm1	# tot, tmp92
	movss	.LC3(%rip), %xmm0	#, tmp93
	addss	%xmm1, %xmm0	# tmp92, tmp91
	movss	%xmm0, -8(%rbp)	# tmp91, tot
	.loc 1 311 0
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6422
	movq	-32(%rbp), %rax	# k2, tmp95
	addq	%rdx, %rax	# D.6422, D.6423
	movl	(%rax), %edx	# *_32, D.6424
	movl	-4(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6422
	movq	-48(%rbp), %rax	# t2, tmp97
	addq	%rcx, %rax	# D.6422, D.6423
	movl	(%rax), %eax	# *_37, D.6424
	cmpl	%eax, %edx	# D.6424, D.6424
	jne	.L42	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movss	-12(%rbp), %xmm1	# id, tmp99
	movss	.LC3(%rip), %xmm0	#, tmp100
	addss	%xmm1, %xmm0	# tmp99, tmp98
	movss	%xmm0, -12(%rbp)	# tmp98, id
.L42:
	.loc 1 308 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L41:
	.loc 1 308 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-56(%rbp), %eax	# len2, tmp101
	jl	.L43	#,
	.loc 1 314 0 is_stmt 1
	movss	-12(%rbp), %xmm0	# id, tmp102
	divss	-8(%rbp), %xmm0	# tot, D.6425
	movq	16(%rbp), %rax	# ret_sc, tmp103
	movss	%xmm0, (%rax)	# D.6425, *ret_sc_42(D)
	.loc 1 315 0
	movl	$1, %eax	#, D.6424
	.loc 1 316 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	compare_lists, .-compare_lists
	.globl	CompareMultAlignments
	.type	CompareMultAlignments, @function
CompareMultAlignments:
.LFB7:
	.loc 1 335 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# kseqs, kseqs
	movq	%rsi, -32(%rbp)	# tseqs, tseqs
	movl	%edx, -36(%rbp)	# N, N
	.loc 1 338 0
	movl	.LC2(%rip), %eax	#, tmp86
	movl	%eax, -8(%rbp)	# tmp86, tot_score
	.loc 1 340 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L46	#
.L52:
	.loc 1 341 0
	movl	-16(%rbp), %eax	# i, tmp90
	addl	$1, %eax	#, tmp89
	movl	%eax, -12(%rbp)	# tmp89, j
	jmp	.L47	#
.L51:
	.loc 1 343 0
	movl	-12(%rbp), %eax	# j, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6427
	movq	-32(%rbp), %rax	# tseqs, tmp92
	addq	%rdx, %rax	# D.6427, D.6428
	movq	(%rax), %rcx	# *_13, D.6429
	movl	-16(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6427
	movq	-32(%rbp), %rax	# tseqs, tmp94
	addq	%rdx, %rax	# D.6427, D.6428
	movq	(%rax), %rdx	# *_17, D.6429
	movl	-12(%rbp), %eax	# j, tmp95
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6427
	movq	-24(%rbp), %rax	# kseqs, tmp96
	addq	%rsi, %rax	# D.6427, D.6428
	movq	(%rax), %rsi	# *_22, D.6429
	movl	-16(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,8), %rdi	#, D.6427
	movq	-24(%rbp), %rax	# kseqs, tmp98
	addq	%rdi, %rax	# D.6427, D.6428
	movq	(%rax), %rax	# *_26, D.6429
	movq	%rax, %rdi	# D.6429,
	call	ComparePairAlignments	#
	movss	%xmm0, -40(%rbp)	#, %sfp
	movl	-40(%rbp), %eax	# %sfp, tmp99
	movl	%eax, -4(%rbp)	# tmp99, score
	.loc 1 344 0
	xorps	%xmm0, %xmm0	# tmp100
	ucomiss	-4(%rbp), %xmm0	# score, tmp100
	jbe	.L54	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6426
	jmp	.L50	#
.L54:
	.loc 1 345 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# tot_score, tmp102
	addss	-4(%rbp), %xmm0	# score, tmp101
	movss	%xmm0, -8(%rbp)	# tmp101, tot_score
	.loc 1 341 0
	addl	$1, -12(%rbp)	#, j
.L47:
	.loc 1 341 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp103
	cmpl	-36(%rbp), %eax	# N, tmp103
	jl	.L51	#,
	.loc 1 340 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L46:
	.loc 1 340 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp104
	cmpl	-36(%rbp), %eax	# N, tmp104
	jl	.L52	#,
	.loc 1 347 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# tot_score, D.6430
	cvtps2pd	%xmm0, %xmm0	# D.6430, D.6430
	addsd	%xmm0, %xmm0	# D.6430, D.6430
	cvtsi2ss	-36(%rbp), %xmm1	# N, D.6426
	unpcklps	%xmm1, %xmm1	# D.6426, D.6426
	cvtps2pd	%xmm1, %xmm2	# D.6426, D.6430
	cvtsi2ss	-36(%rbp), %xmm1	# N, D.6426
	unpcklps	%xmm1, %xmm1	# D.6426, D.6426
	cvtps2pd	%xmm1, %xmm1	# D.6426, D.6430
	movsd	.LC4(%rip), %xmm3	#, tmp105
	subsd	%xmm3, %xmm1	# tmp105, D.6430
	mulsd	%xmm2, %xmm1	# D.6430, D.6430
	divsd	%xmm1, %xmm0	# D.6430, D.6430
	unpcklpd	%xmm0, %xmm0	# D.6430
	cvtpd2ps	%xmm0, %xmm4	# D.6430, D.6426
	movss	%xmm4, -40(%rbp)	# D.6426, %sfp
	movl	-40(%rbp), %eax	# %sfp, D.6426
.L50:
	.loc 1 348 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	CompareMultAlignments, .-CompareMultAlignments
	.globl	CompareRefMultAlignments
	.type	CompareRefMultAlignments, @function
CompareRefMultAlignments:
.LFB8:
	.loc 1 367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ref, ref
	movq	%rsi, -32(%rbp)	# kseqs, kseqs
	movq	%rdx, -40(%rbp)	# tseqs, tseqs
	movl	%ecx, -44(%rbp)	# N, N
	.loc 1 370 0
	movl	.LC2(%rip), %eax	#, tmp86
	movl	%eax, -8(%rbp)	# tmp86, tot_score
	.loc 1 373 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L56	#
.L62:
	.loc 1 374 0
	movl	-16(%rbp), %eax	# i, tmp90
	addl	$1, %eax	#, tmp89
	movl	%eax, -12(%rbp)	# tmp89, j
	jmp	.L57	#
.L61:
	.loc 1 376 0
	movl	-12(%rbp), %eax	# j, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6432
	movq	-40(%rbp), %rax	# tseqs, tmp92
	addq	%rdx, %rax	# D.6432, D.6433
	movq	(%rax), %rdi	# *_13, D.6434
	movl	-16(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6432
	movq	-40(%rbp), %rax	# tseqs, tmp94
	addq	%rdx, %rax	# D.6432, D.6433
	movq	(%rax), %rcx	# *_17, D.6434
	movl	-12(%rbp), %eax	# j, tmp95
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6432
	movq	-32(%rbp), %rax	# kseqs, tmp96
	addq	%rdx, %rax	# D.6432, D.6433
	movq	(%rax), %rdx	# *_22, D.6434
	movl	-16(%rbp), %eax	# i, tmp97
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6432
	movq	-32(%rbp), %rax	# kseqs, tmp98
	addq	%rsi, %rax	# D.6432, D.6433
	movq	(%rax), %rsi	# *_26, D.6434
	movq	-24(%rbp), %rax	# ref, tmp99
	movq	%rdi, %r8	# D.6434,
	movq	%rax, %rdi	# tmp99,
	call	CompareRefPairAlignments	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, tmp100
	movl	%eax, -4(%rbp)	# tmp100, score
	.loc 1 377 0
	xorps	%xmm0, %xmm0	# tmp101
	ucomiss	-4(%rbp), %xmm0	# score, tmp101
	jbe	.L64	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movl	.LC0(%rip), %eax	#, D.6431
	jmp	.L60	#
.L64:
	.loc 1 378 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# tot_score, tmp103
	addss	-4(%rbp), %xmm0	# score, tmp102
	movss	%xmm0, -8(%rbp)	# tmp102, tot_score
	.loc 1 374 0
	addl	$1, -12(%rbp)	#, j
.L57:
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp104
	cmpl	-44(%rbp), %eax	# N, tmp104
	jl	.L61	#,
	.loc 1 373 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L56:
	.loc 1 373 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp105
	cmpl	-44(%rbp), %eax	# N, tmp105
	jl	.L62	#,
	.loc 1 380 0 is_stmt 1
	movss	-8(%rbp), %xmm0	# tot_score, D.6435
	cvtps2pd	%xmm0, %xmm0	# D.6435, D.6435
	addsd	%xmm0, %xmm0	# D.6435, D.6435
	cvtsi2ss	-44(%rbp), %xmm1	# N, D.6431
	unpcklps	%xmm1, %xmm1	# D.6431, D.6431
	cvtps2pd	%xmm1, %xmm2	# D.6431, D.6435
	cvtsi2ss	-44(%rbp), %xmm1	# N, D.6431
	unpcklps	%xmm1, %xmm1	# D.6431, D.6431
	cvtps2pd	%xmm1, %xmm1	# D.6431, D.6435
	movsd	.LC4(%rip), %xmm3	#, tmp106
	subsd	%xmm3, %xmm1	# tmp106, D.6435
	mulsd	%xmm2, %xmm1	# D.6435, D.6435
	divsd	%xmm1, %xmm0	# D.6435, D.6435
	unpcklpd	%xmm0, %xmm0	# D.6435
	cvtpd2ps	%xmm0, %xmm4	# D.6435, D.6431
	movss	%xmm4, -48(%rbp)	# D.6431, %sfp
	movl	-48(%rbp), %eax	# %sfp, D.6431
.L60:
	.loc 1 381 0
	movl	%eax, -48(%rbp)	# <retval>, %sfp
	movss	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	CompareRefMultAlignments, .-CompareRefMultAlignments
	.globl	PairwiseIdentity
	.type	PairwiseIdentity, @function
PairwiseIdentity:
.LFB9:
	.loc 1 402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 407 0
	movl	$0, -8(%rbp)	#, len2
	movl	-8(%rbp), %eax	# len2, tmp106
	movl	%eax, -12(%rbp)	# tmp106, len1
	movl	-12(%rbp), %eax	# len1, tmp107
	movl	%eax, -16(%rbp)	# tmp107, idents
	.loc 1 408 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L66	#
.L70:
	.loc 1 410 0
	movl	-4(%rbp), %eax	# x, tmp108
	movslq	%eax, %rdx	# tmp108, D.6436
	movq	-24(%rbp), %rax	# s1, tmp109
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_23, D.6438
	cmpb	$32, %al	#, D.6438
	je	.L67	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp110
	movslq	%eax, %rdx	# tmp110, D.6436
	movq	-24(%rbp), %rax	# s1, tmp111
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_26, D.6438
	cmpb	$46, %al	#, D.6438
	je	.L67	#,
	movl	-4(%rbp), %eax	# x, tmp112
	movslq	%eax, %rdx	# tmp112, D.6436
	movq	-24(%rbp), %rax	# s1, tmp113
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_29, D.6438
	cmpb	$95, %al	#, D.6438
	je	.L67	#,
	movl	-4(%rbp), %eax	# x, tmp114
	movslq	%eax, %rdx	# tmp114, D.6436
	movq	-24(%rbp), %rax	# s1, tmp115
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_32, D.6438
	cmpb	$45, %al	#, D.6438
	je	.L67	#,
	movl	-4(%rbp), %eax	# x, tmp116
	movslq	%eax, %rdx	# tmp116, D.6436
	movq	-24(%rbp), %rax	# s1, tmp117
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_35, D.6438
	cmpb	$126, %al	#, D.6438
	je	.L67	#,
	.loc 1 411 0 is_stmt 1
	addl	$1, -12(%rbp)	#, len1
	.loc 1 412 0
	movl	-4(%rbp), %eax	# x, tmp118
	movslq	%eax, %rdx	# tmp118, D.6436
	movq	-24(%rbp), %rax	# s1, tmp119
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %edx	# *_39, D.6438
	movl	-4(%rbp), %eax	# x, tmp120
	movslq	%eax, %rcx	# tmp120, D.6436
	movq	-32(%rbp), %rax	# s2, tmp121
	addq	%rcx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_42, D.6438
	cmpb	%al, %dl	# D.6438, D.6438
	jne	.L67	#,
	.loc 1 412 0 is_stmt 0 discriminator 1
	addl	$1, -16(%rbp)	#, idents
.L67:
	.loc 1 414 0 is_stmt 1
	movl	-4(%rbp), %eax	# x, tmp122
	movslq	%eax, %rdx	# tmp122, D.6436
	movq	-32(%rbp), %rax	# s2, tmp123
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_46, D.6438
	cmpb	$32, %al	#, D.6438
	je	.L68	#,
	.loc 1 414 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp124
	movslq	%eax, %rdx	# tmp124, D.6436
	movq	-32(%rbp), %rax	# s2, tmp125
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_49, D.6438
	cmpb	$46, %al	#, D.6438
	je	.L68	#,
	movl	-4(%rbp), %eax	# x, tmp126
	movslq	%eax, %rdx	# tmp126, D.6436
	movq	-32(%rbp), %rax	# s2, tmp127
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_52, D.6438
	cmpb	$95, %al	#, D.6438
	je	.L68	#,
	movl	-4(%rbp), %eax	# x, tmp128
	movslq	%eax, %rdx	# tmp128, D.6436
	movq	-32(%rbp), %rax	# s2, tmp129
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_55, D.6438
	cmpb	$45, %al	#, D.6438
	je	.L68	#,
	movl	-4(%rbp), %eax	# x, tmp130
	movslq	%eax, %rdx	# tmp130, D.6436
	movq	-32(%rbp), %rax	# s2, tmp131
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_58, D.6438
	cmpb	$126, %al	#, D.6438
	je	.L68	#,
	addl	$1, -8(%rbp)	#, len2
.L68:
	.loc 1 408 0 is_stmt 1
	addl	$1, -4(%rbp)	#, x
.L66:
	.loc 1 408 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# x, tmp132
	movslq	%eax, %rdx	# tmp132, D.6436
	movq	-24(%rbp), %rax	# s1, tmp133
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_16, D.6438
	testb	%al, %al	# D.6438
	je	.L69	#,
	.loc 1 408 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp134
	movslq	%eax, %rdx	# tmp134, D.6436
	movq	-32(%rbp), %rax	# s2, tmp135
	addq	%rdx, %rax	# D.6436, D.6437
	movzbl	(%rax), %eax	# *_20, D.6438
	testb	%al, %al	# D.6438
	jne	.L70	#,
.L69:
	.loc 1 416 0 is_stmt 1
	movl	-8(%rbp), %eax	# len2, tmp136
	cmpl	-12(%rbp), %eax	# len1, tmp136
	jge	.L71	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# len2, tmp137
	movl	%eax, -12(%rbp)	# tmp137, len1
.L71:
	.loc 1 417 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, len1
	je	.L72	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	cvtsi2ss	-16(%rbp), %xmm0	# idents, D.6439
	cvtsi2ss	-12(%rbp), %xmm1	# len1, D.6439
	divss	%xmm1, %xmm0	# D.6439, iftmp.22
	movss	%xmm0, -36(%rbp)	# iftmp.22, %sfp
	movl	-36(%rbp), %eax	# %sfp, iftmp.22
	jmp	.L73	#
.L72:
	.loc 1 417 0 discriminator 2
	movl	.LC2(%rip), %eax	#, iftmp.22
.L73:
	.loc 1 418 0 is_stmt 1 discriminator 3
	movl	%eax, -36(%rbp)	# <retval>, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PairwiseIdentity, .-PairwiseIdentity
	.globl	AlignmentIdentityBySampling
	.type	AlignmentIdentityBySampling, @function
AlignmentIdentityBySampling:
.LFB10:
	.loc 1 444 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# aseq, aseq
	movl	%esi, -28(%rbp)	# L, L
	movl	%edx, -32(%rbp)	# N, N
	movl	%ecx, -36(%rbp)	# nsample, nsample
	.loc 1 448 0
	cmpl	$1, -32(%rbp)	#, N
	jg	.L76	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	movl	.LC3(%rip), %eax	#, D.6440
	jmp	.L77	#
.L76:
	.loc 1 450 0 is_stmt 1
	movl	.LC2(%rip), %eax	#, tmp77
	movl	%eax, -12(%rbp)	# tmp77, sum
	.loc 1 451 0
	movl	$0, -16(%rbp)	#, x
	jmp	.L78	#
.L80:
	.loc 1 453 0
	call	sre_random	#
	cvtsi2sd	-32(%rbp), %xmm1	# N, D.6441
	mulsd	%xmm1, %xmm0	# D.6441, D.6441
	cvttsd2si	%xmm0, %eax	# D.6441, tmp78
	movl	%eax, -8(%rbp)	# tmp78, i
.L79:
	.loc 1 454 0 discriminator 1
	call	sre_random	#
	cvtsi2sd	-32(%rbp), %xmm1	# N, D.6441
	mulsd	%xmm1, %xmm0	# D.6441, D.6441
	cvttsd2si	%xmm0, %eax	# D.6441, tmp79
	movl	%eax, -4(%rbp)	# tmp79, j
	movl	-4(%rbp), %eax	# j, tmp80
	cmpl	-8(%rbp), %eax	# i, tmp80
	je	.L79	#,
	.loc 1 455 0
	movl	-4(%rbp), %eax	# j, tmp81
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6442
	movq	-24(%rbp), %rax	# aseq, tmp82
	addq	%rdx, %rax	# D.6442, D.6443
	movq	(%rax), %rdx	# *_20, D.6444
	movl	-8(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6442
	movq	-24(%rbp), %rax	# aseq, tmp84
	addq	%rcx, %rax	# D.6442, D.6443
	movq	(%rax), %rax	# *_24, D.6444
	movq	%rdx, %rsi	# D.6444,
	movq	%rax, %rdi	# D.6444,
	call	PairwiseIdentity	#
	movss	-12(%rbp), %xmm1	# sum, tmp86
	addss	%xmm1, %xmm0	# tmp86, tmp85
	movss	%xmm0, -12(%rbp)	# tmp85, sum
	.loc 1 451 0
	addl	$1, -16(%rbp)	#, x
.L78:
	.loc 1 451 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# x, tmp87
	cmpl	-36(%rbp), %eax	# nsample, tmp87
	jl	.L80	#,
	.loc 1 457 0 is_stmt 1
	cvtsi2ss	-36(%rbp), %xmm0	# nsample, D.6440
	movss	-12(%rbp), %xmm1	# sum, tmp88
	divss	%xmm0, %xmm1	# D.6440, D.6440
	movss	%xmm1, -40(%rbp)	# D.6440, %sfp
	movl	-40(%rbp), %eax	# %sfp, D.6440
.L77:
	.loc 1 458 0
	movl	%eax, -40(%rbp)	# <retval>, %sfp
	movss	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	AlignmentIdentityBySampling, .-AlignmentIdentityBySampling
	.globl	MajorityRuleConsensus
	.type	MajorityRuleConsensus, @function
MajorityRuleConsensus:
.LFB11:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -168(%rbp)	# aseq, aseq
	movl	%esi, -172(%rbp)	# nseq, nseq
	movl	%edx, -176(%rbp)	# alen, alen
	.loc 1 485 0
	movl	-176(%rbp), %eax	# alen, tmp104
	addl	$1, %eax	#, D.6445
	cltq
	movq	%rax, %rdx	# D.6446,
	movl	$485, %esi	#,
	movl	$.LC1, %edi	#,
	call	sre_malloc	#
	movq	%rax, -120(%rbp)	# tmp105, cs
	.loc 1 487 0
	movl	$0, -140(%rbp)	#, spos
	movl	$0, -144(%rbp)	#, apos
	jmp	.L82	#
.L94:
	.loc 1 489 0
	movl	$0, -136(%rbp)	#, x
	jmp	.L83	#
.L84:
	.loc 1 489 0 is_stmt 0 discriminator 2
	movl	-136(%rbp), %eax	# x, tmp107
	cltq
	movl	$0, -112(%rbp,%rax,4)	#, count
	addl	$1, -136(%rbp)	#, x
.L83:
	.loc 1 489 0 discriminator 1
	cmpl	$26, -136(%rbp)	#, x
	jle	.L84	#,
	.loc 1 491 0 is_stmt 1
	movl	$0, -148(%rbp)	#, idx
	jmp	.L85	#
.L88:
	.loc 1 493 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_21, D.6448
	movl	-148(%rbp), %edx	# idx, tmp108
	movslq	%edx, %rdx	# tmp108, D.6446
	leaq	0(,%rdx,8), %rcx	#, D.6446
	movq	-168(%rbp), %rdx	# aseq, tmp109
	addq	%rcx, %rdx	# D.6446, D.6449
	movq	(%rdx), %rcx	# *_26, D.6450
	movl	-144(%rbp), %edx	# apos, tmp110
	movslq	%edx, %rdx	# tmp110, D.6451
	addq	%rcx, %rdx	# D.6450, D.6450
	movzbl	(%rdx), %edx	# *_29, D.6452
	movsbq	%dl, %rdx	# D.6452, D.6446
	addq	%rdx, %rdx	# D.6446
	addq	%rdx, %rax	# D.6446, D.6448
	movzwl	(%rax), %eax	# *_33, D.6453
	movzwl	%ax, %eax	# D.6453, D.6445
	andl	$1024, %eax	#, D.6445
	testl	%eax, %eax	# D.6445
	je	.L86	#,
	.loc 1 494 0
	movl	-148(%rbp), %eax	# idx, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6446
	movq	-168(%rbp), %rax	# aseq, tmp112
	addq	%rdx, %rax	# D.6446, D.6449
	movq	(%rax), %rdx	# *_39, D.6450
	movl	-144(%rbp), %eax	# apos, tmp113
	cltq
	addq	%rdx, %rax	# D.6450, D.6450
	movzbl	(%rax), %eax	# *_42, D.6452
	movsbl	%al, %eax	# D.6452, D.6445
	movl	%eax, %edi	# D.6445,
	call	toupper	#
	movl	%eax, -124(%rbp)	# tmp114, sym
	.loc 1 495 0
	movl	-124(%rbp), %eax	# sym, tmp115
	subl	$65, %eax	#, D.6445
	movslq	%eax, %rdx	# D.6445, tmp116
	movl	-112(%rbp,%rdx,4), %edx	# count, D.6445
	addl	$1, %edx	#, D.6445
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.6445, count
	jmp	.L87	#
.L86:
	.loc 1 497 0
	movl	-8(%rbp), %eax	# count, D.6445
	addl	$1, %eax	#, D.6445
	movl	%eax, -8(%rbp)	# D.6445, count
.L87:
	.loc 1 491 0
	addl	$1, -148(%rbp)	#, idx
.L85:
	.loc 1 491 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# idx, tmp118
	cmpl	-172(%rbp), %eax	# nseq, tmp118
	jl	.L88	#,
	.loc 1 501 0 is_stmt 1
	movl	-8(%rbp), %eax	# count, D.6445
	cvtsi2ss	%eax, %xmm0	# D.6445, D.6454
	cvtsi2ss	-172(%rbp), %xmm1	# nseq, D.6454
	divss	%xmm1, %xmm0	# D.6454, D.6454
	movss	.LC5(%rip), %xmm1	#, tmp119
	ucomiss	%xmm0, %xmm1	# D.6454, tmp119
	jb	.L89	#,
	.loc 1 502 0
	movl	$-1, -128(%rbp)	#, bestx
	movl	-128(%rbp), %eax	# bestx, tmp120
	movl	%eax, -132(%rbp)	# tmp120, max
	.loc 1 503 0
	movl	$0, -136(%rbp)	#, x
	jmp	.L91	#
.L93:
	.loc 1 504 0
	movl	-136(%rbp), %eax	# x, tmp122
	cltq
	movl	-112(%rbp,%rax,4), %eax	# count, D.6445
	cmpl	-132(%rbp), %eax	# max, D.6445
	jle	.L92	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# x, tmp124
	cltq
	movl	-112(%rbp,%rax,4), %eax	# count, tmp125
	movl	%eax, -132(%rbp)	# tmp125, max
	movl	-136(%rbp), %eax	# x, tmp126
	movl	%eax, -128(%rbp)	# tmp126, bestx
.L92:
	.loc 1 503 0 is_stmt 1
	addl	$1, -136(%rbp)	#, x
.L91:
	.loc 1 503 0 is_stmt 0 discriminator 1
	cmpl	$25, -136(%rbp)	#, x
	jle	.L93	#,
	.loc 1 505 0 is_stmt 1
	movl	-140(%rbp), %eax	# spos, spos.23
	leal	1(%rax), %edx	#, tmp127
	movl	%edx, -140(%rbp)	# tmp127, spos
	movslq	%eax, %rdx	# spos.23, D.6451
	movq	-120(%rbp), %rax	# cs, tmp128
	addq	%rax, %rdx	# tmp128, D.6450
	movl	-128(%rbp), %eax	# bestx, tmp129
	addl	$65, %eax	#, D.6455
	movb	%al, (%rdx)	# D.6452, *_66
.L89:
	.loc 1 487 0
	addl	$1, -144(%rbp)	#, apos
.L82:
	.loc 1 487 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# apos, tmp130
	cmpl	-176(%rbp), %eax	# alen, tmp130
	jl	.L94	#,
	.loc 1 508 0 is_stmt 1
	movl	-140(%rbp), %eax	# spos, tmp131
	movslq	%eax, %rdx	# tmp131, D.6451
	movq	-120(%rbp), %rax	# cs, tmp132
	addq	%rdx, %rax	# D.6451, D.6450
	movb	$0, (%rax)	#, *_72
	.loc 1 509 0
	movq	-120(%rbp), %rax	# cs, D.6450
	.loc 1 510 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	MajorityRuleConsensus, .-MajorityRuleConsensus
	.section	.rodata
	.align 4
.LC0:
	.long	3212836864
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	1065353216
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 4
.LC5:
	.long	1056964608
	.text
.Letext0:
	.file 2 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7c0
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
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
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
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0xd5
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1
	.byte	0x5f
	.long	0xd5
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x5f
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x61
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x62
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x63
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x64
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x65
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x65
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x66
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x1
	.byte	0x85
	.long	0xd5
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x292
	.uleb128 0xa
	.string	"ref"
	.byte	0x1
	.byte	0x85
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0x85
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0x85
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x85
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x85
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x87
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x88
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x89
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.byte	0x8a
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.byte	0x8c
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.byte	0xaa
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x322
	.uleb128 0xa
	.string	"s1"
	.byte	0x1
	.byte	0xaa
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"s2"
	.byte	0x1
	.byte	0xaa
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF38
	.byte	0x1
	.byte	0xaa
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF39
	.byte	0x1
	.byte	0xaa
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.byte	0xac
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.string	"col"
	.byte	0x1
	.byte	0xad
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.string	"r1"
	.byte	0x1
	.byte	0xae
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"r2"
	.byte	0x1
	.byte	0xae
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xe3
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.byte	0xe0
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe
	.uleb128 0xa
	.string	"ref"
	.byte	0x1
	.byte	0xe0
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.string	"k1"
	.byte	0x1
	.byte	0xe0
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.string	"k2"
	.byte	0x1
	.byte	0xe0
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xa
	.string	"s1"
	.byte	0x1
	.byte	0xe1
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.string	"s2"
	.byte	0x1
	.byte	0xe1
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.long	.LASF38
	.byte	0x1
	.byte	0xe1
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x8
	.long	.LASF39
	.byte	0x1
	.byte	0xe1
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.byte	0xe3
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.string	"col"
	.byte	0x1
	.byte	0xe4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"r1"
	.byte	0x1
	.byte	0xe5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"r2"
	.byte	0x1
	.byte	0xe5
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF43
	.byte	0x1
	.byte	0xe6
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.long	.LASF44
	.byte	0x1
	.byte	0xe7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.value	0x127
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b2
	.uleb128 0xe
	.string	"k1"
	.byte	0x1
	.value	0x127
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"k2"
	.byte	0x1
	.value	0x127
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"t1"
	.byte	0x1
	.value	0x127
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"t2"
	.byte	0x1
	.value	0x127
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.value	0x127
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.value	0x127
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF46
	.byte	0x1
	.value	0x127
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"id"
	.byte	0x1
	.value	0x129
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.string	"tot"
	.byte	0x1
	.value	0x12a
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x12b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0x14e
	.long	0xd5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x538
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.value	0x14e
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.value	0x14e
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"N"
	.byte	0x1
	.value	0x14e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x150
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.value	0x150
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1
	.value	0x151
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.value	0x152
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x1
	.value	0x16e
	.long	0xd5
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd
	.uleb128 0xe
	.string	"ref"
	.byte	0x1
	.value	0x16e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.value	0x16e
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.value	0x16e
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"N"
	.byte	0x1
	.value	0x16e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x170
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.value	0x170
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1
	.value	0x171
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.value	0x172
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.value	0x191
	.long	0xd5
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x646
	.uleb128 0xe
	.string	"s1"
	.byte	0x1
	.value	0x191
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"s2"
	.byte	0x1
	.value	0x191
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0x193
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.value	0x194
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.value	0x194
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x195
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x1bb
	.long	0xd5
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d7
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.value	0x1bb
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"L"
	.byte	0x1
	.value	0x1bb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"N"
	.byte	0x1
	.value	0x1bb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.value	0x1bb
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x1bd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"j"
	.byte	0x1
	.value	0x1bd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"sum"
	.byte	0x1
	.value	0x1be
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0x1db
	.long	0x6c
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b7
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.value	0x1db
	.long	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.value	0x1db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0xf
	.long	.LASF59
	.byte	0x1
	.value	0x1db
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x10
	.string	"cs"
	.byte	0x1
	.value	0x1dd
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.value	0x1de
	.long	0x7b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.string	"idx"
	.byte	0x1
	.value	0x1df
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.value	0x1df
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.value	0x1e0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x10
	.string	"x"
	.byte	0x1
	.value	0x1e1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x10
	.string	"sym"
	.byte	0x1
	.value	0x1e2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x10
	.string	"max"
	.byte	0x1
	.value	0x1e3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.value	0x1e3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x14
	.long	0x57
	.uleb128 0x15
	.long	0x65
	.byte	0x1a
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
.LASF27:
	.string	"calc1"
.LASF53:
	.string	"idents"
.LASF64:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF58:
	.string	"nseq"
.LASF41:
	.string	"make_alilist"
.LASF17:
	.string	"_ISblank"
.LASF16:
	.string	"_ISgraph"
.LASF7:
	.string	"sizetype"
.LASF19:
	.string	"_ISpunct"
.LASF39:
	.string	"ret_listlen"
.LASF20:
	.string	"_ISalnum"
.LASF5:
	.string	"short int"
.LASF28:
	.string	"calc2"
.LASF12:
	.string	"_ISdigit"
.LASF29:
	.string	"klist1"
.LASF36:
	.string	"ComparePairAlignments"
.LASF48:
	.string	"kseqs"
.LASF21:
	.string	"float"
.LASF14:
	.string	"_ISspace"
.LASF62:
	.string	"spos"
.LASF3:
	.string	"unsigned int"
.LASF66:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF23:
	.string	"long long int"
.LASF24:
	.string	"long long unsigned int"
.LASF42:
	.string	"make_ref_alilist"
.LASF33:
	.string	"len1"
.LASF6:
	.string	"long int"
.LASF47:
	.string	"CompareMultAlignments"
.LASF18:
	.string	"_IScntrl"
.LASF56:
	.string	"nsample"
.LASF52:
	.string	"PairwiseIdentity"
.LASF1:
	.string	"unsigned char"
.LASF65:
	.string	"aligneval.c"
.LASF4:
	.string	"signed char"
.LASF35:
	.string	"score"
.LASF34:
	.string	"len2"
.LASF30:
	.string	"klist2"
.LASF11:
	.string	"_ISalpha"
.LASF43:
	.string	"canons1"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"ret_sc"
.LASF8:
	.string	"char"
.LASF10:
	.string	"_ISlower"
.LASF63:
	.string	"bestx"
.LASF13:
	.string	"_ISxdigit"
.LASF50:
	.string	"tot_score"
.LASF54:
	.string	"AlignmentIdentityBySampling"
.LASF59:
	.string	"alen"
.LASF25:
	.string	"known1"
.LASF26:
	.string	"known2"
.LASF0:
	.string	"long unsigned int"
.LASF22:
	.string	"double"
.LASF51:
	.string	"CompareRefMultAlignments"
.LASF44:
	.string	"lpos"
.LASF60:
	.string	"count"
.LASF15:
	.string	"_ISprint"
.LASF9:
	.string	"_ISupper"
.LASF40:
	.string	"s1_list"
.LASF45:
	.string	"compare_lists"
.LASF38:
	.string	"ret_s1_list"
.LASF55:
	.string	"aseq"
.LASF37:
	.string	"CompareRefPairAlignments"
.LASF57:
	.string	"MajorityRuleConsensus"
.LASF61:
	.string	"apos"
.LASF31:
	.string	"tlist1"
.LASF32:
	.string	"tlist2"
.LASF49:
	.string	"tseqs"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
