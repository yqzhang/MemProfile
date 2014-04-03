	.file	"debug.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 debug.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"S"
.LC1:
	.string	"N"
.LC2:
	.string	"B"
.LC3:
	.string	"M"
.LC4:
	.string	"D"
.LC5:
	.string	"I"
.LC6:
	.string	"E"
.LC7:
	.string	"J"
.LC8:
	.string	"C"
.LC9:
	.string	"T"
.LC10:
	.string	"BOGUS"
	.text
	.globl	Statetype
	.type	Statetype, @function
Statetype:
.LFB2:
	.file 1 "debug.c"
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# st, tmp62
	movb	%al, -4(%rbp)	# tmp62, st
	.loc 1 40 0
	movsbl	-4(%rbp), %eax	# st, D.7047
	cmpl	$10, %eax	#, D.7047
	ja	.L2	#,
	movl	%eax, %eax	# D.7047, tmp63
	movq	.L4(,%rax,8), %rax	#, tmp64
	jmp	*%rax	# tmp64
	.section	.rodata
	.align 8
	.align 4
.L4:
	.quad	.L2
	.quad	.L3
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.text
.L7:
	.loc 1 41 0
	movl	$.LC0, %eax	#, D.7046
	jmp	.L14	#
.L8:
	.loc 1 42 0
	movl	$.LC1, %eax	#, D.7046
	jmp	.L14	#
.L9:
	.loc 1 43 0
	movl	$.LC2, %eax	#, D.7046
	jmp	.L14	#
.L3:
	.loc 1 44 0
	movl	$.LC3, %eax	#, D.7046
	jmp	.L14	#
.L5:
	.loc 1 45 0
	movl	$.LC4, %eax	#, D.7046
	jmp	.L14	#
.L6:
	.loc 1 46 0
	movl	$.LC5, %eax	#, D.7046
	jmp	.L14	#
.L10:
	.loc 1 47 0
	movl	$.LC6, %eax	#, D.7046
	jmp	.L14	#
.L13:
	.loc 1 48 0
	movl	$.LC7, %eax	#, D.7046
	jmp	.L14	#
.L11:
	.loc 1 49 0
	movl	$.LC8, %eax	#, D.7046
	jmp	.L14	#
.L12:
	.loc 1 50 0
	movl	$.LC9, %eax	#, D.7046
	jmp	.L14	#
.L2:
	.loc 1 51 0
	movl	$.LC10, %eax	#, D.7046
.L14:
	.loc 1 53 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Statetype, .-Statetype
	.section	.rodata
.LC11:
	.string	"protein"
.LC12:
	.string	"nucleic acid"
.LC13:
	.string	"unknown"
	.text
	.globl	AlphabetType2String
	.type	AlphabetType2String, @function
AlphabetType2String:
.LFB3:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# type, type
	.loc 1 69 0
	movl	-4(%rbp), %eax	# type, type
	cmpl	$2, %eax	#, type
	je	.L17	#,
	cmpl	$3, %eax	#, type
	je	.L18	#,
	testl	%eax, %eax	# type
	je	.L19	#,
	jmp	.L21	#
.L18:
	.loc 1 70 0
	movl	$.LC11, %eax	#, D.7059
	jmp	.L20	#
.L17:
	.loc 1 71 0
	movl	$.LC12, %eax	#, D.7059
	jmp	.L20	#
.L19:
	.loc 1 72 0
	movl	$.LC13, %eax	#, D.7059
	jmp	.L20	#
.L21:
	.loc 1 73 0
	movl	$.LC10, %eax	#, D.7059
.L20:
	.loc 1 75 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	AlphabetType2String, .-AlphabetType2String
	.section	.rodata
.LC14:
	.string	" [ trace is NULL ]\n"
	.align 8
.LC15:
	.string	"st  node   rpos  - traceback len %d\n"
.LC16:
	.string	"--  ---- ------\n"
.LC17:
	.string	"%1s  %4d %6d\n"
	.align 8
.LC18:
	.string	"oi, you can't print scores from that hmm, it's not ready."
	.align 8
.LC19:
	.string	"st  node   rpos  transit emission - traceback len %d\n"
	.align 8
.LC20:
	.string	"--  ---- ------  ------- --------\n"
.LC21:
	.string	"%1s  %4d %6d  %7d"
.LC22:
	.string	" %8d %c"
.LC23:
	.string	"-"
.LC24:
	.string	" %8s %c"
	.align 8
.LC25:
	.string	"                 ------- --------\n"
.LC26:
	.string	"           total: %6d\n\n"
	.text
	.globl	P7PrintTrace
	.type	P7PrintTrace, @function
P7PrintTrace:
.LFB4:
	.loc 1 90 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)	# fp, fp
	movq	%rsi, -64(%rbp)	# tr, tr
	movq	%rdx, -72(%rbp)	# hmm, hmm
	movq	%rcx, -80(%rbp)	# dsq, dsq
	.loc 1 95 0
	cmpq	$0, -64(%rbp)	#, tr
	jne	.L23	#,
	.loc 1 96 0
	movq	-56(%rbp), %rax	# fp, tmp258
	movq	%rax, %rcx	# tmp258,
	movl	$19, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 97 0
	jmp	.L22	#
.L23:
	.loc 1 100 0
	cmpq	$0, -72(%rbp)	#, hmm
	jne	.L25	#,
	.loc 1 101 0
	movq	-64(%rbp), %rax	# tr, tmp259
	movl	(%rax), %edx	# tr_10(D)->tlen, D.7063
	movq	-56(%rbp), %rax	# fp, tmp260
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp260,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 102 0
	movq	-56(%rbp), %rax	# fp, tmp261
	movq	%rax, %rcx	# tmp261,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
	.loc 1 103 0
	movl	$0, -44(%rbp)	#, tpos
	jmp	.L26	#
.L27:
	.loc 1 107 0 discriminator 2
	movq	-64(%rbp), %rax	# tr, tmp262
	movq	24(%rax), %rax	# tr_10(D)->pos, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp263
	movslq	%edx, %rdx	# tmp263, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	.loc 1 104 0 discriminator 2
	movl	(%rax), %r12d	# *_19, D.7063
	.loc 1 106 0 discriminator 2
	movq	-64(%rbp), %rax	# tr, tmp264
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp265
	movslq	%edx, %rdx	# tmp265, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	.loc 1 104 0 discriminator 2
	movl	(%rax), %ebx	# *_24, D.7063
	.loc 1 105 0 discriminator 2
	movq	-64(%rbp), %rax	# tr, tmp266
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp267
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_28, D.7068
	.loc 1 104 0 discriminator 2
	movsbl	%al, %eax	# D.7068, D.7063
	movl	%eax, %edi	# D.7063,
	call	Statetype	#
	movq	%rax, %rdx	#, D.7066
	movq	-56(%rbp), %rax	# fp, tmp268
	movl	%r12d, %r8d	# D.7063,
	movl	%ebx, %ecx	# D.7063,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp268,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 103 0 discriminator 2
	addl	$1, -44(%rbp)	#, tpos
.L26:
	.loc 1 103 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp269
	movl	(%rax), %eax	# tr_10(D)->tlen, D.7063
	cmpl	-44(%rbp), %eax	# tpos, D.7063
	jg	.L27	#,
	jmp	.L22	#
.L25:
	.loc 1 110 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp270
	movl	456(%rax), %eax	# hmm_12(D)->flags, D.7063
	andl	$1, %eax	#, D.7063
	testl	%eax, %eax	# D.7063
	jne	.L28	#,
	.loc 1 111 0
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L28:
	.loc 1 113 0
	movl	$0, -36(%rbp)	#, sc
	.loc 1 114 0
	movq	-64(%rbp), %rax	# tr, tmp271
	movl	(%rax), %edx	# tr_10(D)->tlen, D.7063
	movq	-56(%rbp), %rax	# fp, tmp272
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp272,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 115 0
	movq	-56(%rbp), %rax	# fp, tmp273
	movq	%rax, %rcx	# tmp273,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
	.loc 1 116 0
	movl	$0, -44(%rbp)	#, tpos
	jmp	.L29	#
.L42:
	.loc 1 117 0
	cmpq	$0, -80(%rbp)	#, dsq
	je	.L30	#,
	.loc 1 117 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp274
	movq	24(%rax), %rax	# tr_10(D)->pos, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp275
	movslq	%edx, %rdx	# tmp275, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	movl	(%rax), %eax	# *_44, D.7063
	movslq	%eax, %rdx	# D.7063, D.7067
	movq	-80(%rbp), %rax	# dsq, tmp276
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_47, D.7068
	movsbl	%al, %eax	# D.7068, tmp277
	movl	%eax, -40(%rbp)	# tmp277, sym
.L30:
	.loc 1 123 0 is_stmt 1
	movq	-64(%rbp), %rax	# tr, tmp278
	movl	(%rax), %eax	# tr_10(D)->tlen, D.7063
	subl	$1, %eax	#, D.7063
	.loc 1 119 0
	cmpl	-44(%rbp), %eax	# tpos, D.7063
	jle	.L31	#,
	.loc 1 125 0
	movq	-64(%rbp), %rax	# tr, tmp279
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp280
	movslq	%edx, %rdx	# tmp280, D.7067
	addq	$1, %rdx	#, D.7067
	salq	$2, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7064
	.loc 1 124 0
	movl	(%rax), %edi	# *_56, D.7063
	.loc 1 125 0
	movq	-64(%rbp), %rax	# tr, tmp281
	movq	8(%rax), %rax	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %edx	# tpos, tmp282
	movslq	%edx, %rdx	# tmp282, D.7067
	addq	$1, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_61, D.7068
	.loc 1 124 0
	movsbl	%al, %ecx	# D.7068, D.7063
	movq	-64(%rbp), %rax	# tr, tmp283
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp284
	movslq	%edx, %rdx	# tmp284, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	movl	(%rax), %edx	# *_67, D.7063
	movq	-64(%rbp), %rax	# tr, tmp285
	movq	8(%rax), %rsi	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp286
	cltq
	addq	%rsi, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_71, D.7068
	movsbl	%al, %esi	# D.7068, D.7063
	.loc 1 119 0
	movq	-72(%rbp), %rax	# hmm, tmp287
	movl	%edi, %r8d	# D.7063,
	movq	%rax, %rdi	# tmp287,
	call	TransitionScoreLookup	#
	movl	%eax, %ebx	#, iftmp.0
	jmp	.L32	#
.L31:
	.loc 1 119 0 is_stmt 0 discriminator 1
	movl	$0, %ebx	#, iftmp.0
.L32:
	.loc 1 122 0 is_stmt 1
	movq	-64(%rbp), %rax	# tr, tmp288
	movq	24(%rax), %rax	# tr_10(D)->pos, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp289
	movslq	%edx, %rdx	# tmp289, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	.loc 1 119 0
	movl	(%rax), %r13d	# *_79, D.7063
	.loc 1 121 0
	movq	-64(%rbp), %rax	# tr, tmp290
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp291
	movslq	%edx, %rdx	# tmp291, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	.loc 1 119 0
	movl	(%rax), %r12d	# *_84, D.7063
	.loc 1 120 0
	movq	-64(%rbp), %rax	# tr, tmp292
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp293
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_88, D.7068
	.loc 1 119 0
	movsbl	%al, %eax	# D.7068, D.7063
	movl	%eax, %edi	# D.7063,
	call	Statetype	#
	movq	%rax, %rdx	#, D.7066
	movq	-56(%rbp), %rax	# fp, tmp294
	movl	%ebx, %r9d	# iftmp.0,
	movl	%r13d, %r8d	# D.7063,
	movl	%r12d, %ecx	# D.7063,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp294,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 127 0
	movq	-64(%rbp), %rax	# tr, tmp295
	movl	(%rax), %eax	# tr_10(D)->tlen, D.7063
	subl	$1, %eax	#, D.7063
	cmpl	-44(%rbp), %eax	# tpos, D.7063
	jle	.L33	#,
	.loc 1 129 0
	movq	-64(%rbp), %rax	# tr, tmp296
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp297
	movslq	%edx, %rdx	# tmp297, D.7067
	addq	$1, %rdx	#, D.7067
	salq	$2, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7064
	.loc 1 128 0
	movl	(%rax), %edi	# *_98, D.7063
	.loc 1 129 0
	movq	-64(%rbp), %rax	# tr, tmp298
	movq	8(%rax), %rax	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %edx	# tpos, tmp299
	movslq	%edx, %rdx	# tmp299, D.7067
	addq	$1, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_103, D.7068
	.loc 1 128 0
	movsbl	%al, %ecx	# D.7068, D.7063
	movq	-64(%rbp), %rax	# tr, tmp300
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %edx	# tpos, tmp301
	movslq	%edx, %rdx	# tmp301, D.7065
	salq	$2, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7064
	movl	(%rax), %edx	# *_109, D.7063
	movq	-64(%rbp), %rax	# tr, tmp302
	movq	8(%rax), %rsi	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp303
	cltq
	addq	%rsi, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_113, D.7068
	movsbl	%al, %esi	# D.7068, D.7063
	movq	-72(%rbp), %rax	# hmm, tmp304
	movl	%edi, %r8d	# D.7063,
	movq	%rax, %rdi	# tmp304,
	call	TransitionScoreLookup	#
	addl	%eax, -36(%rbp)	# D.7063, sc
.L33:
	.loc 1 131 0
	cmpq	$0, -80(%rbp)	#, dsq
	je	.L34	#,
	.loc 1 132 0
	movq	-64(%rbp), %rax	# tr, tmp305
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp306
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_120, D.7068
	cmpb	$1, %al	#, D.7068
	jne	.L35	#,
	.loc 1 135 0
	movl	-40(%rbp), %eax	# sym, tmp308
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7068
	.loc 1 134 0
	movsbl	%al, %ecx	# D.7068, D.7063
	movq	-72(%rbp), %rax	# hmm, tmp309
	movq	320(%rax), %rax	# hmm_12(D)->msc, D.7069
	movl	-40(%rbp), %edx	# sym, tmp310
	movslq	%edx, %rdx	# tmp310, D.7065
	salq	$3, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7069
	movq	(%rax), %rdx	# *_127, D.7064
	movq	-64(%rbp), %rax	# tr, tmp311
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %esi	# tpos, tmp312
	movslq	%esi, %rsi	# tmp312, D.7065
	salq	$2, %rsi	#, D.7065
	addq	%rsi, %rax	# D.7065, D.7064
	movl	(%rax), %eax	# *_132, D.7063
	cltq
	salq	$2, %rax	#, D.7065
	addq	%rdx, %rax	# D.7064, D.7064
	movl	(%rax), %edx	# *_136, D.7063
	movq	-56(%rbp), %rax	# fp, tmp313
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp313,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 136 0
	movq	-72(%rbp), %rax	# hmm, tmp314
	movq	320(%rax), %rax	# hmm_12(D)->msc, D.7069
	movl	-40(%rbp), %edx	# sym, tmp315
	movslq	%edx, %rdx	# tmp315, D.7065
	salq	$3, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7069
	movq	(%rax), %rdx	# *_141, D.7064
	movq	-64(%rbp), %rax	# tr, tmp316
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %ecx	# tpos, tmp317
	movslq	%ecx, %rcx	# tmp317, D.7065
	salq	$2, %rcx	#, D.7065
	addq	%rcx, %rax	# D.7065, D.7064
	movl	(%rax), %eax	# *_146, D.7063
	cltq
	salq	$2, %rax	#, D.7065
	addq	%rdx, %rax	# D.7064, D.7064
	movl	(%rax), %eax	# *_150, D.7063
	addl	%eax, -36(%rbp)	# D.7063, sc
	jmp	.L41	#
.L35:
	.loc 1 138 0
	movq	-64(%rbp), %rax	# tr, tmp318
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp319
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_155, D.7068
	cmpb	$3, %al	#, D.7068
	jne	.L37	#,
	.loc 1 141 0
	movl	-40(%rbp), %eax	# sym, tmp321
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7068
	movsbl	%al, %eax	# D.7068, D.7063
	movl	%eax, %edi	# D.7063,
	call	tolower	#
	.loc 1 140 0
	movsbl	%al, %ecx	# D.7068, D.7063
	movq	-72(%rbp), %rax	# hmm, tmp322
	movq	328(%rax), %rax	# hmm_12(D)->isc, D.7069
	movl	-40(%rbp), %edx	# sym, tmp323
	movslq	%edx, %rdx	# tmp323, D.7065
	salq	$3, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7069
	movq	(%rax), %rdx	# *_165, D.7064
	movq	-64(%rbp), %rax	# tr, tmp324
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %esi	# tpos, tmp325
	movslq	%esi, %rsi	# tmp325, D.7065
	salq	$2, %rsi	#, D.7065
	addq	%rsi, %rax	# D.7065, D.7064
	movl	(%rax), %eax	# *_170, D.7063
	cltq
	salq	$2, %rax	#, D.7065
	addq	%rdx, %rax	# D.7064, D.7064
	movl	(%rax), %edx	# *_174, D.7063
	movq	-56(%rbp), %rax	# fp, tmp326
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp326,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 142 0
	movq	-72(%rbp), %rax	# hmm, tmp327
	movq	328(%rax), %rax	# hmm_12(D)->isc, D.7069
	movl	-40(%rbp), %edx	# sym, tmp328
	movslq	%edx, %rdx	# tmp328, D.7065
	salq	$3, %rdx	#, D.7065
	addq	%rdx, %rax	# D.7065, D.7069
	movq	(%rax), %rdx	# *_179, D.7064
	movq	-64(%rbp), %rax	# tr, tmp329
	movq	16(%rax), %rax	# tr_10(D)->nodeidx, D.7064
	movl	-44(%rbp), %ecx	# tpos, tmp330
	movslq	%ecx, %rcx	# tmp330, D.7065
	salq	$2, %rcx	#, D.7065
	addq	%rcx, %rax	# D.7065, D.7064
	movl	(%rax), %eax	# *_184, D.7063
	cltq
	salq	$2, %rax	#, D.7065
	addq	%rdx, %rax	# D.7064, D.7064
	movl	(%rax), %eax	# *_188, D.7063
	addl	%eax, -36(%rbp)	# D.7063, sc
	jmp	.L41	#
.L37:
	.loc 1 144 0
	movq	-64(%rbp), %rax	# tr, tmp331
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp332
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_193, D.7068
	cmpb	$5, %al	#, D.7068
	jne	.L38	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp333
	movq	8(%rax), %rax	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %edx	# tpos, tmp334
	movslq	%edx, %rdx	# tmp334, D.7067
	subq	$1, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_198, D.7068
	cmpb	$5, %al	#, D.7068
	je	.L39	#,
.L38:
	.loc 1 145 0 is_stmt 1 discriminator 2
	movq	-64(%rbp), %rax	# tr, tmp335
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp336
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_202, D.7068
	.loc 1 144 0 discriminator 2
	cmpb	$8, %al	#, D.7068
	jne	.L40	#,
	.loc 1 145 0
	movq	-64(%rbp), %rax	# tr, tmp337
	movq	8(%rax), %rax	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %edx	# tpos, tmp338
	movslq	%edx, %rdx	# tmp338, D.7067
	subq	$1, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_207, D.7068
	cmpb	$8, %al	#, D.7068
	je	.L39	#,
.L40:
	.loc 1 146 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp339
	movq	8(%rax), %rdx	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %eax	# tpos, tmp340
	cltq
	addq	%rdx, %rax	# D.7066, D.7066
	movzbl	(%rax), %eax	# *_211, D.7068
	.loc 1 145 0 discriminator 1
	cmpb	$10, %al	#, D.7068
	jne	.L41	#,
	.loc 1 146 0
	movq	-64(%rbp), %rax	# tr, tmp341
	movq	8(%rax), %rax	# tr_10(D)->statetype, D.7066
	movl	-44(%rbp), %edx	# tpos, tmp342
	movslq	%edx, %rdx	# tmp342, D.7067
	subq	$1, %rdx	#, D.7067
	addq	%rdx, %rax	# D.7067, D.7066
	movzbl	(%rax), %eax	# *_216, D.7068
	cmpb	$10, %al	#, D.7068
	jne	.L41	#,
.L39:
	.loc 1 148 0
	movl	-40(%rbp), %eax	# sym, tmp344
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.7068
	movsbl	%al, %eax	# D.7068, D.7063
	movl	%eax, %edi	# D.7063,
	call	tolower	#
	movsbl	%al, %edx	# D.7068, D.7063
	movq	-56(%rbp), %rax	# fp, tmp345
	movl	%edx, %ecx	# D.7063,
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp345,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L41	#
.L34:
	.loc 1 151 0
	movq	-56(%rbp), %rax	# fp, tmp346
	movl	$45, %ecx	#,
	movl	$.LC23, %edx	#,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp346,
	movl	$0, %eax	#,
	call	fprintf	#
.L41:
	.loc 1 155 0
	movq	-56(%rbp), %rax	# fp, tmp347
	movq	%rax, %rsi	# tmp347,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 116 0
	addl	$1, -44(%rbp)	#, tpos
.L29:
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# tr, tmp348
	movl	(%rax), %eax	# tr_10(D)->tlen, D.7063
	cmpl	-44(%rbp), %eax	# tpos, D.7063
	jg	.L42	#,
	.loc 1 157 0 is_stmt 1
	movq	-56(%rbp), %rax	# fp, tmp349
	movq	%rax, %rcx	# tmp349,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC25, %edi	#,
	call	fwrite	#
	.loc 1 158 0
	movl	-36(%rbp), %edx	# sc, tmp350
	movq	-56(%rbp), %rax	# fp, tmp351
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp351,
	movl	$0, %eax	#,
	call	fprintf	#
.L22:
	.loc 1 160 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	P7PrintTrace, .-P7PrintTrace
	.section	.rodata
.LC27:
	.string	"Dirichlet\n"
.LC28:
	.string	"PAM\n"
.LC29:
	.string	"No such strategy."
.LC30:
	.string	"Amino\n"
.LC31:
	.string	"Nucleic\n"
.LC32:
	.string	"\n%d\n"
.LC33:
	.string	"%.4f\n"
.LC34:
	.string	"%.4f "
	.text
	.globl	P7PrintPrior
	.type	P7PrintPrior, @function
P7PrintPrior:
.LFB5:
	.loc 1 168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# pri, pri
	.loc 1 171 0
	movq	-32(%rbp), %rax	# pri, tmp83
	movl	(%rax), %eax	# pri_7(D)->strategy, D.7083
	testl	%eax, %eax	# D.7083
	jne	.L44	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fp, tmp84
	movq	%rax, %rcx	# tmp84,
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
	jmp	.L45	#
.L44:
	.loc 1 172 0 is_stmt 1
	movq	-32(%rbp), %rax	# pri, tmp85
	movl	(%rax), %eax	# pri_7(D)->strategy, D.7083
	cmpl	$1, %eax	#, D.7083
	jne	.L46	#,
	.loc 1 172 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fp, tmp86
	movq	%rax, %rcx	# tmp86,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
	jmp	.L45	#
.L46:
	.loc 1 173 0 is_stmt 1
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L45:
	.loc 1 175 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.1
	cmpl	$3, %eax	#, Alphabet_type.1
	jne	.L47	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fp, tmp87
	movq	%rax, %rcx	# tmp87,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC30, %edi	#,
	call	fwrite	#
	jmp	.L48	#
.L47:
	.loc 1 176 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.2
	cmpl	$2, %eax	#, Alphabet_type.2
	jne	.L48	#,
	.loc 1 176 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fp, tmp88
	movq	%rax, %rcx	# tmp88,
	movl	$8, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC31, %edi	#,
	call	fwrite	#
.L48:
	.loc 1 180 0 is_stmt 1
	movq	-32(%rbp), %rax	# pri, tmp89
	movl	4(%rax), %edx	# pri_7(D)->tnum, D.7083
	movq	-24(%rbp), %rax	# fp, tmp90
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 181 0
	movl	$0, -8(%rbp)	#, q
	jmp	.L49	#
.L52:
	.loc 1 183 0
	movq	-32(%rbp), %rax	# pri, tmp91
	movl	-8(%rbp), %edx	# q, tmp93
	movslq	%edx, %rdx	# tmp93, tmp92
	movss	8(%rax,%rdx,4), %xmm0	# pri_7(D)->tq, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp94
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp94,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 184 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L50	#
.L51:
	.loc 1 185 0 discriminator 2
	movq	-32(%rbp), %rcx	# pri, tmp95
	movl	-4(%rbp), %eax	# x, tmp97
	movslq	%eax, %rsi	# tmp97, tmp96
	movl	-8(%rbp), %eax	# q, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp101
	subq	%rdx, %rax	# tmp98, tmp100
	addq	%rsi, %rax	# tmp96, tmp102
	addq	$200, %rax	#, tmp103
	movss	8(%rcx,%rax,4), %xmm0	# pri_7(D)->t, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp104
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 184 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L50:
	.loc 1 184 0 is_stmt 0 discriminator 1
	cmpl	$6, -4(%rbp)	#, x
	jle	.L51	#,
	.loc 1 186 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp105
	movq	%rax, %rsi	# tmp105,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 181 0
	addl	$1, -8(%rbp)	#, q
.L49:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pri, tmp106
	movl	4(%rax), %eax	# pri_7(D)->tnum, D.7083
	cmpl	-8(%rbp), %eax	# q, D.7083
	jg	.L52	#,
	.loc 1 191 0 is_stmt 1
	movq	-32(%rbp), %rax	# pri, tmp107
	movl	6408(%rax), %edx	# pri_7(D)->mnum, D.7083
	movq	-24(%rbp), %rax	# fp, tmp108
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 192 0
	movl	$0, -8(%rbp)	#, q
	jmp	.L53	#
.L56:
	.loc 1 194 0
	movq	-32(%rbp), %rax	# pri, tmp109
	movl	-8(%rbp), %edx	# q, tmp111
	movslq	%edx, %rdx	# tmp111, tmp110
	addq	$1600, %rdx	#, tmp112
	movss	12(%rax,%rdx,4), %xmm0	# pri_7(D)->mq, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp113
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp113,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 195 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L54	#
.L55:
	.loc 1 196 0 discriminator 2
	movq	-32(%rbp), %rcx	# pri, tmp114
	movl	-4(%rbp), %eax	# x, tmp116
	movslq	%eax, %rsi	# tmp116, tmp115
	movl	-8(%rbp), %eax	# q, tmp118
	movslq	%eax, %rdx	# tmp118, tmp117
	movq	%rdx, %rax	# tmp117, tmp119
	salq	$2, %rax	#, tmp119
	addq	%rdx, %rax	# tmp117, tmp119
	salq	$2, %rax	#, tmp120
	addq	%rsi, %rax	# tmp115, tmp121
	addq	$1800, %rax	#, tmp122
	movss	12(%rcx,%rax,4), %xmm0	# pri_7(D)->m, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp123
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp123,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 195 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L54:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.3
	cmpl	%eax, -4(%rbp)	# Alphabet_size.3, x
	jl	.L55	#,
	.loc 1 197 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp124
	movq	%rax, %rsi	# tmp124,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 192 0
	addl	$1, -8(%rbp)	#, q
.L53:
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pri, tmp125
	movl	6408(%rax), %eax	# pri_7(D)->mnum, D.7083
	cmpl	-8(%rbp), %eax	# q, D.7083
	jg	.L56	#,
	.loc 1 202 0 is_stmt 1
	movq	-32(%rbp), %rax	# pri, tmp126
	movl	23212(%rax), %edx	# pri_7(D)->inum, D.7083
	movq	-24(%rbp), %rax	# fp, tmp127
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp127,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 203 0
	movl	$0, -8(%rbp)	#, q
	jmp	.L57	#
.L60:
	.loc 1 205 0
	movq	-32(%rbp), %rax	# pri, tmp128
	movl	-8(%rbp), %edx	# q, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	addq	$5804, %rdx	#, tmp131
	movss	(%rax,%rdx,4), %xmm0	# pri_7(D)->iq, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp132
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp132,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 206 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L58	#
.L59:
	.loc 1 207 0 discriminator 2
	movq	-32(%rbp), %rcx	# pri, tmp133
	movl	-4(%rbp), %eax	# x, tmp135
	movslq	%eax, %rsi	# tmp135, tmp134
	movl	-8(%rbp), %eax	# q, tmp137
	movslq	%eax, %rdx	# tmp137, tmp136
	movq	%rdx, %rax	# tmp136, tmp138
	salq	$2, %rax	#, tmp138
	addq	%rdx, %rax	# tmp136, tmp138
	salq	$2, %rax	#, tmp139
	addq	%rsi, %rax	# tmp134, tmp140
	addq	$6004, %rax	#, tmp141
	movss	(%rcx,%rax,4), %xmm0	# pri_7(D)->i, D.7084
	unpcklps	%xmm0, %xmm0	# D.7084, D.7084
	cvtps2pd	%xmm0, %xmm0	# D.7084, D.7085
	movq	-24(%rbp), %rax	# fp, tmp142
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp142,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 206 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L58:
	.loc 1 206 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.4
	cmpl	%eax, -4(%rbp)	# Alphabet_size.4, x
	jl	.L59	#,
	.loc 1 208 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp143
	movq	%rax, %rsi	# tmp143,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 203 0
	addl	$1, -8(%rbp)	#, q
.L57:
	.loc 1 203 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pri, tmp144
	movl	23212(%rax), %eax	# pri_7(D)->inum, D.7083
	cmpl	-8(%rbp), %eax	# q, D.7083
	jg	.L60	#,
	.loc 1 210 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	P7PrintPrior, .-P7PrintPrior
	.globl	TraceVerify
	.type	TraceVerify, @function
TraceVerify:
.LFB6:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# tr, tr
	movl	%esi, -44(%rbp)	# M, M
	movl	%edx, -48(%rbp)	# N, N
	.loc 1 235 0
	movq	-40(%rbp), %rax	# tr, tmp246
	movq	8(%rax), %rax	# tr_19(D)->statetype, D.7095
	movzbl	(%rax), %eax	# *_20, D.7096
	cmpb	$4, %al	#, D.7096
	je	.L62	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L62:
	.loc 1 236 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp247
	movq	8(%rax), %rax	# tr_19(D)->statetype, D.7095
	addq	$1, %rax	#, D.7095
	movzbl	(%rax), %eax	# *_24, D.7096
	cmpb	$5, %al	#, D.7096
	je	.L64	#,
	.loc 1 236 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L64:
	.loc 1 237 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp248
	movq	8(%rax), %rdx	# tr_19(D)->statetype, D.7095
	movq	-40(%rbp), %rax	# tr, tmp249
	movl	(%rax), %eax	# tr_19(D)->tlen, D.7094
	cltq
	subq	$2, %rax	#, D.7097
	addq	%rdx, %rax	# D.7095, D.7095
	movzbl	(%rax), %eax	# *_31, D.7096
	cmpb	$8, %al	#, D.7096
	je	.L65	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L65:
	.loc 1 238 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp250
	movq	8(%rax), %rdx	# tr_19(D)->statetype, D.7095
	movq	-40(%rbp), %rax	# tr, tmp251
	movl	(%rax), %eax	# tr_19(D)->tlen, D.7094
	cltq
	subq	$1, %rax	#, D.7097
	addq	%rdx, %rax	# D.7095, D.7095
	movzbl	(%rax), %eax	# *_38, D.7096
	cmpb	$9, %al	#, D.7096
	je	.L66	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L66:
	.loc 1 239 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp252
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	addq	$4, %rax	#, D.7098
	movl	(%rax), %eax	# *_42, D.7094
	testl	%eax, %eax	# D.7094
	je	.L67	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L67:
	.loc 1 243 0 is_stmt 1
	movl	$0, -4(%rbp)	#, nm
	movl	-4(%rbp), %eax	# nm, tmp253
	movl	%eax, -8(%rbp)	# tmp253, nj
	movl	-8(%rbp), %eax	# nj, tmp254
	movl	%eax, -12(%rbp)	# tmp254, nc
	movl	-12(%rbp), %eax	# nc, tmp255
	movl	%eax, -16(%rbp)	# tmp255, nn
	movl	-16(%rbp), %eax	# nn, tmp256
	movl	%eax, -20(%rbp)	# tmp256, i
	movl	-20(%rbp), %eax	# i, tmp257
	movl	%eax, -24(%rbp)	# tmp257, k
	.loc 1 244 0
	movl	$0, -28(%rbp)	#, tpos
	jmp	.L68	#
.L124:
	.loc 1 246 0
	movq	-40(%rbp), %rax	# tr, tmp258
	movq	8(%rax), %rdx	# tr_19(D)->statetype, D.7095
	movl	-28(%rbp), %eax	# tpos, tmp259
	cltq
	addq	%rdx, %rax	# D.7095, D.7095
	movzbl	(%rax), %eax	# *_55, D.7096
	movsbl	%al, %eax	# D.7096, D.7094
	cmpl	$10, %eax	#, D.7094
	ja	.L69	#,
	movl	%eax, %eax	# D.7094, tmp260
	movq	.L71(,%rax,8), %rax	#, tmp261
	jmp	*%rax	# tmp261
	.section	.rodata
	.align 8
	.align 4
.L71:
	.quad	.L69
	.quad	.L70
	.quad	.L72
	.quad	.L73
	.quad	.L74
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.quad	.L79
	.quad	.L80
	.text
.L74:
	.loc 1 248 0
	movq	-40(%rbp), %rax	# tr, tmp262
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp263
	movslq	%edx, %rdx	# tmp263, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_61, D.7094
	testl	%eax, %eax	# D.7094
	je	.L81	#,
	.loc 1 248 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L81:
	.loc 1 249 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp264
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp265
	movslq	%edx, %rdx	# tmp265, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_67, D.7094
	testl	%eax, %eax	# D.7094
	je	.L82	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L82:
	.loc 1 250 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, k
	je	.L83	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L83:
	.loc 1 251 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, i
	je	.L84	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L84:
	.loc 1 252 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, tpos
	je	.L85	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L85:
	.loc 1 253 0 is_stmt 1
	jmp	.L86	#
.L75:
	.loc 1 256 0
	movq	-40(%rbp), %rax	# tr, tmp266
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp267
	movslq	%edx, %rdx	# tmp267, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_76, D.7094
	testl	%eax, %eax	# D.7094
	je	.L87	#,
	.loc 1 256 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L87:
	.loc 1 257 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, k
	je	.L88	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L88:
	.loc 1 258 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, nn
	jle	.L89	#,
	.loc 1 260 0
	movq	-40(%rbp), %rax	# tr, tmp268
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp269
	movslq	%edx, %rdx	# tmp269, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_83, D.7094
	movl	-20(%rbp), %edx	# i, tmp270
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L90	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L90:
	.loc 1 261 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
	jmp	.L91	#
.L89:
	.loc 1 265 0
	movq	-40(%rbp), %rax	# tr, tmp271
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp272
	movslq	%edx, %rdx	# tmp272, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_91, D.7094
	testl	%eax, %eax	# D.7094
	je	.L92	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L92:
	.loc 1 266 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, i
	je	.L91	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L91:
	.loc 1 268 0 is_stmt 1
	addl	$1, -16(%rbp)	#, nn
	.loc 1 269 0
	jmp	.L86	#
.L76:
	.loc 1 272 0
	movq	-40(%rbp), %rax	# tr, tmp273
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp274
	movslq	%edx, %rdx	# tmp274, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_99, D.7094
	testl	%eax, %eax	# D.7094
	je	.L93	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L93:
	.loc 1 273 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp275
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp276
	movslq	%edx, %rdx	# tmp276, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_105, D.7094
	testl	%eax, %eax	# D.7094
	je	.L94	#,
	.loc 1 273 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L94:
	.loc 1 274 0 is_stmt 1
	movl	$0, -4(%rbp)	#, nm
	.loc 1 275 0
	jmp	.L86	#
.L70:
	.loc 1 278 0
	movq	-40(%rbp), %rax	# tr, tmp277
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp278
	movslq	%edx, %rdx	# tmp278, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_112, D.7094
	movl	-20(%rbp), %edx	# i, tmp279
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L95	#,
	.loc 1 278 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L95:
	.loc 1 279 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp280
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp281
	movslq	%edx, %rdx	# tmp281, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_119, D.7094
	testl	%eax, %eax	# D.7094
	jle	.L96	#,
	.loc 1 279 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tmp282
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp283
	movslq	%edx, %rdx	# tmp283, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_124, D.7094
	cmpl	-44(%rbp), %eax	# M, D.7094
	jle	.L97	#,
.L96:
	.loc 1 279 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L97:
	.loc 1 280 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
	.loc 1 281 0
	cmpl	$0, -4(%rbp)	#, nm
	jne	.L98	#,
	.loc 1 281 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp284
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp285
	movslq	%edx, %rdx	# tmp285, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_131, tmp286
	movl	%eax, -24(%rbp)	# tmp286, k
	jmp	.L99	#
.L98:
	.loc 1 283 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp287
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp288
	movslq	%edx, %rdx	# tmp288, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_136, D.7094
	movl	-24(%rbp), %edx	# k, tmp289
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L100	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L100:
	.loc 1 284 0 is_stmt 1
	addl	$1, -24(%rbp)	#, k
.L99:
	.loc 1 286 0
	addl	$1, -4(%rbp)	#, nm
	.loc 1 287 0
	jmp	.L86	#
.L73:
	.loc 1 290 0
	movq	-40(%rbp), %rax	# tr, tmp290
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp291
	movslq	%edx, %rdx	# tmp291, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_146, D.7094
	movl	-20(%rbp), %edx	# i, tmp292
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L101	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L101:
	.loc 1 291 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp293
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp294
	movslq	%edx, %rdx	# tmp294, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_153, D.7094
	cmpl	-24(%rbp), %eax	# k, D.7094
	je	.L102	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L102:
	.loc 1 292 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp295
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp296
	movslq	%edx, %rdx	# tmp296, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_159, D.7094
	testl	%eax, %eax	# D.7094
	jle	.L103	#,
	.loc 1 292 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tmp297
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp298
	movslq	%edx, %rdx	# tmp298, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_164, D.7094
	movl	-44(%rbp), %edx	# M, tmp299
	subl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	jle	.L104	#,
.L103:
	.loc 1 292 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L104:
	.loc 1 293 0 is_stmt 1
	movl	-24(%rbp), %eax	# k, tmp300
	cmpl	-44(%rbp), %eax	# M, tmp300
	jl	.L105	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L105:
	.loc 1 294 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
	.loc 1 295 0
	jmp	.L86	#
.L72:
	.loc 1 298 0
	movq	-40(%rbp), %rax	# tr, tmp301
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp302
	movslq	%edx, %rdx	# tmp302, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_173, D.7094
	testl	%eax, %eax	# D.7094
	je	.L106	#,
	.loc 1 298 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L106:
	.loc 1 299 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp303
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp304
	movslq	%edx, %rdx	# tmp304, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_179, D.7094
	movl	-24(%rbp), %edx	# k, tmp305
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L107	#,
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L107:
	.loc 1 300 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp306
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp307
	movslq	%edx, %rdx	# tmp307, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_186, D.7094
	testl	%eax, %eax	# D.7094
	jle	.L108	#,
	.loc 1 300 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# tr, tmp308
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp309
	movslq	%edx, %rdx	# tmp309, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_191, D.7094
	cmpl	-44(%rbp), %eax	# M, D.7094
	jle	.L109	#,
.L108:
	.loc 1 300 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L109:
	.loc 1 301 0 is_stmt 1
	addl	$1, -24(%rbp)	#, k
	.loc 1 302 0
	jmp	.L86	#
.L77:
	.loc 1 305 0
	movq	-40(%rbp), %rax	# tr, tmp310
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp311
	movslq	%edx, %rdx	# tmp311, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_198, D.7094
	testl	%eax, %eax	# D.7094
	je	.L110	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L110:
	.loc 1 306 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp312
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp313
	movslq	%edx, %rdx	# tmp313, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_204, D.7094
	testl	%eax, %eax	# D.7094
	je	.L111	#,
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L111:
	.loc 1 307 0 is_stmt 1
	movl	$0, -8(%rbp)	#, nj
	.loc 1 308 0
	jmp	.L86	#
.L80:
	.loc 1 311 0
	movq	-40(%rbp), %rax	# tr, tmp314
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp315
	movslq	%edx, %rdx	# tmp315, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_211, D.7094
	testl	%eax, %eax	# D.7094
	je	.L112	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L112:
	.loc 1 312 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, nj
	jle	.L113	#,
	.loc 1 314 0
	movq	-40(%rbp), %rax	# tr, tmp316
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp317
	movslq	%edx, %rdx	# tmp317, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_217, D.7094
	movl	-20(%rbp), %edx	# i, tmp318
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L114	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L114:
	.loc 1 315 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
	jmp	.L115	#
.L113:
	.loc 1 317 0
	movq	-40(%rbp), %rax	# tr, tmp319
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp320
	movslq	%edx, %rdx	# tmp320, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_225, D.7094
	testl	%eax, %eax	# D.7094
	je	.L115	#,
	.loc 1 317 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L115:
	.loc 1 318 0 is_stmt 1
	addl	$1, -8(%rbp)	#, nj
	.loc 1 319 0
	jmp	.L86	#
.L78:
	.loc 1 322 0
	movq	-40(%rbp), %rax	# tr, tmp321
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp322
	movslq	%edx, %rdx	# tmp322, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_232, D.7094
	testl	%eax, %eax	# D.7094
	je	.L116	#,
	.loc 1 322 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L116:
	.loc 1 323 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, nc
	jle	.L117	#,
	.loc 1 325 0
	movq	-40(%rbp), %rax	# tr, tmp323
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp324
	movslq	%edx, %rdx	# tmp324, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_238, D.7094
	movl	-20(%rbp), %edx	# i, tmp325
	addl	$1, %edx	#, D.7094
	cmpl	%edx, %eax	# D.7094, D.7094
	je	.L118	#,
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L118:
	.loc 1 326 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i
	jmp	.L119	#
.L117:
	.loc 1 328 0
	movq	-40(%rbp), %rax	# tr, tmp326
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp327
	movslq	%edx, %rdx	# tmp327, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_246, D.7094
	testl	%eax, %eax	# D.7094
	je	.L119	#,
	.loc 1 328 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L119:
	.loc 1 329 0 is_stmt 1
	addl	$1, -12(%rbp)	#, nc
	.loc 1 330 0
	jmp	.L86	#
.L79:
	.loc 1 333 0
	movq	-40(%rbp), %rax	# tr, tmp328
	movl	(%rax), %eax	# tr_19(D)->tlen, D.7094
	subl	$1, %eax	#, D.7094
	cmpl	-28(%rbp), %eax	# tpos, D.7094
	je	.L120	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L120:
	.loc 1 334 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp329
	movq	16(%rax), %rax	# tr_19(D)->nodeidx, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp330
	movslq	%edx, %rdx	# tmp330, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_256, D.7094
	testl	%eax, %eax	# D.7094
	je	.L121	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L121:
	.loc 1 335 0 is_stmt 1
	movq	-40(%rbp), %rax	# tr, tmp331
	movq	24(%rax), %rax	# tr_19(D)->pos, D.7098
	movl	-28(%rbp), %edx	# tpos, tmp332
	movslq	%edx, %rdx	# tmp332, D.7099
	salq	$2, %rdx	#, D.7099
	addq	%rdx, %rax	# D.7099, D.7098
	movl	(%rax), %eax	# *_262, D.7094
	testl	%eax, %eax	# D.7094
	je	.L122	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L122:
	.loc 1 336 0 is_stmt 1
	movl	-20(%rbp), %eax	# i, tmp333
	cmpl	-48(%rbp), %eax	# N, tmp333
	je	.L123	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L123:
	.loc 1 337 0 is_stmt 1
	jmp	.L86	#
.L69:
	.loc 1 341 0
	movl	$0, %eax	#, D.7094
	jmp	.L63	#
.L86:
	.loc 1 244 0
	addl	$1, -28(%rbp)	#, tpos
.L68:
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# tr, tmp334
	movl	(%rax), %eax	# tr_19(D)->tlen, D.7094
	cmpl	-28(%rbp), %eax	# tpos, D.7094
	jg	.L124	#,
	.loc 1 345 0 is_stmt 1
	movl	$1, %eax	#, D.7094
.L63:
	.loc 1 346 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	TraceVerify, .-TraceVerify
	.globl	TraceCompare
	.type	TraceCompare, @function
TraceCompare:
.LFB7:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# t1, t1
	movq	%rsi, -32(%rbp)	# t2, t2
	.loc 1 365 0
	movq	-24(%rbp), %rax	# t1, tmp92
	movl	(%rax), %edx	# t1_3(D)->tlen, D.7100
	movq	-32(%rbp), %rax	# t2, tmp93
	movl	(%rax), %eax	# t2_5(D)->tlen, D.7100
	cmpl	%eax, %edx	# D.7100, D.7100
	je	.L126	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7100
	jmp	.L127	#
.L126:
	.loc 1 367 0 is_stmt 1
	movl	$0, -4(%rbp)	#, tpos
	jmp	.L128	#
.L132:
	.loc 1 369 0
	movq	-24(%rbp), %rax	# t1, tmp94
	movq	8(%rax), %rdx	# t1_3(D)->statetype, D.7101
	movl	-4(%rbp), %eax	# tpos, tmp95
	cltq
	addq	%rdx, %rax	# D.7101, D.7101
	movzbl	(%rax), %edx	# *_12, D.7103
	movq	-32(%rbp), %rax	# t2, tmp96
	movq	8(%rax), %rcx	# t2_5(D)->statetype, D.7101
	movl	-4(%rbp), %eax	# tpos, tmp97
	cltq
	addq	%rcx, %rax	# D.7101, D.7101
	movzbl	(%rax), %eax	# *_16, D.7103
	cmpb	%al, %dl	# D.7103, D.7103
	je	.L129	#,
	.loc 1 369 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7100
	jmp	.L127	#
.L129:
	.loc 1 370 0 is_stmt 1
	movq	-24(%rbp), %rax	# t1, tmp98
	movq	16(%rax), %rax	# t1_3(D)->nodeidx, D.7104
	movl	-4(%rbp), %edx	# tpos, tmp99
	movslq	%edx, %rdx	# tmp99, D.7105
	salq	$2, %rdx	#, D.7105
	addq	%rdx, %rax	# D.7105, D.7104
	movl	(%rax), %edx	# *_22, D.7100
	movq	-32(%rbp), %rax	# t2, tmp100
	movq	16(%rax), %rax	# t2_5(D)->nodeidx, D.7104
	movl	-4(%rbp), %ecx	# tpos, tmp101
	movslq	%ecx, %rcx	# tmp101, D.7105
	salq	$2, %rcx	#, D.7105
	addq	%rcx, %rax	# D.7105, D.7104
	movl	(%rax), %eax	# *_27, D.7100
	cmpl	%eax, %edx	# D.7100, D.7100
	je	.L130	#,
	.loc 1 370 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7100
	jmp	.L127	#
.L130:
	.loc 1 371 0 is_stmt 1
	movq	-24(%rbp), %rax	# t1, tmp102
	movq	24(%rax), %rax	# t1_3(D)->pos, D.7104
	movl	-4(%rbp), %edx	# tpos, tmp103
	movslq	%edx, %rdx	# tmp103, D.7105
	salq	$2, %rdx	#, D.7105
	addq	%rdx, %rax	# D.7105, D.7104
	movl	(%rax), %edx	# *_33, D.7100
	movq	-32(%rbp), %rax	# t2, tmp104
	movq	24(%rax), %rax	# t2_5(D)->pos, D.7104
	movl	-4(%rbp), %ecx	# tpos, tmp105
	movslq	%ecx, %rcx	# tmp105, D.7105
	salq	$2, %rcx	#, D.7105
	addq	%rcx, %rax	# D.7105, D.7104
	movl	(%rax), %eax	# *_38, D.7100
	cmpl	%eax, %edx	# D.7100, D.7100
	je	.L131	#,
	.loc 1 371 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7100
	jmp	.L127	#
.L131:
	.loc 1 367 0 is_stmt 1
	addl	$1, -4(%rbp)	#, tpos
.L128:
	.loc 1 367 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# t1, tmp106
	movl	(%rax), %eax	# t1_3(D)->tlen, D.7100
	cmpl	-4(%rbp), %eax	# tpos, D.7100
	jg	.L132	#,
	.loc 1 373 0 is_stmt 1
	movl	$1, %eax	#, D.7100
.L127:
	.loc 1 374 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	TraceCompare, .-TraceCompare
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8cc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF95
	.byte	0x1
	.long	.LASF96
	.long	.LASF97
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
	.long	.LASF98
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
	.long	0x2a6
	.uleb128 0xd
	.long	.LASF51
	.value	0x1d0
	.byte	0x6
	.byte	0x65
	.long	0x517
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x71
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x72
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x73
	.long	0x8f
	.byte	0x10
	.uleb128 0xe
	.string	"rf"
	.byte	0x6
	.byte	0x74
	.long	0x8f
	.byte	0x18
	.uleb128 0xe
	.string	"cs"
	.byte	0x6
	.byte	0x75
	.long	0x8f
	.byte	0x20
	.uleb128 0xe
	.string	"ca"
	.byte	0x6
	.byte	0x76
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x77
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x79
	.long	0x8f
	.byte	0x40
	.uleb128 0xe
	.string	"map"
	.byte	0x6
	.byte	0x7a
	.long	0x292
	.byte	0x48
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x86
	.long	0x292
	.byte	0x58
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x87
	.long	0x292
	.byte	0x60
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x88
	.long	0x292
	.byte	0x68
	.uleb128 0xe
	.string	"ga1"
	.byte	0x6
	.byte	0x90
	.long	0x2a6
	.byte	0x70
	.uleb128 0xe
	.string	"ga2"
	.byte	0x6
	.byte	0x90
	.long	0x2a6
	.byte	0x74
	.uleb128 0xe
	.string	"tc1"
	.byte	0x6
	.byte	0x91
	.long	0x2a6
	.byte	0x78
	.uleb128 0xe
	.string	"tc2"
	.byte	0x6
	.byte	0x91
	.long	0x2a6
	.byte	0x7c
	.uleb128 0xe
	.string	"nc1"
	.byte	0x6
	.byte	0x92
	.long	0x2a6
	.byte	0x80
	.uleb128 0xe
	.string	"nc2"
	.byte	0x6
	.byte	0x92
	.long	0x2a6
	.byte	0x84
	.uleb128 0xe
	.string	"M"
	.byte	0x6
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0xe
	.string	"t"
	.byte	0x6
	.byte	0x9c
	.long	0x517
	.byte	0x90
	.uleb128 0xe
	.string	"mat"
	.byte	0x6
	.byte	0x9d
	.long	0x517
	.byte	0x98
	.uleb128 0xe
	.string	"ins"
	.byte	0x6
	.byte	0x9e
	.long	0x517
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x9f
	.long	0x2a6
	.byte	0xa8
	.uleb128 0xe
	.string	"xt"
	.byte	0x6
	.byte	0xa8
	.long	0x51d
	.byte	0xac
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0xa9
	.long	0x2ba
	.byte	0xd0
	.uleb128 0xe
	.string	"end"
	.byte	0x6
	.byte	0xaa
	.long	0x2ba
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0xae
	.long	0x533
	.byte	0xe0
	.uleb128 0xf
	.string	"p1"
	.byte	0x6
	.byte	0xaf
	.long	0x2a6
	.value	0x130
	.uleb128 0xf
	.string	"tsc"
	.byte	0x6
	.byte	0xc5
	.long	0x543
	.value	0x138
	.uleb128 0xf
	.string	"msc"
	.byte	0x6
	.byte	0xc6
	.long	0x543
	.value	0x140
	.uleb128 0xf
	.string	"isc"
	.byte	0x6
	.byte	0xc7
	.long	0x543
	.value	0x148
	.uleb128 0xf
	.string	"xsc"
	.byte	0x6
	.byte	0xc8
	.long	0x549
	.value	0x150
	.uleb128 0xf
	.string	"bsc"
	.byte	0x6
	.byte	0xc9
	.long	0x292
	.value	0x170
	.uleb128 0xf
	.string	"esc"
	.byte	0x6
	.byte	0xca
	.long	0x292
	.value	0x178
	.uleb128 0x10
	.long	.LASF64
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x180
	.uleb128 0x10
	.long	.LASF65
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x188
	.uleb128 0x10
	.long	.LASF66
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x190
	.uleb128 0x10
	.long	.LASF67
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x198
	.uleb128 0x10
	.long	.LASF68
	.byte	0x6
	.byte	0xcb
	.long	0x292
	.value	0x1a0
	.uleb128 0x10
	.long	.LASF69
	.byte	0x6
	.byte	0xd6
	.long	0x543
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF70
	.byte	0x6
	.byte	0xd7
	.long	0x543
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x6
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF72
	.byte	0x6
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0xf
	.string	"mu"
	.byte	0x6
	.byte	0xde
	.long	0x2a6
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x6
	.byte	0xdf
	.long	0x2a6
	.value	0x1c4
	.uleb128 0x10
	.long	.LASF74
	.byte	0x6
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ba
	.uleb128 0xb
	.long	0x2a6
	.long	0x533
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x543
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xb
	.long	0x62
	.long	0x55f
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2c0
	.uleb128 0x11
	.long	.LASF75
	.byte	0x20
	.byte	0x6
	.value	0x176
	.long	0x5a7
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x177
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x178
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0x6
	.value	0x179
	.long	0x292
	.byte	0x10
	.uleb128 0x12
	.string	"pos"
	.byte	0x6
	.value	0x17a
	.long	0x292
	.byte	0x18
	.byte	0
	.uleb128 0x13
	.long	.LASF79
	.value	0x9c50
	.byte	0x6
	.value	0x181
	.long	0x636
	.uleb128 0x9
	.long	.LASF80
	.byte	0x6
	.value	0x182
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF81
	.byte	0x6
	.value	0x184
	.long	0x62
	.byte	0x4
	.uleb128 0x12
	.string	"tq"
	.byte	0x6
	.value	0x185
	.long	0x636
	.byte	0x8
	.uleb128 0x14
	.string	"t"
	.byte	0x6
	.value	0x186
	.long	0x646
	.value	0x328
	.uleb128 0x15
	.long	.LASF82
	.byte	0x6
	.value	0x188
	.long	0x62
	.value	0x1908
	.uleb128 0x14
	.string	"mq"
	.byte	0x6
	.value	0x189
	.long	0x636
	.value	0x190c
	.uleb128 0x14
	.string	"m"
	.byte	0x6
	.value	0x18a
	.long	0x65c
	.value	0x1c2c
	.uleb128 0x15
	.long	.LASF83
	.byte	0x6
	.value	0x18c
	.long	0x62
	.value	0x5aac
	.uleb128 0x14
	.string	"iq"
	.byte	0x6
	.value	0x18d
	.long	0x636
	.value	0x5ab0
	.uleb128 0x14
	.string	"i"
	.byte	0x6
	.value	0x18e
	.long	0x65c
	.value	0x5dd0
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x646
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x65c
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.uleb128 0xc
	.long	0x86
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x672
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x26
	.long	0x8f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a1
	.uleb128 0x17
	.string	"st"
	.byte	0x1
	.byte	0x26
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x43
	.long	0x8f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d1
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0x43
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.byte	0x1
	.byte	0x59
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x752
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0x59
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"tr"
	.byte	0x1
	.byte	0x59
	.long	0x752
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"hmm"
	.byte	0x1
	.byte	0x59
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"dsq"
	.byte	0x1
	.byte	0x59
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.string	"sym"
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"sc"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.byte	0xa7
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a9
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.byte	0xa7
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"pri"
	.byte	0x1
	.byte	0xa7
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.string	"q"
	.byte	0x1
	.byte	0xa9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"x"
	.byte	0x1
	.byte	0xa9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a7
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0xe1
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x850
	.uleb128 0x17
	.string	"tr"
	.byte	0x1
	.byte	0xe1
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"M"
	.byte	0x1
	.byte	0xe1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"N"
	.byte	0x1
	.byte	0xe1
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0xe3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.string	"k"
	.byte	0x1
	.byte	0xe4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.string	"nn"
	.byte	0x1
	.byte	0xe6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"nc"
	.byte	0x1
	.byte	0xe6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.string	"nj"
	.byte	0x1
	.byte	0xe6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"nm"
	.byte	0x1
	.byte	0xe7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.value	0x169
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x89e
	.uleb128 0x1d
	.string	"t1"
	.byte	0x1
	.value	0x169
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"t2"
	.byte	0x1
	.value	0x169
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x16b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x8ae
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x6
	.byte	0x39
	.long	0x89e
	.uleb128 0x1f
	.long	.LASF93
	.byte	0x6
	.byte	0x3a
	.long	0x62
	.uleb128 0x1f
	.long	.LASF94
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
.LASF14:
	.string	"_IO_read_ptr"
.LASF7:
	.string	"size_t"
.LASF57:
	.string	"checksum"
.LASF32:
	.string	"_shortbuf"
.LASF77:
	.string	"statetype"
.LASF66:
	.string	"isc_mem"
.LASF86:
	.string	"type"
.LASF68:
	.string	"esc_mem"
.LASF55:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF64:
	.string	"tsc_mem"
.LASF73:
	.string	"lambda"
.LASF47:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF88:
	.string	"P7PrintTrace"
.LASF6:
	.string	"long int"
.LASF82:
	.string	"mnum"
.LASF70:
	.string	"dnai"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF75:
	.string	"p7trace_s"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF84:
	.string	"Statetype"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF62:
	.string	"begin"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF52:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF90:
	.string	"TraceVerify"
.LASF22:
	.string	"_IO_save_base"
.LASF96:
	.string	"debug.c"
.LASF59:
	.string	"mpri"
.LASF33:
	.string	"_lock"
.LASF40:
	.string	"_mode"
.LASF93:
	.string	"Alphabet_type"
.LASF56:
	.string	"ctime"
.LASF65:
	.string	"msc_mem"
.LASF10:
	.string	"sizetype"
.LASF79:
	.string	"p7prior_s"
.LASF67:
	.string	"bsc_mem"
.LASF61:
	.string	"tbd1"
.LASF53:
	.string	"desc"
.LASF69:
	.string	"dnam"
.LASF98:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF54:
	.string	"comlog"
.LASF87:
	.string	"tpos"
.LASF49:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF91:
	.string	"TraceCompare"
.LASF25:
	.string	"_markers"
.LASF63:
	.string	"null"
.LASF83:
	.string	"inum"
.LASF1:
	.string	"unsigned char"
.LASF71:
	.string	"dna2"
.LASF51:
	.string	"plan7_s"
.LASF5:
	.string	"short int"
.LASF26:
	.string	"_chain"
.LASF28:
	.string	"_flags2"
.LASF12:
	.string	"FILE"
.LASF81:
	.string	"tnum"
.LASF85:
	.string	"AlphabetType2String"
.LASF80:
	.string	"strategy"
.LASF11:
	.string	"char"
.LASF94:
	.string	"Alphabet_size"
.LASF78:
	.string	"nodeidx"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF89:
	.string	"P7PrintPrior"
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
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF60:
	.string	"ipri"
.LASF72:
	.string	"dna4"
.LASF95:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF74:
	.string	"flags"
.LASF31:
	.string	"_vtable_offset"
.LASF92:
	.string	"Alphabet"
.LASF97:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF58:
	.string	"tpri"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"double"
.LASF76:
	.string	"tlen"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
