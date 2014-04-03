	.file	"check_unitarity.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# check_unitarity.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 8
.LC2:
	.string	"Unitarity problem on node %d, site %d, dir %d, deviation=%f\n"
.LC3:
	.string	"SU3 matrix:"
.LC4:
	.string	"%f "
.LC5:
	.string	"repeat in hex:"
.LC6:
	.string	"%08x "
.LC7:
	.string	"  \n "
	.align 8
.LC8:
	.string	"Unitarity problem on node %d, maximum deviation=%f\n"
	.text
	.globl	check_unitarity
	.type	check_unitarity, @function
check_unitarity:
.LFB2:
	.file 1 "check_unitarity.c"
	.loc 1 19 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	.loc 1 31 0
	movl	$0, %eax	#, tmp79
	movq	%rax, -48(%rbp)	# tmp79, av_deviation
	movq	-48(%rbp), %rax	# av_deviation, tmp80
	movq	%rax, -56(%rbp)	# tmp80, max_deviation
	.loc 1 32 0
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r14	# lattice, s
	jmp	.L2	#
.L17:
	.loc 1 36 0
	movl	$0, %r12d	#, dir
	jmp	.L3	#
.L16:
	.loc 1 38 0
	movslq	%r12d, %rdx	# dir, tmp81
	movq	%rdx, %rax	# tmp81, tmp82
	salq	$3, %rax	#, tmp82
	addq	%rdx, %rax	# tmp81, tmp82
	salq	$4, %rax	#, tmp83
	addq	$112, %rax	#, tmp84
	leaq	(%r14,%rax), %r13	#, mat
	.loc 1 39 0
	movq	%r13, %rdi	# mat,
	call	check_su3	#
	movsd	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp85
	movq	%rax, -40(%rbp)	# tmp85, deviation
	.loc 1 40 0
	movsd	-40(%rbp), %xmm0	# deviation, tmp86
	ucomisd	.LC1(%rip), %xmm0	#, tmp86
	jbe	.L4	#,
	.loc 1 41 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	%eax, %esi	#, D.5222
	movq	-40(%rbp), %rax	# deviation, tmp87
	movq	%rax, -88(%rbp)	# tmp87, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	movl	%r12d, %ecx	# dir,
	movl	%ebx, %edx	# i,
	movl	$.LC2, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 43 0
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 44 0
	movl	$0, -72(%rbp)	#, ii
	jmp	.L6	#
.L9:
	.loc 1 45 0
	movl	$0, -68(%rbp)	#, jj
	jmp	.L7	#
.L8:
	.loc 1 46 0 discriminator 2
	movl	-68(%rbp), %eax	# jj, tmp89
	movslq	%eax, %rcx	# tmp89, tmp88
	movl	-72(%rbp), %eax	# ii, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	addq	%rax, %rax	# tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	addq	%rcx, %rax	# tmp88, tmp93
	salq	$4, %rax	#, tmp94
	addq	%r13, %rax	# mat, tmp95
	movq	(%rax), %rax	# mat_19->e[ii_3][jj_5].real, D.5223
	movq	%rax, -88(%rbp)	# D.5223, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	movl	$.LC4, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 47 0 discriminator 2
	movl	-68(%rbp), %eax	# jj, tmp97
	movslq	%eax, %rcx	# tmp97, tmp96
	movl	-72(%rbp), %eax	# ii, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	addq	%rax, %rax	# tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	addq	%rcx, %rax	# tmp96, tmp101
	salq	$4, %rax	#, tmp102
	addq	%r13, %rax	# mat, tmp103
	addq	$8, %rax	#, tmp104
	movq	(%rax), %rax	# mat_19->e[ii_3][jj_5].imag, D.5223
	movq	%rax, -88(%rbp)	# D.5223, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	movl	$.LC4, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 45 0 discriminator 2
	addl	$1, -68(%rbp)	#, jj
.L7:
	.loc 1 45 0 is_stmt 0 discriminator 1
	cmpl	$2, -68(%rbp)	#, jj
	jle	.L8	#,
	.loc 1 49 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 44 0
	addl	$1, -72(%rbp)	#, ii
.L6:
	.loc 1 44 0 is_stmt 0 discriminator 1
	cmpl	$2, -72(%rbp)	#, ii
	jle	.L9	#,
	.loc 1 51 0 is_stmt 1
	movl	$.LC5, %edi	#,
	call	puts	#
	.loc 1 52 0
	movl	$0, -72(%rbp)	#, ii
	jmp	.L10	#
.L13:
	.loc 1 53 0
	movl	$0, -68(%rbp)	#, jj
	jmp	.L11	#
.L12:
	.loc 1 54 0 discriminator 2
	movl	-68(%rbp), %eax	# jj, tmp106
	movslq	%eax, %rcx	# tmp106, tmp105
	movl	-72(%rbp), %eax	# ii, tmp108
	movslq	%eax, %rdx	# tmp108, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	addq	%rax, %rax	# tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	addq	%rcx, %rax	# tmp105, tmp110
	salq	$4, %rax	#, tmp111
	addq	%r13, %rax	# mat, tmp112
	movq	(%rax), %rax	# mat_19->e[ii_4][jj_6].real, D.5223
	movq	%rax, -64(%rbp)	# D.5223, ifval.fval
	.loc 1 55 0 discriminator 2
	movl	-64(%rbp), %eax	# ifval.ival, D.5222
	movl	%eax, %esi	# D.5222,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 56 0 discriminator 2
	movl	-68(%rbp), %eax	# jj, tmp114
	movslq	%eax, %rcx	# tmp114, tmp113
	movl	-72(%rbp), %eax	# ii, tmp116
	movslq	%eax, %rdx	# tmp116, tmp115
	movq	%rdx, %rax	# tmp115, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# tmp115, tmp117
	addq	%rcx, %rax	# tmp113, tmp118
	salq	$4, %rax	#, tmp119
	addq	%r13, %rax	# mat, tmp120
	addq	$8, %rax	#, tmp121
	movq	(%rax), %rax	# mat_19->e[ii_4][jj_6].imag, D.5223
	movq	%rax, -64(%rbp)	# D.5223, ifval.fval
	.loc 1 57 0 discriminator 2
	movl	-64(%rbp), %eax	# ifval.ival, D.5222
	movl	%eax, %esi	# D.5222,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 53 0 discriminator 2
	addl	$1, -68(%rbp)	#, jj
.L11:
	.loc 1 53 0 is_stmt 0 discriminator 1
	cmpl	$2, -68(%rbp)	#, jj
	jle	.L12	#,
	.loc 1 59 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 52 0
	addl	$1, -72(%rbp)	#, ii
.L10:
	.loc 1 52 0 is_stmt 0 discriminator 1
	cmpl	$2, -72(%rbp)	#, ii
	jle	.L13	#,
	.loc 1 61 0 is_stmt 1
	movl	$.LC7, %edi	#,
	call	puts	#
	.loc 1 62 0
	movq	stdout(%rip), %rax	# stdout, stdout.0
	movq	%rax, %rdi	# stdout.0,
	call	fflush	#
	movl	$1, %edi	#,
	call	terminate	#
.L4:
	.loc 1 64 0
	movsd	-40(%rbp), %xmm0	# deviation, tmp122
	ucomisd	-56(%rbp), %xmm0	# max_deviation, tmp122
	jbe	.L14	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# deviation, tmp123
	movq	%rax, -56(%rbp)	# tmp123, max_deviation
.L14:
	.loc 1 65 0 is_stmt 1
	movsd	-40(%rbp), %xmm0	# deviation, tmp124
	mulsd	-40(%rbp), %xmm0	# deviation, D.5223
	movsd	-48(%rbp), %xmm1	# av_deviation, tmp126
	addsd	%xmm1, %xmm0	# tmp126, tmp125
	movsd	%xmm0, -48(%rbp)	# tmp125, av_deviation
	.loc 1 36 0
	addl	$1, %r12d	#, dir
.L3:
	.loc 1 36 0 is_stmt 0 discriminator 1
	cmpl	$3, %r12d	#, dir
	jle	.L16	#,
	.loc 1 32 0 is_stmt 1
	addl	$1, %ebx	#, i
	addq	$2048, %r14	#, s
.L2:
	.loc 1 32 0 is_stmt 0 discriminator 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.1
	cmpl	%eax, %ebx	# sites_on_node.1, i
	jl	.L17	#,
	.loc 1 68 0 is_stmt 1
	leal	0(,%rbx,4), %eax	#, D.5222
	cvtsi2sd	%eax, %xmm0	# D.5222, D.5223
	movsd	-48(%rbp), %xmm1	# av_deviation, tmp127
	divsd	%xmm0, %xmm1	# D.5223, D.5223
	movapd	%xmm1, %xmm0	# D.5223, D.5223
	call	sqrt	#
	movsd	%xmm0, -88(%rbp)	#, %sfp
	movq	-88(%rbp), %rax	# %sfp, tmp128
	movq	%rax, -48(%rbp)	# tmp128, av_deviation
	.loc 1 73 0
	movsd	-56(%rbp), %xmm0	# max_deviation, tmp129
	ucomisd	.LC1(%rip), %xmm0	#, tmp129
	jbe	.L18	#,
	.loc 1 74 0
	movl	$0, %eax	#,
	call	mynode	#
	movl	%eax, %edx	#, D.5222
	movq	-56(%rbp), %rax	# max_deviation, tmp130
	movq	%rax, -88(%rbp)	# tmp130, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	movl	%edx, %esi	# D.5222,
	movl	$.LC8, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L18:
	.loc 1 76 0
	movq	-56(%rbp), %rax	# max_deviation, D.5223
	.loc 1 77 0
	movq	%rax, -88(%rbp)	# <retval>, %sfp
	movsd	-88(%rbp), %xmm0	# %sfp,
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_unitarity, .-check_unitarity
	.globl	check_su3
	.type	check_su3, @function
check_su3:
.LFB3:
	.loc 1 79 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)	# c, c
	.loc 1 84 0
	movl	$0, %ebx	#, i
	xorpd	%xmm6, %xmm6	# max
	movsd	%xmm6, -32(%rbp)	# max, %sfp
	jmp	.L25	#
.L28:
	.loc 1 85 0
	movq	-24(%rbp), %rcx	# c, tmp231
	movslq	%ebx, %rdx	# i, tmp232
	movq	%rdx, %rax	# tmp232, tmp233
	addq	%rax, %rax	# tmp233
	addq	%rdx, %rax	# tmp232, tmp233
	salq	$4, %rax	#, tmp234
	addq	%rcx, %rax	# tmp231, tmp235
	movsd	(%rax), %xmm1	# c_9(D)->e[i_6][0].real, D.5232
	movq	-24(%rbp), %rcx	# c, tmp236
	movslq	%ebx, %rdx	# i, tmp237
	movq	%rdx, %rax	# tmp237, tmp238
	addq	%rax, %rax	# tmp238
	addq	%rdx, %rax	# tmp237, tmp238
	salq	$4, %rax	#, tmp239
	addq	%rcx, %rax	# tmp236, tmp240
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][0].real, D.5232
	mulsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 86 0
	movq	-24(%rbp), %rcx	# c, tmp241
	movslq	%ebx, %rdx	# i, tmp242
	movq	%rdx, %rax	# tmp242, tmp243
	addq	%rax, %rax	# tmp243
	addq	%rdx, %rax	# tmp242, tmp243
	salq	$4, %rax	#, tmp244
	addq	%rcx, %rax	# tmp241, tmp245
	addq	$8, %rax	#, tmp246
	movsd	(%rax), %xmm2	# c_9(D)->e[i_6][0].imag, D.5232
	movq	-24(%rbp), %rcx	# c, tmp247
	movslq	%ebx, %rdx	# i, tmp248
	movq	%rdx, %rax	# tmp248, tmp249
	addq	%rax, %rax	# tmp249
	addq	%rdx, %rax	# tmp248, tmp249
	salq	$4, %rax	#, tmp250
	addq	%rcx, %rax	# tmp247, tmp251
	addq	$8, %rax	#, tmp252
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][0].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 85 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 87 0
	movq	-24(%rbp), %rcx	# c, tmp253
	movslq	%ebx, %rdx	# i, tmp254
	movq	%rdx, %rax	# tmp254, tmp255
	addq	%rax, %rax	# tmp255
	addq	%rdx, %rax	# tmp254, tmp255
	salq	$4, %rax	#, tmp256
	addq	%rcx, %rax	# tmp253, tmp257
	addq	$16, %rax	#, tmp258
	movsd	(%rax), %xmm2	# c_9(D)->e[i_6][1].real, D.5232
	movq	-24(%rbp), %rcx	# c, tmp259
	movslq	%ebx, %rdx	# i, tmp260
	movq	%rdx, %rax	# tmp260, tmp261
	addq	%rax, %rax	# tmp261
	addq	%rdx, %rax	# tmp260, tmp261
	salq	$4, %rax	#, tmp262
	addq	%rcx, %rax	# tmp259, tmp263
	addq	$16, %rax	#, tmp264
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][1].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 86 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 88 0
	movq	-24(%rbp), %rcx	# c, tmp265
	movslq	%ebx, %rdx	# i, tmp266
	movq	%rdx, %rax	# tmp266, tmp267
	addq	%rax, %rax	# tmp267
	addq	%rdx, %rax	# tmp266, tmp267
	salq	$4, %rax	#, tmp268
	addq	%rcx, %rax	# tmp265, tmp269
	addq	$24, %rax	#, tmp270
	movsd	(%rax), %xmm2	# c_9(D)->e[i_6][1].imag, D.5232
	movq	-24(%rbp), %rcx	# c, tmp271
	movslq	%ebx, %rdx	# i, tmp272
	movq	%rdx, %rax	# tmp272, tmp273
	addq	%rax, %rax	# tmp273
	addq	%rdx, %rax	# tmp272, tmp273
	salq	$4, %rax	#, tmp274
	addq	%rcx, %rax	# tmp271, tmp275
	addq	$24, %rax	#, tmp276
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 87 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 89 0
	movq	-24(%rbp), %rcx	# c, tmp277
	movslq	%ebx, %rdx	# i, tmp278
	movq	%rdx, %rax	# tmp278, tmp279
	addq	%rax, %rax	# tmp279
	addq	%rdx, %rax	# tmp278, tmp279
	salq	$4, %rax	#, tmp280
	addq	%rcx, %rax	# tmp277, tmp281
	addq	$32, %rax	#, tmp282
	movsd	(%rax), %xmm2	# c_9(D)->e[i_6][2].real, D.5232
	movq	-24(%rbp), %rcx	# c, tmp283
	movslq	%ebx, %rdx	# i, tmp284
	movq	%rdx, %rax	# tmp284, tmp285
	addq	%rax, %rax	# tmp285
	addq	%rdx, %rax	# tmp284, tmp285
	salq	$4, %rax	#, tmp286
	addq	%rcx, %rax	# tmp283, tmp287
	addq	$32, %rax	#, tmp288
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][2].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 88 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 90 0
	movq	-24(%rbp), %rcx	# c, tmp289
	movslq	%ebx, %rdx	# i, tmp290
	movq	%rdx, %rax	# tmp290, tmp291
	addq	%rax, %rax	# tmp291
	addq	%rdx, %rax	# tmp290, tmp291
	salq	$4, %rax	#, tmp292
	addq	%rcx, %rax	# tmp289, tmp293
	addq	$40, %rax	#, tmp294
	movsd	(%rax), %xmm2	# c_9(D)->e[i_6][2].imag, D.5232
	movq	-24(%rbp), %rcx	# c, tmp295
	movslq	%ebx, %rdx	# i, tmp296
	movq	%rdx, %rax	# tmp296, tmp297
	addq	%rax, %rax	# tmp297
	addq	%rdx, %rax	# tmp296, tmp297
	salq	$4, %rax	#, tmp298
	addq	%rcx, %rax	# tmp295, tmp299
	addq	$40, %rax	#, tmp300
	movsd	(%rax), %xmm0	# c_9(D)->e[i_6][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 85 0
	addsd	%xmm0, %xmm1	# D.5232, ar
	.loc 1 91 0
	movapd	%xmm1, %xmm0	# ar,
	call	sqrt	#
	movsd	.LC9(%rip), %xmm1	#, tmp301
	subsd	%xmm1, %xmm0	# tmp301, D.5232
	movsd	.LC10(%rip), %xmm1	#, tmp302
	andpd	%xmm1, %xmm0	# tmp302, ar
	movapd	%xmm0, %xmm3	# ar, ar
	.loc 1 92 0
	ucomisd	-32(%rbp), %xmm0	# %sfp, ar
	jbe	.L26	#,
	.loc 1 92 0 is_stmt 0 discriminator 1
	movsd	%xmm3, -32(%rbp)	# ar, %sfp
.L26:
	.loc 1 84 0 is_stmt 1
	addl	$1, %ebx	#, i
.L25:
	.loc 1 84 0 is_stmt 0 discriminator 1
	cmpl	$2, %ebx	#, i
	jle	.L28	#,
	.loc 1 98 0 is_stmt 1
	movq	-24(%rbp), %rax	# c, tmp303
	movsd	(%rax), %xmm1	# c_9(D)->e[0][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp304
	movsd	48(%rax), %xmm0	# c_9(D)->e[1][0].real, D.5232
	mulsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 99 0
	movq	-24(%rbp), %rax	# c, tmp305
	movsd	8(%rax), %xmm2	# c_9(D)->e[0][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp306
	movsd	56(%rax), %xmm0	# c_9(D)->e[1][0].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 98 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 100 0
	movq	-24(%rbp), %rax	# c, tmp307
	movsd	16(%rax), %xmm2	# c_9(D)->e[0][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp308
	movsd	64(%rax), %xmm0	# c_9(D)->e[1][1].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 99 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 101 0
	movq	-24(%rbp), %rax	# c, tmp309
	movsd	24(%rax), %xmm2	# c_9(D)->e[0][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp310
	movsd	72(%rax), %xmm0	# c_9(D)->e[1][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 100 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 102 0
	movq	-24(%rbp), %rax	# c, tmp311
	movsd	32(%rax), %xmm2	# c_9(D)->e[0][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp312
	movsd	80(%rax), %xmm0	# c_9(D)->e[1][2].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 101 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 103 0
	movq	-24(%rbp), %rax	# c, tmp313
	movsd	40(%rax), %xmm2	# c_9(D)->e[0][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp314
	movsd	88(%rax), %xmm0	# c_9(D)->e[1][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 98 0
	addsd	%xmm0, %xmm1	# D.5232, ar
	movapd	%xmm1, %xmm3	# ar, ar
	.loc 1 104 0
	movq	-24(%rbp), %rax	# c, tmp315
	movsd	(%rax), %xmm1	# c_9(D)->e[0][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp316
	movsd	56(%rax), %xmm0	# c_9(D)->e[1][0].imag, D.5232
	mulsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 105 0
	movq	-24(%rbp), %rax	# c, tmp317
	movsd	8(%rax), %xmm2	# c_9(D)->e[0][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp318
	movsd	48(%rax), %xmm1	# c_9(D)->e[1][0].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 104 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 106 0
	movq	-24(%rbp), %rax	# c, tmp319
	movsd	16(%rax), %xmm2	# c_9(D)->e[0][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp320
	movsd	72(%rax), %xmm0	# c_9(D)->e[1][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 105 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 107 0
	movq	-24(%rbp), %rax	# c, tmp321
	movsd	24(%rax), %xmm2	# c_9(D)->e[0][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp322
	movsd	64(%rax), %xmm1	# c_9(D)->e[1][1].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 106 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 108 0
	movq	-24(%rbp), %rax	# c, tmp323
	movsd	32(%rax), %xmm2	# c_9(D)->e[0][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp324
	movsd	88(%rax), %xmm0	# c_9(D)->e[1][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 107 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 109 0
	movq	-24(%rbp), %rax	# c, tmp325
	movsd	40(%rax), %xmm2	# c_9(D)->e[0][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp326
	movsd	80(%rax), %xmm1	# c_9(D)->e[1][2].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 104 0
	subsd	%xmm1, %xmm0	# D.5232, ai
	movapd	%xmm0, %xmm4	# ai, ai
	.loc 1 111 0
	movapd	%xmm3, %xmm1	# ar, D.5232
	mulsd	%xmm3, %xmm1	# ar, D.5232
	movapd	%xmm4, %xmm0	# ai, D.5232
	mulsd	%xmm4, %xmm0	# ai, D.5232
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	call	sqrt	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rbx	# %sfp, ari
	.loc 1 112 0
	movq	%rbx, -40(%rbp)	# ari, %sfp
	movsd	-40(%rbp), %xmm5	# %sfp, ari
	ucomisd	-32(%rbp), %xmm5	# %sfp, ari
	jbe	.L29	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	%rbx, -32(%rbp)	# ari, %sfp
.L29:
	.loc 1 115 0 is_stmt 1
	movq	-24(%rbp), %rax	# c, tmp327
	movsd	(%rax), %xmm1	# c_9(D)->e[0][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp328
	movsd	96(%rax), %xmm0	# c_9(D)->e[2][0].real, D.5232
	mulsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 116 0
	movq	-24(%rbp), %rax	# c, tmp329
	movsd	8(%rax), %xmm2	# c_9(D)->e[0][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp330
	movsd	104(%rax), %xmm0	# c_9(D)->e[2][0].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 115 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 117 0
	movq	-24(%rbp), %rax	# c, tmp331
	movsd	16(%rax), %xmm2	# c_9(D)->e[0][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp332
	movsd	112(%rax), %xmm0	# c_9(D)->e[2][1].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 116 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 118 0
	movq	-24(%rbp), %rax	# c, tmp333
	movsd	24(%rax), %xmm2	# c_9(D)->e[0][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp334
	movsd	120(%rax), %xmm0	# c_9(D)->e[2][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 117 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 119 0
	movq	-24(%rbp), %rax	# c, tmp335
	movsd	32(%rax), %xmm2	# c_9(D)->e[0][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp336
	movsd	128(%rax), %xmm0	# c_9(D)->e[2][2].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 118 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 120 0
	movq	-24(%rbp), %rax	# c, tmp337
	movsd	40(%rax), %xmm2	# c_9(D)->e[0][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp338
	movsd	136(%rax), %xmm0	# c_9(D)->e[2][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 115 0
	addsd	%xmm0, %xmm1	# D.5232, ar
	movapd	%xmm1, %xmm5	# ar, ar
	.loc 1 121 0
	movq	-24(%rbp), %rax	# c, tmp339
	movsd	(%rax), %xmm1	# c_9(D)->e[0][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp340
	movsd	104(%rax), %xmm0	# c_9(D)->e[2][0].imag, D.5232
	mulsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 122 0
	movq	-24(%rbp), %rax	# c, tmp341
	movsd	8(%rax), %xmm2	# c_9(D)->e[0][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp342
	movsd	96(%rax), %xmm1	# c_9(D)->e[2][0].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 121 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 123 0
	movq	-24(%rbp), %rax	# c, tmp343
	movsd	16(%rax), %xmm2	# c_9(D)->e[0][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp344
	movsd	120(%rax), %xmm0	# c_9(D)->e[2][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 122 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 124 0
	movq	-24(%rbp), %rax	# c, tmp345
	movsd	24(%rax), %xmm2	# c_9(D)->e[0][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp346
	movsd	112(%rax), %xmm1	# c_9(D)->e[2][1].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 123 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 125 0
	movq	-24(%rbp), %rax	# c, tmp347
	movsd	32(%rax), %xmm2	# c_9(D)->e[0][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp348
	movsd	136(%rax), %xmm0	# c_9(D)->e[2][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 124 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 126 0
	movq	-24(%rbp), %rax	# c, tmp349
	movsd	40(%rax), %xmm2	# c_9(D)->e[0][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp350
	movsd	128(%rax), %xmm1	# c_9(D)->e[2][2].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 121 0
	subsd	%xmm1, %xmm0	# D.5232, ai
	movapd	%xmm0, %xmm6	# ai, ai
	.loc 1 128 0
	movapd	%xmm5, %xmm1	# ar, D.5232
	mulsd	%xmm5, %xmm1	# ar, D.5232
	movapd	%xmm6, %xmm0	# ai, D.5232
	mulsd	%xmm6, %xmm0	# ai, D.5232
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	call	sqrt	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rbx	# %sfp, ari
	.loc 1 129 0
	movq	%rbx, -40(%rbp)	# ari, %sfp
	movsd	-40(%rbp), %xmm6	# %sfp, ari
	ucomisd	-32(%rbp), %xmm6	# %sfp, ari
	jbe	.L31	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	movq	%rbx, -32(%rbp)	# ari, %sfp
.L31:
	.loc 1 132 0 is_stmt 1
	movq	-24(%rbp), %rax	# c, tmp351
	movsd	48(%rax), %xmm1	# c_9(D)->e[1][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp352
	movsd	96(%rax), %xmm0	# c_9(D)->e[2][0].real, D.5232
	mulsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 133 0
	movq	-24(%rbp), %rax	# c, tmp353
	movsd	56(%rax), %xmm2	# c_9(D)->e[1][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp354
	movsd	104(%rax), %xmm0	# c_9(D)->e[2][0].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 132 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 134 0
	movq	-24(%rbp), %rax	# c, tmp355
	movsd	64(%rax), %xmm2	# c_9(D)->e[1][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp356
	movsd	112(%rax), %xmm0	# c_9(D)->e[2][1].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 133 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 135 0
	movq	-24(%rbp), %rax	# c, tmp357
	movsd	72(%rax), %xmm2	# c_9(D)->e[1][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp358
	movsd	120(%rax), %xmm0	# c_9(D)->e[2][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 134 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 136 0
	movq	-24(%rbp), %rax	# c, tmp359
	movsd	80(%rax), %xmm2	# c_9(D)->e[1][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp360
	movsd	128(%rax), %xmm0	# c_9(D)->e[2][2].real, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 135 0
	addsd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 137 0
	movq	-24(%rbp), %rax	# c, tmp361
	movsd	88(%rax), %xmm2	# c_9(D)->e[1][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp362
	movsd	136(%rax), %xmm0	# c_9(D)->e[2][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 132 0
	addsd	%xmm0, %xmm1	# D.5232, ar
	movapd	%xmm1, %xmm7	# ar, ar
	.loc 1 138 0
	movq	-24(%rbp), %rax	# c, tmp363
	movsd	48(%rax), %xmm1	# c_9(D)->e[1][0].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp364
	movsd	104(%rax), %xmm0	# c_9(D)->e[2][0].imag, D.5232
	mulsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 139 0
	movq	-24(%rbp), %rax	# c, tmp365
	movsd	56(%rax), %xmm2	# c_9(D)->e[1][0].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp366
	movsd	96(%rax), %xmm1	# c_9(D)->e[2][0].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 138 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 140 0
	movq	-24(%rbp), %rax	# c, tmp367
	movsd	64(%rax), %xmm2	# c_9(D)->e[1][1].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp368
	movsd	120(%rax), %xmm0	# c_9(D)->e[2][1].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 139 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 141 0
	movq	-24(%rbp), %rax	# c, tmp369
	movsd	72(%rax), %xmm2	# c_9(D)->e[1][1].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp370
	movsd	112(%rax), %xmm1	# c_9(D)->e[2][1].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 140 0
	subsd	%xmm1, %xmm0	# D.5232, D.5232
	movapd	%xmm0, %xmm1	# D.5232, D.5232
	.loc 1 142 0
	movq	-24(%rbp), %rax	# c, tmp371
	movsd	80(%rax), %xmm2	# c_9(D)->e[1][2].real, D.5232
	movq	-24(%rbp), %rax	# c, tmp372
	movsd	136(%rax), %xmm0	# c_9(D)->e[2][2].imag, D.5232
	mulsd	%xmm2, %xmm0	# D.5232, D.5232
	.loc 1 141 0
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	.loc 1 143 0
	movq	-24(%rbp), %rax	# c, tmp373
	movsd	88(%rax), %xmm2	# c_9(D)->e[1][2].imag, D.5232
	movq	-24(%rbp), %rax	# c, tmp374
	movsd	128(%rax), %xmm1	# c_9(D)->e[2][2].real, D.5232
	mulsd	%xmm2, %xmm1	# D.5232, D.5232
	.loc 1 138 0
	subsd	%xmm1, %xmm0	# D.5232, ai
	movapd	%xmm0, %xmm4	# ai, ai
	.loc 1 145 0
	movapd	%xmm7, %xmm1	# ar, D.5232
	mulsd	%xmm7, %xmm1	# ar, D.5232
	movapd	%xmm4, %xmm0	# ai, D.5232
	mulsd	%xmm4, %xmm0	# ai, D.5232
	addsd	%xmm1, %xmm0	# D.5232, D.5232
	call	sqrt	#
	movsd	%xmm0, -40(%rbp)	#, %sfp
	movq	-40(%rbp), %rbx	# %sfp, ari
	.loc 1 146 0
	movq	%rbx, -40(%rbp)	# ari, %sfp
	movsd	-40(%rbp), %xmm7	# %sfp, ari
	ucomisd	-32(%rbp), %xmm7	# %sfp, ari
	jbe	.L33	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	%rbx, -32(%rbp)	# ari, %sfp
.L33:
	.loc 1 150 0 is_stmt 1
	movq	-32(%rbp), %rax	# %sfp, D.5232
	.loc 1 152 0
	movq	%rax, -32(%rbp)	# <retval>, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	check_su3, .-check_su3
	.section	.rodata
	.align 8
.LC1:
	.long	3944497965
	.long	1058682594
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 16
.LC10:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "complex.h"
	.file 6 "random.h"
	.file 7 "su3.h"
	.file 8 "./lattice.h"
	.file 9 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6e4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.long	.LASF92
	.long	.LASF93
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
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF94
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF49
	.uleb128 0xd
	.byte	0x10
	.byte	0x5
	.byte	0x49
	.long	0x2c4
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0x4a
	.long	0x29c
	.byte	0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0x4b
	.long	0x29c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x4c
	.long	0x2a3
	.uleb128 0xd
	.byte	0x58
	.byte	0x6
	.byte	0x6
	.long	0x355
	.uleb128 0xe
	.string	"r0"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0
	.uleb128 0xe
	.string	"r1"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x8
	.uleb128 0xe
	.string	"r2"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x10
	.uleb128 0xe
	.string	"r3"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x18
	.uleb128 0xe
	.string	"r4"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x20
	.uleb128 0xe
	.string	"r5"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x28
	.uleb128 0xe
	.string	"r6"
	.byte	0x6
	.byte	0x8
	.long	0x38
	.byte	0x30
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x38
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x40
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x9
	.long	0x38
	.byte	0x48
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xa
	.long	0x29c
	.byte	0x50
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0xb
	.long	0x2cf
	.uleb128 0xd
	.byte	0x90
	.byte	0x7
	.byte	0xe
	.long	0x373
	.uleb128 0xe
	.string	"e"
	.byte	0x7
	.byte	0xe
	.long	0x373
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x389
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0xe
	.long	0x360
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.uleb128 0xe
	.string	"c"
	.byte	0x7
	.byte	0xf
	.long	0x3a7
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.long	0x3b7
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x7
	.byte	0xf
	.long	0x394
	.uleb128 0xd
	.byte	0x50
	.byte	0x7
	.byte	0x10
	.long	0x41f
	.uleb128 0xe
	.string	"m01"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0
	.uleb128 0xe
	.string	"m02"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x10
	.uleb128 0xe
	.string	"m12"
	.byte	0x7
	.byte	0x11
	.long	0x2c4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x38
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x11
	.long	0x29c
	.byte	0x48
	.byte	0
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x11
	.long	0x3c2
	.uleb128 0xb
	.long	0x3b7
	.long	0x43a
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.value	0x800
	.byte	0x8
	.byte	0x1f
	.long	0x551
	.uleb128 0xe
	.string	"x"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0
	.uleb128 0xe
	.string	"y"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x2
	.uleb128 0xe
	.string	"z"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x4
	.uleb128 0xe
	.string	"t"
	.byte	0x8
	.byte	0x22
	.long	0x5b
	.byte	0x6
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x26
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x29
	.long	0x355
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x2b
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x32
	.long	0x551
	.byte	0x70
	.uleb128 0x10
	.string	"mom"
	.byte	0x8
	.byte	0x3e
	.long	0x561
	.value	0x2b0
	.uleb128 0x11
	.long	.LASF70
	.byte	0x8
	.byte	0x42
	.long	0x571
	.value	0x3f0
	.uleb128 0x10
	.string	"phi"
	.byte	0x8
	.byte	0x45
	.long	0x3b7
	.value	0x410
	.uleb128 0x11
	.long	.LASF71
	.byte	0x8
	.byte	0x46
	.long	0x3b7
	.value	0x440
	.uleb128 0x11
	.long	.LASF72
	.byte	0x8
	.byte	0x47
	.long	0x3b7
	.value	0x470
	.uleb128 0x10
	.string	"xxx"
	.byte	0x8
	.byte	0x48
	.long	0x3b7
	.value	0x4a0
	.uleb128 0x10
	.string	"ttt"
	.byte	0x8
	.byte	0x49
	.long	0x3b7
	.value	0x4d0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x8
	.byte	0x4a
	.long	0x3b7
	.value	0x500
	.uleb128 0x11
	.long	.LASF74
	.byte	0x8
	.byte	0x5d
	.long	0x42a
	.value	0x530
	.uleb128 0x11
	.long	.LASF75
	.byte	0x8
	.byte	0x5f
	.long	0x42a
	.value	0x5f0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x8
	.byte	0x60
	.long	0x3b7
	.value	0x6b0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x8
	.byte	0x62
	.long	0x389
	.value	0x6e0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x8
	.byte	0x62
	.long	0x389
	.value	0x770
	.byte	0
	.uleb128 0xb
	.long	0x389
	.long	0x561
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x41f
	.long	0x571
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x29c
	.long	0x581
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x8
	.byte	0x63
	.long	0x43a
	.uleb128 0x12
	.long	.LASF86
	.byte	0x1
	.byte	0x13
	.long	0x29c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x653
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x14
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.string	"dir"
	.byte	0x1
	.byte	0x14
	.long	0x62
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.string	"ii"
	.byte	0x1
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x13
	.string	"jj"
	.byte	0x1
	.byte	0x15
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.string	"s"
	.byte	0x1
	.byte	0x16
	.long	0x653
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x13
	.string	"mat"
	.byte	0x1
	.byte	0x17
	.long	0x659
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.byte	0x18
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x18
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x19
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.byte	0x8
	.byte	0x1
	.byte	0x1a
	.long	0x643
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x1b
	.long	0x29c
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x1c
	.long	0x62
	.byte	0
	.uleb128 0x14
	.long	.LASF85
	.byte	0x1
	.byte	0x1d
	.long	0x624
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x6
	.byte	0x8
	.long	0x389
	.uleb128 0x12
	.long	.LASF87
	.byte	0x1
	.byte	0x4f
	.long	0x29c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c6
	.uleb128 0x17
	.string	"c"
	.byte	0x1
	.byte	0x4f
	.long	0x659
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"ar"
	.byte	0x1
	.byte	0x50
	.long	0x29c
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.byte	0x50
	.long	0x29c
	.uleb128 0x13
	.string	"ari"
	.byte	0x1
	.byte	0x50
	.long	0x29c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x18
	.string	"max"
	.byte	0x1
	.byte	0x50
	.long	0x29c
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x51
	.long	0x62
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.byte	0x9
	.byte	0xa9
	.long	0x25b
	.uleb128 0x19
	.long	.LASF89
	.byte	0x8
	.byte	0x87
	.long	0x62
	.uleb128 0x19
	.long	.LASF90
	.byte	0x8
	.byte	0x9a
	.long	0x653
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x15
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
	.uleb128 0x16
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
.LASF31:
	.string	"_shortbuf"
.LASF13:
	.string	"_IO_read_ptr"
.LASF19:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF46:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF56:
	.string	"scale"
.LASF26:
	.string	"_fileno"
.LASF51:
	.string	"imag"
.LASF14:
	.string	"_IO_read_end"
.LASF70:
	.string	"phase"
.LASF6:
	.string	"long int"
.LASF86:
	.string	"check_unitarity"
.LASF12:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF49:
	.string	"double"
.LASF54:
	.string	"addend"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF85:
	.string	"ifval"
.LASF65:
	.string	"parity"
.LASF69:
	.string	"link"
.LASF9:
	.string	"__off64_t"
.LASF36:
	.string	"__pad3"
.LASF7:
	.string	"size_t"
.LASF42:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF23:
	.string	"_IO_save_end"
.LASF44:
	.string	"_sbuf"
.LASF67:
	.string	"site_prn"
.LASF78:
	.string	"staple"
.LASF63:
	.string	"space"
.LASF21:
	.string	"_IO_save_base"
.LASF75:
	.string	"templongvec"
.LASF32:
	.string	"_lock"
.LASF62:
	.string	"m22im"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF88:
	.string	"stdout"
.LASF59:
	.string	"su3_vector"
.LASF92:
	.string	"check_unitarity.c"
.LASF10:
	.string	"sizetype"
.LASF71:
	.string	"resid"
.LASF18:
	.string	"_IO_write_end"
.LASF53:
	.string	"multiplier"
.LASF72:
	.string	"cg_p"
.LASF57:
	.string	"double_prn"
.LASF94:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF58:
	.string	"su3_matrix"
.LASF79:
	.string	"site"
.LASF45:
	.string	"_pos"
.LASF81:
	.string	"max_deviation"
.LASF24:
	.string	"_markers"
.LASF73:
	.string	"g_rand"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF30:
	.string	"_vtable_offset"
.LASF61:
	.string	"m11im"
.LASF89:
	.string	"sites_on_node"
.LASF48:
	.string	"float"
.LASF11:
	.string	"char"
.LASF60:
	.string	"m00im"
.LASF66:
	.string	"index"
.LASF55:
	.string	"ic_state"
.LASF77:
	.string	"tempmat1"
.LASF90:
	.string	"lattice"
.LASF68:
	.string	"space1"
.LASF43:
	.string	"_next"
.LASF76:
	.string	"templongv1"
.LASF15:
	.string	"_IO_read_base"
.LASF64:
	.string	"anti_hermitmat"
.LASF2:
	.string	"short unsigned int"
.LASF84:
	.string	"ival"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF93:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF40:
	.string	"_unused2"
.LASF80:
	.string	"deviation"
.LASF52:
	.string	"complex"
.LASF87:
	.string	"check_su3"
.LASF83:
	.string	"fval"
.LASF91:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"_IO_backup_base"
.LASF50:
	.string	"real"
.LASF74:
	.string	"tempvec"
.LASF16:
	.string	"_IO_write_base"
.LASF82:
	.string	"av_deviation"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
