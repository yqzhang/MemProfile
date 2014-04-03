	.file	"getopt.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 getopt.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"-"
.LC1:
	.string	"--"
	.align 8
.LC2:
	.string	"Option \"%s\" is ambiguous; please be more specific.\n%s"
.LC3:
	.string	"No such option \"%s\".\n%s"
	.align 8
.LC4:
	.string	"Option %s requires an argument\n%s"
	.align 8
.LC5:
	.string	"Option %s does not take an argument\n%s"
.LC6:
	.string	"No such option \"%c\".\n%s"
	.align 8
.LC7:
	.string	"Option %s requires an integer argument\n%s"
	.align 8
.LC8:
	.string	"Option %s requires a numerical argument\n%s"
	.align 8
.LC9:
	.string	"Option %s requires a single-character argument\n%s"
	.text
	.globl	Getopt
	.type	Getopt, @function
Getopt:
.LFB2:
	.file 1 "getopt.c"
	.loc 1 62 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
	movq	%rdx, -56(%rbp)	# opt, opt
	movl	%ecx, -40(%rbp)	# nopts, nopts
	movq	%r8, -64(%rbp)	# usage, usage
	movq	%r9, -72(%rbp)	# ret_optind, ret_optind
	.loc 1 68 0
	movl	$0, -24(%rbp)	#, opti
	.loc 1 74 0
	movl	optind.5581(%rip), %eax	# optind, optind.0
	cmpl	-36(%rbp), %eax	# argc, optind.0
	jge	.L2	#,
	.loc 1 74 0 is_stmt 0 discriminator 1
	movl	optind.5581(%rip), %eax	# optind, optind.1
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp270
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_19, D.5875
	movzbl	(%rax), %eax	# *_20, D.5876
	cmpb	$45, %al	#, D.5876
	jne	.L2	#,
	movl	optind.5581(%rip), %eax	# optind, optind.2
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp271
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_25, D.5875
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.5875,
	call	strcmp	#
	testl	%eax, %eax	# D.5872
	jne	.L3	#,
.L2:
	.loc 1 76 0 is_stmt 1
	movl	optind.5581(%rip), %edx	# optind, optind.3
	movq	-72(%rbp), %rax	# ret_optind, tmp272
	movl	%edx, (%rax)	# optind.3, *ret_optind_37(D)
	.loc 1 77 0
	movq	24(%rbp), %rax	# ret_optarg, tmp273
	movq	$0, (%rax)	#, *ret_optarg_39(D)
	.loc 1 78 0
	movq	16(%rbp), %rax	# ret_optname, tmp274
	movq	$0, (%rax)	#, *ret_optname_38(D)
	.loc 1 79 0
	movl	$0, %eax	#, D.5872
	jmp	.L4	#
.L3:
	.loc 1 85 0
	movl	optind.5581(%rip), %eax	# optind, optind.4
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp275
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_31, D.5875
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.5875,
	call	strcmp	#
	testl	%eax, %eax	# D.5872
	jne	.L5	#,
	.loc 1 87 0
	movl	optind.5581(%rip), %eax	# optind, optind.5
	addl	$1, %eax	#, optind.6
	movl	%eax, optind.5581(%rip)	# optind.6, optind
	.loc 1 88 0
	movl	optind.5581(%rip), %edx	# optind, optind.7
	movq	-72(%rbp), %rax	# ret_optind, tmp276
	movl	%edx, (%rax)	# optind.7, *ret_optind_37(D)
	.loc 1 89 0
	movq	16(%rbp), %rax	# ret_optname, tmp277
	movq	$0, (%rax)	#, *ret_optname_38(D)
	.loc 1 90 0
	movq	24(%rbp), %rax	# ret_optarg, tmp278
	movq	$0, (%rax)	#, *ret_optarg_39(D)
	.loc 1 91 0
	movl	$0, %eax	#, D.5872
	jmp	.L4	#
.L5:
	.loc 1 101 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.8
	testq	%rax, %rax	# optptr.8
	jne	.L6	#,
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	optind.5581(%rip), %eax	# optind, optind.9
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp279
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_45, D.5875
	movl	$2, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# D.5875,
	call	strncmp	#
	testl	%eax, %eax	# D.5872
	jne	.L6	#,
	.loc 1 105 0 is_stmt 1
	movl	optind.5581(%rip), %eax	# optind, optind.10
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp280
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_51, D.5875
	movl	$61, %esi	#,
	movq	%rax, %rdi	# D.5875,
	call	strchr	#
	movq	%rax, optptr.5582(%rip)	# optptr.11, optptr
	movq	optptr.5582(%rip), %rax	# optptr, optptr.12
	testq	%rax, %rax	# optptr.12
	je	.L7	#,
	.loc 1 106 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.13
	movb	$0, (%rax)	#, *optptr.13_55
	movq	optptr.5582(%rip), %rax	# optptr, optptr.14
	addq	$1, %rax	#, optptr.15
	movq	%rax, optptr.5582(%rip)	# optptr.15, optptr
.L7:
	.loc 1 108 0
	movl	optind.5581(%rip), %eax	# optind, optind.16
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp281
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_61, D.5875
	movq	%rax, %rdi	# D.5875,
	call	strlen	#
	movl	%eax, -20(%rbp)	# D.5873, arglen
	.loc 1 109 0
	movl	$0, -28(%rbp)	#, nmatch
	.loc 1 110 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L8	#
.L11:
	.loc 1 111 0
	movl	-32(%rbp), %eax	# i, tmp282
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp283
	addq	%rdx, %rax	# D.5873, D.5877
	movl	8(%rax), %eax	# _71->single, D.5872
	testl	%eax, %eax	# D.5872
	jne	.L9	#,
	.loc 1 112 0 discriminator 1
	movl	-20(%rbp), %eax	# arglen, tmp284
	movslq	%eax, %rdx	# tmp284, D.5873
	movl	optind.5581(%rip), %eax	# optind, optind.17
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp285
	addq	%rcx, %rax	# D.5873, D.5874
	movq	(%rax), %rcx	# *_77, D.5875
	movl	-32(%rbp), %eax	# i, tmp286
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rsi	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp287
	addq	%rsi, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _81->name, D.5875
	movq	%rcx, %rsi	# D.5875,
	movq	%rax, %rdi	# D.5875,
	call	strncmp	#
	.loc 1 111 0 discriminator 1
	testl	%eax, %eax	# D.5872
	jne	.L9	#,
	.loc 1 114 0
	addl	$1, -28(%rbp)	#, nmatch
	.loc 1 115 0
	movl	-32(%rbp), %eax	# i, tmp288
	movl	%eax, -24(%rbp)	# tmp288, opti
	.loc 1 116 0
	movl	-20(%rbp), %eax	# arglen, tmp289
	movslq	%eax, %rbx	# tmp289, D.5873
	movl	-32(%rbp), %eax	# i, tmp290
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp291
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _89->name, D.5875
	movq	%rax, %rdi	# D.5875,
	call	strlen	#
	cmpq	%rax, %rbx	# D.5873, D.5873
	jne	.L9	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	jmp	.L10	#
.L9:
	.loc 1 110 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L8:
	.loc 1 110 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp292
	cmpl	-40(%rbp), %eax	# nopts, tmp292
	jl	.L11	#,
.L10:
	.loc 1 118 0 is_stmt 1
	cmpl	$1, -28(%rbp)	#, nmatch
	jle	.L12	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# arglen, tmp293
	movslq	%eax, %rbx	# tmp293, D.5873
	movl	-32(%rbp), %eax	# i, tmp294
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp295
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _96->name, D.5875
	movq	%rax, %rdi	# D.5875,
	call	strlen	#
	cmpq	%rax, %rbx	# D.5873, D.5873
	je	.L12	#,
	.loc 1 120 0 is_stmt 1
	movl	optind.5581(%rip), %eax	# optind, optind.18
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp296
	addq	%rdx, %rax	# D.5873, D.5874
	.loc 1 119 0
	movq	(%rax), %rax	# *_102, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp297
	movq	%rax, %rsi	# D.5875,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L12:
	.loc 1 121 0
	cmpl	$0, -28(%rbp)	#, nmatch
	jne	.L13	#,
	.loc 1 122 0
	movl	optind.5581(%rip), %eax	# optind, optind.19
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp298
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_108, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp299
	movq	%rax, %rsi	# D.5875,
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L13:
	.loc 1 124 0
	movl	-24(%rbp), %eax	# opti, tmp300
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp301
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rdx	# _112->name, D.5875
	movq	16(%rbp), %rax	# ret_optname, tmp302
	movq	%rdx, (%rax)	# D.5875, *ret_optname_38(D)
	.loc 1 128 0
	movl	-24(%rbp), %eax	# opti, tmp303
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp304
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _116->argtype, D.5872
	testl	%eax, %eax	# D.5872
	je	.L14	#,
	.loc 1 130 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.20
	testq	%rax, %rax	# optptr.20
	je	.L15	#,
	.loc 1 132 0
	movq	optptr.5582(%rip), %rdx	# optptr, optptr.21
	movq	24(%rbp), %rax	# ret_optarg, tmp305
	movq	%rdx, (%rax)	# optptr.21, *ret_optarg_39(D)
	.loc 1 133 0
	movq	$0, optptr.5582(%rip)	#, optptr
	.loc 1 134 0
	movl	optind.5581(%rip), %eax	# optind, optind.22
	addl	$1, %eax	#, optind.23
	movl	%eax, optind.5581(%rip)	# optind.23, optind
	jmp	.L18	#
.L15:
	.loc 1 136 0
	movl	optind.5581(%rip), %eax	# optind, optind.24
	addl	$1, %eax	#, D.5872
	cmpl	-36(%rbp), %eax	# argc, D.5872
	jl	.L17	#,
	.loc 1 137 0
	movl	-24(%rbp), %eax	# opti, tmp306
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp307
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _126->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp308
	movq	%rax, %rsi	# D.5875,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L18	#
.L17:
	.loc 1 140 0
	movl	optind.5581(%rip), %eax	# optind, optind.25
	cltq
	addq	$1, %rax	#, D.5878
	leaq	0(,%rax,8), %rdx	#, D.5878
	movq	-48(%rbp), %rax	# argv, tmp309
	addq	%rdx, %rax	# D.5878, D.5874
	movq	(%rax), %rdx	# *_132, D.5875
	movq	24(%rbp), %rax	# ret_optarg, tmp310
	movq	%rdx, (%rax)	# D.5875, *ret_optarg_39(D)
	.loc 1 141 0
	movl	optind.5581(%rip), %eax	# optind, optind.26
	addl	$2, %eax	#, optind.27
	movl	%eax, optind.5581(%rip)	# optind.27, optind
	.loc 1 128 0
	jmp	.L20	#
.L14:
	.loc 1 146 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.28
	testq	%rax, %rax	# optptr.28
	je	.L19	#,
	.loc 1 147 0
	movl	-24(%rbp), %eax	# opti, tmp311
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp312
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _139->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp313
	movq	%rax, %rsi	# D.5875,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L19:
	.loc 1 148 0
	movq	24(%rbp), %rax	# ret_optarg, tmp314
	movq	$0, (%rax)	#, *ret_optarg_39(D)
	.loc 1 149 0
	movl	optind.5581(%rip), %eax	# optind, optind.29
	addl	$1, %eax	#, optind.30
	movl	%eax, optind.5581(%rip)	# optind.30, optind
	.loc 1 128 0
	jmp	.L20	#
.L18:
	jmp	.L20	#
.L6:
	.loc 1 155 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.31
	testq	%rax, %rax	# optptr.31
	jne	.L21	#,
	.loc 1 156 0
	movl	optind.5581(%rip), %eax	# optind, optind.32
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5873
	movq	-48(%rbp), %rax	# argv, tmp315
	addq	%rdx, %rax	# D.5873, D.5874
	movq	(%rax), %rax	# *_147, D.5875
	addq	$1, %rax	#, optptr.33
	movq	%rax, optptr.5582(%rip)	# optptr.33, optptr
.L21:
	.loc 1 157 0
	movl	$-1, -24(%rbp)	#, opti
	movl	$0, -32(%rbp)	#, i
	jmp	.L22	#
.L25:
	.loc 1 158 0
	movl	-32(%rbp), %eax	# i, tmp316
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp317
	addq	%rdx, %rax	# D.5873, D.5877
	movl	8(%rax), %eax	# _154->single, D.5872
	cmpl	$1, %eax	#, D.5872
	jne	.L23	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movq	optptr.5582(%rip), %rax	# optptr, optptr.34
	movzbl	(%rax), %edx	# *optptr.34_156, D.5876
	movl	-32(%rbp), %eax	# i, tmp318
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rcx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp319
	addq	%rcx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _160->name, D.5875
	addq	$1, %rax	#, D.5875
	movzbl	(%rax), %eax	# *_162, D.5876
	cmpb	%al, %dl	# D.5876, D.5876
	jne	.L23	#,
	.loc 1 159 0 is_stmt 1
	movl	-32(%rbp), %eax	# i, tmp320
	movl	%eax, -24(%rbp)	# tmp320, opti
	jmp	.L24	#
.L23:
	.loc 1 157 0
	addl	$1, -32(%rbp)	#, i
.L22:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp321
	cmpl	-40(%rbp), %eax	# nopts, tmp321
	jl	.L25	#,
.L24:
	.loc 1 160 0 is_stmt 1
	cmpl	$-1, -24(%rbp)	#, opti
	jne	.L26	#,
	.loc 1 161 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.35
	movzbl	(%rax), %eax	# *optptr.35_166, D.5876
	movsbl	%al, %eax	# D.5876, D.5872
	movq	-64(%rbp), %rdx	# usage, tmp322
	movl	%eax, %esi	# D.5872,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L26:
	.loc 1 162 0
	movl	-24(%rbp), %eax	# opti, tmp323
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp324
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rdx	# _171->name, D.5875
	movq	16(%rbp), %rax	# ret_optname, tmp325
	movq	%rdx, (%rax)	# D.5875, *ret_optname_38(D)
	.loc 1 165 0
	movl	-24(%rbp), %eax	# opti, tmp326
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp327
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _175->argtype, D.5872
	testl	%eax, %eax	# D.5872
	je	.L27	#,
	.loc 1 167 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.36
	addq	$1, %rax	#, D.5875
	movzbl	(%rax), %eax	# *_178, D.5876
	testb	%al, %al	# D.5876
	je	.L28	#,
	.loc 1 169 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.37
	leaq	1(%rax), %rdx	#, D.5875
	movq	24(%rbp), %rax	# ret_optarg, tmp328
	movq	%rdx, (%rax)	# D.5875, *ret_optarg_39(D)
	.loc 1 170 0
	movl	optind.5581(%rip), %eax	# optind, optind.38
	addl	$1, %eax	#, optind.39
	movl	%eax, optind.5581(%rip)	# optind.39, optind
	jmp	.L29	#
.L28:
	.loc 1 172 0
	movl	optind.5581(%rip), %eax	# optind, optind.40
	addl	$1, %eax	#, D.5872
	cmpl	-36(%rbp), %eax	# argc, D.5872
	jge	.L30	#,
	.loc 1 174 0
	movl	optind.5581(%rip), %eax	# optind, optind.41
	cltq
	addq	$1, %rax	#, D.5878
	leaq	0(,%rax,8), %rdx	#, D.5878
	movq	-48(%rbp), %rax	# argv, tmp329
	addq	%rdx, %rax	# D.5878, D.5874
	movq	(%rax), %rdx	# *_190, D.5875
	movq	24(%rbp), %rax	# ret_optarg, tmp330
	movq	%rdx, (%rax)	# D.5875, *ret_optarg_39(D)
	.loc 1 175 0
	movl	optind.5581(%rip), %eax	# optind, optind.42
	addl	$2, %eax	#, optind.43
	movl	%eax, optind.5581(%rip)	# optind.43, optind
	jmp	.L29	#
.L30:
	.loc 1 177 0
	movl	-24(%rbp), %eax	# opti, tmp331
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp332
	addq	%rdx, %rax	# D.5873, D.5877
	movq	(%rax), %rax	# _196->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp333
	movq	%rax, %rsi	# D.5875,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L29:
	.loc 1 179 0 discriminator 2
	movq	$0, optptr.5582(%rip)	#, optptr
	jmp	.L20	#
.L27:
	.loc 1 183 0
	movq	24(%rbp), %rax	# ret_optarg, tmp334
	movq	$0, (%rax)	#, *ret_optarg_39(D)
	.loc 1 184 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.44
	addq	$1, %rax	#, D.5875
	movzbl	(%rax), %eax	# *_199, D.5876
	testb	%al, %al	# D.5876
	je	.L31	#,
	.loc 1 185 0
	movq	optptr.5582(%rip), %rax	# optptr, optptr.45
	addq	$1, %rax	#, optptr.46
	movq	%rax, optptr.5582(%rip)	# optptr.46, optptr
	jmp	.L20	#
.L31:
	.loc 1 188 0
	movl	optind.5581(%rip), %eax	# optind, optind.47
	addl	$1, %eax	#, optind.48
	movl	%eax, optind.5581(%rip)	# optind.48, optind
	.loc 1 189 0
	movq	$0, optptr.5582(%rip)	#, optptr
.L20:
	.loc 1 197 0
	movl	-24(%rbp), %eax	# opti, tmp335
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp336
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _207->argtype, D.5872
	testl	%eax, %eax	# D.5872
	je	.L32	#,
	.loc 1 199 0
	movl	-24(%rbp), %eax	# opti, tmp337
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp338
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _211->argtype, D.5872
	cmpl	$1, %eax	#, D.5872
	jne	.L33	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# ret_optarg, tmp339
	movq	(%rax), %rax	# *ret_optarg_39(D), D.5875
	movq	%rax, %rdi	# D.5875,
	call	IsInt	#
	testl	%eax, %eax	# D.5872
	jne	.L33	#,
	.loc 1 201 0 is_stmt 1
	movl	-24(%rbp), %eax	# opti, tmp340
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp341
	addq	%rdx, %rax	# D.5873, D.5877
	.loc 1 200 0
	movq	(%rax), %rax	# _217->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp342
	movq	%rax, %rsi	# D.5875,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L32	#
.L33:
	.loc 1 202 0
	movl	-24(%rbp), %eax	# opti, tmp343
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp344
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _221->argtype, D.5872
	cmpl	$2, %eax	#, D.5872
	jne	.L34	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# ret_optarg, tmp345
	movq	(%rax), %rax	# *ret_optarg_39(D), D.5875
	movq	%rax, %rdi	# D.5875,
	call	IsReal	#
	testl	%eax, %eax	# D.5872
	jne	.L34	#,
	.loc 1 204 0 is_stmt 1
	movl	-24(%rbp), %eax	# opti, tmp346
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp347
	addq	%rdx, %rax	# D.5873, D.5877
	.loc 1 203 0
	movq	(%rax), %rax	# _227->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp348
	movq	%rax, %rsi	# D.5875,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L32	#
.L34:
	.loc 1 205 0
	movl	-24(%rbp), %eax	# opti, tmp349
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp350
	addq	%rdx, %rax	# D.5873, D.5877
	movl	12(%rax), %eax	# _231->argtype, D.5872
	cmpl	$3, %eax	#, D.5872
	jne	.L32	#,
	.loc 1 205 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# ret_optarg, tmp351
	movq	(%rax), %rax	# *ret_optarg_39(D), D.5875
	movq	%rax, %rdi	# D.5875,
	call	strlen	#
	cmpq	$1, %rax	#, D.5873
	je	.L32	#,
	.loc 1 207 0 is_stmt 1
	movl	-24(%rbp), %eax	# opti, tmp352
	cltq
	salq	$4, %rax	#, D.5873
	movq	%rax, %rdx	# D.5873, D.5873
	movq	-56(%rbp), %rax	# opt, tmp353
	addq	%rdx, %rax	# D.5873, D.5877
	.loc 1 206 0
	movq	(%rax), %rax	# _237->name, D.5875
	movq	-64(%rbp), %rdx	# usage, tmp354
	movq	%rax, %rsi	# D.5875,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L32:
	.loc 1 211 0
	movl	optind.5581(%rip), %edx	# optind, optind.49
	movq	-72(%rbp), %rax	# ret_optind, tmp355
	movl	%edx, (%rax)	# optind.49, *ret_optind_37(D)
	.loc 1 212 0
	movl	$1, %eax	#, D.5872
.L4:
	.loc 1 213 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Getopt, .-Getopt
	.data
	.align 4
	.type	optind.5581, @object
	.size	optind.5581, 4
optind.5581:
	.long	1
	.local	optptr.5582
	.comm	optptr.5582,8,8
	.text
.Letext0:
	.file 2 "squid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ce
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF28
	.byte	0x1
	.long	.LASF29
	.long	.LASF30
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
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x5
	.long	.LASF31
	.byte	0x10
	.byte	0x2
	.value	0x14a
	.long	0xd6
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.value	0x14b
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.value	0x14c
	.long	0x57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.value	0x14d
	.long	0x57
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cb
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x3c
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.string	"opt"
	.byte	0x1
	.byte	0x3c
	.long	0x1cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.byte	0x3c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x3c
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.byte	0x3d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x3d
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0x3d
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x40
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.byte	0x41
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x42
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	optind.5581
	.uleb128 0xb
	.long	.LASF26
	.byte	0x1
	.byte	0x43
	.long	0x6c
	.uleb128 0x9
	.byte	0x3
	.quad	optptr.5582
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x44
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xa1
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
	.uleb128 0x6
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
.LASF26:
	.string	"optptr"
.LASF11:
	.string	"float"
.LASF23:
	.string	"arglen"
.LASF12:
	.string	"double"
.LASF18:
	.string	"nopts"
.LASF24:
	.string	"nmatch"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"argtype"
.LASF25:
	.string	"optind"
.LASF2:
	.string	"short unsigned int"
.LASF32:
	.string	"Getopt"
.LASF0:
	.string	"long unsigned int"
.LASF20:
	.string	"ret_optind"
.LASF19:
	.string	"usage"
.LASF30:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF8:
	.string	"char"
.LASF27:
	.string	"opti"
.LASF29:
	.string	"getopt.c"
.LASF16:
	.string	"argc"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"name"
.LASF28:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF17:
	.string	"argv"
.LASF22:
	.string	"ret_optarg"
.LASF21:
	.string	"ret_optname"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF14:
	.string	"single"
.LASF31:
	.string	"opt_s"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
