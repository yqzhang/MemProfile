	.file	"refbuf.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 refbuf.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	PutPel_14
	.type	PutPel_14, @function
PutPel_14:
.LFB2:
	.file 1 "refbuf.c"
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# Pic, Pic
	movl	%esi, -12(%rbp)	# y, y
	movl	%edx, -16(%rbp)	# x, x
	movl	%ecx, %eax	# val, tmp68
	movw	%ax, -20(%rbp)	# tmp68, val
	.loc 1 25 0
	movl	-12(%rbp), %eax	# y, tmp69
	addl	$16, %eax	#, D.4412
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4413
	movq	-8(%rbp), %rax	# Pic, tmp70
	addq	%rdx, %rax	# D.4413, D.4414
	movq	(%rax), %rax	# *_6, D.4415
	movl	-16(%rbp), %edx	# x, tmp71
	addl	$16, %edx	#, D.4412
	movslq	%edx, %rdx	# D.4412, D.4413
	addq	%rdx, %rdx	# D.4413
	addq	%rax, %rdx	# D.4415, D.4415
	movzwl	-20(%rbp), %eax	# val, tmp72
	movw	%ax, (%rdx)	# tmp72, *_12
	.loc 1 26 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	PutPel_14, .-PutPel_14
	.globl	PutPel_11
	.type	PutPel_11, @function
PutPel_11:
.LFB3:
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# Pic, Pic
	movl	%esi, -12(%rbp)	# y, y
	movl	%edx, -16(%rbp)	# x, x
	movl	%ecx, %eax	# val, tmp64
	movl	%r8d, -24(%rbp)	# width, width
	movw	%ax, -20(%rbp)	# tmp64, val
	.loc 1 30 0
	movl	-12(%rbp), %eax	# y, tmp65
	imull	-24(%rbp), %eax	# width, D.4416
	movl	%eax, %edx	# D.4416, D.4416
	movl	-16(%rbp), %eax	# x, tmp66
	addl	%edx, %eax	# D.4416, D.4416
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4417
	movq	-8(%rbp), %rax	# Pic, tmp67
	addq	%rax, %rdx	# tmp67, D.4418
	movzwl	-20(%rbp), %eax	# val, tmp68
	movw	%ax, (%rdx)	# tmp68, *_9
	.loc 1 31 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	PutPel_11, .-PutPel_11
	.local	line
	.comm	line,32,32
	.globl	FastLine16Y_11
	.type	FastLine16Y_11, @function
FastLine16Y_11:
.LFB4:
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# Pic, Pic
	movl	%esi, -12(%rbp)	# y, y
	movl	%edx, -16(%rbp)	# x, x
	movl	%ecx, -20(%rbp)	# height, height
	movl	%r8d, -24(%rbp)	# width, width
	.loc 1 44 0
	movl	-12(%rbp), %eax	# y, tmp65
	imull	-24(%rbp), %eax	# width, D.4419
	movl	%eax, %edx	# D.4419, D.4419
	movl	-16(%rbp), %eax	# x, tmp66
	addl	%edx, %eax	# D.4419, D.4419
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4420
	movq	-8(%rbp), %rax	# Pic, tmp67
	addq	%rdx, %rax	# D.4420, D.4421
	.loc 1 45 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FastLine16Y_11, .-FastLine16Y_11
	.globl	UMVLine16Y_11
	.type	UMVLine16Y_11, @function
UMVLine16Y_11:
.LFB5:
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Pic, Pic
	movl	%esi, -28(%rbp)	# y, y
	movl	%edx, -32(%rbp)	# x, x
	movl	%ecx, -36(%rbp)	# height, height
	movl	%r8d, -40(%rbp)	# width, width
	.loc 1 53 0
	movl	-36(%rbp), %eax	# height, tmp89
	leal	-1(%rax), %edx	#, D.4423
	movl	-28(%rbp), %eax	# y, tmp90
	cmpl	%eax, %edx	# tmp90, D.4423
	cmovle	%edx, %eax	# D.4423,, D.4423
	movl	$0, %edx	#, tmp91
	testl	%eax, %eax	# D.4423
	cmovs	%edx, %eax	# D.4423,, tmp91, D.4423
	imull	-40(%rbp), %eax	# width, D.4423
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4424
	movq	-24(%rbp), %rax	# Pic, tmp95
	addq	%rdx, %rax	# D.4424, tmp94
	movq	%rax, -8(%rbp)	# tmp94, Picy
	.loc 1 55 0
	cmpl	$0, -32(%rbp)	#, x
	jns	.L6	#,
	.loc 1 57 0
	movl	-32(%rbp), %eax	# x, tmp96
	addl	$16, %eax	#, D.4423
	movl	$0, %edx	#, tmp98
	testl	%eax, %eax	# D.4423
	cmovg	%edx, %eax	# D.4423,, tmp98, tmp97
	movl	%eax, -12(%rbp)	# tmp97, maxx
	.loc 1 58 0
	movl	-32(%rbp), %eax	# x, tmp99
	movl	%eax, -16(%rbp)	# tmp99, i
	jmp	.L7	#
.L8:
	.loc 1 59 0 discriminator 2
	movl	-32(%rbp), %eax	# x, tmp100
	movl	-16(%rbp), %edx	# i, tmp101
	movl	%edx, %ecx	# tmp101, D.4423
	subl	%eax, %ecx	# tmp100, D.4423
	movq	-8(%rbp), %rax	# Picy, tmp102
	movzwl	(%rax), %edx	# *Picy_16, D.4425
	movslq	%ecx, %rax	# D.4423, tmp103
	movw	%dx, line(%rax,%rax)	# D.4425, line
	.loc 1 58 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L7:
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp104
	cmpl	-12(%rbp), %eax	# maxx, tmp104
	jl	.L8	#,
	.loc 1 61 0 is_stmt 1
	movl	-32(%rbp), %eax	# x, tmp108
	addl	$16, %eax	#, tmp107
	movl	%eax, -12(%rbp)	# tmp107, maxx
	.loc 1 62 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L9	#
.L10:
	.loc 1 63 0 discriminator 2
	movl	-32(%rbp), %eax	# x, tmp109
	movl	-16(%rbp), %edx	# i, tmp110
	movl	%edx, %ecx	# tmp110, D.4423
	subl	%eax, %ecx	# tmp109, D.4423
	movl	-16(%rbp), %eax	# i, tmp111
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4424
	movq	-8(%rbp), %rax	# Picy, tmp112
	addq	%rdx, %rax	# D.4424, D.4422
	movzwl	(%rax), %edx	# *_29, D.4425
	movslq	%ecx, %rax	# D.4423, tmp113
	movw	%dx, line(%rax,%rax)	# D.4425, line
	.loc 1 62 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L9:
	.loc 1 62 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp114
	cmpl	-12(%rbp), %eax	# maxx, tmp114
	jl	.L10	#,
	jmp	.L11	#
.L6:
	.loc 1 65 0 is_stmt 1
	movl	-40(%rbp), %eax	# width, tmp115
	subl	$16, %eax	#, D.4423
	cmpl	-32(%rbp), %eax	# x, D.4423
	jge	.L12	#,
	.loc 1 67 0
	movl	-40(%rbp), %eax	# width, tmp116
	movl	%eax, -12(%rbp)	# tmp116, maxx
	.loc 1 68 0
	movl	-32(%rbp), %eax	# x, tmp117
	movl	%eax, -16(%rbp)	# tmp117, i
	jmp	.L13	#
.L14:
	.loc 1 69 0 discriminator 2
	movl	-32(%rbp), %eax	# x, tmp118
	movl	-16(%rbp), %edx	# i, tmp119
	movl	%edx, %ecx	# tmp119, D.4423
	subl	%eax, %ecx	# tmp118, D.4423
	movl	-16(%rbp), %eax	# i, tmp120
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4424
	movq	-8(%rbp), %rax	# Picy, tmp121
	addq	%rdx, %rax	# D.4424, D.4422
	movzwl	(%rax), %edx	# *_38, D.4425
	movslq	%ecx, %rax	# D.4423, tmp122
	movw	%dx, line(%rax,%rax)	# D.4425, line
	.loc 1 68 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L13:
	.loc 1 68 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp123
	cmpl	-12(%rbp), %eax	# maxx, tmp123
	jl	.L14	#,
	.loc 1 71 0 is_stmt 1
	movl	-32(%rbp), %eax	# x, tmp127
	addl	$16, %eax	#, tmp126
	movl	%eax, -12(%rbp)	# tmp126, maxx
	.loc 1 72 0
	movl	-40(%rbp), %eax	# width, tmp129
	cmpl	%eax, -32(%rbp)	# tmp129, x
	cmovge	-32(%rbp), %eax	# x,, tmp128
	movl	%eax, -16(%rbp)	# tmp128, i
	jmp	.L15	#
.L16:
	.loc 1 73 0 discriminator 2
	movl	-32(%rbp), %eax	# x, tmp130
	movl	-16(%rbp), %edx	# i, tmp131
	movl	%edx, %ecx	# tmp131, D.4423
	subl	%eax, %ecx	# tmp130, D.4423
	movl	-40(%rbp), %eax	# width, tmp132
	cltq
	addq	%rax, %rax	# D.4424
	leaq	-2(%rax), %rdx	#, D.4426
	movq	-8(%rbp), %rax	# Picy, tmp133
	addq	%rdx, %rax	# D.4426, D.4422
	movzwl	(%rax), %edx	# *_47, D.4425
	movslq	%ecx, %rax	# D.4423, tmp134
	movw	%dx, line(%rax,%rax)	# D.4425, line
	.loc 1 72 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L15:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp135
	cmpl	-12(%rbp), %eax	# maxx, tmp135
	jl	.L16	#,
	jmp	.L11	#
.L12:
	.loc 1 76 0 is_stmt 1
	movl	-32(%rbp), %eax	# x, tmp136
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4424
	movq	-8(%rbp), %rax	# Picy, tmp137
	addq	%rdx, %rax	# D.4424, D.4422
	jmp	.L17	#
.L11:
	.loc 1 78 0
	movl	$line, %eax	#, D.4422
.L17:
	.loc 1 79 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	UMVLine16Y_11, .-UMVLine16Y_11
	.globl	FastLineX
	.type	FastLineX, @function
FastLineX:
.LFB6:
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# dummy, dummy
	movq	%rsi, -16(%rbp)	# Pic, Pic
	movl	%edx, -8(%rbp)	# y, y
	movl	%ecx, -20(%rbp)	# x, x
	movl	%r8d, -24(%rbp)	# height, height
	movl	%r9d, -28(%rbp)	# width, width
	.loc 1 84 0
	movl	-8(%rbp), %eax	# y, tmp66
	imull	-28(%rbp), %eax	# width, D.4427
	movslq	%eax, %rdx	# D.4427, D.4428
	movl	-20(%rbp), %eax	# x, tmp67
	cltq
	addq	%rdx, %rax	# D.4428, D.4428
	leaq	(%rax,%rax), %rdx	#, D.4428
	movq	-16(%rbp), %rax	# Pic, tmp68
	addq	%rdx, %rax	# D.4428, D.4429
	.loc 1 85 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FastLineX, .-FastLineX
	.globl	UMVLineX
	.type	UMVLineX, @function
UMVLineX:
.LFB7:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# size, size
	movq	%rsi, -32(%rbp)	# Pic, Pic
	movl	%edx, -24(%rbp)	# y, y
	movl	%ecx, -36(%rbp)	# x, x
	movl	%r8d, -40(%rbp)	# height, height
	movl	%r9d, -44(%rbp)	# width, width
	.loc 1 93 0
	movl	-40(%rbp), %eax	# height, tmp89
	leal	-1(%rax), %edx	#, D.4431
	movl	-24(%rbp), %eax	# y, tmp90
	cmpl	%eax, %edx	# tmp90, D.4431
	cmovle	%edx, %eax	# D.4431,, D.4431
	movl	$0, %edx	#, tmp91
	testl	%eax, %eax	# D.4431
	cmovs	%edx, %eax	# D.4431,, tmp91, D.4431
	imull	-44(%rbp), %eax	# width, D.4431
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4432
	movq	-32(%rbp), %rax	# Pic, tmp95
	addq	%rdx, %rax	# D.4432, tmp94
	movq	%rax, -8(%rbp)	# tmp94, Picy
	.loc 1 95 0
	cmpl	$0, -36(%rbp)	#, x
	jns	.L21	#,
	.loc 1 97 0
	movl	-20(%rbp), %eax	# size, tmp96
	movl	-36(%rbp), %edx	# x, tmp97
	addl	%edx, %eax	# tmp97, D.4431
	movl	$0, %edx	#, tmp99
	testl	%eax, %eax	# D.4431
	cmovg	%edx, %eax	# D.4431,, tmp99, tmp98
	movl	%eax, -12(%rbp)	# tmp98, maxx
	.loc 1 98 0
	movl	-36(%rbp), %eax	# x, tmp100
	movl	%eax, -16(%rbp)	# tmp100, i
	jmp	.L22	#
.L23:
	.loc 1 100 0 discriminator 2
	movl	-36(%rbp), %eax	# x, tmp101
	movl	-16(%rbp), %edx	# i, tmp102
	movl	%edx, %ecx	# tmp102, D.4431
	subl	%eax, %ecx	# tmp101, D.4431
	movq	-8(%rbp), %rax	# Picy, tmp103
	movzwl	(%rax), %edx	# *Picy_16, D.4433
	movslq	%ecx, %rax	# D.4431, tmp104
	movw	%dx, line(%rax,%rax)	# D.4433, line
	.loc 1 98 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L22:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp105
	cmpl	-12(%rbp), %eax	# maxx, tmp105
	jl	.L23	#,
	.loc 1 102 0 is_stmt 1
	movl	-20(%rbp), %eax	# size, tmp110
	movl	-36(%rbp), %edx	# x, tmp111
	addl	%edx, %eax	# tmp111, tmp109
	movl	%eax, -12(%rbp)	# tmp109, maxx
	.loc 1 103 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L24	#
.L25:
	.loc 1 104 0 discriminator 2
	movl	-36(%rbp), %eax	# x, tmp112
	movl	-16(%rbp), %edx	# i, tmp113
	movl	%edx, %ecx	# tmp113, D.4431
	subl	%eax, %ecx	# tmp112, D.4431
	movl	-16(%rbp), %eax	# i, tmp114
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4432
	movq	-8(%rbp), %rax	# Picy, tmp115
	addq	%rdx, %rax	# D.4432, D.4430
	movzwl	(%rax), %edx	# *_30, D.4433
	movslq	%ecx, %rax	# D.4431, tmp116
	movw	%dx, line(%rax,%rax)	# D.4433, line
	.loc 1 103 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L24:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp117
	cmpl	-12(%rbp), %eax	# maxx, tmp117
	jl	.L25	#,
	jmp	.L26	#
.L21:
	.loc 1 106 0 is_stmt 1
	movl	-20(%rbp), %eax	# size, tmp118
	movl	-44(%rbp), %edx	# width, tmp119
	subl	%eax, %edx	# tmp118, D.4431
	movl	%edx, %eax	# D.4431, D.4431
	cmpl	-36(%rbp), %eax	# x, D.4431
	jge	.L27	#,
	.loc 1 108 0
	movl	-44(%rbp), %eax	# width, tmp120
	movl	%eax, -12(%rbp)	# tmp120, maxx
	.loc 1 109 0
	movl	-36(%rbp), %eax	# x, tmp121
	movl	%eax, -16(%rbp)	# tmp121, i
	jmp	.L28	#
.L29:
	.loc 1 111 0 discriminator 2
	movl	-36(%rbp), %eax	# x, tmp122
	movl	-16(%rbp), %edx	# i, tmp123
	movl	%edx, %ecx	# tmp123, D.4431
	subl	%eax, %ecx	# tmp122, D.4431
	movl	-16(%rbp), %eax	# i, tmp124
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4432
	movq	-8(%rbp), %rax	# Picy, tmp125
	addq	%rdx, %rax	# D.4432, D.4430
	movzwl	(%rax), %edx	# *_39, D.4433
	movslq	%ecx, %rax	# D.4431, tmp126
	movw	%dx, line(%rax,%rax)	# D.4433, line
	.loc 1 109 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L28:
	.loc 1 109 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp127
	cmpl	-12(%rbp), %eax	# maxx, tmp127
	jl	.L29	#,
	.loc 1 113 0 is_stmt 1
	movl	-20(%rbp), %eax	# size, tmp132
	movl	-36(%rbp), %edx	# x, tmp133
	addl	%edx, %eax	# tmp133, tmp131
	movl	%eax, -12(%rbp)	# tmp131, maxx
	.loc 1 114 0
	movl	-44(%rbp), %eax	# width, tmp135
	cmpl	%eax, -36(%rbp)	# tmp135, x
	cmovge	-36(%rbp), %eax	# x,, tmp134
	movl	%eax, -16(%rbp)	# tmp134, i
	jmp	.L30	#
.L31:
	.loc 1 116 0 discriminator 2
	movl	-36(%rbp), %eax	# x, tmp136
	movl	-16(%rbp), %edx	# i, tmp137
	movl	%edx, %ecx	# tmp137, D.4431
	subl	%eax, %ecx	# tmp136, D.4431
	movl	-44(%rbp), %eax	# width, tmp138
	cltq
	addq	%rax, %rax	# D.4432
	leaq	-2(%rax), %rdx	#, D.4434
	movq	-8(%rbp), %rax	# Picy, tmp139
	addq	%rdx, %rax	# D.4434, D.4430
	movzwl	(%rax), %edx	# *_48, D.4433
	movslq	%ecx, %rax	# D.4431, tmp140
	movw	%dx, line(%rax,%rax)	# D.4433, line
	.loc 1 114 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L30:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp141
	cmpl	-12(%rbp), %eax	# maxx, tmp141
	jl	.L31	#,
	jmp	.L26	#
.L27:
	.loc 1 121 0 is_stmt 1
	movl	-36(%rbp), %eax	# x, tmp142
	cltq
	leaq	(%rax,%rax), %rdx	#, D.4432
	movq	-8(%rbp), %rax	# Picy, tmp143
	addq	%rdx, %rax	# D.4432, D.4430
	jmp	.L32	#
.L26:
	.loc 1 124 0
	movl	$line, %eax	#, D.4430
.L32:
	.loc 1 125 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	UMVLineX, .-UMVLineX
	.globl	UMVPelY_14
	.type	UMVPelY_14, @function
UMVPelY_14:
.LFB8:
	.loc 1 134 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Pic, Pic
	movl	%esi, -28(%rbp)	# y, y
	movl	%edx, -32(%rbp)	# x, x
	movl	%ecx, -36(%rbp)	# height, height
	movl	%r8d, -40(%rbp)	# width, width
	.loc 1 135 0
	movl	-40(%rbp), %eax	# width, tmp144
	addl	$7, %eax	#, D.4436
	sall	$2, %eax	#, tmp145
	movl	%eax, -8(%rbp)	# tmp145, width4
	.loc 1 136 0
	movl	-36(%rbp), %eax	# height, tmp146
	addl	$7, %eax	#, D.4436
	sall	$2, %eax	#, tmp147
	movl	%eax, -4(%rbp)	# tmp147, height4
	.loc 1 138 0
	addl	$16, -32(%rbp)	#, x
	.loc 1 139 0
	addl	$16, -28(%rbp)	#, y
	.loc 1 141 0
	cmpl	$0, -32(%rbp)	#, x
	jns	.L34	#,
	.loc 1 143 0
	cmpl	$0, -28(%rbp)	#, y
	jns	.L35	#,
	.loc 1 144 0
	movl	-28(%rbp), %eax	# y, tmp148
	cltq
	andl	$3, %eax	#, D.4437
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp149
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_16, D.4439
	movl	-32(%rbp), %edx	# x, tmp150
	movslq	%edx, %rdx	# tmp150, D.4437
	andl	$3, %edx	#, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_21, D.4435
	jmp	.L36	#
.L35:
	.loc 1 145 0
	movl	-28(%rbp), %eax	# y, tmp151
	cmpl	-4(%rbp), %eax	# height4, tmp151
	jle	.L37	#,
	.loc 1 146 0
	movl	-28(%rbp), %eax	# y, tmp152
	andl	$3, %eax	#, D.4436
	movl	%eax, %edx	# D.4436, D.4436
	movl	-4(%rbp), %eax	# height4, tmp153
	addl	%edx, %eax	# D.4436, D.4436
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp154
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_27, D.4439
	movl	-32(%rbp), %edx	# x, tmp155
	movslq	%edx, %rdx	# tmp155, D.4437
	andl	$3, %edx	#, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_32, D.4435
	jmp	.L36	#
.L37:
	.loc 1 147 0
	movl	-28(%rbp), %eax	# y, tmp156
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp157
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_36, D.4439
	movl	-32(%rbp), %edx	# x, tmp158
	movslq	%edx, %rdx	# tmp158, D.4437
	andl	$3, %edx	#, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_41, D.4435
	jmp	.L36	#
.L34:
	.loc 1 150 0
	movl	-32(%rbp), %eax	# x, tmp159
	cmpl	-8(%rbp), %eax	# width4, tmp159
	jle	.L38	#,
	.loc 1 152 0
	cmpl	$0, -28(%rbp)	#, y
	jns	.L39	#,
	.loc 1 153 0
	movl	-28(%rbp), %eax	# y, tmp160
	cltq
	andl	$3, %eax	#, D.4437
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp161
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_46, D.4439
	movl	-32(%rbp), %edx	# x, tmp162
	movl	%edx, %ecx	# tmp162, D.4436
	andl	$3, %ecx	#, D.4436
	movl	-8(%rbp), %edx	# width4, tmp163
	addl	%ecx, %edx	# D.4436, D.4436
	movslq	%edx, %rdx	# D.4436, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_52, D.4435
	jmp	.L36	#
.L39:
	.loc 1 154 0
	movl	-28(%rbp), %eax	# y, tmp164
	cmpl	-4(%rbp), %eax	# height4, tmp164
	jle	.L40	#,
	.loc 1 155 0
	movl	-28(%rbp), %eax	# y, tmp165
	andl	$3, %eax	#, D.4436
	movl	%eax, %edx	# D.4436, D.4436
	movl	-4(%rbp), %eax	# height4, tmp166
	addl	%edx, %eax	# D.4436, D.4436
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp167
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_58, D.4439
	movl	-32(%rbp), %edx	# x, tmp168
	movl	%edx, %ecx	# tmp168, D.4436
	andl	$3, %ecx	#, D.4436
	movl	-8(%rbp), %edx	# width4, tmp169
	addl	%ecx, %edx	# D.4436, D.4436
	movslq	%edx, %rdx	# D.4436, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_64, D.4435
	jmp	.L36	#
.L40:
	.loc 1 156 0
	movl	-28(%rbp), %eax	# y, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp171
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_68, D.4439
	movl	-32(%rbp), %edx	# x, tmp172
	movl	%edx, %ecx	# tmp172, D.4436
	andl	$3, %ecx	#, D.4436
	movl	-8(%rbp), %edx	# width4, tmp173
	addl	%ecx, %edx	# D.4436, D.4436
	movslq	%edx, %rdx	# D.4436, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_74, D.4435
	jmp	.L36	#
.L38:
	.loc 1 159 0
	cmpl	$0, -28(%rbp)	#, y
	jns	.L41	#,
	.loc 1 160 0
	movl	-28(%rbp), %eax	# y, tmp174
	cltq
	andl	$3, %eax	#, D.4437
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp175
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_79, D.4439
	movl	-32(%rbp), %edx	# x, tmp176
	movslq	%edx, %rdx	# tmp176, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_83, D.4435
	jmp	.L36	#
.L41:
	.loc 1 161 0
	movl	-28(%rbp), %eax	# y, tmp177
	cmpl	-4(%rbp), %eax	# height4, tmp177
	jle	.L42	#,
	.loc 1 162 0
	movl	-28(%rbp), %eax	# y, tmp178
	andl	$3, %eax	#, D.4436
	movl	%eax, %edx	# D.4436, D.4436
	movl	-4(%rbp), %eax	# height4, tmp179
	addl	%edx, %eax	# D.4436, D.4436
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp180
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_89, D.4439
	movl	-32(%rbp), %edx	# x, tmp181
	movslq	%edx, %rdx	# tmp181, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_93, D.4435
	jmp	.L36	#
.L42:
	.loc 1 164 0
	movl	-28(%rbp), %eax	# y, tmp182
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4437
	movq	-24(%rbp), %rax	# Pic, tmp183
	addq	%rdx, %rax	# D.4437, D.4438
	movq	(%rax), %rax	# *_97, D.4439
	movl	-32(%rbp), %edx	# x, tmp184
	movslq	%edx, %rdx	# tmp184, D.4437
	addq	%rdx, %rdx	# D.4437
	addq	%rdx, %rax	# D.4437, D.4439
	movzwl	(%rax), %eax	# *_101, D.4435
.L36:
	.loc 1 165 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	UMVPelY_14, .-UMVPelY_14
	.globl	FastPelY_14
	.type	FastPelY_14, @function
FastPelY_14:
.LFB9:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# Pic, Pic
	movl	%esi, -12(%rbp)	# y, y
	movl	%edx, -16(%rbp)	# x, x
	movl	%ecx, -20(%rbp)	# height, height
	movl	%r8d, -24(%rbp)	# width, width
	.loc 1 169 0
	movl	-12(%rbp), %eax	# y, tmp70
	addl	$16, %eax	#, D.4440
	cltq
	leaq	0(,%rax,8), %rdx	#, D.4441
	movq	-8(%rbp), %rax	# Pic, tmp71
	addq	%rdx, %rax	# D.4441, D.4442
	movq	(%rax), %rax	# *_6, D.4443
	movl	-16(%rbp), %edx	# x, tmp72
	addl	$16, %edx	#, D.4440
	movslq	%edx, %rdx	# D.4440, D.4441
	addq	%rdx, %rdx	# D.4441
	addq	%rdx, %rax	# D.4441, D.4443
	movzwl	(%rax), %eax	# *_12, D.4444
	.loc 1 170 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	FastPelY_14, .-FastPelY_14
.Letext0:
	.file 2 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x48e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF39
	.byte	0x1
	.long	.LASF40
	.long	.LASF41
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x2
	.byte	0x9b
	.long	0xc0
	.uleb128 0x5
	.long	.LASF11
	.sleb128 0
	.uleb128 0x5
	.long	.LASF12
	.sleb128 1
	.uleb128 0x5
	.long	.LASF13
	.sleb128 2
	.uleb128 0x5
	.long	.LASF14
	.sleb128 3
	.uleb128 0x5
	.long	.LASF15
	.sleb128 4
	.uleb128 0x5
	.long	.LASF16
	.sleb128 5
	.uleb128 0x5
	.long	.LASF17
	.sleb128 6
	.uleb128 0x5
	.long	.LASF18
	.sleb128 7
	.uleb128 0x5
	.long	.LASF19
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF20
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x6
	.byte	0x8
	.long	0xd4
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.byte	0x17
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x17
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x17
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x17
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"val"
	.byte	0x1
	.byte	0x17
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x1c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x1c
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"val"
	.byte	0x1
	.byte	0x1c
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x2a
	.long	0xd4
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f0
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x2a
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x2a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x30
	.long	0xd4
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x30
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x32
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x33
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x52
	.long	0xd4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.byte	0x52
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x52
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x52
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x52
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x52
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x52
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0x58
	.long	0xd4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x388
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x58
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xb
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x5a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x5b
	.long	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x85
	.long	0x42
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x408
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0x85
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x85
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0x85
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x85
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x85
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x87
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0x88
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.byte	0xa7
	.long	0x42
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c
	.uleb128 0x8
	.string	"Pic"
	.byte	0x1
	.byte	0xa7
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.string	"x"
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.long	0x42
	.long	0x47c
	.uleb128 0xe
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.byte	0x28
	.long	0x46c
	.uleb128 0x9
	.byte	0x3
	.quad	line
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
.LASF11:
	.string	"BITS_HEADER"
.LASF14:
	.string	"BITS_INTER_MB"
.LASF21:
	.string	"float"
.LASF35:
	.string	"width4"
.LASF16:
	.string	"BITS_COEFF_Y_MB"
.LASF2:
	.string	"short unsigned int"
.LASF29:
	.string	"Picy"
.LASF37:
	.string	"FastPelY_14"
.LASF30:
	.string	"FastLineX"
.LASF41:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"BITS_COEFF_UV_MB"
.LASF40:
	.string	"refbuf.c"
.LASF0:
	.string	"long unsigned int"
.LASF15:
	.string	"BITS_CBP_MB"
.LASF25:
	.string	"height"
.LASF36:
	.string	"height4"
.LASF20:
	.string	"double"
.LASF26:
	.string	"FastLine16Y_11"
.LASF28:
	.string	"maxx"
.LASF13:
	.string	"BITS_MB_MODE"
.LASF3:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF38:
	.string	"line"
.LASF18:
	.string	"BITS_DELTA_QUANT_MB"
.LASF34:
	.string	"UMVPelY_14"
.LASF7:
	.string	"sizetype"
.LASF12:
	.string	"BITS_TOTAL_MB"
.LASF9:
	.string	"long long int"
.LASF24:
	.string	"width"
.LASF39:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"dummy"
.LASF27:
	.string	"UMVLine16Y_11"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF23:
	.string	"PutPel_11"
.LASF33:
	.string	"size"
.LASF22:
	.string	"PutPel_14"
.LASF19:
	.string	"MAX_BITCOUNTER_MB"
.LASF32:
	.string	"UMVLineX"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
