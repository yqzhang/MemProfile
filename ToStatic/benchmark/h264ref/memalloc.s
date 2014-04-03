	.file	"memalloc.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 memalloc.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC0:
	.string	"init_top_bot_planes: imgTopField"
	.align 8
.LC1:
	.string	"init_top_bot_planes: imgBotField"
	.text
	.globl	init_top_bot_planes
	.type	init_top_bot_planes, @function
init_top_bot_planes:
.LFB2:
	.file 1 "memalloc.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# imgFrame, imgFrame
	movl	%esi, -28(%rbp)	# rows, rows
	movl	%edx, -32(%rbp)	# columns, columns
	movq	%rcx, -40(%rbp)	# imgTopField, imgTopField
	movq	%r8, -48(%rbp)	# imgBotField, imgBotField
	.loc 1 32 0
	movl	-28(%rbp), %eax	# rows, tmp89
	movl	%eax, %edx	# tmp89, tmp90
	shrl	$31, %edx	#, tmp90
	addl	%edx, %eax	# tmp90, tmp91
	sarl	%eax	# tmp92
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4677,
	call	calloc	#
	movq	%rax, %rdx	# tmp93, D.4678
	movq	-40(%rbp), %rax	# imgTopField, tmp94
	movq	%rdx, (%rax)	# D.4678, *imgTopField_6(D)
	movq	-40(%rbp), %rax	# imgTopField, tmp95
	movq	(%rax), %rax	# *imgTopField_6(D), D.4679
	testq	%rax, %rax	# D.4679
	jne	.L2	#,
	.loc 1 33 0
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L2:
	.loc 1 35 0
	movl	-28(%rbp), %eax	# rows, tmp96
	movl	%eax, %edx	# tmp96, tmp97
	shrl	$31, %edx	#, tmp97
	addl	%edx, %eax	# tmp97, tmp98
	sarl	%eax	# tmp99
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4677,
	call	calloc	#
	movq	%rax, %rdx	# tmp100, D.4678
	movq	-48(%rbp), %rax	# imgBotField, tmp101
	movq	%rdx, (%rax)	# D.4678, *imgBotField_11(D)
	movq	-48(%rbp), %rax	# imgBotField, tmp102
	movq	(%rax), %rax	# *imgBotField_11(D), D.4679
	testq	%rax, %rax	# D.4679
	jne	.L3	#,
	.loc 1 36 0
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L3:
	.loc 1 38 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 40 0 discriminator 2
	movq	-40(%rbp), %rax	# imgTopField, tmp103
	movq	(%rax), %rax	# *imgTopField_6(D), D.4679
	movl	-4(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, D.4677
	salq	$3, %rdx	#, D.4677
	addq	%rax, %rdx	# D.4679, D.4679
	movl	-4(%rbp), %eax	# i, tmp105
	cltq
	salq	$4, %rax	#, D.4677
	movq	%rax, %rcx	# D.4677, D.4677
	movq	-24(%rbp), %rax	# imgFrame, tmp106
	addq	%rcx, %rax	# D.4677, D.4679
	movq	(%rax), %rax	# *_22, D.4680
	movq	%rax, (%rdx)	# D.4680, *_18
	.loc 1 41 0 discriminator 2
	movq	-48(%rbp), %rax	# imgBotField, tmp107
	movq	(%rax), %rax	# *imgBotField_11(D), D.4679
	movl	-4(%rbp), %edx	# i, tmp108
	movslq	%edx, %rdx	# tmp108, D.4677
	salq	$3, %rdx	#, D.4677
	addq	%rax, %rdx	# D.4679, D.4679
	movl	-4(%rbp), %eax	# i, tmp109
	cltq
	salq	$4, %rax	#, D.4681
	leaq	8(%rax), %rcx	#, D.4681
	movq	-24(%rbp), %rax	# imgFrame, tmp110
	addq	%rcx, %rax	# D.4681, D.4679
	movq	(%rax), %rax	# *_31, D.4680
	movq	%rax, (%rdx)	# D.4680, *_27
	.loc 1 38 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 38 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# rows, tmp111
	movl	%eax, %edx	# tmp111, tmp112
	shrl	$31, %edx	#, tmp112
	addl	%edx, %eax	# tmp112, tmp113
	sarl	%eax	# tmp114
	cmpl	-4(%rbp), %eax	# i, D.4676
	jg	.L5	#,
	.loc 1 44 0 is_stmt 1
	movl	-28(%rbp), %eax	# rows, rows.0
	sall	$3, %eax	#, D.4682
	.loc 1 45 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	init_top_bot_planes, .-init_top_bot_planes
	.globl	free_top_bot_planes
	.type	free_top_bot_planes, @function
free_top_bot_planes:
.LFB3:
	.loc 1 56 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# imgTopField, imgTopField
	movq	%rsi, -16(%rbp)	# imgBotField, imgBotField
	.loc 1 57 0
	movq	-8(%rbp), %rax	# imgTopField, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
	.loc 1 58 0
	movq	-16(%rbp), %rax	# imgBotField, tmp60
	movq	%rax, %rdi	# tmp60,
	call	free	#
	.loc 1 59 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	free_top_bot_planes, .-free_top_bot_planes
	.section	.rodata
.LC2:
	.string	"get_mem2Dpel: array2D"
	.text
	.globl	get_mem2Dpel
	.type	get_mem2Dpel, @function
get_mem2Dpel:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# array2D, array2D
	movl	%esi, -44(%rbp)	# rows, rows
	movl	%edx, -48(%rbp)	# columns, columns
	.loc 1 74 0
	movl	-44(%rbp), %eax	# rows, tmp85
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4685,
	call	calloc	#
	movq	%rax, %rdx	# tmp86, D.4686
	movq	-40(%rbp), %rax	# array2D, tmp87
	movq	%rdx, (%rax)	# D.4686, *array2D_5(D)
	movq	-40(%rbp), %rax	# array2D, tmp88
	movq	(%rax), %rax	# *array2D_5(D), D.4687
	testq	%rax, %rax	# D.4687
	jne	.L9	#,
	.loc 1 75 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L9:
	.loc 1 76 0
	movq	-40(%rbp), %rax	# array2D, tmp89
	movq	(%rax), %rbx	# *array2D_5(D), D.4687
	movl	-44(%rbp), %eax	# rows, tmp90
	imull	-48(%rbp), %eax	# columns, D.4688
	cltq
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.4685,
	call	calloc	#
	movq	%rax, (%rbx)	# D.4686, *_7
	movq	(%rbx), %rax	# *_7, D.4689
	testq	%rax, %rax	# D.4689
	jne	.L10	#,
	.loc 1 77 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L10:
	.loc 1 79 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L11	#
.L12:
	.loc 1 80 0 discriminator 2
	movq	-40(%rbp), %rax	# array2D, tmp92
	movq	(%rax), %rax	# *array2D_5(D), D.4687
	movl	-20(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.4685
	salq	$3, %rdx	#, D.4685
	addq	%rax, %rdx	# D.4687, D.4687
	movq	-40(%rbp), %rax	# array2D, tmp94
	movq	(%rax), %rax	# *array2D_5(D), D.4687
	movl	-20(%rbp), %ecx	# i, tmp95
	movslq	%ecx, %rcx	# tmp95, D.4685
	salq	$3, %rcx	#, D.4685
	subq	$8, %rcx	#, D.4690
	addq	%rcx, %rax	# D.4690, D.4687
	movq	(%rax), %rax	# *_22, D.4689
	movl	-48(%rbp), %ecx	# columns, tmp96
	movslq	%ecx, %rcx	# tmp96, D.4685
	addq	%rcx, %rcx	# D.4685
	addq	%rcx, %rax	# D.4685, D.4689
	movq	%rax, (%rdx)	# D.4689, *_17
	.loc 1 79 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L11:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp97
	cmpl	-44(%rbp), %eax	# rows, tmp97
	jl	.L12	#,
	.loc 1 82 0 is_stmt 1
	movl	-44(%rbp), %eax	# rows, tmp98
	imull	-48(%rbp), %eax	# columns, D.4688
	addl	%eax, %eax	# D.4691
	.loc 1 83 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_mem2Dpel, .-get_mem2Dpel
	.section	.rodata
.LC3:
	.string	"get_mem3Dpel: array3D"
	.text
	.globl	get_mem3Dpel
	.type	get_mem3Dpel, @function
get_mem3Dpel:
.LFB5:
	.loc 1 96 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	movl	%edx, -32(%rbp)	# rows, rows
	movl	%ecx, -36(%rbp)	# columns, columns
	.loc 1 99 0
	movl	-28(%rbp), %eax	# frames, tmp72
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4693,
	call	calloc	#
	movq	%rax, %rdx	# tmp73, D.4694
	movq	-24(%rbp), %rax	# array3D, tmp74
	movq	%rdx, (%rax)	# D.4694, *array3D_5(D)
	movq	-24(%rbp), %rax	# array3D, tmp75
	movq	(%rax), %rax	# *array3D_5(D), D.4695
	testq	%rax, %rax	# D.4695
	jne	.L15	#,
	.loc 1 100 0
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L15:
	.loc 1 102 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L16	#
.L17:
	.loc 1 103 0 discriminator 2
	movq	-24(%rbp), %rax	# array3D, tmp76
	movq	(%rax), %rax	# *array3D_5(D), D.4695
	movl	-4(%rbp), %edx	# j, tmp77
	movslq	%edx, %rdx	# tmp77, D.4693
	salq	$3, %rdx	#, D.4693
	leaq	(%rax,%rdx), %rcx	#, D.4695
	movl	-36(%rbp), %edx	# columns, tmp78
	movl	-32(%rbp), %eax	# rows, tmp79
	movl	%eax, %esi	# tmp79,
	movq	%rcx, %rdi	# D.4695,
	call	get_mem2Dpel	#
	.loc 1 102 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L16:
	.loc 1 102 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp80
	cmpl	-28(%rbp), %eax	# frames, tmp80
	jl	.L17	#,
	.loc 1 105 0 is_stmt 1
	movl	-28(%rbp), %eax	# frames, tmp81
	imull	-32(%rbp), %eax	# rows, D.4696
	imull	-36(%rbp), %eax	# columns, D.4696
	addl	%eax, %eax	# D.4697
	.loc 1 106 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_mem3Dpel, .-get_mem3Dpel
	.section	.rodata
	.align 8
.LC4:
	.string	"free_mem2Dpel: trying to free unused memory"
	.text
	.globl	free_mem2Dpel
	.type	free_mem2Dpel, @function
free_mem2Dpel:
.LFB6:
	.loc 1 116 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# array2D, array2D
	.loc 1 117 0
	cmpq	$0, -8(%rbp)	#, array2D
	je	.L20	#,
	.loc 1 119 0
	movq	-8(%rbp), %rax	# array2D, tmp61
	movq	(%rax), %rax	# *array2D_1(D), D.4699
	testq	%rax, %rax	# D.4699
	je	.L21	#,
	.loc 1 120 0
	movq	-8(%rbp), %rax	# array2D, tmp62
	movq	(%rax), %rax	# *array2D_1(D), D.4699
	movq	%rax, %rdi	# D.4699,
	call	free	#
	jmp	.L22	#
.L21:
	.loc 1 121 0
	movl	$100, %esi	#,
	movl	$.LC4, %edi	#,
	call	error	#
.L22:
	.loc 1 123 0 discriminator 1
	movq	-8(%rbp), %rax	# array2D, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	jmp	.L19	#
.L20:
	.loc 1 126 0
	movl	$100, %esi	#,
	movl	$.LC4, %edi	#,
	call	error	#
.L19:
	.loc 1 128 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	free_mem2Dpel, .-free_mem2Dpel
	.section	.rodata
	.align 8
.LC5:
	.string	"free_mem3Dpel: trying to free unused memory"
	.text
	.globl	free_mem3Dpel
	.type	free_mem3Dpel, @function
free_mem3Dpel:
.LFB7:
	.loc 1 138 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	.loc 1 141 0
	cmpq	$0, -24(%rbp)	#, array3D
	je	.L25	#,
	.loc 1 143 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 145 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4701
	movq	-24(%rbp), %rax	# array3D, tmp64
	addq	%rdx, %rax	# D.4701, D.4702
	movq	(%rax), %rax	# *_7, D.4703
	movq	%rax, %rdi	# D.4703,
	call	free_mem2Dpel	#
	.loc 1 143 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L26:
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp65
	cmpl	-28(%rbp), %eax	# frames, tmp65
	jl	.L27	#,
	.loc 1 147 0 is_stmt 1
	movq	-24(%rbp), %rax	# array3D, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	jmp	.L24	#
.L25:
	.loc 1 150 0
	movl	$100, %esi	#,
	movl	$.LC5, %edi	#,
	call	error	#
.L24:
	.loc 1 152 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	free_mem3Dpel, .-free_mem3Dpel
	.section	.rodata
.LC6:
	.string	"get_mem2D: array2D"
	.text
	.globl	get_mem2D
	.type	get_mem2D, @function
get_mem2D:
.LFB8:
	.loc 1 163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# array2D, array2D
	movl	%esi, -44(%rbp)	# rows, rows
	movl	%edx, -48(%rbp)	# columns, columns
	.loc 1 166 0
	movl	-44(%rbp), %eax	# rows, tmp81
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4705,
	call	calloc	#
	movq	%rax, %rdx	# tmp82, D.4706
	movq	-40(%rbp), %rax	# array2D, tmp83
	movq	%rdx, (%rax)	# D.4706, *array2D_5(D)
	movq	-40(%rbp), %rax	# array2D, tmp84
	movq	(%rax), %rax	# *array2D_5(D), D.4707
	testq	%rax, %rax	# D.4707
	jne	.L30	#,
	.loc 1 167 0
	movl	$.LC6, %edi	#,
	call	no_mem_exit	#
.L30:
	.loc 1 168 0
	movq	-40(%rbp), %rax	# array2D, tmp85
	movq	(%rax), %rbx	# *array2D_5(D), D.4707
	movl	-48(%rbp), %eax	# columns, tmp86
	imull	-44(%rbp), %eax	# rows, D.4708
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.4705,
	call	calloc	#
	movq	%rax, (%rbx)	# D.4706, *_7
	movq	(%rbx), %rax	# *_7, D.4709
	testq	%rax, %rax	# D.4709
	jne	.L31	#,
	.loc 1 169 0
	movl	$.LC6, %edi	#,
	call	no_mem_exit	#
.L31:
	.loc 1 171 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L32	#
.L33:
	.loc 1 172 0 discriminator 2
	movq	-40(%rbp), %rax	# array2D, tmp88
	movq	(%rax), %rax	# *array2D_5(D), D.4707
	movl	-20(%rbp), %edx	# i, tmp89
	movslq	%edx, %rdx	# tmp89, D.4705
	salq	$3, %rdx	#, D.4705
	addq	%rax, %rdx	# D.4707, D.4707
	movq	-40(%rbp), %rax	# array2D, tmp90
	movq	(%rax), %rax	# *array2D_5(D), D.4707
	movl	-20(%rbp), %ecx	# i, tmp91
	movslq	%ecx, %rcx	# tmp91, D.4705
	salq	$3, %rcx	#, D.4705
	subq	$8, %rcx	#, D.4710
	addq	%rcx, %rax	# D.4710, D.4707
	movq	(%rax), %rcx	# *_22, D.4709
	movl	-48(%rbp), %eax	# columns, tmp92
	cltq
	addq	%rcx, %rax	# D.4709, D.4709
	movq	%rax, (%rdx)	# D.4709, *_17
	.loc 1 171 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L32:
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp93
	cmpl	-44(%rbp), %eax	# rows, tmp93
	jl	.L33	#,
	.loc 1 174 0 is_stmt 1
	movl	-44(%rbp), %eax	# rows, tmp94
	imull	-48(%rbp), %eax	# columns, D.4708
	.loc 1 175 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_mem2D, .-get_mem2D
	.section	.rodata
.LC7:
	.string	"get_mem2Dint: array2D"
	.text
	.globl	get_mem2Dint
	.type	get_mem2Dint, @function
get_mem2Dint:
.LFB9:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# array2D, array2D
	movl	%esi, -44(%rbp)	# rows, rows
	movl	%edx, -48(%rbp)	# columns, columns
	.loc 1 190 0
	movl	-44(%rbp), %eax	# rows, tmp85
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4712,
	call	calloc	#
	movq	%rax, %rdx	# tmp86, D.4713
	movq	-40(%rbp), %rax	# array2D, tmp87
	movq	%rdx, (%rax)	# D.4713, *array2D_5(D)
	movq	-40(%rbp), %rax	# array2D, tmp88
	movq	(%rax), %rax	# *array2D_5(D), D.4714
	testq	%rax, %rax	# D.4714
	jne	.L36	#,
	.loc 1 191 0
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L36:
	.loc 1 192 0
	movq	-40(%rbp), %rax	# array2D, tmp89
	movq	(%rax), %rbx	# *array2D_5(D), D.4714
	movl	-44(%rbp), %eax	# rows, tmp90
	imull	-48(%rbp), %eax	# columns, D.4715
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.4712,
	call	calloc	#
	movq	%rax, (%rbx)	# D.4713, *_7
	movq	(%rbx), %rax	# *_7, D.4716
	testq	%rax, %rax	# D.4716
	jne	.L37	#,
	.loc 1 193 0
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L37:
	.loc 1 195 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L38	#
.L39:
	.loc 1 196 0 discriminator 2
	movq	-40(%rbp), %rax	# array2D, tmp92
	movq	(%rax), %rax	# *array2D_5(D), D.4714
	movl	-20(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.4712
	salq	$3, %rdx	#, D.4712
	addq	%rax, %rdx	# D.4714, D.4714
	movq	-40(%rbp), %rax	# array2D, tmp94
	movq	(%rax), %rax	# *array2D_5(D), D.4714
	movl	-20(%rbp), %ecx	# i, tmp95
	movslq	%ecx, %rcx	# tmp95, D.4712
	salq	$3, %rcx	#, D.4712
	subq	$8, %rcx	#, D.4717
	addq	%rcx, %rax	# D.4717, D.4714
	movq	(%rax), %rax	# *_22, D.4716
	movl	-48(%rbp), %ecx	# columns, tmp96
	movslq	%ecx, %rcx	# tmp96, D.4712
	salq	$2, %rcx	#, D.4712
	addq	%rcx, %rax	# D.4712, D.4716
	movq	%rax, (%rdx)	# D.4716, *_17
	.loc 1 195 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L38:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp97
	cmpl	-44(%rbp), %eax	# rows, tmp97
	jl	.L39	#,
	.loc 1 198 0 is_stmt 1
	movl	-44(%rbp), %eax	# rows, tmp98
	imull	-48(%rbp), %eax	# columns, D.4715
	sall	$2, %eax	#, D.4718
	.loc 1 199 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	get_mem2Dint, .-get_mem2Dint
	.section	.rodata
.LC8:
	.string	"get_mem2Dint64: array2D"
	.text
	.globl	get_mem2Dint64
	.type	get_mem2Dint64, @function
get_mem2Dint64:
.LFB10:
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# array2D, array2D
	movl	%esi, -44(%rbp)	# rows, rows
	movl	%edx, -48(%rbp)	# columns, columns
	.loc 1 214 0
	movl	-44(%rbp), %eax	# rows, tmp85
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4720,
	call	calloc	#
	movq	%rax, %rdx	# tmp86, D.4721
	movq	-40(%rbp), %rax	# array2D, tmp87
	movq	%rdx, (%rax)	# D.4721, *array2D_5(D)
	movq	-40(%rbp), %rax	# array2D, tmp88
	movq	(%rax), %rax	# *array2D_5(D), D.4722
	testq	%rax, %rax	# D.4722
	jne	.L42	#,
	.loc 1 215 0
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L42:
	.loc 1 216 0
	movq	-40(%rbp), %rax	# array2D, tmp89
	movq	(%rax), %rbx	# *array2D_5(D), D.4722
	movl	-44(%rbp), %eax	# rows, tmp90
	imull	-48(%rbp), %eax	# columns, D.4723
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4720,
	call	calloc	#
	movq	%rax, (%rbx)	# D.4721, *_7
	movq	(%rbx), %rax	# *_7, D.4724
	testq	%rax, %rax	# D.4724
	jne	.L43	#,
	.loc 1 217 0
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L43:
	.loc 1 219 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L44	#
.L45:
	.loc 1 220 0 discriminator 2
	movq	-40(%rbp), %rax	# array2D, tmp92
	movq	(%rax), %rax	# *array2D_5(D), D.4722
	movl	-20(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.4720
	salq	$3, %rdx	#, D.4720
	addq	%rax, %rdx	# D.4722, D.4722
	movq	-40(%rbp), %rax	# array2D, tmp94
	movq	(%rax), %rax	# *array2D_5(D), D.4722
	movl	-20(%rbp), %ecx	# i, tmp95
	movslq	%ecx, %rcx	# tmp95, D.4720
	salq	$3, %rcx	#, D.4720
	subq	$8, %rcx	#, D.4725
	addq	%rcx, %rax	# D.4725, D.4722
	movq	(%rax), %rax	# *_22, D.4724
	movl	-48(%rbp), %ecx	# columns, tmp96
	movslq	%ecx, %rcx	# tmp96, D.4720
	salq	$3, %rcx	#, D.4720
	addq	%rcx, %rax	# D.4720, D.4724
	movq	%rax, (%rdx)	# D.4724, *_17
	.loc 1 219 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L44:
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp97
	cmpl	-44(%rbp), %eax	# rows, tmp97
	jl	.L45	#,
	.loc 1 222 0 is_stmt 1
	movl	-44(%rbp), %eax	# rows, tmp98
	imull	-48(%rbp), %eax	# columns, D.4723
	sall	$3, %eax	#, D.4726
	.loc 1 223 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_mem2Dint64, .-get_mem2Dint64
	.section	.rodata
.LC9:
	.string	"get_mem3D: array3D"
	.text
	.globl	get_mem3D
	.type	get_mem3D, @function
get_mem3D:
.LFB11:
	.loc 1 235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	movl	%edx, -32(%rbp)	# rows, rows
	movl	%ecx, -36(%rbp)	# columns, columns
	.loc 1 238 0
	movl	-28(%rbp), %eax	# frames, tmp69
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4728,
	call	calloc	#
	movq	%rax, %rdx	# tmp70, D.4729
	movq	-24(%rbp), %rax	# array3D, tmp71
	movq	%rdx, (%rax)	# D.4729, *array3D_5(D)
	movq	-24(%rbp), %rax	# array3D, tmp72
	movq	(%rax), %rax	# *array3D_5(D), D.4730
	testq	%rax, %rax	# D.4730
	jne	.L48	#,
	.loc 1 239 0
	movl	$.LC9, %edi	#,
	call	no_mem_exit	#
.L48:
	.loc 1 241 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L49	#
.L50:
	.loc 1 242 0 discriminator 2
	movq	-24(%rbp), %rax	# array3D, tmp73
	movq	(%rax), %rax	# *array3D_5(D), D.4730
	movl	-4(%rbp), %edx	# j, tmp74
	movslq	%edx, %rdx	# tmp74, D.4728
	salq	$3, %rdx	#, D.4728
	leaq	(%rax,%rdx), %rcx	#, D.4730
	movl	-36(%rbp), %edx	# columns, tmp75
	movl	-32(%rbp), %eax	# rows, tmp76
	movl	%eax, %esi	# tmp76,
	movq	%rcx, %rdi	# D.4730,
	call	get_mem2D	#
	.loc 1 241 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L49:
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp77
	cmpl	-28(%rbp), %eax	# frames, tmp77
	jl	.L50	#,
	.loc 1 244 0 is_stmt 1
	movl	-28(%rbp), %eax	# frames, tmp78
	imull	-32(%rbp), %eax	# rows, D.4731
	imull	-36(%rbp), %eax	# columns, D.4731
	.loc 1 245 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_mem3D, .-get_mem3D
	.section	.rodata
.LC10:
	.string	"get_mem3Dint: array3D"
	.text
	.globl	get_mem3Dint
	.type	get_mem3Dint, @function
get_mem3Dint:
.LFB12:
	.loc 1 257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	movl	%edx, -32(%rbp)	# rows, rows
	movl	%ecx, -36(%rbp)	# columns, columns
	.loc 1 260 0
	movl	-28(%rbp), %eax	# frames, tmp72
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4733,
	call	calloc	#
	movq	%rax, %rdx	# tmp73, D.4734
	movq	-24(%rbp), %rax	# array3D, tmp74
	movq	%rdx, (%rax)	# D.4734, *array3D_5(D)
	movq	-24(%rbp), %rax	# array3D, tmp75
	movq	(%rax), %rax	# *array3D_5(D), D.4735
	testq	%rax, %rax	# D.4735
	jne	.L53	#,
	.loc 1 261 0
	movl	$.LC10, %edi	#,
	call	no_mem_exit	#
.L53:
	.loc 1 263 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L54	#
.L55:
	.loc 1 264 0 discriminator 2
	movq	-24(%rbp), %rax	# array3D, tmp76
	movq	(%rax), %rax	# *array3D_5(D), D.4735
	movl	-4(%rbp), %edx	# j, tmp77
	movslq	%edx, %rdx	# tmp77, D.4733
	salq	$3, %rdx	#, D.4733
	leaq	(%rax,%rdx), %rcx	#, D.4735
	movl	-36(%rbp), %edx	# columns, tmp78
	movl	-32(%rbp), %eax	# rows, tmp79
	movl	%eax, %esi	# tmp79,
	movq	%rcx, %rdi	# D.4735,
	call	get_mem2Dint	#
	.loc 1 263 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L54:
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp80
	cmpl	-28(%rbp), %eax	# frames, tmp80
	jl	.L55	#,
	.loc 1 266 0 is_stmt 1
	movl	-28(%rbp), %eax	# frames, tmp81
	imull	-32(%rbp), %eax	# rows, D.4736
	imull	-36(%rbp), %eax	# columns, D.4736
	sall	$2, %eax	#, D.4737
	.loc 1 267 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	get_mem3Dint, .-get_mem3Dint
	.section	.rodata
.LC11:
	.string	"get_mem3Dint64: array3D"
	.text
	.globl	get_mem3Dint64
	.type	get_mem3Dint64, @function
get_mem3Dint64:
.LFB13:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	movl	%edx, -32(%rbp)	# rows, rows
	movl	%ecx, -36(%rbp)	# columns, columns
	.loc 1 282 0
	movl	-28(%rbp), %eax	# frames, tmp72
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4739,
	call	calloc	#
	movq	%rax, %rdx	# tmp73, D.4740
	movq	-24(%rbp), %rax	# array3D, tmp74
	movq	%rdx, (%rax)	# D.4740, *array3D_5(D)
	movq	-24(%rbp), %rax	# array3D, tmp75
	movq	(%rax), %rax	# *array3D_5(D), D.4741
	testq	%rax, %rax	# D.4741
	jne	.L58	#,
	.loc 1 283 0
	movl	$.LC11, %edi	#,
	call	no_mem_exit	#
.L58:
	.loc 1 285 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L59	#
.L60:
	.loc 1 286 0 discriminator 2
	movq	-24(%rbp), %rax	# array3D, tmp76
	movq	(%rax), %rax	# *array3D_5(D), D.4741
	movl	-4(%rbp), %edx	# j, tmp77
	movslq	%edx, %rdx	# tmp77, D.4739
	salq	$3, %rdx	#, D.4739
	leaq	(%rax,%rdx), %rcx	#, D.4741
	movl	-36(%rbp), %edx	# columns, tmp78
	movl	-32(%rbp), %eax	# rows, tmp79
	movl	%eax, %esi	# tmp79,
	movq	%rcx, %rdi	# D.4741,
	call	get_mem2Dint64	#
	.loc 1 285 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L59:
	.loc 1 285 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp80
	cmpl	-28(%rbp), %eax	# frames, tmp80
	jl	.L60	#,
	.loc 1 288 0 is_stmt 1
	movl	-28(%rbp), %eax	# frames, tmp81
	imull	-32(%rbp), %eax	# rows, D.4742
	imull	-36(%rbp), %eax	# columns, D.4742
	sall	$3, %eax	#, D.4743
	.loc 1 289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	get_mem3Dint64, .-get_mem3Dint64
	.section	.rodata
.LC12:
	.string	"get_mem4Dint: array4D"
	.text
	.globl	get_mem4Dint
	.type	get_mem4Dint, @function
get_mem4Dint:
.LFB14:
	.loc 1 301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array4D, array4D
	movl	%esi, -28(%rbp)	# idx, idx
	movl	%edx, -32(%rbp)	# frames, frames
	movl	%ecx, -36(%rbp)	# rows, rows
	movl	%r8d, -40(%rbp)	# columns, columns
	.loc 1 304 0
	movl	-28(%rbp), %eax	# idx, tmp73
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4745,
	call	calloc	#
	movq	%rax, %rdx	# tmp74, D.4746
	movq	-24(%rbp), %rax	# array4D, tmp75
	movq	%rdx, (%rax)	# D.4746, *array4D_5(D)
	movq	-24(%rbp), %rax	# array4D, tmp76
	movq	(%rax), %rax	# *array4D_5(D), D.4747
	testq	%rax, %rax	# D.4747
	jne	.L63	#,
	.loc 1 305 0
	movl	$.LC12, %edi	#,
	call	no_mem_exit	#
.L63:
	.loc 1 307 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L64	#
.L65:
	.loc 1 308 0 discriminator 2
	movq	-24(%rbp), %rax	# array4D, tmp77
	movq	(%rax), %rax	# *array4D_5(D), D.4747
	movl	-4(%rbp), %edx	# j, tmp78
	movslq	%edx, %rdx	# tmp78, D.4745
	salq	$3, %rdx	#, D.4745
	leaq	(%rax,%rdx), %rdi	#, D.4747
	movl	-40(%rbp), %ecx	# columns, tmp79
	movl	-36(%rbp), %edx	# rows, tmp80
	movl	-32(%rbp), %eax	# frames, tmp81
	movl	%eax, %esi	# tmp81,
	call	get_mem3Dint	#
	.loc 1 307 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L64:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp82
	cmpl	-28(%rbp), %eax	# idx, tmp82
	jl	.L65	#,
	.loc 1 310 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp83
	imull	-32(%rbp), %eax	# frames, D.4748
	imull	-36(%rbp), %eax	# rows, D.4748
	imull	-40(%rbp), %eax	# columns, D.4748
	sall	$2, %eax	#, D.4749
	.loc 1 311 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	get_mem4Dint, .-get_mem4Dint
	.section	.rodata
	.align 8
.LC13:
	.string	"free_mem2D: trying to free unused memory"
	.text
	.globl	free_mem2D
	.type	free_mem2D, @function
free_mem2D:
.LFB15:
	.loc 1 321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# array2D, array2D
	.loc 1 322 0
	cmpq	$0, -8(%rbp)	#, array2D
	je	.L68	#,
	.loc 1 324 0
	movq	-8(%rbp), %rax	# array2D, tmp61
	movq	(%rax), %rax	# *array2D_1(D), D.4751
	testq	%rax, %rax	# D.4751
	je	.L69	#,
	.loc 1 325 0
	movq	-8(%rbp), %rax	# array2D, tmp62
	movq	(%rax), %rax	# *array2D_1(D), D.4751
	movq	%rax, %rdi	# D.4751,
	call	free	#
	jmp	.L70	#
.L69:
	.loc 1 326 0
	movl	$100, %esi	#,
	movl	$.LC13, %edi	#,
	call	error	#
.L70:
	.loc 1 328 0 discriminator 1
	movq	-8(%rbp), %rax	# array2D, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	jmp	.L67	#
.L68:
	.loc 1 331 0
	movl	$100, %esi	#,
	movl	$.LC13, %edi	#,
	call	error	#
.L67:
	.loc 1 333 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	free_mem2D, .-free_mem2D
	.section	.rodata
	.align 8
.LC14:
	.string	"free_mem2Dint: trying to free unused memory"
	.text
	.globl	free_mem2Dint
	.type	free_mem2Dint, @function
free_mem2Dint:
.LFB16:
	.loc 1 343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# array2D, array2D
	.loc 1 344 0
	cmpq	$0, -8(%rbp)	#, array2D
	je	.L73	#,
	.loc 1 346 0
	movq	-8(%rbp), %rax	# array2D, tmp61
	movq	(%rax), %rax	# *array2D_1(D), D.4753
	testq	%rax, %rax	# D.4753
	je	.L74	#,
	.loc 1 347 0
	movq	-8(%rbp), %rax	# array2D, tmp62
	movq	(%rax), %rax	# *array2D_1(D), D.4753
	movq	%rax, %rdi	# D.4753,
	call	free	#
	jmp	.L75	#
.L74:
	.loc 1 348 0
	movl	$100, %esi	#,
	movl	$.LC14, %edi	#,
	call	error	#
.L75:
	.loc 1 350 0 discriminator 1
	movq	-8(%rbp), %rax	# array2D, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	jmp	.L72	#
.L73:
	.loc 1 354 0
	movl	$100, %esi	#,
	movl	$.LC14, %edi	#,
	call	error	#
.L72:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	free_mem2Dint, .-free_mem2Dint
	.section	.rodata
	.align 8
.LC15:
	.string	"free_mem2Dint64: trying to free unused memory"
	.text
	.globl	free_mem2Dint64
	.type	free_mem2Dint64, @function
free_mem2Dint64:
.LFB17:
	.loc 1 366 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# array2D, array2D
	.loc 1 367 0
	cmpq	$0, -8(%rbp)	#, array2D
	je	.L78	#,
	.loc 1 369 0
	movq	-8(%rbp), %rax	# array2D, tmp61
	movq	(%rax), %rax	# *array2D_1(D), D.4755
	testq	%rax, %rax	# D.4755
	je	.L79	#,
	.loc 1 370 0
	movq	-8(%rbp), %rax	# array2D, tmp62
	movq	(%rax), %rax	# *array2D_1(D), D.4755
	movq	%rax, %rdi	# D.4755,
	call	free	#
	jmp	.L80	#
.L79:
	.loc 1 371 0
	movl	$100, %esi	#,
	movl	$.LC15, %edi	#,
	call	error	#
.L80:
	.loc 1 373 0 discriminator 1
	movq	-8(%rbp), %rax	# array2D, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	jmp	.L77	#
.L78:
	.loc 1 377 0
	movl	$100, %esi	#,
	movl	$.LC15, %edi	#,
	call	error	#
.L77:
	.loc 1 379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	free_mem2Dint64, .-free_mem2Dint64
	.section	.rodata
	.align 8
.LC16:
	.string	"free_mem3D: trying to free unused memory"
	.text
	.globl	free_mem3D
	.type	free_mem3D, @function
free_mem3D:
.LFB18:
	.loc 1 390 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	.loc 1 393 0
	cmpq	$0, -24(%rbp)	#, array3D
	je	.L83	#,
	.loc 1 395 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L84	#
.L85:
	.loc 1 397 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4757
	movq	-24(%rbp), %rax	# array3D, tmp64
	addq	%rdx, %rax	# D.4757, D.4758
	movq	(%rax), %rax	# *_7, D.4759
	movq	%rax, %rdi	# D.4759,
	call	free_mem2D	#
	.loc 1 395 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L84:
	.loc 1 395 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp65
	cmpl	-28(%rbp), %eax	# frames, tmp65
	jl	.L85	#,
	.loc 1 399 0 is_stmt 1
	movq	-24(%rbp), %rax	# array3D, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	jmp	.L82	#
.L83:
	.loc 1 402 0
	movl	$100, %esi	#,
	movl	$.LC16, %edi	#,
	call	error	#
.L82:
	.loc 1 404 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	free_mem3D, .-free_mem3D
	.section	.rodata
	.align 8
.LC17:
	.string	"free_mem3Dint: trying to free unused memory"
	.text
	.globl	free_mem3Dint
	.type	free_mem3Dint, @function
free_mem3Dint:
.LFB19:
	.loc 1 414 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	.loc 1 417 0
	cmpq	$0, -24(%rbp)	#, array3D
	je	.L88	#,
	.loc 1 419 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L89	#
.L90:
	.loc 1 421 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4761
	movq	-24(%rbp), %rax	# array3D, tmp64
	addq	%rdx, %rax	# D.4761, D.4762
	movq	(%rax), %rax	# *_7, D.4763
	movq	%rax, %rdi	# D.4763,
	call	free_mem2Dint	#
	.loc 1 419 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L89:
	.loc 1 419 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp65
	cmpl	-28(%rbp), %eax	# frames, tmp65
	jl	.L90	#,
	.loc 1 423 0 is_stmt 1
	movq	-24(%rbp), %rax	# array3D, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	jmp	.L87	#
.L88:
	.loc 1 426 0
	movl	$100, %esi	#,
	movl	$.LC17, %edi	#,
	call	error	#
.L87:
	.loc 1 428 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	free_mem3Dint, .-free_mem3Dint
	.section	.rodata
	.align 8
.LC18:
	.string	"free_mem3Dint64: trying to free unused memory"
	.text
	.globl	free_mem3Dint64
	.type	free_mem3Dint64, @function
free_mem3Dint64:
.LFB20:
	.loc 1 439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	.loc 1 442 0
	cmpq	$0, -24(%rbp)	#, array3D
	je	.L93	#,
	.loc 1 444 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L94	#
.L95:
	.loc 1 446 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4765
	movq	-24(%rbp), %rax	# array3D, tmp64
	addq	%rdx, %rax	# D.4765, D.4766
	movq	(%rax), %rax	# *_7, D.4767
	movq	%rax, %rdi	# D.4767,
	call	free_mem2Dint64	#
	.loc 1 444 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L94:
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp65
	cmpl	-28(%rbp), %eax	# frames, tmp65
	jl	.L95	#,
	.loc 1 448 0 is_stmt 1
	movq	-24(%rbp), %rax	# array3D, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	jmp	.L92	#
.L93:
	.loc 1 451 0
	movl	$100, %esi	#,
	movl	$.LC18, %edi	#,
	call	error	#
.L92:
	.loc 1 453 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	free_mem3Dint64, .-free_mem3Dint64
	.section	.rodata
	.align 8
.LC19:
	.string	"free_mem4Dint: trying to free unused memory"
	.text
	.globl	free_mem4Dint
	.type	free_mem4Dint, @function
free_mem4Dint:
.LFB21:
	.loc 1 463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array4D, array4D
	movl	%esi, -28(%rbp)	# idx, idx
	movl	%edx, -32(%rbp)	# frames, frames
	.loc 1 466 0
	cmpq	$0, -24(%rbp)	#, array4D
	je	.L98	#,
	.loc 1 468 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L99	#
.L100:
	.loc 1 469 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4769
	movq	-24(%rbp), %rax	# array4D, tmp64
	addq	%rdx, %rax	# D.4769, D.4770
	movq	(%rax), %rax	# *_7, D.4771
	movl	-32(%rbp), %edx	# frames, tmp65
	movl	%edx, %esi	# tmp65,
	movq	%rax, %rdi	# D.4771,
	call	free_mem3Dint	#
	.loc 1 468 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L99:
	.loc 1 468 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp66
	cmpl	-28(%rbp), %eax	# idx, tmp66
	jl	.L100	#,
	.loc 1 470 0 is_stmt 1
	movq	-24(%rbp), %rax	# array4D, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
	jmp	.L97	#
.L98:
	.loc 1 473 0
	movl	$100, %esi	#,
	movl	$.LC19, %edi	#,
	call	error	#
.L97:
	.loc 1 475 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	free_mem4Dint, .-free_mem4Dint
	.section	.rodata
.LC20:
	.string	"Could not allocate memory: %s"
	.text
	.globl	no_mem_exit
	.type	no_mem_exit, @function
no_mem_exit:
.LFB22:
	.loc 1 487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# where, where
	.loc 1 488 0
	movq	-8(%rbp), %rax	# where, tmp59
	movq	%rax, %rcx	# tmp59,
	movl	$.LC20, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 489 0
	movl	$100, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 490 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	no_mem_exit, .-no_mem_exit
	.section	.rodata
.LC21:
	.string	"get_mem2Dshort: array2D"
	.text
	.globl	get_mem2Dshort
	.type	get_mem2Dshort, @function
get_mem2Dshort:
.LFB23:
	.loc 1 503 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# array2D, array2D
	movl	%esi, -44(%rbp)	# rows, rows
	movl	%edx, -48(%rbp)	# columns, columns
	.loc 1 506 0
	movl	-44(%rbp), %eax	# rows, tmp85
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4774,
	call	calloc	#
	movq	%rax, %rdx	# tmp86, D.4775
	movq	-40(%rbp), %rax	# array2D, tmp87
	movq	%rdx, (%rax)	# D.4775, *array2D_5(D)
	movq	-40(%rbp), %rax	# array2D, tmp88
	movq	(%rax), %rax	# *array2D_5(D), D.4776
	testq	%rax, %rax	# D.4776
	jne	.L104	#,
	.loc 1 507 0
	movl	$.LC21, %edi	#,
	call	no_mem_exit	#
.L104:
	.loc 1 508 0
	movq	-40(%rbp), %rax	# array2D, tmp89
	movq	(%rax), %rbx	# *array2D_5(D), D.4776
	movl	-44(%rbp), %eax	# rows, tmp90
	imull	-48(%rbp), %eax	# columns, D.4777
	cltq
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.4774,
	call	calloc	#
	movq	%rax, (%rbx)	# D.4775, *_7
	movq	(%rbx), %rax	# *_7, D.4778
	testq	%rax, %rax	# D.4778
	jne	.L105	#,
	.loc 1 509 0
	movl	$.LC21, %edi	#,
	call	no_mem_exit	#
.L105:
	.loc 1 511 0
	movl	$1, -20(%rbp)	#, i
	jmp	.L106	#
.L107:
	.loc 1 512 0 discriminator 2
	movq	-40(%rbp), %rax	# array2D, tmp92
	movq	(%rax), %rax	# *array2D_5(D), D.4776
	movl	-20(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.4774
	salq	$3, %rdx	#, D.4774
	addq	%rax, %rdx	# D.4776, D.4776
	movq	-40(%rbp), %rax	# array2D, tmp94
	movq	(%rax), %rax	# *array2D_5(D), D.4776
	movl	-20(%rbp), %ecx	# i, tmp95
	movslq	%ecx, %rcx	# tmp95, D.4774
	salq	$3, %rcx	#, D.4774
	subq	$8, %rcx	#, D.4779
	addq	%rcx, %rax	# D.4779, D.4776
	movq	(%rax), %rax	# *_22, D.4778
	movl	-48(%rbp), %ecx	# columns, tmp96
	movslq	%ecx, %rcx	# tmp96, D.4774
	addq	%rcx, %rcx	# D.4774
	addq	%rcx, %rax	# D.4774, D.4778
	movq	%rax, (%rdx)	# D.4778, *_17
	.loc 1 511 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L106:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp97
	cmpl	-44(%rbp), %eax	# rows, tmp97
	jl	.L107	#,
	.loc 1 514 0 is_stmt 1
	movl	-44(%rbp), %eax	# rows, tmp98
	imull	-48(%rbp), %eax	# columns, D.4777
	addl	%eax, %eax	# D.4780
	.loc 1 515 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	get_mem2Dshort, .-get_mem2Dshort
	.section	.rodata
.LC22:
	.string	"get_mem3Dshort: array3D"
	.text
	.globl	get_mem3Dshort
	.type	get_mem3Dshort, @function
get_mem3Dshort:
.LFB24:
	.loc 1 527 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	movl	%edx, -32(%rbp)	# rows, rows
	movl	%ecx, -36(%rbp)	# columns, columns
	.loc 1 530 0
	movl	-28(%rbp), %eax	# frames, tmp72
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4782,
	call	calloc	#
	movq	%rax, %rdx	# tmp73, D.4783
	movq	-24(%rbp), %rax	# array3D, tmp74
	movq	%rdx, (%rax)	# D.4783, *array3D_5(D)
	movq	-24(%rbp), %rax	# array3D, tmp75
	movq	(%rax), %rax	# *array3D_5(D), D.4784
	testq	%rax, %rax	# D.4784
	jne	.L110	#,
	.loc 1 531 0
	movl	$.LC22, %edi	#,
	call	no_mem_exit	#
.L110:
	.loc 1 533 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L111	#
.L112:
	.loc 1 534 0 discriminator 2
	movq	-24(%rbp), %rax	# array3D, tmp76
	movq	(%rax), %rax	# *array3D_5(D), D.4784
	movl	-4(%rbp), %edx	# j, tmp77
	movslq	%edx, %rdx	# tmp77, D.4782
	salq	$3, %rdx	#, D.4782
	leaq	(%rax,%rdx), %rcx	#, D.4784
	movl	-36(%rbp), %edx	# columns, tmp78
	movl	-32(%rbp), %eax	# rows, tmp79
	movl	%eax, %esi	# tmp79,
	movq	%rcx, %rdi	# D.4784,
	call	get_mem2Dshort	#
	.loc 1 533 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L111:
	.loc 1 533 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp80
	cmpl	-28(%rbp), %eax	# frames, tmp80
	jl	.L112	#,
	.loc 1 536 0 is_stmt 1
	movl	-28(%rbp), %eax	# frames, tmp81
	imull	-32(%rbp), %eax	# rows, D.4785
	imull	-36(%rbp), %eax	# columns, D.4785
	addl	%eax, %eax	# D.4786
	.loc 1 537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	get_mem3Dshort, .-get_mem3Dshort
	.section	.rodata
.LC23:
	.string	"get_mem4Dshort: array4D"
	.text
	.globl	get_mem4Dshort
	.type	get_mem4Dshort, @function
get_mem4Dshort:
.LFB25:
	.loc 1 549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# array4D, array4D
	movl	%esi, -28(%rbp)	# idx, idx
	movl	%edx, -32(%rbp)	# frames, frames
	movl	%ecx, -36(%rbp)	# rows, rows
	movl	%r8d, -40(%rbp)	# columns, columns
	.loc 1 552 0
	movl	-28(%rbp), %eax	# idx, tmp73
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4788,
	call	calloc	#
	movq	%rax, %rdx	# tmp74, D.4789
	movq	-24(%rbp), %rax	# array4D, tmp75
	movq	%rdx, (%rax)	# D.4789, *array4D_5(D)
	movq	-24(%rbp), %rax	# array4D, tmp76
	movq	(%rax), %rax	# *array4D_5(D), D.4790
	testq	%rax, %rax	# D.4790
	jne	.L115	#,
	.loc 1 553 0
	movl	$.LC23, %edi	#,
	call	no_mem_exit	#
.L115:
	.loc 1 555 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L116	#
.L117:
	.loc 1 556 0 discriminator 2
	movq	-24(%rbp), %rax	# array4D, tmp77
	movq	(%rax), %rax	# *array4D_5(D), D.4790
	movl	-4(%rbp), %edx	# j, tmp78
	movslq	%edx, %rdx	# tmp78, D.4788
	salq	$3, %rdx	#, D.4788
	leaq	(%rax,%rdx), %rdi	#, D.4790
	movl	-40(%rbp), %ecx	# columns, tmp79
	movl	-36(%rbp), %edx	# rows, tmp80
	movl	-32(%rbp), %eax	# frames, tmp81
	movl	%eax, %esi	# tmp81,
	call	get_mem3Dshort	#
	.loc 1 555 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L116:
	.loc 1 555 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp82
	cmpl	-28(%rbp), %eax	# idx, tmp82
	jl	.L117	#,
	.loc 1 558 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp83
	imull	-32(%rbp), %eax	# frames, D.4791
	imull	-36(%rbp), %eax	# rows, D.4791
	imull	-40(%rbp), %eax	# columns, D.4791
	addl	%eax, %eax	# D.4792
	.loc 1 559 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	get_mem4Dshort, .-get_mem4Dshort
	.section	.rodata
	.align 8
.LC24:
	.string	"free_mem2Dshort: trying to free unused memory"
	.text
	.globl	free_mem2Dshort
	.type	free_mem2Dshort, @function
free_mem2Dshort:
.LFB26:
	.loc 1 569 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# array2D, array2D
	.loc 1 570 0
	cmpq	$0, -8(%rbp)	#, array2D
	je	.L120	#,
	.loc 1 572 0
	movq	-8(%rbp), %rax	# array2D, tmp61
	movq	(%rax), %rax	# *array2D_1(D), D.4794
	testq	%rax, %rax	# D.4794
	je	.L121	#,
	.loc 1 573 0
	movq	-8(%rbp), %rax	# array2D, tmp62
	movq	(%rax), %rax	# *array2D_1(D), D.4794
	movq	%rax, %rdi	# D.4794,
	call	free	#
	jmp	.L122	#
.L121:
	.loc 1 574 0
	movl	$100, %esi	#,
	movl	$.LC24, %edi	#,
	call	error	#
.L122:
	.loc 1 576 0 discriminator 1
	movq	-8(%rbp), %rax	# array2D, tmp63
	movq	%rax, %rdi	# tmp63,
	call	free	#
	jmp	.L119	#
.L120:
	.loc 1 580 0
	movl	$100, %esi	#,
	movl	$.LC24, %edi	#,
	call	error	#
.L119:
	.loc 1 582 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	free_mem2Dshort, .-free_mem2Dshort
	.section	.rodata
	.align 8
.LC25:
	.string	"free_mem3Dshort: trying to free unused memory"
	.text
	.globl	free_mem3Dshort
	.type	free_mem3Dshort, @function
free_mem3Dshort:
.LFB27:
	.loc 1 592 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array3D, array3D
	movl	%esi, -28(%rbp)	# frames, frames
	.loc 1 595 0
	cmpq	$0, -24(%rbp)	#, array3D
	je	.L125	#,
	.loc 1 597 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L126	#
.L127:
	.loc 1 599 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4796
	movq	-24(%rbp), %rax	# array3D, tmp64
	addq	%rdx, %rax	# D.4796, D.4797
	movq	(%rax), %rax	# *_7, D.4798
	movq	%rax, %rdi	# D.4798,
	call	free_mem2Dshort	#
	.loc 1 597 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L126:
	.loc 1 597 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp65
	cmpl	-28(%rbp), %eax	# frames, tmp65
	jl	.L127	#,
	.loc 1 601 0 is_stmt 1
	movq	-24(%rbp), %rax	# array3D, tmp66
	movq	%rax, %rdi	# tmp66,
	call	free	#
	jmp	.L124	#
.L125:
	.loc 1 604 0
	movl	$100, %esi	#,
	movl	$.LC25, %edi	#,
	call	error	#
.L124:
	.loc 1 606 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	free_mem3Dshort, .-free_mem3Dshort
	.section	.rodata
	.align 8
.LC26:
	.string	"free_mem4Dshort: trying to free unused memory"
	.text
	.globl	free_mem4Dshort
	.type	free_mem4Dshort, @function
free_mem4Dshort:
.LFB28:
	.loc 1 616 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# array4D, array4D
	movl	%esi, -28(%rbp)	# idx, idx
	movl	%edx, -32(%rbp)	# frames, frames
	.loc 1 619 0
	cmpq	$0, -24(%rbp)	#, array4D
	je	.L130	#,
	.loc 1 621 0
	movl	$0, -4(%rbp)	#, j
	jmp	.L131	#
.L132:
	.loc 1 622 0 discriminator 2
	movl	-4(%rbp), %eax	# j, tmp63
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4800
	movq	-24(%rbp), %rax	# array4D, tmp64
	addq	%rdx, %rax	# D.4800, D.4801
	movq	(%rax), %rax	# *_7, D.4802
	movl	-32(%rbp), %edx	# frames, tmp65
	movl	%edx, %esi	# tmp65,
	movq	%rax, %rdi	# D.4802,
	call	free_mem3Dshort	#
	.loc 1 621 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L131:
	.loc 1 621 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp66
	cmpl	-28(%rbp), %eax	# idx, tmp66
	jl	.L132	#,
	.loc 1 623 0 is_stmt 1
	movq	-24(%rbp), %rax	# array4D, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
	jmp	.L129	#
.L130:
	.loc 1 626 0
	movl	$100, %esi	#,
	movl	$.LC26, %edi	#,
	call	error	#
.L129:
	.loc 1 628 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	free_mem4Dshort, .-free_mem4Dshort
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9f7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF53
	.byte	0x1
	.long	.LASF54
	.long	.LASF55
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x4
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x4
	.byte	0x8
	.long	0x98
	.uleb128 0x5
	.long	.LASF13
	.byte	0x4
	.byte	0x3e
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0x4
	.byte	0x8
	.long	0xce
	.uleb128 0x4
	.byte	0x8
	.long	0xd4
	.uleb128 0x4
	.byte	0x8
	.long	0x42
	.uleb128 0x4
	.byte	0x8
	.long	0xc8
	.uleb128 0x4
	.byte	0x8
	.long	0xa3
	.uleb128 0x4
	.byte	0x8
	.long	0xc2
	.uleb128 0x4
	.byte	0x8
	.long	0xe6
	.uleb128 0x4
	.byte	0x8
	.long	0xf8
	.uleb128 0x4
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.byte	0x8
	.long	0x104
	.uleb128 0x4
	.byte	0x8
	.long	0x10a
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x184
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x1c
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x1c
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x1c
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x37
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x37
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x37
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x46
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x216
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x46
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x46
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x46
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x48
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x5f
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x5f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x61
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x73
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a8
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x73
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x89
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x89
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x89
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x8b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF30
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x346
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0xa2
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0xa4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xe0
	.uleb128 0x6
	.long	.LASF31
	.byte	0x1
	.byte	0xba
	.long	0x34
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a4
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0xba
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fc
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0xd2
	.long	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x402
	.uleb128 0x4
	.byte	0x8
	.long	0x408
	.uleb128 0x4
	.byte	0x8
	.long	0xa9
	.uleb128 0x6
	.long	.LASF33
	.byte	0x1
	.byte	0xea
	.long	0x34
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x474
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0xea
	.long	0x474
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xea
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0xec
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x346
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.value	0x100
	.long	0x34
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e6
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x100
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x100
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x100
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x100
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x102
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.value	0x116
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x552
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x116
	.long	0x552
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x116
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x116
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x116
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x118
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x3fc
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.value	0x12c
	.long	0x34
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d3
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x12c
	.long	0x5d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x12c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x12e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xec
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.value	0x140
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x607
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x140
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0x156
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x635
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x156
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0x16d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x663
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x16d
	.long	0x402
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF41
	.byte	0x1
	.value	0x185
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x185
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x185
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x187
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.value	0x19d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f7
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x19d
	.long	0xe6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x19d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x19f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x1
	.value	0x1b6
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x741
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x1b6
	.long	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x1b6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x1b8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.value	0x1ce
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x79a
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x1ce
	.long	0xec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.value	0x1ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x1ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x1d0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF45
	.byte	0x1
	.value	0x1e6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c8
	.uleb128 0xb
	.long	.LASF46
	.byte	0x1
	.value	0x1e6
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x825
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x1f6
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x1f8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x1
	.value	0x20e
	.long	0x34
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x891
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x20e
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x20e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x20e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x20e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x210
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.value	0x224
	.long	0x34
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x90c
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x224
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.value	0x224
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x224
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x224
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x224
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x226
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.value	0x238
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x93a
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x238
	.long	0x104
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.value	0x24f
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x984
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x24f
	.long	0xfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x24f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.value	0x251
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.value	0x267
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x9dd
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x267
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.value	0x267
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.value	0x267
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.string	"j"
	.byte	0x1
	.value	0x269
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	0x72
	.long	0x9ee
	.uleb128 0x10
	.long	0x65
	.value	0x12b
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x4
	.value	0x222
	.long	0x9dd
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
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
.LASF24:
	.string	"get_mem3Dpel"
.LASF11:
	.string	"int64_t"
.LASF33:
	.string	"get_mem3D"
.LASF49:
	.string	"get_mem4Dshort"
.LASF56:
	.string	"errortext"
.LASF45:
	.string	"no_mem_exit"
.LASF50:
	.string	"free_mem2Dshort"
.LASF31:
	.string	"get_mem2Dint"
.LASF19:
	.string	"imgTopField"
.LASF44:
	.string	"free_mem4Dint"
.LASF12:
	.string	"byte"
.LASF51:
	.string	"free_mem3Dshort"
.LASF28:
	.string	"free_mem2Dpel"
.LASF32:
	.string	"get_mem2Dint64"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"free_mem4Dshort"
.LASF0:
	.string	"long unsigned int"
.LASF35:
	.string	"get_mem3Dint64"
.LASF47:
	.string	"get_mem2Dshort"
.LASF34:
	.string	"get_mem3Dint"
.LASF14:
	.string	"double"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"free_mem3Dpel"
.LASF41:
	.string	"free_mem3D"
.LASF25:
	.string	"array3D"
.LASF40:
	.string	"free_mem2Dint64"
.LASF16:
	.string	"imgFrame"
.LASF3:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF37:
	.string	"array4D"
.LASF27:
	.string	"free_top_bot_planes"
.LASF36:
	.string	"get_mem4Dint"
.LASF39:
	.string	"free_mem2Dint"
.LASF7:
	.string	"sizetype"
.LASF17:
	.string	"rows"
.LASF2:
	.string	"short unsigned int"
.LASF9:
	.string	"long long int"
.LASF26:
	.string	"frames"
.LASF22:
	.string	"get_mem2Dpel"
.LASF53:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF54:
	.string	"memalloc.c"
.LASF20:
	.string	"imgBotField"
.LASF46:
	.string	"where"
.LASF21:
	.string	"init_top_bot_planes"
.LASF55:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF6:
	.string	"long int"
.LASF42:
	.string	"free_mem3Dint"
.LASF18:
	.string	"columns"
.LASF15:
	.string	"float"
.LASF4:
	.string	"signed char"
.LASF43:
	.string	"free_mem3Dint64"
.LASF30:
	.string	"get_mem2D"
.LASF48:
	.string	"get_mem3Dshort"
.LASF13:
	.string	"int64"
.LASF38:
	.string	"free_mem2D"
.LASF23:
	.string	"array2D"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
