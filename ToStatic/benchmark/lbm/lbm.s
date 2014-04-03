	.file	"lbm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 lbm.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC1:
	.string	"LBM_allocateGrid: could not allocate %.1f MByte\n"
	.text
	.globl	LBM_allocateGrid
	.type	LBM_allocateGrid, @function
LBM_allocateGrid:
.LFB2:
	.file 1 "lbm.c"
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	.loc 1 26 0
	movq	$400000, -16(%rbp)	#, margin
	.loc 1 27 0
	movq	-16(%rbp), %rax	# margin, tmp67
	addq	$13000000, %rax	#, D.7666
	salq	$4, %rax	#, tmp68
	movq	%rax, -8(%rbp)	# tmp68, size
	.loc 1 29 0
	movq	-8(%rbp), %rax	# size, tmp69
	movq	%rax, %rdi	# tmp69,
	call	malloc	#
	movq	%rax, %rdx	# tmp70, D.7667
	movq	-24(%rbp), %rax	# ptr, tmp71
	movq	%rdx, (%rax)	# D.7667, *ptr_5(D)
	.loc 1 30 0
	movq	-24(%rbp), %rax	# ptr, tmp72
	movq	(%rax), %rax	# *ptr_5(D), D.7668
	testq	%rax, %rax	# D.7668
	jne	.L2	#,
	.loc 1 31 0
	movq	-8(%rbp), %rax	# size, tmp73
	testq	%rax, %rax	# tmp73
	js	.L3	#,
	cvtsi2sdq	%rax, %xmm0	# tmp73, D.7669
	jmp	.L4	#
.L3:
	movq	%rax, %rdx	# tmp73, tmp75
	shrq	%rdx	# tmp75
	andl	$1, %eax	#, tmp76
	orq	%rax, %rdx	# tmp76, tmp75
	cvtsi2sdq	%rdx, %xmm0	# tmp75, tmp74
	addsd	%xmm0, %xmm0	# tmp74, D.7669
.L4:
	movsd	.LC0(%rip), %xmm1	#, tmp77
	divsd	%xmm1, %xmm0	# tmp77, D.7669
	movl	$.LC1, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 33 0
	movl	$1, %edi	#,
	call	exit	#
.L2:
	.loc 1 39 0
	movq	-24(%rbp), %rax	# ptr, tmp78
	movq	(%rax), %rax	# *ptr_5(D), D.7668
	movq	-16(%rbp), %rdx	# margin, tmp79
	salq	$3, %rdx	#, D.7666
	addq	%rax, %rdx	# D.7668, D.7668
	movq	-24(%rbp), %rax	# ptr, tmp80
	movq	%rdx, (%rax)	# D.7668, *ptr_5(D)
	.loc 1 40 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	LBM_allocateGrid, .-LBM_allocateGrid
	.globl	LBM_freeGrid
	.type	LBM_freeGrid, @function
LBM_freeGrid:
.LFB3:
	.loc 1 44 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# ptr, ptr
	.loc 1 45 0
	movq	$400000, -8(%rbp)	#, margin
	.loc 1 47 0
	movq	-24(%rbp), %rax	# ptr, tmp63
	movq	(%rax), %rax	# *ptr_2(D), D.7671
	movq	-8(%rbp), %rdx	# margin, tmp64
	salq	$3, %rdx	#, D.7672
	negq	%rdx	# D.7673
	addq	%rdx, %rax	# D.7673, D.7671
	movq	%rax, %rdi	# D.7671,
	call	free	#
	.loc 1 48 0
	movq	-24(%rbp), %rax	# ptr, tmp65
	movq	$0, (%rax)	#, *ptr_2(D)
	.loc 1 49 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	LBM_freeGrid, .-LBM_freeGrid
	.globl	LBM_initializeGrid
	.type	LBM_initializeGrid, @function
LBM_initializeGrid:
.LFB4:
	.loc 1 53 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# grid, grid
	.loc 1 62 0
	movl	$-400000, -12(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 1 63 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp138
	addq	%rax, %rdx	# tmp138, D.7675
	movabsq	$4599676419421066581, %rax	#, tmp139
	movq	%rax, (%rdx)	# tmp139, *_6
	.loc 1 64 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp140
	addl	$1, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp141
	addq	%rax, %rdx	# tmp141, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp142
	movq	%rax, (%rdx)	# tmp142, *_10
	.loc 1 65 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp143
	addl	$2, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp144
	addq	%rax, %rdx	# tmp144, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp145
	movq	%rax, (%rdx)	# tmp145, *_14
	.loc 1 66 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp146
	addl	$3, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp147
	addq	%rax, %rdx	# tmp147, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp148
	movq	%rax, (%rdx)	# tmp148, *_18
	.loc 1 67 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp149
	addl	$4, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp150
	addq	%rax, %rdx	# tmp150, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp151
	movq	%rax, (%rdx)	# tmp151, *_22
	.loc 1 68 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp152
	addl	$5, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp153
	addq	%rax, %rdx	# tmp153, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp154
	movq	%rax, (%rdx)	# tmp154, *_26
	.loc 1 69 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp155
	addl	$6, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp156
	addq	%rax, %rdx	# tmp156, D.7675
	movabsq	$4588167220373341980, %rax	#, tmp157
	movq	%rax, (%rdx)	# tmp157, *_30
	.loc 1 70 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp158
	addl	$7, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp159
	addq	%rax, %rdx	# tmp159, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp160
	movq	%rax, (%rdx)	# tmp160, *_34
	.loc 1 71 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp161
	addl	$8, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp162
	addq	%rax, %rdx	# tmp162, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp163
	movq	%rax, (%rdx)	# tmp163, *_38
	.loc 1 72 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp164
	addl	$9, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp165
	addq	%rax, %rdx	# tmp165, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp166
	movq	%rax, (%rdx)	# tmp166, *_42
	.loc 1 73 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp167
	addl	$10, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp168
	addq	%rax, %rdx	# tmp168, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp169
	movq	%rax, (%rdx)	# tmp169, *_46
	.loc 1 74 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp170
	addl	$11, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp171
	addq	%rax, %rdx	# tmp171, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp172
	movq	%rax, (%rdx)	# tmp172, *_50
	.loc 1 75 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp173
	addl	$12, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp174
	addq	%rax, %rdx	# tmp174, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp175
	movq	%rax, (%rdx)	# tmp175, *_54
	.loc 1 76 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp176
	addl	$13, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp177
	addq	%rax, %rdx	# tmp177, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp178
	movq	%rax, (%rdx)	# tmp178, *_58
	.loc 1 77 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp179
	addl	$14, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp180
	addq	%rax, %rdx	# tmp180, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp181
	movq	%rax, (%rdx)	# tmp181, *_62
	.loc 1 78 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp182
	addl	$15, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp183
	addq	%rax, %rdx	# tmp183, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp184
	movq	%rax, (%rdx)	# tmp184, *_66
	.loc 1 79 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp185
	addl	$16, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp186
	addq	%rax, %rdx	# tmp186, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp187
	movq	%rax, (%rdx)	# tmp187, *_70
	.loc 1 80 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp188
	addl	$17, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp189
	addq	%rax, %rdx	# tmp189, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp190
	movq	%rax, (%rdx)	# tmp190, *_74
	.loc 1 81 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp191
	addl	$18, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp192
	addq	%rax, %rdx	# tmp192, D.7675
	movabsq	$4583663620745971484, %rax	#, tmp193
	movq	%rax, (%rdx)	# tmp193, *_78
.LBB2:
	.loc 1 83 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp194
	addl	$19, %eax	#, D.7676
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7674
	movq	-24(%rbp), %rax	# grid, tmp198
	addq	%rdx, %rax	# D.7674, tmp197
	movq	%rax, -8(%rbp)	# tmp197, _aux_
	movq	-8(%rbp), %rax	# _aux_, tmp199
	movl	$0, (%rax)	#, *_aux__82
.LBE2:
	.loc 1 62 0 discriminator 2
	addl	$20, -12(%rbp)	#, i
.L7:
	.loc 1 62 0 is_stmt 0 discriminator 1
	cmpl	$26399999, -12(%rbp)	#, i
	jle	.L8	#,
	.loc 1 85 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	LBM_initializeGrid, .-LBM_initializeGrid
	.globl	LBM_swapGrids
	.type	LBM_swapGrids, @function
LBM_swapGrids:
.LFB5:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# grid1, grid1
	movq	%rsi, -32(%rbp)	# grid2, grid2
	.loc 1 90 0
	movq	-24(%rbp), %rax	# grid1, tmp60
	movq	(%rax), %rax	# *grid1_1(D), tmp61
	movq	%rax, -8(%rbp)	# tmp61, aux
	.loc 1 91 0
	movq	-32(%rbp), %rax	# grid2, tmp62
	movq	(%rax), %rdx	# *grid2_3(D), D.7677
	movq	-24(%rbp), %rax	# grid1, tmp63
	movq	%rdx, (%rax)	# D.7677, *grid1_1(D)
	.loc 1 92 0
	movq	-32(%rbp), %rax	# grid2, tmp64
	movq	-8(%rbp), %rdx	# aux, tmp65
	movq	%rdx, (%rax)	# tmp65, *grid2_3(D)
	.loc 1 93 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	LBM_swapGrids, .-LBM_swapGrids
	.section	.rodata
.LC5:
	.string	"rb"
	.text
	.globl	LBM_loadObstacleFile
	.type	LBM_loadObstacleFile, @function
LBM_loadObstacleFile:
.LFB6:
	.loc 1 97 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# grid, grid
	movq	%rsi, -48(%rbp)	# filename, filename
	.loc 1 100 0
	movq	-48(%rbp), %rax	# filename, tmp69
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	fopen	#
	movq	%rax, -16(%rbp)	# tmp70, file
	.loc 1 102 0
	movl	$0, -20(%rbp)	#, z
	jmp	.L11	#
.L17:
	.loc 1 103 0
	movl	$0, -24(%rbp)	#, y
	jmp	.L12	#
.L16:
	.loc 1 104 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L13	#
.L15:
	.loc 1 105 0
	movq	-16(%rbp), %rax	# file, tmp71
	movq	%rax, %rdi	# tmp71,
	call	fgetc	#
	cmpl	$46, %eax	#, D.7678
	je	.L14	#,
.LBB3:
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp72
	imull	$100, %eax, %edx	#, tmp72, D.7678
	movl	-28(%rbp), %eax	# x, tmp73
	addl	%eax, %edx	# tmp73, D.7678
	movl	-20(%rbp), %eax	# z, tmp74
	imull	$10000, %eax, %eax	#, tmp74, D.7678
	addl	%edx, %eax	# D.7678, D.7678
	movslq	%eax, %rdx	# D.7678, D.7679
	movq	%rdx, %rax	# D.7679, tmp75
	salq	$2, %rax	#, tmp75
	addq	%rdx, %rax	# D.7679, tmp75
	salq	$5, %rax	#, tmp76
	leaq	152(%rax), %rdx	#, D.7679
	movq	-40(%rbp), %rax	# grid, tmp80
	addq	%rdx, %rax	# D.7679, tmp79
	movq	%rax, -8(%rbp)	# tmp79, _aux_
	movq	-8(%rbp), %rax	# _aux_, tmp81
	movl	(%rax), %eax	# *_aux__18, D.7680
	orl	$1, %eax	#, D.7680
	movl	%eax, %edx	# D.7680, D.7680
	movq	-8(%rbp), %rax	# _aux_, tmp82
	movl	%edx, (%rax)	# D.7680, *_aux__18
.L14:
.LBE3:
	.loc 1 104 0 is_stmt 1
	addl	$1, -28(%rbp)	#, x
.L13:
	.loc 1 104 0 is_stmt 0 discriminator 1
	cmpl	$99, -28(%rbp)	#, x
	jle	.L15	#,
	.loc 1 107 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp83
	movq	%rax, %rdi	# tmp83,
	call	fgetc	#
	.loc 1 103 0
	addl	$1, -24(%rbp)	#, y
.L12:
	.loc 1 103 0 is_stmt 0 discriminator 1
	cmpl	$99, -24(%rbp)	#, y
	jle	.L16	#,
	.loc 1 109 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp84
	movq	%rax, %rdi	# tmp84,
	call	fgetc	#
	.loc 1 102 0
	addl	$1, -20(%rbp)	#, z
.L11:
	.loc 1 102 0 is_stmt 0 discriminator 1
	cmpl	$129, -20(%rbp)	#, z
	jle	.L17	#,
	.loc 1 112 0 is_stmt 1
	movq	-16(%rbp), %rax	# file, tmp85
	movq	%rax, %rdi	# tmp85,
	call	fclose	#
	.loc 1 113 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	LBM_loadObstacleFile, .-LBM_loadObstacleFile
	.globl	LBM_initializeSpecialCellsForLDC
	.type	LBM_initializeSpecialCellsForLDC, @function
LBM_initializeSpecialCellsForLDC:
.LFB7:
	.loc 1 117 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# grid, grid
	.loc 1 126 0
	movl	$-2, -20(%rbp)	#, z
	jmp	.L19	#
.L28:
	.loc 1 127 0
	movl	$0, -24(%rbp)	#, y
	jmp	.L20	#
.L27:
	.loc 1 128 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L21	#
.L26:
	.loc 1 129 0
	cmpl	$0, -28(%rbp)	#, x
	je	.L22	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	cmpl	$99, -28(%rbp)	#, x
	je	.L22	#,
	cmpl	$0, -24(%rbp)	#, y
	je	.L22	#,
	.loc 1 130 0 is_stmt 1
	cmpl	$99, -24(%rbp)	#, y
	je	.L22	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	cmpl	$0, -20(%rbp)	#, z
	je	.L22	#,
	.loc 1 131 0 is_stmt 1
	cmpl	$129, -20(%rbp)	#, z
	jne	.L23	#,
.L22:
.LBB4:
	.loc 1 132 0
	movl	-24(%rbp), %eax	# y, tmp77
	imull	$100, %eax, %edx	#, tmp77, D.7682
	movl	-28(%rbp), %eax	# x, tmp78
	addl	%eax, %edx	# tmp78, D.7682
	movl	-20(%rbp), %eax	# z, tmp79
	imull	$10000, %eax, %eax	#, tmp79, D.7682
	addl	%edx, %eax	# D.7682, D.7682
	movslq	%eax, %rdx	# D.7682, D.7683
	movq	%rdx, %rax	# D.7683, tmp80
	salq	$2, %rax	#, tmp80
	addq	%rdx, %rax	# D.7683, tmp80
	salq	$5, %rax	#, tmp81
	leaq	152(%rax), %rdx	#, D.7683
	movq	-40(%rbp), %rax	# grid, tmp85
	addq	%rdx, %rax	# D.7683, tmp84
	movq	%rax, -8(%rbp)	# tmp84, _aux_
	movq	-8(%rbp), %rax	# _aux_, tmp86
	movl	(%rax), %eax	# *_aux__25, D.7684
	orl	$1, %eax	#, D.7684
	movl	%eax, %edx	# D.7684, D.7684
	movq	-8(%rbp), %rax	# _aux_, tmp87
	movl	%edx, (%rax)	# D.7684, *_aux__25
.LBE4:
	jmp	.L24	#
.L23:
	.loc 1 135 0
	cmpl	$1, -20(%rbp)	#, z
	je	.L25	#,
	.loc 1 135 0 is_stmt 0 discriminator 2
	cmpl	$128, -20(%rbp)	#, z
	jne	.L24	#,
.L25:
	.loc 1 135 0 discriminator 1
	cmpl	$1, -28(%rbp)	#, x
	jle	.L24	#,
	.loc 1 136 0 is_stmt 1
	cmpl	$97, -28(%rbp)	#, x
	jg	.L24	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	cmpl	$1, -24(%rbp)	#, y
	jle	.L24	#,
	.loc 1 137 0 is_stmt 1
	cmpl	$97, -24(%rbp)	#, y
	jg	.L24	#,
.LBB5:
	.loc 1 138 0
	movl	-24(%rbp), %eax	# y, tmp88
	imull	$100, %eax, %edx	#, tmp88, D.7682
	movl	-28(%rbp), %eax	# x, tmp89
	addl	%eax, %edx	# tmp89, D.7682
	movl	-20(%rbp), %eax	# z, tmp90
	imull	$10000, %eax, %eax	#, tmp90, D.7682
	addl	%edx, %eax	# D.7682, D.7682
	movslq	%eax, %rdx	# D.7682, D.7683
	movq	%rdx, %rax	# D.7683, tmp91
	salq	$2, %rax	#, tmp91
	addq	%rdx, %rax	# D.7683, tmp91
	salq	$5, %rax	#, tmp92
	leaq	152(%rax), %rdx	#, D.7683
	movq	-40(%rbp), %rax	# grid, tmp96
	addq	%rdx, %rax	# D.7683, tmp95
	movq	%rax, -16(%rbp)	# tmp95, _aux_
	movq	-16(%rbp), %rax	# _aux_, tmp97
	movl	(%rax), %eax	# *_aux__15, D.7684
	orl	$2, %eax	#, D.7684
	movl	%eax, %edx	# D.7684, D.7684
	movq	-16(%rbp), %rax	# _aux_, tmp98
	movl	%edx, (%rax)	# D.7684, *_aux__15
.L24:
.LBE5:
	.loc 1 128 0
	addl	$1, -28(%rbp)	#, x
.L21:
	.loc 1 128 0 is_stmt 0 discriminator 1
	cmpl	$99, -28(%rbp)	#, x
	jle	.L26	#,
	.loc 1 127 0 is_stmt 1
	addl	$1, -24(%rbp)	#, y
.L20:
	.loc 1 127 0 is_stmt 0 discriminator 1
	cmpl	$99, -24(%rbp)	#, y
	jle	.L27	#,
	.loc 1 126 0 is_stmt 1
	addl	$1, -20(%rbp)	#, z
.L19:
	.loc 1 126 0 is_stmt 0 discriminator 1
	cmpl	$131, -20(%rbp)	#, z
	jle	.L28	#,
	.loc 1 144 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	LBM_initializeSpecialCellsForLDC, .-LBM_initializeSpecialCellsForLDC
	.globl	LBM_initializeSpecialCellsForChannel
	.type	LBM_initializeSpecialCellsForChannel, @function
LBM_initializeSpecialCellsForChannel:
.LFB8:
	.loc 1 148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# grid, grid
	.loc 1 157 0
	movl	$-2, -20(%rbp)	#, z
	jmp	.L30	#
.L38:
	.loc 1 158 0
	movl	$0, -24(%rbp)	#, y
	jmp	.L31	#
.L37:
	.loc 1 159 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L32	#
.L36:
	.loc 1 160 0
	cmpl	$0, -28(%rbp)	#, x
	je	.L33	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpl	$99, -28(%rbp)	#, x
	je	.L33	#,
	cmpl	$0, -24(%rbp)	#, y
	je	.L33	#,
	.loc 1 161 0 is_stmt 1
	cmpl	$99, -24(%rbp)	#, y
	jne	.L34	#,
.L33:
.LBB6:
	.loc 1 162 0
	movl	-24(%rbp), %eax	# y, tmp87
	imull	$100, %eax, %edx	#, tmp87, D.7685
	movl	-28(%rbp), %eax	# x, tmp88
	addl	%eax, %edx	# tmp88, D.7685
	movl	-20(%rbp), %eax	# z, tmp89
	imull	$10000, %eax, %eax	#, tmp89, D.7685
	addl	%edx, %eax	# D.7685, D.7685
	movslq	%eax, %rdx	# D.7685, D.7686
	movq	%rdx, %rax	# D.7686, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# D.7686, tmp90
	salq	$5, %rax	#, tmp91
	leaq	152(%rax), %rdx	#, D.7686
	movq	-40(%rbp), %rax	# grid, tmp95
	addq	%rdx, %rax	# D.7686, tmp94
	movq	%rax, -16(%rbp)	# tmp94, _aux_
	movq	-16(%rbp), %rax	# _aux_, tmp96
	movl	(%rax), %eax	# *_aux__15, D.7687
	orl	$1, %eax	#, D.7687
	movl	%eax, %edx	# D.7687, D.7687
	movq	-16(%rbp), %rax	# _aux_, tmp97
	movl	%edx, (%rax)	# D.7687, *_aux__15
.LBE6:
	.loc 1 164 0
	cmpl	$0, -20(%rbp)	#, z
	je	.L35	#,
	.loc 1 164 0 is_stmt 0 discriminator 2
	cmpl	$129, -20(%rbp)	#, z
	jne	.L34	#,
.L35:
	.loc 1 165 0 is_stmt 1 discriminator 1
	movl	-24(%rbp), %eax	# y, tmp98
	imull	$100, %eax, %edx	#, tmp98, D.7685
	movl	-28(%rbp), %eax	# x, tmp99
	addl	%eax, %edx	# tmp99, D.7685
	movl	-20(%rbp), %eax	# z, tmp100
	imull	$10000, %eax, %eax	#, tmp100, D.7685
	addl	%edx, %eax	# D.7685, D.7685
	movslq	%eax, %rdx	# D.7685, D.7686
	movq	%rdx, %rax	# D.7686, tmp101
	salq	$2, %rax	#, tmp101
	addq	%rdx, %rax	# D.7686, tmp101
	salq	$5, %rax	#, tmp102
	leaq	152(%rax), %rdx	#, D.7686
	movq	-40(%rbp), %rax	# grid, tmp103
	addq	%rdx, %rax	# D.7686, D.7688
	movl	(%rax), %eax	# *_25, D.7687
	andl	$1, %eax	#, D.7687
	.loc 1 164 0 discriminator 1
	testl	%eax, %eax	# D.7687
	jne	.L34	#,
.LBB7:
	.loc 1 166 0
	movl	-24(%rbp), %eax	# y, tmp104
	imull	$100, %eax, %edx	#, tmp104, D.7685
	movl	-28(%rbp), %eax	# x, tmp105
	addl	%eax, %edx	# tmp105, D.7685
	movl	-20(%rbp), %eax	# z, tmp106
	imull	$10000, %eax, %eax	#, tmp106, D.7685
	addl	%edx, %eax	# D.7685, D.7685
	movslq	%eax, %rdx	# D.7685, D.7686
	movq	%rdx, %rax	# D.7686, tmp107
	salq	$2, %rax	#, tmp107
	addq	%rdx, %rax	# D.7686, tmp107
	salq	$5, %rax	#, tmp108
	leaq	152(%rax), %rdx	#, D.7686
	movq	-40(%rbp), %rax	# grid, tmp112
	addq	%rdx, %rax	# D.7686, tmp111
	movq	%rax, -8(%rbp)	# tmp111, _aux_
	movq	-8(%rbp), %rax	# _aux_, tmp113
	movl	(%rax), %eax	# *_aux__35, D.7687
	orl	$4, %eax	#, D.7687
	movl	%eax, %edx	# D.7687, D.7687
	movq	-8(%rbp), %rax	# _aux_, tmp114
	movl	%edx, (%rax)	# D.7687, *_aux__35
.L34:
.LBE7:
	.loc 1 159 0
	addl	$1, -28(%rbp)	#, x
.L32:
	.loc 1 159 0 is_stmt 0 discriminator 1
	cmpl	$99, -28(%rbp)	#, x
	jle	.L36	#,
	.loc 1 158 0 is_stmt 1
	addl	$1, -24(%rbp)	#, y
.L31:
	.loc 1 158 0 is_stmt 0 discriminator 1
	cmpl	$99, -24(%rbp)	#, y
	jle	.L37	#,
	.loc 1 157 0 is_stmt 1
	addl	$1, -20(%rbp)	#, z
.L30:
	.loc 1 157 0 is_stmt 0 discriminator 1
	cmpl	$131, -20(%rbp)	#, z
	jle	.L38	#,
	.loc 1 171 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	LBM_initializeSpecialCellsForChannel, .-LBM_initializeSpecialCellsForChannel
	.globl	LBM_performStreamCollide
	.type	LBM_performStreamCollide, @function
LBM_performStreamCollide:
.LFB9:
	.loc 1 175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# srcGrid, srcGrid
	movq	%rsi, -64(%rbp)	# dstGrid, dstGrid
	.loc 1 186 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L40	#
.L44:
	.loc 1 187 0
	movl	-44(%rbp), %eax	# i, tmp896
	addl	$19, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp897
	addq	%rdx, %rax	# D.7690, D.7691
	movl	(%rax), %eax	# *_10, D.7692
	andl	$1, %eax	#, D.7692
	testl	%eax, %eax	# D.7692
	je	.L41	#,
	.loc 1 188 0
	movl	-44(%rbp), %eax	# i, tmp898
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp899
	addq	%rax, %rdx	# tmp899, D.7693
	movl	-44(%rbp), %eax	# i, tmp900
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp901
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_19, D.7694
	movq	%rax, (%rdx)	# D.7694, *_16
	.loc 1 189 0
	movl	-44(%rbp), %eax	# i, tmp902
	subl	$1998, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp903
	addq	%rax, %rdx	# tmp903, D.7693
	movl	-44(%rbp), %eax	# i, tmp904
	addl	$1, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp905
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_28, D.7694
	movq	%rax, (%rdx)	# D.7694, *_24
	.loc 1 190 0
	movl	-44(%rbp), %eax	# i, tmp906
	addl	$2001, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp907
	addq	%rax, %rdx	# tmp907, D.7693
	movl	-44(%rbp), %eax	# i, tmp908
	addl	$2, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp909
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_37, D.7694
	movq	%rax, (%rdx)	# D.7694, *_33
	.loc 1 191 0
	movl	-44(%rbp), %eax	# i, tmp910
	subl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp911
	addq	%rax, %rdx	# tmp911, D.7693
	movl	-44(%rbp), %eax	# i, tmp912
	addl	$3, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp913
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_46, D.7694
	movq	%rax, (%rdx)	# D.7694, *_42
	.loc 1 192 0
	movl	-44(%rbp), %eax	# i, tmp914
	addl	$23, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp915
	addq	%rax, %rdx	# tmp915, D.7693
	movl	-44(%rbp), %eax	# i, tmp916
	addl	$4, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp917
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_55, D.7694
	movq	%rax, (%rdx)	# D.7694, *_51
	.loc 1 193 0
	movl	-44(%rbp), %eax	# i, tmp918
	subl	$199994, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp919
	addq	%rax, %rdx	# tmp919, D.7693
	movl	-44(%rbp), %eax	# i, tmp920
	addl	$5, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp921
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_64, D.7694
	movq	%rax, (%rdx)	# D.7694, *_60
	.loc 1 194 0
	movl	-44(%rbp), %eax	# i, tmp922
	addl	$200005, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp923
	addq	%rax, %rdx	# tmp923, D.7693
	movl	-44(%rbp), %eax	# i, tmp924
	addl	$6, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp925
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_73, D.7694
	movq	%rax, (%rdx)	# D.7694, *_69
	.loc 1 195 0
	movl	-44(%rbp), %eax	# i, tmp926
	subl	$2010, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp927
	addq	%rax, %rdx	# tmp927, D.7693
	movl	-44(%rbp), %eax	# i, tmp928
	addl	$7, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp929
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_82, D.7694
	movq	%rax, (%rdx)	# D.7694, *_78
	.loc 1 196 0
	movl	-44(%rbp), %eax	# i, tmp930
	subl	$1971, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp931
	addq	%rax, %rdx	# tmp931, D.7693
	movl	-44(%rbp), %eax	# i, tmp932
	addl	$8, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp933
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_91, D.7694
	movq	%rax, (%rdx)	# D.7694, *_87
	.loc 1 197 0
	movl	-44(%rbp), %eax	# i, tmp934
	addl	$1988, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp935
	addq	%rax, %rdx	# tmp935, D.7693
	movl	-44(%rbp), %eax	# i, tmp936
	addl	$9, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp937
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_100, D.7694
	movq	%rax, (%rdx)	# D.7694, *_96
	.loc 1 198 0
	movl	-44(%rbp), %eax	# i, tmp938
	addl	$2027, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp939
	addq	%rax, %rdx	# tmp939, D.7693
	movl	-44(%rbp), %eax	# i, tmp940
	addl	$10, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp941
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_109, D.7694
	movq	%rax, (%rdx)	# D.7694, *_105
	.loc 1 199 0
	movl	-44(%rbp), %eax	# i, tmp942
	subl	$201986, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp943
	addq	%rax, %rdx	# tmp943, D.7693
	movl	-44(%rbp), %eax	# i, tmp944
	addl	$11, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp945
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_118, D.7694
	movq	%rax, (%rdx)	# D.7694, *_114
	.loc 1 200 0
	movl	-44(%rbp), %eax	# i, tmp946
	addl	$198013, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp947
	addq	%rax, %rdx	# tmp947, D.7693
	movl	-44(%rbp), %eax	# i, tmp948
	addl	$12, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp949
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_127, D.7694
	movq	%rax, (%rdx)	# D.7694, *_123
	.loc 1 201 0
	movl	-44(%rbp), %eax	# i, tmp950
	subl	$197988, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp951
	addq	%rax, %rdx	# tmp951, D.7693
	movl	-44(%rbp), %eax	# i, tmp952
	addl	$13, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp953
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_136, D.7694
	movq	%rax, (%rdx)	# D.7694, *_132
	.loc 1 202 0
	movl	-44(%rbp), %eax	# i, tmp954
	addl	$202011, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp955
	addq	%rax, %rdx	# tmp955, D.7693
	movl	-44(%rbp), %eax	# i, tmp956
	addl	$14, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp957
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_145, D.7694
	movq	%rax, (%rdx)	# D.7694, *_141
	.loc 1 203 0
	movl	-44(%rbp), %eax	# i, tmp958
	subl	$200002, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp959
	addq	%rax, %rdx	# tmp959, D.7693
	movl	-44(%rbp), %eax	# i, tmp960
	addl	$15, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp961
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_154, D.7694
	movq	%rax, (%rdx)	# D.7694, *_150
	.loc 1 204 0
	movl	-44(%rbp), %eax	# i, tmp962
	addl	$199997, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp963
	addq	%rax, %rdx	# tmp963, D.7693
	movl	-44(%rbp), %eax	# i, tmp964
	addl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp965
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_163, D.7694
	movq	%rax, (%rdx)	# D.7694, *_159
	.loc 1 205 0
	movl	-44(%rbp), %eax	# i, tmp966
	subl	$199964, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp967
	addq	%rax, %rdx	# tmp967, D.7693
	movl	-44(%rbp), %eax	# i, tmp968
	addl	$17, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp969
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_172, D.7694
	movq	%rax, (%rdx)	# D.7694, *_168
	.loc 1 206 0
	movl	-44(%rbp), %eax	# i, tmp970
	addl	$200035, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp971
	addq	%rax, %rdx	# tmp971, D.7693
	movl	-44(%rbp), %eax	# i, tmp972
	addl	$18, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rcx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp973
	addq	%rcx, %rax	# D.7690, D.7693
	movq	(%rax), %rax	# *_181, D.7694
	movq	%rax, (%rdx)	# D.7694, *_177
	.loc 1 207 0
	jmp	.L42	#
.L41:
	.loc 1 210 0
	movl	-44(%rbp), %eax	# i, tmp974
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp975
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_185, D.7694
	movl	-44(%rbp), %eax	# i, tmp976
	addl	$1, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp977
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm0	# *_190, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 211 0
	movl	-44(%rbp), %eax	# i, tmp978
	addl	$2, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp979
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_196, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp980
	addl	$3, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp981
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_202, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 212 0
	movl	-44(%rbp), %eax	# i, tmp982
	addl	$4, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp983
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_208, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp984
	addl	$5, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp985
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_214, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 213 0
	movl	-44(%rbp), %eax	# i, tmp986
	addl	$6, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp987
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_220, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp988
	addl	$7, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp989
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_226, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 214 0
	movl	-44(%rbp), %eax	# i, tmp990
	addl	$8, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp991
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_232, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp992
	addl	$9, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp993
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_238, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 215 0
	movl	-44(%rbp), %eax	# i, tmp994
	addl	$10, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp995
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_244, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp996
	addl	$11, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp997
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_250, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 216 0
	movl	-44(%rbp), %eax	# i, tmp998
	addl	$12, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp999
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_256, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1000
	addl	$13, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1001
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_262, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 217 0
	movl	-44(%rbp), %eax	# i, tmp1002
	addl	$14, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1003
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_268, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1004
	addl	$15, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1005
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_274, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 218 0
	movl	-44(%rbp), %eax	# i, tmp1006
	addl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1007
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_280, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1008
	addl	$17, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1009
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_286, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 219 0
	movl	-44(%rbp), %eax	# i, tmp1010
	addl	$18, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1011
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_292, D.7694
	.loc 1 210 0
	addsd	%xmm1, %xmm0	# D.7694, tmp1012
	movsd	%xmm0, -16(%rbp)	# tmp1012, rho
	.loc 1 221 0
	movl	-44(%rbp), %eax	# i, tmp1013
	addl	$3, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1014
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm0	# *_298, D.7694
	movl	-44(%rbp), %eax	# i, tmp1015
	addl	$4, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1016
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_303, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 222 0
	movl	-44(%rbp), %eax	# i, tmp1017
	addl	$7, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1018
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_309, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1019
	addl	$8, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1020
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_315, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 223 0
	movl	-44(%rbp), %eax	# i, tmp1021
	addl	$9, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1022
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_321, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1023
	addl	$10, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1024
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_327, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 224 0
	movl	-44(%rbp), %eax	# i, tmp1025
	addl	$15, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1026
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_333, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1027
	addl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1028
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_339, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 225 0
	movl	-44(%rbp), %eax	# i, tmp1029
	addl	$17, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1030
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_345, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1031
	addl	$18, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1032
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_351, D.7694
	.loc 1 221 0
	subsd	%xmm1, %xmm0	# D.7694, tmp1033
	movsd	%xmm0, -40(%rbp)	# tmp1033, ux
	.loc 1 226 0
	movl	-44(%rbp), %eax	# i, tmp1034
	addl	$1, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1035
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm0	# *_357, D.7694
	movl	-44(%rbp), %eax	# i, tmp1036
	addl	$2, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1037
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_362, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 227 0
	movl	-44(%rbp), %eax	# i, tmp1038
	addl	$7, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1039
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_368, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1040
	addl	$8, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1041
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_374, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 228 0
	movl	-44(%rbp), %eax	# i, tmp1042
	addl	$9, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1043
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_380, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1044
	addl	$10, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1045
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_386, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 229 0
	movl	-44(%rbp), %eax	# i, tmp1046
	addl	$11, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1047
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_392, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1048
	addl	$12, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1049
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_398, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 230 0
	movl	-44(%rbp), %eax	# i, tmp1050
	addl	$13, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1051
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_404, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1052
	addl	$14, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1053
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_410, D.7694
	.loc 1 226 0
	subsd	%xmm1, %xmm0	# D.7694, tmp1054
	movsd	%xmm0, -32(%rbp)	# tmp1054, uy
	.loc 1 231 0
	movl	-44(%rbp), %eax	# i, tmp1055
	addl	$5, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1056
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm0	# *_416, D.7694
	movl	-44(%rbp), %eax	# i, tmp1057
	addl	$6, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1058
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_421, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 232 0
	movl	-44(%rbp), %eax	# i, tmp1059
	addl	$11, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1060
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_427, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1061
	addl	$12, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1062
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_433, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 233 0
	movl	-44(%rbp), %eax	# i, tmp1063
	addl	$13, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1064
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_439, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1065
	addl	$14, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1066
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_445, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 234 0
	movl	-44(%rbp), %eax	# i, tmp1067
	addl	$15, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1068
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_451, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1069
	addl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1070
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_457, D.7694
	subsd	%xmm1, %xmm0	# D.7694, D.7694
	.loc 1 235 0
	movl	-44(%rbp), %eax	# i, tmp1071
	addl	$17, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1072
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_463, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movl	-44(%rbp), %eax	# i, tmp1073
	addl	$18, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1074
	addq	%rdx, %rax	# D.7690, D.7693
	movsd	(%rax), %xmm1	# *_469, D.7694
	.loc 1 231 0
	subsd	%xmm1, %xmm0	# D.7694, tmp1075
	movsd	%xmm0, -24(%rbp)	# tmp1075, uz
	.loc 1 237 0
	movsd	-40(%rbp), %xmm0	# ux, tmp1077
	divsd	-16(%rbp), %xmm0	# rho, tmp1076
	movsd	%xmm0, -40(%rbp)	# tmp1076, ux
	.loc 1 238 0
	movsd	-32(%rbp), %xmm0	# uy, tmp1079
	divsd	-16(%rbp), %xmm0	# rho, tmp1078
	movsd	%xmm0, -32(%rbp)	# tmp1078, uy
	.loc 1 239 0
	movsd	-24(%rbp), %xmm0	# uz, tmp1081
	divsd	-16(%rbp), %xmm0	# rho, tmp1080
	movsd	%xmm0, -24(%rbp)	# tmp1080, uz
	.loc 1 241 0
	movl	-44(%rbp), %eax	# i, tmp1082
	addl	$19, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-56(%rbp), %rax	# srcGrid, tmp1083
	addq	%rdx, %rax	# D.7690, D.7691
	movl	(%rax), %eax	# *_478, D.7692
	andl	$2, %eax	#, D.7692
	testl	%eax, %eax	# D.7692
	je	.L43	#,
	.loc 1 242 0
	movabsq	$4572414629676717179, %rax	#, tmp1084
	movq	%rax, -40(%rbp)	# tmp1084, ux
	.loc 1 243 0
	movabsq	$4566758108544739836, %rax	#, tmp1085
	movq	%rax, -32(%rbp)	# tmp1085, uy
	.loc 1 244 0
	movl	$0, %eax	#, tmp1086
	movq	%rax, -24(%rbp)	# tmp1086, uz
.L43:
	.loc 1 247 0
	movsd	-40(%rbp), %xmm0	# ux, tmp1087
	movapd	%xmm0, %xmm1	# tmp1087, D.7694
	mulsd	-40(%rbp), %xmm1	# ux, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1088
	mulsd	-32(%rbp), %xmm0	# uy, D.7694
	addsd	%xmm0, %xmm1	# D.7694, D.7694
	movsd	-24(%rbp), %xmm0	# uz, tmp1089
	mulsd	-24(%rbp), %xmm0	# uz, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	.LC9(%rip), %xmm1	#, tmp1091
	mulsd	%xmm1, %xmm0	# tmp1091, tmp1090
	movsd	%xmm0, -8(%rbp)	# tmp1090, u2
	.loc 1 248 0
	movl	-44(%rbp), %eax	# i, tmp1092
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1093
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1094
	movslq	%edx, %rdx	# tmp1094, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1095
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_495, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1096
	mulsd	%xmm0, %xmm1	# tmp1096, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1097
	movsd	.LC11(%rip), %xmm0	#, tmp1098
	mulsd	%xmm0, %xmm2	# tmp1098, D.7694
	movsd	.LC12(%rip), %xmm0	#, tmp1099
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_492
	.loc 1 250 0
	movl	-44(%rbp), %eax	# i, tmp1100
	addl	$2001, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1101
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1102
	addl	$1, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1103
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_509, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1104
	mulsd	%xmm0, %xmm1	# tmp1104, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1105
	movsd	.LC13(%rip), %xmm0	#, tmp1106
	mulsd	%xmm0, %xmm2	# tmp1106, D.7694
	movsd	-32(%rbp), %xmm3	# uy, tmp1107
	movsd	.LC14(%rip), %xmm0	#, tmp1108
	mulsd	%xmm3, %xmm0	# tmp1107, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1109
	addsd	%xmm3, %xmm0	# tmp1109, D.7694
	mulsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1110
	addsd	%xmm3, %xmm0	# tmp1110, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_505
	.loc 1 251 0
	movl	-44(%rbp), %eax	# i, tmp1111
	subl	$1998, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1112
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1113
	addl	$2, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1114
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_527, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1115
	mulsd	%xmm0, %xmm1	# tmp1115, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1116
	movsd	.LC13(%rip), %xmm0	#, tmp1117
	mulsd	%xmm0, %xmm2	# tmp1117, D.7694
	movsd	-32(%rbp), %xmm3	# uy, tmp1118
	movsd	.LC14(%rip), %xmm0	#, tmp1119
	mulsd	%xmm3, %xmm0	# tmp1118, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1120
	subsd	%xmm3, %xmm0	# tmp1120, D.7694
	mulsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1121
	addsd	%xmm3, %xmm0	# tmp1121, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_523
	.loc 1 252 0
	movl	-44(%rbp), %eax	# i, tmp1122
	addl	$23, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1123
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1124
	addl	$3, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1125
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_545, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1126
	mulsd	%xmm0, %xmm1	# tmp1126, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1127
	movsd	.LC13(%rip), %xmm0	#, tmp1128
	mulsd	%xmm0, %xmm2	# tmp1128, D.7694
	movsd	-40(%rbp), %xmm3	# ux, tmp1129
	movsd	.LC14(%rip), %xmm0	#, tmp1130
	mulsd	%xmm3, %xmm0	# tmp1129, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1131
	addsd	%xmm3, %xmm0	# tmp1131, D.7694
	mulsd	-40(%rbp), %xmm0	# ux, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1132
	addsd	%xmm3, %xmm0	# tmp1132, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_541
	.loc 1 253 0
	movl	-44(%rbp), %eax	# i, tmp1133
	subl	$16, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1134
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1135
	addl	$4, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1136
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_563, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1137
	mulsd	%xmm0, %xmm1	# tmp1137, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1138
	movsd	.LC13(%rip), %xmm0	#, tmp1139
	mulsd	%xmm0, %xmm2	# tmp1139, D.7694
	movsd	-40(%rbp), %xmm3	# ux, tmp1140
	movsd	.LC14(%rip), %xmm0	#, tmp1141
	mulsd	%xmm3, %xmm0	# tmp1140, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1142
	subsd	%xmm3, %xmm0	# tmp1142, D.7694
	mulsd	-40(%rbp), %xmm0	# ux, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1143
	addsd	%xmm3, %xmm0	# tmp1143, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_559
	.loc 1 254 0
	movl	-44(%rbp), %eax	# i, tmp1144
	addl	$200005, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1145
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1146
	addl	$5, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1147
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_581, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1148
	mulsd	%xmm0, %xmm1	# tmp1148, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1149
	movsd	.LC13(%rip), %xmm0	#, tmp1150
	mulsd	%xmm0, %xmm2	# tmp1150, D.7694
	movsd	-24(%rbp), %xmm3	# uz, tmp1151
	movsd	.LC14(%rip), %xmm0	#, tmp1152
	mulsd	%xmm3, %xmm0	# tmp1151, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1153
	addsd	%xmm3, %xmm0	# tmp1153, D.7694
	mulsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1154
	addsd	%xmm3, %xmm0	# tmp1154, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_577
	.loc 1 255 0
	movl	-44(%rbp), %eax	# i, tmp1155
	subl	$199994, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1156
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1157
	addl	$6, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1158
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_599, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1159
	mulsd	%xmm0, %xmm1	# tmp1159, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1160
	movsd	.LC13(%rip), %xmm0	#, tmp1161
	mulsd	%xmm0, %xmm2	# tmp1161, D.7694
	movsd	-24(%rbp), %xmm3	# uz, tmp1162
	movsd	.LC14(%rip), %xmm0	#, tmp1163
	mulsd	%xmm3, %xmm0	# tmp1162, D.7694
	movsd	.LC15(%rip), %xmm3	#, tmp1164
	subsd	%xmm3, %xmm0	# tmp1164, D.7694
	mulsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1165
	addsd	%xmm3, %xmm0	# tmp1165, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_595
	.loc 1 257 0
	movl	-44(%rbp), %eax	# i, tmp1166
	addl	$2027, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1167
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1168
	addl	$7, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1169
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_617, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1170
	mulsd	%xmm0, %xmm1	# tmp1170, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1171
	movsd	.LC16(%rip), %xmm0	#, tmp1172
	mulsd	%xmm0, %xmm2	# tmp1172, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1173
	movapd	%xmm0, %xmm3	# tmp1173, D.7694
	addsd	-32(%rbp), %xmm3	# uy, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1174
	addsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1175
	mulsd	%xmm4, %xmm0	# tmp1175, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1176
	addsd	%xmm4, %xmm0	# tmp1176, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1177
	addsd	%xmm3, %xmm0	# tmp1177, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_613
	.loc 1 258 0
	movl	-44(%rbp), %eax	# i, tmp1178
	addl	$1988, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1179
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1180
	addl	$8, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1181
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_637, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1182
	mulsd	%xmm0, %xmm1	# tmp1182, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1183
	movsd	.LC16(%rip), %xmm0	#, tmp1184
	mulsd	%xmm0, %xmm2	# tmp1184, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1185
	movapd	%xmm0, %xmm3	# tmp1185, D.7694
	subsd	-40(%rbp), %xmm3	# ux, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1186
	subsd	-40(%rbp), %xmm0	# ux, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1187
	mulsd	%xmm4, %xmm0	# tmp1187, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1188
	addsd	%xmm4, %xmm0	# tmp1188, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1189
	addsd	%xmm3, %xmm0	# tmp1189, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_633
	.loc 1 259 0
	movl	-44(%rbp), %eax	# i, tmp1190
	subl	$1971, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1191
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1192
	addl	$9, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1193
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_657, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1194
	mulsd	%xmm0, %xmm1	# tmp1194, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1195
	movsd	.LC16(%rip), %xmm0	#, tmp1196
	mulsd	%xmm0, %xmm2	# tmp1196, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1197
	movapd	%xmm0, %xmm3	# tmp1197, D.7694
	subsd	-32(%rbp), %xmm3	# uy, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1198
	subsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1199
	mulsd	%xmm4, %xmm0	# tmp1199, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1200
	addsd	%xmm4, %xmm0	# tmp1200, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1201
	addsd	%xmm3, %xmm0	# tmp1201, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_653
	.loc 1 260 0
	movl	-44(%rbp), %eax	# i, tmp1202
	subl	$2010, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1203
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1204
	addl	$10, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1205
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_677, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1206
	mulsd	%xmm0, %xmm1	# tmp1206, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1207
	movsd	.LC16(%rip), %xmm0	#, tmp1208
	mulsd	%xmm0, %xmm2	# tmp1208, D.7694
	movsd	-40(%rbp), %xmm3	# ux, tmp1209
	movsd	.LC17(%rip), %xmm0	#, tmp1210
	xorpd	%xmm3, %xmm0	# tmp1209, D.7694
	movapd	%xmm0, %xmm3	# D.7694, D.7694
	subsd	-32(%rbp), %xmm3	# uy, D.7694
	movsd	-40(%rbp), %xmm4	# ux, tmp1211
	movsd	.LC17(%rip), %xmm0	#, tmp1212
	xorpd	%xmm4, %xmm0	# tmp1211, D.7694
	subsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1213
	mulsd	%xmm4, %xmm0	# tmp1213, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1214
	addsd	%xmm4, %xmm0	# tmp1214, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1215
	addsd	%xmm3, %xmm0	# tmp1215, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_673
	.loc 1 261 0
	movl	-44(%rbp), %eax	# i, tmp1216
	addl	$202011, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1217
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1218
	addl	$11, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1219
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_699, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1220
	mulsd	%xmm0, %xmm1	# tmp1220, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1221
	movsd	.LC16(%rip), %xmm0	#, tmp1222
	mulsd	%xmm0, %xmm2	# tmp1222, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1223
	movapd	%xmm0, %xmm3	# tmp1223, D.7694
	addsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1224
	addsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1225
	mulsd	%xmm4, %xmm0	# tmp1225, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1226
	addsd	%xmm4, %xmm0	# tmp1226, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1227
	addsd	%xmm3, %xmm0	# tmp1227, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_695
	.loc 1 262 0
	movl	-44(%rbp), %eax	# i, tmp1228
	subl	$197988, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1229
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1230
	addl	$12, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1231
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_719, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1232
	mulsd	%xmm0, %xmm1	# tmp1232, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1233
	movsd	.LC16(%rip), %xmm0	#, tmp1234
	mulsd	%xmm0, %xmm2	# tmp1234, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1235
	movapd	%xmm0, %xmm3	# tmp1235, D.7694
	subsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-32(%rbp), %xmm0	# uy, tmp1236
	subsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1237
	mulsd	%xmm4, %xmm0	# tmp1237, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1238
	addsd	%xmm4, %xmm0	# tmp1238, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1239
	addsd	%xmm3, %xmm0	# tmp1239, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_715
	.loc 1 263 0
	movl	-44(%rbp), %eax	# i, tmp1240
	addl	$198013, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1241
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1242
	addl	$13, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1243
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_739, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1244
	mulsd	%xmm0, %xmm1	# tmp1244, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1245
	movsd	.LC16(%rip), %xmm0	#, tmp1246
	mulsd	%xmm0, %xmm2	# tmp1246, D.7694
	movsd	-24(%rbp), %xmm0	# uz, tmp1247
	movapd	%xmm0, %xmm3	# tmp1247, D.7694
	subsd	-32(%rbp), %xmm3	# uy, D.7694
	movsd	-24(%rbp), %xmm0	# uz, tmp1248
	subsd	-32(%rbp), %xmm0	# uy, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1249
	mulsd	%xmm4, %xmm0	# tmp1249, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1250
	addsd	%xmm4, %xmm0	# tmp1250, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1251
	addsd	%xmm3, %xmm0	# tmp1251, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_735
	.loc 1 264 0
	movl	-44(%rbp), %eax	# i, tmp1252
	subl	$201986, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1253
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1254
	addl	$14, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1255
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_759, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1256
	mulsd	%xmm0, %xmm1	# tmp1256, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1257
	movsd	.LC16(%rip), %xmm0	#, tmp1258
	mulsd	%xmm0, %xmm2	# tmp1258, D.7694
	movsd	-32(%rbp), %xmm3	# uy, tmp1259
	movsd	.LC17(%rip), %xmm0	#, tmp1260
	xorpd	%xmm3, %xmm0	# tmp1259, D.7694
	movapd	%xmm0, %xmm3	# D.7694, D.7694
	subsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-32(%rbp), %xmm4	# uy, tmp1261
	movsd	.LC17(%rip), %xmm0	#, tmp1262
	xorpd	%xmm4, %xmm0	# tmp1261, D.7694
	subsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1263
	mulsd	%xmm4, %xmm0	# tmp1263, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1264
	addsd	%xmm4, %xmm0	# tmp1264, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1265
	addsd	%xmm3, %xmm0	# tmp1265, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_755
	.loc 1 265 0
	movl	-44(%rbp), %eax	# i, tmp1266
	addl	$200035, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1267
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1268
	addl	$15, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1269
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_781, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1270
	mulsd	%xmm0, %xmm1	# tmp1270, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1271
	movsd	.LC16(%rip), %xmm0	#, tmp1272
	mulsd	%xmm0, %xmm2	# tmp1272, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1273
	movapd	%xmm0, %xmm3	# tmp1273, D.7694
	addsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1274
	addsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1275
	mulsd	%xmm4, %xmm0	# tmp1275, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1276
	addsd	%xmm4, %xmm0	# tmp1276, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1277
	addsd	%xmm3, %xmm0	# tmp1277, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_777
	.loc 1 266 0
	movl	-44(%rbp), %eax	# i, tmp1278
	subl	$199964, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1279
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1280
	addl	$16, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1281
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_801, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1282
	mulsd	%xmm0, %xmm1	# tmp1282, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1283
	movsd	.LC16(%rip), %xmm0	#, tmp1284
	mulsd	%xmm0, %xmm2	# tmp1284, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1285
	movapd	%xmm0, %xmm3	# tmp1285, D.7694
	subsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-40(%rbp), %xmm0	# ux, tmp1286
	subsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1287
	mulsd	%xmm4, %xmm0	# tmp1287, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1288
	addsd	%xmm4, %xmm0	# tmp1288, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1289
	addsd	%xmm3, %xmm0	# tmp1289, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_797
	.loc 1 267 0
	movl	-44(%rbp), %eax	# i, tmp1290
	addl	$199997, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1291
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1292
	addl	$17, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1293
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_821, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1294
	mulsd	%xmm0, %xmm1	# tmp1294, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1295
	movsd	.LC16(%rip), %xmm0	#, tmp1296
	mulsd	%xmm0, %xmm2	# tmp1296, D.7694
	movsd	-24(%rbp), %xmm0	# uz, tmp1297
	movapd	%xmm0, %xmm3	# tmp1297, D.7694
	subsd	-40(%rbp), %xmm3	# ux, D.7694
	movsd	-24(%rbp), %xmm0	# uz, tmp1298
	subsd	-40(%rbp), %xmm0	# ux, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1299
	mulsd	%xmm4, %xmm0	# tmp1299, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1300
	addsd	%xmm4, %xmm0	# tmp1300, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1301
	addsd	%xmm3, %xmm0	# tmp1301, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_817
	.loc 1 268 0
	movl	-44(%rbp), %eax	# i, tmp1302
	subl	$200002, %eax	#, D.7689
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7690
	movq	-64(%rbp), %rax	# dstGrid, tmp1303
	addq	%rdx, %rax	# D.7690, D.7693
	movl	-44(%rbp), %edx	# i, tmp1304
	addl	$18, %edx	#, D.7689
	movslq	%edx, %rdx	# D.7689, D.7690
	leaq	0(,%rdx,8), %rcx	#, D.7690
	movq	-56(%rbp), %rdx	# srcGrid, tmp1305
	addq	%rcx, %rdx	# D.7690, D.7693
	movsd	(%rdx), %xmm1	# *_841, D.7694
	movsd	.LC10(%rip), %xmm0	#, tmp1306
	mulsd	%xmm0, %xmm1	# tmp1306, D.7694
	movsd	-16(%rbp), %xmm2	# rho, tmp1307
	movsd	.LC16(%rip), %xmm0	#, tmp1308
	mulsd	%xmm0, %xmm2	# tmp1308, D.7694
	movsd	-40(%rbp), %xmm3	# ux, tmp1309
	movsd	.LC17(%rip), %xmm0	#, tmp1310
	xorpd	%xmm3, %xmm0	# tmp1309, D.7694
	movapd	%xmm0, %xmm3	# D.7694, D.7694
	subsd	-24(%rbp), %xmm3	# uz, D.7694
	movsd	-40(%rbp), %xmm4	# ux, tmp1311
	movsd	.LC17(%rip), %xmm0	#, tmp1312
	xorpd	%xmm4, %xmm0	# tmp1311, D.7694
	subsd	-24(%rbp), %xmm0	# uz, D.7694
	movsd	.LC14(%rip), %xmm4	#, tmp1313
	mulsd	%xmm4, %xmm0	# tmp1313, D.7694
	movsd	.LC15(%rip), %xmm4	#, tmp1314
	addsd	%xmm4, %xmm0	# tmp1314, D.7694
	mulsd	%xmm3, %xmm0	# D.7694, D.7694
	movsd	.LC12(%rip), %xmm3	#, tmp1315
	addsd	%xmm3, %xmm0	# tmp1315, D.7694
	subsd	-8(%rbp), %xmm0	# u2, D.7694
	mulsd	%xmm2, %xmm0	# D.7694, D.7694
	addsd	%xmm1, %xmm0	# D.7694, D.7694
	movsd	%xmm0, (%rax)	# D.7694, *_837
.L42:
	.loc 1 186 0
	addl	$20, -44(%rbp)	#, i
.L40:
	.loc 1 186 0 is_stmt 0 discriminator 1
	cmpl	$25999999, -44(%rbp)	#, i
	jle	.L44	#,
	.loc 1 270 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	LBM_performStreamCollide, .-LBM_performStreamCollide
	.globl	LBM_handleInOutFlow
	.type	LBM_handleInOutFlow, @function
LBM_handleInOutFlow:
.LFB10:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -136(%rbp)	# srcGrid, srcGrid
	.loc 1 289 0
	movl	$0, -124(%rbp)	#, i
	jmp	.L46	#
.L47:
	.loc 1 290 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1350
	addl	$200000, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1351
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_8, D.7698
	movl	-124(%rbp), %eax	# i, tmp1352
	addl	$200001, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1353
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_13, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 291 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1354
	addl	$200002, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1355
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_19, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1356
	addl	$200003, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1357
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_25, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 292 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1358
	addl	$200004, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1359
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_31, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1360
	addl	$200005, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1361
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_37, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 293 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1362
	addl	$200006, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1363
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_43, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1364
	addl	$200007, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1365
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_49, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 294 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1366
	addl	$200008, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1367
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_55, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1368
	addl	$200009, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1369
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_61, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 295 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1370
	addl	$200010, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1371
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_67, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1372
	addl	$200011, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1373
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_73, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 296 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1374
	addl	$200012, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1375
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_79, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1376
	addl	$200013, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1377
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_85, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 297 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1378
	addl	$200014, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1379
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_91, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1380
	addl	$200015, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1381
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_97, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 298 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1382
	addl	$200016, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1383
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_103, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1384
	addl	$200017, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1385
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_109, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 299 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1386
	addl	$200018, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1387
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_115, D.7698
	.loc 1 290 0 discriminator 2
	addsd	%xmm1, %xmm0	# D.7698, tmp1388
	movsd	%xmm0, -120(%rbp)	# tmp1388, rho1
	.loc 1 300 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1389
	addl	$400000, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1390
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_121, D.7698
	movl	-124(%rbp), %eax	# i, tmp1391
	addl	$400001, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1392
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_126, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 301 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1393
	addl	$400002, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1394
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_132, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1395
	addl	$400003, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1396
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_138, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 302 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1397
	addl	$400004, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1398
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_144, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1399
	addl	$400005, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1400
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_150, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 303 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1401
	addl	$400006, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1402
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_156, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1403
	addl	$400007, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1404
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_162, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 304 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1405
	addl	$400008, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1406
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_168, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1407
	addl	$400009, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1408
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_174, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 305 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1409
	addl	$400010, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1410
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_180, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1411
	addl	$400011, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1412
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_186, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 306 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1413
	addl	$400012, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1414
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_192, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1415
	addl	$400013, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1416
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_198, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 307 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1417
	addl	$400014, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1418
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_204, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1419
	addl	$400015, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1420
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_210, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 308 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1421
	addl	$400016, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1422
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_216, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1423
	addl	$400017, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1424
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_222, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 309 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1425
	addl	$400018, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1426
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_228, D.7698
	.loc 1 300 0 discriminator 2
	addsd	%xmm1, %xmm0	# D.7698, tmp1427
	movsd	%xmm0, -112(%rbp)	# tmp1427, rho2
	.loc 1 311 0 discriminator 2
	movsd	-120(%rbp), %xmm0	# rho1, tmp1428
	addsd	%xmm0, %xmm0	# tmp1428, D.7698
	subsd	-112(%rbp), %xmm0	# rho2, tmp1429
	movsd	%xmm0, -104(%rbp)	# tmp1429, rho
	.loc 1 313 0 discriminator 2
	movl	-124(%rbp), %ecx	# i, tmp1430
	movl	$1717986919, %edx	#, tmp1432
	movl	%ecx, %eax	# tmp1430, tmp2031
	imull	%edx	# tmp1432
	sarl	$3, %edx	#, tmp1433
	movl	%ecx, %eax	# tmp1430, tmp1434
	sarl	$31, %eax	#, tmp1434
	movl	%edx, %ecx	# tmp1433, D.7695
	subl	%eax, %ecx	# tmp1434, D.7695
	movl	$1374389535, %edx	#, tmp1436
	movl	%ecx, %eax	# D.7695, tmp2032
	imull	%edx	# tmp1436
	sarl	$5, %edx	#, tmp1437
	movl	%ecx, %eax	# D.7695, tmp1438
	sarl	$31, %eax	#, tmp1438
	subl	%eax, %edx	# tmp1438, D.7695
	movl	%edx, %eax	# D.7695, D.7695
	imull	$100, %eax, %eax	#, D.7695, tmp1439
	subl	%eax, %ecx	# tmp1439, D.7695
	movl	%ecx, %eax	# D.7695, D.7695
	cvtsi2sd	%eax, %xmm0	# D.7695, D.7698
	movsd	.LC18(%rip), %xmm1	#, tmp1440
	divsd	%xmm1, %xmm0	# tmp1440, D.7698
	movsd	.LC12(%rip), %xmm1	#, tmp1442
	subsd	%xmm1, %xmm0	# tmp1442, tmp1441
	movsd	%xmm0, -96(%rbp)	# tmp1441, px
	.loc 1 314 0 discriminator 2
	movl	-124(%rbp), %ecx	# i, tmp1443
	movl	$274877907, %edx	#, tmp1445
	movl	%ecx, %eax	# tmp1443, tmp2033
	imull	%edx	# tmp1445
	sarl	$7, %edx	#, tmp1446
	movl	%ecx, %eax	# tmp1443, tmp1447
	sarl	$31, %eax	#, tmp1447
	movl	%edx, %ecx	# tmp1446, D.7695
	subl	%eax, %ecx	# tmp1447, D.7695
	movl	$1374389535, %edx	#, tmp1449
	movl	%ecx, %eax	# D.7695, tmp2034
	imull	%edx	# tmp1449
	sarl	$5, %edx	#, tmp1450
	movl	%ecx, %eax	# D.7695, tmp1451
	sarl	$31, %eax	#, tmp1451
	subl	%eax, %edx	# tmp1451, D.7695
	movl	%edx, %eax	# D.7695, D.7695
	imull	$100, %eax, %eax	#, D.7695, tmp1452
	subl	%eax, %ecx	# tmp1452, D.7695
	movl	%ecx, %eax	# D.7695, D.7695
	cvtsi2sd	%eax, %xmm0	# D.7695, D.7698
	movsd	.LC18(%rip), %xmm1	#, tmp1453
	divsd	%xmm1, %xmm0	# tmp1453, D.7698
	movsd	.LC12(%rip), %xmm1	#, tmp1455
	subsd	%xmm1, %xmm0	# tmp1455, tmp1454
	movsd	%xmm0, -88(%rbp)	# tmp1454, py
	.loc 1 315 0 discriminator 2
	movl	$0, %eax	#, tmp1456
	movq	%rax, -80(%rbp)	# tmp1456, ux
	.loc 1 316 0 discriminator 2
	movl	$0, %eax	#, tmp1457
	movq	%rax, -72(%rbp)	# tmp1457, uy
	.loc 1 317 0 discriminator 2
	movsd	-96(%rbp), %xmm0	# px, tmp1458
	mulsd	-96(%rbp), %xmm0	# px, D.7698
	movsd	.LC12(%rip), %xmm1	#, tmp1459
	subsd	%xmm0, %xmm1	# D.7698, D.7698
	movapd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	.LC19(%rip), %xmm1	#, tmp1460
	mulsd	%xmm0, %xmm1	# D.7698, D.7698
	movsd	-88(%rbp), %xmm0	# py, tmp1461
	mulsd	-88(%rbp), %xmm0	# py, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1462
	subsd	%xmm0, %xmm2	# D.7698, D.7698
	movapd	%xmm2, %xmm0	# D.7698, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, tmp1463
	movsd	%xmm0, -64(%rbp)	# tmp1463, uz
	.loc 1 319 0 discriminator 2
	movsd	-80(%rbp), %xmm0	# ux, tmp1464
	movapd	%xmm0, %xmm1	# tmp1464, D.7698
	mulsd	-80(%rbp), %xmm1	# ux, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1465
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	addsd	%xmm0, %xmm1	# D.7698, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1466
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	.LC9(%rip), %xmm1	#, tmp1468
	mulsd	%xmm1, %xmm0	# tmp1468, tmp1467
	movsd	%xmm0, -56(%rbp)	# tmp1467, u2
	.loc 1 321 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1469
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1470
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1471
	movsd	.LC2(%rip), %xmm0	#, tmp1472
	mulsd	%xmm0, %xmm1	# tmp1472, D.7698
	movsd	.LC12(%rip), %xmm0	#, tmp1473
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_259
	.loc 1 323 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1474
	addl	$1, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1475
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1476
	movsd	.LC3(%rip), %xmm0	#, tmp1477
	mulsd	%xmm0, %xmm1	# tmp1477, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1478
	movsd	.LC14(%rip), %xmm0	#, tmp1479
	mulsd	%xmm2, %xmm0	# tmp1478, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1480
	addsd	%xmm2, %xmm0	# tmp1480, D.7698
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1481
	addsd	%xmm2, %xmm0	# tmp1481, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_266
	.loc 1 324 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1482
	addl	$2, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1483
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1484
	movsd	.LC3(%rip), %xmm0	#, tmp1485
	mulsd	%xmm0, %xmm1	# tmp1485, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1486
	movsd	.LC14(%rip), %xmm0	#, tmp1487
	mulsd	%xmm2, %xmm0	# tmp1486, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1488
	subsd	%xmm2, %xmm0	# tmp1488, D.7698
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1489
	addsd	%xmm2, %xmm0	# tmp1489, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_277
	.loc 1 325 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1490
	addl	$3, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1491
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1492
	movsd	.LC3(%rip), %xmm0	#, tmp1493
	mulsd	%xmm0, %xmm1	# tmp1493, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1494
	movsd	.LC14(%rip), %xmm0	#, tmp1495
	mulsd	%xmm2, %xmm0	# tmp1494, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1496
	addsd	%xmm2, %xmm0	# tmp1496, D.7698
	mulsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1497
	addsd	%xmm2, %xmm0	# tmp1497, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_288
	.loc 1 326 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1498
	addl	$4, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1499
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1500
	movsd	.LC3(%rip), %xmm0	#, tmp1501
	mulsd	%xmm0, %xmm1	# tmp1501, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1502
	movsd	.LC14(%rip), %xmm0	#, tmp1503
	mulsd	%xmm2, %xmm0	# tmp1502, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1504
	subsd	%xmm2, %xmm0	# tmp1504, D.7698
	mulsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1505
	addsd	%xmm2, %xmm0	# tmp1505, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_299
	.loc 1 327 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1506
	addl	$5, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1507
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1508
	movsd	.LC3(%rip), %xmm0	#, tmp1509
	mulsd	%xmm0, %xmm1	# tmp1509, D.7698
	movsd	-64(%rbp), %xmm2	# uz, tmp1510
	movsd	.LC14(%rip), %xmm0	#, tmp1511
	mulsd	%xmm2, %xmm0	# tmp1510, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1512
	addsd	%xmm2, %xmm0	# tmp1512, D.7698
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1513
	addsd	%xmm2, %xmm0	# tmp1513, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_310
	.loc 1 328 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1514
	addl	$6, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1515
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1516
	movsd	.LC3(%rip), %xmm0	#, tmp1517
	mulsd	%xmm0, %xmm1	# tmp1517, D.7698
	movsd	-64(%rbp), %xmm2	# uz, tmp1518
	movsd	.LC14(%rip), %xmm0	#, tmp1519
	mulsd	%xmm2, %xmm0	# tmp1518, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1520
	subsd	%xmm2, %xmm0	# tmp1520, D.7698
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1521
	addsd	%xmm2, %xmm0	# tmp1521, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_321
	.loc 1 330 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1522
	addl	$7, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1523
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1524
	movsd	.LC4(%rip), %xmm0	#, tmp1525
	mulsd	%xmm0, %xmm1	# tmp1525, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1526
	movapd	%xmm0, %xmm2	# tmp1526, D.7698
	addsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1527
	addsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1528
	mulsd	%xmm3, %xmm0	# tmp1528, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1529
	addsd	%xmm3, %xmm0	# tmp1529, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1530
	addsd	%xmm2, %xmm0	# tmp1530, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_332
	.loc 1 331 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1531
	addl	$8, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1532
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1533
	movsd	.LC4(%rip), %xmm0	#, tmp1534
	mulsd	%xmm0, %xmm1	# tmp1534, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1535
	movapd	%xmm0, %xmm2	# tmp1535, D.7698
	subsd	-80(%rbp), %xmm2	# ux, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1536
	subsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1537
	mulsd	%xmm3, %xmm0	# tmp1537, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1538
	addsd	%xmm3, %xmm0	# tmp1538, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1539
	addsd	%xmm2, %xmm0	# tmp1539, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_345
	.loc 1 332 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1540
	addl	$9, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1541
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1542
	movsd	.LC4(%rip), %xmm0	#, tmp1543
	mulsd	%xmm0, %xmm1	# tmp1543, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1544
	movapd	%xmm0, %xmm2	# tmp1544, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1545
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1546
	mulsd	%xmm3, %xmm0	# tmp1546, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1547
	addsd	%xmm3, %xmm0	# tmp1547, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1548
	addsd	%xmm2, %xmm0	# tmp1548, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_358
	.loc 1 333 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1549
	addl	$10, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1550
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1551
	movsd	.LC4(%rip), %xmm0	#, tmp1552
	mulsd	%xmm0, %xmm1	# tmp1552, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1553
	movsd	.LC17(%rip), %xmm0	#, tmp1554
	xorpd	%xmm2, %xmm0	# tmp1553, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm3	# ux, tmp1555
	movsd	.LC17(%rip), %xmm0	#, tmp1556
	xorpd	%xmm3, %xmm0	# tmp1555, D.7698
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1557
	mulsd	%xmm3, %xmm0	# tmp1557, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1558
	addsd	%xmm3, %xmm0	# tmp1558, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1559
	addsd	%xmm2, %xmm0	# tmp1559, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_371
	.loc 1 334 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1560
	addl	$11, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1561
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1562
	movsd	.LC4(%rip), %xmm0	#, tmp1563
	mulsd	%xmm0, %xmm1	# tmp1563, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1564
	movapd	%xmm0, %xmm2	# tmp1564, D.7698
	addsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1565
	addsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1566
	mulsd	%xmm3, %xmm0	# tmp1566, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1567
	addsd	%xmm3, %xmm0	# tmp1567, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1568
	addsd	%xmm2, %xmm0	# tmp1568, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_386
	.loc 1 335 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1569
	addl	$12, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1570
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1571
	movsd	.LC4(%rip), %xmm0	#, tmp1572
	mulsd	%xmm0, %xmm1	# tmp1572, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1573
	movapd	%xmm0, %xmm2	# tmp1573, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1574
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1575
	mulsd	%xmm3, %xmm0	# tmp1575, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1576
	addsd	%xmm3, %xmm0	# tmp1576, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1577
	addsd	%xmm2, %xmm0	# tmp1577, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_399
	.loc 1 336 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1578
	addl	$13, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1579
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1580
	movsd	.LC4(%rip), %xmm0	#, tmp1581
	mulsd	%xmm0, %xmm1	# tmp1581, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1582
	movapd	%xmm0, %xmm2	# tmp1582, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1583
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1584
	mulsd	%xmm3, %xmm0	# tmp1584, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1585
	addsd	%xmm3, %xmm0	# tmp1585, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1586
	addsd	%xmm2, %xmm0	# tmp1586, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_412
	.loc 1 337 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1587
	addl	$14, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1588
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1589
	movsd	.LC4(%rip), %xmm0	#, tmp1590
	mulsd	%xmm0, %xmm1	# tmp1590, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1591
	movsd	.LC17(%rip), %xmm0	#, tmp1592
	xorpd	%xmm2, %xmm0	# tmp1591, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm3	# uy, tmp1593
	movsd	.LC17(%rip), %xmm0	#, tmp1594
	xorpd	%xmm3, %xmm0	# tmp1593, D.7698
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1595
	mulsd	%xmm3, %xmm0	# tmp1595, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1596
	addsd	%xmm3, %xmm0	# tmp1596, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1597
	addsd	%xmm2, %xmm0	# tmp1597, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_425
	.loc 1 338 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1598
	addl	$15, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1599
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1600
	movsd	.LC4(%rip), %xmm0	#, tmp1601
	mulsd	%xmm0, %xmm1	# tmp1601, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1602
	movapd	%xmm0, %xmm2	# tmp1602, D.7698
	addsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1603
	addsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1604
	mulsd	%xmm3, %xmm0	# tmp1604, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1605
	addsd	%xmm3, %xmm0	# tmp1605, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1606
	addsd	%xmm2, %xmm0	# tmp1606, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_440
	.loc 1 339 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1607
	addl	$16, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1608
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1609
	movsd	.LC4(%rip), %xmm0	#, tmp1610
	mulsd	%xmm0, %xmm1	# tmp1610, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1611
	movapd	%xmm0, %xmm2	# tmp1611, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1612
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1613
	mulsd	%xmm3, %xmm0	# tmp1613, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1614
	addsd	%xmm3, %xmm0	# tmp1614, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1615
	addsd	%xmm2, %xmm0	# tmp1615, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_453
	.loc 1 340 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1616
	addl	$17, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1617
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1618
	movsd	.LC4(%rip), %xmm0	#, tmp1619
	mulsd	%xmm0, %xmm1	# tmp1619, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1620
	movapd	%xmm0, %xmm2	# tmp1620, D.7698
	subsd	-80(%rbp), %xmm2	# ux, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1621
	subsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1622
	mulsd	%xmm3, %xmm0	# tmp1622, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1623
	addsd	%xmm3, %xmm0	# tmp1623, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1624
	addsd	%xmm2, %xmm0	# tmp1624, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_466
	.loc 1 341 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1625
	addl	$18, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1626
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1627
	movsd	.LC4(%rip), %xmm0	#, tmp1628
	mulsd	%xmm0, %xmm1	# tmp1628, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1629
	movsd	.LC17(%rip), %xmm0	#, tmp1630
	xorpd	%xmm2, %xmm0	# tmp1629, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm3	# ux, tmp1631
	movsd	.LC17(%rip), %xmm0	#, tmp1632
	xorpd	%xmm3, %xmm0	# tmp1631, D.7698
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1633
	mulsd	%xmm3, %xmm0	# tmp1633, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1634
	addsd	%xmm3, %xmm0	# tmp1634, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1635
	addsd	%xmm2, %xmm0	# tmp1635, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_479
	.loc 1 289 0 discriminator 2
	addl	$20, -124(%rbp)	#, i
.L46:
	.loc 1 289 0 is_stmt 0 discriminator 1
	cmpl	$199999, -124(%rbp)	#, i
	jle	.L47	#,
	.loc 1 353 0 is_stmt 1
	movl	$25800000, -124(%rbp)	#, i
	jmp	.L48	#
.L49:
	.loc 1 354 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1636
	subl	$200000, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1637
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_496, D.7698
	movl	-124(%rbp), %eax	# i, tmp1638
	subl	$199999, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1639
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_501, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 355 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1640
	subl	$199998, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1641
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_507, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1642
	subl	$199997, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1643
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_513, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 356 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1644
	subl	$199996, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1645
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_519, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1646
	subl	$199995, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1647
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_525, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 357 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1648
	subl	$199994, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1649
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_531, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1650
	subl	$199993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1651
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_537, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 358 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1652
	subl	$199992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1653
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_543, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1654
	subl	$199991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1655
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_549, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 359 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1656
	subl	$199990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1657
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_555, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1658
	subl	$199989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1659
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_561, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 360 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1660
	subl	$199988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1661
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_567, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1662
	subl	$199987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1663
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_573, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 361 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1664
	subl	$199986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1665
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_579, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1666
	subl	$199985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1667
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_585, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 362 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1668
	subl	$199984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1669
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_591, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1670
	subl	$199983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1671
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_597, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 363 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1672
	subl	$199982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1673
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_603, D.7698
	.loc 1 354 0 discriminator 2
	addsd	%xmm1, %xmm0	# D.7698, tmp1674
	movsd	%xmm0, -120(%rbp)	# tmp1674, rho1
	.loc 1 364 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1675
	subl	$199997, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1676
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_609, D.7698
	movl	-124(%rbp), %eax	# i, tmp1677
	subl	$199996, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1678
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_614, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 365 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1679
	subl	$199993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1680
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_620, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1681
	subl	$199992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1682
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_626, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 366 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1683
	subl	$199991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1684
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_632, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1685
	subl	$199990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1686
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_638, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 367 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1687
	subl	$199985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1688
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_644, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1689
	subl	$199984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1690
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_650, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 368 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1691
	subl	$199983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1692
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_656, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1693
	subl	$199982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1694
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_662, D.7698
	.loc 1 364 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1695
	movsd	%xmm0, -48(%rbp)	# tmp1695, ux1
	.loc 1 369 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1696
	subl	$199999, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1697
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_668, D.7698
	movl	-124(%rbp), %eax	# i, tmp1698
	subl	$199998, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1699
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_673, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 370 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1700
	subl	$199993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1701
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_679, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1702
	subl	$199992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1703
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_685, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 371 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1704
	subl	$199991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1705
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_691, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1706
	subl	$199990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1707
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_697, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 372 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1708
	subl	$199989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1709
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_703, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1710
	subl	$199988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1711
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_709, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 373 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1712
	subl	$199987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1713
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_715, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1714
	subl	$199986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1715
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_721, D.7698
	.loc 1 369 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1716
	movsd	%xmm0, -40(%rbp)	# tmp1716, uy1
	.loc 1 374 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1717
	subl	$199995, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1718
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_727, D.7698
	movl	-124(%rbp), %eax	# i, tmp1719
	subl	$199994, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1720
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_732, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 375 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1721
	subl	$199989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1722
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_738, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1723
	subl	$199988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1724
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_744, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 376 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1725
	subl	$199987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1726
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_750, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1727
	subl	$199986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1728
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_756, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 377 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1729
	subl	$199985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1730
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_762, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1731
	subl	$199984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1732
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_768, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 378 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1733
	subl	$199983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1734
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_774, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1735
	subl	$199982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1736
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_780, D.7698
	.loc 1 374 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1737
	movsd	%xmm0, -32(%rbp)	# tmp1737, uz1
	.loc 1 380 0 discriminator 2
	movsd	-48(%rbp), %xmm0	# ux1, tmp1739
	divsd	-120(%rbp), %xmm0	# rho1, tmp1738
	movsd	%xmm0, -48(%rbp)	# tmp1738, ux1
	.loc 1 381 0 discriminator 2
	movsd	-40(%rbp), %xmm0	# uy1, tmp1741
	divsd	-120(%rbp), %xmm0	# rho1, tmp1740
	movsd	%xmm0, -40(%rbp)	# tmp1740, uy1
	.loc 1 382 0 discriminator 2
	movsd	-32(%rbp), %xmm0	# uz1, tmp1743
	divsd	-120(%rbp), %xmm0	# rho1, tmp1742
	movsd	%xmm0, -32(%rbp)	# tmp1742, uz1
	.loc 1 384 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1744
	subl	$400000, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1745
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_789, D.7698
	movl	-124(%rbp), %eax	# i, tmp1746
	subl	$399999, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1747
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_794, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 385 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1748
	subl	$399998, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1749
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_800, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1750
	subl	$399997, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1751
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_806, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 386 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1752
	subl	$399996, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1753
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_812, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1754
	subl	$399995, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1755
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_818, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 387 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1756
	subl	$399994, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1757
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_824, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1758
	subl	$399993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1759
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_830, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 388 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1760
	subl	$399992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1761
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_836, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1762
	subl	$399991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1763
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_842, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 389 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1764
	subl	$399990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1765
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_848, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1766
	subl	$399989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1767
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_854, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 390 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1768
	subl	$399988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1769
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_860, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1770
	subl	$399987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1771
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_866, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 391 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1772
	subl	$399986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1773
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_872, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1774
	subl	$399985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1775
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_878, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 392 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1776
	subl	$399984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1777
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_884, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1778
	subl	$399983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1779
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_890, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 393 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1780
	subl	$399982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1781
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_896, D.7698
	.loc 1 384 0 discriminator 2
	addsd	%xmm1, %xmm0	# D.7698, tmp1782
	movsd	%xmm0, -112(%rbp)	# tmp1782, rho2
	.loc 1 394 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1783
	subl	$399997, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1784
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_902, D.7698
	movl	-124(%rbp), %eax	# i, tmp1785
	subl	$399996, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1786
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_907, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 395 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1787
	subl	$399993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1788
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_913, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1789
	subl	$399992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1790
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_919, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 396 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1791
	subl	$399991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1792
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_925, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1793
	subl	$399990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1794
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_931, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 397 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1795
	subl	$399985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1796
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_937, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1797
	subl	$399984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1798
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_943, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 398 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1799
	subl	$399983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1800
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_949, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1801
	subl	$399982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1802
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_955, D.7698
	.loc 1 394 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1803
	movsd	%xmm0, -24(%rbp)	# tmp1803, ux2
	.loc 1 399 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1804
	subl	$399999, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1805
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_961, D.7698
	movl	-124(%rbp), %eax	# i, tmp1806
	subl	$399998, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1807
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_966, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 400 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1808
	subl	$399993, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1809
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_972, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1810
	subl	$399992, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1811
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_978, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 401 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1812
	subl	$399991, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1813
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_984, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1814
	subl	$399990, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1815
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_990, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 402 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1816
	subl	$399989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1817
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_996, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1818
	subl	$399988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1819
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1002, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 403 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1820
	subl	$399987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1821
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1008, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1822
	subl	$399986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1823
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1014, D.7698
	.loc 1 399 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1824
	movsd	%xmm0, -16(%rbp)	# tmp1824, uy2
	.loc 1 404 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1825
	subl	$399995, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1826
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm0	# *_1020, D.7698
	movl	-124(%rbp), %eax	# i, tmp1827
	subl	$399994, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1828
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1025, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 405 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1829
	subl	$399989, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1830
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1031, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1831
	subl	$399988, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1832
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1037, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 406 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1833
	subl	$399987, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1834
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1043, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1835
	subl	$399986, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1836
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1049, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 407 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1837
	subl	$399985, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1838
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1055, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1839
	subl	$399984, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1840
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1061, D.7698
	subsd	%xmm1, %xmm0	# D.7698, D.7698
	.loc 1 408 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1841
	subl	$399983, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1842
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1067, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movl	-124(%rbp), %eax	# i, tmp1843
	subl	$399982, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1844
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	(%rax), %xmm1	# *_1073, D.7698
	.loc 1 404 0 discriminator 2
	subsd	%xmm1, %xmm0	# D.7698, tmp1845
	movsd	%xmm0, -8(%rbp)	# tmp1845, uz2
	.loc 1 410 0 discriminator 2
	movsd	-24(%rbp), %xmm0	# ux2, tmp1847
	divsd	-112(%rbp), %xmm0	# rho2, tmp1846
	movsd	%xmm0, -24(%rbp)	# tmp1846, ux2
	.loc 1 411 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# uy2, tmp1849
	divsd	-112(%rbp), %xmm0	# rho2, tmp1848
	movsd	%xmm0, -16(%rbp)	# tmp1848, uy2
	.loc 1 412 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# uz2, tmp1851
	divsd	-112(%rbp), %xmm0	# rho2, tmp1850
	movsd	%xmm0, -8(%rbp)	# tmp1850, uz2
	.loc 1 414 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, tmp1852
	movq	%rax, -104(%rbp)	# tmp1852, rho
	.loc 1 416 0 discriminator 2
	movsd	-48(%rbp), %xmm0	# ux1, tmp1853
	addsd	%xmm0, %xmm0	# tmp1853, D.7698
	subsd	-24(%rbp), %xmm0	# ux2, tmp1854
	movsd	%xmm0, -80(%rbp)	# tmp1854, ux
	.loc 1 417 0 discriminator 2
	movsd	-40(%rbp), %xmm0	# uy1, tmp1855
	addsd	%xmm0, %xmm0	# tmp1855, D.7698
	subsd	-16(%rbp), %xmm0	# uy2, tmp1856
	movsd	%xmm0, -72(%rbp)	# tmp1856, uy
	.loc 1 418 0 discriminator 2
	movsd	-32(%rbp), %xmm0	# uz1, tmp1857
	addsd	%xmm0, %xmm0	# tmp1857, D.7698
	subsd	-8(%rbp), %xmm0	# uz2, tmp1858
	movsd	%xmm0, -64(%rbp)	# tmp1858, uz
	.loc 1 420 0 discriminator 2
	movsd	-80(%rbp), %xmm0	# ux, tmp1859
	movapd	%xmm0, %xmm1	# tmp1859, D.7698
	mulsd	-80(%rbp), %xmm1	# ux, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1860
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	addsd	%xmm0, %xmm1	# D.7698, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1861
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	addsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	.LC9(%rip), %xmm1	#, tmp1863
	mulsd	%xmm1, %xmm0	# tmp1863, tmp1862
	movsd	%xmm0, -56(%rbp)	# tmp1862, u2
	.loc 1 422 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1864
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1865
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1866
	movsd	.LC2(%rip), %xmm0	#, tmp1867
	mulsd	%xmm0, %xmm1	# tmp1867, D.7698
	movsd	.LC12(%rip), %xmm0	#, tmp1868
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1094
	.loc 1 424 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1869
	addl	$1, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1870
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1871
	movsd	.LC3(%rip), %xmm0	#, tmp1872
	mulsd	%xmm0, %xmm1	# tmp1872, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1873
	movsd	.LC14(%rip), %xmm0	#, tmp1874
	mulsd	%xmm2, %xmm0	# tmp1873, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1875
	addsd	%xmm2, %xmm0	# tmp1875, D.7698
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1876
	addsd	%xmm2, %xmm0	# tmp1876, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1101
	.loc 1 425 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1877
	addl	$2, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1878
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1879
	movsd	.LC3(%rip), %xmm0	#, tmp1880
	mulsd	%xmm0, %xmm1	# tmp1880, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1881
	movsd	.LC14(%rip), %xmm0	#, tmp1882
	mulsd	%xmm2, %xmm0	# tmp1881, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1883
	subsd	%xmm2, %xmm0	# tmp1883, D.7698
	mulsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1884
	addsd	%xmm2, %xmm0	# tmp1884, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1112
	.loc 1 426 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1885
	addl	$3, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1886
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1887
	movsd	.LC3(%rip), %xmm0	#, tmp1888
	mulsd	%xmm0, %xmm1	# tmp1888, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1889
	movsd	.LC14(%rip), %xmm0	#, tmp1890
	mulsd	%xmm2, %xmm0	# tmp1889, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1891
	addsd	%xmm2, %xmm0	# tmp1891, D.7698
	mulsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1892
	addsd	%xmm2, %xmm0	# tmp1892, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1123
	.loc 1 427 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1893
	addl	$4, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1894
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1895
	movsd	.LC3(%rip), %xmm0	#, tmp1896
	mulsd	%xmm0, %xmm1	# tmp1896, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1897
	movsd	.LC14(%rip), %xmm0	#, tmp1898
	mulsd	%xmm2, %xmm0	# tmp1897, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1899
	subsd	%xmm2, %xmm0	# tmp1899, D.7698
	mulsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1900
	addsd	%xmm2, %xmm0	# tmp1900, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1134
	.loc 1 428 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1901
	addl	$5, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1902
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1903
	movsd	.LC3(%rip), %xmm0	#, tmp1904
	mulsd	%xmm0, %xmm1	# tmp1904, D.7698
	movsd	-64(%rbp), %xmm2	# uz, tmp1905
	movsd	.LC14(%rip), %xmm0	#, tmp1906
	mulsd	%xmm2, %xmm0	# tmp1905, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1907
	addsd	%xmm2, %xmm0	# tmp1907, D.7698
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1908
	addsd	%xmm2, %xmm0	# tmp1908, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1145
	.loc 1 429 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1909
	addl	$6, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1910
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1911
	movsd	.LC3(%rip), %xmm0	#, tmp1912
	mulsd	%xmm0, %xmm1	# tmp1912, D.7698
	movsd	-64(%rbp), %xmm2	# uz, tmp1913
	movsd	.LC14(%rip), %xmm0	#, tmp1914
	mulsd	%xmm2, %xmm0	# tmp1913, D.7698
	movsd	.LC15(%rip), %xmm2	#, tmp1915
	subsd	%xmm2, %xmm0	# tmp1915, D.7698
	mulsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1916
	addsd	%xmm2, %xmm0	# tmp1916, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1156
	.loc 1 431 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1917
	addl	$7, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1918
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1919
	movsd	.LC4(%rip), %xmm0	#, tmp1920
	mulsd	%xmm0, %xmm1	# tmp1920, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1921
	movapd	%xmm0, %xmm2	# tmp1921, D.7698
	addsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1922
	addsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1923
	mulsd	%xmm3, %xmm0	# tmp1923, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1924
	addsd	%xmm3, %xmm0	# tmp1924, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1925
	addsd	%xmm2, %xmm0	# tmp1925, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1167
	.loc 1 432 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1926
	addl	$8, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1927
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1928
	movsd	.LC4(%rip), %xmm0	#, tmp1929
	mulsd	%xmm0, %xmm1	# tmp1929, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1930
	movapd	%xmm0, %xmm2	# tmp1930, D.7698
	subsd	-80(%rbp), %xmm2	# ux, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1931
	subsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1932
	mulsd	%xmm3, %xmm0	# tmp1932, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1933
	addsd	%xmm3, %xmm0	# tmp1933, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1934
	addsd	%xmm2, %xmm0	# tmp1934, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1180
	.loc 1 433 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1935
	addl	$9, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1936
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1937
	movsd	.LC4(%rip), %xmm0	#, tmp1938
	mulsd	%xmm0, %xmm1	# tmp1938, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1939
	movapd	%xmm0, %xmm2	# tmp1939, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1940
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1941
	mulsd	%xmm3, %xmm0	# tmp1941, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1942
	addsd	%xmm3, %xmm0	# tmp1942, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1943
	addsd	%xmm2, %xmm0	# tmp1943, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1193
	.loc 1 434 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1944
	addl	$10, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1945
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1946
	movsd	.LC4(%rip), %xmm0	#, tmp1947
	mulsd	%xmm0, %xmm1	# tmp1947, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp1948
	movsd	.LC17(%rip), %xmm0	#, tmp1949
	xorpd	%xmm2, %xmm0	# tmp1948, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-80(%rbp), %xmm3	# ux, tmp1950
	movsd	.LC17(%rip), %xmm0	#, tmp1951
	xorpd	%xmm3, %xmm0	# tmp1950, D.7698
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1952
	mulsd	%xmm3, %xmm0	# tmp1952, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1953
	addsd	%xmm3, %xmm0	# tmp1953, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1954
	addsd	%xmm2, %xmm0	# tmp1954, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1206
	.loc 1 435 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1955
	addl	$11, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1956
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1957
	movsd	.LC4(%rip), %xmm0	#, tmp1958
	mulsd	%xmm0, %xmm1	# tmp1958, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1959
	movapd	%xmm0, %xmm2	# tmp1959, D.7698
	addsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1960
	addsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1961
	mulsd	%xmm3, %xmm0	# tmp1961, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1962
	addsd	%xmm3, %xmm0	# tmp1962, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1963
	addsd	%xmm2, %xmm0	# tmp1963, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1221
	.loc 1 436 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1964
	addl	$12, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1965
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1966
	movsd	.LC4(%rip), %xmm0	#, tmp1967
	mulsd	%xmm0, %xmm1	# tmp1967, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1968
	movapd	%xmm0, %xmm2	# tmp1968, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm0	# uy, tmp1969
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1970
	mulsd	%xmm3, %xmm0	# tmp1970, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1971
	addsd	%xmm3, %xmm0	# tmp1971, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1972
	addsd	%xmm2, %xmm0	# tmp1972, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1234
	.loc 1 437 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1973
	addl	$13, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1974
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1975
	movsd	.LC4(%rip), %xmm0	#, tmp1976
	mulsd	%xmm0, %xmm1	# tmp1976, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1977
	movapd	%xmm0, %xmm2	# tmp1977, D.7698
	subsd	-72(%rbp), %xmm2	# uy, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp1978
	subsd	-72(%rbp), %xmm0	# uy, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1979
	mulsd	%xmm3, %xmm0	# tmp1979, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1980
	addsd	%xmm3, %xmm0	# tmp1980, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1981
	addsd	%xmm2, %xmm0	# tmp1981, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1247
	.loc 1 438 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1982
	addl	$14, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1983
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1984
	movsd	.LC4(%rip), %xmm0	#, tmp1985
	mulsd	%xmm0, %xmm1	# tmp1985, D.7698
	movsd	-72(%rbp), %xmm2	# uy, tmp1986
	movsd	.LC17(%rip), %xmm0	#, tmp1987
	xorpd	%xmm2, %xmm0	# tmp1986, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-72(%rbp), %xmm3	# uy, tmp1988
	movsd	.LC17(%rip), %xmm0	#, tmp1989
	xorpd	%xmm3, %xmm0	# tmp1988, D.7698
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1990
	mulsd	%xmm3, %xmm0	# tmp1990, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp1991
	addsd	%xmm3, %xmm0	# tmp1991, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp1992
	addsd	%xmm2, %xmm0	# tmp1992, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1260
	.loc 1 439 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp1993
	addl	$15, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp1994
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp1995
	movsd	.LC4(%rip), %xmm0	#, tmp1996
	mulsd	%xmm0, %xmm1	# tmp1996, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1997
	movapd	%xmm0, %xmm2	# tmp1997, D.7698
	addsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp1998
	addsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp1999
	mulsd	%xmm3, %xmm0	# tmp1999, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp2000
	addsd	%xmm3, %xmm0	# tmp2000, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp2001
	addsd	%xmm2, %xmm0	# tmp2001, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1275
	.loc 1 440 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp2002
	addl	$16, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp2003
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp2004
	movsd	.LC4(%rip), %xmm0	#, tmp2005
	mulsd	%xmm0, %xmm1	# tmp2005, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp2006
	movapd	%xmm0, %xmm2	# tmp2006, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm0	# ux, tmp2007
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp2008
	mulsd	%xmm3, %xmm0	# tmp2008, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp2009
	addsd	%xmm3, %xmm0	# tmp2009, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp2010
	addsd	%xmm2, %xmm0	# tmp2010, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1288
	.loc 1 441 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp2011
	addl	$17, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp2012
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp2013
	movsd	.LC4(%rip), %xmm0	#, tmp2014
	mulsd	%xmm0, %xmm1	# tmp2014, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp2015
	movapd	%xmm0, %xmm2	# tmp2015, D.7698
	subsd	-80(%rbp), %xmm2	# ux, D.7698
	movsd	-64(%rbp), %xmm0	# uz, tmp2016
	subsd	-80(%rbp), %xmm0	# ux, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp2017
	mulsd	%xmm3, %xmm0	# tmp2017, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp2018
	addsd	%xmm3, %xmm0	# tmp2018, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp2019
	addsd	%xmm2, %xmm0	# tmp2019, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1301
	.loc 1 442 0 discriminator 2
	movl	-124(%rbp), %eax	# i, tmp2020
	addl	$18, %eax	#, D.7695
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7696
	movq	-136(%rbp), %rax	# srcGrid, tmp2021
	addq	%rdx, %rax	# D.7696, D.7697
	movsd	-104(%rbp), %xmm1	# rho, tmp2022
	movsd	.LC4(%rip), %xmm0	#, tmp2023
	mulsd	%xmm0, %xmm1	# tmp2023, D.7698
	movsd	-80(%rbp), %xmm2	# ux, tmp2024
	movsd	.LC17(%rip), %xmm0	#, tmp2025
	xorpd	%xmm2, %xmm0	# tmp2024, D.7698
	movapd	%xmm0, %xmm2	# D.7698, D.7698
	subsd	-64(%rbp), %xmm2	# uz, D.7698
	movsd	-80(%rbp), %xmm3	# ux, tmp2026
	movsd	.LC17(%rip), %xmm0	#, tmp2027
	xorpd	%xmm3, %xmm0	# tmp2026, D.7698
	subsd	-64(%rbp), %xmm0	# uz, D.7698
	movsd	.LC14(%rip), %xmm3	#, tmp2028
	mulsd	%xmm3, %xmm0	# tmp2028, D.7698
	movsd	.LC15(%rip), %xmm3	#, tmp2029
	addsd	%xmm3, %xmm0	# tmp2029, D.7698
	mulsd	%xmm2, %xmm0	# D.7698, D.7698
	movsd	.LC12(%rip), %xmm2	#, tmp2030
	addsd	%xmm2, %xmm0	# tmp2030, D.7698
	subsd	-56(%rbp), %xmm0	# u2, D.7698
	mulsd	%xmm1, %xmm0	# D.7698, D.7698
	movsd	%xmm0, (%rax)	# D.7698, *_1314
	.loc 1 353 0 discriminator 2
	addl	$20, -124(%rbp)	#, i
.L48:
	.loc 1 353 0 is_stmt 0 discriminator 1
	cmpl	$25999999, -124(%rbp)	#, i
	jle	.L49	#,
	.loc 1 444 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	LBM_handleInOutFlow, .-LBM_handleInOutFlow
	.section	.rodata
	.align 8
.LC22:
	.string	"LBM_showGridStatistics:\n\tnObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\n\tminRho: %8.4f maxRho: %8.4f mass: %e\n\tminU: %e maxU: %e\n\n"
	.text
	.globl	LBM_showGridStatistics
	.type	LBM_showGridStatistics, @function
LBM_showGridStatistics:
.LFB11:
	.loc 1 448 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# grid, grid
	.loc 1 449 0
	movl	$0, -112(%rbp)	#, nObstacleCells
	.loc 1 450 0
	movl	$0, -108(%rbp)	#, nAccelCells
	.loc 1 451 0
	movl	$0, -104(%rbp)	#, nFluidCells
	.loc 1 453 0
	movabsq	$5055640609639927018, %rax	#, tmp364
	movq	%rax, -96(%rbp)	# tmp364, minU2
	movabsq	$-4167731427214848790, %rax	#, tmp365
	movq	%rax, -88(%rbp)	# tmp365, maxU2
	.loc 1 454 0
	movabsq	$5055640609639927018, %rax	#, tmp366
	movq	%rax, -80(%rbp)	# tmp366, minRho
	movabsq	$-4167731427214848790, %rax	#, tmp367
	movq	%rax, -72(%rbp)	# tmp367, maxRho
	.loc 1 455 0
	movl	$0, %eax	#, tmp368
	movq	%rax, -64(%rbp)	# tmp368, mass
	.loc 1 459 0
	movl	$0, -100(%rbp)	#, i
	jmp	.L51	#
.L63:
	.loc 1 460 0
	movl	-100(%rbp), %eax	# i, tmp369
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp370
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_32, D.7701
	movl	-100(%rbp), %eax	# i, tmp371
	addl	$1, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp372
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm0	# *_37, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 461 0
	movl	-100(%rbp), %eax	# i, tmp373
	addl	$2, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp374
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_43, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp375
	addl	$3, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp376
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_49, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 462 0
	movl	-100(%rbp), %eax	# i, tmp377
	addl	$4, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp378
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_55, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp379
	addl	$5, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp380
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_61, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 463 0
	movl	-100(%rbp), %eax	# i, tmp381
	addl	$6, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp382
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_67, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp383
	addl	$7, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp384
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_73, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 464 0
	movl	-100(%rbp), %eax	# i, tmp385
	addl	$8, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp386
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_79, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp387
	addl	$9, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp388
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_85, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 465 0
	movl	-100(%rbp), %eax	# i, tmp389
	addl	$10, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp390
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_91, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp391
	addl	$11, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp392
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_97, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 466 0
	movl	-100(%rbp), %eax	# i, tmp393
	addl	$12, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp394
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_103, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp395
	addl	$13, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp396
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_109, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 467 0
	movl	-100(%rbp), %eax	# i, tmp397
	addl	$14, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp398
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_115, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp399
	addl	$15, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp400
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_121, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 468 0
	movl	-100(%rbp), %eax	# i, tmp401
	addl	$16, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp402
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_127, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp403
	addl	$17, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp404
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_133, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 469 0
	movl	-100(%rbp), %eax	# i, tmp405
	addl	$18, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp406
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_139, D.7701
	.loc 1 460 0
	addsd	%xmm1, %xmm0	# D.7701, tmp407
	movsd	%xmm0, -56(%rbp)	# tmp407, rho
	.loc 1 470 0
	movsd	-80(%rbp), %xmm0	# minRho, tmp408
	ucomisd	-56(%rbp), %xmm0	# rho, tmp408
	jbe	.L52	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rho, tmp409
	movq	%rax, -80(%rbp)	# tmp409, minRho
.L52:
	.loc 1 471 0 is_stmt 1
	movsd	-56(%rbp), %xmm0	# rho, tmp410
	ucomisd	-72(%rbp), %xmm0	# maxRho, tmp410
	jbe	.L54	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# rho, tmp411
	movq	%rax, -72(%rbp)	# tmp411, maxRho
.L54:
	.loc 1 472 0 is_stmt 1
	movsd	-64(%rbp), %xmm0	# mass, tmp413
	addsd	-56(%rbp), %xmm0	# rho, tmp412
	movsd	%xmm0, -64(%rbp)	# tmp412, mass
	.loc 1 474 0
	movl	-100(%rbp), %eax	# i, tmp414
	addl	$19, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp415
	addq	%rdx, %rax	# D.7699, D.7703
	movl	(%rax), %eax	# *_148, D.7704
	andl	$1, %eax	#, D.7704
	testl	%eax, %eax	# D.7704
	je	.L56	#,
	.loc 1 475 0
	addl	$1, -112(%rbp)	#, nObstacleCells
	jmp	.L57	#
.L56:
	.loc 1 478 0
	movl	-100(%rbp), %eax	# i, tmp416
	addl	$19, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp417
	addq	%rdx, %rax	# D.7699, D.7703
	movl	(%rax), %eax	# *_155, D.7704
	andl	$2, %eax	#, D.7704
	testl	%eax, %eax	# D.7704
	je	.L58	#,
	.loc 1 479 0
	addl	$1, -108(%rbp)	#, nAccelCells
	jmp	.L59	#
.L58:
	.loc 1 481 0
	addl	$1, -104(%rbp)	#, nFluidCells
.L59:
	.loc 1 483 0
	movl	-100(%rbp), %eax	# i, tmp418
	addl	$3, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp419
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm0	# *_163, D.7701
	movl	-100(%rbp), %eax	# i, tmp420
	addl	$4, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp421
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_168, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 484 0
	movl	-100(%rbp), %eax	# i, tmp422
	addl	$7, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp423
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_174, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp424
	addl	$8, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp425
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_180, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 485 0
	movl	-100(%rbp), %eax	# i, tmp426
	addl	$9, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp427
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_186, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp428
	addl	$10, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp429
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_192, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 486 0
	movl	-100(%rbp), %eax	# i, tmp430
	addl	$15, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp431
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_198, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp432
	addl	$16, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp433
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_204, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 487 0
	movl	-100(%rbp), %eax	# i, tmp434
	addl	$17, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp435
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_210, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp436
	addl	$18, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp437
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_216, D.7701
	.loc 1 483 0
	subsd	%xmm1, %xmm0	# D.7701, tmp438
	movsd	%xmm0, -48(%rbp)	# tmp438, ux
	.loc 1 488 0
	movl	-100(%rbp), %eax	# i, tmp439
	addl	$1, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp440
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm0	# *_222, D.7701
	movl	-100(%rbp), %eax	# i, tmp441
	addl	$2, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp442
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_227, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 489 0
	movl	-100(%rbp), %eax	# i, tmp443
	addl	$7, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp444
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_233, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp445
	addl	$8, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp446
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_239, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 490 0
	movl	-100(%rbp), %eax	# i, tmp447
	addl	$9, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp448
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_245, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp449
	addl	$10, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp450
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_251, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 491 0
	movl	-100(%rbp), %eax	# i, tmp451
	addl	$11, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp452
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_257, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp453
	addl	$12, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp454
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_263, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 492 0
	movl	-100(%rbp), %eax	# i, tmp455
	addl	$13, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp456
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_269, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp457
	addl	$14, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp458
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_275, D.7701
	.loc 1 488 0
	subsd	%xmm1, %xmm0	# D.7701, tmp459
	movsd	%xmm0, -40(%rbp)	# tmp459, uy
	.loc 1 493 0
	movl	-100(%rbp), %eax	# i, tmp460
	addl	$5, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp461
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm0	# *_281, D.7701
	movl	-100(%rbp), %eax	# i, tmp462
	addl	$6, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp463
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_286, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 494 0
	movl	-100(%rbp), %eax	# i, tmp464
	addl	$11, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp465
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_292, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp466
	addl	$12, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp467
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_298, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 495 0
	movl	-100(%rbp), %eax	# i, tmp468
	addl	$13, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp469
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_304, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp470
	addl	$14, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp471
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_310, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 496 0
	movl	-100(%rbp), %eax	# i, tmp472
	addl	$15, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp473
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_316, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp474
	addl	$16, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp475
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_322, D.7701
	subsd	%xmm1, %xmm0	# D.7701, D.7701
	.loc 1 497 0
	movl	-100(%rbp), %eax	# i, tmp476
	addl	$17, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp477
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_328, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movl	-100(%rbp), %eax	# i, tmp478
	addl	$18, %eax	#, D.7702
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7699
	movq	-120(%rbp), %rax	# grid, tmp479
	addq	%rdx, %rax	# D.7699, D.7700
	movsd	(%rax), %xmm1	# *_334, D.7701
	.loc 1 493 0
	subsd	%xmm1, %xmm0	# D.7701, tmp480
	movsd	%xmm0, -32(%rbp)	# tmp480, uz
	.loc 1 498 0
	movsd	-48(%rbp), %xmm0	# ux, tmp481
	movapd	%xmm0, %xmm1	# tmp481, D.7701
	mulsd	-48(%rbp), %xmm1	# ux, D.7701
	movsd	-40(%rbp), %xmm0	# uy, tmp482
	mulsd	-40(%rbp), %xmm0	# uy, D.7701
	addsd	%xmm0, %xmm1	# D.7701, D.7701
	movsd	-32(%rbp), %xmm0	# uz, tmp483
	mulsd	-32(%rbp), %xmm0	# uz, D.7701
	addsd	%xmm1, %xmm0	# D.7701, D.7701
	movsd	-56(%rbp), %xmm1	# rho, tmp484
	mulsd	-56(%rbp), %xmm1	# rho, D.7701
	divsd	%xmm1, %xmm0	# D.7701, tmp485
	movsd	%xmm0, -24(%rbp)	# tmp485, u2
	.loc 1 499 0
	movsd	-96(%rbp), %xmm0	# minU2, tmp486
	ucomisd	-24(%rbp), %xmm0	# u2, tmp486
	jbe	.L60	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# u2, tmp487
	movq	%rax, -96(%rbp)	# tmp487, minU2
.L60:
	.loc 1 500 0 is_stmt 1
	movsd	-24(%rbp), %xmm0	# u2, tmp488
	ucomisd	-88(%rbp), %xmm0	# maxU2, tmp488
	jbe	.L57	#,
	.loc 1 500 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# u2, tmp489
	movq	%rax, -88(%rbp)	# tmp489, maxU2
.L57:
	.loc 1 459 0 is_stmt 1
	addl	$20, -100(%rbp)	#, i
.L51:
	.loc 1 459 0 is_stmt 0 discriminator 1
	cmpl	$25999999, -100(%rbp)	#, i
	jle	.L63	#,
	.loc 1 504 0 is_stmt 1
	movq	-88(%rbp), %rax	# maxU2, tmp490
	movq	%rax, -128(%rbp)	# tmp490, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	%xmm0, -128(%rbp)	#, %sfp
	movq	-128(%rbp), %rbx	# %sfp, D.7701
	movq	-96(%rbp), %rax	# minU2, tmp491
	movq	%rax, -128(%rbp)	# tmp491, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	call	sqrt	#
	movsd	%xmm0, -128(%rbp)	#, %sfp
	movq	-128(%rbp), %rax	# %sfp, D.7701
	movq	-64(%rbp), %rsi	# mass, tmp492
	movq	-72(%rbp), %rcx	# maxRho, tmp493
	movq	-80(%rbp), %rdx	# minRho, tmp494
	movl	-104(%rbp), %r9d	# nFluidCells, tmp495
	movl	-108(%rbp), %r8d	# nAccelCells, tmp496
	movl	-112(%rbp), %edi	# nObstacleCells, tmp497
	movq	%rbx, -128(%rbp)	# D.7701, %sfp
	movsd	-128(%rbp), %xmm4	# %sfp,
	movq	%rax, -128(%rbp)	# D.7701, %sfp
	movsd	-128(%rbp), %xmm3	# %sfp,
	movq	%rsi, -128(%rbp)	# tmp492, %sfp
	movsd	-128(%rbp), %xmm2	# %sfp,
	movq	%rcx, -128(%rbp)	# tmp493, %sfp
	movsd	-128(%rbp), %xmm1	# %sfp,
	movq	%rdx, -128(%rbp)	# tmp494, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	movl	%r9d, %ecx	# tmp495,
	movl	%r8d, %edx	# tmp496,
	movl	%edi, %esi	# tmp497,
	movl	$.LC22, %edi	#,
	movl	$5, %eax	#,
	call	printf	#
	.loc 1 512 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	LBM_showGridStatistics, .-LBM_showGridStatistics
	.type	storeValue, @function
storeValue:
.LFB12:
	.loc 1 516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movq	%rsi, -48(%rbp)	# v, v
	.loc 1 516 0
	movq	%fs:40, %rax	#, tmp76
	movq	%rax, -8(%rbp)	# tmp76, D.7711
	xorl	%eax, %eax	# tmp76
	.loc 1 517 0
	movl	$1, -32(%rbp)	#, litteBigEndianTest
	.loc 1 518 0
	leaq	-32(%rbp), %rax	#, litteBigEndianTest.0
	movzbl	(%rax), %eax	# MEM[(unsigned char *)litteBigEndianTest.0_2], D.7707
	testb	%al, %al	# D.7707
	jne	.L69	#,
.LBB8:
	.loc 1 519 0
	movq	-48(%rbp), %rax	# v, tmp66
	movq	%rax, -24(%rbp)	# tmp66, vPtr
	.loc 1 523 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L70	#
.L71:
	.loc 1 524 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp67
	cltq
	movl	$3, %edx	#, tmp68
	subq	%rax, %rdx	# D.7708, D.7708
	movq	-24(%rbp), %rax	# vPtr, tmp69
	addq	%rdx, %rax	# D.7708, D.7709
	movzbl	(%rax), %edx	# *_10, D.7710
	movl	-28(%rbp), %eax	# i, tmp71
	cltq
	movb	%dl, -16(%rbp,%rax)	# D.7710, buffer
	.loc 1 523 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L70:
	.loc 1 523 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, i.1
	cmpl	$3, %eax	#, i.1
	jbe	.L71	#,
	.loc 1 526 0 is_stmt 1
	movq	-40(%rbp), %rdx	# file, tmp72
	leaq	-16(%rbp), %rax	#, tmp73
	movq	%rdx, %rcx	# tmp72,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fwrite	#
.LBE8:
	jmp	.L68	#
.L69:
	.loc 1 529 0
	movq	-40(%rbp), %rdx	# file, tmp74
	movq	-48(%rbp), %rax	# v, tmp75
	movq	%rdx, %rcx	# tmp74,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	fwrite	#
.L68:
	.loc 1 531 0
	movq	-8(%rbp), %rax	# D.7711, tmp77
	xorq	%fs:40, %rax	#, tmp77
	je	.L73	#,
	call	__stack_chk_fail	#
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	storeValue, .-storeValue
	.type	loadValue, @function
loadValue:
.LFB13:
	.loc 1 535 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movq	%rsi, -48(%rbp)	# v, v
	.loc 1 535 0
	movq	%fs:40, %rax	#, tmp76
	movq	%rax, -8(%rbp)	# tmp76, D.7719
	xorl	%eax, %eax	# tmp76
	.loc 1 536 0
	movl	$1, -32(%rbp)	#, litteBigEndianTest
	.loc 1 537 0
	leaq	-32(%rbp), %rax	#, litteBigEndianTest.2
	movzbl	(%rax), %eax	# MEM[(unsigned char *)litteBigEndianTest.2_2], D.7714
	testb	%al, %al	# D.7714
	jne	.L75	#,
.LBB9:
	.loc 1 538 0
	movq	-48(%rbp), %rax	# v, tmp67
	movq	%rax, -24(%rbp)	# tmp67, vPtr
	.loc 1 542 0
	movq	-40(%rbp), %rdx	# file, tmp68
	leaq	-16(%rbp), %rax	#, tmp69
	movq	%rdx, %rcx	# tmp68,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	fread	#
	.loc 1 544 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L76	#
.L77:
	.loc 1 545 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp70
	movslq	%eax, %rdx	# tmp70, D.7715
	movq	-24(%rbp), %rax	# vPtr, tmp71
	addq	%rax, %rdx	# tmp71, D.7716
	movl	-28(%rbp), %eax	# i, tmp72
	cltq
	movl	$3, %ecx	#, tmp73
	subq	%rax, %rcx	# D.7717, D.7717
	movq	%rcx, %rax	# D.7717, D.7717
	movzbl	-16(%rbp,%rax), %eax	# buffer, D.7718
	movb	%al, (%rdx)	# D.7718, *_10
	.loc 1 544 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L76:
	.loc 1 544 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, i.3
	cmpl	$3, %eax	#, i.3
	jbe	.L77	#,
.LBE9:
	jmp	.L74	#
.L75:
	.loc 1 548 0 is_stmt 1
	movq	-40(%rbp), %rdx	# file, tmp74
	movq	-48(%rbp), %rax	# v, tmp75
	movq	%rdx, %rcx	# tmp74,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	fread	#
.L74:
	.loc 1 550 0
	movq	-8(%rbp), %rax	# D.7719, tmp77
	xorq	%fs:40, %rax	#, tmp77
	je	.L79	#,
	call	__stack_chk_fail	#
.L79:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	loadValue, .-loadValue
	.section	.rodata
.LC23:
	.string	"wb"
.LC24:
	.string	"w"
.LC25:
	.string	"%e %e %e\n"
	.text
	.globl	LBM_storeVelocityField
	.type	LBM_storeVelocityField, @function
LBM_storeVelocityField:
.LFB14:
	.loc 1 555 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# grid, grid
	movq	%rsi, -64(%rbp)	# filename, filename
	movl	%edx, -68(%rbp)	# binary, binary
	.loc 1 559 0
	cmpl	$0, -68(%rbp)	#, binary
	je	.L81	#,
	.loc 1 559 0 is_stmt 0 discriminator 1
	movl	$.LC23, %eax	#, iftmp.4
	jmp	.L82	#
.L81:
	.loc 1 559 0 discriminator 2
	movl	$.LC24, %eax	#, iftmp.4
.L82:
	.loc 1 559 0 discriminator 3
	movq	-64(%rbp), %rdx	# filename, tmp560
	movq	%rax, %rsi	# iftmp.4,
	movq	%rdx, %rdi	# tmp560,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp561, file
	.loc 1 561 0 is_stmt 1 discriminator 3
	movl	$0, -16(%rbp)	#, z
	jmp	.L83	#
.L90:
	.loc 1 562 0
	movl	$0, -20(%rbp)	#, y
	jmp	.L84	#
.L89:
	.loc 1 563 0
	movl	$0, -24(%rbp)	#, x
	jmp	.L85	#
.L88:
	.loc 1 564 0
	movl	-20(%rbp), %eax	# y, tmp562
	imull	$100, %eax, %edx	#, tmp562, D.7720
	movl	-24(%rbp), %eax	# x, tmp563
	addl	%eax, %edx	# tmp563, D.7720
	movl	-16(%rbp), %eax	# z, tmp564
	imull	$10000, %eax, %eax	#, tmp564, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp565
	salq	$2, %rax	#, tmp565
	addq	%rdx, %rax	# D.7721, tmp565
	salq	$5, %rax	#, tmp566
	movq	%rax, %rdx	# tmp565, D.7721
	movq	-56(%rbp), %rax	# grid, tmp567
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_20, D.7723
	movl	-20(%rbp), %eax	# y, tmp568
	imull	$100, %eax, %edx	#, tmp568, D.7720
	movl	-24(%rbp), %eax	# x, tmp569
	addl	%eax, %edx	# tmp569, D.7720
	movl	-16(%rbp), %eax	# z, tmp570
	imull	$10000, %eax, %eax	#, tmp570, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp571
	salq	$2, %rax	#, tmp571
	addq	%rdx, %rax	# D.7721, tmp571
	salq	$5, %rax	#, tmp572
	leaq	8(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp573
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm0	# *_29, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 565 0
	movl	-20(%rbp), %eax	# y, tmp574
	imull	$100, %eax, %edx	#, tmp574, D.7720
	movl	-24(%rbp), %eax	# x, tmp575
	addl	%eax, %edx	# tmp575, D.7720
	movl	-16(%rbp), %eax	# z, tmp576
	imull	$10000, %eax, %eax	#, tmp576, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp577
	salq	$2, %rax	#, tmp577
	addq	%rdx, %rax	# D.7721, tmp577
	salq	$5, %rax	#, tmp578
	leaq	16(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp579
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_39, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp580
	imull	$100, %eax, %edx	#, tmp580, D.7720
	movl	-24(%rbp), %eax	# x, tmp581
	addl	%eax, %edx	# tmp581, D.7720
	movl	-16(%rbp), %eax	# z, tmp582
	imull	$10000, %eax, %eax	#, tmp582, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp583
	salq	$2, %rax	#, tmp583
	addq	%rdx, %rax	# D.7721, tmp583
	salq	$5, %rax	#, tmp584
	leaq	24(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp585
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_49, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 566 0
	movl	-20(%rbp), %eax	# y, tmp586
	imull	$100, %eax, %edx	#, tmp586, D.7720
	movl	-24(%rbp), %eax	# x, tmp587
	addl	%eax, %edx	# tmp587, D.7720
	movl	-16(%rbp), %eax	# z, tmp588
	imull	$10000, %eax, %eax	#, tmp588, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp589
	salq	$2, %rax	#, tmp589
	addq	%rdx, %rax	# D.7721, tmp589
	salq	$5, %rax	#, tmp590
	leaq	32(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp591
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_59, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp592
	imull	$100, %eax, %edx	#, tmp592, D.7720
	movl	-24(%rbp), %eax	# x, tmp593
	addl	%eax, %edx	# tmp593, D.7720
	movl	-16(%rbp), %eax	# z, tmp594
	imull	$10000, %eax, %eax	#, tmp594, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp595
	salq	$2, %rax	#, tmp595
	addq	%rdx, %rax	# D.7721, tmp595
	salq	$5, %rax	#, tmp596
	leaq	40(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp597
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_69, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 567 0
	movl	-20(%rbp), %eax	# y, tmp598
	imull	$100, %eax, %edx	#, tmp598, D.7720
	movl	-24(%rbp), %eax	# x, tmp599
	addl	%eax, %edx	# tmp599, D.7720
	movl	-16(%rbp), %eax	# z, tmp600
	imull	$10000, %eax, %eax	#, tmp600, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp601
	salq	$2, %rax	#, tmp601
	addq	%rdx, %rax	# D.7721, tmp601
	salq	$5, %rax	#, tmp602
	leaq	48(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp603
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_79, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp604
	imull	$100, %eax, %edx	#, tmp604, D.7720
	movl	-24(%rbp), %eax	# x, tmp605
	addl	%eax, %edx	# tmp605, D.7720
	movl	-16(%rbp), %eax	# z, tmp606
	imull	$10000, %eax, %eax	#, tmp606, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp607
	salq	$2, %rax	#, tmp607
	addq	%rdx, %rax	# D.7721, tmp607
	salq	$5, %rax	#, tmp608
	leaq	56(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp609
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_89, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 568 0
	movl	-20(%rbp), %eax	# y, tmp610
	imull	$100, %eax, %edx	#, tmp610, D.7720
	movl	-24(%rbp), %eax	# x, tmp611
	addl	%eax, %edx	# tmp611, D.7720
	movl	-16(%rbp), %eax	# z, tmp612
	imull	$10000, %eax, %eax	#, tmp612, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp613
	salq	$2, %rax	#, tmp613
	addq	%rdx, %rax	# D.7721, tmp613
	salq	$5, %rax	#, tmp614
	leaq	64(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp615
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_99, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp616
	imull	$100, %eax, %edx	#, tmp616, D.7720
	movl	-24(%rbp), %eax	# x, tmp617
	addl	%eax, %edx	# tmp617, D.7720
	movl	-16(%rbp), %eax	# z, tmp618
	imull	$10000, %eax, %eax	#, tmp618, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp619
	salq	$2, %rax	#, tmp619
	addq	%rdx, %rax	# D.7721, tmp619
	salq	$5, %rax	#, tmp620
	leaq	72(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp621
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_109, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 569 0
	movl	-20(%rbp), %eax	# y, tmp622
	imull	$100, %eax, %edx	#, tmp622, D.7720
	movl	-24(%rbp), %eax	# x, tmp623
	addl	%eax, %edx	# tmp623, D.7720
	movl	-16(%rbp), %eax	# z, tmp624
	imull	$10000, %eax, %eax	#, tmp624, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp625
	salq	$2, %rax	#, tmp625
	addq	%rdx, %rax	# D.7721, tmp625
	salq	$5, %rax	#, tmp626
	leaq	80(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp627
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_119, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp628
	imull	$100, %eax, %edx	#, tmp628, D.7720
	movl	-24(%rbp), %eax	# x, tmp629
	addl	%eax, %edx	# tmp629, D.7720
	movl	-16(%rbp), %eax	# z, tmp630
	imull	$10000, %eax, %eax	#, tmp630, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp631
	salq	$2, %rax	#, tmp631
	addq	%rdx, %rax	# D.7721, tmp631
	salq	$5, %rax	#, tmp632
	leaq	88(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp633
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_129, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 570 0
	movl	-20(%rbp), %eax	# y, tmp634
	imull	$100, %eax, %edx	#, tmp634, D.7720
	movl	-24(%rbp), %eax	# x, tmp635
	addl	%eax, %edx	# tmp635, D.7720
	movl	-16(%rbp), %eax	# z, tmp636
	imull	$10000, %eax, %eax	#, tmp636, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp637
	salq	$2, %rax	#, tmp637
	addq	%rdx, %rax	# D.7721, tmp637
	salq	$5, %rax	#, tmp638
	leaq	96(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp639
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_139, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp640
	imull	$100, %eax, %edx	#, tmp640, D.7720
	movl	-24(%rbp), %eax	# x, tmp641
	addl	%eax, %edx	# tmp641, D.7720
	movl	-16(%rbp), %eax	# z, tmp642
	imull	$10000, %eax, %eax	#, tmp642, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp643
	salq	$2, %rax	#, tmp643
	addq	%rdx, %rax	# D.7721, tmp643
	salq	$5, %rax	#, tmp644
	leaq	104(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp645
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_149, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 571 0
	movl	-20(%rbp), %eax	# y, tmp646
	imull	$100, %eax, %edx	#, tmp646, D.7720
	movl	-24(%rbp), %eax	# x, tmp647
	addl	%eax, %edx	# tmp647, D.7720
	movl	-16(%rbp), %eax	# z, tmp648
	imull	$10000, %eax, %eax	#, tmp648, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp649
	salq	$2, %rax	#, tmp649
	addq	%rdx, %rax	# D.7721, tmp649
	salq	$5, %rax	#, tmp650
	leaq	112(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp651
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_159, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp652
	imull	$100, %eax, %edx	#, tmp652, D.7720
	movl	-24(%rbp), %eax	# x, tmp653
	addl	%eax, %edx	# tmp653, D.7720
	movl	-16(%rbp), %eax	# z, tmp654
	imull	$10000, %eax, %eax	#, tmp654, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp655
	salq	$2, %rax	#, tmp655
	addq	%rdx, %rax	# D.7721, tmp655
	salq	$5, %rax	#, tmp656
	leaq	120(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp657
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_169, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 572 0
	movl	-20(%rbp), %eax	# y, tmp658
	imull	$100, %eax, %edx	#, tmp658, D.7720
	movl	-24(%rbp), %eax	# x, tmp659
	addl	%eax, %edx	# tmp659, D.7720
	movl	-16(%rbp), %eax	# z, tmp660
	imull	$10000, %eax, %eax	#, tmp660, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp661
	salq	$2, %rax	#, tmp661
	addq	%rdx, %rax	# D.7721, tmp661
	salq	$5, %rax	#, tmp662
	leaq	128(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp663
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_179, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp664
	imull	$100, %eax, %edx	#, tmp664, D.7720
	movl	-24(%rbp), %eax	# x, tmp665
	addl	%eax, %edx	# tmp665, D.7720
	movl	-16(%rbp), %eax	# z, tmp666
	imull	$10000, %eax, %eax	#, tmp666, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp667
	salq	$2, %rax	#, tmp667
	addq	%rdx, %rax	# D.7721, tmp667
	salq	$5, %rax	#, tmp668
	leaq	136(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp669
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_189, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 573 0
	movl	-20(%rbp), %eax	# y, tmp670
	imull	$100, %eax, %edx	#, tmp670, D.7720
	movl	-24(%rbp), %eax	# x, tmp671
	addl	%eax, %edx	# tmp671, D.7720
	movl	-16(%rbp), %eax	# z, tmp672
	imull	$10000, %eax, %eax	#, tmp672, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp673
	salq	$2, %rax	#, tmp673
	addq	%rdx, %rax	# D.7721, tmp673
	salq	$5, %rax	#, tmp674
	leaq	144(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp675
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_199, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 564 0
	unpcklpd	%xmm0, %xmm0	# D.7723
	cvtpd2ps	%xmm0, %xmm3	# D.7723, tmp864
	movss	%xmm3, -12(%rbp)	# tmp864, rho
	.loc 1 574 0
	movl	-20(%rbp), %eax	# y, tmp676
	imull	$100, %eax, %edx	#, tmp676, D.7720
	movl	-24(%rbp), %eax	# x, tmp677
	addl	%eax, %edx	# tmp677, D.7720
	movl	-16(%rbp), %eax	# z, tmp678
	imull	$10000, %eax, %eax	#, tmp678, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp679
	salq	$2, %rax	#, tmp679
	addq	%rdx, %rax	# D.7721, tmp679
	salq	$5, %rax	#, tmp680
	leaq	24(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp681
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm0	# *_210, D.7723
	movl	-20(%rbp), %eax	# y, tmp682
	imull	$100, %eax, %edx	#, tmp682, D.7720
	movl	-24(%rbp), %eax	# x, tmp683
	addl	%eax, %edx	# tmp683, D.7720
	movl	-16(%rbp), %eax	# z, tmp684
	imull	$10000, %eax, %eax	#, tmp684, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp685
	salq	$2, %rax	#, tmp685
	addq	%rdx, %rax	# D.7721, tmp685
	salq	$5, %rax	#, tmp686
	leaq	32(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp687
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_219, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 575 0
	movl	-20(%rbp), %eax	# y, tmp688
	imull	$100, %eax, %edx	#, tmp688, D.7720
	movl	-24(%rbp), %eax	# x, tmp689
	addl	%eax, %edx	# tmp689, D.7720
	movl	-16(%rbp), %eax	# z, tmp690
	imull	$10000, %eax, %eax	#, tmp690, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp691
	salq	$2, %rax	#, tmp691
	addq	%rdx, %rax	# D.7721, tmp691
	salq	$5, %rax	#, tmp692
	leaq	56(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp693
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_229, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp694
	imull	$100, %eax, %edx	#, tmp694, D.7720
	movl	-24(%rbp), %eax	# x, tmp695
	addl	%eax, %edx	# tmp695, D.7720
	movl	-16(%rbp), %eax	# z, tmp696
	imull	$10000, %eax, %eax	#, tmp696, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp697
	salq	$2, %rax	#, tmp697
	addq	%rdx, %rax	# D.7721, tmp697
	salq	$5, %rax	#, tmp698
	leaq	64(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp699
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_239, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 576 0
	movl	-20(%rbp), %eax	# y, tmp700
	imull	$100, %eax, %edx	#, tmp700, D.7720
	movl	-24(%rbp), %eax	# x, tmp701
	addl	%eax, %edx	# tmp701, D.7720
	movl	-16(%rbp), %eax	# z, tmp702
	imull	$10000, %eax, %eax	#, tmp702, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp703
	salq	$2, %rax	#, tmp703
	addq	%rdx, %rax	# D.7721, tmp703
	salq	$5, %rax	#, tmp704
	leaq	72(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp705
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_249, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp706
	imull	$100, %eax, %edx	#, tmp706, D.7720
	movl	-24(%rbp), %eax	# x, tmp707
	addl	%eax, %edx	# tmp707, D.7720
	movl	-16(%rbp), %eax	# z, tmp708
	imull	$10000, %eax, %eax	#, tmp708, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp709
	salq	$2, %rax	#, tmp709
	addq	%rdx, %rax	# D.7721, tmp709
	salq	$5, %rax	#, tmp710
	leaq	80(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp711
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_259, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 577 0
	movl	-20(%rbp), %eax	# y, tmp712
	imull	$100, %eax, %edx	#, tmp712, D.7720
	movl	-24(%rbp), %eax	# x, tmp713
	addl	%eax, %edx	# tmp713, D.7720
	movl	-16(%rbp), %eax	# z, tmp714
	imull	$10000, %eax, %eax	#, tmp714, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp715
	salq	$2, %rax	#, tmp715
	addq	%rdx, %rax	# D.7721, tmp715
	salq	$5, %rax	#, tmp716
	leaq	120(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp717
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_269, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp718
	imull	$100, %eax, %edx	#, tmp718, D.7720
	movl	-24(%rbp), %eax	# x, tmp719
	addl	%eax, %edx	# tmp719, D.7720
	movl	-16(%rbp), %eax	# z, tmp720
	imull	$10000, %eax, %eax	#, tmp720, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp721
	salq	$2, %rax	#, tmp721
	addq	%rdx, %rax	# D.7721, tmp721
	salq	$5, %rax	#, tmp722
	leaq	128(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp723
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_279, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 578 0
	movl	-20(%rbp), %eax	# y, tmp724
	imull	$100, %eax, %edx	#, tmp724, D.7720
	movl	-24(%rbp), %eax	# x, tmp725
	addl	%eax, %edx	# tmp725, D.7720
	movl	-16(%rbp), %eax	# z, tmp726
	imull	$10000, %eax, %eax	#, tmp726, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp727
	salq	$2, %rax	#, tmp727
	addq	%rdx, %rax	# D.7721, tmp727
	salq	$5, %rax	#, tmp728
	leaq	136(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp729
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_289, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp730
	imull	$100, %eax, %edx	#, tmp730, D.7720
	movl	-24(%rbp), %eax	# x, tmp731
	addl	%eax, %edx	# tmp731, D.7720
	movl	-16(%rbp), %eax	# z, tmp732
	imull	$10000, %eax, %eax	#, tmp732, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp733
	salq	$2, %rax	#, tmp733
	addq	%rdx, %rax	# D.7721, tmp733
	salq	$5, %rax	#, tmp734
	leaq	144(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp735
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_299, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 574 0
	unpcklpd	%xmm0, %xmm0	# D.7723
	cvtpd2ps	%xmm0, %xmm0	# D.7723, ux.5
	movss	%xmm0, -36(%rbp)	# ux.5, ux
	.loc 1 579 0
	movl	-20(%rbp), %eax	# y, tmp736
	imull	$100, %eax, %edx	#, tmp736, D.7720
	movl	-24(%rbp), %eax	# x, tmp737
	addl	%eax, %edx	# tmp737, D.7720
	movl	-16(%rbp), %eax	# z, tmp738
	imull	$10000, %eax, %eax	#, tmp738, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp739
	salq	$2, %rax	#, tmp739
	addq	%rdx, %rax	# D.7721, tmp739
	salq	$5, %rax	#, tmp740
	leaq	8(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp741
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm0	# *_310, D.7723
	movl	-20(%rbp), %eax	# y, tmp742
	imull	$100, %eax, %edx	#, tmp742, D.7720
	movl	-24(%rbp), %eax	# x, tmp743
	addl	%eax, %edx	# tmp743, D.7720
	movl	-16(%rbp), %eax	# z, tmp744
	imull	$10000, %eax, %eax	#, tmp744, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp745
	salq	$2, %rax	#, tmp745
	addq	%rdx, %rax	# D.7721, tmp745
	salq	$5, %rax	#, tmp746
	leaq	16(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp747
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_319, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 580 0
	movl	-20(%rbp), %eax	# y, tmp748
	imull	$100, %eax, %edx	#, tmp748, D.7720
	movl	-24(%rbp), %eax	# x, tmp749
	addl	%eax, %edx	# tmp749, D.7720
	movl	-16(%rbp), %eax	# z, tmp750
	imull	$10000, %eax, %eax	#, tmp750, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp751
	salq	$2, %rax	#, tmp751
	addq	%rdx, %rax	# D.7721, tmp751
	salq	$5, %rax	#, tmp752
	leaq	56(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp753
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_329, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp754
	imull	$100, %eax, %edx	#, tmp754, D.7720
	movl	-24(%rbp), %eax	# x, tmp755
	addl	%eax, %edx	# tmp755, D.7720
	movl	-16(%rbp), %eax	# z, tmp756
	imull	$10000, %eax, %eax	#, tmp756, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp757
	salq	$2, %rax	#, tmp757
	addq	%rdx, %rax	# D.7721, tmp757
	salq	$5, %rax	#, tmp758
	leaq	64(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp759
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_339, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 581 0
	movl	-20(%rbp), %eax	# y, tmp760
	imull	$100, %eax, %edx	#, tmp760, D.7720
	movl	-24(%rbp), %eax	# x, tmp761
	addl	%eax, %edx	# tmp761, D.7720
	movl	-16(%rbp), %eax	# z, tmp762
	imull	$10000, %eax, %eax	#, tmp762, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp763
	salq	$2, %rax	#, tmp763
	addq	%rdx, %rax	# D.7721, tmp763
	salq	$5, %rax	#, tmp764
	leaq	72(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp765
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_349, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp766
	imull	$100, %eax, %edx	#, tmp766, D.7720
	movl	-24(%rbp), %eax	# x, tmp767
	addl	%eax, %edx	# tmp767, D.7720
	movl	-16(%rbp), %eax	# z, tmp768
	imull	$10000, %eax, %eax	#, tmp768, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp769
	salq	$2, %rax	#, tmp769
	addq	%rdx, %rax	# D.7721, tmp769
	salq	$5, %rax	#, tmp770
	leaq	80(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp771
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_359, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 582 0
	movl	-20(%rbp), %eax	# y, tmp772
	imull	$100, %eax, %edx	#, tmp772, D.7720
	movl	-24(%rbp), %eax	# x, tmp773
	addl	%eax, %edx	# tmp773, D.7720
	movl	-16(%rbp), %eax	# z, tmp774
	imull	$10000, %eax, %eax	#, tmp774, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp775
	salq	$2, %rax	#, tmp775
	addq	%rdx, %rax	# D.7721, tmp775
	salq	$5, %rax	#, tmp776
	leaq	88(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp777
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_369, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp778
	imull	$100, %eax, %edx	#, tmp778, D.7720
	movl	-24(%rbp), %eax	# x, tmp779
	addl	%eax, %edx	# tmp779, D.7720
	movl	-16(%rbp), %eax	# z, tmp780
	imull	$10000, %eax, %eax	#, tmp780, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp781
	salq	$2, %rax	#, tmp781
	addq	%rdx, %rax	# D.7721, tmp781
	salq	$5, %rax	#, tmp782
	leaq	96(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp783
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_379, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 583 0
	movl	-20(%rbp), %eax	# y, tmp784
	imull	$100, %eax, %edx	#, tmp784, D.7720
	movl	-24(%rbp), %eax	# x, tmp785
	addl	%eax, %edx	# tmp785, D.7720
	movl	-16(%rbp), %eax	# z, tmp786
	imull	$10000, %eax, %eax	#, tmp786, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp787
	salq	$2, %rax	#, tmp787
	addq	%rdx, %rax	# D.7721, tmp787
	salq	$5, %rax	#, tmp788
	leaq	104(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp789
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_389, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp790
	imull	$100, %eax, %edx	#, tmp790, D.7720
	movl	-24(%rbp), %eax	# x, tmp791
	addl	%eax, %edx	# tmp791, D.7720
	movl	-16(%rbp), %eax	# z, tmp792
	imull	$10000, %eax, %eax	#, tmp792, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp793
	salq	$2, %rax	#, tmp793
	addq	%rdx, %rax	# D.7721, tmp793
	salq	$5, %rax	#, tmp794
	leaq	112(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp795
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_399, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 579 0
	unpcklpd	%xmm0, %xmm0	# D.7723
	cvtpd2ps	%xmm0, %xmm0	# D.7723, uy.6
	movss	%xmm0, -32(%rbp)	# uy.6, uy
	.loc 1 584 0
	movl	-20(%rbp), %eax	# y, tmp796
	imull	$100, %eax, %edx	#, tmp796, D.7720
	movl	-24(%rbp), %eax	# x, tmp797
	addl	%eax, %edx	# tmp797, D.7720
	movl	-16(%rbp), %eax	# z, tmp798
	imull	$10000, %eax, %eax	#, tmp798, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp799
	salq	$2, %rax	#, tmp799
	addq	%rdx, %rax	# D.7721, tmp799
	salq	$5, %rax	#, tmp800
	leaq	40(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp801
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm0	# *_410, D.7723
	movl	-20(%rbp), %eax	# y, tmp802
	imull	$100, %eax, %edx	#, tmp802, D.7720
	movl	-24(%rbp), %eax	# x, tmp803
	addl	%eax, %edx	# tmp803, D.7720
	movl	-16(%rbp), %eax	# z, tmp804
	imull	$10000, %eax, %eax	#, tmp804, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp805
	salq	$2, %rax	#, tmp805
	addq	%rdx, %rax	# D.7721, tmp805
	salq	$5, %rax	#, tmp806
	leaq	48(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp807
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_419, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 585 0
	movl	-20(%rbp), %eax	# y, tmp808
	imull	$100, %eax, %edx	#, tmp808, D.7720
	movl	-24(%rbp), %eax	# x, tmp809
	addl	%eax, %edx	# tmp809, D.7720
	movl	-16(%rbp), %eax	# z, tmp810
	imull	$10000, %eax, %eax	#, tmp810, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp811
	salq	$2, %rax	#, tmp811
	addq	%rdx, %rax	# D.7721, tmp811
	salq	$5, %rax	#, tmp812
	leaq	88(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp813
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_429, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp814
	imull	$100, %eax, %edx	#, tmp814, D.7720
	movl	-24(%rbp), %eax	# x, tmp815
	addl	%eax, %edx	# tmp815, D.7720
	movl	-16(%rbp), %eax	# z, tmp816
	imull	$10000, %eax, %eax	#, tmp816, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp817
	salq	$2, %rax	#, tmp817
	addq	%rdx, %rax	# D.7721, tmp817
	salq	$5, %rax	#, tmp818
	leaq	96(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp819
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_439, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 586 0
	movl	-20(%rbp), %eax	# y, tmp820
	imull	$100, %eax, %edx	#, tmp820, D.7720
	movl	-24(%rbp), %eax	# x, tmp821
	addl	%eax, %edx	# tmp821, D.7720
	movl	-16(%rbp), %eax	# z, tmp822
	imull	$10000, %eax, %eax	#, tmp822, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp823
	salq	$2, %rax	#, tmp823
	addq	%rdx, %rax	# D.7721, tmp823
	salq	$5, %rax	#, tmp824
	leaq	104(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp825
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_449, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp826
	imull	$100, %eax, %edx	#, tmp826, D.7720
	movl	-24(%rbp), %eax	# x, tmp827
	addl	%eax, %edx	# tmp827, D.7720
	movl	-16(%rbp), %eax	# z, tmp828
	imull	$10000, %eax, %eax	#, tmp828, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp829
	salq	$2, %rax	#, tmp829
	addq	%rdx, %rax	# D.7721, tmp829
	salq	$5, %rax	#, tmp830
	leaq	112(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp831
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_459, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 587 0
	movl	-20(%rbp), %eax	# y, tmp832
	imull	$100, %eax, %edx	#, tmp832, D.7720
	movl	-24(%rbp), %eax	# x, tmp833
	addl	%eax, %edx	# tmp833, D.7720
	movl	-16(%rbp), %eax	# z, tmp834
	imull	$10000, %eax, %eax	#, tmp834, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp835
	salq	$2, %rax	#, tmp835
	addq	%rdx, %rax	# D.7721, tmp835
	salq	$5, %rax	#, tmp836
	leaq	120(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp837
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_469, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp838
	imull	$100, %eax, %edx	#, tmp838, D.7720
	movl	-24(%rbp), %eax	# x, tmp839
	addl	%eax, %edx	# tmp839, D.7720
	movl	-16(%rbp), %eax	# z, tmp840
	imull	$10000, %eax, %eax	#, tmp840, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp841
	salq	$2, %rax	#, tmp841
	addq	%rdx, %rax	# D.7721, tmp841
	salq	$5, %rax	#, tmp842
	leaq	128(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp843
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_479, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 588 0
	movl	-20(%rbp), %eax	# y, tmp844
	imull	$100, %eax, %edx	#, tmp844, D.7720
	movl	-24(%rbp), %eax	# x, tmp845
	addl	%eax, %edx	# tmp845, D.7720
	movl	-16(%rbp), %eax	# z, tmp846
	imull	$10000, %eax, %eax	#, tmp846, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp847
	salq	$2, %rax	#, tmp847
	addq	%rdx, %rax	# D.7721, tmp847
	salq	$5, %rax	#, tmp848
	leaq	136(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp849
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_489, D.7723
	addsd	%xmm1, %xmm0	# D.7723, D.7723
	movl	-20(%rbp), %eax	# y, tmp850
	imull	$100, %eax, %edx	#, tmp850, D.7720
	movl	-24(%rbp), %eax	# x, tmp851
	addl	%eax, %edx	# tmp851, D.7720
	movl	-16(%rbp), %eax	# z, tmp852
	imull	$10000, %eax, %eax	#, tmp852, D.7720
	addl	%edx, %eax	# D.7720, D.7720
	movslq	%eax, %rdx	# D.7720, D.7721
	movq	%rdx, %rax	# D.7721, tmp853
	salq	$2, %rax	#, tmp853
	addq	%rdx, %rax	# D.7721, tmp853
	salq	$5, %rax	#, tmp854
	leaq	144(%rax), %rdx	#, D.7721
	movq	-56(%rbp), %rax	# grid, tmp855
	addq	%rdx, %rax	# D.7721, D.7722
	movsd	(%rax), %xmm1	# *_499, D.7723
	subsd	%xmm1, %xmm0	# D.7723, D.7723
	.loc 1 584 0
	unpcklpd	%xmm0, %xmm0	# D.7723
	cvtpd2ps	%xmm0, %xmm0	# D.7723, uz.7
	movss	%xmm0, -28(%rbp)	# uz.7, uz
	.loc 1 589 0
	movss	-36(%rbp), %xmm0	# ux, ux.8
	divss	-12(%rbp), %xmm0	# rho, ux.9
	movss	%xmm0, -36(%rbp)	# ux.9, ux
	.loc 1 590 0
	movss	-32(%rbp), %xmm0	# uy, uy.10
	divss	-12(%rbp), %xmm0	# rho, uy.11
	movss	%xmm0, -32(%rbp)	# uy.11, uy
	.loc 1 591 0
	movss	-28(%rbp), %xmm0	# uz, uz.12
	divss	-12(%rbp), %xmm0	# rho, uz.13
	movss	%xmm0, -28(%rbp)	# uz.13, uz
	.loc 1 593 0
	cmpl	$0, -68(%rbp)	#, binary
	je	.L86	#,
	.loc 1 599 0
	leaq	-36(%rbp), %rdx	#, tmp856
	movq	-8(%rbp), %rax	# file, tmp857
	movq	%rdx, %rsi	# tmp856,
	movq	%rax, %rdi	# tmp857,
	call	storeValue	#
	.loc 1 600 0
	leaq	-32(%rbp), %rdx	#, tmp858
	movq	-8(%rbp), %rax	# file, tmp859
	movq	%rdx, %rsi	# tmp858,
	movq	%rax, %rdi	# tmp859,
	call	storeValue	#
	.loc 1 601 0
	leaq	-28(%rbp), %rdx	#, tmp860
	movq	-8(%rbp), %rax	# file, tmp861
	movq	%rdx, %rsi	# tmp860,
	movq	%rax, %rdi	# tmp861,
	call	storeValue	#
	jmp	.L87	#
.L86:
	.loc 1 603 0
	movss	-28(%rbp), %xmm0	# uz, uz.14
	unpcklps	%xmm0, %xmm0	# uz.14, uz.14
	cvtps2pd	%xmm0, %xmm2	# uz.14, D.7723
	movss	-32(%rbp), %xmm0	# uy, uy.15
	unpcklps	%xmm0, %xmm0	# uy.15, uy.15
	cvtps2pd	%xmm0, %xmm1	# uy.15, D.7723
	movss	-36(%rbp), %xmm0	# ux, ux.16
	unpcklps	%xmm0, %xmm0	# ux.16, ux.16
	cvtps2pd	%xmm0, %xmm0	# ux.16, D.7723
	movq	-8(%rbp), %rax	# file, tmp862
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp862,
	movl	$3, %eax	#,
	call	fprintf	#
.L87:
	.loc 1 563 0
	addl	$1, -24(%rbp)	#, x
.L85:
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpl	$99, -24(%rbp)	#, x
	jle	.L88	#,
	.loc 1 562 0 is_stmt 1
	addl	$1, -20(%rbp)	#, y
.L84:
	.loc 1 562 0 is_stmt 0 discriminator 1
	cmpl	$99, -20(%rbp)	#, y
	jle	.L89	#,
	.loc 1 561 0 is_stmt 1
	addl	$1, -16(%rbp)	#, z
.L83:
	.loc 1 561 0 is_stmt 0 discriminator 1
	cmpl	$129, -16(%rbp)	#, z
	jle	.L90	#,
	.loc 1 609 0 is_stmt 1
	movq	-8(%rbp), %rax	# file, tmp863
	movq	%rax, %rdi	# tmp863,
	call	fclose	#
	.loc 1 610 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	LBM_storeVelocityField, .-LBM_storeVelocityField
	.section	.rodata
.LC27:
	.string	"r"
.LC28:
	.string	"%f %f %f\n"
	.align 8
.LC29:
	.string	"LBM_compareVelocityField: maxDiff = %e  \n\n"
	.text
	.globl	LBM_compareVelocityField
	.type	LBM_compareVelocityField, @function
LBM_compareVelocityField:
.LFB15:
	.loc 1 615 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# grid, grid
	movq	%rsi, -112(%rbp)	# filename, filename
	movl	%edx, -116(%rbp)	# binary, binary
	.loc 1 620 0
	movl	.LC26(%rip), %eax	#, tmp556
	movl	%eax, -60(%rbp)	# tmp556, maxDiff2
	.loc 1 622 0
	cmpl	$0, -116(%rbp)	#, binary
	je	.L92	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	$.LC5, %eax	#, iftmp.17
	jmp	.L93	#
.L92:
	.loc 1 622 0 discriminator 2
	movl	$.LC27, %eax	#, iftmp.17
.L93:
	.loc 1 622 0 discriminator 3
	movq	-112(%rbp), %rdx	# filename, tmp557
	movq	%rax, %rsi	# iftmp.17,
	movq	%rdx, %rdi	# tmp557,
	call	fopen	#
	movq	%rax, -40(%rbp)	# tmp558, file
	.loc 1 624 0 is_stmt 1 discriminator 3
	movl	$0, -64(%rbp)	#, z
	jmp	.L94	#
.L103:
	.loc 1 625 0
	movl	$0, -68(%rbp)	#, y
	jmp	.L95	#
.L102:
	.loc 1 626 0
	movl	$0, -72(%rbp)	#, x
	jmp	.L96	#
.L101:
	.loc 1 627 0
	movl	-68(%rbp), %eax	# y, tmp559
	imull	$100, %eax, %edx	#, tmp559, D.7727
	movl	-72(%rbp), %eax	# x, tmp560
	addl	%eax, %edx	# tmp560, D.7727
	movl	-64(%rbp), %eax	# z, tmp561
	imull	$10000, %eax, %eax	#, tmp561, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp562
	salq	$2, %rax	#, tmp562
	addq	%rdx, %rax	# D.7728, tmp562
	salq	$5, %rax	#, tmp563
	movq	%rax, %rdx	# tmp562, D.7728
	movq	-104(%rbp), %rax	# grid, tmp564
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_25, D.7730
	movl	-68(%rbp), %eax	# y, tmp565
	imull	$100, %eax, %edx	#, tmp565, D.7727
	movl	-72(%rbp), %eax	# x, tmp566
	addl	%eax, %edx	# tmp566, D.7727
	movl	-64(%rbp), %eax	# z, tmp567
	imull	$10000, %eax, %eax	#, tmp567, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp568
	salq	$2, %rax	#, tmp568
	addq	%rdx, %rax	# D.7728, tmp568
	salq	$5, %rax	#, tmp569
	leaq	8(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp570
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm0	# *_34, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 628 0
	movl	-68(%rbp), %eax	# y, tmp571
	imull	$100, %eax, %edx	#, tmp571, D.7727
	movl	-72(%rbp), %eax	# x, tmp572
	addl	%eax, %edx	# tmp572, D.7727
	movl	-64(%rbp), %eax	# z, tmp573
	imull	$10000, %eax, %eax	#, tmp573, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp574
	salq	$2, %rax	#, tmp574
	addq	%rdx, %rax	# D.7728, tmp574
	salq	$5, %rax	#, tmp575
	leaq	16(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp576
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_44, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp577
	imull	$100, %eax, %edx	#, tmp577, D.7727
	movl	-72(%rbp), %eax	# x, tmp578
	addl	%eax, %edx	# tmp578, D.7727
	movl	-64(%rbp), %eax	# z, tmp579
	imull	$10000, %eax, %eax	#, tmp579, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp580
	salq	$2, %rax	#, tmp580
	addq	%rdx, %rax	# D.7728, tmp580
	salq	$5, %rax	#, tmp581
	leaq	24(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp582
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_54, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 629 0
	movl	-68(%rbp), %eax	# y, tmp583
	imull	$100, %eax, %edx	#, tmp583, D.7727
	movl	-72(%rbp), %eax	# x, tmp584
	addl	%eax, %edx	# tmp584, D.7727
	movl	-64(%rbp), %eax	# z, tmp585
	imull	$10000, %eax, %eax	#, tmp585, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp586
	salq	$2, %rax	#, tmp586
	addq	%rdx, %rax	# D.7728, tmp586
	salq	$5, %rax	#, tmp587
	leaq	32(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp588
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_64, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp589
	imull	$100, %eax, %edx	#, tmp589, D.7727
	movl	-72(%rbp), %eax	# x, tmp590
	addl	%eax, %edx	# tmp590, D.7727
	movl	-64(%rbp), %eax	# z, tmp591
	imull	$10000, %eax, %eax	#, tmp591, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp592
	salq	$2, %rax	#, tmp592
	addq	%rdx, %rax	# D.7728, tmp592
	salq	$5, %rax	#, tmp593
	leaq	40(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp594
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_74, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 630 0
	movl	-68(%rbp), %eax	# y, tmp595
	imull	$100, %eax, %edx	#, tmp595, D.7727
	movl	-72(%rbp), %eax	# x, tmp596
	addl	%eax, %edx	# tmp596, D.7727
	movl	-64(%rbp), %eax	# z, tmp597
	imull	$10000, %eax, %eax	#, tmp597, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp598
	salq	$2, %rax	#, tmp598
	addq	%rdx, %rax	# D.7728, tmp598
	salq	$5, %rax	#, tmp599
	leaq	48(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp600
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_84, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp601
	imull	$100, %eax, %edx	#, tmp601, D.7727
	movl	-72(%rbp), %eax	# x, tmp602
	addl	%eax, %edx	# tmp602, D.7727
	movl	-64(%rbp), %eax	# z, tmp603
	imull	$10000, %eax, %eax	#, tmp603, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp604
	salq	$2, %rax	#, tmp604
	addq	%rdx, %rax	# D.7728, tmp604
	salq	$5, %rax	#, tmp605
	leaq	56(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp606
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_94, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 631 0
	movl	-68(%rbp), %eax	# y, tmp607
	imull	$100, %eax, %edx	#, tmp607, D.7727
	movl	-72(%rbp), %eax	# x, tmp608
	addl	%eax, %edx	# tmp608, D.7727
	movl	-64(%rbp), %eax	# z, tmp609
	imull	$10000, %eax, %eax	#, tmp609, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp610
	salq	$2, %rax	#, tmp610
	addq	%rdx, %rax	# D.7728, tmp610
	salq	$5, %rax	#, tmp611
	leaq	64(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp612
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_104, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp613
	imull	$100, %eax, %edx	#, tmp613, D.7727
	movl	-72(%rbp), %eax	# x, tmp614
	addl	%eax, %edx	# tmp614, D.7727
	movl	-64(%rbp), %eax	# z, tmp615
	imull	$10000, %eax, %eax	#, tmp615, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp616
	salq	$2, %rax	#, tmp616
	addq	%rdx, %rax	# D.7728, tmp616
	salq	$5, %rax	#, tmp617
	leaq	72(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp618
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_114, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 632 0
	movl	-68(%rbp), %eax	# y, tmp619
	imull	$100, %eax, %edx	#, tmp619, D.7727
	movl	-72(%rbp), %eax	# x, tmp620
	addl	%eax, %edx	# tmp620, D.7727
	movl	-64(%rbp), %eax	# z, tmp621
	imull	$10000, %eax, %eax	#, tmp621, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp622
	salq	$2, %rax	#, tmp622
	addq	%rdx, %rax	# D.7728, tmp622
	salq	$5, %rax	#, tmp623
	leaq	80(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp624
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_124, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp625
	imull	$100, %eax, %edx	#, tmp625, D.7727
	movl	-72(%rbp), %eax	# x, tmp626
	addl	%eax, %edx	# tmp626, D.7727
	movl	-64(%rbp), %eax	# z, tmp627
	imull	$10000, %eax, %eax	#, tmp627, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp628
	salq	$2, %rax	#, tmp628
	addq	%rdx, %rax	# D.7728, tmp628
	salq	$5, %rax	#, tmp629
	leaq	88(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp630
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_134, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 633 0
	movl	-68(%rbp), %eax	# y, tmp631
	imull	$100, %eax, %edx	#, tmp631, D.7727
	movl	-72(%rbp), %eax	# x, tmp632
	addl	%eax, %edx	# tmp632, D.7727
	movl	-64(%rbp), %eax	# z, tmp633
	imull	$10000, %eax, %eax	#, tmp633, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp634
	salq	$2, %rax	#, tmp634
	addq	%rdx, %rax	# D.7728, tmp634
	salq	$5, %rax	#, tmp635
	leaq	96(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp636
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_144, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp637
	imull	$100, %eax, %edx	#, tmp637, D.7727
	movl	-72(%rbp), %eax	# x, tmp638
	addl	%eax, %edx	# tmp638, D.7727
	movl	-64(%rbp), %eax	# z, tmp639
	imull	$10000, %eax, %eax	#, tmp639, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp640
	salq	$2, %rax	#, tmp640
	addq	%rdx, %rax	# D.7728, tmp640
	salq	$5, %rax	#, tmp641
	leaq	104(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp642
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_154, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 634 0
	movl	-68(%rbp), %eax	# y, tmp643
	imull	$100, %eax, %edx	#, tmp643, D.7727
	movl	-72(%rbp), %eax	# x, tmp644
	addl	%eax, %edx	# tmp644, D.7727
	movl	-64(%rbp), %eax	# z, tmp645
	imull	$10000, %eax, %eax	#, tmp645, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp646
	salq	$2, %rax	#, tmp646
	addq	%rdx, %rax	# D.7728, tmp646
	salq	$5, %rax	#, tmp647
	leaq	112(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp648
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_164, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp649
	imull	$100, %eax, %edx	#, tmp649, D.7727
	movl	-72(%rbp), %eax	# x, tmp650
	addl	%eax, %edx	# tmp650, D.7727
	movl	-64(%rbp), %eax	# z, tmp651
	imull	$10000, %eax, %eax	#, tmp651, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp652
	salq	$2, %rax	#, tmp652
	addq	%rdx, %rax	# D.7728, tmp652
	salq	$5, %rax	#, tmp653
	leaq	120(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp654
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_174, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 635 0
	movl	-68(%rbp), %eax	# y, tmp655
	imull	$100, %eax, %edx	#, tmp655, D.7727
	movl	-72(%rbp), %eax	# x, tmp656
	addl	%eax, %edx	# tmp656, D.7727
	movl	-64(%rbp), %eax	# z, tmp657
	imull	$10000, %eax, %eax	#, tmp657, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp658
	salq	$2, %rax	#, tmp658
	addq	%rdx, %rax	# D.7728, tmp658
	salq	$5, %rax	#, tmp659
	leaq	128(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp660
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_184, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp661
	imull	$100, %eax, %edx	#, tmp661, D.7727
	movl	-72(%rbp), %eax	# x, tmp662
	addl	%eax, %edx	# tmp662, D.7727
	movl	-64(%rbp), %eax	# z, tmp663
	imull	$10000, %eax, %eax	#, tmp663, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp664
	salq	$2, %rax	#, tmp664
	addq	%rdx, %rax	# D.7728, tmp664
	salq	$5, %rax	#, tmp665
	leaq	136(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp666
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_194, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 636 0
	movl	-68(%rbp), %eax	# y, tmp667
	imull	$100, %eax, %edx	#, tmp667, D.7727
	movl	-72(%rbp), %eax	# x, tmp668
	addl	%eax, %edx	# tmp668, D.7727
	movl	-64(%rbp), %eax	# z, tmp669
	imull	$10000, %eax, %eax	#, tmp669, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp670
	salq	$2, %rax	#, tmp670
	addq	%rdx, %rax	# D.7728, tmp670
	salq	$5, %rax	#, tmp671
	leaq	144(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp672
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_204, D.7730
	.loc 1 627 0
	addsd	%xmm1, %xmm0	# D.7730, tmp673
	movsd	%xmm0, -32(%rbp)	# tmp673, rho
	.loc 1 637 0
	movl	-68(%rbp), %eax	# y, tmp674
	imull	$100, %eax, %edx	#, tmp674, D.7727
	movl	-72(%rbp), %eax	# x, tmp675
	addl	%eax, %edx	# tmp675, D.7727
	movl	-64(%rbp), %eax	# z, tmp676
	imull	$10000, %eax, %eax	#, tmp676, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp677
	salq	$2, %rax	#, tmp677
	addq	%rdx, %rax	# D.7728, tmp677
	salq	$5, %rax	#, tmp678
	leaq	24(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp679
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm0	# *_214, D.7730
	movl	-68(%rbp), %eax	# y, tmp680
	imull	$100, %eax, %edx	#, tmp680, D.7727
	movl	-72(%rbp), %eax	# x, tmp681
	addl	%eax, %edx	# tmp681, D.7727
	movl	-64(%rbp), %eax	# z, tmp682
	imull	$10000, %eax, %eax	#, tmp682, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp683
	salq	$2, %rax	#, tmp683
	addq	%rdx, %rax	# D.7728, tmp683
	salq	$5, %rax	#, tmp684
	leaq	32(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp685
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_223, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 638 0
	movl	-68(%rbp), %eax	# y, tmp686
	imull	$100, %eax, %edx	#, tmp686, D.7727
	movl	-72(%rbp), %eax	# x, tmp687
	addl	%eax, %edx	# tmp687, D.7727
	movl	-64(%rbp), %eax	# z, tmp688
	imull	$10000, %eax, %eax	#, tmp688, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp689
	salq	$2, %rax	#, tmp689
	addq	%rdx, %rax	# D.7728, tmp689
	salq	$5, %rax	#, tmp690
	leaq	56(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp691
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_233, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp692
	imull	$100, %eax, %edx	#, tmp692, D.7727
	movl	-72(%rbp), %eax	# x, tmp693
	addl	%eax, %edx	# tmp693, D.7727
	movl	-64(%rbp), %eax	# z, tmp694
	imull	$10000, %eax, %eax	#, tmp694, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp695
	salq	$2, %rax	#, tmp695
	addq	%rdx, %rax	# D.7728, tmp695
	salq	$5, %rax	#, tmp696
	leaq	64(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp697
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_243, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 639 0
	movl	-68(%rbp), %eax	# y, tmp698
	imull	$100, %eax, %edx	#, tmp698, D.7727
	movl	-72(%rbp), %eax	# x, tmp699
	addl	%eax, %edx	# tmp699, D.7727
	movl	-64(%rbp), %eax	# z, tmp700
	imull	$10000, %eax, %eax	#, tmp700, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp701
	salq	$2, %rax	#, tmp701
	addq	%rdx, %rax	# D.7728, tmp701
	salq	$5, %rax	#, tmp702
	leaq	72(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp703
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_253, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp704
	imull	$100, %eax, %edx	#, tmp704, D.7727
	movl	-72(%rbp), %eax	# x, tmp705
	addl	%eax, %edx	# tmp705, D.7727
	movl	-64(%rbp), %eax	# z, tmp706
	imull	$10000, %eax, %eax	#, tmp706, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp707
	salq	$2, %rax	#, tmp707
	addq	%rdx, %rax	# D.7728, tmp707
	salq	$5, %rax	#, tmp708
	leaq	80(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp709
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_263, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 640 0
	movl	-68(%rbp), %eax	# y, tmp710
	imull	$100, %eax, %edx	#, tmp710, D.7727
	movl	-72(%rbp), %eax	# x, tmp711
	addl	%eax, %edx	# tmp711, D.7727
	movl	-64(%rbp), %eax	# z, tmp712
	imull	$10000, %eax, %eax	#, tmp712, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp713
	salq	$2, %rax	#, tmp713
	addq	%rdx, %rax	# D.7728, tmp713
	salq	$5, %rax	#, tmp714
	leaq	120(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp715
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_273, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp716
	imull	$100, %eax, %edx	#, tmp716, D.7727
	movl	-72(%rbp), %eax	# x, tmp717
	addl	%eax, %edx	# tmp717, D.7727
	movl	-64(%rbp), %eax	# z, tmp718
	imull	$10000, %eax, %eax	#, tmp718, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp719
	salq	$2, %rax	#, tmp719
	addq	%rdx, %rax	# D.7728, tmp719
	salq	$5, %rax	#, tmp720
	leaq	128(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp721
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_283, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 641 0
	movl	-68(%rbp), %eax	# y, tmp722
	imull	$100, %eax, %edx	#, tmp722, D.7727
	movl	-72(%rbp), %eax	# x, tmp723
	addl	%eax, %edx	# tmp723, D.7727
	movl	-64(%rbp), %eax	# z, tmp724
	imull	$10000, %eax, %eax	#, tmp724, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp725
	salq	$2, %rax	#, tmp725
	addq	%rdx, %rax	# D.7728, tmp725
	salq	$5, %rax	#, tmp726
	leaq	136(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp727
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_293, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp728
	imull	$100, %eax, %edx	#, tmp728, D.7727
	movl	-72(%rbp), %eax	# x, tmp729
	addl	%eax, %edx	# tmp729, D.7727
	movl	-64(%rbp), %eax	# z, tmp730
	imull	$10000, %eax, %eax	#, tmp730, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp731
	salq	$2, %rax	#, tmp731
	addq	%rdx, %rax	# D.7728, tmp731
	salq	$5, %rax	#, tmp732
	leaq	144(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp733
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_303, D.7730
	.loc 1 637 0
	subsd	%xmm1, %xmm0	# D.7730, tmp734
	movsd	%xmm0, -24(%rbp)	# tmp734, ux
	.loc 1 642 0
	movl	-68(%rbp), %eax	# y, tmp735
	imull	$100, %eax, %edx	#, tmp735, D.7727
	movl	-72(%rbp), %eax	# x, tmp736
	addl	%eax, %edx	# tmp736, D.7727
	movl	-64(%rbp), %eax	# z, tmp737
	imull	$10000, %eax, %eax	#, tmp737, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp738
	salq	$2, %rax	#, tmp738
	addq	%rdx, %rax	# D.7728, tmp738
	salq	$5, %rax	#, tmp739
	leaq	8(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp740
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm0	# *_313, D.7730
	movl	-68(%rbp), %eax	# y, tmp741
	imull	$100, %eax, %edx	#, tmp741, D.7727
	movl	-72(%rbp), %eax	# x, tmp742
	addl	%eax, %edx	# tmp742, D.7727
	movl	-64(%rbp), %eax	# z, tmp743
	imull	$10000, %eax, %eax	#, tmp743, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp744
	salq	$2, %rax	#, tmp744
	addq	%rdx, %rax	# D.7728, tmp744
	salq	$5, %rax	#, tmp745
	leaq	16(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp746
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_322, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 643 0
	movl	-68(%rbp), %eax	# y, tmp747
	imull	$100, %eax, %edx	#, tmp747, D.7727
	movl	-72(%rbp), %eax	# x, tmp748
	addl	%eax, %edx	# tmp748, D.7727
	movl	-64(%rbp), %eax	# z, tmp749
	imull	$10000, %eax, %eax	#, tmp749, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp750
	salq	$2, %rax	#, tmp750
	addq	%rdx, %rax	# D.7728, tmp750
	salq	$5, %rax	#, tmp751
	leaq	56(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp752
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_332, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp753
	imull	$100, %eax, %edx	#, tmp753, D.7727
	movl	-72(%rbp), %eax	# x, tmp754
	addl	%eax, %edx	# tmp754, D.7727
	movl	-64(%rbp), %eax	# z, tmp755
	imull	$10000, %eax, %eax	#, tmp755, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp756
	salq	$2, %rax	#, tmp756
	addq	%rdx, %rax	# D.7728, tmp756
	salq	$5, %rax	#, tmp757
	leaq	64(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp758
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_342, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 644 0
	movl	-68(%rbp), %eax	# y, tmp759
	imull	$100, %eax, %edx	#, tmp759, D.7727
	movl	-72(%rbp), %eax	# x, tmp760
	addl	%eax, %edx	# tmp760, D.7727
	movl	-64(%rbp), %eax	# z, tmp761
	imull	$10000, %eax, %eax	#, tmp761, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp762
	salq	$2, %rax	#, tmp762
	addq	%rdx, %rax	# D.7728, tmp762
	salq	$5, %rax	#, tmp763
	leaq	72(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp764
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_352, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp765
	imull	$100, %eax, %edx	#, tmp765, D.7727
	movl	-72(%rbp), %eax	# x, tmp766
	addl	%eax, %edx	# tmp766, D.7727
	movl	-64(%rbp), %eax	# z, tmp767
	imull	$10000, %eax, %eax	#, tmp767, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp768
	salq	$2, %rax	#, tmp768
	addq	%rdx, %rax	# D.7728, tmp768
	salq	$5, %rax	#, tmp769
	leaq	80(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp770
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_362, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 645 0
	movl	-68(%rbp), %eax	# y, tmp771
	imull	$100, %eax, %edx	#, tmp771, D.7727
	movl	-72(%rbp), %eax	# x, tmp772
	addl	%eax, %edx	# tmp772, D.7727
	movl	-64(%rbp), %eax	# z, tmp773
	imull	$10000, %eax, %eax	#, tmp773, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp774
	salq	$2, %rax	#, tmp774
	addq	%rdx, %rax	# D.7728, tmp774
	salq	$5, %rax	#, tmp775
	leaq	88(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp776
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_372, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp777
	imull	$100, %eax, %edx	#, tmp777, D.7727
	movl	-72(%rbp), %eax	# x, tmp778
	addl	%eax, %edx	# tmp778, D.7727
	movl	-64(%rbp), %eax	# z, tmp779
	imull	$10000, %eax, %eax	#, tmp779, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp780
	salq	$2, %rax	#, tmp780
	addq	%rdx, %rax	# D.7728, tmp780
	salq	$5, %rax	#, tmp781
	leaq	96(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp782
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_382, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 646 0
	movl	-68(%rbp), %eax	# y, tmp783
	imull	$100, %eax, %edx	#, tmp783, D.7727
	movl	-72(%rbp), %eax	# x, tmp784
	addl	%eax, %edx	# tmp784, D.7727
	movl	-64(%rbp), %eax	# z, tmp785
	imull	$10000, %eax, %eax	#, tmp785, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp786
	salq	$2, %rax	#, tmp786
	addq	%rdx, %rax	# D.7728, tmp786
	salq	$5, %rax	#, tmp787
	leaq	104(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp788
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_392, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp789
	imull	$100, %eax, %edx	#, tmp789, D.7727
	movl	-72(%rbp), %eax	# x, tmp790
	addl	%eax, %edx	# tmp790, D.7727
	movl	-64(%rbp), %eax	# z, tmp791
	imull	$10000, %eax, %eax	#, tmp791, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp792
	salq	$2, %rax	#, tmp792
	addq	%rdx, %rax	# D.7728, tmp792
	salq	$5, %rax	#, tmp793
	leaq	112(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp794
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_402, D.7730
	.loc 1 642 0
	subsd	%xmm1, %xmm0	# D.7730, tmp795
	movsd	%xmm0, -16(%rbp)	# tmp795, uy
	.loc 1 647 0
	movl	-68(%rbp), %eax	# y, tmp796
	imull	$100, %eax, %edx	#, tmp796, D.7727
	movl	-72(%rbp), %eax	# x, tmp797
	addl	%eax, %edx	# tmp797, D.7727
	movl	-64(%rbp), %eax	# z, tmp798
	imull	$10000, %eax, %eax	#, tmp798, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp799
	salq	$2, %rax	#, tmp799
	addq	%rdx, %rax	# D.7728, tmp799
	salq	$5, %rax	#, tmp800
	leaq	40(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp801
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm0	# *_412, D.7730
	movl	-68(%rbp), %eax	# y, tmp802
	imull	$100, %eax, %edx	#, tmp802, D.7727
	movl	-72(%rbp), %eax	# x, tmp803
	addl	%eax, %edx	# tmp803, D.7727
	movl	-64(%rbp), %eax	# z, tmp804
	imull	$10000, %eax, %eax	#, tmp804, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp805
	salq	$2, %rax	#, tmp805
	addq	%rdx, %rax	# D.7728, tmp805
	salq	$5, %rax	#, tmp806
	leaq	48(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp807
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_421, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 648 0
	movl	-68(%rbp), %eax	# y, tmp808
	imull	$100, %eax, %edx	#, tmp808, D.7727
	movl	-72(%rbp), %eax	# x, tmp809
	addl	%eax, %edx	# tmp809, D.7727
	movl	-64(%rbp), %eax	# z, tmp810
	imull	$10000, %eax, %eax	#, tmp810, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp811
	salq	$2, %rax	#, tmp811
	addq	%rdx, %rax	# D.7728, tmp811
	salq	$5, %rax	#, tmp812
	leaq	88(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp813
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_431, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp814
	imull	$100, %eax, %edx	#, tmp814, D.7727
	movl	-72(%rbp), %eax	# x, tmp815
	addl	%eax, %edx	# tmp815, D.7727
	movl	-64(%rbp), %eax	# z, tmp816
	imull	$10000, %eax, %eax	#, tmp816, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp817
	salq	$2, %rax	#, tmp817
	addq	%rdx, %rax	# D.7728, tmp817
	salq	$5, %rax	#, tmp818
	leaq	96(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp819
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_441, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 649 0
	movl	-68(%rbp), %eax	# y, tmp820
	imull	$100, %eax, %edx	#, tmp820, D.7727
	movl	-72(%rbp), %eax	# x, tmp821
	addl	%eax, %edx	# tmp821, D.7727
	movl	-64(%rbp), %eax	# z, tmp822
	imull	$10000, %eax, %eax	#, tmp822, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp823
	salq	$2, %rax	#, tmp823
	addq	%rdx, %rax	# D.7728, tmp823
	salq	$5, %rax	#, tmp824
	leaq	104(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp825
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_451, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp826
	imull	$100, %eax, %edx	#, tmp826, D.7727
	movl	-72(%rbp), %eax	# x, tmp827
	addl	%eax, %edx	# tmp827, D.7727
	movl	-64(%rbp), %eax	# z, tmp828
	imull	$10000, %eax, %eax	#, tmp828, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp829
	salq	$2, %rax	#, tmp829
	addq	%rdx, %rax	# D.7728, tmp829
	salq	$5, %rax	#, tmp830
	leaq	112(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp831
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_461, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 650 0
	movl	-68(%rbp), %eax	# y, tmp832
	imull	$100, %eax, %edx	#, tmp832, D.7727
	movl	-72(%rbp), %eax	# x, tmp833
	addl	%eax, %edx	# tmp833, D.7727
	movl	-64(%rbp), %eax	# z, tmp834
	imull	$10000, %eax, %eax	#, tmp834, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp835
	salq	$2, %rax	#, tmp835
	addq	%rdx, %rax	# D.7728, tmp835
	salq	$5, %rax	#, tmp836
	leaq	120(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp837
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_471, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp838
	imull	$100, %eax, %edx	#, tmp838, D.7727
	movl	-72(%rbp), %eax	# x, tmp839
	addl	%eax, %edx	# tmp839, D.7727
	movl	-64(%rbp), %eax	# z, tmp840
	imull	$10000, %eax, %eax	#, tmp840, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp841
	salq	$2, %rax	#, tmp841
	addq	%rdx, %rax	# D.7728, tmp841
	salq	$5, %rax	#, tmp842
	leaq	128(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp843
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_481, D.7730
	subsd	%xmm1, %xmm0	# D.7730, D.7730
	.loc 1 651 0
	movl	-68(%rbp), %eax	# y, tmp844
	imull	$100, %eax, %edx	#, tmp844, D.7727
	movl	-72(%rbp), %eax	# x, tmp845
	addl	%eax, %edx	# tmp845, D.7727
	movl	-64(%rbp), %eax	# z, tmp846
	imull	$10000, %eax, %eax	#, tmp846, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp847
	salq	$2, %rax	#, tmp847
	addq	%rdx, %rax	# D.7728, tmp847
	salq	$5, %rax	#, tmp848
	leaq	136(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp849
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_491, D.7730
	addsd	%xmm1, %xmm0	# D.7730, D.7730
	movl	-68(%rbp), %eax	# y, tmp850
	imull	$100, %eax, %edx	#, tmp850, D.7727
	movl	-72(%rbp), %eax	# x, tmp851
	addl	%eax, %edx	# tmp851, D.7727
	movl	-64(%rbp), %eax	# z, tmp852
	imull	$10000, %eax, %eax	#, tmp852, D.7727
	addl	%edx, %eax	# D.7727, D.7727
	movslq	%eax, %rdx	# D.7727, D.7728
	movq	%rdx, %rax	# D.7728, tmp853
	salq	$2, %rax	#, tmp853
	addq	%rdx, %rax	# D.7728, tmp853
	salq	$5, %rax	#, tmp854
	leaq	144(%rax), %rdx	#, D.7728
	movq	-104(%rbp), %rax	# grid, tmp855
	addq	%rdx, %rax	# D.7728, D.7729
	movsd	(%rax), %xmm1	# *_501, D.7730
	.loc 1 647 0
	subsd	%xmm1, %xmm0	# D.7730, tmp856
	movsd	%xmm0, -8(%rbp)	# tmp856, uz
	.loc 1 652 0
	movsd	-24(%rbp), %xmm0	# ux, tmp858
	divsd	-32(%rbp), %xmm0	# rho, tmp857
	movsd	%xmm0, -24(%rbp)	# tmp857, ux
	.loc 1 653 0
	movsd	-16(%rbp), %xmm0	# uy, tmp860
	divsd	-32(%rbp), %xmm0	# rho, tmp859
	movsd	%xmm0, -16(%rbp)	# tmp859, uy
	.loc 1 654 0
	movsd	-8(%rbp), %xmm0	# uz, tmp862
	divsd	-32(%rbp), %xmm0	# rho, tmp861
	movsd	%xmm0, -8(%rbp)	# tmp861, uz
	.loc 1 656 0
	cmpl	$0, -116(%rbp)	#, binary
	je	.L97	#,
	.loc 1 657 0
	leaq	-84(%rbp), %rdx	#, tmp863
	movq	-40(%rbp), %rax	# file, tmp864
	movq	%rdx, %rsi	# tmp863,
	movq	%rax, %rdi	# tmp864,
	call	loadValue	#
	.loc 1 658 0
	leaq	-80(%rbp), %rdx	#, tmp865
	movq	-40(%rbp), %rax	# file, tmp866
	movq	%rdx, %rsi	# tmp865,
	movq	%rax, %rdi	# tmp866,
	call	loadValue	#
	.loc 1 659 0
	leaq	-76(%rbp), %rdx	#, tmp867
	movq	-40(%rbp), %rax	# file, tmp868
	movq	%rdx, %rsi	# tmp867,
	movq	%rax, %rdi	# tmp868,
	call	loadValue	#
	jmp	.L98	#
.L97:
	.loc 1 666 0
	leaq	-76(%rbp), %rsi	#, tmp869
	leaq	-80(%rbp), %rcx	#, tmp870
	leaq	-84(%rbp), %rdx	#, tmp871
	movq	-40(%rbp), %rax	# file, tmp872
	movq	%rsi, %r8	# tmp869,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp872,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
.L98:
	.loc 1 670 0
	movss	-84(%rbp), %xmm0	# fileUx, fileUx.18
	unpcklps	%xmm0, %xmm0	# fileUx.18, fileUx.18
	cvtps2pd	%xmm0, %xmm0	# fileUx.18, D.7730
	movsd	-24(%rbp), %xmm1	# ux, tmp873
	subsd	%xmm0, %xmm1	# D.7730, D.7730
	movapd	%xmm1, %xmm0	# D.7730, D.7730
	unpcklpd	%xmm0, %xmm0	# D.7730
	cvtpd2ps	%xmm0, %xmm2	# D.7730, tmp884
	movss	%xmm2, -56(%rbp)	# tmp884, dUx
	.loc 1 671 0
	movss	-80(%rbp), %xmm0	# fileUy, fileUy.19
	unpcklps	%xmm0, %xmm0	# fileUy.19, fileUy.19
	cvtps2pd	%xmm0, %xmm0	# fileUy.19, D.7730
	movsd	-16(%rbp), %xmm1	# uy, tmp874
	subsd	%xmm0, %xmm1	# D.7730, D.7730
	movapd	%xmm1, %xmm0	# D.7730, D.7730
	unpcklpd	%xmm0, %xmm0	# D.7730
	cvtpd2ps	%xmm0, %xmm3	# D.7730, tmp886
	movss	%xmm3, -52(%rbp)	# tmp886, dUy
	.loc 1 672 0
	movss	-76(%rbp), %xmm0	# fileUz, fileUz.20
	unpcklps	%xmm0, %xmm0	# fileUz.20, fileUz.20
	cvtps2pd	%xmm0, %xmm0	# fileUz.20, D.7730
	movsd	-8(%rbp), %xmm1	# uz, tmp875
	subsd	%xmm0, %xmm1	# D.7730, D.7730
	movapd	%xmm1, %xmm0	# D.7730, D.7730
	unpcklpd	%xmm0, %xmm0	# D.7730
	cvtpd2ps	%xmm0, %xmm4	# D.7730, tmp888
	movss	%xmm4, -48(%rbp)	# tmp888, dUz
	.loc 1 673 0
	movss	-56(%rbp), %xmm0	# dUx, tmp876
	movaps	%xmm0, %xmm1	# tmp876, D.7731
	mulss	-56(%rbp), %xmm1	# dUx, D.7731
	movss	-52(%rbp), %xmm0	# dUy, tmp877
	mulss	-52(%rbp), %xmm0	# dUy, D.7731
	addss	%xmm0, %xmm1	# D.7731, D.7731
	movss	-48(%rbp), %xmm0	# dUz, tmp878
	mulss	-48(%rbp), %xmm0	# dUz, D.7731
	addss	%xmm1, %xmm0	# D.7731, tmp879
	movss	%xmm0, -44(%rbp)	# tmp879, diff2
	.loc 1 674 0
	movss	-44(%rbp), %xmm0	# diff2, tmp880
	ucomiss	-60(%rbp), %xmm0	# maxDiff2, tmp880
	jbe	.L99	#,
	.loc 1 674 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# diff2, tmp881
	movl	%eax, -60(%rbp)	# tmp881, maxDiff2
.L99:
	.loc 1 626 0 is_stmt 1
	addl	$1, -72(%rbp)	#, x
.L96:
	.loc 1 626 0 is_stmt 0 discriminator 1
	cmpl	$99, -72(%rbp)	#, x
	jle	.L101	#,
	.loc 1 625 0 is_stmt 1
	addl	$1, -68(%rbp)	#, y
.L95:
	.loc 1 625 0 is_stmt 0 discriminator 1
	cmpl	$99, -68(%rbp)	#, y
	jle	.L102	#,
	.loc 1 624 0 is_stmt 1
	addl	$1, -64(%rbp)	#, z
.L94:
	.loc 1 624 0 is_stmt 0 discriminator 1
	cmpl	$129, -64(%rbp)	#, z
	jle	.L103	#,
	.loc 1 680 0 is_stmt 1
	movss	-60(%rbp), %xmm0	# maxDiff2, D.7730
	cvtps2pd	%xmm0, %xmm0	# D.7730, D.7730
	call	sqrt	#
	movsd	%xmm0, -128(%rbp)	#, %sfp
	movq	-128(%rbp), %rax	# %sfp, D.7730
	movq	%rax, -128(%rbp)	# D.7730, %sfp
	movsd	-128(%rbp), %xmm0	# %sfp,
	movl	$.LC29, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 687 0
	movq	-40(%rbp), %rax	# file, tmp882
	movq	%rax, %rdi	# tmp882,
	call	fclose	#
	.loc 1 688 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	LBM_compareVelocityField, .-LBM_compareVelocityField
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093664768
	.align 8
.LC2:
	.long	1431655765
	.long	1070945621
	.align 8
.LC3:
	.long	477218588
	.long	1068265927
	.align 8
.LC4:
	.long	477218588
	.long	1067217351
	.align 8
.LC9:
	.long	0
	.long	1073217536
	.align 8
.LC10:
	.long	1717986918
	.long	-1074895258
	.align 8
.LC11:
	.long	3435973836
	.long	1071959244
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	3149642683
	.long	1069267899
	.align 8
.LC14:
	.long	0
	.long	1074921472
	.align 8
.LC15:
	.long	0
	.long	1074266112
	.align 8
.LC16:
	.long	3149642683
	.long	1068219323
	.align 16
.LC17:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC18:
	.long	0
	.long	1078509568
	.align 8
.LC19:
	.long	1202590843
	.long	1065646817
	.align 4
.LC26:
	.long	4048155338
	.text
.Letext0:
	.file 2 "lbm.h"
	.file 3 "lbm_1d_array.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc3d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF100
	.byte	0x1
	.long	.LASF101
	.long	.LASF102
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.long	0x9a
	.uleb128 0x3
	.string	"C"
	.sleb128 0
	.uleb128 0x3
	.string	"N"
	.sleb128 1
	.uleb128 0x3
	.string	"S"
	.sleb128 2
	.uleb128 0x3
	.string	"E"
	.sleb128 3
	.uleb128 0x3
	.string	"W"
	.sleb128 4
	.uleb128 0x3
	.string	"T"
	.sleb128 5
	.uleb128 0x3
	.string	"B"
	.sleb128 6
	.uleb128 0x3
	.string	"NE"
	.sleb128 7
	.uleb128 0x3
	.string	"NW"
	.sleb128 8
	.uleb128 0x3
	.string	"SE"
	.sleb128 9
	.uleb128 0x3
	.string	"SW"
	.sleb128 10
	.uleb128 0x3
	.string	"NT"
	.sleb128 11
	.uleb128 0x3
	.string	"NB"
	.sleb128 12
	.uleb128 0x3
	.string	"ST"
	.sleb128 13
	.uleb128 0x3
	.string	"SB"
	.sleb128 14
	.uleb128 0x3
	.string	"ET"
	.sleb128 15
	.uleb128 0x3
	.string	"EB"
	.sleb128 16
	.uleb128 0x3
	.string	"WT"
	.sleb128 17
	.uleb128 0x3
	.string	"WB"
	.sleb128 18
	.uleb128 0x4
	.long	.LASF0
	.sleb128 19
	.uleb128 0x4
	.long	.LASF1
	.sleb128 20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.long	0xb5
	.uleb128 0x4
	.long	.LASF2
	.sleb128 1
	.uleb128 0x4
	.long	.LASF3
	.sleb128 2
	.uleb128 0x4
	.long	.LASF4
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x3
	.byte	0x8
	.long	0xc0
	.uleb128 0x6
	.long	0xda
	.long	0xd3
	.uleb128 0x7
	.long	0xd3
	.long	0x18cba7f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.long	.LASF6
	.uleb128 0x5
	.long	.LASF8
	.byte	0x3
	.byte	0x9
	.long	0xec
	.uleb128 0x9
	.byte	0x8
	.long	0xb5
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.long	0x106
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x118
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.long	.LASF13
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.long	.LASF14
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.long	.LASF17
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF18
	.uleb128 0x5
	.long	.LASF19
	.byte	0x5
	.byte	0x8c
	.long	0x142
	.uleb128 0x5
	.long	.LASF20
	.byte	0x5
	.byte	0x8d
	.long	0x142
	.uleb128 0xb
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.long	.LASF21
	.uleb128 0x6
	.long	0x106
	.long	0x178
	.uleb128 0xc
	.long	0xd3
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.long	.LASF22
	.uleb128 0x5
	.long	.LASF23
	.byte	0x6
	.byte	0x30
	.long	0x18a
	.uleb128 0xd
	.long	.LASF53
	.byte	0xd8
	.byte	0x7
	.byte	0xf6
	.long	0x30b
	.uleb128 0xe
	.long	.LASF24
	.byte	0x7
	.byte	0xf7
	.long	0xf9
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.byte	0x7
	.byte	0xfc
	.long	0x100
	.byte	0x8
	.uleb128 0xe
	.long	.LASF26
	.byte	0x7
	.byte	0xfd
	.long	0x100
	.byte	0x10
	.uleb128 0xe
	.long	.LASF27
	.byte	0x7
	.byte	0xfe
	.long	0x100
	.byte	0x18
	.uleb128 0xe
	.long	.LASF28
	.byte	0x7
	.byte	0xff
	.long	0x100
	.byte	0x20
	.uleb128 0xf
	.long	.LASF29
	.byte	0x7
	.value	0x100
	.long	0x100
	.byte	0x28
	.uleb128 0xf
	.long	.LASF30
	.byte	0x7
	.value	0x101
	.long	0x100
	.byte	0x30
	.uleb128 0xf
	.long	.LASF31
	.byte	0x7
	.value	0x102
	.long	0x100
	.byte	0x38
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.value	0x103
	.long	0x100
	.byte	0x40
	.uleb128 0xf
	.long	.LASF33
	.byte	0x7
	.value	0x105
	.long	0x100
	.byte	0x48
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.value	0x106
	.long	0x100
	.byte	0x50
	.uleb128 0xf
	.long	.LASF35
	.byte	0x7
	.value	0x107
	.long	0x100
	.byte	0x58
	.uleb128 0xf
	.long	.LASF36
	.byte	0x7
	.value	0x109
	.long	0x343
	.byte	0x60
	.uleb128 0xf
	.long	.LASF37
	.byte	0x7
	.value	0x10b
	.long	0x349
	.byte	0x68
	.uleb128 0xf
	.long	.LASF38
	.byte	0x7
	.value	0x10d
	.long	0xf9
	.byte	0x70
	.uleb128 0xf
	.long	.LASF39
	.byte	0x7
	.value	0x111
	.long	0xf9
	.byte	0x74
	.uleb128 0xf
	.long	.LASF40
	.byte	0x7
	.value	0x113
	.long	0x149
	.byte	0x78
	.uleb128 0xf
	.long	.LASF41
	.byte	0x7
	.value	0x117
	.long	0x126
	.byte	0x80
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.value	0x118
	.long	0x134
	.byte	0x82
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.value	0x119
	.long	0x34f
	.byte	0x83
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.value	0x11d
	.long	0x35f
	.byte	0x88
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.value	0x126
	.long	0x154
	.byte	0x90
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.value	0x12f
	.long	0x15f
	.byte	0x98
	.uleb128 0xf
	.long	.LASF47
	.byte	0x7
	.value	0x130
	.long	0x15f
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x7
	.value	0x131
	.long	0x15f
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x7
	.value	0x132
	.long	0x15f
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x7
	.value	0x133
	.long	0x10d
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF51
	.byte	0x7
	.value	0x135
	.long	0xf9
	.byte	0xc0
	.uleb128 0xf
	.long	.LASF52
	.byte	0x7
	.value	0x137
	.long	0x365
	.byte	0xc4
	.byte	0
	.uleb128 0x10
	.long	.LASF103
	.byte	0x7
	.byte	0x9b
	.uleb128 0xd
	.long	.LASF54
	.byte	0x18
	.byte	0x7
	.byte	0xa1
	.long	0x343
	.uleb128 0xe
	.long	.LASF55
	.byte	0x7
	.byte	0xa2
	.long	0x343
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x7
	.byte	0xa3
	.long	0x349
	.byte	0x8
	.uleb128 0xe
	.long	.LASF57
	.byte	0x7
	.byte	0xa7
	.long	0xf9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x312
	.uleb128 0x9
	.byte	0x8
	.long	0x18a
	.uleb128 0x6
	.long	0x106
	.long	0x35f
	.uleb128 0xc
	.long	0xd3
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x30b
	.uleb128 0x6
	.long	0x106
	.long	0x375
	.uleb128 0xc
	.long	0xd3
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x37b
	.uleb128 0x11
	.long	0x106
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.byte	0x19
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c8
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x19
	.long	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x1a
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF59
	.byte	0x1
	.byte	0x1b
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x3ce
	.uleb128 0x9
	.byte	0x8
	.long	0xda
	.uleb128 0x11
	.long	0x10d
	.uleb128 0x12
	.long	.LASF61
	.byte	0x1
	.byte	0x2c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x413
	.uleb128 0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x2c
	.long	0x3c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x2d
	.long	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF62
	.byte	0x1
	.byte	0x35
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x46b
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x35
	.long	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x36
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x53
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x470
	.uleb128 0x9
	.byte	0x8
	.long	0x12d
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x59
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4be
	.uleb128 0x16
	.long	.LASF66
	.byte	0x1
	.byte	0x59
	.long	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.byte	0x59
	.long	0x4be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"aux"
	.byte	0x1
	.byte	0x5a
	.long	0xe1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xe1
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x61
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x550
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x61
	.long	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.byte	0x61
	.long	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x62
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x62
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"z"
	.byte	0x1
	.byte	0x62
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.byte	0x64
	.long	0x550
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x69
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x17f
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x75
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ea
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x75
	.long	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x76
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x76
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"z"
	.byte	0x1
	.byte	0x76
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x5c9
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x84
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x8a
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF72
	.byte	0x1
	.byte	0x94
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x67e
	.uleb128 0x16
	.long	.LASF63
	.byte	0x1
	.byte	0x94
	.long	0x3ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.byte	0x95
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"y"
	.byte	0x1
	.byte	0x95
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"z"
	.byte	0x1
	.byte	0x95
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x65d
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0xa2
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x18
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0xa6
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.byte	0xaf
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x708
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0xaf
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.byte	0xaf
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xb0
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"ux"
	.byte	0x1
	.byte	0xb2
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"uy"
	.byte	0x1
	.byte	0xb2
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"uz"
	.byte	0x1
	.byte	0xb2
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"u2"
	.byte	0x1
	.byte	0xb2
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"rho"
	.byte	0x1
	.byte	0xb2
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF76
	.byte	0x1
	.value	0x112
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x829
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.value	0x112
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1c
	.string	"ux"
	.byte	0x1
	.value	0x113
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1c
	.string	"uy"
	.byte	0x1
	.value	0x113
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"uz"
	.byte	0x1
	.value	0x113
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"rho"
	.byte	0x1
	.value	0x113
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.string	"ux1"
	.byte	0x1
	.value	0x114
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"uy1"
	.byte	0x1
	.value	0x114
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"uz1"
	.byte	0x1
	.value	0x114
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x1
	.value	0x114
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1c
	.string	"ux2"
	.byte	0x1
	.value	0x115
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"uy2"
	.byte	0x1
	.value	0x115
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"uz2"
	.byte	0x1
	.value	0x115
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x1
	.value	0x115
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1c
	.string	"u2"
	.byte	0x1
	.value	0x116
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"px"
	.byte	0x1
	.value	0x116
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1c
	.string	"py"
	.byte	0x1
	.value	0x116
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x117
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x1e
	.long	.LASF79
	.byte	0x1
	.value	0x1c0
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x92e
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x1c0
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1d
	.long	.LASF80
	.byte	0x1
	.value	0x1c1
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1d
	.long	.LASF81
	.byte	0x1
	.value	0x1c2
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x1d
	.long	.LASF82
	.byte	0x1
	.value	0x1c3
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1c
	.string	"ux"
	.byte	0x1
	.value	0x1c4
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.string	"uy"
	.byte	0x1
	.value	0x1c4
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"uz"
	.byte	0x1
	.value	0x1c4
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.long	.LASF83
	.byte	0x1
	.value	0x1c5
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.long	.LASF84
	.byte	0x1
	.value	0x1c5
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"u2"
	.byte	0x1
	.value	0x1c5
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x1
	.value	0x1c6
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF86
	.byte	0x1
	.value	0x1c6
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"rho"
	.byte	0x1
	.value	0x1c6
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.long	.LASF87
	.byte	0x1
	.value	0x1c7
	.long	0xda
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x1c9
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x1f
	.long	.LASF91
	.byte	0x1
	.value	0x204
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b5
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.value	0x204
	.long	0x550
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.value	0x204
	.long	0x9b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF88
	.byte	0x1
	.value	0x205
	.long	0x9bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x1
	.value	0x207
	.long	0x375
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.value	0x208
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x209
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xf2
	.uleb128 0x11
	.long	0xf9
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.value	0x217
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa47
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x1
	.value	0x217
	.long	0x550
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.value	0x217
	.long	0x9b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF88
	.byte	0x1
	.value	0x218
	.long	0x9bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x1d
	.long	.LASF89
	.byte	0x1
	.value	0x21a
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LASF90
	.byte	0x1
	.value	0x21b
	.long	0x168
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x21c
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x1
	.value	0x22a
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb05
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x22a
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.value	0x22a
	.long	0x375
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.value	0x22b
	.long	0x9bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.value	0x22c
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x22c
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1c
	.string	"z"
	.byte	0x1
	.value	0x22c
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"rho"
	.byte	0x1
	.value	0x22d
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.string	"ux"
	.byte	0x1
	.value	0x22d
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.string	"uy"
	.byte	0x1
	.value	0x22d
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"uz"
	.byte	0x1
	.value	0x22d
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x1
	.value	0x22f
	.long	0x550
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF104
	.byte	0x1
	.value	0x266
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.value	0x266
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x1
	.value	0x266
	.long	0x375
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.long	.LASF94
	.byte	0x1
	.value	0x267
	.long	0x9bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.value	0x268
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.value	0x268
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.string	"z"
	.byte	0x1
	.value	0x268
	.long	0xf9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1c
	.string	"rho"
	.byte	0x1
	.value	0x269
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.string	"ux"
	.byte	0x1
	.value	0x269
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"uy"
	.byte	0x1
	.value	0x269
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.string	"uz"
	.byte	0x1
	.value	0x269
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LASF95
	.byte	0x1
	.value	0x26a
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1d
	.long	.LASF96
	.byte	0x1
	.value	0x26a
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x1
	.value	0x26a
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1c
	.string	"dUx"
	.byte	0x1
	.value	0x26b
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"dUy"
	.byte	0x1
	.value	0x26b
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1c
	.string	"dUz"
	.byte	0x1
	.value	0x26b
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x26c
	.long	0xf2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.long	.LASF99
	.byte	0x1
	.value	0x26c
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x1
	.value	0x26e
	.long	0x550
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
.LASF94:
	.string	"binary"
.LASF19:
	.string	"__off_t"
.LASF25:
	.string	"_IO_read_ptr"
.LASF37:
	.string	"_chain"
.LASF11:
	.string	"size_t"
.LASF3:
	.string	"ACCEL"
.LASF76:
	.string	"LBM_handleInOutFlow"
.LASF43:
	.string	"_shortbuf"
.LASF31:
	.string	"_IO_buf_base"
.LASF101:
	.string	"lbm.c"
.LASF22:
	.string	"long long unsigned int"
.LASF77:
	.string	"rho1"
.LASF89:
	.string	"vPtr"
.LASF21:
	.string	"long long int"
.LASF16:
	.string	"signed char"
.LASF38:
	.string	"_fileno"
.LASF26:
	.string	"_IO_read_end"
.LASF18:
	.string	"long int"
.LASF24:
	.string	"_flags"
.LASF32:
	.string	"_IO_buf_end"
.LASF6:
	.string	"double"
.LASF104:
	.string	"LBM_compareVelocityField"
.LASF40:
	.string	"_old_offset"
.LASF45:
	.string	"_offset"
.LASF78:
	.string	"rho2"
.LASF62:
	.string	"LBM_initializeGrid"
.LASF73:
	.string	"LBM_performStreamCollide"
.LASF87:
	.string	"mass"
.LASF50:
	.string	"__pad5"
.LASF64:
	.string	"_aux_"
.LASF54:
	.string	"_IO_marker"
.LASF15:
	.string	"unsigned int"
.LASF93:
	.string	"LBM_storeVelocityField"
.LASF12:
	.string	"long unsigned int"
.LASF29:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"_sbuf"
.LASF59:
	.string	"size"
.LASF14:
	.string	"short unsigned int"
.LASF33:
	.string	"_IO_save_base"
.LASF92:
	.string	"loadValue"
.LASF44:
	.string	"_lock"
.LASF60:
	.string	"LBM_allocateGrid"
.LASF39:
	.string	"_flags2"
.LASF51:
	.string	"_mode"
.LASF95:
	.string	"fileUx"
.LASF96:
	.string	"fileUy"
.LASF97:
	.string	"fileUz"
.LASF58:
	.string	"margin"
.LASF86:
	.string	"maxRho"
.LASF75:
	.string	"dstGrid"
.LASF5:
	.string	"sizetype"
.LASF69:
	.string	"filename"
.LASF30:
	.string	"_IO_write_end"
.LASF63:
	.string	"grid"
.LASF103:
	.string	"_IO_lock_t"
.LASF98:
	.string	"diff2"
.LASF53:
	.string	"_IO_FILE"
.LASF68:
	.string	"LBM_loadObstacleFile"
.LASF65:
	.string	"LBM_swapGrids"
.LASF9:
	.string	"float"
.LASF90:
	.string	"buffer"
.LASF57:
	.string	"_pos"
.LASF85:
	.string	"minRho"
.LASF102:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/470.lbm/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF13:
	.string	"unsigned char"
.LASF17:
	.string	"short int"
.LASF1:
	.string	"N_CELL_ENTRIES"
.LASF70:
	.string	"file"
.LASF42:
	.string	"_vtable_offset"
.LASF80:
	.string	"nObstacleCells"
.LASF23:
	.string	"FILE"
.LASF2:
	.string	"OBSTACLE"
.LASF36:
	.string	"_markers"
.LASF74:
	.string	"srcGrid"
.LASF79:
	.string	"LBM_showGridStatistics"
.LASF71:
	.string	"LBM_initializeSpecialCellsForLDC"
.LASF10:
	.string	"char"
.LASF61:
	.string	"LBM_freeGrid"
.LASF91:
	.string	"storeValue"
.LASF83:
	.string	"minU2"
.LASF4:
	.string	"IN_OUT_FLOW"
.LASF55:
	.string	"_next"
.LASF20:
	.string	"__off64_t"
.LASF41:
	.string	"_cur_column"
.LASF27:
	.string	"_IO_read_base"
.LASF35:
	.string	"_IO_save_end"
.LASF0:
	.string	"FLAGS"
.LASF99:
	.string	"maxDiff2"
.LASF46:
	.string	"__pad1"
.LASF47:
	.string	"__pad2"
.LASF48:
	.string	"__pad3"
.LASF49:
	.string	"__pad4"
.LASF72:
	.string	"LBM_initializeSpecialCellsForChannel"
.LASF52:
	.string	"_unused2"
.LASF84:
	.string	"maxU2"
.LASF81:
	.string	"nAccelCells"
.LASF82:
	.string	"nFluidCells"
.LASF100:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF34:
	.string	"_IO_backup_base"
.LASF66:
	.string	"grid1"
.LASF67:
	.string	"grid2"
.LASF7:
	.string	"LBM_Grid"
.LASF8:
	.string	"LBM_GridPtr"
.LASF28:
	.string	"_IO_write_base"
.LASF88:
	.string	"litteBigEndianTest"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
