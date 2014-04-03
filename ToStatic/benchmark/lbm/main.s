	.file	"main.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 main.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	srcGrid
	.comm	srcGrid,8,8
	.local	dstGrid
	.comm	dstGrid,8,8
	.section	.rodata
.LC0:
	.string	"timestep: %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "main.c"
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# nArgs, nArgs
	movq	%rsi, -64(%rbp)	# arg, arg
	.loc 1 32 0
	leaq	-32(%rbp), %rdx	#, tmp68
	movq	-64(%rbp), %rcx	# arg, tmp69
	movl	-52(%rbp), %eax	# nArgs, tmp70
	movq	%rcx, %rsi	# tmp69,
	movl	%eax, %edi	# tmp70,
	call	MAIN_parseCommandLine	#
	.loc 1 33 0
	leaq	-32(%rbp), %rax	#, tmp71
	movq	%rax, %rdi	# tmp71,
	call	MAIN_printInfo	#
	.loc 1 34 0
	leaq	-32(%rbp), %rax	#, tmp72
	movq	%rax, %rdi	# tmp72,
	call	MAIN_initialize	#
	.loc 1 39 0
	movl	$1, -36(%rbp)	#, t
	jmp	.L2	#
.L5:
	.loc 1 40 0
	movl	-12(%rbp), %eax	# param.simType, D.3114
	cmpl	$1, %eax	#, D.3114
	jne	.L3	#,
	.loc 1 41 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.0
	movq	%rax, %rdi	# srcGrid.0,
	call	LBM_handleInOutFlow	#
.L3:
	.loc 1 44 0
	movq	dstGrid(%rip), %rdx	# dstGrid, dstGrid.1
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.2
	movq	%rdx, %rsi	# dstGrid.1,
	movq	%rax, %rdi	# srcGrid.2,
	call	LBM_performStreamCollide	#
	.loc 1 45 0
	movl	$dstGrid, %esi	#,
	movl	$srcGrid, %edi	#,
	call	LBM_swapGrids	#
	.loc 1 47 0
	movl	-36(%rbp), %eax	# t, tmp73
	andl	$63, %eax	#, D.3113
	testl	%eax, %eax	# D.3113
	jne	.L4	#,
	.loc 1 48 0
	movl	-36(%rbp), %eax	# t, tmp74
	movl	%eax, %esi	# tmp74,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 49 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.3
	movq	%rax, %rdi	# srcGrid.3,
	call	LBM_showGridStatistics	#
.L4:
	.loc 1 39 0
	addl	$1, -36(%rbp)	#, t
.L2:
	.loc 1 39 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# param.nTimeSteps, D.3113
	cmpl	-36(%rbp), %eax	# t, D.3113
	jge	.L5	#,
	.loc 1 56 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp75
	movq	%rax, %rdi	# tmp75,
	call	MAIN_finalize	#
	.loc 1 58 0
	movl	$0, %eax	#, D.3113
	.loc 1 59 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.string	"syntax: lbm <time steps> <result file> <0: nil, 1: cmp, 2: str> <0: ldc, 1: channel flow> [<obstacle file>]"
	.align 8
.LC2:
	.string	"MAIN_parseCommandLine: cannot stat obstacle file '%s'\n"
	.align 8
.LC3:
	.string	"MAIN_parseCommandLine:\n\tsize of file '%s' is %i bytes\n\texpected size is %i bytes\n"
	.align 8
.LC4:
	.string	"MAIN_parseCommandLine: cannot stat result file '%s'\n"
	.text
	.globl	MAIN_parseCommandLine
	.type	MAIN_parseCommandLine, @function
MAIN_parseCommandLine:
.LFB3:
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movl	%edi, -148(%rbp)	# nArgs, nArgs
	movq	%rsi, -160(%rbp)	# arg, arg
	movq	%rdx, -168(%rbp)	# param, param
	.loc 1 66 0
	cmpl	$4, -148(%rbp)	#, nArgs
	jle	.L8	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	cmpl	$6, -148(%rbp)	#, nArgs
	jle	.L9	#,
.L8:
	.loc 1 67 0 is_stmt 1
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 68 0
	movl	$1, %edi	#,
	call	exit	#
.L9:
	.loc 1 71 0
	movq	-160(%rbp), %rax	# arg, tmp83
	addq	$8, %rax	#, D.3116
	movq	(%rax), %rax	# *_3, D.3117
	movq	%rax, %rdi	# D.3117,
	call	atoi	#
	movq	-168(%rbp), %rdx	# param, tmp84
	movl	%eax, (%rdx)	# D.3118, param_6(D)->nTimeSteps
	.loc 1 72 0
	movq	-160(%rbp), %rax	# arg, tmp85
	movq	16(%rax), %rdx	# MEM[(char * *)arg_2(D) + 16B], D.3117
	movq	-168(%rbp), %rax	# param, tmp86
	movq	%rdx, 8(%rax)	# D.3117, param_6(D)->resultFilename
	.loc 1 73 0
	movq	-160(%rbp), %rax	# arg, tmp87
	addq	$24, %rax	#, D.3116
	movq	(%rax), %rax	# *_8, D.3117
	movq	%rax, %rdi	# D.3117,
	call	atoi	#
	movl	%eax, %edx	# D.3118, D.3119
	movq	-168(%rbp), %rax	# param, tmp88
	movl	%edx, 16(%rax)	# D.3119, param_6(D)->action
	.loc 1 74 0
	movq	-160(%rbp), %rax	# arg, tmp89
	addq	$32, %rax	#, D.3116
	movq	(%rax), %rax	# *_12, D.3117
	movq	%rax, %rdi	# D.3117,
	call	atoi	#
	movl	%eax, %edx	# D.3118, D.3120
	movq	-168(%rbp), %rax	# param, tmp90
	movl	%edx, 20(%rax)	# D.3120, param_6(D)->simType
	.loc 1 76 0
	cmpl	$6, -148(%rbp)	#, nArgs
	jne	.L10	#,
	.loc 1 77 0
	movq	-160(%rbp), %rax	# arg, tmp91
	movq	40(%rax), %rdx	# MEM[(char * *)arg_2(D) + 40B], D.3117
	movq	-168(%rbp), %rax	# param, tmp92
	movq	%rdx, 24(%rax)	# D.3117, param_6(D)->obstacleFilename
	.loc 1 79 0
	movq	-168(%rbp), %rax	# param, tmp93
	movq	24(%rax), %rax	# param_6(D)->obstacleFilename, D.3117
	leaq	-144(%rbp), %rdx	#, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.3117,
	call	stat	#
	testl	%eax, %eax	# D.3118
	je	.L11	#,
	.loc 1 80 0
	movq	-168(%rbp), %rax	# param, tmp95
	movq	24(%rax), %rax	# param_6(D)->obstacleFilename, D.3117
	movq	%rax, %rsi	# D.3117,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 82 0
	movl	$1, %edi	#,
	call	exit	#
.L11:
	.loc 1 84 0
	movq	-96(%rbp), %rax	# fileStat.st_size, D.3121
	cmpq	$1313130, %rax	#, D.3121
	je	.L12	#,
	.loc 1 88 0
	movq	-96(%rbp), %rax	# fileStat.st_size, D.3121
	.loc 1 85 0
	movl	%eax, %edx	# D.3121, D.3118
	movq	-168(%rbp), %rax	# param, tmp96
	movq	24(%rax), %rax	# param_6(D)->obstacleFilename, D.3117
	movl	$1313130, %ecx	#,
	movq	%rax, %rsi	# D.3117,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 90 0
	movl	$1, %edi	#,
	call	exit	#
.L10:
	.loc 1 93 0
	movq	-168(%rbp), %rax	# param, tmp97
	movq	$0, 24(%rax)	#, param_6(D)->obstacleFilename
.L12:
	.loc 1 95 0
	movq	-168(%rbp), %rax	# param, tmp98
	movl	16(%rax), %eax	# param_6(D)->action, D.3119
	cmpl	$1, %eax	#, D.3119
	jne	.L7	#,
	.loc 1 96 0 discriminator 1
	movq	-168(%rbp), %rax	# param, tmp99
	movq	8(%rax), %rax	# param_6(D)->resultFilename, D.3117
	leaq	-144(%rbp), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.3117,
	call	stat	#
	.loc 1 95 0 discriminator 1
	testl	%eax, %eax	# D.3118
	je	.L7	#,
	.loc 1 97 0
	movq	-168(%rbp), %rax	# param, tmp101
	movq	8(%rax), %rax	# param_6(D)->resultFilename, D.3117
	movq	%rax, %rsi	# D.3117,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 99 0
	movl	$1, %edi	#,
	call	exit	#
.L7:
	.loc 1 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	MAIN_parseCommandLine, .-MAIN_parseCommandLine
	.section	.rodata
.LC5:
	.string	"<none>"
	.align 8
.LC7:
	.string	"MAIN_printInfo:\n\tgrid size      : %i x %i x %i = %.2f * 10^6 Cells\n\tnTimeSteps     : %i\n\tresult file    : %s\n\taction         : %s\n\tsimulation type: %s\n\tobstacle file  : %s\n\n"
	.text
	.globl	MAIN_printInfo
	.type	MAIN_printInfo, @function
MAIN_printInfo:
.LFB4:
	.loc 1 105 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movq	%rdi, -200(%rbp)	# param, param
	.loc 1 106 0
	movabsq	$29113321604280174, %rax	#, tmp83
	movq	%rax, -192(%rbp)	# tmp83, actionString
	movq	$0, -184(%rbp)	#, actionString
	movq	$0, -176(%rbp)	#, actionString
	movq	$0, -168(%rbp)	#, actionString
	movabsq	$28554735471390563, %rax	#, tmp84
	movq	%rax, -160(%rbp)	# tmp84, actionString
	movq	$0, -152(%rbp)	#, actionString
	movq	$0, -144(%rbp)	#, actionString
	movq	$0, -136(%rbp)	#, actionString
	movabsq	$435711603827, %rax	#, tmp85
	movq	%rax, -128(%rbp)	# tmp85, actionString
	movq	$0, -120(%rbp)	#, actionString
	movq	$0, -112(%rbp)	#, actionString
	movq	$0, -104(%rbp)	#, actionString
	.loc 1 107 0
	leaq	-96(%rbp), %rsi	#, tmp67
	movl	$0, %eax	#, tmp68
	movl	$12, %edx	#, tmp69
	movq	%rsi, %rdi	# tmp67, tmp67
	movq	%rdx, %rcx	# tmp69, tmp69
	rep stosq
	movabsq	$8532476743613966700, %rax	#, tmp88
	movq	%rax, -96(%rbp)	# tmp88, simTypeString
	movabsq	$8388365941601234533, %rax	#, tmp89
	movq	%rax, -88(%rbp)	# tmp89, simTypeString
	movq	$121, -80(%rbp)	#, simTypeString
	movq	$0, -72(%rbp)	#, simTypeString
	movabsq	$2336353831671130211, %rax	#, tmp90
	movq	%rax, -64(%rbp)	# tmp90, simTypeString
	movq	$2003790950, -56(%rbp)	#, simTypeString
	movq	$0, -48(%rbp)	#, simTypeString
	movq	$0, -40(%rbp)	#, simTypeString
	.loc 1 118 0
	movq	-200(%rbp), %rax	# param, tmp70
	movq	24(%rax), %rax	# param_2(D)->obstacleFilename, D.3126
	.loc 1 108 0
	testq	%rax, %rax	# D.3126
	je	.L15	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-200(%rbp), %rax	# param, tmp71
	movq	24(%rax), %rdx	# param_2(D)->obstacleFilename, iftmp.4
	jmp	.L16	#
.L15:
	.loc 1 108 0 discriminator 2
	movl	$.LC5, %edx	#, iftmp.4
.L16:
	.loc 1 117 0 is_stmt 1
	movq	-200(%rbp), %rax	# param, tmp72
	movl	20(%rax), %ecx	# param_2(D)->simType, D.3127
	leaq	-96(%rbp), %rax	#, tmp73
	movl	%ecx, %ecx	# D.3127, tmp74
	salq	$5, %rcx	#, tmp75
	leaq	(%rax,%rcx), %r8	#, D.3128
	movq	-200(%rbp), %rax	# param, tmp76
	movl	16(%rax), %ecx	# param_2(D)->action, D.3129
	leaq	-192(%rbp), %rax	#, tmp77
	movl	%ecx, %ecx	# D.3129, tmp78
	salq	$5, %rcx	#, tmp79
	leaq	(%rax,%rcx), %rdi	#, D.3128
	.loc 1 108 0
	movq	-200(%rbp), %rax	# param, tmp80
	movq	8(%rax), %rsi	# param_2(D)->resultFilename, D.3126
	movq	-200(%rbp), %rax	# param, tmp81
	movl	(%rax), %ecx	# param_2(D)->nTimeSteps, D.3130
	movabsq	$4608533498688228556, %rax	#, tmp82
	movq	%rdx, 16(%rsp)	# iftmp.4,
	movq	%r8, 8(%rsp)	# D.3128,
	movq	%rdi, (%rsp)	# D.3128,
	movq	%rsi, %r9	# D.3126,
	movl	%ecx, %r8d	# D.3130,
	movq	%rax, -208(%rbp)	# tmp82, %sfp
	movsd	-208(%rbp), %xmm0	# %sfp,
	movl	$130, %ecx	#,
	movl	$100, %edx	#,
	movl	$100, %esi	#,
	movl	$.LC7, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	MAIN_printInfo, .-MAIN_printInfo
	.globl	MAIN_initialize
	.type	MAIN_initialize, @function
MAIN_initialize:
.LFB5:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# param, param
	.loc 1 125 0
	movl	$srcGrid, %edi	#,
	call	LBM_allocateGrid	#
	.loc 1 126 0
	movl	$dstGrid, %edi	#,
	call	LBM_allocateGrid	#
	.loc 1 128 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.5
	movq	%rax, %rdi	# srcGrid.5,
	call	LBM_initializeGrid	#
	.loc 1 129 0
	movq	dstGrid(%rip), %rax	# dstGrid, dstGrid.6
	movq	%rax, %rdi	# dstGrid.6,
	call	LBM_initializeGrid	#
	.loc 1 131 0
	movq	-8(%rbp), %rax	# param, tmp72
	movq	24(%rax), %rax	# param_3(D)->obstacleFilename, D.3134
	testq	%rax, %rax	# D.3134
	je	.L18	#,
	.loc 1 132 0
	movq	-8(%rbp), %rax	# param, tmp73
	movq	24(%rax), %rdx	# param_3(D)->obstacleFilename, D.3134
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.7
	movq	%rdx, %rsi	# D.3134,
	movq	%rax, %rdi	# srcGrid.7,
	call	LBM_loadObstacleFile	#
	.loc 1 133 0
	movq	-8(%rbp), %rax	# param, tmp74
	movq	24(%rax), %rdx	# param_3(D)->obstacleFilename, D.3134
	movq	dstGrid(%rip), %rax	# dstGrid, dstGrid.8
	movq	%rdx, %rsi	# D.3134,
	movq	%rax, %rdi	# dstGrid.8,
	call	LBM_loadObstacleFile	#
.L18:
	.loc 1 136 0
	movq	-8(%rbp), %rax	# param, tmp75
	movl	20(%rax), %eax	# param_3(D)->simType, D.3135
	cmpl	$1, %eax	#, D.3135
	jne	.L19	#,
	.loc 1 137 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.9
	movq	%rax, %rdi	# srcGrid.9,
	call	LBM_initializeSpecialCellsForChannel	#
	.loc 1 138 0
	movq	dstGrid(%rip), %rax	# dstGrid, dstGrid.10
	movq	%rax, %rdi	# dstGrid.10,
	call	LBM_initializeSpecialCellsForChannel	#
	jmp	.L20	#
.L19:
	.loc 1 141 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.11
	movq	%rax, %rdi	# srcGrid.11,
	call	LBM_initializeSpecialCellsForLDC	#
	.loc 1 142 0
	movq	dstGrid(%rip), %rax	# dstGrid, dstGrid.12
	movq	%rax, %rdi	# dstGrid.12,
	call	LBM_initializeSpecialCellsForLDC	#
.L20:
	.loc 1 145 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.13
	movq	%rax, %rdi	# srcGrid.13,
	call	LBM_showGridStatistics	#
	.loc 1 146 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	MAIN_initialize, .-MAIN_initialize
	.globl	MAIN_finalize
	.type	MAIN_finalize, @function
MAIN_finalize:
.LFB6:
	.loc 1 150 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# param, param
	.loc 1 151 0
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.14
	movq	%rax, %rdi	# srcGrid.14,
	call	LBM_showGridStatistics	#
	.loc 1 153 0
	movq	-8(%rbp), %rax	# param, tmp66
	movl	16(%rax), %eax	# param_2(D)->action, D.3136
	cmpl	$1, %eax	#, D.3136
	jne	.L22	#,
	.loc 1 154 0
	movq	-8(%rbp), %rax	# param, tmp67
	movq	8(%rax), %rcx	# param_2(D)->resultFilename, D.3137
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.15
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# D.3137,
	movq	%rax, %rdi	# srcGrid.15,
	call	LBM_compareVelocityField	#
.L22:
	.loc 1 155 0
	movq	-8(%rbp), %rax	# param, tmp68
	movl	16(%rax), %eax	# param_2(D)->action, D.3136
	cmpl	$2, %eax	#, D.3136
	jne	.L23	#,
	.loc 1 156 0
	movq	-8(%rbp), %rax	# param, tmp69
	movq	8(%rax), %rcx	# param_2(D)->resultFilename, D.3137
	movq	srcGrid(%rip), %rax	# srcGrid, srcGrid.16
	movl	$-1, %edx	#,
	movq	%rcx, %rsi	# D.3137,
	movq	%rax, %rdi	# srcGrid.16,
	call	LBM_storeVelocityField	#
.L23:
	.loc 1 158 0
	movl	$srcGrid, %edi	#,
	call	LBM_freeGrid	#
	.loc 1 159 0
	movl	$dstGrid, %edi	#,
	call	LBM_freeGrid	#
	.loc 1 160 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MAIN_finalize, .-MAIN_finalize
.Letext0:
	.file 2 "main.h"
	.file 3 "lbm.h"
	.file 4 "lbm_1d_array.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4e4
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
	.byte	0x2
	.byte	0x1b
	.long	0x48
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.uleb128 0x3
	.long	.LASF2
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0x1b
	.long	0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.long	0x68
	.uleb128 0x5
	.string	"LDC"
	.sleb128 0
	.uleb128 0x3
	.long	.LASF3
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF5
	.byte	0x2
	.byte	0x1c
	.long	0x53
	.uleb128 0x6
	.byte	0x20
	.byte	0x2
	.byte	0x1e
	.long	0xb8
	.uleb128 0x7
	.long	.LASF6
	.byte	0x2
	.byte	0x1f
	.long	0xb8
	.byte	0
	.uleb128 0x7
	.long	.LASF7
	.byte	0x2
	.byte	0x20
	.long	0xbf
	.byte	0x8
	.uleb128 0x7
	.long	.LASF8
	.byte	0x2
	.byte	0x21
	.long	0x48
	.byte	0x10
	.uleb128 0x7
	.long	.LASF9
	.byte	0x2
	.byte	0x22
	.long	0x68
	.byte	0x14
	.uleb128 0x7
	.long	.LASF10
	.byte	0x2
	.byte	0x23
	.long	0xbf
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x9
	.byte	0x8
	.long	0xc5
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x24
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.long	0x144
	.uleb128 0x5
	.string	"C"
	.sleb128 0
	.uleb128 0x5
	.string	"N"
	.sleb128 1
	.uleb128 0x5
	.string	"S"
	.sleb128 2
	.uleb128 0x5
	.string	"E"
	.sleb128 3
	.uleb128 0x5
	.string	"W"
	.sleb128 4
	.uleb128 0x5
	.string	"T"
	.sleb128 5
	.uleb128 0x5
	.string	"B"
	.sleb128 6
	.uleb128 0x5
	.string	"NE"
	.sleb128 7
	.uleb128 0x5
	.string	"NW"
	.sleb128 8
	.uleb128 0x5
	.string	"SE"
	.sleb128 9
	.uleb128 0x5
	.string	"SW"
	.sleb128 10
	.uleb128 0x5
	.string	"NT"
	.sleb128 11
	.uleb128 0x5
	.string	"NB"
	.sleb128 12
	.uleb128 0x5
	.string	"ST"
	.sleb128 13
	.uleb128 0x5
	.string	"SB"
	.sleb128 14
	.uleb128 0x5
	.string	"ET"
	.sleb128 15
	.uleb128 0x5
	.string	"EB"
	.sleb128 16
	.uleb128 0x5
	.string	"WT"
	.sleb128 17
	.uleb128 0x5
	.string	"WB"
	.sleb128 18
	.uleb128 0x3
	.long	.LASF13
	.sleb128 19
	.uleb128 0x3
	.long	.LASF14
	.sleb128 20
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x8
	.long	0x14f
	.uleb128 0xb
	.long	0x169
	.long	0x162
	.uleb128 0xc
	.long	0x162
	.long	0x18cba7f
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.long	.LASF17
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x9
	.long	0x17b
	.uleb128 0x9
	.byte	0x8
	.long	0x144
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF19
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.long	.LASF20
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.long	.LASF22
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.long	.LASF24
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF25
	.uleb128 0x4
	.long	.LASF26
	.byte	0x5
	.byte	0x85
	.long	0x181
	.uleb128 0x4
	.long	.LASF27
	.byte	0x5
	.byte	0x86
	.long	0x196
	.uleb128 0x4
	.long	.LASF28
	.byte	0x5
	.byte	0x87
	.long	0x196
	.uleb128 0x4
	.long	.LASF29
	.byte	0x5
	.byte	0x88
	.long	0x181
	.uleb128 0x4
	.long	.LASF30
	.byte	0x5
	.byte	0x8a
	.long	0x196
	.uleb128 0x4
	.long	.LASF31
	.byte	0x5
	.byte	0x8b
	.long	0x181
	.uleb128 0x4
	.long	.LASF32
	.byte	0x5
	.byte	0x8c
	.long	0x1ab
	.uleb128 0x4
	.long	.LASF33
	.byte	0x5
	.byte	0x94
	.long	0x1ab
	.uleb128 0x4
	.long	.LASF34
	.byte	0x5
	.byte	0xa2
	.long	0x1ab
	.uleb128 0x4
	.long	.LASF35
	.byte	0x5
	.byte	0xa7
	.long	0x1ab
	.uleb128 0x4
	.long	.LASF36
	.byte	0x5
	.byte	0xb8
	.long	0x1ab
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.long	.LASF37
	.uleb128 0xd
	.long	.LASF41
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x257
	.uleb128 0x7
	.long	.LASF38
	.byte	0x6
	.byte	0x7a
	.long	0x1ff
	.byte	0
	.uleb128 0x7
	.long	.LASF39
	.byte	0x6
	.byte	0x7b
	.long	0x220
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF40
	.uleb128 0xd
	.long	.LASF42
	.byte	0x90
	.byte	0x7
	.byte	0x2e
	.long	0x31f
	.uleb128 0x7
	.long	.LASF43
	.byte	0x7
	.byte	0x30
	.long	0x1b2
	.byte	0
	.uleb128 0x7
	.long	.LASF44
	.byte	0x7
	.byte	0x35
	.long	0x1d3
	.byte	0x8
	.uleb128 0x7
	.long	.LASF45
	.byte	0x7
	.byte	0x3d
	.long	0x1e9
	.byte	0x10
	.uleb128 0x7
	.long	.LASF46
	.byte	0x7
	.byte	0x3e
	.long	0x1de
	.byte	0x18
	.uleb128 0x7
	.long	.LASF47
	.byte	0x7
	.byte	0x40
	.long	0x1bd
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF48
	.byte	0x7
	.byte	0x41
	.long	0x1c8
	.byte	0x20
	.uleb128 0x7
	.long	.LASF49
	.byte	0x7
	.byte	0x43
	.long	0xb8
	.byte	0x24
	.uleb128 0x7
	.long	.LASF50
	.byte	0x7
	.byte	0x45
	.long	0x1b2
	.byte	0x28
	.uleb128 0x7
	.long	.LASF51
	.byte	0x7
	.byte	0x4a
	.long	0x1f4
	.byte	0x30
	.uleb128 0x7
	.long	.LASF52
	.byte	0x7
	.byte	0x4e
	.long	0x20a
	.byte	0x38
	.uleb128 0x7
	.long	.LASF53
	.byte	0x7
	.byte	0x50
	.long	0x215
	.byte	0x40
	.uleb128 0x7
	.long	.LASF54
	.byte	0x7
	.byte	0x5b
	.long	0x232
	.byte	0x48
	.uleb128 0x7
	.long	.LASF55
	.byte	0x7
	.byte	0x5c
	.long	0x232
	.byte	0x58
	.uleb128 0x7
	.long	.LASF56
	.byte	0x7
	.byte	0x5d
	.long	0x232
	.byte	0x68
	.uleb128 0x7
	.long	.LASF57
	.byte	0x7
	.byte	0x6a
	.long	0x31f
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0x220
	.long	0x32f
	.uleb128 0xe
	.long	0x162
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0x1
	.byte	0x19
	.long	0xb8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x389
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x19
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x19
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x1a
	.long	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"t"
	.byte	0x1
	.byte	0x1e
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xbf
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e9
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x3f
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x3f
	.long	0x389
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x3f
	.long	0x3e9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.byte	0x40
	.long	0x25e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xcc
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0x69
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x43a
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x69
	.long	0x43a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.byte	0x6a
	.long	0x45b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x12
	.long	.LASF64
	.byte	0x1
	.byte	0x6b
	.long	0x460
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x440
	.uleb128 0x15
	.long	0xcc
	.uleb128 0xb
	.long	0xc5
	.long	0x45b
	.uleb128 0xe
	.long	0x162
	.byte	0x2
	.uleb128 0xe
	.long	0x162
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.long	0x445
	.uleb128 0x15
	.long	0x445
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x7c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x491
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x7c
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1
	.byte	0x96
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4bd
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0x96
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.byte	0x15
	.long	0x170
	.uleb128 0x9
	.byte	0x3
	.quad	srcGrid
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.byte	0x15
	.long	0x170
	.uleb128 0x9
	.byte	0x3
	.quad	dstGrid
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x6
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.string	"__off_t"
.LASF2:
	.string	"STORE"
.LASF56:
	.string	"st_ctim"
.LASF64:
	.string	"simTypeString"
.LASF40:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF28:
	.string	"__gid_t"
.LASF42:
	.string	"stat"
.LASF37:
	.string	"long long int"
.LASF23:
	.string	"signed char"
.LASF44:
	.string	"st_ino"
.LASF30:
	.string	"__mode_t"
.LASF35:
	.string	"__blkcnt_t"
.LASF25:
	.string	"long int"
.LASF9:
	.string	"simType"
.LASF17:
	.string	"double"
.LASF12:
	.string	"MAIN_Param"
.LASF8:
	.string	"action"
.LASF63:
	.string	"actionString"
.LASF26:
	.string	"__dev_t"
.LASF47:
	.string	"st_uid"
.LASF22:
	.string	"unsigned int"
.LASF41:
	.string	"timespec"
.LASF19:
	.string	"long unsigned int"
.LASF21:
	.string	"short unsigned int"
.LASF31:
	.string	"__nlink_t"
.LASF70:
	.string	"main.c"
.LASF1:
	.string	"COMPARE"
.LASF51:
	.string	"st_size"
.LASF57:
	.string	"__unused"
.LASF61:
	.string	"MAIN_parseCommandLine"
.LASF46:
	.string	"st_mode"
.LASF68:
	.string	"dstGrid"
.LASF39:
	.string	"tv_nsec"
.LASF16:
	.string	"sizetype"
.LASF60:
	.string	"fileStat"
.LASF38:
	.string	"tv_sec"
.LASF36:
	.string	"__syscall_slong_t"
.LASF59:
	.string	"param"
.LASF34:
	.string	"__blksize_t"
.LASF58:
	.string	"nArgs"
.LASF3:
	.string	"CHANNEL"
.LASF71:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/470.lbm/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF45:
	.string	"st_nlink"
.LASF20:
	.string	"unsigned char"
.LASF24:
	.string	"short int"
.LASF14:
	.string	"N_CELL_ENTRIES"
.LASF52:
	.string	"st_blksize"
.LASF67:
	.string	"srcGrid"
.LASF49:
	.string	"__pad0"
.LASF29:
	.string	"__ino_t"
.LASF0:
	.string	"NOTHING"
.LASF5:
	.string	"MAIN_SimType"
.LASF50:
	.string	"st_rdev"
.LASF11:
	.string	"char"
.LASF4:
	.string	"MAIN_Action"
.LASF62:
	.string	"MAIN_printInfo"
.LASF27:
	.string	"__uid_t"
.LASF13:
	.string	"FLAGS"
.LASF48:
	.string	"st_gid"
.LASF33:
	.string	"__time_t"
.LASF54:
	.string	"st_atim"
.LASF43:
	.string	"st_dev"
.LASF6:
	.string	"nTimeSteps"
.LASF69:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF66:
	.string	"MAIN_finalize"
.LASF7:
	.string	"resultFilename"
.LASF15:
	.string	"LBM_Grid"
.LASF55:
	.string	"st_mtim"
.LASF18:
	.string	"LBM_GridPtr"
.LASF65:
	.string	"MAIN_initialize"
.LASF72:
	.string	"main"
.LASF10:
	.string	"obstacleFilename"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
