	.file	"vector.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# vector.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	vector_sum_norm
	.type	vector_sum_norm, @function
vector_sum_norm:
.LFB2:
	.file 1 "vector.c"
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# vec, vec
	movl	%esi, -44(%rbp)	# len, len
	.loc 1 83 0
	movl	$0, %eax	#, tmp76
	movq	%rax, -16(%rbp)	# tmp76, sum
	.loc 1 84 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 85 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp77
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5930
	movq	-40(%rbp), %rax	# vec, tmp78
	addq	%rdx, %rax	# D.5930, D.5931
	movss	(%rax), %xmm0	# *_10, D.5932
	unpcklps	%xmm0, %xmm0	# D.5932, D.5932
	cvtps2pd	%xmm0, %xmm0	# D.5932, D.5933
	movsd	-16(%rbp), %xmm1	# sum, tmp80
	addsd	%xmm1, %xmm0	# tmp80, tmp79
	movsd	%xmm0, -16(%rbp)	# tmp79, sum
	.loc 1 84 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L2:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp81
	cmpl	-44(%rbp), %eax	# len, tmp81
	jl	.L3	#,
	.loc 1 87 0 is_stmt 1
	xorpd	%xmm0, %xmm0	# tmp82
	ucomisd	-16(%rbp), %xmm0	# sum, tmp82
	jp	.L9	#,
	xorpd	%xmm0, %xmm0	# tmp83
	ucomisd	-16(%rbp), %xmm0	# sum, tmp83
	je	.L4	#,
.L9:
	.loc 1 88 0
	movsd	.LC1(%rip), %xmm0	#, tmp85
	divsd	-16(%rbp), %xmm0	# sum, tmp84
	movsd	%xmm0, -8(%rbp)	# tmp84, f
	.loc 1 89 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L6	#
.L7:
	.loc 1 92 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp86
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5930
	movq	-40(%rbp), %rax	# vec, tmp87
	addq	%rdx, %rax	# D.5930, D.5931
	movl	-20(%rbp), %edx	# i, tmp88
	movslq	%edx, %rdx	# tmp88, D.5930
	leaq	0(,%rdx,4), %rcx	#, D.5930
	movq	-40(%rbp), %rdx	# vec, tmp89
	addq	%rcx, %rdx	# D.5930, D.5931
	movss	(%rdx), %xmm0	# *_22, D.5932
	unpcklps	%xmm0, %xmm0	# D.5932, D.5932
	cvtps2pd	%xmm0, %xmm0	# D.5932, D.5933
	mulsd	-8(%rbp), %xmm0	# f, D.5933
	unpcklpd	%xmm0, %xmm0	# D.5933
	cvtpd2ps	%xmm0, %xmm0	# D.5933, D.5932
	movss	%xmm0, (%rax)	# D.5932, *_19
	.loc 1 89 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L6:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp90
	cmpl	-44(%rbp), %eax	# len, tmp90
	jl	.L7	#,
.L4:
	.loc 1 95 0 is_stmt 1
	movq	-16(%rbp), %rax	# sum, D.5934
	.loc 1 96 0
	movq	%rax, -56(%rbp)	# <retval>, %sfp
	movsd	-56(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	vector_sum_norm, .-vector_sum_norm
	.globl	vector_floor
	.type	vector_floor, @function
vector_floor:
.LFB3:
	.loc 1 100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# len, len
	movsd	%xmm0, -40(%rbp)	# flr, flr
	.loc 1 103 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L11	#
.L14:
	.loc 1 104 0
	movl	-4(%rbp), %eax	# i, tmp68
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5936
	movq	-24(%rbp), %rax	# vec, tmp69
	addq	%rdx, %rax	# D.5936, D.5937
	movss	(%rax), %xmm0	# *_7, D.5938
	unpcklps	%xmm0, %xmm0	# D.5938, D.5938
	cvtps2pd	%xmm0, %xmm0	# D.5938, D.5939
	movsd	-40(%rbp), %xmm1	# flr, tmp70
	ucomisd	%xmm0, %xmm1	# D.5939, tmp70
	jbe	.L12	#,
	.loc 1 105 0
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5936
	movq	-24(%rbp), %rax	# vec, tmp72
	addq	%rdx, %rax	# D.5936, D.5937
	movsd	-40(%rbp), %xmm0	# flr, D.5938
	cvtpd2ps	%xmm0, %xmm0	# D.5938, D.5938
	movss	%xmm0, (%rax)	# D.5938, *_13
.L12:
	.loc 1 103 0
	addl	$1, -4(%rbp)	#, i
.L11:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp73
	cmpl	-28(%rbp), %eax	# len, tmp73
	jl	.L14	#,
	.loc 1 106 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	vector_floor, .-vector_floor
	.globl	vector_nz_floor
	.type	vector_nz_floor, @function
vector_nz_floor:
.LFB4:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# len, len
	movsd	%xmm0, -40(%rbp)	# flr, flr
	.loc 1 113 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L17	#
.L21:
	.loc 1 114 0
	movl	-4(%rbp), %eax	# i, tmp72
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5940
	movq	-24(%rbp), %rax	# vec, tmp73
	addq	%rdx, %rax	# D.5940, D.5941
	movss	(%rax), %xmm0	# *_7, D.5942
	xorps	%xmm1, %xmm1	# tmp74
	ucomiss	%xmm1, %xmm0	# tmp74, D.5942
	jp	.L22	#,
	xorps	%xmm1, %xmm1	# tmp75
	ucomiss	%xmm1, %xmm0	# tmp75, D.5942
	je	.L18	#,
.L22:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp76
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5940
	movq	-24(%rbp), %rax	# vec, tmp77
	addq	%rdx, %rax	# D.5940, D.5941
	movss	(%rax), %xmm0	# *_11, D.5942
	unpcklps	%xmm0, %xmm0	# D.5942, D.5942
	cvtps2pd	%xmm0, %xmm0	# D.5942, D.5943
	movsd	-40(%rbp), %xmm1	# flr, tmp78
	ucomisd	%xmm0, %xmm1	# D.5943, tmp78
	jbe	.L18	#,
	.loc 1 115 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp79
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5940
	movq	-24(%rbp), %rax	# vec, tmp80
	addq	%rdx, %rax	# D.5940, D.5941
	movsd	-40(%rbp), %xmm0	# flr, D.5942
	cvtpd2ps	%xmm0, %xmm0	# D.5942, D.5942
	movss	%xmm0, (%rax)	# D.5942, *_17
.L18:
	.loc 1 113 0
	addl	$1, -4(%rbp)	#, i
.L17:
	.loc 1 113 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp81
	cmpl	-28(%rbp), %eax	# len, tmp81
	jl	.L21	#,
	.loc 1 116 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	vector_nz_floor, .-vector_nz_floor
	.section	.rodata
.LC3:
	.string	" %11.4e"
	.text
	.globl	vector_print
	.type	vector_print, @function
vector_print:
.LFB5:
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# v, v
	movl	%edx, -36(%rbp)	# dim, dim
	.loc 1 123 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L25	#
.L26:
	.loc 1 124 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp64
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5944
	movq	-32(%rbp), %rax	# v, tmp65
	addq	%rdx, %rax	# D.5944, D.5945
	movss	(%rax), %xmm0	# *_7, D.5946
	unpcklps	%xmm0, %xmm0	# D.5946, D.5946
	cvtps2pd	%xmm0, %xmm0	# D.5946, D.5947
	movq	-24(%rbp), %rax	# fp, tmp66
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp66,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 123 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L25:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp67
	cmpl	-36(%rbp), %eax	# dim, tmp67
	jl	.L26	#,
	.loc 1 125 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp68
	movq	%rax, %rsi	# tmp68,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 126 0
	movq	-24(%rbp), %rax	# fp, tmp69
	movq	%rax, %rdi	# tmp69,
	call	fflush	#
	.loc 1 127 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	vector_print, .-vector_print
	.globl	vector_is_zero
	.type	vector_is_zero, @function
vector_is_zero:
.LFB6:
	.loc 1 131 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# vec, vec
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 134 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L28	#
.L30:
	.loc 1 134 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, i
.L28:
	movl	-4(%rbp), %eax	# i, tmp66
	cmpl	-28(%rbp), %eax	# len, tmp66
	jge	.L29	#,
	.loc 1 134 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5949
	movq	-24(%rbp), %rax	# vec, tmp68
	addq	%rdx, %rax	# D.5949, D.5950
	movss	(%rax), %xmm0	# *_7, D.5951
	xorps	%xmm1, %xmm1	# tmp69
	ucomiss	%xmm1, %xmm0	# tmp69, D.5951
	jp	.L29	#,
	xorps	%xmm1, %xmm1	# tmp70
	ucomiss	%xmm1, %xmm0	# tmp70, D.5951
	je	.L30	#,
.L29:
	.loc 1 135 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp71
	cmpl	-28(%rbp), %eax	# len, tmp71
	sete	%al	#, D.5952
	movzbl	%al, %eax	# D.5952, D.5953
	.loc 1 136 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	vector_is_zero, .-vector_is_zero
	.globl	vector_maxcomp_int32
	.type	vector_maxcomp_int32, @function
vector_maxcomp_int32:
.LFB7:
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# val, val
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 143 0
	movl	$0, -4(%rbp)	#, bi
	.loc 1 144 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L34	#
.L36:
	.loc 1 145 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5954
	movq	-24(%rbp), %rax	# val, tmp70
	addq	%rdx, %rax	# D.5954, D.5955
	movl	(%rax), %edx	# *_10, D.5956
	movl	-4(%rbp), %eax	# bi, tmp71
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5954
	movq	-24(%rbp), %rax	# val, tmp72
	addq	%rcx, %rax	# D.5954, D.5955
	movl	(%rax), %eax	# *_14, D.5956
	cmpl	%eax, %edx	# D.5956, D.5956
	jle	.L35	#,
	.loc 1 146 0
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, bi
.L35:
	.loc 1 144 0
	addl	$1, -8(%rbp)	#, i
.L34:
	.loc 1 144 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# len, tmp74
	jl	.L36	#,
	.loc 1 148 0 is_stmt 1
	movl	-4(%rbp), %eax	# bi, D.5957
	.loc 1 149 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	vector_maxcomp_int32, .-vector_maxcomp_int32
	.globl	vector_mincomp_int32
	.type	vector_mincomp_int32, @function
vector_mincomp_int32:
.LFB8:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# val, val
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 156 0
	movl	$0, -4(%rbp)	#, bi
	.loc 1 157 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L39	#
.L41:
	.loc 1 158 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5958
	movq	-24(%rbp), %rax	# val, tmp70
	addq	%rdx, %rax	# D.5958, D.5959
	movl	(%rax), %edx	# *_10, D.5960
	movl	-4(%rbp), %eax	# bi, tmp71
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5958
	movq	-24(%rbp), %rax	# val, tmp72
	addq	%rcx, %rax	# D.5958, D.5959
	movl	(%rax), %eax	# *_14, D.5960
	cmpl	%eax, %edx	# D.5960, D.5960
	jge	.L40	#,
	.loc 1 159 0
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, bi
.L40:
	.loc 1 157 0
	addl	$1, -8(%rbp)	#, i
.L39:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# len, tmp74
	jl	.L41	#,
	.loc 1 161 0 is_stmt 1
	movl	-4(%rbp), %eax	# bi, D.5961
	.loc 1 162 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	vector_mincomp_int32, .-vector_mincomp_int32
	.globl	vector_maxcomp_float32
	.type	vector_maxcomp_float32, @function
vector_maxcomp_float32:
.LFB9:
	.loc 1 166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# val, val
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 169 0
	movl	$0, -4(%rbp)	#, bi
	.loc 1 170 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L44	#
.L47:
	.loc 1 171 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5962
	movq	-24(%rbp), %rax	# val, tmp70
	addq	%rdx, %rax	# D.5962, D.5963
	movss	(%rax), %xmm0	# *_10, D.5964
	movl	-4(%rbp), %eax	# bi, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5962
	movq	-24(%rbp), %rax	# val, tmp72
	addq	%rdx, %rax	# D.5962, D.5963
	movss	(%rax), %xmm1	# *_14, D.5964
	ucomiss	%xmm1, %xmm0	# D.5964, D.5964
	jbe	.L45	#,
	.loc 1 172 0
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, bi
.L45:
	.loc 1 170 0
	addl	$1, -8(%rbp)	#, i
.L44:
	.loc 1 170 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# len, tmp74
	jl	.L47	#,
	.loc 1 174 0 is_stmt 1
	movl	-4(%rbp), %eax	# bi, D.5965
	.loc 1 175 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	vector_maxcomp_float32, .-vector_maxcomp_float32
	.globl	vector_mincomp_float32
	.type	vector_mincomp_float32, @function
vector_mincomp_float32:
.LFB10:
	.loc 1 179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# val, val
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 182 0
	movl	$0, -4(%rbp)	#, bi
	.loc 1 183 0
	movl	$1, -8(%rbp)	#, i
	jmp	.L51	#
.L54:
	.loc 1 184 0
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5966
	movq	-24(%rbp), %rax	# val, tmp70
	addq	%rdx, %rax	# D.5966, D.5967
	movss	(%rax), %xmm1	# *_10, D.5968
	movl	-4(%rbp), %eax	# bi, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5966
	movq	-24(%rbp), %rax	# val, tmp72
	addq	%rdx, %rax	# D.5966, D.5967
	movss	(%rax), %xmm0	# *_14, D.5968
	ucomiss	%xmm1, %xmm0	# D.5968, D.5968
	jbe	.L52	#,
	.loc 1 185 0
	movl	-8(%rbp), %eax	# i, tmp73
	movl	%eax, -4(%rbp)	# tmp73, bi
.L52:
	.loc 1 183 0
	addl	$1, -8(%rbp)	#, i
.L51:
	.loc 1 183 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp74
	cmpl	-28(%rbp), %eax	# len, tmp74
	jl	.L54	#,
	.loc 1 187 0 is_stmt 1
	movl	-4(%rbp), %eax	# bi, D.5969
	.loc 1 188 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	vector_mincomp_float32, .-vector_mincomp_float32
	.globl	vector_accum
	.type	vector_accum, @function
vector_accum:
.LFB11:
	.loc 1 192 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# dst, dst
	movq	%rsi, -32(%rbp)	# src, src
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 195 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L58	#
.L59:
	.loc 1 196 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5970
	movq	-24(%rbp), %rax	# dst, tmp72
	addq	%rdx, %rax	# D.5970, D.5971
	movl	-4(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.5970
	leaq	0(,%rdx,4), %rcx	#, D.5970
	movq	-24(%rbp), %rdx	# dst, tmp74
	addq	%rcx, %rdx	# D.5970, D.5971
	movss	(%rdx), %xmm1	# *_10, D.5972
	movl	-4(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.5970
	leaq	0(,%rdx,4), %rcx	#, D.5970
	movq	-32(%rbp), %rdx	# src, tmp76
	addq	%rcx, %rdx	# D.5970, D.5971
	movss	(%rdx), %xmm0	# *_15, D.5972
	addss	%xmm1, %xmm0	# D.5972, D.5972
	movss	%xmm0, (%rax)	# D.5972, *_7
	.loc 1 195 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L58:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp77
	cmpl	-36(%rbp), %eax	# len, tmp77
	jl	.L59	#,
	.loc 1 197 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	vector_accum, .-vector_accum
	.globl	vector_cmp
	.type	vector_cmp, @function
vector_cmp:
.LFB12:
	.loc 1 201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# v1, v1
	movq	%rsi, -32(%rbp)	# v2, v2
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 204 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L61	#
.L67:
	.loc 1 205 0
	movl	-4(%rbp), %eax	# i, tmp77
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5974
	movq	-24(%rbp), %rax	# v1, tmp78
	addq	%rdx, %rax	# D.5974, D.5975
	movss	(%rax), %xmm1	# *_8, D.5976
	movl	-4(%rbp), %eax	# i, tmp79
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5974
	movq	-32(%rbp), %rax	# v2, tmp80
	addq	%rdx, %rax	# D.5974, D.5975
	movss	(%rax), %xmm0	# *_13, D.5976
	ucomiss	%xmm1, %xmm0	# D.5976, D.5976
	jbe	.L70	#,
	.loc 1 206 0
	movl	$-1, %eax	#, D.5973
	jmp	.L64	#
.L70:
	.loc 1 207 0
	movl	-4(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5974
	movq	-24(%rbp), %rax	# v1, tmp82
	addq	%rdx, %rax	# D.5974, D.5975
	movss	(%rax), %xmm0	# *_18, D.5976
	movl	-4(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5974
	movq	-32(%rbp), %rax	# v2, tmp84
	addq	%rdx, %rax	# D.5974, D.5975
	movss	(%rax), %xmm1	# *_22, D.5976
	ucomiss	%xmm1, %xmm0	# D.5976, D.5976
	jbe	.L71	#,
	.loc 1 208 0
	movl	$1, %eax	#, D.5973
	jmp	.L64	#
.L71:
	.loc 1 204 0
	addl	$1, -4(%rbp)	#, i
.L61:
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp85
	cmpl	-36(%rbp), %eax	# len, tmp85
	jl	.L67	#,
	.loc 1 211 0 is_stmt 1
	movl	$0, %eax	#, D.5973
.L64:
	.loc 1 212 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	vector_cmp, .-vector_cmp
	.globl	vector_mean
	.type	vector_mean, @function
vector_mean:
.LFB13:
	.loc 1 216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# mean, mean
	movq	%rsi, -32(%rbp)	# data, data
	movl	%edx, -36(%rbp)	# n_vec, n_vec
	movl	%ecx, -40(%rbp)	# n_dim, n_dim
	.loc 1 222 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 223 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5977
	movq	-24(%rbp), %rax	# mean, tmp91
	addq	%rax, %rdx	# tmp91, D.5978
	movl	.LC2(%rip), %eax	#, tmp92
	movl	%eax, (%rdx)	# tmp92, *_10
	.loc 1 222 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L73:
	.loc 1 222 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp93
	cmpl	-40(%rbp), %eax	# n_dim, tmp93
	jl	.L74	#,
	.loc 1 225 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L75	#
.L78:
	.loc 1 226 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L76	#
.L77:
	.loc 1 227 0 discriminator 2
	movl	-12(%rbp), %eax	# j, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5977
	movq	-24(%rbp), %rax	# mean, tmp95
	addq	%rdx, %rax	# D.5977, D.5978
	movl	-12(%rbp), %edx	# j, tmp96
	movslq	%edx, %rdx	# tmp96, D.5977
	leaq	0(,%rdx,4), %rcx	#, D.5977
	movq	-24(%rbp), %rdx	# mean, tmp97
	addq	%rcx, %rdx	# D.5977, D.5978
	movss	(%rdx), %xmm1	# *_20, D.5979
	movl	-16(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, D.5977
	leaq	0(,%rdx,8), %rcx	#, D.5977
	movq	-32(%rbp), %rdx	# data, tmp99
	addq	%rcx, %rdx	# D.5977, D.5980
	movq	(%rdx), %rdx	# *_25, D.5978
	movl	-12(%rbp), %ecx	# j, tmp100
	movslq	%ecx, %rcx	# tmp100, D.5977
	salq	$2, %rcx	#, D.5977
	addq	%rcx, %rdx	# D.5977, D.5978
	movss	(%rdx), %xmm0	# *_29, D.5979
	addss	%xmm1, %xmm0	# D.5979, D.5979
	movss	%xmm0, (%rax)	# D.5979, *_17
	.loc 1 226 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L76:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp101
	cmpl	-40(%rbp), %eax	# n_dim, tmp101
	jl	.L77	#,
	.loc 1 225 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L75:
	.loc 1 225 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp102
	cmpl	-36(%rbp), %eax	# n_vec, tmp102
	jl	.L78	#,
	.loc 1 230 0 is_stmt 1
	cvtsi2sd	-36(%rbp), %xmm0	# n_vec, D.5981
	movsd	.LC1(%rip), %xmm1	#, tmp104
	divsd	%xmm0, %xmm1	# D.5981, tmp103
	movapd	%xmm1, %xmm0	# tmp103, tmp103
	movsd	%xmm0, -8(%rbp)	# tmp103, f
	.loc 1 231 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L79	#
.L80:
	.loc 1 232 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp105
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5977
	movq	-24(%rbp), %rax	# mean, tmp106
	addq	%rdx, %rax	# D.5977, D.5978
	movl	-16(%rbp), %edx	# i, tmp107
	movslq	%edx, %rdx	# tmp107, D.5977
	leaq	0(,%rdx,4), %rcx	#, D.5977
	movq	-24(%rbp), %rdx	# mean, tmp108
	addq	%rcx, %rdx	# D.5977, D.5978
	movss	(%rdx), %xmm1	# *_42, D.5979
	movsd	-8(%rbp), %xmm0	# f, D.5979
	cvtpd2ps	%xmm0, %xmm0	# D.5979, D.5979
	mulss	%xmm1, %xmm0	# D.5979, D.5979
	movss	%xmm0, (%rax)	# D.5979, *_39
	.loc 1 231 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L79:
	.loc 1 231 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp109
	cmpl	-40(%rbp), %eax	# n_dim, tmp109
	jl	.L80	#,
	.loc 1 234 0 is_stmt 1
	movl	$0, %eax	#, D.5982
	.loc 1 235 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	vector_mean, .-vector_mean
	.globl	vector_dist_eucl
	.type	vector_dist_eucl, @function
vector_dist_eucl:
.LFB14:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# v1, v1
	movq	%rsi, -32(%rbp)	# v2, v2
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 243 0
	movl	$0, %eax	#, tmp81
	movq	%rax, -8(%rbp)	# tmp81, d
	.loc 1 244 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L83	#
.L84:
	.loc 1 245 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5983
	movq	-24(%rbp), %rax	# v1, tmp83
	addq	%rdx, %rax	# D.5983, D.5984
	movss	(%rax), %xmm0	# *_9, D.5985
	movl	-12(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5983
	movq	-32(%rbp), %rax	# v2, tmp85
	addq	%rdx, %rax	# D.5983, D.5984
	movss	(%rax), %xmm1	# *_14, D.5985
	subss	%xmm1, %xmm0	# D.5985, D.5985
	movaps	%xmm0, %xmm1	# D.5985, D.5985
	movl	-12(%rbp), %eax	# i, tmp86
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5983
	movq	-24(%rbp), %rax	# v1, tmp87
	addq	%rdx, %rax	# D.5983, D.5984
	movss	(%rax), %xmm0	# *_19, D.5985
	movl	-12(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5983
	movq	-32(%rbp), %rax	# v2, tmp89
	addq	%rdx, %rax	# D.5983, D.5984
	movss	(%rax), %xmm2	# *_23, D.5985
	subss	%xmm2, %xmm0	# D.5985, D.5985
	mulss	%xmm1, %xmm0	# D.5985, D.5985
	unpcklps	%xmm0, %xmm0	# D.5985, D.5985
	cvtps2pd	%xmm0, %xmm0	# D.5985, D.5986
	movsd	-8(%rbp), %xmm1	# d, tmp91
	addsd	%xmm1, %xmm0	# tmp91, tmp90
	movsd	%xmm0, -8(%rbp)	# tmp90, d
	.loc 1 244 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L83:
	.loc 1 244 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp92
	cmpl	-36(%rbp), %eax	# len, tmp92
	jl	.L84	#,
	.loc 1 247 0 is_stmt 1
	movq	-8(%rbp), %rax	# d, D.5987
	.loc 1 248 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	vector_dist_eucl, .-vector_dist_eucl
	.globl	vector_maha_precomp
	.type	vector_maha_precomp, @function
vector_maha_precomp:
.LFB15:
	.loc 1 252 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# var, var
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 256 0
	movl	$0, %eax	#, tmp80
	movq	%rax, -8(%rbp)	# tmp80, det
	movl	$0, -12(%rbp)	#, i
	jmp	.L87	#
.L88:
	.loc 1 257 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5988
	movq	-24(%rbp), %rax	# var, tmp82
	addq	%rdx, %rax	# D.5988, D.5989
	movss	(%rax), %xmm0	# *_9, D.5990
	unpcklps	%xmm0, %xmm0	# D.5990, D.5990
	cvtps2pd	%xmm0, %xmm0	# D.5990, D.5991
	call	log	#
	movsd	-8(%rbp), %xmm1	# det, tmp84
	subsd	%xmm0, %xmm1	# D.5991, tmp83
	movapd	%xmm1, %xmm0	# tmp83, tmp83
	movsd	%xmm0, -8(%rbp)	# tmp83, det
	.loc 1 258 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp85
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5988
	movq	-24(%rbp), %rax	# var, tmp86
	addq	%rdx, %rax	# D.5988, D.5989
	movl	-12(%rbp), %edx	# i, tmp87
	movslq	%edx, %rdx	# tmp87, D.5988
	leaq	0(,%rdx,4), %rcx	#, D.5988
	movq	-24(%rbp), %rdx	# var, tmp88
	addq	%rcx, %rdx	# D.5988, D.5989
	movss	(%rdx), %xmm0	# *_19, D.5990
	unpcklps	%xmm0, %xmm0	# D.5990, D.5990
	cvtps2pd	%xmm0, %xmm0	# D.5990, D.5991
	addsd	%xmm0, %xmm0	# D.5991, D.5991
	movsd	.LC1(%rip), %xmm1	#, tmp89
	divsd	%xmm0, %xmm1	# D.5991, D.5991
	movapd	%xmm1, %xmm0	# D.5991, D.5991
	unpcklpd	%xmm0, %xmm0	# D.5991
	cvtpd2ps	%xmm0, %xmm0	# D.5991, D.5990
	movss	%xmm0, (%rax)	# D.5990, *_16
	.loc 1 256 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L87:
	.loc 1 256 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp90
	cmpl	-28(%rbp), %eax	# len, tmp90
	jl	.L88	#,
	.loc 1 260 0 is_stmt 1
	cvtsi2sd	-28(%rbp), %xmm0	# len, D.5991
	movsd	.LC4(%rip), %xmm1	#, tmp91
	mulsd	%xmm1, %xmm0	# tmp91, D.5991
	movsd	-8(%rbp), %xmm1	# det, tmp93
	subsd	%xmm0, %xmm1	# D.5991, tmp92
	movapd	%xmm1, %xmm0	# tmp92, tmp92
	movsd	%xmm0, -8(%rbp)	# tmp92, det
	.loc 1 262 0
	movsd	-8(%rbp), %xmm1	# det, tmp94
	movsd	.LC5(%rip), %xmm0	#, tmp95
	mulsd	%xmm1, %xmm0	# tmp94, D.5992
	movsd	%xmm0, -40(%rbp)	# D.5992, %sfp
	movq	-40(%rbp), %rax	# %sfp, <retval>
	.loc 1 263 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	vector_maha_precomp, .-vector_maha_precomp
	.globl	vector_dist_maha
	.type	vector_dist_maha, @function
vector_dist_maha:
.LFB16:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# vec, vec
	movq	%rsi, -48(%rbp)	# mean, mean
	movq	%rdx, -56(%rbp)	# varinv, varinv
	movsd	%xmm0, -64(%rbp)	# loginvdet, loginvdet
	movl	%ecx, -68(%rbp)	# len, len
	.loc 1 272 0
	movq	-64(%rbp), %rax	# loginvdet, tmp77
	movq	%rax, -16(%rbp)	# tmp77, dist
	.loc 1 273 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L91	#
.L92:
	.loc 1 274 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp78
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5993
	movq	-40(%rbp), %rax	# vec, tmp79
	addq	%rdx, %rax	# D.5993, D.5994
	movss	(%rax), %xmm0	# *_10, D.5995
	movl	-20(%rbp), %eax	# i, tmp80
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5993
	movq	-48(%rbp), %rax	# mean, tmp81
	addq	%rdx, %rax	# D.5993, D.5994
	movss	(%rax), %xmm1	# *_15, D.5995
	subss	%xmm1, %xmm0	# D.5995, D.5995
	unpcklps	%xmm0, %xmm0	# D.5995, D.5995
	cvtps2pd	%xmm0, %xmm2	# D.5995, tmp89
	movsd	%xmm2, -8(%rbp)	# tmp89, diff
	.loc 1 275 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# diff, tmp82
	movapd	%xmm0, %xmm1	# tmp82, D.5996
	mulsd	-8(%rbp), %xmm1	# diff, D.5996
	movl	-20(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5993
	movq	-56(%rbp), %rax	# varinv, tmp84
	addq	%rdx, %rax	# D.5993, D.5994
	movss	(%rax), %xmm0	# *_23, D.5995
	unpcklps	%xmm0, %xmm0	# D.5995, D.5995
	cvtps2pd	%xmm0, %xmm0	# D.5995, D.5996
	mulsd	%xmm1, %xmm0	# D.5996, D.5996
	movsd	-16(%rbp), %xmm1	# dist, tmp86
	subsd	%xmm0, %xmm1	# D.5996, tmp85
	movapd	%xmm1, %xmm0	# tmp85, tmp85
	movsd	%xmm0, -16(%rbp)	# tmp85, dist
	.loc 1 273 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L91:
	.loc 1 273 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp87
	cmpl	-68(%rbp), %eax	# len, tmp87
	jl	.L92	#,
	.loc 1 278 0 is_stmt 1
	movq	-16(%rbp), %rax	# dist, D.5997
	.loc 1 279 0
	movq	%rax, -80(%rbp)	# <retval>, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	vector_dist_maha, .-vector_dist_maha
	.globl	vector_vqlabel
	.type	vector_vqlabel, @function
vector_vqlabel:
.LFB17:
	.loc 1 283 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$72, %rsp	#,
	movq	%rdi, -40(%rbp)	# vec, vec
	movq	%rsi, -48(%rbp)	# mean, mean
	movl	%edx, -52(%rbp)	# rows, rows
	movl	%ecx, -56(%rbp)	# cols, cols
	movq	%r8, -64(%rbp)	# sqerr, sqerr
	.loc 1 289 0
	movq	-48(%rbp), %rax	# mean, tmp66
	movq	(%rax), %rax	# *mean_6(D), D.5998
	movl	-56(%rbp), %edx	# cols, tmp67
	movq	-40(%rbp), %rcx	# vec, tmp68
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.5998,
	call	vector_dist_eucl	#
	movsd	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, tmp69
	movq	%rax, -16(%rbp)	# tmp69, bestd
	.loc 1 290 0
	movl	$0, -20(%rbp)	#, besti
	.loc 1 292 0
	movl	$1, -24(%rbp)	#, i
	jmp	.L95	#
.L98:
	.loc 1 293 0
	movl	-24(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5999
	movq	-48(%rbp), %rax	# mean, tmp71
	addq	%rdx, %rax	# D.5999, D.6000
	movq	(%rax), %rax	# *_16, D.5998
	movl	-56(%rbp), %edx	# cols, tmp72
	movq	-40(%rbp), %rcx	# vec, tmp73
	movq	%rcx, %rsi	# tmp73,
	movq	%rax, %rdi	# D.5998,
	call	vector_dist_eucl	#
	movsd	%xmm0, -72(%rbp)	#, %sfp
	movq	-72(%rbp), %rax	# %sfp, tmp74
	movq	%rax, -8(%rbp)	# tmp74, d
	.loc 1 294 0
	movsd	-16(%rbp), %xmm0	# bestd, tmp75
	ucomisd	-8(%rbp), %xmm0	# d, tmp75
	jbe	.L96	#,
	.loc 1 295 0
	movq	-8(%rbp), %rax	# d, tmp76
	movq	%rax, -16(%rbp)	# tmp76, bestd
	.loc 1 296 0
	movl	-24(%rbp), %eax	# i, tmp77
	movl	%eax, -20(%rbp)	# tmp77, besti
.L96:
	.loc 1 292 0
	addl	$1, -24(%rbp)	#, i
.L95:
	.loc 1 292 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp78
	cmpl	-52(%rbp), %eax	# rows, tmp78
	jl	.L98	#,
	.loc 1 300 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, sqerr
	je	.L99	#,
	.loc 1 301 0
	movq	-64(%rbp), %rdx	# sqerr, tmp79
	movq	-16(%rbp), %rax	# bestd, tmp80
	movq	%rax, (%rdx)	# tmp80, *sqerr_22(D)
.L99:
	.loc 1 303 0
	movl	-20(%rbp), %eax	# besti, D.6001
	.loc 1 304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	vector_vqlabel, .-vector_vqlabel
	.section	.rodata
.LC6:
	.string	"vector.c"
.LC8:
	.string	"INFO"
	.align 8
.LC9:
	.string	"Iter %4d: %.1fs CPU; sqerr= %e\n"
	.align 8
.LC10:
	.string	"Iter %4d: %.1fs CPU; sqerr= %e; delta= %e\n"
.LC11:
	.string	"ERROR"
.LC12:
	.string	"Iter %d: mean[%d] unmapped\n"
	.text
	.globl	vector_vqgen
	.type	vector_vqgen, @function
vector_vqgen:
.LFB18:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$200, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# data, data
	movl	%esi, -172(%rbp)	# rows, rows
	movl	%edx, -176(%rbp)	# cols, cols
	movl	%ecx, -180(%rbp)	# vqrows, vqrows
	movsd	%xmm0, -192(%rbp)	# epsilon, epsilon
	movl	%r8d, -184(%rbp)	# maxiter, maxiter
	movq	%r9, -200(%rbp)	# mean, mean
	.loc 1 313 0
	movl	$1, -132(%rbp)	#, seed
	.loc 1 318 0
	movl	$0, %eax	#, tmp187
	movq	%rax, -112(%rbp)	# tmp187, prev_sqerr
	.loc 1 326 0
	movl	-172(%rbp), %eax	# rows, tmp188
	addl	$31, %eax	#, D.6002
	sarl	$5, %eax	#, D.6002
	cltq
	movl	$326, %ecx	#,
	movl	$.LC6, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6003,
	call	__ckd_calloc__	#
	movq	%rax, -104(%rbp)	# tmp189, sel
	.loc 1 328 0
	leaq	-80(%rbp), %rax	#, tmp190
	movq	%rax, %rdi	# tmp190,
	call	ptmr_init	#
	.loc 1 329 0
	leaq	-80(%rbp), %rax	#, tmp191
	movq	%rax, %rdi	# tmp191,
	call	ptmr_start	#
	.loc 1 333 0
	movl	-132(%rbp), %eax	# seed, tmp192
	movl	%eax, %edi	# tmp192,
	call	spec_srand	#
	.loc 1 343 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L103	#
.L106:
	.loc 1 347 0
	call	spec_rand	#
	movsd	.LC7(%rip), %xmm1	#, tmp193
	mulsd	%xmm1, %xmm0	# tmp193, D.6004
	cvttsd2si	%xmm0, %eax	# D.6004, D.6002
	cltd
	idivl	-172(%rbp)	# rows
	movl	%edx, -140(%rbp)	# tmp195, r
	.loc 1 356 0
	jmp	.L104	#
.L105:
	.loc 1 357 0
	addl	$1, -140(%rbp)	#, r
	movl	-140(%rbp), %eax	# r, tmp197
	cmpl	-172(%rbp), %eax	# rows, tmp197
	jl	.L104	#,
	.loc 1 358 0
	movl	$0, -140(%rbp)	#, r
.L104:
	.loc 1 356 0 discriminator 1
	movl	-140(%rbp), %eax	# r, tmp198
	sarl	$5, %eax	#, D.6002
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-104(%rbp), %rax	# sel, tmp199
	addq	%rdx, %rax	# D.6003, D.6005
	movl	(%rax), %edx	# *_28, D.6006
	movl	-140(%rbp), %eax	# r, tmp200
	andl	$31, %eax	#, D.6002
	movl	$1, %esi	#, tmp201
	movl	%eax, %ecx	# D.6002, tmp291
	sall	%cl, %esi	# tmp291, D.6002
	movl	%esi, %eax	# D.6002, D.6002
	andl	%edx, %eax	# D.6006, D.6006
	testl	%eax, %eax	# D.6006
	jne	.L105	#,
	.loc 1 360 0
	movl	-140(%rbp), %eax	# r, tmp202
	sarl	$5, %eax	#, D.6002
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-104(%rbp), %rax	# sel, tmp203
	addq	%rdx, %rax	# D.6003, D.6005
	movl	-140(%rbp), %edx	# r, tmp204
	sarl	$5, %edx	#, D.6002
	movslq	%edx, %rdx	# D.6002, D.6003
	leaq	0(,%rdx,4), %rcx	#, D.6003
	movq	-104(%rbp), %rdx	# sel, tmp205
	addq	%rcx, %rdx	# D.6003, D.6005
	movl	(%rdx), %esi	# *_43, D.6006
	movl	-140(%rbp), %edx	# r, tmp206
	andl	$31, %edx	#, D.6002
	movl	$1, %edi	#, tmp207
	movl	%edx, %ecx	# D.6002, tmp293
	sall	%cl, %edi	# tmp293, D.6002
	movl	%edi, %edx	# D.6002, D.6002
	orl	%esi, %edx	# D.6006, D.6006
	movl	%edx, (%rax)	# D.6006, *_39
	.loc 1 362 0
	movl	-176(%rbp), %eax	# cols, tmp208
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movl	-140(%rbp), %eax	# r, tmp209
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6003
	movq	-168(%rbp), %rax	# data, tmp210
	addq	%rcx, %rax	# D.6003, D.6007
	movq	(%rax), %rcx	# *_55, D.6008
	movl	-148(%rbp), %eax	# i, tmp211
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6003
	movq	-200(%rbp), %rax	# mean, tmp212
	addq	%rsi, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_60, D.6008
	movq	%rcx, %rsi	# D.6008,
	movq	%rax, %rdi	# D.6008,
	call	memcpy	#
	.loc 1 343 0
	addl	$1, -148(%rbp)	#, i
.L103:
	.loc 1 343 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp213
	cmpl	-180(%rbp), %eax	# vqrows, tmp213
	jl	.L106	#,
	.loc 1 365 0 is_stmt 1
	movq	-104(%rbp), %rax	# sel, tmp214
	movq	%rax, %rdi	# tmp214,
	call	ckd_free	#
	.loc 1 367 0
	movl	-180(%rbp), %eax	# vqrows, tmp215
	cltq
	movl	$367, %ecx	#,
	movl	$.LC6, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6003,
	call	__ckd_calloc__	#
	movq	%rax, -96(%rbp)	# tmp216, count
	.loc 1 370 0
	movl	-176(%rbp), %eax	# cols, tmp217
	cltq
	movl	$370, %ecx	#,
	movl	$.LC6, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6003,
	call	__ckd_calloc__	#
	movq	%rax, -88(%rbp)	# tmp218, gmean
	.loc 1 371 0
	movl	-176(%rbp), %ecx	# cols, tmp219
	movl	-180(%rbp), %edx	# vqrows, tmp220
	movq	-200(%rbp), %rsi	# mean, tmp221
	movq	-88(%rbp), %rax	# gmean, tmp222
	movq	%rax, %rdi	# tmp222,
	call	vector_mean	#
	.loc 1 373 0
	movl	$0, -136(%rbp)	#, it
.L126:
	.loc 1 375 0
	movl	$0, %eax	#, tmp223
	movq	%rax, -120(%rbp)	# tmp223, sqerr
	.loc 1 376 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L107	#
.L108:
	.loc 1 377 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp224
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	16(%rbp), %rax	# map, tmp225
	leaq	(%rdx,%rax), %rbx	#, D.6009
	movl	-148(%rbp), %eax	# i, tmp226
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6003
	movq	-168(%rbp), %rax	# data, tmp227
	addq	%rdx, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_76, D.6008
	leaq	-128(%rbp), %rdi	#, tmp228
	movl	-176(%rbp), %ecx	# cols, tmp229
	movl	-180(%rbp), %edx	# vqrows, tmp230
	movq	-200(%rbp), %rsi	# mean, tmp231
	movq	%rdi, %r8	# tmp228,
	movq	%rax, %rdi	# D.6008,
	call	vector_vqlabel	#
	movl	%eax, (%rbx)	# D.6002, *_73
	.loc 1 378 0 discriminator 2
	movsd	-128(%rbp), %xmm0	# t, t.0
	movsd	-120(%rbp), %xmm1	# sqerr, tmp233
	addsd	%xmm1, %xmm0	# tmp233, tmp232
	movsd	%xmm0, -120(%rbp)	# tmp232, sqerr
	.loc 1 376 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L107:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp234
	cmpl	-172(%rbp), %eax	# rows, tmp234
	jl	.L108	#,
	.loc 1 380 0 is_stmt 1
	leaq	-80(%rbp), %rax	#, tmp235
	movq	%rax, %rdi	# tmp235,
	call	ptmr_stop	#
	.loc 1 382 0
	cmpl	$0, -136(%rbp)	#, it
	jne	.L109	#,
	.loc 1 383 0
	movl	$.LC8, %edx	#,
	movl	$383, %esi	#,
	movl	$.LC6, %edi	#,
	call	_E__pr_info_header	#
	movq	-72(%rbp), %rax	# tm.t_cpu, D.6004
	movq	-120(%rbp), %rdx	# sqerr, tmp236
	movl	-136(%rbp), %ecx	# it, tmp237
	movq	%rdx, -208(%rbp)	# tmp236, %sfp
	movsd	-208(%rbp), %xmm1	# %sfp,
	movq	%rax, -208(%rbp)	# D.6004, %sfp
	movsd	-208(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp237,
	movl	$.LC9, %edi	#,
	movl	$2, %eax	#,
	call	_E__pr_info	#
	jmp	.L110	#
.L109:
	.loc 1 385 0
	movl	$.LC8, %edx	#,
	movl	$385, %esi	#,
	movl	$.LC6, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 386 0
	movsd	-112(%rbp), %xmm0	# prev_sqerr, tmp238
	subsd	-120(%rbp), %xmm0	# sqerr, D.6004
	.loc 1 385 0
	divsd	-112(%rbp), %xmm0	# prev_sqerr, D.6004
	movq	-72(%rbp), %rax	# tm.t_cpu, D.6004
	movq	-120(%rbp), %rdx	# sqerr, tmp239
	movl	-136(%rbp), %ecx	# it, tmp240
	movapd	%xmm0, %xmm2	# D.6004,
	movq	%rdx, -208(%rbp)	# tmp239, %sfp
	movsd	-208(%rbp), %xmm1	# %sfp,
	movq	%rax, -208(%rbp)	# D.6004, %sfp
	movsd	-208(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# tmp240,
	movl	$.LC10, %edi	#,
	movl	$3, %eax	#,
	call	_E__pr_info	#
.L110:
	.loc 1 389 0
	xorpd	%xmm0, %xmm0	# tmp241
	ucomisd	-120(%rbp), %xmm0	# sqerr, tmp241
	jp	.L128	#,
	xorpd	%xmm0, %xmm0	# tmp242
	ucomisd	-120(%rbp), %xmm0	# sqerr, tmp242
	je	.L111	#,
.L128:
	.loc 1 389 0 is_stmt 0 discriminator 1
	movl	-184(%rbp), %eax	# maxiter, tmp243
	subl	$1, %eax	#, D.6002
	cmpl	-136(%rbp), %eax	# it, D.6002
	jle	.L111	#,
	cmpl	$0, -136(%rbp)	#, it
	jle	.L113	#,
	.loc 1 390 0 is_stmt 1
	movsd	-112(%rbp), %xmm0	# prev_sqerr, tmp244
	subsd	-120(%rbp), %xmm0	# sqerr, D.6004
	divsd	-112(%rbp), %xmm0	# prev_sqerr, D.6004
	movsd	-192(%rbp), %xmm1	# epsilon, tmp245
	ucomisd	%xmm0, %xmm1	# D.6004, tmp245
	ja	.L111	#,
.L113:
	.loc 1 392 0
	movq	-120(%rbp), %rax	# sqerr, tmp246
	movq	%rax, -112(%rbp)	# tmp246, prev_sqerr
	.loc 1 394 0
	leaq	-80(%rbp), %rax	#, tmp247
	movq	%rax, %rdi	# tmp247,
	call	ptmr_start	#
	.loc 1 397 0
	movl	$0, -148(%rbp)	#, i
	jmp	.L114	#
.L117:
	.loc 1 398 0
	movl	$0, -144(%rbp)	#, j
	jmp	.L115	#
.L116:
	.loc 1 399 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp248
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6003
	movq	-200(%rbp), %rax	# mean, tmp249
	addq	%rdx, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_96, D.6008
	movl	-144(%rbp), %edx	# j, tmp250
	movslq	%edx, %rdx	# tmp250, D.6003
	salq	$2, %rdx	#, D.6003
	addq	%rax, %rdx	# D.6008, D.6008
	movl	.LC2(%rip), %eax	#, tmp251
	movl	%eax, (%rdx)	# tmp251, *_100
	.loc 1 398 0 discriminator 2
	addl	$1, -144(%rbp)	#, j
.L115:
	.loc 1 398 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# j, tmp252
	cmpl	-176(%rbp), %eax	# cols, tmp252
	jl	.L116	#,
	.loc 1 400 0 is_stmt 1
	movl	-148(%rbp), %eax	# i, tmp253
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-96(%rbp), %rax	# count, tmp254
	addq	%rdx, %rax	# D.6003, D.6009
	movl	$0, (%rax)	#, *_104
	.loc 1 397 0
	addl	$1, -148(%rbp)	#, i
.L114:
	.loc 1 397 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp255
	cmpl	-180(%rbp), %eax	# vqrows, tmp255
	jl	.L117	#,
	.loc 1 402 0 is_stmt 1
	movl	$0, -148(%rbp)	#, i
	jmp	.L118	#
.L119:
	.loc 1 403 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp256
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6003
	movq	-168(%rbp), %rax	# data, tmp257
	addq	%rdx, %rax	# D.6003, D.6007
	movq	(%rax), %rcx	# *_109, D.6008
	movl	-148(%rbp), %eax	# i, tmp258
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	16(%rbp), %rax	# map, tmp259
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %eax	# *_113, D.6002
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6003
	movq	-200(%rbp), %rax	# mean, tmp260
	addq	%rdx, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_117, D.6008
	movl	-176(%rbp), %edx	# cols, tmp261
	movq	%rcx, %rsi	# D.6008,
	movq	%rax, %rdi	# D.6008,
	call	vector_accum	#
	.loc 1 404 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp262
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	16(%rbp), %rax	# map, tmp263
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %eax	# *_121, D.6002
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-96(%rbp), %rax	# count, tmp264
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %edx	# *_125, D.6002
	addl	$1, %edx	#, D.6002
	movl	%edx, (%rax)	# D.6002, *_125
	.loc 1 402 0 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L118:
	.loc 1 402 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp265
	cmpl	-172(%rbp), %eax	# rows, tmp265
	jl	.L119	#,
	.loc 1 406 0 is_stmt 1
	movl	$0, -148(%rbp)	#, i
	jmp	.L120	#
.L125:
	.loc 1 407 0
	movl	-148(%rbp), %eax	# i, tmp266
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-96(%rbp), %rax	# count, tmp267
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %eax	# *_132, D.6002
	cmpl	$1, %eax	#, D.6002
	jle	.L121	#,
	.loc 1 408 0
	movl	-148(%rbp), %eax	# i, tmp268
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-96(%rbp), %rax	# count, tmp269
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %eax	# *_136, D.6002
	cvtsi2sd	%eax, %xmm0	# D.6002, D.6004
	movsd	.LC1(%rip), %xmm1	#, tmp270
	divsd	%xmm0, %xmm1	# D.6004, t.1
	movapd	%xmm1, %xmm0	# t.1, t.1
	movsd	%xmm0, -128(%rbp)	# t.1, t
	.loc 1 409 0
	movl	$0, -144(%rbp)	#, j
	jmp	.L122	#
.L123:
	.loc 1 411 0 discriminator 2
	movl	-148(%rbp), %eax	# i, tmp271
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6003
	movq	-200(%rbp), %rax	# mean, tmp272
	addq	%rdx, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_143, D.6008
	movl	-144(%rbp), %edx	# j, tmp273
	movslq	%edx, %rdx	# tmp273, D.6003
	salq	$2, %rdx	#, D.6003
	addq	%rdx, %rax	# D.6003, D.6008
	movl	-148(%rbp), %edx	# i, tmp274
	movslq	%edx, %rdx	# tmp274, D.6003
	leaq	0(,%rdx,8), %rcx	#, D.6003
	movq	-200(%rbp), %rdx	# mean, tmp275
	addq	%rcx, %rdx	# D.6003, D.6007
	movq	(%rdx), %rdx	# *_150, D.6008
	movl	-144(%rbp), %ecx	# j, tmp276
	movslq	%ecx, %rcx	# tmp276, D.6003
	salq	$2, %rcx	#, D.6003
	addq	%rcx, %rdx	# D.6003, D.6008
	movss	(%rdx), %xmm0	# *_154, D.6010
	unpcklps	%xmm0, %xmm0	# D.6010, D.6010
	cvtps2pd	%xmm0, %xmm0	# D.6010, D.6004
	movsd	-128(%rbp), %xmm1	# t, t.2
	mulsd	%xmm1, %xmm0	# t.2, D.6004
	unpcklpd	%xmm0, %xmm0	# D.6004
	cvtpd2ps	%xmm0, %xmm0	# D.6004, D.6010
	movss	%xmm0, (%rax)	# D.6010, *_147
	.loc 1 409 0 discriminator 2
	addl	$1, -144(%rbp)	#, j
.L122:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	-144(%rbp), %eax	# j, tmp277
	cmpl	-176(%rbp), %eax	# cols, tmp277
	jl	.L123	#,
	jmp	.L124	#
.L121:
	.loc 1 412 0 is_stmt 1
	movl	-148(%rbp), %eax	# i, tmp278
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movq	-96(%rbp), %rax	# count, tmp279
	addq	%rdx, %rax	# D.6003, D.6009
	movl	(%rax), %eax	# *_163, D.6002
	testl	%eax, %eax	# D.6002
	jne	.L124	#,
	.loc 1 413 0
	movl	$.LC11, %edx	#,
	movl	$413, %esi	#,
	movl	$.LC6, %edi	#,
	call	_E__pr_header	#
	movl	-148(%rbp), %edx	# i, tmp280
	movl	-136(%rbp), %eax	# it, tmp281
	movl	%eax, %esi	# tmp281,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 414 0
	movl	-176(%rbp), %eax	# cols, tmp282
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6003
	movl	-148(%rbp), %eax	# i, tmp283
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6003
	movq	-200(%rbp), %rax	# mean, tmp284
	addq	%rcx, %rax	# D.6003, D.6007
	movq	(%rax), %rax	# *_169, D.6008
	movq	-88(%rbp), %rcx	# gmean, tmp285
	movq	%rcx, %rsi	# tmp285,
	movq	%rax, %rdi	# D.6008,
	call	memcpy	#
.L124:
	.loc 1 406 0
	addl	$1, -148(%rbp)	#, i
.L120:
	.loc 1 406 0 is_stmt 0 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp286
	cmpl	-180(%rbp), %eax	# vqrows, tmp286
	jl	.L125	#,
	.loc 1 373 0 is_stmt 1
	addl	$1, -136(%rbp)	#, it
	.loc 1 417 0
	jmp	.L126	#
.L111:
	.loc 1 419 0
	movq	-96(%rbp), %rax	# count, tmp287
	movq	%rax, %rdi	# tmp287,
	call	ckd_free	#
	.loc 1 420 0
	movq	-88(%rbp), %rax	# gmean, tmp288
	movq	%rax, %rdi	# tmp288,
	call	ckd_free	#
	.loc 1 422 0
	movq	-120(%rbp), %rax	# sqerr, D.6011
	.loc 1 423 0
	movq	%rax, -208(%rbp)	# <retval>, %sfp
	movsd	-208(%rbp), %xmm0	# %sfp,
	addq	$200, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	vector_vqgen, .-vector_vqgen
	.globl	vector_pdf_entropy
	.type	vector_pdf_entropy, @function
vector_pdf_entropy:
.LFB19:
	.loc 1 427 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 431 0
	movl	$0, %eax	#, tmp77
	movq	%rax, -8(%rbp)	# tmp77, sum
	.loc 1 432 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L130	#
.L133:
	.loc 1 433 0
	movl	-12(%rbp), %eax	# i, tmp78
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6018
	movq	-24(%rbp), %rax	# p, tmp79
	addq	%rdx, %rax	# D.6018, D.6019
	movss	(%rax), %xmm0	# *_10, D.6020
	xorps	%xmm1, %xmm1	# tmp80
	ucomiss	%xmm1, %xmm0	# tmp80, D.6020
	jbe	.L131	#,
	.loc 1 434 0
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6018
	movq	-24(%rbp), %rax	# p, tmp82
	addq	%rdx, %rax	# D.6018, D.6019
	movss	(%rax), %xmm0	# *_14, D.6020
	unpcklps	%xmm0, %xmm0	# D.6020, D.6020
	cvtps2pd	%xmm0, %xmm2	# D.6020, D.6021
	movsd	%xmm2, -40(%rbp)	# D.6021, %sfp
	movl	-12(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6018
	movq	-24(%rbp), %rax	# p, tmp84
	addq	%rdx, %rax	# D.6018, D.6019
	movss	(%rax), %xmm0	# *_19, D.6020
	unpcklps	%xmm0, %xmm0	# D.6020, D.6020
	cvtps2pd	%xmm0, %xmm0	# D.6020, D.6021
	call	log	#
	mulsd	-40(%rbp), %xmm0	# %sfp, D.6021
	movsd	-8(%rbp), %xmm1	# sum, tmp86
	subsd	%xmm0, %xmm1	# D.6021, tmp85
	movapd	%xmm1, %xmm0	# tmp85, tmp85
	movsd	%xmm0, -8(%rbp)	# tmp85, sum
.L131:
	.loc 1 432 0
	addl	$1, -12(%rbp)	#, i
.L130:
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp87
	cmpl	-28(%rbp), %eax	# len, tmp87
	jl	.L133	#,
	.loc 1 436 0 is_stmt 1
	movsd	-8(%rbp), %xmm0	# sum, tmp89
	movsd	.LC13(%rip), %xmm1	#, tmp90
	divsd	%xmm1, %xmm0	# tmp90, tmp88
	movsd	%xmm0, -8(%rbp)	# tmp88, sum
	.loc 1 438 0
	movq	-8(%rbp), %rax	# sum, D.6022
	.loc 1 439 0
	movq	%rax, -40(%rbp)	# <retval>, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	vector_pdf_entropy, .-vector_pdf_entropy
	.globl	vector_pdf_cross_entropy
	.type	vector_pdf_cross_entropy, @function
vector_pdf_cross_entropy:
.LFB20:
	.loc 1 443 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# p1, p1
	movq	%rsi, -32(%rbp)	# p2, p2
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 447 0
	movl	$0, %eax	#, tmp77
	movq	%rax, -8(%rbp)	# tmp77, sum
	.loc 1 448 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L137	#
.L140:
	.loc 1 449 0
	movl	-12(%rbp), %eax	# i, tmp78
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6023
	movq	-32(%rbp), %rax	# p2, tmp79
	addq	%rdx, %rax	# D.6023, D.6024
	movss	(%rax), %xmm0	# *_10, D.6025
	xorps	%xmm1, %xmm1	# tmp80
	ucomiss	%xmm1, %xmm0	# tmp80, D.6025
	jbe	.L138	#,
	.loc 1 450 0
	movl	-12(%rbp), %eax	# i, tmp81
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6023
	movq	-24(%rbp), %rax	# p1, tmp82
	addq	%rdx, %rax	# D.6023, D.6024
	movss	(%rax), %xmm0	# *_15, D.6025
	unpcklps	%xmm0, %xmm0	# D.6025, D.6025
	cvtps2pd	%xmm0, %xmm2	# D.6025, D.6026
	movsd	%xmm2, -48(%rbp)	# D.6026, %sfp
	movl	-12(%rbp), %eax	# i, tmp83
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6023
	movq	-32(%rbp), %rax	# p2, tmp84
	addq	%rdx, %rax	# D.6023, D.6024
	movss	(%rax), %xmm0	# *_20, D.6025
	unpcklps	%xmm0, %xmm0	# D.6025, D.6025
	cvtps2pd	%xmm0, %xmm0	# D.6025, D.6026
	call	log	#
	mulsd	-48(%rbp), %xmm0	# %sfp, D.6026
	movsd	-8(%rbp), %xmm1	# sum, tmp86
	subsd	%xmm0, %xmm1	# D.6026, tmp85
	movapd	%xmm1, %xmm0	# tmp85, tmp85
	movsd	%xmm0, -8(%rbp)	# tmp85, sum
.L138:
	.loc 1 448 0
	addl	$1, -12(%rbp)	#, i
.L137:
	.loc 1 448 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp87
	cmpl	-36(%rbp), %eax	# len, tmp87
	jl	.L140	#,
	.loc 1 452 0 is_stmt 1
	movsd	-8(%rbp), %xmm0	# sum, tmp89
	movsd	.LC13(%rip), %xmm1	#, tmp90
	divsd	%xmm1, %xmm0	# tmp90, tmp88
	movsd	%xmm0, -8(%rbp)	# tmp88, sum
	.loc 1 454 0
	movq	-8(%rbp), %rax	# sum, D.6027
	.loc 1 455 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	vector_pdf_cross_entropy, .-vector_pdf_cross_entropy
	.globl	vector_gautbl_alloc
	.type	vector_gautbl_alloc, @function
vector_gautbl_alloc:
.LFB21:
	.loc 1 459 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# gautbl, gautbl
	movl	%esi, -12(%rbp)	# n_gau, n_gau
	movl	%edx, -16(%rbp)	# veclen, veclen
	.loc 1 460 0
	movq	-8(%rbp), %rax	# gautbl, tmp64
	movl	-12(%rbp), %edx	# n_gau, tmp65
	movl	%edx, (%rax)	# tmp65, gautbl_1(D)->n_gau
	.loc 1 461 0
	movq	-8(%rbp), %rax	# gautbl, tmp66
	movl	-16(%rbp), %edx	# veclen, tmp67
	movl	%edx, 4(%rax)	# tmp67, gautbl_1(D)->veclen
	.loc 1 462 0
	movl	-16(%rbp), %esi	# veclen, tmp68
	movl	-12(%rbp), %eax	# n_gau, tmp69
	movl	$462, %r8d	#,
	movl	$.LC6, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# tmp69,
	call	__ckd_calloc_2d__	#
	movq	-8(%rbp), %rdx	# gautbl, tmp70
	movq	%rax, 8(%rdx)	# D.6028, gautbl_1(D)->mean
	.loc 1 463 0
	movl	-16(%rbp), %esi	# veclen, tmp71
	movl	-12(%rbp), %eax	# n_gau, tmp72
	movl	$463, %r8d	#,
	movl	$.LC6, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# tmp72,
	call	__ckd_calloc_2d__	#
	movq	-8(%rbp), %rdx	# gautbl, tmp73
	movq	%rax, 16(%rdx)	# D.6028, gautbl_1(D)->var
	.loc 1 464 0
	movl	-12(%rbp), %eax	# n_gau, tmp74
	cltq
	movl	$464, %ecx	#,
	movl	$.LC6, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6029,
	call	__ckd_calloc__	#
	movq	-8(%rbp), %rdx	# gautbl, tmp75
	movq	%rax, 24(%rdx)	# D.6030, gautbl_1(D)->lrd
	.loc 1 465 0
	movl	$-939524096, %edi	#,
	call	logs3_to_log	#
	movsd	%xmm0, -24(%rbp)	#, %sfp
	movq	-24(%rbp), %rax	# %sfp, D.6031
	movq	-8(%rbp), %rdx	# gautbl, tmp76
	movq	%rax, 32(%rdx)	# D.6031, gautbl_1(D)->distfloor
	.loc 1 466 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	vector_gautbl_alloc, .-vector_gautbl_alloc
	.globl	vector_gautbl_free
	.type	vector_gautbl_free, @function
vector_gautbl_free:
.LFB22:
	.loc 1 470 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gautbl, gautbl
	.loc 1 471 0
	movq	-8(%rbp), %rax	# gautbl, tmp62
	movq	8(%rax), %rax	# gautbl_1(D)->mean, D.6032
	movq	%rax, %rdi	# D.6032,
	call	ckd_free_2d	#
	.loc 1 472 0
	movq	-8(%rbp), %rax	# gautbl, tmp63
	movq	16(%rax), %rax	# gautbl_1(D)->var, D.6032
	movq	%rax, %rdi	# D.6032,
	call	ckd_free_2d	#
	.loc 1 473 0
	movq	-8(%rbp), %rax	# gautbl, tmp64
	movq	24(%rax), %rax	# gautbl_1(D)->lrd, D.6033
	movq	%rax, %rdi	# D.6033,
	call	ckd_free	#
	.loc 1 474 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	vector_gautbl_free, .-vector_gautbl_free
	.globl	vector_gautbl_var_floor
	.type	vector_gautbl_var_floor, @function
vector_gautbl_var_floor:
.LFB23:
	.loc 1 478 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# gautbl, gautbl
	movsd	%xmm0, -32(%rbp)	# floor, floor
	.loc 1 481 0
	movl	$0, -4(%rbp)	#, g
	jmp	.L146	#
.L147:
	.loc 1 482 0 discriminator 2
	movq	-24(%rbp), %rax	# gautbl, tmp66
	movl	4(%rax), %ecx	# gautbl_3(D)->veclen, D.6034
	movq	-24(%rbp), %rax	# gautbl, tmp67
	movq	16(%rax), %rax	# gautbl_3(D)->var, D.6035
	movl	-4(%rbp), %edx	# g, tmp68
	movslq	%edx, %rdx	# tmp68, D.6036
	salq	$3, %rdx	#, D.6036
	addq	%rdx, %rax	# D.6036, D.6035
	movq	(%rax), %rdx	# *_9, D.6037
	movq	-32(%rbp), %rax	# floor, tmp69
	movq	%rax, -40(%rbp)	# tmp69, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# D.6034,
	movq	%rdx, %rdi	# D.6037,
	call	vector_floor	#
	.loc 1 481 0 discriminator 2
	addl	$1, -4(%rbp)	#, g
.L146:
	.loc 1 481 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# gautbl, tmp70
	movl	(%rax), %eax	# gautbl_3(D)->n_gau, D.6034
	cmpl	-4(%rbp), %eax	# g, D.6034
	jg	.L147	#,
	.loc 1 483 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	vector_gautbl_var_floor, .-vector_gautbl_var_floor
	.globl	vector_gautbl_maha_precomp
	.type	vector_gautbl_maha_precomp, @function
vector_gautbl_maha_precomp:
.LFB24:
	.loc 1 487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# gautbl, gautbl
	.loc 1 490 0
	movl	$0, -20(%rbp)	#, g
	jmp	.L149	#
.L150:
	.loc 1 491 0 discriminator 2
	movq	-40(%rbp), %rax	# gautbl, tmp72
	movq	24(%rax), %rax	# gautbl_3(D)->lrd, D.6039
	movl	-20(%rbp), %edx	# g, tmp73
	movslq	%edx, %rdx	# tmp73, D.6040
	salq	$2, %rdx	#, D.6040
	leaq	(%rax,%rdx), %rbx	#, D.6039
	movq	-40(%rbp), %rax	# gautbl, tmp74
	movl	4(%rax), %edx	# gautbl_3(D)->veclen, D.6038
	movq	-40(%rbp), %rax	# gautbl, tmp75
	movq	16(%rax), %rax	# gautbl_3(D)->var, D.6041
	movl	-20(%rbp), %ecx	# g, tmp76
	movslq	%ecx, %rcx	# tmp76, D.6040
	salq	$3, %rcx	#, D.6040
	addq	%rcx, %rax	# D.6040, D.6041
	movq	(%rax), %rax	# *_13, D.6039
	movl	%edx, %esi	# D.6038,
	movq	%rax, %rdi	# D.6039,
	call	vector_maha_precomp	#
	unpcklpd	%xmm0, %xmm0	# D.6042
	cvtpd2ps	%xmm0, %xmm0	# D.6042, D.6043
	movss	%xmm0, (%rbx)	# D.6043, *_8
	.loc 1 490 0 discriminator 2
	addl	$1, -20(%rbp)	#, g
.L149:
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# gautbl, tmp77
	movl	(%rax), %eax	# gautbl_3(D)->n_gau, D.6038
	cmpl	-20(%rbp), %eax	# g, D.6038
	jg	.L150	#,
	.loc 1 492 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	vector_gautbl_maha_precomp, .-vector_gautbl_maha_precomp
	.globl	vector_gautbl_eval_logs3
	.type	vector_gautbl_eval_logs3, @function
vector_gautbl_eval_logs3:
.LFB25:
	.loc 1 500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# gautbl, gautbl
	movl	%esi, -108(%rbp)	# offset, offset
	movl	%edx, -112(%rbp)	# count, count
	movq	%rcx, -120(%rbp)	# x, x
	movq	%r8, -128(%rbp)	# score, score
	.loc 1 507 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -136(%rbp)	#, %sfp
	movq	-136(%rbp), %rax	# %sfp, tmp169
	movq	%rax, -56(%rbp)	# tmp169, f
	.loc 1 510 0
	movl	-112(%rbp), %eax	# count, tmp174
	movl	-108(%rbp), %edx	# offset, tmp175
	addl	%edx, %eax	# tmp175, tmp173
	movl	%eax, -80(%rbp)	# tmp173, end
	.loc 1 511 0
	movq	-104(%rbp), %rax	# gautbl, tmp176
	movl	4(%rax), %eax	# gautbl_14(D)->veclen, tmp177
	movl	%eax, -76(%rbp)	# tmp177, veclen
	.loc 1 513 0
	movl	-108(%rbp), %eax	# offset, tmp178
	movl	%eax, -84(%rbp)	# tmp178, r
	jmp	.L152	#
.L159:
	.loc 1 514 0
	movq	-104(%rbp), %rax	# gautbl, tmp179
	movq	8(%rax), %rax	# gautbl_14(D)->mean, D.6045
	movl	-84(%rbp), %edx	# r, tmp180
	movslq	%edx, %rdx	# tmp180, D.6046
	salq	$3, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6045
	movq	(%rax), %rax	# *_21, tmp181
	movq	%rax, -48(%rbp)	# tmp181, m1
	.loc 1 515 0
	movq	-104(%rbp), %rax	# gautbl, tmp182
	movq	8(%rax), %rax	# gautbl_14(D)->mean, D.6045
	movl	-84(%rbp), %edx	# r, tmp183
	movslq	%edx, %rdx	# tmp183, D.6047
	addq	$1, %rdx	#, D.6047
	salq	$3, %rdx	#, D.6047
	addq	%rdx, %rax	# D.6047, D.6045
	movq	(%rax), %rax	# *_27, tmp184
	movq	%rax, -40(%rbp)	# tmp184, m2
	.loc 1 516 0
	movq	-104(%rbp), %rax	# gautbl, tmp185
	movq	16(%rax), %rax	# gautbl_14(D)->var, D.6045
	movl	-84(%rbp), %edx	# r, tmp186
	movslq	%edx, %rdx	# tmp186, D.6046
	salq	$3, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6045
	movq	(%rax), %rax	# *_32, tmp187
	movq	%rax, -32(%rbp)	# tmp187, v1
	.loc 1 517 0
	movq	-104(%rbp), %rax	# gautbl, tmp188
	movq	16(%rax), %rax	# gautbl_14(D)->var, D.6045
	movl	-84(%rbp), %edx	# r, tmp189
	movslq	%edx, %rdx	# tmp189, D.6047
	addq	$1, %rdx	#, D.6047
	salq	$3, %rdx	#, D.6047
	addq	%rdx, %rax	# D.6047, D.6045
	movq	(%rax), %rax	# *_38, tmp190
	movq	%rax, -24(%rbp)	# tmp190, v2
	.loc 1 518 0
	movq	-104(%rbp), %rax	# gautbl, tmp191
	movq	24(%rax), %rax	# gautbl_14(D)->lrd, D.6048
	movl	-84(%rbp), %edx	# r, tmp192
	movslq	%edx, %rdx	# tmp192, D.6046
	salq	$2, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_43, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm2	# D.6049, tmp253
	movsd	%xmm2, -72(%rbp)	# tmp253, dval1
	.loc 1 519 0
	movq	-104(%rbp), %rax	# gautbl, tmp193
	movq	24(%rax), %rax	# gautbl_14(D)->lrd, D.6048
	movl	-84(%rbp), %edx	# r, tmp194
	movslq	%edx, %rdx	# tmp194, D.6047
	addq	$1, %rdx	#, D.6047
	salq	$2, %rdx	#, D.6047
	addq	%rdx, %rax	# D.6047, D.6048
	movss	(%rax), %xmm0	# *_50, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm3	# D.6049, tmp254
	movsd	%xmm3, -64(%rbp)	# tmp254, dval2
	.loc 1 521 0
	movl	$0, -88(%rbp)	#, i
	jmp	.L153	#
.L154:
	.loc 1 522 0 discriminator 2
	movl	-88(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-120(%rbp), %rax	# x, tmp196
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_57, D.6049
	movl	-88(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-48(%rbp), %rax	# m1, tmp198
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm1	# *_61, D.6049
	subss	%xmm1, %xmm0	# D.6049, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm4	# D.6049, tmp255
	movsd	%xmm4, -16(%rbp)	# tmp255, diff1
	.loc 1 523 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp199
	movapd	%xmm0, %xmm1	# tmp199, D.6050
	mulsd	-16(%rbp), %xmm1	# diff1, D.6050
	movl	-88(%rbp), %eax	# i, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-32(%rbp), %rax	# v1, tmp201
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_68, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm0	# D.6049, D.6050
	mulsd	%xmm1, %xmm0	# D.6050, D.6050
	movsd	-72(%rbp), %xmm1	# dval1, tmp203
	subsd	%xmm0, %xmm1	# D.6050, tmp202
	movapd	%xmm1, %xmm0	# tmp202, tmp202
	movsd	%xmm0, -72(%rbp)	# tmp202, dval1
	.loc 1 524 0 discriminator 2
	movl	-88(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-120(%rbp), %rax	# x, tmp205
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_75, D.6049
	movl	-88(%rbp), %eax	# i, tmp206
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-40(%rbp), %rax	# m2, tmp207
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm1	# *_79, D.6049
	subss	%xmm1, %xmm0	# D.6049, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm5	# D.6049, tmp258
	movsd	%xmm5, -8(%rbp)	# tmp258, diff2
	.loc 1 525 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# diff2, tmp208
	movapd	%xmm0, %xmm1	# tmp208, D.6050
	mulsd	-8(%rbp), %xmm1	# diff2, D.6050
	movl	-88(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-24(%rbp), %rax	# v2, tmp210
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_86, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm0	# D.6049, D.6050
	mulsd	%xmm1, %xmm0	# D.6050, D.6050
	movsd	-64(%rbp), %xmm1	# dval2, tmp212
	subsd	%xmm0, %xmm1	# D.6050, tmp211
	movapd	%xmm1, %xmm0	# tmp211, tmp211
	movsd	%xmm0, -64(%rbp)	# tmp211, dval2
	.loc 1 521 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L153:
	.loc 1 521 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp213
	cmpl	-76(%rbp), %eax	# veclen, tmp213
	jl	.L154	#,
	.loc 1 528 0 is_stmt 1
	movq	-104(%rbp), %rax	# gautbl, tmp214
	movsd	32(%rax), %xmm0	# gautbl_14(D)->distfloor, D.6050
	ucomisd	-72(%rbp), %xmm0	# dval1, D.6050
	jbe	.L155	#,
	.loc 1 529 0
	movq	-104(%rbp), %rax	# gautbl, tmp215
	movq	32(%rax), %rax	# gautbl_14(D)->distfloor, tmp216
	movq	%rax, -72(%rbp)	# tmp216, dval1
.L155:
	.loc 1 530 0
	movq	-104(%rbp), %rax	# gautbl, tmp217
	movsd	32(%rax), %xmm0	# gautbl_14(D)->distfloor, D.6050
	ucomisd	-64(%rbp), %xmm0	# dval2, D.6050
	jbe	.L157	#,
	.loc 1 531 0
	movq	-104(%rbp), %rax	# gautbl, tmp218
	movq	32(%rax), %rax	# gautbl_14(D)->distfloor, tmp219
	movq	%rax, -64(%rbp)	# tmp219, dval2
.L157:
	.loc 1 533 0
	movl	-84(%rbp), %eax	# r, tmp220
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-128(%rbp), %rax	# score, tmp221
	addq	%rax, %rdx	# tmp221, D.6051
	movsd	-56(%rbp), %xmm0	# f, tmp222
	mulsd	-72(%rbp), %xmm0	# dval1, D.6050
	cvttsd2si	%xmm0, %eax	# D.6050, D.6044
	movl	%eax, (%rdx)	# D.6044, *_99
	.loc 1 534 0
	movl	-84(%rbp), %eax	# r, tmp223
	cltq
	addq	$1, %rax	#, D.6047
	leaq	0(,%rax,4), %rdx	#, D.6047
	movq	-128(%rbp), %rax	# score, tmp224
	addq	%rax, %rdx	# tmp224, D.6051
	movsd	-56(%rbp), %xmm0	# f, tmp225
	mulsd	-64(%rbp), %xmm0	# dval2, D.6050
	cvttsd2si	%xmm0, %eax	# D.6050, D.6044
	movl	%eax, (%rdx)	# D.6044, *_105
	.loc 1 513 0
	addl	$2, -84(%rbp)	#, r
.L152:
	.loc 1 513 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# end, tmp226
	subl	$1, %eax	#, D.6044
	cmpl	-84(%rbp), %eax	# r, D.6044
	jg	.L159	#,
	.loc 1 537 0 is_stmt 1
	movl	-84(%rbp), %eax	# r, tmp227
	cmpl	-80(%rbp), %eax	# end, tmp227
	jge	.L151	#,
	.loc 1 538 0
	movq	-104(%rbp), %rax	# gautbl, tmp228
	movq	8(%rax), %rax	# gautbl_14(D)->mean, D.6045
	movl	-84(%rbp), %edx	# r, tmp229
	movslq	%edx, %rdx	# tmp229, D.6046
	salq	$3, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6045
	movq	(%rax), %rax	# *_112, tmp230
	movq	%rax, -48(%rbp)	# tmp230, m1
	.loc 1 539 0
	movq	-104(%rbp), %rax	# gautbl, tmp231
	movq	16(%rax), %rax	# gautbl_14(D)->var, D.6045
	movl	-84(%rbp), %edx	# r, tmp232
	movslq	%edx, %rdx	# tmp232, D.6046
	salq	$3, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6045
	movq	(%rax), %rax	# *_117, tmp233
	movq	%rax, -32(%rbp)	# tmp233, v1
	.loc 1 540 0
	movq	-104(%rbp), %rax	# gautbl, tmp234
	movq	24(%rax), %rax	# gautbl_14(D)->lrd, D.6048
	movl	-84(%rbp), %edx	# r, tmp235
	movslq	%edx, %rdx	# tmp235, D.6046
	salq	$2, %rdx	#, D.6046
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_122, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm6	# D.6049, tmp261
	movsd	%xmm6, -72(%rbp)	# tmp261, dval1
	.loc 1 542 0
	movl	$0, -88(%rbp)	#, i
	jmp	.L161	#
.L162:
	.loc 1 543 0 discriminator 2
	movl	-88(%rbp), %eax	# i, tmp236
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-120(%rbp), %rax	# x, tmp237
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_128, D.6049
	movl	-88(%rbp), %eax	# i, tmp238
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-48(%rbp), %rax	# m1, tmp239
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm1	# *_132, D.6049
	subss	%xmm1, %xmm0	# D.6049, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm7	# D.6049, tmp262
	movsd	%xmm7, -16(%rbp)	# tmp262, diff1
	.loc 1 544 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp240
	movapd	%xmm0, %xmm1	# tmp240, D.6050
	mulsd	-16(%rbp), %xmm1	# diff1, D.6050
	movl	-88(%rbp), %eax	# i, tmp241
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-32(%rbp), %rax	# v1, tmp242
	addq	%rdx, %rax	# D.6046, D.6048
	movss	(%rax), %xmm0	# *_139, D.6049
	unpcklps	%xmm0, %xmm0	# D.6049, D.6049
	cvtps2pd	%xmm0, %xmm0	# D.6049, D.6050
	mulsd	%xmm1, %xmm0	# D.6050, D.6050
	movsd	-72(%rbp), %xmm1	# dval1, tmp244
	subsd	%xmm0, %xmm1	# D.6050, tmp243
	movapd	%xmm1, %xmm0	# tmp243, tmp243
	movsd	%xmm0, -72(%rbp)	# tmp243, dval1
	.loc 1 542 0 discriminator 2
	addl	$1, -88(%rbp)	#, i
.L161:
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# i, tmp245
	cmpl	-76(%rbp), %eax	# veclen, tmp245
	jl	.L162	#,
	.loc 1 547 0 is_stmt 1
	movq	-104(%rbp), %rax	# gautbl, tmp246
	movsd	32(%rax), %xmm0	# gautbl_14(D)->distfloor, D.6050
	ucomisd	-72(%rbp), %xmm0	# dval1, D.6050
	jbe	.L163	#,
	.loc 1 548 0
	movq	-104(%rbp), %rax	# gautbl, tmp247
	movq	32(%rax), %rax	# gautbl_14(D)->distfloor, tmp248
	movq	%rax, -72(%rbp)	# tmp248, dval1
.L163:
	.loc 1 550 0
	movl	-84(%rbp), %eax	# r, tmp249
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6046
	movq	-128(%rbp), %rax	# score, tmp250
	addq	%rax, %rdx	# tmp250, D.6051
	movsd	-56(%rbp), %xmm0	# f, tmp251
	mulsd	-72(%rbp), %xmm0	# dval1, D.6050
	cvttsd2si	%xmm0, %eax	# D.6050, D.6044
	movl	%eax, (%rdx)	# D.6044, *_149
.L151:
	.loc 1 552 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	vector_gautbl_eval_logs3, .-vector_gautbl_eval_logs3
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 4
.LC2:
	.long	0
	.align 8
.LC4:
	.long	3362045620
	.long	1073571825
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	4290772992
	.long	1105199103
	.align 8
.LC13:
	.long	4277811695
	.long	1072049730
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/bitvec.h"
	.file 8 "./libutil/profile.h"
	.file 9 "vector.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe55
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF120
	.byte	0x1
	.long	.LASF121
	.long	.LASF122
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
	.long	.LASF123
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
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x43
	.long	0x2f0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0xe
	.byte	0x38
	.byte	0x8
	.byte	0x53
	.long	0x353
	.uleb128 0x8
	.long	.LASF56
	.byte	0x8
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x8
	.byte	0x56
	.long	0x2da
	.byte	0x8
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x57
	.long	0x2da
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x58
	.long	0x2da
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x59
	.long	0x2da
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x5a
	.long	0x2da
	.byte	0x28
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x5b
	.long	0x2da
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x8
	.byte	0x5c
	.long	0x2f6
	.uleb128 0x2
	.long	.LASF64
	.byte	0x9
	.byte	0x43
	.long	0x369
	.uleb128 0x6
	.byte	0x8
	.long	0x2cf
	.uleb128 0xe
	.byte	0x28
	.byte	0x9
	.byte	0xf0
	.long	0x3c0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x9
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x9
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0xf3
	.long	0x3c0
	.byte	0x8
	.uleb128 0xf
	.string	"var"
	.byte	0x9
	.byte	0xf4
	.long	0x3c0
	.byte	0x10
	.uleb128 0xf
	.string	"lrd"
	.byte	0x9
	.byte	0xf5
	.long	0x369
	.byte	0x18
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0xf6
	.long	0x2da
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x369
	.uleb128 0x2
	.long	.LASF69
	.byte	0x9
	.byte	0xf8
	.long	0x36f
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.byte	0x4e
	.long	0x2da
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x435
	.uleb128 0x11
	.string	"vec"
	.byte	0x1
	.byte	0x4e
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x4e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.string	"sum"
	.byte	0x1
	.byte	0x50
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x50
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x63
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x489
	.uleb128 0x11
	.string	"vec"
	.byte	0x1
	.byte	0x63
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"flr"
	.byte	0x1
	.byte	0x63
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x65
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x6d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dd
	.uleb128 0x11
	.string	"vec"
	.byte	0x1
	.byte	0x6d
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x6d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"flr"
	.byte	0x1
	.byte	0x6d
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x77
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x52e
	.uleb128 0x11
	.string	"fp"
	.byte	0x1
	.byte	0x77
	.long	0x52e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"v"
	.byte	0x1
	.byte	0x77
	.long	0x35e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"dim"
	.byte	0x1
	.byte	0x77
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x79
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x82
	.long	0x2b9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e
	.uleb128 0x11
	.string	"vec"
	.byte	0x1
	.byte	0x82
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x82
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x84
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x8b
	.long	0x2b9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d5
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x8b
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x8b
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x8d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"bi"
	.byte	0x1
	.byte	0x8d
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.byte	0x98
	.long	0x2b9
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x632
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0x98
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x98
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"bi"
	.byte	0x1
	.byte	0x9a
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.byte	0xa5
	.long	0x2b9
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x689
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xa5
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xa5
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xa7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"bi"
	.byte	0x1
	.byte	0xa7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.byte	0xb2
	.long	0x2b9
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e0
	.uleb128 0x11
	.string	"val"
	.byte	0x1
	.byte	0xb2
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xb2
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"bi"
	.byte	0x1
	.byte	0xb4
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.byte	0xbf
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x734
	.uleb128 0x11
	.string	"dst"
	.byte	0x1
	.byte	0xbf
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"src"
	.byte	0x1
	.byte	0xbf
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xbf
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xc1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.byte	0xc8
	.long	0x2b9
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x78a
	.uleb128 0x11
	.string	"v1"
	.byte	0x1
	.byte	0xc8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"v2"
	.byte	0x1
	.byte	0xc8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xc8
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xca
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.byte	0xd7
	.long	0x2b9
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x808
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0xd7
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.byte	0xd7
	.long	0x3c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.byte	0xd7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.long	.LASF84
	.byte	0x1
	.byte	0xd7
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0xd9
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0xda
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.byte	0xee
	.long	0x2da
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x86a
	.uleb128 0x11
	.string	"v1"
	.byte	0x1
	.byte	0xee
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"v2"
	.byte	0x1
	.byte	0xee
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xee
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"d"
	.byte	0x1
	.byte	0xf0
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.byte	0xfb
	.long	0x2da
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x11
	.string	"var"
	.byte	0x1
	.byte	0xfb
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xfb
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"det"
	.byte	0x1
	.byte	0xfd
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0xfe
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.value	0x10a
	.long	0x2da
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x95e
	.uleb128 0x18
	.string	"vec"
	.byte	0x1
	.value	0x10a
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.value	0x10a
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF88
	.byte	0x1
	.value	0x10a
	.long	0x369
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.value	0x10a
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.value	0x10b
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1a
	.long	.LASF90
	.byte	0x1
	.value	0x10d
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF91
	.byte	0x1
	.value	0x10d
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x10e
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x1
	.value	0x11a
	.long	0x2b9
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xa07
	.uleb128 0x18
	.string	"vec"
	.byte	0x1
	.value	0x11a
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.value	0x11a
	.long	0x3c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.value	0x11a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.value	0x11a
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x11a
	.long	0xa07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.value	0x11c
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x11d
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.value	0x11d
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.value	0x133
	.long	0x2da
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xb65
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.value	0x133
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.value	0x133
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x19
	.long	.LASF94
	.byte	0x1
	.value	0x133
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.value	0x133
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x19
	.long	.LASF100
	.byte	0x1
	.value	0x134
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x19
	.long	.LASF101
	.byte	0x1
	.value	0x134
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.long	.LASF67
	.byte	0x1
	.value	0x135
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x18
	.string	"map"
	.byte	0x1
	.value	0x135
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1b
	.string	"j"
	.byte	0x1
	.value	0x137
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.value	0x137
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1b
	.string	"it"
	.byte	0x1
	.value	0x137
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.value	0x139
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.value	0x13e
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.value	0x13e
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.string	"t"
	.byte	0x1
	.value	0x13e
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.string	"sel"
	.byte	0x1
	.value	0x13f
	.long	0x2e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF104
	.byte	0x1
	.value	0x140
	.long	0x5d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF105
	.byte	0x1
	.value	0x141
	.long	0x369
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.string	"tm"
	.byte	0x1
	.value	0x142
	.long	0x353
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x1
	.value	0x1aa
	.long	0x2da
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc0
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x1aa
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.value	0x1aa
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"sum"
	.byte	0x1
	.value	0x1ac
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1ad
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x1ba
	.long	0x2da
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2a
	.uleb128 0x18
	.string	"p1"
	.byte	0x1
	.value	0x1ba
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"p2"
	.byte	0x1
	.value	0x1ba
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.value	0x1ba
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"sum"
	.byte	0x1
	.value	0x1bc
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0x1ca
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc76
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1ca
	.long	0xc76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.value	0x1ca
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.value	0x1ca
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3c6
	.uleb128 0x1d
	.long	.LASF110
	.byte	0x1
	.value	0x1d5
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xcaa
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1d5
	.long	0xc76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF111
	.byte	0x1
	.value	0x1dd
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf4
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1dd
	.long	0xc76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF112
	.byte	0x1
	.value	0x1dd
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.value	0x1df
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF113
	.byte	0x1
	.value	0x1e6
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xd2f
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1e6
	.long	0xc76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"g"
	.byte	0x1
	.value	0x1e8
	.long	0x2b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF124
	.byte	0x1
	.value	0x1ef
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x1ef
	.long	0xc76
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.value	0x1f0
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.value	0x1f1
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x1f2
	.long	0x369
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x19
	.long	.LASF115
	.byte	0x1
	.value	0x1f3
	.long	0x5d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.value	0x1f5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1b
	.string	"r"
	.byte	0x1
	.value	0x1f5
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.value	0x1f6
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"end"
	.byte	0x1
	.value	0x1f7
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF66
	.byte	0x1
	.value	0x1f7
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1b
	.string	"m1"
	.byte	0x1
	.value	0x1f8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"m2"
	.byte	0x1
	.value	0x1f8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"v1"
	.byte	0x1
	.value	0x1f8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"v2"
	.byte	0x1
	.value	0x1f8
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.long	.LASF116
	.byte	0x1
	.value	0x1f9
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x1
	.value	0x1f9
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.value	0x1f9
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.value	0x1f9
	.long	0x2da
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2117
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
	.uleb128 0x2117
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.string	"_shortbuf"
.LASF81:
	.string	"vector_mean"
.LASF123:
	.string	"_IO_lock_t"
.LASF21:
	.string	"_IO_buf_end"
.LASF110:
	.string	"vector_gautbl_free"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF76:
	.string	"vector_mincomp_int32"
.LASF84:
	.string	"n_dim"
.LASF13:
	.string	"_flags"
.LASF25:
	.string	"_markers"
.LASF109:
	.string	"gautbl"
.LASF112:
	.string	"floor"
.LASF93:
	.string	"rows"
.LASF46:
	.string	"_pos"
.LASF24:
	.string	"_IO_save_end"
.LASF122:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"float"
.LASF51:
	.string	"int32"
.LASF104:
	.string	"count"
.LASF103:
	.string	"prev_sqerr"
.LASF102:
	.string	"seed"
.LASF48:
	.string	"long long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF94:
	.string	"cols"
.LASF34:
	.string	"_offset"
.LASF106:
	.string	"vector_pdf_entropy"
.LASF27:
	.string	"_fileno"
.LASF90:
	.string	"dist"
.LASF7:
	.string	"size_t"
.LASF114:
	.string	"offset"
.LASF63:
	.string	"ptmr_t"
.LASF16:
	.string	"_IO_read_base"
.LASF68:
	.string	"distfloor"
.LASF44:
	.string	"_next"
.LASF75:
	.string	"vector_maxcomp_int32"
.LASF86:
	.string	"vector_maha_precomp"
.LASF61:
	.string	"start_cpu"
.LASF100:
	.string	"epsilon"
.LASF97:
	.string	"bestd"
.LASF96:
	.string	"besti"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF66:
	.string	"veclen"
.LASF70:
	.string	"vector_floor"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF82:
	.string	"data"
.LASF53:
	.string	"float32"
.LASF74:
	.string	"vector_is_zero"
.LASF105:
	.string	"gmean"
.LASF107:
	.string	"vector_pdf_cross_entropy"
.LASF89:
	.string	"loginvdet"
.LASF121:
	.string	"vector.c"
.LASF17:
	.string	"_IO_write_base"
.LASF115:
	.string	"score"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF101:
	.string	"maxiter"
.LASF92:
	.string	"vector_vqlabel"
.LASF69:
	.string	"vector_gautbl_t"
.LASF78:
	.string	"vector_mincomp_float32"
.LASF52:
	.string	"uint32"
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
.LASF55:
	.string	"bitvec_t"
.LASF79:
	.string	"vector_accum"
.LASF57:
	.string	"t_cpu"
.LASF31:
	.string	"_vtable_offset"
.LASF95:
	.string	"sqerr"
.LASF77:
	.string	"vector_maxcomp_float32"
.LASF124:
	.string	"vector_gautbl_eval_logs3"
.LASF80:
	.string	"vector_cmp"
.LASF71:
	.string	"vector_nz_floor"
.LASF54:
	.string	"float64"
.LASF113:
	.string	"vector_gautbl_maha_precomp"
.LASF120:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF58:
	.string	"t_elapsed"
.LASF5:
	.string	"short int"
.LASF108:
	.string	"vector_gautbl_alloc"
.LASF6:
	.string	"long int"
.LASF91:
	.string	"diff"
.LASF99:
	.string	"vqrows"
.LASF64:
	.string	"vector_t"
.LASF62:
	.string	"start_elapsed"
.LASF56:
	.string	"name"
.LASF65:
	.string	"n_gau"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF116:
	.string	"dval1"
.LASF117:
	.string	"dval2"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF59:
	.string	"t_tot_cpu"
.LASF60:
	.string	"t_tot_elapsed"
.LASF111:
	.string	"vector_gautbl_var_floor"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF87:
	.string	"vector_dist_maha"
.LASF85:
	.string	"vector_dist_eucl"
.LASF18:
	.string	"_IO_write_ptr"
.LASF118:
	.string	"diff1"
.LASF119:
	.string	"diff2"
.LASF88:
	.string	"varinv"
.LASF73:
	.string	"vector_sum_norm"
.LASF98:
	.string	"vector_vqgen"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF50:
	.string	"double"
.LASF83:
	.string	"n_vec"
.LASF72:
	.string	"vector_print"
.LASF26:
	.string	"_chain"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF67:
	.string	"mean"
.LASF9:
	.string	"__off64_t"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
