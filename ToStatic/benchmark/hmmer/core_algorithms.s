	.file	"core_algorithms.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 core_algorithms.c -mtune=generic -march=x86-64 -g
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
	.section	.rodata
.LC0:
	.string	"core_algorithms.c"
	.align 8
.LC1:
	.string	"there's trouble with RAMLIMIT if you grow in both M and N."
	.text
	.globl	CreatePlan7Matrix
	.type	CreatePlan7Matrix, @function
CreatePlan7Matrix:
.LFB2:
	.file 1 "core_algorithms.c"
	.loc 1 62 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# N, N
	movl	%esi, -24(%rbp)	# M, M
	movl	%edx, -28(%rbp)	# padN, padN
	movl	%ecx, -32(%rbp)	# padM, padM
	.loc 1 66 0
	movl	$80, %edx	#,
	movl	$66, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp149, mx
	.loc 1 67 0
	movl	-20(%rbp), %eax	# N, tmp150
	addl	$1, %eax	#, D.14885
	cltq
	salq	$3, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$67, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp151
	movq	%rax, (%rdx)	# D.14887, mx_2->xmx
	.loc 1 68 0
	movl	-20(%rbp), %eax	# N, tmp152
	addl	$1, %eax	#, D.14885
	cltq
	salq	$3, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$68, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp153
	movq	%rax, 8(%rdx)	# D.14887, mx_2->mmx
	.loc 1 69 0
	movl	-20(%rbp), %eax	# N, tmp154
	addl	$1, %eax	#, D.14885
	cltq
	salq	$3, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$69, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp155
	movq	%rax, 16(%rdx)	# D.14887, mx_2->imx
	.loc 1 70 0
	movl	-20(%rbp), %eax	# N, tmp156
	addl	$1, %eax	#, D.14885
	cltq
	salq	$3, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$70, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp157
	movq	%rax, 24(%rdx)	# D.14887, mx_2->dmx
	.loc 1 71 0
	movl	-20(%rbp), %eax	# N, tmp158
	addl	$1, %eax	#, D.14885
	movslq	%eax, %rdx	# D.14885, D.14886
	movq	%rdx, %rax	# D.14886, tmp159
	salq	$2, %rax	#, tmp159
	addq	%rdx, %rax	# D.14886, tmp159
	salq	$2, %rax	#, tmp160
	movq	%rax, %rdx	# D.14886,
	movl	$71, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp161
	movq	%rax, 32(%rdx)	# D.14887, mx_2->xmx_mem
	.loc 1 72 0
	movl	-20(%rbp), %eax	# N, tmp162
	leal	1(%rax), %edx	#, D.14885
	movl	-24(%rbp), %eax	# M, tmp163
	addl	$2, %eax	#, D.14885
	imull	%edx, %eax	# D.14885, D.14885
	cltq
	salq	$2, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$72, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp164
	movq	%rax, 40(%rdx)	# D.14887, mx_2->mmx_mem
	.loc 1 73 0
	movl	-20(%rbp), %eax	# N, tmp165
	leal	1(%rax), %edx	#, D.14885
	movl	-24(%rbp), %eax	# M, tmp166
	addl	$2, %eax	#, D.14885
	imull	%edx, %eax	# D.14885, D.14885
	cltq
	salq	$2, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$73, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp167
	movq	%rax, 48(%rdx)	# D.14887, mx_2->imx_mem
	.loc 1 74 0
	movl	-20(%rbp), %eax	# N, tmp168
	leal	1(%rax), %edx	#, D.14885
	movl	-24(%rbp), %eax	# M, tmp169
	addl	$2, %eax	#, D.14885
	imull	%edx, %eax	# D.14885, D.14885
	cltq
	salq	$2, %rax	#, D.14886
	movq	%rax, %rdx	# D.14886,
	movl	$74, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# mx, tmp170
	movq	%rax, 56(%rdx)	# D.14887, mx_2->dmx_mem
	.loc 1 80 0
	movq	-8(%rbp), %rax	# mx, tmp171
	movq	(%rax), %rax	# mx_2->xmx, D.14888
	movq	-8(%rbp), %rdx	# mx, tmp172
	movq	32(%rdx), %rdx	# mx_2->xmx_mem, D.14887
	movq	%rdx, (%rax)	# D.14887, *_43
	.loc 1 81 0
	movq	-8(%rbp), %rax	# mx, tmp173
	movq	8(%rax), %rax	# mx_2->mmx, D.14888
	movq	-8(%rbp), %rdx	# mx, tmp174
	movq	40(%rdx), %rdx	# mx_2->mmx_mem, D.14887
	movq	%rdx, (%rax)	# D.14887, *_45
	.loc 1 82 0
	movq	-8(%rbp), %rax	# mx, tmp175
	movq	16(%rax), %rax	# mx_2->imx, D.14888
	movq	-8(%rbp), %rdx	# mx, tmp176
	movq	48(%rdx), %rdx	# mx_2->imx_mem, D.14887
	movq	%rdx, (%rax)	# D.14887, *_47
	.loc 1 83 0
	movq	-8(%rbp), %rax	# mx, tmp177
	movq	24(%rax), %rax	# mx_2->dmx, D.14888
	movq	-8(%rbp), %rdx	# mx, tmp178
	movq	56(%rdx), %rdx	# mx_2->dmx_mem, D.14887
	movq	%rdx, (%rax)	# D.14887, *_49
	.loc 1 84 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 86 0 discriminator 2
	movq	-8(%rbp), %rax	# mx, tmp179
	movq	(%rax), %rax	# mx_2->xmx, D.14888
	movl	-12(%rbp), %edx	# i, tmp180
	movslq	%edx, %rdx	# tmp180, D.14886
	salq	$3, %rdx	#, D.14886
	leaq	(%rax,%rdx), %rcx	#, D.14888
	movq	-8(%rbp), %rax	# mx, tmp181
	movq	(%rax), %rax	# mx_2->xmx, D.14888
	movq	(%rax), %rsi	# *_56, D.14889
	movl	-12(%rbp), %eax	# i, tmp182
	movslq	%eax, %rdx	# tmp182, D.14886
	movq	%rdx, %rax	# D.14886, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# D.14886, tmp183
	salq	$2, %rax	#, tmp184
	addq	%rsi, %rax	# D.14889, D.14889
	movq	%rax, (%rcx)	# D.14889, *_55
	.loc 1 87 0 discriminator 2
	movq	-8(%rbp), %rax	# mx, tmp185
	movq	8(%rax), %rax	# mx_2->mmx, D.14888
	movl	-12(%rbp), %edx	# i, tmp186
	movslq	%edx, %rdx	# tmp186, D.14886
	salq	$3, %rdx	#, D.14886
	addq	%rax, %rdx	# D.14888, D.14888
	movq	-8(%rbp), %rax	# mx, tmp187
	movq	8(%rax), %rax	# mx_2->mmx, D.14888
	movq	(%rax), %rax	# *_65, D.14889
	movl	-24(%rbp), %ecx	# M, tmp188
	addl	$2, %ecx	#, D.14885
	imull	-12(%rbp), %ecx	# i, D.14885
	movslq	%ecx, %rcx	# D.14885, D.14886
	salq	$2, %rcx	#, D.14886
	addq	%rcx, %rax	# D.14886, D.14889
	movq	%rax, (%rdx)	# D.14889, *_64
	.loc 1 88 0 discriminator 2
	movq	-8(%rbp), %rax	# mx, tmp189
	movq	16(%rax), %rax	# mx_2->imx, D.14888
	movl	-12(%rbp), %edx	# i, tmp190
	movslq	%edx, %rdx	# tmp190, D.14886
	salq	$3, %rdx	#, D.14886
	addq	%rax, %rdx	# D.14888, D.14888
	movq	-8(%rbp), %rax	# mx, tmp191
	movq	16(%rax), %rax	# mx_2->imx, D.14888
	movq	(%rax), %rax	# *_76, D.14889
	movl	-24(%rbp), %ecx	# M, tmp192
	addl	$2, %ecx	#, D.14885
	imull	-12(%rbp), %ecx	# i, D.14885
	movslq	%ecx, %rcx	# D.14885, D.14886
	salq	$2, %rcx	#, D.14886
	addq	%rcx, %rax	# D.14886, D.14889
	movq	%rax, (%rdx)	# D.14889, *_75
	.loc 1 89 0 discriminator 2
	movq	-8(%rbp), %rax	# mx, tmp193
	movq	24(%rax), %rax	# mx_2->dmx, D.14888
	movl	-12(%rbp), %edx	# i, tmp194
	movslq	%edx, %rdx	# tmp194, D.14886
	salq	$3, %rdx	#, D.14886
	addq	%rax, %rdx	# D.14888, D.14888
	movq	-8(%rbp), %rax	# mx, tmp195
	movq	24(%rax), %rax	# mx_2->dmx, D.14888
	movq	(%rax), %rax	# *_87, D.14889
	movl	-24(%rbp), %ecx	# M, tmp196
	addl	$2, %ecx	#, D.14885
	imull	-12(%rbp), %ecx	# i, D.14885
	movslq	%ecx, %rcx	# D.14885, D.14886
	salq	$2, %rcx	#, D.14886
	addq	%rcx, %rax	# D.14886, D.14889
	movq	%rax, (%rdx)	# D.14889, *_86
	.loc 1 84 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L2:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp197
	cmpl	-20(%rbp), %eax	# N, tmp197
	jle	.L3	#,
	.loc 1 92 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, padM
	jle	.L4	#,
	.loc 1 92 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, padN
	jle	.L4	#,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L4:
	.loc 1 93 0 is_stmt 1
	movq	-8(%rbp), %rax	# mx, tmp198
	movl	-20(%rbp), %edx	# N, tmp199
	movl	%edx, 64(%rax)	# tmp199, mx_2->maxN
	.loc 1 94 0
	movq	-8(%rbp), %rax	# mx, tmp200
	movl	-24(%rbp), %edx	# M, tmp201
	movl	%edx, 68(%rax)	# tmp201, mx_2->maxM
	.loc 1 95 0
	movq	-8(%rbp), %rax	# mx, tmp202
	movl	-28(%rbp), %edx	# padN, tmp203
	movl	%edx, 72(%rax)	# tmp203, mx_2->padN
	.loc 1 96 0
	movq	-8(%rbp), %rax	# mx, tmp204
	movl	-32(%rbp), %edx	# padM, tmp205
	movl	%edx, 76(%rax)	# tmp205, mx_2->padM
	.loc 1 98 0
	movq	-8(%rbp), %rax	# mx, D.14890
	.loc 1 99 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	CreatePlan7Matrix, .-CreatePlan7Matrix
	.globl	ResizePlan7Matrix
	.type	ResizePlan7Matrix, @function
ResizePlan7Matrix:
.LFB3:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# mx, mx
	movl	%esi, -28(%rbp)	# N, N
	movl	%edx, -32(%rbp)	# M, M
	movq	%rcx, -40(%rbp)	# xmx, xmx
	movq	%r8, -48(%rbp)	# mmx, mmx
	movq	%r9, -56(%rbp)	# imx, imx
	.loc 1 128 0
	movq	-24(%rbp), %rax	# mx, tmp165
	movl	64(%rax), %eax	# mx_4(D)->maxN, D.14893
	cmpl	-28(%rbp), %eax	# N, D.14893
	jl	.L7	#,
	.loc 1 128 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mx, tmp166
	movl	68(%rax), %eax	# mx_4(D)->maxM, D.14893
	cmpl	-32(%rbp), %eax	# M, D.14893
	jl	.L7	#,
	jmp	.L8	#
.L7:
	.loc 1 130 0 is_stmt 1
	movq	-24(%rbp), %rax	# mx, tmp167
	movl	64(%rax), %eax	# mx_4(D)->maxN, D.14893
	cmpl	-28(%rbp), %eax	# N, D.14893
	jge	.L9	#,
	.loc 1 131 0
	movq	-24(%rbp), %rax	# mx, tmp168
	movl	72(%rax), %eax	# mx_4(D)->padN, D.14893
	addl	%eax, -28(%rbp)	# D.14893, N
	.loc 1 132 0
	movq	-24(%rbp), %rax	# mx, tmp169
	movl	-28(%rbp), %edx	# N, tmp170
	movl	%edx, 64(%rax)	# tmp170, mx_4(D)->maxN
	.loc 1 133 0
	movl	-28(%rbp), %eax	# N, tmp171
	addl	$1, %eax	#, D.14893
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp172
	movq	(%rax), %rax	# mx_4(D)->xmx, D.14895
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14895,
	movl	$133, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp173
	movq	%rax, (%rdx)	# D.14896, mx_4(D)->xmx
	.loc 1 134 0
	movl	-28(%rbp), %eax	# N, tmp174
	addl	$1, %eax	#, D.14893
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp175
	movq	8(%rax), %rax	# mx_4(D)->mmx, D.14895
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14895,
	movl	$134, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp176
	movq	%rax, 8(%rdx)	# D.14896, mx_4(D)->mmx
	.loc 1 135 0
	movl	-28(%rbp), %eax	# N, tmp177
	addl	$1, %eax	#, D.14893
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp178
	movq	16(%rax), %rax	# mx_4(D)->imx, D.14895
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14895,
	movl	$135, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp179
	movq	%rax, 16(%rdx)	# D.14896, mx_4(D)->imx
	.loc 1 136 0
	movl	-28(%rbp), %eax	# N, tmp180
	addl	$1, %eax	#, D.14893
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp181
	movq	24(%rax), %rax	# mx_4(D)->dmx, D.14895
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14895,
	movl	$136, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp182
	movq	%rax, 24(%rdx)	# D.14896, mx_4(D)->dmx
.L9:
	.loc 1 139 0
	movq	-24(%rbp), %rax	# mx, tmp183
	movl	68(%rax), %eax	# mx_4(D)->maxM, D.14893
	cmpl	-32(%rbp), %eax	# M, D.14893
	jge	.L10	#,
	.loc 1 140 0
	movq	-24(%rbp), %rax	# mx, tmp184
	movl	76(%rax), %eax	# mx_4(D)->padM, D.14893
	addl	%eax, -32(%rbp)	# D.14893, M
	.loc 1 141 0
	movq	-24(%rbp), %rax	# mx, tmp185
	movl	-32(%rbp), %edx	# M, tmp186
	movl	%edx, 68(%rax)	# tmp186, mx_4(D)->maxM
.L10:
	.loc 1 144 0
	movl	-28(%rbp), %eax	# N, tmp187
	addl	$1, %eax	#, D.14893
	movslq	%eax, %rdx	# D.14893, D.14894
	movq	%rdx, %rax	# D.14894, tmp188
	salq	$2, %rax	#, tmp188
	addq	%rdx, %rax	# D.14894, tmp188
	salq	$2, %rax	#, tmp189
	movq	%rax, %rdx	# tmp188, D.14894
	movq	-24(%rbp), %rax	# mx, tmp190
	movq	32(%rax), %rax	# mx_4(D)->xmx_mem, D.14896
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14896,
	movl	$144, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp191
	movq	%rax, 32(%rdx)	# D.14896, mx_4(D)->xmx_mem
	.loc 1 145 0
	movl	-28(%rbp), %eax	# N, tmp192
	leal	1(%rax), %edx	#, D.14893
	movl	-32(%rbp), %eax	# M, tmp193
	addl	$2, %eax	#, D.14893
	imull	%edx, %eax	# D.14893, D.14893
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp194
	movq	40(%rax), %rax	# mx_4(D)->mmx_mem, D.14896
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14896,
	movl	$145, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp195
	movq	%rax, 40(%rdx)	# D.14896, mx_4(D)->mmx_mem
	.loc 1 146 0
	movl	-28(%rbp), %eax	# N, tmp196
	leal	1(%rax), %edx	#, D.14893
	movl	-32(%rbp), %eax	# M, tmp197
	addl	$2, %eax	#, D.14893
	imull	%edx, %eax	# D.14893, D.14893
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp198
	movq	48(%rax), %rax	# mx_4(D)->imx_mem, D.14896
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14896,
	movl	$146, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp199
	movq	%rax, 48(%rdx)	# D.14896, mx_4(D)->imx_mem
	.loc 1 147 0
	movl	-28(%rbp), %eax	# N, tmp200
	leal	1(%rax), %edx	#, D.14893
	movl	-32(%rbp), %eax	# M, tmp201
	addl	$2, %eax	#, D.14893
	imull	%edx, %eax	# D.14893, D.14893
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14894
	movq	-24(%rbp), %rax	# mx, tmp202
	movq	56(%rax), %rax	# mx_4(D)->dmx_mem, D.14896
	movq	%rdx, %rcx	# D.14894,
	movq	%rax, %rdx	# D.14896,
	movl	$147, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-24(%rbp), %rdx	# mx, tmp203
	movq	%rax, 56(%rdx)	# D.14896, mx_4(D)->dmx_mem
	.loc 1 149 0
	movq	-24(%rbp), %rax	# mx, tmp204
	movq	(%rax), %rax	# mx_4(D)->xmx, D.14895
	movq	-24(%rbp), %rdx	# mx, tmp205
	movq	32(%rdx), %rdx	# mx_4(D)->xmx_mem, D.14896
	movq	%rdx, (%rax)	# D.14896, *_61
	.loc 1 150 0
	movq	-24(%rbp), %rax	# mx, tmp206
	movq	8(%rax), %rax	# mx_4(D)->mmx, D.14895
	movq	-24(%rbp), %rdx	# mx, tmp207
	movq	40(%rdx), %rdx	# mx_4(D)->mmx_mem, D.14896
	movq	%rdx, (%rax)	# D.14896, *_63
	.loc 1 151 0
	movq	-24(%rbp), %rax	# mx, tmp208
	movq	16(%rax), %rax	# mx_4(D)->imx, D.14895
	movq	-24(%rbp), %rdx	# mx, tmp209
	movq	48(%rdx), %rdx	# mx_4(D)->imx_mem, D.14896
	movq	%rdx, (%rax)	# D.14896, *_65
	.loc 1 152 0
	movq	-24(%rbp), %rax	# mx, tmp210
	movq	24(%rax), %rax	# mx_4(D)->dmx, D.14895
	movq	-24(%rbp), %rdx	# mx, tmp211
	movq	56(%rdx), %rdx	# mx_4(D)->dmx_mem, D.14896
	movq	%rdx, (%rax)	# D.14896, *_67
	.loc 1 154 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L11	#
.L12:
	.loc 1 156 0 discriminator 2
	movq	-24(%rbp), %rax	# mx, tmp212
	movq	(%rax), %rax	# mx_4(D)->xmx, D.14895
	movl	-4(%rbp), %edx	# i, tmp213
	movslq	%edx, %rdx	# tmp213, D.14894
	salq	$3, %rdx	#, D.14894
	leaq	(%rax,%rdx), %rcx	#, D.14895
	movq	-24(%rbp), %rax	# mx, tmp214
	movq	(%rax), %rax	# mx_4(D)->xmx, D.14895
	movq	(%rax), %rsi	# *_74, D.14897
	movl	-4(%rbp), %eax	# i, tmp215
	movslq	%eax, %rdx	# tmp215, D.14894
	movq	%rdx, %rax	# D.14894, tmp216
	salq	$2, %rax	#, tmp216
	addq	%rdx, %rax	# D.14894, tmp216
	salq	$2, %rax	#, tmp217
	addq	%rsi, %rax	# D.14897, D.14897
	movq	%rax, (%rcx)	# D.14897, *_73
	.loc 1 157 0 discriminator 2
	movq	-24(%rbp), %rax	# mx, tmp218
	movq	8(%rax), %rax	# mx_4(D)->mmx, D.14895
	movl	-4(%rbp), %edx	# i, tmp219
	movslq	%edx, %rdx	# tmp219, D.14894
	salq	$3, %rdx	#, D.14894
	addq	%rax, %rdx	# D.14895, D.14895
	movq	-24(%rbp), %rax	# mx, tmp220
	movq	8(%rax), %rax	# mx_4(D)->mmx, D.14895
	movq	(%rax), %rax	# *_83, D.14897
	movl	-32(%rbp), %ecx	# M, tmp221
	addl	$2, %ecx	#, D.14893
	imull	-4(%rbp), %ecx	# i, D.14893
	movslq	%ecx, %rcx	# D.14893, D.14894
	salq	$2, %rcx	#, D.14894
	addq	%rcx, %rax	# D.14894, D.14897
	movq	%rax, (%rdx)	# D.14897, *_82
	.loc 1 158 0 discriminator 2
	movq	-24(%rbp), %rax	# mx, tmp222
	movq	16(%rax), %rax	# mx_4(D)->imx, D.14895
	movl	-4(%rbp), %edx	# i, tmp223
	movslq	%edx, %rdx	# tmp223, D.14894
	salq	$3, %rdx	#, D.14894
	addq	%rax, %rdx	# D.14895, D.14895
	movq	-24(%rbp), %rax	# mx, tmp224
	movq	16(%rax), %rax	# mx_4(D)->imx, D.14895
	movq	(%rax), %rax	# *_94, D.14897
	movl	-32(%rbp), %ecx	# M, tmp225
	addl	$2, %ecx	#, D.14893
	imull	-4(%rbp), %ecx	# i, D.14893
	movslq	%ecx, %rcx	# D.14893, D.14894
	salq	$2, %rcx	#, D.14894
	addq	%rcx, %rax	# D.14894, D.14897
	movq	%rax, (%rdx)	# D.14897, *_93
	.loc 1 159 0 discriminator 2
	movq	-24(%rbp), %rax	# mx, tmp226
	movq	24(%rax), %rax	# mx_4(D)->dmx, D.14895
	movl	-4(%rbp), %edx	# i, tmp227
	movslq	%edx, %rdx	# tmp227, D.14894
	salq	$3, %rdx	#, D.14894
	addq	%rax, %rdx	# D.14895, D.14895
	movq	-24(%rbp), %rax	# mx, tmp228
	movq	24(%rax), %rax	# mx_4(D)->dmx, D.14895
	movq	(%rax), %rax	# *_105, D.14897
	movl	-32(%rbp), %ecx	# M, tmp229
	addl	$2, %ecx	#, D.14893
	imull	-4(%rbp), %ecx	# i, D.14893
	movslq	%ecx, %rcx	# D.14893, D.14894
	salq	$2, %rcx	#, D.14894
	addq	%rcx, %rax	# D.14894, D.14897
	movq	%rax, (%rdx)	# D.14897, *_104
	.loc 1 154 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L11:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp230
	cmpl	-28(%rbp), %eax	# N, tmp230
	jle	.L12	#,
.L8:
	.loc 1 163 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, xmx
	je	.L13	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mx, tmp231
	movq	(%rax), %rdx	# mx_4(D)->xmx, D.14895
	movq	-40(%rbp), %rax	# xmx, tmp232
	movq	%rdx, (%rax)	# D.14895, *xmx_113(D)
.L13:
	.loc 1 164 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, mmx
	je	.L14	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mx, tmp233
	movq	8(%rax), %rdx	# mx_4(D)->mmx, D.14895
	movq	-48(%rbp), %rax	# mmx, tmp234
	movq	%rdx, (%rax)	# D.14895, *mmx_115(D)
.L14:
	.loc 1 165 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, imx
	je	.L15	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mx, tmp235
	movq	16(%rax), %rdx	# mx_4(D)->imx, D.14895
	movq	-56(%rbp), %rax	# imx, tmp236
	movq	%rdx, (%rax)	# D.14895, *imx_117(D)
.L15:
	.loc 1 166 0 is_stmt 1
	cmpq	$0, 16(%rbp)	#, dmx
	je	.L6	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# mx, tmp237
	movq	24(%rax), %rdx	# mx_4(D)->dmx, D.14895
	movq	16(%rbp), %rax	# dmx, tmp238
	movq	%rdx, (%rax)	# D.14895, *dmx_119(D)
.L6:
	.loc 1 167 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ResizePlan7Matrix, .-ResizePlan7Matrix
	.globl	AllocPlan7Matrix
	.type	AllocPlan7Matrix, @function
AllocPlan7Matrix:
.LFB4:
	.loc 1 193 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# rows, rows
	movl	%esi, -24(%rbp)	# M, M
	movq	%rdx, -32(%rbp)	# xmx, xmx
	movq	%rcx, -40(%rbp)	# mmx, mmx
	movq	%r8, -48(%rbp)	# imx, imx
	movq	%r9, -56(%rbp)	# dmx, dmx
	.loc 1 195 0
	movl	-20(%rbp), %eax	# rows, tmp66
	leal	-1(%rax), %edi	#, D.14898
	movl	-24(%rbp), %eax	# M, tmp67
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp67,
	call	CreatePlan7Matrix	#
	movq	%rax, -8(%rbp)	# tmp68, mx
	.loc 1 196 0
	cmpq	$0, -32(%rbp)	#, xmx
	je	.L18	#,
	.loc 1 196 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mx, tmp69
	movq	(%rax), %rdx	# mx_4->xmx, D.14899
	movq	-32(%rbp), %rax	# xmx, tmp70
	movq	%rdx, (%rax)	# D.14899, *xmx_5(D)
.L18:
	.loc 1 197 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, mmx
	je	.L19	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mx, tmp71
	movq	8(%rax), %rdx	# mx_4->mmx, D.14899
	movq	-40(%rbp), %rax	# mmx, tmp72
	movq	%rdx, (%rax)	# D.14899, *mmx_7(D)
.L19:
	.loc 1 198 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, imx
	je	.L20	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mx, tmp73
	movq	16(%rax), %rdx	# mx_4->imx, D.14899
	movq	-48(%rbp), %rax	# imx, tmp74
	movq	%rdx, (%rax)	# D.14899, *imx_9(D)
.L20:
	.loc 1 199 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, dmx
	je	.L21	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# mx, tmp75
	movq	24(%rax), %rdx	# mx_4->dmx, D.14899
	movq	-56(%rbp), %rax	# dmx, tmp76
	movq	%rdx, (%rax)	# D.14899, *dmx_11(D)
.L21:
	.loc 1 200 0 is_stmt 1
	movq	-8(%rbp), %rax	# mx, D.14900
	.loc 1 201 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	AllocPlan7Matrix, .-AllocPlan7Matrix
	.globl	FreePlan7Matrix
	.type	FreePlan7Matrix, @function
FreePlan7Matrix:
.LFB5:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# mx, mx
	.loc 1 213 0
	movq	-8(%rbp), %rax	# mx, tmp67
	movq	32(%rax), %rax	# mx_1(D)->xmx_mem, D.14901
	movq	%rax, %rdi	# D.14901,
	call	free	#
	.loc 1 214 0
	movq	-8(%rbp), %rax	# mx, tmp68
	movq	40(%rax), %rax	# mx_1(D)->mmx_mem, D.14901
	movq	%rax, %rdi	# D.14901,
	call	free	#
	.loc 1 215 0
	movq	-8(%rbp), %rax	# mx, tmp69
	movq	48(%rax), %rax	# mx_1(D)->imx_mem, D.14901
	movq	%rax, %rdi	# D.14901,
	call	free	#
	.loc 1 216 0
	movq	-8(%rbp), %rax	# mx, tmp70
	movq	56(%rax), %rax	# mx_1(D)->dmx_mem, D.14901
	movq	%rax, %rdi	# D.14901,
	call	free	#
	.loc 1 217 0
	movq	-8(%rbp), %rax	# mx, tmp71
	movq	(%rax), %rax	# mx_1(D)->xmx, D.14902
	movq	%rax, %rdi	# D.14902,
	call	free	#
	.loc 1 218 0
	movq	-8(%rbp), %rax	# mx, tmp72
	movq	8(%rax), %rax	# mx_1(D)->mmx, D.14902
	movq	%rax, %rdi	# D.14902,
	call	free	#
	.loc 1 219 0
	movq	-8(%rbp), %rax	# mx, tmp73
	movq	16(%rax), %rax	# mx_1(D)->imx, D.14902
	movq	%rax, %rdi	# D.14902,
	call	free	#
	.loc 1 220 0
	movq	-8(%rbp), %rax	# mx, tmp74
	movq	24(%rax), %rax	# mx_1(D)->dmx, D.14902
	movq	%rax, %rdi	# D.14902,
	call	free	#
	.loc 1 221 0
	movq	-8(%rbp), %rax	# mx, tmp75
	movq	%rax, %rdi	# tmp75,
	call	free	#
	.loc 1 222 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FreePlan7Matrix, .-FreePlan7Matrix
	.globl	AllocShadowMatrix
	.type	AllocShadowMatrix, @function
AllocShadowMatrix:
.LFB6:
	.loc 1 240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# rows, rows
	movl	%esi, -40(%rbp)	# M, M
	movq	%rdx, -48(%rbp)	# xtb, xtb
	movq	%rcx, -56(%rbp)	# mtb, mtb
	movq	%r8, -64(%rbp)	# itb, itb
	movq	%r9, -72(%rbp)	# dtb, dtb
	.loc 1 244 0
	movl	$40, %edx	#,
	movl	$244, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp138, tb
	.loc 1 245 0
	movl	-36(%rbp), %eax	# rows, tmp139
	cltq
	salq	$3, %rax	#, D.14903
	movq	%rax, %rdx	# D.14903,
	movl	$245, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# tb, tmp140
	movq	%rax, (%rdx)	# D.14904, tb_2->xtb
	.loc 1 246 0
	movl	-36(%rbp), %eax	# rows, tmp141
	cltq
	salq	$3, %rax	#, D.14903
	movq	%rax, %rdx	# D.14903,
	movl	$246, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# tb, tmp142
	movq	%rax, 8(%rdx)	# D.14904, tb_2->mtb
	.loc 1 247 0
	movl	-36(%rbp), %eax	# rows, tmp143
	cltq
	salq	$3, %rax	#, D.14903
	movq	%rax, %rdx	# D.14903,
	movl	$247, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# tb, tmp144
	movq	%rax, 16(%rdx)	# D.14904, tb_2->itb
	.loc 1 248 0
	movl	-36(%rbp), %eax	# rows, tmp145
	cltq
	salq	$3, %rax	#, D.14903
	movq	%rax, %rdx	# D.14903,
	movl	$248, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# tb, tmp146
	movq	%rax, 24(%rdx)	# D.14904, tb_2->dtb
	.loc 1 249 0
	movl	-36(%rbp), %eax	# rows, tmp147
	cltq
	salq	$2, %rax	#, D.14903
	movq	%rax, %rdx	# D.14903,
	movl	$249, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-24(%rbp), %rdx	# tb, tmp148
	movq	%rax, 32(%rdx)	# D.14904, tb_2->esrc
	.loc 1 250 0
	movq	-24(%rbp), %rax	# tb, tmp149
	movq	(%rax), %rbx	# tb_2->xtb, D.14905
	movl	-36(%rbp), %edx	# rows, tmp150
	movl	%edx, %eax	# tmp150, tmp151
	sall	$2, %eax	#, tmp151
	addl	%edx, %eax	# tmp150, D.14906
	cltq
	movq	%rax, %rdx	# D.14903,
	movl	$250, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.14904, *_19
	.loc 1 251 0
	movq	-24(%rbp), %rax	# tb, tmp152
	movq	8(%rax), %rbx	# tb_2->mtb, D.14905
	movl	-40(%rbp), %eax	# M, tmp153
	addl	$2, %eax	#, D.14906
	imull	-36(%rbp), %eax	# rows, D.14906
	cltq
	movq	%rax, %rdx	# D.14903,
	movl	$251, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.14904, *_23
	.loc 1 252 0
	movq	-24(%rbp), %rax	# tb, tmp154
	movq	16(%rax), %rbx	# tb_2->itb, D.14905
	movl	-40(%rbp), %eax	# M, tmp155
	addl	$2, %eax	#, D.14906
	imull	-36(%rbp), %eax	# rows, D.14906
	cltq
	movq	%rax, %rdx	# D.14903,
	movl	$252, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.14904, *_29
	.loc 1 253 0
	movq	-24(%rbp), %rax	# tb, tmp156
	movq	24(%rax), %rbx	# tb_2->dtb, D.14905
	movl	-40(%rbp), %eax	# M, tmp157
	addl	$2, %eax	#, D.14906
	imull	-36(%rbp), %eax	# rows, D.14906
	cltq
	movq	%rax, %rdx	# D.14903,
	movl	$253, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.14904, *_34
	.loc 1 254 0
	movl	$1, -28(%rbp)	#, i
	jmp	.L25	#
.L26:
	.loc 1 256 0 discriminator 2
	movq	-24(%rbp), %rax	# tb, tmp158
	movq	(%rax), %rax	# tb_2->xtb, D.14905
	movl	-28(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.14903
	salq	$3, %rdx	#, D.14903
	leaq	(%rax,%rdx), %rcx	#, D.14905
	movq	-24(%rbp), %rax	# tb, tmp160
	movq	(%rax), %rax	# tb_2->xtb, D.14905
	movq	(%rax), %rsi	# *_44, D.14907
	movl	-28(%rbp), %edx	# i, tmp161
	movl	%edx, %eax	# tmp161, tmp162
	sall	$2, %eax	#, tmp162
	addl	%edx, %eax	# tmp161, D.14906
	cltq
	addq	%rsi, %rax	# D.14907, D.14907
	movq	%rax, (%rcx)	# D.14907, *_43
	.loc 1 257 0 discriminator 2
	movq	-24(%rbp), %rax	# tb, tmp163
	movq	8(%rax), %rax	# tb_2->mtb, D.14905
	movl	-28(%rbp), %edx	# i, tmp164
	movslq	%edx, %rdx	# tmp164, D.14903
	salq	$3, %rdx	#, D.14903
	addq	%rax, %rdx	# D.14905, D.14905
	movq	-24(%rbp), %rax	# tb, tmp165
	movq	8(%rax), %rax	# tb_2->mtb, D.14905
	movq	(%rax), %rcx	# *_53, D.14907
	movl	-40(%rbp), %eax	# M, tmp166
	addl	$2, %eax	#, D.14906
	imull	-28(%rbp), %eax	# i, D.14906
	cltq
	addq	%rcx, %rax	# D.14907, D.14907
	movq	%rax, (%rdx)	# D.14907, *_52
	.loc 1 258 0 discriminator 2
	movq	-24(%rbp), %rax	# tb, tmp167
	movq	16(%rax), %rax	# tb_2->itb, D.14905
	movl	-28(%rbp), %edx	# i, tmp168
	movslq	%edx, %rdx	# tmp168, D.14903
	salq	$3, %rdx	#, D.14903
	addq	%rax, %rdx	# D.14905, D.14905
	movq	-24(%rbp), %rax	# tb, tmp169
	movq	16(%rax), %rax	# tb_2->itb, D.14905
	movq	(%rax), %rcx	# *_63, D.14907
	movl	-40(%rbp), %eax	# M, tmp170
	addl	$2, %eax	#, D.14906
	imull	-28(%rbp), %eax	# i, D.14906
	cltq
	addq	%rcx, %rax	# D.14907, D.14907
	movq	%rax, (%rdx)	# D.14907, *_62
	.loc 1 259 0 discriminator 2
	movq	-24(%rbp), %rax	# tb, tmp171
	movq	24(%rax), %rax	# tb_2->dtb, D.14905
	movl	-28(%rbp), %edx	# i, tmp172
	movslq	%edx, %rdx	# tmp172, D.14903
	salq	$3, %rdx	#, D.14903
	addq	%rax, %rdx	# D.14905, D.14905
	movq	-24(%rbp), %rax	# tb, tmp173
	movq	24(%rax), %rax	# tb_2->dtb, D.14905
	movq	(%rax), %rcx	# *_73, D.14907
	movl	-40(%rbp), %eax	# M, tmp174
	addl	$2, %eax	#, D.14906
	imull	-28(%rbp), %eax	# i, D.14906
	cltq
	addq	%rcx, %rax	# D.14907, D.14907
	movq	%rax, (%rdx)	# D.14907, *_72
	.loc 1 254 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L25:
	.loc 1 254 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp175
	cmpl	-36(%rbp), %eax	# rows, tmp175
	jl	.L26	#,
	.loc 1 262 0 is_stmt 1
	cmpq	$0, -48(%rbp)	#, xtb
	je	.L27	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tb, tmp176
	movq	(%rax), %rdx	# tb_2->xtb, D.14905
	movq	-48(%rbp), %rax	# xtb, tmp177
	movq	%rdx, (%rax)	# D.14905, *xtb_80(D)
.L27:
	.loc 1 263 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, mtb
	je	.L28	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tb, tmp178
	movq	8(%rax), %rdx	# tb_2->mtb, D.14905
	movq	-56(%rbp), %rax	# mtb, tmp179
	movq	%rdx, (%rax)	# D.14905, *mtb_82(D)
.L28:
	.loc 1 264 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, itb
	je	.L29	#,
	.loc 1 264 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tb, tmp180
	movq	16(%rax), %rdx	# tb_2->itb, D.14905
	movq	-64(%rbp), %rax	# itb, tmp181
	movq	%rdx, (%rax)	# D.14905, *itb_84(D)
.L29:
	.loc 1 265 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, dtb
	je	.L30	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tb, tmp182
	movq	24(%rax), %rdx	# tb_2->dtb, D.14905
	movq	-72(%rbp), %rax	# dtb, tmp183
	movq	%rdx, (%rax)	# D.14905, *dtb_86(D)
.L30:
	.loc 1 266 0 is_stmt 1
	movq	-24(%rbp), %rax	# tb, D.14909
	.loc 1 267 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AllocShadowMatrix, .-AllocShadowMatrix
	.globl	FreeShadowMatrix
	.type	FreeShadowMatrix, @function
FreeShadowMatrix:
.LFB7:
	.loc 1 277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# tb, tb
	.loc 1 278 0
	movq	-8(%rbp), %rax	# tb, tmp72
	movq	(%rax), %rax	# tb_1(D)->xtb, D.14910
	movq	(%rax), %rax	# *_2, D.14911
	movq	%rax, %rdi	# D.14911,
	call	free	#
	.loc 1 279 0
	movq	-8(%rbp), %rax	# tb, tmp73
	movq	8(%rax), %rax	# tb_1(D)->mtb, D.14910
	movq	(%rax), %rax	# *_4, D.14911
	movq	%rax, %rdi	# D.14911,
	call	free	#
	.loc 1 280 0
	movq	-8(%rbp), %rax	# tb, tmp74
	movq	16(%rax), %rax	# tb_1(D)->itb, D.14910
	movq	(%rax), %rax	# *_6, D.14911
	movq	%rax, %rdi	# D.14911,
	call	free	#
	.loc 1 281 0
	movq	-8(%rbp), %rax	# tb, tmp75
	movq	24(%rax), %rax	# tb_1(D)->dtb, D.14910
	movq	(%rax), %rax	# *_8, D.14911
	movq	%rax, %rdi	# D.14911,
	call	free	#
	.loc 1 282 0
	movq	-8(%rbp), %rax	# tb, tmp76
	movq	32(%rax), %rax	# tb_1(D)->esrc, D.14912
	movq	%rax, %rdi	# D.14912,
	call	free	#
	.loc 1 283 0
	movq	-8(%rbp), %rax	# tb, tmp77
	movq	(%rax), %rax	# tb_1(D)->xtb, D.14910
	movq	%rax, %rdi	# D.14910,
	call	free	#
	.loc 1 284 0
	movq	-8(%rbp), %rax	# tb, tmp78
	movq	8(%rax), %rax	# tb_1(D)->mtb, D.14910
	movq	%rax, %rdi	# D.14910,
	call	free	#
	.loc 1 285 0
	movq	-8(%rbp), %rax	# tb, tmp79
	movq	16(%rax), %rax	# tb_1(D)->itb, D.14910
	movq	%rax, %rdi	# D.14910,
	call	free	#
	.loc 1 286 0
	movq	-8(%rbp), %rax	# tb, tmp80
	movq	24(%rax), %rax	# tb_1(D)->dtb, D.14910
	movq	%rax, %rdi	# D.14910,
	call	free	#
	.loc 1 287 0
	movq	-8(%rbp), %rax	# tb, tmp81
	movq	%rax, %rdi	# tmp81,
	call	free	#
	.loc 1 288 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	FreeShadowMatrix, .-FreeShadowMatrix
	.globl	P7ViterbiSize
	.type	P7ViterbiSize, @function
P7ViterbiSize:
.LFB8:
	.loc 1 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# L, L
	movl	%esi, -24(%rbp)	# M, M
	.loc 1 318 0
	movl	.LC2(%rip), %eax	#, tmp86
	movl	%eax, -4(%rbp)	# tmp86, Mbytes
	.loc 1 319 0
	movss	-4(%rbp), %xmm1	# Mbytes, D.14913
	cvtps2pd	%xmm1, %xmm1	# D.14913, D.14913
	movl	-20(%rbp), %eax	# L, tmp87
	addl	$1, %eax	#, D.14914
	cvtsi2ss	%eax, %xmm0	# D.14914, D.14915
	unpcklps	%xmm0, %xmm0	# D.14915, D.14915
	cvtps2pd	%xmm0, %xmm0	# D.14915, D.14913
	movsd	.LC3(%rip), %xmm2	#, tmp88
	mulsd	%xmm0, %xmm2	# D.14913, D.14913
	movl	-24(%rbp), %eax	# M, tmp89
	addl	$2, %eax	#, D.14914
	cvtsi2ss	%eax, %xmm0	# D.14914, D.14915
	unpcklps	%xmm0, %xmm0	# D.14915, D.14915
	cvtps2pd	%xmm0, %xmm0	# D.14915, D.14913
	mulsd	%xmm2, %xmm0	# D.14913, D.14913
	movsd	.LC4(%rip), %xmm2	#, tmp90
	mulsd	%xmm2, %xmm0	# tmp90, D.14913
	addsd	%xmm1, %xmm0	# D.14913, D.14913
	unpcklpd	%xmm0, %xmm0	# D.14913
	cvtpd2ps	%xmm0, %xmm3	# D.14913, tmp102
	movss	%xmm3, -4(%rbp)	# tmp102, Mbytes
	.loc 1 320 0
	movss	-4(%rbp), %xmm1	# Mbytes, D.14913
	cvtps2pd	%xmm1, %xmm1	# D.14913, D.14913
	movl	-20(%rbp), %eax	# L, tmp91
	addl	$1, %eax	#, D.14914
	cvtsi2ss	%eax, %xmm0	# D.14914, D.14915
	unpcklps	%xmm0, %xmm0	# D.14915, D.14915
	cvtps2pd	%xmm0, %xmm0	# D.14915, D.14913
	movsd	.LC4(%rip), %xmm2	#, tmp92
	mulsd	%xmm2, %xmm0	# tmp92, D.14913
	movsd	.LC5(%rip), %xmm2	#, tmp93
	mulsd	%xmm2, %xmm0	# tmp93, D.14913
	addsd	%xmm1, %xmm0	# D.14913, D.14913
	unpcklpd	%xmm0, %xmm0	# D.14913
	cvtpd2ps	%xmm0, %xmm4	# D.14913, tmp103
	movss	%xmm4, -4(%rbp)	# tmp103, Mbytes
	.loc 1 321 0
	movss	-4(%rbp), %xmm1	# Mbytes, D.14913
	cvtps2pd	%xmm1, %xmm1	# D.14913, D.14913
	movl	-20(%rbp), %eax	# L, tmp94
	addl	$1, %eax	#, D.14914
	cvtsi2ss	%eax, %xmm0	# D.14914, D.14915
	unpcklps	%xmm0, %xmm0	# D.14915, D.14915
	cvtps2pd	%xmm0, %xmm0	# D.14915, D.14913
	movsd	.LC6(%rip), %xmm2	#, tmp95
	mulsd	%xmm2, %xmm0	# tmp95, D.14913
	movsd	.LC4(%rip), %xmm2	#, tmp96
	mulsd	%xmm2, %xmm0	# tmp96, D.14913
	addsd	%xmm1, %xmm0	# D.14913, D.14913
	unpcklpd	%xmm0, %xmm0	# D.14913
	cvtpd2ps	%xmm0, %xmm5	# D.14913, tmp104
	movss	%xmm5, -4(%rbp)	# tmp104, Mbytes
	.loc 1 322 0
	movss	-4(%rbp), %xmm0	# Mbytes, tmp98
	movss	.LC7(%rip), %xmm1	#, tmp99
	divss	%xmm1, %xmm0	# tmp99, tmp97
	movss	%xmm0, -4(%rbp)	# tmp97, Mbytes
	.loc 1 323 0
	movss	-4(%rbp), %xmm0	# Mbytes, tmp100
	cvttss2si	%xmm0, %eax	# tmp100, D.14914
	.loc 1 324 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7ViterbiSize, .-P7ViterbiSize
	.globl	P7SmallViterbiSize
	.type	P7SmallViterbiSize, @function
P7SmallViterbiSize:
.LFB9:
	.loc 1 348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# L, L
	movl	%esi, -8(%rbp)	# M, M
	.loc 1 350 0
	movl	-8(%rbp), %eax	# M, tmp70
	addl	$2, %eax	#, D.14916
	.loc 1 352 0
	movslq	%eax, %rdx	# D.14916, D.14917
	movq	%rdx, %rax	# D.14917, tmp71
	addq	%rax, %rax	# tmp71
	addq	%rdx, %rax	# D.14917, tmp71
	addq	%rax, %rax	# tmp72
	movq	%rax, %rdx	# tmp71, D.14917
	.loc 1 353 0
	movl	-4(%rbp), %eax	# L, tmp73
	addl	$1, %eax	#, D.14916
	.loc 1 352 0
	cltq
	addq	%rdx, %rax	# D.14917, D.14917
	addq	$46, %rax	#, D.14917
	salq	$3, %rax	#, D.14917
	.loc 1 354 0
	movabsq	$4835703278458516699, %rdx	#, tmp75
	mulq	%rdx	# tmp75
	movq	%rdx, %rax	# tmp74, D.14917
	shrq	$18, %rax	#, D.14917
	.loc 1 355 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	P7SmallViterbiSize, .-P7SmallViterbiSize
	.globl	P7WeeViterbiSize
	.type	P7WeeViterbiSize, @function
P7WeeViterbiSize:
.LFB10:
	.loc 1 371 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# L, L
	movl	%esi, -8(%rbp)	# M, M
	.loc 1 373 0
	movl	-8(%rbp), %eax	# M, tmp77
	addl	$2, %eax	#, D.14918
	.loc 1 375 0
	movslq	%eax, %rdx	# D.14918, D.14919
	movq	%rdx, %rax	# D.14919, tmp78
	addq	%rax, %rax	# tmp78
	addq	%rdx, %rax	# D.14919, tmp78
	addq	%rax, %rax	# tmp79
	movq	%rax, %rdx	# tmp78, D.14919
	.loc 1 376 0
	movl	-4(%rbp), %eax	# L, tmp80
	addl	$2, %eax	#, D.14918
	.loc 1 375 0
	cltq
	addq	%rdx, %rax	# D.14919, D.14919
	.loc 1 376 0
	addq	$46, %rax	#, D.14919
	leaq	(%rax,%rax), %rdx	#, D.14919
	.loc 1 377 0
	movl	-4(%rbp), %eax	# L, tmp81
	addl	$2, %eax	#, D.14918
	.loc 1 376 0
	cltq
	addq	%rdx, %rax	# D.14919, D.14919
	leaq	0(,%rax,4), %rdx	#, D.14919
	.loc 1 378 0
	movl	-4(%rbp), %eax	# L, tmp82
	addl	$2, %eax	#, D.14918
	cltq
	.loc 1 377 0
	addq	%rdx, %rax	# D.14919, D.14919
	.loc 1 379 0
	movabsq	$4835703278458516699, %rdx	#, tmp84
	mulq	%rdx	# tmp84
	movq	%rdx, %rax	# tmp83, D.14919
	shrq	$18, %rax	#, D.14919
	.loc 1 380 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	P7WeeViterbiSize, .-P7WeeViterbiSize
	.globl	P7Forward
	.type	P7Forward, @function
P7Forward:
.LFB11:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$96, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# dsq, dsq
	movl	%esi, -92(%rbp)	# L, L
	movq	%rdx, -104(%rbp)	# hmm, hmm
	movq	%rcx, -112(%rbp)	# ret_mx, ret_mx
	.loc 1 409 0
	movq	-104(%rbp), %rax	# hmm, tmp612
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	movl	-92(%rbp), %edx	# L, tmp613
	leal	1(%rdx), %edi	#, D.14920
	leaq	-32(%rbp), %r8	#, tmp614
	leaq	-40(%rbp), %rsi	#, tmp615
	leaq	-48(%rbp), %rcx	#, tmp616
	leaq	-56(%rbp), %rdx	#, tmp617
	movq	%r8, %r9	# tmp614,
	movq	%rsi, %r8	# tmp615,
	movl	%eax, %esi	# D.14920,
	call	AllocPlan7Matrix	#
	movq	%rax, -24(%rbp)	# tmp618, mx
	.loc 1 416 0
	movq	-56(%rbp), %rax	# xmx, xmx.0
	movq	(%rax), %rax	# *xmx.0_10, D.14921
	addq	$16, %rax	#, D.14921
	movl	$0, (%rax)	#, *_12
	.loc 1 417 0
	movq	-56(%rbp), %rax	# xmx, xmx.1
	movq	(%rax), %rax	# *xmx.1_13, D.14921
	movq	-104(%rbp), %rdx	# hmm, tmp619
	movl	336(%rdx), %edx	# hmm_5(D)->xsc, D.14920
	movl	%edx, (%rax)	# D.14920, *_14
	.loc 1 418 0
	movq	-56(%rbp), %rax	# xmx, xmx.2
	movq	(%rax), %rax	# *xmx.2_16, D.14921
	leaq	4(%rax), %rcx	#, D.14921
	movq	-56(%rbp), %rax	# xmx, xmx.3
	movq	(%rax), %rax	# *xmx.3_19, D.14921
	addq	$8, %rax	#, D.14921
	movq	-56(%rbp), %rdx	# xmx, xmx.4
	movq	(%rdx), %rdx	# *xmx.4_22, D.14921
	addq	$12, %rdx	#, D.14921
	movl	$-987654321, (%rdx)	#, *_24
	movl	(%rdx), %edx	# *_24, D.14920
	movl	%edx, (%rax)	# D.14920, *_21
	movl	(%rax), %eax	# *_21, D.14920
	movl	%eax, (%rcx)	# D.14920, *_18
	.loc 1 419 0
	movl	$0, -64(%rbp)	#, k
	jmp	.L40	#
.L41:
	.loc 1 420 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.5
	movq	(%rax), %rax	# *mmx.5_29, D.14921
	movl	-64(%rbp), %edx	# k, tmp620
	movslq	%edx, %rdx	# tmp620, D.14922
	salq	$2, %rdx	#, D.14922
	leaq	(%rax,%rdx), %rcx	#, D.14921
	movq	-40(%rbp), %rax	# imx, imx.6
	movq	(%rax), %rax	# *imx.6_34, D.14921
	movl	-64(%rbp), %edx	# k, tmp621
	movslq	%edx, %rdx	# tmp621, D.14922
	salq	$2, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14921
	movq	-32(%rbp), %rdx	# dmx, dmx.7
	movq	(%rdx), %rdx	# *dmx.7_39, D.14921
	movl	-64(%rbp), %esi	# k, tmp622
	movslq	%esi, %rsi	# tmp622, D.14922
	salq	$2, %rsi	#, D.14922
	addq	%rsi, %rdx	# D.14922, D.14921
	movl	$-987654321, (%rdx)	#, *_43
	movl	(%rdx), %edx	# *_43, D.14920
	movl	%edx, (%rax)	# D.14920, *_38
	movl	(%rax), %eax	# *_38, D.14920
	movl	%eax, (%rcx)	# D.14920, *_33
	.loc 1 419 0 discriminator 2
	addl	$1, -64(%rbp)	#, k
.L40:
	.loc 1 419 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hmm, tmp623
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cmpl	-64(%rbp), %eax	# k, D.14920
	jge	.L41	#,
	.loc 1 427 0 is_stmt 1
	movl	$1, -68(%rbp)	#, i
	jmp	.L42	#
.L47:
	.loc 1 429 0
	movq	-48(%rbp), %rax	# mmx, mmx.8
	movl	-68(%rbp), %edx	# i, tmp624
	movslq	%edx, %rdx	# tmp624, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rcx	# *_51, D.14921
	movq	-40(%rbp), %rax	# imx, imx.9
	movl	-68(%rbp), %edx	# i, tmp625
	movslq	%edx, %rdx	# tmp625, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_56, D.14921
	movq	-32(%rbp), %rdx	# dmx, dmx.10
	movl	-68(%rbp), %esi	# i, tmp626
	movslq	%esi, %rsi	# tmp626, D.14922
	salq	$3, %rsi	#, D.14922
	addq	%rsi, %rdx	# D.14922, D.14923
	movq	(%rdx), %rdx	# *_61, D.14921
	movl	$-987654321, (%rdx)	#, *_62
	movl	(%rdx), %edx	# *_62, D.14920
	movl	%edx, (%rax)	# D.14920, *_57
	movl	(%rax), %eax	# *_57, D.14920
	movl	%eax, (%rcx)	# D.14920, *_52
	.loc 1 430 0
	movl	$1, -64(%rbp)	#, k
	jmp	.L43	#
.L44:
	.loc 1 432 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.11
	movl	-68(%rbp), %edx	# i, tmp627
	movslq	%edx, %rdx	# tmp627, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_70, D.14921
	movl	-64(%rbp), %edx	# k, tmp628
	movslq	%edx, %rdx	# tmp628, D.14922
	salq	$2, %rdx	#, D.14922
	leaq	(%rax,%rdx), %r12	#, D.14921
	.loc 1 435 0 discriminator 2
	movq	-32(%rbp), %rax	# dmx, dmx.12
	movl	-68(%rbp), %edx	# i, tmp629
	movslq	%edx, %rdx	# tmp629, D.14922
	salq	$3, %rdx	#, D.14922
	subq	$8, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_79, D.14921
	movl	-64(%rbp), %edx	# k, tmp630
	movslq	%edx, %rdx	# tmp630, D.14922
	salq	$2, %rdx	#, D.14922
	subq	$4, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14921
	movl	(%rax), %edx	# *_84, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp631
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$40, %rax	#, D.14923
	movq	(%rax), %rax	# *_87, D.14921
	movl	-64(%rbp), %ecx	# k, tmp632
	movslq	%ecx, %rcx	# tmp632, D.14922
	salq	$2, %rcx	#, D.14922
	subq	$4, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14921
	movl	(%rax), %eax	# *_92, D.14920
	.loc 1 432 0 discriminator 2
	addl	%eax, %edx	# D.14920, D.14920
	.loc 1 434 0 discriminator 2
	movq	-56(%rbp), %rax	# xmx, xmx.13
	movl	-68(%rbp), %ecx	# i, tmp633
	movslq	%ecx, %rcx	# tmp633, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_99, D.14921
	movl	(%rax), %ecx	# *_100, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp634
	movq	368(%rax), %rax	# hmm_5(D)->bsc, D.14921
	movl	-64(%rbp), %esi	# k, tmp635
	movslq	%esi, %rsi	# tmp635, D.14922
	salq	$2, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_105, D.14920
	.loc 1 432 0 discriminator 2
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, %ebx	#, D.14920
	.loc 1 433 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.14
	movl	-68(%rbp), %edx	# i, tmp636
	movslq	%edx, %rdx	# tmp636, D.14922
	salq	$3, %rdx	#, D.14922
	subq	$8, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_113, D.14921
	movl	-64(%rbp), %edx	# k, tmp637
	movslq	%edx, %rdx	# tmp637, D.14922
	salq	$2, %rdx	#, D.14922
	subq	$4, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14921
	movl	(%rax), %edx	# *_118, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp638
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$24, %rax	#, D.14923
	movq	(%rax), %rax	# *_121, D.14921
	movl	-64(%rbp), %ecx	# k, tmp639
	movslq	%ecx, %rcx	# tmp639, D.14922
	salq	$2, %rcx	#, D.14922
	subq	$4, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14921
	movl	(%rax), %eax	# *_126, D.14920
	.loc 1 432 0 discriminator 2
	addl	%eax, %edx	# D.14920, D.14920
	movq	-48(%rbp), %rax	# mmx, mmx.15
	movl	-68(%rbp), %ecx	# i, tmp640
	movslq	%ecx, %rcx	# tmp640, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_133, D.14921
	movl	-64(%rbp), %ecx	# k, tmp641
	movslq	%ecx, %rcx	# tmp641, D.14922
	salq	$2, %rcx	#, D.14922
	subq	$4, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14921
	movl	(%rax), %ecx	# *_138, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp642
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	movq	(%rax), %rax	# *_140, D.14921
	movl	-64(%rbp), %esi	# k, tmp643
	movslq	%esi, %rsi	# tmp643, D.14922
	salq	$2, %rsi	#, D.14922
	subq	$4, %rsi	#, D.14924
	addq	%rsi, %rax	# D.14924, D.14921
	movl	(%rax), %eax	# *_145, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%ebx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%r12)	# D.14920, *_74
	.loc 1 436 0 discriminator 2
	movq	-48(%rbp), %rax	# mmx, mmx.16
	movl	-68(%rbp), %edx	# i, tmp644
	movslq	%edx, %rdx	# tmp644, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_153, D.14921
	movl	-64(%rbp), %edx	# k, tmp645
	movslq	%edx, %rdx	# tmp645, D.14922
	salq	$2, %rdx	#, D.14922
	addq	%rax, %rdx	# D.14921, D.14921
	movq	-48(%rbp), %rax	# mmx, mmx.17
	movl	-68(%rbp), %ecx	# i, tmp646
	movslq	%ecx, %rcx	# tmp646, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_161, D.14921
	movl	-64(%rbp), %ecx	# k, tmp647
	movslq	%ecx, %rcx	# tmp647, D.14922
	salq	$2, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movl	(%rax), %ecx	# *_165, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp648
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.14923
	movl	-68(%rbp), %esi	# i, tmp649
	movslq	%esi, %rdi	# tmp649, D.14924
	movq	-88(%rbp), %rsi	# dsq, tmp650
	addq	%rdi, %rsi	# D.14924, D.14925
	movzbl	(%rsi), %esi	# *_170, D.14926
	movsbq	%sil, %rsi	# D.14926, D.14922
	salq	$3, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_174, D.14921
	movl	-64(%rbp), %esi	# k, tmp651
	movslq	%esi, %rsi	# tmp651, D.14922
	salq	$2, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_178, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%eax, (%rdx)	# D.14920, *_157
	.loc 1 438 0 discriminator 2
	movq	-32(%rbp), %rax	# dmx, dmx.18
	movl	-68(%rbp), %edx	# i, tmp652
	movslq	%edx, %rdx	# tmp652, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_184, D.14921
	movl	-64(%rbp), %edx	# k, tmp653
	movslq	%edx, %rdx	# tmp653, D.14922
	salq	$2, %rdx	#, D.14922
	leaq	(%rax,%rdx), %rbx	#, D.14921
	.loc 1 439 0 discriminator 2
	movq	-32(%rbp), %rax	# dmx, dmx.19
	movl	-68(%rbp), %edx	# i, tmp654
	movslq	%edx, %rdx	# tmp654, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_192, D.14921
	movl	-64(%rbp), %edx	# k, tmp655
	movslq	%edx, %rdx	# tmp655, D.14922
	salq	$2, %rdx	#, D.14922
	subq	$4, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14921
	movl	(%rax), %edx	# *_197, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp656
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$48, %rax	#, D.14923
	movq	(%rax), %rax	# *_200, D.14921
	movl	-64(%rbp), %ecx	# k, tmp657
	movslq	%ecx, %rcx	# tmp657, D.14922
	salq	$2, %rcx	#, D.14922
	subq	$4, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14921
	movl	(%rax), %eax	# *_205, D.14920
	.loc 1 438 0 discriminator 2
	addl	%eax, %edx	# D.14920, D.14920
	movq	-48(%rbp), %rax	# mmx, mmx.20
	movl	-68(%rbp), %ecx	# i, tmp658
	movslq	%ecx, %rcx	# tmp658, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_211, D.14921
	movl	-64(%rbp), %ecx	# k, tmp659
	movslq	%ecx, %rcx	# tmp659, D.14922
	salq	$2, %rcx	#, D.14922
	subq	$4, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14921
	movl	(%rax), %ecx	# *_216, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp660
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$16, %rax	#, D.14923
	movq	(%rax), %rax	# *_219, D.14921
	movl	-64(%rbp), %esi	# k, tmp661
	movslq	%esi, %rsi	# tmp661, D.14922
	salq	$2, %rsi	#, D.14922
	subq	$4, %rsi	#, D.14924
	addq	%rsi, %rax	# D.14924, D.14921
	movl	(%rax), %eax	# *_224, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_188
	.loc 1 440 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.21
	movl	-68(%rbp), %edx	# i, tmp662
	movslq	%edx, %rdx	# tmp662, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_231, D.14921
	movl	-64(%rbp), %edx	# k, tmp663
	movslq	%edx, %rdx	# tmp663, D.14922
	salq	$2, %rdx	#, D.14922
	leaq	(%rax,%rdx), %rbx	#, D.14921
	.loc 1 441 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.22
	movl	-68(%rbp), %edx	# i, tmp664
	movslq	%edx, %rdx	# tmp664, D.14922
	salq	$3, %rdx	#, D.14922
	subq	$8, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_240, D.14921
	movl	-64(%rbp), %edx	# k, tmp665
	movslq	%edx, %rdx	# tmp665, D.14922
	salq	$2, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14921
	movl	(%rax), %edx	# *_244, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp666
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$32, %rax	#, D.14923
	movq	(%rax), %rax	# *_247, D.14921
	movl	-64(%rbp), %ecx	# k, tmp667
	movslq	%ecx, %rcx	# tmp667, D.14922
	salq	$2, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_251, D.14920
	.loc 1 440 0 discriminator 2
	addl	%eax, %edx	# D.14920, D.14920
	movq	-48(%rbp), %rax	# mmx, mmx.23
	movl	-68(%rbp), %ecx	# i, tmp668
	movslq	%ecx, %rcx	# tmp668, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_258, D.14921
	movl	-64(%rbp), %ecx	# k, tmp669
	movslq	%ecx, %rcx	# tmp669, D.14922
	salq	$2, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movl	(%rax), %ecx	# *_262, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp670
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$8, %rax	#, D.14923
	movq	(%rax), %rax	# *_265, D.14921
	movl	-64(%rbp), %esi	# k, tmp671
	movslq	%esi, %rsi	# tmp671, D.14922
	salq	$2, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_269, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_235
	.loc 1 442 0 discriminator 2
	movq	-40(%rbp), %rax	# imx, imx.24
	movl	-68(%rbp), %edx	# i, tmp672
	movslq	%edx, %rdx	# tmp672, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_276, D.14921
	movl	-64(%rbp), %edx	# k, tmp673
	movslq	%edx, %rdx	# tmp673, D.14922
	salq	$2, %rdx	#, D.14922
	addq	%rax, %rdx	# D.14921, D.14921
	movq	-40(%rbp), %rax	# imx, imx.25
	movl	-68(%rbp), %ecx	# i, tmp674
	movslq	%ecx, %rcx	# tmp674, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_284, D.14921
	movl	-64(%rbp), %ecx	# k, tmp675
	movslq	%ecx, %rcx	# tmp675, D.14922
	salq	$2, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movl	(%rax), %ecx	# *_288, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp676
	movq	328(%rax), %rax	# hmm_5(D)->isc, D.14923
	movl	-68(%rbp), %esi	# i, tmp677
	movslq	%esi, %rdi	# tmp677, D.14924
	movq	-88(%rbp), %rsi	# dsq, tmp678
	addq	%rdi, %rsi	# D.14924, D.14925
	movzbl	(%rsi), %esi	# *_292, D.14926
	movsbq	%sil, %rsi	# D.14926, D.14922
	salq	$3, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_296, D.14921
	movl	-64(%rbp), %esi	# k, tmp679
	movslq	%esi, %rsi	# tmp679, D.14922
	salq	$2, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_300, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%eax, (%rdx)	# D.14920, *_280
	.loc 1 430 0 discriminator 2
	addl	$1, -64(%rbp)	#, k
.L43:
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hmm, tmp680
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cmpl	-64(%rbp), %eax	# k, D.14920
	jg	.L44	#,
	.loc 1 444 0 is_stmt 1
	movq	-48(%rbp), %rax	# mmx, mmx.26
	movl	-68(%rbp), %edx	# i, tmp681
	movslq	%edx, %rdx	# tmp681, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rdx	# *_307, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp682
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	leaq	(%rdx,%rax), %r12	#, D.14921
	.loc 1 447 0
	movq	-32(%rbp), %rax	# dmx, dmx.27
	movl	-68(%rbp), %edx	# i, tmp683
	movslq	%edx, %rdx	# tmp683, D.14922
	salq	$3, %rdx	#, D.14922
	subq	$8, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14923
	movq	(%rax), %rdx	# *_317, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp684
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rdx, %rax	# D.14921, D.14921
	movl	(%rax), %edx	# *_323, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp685
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$40, %rax	#, D.14923
	movq	(%rax), %rcx	# *_326, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp686
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rcx, %rax	# D.14921, D.14921
	movl	(%rax), %eax	# *_332, D.14920
	.loc 1 444 0
	addl	%eax, %edx	# D.14920, D.14920
	.loc 1 446 0
	movq	-56(%rbp), %rax	# xmx, xmx.28
	movl	-68(%rbp), %ecx	# i, tmp687
	movslq	%ecx, %rcx	# tmp687, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_339, D.14921
	movl	(%rax), %ecx	# *_340, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp688
	movq	368(%rax), %rsi	# hmm_5(D)->bsc, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp689
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rsi, %rax	# D.14921, D.14921
	movl	(%rax), %eax	# *_347, D.14920
	.loc 1 444 0
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, %ebx	#, D.14920
	.loc 1 445 0
	movq	-40(%rbp), %rax	# imx, imx.29
	movl	-68(%rbp), %edx	# i, tmp690
	movslq	%edx, %rdx	# tmp690, D.14922
	salq	$3, %rdx	#, D.14922
	subq	$8, %rdx	#, D.14924
	addq	%rdx, %rax	# D.14924, D.14923
	movq	(%rax), %rdx	# *_355, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp691
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rdx, %rax	# D.14921, D.14921
	movl	(%rax), %edx	# *_361, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp692
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	addq	$24, %rax	#, D.14923
	movq	(%rax), %rcx	# *_364, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp693
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rcx, %rax	# D.14921, D.14921
	movl	(%rax), %eax	# *_370, D.14920
	.loc 1 444 0
	addl	%eax, %edx	# D.14920, D.14920
	movq	-48(%rbp), %rax	# mmx, mmx.30
	movl	-68(%rbp), %ecx	# i, tmp694
	movslq	%ecx, %rcx	# tmp694, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rcx	# *_377, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp695
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rcx, %rax	# D.14921, D.14921
	movl	(%rax), %ecx	# *_383, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp696
	movq	312(%rax), %rax	# hmm_5(D)->tsc, D.14923
	movq	(%rax), %rsi	# *_385, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp697
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	subq	$4, %rax	#, D.14924
	addq	%rsi, %rax	# D.14921, D.14921
	movl	(%rax), %eax	# *_391, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%ebx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%r12)	# D.14920, *_312
	.loc 1 448 0
	movq	-48(%rbp), %rax	# mmx, mmx.31
	movl	-68(%rbp), %edx	# i, tmp698
	movslq	%edx, %rdx	# tmp698, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rdx	# *_399, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp699
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	addq	%rax, %rdx	# D.14922, D.14921
	movq	-48(%rbp), %rax	# mmx, mmx.32
	movl	-68(%rbp), %ecx	# i, tmp700
	movslq	%ecx, %rcx	# tmp700, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rcx	# *_408, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp701
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	addq	%rcx, %rax	# D.14921, D.14921
	movl	(%rax), %ecx	# *_413, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp702
	movq	320(%rax), %rax	# hmm_5(D)->msc, D.14923
	movl	-68(%rbp), %esi	# i, tmp703
	movslq	%esi, %rdi	# tmp703, D.14924
	movq	-88(%rbp), %rsi	# dsq, tmp704
	addq	%rdi, %rsi	# D.14924, D.14925
	movzbl	(%rsi), %esi	# *_417, D.14926
	movsbq	%sil, %rsi	# D.14926, D.14922
	salq	$3, %rsi	#, D.14922
	addq	%rsi, %rax	# D.14922, D.14923
	movq	(%rax), %rsi	# *_421, D.14921
	movq	-104(%rbp), %rax	# hmm, tmp705
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cltq
	salq	$2, %rax	#, D.14922
	addq	%rsi, %rax	# D.14921, D.14921
	movl	(%rax), %eax	# *_426, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%eax, (%rdx)	# D.14920, *_404
	.loc 1 453 0
	movq	-56(%rbp), %rax	# xmx, xmx.33
	movl	-68(%rbp), %edx	# i, tmp706
	movslq	%edx, %rdx	# tmp706, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_432, D.14921
	leaq	16(%rax), %rdx	#, D.14921
	movq	-56(%rbp), %rax	# xmx, xmx.34
	movl	-68(%rbp), %ecx	# i, tmp707
	movslq	%ecx, %rcx	# tmp707, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_439, D.14921
	addq	$16, %rax	#, D.14921
	movl	(%rax), %ecx	# *_441, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp708
	movl	340(%rax), %eax	# hmm_5(D)->xsc, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%eax, (%rdx)	# D.14920, *_434
	.loc 1 455 0
	movq	-56(%rbp), %rax	# xmx, xmx.35
	movl	-68(%rbp), %edx	# i, tmp709
	movslq	%edx, %rdx	# tmp709, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_448, D.14921
	addq	$4, %rax	#, D.14921
	movl	$-987654321, (%rax)	#, *_450
	.loc 1 456 0
	movl	$1, -64(%rbp)	#, k
	jmp	.L45	#
.L46:
	.loc 1 457 0 discriminator 2
	movq	-56(%rbp), %rax	# xmx, xmx.36
	movl	-68(%rbp), %edx	# i, tmp710
	movslq	%edx, %rdx	# tmp710, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_456, D.14921
	leaq	4(%rax), %rbx	#, D.14921
	movq	-48(%rbp), %rax	# mmx, mmx.37
	movl	-68(%rbp), %edx	# i, tmp711
	movslq	%edx, %rdx	# tmp711, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_462, D.14921
	movl	-64(%rbp), %edx	# k, tmp712
	movslq	%edx, %rdx	# tmp712, D.14922
	salq	$2, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14921
	movl	(%rax), %edx	# *_466, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp713
	movq	376(%rax), %rax	# hmm_5(D)->esc, D.14921
	movl	-64(%rbp), %ecx	# k, tmp714
	movslq	%ecx, %rcx	# tmp714, D.14922
	salq	$2, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movl	(%rax), %eax	# *_471, D.14920
	addl	%eax, %edx	# D.14920, D.14920
	movq	-56(%rbp), %rax	# xmx, xmx.38
	movl	-68(%rbp), %ecx	# i, tmp715
	movslq	%ecx, %rcx	# tmp715, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_477, D.14921
	addq	$4, %rax	#, D.14921
	movl	(%rax), %eax	# *_479, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_458
	.loc 1 456 0 discriminator 2
	addl	$1, -64(%rbp)	#, k
.L45:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hmm, tmp716
	movl	136(%rax), %eax	# hmm_5(D)->M, D.14920
	cmpl	-64(%rbp), %eax	# k, D.14920
	jge	.L46	#,
	.loc 1 459 0 is_stmt 1
	movq	-56(%rbp), %rax	# xmx, xmx.39
	movl	-68(%rbp), %edx	# i, tmp717
	movslq	%edx, %rdx	# tmp717, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_486, D.14921
	leaq	12(%rax), %rbx	#, D.14921
	.loc 1 460 0
	movq	-56(%rbp), %rax	# xmx, xmx.40
	movl	-68(%rbp), %edx	# i, tmp718
	movslq	%edx, %rdx	# tmp718, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_492, D.14921
	addq	$4, %rax	#, D.14921
	movl	(%rax), %edx	# *_494, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp719
	movl	348(%rax), %eax	# hmm_5(D)->xsc, D.14920
	.loc 1 459 0
	addl	%eax, %edx	# D.14920, D.14920
	movq	-56(%rbp), %rax	# xmx, xmx.41
	movl	-68(%rbp), %ecx	# i, tmp720
	movslq	%ecx, %rcx	# tmp720, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_502, D.14921
	addq	$12, %rax	#, D.14921
	movl	(%rax), %ecx	# *_504, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp721
	movl	364(%rax), %eax	# hmm_5(D)->xsc, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_488
	.loc 1 462 0
	movq	-56(%rbp), %rax	# xmx, xmx.42
	movl	-68(%rbp), %edx	# i, tmp722
	movslq	%edx, %rdx	# tmp722, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rbx	# *_512, D.14921
	.loc 1 463 0
	movq	-56(%rbp), %rax	# xmx, xmx.43
	movl	-68(%rbp), %edx	# i, tmp723
	movslq	%edx, %rdx	# tmp723, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_517, D.14921
	addq	$12, %rax	#, D.14921
	movl	(%rax), %edx	# *_519, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp724
	movl	360(%rax), %eax	# hmm_5(D)->xsc, D.14920
	.loc 1 462 0
	addl	%eax, %edx	# D.14920, D.14920
	movq	-56(%rbp), %rax	# xmx, xmx.44
	movl	-68(%rbp), %ecx	# i, tmp725
	movslq	%ecx, %rcx	# tmp725, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_526, D.14921
	addq	$16, %rax	#, D.14921
	movl	(%rax), %ecx	# *_528, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp726
	movl	336(%rax), %eax	# hmm_5(D)->xsc, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_513
	.loc 1 465 0
	movq	-56(%rbp), %rax	# xmx, xmx.45
	movl	-68(%rbp), %edx	# i, tmp727
	movslq	%edx, %rdx	# tmp727, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_536, D.14921
	leaq	8(%rax), %rbx	#, D.14921
	.loc 1 466 0
	movq	-56(%rbp), %rax	# xmx, xmx.46
	movl	-68(%rbp), %edx	# i, tmp728
	movslq	%edx, %rdx	# tmp728, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_542, D.14921
	addq	$4, %rax	#, D.14921
	movl	(%rax), %edx	# *_544, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp729
	movl	344(%rax), %eax	# hmm_5(D)->xsc, D.14920
	.loc 1 465 0
	addl	%eax, %edx	# D.14920, D.14920
	movq	-56(%rbp), %rax	# xmx, xmx.47
	movl	-68(%rbp), %ecx	# i, tmp730
	movslq	%ecx, %rcx	# tmp730, D.14922
	salq	$3, %rcx	#, D.14922
	subq	$8, %rcx	#, D.14924
	addq	%rcx, %rax	# D.14924, D.14923
	movq	(%rax), %rax	# *_552, D.14921
	addq	$8, %rax	#, D.14921
	movl	(%rax), %ecx	# *_554, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp731
	movl	356(%rax), %eax	# hmm_5(D)->xsc, D.14920
	addl	%ecx, %eax	# D.14920, D.14920
	movl	%edx, %esi	# D.14920,
	movl	%eax, %edi	# D.14920,
	call	ILogsum	#
	movl	%eax, (%rbx)	# D.14920, *_538
	.loc 1 427 0
	addl	$1, -68(%rbp)	#, i
.L42:
	.loc 1 427 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp732
	cmpl	-92(%rbp), %eax	# L, tmp732
	jle	.L47	#,
	.loc 1 469 0 is_stmt 1
	movq	-56(%rbp), %rax	# xmx, xmx.48
	movl	-92(%rbp), %edx	# L, tmp733
	movslq	%edx, %rdx	# tmp733, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14923
	movq	(%rax), %rax	# *_563, D.14921
	addq	$8, %rax	#, D.14921
	movl	(%rax), %edx	# *_565, D.14920
	movq	-104(%rbp), %rax	# hmm, tmp734
	movl	352(%rax), %eax	# hmm_5(D)->xsc, D.14920
	addl	%edx, %eax	# D.14920, tmp735
	movl	%eax, -60(%rbp)	# tmp735, sc
	.loc 1 471 0
	cmpq	$0, -112(%rbp)	#, ret_mx
	je	.L48	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# ret_mx, tmp736
	movq	-24(%rbp), %rdx	# mx, tmp737
	movq	%rdx, (%rax)	# tmp737, *ret_mx_569(D)
	jmp	.L49	#
.L48:
	.loc 1 472 0 is_stmt 1
	movq	-24(%rbp), %rax	# mx, tmp738
	movq	%rax, %rdi	# tmp738,
	call	FreePlan7Matrix	#
.L49:
	.loc 1 474 0
	movl	-60(%rbp), %eax	# sc, tmp739
	movl	%eax, %edi	# tmp739,
	call	Scorify	#
	movss	%xmm0, -96(%rbp)	#, %sfp
	movl	-96(%rbp), %eax	# %sfp, D.14927
	.loc 1 475 0
	movl	%eax, -96(%rbp)	# <retval>, %sfp
	movss	-96(%rbp), %xmm0	# %sfp,
	addq	$96, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	P7Forward, .-P7Forward
	.section	.rodata
.LC9:
	.string	"traceback failed"
.LC11:
	.string	"Traceback failed."
	.text
	.globl	P7ViterbiTrace
	.type	P7ViterbiTrace, @function
P7ViterbiTrace:
.LFB12:
	.loc 1 630 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# hmm, hmm
	movq	%rsi, -80(%rbp)	# dsq, dsq
	movl	%edx, -84(%rbp)	# N, N
	movq	%rcx, -96(%rbp)	# mx, mx
	movq	%r8, -104(%rbp)	# ret_tr, ret_tr
	.loc 1 643 0
	movl	-84(%rbp), %eax	# N, tmp776
	addl	$3, %eax	#, D.14929
	addl	%eax, %eax	# tmp777
	movl	%eax, -64(%rbp)	# tmp777, curralloc
	.loc 1 644 0
	leaq	-40(%rbp), %rdx	#, tmp778
	movl	-64(%rbp), %eax	# curralloc, tmp779
	movq	%rdx, %rsi	# tmp778,
	movl	%eax, %edi	# tmp779,
	call	P7AllocTrace	#
	.loc 1 646 0
	movq	-96(%rbp), %rax	# mx, tmp780
	movq	(%rax), %rax	# mx_40(D)->xmx, tmp781
	movq	%rax, -32(%rbp)	# tmp781, xmx
	.loc 1 647 0
	movq	-96(%rbp), %rax	# mx, tmp782
	movq	8(%rax), %rax	# mx_40(D)->mmx, tmp783
	movq	%rax, -24(%rbp)	# tmp783, mmx
	.loc 1 648 0
	movq	-96(%rbp), %rax	# mx, tmp784
	movq	16(%rax), %rax	# mx_40(D)->imx, tmp785
	movq	%rax, -16(%rbp)	# tmp785, imx
	.loc 1 649 0
	movq	-96(%rbp), %rax	# mx, tmp786
	movq	24(%rax), %rax	# mx_40(D)->dmx, tmp787
	movq	%rax, -8(%rbp)	# tmp787, dmx
	.loc 1 654 0
	movq	-40(%rbp), %rax	# tr, tr.49
	movq	8(%rax), %rax	# tr.49_45->statetype, D.14930
	movb	$9, (%rax)	#, *_46
	.loc 1 655 0
	movq	-40(%rbp), %rax	# tr, tr.50
	movq	16(%rax), %rax	# tr.50_47->nodeidx, D.14931
	movl	$0, (%rax)	#, *_48
	.loc 1 656 0
	movq	-40(%rbp), %rax	# tr, tr.51
	movq	24(%rax), %rax	# tr.51_49->pos, D.14931
	movl	$0, (%rax)	#, *_50
	.loc 1 657 0
	movq	-40(%rbp), %rax	# tr, tr.52
	movq	8(%rax), %rax	# tr.52_51->statetype, D.14930
	addq	$1, %rax	#, D.14930
	movb	$8, (%rax)	#, *_53
	.loc 1 658 0
	movq	-40(%rbp), %rax	# tr, tr.53
	movq	16(%rax), %rax	# tr.53_54->nodeidx, D.14931
	addq	$4, %rax	#, D.14931
	movl	$0, (%rax)	#, *_56
	.loc 1 659 0
	movq	-40(%rbp), %rax	# tr, tr.54
	movq	24(%rax), %rax	# tr.54_57->pos, D.14931
	addq	$4, %rax	#, D.14931
	movl	$0, (%rax)	#, *_59
	.loc 1 660 0
	movl	$2, -60(%rbp)	#, tpos
	.loc 1 661 0
	movl	-84(%rbp), %eax	# N, tmp788
	movl	%eax, -56(%rbp)	# tmp788, i
	.loc 1 665 0
	jmp	.L52	#
.L109:
	.loc 1 666 0
	movq	-40(%rbp), %rax	# tr, tr.55
	movq	8(%rax), %rax	# tr.55_69->statetype, D.14930
	movl	-60(%rbp), %edx	# tpos, tmp789
	movslq	%edx, %rdx	# tmp789, D.14932
	subq	$1, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14930
	movzbl	(%rax), %eax	# *_73, D.14933
	movsbl	%al, %eax	# D.14933, D.14929
	cmpl	$10, %eax	#, D.14929
	ja	.L53	#,
	movl	%eax, %eax	# D.14929, tmp790
	movq	.L55(,%rax,8), %rax	#, tmp791
	jmp	*%rax	# tmp791
	.section	.rodata
	.align 8
	.align 4
.L55:
	.quad	.L53
	.quad	.L54
	.quad	.L56
	.quad	.L57
	.quad	.L53
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L53
	.quad	.L62
	.text
.L54:
	.loc 1 668 0
	movl	-56(%rbp), %eax	# i, tmp792
	cltq
	addq	$1, %rax	#, D.14932
	leaq	0(,%rax,8), %rdx	#, D.14932
	movq	-24(%rbp), %rax	# mmx, tmp793
	addq	%rdx, %rax	# D.14932, D.14934
	movq	(%rax), %rax	# *_79, D.14931
	movl	-52(%rbp), %edx	# k, tmp794
	movslq	%edx, %rdx	# tmp794, D.14932
	addq	$1, %rdx	#, D.14932
	salq	$2, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movl	(%rax), %edx	# *_84, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp795
	movq	320(%rax), %rax	# hmm_86(D)->msc, D.14934
	movl	-56(%rbp), %ecx	# i, tmp796
	movslq	%ecx, %rcx	# tmp796, D.14932
	leaq	1(%rcx), %rsi	#, D.14932
	movq	-80(%rbp), %rcx	# dsq, tmp797
	addq	%rsi, %rcx	# D.14932, D.14930
	movzbl	(%rcx), %ecx	# *_91, D.14933
	movsbq	%cl, %rcx	# D.14933, D.14935
	salq	$3, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_95, D.14931
	movl	-52(%rbp), %ecx	# k, tmp798
	movslq	%ecx, %rcx	# tmp798, D.14932
	addq	$1, %rcx	#, D.14932
	salq	$2, %rcx	#, D.14932
	addq	%rcx, %rax	# D.14932, D.14931
	movl	(%rax), %eax	# *_100, D.14929
	subl	%eax, %edx	# D.14929, tmp799
	movl	%edx, %eax	# tmp799, tmp799
	movl	%eax, -44(%rbp)	# tmp799, sc
	.loc 1 669 0
	cmpl	$-987654320, -44(%rbp)	#, sc
	jge	.L63	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.56
	movq	%rax, %rdi	# tr.56,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp800
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L63:
	.loc 1 670 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp801
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp802
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_107, D.14931
	movl	(%rax), %edx	# *_108, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp803
	movq	368(%rax), %rax	# hmm_86(D)->bsc, D.14931
	movl	-52(%rbp), %ecx	# k, tmp804
	movslq	%ecx, %rcx	# tmp804, D.14932
	addq	$1, %rcx	#, D.14932
	salq	$2, %rcx	#, D.14932
	addq	%rcx, %rax	# D.14932, D.14931
	movl	(%rax), %eax	# *_114, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L65	#,
	.loc 1 673 0
	movq	-72(%rbp), %rax	# hmm, tmp805
	movl	304(%rax), %edx	# hmm_86(D)->p1, D.14936
	movq	-72(%rbp), %rax	# hmm, tmp806
	movq	208(%rax), %rax	# hmm_86(D)->begin, D.14937
	movl	-52(%rbp), %ecx	# k, tmp807
	movslq	%ecx, %rcx	# tmp807, D.14932
	addq	$1, %rcx	#, D.14932
	salq	$2, %rcx	#, D.14932
	addq	%rcx, %rax	# D.14932, D.14937
	movl	(%rax), %eax	# *_122, D.14936
	movl	%edx, -88(%rbp)	# D.14936, %sfp
	movss	-88(%rbp), %xmm1	# %sfp,
	movl	%eax, -88(%rbp)	# D.14936, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.14929, D.14938
	movsd	.LC8(%rip), %xmm1	#, tmp808
	addsd	%xmm0, %xmm1	# D.14938, D.14938
	movq	-72(%rbp), %rax	# hmm, tmp809
	movq	368(%rax), %rax	# hmm_86(D)->bsc, D.14931
	movl	-52(%rbp), %edx	# k, tmp810
	movslq	%edx, %rdx	# tmp810, D.14932
	addq	$1, %rdx	#, D.14932
	salq	$2, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movl	(%rax), %eax	# *_131, D.14929
	cvtsi2sd	%eax, %xmm0	# D.14929, D.14938
	ucomisd	%xmm1, %xmm0	# D.14938, D.14938
	jb	.L66	#,
	.loc 1 674 0
	jmp	.L68	#
.L69:
	.loc 1 676 0
	movq	-40(%rbp), %rax	# tr, tr.57
	movq	8(%rax), %rdx	# tr.57_134->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp811
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$2, (%rax)	#, *_137
	.loc 1 677 0
	movq	-40(%rbp), %rax	# tr, tr.58
	movq	16(%rax), %rax	# tr.58_138->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp812
	movslq	%edx, %rdx	# tmp812, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.59
	leal	-1(%rax), %edx	#, tmp813
	movl	%edx, -52(%rbp)	# tmp813, k
	movl	%eax, (%rcx)	# k.59, *_142
	.loc 1 678 0
	movq	-40(%rbp), %rax	# tr, tr.60
	movq	24(%rax), %rax	# tr.60_145->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp814
	movslq	%edx, %rdx	# tmp814, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_149
	.loc 1 679 0
	addl	$1, -60(%rbp)	#, tpos
	.loc 1 680 0
	movl	-60(%rbp), %eax	# tpos, tmp815
	cmpl	-64(%rbp), %eax	# curralloc, tmp815
	jne	.L68	#,
	.loc 1 682 0
	movl	-84(%rbp), %eax	# N, tmp816
	addl	%eax, -64(%rbp)	# tmp816, curralloc
	.loc 1 683 0
	movq	-40(%rbp), %rax	# tr, tr.61
	movl	-64(%rbp), %edx	# curralloc, tmp817
	movl	%edx, %esi	# tmp817,
	movq	%rax, %rdi	# tr.61,
	call	P7ReallocTrace	#
.L68:
	.loc 1 674 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, k
	jg	.L69	#,
.L66:
	.loc 1 687 0
	movq	-40(%rbp), %rax	# tr, tr.62
	movq	8(%rax), %rdx	# tr.62_153->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp818
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$6, (%rax)	#, *_156
	.loc 1 688 0
	movq	-40(%rbp), %rax	# tr, tr.63
	movq	16(%rax), %rax	# tr.63_157->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp819
	movslq	%edx, %rdx	# tmp819, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_161
	.loc 1 689 0
	movq	-40(%rbp), %rax	# tr, tr.64
	movq	24(%rax), %rax	# tr.64_162->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp820
	movslq	%edx, %rdx	# tmp820, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_166
	jmp	.L70	#
.L65:
	.loc 1 691 0
	movl	-56(%rbp), %eax	# i, tmp821
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-24(%rbp), %rax	# mmx, tmp822
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_169, D.14931
	movl	-52(%rbp), %edx	# k, tmp823
	movslq	%edx, %rdx	# tmp823, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_173, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp824
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	movq	(%rax), %rax	# *_175, D.14931
	movl	-52(%rbp), %ecx	# k, tmp825
	movslq	%ecx, %rcx	# tmp825, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_179, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L71	#,
	.loc 1 693 0
	movq	-40(%rbp), %rax	# tr, tr.65
	movq	8(%rax), %rdx	# tr.65_182->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp826
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$1, (%rax)	#, *_185
	.loc 1 694 0
	movq	-40(%rbp), %rax	# tr, tr.66
	movq	16(%rax), %rax	# tr.66_186->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp827
	movslq	%edx, %rdx	# tmp827, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.67
	leal	-1(%rax), %edx	#, tmp828
	movl	%edx, -52(%rbp)	# tmp828, k
	movl	%eax, (%rcx)	# k.67, *_190
	.loc 1 695 0
	movq	-40(%rbp), %rax	# tr, tr.68
	movq	24(%rax), %rax	# tr.68_193->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp829
	movslq	%edx, %rdx	# tmp829, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.69
	leal	-1(%rax), %edx	#, tmp830
	movl	%edx, -56(%rbp)	# tmp830, i
	movl	%eax, (%rcx)	# i.69, *_197
	jmp	.L70	#
.L71:
	.loc 1 697 0
	movl	-56(%rbp), %eax	# i, tmp831
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-16(%rbp), %rax	# imx, tmp832
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_202, D.14931
	movl	-52(%rbp), %edx	# k, tmp833
	movslq	%edx, %rdx	# tmp833, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_206, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp834
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$24, %rax	#, D.14934
	movq	(%rax), %rax	# *_209, D.14931
	movl	-52(%rbp), %ecx	# k, tmp835
	movslq	%ecx, %rcx	# tmp835, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_213, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L72	#,
	.loc 1 699 0
	movq	-40(%rbp), %rax	# tr, tr.70
	movq	8(%rax), %rdx	# tr.70_216->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp836
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$3, (%rax)	#, *_219
	.loc 1 700 0
	movq	-40(%rbp), %rax	# tr, tr.71
	movq	16(%rax), %rax	# tr.71_220->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp837
	movslq	%edx, %rdx	# tmp837, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rax, %rdx	# D.14931, D.14931
	movl	-52(%rbp), %eax	# k, tmp838
	movl	%eax, (%rdx)	# tmp838, *_224
	.loc 1 701 0
	movq	-40(%rbp), %rax	# tr, tr.72
	movq	24(%rax), %rax	# tr.72_225->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp839
	movslq	%edx, %rdx	# tmp839, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.73
	leal	-1(%rax), %edx	#, tmp840
	movl	%edx, -56(%rbp)	# tmp840, i
	movl	%eax, (%rcx)	# i.73, *_229
	jmp	.L70	#
.L72:
	.loc 1 703 0
	movl	-56(%rbp), %eax	# i, tmp841
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-8(%rbp), %rax	# dmx, tmp842
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_234, D.14931
	movl	-52(%rbp), %edx	# k, tmp843
	movslq	%edx, %rdx	# tmp843, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_238, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp844
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$40, %rax	#, D.14934
	movq	(%rax), %rax	# *_241, D.14931
	movl	-52(%rbp), %ecx	# k, tmp845
	movslq	%ecx, %rcx	# tmp845, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_245, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L73	#,
	.loc 1 705 0
	movq	-40(%rbp), %rax	# tr, tr.74
	movq	8(%rax), %rdx	# tr.74_248->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp846
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$2, (%rax)	#, *_251
	.loc 1 706 0
	movq	-40(%rbp), %rax	# tr, tr.75
	movq	16(%rax), %rax	# tr.75_252->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp847
	movslq	%edx, %rdx	# tmp847, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.76
	leal	-1(%rax), %edx	#, tmp848
	movl	%edx, -52(%rbp)	# tmp848, k
	movl	%eax, (%rcx)	# k.76, *_256
	.loc 1 707 0
	movq	-40(%rbp), %rax	# tr, tr.77
	movq	24(%rax), %rax	# tr.77_259->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp849
	movslq	%edx, %rdx	# tmp849, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_263
	jmp	.L70	#
.L73:
	.loc 1 710 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 711 0
	jmp	.L74	#
.L70:
	jmp	.L74	#
.L56:
	.loc 1 714 0
	movl	-56(%rbp), %eax	# i, tmp850
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-8(%rbp), %rax	# dmx, tmp851
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_266, D.14931
	movl	-52(%rbp), %edx	# k, tmp852
	movslq	%edx, %rdx	# tmp852, D.14932
	addq	$1, %rdx	#, D.14932
	salq	$2, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movl	(%rax), %eax	# *_271, D.14929
	cmpl	$-987654320, %eax	#, D.14929
	jge	.L75	#,
	.loc 1 714 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.78
	movq	%rax, %rdi	# tr.78,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp853
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L75:
	.loc 1 715 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp854
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-8(%rbp), %rax	# dmx, tmp855
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_276, D.14931
	movl	-52(%rbp), %edx	# k, tmp856
	movslq	%edx, %rdx	# tmp856, D.14932
	addq	$1, %rdx	#, D.14932
	salq	$2, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movl	(%rax), %edx	# *_281, D.14929
	movl	-56(%rbp), %eax	# i, tmp857
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-24(%rbp), %rax	# mmx, tmp858
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_285, D.14931
	movl	-52(%rbp), %ecx	# k, tmp859
	movslq	%ecx, %rcx	# tmp859, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %ecx	# *_289, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp860
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$16, %rax	#, D.14934
	movq	(%rax), %rax	# *_292, D.14931
	movl	-52(%rbp), %esi	# k, tmp861
	movslq	%esi, %rsi	# tmp861, D.14935
	salq	$2, %rsi	#, D.14935
	addq	%rsi, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_296, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L76	#,
	.loc 1 717 0
	movq	-40(%rbp), %rax	# tr, tr.79
	movq	8(%rax), %rdx	# tr.79_299->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp862
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$1, (%rax)	#, *_302
	.loc 1 718 0
	movq	-40(%rbp), %rax	# tr, tr.80
	movq	16(%rax), %rax	# tr.80_303->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp863
	movslq	%edx, %rdx	# tmp863, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.81
	leal	-1(%rax), %edx	#, tmp864
	movl	%edx, -52(%rbp)	# tmp864, k
	movl	%eax, (%rcx)	# k.81, *_307
	.loc 1 719 0
	movq	-40(%rbp), %rax	# tr, tr.82
	movq	24(%rax), %rax	# tr.82_310->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp865
	movslq	%edx, %rdx	# tmp865, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.83
	leal	-1(%rax), %edx	#, tmp866
	movl	%edx, -56(%rbp)	# tmp866, i
	movl	%eax, (%rcx)	# i.83, *_314
	jmp	.L77	#
.L76:
	.loc 1 721 0
	movl	-56(%rbp), %eax	# i, tmp867
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-8(%rbp), %rax	# dmx, tmp868
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_319, D.14931
	movl	-52(%rbp), %edx	# k, tmp869
	movslq	%edx, %rdx	# tmp869, D.14932
	addq	$1, %rdx	#, D.14932
	salq	$2, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movl	(%rax), %edx	# *_324, D.14929
	movl	-56(%rbp), %eax	# i, tmp870
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-8(%rbp), %rax	# dmx, tmp871
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_328, D.14931
	movl	-52(%rbp), %ecx	# k, tmp872
	movslq	%ecx, %rcx	# tmp872, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %ecx	# *_332, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp873
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$48, %rax	#, D.14934
	movq	(%rax), %rax	# *_335, D.14931
	movl	-52(%rbp), %esi	# k, tmp874
	movslq	%esi, %rsi	# tmp874, D.14935
	salq	$2, %rsi	#, D.14935
	addq	%rsi, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_339, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L78	#,
	.loc 1 723 0
	movq	-40(%rbp), %rax	# tr, tr.84
	movq	8(%rax), %rdx	# tr.84_342->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp875
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$2, (%rax)	#, *_345
	.loc 1 724 0
	movq	-40(%rbp), %rax	# tr, tr.85
	movq	16(%rax), %rax	# tr.85_346->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp876
	movslq	%edx, %rdx	# tmp876, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.86
	leal	-1(%rax), %edx	#, tmp877
	movl	%edx, -52(%rbp)	# tmp877, k
	movl	%eax, (%rcx)	# k.86, *_350
	.loc 1 725 0
	movq	-40(%rbp), %rax	# tr, tr.87
	movq	24(%rax), %rax	# tr.87_353->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp878
	movslq	%edx, %rdx	# tmp878, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_357
	jmp	.L77	#
.L78:
	.loc 1 727 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 728 0
	jmp	.L74	#
.L77:
	jmp	.L74	#
.L57:
	.loc 1 731 0
	movl	-56(%rbp), %eax	# i, tmp879
	cltq
	addq	$1, %rax	#, D.14932
	leaq	0(,%rax,8), %rdx	#, D.14932
	movq	-16(%rbp), %rax	# imx, tmp880
	addq	%rdx, %rax	# D.14932, D.14934
	movq	(%rax), %rax	# *_361, D.14931
	movl	-52(%rbp), %edx	# k, tmp881
	movslq	%edx, %rdx	# tmp881, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_365, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp882
	movq	328(%rax), %rax	# hmm_86(D)->isc, D.14934
	movl	-56(%rbp), %ecx	# i, tmp883
	movslq	%ecx, %rcx	# tmp883, D.14932
	leaq	1(%rcx), %rsi	#, D.14932
	movq	-80(%rbp), %rcx	# dsq, tmp884
	addq	%rsi, %rcx	# D.14932, D.14930
	movzbl	(%rcx), %ecx	# *_370, D.14933
	movsbq	%cl, %rcx	# D.14933, D.14935
	salq	$3, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_374, D.14931
	movl	-52(%rbp), %ecx	# k, tmp885
	movslq	%ecx, %rcx	# tmp885, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_378, D.14929
	subl	%eax, %edx	# D.14929, tmp886
	movl	%edx, %eax	# tmp886, tmp886
	movl	%eax, -44(%rbp)	# tmp886, sc
	.loc 1 732 0
	cmpl	$-987654320, -44(%rbp)	#, sc
	jge	.L79	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.88
	movq	%rax, %rdi	# tr.88,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp887
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L79:
	.loc 1 733 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp888
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-24(%rbp), %rax	# mmx, tmp889
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_384, D.14931
	movl	-52(%rbp), %edx	# k, tmp890
	movslq	%edx, %rdx	# tmp890, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_388, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp891
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$8, %rax	#, D.14934
	movq	(%rax), %rax	# *_391, D.14931
	movl	-52(%rbp), %ecx	# k, tmp892
	movslq	%ecx, %rcx	# tmp892, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_395, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L80	#,
	.loc 1 735 0
	movq	-40(%rbp), %rax	# tr, tr.89
	movq	8(%rax), %rdx	# tr.89_398->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp893
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$1, (%rax)	#, *_401
	.loc 1 736 0
	movq	-40(%rbp), %rax	# tr, tr.90
	movq	16(%rax), %rax	# tr.90_402->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp894
	movslq	%edx, %rdx	# tmp894, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.91
	leal	-1(%rax), %edx	#, tmp895
	movl	%edx, -52(%rbp)	# tmp895, k
	movl	%eax, (%rcx)	# k.91, *_406
	.loc 1 737 0
	movq	-40(%rbp), %rax	# tr, tr.92
	movq	24(%rax), %rax	# tr.92_409->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp896
	movslq	%edx, %rdx	# tmp896, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.93
	leal	-1(%rax), %edx	#, tmp897
	movl	%edx, -56(%rbp)	# tmp897, i
	movl	%eax, (%rcx)	# i.93, *_413
	jmp	.L81	#
.L80:
	.loc 1 739 0
	movl	-56(%rbp), %eax	# i, tmp898
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-16(%rbp), %rax	# imx, tmp899
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_418, D.14931
	movl	-52(%rbp), %edx	# k, tmp900
	movslq	%edx, %rdx	# tmp900, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %edx	# *_422, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp901
	movq	312(%rax), %rax	# hmm_86(D)->tsc, D.14934
	addq	$32, %rax	#, D.14934
	movq	(%rax), %rax	# *_425, D.14931
	movl	-52(%rbp), %ecx	# k, tmp902
	movslq	%ecx, %rcx	# tmp902, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_429, D.14929
	addl	%edx, %eax	# D.14929, D.14929
	cmpl	-44(%rbp), %eax	# sc, D.14929
	jne	.L82	#,
	.loc 1 741 0
	movq	-40(%rbp), %rax	# tr, tr.94
	movq	8(%rax), %rdx	# tr.94_432->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp903
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$3, (%rax)	#, *_435
	.loc 1 742 0
	movq	-40(%rbp), %rax	# tr, tr.95
	movq	16(%rax), %rax	# tr.95_436->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp904
	movslq	%edx, %rdx	# tmp904, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rax, %rdx	# D.14931, D.14931
	movl	-52(%rbp), %eax	# k, tmp905
	movl	%eax, (%rdx)	# tmp905, *_440
	.loc 1 743 0
	movq	-40(%rbp), %rax	# tr, tr.96
	movq	24(%rax), %rax	# tr.96_441->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp906
	movslq	%edx, %rdx	# tmp906, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.97
	leal	-1(%rax), %edx	#, tmp907
	movl	%edx, -56(%rbp)	# tmp907, i
	movl	%eax, (%rcx)	# i.97, *_445
	jmp	.L81	#
.L82:
	.loc 1 745 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 746 0
	jmp	.L74	#
.L81:
	jmp	.L74	#
.L58:
	.loc 1 749 0
	cmpl	$0, -56(%rbp)	#, i
	jne	.L83	#,
	.loc 1 749 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp908
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp909
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_450, D.14931
	addq	$16, %rax	#, D.14931
	movl	(%rax), %eax	# *_452, D.14929
	testl	%eax, %eax	# D.14929
	jne	.L83	#,
	.loc 1 751 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.98
	movq	8(%rax), %rdx	# tr.98_454->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp910
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$4, (%rax)	#, *_457
	.loc 1 752 0
	movq	-40(%rbp), %rax	# tr, tr.99
	movq	16(%rax), %rax	# tr.99_458->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp911
	movslq	%edx, %rdx	# tmp911, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_462
	.loc 1 753 0
	movq	-40(%rbp), %rax	# tr, tr.100
	movq	24(%rax), %rax	# tr.100_463->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp912
	movslq	%edx, %rdx	# tmp912, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_467
	jmp	.L84	#
.L83:
	.loc 1 755 0
	cmpl	$0, -56(%rbp)	#, i
	jle	.L85	#,
	.loc 1 755 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp913
	cltq
	addq	$1, %rax	#, D.14932
	leaq	0(,%rax,8), %rdx	#, D.14932
	movq	-32(%rbp), %rax	# xmx, tmp914
	addq	%rdx, %rax	# D.14932, D.14934
	movq	(%rax), %rax	# *_471, D.14931
	addq	$16, %rax	#, D.14931
	movl	(%rax), %edx	# *_473, D.14929
	movl	-56(%rbp), %eax	# i, tmp915
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp916
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_477, D.14931
	addq	$16, %rax	#, D.14931
	movl	(%rax), %ecx	# *_479, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp917
	movl	340(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L85	#,
	.loc 1 757 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.101
	movq	8(%rax), %rdx	# tr.101_483->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp918
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$5, (%rax)	#, *_486
	.loc 1 758 0
	movq	-40(%rbp), %rax	# tr, tr.102
	movq	16(%rax), %rax	# tr.102_487->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp919
	movslq	%edx, %rdx	# tmp919, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_491
	.loc 1 759 0
	movq	-40(%rbp), %rax	# tr, tr.103
	movq	24(%rax), %rax	# tr.103_492->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp920
	movslq	%edx, %rdx	# tmp920, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_496
	.loc 1 760 0
	movq	-40(%rbp), %rax	# tr, tr.104
	movq	24(%rax), %rax	# tr.104_497->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp921
	movslq	%edx, %rdx	# tmp921, D.14935
	salq	$2, %rdx	#, D.14935
	subq	$4, %rdx	#, D.14932
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.105
	leal	-1(%rax), %edx	#, tmp922
	movl	%edx, -56(%rbp)	# tmp922, i
	movl	%eax, (%rcx)	# i.105, *_502
	jmp	.L84	#
.L85:
	.loc 1 762 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 763 0
	jmp	.L74	#
.L84:
	jmp	.L74	#
.L59:
	.loc 1 766 0
	movl	-56(%rbp), %eax	# i, tmp923
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp924
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_507, D.14931
	movl	(%rax), %eax	# *_508, D.14929
	cmpl	$-987654320, %eax	#, D.14929
	jge	.L86	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.106
	movq	%rax, %rdi	# tr.106,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp925
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L86:
	.loc 1 767 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp926
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp927
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_513, D.14931
	movl	(%rax), %edx	# *_514, D.14929
	movl	-56(%rbp), %eax	# i, tmp928
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp929
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_518, D.14931
	addq	$16, %rax	#, D.14931
	movl	(%rax), %ecx	# *_520, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp930
	movl	336(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L87	#,
	.loc 1 769 0
	movq	-40(%rbp), %rax	# tr, tr.107
	movq	8(%rax), %rdx	# tr.107_524->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp931
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$5, (%rax)	#, *_527
	.loc 1 770 0
	movq	-40(%rbp), %rax	# tr, tr.108
	movq	16(%rax), %rax	# tr.108_528->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp932
	movslq	%edx, %rdx	# tmp932, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_532
	.loc 1 771 0
	movq	-40(%rbp), %rax	# tr, tr.109
	movq	24(%rax), %rax	# tr.109_533->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp933
	movslq	%edx, %rdx	# tmp933, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_537
	jmp	.L88	#
.L87:
	.loc 1 773 0
	movl	-56(%rbp), %eax	# i, tmp934
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp935
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_540, D.14931
	movl	(%rax), %edx	# *_541, D.14929
	movl	-56(%rbp), %eax	# i, tmp936
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp937
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_545, D.14931
	addq	$12, %rax	#, D.14931
	movl	(%rax), %ecx	# *_547, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp938
	movl	360(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L89	#,
	.loc 1 775 0
	movq	-40(%rbp), %rax	# tr, tr.110
	movq	8(%rax), %rdx	# tr.110_551->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp939
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$10, (%rax)	#, *_554
	.loc 1 776 0
	movq	-40(%rbp), %rax	# tr, tr.111
	movq	16(%rax), %rax	# tr.111_555->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp940
	movslq	%edx, %rdx	# tmp940, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_559
	.loc 1 777 0
	movq	-40(%rbp), %rax	# tr, tr.112
	movq	24(%rax), %rax	# tr.112_560->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp941
	movslq	%edx, %rdx	# tmp941, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_564
	jmp	.L88	#
.L89:
	.loc 1 780 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 781 0
	jmp	.L74	#
.L88:
	jmp	.L74	#
.L60:
	.loc 1 784 0
	movl	-56(%rbp), %eax	# i, tmp942
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp943
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_567, D.14931
	addq	$4, %rax	#, D.14931
	movl	(%rax), %eax	# *_569, D.14929
	cmpl	$-987654320, %eax	#, D.14929
	jge	.L90	#,
	.loc 1 784 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.113
	movq	%rax, %rdi	# tr.113,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp944
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L90:
	.loc 1 785 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp945
	movl	136(%rax), %eax	# hmm_86(D)->M, tmp946
	movl	%eax, -52(%rbp)	# tmp946, k
	jmp	.L91	#
.L99:
	.loc 1 786 0
	movl	-56(%rbp), %eax	# i, tmp947
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp948
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_575, D.14931
	addq	$4, %rax	#, D.14931
	movl	(%rax), %edx	# *_577, D.14929
	movl	-56(%rbp), %eax	# i, tmp949
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-24(%rbp), %rax	# mmx, tmp950
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_581, D.14931
	movl	-52(%rbp), %ecx	# k, tmp951
	movslq	%ecx, %rcx	# tmp951, D.14935
	salq	$2, %rcx	#, D.14935
	addq	%rcx, %rax	# D.14935, D.14931
	movl	(%rax), %ecx	# *_585, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp952
	movq	376(%rax), %rax	# hmm_86(D)->esc, D.14931
	movl	-52(%rbp), %esi	# k, tmp953
	movslq	%esi, %rsi	# tmp953, D.14935
	salq	$2, %rsi	#, D.14935
	addq	%rsi, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_590, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L92	#,
	.loc 1 789 0
	movq	-72(%rbp), %rax	# hmm, tmp954
	movq	216(%rax), %rax	# hmm_86(D)->end, D.14937
	movl	-52(%rbp), %edx	# k, tmp955
	movslq	%edx, %rdx	# tmp955, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14937
	movl	(%rax), %eax	# *_596, D.14936
	movss	.LC10(%rip), %xmm1	#,
	movl	%eax, -88(%rbp)	# D.14936, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.14929, D.14938
	movsd	.LC8(%rip), %xmm1	#, tmp956
	addsd	%xmm0, %xmm1	# D.14938, D.14938
	movq	-72(%rbp), %rax	# hmm, tmp957
	movq	376(%rax), %rax	# hmm_86(D)->esc, D.14931
	movl	-52(%rbp), %edx	# k, tmp958
	movslq	%edx, %rdx	# tmp958, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	(%rax), %eax	# *_604, D.14929
	cvtsi2sd	%eax, %xmm0	# D.14929, D.14938
	ucomisd	%xmm1, %xmm0	# D.14938, D.14938
	jb	.L93	#,
.LBB2:
	.loc 1 792 0
	movq	-72(%rbp), %rax	# hmm, tmp959
	movl	136(%rax), %eax	# hmm_86(D)->M, tmp960
	movl	%eax, -48(%rbp)	# tmp960, dk
	jmp	.L95	#
.L97:
	.loc 1 794 0
	movq	-40(%rbp), %rax	# tr, tr.114
	movq	8(%rax), %rdx	# tr.114_608->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp961
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$2, (%rax)	#, *_611
	.loc 1 795 0
	movq	-40(%rbp), %rax	# tr, tr.115
	movq	16(%rax), %rax	# tr.115_612->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp962
	movslq	%edx, %rdx	# tmp962, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rax, %rdx	# D.14931, D.14931
	movl	-48(%rbp), %eax	# dk, tmp963
	movl	%eax, (%rdx)	# tmp963, *_616
	.loc 1 796 0
	movq	-40(%rbp), %rax	# tr, tr.116
	movq	24(%rax), %rax	# tr.116_617->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp964
	movslq	%edx, %rdx	# tmp964, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_621
	.loc 1 797 0
	addl	$1, -60(%rbp)	#, tpos
	.loc 1 798 0
	movl	-60(%rbp), %eax	# tpos, tmp965
	cmpl	-64(%rbp), %eax	# curralloc, tmp965
	jne	.L96	#,
	.loc 1 800 0
	movl	-84(%rbp), %eax	# N, tmp966
	addl	%eax, -64(%rbp)	# tmp966, curralloc
	.loc 1 801 0
	movq	-40(%rbp), %rax	# tr, tr.117
	movl	-64(%rbp), %edx	# curralloc, tmp967
	movl	%edx, %esi	# tmp967,
	movq	%rax, %rdi	# tr.117,
	call	P7ReallocTrace	#
.L96:
	.loc 1 792 0
	subl	$1, -48(%rbp)	#, dk
.L95:
	.loc 1 792 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# dk, tmp968
	cmpl	-52(%rbp), %eax	# k, tmp968
	jg	.L97	#,
.L93:
.LBE2:
	.loc 1 806 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.118
	movq	8(%rax), %rdx	# tr.118_626->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp969
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$1, (%rax)	#, *_629
	.loc 1 807 0
	movq	-40(%rbp), %rax	# tr, tr.119
	movq	16(%rax), %rax	# tr.119_630->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp970
	movslq	%edx, %rdx	# tmp970, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-52(%rbp), %eax	# k, k.120
	leal	-1(%rax), %edx	#, tmp971
	movl	%edx, -52(%rbp)	# tmp971, k
	movl	%eax, (%rcx)	# k.120, *_634
	.loc 1 808 0
	movq	-40(%rbp), %rax	# tr, tr.121
	movq	24(%rax), %rax	# tr.121_637->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp972
	movslq	%edx, %rdx	# tmp972, D.14935
	salq	$2, %rdx	#, D.14935
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.122
	leal	-1(%rax), %edx	#, tmp973
	movl	%edx, -56(%rbp)	# tmp973, i
	movl	%eax, (%rcx)	# i.122, *_641
	.loc 1 809 0
	jmp	.L98	#
.L92:
	.loc 1 785 0
	subl	$1, -52(%rbp)	#, k
.L91:
	.loc 1 785 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, k
	jg	.L99	#,
.L98:
	.loc 1 811 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, k
	jns	.L100	#,
	.loc 1 811 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 812 0 is_stmt 1 discriminator 1
	jmp	.L74	#
.L100:
	.loc 1 812 0 is_stmt 0
	jmp	.L74	#
.L61:
	.loc 1 815 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp974
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp975
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_647, D.14931
	addq	$8, %rax	#, D.14931
	movl	(%rax), %eax	# *_649, D.14929
	cmpl	$-987654320, %eax	#, D.14929
	jge	.L101	#,
	.loc 1 815 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.123
	movq	%rax, %rdi	# tr.123,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp976
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L101:
	.loc 1 816 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp977
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp978
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_654, D.14931
	addq	$8, %rax	#, D.14931
	movl	(%rax), %edx	# *_656, D.14929
	movl	-56(%rbp), %eax	# i, tmp979
	cltq
	salq	$3, %rax	#, D.14935
	leaq	-8(%rax), %rcx	#, D.14932
	movq	-32(%rbp), %rax	# xmx, tmp980
	addq	%rcx, %rax	# D.14932, D.14934
	movq	(%rax), %rax	# *_661, D.14931
	addq	$8, %rax	#, D.14931
	movl	(%rax), %ecx	# *_663, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp981
	movl	356(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L102	#,
	.loc 1 818 0
	movq	-40(%rbp), %rax	# tr, tr.124
	movq	8(%rax), %rdx	# tr.124_667->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp982
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$8, (%rax)	#, *_670
	.loc 1 819 0
	movq	-40(%rbp), %rax	# tr, tr.125
	movq	16(%rax), %rax	# tr.125_671->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp983
	movslq	%edx, %rdx	# tmp983, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_675
	.loc 1 820 0
	movq	-40(%rbp), %rax	# tr, tr.126
	movq	24(%rax), %rax	# tr.126_676->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp984
	movslq	%edx, %rdx	# tmp984, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_680
	.loc 1 821 0
	movq	-40(%rbp), %rax	# tr, tr.127
	movq	24(%rax), %rax	# tr.127_681->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp985
	movslq	%edx, %rdx	# tmp985, D.14935
	salq	$2, %rdx	#, D.14935
	subq	$4, %rdx	#, D.14932
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.128
	leal	-1(%rax), %edx	#, tmp986
	movl	%edx, -56(%rbp)	# tmp986, i
	movl	%eax, (%rcx)	# i.128, *_686
	jmp	.L103	#
.L102:
	.loc 1 823 0
	movl	-56(%rbp), %eax	# i, tmp987
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp988
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_691, D.14931
	addq	$8, %rax	#, D.14931
	movl	(%rax), %edx	# *_693, D.14929
	movl	-56(%rbp), %eax	# i, tmp989
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp990
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_697, D.14931
	addq	$4, %rax	#, D.14931
	movl	(%rax), %ecx	# *_699, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp991
	movl	344(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L104	#,
	.loc 1 825 0
	movq	-40(%rbp), %rax	# tr, tr.129
	movq	8(%rax), %rdx	# tr.129_703->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp992
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$7, (%rax)	#, *_706
	.loc 1 826 0
	movq	-40(%rbp), %rax	# tr, tr.130
	movq	16(%rax), %rax	# tr.130_707->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp993
	movslq	%edx, %rdx	# tmp993, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_711
	.loc 1 827 0
	movq	-40(%rbp), %rax	# tr, tr.131
	movq	24(%rax), %rax	# tr.131_712->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp994
	movslq	%edx, %rdx	# tmp994, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_716
	jmp	.L103	#
.L104:
	.loc 1 830 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 831 0
	jmp	.L74	#
.L103:
	jmp	.L74	#
.L62:
	.loc 1 834 0
	movl	-56(%rbp), %eax	# i, tmp995
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp996
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_719, D.14931
	addq	$12, %rax	#, D.14931
	movl	(%rax), %eax	# *_721, D.14929
	cmpl	$-987654320, %eax	#, D.14929
	jge	.L105	#,
	.loc 1 834 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.132
	movq	%rax, %rdi	# tr.132,
	call	P7FreeTrace	#
	movq	-104(%rbp), %rax	# ret_tr, tmp997
	movq	$0, (%rax)	#, *ret_tr_104(D)
	jmp	.L51	#
.L105:
	.loc 1 835 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp998
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp999
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_726, D.14931
	addq	$12, %rax	#, D.14931
	movl	(%rax), %edx	# *_728, D.14929
	movl	-56(%rbp), %eax	# i, tmp1000
	cltq
	salq	$3, %rax	#, D.14935
	leaq	-8(%rax), %rcx	#, D.14932
	movq	-32(%rbp), %rax	# xmx, tmp1001
	addq	%rcx, %rax	# D.14932, D.14934
	movq	(%rax), %rax	# *_733, D.14931
	addq	$12, %rax	#, D.14931
	movl	(%rax), %ecx	# *_735, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp1002
	movl	364(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L106	#,
	.loc 1 837 0
	movq	-40(%rbp), %rax	# tr, tr.133
	movq	8(%rax), %rdx	# tr.133_739->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp1003
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$10, (%rax)	#, *_742
	.loc 1 838 0
	movq	-40(%rbp), %rax	# tr, tr.134
	movq	16(%rax), %rax	# tr.134_743->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp1004
	movslq	%edx, %rdx	# tmp1004, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_747
	.loc 1 839 0
	movq	-40(%rbp), %rax	# tr, tr.135
	movq	24(%rax), %rax	# tr.135_748->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp1005
	movslq	%edx, %rdx	# tmp1005, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_752
	.loc 1 840 0
	movq	-40(%rbp), %rax	# tr, tr.136
	movq	24(%rax), %rax	# tr.136_753->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp1006
	movslq	%edx, %rdx	# tmp1006, D.14935
	salq	$2, %rdx	#, D.14935
	subq	$4, %rdx	#, D.14932
	leaq	(%rax,%rdx), %rcx	#, D.14931
	movl	-56(%rbp), %eax	# i, i.137
	leal	-1(%rax), %edx	#, tmp1007
	movl	%edx, -56(%rbp)	# tmp1007, i
	movl	%eax, (%rcx)	# i.137, *_758
	jmp	.L107	#
.L106:
	.loc 1 842 0
	movl	-56(%rbp), %eax	# i, tmp1008
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp1009
	addq	%rdx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_763, D.14931
	addq	$12, %rax	#, D.14931
	movl	(%rax), %edx	# *_765, D.14929
	movl	-56(%rbp), %eax	# i, tmp1010
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14935
	movq	-32(%rbp), %rax	# xmx, tmp1011
	addq	%rcx, %rax	# D.14935, D.14934
	movq	(%rax), %rax	# *_769, D.14931
	addq	$4, %rax	#, D.14931
	movl	(%rax), %ecx	# *_771, D.14929
	movq	-72(%rbp), %rax	# hmm, tmp1012
	movl	348(%rax), %eax	# hmm_86(D)->xsc, D.14929
	addl	%ecx, %eax	# D.14929, D.14929
	cmpl	%eax, %edx	# D.14929, D.14929
	jne	.L108	#,
	.loc 1 844 0
	movq	-40(%rbp), %rax	# tr, tr.138
	movq	8(%rax), %rdx	# tr.138_775->statetype, D.14930
	movl	-60(%rbp), %eax	# tpos, tmp1013
	cltq
	addq	%rdx, %rax	# D.14930, D.14930
	movb	$7, (%rax)	#, *_778
	.loc 1 845 0
	movq	-40(%rbp), %rax	# tr, tr.139
	movq	16(%rax), %rax	# tr.139_779->nodeidx, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp1014
	movslq	%edx, %rdx	# tmp1014, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_783
	.loc 1 846 0
	movq	-40(%rbp), %rax	# tr, tr.140
	movq	24(%rax), %rax	# tr.140_784->pos, D.14931
	movl	-60(%rbp), %edx	# tpos, tmp1015
	movslq	%edx, %rdx	# tmp1015, D.14935
	salq	$2, %rdx	#, D.14935
	addq	%rdx, %rax	# D.14935, D.14931
	movl	$0, (%rax)	#, *_788
	jmp	.L107	#
.L108:
	.loc 1 849 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 850 0
	jmp	.L74	#
.L107:
	jmp	.L74	#
.L53:
	.loc 1 853 0
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L74:
	.loc 1 857 0
	addl	$1, -60(%rbp)	#, tpos
	.loc 1 858 0
	movl	-60(%rbp), %eax	# tpos, tmp1016
	cmpl	-64(%rbp), %eax	# curralloc, tmp1016
	jne	.L52	#,
	.loc 1 860 0
	movl	-84(%rbp), %eax	# N, tmp1017
	addl	%eax, -64(%rbp)	# tmp1017, curralloc
	.loc 1 861 0
	movq	-40(%rbp), %rax	# tr, tr.141
	movl	-64(%rbp), %edx	# curralloc, tmp1018
	movl	%edx, %esi	# tmp1018,
	movq	%rax, %rdi	# tr.141,
	call	P7ReallocTrace	#
.L52:
	.loc 1 665 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tr.142
	movq	8(%rax), %rax	# tr.142_63->statetype, D.14930
	movl	-60(%rbp), %edx	# tpos, tmp1019
	movslq	%edx, %rdx	# tmp1019, D.14932
	subq	$1, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14930
	movzbl	(%rax), %eax	# *_67, D.14933
	cmpb	$4, %al	#, D.14933
	jne	.L109	#,
	.loc 1 865 0
	movq	-40(%rbp), %rax	# tr, tr.143
	movl	-60(%rbp), %edx	# tpos, tmp1020
	movl	%edx, (%rax)	# tmp1020, tr.143_792->tlen
	.loc 1 866 0
	movq	-40(%rbp), %rax	# tr, tr.144
	movq	%rax, %rdi	# tr.144,
	call	P7ReverseTrace	#
	.loc 1 867 0
	movq	-40(%rbp), %rdx	# tr, tr.145
	movq	-104(%rbp), %rax	# ret_tr, tmp1021
	movq	%rdx, (%rax)	# tr.145, *ret_tr_104(D)
.L51:
	.loc 1 868 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	P7ViterbiTrace, .-P7ViterbiTrace
	.globl	P7SmallViterbi
	.type	P7SmallViterbi, @function
P7SmallViterbi:
.LFB13:
	.loc 1 897 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# dsq, dsq
	movl	%esi, -76(%rbp)	# L, L
	movq	%rdx, -88(%rbp)	# hmm, hmm
	movq	%rcx, -96(%rbp)	# mx, mx
	movq	%r8, -104(%rbp)	# ret_tr, ret_tr
	.loc 1 915 0
	leaq	-24(%rbp), %rcx	#, tmp305
	movq	-88(%rbp), %rdx	# hmm, tmp306
	movl	-76(%rbp), %esi	# L, tmp307
	movq	-72(%rbp), %rax	# dsq, tmp308
	movq	%rax, %rdi	# tmp308,
	call	P7ParsingViterbi	#
	movss	%xmm0, -80(%rbp)	#, %sfp
	movl	-80(%rbp), %eax	# %sfp, tmp309
	movl	%eax, -36(%rbp)	# tmp309, sc
	.loc 1 919 0
	movq	-24(%rbp), %rax	# ctr, ctr.146
	testq	%rax, %rax	# ctr.146
	je	.L114	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	cmpq	$0, -104(%rbp)	#, ret_tr
	jne	.L115	#,
.L114:
	.loc 1 921 0 is_stmt 1
	movq	-24(%rbp), %rax	# ctr, ctr.147
	movq	%rax, %rdi	# ctr.147,
	call	P7FreeTrace	#
	.loc 1 922 0
	movl	-36(%rbp), %eax	# sc, D.14941
	jmp	.L138	#
.L115:
	.loc 1 929 0
	movq	-24(%rbp), %rax	# ctr, ctr.148
	movl	(%rax), %eax	# ctr.148_24->tlen, D.14942
	movl	%eax, %edx	# D.14942, tmp310
	shrl	$31, %edx	#, tmp310
	addl	%edx, %eax	# tmp310, tmp311
	sarl	%eax	# tmp312
	subl	$1, %eax	#, tmp313
	movl	%eax, -32(%rbp)	# tmp313, ndom
	.loc 1 930 0
	movl	-32(%rbp), %eax	# ndom, tmp314
	cltq
	salq	$3, %rax	#, D.14943
	movq	%rax, %rdx	# D.14943,
	movl	$930, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp315, tarr
	.loc 1 931 0
	movl	$0, -44(%rbp)	#, totlen
	movl	-44(%rbp), %eax	# totlen, tmp316
	movl	%eax, -48(%rbp)	# tmp316, tlen
	.loc 1 932 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L117	#
.L120:
	.loc 1 934 0
	movq	-24(%rbp), %rax	# ctr, ctr.149
	movq	24(%rax), %rax	# ctr.149_34->pos, D.14944
	movl	-60(%rbp), %edx	# i, tmp317
	movslq	%edx, %rdx	# tmp317, D.14945
	addq	$1, %rdx	#, D.14945
	salq	$3, %rdx	#, D.14945
	addq	%rdx, %rax	# D.14945, D.14944
	movl	(%rax), %edx	# *_39, D.14942
	movq	-24(%rbp), %rax	# ctr, ctr.150
	movq	24(%rax), %rax	# ctr.150_41->pos, D.14944
	movl	-60(%rbp), %ecx	# i, tmp318
	movslq	%ecx, %rcx	# tmp318, D.14945
	salq	$3, %rcx	#, D.14945
	addq	$4, %rcx	#, D.14945
	addq	%rcx, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_46, D.14942
	subl	%eax, %edx	# D.14942, tmp319
	movl	%edx, %eax	# tmp319, tmp319
	movl	%eax, -28(%rbp)	# tmp319, sqlen
	.loc 1 936 0
	movq	-88(%rbp), %rax	# hmm, tmp320
	movl	136(%rax), %edx	# hmm_20(D)->M, D.14942
	movl	-28(%rbp), %eax	# sqlen, tmp321
	movl	%edx, %esi	# D.14942,
	movl	%eax, %edi	# tmp321,
	call	P7ViterbiSize	#
	cmpl	$1000, %eax	#, D.14942
	jle	.L118	#,
	.loc 1 937 0
	movl	-60(%rbp), %eax	# i, tmp322
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp323
	leaq	(%rdx,%rax), %rcx	#, D.14946
	movq	-24(%rbp), %rax	# ctr, ctr.151
	movq	24(%rax), %rax	# ctr.151_54->pos, D.14944
	movl	-60(%rbp), %edx	# i, tmp324
	movslq	%edx, %rdx	# tmp324, D.14945
	salq	$3, %rdx	#, D.14945
	addq	$4, %rdx	#, D.14945
	addq	%rdx, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_59, D.14942
	movslq	%eax, %rdx	# D.14942, D.14945
	movq	-72(%rbp), %rax	# dsq, tmp325
	leaq	(%rdx,%rax), %rdi	#, D.14947
	movq	-88(%rbp), %rdx	# hmm, tmp326
	movl	-28(%rbp), %eax	# sqlen, tmp327
	movl	%eax, %esi	# tmp327,
	call	P7WeeViterbi	#
	jmp	.L119	#
.L118:
	.loc 1 939 0
	movl	-60(%rbp), %eax	# i, tmp328
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp329
	leaq	(%rdx,%rax), %rsi	#, D.14946
	movq	-24(%rbp), %rax	# ctr, ctr.152
	movq	24(%rax), %rax	# ctr.152_66->pos, D.14944
	movl	-60(%rbp), %edx	# i, tmp330
	movslq	%edx, %rdx	# tmp330, D.14945
	salq	$3, %rdx	#, D.14945
	addq	$4, %rdx	#, D.14945
	addq	%rdx, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_71, D.14942
	movslq	%eax, %rdx	# D.14942, D.14945
	movq	-72(%rbp), %rax	# dsq, tmp331
	leaq	(%rdx,%rax), %rdi	#, D.14947
	movq	-96(%rbp), %rcx	# mx, tmp332
	movq	-88(%rbp), %rdx	# hmm, tmp333
	movl	-28(%rbp), %eax	# sqlen, tmp334
	movq	%rsi, %r8	# D.14946,
	movl	%eax, %esi	# tmp334,
	call	P7Viterbi	#
.L119:
	.loc 1 941 0
	movl	-60(%rbp), %eax	# i, tmp335
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp336
	addq	%rdx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_78, D.14948
	movl	(%rax), %eax	# _79->tlen, D.14942
	subl	$4, %eax	#, D.14942
	addl	%eax, -48(%rbp)	# D.14942, tlen
	.loc 1 942 0
	movl	-28(%rbp), %eax	# sqlen, tmp337
	addl	%eax, -44(%rbp)	# tmp337, totlen
	.loc 1 932 0
	addl	$1, -60(%rbp)	#, i
.L117:
	.loc 1 932 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp338
	cmpl	-32(%rbp), %eax	# ndom, tmp338
	jl	.L120	#,
	.loc 1 957 0 is_stmt 1
	movl	-32(%rbp), %eax	# ndom, tmp339
	leal	3(%rax), %ecx	#, D.14942
	movl	-44(%rbp), %eax	# totlen, tmp340
	movl	-76(%rbp), %edx	# L, tmp341
	subl	%eax, %edx	# tmp340, D.14942
	movl	%edx, %eax	# D.14942, D.14942
	addl	%ecx, %eax	# D.14942, D.14942
	addl	%eax, -48(%rbp)	# D.14942, tlen
	.loc 1 958 0
	leaq	-16(%rbp), %rdx	#, tmp342
	movl	-48(%rbp), %eax	# tlen, tmp343
	movq	%rdx, %rsi	# tmp342,
	movl	%eax, %edi	# tmp343,
	call	P7AllocTrace	#
	.loc 1 959 0
	movq	-16(%rbp), %rax	# tr, tr.153
	movl	-48(%rbp), %edx	# tlen, tmp344
	movl	%edx, (%rax)	# tmp344, tr.153_89->tlen
	.loc 1 963 0
	movq	-16(%rbp), %rax	# tr, tr.154
	movq	8(%rax), %rax	# tr.154_90->statetype, D.14947
	movb	$4, (%rax)	#, *_91
	.loc 1 964 0
	movq	-16(%rbp), %rax	# tr, tr.155
	movq	16(%rax), %rax	# tr.155_92->nodeidx, D.14944
	movl	$0, (%rax)	#, *_93
	.loc 1 965 0
	movq	-16(%rbp), %rax	# tr, tr.156
	movq	24(%rax), %rax	# tr.156_94->pos, D.14944
	movl	$0, (%rax)	#, *_95
	.loc 1 966 0
	movq	-16(%rbp), %rax	# tr, tr.157
	movq	8(%rax), %rax	# tr.157_96->statetype, D.14947
	addq	$1, %rax	#, D.14947
	movb	$5, (%rax)	#, *_98
	.loc 1 967 0
	movq	-16(%rbp), %rax	# tr, tr.158
	movq	16(%rax), %rax	# tr.158_99->nodeidx, D.14944
	addq	$4, %rax	#, D.14944
	movl	$0, (%rax)	#, *_101
	.loc 1 968 0
	movq	-16(%rbp), %rax	# tr, tr.159
	movq	24(%rax), %rax	# tr.159_102->pos, D.14944
	addq	$4, %rax	#, D.14944
	movl	$0, (%rax)	#, *_104
	.loc 1 969 0
	movl	$2, -52(%rbp)	#, tpos
	.loc 1 971 0
	movl	$1, -56(%rbp)	#, pos
	jmp	.L121	#
.L122:
	.loc 1 973 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.160
	movq	8(%rax), %rdx	# tr.160_111->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp345
	cltq
	addq	%rdx, %rax	# D.14947, D.14947
	movb	$5, (%rax)	#, *_114
	.loc 1 974 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.161
	movq	16(%rax), %rax	# tr.161_115->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp346
	movslq	%edx, %rdx	# tmp346, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_119
	.loc 1 975 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.162
	movq	24(%rax), %rax	# tr.162_120->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp347
	movslq	%edx, %rdx	# tmp347, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rax, %rdx	# D.14944, D.14944
	movl	-56(%rbp), %eax	# pos, tmp348
	movl	%eax, (%rdx)	# tmp348, *_124
	.loc 1 976 0 discriminator 2
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 971 0 discriminator 2
	addl	$1, -56(%rbp)	#, pos
.L121:
	.loc 1 971 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ctr, ctr.163
	movq	24(%rax), %rax	# ctr.163_107->pos, D.14944
	addq	$4, %rax	#, D.14944
	movl	(%rax), %eax	# *_109, D.14942
	cmpl	-56(%rbp), %eax	# pos, D.14942
	jge	.L122	#,
	.loc 1 982 0 is_stmt 1
	movl	$0, -60(%rbp)	#, i
	jmp	.L123	#
.L133:
	.loc 1 984 0
	movl	$2, -40(%rbp)	#, t2
	jmp	.L124	#
.L127:
	.loc 1 986 0
	movq	-16(%rbp), %rax	# tr, tr.164
	movq	8(%rax), %rdx	# tr.164_135->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp349
	cltq
	addq	%rax, %rdx	# D.14945, D.14947
	movl	-60(%rbp), %eax	# i, tmp350
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp351
	addq	%rcx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_141, D.14948
	movq	8(%rax), %rcx	# _142->statetype, D.14947
	movl	-40(%rbp), %eax	# t2, tmp352
	cltq
	addq	%rcx, %rax	# D.14947, D.14947
	movzbl	(%rax), %eax	# *_145, D.14949
	movb	%al, (%rdx)	# D.14949, *_138
	.loc 1 987 0
	movq	-16(%rbp), %rax	# tr, tr.165
	movq	16(%rax), %rax	# tr.165_147->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp353
	movslq	%edx, %rdx	# tmp353, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rax, %rdx	# D.14944, D.14944
	movl	-60(%rbp), %eax	# i, tmp354
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp355
	addq	%rcx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_154, D.14948
	movq	16(%rax), %rax	# _155->nodeidx, D.14944
	movl	-40(%rbp), %ecx	# t2, tmp356
	movslq	%ecx, %rcx	# tmp356, D.14943
	salq	$2, %rcx	#, D.14943
	addq	%rcx, %rax	# D.14943, D.14944
	movl	(%rax), %eax	# *_159, D.14942
	movl	%eax, (%rdx)	# D.14942, *_151
	.loc 1 988 0
	movl	-60(%rbp), %eax	# i, tmp357
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp358
	addq	%rdx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_163, D.14948
	movq	24(%rax), %rax	# _164->pos, D.14944
	movl	-40(%rbp), %edx	# t2, tmp359
	movslq	%edx, %rdx	# tmp359, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	(%rax), %eax	# *_168, D.14942
	testl	%eax, %eax	# D.14942
	jle	.L125	#,
	.loc 1 989 0
	movq	-16(%rbp), %rax	# tr, tr.166
	movq	24(%rax), %rax	# tr.166_170->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp360
	movslq	%edx, %rdx	# tmp360, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rax, %rdx	# D.14944, D.14944
	movl	-60(%rbp), %eax	# i, tmp361
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp362
	addq	%rcx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_177, D.14948
	movq	24(%rax), %rax	# _178->pos, D.14944
	movl	-40(%rbp), %ecx	# t2, tmp363
	movslq	%ecx, %rcx	# tmp363, D.14943
	salq	$2, %rcx	#, D.14943
	addq	%rcx, %rax	# D.14943, D.14944
	movl	(%rax), %ecx	# *_182, D.14942
	movq	-24(%rbp), %rax	# ctr, ctr.167
	movq	24(%rax), %rax	# ctr.167_184->pos, D.14944
	movl	-60(%rbp), %esi	# i, tmp364
	movslq	%esi, %rsi	# tmp364, D.14945
	salq	$3, %rsi	#, D.14945
	addq	$4, %rsi	#, D.14945
	addq	%rsi, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_189, D.14942
	addl	%ecx, %eax	# D.14942, D.14942
	movl	%eax, (%rdx)	# D.14942, *_174
	jmp	.L126	#
.L125:
	.loc 1 991 0
	movq	-16(%rbp), %rax	# tr, tr.168
	movq	24(%rax), %rax	# tr.168_192->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp365
	movslq	%edx, %rdx	# tmp365, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_196
.L126:
	.loc 1 992 0
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 984 0
	addl	$1, -40(%rbp)	#, t2
.L124:
	.loc 1 984 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp366
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp367
	addq	%rdx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_131, D.14948
	movl	(%rax), %eax	# _132->tlen, D.14942
	subl	$2, %eax	#, D.14942
	cmpl	-40(%rbp), %eax	# t2, D.14942
	jg	.L127	#,
	.loc 1 995 0 is_stmt 1
	movq	-16(%rbp), %rax	# tr, tr.169
	movq	8(%rax), %rdx	# tr.169_199->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp368
	cltq
	addq	%rax, %rdx	# D.14945, D.14947
	movl	-32(%rbp), %eax	# ndom, tmp369
	subl	$1, %eax	#, D.14942
	cmpl	-60(%rbp), %eax	# i, D.14942
	jne	.L128	#,
	.loc 1 995 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.170
	jmp	.L129	#
.L128:
	.loc 1 995 0 discriminator 2
	movl	$10, %eax	#, iftmp.170
.L129:
	.loc 1 995 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.170, *_202
	.loc 1 996 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# tr, tr.171
	movq	16(%rax), %rax	# tr.171_206->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp370
	movslq	%edx, %rdx	# tmp370, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_210
	.loc 1 997 0 discriminator 3
	movq	-16(%rbp), %rax	# tr, tr.172
	movq	24(%rax), %rax	# tr.172_211->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp371
	movslq	%edx, %rdx	# tmp371, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_215
	.loc 1 998 0 discriminator 3
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 1000 0 discriminator 3
	movl	-32(%rbp), %eax	# ndom, tmp372
	subl	$1, %eax	#, D.14942
	cmpl	-60(%rbp), %eax	# i, D.14942
	je	.L130	#,
	.loc 1 1001 0
	movq	-24(%rbp), %rax	# ctr, ctr.173
	movq	24(%rax), %rax	# ctr.173_218->pos, D.14944
	movl	-60(%rbp), %edx	# i, tmp373
	movslq	%edx, %rdx	# tmp373, D.14945
	addq	$1, %rdx	#, D.14945
	salq	$3, %rdx	#, D.14945
	addq	%rdx, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_223, D.14942
	addl	$1, %eax	#, tmp374
	movl	%eax, -56(%rbp)	# tmp374, pos
	jmp	.L131	#
.L132:
	.loc 1 1003 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.174
	movq	8(%rax), %rdx	# tr.174_234->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp375
	cltq
	addq	%rdx, %rax	# D.14947, D.14947
	movb	$10, (%rax)	#, *_237
	.loc 1 1004 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.175
	movq	16(%rax), %rax	# tr.175_238->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp376
	movslq	%edx, %rdx	# tmp376, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_242
	.loc 1 1005 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.176
	movq	24(%rax), %rax	# tr.176_243->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp377
	movslq	%edx, %rdx	# tmp377, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rax, %rdx	# D.14944, D.14944
	movl	-56(%rbp), %eax	# pos, tmp378
	movl	%eax, (%rdx)	# tmp378, *_247
	.loc 1 1006 0 discriminator 2
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 1001 0 discriminator 2
	addl	$1, -56(%rbp)	#, pos
.L131:
	.loc 1 1001 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# ctr, ctr.177
	movq	24(%rax), %rax	# ctr.177_226->pos, D.14944
	movl	-60(%rbp), %edx	# i, tmp379
	addl	$1, %edx	#, D.14942
	movslq	%edx, %rdx	# D.14942, D.14945
	salq	$3, %rdx	#, D.14945
	addq	$4, %rdx	#, D.14945
	addq	%rdx, %rax	# D.14945, D.14944
	movl	(%rax), %eax	# *_232, D.14942
	cmpl	-56(%rbp), %eax	# pos, D.14942
	jge	.L132	#,
.L130:
	.loc 1 982 0 is_stmt 1
	addl	$1, -60(%rbp)	#, i
.L123:
	.loc 1 982 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp380
	cmpl	-32(%rbp), %eax	# ndom, tmp380
	jl	.L133	#,
	.loc 1 1011 0 is_stmt 1
	movq	-24(%rbp), %rax	# ctr, ctr.178
	movq	24(%rax), %rax	# ctr.178_251->pos, D.14944
	movl	-32(%rbp), %edx	# ndom, tmp381
	movslq	%edx, %rdx	# tmp381, D.14943
	salq	$3, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	(%rax), %eax	# *_255, D.14942
	addl	$1, %eax	#, tmp382
	movl	%eax, -56(%rbp)	# tmp382, pos
	jmp	.L134	#
.L135:
	.loc 1 1013 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.179
	movq	8(%rax), %rdx	# tr.179_258->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp383
	cltq
	addq	%rdx, %rax	# D.14947, D.14947
	movb	$8, (%rax)	#, *_261
	.loc 1 1014 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.180
	movq	16(%rax), %rax	# tr.180_262->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp384
	movslq	%edx, %rdx	# tmp384, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_266
	.loc 1 1015 0 discriminator 2
	movq	-16(%rbp), %rax	# tr, tr.181
	movq	24(%rax), %rax	# tr.181_267->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp385
	movslq	%edx, %rdx	# tmp385, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rax, %rdx	# D.14944, D.14944
	movl	-56(%rbp), %eax	# pos, tmp386
	movl	%eax, (%rdx)	# tmp386, *_271
	.loc 1 1016 0 discriminator 2
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 1011 0 discriminator 2
	addl	$1, -56(%rbp)	#, pos
.L134:
	.loc 1 1011 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# pos, tmp387
	cmpl	-76(%rbp), %eax	# L, tmp387
	jle	.L135	#,
	.loc 1 1019 0 is_stmt 1
	movq	-16(%rbp), %rax	# tr, tr.182
	movq	8(%rax), %rdx	# tr.182_274->statetype, D.14947
	movl	-52(%rbp), %eax	# tpos, tmp388
	cltq
	addq	%rdx, %rax	# D.14947, D.14947
	movb	$9, (%rax)	#, *_277
	.loc 1 1020 0
	movq	-16(%rbp), %rax	# tr, tr.183
	movq	16(%rax), %rax	# tr.183_278->nodeidx, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp389
	movslq	%edx, %rdx	# tmp389, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_282
	.loc 1 1021 0
	movq	-16(%rbp), %rax	# tr, tr.184
	movq	24(%rax), %rax	# tr.184_283->pos, D.14944
	movl	-52(%rbp), %edx	# tpos, tmp390
	movslq	%edx, %rdx	# tmp390, D.14943
	salq	$2, %rdx	#, D.14943
	addq	%rdx, %rax	# D.14943, D.14944
	movl	$0, (%rax)	#, *_287
	.loc 1 1022 0
	addl	$1, -52(%rbp)	#, tpos
	.loc 1 1024 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L136	#
.L137:
	.loc 1 1024 0 is_stmt 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp391
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14943
	movq	-8(%rbp), %rax	# tarr, tmp392
	addq	%rdx, %rax	# D.14943, D.14946
	movq	(%rax), %rax	# *_292, D.14948
	movq	%rax, %rdi	# D.14948,
	call	P7FreeTrace	#
	addl	$1, -60(%rbp)	#, i
.L136:
	.loc 1 1024 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp393
	cmpl	-32(%rbp), %eax	# ndom, tmp393
	jl	.L137	#,
	.loc 1 1025 0 is_stmt 1
	movq	-8(%rbp), %rax	# tarr, tmp394
	movq	%rax, %rdi	# tmp394,
	call	free	#
	.loc 1 1026 0
	movq	-24(%rbp), %rax	# ctr, ctr.185
	movq	%rax, %rdi	# ctr.185,
	call	P7FreeTrace	#
	.loc 1 1028 0
	movq	-16(%rbp), %rdx	# tr, tr.186
	movq	-104(%rbp), %rax	# ret_tr, tmp395
	movq	%rdx, (%rax)	# tr.186, *ret_tr_23(D)
	.loc 1 1029 0
	movl	-36(%rbp), %eax	# sc, D.14941
.L138:
	.loc 1 1030 0
	movl	%eax, -80(%rbp)	# <retval>, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	P7SmallViterbi, .-P7SmallViterbi
	.globl	P7ParsingViterbi
	.type	P7ParsingViterbi, @function
P7ParsingViterbi:
.LFB14:
	.loc 1 1065 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# dsq, dsq
	movl	%esi, -156(%rbp)	# L, L
	movq	%rdx, -168(%rbp)	# hmm, hmm
	movq	%rcx, -176(%rbp)	# ret_tr, ret_tr
	.loc 1 1081 0
	movq	-168(%rbp), %rax	# hmm, tmp916
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	leaq	-80(%rbp), %rdi	#, tmp917
	leaq	-72(%rbp), %rsi	#, tmp918
	leaq	-88(%rbp), %rcx	#, tmp919
	leaq	-96(%rbp), %rdx	#, tmp920
	movq	%rdi, %r9	# tmp917,
	movq	%rsi, %r8	# tmp918,
	movl	%eax, %esi	# D.14950,
	movl	$2, %edi	#,
	call	AllocPlan7Matrix	#
	movq	%rax, -32(%rbp)	# tmp921, mx
	.loc 1 1082 0
	movq	-168(%rbp), %rax	# hmm, tmp922
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	leaq	-48(%rbp), %rdi	#, tmp923
	leaq	-40(%rbp), %rsi	#, tmp924
	leaq	-56(%rbp), %rcx	#, tmp925
	leaq	-64(%rbp), %rdx	#, tmp926
	movq	%rdi, %r9	# tmp923,
	movq	%rsi, %r8	# tmp924,
	movl	%eax, %esi	# D.14950,
	movl	$2, %edi	#,
	call	AllocPlan7Matrix	#
	movq	%rax, -24(%rbp)	# tmp927, tmx
	.loc 1 1083 0
	movl	-156(%rbp), %eax	# L, tmp928
	addl	$1, %eax	#, D.14950
	cltq
	salq	$2, %rax	#, D.14951
	movq	%rax, %rdx	# D.14951,
	movl	$1083, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp929, btr
	.loc 1 1084 0
	movl	-156(%rbp), %eax	# L, tmp930
	addl	$1, %eax	#, D.14950
	cltq
	salq	$2, %rax	#, D.14951
	movq	%rax, %rdx	# D.14951,
	movl	$1084, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp931, etr
	.loc 1 1088 0
	movq	-96(%rbp), %rax	# xmx, xmx.187
	movq	(%rax), %rax	# *xmx.187_23, D.14952
	addq	$16, %rax	#, D.14952
	movl	$0, (%rax)	#, *_25
	.loc 1 1089 0
	movq	-96(%rbp), %rax	# xmx, xmx.188
	movq	(%rax), %rax	# *xmx.188_26, D.14952
	movq	-168(%rbp), %rdx	# hmm, tmp932
	movl	336(%rdx), %edx	# hmm_9(D)->xsc, D.14950
	movl	%edx, (%rax)	# D.14950, *_27
	.loc 1 1090 0
	movq	-16(%rbp), %rax	# btr, tmp933
	movl	$0, (%rax)	#, *btr_18
	.loc 1 1091 0
	movq	-96(%rbp), %rax	# xmx, xmx.189
	movq	(%rax), %rax	# *xmx.189_29, D.14952
	leaq	4(%rax), %rcx	#, D.14952
	movq	-96(%rbp), %rax	# xmx, xmx.190
	movq	(%rax), %rax	# *xmx.190_32, D.14952
	addq	$8, %rax	#, D.14952
	movq	-96(%rbp), %rdx	# xmx, xmx.191
	movq	(%rdx), %rdx	# *xmx.191_35, D.14952
	addq	$12, %rdx	#, D.14952
	movl	$-987654321, (%rdx)	#, *_37
	movl	(%rdx), %edx	# *_37, D.14950
	movl	%edx, (%rax)	# D.14950, *_34
	movl	(%rax), %eax	# *_34, D.14950
	movl	%eax, (%rcx)	# D.14950, *_31
	.loc 1 1092 0
	movq	-8(%rbp), %rax	# etr, tmp934
	movl	$-1, (%rax)	#, *etr_22
	.loc 1 1093 0
	movl	$0, -128(%rbp)	#, k
	jmp	.L140	#
.L141:
	.loc 1 1094 0 discriminator 2
	movq	-88(%rbp), %rax	# mmx, mmx.192
	movq	(%rax), %rax	# *mmx.192_42, D.14952
	movl	-128(%rbp), %edx	# k, tmp935
	movslq	%edx, %rdx	# tmp935, D.14951
	salq	$2, %rdx	#, D.14951
	leaq	(%rax,%rdx), %rcx	#, D.14952
	movq	-72(%rbp), %rax	# imx, imx.193
	movq	(%rax), %rax	# *imx.193_47, D.14952
	movl	-128(%rbp), %edx	# k, tmp936
	movslq	%edx, %rdx	# tmp936, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movq	-80(%rbp), %rdx	# dmx, dmx.194
	movq	(%rdx), %rdx	# *dmx.194_52, D.14952
	movl	-128(%rbp), %esi	# k, tmp937
	movslq	%esi, %rsi	# tmp937, D.14951
	salq	$2, %rsi	#, D.14951
	addq	%rsi, %rdx	# D.14951, D.14952
	movl	$-987654321, (%rdx)	#, *_56
	movl	(%rdx), %edx	# *_56, D.14950
	movl	%edx, (%rax)	# D.14950, *_51
	movl	(%rax), %eax	# *_51, D.14950
	movl	%eax, (%rcx)	# D.14950, *_46
	.loc 1 1093 0 discriminator 2
	addl	$1, -128(%rbp)	#, k
.L140:
	.loc 1 1093 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# hmm, tmp938
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	cmpl	-128(%rbp), %eax	# k, D.14950
	jge	.L141	#,
	.loc 1 1111 0 is_stmt 1
	movl	$1, -132(%rbp)	#, i
	jmp	.L142	#
.L167:
	.loc 1 1112 0
	movl	-132(%rbp), %eax	# i, tmp940
	cltd
	shrl	$31, %edx	#, tmp942
	addl	%edx, %eax	# tmp942, tmp943
	andl	$1, %eax	#, tmp944
	subl	%edx, %eax	# tmp942, tmp945
	movl	%eax, -120(%rbp)	# tmp945, cur
	.loc 1 1113 0
	cmpl	$0, -120(%rbp)	#, cur
	sete	%al	#, D.14953
	movzbl	%al, %eax	# D.14953, tmp946
	movl	%eax, -112(%rbp)	# tmp946, prv
	.loc 1 1115 0
	movq	-88(%rbp), %rax	# mmx, mmx.195
	movl	-120(%rbp), %edx	# cur, tmp947
	movslq	%edx, %rdx	# tmp947, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rcx	# *_68, D.14952
	movq	-72(%rbp), %rax	# imx, imx.196
	movl	-120(%rbp), %edx	# cur, tmp948
	movslq	%edx, %rdx	# tmp948, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_73, D.14952
	movq	-80(%rbp), %rdx	# dmx, dmx.197
	movl	-120(%rbp), %esi	# cur, tmp949
	movslq	%esi, %rsi	# tmp949, D.14951
	salq	$3, %rsi	#, D.14951
	addq	%rsi, %rdx	# D.14951, D.14954
	movq	(%rdx), %rdx	# *_78, D.14952
	movl	$-987654321, (%rdx)	#, *_79
	movl	(%rdx), %edx	# *_79, D.14950
	movl	%edx, (%rax)	# D.14950, *_74
	movl	(%rax), %eax	# *_74, D.14950
	movl	%eax, (%rcx)	# D.14950, *_69
	.loc 1 1117 0
	movl	$1, -128(%rbp)	#, k
	jmp	.L143	#
.L156:
	.loc 1 1119 0
	movq	-88(%rbp), %rax	# mmx, mmx.198
	movl	-120(%rbp), %edx	# cur, tmp950
	movslq	%edx, %rdx	# tmp950, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_87, D.14952
	movl	-128(%rbp), %edx	# k, tmp951
	movslq	%edx, %rdx	# tmp951, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$-987654321, (%rax)	#, *_91
	.loc 1 1120 0
	movq	-88(%rbp), %rax	# mmx, mmx.199
	movl	-112(%rbp), %edx	# prv, tmp952
	movslq	%edx, %rdx	# tmp952, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_95, D.14952
	movl	-128(%rbp), %edx	# k, tmp953
	movslq	%edx, %rdx	# tmp953, D.14951
	salq	$2, %rdx	#, D.14951
	subq	$4, %rdx	#, D.14955
	addq	%rdx, %rax	# D.14955, D.14952
	movl	(%rax), %edx	# *_100, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp954
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	movq	(%rax), %rax	# *_102, D.14952
	movl	-128(%rbp), %ecx	# k, tmp955
	movslq	%ecx, %rcx	# tmp955, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_107, D.14950
	addl	%edx, %eax	# D.14950, tmp956
	movl	%eax, -108(%rbp)	# tmp956, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L144	#,
	.loc 1 1121 0
	movq	-88(%rbp), %rax	# mmx, mmx.200
	movl	-120(%rbp), %edx	# cur, tmp957
	movslq	%edx, %rdx	# tmp957, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_113, D.14952
	movl	-128(%rbp), %edx	# k, tmp958
	movslq	%edx, %rdx	# tmp958, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp959
	movl	%eax, (%rdx)	# tmp959, *_117
	movq	-56(%rbp), %rax	# mtr, mtr.201
	movl	-120(%rbp), %edx	# cur, tmp960
	movslq	%edx, %rdx	# tmp960, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_121, D.14952
	movl	-128(%rbp), %edx	# k, tmp961
	movslq	%edx, %rdx	# tmp961, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-56(%rbp), %rax	# mtr, mtr.202
	movl	-112(%rbp), %ecx	# prv, tmp962
	movslq	%ecx, %rcx	# tmp962, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_129, D.14952
	movl	-128(%rbp), %ecx	# k, tmp963
	movslq	%ecx, %rcx	# tmp963, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_134, D.14950
	movl	%eax, (%rdx)	# D.14950, *_125
.L144:
	.loc 1 1122 0
	movq	-72(%rbp), %rax	# imx, imx.203
	movl	-112(%rbp), %edx	# prv, tmp964
	movslq	%edx, %rdx	# tmp964, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_139, D.14952
	movl	-128(%rbp), %edx	# k, tmp965
	movslq	%edx, %rdx	# tmp965, D.14951
	salq	$2, %rdx	#, D.14951
	subq	$4, %rdx	#, D.14955
	addq	%rdx, %rax	# D.14955, D.14952
	movl	(%rax), %edx	# *_144, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp966
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$24, %rax	#, D.14954
	movq	(%rax), %rax	# *_147, D.14952
	movl	-128(%rbp), %ecx	# k, tmp967
	movslq	%ecx, %rcx	# tmp967, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_152, D.14950
	addl	%edx, %eax	# D.14950, tmp968
	movl	%eax, -108(%rbp)	# tmp968, sc
	movq	-88(%rbp), %rax	# mmx, mmx.204
	movl	-120(%rbp), %edx	# cur, tmp969
	movslq	%edx, %rdx	# tmp969, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_158, D.14952
	movl	-128(%rbp), %edx	# k, tmp970
	movslq	%edx, %rdx	# tmp970, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_162, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L145	#,
	.loc 1 1123 0
	movq	-88(%rbp), %rax	# mmx, mmx.205
	movl	-120(%rbp), %edx	# cur, tmp971
	movslq	%edx, %rdx	# tmp971, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_167, D.14952
	movl	-128(%rbp), %edx	# k, tmp972
	movslq	%edx, %rdx	# tmp972, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp973
	movl	%eax, (%rdx)	# tmp973, *_171
	movq	-56(%rbp), %rax	# mtr, mtr.206
	movl	-120(%rbp), %edx	# cur, tmp974
	movslq	%edx, %rdx	# tmp974, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_175, D.14952
	movl	-128(%rbp), %edx	# k, tmp975
	movslq	%edx, %rdx	# tmp975, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-40(%rbp), %rax	# itr, itr.207
	movl	-112(%rbp), %ecx	# prv, tmp976
	movslq	%ecx, %rcx	# tmp976, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_183, D.14952
	movl	-128(%rbp), %ecx	# k, tmp977
	movslq	%ecx, %rcx	# tmp977, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_188, D.14950
	movl	%eax, (%rdx)	# D.14950, *_179
.L145:
	.loc 1 1124 0
	movq	-96(%rbp), %rax	# xmx, xmx.208
	movl	-112(%rbp), %edx	# prv, tmp978
	movslq	%edx, %rdx	# tmp978, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_193, D.14952
	movl	(%rax), %edx	# *_194, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp979
	movq	368(%rax), %rax	# hmm_9(D)->bsc, D.14952
	movl	-128(%rbp), %ecx	# k, tmp980
	movslq	%ecx, %rcx	# tmp980, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_199, D.14950
	addl	%edx, %eax	# D.14950, tmp981
	movl	%eax, -108(%rbp)	# tmp981, sc
	movq	-88(%rbp), %rax	# mmx, mmx.209
	movl	-120(%rbp), %edx	# cur, tmp982
	movslq	%edx, %rdx	# tmp982, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_205, D.14952
	movl	-128(%rbp), %edx	# k, tmp983
	movslq	%edx, %rdx	# tmp983, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_209, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L146	#,
	.loc 1 1125 0
	movq	-88(%rbp), %rax	# mmx, mmx.210
	movl	-120(%rbp), %edx	# cur, tmp984
	movslq	%edx, %rdx	# tmp984, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_214, D.14952
	movl	-128(%rbp), %edx	# k, tmp985
	movslq	%edx, %rdx	# tmp985, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp986
	movl	%eax, (%rdx)	# tmp986, *_218
	movq	-56(%rbp), %rax	# mtr, mtr.211
	movl	-120(%rbp), %edx	# cur, tmp987
	movslq	%edx, %rdx	# tmp987, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_222, D.14952
	movl	-128(%rbp), %edx	# k, tmp988
	movslq	%edx, %rdx	# tmp988, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	-132(%rbp), %edx	# i, tmp989
	subl	$1, %edx	#, D.14950
	movl	%edx, (%rax)	# D.14950, *_226
.L146:
	.loc 1 1126 0
	movq	-80(%rbp), %rax	# dmx, dmx.212
	movl	-112(%rbp), %edx	# prv, tmp990
	movslq	%edx, %rdx	# tmp990, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_231, D.14952
	movl	-128(%rbp), %edx	# k, tmp991
	movslq	%edx, %rdx	# tmp991, D.14951
	salq	$2, %rdx	#, D.14951
	subq	$4, %rdx	#, D.14955
	addq	%rdx, %rax	# D.14955, D.14952
	movl	(%rax), %edx	# *_236, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp992
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$40, %rax	#, D.14954
	movq	(%rax), %rax	# *_239, D.14952
	movl	-128(%rbp), %ecx	# k, tmp993
	movslq	%ecx, %rcx	# tmp993, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_244, D.14950
	addl	%edx, %eax	# D.14950, tmp994
	movl	%eax, -108(%rbp)	# tmp994, sc
	movq	-88(%rbp), %rax	# mmx, mmx.213
	movl	-120(%rbp), %edx	# cur, tmp995
	movslq	%edx, %rdx	# tmp995, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_250, D.14952
	movl	-128(%rbp), %edx	# k, tmp996
	movslq	%edx, %rdx	# tmp996, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_254, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L147	#,
	.loc 1 1127 0
	movq	-88(%rbp), %rax	# mmx, mmx.214
	movl	-120(%rbp), %edx	# cur, tmp997
	movslq	%edx, %rdx	# tmp997, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_259, D.14952
	movl	-128(%rbp), %edx	# k, tmp998
	movslq	%edx, %rdx	# tmp998, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp999
	movl	%eax, (%rdx)	# tmp999, *_263
	movq	-56(%rbp), %rax	# mtr, mtr.215
	movl	-120(%rbp), %edx	# cur, tmp1000
	movslq	%edx, %rdx	# tmp1000, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_267, D.14952
	movl	-128(%rbp), %edx	# k, tmp1001
	movslq	%edx, %rdx	# tmp1001, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-48(%rbp), %rax	# dtr, dtr.216
	movl	-112(%rbp), %ecx	# prv, tmp1002
	movslq	%ecx, %rcx	# tmp1002, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_275, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1003
	movslq	%ecx, %rcx	# tmp1003, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_280, D.14950
	movl	%eax, (%rdx)	# D.14950, *_271
.L147:
	.loc 1 1128 0
	movq	-168(%rbp), %rax	# hmm, tmp1004
	movq	320(%rax), %rax	# hmm_9(D)->msc, D.14954
	movl	-132(%rbp), %edx	# i, tmp1005
	movslq	%edx, %rcx	# tmp1005, D.14955
	movq	-152(%rbp), %rdx	# dsq, tmp1006
	addq	%rcx, %rdx	# D.14955, D.14956
	movzbl	(%rdx), %edx	# *_285, D.14957
	movsbq	%dl, %rdx	# D.14957, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_289, D.14952
	movl	-128(%rbp), %edx	# k, tmp1007
	movslq	%edx, %rdx	# tmp1007, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_293, D.14950
	cmpl	$-987654321, %eax	#, D.14950
	je	.L148	#,
	.loc 1 1129 0
	movq	-88(%rbp), %rax	# mmx, mmx.217
	movl	-120(%rbp), %edx	# cur, tmp1008
	movslq	%edx, %rdx	# tmp1008, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_298, D.14952
	movl	-128(%rbp), %edx	# k, tmp1009
	movslq	%edx, %rdx	# tmp1009, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-88(%rbp), %rax	# mmx, mmx.218
	movl	-120(%rbp), %ecx	# cur, tmp1010
	movslq	%ecx, %rcx	# tmp1010, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_306, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1011
	movslq	%ecx, %rcx	# tmp1011, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %ecx	# *_310, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1012
	movq	320(%rax), %rax	# hmm_9(D)->msc, D.14954
	movl	-132(%rbp), %esi	# i, tmp1013
	movslq	%esi, %rdi	# tmp1013, D.14955
	movq	-152(%rbp), %rsi	# dsq, tmp1014
	addq	%rdi, %rsi	# D.14955, D.14956
	movzbl	(%rsi), %esi	# *_314, D.14957
	movsbq	%sil, %rsi	# D.14957, D.14951
	salq	$3, %rsi	#, D.14951
	addq	%rsi, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_318, D.14952
	movl	-128(%rbp), %esi	# k, tmp1015
	movslq	%esi, %rsi	# tmp1015, D.14951
	salq	$2, %rsi	#, D.14951
	addq	%rsi, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_322, D.14950
	addl	%ecx, %eax	# D.14950, D.14950
	movl	%eax, (%rdx)	# D.14950, *_302
	jmp	.L149	#
.L148:
	.loc 1 1131 0
	movq	-88(%rbp), %rax	# mmx, mmx.219
	movl	-120(%rbp), %edx	# cur, tmp1016
	movslq	%edx, %rdx	# tmp1016, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_328, D.14952
	movl	-128(%rbp), %edx	# k, tmp1017
	movslq	%edx, %rdx	# tmp1017, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$-987654321, (%rax)	#, *_332
.L149:
	.loc 1 1134 0
	movq	-80(%rbp), %rax	# dmx, dmx.220
	movl	-120(%rbp), %edx	# cur, tmp1018
	movslq	%edx, %rdx	# tmp1018, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_336, D.14952
	movl	-128(%rbp), %edx	# k, tmp1019
	movslq	%edx, %rdx	# tmp1019, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$-987654321, (%rax)	#, *_340
	.loc 1 1135 0
	movq	-88(%rbp), %rax	# mmx, mmx.221
	movl	-120(%rbp), %edx	# cur, tmp1020
	movslq	%edx, %rdx	# tmp1020, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_344, D.14952
	movl	-128(%rbp), %edx	# k, tmp1021
	movslq	%edx, %rdx	# tmp1021, D.14951
	salq	$2, %rdx	#, D.14951
	subq	$4, %rdx	#, D.14955
	addq	%rdx, %rax	# D.14955, D.14952
	movl	(%rax), %edx	# *_349, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1022
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$16, %rax	#, D.14954
	movq	(%rax), %rax	# *_352, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1023
	movslq	%ecx, %rcx	# tmp1023, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_357, D.14950
	addl	%edx, %eax	# D.14950, tmp1024
	movl	%eax, -108(%rbp)	# tmp1024, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L150	#,
	.loc 1 1136 0
	movq	-80(%rbp), %rax	# dmx, dmx.222
	movl	-120(%rbp), %edx	# cur, tmp1025
	movslq	%edx, %rdx	# tmp1025, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_363, D.14952
	movl	-128(%rbp), %edx	# k, tmp1026
	movslq	%edx, %rdx	# tmp1026, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1027
	movl	%eax, (%rdx)	# tmp1027, *_367
	movq	-48(%rbp), %rax	# dtr, dtr.223
	movl	-120(%rbp), %edx	# cur, tmp1028
	movslq	%edx, %rdx	# tmp1028, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_371, D.14952
	movl	-128(%rbp), %edx	# k, tmp1029
	movslq	%edx, %rdx	# tmp1029, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-56(%rbp), %rax	# mtr, mtr.224
	movl	-120(%rbp), %ecx	# cur, tmp1030
	movslq	%ecx, %rcx	# tmp1030, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_379, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1031
	movslq	%ecx, %rcx	# tmp1031, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_384, D.14950
	movl	%eax, (%rdx)	# D.14950, *_375
.L150:
	.loc 1 1137 0
	movq	-80(%rbp), %rax	# dmx, dmx.225
	movl	-120(%rbp), %edx	# cur, tmp1032
	movslq	%edx, %rdx	# tmp1032, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_389, D.14952
	movl	-128(%rbp), %edx	# k, tmp1033
	movslq	%edx, %rdx	# tmp1033, D.14951
	salq	$2, %rdx	#, D.14951
	subq	$4, %rdx	#, D.14955
	addq	%rdx, %rax	# D.14955, D.14952
	movl	(%rax), %edx	# *_394, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1034
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$48, %rax	#, D.14954
	movq	(%rax), %rax	# *_397, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1035
	movslq	%ecx, %rcx	# tmp1035, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_402, D.14950
	addl	%edx, %eax	# D.14950, tmp1036
	movl	%eax, -108(%rbp)	# tmp1036, sc
	movq	-80(%rbp), %rax	# dmx, dmx.226
	movl	-120(%rbp), %edx	# cur, tmp1037
	movslq	%edx, %rdx	# tmp1037, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_408, D.14952
	movl	-128(%rbp), %edx	# k, tmp1038
	movslq	%edx, %rdx	# tmp1038, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_412, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L151	#,
	.loc 1 1138 0
	movq	-80(%rbp), %rax	# dmx, dmx.227
	movl	-120(%rbp), %edx	# cur, tmp1039
	movslq	%edx, %rdx	# tmp1039, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_417, D.14952
	movl	-128(%rbp), %edx	# k, tmp1040
	movslq	%edx, %rdx	# tmp1040, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1041
	movl	%eax, (%rdx)	# tmp1041, *_421
	movq	-48(%rbp), %rax	# dtr, dtr.228
	movl	-120(%rbp), %edx	# cur, tmp1042
	movslq	%edx, %rdx	# tmp1042, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_425, D.14952
	movl	-128(%rbp), %edx	# k, tmp1043
	movslq	%edx, %rdx	# tmp1043, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-48(%rbp), %rax	# dtr, dtr.229
	movl	-120(%rbp), %ecx	# cur, tmp1044
	movslq	%ecx, %rcx	# tmp1044, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_433, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1045
	movslq	%ecx, %rcx	# tmp1045, D.14951
	salq	$2, %rcx	#, D.14951
	subq	$4, %rcx	#, D.14955
	addq	%rcx, %rax	# D.14955, D.14952
	movl	(%rax), %eax	# *_438, D.14950
	movl	%eax, (%rdx)	# D.14950, *_429
.L151:
	.loc 1 1141 0
	movq	-168(%rbp), %rax	# hmm, tmp1046
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	cmpl	-128(%rbp), %eax	# k, D.14950
	jle	.L152	#,
	.loc 1 1142 0
	movq	-72(%rbp), %rax	# imx, imx.230
	movl	-120(%rbp), %edx	# cur, tmp1047
	movslq	%edx, %rdx	# tmp1047, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_444, D.14952
	movl	-128(%rbp), %edx	# k, tmp1048
	movslq	%edx, %rdx	# tmp1048, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$-987654321, (%rax)	#, *_448
	.loc 1 1143 0
	movq	-88(%rbp), %rax	# mmx, mmx.231
	movl	-112(%rbp), %edx	# prv, tmp1049
	movslq	%edx, %rdx	# tmp1049, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_452, D.14952
	movl	-128(%rbp), %edx	# k, tmp1050
	movslq	%edx, %rdx	# tmp1050, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %edx	# *_456, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1051
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$8, %rax	#, D.14954
	movq	(%rax), %rax	# *_459, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1052
	movslq	%ecx, %rcx	# tmp1052, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_463, D.14950
	addl	%edx, %eax	# D.14950, tmp1053
	movl	%eax, -108(%rbp)	# tmp1053, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L153	#,
	.loc 1 1144 0
	movq	-72(%rbp), %rax	# imx, imx.232
	movl	-120(%rbp), %edx	# cur, tmp1054
	movslq	%edx, %rdx	# tmp1054, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_469, D.14952
	movl	-128(%rbp), %edx	# k, tmp1055
	movslq	%edx, %rdx	# tmp1055, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1056
	movl	%eax, (%rdx)	# tmp1056, *_473
	movq	-40(%rbp), %rax	# itr, itr.233
	movl	-120(%rbp), %edx	# cur, tmp1057
	movslq	%edx, %rdx	# tmp1057, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_477, D.14952
	movl	-128(%rbp), %edx	# k, tmp1058
	movslq	%edx, %rdx	# tmp1058, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-56(%rbp), %rax	# mtr, mtr.234
	movl	-112(%rbp), %ecx	# prv, tmp1059
	movslq	%ecx, %rcx	# tmp1059, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_485, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1060
	movslq	%ecx, %rcx	# tmp1060, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_489, D.14950
	movl	%eax, (%rdx)	# D.14950, *_481
.L153:
	.loc 1 1145 0
	movq	-72(%rbp), %rax	# imx, imx.235
	movl	-112(%rbp), %edx	# prv, tmp1061
	movslq	%edx, %rdx	# tmp1061, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_494, D.14952
	movl	-128(%rbp), %edx	# k, tmp1062
	movslq	%edx, %rdx	# tmp1062, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %edx	# *_498, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1063
	movq	312(%rax), %rax	# hmm_9(D)->tsc, D.14954
	addq	$32, %rax	#, D.14954
	movq	(%rax), %rax	# *_501, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1064
	movslq	%ecx, %rcx	# tmp1064, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_505, D.14950
	addl	%edx, %eax	# D.14950, tmp1065
	movl	%eax, -108(%rbp)	# tmp1065, sc
	movq	-72(%rbp), %rax	# imx, imx.236
	movl	-120(%rbp), %edx	# cur, tmp1066
	movslq	%edx, %rdx	# tmp1066, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_511, D.14952
	movl	-128(%rbp), %edx	# k, tmp1067
	movslq	%edx, %rdx	# tmp1067, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_515, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L154	#,
	.loc 1 1146 0
	movq	-72(%rbp), %rax	# imx, imx.237
	movl	-120(%rbp), %edx	# cur, tmp1068
	movslq	%edx, %rdx	# tmp1068, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_520, D.14952
	movl	-128(%rbp), %edx	# k, tmp1069
	movslq	%edx, %rdx	# tmp1069, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1070
	movl	%eax, (%rdx)	# tmp1070, *_524
	movq	-40(%rbp), %rax	# itr, itr.238
	movl	-120(%rbp), %edx	# cur, tmp1071
	movslq	%edx, %rdx	# tmp1071, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_528, D.14952
	movl	-128(%rbp), %edx	# k, tmp1072
	movslq	%edx, %rdx	# tmp1072, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-40(%rbp), %rax	# itr, itr.239
	movl	-112(%rbp), %ecx	# prv, tmp1073
	movslq	%ecx, %rcx	# tmp1073, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_536, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1074
	movslq	%ecx, %rcx	# tmp1074, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_540, D.14950
	movl	%eax, (%rdx)	# D.14950, *_532
.L154:
	.loc 1 1147 0
	movq	-168(%rbp), %rax	# hmm, tmp1075
	movq	328(%rax), %rax	# hmm_9(D)->isc, D.14954
	movl	-132(%rbp), %edx	# i, tmp1076
	movslq	%edx, %rcx	# tmp1076, D.14955
	movq	-152(%rbp), %rdx	# dsq, tmp1077
	addq	%rcx, %rdx	# D.14955, D.14956
	movzbl	(%rdx), %edx	# *_544, D.14957
	movsbq	%dl, %rdx	# D.14957, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_548, D.14952
	movl	-128(%rbp), %edx	# k, tmp1078
	movslq	%edx, %rdx	# tmp1078, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_552, D.14950
	cmpl	$-987654321, %eax	#, D.14950
	je	.L155	#,
	.loc 1 1148 0
	movq	-72(%rbp), %rax	# imx, imx.240
	movl	-120(%rbp), %edx	# cur, tmp1079
	movslq	%edx, %rdx	# tmp1079, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_557, D.14952
	movl	-128(%rbp), %edx	# k, tmp1080
	movslq	%edx, %rdx	# tmp1080, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movq	-72(%rbp), %rax	# imx, imx.241
	movl	-120(%rbp), %ecx	# cur, tmp1081
	movslq	%ecx, %rcx	# tmp1081, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_565, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1082
	movslq	%ecx, %rcx	# tmp1082, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %ecx	# *_569, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1083
	movq	328(%rax), %rax	# hmm_9(D)->isc, D.14954
	movl	-132(%rbp), %esi	# i, tmp1084
	movslq	%esi, %rdi	# tmp1084, D.14955
	movq	-152(%rbp), %rsi	# dsq, tmp1085
	addq	%rdi, %rsi	# D.14955, D.14956
	movzbl	(%rsi), %esi	# *_573, D.14957
	movsbq	%sil, %rsi	# D.14957, D.14951
	salq	$3, %rsi	#, D.14951
	addq	%rsi, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_577, D.14952
	movl	-128(%rbp), %esi	# k, tmp1086
	movslq	%esi, %rsi	# tmp1086, D.14951
	salq	$2, %rsi	#, D.14951
	addq	%rsi, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_581, D.14950
	addl	%ecx, %eax	# D.14950, D.14950
	movl	%eax, (%rdx)	# D.14950, *_561
	jmp	.L152	#
.L155:
	.loc 1 1150 0
	movq	-72(%rbp), %rax	# imx, imx.242
	movl	-120(%rbp), %edx	# cur, tmp1087
	movslq	%edx, %rdx	# tmp1087, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_587, D.14952
	movl	-128(%rbp), %edx	# k, tmp1088
	movslq	%edx, %rdx	# tmp1088, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$-987654321, (%rax)	#, *_591
.L152:
	.loc 1 1117 0
	addl	$1, -128(%rbp)	#, k
.L143:
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# hmm, tmp1089
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	cmpl	-128(%rbp), %eax	# k, D.14950
	jge	.L156	#,
	.loc 1 1158 0 is_stmt 1
	movq	-96(%rbp), %rax	# xmx, xmx.243
	movl	-120(%rbp), %edx	# cur, tmp1090
	movslq	%edx, %rdx	# tmp1090, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_596, D.14952
	addq	$16, %rax	#, D.14952
	movl	$-987654321, (%rax)	#, *_598
	.loc 1 1159 0
	movq	-96(%rbp), %rax	# xmx, xmx.244
	movl	-112(%rbp), %edx	# prv, tmp1091
	movslq	%edx, %rdx	# tmp1091, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_602, D.14952
	addq	$16, %rax	#, D.14952
	movl	(%rax), %edx	# *_604, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1092
	movl	340(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1093
	movl	%eax, -108(%rbp)	# tmp1093, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L157	#,
	.loc 1 1160 0
	movq	-96(%rbp), %rax	# xmx, xmx.245
	movl	-120(%rbp), %edx	# cur, tmp1094
	movslq	%edx, %rdx	# tmp1094, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_611, D.14952
	leaq	16(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1095
	movl	%eax, (%rdx)	# tmp1095, *_613
.L157:
	.loc 1 1162 0
	movq	-96(%rbp), %rax	# xmx, xmx.246
	movl	-120(%rbp), %edx	# cur, tmp1096
	movslq	%edx, %rdx	# tmp1096, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_617, D.14952
	addq	$4, %rax	#, D.14952
	movl	$-987654321, (%rax)	#, *_619
	.loc 1 1163 0
	movl	$1, -128(%rbp)	#, k
	jmp	.L158	#
.L160:
	.loc 1 1164 0
	movq	-88(%rbp), %rax	# mmx, mmx.247
	movl	-120(%rbp), %edx	# cur, tmp1097
	movslq	%edx, %rdx	# tmp1097, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_625, D.14952
	movl	-128(%rbp), %edx	# k, tmp1098
	movslq	%edx, %rdx	# tmp1098, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %edx	# *_629, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1099
	movq	376(%rax), %rax	# hmm_9(D)->esc, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1100
	movslq	%ecx, %rcx	# tmp1100, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_634, D.14950
	addl	%edx, %eax	# D.14950, tmp1101
	movl	%eax, -108(%rbp)	# tmp1101, sc
	movq	-96(%rbp), %rax	# xmx, xmx.248
	movl	-120(%rbp), %edx	# cur, tmp1102
	movslq	%edx, %rdx	# tmp1102, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_640, D.14952
	addq	$4, %rax	#, D.14952
	movl	(%rax), %eax	# *_642, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L159	#,
	.loc 1 1165 0
	movq	-96(%rbp), %rax	# xmx, xmx.249
	movl	-120(%rbp), %edx	# cur, tmp1103
	movslq	%edx, %rdx	# tmp1103, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_647, D.14952
	leaq	4(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1104
	movl	%eax, (%rdx)	# tmp1104, *_649
	movl	-132(%rbp), %eax	# i, tmp1105
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14951
	movq	-8(%rbp), %rax	# etr, tmp1106
	addq	%rax, %rdx	# tmp1106, D.14952
	movq	-56(%rbp), %rax	# mtr, mtr.250
	movl	-120(%rbp), %ecx	# cur, tmp1107
	movslq	%ecx, %rcx	# tmp1107, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_656, D.14952
	movl	-128(%rbp), %ecx	# k, tmp1108
	movslq	%ecx, %rcx	# tmp1108, D.14951
	salq	$2, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_660, D.14950
	movl	%eax, (%rdx)	# D.14950, *_652
.L159:
	.loc 1 1163 0
	addl	$1, -128(%rbp)	#, k
.L158:
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# hmm, tmp1109
	movl	136(%rax), %eax	# hmm_9(D)->M, D.14950
	cmpl	-128(%rbp), %eax	# k, D.14950
	jge	.L160	#,
	.loc 1 1167 0 is_stmt 1
	movq	-96(%rbp), %rax	# xmx, xmx.251
	movl	-120(%rbp), %edx	# cur, tmp1110
	movslq	%edx, %rdx	# tmp1110, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_666, D.14952
	addq	$12, %rax	#, D.14952
	movl	$-987654321, (%rax)	#, *_668
	.loc 1 1168 0
	movq	-96(%rbp), %rax	# xmx, xmx.252
	movl	-112(%rbp), %edx	# prv, tmp1111
	movslq	%edx, %rdx	# tmp1111, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_672, D.14952
	addq	$12, %rax	#, D.14952
	movl	(%rax), %edx	# *_674, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1112
	movl	364(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1113
	movl	%eax, -108(%rbp)	# tmp1113, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L161	#,
	.loc 1 1169 0
	movq	-96(%rbp), %rax	# xmx, xmx.253
	movl	-120(%rbp), %edx	# cur, tmp1114
	movslq	%edx, %rdx	# tmp1114, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_681, D.14952
	leaq	12(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1115
	movl	%eax, (%rdx)	# tmp1115, *_683
	movq	-64(%rbp), %rax	# xtr, xtr.254
	movl	-120(%rbp), %edx	# cur, tmp1116
	movslq	%edx, %rdx	# tmp1116, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_687, D.14952
	leaq	12(%rax), %rdx	#, D.14952
	movq	-64(%rbp), %rax	# xtr, xtr.255
	movl	-112(%rbp), %ecx	# prv, tmp1117
	movslq	%ecx, %rcx	# tmp1117, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_693, D.14952
	movl	12(%rax), %eax	# MEM[(int *)_694 + 12B], D.14950
	movl	%eax, (%rdx)	# D.14950, *_689
.L161:
	.loc 1 1170 0
	movq	-96(%rbp), %rax	# xmx, xmx.256
	movl	-120(%rbp), %edx	# cur, tmp1118
	movslq	%edx, %rdx	# tmp1118, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_699, D.14952
	addq	$4, %rax	#, D.14952
	movl	(%rax), %edx	# *_701, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1119
	movl	348(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1120
	movl	%eax, -108(%rbp)	# tmp1120, sc
	movq	-96(%rbp), %rax	# xmx, xmx.257
	movl	-120(%rbp), %edx	# cur, tmp1121
	movslq	%edx, %rdx	# tmp1121, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_708, D.14952
	addq	$12, %rax	#, D.14952
	movl	(%rax), %eax	# *_710, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L162	#,
	.loc 1 1171 0
	movq	-96(%rbp), %rax	# xmx, xmx.258
	movl	-120(%rbp), %edx	# cur, tmp1122
	movslq	%edx, %rdx	# tmp1122, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_715, D.14952
	leaq	12(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1123
	movl	%eax, (%rdx)	# tmp1123, *_717
	movq	-64(%rbp), %rax	# xtr, xtr.259
	movl	-120(%rbp), %edx	# cur, tmp1124
	movslq	%edx, %rdx	# tmp1124, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_721, D.14952
	leaq	12(%rax), %rdx	#, D.14952
	movl	-132(%rbp), %eax	# i, tmp1125
	movl	%eax, (%rdx)	# tmp1125, *_723
.L162:
	.loc 1 1173 0
	movq	-96(%rbp), %rax	# xmx, xmx.260
	movl	-120(%rbp), %edx	# cur, tmp1126
	movslq	%edx, %rdx	# tmp1126, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_727, D.14952
	movl	$-987654321, (%rax)	#, *_728
	.loc 1 1174 0
	movq	-96(%rbp), %rax	# xmx, xmx.261
	movl	-120(%rbp), %edx	# cur, tmp1127
	movslq	%edx, %rdx	# tmp1127, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_732, D.14952
	addq	$16, %rax	#, D.14952
	movl	(%rax), %edx	# *_734, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1128
	movl	336(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1129
	movl	%eax, -108(%rbp)	# tmp1129, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L163	#,
	.loc 1 1175 0
	movq	-96(%rbp), %rax	# xmx, xmx.262
	movl	-120(%rbp), %edx	# cur, tmp1130
	movslq	%edx, %rdx	# tmp1130, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_741, D.14952
	movl	-108(%rbp), %edx	# sc, tmp1131
	movl	%edx, (%rax)	# tmp1131, *_742
	movl	-132(%rbp), %eax	# i, tmp1132
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14951
	movq	-16(%rbp), %rax	# btr, tmp1133
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$0, (%rax)	#, *_745
.L163:
	.loc 1 1176 0
	movq	-96(%rbp), %rax	# xmx, xmx.263
	movl	-120(%rbp), %edx	# cur, tmp1134
	movslq	%edx, %rdx	# tmp1134, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_749, D.14952
	addq	$12, %rax	#, D.14952
	movl	(%rax), %edx	# *_751, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1135
	movl	360(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1136
	movl	%eax, -108(%rbp)	# tmp1136, sc
	movq	-96(%rbp), %rax	# xmx, xmx.264
	movl	-120(%rbp), %edx	# cur, tmp1137
	movslq	%edx, %rdx	# tmp1137, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_758, D.14952
	movl	(%rax), %eax	# *_759, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L164	#,
	.loc 1 1177 0
	movq	-96(%rbp), %rax	# xmx, xmx.265
	movl	-120(%rbp), %edx	# cur, tmp1138
	movslq	%edx, %rdx	# tmp1138, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_764, D.14952
	movl	-108(%rbp), %edx	# sc, tmp1139
	movl	%edx, (%rax)	# tmp1139, *_765
	movl	-132(%rbp), %eax	# i, tmp1140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14951
	movq	-16(%rbp), %rax	# btr, tmp1141
	addq	%rax, %rdx	# tmp1141, D.14952
	movq	-64(%rbp), %rax	# xtr, xtr.266
	movl	-120(%rbp), %ecx	# cur, tmp1142
	movslq	%ecx, %rcx	# tmp1142, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_772, D.14952
	movl	12(%rax), %eax	# MEM[(int *)_773 + 12B], D.14950
	movl	%eax, (%rdx)	# D.14950, *_768
.L164:
	.loc 1 1179 0
	movq	-96(%rbp), %rax	# xmx, xmx.267
	movl	-120(%rbp), %edx	# cur, tmp1143
	movslq	%edx, %rdx	# tmp1143, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_778, D.14952
	addq	$8, %rax	#, D.14952
	movl	$-987654321, (%rax)	#, *_780
	.loc 1 1180 0
	movq	-96(%rbp), %rax	# xmx, xmx.268
	movl	-112(%rbp), %edx	# prv, tmp1144
	movslq	%edx, %rdx	# tmp1144, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_784, D.14952
	addq	$8, %rax	#, D.14952
	movl	(%rax), %edx	# *_786, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1145
	movl	356(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1146
	movl	%eax, -108(%rbp)	# tmp1146, sc
	cmpl	$-987654320, -108(%rbp)	#, sc
	jl	.L165	#,
	.loc 1 1181 0
	movq	-96(%rbp), %rax	# xmx, xmx.269
	movl	-120(%rbp), %edx	# cur, tmp1147
	movslq	%edx, %rdx	# tmp1147, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_793, D.14952
	leaq	8(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1148
	movl	%eax, (%rdx)	# tmp1148, *_795
	movq	-64(%rbp), %rax	# xtr, xtr.270
	movl	-120(%rbp), %edx	# cur, tmp1149
	movslq	%edx, %rdx	# tmp1149, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_799, D.14952
	leaq	8(%rax), %rdx	#, D.14952
	movq	-64(%rbp), %rax	# xtr, xtr.271
	movl	-112(%rbp), %ecx	# prv, tmp1150
	movslq	%ecx, %rcx	# tmp1150, D.14951
	salq	$3, %rcx	#, D.14951
	addq	%rcx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_805, D.14952
	movl	8(%rax), %eax	# MEM[(int *)_806 + 8B], D.14950
	movl	%eax, (%rdx)	# D.14950, *_801
.L165:
	.loc 1 1182 0
	movq	-96(%rbp), %rax	# xmx, xmx.272
	movl	-120(%rbp), %edx	# cur, tmp1151
	movslq	%edx, %rdx	# tmp1151, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_811, D.14952
	addq	$4, %rax	#, D.14952
	movl	(%rax), %edx	# *_813, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1152
	movl	344(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1153
	movl	%eax, -108(%rbp)	# tmp1153, sc
	movq	-96(%rbp), %rax	# xmx, xmx.273
	movl	-120(%rbp), %edx	# cur, tmp1154
	movslq	%edx, %rdx	# tmp1154, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_820, D.14952
	addq	$8, %rax	#, D.14952
	movl	(%rax), %eax	# *_822, D.14950
	cmpl	%eax, -108(%rbp)	# D.14950, sc
	jle	.L166	#,
	.loc 1 1183 0
	movq	-96(%rbp), %rax	# xmx, xmx.274
	movl	-120(%rbp), %edx	# cur, tmp1155
	movslq	%edx, %rdx	# tmp1155, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_827, D.14952
	leaq	8(%rax), %rdx	#, D.14952
	movl	-108(%rbp), %eax	# sc, tmp1156
	movl	%eax, (%rdx)	# tmp1156, *_829
	movq	-64(%rbp), %rax	# xtr, xtr.275
	movl	-120(%rbp), %edx	# cur, tmp1157
	movslq	%edx, %rdx	# tmp1157, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_833, D.14952
	leaq	8(%rax), %rdx	#, D.14952
	movl	-132(%rbp), %eax	# i, tmp1158
	movl	%eax, (%rdx)	# tmp1158, *_835
.L166:
	.loc 1 1111 0
	addl	$1, -132(%rbp)	#, i
.L142:
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movl	-132(%rbp), %eax	# i, tmp1159
	cmpl	-156(%rbp), %eax	# L, tmp1159
	jle	.L167	#,
	.loc 1 1186 0 is_stmt 1
	movq	-96(%rbp), %rax	# xmx, xmx.276
	movl	-120(%rbp), %edx	# cur, tmp1160
	movslq	%edx, %rdx	# tmp1160, D.14951
	salq	$3, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14954
	movq	(%rax), %rax	# *_840, D.14952
	addq	$8, %rax	#, D.14952
	movl	(%rax), %edx	# *_842, D.14950
	movq	-168(%rbp), %rax	# hmm, tmp1161
	movl	352(%rax), %eax	# hmm_9(D)->xsc, D.14950
	addl	%edx, %eax	# D.14950, tmp1162
	movl	%eax, -108(%rbp)	# tmp1162, sc
	.loc 1 1196 0
	movl	$2, -116(%rbp)	#, curralloc
	.loc 1 1197 0
	leaq	-104(%rbp), %rdx	#, tmp1163
	movl	-116(%rbp), %eax	# curralloc, tmp1164
	movq	%rdx, %rsi	# tmp1163,
	movl	%eax, %edi	# tmp1164,
	call	P7AllocTrace	#
	.loc 1 1201 0
	movl	$0, -124(%rbp)	#, tpos
	.loc 1 1202 0
	movq	-104(%rbp), %rax	# tr, tr.277
	movq	8(%rax), %rdx	# tr.277_848->statetype, D.14956
	movl	-124(%rbp), %eax	# tpos, tmp1165
	cltq
	addq	%rdx, %rax	# D.14956, D.14956
	movb	$9, (%rax)	#, *_851
	.loc 1 1203 0
	movq	-104(%rbp), %rax	# tr, tr.278
	movq	24(%rax), %rax	# tr.278_852->pos, D.14952
	movl	-124(%rbp), %edx	# tpos, tmp1166
	movslq	%edx, %rdx	# tmp1166, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$0, (%rax)	#, *_856
	.loc 1 1204 0
	movq	-64(%rbp), %rcx	# xtr, xtr.279
	movl	-156(%rbp), %eax	# L, tmp1167
	cltd
	shrl	$31, %edx	#, tmp1169
	addl	%edx, %eax	# tmp1169, tmp1170
	andl	$1, %eax	#, tmp1171
	subl	%edx, %eax	# tmp1169, tmp1172
	cltq
	salq	$3, %rax	#, D.14951
	addq	%rcx, %rax	# xtr.279, D.14954
	movq	(%rax), %rax	# *_861, D.14952
	movl	8(%rax), %eax	# MEM[(int *)_862 + 8B], tmp1173
	movl	%eax, -132(%rbp)	# tmp1173, i
	.loc 1 1205 0
	jmp	.L168	#
.L169:
	.loc 1 1207 0
	addl	$2, -116(%rbp)	#, curralloc
	.loc 1 1208 0
	movq	-104(%rbp), %rax	# tr, tr.280
	movl	-116(%rbp), %edx	# curralloc, tmp1174
	movl	%edx, %esi	# tmp1174,
	movq	%rax, %rdi	# tr.280,
	call	P7ReallocTrace	#
	.loc 1 1210 0
	addl	$1, -124(%rbp)	#, tpos
	.loc 1 1211 0
	movq	-104(%rbp), %rax	# tr, tr.281
	movq	8(%rax), %rdx	# tr.281_867->statetype, D.14956
	movl	-124(%rbp), %eax	# tpos, tmp1175
	cltq
	addq	%rdx, %rax	# D.14956, D.14956
	movb	$7, (%rax)	#, *_870
	.loc 1 1212 0
	movq	-104(%rbp), %rax	# tr, tr.282
	movq	24(%rax), %rax	# tr.282_871->pos, D.14952
	movl	-124(%rbp), %edx	# tpos, tmp1176
	movslq	%edx, %rdx	# tmp1176, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-132(%rbp), %eax	# i, tmp1177
	movl	%eax, (%rdx)	# tmp1177, *_875
	.loc 1 1213 0
	movl	-132(%rbp), %eax	# i, tmp1178
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14951
	movq	-8(%rbp), %rax	# etr, tmp1179
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_878, tmp1180
	movl	%eax, -132(%rbp)	# tmp1180, i
	.loc 1 1215 0
	addl	$1, -124(%rbp)	#, tpos
	.loc 1 1216 0
	movq	-104(%rbp), %rax	# tr, tr.283
	movq	8(%rax), %rdx	# tr.283_881->statetype, D.14956
	movl	-124(%rbp), %eax	# tpos, tmp1181
	cltq
	addq	%rdx, %rax	# D.14956, D.14956
	movb	$6, (%rax)	#, *_884
	.loc 1 1217 0
	movq	-104(%rbp), %rax	# tr, tr.284
	movq	24(%rax), %rax	# tr.284_885->pos, D.14952
	movl	-124(%rbp), %edx	# tpos, tmp1182
	movslq	%edx, %rdx	# tmp1182, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rax, %rdx	# D.14952, D.14952
	movl	-132(%rbp), %eax	# i, tmp1183
	movl	%eax, (%rdx)	# tmp1183, *_889
	.loc 1 1218 0
	movl	-132(%rbp), %eax	# i, tmp1184
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14951
	movq	-16(%rbp), %rax	# btr, tmp1185
	addq	%rdx, %rax	# D.14951, D.14952
	movl	(%rax), %eax	# *_892, tmp1186
	movl	%eax, -132(%rbp)	# tmp1186, i
.L168:
	.loc 1 1205 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, i
	jg	.L169	#,
	.loc 1 1221 0
	addl	$1, -124(%rbp)	#, tpos
	.loc 1 1222 0
	movq	-104(%rbp), %rax	# tr, tr.285
	movq	8(%rax), %rdx	# tr.285_895->statetype, D.14956
	movl	-124(%rbp), %eax	# tpos, tmp1187
	cltq
	addq	%rdx, %rax	# D.14956, D.14956
	movb	$4, (%rax)	#, *_898
	.loc 1 1223 0
	movq	-104(%rbp), %rax	# tr, tr.286
	movq	24(%rax), %rax	# tr.286_899->pos, D.14952
	movl	-124(%rbp), %edx	# tpos, tmp1188
	movslq	%edx, %rdx	# tmp1188, D.14951
	salq	$2, %rdx	#, D.14951
	addq	%rdx, %rax	# D.14951, D.14952
	movl	$0, (%rax)	#, *_903
	.loc 1 1224 0
	movq	-104(%rbp), %rax	# tr, tr.287
	movl	-124(%rbp), %edx	# tpos, tmp1189
	addl	$1, %edx	#, D.14950
	movl	%edx, (%rax)	# D.14950, tr.287_904->tlen
	.loc 1 1225 0
	movq	-104(%rbp), %rax	# tr, tr.288
	movq	%rax, %rdi	# tr.288,
	call	P7ReverseTrace	#
	.loc 1 1227 0
	movq	-32(%rbp), %rax	# mx, tmp1190
	movq	%rax, %rdi	# tmp1190,
	call	FreePlan7Matrix	#
	.loc 1 1228 0
	movq	-24(%rbp), %rax	# tmx, tmp1191
	movq	%rax, %rdi	# tmp1191,
	call	FreePlan7Matrix	#
	.loc 1 1229 0
	movq	-16(%rbp), %rax	# btr, tmp1192
	movq	%rax, %rdi	# tmp1192,
	call	free	#
	.loc 1 1230 0
	movq	-8(%rbp), %rax	# etr, tmp1193
	movq	%rax, %rdi	# tmp1193,
	call	free	#
	.loc 1 1232 0
	movq	-104(%rbp), %rdx	# tr, tr.289
	movq	-176(%rbp), %rax	# ret_tr, tmp1194
	movq	%rdx, (%rax)	# tr.289, *ret_tr_908(D)
	.loc 1 1233 0
	movl	-108(%rbp), %eax	# sc, tmp1195
	movl	%eax, %edi	# tmp1195,
	call	Scorify	#
	movss	%xmm0, -160(%rbp)	#, %sfp
	movl	-160(%rbp), %eax	# %sfp, D.14958
	.loc 1 1234 0
	movl	%eax, -160(%rbp)	# <retval>, %sfp
	movss	-160(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	P7ParsingViterbi, .-P7ParsingViterbi
	.section	.rodata
.LC12:
	.string	"Bogus state %s"
	.text
	.globl	P7WeeViterbi
	.type	P7WeeViterbi, @function
P7WeeViterbi:
.LFB15:
	.loc 1 1264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -104(%rbp)	# dsq, dsq
	movl	%esi, -108(%rbp)	# L, L
	movq	%rdx, -120(%rbp)	# hmm, hmm
	movq	%rcx, -128(%rbp)	# ret_tr, ret_tr
	.loc 1 1282 0
	movl	-108(%rbp), %eax	# L, tmp496
	addl	$1, %eax	#, D.14959
	cltq
	salq	$2, %rax	#, D.14960
	movq	%rax, %rdx	# D.14960,
	movl	$1282, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp497, kassign
	.loc 1 1283 0
	movl	-108(%rbp), %eax	# L, tmp498
	addl	$1, %eax	#, D.14959
	cltq
	movq	%rax, %rdx	# D.14960,
	movl	$1283, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp499, tassign
	.loc 1 1284 0
	movl	-108(%rbp), %eax	# L, tmp500
	addl	$1, %eax	#, D.14959
	cltq
	salq	$2, %rax	#, D.14960
	movq	%rax, %rdx	# D.14960,
	movl	$1284, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp501, endlist
	.loc 1 1285 0
	movl	-108(%rbp), %eax	# L, tmp502
	addl	$1, %eax	#, D.14959
	cltq
	salq	$2, %rax	#, D.14960
	movq	%rax, %rdx	# D.14960,
	movl	$1285, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp503, startlist
	.loc 1 1287 0
	movl	$0, -84(%rbp)	#, lpos
	.loc 1 1288 0
	movl	-84(%rbp), %eax	# lpos, tmp504
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-8(%rbp), %rax	# startlist, tmp505
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$1, (%rax)	#, *_45
	.loc 1 1289 0
	movl	-84(%rbp), %eax	# lpos, tmp506
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-16(%rbp), %rax	# endlist, tmp507
	addq	%rax, %rdx	# tmp507, D.14961
	movl	-108(%rbp), %eax	# L, tmp508
	movl	%eax, (%rdx)	# tmp508, *_48
	.loc 1 1290 0
	movq	-32(%rbp), %rax	# kassign, tmp509
	addq	$4, %rax	#, D.14961
	movl	$1, (%rax)	#, *_49
	.loc 1 1291 0
	movl	-108(%rbp), %eax	# L, tmp510
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp511
	addq	%rax, %rdx	# tmp511, D.14961
	movq	-120(%rbp), %rax	# hmm, tmp512
	movl	136(%rax), %eax	# hmm_53(D)->M, D.14959
	movl	%eax, (%rdx)	# D.14959, *_52
	.loc 1 1292 0
	movq	-24(%rbp), %rax	# tassign, tmp513
	addq	$1, %rax	#, D.14962
	movb	$4, (%rax)	#, *_55
	.loc 1 1293 0
	movl	-108(%rbp), %eax	# L, tmp514
	movslq	%eax, %rdx	# tmp514, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp515
	addq	%rdx, %rax	# D.14963, D.14962
	movb	$9, (%rax)	#, *_57
	.loc 1 1297 0
	jmp	.L172	#
.L183:
	.loc 1 1300 0
	movl	-84(%rbp), %eax	# lpos, tmp516
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-8(%rbp), %rax	# startlist, tmp517
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_61, tmp518
	movl	%eax, -60(%rbp)	# tmp518, s1
	.loc 1 1301 0
	movl	-60(%rbp), %eax	# s1, tmp519
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp520
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_65, tmp521
	movl	%eax, -56(%rbp)	# tmp521, k1
	.loc 1 1302 0
	movl	-60(%rbp), %eax	# s1, tmp522
	movslq	%eax, %rdx	# tmp522, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp523
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_68, tmp524
	movb	%al, -94(%rbp)	# tmp524, t1
	.loc 1 1303 0
	movl	-84(%rbp), %eax	# lpos, tmp525
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-16(%rbp), %rax	# endlist, tmp526
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_72, tmp527
	movl	%eax, -52(%rbp)	# tmp527, s3
	.loc 1 1304 0
	movl	-52(%rbp), %eax	# s3, tmp528
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp529
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_76, tmp530
	movl	%eax, -48(%rbp)	# tmp530, k3
	.loc 1 1305 0
	movl	-52(%rbp), %eax	# s3, tmp531
	movslq	%eax, %rdx	# tmp531, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp532
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_79, tmp533
	movb	%al, -93(%rbp)	# tmp533, t3
	.loc 1 1306 0
	subl	$1, -84(%rbp)	#, lpos
	.loc 1 1308 0
	movsbl	-93(%rbp), %edi	# t3, D.14959
	movsbl	-94(%rbp), %r10d	# t1, D.14959
	movl	-60(%rbp), %r9d	# s1, tmp534
	movl	-56(%rbp), %ecx	# k1, tmp535
	movl	-108(%rbp), %edx	# L, tmp536
	movq	-104(%rbp), %rsi	# dsq, tmp537
	movq	-120(%rbp), %rax	# hmm, tmp538
	leaq	-88(%rbp), %r8	#, tmp539
	movq	%r8, 40(%rsp)	# tmp539,
	leaq	-95(%rbp), %r8	#, tmp540
	movq	%r8, 32(%rsp)	# tmp540,
	leaq	-92(%rbp), %r8	#, tmp541
	movq	%r8, 24(%rsp)	# tmp541,
	movl	-52(%rbp), %r8d	# s3, tmp542
	movl	%r8d, 16(%rsp)	# tmp542,
	movl	%edi, 8(%rsp)	# D.14959,
	movl	-48(%rbp), %edi	# k3, tmp543
	movl	%edi, (%rsp)	# tmp543,
	movl	%r10d, %r8d	# D.14959,
	movq	%rax, %rdi	# tmp538,
	call	get_wee_midpt	#
	movss	%xmm0, -112(%rbp)	#, %sfp
	movl	-112(%rbp), %eax	# %sfp, tmp544
	movl	%eax, -44(%rbp)	# tmp544, sc
	.loc 1 1309 0
	movl	-88(%rbp), %eax	# s2, s2.290
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp545
	addq	%rax, %rdx	# tmp545, D.14961
	movl	-92(%rbp), %eax	# k2, k2.291
	movl	%eax, (%rdx)	# k2.291, *_89
	.loc 1 1310 0
	movl	-88(%rbp), %eax	# s2, s2.292
	movslq	%eax, %rdx	# s2.292, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp546
	addq	%rax, %rdx	# tmp546, D.14962
	movzbl	-95(%rbp), %eax	# t2, t2.293
	movb	%al, (%rdx)	# t2.293, *_93
	.loc 1 1312 0
	cmpb	$4, -94(%rbp)	#, t1
	jne	.L173	#,
	.loc 1 1312 0 is_stmt 0 discriminator 1
	cmpb	$9, -93(%rbp)	#, t3
	jne	.L173	#,
	movl	-44(%rbp), %eax	# sc, tmp547
	movl	%eax, -80(%rbp)	# tmp547, ret_sc
.L173:
	.loc 1 1315 0 is_stmt 1
	movzbl	-95(%rbp), %eax	# t2, t2.294
	cmpb	$5, %al	#, t2.294
	je	.L174	#,
	.loc 1 1315 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# s2, s2.295
	subl	-60(%rbp), %eax	# s1, D.14959
	cmpl	$1, %eax	#, D.14959
	jg	.L175	#,
	movl	-88(%rbp), %eax	# s2, s2.296
	subl	-60(%rbp), %eax	# s1, D.14959
	cmpl	$1, %eax	#, D.14959
	jne	.L174	#,
	cmpb	$4, -94(%rbp)	#, t1
	jne	.L174	#,
.L175:
	.loc 1 1317 0 is_stmt 1
	addl	$1, -84(%rbp)	#, lpos
	.loc 1 1318 0
	movl	-84(%rbp), %eax	# lpos, tmp548
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-8(%rbp), %rax	# startlist, tmp549
	addq	%rax, %rdx	# tmp549, D.14961
	movl	-60(%rbp), %eax	# s1, tmp550
	movl	%eax, (%rdx)	# tmp550, *_104
	.loc 1 1319 0
	movl	-84(%rbp), %eax	# lpos, tmp551
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-16(%rbp), %rax	# endlist, tmp552
	addq	%rax, %rdx	# tmp552, D.14961
	movl	-88(%rbp), %eax	# s2, s2.297
	movl	%eax, (%rdx)	# s2.297, *_107
.L174:
	.loc 1 1322 0
	movzbl	-95(%rbp), %eax	# t2, t2.298
	cmpb	$8, %al	#, t2.298
	je	.L176	#,
	.loc 1 1322 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# s2, s2.299
	movl	-52(%rbp), %edx	# s3, tmp553
	subl	%eax, %edx	# s2.299, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	cmpl	$1, %eax	#, D.14959
	jg	.L177	#,
	movl	-88(%rbp), %eax	# s2, s2.300
	movl	-52(%rbp), %edx	# s3, tmp554
	subl	%eax, %edx	# s2.300, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	cmpl	$1, %eax	#, D.14959
	jne	.L176	#,
	cmpb	$9, -93(%rbp)	#, t3
	jne	.L176	#,
.L177:
	.loc 1 1324 0 is_stmt 1
	addl	$1, -84(%rbp)	#, lpos
	.loc 1 1325 0
	movl	-84(%rbp), %eax	# lpos, tmp555
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-8(%rbp), %rax	# startlist, tmp556
	addq	%rax, %rdx	# tmp556, D.14961
	movl	-88(%rbp), %eax	# s2, s2.301
	movl	%eax, (%rdx)	# s2.301, *_117
	.loc 1 1326 0
	movl	-84(%rbp), %eax	# lpos, tmp557
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-16(%rbp), %rax	# endlist, tmp558
	addq	%rax, %rdx	# tmp558, D.14961
	movl	-52(%rbp), %eax	# s3, tmp559
	movl	%eax, (%rdx)	# tmp559, *_121
.L176:
	.loc 1 1329 0
	movzbl	-95(%rbp), %eax	# t2, t2.302
	cmpb	$5, %al	#, t2.302
	jne	.L178	#,
	.loc 1 1331 0
	jmp	.L179	#
.L180:
	.loc 1 1332 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.303
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp560
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$1, (%rax)	#, *_127
	.loc 1 1333 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.304
	movslq	%eax, %rdx	# s2.304, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp561
	addq	%rdx, %rax	# D.14963, D.14962
	movb	$5, (%rax)	#, *_130
	.loc 1 1331 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.305
	subl	$1, %eax	#, s2.306
	movl	%eax, -88(%rbp)	# s2.306, s2
.L179:
	.loc 1 1331 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# s2, s2.307
	cmpl	-60(%rbp), %eax	# s1, s2.307
	jge	.L180	#,
.L178:
	.loc 1 1336 0 is_stmt 1
	movzbl	-95(%rbp), %eax	# t2, t2.308
	cmpb	$8, %al	#, t2.308
	jne	.L172	#,
	.loc 1 1338 0
	jmp	.L181	#
.L182:
	.loc 1 1339 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.309
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp562
	addq	%rax, %rdx	# tmp562, D.14961
	movq	-120(%rbp), %rax	# hmm, tmp563
	movl	136(%rax), %eax	# hmm_53(D)->M, D.14959
	movl	%eax, (%rdx)	# D.14959, *_138
	.loc 1 1340 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.310
	movslq	%eax, %rdx	# s2.310, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp564
	addq	%rdx, %rax	# D.14963, D.14962
	movb	$8, (%rax)	#, *_142
	.loc 1 1338 0 discriminator 2
	movl	-88(%rbp), %eax	# s2, s2.311
	addl	$1, %eax	#, s2.312
	movl	%eax, -88(%rbp)	# s2.312, s2
.L181:
	.loc 1 1338 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# s2, s2.313
	cmpl	-52(%rbp), %eax	# s3, s2.313
	jle	.L182	#,
.L172:
	.loc 1 1297 0 is_stmt 1 discriminator 1
	cmpl	$0, -84(%rbp)	#, lpos
	jns	.L183	#,
	.loc 1 1357 0
	movl	-108(%rbp), %eax	# L, tmp568
	addl	$6, %eax	#, tmp567
	movl	%eax, -76(%rbp)	# tmp567, tlen
	.loc 1 1358 0
	movl	$1, -72(%rbp)	#, i
	jmp	.L184	#
.L188:
	.loc 1 1360 0
	movl	-72(%rbp), %eax	# i, tmp569
	movslq	%eax, %rdx	# tmp569, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp570
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_148, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L185	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp571
	cltq
	leaq	1(%rax), %rdx	#, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp572
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_152, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L185	#,
	.loc 1 1361 0 is_stmt 1
	movl	-72(%rbp), %eax	# i, tmp573
	cltq
	addq	$1, %rax	#, D.14963
	leaq	0(,%rax,4), %rdx	#, D.14963
	movq	-32(%rbp), %rax	# kassign, tmp574
	addq	%rdx, %rax	# D.14963, D.14961
	movl	(%rax), %edx	# *_157, D.14959
	movl	-72(%rbp), %eax	# i, tmp575
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp576
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_161, D.14959
	subl	%eax, %edx	# D.14959, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	subl	$1, %eax	#, D.14959
	addl	%eax, -76(%rbp)	# D.14959, tlen
.L185:
	.loc 1 1362 0
	movl	-72(%rbp), %eax	# i, tmp577
	movslq	%eax, %rdx	# tmp577, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp578
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_167, D.14964
	cmpb	$5, %al	#, D.14964
	jne	.L186	#,
	.loc 1 1362 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp579
	cltq
	leaq	1(%rax), %rdx	#, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp580
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_171, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L186	#,
	.loc 1 1363 0 is_stmt 1
	movl	-72(%rbp), %eax	# i, tmp581
	cltq
	addq	$1, %rax	#, D.14963
	leaq	0(,%rax,4), %rdx	#, D.14963
	movq	-32(%rbp), %rax	# kassign, tmp582
	addq	%rdx, %rax	# D.14963, D.14961
	movl	(%rax), %eax	# *_176, D.14959
	subl	$1, %eax	#, D.14959
	addl	%eax, -76(%rbp)	# D.14959, tlen
.L186:
	.loc 1 1364 0
	movl	-72(%rbp), %eax	# i, tmp583
	movslq	%eax, %rdx	# tmp583, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp584
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_181, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L187	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp585
	cltq
	leaq	1(%rax), %rdx	#, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp586
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_185, D.14964
	cmpb	$8, %al	#, D.14964
	jne	.L187	#,
	.loc 1 1365 0 is_stmt 1
	movq	-120(%rbp), %rax	# hmm, tmp587
	movl	136(%rax), %edx	# hmm_53(D)->M, D.14959
	movl	-72(%rbp), %eax	# i, tmp588
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp589
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_190, D.14959
	subl	%eax, %edx	# D.14959, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	addl	%eax, -76(%rbp)	# D.14959, tlen
.L187:
	.loc 1 1358 0
	addl	$1, -72(%rbp)	#, i
.L184:
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp590
	cmpl	-108(%rbp), %eax	# L, tmp590
	jl	.L188	#,
	.loc 1 1367 0 is_stmt 1
	movq	-24(%rbp), %rax	# tassign, tmp591
	addq	$1, %rax	#, D.14962
	movzbl	(%rax), %eax	# *_195, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L189	#,
	.loc 1 1367 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# kassign, tmp592
	addq	$4, %rax	#, D.14961
	movl	(%rax), %eax	# *_197, D.14959
	subl	$1, %eax	#, D.14959
	addl	%eax, -76(%rbp)	# D.14959, tlen
.L189:
	.loc 1 1368 0 is_stmt 1
	movl	-108(%rbp), %eax	# L, tmp593
	movslq	%eax, %rdx	# tmp593, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp594
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_202, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L190	#,
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hmm, tmp595
	movl	136(%rax), %edx	# hmm_53(D)->M, D.14959
	movl	-108(%rbp), %eax	# L, tmp596
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp597
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_207, D.14959
	subl	%eax, %edx	# D.14959, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	addl	%eax, -76(%rbp)	# D.14959, tlen
.L190:
	.loc 1 1369 0 is_stmt 1
	leaq	-40(%rbp), %rdx	#, tmp598
	movl	-76(%rbp), %eax	# tlen, tmp599
	movq	%rdx, %rsi	# tmp598,
	movl	%eax, %edi	# tmp599,
	call	P7AllocTrace	#
	.loc 1 1371 0
	movq	-40(%rbp), %rax	# tr, tr.314
	movq	8(%rax), %rax	# tr.314_211->statetype, D.14962
	movb	$4, (%rax)	#, *_212
	.loc 1 1372 0
	movq	-40(%rbp), %rax	# tr, tr.315
	movq	16(%rax), %rax	# tr.315_213->nodeidx, D.14961
	movl	$0, (%rax)	#, *_214
	.loc 1 1373 0
	movq	-40(%rbp), %rax	# tr, tr.316
	movq	24(%rax), %rax	# tr.316_215->pos, D.14961
	movl	$0, (%rax)	#, *_216
	.loc 1 1374 0
	movq	-40(%rbp), %rax	# tr, tr.317
	movq	8(%rax), %rax	# tr.317_217->statetype, D.14962
	addq	$1, %rax	#, D.14962
	movb	$5, (%rax)	#, *_219
	.loc 1 1375 0
	movq	-40(%rbp), %rax	# tr, tr.318
	movq	16(%rax), %rax	# tr.318_220->nodeidx, D.14961
	addq	$4, %rax	#, D.14961
	movl	$0, (%rax)	#, *_222
	.loc 1 1376 0
	movq	-40(%rbp), %rax	# tr, tr.319
	movq	24(%rax), %rax	# tr.319_223->pos, D.14961
	addq	$4, %rax	#, D.14961
	movl	$0, (%rax)	#, *_225
	.loc 1 1377 0
	movl	$2, -64(%rbp)	#, tpos
	.loc 1 1379 0
	movl	$1, -72(%rbp)	#, i
	jmp	.L191	#
.L212:
	.loc 1 1381 0
	movl	-72(%rbp), %eax	# i, tmp600
	movslq	%eax, %rdx	# tmp600, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp601
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_229, D.14964
	movsbl	%al, %eax	# D.14964, D.14959
	cmpl	$3, %eax	#, D.14959
	je	.L193	#,
	cmpl	$3, %eax	#, D.14959
	jg	.L194	#,
	cmpl	$1, %eax	#, D.14959
	je	.L195	#,
	jmp	.L192	#
.L194:
	cmpl	$5, %eax	#, D.14959
	je	.L196	#,
	cmpl	$8, %eax	#, D.14959
	je	.L197	#,
	jmp	.L192	#
.L195:
	.loc 1 1384 0
	movq	-40(%rbp), %rax	# tr, tr.320
	movq	8(%rax), %rax	# tr.320_232->statetype, D.14962
	movl	-64(%rbp), %edx	# tpos, tmp602
	movslq	%edx, %rdx	# tmp602, D.14963
	subq	$1, %rdx	#, D.14963
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_236, D.14964
	cmpb	$5, %al	#, D.14964
	jne	.L198	#,
	.loc 1 1385 0
	movq	-40(%rbp), %rax	# tr, tr.321
	movq	8(%rax), %rdx	# tr.321_238->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp603
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$6, (%rax)	#, *_241
	.loc 1 1386 0
	movq	-40(%rbp), %rax	# tr, tr.322
	movq	16(%rax), %rax	# tr.322_242->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp604
	movslq	%edx, %rdx	# tmp604, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_246
	.loc 1 1387 0
	movq	-40(%rbp), %rax	# tr, tr.323
	movq	24(%rax), %rax	# tr.323_247->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp605
	movslq	%edx, %rdx	# tmp605, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_251
	.loc 1 1388 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1390 0
	movq	-120(%rbp), %rax	# hmm, tmp606
	movl	304(%rax), %edx	# hmm_53(D)->p1, D.14965
	movq	-120(%rbp), %rax	# hmm, tmp607
	movq	208(%rax), %rax	# hmm_53(D)->begin, D.14966
	movl	-72(%rbp), %ecx	# i, tmp608
	movslq	%ecx, %rcx	# tmp608, D.14960
	leaq	0(,%rcx,4), %rsi	#, D.14960
	movq	-32(%rbp), %rcx	# kassign, tmp609
	addq	%rsi, %rcx	# D.14960, D.14961
	movl	(%rcx), %ecx	# *_257, D.14959
	movslq	%ecx, %rcx	# D.14959, D.14960
	salq	$2, %rcx	#, D.14960
	addq	%rcx, %rax	# D.14960, D.14966
	movl	(%rax), %eax	# *_261, D.14965
	movl	%edx, -112(%rbp)	# D.14965, %sfp
	movss	-112(%rbp), %xmm1	# %sfp,
	movl	%eax, -112(%rbp)	# D.14965, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.14959, D.14967
	movsd	.LC8(%rip), %xmm1	#, tmp610
	addsd	%xmm0, %xmm1	# D.14967, D.14967
	movq	-120(%rbp), %rax	# hmm, tmp611
	movq	368(%rax), %rax	# hmm_53(D)->bsc, D.14961
	movl	-72(%rbp), %edx	# i, tmp612
	movslq	%edx, %rdx	# tmp612, D.14960
	leaq	0(,%rdx,4), %rcx	#, D.14960
	movq	-32(%rbp), %rdx	# kassign, tmp613
	addq	%rcx, %rdx	# D.14960, D.14961
	movl	(%rdx), %edx	# *_269, D.14959
	movslq	%edx, %rdx	# D.14959, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_273, D.14959
	cvtsi2sd	%eax, %xmm0	# D.14959, D.14967
	ucomisd	%xmm1, %xmm0	# D.14967, D.14967
	jb	.L198	#,
	.loc 1 1391 0
	movl	$1, -68(%rbp)	#, k
	jmp	.L200	#
.L201:
	.loc 1 1392 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.324
	movq	8(%rax), %rdx	# tr.324_281->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp614
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$2, (%rax)	#, *_284
	.loc 1 1393 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.325
	movq	16(%rax), %rax	# tr.325_285->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp615
	movslq	%edx, %rdx	# tmp615, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-68(%rbp), %eax	# k, tmp616
	movl	%eax, (%rdx)	# tmp616, *_289
	.loc 1 1394 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.326
	movq	24(%rax), %rax	# tr.326_290->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp617
	movslq	%edx, %rdx	# tmp617, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_294
	.loc 1 1395 0 discriminator 2
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1391 0 discriminator 2
	addl	$1, -68(%rbp)	#, k
.L200:
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp618
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp619
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_279, D.14959
	cmpl	-68(%rbp), %eax	# k, D.14959
	jg	.L201	#,
.L198:
	.loc 1 1399 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.327
	movq	8(%rax), %rdx	# tr.327_297->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp620
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$1, (%rax)	#, *_300
	.loc 1 1400 0
	movq	-40(%rbp), %rax	# tr, tr.328
	movq	16(%rax), %rax	# tr.328_301->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp621
	movslq	%edx, %rdx	# tmp621, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp622
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp623
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_308, D.14959
	movl	%eax, (%rdx)	# D.14959, *_305
	.loc 1 1401 0
	movq	-40(%rbp), %rax	# tr, tr.329
	movq	24(%rax), %rax	# tr.329_310->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp624
	movslq	%edx, %rdx	# tmp624, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp625
	movl	%eax, (%rdx)	# tmp625, *_314
	.loc 1 1402 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1404 0
	movl	-72(%rbp), %eax	# i, tmp626
	cmpl	-108(%rbp), %eax	# L, tmp626
	jge	.L202	#,
	.loc 1 1404 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp627
	cltq
	leaq	1(%rax), %rdx	#, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp628
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_318, D.14964
	cmpb	$1, %al	#, D.14964
	jne	.L202	#,
	movl	-72(%rbp), %eax	# i, tmp629
	cltq
	addq	$1, %rax	#, D.14963
	leaq	0(,%rax,4), %rdx	#, D.14963
	movq	-32(%rbp), %rax	# kassign, tmp630
	addq	%rdx, %rax	# D.14963, D.14961
	movl	(%rax), %edx	# *_323, D.14959
	movl	-72(%rbp), %eax	# i, tmp631
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp632
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_327, D.14959
	subl	%eax, %edx	# D.14959, D.14959
	movl	%edx, %eax	# D.14959, D.14959
	cmpl	$1, %eax	#, D.14959
	jle	.L202	#,
	.loc 1 1405 0 is_stmt 1
	movl	-72(%rbp), %eax	# i, tmp633
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp634
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_332, D.14959
	addl	$1, %eax	#, tmp635
	movl	%eax, -68(%rbp)	# tmp635, k
	jmp	.L203	#
.L204:
	.loc 1 1407 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.330
	movq	8(%rax), %rdx	# tr.330_340->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp636
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$2, (%rax)	#, *_343
	.loc 1 1408 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.331
	movq	16(%rax), %rax	# tr.331_344->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp637
	movslq	%edx, %rdx	# tmp637, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-68(%rbp), %eax	# k, tmp638
	movl	%eax, (%rdx)	# tmp638, *_348
	.loc 1 1409 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.332
	movq	24(%rax), %rax	# tr.332_349->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp639
	movslq	%edx, %rdx	# tmp639, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_353
	.loc 1 1410 0 discriminator 2
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1405 0 discriminator 2
	addl	$1, -68(%rbp)	#, k
.L203:
	.loc 1 1405 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp640
	cltq
	addq	$1, %rax	#, D.14963
	leaq	0(,%rax,4), %rdx	#, D.14963
	movq	-32(%rbp), %rax	# kassign, tmp641
	addq	%rdx, %rax	# D.14963, D.14961
	movl	(%rax), %eax	# *_338, D.14959
	cmpl	-68(%rbp), %eax	# k, D.14959
	jg	.L204	#,
.L202:
	.loc 1 1413 0 is_stmt 1
	movl	-72(%rbp), %eax	# i, tmp642
	cmpl	-108(%rbp), %eax	# L, tmp642
	je	.L205	#,
	.loc 1 1413 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp643
	cltq
	leaq	1(%rax), %rdx	#, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp644
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_358, D.14964
	cmpb	$8, %al	#, D.14964
	jne	.L206	#,
.L205:
	.loc 1 1415 0 is_stmt 1
	movq	-120(%rbp), %rax	# hmm, tmp645
	movq	216(%rax), %rax	# hmm_53(D)->end, D.14966
	movl	-72(%rbp), %edx	# i, tmp646
	movslq	%edx, %rdx	# tmp646, D.14960
	salq	$2, %rdx	#, D.14960
	leaq	-4(%rdx), %rcx	#, D.14963
	movq	-32(%rbp), %rdx	# kassign, tmp647
	addq	%rcx, %rdx	# D.14963, D.14961
	movl	(%rdx), %edx	# *_364, D.14959
	movslq	%edx, %rdx	# D.14959, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14966
	movl	(%rax), %eax	# *_368, D.14965
	movss	.LC10(%rip), %xmm1	#,
	movl	%eax, -112(%rbp)	# D.14965, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.14959, D.14967
	movsd	.LC8(%rip), %xmm1	#, tmp648
	addsd	%xmm0, %xmm1	# D.14967, D.14967
	movq	-120(%rbp), %rax	# hmm, tmp649
	movq	376(%rax), %rax	# hmm_53(D)->esc, D.14961
	movl	-72(%rbp), %edx	# i, tmp650
	movslq	%edx, %rdx	# tmp650, D.14960
	salq	$2, %rdx	#, D.14960
	leaq	-4(%rdx), %rcx	#, D.14963
	movq	-32(%rbp), %rdx	# kassign, tmp651
	addq	%rcx, %rdx	# D.14963, D.14961
	movl	(%rdx), %edx	# *_377, D.14959
	movslq	%edx, %rdx	# D.14959, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_381, D.14959
	cvtsi2sd	%eax, %xmm0	# D.14959, D.14967
	ucomisd	%xmm1, %xmm0	# D.14967, D.14967
	jb	.L207	#,
	.loc 1 1416 0
	movl	-72(%rbp), %eax	# i, tmp652
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp653
	addq	%rdx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_386, D.14959
	addl	$1, %eax	#, tmp654
	movl	%eax, -68(%rbp)	# tmp654, k
	jmp	.L209	#
.L210:
	.loc 1 1418 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.333
	movq	8(%rax), %rdx	# tr.333_390->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp655
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$2, (%rax)	#, *_393
	.loc 1 1419 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.334
	movq	16(%rax), %rax	# tr.334_394->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp656
	movslq	%edx, %rdx	# tmp656, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-68(%rbp), %eax	# k, tmp657
	movl	%eax, (%rdx)	# tmp657, *_398
	.loc 1 1420 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tr.335
	movq	24(%rax), %rax	# tr.335_399->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp658
	movslq	%edx, %rdx	# tmp658, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_403
	.loc 1 1421 0 discriminator 2
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1416 0 discriminator 2
	addl	$1, -68(%rbp)	#, k
.L209:
	.loc 1 1416 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# hmm, tmp659
	movl	136(%rax), %eax	# hmm_53(D)->M, D.14959
	cmpl	-68(%rbp), %eax	# k, D.14959
	jge	.L210	#,
.L207:
	.loc 1 1424 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.336
	movq	8(%rax), %rdx	# tr.336_406->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp660
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$7, (%rax)	#, *_409
	.loc 1 1425 0
	movq	-40(%rbp), %rax	# tr, tr.337
	movq	16(%rax), %rax	# tr.337_410->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp661
	movslq	%edx, %rdx	# tmp661, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_414
	.loc 1 1426 0
	movq	-40(%rbp), %rax	# tr, tr.338
	movq	24(%rax), %rax	# tr.338_415->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp662
	movslq	%edx, %rdx	# tmp662, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_419
	.loc 1 1427 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1429 0
	movq	-40(%rbp), %rax	# tr, tr.339
	movq	8(%rax), %rdx	# tr.339_421->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp663
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$8, (%rax)	#, *_424
	.loc 1 1430 0
	movq	-40(%rbp), %rax	# tr, tr.340
	movq	16(%rax), %rax	# tr.340_425->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp664
	movslq	%edx, %rdx	# tmp664, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_429
	.loc 1 1431 0
	movq	-40(%rbp), %rax	# tr, tr.341
	movq	24(%rax), %rax	# tr.341_430->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp665
	movslq	%edx, %rdx	# tmp665, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_434
	.loc 1 1432 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1434 0
	jmp	.L211	#
.L206:
	jmp	.L211	#
.L193:
	.loc 1 1437 0
	movq	-40(%rbp), %rax	# tr, tr.342
	movq	8(%rax), %rdx	# tr.342_436->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp666
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$3, (%rax)	#, *_439
	.loc 1 1438 0
	movq	-40(%rbp), %rax	# tr, tr.343
	movq	16(%rax), %rax	# tr.343_440->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp667
	movslq	%edx, %rdx	# tmp667, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp668
	cltq
	leaq	0(,%rax,4), %rcx	#, D.14960
	movq	-32(%rbp), %rax	# kassign, tmp669
	addq	%rcx, %rax	# D.14960, D.14961
	movl	(%rax), %eax	# *_447, D.14959
	movl	%eax, (%rdx)	# D.14959, *_444
	.loc 1 1439 0
	movq	-40(%rbp), %rax	# tr, tr.344
	movq	24(%rax), %rax	# tr.344_449->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp670
	movslq	%edx, %rdx	# tmp670, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp671
	movl	%eax, (%rdx)	# tmp671, *_453
	.loc 1 1440 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1441 0
	jmp	.L211	#
.L196:
	.loc 1 1444 0
	movq	-40(%rbp), %rax	# tr, tr.345
	movq	8(%rax), %rdx	# tr.345_455->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp672
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$5, (%rax)	#, *_458
	.loc 1 1445 0
	movq	-40(%rbp), %rax	# tr, tr.346
	movq	16(%rax), %rax	# tr.346_459->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp673
	movslq	%edx, %rdx	# tmp673, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_463
	.loc 1 1446 0
	movq	-40(%rbp), %rax	# tr, tr.347
	movq	24(%rax), %rax	# tr.347_464->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp674
	movslq	%edx, %rdx	# tmp674, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp675
	movl	%eax, (%rdx)	# tmp675, *_468
	.loc 1 1447 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1448 0
	jmp	.L211	#
.L197:
	.loc 1 1451 0
	movq	-40(%rbp), %rax	# tr, tr.348
	movq	8(%rax), %rdx	# tr.348_470->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp676
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$8, (%rax)	#, *_473
	.loc 1 1452 0
	movq	-40(%rbp), %rax	# tr, tr.349
	movq	16(%rax), %rax	# tr.349_474->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp677
	movslq	%edx, %rdx	# tmp677, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_478
	.loc 1 1453 0
	movq	-40(%rbp), %rax	# tr, tr.350
	movq	24(%rax), %rax	# tr.350_479->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp678
	movslq	%edx, %rdx	# tmp678, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rax, %rdx	# D.14961, D.14961
	movl	-72(%rbp), %eax	# i, tmp679
	movl	%eax, (%rdx)	# tmp679, *_483
	.loc 1 1454 0
	addl	$1, -64(%rbp)	#, tpos
	.loc 1 1455 0
	jmp	.L211	#
.L192:
	.loc 1 1457 0
	movl	-72(%rbp), %eax	# i, tmp680
	movslq	%eax, %rdx	# tmp680, D.14963
	movq	-24(%rbp), %rax	# tassign, tmp681
	addq	%rdx, %rax	# D.14963, D.14962
	movzbl	(%rax), %eax	# *_486, D.14964
	movsbl	%al, %eax	# D.14964, D.14959
	movl	%eax, %edi	# D.14959,
	call	Statetype	#
	movq	%rax, %rsi	# D.14962,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L211:
	.loc 1 1379 0
	addl	$1, -72(%rbp)	#, i
.L191:
	.loc 1 1379 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp682
	cmpl	-108(%rbp), %eax	# L, tmp682
	jle	.L212	#,
	.loc 1 1461 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tr.351
	movq	8(%rax), %rdx	# tr.351_491->statetype, D.14962
	movl	-64(%rbp), %eax	# tpos, tmp683
	cltq
	addq	%rdx, %rax	# D.14962, D.14962
	movb	$9, (%rax)	#, *_494
	.loc 1 1462 0
	movq	-40(%rbp), %rax	# tr, tr.352
	movq	16(%rax), %rax	# tr.352_495->nodeidx, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp684
	movslq	%edx, %rdx	# tmp684, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_499
	.loc 1 1463 0
	movq	-40(%rbp), %rax	# tr, tr.353
	movq	24(%rax), %rax	# tr.353_500->pos, D.14961
	movl	-64(%rbp), %edx	# tpos, tmp685
	movslq	%edx, %rdx	# tmp685, D.14960
	salq	$2, %rdx	#, D.14960
	addq	%rdx, %rax	# D.14960, D.14961
	movl	$0, (%rax)	#, *_504
	.loc 1 1464 0
	movq	-40(%rbp), %rax	# tr, tr.354
	movl	-64(%rbp), %edx	# tpos, tmp686
	addl	$1, %edx	#, D.14959
	movl	%edx, (%rax)	# D.14959, tr.354_505->tlen
	.loc 1 1466 0
	movq	-40(%rbp), %rdx	# tr, tr.355
	movq	-128(%rbp), %rax	# ret_tr, tmp687
	movq	%rdx, (%rax)	# tr.355, *ret_tr_508(D)
	.loc 1 1468 0
	movq	-32(%rbp), %rax	# kassign, tmp688
	movq	%rax, %rdi	# tmp688,
	call	free	#
	.loc 1 1469 0
	movq	-24(%rbp), %rax	# tassign, tmp689
	movq	%rax, %rdi	# tmp689,
	call	free	#
	.loc 1 1470 0
	movq	-8(%rbp), %rax	# startlist, tmp690
	movq	%rax, %rdi	# tmp690,
	call	free	#
	.loc 1 1471 0
	movq	-16(%rbp), %rax	# endlist, tmp691
	movq	%rax, %rdi	# tmp691,
	call	free	#
	.loc 1 1472 0
	movl	-80(%rbp), %eax	# ret_sc, D.14965
	.loc 1 1473 0
	movl	%eax, -112(%rbp)	# <retval>, %sfp
	movss	-112(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	P7WeeViterbi, .-P7WeeViterbi
	.globl	Plan7ESTViterbi
	.type	Plan7ESTViterbi, @function
Plan7ESTViterbi:
.LFB16:
	.loc 1 1484 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# dsq, dsq
	movl	%esi, -76(%rbp)	# L, L
	movq	%rdx, -88(%rbp)	# hmm, hmm
	movq	%rcx, -96(%rbp)	# ret_mx, ret_mx
	.loc 1 1496 0
	movq	-88(%rbp), %rax	# hmm, tmp1104
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	movl	-76(%rbp), %edx	# L, tmp1105
	leal	1(%rdx), %edi	#, D.14970
	leaq	-16(%rbp), %r8	#, tmp1106
	leaq	-24(%rbp), %rsi	#, tmp1107
	leaq	-32(%rbp), %rcx	#, tmp1108
	leaq	-40(%rbp), %rdx	#, tmp1109
	movq	%r8, %r9	# tmp1106,
	movq	%rsi, %r8	# tmp1107,
	movl	%eax, %esi	# D.14970,
	call	AllocPlan7Matrix	#
	movq	%rax, -8(%rbp)	# tmp1110, mx
	.loc 1 1503 0
	movq	-40(%rbp), %rax	# xmx, xmx.356
	movq	(%rax), %rax	# *xmx.356_13, D.14971
	addq	$16, %rax	#, D.14971
	movl	$0, (%rax)	#, *_15
	.loc 1 1504 0
	movq	-40(%rbp), %rax	# xmx, xmx.357
	movq	(%rax), %rax	# *xmx.357_16, D.14971
	movq	-88(%rbp), %rdx	# hmm, tmp1111
	movl	336(%rdx), %edx	# hmm_8(D)->xsc, D.14970
	movl	%edx, (%rax)	# D.14970, *_17
	.loc 1 1505 0
	movq	-40(%rbp), %rax	# xmx, xmx.358
	movq	(%rax), %rax	# *xmx.358_19, D.14971
	leaq	4(%rax), %rcx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.359
	movq	(%rax), %rax	# *xmx.359_22, D.14971
	addq	$8, %rax	#, D.14971
	movq	-40(%rbp), %rdx	# xmx, xmx.360
	movq	(%rdx), %rdx	# *xmx.360_25, D.14971
	addq	$12, %rdx	#, D.14971
	movl	$-987654321, (%rdx)	#, *_27
	movl	(%rdx), %edx	# *_27, D.14970
	movl	%edx, (%rax)	# D.14970, *_24
	movl	(%rax), %eax	# *_24, D.14970
	movl	%eax, (%rcx)	# D.14970, *_21
	.loc 1 1506 0
	movl	$0, -52(%rbp)	#, k
	jmp	.L217	#
.L218:
	.loc 1 1507 0 discriminator 2
	movq	-32(%rbp), %rax	# mmx, mmx.361
	movq	(%rax), %rax	# *mmx.361_32, D.14971
	movl	-52(%rbp), %edx	# k, tmp1112
	movslq	%edx, %rdx	# tmp1112, D.14972
	salq	$2, %rdx	#, D.14972
	leaq	(%rax,%rdx), %rcx	#, D.14971
	movq	-24(%rbp), %rax	# imx, imx.362
	movq	(%rax), %rax	# *imx.362_37, D.14971
	movl	-52(%rbp), %edx	# k, tmp1113
	movslq	%edx, %rdx	# tmp1113, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movq	-16(%rbp), %rdx	# dmx, dmx.363
	movq	(%rdx), %rdx	# *dmx.363_42, D.14971
	movl	-52(%rbp), %esi	# k, tmp1114
	movslq	%esi, %rsi	# tmp1114, D.14972
	salq	$2, %rsi	#, D.14972
	addq	%rsi, %rdx	# D.14972, D.14971
	movl	$-987654321, (%rdx)	#, *_46
	movl	(%rdx), %edx	# *_46, D.14970
	movl	%edx, (%rax)	# D.14970, *_41
	movl	(%rax), %eax	# *_41, D.14970
	movl	%eax, (%rcx)	# D.14970, *_36
	.loc 1 1506 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L217:
	.loc 1 1506 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# hmm, tmp1115
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	cmpl	-52(%rbp), %eax	# k, D.14970
	jge	.L218	#,
	.loc 1 1512 0 is_stmt 1
	movq	-40(%rbp), %rax	# xmx, xmx.364
	addq	$8, %rax	#, D.14973
	movq	(%rax), %rax	# *_51, D.14971
	leaq	16(%rax), %rdx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.365
	movq	(%rax), %rax	# *xmx.365_54, D.14971
	addq	$16, %rax	#, D.14971
	movl	(%rax), %ecx	# *_56, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1116
	movl	340(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_53
	.loc 1 1513 0
	movq	-40(%rbp), %rax	# xmx, xmx.366
	addq	$8, %rax	#, D.14973
	movq	(%rax), %rax	# *_61, D.14971
	movq	-40(%rbp), %rdx	# xmx, xmx.367
	addq	$8, %rdx	#, D.14973
	movq	(%rdx), %rdx	# *_64, D.14971
	addq	$16, %rdx	#, D.14971
	movl	(%rdx), %ecx	# *_66, D.14970
	movq	-88(%rbp), %rdx	# hmm, tmp1117
	movl	336(%rdx), %edx	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %edx	# D.14970, D.14970
	movl	%edx, (%rax)	# D.14970, *_62
	.loc 1 1514 0
	movq	-40(%rbp), %rax	# xmx, xmx.368
	movq	(%rax), %rax	# *xmx.368_70, D.14971
	leaq	4(%rax), %rcx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.369
	movq	(%rax), %rax	# *xmx.369_73, D.14971
	addq	$8, %rax	#, D.14971
	movq	-40(%rbp), %rdx	# xmx, xmx.370
	movq	(%rdx), %rdx	# *xmx.370_76, D.14971
	addq	$12, %rdx	#, D.14971
	movl	$-987654321, (%rdx)	#, *_78
	movl	(%rdx), %edx	# *_78, D.14970
	movl	%edx, (%rax)	# D.14970, *_75
	movl	(%rax), %eax	# *_75, D.14970
	movl	%eax, (%rcx)	# D.14970, *_72
	.loc 1 1515 0
	movl	$0, -52(%rbp)	#, k
	jmp	.L219	#
.L220:
	.loc 1 1516 0 discriminator 2
	movq	-32(%rbp), %rax	# mmx, mmx.371
	movq	(%rax), %rax	# *mmx.371_83, D.14971
	movl	-52(%rbp), %edx	# k, tmp1118
	movslq	%edx, %rdx	# tmp1118, D.14972
	salq	$2, %rdx	#, D.14972
	leaq	(%rax,%rdx), %rcx	#, D.14971
	movq	-24(%rbp), %rax	# imx, imx.372
	movq	(%rax), %rax	# *imx.372_88, D.14971
	movl	-52(%rbp), %edx	# k, tmp1119
	movslq	%edx, %rdx	# tmp1119, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movq	-16(%rbp), %rdx	# dmx, dmx.373
	movq	(%rdx), %rdx	# *dmx.373_93, D.14971
	movl	-52(%rbp), %esi	# k, tmp1120
	movslq	%esi, %rsi	# tmp1120, D.14972
	salq	$2, %rsi	#, D.14972
	addq	%rsi, %rdx	# D.14972, D.14971
	movl	$-987654321, (%rdx)	#, *_97
	movl	(%rdx), %edx	# *_97, D.14970
	movl	%edx, (%rax)	# D.14970, *_92
	movl	(%rax), %eax	# *_92, D.14970
	movl	%eax, (%rcx)	# D.14970, *_87
	.loc 1 1515 0 discriminator 2
	addl	$1, -52(%rbp)	#, k
.L219:
	.loc 1 1515 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# hmm, tmp1121
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	cmpl	-52(%rbp), %eax	# k, D.14970
	jge	.L220	#,
	.loc 1 1523 0 is_stmt 1
	movl	$2, -56(%rbp)	#, i
	jmp	.L221	#
.L251:
	.loc 1 1524 0
	movq	-32(%rbp), %rax	# mmx, mmx.374
	movl	-56(%rbp), %edx	# i, tmp1122
	movslq	%edx, %rdx	# tmp1122, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rcx	# *_106, D.14971
	movq	-24(%rbp), %rax	# imx, imx.375
	movl	-56(%rbp), %edx	# i, tmp1123
	movslq	%edx, %rdx	# tmp1123, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_111, D.14971
	movq	-16(%rbp), %rdx	# dmx, dmx.376
	movl	-56(%rbp), %esi	# i, tmp1124
	movslq	%esi, %rsi	# tmp1124, D.14972
	salq	$3, %rsi	#, D.14972
	addq	%rsi, %rdx	# D.14972, D.14973
	movq	(%rdx), %rdx	# *_116, D.14971
	movl	$-987654321, (%rdx)	#, *_117
	movl	(%rdx), %edx	# *_117, D.14970
	movl	%edx, (%rax)	# D.14970, *_112
	movl	(%rax), %eax	# *_112, D.14970
	movl	%eax, (%rcx)	# D.14970, *_107
	.loc 1 1527 0
	cmpl	$2, -56(%rbp)	#, i
	jle	.L222	#,
	.loc 1 1528 0
	movl	-56(%rbp), %eax	# i, tmp1125
	cltq
	leaq	-2(%rax), %rdx	#, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1126
	addq	%rdx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_123, D.14976
	cmpb	$3, %al	#, D.14976
	jg	.L223	#,
	.loc 1 1528 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp1127
	cltq
	leaq	-1(%rax), %rdx	#, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1128
	addq	%rdx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_127, D.14976
	cmpb	$3, %al	#, D.14976
	jg	.L223	#,
	movl	-56(%rbp), %eax	# i, tmp1129
	movslq	%eax, %rdx	# tmp1129, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1130
	addq	%rdx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_130, D.14976
	cmpb	$3, %al	#, D.14976
	jg	.L223	#,
	.loc 1 1529 0 is_stmt 1
	movl	-56(%rbp), %eax	# i, tmp1131
	cltq
	leaq	-2(%rax), %rdx	#, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1132
	addq	%rdx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_134, D.14976
	movsbl	%al, %eax	# D.14976, D.14970
	leal	0(,%rax,4), %edx	#, D.14970
	movl	-56(%rbp), %eax	# i, tmp1133
	cltq
	leaq	-1(%rax), %rcx	#, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1134
	addq	%rcx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_140, D.14976
	movsbl	%al, %eax	# D.14976, D.14970
	addl	%edx, %eax	# D.14970, D.14970
	leal	0(,%rax,4), %ecx	#, D.14970
	movl	-56(%rbp), %eax	# i, tmp1135
	movslq	%eax, %rdx	# tmp1135, D.14974
	movq	-72(%rbp), %rax	# dsq, tmp1136
	addq	%rdx, %rax	# D.14974, D.14975
	movzbl	(%rax), %eax	# *_146, D.14976
	movsbl	%al, %eax	# D.14976, D.14970
	addl	%ecx, %eax	# D.14970, tmp1137
	movl	%eax, -48(%rbp)	# tmp1137, codon
	jmp	.L222	#
.L223:
	.loc 1 1531 0
	movl	$64, -48(%rbp)	#, codon
.L222:
	.loc 1 1534 0
	movl	$1, -52(%rbp)	#, k
	jmp	.L224	#
.L244:
	.loc 1 1536 0
	cmpl	$2, -56(%rbp)	#, i
	jle	.L225	#,
	.loc 1 1537 0
	movq	-32(%rbp), %rax	# mmx, mmx.377
	movl	-56(%rbp), %edx	# i, tmp1138
	movslq	%edx, %rdx	# tmp1138, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_156, D.14971
	movl	-52(%rbp), %edx	# k, tmp1139
	movslq	%edx, %rdx	# tmp1139, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-32(%rbp), %rax	# mmx, mmx.378
	movl	-56(%rbp), %ecx	# i, tmp1140
	movslq	%ecx, %rcx	# tmp1140, D.14972
	salq	$3, %rcx	#, D.14972
	subq	$24, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_165, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1141
	movslq	%ecx, %rcx	# tmp1141, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %ecx	# *_170, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1142
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	movq	(%rax), %rax	# *_172, D.14971
	movl	-52(%rbp), %esi	# k, tmp1143
	movslq	%esi, %rsi	# tmp1143, D.14972
	salq	$2, %rsi	#, D.14972
	subq	$4, %rsi	#, D.14974
	addq	%rsi, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_177, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_160
	.loc 1 1538 0
	movq	-24(%rbp), %rax	# imx, imx.379
	movl	-56(%rbp), %edx	# i, tmp1144
	movslq	%edx, %rdx	# tmp1144, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$24, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_184, D.14971
	movl	-52(%rbp), %edx	# k, tmp1145
	movslq	%edx, %rdx	# tmp1145, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_189, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1146
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$24, %rax	#, D.14973
	movq	(%rax), %rax	# *_192, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1147
	movslq	%ecx, %rcx	# tmp1147, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_197, D.14970
	addl	%edx, %eax	# D.14970, tmp1148
	movl	%eax, -44(%rbp)	# tmp1148, sc
	movq	-32(%rbp), %rax	# mmx, mmx.380
	movl	-56(%rbp), %edx	# i, tmp1149
	movslq	%edx, %rdx	# tmp1149, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_203, D.14971
	movl	-52(%rbp), %edx	# k, tmp1150
	movslq	%edx, %rdx	# tmp1150, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_207, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L226	#,
	.loc 1 1539 0
	movq	-32(%rbp), %rax	# mmx, mmx.381
	movl	-56(%rbp), %edx	# i, tmp1151
	movslq	%edx, %rdx	# tmp1151, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_212, D.14971
	movl	-52(%rbp), %edx	# k, tmp1152
	movslq	%edx, %rdx	# tmp1152, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1153
	movl	%eax, (%rdx)	# tmp1153, *_216
.L226:
	.loc 1 1540 0
	movq	-40(%rbp), %rax	# xmx, xmx.382
	movl	-56(%rbp), %edx	# i, tmp1154
	movslq	%edx, %rdx	# tmp1154, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$24, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_221, D.14971
	movl	(%rax), %edx	# *_222, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1155
	movq	368(%rax), %rax	# hmm_8(D)->bsc, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1156
	movslq	%ecx, %rcx	# tmp1156, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_227, D.14970
	addl	%edx, %eax	# D.14970, tmp1157
	movl	%eax, -44(%rbp)	# tmp1157, sc
	movq	-32(%rbp), %rax	# mmx, mmx.383
	movl	-56(%rbp), %edx	# i, tmp1158
	movslq	%edx, %rdx	# tmp1158, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_233, D.14971
	movl	-52(%rbp), %edx	# k, tmp1159
	movslq	%edx, %rdx	# tmp1159, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_237, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L227	#,
	.loc 1 1541 0
	movq	-32(%rbp), %rax	# mmx, mmx.384
	movl	-56(%rbp), %edx	# i, tmp1160
	movslq	%edx, %rdx	# tmp1160, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_242, D.14971
	movl	-52(%rbp), %edx	# k, tmp1161
	movslq	%edx, %rdx	# tmp1161, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1162
	movl	%eax, (%rdx)	# tmp1162, *_246
.L227:
	.loc 1 1542 0
	movq	-16(%rbp), %rax	# dmx, dmx.385
	movl	-56(%rbp), %edx	# i, tmp1163
	movslq	%edx, %rdx	# tmp1163, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$24, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_251, D.14971
	movl	-52(%rbp), %edx	# k, tmp1164
	movslq	%edx, %rdx	# tmp1164, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_256, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1165
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$40, %rax	#, D.14973
	movq	(%rax), %rax	# *_259, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1166
	movslq	%ecx, %rcx	# tmp1166, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_264, D.14970
	addl	%edx, %eax	# D.14970, tmp1167
	movl	%eax, -44(%rbp)	# tmp1167, sc
	movq	-32(%rbp), %rax	# mmx, mmx.386
	movl	-56(%rbp), %edx	# i, tmp1168
	movslq	%edx, %rdx	# tmp1168, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_270, D.14971
	movl	-52(%rbp), %edx	# k, tmp1169
	movslq	%edx, %rdx	# tmp1169, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_274, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L228	#,
	.loc 1 1543 0
	movq	-32(%rbp), %rax	# mmx, mmx.387
	movl	-56(%rbp), %edx	# i, tmp1170
	movslq	%edx, %rdx	# tmp1170, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_279, D.14971
	movl	-52(%rbp), %edx	# k, tmp1171
	movslq	%edx, %rdx	# tmp1171, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1172
	movl	%eax, (%rdx)	# tmp1172, *_283
.L228:
	.loc 1 1544 0
	movq	-32(%rbp), %rax	# mmx, mmx.388
	movl	-56(%rbp), %edx	# i, tmp1173
	movslq	%edx, %rdx	# tmp1173, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_287, D.14971
	movl	-52(%rbp), %edx	# k, tmp1174
	movslq	%edx, %rdx	# tmp1174, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-32(%rbp), %rax	# mmx, mmx.389
	movl	-56(%rbp), %ecx	# i, tmp1175
	movslq	%ecx, %rcx	# tmp1175, D.14972
	salq	$3, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_295, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1176
	movslq	%ecx, %rcx	# tmp1176, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %ecx	# *_299, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1177
	movq	424(%rax), %rax	# hmm_8(D)->dnam, D.14973
	movl	-48(%rbp), %esi	# codon, tmp1178
	movslq	%esi, %rsi	# tmp1178, D.14972
	salq	$3, %rsi	#, D.14972
	addq	%rsi, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_304, D.14971
	movl	-52(%rbp), %esi	# k, tmp1179
	movslq	%esi, %rsi	# tmp1179, D.14972
	salq	$2, %rsi	#, D.14972
	addq	%rsi, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_308, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_291
.L225:
	.loc 1 1547 0
	movq	-32(%rbp), %rax	# mmx, mmx.390
	movl	-56(%rbp), %edx	# i, tmp1180
	movslq	%edx, %rdx	# tmp1180, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_315, D.14971
	movl	-52(%rbp), %edx	# k, tmp1181
	movslq	%edx, %rdx	# tmp1181, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_320, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1182
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	movq	(%rax), %rax	# *_322, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1183
	movslq	%ecx, %rcx	# tmp1183, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_327, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1184
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1185
	movl	%eax, -44(%rbp)	# tmp1185, sc
	movq	-32(%rbp), %rax	# mmx, mmx.391
	movl	-56(%rbp), %edx	# i, tmp1186
	movslq	%edx, %rdx	# tmp1186, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_335, D.14971
	movl	-52(%rbp), %edx	# k, tmp1187
	movslq	%edx, %rdx	# tmp1187, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_339, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L229	#,
	.loc 1 1548 0
	movq	-32(%rbp), %rax	# mmx, mmx.392
	movl	-56(%rbp), %edx	# i, tmp1188
	movslq	%edx, %rdx	# tmp1188, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_344, D.14971
	movl	-52(%rbp), %edx	# k, tmp1189
	movslq	%edx, %rdx	# tmp1189, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1190
	movl	%eax, (%rdx)	# tmp1190, *_348
.L229:
	.loc 1 1549 0
	movq	-24(%rbp), %rax	# imx, imx.393
	movl	-56(%rbp), %edx	# i, tmp1191
	movslq	%edx, %rdx	# tmp1191, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_353, D.14971
	movl	-52(%rbp), %edx	# k, tmp1192
	movslq	%edx, %rdx	# tmp1192, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_358, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1193
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$24, %rax	#, D.14973
	movq	(%rax), %rax	# *_361, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1194
	movslq	%ecx, %rcx	# tmp1194, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_366, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1195
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1196
	movl	%eax, -44(%rbp)	# tmp1196, sc
	movq	-32(%rbp), %rax	# mmx, mmx.394
	movl	-56(%rbp), %edx	# i, tmp1197
	movslq	%edx, %rdx	# tmp1197, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_374, D.14971
	movl	-52(%rbp), %edx	# k, tmp1198
	movslq	%edx, %rdx	# tmp1198, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_378, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L230	#,
	.loc 1 1550 0
	movq	-32(%rbp), %rax	# mmx, mmx.395
	movl	-56(%rbp), %edx	# i, tmp1199
	movslq	%edx, %rdx	# tmp1199, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_383, D.14971
	movl	-52(%rbp), %edx	# k, tmp1200
	movslq	%edx, %rdx	# tmp1200, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1201
	movl	%eax, (%rdx)	# tmp1201, *_387
.L230:
	.loc 1 1551 0
	movq	-40(%rbp), %rax	# xmx, xmx.396
	movl	-56(%rbp), %edx	# i, tmp1202
	movslq	%edx, %rdx	# tmp1202, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_392, D.14971
	movl	(%rax), %edx	# *_393, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1203
	movq	368(%rax), %rax	# hmm_8(D)->bsc, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1204
	movslq	%ecx, %rcx	# tmp1204, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_398, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1205
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1206
	movl	%eax, -44(%rbp)	# tmp1206, sc
	movq	-32(%rbp), %rax	# mmx, mmx.397
	movl	-56(%rbp), %edx	# i, tmp1207
	movslq	%edx, %rdx	# tmp1207, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_406, D.14971
	movl	-52(%rbp), %edx	# k, tmp1208
	movslq	%edx, %rdx	# tmp1208, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_410, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L231	#,
	.loc 1 1552 0
	movq	-32(%rbp), %rax	# mmx, mmx.398
	movl	-56(%rbp), %edx	# i, tmp1209
	movslq	%edx, %rdx	# tmp1209, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_415, D.14971
	movl	-52(%rbp), %edx	# k, tmp1210
	movslq	%edx, %rdx	# tmp1210, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1211
	movl	%eax, (%rdx)	# tmp1211, *_419
.L231:
	.loc 1 1553 0
	movq	-16(%rbp), %rax	# dmx, dmx.399
	movl	-56(%rbp), %edx	# i, tmp1212
	movslq	%edx, %rdx	# tmp1212, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_424, D.14971
	movl	-52(%rbp), %edx	# k, tmp1213
	movslq	%edx, %rdx	# tmp1213, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_429, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1214
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$40, %rax	#, D.14973
	movq	(%rax), %rax	# *_432, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1215
	movslq	%ecx, %rcx	# tmp1215, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_437, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1216
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1217
	movl	%eax, -44(%rbp)	# tmp1217, sc
	movq	-32(%rbp), %rax	# mmx, mmx.400
	movl	-56(%rbp), %edx	# i, tmp1218
	movslq	%edx, %rdx	# tmp1218, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_445, D.14971
	movl	-52(%rbp), %edx	# k, tmp1219
	movslq	%edx, %rdx	# tmp1219, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_449, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L232	#,
	.loc 1 1554 0
	movq	-32(%rbp), %rax	# mmx, mmx.401
	movl	-56(%rbp), %edx	# i, tmp1220
	movslq	%edx, %rdx	# tmp1220, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_454, D.14971
	movl	-52(%rbp), %edx	# k, tmp1221
	movslq	%edx, %rdx	# tmp1221, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1222
	movl	%eax, (%rdx)	# tmp1222, *_458
.L232:
	.loc 1 1557 0
	cmpl	$3, -56(%rbp)	#, i
	jle	.L233	#,
	.loc 1 1558 0
	movq	-32(%rbp), %rax	# mmx, mmx.402
	movl	-56(%rbp), %edx	# i, tmp1223
	movslq	%edx, %rdx	# tmp1223, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_463, D.14971
	movl	-52(%rbp), %edx	# k, tmp1224
	movslq	%edx, %rdx	# tmp1224, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_468, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1225
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	movq	(%rax), %rax	# *_470, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1226
	movslq	%ecx, %rcx	# tmp1226, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_475, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1227
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1228
	movl	%eax, -44(%rbp)	# tmp1228, sc
	movq	-32(%rbp), %rax	# mmx, mmx.403
	movl	-56(%rbp), %edx	# i, tmp1229
	movslq	%edx, %rdx	# tmp1229, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_483, D.14971
	movl	-52(%rbp), %edx	# k, tmp1230
	movslq	%edx, %rdx	# tmp1230, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_487, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L234	#,
	.loc 1 1559 0
	movq	-32(%rbp), %rax	# mmx, mmx.404
	movl	-56(%rbp), %edx	# i, tmp1231
	movslq	%edx, %rdx	# tmp1231, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_492, D.14971
	movl	-52(%rbp), %edx	# k, tmp1232
	movslq	%edx, %rdx	# tmp1232, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1233
	movl	%eax, (%rdx)	# tmp1233, *_496
.L234:
	.loc 1 1560 0
	movq	-24(%rbp), %rax	# imx, imx.405
	movl	-56(%rbp), %edx	# i, tmp1234
	movslq	%edx, %rdx	# tmp1234, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_501, D.14971
	movl	-52(%rbp), %edx	# k, tmp1235
	movslq	%edx, %rdx	# tmp1235, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_506, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1236
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$24, %rax	#, D.14973
	movq	(%rax), %rax	# *_509, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1237
	movslq	%ecx, %rcx	# tmp1237, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_514, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1238
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1239
	movl	%eax, -44(%rbp)	# tmp1239, sc
	movq	-32(%rbp), %rax	# mmx, mmx.406
	movl	-56(%rbp), %edx	# i, tmp1240
	movslq	%edx, %rdx	# tmp1240, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_522, D.14971
	movl	-52(%rbp), %edx	# k, tmp1241
	movslq	%edx, %rdx	# tmp1241, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_526, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L235	#,
	.loc 1 1561 0
	movq	-32(%rbp), %rax	# mmx, mmx.407
	movl	-56(%rbp), %edx	# i, tmp1242
	movslq	%edx, %rdx	# tmp1242, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_531, D.14971
	movl	-52(%rbp), %edx	# k, tmp1243
	movslq	%edx, %rdx	# tmp1243, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1244
	movl	%eax, (%rdx)	# tmp1244, *_535
.L235:
	.loc 1 1562 0
	movq	-40(%rbp), %rax	# xmx, xmx.408
	movl	-56(%rbp), %edx	# i, tmp1245
	movslq	%edx, %rdx	# tmp1245, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_540, D.14971
	movl	(%rax), %edx	# *_541, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1246
	movq	368(%rax), %rax	# hmm_8(D)->bsc, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1247
	movslq	%ecx, %rcx	# tmp1247, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_546, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1248
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1249
	movl	%eax, -44(%rbp)	# tmp1249, sc
	movq	-32(%rbp), %rax	# mmx, mmx.409
	movl	-56(%rbp), %edx	# i, tmp1250
	movslq	%edx, %rdx	# tmp1250, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_554, D.14971
	movl	-52(%rbp), %edx	# k, tmp1251
	movslq	%edx, %rdx	# tmp1251, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_558, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L236	#,
	.loc 1 1563 0
	movq	-32(%rbp), %rax	# mmx, mmx.410
	movl	-56(%rbp), %edx	# i, tmp1252
	movslq	%edx, %rdx	# tmp1252, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_563, D.14971
	movl	-52(%rbp), %edx	# k, tmp1253
	movslq	%edx, %rdx	# tmp1253, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1254
	movl	%eax, (%rdx)	# tmp1254, *_567
.L236:
	.loc 1 1564 0
	movq	-16(%rbp), %rax	# dmx, dmx.411
	movl	-56(%rbp), %edx	# i, tmp1255
	movslq	%edx, %rdx	# tmp1255, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_572, D.14971
	movl	-52(%rbp), %edx	# k, tmp1256
	movslq	%edx, %rdx	# tmp1256, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_577, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1257
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$40, %rax	#, D.14973
	movq	(%rax), %rax	# *_580, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1258
	movslq	%ecx, %rcx	# tmp1258, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_585, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1259
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1260
	movl	%eax, -44(%rbp)	# tmp1260, sc
	movq	-32(%rbp), %rax	# mmx, mmx.412
	movl	-56(%rbp), %edx	# i, tmp1261
	movslq	%edx, %rdx	# tmp1261, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_593, D.14971
	movl	-52(%rbp), %edx	# k, tmp1262
	movslq	%edx, %rdx	# tmp1262, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_597, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L233	#,
	.loc 1 1565 0
	movq	-32(%rbp), %rax	# mmx, mmx.413
	movl	-56(%rbp), %edx	# i, tmp1263
	movslq	%edx, %rdx	# tmp1263, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_602, D.14971
	movl	-52(%rbp), %edx	# k, tmp1264
	movslq	%edx, %rdx	# tmp1264, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1265
	movl	%eax, (%rdx)	# tmp1265, *_606
.L233:
	.loc 1 1568 0
	movq	-16(%rbp), %rax	# dmx, dmx.414
	movl	-56(%rbp), %edx	# i, tmp1266
	movslq	%edx, %rdx	# tmp1266, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_610, D.14971
	movl	-52(%rbp), %edx	# k, tmp1267
	movslq	%edx, %rdx	# tmp1267, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-32(%rbp), %rax	# mmx, mmx.415
	movl	-56(%rbp), %ecx	# i, tmp1268
	movslq	%ecx, %rcx	# tmp1268, D.14972
	salq	$3, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_618, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1269
	movslq	%ecx, %rcx	# tmp1269, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %ecx	# *_623, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1270
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$16, %rax	#, D.14973
	movq	(%rax), %rax	# *_626, D.14971
	movl	-52(%rbp), %esi	# k, tmp1271
	movslq	%esi, %rsi	# tmp1271, D.14972
	salq	$2, %rsi	#, D.14972
	subq	$4, %rsi	#, D.14974
	addq	%rsi, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_631, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_614
	.loc 1 1569 0
	movq	-16(%rbp), %rax	# dmx, dmx.416
	movl	-56(%rbp), %edx	# i, tmp1272
	movslq	%edx, %rdx	# tmp1272, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_637, D.14971
	movl	-52(%rbp), %edx	# k, tmp1273
	movslq	%edx, %rdx	# tmp1273, D.14972
	salq	$2, %rdx	#, D.14972
	subq	$4, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14971
	movl	(%rax), %edx	# *_642, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1274
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$48, %rax	#, D.14973
	movq	(%rax), %rax	# *_645, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1275
	movslq	%ecx, %rcx	# tmp1275, D.14972
	salq	$2, %rcx	#, D.14972
	subq	$4, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14971
	movl	(%rax), %eax	# *_650, D.14970
	addl	%edx, %eax	# D.14970, tmp1276
	movl	%eax, -44(%rbp)	# tmp1276, sc
	movq	-16(%rbp), %rax	# dmx, dmx.417
	movl	-56(%rbp), %edx	# i, tmp1277
	movslq	%edx, %rdx	# tmp1277, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_656, D.14971
	movl	-52(%rbp), %edx	# k, tmp1278
	movslq	%edx, %rdx	# tmp1278, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_660, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L237	#,
	.loc 1 1570 0
	movq	-16(%rbp), %rax	# dmx, dmx.418
	movl	-56(%rbp), %edx	# i, tmp1279
	movslq	%edx, %rdx	# tmp1279, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_665, D.14971
	movl	-52(%rbp), %edx	# k, tmp1280
	movslq	%edx, %rdx	# tmp1280, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1281
	movl	%eax, (%rdx)	# tmp1281, *_669
.L237:
	.loc 1 1573 0
	cmpl	$2, -56(%rbp)	#, i
	jle	.L238	#,
	.loc 1 1574 0
	movq	-24(%rbp), %rax	# imx, imx.419
	movl	-56(%rbp), %edx	# i, tmp1282
	movslq	%edx, %rdx	# tmp1282, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_673, D.14971
	movl	-52(%rbp), %edx	# k, tmp1283
	movslq	%edx, %rdx	# tmp1283, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-32(%rbp), %rax	# mmx, mmx.420
	movl	-56(%rbp), %ecx	# i, tmp1284
	movslq	%ecx, %rcx	# tmp1284, D.14972
	salq	$3, %rcx	#, D.14972
	subq	$24, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_682, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1285
	movslq	%ecx, %rcx	# tmp1285, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %ecx	# *_686, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1286
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$8, %rax	#, D.14973
	movq	(%rax), %rax	# *_689, D.14971
	movl	-52(%rbp), %esi	# k, tmp1287
	movslq	%esi, %rsi	# tmp1287, D.14972
	salq	$2, %rsi	#, D.14972
	addq	%rsi, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_693, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_677
	.loc 1 1575 0
	movq	-24(%rbp), %rax	# imx, imx.421
	movl	-56(%rbp), %edx	# i, tmp1288
	movslq	%edx, %rdx	# tmp1288, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$24, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_700, D.14971
	movl	-52(%rbp), %edx	# k, tmp1289
	movslq	%edx, %rdx	# tmp1289, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_704, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1290
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$32, %rax	#, D.14973
	movq	(%rax), %rax	# *_707, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1291
	movslq	%ecx, %rcx	# tmp1291, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_711, D.14970
	addl	%edx, %eax	# D.14970, tmp1292
	movl	%eax, -44(%rbp)	# tmp1292, sc
	movq	-24(%rbp), %rax	# imx, imx.422
	movl	-56(%rbp), %edx	# i, tmp1293
	movslq	%edx, %rdx	# tmp1293, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_717, D.14971
	movl	-52(%rbp), %edx	# k, tmp1294
	movslq	%edx, %rdx	# tmp1294, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_721, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L239	#,
	.loc 1 1576 0
	movq	-24(%rbp), %rax	# imx, imx.423
	movl	-56(%rbp), %edx	# i, tmp1295
	movslq	%edx, %rdx	# tmp1295, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_726, D.14971
	movl	-52(%rbp), %edx	# k, tmp1296
	movslq	%edx, %rdx	# tmp1296, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1297
	movl	%eax, (%rdx)	# tmp1297, *_730
.L239:
	.loc 1 1577 0
	movq	-24(%rbp), %rax	# imx, imx.424
	movl	-56(%rbp), %edx	# i, tmp1298
	movslq	%edx, %rdx	# tmp1298, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_734, D.14971
	movl	-52(%rbp), %edx	# k, tmp1299
	movslq	%edx, %rdx	# tmp1299, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-24(%rbp), %rax	# imx, imx.425
	movl	-56(%rbp), %ecx	# i, tmp1300
	movslq	%ecx, %rcx	# tmp1300, D.14972
	salq	$3, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_742, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1301
	movslq	%ecx, %rcx	# tmp1301, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %ecx	# *_746, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1302
	movq	432(%rax), %rax	# hmm_8(D)->dnai, D.14973
	movl	-48(%rbp), %esi	# codon, tmp1303
	movslq	%esi, %rsi	# tmp1303, D.14972
	salq	$3, %rsi	#, D.14972
	addq	%rsi, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_751, D.14971
	movl	-52(%rbp), %esi	# k, tmp1304
	movslq	%esi, %rsi	# tmp1304, D.14972
	salq	$2, %rsi	#, D.14972
	addq	%rsi, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_755, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_738
.L238:
	.loc 1 1581 0
	movq	-32(%rbp), %rax	# mmx, mmx.426
	movl	-56(%rbp), %edx	# i, tmp1305
	movslq	%edx, %rdx	# tmp1305, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_762, D.14971
	movl	-52(%rbp), %edx	# k, tmp1306
	movslq	%edx, %rdx	# tmp1306, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_766, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1307
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$8, %rax	#, D.14973
	movq	(%rax), %rax	# *_769, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1308
	movslq	%ecx, %rcx	# tmp1308, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_773, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1309
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1310
	movl	%eax, -44(%rbp)	# tmp1310, sc
	movq	-24(%rbp), %rax	# imx, imx.427
	movl	-56(%rbp), %edx	# i, tmp1311
	movslq	%edx, %rdx	# tmp1311, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_781, D.14971
	movl	-52(%rbp), %edx	# k, tmp1312
	movslq	%edx, %rdx	# tmp1312, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_785, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L240	#,
	.loc 1 1582 0
	movq	-24(%rbp), %rax	# imx, imx.428
	movl	-56(%rbp), %edx	# i, tmp1313
	movslq	%edx, %rdx	# tmp1313, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_790, D.14971
	movl	-52(%rbp), %edx	# k, tmp1314
	movslq	%edx, %rdx	# tmp1314, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1315
	movl	%eax, (%rdx)	# tmp1315, *_794
.L240:
	.loc 1 1583 0
	movq	-24(%rbp), %rax	# imx, imx.429
	movl	-56(%rbp), %edx	# i, tmp1316
	movslq	%edx, %rdx	# tmp1316, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$16, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_799, D.14971
	movl	-52(%rbp), %edx	# k, tmp1317
	movslq	%edx, %rdx	# tmp1317, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_803, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1318
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$32, %rax	#, D.14973
	movq	(%rax), %rax	# *_806, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1319
	movslq	%ecx, %rcx	# tmp1319, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_810, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1320
	movl	440(%rax), %eax	# hmm_8(D)->dna2, D.14970
	addl	%edx, %eax	# D.14970, tmp1321
	movl	%eax, -44(%rbp)	# tmp1321, sc
	movq	-24(%rbp), %rax	# imx, imx.430
	movl	-56(%rbp), %edx	# i, tmp1322
	movslq	%edx, %rdx	# tmp1322, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_818, D.14971
	movl	-52(%rbp), %edx	# k, tmp1323
	movslq	%edx, %rdx	# tmp1323, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_822, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L241	#,
	.loc 1 1584 0
	movq	-24(%rbp), %rax	# imx, imx.431
	movl	-56(%rbp), %edx	# i, tmp1324
	movslq	%edx, %rdx	# tmp1324, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_827, D.14971
	movl	-52(%rbp), %edx	# k, tmp1325
	movslq	%edx, %rdx	# tmp1325, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1326
	movl	%eax, (%rdx)	# tmp1326, *_831
.L241:
	.loc 1 1587 0
	cmpl	$4, -56(%rbp)	#, i
	jle	.L242	#,
	.loc 1 1588 0
	movq	-32(%rbp), %rax	# mmx, mmx.432
	movl	-56(%rbp), %edx	# i, tmp1327
	movslq	%edx, %rdx	# tmp1327, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_836, D.14971
	movl	-52(%rbp), %edx	# k, tmp1328
	movslq	%edx, %rdx	# tmp1328, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_840, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1329
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$8, %rax	#, D.14973
	movq	(%rax), %rax	# *_843, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1330
	movslq	%ecx, %rcx	# tmp1330, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_847, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1331
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1332
	movl	%eax, -44(%rbp)	# tmp1332, sc
	movq	-24(%rbp), %rax	# imx, imx.433
	movl	-56(%rbp), %edx	# i, tmp1333
	movslq	%edx, %rdx	# tmp1333, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_855, D.14971
	movl	-52(%rbp), %edx	# k, tmp1334
	movslq	%edx, %rdx	# tmp1334, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_859, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L243	#,
	.loc 1 1589 0
	movq	-24(%rbp), %rax	# imx, imx.434
	movl	-56(%rbp), %edx	# i, tmp1335
	movslq	%edx, %rdx	# tmp1335, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_864, D.14971
	movl	-52(%rbp), %edx	# k, tmp1336
	movslq	%edx, %rdx	# tmp1336, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1337
	movl	%eax, (%rdx)	# tmp1337, *_868
.L243:
	.loc 1 1590 0
	movq	-24(%rbp), %rax	# imx, imx.435
	movl	-56(%rbp), %edx	# i, tmp1338
	movslq	%edx, %rdx	# tmp1338, D.14972
	salq	$3, %rdx	#, D.14972
	subq	$32, %rdx	#, D.14974
	addq	%rdx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_873, D.14971
	movl	-52(%rbp), %edx	# k, tmp1339
	movslq	%edx, %rdx	# tmp1339, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_877, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1340
	movq	312(%rax), %rax	# hmm_8(D)->tsc, D.14973
	addq	$32, %rax	#, D.14973
	movq	(%rax), %rax	# *_880, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1341
	movslq	%ecx, %rcx	# tmp1341, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_884, D.14970
	addl	%eax, %edx	# D.14970, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1342
	movl	444(%rax), %eax	# hmm_8(D)->dna4, D.14970
	addl	%edx, %eax	# D.14970, tmp1343
	movl	%eax, -44(%rbp)	# tmp1343, sc
	movq	-24(%rbp), %rax	# imx, imx.436
	movl	-56(%rbp), %edx	# i, tmp1344
	movslq	%edx, %rdx	# tmp1344, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_892, D.14971
	movl	-52(%rbp), %edx	# k, tmp1345
	movslq	%edx, %rdx	# tmp1345, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_896, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L242	#,
	.loc 1 1591 0
	movq	-24(%rbp), %rax	# imx, imx.437
	movl	-56(%rbp), %edx	# i, tmp1346
	movslq	%edx, %rdx	# tmp1346, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_901, D.14971
	movl	-52(%rbp), %edx	# k, tmp1347
	movslq	%edx, %rdx	# tmp1347, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rax, %rdx	# D.14971, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1348
	movl	%eax, (%rdx)	# tmp1348, *_905
.L242:
	.loc 1 1534 0
	addl	$1, -52(%rbp)	#, k
.L224:
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# hmm, tmp1349
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	cmpl	-52(%rbp), %eax	# k, D.14970
	jge	.L244	#,
	.loc 1 1598 0 is_stmt 1
	movq	-40(%rbp), %rax	# xmx, xmx.438
	movl	-56(%rbp), %edx	# i, tmp1350
	movslq	%edx, %rdx	# tmp1350, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_910, D.14971
	leaq	16(%rax), %rdx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.439
	movl	-56(%rbp), %ecx	# i, tmp1351
	movslq	%ecx, %rcx	# tmp1351, D.14972
	salq	$3, %rcx	#, D.14972
	subq	$8, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_917, D.14971
	addq	$16, %rax	#, D.14971
	movl	(%rax), %ecx	# *_919, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1352
	movl	340(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_912
	.loc 1 1600 0
	movq	-40(%rbp), %rax	# xmx, xmx.440
	movl	-56(%rbp), %edx	# i, tmp1353
	movslq	%edx, %rdx	# tmp1353, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_926, D.14971
	leaq	4(%rax), %rdx	#, D.14971
	movq	-16(%rbp), %rax	# dmx, dmx.441
	movl	-56(%rbp), %ecx	# i, tmp1354
	movslq	%ecx, %rcx	# tmp1354, D.14972
	salq	$3, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14973
	movq	(%rax), %rcx	# *_932, D.14971
	movq	-88(%rbp), %rax	# hmm, tmp1355
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	cltq
	salq	$2, %rax	#, D.14972
	addq	%rcx, %rax	# D.14971, D.14971
	movl	(%rax), %eax	# *_937, D.14970
	movl	%eax, (%rdx)	# D.14970, *_928
	.loc 1 1601 0
	movl	$1, -52(%rbp)	#, k
	jmp	.L245	#
.L247:
	.loc 1 1602 0
	movq	-32(%rbp), %rax	# mmx, mmx.442
	movl	-56(%rbp), %edx	# i, tmp1356
	movslq	%edx, %rdx	# tmp1356, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_944, D.14971
	movl	-52(%rbp), %edx	# k, tmp1357
	movslq	%edx, %rdx	# tmp1357, D.14972
	salq	$2, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14971
	movl	(%rax), %edx	# *_948, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1358
	movq	376(%rax), %rax	# hmm_8(D)->esc, D.14971
	movl	-52(%rbp), %ecx	# k, tmp1359
	movslq	%ecx, %rcx	# tmp1359, D.14972
	salq	$2, %rcx	#, D.14972
	addq	%rcx, %rax	# D.14972, D.14971
	movl	(%rax), %eax	# *_953, D.14970
	addl	%edx, %eax	# D.14970, tmp1360
	movl	%eax, -44(%rbp)	# tmp1360, sc
	movq	-40(%rbp), %rax	# xmx, xmx.443
	movl	-56(%rbp), %edx	# i, tmp1361
	movslq	%edx, %rdx	# tmp1361, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_959, D.14971
	addq	$4, %rax	#, D.14971
	movl	(%rax), %eax	# *_961, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L246	#,
	.loc 1 1603 0
	movq	-40(%rbp), %rax	# xmx, xmx.444
	movl	-56(%rbp), %edx	# i, tmp1362
	movslq	%edx, %rdx	# tmp1362, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_966, D.14971
	leaq	4(%rax), %rdx	#, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1363
	movl	%eax, (%rdx)	# tmp1363, *_968
.L246:
	.loc 1 1601 0
	addl	$1, -52(%rbp)	#, k
.L245:
	.loc 1 1601 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# hmm, tmp1364
	movl	136(%rax), %eax	# hmm_8(D)->M, D.14970
	cmpl	-52(%rbp), %eax	# k, D.14970
	jge	.L247	#,
	.loc 1 1605 0 is_stmt 1
	movq	-40(%rbp), %rax	# xmx, xmx.445
	movl	-56(%rbp), %edx	# i, tmp1365
	movslq	%edx, %rdx	# tmp1365, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_973, D.14971
	leaq	12(%rax), %rdx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.446
	movl	-56(%rbp), %ecx	# i, tmp1366
	movslq	%ecx, %rcx	# tmp1366, D.14972
	salq	$3, %rcx	#, D.14972
	subq	$8, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_980, D.14971
	addq	$12, %rax	#, D.14971
	movl	(%rax), %ecx	# *_982, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1367
	movl	364(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_975
	.loc 1 1606 0
	movq	-40(%rbp), %rax	# xmx, xmx.447
	movl	-56(%rbp), %edx	# i, tmp1368
	movslq	%edx, %rdx	# tmp1368, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_989, D.14971
	addq	$4, %rax	#, D.14971
	movl	(%rax), %edx	# *_991, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1369
	movl	348(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%edx, %eax	# D.14970, tmp1370
	movl	%eax, -44(%rbp)	# tmp1370, sc
	movq	-40(%rbp), %rax	# xmx, xmx.448
	movl	-56(%rbp), %edx	# i, tmp1371
	movslq	%edx, %rdx	# tmp1371, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_998, D.14971
	addq	$12, %rax	#, D.14971
	movl	(%rax), %eax	# *_1000, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L248	#,
	.loc 1 1607 0
	movq	-40(%rbp), %rax	# xmx, xmx.449
	movl	-56(%rbp), %edx	# i, tmp1372
	movslq	%edx, %rdx	# tmp1372, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1005, D.14971
	leaq	12(%rax), %rdx	#, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1373
	movl	%eax, (%rdx)	# tmp1373, *_1007
.L248:
	.loc 1 1609 0
	movq	-40(%rbp), %rax	# xmx, xmx.450
	movl	-56(%rbp), %edx	# i, tmp1374
	movslq	%edx, %rdx	# tmp1374, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1011, D.14971
	movq	-40(%rbp), %rdx	# xmx, xmx.451
	movl	-56(%rbp), %ecx	# i, tmp1375
	movslq	%ecx, %rcx	# tmp1375, D.14972
	salq	$3, %rcx	#, D.14972
	addq	%rcx, %rdx	# D.14972, D.14973
	movq	(%rdx), %rdx	# *_1016, D.14971
	addq	$16, %rdx	#, D.14971
	movl	(%rdx), %ecx	# *_1018, D.14970
	movq	-88(%rbp), %rdx	# hmm, tmp1376
	movl	336(%rdx), %edx	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %edx	# D.14970, D.14970
	movl	%edx, (%rax)	# D.14970, *_1012
	.loc 1 1610 0
	movq	-40(%rbp), %rax	# xmx, xmx.452
	movl	-56(%rbp), %edx	# i, tmp1377
	movslq	%edx, %rdx	# tmp1377, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1025, D.14971
	addq	$12, %rax	#, D.14971
	movl	(%rax), %edx	# *_1027, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1378
	movl	360(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%edx, %eax	# D.14970, tmp1379
	movl	%eax, -44(%rbp)	# tmp1379, sc
	movq	-40(%rbp), %rax	# xmx, xmx.453
	movl	-56(%rbp), %edx	# i, tmp1380
	movslq	%edx, %rdx	# tmp1380, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1034, D.14971
	movl	(%rax), %eax	# *_1035, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L249	#,
	.loc 1 1611 0
	movq	-40(%rbp), %rax	# xmx, xmx.454
	movl	-56(%rbp), %edx	# i, tmp1381
	movslq	%edx, %rdx	# tmp1381, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1040, D.14971
	movl	-44(%rbp), %edx	# sc, tmp1382
	movl	%edx, (%rax)	# tmp1382, *_1041
.L249:
	.loc 1 1613 0
	movq	-40(%rbp), %rax	# xmx, xmx.455
	movl	-56(%rbp), %edx	# i, tmp1383
	movslq	%edx, %rdx	# tmp1383, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1045, D.14971
	leaq	8(%rax), %rdx	#, D.14971
	movq	-40(%rbp), %rax	# xmx, xmx.456
	movl	-56(%rbp), %ecx	# i, tmp1384
	movslq	%ecx, %rcx	# tmp1384, D.14972
	salq	$3, %rcx	#, D.14972
	subq	$8, %rcx	#, D.14974
	addq	%rcx, %rax	# D.14974, D.14973
	movq	(%rax), %rax	# *_1052, D.14971
	addq	$8, %rax	#, D.14971
	movl	(%rax), %ecx	# *_1054, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1385
	movl	356(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%ecx, %eax	# D.14970, D.14970
	movl	%eax, (%rdx)	# D.14970, *_1047
	.loc 1 1614 0
	movq	-40(%rbp), %rax	# xmx, xmx.457
	movl	-56(%rbp), %edx	# i, tmp1386
	movslq	%edx, %rdx	# tmp1386, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1061, D.14971
	addq	$4, %rax	#, D.14971
	movl	(%rax), %edx	# *_1063, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1387
	movl	344(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%edx, %eax	# D.14970, tmp1388
	movl	%eax, -44(%rbp)	# tmp1388, sc
	movq	-40(%rbp), %rax	# xmx, xmx.458
	movl	-56(%rbp), %edx	# i, tmp1389
	movslq	%edx, %rdx	# tmp1389, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1070, D.14971
	addq	$8, %rax	#, D.14971
	movl	(%rax), %eax	# *_1072, D.14970
	cmpl	%eax, -44(%rbp)	# D.14970, sc
	jle	.L250	#,
	.loc 1 1615 0
	movq	-40(%rbp), %rax	# xmx, xmx.459
	movl	-56(%rbp), %edx	# i, tmp1390
	movslq	%edx, %rdx	# tmp1390, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1077, D.14971
	leaq	8(%rax), %rdx	#, D.14971
	movl	-44(%rbp), %eax	# sc, tmp1391
	movl	%eax, (%rdx)	# tmp1391, *_1079
.L250:
	.loc 1 1523 0
	addl	$1, -56(%rbp)	#, i
.L221:
	.loc 1 1523 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# i, tmp1392
	cmpl	-76(%rbp), %eax	# L, tmp1392
	jle	.L251	#,
	.loc 1 1618 0 is_stmt 1
	movq	-40(%rbp), %rax	# xmx, xmx.460
	movl	-76(%rbp), %edx	# L, tmp1393
	movslq	%edx, %rdx	# tmp1393, D.14972
	salq	$3, %rdx	#, D.14972
	addq	%rdx, %rax	# D.14972, D.14973
	movq	(%rax), %rax	# *_1084, D.14971
	addq	$8, %rax	#, D.14971
	movl	(%rax), %edx	# *_1086, D.14970
	movq	-88(%rbp), %rax	# hmm, tmp1394
	movl	352(%rax), %eax	# hmm_8(D)->xsc, D.14970
	addl	%edx, %eax	# D.14970, tmp1395
	movl	%eax, -44(%rbp)	# tmp1395, sc
	.loc 1 1620 0
	cmpq	$0, -96(%rbp)	#, ret_mx
	je	.L252	#,
	.loc 1 1620 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# ret_mx, tmp1396
	movq	-8(%rbp), %rdx	# mx, tmp1397
	movq	%rdx, (%rax)	# tmp1397, *ret_mx_1090(D)
	jmp	.L253	#
.L252:
	.loc 1 1621 0 is_stmt 1
	movq	-8(%rbp), %rax	# mx, tmp1398
	movq	%rax, %rdi	# tmp1398,
	call	FreePlan7Matrix	#
.L253:
	.loc 1 1623 0
	movl	-44(%rbp), %eax	# sc, tmp1399
	movl	%eax, %edi	# tmp1399,
	call	Scorify	#
	movss	%xmm0, -80(%rbp)	#, %sfp
	movl	-80(%rbp), %eax	# %sfp, D.14977
	.loc 1 1624 0
	movl	%eax, -80(%rbp)	# <retval>, %sfp
	movss	-80(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Plan7ESTViterbi, .-Plan7ESTViterbi
	.section	.rodata
	.align 8
.LC13:
	.string	"you can't init get_wee_midpt with a %s\n"
	.text
	.type	get_wee_midpt, @function
get_wee_midpt:
.LFB17:
	.loc 1 1657 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# hmm, hmm
	movq	%rsi, -112(%rbp)	# dsq, dsq
	movl	%edx, -116(%rbp)	# L, L
	movl	%ecx, -120(%rbp)	# k1, k1
	movl	%r8d, %edx	# t1, tmp1724
	movl	%r9d, -128(%rbp)	# s1, s1
	movl	24(%rbp), %eax	# t3, tmp1725
	movb	%dl, -124(%rbp)	# tmp1724, t1
	movb	%al, -132(%rbp)	# tmp1725, t3
	.loc 1 1679 0
	movl	-128(%rbp), %eax	# s1, tmp1726
	movl	32(%rbp), %edx	# s3, tmp1727
	subl	%eax, %edx	# tmp1726, D.14978
	movl	%edx, %eax	# D.14978, D.14978
	movl	%eax, %edx	# D.14978, tmp1728
	shrl	$31, %edx	#, tmp1728
	addl	%edx, %eax	# tmp1728, tmp1729
	sarl	%eax	# tmp1730
	movl	%eax, %edx	# tmp1730, D.14978
	movl	-128(%rbp), %eax	# s1, tmp1734
	addl	%edx, %eax	# D.14978, tmp1733
	movl	%eax, -84(%rbp)	# tmp1733, s2
	.loc 1 1680 0
	movl	-128(%rbp), %eax	# s1, tmp1735
	movl	32(%rbp), %edx	# s3, tmp1736
	subl	%eax, %edx	# tmp1735, D.14978
	movl	%edx, %eax	# D.14978, D.14978
	cmpl	$1, %eax	#, D.14978
	jne	.L256	#,
	.loc 1 1680 0 is_stmt 0 discriminator 1
	cmpb	$4, -124(%rbp)	#, t1
	jne	.L256	#,
	movl	-128(%rbp), %eax	# s1, tmp1737
	movl	%eax, -84(%rbp)	# tmp1737, s2
.L256:
	.loc 1 1681 0 is_stmt 1
	movl	-128(%rbp), %eax	# s1, tmp1738
	movl	32(%rbp), %edx	# s3, tmp1739
	subl	%eax, %edx	# tmp1738, D.14978
	movl	%edx, %eax	# D.14978, D.14978
	cmpl	$1, %eax	#, D.14978
	jne	.L257	#,
	.loc 1 1681 0 is_stmt 0 discriminator 1
	cmpb	$9, -132(%rbp)	#, t3
	jne	.L257	#,
	movl	32(%rbp), %eax	# s3, tmp1740
	movl	%eax, -84(%rbp)	# tmp1740, s2
.L257:
	.loc 1 1687 0 is_stmt 1
	cmpb	$4, -124(%rbp)	#, t1
	je	.L258	#,
	.loc 1 1687 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# s1, iftmp.461
	jmp	.L259	#
.L258:
	.loc 1 1687 0 discriminator 2
	movl	$0, %eax	#, iftmp.461
.L259:
	.loc 1 1687 0 discriminator 3
	movl	%eax, -68(%rbp)	# iftmp.461, start
	.loc 1 1692 0 is_stmt 1 discriminator 3
	movq	-104(%rbp), %rax	# hmm, tmp1741
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	leaq	-24(%rbp), %rdi	#, tmp1742
	leaq	-32(%rbp), %rsi	#, tmp1743
	leaq	-40(%rbp), %rcx	#, tmp1744
	leaq	-48(%rbp), %rdx	#, tmp1745
	movq	%rdi, %r9	# tmp1742,
	movq	%rsi, %r8	# tmp1743,
	movl	%eax, %esi	# D.14978,
	movl	$2, %edi	#,
	call	AllocPlan7Matrix	#
	movq	%rax, -16(%rbp)	# tmp1746, fwd
	.loc 1 1693 0 discriminator 3
	movl	-68(%rbp), %eax	# start, tmp1748
	cltd
	shrl	$31, %edx	#, tmp1750
	addl	%edx, %eax	# tmp1750, tmp1751
	andl	$1, %eax	#, tmp1752
	subl	%edx, %eax	# tmp1750, tmp1753
	movl	%eax, -64(%rbp)	# tmp1753, cur
	.loc 1 1694 0 discriminator 3
	movq	-48(%rbp), %rax	# xmx, xmx.462
	movl	-64(%rbp), %edx	# cur, tmp1754
	movslq	%edx, %rdx	# tmp1754, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_51, D.14981
	leaq	16(%rax), %rdx	#, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.463
	movl	-64(%rbp), %ecx	# cur, tmp1755
	movslq	%ecx, %rcx	# tmp1755, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_57, D.14981
	movl	$-987654321, (%rax)	#, *_58
	movl	(%rax), %eax	# *_58, D.14978
	movl	%eax, (%rdx)	# D.14978, *_53
	.loc 1 1695 0 discriminator 3
	movq	-48(%rbp), %rax	# xmx, xmx.464
	movl	-64(%rbp), %edx	# cur, tmp1756
	movslq	%edx, %rdx	# tmp1756, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_63, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.465
	movl	-64(%rbp), %ecx	# cur, tmp1757
	movslq	%ecx, %rcx	# tmp1757, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_69, D.14981
	addq	$8, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_71
	movl	(%rax), %eax	# *_71, D.14978
	movl	%eax, (%rdx)	# D.14978, *_65
	.loc 1 1696 0 discriminator 3
	movl	-120(%rbp), %eax	# k1, tmp1758
	movl	%eax, -76(%rbp)	# tmp1758, k
	jmp	.L260	#
.L261:
	.loc 1 1697 0 discriminator 2
	movq	-40(%rbp), %rax	# mmx, mmx.466
	movl	-64(%rbp), %edx	# cur, tmp1759
	movslq	%edx, %rdx	# tmp1759, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_79, D.14981
	movl	-76(%rbp), %edx	# k, tmp1760
	movslq	%edx, %rdx	# tmp1760, D.14979
	salq	$2, %rdx	#, D.14979
	leaq	(%rax,%rdx), %rcx	#, D.14981
	movq	-32(%rbp), %rax	# imx, imx.467
	movl	-64(%rbp), %edx	# cur, tmp1761
	movslq	%edx, %rdx	# tmp1761, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_87, D.14981
	movl	-76(%rbp), %edx	# k, tmp1762
	movslq	%edx, %rdx	# tmp1762, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movq	-24(%rbp), %rdx	# dmx, dmx.468
	movl	-64(%rbp), %esi	# cur, tmp1763
	movslq	%esi, %rsi	# tmp1763, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14980
	movq	(%rdx), %rdx	# *_95, D.14981
	movl	-76(%rbp), %esi	# k, tmp1764
	movslq	%esi, %rsi	# tmp1764, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14981
	movl	$-987654321, (%rdx)	#, *_99
	movl	(%rdx), %edx	# *_99, D.14978
	movl	%edx, (%rax)	# D.14978, *_91
	movl	(%rax), %eax	# *_91, D.14978
	movl	%eax, (%rcx)	# D.14978, *_83
	.loc 1 1696 0 discriminator 2
	addl	$1, -76(%rbp)	#, k
.L260:
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp1765
	cmpl	16(%rbp), %eax	# k3, tmp1765
	jle	.L261	#,
	.loc 1 1702 0 is_stmt 1
	movsbl	-124(%rbp), %eax	# t1, D.14978
	cmpl	$8, %eax	#, D.14978
	ja	.L262	#,
	movl	%eax, %eax	# D.14978, tmp1766
	movq	.L264(,%rax,8), %rax	#, tmp1767
	jmp	*%rax	# tmp1767
	.section	.rodata
	.align 8
	.align 4
.L264:
	.quad	.L262
	.quad	.L263
	.quad	.L262
	.quad	.L265
	.quad	.L266
	.quad	.L267
	.quad	.L262
	.quad	.L262
	.quad	.L268
	.text
.L263:
	.loc 1 1703 0
	movq	-40(%rbp), %rax	# mmx, mmx.469
	movl	-64(%rbp), %edx	# cur, tmp1768
	movslq	%edx, %rdx	# tmp1768, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_107, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1769
	movslq	%edx, %rdx	# tmp1769, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$0, (%rax)	#, *_111
	jmp	.L269	#
.L265:
	.loc 1 1704 0
	movq	-32(%rbp), %rax	# imx, imx.470
	movl	-64(%rbp), %edx	# cur, tmp1770
	movslq	%edx, %rdx	# tmp1770, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_115, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1771
	movslq	%edx, %rdx	# tmp1771, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$0, (%rax)	#, *_119
	jmp	.L269	#
.L267:
	.loc 1 1705 0
	movq	-48(%rbp), %rax	# xmx, xmx.471
	movl	-64(%rbp), %edx	# cur, tmp1772
	movslq	%edx, %rdx	# tmp1772, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_123, D.14981
	addq	$16, %rax	#, D.14981
	movl	$0, (%rax)	#, *_125
	jmp	.L269	#
.L268:
	.loc 1 1706 0
	movq	-48(%rbp), %rax	# xmx, xmx.472
	movl	-64(%rbp), %edx	# cur, tmp1773
	movslq	%edx, %rdx	# tmp1773, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_129, D.14981
	addq	$8, %rax	#, D.14981
	movl	$0, (%rax)	#, *_131
	jmp	.L269	#
.L266:
	.loc 1 1707 0
	movq	-48(%rbp), %rax	# xmx, xmx.473
	movl	-64(%rbp), %edx	# cur, tmp1774
	movslq	%edx, %rdx	# tmp1774, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_135, D.14981
	addq	$16, %rax	#, D.14981
	movl	$0, (%rax)	#, *_137
	jmp	.L269	#
.L262:
	.loc 1 1708 0
	movsbl	-124(%rbp), %eax	# t1, D.14978
	movl	%eax, %edi	# D.14978,
	call	Statetype	#
	movq	%rax, %rsi	# D.14982,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L269:
	.loc 1 1722 0
	cmpb	$1, -124(%rbp)	#, t1
	jne	.L270	#,
	.loc 1 1724 0
	movl	-120(%rbp), %eax	# k1, tmp1778
	addl	$1, %eax	#, tmp1777
	movl	%eax, -76(%rbp)	# tmp1777, k
	jmp	.L271	#
.L274:
	.loc 1 1726 0
	movq	-24(%rbp), %rax	# dmx, dmx.474
	movl	-64(%rbp), %edx	# cur, tmp1779
	movslq	%edx, %rdx	# tmp1779, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_144, D.14981
	movl	-76(%rbp), %edx	# k, tmp1780
	movslq	%edx, %rdx	# tmp1780, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_148
	.loc 1 1727 0
	movq	-40(%rbp), %rax	# mmx, mmx.475
	movl	-64(%rbp), %edx	# cur, tmp1781
	movslq	%edx, %rdx	# tmp1781, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_152, D.14981
	movl	-76(%rbp), %edx	# k, tmp1782
	movslq	%edx, %rdx	# tmp1782, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_157, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1783
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$16, %rax	#, D.14980
	movq	(%rax), %rax	# *_160, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1784
	movslq	%ecx, %rcx	# tmp1784, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_165, D.14978
	addl	%edx, %eax	# D.14978, tmp1785
	movl	%eax, -60(%rbp)	# tmp1785, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L272	#,
	.loc 1 1728 0
	movq	-24(%rbp), %rax	# dmx, dmx.476
	movl	-64(%rbp), %edx	# cur, tmp1786
	movslq	%edx, %rdx	# tmp1786, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_171, D.14981
	movl	-76(%rbp), %edx	# k, tmp1787
	movslq	%edx, %rdx	# tmp1787, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1788
	movl	%eax, (%rdx)	# tmp1788, *_175
.L272:
	.loc 1 1729 0
	movq	-24(%rbp), %rax	# dmx, dmx.477
	movl	-64(%rbp), %edx	# cur, tmp1789
	movslq	%edx, %rdx	# tmp1789, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_179, D.14981
	movl	-76(%rbp), %edx	# k, tmp1790
	movslq	%edx, %rdx	# tmp1790, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_184, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1791
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$48, %rax	#, D.14980
	movq	(%rax), %rax	# *_187, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1792
	movslq	%ecx, %rcx	# tmp1792, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_192, D.14978
	addl	%edx, %eax	# D.14978, tmp1793
	movl	%eax, -60(%rbp)	# tmp1793, sc
	movq	-24(%rbp), %rax	# dmx, dmx.478
	movl	-64(%rbp), %edx	# cur, tmp1794
	movslq	%edx, %rdx	# tmp1794, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_198, D.14981
	movl	-76(%rbp), %edx	# k, tmp1795
	movslq	%edx, %rdx	# tmp1795, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_202, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L273	#,
	.loc 1 1730 0
	movq	-24(%rbp), %rax	# dmx, dmx.479
	movl	-64(%rbp), %edx	# cur, tmp1796
	movslq	%edx, %rdx	# tmp1796, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_207, D.14981
	movl	-76(%rbp), %edx	# k, tmp1797
	movslq	%edx, %rdx	# tmp1797, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1798
	movl	%eax, (%rdx)	# tmp1798, *_211
.L273:
	.loc 1 1724 0
	addl	$1, -76(%rbp)	#, k
.L271:
	.loc 1 1724 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp1799
	cmpl	16(%rbp), %eax	# k3, tmp1799
	jle	.L274	#,
	.loc 1 1733 0 is_stmt 1
	movq	-48(%rbp), %rax	# xmx, xmx.480
	movl	-64(%rbp), %edx	# cur, tmp1800
	movslq	%edx, %rdx	# tmp1800, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_216, D.14981
	addq	$4, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_218
	.loc 1 1734 0
	movq	-40(%rbp), %rax	# mmx, mmx.481
	movl	-64(%rbp), %edx	# cur, tmp1801
	movslq	%edx, %rdx	# tmp1801, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_222, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1802
	movslq	%edx, %rdx	# tmp1802, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_226, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1803
	movq	376(%rax), %rax	# hmm_44(D)->esc, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1804
	movslq	%ecx, %rcx	# tmp1804, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_231, D.14978
	addl	%edx, %eax	# D.14978, tmp1805
	movl	%eax, -60(%rbp)	# tmp1805, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L270	#,
	.loc 1 1735 0
	movq	-48(%rbp), %rax	# xmx, xmx.482
	movl	-64(%rbp), %edx	# cur, tmp1806
	movslq	%edx, %rdx	# tmp1806, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_237, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1807
	movl	%eax, (%rdx)	# tmp1807, *_239
.L270:
	.loc 1 1738 0
	movq	-48(%rbp), %rax	# xmx, xmx.483
	movl	-64(%rbp), %edx	# cur, tmp1808
	movslq	%edx, %rdx	# tmp1808, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_243, D.14981
	movl	$-987654321, (%rax)	#, *_244
	.loc 1 1739 0
	movq	-48(%rbp), %rax	# xmx, xmx.484
	movl	-64(%rbp), %edx	# cur, tmp1809
	movslq	%edx, %rdx	# tmp1809, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_248, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %edx	# *_250, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1810
	movl	336(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp1811
	movl	%eax, -60(%rbp)	# tmp1811, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L275	#,
	.loc 1 1740 0
	movq	-48(%rbp), %rax	# xmx, xmx.485
	movl	-64(%rbp), %edx	# cur, tmp1812
	movslq	%edx, %rdx	# tmp1812, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_257, D.14981
	movl	-60(%rbp), %edx	# sc, tmp1813
	movl	%edx, (%rax)	# tmp1813, *_258
.L275:
	.loc 1 1742 0
	movq	-48(%rbp), %rax	# xmx, xmx.486
	movl	-64(%rbp), %edx	# cur, tmp1814
	movslq	%edx, %rdx	# tmp1814, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_262, D.14981
	addq	$8, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_264
	.loc 1 1743 0
	movq	-48(%rbp), %rax	# xmx, xmx.487
	movl	-64(%rbp), %edx	# cur, tmp1815
	movslq	%edx, %rdx	# tmp1815, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_268, D.14981
	addq	$4, %rax	#, D.14981
	movl	(%rax), %edx	# *_270, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1816
	movl	344(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp1817
	movl	%eax, -60(%rbp)	# tmp1817, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L276	#,
	.loc 1 1744 0
	movq	-48(%rbp), %rax	# xmx, xmx.488
	movl	-64(%rbp), %edx	# cur, tmp1818
	movslq	%edx, %rdx	# tmp1818, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_277, D.14981
	leaq	8(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1819
	movl	%eax, (%rdx)	# tmp1819, *_279
.L276:
	.loc 1 1749 0
	movl	-68(%rbp), %eax	# start, tmp1823
	addl	$1, %eax	#, tmp1822
	movl	%eax, -80(%rbp)	# tmp1822, i
	jmp	.L277	#
.L307:
	.loc 1 1750 0
	movl	-80(%rbp), %eax	# i, tmp1825
	cltd
	shrl	$31, %edx	#, tmp1827
	addl	%edx, %eax	# tmp1827, tmp1828
	andl	$1, %eax	#, tmp1829
	subl	%edx, %eax	# tmp1827, tmp1830
	movl	%eax, -64(%rbp)	# tmp1830, cur
	.loc 1 1751 0
	cmpl	$0, -64(%rbp)	#, cur
	sete	%al	#, D.14984
	movzbl	%al, %eax	# D.14984, tmp1831
	movl	%eax, -56(%rbp)	# tmp1831, prv
	.loc 1 1753 0
	movq	-40(%rbp), %rax	# mmx, mmx.489
	movl	-64(%rbp), %edx	# cur, tmp1832
	movslq	%edx, %rdx	# tmp1832, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_287, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1833
	movslq	%edx, %rdx	# tmp1833, D.14979
	salq	$2, %rdx	#, D.14979
	leaq	(%rax,%rdx), %rcx	#, D.14981
	movq	-32(%rbp), %rax	# imx, imx.490
	movl	-64(%rbp), %edx	# cur, tmp1834
	movslq	%edx, %rdx	# tmp1834, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_295, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1835
	movslq	%edx, %rdx	# tmp1835, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movq	-24(%rbp), %rdx	# dmx, dmx.491
	movl	-64(%rbp), %esi	# cur, tmp1836
	movslq	%esi, %rsi	# tmp1836, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14980
	movq	(%rdx), %rdx	# *_303, D.14981
	movl	-120(%rbp), %esi	# k1, tmp1837
	movslq	%esi, %rsi	# tmp1837, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14981
	movl	$-987654321, (%rdx)	#, *_307
	movl	(%rdx), %edx	# *_307, D.14978
	movl	%edx, (%rax)	# D.14978, *_299
	movl	(%rax), %eax	# *_299, D.14978
	movl	%eax, (%rcx)	# D.14978, *_291
	.loc 1 1757 0
	movq	-104(%rbp), %rax	# hmm, tmp1838
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	cmpl	-120(%rbp), %eax	# k1, D.14978
	jle	.L278	#,
	.loc 1 1758 0
	movq	-32(%rbp), %rax	# imx, imx.492
	movl	-64(%rbp), %edx	# cur, tmp1839
	movslq	%edx, %rdx	# tmp1839, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_314, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1840
	movslq	%edx, %rdx	# tmp1840, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_318
	.loc 1 1759 0
	movq	-40(%rbp), %rax	# mmx, mmx.493
	movl	-56(%rbp), %edx	# prv, tmp1841
	movslq	%edx, %rdx	# tmp1841, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_322, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1842
	movslq	%edx, %rdx	# tmp1842, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_326, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1843
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_329, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1844
	movslq	%ecx, %rcx	# tmp1844, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_333, D.14978
	addl	%edx, %eax	# D.14978, tmp1845
	movl	%eax, -60(%rbp)	# tmp1845, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L279	#,
	.loc 1 1760 0
	movq	-32(%rbp), %rax	# imx, imx.494
	movl	-64(%rbp), %edx	# cur, tmp1846
	movslq	%edx, %rdx	# tmp1846, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_339, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1847
	movslq	%edx, %rdx	# tmp1847, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1848
	movl	%eax, (%rdx)	# tmp1848, *_343
.L279:
	.loc 1 1761 0
	movq	-32(%rbp), %rax	# imx, imx.495
	movl	-56(%rbp), %edx	# prv, tmp1849
	movslq	%edx, %rdx	# tmp1849, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_347, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1850
	movslq	%edx, %rdx	# tmp1850, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_351, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1851
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$32, %rax	#, D.14980
	movq	(%rax), %rax	# *_354, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1852
	movslq	%ecx, %rcx	# tmp1852, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_358, D.14978
	addl	%edx, %eax	# D.14978, tmp1853
	movl	%eax, -60(%rbp)	# tmp1853, sc
	movq	-32(%rbp), %rax	# imx, imx.496
	movl	-64(%rbp), %edx	# cur, tmp1854
	movslq	%edx, %rdx	# tmp1854, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_364, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1855
	movslq	%edx, %rdx	# tmp1855, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_368, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L280	#,
	.loc 1 1762 0
	movq	-32(%rbp), %rax	# imx, imx.497
	movl	-64(%rbp), %edx	# cur, tmp1856
	movslq	%edx, %rdx	# tmp1856, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_373, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1857
	movslq	%edx, %rdx	# tmp1857, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1858
	movl	%eax, (%rdx)	# tmp1858, *_377
.L280:
	.loc 1 1763 0
	movq	-104(%rbp), %rax	# hmm, tmp1859
	movq	328(%rax), %rax	# hmm_44(D)->isc, D.14980
	movl	-80(%rbp), %edx	# i, tmp1860
	movslq	%edx, %rcx	# tmp1860, D.14983
	movq	-112(%rbp), %rdx	# dsq, tmp1861
	addq	%rcx, %rdx	# D.14983, D.14982
	movzbl	(%rdx), %edx	# *_381, D.14985
	movsbq	%dl, %rdx	# D.14985, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_385, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1862
	movslq	%edx, %rdx	# tmp1862, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_389, D.14978
	cmpl	$-987654321, %eax	#, D.14978
	je	.L281	#,
	.loc 1 1764 0
	movq	-32(%rbp), %rax	# imx, imx.498
	movl	-64(%rbp), %edx	# cur, tmp1863
	movslq	%edx, %rdx	# tmp1863, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_394, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1864
	movslq	%edx, %rdx	# tmp1864, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-32(%rbp), %rax	# imx, imx.499
	movl	-64(%rbp), %ecx	# cur, tmp1865
	movslq	%ecx, %rcx	# tmp1865, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_402, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1866
	movslq	%ecx, %rcx	# tmp1866, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_406, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1867
	movq	328(%rax), %rax	# hmm_44(D)->isc, D.14980
	movl	-80(%rbp), %esi	# i, tmp1868
	movslq	%esi, %rdi	# tmp1868, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp1869
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_410, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_414, D.14981
	movl	-120(%rbp), %esi	# k1, tmp1870
	movslq	%esi, %rsi	# tmp1870, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_418, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_398
	jmp	.L278	#
.L281:
	.loc 1 1766 0
	movq	-32(%rbp), %rax	# imx, imx.500
	movl	-64(%rbp), %edx	# cur, tmp1871
	movslq	%edx, %rdx	# tmp1871, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_424, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1872
	movslq	%edx, %rdx	# tmp1872, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_428
.L278:
	.loc 1 1768 0
	movq	-48(%rbp), %rax	# xmx, xmx.501
	movl	-56(%rbp), %edx	# prv, tmp1873
	movslq	%edx, %rdx	# tmp1873, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_432, D.14981
	movl	(%rax), %edx	# *_433, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1874
	movq	368(%rax), %rax	# hmm_44(D)->bsc, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1875
	movslq	%ecx, %rcx	# tmp1875, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_438, D.14978
	addl	%edx, %eax	# D.14978, tmp1876
	movl	%eax, -60(%rbp)	# tmp1876, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L282	#,
	.loc 1 1769 0
	movq	-40(%rbp), %rax	# mmx, mmx.502
	movl	-64(%rbp), %edx	# cur, tmp1877
	movslq	%edx, %rdx	# tmp1877, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_444, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1878
	movslq	%edx, %rdx	# tmp1878, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1879
	movl	%eax, (%rdx)	# tmp1879, *_448
.L282:
	.loc 1 1770 0
	movq	-104(%rbp), %rax	# hmm, tmp1880
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %edx	# i, tmp1881
	movslq	%edx, %rcx	# tmp1881, D.14983
	movq	-112(%rbp), %rdx	# dsq, tmp1882
	addq	%rcx, %rdx	# D.14983, D.14982
	movzbl	(%rdx), %edx	# *_451, D.14985
	movsbq	%dl, %rdx	# D.14985, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_455, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1883
	movslq	%edx, %rdx	# tmp1883, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_459, D.14978
	cmpl	$-987654321, %eax	#, D.14978
	je	.L283	#,
	.loc 1 1771 0
	movq	-40(%rbp), %rax	# mmx, mmx.503
	movl	-64(%rbp), %edx	# cur, tmp1884
	movslq	%edx, %rdx	# tmp1884, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_464, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1885
	movslq	%edx, %rdx	# tmp1885, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-40(%rbp), %rax	# mmx, mmx.504
	movl	-64(%rbp), %ecx	# cur, tmp1886
	movslq	%ecx, %rcx	# tmp1886, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_472, D.14981
	movl	-120(%rbp), %ecx	# k1, tmp1887
	movslq	%ecx, %rcx	# tmp1887, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_476, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1888
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %esi	# i, tmp1889
	movslq	%esi, %rdi	# tmp1889, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp1890
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_480, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_484, D.14981
	movl	-120(%rbp), %esi	# k1, tmp1891
	movslq	%esi, %rsi	# tmp1891, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_488, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_468
	jmp	.L284	#
.L283:
	.loc 1 1773 0
	movq	-40(%rbp), %rax	# mmx, mmx.505
	movl	-64(%rbp), %edx	# cur, tmp1892
	movslq	%edx, %rdx	# tmp1892, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_494, D.14981
	movl	-120(%rbp), %edx	# k1, tmp1893
	movslq	%edx, %rdx	# tmp1893, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_498
.L284:
	.loc 1 1777 0
	movl	-120(%rbp), %eax	# k1, tmp1897
	addl	$1, %eax	#, tmp1896
	movl	%eax, -76(%rbp)	# tmp1896, k
	jmp	.L285	#
.L298:
	.loc 1 1779 0
	movq	-40(%rbp), %rax	# mmx, mmx.506
	movl	-64(%rbp), %edx	# cur, tmp1898
	movslq	%edx, %rdx	# tmp1898, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_503, D.14981
	movl	-76(%rbp), %edx	# k, tmp1899
	movslq	%edx, %rdx	# tmp1899, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_507
	.loc 1 1780 0
	movq	-40(%rbp), %rax	# mmx, mmx.507
	movl	-56(%rbp), %edx	# prv, tmp1900
	movslq	%edx, %rdx	# tmp1900, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_511, D.14981
	movl	-76(%rbp), %edx	# k, tmp1901
	movslq	%edx, %rdx	# tmp1901, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_516, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1902
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	movq	(%rax), %rax	# *_518, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1903
	movslq	%ecx, %rcx	# tmp1903, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_523, D.14978
	addl	%edx, %eax	# D.14978, tmp1904
	movl	%eax, -60(%rbp)	# tmp1904, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L286	#,
	.loc 1 1781 0
	movq	-40(%rbp), %rax	# mmx, mmx.508
	movl	-64(%rbp), %edx	# cur, tmp1905
	movslq	%edx, %rdx	# tmp1905, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_529, D.14981
	movl	-76(%rbp), %edx	# k, tmp1906
	movslq	%edx, %rdx	# tmp1906, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1907
	movl	%eax, (%rdx)	# tmp1907, *_533
.L286:
	.loc 1 1782 0
	movq	-32(%rbp), %rax	# imx, imx.509
	movl	-56(%rbp), %edx	# prv, tmp1908
	movslq	%edx, %rdx	# tmp1908, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_537, D.14981
	movl	-76(%rbp), %edx	# k, tmp1909
	movslq	%edx, %rdx	# tmp1909, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_542, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1910
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$24, %rax	#, D.14980
	movq	(%rax), %rax	# *_545, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1911
	movslq	%ecx, %rcx	# tmp1911, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_550, D.14978
	addl	%edx, %eax	# D.14978, tmp1912
	movl	%eax, -60(%rbp)	# tmp1912, sc
	movq	-40(%rbp), %rax	# mmx, mmx.510
	movl	-64(%rbp), %edx	# cur, tmp1913
	movslq	%edx, %rdx	# tmp1913, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_556, D.14981
	movl	-76(%rbp), %edx	# k, tmp1914
	movslq	%edx, %rdx	# tmp1914, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_560, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L287	#,
	.loc 1 1783 0
	movq	-40(%rbp), %rax	# mmx, mmx.511
	movl	-64(%rbp), %edx	# cur, tmp1915
	movslq	%edx, %rdx	# tmp1915, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_565, D.14981
	movl	-76(%rbp), %edx	# k, tmp1916
	movslq	%edx, %rdx	# tmp1916, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1917
	movl	%eax, (%rdx)	# tmp1917, *_569
.L287:
	.loc 1 1784 0
	movq	-48(%rbp), %rax	# xmx, xmx.512
	movl	-56(%rbp), %edx	# prv, tmp1918
	movslq	%edx, %rdx	# tmp1918, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_573, D.14981
	movl	(%rax), %edx	# *_574, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1919
	movq	368(%rax), %rax	# hmm_44(D)->bsc, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1920
	movslq	%ecx, %rcx	# tmp1920, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_579, D.14978
	addl	%edx, %eax	# D.14978, tmp1921
	movl	%eax, -60(%rbp)	# tmp1921, sc
	movq	-40(%rbp), %rax	# mmx, mmx.513
	movl	-64(%rbp), %edx	# cur, tmp1922
	movslq	%edx, %rdx	# tmp1922, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_585, D.14981
	movl	-76(%rbp), %edx	# k, tmp1923
	movslq	%edx, %rdx	# tmp1923, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_589, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L288	#,
	.loc 1 1785 0
	movq	-40(%rbp), %rax	# mmx, mmx.514
	movl	-64(%rbp), %edx	# cur, tmp1924
	movslq	%edx, %rdx	# tmp1924, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_594, D.14981
	movl	-76(%rbp), %edx	# k, tmp1925
	movslq	%edx, %rdx	# tmp1925, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1926
	movl	%eax, (%rdx)	# tmp1926, *_598
.L288:
	.loc 1 1786 0
	movq	-24(%rbp), %rax	# dmx, dmx.515
	movl	-56(%rbp), %edx	# prv, tmp1927
	movslq	%edx, %rdx	# tmp1927, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_602, D.14981
	movl	-76(%rbp), %edx	# k, tmp1928
	movslq	%edx, %rdx	# tmp1928, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_607, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1929
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$40, %rax	#, D.14980
	movq	(%rax), %rax	# *_610, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1930
	movslq	%ecx, %rcx	# tmp1930, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_615, D.14978
	addl	%edx, %eax	# D.14978, tmp1931
	movl	%eax, -60(%rbp)	# tmp1931, sc
	movq	-40(%rbp), %rax	# mmx, mmx.516
	movl	-64(%rbp), %edx	# cur, tmp1932
	movslq	%edx, %rdx	# tmp1932, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_621, D.14981
	movl	-76(%rbp), %edx	# k, tmp1933
	movslq	%edx, %rdx	# tmp1933, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_625, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L289	#,
	.loc 1 1787 0
	movq	-40(%rbp), %rax	# mmx, mmx.517
	movl	-64(%rbp), %edx	# cur, tmp1934
	movslq	%edx, %rdx	# tmp1934, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_630, D.14981
	movl	-76(%rbp), %edx	# k, tmp1935
	movslq	%edx, %rdx	# tmp1935, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1936
	movl	%eax, (%rdx)	# tmp1936, *_634
.L289:
	.loc 1 1788 0
	movq	-104(%rbp), %rax	# hmm, tmp1937
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %edx	# i, tmp1938
	movslq	%edx, %rcx	# tmp1938, D.14983
	movq	-112(%rbp), %rdx	# dsq, tmp1939
	addq	%rcx, %rdx	# D.14983, D.14982
	movzbl	(%rdx), %edx	# *_637, D.14985
	movsbq	%dl, %rdx	# D.14985, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_641, D.14981
	movl	-76(%rbp), %edx	# k, tmp1940
	movslq	%edx, %rdx	# tmp1940, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_645, D.14978
	cmpl	$-987654321, %eax	#, D.14978
	je	.L290	#,
	.loc 1 1789 0
	movq	-40(%rbp), %rax	# mmx, mmx.518
	movl	-64(%rbp), %edx	# cur, tmp1941
	movslq	%edx, %rdx	# tmp1941, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_650, D.14981
	movl	-76(%rbp), %edx	# k, tmp1942
	movslq	%edx, %rdx	# tmp1942, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-40(%rbp), %rax	# mmx, mmx.519
	movl	-64(%rbp), %ecx	# cur, tmp1943
	movslq	%ecx, %rcx	# tmp1943, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_658, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1944
	movslq	%ecx, %rcx	# tmp1944, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_662, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1945
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %esi	# i, tmp1946
	movslq	%esi, %rdi	# tmp1946, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp1947
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_666, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_670, D.14981
	movl	-76(%rbp), %esi	# k, tmp1948
	movslq	%esi, %rsi	# tmp1948, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_674, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_654
	jmp	.L291	#
.L290:
	.loc 1 1791 0
	movq	-40(%rbp), %rax	# mmx, mmx.520
	movl	-64(%rbp), %edx	# cur, tmp1949
	movslq	%edx, %rdx	# tmp1949, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_680, D.14981
	movl	-76(%rbp), %edx	# k, tmp1950
	movslq	%edx, %rdx	# tmp1950, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_684
.L291:
	.loc 1 1794 0
	movq	-24(%rbp), %rax	# dmx, dmx.521
	movl	-64(%rbp), %edx	# cur, tmp1951
	movslq	%edx, %rdx	# tmp1951, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_688, D.14981
	movl	-76(%rbp), %edx	# k, tmp1952
	movslq	%edx, %rdx	# tmp1952, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_692
	.loc 1 1795 0
	movq	-104(%rbp), %rax	# hmm, tmp1953
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	cmpl	-76(%rbp), %eax	# k, D.14978
	jle	.L292	#,
	.loc 1 1796 0
	movq	-40(%rbp), %rax	# mmx, mmx.522
	movl	-64(%rbp), %edx	# cur, tmp1954
	movslq	%edx, %rdx	# tmp1954, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_697, D.14981
	movl	-76(%rbp), %edx	# k, tmp1955
	movslq	%edx, %rdx	# tmp1955, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_702, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1956
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$16, %rax	#, D.14980
	movq	(%rax), %rax	# *_705, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1957
	movslq	%ecx, %rcx	# tmp1957, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_710, D.14978
	addl	%edx, %eax	# D.14978, tmp1958
	movl	%eax, -60(%rbp)	# tmp1958, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L293	#,
	.loc 1 1797 0
	movq	-24(%rbp), %rax	# dmx, dmx.523
	movl	-64(%rbp), %edx	# cur, tmp1959
	movslq	%edx, %rdx	# tmp1959, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_716, D.14981
	movl	-76(%rbp), %edx	# k, tmp1960
	movslq	%edx, %rdx	# tmp1960, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1961
	movl	%eax, (%rdx)	# tmp1961, *_720
.L293:
	.loc 1 1798 0
	movq	-24(%rbp), %rax	# dmx, dmx.524
	movl	-64(%rbp), %edx	# cur, tmp1962
	movslq	%edx, %rdx	# tmp1962, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_724, D.14981
	movl	-76(%rbp), %edx	# k, tmp1963
	movslq	%edx, %rdx	# tmp1963, D.14979
	salq	$2, %rdx	#, D.14979
	subq	$4, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_729, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1964
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$48, %rax	#, D.14980
	movq	(%rax), %rax	# *_732, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1965
	movslq	%ecx, %rcx	# tmp1965, D.14979
	salq	$2, %rcx	#, D.14979
	subq	$4, %rcx	#, D.14983
	addq	%rcx, %rax	# D.14983, D.14981
	movl	(%rax), %eax	# *_737, D.14978
	addl	%edx, %eax	# D.14978, tmp1966
	movl	%eax, -60(%rbp)	# tmp1966, sc
	movq	-24(%rbp), %rax	# dmx, dmx.525
	movl	-64(%rbp), %edx	# cur, tmp1967
	movslq	%edx, %rdx	# tmp1967, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_743, D.14981
	movl	-76(%rbp), %edx	# k, tmp1968
	movslq	%edx, %rdx	# tmp1968, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_747, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L292	#,
	.loc 1 1799 0
	movq	-24(%rbp), %rax	# dmx, dmx.526
	movl	-64(%rbp), %edx	# cur, tmp1969
	movslq	%edx, %rdx	# tmp1969, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_752, D.14981
	movl	-76(%rbp), %edx	# k, tmp1970
	movslq	%edx, %rdx	# tmp1970, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1971
	movl	%eax, (%rdx)	# tmp1971, *_756
.L292:
	.loc 1 1803 0
	movq	-32(%rbp), %rax	# imx, imx.527
	movl	-64(%rbp), %edx	# cur, tmp1972
	movslq	%edx, %rdx	# tmp1972, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_760, D.14981
	movl	-76(%rbp), %edx	# k, tmp1973
	movslq	%edx, %rdx	# tmp1973, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_764
	.loc 1 1804 0
	movq	-104(%rbp), %rax	# hmm, tmp1974
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	cmpl	-76(%rbp), %eax	# k, D.14978
	jle	.L294	#,
	.loc 1 1805 0
	movq	-40(%rbp), %rax	# mmx, mmx.528
	movl	-56(%rbp), %edx	# prv, tmp1975
	movslq	%edx, %rdx	# tmp1975, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_769, D.14981
	movl	-76(%rbp), %edx	# k, tmp1976
	movslq	%edx, %rdx	# tmp1976, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_773, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1977
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_776, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1978
	movslq	%ecx, %rcx	# tmp1978, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_780, D.14978
	addl	%edx, %eax	# D.14978, tmp1979
	movl	%eax, -60(%rbp)	# tmp1979, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L295	#,
	.loc 1 1806 0
	movq	-32(%rbp), %rax	# imx, imx.529
	movl	-64(%rbp), %edx	# cur, tmp1980
	movslq	%edx, %rdx	# tmp1980, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_786, D.14981
	movl	-76(%rbp), %edx	# k, tmp1981
	movslq	%edx, %rdx	# tmp1981, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1982
	movl	%eax, (%rdx)	# tmp1982, *_790
.L295:
	.loc 1 1807 0
	movq	-32(%rbp), %rax	# imx, imx.530
	movl	-56(%rbp), %edx	# prv, tmp1983
	movslq	%edx, %rdx	# tmp1983, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_794, D.14981
	movl	-76(%rbp), %edx	# k, tmp1984
	movslq	%edx, %rdx	# tmp1984, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_798, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp1985
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$32, %rax	#, D.14980
	movq	(%rax), %rax	# *_801, D.14981
	movl	-76(%rbp), %ecx	# k, tmp1986
	movslq	%ecx, %rcx	# tmp1986, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_805, D.14978
	addl	%edx, %eax	# D.14978, tmp1987
	movl	%eax, -60(%rbp)	# tmp1987, sc
	movq	-32(%rbp), %rax	# imx, imx.531
	movl	-64(%rbp), %edx	# cur, tmp1988
	movslq	%edx, %rdx	# tmp1988, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_811, D.14981
	movl	-76(%rbp), %edx	# k, tmp1989
	movslq	%edx, %rdx	# tmp1989, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_815, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L296	#,
	.loc 1 1808 0
	movq	-32(%rbp), %rax	# imx, imx.532
	movl	-64(%rbp), %edx	# cur, tmp1990
	movslq	%edx, %rdx	# tmp1990, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_820, D.14981
	movl	-76(%rbp), %edx	# k, tmp1991
	movslq	%edx, %rdx	# tmp1991, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp1992
	movl	%eax, (%rdx)	# tmp1992, *_824
.L296:
	.loc 1 1809 0
	movq	-104(%rbp), %rax	# hmm, tmp1993
	movq	328(%rax), %rax	# hmm_44(D)->isc, D.14980
	movl	-80(%rbp), %edx	# i, tmp1994
	movslq	%edx, %rcx	# tmp1994, D.14983
	movq	-112(%rbp), %rdx	# dsq, tmp1995
	addq	%rcx, %rdx	# D.14983, D.14982
	movzbl	(%rdx), %edx	# *_827, D.14985
	movsbq	%dl, %rdx	# D.14985, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_831, D.14981
	movl	-76(%rbp), %edx	# k, tmp1996
	movslq	%edx, %rdx	# tmp1996, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_835, D.14978
	cmpl	$-987654321, %eax	#, D.14978
	je	.L297	#,
	.loc 1 1810 0
	movq	-32(%rbp), %rax	# imx, imx.533
	movl	-64(%rbp), %edx	# cur, tmp1997
	movslq	%edx, %rdx	# tmp1997, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_840, D.14981
	movl	-76(%rbp), %edx	# k, tmp1998
	movslq	%edx, %rdx	# tmp1998, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-32(%rbp), %rax	# imx, imx.534
	movl	-64(%rbp), %ecx	# cur, tmp1999
	movslq	%ecx, %rcx	# tmp1999, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_848, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2000
	movslq	%ecx, %rcx	# tmp2000, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_852, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2001
	movq	328(%rax), %rax	# hmm_44(D)->isc, D.14980
	movl	-80(%rbp), %esi	# i, tmp2002
	movslq	%esi, %rdi	# tmp2002, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp2003
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_856, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_860, D.14981
	movl	-76(%rbp), %esi	# k, tmp2004
	movslq	%esi, %rsi	# tmp2004, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_864, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_844
	jmp	.L294	#
.L297:
	.loc 1 1812 0
	movq	-32(%rbp), %rax	# imx, imx.535
	movl	-64(%rbp), %edx	# cur, tmp2005
	movslq	%edx, %rdx	# tmp2005, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_870, D.14981
	movl	-76(%rbp), %edx	# k, tmp2006
	movslq	%edx, %rdx	# tmp2006, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_874
.L294:
	.loc 1 1777 0
	addl	$1, -76(%rbp)	#, k
.L285:
	.loc 1 1777 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2007
	cmpl	16(%rbp), %eax	# k3, tmp2007
	jle	.L298	#,
	.loc 1 1816 0 is_stmt 1
	movq	-48(%rbp), %rax	# xmx, xmx.536
	movl	-64(%rbp), %edx	# cur, tmp2008
	movslq	%edx, %rdx	# tmp2008, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_879, D.14981
	addq	$16, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_881
	.loc 1 1817 0
	movq	-48(%rbp), %rax	# xmx, xmx.537
	movl	-56(%rbp), %edx	# prv, tmp2009
	movslq	%edx, %rdx	# tmp2009, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_885, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %edx	# *_887, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2010
	movl	340(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2011
	movl	%eax, -60(%rbp)	# tmp2011, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L299	#,
	.loc 1 1818 0
	movq	-48(%rbp), %rax	# xmx, xmx.538
	movl	-64(%rbp), %edx	# cur, tmp2012
	movslq	%edx, %rdx	# tmp2012, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_894, D.14981
	leaq	16(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2013
	movl	%eax, (%rdx)	# tmp2013, *_896
.L299:
	.loc 1 1820 0
	movq	-48(%rbp), %rax	# xmx, xmx.539
	movl	-64(%rbp), %edx	# cur, tmp2014
	movslq	%edx, %rdx	# tmp2014, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_900, D.14981
	addq	$4, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_902
	.loc 1 1821 0
	movl	-120(%rbp), %eax	# k1, tmp2015
	movl	%eax, -76(%rbp)	# tmp2015, k
	jmp	.L300	#
.L303:
	.loc 1 1822 0
	movq	-40(%rbp), %rax	# mmx, mmx.540
	movl	-64(%rbp), %edx	# cur, tmp2016
	movslq	%edx, %rdx	# tmp2016, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_908, D.14981
	movl	-76(%rbp), %edx	# k, tmp2017
	movslq	%edx, %rdx	# tmp2017, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_912, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2018
	movq	376(%rax), %rax	# hmm_44(D)->esc, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2019
	movslq	%ecx, %rcx	# tmp2019, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_917, D.14978
	addl	%edx, %eax	# D.14978, tmp2020
	movl	%eax, -60(%rbp)	# tmp2020, sc
	movq	-48(%rbp), %rax	# xmx, xmx.541
	movl	-64(%rbp), %edx	# cur, tmp2021
	movslq	%edx, %rdx	# tmp2021, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_923, D.14981
	addq	$4, %rax	#, D.14981
	movl	(%rax), %eax	# *_925, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L301	#,
	.loc 1 1823 0
	movq	-48(%rbp), %rax	# xmx, xmx.542
	movl	-64(%rbp), %edx	# cur, tmp2022
	movslq	%edx, %rdx	# tmp2022, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_930, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2023
	movl	%eax, (%rdx)	# tmp2023, *_932
.L301:
	.loc 1 1821 0
	addl	$1, -76(%rbp)	#, k
.L300:
	.loc 1 1821 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2024
	cmpl	16(%rbp), %eax	# k3, tmp2024
	jg	.L302	#,
	.loc 1 1821 0 discriminator 2
	movq	-104(%rbp), %rax	# hmm, tmp2025
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	cmpl	-76(%rbp), %eax	# k, D.14978
	jge	.L303	#,
.L302:
	.loc 1 1825 0 is_stmt 1
	movq	-48(%rbp), %rax	# xmx, xmx.543
	movl	-64(%rbp), %edx	# cur, tmp2026
	movslq	%edx, %rdx	# tmp2026, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_937, D.14981
	movl	$-987654321, (%rax)	#, *_938
	.loc 1 1826 0
	movq	-48(%rbp), %rax	# xmx, xmx.544
	movl	-64(%rbp), %edx	# cur, tmp2027
	movslq	%edx, %rdx	# tmp2027, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_942, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %edx	# *_944, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2028
	movl	336(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2029
	movl	%eax, -60(%rbp)	# tmp2029, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L304	#,
	.loc 1 1827 0
	movq	-48(%rbp), %rax	# xmx, xmx.545
	movl	-64(%rbp), %edx	# cur, tmp2030
	movslq	%edx, %rdx	# tmp2030, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_951, D.14981
	movl	-60(%rbp), %edx	# sc, tmp2031
	movl	%edx, (%rax)	# tmp2031, *_952
.L304:
	.loc 1 1829 0
	movq	-48(%rbp), %rax	# xmx, xmx.546
	movl	-64(%rbp), %edx	# cur, tmp2032
	movslq	%edx, %rdx	# tmp2032, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_956, D.14981
	addq	$8, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_958
	.loc 1 1830 0
	movq	-48(%rbp), %rax	# xmx, xmx.547
	movl	-56(%rbp), %edx	# prv, tmp2033
	movslq	%edx, %rdx	# tmp2033, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_962, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %edx	# *_964, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2034
	movl	356(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2035
	movl	%eax, -60(%rbp)	# tmp2035, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L305	#,
	.loc 1 1831 0
	movq	-48(%rbp), %rax	# xmx, xmx.548
	movl	-64(%rbp), %edx	# cur, tmp2036
	movslq	%edx, %rdx	# tmp2036, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_971, D.14981
	leaq	8(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2037
	movl	%eax, (%rdx)	# tmp2037, *_973
.L305:
	.loc 1 1832 0
	movq	-48(%rbp), %rax	# xmx, xmx.549
	movl	-64(%rbp), %edx	# cur, tmp2038
	movslq	%edx, %rdx	# tmp2038, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_977, D.14981
	addq	$4, %rax	#, D.14981
	movl	(%rax), %edx	# *_979, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2039
	movl	344(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2040
	movl	%eax, -60(%rbp)	# tmp2040, sc
	movq	-48(%rbp), %rax	# xmx, xmx.550
	movl	-64(%rbp), %edx	# cur, tmp2041
	movslq	%edx, %rdx	# tmp2041, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_986, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %eax	# *_988, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L306	#,
	.loc 1 1833 0
	movq	-48(%rbp), %rax	# xmx, xmx.551
	movl	-64(%rbp), %edx	# cur, tmp2042
	movslq	%edx, %rdx	# tmp2042, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_993, D.14981
	leaq	8(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2043
	movl	%eax, (%rdx)	# tmp2043, *_995
.L306:
	.loc 1 1749 0
	addl	$1, -80(%rbp)	#, i
.L277:
	.loc 1 1749 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp2044
	cmpl	-84(%rbp), %eax	# s2, tmp2044
	jle	.L307	#,
	.loc 1 1846 0 is_stmt 1
	movq	-104(%rbp), %rax	# hmm, tmp2045
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	leaq	-24(%rbp), %rdi	#, tmp2046
	leaq	-32(%rbp), %rsi	#, tmp2047
	leaq	-40(%rbp), %rcx	#, tmp2048
	leaq	-48(%rbp), %rdx	#, tmp2049
	movq	%rdi, %r9	# tmp2046,
	movq	%rsi, %r8	# tmp2047,
	movl	%eax, %esi	# D.14978,
	movl	$2, %edi	#,
	call	AllocPlan7Matrix	#
	movq	%rax, -8(%rbp)	# tmp2050, bck
	.loc 1 1847 0
	movl	32(%rbp), %eax	# s3, tmp2052
	cltd
	shrl	$31, %edx	#, tmp2054
	addl	%edx, %eax	# tmp2054, tmp2055
	andl	$1, %eax	#, tmp2056
	subl	%edx, %eax	# tmp2054, tmp2057
	movl	%eax, -52(%rbp)	# tmp2057, nxt
	.loc 1 1848 0
	movq	-48(%rbp), %rax	# xmx, xmx.552
	movl	-52(%rbp), %edx	# nxt, tmp2058
	movslq	%edx, %rdx	# tmp2058, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1003, D.14981
	leaq	16(%rax), %rdx	#, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.553
	movl	-52(%rbp), %ecx	# nxt, tmp2059
	movslq	%ecx, %rcx	# tmp2059, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1009, D.14981
	movl	$-987654321, (%rax)	#, *_1010
	movl	(%rax), %eax	# *_1010, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1005
	.loc 1 1849 0
	movq	-48(%rbp), %rax	# xmx, xmx.554
	movl	-52(%rbp), %edx	# nxt, tmp2060
	movslq	%edx, %rdx	# tmp2060, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1015, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.555
	movl	-52(%rbp), %ecx	# nxt, tmp2061
	movslq	%ecx, %rcx	# tmp2061, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1021, D.14981
	addq	$8, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_1023
	movl	(%rax), %eax	# *_1023, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1017
	.loc 1 1850 0
	movl	-120(%rbp), %eax	# k1, tmp2062
	movl	%eax, -76(%rbp)	# tmp2062, k
	jmp	.L308	#
.L309:
	.loc 1 1851 0 discriminator 2
	movq	-40(%rbp), %rax	# mmx, mmx.556
	movl	-52(%rbp), %edx	# nxt, tmp2063
	movslq	%edx, %rdx	# tmp2063, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1030, D.14981
	movl	-76(%rbp), %edx	# k, tmp2064
	movslq	%edx, %rdx	# tmp2064, D.14979
	salq	$2, %rdx	#, D.14979
	leaq	(%rax,%rdx), %rcx	#, D.14981
	movq	-32(%rbp), %rax	# imx, imx.557
	movl	-52(%rbp), %edx	# nxt, tmp2065
	movslq	%edx, %rdx	# tmp2065, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1038, D.14981
	movl	-76(%rbp), %edx	# k, tmp2066
	movslq	%edx, %rdx	# tmp2066, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movq	-24(%rbp), %rdx	# dmx, dmx.558
	movl	-52(%rbp), %esi	# nxt, tmp2067
	movslq	%esi, %rsi	# tmp2067, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14980
	movq	(%rdx), %rdx	# *_1046, D.14981
	movl	-76(%rbp), %esi	# k, tmp2068
	movslq	%esi, %rsi	# tmp2068, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14981
	movl	$-987654321, (%rdx)	#, *_1050
	movl	(%rdx), %edx	# *_1050, D.14978
	movl	%edx, (%rax)	# D.14978, *_1042
	movl	(%rax), %eax	# *_1042, D.14978
	movl	%eax, (%rcx)	# D.14978, *_1034
	.loc 1 1850 0 discriminator 2
	addl	$1, -76(%rbp)	#, k
.L308:
	.loc 1 1850 0 is_stmt 0 discriminator 1
	movl	16(%rbp), %eax	# k3, tmp2069
	addl	$1, %eax	#, D.14978
	cmpl	-76(%rbp), %eax	# k, D.14978
	jge	.L309	#,
	.loc 1 1852 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, nxt
	sete	%al	#, D.14984
	movzbl	%al, %eax	# D.14984, tmp2070
	movl	%eax, -64(%rbp)	# tmp2070, cur
	.loc 1 1853 0
	movq	-40(%rbp), %rax	# mmx, mmx.559
	movl	-64(%rbp), %edx	# cur, tmp2071
	movslq	%edx, %rdx	# tmp2071, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1059, D.14981
	movl	16(%rbp), %edx	# k3, tmp2072
	movslq	%edx, %rdx	# tmp2072, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	leaq	(%rax,%rdx), %rcx	#, D.14981
	movq	-32(%rbp), %rax	# imx, imx.560
	movl	-64(%rbp), %edx	# cur, tmp2073
	movslq	%edx, %rdx	# tmp2073, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1068, D.14981
	movl	16(%rbp), %edx	# k3, tmp2074
	movslq	%edx, %rdx	# tmp2074, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movq	-24(%rbp), %rdx	# dmx, dmx.561
	movl	-64(%rbp), %esi	# cur, tmp2075
	movslq	%esi, %rsi	# tmp2075, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rdx	# D.14979, D.14980
	movq	(%rdx), %rdx	# *_1077, D.14981
	movl	16(%rbp), %esi	# k3, tmp2076
	movslq	%esi, %rsi	# tmp2076, D.14983
	addq	$1, %rsi	#, D.14983
	salq	$2, %rsi	#, D.14983
	addq	%rsi, %rdx	# D.14983, D.14981
	movl	$-987654321, (%rdx)	#, *_1082
	movl	(%rdx), %edx	# *_1082, D.14978
	movl	%edx, (%rax)	# D.14978, *_1073
	movl	(%rax), %eax	# *_1073, D.14978
	movl	%eax, (%rcx)	# D.14978, *_1064
	.loc 1 1857 0
	movsbl	-132(%rbp), %eax	# t3, D.14978
	cmpl	$9, %eax	#, D.14978
	ja	.L310	#,
	movl	%eax, %eax	# D.14978, tmp2077
	movq	.L312(,%rax,8), %rax	#, tmp2078
	jmp	*%rax	# tmp2078
	.section	.rodata
	.align 8
	.align 4
.L312:
	.quad	.L310
	.quad	.L311
	.quad	.L310
	.quad	.L313
	.quad	.L310
	.quad	.L314
	.quad	.L310
	.quad	.L310
	.quad	.L315
	.quad	.L316
	.text
.L311:
	.loc 1 1858 0
	movq	-40(%rbp), %rax	# mmx, mmx.562
	movl	-52(%rbp), %edx	# nxt, tmp2079
	movslq	%edx, %rdx	# tmp2079, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1089, D.14981
	movl	16(%rbp), %edx	# k3, tmp2080
	movslq	%edx, %rdx	# tmp2080, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$0, (%rax)	#, *_1093
	jmp	.L317	#
.L313:
	.loc 1 1859 0
	movq	-32(%rbp), %rax	# imx, imx.563
	movl	-52(%rbp), %edx	# nxt, tmp2081
	movslq	%edx, %rdx	# tmp2081, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1097, D.14981
	movl	16(%rbp), %edx	# k3, tmp2082
	movslq	%edx, %rdx	# tmp2082, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$0, (%rax)	#, *_1101
	jmp	.L317	#
.L314:
	.loc 1 1860 0
	movq	-48(%rbp), %rax	# xmx, xmx.564
	movl	-52(%rbp), %edx	# nxt, tmp2083
	movslq	%edx, %rdx	# tmp2083, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1105, D.14981
	addq	$16, %rax	#, D.14981
	movl	$0, (%rax)	#, *_1107
	jmp	.L317	#
.L315:
	.loc 1 1861 0
	movq	-48(%rbp), %rax	# xmx, xmx.565
	movl	-52(%rbp), %edx	# nxt, tmp2084
	movslq	%edx, %rdx	# tmp2084, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1111, D.14981
	addq	$8, %rax	#, D.14981
	movl	$0, (%rax)	#, *_1113
	jmp	.L317	#
.L316:
	.loc 1 1862 0
	movq	-48(%rbp), %rax	# xmx, xmx.566
	movl	-52(%rbp), %edx	# nxt, tmp2085
	movslq	%edx, %rdx	# tmp2085, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1117, D.14981
	leaq	8(%rax), %rdx	#, D.14981
	movq	-104(%rbp), %rax	# hmm, tmp2086
	movl	352(%rax), %eax	# hmm_44(D)->xsc, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1119
	jmp	.L317	#
.L310:
	.loc 1 1863 0
	movsbl	-132(%rbp), %eax	# t3, D.14978
	movl	%eax, %edi	# D.14978,
	call	Statetype	#
	movq	%rax, %rsi	# D.14982,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L317:
	.loc 1 1871 0
	cmpb	$9, -132(%rbp)	#, t3
	jne	.L318	#,
	.loc 1 1873 0
	movq	-48(%rbp), %rax	# xmx, xmx.567
	movl	-52(%rbp), %edx	# nxt, tmp2087
	movslq	%edx, %rdx	# tmp2087, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1126, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.568
	movl	-52(%rbp), %ecx	# nxt, tmp2088
	movslq	%ecx, %rcx	# tmp2088, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1132, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %ecx	# *_1134, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2089
	movl	344(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1128
	.loc 1 1875 0
	movl	16(%rbp), %eax	# k3, tmp2090
	movl	%eax, -76(%rbp)	# tmp2090, k
	jmp	.L319	#
.L321:
	.loc 1 1876 0
	movq	-40(%rbp), %rax	# mmx, mmx.569
	movl	-52(%rbp), %edx	# nxt, tmp2091
	movslq	%edx, %rdx	# tmp2091, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1142, D.14981
	movl	-76(%rbp), %edx	# k, tmp2092
	movslq	%edx, %rdx	# tmp2092, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.570
	movl	-52(%rbp), %ecx	# nxt, tmp2093
	movslq	%ecx, %rcx	# tmp2093, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1150, D.14981
	addq	$4, %rax	#, D.14981
	movl	(%rax), %ecx	# *_1152, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2094
	movq	376(%rax), %rax	# hmm_44(D)->esc, D.14981
	movl	-76(%rbp), %esi	# k, tmp2095
	movslq	%esi, %rsi	# tmp2095, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1157, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1146
	.loc 1 1877 0
	movl	32(%rbp), %eax	# s3, tmp2096
	cmpl	-84(%rbp), %eax	# s2, tmp2096
	je	.L320	#,
	.loc 1 1878 0
	movq	-40(%rbp), %rax	# mmx, mmx.571
	movl	-52(%rbp), %edx	# nxt, tmp2097
	movslq	%edx, %rdx	# tmp2097, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1163, D.14981
	movl	-76(%rbp), %edx	# k, tmp2098
	movslq	%edx, %rdx	# tmp2098, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-40(%rbp), %rax	# mmx, mmx.572
	movl	-52(%rbp), %ecx	# nxt, tmp2099
	movslq	%ecx, %rcx	# tmp2099, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1171, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2100
	movslq	%ecx, %rcx	# tmp2100, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_1175, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2101
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	32(%rbp), %esi	# s3, tmp2102
	movslq	%esi, %rdi	# tmp2102, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp2103
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_1179, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1183, D.14981
	movl	-76(%rbp), %esi	# k, tmp2104
	movslq	%esi, %rsi	# tmp2104, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1187, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1167
.L320:
	.loc 1 1875 0
	subl	$1, -76(%rbp)	#, k
.L319:
	.loc 1 1875 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2105
	cmpl	-120(%rbp), %eax	# k1, tmp2105
	jge	.L321	#,
.L318:
	.loc 1 1886 0 is_stmt 1
	movl	32(%rbp), %eax	# s3, tmp2109
	subl	$1, %eax	#, tmp2108
	movl	%eax, -80(%rbp)	# tmp2108, i
	jmp	.L322	#
.L344:
	.loc 1 1888 0
	movl	-80(%rbp), %eax	# i, tmp2111
	cltd
	shrl	$31, %edx	#, tmp2113
	addl	%edx, %eax	# tmp2113, tmp2114
	andl	$1, %eax	#, tmp2115
	subl	%edx, %eax	# tmp2113, tmp2116
	movl	%eax, -64(%rbp)	# tmp2116, cur
	.loc 1 1889 0
	cmpl	$0, -64(%rbp)	#, cur
	sete	%al	#, D.14984
	movzbl	%al, %eax	# D.14984, tmp2117
	movl	%eax, -52(%rbp)	# tmp2117, nxt
	.loc 1 1891 0
	movq	-48(%rbp), %rax	# xmx, xmx.573
	movl	-64(%rbp), %edx	# cur, tmp2118
	movslq	%edx, %rdx	# tmp2118, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1198, D.14981
	addq	$8, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_1200
	.loc 1 1892 0
	movq	-48(%rbp), %rax	# xmx, xmx.574
	movl	-52(%rbp), %edx	# nxt, tmp2119
	movslq	%edx, %rdx	# tmp2119, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1204, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %edx	# *_1206, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2120
	movl	356(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2121
	movl	%eax, -60(%rbp)	# tmp2121, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L323	#,
	.loc 1 1893 0
	movq	-48(%rbp), %rax	# xmx, xmx.575
	movl	-64(%rbp), %edx	# cur, tmp2122
	movslq	%edx, %rdx	# tmp2122, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1213, D.14981
	leaq	8(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2123
	movl	%eax, (%rdx)	# tmp2123, *_1215
.L323:
	.loc 1 1895 0
	movq	-48(%rbp), %rax	# xmx, xmx.576
	movl	-64(%rbp), %edx	# cur, tmp2124
	movslq	%edx, %rdx	# tmp2124, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1219, D.14981
	movl	$-987654321, (%rax)	#, *_1220
	.loc 1 1896 0
	movl	-120(%rbp), %eax	# k1, tmp2125
	movl	%eax, -76(%rbp)	# tmp2125, k
	jmp	.L324	#
.L326:
	.loc 1 1897 0
	movq	-40(%rbp), %rax	# mmx, mmx.577
	movl	-52(%rbp), %edx	# nxt, tmp2126
	movslq	%edx, %rdx	# tmp2126, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1225, D.14981
	movl	-76(%rbp), %edx	# k, tmp2127
	movslq	%edx, %rdx	# tmp2127, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_1229, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2128
	movq	368(%rax), %rax	# hmm_44(D)->bsc, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2129
	movslq	%ecx, %rcx	# tmp2129, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1234, D.14978
	addl	%edx, %eax	# D.14978, tmp2130
	movl	%eax, -60(%rbp)	# tmp2130, sc
	movq	-48(%rbp), %rax	# xmx, xmx.578
	movl	-64(%rbp), %edx	# cur, tmp2131
	movslq	%edx, %rdx	# tmp2131, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1240, D.14981
	movl	(%rax), %eax	# *_1241, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L325	#,
	.loc 1 1898 0
	movq	-48(%rbp), %rax	# xmx, xmx.579
	movl	-64(%rbp), %edx	# cur, tmp2132
	movslq	%edx, %rdx	# tmp2132, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1246, D.14981
	movl	-60(%rbp), %edx	# sc, tmp2133
	movl	%edx, (%rax)	# tmp2133, *_1247
.L325:
	.loc 1 1896 0
	addl	$1, -76(%rbp)	#, k
.L324:
	.loc 1 1896 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2134
	cmpl	16(%rbp), %eax	# k3, tmp2134
	jle	.L326	#,
	.loc 1 1900 0 is_stmt 1
	movq	-48(%rbp), %rax	# xmx, xmx.580
	movl	-64(%rbp), %edx	# cur, tmp2135
	movslq	%edx, %rdx	# tmp2135, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1252, D.14981
	addq	$4, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_1254
	.loc 1 1901 0
	movq	-48(%rbp), %rax	# xmx, xmx.581
	movl	-64(%rbp), %edx	# cur, tmp2136
	movslq	%edx, %rdx	# tmp2136, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1258, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %edx	# *_1260, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2137
	movl	344(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2138
	movl	%eax, -60(%rbp)	# tmp2138, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L327	#,
	.loc 1 1902 0
	movq	-48(%rbp), %rax	# xmx, xmx.582
	movl	-64(%rbp), %edx	# cur, tmp2139
	movslq	%edx, %rdx	# tmp2139, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1267, D.14981
	leaq	4(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2140
	movl	%eax, (%rdx)	# tmp2140, *_1269
.L327:
	.loc 1 1904 0
	movq	-48(%rbp), %rax	# xmx, xmx.583
	movl	-64(%rbp), %edx	# cur, tmp2141
	movslq	%edx, %rdx	# tmp2141, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1273, D.14981
	addq	$16, %rax	#, D.14981
	movl	$-987654321, (%rax)	#, *_1275
	.loc 1 1905 0
	movq	-48(%rbp), %rax	# xmx, xmx.584
	movl	-64(%rbp), %edx	# cur, tmp2142
	movslq	%edx, %rdx	# tmp2142, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1279, D.14981
	movl	(%rax), %edx	# *_1280, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2143
	movl	336(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2144
	movl	%eax, -60(%rbp)	# tmp2144, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L328	#,
	.loc 1 1906 0
	movq	-48(%rbp), %rax	# xmx, xmx.585
	movl	-64(%rbp), %edx	# cur, tmp2145
	movslq	%edx, %rdx	# tmp2145, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1287, D.14981
	leaq	16(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2146
	movl	%eax, (%rdx)	# tmp2146, *_1289
.L328:
	.loc 1 1907 0
	movq	-48(%rbp), %rax	# xmx, xmx.586
	movl	-52(%rbp), %edx	# nxt, tmp2147
	movslq	%edx, %rdx	# tmp2147, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1293, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %edx	# *_1295, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2148
	movl	340(%rax), %eax	# hmm_44(D)->xsc, D.14978
	addl	%edx, %eax	# D.14978, tmp2149
	movl	%eax, -60(%rbp)	# tmp2149, sc
	movq	-48(%rbp), %rax	# xmx, xmx.587
	movl	-64(%rbp), %edx	# cur, tmp2150
	movslq	%edx, %rdx	# tmp2150, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1302, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %eax	# *_1304, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L329	#,
	.loc 1 1908 0
	movq	-48(%rbp), %rax	# xmx, xmx.588
	movl	-64(%rbp), %edx	# cur, tmp2151
	movslq	%edx, %rdx	# tmp2151, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1309, D.14981
	leaq	16(%rax), %rdx	#, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2152
	movl	%eax, (%rdx)	# tmp2152, *_1311
.L329:
	.loc 1 1912 0
	movl	16(%rbp), %eax	# k3, tmp2153
	movl	%eax, -76(%rbp)	# tmp2153, k
	jmp	.L330	#
.L343:
	.loc 1 1914 0
	movq	-104(%rbp), %rax	# hmm, tmp2154
	movl	136(%rax), %eax	# hmm_44(D)->M, D.14978
	cmpl	-76(%rbp), %eax	# k, D.14978
	jne	.L331	#,
	.loc 1 1915 0
	movq	-40(%rbp), %rax	# mmx, mmx.589
	movl	-64(%rbp), %edx	# cur, tmp2155
	movslq	%edx, %rdx	# tmp2155, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1317, D.14981
	movl	-76(%rbp), %edx	# k, tmp2156
	movslq	%edx, %rdx	# tmp2156, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-48(%rbp), %rax	# xmx, xmx.590
	movl	-64(%rbp), %ecx	# cur, tmp2157
	movslq	%ecx, %rcx	# tmp2157, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1325, D.14981
	movl	4(%rax), %eax	# MEM[(int *)_1326 + 4B], D.14978
	movl	%eax, (%rdx)	# D.14978, *_1321
	.loc 1 1916 0
	movq	-24(%rbp), %rax	# dmx, dmx.591
	movl	-64(%rbp), %edx	# cur, tmp2158
	movslq	%edx, %rdx	# tmp2158, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1331, D.14981
	movl	-76(%rbp), %edx	# k, tmp2159
	movslq	%edx, %rdx	# tmp2159, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_1335
	.loc 1 1917 0
	movq	-32(%rbp), %rax	# imx, imx.592
	movl	-64(%rbp), %edx	# cur, tmp2160
	movslq	%edx, %rdx	# tmp2160, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1339, D.14981
	movl	-76(%rbp), %edx	# k, tmp2161
	movslq	%edx, %rdx	# tmp2161, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_1343
	.loc 1 1918 0
	movl	-80(%rbp), %eax	# i, tmp2162
	cmpl	-84(%rbp), %eax	# s2, tmp2162
	je	.L332	#,
	.loc 1 1919 0
	movq	-40(%rbp), %rax	# mmx, mmx.593
	movl	-64(%rbp), %edx	# cur, tmp2163
	movslq	%edx, %rdx	# tmp2163, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1347, D.14981
	movl	-76(%rbp), %edx	# k, tmp2164
	movslq	%edx, %rdx	# tmp2164, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-40(%rbp), %rax	# mmx, mmx.594
	movl	-64(%rbp), %ecx	# cur, tmp2165
	movslq	%ecx, %rcx	# tmp2165, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1355, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2166
	movslq	%ecx, %rcx	# tmp2166, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_1359, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2167
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %esi	# i, tmp2168
	movslq	%esi, %rdi	# tmp2168, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp2169
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_1363, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1367, D.14981
	movl	-76(%rbp), %esi	# k, tmp2170
	movslq	%esi, %rsi	# tmp2170, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1371, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1351
	.loc 1 1920 0
	jmp	.L333	#
.L332:
	jmp	.L333	#
.L331:
	.loc 1 1924 0
	movq	-40(%rbp), %rax	# mmx, mmx.595
	movl	-64(%rbp), %edx	# cur, tmp2171
	movslq	%edx, %rdx	# tmp2171, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1377, D.14981
	movl	-76(%rbp), %edx	# k, tmp2172
	movslq	%edx, %rdx	# tmp2172, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_1381
	.loc 1 1925 0
	movq	-48(%rbp), %rax	# xmx, xmx.596
	movl	-64(%rbp), %edx	# cur, tmp2173
	movslq	%edx, %rdx	# tmp2173, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1385, D.14981
	addq	$4, %rax	#, D.14981
	movl	(%rax), %edx	# *_1387, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2174
	movq	376(%rax), %rax	# hmm_44(D)->esc, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2175
	movslq	%ecx, %rcx	# tmp2175, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1392, D.14978
	addl	%edx, %eax	# D.14978, tmp2176
	movl	%eax, -60(%rbp)	# tmp2176, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L334	#,
	.loc 1 1926 0
	movq	-40(%rbp), %rax	# mmx, mmx.597
	movl	-64(%rbp), %edx	# cur, tmp2177
	movslq	%edx, %rdx	# tmp2177, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1398, D.14981
	movl	-76(%rbp), %edx	# k, tmp2178
	movslq	%edx, %rdx	# tmp2178, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2179
	movl	%eax, (%rdx)	# tmp2179, *_1402
.L334:
	.loc 1 1927 0
	movq	-40(%rbp), %rax	# mmx, mmx.598
	movl	-52(%rbp), %edx	# nxt, tmp2180
	movslq	%edx, %rdx	# tmp2180, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1406, D.14981
	movl	-76(%rbp), %edx	# k, tmp2181
	movslq	%edx, %rdx	# tmp2181, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_1411, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2182
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	movq	(%rax), %rax	# *_1413, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2183
	movslq	%ecx, %rcx	# tmp2183, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1417, D.14978
	addl	%edx, %eax	# D.14978, tmp2184
	movl	%eax, -60(%rbp)	# tmp2184, sc
	movq	-40(%rbp), %rax	# mmx, mmx.599
	movl	-64(%rbp), %edx	# cur, tmp2185
	movslq	%edx, %rdx	# tmp2185, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1423, D.14981
	movl	-76(%rbp), %edx	# k, tmp2186
	movslq	%edx, %rdx	# tmp2186, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1427, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L335	#,
	.loc 1 1928 0
	movq	-40(%rbp), %rax	# mmx, mmx.600
	movl	-64(%rbp), %edx	# cur, tmp2187
	movslq	%edx, %rdx	# tmp2187, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1432, D.14981
	movl	-76(%rbp), %edx	# k, tmp2188
	movslq	%edx, %rdx	# tmp2188, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2189
	movl	%eax, (%rdx)	# tmp2189, *_1436
.L335:
	.loc 1 1929 0
	movq	-32(%rbp), %rax	# imx, imx.601
	movl	-52(%rbp), %edx	# nxt, tmp2190
	movslq	%edx, %rdx	# tmp2190, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1440, D.14981
	movl	-76(%rbp), %edx	# k, tmp2191
	movslq	%edx, %rdx	# tmp2191, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_1444, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2192
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_1447, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2193
	movslq	%ecx, %rcx	# tmp2193, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1451, D.14978
	addl	%edx, %eax	# D.14978, tmp2194
	movl	%eax, -60(%rbp)	# tmp2194, sc
	movq	-40(%rbp), %rax	# mmx, mmx.602
	movl	-64(%rbp), %edx	# cur, tmp2195
	movslq	%edx, %rdx	# tmp2195, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1457, D.14981
	movl	-76(%rbp), %edx	# k, tmp2196
	movslq	%edx, %rdx	# tmp2196, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1461, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L336	#,
	.loc 1 1930 0
	movq	-40(%rbp), %rax	# mmx, mmx.603
	movl	-64(%rbp), %edx	# cur, tmp2197
	movslq	%edx, %rdx	# tmp2197, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1466, D.14981
	movl	-76(%rbp), %edx	# k, tmp2198
	movslq	%edx, %rdx	# tmp2198, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2199
	movl	%eax, (%rdx)	# tmp2199, *_1470
.L336:
	.loc 1 1931 0
	movq	-24(%rbp), %rax	# dmx, dmx.604
	movl	-64(%rbp), %edx	# cur, tmp2200
	movslq	%edx, %rdx	# tmp2200, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1474, D.14981
	movl	-76(%rbp), %edx	# k, tmp2201
	movslq	%edx, %rdx	# tmp2201, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_1479, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2202
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$16, %rax	#, D.14980
	movq	(%rax), %rax	# *_1482, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2203
	movslq	%ecx, %rcx	# tmp2203, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1486, D.14978
	addl	%edx, %eax	# D.14978, tmp2204
	movl	%eax, -60(%rbp)	# tmp2204, sc
	movq	-40(%rbp), %rax	# mmx, mmx.605
	movl	-64(%rbp), %edx	# cur, tmp2205
	movslq	%edx, %rdx	# tmp2205, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1492, D.14981
	movl	-76(%rbp), %edx	# k, tmp2206
	movslq	%edx, %rdx	# tmp2206, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1496, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L337	#,
	.loc 1 1932 0
	movq	-40(%rbp), %rax	# mmx, mmx.606
	movl	-64(%rbp), %edx	# cur, tmp2207
	movslq	%edx, %rdx	# tmp2207, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1501, D.14981
	movl	-76(%rbp), %edx	# k, tmp2208
	movslq	%edx, %rdx	# tmp2208, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2209
	movl	%eax, (%rdx)	# tmp2209, *_1505
.L337:
	.loc 1 1933 0
	movl	-80(%rbp), %eax	# i, tmp2210
	cmpl	-84(%rbp), %eax	# s2, tmp2210
	je	.L338	#,
	.loc 1 1934 0
	movq	-40(%rbp), %rax	# mmx, mmx.607
	movl	-64(%rbp), %edx	# cur, tmp2211
	movslq	%edx, %rdx	# tmp2211, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1509, D.14981
	movl	-76(%rbp), %edx	# k, tmp2212
	movslq	%edx, %rdx	# tmp2212, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-40(%rbp), %rax	# mmx, mmx.608
	movl	-64(%rbp), %ecx	# cur, tmp2213
	movslq	%ecx, %rcx	# tmp2213, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1517, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2214
	movslq	%ecx, %rcx	# tmp2214, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_1521, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2215
	movq	320(%rax), %rax	# hmm_44(D)->msc, D.14980
	movl	-80(%rbp), %esi	# i, tmp2216
	movslq	%esi, %rdi	# tmp2216, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp2217
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_1525, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1529, D.14981
	movl	-76(%rbp), %esi	# k, tmp2218
	movslq	%esi, %rsi	# tmp2218, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1533, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1513
.L338:
	.loc 1 1937 0
	movq	-24(%rbp), %rax	# dmx, dmx.609
	movl	-64(%rbp), %edx	# cur, tmp2219
	movslq	%edx, %rdx	# tmp2219, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1539, D.14981
	movl	-76(%rbp), %edx	# k, tmp2220
	movslq	%edx, %rdx	# tmp2220, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_1543
	.loc 1 1938 0
	movq	-40(%rbp), %rax	# mmx, mmx.610
	movl	-52(%rbp), %edx	# nxt, tmp2221
	movslq	%edx, %rdx	# tmp2221, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1547, D.14981
	movl	-76(%rbp), %edx	# k, tmp2222
	movslq	%edx, %rdx	# tmp2222, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_1552, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2223
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$40, %rax	#, D.14980
	movq	(%rax), %rax	# *_1555, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2224
	movslq	%ecx, %rcx	# tmp2224, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1559, D.14978
	addl	%edx, %eax	# D.14978, tmp2225
	movl	%eax, -60(%rbp)	# tmp2225, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L339	#,
	.loc 1 1939 0
	movq	-24(%rbp), %rax	# dmx, dmx.611
	movl	-64(%rbp), %edx	# cur, tmp2226
	movslq	%edx, %rdx	# tmp2226, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1565, D.14981
	movl	-76(%rbp), %edx	# k, tmp2227
	movslq	%edx, %rdx	# tmp2227, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2228
	movl	%eax, (%rdx)	# tmp2228, *_1569
.L339:
	.loc 1 1940 0
	movq	-24(%rbp), %rax	# dmx, dmx.612
	movl	-64(%rbp), %edx	# cur, tmp2229
	movslq	%edx, %rdx	# tmp2229, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1573, D.14981
	movl	-76(%rbp), %edx	# k, tmp2230
	movslq	%edx, %rdx	# tmp2230, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_1578, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2231
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$48, %rax	#, D.14980
	movq	(%rax), %rax	# *_1581, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2232
	movslq	%ecx, %rcx	# tmp2232, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1585, D.14978
	addl	%edx, %eax	# D.14978, tmp2233
	movl	%eax, -60(%rbp)	# tmp2233, sc
	movq	-24(%rbp), %rax	# dmx, dmx.613
	movl	-64(%rbp), %edx	# cur, tmp2234
	movslq	%edx, %rdx	# tmp2234, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1591, D.14981
	movl	-76(%rbp), %edx	# k, tmp2235
	movslq	%edx, %rdx	# tmp2235, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1595, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L340	#,
	.loc 1 1941 0
	movq	-24(%rbp), %rax	# dmx, dmx.614
	movl	-64(%rbp), %edx	# cur, tmp2236
	movslq	%edx, %rdx	# tmp2236, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1600, D.14981
	movl	-76(%rbp), %edx	# k, tmp2237
	movslq	%edx, %rdx	# tmp2237, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2238
	movl	%eax, (%rdx)	# tmp2238, *_1604
.L340:
	.loc 1 1943 0
	movq	-32(%rbp), %rax	# imx, imx.615
	movl	-64(%rbp), %edx	# cur, tmp2239
	movslq	%edx, %rdx	# tmp2239, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1608, D.14981
	movl	-76(%rbp), %edx	# k, tmp2240
	movslq	%edx, %rdx	# tmp2240, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	$-987654321, (%rax)	#, *_1612
	.loc 1 1944 0
	movq	-40(%rbp), %rax	# mmx, mmx.616
	movl	-52(%rbp), %edx	# nxt, tmp2241
	movslq	%edx, %rdx	# tmp2241, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1616, D.14981
	movl	-76(%rbp), %edx	# k, tmp2242
	movslq	%edx, %rdx	# tmp2242, D.14983
	addq	$1, %rdx	#, D.14983
	salq	$2, %rdx	#, D.14983
	addq	%rdx, %rax	# D.14983, D.14981
	movl	(%rax), %edx	# *_1621, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2243
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$24, %rax	#, D.14980
	movq	(%rax), %rax	# *_1624, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2244
	movslq	%ecx, %rcx	# tmp2244, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1628, D.14978
	addl	%edx, %eax	# D.14978, tmp2245
	movl	%eax, -60(%rbp)	# tmp2245, sc
	cmpl	$-987654320, -60(%rbp)	#, sc
	jl	.L341	#,
	.loc 1 1945 0
	movq	-32(%rbp), %rax	# imx, imx.617
	movl	-64(%rbp), %edx	# cur, tmp2246
	movslq	%edx, %rdx	# tmp2246, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1634, D.14981
	movl	-76(%rbp), %edx	# k, tmp2247
	movslq	%edx, %rdx	# tmp2247, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2248
	movl	%eax, (%rdx)	# tmp2248, *_1638
.L341:
	.loc 1 1946 0
	movq	-32(%rbp), %rax	# imx, imx.618
	movl	-52(%rbp), %edx	# nxt, tmp2249
	movslq	%edx, %rdx	# tmp2249, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1642, D.14981
	movl	-76(%rbp), %edx	# k, tmp2250
	movslq	%edx, %rdx	# tmp2250, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_1646, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2251
	movq	312(%rax), %rax	# hmm_44(D)->tsc, D.14980
	addq	$32, %rax	#, D.14980
	movq	(%rax), %rax	# *_1649, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2252
	movslq	%ecx, %rcx	# tmp2252, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1653, D.14978
	addl	%edx, %eax	# D.14978, tmp2253
	movl	%eax, -60(%rbp)	# tmp2253, sc
	movq	-32(%rbp), %rax	# imx, imx.619
	movl	-64(%rbp), %edx	# cur, tmp2254
	movslq	%edx, %rdx	# tmp2254, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1659, D.14981
	movl	-76(%rbp), %edx	# k, tmp2255
	movslq	%edx, %rdx	# tmp2255, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1663, D.14978
	cmpl	%eax, -60(%rbp)	# D.14978, sc
	jle	.L342	#,
	.loc 1 1947 0
	movq	-32(%rbp), %rax	# imx, imx.620
	movl	-64(%rbp), %edx	# cur, tmp2256
	movslq	%edx, %rdx	# tmp2256, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1668, D.14981
	movl	-76(%rbp), %edx	# k, tmp2257
	movslq	%edx, %rdx	# tmp2257, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movl	-60(%rbp), %eax	# sc, tmp2258
	movl	%eax, (%rdx)	# tmp2258, *_1672
.L342:
	.loc 1 1948 0
	movl	-80(%rbp), %eax	# i, tmp2259
	cmpl	-84(%rbp), %eax	# s2, tmp2259
	je	.L333	#,
	.loc 1 1949 0
	movq	-32(%rbp), %rax	# imx, imx.621
	movl	-64(%rbp), %edx	# cur, tmp2260
	movslq	%edx, %rdx	# tmp2260, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1676, D.14981
	movl	-76(%rbp), %edx	# k, tmp2261
	movslq	%edx, %rdx	# tmp2261, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rax, %rdx	# D.14981, D.14981
	movq	-32(%rbp), %rax	# imx, imx.622
	movl	-64(%rbp), %ecx	# cur, tmp2262
	movslq	%ecx, %rcx	# tmp2262, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1684, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2263
	movslq	%ecx, %rcx	# tmp2263, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %ecx	# *_1688, D.14978
	movq	-104(%rbp), %rax	# hmm, tmp2264
	movq	328(%rax), %rax	# hmm_44(D)->isc, D.14980
	movl	-80(%rbp), %esi	# i, tmp2265
	movslq	%esi, %rdi	# tmp2265, D.14983
	movq	-112(%rbp), %rsi	# dsq, tmp2266
	addq	%rdi, %rsi	# D.14983, D.14982
	movzbl	(%rsi), %esi	# *_1692, D.14985
	movsbq	%sil, %rsi	# D.14985, D.14979
	salq	$3, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1696, D.14981
	movl	-76(%rbp), %esi	# k, tmp2267
	movslq	%esi, %rsi	# tmp2267, D.14979
	salq	$2, %rsi	#, D.14979
	addq	%rsi, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1700, D.14978
	addl	%ecx, %eax	# D.14978, D.14978
	movl	%eax, (%rdx)	# D.14978, *_1680
.L333:
	.loc 1 1912 0
	subl	$1, -76(%rbp)	#, k
.L330:
	.loc 1 1912 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2268
	cmpl	-120(%rbp), %eax	# k1, tmp2268
	jge	.L343	#,
	.loc 1 1886 0 is_stmt 1
	subl	$1, -80(%rbp)	#, i
.L322:
	.loc 1 1886 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp2269
	cmpl	-84(%rbp), %eax	# s2, tmp2269
	jge	.L344	#,
	.loc 1 1959 0 is_stmt 1
	movl	-84(%rbp), %eax	# s2, tmp2271
	cltd
	shrl	$31, %edx	#, tmp2273
	addl	%edx, %eax	# tmp2273, tmp2274
	andl	$1, %eax	#, tmp2275
	subl	%edx, %eax	# tmp2273, tmp2276
	movl	%eax, -64(%rbp)	# tmp2276, cur
	.loc 1 1960 0
	movl	$-987654321, -72(%rbp)	#, max
	.loc 1 1961 0
	movl	-120(%rbp), %eax	# k1, tmp2277
	movl	%eax, -76(%rbp)	# tmp2277, k
	jmp	.L345	#
.L348:
	.loc 1 1963 0
	movq	-16(%rbp), %rax	# fwd, tmp2278
	movq	8(%rax), %rax	# fwd_46->mmx, D.14980
	movl	-64(%rbp), %edx	# cur, tmp2279
	movslq	%edx, %rdx	# tmp2279, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1713, D.14981
	movl	-76(%rbp), %edx	# k, tmp2280
	movslq	%edx, %rdx	# tmp2280, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_1717, D.14978
	movq	-8(%rbp), %rax	# bck, tmp2281
	movq	8(%rax), %rax	# bck_998->mmx, D.14980
	movl	-64(%rbp), %ecx	# cur, tmp2282
	movslq	%ecx, %rcx	# tmp2282, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1722, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2283
	movslq	%ecx, %rcx	# tmp2283, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1726, D.14978
	addl	%edx, %eax	# D.14978, tmp2284
	movl	%eax, -60(%rbp)	# tmp2284, sc
	movl	-60(%rbp), %eax	# sc, tmp2285
	cmpl	-72(%rbp), %eax	# max, tmp2285
	jle	.L346	#,
	.loc 1 1964 0
	movl	-76(%rbp), %eax	# k, tmp2286
	movl	%eax, -88(%rbp)	# tmp2286, k2
	movb	$1, -89(%rbp)	#, t2
	movl	-60(%rbp), %eax	# sc, tmp2287
	movl	%eax, -72(%rbp)	# tmp2287, max
.L346:
	.loc 1 1965 0
	movq	-16(%rbp), %rax	# fwd, tmp2288
	movq	16(%rax), %rax	# fwd_46->imx, D.14980
	movl	-64(%rbp), %edx	# cur, tmp2289
	movslq	%edx, %rdx	# tmp2289, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1735, D.14981
	movl	-76(%rbp), %edx	# k, tmp2290
	movslq	%edx, %rdx	# tmp2290, D.14979
	salq	$2, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14981
	movl	(%rax), %edx	# *_1739, D.14978
	movq	-8(%rbp), %rax	# bck, tmp2291
	movq	16(%rax), %rax	# bck_998->imx, D.14980
	movl	-64(%rbp), %ecx	# cur, tmp2292
	movslq	%ecx, %rcx	# tmp2292, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1744, D.14981
	movl	-76(%rbp), %ecx	# k, tmp2293
	movslq	%ecx, %rcx	# tmp2293, D.14979
	salq	$2, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14981
	movl	(%rax), %eax	# *_1748, D.14978
	addl	%edx, %eax	# D.14978, tmp2294
	movl	%eax, -60(%rbp)	# tmp2294, sc
	movl	-60(%rbp), %eax	# sc, tmp2295
	cmpl	-72(%rbp), %eax	# max, tmp2295
	jle	.L347	#,
	.loc 1 1966 0
	movl	-76(%rbp), %eax	# k, tmp2296
	movl	%eax, -88(%rbp)	# tmp2296, k2
	movb	$3, -89(%rbp)	#, t2
	movl	-60(%rbp), %eax	# sc, tmp2297
	movl	%eax, -72(%rbp)	# tmp2297, max
.L347:
	.loc 1 1961 0
	addl	$1, -76(%rbp)	#, k
.L345:
	.loc 1 1961 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# k, tmp2298
	cmpl	16(%rbp), %eax	# k3, tmp2298
	jle	.L348	#,
	.loc 1 1968 0 is_stmt 1
	movq	-16(%rbp), %rax	# fwd, tmp2299
	movq	(%rax), %rax	# fwd_46->xmx, D.14980
	movl	-64(%rbp), %edx	# cur, tmp2300
	movslq	%edx, %rdx	# tmp2300, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1758, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %edx	# *_1760, D.14978
	movq	-8(%rbp), %rax	# bck, tmp2301
	movq	(%rax), %rax	# bck_998->xmx, D.14980
	movl	-64(%rbp), %ecx	# cur, tmp2302
	movslq	%ecx, %rcx	# tmp2302, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1765, D.14981
	addq	$16, %rax	#, D.14981
	movl	(%rax), %eax	# *_1767, D.14978
	addl	%edx, %eax	# D.14978, tmp2303
	movl	%eax, -60(%rbp)	# tmp2303, sc
	movl	-60(%rbp), %eax	# sc, tmp2304
	cmpl	-72(%rbp), %eax	# max, tmp2304
	jle	.L349	#,
	.loc 1 1969 0
	movl	$1, -88(%rbp)	#, k2
	movb	$5, -89(%rbp)	#, t2
	movl	-60(%rbp), %eax	# sc, tmp2305
	movl	%eax, -72(%rbp)	# tmp2305, max
.L349:
	.loc 1 1970 0
	movq	-16(%rbp), %rax	# fwd, tmp2306
	movq	(%rax), %rax	# fwd_46->xmx, D.14980
	movl	-64(%rbp), %edx	# cur, tmp2307
	movslq	%edx, %rdx	# tmp2307, D.14979
	salq	$3, %rdx	#, D.14979
	addq	%rdx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1776, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %edx	# *_1778, D.14978
	movq	-8(%rbp), %rax	# bck, tmp2308
	movq	(%rax), %rax	# bck_998->xmx, D.14980
	movl	-64(%rbp), %ecx	# cur, tmp2309
	movslq	%ecx, %rcx	# tmp2309, D.14979
	salq	$3, %rcx	#, D.14979
	addq	%rcx, %rax	# D.14979, D.14980
	movq	(%rax), %rax	# *_1783, D.14981
	addq	$8, %rax	#, D.14981
	movl	(%rax), %eax	# *_1785, D.14978
	addl	%edx, %eax	# D.14978, tmp2310
	movl	%eax, -60(%rbp)	# tmp2310, sc
	movl	-60(%rbp), %eax	# sc, tmp2311
	cmpl	-72(%rbp), %eax	# max, tmp2311
	jle	.L350	#,
	.loc 1 1971 0
	movq	-104(%rbp), %rax	# hmm, tmp2312
	movl	136(%rax), %eax	# hmm_44(D)->M, tmp2313
	movl	%eax, -88(%rbp)	# tmp2313, k2
	movb	$8, -89(%rbp)	#, t2
	movl	-60(%rbp), %eax	# sc, tmp2314
	movl	%eax, -72(%rbp)	# tmp2314, max
.L350:
	.loc 1 1977 0
	movq	-16(%rbp), %rax	# fwd, tmp2315
	movq	%rax, %rdi	# tmp2315,
	call	FreePlan7Matrix	#
	.loc 1 1978 0
	movq	-8(%rbp), %rax	# bck, tmp2316
	movq	%rax, %rdi	# tmp2316,
	call	FreePlan7Matrix	#
	.loc 1 1979 0
	movq	40(%rbp), %rax	# ret_k2, tmp2317
	movl	-88(%rbp), %edx	# k2, tmp2318
	movl	%edx, (%rax)	# tmp2318, *ret_k2_1791(D)
	.loc 1 1980 0
	movq	48(%rbp), %rax	# ret_t2, tmp2319
	movzbl	-89(%rbp), %edx	# t2, tmp2320
	movb	%dl, (%rax)	# tmp2320, *ret_t2_1792(D)
	.loc 1 1981 0
	movq	56(%rbp), %rax	# ret_s2, tmp2321
	movl	-84(%rbp), %edx	# s2, tmp2322
	movl	%edx, (%rax)	# tmp2322, *ret_s2_1793(D)
	.loc 1 1982 0
	movl	-72(%rbp), %eax	# max, tmp2323
	movl	%eax, %edi	# tmp2323,
	call	Scorify	#
	movss	%xmm0, -136(%rbp)	#, %sfp
	movl	-136(%rbp), %eax	# %sfp, D.14986
	.loc 1 1983 0
	movl	%eax, -136(%rbp)	# <retval>, %sfp
	movss	-136(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	get_wee_midpt, .-get_wee_midpt
	.globl	P7ViterbiAlignAlignment
	.type	P7ViterbiAlignAlignment, @function
P7ViterbiAlignAlignment:
.LFB18:
	.loc 1 2023 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)	# msa, msa
	movq	%rsi, -176(%rbp)	# hmm, hmm
	.loc 1 2044 0
	movq	-168(%rbp), %rax	# msa, tmp1173
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	addl	$1, %eax	#, D.14988
	cltq
	salq	$3, %rax	#, D.14989
	movq	%rax, %rdx	# D.14989,
	movl	$2044, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -56(%rbp)	# tmp1174, con
	.loc 1 2045 0
	movq	-168(%rbp), %rax	# msa, tmp1175
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	addl	$1, %eax	#, D.14988
	cltq
	salq	$2, %rax	#, D.14989
	movq	%rax, %rdx	# D.14989,
	movl	$2045, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -48(%rbp)	# tmp1176, mocc
	.loc 1 2046 0
	movl	$1, -152(%rbp)	#, i
	jmp	.L353	#
.L354:
	.loc 1 2047 0 discriminator 2
	movl	-152(%rbp), %eax	# i, tmp1177
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1178
	leaq	(%rdx,%rax), %rbx	#, D.14990
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.623
	cltq
	salq	$2, %rax	#, D.14989
	movq	%rax, %rdx	# D.14989,
	movl	$2047, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.14991, *_26
	.loc 1 2048 0 discriminator 2
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.624
	movl	-152(%rbp), %eax	# i, tmp1179
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1180
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_34, D.14992
	xorps	%xmm0, %xmm0	#
	movl	%edx, %esi	# Alphabet_size.624,
	movq	%rax, %rdi	# D.14992,
	call	FSet	#
	.loc 1 2046 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L353:
	.loc 1 2046 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1181
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	cmpl	-152(%rbp), %eax	# i, D.14988
	jge	.L354	#,
	.loc 1 2050 0 is_stmt 1
	movq	-48(%rbp), %rdx	# mocc, tmp1182
	movl	.LC15(%rip), %eax	#, tmp1183
	movl	%eax, (%rdx)	# tmp1183, *mocc_21
	.loc 1 2054 0
	movq	-168(%rbp), %rax	# msa, tmp1184
	movl	28(%rax), %edx	# msa_11(D)->nseq, D.14988
	movq	-168(%rbp), %rax	# msa, tmp1185
	movq	16(%rax), %rax	# msa_11(D)->wgt, D.14992
	movl	%edx, %esi	# D.14988,
	movq	%rax, %rdi	# D.14992,
	call	FSum	#
	movss	%xmm0, -180(%rbp)	#, %sfp
	movl	-180(%rbp), %eax	# %sfp, tmp1186
	movl	%eax, -136(%rbp)	# tmp1186, denom
	.loc 1 2055 0
	movl	$1, -152(%rbp)	#, i
	jmp	.L355	#
.L359:
	.loc 1 2057 0
	movl	$0, -144(%rbp)	#, idx
	jmp	.L356	#
.L358:
	.loc 1 2058 0
	movq	-168(%rbp), %rax	# msa, tmp1187
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1188
	movslq	%edx, %rdx	# tmp1188, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_47, D.14994
	movl	-152(%rbp), %edx	# i, tmp1189
	movslq	%edx, %rdx	# tmp1189, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_51, D.14996
	cmpb	$32, %al	#, D.14996
	je	.L357	#,
	.loc 1 2058 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1190
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1191
	movslq	%edx, %rdx	# tmp1191, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_56, D.14994
	movl	-152(%rbp), %edx	# i, tmp1192
	movslq	%edx, %rdx	# tmp1192, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_60, D.14996
	cmpb	$46, %al	#, D.14996
	je	.L357	#,
	movq	-168(%rbp), %rax	# msa, tmp1193
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1194
	movslq	%edx, %rdx	# tmp1194, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_65, D.14994
	movl	-152(%rbp), %edx	# i, tmp1195
	movslq	%edx, %rdx	# tmp1195, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_69, D.14996
	cmpb	$95, %al	#, D.14996
	je	.L357	#,
	movq	-168(%rbp), %rax	# msa, tmp1196
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1197
	movslq	%edx, %rdx	# tmp1197, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_74, D.14994
	movl	-152(%rbp), %edx	# i, tmp1198
	movslq	%edx, %rdx	# tmp1198, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_78, D.14996
	cmpb	$45, %al	#, D.14996
	je	.L357	#,
	movq	-168(%rbp), %rax	# msa, tmp1199
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1200
	movslq	%edx, %rdx	# tmp1200, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_83, D.14994
	movl	-152(%rbp), %edx	# i, tmp1201
	movslq	%edx, %rdx	# tmp1201, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_87, D.14996
	cmpb	$126, %al	#, D.14996
	je	.L357	#,
	.loc 1 2059 0 is_stmt 1
	movq	-168(%rbp), %rax	# msa, tmp1202
	movq	16(%rax), %rax	# msa_11(D)->wgt, D.14992
	movl	-144(%rbp), %edx	# idx, tmp1203
	movslq	%edx, %rdx	# tmp1203, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14992
	movl	(%rax), %ebx	# *_92, D.14997
	movq	-168(%rbp), %rax	# msa, tmp1204
	movq	(%rax), %rax	# msa_11(D)->aseq, D.14993
	movl	-144(%rbp), %edx	# idx, tmp1205
	movslq	%edx, %rdx	# tmp1205, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_97, D.14994
	movl	-152(%rbp), %edx	# i, tmp1206
	movslq	%edx, %rdx	# tmp1206, D.14995
	subq	$1, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14994
	movzbl	(%rax), %eax	# *_101, D.14996
	movsbl	%al, %eax	# D.14996, D.14988
	movl	%eax, %esi	# D.14988,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, %rdx	# D.14994, D.14998
	movl	$Alphabet, %eax	#, Alphabet.625
	subq	%rax, %rdx	# Alphabet.625, D.14998
	movq	%rdx, %rax	# D.14998, D.14998
	movsbl	%al, %edx	# D.14996, D.14988
	movl	-152(%rbp), %eax	# i, tmp1207
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1208
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_112, D.14992
	movl	%ebx, -180(%rbp)	# D.14997, %sfp
	movss	-180(%rbp), %xmm0	# %sfp,
	movl	%edx, %esi	# D.14988,
	movq	%rax, %rdi	# D.14992,
	call	P7CountSymbol	#
.L357:
	.loc 1 2057 0
	addl	$1, -144(%rbp)	#, idx
.L356:
	.loc 1 2057 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1209
	movl	28(%rax), %eax	# msa_11(D)->nseq, D.14988
	cmpl	-144(%rbp), %eax	# idx, D.14988
	jg	.L358	#,
	.loc 1 2060 0 is_stmt 1
	movss	.LC10(%rip), %xmm0	#, tmp1210
	divss	-136(%rbp), %xmm0	# denom, D.14997
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.626
	movl	-152(%rbp), %eax	# i, tmp1211
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1212
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_119, D.14992
	movl	%edx, %esi	# Alphabet_size.626,
	movq	%rax, %rdi	# D.14992,
	call	FScale	#
	.loc 1 2061 0
	movl	-152(%rbp), %eax	# i, tmp1213
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14989
	movq	-48(%rbp), %rax	# mocc, tmp1214
	leaq	(%rdx,%rax), %rbx	#, D.14992
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.627
	movl	-152(%rbp), %eax	# i, tmp1215
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1216
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_127, D.14992
	movl	%edx, %esi	# Alphabet_size.627,
	movq	%rax, %rdi	# D.14992,
	call	FSum	#
	movss	%xmm0, -180(%rbp)	#, %sfp
	movl	-180(%rbp), %eax	# %sfp, D.14997
	movl	%eax, (%rbx)	# D.14997, *_123
	.loc 1 2055 0
	addl	$1, -152(%rbp)	#, i
.L355:
	.loc 1 2055 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1217
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	cmpl	-152(%rbp), %eax	# i, D.14988
	jge	.L359	#,
	.loc 1 2067 0 is_stmt 1
	movq	-176(%rbp), %rax	# hmm, tmp1218
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	leaq	-96(%rbp), %rdi	#, tmp1219
	leaq	-104(%rbp), %rsi	#, tmp1220
	leaq	-112(%rbp), %rcx	#, tmp1221
	leaq	-120(%rbp), %rdx	#, tmp1222
	movq	%rdi, %r9	# tmp1219,
	movq	%rsi, %r8	# tmp1220,
	movl	%eax, %esi	# D.14988,
	movl	$2, %edi	#,
	call	AllocPlan7Matrix	#
	movq	%rax, -40(%rbp)	# tmp1223, mx
	.loc 1 2068 0
	movq	-176(%rbp), %rax	# hmm, tmp1224
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	movq	-168(%rbp), %rdx	# msa, tmp1225
	movl	24(%rdx), %edx	# msa_11(D)->alen, D.14988
	leal	1(%rdx), %edi	#, D.14988
	leaq	-64(%rbp), %r8	#, tmp1226
	leaq	-72(%rbp), %rsi	#, tmp1227
	leaq	-80(%rbp), %rcx	#, tmp1228
	leaq	-88(%rbp), %rdx	#, tmp1229
	movq	%r8, %r9	# tmp1226,
	movq	%rsi, %r8	# tmp1227,
	movl	%eax, %esi	# D.14988,
	call	AllocShadowMatrix	#
	movq	%rax, -32(%rbp)	# tmp1230, tb
	.loc 1 2072 0
	movq	-120(%rbp), %rax	# xmx, xmx.628
	movq	(%rax), %rax	# *xmx.628_138, D.14999
	addq	$16, %rax	#, D.14999
	movl	$0, (%rax)	#, *_140
	.loc 1 2073 0
	movq	-88(%rbp), %rax	# xtb, xtb.629
	movq	(%rax), %rax	# *xtb.629_141, D.14994
	addq	$4, %rax	#, D.14994
	movb	$4, (%rax)	#, *_143
	.loc 1 2074 0
	movq	-120(%rbp), %rax	# xmx, xmx.630
	movq	(%rax), %rax	# *xmx.630_144, D.14999
	movq	-176(%rbp), %rdx	# hmm, tmp1231
	movl	336(%rdx), %edx	# hmm_131(D)->xsc, D.14988
	movl	%edx, (%rax)	# D.14988, *_145
	.loc 1 2075 0
	movq	-88(%rbp), %rax	# xtb, xtb.631
	movq	(%rax), %rax	# *xtb.631_147, D.14994
	movb	$5, (%rax)	#, *_148
	.loc 1 2076 0
	movq	-120(%rbp), %rax	# xmx, xmx.632
	movq	(%rax), %rax	# *xmx.632_149, D.14999
	leaq	4(%rax), %rcx	#, D.14999
	movq	-120(%rbp), %rax	# xmx, xmx.633
	movq	(%rax), %rax	# *xmx.633_152, D.14999
	addq	$8, %rax	#, D.14999
	movq	-120(%rbp), %rdx	# xmx, xmx.634
	movq	(%rdx), %rdx	# *xmx.634_155, D.14999
	addq	$12, %rdx	#, D.14999
	movl	$-987654321, (%rdx)	#, *_157
	movl	(%rdx), %edx	# *_157, D.14988
	movl	%edx, (%rax)	# D.14988, *_154
	movl	(%rax), %eax	# *_154, D.14988
	movl	%eax, (%rcx)	# D.14988, *_151
	.loc 1 2077 0
	movq	-32(%rbp), %rax	# tb, tmp1232
	movq	32(%rax), %rax	# tb_137->esrc, D.14999
	movl	$0, (%rax)	#, *_160
	.loc 1 2078 0
	movq	-88(%rbp), %rax	# xtb, xtb.635
	movq	(%rax), %rax	# *xtb.635_161, D.14994
	leaq	2(%rax), %rdx	#, D.14994
	movq	-88(%rbp), %rax	# xtb, xtb.636
	movq	(%rax), %rax	# *xtb.636_164, D.14994
	addq	$3, %rax	#, D.14994
	movb	$0, (%rax)	#, *_166
	movzbl	(%rax), %eax	# *_166, D.14996
	movb	%al, (%rdx)	# D.14996, *_163
	.loc 1 2079 0
	movl	$0, -148(%rbp)	#, k
	jmp	.L360	#
.L361:
	.loc 1 2080 0 discriminator 2
	movq	-112(%rbp), %rax	# mmx, mmx.637
	movq	(%rax), %rax	# *mmx.637_170, D.14999
	movl	-148(%rbp), %edx	# k, tmp1233
	movslq	%edx, %rdx	# tmp1233, D.14989
	salq	$2, %rdx	#, D.14989
	leaq	(%rax,%rdx), %rcx	#, D.14999
	movq	-104(%rbp), %rax	# imx, imx.638
	movq	(%rax), %rax	# *imx.638_175, D.14999
	movl	-148(%rbp), %edx	# k, tmp1234
	movslq	%edx, %rdx	# tmp1234, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movq	-96(%rbp), %rdx	# dmx, dmx.639
	movq	(%rdx), %rdx	# *dmx.639_180, D.14999
	movl	-148(%rbp), %esi	# k, tmp1235
	movslq	%esi, %rsi	# tmp1235, D.14989
	salq	$2, %rsi	#, D.14989
	addq	%rsi, %rdx	# D.14989, D.14999
	movl	$-987654321, (%rdx)	#, *_184
	movl	(%rdx), %edx	# *_184, D.14988
	movl	%edx, (%rax)	# D.14988, *_179
	movl	(%rax), %eax	# *_179, D.14988
	movl	%eax, (%rcx)	# D.14988, *_174
	.loc 1 2081 0 discriminator 2
	movq	-80(%rbp), %rax	# mtb, mtb.640
	movq	(%rax), %rdx	# *mtb.640_187, D.14994
	movl	-148(%rbp), %eax	# k, tmp1236
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.14994
	movq	-72(%rbp), %rax	# itb, itb.641
	movq	(%rax), %rdx	# *itb.641_191, D.14994
	movl	-148(%rbp), %eax	# k, tmp1237
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movq	-64(%rbp), %rdx	# dtb, dtb.642
	movq	(%rdx), %rsi	# *dtb.642_195, D.14994
	movl	-148(%rbp), %edx	# k, tmp1238
	movslq	%edx, %rdx	# tmp1238, D.14995
	addq	%rsi, %rdx	# D.14994, D.14994
	movb	$0, (%rdx)	#, *_198
	movzbl	(%rdx), %edx	# *_198, D.14996
	movb	%dl, (%rax)	# D.14996, *_194
	movzbl	(%rax), %eax	# *_194, D.14996
	movb	%al, (%rcx)	# D.14996, *_190
	.loc 1 2079 0 discriminator 2
	addl	$1, -148(%rbp)	#, k
.L360:
	.loc 1 2079 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1239
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	cmpl	-148(%rbp), %eax	# k, D.14988
	jge	.L361	#,
	.loc 1 2089 0 is_stmt 1
	movl	$1, -152(%rbp)	#, i
	jmp	.L362	#
.L390:
	.loc 1 2090 0
	movl	-152(%rbp), %eax	# i, tmp1241
	cltd
	shrl	$31, %edx	#, tmp1243
	addl	%edx, %eax	# tmp1243, tmp1244
	andl	$1, %eax	#, tmp1245
	subl	%edx, %eax	# tmp1243, tmp1246
	movl	%eax, -132(%rbp)	# tmp1246, cur
	.loc 1 2091 0
	cmpl	$0, -132(%rbp)	#, cur
	sete	%al	#, D.15000
	movzbl	%al, %eax	# D.15000, tmp1247
	movl	%eax, -128(%rbp)	# tmp1247, prv
	.loc 1 2093 0
	movq	-112(%rbp), %rax	# mmx, mmx.643
	movl	-132(%rbp), %edx	# cur, tmp1248
	movslq	%edx, %rdx	# tmp1248, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rcx	# *_210, D.14999
	movq	-104(%rbp), %rax	# imx, imx.644
	movl	-132(%rbp), %edx	# cur, tmp1249
	movslq	%edx, %rdx	# tmp1249, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_215, D.14999
	movq	-96(%rbp), %rdx	# dmx, dmx.645
	movl	-132(%rbp), %esi	# cur, tmp1250
	movslq	%esi, %rsi	# tmp1250, D.14989
	salq	$3, %rsi	#, D.14989
	addq	%rsi, %rdx	# D.14989, D.15001
	movq	(%rdx), %rdx	# *_220, D.14999
	movl	$-987654321, (%rdx)	#, *_221
	movl	(%rdx), %edx	# *_221, D.14988
	movl	%edx, (%rax)	# D.14988, *_216
	movl	(%rax), %eax	# *_216, D.14988
	movl	%eax, (%rcx)	# D.14988, *_211
	.loc 1 2094 0
	movq	-80(%rbp), %rax	# mtb, mtb.646
	movl	-152(%rbp), %edx	# i, tmp1251
	movslq	%edx, %rdx	# tmp1251, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rcx	# *_227, D.14994
	movq	-72(%rbp), %rax	# itb, itb.647
	movl	-152(%rbp), %edx	# i, tmp1252
	movslq	%edx, %rdx	# tmp1252, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_232, D.14994
	movq	-64(%rbp), %rdx	# dtb, dtb.648
	movl	-152(%rbp), %esi	# i, tmp1253
	movslq	%esi, %rsi	# tmp1253, D.14989
	salq	$3, %rsi	#, D.14989
	addq	%rsi, %rdx	# D.14989, D.14993
	movq	(%rdx), %rdx	# *_237, D.14994
	movb	$0, (%rdx)	#, *_238
	movzbl	(%rdx), %edx	# *_238, D.14996
	movb	%dl, (%rax)	# D.14996, *_233
	movzbl	(%rax), %eax	# *_233, D.14996
	movb	%al, (%rcx)	# D.14996, *_228
	.loc 1 2096 0
	movl	$1, -148(%rbp)	#, k
	jmp	.L363	#
.L382:
	.loc 1 2098 0
	movq	-112(%rbp), %rax	# mmx, mmx.649
	movl	-132(%rbp), %edx	# cur, tmp1254
	movslq	%edx, %rdx	# tmp1254, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_246, D.14999
	movl	-148(%rbp), %edx	# k, tmp1255
	movslq	%edx, %rdx	# tmp1255, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	$-987654321, (%rax)	#, *_250
	.loc 1 2099 0
	movq	-80(%rbp), %rax	# mtb, mtb.650
	movl	-152(%rbp), %edx	# i, tmp1256
	movslq	%edx, %rdx	# tmp1256, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_254, D.14994
	movl	-148(%rbp), %eax	# k, tmp1257
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$0, (%rax)	#, *_257
	.loc 1 2100 0
	movq	-112(%rbp), %rax	# mmx, mmx.651
	movl	-128(%rbp), %edx	# prv, tmp1258
	movslq	%edx, %rdx	# tmp1258, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_261, D.14999
	movl	-148(%rbp), %edx	# k, tmp1259
	movslq	%edx, %rdx	# tmp1259, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_266, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L364	#,
	.loc 1 2100 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1260
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	movq	(%rax), %rax	# *_268, D.14999
	movl	-148(%rbp), %edx	# k, tmp1261
	movslq	%edx, %rdx	# tmp1261, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_273, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L364	#,
	.loc 1 2101 0 is_stmt 1 discriminator 1
	movq	-112(%rbp), %rax	# mmx, mmx.652
	movl	-128(%rbp), %edx	# prv, tmp1262
	movslq	%edx, %rdx	# tmp1262, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_278, D.14999
	movl	-148(%rbp), %edx	# k, tmp1263
	movslq	%edx, %rdx	# tmp1263, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %edx	# *_283, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1264
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	movq	(%rax), %rax	# *_285, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1265
	movslq	%ecx, %rcx	# tmp1265, D.14989
	salq	$2, %rcx	#, D.14989
	subq	$4, %rcx	#, D.14995
	addq	%rcx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_290, D.14988
	addl	%edx, %eax	# D.14988, tmp1266
	movl	%eax, -124(%rbp)	# tmp1266, sc
	movq	-112(%rbp), %rax	# mmx, mmx.653
	movl	-132(%rbp), %edx	# cur, tmp1267
	movslq	%edx, %rdx	# tmp1267, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_296, D.14999
	movl	-148(%rbp), %edx	# k, tmp1268
	movslq	%edx, %rdx	# tmp1268, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_300, D.14988
	.loc 1 2100 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L364	#,
	.loc 1 2102 0
	movq	-112(%rbp), %rax	# mmx, mmx.654
	movl	-132(%rbp), %edx	# cur, tmp1269
	movslq	%edx, %rdx	# tmp1269, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_305, D.14999
	movl	-148(%rbp), %edx	# k, tmp1270
	movslq	%edx, %rdx	# tmp1270, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1271
	movl	%eax, (%rdx)	# tmp1271, *_309
	movq	-80(%rbp), %rax	# mtb, mtb.655
	movl	-152(%rbp), %edx	# i, tmp1272
	movslq	%edx, %rdx	# tmp1272, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_313, D.14994
	movl	-148(%rbp), %eax	# k, tmp1273
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$1, (%rax)	#, *_316
.L364:
	.loc 1 2103 0
	movq	-104(%rbp), %rax	# imx, imx.656
	movl	-128(%rbp), %edx	# prv, tmp1274
	movslq	%edx, %rdx	# tmp1274, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_320, D.14999
	movl	-148(%rbp), %edx	# k, tmp1275
	movslq	%edx, %rdx	# tmp1275, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_325, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L365	#,
	.loc 1 2103 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1276
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$24, %rax	#, D.15001
	movq	(%rax), %rax	# *_328, D.14999
	movl	-148(%rbp), %edx	# k, tmp1277
	movslq	%edx, %rdx	# tmp1277, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_333, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L365	#,
	.loc 1 2104 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax	# imx, imx.657
	movl	-128(%rbp), %edx	# prv, tmp1278
	movslq	%edx, %rdx	# tmp1278, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_338, D.14999
	movl	-148(%rbp), %edx	# k, tmp1279
	movslq	%edx, %rdx	# tmp1279, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_343, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1280
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$24, %rax	#, D.15001
	movq	(%rax), %rax	# *_347, D.14999
	movl	-148(%rbp), %edx	# k, tmp1281
	movslq	%edx, %rdx	# tmp1281, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_352, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1282
	cltq
	salq	$2, %rax	#, D.14989
	leaq	-4(%rax), %rdx	#, D.14995
	movq	-48(%rbp), %rax	# mocc, tmp1283
	addq	%rdx, %rax	# D.14995, D.14992
	movss	(%rax), %xmm2	# *_358, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, tmp1284
	movl	%eax, -124(%rbp)	# tmp1284, sc
	movq	-112(%rbp), %rax	# mmx, mmx.658
	movl	-132(%rbp), %edx	# cur, tmp1285
	movslq	%edx, %rdx	# tmp1285, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_366, D.14999
	movl	-148(%rbp), %edx	# k, tmp1286
	movslq	%edx, %rdx	# tmp1286, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_370, D.14988
	.loc 1 2103 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L365	#,
	.loc 1 2105 0
	movq	-112(%rbp), %rax	# mmx, mmx.659
	movl	-132(%rbp), %edx	# cur, tmp1287
	movslq	%edx, %rdx	# tmp1287, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_375, D.14999
	movl	-148(%rbp), %edx	# k, tmp1288
	movslq	%edx, %rdx	# tmp1288, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1289
	movl	%eax, (%rdx)	# tmp1289, *_379
	movq	-80(%rbp), %rax	# mtb, mtb.660
	movl	-152(%rbp), %edx	# i, tmp1290
	movslq	%edx, %rdx	# tmp1290, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_383, D.14994
	movl	-148(%rbp), %eax	# k, tmp1291
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$3, (%rax)	#, *_386
.L365:
	.loc 1 2106 0
	movq	-120(%rbp), %rax	# xmx, xmx.661
	movl	-128(%rbp), %edx	# prv, tmp1292
	movslq	%edx, %rdx	# tmp1292, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_390, D.14999
	movl	(%rax), %edx	# *_391, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1293
	movq	368(%rax), %rax	# hmm_131(D)->bsc, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1294
	movslq	%ecx, %rcx	# tmp1294, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_396, D.14988
	addl	%edx, %eax	# D.14988, tmp1295
	movl	%eax, -124(%rbp)	# tmp1295, sc
	movq	-112(%rbp), %rax	# mmx, mmx.662
	movl	-132(%rbp), %edx	# cur, tmp1296
	movslq	%edx, %rdx	# tmp1296, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_402, D.14999
	movl	-148(%rbp), %edx	# k, tmp1297
	movslq	%edx, %rdx	# tmp1297, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_406, D.14988
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L366	#,
	.loc 1 2107 0
	movq	-112(%rbp), %rax	# mmx, mmx.663
	movl	-132(%rbp), %edx	# cur, tmp1298
	movslq	%edx, %rdx	# tmp1298, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_411, D.14999
	movl	-148(%rbp), %edx	# k, tmp1299
	movslq	%edx, %rdx	# tmp1299, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1300
	movl	%eax, (%rdx)	# tmp1300, *_415
	movq	-80(%rbp), %rax	# mtb, mtb.664
	movl	-152(%rbp), %edx	# i, tmp1301
	movslq	%edx, %rdx	# tmp1301, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_419, D.14994
	movl	-148(%rbp), %eax	# k, tmp1302
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$6, (%rax)	#, *_422
.L366:
	.loc 1 2108 0
	movq	-96(%rbp), %rax	# dmx, dmx.665
	movl	-128(%rbp), %edx	# prv, tmp1303
	movslq	%edx, %rdx	# tmp1303, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_426, D.14999
	movl	-148(%rbp), %edx	# k, tmp1304
	movslq	%edx, %rdx	# tmp1304, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_431, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L367	#,
	.loc 1 2108 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1305
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$40, %rax	#, D.15001
	movq	(%rax), %rax	# *_434, D.14999
	movl	-148(%rbp), %edx	# k, tmp1306
	movslq	%edx, %rdx	# tmp1306, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_439, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L367	#,
	.loc 1 2109 0 is_stmt 1 discriminator 1
	movq	-96(%rbp), %rax	# dmx, dmx.666
	movl	-128(%rbp), %edx	# prv, tmp1307
	movslq	%edx, %rdx	# tmp1307, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_444, D.14999
	movl	-148(%rbp), %edx	# k, tmp1308
	movslq	%edx, %rdx	# tmp1308, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %edx	# *_449, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1309
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$40, %rax	#, D.15001
	movq	(%rax), %rax	# *_452, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1310
	movslq	%ecx, %rcx	# tmp1310, D.14989
	salq	$2, %rcx	#, D.14989
	subq	$4, %rcx	#, D.14995
	addq	%rcx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_457, D.14988
	addl	%edx, %eax	# D.14988, tmp1311
	movl	%eax, -124(%rbp)	# tmp1311, sc
	movq	-112(%rbp), %rax	# mmx, mmx.667
	movl	-132(%rbp), %edx	# cur, tmp1312
	movslq	%edx, %rdx	# tmp1312, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_463, D.14999
	movl	-148(%rbp), %edx	# k, tmp1313
	movslq	%edx, %rdx	# tmp1313, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_467, D.14988
	.loc 1 2108 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L367	#,
	.loc 1 2110 0
	movq	-112(%rbp), %rax	# mmx, mmx.668
	movl	-132(%rbp), %edx	# cur, tmp1314
	movslq	%edx, %rdx	# tmp1314, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_472, D.14999
	movl	-148(%rbp), %edx	# k, tmp1315
	movslq	%edx, %rdx	# tmp1315, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1316
	movl	%eax, (%rdx)	# tmp1316, *_476
	movq	-80(%rbp), %rax	# mtb, mtb.669
	movl	-152(%rbp), %edx	# i, tmp1317
	movslq	%edx, %rdx	# tmp1317, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_480, D.14994
	movl	-148(%rbp), %eax	# k, tmp1318
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$2, (%rax)	#, *_483
.L367:
	.loc 1 2112 0
	movl	$0, -140(%rbp)	#, sym
	jmp	.L368	#
.L372:
	.loc 1 2114 0
	movl	-152(%rbp), %eax	# i, tmp1319
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1320
	addq	%rdx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_488, D.14992
	movl	-140(%rbp), %edx	# sym, tmp1321
	movslq	%edx, %rdx	# tmp1321, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm0	# *_492, D.14997
	xorps	%xmm1, %xmm1	# tmp1322
	ucomiss	%xmm1, %xmm0	# tmp1322, D.14997
	jbe	.L369	#,
	.loc 1 2114 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1323
	movq	320(%rax), %rax	# hmm_131(D)->msc, D.15001
	movl	-140(%rbp), %edx	# sym, tmp1324
	movslq	%edx, %rdx	# tmp1324, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_497, D.14999
	movl	-148(%rbp), %edx	# k, tmp1325
	movslq	%edx, %rdx	# tmp1325, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_501, D.14988
	cmpl	$-987654321, %eax	#, D.14988
	jne	.L369	#,
	movq	-112(%rbp), %rax	# mmx, mmx.670
	movl	-132(%rbp), %edx	# cur, tmp1326
	movslq	%edx, %rdx	# tmp1326, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_506, D.14999
	movl	-148(%rbp), %edx	# k, tmp1327
	movslq	%edx, %rdx	# tmp1327, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	$-987654321, (%rax)	#, *_510
	jmp	.L371	#
.L369:
	.loc 1 2115 0 is_stmt 1
	movq	-112(%rbp), %rax	# mmx, mmx.671
	movl	-132(%rbp), %edx	# cur, tmp1328
	movslq	%edx, %rdx	# tmp1328, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_514, D.14999
	movl	-148(%rbp), %edx	# k, tmp1329
	movslq	%edx, %rdx	# tmp1329, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movq	-112(%rbp), %rax	# mmx, mmx.672
	movl	-132(%rbp), %ecx	# cur, tmp1330
	movslq	%ecx, %rcx	# tmp1330, D.14989
	salq	$3, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_522, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1331
	movslq	%ecx, %rcx	# tmp1331, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_526, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1332
	movq	320(%rax), %rax	# hmm_131(D)->msc, D.15001
	movl	-140(%rbp), %ecx	# sym, tmp1333
	movslq	%ecx, %rcx	# tmp1333, D.14989
	salq	$3, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_532, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1334
	movslq	%ecx, %rcx	# tmp1334, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_536, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1335
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1336
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_541, D.14992
	movl	-140(%rbp), %ecx	# sym, tmp1337
	movslq	%ecx, %rcx	# tmp1337, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_545, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, D.14988
	movl	%eax, (%rdx)	# D.14988, *_518
	.loc 1 2112 0
	addl	$1, -140(%rbp)	#, sym
.L368:
	.loc 1 2112 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.673
	cmpl	%eax, -140(%rbp)	# Alphabet_size.673, sym
	jl	.L372	#,
.L371:
	.loc 1 2119 0 is_stmt 1
	movq	-96(%rbp), %rax	# dmx, dmx.674
	movl	-132(%rbp), %edx	# cur, tmp1338
	movslq	%edx, %rdx	# tmp1338, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_554, D.14999
	movl	-148(%rbp), %edx	# k, tmp1339
	movslq	%edx, %rdx	# tmp1339, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	$-987654321, (%rax)	#, *_558
	.loc 1 2120 0
	movq	-64(%rbp), %rax	# dtb, dtb.675
	movl	-152(%rbp), %edx	# i, tmp1340
	movslq	%edx, %rdx	# tmp1340, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_562, D.14994
	movl	-148(%rbp), %eax	# k, tmp1341
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$0, (%rax)	#, *_565
	.loc 1 2121 0
	movq	-112(%rbp), %rax	# mmx, mmx.676
	movl	-132(%rbp), %edx	# cur, tmp1342
	movslq	%edx, %rdx	# tmp1342, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_569, D.14999
	movl	-148(%rbp), %edx	# k, tmp1343
	movslq	%edx, %rdx	# tmp1343, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_574, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L373	#,
	.loc 1 2121 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1344
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$16, %rax	#, D.15001
	movq	(%rax), %rax	# *_577, D.14999
	movl	-148(%rbp), %edx	# k, tmp1345
	movslq	%edx, %rdx	# tmp1345, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_582, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L373	#,
	.loc 1 2122 0 is_stmt 1 discriminator 1
	movq	-112(%rbp), %rax	# mmx, mmx.677
	movl	-132(%rbp), %edx	# cur, tmp1346
	movslq	%edx, %rdx	# tmp1346, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_587, D.14999
	movl	-148(%rbp), %edx	# k, tmp1347
	movslq	%edx, %rdx	# tmp1347, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %edx	# *_592, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1348
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$16, %rax	#, D.15001
	movq	(%rax), %rax	# *_595, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1349
	movslq	%ecx, %rcx	# tmp1349, D.14989
	salq	$2, %rcx	#, D.14989
	subq	$4, %rcx	#, D.14995
	addq	%rcx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_600, D.14988
	addl	%edx, %eax	# D.14988, tmp1350
	movl	%eax, -124(%rbp)	# tmp1350, sc
	movq	-96(%rbp), %rax	# dmx, dmx.678
	movl	-132(%rbp), %edx	# cur, tmp1351
	movslq	%edx, %rdx	# tmp1351, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_606, D.14999
	movl	-148(%rbp), %edx	# k, tmp1352
	movslq	%edx, %rdx	# tmp1352, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_610, D.14988
	.loc 1 2121 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L373	#,
	.loc 1 2123 0
	movq	-96(%rbp), %rax	# dmx, dmx.679
	movl	-132(%rbp), %edx	# cur, tmp1353
	movslq	%edx, %rdx	# tmp1353, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_615, D.14999
	movl	-148(%rbp), %edx	# k, tmp1354
	movslq	%edx, %rdx	# tmp1354, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1355
	movl	%eax, (%rdx)	# tmp1355, *_619
	movq	-64(%rbp), %rax	# dtb, dtb.680
	movl	-152(%rbp), %edx	# i, tmp1356
	movslq	%edx, %rdx	# tmp1356, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_623, D.14994
	movl	-148(%rbp), %eax	# k, tmp1357
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$1, (%rax)	#, *_626
.L373:
	.loc 1 2124 0
	movq	-96(%rbp), %rax	# dmx, dmx.681
	movl	-132(%rbp), %edx	# cur, tmp1358
	movslq	%edx, %rdx	# tmp1358, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_630, D.14999
	movl	-148(%rbp), %edx	# k, tmp1359
	movslq	%edx, %rdx	# tmp1359, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_635, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L374	#,
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1360
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$48, %rax	#, D.15001
	movq	(%rax), %rax	# *_638, D.14999
	movl	-148(%rbp), %edx	# k, tmp1361
	movslq	%edx, %rdx	# tmp1361, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_643, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L374	#,
	.loc 1 2125 0 is_stmt 1 discriminator 1
	movq	-96(%rbp), %rax	# dmx, dmx.682
	movl	-132(%rbp), %edx	# cur, tmp1362
	movslq	%edx, %rdx	# tmp1362, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_648, D.14999
	movl	-148(%rbp), %edx	# k, tmp1363
	movslq	%edx, %rdx	# tmp1363, D.14989
	salq	$2, %rdx	#, D.14989
	subq	$4, %rdx	#, D.14995
	addq	%rdx, %rax	# D.14995, D.14999
	movl	(%rax), %edx	# *_653, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1364
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$48, %rax	#, D.15001
	movq	(%rax), %rax	# *_656, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1365
	movslq	%ecx, %rcx	# tmp1365, D.14989
	salq	$2, %rcx	#, D.14989
	subq	$4, %rcx	#, D.14995
	addq	%rcx, %rax	# D.14995, D.14999
	movl	(%rax), %eax	# *_661, D.14988
	addl	%edx, %eax	# D.14988, tmp1366
	movl	%eax, -124(%rbp)	# tmp1366, sc
	movq	-96(%rbp), %rax	# dmx, dmx.683
	movl	-132(%rbp), %edx	# cur, tmp1367
	movslq	%edx, %rdx	# tmp1367, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_667, D.14999
	movl	-148(%rbp), %edx	# k, tmp1368
	movslq	%edx, %rdx	# tmp1368, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_671, D.14988
	.loc 1 2124 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L374	#,
	.loc 1 2126 0
	movq	-96(%rbp), %rax	# dmx, dmx.684
	movl	-132(%rbp), %edx	# cur, tmp1369
	movslq	%edx, %rdx	# tmp1369, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_676, D.14999
	movl	-148(%rbp), %edx	# k, tmp1370
	movslq	%edx, %rdx	# tmp1370, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1371
	movl	%eax, (%rdx)	# tmp1371, *_680
	movq	-64(%rbp), %rax	# dtb, dtb.685
	movl	-152(%rbp), %edx	# i, tmp1372
	movslq	%edx, %rdx	# tmp1372, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_684, D.14994
	movl	-148(%rbp), %eax	# k, tmp1373
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$2, (%rax)	#, *_687
.L374:
	.loc 1 2129 0
	movq	-176(%rbp), %rax	# hmm, tmp1374
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	cmpl	-148(%rbp), %eax	# k, D.14988
	jle	.L375	#,
	.loc 1 2130 0
	movq	-104(%rbp), %rax	# imx, imx.686
	movl	-132(%rbp), %edx	# cur, tmp1375
	movslq	%edx, %rdx	# tmp1375, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_692, D.14999
	movl	-148(%rbp), %edx	# k, tmp1376
	movslq	%edx, %rdx	# tmp1376, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	$-987654321, (%rax)	#, *_696
	.loc 1 2131 0
	movq	-72(%rbp), %rax	# itb, itb.687
	movl	-152(%rbp), %edx	# i, tmp1377
	movslq	%edx, %rdx	# tmp1377, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_700, D.14994
	movl	-148(%rbp), %eax	# k, tmp1378
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$0, (%rax)	#, *_703
	.loc 1 2132 0
	movq	-112(%rbp), %rax	# mmx, mmx.688
	movl	-128(%rbp), %edx	# prv, tmp1379
	movslq	%edx, %rdx	# tmp1379, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_707, D.14999
	movl	-148(%rbp), %edx	# k, tmp1380
	movslq	%edx, %rdx	# tmp1380, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_711, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L376	#,
	.loc 1 2132 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1381
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$8, %rax	#, D.15001
	movq	(%rax), %rax	# *_714, D.14999
	movl	-148(%rbp), %edx	# k, tmp1382
	movslq	%edx, %rdx	# tmp1382, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_718, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L376	#,
	.loc 1 2133 0 is_stmt 1 discriminator 1
	movq	-112(%rbp), %rax	# mmx, mmx.689
	movl	-128(%rbp), %edx	# prv, tmp1383
	movslq	%edx, %rdx	# tmp1383, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_723, D.14999
	movl	-148(%rbp), %edx	# k, tmp1384
	movslq	%edx, %rdx	# tmp1384, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_727, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1385
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$8, %rax	#, D.15001
	movq	(%rax), %rax	# *_731, D.14999
	movl	-148(%rbp), %edx	# k, tmp1386
	movslq	%edx, %rdx	# tmp1386, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_735, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1387
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14989
	movq	-48(%rbp), %rax	# mocc, tmp1388
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_740, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, tmp1389
	movl	%eax, -124(%rbp)	# tmp1389, sc
	movq	-104(%rbp), %rax	# imx, imx.690
	movl	-132(%rbp), %edx	# cur, tmp1390
	movslq	%edx, %rdx	# tmp1390, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_748, D.14999
	movl	-148(%rbp), %edx	# k, tmp1391
	movslq	%edx, %rdx	# tmp1391, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_752, D.14988
	.loc 1 2132 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L376	#,
	.loc 1 2134 0
	movq	-104(%rbp), %rax	# imx, imx.691
	movl	-132(%rbp), %edx	# cur, tmp1392
	movslq	%edx, %rdx	# tmp1392, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_757, D.14999
	movl	-148(%rbp), %edx	# k, tmp1393
	movslq	%edx, %rdx	# tmp1393, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1394
	movl	%eax, (%rdx)	# tmp1394, *_761
	movq	-72(%rbp), %rax	# itb, itb.692
	movl	-152(%rbp), %edx	# i, tmp1395
	movslq	%edx, %rdx	# tmp1395, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_765, D.14994
	movl	-148(%rbp), %eax	# k, tmp1396
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$1, (%rax)	#, *_768
.L376:
	.loc 1 2135 0
	movq	-104(%rbp), %rax	# imx, imx.693
	movl	-128(%rbp), %edx	# prv, tmp1397
	movslq	%edx, %rdx	# tmp1397, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_772, D.14999
	movl	-148(%rbp), %edx	# k, tmp1398
	movslq	%edx, %rdx	# tmp1398, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_776, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L377	#,
	.loc 1 2135 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1399
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$32, %rax	#, D.15001
	movq	(%rax), %rax	# *_779, D.14999
	movl	-148(%rbp), %edx	# k, tmp1400
	movslq	%edx, %rdx	# tmp1400, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_783, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L377	#,
	.loc 1 2136 0 is_stmt 1 discriminator 1
	movq	-104(%rbp), %rax	# imx, imx.694
	movl	-128(%rbp), %edx	# prv, tmp1401
	movslq	%edx, %rdx	# tmp1401, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_788, D.14999
	movl	-148(%rbp), %edx	# k, tmp1402
	movslq	%edx, %rdx	# tmp1402, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_792, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1403
	movq	312(%rax), %rax	# hmm_131(D)->tsc, D.15001
	addq	$32, %rax	#, D.15001
	movq	(%rax), %rax	# *_796, D.14999
	movl	-148(%rbp), %edx	# k, tmp1404
	movslq	%edx, %rdx	# tmp1404, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_800, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1405
	cltq
	salq	$2, %rax	#, D.14989
	leaq	-4(%rax), %rdx	#, D.14995
	movq	-48(%rbp), %rax	# mocc, tmp1406
	addq	%rdx, %rax	# D.14995, D.14992
	movss	(%rax), %xmm2	# *_806, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	movl	-152(%rbp), %eax	# i, tmp1407
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14989
	movq	-48(%rbp), %rax	# mocc, tmp1408
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_811, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, tmp1409
	movl	%eax, -124(%rbp)	# tmp1409, sc
	movq	-104(%rbp), %rax	# imx, imx.695
	movl	-132(%rbp), %edx	# cur, tmp1410
	movslq	%edx, %rdx	# tmp1410, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_819, D.14999
	movl	-148(%rbp), %edx	# k, tmp1411
	movslq	%edx, %rdx	# tmp1411, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_823, D.14988
	.loc 1 2135 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L377	#,
	.loc 1 2137 0
	movq	-104(%rbp), %rax	# imx, imx.696
	movl	-132(%rbp), %edx	# cur, tmp1412
	movslq	%edx, %rdx	# tmp1412, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_828, D.14999
	movl	-148(%rbp), %edx	# k, tmp1413
	movslq	%edx, %rdx	# tmp1413, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1414
	movl	%eax, (%rdx)	# tmp1414, *_832
	movq	-72(%rbp), %rax	# itb, itb.697
	movl	-152(%rbp), %edx	# i, tmp1415
	movslq	%edx, %rdx	# tmp1415, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rdx	# *_836, D.14994
	movl	-148(%rbp), %eax	# k, tmp1416
	cltq
	addq	%rdx, %rax	# D.14994, D.14994
	movb	$3, (%rax)	#, *_839
.L377:
	.loc 1 2139 0
	movl	$0, -140(%rbp)	#, sym
	jmp	.L378	#
.L381:
	.loc 1 2141 0
	movl	-152(%rbp), %eax	# i, tmp1417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1418
	addq	%rdx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_844, D.14992
	movl	-140(%rbp), %edx	# sym, tmp1419
	movslq	%edx, %rdx	# tmp1419, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm0	# *_848, D.14997
	xorps	%xmm1, %xmm1	# tmp1420
	ucomiss	%xmm1, %xmm0	# tmp1420, D.14997
	jbe	.L379	#,
	.loc 1 2141 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1421
	movq	328(%rax), %rax	# hmm_131(D)->isc, D.15001
	movl	-140(%rbp), %edx	# sym, tmp1422
	movslq	%edx, %rdx	# tmp1422, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_853, D.14999
	movl	-148(%rbp), %edx	# k, tmp1423
	movslq	%edx, %rdx	# tmp1423, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_857, D.14988
	cmpl	$-987654321, %eax	#, D.14988
	jne	.L379	#,
	movq	-104(%rbp), %rax	# imx, imx.698
	movl	-132(%rbp), %edx	# cur, tmp1424
	movslq	%edx, %rdx	# tmp1424, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_862, D.14999
	movl	-148(%rbp), %edx	# k, tmp1425
	movslq	%edx, %rdx	# tmp1425, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	$-987654321, (%rax)	#, *_866
	jmp	.L375	#
.L379:
	.loc 1 2142 0 is_stmt 1
	movq	-104(%rbp), %rax	# imx, imx.699
	movl	-132(%rbp), %edx	# cur, tmp1426
	movslq	%edx, %rdx	# tmp1426, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_870, D.14999
	movl	-148(%rbp), %edx	# k, tmp1427
	movslq	%edx, %rdx	# tmp1427, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movq	-104(%rbp), %rax	# imx, imx.700
	movl	-132(%rbp), %ecx	# cur, tmp1428
	movslq	%ecx, %rcx	# tmp1428, D.14989
	salq	$3, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_878, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1429
	movslq	%ecx, %rcx	# tmp1429, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_882, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1430
	movq	328(%rax), %rax	# hmm_131(D)->isc, D.15001
	movl	-140(%rbp), %ecx	# sym, tmp1431
	movslq	%ecx, %rcx	# tmp1431, D.14989
	salq	$3, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_888, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1432
	movslq	%ecx, %rcx	# tmp1432, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_892, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1433
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1434
	addq	%rcx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_897, D.14992
	movl	-140(%rbp), %ecx	# sym, tmp1435
	movslq	%ecx, %rcx	# tmp1435, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_901, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, D.14988
	movl	%eax, (%rdx)	# D.14988, *_874
	.loc 1 2139 0
	addl	$1, -140(%rbp)	#, sym
.L378:
	.loc 1 2139 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.701
	cmpl	%eax, -140(%rbp)	# Alphabet_size.701, sym
	jl	.L381	#,
.L375:
	.loc 1 2096 0 is_stmt 1
	addl	$1, -148(%rbp)	#, k
.L363:
	.loc 1 2096 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1436
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	cmpl	-148(%rbp), %eax	# k, D.14988
	jge	.L382	#,
	.loc 1 2151 0 is_stmt 1
	movq	-120(%rbp), %rax	# xmx, xmx.702
	movl	-132(%rbp), %edx	# cur, tmp1437
	movslq	%edx, %rdx	# tmp1437, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_911, D.14999
	addq	$16, %rax	#, D.14999
	movl	$-987654321, (%rax)	#, *_913
	.loc 1 2152 0
	movq	-88(%rbp), %rax	# xtb, xtb.703
	movl	-152(%rbp), %edx	# i, tmp1438
	movslq	%edx, %rdx	# tmp1438, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_917, D.14994
	addq	$4, %rax	#, D.14994
	movb	$0, (%rax)	#, *_919
	.loc 1 2153 0
	movq	-120(%rbp), %rax	# xmx, xmx.704
	movl	-128(%rbp), %edx	# prv, tmp1439
	movslq	%edx, %rdx	# tmp1439, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_923, D.14999
	addq	$16, %rax	#, D.14999
	movl	(%rax), %eax	# *_925, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L383	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1440
	movl	340(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L383	#,
	.loc 1 2154 0 is_stmt 1 discriminator 1
	movq	-120(%rbp), %rax	# xmx, xmx.705
	movl	-128(%rbp), %edx	# prv, tmp1441
	movslq	%edx, %rdx	# tmp1441, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_931, D.14999
	addq	$16, %rax	#, D.14999
	movl	(%rax), %eax	# *_933, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1442
	movl	340(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1443
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14989
	movq	-48(%rbp), %rax	# mocc, tmp1444
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_940, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, tmp1445
	movl	%eax, -124(%rbp)	# tmp1445, sc
	.loc 1 2153 0 discriminator 1
	cmpl	$-987654320, -124(%rbp)	#, sc
	jl	.L383	#,
	.loc 1 2155 0
	movq	-120(%rbp), %rax	# xmx, xmx.706
	movl	-132(%rbp), %edx	# cur, tmp1446
	movslq	%edx, %rdx	# tmp1446, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_948, D.14999
	leaq	16(%rax), %rdx	#, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1447
	movl	%eax, (%rdx)	# tmp1447, *_950
	movq	-88(%rbp), %rax	# xtb, xtb.707
	movl	-152(%rbp), %edx	# i, tmp1448
	movslq	%edx, %rdx	# tmp1448, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_954, D.14994
	addq	$4, %rax	#, D.14994
	movb	$5, (%rax)	#, *_956
.L383:
	.loc 1 2157 0
	movq	-120(%rbp), %rax	# xmx, xmx.708
	movl	-132(%rbp), %edx	# cur, tmp1449
	movslq	%edx, %rdx	# tmp1449, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_960, D.14999
	addq	$4, %rax	#, D.14999
	movl	$-987654321, (%rax)	#, *_962
	.loc 1 2158 0
	movq	-88(%rbp), %rax	# xtb, xtb.709
	movl	-152(%rbp), %edx	# i, tmp1450
	movslq	%edx, %rdx	# tmp1450, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_966, D.14994
	addq	$1, %rax	#, D.14994
	movb	$0, (%rax)	#, *_968
	.loc 1 2159 0
	movl	$1, -148(%rbp)	#, k
	jmp	.L384	#
.L386:
	.loc 1 2160 0
	movq	-112(%rbp), %rax	# mmx, mmx.710
	movl	-132(%rbp), %edx	# cur, tmp1451
	movslq	%edx, %rdx	# tmp1451, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_974, D.14999
	movl	-148(%rbp), %edx	# k, tmp1452
	movslq	%edx, %rdx	# tmp1452, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_978, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L385	#,
	.loc 1 2160 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1453
	movq	376(%rax), %rax	# hmm_131(D)->esc, D.14999
	movl	-148(%rbp), %edx	# k, tmp1454
	movslq	%edx, %rdx	# tmp1454, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_983, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L385	#,
	.loc 1 2161 0 is_stmt 1 discriminator 1
	movq	-112(%rbp), %rax	# mmx, mmx.711
	movl	-132(%rbp), %edx	# cur, tmp1455
	movslq	%edx, %rdx	# tmp1455, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_988, D.14999
	movl	-148(%rbp), %edx	# k, tmp1456
	movslq	%edx, %rdx	# tmp1456, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14999
	movl	(%rax), %edx	# *_992, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1457
	movq	376(%rax), %rax	# hmm_131(D)->esc, D.14999
	movl	-148(%rbp), %ecx	# k, tmp1458
	movslq	%ecx, %rcx	# tmp1458, D.14989
	salq	$2, %rcx	#, D.14989
	addq	%rcx, %rax	# D.14989, D.14999
	movl	(%rax), %eax	# *_997, D.14988
	addl	%edx, %eax	# D.14988, tmp1459
	movl	%eax, -124(%rbp)	# tmp1459, sc
	movq	-120(%rbp), %rax	# xmx, xmx.712
	movl	-132(%rbp), %edx	# cur, tmp1460
	movslq	%edx, %rdx	# tmp1460, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1003, D.14999
	addq	$4, %rax	#, D.14999
	movl	(%rax), %eax	# *_1005, D.14988
	.loc 1 2160 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L385	#,
	.loc 1 2162 0
	movq	-120(%rbp), %rax	# xmx, xmx.713
	movl	-132(%rbp), %edx	# cur, tmp1461
	movslq	%edx, %rdx	# tmp1461, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1010, D.14999
	leaq	4(%rax), %rdx	#, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1462
	movl	%eax, (%rdx)	# tmp1462, *_1012
	movq	-32(%rbp), %rax	# tb, tmp1463
	movq	32(%rax), %rax	# tb_137->esrc, D.14999
	movl	-152(%rbp), %edx	# i, tmp1464
	movslq	%edx, %rdx	# tmp1464, D.14989
	salq	$2, %rdx	#, D.14989
	addq	%rax, %rdx	# D.14999, D.14999
	movl	-148(%rbp), %eax	# k, tmp1465
	movl	%eax, (%rdx)	# tmp1465, *_1016
.L385:
	.loc 1 2159 0
	addl	$1, -148(%rbp)	#, k
.L384:
	.loc 1 2159 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1466
	movl	136(%rax), %eax	# hmm_131(D)->M, D.14988
	cmpl	-148(%rbp), %eax	# k, D.14988
	jge	.L386	#,
	.loc 1 2166 0 is_stmt 1
	movq	-120(%rbp), %rax	# xmx, xmx.714
	movl	-132(%rbp), %edx	# cur, tmp1467
	movslq	%edx, %rdx	# tmp1467, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1021, D.14999
	movl	$-987654321, (%rax)	#, *_1022
	.loc 1 2167 0
	movq	-88(%rbp), %rax	# xtb, xtb.715
	movl	-152(%rbp), %edx	# i, tmp1468
	movslq	%edx, %rdx	# tmp1468, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_1026, D.14994
	movb	$0, (%rax)	#, *_1027
	.loc 1 2168 0
	movq	-120(%rbp), %rax	# xmx, xmx.716
	movl	-132(%rbp), %edx	# cur, tmp1469
	movslq	%edx, %rdx	# tmp1469, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1031, D.14999
	addq	$16, %rax	#, D.14999
	movl	(%rax), %eax	# *_1033, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L387	#,
	.loc 1 2168 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1470
	movl	336(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L387	#,
	.loc 1 2169 0 is_stmt 1 discriminator 1
	movq	-120(%rbp), %rax	# xmx, xmx.717
	movl	-132(%rbp), %edx	# cur, tmp1471
	movslq	%edx, %rdx	# tmp1471, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1039, D.14999
	addq	$16, %rax	#, D.14999
	movl	(%rax), %edx	# *_1041, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1472
	movl	336(%rax), %eax	# hmm_131(D)->xsc, D.14988
	addl	%edx, %eax	# D.14988, tmp1473
	movl	%eax, -124(%rbp)	# tmp1473, sc
	movq	-120(%rbp), %rax	# xmx, xmx.718
	movl	-132(%rbp), %edx	# cur, tmp1474
	movslq	%edx, %rdx	# tmp1474, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1048, D.14999
	movl	(%rax), %eax	# *_1049, D.14988
	.loc 1 2168 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L387	#,
	.loc 1 2170 0
	movq	-120(%rbp), %rax	# xmx, xmx.719
	movl	-132(%rbp), %edx	# cur, tmp1475
	movslq	%edx, %rdx	# tmp1475, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1054, D.14999
	movl	-124(%rbp), %edx	# sc, tmp1476
	movl	%edx, (%rax)	# tmp1476, *_1055
	movq	-88(%rbp), %rax	# xtb, xtb.720
	movl	-152(%rbp), %edx	# i, tmp1477
	movslq	%edx, %rdx	# tmp1477, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_1059, D.14994
	movb	$5, (%rax)	#, *_1060
.L387:
	.loc 1 2173 0
	movq	-120(%rbp), %rax	# xmx, xmx.721
	movl	-132(%rbp), %edx	# cur, tmp1478
	movslq	%edx, %rdx	# tmp1478, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1064, D.14999
	addq	$8, %rax	#, D.14999
	movl	$-987654321, (%rax)	#, *_1066
	.loc 1 2174 0
	movq	-88(%rbp), %rax	# xtb, xtb.722
	movl	-152(%rbp), %edx	# i, tmp1479
	movslq	%edx, %rdx	# tmp1479, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_1070, D.14994
	addq	$2, %rax	#, D.14994
	movb	$0, (%rax)	#, *_1072
	.loc 1 2175 0
	movq	-120(%rbp), %rax	# xmx, xmx.723
	movl	-128(%rbp), %edx	# prv, tmp1480
	movslq	%edx, %rdx	# tmp1480, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1076, D.14999
	addq	$8, %rax	#, D.14999
	movl	(%rax), %eax	# *_1078, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L388	#,
	.loc 1 2175 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1481
	movl	356(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L388	#,
	.loc 1 2176 0 is_stmt 1 discriminator 1
	movq	-120(%rbp), %rax	# xmx, xmx.724
	movl	-128(%rbp), %edx	# prv, tmp1482
	movslq	%edx, %rdx	# tmp1482, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1084, D.14999
	addq	$8, %rax	#, D.14999
	movl	(%rax), %eax	# *_1086, D.14988
	cvtsi2ss	%eax, %xmm1	# D.14988, D.14997
	movq	-176(%rbp), %rax	# hmm, tmp1483
	movl	356(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cvtsi2ss	%eax, %xmm0	# D.14988, D.14997
	movl	-152(%rbp), %eax	# i, tmp1484
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14989
	movq	-48(%rbp), %rax	# mocc, tmp1485
	addq	%rdx, %rax	# D.14989, D.14992
	movss	(%rax), %xmm2	# *_1093, D.14997
	mulss	%xmm2, %xmm0	# D.14997, D.14997
	addss	%xmm1, %xmm0	# D.14997, D.14997
	cvttss2si	%xmm0, %eax	# D.14997, tmp1486
	movl	%eax, -124(%rbp)	# tmp1486, sc
	.loc 1 2175 0 discriminator 1
	cmpl	$-987654320, -124(%rbp)	#, sc
	jl	.L388	#,
	.loc 1 2177 0
	movq	-120(%rbp), %rax	# xmx, xmx.725
	movl	-132(%rbp), %edx	# cur, tmp1487
	movslq	%edx, %rdx	# tmp1487, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1101, D.14999
	leaq	8(%rax), %rdx	#, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1488
	movl	%eax, (%rdx)	# tmp1488, *_1103
	movq	-88(%rbp), %rax	# xtb, xtb.726
	movl	-152(%rbp), %edx	# i, tmp1489
	movslq	%edx, %rdx	# tmp1489, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_1107, D.14994
	addq	$2, %rax	#, D.14994
	movb	$8, (%rax)	#, *_1109
.L388:
	.loc 1 2178 0
	movq	-120(%rbp), %rax	# xmx, xmx.727
	movl	-132(%rbp), %edx	# cur, tmp1490
	movslq	%edx, %rdx	# tmp1490, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1113, D.14999
	addq	$4, %rax	#, D.14999
	movl	(%rax), %eax	# *_1115, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L389	#,
	.loc 1 2178 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp1491
	movl	344(%rax), %eax	# hmm_131(D)->xsc, D.14988
	cmpl	$-987654320, %eax	#, D.14988
	jl	.L389	#,
	.loc 1 2179 0 is_stmt 1 discriminator 1
	movq	-120(%rbp), %rax	# xmx, xmx.728
	movl	-132(%rbp), %edx	# cur, tmp1492
	movslq	%edx, %rdx	# tmp1492, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1121, D.14999
	addq	$4, %rax	#, D.14999
	movl	(%rax), %edx	# *_1123, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1493
	movl	344(%rax), %eax	# hmm_131(D)->xsc, D.14988
	addl	%edx, %eax	# D.14988, tmp1494
	movl	%eax, -124(%rbp)	# tmp1494, sc
	movq	-120(%rbp), %rax	# xmx, xmx.729
	movl	-132(%rbp), %edx	# cur, tmp1495
	movslq	%edx, %rdx	# tmp1495, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1130, D.14999
	addq	$8, %rax	#, D.14999
	movl	(%rax), %eax	# *_1132, D.14988
	.loc 1 2178 0 discriminator 1
	cmpl	%eax, -124(%rbp)	# D.14988, sc
	jle	.L389	#,
	.loc 1 2180 0
	movq	-120(%rbp), %rax	# xmx, xmx.730
	movl	-132(%rbp), %edx	# cur, tmp1496
	movslq	%edx, %rdx	# tmp1496, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.15001
	movq	(%rax), %rax	# *_1137, D.14999
	leaq	8(%rax), %rdx	#, D.14999
	movl	-124(%rbp), %eax	# sc, tmp1497
	movl	%eax, (%rdx)	# tmp1497, *_1139
	movq	-88(%rbp), %rax	# xtb, xtb.731
	movl	-152(%rbp), %edx	# i, tmp1498
	movslq	%edx, %rdx	# tmp1498, D.14989
	salq	$3, %rdx	#, D.14989
	addq	%rdx, %rax	# D.14989, D.14993
	movq	(%rax), %rax	# *_1143, D.14994
	addq	$2, %rax	#, D.14994
	movb	$7, (%rax)	#, *_1145
.L389:
	.loc 1 2089 0
	addl	$1, -152(%rbp)	#, i
.L362:
	.loc 1 2089 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1499
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	cmpl	-152(%rbp), %eax	# i, D.14988
	jge	.L390	#,
	.loc 1 2183 0 is_stmt 1
	movq	-120(%rbp), %rcx	# xmx, xmx.732
	movq	-168(%rbp), %rax	# msa, tmp1500
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	cltd
	shrl	$31, %edx	#, tmp1502
	addl	%edx, %eax	# tmp1502, tmp1503
	andl	$1, %eax	#, tmp1504
	subl	%edx, %eax	# tmp1502, tmp1505
	cltq
	salq	$3, %rax	#, D.14989
	addq	%rcx, %rax	# xmx.732, D.15001
	movq	(%rax), %rax	# *_1152, D.14999
	addq	$8, %rax	#, D.14999
	movl	(%rax), %edx	# *_1154, D.14988
	movq	-176(%rbp), %rax	# hmm, tmp1506
	movl	352(%rax), %eax	# hmm_131(D)->xsc, D.14988
	addl	%edx, %eax	# D.14988, tmp1507
	movl	%eax, -124(%rbp)	# tmp1507, sc
	.loc 1 2186 0
	movq	-168(%rbp), %rax	# msa, tmp1508
	movl	24(%rax), %edx	# msa_11(D)->alen, D.14988
	movq	-176(%rbp), %rcx	# hmm, tmp1509
	movq	-32(%rbp), %rax	# tb, tmp1510
	movq	%rcx, %rsi	# tmp1509,
	movq	%rax, %rdi	# tmp1510,
	call	ShadowTrace	#
	movq	%rax, -24(%rbp)	# tmp1511, tr
	.loc 1 2188 0
	movq	-40(%rbp), %rax	# mx, tmp1512
	movq	%rax, %rdi	# tmp1512,
	call	FreePlan7Matrix	#
	.loc 1 2189 0
	movq	-32(%rbp), %rax	# tb, tmp1513
	movq	%rax, %rdi	# tmp1513,
	call	FreeShadowMatrix	#
	.loc 1 2190 0
	movl	$1, -152(%rbp)	#, i
	jmp	.L391	#
.L392:
	.loc 1 2191 0 discriminator 2
	movl	-152(%rbp), %eax	# i, tmp1514
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14989
	movq	-56(%rbp), %rax	# con, tmp1515
	addq	%rdx, %rax	# D.14989, D.14990
	movq	(%rax), %rax	# *_1164, D.14992
	movq	%rax, %rdi	# D.14992,
	call	free	#
	.loc 1 2190 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L391:
	.loc 1 2190 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# msa, tmp1516
	movl	24(%rax), %eax	# msa_11(D)->alen, D.14988
	cmpl	-152(%rbp), %eax	# i, D.14988
	jge	.L392	#,
	.loc 1 2192 0 is_stmt 1
	movq	-56(%rbp), %rax	# con, tmp1517
	movq	%rax, %rdi	# tmp1517,
	call	free	#
	.loc 1 2193 0
	movq	-48(%rbp), %rax	# mocc, tmp1518
	movq	%rax, %rdi	# tmp1518,
	call	free	#
	.loc 1 2195 0
	movq	-24(%rbp), %rax	# tr, D.15002
	.loc 1 2196 0
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	P7ViterbiAlignAlignment, .-P7ViterbiAlignAlignment
	.section	.rodata
	.align 8
.LC16:
	.string	"HMMER: Bad state (%s) in ShadowTrace()\n"
	.text
	.globl	ShadowTrace
	.type	ShadowTrace, @function
ShadowTrace:
.LFB19:
	.loc 1 2214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# tb, tb
	movq	%rsi, -48(%rbp)	# hmm, hmm
	movl	%edx, -52(%rbp)	# L, L
	.loc 1 2226 0
	movl	-52(%rbp), %eax	# L, tmp318
	addl	$3, %eax	#, D.15003
	addl	%eax, %eax	# tmp319
	movl	%eax, -28(%rbp)	# tmp319, curralloc
	.loc 1 2227 0
	leaq	-8(%rbp), %rdx	#, tmp320
	movl	-28(%rbp), %eax	# curralloc, tmp321
	movq	%rdx, %rsi	# tmp320,
	movl	%eax, %edi	# tmp321,
	call	P7AllocTrace	#
	.loc 1 2232 0
	movq	-8(%rbp), %rax	# tr, tr.733
	movq	8(%rax), %rax	# tr.733_32->statetype, D.15004
	movb	$9, (%rax)	#, *_33
	.loc 1 2233 0
	movq	-8(%rbp), %rax	# tr, tr.734
	movq	16(%rax), %rax	# tr.734_34->nodeidx, D.15005
	movl	$0, (%rax)	#, *_35
	.loc 1 2234 0
	movq	-8(%rbp), %rax	# tr, tr.735
	movq	24(%rax), %rax	# tr.735_36->pos, D.15005
	movl	$0, (%rax)	#, *_37
	.loc 1 2235 0
	movl	$1, -24(%rbp)	#, tpos
	.loc 1 2236 0
	movl	-52(%rbp), %eax	# L, tmp322
	movl	%eax, -20(%rbp)	# tmp322, i
	.loc 1 2237 0
	movl	$0, -16(%rbp)	#, k
	.loc 1 2238 0
	movb	$8, -29(%rbp)	#, nxtstate
	.loc 1 2242 0
	jmp	.L397	#
.L424:
	.loc 1 2243 0
	movsbl	-29(%rbp), %eax	# nxtstate, D.15003
	cmpl	$10, %eax	#, D.15003
	ja	.L398	#,
	movl	%eax, %eax	# D.15003, tmp323
	movq	.L400(,%rax,8), %rax	#, tmp324
	jmp	*%rax	# tmp324
	.section	.rodata
	.align 8
	.align 4
.L400:
	.quad	.L398
	.quad	.L399
	.quad	.L401
	.quad	.L402
	.quad	.L398
	.quad	.L403
	.quad	.L404
	.quad	.L405
	.quad	.L406
	.quad	.L398
	.quad	.L407
	.text
.L399:
	.loc 1 2245 0
	movq	-8(%rbp), %rax	# tr, tr.736
	movq	8(%rax), %rdx	# tr.736_43->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp325
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$1, (%rax)	#, *_46
	.loc 1 2246 0
	movq	-40(%rbp), %rax	# tb, tmp326
	movq	8(%rax), %rax	# tb_47(D)->mtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp327
	movslq	%edx, %rdx	# tmp327, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rdx	# *_51, D.15004
	movl	-16(%rbp), %eax	# k, tmp328
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movzbl	(%rax), %eax	# *_54, tmp329
	movb	%al, -29(%rbp)	# tmp329, nxtstate
	.loc 1 2247 0
	movq	-8(%rbp), %rax	# tr, tr.737
	movq	16(%rax), %rax	# tr.737_56->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp330
	movslq	%edx, %rdx	# tmp330, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movl	-16(%rbp), %eax	# k, k.738
	leal	-1(%rax), %edx	#, tmp331
	movl	%edx, -16(%rbp)	# tmp331, k
	movl	%eax, (%rcx)	# k.738, *_60
	.loc 1 2248 0
	movq	-8(%rbp), %rax	# tr, tr.739
	movq	24(%rax), %rax	# tr.739_63->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp332
	movslq	%edx, %rdx	# tmp332, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movl	-20(%rbp), %eax	# i, i.740
	leal	-1(%rax), %edx	#, tmp333
	movl	%edx, -20(%rbp)	# tmp333, i
	movl	%eax, (%rcx)	# i.740, *_67
	.loc 1 2249 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2250 0
	jmp	.L408	#
.L402:
	.loc 1 2253 0
	movq	-8(%rbp), %rax	# tr, tr.741
	movq	8(%rax), %rdx	# tr.741_71->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp334
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$3, (%rax)	#, *_74
	.loc 1 2254 0
	movq	-40(%rbp), %rax	# tb, tmp335
	movq	16(%rax), %rax	# tb_47(D)->itb, D.15007
	movl	-20(%rbp), %edx	# i, tmp336
	movslq	%edx, %rdx	# tmp336, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rdx	# *_78, D.15004
	movl	-16(%rbp), %eax	# k, tmp337
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movzbl	(%rax), %eax	# *_81, tmp338
	movb	%al, -29(%rbp)	# tmp338, nxtstate
	.loc 1 2255 0
	movq	-8(%rbp), %rax	# tr, tr.742
	movq	16(%rax), %rax	# tr.742_83->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp339
	movslq	%edx, %rdx	# tmp339, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rax, %rdx	# D.15005, D.15005
	movl	-16(%rbp), %eax	# k, tmp340
	movl	%eax, (%rdx)	# tmp340, *_87
	.loc 1 2256 0
	movq	-8(%rbp), %rax	# tr, tr.743
	movq	24(%rax), %rax	# tr.743_88->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp341
	movslq	%edx, %rdx	# tmp341, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movl	-20(%rbp), %eax	# i, i.744
	leal	-1(%rax), %edx	#, tmp342
	movl	%edx, -20(%rbp)	# tmp342, i
	movl	%eax, (%rcx)	# i.744, *_92
	.loc 1 2257 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2258 0
	jmp	.L408	#
.L401:
	.loc 1 2261 0
	movq	-8(%rbp), %rax	# tr, tr.745
	movq	8(%rax), %rdx	# tr.745_96->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp343
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$2, (%rax)	#, *_99
	.loc 1 2262 0
	movq	-40(%rbp), %rax	# tb, tmp344
	movq	24(%rax), %rax	# tb_47(D)->dtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp345
	movslq	%edx, %rdx	# tmp345, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rdx	# *_103, D.15004
	movl	-16(%rbp), %eax	# k, tmp346
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movzbl	(%rax), %eax	# *_106, tmp347
	movb	%al, -29(%rbp)	# tmp347, nxtstate
	.loc 1 2263 0
	movq	-8(%rbp), %rax	# tr, tr.746
	movq	16(%rax), %rax	# tr.746_108->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp348
	movslq	%edx, %rdx	# tmp348, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movl	-16(%rbp), %eax	# k, k.747
	leal	-1(%rax), %edx	#, tmp349
	movl	%edx, -16(%rbp)	# tmp349, k
	movl	%eax, (%rcx)	# k.747, *_112
	.loc 1 2264 0
	movq	-8(%rbp), %rax	# tr, tr.748
	movq	24(%rax), %rax	# tr.748_115->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp350
	movslq	%edx, %rdx	# tmp350, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_119
	.loc 1 2265 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2266 0
	jmp	.L408	#
.L403:
	.loc 1 2269 0
	movq	-8(%rbp), %rax	# tr, tr.749
	movq	8(%rax), %rdx	# tr.749_121->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp351
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$5, (%rax)	#, *_124
	.loc 1 2270 0
	movq	-40(%rbp), %rax	# tb, tmp352
	movq	(%rax), %rax	# tb_47(D)->xtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp353
	movslq	%edx, %rdx	# tmp353, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rax	# *_128, D.15004
	movzbl	4(%rax), %eax	# MEM[(char *)_129 + 4B], tmp354
	movb	%al, -29(%rbp)	# tmp354, nxtstate
	.loc 1 2271 0
	movq	-8(%rbp), %rax	# tr, tr.750
	movq	16(%rax), %rax	# tr.750_131->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp355
	movslq	%edx, %rdx	# tmp355, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_135
	.loc 1 2272 0
	movq	-8(%rbp), %rax	# tr, tr.751
	movq	24(%rax), %rax	# tr.751_136->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp356
	movslq	%edx, %rdx	# tmp356, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	cmpb	$5, -29(%rbp)	#, nxtstate
	jne	.L409	#,
	.loc 1 2272 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, i.753
	leal	-1(%rax), %edx	#, tmp357
	movl	%edx, -20(%rbp)	# tmp357, i
	jmp	.L410	#
.L409:
	.loc 1 2272 0 discriminator 2
	movl	$0, %eax	#, iftmp.752
.L410:
	.loc 1 2272 0 discriminator 3
	movl	%eax, (%rcx)	# iftmp.752, *_140
	.loc 1 2273 0 is_stmt 1 discriminator 3
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2274 0 discriminator 3
	jmp	.L408	#
.L404:
	.loc 1 2278 0
	movq	-48(%rbp), %rax	# hmm, tmp358
	movl	304(%rax), %edx	# hmm_146(D)->p1, D.15009
	movq	-48(%rbp), %rax	# hmm, tmp359
	movq	208(%rax), %rax	# hmm_146(D)->begin, D.15010
	movl	-16(%rbp), %ecx	# k, tmp360
	movslq	%ecx, %rcx	# tmp360, D.15006
	addq	$1, %rcx	#, D.15006
	salq	$2, %rcx	#, D.15006
	addq	%rcx, %rax	# D.15006, D.15010
	movl	(%rax), %eax	# *_152, D.15009
	movl	%edx, -56(%rbp)	# D.15009, %sfp
	movss	-56(%rbp), %xmm1	# %sfp,
	movl	%eax, -56(%rbp)	# D.15009, %sfp
	movss	-56(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.15003, D.15011
	movsd	.LC8(%rip), %xmm1	#, tmp361
	addsd	%xmm0, %xmm1	# D.15011, D.15011
	movq	-48(%rbp), %rax	# hmm, tmp362
	movq	368(%rax), %rax	# hmm_146(D)->bsc, D.15005
	movl	-16(%rbp), %edx	# k, tmp363
	movslq	%edx, %rdx	# tmp363, D.15006
	addq	$1, %rdx	#, D.15006
	salq	$2, %rdx	#, D.15006
	addq	%rdx, %rax	# D.15006, D.15005
	movl	(%rax), %eax	# *_161, D.15003
	cvtsi2sd	%eax, %xmm0	# D.15003, D.15011
	ucomisd	%xmm1, %xmm0	# D.15011, D.15011
	jb	.L411	#,
	.loc 1 2279 0
	jmp	.L413	#
.L414:
	.loc 1 2281 0
	movq	-8(%rbp), %rax	# tr, tr.754
	movq	8(%rax), %rdx	# tr.754_164->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp364
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$2, (%rax)	#, *_167
	.loc 1 2282 0
	movq	-8(%rbp), %rax	# tr, tr.755
	movq	16(%rax), %rax	# tr.755_168->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp365
	movslq	%edx, %rdx	# tmp365, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	movl	-16(%rbp), %eax	# k, k.756
	leal	-1(%rax), %edx	#, tmp366
	movl	%edx, -16(%rbp)	# tmp366, k
	movl	%eax, (%rcx)	# k.756, *_172
	.loc 1 2283 0
	movq	-8(%rbp), %rax	# tr, tr.757
	movq	24(%rax), %rax	# tr.757_175->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp367
	movslq	%edx, %rdx	# tmp367, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_179
	.loc 1 2284 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2285 0
	movl	-24(%rbp), %eax	# tpos, tmp368
	cmpl	-28(%rbp), %eax	# curralloc, tmp368
	jne	.L413	#,
	.loc 1 2287 0
	movl	-52(%rbp), %eax	# L, tmp369
	addl	%eax, -28(%rbp)	# tmp369, curralloc
	.loc 1 2288 0
	movq	-8(%rbp), %rax	# tr, tr.758
	movl	-28(%rbp), %edx	# curralloc, tmp370
	movl	%edx, %esi	# tmp370,
	movq	%rax, %rdi	# tr.758,
	call	P7ReallocTrace	#
.L413:
	.loc 1 2279 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, k
	jg	.L414	#,
.L411:
	.loc 1 2292 0
	movq	-8(%rbp), %rax	# tr, tr.759
	movq	8(%rax), %rdx	# tr.759_183->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp371
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$6, (%rax)	#, *_186
	.loc 1 2293 0
	movq	-40(%rbp), %rax	# tb, tmp372
	movq	(%rax), %rax	# tb_47(D)->xtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp373
	movslq	%edx, %rdx	# tmp373, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rax	# *_190, D.15004
	movzbl	(%rax), %eax	# *_191, tmp374
	movb	%al, -29(%rbp)	# tmp374, nxtstate
	.loc 1 2294 0
	movq	-8(%rbp), %rax	# tr, tr.760
	movq	16(%rax), %rax	# tr.760_193->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp375
	movslq	%edx, %rdx	# tmp375, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_197
	.loc 1 2295 0
	movq	-8(%rbp), %rax	# tr, tr.761
	movq	24(%rax), %rax	# tr.761_198->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp376
	movslq	%edx, %rdx	# tmp376, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_202
	.loc 1 2296 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2297 0
	jmp	.L408	#
.L407:
	.loc 1 2300 0
	movq	-8(%rbp), %rax	# tr, tr.762
	movq	8(%rax), %rdx	# tr.762_204->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp377
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$10, (%rax)	#, *_207
	.loc 1 2301 0
	movq	-40(%rbp), %rax	# tb, tmp378
	movq	(%rax), %rax	# tb_47(D)->xtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp379
	movslq	%edx, %rdx	# tmp379, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rax	# *_211, D.15004
	movzbl	3(%rax), %eax	# MEM[(char *)_212 + 3B], tmp380
	movb	%al, -29(%rbp)	# tmp380, nxtstate
	.loc 1 2302 0
	movq	-8(%rbp), %rax	# tr, tr.763
	movq	16(%rax), %rax	# tr.763_214->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp381
	movslq	%edx, %rdx	# tmp381, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_218
	.loc 1 2303 0
	movq	-8(%rbp), %rax	# tr, tr.764
	movq	24(%rax), %rax	# tr.764_219->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp382
	movslq	%edx, %rdx	# tmp382, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	cmpb	$10, -29(%rbp)	#, nxtstate
	jne	.L415	#,
	.loc 1 2303 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, i.766
	leal	-1(%rax), %edx	#, tmp383
	movl	%edx, -20(%rbp)	# tmp383, i
	jmp	.L416	#
.L415:
	.loc 1 2303 0 discriminator 2
	movl	$0, %eax	#, iftmp.765
.L416:
	.loc 1 2303 0 discriminator 3
	movl	%eax, (%rcx)	# iftmp.765, *_223
	.loc 1 2304 0 is_stmt 1 discriminator 3
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2305 0 discriminator 3
	jmp	.L408	#
.L405:
	.loc 1 2308 0
	movq	-8(%rbp), %rax	# tr, tr.767
	movq	8(%rax), %rdx	# tr.767_229->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp384
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$7, (%rax)	#, *_232
	.loc 1 2309 0
	movq	-8(%rbp), %rax	# tr, tr.768
	movq	16(%rax), %rax	# tr.768_233->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp385
	movslq	%edx, %rdx	# tmp385, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_237
	.loc 1 2310 0
	movq	-8(%rbp), %rax	# tr, tr.769
	movq	24(%rax), %rax	# tr.769_238->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp386
	movslq	%edx, %rdx	# tmp386, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_242
	.loc 1 2311 0
	movq	-40(%rbp), %rax	# tb, tmp387
	movq	32(%rax), %rax	# tb_47(D)->esrc, D.15005
	movl	-20(%rbp), %edx	# i, tmp388
	movslq	%edx, %rdx	# tmp388, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	(%rax), %eax	# *_246, tmp389
	movl	%eax, -16(%rbp)	# tmp389, k
	.loc 1 2312 0
	movb	$1, -29(%rbp)	#, nxtstate
	.loc 1 2313 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2315 0
	movq	-48(%rbp), %rax	# hmm, tmp390
	movq	216(%rax), %rax	# hmm_146(D)->end, D.15010
	movl	-16(%rbp), %edx	# k, tmp391
	movslq	%edx, %rdx	# tmp391, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15010
	movl	(%rax), %eax	# *_253, D.15009
	movss	.LC10(%rip), %xmm1	#,
	movl	%eax, -56(%rbp)	# D.15009, %sfp
	movss	-56(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	cvtsi2sd	%eax, %xmm0	# D.15003, D.15011
	movsd	.LC8(%rip), %xmm1	#, tmp392
	addsd	%xmm0, %xmm1	# D.15011, D.15011
	movq	-48(%rbp), %rax	# hmm, tmp393
	movq	376(%rax), %rax	# hmm_146(D)->esc, D.15005
	movl	-16(%rbp), %edx	# k, tmp394
	movslq	%edx, %rdx	# tmp394, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	(%rax), %eax	# *_261, D.15003
	cvtsi2sd	%eax, %xmm0	# D.15003, D.15011
	ucomisd	%xmm1, %xmm0	# D.15011, D.15011
	jae	.L427	#,
	.loc 1 2331 0
	jmp	.L408	#
.L427:
.LBB3:
	.loc 1 2318 0
	movq	-48(%rbp), %rax	# hmm, tmp395
	movl	136(%rax), %eax	# hmm_146(D)->M, tmp396
	movl	%eax, -12(%rbp)	# tmp396, dk
	jmp	.L419	#
.L421:
	.loc 1 2320 0
	movq	-8(%rbp), %rax	# tr, tr.770
	movq	8(%rax), %rdx	# tr.770_265->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp397
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$2, (%rax)	#, *_268
	.loc 1 2321 0
	movq	-8(%rbp), %rax	# tr, tr.771
	movq	16(%rax), %rax	# tr.771_269->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp398
	movslq	%edx, %rdx	# tmp398, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rax, %rdx	# D.15005, D.15005
	movl	-12(%rbp), %eax	# dk, tmp399
	movl	%eax, (%rdx)	# tmp399, *_273
	.loc 1 2322 0
	movq	-8(%rbp), %rax	# tr, tr.772
	movq	24(%rax), %rax	# tr.772_274->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp400
	movslq	%edx, %rdx	# tmp400, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_278
	.loc 1 2323 0
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2324 0
	movl	-24(%rbp), %eax	# tpos, tmp401
	cmpl	-28(%rbp), %eax	# curralloc, tmp401
	jne	.L420	#,
	.loc 1 2326 0
	movl	-52(%rbp), %eax	# L, tmp402
	addl	%eax, -28(%rbp)	# tmp402, curralloc
	.loc 1 2327 0
	movq	-8(%rbp), %rax	# tr, tr.773
	movl	-28(%rbp), %edx	# curralloc, tmp403
	movl	%edx, %esi	# tmp403,
	movq	%rax, %rdi	# tr.773,
	call	P7ReallocTrace	#
.L420:
	.loc 1 2318 0
	subl	$1, -12(%rbp)	#, dk
.L419:
	.loc 1 2318 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# dk, tmp404
	cmpl	-16(%rbp), %eax	# k, tmp404
	jg	.L421	#,
.LBE3:
	.loc 1 2331 0 is_stmt 1
	jmp	.L408	#
.L406:
	.loc 1 2334 0
	movq	-8(%rbp), %rax	# tr, tr.774
	movq	8(%rax), %rdx	# tr.774_283->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp405
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$8, (%rax)	#, *_286
	.loc 1 2335 0
	movq	-40(%rbp), %rax	# tb, tmp406
	movq	(%rax), %rax	# tb_47(D)->xtb, D.15007
	movl	-20(%rbp), %edx	# i, tmp407
	movslq	%edx, %rdx	# tmp407, D.15008
	salq	$3, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15007
	movq	(%rax), %rax	# *_290, D.15004
	movzbl	2(%rax), %eax	# MEM[(char *)_291 + 2B], tmp408
	movb	%al, -29(%rbp)	# tmp408, nxtstate
	.loc 1 2336 0
	movq	-8(%rbp), %rax	# tr, tr.775
	movq	16(%rax), %rax	# tr.775_293->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp409
	movslq	%edx, %rdx	# tmp409, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_297
	.loc 1 2337 0
	movq	-8(%rbp), %rax	# tr, tr.776
	movq	24(%rax), %rax	# tr.776_298->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp410
	movslq	%edx, %rdx	# tmp410, D.15008
	salq	$2, %rdx	#, D.15008
	leaq	(%rax,%rdx), %rcx	#, D.15005
	cmpb	$8, -29(%rbp)	#, nxtstate
	jne	.L422	#,
	.loc 1 2337 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, i.778
	leal	-1(%rax), %edx	#, tmp411
	movl	%edx, -20(%rbp)	# tmp411, i
	jmp	.L423	#
.L422:
	.loc 1 2337 0 discriminator 2
	movl	$0, %eax	#, iftmp.777
.L423:
	.loc 1 2337 0 discriminator 3
	movl	%eax, (%rcx)	# iftmp.777, *_302
	.loc 1 2338 0 is_stmt 1 discriminator 3
	addl	$1, -24(%rbp)	#, tpos
	.loc 1 2339 0 discriminator 3
	jmp	.L408	#
.L398:
	.loc 1 2342 0
	movsbl	-29(%rbp), %eax	# nxtstate, D.15003
	movl	%eax, %edi	# D.15003,
	call	Statetype	#
	movq	%rax, %rsi	# D.15004,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L408:
	.loc 1 2346 0
	movl	-24(%rbp), %eax	# tpos, tmp412
	cmpl	-28(%rbp), %eax	# curralloc, tmp412
	jne	.L397	#,
	.loc 1 2348 0
	movl	-52(%rbp), %eax	# L, tmp413
	addl	%eax, -28(%rbp)	# tmp413, curralloc
	.loc 1 2349 0
	movq	-8(%rbp), %rax	# tr, tr.779
	movl	-28(%rbp), %edx	# curralloc, tmp414
	movl	%edx, %esi	# tmp414,
	movq	%rax, %rdi	# tr.779,
	call	P7ReallocTrace	#
.L397:
	.loc 1 2242 0 discriminator 1
	cmpb	$4, -29(%rbp)	#, nxtstate
	jne	.L424	#,
	.loc 1 2354 0
	movq	-8(%rbp), %rax	# tr, tr.780
	movq	8(%rax), %rdx	# tr.780_312->statetype, D.15004
	movl	-24(%rbp), %eax	# tpos, tmp415
	cltq
	addq	%rdx, %rax	# D.15004, D.15004
	movb	$4, (%rax)	#, *_315
	.loc 1 2355 0
	movq	-8(%rbp), %rax	# tr, tr.781
	movq	16(%rax), %rax	# tr.781_316->nodeidx, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp416
	movslq	%edx, %rdx	# tmp416, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_320
	.loc 1 2356 0
	movq	-8(%rbp), %rax	# tr, tr.782
	movq	24(%rax), %rax	# tr.782_321->pos, D.15005
	movl	-24(%rbp), %edx	# tpos, tmp417
	movslq	%edx, %rdx	# tmp417, D.15008
	salq	$2, %rdx	#, D.15008
	addq	%rdx, %rax	# D.15008, D.15005
	movl	$0, (%rax)	#, *_325
	.loc 1 2357 0
	movq	-8(%rbp), %rax	# tr, tr.783
	movl	-24(%rbp), %edx	# tpos, tmp418
	addl	$1, %edx	#, D.15003
	movl	%edx, (%rax)	# D.15003, tr.783_326->tlen
	.loc 1 2359 0
	movq	-8(%rbp), %rax	# tr, tr.784
	movq	%rax, %rdi	# tr.784,
	call	P7ReverseTrace	#
	.loc 1 2360 0
	movq	-8(%rbp), %rax	# tr, D.15012
	.loc 1 2361 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ShadowTrace, .-ShadowTrace
	.section	.rodata
.LC17:
	.string	"TraceDecompose() screwup"
	.text
	.globl	PostprocessSignificantHit
	.type	PostprocessSignificantHit, @function
PostprocessSignificantHit:
.LFB20:
	.loc 1 2450 0
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
	subq	$232, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)	# ghit, ghit
	movq	%rsi, -160(%rbp)	# dhit, dhit
	movq	%rdx, -168(%rbp)	# tr, tr
	movq	%rcx, -176(%rbp)	# hmm, hmm
	movq	%r8, -184(%rbp)	# dsq, dsq
	movl	%r9d, -188(%rbp)	# L, L
	movss	%xmm0, -192(%rbp)	# sc_override, sc_override
	.loc 1 2469 0
	cmpq	$0, -168(%rbp)	#, tr
	jne	.L429	#,
	.loc 1 2469 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# sc_override, D.15014
	jmp	.L470	#
.L429:
	.loc 1 2473 0 is_stmt 1
	leaq	-140(%rbp), %rdx	#, tmp170
	leaq	-104(%rbp), %rcx	#, tmp171
	movq	-168(%rbp), %rax	# tr, tmp172
	movq	%rcx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	TraceDecompose	#
	.loc 1 2474 0
	movl	-140(%rbp), %eax	# ntr, ntr.785
	testl	%eax, %eax	# ntr.785
	jne	.L431	#,
	.loc 1 2474 0 is_stmt 0 discriminator 1
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L431:
	.loc 1 2480 0 is_stmt 1
	movl	-140(%rbp), %eax	# ntr, ntr.786
	cltq
	salq	$2, %rax	#, D.15015
	movq	%rax, %rdx	# D.15015,
	movl	$2480, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -88(%rbp)	# tmp173, score
	.loc 1 2481 0
	movl	-140(%rbp), %eax	# ntr, ntr.787
	cltq
	salq	$2, %rax	#, D.15015
	movq	%rax, %rdx	# D.15015,
	movl	$2481, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -80(%rbp)	# tmp174, usedomain
	.loc 1 2482 0
	movl	$0, -116(%rbp)	#, ndom
	.loc 1 2483 0
	movl	.LC14(%rip), %eax	#, tmp175
	movl	%eax, -108(%rbp)	# tmp175, whole_sc
	.loc 1 2484 0
	movl	$0, -120(%rbp)	#, tidx
	jmp	.L432	#
.L437:
	.loc 1 2486 0
	movl	-120(%rbp), %eax	# tidx, tmp176
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp177
	leaq	(%rdx,%rax), %rbx	#, D.15016
	movq	-104(%rbp), %rax	# tarr, tarr.788
	movl	-120(%rbp), %edx	# tidx, tmp178
	movslq	%edx, %rdx	# tmp178, D.15015
	salq	$3, %rdx	#, D.15015
	addq	%rdx, %rax	# D.15015, D.15017
	movq	(%rax), %rdx	# *_45, D.15018
	movq	-184(%rbp), %rcx	# dsq, tmp179
	movq	-176(%rbp), %rax	# hmm, tmp180
	movq	%rcx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	P7TraceScore	#
	movss	%xmm0, -200(%rbp)	#, %sfp
	movl	-200(%rbp), %eax	# %sfp, D.15014
	movl	%eax, (%rbx)	# D.15014, *_41
	.loc 1 2487 0
	cmpl	$0, 48(%rbp)	#, do_null2
	je	.L433	#,
	.loc 1 2487 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# tidx, tmp181
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp182
	leaq	(%rdx,%rax), %rbx	#, D.15016
	movl	-120(%rbp), %eax	# tidx, tmp183
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp184
	addq	%rdx, %rax	# D.15015, D.15016
	movss	(%rax), %xmm5	# *_56, D.15014
	movss	%xmm5, -200(%rbp)	# D.15014, %sfp
	movq	-104(%rbp), %rax	# tarr, tarr.789
	movl	-120(%rbp), %edx	# tidx, tmp185
	movslq	%edx, %rdx	# tmp185, D.15015
	salq	$3, %rdx	#, D.15015
	addq	%rdx, %rax	# D.15015, D.15017
	movq	(%rax), %rcx	# *_61, D.15018
	movq	-184(%rbp), %rdx	# dsq, tmp186
	movq	-176(%rbp), %rax	# hmm, tmp187
	movq	%rcx, %rsi	# D.15018,
	movq	%rax, %rdi	# tmp187,
	call	TraceScoreCorrection	#
	movss	-200(%rbp), %xmm5	# %sfp, D.15014
	subss	%xmm0, %xmm5	# D.15014, D.15014
	movaps	%xmm5, %xmm0	# D.15014, D.15014
	movss	%xmm0, (%rbx)	# D.15014, *_53
.L433:
	.loc 1 2488 0 is_stmt 1
	movl	-120(%rbp), %eax	# tidx, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp189
	addq	%rdx, %rax	# D.15015, D.15016
	movss	(%rax), %xmm0	# *_67, D.15014
	xorps	%xmm1, %xmm1	# tmp190
	ucomiss	%xmm1, %xmm0	# tmp190, D.15014
	jbe	.L476	#,
	.loc 1 2489 0
	movl	-120(%rbp), %eax	# tidx, tmp191
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-80(%rbp), %rax	# usedomain, tmp192
	addq	%rdx, %rax	# D.15015, D.15019
	movl	$1, (%rax)	#, *_71
	.loc 1 2490 0
	addl	$1, -116(%rbp)	#, ndom
	.loc 1 2491 0
	movl	-120(%rbp), %eax	# tidx, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp194
	addq	%rdx, %rax	# D.15015, D.15016
	movss	(%rax), %xmm0	# *_75, D.15014
	movss	-108(%rbp), %xmm1	# whole_sc, tmp196
	addss	%xmm1, %xmm0	# tmp196, tmp195
	movss	%xmm0, -108(%rbp)	# tmp195, whole_sc
	jmp	.L436	#
.L476:
	.loc 1 2493 0
	movl	-120(%rbp), %eax	# tidx, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-80(%rbp), %rax	# usedomain, tmp198
	addq	%rdx, %rax	# D.15015, D.15019
	movl	$0, (%rax)	#, *_80
.L436:
	.loc 1 2484 0
	addl	$1, -120(%rbp)	#, tidx
.L432:
	.loc 1 2484 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# ntr, ntr.790
	cmpl	%eax, -120(%rbp)	# ntr.790, tidx
	jl	.L437	#,
	.loc 1 2502 0 is_stmt 1
	cmpl	$0, -116(%rbp)	#, ndom
	jne	.L438	#,
	.loc 1 2503 0
	movl	-140(%rbp), %edx	# ntr, ntr.791
	movq	-88(%rbp), %rax	# score, tmp199
	movl	%edx, %esi	# ntr.791,
	movq	%rax, %rdi	# tmp199,
	call	FArgMax	#
	movl	%eax, -120(%rbp)	# tmp200, tidx
	.loc 1 2504 0
	movl	-120(%rbp), %eax	# tidx, tmp201
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-80(%rbp), %rax	# usedomain, tmp202
	addq	%rdx, %rax	# D.15015, D.15019
	movl	$1, (%rax)	#, *_86
	.loc 1 2505 0
	movl	-120(%rbp), %eax	# tidx, tmp203
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp204
	addq	%rdx, %rax	# D.15015, D.15016
	movl	(%rax), %eax	# *_89, tmp205
	movl	%eax, -108(%rbp)	# tmp205, whole_sc
	.loc 1 2506 0
	movl	$1, -116(%rbp)	#, ndom
.L438:
	.loc 1 2514 0
	cmpl	$0, 40(%rbp)	#, do_forward
	je	.L439	#,
	.loc 1 2514 0 is_stmt 0 discriminator 1
	movl	-192(%rbp), %eax	# sc_override, tmp206
	movl	%eax, -108(%rbp)	# tmp206, whole_sc
.L439:
	.loc 1 2518 0 is_stmt 1
	movl	-108(%rbp), %eax	# whole_sc, tmp207
	movq	-176(%rbp), %rdx	# hmm, tmp208
	movl	%eax, -200(%rbp)	# tmp207, %sfp
	movss	-200(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp208,
	call	PValue	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, tmp209
	movq	%rax, -72(%rbp)	# tmp209, whole_pval
	.loc 1 2519 0
	movl	$0, -120(%rbp)	#, tidx
	movl	$1, -112(%rbp)	#, didx
	jmp	.L440	#
.L454:
	.loc 1 2520 0
	movl	-120(%rbp), %eax	# tidx, tmp210
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-80(%rbp), %rax	# usedomain, tmp211
	addq	%rdx, %rax	# D.15015, D.15019
	movl	(%rax), %eax	# *_100, D.15020
	testl	%eax, %eax	# D.15020
	jne	.L441	#,
	.loc 1 2520 0 is_stmt 0 discriminator 1
	jmp	.L442	#
.L441:
	.loc 1 2522 0 is_stmt 1
	movq	-104(%rbp), %rax	# tarr, tarr.792
	movl	-120(%rbp), %edx	# tidx, tmp212
	movslq	%edx, %rdx	# tmp212, D.15015
	salq	$3, %rdx	#, D.15015
	addq	%rdx, %rax	# D.15015, D.15017
	movq	(%rax), %rax	# *_105, D.15018
	leaq	-132(%rbp), %rdi	#, tmp213
	leaq	-136(%rbp), %rcx	#, tmp214
	leaq	-124(%rbp), %rdx	#, tmp215
	leaq	-128(%rbp), %rsi	#, tmp216
	movq	%rdi, %r8	# tmp213,
	movq	%rax, %rdi	# D.15018,
	call	TraceSimpleBounds	#
	.loc 1 2523 0
	movl	-120(%rbp), %eax	# tidx, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp218
	addq	%rdx, %rax	# D.15015, D.15016
	movl	(%rax), %eax	# *_109, D.15014
	movq	-176(%rbp), %rdx	# hmm, tmp219
	movl	%eax, -200(%rbp)	# D.15014, %sfp
	movss	-200(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp219,
	call	PValue	#
	movsd	%xmm0, -200(%rbp)	#, %sfp
	movq	-200(%rbp), %rax	# %sfp, tmp220
	movq	%rax, -64(%rbp)	# tmp220, pvalue
	.loc 1 2525 0
	movq	56(%rbp), %rax	# thresh, tmp221
	movsd	24(%rax), %xmm0	# thresh_112(D)->domE, D.15021
	ucomisd	-64(%rbp), %xmm0	# pvalue, D.15021
	jb	.L443	#,
	.loc 1 2525 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# tidx, tmp222
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp223
	addq	%rdx, %rax	# D.15015, D.15016
	movss	(%rax), %xmm0	# *_116, D.15014
	movq	56(%rbp), %rax	# thresh, tmp224
	movss	16(%rax), %xmm1	# thresh_112(D)->domT, D.15014
	ucomiss	%xmm1, %xmm0	# D.15014, D.15014
	jb	.L443	#,
	.loc 1 2526 0 is_stmt 1
	movq	-104(%rbp), %rax	# tarr, tarr.793
	movl	-120(%rbp), %edx	# tidx, tmp225
	movslq	%edx, %rdx	# tmp225, D.15015
	salq	$3, %rdx	#, D.15015
	addq	%rdx, %rax	# D.15015, D.15017
	movq	(%rax), %rax	# *_122, D.15018
	movq	-184(%rbp), %rdx	# dsq, tmp226
	movq	-176(%rbp), %rsi	# hmm, tmp227
	movq	16(%rbp), %rcx	# seqname,
	movq	%rax, %rdi	# D.15018,
	call	CreateFancyAli	#
	movq	%rax, -56(%rbp)	# tmp228, ali
	.loc 1 2528 0
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L446	#,
	.loc 1 2529 0
	movl	-128(%rbp), %eax	# i1, i1.794
	cvtsi2sd	%eax, %xmm0	# i1.794, D.15021
	movsd	.LC18(%rip), %xmm1	#, tmp230
	xorpd	%xmm1, %xmm0	# tmp230, tmp229
	movsd	%xmm0, -96(%rbp)	# tmp229, sortkey
	jmp	.L447	#
.L446:
	.loc 1 2531 0
	movl	-120(%rbp), %eax	# tidx, tmp231
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp232
	addq	%rdx, %rax	# D.15015, D.15016
	movss	(%rax), %xmm0	# *_132, D.15014
	unpcklps	%xmm0, %xmm0	# D.15014, D.15014
	cvtps2pd	%xmm0, %xmm6	# D.15014, tmp274
	movsd	%xmm6, -96(%rbp)	# tmp274, sortkey
.L447:
	.loc 1 2533 0
	movq	-176(%rbp), %rax	# hmm, tmp233
	movl	136(%rax), %r15d	# hmm_47(D)->M, D.15020
	movl	-132(%rbp), %r9d	# k2, k2.795
	movl	-136(%rbp), %r8d	# k1, k1.796
	movl	-124(%rbp), %eax	# i2, i2.797
	movl	%eax, -200(%rbp)	# i2.797, %sfp
	movl	-128(%rbp), %eax	# i1, i1.798
	movl	%eax, -204(%rbp)	# i1.798, %sfp
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L448	#,
	.loc 1 2533 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp234
	movq	16(%rax), %rcx	# hmm_47(D)->desc, iftmp.799
	jmp	.L449	#
.L448:
	.loc 1 2533 0 discriminator 2
	movq	32(%rbp), %rcx	# seqdesc, iftmp.799
.L449:
	.loc 1 2533 0 discriminator 3
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L450	#,
	.loc 1 2533 0 discriminator 4
	movq	-176(%rbp), %rax	# hmm, tmp235
	movq	8(%rax), %r13	# hmm_47(D)->acc, iftmp.800
	jmp	.L451	#
.L450:
	.loc 1 2533 0 discriminator 5
	movq	24(%rbp), %r13	# seqacc, iftmp.800
.L451:
	.loc 1 2533 0 discriminator 6
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L452	#,
	.loc 1 2533 0 discriminator 7
	movq	-176(%rbp), %rax	# hmm, tmp236
	movq	(%rax), %rsi	# hmm_47(D)->name, iftmp.801
	jmp	.L453	#
.L452:
	.loc 1 2533 0 discriminator 8
	movq	16(%rbp), %rsi	# seqname, iftmp.801
.L453:
	.loc 1 2534 0 is_stmt 1 discriminator 9
	movl	-120(%rbp), %eax	# tidx, tmp237
	cltq
	leaq	0(,%rax,4), %rdx	#, D.15015
	movq	-88(%rbp), %rax	# score, tmp238
	addq	%rdx, %rax	# D.15015, D.15016
	.loc 1 2533 0 discriminator 9
	movl	(%rax), %r11d	# *_150, D.15014
	movl	-108(%rbp), %r12d	# whole_sc, tmp239
	movq	-72(%rbp), %rbx	# whole_pval, tmp240
	movq	-64(%rbp), %r10	# pvalue, tmp241
	movq	-96(%rbp), %rdi	# sortkey, tmp242
	movq	-160(%rbp), %r14	# dhit, tmp243
	movq	-56(%rbp), %rax	# ali, tmp244
	movq	%rax, 48(%rsp)	# tmp244,
	movl	-116(%rbp), %eax	# ndom, tmp245
	movl	%eax, 40(%rsp)	# tmp245,
	movl	-112(%rbp), %eax	# didx, tmp246
	movl	%eax, 32(%rsp)	# tmp246,
	movl	%r15d, 24(%rsp)	# D.15020,
	movl	%r9d, 16(%rsp)	# k2.795,
	movl	%r8d, 8(%rsp)	# k1.796,
	movl	-188(%rbp), %eax	# L, tmp247
	movl	%eax, (%rsp)	# tmp247,
	movl	-200(%rbp), %r9d	# %sfp,
	movl	-204(%rbp), %r8d	# %sfp,
	movq	%r13, %rdx	# iftmp.800,
	movl	%r12d, -200(%rbp)	# tmp239, %sfp
	movss	-200(%rbp), %xmm4	# %sfp,
	movq	%rbx, -200(%rbp)	# tmp240, %sfp
	movsd	-200(%rbp), %xmm3	# %sfp,
	movl	%r11d, -200(%rbp)	# D.15014, %sfp
	movss	-200(%rbp), %xmm2	# %sfp,
	movq	%r10, -200(%rbp)	# tmp241, %sfp
	movsd	-200(%rbp), %xmm1	# %sfp,
	movq	%rdi, -200(%rbp)	# tmp242, %sfp
	movsd	-200(%rbp), %xmm0	# %sfp,
	movq	%r14, %rdi	# tmp243,
	call	RegisterHit	#
.L443:
	.loc 1 2543 0
	addl	$1, -112(%rbp)	#, didx
.L442:
	.loc 1 2519 0
	addl	$1, -120(%rbp)	#, tidx
.L440:
	.loc 1 2519 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# ntr, ntr.802
	cmpl	%eax, -120(%rbp)	# ntr.802, tidx
	jl	.L454	#,
	.loc 1 2559 0 is_stmt 1
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L455	#,
	.loc 1 2560 0
	movsd	-72(%rbp), %xmm0	# whole_pval, tmp248
	xorpd	%xmm1, %xmm1	# tmp249
	ucomisd	%xmm1, %xmm0	# tmp249, tmp248
	jbe	.L477	#,
	.loc 1 2560 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# whole_pval, tmp250
	movq	%rax, -200(%rbp)	# tmp250, %sfp
	movsd	-200(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	.LC18(%rip), %xmm1	#, tmp251
	xorpd	%xmm1, %xmm0	# tmp251, iftmp.803
	jmp	.L458	#
.L477:
	.loc 1 2560 0 discriminator 2
	movss	-108(%rbp), %xmm0	# whole_sc, D.15021
	cvtps2pd	%xmm0, %xmm0	# D.15021, D.15021
	movsd	.LC20(%rip), %xmm1	#, tmp252
	addsd	%xmm1, %xmm0	# tmp252, iftmp.803
.L458:
	.loc 1 2560 0 discriminator 1
	movsd	%xmm0, -96(%rbp)	# iftmp.803, sortkey
	jmp	.L459	#
.L455:
	.loc 1 2562 0 is_stmt 1
	movss	-108(%rbp), %xmm7	# whole_sc, tmp283
	cvtps2pd	%xmm7, %xmm7	# tmp283, tmp283
	movsd	%xmm7, -96(%rbp)	# tmp283, sortkey
.L459:
	.loc 1 2576 0
	movq	56(%rbp), %rax	# thresh, tmp253
	movss	(%rax), %xmm1	# thresh_112(D)->globT, D.15014
	movss	-108(%rbp), %xmm0	# whole_sc, tmp254
	ucomiss	%xmm1, %xmm0	# D.15014, tmp254
	jb	.L460	#,
	.loc 1 2577 0
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L462	#,
	.loc 1 2577 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# hmm, tmp255
	movq	16(%rax), %rcx	# hmm_47(D)->desc, iftmp.804
	jmp	.L463	#
.L462:
	.loc 1 2577 0 discriminator 2
	movq	32(%rbp), %rcx	# seqdesc, iftmp.804
.L463:
	.loc 1 2577 0 discriminator 3
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L464	#,
	.loc 1 2577 0 discriminator 4
	movq	-176(%rbp), %rax	# hmm, tmp256
	movq	8(%rax), %rdx	# hmm_47(D)->acc, iftmp.805
	jmp	.L465	#
.L464:
	.loc 1 2577 0 discriminator 5
	movq	24(%rbp), %rdx	# seqacc, iftmp.805
.L465:
	.loc 1 2577 0 discriminator 6
	cmpl	$0, 64(%rbp)	#, hmmpfam_mode
	je	.L466	#,
	.loc 1 2577 0 discriminator 7
	movq	-176(%rbp), %rax	# hmm, tmp257
	movq	(%rax), %rsi	# hmm_47(D)->name, iftmp.806
	jmp	.L467	#
.L466:
	.loc 1 2577 0 discriminator 8
	movq	16(%rbp), %rsi	# seqname, iftmp.806
.L467:
	.loc 1 2577 0 discriminator 9
	movl	-108(%rbp), %r10d	# whole_sc, tmp258
	movq	-72(%rbp), %rdi	# whole_pval, tmp259
	movq	-96(%rbp), %rax	# sortkey, tmp260
	movq	-152(%rbp), %r11	# ghit, tmp261
	movq	$0, 48(%rsp)	#,
	movl	-116(%rbp), %r8d	# ndom, tmp262
	movl	%r8d, 40(%rsp)	# tmp262,
	movl	$0, 32(%rsp)	#,
	movl	$0, 24(%rsp)	#,
	movl	$0, 16(%rsp)	#,
	movl	$0, 8(%rsp)	#,
	movl	$0, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	xorps	%xmm4, %xmm4	#
	xorpd	%xmm3, %xmm3	#
	movl	%r10d, -200(%rbp)	# tmp258, %sfp
	movss	-200(%rbp), %xmm2	# %sfp,
	movq	%rdi, -200(%rbp)	# tmp259, %sfp
	movsd	-200(%rbp), %xmm1	# %sfp,
	movq	%rax, -200(%rbp)	# tmp260, %sfp
	movsd	-200(%rbp), %xmm0	# %sfp,
	movq	%r11, %rdi	# tmp261,
	call	RegisterHit	#
.L460:
	.loc 1 2591 0 is_stmt 1
	movl	$0, -120(%rbp)	#, tidx
	jmp	.L468	#
.L469:
	.loc 1 2592 0 discriminator 2
	movq	-104(%rbp), %rax	# tarr, tarr.807
	movl	-120(%rbp), %edx	# tidx, tmp263
	movslq	%edx, %rdx	# tmp263, D.15015
	salq	$3, %rdx	#, D.15015
	addq	%rdx, %rax	# D.15015, D.15017
	movq	(%rax), %rax	# *_175, D.15018
	movq	%rax, %rdi	# D.15018,
	call	P7FreeTrace	#
	.loc 1 2591 0 discriminator 2
	addl	$1, -120(%rbp)	#, tidx
.L468:
	.loc 1 2591 0 is_stmt 0 discriminator 1
	movl	-140(%rbp), %eax	# ntr, ntr.808
	cmpl	%eax, -120(%rbp)	# ntr.808, tidx
	jl	.L469	#,
	.loc 1 2593 0 is_stmt 1
	movq	-104(%rbp), %rax	# tarr, tarr.809
	movq	%rax, %rdi	# tarr.809,
	call	free	#
	.loc 1 2594 0
	movq	-88(%rbp), %rax	# score, tmp264
	movq	%rax, %rdi	# tmp264,
	call	free	#
	.loc 1 2595 0
	movq	-80(%rbp), %rax	# usedomain, tmp265
	movq	%rax, %rdi	# tmp265,
	call	free	#
	.loc 1 2596 0
	movl	-108(%rbp), %eax	# whole_sc, D.15014
.L470:
	.loc 1 2597 0
	movl	%eax, -200(%rbp)	# <retval>, %sfp
	movss	-200(%rbp), %xmm0	# %sfp,
	addq	$232, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	PostprocessSignificantHit, .-PostprocessSignificantHit
	.section	.rodata
	.align 4
.LC2:
	.long	1117782016
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075838976
	.align 8
.LC6:
	.long	0
	.long	1075052544
	.align 4
.LC7:
	.long	1233125376
	.align 8
.LC8:
	.long	0
	.long	1083129856
	.align 4
.LC10:
	.long	1065353216
	.align 4
.LC14:
	.long	0
	.align 4
.LC15:
	.long	3323739136
	.align 16
.LC18:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC20:
	.long	0
	.long	1090021888
	.text
.Letext0:
	.file 2 "gki.h"
	.file 3 "msa.h"
	.file 4 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1aa7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF177
	.byte	0x1
	.long	.LASF178
	.long	.LASF179
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
	.uleb128 0x5
	.byte	0x8
	.long	0x74
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x6
	.long	.LASF17
	.byte	0x18
	.byte	0x2
	.byte	0x1a
	.long	0xce
	.uleb128 0x7
	.string	"key"
	.byte	0x2
	.byte	0x1b
	.long	0x6e
	.byte	0
	.uleb128 0x7
	.string	"idx"
	.byte	0x2
	.byte	0x1c
	.long	0x57
	.byte	0x8
	.uleb128 0x7
	.string	"nxt"
	.byte	0x2
	.byte	0x1d
	.long	0xce
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x9d
	.uleb128 0x8
	.byte	0x18
	.byte	0x2
	.byte	0x24
	.long	0x10d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x2
	.byte	0x25
	.long	0x10d
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x2
	.byte	0x27
	.long	0x57
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x2
	.byte	0x28
	.long	0x57
	.byte	0xc
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0x29
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xce
	.uleb128 0xa
	.string	"GKI"
	.byte	0x2
	.byte	0x2a
	.long	0xd4
	.uleb128 0x5
	.byte	0x8
	.long	0x6e
	.uleb128 0x5
	.byte	0x8
	.long	0x7b
	.uleb128 0xb
	.long	.LASF18
	.value	0x168
	.byte	0x3
	.byte	0x70
	.long	0x366
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.byte	0x73
	.long	0x11e
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.byte	0x74
	.long	0x11e
	.byte	0x8
	.uleb128 0x7
	.string	"wgt"
	.byte	0x3
	.byte	0x75
	.long	0x124
	.byte	0x10
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.byte	0x76
	.long	0x57
	.byte	0x18
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0x77
	.long	0x57
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x3
	.byte	0x7b
	.long	0x57
	.byte	0x20
	.uleb128 0x9
	.long	.LASF24
	.byte	0x3
	.byte	0x7c
	.long	0x57
	.byte	0x24
	.uleb128 0x9
	.long	.LASF25
	.byte	0x3
	.byte	0x7d
	.long	0x6e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF26
	.byte	0x3
	.byte	0x7e
	.long	0x6e
	.byte	0x30
	.uleb128 0x7
	.string	"acc"
	.byte	0x3
	.byte	0x7f
	.long	0x6e
	.byte	0x38
	.uleb128 0x7
	.string	"au"
	.byte	0x3
	.byte	0x80
	.long	0x6e
	.byte	0x40
	.uleb128 0x9
	.long	.LASF27
	.byte	0x3
	.byte	0x81
	.long	0x6e
	.byte	0x48
	.uleb128 0x9
	.long	.LASF28
	.byte	0x3
	.byte	0x82
	.long	0x6e
	.byte	0x50
	.uleb128 0x7
	.string	"rf"
	.byte	0x3
	.byte	0x83
	.long	0x6e
	.byte	0x58
	.uleb128 0x9
	.long	.LASF29
	.byte	0x3
	.byte	0x84
	.long	0x11e
	.byte	0x60
	.uleb128 0x9
	.long	.LASF30
	.byte	0x3
	.byte	0x85
	.long	0x11e
	.byte	0x68
	.uleb128 0x7
	.string	"ss"
	.byte	0x3
	.byte	0x86
	.long	0x11e
	.byte	0x70
	.uleb128 0x7
	.string	"sa"
	.byte	0x3
	.byte	0x87
	.long	0x11e
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x3
	.byte	0x88
	.long	0x366
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x3
	.byte	0x89
	.long	0x376
	.byte	0x98
	.uleb128 0x9
	.long	.LASF33
	.byte	0x3
	.byte	0x90
	.long	0x11e
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x3
	.byte	0x91
	.long	0x57
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF35
	.byte	0x3
	.byte	0x92
	.long	0x57
	.byte	0xbc
	.uleb128 0x9
	.long	.LASF36
	.byte	0x3
	.byte	0x94
	.long	0x11e
	.byte	0xc0
	.uleb128 0x7
	.string	"gf"
	.byte	0x3
	.byte	0x95
	.long	0x11e
	.byte	0xc8
	.uleb128 0x7
	.string	"ngf"
	.byte	0x3
	.byte	0x96
	.long	0x57
	.byte	0xd0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x3
	.byte	0x97
	.long	0x57
	.byte	0xd4
	.uleb128 0x9
	.long	.LASF38
	.byte	0x3
	.byte	0x99
	.long	0x11e
	.byte	0xd8
	.uleb128 0x7
	.string	"gs"
	.byte	0x3
	.byte	0x9a
	.long	0x386
	.byte	0xe0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x3
	.byte	0x9b
	.long	0x38c
	.byte	0xe8
	.uleb128 0x7
	.string	"ngs"
	.byte	0x3
	.byte	0x9c
	.long	0x57
	.byte	0xf0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x3
	.byte	0x9e
	.long	0x11e
	.byte	0xf8
	.uleb128 0xc
	.string	"gc"
	.byte	0x3
	.byte	0x9f
	.long	0x11e
	.value	0x100
	.uleb128 0xd
	.long	.LASF41
	.byte	0x3
	.byte	0xa0
	.long	0x38c
	.value	0x108
	.uleb128 0xc
	.string	"ngc"
	.byte	0x3
	.byte	0xa1
	.long	0x57
	.value	0x110
	.uleb128 0xd
	.long	.LASF42
	.byte	0x3
	.byte	0xa3
	.long	0x11e
	.value	0x118
	.uleb128 0xc
	.string	"gr"
	.byte	0x3
	.byte	0xa4
	.long	0x386
	.value	0x120
	.uleb128 0xd
	.long	.LASF43
	.byte	0x3
	.byte	0xa5
	.long	0x38c
	.value	0x128
	.uleb128 0xc
	.string	"ngr"
	.byte	0x3
	.byte	0xa6
	.long	0x57
	.value	0x130
	.uleb128 0xd
	.long	.LASF44
	.byte	0x3
	.byte	0xaa
	.long	0x38c
	.value	0x138
	.uleb128 0xd
	.long	.LASF45
	.byte	0x3
	.byte	0xab
	.long	0x57
	.value	0x140
	.uleb128 0xd
	.long	.LASF46
	.byte	0x3
	.byte	0xac
	.long	0x57
	.value	0x144
	.uleb128 0xd
	.long	.LASF47
	.byte	0x3
	.byte	0xad
	.long	0x89
	.value	0x148
	.uleb128 0xd
	.long	.LASF48
	.byte	0x3
	.byte	0xae
	.long	0x89
	.value	0x150
	.uleb128 0xd
	.long	.LASF49
	.byte	0x3
	.byte	0xaf
	.long	0x89
	.value	0x158
	.uleb128 0xd
	.long	.LASF50
	.byte	0x3
	.byte	0xb0
	.long	0x57
	.value	0x160
	.byte	0
	.uleb128 0xe
	.long	0x7b
	.long	0x376
	.uleb128 0xf
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	0x57
	.long	0x386
	.uleb128 0xf
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x11e
	.uleb128 0x5
	.byte	0x8
	.long	0x113
	.uleb128 0xa
	.string	"MSA"
	.byte	0x3
	.byte	0xb1
	.long	0x12a
	.uleb128 0x5
	.byte	0x8
	.long	0x392
	.uleb128 0xb
	.long	.LASF51
	.value	0x1d0
	.byte	0x4
	.byte	0x65
	.long	0x5fa
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x71
	.long	0x6e
	.byte	0
	.uleb128 0x7
	.string	"acc"
	.byte	0x4
	.byte	0x72
	.long	0x6e
	.byte	0x8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x73
	.long	0x6e
	.byte	0x10
	.uleb128 0x7
	.string	"rf"
	.byte	0x4
	.byte	0x74
	.long	0x6e
	.byte	0x18
	.uleb128 0x7
	.string	"cs"
	.byte	0x4
	.byte	0x75
	.long	0x6e
	.byte	0x20
	.uleb128 0x7
	.string	"ca"
	.byte	0x4
	.byte	0x76
	.long	0x6e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF52
	.byte	0x4
	.byte	0x77
	.long	0x6e
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x78
	.long	0x57
	.byte	0x38
	.uleb128 0x9
	.long	.LASF53
	.byte	0x4
	.byte	0x79
	.long	0x6e
	.byte	0x40
	.uleb128 0x7
	.string	"map"
	.byte	0x4
	.byte	0x7a
	.long	0x89
	.byte	0x48
	.uleb128 0x9
	.long	.LASF54
	.byte	0x4
	.byte	0x7b
	.long	0x57
	.byte	0x50
	.uleb128 0x9
	.long	.LASF55
	.byte	0x4
	.byte	0x86
	.long	0x89
	.byte	0x58
	.uleb128 0x9
	.long	.LASF56
	.byte	0x4
	.byte	0x87
	.long	0x89
	.byte	0x60
	.uleb128 0x9
	.long	.LASF57
	.byte	0x4
	.byte	0x88
	.long	0x89
	.byte	0x68
	.uleb128 0x7
	.string	"ga1"
	.byte	0x4
	.byte	0x90
	.long	0x7b
	.byte	0x70
	.uleb128 0x7
	.string	"ga2"
	.byte	0x4
	.byte	0x90
	.long	0x7b
	.byte	0x74
	.uleb128 0x7
	.string	"tc1"
	.byte	0x4
	.byte	0x91
	.long	0x7b
	.byte	0x78
	.uleb128 0x7
	.string	"tc2"
	.byte	0x4
	.byte	0x91
	.long	0x7b
	.byte	0x7c
	.uleb128 0x7
	.string	"nc1"
	.byte	0x4
	.byte	0x92
	.long	0x7b
	.byte	0x80
	.uleb128 0x7
	.string	"nc2"
	.byte	0x4
	.byte	0x92
	.long	0x7b
	.byte	0x84
	.uleb128 0x7
	.string	"M"
	.byte	0x4
	.byte	0x9b
	.long	0x57
	.byte	0x88
	.uleb128 0x7
	.string	"t"
	.byte	0x4
	.byte	0x9c
	.long	0x5fa
	.byte	0x90
	.uleb128 0x7
	.string	"mat"
	.byte	0x4
	.byte	0x9d
	.long	0x5fa
	.byte	0x98
	.uleb128 0x7
	.string	"ins"
	.byte	0x4
	.byte	0x9e
	.long	0x5fa
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x4
	.byte	0x9f
	.long	0x7b
	.byte	0xa8
	.uleb128 0x7
	.string	"xt"
	.byte	0x4
	.byte	0xa8
	.long	0x600
	.byte	0xac
	.uleb128 0x9
	.long	.LASF59
	.byte	0x4
	.byte	0xa9
	.long	0x124
	.byte	0xd0
	.uleb128 0x7
	.string	"end"
	.byte	0x4
	.byte	0xaa
	.long	0x124
	.byte	0xd8
	.uleb128 0x9
	.long	.LASF60
	.byte	0x4
	.byte	0xae
	.long	0x616
	.byte	0xe0
	.uleb128 0xc
	.string	"p1"
	.byte	0x4
	.byte	0xaf
	.long	0x7b
	.value	0x130
	.uleb128 0xc
	.string	"tsc"
	.byte	0x4
	.byte	0xc5
	.long	0x626
	.value	0x138
	.uleb128 0xc
	.string	"msc"
	.byte	0x4
	.byte	0xc6
	.long	0x626
	.value	0x140
	.uleb128 0xc
	.string	"isc"
	.byte	0x4
	.byte	0xc7
	.long	0x626
	.value	0x148
	.uleb128 0xc
	.string	"xsc"
	.byte	0x4
	.byte	0xc8
	.long	0x62c
	.value	0x150
	.uleb128 0xc
	.string	"bsc"
	.byte	0x4
	.byte	0xc9
	.long	0x89
	.value	0x170
	.uleb128 0xc
	.string	"esc"
	.byte	0x4
	.byte	0xca
	.long	0x89
	.value	0x178
	.uleb128 0xd
	.long	.LASF61
	.byte	0x4
	.byte	0xcb
	.long	0x89
	.value	0x180
	.uleb128 0xd
	.long	.LASF62
	.byte	0x4
	.byte	0xcb
	.long	0x89
	.value	0x188
	.uleb128 0xd
	.long	.LASF63
	.byte	0x4
	.byte	0xcb
	.long	0x89
	.value	0x190
	.uleb128 0xd
	.long	.LASF64
	.byte	0x4
	.byte	0xcb
	.long	0x89
	.value	0x198
	.uleb128 0xd
	.long	.LASF65
	.byte	0x4
	.byte	0xcb
	.long	0x89
	.value	0x1a0
	.uleb128 0xd
	.long	.LASF66
	.byte	0x4
	.byte	0xd6
	.long	0x626
	.value	0x1a8
	.uleb128 0xd
	.long	.LASF67
	.byte	0x4
	.byte	0xd7
	.long	0x626
	.value	0x1b0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x4
	.byte	0xd8
	.long	0x57
	.value	0x1b8
	.uleb128 0xd
	.long	.LASF69
	.byte	0x4
	.byte	0xd9
	.long	0x57
	.value	0x1bc
	.uleb128 0xc
	.string	"mu"
	.byte	0x4
	.byte	0xde
	.long	0x7b
	.value	0x1c0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x4
	.byte	0xdf
	.long	0x7b
	.value	0x1c4
	.uleb128 0xd
	.long	.LASF23
	.byte	0x4
	.byte	0xe1
	.long	0x57
	.value	0x1c8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x124
	.uleb128 0xe
	.long	0x7b
	.long	0x616
	.uleb128 0xf
	.long	0x65
	.byte	0x3
	.uleb128 0xf
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0x7b
	.long	0x626
	.uleb128 0xf
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x89
	.uleb128 0xe
	.long	0x57
	.long	0x642
	.uleb128 0xf
	.long	0x65
	.byte	0x3
	.uleb128 0xf
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x50
	.byte	0x4
	.value	0x121
	.long	0x6ec
	.uleb128 0x11
	.string	"xmx"
	.byte	0x4
	.value	0x122
	.long	0x626
	.byte	0
	.uleb128 0x11
	.string	"mmx"
	.byte	0x4
	.value	0x123
	.long	0x626
	.byte	0x8
	.uleb128 0x11
	.string	"imx"
	.byte	0x4
	.value	0x124
	.long	0x626
	.byte	0x10
	.uleb128 0x11
	.string	"dmx"
	.byte	0x4
	.value	0x125
	.long	0x626
	.byte	0x18
	.uleb128 0x12
	.long	.LASF72
	.byte	0x4
	.value	0x12b
	.long	0x6c
	.byte	0x20
	.uleb128 0x12
	.long	.LASF73
	.byte	0x4
	.value	0x12b
	.long	0x6c
	.byte	0x28
	.uleb128 0x12
	.long	.LASF74
	.byte	0x4
	.value	0x12b
	.long	0x6c
	.byte	0x30
	.uleb128 0x12
	.long	.LASF75
	.byte	0x4
	.value	0x12b
	.long	0x6c
	.byte	0x38
	.uleb128 0x12
	.long	.LASF76
	.byte	0x4
	.value	0x134
	.long	0x57
	.byte	0x40
	.uleb128 0x12
	.long	.LASF77
	.byte	0x4
	.value	0x135
	.long	0x57
	.byte	0x44
	.uleb128 0x12
	.long	.LASF78
	.byte	0x4
	.value	0x137
	.long	0x57
	.byte	0x48
	.uleb128 0x12
	.long	.LASF79
	.byte	0x4
	.value	0x138
	.long	0x57
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x28
	.byte	0x4
	.value	0x140
	.long	0x73b
	.uleb128 0x11
	.string	"xtb"
	.byte	0x4
	.value	0x141
	.long	0x11e
	.byte	0
	.uleb128 0x11
	.string	"mtb"
	.byte	0x4
	.value	0x142
	.long	0x11e
	.byte	0x8
	.uleb128 0x11
	.string	"itb"
	.byte	0x4
	.value	0x143
	.long	0x11e
	.byte	0x10
	.uleb128 0x11
	.string	"dtb"
	.byte	0x4
	.value	0x144
	.long	0x11e
	.byte	0x18
	.uleb128 0x12
	.long	.LASF81
	.byte	0x4
	.value	0x145
	.long	0x89
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x3a3
	.uleb128 0x10
	.long	.LASF82
	.byte	0x20
	.byte	0x4
	.value	0x176
	.long	0x783
	.uleb128 0x12
	.long	.LASF83
	.byte	0x4
	.value	0x177
	.long	0x57
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x4
	.value	0x178
	.long	0x6e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF85
	.byte	0x4
	.value	0x179
	.long	0x89
	.byte	0x10
	.uleb128 0x11
	.string	"pos"
	.byte	0x4
	.value	0x17a
	.long	0x89
	.byte	0x18
	.byte	0
	.uleb128 0x10
	.long	.LASF86
	.byte	0x48
	.byte	0x4
	.value	0x1bf
	.long	0x813
	.uleb128 0x12
	.long	.LASF87
	.byte	0x4
	.value	0x1c0
	.long	0x6e
	.byte	0
	.uleb128 0x12
	.long	.LASF88
	.byte	0x4
	.value	0x1c1
	.long	0x6e
	.byte	0x8
	.uleb128 0x12
	.long	.LASF89
	.byte	0x4
	.value	0x1c2
	.long	0x6e
	.byte	0x10
	.uleb128 0x12
	.long	.LASF90
	.byte	0x4
	.value	0x1c3
	.long	0x6e
	.byte	0x18
	.uleb128 0x12
	.long	.LASF19
	.byte	0x4
	.value	0x1c4
	.long	0x6e
	.byte	0x20
	.uleb128 0x11
	.string	"len"
	.byte	0x4
	.value	0x1c5
	.long	0x57
	.byte	0x28
	.uleb128 0x12
	.long	.LASF91
	.byte	0x4
	.value	0x1c6
	.long	0x6e
	.byte	0x30
	.uleb128 0x12
	.long	.LASF92
	.byte	0x4
	.value	0x1c7
	.long	0x6e
	.byte	0x38
	.uleb128 0x12
	.long	.LASF93
	.byte	0x4
	.value	0x1c8
	.long	0x57
	.byte	0x40
	.uleb128 0x12
	.long	.LASF94
	.byte	0x4
	.value	0x1c9
	.long	0x57
	.byte	0x44
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x68
	.byte	0x4
	.value	0x1d6
	.long	0x8fe
	.uleb128 0x12
	.long	.LASF96
	.byte	0x4
	.value	0x1d7
	.long	0x82
	.byte	0
	.uleb128 0x12
	.long	.LASF97
	.byte	0x4
	.value	0x1d8
	.long	0x7b
	.byte	0x8
	.uleb128 0x12
	.long	.LASF98
	.byte	0x4
	.value	0x1d9
	.long	0x82
	.byte	0x10
	.uleb128 0x12
	.long	.LASF99
	.byte	0x4
	.value	0x1da
	.long	0x7b
	.byte	0x18
	.uleb128 0x12
	.long	.LASF100
	.byte	0x4
	.value	0x1db
	.long	0x82
	.byte	0x20
	.uleb128 0x12
	.long	.LASF25
	.byte	0x4
	.value	0x1dc
	.long	0x6e
	.byte	0x28
	.uleb128 0x11
	.string	"acc"
	.byte	0x4
	.value	0x1dd
	.long	0x6e
	.byte	0x30
	.uleb128 0x12
	.long	.LASF26
	.byte	0x4
	.value	0x1de
	.long	0x6e
	.byte	0x38
	.uleb128 0x12
	.long	.LASF93
	.byte	0x4
	.value	0x1df
	.long	0x57
	.byte	0x40
	.uleb128 0x12
	.long	.LASF94
	.byte	0x4
	.value	0x1e0
	.long	0x57
	.byte	0x44
	.uleb128 0x12
	.long	.LASF47
	.byte	0x4
	.value	0x1e1
	.long	0x57
	.byte	0x48
	.uleb128 0x12
	.long	.LASF101
	.byte	0x4
	.value	0x1e2
	.long	0x57
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF102
	.byte	0x4
	.value	0x1e3
	.long	0x57
	.byte	0x50
	.uleb128 0x12
	.long	.LASF103
	.byte	0x4
	.value	0x1e4
	.long	0x57
	.byte	0x54
	.uleb128 0x12
	.long	.LASF104
	.byte	0x4
	.value	0x1e5
	.long	0x57
	.byte	0x58
	.uleb128 0x12
	.long	.LASF105
	.byte	0x4
	.value	0x1e6
	.long	0x57
	.byte	0x5c
	.uleb128 0x11
	.string	"ali"
	.byte	0x4
	.value	0x1e7
	.long	0x8fe
	.byte	0x60
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x783
	.uleb128 0x10
	.long	.LASF106
	.byte	0x20
	.byte	0x4
	.value	0x1f1
	.long	0x953
	.uleb128 0x11
	.string	"hit"
	.byte	0x4
	.value	0x1f2
	.long	0x953
	.byte	0
	.uleb128 0x12
	.long	.LASF107
	.byte	0x4
	.value	0x1f3
	.long	0x959
	.byte	0x8
	.uleb128 0x12
	.long	.LASF108
	.byte	0x4
	.value	0x1f4
	.long	0x57
	.byte	0x10
	.uleb128 0x11
	.string	"num"
	.byte	0x4
	.value	0x1f5
	.long	0x57
	.byte	0x14
	.uleb128 0x12
	.long	.LASF109
	.byte	0x4
	.value	0x1f6
	.long	0x57
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x959
	.uleb128 0x5
	.byte	0x8
	.long	0x813
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.value	0x20c
	.long	0x981
	.uleb128 0x14
	.long	.LASF110
	.sleb128 0
	.uleb128 0x14
	.long	.LASF111
	.sleb128 1
	.uleb128 0x14
	.long	.LASF112
	.sleb128 2
	.uleb128 0x14
	.long	.LASF113
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.long	.LASF114
	.byte	0x28
	.byte	0x4
	.value	0x206
	.long	0x9db
	.uleb128 0x12
	.long	.LASF115
	.byte	0x4
	.value	0x207
	.long	0x7b
	.byte	0
	.uleb128 0x12
	.long	.LASF116
	.byte	0x4
	.value	0x208
	.long	0x82
	.byte	0x8
	.uleb128 0x12
	.long	.LASF117
	.byte	0x4
	.value	0x209
	.long	0x7b
	.byte	0x10
	.uleb128 0x12
	.long	.LASF118
	.byte	0x4
	.value	0x20a
	.long	0x82
	.byte	0x18
	.uleb128 0x12
	.long	.LASF119
	.byte	0x4
	.value	0x20c
	.long	0x95f
	.byte	0x20
	.uleb128 0x11
	.string	"Z"
	.byte	0x4
	.value	0x20d
	.long	0x57
	.byte	0x24
	.byte	0
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.byte	0x3d
	.long	0xa4a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4a
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"M"
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"mx"
	.byte	0x1
	.byte	0x3f
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x642
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.byte	0x7b
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xae7
	.uleb128 0x16
	.string	"mx"
	.byte	0x1
	.byte	0x7b
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x7b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"M"
	.byte	0x1
	.byte	0x7b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"xmx"
	.byte	0x1
	.byte	0x7c
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"mmx"
	.byte	0x1
	.byte	0x7c
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"imx"
	.byte	0x1
	.byte	0x7c
	.long	0xae7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"dmx"
	.byte	0x1
	.byte	0x7c
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0xa2
	.quad	.L8
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x626
	.uleb128 0x15
	.long	.LASF121
	.byte	0x1
	.byte	0xc0
	.long	0xa4a
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6f
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0xc0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"M"
	.byte	0x1
	.byte	0xc0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"xmx"
	.byte	0x1
	.byte	0xc0
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.string	"mmx"
	.byte	0x1
	.byte	0xc0
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"imx"
	.byte	0x1
	.byte	0xc0
	.long	0xae7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"dmx"
	.byte	0x1
	.byte	0xc0
	.long	0xae7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"mx"
	.byte	0x1
	.byte	0xc2
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0xd3
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9a
	.uleb128 0x16
	.string	"mx"
	.byte	0x1
	.byte	0xd3
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF125
	.byte	0x1
	.byte	0xef
	.long	0xc2a
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2a
	.uleb128 0x17
	.long	.LASF122
	.byte	0x1
	.byte	0xef
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"M"
	.byte	0x1
	.byte	0xef
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"xtb"
	.byte	0x1
	.byte	0xef
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.string	"mtb"
	.byte	0x1
	.byte	0xef
	.long	0x386
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.string	"itb"
	.byte	0x1
	.byte	0xef
	.long	0x386
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x16
	.string	"dtb"
	.byte	0x1
	.byte	0xef
	.long	0x386
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"tb"
	.byte	0x1
	.byte	0xf1
	.long	0xc2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xf2
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x6ec
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x1
	.value	0x114
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5d
	.uleb128 0x1c
	.string	"tb"
	.byte	0x1
	.value	0x114
	.long	0xc2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1
	.value	0x133
	.long	0x57
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xca9
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x133
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"M"
	.byte	0x1
	.value	0x133
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF128
	.byte	0x1
	.value	0x135
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF129
	.byte	0x1
	.value	0x15b
	.long	0x57
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xce6
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x15b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"M"
	.byte	0x1
	.value	0x15b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x1
	.value	0x172
	.long	0x57
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xd23
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x172
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.string	"M"
	.byte	0x1
	.value	0x172
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x18d
	.long	0x7b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xdfa
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x18d
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x18d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x18d
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF132
	.byte	0x1
	.value	0x18d
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.string	"mx"
	.byte	0x1
	.value	0x18f
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x190
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x191
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x192
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x193
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x194
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x194
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x195
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xa4a
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x1
	.value	0x274
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xf20
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x274
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x274
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.string	"N"
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1c
	.string	"mx"
	.byte	0x1
	.value	0x275
	.long	0xa4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x275
	.long	0xf20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x277
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.value	0x278
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.value	0x279
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x27a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x27b
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x27c
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x27c
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x27c
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x27c
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x27d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x21
	.string	"dk"
	.byte	0x1
	.value	0x317
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0xf26
	.uleb128 0x5
	.byte	0x8
	.long	0x741
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x1
	.value	0x380
	.long	0x7b
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x104e
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x380
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x380
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x380
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"mx"
	.byte	0x1
	.value	0x380
	.long	0xa4a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x380
	.long	0xf20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"ctr"
	.byte	0x1
	.value	0x382
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x383
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.value	0x384
	.long	0xf20
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x385
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x386
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.value	0x387
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.value	0x388
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF83
	.byte	0x1
	.value	0x389
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF47
	.byte	0x1
	.value	0x38a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF139
	.byte	0x1
	.value	0x38b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x38c
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.string	"t2"
	.byte	0x1
	.value	0x38d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x1f
	.long	.LASF140
	.byte	0x1
	.value	0x428
	.long	0x7b
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e2
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x428
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x428
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x428
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x428
	.long	0xf20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.string	"mx"
	.byte	0x1
	.value	0x42a
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"tmx"
	.byte	0x1
	.value	0x42b
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x42c
	.long	0xf26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x42d
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x42d
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x42d
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x42d
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"xtr"
	.byte	0x1
	.value	0x42e
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"mtr"
	.byte	0x1
	.value	0x42e
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"dtr"
	.byte	0x1
	.value	0x42e
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"itr"
	.byte	0x1
	.value	0x42e
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"btr"
	.byte	0x1
	.value	0x42f
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"etr"
	.byte	0x1
	.value	0x42f
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x430
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x431
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x431
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.value	0x431
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x21
	.string	"cur"
	.byte	0x1
	.value	0x432
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"prv"
	.byte	0x1
	.value	0x432
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.value	0x433
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x1f
	.long	.LASF141
	.byte	0x1
	.value	0x4ef
	.long	0x7b
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x137d
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x4ef
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x4ef
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x4ef
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x20
	.long	.LASF134
	.byte	0x1
	.value	0x4ef
	.long	0xf20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x4f1
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF142
	.byte	0x1
	.value	0x4f2
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF143
	.byte	0x1
	.value	0x4f3
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF144
	.byte	0x1
	.value	0x4f4
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x1
	.value	0x4f5
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF146
	.byte	0x1
	.value	0x4f6
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.string	"k1"
	.byte	0x1
	.value	0x4f7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"k2"
	.byte	0x1
	.value	0x4f7
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.string	"k3"
	.byte	0x1
	.value	0x4f7
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"t1"
	.byte	0x1
	.value	0x4f8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -110
	.uleb128 0x21
	.string	"t2"
	.byte	0x1
	.value	0x4f8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -111
	.uleb128 0x21
	.string	"t3"
	.byte	0x1
	.value	0x4f8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x21
	.string	"s1"
	.byte	0x1
	.value	0x4f9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"s2"
	.byte	0x1
	.value	0x4f9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"s3"
	.byte	0x1
	.value	0x4f9
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x4fa
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF147
	.byte	0x1
	.value	0x4fb
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF83
	.byte	0x1
	.value	0x4fc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x4fd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x4fd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.value	0x4fd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.value	0x5cb
	.long	0x7b
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1461
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x5cb
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x5cb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x5cb
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF132
	.byte	0x1
	.value	0x5cb
	.long	0xdfa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.string	"mx"
	.byte	0x1
	.value	0x5cd
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x5ce
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x5cf
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x5d0
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x5d1
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x5d2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x5d2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x5d3
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1e
	.long	.LASF149
	.byte	0x1
	.value	0x5d4
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x23
	.long	.LASF181
	.byte	0x1
	.value	0x675
	.long	0x7b
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1639
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x675
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x675
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x675
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1c
	.string	"k1"
	.byte	0x1
	.value	0x676
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1c
	.string	"t1"
	.byte	0x1
	.value	0x676
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1c
	.string	"s1"
	.byte	0x1
	.value	0x676
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1c
	.string	"k3"
	.byte	0x1
	.value	0x677
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"t3"
	.byte	0x1
	.value	0x677
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x1c
	.string	"s3"
	.byte	0x1
	.value	0x677
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	.LASF150
	.byte	0x1
	.value	0x678
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.long	.LASF151
	.byte	0x1
	.value	0x678
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x20
	.long	.LASF152
	.byte	0x1
	.value	0x678
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x21
	.string	"fwd"
	.byte	0x1
	.value	0x67a
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.string	"bck"
	.byte	0x1
	.value	0x67b
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x67c
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x67d
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x67e
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x67f
	.long	0x626
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"k2"
	.byte	0x1
	.value	0x680
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"t2"
	.byte	0x1
	.value	0x681
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -105
	.uleb128 0x21
	.string	"s2"
	.byte	0x1
	.value	0x682
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x21
	.string	"cur"
	.byte	0x1
	.value	0x683
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"prv"
	.byte	0x1
	.value	0x683
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"nxt"
	.byte	0x1
	.value	0x683
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x684
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x684
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x685
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x21
	.string	"max"
	.byte	0x1
	.value	0x686
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF153
	.byte	0x1
	.value	0x687
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1f
	.long	.LASF154
	.byte	0x1
	.value	0x7e6
	.long	0xf26
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c0
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x7e6
	.long	0x39d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x7e6
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x21
	.string	"mx"
	.byte	0x1
	.value	0x7e8
	.long	0xa4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.string	"tb"
	.byte	0x1
	.value	0x7e9
	.long	0xc2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x7ea
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"xmx"
	.byte	0x1
	.value	0x7eb
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"mmx"
	.byte	0x1
	.value	0x7eb
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.string	"imx"
	.byte	0x1
	.value	0x7eb
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"dmx"
	.byte	0x1
	.value	0x7eb
	.long	0x626
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.string	"xtb"
	.byte	0x1
	.value	0x7ec
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.string	"mtb"
	.byte	0x1
	.value	0x7ec
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"itb"
	.byte	0x1
	.value	0x7ec
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.string	"dtb"
	.byte	0x1
	.value	0x7ec
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"con"
	.byte	0x1
	.value	0x7ed
	.long	0x5fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x1
	.value	0x7ee
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x7ef
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x7f0
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.value	0x7f1
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x21
	.string	"sym"
	.byte	0x1
	.value	0x7f2
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x21
	.string	"sc"
	.byte	0x1
	.value	0x7f3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1e
	.long	.LASF156
	.byte	0x1
	.value	0x7f4
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.string	"cur"
	.byte	0x1
	.value	0x7f5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x21
	.string	"prv"
	.byte	0x1
	.value	0x7f5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1f
	.long	.LASF157
	.byte	0x1
	.value	0x8a5
	.long	0xf26
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1883
	.uleb128 0x1c
	.string	"tb"
	.byte	0x1
	.value	0x8a5
	.long	0xc2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x8a5
	.long	0x73b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x8a5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.string	"tr"
	.byte	0x1
	.value	0x8a7
	.long	0xf26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF135
	.byte	0x1
	.value	0x8a8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF136
	.byte	0x1
	.value	0x8a9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0x8aa
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.value	0x8ab
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x1
	.value	0x8ac
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x22
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x21
	.string	"dk"
	.byte	0x1
	.value	0x90d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x1
	.value	0x984
	.long	0x7b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a78
	.uleb128 0x20
	.long	.LASF160
	.byte	0x1
	.value	0x984
	.long	0x1a78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x20
	.long	.LASF161
	.byte	0x1
	.value	0x985
	.long	0x1a78
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1c
	.string	"tr"
	.byte	0x1
	.value	0x986
	.long	0xf26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1c
	.string	"hmm"
	.byte	0x1
	.value	0x987
	.long	0x73b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1c
	.string	"dsq"
	.byte	0x1
	.value	0x988
	.long	0x6e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1c
	.string	"L"
	.byte	0x1
	.value	0x989
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x20
	.long	.LASF162
	.byte	0x1
	.value	0x98a
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF163
	.byte	0x1
	.value	0x98b
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.long	.LASF164
	.byte	0x1
	.value	0x98c
	.long	0x6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	.LASF165
	.byte	0x1
	.value	0x98d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.value	0x98e
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.value	0x98f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x20
	.long	.LASF168
	.byte	0x1
	.value	0x990
	.long	0x1a7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x20
	.long	.LASF169
	.byte	0x1
	.value	0x991
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x1e
	.long	.LASF138
	.byte	0x1
	.value	0x993
	.long	0xf20
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x21
	.string	"ali"
	.byte	0x1
	.value	0x994
	.long	0x8fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.string	"ntr"
	.byte	0x1
	.value	0x995
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x1
	.value	0x996
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x997
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x1
	.value	0x998
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.string	"k1"
	.byte	0x1
	.value	0x999
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x21
	.string	"k2"
	.byte	0x1
	.value	0x999
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x21
	.string	"i1"
	.byte	0x1
	.value	0x99a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.string	"i2"
	.byte	0x1
	.value	0x99a
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.value	0x99b
	.long	0x7b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1e
	.long	.LASF97
	.byte	0x1
	.value	0x99c
	.long	0x124
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x1
	.value	0x99d
	.long	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.value	0x99e
	.long	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x1
	.value	0x99f
	.long	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x9a0
	.long	0x82
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.long	0x904
	.uleb128 0x5
	.byte	0x8
	.long	0x981
	.uleb128 0xe
	.long	0x74
	.long	0x1a94
	.uleb128 0xf
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x24
	.long	.LASF175
	.byte	0x4
	.byte	0x39
	.long	0x1a84
	.uleb128 0x24
	.long	.LASF176
	.byte	0x4
	.byte	0x3b
	.long	0x57
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x16
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
.LASF133:
	.string	"P7ViterbiTrace"
.LASF7:
	.string	"sizetype"
.LASF153:
	.string	"start"
.LASF58:
	.string	"tbd1"
.LASF64:
	.string	"bsc_mem"
.LASF161:
	.string	"dhit"
.LASF81:
	.string	"esrc"
.LASF74:
	.string	"imx_mem"
.LASF90:
	.string	"mline"
.LASF110:
	.string	"CUT_NONE"
.LASF171:
	.string	"didx"
.LASF87:
	.string	"rfline"
.LASF24:
	.string	"type"
.LASF80:
	.string	"dpshadow_s"
.LASF94:
	.string	"sqto"
.LASF39:
	.string	"gs_idx"
.LASF83:
	.string	"tlen"
.LASF17:
	.string	"gki_elem"
.LASF179:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF50:
	.string	"lastidx"
.LASF150:
	.string	"ret_k2"
.LASF6:
	.string	"long int"
.LASF149:
	.string	"codon"
.LASF86:
	.string	"fancyali_s"
.LASF174:
	.string	"whole_pval"
.LASF22:
	.string	"nseq"
.LASF72:
	.string	"xmx_mem"
.LASF65:
	.string	"esc_mem"
.LASF21:
	.string	"alen"
.LASF4:
	.string	"signed char"
.LASF88:
	.string	"csline"
.LASF85:
	.string	"nodeidx"
.LASF127:
	.string	"P7ViterbiSize"
.LASF38:
	.string	"gs_tag"
.LASF175:
	.string	"Alphabet"
.LASF1:
	.string	"unsigned char"
.LASF132:
	.string	"ret_mx"
.LASF36:
	.string	"gf_tag"
.LASF176:
	.string	"Alphabet_size"
.LASF106:
	.string	"tophit_s"
.LASF167:
	.string	"do_null2"
.LASF97:
	.string	"score"
.LASF130:
	.string	"P7WeeViterbiSize"
.LASF71:
	.string	"dpmatrix_s"
.LASF61:
	.string	"tsc_mem"
.LASF13:
	.string	"table"
.LASF101:
	.string	"hmmfrom"
.LASF43:
	.string	"gr_idx"
.LASF8:
	.string	"char"
.LASF89:
	.string	"model"
.LASF70:
	.string	"lambda"
.LASF47:
	.string	"sqlen"
.LASF37:
	.string	"alloc_ngf"
.LASF32:
	.string	"cutoff_is_set"
.LASF48:
	.string	"sslen"
.LASF122:
	.string	"rows"
.LASF107:
	.string	"unsrt"
.LASF23:
	.string	"flags"
.LASF30:
	.string	"sqdesc"
.LASF96:
	.string	"sortkey"
.LASF114:
	.string	"threshold_s"
.LASF145:
	.string	"startlist"
.LASF73:
	.string	"mmx_mem"
.LASF98:
	.string	"pvalue"
.LASF138:
	.string	"tarr"
.LASF46:
	.string	"nseqlump"
.LASF55:
	.string	"tpri"
.LASF102:
	.string	"hmmto"
.LASF126:
	.string	"FreeShadowMatrix"
.LASF84:
	.string	"statetype"
.LASF20:
	.string	"sqname"
.LASF123:
	.string	"ResizePlan7Matrix"
.LASF141:
	.string	"P7WeeViterbi"
.LASF165:
	.string	"do_forward"
.LASF42:
	.string	"gr_tag"
.LASF44:
	.string	"index"
.LASF169:
	.string	"hmmpfam_mode"
.LASF152:
	.string	"ret_s2"
.LASF163:
	.string	"seqacc"
.LASF0:
	.string	"long unsigned int"
.LASF147:
	.string	"ret_sc"
.LASF92:
	.string	"target"
.LASF14:
	.string	"primelevel"
.LASF151:
	.string	"ret_t2"
.LASF15:
	.string	"nhash"
.LASF143:
	.string	"tassign"
.LASF134:
	.string	"ret_tr"
.LASF57:
	.string	"ipri"
.LASF105:
	.string	"ndom"
.LASF170:
	.string	"tidx"
.LASF111:
	.string	"CUT_GA"
.LASF56:
	.string	"mpri"
.LASF49:
	.string	"salen"
.LASF157:
	.string	"ShadowTrace"
.LASF164:
	.string	"seqdesc"
.LASF181:
	.string	"get_wee_midpt"
.LASF11:
	.string	"long long int"
.LASF119:
	.string	"autocut"
.LASF79:
	.string	"padM"
.LASF78:
	.string	"padN"
.LASF33:
	.string	"comment"
.LASF10:
	.string	"double"
.LASF121:
	.string	"AllocPlan7Matrix"
.LASF128:
	.string	"Mbytes"
.LASF131:
	.string	"P7Forward"
.LASF162:
	.string	"seqname"
.LASF75:
	.string	"dmx_mem"
.LASF9:
	.string	"float"
.LASF27:
	.string	"ss_cons"
.LASF35:
	.string	"alloc_ncomment"
.LASF160:
	.string	"ghit"
.LASF108:
	.string	"alloc"
.LASF118:
	.string	"domE"
.LASF3:
	.string	"unsigned int"
.LASF45:
	.string	"nseqalloc"
.LASF117:
	.string	"domT"
.LASF41:
	.string	"gc_idx"
.LASF34:
	.string	"ncomment"
.LASF125:
	.string	"AllocShadowMatrix"
.LASF19:
	.string	"aseq"
.LASF136:
	.string	"tpos"
.LASF53:
	.string	"ctime"
.LASF177:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF104:
	.string	"domidx"
.LASF91:
	.string	"query"
.LASF77:
	.string	"maxM"
.LASF76:
	.string	"maxN"
.LASF59:
	.string	"begin"
.LASF54:
	.string	"checksum"
.LASF142:
	.string	"kassign"
.LASF103:
	.string	"hmmlen"
.LASF158:
	.string	"nxtstate"
.LASF12:
	.string	"long long unsigned int"
.LASF137:
	.string	"P7SmallViterbi"
.LASF40:
	.string	"gc_tag"
.LASF63:
	.string	"isc_mem"
.LASF112:
	.string	"CUT_NC"
.LASF18:
	.string	"msa_struct"
.LASF173:
	.string	"usedomain"
.LASF140:
	.string	"P7ParsingViterbi"
.LASF166:
	.string	"sc_override"
.LASF26:
	.string	"desc"
.LASF95:
	.string	"hit_s"
.LASF178:
	.string	"core_algorithms.c"
.LASF82:
	.string	"p7trace_s"
.LASF159:
	.string	"PostprocessSignificantHit"
.LASF116:
	.string	"globE"
.LASF155:
	.string	"mocc"
.LASF115:
	.string	"globT"
.LASF99:
	.string	"mothersc"
.LASF25:
	.string	"name"
.LASF60:
	.string	"null"
.LASF93:
	.string	"sqfrom"
.LASF5:
	.string	"short int"
.LASF109:
	.string	"lump"
.LASF28:
	.string	"sa_cons"
.LASF100:
	.string	"motherp"
.LASF144:
	.string	"endlist"
.LASF124:
	.string	"FreePlan7Matrix"
.LASF120:
	.string	"CreatePlan7Matrix"
.LASF146:
	.string	"lpos"
.LASF31:
	.string	"cutoff"
.LASF148:
	.string	"Plan7ESTViterbi"
.LASF62:
	.string	"msc_mem"
.LASF51:
	.string	"plan7_s"
.LASF113:
	.string	"CUT_TC"
.LASF180:
	.string	"DONE"
.LASF139:
	.string	"totlen"
.LASF2:
	.string	"short unsigned int"
.LASF154:
	.string	"P7ViterbiAlignAlignment"
.LASF168:
	.string	"thresh"
.LASF68:
	.string	"dna2"
.LASF69:
	.string	"dna4"
.LASF16:
	.string	"nkeys"
.LASF172:
	.string	"whole_sc"
.LASF156:
	.string	"denom"
.LASF52:
	.string	"comlog"
.LASF67:
	.string	"dnai"
.LASF66:
	.string	"dnam"
.LASF135:
	.string	"curralloc"
.LASF129:
	.string	"P7SmallViterbiSize"
.LASF29:
	.string	"sqacc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
