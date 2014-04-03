	.file	"file.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 file.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC0:
	.string	"file.c"
	.text
	.globl	FileDirname
	.type	FileDirname, @function
FileDirname:
.LFB2:
	.file 1 "file.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	.loc 1 71 0
	movq	-40(%rbp), %rax	# file, tmp71
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	strrchr	#
	movq	%rax, -16(%rbp)	# tmp72, lastslash
	.loc 1 72 0
	cmpq	$0, -16(%rbp)	#, lastslash
	je	.L2	#,
	.loc 1 72 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# lastslash, lastslash.1
	movq	-40(%rbp), %rax	# file, file.2
	subq	%rax, %rdx	# file.2, D.5707
	movq	%rdx, %rax	# D.5707, D.5707
	jmp	.L3	#
.L2:
	.loc 1 72 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L3:
	.loc 1 72 0 discriminator 3
	movl	%eax, -20(%rbp)	# iftmp.0, len
	.loc 1 73 0 is_stmt 1 discriminator 3
	movl	-20(%rbp), %eax	# len, tmp73
	addl	$2, %eax	#, D.5708
	cltq
	movq	%rax, %rdx	# D.5709,
	movl	$73, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp74, dirname
	.loc 1 74 0 discriminator 3
	cmpl	$0, -20(%rbp)	#, len
	jle	.L4	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# len, tmp75
	movslq	%eax, %rdx	# tmp75, D.5709
	movq	-40(%rbp), %rcx	# file, tmp76
	movq	-8(%rbp), %rax	# dirname, tmp77
	movq	%rcx, %rsi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	strncpy	#
	jmp	.L5	#
.L4:
	.loc 1 75 0 is_stmt 1
	movq	-40(%rbp), %rax	# file, tmp78
	movzbl	(%rax), %eax	# *file_3(D), D.5710
	cmpb	$47, %al	#, D.5710
	je	.L6	#,
	.loc 1 75 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dirname, tmp79
	movb	$46, (%rax)	#, *dirname_13
	movl	$1, -20(%rbp)	#, len
	jmp	.L5	#
.L6:
	.loc 1 76 0 is_stmt 1
	movq	-8(%rbp), %rax	# dirname, tmp80
	movb	$47, (%rax)	#, *dirname_13
	movl	$1, -20(%rbp)	#, len
.L5:
	.loc 1 77 0
	movl	-20(%rbp), %eax	# len, tmp81
	movslq	%eax, %rdx	# tmp81, D.5711
	movq	-8(%rbp), %rax	# dirname, tmp82
	addq	%rdx, %rax	# D.5711, D.5712
	movb	$0, (%rax)	#, *_19
	.loc 1 78 0
	movq	-8(%rbp), %rax	# dirname, D.5712
	.loc 1 79 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	FileDirname, .-FileDirname
	.globl	FileTail
	.type	FileTail, @function
FileTail:
.LFB3:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file, file
	movl	%esi, -44(%rbp)	# noextension, noextension
	.loc 1 104 0
	movq	-40(%rbp), %rax	# file, tmp64
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	strrchr	#
	movq	%rax, -24(%rbp)	# tmp65, lastslash
	.loc 1 105 0
	movq	-40(%rbp), %rax	# file, tmp66
	movq	%rax, %rdi	# tmp66,
	call	strlen	#
	addq	$1, %rax	#, D.5714
	movq	%rax, %rdx	# D.5714,
	movl	$105, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp67, tail
	.loc 1 106 0
	cmpq	$0, -24(%rbp)	#, lastslash
	jne	.L9	#,
	.loc 1 106 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# file, tmp68
	movq	-16(%rbp), %rax	# tail, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	strcpy	#
	jmp	.L10	#
.L9:
	.loc 1 107 0 is_stmt 1
	movq	-24(%rbp), %rax	# lastslash, tmp70
	leaq	1(%rax), %rdx	#, D.5715
	movq	-16(%rbp), %rax	# tail, tmp71
	movq	%rdx, %rsi	# D.5715,
	movq	%rax, %rdi	# tmp71,
	call	strcpy	#
.L10:
	.loc 1 109 0
	cmpl	$0, -44(%rbp)	#, noextension
	je	.L11	#,
	.loc 1 110 0
	movq	-16(%rbp), %rax	# tail, tmp72
	movl	$46, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	strrchr	#
	movq	%rax, -8(%rbp)	# tmp73, lastdot
	cmpq	$0, -8(%rbp)	#, lastdot
	je	.L11	#,
	.loc 1 111 0
	movq	-8(%rbp), %rax	# lastdot, tmp74
	movb	$0, (%rax)	#, *lastdot_8
.L11:
	.loc 1 114 0
	movq	-16(%rbp), %rax	# tail, D.5715
	.loc 1 115 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	FileTail, .-FileTail
	.globl	FileSameDirectory
	.type	FileSameDirectory, @function
FileSameDirectory:
.LFB4:
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# file1, file1
	movq	%rsi, -48(%rbp)	# file2, file2
	.loc 1 144 0
	movl	$1, -28(%rbp)	#, seems_ok
	.loc 1 146 0
	movq	-40(%rbp), %rax	# file1, tmp63
	movq	%rax, %rdi	# tmp63,
	call	FileDirname	#
	movq	%rax, -16(%rbp)	# tmp64, path
	.loc 1 147 0
	movq	-48(%rbp), %rax	# file2, tmp65
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	FileTail	#
	movq	%rax, -8(%rbp)	# tmp66, tail
	.loc 1 148 0
	movq	-8(%rbp), %rdx	# tail, tmp67
	movq	-48(%rbp), %rax	# file2, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	strcmp	#
	testl	%eax, %eax	# D.5716
	je	.L14	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	movl	$0, -28(%rbp)	#, seems_ok
.L14:
	.loc 1 149 0 is_stmt 1
	movq	-8(%rbp), %rdx	# tail, tmp69
	movq	-16(%rbp), %rax	# path, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	FileConcat	#
	movq	%rax, -24(%rbp)	# tmp71, result
	.loc 1 150 0
	cmpl	$0, -28(%rbp)	#, seems_ok
	jne	.L15	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# file2, tmp72
	movq	-24(%rbp), %rax	# result, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	strcmp	#
	testl	%eax, %eax	# D.5716
	je	.L15	#,
	.loc 1 151 0 is_stmt 1
	movq	-24(%rbp), %rax	# result, tmp74
	movq	%rax, %rdi	# tmp74,
	call	free	#
	movq	$0, -24(%rbp)	#, result
.L15:
	.loc 1 153 0
	movq	-16(%rbp), %rax	# path, tmp75
	movq	%rax, %rdi	# tmp75,
	call	free	#
	.loc 1 154 0
	movq	-8(%rbp), %rax	# tail, tmp76
	movq	%rax, %rdi	# tmp76,
	call	free	#
	.loc 1 155 0
	movq	-24(%rbp), %rax	# result, D.5717
	.loc 1 156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FileSameDirectory, .-FileSameDirectory
	.section	.rodata
.LC1:
	.string	"%s%c%s"
	.text
	.globl	FileConcat
	.type	FileConcat, @function
FileConcat:
.LFB5:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# dir, dir
	movq	%rsi, -48(%rbp)	# file, file
	.loc 1 170 0
	movq	-40(%rbp), %rax	# dir, tmp66
	movq	%rax, %rdi	# tmp66,
	call	strlen	#
	movq	%rax, %rbx	#, D.5718
	movq	-48(%rbp), %rax	# file, tmp67
	movq	%rax, %rdi	# tmp67,
	call	strlen	#
	addq	%rbx, %rax	# D.5718, D.5718
	addq	$2, %rax	#, D.5718
	movq	%rax, %rdx	# D.5718,
	movl	$170, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp68, full
	.loc 1 171 0
	movq	-48(%rbp), %rax	# file, tmp69
	movzbl	(%rax), %eax	# *file_3(D), D.5719
	cmpb	$47, %al	#, D.5719
	jne	.L18	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# file, tmp70
	movq	-24(%rbp), %rax	# full, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	strcpy	#
	jmp	.L19	#
.L18:
	.loc 1 172 0 is_stmt 1
	movq	-48(%rbp), %rcx	# file, tmp72
	movq	-40(%rbp), %rdx	# dir, tmp73
	movq	-24(%rbp), %rax	# full, tmp74
	movq	%rcx, %r8	# tmp72,
	movl	$47, %ecx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp74,
	movl	$0, %eax	#,
	call	sprintf	#
.L19:
	.loc 1 173 0
	movq	-24(%rbp), %rax	# full, D.5720
	.loc 1 174 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	FileConcat, .-FileConcat
	.section	.rodata
.LC2:
	.string	"%s.%s"
	.text
	.globl	FileAddSuffix
	.type	FileAddSuffix, @function
FileAddSuffix:
.LFB6:
	.loc 1 188 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# filename, filename
	movq	%rsi, -48(%rbp)	# sfx, sfx
	.loc 1 190 0
	movq	-40(%rbp), %rax	# filename, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	movq	%rax, %rbx	#, D.5722
	movq	-48(%rbp), %rax	# sfx, tmp66
	movq	%rax, %rdi	# tmp66,
	call	strlen	#
	addq	%rbx, %rax	# D.5722, D.5722
	addq	$2, %rax	#, D.5722
	movq	%rax, %rdx	# D.5722,
	movl	$190, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp67, new
	.loc 1 191 0
	movq	-48(%rbp), %rcx	# sfx, tmp68
	movq	-40(%rbp), %rdx	# filename, tmp69
	movq	-24(%rbp), %rax	# new, tmp70
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 192 0
	movq	-24(%rbp), %rax	# new, D.5723
	.loc 1 193 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	FileAddSuffix, .-FileAddSuffix
	.section	.rodata
.LC3:
	.string	":"
.LC4:
	.string	"r"
	.text
	.globl	EnvFileOpen
	.type	EnvFileOpen, @function
EnvFileOpen:
.LFB7:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1112, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1096(%rbp)	# fname, fname
	movq	%rsi, -1104(%rbp)	# env, env
	movq	%rdx, -1112(%rbp)	# ret_dir, ret_dir
	.loc 1 231 0
	movq	%fs:40, %rax	#, tmp86
	movq	%rax, -24(%rbp)	# tmp86, D.5729
	xorl	%eax, %eax	# tmp86
	.loc 1 237 0
	cmpq	$0, -1104(%rbp)	#, env
	jne	.L24	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5725
	jmp	.L33	#
.L24:
	.loc 1 238 0 is_stmt 1
	movq	-1104(%rbp), %rax	# env, tmp69
	movq	%rax, %rdi	# tmp69,
	call	getenv	#
	movq	%rax, %rdi	# D.5726,
	call	Strdup	#
	movq	%rax, -1064(%rbp)	# tmp70, path
	cmpq	$0, -1064(%rbp)	#, path
	jne	.L26	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5725
	jmp	.L33	#
.L26:
	.loc 1 240 0 is_stmt 1
	movq	$0, -1080(%rbp)	#, fp
	.loc 1 241 0
	movq	-1064(%rbp), %rax	# path, tmp71
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	strtok	#
	movq	%rax, -1072(%rbp)	# tmp72, s
	.loc 1 242 0
	jmp	.L27	#
.L31:
	.loc 1 244 0
	movq	-1096(%rbp), %rax	# fname, tmp73
	movq	%rax, %rdi	# tmp73,
	call	strlen	#
	movl	%eax, %ebx	# D.5727, D.5728
	movq	-1072(%rbp), %rax	# s, tmp74
	movq	%rax, %rdi	# tmp74,
	call	strlen	#
	addl	%ebx, %eax	# D.5728, D.5728
	addl	$2, %eax	#, D.5728
	cmpl	$1024, %eax	#, D.5728
	jle	.L28	#,
	.loc 1 245 0
	movq	-1064(%rbp), %rax	# path, tmp75
	movq	%rax, %rdi	# tmp75,
	call	free	#
	movl	$0, %eax	#, D.5725
	jmp	.L33	#
.L28:
	.loc 1 246 0
	movq	-1096(%rbp), %rcx	# fname, tmp76
	movq	-1072(%rbp), %rdx	# s, tmp77
	leaq	-1056(%rbp), %rax	#, tmp78
	movq	%rcx, %r8	# tmp76,
	movl	$47, %ecx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 247 0
	leaq	-1056(%rbp), %rax	#, tmp79
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	fopen	#
	movq	%rax, -1080(%rbp)	# tmp80, fp
	cmpq	$0, -1080(%rbp)	#, fp
	je	.L29	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	jmp	.L30	#
.L29:
	.loc 1 248 0 is_stmt 1
	movl	$.LC3, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -1072(%rbp)	# tmp81, s
.L27:
	.loc 1 242 0 discriminator 1
	cmpq	$0, -1072(%rbp)	#, s
	jne	.L31	#,
.L30:
	.loc 1 253 0
	cmpq	$0, -1112(%rbp)	#, ret_dir
	je	.L32	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movq	-1072(%rbp), %rax	# s, tmp82
	movq	%rax, %rdi	# tmp82,
	call	Strdup	#
	movq	-1112(%rbp), %rdx	# ret_dir, tmp83
	movq	%rax, (%rdx)	# D.5726, *ret_dir_22(D)
.L32:
	.loc 1 254 0 is_stmt 1
	movq	-1064(%rbp), %rax	# path, tmp84
	movq	%rax, %rdi	# tmp84,
	call	free	#
	.loc 1 256 0
	movq	-1080(%rbp), %rax	# fp, D.5725
.L33:
	.loc 1 257 0
	movq	-24(%rbp), %rbx	# D.5729, tmp87
	xorq	%fs:40, %rbx	#, tmp87
	je	.L34	#,
	call	__stack_chk_fail	#
.L34:
	addq	$1112, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	EnvFileOpen, .-EnvFileOpen
	.globl	FileExists
	.type	FileExists, @function
FileExists:
.LFB8:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	.loc 1 270 0
	movq	-24(%rbp), %rax	# filename, tmp61
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp62, fp
	cmpq	$0, -8(%rbp)	#, fp
	je	.L36	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fp, tmp63
	movq	%rax, %rdi	# tmp63,
	call	fclose	#
	movl	$1, %eax	#, D.5734
	jmp	.L37	#
.L36:
	.loc 1 271 0 is_stmt 1
	movl	$0, %eax	#, D.5734
.L37:
	.loc 1 272 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	FileExists, .-FileExists
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x55c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x1
	.long	.LASF73
	.long	.LASF74
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
	.long	.LASF75
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
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0x41
	.long	0x8f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x314
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0x41
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x43
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.string	"len"
	.byte	0x1
	.byte	0x45
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x62
	.long	0x8f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x37c
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0x62
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.byte	0x62
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x64
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.byte	0x65
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF58
	.byte	0x1
	.byte	0x66
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x1
	.byte	0x8b
	.long	0x8f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.byte	0x8b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.byte	0x8b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0x8d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.long	.LASF57
	.byte	0x1
	.byte	0x8e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x8f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x90
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0xa6
	.long	0x8f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e
	.uleb128 0x11
	.string	"dir"
	.byte	0x1
	.byte	0xa6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.long	.LASF55
	.byte	0x1
	.byte	0xa6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0xa8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0xbb
	.long	0x8f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.byte	0xbb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"sfx"
	.byte	0x1
	.byte	0xbb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x10
	.string	"new"
	.byte	0x1
	.byte	0xbd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x1
	.byte	0xe6
	.long	0x2ae
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x512
	.uleb128 0xe
	.long	.LASF70
	.byte	0x1
	.byte	0xe6
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x11
	.string	"env"
	.byte	0x1
	.byte	0xe6
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.byte	0xe6
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x10
	.string	"fp"
	.byte	0x1
	.byte	0xe8
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0xf
	.long	.LASF62
	.byte	0x1
	.byte	0xe9
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0xea
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0xeb
	.long	0x512
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x523
	.uleb128 0x12
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.value	0x10b
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF68
	.byte	0x1
	.value	0x10b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.value	0x10d
	.long	0x2ae
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x14
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
.LASF56:
	.string	"noextension"
.LASF63:
	.string	"result"
.LASF29:
	.string	"_old_offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF19:
	.string	"_IO_write_end"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF52:
	.string	"lastslash"
.LASF18:
	.string	"_IO_write_ptr"
.LASF68:
	.string	"filename"
.LASF20:
	.string	"_IO_buf_base"
.LASF55:
	.string	"file"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF60:
	.string	"file1"
.LASF61:
	.string	"file2"
.LASF69:
	.string	"EnvFileOpen"
.LASF51:
	.string	"dirname"
.LASF49:
	.string	"float"
.LASF74:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF47:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"FileTail"
.LASF71:
	.string	"ret_dir"
.LASF64:
	.string	"seems_ok"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF57:
	.string	"tail"
.LASF76:
	.string	"FileExists"
.LASF58:
	.string	"lastdot"
.LASF1:
	.string	"unsigned char"
.LASF72:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"long long unsigned int"
.LASF59:
	.string	"FileSameDirectory"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF53:
	.string	"FileDirname"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF70:
	.string	"fname"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF67:
	.string	"FileAddSuffix"
.LASF11:
	.string	"char"
.LASF44:
	.string	"_next"
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
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF50:
	.string	"double"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF26:
	.string	"_chain"
.LASF66:
	.string	"full"
.LASF23:
	.string	"_IO_backup_base"
.LASF62:
	.string	"path"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF73:
	.string	"file.c"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF13:
	.string	"_flags"
.LASF75:
	.string	"_IO_lock_t"
.LASF65:
	.string	"FileConcat"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
