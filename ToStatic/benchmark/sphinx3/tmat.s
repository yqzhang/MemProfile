	.file	"tmat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# tmat.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.string	"TMAT %d = %d x %d\n"
.LC1:
	.string	" %12d"
	.text
	.globl	tmat_dump
	.type	tmat_dump, @function
tmat_dump:
.LFB2:
	.file 1 "tmat.c"
	.loc 1 72 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# tmat, tmat
	movq	%rsi, -32(%rbp)	# fp, fp
	.loc 1 75 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L2	#
.L7:
	.loc 1 76 0
	movq	-24(%rbp), %rax	# tmat, tmp78
	movl	12(%rax), %eax	# tmat_5(D)->n_state, D.5404
	leal	1(%rax), %esi	#, D.5404
	movq	-24(%rbp), %rax	# tmat, tmp79
	movl	12(%rax), %ecx	# tmat_5(D)->n_state, D.5404
	movl	-12(%rbp), %edx	# i, tmp80
	movq	-32(%rbp), %rax	# fp, tmp81
	movl	%esi, %r8d	# D.5404,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 77 0
	movl	$0, -8(%rbp)	#, src
	jmp	.L3	#
.L6:
	.loc 1 78 0
	movl	$0, -4(%rbp)	#, dst
	jmp	.L4	#
.L5:
	.loc 1 79 0 discriminator 2
	movq	-24(%rbp), %rax	# tmat, tmp82
	movq	(%rax), %rax	# tmat_5(D)->tp, D.5405
	movl	-12(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.5406
	salq	$3, %rdx	#, D.5406
	addq	%rdx, %rax	# D.5406, D.5405
	movq	(%rax), %rax	# *_18, D.5407
	movl	-8(%rbp), %edx	# src, tmp84
	movslq	%edx, %rdx	# tmp84, D.5406
	salq	$3, %rdx	#, D.5406
	addq	%rdx, %rax	# D.5406, D.5407
	movq	(%rax), %rax	# *_22, D.5408
	movl	-4(%rbp), %edx	# dst, tmp85
	movslq	%edx, %rdx	# tmp85, D.5406
	salq	$2, %rdx	#, D.5406
	addq	%rdx, %rax	# D.5406, D.5408
	movl	(%rax), %edx	# *_26, D.5404
	movq	-32(%rbp), %rax	# fp, tmp86
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 78 0 discriminator 2
	addl	$1, -4(%rbp)	#, dst
.L4:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp87
	movl	12(%rax), %eax	# tmat_5(D)->n_state, D.5404
	cmpl	-4(%rbp), %eax	# dst, D.5404
	jge	.L5	#,
	.loc 1 80 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp88
	movq	%rax, %rsi	# tmp88,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 77 0
	addl	$1, -8(%rbp)	#, src
.L3:
	.loc 1 77 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp89
	movl	12(%rax), %eax	# tmat_5(D)->n_state, D.5404
	cmpl	-8(%rbp), %eax	# src, D.5404
	jg	.L6	#,
	.loc 1 82 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp90
	movq	%rax, %rsi	# tmp90,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 75 0
	addl	$1, -12(%rbp)	#, i
.L2:
	.loc 1 75 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp91
	movl	8(%rax), %eax	# tmat_5(D)->n_tmat, D.5404
	cmpl	-12(%rbp), %eax	# i, D.5404
	jg	.L7	#,
	.loc 1 84 0 is_stmt 1
	movq	-32(%rbp), %rax	# fp, tmp92
	movq	%rax, %rdi	# tmp92,
	call	fflush	#
	.loc 1 85 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	tmat_dump, .-tmat_dump
	.globl	tmat_chk_uppertri
	.type	tmat_chk_uppertri, @function
tmat_chk_uppertri:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# tmat, tmat
	.loc 1 97 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L9	#
.L16:
	.loc 1 98 0
	movl	$0, -4(%rbp)	#, dst
	jmp	.L10	#
.L15:
	.loc 1 99 0
	movl	-4(%rbp), %eax	# dst, tmp80
	addl	$1, %eax	#, tmp79
	movl	%eax, -8(%rbp)	# tmp79, src
	jmp	.L11	#
.L14:
	.loc 1 100 0
	movq	-24(%rbp), %rax	# tmat, tmp81
	movq	(%rax), %rax	# tmat_6(D)->tp, D.5413
	movl	-12(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.5414
	salq	$3, %rdx	#, D.5414
	addq	%rdx, %rax	# D.5414, D.5413
	movq	(%rax), %rax	# *_15, D.5415
	movl	-8(%rbp), %edx	# src, tmp83
	movslq	%edx, %rdx	# tmp83, D.5414
	salq	$3, %rdx	#, D.5414
	addq	%rdx, %rax	# D.5414, D.5415
	movq	(%rax), %rax	# *_19, D.5416
	movl	-4(%rbp), %edx	# dst, tmp84
	movslq	%edx, %rdx	# tmp84, D.5414
	salq	$2, %rdx	#, D.5414
	addq	%rdx, %rax	# D.5414, D.5416
	movl	(%rax), %eax	# *_23, D.5412
	cmpl	$-939524095, %eax	#, D.5412
	jl	.L12	#,
	.loc 1 101 0
	movl	$-1, %eax	#, D.5411
	jmp	.L13	#
.L12:
	.loc 1 99 0
	addl	$1, -8(%rbp)	#, src
.L11:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp85
	movl	12(%rax), %eax	# tmat_6(D)->n_state, D.5412
	cmpl	-8(%rbp), %eax	# src, D.5412
	jg	.L14	#,
	.loc 1 98 0 is_stmt 1
	addl	$1, -4(%rbp)	#, dst
.L10:
	.loc 1 98 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp86
	movl	12(%rax), %eax	# tmat_6(D)->n_state, D.5412
	cmpl	-4(%rbp), %eax	# dst, D.5412
	jg	.L15	#,
	.loc 1 97 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L9:
	.loc 1 97 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp87
	movl	8(%rax), %eax	# tmat_6(D)->n_tmat, D.5412
	cmpl	-12(%rbp), %eax	# i, D.5412
	jg	.L16	#,
	.loc 1 104 0 is_stmt 1
	movl	$0, %eax	#, D.5411
.L13:
	.loc 1 105 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	tmat_chk_uppertri, .-tmat_chk_uppertri
	.globl	tmat_chk_1skip
	.type	tmat_chk_1skip, @function
tmat_chk_1skip:
.LFB4:
	.loc 1 109 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# tmat, tmat
	.loc 1 112 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L18	#
.L25:
	.loc 1 113 0
	movl	$0, -8(%rbp)	#, src
	jmp	.L19	#
.L24:
	.loc 1 114 0
	movl	-8(%rbp), %eax	# src, tmp80
	addl	$3, %eax	#, tmp79
	movl	%eax, -4(%rbp)	# tmp79, dst
	jmp	.L20	#
.L23:
	.loc 1 115 0
	movq	-24(%rbp), %rax	# tmat, tmp81
	movq	(%rax), %rax	# tmat_6(D)->tp, D.5419
	movl	-12(%rbp), %edx	# i, tmp82
	movslq	%edx, %rdx	# tmp82, D.5420
	salq	$3, %rdx	#, D.5420
	addq	%rdx, %rax	# D.5420, D.5419
	movq	(%rax), %rax	# *_15, D.5421
	movl	-8(%rbp), %edx	# src, tmp83
	movslq	%edx, %rdx	# tmp83, D.5420
	salq	$3, %rdx	#, D.5420
	addq	%rdx, %rax	# D.5420, D.5421
	movq	(%rax), %rax	# *_19, D.5422
	movl	-4(%rbp), %edx	# dst, tmp84
	movslq	%edx, %rdx	# tmp84, D.5420
	salq	$2, %rdx	#, D.5420
	addq	%rdx, %rax	# D.5420, D.5422
	movl	(%rax), %eax	# *_23, D.5418
	cmpl	$-939524095, %eax	#, D.5418
	jl	.L21	#,
	.loc 1 116 0
	movl	$-1, %eax	#, D.5417
	jmp	.L22	#
.L21:
	.loc 1 114 0
	addl	$1, -4(%rbp)	#, dst
.L20:
	.loc 1 114 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp85
	movl	12(%rax), %eax	# tmat_6(D)->n_state, D.5418
	cmpl	-4(%rbp), %eax	# dst, D.5418
	jge	.L23	#,
	.loc 1 113 0 is_stmt 1
	addl	$1, -8(%rbp)	#, src
.L19:
	.loc 1 113 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp86
	movl	12(%rax), %eax	# tmat_6(D)->n_state, D.5418
	cmpl	-8(%rbp), %eax	# src, D.5418
	jg	.L24	#,
	.loc 1 112 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L18:
	.loc 1 112 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# tmat, tmp87
	movl	8(%rax), %eax	# tmat_6(D)->n_tmat, D.5418
	cmpl	-12(%rbp), %eax	# i, D.5418
	jg	.L25	#,
	.loc 1 119 0 is_stmt 1
	movl	$0, %eax	#, D.5417
.L22:
	.loc 1 120 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	tmat_chk_1skip, .-tmat_chk_1skip
	.section	.rodata
.LC2:
	.string	"INFO"
.LC3:
	.string	"tmat.c"
	.align 8
.LC4:
	.string	"Reading HMM transition probability matrices: %s\n"
.LC5:
	.string	"rb"
.LC6:
	.string	"SYSTEM_ERROR"
.LC7:
	.string	"fopen(%s,rb) failed\n"
.LC8:
	.string	"FATAL_ERROR"
.LC9:
	.string	"bio_readhdr(%s) failed\n"
.LC10:
	.string	"version"
.LC11:
	.string	"1.0"
.LC12:
	.string	"WARNING"
	.align 8
.LC13:
	.string	"Version mismatch(%s): %s, expecting %s\n"
.LC14:
	.string	"chksum0"
	.align 8
.LC15:
	.string	"bio_fread(%s) (arraysize) failed\n"
	.align 8
.LC16:
	.string	"%s: #tmat (%d) exceeds limit (%d)\n"
	.align 8
.LC17:
	.string	"%s: #from-states(%d) != #to-states(%d)-1\n"
	.align 8
.LC18:
	.string	"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\n"
.LC19:
	.string	"fread(%s) (arraydata) failed\n"
.LC21:
	.string	"ERROR"
	.align 8
.LC22:
	.string	"Non-empty file beyond end of data\n"
	.align 8
.LC23:
	.string	"Read %d transition matrices of size %dx%d\n"
.LC24:
	.string	"Tmat not upper triangular\n"
	.text
	.globl	tmat_init
	.type	tmat_init, @function
tmat_init:
.LFB5:
	.loc 1 124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# file_name, file_name
	movsd	%xmm0, -112(%rbp)	# tpfloor, tpfloor
	.loc 1 135 0
	movl	$.LC2, %edx	#,
	movl	$135, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	movq	-104(%rbp), %rax	# file_name, tmp193
	movq	%rax, %rsi	# tmp193,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 137 0
	movl	$137, %ecx	#,
	movl	$.LC3, %edx	#,
	movl	$16, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp194, t
	.loc 1 139 0
	movq	-104(%rbp), %rax	# file_name, tmp195
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	fopen	#
	movq	%rax, -32(%rbp)	# tmp196, fp
	cmpq	$0, -32(%rbp)	#, fp
	jne	.L27	#,
	.loc 1 140 0
	movl	$.LC6, %edx	#,
	movl	$140, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-104(%rbp), %rax	# file_name, tmp197
	movq	%rax, %rsi	# tmp197,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__fatal_sys_error	#
.L27:
	.loc 1 143 0
	leaq	-84(%rbp), %rcx	#, tmp198
	leaq	-48(%rbp), %rdx	#, tmp199
	leaq	-56(%rbp), %rsi	#, tmp200
	movq	-32(%rbp), %rax	# fp, tmp201
	movq	%rax, %rdi	# tmp201,
	call	bio_readhdr	#
	testl	%eax, %eax	# D.5423
	jns	.L28	#,
	.loc 1 144 0
	movl	$.LC8, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-104(%rbp), %rax	# file_name, tmp202
	movq	%rax, %rsi	# tmp202,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L28:
	.loc 1 147 0
	movl	$0, -72(%rbp)	#, chksum_present
	.loc 1 148 0
	movl	$0, -76(%rbp)	#, i
	jmp	.L29	#
.L33:
	.loc 1 149 0
	movq	-56(%rbp), %rax	# argname, argname.0
	movl	-76(%rbp), %edx	# i, i.1
	movslq	%edx, %rdx	# i.1, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5425
	movq	(%rax), %rax	# *_21, D.5426
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.5426,
	call	strcmp	#
	testl	%eax, %eax	# D.5423
	jne	.L30	#,
	.loc 1 150 0
	movq	-48(%rbp), %rax	# argval, argval.2
	movl	-76(%rbp), %edx	# i, i.3
	movslq	%edx, %rdx	# i.3, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5425
	movq	(%rax), %rax	# *_28, D.5426
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# D.5426,
	call	strcmp	#
	testl	%eax, %eax	# D.5423
	je	.L32	#,
	.loc 1 151 0
	movl	$.LC12, %edx	#,
	movl	$151, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	.loc 1 152 0
	movq	-48(%rbp), %rax	# argval, argval.4
	movl	-76(%rbp), %edx	# i, i.5
	movslq	%edx, %rdx	# i.5, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5425
	.loc 1 151 0
	movq	(%rax), %rdx	# *_35, D.5426
	movq	-104(%rbp), %rax	# file_name, tmp203
	movl	$.LC11, %ecx	#,
	movq	%rax, %rsi	# tmp203,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L32	#
.L30:
	.loc 1 153 0
	movq	-56(%rbp), %rax	# argname, argname.6
	movl	-76(%rbp), %edx	# i, i.7
	movslq	%edx, %rdx	# i.7, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5425
	movq	(%rax), %rax	# *_41, D.5426
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# D.5426,
	call	strcmp	#
	testl	%eax, %eax	# D.5423
	jne	.L32	#,
	.loc 1 154 0
	movl	$1, -72(%rbp)	#, chksum_present
.L32:
	.loc 1 148 0
	movl	-76(%rbp), %eax	# i, i.8
	addl	$1, %eax	#, i.9
	movl	%eax, -76(%rbp)	# i.9, i
.L29:
	.loc 1 148 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# argname, argname.10
	movl	-76(%rbp), %edx	# i, i.11
	movslq	%edx, %rdx	# i.11, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5425
	movq	(%rax), %rax	# *_15, D.5426
	testq	%rax, %rax	# D.5426
	jne	.L33	#,
	.loc 1 157 0 is_stmt 1
	movq	-48(%rbp), %rdx	# argval, argval.12
	movq	-56(%rbp), %rax	# argname, argname.13
	movq	%rdx, %rsi	# argval.12,
	movq	%rax, %rdi	# argname.13,
	call	bio_hdrarg_free	#
	.loc 1 158 0
	movq	$0, -48(%rbp)	#, argval
	movq	-48(%rbp), %rax	# argval, argval.14
	movq	%rax, -56(%rbp)	# argval.14, argname
	.loc 1 160 0
	movl	$0, -80(%rbp)	#, chksum
	.loc 1 163 0
	movl	-84(%rbp), %edx	# byteswap, byteswap.15
	movq	-40(%rbp), %rax	# t, tmp204
	leaq	8(%rax), %rdi	#, D.5427
	leaq	-80(%rbp), %rcx	#, tmp205
	movq	-32(%rbp), %rax	# fp, tmp206
	movq	%rcx, %r9	# tmp205,
	movl	%edx, %r8d	# byteswap.15,
	movq	%rax, %rcx	# tmp206,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.5423
	jne	.L34	#,
	.loc 1 164 0 discriminator 1
	movl	-84(%rbp), %ecx	# byteswap, byteswap.16
	leaq	-80(%rbp), %rsi	#, tmp207
	movq	-32(%rbp), %rdx	# fp, tmp208
	leaq	-92(%rbp), %rax	#, tmp209
	movq	%rsi, %r9	# tmp207,
	movl	%ecx, %r8d	# byteswap.16,
	movq	%rdx, %rcx	# tmp208,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp209,
	call	bio_fread	#
	.loc 1 163 0 discriminator 1
	cmpl	$1, %eax	#, D.5423
	jne	.L34	#,
	.loc 1 165 0
	movl	-84(%rbp), %ecx	# byteswap, byteswap.17
	leaq	-80(%rbp), %rsi	#, tmp210
	movq	-32(%rbp), %rdx	# fp, tmp211
	leaq	-88(%rbp), %rax	#, tmp212
	movq	%rsi, %r9	# tmp210,
	movl	%ecx, %r8d	# byteswap.17,
	movq	%rdx, %rcx	# tmp211,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp212,
	call	bio_fread	#
	.loc 1 164 0
	cmpl	$1, %eax	#, D.5423
	jne	.L34	#,
	.loc 1 166 0
	movl	-84(%rbp), %ecx	# byteswap, byteswap.18
	leaq	-80(%rbp), %rsi	#, tmp213
	movq	-32(%rbp), %rdx	# fp, tmp214
	leaq	-76(%rbp), %rax	#, tmp215
	movq	%rsi, %r9	# tmp213,
	movl	%ecx, %r8d	# byteswap.18,
	movq	%rdx, %rcx	# tmp214,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	bio_fread	#
	.loc 1 165 0
	cmpl	$1, %eax	#, D.5423
	je	.L35	#,
.L34:
	.loc 1 167 0
	movl	$.LC8, %edx	#,
	movl	$167, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-104(%rbp), %rax	# file_name, tmp216
	movq	%rax, %rsi	# tmp216,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L35:
	.loc 1 169 0
	movq	-40(%rbp), %rax	# t, tmp217
	movl	8(%rax), %eax	# t_7->n_tmat, D.5423
	cmpl	$2147483645, %eax	#, D.5423
	jle	.L36	#,
	.loc 1 170 0
	movl	$.LC8, %edx	#,
	movl	$170, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# t, tmp218
	movl	8(%rax), %edx	# t_7->n_tmat, D.5423
	movq	-104(%rbp), %rax	# file_name, tmp219
	movl	$2147483646, %ecx	#,
	movq	%rax, %rsi	# tmp219,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L36:
	.loc 1 171 0
	movl	-92(%rbp), %eax	# n_src, n_src.19
	leal	1(%rax), %edx	#, D.5423
	movl	-88(%rbp), %eax	# n_dst, n_dst.20
	cmpl	%eax, %edx	# n_dst.20, D.5423
	je	.L37	#,
	.loc 1 172 0
	movl	$.LC8, %edx	#,
	movl	$172, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-88(%rbp), %ecx	# n_dst, n_dst.21
	movl	-92(%rbp), %edx	# n_src, n_src.22
	movq	-104(%rbp), %rax	# file_name, tmp220
	movq	%rax, %rsi	# tmp220,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L37:
	.loc 1 173 0
	movl	-92(%rbp), %edx	# n_src, n_src.23
	movq	-40(%rbp), %rax	# t, tmp221
	movl	%edx, 12(%rax)	# n_src.23, t_7->n_state
	.loc 1 175 0
	movq	-40(%rbp), %rax	# t, tmp222
	movl	8(%rax), %edx	# t_7->n_tmat, D.5423
	movl	-92(%rbp), %eax	# n_src, n_src.24
	imull	%eax, %edx	# n_src.24, D.5423
	movl	-88(%rbp), %eax	# n_dst, n_dst.25
	imull	%eax, %edx	# n_dst.25, D.5423
	movl	-76(%rbp), %eax	# i, i.26
	cmpl	%eax, %edx	# i.26, D.5423
	je	.L38	#,
	.loc 1 176 0
	movl	$.LC8, %edx	#,
	movl	$176, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-88(%rbp), %edi	# n_dst, n_dst.27
	movl	-92(%rbp), %esi	# n_src, n_src.28
	movq	-40(%rbp), %rax	# t, tmp223
	movl	8(%rax), %ecx	# t_7->n_tmat, D.5423
	movl	-76(%rbp), %edx	# i, i.29
	movq	-104(%rbp), %rax	# file_name, tmp224
	movl	%edi, %r9d	# n_dst.27,
	movl	%esi, %r8d	# n_src.28,
	movq	%rax, %rsi	# tmp224,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L38:
	.loc 1 181 0
	movl	-88(%rbp), %edx	# n_dst, n_dst.30
	movl	-92(%rbp), %esi	# n_src, n_src.31
	movq	-40(%rbp), %rax	# t, tmp225
	movl	8(%rax), %eax	# t_7->n_tmat, D.5423
	movl	$181, %r9d	#,
	movl	$.LC3, %r8d	#,
	movl	$4, %ecx	#,
	movl	%eax, %edi	# D.5423,
	call	__ckd_calloc_3d__	#
	movq	-40(%rbp), %rdx	# t, tmp226
	movq	%rax, (%rdx)	# D.5428, t_7->tp
	.loc 1 184 0
	movl	-88(%rbp), %esi	# n_dst, n_dst.32
	movl	-92(%rbp), %eax	# n_src, n_src.33
	movl	$184, %r8d	#,
	movl	$.LC3, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %edi	# n_src.33,
	call	__ckd_calloc_2d__	#
	movq	%rax, -24(%rbp)	# tmp227, tp
	.loc 1 187 0
	movl	-92(%rbp), %edx	# n_src, n_src.34
	movl	-88(%rbp), %eax	# n_dst, n_dst.35
	imull	%edx, %eax	# n_src.34, tmp228
	movl	%eax, -60(%rbp)	# tmp228, tp_per_tmat
	.loc 1 188 0
	movl	$0, -76(%rbp)	#, i
	jmp	.L39	#
.L48:
	.loc 1 189 0
	movl	-84(%rbp), %esi	# byteswap, byteswap.36
	movq	-24(%rbp), %rax	# tp, tmp229
	movq	(%rax), %rax	# *tp_83, D.5429
	leaq	-80(%rbp), %rdi	#, tmp230
	movq	-32(%rbp), %rcx	# fp, tmp231
	movl	-60(%rbp), %edx	# tp_per_tmat, tmp232
	movq	%rdi, %r9	# tmp230,
	movl	%esi, %r8d	# byteswap.36,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.5429,
	call	bio_fread	#
	cmpl	-60(%rbp), %eax	# tp_per_tmat, D.5423
	je	.L40	#,
	.loc 1 191 0
	movl	$.LC8, %edx	#,
	movl	$191, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-104(%rbp), %rax	# file_name, tmp233
	movq	%rax, %rsi	# tmp233,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L40:
	.loc 1 195 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L41	#
.L47:
	.loc 1 198 0
	movl	-88(%rbp), %ecx	# n_dst, n_dst.37
	movl	-68(%rbp), %eax	# j, tmp234
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5424
	movq	-24(%rbp), %rax	# tp, tmp235
	addq	%rdx, %rax	# D.5424, D.5430
	movq	(%rax), %rdx	# *_97, D.5429
	movq	-112(%rbp), %rax	# tpfloor, tmp236
	movq	%rax, -120(%rbp)	# tmp236, %sfp
	movsd	-120(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# n_dst.37,
	movq	%rdx, %rdi	# D.5429,
	call	vector_nz_floor	#
	.loc 1 199 0
	movl	-88(%rbp), %edx	# n_dst, n_dst.38
	movl	-68(%rbp), %eax	# j, tmp237
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5424
	movq	-24(%rbp), %rax	# tp, tmp238
	addq	%rcx, %rax	# D.5424, D.5430
	movq	(%rax), %rax	# *_103, D.5429
	movl	%edx, %esi	# n_dst.38,
	movq	%rax, %rdi	# D.5429,
	call	vector_sum_norm	#
	.loc 1 202 0
	movl	$0, -64(%rbp)	#, k
	jmp	.L42	#
.L46:
	.loc 1 203 0
	movq	-40(%rbp), %rax	# t, tmp239
	movq	(%rax), %rax	# t_7->tp, D.5431
	movl	-76(%rbp), %edx	# i, i.39
	movslq	%edx, %rdx	# i.39, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5431
	movq	(%rax), %rax	# *_111, D.5432
	movl	-68(%rbp), %edx	# j, tmp240
	movslq	%edx, %rdx	# tmp240, D.5424
	salq	$3, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5432
	movq	(%rax), %rax	# *_115, D.5427
	movl	-64(%rbp), %edx	# k, tmp241
	movslq	%edx, %rdx	# tmp241, D.5424
	salq	$2, %rdx	#, D.5424
	leaq	(%rax,%rdx), %rbx	#, D.5427
	movl	-68(%rbp), %eax	# j, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5424
	movq	-24(%rbp), %rax	# tp, tmp243
	addq	%rdx, %rax	# D.5424, D.5430
	movq	(%rax), %rax	# *_122, D.5429
	movl	-64(%rbp), %edx	# k, tmp244
	movslq	%edx, %rdx	# tmp244, D.5424
	salq	$2, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5429
	movss	(%rax), %xmm0	# *_126, D.5433
	xorps	%xmm1, %xmm1	# tmp245
	ucomiss	%xmm1, %xmm0	# tmp245, D.5433
	jp	.L53	#,
	xorps	%xmm1, %xmm1	# tmp246
	ucomiss	%xmm1, %xmm0	# tmp246, D.5433
	je	.L54	#,
.L53:
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# j, tmp247
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5424
	movq	-24(%rbp), %rax	# tp, tmp248
	addq	%rdx, %rax	# D.5424, D.5430
	movq	(%rax), %rax	# *_130, D.5429
	movl	-64(%rbp), %edx	# k, tmp249
	movslq	%edx, %rdx	# tmp249, D.5424
	salq	$2, %rdx	#, D.5424
	addq	%rdx, %rax	# D.5424, D.5429
	movss	(%rax), %xmm0	# *_134, D.5433
	unpcklps	%xmm0, %xmm0	# D.5433, D.5433
	cvtps2pd	%xmm0, %xmm0	# D.5433, D.5434
	call	logs3	#
	jmp	.L45	#
.L54:
	.loc 1 203 0 discriminator 2
	movl	$-939524096, %eax	#, iftmp.40
.L45:
	.loc 1 203 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.40, *_119
	.loc 1 202 0 is_stmt 1 discriminator 3
	addl	$1, -64(%rbp)	#, k
.L42:
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# n_dst, n_dst.41
	cmpl	%eax, -64(%rbp)	# n_dst.41, k
	jl	.L46	#,
	.loc 1 195 0 is_stmt 1
	addl	$1, -68(%rbp)	#, j
.L41:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# n_src, n_src.42
	cmpl	%eax, -68(%rbp)	# n_src.42, j
	jl	.L47	#,
	.loc 1 188 0 is_stmt 1
	movl	-76(%rbp), %eax	# i, i.43
	addl	$1, %eax	#, i.44
	movl	%eax, -76(%rbp)	# i.44, i
.L39:
	.loc 1 188 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# t, tmp250
	movl	8(%rax), %edx	# t_7->n_tmat, D.5423
	movl	-76(%rbp), %eax	# i, i.45
	cmpl	%eax, %edx	# i.45, D.5423
	jg	.L48	#,
	.loc 1 207 0 is_stmt 1
	movq	-24(%rbp), %rax	# tp, tmp251
	movq	%rax, %rdi	# tmp251,
	call	ckd_free_2d	#
	.loc 1 209 0
	cmpl	$0, -72(%rbp)	#, chksum_present
	je	.L49	#,
	.loc 1 210 0
	movl	-80(%rbp), %edx	# chksum, chksum.46
	movl	-84(%rbp), %ecx	# byteswap, byteswap.47
	movq	-32(%rbp), %rax	# fp, tmp252
	movl	%ecx, %esi	# byteswap.47,
	movq	%rax, %rdi	# tmp252,
	call	bio_verify_chksum	#
.L49:
	.loc 1 212 0
	movq	-32(%rbp), %rdx	# fp, tmp253
	leaq	-93(%rbp), %rax	#, tmp254
	movq	%rdx, %rcx	# tmp253,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	fread	#
	cmpq	$1, %rax	#, D.5424
	jne	.L50	#,
	.loc 1 213 0
	movl	$.LC21, %edx	#,
	movl	$213, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
.L50:
	.loc 1 215 0
	movq	-32(%rbp), %rax	# fp, tmp255
	movq	%rax, %rdi	# tmp255,
	call	fclose	#
	.loc 1 217 0
	movl	$.LC2, %edx	#,
	movl	$217, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 218 0
	movq	-40(%rbp), %rax	# t, tmp256
	movl	12(%rax), %eax	# t_7->n_state, D.5423
	.loc 1 217 0
	leal	1(%rax), %ecx	#, D.5423
	movq	-40(%rbp), %rax	# t, tmp257
	movl	12(%rax), %edx	# t_7->n_state, D.5423
	movq	-40(%rbp), %rax	# t, tmp258
	movl	8(%rax), %eax	# t_7->n_tmat, D.5423
	movl	%eax, %esi	# D.5423,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 220 0
	movq	-40(%rbp), %rax	# t, tmp259
	movq	%rax, %rdi	# tmp259,
	call	tmat_chk_uppertri	#
	testl	%eax, %eax	# D.5423
	jns	.L51	#,
	.loc 1 221 0
	movl	$.LC8, %edx	#,
	movl	$221, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L51:
	.loc 1 223 0
	movq	-40(%rbp), %rax	# t, D.5435
	.loc 1 224 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	tmat_init, .-tmat_init
	.globl	tmat_free
	.type	tmat_free, @function
tmat_free:
.LFB6:
	.loc 1 230 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# t, t
	.loc 1 231 0
	cmpq	$0, -8(%rbp)	#, t
	je	.L55	#,
	.loc 1 232 0
	movq	-8(%rbp), %rax	# t, tmp61
	movq	(%rax), %rax	# t_1(D)->tp, D.5459
	testq	%rax, %rax	# D.5459
	je	.L57	#,
	.loc 1 233 0
	movq	-8(%rbp), %rax	# t, tmp62
	movq	(%rax), %rax	# t_1(D)->tp, D.5459
	movq	%rax, %rdi	# D.5459,
	call	ckd_free_3d	#
.L57:
	.loc 1 234 0
	movq	-8(%rbp), %rax	# t, tmp63
	movq	%rax, %rdi	# tmp63,
	call	ckd_free	#
.L55:
	.loc 1 236 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	tmat_free, .-tmat_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "tmat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x588
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
	.long	0x2a0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x46
	.long	0x2a7
	.uleb128 0xd
	.byte	0x10
	.byte	0x7
	.byte	0x4a
	.long	0x306
	.uleb128 0xe
	.string	"tp"
	.byte	0x7
	.byte	0x4b
	.long	0x306
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x4d
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x4e
	.long	0x2ae
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x30c
	.uleb128 0x6
	.byte	0x8
	.long	0x312
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x50
	.long	0x2da
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x6
	.byte	0x8
	.long	0x323
	.uleb128 0xf
	.long	.LASF76
	.byte	0x1
	.byte	0x47
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x390
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x47
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"fp"
	.byte	0x1
	.byte	0x47
	.long	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x49
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x49
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"dst"
	.byte	0x1
	.byte	0x49
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x318
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x5c
	.long	0x2ae
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f4
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x5c
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x5e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x5e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"dst"
	.byte	0x1
	.byte	0x5e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF60
	.byte	0x1
	.byte	0x6c
	.long	0x2ae
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.byte	0x6c
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x6e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x6e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"dst"
	.byte	0x1
	.byte	0x6e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0x7b
	.long	0x390
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x55f
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.byte	0x7b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x10
	.long	.LASF63
	.byte	0x1
	.byte	0x7b
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x12
	.string	"tmp"
	.byte	0x1
	.byte	0x7d
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x7e
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x7e
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.string	"fp"
	.byte	0x1
	.byte	0x7f
	.long	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x80
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x80
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x81
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.string	"tp"
	.byte	0x1
	.byte	0x82
	.long	0x329
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x83
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.byte	0x83
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0x83
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.byte	0x83
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.long	.LASF70
	.byte	0x1
	.byte	0x84
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.long	.LASF71
	.byte	0x1
	.byte	0x84
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0x85
	.long	0x390
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x16
	.long	.LASF77
	.byte	0x1
	.byte	0xe5
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"t"
	.byte	0x1
	.byte	0xe5
	.long	0x390
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
	.uleb128 0x15
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
.LASF29:
	.string	"_old_offset"
.LASF50:
	.string	"double"
.LASF42:
	.string	"_IO_FILE"
.LASF53:
	.string	"float32"
.LASF59:
	.string	"tmat_chk_uppertri"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF62:
	.string	"file_name"
.LASF34:
	.string	"_offset"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF63:
	.string	"tpfloor"
.LASF55:
	.string	"n_tmat"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF70:
	.string	"argname"
.LASF73:
	.string	"tmat.c"
.LASF49:
	.string	"float"
.LASF47:
	.string	"long long int"
.LASF60:
	.string	"tmat_chk_1skip"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF45:
	.string	"_sbuf"
.LASF1:
	.string	"unsigned char"
.LASF66:
	.string	"byteswap"
.LASF77:
	.string	"tmat_free"
.LASF72:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF56:
	.string	"n_state"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
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
.LASF68:
	.string	"chksum"
.LASF74:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"short unsigned int"
.LASF52:
	.string	"uint32"
.LASF0:
	.string	"long unsigned int"
.LASF64:
	.string	"n_src"
.LASF51:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF57:
	.string	"tmat_t"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF76:
	.string	"tmat_dump"
.LASF65:
	.string	"n_dst"
.LASF23:
	.string	"_IO_backup_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF61:
	.string	"tmat_init"
.LASF67:
	.string	"chksum_present"
.LASF54:
	.string	"float64"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF69:
	.string	"tp_per_tmat"
.LASF58:
	.string	"tmat"
.LASF75:
	.string	"_IO_lock_t"
.LASF71:
	.string	"argval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
