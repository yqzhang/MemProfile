	.file	"emit.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 emit.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"emit.c"
.LC1:
	.string	"never happens"
.LC2:
	.string	"can't happen."
	.text
	.globl	EmitSequence
	.type	EmitSequence, @function
EmitSequence:
.LFB2:
	.file 1 "emit.c"
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# hmm, hmm
	movq	%rsi, -80(%rbp)	# ret_dsq, ret_dsq
	movq	%rdx, -88(%rbp)	# ret_L, ret_L
	movq	%rcx, -96(%rbp)	# ret_tr, ret_tr
	.loc 1 57 0
	leaq	-32(%rbp), %rax	#, tmp161
	movq	%rax, %rsi	# tmp161,
	movl	$64, %edi	#,
	call	P7AllocTrace	#
	.loc 1 58 0
	movl	$64, -48(%rbp)	#, alloc_tlen
	.loc 1 59 0
	movl	$64, %edx	#,
	movl	$59, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp162, dsq
	.loc 1 60 0
	movl	$64, -44(%rbp)	#, alloc_L
	.loc 1 62 0
	movq	-32(%rbp), %rax	# tr, tr.0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tr.0,
	call	TraceSet	#
	.loc 1 63 0
	movq	-32(%rbp), %rax	# tr, tr.1
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tr.1,
	call	TraceSet	#
	.loc 1 64 0
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.2
	movl	%eax, %edx	# Alphabet_iupac.2, D.6898
	movq	-24(%rbp), %rax	# dsq, tmp163
	movb	%dl, (%rax)	# D.6898, *dsq_29
	.loc 1 65 0
	movl	$1, -52(%rbp)	#, L
	.loc 1 66 0
	movl	$0, -56(%rbp)	#, k
	.loc 1 67 0
	movb	$5, -57(%rbp)	#, type
	.loc 1 68 0
	movl	$2, -40(%rbp)	#, tpos
	.loc 1 70 0
	jmp	.L2	#
.L49:
	.loc 1 74 0
	movsbl	-57(%rbp), %eax	# type, D.6899
	cmpl	$10, %eax	#, D.6899
	ja	.L3	#,
	movl	%eax, %eax	# D.6899, tmp164
	movq	.L5(,%rax,8), %rax	#, tmp165
	jmp	*%rax	# tmp165
	.section	.rodata
	.align 8
	.align 4
.L5:
	.quad	.L3
	.quad	.L4
	.quad	.L6
	.quad	.L7
	.quad	.L3
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L3
	.quad	.L12
	.text
.L9:
	.loc 1 76 0
	movq	-72(%rbp), %rax	# hmm, tmp166
	movq	208(%rax), %rdx	# hmm_40(D)->begin, D.6900
	movq	-72(%rbp), %rax	# hmm, tmp167
	movl	168(%rax), %eax	# hmm_40(D)->tbd1, D.6901
	movl	%eax, (%rdx)	# D.6901, *_41
	.loc 1 77 0
	movq	-72(%rbp), %rax	# hmm, tmp168
	movl	136(%rax), %eax	# hmm_40(D)->M, D.6899
	leal	1(%rax), %edx	#, D.6899
	movq	-72(%rbp), %rax	# hmm, tmp169
	movq	208(%rax), %rax	# hmm_40(D)->begin, D.6900
	movl	%edx, %esi	# D.6899,
	movq	%rax, %rdi	# D.6900,
	call	FChoose	#
	movl	%eax, -56(%rbp)	# tmp170, k
	.loc 1 78 0
	cmpl	$0, -56(%rbp)	#, k
	jne	.L13	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movb	$2, -57(%rbp)	#, type
	movl	$1, -56(%rbp)	#, k
	.loc 1 79 0 is_stmt 1 discriminator 1
	jmp	.L15	#
.L13:
	.loc 1 78 0 discriminator 2
	movb	$1, -57(%rbp)	#, type
	.loc 1 79 0 discriminator 2
	jmp	.L15	#
.L7:
	.loc 1 81 0
	movq	-72(%rbp), %rax	# hmm, tmp171
	movq	144(%rax), %rax	# hmm_40(D)->t, D.6902
	movl	-56(%rbp), %edx	# k, tmp172
	movslq	%edx, %rdx	# tmp172, D.6903
	salq	$3, %rdx	#, D.6903
	addq	%rdx, %rax	# D.6903, D.6902
	movq	(%rax), %rax	# *_53, D.6900
	addq	$12, %rax	#, D.6900
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6900,
	call	FChoose	#
	testl	%eax, %eax	# D.6899
	jne	.L16	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.3
	jmp	.L17	#
.L16:
	.loc 1 81 0 discriminator 2
	movl	$3, %eax	#, iftmp.3
.L17:
	.loc 1 81 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.3, type
	cmpb	$1, -57(%rbp)	#, type
	jne	.L18	#,
	.loc 1 81 0 discriminator 1
	addl	$1, -56(%rbp)	#, k
	jmp	.L15	#
.L18:
	.loc 1 81 0 discriminator 2
	jmp	.L15	#
.L8:
	.loc 1 82 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp173
	addq	$172, %rax	#, D.6904
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6904,
	call	FChoose	#
	cmpl	$1, %eax	#, D.6899
	jne	.L19	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.4
	jmp	.L20	#
.L19:
	.loc 1 82 0 discriminator 2
	movl	$6, %eax	#, iftmp.4
.L20:
	.loc 1 82 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.4, type
	movl	$0, -56(%rbp)	#, k
	jmp	.L15	#
.L10:
	.loc 1 83 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp174
	addq	$180, %rax	#, D.6904
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6904,
	call	FChoose	#
	cmpl	$1, %eax	#, D.6899
	jne	.L21	#,
	.loc 1 83 0 is_stmt 0 discriminator 1
	movl	$10, %eax	#, iftmp.5
	jmp	.L22	#
.L21:
	.loc 1 83 0 discriminator 2
	movl	$8, %eax	#, iftmp.5
.L22:
	.loc 1 83 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.5, type
	movl	$0, -56(%rbp)	#, k
	jmp	.L15	#
.L11:
	.loc 1 84 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp175
	addq	$188, %rax	#, D.6904
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6904,
	call	FChoose	#
	cmpl	$1, %eax	#, D.6899
	jne	.L23	#,
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, iftmp.6
	jmp	.L24	#
.L23:
	.loc 1 84 0 discriminator 2
	movl	$9, %eax	#, iftmp.6
.L24:
	.loc 1 84 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.6, type
	movl	$0, -56(%rbp)	#, k
	jmp	.L15	#
.L12:
	.loc 1 85 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp176
	addq	$196, %rax	#, D.6904
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6904,
	call	FChoose	#
	cmpl	$1, %eax	#, D.6899
	jne	.L25	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	$10, %eax	#, iftmp.7
	jmp	.L26	#
.L25:
	.loc 1 85 0 discriminator 2
	movl	$6, %eax	#, iftmp.7
.L26:
	.loc 1 85 0 discriminator 3
	movb	%al, -57(%rbp)	# iftmp.7, type
	movl	$0, -56(%rbp)	#, k
	jmp	.L15	#
.L6:
	.loc 1 88 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmm, tmp177
	movl	136(%rax), %eax	# hmm_40(D)->M, D.6899
	cmpl	-56(%rbp), %eax	# k, D.6899
	jle	.L27	#,
	.loc 1 89 0
	movq	-72(%rbp), %rax	# hmm, tmp178
	movq	144(%rax), %rax	# hmm_40(D)->t, D.6902
	movl	-56(%rbp), %edx	# k, tmp179
	movslq	%edx, %rdx	# tmp179, D.6903
	salq	$3, %rdx	#, D.6903
	addq	%rdx, %rax	# D.6903, D.6902
	movq	(%rax), %rax	# *_89, D.6900
	addq	$20, %rax	#, D.6900
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6900,
	call	FChoose	#
	testl	%eax, %eax	# D.6899
	jne	.L28	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.8
	jmp	.L29	#
.L28:
	.loc 1 89 0 discriminator 2
	movl	$2, %eax	#, iftmp.8
.L29:
	.loc 1 89 0 discriminator 1
	movb	%al, -57(%rbp)	# iftmp.8, type
	.loc 1 90 0 is_stmt 1 discriminator 1
	addl	$1, -56(%rbp)	#, k
	.loc 1 95 0 discriminator 1
	jmp	.L15	#
.L27:
	.loc 1 92 0
	movb	$7, -57(%rbp)	#, type
	.loc 1 93 0
	movl	$0, -56(%rbp)	#, k
	.loc 1 95 0
	jmp	.L15	#
.L4:
	.loc 1 98 0
	movq	-72(%rbp), %rax	# hmm, tmp180
	movl	136(%rax), %eax	# hmm_40(D)->M, D.6899
	cmpl	-56(%rbp), %eax	# k, D.6899
	jle	.L31	#,
	.loc 1 99 0
	movq	-72(%rbp), %rax	# hmm, tmp181
	movq	144(%rax), %rax	# hmm_40(D)->t, D.6902
	movl	-56(%rbp), %edx	# k, tmp182
	movslq	%edx, %rdx	# tmp182, D.6903
	salq	$3, %rdx	#, D.6903
	addq	%rdx, %rax	# D.6903, D.6902
	movq	(%rax), %rcx	# *_103, D.6900
	leaq	-16(%rbp), %rax	#, tmp183
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# D.6900,
	movq	%rax, %rdi	# tmp183,
	call	FCopy	#
	.loc 1 100 0
	movq	-72(%rbp), %rax	# hmm, tmp184
	movq	216(%rax), %rax	# hmm_40(D)->end, D.6900
	movl	-56(%rbp), %edx	# k, tmp185
	movslq	%edx, %rdx	# tmp185, D.6903
	salq	$2, %rdx	#, D.6903
	addq	%rdx, %rax	# D.6903, D.6900
	movl	(%rax), %eax	# *_108, D.6901
	movl	%eax, -4(%rbp)	# D.6901, t
	.loc 1 101 0
	leaq	-16(%rbp), %rax	#, tmp186
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp186,
	call	FChoose	#
	cmpl	$1, %eax	#, D.6899
	je	.L33	#,
	cmpl	$1, %eax	#, D.6899
	jg	.L34	#,
	testl	%eax, %eax	# D.6899
	je	.L35	#,
	jmp	.L32	#
.L34:
	cmpl	$2, %eax	#, D.6899
	je	.L36	#,
	cmpl	$3, %eax	#, D.6899
	je	.L37	#,
	jmp	.L32	#
.L35:
	.loc 1 102 0
	addl	$1, -56(%rbp)	#, k
	movb	$1, -57(%rbp)	#, type
	jmp	.L38	#
.L33:
	.loc 1 103 0
	movb	$3, -57(%rbp)	#, type
	jmp	.L38	#
.L36:
	.loc 1 104 0
	addl	$1, -56(%rbp)	#, k
	movb	$2, -57(%rbp)	#, type
	jmp	.L38	#
.L37:
	.loc 1 105 0
	movl	$0, -56(%rbp)	#, k
	movb	$7, -57(%rbp)	#, type
	jmp	.L38	#
.L32:
	.loc 1 106 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L39	#
.L38:
	jmp	.L39	#
.L31:
	.loc 1 109 0
	movl	$0, -56(%rbp)	#, k
	.loc 1 110 0
	movb	$7, -57(%rbp)	#, type
	.loc 1 112 0
	jmp	.L15	#
.L39:
	jmp	.L15	#
.L3:
	.loc 1 117 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L15:
	.loc 1 122 0
	movl	$-1, -36(%rbp)	#, sym
	.loc 1 123 0
	cmpb	$1, -57(%rbp)	#, type
	jne	.L40	#,
	.loc 1 123 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.9
	movq	-72(%rbp), %rax	# hmm, tmp187
	movq	152(%rax), %rax	# hmm_40(D)->mat, D.6902
	movl	-56(%rbp), %ecx	# k, tmp188
	movslq	%ecx, %rcx	# tmp188, D.6903
	salq	$3, %rcx	#, D.6903
	addq	%rcx, %rax	# D.6903, D.6902
	movq	(%rax), %rax	# *_125, D.6900
	movl	%edx, %esi	# Alphabet_size.9,
	movq	%rax, %rdi	# D.6900,
	call	FChoose	#
	movl	%eax, -36(%rbp)	# tmp189, sym
	jmp	.L41	#
.L40:
	.loc 1 124 0 is_stmt 1
	cmpb	$3, -57(%rbp)	#, type
	jne	.L42	#,
	.loc 1 124 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.10
	movq	-72(%rbp), %rax	# hmm, tmp190
	movq	160(%rax), %rax	# hmm_40(D)->ins, D.6902
	movl	-56(%rbp), %ecx	# k, tmp191
	movslq	%ecx, %rcx	# tmp191, D.6903
	salq	$3, %rcx	#, D.6903
	addq	%rcx, %rax	# D.6903, D.6902
	movq	(%rax), %rax	# *_132, D.6900
	movl	%edx, %esi	# Alphabet_size.10,
	movq	%rax, %rdi	# D.6900,
	call	FChoose	#
	movl	%eax, -36(%rbp)	# tmp192, sym
	jmp	.L41	#
.L42:
	.loc 1 125 0 is_stmt 1
	cmpb	$5, -57(%rbp)	#, type
	jne	.L43	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# tr, tr.11
	movq	8(%rax), %rax	# tr.11_135->statetype, D.6905
	movl	-40(%rbp), %edx	# tpos, tmp193
	movslq	%edx, %rdx	# tmp193, D.6906
	subq	$1, %rdx	#, D.6906
	addq	%rdx, %rax	# D.6906, D.6905
	movzbl	(%rax), %eax	# *_139, D.6898
	cmpb	$5, %al	#, D.6898
	je	.L44	#,
.L43:
	.loc 1 125 0 discriminator 2
	cmpb	$8, -57(%rbp)	#, type
	jne	.L45	#,
	.loc 1 126 0 is_stmt 1
	movq	-32(%rbp), %rax	# tr, tr.12
	movq	8(%rax), %rax	# tr.12_141->statetype, D.6905
	movl	-40(%rbp), %edx	# tpos, tmp194
	movslq	%edx, %rdx	# tmp194, D.6906
	subq	$1, %rdx	#, D.6906
	addq	%rdx, %rax	# D.6906, D.6905
	movzbl	(%rax), %eax	# *_145, D.6898
	cmpb	$8, %al	#, D.6898
	je	.L44	#,
.L45:
	.loc 1 126 0 is_stmt 0 discriminator 1
	cmpb	$10, -57(%rbp)	#, type
	jne	.L41	#,
	.loc 1 127 0 is_stmt 1
	movq	-32(%rbp), %rax	# tr, tr.13
	movq	8(%rax), %rax	# tr.13_147->statetype, D.6905
	movl	-40(%rbp), %edx	# tpos, tmp195
	movslq	%edx, %rdx	# tmp195, D.6906
	subq	$1, %rdx	#, D.6906
	addq	%rdx, %rax	# D.6906, D.6905
	movzbl	(%rax), %eax	# *_151, D.6898
	cmpb	$10, %al	#, D.6898
	jne	.L41	#,
.L44:
	.loc 1 128 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.14
	movq	-72(%rbp), %rdx	# hmm, tmp196
	addq	$224, %rdx	#, D.6907
	movl	%eax, %esi	# Alphabet_size.14,
	movq	%rdx, %rdi	# D.6907,
	call	FChoose	#
	movl	%eax, -36(%rbp)	# tmp197, sym
.L41:
	.loc 1 132 0
	cmpl	$-1, -36(%rbp)	#, sym
	je	.L46	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# L, iftmp.15
	jmp	.L47	#
.L46:
	.loc 1 132 0 discriminator 2
	movl	$0, %eax	#, iftmp.15
.L47:
	.loc 1 132 0 discriminator 3
	movsbl	-57(%rbp), %edx	# type, D.6899
	movq	-32(%rbp), %rdi	# tr, tr.16
	movl	-56(%rbp), %ecx	# k, tmp198
	movl	-40(%rbp), %esi	# tpos, tmp199
	movl	%eax, %r8d	# iftmp.15,
	call	TraceSet	#
	.loc 1 133 0 is_stmt 1 discriminator 3
	addl	$1, -40(%rbp)	#, tpos
	.loc 1 134 0 discriminator 3
	movl	-40(%rbp), %eax	# tpos, tmp200
	cmpl	-48(%rbp), %eax	# alloc_tlen, tmp200
	jne	.L48	#,
	.loc 1 135 0
	addl	$64, -48(%rbp)	#, alloc_tlen
	.loc 1 136 0
	movq	-32(%rbp), %rax	# tr, tr.17
	movl	-48(%rbp), %edx	# alloc_tlen, tmp201
	movl	%edx, %esi	# tmp201,
	movq	%rax, %rdi	# tr.17,
	call	P7ReallocTrace	#
.L48:
	.loc 1 141 0
	cmpl	$-1, -36(%rbp)	#, sym
	je	.L2	#,
	.loc 1 142 0
	movl	-52(%rbp), %eax	# L, tmp202
	movslq	%eax, %rdx	# tmp202, D.6906
	movq	-24(%rbp), %rax	# dsq, tmp203
	addq	%rax, %rdx	# tmp203, D.6905
	movl	-36(%rbp), %eax	# sym, tmp204
	movb	%al, (%rdx)	# D.6898, *_164
	.loc 1 143 0
	addl	$1, -52(%rbp)	#, L
	.loc 1 144 0
	movl	-52(%rbp), %eax	# L, tmp205
	addl	$1, %eax	#, D.6899
	cmpl	-44(%rbp), %eax	# alloc_L, D.6899
	jne	.L2	#,
	.loc 1 145 0
	addl	$64, -44(%rbp)	#, alloc_L
	.loc 1 146 0
	movl	-44(%rbp), %eax	# alloc_L, tmp206
	movslq	%eax, %rdx	# tmp206, D.6903
	movq	-24(%rbp), %rax	# dsq, tmp207
	movq	%rdx, %rcx	# D.6903,
	movq	%rax, %rdx	# tmp207,
	movl	$146, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	%rax, -24(%rbp)	# tmp208, dsq
.L2:
	.loc 1 70 0 discriminator 1
	cmpb	$9, -57(%rbp)	#, type
	jne	.L49	#,
	.loc 1 153 0
	movq	-32(%rbp), %rax	# tr, tr.18
	movl	-40(%rbp), %edx	# tpos, tmp209
	movl	%edx, (%rax)	# tmp209, tr.18_171->tlen
	.loc 1 158 0
	movl	-52(%rbp), %eax	# L, tmp210
	movslq	%eax, %rdx	# tmp210, D.6906
	movq	-24(%rbp), %rax	# dsq, tmp211
	addq	%rax, %rdx	# tmp211, D.6905
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.19
	movb	%al, (%rdx)	# D.6898, *_173
	.loc 1 159 0
	movl	-52(%rbp), %eax	# L, tmp212
	cltq
	leaq	1(%rax), %rdx	#, D.6906
	movq	-24(%rbp), %rax	# dsq, tmp213
	addq	%rdx, %rax	# D.6906, D.6905
	movb	$0, (%rax)	#, *_178
	.loc 1 160 0
	subl	$1, -52(%rbp)	#, L
	.loc 1 164 0
	cmpq	$0, -80(%rbp)	#, ret_dsq
	je	.L50	#,
	.loc 1 164 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# ret_dsq, tmp214
	movq	-24(%rbp), %rdx	# dsq, tmp215
	movq	%rdx, (%rax)	# tmp215, *ret_dsq_180(D)
	jmp	.L51	#
.L50:
	.loc 1 164 0 discriminator 2
	movq	-24(%rbp), %rax	# dsq, tmp216
	movq	%rax, %rdi	# tmp216,
	call	free	#
.L51:
	.loc 1 165 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, ret_L
	je	.L52	#,
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# ret_L, tmp217
	movl	-52(%rbp), %edx	# L, tmp218
	movl	%edx, (%rax)	# tmp218, *ret_L_181(D)
.L52:
	.loc 1 166 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, ret_tr
	je	.L53	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# tr, tr.20
	movq	-96(%rbp), %rax	# ret_tr, tmp219
	movq	%rdx, (%rax)	# tr.20, *ret_tr_182(D)
	jmp	.L54	#
.L53:
	.loc 1 166 0 discriminator 2
	movq	-32(%rbp), %rax	# tr, tr.21
	movq	%rax, %rdi	# tr.21,
	call	P7FreeTrace	#
.L54:
	.loc 1 167 0 is_stmt 1
	nop
	.loc 1 168 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	EmitSequence, .-EmitSequence
	.globl	EmitConsensusSequence
	.type	EmitConsensusSequence, @function
EmitConsensusSequence:
.LFB3:
	.loc 1 297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# hmm, hmm
	movq	%rsi, -112(%rbp)	# ret_seq, ret_seq
	movq	%rdx, -120(%rbp)	# ret_dsq, ret_dsq
	movq	%rcx, -128(%rbp)	# ret_L, ret_L
	movq	%r8, -136(%rbp)	# ret_tr, ret_tr
	.loc 1 308 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.22
	cmpl	$3, %eax	#, Alphabet_type.22
	jne	.L57	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movl	.LC3(%rip), %eax	#, tmp175
	movl	%eax, -68(%rbp)	# tmp175, mthresh
	jmp	.L58	#
.L57:
	.loc 1 309 0 is_stmt 1
	movl	.LC4(%rip), %eax	#, tmp176
	movl	%eax, -68(%rbp)	# tmp176, mthresh
.L58:
	.loc 1 311 0
	leaq	-40(%rbp), %rcx	#, tmp177
	leaq	-48(%rbp), %rdx	#, tmp178
	leaq	-56(%rbp), %rsi	#, tmp179
	movq	-104(%rbp), %rax	# hmm, tmp180
	movq	%rax, %rdi	# tmp180,
	call	StateOccupancy	#
	.loc 1 316 0
	movl	$0, -88(%rbp)	#, nins
	movl	-88(%rbp), %eax	# nins, tmp181
	movl	%eax, -92(%rbp)	# tmp181, ndel
	movl	-92(%rbp), %eax	# ndel, tmp182
	movl	%eax, -96(%rbp)	# tmp182, nmat
	.loc 1 317 0
	movl	$1, -84(%rbp)	#, k
	jmp	.L59	#
.L65:
	.loc 1 319 0
	movq	-56(%rbp), %rax	# mp, mp.23
	movl	-84(%rbp), %edx	# k, tmp183
	movslq	%edx, %rdx	# tmp183, D.6913
	salq	$2, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6914
	movss	(%rax), %xmm0	# *_31, D.6915
	ucomiss	.LC3(%rip), %xmm0	#, D.6915
	jb	.L89	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	addl	$1, -96(%rbp)	#, nmat
	jmp	.L62	#
.L89:
	.loc 1 319 0 discriminator 2
	addl	$1, -92(%rbp)	#, ndel
.L62:
	.loc 1 320 0 is_stmt 1
	movq	-104(%rbp), %rax	# hmm, tmp184
	movl	136(%rax), %eax	# hmm_22(D)->M, D.6912
	cmpl	-84(%rbp), %eax	# k, D.6912
	jle	.L63	#,
	.loc 1 320 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ip, ip.24
	movl	-84(%rbp), %edx	# k, tmp185
	movslq	%edx, %rdx	# tmp185, D.6913
	salq	$2, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6914
	movss	(%rax), %xmm0	# *_39, D.6915
	ucomiss	.LC3(%rip), %xmm0	#, D.6915
	jb	.L63	#,
	.loc 1 321 0 is_stmt 1
	movq	-104(%rbp), %rax	# hmm, tmp186
	movq	144(%rax), %rax	# hmm_22(D)->t, D.6916
	movl	-84(%rbp), %edx	# k, tmp187
	movslq	%edx, %rdx	# tmp187, D.6913
	salq	$3, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6916
	movq	(%rax), %rax	# *_44, D.6914
	addq	$16, %rax	#, D.6914
	movss	(%rax), %xmm1	# *_46, D.6915
	movss	.LC5(%rip), %xmm0	#, tmp188
	subss	%xmm1, %xmm0	# D.6915, D.6915
	movss	.LC5(%rip), %xmm1	#, tmp189
	divss	%xmm0, %xmm1	# D.6915, D.6915
	movaps	%xmm1, %xmm0	# D.6915, D.6915
	cvttss2si	%xmm0, %eax	# D.6915, D.6912
	addl	%eax, -88(%rbp)	# D.6912, nins
.L63:
	.loc 1 317 0
	addl	$1, -84(%rbp)	#, k
.L59:
	.loc 1 317 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hmm, tmp190
	movl	136(%rax), %eax	# hmm_22(D)->M, D.6912
	cmpl	-84(%rbp), %eax	# k, D.6912
	jge	.L65	#,
	.loc 1 326 0 is_stmt 1
	movl	-96(%rbp), %eax	# nmat, tmp191
	leal	6(%rax), %edx	#, D.6912
	movl	-92(%rbp), %eax	# ndel, tmp192
	addl	%eax, %edx	# tmp192, D.6912
	movl	-88(%rbp), %eax	# nins, tmp193
	addl	%eax, %edx	# tmp193, D.6912
	leaq	-64(%rbp), %rax	#, tmp194
	movq	%rax, %rsi	# tmp194,
	movl	%edx, %edi	# D.6912,
	call	P7AllocTrace	#
	.loc 1 327 0
	movl	-88(%rbp), %eax	# nins, tmp195
	movl	-96(%rbp), %edx	# nmat, tmp196
	addl	%edx, %eax	# tmp196, D.6912
	addl	$3, %eax	#, D.6912
	cltq
	movq	%rax, %rdx	# D.6913,
	movl	$327, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -32(%rbp)	# tmp197, dsq
	.loc 1 328 0
	movl	-88(%rbp), %eax	# nins, tmp198
	movl	-96(%rbp), %edx	# nmat, tmp199
	addl	%edx, %eax	# tmp199, D.6912
	addl	$1, %eax	#, D.6912
	cltq
	movq	%rax, %rdx	# D.6913,
	movl	$328, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp200, seq
	.loc 1 333 0
	movq	-64(%rbp), %rax	# tr, tr.25
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$4, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tr.25,
	call	TraceSet	#
	.loc 1 334 0
	movq	-64(%rbp), %rax	# tr, tr.26
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$5, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tr.26,
	call	TraceSet	#
	.loc 1 335 0
	movq	-64(%rbp), %rax	# tr, tr.27
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$6, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tr.27,
	call	TraceSet	#
	.loc 1 336 0
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.28
	movl	%eax, %edx	# Alphabet_iupac.28, D.6917
	movq	-32(%rbp), %rax	# dsq, tmp201
	movb	%dl, (%rax)	# D.6917, *dsq_59
	.loc 1 337 0
	movl	$3, -80(%rbp)	#, tpos
	.loc 1 338 0
	movl	$0, -76(%rbp)	#, i
	.loc 1 339 0
	movl	$1, -84(%rbp)	#, k
	jmp	.L66	#
.L76:
	.loc 1 341 0
	movq	-56(%rbp), %rax	# mp, mp.29
	movl	-84(%rbp), %edx	# k, tmp202
	movslq	%edx, %rdx	# tmp202, D.6913
	salq	$2, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6914
	movss	(%rax), %xmm0	# *_76, D.6915
	ucomiss	.LC3(%rip), %xmm0	#, D.6915
	jb	.L90	#,
	.loc 1 343 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.30
	movq	-104(%rbp), %rax	# hmm, tmp203
	movq	152(%rax), %rax	# hmm_22(D)->mat, D.6916
	movl	-84(%rbp), %ecx	# k, tmp204
	movslq	%ecx, %rcx	# tmp204, D.6913
	salq	$3, %rcx	#, D.6913
	addq	%rcx, %rax	# D.6913, D.6916
	movq	(%rax), %rax	# *_82, D.6914
	movl	%edx, %esi	# Alphabet_size.30,
	movq	%rax, %rdi	# D.6914,
	call	FArgMax	#
	movl	%eax, -72(%rbp)	# tmp205, x
	.loc 1 344 0
	movl	-76(%rbp), %eax	# i, tmp206
	leal	1(%rax), %ecx	#, D.6912
	movq	-64(%rbp), %rax	# tr, tr.31
	movl	-84(%rbp), %edx	# k, tmp207
	movl	-80(%rbp), %esi	# tpos, tmp208
	movl	%ecx, %r8d	# D.6912,
	movl	%edx, %ecx	# tmp207,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tr.31,
	call	TraceSet	#
	.loc 1 345 0
	movl	-76(%rbp), %eax	# i, tmp209
	movslq	%eax, %rdx	# tmp209, D.6918
	movq	-24(%rbp), %rax	# seq, tmp210
	addq	%rax, %rdx	# tmp210, D.6919
	movl	-72(%rbp), %eax	# x, tmp212
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.6917
	movb	%al, (%rdx)	# D.6917, *_88
	.loc 1 346 0
	movl	-76(%rbp), %eax	# i, tmp213
	cltq
	leaq	1(%rax), %rdx	#, D.6918
	movq	-32(%rbp), %rax	# dsq, tmp214
	addq	%rax, %rdx	# tmp214, D.6919
	movl	-72(%rbp), %eax	# x, tmp215
	movb	%al, (%rdx)	# D.6917, *_92
	.loc 1 347 0
	movq	-104(%rbp), %rax	# hmm, tmp216
	movq	152(%rax), %rax	# hmm_22(D)->mat, D.6916
	movl	-84(%rbp), %edx	# k, tmp217
	movslq	%edx, %rdx	# tmp217, D.6913
	salq	$3, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6916
	movq	(%rax), %rax	# *_97, D.6914
	movl	-72(%rbp), %edx	# x, tmp218
	movslq	%edx, %rdx	# tmp218, D.6913
	salq	$2, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6914
	movss	(%rax), %xmm1	# *_101, D.6915
	movss	-68(%rbp), %xmm0	# mthresh, tmp219
	ucomiss	%xmm1, %xmm0	# D.6915, tmp219
	jbe	.L69	#,
	.loc 1 348 0
	movl	-76(%rbp), %eax	# i, tmp220
	movslq	%eax, %rdx	# tmp220, D.6918
	movq	-24(%rbp), %rax	# seq, tmp221
	leaq	(%rdx,%rax), %rbx	#, D.6919
	movl	-76(%rbp), %eax	# i, tmp222
	movslq	%eax, %rdx	# tmp222, D.6918
	movq	-24(%rbp), %rax	# seq, tmp223
	addq	%rdx, %rax	# D.6918, D.6919
	movzbl	(%rax), %eax	# *_106, D.6917
	movsbl	%al, %eax	# D.6917, D.6912
	movl	%eax, %edi	# D.6912,
	call	tolower	#
	movb	%al, (%rbx)	# D.6917, *_104
.L69:
	.loc 1 349 0
	addl	$1, -76(%rbp)	#, i
	.loc 1 350 0
	addl	$1, -80(%rbp)	#, tpos
	jmp	.L71	#
.L90:
	.loc 1 354 0
	movq	-64(%rbp), %rax	# tr, tr.32
	movl	-84(%rbp), %edx	# k, tmp224
	movl	-80(%rbp), %esi	# tpos, tmp225
	movl	$0, %r8d	#,
	movl	%edx, %ecx	# tmp224,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tr.32,
	call	TraceSet	#
	.loc 1 355 0
	addl	$1, -80(%rbp)	#, tpos
.L71:
	.loc 1 358 0
	movq	-104(%rbp), %rax	# hmm, tmp226
	movl	136(%rax), %eax	# hmm_22(D)->M, D.6912
	cmpl	-84(%rbp), %eax	# k, D.6912
	jle	.L72	#,
	.loc 1 358 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# ip, ip.33
	movl	-84(%rbp), %edx	# k, tmp227
	movslq	%edx, %rdx	# tmp227, D.6913
	salq	$2, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6914
	movss	(%rax), %xmm0	# *_119, D.6915
	ucomiss	.LC3(%rip), %xmm0	#, D.6915
	jb	.L72	#,
	.loc 1 360 0 is_stmt 1
	movq	-104(%rbp), %rax	# hmm, tmp228
	movq	144(%rax), %rax	# hmm_22(D)->t, D.6916
	movl	-84(%rbp), %edx	# k, tmp229
	movslq	%edx, %rdx	# tmp229, D.6913
	salq	$3, %rdx	#, D.6913
	addq	%rdx, %rax	# D.6913, D.6916
	movq	(%rax), %rax	# *_124, D.6914
	addq	$16, %rax	#, D.6914
	movss	(%rax), %xmm1	# *_126, D.6915
	movss	.LC5(%rip), %xmm0	#, tmp230
	subss	%xmm1, %xmm0	# D.6915, D.6915
	movss	.LC5(%rip), %xmm1	#, tmp231
	divss	%xmm0, %xmm1	# D.6915, D.6915
	movaps	%xmm1, %xmm0	# D.6915, D.6915
	cvttss2si	%xmm0, %eax	# D.6915, tmp232
	movl	%eax, -72(%rbp)	# tmp232, x
	.loc 1 361 0
	jmp	.L74	#
.L75:
	.loc 1 363 0
	movl	-76(%rbp), %eax	# i, tmp233
	leal	1(%rax), %ecx	#, D.6912
	movq	-64(%rbp), %rax	# tr, tr.34
	movl	-84(%rbp), %edx	# k, tmp234
	movl	-80(%rbp), %esi	# tpos, tmp235
	movl	%ecx, %r8d	# D.6912,
	movl	%edx, %ecx	# tmp234,
	movl	$3, %edx	#,
	movq	%rax, %rdi	# tr.34,
	call	TraceSet	#
	.loc 1 364 0
	movl	-76(%rbp), %eax	# i, tmp236
	movslq	%eax, %rdx	# tmp236, D.6918
	movq	-24(%rbp), %rax	# seq, tmp237
	addq	%rdx, %rax	# D.6918, D.6919
	movb	$120, (%rax)	#, *_136
	.loc 1 365 0
	movl	-76(%rbp), %eax	# i, tmp238
	cltq
	leaq	1(%rax), %rdx	#, D.6918
	movq	-32(%rbp), %rax	# dsq, tmp239
	addq	%rax, %rdx	# tmp239, D.6919
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.35
	subl	$1, %eax	#, D.6920
	movb	%al, (%rdx)	# D.6917, *_139
	.loc 1 366 0
	addl	$1, -76(%rbp)	#, i
	.loc 1 367 0
	addl	$1, -80(%rbp)	#, tpos
.L74:
	.loc 1 361 0 discriminator 1
	movl	-72(%rbp), %eax	# x, x.36
	leal	-1(%rax), %edx	#, tmp240
	movl	%edx, -72(%rbp)	# tmp240, x
	testl	%eax, %eax	# x.36
	jne	.L75	#,
.L72:
	.loc 1 339 0
	addl	$1, -84(%rbp)	#, k
.L66:
	.loc 1 339 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hmm, tmp241
	movl	136(%rax), %eax	# hmm_22(D)->M, D.6912
	cmpl	-84(%rbp), %eax	# k, D.6912
	jge	.L76	#,
	.loc 1 371 0 is_stmt 1
	movq	-64(%rbp), %rax	# tr, tr.37
	movl	-80(%rbp), %esi	# tpos, tmp242
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$7, %edx	#,
	movq	%rax, %rdi	# tr.37,
	call	TraceSet	#
	addl	$1, -80(%rbp)	#, tpos
	.loc 1 372 0
	movq	-64(%rbp), %rax	# tr, tr.38
	movl	-80(%rbp), %esi	# tpos, tmp243
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tr.38,
	call	TraceSet	#
	addl	$1, -80(%rbp)	#, tpos
	.loc 1 373 0
	movq	-64(%rbp), %rax	# tr, tr.39
	movl	-80(%rbp), %esi	# tpos, tmp244
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$9, %edx	#,
	movq	%rax, %rdi	# tr.39,
	call	TraceSet	#
	addl	$1, -80(%rbp)	#, tpos
	.loc 1 374 0
	movl	-76(%rbp), %eax	# i, tmp245
	cltq
	leaq	1(%rax), %rdx	#, D.6918
	movq	-32(%rbp), %rax	# dsq, tmp246
	addq	%rax, %rdx	# tmp246, D.6919
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.40
	movb	%al, (%rdx)	# D.6917, *_155
	.loc 1 376 0
	movq	-56(%rbp), %rax	# mp, mp.41
	movq	%rax, %rdi	# mp.41,
	call	free	#
	.loc 1 377 0
	movq	-48(%rbp), %rax	# ip, ip.42
	movq	%rax, %rdi	# ip.42,
	call	free	#
	.loc 1 378 0
	movq	-40(%rbp), %rax	# dp, dp.43
	movq	%rax, %rdi	# dp.43,
	call	free	#
	.loc 1 379 0
	cmpq	$0, -112(%rbp)	#, ret_seq
	je	.L77	#,
	.loc 1 379 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# ret_seq, tmp247
	movq	-24(%rbp), %rdx	# seq, tmp248
	movq	%rdx, (%rax)	# tmp248, *ret_seq_161(D)
	jmp	.L78	#
.L77:
	.loc 1 379 0 discriminator 2
	movq	-24(%rbp), %rax	# seq, tmp249
	movq	%rax, %rdi	# tmp249,
	call	free	#
.L78:
	.loc 1 380 0 is_stmt 1
	cmpq	$0, -120(%rbp)	#, ret_dsq
	je	.L79	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# ret_dsq, tmp250
	movq	-32(%rbp), %rdx	# dsq, tmp251
	movq	%rdx, (%rax)	# tmp251, *ret_dsq_162(D)
	jmp	.L80	#
.L79:
	.loc 1 380 0 discriminator 2
	movq	-32(%rbp), %rax	# dsq, tmp252
	movq	%rax, %rdi	# tmp252,
	call	free	#
.L80:
	.loc 1 381 0 is_stmt 1
	cmpq	$0, -128(%rbp)	#, ret_L
	je	.L81	#,
	.loc 1 381 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# ret_L, tmp253
	movl	-76(%rbp), %edx	# i, tmp254
	movl	%edx, (%rax)	# tmp254, *ret_L_163(D)
.L81:
	.loc 1 382 0 is_stmt 1
	cmpq	$0, -136(%rbp)	#, ret_tr
	je	.L82	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rdx	# tr, tr.44
	movq	-136(%rbp), %rax	# ret_tr, tmp255
	movq	%rdx, (%rax)	# tr.44, *ret_tr_164(D)
	jmp	.L56	#
.L82:
	.loc 1 382 0 discriminator 2
	movq	-64(%rbp), %rax	# tr, tr.45
	movq	%rax, %rdi	# tr.45,
	call	P7FreeTrace	#
.L56:
	.loc 1 383 0 is_stmt 1
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	EmitConsensusSequence, .-EmitConsensusSequence
	.globl	StateOccupancy
	.type	StateOccupancy, @function
StateOccupancy:
.LFB4:
	.loc 1 408 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# hmm, hmm
	movq	%rsi, -48(%rbp)	# ret_mp, ret_mp
	movq	%rdx, -56(%rbp)	# ret_ip, ret_ip
	movq	%rcx, -64(%rbp)	# ret_dp, ret_dp
	.loc 1 414 0
	movq	-40(%rbp), %rax	# hmm, tmp210
	movl	136(%rax), %eax	# hmm_2(D)->M, D.6921
	addl	$1, %eax	#, D.6921
	cltq
	salq	$2, %rax	#, D.6922
	movq	%rax, %rdx	# D.6922,
	movl	$414, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp211, fmp
	.loc 1 415 0
	movq	-40(%rbp), %rax	# hmm, tmp212
	movl	136(%rax), %eax	# hmm_2(D)->M, D.6921
	cltq
	salq	$2, %rax	#, D.6922
	movq	%rax, %rdx	# D.6922,
	movl	$415, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp213, fip
	.loc 1 416 0
	movq	-40(%rbp), %rax	# hmm, tmp214
	movl	136(%rax), %eax	# hmm_2(D)->M, D.6921
	addl	$1, %eax	#, D.6921
	cltq
	salq	$2, %rax	#, D.6922
	movq	%rax, %rdx	# D.6922,
	movl	$416, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp215, fdp
	.loc 1 420 0
	movq	-8(%rbp), %rax	# fdp, tmp216
	leaq	4(%rax), %rdx	#, D.6923
	movq	-40(%rbp), %rax	# hmm, tmp217
	movl	168(%rax), %eax	# hmm_2(D)->tbd1, D.6924
	movl	%eax, (%rdx)	# D.6924, *_17
	.loc 1 421 0
	movq	-24(%rbp), %rax	# fmp, tmp218
	leaq	4(%rax), %rdx	#, D.6923
	movq	-40(%rbp), %rax	# hmm, tmp219
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.6923
	movl	4(%rax), %eax	# MEM[(float *)_20 + 4B], D.6924
	movl	%eax, (%rdx)	# D.6924, *_19
	.loc 1 422 0
	movq	-16(%rbp), %rax	# fip, tmp220
	leaq	4(%rax), %rdx	#, D.6923
	movq	-24(%rbp), %rax	# fmp, tmp221
	addq	$4, %rax	#, D.6923
	movss	(%rax), %xmm1	# *_23, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp222
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	addq	$8, %rax	#, D.6925
	movq	(%rax), %rax	# *_26, D.6923
	addq	$4, %rax	#, D.6923
	movss	(%rax), %xmm0	# *_28, D.6924
	mulss	%xmm1, %xmm0	# D.6924, D.6924
	movss	%xmm0, (%rdx)	# D.6924, *_22
	.loc 1 423 0
	movl	$2, -28(%rbp)	#, k
	jmp	.L92	#
.L94:
	.loc 1 426 0
	movl	-28(%rbp), %eax	# k, tmp223
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-24(%rbp), %rax	# fmp, tmp224
	addq	%rax, %rdx	# tmp224, D.6923
	movl	-28(%rbp), %eax	# k, tmp225
	cltq
	salq	$2, %rax	#, D.6922
	leaq	-4(%rax), %rcx	#, D.6926
	movq	-24(%rbp), %rax	# fmp, tmp226
	addq	%rcx, %rax	# D.6926, D.6923
	movss	(%rax), %xmm1	# *_39, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp227
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	movl	-28(%rbp), %ecx	# k, tmp228
	movslq	%ecx, %rcx	# tmp228, D.6922
	salq	$3, %rcx	#, D.6922
	subq	$8, %rcx	#, D.6926
	addq	%rcx, %rax	# D.6926, D.6925
	movq	(%rax), %rax	# *_45, D.6923
	movss	(%rax), %xmm0	# *_46, D.6924
	mulss	%xmm1, %xmm0	# D.6924, D.6924
	.loc 1 427 0
	movl	-28(%rbp), %eax	# k, tmp229
	cltq
	salq	$2, %rax	#, D.6922
	leaq	-4(%rax), %rcx	#, D.6926
	movq	-16(%rbp), %rax	# fip, tmp230
	addq	%rcx, %rax	# D.6926, D.6923
	movss	(%rax), %xmm1	# *_52, D.6924
	.loc 1 426 0
	addss	%xmm0, %xmm1	# D.6924, D.6924
	.loc 1 428 0
	movl	-28(%rbp), %eax	# k, tmp231
	cltq
	salq	$2, %rax	#, D.6922
	leaq	-4(%rax), %rcx	#, D.6926
	movq	-8(%rbp), %rax	# fdp, tmp232
	addq	%rcx, %rax	# D.6926, D.6923
	movss	(%rax), %xmm2	# *_58, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp233
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	movl	-28(%rbp), %ecx	# k, tmp234
	movslq	%ecx, %rcx	# tmp234, D.6922
	salq	$3, %rcx	#, D.6922
	subq	$8, %rcx	#, D.6926
	addq	%rcx, %rax	# D.6926, D.6925
	movq	(%rax), %rax	# *_64, D.6923
	addq	$20, %rax	#, D.6923
	movss	(%rax), %xmm0	# *_66, D.6924
	mulss	%xmm2, %xmm0	# D.6924, D.6924
	.loc 1 427 0
	addss	%xmm1, %xmm0	# D.6924, D.6924
	.loc 1 429 0
	movq	-40(%rbp), %rax	# hmm, tmp235
	movq	208(%rax), %rax	# hmm_2(D)->begin, D.6923
	movl	-28(%rbp), %ecx	# k, tmp236
	movslq	%ecx, %rcx	# tmp236, D.6922
	salq	$2, %rcx	#, D.6922
	addq	%rcx, %rax	# D.6922, D.6923
	movss	(%rax), %xmm1	# *_73, D.6924
	.loc 1 428 0
	addss	%xmm1, %xmm0	# D.6924, D.6924
	.loc 1 426 0
	movss	%xmm0, (%rdx)	# D.6924, *_35
	.loc 1 431 0
	movl	-28(%rbp), %eax	# k, tmp237
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-8(%rbp), %rax	# fdp, tmp238
	addq	%rax, %rdx	# tmp238, D.6923
	movl	-28(%rbp), %eax	# k, tmp239
	cltq
	salq	$2, %rax	#, D.6922
	leaq	-4(%rax), %rcx	#, D.6926
	movq	-24(%rbp), %rax	# fmp, tmp240
	addq	%rcx, %rax	# D.6926, D.6923
	movss	(%rax), %xmm1	# *_82, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp241
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	movl	-28(%rbp), %ecx	# k, tmp242
	movslq	%ecx, %rcx	# tmp242, D.6922
	salq	$3, %rcx	#, D.6922
	subq	$8, %rcx	#, D.6926
	addq	%rcx, %rax	# D.6926, D.6925
	movq	(%rax), %rax	# *_88, D.6923
	addq	$8, %rax	#, D.6923
	movss	(%rax), %xmm0	# *_90, D.6924
	mulss	%xmm0, %xmm1	# D.6924, D.6924
	.loc 1 432 0
	movl	-28(%rbp), %eax	# k, tmp243
	cltq
	salq	$2, %rax	#, D.6922
	leaq	-4(%rax), %rcx	#, D.6926
	movq	-8(%rbp), %rax	# fdp, tmp244
	addq	%rcx, %rax	# D.6926, D.6923
	movss	(%rax), %xmm2	# *_96, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp245
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	movl	-28(%rbp), %ecx	# k, tmp246
	movslq	%ecx, %rcx	# tmp246, D.6922
	salq	$3, %rcx	#, D.6922
	subq	$8, %rcx	#, D.6926
	addq	%rcx, %rax	# D.6926, D.6925
	movq	(%rax), %rax	# *_102, D.6923
	addq	$24, %rax	#, D.6923
	movss	(%rax), %xmm0	# *_104, D.6924
	mulss	%xmm2, %xmm0	# D.6924, D.6924
	.loc 1 431 0
	addss	%xmm1, %xmm0	# D.6924, D.6924
	movss	%xmm0, (%rdx)	# D.6924, *_78
	.loc 1 434 0
	movq	-40(%rbp), %rax	# hmm, tmp247
	movl	136(%rax), %eax	# hmm_2(D)->M, D.6921
	cmpl	-28(%rbp), %eax	# k, D.6921
	jle	.L93	#,
	.loc 1 435 0
	movl	-28(%rbp), %eax	# k, tmp248
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-16(%rbp), %rax	# fip, tmp249
	addq	%rax, %rdx	# tmp249, D.6923
	movl	-28(%rbp), %eax	# k, tmp250
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6922
	movq	-24(%rbp), %rax	# fmp, tmp251
	addq	%rcx, %rax	# D.6922, D.6923
	movss	(%rax), %xmm1	# *_114, D.6924
	movq	-40(%rbp), %rax	# hmm, tmp252
	movq	144(%rax), %rax	# hmm_2(D)->t, D.6925
	movl	-28(%rbp), %ecx	# k, tmp253
	movslq	%ecx, %rcx	# tmp253, D.6922
	salq	$3, %rcx	#, D.6922
	addq	%rcx, %rax	# D.6922, D.6925
	movq	(%rax), %rax	# *_119, D.6923
	addq	$4, %rax	#, D.6923
	movss	(%rax), %xmm0	# *_121, D.6924
	mulss	%xmm1, %xmm0	# D.6924, D.6924
	movss	%xmm0, (%rdx)	# D.6924, *_111
.L93:
	.loc 1 439 0
	movl	-28(%rbp), %eax	# k, tmp254
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-24(%rbp), %rax	# fmp, tmp255
	addq	%rdx, %rax	# D.6922, D.6923
	movl	-28(%rbp), %edx	# k, tmp256
	movslq	%edx, %rdx	# tmp256, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-24(%rbp), %rdx	# fmp, tmp257
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm1	# *_129, D.6924
	movl	-28(%rbp), %edx	# k, tmp258
	movslq	%edx, %rdx	# tmp258, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-24(%rbp), %rdx	# fmp, tmp259
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm2	# *_133, D.6924
	movl	-28(%rbp), %edx	# k, tmp260
	movslq	%edx, %rdx	# tmp260, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-8(%rbp), %rdx	# fdp, tmp261
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm0	# *_137, D.6924
	addss	%xmm2, %xmm0	# D.6924, D.6924
	divss	%xmm0, %xmm1	# D.6924, D.6924
	movaps	%xmm1, %xmm0	# D.6924, D.6924
	movss	%xmm0, (%rax)	# D.6924, *_126
	.loc 1 440 0
	movl	-28(%rbp), %eax	# k, tmp262
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6922
	movq	-8(%rbp), %rax	# fdp, tmp263
	addq	%rdx, %rax	# D.6922, D.6923
	movl	-28(%rbp), %edx	# k, tmp264
	movslq	%edx, %rdx	# tmp264, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-8(%rbp), %rdx	# fdp, tmp265
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm1	# *_146, D.6924
	movl	-28(%rbp), %edx	# k, tmp266
	movslq	%edx, %rdx	# tmp266, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-24(%rbp), %rdx	# fmp, tmp267
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm2	# *_150, D.6924
	movl	-28(%rbp), %edx	# k, tmp268
	movslq	%edx, %rdx	# tmp268, D.6922
	leaq	0(,%rdx,4), %rcx	#, D.6922
	movq	-8(%rbp), %rdx	# fdp, tmp269
	addq	%rcx, %rdx	# D.6922, D.6923
	movss	(%rdx), %xmm0	# *_154, D.6924
	addss	%xmm2, %xmm0	# D.6924, D.6924
	divss	%xmm0, %xmm1	# D.6924, D.6924
	movaps	%xmm1, %xmm0	# D.6924, D.6924
	movss	%xmm0, (%rax)	# D.6924, *_143
	.loc 1 423 0
	addl	$1, -28(%rbp)	#, k
.L92:
	.loc 1 423 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# hmm, tmp270
	movl	136(%rax), %eax	# hmm_2(D)->M, D.6921
	cmpl	-28(%rbp), %eax	# k, D.6921
	jge	.L94	#,
	.loc 1 454 0 is_stmt 1
	movq	-48(%rbp), %rax	# ret_mp, tmp271
	movq	-24(%rbp), %rdx	# fmp, tmp272
	movq	%rdx, (%rax)	# tmp272, *ret_mp_159(D)
	.loc 1 455 0
	movq	-64(%rbp), %rax	# ret_dp, tmp273
	movq	-8(%rbp), %rdx	# fdp, tmp274
	movq	%rdx, (%rax)	# tmp274, *ret_dp_160(D)
	.loc 1 456 0
	movq	-56(%rbp), %rax	# ret_ip, tmp275
	movq	-16(%rbp), %rdx	# fip, tmp276
	movq	%rdx, (%rax)	# tmp276, *ret_ip_161(D)
	.loc 1 457 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	StateOccupancy, .-StateOccupancy
	.section	.rodata
	.align 4
.LC3:
	.long	1056964608
	.align 4
.LC4:
	.long	1063675494
	.align 4
.LC5:
	.long	1065353216
	.text
.Letext0:
	.file 2 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x69d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.long	.LASF64
	.long	.LASF65
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0x79
	.uleb128 0x5
	.long	.LASF36
	.value	0x1d0
	.byte	0x2
	.byte	0x65
	.long	0x2fe
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x71
	.long	0x6c
	.byte	0
	.uleb128 0x7
	.string	"acc"
	.byte	0x2
	.byte	0x72
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x73
	.long	0x6c
	.byte	0x10
	.uleb128 0x7
	.string	"rf"
	.byte	0x2
	.byte	0x74
	.long	0x6c
	.byte	0x18
	.uleb128 0x7
	.string	"cs"
	.byte	0x2
	.byte	0x75
	.long	0x6c
	.byte	0x20
	.uleb128 0x7
	.string	"ca"
	.byte	0x2
	.byte	0x76
	.long	0x6c
	.byte	0x28
	.uleb128 0x6
	.long	.LASF15
	.byte	0x2
	.byte	0x77
	.long	0x6c
	.byte	0x30
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x78
	.long	0x57
	.byte	0x38
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.byte	0x79
	.long	0x6c
	.byte	0x40
	.uleb128 0x7
	.string	"map"
	.byte	0x2
	.byte	0x7a
	.long	0x87
	.byte	0x48
	.uleb128 0x6
	.long	.LASF18
	.byte	0x2
	.byte	0x7b
	.long	0x57
	.byte	0x50
	.uleb128 0x6
	.long	.LASF19
	.byte	0x2
	.byte	0x86
	.long	0x87
	.byte	0x58
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.byte	0x87
	.long	0x87
	.byte	0x60
	.uleb128 0x6
	.long	.LASF21
	.byte	0x2
	.byte	0x88
	.long	0x87
	.byte	0x68
	.uleb128 0x7
	.string	"ga1"
	.byte	0x2
	.byte	0x90
	.long	0x79
	.byte	0x70
	.uleb128 0x7
	.string	"ga2"
	.byte	0x2
	.byte	0x90
	.long	0x79
	.byte	0x74
	.uleb128 0x7
	.string	"tc1"
	.byte	0x2
	.byte	0x91
	.long	0x79
	.byte	0x78
	.uleb128 0x7
	.string	"tc2"
	.byte	0x2
	.byte	0x91
	.long	0x79
	.byte	0x7c
	.uleb128 0x7
	.string	"nc1"
	.byte	0x2
	.byte	0x92
	.long	0x79
	.byte	0x80
	.uleb128 0x7
	.string	"nc2"
	.byte	0x2
	.byte	0x92
	.long	0x79
	.byte	0x84
	.uleb128 0x7
	.string	"M"
	.byte	0x2
	.byte	0x9b
	.long	0x57
	.byte	0x88
	.uleb128 0x7
	.string	"t"
	.byte	0x2
	.byte	0x9c
	.long	0x2fe
	.byte	0x90
	.uleb128 0x7
	.string	"mat"
	.byte	0x2
	.byte	0x9d
	.long	0x2fe
	.byte	0x98
	.uleb128 0x7
	.string	"ins"
	.byte	0x2
	.byte	0x9e
	.long	0x2fe
	.byte	0xa0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x2
	.byte	0x9f
	.long	0x79
	.byte	0xa8
	.uleb128 0x7
	.string	"xt"
	.byte	0x2
	.byte	0xa8
	.long	0x304
	.byte	0xac
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0xa9
	.long	0xa1
	.byte	0xd0
	.uleb128 0x7
	.string	"end"
	.byte	0x2
	.byte	0xaa
	.long	0xa1
	.byte	0xd8
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.byte	0xae
	.long	0x31a
	.byte	0xe0
	.uleb128 0x8
	.string	"p1"
	.byte	0x2
	.byte	0xaf
	.long	0x79
	.value	0x130
	.uleb128 0x8
	.string	"tsc"
	.byte	0x2
	.byte	0xc5
	.long	0x32a
	.value	0x138
	.uleb128 0x8
	.string	"msc"
	.byte	0x2
	.byte	0xc6
	.long	0x32a
	.value	0x140
	.uleb128 0x8
	.string	"isc"
	.byte	0x2
	.byte	0xc7
	.long	0x32a
	.value	0x148
	.uleb128 0x8
	.string	"xsc"
	.byte	0x2
	.byte	0xc8
	.long	0x330
	.value	0x150
	.uleb128 0x8
	.string	"bsc"
	.byte	0x2
	.byte	0xc9
	.long	0x87
	.value	0x170
	.uleb128 0x8
	.string	"esc"
	.byte	0x2
	.byte	0xca
	.long	0x87
	.value	0x178
	.uleb128 0x9
	.long	.LASF25
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x180
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x188
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x190
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x198
	.uleb128 0x9
	.long	.LASF29
	.byte	0x2
	.byte	0xcb
	.long	0x87
	.value	0x1a0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x2
	.byte	0xd6
	.long	0x32a
	.value	0x1a8
	.uleb128 0x9
	.long	.LASF31
	.byte	0x2
	.byte	0xd7
	.long	0x32a
	.value	0x1b0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x2
	.byte	0xd8
	.long	0x57
	.value	0x1b8
	.uleb128 0x9
	.long	.LASF33
	.byte	0x2
	.byte	0xd9
	.long	0x57
	.value	0x1bc
	.uleb128 0x8
	.string	"mu"
	.byte	0x2
	.byte	0xde
	.long	0x79
	.value	0x1c0
	.uleb128 0x9
	.long	.LASF34
	.byte	0x2
	.byte	0xdf
	.long	0x79
	.value	0x1c4
	.uleb128 0x9
	.long	.LASF35
	.byte	0x2
	.byte	0xe1
	.long	0x57
	.value	0x1c8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xa1
	.uleb128 0xa
	.long	0x79
	.long	0x31a
	.uleb128 0xb
	.long	0x65
	.byte	0x3
	.uleb128 0xb
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.long	0x79
	.long	0x32a
	.uleb128 0xb
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x87
	.uleb128 0xa
	.long	0x57
	.long	0x346
	.uleb128 0xb
	.long	0x65
	.byte	0x3
	.uleb128 0xb
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xa7
	.uleb128 0xc
	.long	.LASF37
	.byte	0x20
	.byte	0x2
	.value	0x176
	.long	0x38e
	.uleb128 0xd
	.long	.LASF38
	.byte	0x2
	.value	0x177
	.long	0x57
	.byte	0
	.uleb128 0xd
	.long	.LASF39
	.byte	0x2
	.value	0x178
	.long	0x6c
	.byte	0x8
	.uleb128 0xd
	.long	.LASF40
	.byte	0x2
	.value	0x179
	.long	0x87
	.byte	0x10
	.uleb128 0xe
	.string	"pos"
	.byte	0x2
	.value	0x17a
	.long	0x87
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.byte	0x2a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x470
	.uleb128 0x10
	.string	"hmm"
	.byte	0x1
	.byte	0x2a
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.byte	0x2a
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x2a
	.long	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.byte	0x2a
	.long	0x470
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.string	"tr"
	.byte	0x1
	.byte	0x2c
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF44
	.byte	0x1
	.byte	0x2d
	.long	0x72
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0x2e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"dsq"
	.byte	0x1
	.byte	0x2f
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"L"
	.byte	0x1
	.byte	0x30
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.long	.LASF45
	.byte	0x1
	.byte	0x31
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x32
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.long	.LASF47
	.byte	0x1
	.byte	0x33
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"sym"
	.byte	0x1
	.byte	0x34
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.string	"t"
	.byte	0x1
	.byte	0x35
	.long	0x47c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x476
	.uleb128 0x4
	.byte	0x8
	.long	0x34c
	.uleb128 0xa
	.long	0x79
	.long	0x48c
	.uleb128 0xb
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF49
	.byte	0x1
	.value	0x128
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cd
	.uleb128 0x15
	.string	"hmm"
	.byte	0x1
	.value	0x128
	.long	0x346
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x128
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.value	0x128
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0x128
	.long	0x87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x128
	.long	0x470
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.string	"tr"
	.byte	0x1
	.value	0x12a
	.long	0x476
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"dsq"
	.byte	0x1
	.value	0x12b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"seq"
	.byte	0x1
	.value	0x12b
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"mp"
	.byte	0x1
	.value	0x12c
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.string	"ip"
	.byte	0x1
	.value	0x12c
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"dp"
	.byte	0x1
	.value	0x12c
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF51
	.byte	0x1
	.value	0x12d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x18
	.long	.LASF52
	.byte	0x1
	.value	0x12d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.value	0x12d
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x12e
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x18
	.long	.LASF47
	.byte	0x1
	.value	0x12f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x130
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x131
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.value	0x132
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.value	0x197
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x664
	.uleb128 0x15
	.string	"hmm"
	.byte	0x1
	.value	0x197
	.long	0x346
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.value	0x197
	.long	0x2fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x197
	.long	0x2fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x197
	.long	0x2fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.string	"fmp"
	.byte	0x1
	.value	0x199
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"fip"
	.byte	0x1
	.value	0x199
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.string	"fdp"
	.byte	0x1
	.value	0x199
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"k"
	.byte	0x1
	.value	0x19a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0xa
	.long	0x72
	.long	0x674
	.uleb128 0xb
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.long	.LASF59
	.byte	0x2
	.byte	0x39
	.long	0x664
	.uleb128 0x19
	.long	.LASF60
	.byte	0x2
	.byte	0x3a
	.long	0x57
	.uleb128 0x19
	.long	.LASF61
	.byte	0x2
	.byte	0x3b
	.long	0x57
	.uleb128 0x19
	.long	.LASF62
	.byte	0x2
	.byte	0x3c
	.long	0x57
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
.LASF57:
	.string	"ret_ip"
.LASF28:
	.string	"bsc_mem"
.LASF41:
	.string	"ret_dsq"
.LASF56:
	.string	"ret_mp"
.LASF34:
	.string	"lambda"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF19:
	.string	"tpri"
.LASF23:
	.string	"begin"
.LASF38:
	.string	"tlen"
.LASF17:
	.string	"ctime"
.LASF30:
	.string	"dnam"
.LASF39:
	.string	"statetype"
.LASF18:
	.string	"checksum"
.LASF61:
	.string	"Alphabet_size"
.LASF16:
	.string	"nseq"
.LASF54:
	.string	"mthresh"
.LASF25:
	.string	"tsc_mem"
.LASF26:
	.string	"msc_mem"
.LASF59:
	.string	"Alphabet"
.LASF9:
	.string	"float"
.LASF64:
	.string	"emit.c"
.LASF65:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF20:
	.string	"mpri"
.LASF35:
	.string	"flags"
.LASF47:
	.string	"tpos"
.LASF0:
	.string	"unsigned char"
.LASF55:
	.string	"StateOccupancy"
.LASF45:
	.string	"alloc_tlen"
.LASF4:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF44:
	.string	"type"
.LASF2:
	.string	"unsigned int"
.LASF50:
	.string	"ret_seq"
.LASF58:
	.string	"ret_dp"
.LASF27:
	.string	"isc_mem"
.LASF1:
	.string	"short unsigned int"
.LASF49:
	.string	"EmitConsensusSequence"
.LASF42:
	.string	"ret_L"
.LASF8:
	.string	"char"
.LASF29:
	.string	"esc_mem"
.LASF62:
	.string	"Alphabet_iupac"
.LASF40:
	.string	"nodeidx"
.LASF43:
	.string	"ret_tr"
.LASF46:
	.string	"alloc_L"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF21:
	.string	"ipri"
.LASF22:
	.string	"tbd1"
.LASF48:
	.string	"EmitSequence"
.LASF15:
	.string	"comlog"
.LASF53:
	.string	"nins"
.LASF13:
	.string	"name"
.LASF24:
	.string	"null"
.LASF31:
	.string	"dnai"
.LASF51:
	.string	"nmat"
.LASF37:
	.string	"p7trace_s"
.LASF36:
	.string	"plan7_s"
.LASF32:
	.string	"dna2"
.LASF33:
	.string	"dna4"
.LASF60:
	.string	"Alphabet_type"
.LASF14:
	.string	"desc"
.LASF52:
	.string	"ndel"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
