	.file	"emulation.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 emulation.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
.LC0:
	.string	"Profile %s will have more than 1000 positions. GCG won't read it; Compugen will."
.LC1:
	.string	"!!AA_PROFILE 1.0\n"
.LC2:
	.string	"!!NA_PROFILE 1.0\n"
	.align 8
.LC3:
	.string	"No support for profiles with non-biological alphabets"
.LC4:
	.string	"(Peptide) "
.LC5:
	.string	"(Nucleotide) "
.LC6:
	.string	""
.LC7:
	.string	"2.3"
	.align 8
.LC8:
	.string	"HMMCONVERT v%s Length: %d %s|%s|%s\n"
	.align 8
.LC9:
	.string	"   Profile converted from a profile HMM using HMMER v%s emulation.\n"
	.align 8
.LC10:
	.string	"   Compugen XSW extended profile format.\n"
	.align 8
.LC11:
	.string	"   Use -model=xsw.model -nonor -noave -gapop=10 -gapext=1 -qgapop=10 -qgapext=1\n"
	.align 8
.LC12:
	.string	"      with om on the Compugen BIC to get the closest approximation to HMMER bit scores.\n"
	.align 8
.LC13:
	.string	"   WARNING: There is a loss of information in this conversion.\n"
	.align 8
.LC14:
	.string	"      Neither the scores nor even the rank order of hits will be precisely\n"
	.align 8
.LC15:
	.string	"      preserved in a comparison of HMMER hmmsearch to GCG profilesearch.\n"
	.align 8
.LC16:
	.string	"      The profile score is an approximation of the (single-hit) HMMER score.\n\n"
	.align 8
.LC17:
	.string	"   Use -nonor -noave -gap=10 -len=1 with profilesearch and friends\n"
	.align 8
.LC18:
	.string	"      to get the closest approximation to HMMER bit scores.\n"
.LC19:
	.string	"Cons"
.LC20:
	.string	"    %c "
.LC21:
	.string	"  Gap   Len  QGap  Qlen ..\n"
.LC22:
	.string	"  Gap   Len ..\n"
.LC23:
	.string	"! %d\n"
.LC24:
	.string	" %c  "
.LC26:
	.string	"%5d "
.LC28:
	.string	"%5d %5d %5d %5d\n"
.LC29:
	.string	"%5d %5d\n"
.LC30:
	.string	" *  "
	.text
	.globl	WriteProfile
	.type	WriteProfile, @function
WriteProfile:
.LFB2:
	.file 1 "emulation.c"
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# hmm, hmm
	movl	%edx, -52(%rbp)	# do_xsw, do_xsw
	.loc 1 99 0
	movq	-48(%rbp), %rax	# hmm, tmp215
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	P7Logoddsify	#
	.loc 1 105 0
	movq	-48(%rbp), %rax	# hmm, tmp216
	movl	136(%rax), %eax	# hmm_15(D)->M, D.6645
	cmpl	$1000, %eax	#, D.6645
	jle	.L2	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, do_xsw
	jne	.L2	#,
	.loc 1 106 0 is_stmt 1
	movq	-48(%rbp), %rax	# hmm, tmp217
	movq	(%rax), %rax	# hmm_15(D)->name, D.6646
	movq	%rax, %rsi	# D.6646,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
.L2:
	.loc 1 115 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.0
	cmpl	$3, %eax	#, Alphabet_type.0
	jne	.L3	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp218
	movq	%rax, %rcx	# tmp218,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	jmp	.L4	#
.L3:
	.loc 1 116 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.1
	cmpl	$2, %eax	#, Alphabet_type.1
	jne	.L5	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp219
	movq	%rax, %rcx	# tmp219,
	movl	$17, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
	jmp	.L4	#
.L5:
	.loc 1 117 0 is_stmt 1
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L4:
	.loc 1 119 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.2
	cmpl	$3, %eax	#, Alphabet_type.2
	jne	.L6	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp220
	movq	%rax, %rcx	# tmp220,
	movl	$10, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	jmp	.L7	#
.L6:
	.loc 1 120 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.3
	cmpl	$2, %eax	#, Alphabet_type.3
	jne	.L7	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp221
	movq	%rax, %rcx	# tmp221,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
.L7:
	.loc 1 124 0 is_stmt 1
	movq	-48(%rbp), %rax	# hmm, tmp222
	movl	456(%rax), %eax	# hmm_15(D)->flags, D.6645
	andl	$2, %eax	#, D.6645
	.loc 1 121 0
	testl	%eax, %eax	# D.6645
	je	.L8	#,
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# hmm, tmp223
	movq	16(%rax), %rax	# hmm_15(D)->desc, iftmp.4
	jmp	.L9	#
.L8:
	.loc 1 121 0 discriminator 2
	movl	$.LC6, %eax	#, iftmp.4
.L9:
	.loc 1 123 0 is_stmt 1 discriminator 3
	movq	-48(%rbp), %rdx	# hmm, tmp224
	movl	456(%rdx), %edx	# hmm_15(D)->flags, D.6645
	andl	$512, %edx	#, D.6645
	.loc 1 121 0 discriminator 3
	testl	%edx, %edx	# D.6645
	je	.L10	#,
	.loc 1 121 0 is_stmt 0 discriminator 4
	movq	-48(%rbp), %rdx	# hmm, tmp225
	movq	8(%rdx), %rdx	# hmm_15(D)->acc, iftmp.5
	jmp	.L11	#
.L10:
	.loc 1 121 0 discriminator 5
	movl	$.LC6, %edx	#, iftmp.5
.L11:
	.loc 1 121 0 discriminator 6
	movq	-48(%rbp), %rcx	# hmm, tmp226
	movq	(%rcx), %rsi	# hmm_15(D)->name, D.6646
	movq	-48(%rbp), %rcx	# hmm, tmp227
	movl	136(%rcx), %ecx	# hmm_15(D)->M, D.6645
	movq	-40(%rbp), %rdi	# fp, tmp228
	movq	%rax, (%rsp)	# iftmp.4,
	movq	%rdx, %r9	# iftmp.5,
	movq	%rsi, %r8	# D.6646,
	movl	$.LC7, %edx	#,
	movl	$.LC8, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 128 0 is_stmt 1 discriminator 6
	cmpl	$0, -52(%rbp)	#, do_xsw
	je	.L12	#,
	.loc 1 130 0
	movq	-40(%rbp), %rax	# fp, tmp229
	movl	$.LC7, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp229,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 131 0
	movq	-40(%rbp), %rax	# fp, tmp230
	movq	%rax, %rcx	# tmp230,
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 132 0
	movq	-40(%rbp), %rax	# fp, tmp231
	movq	%rax, %rcx	# tmp231,
	movl	$80, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 133 0
	movq	-40(%rbp), %rax	# fp, tmp232
	movq	%rax, %rcx	# tmp232,
	movl	$88, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 134 0
	movq	-40(%rbp), %rax	# fp, tmp233
	movq	%rax, %rcx	# tmp233,
	movl	$63, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	.loc 1 135 0
	movq	-40(%rbp), %rax	# fp, tmp234
	movq	%rax, %rcx	# tmp234,
	movl	$75, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 136 0
	movq	-40(%rbp), %rax	# fp, tmp235
	movq	%rax, %rcx	# tmp235,
	movl	$73, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 137 0
	movq	-40(%rbp), %rax	# fp, tmp236
	movq	%rax, %rcx	# tmp236,
	movl	$78, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
	jmp	.L13	#
.L12:
	.loc 1 141 0
	movq	-40(%rbp), %rax	# fp, tmp237
	movl	$.LC7, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp237,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 142 0
	movq	-40(%rbp), %rax	# fp, tmp238
	movq	%rax, %rcx	# tmp238,
	movl	$67, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
	.loc 1 143 0
	movq	-40(%rbp), %rax	# fp, tmp239
	movq	%rax, %rcx	# tmp239,
	movl	$60, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	fwrite	#
	.loc 1 144 0
	movq	-40(%rbp), %rax	# fp, tmp240
	movq	%rax, %rcx	# tmp240,
	movl	$63, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	.loc 1 145 0
	movq	-40(%rbp), %rax	# fp, tmp241
	movq	%rax, %rcx	# tmp241,
	movl	$75, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 146 0
	movq	-40(%rbp), %rax	# fp, tmp242
	movq	%rax, %rcx	# tmp242,
	movl	$73, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	.loc 1 147 0
	movq	-40(%rbp), %rax	# fp, tmp243
	movq	%rax, %rcx	# tmp243,
	movl	$78, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC16, %edi	#,
	call	fwrite	#
.L13:
	.loc 1 153 0
	movq	-40(%rbp), %rax	# fp, tmp244
	movq	%rax, %rcx	# tmp244,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
	.loc 1 154 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L14	#
.L15:
	.loc 1 155 0 discriminator 2
	movl	-28(%rbp), %eax	# x, tmp246
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.6647
	movsbl	%al, %edx	# D.6647, D.6645
	movq	-40(%rbp), %rax	# fp, tmp247
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp247,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 154 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L14:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.6
	cmpl	%eax, -28(%rbp)	# Alphabet_iupac.6, x
	jl	.L15	#,
	.loc 1 156 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, do_xsw
	je	.L16	#,
	.loc 1 157 0
	movq	-40(%rbp), %rax	# fp, tmp248
	movq	%rax, %rcx	# tmp248,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
	jmp	.L17	#
.L16:
	.loc 1 159 0
	movq	-40(%rbp), %rax	# fp, tmp249
	movq	%rax, %rcx	# tmp249,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
.L17:
	.loc 1 163 0
	movl	$1, -32(%rbp)	#, k
	jmp	.L18	#
.L33:
	.loc 1 166 0
	movl	-32(%rbp), %eax	# k, tmp250
	leal	-1(%rax), %ecx	#, D.6645
	movl	$1717986919, %edx	#, tmp252
	movl	%ecx, %eax	# D.6645, tmp337
	imull	%edx	# tmp252
	sarl	$2, %edx	#, tmp253
	movl	%ecx, %eax	# D.6645, tmp254
	sarl	$31, %eax	#, tmp254
	subl	%eax, %edx	# tmp254, D.6645
	movl	%edx, %eax	# D.6645, tmp255
	sall	$2, %eax	#, tmp255
	addl	%edx, %eax	# D.6645, tmp255
	addl	%eax, %eax	# tmp256
	subl	%eax, %ecx	# tmp255, D.6645
	movl	%ecx, %edx	# D.6645, D.6645
	testl	%edx, %edx	# D.6645
	jne	.L19	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	cmpl	$10, -32(%rbp)	#, k
	jle	.L19	#,
	.loc 1 167 0 is_stmt 1
	movl	-32(%rbp), %edx	# k, tmp257
	movq	-40(%rbp), %rax	# fp, tmp258
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	fprintf	#
.L19:
	.loc 1 170 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.7
	movq	-48(%rbp), %rax	# hmm, tmp259
	movq	152(%rax), %rax	# hmm_15(D)->mat, D.6648
	movl	-32(%rbp), %ecx	# k, tmp260
	movslq	%ecx, %rcx	# tmp260, D.6649
	salq	$3, %rcx	#, D.6649
	addq	%rcx, %rax	# D.6649, D.6648
	movq	(%rax), %rax	# *_47, D.6650
	movl	%edx, %esi	# Alphabet_size.7,
	movq	%rax, %rdi	# D.6650,
	call	FArgMax	#
	movl	%eax, -28(%rbp)	# tmp261, x
	.loc 1 171 0
	movl	-28(%rbp), %eax	# x, tmp263
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.6647
	movsbl	%al, %edx	# D.6647, D.6645
	movq	-40(%rbp), %rax	# fp, tmp264
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp264,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 175 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L20	#
.L22:
	.loc 1 177 0
	movq	-48(%rbp), %rax	# hmm, tmp265
	movq	320(%rax), %rax	# hmm_15(D)->msc, D.6651
	movl	-28(%rbp), %edx	# x, tmp266
	movslq	%edx, %rdx	# tmp266, D.6649
	salq	$3, %rdx	#, D.6649
	addq	%rdx, %rax	# D.6649, D.6651
	movq	(%rax), %rax	# *_57, D.6652
	movl	-32(%rbp), %edx	# k, tmp267
	movslq	%edx, %rdx	# tmp267, D.6649
	salq	$2, %rdx	#, D.6649
	addq	%rdx, %rax	# D.6649, D.6652
	movl	(%rax), %eax	# *_61, tmp268
	movl	%eax, -24(%rbp)	# tmp268, sc
	.loc 1 178 0
	movq	-48(%rbp), %rax	# hmm, tmp269
	movl	136(%rax), %eax	# hmm_15(D)->M, D.6645
	cmpl	-32(%rbp), %eax	# k, D.6645
	jle	.L21	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# hmm, tmp270
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	movq	(%rax), %rax	# *_64, D.6652
	movl	-32(%rbp), %edx	# k, tmp271
	movslq	%edx, %rdx	# tmp271, D.6649
	salq	$2, %rdx	#, D.6649
	addq	%rdx, %rax	# D.6649, D.6652
	movl	(%rax), %eax	# *_68, D.6645
	addl	%eax, -24(%rbp)	# D.6645, sc
.L21:
	.loc 1 179 0 is_stmt 1
	movl	-24(%rbp), %eax	# sc, tmp272
	imull	$100, %eax, %eax	#, tmp272, D.6645
	cvtsi2sd	%eax, %xmm0	# D.6645, D.6653
	movsd	.LC25(%rip), %xmm1	#, tmp273
	divsd	%xmm1, %xmm0	# tmp273, D.6653
	cvttsd2si	%xmm0, %eax	# D.6653, tmp274
	movl	%eax, -24(%rbp)	# tmp274, sc
	.loc 1 180 0
	movl	-24(%rbp), %edx	# sc, tmp275
	movq	-40(%rbp), %rax	# fp, tmp276
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp276,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 175 0
	addl	$1, -28(%rbp)	#, x
.L20:
	.loc 1 175 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.8
	cmpl	%eax, -28(%rbp)	# Alphabet_iupac.8, x
	jl	.L22	#,
	.loc 1 187 0 is_stmt 1
	cmpl	$1, -32(%rbp)	#, k
	jle	.L23	#,
	.loc 1 189 0
	movq	-48(%rbp), %rax	# hmm, tmp277
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$32, %rax	#, D.6651
	movq	(%rax), %rax	# *_77, D.6652
	movl	-32(%rbp), %edx	# k, tmp278
	movslq	%edx, %rdx	# tmp278, D.6649
	salq	$2, %rdx	#, D.6649
	subq	$4, %rdx	#, D.6654
	addq	%rdx, %rax	# D.6654, D.6652
	movl	(%rax), %edx	# *_82, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp279
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	movq	(%rax), %rax	# *_84, D.6652
	movl	-32(%rbp), %ecx	# k, tmp280
	movslq	%ecx, %rcx	# tmp280, D.6649
	salq	$2, %rcx	#, D.6649
	subq	$4, %rcx	#, D.6654
	addq	%rcx, %rax	# D.6654, D.6652
	movl	(%rax), %ecx	# *_89, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp281
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$8, %rax	#, D.6651
	movq	(%rax), %rax	# *_92, D.6652
	movl	-32(%rbp), %esi	# k, tmp282
	movslq	%esi, %rsi	# tmp282, D.6649
	salq	$2, %rsi	#, D.6649
	subq	$4, %rsi	#, D.6654
	addq	%rsi, %rax	# D.6654, D.6652
	movl	(%rax), %esi	# *_97, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp283
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$24, %rax	#, D.6651
	movq	(%rax), %rax	# *_100, D.6652
	movl	-32(%rbp), %edi	# k, tmp284
	movslq	%edi, %rdi	# tmp284, D.6649
	salq	$2, %rdi	#, D.6649
	subq	$4, %rdi	#, D.6654
	addq	%rdi, %rax	# D.6654, D.6652
	movl	(%rax), %eax	# *_105, D.6645
	addl	%esi, %eax	# D.6645, D.6645
	subl	%eax, %ecx	# D.6645, D.6645
	movl	%ecx, %eax	# D.6645, D.6645
	addl	%edx, %eax	# D.6645, tmp285
	movl	%eax, -16(%rbp)	# tmp285, gap
	.loc 1 190 0
	movl	-16(%rbp), %eax	# gap, tmp286
	imull	$100, %eax, %eax	#, tmp286, D.6645
	cvtsi2sd	%eax, %xmm0	# D.6645, D.6653
	movsd	.LC27(%rip), %xmm1	#, tmp287
	divsd	%xmm1, %xmm0	# tmp287, D.6653
	cvttsd2si	%xmm0, %eax	# D.6653, tmp288
	movl	%eax, -16(%rbp)	# tmp288, gap
	jmp	.L24	#
.L23:
	.loc 1 192 0
	movl	$100, -16(%rbp)	#, gap
.L24:
	.loc 1 195 0
	cmpl	$1, -32(%rbp)	#, k
	jle	.L25	#,
	.loc 1 197 0
	movq	-48(%rbp), %rax	# hmm, tmp289
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$32, %rax	#, D.6651
	movq	(%rax), %rax	# *_116, D.6652
	movl	-32(%rbp), %edx	# k, tmp290
	movslq	%edx, %rdx	# tmp290, D.6649
	salq	$2, %rdx	#, D.6649
	subq	$4, %rdx	#, D.6654
	addq	%rdx, %rax	# D.6654, D.6652
	movl	(%rax), %eax	# *_121, D.6645
	negl	%eax	# tmp291
	movl	%eax, -12(%rbp)	# tmp291, len
	.loc 1 198 0
	movl	-12(%rbp), %eax	# len, tmp292
	imull	$100, %eax, %eax	#, tmp292, D.6645
	cvtsi2sd	%eax, %xmm0	# D.6645, D.6653
	movsd	.LC25(%rip), %xmm1	#, tmp293
	divsd	%xmm1, %xmm0	# tmp293, D.6653
	cvttsd2si	%xmm0, %eax	# D.6653, tmp294
	movl	%eax, -12(%rbp)	# tmp294, len
	jmp	.L26	#
.L25:
	.loc 1 200 0
	movl	$100, -12(%rbp)	#, len
.L26:
	.loc 1 203 0
	cmpl	$1, -32(%rbp)	#, k
	jle	.L27	#,
	.loc 1 205 0
	movq	-48(%rbp), %rax	# hmm, tmp295
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$48, %rax	#, D.6651
	movq	(%rax), %rax	# *_130, D.6652
	movl	-32(%rbp), %edx	# k, tmp296
	movslq	%edx, %rdx	# tmp296, D.6649
	salq	$2, %rdx	#, D.6649
	subq	$4, %rdx	#, D.6654
	addq	%rdx, %rax	# D.6654, D.6652
	movl	(%rax), %edx	# *_135, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp297
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	movq	(%rax), %rax	# *_137, D.6652
	movl	-32(%rbp), %ecx	# k, tmp298
	movslq	%ecx, %rcx	# tmp298, D.6649
	salq	$2, %rcx	#, D.6649
	subq	$4, %rcx	#, D.6654
	addq	%rcx, %rax	# D.6654, D.6652
	movl	(%rax), %ecx	# *_142, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp299
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$40, %rax	#, D.6651
	movq	(%rax), %rax	# *_145, D.6652
	movl	-32(%rbp), %esi	# k, tmp300
	movslq	%esi, %rsi	# tmp300, D.6649
	salq	$2, %rsi	#, D.6649
	subq	$4, %rsi	#, D.6654
	addq	%rsi, %rax	# D.6654, D.6652
	movl	(%rax), %esi	# *_150, D.6645
	movq	-48(%rbp), %rax	# hmm, tmp301
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$16, %rax	#, D.6651
	movq	(%rax), %rax	# *_153, D.6652
	movl	-32(%rbp), %edi	# k, tmp302
	movslq	%edi, %rdi	# tmp302, D.6649
	salq	$2, %rdi	#, D.6649
	subq	$4, %rdi	#, D.6654
	addq	%rdi, %rax	# D.6654, D.6652
	movl	(%rax), %eax	# *_158, D.6645
	addl	%esi, %eax	# D.6645, D.6645
	subl	%eax, %ecx	# D.6645, D.6645
	movl	%ecx, %eax	# D.6645, D.6645
	addl	%edx, %eax	# D.6645, tmp303
	movl	%eax, -8(%rbp)	# tmp303, qgap
	.loc 1 206 0
	movl	-8(%rbp), %eax	# qgap, tmp304
	imull	$100, %eax, %eax	#, tmp304, D.6645
	cvtsi2sd	%eax, %xmm0	# D.6645, D.6653
	movsd	.LC27(%rip), %xmm1	#, tmp305
	divsd	%xmm1, %xmm0	# tmp305, D.6653
	cvttsd2si	%xmm0, %eax	# D.6653, tmp306
	movl	%eax, -8(%rbp)	# tmp306, qgap
	jmp	.L28	#
.L27:
	.loc 1 208 0
	movl	$100, -8(%rbp)	#, qgap
.L28:
	.loc 1 210 0
	cmpl	$1, -32(%rbp)	#, k
	jle	.L29	#,
	.loc 1 212 0
	movq	-48(%rbp), %rax	# hmm, tmp307
	movq	312(%rax), %rax	# hmm_15(D)->tsc, D.6651
	addq	$48, %rax	#, D.6651
	movq	(%rax), %rax	# *_169, D.6652
	movl	-32(%rbp), %edx	# k, tmp308
	movslq	%edx, %rdx	# tmp308, D.6649
	salq	$2, %rdx	#, D.6649
	subq	$4, %rdx	#, D.6654
	addq	%rdx, %rax	# D.6654, D.6652
	movl	(%rax), %eax	# *_174, D.6645
	negl	%eax	# tmp309
	movl	%eax, -4(%rbp)	# tmp309, qlen
	.loc 1 213 0
	movl	-4(%rbp), %eax	# qlen, tmp310
	imull	$100, %eax, %eax	#, tmp310, D.6645
	cvtsi2sd	%eax, %xmm0	# D.6645, D.6653
	movsd	.LC25(%rip), %xmm1	#, tmp311
	divsd	%xmm1, %xmm0	# tmp311, D.6653
	cvttsd2si	%xmm0, %eax	# D.6653, tmp312
	movl	%eax, -4(%rbp)	# tmp312, qlen
	jmp	.L30	#
.L29:
	.loc 1 215 0
	movl	$100, -4(%rbp)	#, qlen
.L30:
	.loc 1 218 0
	cmpl	$0, -52(%rbp)	#, do_xsw
	je	.L31	#,
	.loc 1 219 0
	movl	-4(%rbp), %edi	# qlen, tmp313
	movl	-8(%rbp), %esi	# qgap, tmp314
	movl	-12(%rbp), %ecx	# len, tmp315
	movl	-16(%rbp), %edx	# gap, tmp316
	movq	-40(%rbp), %rax	# fp, tmp317
	movl	%edi, %r9d	# tmp313,
	movl	%esi, %r8d	# tmp314,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp317,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L32	#
.L31:
	.loc 1 221 0
	movl	-12(%rbp), %ecx	# len, tmp318
	movl	-16(%rbp), %edx	# gap, tmp319
	movq	-40(%rbp), %rax	# fp, tmp320
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp320,
	movl	$0, %eax	#,
	call	fprintf	#
.L32:
	.loc 1 163 0
	addl	$1, -32(%rbp)	#, k
.L18:
	.loc 1 163 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# hmm, tmp321
	movl	136(%rax), %eax	# hmm_15(D)->M, D.6645
	cmpl	-32(%rbp), %eax	# k, D.6645
	jge	.L33	#,
	.loc 1 229 0 is_stmt 1
	movq	-40(%rbp), %rax	# fp, tmp322
	movq	%rax, %rcx	# tmp322,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC30, %edi	#,
	call	fwrite	#
	.loc 1 230 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L34	#
.L37:
	.loc 1 232 0
	movl	.LC31(%rip), %eax	#, tmp323
	movl	%eax, -20(%rbp)	# tmp323, nx
	.loc 1 233 0
	movl	$1, -32(%rbp)	#, k
	jmp	.L35	#
.L36:
	.loc 1 234 0 discriminator 2
	movq	-48(%rbp), %rax	# hmm, tmp324
	movq	152(%rax), %rax	# hmm_15(D)->mat, D.6648
	movl	-32(%rbp), %edx	# k, tmp325
	movslq	%edx, %rdx	# tmp325, D.6649
	salq	$3, %rdx	#, D.6649
	addq	%rdx, %rax	# D.6649, D.6648
	movq	(%rax), %rax	# *_191, D.6650
	movl	-28(%rbp), %edx	# x, tmp326
	movslq	%edx, %rdx	# tmp326, D.6649
	salq	$2, %rdx	#, D.6649
	addq	%rdx, %rax	# D.6649, D.6650
	movss	(%rax), %xmm0	# *_195, D.6655
	movss	-20(%rbp), %xmm1	# nx, tmp328
	addss	%xmm1, %xmm0	# tmp328, tmp327
	movss	%xmm0, -20(%rbp)	# tmp327, nx
	.loc 1 233 0 discriminator 2
	addl	$1, -32(%rbp)	#, k
.L35:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# hmm, tmp329
	movl	136(%rax), %eax	# hmm_15(D)->M, D.6645
	cmpl	-32(%rbp), %eax	# k, D.6645
	jge	.L36	#,
	.loc 1 235 0 is_stmt 1
	movq	-48(%rbp), %rax	# hmm, tmp330
	movl	56(%rax), %eax	# hmm_15(D)->nseq, D.6645
	cvtsi2ss	%eax, %xmm0	# D.6645, D.6655
	movss	-20(%rbp), %xmm1	# nx, tmp332
	mulss	%xmm1, %xmm0	# tmp332, tmp331
	movss	%xmm0, -20(%rbp)	# tmp331, nx
	.loc 1 236 0
	movss	-20(%rbp), %xmm0	# nx, tmp333
	cvttss2si	%xmm0, %edx	# tmp333, D.6645
	movq	-40(%rbp), %rax	# fp, tmp334
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp334,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 230 0
	addl	$1, -28(%rbp)	#, x
.L34:
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.9
	cmpl	%eax, -28(%rbp)	# Alphabet_size.9, x
	jl	.L37	#,
	.loc 1 238 0 is_stmt 1
	jmp	.L38	#
.L39:
	.loc 1 239 0 discriminator 2
	movq	-40(%rbp), %rax	# fp, tmp335
	movl	$0, %edx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp335,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 238 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L38:
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.10
	cmpl	%eax, -28(%rbp)	# Alphabet_iupac.10, x
	jl	.L39	#,
	.loc 1 240 0 is_stmt 1
	movq	-40(%rbp), %rax	# fp, tmp336
	movq	%rax, %rsi	# tmp336,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 241 0
	nop
	.loc 1 242 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	WriteProfile, .-WriteProfile
	.section	.rodata
	.align 8
.LC25:
	.long	0
	.long	1083129856
	.align 8
.LC27:
	.long	0
	.long	1086556160
	.align 4
.LC31:
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x650
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF82
	.byte	0x1
	.long	.LASF83
	.long	.LASF84
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
	.long	.LASF85
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
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x292
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
	.long	0x2a0
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
	.long	0x2a0
	.byte	0x58
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x87
	.long	0x2a0
	.byte	0x60
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x88
	.long	0x2a0
	.byte	0x68
	.uleb128 0xe
	.string	"ga1"
	.byte	0x6
	.byte	0x90
	.long	0x292
	.byte	0x70
	.uleb128 0xe
	.string	"ga2"
	.byte	0x6
	.byte	0x90
	.long	0x292
	.byte	0x74
	.uleb128 0xe
	.string	"tc1"
	.byte	0x6
	.byte	0x91
	.long	0x292
	.byte	0x78
	.uleb128 0xe
	.string	"tc2"
	.byte	0x6
	.byte	0x91
	.long	0x292
	.byte	0x7c
	.uleb128 0xe
	.string	"nc1"
	.byte	0x6
	.byte	0x92
	.long	0x292
	.byte	0x80
	.uleb128 0xe
	.string	"nc2"
	.byte	0x6
	.byte	0x92
	.long	0x292
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
	.long	0x292
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
	.long	0x292
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
	.long	0x2a0
	.value	0x170
	.uleb128 0xf
	.string	"esc"
	.byte	0x6
	.byte	0xca
	.long	0x2a0
	.value	0x178
	.uleb128 0x10
	.long	.LASF64
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x180
	.uleb128 0x10
	.long	.LASF65
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x188
	.uleb128 0x10
	.long	.LASF66
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x190
	.uleb128 0x10
	.long	.LASF67
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
	.value	0x198
	.uleb128 0x10
	.long	.LASF68
	.byte	0x6
	.byte	0xcb
	.long	0x2a0
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
	.long	0x292
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x6
	.byte	0xdf
	.long	0x292
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
	.long	0x292
	.long	0x533
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x543
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a0
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
	.long	.LASF86
	.byte	0x1
	.byte	0x5b
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x617
	.uleb128 0x12
	.string	"fp"
	.byte	0x1
	.byte	0x5b
	.long	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"hmm"
	.byte	0x1
	.byte	0x5b
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x14
	.string	"k"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.string	"x"
	.byte	0x1
	.byte	0x5e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.string	"sc"
	.byte	0x1
	.byte	0x5f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"nx"
	.byte	0x1
	.byte	0x60
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"gap"
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.long	.LASF77
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x627
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x16
	.long	.LASF78
	.byte	0x6
	.byte	0x39
	.long	0x617
	.uleb128 0x16
	.long	.LASF79
	.byte	0x6
	.byte	0x3a
	.long	0x62
	.uleb128 0x16
	.long	.LASF80
	.byte	0x6
	.byte	0x3b
	.long	0x62
	.uleb128 0x16
	.long	.LASF81
	.byte	0x6
	.byte	0x3c
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
.LASF67:
	.string	"bsc_mem"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
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
.LASF77:
	.string	"qlen"
.LASF58:
	.string	"tpri"
.LASF62:
	.string	"begin"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF56:
	.string	"ctime"
.LASF31:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_buf_base"
.LASF69:
	.string	"dnam"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF57:
	.string	"checksum"
.LASF80:
	.string	"Alphabet_size"
.LASF55:
	.string	"nseq"
.LASF64:
	.string	"tsc_mem"
.LASF65:
	.string	"msc_mem"
.LASF78:
	.string	"Alphabet"
.LASF47:
	.string	"float"
.LASF66:
	.string	"isc_mem"
.LASF84:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"long long int"
.LASF83:
	.string	"emulation.c"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF76:
	.string	"qgap"
.LASF45:
	.string	"_sbuf"
.LASF42:
	.string	"_IO_FILE"
.LASF75:
	.string	"do_xsw"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"plan7_s"
.LASF82:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF74:
	.string	"flags"
.LASF50:
	.string	"long long unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF36:
	.string	"__pad2"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF39:
	.string	"__pad5"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF68:
	.string	"esc_mem"
.LASF81:
	.string	"Alphabet_iupac"
.LASF35:
	.string	"__pad1"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF44:
	.string	"_next"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF48:
	.string	"double"
.LASF60:
	.string	"ipri"
.LASF9:
	.string	"__off64_t"
.LASF73:
	.string	"lambda"
.LASF61:
	.string	"tbd1"
.LASF26:
	.string	"_chain"
.LASF59:
	.string	"mpri"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF54:
	.string	"comlog"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF52:
	.string	"name"
.LASF86:
	.string	"WriteProfile"
.LASF63:
	.string	"null"
.LASF70:
	.string	"dnai"
.LASF22:
	.string	"_IO_save_base"
.LASF27:
	.string	"_fileno"
.LASF12:
	.string	"FILE"
.LASF3:
	.string	"unsigned int"
.LASF71:
	.string	"dna2"
.LASF72:
	.string	"dna4"
.LASF79:
	.string	"Alphabet_type"
.LASF85:
	.string	"_IO_lock_t"
.LASF53:
	.string	"desc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
