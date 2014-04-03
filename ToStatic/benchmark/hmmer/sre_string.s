	.file	"sre_string.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sre_string.c -mtune=generic -march=x86-64 -g
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
	.globl	Strdup
	.type	Strdup, @function
Strdup:
.LFB2:
	.file 1 "sre_string.c"
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 39 0
	cmpq	$0, -24(%rbp)	#, s
	jne	.L2	#,
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6046
	jmp	.L3	#
.L2:
	.loc 1 40 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp63
	movq	%rax, %rdi	# tmp63,
	call	strlen	#
	addq	$1, %rax	#, D.6047
	movq	%rax, %rdi	# D.6047,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp64, new
	cmpq	$0, -8(%rbp)	#, new
	jne	.L4	#,
	.loc 1 40 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6046
	jmp	.L3	#
.L4:
	.loc 1 41 0 is_stmt 1
	movq	-24(%rbp), %rdx	# s, tmp65
	movq	-8(%rbp), %rax	# new, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	strcpy	#
	.loc 1 42 0
	movq	-8(%rbp), %rax	# new, D.6046
.L3:
	.loc 1 43 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Strdup, .-Strdup
	.globl	StringChop
	.type	StringChop, @function
StringChop:
.LFB3:
	.loc 1 52 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 55 0
	movq	-24(%rbp), %rax	# s, tmp76
	movq	%rax, %rdi	# tmp76,
	call	strlen	#
	subl	$1, %eax	#, D.6049
	movl	%eax, -4(%rbp)	# D.6049, i
	.loc 1 56 0
	jmp	.L6	#
.L8:
	.loc 1 56 0 is_stmt 0 discriminator 1
	subl	$1, -4(%rbp)	#, i
.L6:
	cmpl	$0, -4(%rbp)	#, i
	js	.L7	#,
	.loc 1 56 0 discriminator 2
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_7, D.6051
	movl	-4(%rbp), %edx	# i, tmp77
	movslq	%edx, %rcx	# tmp77, D.6052
	movq	-24(%rbp), %rdx	# s, tmp78
	addq	%rcx, %rdx	# D.6052, D.6053
	movzbl	(%rdx), %edx	# *_10, D.6054
	movsbq	%dl, %rdx	# D.6054, D.6048
	addq	%rdx, %rdx	# D.6048
	addq	%rdx, %rax	# D.6048, D.6051
	movzwl	(%rax), %eax	# *_14, D.6055
	movzwl	%ax, %eax	# D.6055, D.6056
	andl	$8192, %eax	#, D.6056
	testl	%eax, %eax	# D.6056
	jne	.L8	#,
.L7:
	.loc 1 57 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp79
	cltq
	leaq	1(%rax), %rdx	#, D.6052
	movq	-24(%rbp), %rax	# s, tmp80
	addq	%rdx, %rax	# D.6052, D.6053
	movb	$0, (%rax)	#, *_21
	.loc 1 58 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	StringChop, .-StringChop
	.globl	Strinsert
	.type	Strinsert, @function
Strinsert:
.LFB4:
	.loc 1 64 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movl	%esi, %eax	# c, tmp62
	movl	%edx, -32(%rbp)	# pos, pos
	movb	%al, -28(%rbp)	# tmp62, c
	.loc 1 68 0
	movl	-32(%rbp), %eax	# pos, tmp63
	movslq	%eax, %rdx	# tmp63, D.6057
	movq	-24(%rbp), %rax	# s1, tmp67
	addq	%rdx, %rax	# D.6057, tmp66
	movq	%rax, -8(%rbp)	# tmp66, s
	jmp	.L10	#
.L11:
	.loc 1 71 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp68
	movzbl	(%rax), %eax	# *s_2, tmp69
	movb	%al, -9(%rbp)	# tmp69, oldc
	.loc 1 72 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp70
	movzbl	-28(%rbp), %edx	# c, tmp71
	movb	%dl, (%rax)	# tmp71, *s_2
	.loc 1 73 0 discriminator 2
	movzbl	-9(%rbp), %eax	# oldc, tmp72
	movb	%al, -28(%rbp)	# tmp72, c
	.loc 1 68 0 discriminator 2
	addq	$1, -8(%rbp)	#, s
.L10:
	.loc 1 68 0 is_stmt 0 discriminator 1
	cmpb	$0, -28(%rbp)	#, c
	jne	.L11	#,
	.loc 1 75 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp73
	movb	$0, (%rax)	#, *s_2
	.loc 1 77 0
	movl	$1, %eax	#, D.6058
	.loc 1 78 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Strinsert, .-Strinsert
	.globl	Strdelete
	.type	Strdelete, @function
Strdelete:
.LFB5:
	.loc 1 84 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s1, s1
	movl	%esi, -28(%rbp)	# pos, pos
	.loc 1 87 0
	movl	-28(%rbp), %eax	# pos, tmp64
	movslq	%eax, %rdx	# tmp64, D.6059
	movq	-24(%rbp), %rax	# s1, tmp68
	addq	%rdx, %rax	# D.6059, tmp67
	movq	%rax, -8(%rbp)	# tmp67, s
	jmp	.L14	#
.L15:
	.loc 1 88 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp69
	movzbl	1(%rax), %edx	# MEM[(char *)s_1 + 1B], D.6060
	movq	-8(%rbp), %rax	# s, tmp70
	movb	%dl, (%rax)	# D.6060, *s_1
	.loc 1 87 0 discriminator 2
	addq	$1, -8(%rbp)	#, s
.L14:
	.loc 1 87 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp71
	movzbl	(%rax), %eax	# *s_1, D.6060
	testb	%al, %al	# D.6060
	jne	.L15	#,
	.loc 1 90 0 is_stmt 1
	movl	$1, %eax	#, D.6061
	.loc 1 91 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Strdelete, .-Strdelete
	.globl	s2lower
	.type	s2lower, @function
s2lower:
.LFB6:
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 96 0
	jmp	.L18	#
.L19:
	.loc 1 97 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_1, D.6062
	movsbl	%al, %eax	# D.6062, D.6063
	movl	%eax, %edi	# D.6063,
	call	sre_tolower	#
	movl	%eax, %edx	# D.6063, D.6062
	movq	-8(%rbp), %rax	# s, tmp65
	movb	%dl, (%rax)	# D.6062, *s_1
	.loc 1 96 0 discriminator 2
	addq	$1, -8(%rbp)	#, s
.L18:
	.loc 1 96 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp66
	movzbl	(%rax), %eax	# *s_1, D.6062
	testb	%al, %al	# D.6062
	jne	.L19	#,
	.loc 1 98 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	s2lower, .-s2lower
	.globl	s2upper
	.type	s2upper, @function
s2upper:
.LFB7:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 103 0
	jmp	.L21	#
.L22:
	.loc 1 104 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_1, D.6064
	movsbl	%al, %eax	# D.6064, D.6065
	movl	%eax, %edi	# D.6065,
	call	sre_toupper	#
	movl	%eax, %edx	# D.6065, D.6064
	movq	-8(%rbp), %rax	# s, tmp65
	movb	%dl, (%rax)	# D.6064, *s_1
	.loc 1 103 0 discriminator 2
	addq	$1, -8(%rbp)	#, s
.L21:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp66
	movzbl	(%rax), %eax	# *s_1, D.6064
	testb	%al, %al	# D.6064
	jne	.L22	#,
	.loc 1 105 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	s2upper, .-s2upper
	.section	.rodata
	.align 8
.LC0:
	.string	"malloc of %ld bytes failed: file %s line %d"
	.text
	.globl	sre_malloc
	.type	sre_malloc, @function
sre_malloc:
.LFB8:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movl	%esi, -28(%rbp)	# line, line
	movq	%rdx, -40(%rbp)	# size, size
	.loc 1 114 0
	movq	-40(%rbp), %rax	# size, tmp61
	movq	%rax, %rdi	# tmp61,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp62, ptr
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L24	#,
	.loc 1 115 0
	movl	-28(%rbp), %ecx	# line, tmp63
	movq	-24(%rbp), %rdx	# file, tmp64
	movq	-40(%rbp), %rax	# size, tmp65
	movq	%rax, %rsi	# tmp65,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L24:
	.loc 1 116 0
	movq	-8(%rbp), %rax	# ptr, D.6066
	.loc 1 117 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sre_malloc, .-sre_malloc
	.section	.rodata
	.align 8
.LC1:
	.string	"realloc of %ld bytes failed: file %s line %d"
	.text
	.globl	sre_realloc
	.type	sre_realloc, @function
sre_realloc:
.LFB9:
	.loc 1 121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# file, file
	movl	%esi, -28(%rbp)	# line, line
	movq	%rdx, -40(%rbp)	# p, p
	movq	%rcx, -48(%rbp)	# size, size
	.loc 1 124 0
	movq	-48(%rbp), %rdx	# size, tmp61
	movq	-40(%rbp), %rax	# p, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	realloc	#
	movq	%rax, -8(%rbp)	# tmp63, ptr
	cmpq	$0, -8(%rbp)	#, ptr
	jne	.L27	#,
	.loc 1 125 0
	movl	-28(%rbp), %ecx	# line, tmp64
	movq	-24(%rbp), %rdx	# file, tmp65
	movq	-48(%rbp), %rax	# size, tmp66
	movq	%rax, %rsi	# tmp66,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L27:
	.loc 1 126 0
	movq	-8(%rbp), %rax	# ptr, D.6068
	.loc 1 127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sre_realloc, .-sre_realloc
	.globl	Free2DArray
	.type	Free2DArray, @function
Free2DArray:
.LFB10:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# dim1, dim1
	.loc 1 156 0
	cmpq	$0, -24(%rbp)	#, p
	je	.L29	#,
	.loc 1 157 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L31	#
.L33:
	.loc 1 158 0
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6070
	movq	-24(%rbp), %rax	# p, tmp68
	addq	%rdx, %rax	# D.6070, D.6071
	movq	(%rax), %rax	# *_7, D.6072
	testq	%rax, %rax	# D.6072
	je	.L32	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6070
	movq	-24(%rbp), %rax	# p, tmp70
	addq	%rdx, %rax	# D.6070, D.6071
	movq	(%rax), %rax	# *_11, D.6072
	movq	%rax, %rdi	# D.6072,
	call	free	#
.L32:
	.loc 1 157 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L31:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp71
	cmpl	-28(%rbp), %eax	# dim1, tmp71
	jl	.L33	#,
	.loc 1 159 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp72
	movq	%rax, %rdi	# tmp72,
	call	free	#
.L29:
	.loc 1 161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Free2DArray, .-Free2DArray
	.globl	Free3DArray
	.type	Free3DArray, @function
Free3DArray:
.LFB11:
	.loc 1 164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# dim1, dim1
	movl	%edx, -32(%rbp)	# dim2, dim2
	.loc 1 167 0
	cmpq	$0, -24(%rbp)	#, p
	je	.L34	#,
	.loc 1 168 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L36	#
.L41:
	.loc 1 169 0
	movl	-8(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6073
	movq	-24(%rbp), %rax	# p, tmp84
	addq	%rdx, %rax	# D.6073, D.6074
	movq	(%rax), %rax	# *_8, D.6075
	testq	%rax, %rax	# D.6075
	je	.L37	#,
	.loc 1 170 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L38	#
.L40:
	.loc 1 171 0
	movl	-8(%rbp), %eax	# i, tmp85
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6073
	movq	-24(%rbp), %rax	# p, tmp86
	addq	%rdx, %rax	# D.6073, D.6074
	movq	(%rax), %rax	# *_14, D.6075
	movl	-4(%rbp), %edx	# j, tmp87
	movslq	%edx, %rdx	# tmp87, D.6073
	salq	$3, %rdx	#, D.6073
	addq	%rdx, %rax	# D.6073, D.6075
	movq	(%rax), %rax	# *_18, D.6076
	testq	%rax, %rax	# D.6076
	je	.L39	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6073
	movq	-24(%rbp), %rax	# p, tmp89
	addq	%rdx, %rax	# D.6073, D.6074
	movq	(%rax), %rax	# *_22, D.6075
	movl	-4(%rbp), %edx	# j, tmp90
	movslq	%edx, %rdx	# tmp90, D.6073
	salq	$3, %rdx	#, D.6073
	addq	%rdx, %rax	# D.6073, D.6075
	movq	(%rax), %rax	# *_26, D.6076
	movq	%rax, %rdi	# D.6076,
	call	free	#
.L39:
	.loc 1 170 0 is_stmt 1
	addl	$1, -4(%rbp)	#, j
.L38:
	.loc 1 170 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp91
	cmpl	-32(%rbp), %eax	# dim2, tmp91
	jl	.L40	#,
	.loc 1 172 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6073
	movq	-24(%rbp), %rax	# p, tmp93
	addq	%rdx, %rax	# D.6073, D.6074
	movq	(%rax), %rax	# *_31, D.6075
	movq	%rax, %rdi	# D.6075,
	call	free	#
.L37:
	.loc 1 168 0
	addl	$1, -8(%rbp)	#, i
.L36:
	.loc 1 168 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp94
	cmpl	-28(%rbp), %eax	# dim1, tmp94
	jl	.L41	#,
	.loc 1 174 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp95
	movq	%rax, %rdi	# tmp95,
	call	free	#
.L34:
	.loc 1 176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Free3DArray, .-Free3DArray
	.section	.rodata
.LC2:
	.string	"sre_string.c"
	.text
	.globl	RandomSequence
	.type	RandomSequence, @function
RandomSequence:
.LFB12:
	.loc 1 195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# alphabet, alphabet
	movq	%rsi, -48(%rbp)	# p, p
	movl	%edx, -52(%rbp)	# n, n
	movl	%ecx, -56(%rbp)	# len, len
	.loc 1 199 0
	movl	-56(%rbp), %eax	# len, tmp71
	addl	$1, %eax	#, D.6077
	cltq
	movq	%rax, %rdx	# D.6078,
	movl	$199, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp72, s
	.loc 1 200 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L43	#
.L44:
	.loc 1 201 0 discriminator 2
	movl	-28(%rbp), %eax	# x, tmp73
	movslq	%eax, %rdx	# tmp73, D.6079
	movq	-24(%rbp), %rax	# s, tmp74
	leaq	(%rdx,%rax), %rbx	#, D.6080
	movl	-52(%rbp), %edx	# n, tmp75
	movq	-48(%rbp), %rax	# p, tmp76
	movl	%edx, %esi	# tmp75,
	movq	%rax, %rdi	# tmp76,
	call	FChoose	#
	movslq	%eax, %rdx	# D.6077, D.6079
	movq	-40(%rbp), %rax	# alphabet, tmp77
	addq	%rdx, %rax	# D.6079, D.6080
	movzbl	(%rax), %eax	# *_14, D.6081
	movb	%al, (%rbx)	# D.6081, *_8
	.loc 1 200 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L43:
	.loc 1 200 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# x, tmp78
	cmpl	-56(%rbp), %eax	# len, tmp78
	jl	.L44	#,
	.loc 1 202 0 is_stmt 1
	movl	-28(%rbp), %eax	# x, tmp79
	movslq	%eax, %rdx	# tmp79, D.6079
	movq	-24(%rbp), %rax	# s, tmp80
	addq	%rdx, %rax	# D.6079, D.6080
	movb	$0, (%rax)	#, *_18
	.loc 1 203 0
	movq	-24(%rbp), %rax	# s, D.6080
	.loc 1 204 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	RandomSequence, .-RandomSequence
	.globl	sre_fgets
	.type	sre_fgets, @function
sre_fgets:
.LFB13:
	.loc 1 246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# buf, buf
	movq	%rsi, -32(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# fp, fp
	.loc 1 251 0
	movq	-32(%rbp), %rax	# n, tmp89
	movl	(%rax), %eax	# *n_3(D), D.6084
	testl	%eax, %eax	# D.6084
	jne	.L47	#,
	.loc 1 253 0
	movl	$128, %edx	#,
	movl	$253, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# buf, tmp90
	movq	%rax, (%rdx)	# D.6085, *buf_6(D)
	.loc 1 254 0
	movq	-32(%rbp), %rax	# n, tmp91
	movl	$128, (%rax)	#, *n_3(D)
.L47:
	.loc 1 260 0
	movq	-32(%rbp), %rax	# n, tmp92
	movl	(%rax), %ecx	# *n_3(D), D.6084
	movq	-24(%rbp), %rax	# buf, tmp93
	movq	(%rax), %rax	# *buf_6(D), D.6083
	movq	-40(%rbp), %rdx	# fp, tmp94
	movl	%ecx, %esi	# D.6084,
	movq	%rax, %rdi	# D.6083,
	call	fgets	#
	testq	%rax, %rax	# D.6083
	jne	.L48	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6083
	jmp	.L49	#
.L48:
	.loc 1 267 0 is_stmt 1
	movq	-40(%rbp), %rax	# fp, tmp95
	movq	%rax, %rdi	# tmp95,
	call	feof	#
	testl	%eax, %eax	# D.6084
	je	.L50	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buf, tmp96
	movq	(%rax), %rax	# *buf_6(D), D.6083
	jmp	.L49	#
.L50:
	.loc 1 272 0 is_stmt 1
	movq	-24(%rbp), %rax	# buf, tmp97
	movq	(%rax), %rax	# *buf_6(D), D.6083
	movq	%rax, %rdi	# D.6083,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.6086, len
	.loc 1 273 0
	movq	-24(%rbp), %rax	# buf, tmp98
	movq	(%rax), %rax	# *buf_6(D), D.6083
	movl	-12(%rbp), %edx	# len, tmp99
	movslq	%edx, %rdx	# tmp99, D.6087
	subq	$1, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6083
	movzbl	(%rax), %eax	# *_20, D.6088
	cmpb	$10, %al	#, D.6088
	jne	.L51	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buf, tmp100
	movq	(%rax), %rax	# *buf_6(D), D.6083
	jmp	.L49	#
.L51:
	.loc 1 280 0 is_stmt 1
	movq	-32(%rbp), %rax	# n, tmp101
	movl	(%rax), %eax	# *n_3(D), D.6084
	subl	$1, %eax	#, tmp102
	movl	%eax, -16(%rbp)	# tmp102, pos
.L54:
	.loc 1 282 0
	movq	-32(%rbp), %rax	# n, tmp103
	movl	(%rax), %eax	# *n_3(D), D.6084
	leal	128(%rax), %edx	#, D.6084
	movq	-32(%rbp), %rax	# n, tmp104
	movl	%edx, (%rax)	# D.6084, *n_3(D)
	.loc 1 283 0
	movq	-32(%rbp), %rax	# n, tmp105
	movl	(%rax), %eax	# *n_3(D), D.6084
	movslq	%eax, %rdx	# D.6084, D.6086
	movq	-24(%rbp), %rax	# buf, tmp106
	movq	(%rax), %rax	# *buf_6(D), D.6083
	movq	%rdx, %rcx	# D.6086,
	movq	%rax, %rdx	# D.6083,
	movl	$283, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# buf, tmp107
	movq	%rax, (%rdx)	# D.6085, *buf_6(D)
	.loc 1 284 0
	movq	-24(%rbp), %rax	# buf, tmp108
	movq	(%rax), %rdx	# *buf_6(D), D.6083
	movl	-16(%rbp), %eax	# pos, tmp109
	cltq
	addq	%rdx, %rax	# D.6083, tmp110
	movq	%rax, -8(%rbp)	# tmp110, s
	.loc 1 285 0
	movq	-40(%rbp), %rdx	# fp, tmp111
	movq	-8(%rbp), %rax	# s, tmp112
	movl	$129, %esi	#,
	movq	%rax, %rdi	# tmp112,
	call	fgets	#
	testq	%rax, %rax	# D.6083
	jne	.L52	#,
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buf, tmp113
	movq	(%rax), %rax	# *buf_6(D), D.6083
	jmp	.L49	#
.L52:
	.loc 1 286 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp114
	movq	%rax, %rdi	# tmp114,
	call	strlen	#
	movl	%eax, -12(%rbp)	# D.6086, len
	.loc 1 287 0
	movl	-12(%rbp), %eax	# len, tmp115
	cltq
	leaq	-1(%rax), %rdx	#, D.6087
	movq	-8(%rbp), %rax	# s, tmp116
	addq	%rdx, %rax	# D.6087, D.6083
	movzbl	(%rax), %eax	# *_40, D.6088
	cmpb	$10, %al	#, D.6088
	jne	.L53	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# buf, tmp117
	movq	(%rax), %rax	# *buf_6(D), D.6083
	jmp	.L49	#
.L53:
	.loc 1 288 0 is_stmt 1
	subl	$-128, -16(%rbp)	#, pos
	.loc 1 289 0
	jmp	.L54	#
.L49:
	.loc 1 291 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	sre_fgets, .-sre_fgets
	.globl	sre_strcat
	.type	sre_strcat, @function
sre_strcat:
.LFB14:
	.loc 1 333 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest, dest
	movl	%esi, -28(%rbp)	# ldest, ldest
	movq	%rdx, -40(%rbp)	# src, src
	movl	%ecx, -32(%rbp)	# lsrc, lsrc
	.loc 1 336 0
	cmpl	$0, -28(%rbp)	#, ldest
	jns	.L56	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# dest, tmp81
	movq	(%rax), %rax	# *dest_7(D), D.6090
	testq	%rax, %rax	# D.6090
	je	.L57	#,
	movq	-24(%rbp), %rax	# dest, tmp82
	movq	(%rax), %rax	# *dest_7(D), D.6090
	movq	%rax, %rdi	# D.6090,
	call	strlen	#
	jmp	.L58	#
.L57:
	.loc 1 336 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L58:
	.loc 1 336 0 discriminator 1
	movl	%eax, -8(%rbp)	# iftmp.0, len1
	jmp	.L59	#
.L56:
	.loc 1 337 0 is_stmt 1
	movl	-28(%rbp), %eax	# ldest, tmp83
	movl	%eax, -8(%rbp)	# tmp83, len1
.L59:
	.loc 1 339 0
	cmpl	$0, -32(%rbp)	#, lsrc
	jns	.L60	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, src
	je	.L61	#,
	movq	-40(%rbp), %rax	# src, tmp84
	movq	%rax, %rdi	# tmp84,
	call	strlen	#
	jmp	.L62	#
.L61:
	.loc 1 339 0 discriminator 2
	movl	$0, %eax	#, iftmp.1
.L62:
	movl	%eax, -4(%rbp)	# iftmp.1, len2
	jmp	.L63	#
.L60:
	.loc 1 340 0 is_stmt 1
	movl	-32(%rbp), %eax	# lsrc, tmp85
	movl	%eax, -4(%rbp)	# tmp85, len2
.L63:
	.loc 1 342 0
	cmpl	$0, -4(%rbp)	#, len2
	jne	.L64	#,
	.loc 1 342 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# len1, D.6089
	jmp	.L65	#
.L64:
	.loc 1 344 0 is_stmt 1
	movq	-24(%rbp), %rax	# dest, tmp86
	movq	(%rax), %rax	# *dest_7(D), D.6090
	testq	%rax, %rax	# D.6090
	jne	.L66	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# len2, tmp87
	addl	$1, %eax	#, D.6089
	cltq
	movq	%rax, %rdx	# D.6091,
	movl	$344, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# dest, tmp88
	movq	%rax, (%rdx)	# D.6092, *dest_7(D)
	jmp	.L67	#
.L66:
	.loc 1 345 0 is_stmt 1
	movl	-4(%rbp), %eax	# len2, tmp89
	movl	-8(%rbp), %edx	# len1, tmp90
	addl	%edx, %eax	# tmp90, D.6089
	addl	$1, %eax	#, D.6089
	movslq	%eax, %rdx	# D.6089, D.6091
	movq	-24(%rbp), %rax	# dest, tmp91
	movq	(%rax), %rax	# *dest_7(D), D.6090
	movq	%rdx, %rcx	# D.6091,
	movq	%rax, %rdx	# D.6090,
	movl	$345, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# dest, tmp92
	movq	%rax, (%rdx)	# D.6092, *dest_7(D)
.L67:
	.loc 1 347 0
	movl	-4(%rbp), %eax	# len2, tmp93
	addl	$1, %eax	#, D.6089
	movslq	%eax, %rdx	# D.6089, D.6091
	movq	-24(%rbp), %rax	# dest, tmp94
	movq	(%rax), %rcx	# *dest_7(D), D.6090
	movl	-8(%rbp), %eax	# len1, tmp95
	cltq
	addq	%rax, %rcx	# D.6093, D.6090
	movq	-40(%rbp), %rax	# src, tmp96
	movq	%rax, %rsi	# tmp96,
	movq	%rcx, %rdi	# D.6090,
	call	memcpy	#
	.loc 1 348 0
	movl	-4(%rbp), %eax	# len2, tmp97
	movl	-8(%rbp), %edx	# len1, tmp98
	addl	%edx, %eax	# tmp98, D.6089
.L65:
	.loc 1 349 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	sre_strcat, .-sre_strcat
	.globl	sre_strtok
	.type	sre_strtok, @function
sre_strtok:
.LFB15:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# delim, delim
	movq	%rdx, -56(%rbp)	# len, len
	.loc 1 404 0
	movq	-40(%rbp), %rax	# s, tmp67
	movq	(%rax), %rax	# *s_2(D), tmp68
	movq	%rax, -16(%rbp)	# tmp68, begin
	.loc 1 405 0
	movq	-48(%rbp), %rdx	# delim, tmp69
	movq	-16(%rbp), %rax	# begin, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	strspn	#
	addq	%rax, -16(%rbp)	# D.6095, begin
	.loc 1 406 0
	movq	-16(%rbp), %rax	# begin, tmp71
	movzbl	(%rax), %eax	# *begin_6, D.6096
	testb	%al, %al	# D.6096
	jne	.L69	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6094
	jmp	.L70	#
.L69:
	.loc 1 408 0 is_stmt 1
	movq	-48(%rbp), %rdx	# delim, tmp72
	movq	-16(%rbp), %rax	# begin, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	strcspn	#
	movl	%eax, -20(%rbp)	# D.6095, n
	.loc 1 409 0
	movl	-20(%rbp), %eax	# n, tmp74
	movslq	%eax, %rdx	# tmp74, D.6097
	movq	-16(%rbp), %rax	# begin, tmp78
	addq	%rdx, %rax	# D.6097, tmp77
	movq	%rax, -8(%rbp)	# tmp77, end
	.loc 1 410 0
	movq	-8(%rbp), %rax	# end, tmp79
	movzbl	(%rax), %eax	# *end_12, D.6096
	testb	%al, %al	# D.6096
	jne	.L71	#,
	.loc 1 410 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp80
	movq	-8(%rbp), %rdx	# end, tmp81
	movq	%rdx, (%rax)	# tmp81, *s_2(D)
	jmp	.L72	#
.L71:
	.loc 1 412 0 is_stmt 1
	movq	-8(%rbp), %rax	# end, tmp82
	movb	$0, (%rax)	#, *end_12
	.loc 1 413 0
	movq	-8(%rbp), %rax	# end, tmp83
	leaq	1(%rax), %rdx	#, D.6094
	movq	-40(%rbp), %rax	# s, tmp84
	movq	%rdx, (%rax)	# D.6094, *s_2(D)
.L72:
	.loc 1 416 0
	cmpq	$0, -56(%rbp)	#, len
	je	.L73	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# len, tmp85
	movl	-20(%rbp), %edx	# n, tmp86
	movl	%edx, (%rax)	# tmp86, *len_15(D)
.L73:
	.loc 1 417 0 is_stmt 1
	movq	-16(%rbp), %rax	# begin, D.6094
.L70:
	.loc 1 418 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	sre_strtok, .-sre_strtok
	.globl	sre_strdup
	.type	sre_strdup, @function
sre_strdup:
.LFB16:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movl	%esi, -28(%rbp)	# n, n
	.loc 1 440 0
	cmpq	$0, -24(%rbp)	#, s
	jne	.L75	#,
	.loc 1 440 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6098
	jmp	.L76	#
.L75:
	.loc 1 441 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, n
	jns	.L77	#,
	.loc 1 441 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp64
	movq	%rax, %rdi	# tmp64,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.6099, n
.L77:
	.loc 1 442 0 is_stmt 1
	movl	-28(%rbp), %eax	# n, tmp65
	addl	$1, %eax	#, D.6100
	cltq
	movq	%rax, %rdx	# D.6099,
	movl	$442, %esi	#,
	movl	$.LC2, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp66, new
	.loc 1 443 0
	movq	-24(%rbp), %rdx	# s, tmp67
	movq	-8(%rbp), %rax	# new, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	strcpy	#
	.loc 1 444 0
	movq	-8(%rbp), %rax	# new, D.6098
.L76:
	.loc 1 445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	sre_strdup, .-sre_strdup
	.globl	sre_strncpy
	.type	sre_strncpy, @function
sre_strncpy:
.LFB17:
	.loc 1 463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# s1, s1
	movq	%rsi, -16(%rbp)	# s2, s2
	movl	%edx, -20(%rbp)	# n, n
	.loc 1 464 0
	movl	-20(%rbp), %eax	# n, tmp64
	movslq	%eax, %rdx	# tmp64, D.6101
	movq	-16(%rbp), %rcx	# s2, tmp65
	movq	-8(%rbp), %rax	# s1, tmp66
	movq	%rcx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	strncpy	#
	.loc 1 465 0
	movl	-20(%rbp), %eax	# n, tmp67
	movslq	%eax, %rdx	# tmp67, D.6102
	movq	-8(%rbp), %rax	# s1, tmp68
	addq	%rdx, %rax	# D.6102, D.6103
	movb	$0, (%rax)	#, *_6
	.loc 1 466 0
	movq	-8(%rbp), %rax	# s1, D.6103
	.loc 1 467 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	sre_strncpy, .-sre_strncpy
	.globl	IsBlankline
	.type	IsBlankline, @function
IsBlankline:
.LFB18:
	.loc 1 478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 479 0
	jmp	.L81	#
.L84:
	.loc 1 480 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_5, D.6107
	movq	-8(%rbp), %rax	# s, tmp71
	movzbl	(%rax), %eax	# *s_1, D.6105
	movsbq	%al, %rax	# D.6105, D.6108
	addq	%rax, %rax	# D.6108
	addq	%rdx, %rax	# D.6107, D.6107
	movzwl	(%rax), %eax	# *_10, D.6109
	movzwl	%ax, %eax	# D.6109, D.6104
	andl	$8192, %eax	#, D.6104
	testl	%eax, %eax	# D.6104
	jne	.L82	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6104
	jmp	.L83	#
.L82:
	.loc 1 479 0 is_stmt 1
	addq	$1, -8(%rbp)	#, s
.L81:
	.loc 1 479 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp72
	movzbl	(%rax), %eax	# *s_1, D.6105
	testb	%al, %al	# D.6105
	jne	.L84	#,
	.loc 1 481 0 is_stmt 1
	movl	$1, %eax	#, D.6104
.L83:
	.loc 1 482 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	IsBlankline, .-IsBlankline
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x89b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF94
	.byte	0x1
	.long	.LASF95
	.long	.LASF96
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
	.long	.LASF97
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xd
	.byte	0x4
	.byte	0x6
	.byte	0x30
	.long	0x322
	.uleb128 0xe
	.long	.LASF51
	.sleb128 256
	.uleb128 0xe
	.long	.LASF52
	.sleb128 512
	.uleb128 0xe
	.long	.LASF53
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF54
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF55
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF56
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF57
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF58
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF59
	.sleb128 1
	.uleb128 0xe
	.long	.LASF60
	.sleb128 2
	.uleb128 0xe
	.long	.LASF61
	.sleb128 4
	.uleb128 0xe
	.long	.LASF62
	.sleb128 8
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x24
	.long	0x8f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x35e
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x24
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"new"
	.byte	0x1
	.byte	0x26
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x33
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x394
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x33
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x3d
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f7
	.uleb128 0x10
	.string	"s1"
	.byte	0x1
	.byte	0x3d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"c"
	.byte	0x1
	.byte	0x3e
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"pos"
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x42
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x52
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x440
	.uleb128 0x10
	.string	"s1"
	.byte	0x1
	.byte	0x52
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"pos"
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x5e
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x46a
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x5e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.byte	0x65
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x494
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x65
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0x1
	.byte	0x6d
	.long	0x8d
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ee
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x6d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0x6d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x6d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x6f
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x1
	.byte	0x78
	.long	0x8d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x554
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x78
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0x78
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x78
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0x78
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x7a
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.byte	0x98
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x598
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0x98
	.long	0x598
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x98
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8d
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0xa3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fc
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0xa3
	.long	0x5fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0xa5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x598
	.uleb128 0xf
	.long	.LASF79
	.byte	0x1
	.byte	0xc2
	.long	0x8f
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x672
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0xc2
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"p"
	.byte	0x1
	.byte	0xc2
	.long	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xc4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0xc5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0x1
	.byte	0xf5
	.long	0x8f
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e3
	.uleb128 0x10
	.string	"buf"
	.byte	0x1
	.byte	0xf5
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"n"
	.byte	0x1
	.byte	0xf5
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0xf5
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xf7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xf8
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x11
	.string	"pos"
	.byte	0x1
	.byte	0xf9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x14c
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x760
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.value	0x14c
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x14c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x14c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.value	0x14c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.value	0x14e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.value	0x18f
	.long	0x8f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x7da
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x18f
	.long	0x2ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0x18f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.value	0x18f
	.long	0x2a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.value	0x191
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"end"
	.byte	0x1
	.value	0x191
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x192
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.value	0x1b4
	.long	0x8f
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x826
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x1b4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x1b4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1a
	.string	"new"
	.byte	0x1
	.value	0x1b6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x1ce
	.long	0x8f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x872
	.uleb128 0x18
	.string	"s1"
	.byte	0x1
	.value	0x1ce
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"s2"
	.byte	0x1
	.value	0x1ce
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x1ce
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1b
	.long	.LASF93
	.byte	0x1
	.value	0x1dd
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x1dd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x17
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
	.uleb128 0x1b
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
.LASF28:
	.string	"_flags2"
.LASF29:
	.string	"_old_offset"
.LASF80:
	.string	"alphabet"
.LASF83:
	.string	"dest"
.LASF69:
	.string	"s2upper"
.LASF24:
	.string	"_IO_save_end"
.LASF61:
	.string	"_ISpunct"
.LASF82:
	.string	"sre_strcat"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"_ISblank"
.LASF58:
	.string	"_ISgraph"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF90:
	.string	"begin"
.LASF63:
	.string	"Strdup"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF67:
	.string	"StringChop"
.LASF64:
	.string	"Strinsert"
.LASF20:
	.string	"_IO_buf_base"
.LASF71:
	.string	"file"
.LASF62:
	.string	"_ISalnum"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_markers"
.LASF65:
	.string	"oldc"
.LASF54:
	.string	"_ISdigit"
.LASF77:
	.string	"Free3DArray"
.LASF97:
	.string	"_IO_lock_t"
.LASF89:
	.string	"delim"
.LASF72:
	.string	"line"
.LASF74:
	.string	"sre_realloc"
.LASF91:
	.string	"sre_strdup"
.LASF47:
	.string	"float"
.LASF56:
	.string	"_ISspace"
.LASF96:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"long long int"
.LASF50:
	.string	"long long unsigned int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF19:
	.string	"_IO_write_end"
.LASF46:
	.string	"_pos"
.LASF60:
	.string	"_IScntrl"
.LASF95:
	.string	"sre_string.c"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF94:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF86:
	.string	"len1"
.LASF87:
	.string	"len2"
.LASF70:
	.string	"sre_malloc"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_read_end"
.LASF36:
	.string	"__pad2"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF39:
	.string	"__pad5"
.LASF92:
	.string	"sre_strncpy"
.LASF21:
	.string	"_IO_buf_end"
.LASF81:
	.string	"sre_fgets"
.LASF11:
	.string	"char"
.LASF52:
	.string	"_ISlower"
.LASF85:
	.string	"lsrc"
.LASF35:
	.string	"__pad1"
.LASF55:
	.string	"_ISxdigit"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF84:
	.string	"ldest"
.LASF75:
	.string	"Free2DArray"
.LASF44:
	.string	"_next"
.LASF66:
	.string	"Strdelete"
.LASF76:
	.string	"dim1"
.LASF78:
	.string	"dim2"
.LASF0:
	.string	"long unsigned int"
.LASF48:
	.string	"double"
.LASF93:
	.string	"IsBlankline"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF2:
	.string	"short unsigned int"
.LASF26:
	.string	"_chain"
.LASF73:
	.string	"size"
.LASF23:
	.string	"_IO_backup_base"
.LASF88:
	.string	"sre_strtok"
.LASF68:
	.string	"s2lower"
.LASF57:
	.string	"_ISprint"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF51:
	.string	"_ISupper"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF53:
	.string	"_ISalpha"
.LASF79:
	.string	"RandomSequence"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
