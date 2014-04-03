	.file	"bzip2.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 bzip2.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	verbosity,4,4
	.comm	keepInputFiles,1,1
	.comm	smallMode,1,1
	.comm	deleteOutputOnInterrupt,1,1
	.comm	forceOverwrite,1,1
	.comm	testFailsExist,1,1
	.comm	unzFailsExist,1,1
	.comm	noisy,1,1
	.comm	numFileNames,4,4
	.comm	numFilesProcessed,4,4
	.comm	blockSize100k,4,4
	.comm	exitValue,4,4
	.comm	opMode,4,4
	.comm	srcMode,4,4
	.comm	longestFileName,4,4
	.comm	inName,1034,32
	.comm	outName,1034,32
	.comm	tmpName,1034,32
	.comm	progName,8,8
	.comm	progNameReally,1034,32
	.comm	outputHandleJustInCase,4,4
	.comm	workFactor,4,4
	.type	uInt64_from_UInt32s, @function
uInt64_from_UInt32s:
.LFB2:
	.file 1 "bzip2.c"
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# n, n
	movl	%esi, -12(%rbp)	# lo32, lo32
	movl	%edx, -16(%rbp)	# hi32, hi32
	.loc 1 342 0
	movl	-16(%rbp), %eax	# hi32, tmp73
	shrl	$24, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp74
	movb	%dl, 7(%rax)	# D.5075, n_4(D)->b
	.loc 1 343 0
	movl	-16(%rbp), %eax	# hi32, tmp75
	shrl	$16, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp76
	movb	%dl, 6(%rax)	# D.5075, n_4(D)->b
	.loc 1 344 0
	movl	-16(%rbp), %eax	# hi32, tmp77
	shrl	$8, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp78
	movb	%dl, 5(%rax)	# D.5075, n_4(D)->b
	.loc 1 345 0
	movl	-16(%rbp), %eax	# hi32, tmp79
	movl	%eax, %edx	# tmp79, D.5075
	movq	-8(%rbp), %rax	# n, tmp80
	movb	%dl, 4(%rax)	# D.5075, n_4(D)->b
	.loc 1 346 0
	movl	-12(%rbp), %eax	# lo32, tmp81
	shrl	$24, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp82
	movb	%dl, 3(%rax)	# D.5075, n_4(D)->b
	.loc 1 347 0
	movl	-12(%rbp), %eax	# lo32, tmp83
	shrl	$16, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp84
	movb	%dl, 2(%rax)	# D.5075, n_4(D)->b
	.loc 1 348 0
	movl	-12(%rbp), %eax	# lo32, tmp85
	shrl	$8, %eax	#, D.5074
	movl	%eax, %edx	# D.5074, D.5075
	movq	-8(%rbp), %rax	# n, tmp86
	movb	%dl, 1(%rax)	# D.5075, n_4(D)->b
	.loc 1 349 0
	movl	-12(%rbp), %eax	# lo32, tmp87
	movl	%eax, %edx	# tmp87, D.5075
	movq	-8(%rbp), %rax	# n, tmp88
	movb	%dl, (%rax)	# D.5075, n_4(D)->b
	.loc 1 350 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uInt64_from_UInt32s, .-uInt64_from_UInt32s
	.type	uInt64_to_double, @function
uInt64_to_double:
.LFB3:
	.loc 1 355 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# n, n
	.loc 1 357 0
	movabsq	$4607182418800017408, %rax	#, tmp64
	movq	%rax, -16(%rbp)	# tmp64, base
	.loc 1 358 0
	movl	$0, %eax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, sum
	.loc 1 359 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L3	#
.L4:
	.loc 1 360 0 discriminator 2
	movq	-40(%rbp), %rdx	# n, tmp66
	movl	-20(%rbp), %eax	# i, tmp68
	cltq
	movzbl	(%rdx,%rax), %eax	# n_7(D)->b, D.5076
	movzbl	%al, %eax	# D.5076, tmp69
	cvtsi2sd	%eax, %xmm0	# tmp69, D.5077
	mulsd	-16(%rbp), %xmm0	# base, D.5077
	movsd	-8(%rbp), %xmm1	# sum, tmp71
	addsd	%xmm1, %xmm0	# tmp71, tmp70
	movsd	%xmm0, -8(%rbp)	# tmp70, sum
	.loc 1 361 0 discriminator 2
	movsd	-16(%rbp), %xmm1	# base, tmp73
	movsd	.LC2(%rip), %xmm0	#, tmp74
	mulsd	%xmm1, %xmm0	# tmp73, tmp72
	movsd	%xmm0, -16(%rbp)	# tmp72, base
	.loc 1 359 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L3:
	.loc 1 359 0 is_stmt 0 discriminator 1
	cmpl	$7, -20(%rbp)	#, i
	jle	.L4	#,
	.loc 1 363 0 is_stmt 1
	movq	-8(%rbp), %rax	# sum, D.5077
	.loc 1 364 0
	movq	%rax, -48(%rbp)	# <retval>, %sfp
	movsd	-48(%rbp), %xmm0	# %sfp,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	uInt64_to_double, .-uInt64_to_double
	.type	uInt64_isZero, @function
uInt64_isZero:
.LFB4:
	.loc 1 369 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# n, n
	.loc 1 371 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L7	#
.L10:
	.loc 1 372 0
	movq	-24(%rbp), %rdx	# n, tmp62
	movl	-4(%rbp), %eax	# i, tmp64
	cltq
	movzbl	(%rdx,%rax), %eax	# n_4(D)->b, D.5080
	testb	%al, %al	# D.5080
	je	.L8	#,
	.loc 1 372 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5079
	jmp	.L9	#
.L8:
	.loc 1 371 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L7:
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpl	$7, -4(%rbp)	#, i
	jle	.L10	#,
	.loc 1 373 0 is_stmt 1
	movl	$1, %eax	#, D.5079
.L9:
	.loc 1 374 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	uInt64_isZero, .-uInt64_isZero
	.type	uInt64_qrm10, @function
uInt64_qrm10:
.LFB5:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# n, n
	.loc 1 383 0
	movl	$0, -12(%rbp)	#, rem
	.loc 1 384 0
	movl	$7, -8(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 385 0 discriminator 2
	movl	-12(%rbp), %eax	# rem, tmp66
	sall	$8, %eax	#, D.5081
	movl	%eax, %ecx	# D.5081, D.5081
	movq	-24(%rbp), %rdx	# n, tmp67
	movl	-8(%rbp), %eax	# i, tmp69
	cltq
	movzbl	(%rdx,%rax), %eax	# n_6(D)->b, D.5082
	movzbl	%al, %eax	# D.5082, D.5081
	addl	%ecx, %eax	# D.5081, tmp70
	movl	%eax, -4(%rbp)	# tmp70, tmp
	.loc 1 386 0 discriminator 2
	movl	-4(%rbp), %eax	# tmp, tmp71
	movl	$-858993459, %edx	#, tmp73
	mull	%edx	# tmp73
	movl	%edx, %eax	# tmp72, D.5081
	shrl	$3, %eax	#, D.5081
	movl	%eax, %ecx	# D.5081, D.5082
	movq	-24(%rbp), %rdx	# n, tmp74
	movl	-8(%rbp), %eax	# i, tmp76
	cltq
	movb	%cl, (%rdx,%rax)	# D.5082, n_6(D)->b
	.loc 1 387 0 discriminator 2
	movl	-4(%rbp), %ecx	# tmp, tmp78
	movl	$-858993459, %edx	#, tmp80
	movl	%ecx, %eax	# tmp78, tmp86
	mull	%edx	# tmp80
	shrl	$3, %edx	#, tmp77
	movl	%edx, %eax	# tmp77, tmp81
	sall	$2, %eax	#, tmp81
	addl	%edx, %eax	# tmp77, tmp81
	addl	%eax, %eax	# tmp82
	subl	%eax, %ecx	# tmp81, tmp83
	movl	%ecx, %eax	# tmp83, tmp83
	movl	%eax, -12(%rbp)	# tmp83, rem
	.loc 1 384 0 discriminator 2
	subl	$1, -8(%rbp)	#, i
.L12:
	.loc 1 384 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jns	.L13	#,
	.loc 1 389 0 is_stmt 1
	movl	-12(%rbp), %eax	# rem, D.5083
	.loc 1 390 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	uInt64_qrm10, .-uInt64_qrm10
	.type	uInt64_toAscii, @function
uInt64_toAscii:
.LFB6:
	.loc 1 398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# outbuf, outbuf
	movq	%rsi, -96(%rbp)	# n, n
	.loc 1 398 0
	movq	%fs:40, %rax	#, tmp86
	movq	%rax, -8(%rbp)	# tmp86, D.5089
	xorl	%eax, %eax	# tmp86
	.loc 1 401 0
	movl	$0, -72(%rbp)	#, nBuf
	.loc 1 402 0
	movq	-96(%rbp), %rax	# n, tmp70
	movq	(%rax), %rax	# *n_4(D), tmp71
	movq	%rax, -64(%rbp)	# tmp71, n_copy
.L16:
	.loc 1 404 0 discriminator 1
	leaq	-64(%rbp), %rax	#, tmp72
	movq	%rax, %rdi	# tmp72,
	call	uInt64_qrm10	#
	movl	%eax, -68(%rbp)	# tmp73, q
	.loc 1 405 0 discriminator 1
	movl	-68(%rbp), %eax	# q, tmp74
	leal	48(%rax), %edx	#, D.5084
	movl	-72(%rbp), %eax	# nBuf, tmp76
	cltq
	movb	%dl, -48(%rbp,%rax)	# D.5084, buf
	.loc 1 406 0 discriminator 1
	addl	$1, -72(%rbp)	#, nBuf
	.loc 1 407 0 discriminator 1
	leaq	-64(%rbp), %rax	#, tmp77
	movq	%rax, %rdi	# tmp77,
	call	uInt64_isZero	#
	testb	%al, %al	# D.5084
	je	.L16	#,
	.loc 1 408 0
	movl	-72(%rbp), %eax	# nBuf, tmp78
	movslq	%eax, %rdx	# tmp78, D.5085
	movq	-88(%rbp), %rax	# outbuf, tmp79
	addq	%rdx, %rax	# D.5085, D.5086
	movb	$0, (%rax)	#, *_12
	.loc 1 409 0
	movl	$0, -76(%rbp)	#, i
	jmp	.L17	#
.L18:
	.loc 1 410 0 discriminator 2
	movl	-76(%rbp), %eax	# i, tmp80
	movslq	%eax, %rdx	# tmp80, D.5085
	movq	-88(%rbp), %rax	# outbuf, tmp81
	addq	%rax, %rdx	# tmp81, D.5086
	movl	-76(%rbp), %eax	# i, tmp82
	movl	-72(%rbp), %ecx	# nBuf, tmp83
	subl	%eax, %ecx	# tmp82, D.5087
	movl	%ecx, %eax	# D.5087, D.5087
	subl	$1, %eax	#, D.5087
	cltq
	movzbl	-48(%rbp,%rax), %eax	# buf, D.5084
	movb	%al, (%rdx)	# D.5088, *_15
	.loc 1 409 0 discriminator 2
	addl	$1, -76(%rbp)	#, i
.L17:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# i, tmp85
	cmpl	-72(%rbp), %eax	# nBuf, tmp85
	jl	.L18	#,
	.loc 1 411 0 is_stmt 1
	movq	-8(%rbp), %rax	# D.5089, tmp87
	xorq	%fs:40, %rax	#, tmp87
	je	.L19	#,
	call	__stack_chk_fail	#
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	uInt64_toAscii, .-uInt64_toAscii
	.type	myfeof, @function
myfeof:
.LFB7:
	.loc 1 425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# f, f
	.loc 1 426 0
	movl	-20(%rbp), %eax	# f, tmp63
	movl	%eax, %edi	# tmp63,
	call	spec_getc	#
	movl	%eax, -4(%rbp)	# tmp64, c
	.loc 1 427 0
	cmpl	$-1, -4(%rbp)	#, c
	jne	.L21	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.5092
	jmp	.L22	#
.L21:
	.loc 1 428 0 is_stmt 1
	movl	-4(%rbp), %eax	# c, tmp65
	movzbl	%al, %eax	# D.5093, D.5094
	movl	-20(%rbp), %edx	# f, tmp66
	movl	%edx, %esi	# tmp66,
	movl	%eax, %edi	# D.5094,
	call	spec_ungetc	#
	.loc 1 429 0
	movl	$0, %eax	#, D.5092
.L22:
	.loc 1 430 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	myfeof, .-myfeof
	.section	.rodata
.LC3:
	.string	" no data compressed.\n"
	.align 8
.LC6:
	.string	"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\n"
.LC7:
	.string	"compress:unexpected error"
.LC8:
	.string	"compress:end"
	.text
	.globl	compressStream
	.type	compressStream, @function
compressStream:
.LFB8:
	.loc 1 440 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$5200, %rsp	#,
	movl	%edi, -5172(%rbp)	# stream, stream
	movl	%esi, -5176(%rbp)	# zStream, zStream
	.loc 1 440 0
	movq	%fs:40, %rax	#, tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.5097
	xorl	%eax, %eax	# tmp125
	.loc 1 441 0
	movq	$0, -5128(%rbp)	#, bzf
	.loc 1 454 0
	movl	workFactor(%rip), %edi	# workFactor, workFactor.0
	movl	verbosity(%rip), %ecx	# verbosity, verbosity.1
	movl	blockSize100k(%rip), %edx	# blockSize100k, blockSize100k.2
	movl	-5176(%rbp), %esi	# zStream, tmp84
	leaq	-5144(%rbp), %rax	#, tmp85
	movl	%edi, %r8d	# workFactor.0,
	movq	%rax, %rdi	# tmp85,
	call	BZ2_bzWriteOpen	#
	movq	%rax, -5128(%rbp)	# tmp86, bzf
	.loc 1 456 0
	movl	-5144(%rbp), %eax	# bzerr, bzerr.3
	testl	%eax, %eax	# bzerr.3
	je	.L24	#,
	.loc 1 456 0 is_stmt 0 discriminator 1
	jmp	.L25	#
.L24:
	.loc 1 458 0 is_stmt 1
	movl	verbosity(%rip), %eax	# verbosity, verbosity.4
	cmpl	$1, %eax	#, verbosity.4
	jle	.L26	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.5
	movq	%rax, %rsi	# stderr.5,
	movl	$10, %edi	#,
	call	fputc	#
.L26:
	.loc 1 462 0 is_stmt 1
	movl	-5172(%rbp), %eax	# stream, tmp87
	movl	%eax, %edi	# tmp87,
	call	myfeof	#
	testb	%al, %al	# D.5095
	je	.L27	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	nop
	.loc 1 470 0 is_stmt 1 discriminator 1
	leaq	-5152(%rbp), %r8	#, tmp95
	leaq	-5156(%rbp), %rdi	#, tmp96
	leaq	-5160(%rbp), %rdx	#, tmp97
	movq	-5128(%rbp), %rsi	# bzf, tmp98
	leaq	-5144(%rbp), %rax	#, tmp99
	leaq	-5148(%rbp), %rcx	#, tmp100
	movq	%rcx, (%rsp)	# tmp100,
	movq	%r8, %r9	# tmp95,
	movq	%rdi, %r8	# tmp96,
	movq	%rdx, %rcx	# tmp97,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp99,
	call	BZ2_bzWriteClose64	#
	.loc 1 473 0 discriminator 1
	movl	-5144(%rbp), %eax	# bzerr, bzerr.7
	testl	%eax, %eax	# bzerr.7
	je	.L31	#,
	jmp	.L44	#
.L27:
	.loc 1 463 0
	movl	-5172(%rbp), %edx	# stream, tmp88
	leaq	-5008(%rbp), %rax	#, tmp89
	movl	%edx, %ecx	# tmp88,
	movl	$5000, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	spec_fread	#
	movl	%eax, -5132(%rbp)	# tmp90, nIbuf
	.loc 1 465 0
	cmpl	$0, -5132(%rbp)	#, nIbuf
	jle	.L29	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	-5132(%rbp), %ecx	# nIbuf, tmp91
	leaq	-5008(%rbp), %rdx	#, tmp92
	movq	-5128(%rbp), %rsi	# bzf, tmp93
	leaq	-5144(%rbp), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	BZ2_bzWrite	#
.L29:
	.loc 1 466 0 is_stmt 1
	movl	-5144(%rbp), %eax	# bzerr, bzerr.6
	testl	%eax, %eax	# bzerr.6
	je	.L30	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	jmp	.L25	#
.L30:
	.loc 1 468 0 is_stmt 1
	jmp	.L26	#
.L44:
	.loc 1 473 0 discriminator 1
	jmp	.L25	#
.L31:
	.loc 1 476 0
	movl	$0, -5136(%rbp)	#, ret
	.loc 1 477 0
	cmpl	$-1, -5136(%rbp)	#, ret
	jne	.L32	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	jmp	.L33	#
.L32:
	.loc 1 479 0 is_stmt 1
	cmpl	$1, -5176(%rbp)	#, zStream
	je	.L34	#,
	.loc 1 483 0
	movl	$0, -5136(%rbp)	#, ret
	.loc 1 484 0
	movl	$0, outputHandleJustInCase(%rip)	#, outputHandleJustInCase
	.loc 1 485 0
	cmpl	$-1, -5136(%rbp)	#, ret
	jne	.L34	#,
	.loc 1 485 0 is_stmt 0 discriminator 1
	jmp	.L33	#
.L34:
	.loc 1 487 0 is_stmt 1
	movl	$0, outputHandleJustInCase(%rip)	#, outputHandleJustInCase
	.loc 1 489 0
	movl	$0, -5136(%rbp)	#, ret
	.loc 1 490 0
	cmpl	$-1, -5136(%rbp)	#, ret
	jne	.L35	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	jmp	.L33	#
.L35:
	.loc 1 492 0 is_stmt 1
	movl	verbosity(%rip), %eax	# verbosity, verbosity.8
	testl	%eax, %eax	# verbosity.8
	jle	.L23	#,
	.loc 1 493 0
	movl	-5160(%rbp), %eax	# nbytes_in_lo32, nbytes_in_lo32.9
	testl	%eax, %eax	# nbytes_in_lo32.9
	jne	.L37	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	-5156(%rbp), %eax	# nbytes_in_hi32, nbytes_in_hi32.10
	testl	%eax, %eax	# nbytes_in_hi32.10
	jne	.L37	#,
	.loc 1 494 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.11
	movq	%rax, %rcx	# stderr.11,
	movl	$21, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	jmp	.L23	#
.L37:
.LBB2:
	.loc 1 499 0
	movl	-5156(%rbp), %edx	# nbytes_in_hi32, nbytes_in_hi32.12
	movl	-5160(%rbp), %ecx	# nbytes_in_lo32, nbytes_in_lo32.13
	leaq	-5104(%rbp), %rax	#, tmp101
	movl	%ecx, %esi	# nbytes_in_lo32.13,
	movq	%rax, %rdi	# tmp101,
	call	uInt64_from_UInt32s	#
	.loc 1 501 0
	movl	-5148(%rbp), %edx	# nbytes_out_hi32, nbytes_out_hi32.14
	movl	-5152(%rbp), %ecx	# nbytes_out_lo32, nbytes_out_lo32.15
	leaq	-5088(%rbp), %rax	#, tmp102
	movl	%ecx, %esi	# nbytes_out_lo32.15,
	movq	%rax, %rdi	# tmp102,
	call	uInt64_from_UInt32s	#
	.loc 1 503 0
	leaq	-5104(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	uInt64_to_double	#
	movsd	%xmm0, -5184(%rbp)	#, %sfp
	movq	-5184(%rbp), %rax	# %sfp, tmp104
	movq	%rax, -5120(%rbp)	# tmp104, nbytes_in_d
	.loc 1 504 0
	leaq	-5088(%rbp), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	uInt64_to_double	#
	movsd	%xmm0, -5184(%rbp)	#, %sfp
	movq	-5184(%rbp), %rax	# %sfp, tmp106
	movq	%rax, -5112(%rbp)	# tmp106, nbytes_out_d
	.loc 1 505 0
	leaq	-5104(%rbp), %rdx	#, tmp107
	leaq	-5072(%rbp), %rax	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	uInt64_toAscii	#
	.loc 1 506 0
	leaq	-5088(%rbp), %rdx	#, tmp109
	leaq	-5040(%rbp), %rax	#, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	uInt64_toAscii	#
	.loc 1 511 0
	movsd	-5112(%rbp), %xmm0	# nbytes_out_d, tmp111
	divsd	-5120(%rbp), %xmm0	# nbytes_in_d, D.5096
	movsd	.LC0(%rip), %xmm1	#, tmp112
	subsd	%xmm0, %xmm1	# D.5096, D.5096
	movapd	%xmm1, %xmm0	# D.5096, D.5096
	.loc 1 507 0
	movsd	.LC4(%rip), %xmm1	#, tmp113
	movapd	%xmm0, %xmm2	# D.5096, D.5096
	mulsd	%xmm1, %xmm2	# tmp113, D.5096
	.loc 1 510 0
	movsd	-5112(%rbp), %xmm1	# nbytes_out_d, tmp114
	movsd	.LC5(%rip), %xmm0	#, tmp115
	mulsd	%xmm1, %xmm0	# tmp114, D.5096
	.loc 1 507 0
	movapd	%xmm0, %xmm1	# D.5096, D.5096
	divsd	-5120(%rbp), %xmm1	# nbytes_in_d, D.5096
	movsd	-5120(%rbp), %xmm0	# nbytes_in_d, tmp116
	divsd	-5112(%rbp), %xmm0	# nbytes_out_d, D.5096
	movq	stderr(%rip), %rax	# stderr, stderr.16
	leaq	-5040(%rbp), %rcx	#, tmp117
	leaq	-5072(%rbp), %rdx	#, tmp118
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.16,
	movl	$3, %eax	#,
	call	fprintf	#
.LBE2:
	.loc 1 518 0
	jmp	.L23	#
.L25:
	.loc 1 521 0
	leaq	-5152(%rbp), %r8	#, tmp119
	leaq	-5156(%rbp), %rdi	#, tmp120
	leaq	-5160(%rbp), %rdx	#, tmp121
	movq	-5128(%rbp), %rsi	# bzf, tmp122
	leaq	-5140(%rbp), %rax	#, tmp123
	leaq	-5148(%rbp), %rcx	#, tmp124
	movq	%rcx, (%rsp)	# tmp124,
	movq	%r8, %r9	# tmp119,
	movq	%rdi, %r8	# tmp120,
	movq	%rdx, %rcx	# tmp121,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp123,
	call	BZ2_bzWriteClose64	#
	.loc 1 524 0
	movl	-5144(%rbp), %eax	# bzerr, bzerr.17
	cmpl	$-6, %eax	#, bzerr.17
	je	.L33	#,
	cmpl	$-3, %eax	#, bzerr.17
	je	.L40	#,
	cmpl	$-9, %eax	#, bzerr.17
	jne	.L45	#,
	.loc 1 526 0
	call	configError	#
	jmp	.L42	#
.L40:
	.loc 1 528 0
	call	outOfMemory	#
	jmp	.L42	#
.L33:
	.loc 1 531 0
	call	ioError	#
	jmp	.L42	#
.L45:
	.loc 1 533 0
	movl	$.LC7, %edi	#,
	call	panic	#
.L42:
	.loc 1 536 0
	movl	$.LC8, %edi	#,
	call	panic	#
.L23:
	.loc 1 538 0
	movq	-8(%rbp), %rax	# D.5097, tmp126
	xorq	%fs:40, %rax	#, tmp126
	je	.L43	#,
	call	__stack_chk_fail	#
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compressStream, .-compressStream
	.section	.rodata
.LC9:
	.string	"decompress:bzReadGetUnused"
.LC10:
	.string	"\n    "
	.align 8
.LC11:
	.string	"\n%s: %s: trailing garbage after EOF ignored\n"
.LC12:
	.string	"decompress:unexpected error"
.LC13:
	.string	"decompress:end"
	.text
	.globl	uncompressStream
	.type	uncompressStream, @function
uncompressStream:
.LFB9:
	.loc 1 549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$10104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -10100(%rbp)	# zStream, zStream
	movl	%esi, -10104(%rbp)	# stream, stream
	.loc 1 549 0
	movq	%fs:40, %rax	#, tmp124
	movq	%rax, -24(%rbp)	# tmp124, D.5107
	xorl	%eax, %eax	# tmp124
	.loc 1 550 0
	movq	$0, -10048(%rbp)	#, bzf
	.loc 1 558 0
	movl	$0, -10076(%rbp)	#, nUnused
	.loc 1 559 0
	movl	$0, -10072(%rbp)	#, streamNo
.L61:
	.loc 1 569 0
	movl	-10076(%rbp), %r8d	# nUnused, nUnused.18
	movzbl	smallMode(%rip), %eax	# smallMode, smallMode.19
	movzbl	%al, %ecx	# smallMode.19, D.5103
	movl	verbosity(%rip), %edx	# verbosity, verbosity.20
	leaq	-5024(%rbp), %rdi	#, tmp87
	movl	-10100(%rbp), %esi	# zStream, tmp88
	leaq	-10084(%rbp), %rax	#, tmp89
	movl	%r8d, %r9d	# nUnused.18,
	movq	%rdi, %r8	# tmp87,
	movq	%rax, %rdi	# tmp89,
	call	BZ2_bzReadOpen	#
	movq	%rax, -10048(%rbp)	# tmp90, bzf
	.loc 1 573 0
	cmpq	$0, -10048(%rbp)	#, bzf
	je	.L47	#,
	.loc 1 573 0 is_stmt 0 discriminator 1
	movl	-10084(%rbp), %eax	# bzerr, bzerr.21
	testl	%eax, %eax	# bzerr.21
	jne	.L47	#,
	.loc 1 574 0 is_stmt 1
	addl	$1, -10072(%rbp)	#, streamNo
	.loc 1 576 0
	jmp	.L48	#
.L53:
	.loc 1 577 0
	leaq	-10032(%rbp), %rdx	#, tmp91
	movq	-10048(%rbp), %rsi	# bzf, tmp92
	leaq	-10084(%rbp), %rax	#, tmp93
	movl	$5000, %ecx	#,
	movq	%rax, %rdi	# tmp93,
	call	BZ2_bzRead	#
	movl	%eax, -10064(%rbp)	# tmp94, nread
	.loc 1 578 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.22
	cmpl	$-5, %eax	#, bzerr.22
	jne	.L49	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	nop
.L50:
	.loc 1 619 0 is_stmt 1 discriminator 1
	movzbl	forceOverwrite(%rip), %eax	# forceOverwrite, forceOverwrite.33
	testb	%al, %al	# forceOverwrite.33
	je	.L47	#,
	jmp	.L85	#
.L49:
	.loc 1 579 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.23
	testl	%eax, %eax	# bzerr.23
	je	.L51	#,
	.loc 1 579 0 is_stmt 0 discriminator 2
	movl	-10084(%rbp), %eax	# bzerr, bzerr.24
	cmpl	$4, %eax	#, bzerr.24
	jne	.L48	#,
.L51:
	.loc 1 579 0 discriminator 1
	cmpl	$0, -10064(%rbp)	#, nread
	jle	.L48	#,
	.loc 1 580 0 is_stmt 1
	movl	-10104(%rbp), %ecx	# stream, tmp95
	movl	-10064(%rbp), %edx	# nread, tmp96
	leaq	-10032(%rbp), %rax	#, tmp97
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	spec_fwrite	#
.L48:
	.loc 1 576 0 discriminator 1
	movl	-10084(%rbp), %eax	# bzerr, bzerr.25
	testl	%eax, %eax	# bzerr.25
	je	.L53	#,
	.loc 1 583 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.26
	cmpl	$4, %eax	#, bzerr.26
	je	.L54	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	jmp	.L47	#
.L54:
	.loc 1 585 0 is_stmt 1
	leaq	-10076(%rbp), %rcx	#, tmp98
	leaq	-10056(%rbp), %rdx	#, tmp99
	movq	-10048(%rbp), %rsi	# bzf, tmp100
	leaq	-10084(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	BZ2_bzReadGetUnused	#
	.loc 1 586 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.27
	testl	%eax, %eax	# bzerr.27
	je	.L55	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	call	panic	#
.L55:
	.loc 1 588 0 is_stmt 1
	movq	-10056(%rbp), %rax	# unusedTmpV, tmp102
	movq	%rax, -10040(%rbp)	# tmp102, unusedTmp
	.loc 1 589 0
	movl	$0, -10068(%rbp)	#, i
	jmp	.L56	#
.L57:
	.loc 1 589 0 is_stmt 0 discriminator 2
	movl	-10068(%rbp), %eax	# i, tmp103
	movslq	%eax, %rdx	# tmp103, D.5105
	movq	-10040(%rbp), %rax	# unusedTmp, tmp104
	addq	%rdx, %rax	# D.5105, D.5106
	movzbl	(%rax), %edx	# *_30, D.5104
	movl	-10068(%rbp), %eax	# i, tmp106
	cltq
	movb	%dl, -5024(%rbp,%rax)	# D.5104, unused
	addl	$1, -10068(%rbp)	#, i
.L56:
	.loc 1 589 0 discriminator 1
	movl	-10076(%rbp), %eax	# nUnused, nUnused.28
	cmpl	%eax, -10068(%rbp)	# nUnused.28, i
	jl	.L57	#,
	.loc 1 591 0 is_stmt 1
	movq	-10048(%rbp), %rdx	# bzf, tmp107
	leaq	-10084(%rbp), %rax	#, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	BZ2_bzReadClose	#
	.loc 1 592 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.29
	testl	%eax, %eax	# bzerr.29
	je	.L58	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	call	panic	#
.L58:
	.loc 1 594 0 is_stmt 1
	movl	-10076(%rbp), %eax	# nUnused, nUnused.30
	testl	%eax, %eax	# nUnused.30
	jne	.L59	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	movl	-10100(%rbp), %eax	# zStream, tmp109
	movl	%eax, %edi	# tmp109,
	call	myfeof	#
	testb	%al, %al	# D.5104
	je	.L59	#,
	jmp	.L60	#
.L59:
	.loc 1 595 0 is_stmt 1
	jmp	.L61	#
.L60:
	.loc 1 599 0
	movl	$0, -10060(%rbp)	#, ret
	.loc 1 600 0
	cmpl	$-1, -10060(%rbp)	#, ret
	jne	.L62	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L62:
	.loc 1 603 0 is_stmt 1
	movl	$0, -10060(%rbp)	#, ret
	.loc 1 604 0
	cmpl	$0, -10060(%rbp)	#, ret
	je	.L64	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L64:
	.loc 1 606 0 is_stmt 1
	cmpl	$1, -10104(%rbp)	#, stream
	je	.L65	#,
	.loc 1 610 0
	movl	$0, -10060(%rbp)	#, ret
	.loc 1 611 0
	movl	$0, outputHandleJustInCase(%rip)	#, outputHandleJustInCase
	.loc 1 612 0
	cmpl	$-1, -10060(%rbp)	#, ret
	jne	.L65	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	jmp	.L63	#
.L65:
	.loc 1 614 0 is_stmt 1
	movl	$0, outputHandleJustInCase(%rip)	#, outputHandleJustInCase
	.loc 1 615 0
	movl	verbosity(%rip), %eax	# verbosity, verbosity.31
	cmpl	$1, %eax	#, verbosity.31
	jle	.L66	#,
	.loc 1 615 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.32
	movq	%rax, %rcx	# stderr.32,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
.L66:
	.loc 1 616 0 is_stmt 1
	movl	$1, %eax	#, D.5102
	jmp	.L82	#
.L85:
	.loc 1 620 0
	movl	-10100(%rbp), %eax	# zStream, tmp110
	movl	%eax, %edi	# tmp110,
	call	spec_rewind	#
.L71:
	.loc 1 622 0
	movl	-10100(%rbp), %eax	# zStream, tmp111
	movl	%eax, %edi	# tmp111,
	call	myfeof	#
	testb	%al, %al	# D.5104
	je	.L68	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	nop
	.loc 1 628 0 is_stmt 1 discriminator 1
	jmp	.L60	#
.L68:
	.loc 1 623 0
	movl	-10100(%rbp), %edx	# zStream, tmp112
	leaq	-10032(%rbp), %rax	#, tmp113
	movl	%edx, %ecx	# tmp112,
	movl	$5000, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	spec_fread	#
	movl	%eax, -10064(%rbp)	# tmp114, nread
	.loc 1 625 0
	cmpl	$0, -10064(%rbp)	#, nread
	jle	.L84	#,
	.loc 1 625 0 is_stmt 0 discriminator 1
	movl	-10104(%rbp), %ecx	# stream, tmp115
	movl	-10064(%rbp), %edx	# nread, tmp116
	leaq	-10032(%rbp), %rax	#, tmp117
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	spec_fwrite	#
	.loc 1 627 0 is_stmt 1 discriminator 1
	jmp	.L71	#
.L84:
	.loc 1 627 0 is_stmt 0
	jmp	.L71	#
.L47:
	.loc 1 632 0 is_stmt 1
	movq	-10048(%rbp), %rdx	# bzf, tmp118
	leaq	-10080(%rbp), %rax	#, tmp119
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp119,
	call	BZ2_bzReadClose	#
	.loc 1 633 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.34
	addl	$9, %eax	#, tmp120
	cmpl	$6, %eax	#, tmp120
	ja	.L72	#,
	movl	%eax, %eax	# tmp120, tmp121
	movq	.L74(,%rax,8), %rax	#, tmp122
	jmp	*%rax	# tmp122
	.section	.rodata
	.align 8
	.align 4
.L74:
	.quad	.L73
	.quad	.L72
	.quad	.L75
	.quad	.L63
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.text
.L73:
	.loc 1 635 0
	call	configError	#
	jmp	.L79	#
.L63:
	.loc 1 638 0
	call	ioError	#
	jmp	.L79	#
.L77:
	.loc 1 640 0
	call	crcError	#
.L78:
	.loc 1 642 0
	call	outOfMemory	#
.L75:
	.loc 1 644 0
	call	compressedStreamEOF	#
.L76:
	.loc 1 653 0
	cmpl	$1, -10072(%rbp)	#, streamNo
	jne	.L80	#,
	.loc 1 654 0
	movl	$0, %eax	#, D.5102
	jmp	.L82	#
.L80:
	.loc 1 656 0
	movzbl	noisy(%rip), %eax	# noisy, noisy.35
	testb	%al, %al	# noisy.35
	je	.L81	#,
	.loc 1 657 0
	movq	progName(%rip), %rdx	# progName, progName.36
	movq	stderr(%rip), %rax	# stderr, stderr.37
	movl	$inName, %ecx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.37,
	movl	$0, %eax	#,
	call	fprintf	#
.L81:
	.loc 1 660 0
	movl	$1, %eax	#, D.5102
	jmp	.L82	#
.L72:
	.loc 1 663 0
	movl	$.LC12, %edi	#,
	call	panic	#
.L79:
	.loc 1 666 0
	movl	$.LC13, %edi	#,
	call	panic	#
	.loc 1 667 0
	movl	$1, %eax	#, D.5102
.L82:
	.loc 1 668 0
	movq	-24(%rbp), %rbx	# D.5107, tmp125
	xorq	%fs:40, %rbx	#, tmp125
	je	.L83	#,
	call	__stack_chk_fail	#
.L83:
	addq	$10104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	uncompressStream, .-uncompressStream
	.section	.rodata
.LC14:
	.string	"test:bzReadGetUnused"
.LC15:
	.string	"%s: %s: "
	.align 8
.LC16:
	.string	"data integrity (CRC) error in data\n"
.LC17:
	.string	"file ends unexpectedly\n"
	.align 8
.LC18:
	.string	"bad magic number (file not created by bzip2)\n"
	.align 8
.LC19:
	.string	"trailing garbage after EOF ignored\n"
.LC20:
	.string	"test:unexpected error"
.LC21:
	.string	"test:end"
	.text
	.type	testStream, @function
testStream:
.LFB10:
	.loc 1 678 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$10104, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -10100(%rbp)	# zStream, zStream
	.loc 1 678 0
	movq	%fs:40, %rax	#, tmp114
	movq	%rax, -24(%rbp)	# tmp114, D.5118
	xorl	%eax, %eax	# tmp114
	.loc 1 679 0
	movq	$0, -10048(%rbp)	#, bzf
	.loc 1 687 0
	movl	$0, -10076(%rbp)	#, nUnused
	.loc 1 688 0
	movl	$0, -10072(%rbp)	#, streamNo
.L97:
	.loc 1 695 0
	movl	-10076(%rbp), %r8d	# nUnused, nUnused.38
	movzbl	smallMode(%rip), %eax	# smallMode, smallMode.39
	movzbl	%al, %ecx	# smallMode.39, D.5114
	movl	verbosity(%rip), %edx	# verbosity, verbosity.40
	leaq	-5024(%rbp), %rdi	#, tmp88
	movl	-10100(%rbp), %esi	# zStream, tmp89
	leaq	-10084(%rbp), %rax	#, tmp90
	movl	%r8d, %r9d	# nUnused.38,
	movq	%rdi, %r8	# tmp88,
	movq	%rax, %rdi	# tmp90,
	call	BZ2_bzReadOpen	#
	movq	%rax, -10048(%rbp)	# tmp91, bzf
	.loc 1 699 0
	cmpq	$0, -10048(%rbp)	#, bzf
	je	.L87	#,
	.loc 1 699 0 is_stmt 0 discriminator 1
	movl	-10084(%rbp), %eax	# bzerr, bzerr.41
	testl	%eax, %eax	# bzerr.41
	jne	.L87	#,
	.loc 1 700 0 is_stmt 1
	addl	$1, -10072(%rbp)	#, streamNo
	.loc 1 702 0
	jmp	.L88	#
.L89:
	.loc 1 703 0
	leaq	-10032(%rbp), %rdx	#, tmp92
	movq	-10048(%rbp), %rsi	# bzf, tmp93
	leaq	-10084(%rbp), %rax	#, tmp94
	movl	$5000, %ecx	#,
	movq	%rax, %rdi	# tmp94,
	call	BZ2_bzRead	#
	movl	%eax, -10064(%rbp)	# tmp95, nread
	.loc 1 704 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.42
	cmpl	$-5, %eax	#, bzerr.42
	jne	.L88	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	jmp	.L87	#
.L88:
	.loc 1 702 0 is_stmt 1 discriminator 1
	movl	-10084(%rbp), %eax	# bzerr, bzerr.43
	testl	%eax, %eax	# bzerr.43
	je	.L89	#,
	.loc 1 706 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.44
	cmpl	$4, %eax	#, bzerr.44
	je	.L90	#,
	.loc 1 706 0 is_stmt 0 discriminator 1
	jmp	.L87	#
.L90:
	.loc 1 708 0 is_stmt 1
	leaq	-10076(%rbp), %rcx	#, tmp96
	leaq	-10056(%rbp), %rdx	#, tmp97
	movq	-10048(%rbp), %rsi	# bzf, tmp98
	leaq	-10084(%rbp), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	BZ2_bzReadGetUnused	#
	.loc 1 709 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.45
	testl	%eax, %eax	# bzerr.45
	je	.L91	#,
	.loc 1 709 0 is_stmt 0 discriminator 1
	movl	$.LC14, %edi	#,
	call	panic	#
.L91:
	.loc 1 711 0 is_stmt 1
	movq	-10056(%rbp), %rax	# unusedTmpV, tmp100
	movq	%rax, -10040(%rbp)	# tmp100, unusedTmp
	.loc 1 712 0
	movl	$0, -10068(%rbp)	#, i
	jmp	.L92	#
.L93:
	.loc 1 712 0 is_stmt 0 discriminator 2
	movl	-10068(%rbp), %eax	# i, tmp101
	movslq	%eax, %rdx	# tmp101, D.5115
	movq	-10040(%rbp), %rax	# unusedTmp, tmp102
	addq	%rdx, %rax	# D.5115, D.5116
	movzbl	(%rax), %edx	# *_24, D.5117
	movl	-10068(%rbp), %eax	# i, tmp104
	cltq
	movb	%dl, -5024(%rbp,%rax)	# D.5117, unused
	addl	$1, -10068(%rbp)	#, i
.L92:
	.loc 1 712 0 discriminator 1
	movl	-10076(%rbp), %eax	# nUnused, nUnused.46
	cmpl	%eax, -10068(%rbp)	# nUnused.46, i
	jl	.L93	#,
	.loc 1 714 0 is_stmt 1
	movq	-10048(%rbp), %rdx	# bzf, tmp105
	leaq	-10084(%rbp), %rax	#, tmp106
	movq	%rdx, %rsi	# tmp105,
	movq	%rax, %rdi	# tmp106,
	call	BZ2_bzReadClose	#
	.loc 1 715 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.47
	testl	%eax, %eax	# bzerr.47
	je	.L94	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	movl	$.LC14, %edi	#,
	call	panic	#
.L94:
	.loc 1 716 0 is_stmt 1
	movl	-10076(%rbp), %eax	# nUnused, nUnused.48
	testl	%eax, %eax	# nUnused.48
	jne	.L95	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movl	-10100(%rbp), %eax	# zStream, tmp107
	movl	%eax, %edi	# tmp107,
	call	myfeof	#
	testb	%al, %al	# D.5117
	je	.L95	#,
	nop
	.loc 1 721 0 is_stmt 1 discriminator 1
	movl	$0, -10060(%rbp)	#, ret
	.loc 1 722 0 discriminator 1
	cmpl	$-1, -10060(%rbp)	#, ret
	jne	.L98	#,
	jmp	.L115	#
.L95:
	.loc 1 718 0
	jmp	.L97	#
.L115:
	.loc 1 722 0 discriminator 1
	jmp	.L99	#
.L98:
	.loc 1 724 0
	movl	verbosity(%rip), %eax	# verbosity, verbosity.49
	cmpl	$1, %eax	#, verbosity.49
	jle	.L100	#,
	.loc 1 724 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.50
	movq	%rax, %rcx	# stderr.50,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
.L100:
	.loc 1 725 0 is_stmt 1
	movl	$1, %eax	#, D.5113
	jmp	.L113	#
.L87:
	.loc 1 728 0
	movq	-10048(%rbp), %rdx	# bzf, tmp108
	leaq	-10080(%rbp), %rax	#, tmp109
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	BZ2_bzReadClose	#
	.loc 1 729 0
	movl	verbosity(%rip), %eax	# verbosity, verbosity.51
	testl	%eax, %eax	# verbosity.51
	jne	.L102	#,
	.loc 1 730 0
	movq	progName(%rip), %rdx	# progName, progName.52
	movq	stderr(%rip), %rax	# stderr, stderr.53
	movl	$inName, %ecx	#,
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# stderr.53,
	movl	$0, %eax	#,
	call	fprintf	#
.L102:
	.loc 1 731 0
	movl	-10084(%rbp), %eax	# bzerr, bzerr.54
	addl	$9, %eax	#, tmp110
	cmpl	$6, %eax	#, tmp110
	ja	.L103	#,
	movl	%eax, %eax	# tmp110, tmp111
	movq	.L105(,%rax,8), %rax	#, tmp112
	jmp	*%rax	# tmp112
	.section	.rodata
	.align 8
	.align 4
.L105:
	.quad	.L104
	.quad	.L103
	.quad	.L106
	.quad	.L99
	.quad	.L107
	.quad	.L108
	.quad	.L109
	.text
.L104:
	.loc 1 733 0
	call	configError	#
	jmp	.L110	#
.L99:
	.loc 1 736 0
	call	ioError	#
	jmp	.L110	#
.L108:
	.loc 1 738 0
	movq	stderr(%rip), %rax	# stderr, stderr.55
	movq	%rax, %rcx	# stderr.55,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
	.loc 1 740 0
	movl	$0, %eax	#, D.5113
	jmp	.L113	#
.L109:
	.loc 1 742 0
	call	outOfMemory	#
.L106:
	.loc 1 744 0
	movq	stderr(%rip), %rax	# stderr, stderr.56
	movq	%rax, %rcx	# stderr.56,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
	.loc 1 746 0
	movl	$0, %eax	#, D.5113
	jmp	.L113	#
.L107:
	.loc 1 753 0
	cmpl	$1, -10072(%rbp)	#, streamNo
	jne	.L111	#,
	.loc 1 754 0
	movq	stderr(%rip), %rax	# stderr, stderr.57
	movq	%rax, %rcx	# stderr.57,
	movl	$45, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	fwrite	#
	.loc 1 756 0
	movl	$0, %eax	#, D.5113
	jmp	.L113	#
.L111:
	.loc 1 758 0
	movzbl	noisy(%rip), %eax	# noisy, noisy.58
	testb	%al, %al	# noisy.58
	je	.L112	#,
	.loc 1 759 0
	movq	stderr(%rip), %rax	# stderr, stderr.59
	movq	%rax, %rcx	# stderr.59,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
.L112:
	.loc 1 761 0
	movl	$1, %eax	#, D.5113
	jmp	.L113	#
.L103:
	.loc 1 764 0
	movl	$.LC20, %edi	#,
	call	panic	#
.L110:
	.loc 1 767 0
	movl	$.LC21, %edi	#,
	call	panic	#
	.loc 1 768 0
	movl	$1, %eax	#, D.5113
.L113:
	.loc 1 769 0
	movq	-24(%rbp), %rbx	# D.5118, tmp115
	xorq	%fs:40, %rbx	#, tmp115
	je	.L114	#,
	call	__stack_chk_fail	#
.L114:
	addq	$10104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	testStream, .-testStream
	.type	setExit, @function
setExit:
.LFB11:
	.loc 1 779 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# v, v
	.loc 1 781 0
	movl	$0, exitValue(%rip)	#, exitValue
	.loc 1 785 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	setExit, .-setExit
	.section	.rodata
	.align 8
.LC22:
	.string	"\nIt is possible that the compressed file(s) have become corrupted.\nYou can use the -tvv option to test integrity of such files.\n\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.text
	.type	cadvise, @function
cadvise:
.LFB12:
	.loc 1 791 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 792 0
	movzbl	noisy(%rip), %eax	# noisy, noisy.60
	testb	%al, %al	# noisy.60
	je	.L117	#,
	.loc 1 793 0
	movq	stderr(%rip), %rax	# stderr, stderr.61
	movq	%rax, %rcx	# stderr.61,
	movl	$240, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
.L117:
	.loc 1 800 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	cadvise, .-cadvise
	.section	.rodata
	.align 8
.LC23:
	.string	"\tInput file = %s, output file = %s\n"
	.text
	.type	showFileNames, @function
showFileNames:
.LFB13:
	.loc 1 806 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 807 0
	movzbl	noisy(%rip), %eax	# noisy, noisy.62
	testb	%al, %al	# noisy.62
	je	.L119	#,
	.loc 1 808 0
	movq	stderr(%rip), %rax	# stderr, stderr.63
	movl	$outName, %ecx	#,
	movl	$inName, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# stderr.63,
	movl	$0, %eax	#,
	call	fprintf	#
.L119:
	.loc 1 813 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	showFileNames, .-showFileNames
	.type	cleanUpAndFail, @function
cleanUpAndFail:
.LFB14:
	.loc 1 819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# ec, ec
	.loc 1 872 0
	movl	-4(%rbp), %eax	# ec, tmp60
	movl	%eax, %edi	# tmp60,
	call	setExit	#
	.loc 1 873 0
	movl	exitValue(%rip), %eax	# exitValue, exitValue.64
	movl	%eax, %edi	# exitValue.64,
	call	exit	#
	.cfi_endproc
.LFE14:
	.size	cleanUpAndFail, .-cleanUpAndFail
	.section	.rodata
	.align 8
.LC24:
	.string	"\n%s: PANIC -- internal consistency error:\n\t%s\n\tThis is probably a BUG, but it may be in your COMPILER.  Please do not bother\n\tthe original author.\n"
	.text
	.type	panic, @function
panic:
.LFB15:
	.loc 1 880 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 881 0
	movq	progName(%rip), %rdx	# progName, progName.65
	movq	stderr(%rip), %rax	# stderr, stderr.66
	movq	-8(%rbp), %rcx	# s, tmp61
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# stderr.66,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 892 0
	call	showFileNames	#
	.loc 1 893 0
	movl	$3, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 894 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	panic, .-panic
	.section	.rodata
	.align 8
.LC25:
	.string	"\n%s: Data integrity error when decompressing.\n"
	.text
	.type	crcError, @function
crcError:
.LFB16:
	.loc 1 900 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 901 0
	movq	progName(%rip), %rdx	# progName, progName.67
	movq	stderr(%rip), %rax	# stderr, stderr.68
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# stderr.68,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 904 0
	call	showFileNames	#
	.loc 1 905 0
	call	cadvise	#
	.loc 1 906 0
	movl	$2, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 907 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	crcError, .-crcError
	.section	.rodata
	.align 8
.LC26:
	.string	"\n%s: Compressed file ends unexpectedly;\n\tperhaps it is corrupted?  *Possible* reason follows.\n"
	.text
	.type	compressedStreamEOF, @function
compressedStreamEOF:
.LFB17:
	.loc 1 913 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 914 0
	movzbl	noisy(%rip), %eax	# noisy, noisy.69
	testb	%al, %al	# noisy.69
	je	.L125	#,
	.loc 1 915 0
	movq	progName(%rip), %rdx	# progName, progName.70
	movq	stderr(%rip), %rax	# stderr, stderr.71
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# stderr.71,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 919 0
	movq	progName(%rip), %rax	# progName, progName.72
	movq	%rax, %rdi	# progName.72,
	call	perror	#
	.loc 1 920 0
	call	showFileNames	#
	.loc 1 921 0
	call	cadvise	#
.L125:
	.loc 1 923 0
	movl	$2, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 924 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	compressedStreamEOF, .-compressedStreamEOF
	.section	.rodata
	.align 8
.LC27:
	.string	"\n%s: I/O or other error, bailing out.  Possible reason follows.\n"
	.text
	.type	ioError, @function
ioError:
.LFB18:
	.loc 1 930 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 931 0
	movq	progName(%rip), %rdx	# progName, progName.73
	movq	stderr(%rip), %rax	# stderr, stderr.74
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# stderr.74,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 935 0
	movq	progName(%rip), %rax	# progName, progName.75
	movq	%rax, %rdi	# progName.75,
	call	perror	#
	.loc 1 936 0
	call	showFileNames	#
	.loc 1 937 0
	movl	$1, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 938 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ioError, .-ioError
	.section	.rodata
	.align 8
.LC28:
	.string	"\n%s: Control-C or similar caught, quitting.\n"
	.text
	.type	mySignalCatcher, @function
mySignalCatcher:
.LFB19:
	.loc 1 944 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 945 0
	movq	progName(%rip), %rdx	# progName, progName.76
	movq	stderr(%rip), %rax	# stderr, stderr.77
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# stderr.77,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 948 0
	movl	$1, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 949 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	mySignalCatcher, .-mySignalCatcher
	.section	.rodata
	.align 8
.LC29:
	.ascii	"\n%s: Caught a SIGSEGV or SIGBUS whilst compressing.\n\n   P"
	.ascii	"ossible causes are (most likely first):\n   (1) This compute"
	.ascii	"r has unreliable memory or cache hardware\n       (a surpris"
	.ascii	"ingly common problem; try a different machi"
	.string	"ne.)\n   (2) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (3) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (1) and (2).\n\n"
	.align 8
.LC30:
	.ascii	"\n%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\n\n  "
	.ascii	" Possible causes are (most likely first):\n   (1) The compre"
	.ascii	"ssed data is corrupted, and bzip2's usual checks\n       fai"
	.ascii	"led to detect this.  Try bzip2 -tvv my_file.bz2.\n   (2) Thi"
	.ascii	"s computer has unreliable memory or cache hardware\n       ("
	.ascii	"a surprisingly common problem; try a different machi"
	.string	"ne.)\n   (3) A bug in the compiler used to create this executable\n       (unlikely, if you didn't compile bzip2 yourself.)\n   (4) A real bug in bzip2 -- I hope this should never be the case.\n   The user's manual, Section 4.3, has more info on (2) and (3).\n\n"
	.text
	.type	mySIGSEGVorSIGBUScatcher, @function
mySIGSEGVorSIGBUScatcher:
.LFB20:
	.loc 1 955 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 956 0
	movl	opMode(%rip), %eax	# opMode, opMode.78
	cmpl	$1, %eax	#, opMode.78
	jne	.L129	#,
	.loc 1 957 0
	movq	progName(%rip), %rdx	# progName, progName.79
	movq	stderr(%rip), %rax	# stderr, stderr.80
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# stderr.80,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L130	#
.L129:
	.loc 1 980 0
	movq	progName(%rip), %rdx	# progName, progName.81
	movq	stderr(%rip), %rax	# stderr, stderr.82
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# stderr.82,
	movl	$0, %eax	#,
	call	fprintf	#
.L130:
	.loc 1 1005 0
	call	showFileNames	#
	.loc 1 1006 0
	movl	opMode(%rip), %eax	# opMode, opMode.83
	cmpl	$1, %eax	#, opMode.83
	jne	.L131	#,
	.loc 1 1007 0
	movl	$3, %edi	#,
	call	cleanUpAndFail	#
	jmp	.L128	#
.L131:
	.loc 1 1008 0
	call	cadvise	#
	movl	$2, %edi	#,
	call	cleanUpAndFail	#
.L128:
	.loc 1 1009 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	mySIGSEGVorSIGBUScatcher, .-mySIGSEGVorSIGBUScatcher
	.section	.rodata
	.align 8
.LC31:
	.string	"\n%s: couldn't allocate enough memory\n"
	.text
	.type	outOfMemory, @function
outOfMemory:
.LFB21:
	.loc 1 1015 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1016 0
	movq	progName(%rip), %rdx	# progName, progName.84
	movq	stderr(%rip), %rax	# stderr, stderr.85
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# stderr.85,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1019 0
	call	showFileNames	#
	.loc 1 1020 0
	movl	$1, %edi	#,
	call	cleanUpAndFail	#
	.loc 1 1021 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	outOfMemory, .-outOfMemory
	.section	.rodata
	.align 8
.LC32:
	.string	"bzip2: I'm not configured correctly for this platform!\n\tI require Int32, Int16 and Char to have sizes\n\tof 4, 2 and 1 bytes to run properly, and they don't.\n\tProbably you can fix this by defining them correctly,\n\tand recompiling.  Bye!\n"
	.text
	.type	configError, @function
configError:
.LFB22:
	.loc 1 1027 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1028 0
	movq	stderr(%rip), %rax	# stderr, stderr.86
	movq	%rax, %rcx	# stderr.86,
	movl	$235, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC32, %edi	#,
	call	fwrite	#
	.loc 1 1034 0
	movl	$3, %edi	#,
	call	setExit	#
	.loc 1 1035 0
	movl	exitValue(%rip), %eax	# exitValue, exitValue.87
	movl	%eax, %edi	# exitValue.87,
	call	exit	#
	.cfi_endproc
.LFE22:
	.size	configError, .-configError
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1081081856
	.align 8
.LC4:
	.long	0
	.long	1079574528
	.align 8
.LC5:
	.long	0
	.long	1075838976
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "bzlib.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xce7
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF134
	.byte	0x1
	.long	.LASF135
	.long	.LASF136
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
	.long	.LASF50
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
	.long	.LASF51
	.byte	0x5
	.value	0x124
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.value	0x104
	.long	0x95
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.value	0x105
	.long	0x3f
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.value	0x106
	.long	0x3f
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.value	0x107
	.long	0x62
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.value	0x108
	.long	0x4d
	.uleb128 0xe
	.long	.LASF57
	.byte	0x1
	.value	0x113
	.long	0x62
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.value	0x14f
	.long	0x308
	.uleb128 0x10
	.string	"b"
	.byte	0x1
	.value	0x14f
	.long	0x308
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c3
	.long	0x318
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.value	0x150
	.long	0x2f3
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.value	0x154
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x36e
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x154
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.value	0x154
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.value	0x154
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x318
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.value	0x162
	.long	0x29c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cf
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x162
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x164
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF61
	.byte	0x1
	.value	0x165
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"sum"
	.byte	0x1
	.value	0x166
	.long	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.value	0x170
	.long	0x2b7
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x170
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x172
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.value	0x17b
	.long	0x2cf
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x467
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x17b
	.long	0x36e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"rem"
	.byte	0x1
	.value	0x17d
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.value	0x17d
	.long	0x2db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x17e
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x18d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.value	0x18d
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x18d
	.long	0x36e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x18f
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.value	0x18f
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.value	0x190
	.long	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.value	0x191
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x192
	.long	0x318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xb
	.long	0x2c3
	.long	0x4ff
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x1a5
	.long	0x2b7
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x53c
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.value	0x1a5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x1aa
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF137
	.byte	0x1
	.value	0x1b3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ad
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.value	0x1b3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5188
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.value	0x1b3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5192
	.uleb128 0x15
	.string	"bzf"
	.byte	0x1
	.value	0x1b9
	.long	0x6ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5144
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.value	0x1ba
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5024
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.value	0x1bb
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5148
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.value	0x1bc
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5176
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.value	0x1bc
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5172
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.value	0x1bd
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5168
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.value	0x1bd
	.long	0x2db
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5164
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.value	0x1be
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5160
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x1be
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5156
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x1be
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5152
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.value	0x212
	.quad	.L33
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x208
	.quad	.L25
	.uleb128 0x1b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.value	0x1f0
	.long	0x6c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5088
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.value	0x1f0
	.long	0x6c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5056
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.value	0x1f1
	.long	0x318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5120
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.value	0x1f1
	.long	0x318
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5104
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x1f2
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5136
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.value	0x1f2
	.long	0x29c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5128
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a3
	.uleb128 0xb
	.long	0x2c3
	.long	0x6c4
	.uleb128 0x1c
	.long	0x86
	.value	0x1387
	.byte	0
	.uleb128 0xb
	.long	0x2ab
	.long	0x6d4
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0
	.uleb128 0x1d
	.long	.LASF138
	.byte	0x1
	.value	0x220
	.long	0x2b7
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x822
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.value	0x220
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10116
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.value	0x220
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10120
	.uleb128 0x15
	.string	"bzf"
	.byte	0x1
	.value	0x226
	.long	0x6ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10064
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10100
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10096
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10076
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10080
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10088
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x227
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10084
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.value	0x228
	.long	0x6b3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10048
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x229
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5040
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.value	0x22a
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10092
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.value	0x22b
	.long	0x8d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10072
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x22c
	.long	0x822
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10056
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.value	0x27d
	.quad	.L63
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x277
	.quad	.L47
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.value	0x26a
	.quad	.L50
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.value	0x255
	.quad	.L60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c3
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.value	0x2a2
	.long	0x2b7
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x945
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.value	0x2a2
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10116
	.uleb128 0x15
	.string	"bzf"
	.byte	0x1
	.value	0x2a7
	.long	0x6ad
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10064
	.uleb128 0x16
	.long	.LASF79
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10100
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10096
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10076
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10080
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10088
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x2a8
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10084
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.value	0x2a9
	.long	0x6b3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10048
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x2aa
	.long	0x6b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5040
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.value	0x2ab
	.long	0x2cf
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10092
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.value	0x2ac
	.long	0x8d
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10072
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x2ad
	.long	0x822
	.uleb128 0x4
	.byte	0x91
	.sleb128 -10056
	.uleb128 0x1a
	.long	.LASF81
	.byte	0x1
	.value	0x2df
	.quad	.L99
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x2d7
	.quad	.L87
	.byte	0
	.uleb128 0x11
	.long	.LASF99
	.byte	0x1
	.value	0x30a
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x971
	.uleb128 0x12
	.string	"v"
	.byte	0x1
	.value	0x30a
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x1
	.value	0x316
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF101
	.byte	0x1
	.value	0x325
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x332
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x9de
	.uleb128 0x12
	.string	"ec"
	.byte	0x1
	.value	0x332
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.long	.LASF139
	.byte	0x1
	.value	0x334
	.long	0x2e7
	.byte	0
	.uleb128 0x17
	.long	.LASF103
	.byte	0x1
	.value	0x36f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0a
	.uleb128 0x12
	.string	"s"
	.byte	0x1
	.value	0x36f
	.long	0xa0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ab
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.value	0x383
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x390
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF106
	.byte	0x1
	.value	0x3a1
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.value	0x3af
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8a
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x3af
	.long	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF108
	.byte	0x1
	.value	0x3ba
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xab6
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.value	0x3ba
	.long	0x2e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x3f6
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF110
	.byte	0x1
	.value	0x402
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF111
	.byte	0x6
	.byte	0xaa
	.long	0x25b
	.uleb128 0x21
	.long	.LASF112
	.byte	0x1
	.value	0x11a
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	verbosity
	.uleb128 0x21
	.long	.LASF113
	.byte	0x1
	.value	0x11b
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	keepInputFiles
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.value	0x11b
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	smallMode
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0x11b
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	deleteOutputOnInterrupt
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x11c
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	forceOverwrite
	.uleb128 0x21
	.long	.LASF117
	.byte	0x1
	.value	0x11c
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	testFailsExist
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.value	0x11c
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	unzFailsExist
	.uleb128 0x21
	.long	.LASF119
	.byte	0x1
	.value	0x11c
	.long	0x2b7
	.uleb128 0x9
	.byte	0x3
	.quad	noisy
	.uleb128 0x21
	.long	.LASF120
	.byte	0x1
	.value	0x11d
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	numFileNames
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x11d
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	numFilesProcessed
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.value	0x11d
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	blockSize100k
	.uleb128 0x21
	.long	.LASF123
	.byte	0x1
	.value	0x11e
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	exitValue
	.uleb128 0x21
	.long	.LASF124
	.byte	0x1
	.value	0x12a
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	opMode
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.value	0x12b
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	srcMode
	.uleb128 0x21
	.long	.LASF126
	.byte	0x1
	.value	0x12f
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	longestFileName
	.uleb128 0xb
	.long	0x2ab
	.long	0xc50
	.uleb128 0x1c
	.long	0x86
	.value	0x409
	.byte	0
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x130
	.long	0xc3f
	.uleb128 0x9
	.byte	0x3
	.quad	inName
	.uleb128 0x21
	.long	.LASF128
	.byte	0x1
	.value	0x131
	.long	0xc3f
	.uleb128 0x9
	.byte	0x3
	.quad	outName
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.value	0x132
	.long	0xc3f
	.uleb128 0x9
	.byte	0x3
	.quad	tmpName
	.uleb128 0x21
	.long	.LASF130
	.byte	0x1
	.value	0x133
	.long	0xa0a
	.uleb128 0x9
	.byte	0x3
	.quad	progName
	.uleb128 0x21
	.long	.LASF131
	.byte	0x1
	.value	0x134
	.long	0xc3f
	.uleb128 0x9
	.byte	0x3
	.quad	progNameReally
	.uleb128 0x21
	.long	.LASF132
	.byte	0x1
	.value	0x136
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	outputHandleJustInCase
	.uleb128 0x21
	.long	.LASF133
	.byte	0x1
	.value	0x13a
	.long	0x2cf
	.uleb128 0x9
	.byte	0x3
	.quad	workFactor
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
.LASF31:
	.string	"_shortbuf"
.LASF50:
	.string	"_IO_lock_t"
.LASF111:
	.string	"stderr"
.LASF20:
	.string	"_IO_buf_end"
.LASF53:
	.string	"Bool"
.LASF66:
	.string	"uInt64_toAscii"
.LASF18:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF12:
	.string	"_flags"
.LASF24:
	.string	"_markers"
.LASF132:
	.string	"outputHandleJustInCase"
.LASF105:
	.string	"compressedStreamEOF"
.LASF113:
	.string	"keepInputFiles"
.LASF90:
	.string	"streamNo"
.LASF109:
	.string	"outOfMemory"
.LASF97:
	.string	"closeok"
.LASF115:
	.string	"deleteOutputOnInterrupt"
.LASF45:
	.string	"_pos"
.LASF23:
	.string	"_IO_save_end"
.LASF88:
	.string	"nbytes_out_d"
.LASF48:
	.string	"float"
.LASF87:
	.string	"nbytes_in_d"
.LASF125:
	.string	"srcMode"
.LASF61:
	.string	"base"
.LASF117:
	.string	"testFailsExist"
.LASF47:
	.string	"long long unsigned int"
.LASF137:
	.string	"compressStream"
.LASF91:
	.string	"obuf"
.LASF84:
	.string	"buf_nout"
.LASF22:
	.string	"_IO_backup_base"
.LASF33:
	.string	"_offset"
.LASF108:
	.string	"mySIGSEGVorSIGBUScatcher"
.LASF26:
	.string	"_fileno"
.LASF59:
	.string	"lo32"
.LASF77:
	.string	"nbytes_out_lo32"
.LASF102:
	.string	"cleanUpAndFail"
.LASF7:
	.string	"size_t"
.LASF80:
	.string	"bzerr_dummy"
.LASF75:
	.string	"nbytes_in_lo32"
.LASF15:
	.string	"_IO_read_base"
.LASF138:
	.string	"uncompressStream"
.LASF56:
	.string	"UInt32"
.LASF43:
	.string	"_next"
.LASF81:
	.string	"errhandler_io"
.LASF107:
	.string	"mySignalCatcher"
.LASF74:
	.string	"nIbuf"
.LASF62:
	.string	"uInt64_to_double"
.LASF55:
	.string	"Int32"
.LASF11:
	.string	"char"
.LASF39:
	.string	"_mode"
.LASF42:
	.string	"_IO_marker"
.LASF13:
	.string	"_IO_read_ptr"
.LASF127:
	.string	"inName"
.LASF51:
	.string	"BZFILE"
.LASF57:
	.string	"IntNative"
.LASF128:
	.string	"outName"
.LASF67:
	.string	"outbuf"
.LASF133:
	.string	"workFactor"
.LASF95:
	.string	"unusedTmp"
.LASF16:
	.string	"_IO_write_base"
.LASF46:
	.string	"long long int"
.LASF103:
	.string	"panic"
.LASF21:
	.string	"_IO_save_base"
.LASF131:
	.string	"progNameReally"
.LASF112:
	.string	"verbosity"
.LASF58:
	.string	"UInt64"
.LASF118:
	.string	"unzFailsExist"
.LASF94:
	.string	"unusedTmpV"
.LASF78:
	.string	"nbytes_out_hi32"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF96:
	.string	"trycat"
.LASF72:
	.string	"zStream"
.LASF114:
	.string	"smallMode"
.LASF30:
	.string	"_vtable_offset"
.LASF106:
	.string	"ioError"
.LASF122:
	.string	"blockSize100k"
.LASF60:
	.string	"hi32"
.LASF98:
	.string	"testStream"
.LASF70:
	.string	"myfeof"
.LASF116:
	.string	"forceOverwrite"
.LASF126:
	.string	"longestFileName"
.LASF120:
	.string	"numFileNames"
.LASF63:
	.string	"uInt64_isZero"
.LASF69:
	.string	"n_copy"
.LASF134:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF130:
	.string	"progName"
.LASF136:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF54:
	.string	"UChar"
.LASF99:
	.string	"setExit"
.LASF85:
	.string	"nbytes_in"
.LASF121:
	.string	"numFilesProcessed"
.LASF65:
	.string	"uInt64_from_UInt32s"
.LASF124:
	.string	"opMode"
.LASF86:
	.string	"nbytes_out"
.LASF19:
	.string	"_IO_buf_base"
.LASF76:
	.string	"nbytes_in_hi32"
.LASF32:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF0:
	.string	"long unsigned int"
.LASF139:
	.string	"retVal"
.LASF28:
	.string	"_old_offset"
.LASF73:
	.string	"ibuf"
.LASF41:
	.string	"_IO_FILE"
.LASF92:
	.string	"unused"
.LASF83:
	.string	"buf_nin"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"nUnused"
.LASF79:
	.string	"bzerr"
.LASF44:
	.string	"_sbuf"
.LASF17:
	.string	"_IO_write_ptr"
.LASF110:
	.string	"configError"
.LASF100:
	.string	"cadvise"
.LASF129:
	.string	"tmpName"
.LASF8:
	.string	"__off_t"
.LASF89:
	.string	"nread"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF123:
	.string	"exitValue"
.LASF49:
	.string	"double"
.LASF101:
	.string	"showFileNames"
.LASF82:
	.string	"errhandler"
.LASF52:
	.string	"Char"
.LASF104:
	.string	"crcError"
.LASF25:
	.string	"_chain"
.LASF119:
	.string	"noisy"
.LASF27:
	.string	"_flags2"
.LASF29:
	.string	"_cur_column"
.LASF68:
	.string	"nBuf"
.LASF9:
	.string	"__off64_t"
.LASF40:
	.string	"_unused2"
.LASF135:
	.string	"bzip2.c"
.LASF71:
	.string	"stream"
.LASF64:
	.string	"uInt64_qrm10"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
