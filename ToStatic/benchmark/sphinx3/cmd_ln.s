	.file	"cmd_ln.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# cmd_ln.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	argval
	.comm	argval,8,8
	.local	ht
	.comm	ht,8,8
	.type	arg_strlen, @function
arg_strlen:
.LFB2:
	.file 1 "cmd_ln.c"
	.loc 1 112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# defn, defn
	movq	%rsi, -32(%rbp)	# namelen, namelen
	movq	%rdx, -40(%rbp)	# deflen, deflen
	.loc 1 115 0
	movq	-40(%rbp), %rax	# deflen, tmp82
	movl	$0, (%rax)	#, *deflen_2(D)
	movq	-40(%rbp), %rax	# deflen, tmp83
	movl	(%rax), %edx	# *deflen_2(D), D.3493
	movq	-32(%rbp), %rax	# namelen, tmp84
	movl	%edx, (%rax)	# D.3493, *namelen_4(D)
	.loc 1 116 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 117 0
	movl	-8(%rbp), %eax	# i, tmp85
	cltq
	salq	$5, %rax	#, D.3494
	movq	%rax, %rdx	# D.3494, D.3494
	movq	-24(%rbp), %rax	# defn, tmp86
	addq	%rdx, %rax	# D.3494, D.3495
	movq	(%rax), %rax	# _13->name, D.3496
	movq	%rax, %rdi	# D.3496,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.3494, l
	.loc 1 118 0
	movq	-32(%rbp), %rax	# namelen, tmp87
	movl	(%rax), %eax	# *namelen_4(D), D.3493
	cmpl	-4(%rbp), %eax	# l, D.3493
	jge	.L3	#,
	.loc 1 119 0
	movq	-32(%rbp), %rax	# namelen, tmp88
	movl	-4(%rbp), %edx	# l, tmp89
	movl	%edx, (%rax)	# tmp89, *namelen_4(D)
.L3:
	.loc 1 121 0
	movl	-8(%rbp), %eax	# i, tmp90
	cltq
	salq	$5, %rax	#, D.3494
	movq	%rax, %rdx	# D.3494, D.3494
	movq	-24(%rbp), %rax	# defn, tmp91
	addq	%rdx, %rax	# D.3494, D.3495
	movq	16(%rax), %rax	# _20->deflt, D.3496
	testq	%rax, %rax	# D.3496
	je	.L4	#,
	.loc 1 122 0
	movl	-8(%rbp), %eax	# i, tmp92
	cltq
	salq	$5, %rax	#, D.3494
	movq	%rax, %rdx	# D.3494, D.3494
	movq	-24(%rbp), %rax	# defn, tmp93
	addq	%rdx, %rax	# D.3494, D.3495
	movq	16(%rax), %rax	# _24->deflt, D.3496
	movq	%rax, %rdi	# D.3496,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.3494, l
	.loc 1 123 0
	movq	-40(%rbp), %rax	# deflen, tmp94
	movl	(%rax), %eax	# *deflen_2(D), D.3493
	cmpl	-4(%rbp), %eax	# l, D.3493
	jge	.L4	#,
	.loc 1 124 0
	movq	-40(%rbp), %rax	# deflen, tmp95
	movl	-4(%rbp), %edx	# l, tmp96
	movl	%edx, (%rax)	# tmp96, *deflen_2(D)
.L4:
	.loc 1 116 0
	addl	$1, -8(%rbp)	#, i
.L2:
	.loc 1 116 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp97
	cltq
	salq	$5, %rax	#, D.3494
	movq	%rax, %rdx	# D.3494, D.3494
	movq	-24(%rbp), %rax	# defn, tmp98
	addq	%rdx, %rax	# D.3494, D.3495
	movq	(%rax), %rax	# _9->name, D.3496
	testq	%rax, %rax	# D.3496
	jne	.L5	#,
	.loc 1 128 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, D.3497
	.loc 1 129 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	arg_strlen, .-arg_strlen
	.local	tmp_defn
	.comm	tmp_defn,8,8
	.type	cmp_name, @function
cmp_name:
.LFB3:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# a, a
	movq	%rsi, -16(%rbp)	# b, b
	.loc 1 137 0
	movq	tmp_defn(%rip), %rdx	# tmp_defn, tmp_defn.0
	movq	-16(%rbp), %rax	# b, tmp73
	movl	(%rax), %eax	# MEM[(int32 *)b_2(D)], D.3498
	cltq
	salq	$5, %rax	#, D.3499
	addq	%rdx, %rax	# tmp_defn.0, D.3500
	movq	(%rax), %rdx	# _6->name, D.3501
	movq	tmp_defn(%rip), %rcx	# tmp_defn, tmp_defn.1
	movq	-8(%rbp), %rax	# a, tmp74
	movl	(%rax), %eax	# MEM[(int32 *)a_9(D)], D.3498
	cltq
	salq	$5, %rax	#, D.3499
	addq	%rcx, %rax	# tmp_defn.1, D.3500
	movq	(%rax), %rax	# _13->name, D.3501
	movq	%rdx, %rsi	# D.3501,
	movq	%rax, %rdi	# D.3501,
	call	strcmp_nocase	#
	.loc 1 138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cmp_name, .-cmp_name
	.section	.rodata
.LC0:
	.string	"cmd_ln.c"
	.text
	.type	arg_sort, @function
arg_sort:
.LFB4:
	.loc 1 141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# defn, defn
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 145 0
	movl	-28(%rbp), %eax	# n, tmp66
	cltq
	movl	$145, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.3503,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp67, pos
	.loc 1 146 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 147 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp68
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3503
	movq	-8(%rbp), %rax	# pos, tmp69
	addq	%rax, %rdx	# tmp69, D.3504
	movl	-12(%rbp), %eax	# i, tmp70
	movl	%eax, (%rdx)	# tmp70, *_8
	.loc 1 146 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L10:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp71
	cmpl	-28(%rbp), %eax	# n, tmp71
	jl	.L11	#,
	.loc 1 148 0 is_stmt 1
	movq	-24(%rbp), %rax	# defn, tmp72
	movq	%rax, tmp_defn(%rip)	# tmp72, tmp_defn
	.loc 1 149 0
	movl	-28(%rbp), %eax	# n, tmp73
	movslq	%eax, %rsi	# tmp73, D.3503
	movq	-8(%rbp), %rax	# pos, tmp74
	movl	$cmp_name, %ecx	#,
	movl	$4, %edx	#,
	movq	%rax, %rdi	# tmp74,
	call	qsort	#
	.loc 1 150 0
	movq	$0, tmp_defn(%rip)	#, tmp_defn
	.loc 1 152 0
	movq	-8(%rbp), %rax	# pos, D.3504
	.loc 1 153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	arg_sort, .-arg_sort
	.section	.rodata
.LC1:
	.string	"%d"
.LC2:
	.string	"%f"
.LC3:
	.string	"%lf"
.LC4:
	.string	"FATAL_ERROR"
.LC5:
	.string	"Unknown argument type: %d\n"
	.text
	.type	arg_str2val, @function
arg_str2val:
.LFB5:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# v, v
	movl	%esi, -12(%rbp)	# t, t
	movq	%rdx, -24(%rbp)	# str, str
	.loc 1 158 0
	cmpq	$0, -24(%rbp)	#, str
	jne	.L14	#,
	.loc 1 159 0
	movq	-8(%rbp), %rax	# v, tmp70
	movq	$0, 8(%rax)	#, v_3(D)->ptr
	jmp	.L15	#
.L14:
	.loc 1 161 0
	cmpl	$9, -12(%rbp)	#, t
	ja	.L16	#,
	movl	-12(%rbp), %eax	# t, tmp71
	movq	.L18(,%rax,8), %rax	#, tmp72
	jmp	*%rax	# tmp72
	.section	.rodata
	.align 8
	.align 4
.L18:
	.quad	.L16
	.quad	.L16
	.quad	.L17
	.quad	.L17
	.quad	.L19
	.quad	.L19
	.quad	.L20
	.quad	.L20
	.quad	.L21
	.quad	.L21
	.text
.L17:
	.loc 1 164 0
	movq	-8(%rbp), %rdx	# v, D.3507
	movq	-24(%rbp), %rax	# str, tmp73
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp73,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.3508
	je	.L22	#,
	.loc 1 165 0
	movl	$-1, %eax	#, D.3506
	jmp	.L23	#
.L22:
	.loc 1 166 0
	movq	-8(%rbp), %rdx	# v, D.3507
	movq	-8(%rbp), %rax	# v, tmp74
	movq	%rdx, 8(%rax)	# D.3507, v_3(D)->ptr
	.loc 1 167 0
	jmp	.L15	#
.L19:
	.loc 1 170 0
	movq	-8(%rbp), %rdx	# v, D.3509
	movq	-24(%rbp), %rax	# str, tmp75
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp75,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.3508
	je	.L24	#,
	.loc 1 171 0
	movl	$-1, %eax	#, D.3506
	jmp	.L23	#
.L24:
	.loc 1 172 0
	movq	-8(%rbp), %rdx	# v, D.3509
	movq	-8(%rbp), %rax	# v, tmp76
	movq	%rdx, 8(%rax)	# D.3509, v_3(D)->ptr
	.loc 1 173 0
	jmp	.L15	#
.L20:
	.loc 1 176 0
	movq	-8(%rbp), %rdx	# v, D.3510
	movq	-24(%rbp), %rax	# str, tmp77
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp77,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.3508
	je	.L25	#,
	.loc 1 177 0
	movl	$-1, %eax	#, D.3506
	jmp	.L23	#
.L25:
	.loc 1 178 0
	movq	-8(%rbp), %rdx	# v, D.3510
	movq	-8(%rbp), %rax	# v, tmp78
	movq	%rdx, 8(%rax)	# D.3510, v_3(D)->ptr
	.loc 1 179 0
	jmp	.L15	#
.L21:
	.loc 1 182 0
	movq	-8(%rbp), %rax	# v, tmp79
	movq	-24(%rbp), %rdx	# str, tmp80
	movq	%rdx, 8(%rax)	# tmp80, v_3(D)->ptr
	.loc 1 183 0
	jmp	.L15	#
.L16:
	.loc 1 184 0
	movl	$.LC4, %edx	#,
	movl	$184, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %eax	# t, tmp81
	movl	%eax, %esi	# tmp81,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L15:
	.loc 1 188 0
	movl	$0, %eax	#, D.3506
.L23:
	.loc 1 189 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	arg_str2val, .-arg_str2val
	.section	.rodata
.LC6:
	.string	"[NAME]"
.LC7:
	.string	"\t[DEFLT]"
.LC8:
	.string	"\t[VALUE]\n"
.LC9:
	.string	"%e"
	.text
	.type	arg_dump, @function
arg_dump:
.LFB6:
	.loc 1 193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# fp, fp
	movq	%rsi, -64(%rbp)	# defn, defn
	movl	%edx, -68(%rbp)	# doc, doc
	.loc 1 200 0
	leaq	-36(%rbp), %rdx	#, tmp116
	leaq	-40(%rbp), %rcx	#, tmp117
	movq	-64(%rbp), %rax	# defn, tmp118
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	arg_strlen	#
	movl	%eax, -24(%rbp)	# tmp119, n
	.loc 1 201 0
	movl	-40(%rbp), %eax	# namelen, namelen.2
	andl	$-8, %eax	#, namelen.3
	movl	%eax, -40(%rbp)	# namelen.3, namelen
	.loc 1 202 0
	movl	-36(%rbp), %eax	# deflen, deflen.4
	andl	$-8, %eax	#, deflen.5
	movl	%eax, -36(%rbp)	# deflen.5, deflen
	.loc 1 204 0
	movq	-56(%rbp), %rax	# fp, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 205 0
	movl	$6, -28(%rbp)	#, l
	jmp	.L27	#
.L28:
	.loc 1 206 0 discriminator 2
	movq	-56(%rbp), %rax	# fp, tmp121
	movq	%rax, %rsi	# tmp121,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 205 0 discriminator 2
	addl	$8, -28(%rbp)	#, l
.L27:
	.loc 1 205 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# namelen, namelen.6
	cmpl	%eax, -28(%rbp)	# namelen.6, l
	jl	.L28	#,
	.loc 1 207 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
	.loc 1 208 0
	movl	$6, -28(%rbp)	#, l
	jmp	.L29	#
.L30:
	.loc 1 209 0 discriminator 2
	movq	-56(%rbp), %rax	# fp, tmp123
	movq	%rax, %rsi	# tmp123,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 208 0 discriminator 2
	addl	$8, -28(%rbp)	#, l
.L29:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# deflen, deflen.7
	cmpl	%eax, -28(%rbp)	# deflen.7, l
	jl	.L30	#,
	.loc 1 210 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 213 0
	movl	-24(%rbp), %edx	# n, tmp125
	movq	-64(%rbp), %rax	# defn, tmp126
	movl	%edx, %esi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	arg_sort	#
	movq	%rax, -16(%rbp)	# tmp127, pos
	.loc 1 214 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L31	#
.L47:
	.loc 1 215 0
	movl	-32(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3516
	movq	-16(%rbp), %rax	# pos, tmp129
	addq	%rdx, %rax	# D.3516, D.3517
	movl	(%rax), %eax	# *_24, tmp130
	movl	%eax, -20(%rbp)	# tmp130, j
	.loc 1 217 0
	movl	-20(%rbp), %eax	# j, tmp131
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp132
	addq	%rdx, %rax	# D.3516, D.3518
	movq	(%rax), %rax	# _28->name, D.3519
	movq	-56(%rbp), %rdx	# fp, tmp133
	movq	%rdx, %rsi	# tmp133,
	movq	%rax, %rdi	# D.3519,
	call	fputs	#
	.loc 1 218 0
	movl	-20(%rbp), %eax	# j, tmp134
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp135
	addq	%rdx, %rax	# D.3516, D.3518
	movq	(%rax), %rax	# _32->name, D.3519
	movq	%rax, %rdi	# D.3519,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.3516, l
	jmp	.L32	#
.L33:
	.loc 1 219 0 discriminator 2
	movq	-56(%rbp), %rax	# fp, tmp136
	movq	%rax, %rsi	# tmp136,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 218 0 discriminator 2
	addl	$8, -28(%rbp)	#, l
.L32:
	.loc 1 218 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# namelen, namelen.8
	cmpl	%eax, -28(%rbp)	# namelen.8, l
	jl	.L33	#,
	.loc 1 221 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp137
	movq	%rax, %rsi	# tmp137,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 222 0
	movl	-20(%rbp), %eax	# j, tmp138
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp139
	addq	%rdx, %rax	# D.3516, D.3518
	movq	16(%rax), %rax	# _40->deflt, D.3519
	testq	%rax, %rax	# D.3519
	je	.L34	#,
	.loc 1 223 0
	movl	-20(%rbp), %eax	# j, tmp140
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp141
	addq	%rdx, %rax	# D.3516, D.3518
	movq	16(%rax), %rax	# _44->deflt, D.3519
	movq	-56(%rbp), %rdx	# fp, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# D.3519,
	call	fputs	#
	.loc 1 224 0
	movl	-20(%rbp), %eax	# j, tmp143
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp144
	addq	%rdx, %rax	# D.3516, D.3518
	movq	16(%rax), %rax	# _48->deflt, D.3519
	movq	%rax, %rdi	# D.3519,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.3516, l
	.loc 1 227 0
	jmp	.L36	#
.L34:
	.loc 1 226 0
	movl	$0, -28(%rbp)	#, l
	.loc 1 227 0
	jmp	.L36	#
.L37:
	.loc 1 228 0 discriminator 2
	movq	-56(%rbp), %rax	# fp, tmp145
	movq	%rax, %rsi	# tmp145,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 227 0 discriminator 2
	addl	$8, -28(%rbp)	#, l
.L36:
	.loc 1 227 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# deflen, deflen.9
	cmpl	%eax, -28(%rbp)	# deflen.9, l
	jl	.L37	#,
	.loc 1 230 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$9, %edi	#,
	call	fputc	#
	.loc 1 231 0
	cmpl	$0, -68(%rbp)	#, doc
	je	.L38	#,
	.loc 1 232 0
	movl	-20(%rbp), %eax	# j, tmp147
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp148
	addq	%rdx, %rax	# D.3516, D.3518
	movq	24(%rax), %rax	# _58->doc, D.3519
	testq	%rax, %rax	# D.3519
	je	.L40	#,
	.loc 1 233 0
	movl	-20(%rbp), %eax	# j, tmp149
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp150
	addq	%rdx, %rax	# D.3516, D.3518
	movq	24(%rax), %rax	# _62->doc, D.3519
	movq	-56(%rbp), %rdx	# fp, tmp151
	movq	%rdx, %rsi	# tmp151,
	movq	%rax, %rdi	# D.3519,
	call	fputs	#
	jmp	.L40	#
.L38:
	.loc 1 235 0
	movl	-20(%rbp), %eax	# j, tmp152
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp153
	addq	%rdx, %rax	# D.3516, D.3518
	movq	(%rax), %rax	# _66->name, D.3519
	movq	%rax, %rdi	# D.3519,
	call	cmd_ln_access	#
	movq	%rax, -8(%rbp)	# tmp154, vp
	.loc 1 236 0
	cmpq	$0, -8(%rbp)	#, vp
	je	.L40	#,
	.loc 1 237 0
	movl	-20(%rbp), %eax	# j, tmp155
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp156
	addq	%rdx, %rax	# D.3516, D.3518
	movl	8(%rax), %eax	# _71->type, D.3520
	cmpl	$9, %eax	#, D.3520
	ja	.L41	#,
	movl	%eax, %eax	# D.3520, tmp157
	movq	.L43(,%rax,8), %rax	#, tmp158
	jmp	*%rax	# tmp158
	.section	.rodata
	.align 8
	.align 4
.L43:
	.quad	.L41
	.quad	.L41
	.quad	.L42
	.quad	.L42
	.quad	.L44
	.quad	.L44
	.quad	.L45
	.quad	.L45
	.quad	.L46
	.quad	.L46
	.text
.L42:
	.loc 1 240 0
	movq	-8(%rbp), %rax	# vp, tmp159
	movl	(%rax), %edx	# MEM[(int32 *)vp_68], D.3520
	movq	-56(%rbp), %rax	# fp, tmp160
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp160,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 241 0
	jmp	.L40	#
.L44:
	.loc 1 244 0
	movq	-8(%rbp), %rax	# vp, tmp161
	movss	(%rax), %xmm0	# MEM[(float32 *)vp_68], D.3521
	unpcklps	%xmm0, %xmm0	# D.3521, D.3521
	cvtps2pd	%xmm0, %xmm0	# D.3521, D.3522
	movq	-56(%rbp), %rax	# fp, tmp162
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp162,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 245 0
	jmp	.L40	#
.L45:
	.loc 1 248 0
	movq	-8(%rbp), %rax	# vp, tmp163
	movq	(%rax), %rax	# MEM[(float64 *)vp_68], D.3522
	movq	-56(%rbp), %rdx	# fp, tmp164
	movq	%rax, -80(%rbp)	# D.3522, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movl	$.LC9, %esi	#,
	movq	%rdx, %rdi	# tmp164,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 249 0
	jmp	.L40	#
.L46:
	.loc 1 252 0
	movq	-56(%rbp), %rdx	# fp, tmp165
	movq	-8(%rbp), %rax	# vp, tmp166
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# tmp166,
	call	fputs	#
	.loc 1 253 0
	jmp	.L40	#
.L41:
	.loc 1 254 0
	movl	$.LC4, %edx	#,
	movl	$254, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-20(%rbp), %eax	# j, tmp167
	cltq
	salq	$5, %rax	#, D.3516
	movq	%rax, %rdx	# D.3516, D.3516
	movq	-64(%rbp), %rax	# defn, tmp168
	addq	%rdx, %rax	# D.3516, D.3518
	movl	8(%rax), %eax	# _79->type, D.3520
	movl	%eax, %esi	# D.3520,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L40:
	.loc 1 259 0
	movq	-56(%rbp), %rax	# fp, tmp169
	movq	%rax, %rsi	# tmp169,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 214 0
	addl	$1, -32(%rbp)	#, i
.L31:
	.loc 1 214 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp170
	cmpl	-24(%rbp), %eax	# n, tmp170
	jl	.L47	#,
	.loc 1 261 0 is_stmt 1
	movq	-16(%rbp), %rax	# pos, tmp171
	movq	%rax, %rdi	# tmp171,
	call	ckd_free	#
	.loc 1 263 0
	movq	-56(%rbp), %rax	# fp, tmp172
	movq	%rax, %rsi	# tmp172,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 264 0
	movq	-56(%rbp), %rax	# fp, tmp173
	movq	%rax, %rdi	# tmp173,
	call	fflush	#
	.loc 1 265 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	arg_dump, .-arg_dump
	.section	.rodata
	.align 8
.LC10:
	.string	"Multiple sets of argument definitions not supported\n"
.LC11:
	.string	"INFO"
.LC12:
	.string	"Parsing command line:\n"
.LC13:
	.string	"Duplicate argument name: %s\n"
.LC14:
	.string	"ERROR"
.LC15:
	.string	"Unknown argument: %s\n"
	.align 8
.LC16:
	.string	"Multiple occurrences of argument %s\n"
	.align 8
.LC17:
	.string	"Argument value for '%s' missing\n"
	.align 8
.LC18:
	.string	"Bad argument value for %s: %s\n"
	.align 8
.LC19:
	.string	"Bad default argument value for %s: %s\n"
.LC20:
	.string	"Missing required argument %s\n"
	.text
	.globl	cmd_ln_parse
	.type	cmd_ln_parse, @function
cmd_ln_parse:
.LFB7:
	.loc 1 269 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# defn, defn
	movl	%esi, -28(%rbp)	# argc, argc
	movq	%rdx, -40(%rbp)	# argv, argv
	.loc 1 272 0
	movq	argval(%rip), %rax	# argval, argval.10
	testq	%rax, %rax	# argval.10
	je	.L49	#,
	.loc 1 273 0
	movl	$.LC4, %edx	#,
	movl	$273, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L49:
	.loc 1 276 0
	movl	$.LC11, %edx	#,
	movl	$276, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 288 0
	movl	$0, -4(%rbp)	#, n
	jmp	.L50	#
.L51:
	.loc 1 288 0 is_stmt 0 discriminator 2
	addl	$1, -4(%rbp)	#, n
.L50:
	.loc 1 288 0 discriminator 1
	movl	-4(%rbp), %eax	# n, tmp195
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp196
	addq	%rdx, %rax	# D.3528, D.3529
	movq	(%rax), %rax	# _10->name, D.3530
	testq	%rax, %rax	# D.3530
	jne	.L51	#,
	.loc 1 291 0 is_stmt 1
	movl	-4(%rbp), %eax	# n, tmp197
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp197,
	call	hash_new	#
	movq	%rax, ht(%rip)	# ht.11, ht
	.loc 1 292 0
	movl	-4(%rbp), %eax	# n, tmp198
	cltq
	movl	$292, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.3528,
	call	__ckd_calloc__	#
	movq	%rax, argval(%rip)	# argval.12, argval
	.loc 1 295 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L52	#
.L54:
	.loc 1 297 0
	movl	-12(%rbp), %edx	# i, i.13
	movl	-12(%rbp), %eax	# i, i.14
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rcx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp199
	addq	%rcx, %rax	# D.3528, D.3529
	movq	(%rax), %rcx	# _21->name, D.3530
	movq	ht(%rip), %rax	# ht, ht.15
	movq	%rcx, %rsi	# D.3530,
	movq	%rax, %rdi	# ht.15,
	call	hash_enter	#
	movl	-12(%rbp), %edx	# i, i.16
	cmpl	%edx, %eax	# i.16, D.3531
	je	.L53	#,
	.loc 1 298 0
	movl	$.LC4, %edx	#,
	movl	$298, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %eax	# i, i.17
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp200
	addq	%rdx, %rax	# D.3528, D.3529
	movq	(%rax), %rax	# _29->name, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L53:
	.loc 1 295 0
	movl	-12(%rbp), %eax	# i, i.18
	addl	$1, %eax	#, i.19
	movl	%eax, -12(%rbp)	# i.19, i
.L52:
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, i.20
	cmpl	-4(%rbp), %eax	# n, i.20
	jl	.L54	#,
	.loc 1 302 0 is_stmt 1
	movl	$1, -8(%rbp)	#, j
	jmp	.L55	#
.L60:
	.loc 1 303 0
	movl	-8(%rbp), %eax	# j, tmp201
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3528
	movq	-40(%rbp), %rax	# argv, tmp202
	addq	%rdx, %rax	# D.3528, D.3532
	movq	(%rax), %rcx	# *_38, D.3530
	movq	ht(%rip), %rax	# ht, ht.21
	leaq	-12(%rbp), %rdx	#, tmp203
	movq	%rcx, %rsi	# D.3530,
	movq	%rax, %rdi	# ht.21,
	call	hash_lookup	#
	testl	%eax, %eax	# D.3531
	jns	.L56	#,
	.loc 1 304 0
	movl	$.LC14, %edx	#,
	movl	$304, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-8(%rbp), %eax	# j, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3528
	movq	-40(%rbp), %rax	# argv, tmp205
	addq	%rdx, %rax	# D.3528, D.3532
	movq	(%rax), %rax	# *_44, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 305 0
	movq	stderr(%rip), %rax	# stderr, stderr.22
	movq	-24(%rbp), %rdx	# defn, tmp206
	movq	%rdx, %rsi	# tmp206,
	movq	%rax, %rdi	# stderr.22,
	call	cmd_ln_print_help	#
	.loc 1 306 0
	movl	$-1, %edi	#,
	call	exit	#
.L56:
	.loc 1 310 0
	movq	argval(%rip), %rax	# argval, argval.23
	movl	-12(%rbp), %edx	# i, i.24
	movslq	%edx, %rdx	# i.24, D.3528
	salq	$4, %rdx	#, D.3528
	addq	%rdx, %rax	# D.3528, D.3533
	movq	8(%rax), %rax	# _51->ptr, D.3534
	testq	%rax, %rax	# D.3534
	je	.L57	#,
	.loc 1 311 0
	movl	$.LC4, %edx	#,
	movl	$311, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-8(%rbp), %eax	# j, tmp207
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3528
	movq	-40(%rbp), %rax	# argv, tmp208
	addq	%rdx, %rax	# D.3528, D.3532
	movq	(%rax), %rax	# *_55, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L57:
	.loc 1 313 0
	movl	-8(%rbp), %eax	# j, tmp209
	addl	$1, %eax	#, D.3531
	cmpl	-28(%rbp), %eax	# argc, D.3531
	jl	.L58	#,
	.loc 1 314 0
	movl	$.LC14, %edx	#,
	movl	$314, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-8(%rbp), %eax	# j, tmp210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.3528
	movq	-40(%rbp), %rax	# argv, tmp211
	addq	%rdx, %rax	# D.3528, D.3532
	movq	(%rax), %rax	# *_60, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 315 0
	movq	stderr(%rip), %rax	# stderr, stderr.25
	movq	-24(%rbp), %rdx	# defn, tmp212
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# stderr.25,
	call	cmd_ln_print_help	#
	.loc 1 316 0
	movl	$-1, %edi	#,
	call	exit	#
.L58:
	.loc 1 320 0
	movl	-8(%rbp), %eax	# j, tmp213
	cltq
	addq	$1, %rax	#, D.3535
	leaq	0(,%rax,8), %rdx	#, D.3535
	movq	-40(%rbp), %rax	# argv, tmp214
	addq	%rdx, %rax	# D.3535, D.3532
	movq	(%rax), %rdx	# *_66, D.3530
	movl	-12(%rbp), %eax	# i, i.26
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rcx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp215
	addq	%rcx, %rax	# D.3528, D.3529
	movl	8(%rax), %eax	# _71->type, D.3531
	movq	argval(%rip), %rcx	# argval, argval.27
	movl	-12(%rbp), %esi	# i, i.28
	movslq	%esi, %rsi	# i.28, D.3528
	salq	$4, %rsi	#, D.3528
	addq	%rsi, %rcx	# D.3528, D.3533
	movl	%eax, %esi	# D.3531,
	movq	%rcx, %rdi	# D.3533,
	call	arg_str2val	#
	testl	%eax, %eax	# D.3531
	jns	.L59	#,
	.loc 1 321 0
	movl	$.LC14, %edx	#,
	movl	$321, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-8(%rbp), %eax	# j, tmp216
	cltq
	addq	$1, %rax	#, D.3535
	leaq	0(,%rax,8), %rdx	#, D.3535
	movq	-40(%rbp), %rax	# argv, tmp217
	addq	%rdx, %rax	# D.3535, D.3532
	movq	(%rax), %rdx	# *_82, D.3530
	movl	-8(%rbp), %eax	# j, tmp218
	cltq
	leaq	0(,%rax,8), %rcx	#, D.3528
	movq	-40(%rbp), %rax	# argv, tmp219
	addq	%rcx, %rax	# D.3528, D.3532
	movq	(%rax), %rax	# *_86, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 322 0
	movq	stderr(%rip), %rax	# stderr, stderr.29
	movq	-24(%rbp), %rdx	# defn, tmp220
	movq	%rdx, %rsi	# tmp220,
	movq	%rax, %rdi	# stderr.29,
	call	cmd_ln_print_help	#
	.loc 1 323 0
	movl	$-1, %edi	#,
	call	exit	#
.L59:
	.loc 1 302 0
	addl	$2, -8(%rbp)	#, j
.L55:
	.loc 1 302 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp221
	cmpl	-28(%rbp), %eax	# argc, tmp221
	jl	.L60	#,
	.loc 1 330 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L61	#
.L63:
	.loc 1 331 0
	movq	argval(%rip), %rax	# argval, argval.30
	movl	-12(%rbp), %edx	# i, i.31
	movslq	%edx, %rdx	# i.31, D.3528
	salq	$4, %rdx	#, D.3528
	addq	%rdx, %rax	# D.3528, D.3533
	movq	8(%rax), %rax	# _95->ptr, D.3534
	testq	%rax, %rax	# D.3534
	jne	.L62	#,
	.loc 1 332 0
	movl	-12(%rbp), %eax	# i, i.32
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp222
	addq	%rdx, %rax	# D.3528, D.3529
	movq	16(%rax), %rdx	# _100->deflt, D.3530
	movl	-12(%rbp), %eax	# i, i.33
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rcx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp223
	addq	%rcx, %rax	# D.3528, D.3529
	movl	8(%rax), %eax	# _105->type, D.3531
	movq	argval(%rip), %rcx	# argval, argval.34
	movl	-12(%rbp), %esi	# i, i.35
	movslq	%esi, %rsi	# i.35, D.3528
	salq	$4, %rsi	#, D.3528
	addq	%rsi, %rcx	# D.3528, D.3533
	movl	%eax, %esi	# D.3531,
	movq	%rcx, %rdi	# D.3533,
	call	arg_str2val	#
	testl	%eax, %eax	# D.3531
	jns	.L62	#,
	.loc 1 333 0
	movl	$.LC4, %edx	#,
	movl	$333, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	.loc 1 334 0
	movl	-12(%rbp), %eax	# i, i.36
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp224
	addq	%rdx, %rax	# D.3528, D.3529
	.loc 1 333 0
	movq	16(%rax), %rdx	# _116->deflt, D.3530
	.loc 1 334 0
	movl	-12(%rbp), %eax	# i, i.37
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rcx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp225
	addq	%rcx, %rax	# D.3528, D.3529
	.loc 1 333 0
	movq	(%rax), %rax	# _121->name, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L62:
	.loc 1 330 0
	movl	-12(%rbp), %eax	# i, i.38
	addl	$1, %eax	#, i.39
	movl	%eax, -12(%rbp)	# i.39, i
.L61:
	.loc 1 330 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, i.40
	cmpl	-4(%rbp), %eax	# n, i.40
	jl	.L63	#,
	.loc 1 339 0 is_stmt 1
	movl	$0, -8(%rbp)	#, j
	.loc 1 340 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L64	#
.L66:
	.loc 1 341 0
	movl	-12(%rbp), %eax	# i, i.41
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp226
	addq	%rdx, %rax	# D.3528, D.3529
	movl	8(%rax), %eax	# _130->type, D.3531
	andl	$1, %eax	#, D.3531
	testl	%eax, %eax	# D.3531
	je	.L65	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	argval(%rip), %rax	# argval, argval.42
	movl	-12(%rbp), %edx	# i, i.43
	movslq	%edx, %rdx	# i.43, D.3528
	salq	$4, %rdx	#, D.3528
	addq	%rdx, %rax	# D.3528, D.3533
	movq	8(%rax), %rax	# _137->ptr, D.3534
	testq	%rax, %rax	# D.3534
	jne	.L65	#,
	.loc 1 342 0 is_stmt 1
	movl	$.LC14, %edx	#,
	movl	$342, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %eax	# i, i.44
	cltq
	salq	$5, %rax	#, D.3528
	movq	%rax, %rdx	# D.3528, D.3528
	movq	-24(%rbp), %rax	# defn, tmp227
	addq	%rdx, %rax	# D.3528, D.3529
	movq	(%rax), %rax	# _142->name, D.3530
	movq	%rax, %rsi	# D.3530,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 343 0
	addl	$1, -8(%rbp)	#, j
.L65:
	.loc 1 340 0
	movl	-12(%rbp), %eax	# i, i.45
	addl	$1, %eax	#, i.46
	movl	%eax, -12(%rbp)	# i.46, i
.L64:
	.loc 1 340 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, i.47
	cmpl	-4(%rbp), %eax	# n, i.47
	jl	.L66	#,
	.loc 1 346 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, j
	jle	.L67	#,
	.loc 1 347 0
	movq	stderr(%rip), %rax	# stderr, stderr.48
	movq	-24(%rbp), %rdx	# defn, tmp228
	movq	%rdx, %rsi	# tmp228,
	movq	%rax, %rdi	# stderr.48,
	call	cmd_ln_print_help	#
	.loc 1 348 0
	movl	$-1, %edi	#,
	call	exit	#
.L67:
	.loc 1 357 0
	movl	$0, %eax	#, D.3536
	.loc 1 358 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	cmd_ln_parse, .-cmd_ln_parse
	.section	.rodata
.LC21:
	.string	"Arguments list definition:\n"
	.text
	.globl	cmd_ln_print_help
	.type	cmd_ln_print_help, @function
cmd_ln_print_help:
.LFB8:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# defn, defn
	.loc 1 363 0
	movq	-8(%rbp), %rax	# fp, tmp59
	movq	%rax, %rcx	# tmp59,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
	.loc 1 364 0
	movq	-16(%rbp), %rcx	# defn, tmp60
	movq	-8(%rbp), %rax	# fp, tmp61
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp60,
	movq	%rax, %rdi	# tmp61,
	call	arg_dump	#
	.loc 1 365 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cmd_ln_print_help, .-cmd_ln_print_help
	.section	.rodata
	.align 8
.LC22:
	.string	"cmd_ln_access invoked before cmd_ln_parse\n"
	.text
	.globl	cmd_ln_access
	.type	cmd_ln_access, @function
cmd_ln_access:
.LFB9:
	.loc 1 369 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# name, name
	.loc 1 372 0
	movq	argval(%rip), %rax	# argval, argval.49
	testq	%rax, %rax	# argval.49
	jne	.L71	#,
	.loc 1 373 0
	movl	$.LC4, %edx	#,
	movl	$373, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L71:
	.loc 1 375 0
	movq	ht(%rip), %rax	# ht, ht.50
	leaq	-4(%rbp), %rdx	#, tmp69
	movq	-24(%rbp), %rcx	# name, tmp70
	movq	%rcx, %rsi	# tmp70,
	movq	%rax, %rdi	# ht.50,
	call	hash_lookup	#
	testl	%eax, %eax	# D.3549
	jns	.L72	#,
	.loc 1 376 0
	movl	$.LC4, %edx	#,
	movl	$376, %esi	#,
	movl	$.LC0, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# name, tmp71
	movq	%rax, %rsi	# tmp71,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L72:
	.loc 1 378 0
	movq	argval(%rip), %rax	# argval, argval.51
	movl	-4(%rbp), %edx	# i, i.52
	movslq	%edx, %rdx	# i.52, D.3550
	salq	$4, %rdx	#, D.3550
	addq	%rdx, %rax	# D.3550, D.3551
	movq	8(%rax), %rax	# _9->ptr, D.3552
	.loc 1 379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	cmd_ln_access, .-cmd_ln_access
	.globl	cmd_ln_free
	.type	cmd_ln_free, @function
cmd_ln_free:
.LFB10:
	.loc 1 383 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 384 0
	movq	ht(%rip), %rax	# ht, ht.53
	movq	%rax, %rdi	# ht.53,
	call	hash_free	#
	.loc 1 385 0
	movq	argval(%rip), %rax	# argval, argval.54
	movq	%rax, %rdi	# argval.54,
	call	ckd_free	#
	.loc 1 387 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	cmd_ln_free, .-cmd_ln_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "libutil/prim_type.h"
	.file 7 "libutil/cmd_ln.h"
	.file 8 "libutil/hash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7b4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF84
	.byte	0x1
	.long	.LASF85
	.long	.LASF86
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
	.long	.LASF87
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
	.uleb128 0x6
	.byte	0x8
	.long	0x2b1
	.uleb128 0xe
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x45
	.long	0x2de
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x46
	.long	0x2f0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF55
	.uleb128 0xf
	.long	.LASF88
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x33b
	.uleb128 0x10
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x11
	.long	.LASF49
	.byte	0x6
	.byte	0x4a
	.long	0x2b2
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x4b
	.long	0x2bd
	.uleb128 0x11
	.long	.LASF52
	.byte	0x6
	.byte	0x4c
	.long	0x2d3
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0x4d
	.long	0x2e5
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x4e
	.long	0x2f7
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x4c
	.long	0x2b2
	.uleb128 0x12
	.byte	0x20
	.byte	0x7
	.byte	0x4f
	.long	0x38a
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x51
	.long	0x346
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x52
	.long	0x8f
	.byte	0x10
	.uleb128 0x13
	.string	"doc"
	.byte	0x7
	.byte	0x53
	.long	0x8f
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x54
	.long	0x351
	.uleb128 0x7
	.long	.LASF62
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3d2
	.uleb128 0x13
	.string	"key"
	.byte	0x8
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x13
	.string	"len"
	.byte	0x8
	.byte	0x5c
	.long	0x2b2
	.byte	0x8
	.uleb128 0x13
	.string	"val"
	.byte	0x8
	.byte	0x5e
	.long	0x2b2
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x5f
	.long	0x3d2
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0x2
	.long	.LASF64
	.byte	0x8
	.byte	0x60
	.long	0x395
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x410
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x63
	.long	0x410
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x64
	.long	0x2b2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x67
	.long	0x2c8
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d8
	.uleb128 0x2
	.long	.LASF68
	.byte	0x8
	.byte	0x68
	.long	0x3e3
	.uleb128 0x7
	.long	.LASF69
	.byte	0x10
	.byte	0x1
	.byte	0x49
	.long	0x446
	.uleb128 0x13
	.string	"val"
	.byte	0x1
	.byte	0x4a
	.long	0x33b
	.byte	0
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x4b
	.long	0x2ab
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x1
	.byte	0x4c
	.long	0x421
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x6f
	.long	0x2b2
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b5
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x6f
	.long	0x4b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0x6f
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x6f
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x71
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.byte	0x71
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38a
	.uleb128 0x6
	.byte	0x8
	.long	0x2b2
	.uleb128 0x14
	.long	.LASF75
	.byte	0x1
	.byte	0x87
	.long	0x2b2
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fb
	.uleb128 0x17
	.string	"a"
	.byte	0x1
	.byte	0x87
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.byte	0x87
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0x8c
	.long	0x4bb
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x551
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x8c
	.long	0x4b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.byte	0x8c
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"pos"
	.byte	0x1
	.byte	0x8e
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x8f
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x9c
	.long	0x2b2
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x599
	.uleb128 0x17
	.string	"v"
	.byte	0x1
	.byte	0x9c
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.byte	0x9c
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.string	"str"
	.byte	0x1
	.byte	0x9c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x446
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.byte	0xc0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x650
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0xc0
	.long	0x650
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0xc0
	.long	0x4b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"doc"
	.byte	0x1
	.byte	0xc0
	.long	0x2b2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.string	"pos"
	.byte	0x1
	.byte	0xc2
	.long	0x4bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0xc3
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"j"
	.byte	0x1
	.byte	0xc3
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"l"
	.byte	0x1
	.byte	0xc3
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xc3
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0xc4
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.byte	0xc4
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"vp"
	.byte	0x1
	.byte	0xc5
	.long	0x2ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x1a
	.long	.LASF80
	.byte	0x1
	.value	0x10c
	.long	0x2b2
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cd
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.value	0x10c
	.long	0x4b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF78
	.byte	0x1
	.value	0x10c
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.value	0x10c
	.long	0x6cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x10e
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"j"
	.byte	0x1
	.value	0x10e
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.string	"n"
	.byte	0x1
	.value	0x10e
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.value	0x169
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x70f
	.uleb128 0x1e
	.string	"fp"
	.byte	0x1
	.value	0x169
	.long	0x650
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.value	0x169
	.long	0x4b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.value	0x170
	.long	0x2ab
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x74e
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x1
	.value	0x170
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x172
	.long	0x2b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x1
	.value	0x17e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x4d
	.long	0x599
	.uleb128 0x9
	.byte	0x3
	.quad	argval
	.uleb128 0x16
	.string	"ht"
	.byte	0x1
	.byte	0x4e
	.long	0x791
	.uleb128 0x9
	.byte	0x3
	.quad	ht
	.uleb128 0x6
	.byte	0x8
	.long	0x416
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.byte	0x85
	.long	0x4b5
	.uleb128 0x9
	.byte	0x3
	.quad	tmp_defn
	.uleb128 0x20
	.long	.LASF92
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x20
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
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF83:
	.string	"tmp_defn"
.LASF81:
	.string	"cmd_ln_access"
.LASF69:
	.string	"argval_s"
.LASF59:
	.string	"type"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF80:
	.string	"cmd_ln_parse"
.LASF63:
	.string	"next"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF71:
	.string	"defn"
.LASF49:
	.string	"int32"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF89:
	.string	"arg_dump"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF51:
	.string	"uint8"
.LASF55:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF88:
	.string	"anytype_s"
.LASF56:
	.string	"anytype_t"
.LASF70:
	.string	"argval_t"
.LASF50:
	.string	"uint32"
.LASF90:
	.string	"cmd_ln_print_help"
.LASF76:
	.string	"arg_sort"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF86:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF61:
	.string	"arg_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF58:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF66:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF85:
	.string	"cmd_ln.c"
.LASF22:
	.string	"_IO_save_base"
.LASF33:
	.string	"_lock"
.LASF75:
	.string	"cmp_name"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF57:
	.string	"argtype_t"
.LASF52:
	.string	"float32"
.LASF10:
	.string	"sizetype"
.LASF19:
	.string	"_IO_write_end"
.LASF87:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF53:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF77:
	.string	"arg_str2val"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF62:
	.string	"hash_entry_s"
.LASF64:
	.string	"hash_entry_t"
.LASF5:
	.string	"short int"
.LASF65:
	.string	"table"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF67:
	.string	"nocase"
.LASF11:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF72:
	.string	"namelen"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
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
.LASF41:
	.string	"_unused2"
.LASF92:
	.string	"stderr"
.LASF74:
	.string	"arg_strlen"
.LASF73:
	.string	"deflen"
.LASF54:
	.string	"float64"
.LASF84:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF78:
	.string	"argc"
.LASF82:
	.string	"argval"
.LASF60:
	.string	"deflt"
.LASF91:
	.string	"cmd_ln_free"
.LASF79:
	.string	"argv"
.LASF17:
	.string	"_IO_write_base"
.LASF68:
	.string	"hash_table_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
