	.file	"mkdeps.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 mkdeps.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.type	munge, @function
munge:
.LFB2:
	.file 1 "mkdeps.c"
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# filename, filename
	.loc 1 57 0
	movq	-56(%rbp), %rax	# filename, tmp75
	movq	%rax, -32(%rbp)	# tmp75, p
	movl	$0, -36(%rbp)	#, len
	jmp	.L2	#
.L9:
	.loc 1 59 0
	movq	-32(%rbp), %rax	# p, tmp76
	movzbl	(%rax), %eax	# *p_4, D.6904
	movsbl	%al, %eax	# D.6904, D.6905
	cmpl	$32, %eax	#, D.6905
	je	.L4	#,
	cmpl	$36, %eax	#, D.6905
	je	.L5	#,
	cmpl	$9, %eax	#, D.6905
	jne	.L3	#,
.L4:
	.loc 1 69 0
	movq	-32(%rbp), %rax	# p, tmp80
	subq	$1, %rax	#, tmp79
	movq	%rax, -24(%rbp)	# tmp79, q
	jmp	.L6	#
.L8:
	.loc 1 70 0 discriminator 1
	addl	$1, -36(%rbp)	#, len
	.loc 1 69 0 discriminator 1
	subq	$1, -24(%rbp)	#, q
.L6:
	movq	-56(%rbp), %rax	# filename, tmp81
	cmpq	-24(%rbp), %rax	# q, tmp81
	ja	.L7	#,
	.loc 1 69 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# q, tmp82
	movzbl	(%rax), %eax	# *q_6, D.6904
	cmpb	$92, %al	#, D.6904
	je	.L8	#,
.L7:
	.loc 1 71 0 is_stmt 1
	addl	$1, -36(%rbp)	#, len
	.loc 1 72 0
	jmp	.L3	#
.L5:
	.loc 1 76 0
	addl	$1, -36(%rbp)	#, len
	.loc 1 77 0
	nop
.L3:
	.loc 1 57 0
	addq	$1, -32(%rbp)	#, p
	addl	$1, -36(%rbp)	#, len
.L2:
	.loc 1 57 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp83
	movzbl	(%rax), %eax	# *p_4, D.6904
	testb	%al, %al	# D.6904
	jne	.L9	#,
	.loc 1 82 0 is_stmt 1
	movl	-36(%rbp), %eax	# len, tmp84
	addl	$1, %eax	#, D.6905
	cltq
	movq	%rax, %rdi	# D.6906,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp85, buffer
	.loc 1 84 0
	movq	-56(%rbp), %rax	# filename, tmp86
	movq	%rax, -32(%rbp)	# tmp86, p
	movq	-8(%rbp), %rax	# buffer, tmp87
	movq	%rax, -16(%rbp)	# tmp87, dst
	jmp	.L10	#
.L17:
	.loc 1 86 0
	movq	-32(%rbp), %rax	# p, tmp88
	movzbl	(%rax), %eax	# *p_5, D.6904
	movsbl	%al, %eax	# D.6904, D.6905
	cmpl	$32, %eax	#, D.6905
	je	.L12	#,
	cmpl	$36, %eax	#, D.6905
	je	.L13	#,
	cmpl	$9, %eax	#, D.6905
	jne	.L11	#,
.L12:
	.loc 1 90 0
	movq	-32(%rbp), %rax	# p, tmp92
	subq	$1, %rax	#, tmp91
	movq	%rax, -24(%rbp)	# tmp91, q
	jmp	.L14	#
.L16:
	.loc 1 91 0 discriminator 1
	movq	-16(%rbp), %rax	# dst, dst.0
	leaq	1(%rax), %rdx	#, tmp93
	movq	%rdx, -16(%rbp)	# tmp93, dst
	movb	$92, (%rax)	#, *dst.0_35
	.loc 1 90 0 discriminator 1
	subq	$1, -24(%rbp)	#, q
.L14:
	movq	-56(%rbp), %rax	# filename, tmp94
	cmpq	-24(%rbp), %rax	# q, tmp94
	ja	.L15	#,
	.loc 1 90 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# q, tmp95
	movzbl	(%rax), %eax	# *q_7, D.6904
	cmpb	$92, %al	#, D.6904
	je	.L16	#,
.L15:
	.loc 1 92 0 is_stmt 1
	movq	-16(%rbp), %rax	# dst, dst.1
	leaq	1(%rax), %rdx	#, tmp96
	movq	%rdx, -16(%rbp)	# tmp96, dst
	movb	$92, (%rax)	#, *dst.1_38
	.loc 1 93 0
	jmp	.L11	#
.L13:
	.loc 1 96 0
	movq	-16(%rbp), %rax	# dst, dst.2
	leaq	1(%rax), %rdx	#, tmp97
	movq	%rdx, -16(%rbp)	# tmp97, dst
	movb	$36, (%rax)	#, *dst.2_40
	.loc 1 97 0
	nop
.L11:
	.loc 1 102 0
	movq	-32(%rbp), %rax	# p, tmp98
	movzbl	(%rax), %edx	# *p_5, D.6904
	movq	-16(%rbp), %rax	# dst, tmp99
	movb	%dl, (%rax)	# D.6904, *dst_9
	.loc 1 84 0
	addq	$1, -32(%rbp)	#, p
	addq	$1, -16(%rbp)	#, dst
.L10:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# p, tmp100
	movzbl	(%rax), %eax	# *p_5, D.6904
	testb	%al, %al	# D.6904
	jne	.L17	#,
	.loc 1 105 0 is_stmt 1
	movq	-16(%rbp), %rax	# dst, tmp101
	movb	$0, (%rax)	#, *dst_10
	.loc 1 106 0
	movq	-8(%rbp), %rax	# buffer, D.6907
	.loc 1 107 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	munge, .-munge
	.globl	deps_init
	.type	deps_init, @function
deps_init:
.LFB3:
	.loc 1 113 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 114 0
	movl	$32, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp61, d
	.loc 1 118 0
	movq	-8(%rbp), %rax	# d, tmp62
	movq	$0, (%rax)	#, d_1->targetv
	.loc 1 119 0
	movq	-8(%rbp), %rax	# d, tmp63
	movq	$0, 16(%rax)	#, d_1->depv
	.loc 1 121 0
	movq	-8(%rbp), %rax	# d, tmp64
	movl	$0, 8(%rax)	#, d_1->ntargets
	.loc 1 122 0
	movq	-8(%rbp), %rax	# d, tmp65
	movl	$0, 12(%rax)	#, d_1->targets_size
	.loc 1 123 0
	movq	-8(%rbp), %rax	# d, tmp66
	movl	$0, 24(%rax)	#, d_1->ndeps
	.loc 1 124 0
	movq	-8(%rbp), %rax	# d, tmp67
	movl	$0, 28(%rax)	#, d_1->deps_size
	.loc 1 126 0
	movq	-8(%rbp), %rax	# d, D.6908
	.loc 1 127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	deps_init, .-deps_init
	.globl	deps_free
	.type	deps_free, @function
deps_free:
.LFB4:
	.loc 1 132 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	.loc 1 135 0
	movq	-24(%rbp), %rax	# d, tmp75
	movq	(%rax), %rax	# d_3(D)->targetv, D.6909
	testq	%rax, %rax	# D.6909
	je	.L22	#,
	.loc 1 137 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L23	#
.L24:
	.loc 1 138 0 discriminator 2
	movq	-24(%rbp), %rax	# d, tmp76
	movq	(%rax), %rax	# d_3(D)->targetv, D.6909
	movl	-4(%rbp), %edx	# i, D.6911
	salq	$3, %rdx	#, D.6911
	addq	%rdx, %rax	# D.6911, D.6909
	movq	(%rax), %rax	# *_10, D.6912
	movq	%rax, %rdi	# D.6912,
	call	free	#
	.loc 1 137 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L23:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp77
	movl	8(%rax), %eax	# d_3(D)->ntargets, D.6910
	cmpl	-4(%rbp), %eax	# i, D.6910
	ja	.L24	#,
	.loc 1 139 0 is_stmt 1
	movq	-24(%rbp), %rax	# d, tmp78
	movq	(%rax), %rax	# d_3(D)->targetv, D.6909
	movq	%rax, %rdi	# D.6909,
	call	free	#
.L22:
	.loc 1 142 0
	movq	-24(%rbp), %rax	# d, tmp79
	movq	16(%rax), %rax	# d_3(D)->depv, D.6909
	testq	%rax, %rax	# D.6909
	je	.L25	#,
	.loc 1 144 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 145 0 discriminator 2
	movq	-24(%rbp), %rax	# d, tmp80
	movq	16(%rax), %rax	# d_3(D)->depv, D.6909
	movl	-4(%rbp), %edx	# i, D.6911
	salq	$3, %rdx	#, D.6911
	addq	%rdx, %rax	# D.6911, D.6909
	movq	(%rax), %rax	# *_20, D.6912
	movq	%rax, %rdi	# D.6912,
	call	free	#
	.loc 1 144 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L26:
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp81
	movl	24(%rax), %eax	# d_3(D)->ndeps, D.6910
	cmpl	-4(%rbp), %eax	# i, D.6910
	ja	.L27	#,
	.loc 1 146 0 is_stmt 1
	movq	-24(%rbp), %rax	# d, tmp82
	movq	16(%rax), %rax	# d_3(D)->depv, D.6909
	movq	%rax, %rdi	# D.6909,
	call	free	#
.L25:
	.loc 1 149 0
	movq	-24(%rbp), %rax	# d, tmp83
	movq	%rax, %rdi	# tmp83,
	call	free	#
	.loc 1 150 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	deps_free, .-deps_free
	.globl	deps_add_target
	.type	deps_add_target, @function
deps_add_target:
.LFB5:
	.loc 1 159 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# t, t
	movl	%edx, -20(%rbp)	# quote, quote
	.loc 1 160 0
	movq	-8(%rbp), %rax	# d, tmp75
	movl	8(%rax), %edx	# d_2(D)->ntargets, D.6913
	movq	-8(%rbp), %rax	# d, tmp76
	movl	12(%rax), %eax	# d_2(D)->targets_size, D.6913
	cmpl	%eax, %edx	# D.6913, D.6913
	jne	.L29	#,
	.loc 1 162 0
	movq	-8(%rbp), %rax	# d, tmp77
	movl	12(%rax), %eax	# d_2(D)->targets_size, D.6913
	addl	$2, %eax	#, D.6913
	leal	(%rax,%rax), %edx	#, D.6913
	movq	-8(%rbp), %rax	# d, tmp78
	movl	%edx, 12(%rax)	# D.6913, d_2(D)->targets_size
	.loc 1 164 0
	movq	-8(%rbp), %rax	# d, tmp79
	movl	12(%rax), %eax	# d_2(D)->targets_size, D.6913
	.loc 1 163 0
	movl	%eax, %eax	# D.6913, D.6914
	leaq	0(,%rax,8), %rdx	#, D.6914
	movq	-8(%rbp), %rax	# d, tmp80
	movq	(%rax), %rax	# d_2(D)->targetv, D.6915
	movq	%rdx, %rsi	# D.6914,
	movq	%rax, %rdi	# D.6915,
	call	xrealloc	#
	movq	-8(%rbp), %rdx	# d, tmp81
	movq	%rax, (%rdx)	# D.6916, d_2(D)->targetv
.L29:
	.loc 1 167 0
	cmpl	$0, -20(%rbp)	#, quote
	je	.L30	#,
	.loc 1 168 0
	movq	-16(%rbp), %rax	# t, tmp82
	movq	%rax, %rdi	# tmp82,
	call	munge	#
	movq	%rax, -16(%rbp)	# tmp83, t
	jmp	.L31	#
.L30:
	.loc 1 170 0
	movq	-16(%rbp), %rax	# t, tmp84
	movq	%rax, %rdi	# tmp84,
	call	xstrdup	#
	movq	%rax, -16(%rbp)	# tmp85, t
.L31:
	.loc 1 172 0
	movq	-8(%rbp), %rax	# d, tmp86
	movq	(%rax), %rsi	# d_2(D)->targetv, D.6915
	movq	-8(%rbp), %rax	# d, tmp87
	movl	8(%rax), %eax	# d_2(D)->ntargets, D.6913
	leal	1(%rax), %ecx	#, D.6913
	movq	-8(%rbp), %rdx	# d, tmp88
	movl	%ecx, 8(%rdx)	# D.6913, d_2(D)->ntargets
	movl	%eax, %eax	# D.6913, D.6914
	salq	$3, %rax	#, D.6914
	leaq	(%rsi,%rax), %rdx	#, D.6915
	movq	-16(%rbp), %rax	# t, tmp89
	movq	%rax, (%rdx)	# tmp89, *_23
	.loc 1 173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	deps_add_target, .-deps_add_target
	.section	.rodata
.LC0:
	.string	"-"
	.text
	.globl	deps_add_default_target
	.type	deps_add_default_target, @function
deps_add_default_target:
.LFB6:
	.loc 1 182 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# d, d
	movq	%rsi, -64(%rbp)	# tgt, tgt
	.loc 1 184 0
	movq	-56(%rbp), %rax	# d, tmp64
	movl	8(%rax), %eax	# d_2(D)->ntargets, D.6917
	testl	%eax, %eax	# D.6917
	je	.L33	#,
	.loc 1 185 0
	jmp	.L32	#
.L33:
	.loc 1 187 0
	movq	-64(%rbp), %rax	# tgt, tmp65
	movzbl	(%rax), %eax	# *tgt_4(D), D.6918
	testb	%al, %al	# D.6918
	jne	.L35	#,
	.loc 1 188 0
	movq	-56(%rbp), %rax	# d, tmp66
	movl	$1, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	deps_add_target	#
	jmp	.L32	#
.L35:
.LBB2:
	.loc 1 194 0
	movq	-64(%rbp), %rax	# tgt, tmp67
	movq	%rax, %rdi	# tmp67,
	call	lbasename	#
	movq	%rax, -32(%rbp)	# tmp68, start
	.loc 1 195 0
	movq	-32(%rbp), %rax	# start, tmp69
	movq	%rax, %rdi	# tmp69,
	call	strlen	#
	addq	$3, %rax	#, D.6919
	leaq	15(%rax), %rdx	#, tmp70
	movl	$16, %eax	#, tmp93
	subq	$1, %rax	#, tmp71
	addq	%rdx, %rax	# tmp70, tmp72
	movl	$16, %ebx	#, tmp94
	movl	$0, %edx	#, tmp75
	divq	%rbx	# tmp94
	imulq	$16, %rax, %rax	#, tmp74, tmp76
	subq	%rax, %rsp	# tmp76,
	movq	%rsp, %rax	#, tmp77
	addq	$15, %rax	#, tmp78
	shrq	$4, %rax	#, tmp79
	salq	$4, %rax	#, tmp80
	movq	%rax, -24(%rbp)	# tmp80, o
	.loc 1 198 0
	movq	-32(%rbp), %rdx	# start, tmp81
	movq	-24(%rbp), %rax	# o, tmp82
	movq	%rdx, %rsi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	strcpy	#
	.loc 1 200 0
	movq	-24(%rbp), %rax	# o, tmp83
	movl	$46, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	strrchr	#
	movq	%rax, -40(%rbp)	# tmp84, suffix
	.loc 1 201 0
	cmpq	$0, -40(%rbp)	#, suffix
	jne	.L36	#,
	.loc 1 202 0
	movq	-24(%rbp), %rax	# o, tmp85
	movq	%rax, %rdi	# tmp85,
	call	strlen	#
	movq	-24(%rbp), %rdx	# o, tmp89
	addq	%rdx, %rax	# tmp89, tmp88
	movq	%rax, -40(%rbp)	# tmp88, suffix
.L36:
	.loc 1 203 0
	movq	-40(%rbp), %rax	# suffix, tmp90
	movw	$28462, (%rax)	#, MEM[(void *)suffix_1]
	movb	$0, 2(%rax)	#, MEM[(void *)suffix_1]
	.loc 1 205 0
	movq	-24(%rbp), %rcx	# o, tmp91
	movq	-56(%rbp), %rax	# d, tmp92
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# tmp92,
	call	deps_add_target	#
.L32:
.LBE2:
	.loc 1 207 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	deps_add_default_target, .-deps_add_default_target
	.globl	deps_add_dep
	.type	deps_add_dep, @function
deps_add_dep:
.LFB7:
	.loc 1 213 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# t, t
	.loc 1 214 0
	movq	-16(%rbp), %rax	# t, tmp75
	movq	%rax, %rdi	# tmp75,
	call	munge	#
	movq	%rax, -16(%rbp)	# tmp76, t
	.loc 1 216 0
	movq	-8(%rbp), %rax	# d, tmp77
	movl	24(%rax), %edx	# d_3(D)->ndeps, D.6922
	movq	-8(%rbp), %rax	# d, tmp78
	movl	28(%rax), %eax	# d_3(D)->deps_size, D.6922
	cmpl	%eax, %edx	# D.6922, D.6922
	jne	.L38	#,
	.loc 1 218 0
	movq	-8(%rbp), %rax	# d, tmp79
	movl	28(%rax), %eax	# d_3(D)->deps_size, D.6922
	addl	$4, %eax	#, D.6922
	leal	(%rax,%rax), %edx	#, D.6922
	movq	-8(%rbp), %rax	# d, tmp80
	movl	%edx, 28(%rax)	# D.6922, d_3(D)->deps_size
	.loc 1 220 0
	movq	-8(%rbp), %rax	# d, tmp81
	movl	28(%rax), %eax	# d_3(D)->deps_size, D.6922
	movl	%eax, %eax	# D.6922, D.6923
	leaq	0(,%rax,8), %rdx	#, D.6923
	movq	-8(%rbp), %rax	# d, tmp82
	movq	16(%rax), %rax	# d_3(D)->depv, D.6924
	movq	%rdx, %rsi	# D.6923,
	movq	%rax, %rdi	# D.6924,
	call	xrealloc	#
	.loc 1 219 0
	movq	-8(%rbp), %rdx	# d, tmp83
	movq	%rax, 16(%rdx)	# D.6925, d_3(D)->depv
.L38:
	.loc 1 222 0
	movq	-8(%rbp), %rax	# d, tmp84
	movq	16(%rax), %rsi	# d_3(D)->depv, D.6924
	movq	-8(%rbp), %rax	# d, tmp85
	movl	24(%rax), %eax	# d_3(D)->ndeps, D.6922
	leal	1(%rax), %ecx	#, D.6922
	movq	-8(%rbp), %rdx	# d, tmp86
	movl	%ecx, 24(%rdx)	# D.6922, d_3(D)->ndeps
	movl	%eax, %eax	# D.6922, D.6923
	salq	$3, %rax	#, D.6923
	leaq	(%rsi,%rax), %rdx	#, D.6924
	movq	-16(%rbp), %rax	# t, tmp87
	movq	%rax, (%rdx)	# tmp87, *_20
	.loc 1 223 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	deps_add_dep, .-deps_add_dep
	.section	.rodata
.LC1:
	.string	" \\\n "
	.text
	.globl	deps_write
	.type	deps_write, @function
deps_write:
.LFB8:
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	movq	%rsi, -32(%rbp)	# fp, fp
	movl	%edx, -36(%rbp)	# colmax, colmax
	.loc 1 233 0
	movl	$0, -8(%rbp)	#, column
	.loc 1 234 0
	cmpl	$0, -36(%rbp)	#, colmax
	je	.L40	#,
	.loc 1 234 0 is_stmt 0 discriminator 1
	cmpl	$33, -36(%rbp)	#, colmax
	ja	.L40	#,
	.loc 1 235 0 is_stmt 1
	movl	$34, -36(%rbp)	#, colmax
.L40:
	.loc 1 237 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L41	#
.L44:
	.loc 1 239 0
	movq	-24(%rbp), %rax	# d, tmp83
	movq	(%rax), %rax	# d_14(D)->targetv, D.6927
	movl	-12(%rbp), %edx	# i, D.6928
	salq	$3, %rdx	#, D.6928
	addq	%rdx, %rax	# D.6928, D.6927
	movq	(%rax), %rax	# *_19, D.6929
	movq	%rax, %rdi	# D.6929,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.6928, size
	.loc 1 240 0
	movl	-4(%rbp), %eax	# size, tmp84
	addl	%eax, -8(%rbp)	# tmp84, column
	.loc 1 241 0
	cmpl	$0, -36(%rbp)	#, colmax
	je	.L42	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# column, tmp85
	cmpl	-36(%rbp), %eax	# colmax, tmp85
	jbe	.L42	#,
	.loc 1 243 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp86
	movq	%rax, %rcx	# tmp86,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 244 0
	movl	-4(%rbp), %eax	# size, tmp90
	addl	$1, %eax	#, tmp89
	movl	%eax, -8(%rbp)	# tmp89, column
.L42:
	.loc 1 246 0
	cmpl	$0, -12(%rbp)	#, i
	je	.L43	#,
	.loc 1 248 0
	movq	-32(%rbp), %rax	# fp, tmp91
	movq	%rax, %rsi	# tmp91,
	movl	$32, %edi	#,
	call	_IO_putc	#
	.loc 1 249 0
	addl	$1, -8(%rbp)	#, column
.L43:
	.loc 1 251 0
	movq	-24(%rbp), %rax	# d, tmp92
	movq	(%rax), %rax	# d_14(D)->targetv, D.6927
	movl	-12(%rbp), %edx	# i, D.6928
	salq	$3, %rdx	#, D.6928
	addq	%rdx, %rax	# D.6928, D.6927
	movq	(%rax), %rax	# *_30, D.6929
	movq	-32(%rbp), %rdx	# fp, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.6929,
	call	fputs	#
	.loc 1 237 0
	addl	$1, -12(%rbp)	#, i
.L41:
	.loc 1 237 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp94
	movl	8(%rax), %eax	# d_14(D)->ntargets, D.6926
	cmpl	-12(%rbp), %eax	# i, D.6926
	ja	.L44	#,
	.loc 1 254 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp95
	movq	%rax, %rsi	# tmp95,
	movl	$58, %edi	#,
	call	_IO_putc	#
	.loc 1 255 0
	movq	-32(%rbp), %rax	# fp, tmp96
	movq	%rax, %rsi	# tmp96,
	movl	$32, %edi	#,
	call	_IO_putc	#
	.loc 1 256 0
	addl	$2, -8(%rbp)	#, column
	.loc 1 258 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L45	#
.L48:
	.loc 1 260 0
	movq	-24(%rbp), %rax	# d, tmp97
	movq	16(%rax), %rax	# d_14(D)->depv, D.6927
	movl	-12(%rbp), %edx	# i, D.6928
	salq	$3, %rdx	#, D.6928
	addq	%rdx, %rax	# D.6928, D.6927
	movq	(%rax), %rax	# *_39, D.6929
	movq	%rax, %rdi	# D.6929,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.6928, size
	.loc 1 261 0
	movl	-4(%rbp), %eax	# size, tmp98
	addl	%eax, -8(%rbp)	# tmp98, column
	.loc 1 262 0
	cmpl	$0, -36(%rbp)	#, colmax
	je	.L46	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# column, tmp99
	cmpl	-36(%rbp), %eax	# colmax, tmp99
	jbe	.L46	#,
	.loc 1 264 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 265 0
	movl	-4(%rbp), %eax	# size, tmp104
	addl	$1, %eax	#, tmp103
	movl	%eax, -8(%rbp)	# tmp103, column
.L46:
	.loc 1 267 0
	cmpl	$0, -12(%rbp)	#, i
	je	.L47	#,
	.loc 1 269 0
	movq	-32(%rbp), %rax	# fp, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$32, %edi	#,
	call	_IO_putc	#
	.loc 1 270 0
	addl	$1, -8(%rbp)	#, column
.L47:
	.loc 1 272 0
	movq	-24(%rbp), %rax	# d, tmp106
	movq	16(%rax), %rax	# d_14(D)->depv, D.6927
	movl	-12(%rbp), %edx	# i, D.6928
	salq	$3, %rdx	#, D.6928
	addq	%rdx, %rax	# D.6928, D.6927
	movq	(%rax), %rax	# *_49, D.6929
	movq	-32(%rbp), %rdx	# fp, tmp107
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.6929,
	call	fputs	#
	.loc 1 258 0
	addl	$1, -12(%rbp)	#, i
.L45:
	.loc 1 258 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp108
	movl	24(%rax), %eax	# d_14(D)->ndeps, D.6926
	cmpl	-12(%rbp), %eax	# i, D.6926
	ja	.L48	#,
	.loc 1 274 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp109
	movq	%rax, %rsi	# tmp109,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 275 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	deps_write, .-deps_write
	.globl	deps_phony_targets
	.type	deps_phony_targets, @function
deps_phony_targets:
.LFB9:
	.loc 1 281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# d, d
	movq	%rsi, -32(%rbp)	# fp, fp
	.loc 1 284 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L50	#
.L51:
	.loc 1 286 0 discriminator 2
	movq	-32(%rbp), %rax	# fp, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 287 0 discriminator 2
	movq	-24(%rbp), %rax	# d, tmp66
	movq	16(%rax), %rax	# d_3(D)->depv, D.6932
	movl	-4(%rbp), %edx	# i, D.6933
	salq	$3, %rdx	#, D.6933
	addq	%rdx, %rax	# D.6933, D.6932
	movq	(%rax), %rax	# *_9, D.6934
	movq	-32(%rbp), %rdx	# fp, tmp67
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# D.6934,
	call	fputs	#
	.loc 1 288 0 discriminator 2
	movq	-32(%rbp), %rax	# fp, tmp68
	movq	%rax, %rsi	# tmp68,
	movl	$58, %edi	#,
	call	_IO_putc	#
	.loc 1 289 0 discriminator 2
	movq	-32(%rbp), %rax	# fp, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$10, %edi	#,
	call	_IO_putc	#
	.loc 1 284 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L50:
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# d, tmp70
	movl	24(%rax), %eax	# d_3(D)->ndeps, D.6931
	cmpl	-4(%rbp), %eax	# i, D.6931
	ja	.L51	#,
	.loc 1 291 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	deps_phony_targets, .-deps_phony_targets
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x58f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.long	.LASF70
	.long	.LASF71
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
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
	.long	0x2d
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
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x79
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x6b
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
	.long	0x84
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF72
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
	.long	0x2d
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
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x7
	.long	.LASF49
	.byte	0x20
	.byte	0x1
	.byte	0x1d
	.long	0x300
	.uleb128 0x8
	.long	.LASF50
	.byte	0x1
	.byte	0x1f
	.long	0x300
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x1
	.byte	0x20
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x1
	.byte	0x21
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1
	.byte	0x23
	.long	0x300
	.byte	0x10
	.uleb128 0x8
	.long	.LASF54
	.byte	0x1
	.byte	0x24
	.long	0x3b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.byte	0x25
	.long	0x3b
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xe
	.long	.LASF73
	.byte	0x1
	.byte	0x32
	.long	0x292
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x379
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x33
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x35
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x36
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"q"
	.byte	0x1
	.byte	0x36
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"dst"
	.byte	0x1
	.byte	0x37
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0x37
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF74
	.byte	0x1
	.byte	0x70
	.long	0x3a7
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a7
	.uleb128 0x10
	.string	"d"
	.byte	0x1
	.byte	0x72
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ab
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x82
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e3
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x83
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x9b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x427
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0x9c
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.byte	0x9d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x9e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0xb3
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x49b
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0xb4
	.long	0x3a7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.string	"tgt"
	.byte	0x1
	.byte	0xb5
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.byte	0xc2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"o"
	.byte	0x1
	.byte	0xc3
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF63
	.byte	0x1
	.byte	0xc4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0xd2
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d1
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0xd3
	.long	0x3a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.byte	0xd4
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0xe2
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x53e
	.uleb128 0x14
	.string	"d"
	.byte	0x1
	.byte	0xe3
	.long	0x53e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"fp"
	.byte	0x1
	.byte	0xe4
	.long	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0xe5
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0xe7
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xe7
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0xe7
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x544
	.uleb128 0xd
	.long	0x2ab
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.value	0x116
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"d"
	.byte	0x1
	.value	0x117
	.long	0x53e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x118
	.long	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x11a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
.LASF29:
	.string	"_old_offset"
.LASF68:
	.string	"column"
.LASF24:
	.string	"_IO_save_end"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF0:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF64:
	.string	"deps_add_dep"
.LASF18:
	.string	"_IO_write_ptr"
.LASF52:
	.string	"targets_size"
.LASF20:
	.string	"_IO_buf_base"
.LASF74:
	.string	"deps_init"
.LASF54:
	.string	"ndeps"
.LASF50:
	.string	"targetv"
.LASF15:
	.string	"_IO_read_end"
.LASF49:
	.string	"deps"
.LASF57:
	.string	"filename"
.LASF53:
	.string	"depv"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF48:
	.string	"long long int"
.LASF61:
	.string	"deps_add_default_target"
.LASF33:
	.string	"_lock"
.LASF2:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF25:
	.string	"_markers"
.LASF46:
	.string	"_pos"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF4:
	.string	"unsigned char"
.LASF75:
	.string	"deps_phony_targets"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"signed char"
.LASF47:
	.string	"long long unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF3:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF62:
	.string	"start"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF51:
	.string	"ntargets"
.LASF44:
	.string	"_next"
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
.LASF63:
	.string	"suffix"
.LASF56:
	.string	"buffer"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"quote"
.LASF65:
	.string	"deps_write"
.LASF73:
	.string	"munge"
.LASF19:
	.string	"_IO_write_end"
.LASF10:
	.string	"__off64_t"
.LASF9:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF67:
	.string	"size"
.LASF66:
	.string	"colmax"
.LASF70:
	.string	"mkdeps.c"
.LASF58:
	.string	"deps_free"
.LASF23:
	.string	"_IO_backup_base"
.LASF55:
	.string	"deps_size"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF59:
	.string	"deps_add_target"
.LASF1:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF72:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
