	.file	"gsi.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 gsi.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"gsi.c"
.LC1:
	.string	"r"
.LC2:
	.string	"GSI"
	.text
	.globl	GSIOpen
	.type	GSIOpen, @function
GSIOpen:
.LFB2:
	.file 1 "gsi.c"
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# gsifile, gsifile
	.loc 1 54 0
	movq	%fs:40, %rax	#, tmp98
	movq	%rax, -24(%rbp)	# tmp98, D.6066
	xorl	%eax, %eax	# tmp98
	.loc 1 58 0
	movl	$16, %edx	#,
	movl	$58, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -72(%rbp)	# tmp77, gsi
	.loc 1 59 0
	movq	-88(%rbp), %rax	# gsifile, tmp78
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	fopen	#
	movq	-72(%rbp), %rdx	# gsi, tmp79
	movq	%rax, (%rdx)	# D.6059, gsi_2->gsifp
	movq	-72(%rbp), %rax	# gsi, tmp80
	movq	(%rax), %rax	# gsi_2->gsifp, D.6059
	testq	%rax, %rax	# D.6059
	jne	.L2	#,
	.loc 1 60 0
	movq	-72(%rbp), %rax	# gsi, tmp81
	movq	%rax, %rdi	# tmp81,
	call	free	#
	movl	$4, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6058
	jmp	.L8	#
.L2:
	.loc 1 62 0
	movq	-72(%rbp), %rax	# gsi, tmp82
	movq	(%rax), %rdx	# gsi_2->gsifp, D.6059
	leaq	-64(%rbp), %rax	#, tmp83
	movq	%rdx, %rcx	# D.6059,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	fread	#
	testq	%rax, %rax	# D.6060
	jne	.L4	#,
	.loc 1 63 0
	movq	-72(%rbp), %rax	# gsi, tmp84
	movq	%rax, %rdi	# tmp84,
	call	free	#
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6058
	jmp	.L8	#
.L4:
	.loc 1 64 0
	leaq	-64(%rbp), %rax	#, tmp85
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	strcmp	#
	testl	%eax, %eax	# D.6061
	je	.L5	#,
	.loc 1 65 0
	movq	-72(%rbp), %rax	# gsi, tmp86
	movq	%rax, %rdi	# tmp86,
	call	free	#
	movl	$5, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6058
	jmp	.L8	#
.L5:
	.loc 1 67 0
	movq	-72(%rbp), %rax	# gsi, tmp87
	movq	(%rax), %rax	# gsi_2->gsifp, D.6059
	movq	-72(%rbp), %rdx	# gsi, tmp88
	leaq	8(%rdx), %rdi	#, D.6062
	movq	%rax, %rcx	# D.6059,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.6060
	jne	.L6	#,
	.loc 1 68 0
	movq	-72(%rbp), %rax	# gsi, tmp89
	movq	%rax, %rdi	# tmp89,
	call	free	#
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6058
	jmp	.L8	#
.L6:
	.loc 1 69 0
	movq	-72(%rbp), %rax	# gsi, tmp90
	movq	(%rax), %rax	# gsi_2->gsifp, D.6059
	movq	-72(%rbp), %rdx	# gsi, tmp91
	leaq	12(%rdx), %rdi	#, D.6063
	movq	%rax, %rcx	# D.6059,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.6060
	jne	.L7	#,
	.loc 1 70 0
	movq	-72(%rbp), %rax	# gsi, tmp92
	movq	%rax, %rdi	# tmp92,
	call	free	#
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6058
	jmp	.L8	#
.L7:
	.loc 1 72 0
	movq	-72(%rbp), %rax	# gsi, tmp93
	movzwl	8(%rax), %eax	# gsi_2->nfiles, D.6064
	movzwl	%ax, %eax	# D.6064, D.6061
	movl	%eax, %edi	# D.6061,
	call	sre_ntoh16	#
	movq	-72(%rbp), %rdx	# gsi, tmp94
	movw	%ax, 8(%rdx)	# D.6064, gsi_2->nfiles
	.loc 1 73 0
	movq	-72(%rbp), %rax	# gsi, tmp95
	movl	12(%rax), %eax	# gsi_2->recnum, D.6065
	movl	%eax, %edi	# D.6065,
	call	sre_ntoh32	#
	movq	-72(%rbp), %rdx	# gsi, tmp96
	movl	%eax, 12(%rdx)	# D.6065, gsi_2->recnum
	.loc 1 75 0
	movq	-72(%rbp), %rax	# gsi, D.6058
.L8:
	.loc 1 76 0
	movq	-24(%rbp), %rbx	# D.6066, tmp99
	xorq	%fs:40, %rbx	#, tmp99
	je	.L9	#,
	call	__stack_chk_fail	#
.L9:
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	GSIOpen, .-GSIOpen
	.globl	GSIGetRecord
	.type	GSIGetRecord, @function
GSIGetRecord:
.LFB3:
	.loc 1 94 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# gsi, gsi
	movq	%rsi, -16(%rbp)	# f1, f1
	movq	%rdx, -24(%rbp)	# f2, f2
	movq	%rcx, -32(%rbp)	# f3, f3
	.loc 1 95 0
	cmpq	$0, -16(%rbp)	#, f1
	jne	.L11	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gsi, tmp75
	movq	(%rax), %rax	# gsi_3(D)->gsifp, D.6073
	movl	$1, %edx	#,
	movl	$32, %esi	#,
	movq	%rax, %rdi	# D.6073,
	call	fseek	#
	jmp	.L12	#
.L11:
	.loc 1 96 0 is_stmt 1
	movq	-8(%rbp), %rax	# gsi, tmp76
	movq	(%rax), %rdx	# gsi_3(D)->gsifp, D.6073
	movq	-16(%rbp), %rax	# f1, tmp77
	movq	%rdx, %rcx	# D.6073,
	movl	$1, %edx	#,
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fread	#
	testq	%rax, %rax	# D.6074
	jne	.L12	#,
	.loc 1 97 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6072
	jmp	.L13	#
.L12:
	.loc 1 99 0
	cmpq	$0, -24(%rbp)	#, f2
	jne	.L14	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gsi, tmp78
	movq	(%rax), %rax	# gsi_3(D)->gsifp, D.6073
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6073,
	call	fseek	#
	jmp	.L15	#
.L14:
	.loc 1 100 0 is_stmt 1
	movq	-8(%rbp), %rax	# gsi, tmp79
	movq	(%rax), %rdx	# gsi_3(D)->gsifp, D.6073
	movq	-24(%rbp), %rax	# f2, tmp80
	movq	%rdx, %rcx	# D.6073,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	fread	#
	testq	%rax, %rax	# D.6074
	jne	.L15	#,
	.loc 1 101 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6072
	jmp	.L13	#
.L15:
	.loc 1 103 0
	cmpq	$0, -32(%rbp)	#, f3
	jne	.L16	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# gsi, tmp81
	movq	(%rax), %rax	# gsi_3(D)->gsifp, D.6073
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6073,
	call	fseek	#
	jmp	.L17	#
.L16:
	.loc 1 104 0 is_stmt 1
	movq	-8(%rbp), %rax	# gsi, tmp82
	movq	(%rax), %rdx	# gsi_3(D)->gsifp, D.6073
	movq	-32(%rbp), %rax	# f3, tmp83
	movq	%rdx, %rcx	# D.6073,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	fread	#
	testq	%rax, %rax	# D.6074
	jne	.L17	#,
	.loc 1 105 0
	movl	$2, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.6072
	jmp	.L13	#
.L17:
	.loc 1 107 0
	cmpq	$0, -24(%rbp)	#, f2
	je	.L18	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# f2, tmp84
	movzwl	(%rax), %eax	# *f2_8(D), D.6075
	movzwl	%ax, %eax	# D.6075, D.6072
	movl	%eax, %edi	# D.6072,
	call	sre_ntoh16	#
	movq	-24(%rbp), %rdx	# f2, tmp85
	movw	%ax, (%rdx)	# D.6075, *f2_8(D)
.L18:
	.loc 1 108 0 is_stmt 1
	cmpq	$0, -32(%rbp)	#, f3
	je	.L19	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# f3, tmp86
	movl	(%rax), %eax	# *f3_13(D), D.6076
	movl	%eax, %edi	# D.6076,
	call	sre_ntoh32	#
	movq	-32(%rbp), %rdx	# f3, tmp87
	movl	%eax, (%rdx)	# D.6076, *f3_13(D)
.L19:
	.loc 1 110 0 is_stmt 1
	movl	$1, %eax	#, D.6072
.L13:
	.loc 1 111 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	GSIGetRecord, .-GSIGetRecord
	.globl	GSIGetOffset
	.type	GSIGetOffset, @function
GSIGetOffset:
.LFB4:
	.loc 1 130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# gsi, gsi
	movq	%rsi, -112(%rbp)	# key, key
	movq	%rdx, -120(%rbp)	# ret_seqfile, ret_seqfile
	movq	%rcx, -128(%rbp)	# ret_format, ret_format
	movq	%r8, -136(%rbp)	# ret_offset, ret_offset
	.loc 1 130 0
	movq	%fs:40, %rax	#, tmp122
	movq	%rax, -24(%rbp)	# tmp122, D.6082
	xorl	%eax, %eax	# tmp122
	.loc 1 138 0
	movb	$0, -32(%rbp)	#, name
	.loc 1 140 0
	movq	-104(%rbp), %rax	# gsi, tmp85
	movzwl	8(%rax), %eax	# gsi_7(D)->nfiles, D.6078
	movzwl	%ax, %eax	# D.6078, D.6077
	addl	$1, %eax	#, D.6077
	movl	%eax, -80(%rbp)	# D.6077, left
	.loc 1 141 0
	movq	-104(%rbp), %rax	# gsi, tmp86
	movzwl	8(%rax), %eax	# gsi_7(D)->nfiles, D.6078
	movzwl	%ax, %edx	# D.6078, D.6079
	movq	-104(%rbp), %rax	# gsi, tmp87
	movl	12(%rax), %eax	# gsi_7(D)->recnum, D.6079
	addl	%edx, %eax	# D.6079, tmp88
	movl	%eax, -76(%rbp)	# tmp88, right
	.loc 1 142 0
	movl	-76(%rbp), %eax	# right, tmp89
	movl	-80(%rbp), %edx	# left, tmp90
	addl	%edx, %eax	# tmp90, D.6079
	shrl	%eax	# tmp91
	movl	%eax, -72(%rbp)	# tmp91, mid
	.loc 1 143 0
	movl	-72(%rbp), %eax	# mid, tmp92
	imull	$38, %eax, %eax	#, tmp92, D.6079
	movl	%eax, %ecx	# D.6079, D.6080
	movq	-104(%rbp), %rax	# gsi, tmp93
	movq	(%rax), %rax	# gsi_7(D)->gsifp, D.6081
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.6080,
	movq	%rax, %rdi	# D.6081,
	call	fseek	#
	.loc 1 145 0
	jmp	.L21	#
.L28:
	.loc 1 147 0
	movq	-112(%rbp), %rdx	# key, tmp94
	leaq	-64(%rbp), %rax	#, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	movl	%eax, -68(%rbp)	# tmp96, cmp
	.loc 1 148 0
	cmpl	$0, -68(%rbp)	#, cmp
	jne	.L22	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	jmp	.L23	#
.L22:
	.loc 1 149 0 is_stmt 1
	movl	-80(%rbp), %eax	# left, tmp97
	cmpl	-76(%rbp), %eax	# right, tmp97
	jb	.L24	#,
	.loc 1 149 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6077
	jmp	.L29	#
.L24:
	.loc 1 150 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, cmp
	jns	.L26	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# mid, tmp101
	addl	$1, %eax	#, tmp100
	movl	%eax, -80(%rbp)	# tmp100, left
	jmp	.L27	#
.L26:
	.loc 1 151 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, cmp
	jle	.L27	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# mid, tmp105
	subl	$1, %eax	#, tmp104
	movl	%eax, -76(%rbp)	# tmp104, right
.L27:
	.loc 1 152 0 is_stmt 1
	movl	-76(%rbp), %eax	# right, tmp106
	movl	-80(%rbp), %edx	# left, tmp107
	addl	%edx, %eax	# tmp107, D.6079
	shrl	%eax	# tmp108
	movl	%eax, -72(%rbp)	# tmp108, mid
	.loc 1 153 0
	movl	-72(%rbp), %eax	# mid, tmp109
	imull	$38, %eax, %eax	#, tmp109, D.6079
	movl	%eax, %ecx	# D.6079, D.6080
	movq	-104(%rbp), %rax	# gsi, tmp110
	movq	(%rax), %rax	# gsi_7(D)->gsifp, D.6081
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.6080,
	movq	%rax, %rdi	# D.6081,
	call	fseek	#
.L21:
	.loc 1 145 0 discriminator 1
	leaq	-88(%rbp), %rcx	#, tmp111
	leaq	-90(%rbp), %rdx	#, tmp112
	leaq	-64(%rbp), %rsi	#, tmp113
	movq	-104(%rbp), %rax	# gsi, tmp114
	movq	%rax, %rdi	# tmp114,
	call	GSIGetRecord	#
	testl	%eax, %eax	# D.6077
	jne	.L28	#,
.L23:
	.loc 1 158 0
	movzwl	-90(%rbp), %eax	# filenum, filenum.0
	movzwl	%ax, %eax	# filenum.0, D.6077
	imull	$38, %eax, %eax	#, D.6077, D.6077
	movslq	%eax, %rcx	# D.6077, D.6080
	movq	-104(%rbp), %rax	# gsi, tmp115
	movq	(%rax), %rax	# gsi_7(D)->gsifp, D.6081
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.6080,
	movq	%rax, %rdi	# D.6081,
	call	fseek	#
	.loc 1 159 0
	leaq	-84(%rbp), %rdx	#, tmp116
	movq	-120(%rbp), %rsi	# ret_seqfile, tmp117
	movq	-104(%rbp), %rax	# gsi, tmp118
	movq	%rdx, %rcx	# tmp116,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp118,
	call	GSIGetRecord	#
	.loc 1 160 0
	movl	-84(%rbp), %eax	# fmt, fmt.1
	movl	%eax, %edx	# fmt.1, fmt.2
	movq	-128(%rbp), %rax	# ret_format, tmp119
	movl	%edx, (%rax)	# fmt.2, *ret_format_40(D)
	.loc 1 161 0
	movl	-88(%rbp), %eax	# offset, offset.3
	movl	%eax, %edx	# offset.3, D.6080
	movq	-136(%rbp), %rax	# ret_offset, tmp120
	movq	%rdx, (%rax)	# D.6080, *ret_offset_43(D)
	.loc 1 163 0
	movl	$1, %eax	#, D.6077
.L29:
	.loc 1 164 0
	movq	-24(%rbp), %rbx	# D.6082, tmp123
	xorq	%fs:40, %rbx	#, tmp123
	je	.L30	#,
	call	__stack_chk_fail	#
.L30:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	GSIGetOffset, .-GSIGetOffset
	.globl	GSIClose
	.type	GSIClose, @function
GSIClose:
.LFB5:
	.loc 1 172 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# gsi, gsi
	.loc 1 173 0
	movq	-8(%rbp), %rax	# gsi, tmp60
	movq	(%rax), %rax	# gsi_1(D)->gsifp, D.6083
	movq	%rax, %rdi	# D.6083,
	call	fclose	#
	.loc 1 174 0
	movq	-8(%rbp), %rax	# gsi, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
	.loc 1 175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	GSIClose, .-GSIClose
	.globl	GSIAllocIndex
	.type	GSIAllocIndex, @function
GSIAllocIndex:
.LFB6:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 200 0
	movl	$40, %edx	#,
	movl	$200, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp64, g
	.loc 1 201 0
	movl	$80, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# g, tmp65
	movq	%rax, (%rdx)	# D.6084, g_1->filenames
	.loc 1 202 0
	movl	$40, %edx	#,
	movl	$202, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# g, tmp66
	movq	%rax, 8(%rdx)	# D.6084, g_1->fmt
	.loc 1 203 0
	movl	$4000, %edx	#,
	movl	$203, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# g, tmp67
	movq	%rax, 24(%rdx)	# D.6084, g_1->elems
	.loc 1 204 0
	movq	-8(%rbp), %rax	# g, tmp68
	movw	$0, 16(%rax)	#, g_1->nfiles
	.loc 1 205 0
	movq	-8(%rbp), %rax	# g, tmp69
	movl	$0, 32(%rax)	#, g_1->nkeys
	.loc 1 206 0
	movq	-8(%rbp), %rax	# g, D.6085
	.loc 1 207 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	GSIAllocIndex, .-GSIAllocIndex
	.globl	GSIFreeIndex
	.type	GSIFreeIndex, @function
GSIFreeIndex:
.LFB7:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 212 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L35	#
.L36:
	.loc 1 212 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp69
	movq	(%rax), %rax	# g_3(D)->filenames, D.6088
	movl	-4(%rbp), %edx	# i, tmp70
	movslq	%edx, %rdx	# tmp70, D.6089
	salq	$3, %rdx	#, D.6089
	addq	%rdx, %rax	# D.6089, D.6088
	movq	(%rax), %rax	# *_9, D.6090
	movq	%rax, %rdi	# D.6090,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L35:
	.loc 1 212 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp71
	movzwl	16(%rax), %eax	# g_3(D)->nfiles, D.6086
	movzwl	%ax, %eax	# D.6086, D.6087
	cmpl	-4(%rbp), %eax	# i, D.6087
	jg	.L36	#,
	.loc 1 213 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp72
	movq	(%rax), %rax	# g_3(D)->filenames, D.6088
	movq	%rax, %rdi	# D.6088,
	call	free	#
	.loc 1 214 0
	movq	-24(%rbp), %rax	# g, tmp73
	movq	8(%rax), %rax	# g_3(D)->fmt, D.6091
	movq	%rax, %rdi	# D.6091,
	call	free	#
	.loc 1 215 0
	movq	-24(%rbp), %rax	# g, tmp74
	movq	24(%rax), %rax	# g_3(D)->elems, D.6092
	movq	%rax, %rdi	# D.6092,
	call	free	#
	.loc 1 216 0
	movq	-24(%rbp), %rax	# g, tmp75
	movq	%rax, %rdi	# tmp75,
	call	free	#
	.loc 1 217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	GSIFreeIndex, .-GSIFreeIndex
	.section	.rodata
	.align 8
.LC3:
	.string	"File name too long to be indexed."
	.text
	.globl	GSIAddFileToIndex
	.type	GSIAddFileToIndex, @function
GSIAddFileToIndex:
.LFB8:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# g, g
	movq	%rsi, -48(%rbp)	# filename, filename
	movl	%edx, -52(%rbp)	# fmt, fmt
	.loc 1 223 0
	movq	-48(%rbp), %rax	# filename, tmp89
	movq	%rax, %rdi	# tmp89,
	call	strlen	#
	movl	%eax, -20(%rbp)	# D.6093, len
	.loc 1 224 0
	cmpl	$31, -20(%rbp)	#, len
	jle	.L38	#,
	.loc 1 224 0 is_stmt 0 discriminator 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L38:
	.loc 1 225 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp90
	movq	(%rax), %rdx	# g_4(D)->filenames, D.6094
	movq	-40(%rbp), %rax	# g, tmp91
	movzwl	16(%rax), %eax	# g_4(D)->nfiles, D.6095
	movzwl	%ax, %eax	# D.6095, D.6093
	salq	$3, %rax	#, D.6093
	leaq	(%rdx,%rax), %rbx	#, D.6094
	movl	-20(%rbp), %edx	# len, tmp92
	movq	-48(%rbp), %rax	# filename, tmp93
	movl	%edx, %esi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.6096, *_9
	.loc 1 226 0
	movq	-40(%rbp), %rax	# g, tmp94
	movq	8(%rax), %rdx	# g_4(D)->fmt, D.6097
	movq	-40(%rbp), %rax	# g, tmp95
	movzwl	16(%rax), %eax	# g_4(D)->nfiles, D.6095
	movzwl	%ax, %eax	# D.6095, D.6093
	salq	$2, %rax	#, D.6093
	addq	%rax, %rdx	# D.6093, D.6097
	movl	-52(%rbp), %eax	# fmt, tmp96
	movl	%eax, (%rdx)	# tmp96, *_15
	.loc 1 227 0
	movq	-40(%rbp), %rax	# g, tmp97
	movzwl	16(%rax), %eax	# g_4(D)->nfiles, D.6095
	leal	1(%rax), %edx	#, D.6095
	movq	-40(%rbp), %rax	# g, tmp98
	movw	%dx, 16(%rax)	# D.6095, g_4(D)->nfiles
	.loc 1 228 0
	movq	-40(%rbp), %rax	# g, tmp99
	movzwl	16(%rax), %ecx	# g_4(D)->nfiles, D.6095
	movzwl	%cx, %eax	# D.6095, tmp100
	imull	$52429, %eax, %eax	#, tmp100, tmp101
	shrl	$16, %eax	#, tmp102
	movl	%eax, %edx	# tmp102, D.6095
	shrw	$3, %dx	#, D.6095
	movl	%edx, %eax	# D.6095, tmp103
	sall	$2, %eax	#, tmp103
	addl	%edx, %eax	# D.6095, tmp103
	addl	%eax, %eax	# tmp104
	subl	%eax, %ecx	# tmp103, D.6095
	movl	%ecx, %edx	# D.6095, D.6095
	testw	%dx, %dx	# D.6095
	jne	.L37	#,
	.loc 1 229 0
	movq	-40(%rbp), %rax	# g, tmp105
	movzwl	16(%rax), %eax	# g_4(D)->nfiles, D.6095
	movzwl	%ax, %eax	# D.6095, D.6098
	addl	$10, %eax	#, D.6098
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6093
	movq	-40(%rbp), %rax	# g, tmp106
	movq	(%rax), %rax	# g_4(D)->filenames, D.6094
	movq	%rdx, %rcx	# D.6093,
	movq	%rax, %rdx	# D.6094,
	movl	$229, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# g, tmp107
	movq	%rax, (%rdx)	# D.6099, g_4(D)->filenames
	.loc 1 230 0
	movq	-40(%rbp), %rax	# g, tmp108
	movzwl	16(%rax), %eax	# g_4(D)->nfiles, D.6095
	movzwl	%ax, %eax	# D.6095, D.6098
	addl	$10, %eax	#, D.6098
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6093
	movq	-40(%rbp), %rax	# g, tmp109
	movq	8(%rax), %rax	# g_4(D)->fmt, D.6097
	movq	%rdx, %rcx	# D.6093,
	movq	%rax, %rdx	# D.6097,
	movl	$230, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-40(%rbp), %rdx	# g, tmp110
	movq	%rax, 8(%rdx)	# D.6099, g_4(D)->fmt
.L37:
	.loc 1 232 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	GSIAddFileToIndex, .-GSIAddFileToIndex
	.section	.rodata
.LC4:
	.string	"key too long in GSI index"
.LC5:
	.string	"too many files in GSI index"
.LC6:
	.string	"offset too big in GSI index"
	.text
	.globl	GSIAddKeyToIndex
	.type	GSIAddKeyToIndex, @function
GSIAddKeyToIndex:
.LFB9:
	.loc 1 235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# g, g
	movq	%rsi, -16(%rbp)	# key, key
	movl	%edx, -20(%rbp)	# filenum, filenum
	movq	%rcx, -32(%rbp)	# offset, offset
	.loc 1 236 0
	movq	-16(%rbp), %rax	# key, tmp93
	movq	%rax, %rdi	# tmp93,
	call	strlen	#
	cmpq	$31, %rax	#, D.6101
	jbe	.L41	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L41:
	.loc 1 237 0 is_stmt 1
	cmpl	$65535, -20(%rbp)	#, filenum
	jle	.L42	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L42:
	.loc 1 238 0 is_stmt 1
	movl	$4294967295, %eax	#, tmp94
	cmpq	%rax, -32(%rbp)	# tmp94, offset
	jle	.L43	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L43:
	.loc 1 240 0 is_stmt 1
	movq	-8(%rbp), %rax	# g, tmp95
	movq	24(%rax), %rcx	# g_5(D)->elems, D.6102
	movq	-8(%rbp), %rax	# g, tmp96
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	movslq	%eax, %rdx	# D.6103, D.6101
	movq	%rdx, %rax	# D.6101, tmp97
	salq	$2, %rax	#, tmp97
	addq	%rdx, %rax	# D.6101, tmp97
	salq	$3, %rax	#, tmp98
	addq	%rcx, %rax	# D.6102, D.6102
	movq	-16(%rbp), %rcx	# key, tmp99
	movl	$31, %edx	#,
	movq	%rcx, %rsi	# tmp99,
	movq	%rax, %rdi	# D.6104,
	call	strncpy	#
	.loc 1 241 0
	movq	-8(%rbp), %rax	# g, tmp100
	movq	24(%rax), %rcx	# g_5(D)->elems, D.6102
	movq	-8(%rbp), %rax	# g, tmp101
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	movslq	%eax, %rdx	# D.6103, D.6101
	movq	%rdx, %rax	# D.6101, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rdx, %rax	# D.6101, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# D.6102, D.6102
	movb	$0, 31(%rax)	#, _16->key
	.loc 1 242 0
	movq	-8(%rbp), %rax	# g, tmp104
	movq	24(%rax), %rcx	# g_5(D)->elems, D.6102
	movq	-8(%rbp), %rax	# g, tmp105
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	movslq	%eax, %rdx	# D.6103, D.6101
	movq	%rdx, %rax	# D.6101, tmp106
	salq	$2, %rax	#, tmp106
	addq	%rdx, %rax	# D.6101, tmp106
	salq	$3, %rax	#, tmp107
	leaq	(%rcx,%rax), %rdx	#, D.6102
	movl	-20(%rbp), %eax	# filenum, tmp108
	movw	%ax, 32(%rdx)	# D.6105, _21->filenum
	.loc 1 243 0
	movq	-8(%rbp), %rax	# g, tmp109
	movq	24(%rax), %rcx	# g_5(D)->elems, D.6102
	movq	-8(%rbp), %rax	# g, tmp110
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	movslq	%eax, %rdx	# D.6103, D.6101
	movq	%rdx, %rax	# D.6101, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# D.6101, tmp111
	salq	$3, %rax	#, tmp112
	leaq	(%rcx,%rax), %rdx	#, D.6102
	movq	-32(%rbp), %rax	# offset, tmp113
	movl	%eax, 36(%rdx)	# D.6106, _27->offset
	.loc 1 244 0
	movq	-8(%rbp), %rax	# g, tmp114
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	leal	1(%rax), %edx	#, D.6103
	movq	-8(%rbp), %rax	# g, tmp115
	movl	%edx, 32(%rax)	# D.6103, g_5(D)->nkeys
	.loc 1 246 0
	movq	-8(%rbp), %rax	# g, tmp116
	movl	32(%rax), %ecx	# g_5(D)->nkeys, D.6103
	movl	$1374389535, %edx	#, tmp118
	movl	%ecx, %eax	# D.6103, tmp127
	imull	%edx	# tmp118
	sarl	$5, %edx	#, tmp119
	movl	%ecx, %eax	# D.6103, tmp120
	sarl	$31, %eax	#, tmp120
	subl	%eax, %edx	# tmp120, D.6103
	movl	%edx, %eax	# D.6103, D.6103
	imull	$100, %eax, %eax	#, D.6103, tmp121
	subl	%eax, %ecx	# tmp121, D.6103
	movl	%ecx, %eax	# D.6103, D.6103
	testl	%eax, %eax	# D.6103
	jne	.L40	#,
	.loc 1 247 0
	movq	-8(%rbp), %rax	# g, tmp122
	movl	32(%rax), %eax	# g_5(D)->nkeys, D.6103
	addl	$100, %eax	#, D.6103
	movslq	%eax, %rdx	# D.6103, D.6101
	movq	%rdx, %rax	# D.6101, tmp123
	salq	$2, %rax	#, tmp123
	addq	%rdx, %rax	# D.6101, tmp123
	salq	$3, %rax	#, tmp124
	movq	%rax, %rdx	# tmp123, D.6101
	movq	-8(%rbp), %rax	# g, tmp125
	movq	24(%rax), %rax	# g_5(D)->elems, D.6102
	movq	%rdx, %rcx	# D.6101,
	movq	%rax, %rdx	# D.6102,
	movl	$247, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-8(%rbp), %rdx	# g, tmp126
	movq	%rax, 24(%rdx)	# D.6107, g_5(D)->elems
.L40:
	.loc 1 248 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	GSIAddKeyToIndex, .-GSIAddKeyToIndex
	.type	gsi_keysorter, @function
gsi_keysorter:
.LFB10:
	.loc 1 251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# k1, k1
	movq	%rsi, -32(%rbp)	# k2, k2
	.loc 1 254 0
	movq	-24(%rbp), %rax	# k1, tmp63
	movq	%rax, -16(%rbp)	# tmp63, key1
	.loc 1 255 0
	movq	-32(%rbp), %rax	# k2, tmp64
	movq	%rax, -8(%rbp)	# tmp64, key2
	.loc 1 256 0
	movq	-8(%rbp), %rdx	# key2, D.6111
	movq	-16(%rbp), %rax	# key1, D.6111
	movq	%rdx, %rsi	# D.6111,
	movq	%rax, %rdi	# D.6111,
	call	strcmp	#
	.loc 1 257 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gsi_keysorter, .-gsi_keysorter
	.globl	GSISortIndex
	.type	GSISortIndex, @function
GSISortIndex:
.LFB11:
	.loc 1 260 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# g, g
	.loc 1 261 0
	movq	-8(%rbp), %rax	# g, tmp61
	movl	32(%rax), %esi	# g_1(D)->nkeys, D.6113
	movq	-8(%rbp), %rax	# g, tmp62
	movq	24(%rax), %rax	# g_1(D)->elems, D.6114
	movl	$gsi_keysorter, %ecx	#,
	movl	$40, %edx	#,
	movq	%rax, %rdi	# D.6114,
	movl	$0, %eax	#,
	call	specqsort	#
	.loc 1 262 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	GSISortIndex, .-GSISortIndex
	.globl	GSIWriteIndex
	.type	GSIWriteIndex, @function
GSIWriteIndex:
.LFB12:
	.loc 1 265 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# g, g
	.loc 1 273 0
	movq	-32(%rbp), %rax	# g, tmp96
	movl	32(%rax), %eax	# g_3(D)->nkeys, D.6115
	movslq	%eax, %rdx	# D.6115, D.6116
	movq	-32(%rbp), %rax	# g, tmp97
	movzwl	16(%rax), %eax	# g_3(D)->nfiles, D.6117
	movzwl	%ax, %ecx	# D.6117, D.6115
	movq	-24(%rbp), %rax	# fp, tmp98
	movl	%ecx, %esi	# D.6115,
	movq	%rax, %rdi	# tmp98,
	call	GSIWriteHeader	#
	.loc 1 274 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 275 0 discriminator 2
	movq	-32(%rbp), %rax	# g, tmp99
	movq	8(%rax), %rax	# g_3(D)->fmt, D.6119
	movl	-4(%rbp), %edx	# i, D.6120
	salq	$2, %rdx	#, D.6120
	addq	%rdx, %rax	# D.6120, D.6119
	movl	(%rax), %ecx	# *_15, D.6115
	movl	-4(%rbp), %eax	# i, tmp100
	addl	$1, %eax	#, D.6118
	movl	%eax, %edx	# D.6118, D.6115
	movq	-32(%rbp), %rax	# g, tmp101
	movq	(%rax), %rax	# g_3(D)->filenames, D.6121
	movl	-4(%rbp), %esi	# i, D.6120
	salq	$3, %rsi	#, D.6120
	addq	%rsi, %rax	# D.6120, D.6121
	movq	(%rax), %rsi	# *_22, D.6122
	movq	-24(%rbp), %rax	# fp, tmp102
	movq	%rax, %rdi	# tmp102,
	call	GSIWriteFileRecord	#
	.loc 1 274 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L49:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# g, tmp103
	movzwl	16(%rax), %eax	# g_3(D)->nfiles, D.6117
	movzwl	%ax, %eax	# D.6117, D.6118
	cmpl	-4(%rbp), %eax	# i, D.6118
	ja	.L50	#,
	.loc 1 276 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L51	#
.L52:
	.loc 1 277 0 discriminator 2
	movq	-32(%rbp), %rax	# g, tmp104
	movq	24(%rax), %rcx	# g_3(D)->elems, D.6123
	movl	-4(%rbp), %edx	# i, D.6120
	movq	%rdx, %rax	# D.6120, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# D.6120, tmp105
	salq	$3, %rax	#, tmp106
	addq	%rcx, %rax	# D.6123, D.6123
	movl	36(%rax), %eax	# _31->offset, D.6118
	movl	%eax, %ecx	# D.6118, D.6116
	movq	-32(%rbp), %rax	# g, tmp107
	movq	24(%rax), %rsi	# g_3(D)->elems, D.6123
	movl	-4(%rbp), %edx	# i, D.6120
	movq	%rdx, %rax	# D.6120, tmp108
	salq	$2, %rax	#, tmp108
	addq	%rdx, %rax	# D.6120, tmp108
	salq	$3, %rax	#, tmp109
	addq	%rsi, %rax	# D.6123, D.6123
	movzwl	32(%rax), %eax	# _37->filenum, D.6117
	movzwl	%ax, %edi	# D.6117, D.6115
	movq	-32(%rbp), %rax	# g, tmp110
	movq	24(%rax), %rsi	# g_3(D)->elems, D.6123
	movl	-4(%rbp), %edx	# i, D.6120
	movq	%rdx, %rax	# D.6120, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# D.6120, tmp111
	salq	$3, %rax	#, tmp112
	addq	%rsi, %rax	# D.6123, D.6123
	movq	%rax, %rsi	# D.6123, D.6124
	movq	-24(%rbp), %rax	# fp, tmp113
	movl	%edi, %edx	# D.6115,
	movq	%rax, %rdi	# tmp113,
	call	GSIWriteKeyRecord	#
	.loc 1 276 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L51:
	.loc 1 276 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# g, tmp114
	movl	32(%rax), %eax	# g_3(D)->nkeys, D.6115
	cmpl	-4(%rbp), %eax	# i, D.6118
	ja	.L52	#,
	.loc 1 278 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	GSIWriteIndex, .-GSIWriteIndex
	.section	.rodata
.LC7:
	.string	"GSI: nfiles out of range"
.LC8:
	.string	"GSI: nkeys out of range"
	.text
	.globl	GSIWriteHeader
	.type	GSIWriteHeader, @function
GSIWriteHeader:
.LFB13:
	.loc 1 298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# fp, fp
	movl	%esi, -76(%rbp)	# nfiles, nfiles
	movq	%rdx, -88(%rbp)	# nkeys, nkeys
	.loc 1 298 0
	movq	%fs:40, %rax	#, tmp79
	movq	%rax, -8(%rbp)	# tmp79, D.6127
	xorl	%eax, %eax	# tmp79
	.loc 1 305 0
	cmpl	$65535, -76(%rbp)	#, nfiles
	jle	.L54	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L54:
	.loc 1 306 0 is_stmt 1
	movl	$4294967295, %eax	#, tmp69
	cmpq	%rax, -88(%rbp)	# tmp69, nkeys
	jle	.L55	#,
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L55:
	.loc 1 308 0 is_stmt 1
	movl	-76(%rbp), %eax	# nfiles, tmp70
	movw	%ax, -54(%rbp)	# f1.4, f1
	.loc 1 309 0
	movq	-88(%rbp), %rax	# nkeys, tmp71
	movl	%eax, -52(%rbp)	# f2.5, f2
	.loc 1 310 0
	movzwl	-54(%rbp), %eax	# f1, f1.6
	movzwl	%ax, %eax	# f1.6, D.6125
	movl	%eax, %edi	# D.6125,
	call	sre_hton16	#
	movw	%ax, -54(%rbp)	# f1.7, f1
	.loc 1 311 0
	movl	-52(%rbp), %eax	# f2, f2.8
	movl	%eax, %edi	# f2.8,
	call	sre_hton32	#
	movl	%eax, -52(%rbp)	# f2.9, f2
	.loc 1 312 0
	leaq	-48(%rbp), %rax	#, tmp72
	movl	$4805447, (%rax)	#, MEM[(void *)&key]
	.loc 1 314 0
	movq	-72(%rbp), %rdx	# fp, tmp73
	leaq	-48(%rbp), %rax	#, tmp74
	movq	%rdx, %rcx	# tmp73,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	fwrite	#
	cmpq	$31, %rax	#, D.6126
	ja	.L56	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	$314, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L56:
	.loc 1 315 0 is_stmt 1
	movq	-72(%rbp), %rdx	# fp, tmp75
	leaq	-54(%rbp), %rax	#, tmp76
	movq	%rdx, %rcx	# tmp75,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	fwrite	#
	testq	%rax, %rax	# D.6126
	jne	.L57	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	$315, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L57:
	.loc 1 316 0 is_stmt 1
	movq	-72(%rbp), %rdx	# fp, tmp77
	leaq	-52(%rbp), %rax	#, tmp78
	movq	%rdx, %rcx	# tmp77,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	fwrite	#
	testq	%rax, %rax	# D.6126
	jne	.L53	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	$316, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L53:
	.loc 1 317 0 is_stmt 1
	movq	-8(%rbp), %rax	# D.6127, tmp80
	xorq	%fs:40, %rax	#, tmp80
	je	.L59	#,
	call	__stack_chk_fail	#
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	GSIWriteHeader, .-GSIWriteHeader
	.section	.rodata
.LC9:
	.string	"GSI: file index out of range"
	.text
	.globl	GSIWriteFileRecord
	.type	GSIWriteFileRecord, @function
GSIWriteFileRecord:
.LFB14:
	.loc 1 334 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# fname, fname
	movl	%edx, -36(%rbp)	# idx, idx
	movl	%ecx, -40(%rbp)	# fmt, fmt
	.loc 1 338 0
	movq	-32(%rbp), %rax	# fname, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	cmpq	$31, %rax	#, D.6131
	jbe	.L61	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6130
	jmp	.L67	#
.L61:
	.loc 1 339 0 is_stmt 1
	cmpl	$65535, -36(%rbp)	#, idx
	jle	.L68	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L68:
	.loc 1 342 0 is_stmt 1
	movl	-36(%rbp), %eax	# idx, tmp73
	movw	%ax, -6(%rbp)	# f1.10, f1
	.loc 1 343 0
	movl	-40(%rbp), %eax	# fmt, fmt.11
	movl	%eax, -4(%rbp)	# fmt.11, f2
	.loc 1 344 0
	movzwl	-6(%rbp), %eax	# f1, f1.12
	movzwl	%ax, %eax	# f1.12, D.6130
	movl	%eax, %edi	# D.6130,
	call	sre_hton16	#
	movw	%ax, -6(%rbp)	# f1.13, f1
	.loc 1 345 0
	movl	-4(%rbp), %eax	# f2, f2.14
	movl	%eax, %edi	# f2.14,
	call	sre_hton32	#
	movl	%eax, -4(%rbp)	# f2.15, f2
	.loc 1 347 0
	movq	-24(%rbp), %rdx	# fp, tmp74
	movq	-32(%rbp), %rax	# fname, tmp75
	movq	%rdx, %rcx	# tmp74,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp75,
	call	fwrite	#
	cmpq	$31, %rax	#, D.6131
	ja	.L64	#,
	.loc 1 347 0 is_stmt 0 discriminator 1
	movl	$347, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L64:
	.loc 1 348 0 is_stmt 1
	movq	-24(%rbp), %rdx	# fp, tmp76
	leaq	-6(%rbp), %rax	#, tmp77
	movq	%rdx, %rcx	# tmp76,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fwrite	#
	testq	%rax, %rax	# D.6131
	jne	.L65	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	movl	$348, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L65:
	.loc 1 349 0 is_stmt 1
	movq	-24(%rbp), %rdx	# fp, tmp78
	leaq	-4(%rbp), %rax	#, tmp79
	movq	%rdx, %rcx	# tmp78,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	fwrite	#
	testq	%rax, %rax	# D.6131
	jne	.L66	#,
	.loc 1 349 0 is_stmt 0 discriminator 1
	movl	$349, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L66:
	.loc 1 350 0 is_stmt 1
	movl	$1, %eax	#, D.6130
.L67:
	.loc 1 351 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	GSIWriteFileRecord, .-GSIWriteFileRecord
	.section	.rodata
.LC10:
	.string	"GSI: offset out of range"
	.text
	.globl	GSIWriteKeyRecord
	.type	GSIWriteKeyRecord, @function
GSIWriteKeyRecord:
.LFB15:
	.loc 1 369 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# key, key
	movl	%edx, -36(%rbp)	# fileidx, fileidx
	movq	%rcx, -48(%rbp)	# offset, offset
	.loc 1 373 0
	movq	-32(%rbp), %rax	# key, tmp72
	movq	%rax, %rdi	# tmp72,
	call	strlen	#
	cmpq	$31, %rax	#, D.6134
	jbe	.L70	#,
	.loc 1 373 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6133
	jmp	.L77	#
.L70:
	.loc 1 374 0 is_stmt 1
	cmpl	$65535, -36(%rbp)	#, fileidx
	jle	.L72	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L72:
	.loc 1 375 0 is_stmt 1
	movl	$4294967295, %eax	#, tmp73
	cmpq	%rax, -48(%rbp)	# tmp73, offset
	jle	.L73	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L73:
	.loc 1 377 0 is_stmt 1
	movl	-36(%rbp), %eax	# fileidx, tmp74
	movw	%ax, -6(%rbp)	# f1.16, f1
	.loc 1 378 0
	movq	-48(%rbp), %rax	# offset, tmp75
	movl	%eax, -4(%rbp)	# f2.17, f2
	.loc 1 379 0
	movzwl	-6(%rbp), %eax	# f1, f1.18
	movzwl	%ax, %eax	# f1.18, D.6133
	movl	%eax, %edi	# D.6133,
	call	sre_hton16	#
	movw	%ax, -6(%rbp)	# f1.19, f1
	.loc 1 380 0
	movl	-4(%rbp), %eax	# f2, f2.20
	movl	%eax, %edi	# f2.20,
	call	sre_hton32	#
	movl	%eax, -4(%rbp)	# f2.21, f2
	.loc 1 382 0
	movq	-24(%rbp), %rdx	# fp, tmp76
	movq	-32(%rbp), %rax	# key, tmp77
	movq	%rdx, %rcx	# tmp76,
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	fwrite	#
	cmpq	$31, %rax	#, D.6134
	ja	.L74	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movl	$382, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L74:
	.loc 1 383 0 is_stmt 1
	movq	-24(%rbp), %rdx	# fp, tmp78
	leaq	-6(%rbp), %rax	#, tmp79
	movq	%rdx, %rcx	# tmp78,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	fwrite	#
	testq	%rax, %rax	# D.6134
	jne	.L75	#,
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	$383, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L75:
	.loc 1 384 0 is_stmt 1
	movq	-24(%rbp), %rdx	# fp, tmp80
	leaq	-4(%rbp), %rax	#, tmp81
	movq	%rdx, %rcx	# tmp80,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	fwrite	#
	testq	%rax, %rax	# D.6134
	jne	.L76	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	movl	$384, %esi	#,
	movl	$.LC0, %edi	#,
	call	Panic	#
.L76:
	.loc 1 385 0 is_stmt 1
	movl	$1, %eax	#, D.6133
.L77:
	.loc 1 386 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	GSIWriteKeyRecord, .-GSIWriteKeyRecord
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gsi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8eb
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
	.long	.LASF94
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
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0xb
	.long	0x95
	.long	0x2b6
	.uleb128 0xc
	.long	0x86
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bc
	.uleb128 0xd
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
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2d6
	.uleb128 0x7
	.long	.LASF53
	.byte	0x10
	.byte	0x7
	.byte	0x2e
	.long	0x324
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x2f
	.long	0x2e1
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x30
	.long	0x2cb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x31
	.long	0x2d6
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x33
	.long	0x2f3
	.uleb128 0x7
	.long	.LASF58
	.byte	0x28
	.byte	0x7
	.byte	0x35
	.long	0x360
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x36
	.long	0x2a6
	.byte	0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x37
	.long	0x2cb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x38
	.long	0x2d6
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.long	.LASF61
	.byte	0x28
	.byte	0x7
	.byte	0x3a
	.long	0x3a9
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x3b
	.long	0x2e7
	.byte	0
	.uleb128 0xe
	.string	"fmt"
	.byte	0x7
	.byte	0x3c
	.long	0x292
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x3d
	.long	0x2cb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x3f
	.long	0x3a9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x40
	.long	0x62
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32f
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0x35
	.long	0x3fe
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fe
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.byte	0x35
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x11
	.string	"gsi"
	.byte	0x1
	.byte	0x37
	.long	0x3fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.byte	0x38
	.long	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x324
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x45b
	.uleb128 0x13
	.string	"gsi"
	.byte	0x1
	.byte	0x5d
	.long	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"f1"
	.byte	0x1
	.byte	0x5d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"f2"
	.byte	0x1
	.byte	0x5d
	.long	0x45b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"f3"
	.byte	0x1
	.byte	0x5d
	.long	0x2ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2cb
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.byte	0x80
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x546
	.uleb128 0x13
	.string	"gsi"
	.byte	0x1
	.byte	0x80
	.long	0x3fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x13
	.string	"key"
	.byte	0x1
	.byte	0x80
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.byte	0x80
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x81
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.byte	0x81
	.long	0x546
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.byte	0x83
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.long	.LASF74
	.byte	0x1
	.byte	0x83
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x11
	.string	"mid"
	.byte	0x1
	.byte	0x83
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.string	"cmp"
	.byte	0x1
	.byte	0x84
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.long	.LASF75
	.byte	0x1
	.byte	0x85
	.long	0x54c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF60
	.byte	0x1
	.byte	0x86
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x87
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -106
	.uleb128 0x11
	.string	"fmt"
	.byte	0x1
	.byte	0x88
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x69
	.uleb128 0xb
	.long	0x95
	.long	0x55c
	.uleb128 0xc
	.long	0x86
	.byte	0x20
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0xab
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x588
	.uleb128 0x13
	.string	"gsi"
	.byte	0x1
	.byte	0xab
	.long	0x3fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF76
	.byte	0x1
	.byte	0xc4
	.long	0x5b6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b6
	.uleb128 0x11
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xd1
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f2
	.uleb128 0x13
	.string	"g"
	.byte	0x1
	.byte	0xd1
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0xdb
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x647
	.uleb128 0x13
	.string	"g"
	.byte	0x1
	.byte	0xdb
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.byte	0xdb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.string	"fmt"
	.byte	0x1
	.byte	0xdb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xdd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0xea
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x69b
	.uleb128 0x13
	.string	"g"
	.byte	0x1
	.byte	0xea
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"key"
	.byte	0x1
	.byte	0xea
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.byte	0xea
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF60
	.byte	0x1
	.byte	0xea
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.byte	0xfa
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f3
	.uleb128 0x13
	.string	"k1"
	.byte	0x1
	.byte	0xfa
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"k2"
	.byte	0x1
	.byte	0xfa
	.long	0x2b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0xfc
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xfd
	.long	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.value	0x103
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x72d
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x103
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x105
	.long	0x62
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.value	0x108
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x774
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x108
	.long	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x108
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.value	0x10a
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.value	0x129
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ef
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x129
	.long	0x2e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x129
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x1
	.value	0x129
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x12b
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"f1"
	.byte	0x1
	.value	0x12c
	.long	0x2cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x1a
	.string	"f2"
	.byte	0x1
	.value	0x12d
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x1c
	.long	.LASF87
	.byte	0x1
	.value	0x14d
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x869
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x14d
	.long	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF88
	.byte	0x1
	.value	0x14d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x14d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.value	0x14d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"f1"
	.byte	0x1
	.value	0x14f
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.string	"f2"
	.byte	0x1
	.value	0x150
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF89
	.byte	0x1
	.value	0x170
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e3
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x170
	.long	0x2e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x170
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.value	0x170
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.value	0x170
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"f1"
	.byte	0x1
	.value	0x172
	.long	0x2cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1a
	.string	"f2"
	.byte	0x1
	.value	0x173
	.long	0x2d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.long	.LASF97
	.byte	0x6
	.byte	0x3b
	.long	0x62
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LASF95:
	.string	"gsi_keysorter"
.LASF29:
	.string	"_old_offset"
.LASF74:
	.string	"right"
.LASF56:
	.string	"recnum"
.LASF77:
	.string	"GSIClose"
.LASF71:
	.string	"ret_format"
.LASF24:
	.string	"_IO_save_end"
.LASF19:
	.string	"_IO_write_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF48:
	.string	"long long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF80:
	.string	"filename"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"double"
.LASF25:
	.string	"_markers"
.LASF83:
	.string	"key2"
.LASF61:
	.string	"gsiindex_s"
.LASF67:
	.string	"GSIGetRecord"
.LASF86:
	.string	"GSIWriteHeader"
.LASF62:
	.string	"filenames"
.LASF51:
	.string	"sqd_uint16"
.LASF49:
	.string	"float"
.LASF63:
	.string	"elems"
.LASF57:
	.string	"GSIFILE"
.LASF93:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF47:
	.string	"long long int"
.LASF96:
	.string	"specqsort"
.LASF33:
	.string	"_lock"
.LASF70:
	.string	"ret_seqfile"
.LASF6:
	.string	"long int"
.LASF65:
	.string	"magic"
.LASF60:
	.string	"offset"
.LASF30:
	.string	"_cur_column"
.LASF64:
	.string	"nkeys"
.LASF46:
	.string	"_pos"
.LASF75:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF55:
	.string	"nfiles"
.LASF1:
	.string	"unsigned char"
.LASF66:
	.string	"GSIOpen"
.LASF76:
	.string	"GSIAllocIndex"
.LASF91:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF89:
	.string	"GSIWriteKeyRecord"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_read_end"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF88:
	.string	"fname"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF59:
	.string	"filenum"
.LASF92:
	.string	"gsi.c"
.LASF53:
	.string	"gsi_s"
.LASF11:
	.string	"char"
.LASF73:
	.string	"left"
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
.LASF84:
	.string	"GSISortIndex"
.LASF90:
	.string	"fileidx"
.LASF85:
	.string	"GSIWriteIndex"
.LASF54:
	.string	"gsifp"
.LASF79:
	.string	"GSIAddFileToIndex"
.LASF0:
	.string	"long unsigned int"
.LASF81:
	.string	"GSIAddKeyToIndex"
.LASF58:
	.string	"gsikey_s"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF2:
	.string	"short unsigned int"
.LASF26:
	.string	"_chain"
.LASF52:
	.string	"sqd_uint32"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF87:
	.string	"GSIWriteFileRecord"
.LASF31:
	.string	"_vtable_offset"
.LASF69:
	.string	"GSIGetOffset"
.LASF97:
	.string	"squid_errno"
.LASF22:
	.string	"_IO_save_base"
.LASF72:
	.string	"ret_offset"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF68:
	.string	"gsifile"
.LASF78:
	.string	"GSIFreeIndex"
.LASF13:
	.string	"_flags"
.LASF94:
	.string	"_IO_lock_t"
.LASF82:
	.string	"key1"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
