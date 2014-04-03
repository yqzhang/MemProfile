	.file	"utf8.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D PERL_CORE -D SPEC_CPU_LP64 -D SPEC_CPU_LINUX_X64 utf8.c -mtune=generic
# -march=x86-64 -g -fverbose-asm -fno-strict-aliasing -fstack-protector
# -Wformat -Wformat-security
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
	.data
	.align 32
	.type	unees, @object
	.size	unees, 53
unees:
	.string	"Malformed UTF-8 character (unexpected end of string)"
	.section	.rodata
.LC0:
	.string	"UTF-16 surrogate 0x%04lx"
	.align 8
.LC1:
	.string	"Unicode character 0x%04lx is illegal"
	.text
	.globl	Perl_uvuni_to_utf8_flags
	.type	Perl_uvuni_to_utf8_flags, @function
Perl_uvuni_to_utf8_flags:
.LFB2:
	.file 1 "utf8.c"
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# uv, uv
	movq	%rdx, -24(%rbp)	# flags, flags
	.loc 1 66 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.0
	movq	80(%rax), %rax	# PL_curcop.0_2->cop_warnings, D.13255
	testq	%rax, %rax	# D.13255
	je	.L2	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.1
	movq	80(%rax), %rax	# PL_curcop.1_4->cop_warnings, D.13255
	cmpq	$32, %rax	#, D.13255
	je	.L2	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.2
	movq	80(%rax), %rax	# PL_curcop.2_6->cop_warnings, D.13255
	cmpq	$16, %rax	#, D.13255
	je	.L3	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.3
	movq	80(%rax), %rax	# PL_curcop.3_8->cop_warnings, D.13255
	movq	(%rax), %rax	# _9->sv_any, D.13256
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, D.13257
	addq	$11, %rax	#, D.13257
	movzbl	(%rax), %eax	# *_12, D.13258
	movsbl	%al, %eax	# D.13258, D.13259
	andl	$1, %eax	#, D.13259
	testl	%eax, %eax	# D.13259
	jne	.L3	#,
.L2:
	.loc 1 66 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.4
	movq	80(%rax), %rax	# PL_curcop.4_16->cop_warnings, D.13255
	testq	%rax, %rax	# D.13255
	jne	.L4	#,
	.loc 1 66 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.5
	movzbl	%al, %eax	# PL_dowarn.5, D.13259
	andl	$1, %eax	#, D.13259
	testl	%eax, %eax	# D.13259
	je	.L4	#,
.L3:
	.loc 1 67 0 is_stmt 1
	cmpq	$55295, -16(%rbp)	#, uv
	jbe	.L5	#,
	.loc 1 67 0 is_stmt 0 discriminator 1
	cmpq	$57343, -16(%rbp)	#, uv
	ja	.L5	#,
	.loc 1 68 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# flags, tmp263
	andl	$1, %eax	#, D.13260
	.loc 1 67 0 discriminator 1
	testq	%rax, %rax	# D.13260
	jne	.L5	#,
	.loc 1 69 0
	movq	-16(%rbp), %rax	# uv, tmp264
	movq	%rax, %rdx	# tmp264,
	movl	$.LC0, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L4	#
.L5:
	.loc 1 70 0
	cmpq	$64975, -16(%rbp)	#, uv
	jbe	.L6	#,
	.loc 1 71 0
	cmpq	$65007, -16(%rbp)	#, uv
	ja	.L6	#,
	.loc 1 72 0 discriminator 1
	movq	-24(%rbp), %rax	# flags, tmp265
	andl	$2, %eax	#, D.13260
	.loc 1 71 0 discriminator 1
	testq	%rax, %rax	# D.13260
	je	.L7	#,
.L6:
	.loc 1 74 0
	movq	-16(%rbp), %rax	# uv, tmp266
	andl	$65534, %eax	#, D.13260
	.loc 1 73 0
	cmpq	$65534, %rax	#, D.13260
	jne	.L4	#,
	.loc 1 75 0
	movq	-24(%rbp), %rax	# flags, tmp267
	andl	$4, %eax	#, D.13260
	.loc 1 74 0
	testq	%rax, %rax	# D.13260
	jne	.L4	#,
.L7:
	.loc 1 75 0
	cmpq	$1114111, -16(%rbp)	#, uv
	jbe	.L8	#,
	.loc 1 79 0
	movq	-24(%rbp), %rax	# flags, tmp268
	andl	$8, %eax	#, D.13260
	.loc 1 78 0
	testq	%rax, %rax	# D.13260
	jne	.L4	#,
.L8:
	.loc 1 81 0
	movq	-16(%rbp), %rax	# uv, tmp269
	movq	%rax, %rdx	# tmp269,
	movl	$.LC1, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L4:
	.loc 1 84 0
	cmpq	$127, -16(%rbp)	#, uv
	ja	.L9	#,
	.loc 1 85 0
	movq	-8(%rbp), %rax	# d, d.6
	leaq	1(%rax), %rdx	#, tmp270
	movq	%rdx, -8(%rbp)	# tmp270, d
	movq	-16(%rbp), %rdx	# uv, tmp271
	movb	%dl, (%rax)	# D.13261, *d.6_29
	.loc 1 86 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L9:
	.loc 1 100 0
	cmpq	$2047, -16(%rbp)	#, uv
	ja	.L11	#,
	.loc 1 101 0
	movq	-8(%rbp), %rax	# d, d.7
	leaq	1(%rax), %rdx	#, tmp272
	movq	%rdx, -8(%rbp)	# tmp272, d
	movq	-16(%rbp), %rdx	# uv, tmp273
	shrq	$6, %rdx	#, D.13260
	orl	$-64, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.7_33
	.loc 1 102 0
	movq	-8(%rbp), %rax	# d, d.8
	leaq	1(%rax), %rdx	#, tmp274
	movq	%rdx, -8(%rbp)	# tmp274, d
	movq	-16(%rbp), %rdx	# uv, tmp275
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.8_38
	.loc 1 103 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L11:
	.loc 1 105 0
	cmpq	$65535, -16(%rbp)	#, uv
	ja	.L12	#,
	.loc 1 106 0
	movq	-8(%rbp), %rax	# d, d.9
	leaq	1(%rax), %rdx	#, tmp276
	movq	%rdx, -8(%rbp)	# tmp276, d
	movq	-16(%rbp), %rdx	# uv, tmp277
	shrq	$12, %rdx	#, D.13260
	orl	$-32, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.9_44
	.loc 1 107 0
	movq	-8(%rbp), %rax	# d, d.10
	leaq	1(%rax), %rdx	#, tmp278
	movq	%rdx, -8(%rbp)	# tmp278, d
	movq	-16(%rbp), %rdx	# uv, tmp279
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.10_49
	.loc 1 108 0
	movq	-8(%rbp), %rax	# d, d.11
	leaq	1(%rax), %rdx	#, tmp280
	movq	%rdx, -8(%rbp)	# tmp280, d
	movq	-16(%rbp), %rdx	# uv, tmp281
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.11_55
	.loc 1 109 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L12:
	.loc 1 111 0
	cmpq	$2097151, -16(%rbp)	#, uv
	ja	.L13	#,
	.loc 1 112 0
	movq	-8(%rbp), %rax	# d, d.12
	leaq	1(%rax), %rdx	#, tmp282
	movq	%rdx, -8(%rbp)	# tmp282, d
	movq	-16(%rbp), %rdx	# uv, tmp283
	shrq	$18, %rdx	#, D.13260
	orl	$-16, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.12_61
	.loc 1 113 0
	movq	-8(%rbp), %rax	# d, d.13
	leaq	1(%rax), %rdx	#, tmp284
	movq	%rdx, -8(%rbp)	# tmp284, d
	movq	-16(%rbp), %rdx	# uv, tmp285
	shrq	$12, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.13_66
	.loc 1 114 0
	movq	-8(%rbp), %rax	# d, d.14
	leaq	1(%rax), %rdx	#, tmp286
	movq	%rdx, -8(%rbp)	# tmp286, d
	movq	-16(%rbp), %rdx	# uv, tmp287
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.14_72
	.loc 1 115 0
	movq	-8(%rbp), %rax	# d, d.15
	leaq	1(%rax), %rdx	#, tmp288
	movq	%rdx, -8(%rbp)	# tmp288, d
	movq	-16(%rbp), %rdx	# uv, tmp289
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.15_78
	.loc 1 116 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L13:
	.loc 1 118 0
	cmpq	$67108863, -16(%rbp)	#, uv
	ja	.L14	#,
	.loc 1 119 0
	movq	-8(%rbp), %rax	# d, d.16
	leaq	1(%rax), %rdx	#, tmp290
	movq	%rdx, -8(%rbp)	# tmp290, d
	movq	-16(%rbp), %rdx	# uv, tmp291
	shrq	$24, %rdx	#, D.13260
	orl	$-8, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.16_84
	.loc 1 120 0
	movq	-8(%rbp), %rax	# d, d.17
	leaq	1(%rax), %rdx	#, tmp292
	movq	%rdx, -8(%rbp)	# tmp292, d
	movq	-16(%rbp), %rdx	# uv, tmp293
	shrq	$18, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.17_89
	.loc 1 121 0
	movq	-8(%rbp), %rax	# d, d.18
	leaq	1(%rax), %rdx	#, tmp294
	movq	%rdx, -8(%rbp)	# tmp294, d
	movq	-16(%rbp), %rdx	# uv, tmp295
	shrq	$12, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.18_95
	.loc 1 122 0
	movq	-8(%rbp), %rax	# d, d.19
	leaq	1(%rax), %rdx	#, tmp296
	movq	%rdx, -8(%rbp)	# tmp296, d
	movq	-16(%rbp), %rdx	# uv, tmp297
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.19_101
	.loc 1 123 0
	movq	-8(%rbp), %rax	# d, d.20
	leaq	1(%rax), %rdx	#, tmp298
	movq	%rdx, -8(%rbp)	# tmp298, d
	movq	-16(%rbp), %rdx	# uv, tmp299
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.20_107
	.loc 1 124 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L14:
	.loc 1 126 0
	cmpq	$2147483647, -16(%rbp)	#, uv
	ja	.L15	#,
	.loc 1 127 0
	movq	-8(%rbp), %rax	# d, d.21
	leaq	1(%rax), %rdx	#, tmp300
	movq	%rdx, -8(%rbp)	# tmp300, d
	movq	-16(%rbp), %rdx	# uv, tmp301
	shrq	$30, %rdx	#, D.13260
	orl	$-4, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.21_113
	.loc 1 128 0
	movq	-8(%rbp), %rax	# d, d.22
	leaq	1(%rax), %rdx	#, tmp302
	movq	%rdx, -8(%rbp)	# tmp302, d
	movq	-16(%rbp), %rdx	# uv, tmp303
	shrq	$24, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.22_118
	.loc 1 129 0
	movq	-8(%rbp), %rax	# d, d.23
	leaq	1(%rax), %rdx	#, tmp304
	movq	%rdx, -8(%rbp)	# tmp304, d
	movq	-16(%rbp), %rdx	# uv, tmp305
	shrq	$18, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.23_124
	.loc 1 130 0
	movq	-8(%rbp), %rax	# d, d.24
	leaq	1(%rax), %rdx	#, tmp306
	movq	%rdx, -8(%rbp)	# tmp306, d
	movq	-16(%rbp), %rdx	# uv, tmp307
	shrq	$12, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.24_130
	.loc 1 131 0
	movq	-8(%rbp), %rax	# d, d.25
	leaq	1(%rax), %rdx	#, tmp308
	movq	%rdx, -8(%rbp)	# tmp308, d
	movq	-16(%rbp), %rdx	# uv, tmp309
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.25_136
	.loc 1 132 0
	movq	-8(%rbp), %rax	# d, d.26
	leaq	1(%rax), %rdx	#, tmp310
	movq	%rdx, -8(%rbp)	# tmp310, d
	movq	-16(%rbp), %rdx	# uv, tmp311
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.26_142
	.loc 1 133 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L15:
	.loc 1 136 0
	movabsq	$68719476735, %rax	#, tmp312
	cmpq	%rax, -16(%rbp)	# tmp312, uv
	ja	.L16	#,
	.loc 1 139 0
	movq	-8(%rbp), %rax	# d, d.27
	leaq	1(%rax), %rdx	#, tmp313
	movq	%rdx, -8(%rbp)	# tmp313, d
	movb	$-2, (%rax)	#, *d.27_148
	.loc 1 140 0
	movq	-8(%rbp), %rax	# d, d.28
	leaq	1(%rax), %rdx	#, tmp314
	movq	%rdx, -8(%rbp)	# tmp314, d
	movq	-16(%rbp), %rdx	# uv, tmp315
	shrq	$30, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.28_150
	.loc 1 141 0
	movq	-8(%rbp), %rax	# d, d.29
	leaq	1(%rax), %rdx	#, tmp316
	movq	%rdx, -8(%rbp)	# tmp316, d
	movq	-16(%rbp), %rdx	# uv, tmp317
	shrq	$24, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.29_156
	.loc 1 142 0
	movq	-8(%rbp), %rax	# d, d.30
	leaq	1(%rax), %rdx	#, tmp318
	movq	%rdx, -8(%rbp)	# tmp318, d
	movq	-16(%rbp), %rdx	# uv, tmp319
	shrq	$18, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.30_162
	.loc 1 143 0
	movq	-8(%rbp), %rax	# d, d.31
	leaq	1(%rax), %rdx	#, tmp320
	movq	%rdx, -8(%rbp)	# tmp320, d
	movq	-16(%rbp), %rdx	# uv, tmp321
	shrq	$12, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.31_168
	.loc 1 144 0
	movq	-8(%rbp), %rax	# d, d.32
	leaq	1(%rax), %rdx	#, tmp322
	movq	%rdx, -8(%rbp)	# tmp322, d
	movq	-16(%rbp), %rdx	# uv, tmp323
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.32_174
	.loc 1 145 0
	movq	-8(%rbp), %rax	# d, d.33
	leaq	1(%rax), %rdx	#, tmp324
	movq	%rdx, -8(%rbp)	# tmp324, d
	movq	-16(%rbp), %rdx	# uv, tmp325
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.33_180
	.loc 1 146 0
	movq	-8(%rbp), %rax	# d, D.13254
	jmp	.L10	#
.L16:
	.loc 1 150 0
	movq	-8(%rbp), %rax	# d, d.34
	leaq	1(%rax), %rdx	#, tmp326
	movq	%rdx, -8(%rbp)	# tmp326, d
	movb	$-1, (%rax)	#, *d.34_186
	.loc 1 151 0
	movq	-8(%rbp), %rax	# d, d.35
	leaq	1(%rax), %rdx	#, tmp327
	movq	%rdx, -8(%rbp)	# tmp327, d
	movb	$-128, (%rax)	#, *d.35_188
	.loc 1 152 0
	movq	-8(%rbp), %rax	# d, d.36
	leaq	1(%rax), %rdx	#, tmp328
	movq	%rdx, -8(%rbp)	# tmp328, d
	movq	-16(%rbp), %rdx	# uv, tmp329
	shrq	$60, %rdx	#, D.13260
	andl	$15, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.36_190
	.loc 1 153 0
	movq	-8(%rbp), %rax	# d, d.37
	leaq	1(%rax), %rdx	#, tmp330
	movq	%rdx, -8(%rbp)	# tmp330, d
	movq	-16(%rbp), %rdx	# uv, tmp331
	shrq	$54, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.37_196
	.loc 1 154 0
	movq	-8(%rbp), %rax	# d, d.38
	leaq	1(%rax), %rdx	#, tmp332
	movq	%rdx, -8(%rbp)	# tmp332, d
	movq	-16(%rbp), %rdx	# uv, tmp333
	shrq	$48, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.38_202
	.loc 1 155 0
	movq	-8(%rbp), %rax	# d, d.39
	leaq	1(%rax), %rdx	#, tmp334
	movq	%rdx, -8(%rbp)	# tmp334, d
	movq	-16(%rbp), %rdx	# uv, tmp335
	shrq	$42, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.39_208
	.loc 1 156 0
	movq	-8(%rbp), %rax	# d, d.40
	leaq	1(%rax), %rdx	#, tmp336
	movq	%rdx, -8(%rbp)	# tmp336, d
	movq	-16(%rbp), %rdx	# uv, tmp337
	shrq	$36, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.40_214
	.loc 1 157 0
	movq	-8(%rbp), %rax	# d, d.41
	leaq	1(%rax), %rdx	#, tmp338
	movq	%rdx, -8(%rbp)	# tmp338, d
	movq	-16(%rbp), %rdx	# uv, tmp339
	shrq	$30, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.41_220
	.loc 1 158 0
	movq	-8(%rbp), %rax	# d, d.42
	leaq	1(%rax), %rdx	#, tmp340
	movq	%rdx, -8(%rbp)	# tmp340, d
	movq	-16(%rbp), %rdx	# uv, tmp341
	shrq	$24, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.42_226
	.loc 1 159 0
	movq	-8(%rbp), %rax	# d, d.43
	leaq	1(%rax), %rdx	#, tmp342
	movq	%rdx, -8(%rbp)	# tmp342, d
	movq	-16(%rbp), %rdx	# uv, tmp343
	shrq	$18, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.43_232
	.loc 1 160 0
	movq	-8(%rbp), %rax	# d, d.44
	leaq	1(%rax), %rdx	#, tmp344
	movq	%rdx, -8(%rbp)	# tmp344, d
	movq	-16(%rbp), %rdx	# uv, tmp345
	shrq	$12, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.44_238
	.loc 1 161 0
	movq	-8(%rbp), %rax	# d, d.45
	leaq	1(%rax), %rdx	#, tmp346
	movq	%rdx, -8(%rbp)	# tmp346, d
	movq	-16(%rbp), %rdx	# uv, tmp347
	shrq	$6, %rdx	#, D.13260
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.45_244
	.loc 1 162 0
	movq	-8(%rbp), %rax	# d, d.46
	leaq	1(%rax), %rdx	#, tmp348
	movq	%rdx, -8(%rbp)	# tmp348, d
	movq	-16(%rbp), %rdx	# uv, tmp349
	andl	$63, %edx	#, D.13261
	orl	$-128, %edx	#, D.13261
	movb	%dl, (%rax)	# D.13261, *d.46_250
	.loc 1 163 0
	movq	-8(%rbp), %rax	# d, D.13254
.L10:
	.loc 1 167 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Perl_uvuni_to_utf8_flags, .-Perl_uvuni_to_utf8_flags
	.globl	Perl_uvuni_to_utf8
	.type	Perl_uvuni_to_utf8, @function
Perl_uvuni_to_utf8:
.LFB3:
	.loc 1 171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# uv, uv
	.loc 1 172 0
	movq	-16(%rbp), %rcx	# uv, tmp61
	movq	-8(%rbp), %rax	# d, tmp62
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8_flags	#
	.loc 1 173 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Perl_uvuni_to_utf8, .-Perl_uvuni_to_utf8
	.globl	Perl_is_utf8_char
	.type	Perl_is_utf8_char, @function
Perl_is_utf8_char:
.LFB4:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# s, s
	.loc 1 188 0
	movq	-56(%rbp), %rax	# s, tmp92
	movzbl	(%rax), %eax	# *s_14(D), tmp93
	movb	%al, -33(%rbp)	# tmp93, u
	.loc 1 192 0
	movzbl	-33(%rbp), %eax	# u, u.47
	testb	%al, %al	# u.47
	js	.L20	#,
	.loc 1 193 0
	movl	$1, %eax	#, D.13265
	jmp	.L21	#
.L20:
	.loc 1 195 0
	cmpb	$-65, -33(%rbp)	#, u
	jbe	.L22	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	cmpb	$-3, -33(%rbp)	#, u
	jbe	.L23	#,
.L22:
	.loc 1 196 0 is_stmt 1
	movl	$0, %eax	#, D.13265
	jmp	.L21	#
.L23:
	.loc 1 198 0
	movq	-56(%rbp), %rax	# s, tmp94
	movzbl	(%rax), %eax	# *s_14(D), D.13266
	movzbl	%al, %eax	# D.13266, D.13267
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13266
	movzbl	%al, %eax	# D.13266, tmp96
	movq	%rax, -8(%rbp)	# tmp96, len
	.loc 1 200 0
	cmpq	$1, -8(%rbp)	#, len
	jbe	.L24	#,
	.loc 1 200 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp97
	addq	$1, %rax	#, D.13268
	movzbl	(%rax), %eax	# *_22, D.13266
	testb	%al, %al	# D.13269
	jns	.L24	#,
	movq	-56(%rbp), %rax	# s, tmp98
	addq	$1, %rax	#, D.13268
	movzbl	(%rax), %eax	# *_25, D.13266
	cmpb	$-65, %al	#, D.13266
	jbe	.L25	#,
.L24:
	.loc 1 201 0 is_stmt 1
	movl	$0, %eax	#, D.13265
	jmp	.L21	#
.L25:
	.loc 1 203 0
	movq	-8(%rbp), %rax	# len, tmp102
	subq	$1, %rax	#, tmp101
	movq	%rax, -32(%rbp)	# tmp101, slen
	.loc 1 204 0
	addq	$1, -56(%rbp)	#, s
	.loc 1 205 0
	cmpq	$6, -8(%rbp)	#, len
	ja	.L26	#,
	.loc 1 205 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# len, tmp103
	subl	$2, %eax	#, D.13270
	movl	$31, %edx	#, tmp104
	movl	%eax, %ecx	# D.13267, tmp118
	sarl	%cl, %edx	# tmp118, D.13267
	movl	%edx, %eax	# D.13267, D.13267
	jmp	.L27	#
.L26:
	.loc 1 205 0 discriminator 2
	movl	$0, %eax	#, iftmp.48
.L27:
	.loc 1 205 0 discriminator 3
	movzbl	-33(%rbp), %edx	# u, u.49
	andl	%edx, %eax	# u.49, D.13269
	movb	%al, -33(%rbp)	# D.13269, u
	.loc 1 206 0 is_stmt 1 discriminator 3
	movzbl	-33(%rbp), %eax	# u, tmp105
	movq	%rax, -24(%rbp)	# tmp105, uv
	.loc 1 207 0 discriminator 3
	movq	-24(%rbp), %rax	# uv, tmp106
	movq	%rax, -16(%rbp)	# tmp106, ouv
	.loc 1 208 0 discriminator 3
	jmp	.L28	#
.L32:
	.loc 1 209 0
	movq	-56(%rbp), %rax	# s, tmp107
	movzbl	(%rax), %eax	# *s_1, D.13266
	testb	%al, %al	# D.13269
	jns	.L29	#,
	.loc 1 209 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp108
	movzbl	(%rax), %eax	# *s_1, D.13266
	cmpb	$-65, %al	#, D.13266
	jbe	.L30	#,
.L29:
	.loc 1 210 0 is_stmt 1
	movl	$0, %eax	#, D.13265
	jmp	.L21	#
.L30:
	.loc 1 211 0
	movq	-24(%rbp), %rax	# uv, tmp109
	salq	$6, %rax	#, D.13271
	movq	%rax, %rdx	# D.13271, D.13271
	movq	-56(%rbp), %rax	# s, tmp110
	movzbl	(%rax), %eax	# *s_1, D.13266
	movzbl	%al, %eax	# D.13266, D.13271
	andl	$63, %eax	#, D.13271
	orq	%rdx, %rax	# D.13271, tmp111
	movq	%rax, -24(%rbp)	# tmp111, uv
	.loc 1 212 0
	movq	-24(%rbp), %rax	# uv, tmp112
	cmpq	-16(%rbp), %rax	# ouv, tmp112
	jae	.L31	#,
	.loc 1 213 0
	movl	$0, %eax	#, D.13265
	jmp	.L21	#
.L31:
	.loc 1 214 0
	movq	-24(%rbp), %rax	# uv, tmp113
	movq	%rax, -16(%rbp)	# tmp113, ouv
	.loc 1 215 0
	addq	$1, -56(%rbp)	#, s
.L28:
	.loc 1 208 0 discriminator 1
	movq	-32(%rbp), %rax	# slen, slen.50
	leaq	-1(%rax), %rdx	#, tmp114
	movq	%rdx, -32(%rbp)	# tmp114, slen
	testq	%rax, %rax	# slen.50
	jne	.L32	#,
	.loc 1 218 0
	cmpq	$127, -24(%rbp)	#, uv
	jbe	.L33	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	cmpq	$2047, -24(%rbp)	#, uv
	jbe	.L34	#,
	.loc 1 218 0 discriminator 3
	cmpq	$65535, -24(%rbp)	#, uv
	jbe	.L35	#,
	.loc 1 218 0 discriminator 5
	cmpq	$2097151, -24(%rbp)	#, uv
	jbe	.L36	#,
	.loc 1 218 0 discriminator 7
	cmpq	$67108863, -24(%rbp)	#, uv
	jbe	.L37	#,
	.loc 1 218 0 discriminator 9
	cmpq	$2147483647, -24(%rbp)	#, uv
	jbe	.L38	#,
	.loc 1 218 0 discriminator 11
	movabsq	$68719476735, %rax	#, tmp115
	cmpq	%rax, -24(%rbp)	# tmp115, uv
	ja	.L39	#,
	.loc 1 218 0 discriminator 13
	movl	$7, %eax	#, iftmp.57
	jmp	.L46	#
.L39:
	.loc 1 218 0 discriminator 14
	movl	$13, %eax	#, iftmp.57
	jmp	.L46	#
.L38:
	.loc 1 218 0 discriminator 12
	movl	$6, %eax	#, iftmp.56
	jmp	.L46	#
.L37:
	.loc 1 218 0 discriminator 10
	movl	$5, %eax	#, iftmp.55
	jmp	.L46	#
.L36:
	.loc 1 218 0 discriminator 8
	movl	$4, %eax	#, iftmp.54
	jmp	.L46	#
.L35:
	.loc 1 218 0 discriminator 6
	movl	$3, %eax	#, iftmp.53
	jmp	.L46	#
.L34:
	.loc 1 218 0 discriminator 4
	movl	$2, %eax	#, iftmp.52
	jmp	.L46	#
.L33:
	.loc 1 218 0 discriminator 2
	movl	$1, %eax	#, iftmp.51
.L46:
	.loc 1 218 0 discriminator 15
	cmpq	-8(%rbp), %rax	# len, iftmp.51
	jae	.L47	#,
	.loc 1 219 0 is_stmt 1
	movl	$0, %eax	#, D.13265
	jmp	.L21	#
.L47:
	.loc 1 221 0
	movq	-8(%rbp), %rax	# len, D.13265
.L21:
	.loc 1 222 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Perl_is_utf8_char, .-Perl_is_utf8_char
	.globl	Perl_is_utf8_string
	.type	Perl_is_utf8_string, @function
Perl_is_utf8_string:
.LFB5:
	.loc 1 237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# len, len
	.loc 1 238 0
	movq	-40(%rbp), %rax	# s, tmp65
	movq	%rax, -24(%rbp)	# tmp65, x
	.loc 1 242 0
	cmpq	$0, -48(%rbp)	#, len
	jne	.L49	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, s
	je	.L49	#,
	.loc 1 243 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp66
	movq	%rax, %rdi	# tmp66,
	call	strlen	#
	movq	%rax, -48(%rbp)	# tmp67, len
.L49:
	.loc 1 244 0
	movq	-48(%rbp), %rax	# len, tmp72
	movq	-40(%rbp), %rdx	# s, tmp73
	addq	%rdx, %rax	# tmp73, tmp71
	movq	%rax, -8(%rbp)	# tmp71, send
	.loc 1 246 0
	jmp	.L50	#
.L56:
	.loc 1 248 0
	movq	-24(%rbp), %rax	# x, tmp74
	movzbl	(%rax), %eax	# *x_2, D.13273
	testb	%al, %al	# D.13274
	js	.L51	#,
	.loc 1 249 0
	movq	$1, -16(%rbp)	#, c
	jmp	.L52	#
.L51:
	.loc 1 250 0
	movq	-24(%rbp), %rax	# x, tmp75
	movzbl	(%rax), %eax	# *x_2, D.13273
	cmpb	$-65, %al	#, D.13273
	jbe	.L53	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp76
	movzbl	(%rax), %eax	# *x_2, D.13273
	cmpb	$-3, %al	#, D.13273
	jbe	.L54	#,
.L53:
	.loc 1 251 0 is_stmt 1
	movl	$0, %eax	#, D.13272
	jmp	.L55	#
.L54:
	.loc 1 254 0
	movq	-24(%rbp), %rax	# x, tmp77
	movq	%rax, %rdi	# tmp77,
	call	Perl_is_utf8_char	#
	movq	%rax, -16(%rbp)	# tmp78, c
	.loc 1 255 0
	cmpq	$0, -16(%rbp)	#, c
	jne	.L52	#,
	.loc 1 256 0
	movl	$0, %eax	#, D.13272
	jmp	.L55	#
.L52:
	.loc 1 258 0
	movq	-16(%rbp), %rax	# c, tmp79
	addq	%rax, -24(%rbp)	# tmp79, x
.L50:
	.loc 1 246 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp80
	cmpq	-8(%rbp), %rax	# send, tmp80
	jb	.L56	#,
	.loc 1 260 0
	movq	-24(%rbp), %rax	# x, tmp81
	cmpq	-8(%rbp), %rax	# send, tmp81
	je	.L57	#,
	.loc 1 261 0
	movl	$0, %eax	#, D.13272
	jmp	.L55	#
.L57:
	.loc 1 263 0
	movl	$1, %eax	#, D.13272
.L55:
	.loc 1 264 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Perl_is_utf8_string, .-Perl_is_utf8_string
	.globl	Perl_is_utf8_string_loc
	.type	Perl_is_utf8_string_loc, @function
Perl_is_utf8_string_loc:
.LFB6:
	.loc 1 277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# p, p
	.loc 1 278 0
	movq	-40(%rbp), %rax	# s, tmp65
	movq	%rax, -24(%rbp)	# tmp65, x
	.loc 1 282 0
	cmpq	$0, -48(%rbp)	#, len
	jne	.L59	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, s
	je	.L59	#,
	.loc 1 283 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp66
	movq	%rax, %rdi	# tmp66,
	call	strlen	#
	movq	%rax, -48(%rbp)	# tmp67, len
.L59:
	.loc 1 284 0
	movq	-48(%rbp), %rax	# len, tmp72
	movq	-40(%rbp), %rdx	# s, tmp73
	addq	%rdx, %rax	# tmp73, tmp71
	movq	%rax, -8(%rbp)	# tmp71, send
	.loc 1 286 0
	jmp	.L60	#
.L68:
	.loc 1 288 0
	movq	-24(%rbp), %rax	# x, tmp74
	movzbl	(%rax), %eax	# *x_2, D.13276
	testb	%al, %al	# D.13277
	js	.L61	#,
	.loc 1 289 0
	movq	$1, -16(%rbp)	#, c
	jmp	.L62	#
.L61:
	.loc 1 290 0
	movq	-24(%rbp), %rax	# x, tmp75
	movzbl	(%rax), %eax	# *x_2, D.13276
	cmpb	$-65, %al	#, D.13276
	jbe	.L63	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp76
	movzbl	(%rax), %eax	# *x_2, D.13276
	cmpb	$-3, %al	#, D.13276
	jbe	.L64	#,
.L63:
	.loc 1 291 0 is_stmt 1
	cmpq	$0, -56(%rbp)	#, p
	je	.L65	#,
	.loc 1 292 0
	movq	-56(%rbp), %rax	# p, tmp77
	movq	-24(%rbp), %rdx	# x, tmp78
	movq	%rdx, (%rax)	# tmp78, *p_16(D)
.L65:
	.loc 1 293 0
	movl	$0, %eax	#, D.13275
	jmp	.L66	#
.L64:
	.loc 1 297 0
	movq	-24(%rbp), %rax	# x, tmp79
	movq	%rax, %rdi	# tmp79,
	call	Perl_is_utf8_char	#
	movq	%rax, -16(%rbp)	# tmp80, c
	.loc 1 298 0
	cmpq	$0, -16(%rbp)	#, c
	jne	.L62	#,
	.loc 1 299 0
	cmpq	$0, -56(%rbp)	#, p
	je	.L67	#,
	.loc 1 300 0
	movq	-56(%rbp), %rax	# p, tmp81
	movq	-24(%rbp), %rdx	# x, tmp82
	movq	%rdx, (%rax)	# tmp82, *p_16(D)
.L67:
	.loc 1 301 0
	movl	$0, %eax	#, D.13275
	jmp	.L66	#
.L62:
	.loc 1 304 0
	movq	-16(%rbp), %rax	# c, tmp83
	addq	%rax, -24(%rbp)	# tmp83, x
.L60:
	.loc 1 286 0 discriminator 1
	movq	-24(%rbp), %rax	# x, tmp84
	cmpq	-8(%rbp), %rax	# send, tmp84
	jb	.L68	#,
	.loc 1 306 0
	movq	-24(%rbp), %rax	# x, tmp85
	cmpq	-8(%rbp), %rax	# send, tmp85
	je	.L69	#,
	.loc 1 307 0
	cmpq	$0, -56(%rbp)	#, p
	je	.L70	#,
	.loc 1 308 0
	movq	-56(%rbp), %rax	# p, tmp86
	movq	-24(%rbp), %rdx	# x, tmp87
	movq	%rdx, (%rax)	# tmp87, *p_16(D)
.L70:
	.loc 1 309 0
	movl	$0, %eax	#, D.13275
	jmp	.L66	#
.L69:
	.loc 1 312 0
	movl	$1, %eax	#, D.13275
.L66:
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Perl_is_utf8_string_loc, .-Perl_is_utf8_string_loc
	.section	.rodata
.LC2:
	.string	"Malformed UTF-8 character "
.LC3:
	.string	"(empty string)"
	.align 8
.LC4:
	.string	"(unexpected continuation byte 0x%02lx, with no preceding start byte)"
	.align 8
.LC5:
	.string	"(unexpected non-continuation byte 0x%02lx, immediately after start byte 0x%02lx)"
.LC6:
	.string	"s"
.LC7:
	.string	""
	.align 8
.LC8:
	.string	"(unexpected non-continuation byte 0x%02lx, %d byte%s after start byte 0x%02lx, expected %d bytes)"
.LC9:
	.string	"(byte 0x%02lx)"
	.align 8
.LC10:
	.string	"(%d byte%s, need %d, after start byte 0x%02lx)"
	.align 8
.LC11:
	.string	"(overflow at 0x%lx, byte 0x%02x, after start byte 0x%02lx)"
.LC12:
	.string	"(UTF-16 surrogate 0x%04lx)"
.LC13:
	.string	"(character 0x%04lx)"
.LC14:
	.string	"(unknown reason)"
.LC15:
	.string	"%s in %s"
.LC16:
	.string	"%s"
	.text
	.globl	Perl_utf8n_to_uvuni
	.type	Perl_utf8n_to_uvuni, @function
Perl_utf8n_to_uvuni:
.LFB7:
	.loc 1 341 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -88(%rbp)	# s, s
	movq	%rsi, -96(%rbp)	# curlen, curlen
	movq	%rdx, -104(%rbp)	# retlen, retlen
	movl	%ecx, -108(%rbp)	# flags, flags
	.loc 1 342 0
	movq	-88(%rbp), %rax	# s, tmp155
	movq	%rax, -32(%rbp)	# tmp155, s0
	.loc 1 343 0
	movq	-88(%rbp), %rax	# s, tmp156
	movzbl	(%rax), %eax	# *s_36(D), D.13279
	movzbl	%al, %eax	# D.13279, tmp157
	movq	%rax, -64(%rbp)	# tmp157, uv
	movq	$0, -56(%rbp)	#, ouv
	.loc 1 344 0
	movq	$1, -48(%rbp)	#, len
	.loc 1 345 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.59
	movq	80(%rax), %rax	# PL_curcop.59_42->cop_warnings, D.13280
	testq	%rax, %rax	# D.13280
	je	.L72	#,
	.loc 1 345 0 is_stmt 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.60
	movq	80(%rax), %rax	# PL_curcop.60_44->cop_warnings, D.13280
	cmpq	$16, %rax	#, D.13280
	je	.L72	#,
	.loc 1 345 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.61
	movq	80(%rax), %rax	# PL_curcop.61_46->cop_warnings, D.13280
	cmpq	$32, %rax	#, D.13280
	je	.L73	#,
	.loc 1 345 0 discriminator 3
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.62
	movq	80(%rax), %rax	# PL_curcop.62_48->cop_warnings, D.13280
	movq	(%rax), %rax	# _49->sv_any, D.13281
	movq	(%rax), %rax	# MEM[(struct XPV *)_50].xpv_pv, D.13282
	addq	$11, %rax	#, D.13282
	movzbl	(%rax), %eax	# *_52, D.13283
	movsbl	%al, %eax	# D.13283, D.13284
	andl	$1, %eax	#, D.13284
	testl	%eax, %eax	# D.13284
	je	.L73	#,
.L72:
	.loc 1 345 0 discriminator 1
	movl	$1, %eax	#, iftmp.58
	jmp	.L74	#
.L73:
	.loc 1 345 0 discriminator 4
	movl	$0, %eax	#, iftmp.58
.L74:
	.loc 1 345 0 discriminator 5
	movb	%al, -69(%rbp)	# iftmp.58, dowarn
	.loc 1 346 0 is_stmt 1 discriminator 5
	movq	-88(%rbp), %rax	# s, tmp158
	movzbl	(%rax), %eax	# *s_36(D), D.13279
	movzbl	%al, %eax	# D.13279, tmp159
	movq	%rax, -24(%rbp)	# tmp159, startbyte
	.loc 1 347 0 discriminator 5
	movq	$0, -40(%rbp)	#, expectlen
	.loc 1 348 0 discriminator 5
	movl	$0, -68(%rbp)	#, warning
	.loc 1 362 0 discriminator 5
	cmpq	$0, -96(%rbp)	#, curlen
	jne	.L75	#,
	.loc 1 363 0 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp160
	andl	$1, %eax	#, D.13285
	.loc 1 362 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L75	#,
	.loc 1 364 0
	movl	$1, -68(%rbp)	#, warning
	.loc 1 365 0
	jmp	.L76	#
.L75:
	.loc 1 368 0
	cmpq	$127, -64(%rbp)	#, uv
	ja	.L77	#,
	.loc 1 369 0
	cmpq	$0, -104(%rbp)	#, retlen
	je	.L78	#,
	.loc 1 370 0
	movq	-104(%rbp), %rax	# retlen, tmp161
	movq	$1, (%rax)	#, *retlen_67(D)
.L78:
	.loc 1 371 0
	movq	-88(%rbp), %rax	# s, tmp162
	movzbl	(%rax), %eax	# *s_36(D), D.13279
	movzbl	%al, %eax	# D.13279, D.13278
	jmp	.L79	#
.L77:
	.loc 1 374 0
	movq	-64(%rbp), %rax	# uv, tmp163
	testb	%al, %al	# D.13286
	jns	.L80	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# uv, tmp164
	cmpb	$-65, %al	#, D.13279
	ja	.L80	#,
	.loc 1 375 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp165
	andl	$2, %eax	#, D.13285
	.loc 1 374 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L80	#,
	.loc 1 376 0
	movl	$2, -68(%rbp)	#, warning
	.loc 1 377 0
	jmp	.L76	#
.L80:
	.loc 1 380 0
	movq	-64(%rbp), %rax	# uv, tmp166
	cmpb	$-65, %al	#, D.13279
	jbe	.L81	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# uv, tmp167
	cmpb	$-3, %al	#, D.13279
	ja	.L81	#,
	cmpq	$1, -96(%rbp)	#, curlen
	jbe	.L81	#,
	movq	-88(%rbp), %rax	# s, tmp168
	addq	$1, %rax	#, D.13287
	movzbl	(%rax), %eax	# *_76, D.13279
	testb	%al, %al	# D.13286
	jns	.L82	#,
	.loc 1 380 0 discriminator 2
	movq	-88(%rbp), %rax	# s, tmp169
	addq	$1, %rax	#, D.13287
	movzbl	(%rax), %eax	# *_79, D.13279
	cmpb	$-65, %al	#, D.13279
	jbe	.L81	#,
.L82:
	.loc 1 381 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp170
	andl	$4, %eax	#, D.13285
	.loc 1 380 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L81	#,
	.loc 1 382 0
	movl	$3, -68(%rbp)	#, warning
	.loc 1 383 0
	jmp	.L76	#
.L81:
	.loc 1 389 0
	cmpq	$254, -64(%rbp)	#, uv
	je	.L83	#,
	.loc 1 389 0 is_stmt 0 discriminator 2
	cmpq	$255, -64(%rbp)	#, uv
	jne	.L84	#,
.L83:
	.loc 1 390 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp171
	andl	$8, %eax	#, D.13285
	.loc 1 389 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L84	#,
	.loc 1 391 0
	movl	$4, -68(%rbp)	#, warning
	.loc 1 392 0
	jmp	.L76	#
.L84:
	.loc 1 396 0
	movq	-64(%rbp), %rax	# uv, tmp172
	andl	$32, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L85	#,
	.loc 1 396 0 is_stmt 0 discriminator 1
	movq	$2, -48(%rbp)	#, len
	andq	$31, -64(%rbp)	#, uv
	jmp	.L86	#
.L85:
	.loc 1 397 0 is_stmt 1
	movq	-64(%rbp), %rax	# uv, tmp173
	andl	$16, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L87	#,
	.loc 1 397 0 is_stmt 0 discriminator 1
	movq	$3, -48(%rbp)	#, len
	andq	$15, -64(%rbp)	#, uv
	jmp	.L86	#
.L87:
	.loc 1 398 0 is_stmt 1
	movq	-64(%rbp), %rax	# uv, tmp174
	andl	$8, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L88	#,
	.loc 1 398 0 is_stmt 0 discriminator 1
	movq	$4, -48(%rbp)	#, len
	andq	$7, -64(%rbp)	#, uv
	jmp	.L86	#
.L88:
	.loc 1 399 0 is_stmt 1
	movq	-64(%rbp), %rax	# uv, tmp175
	andl	$4, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L89	#,
	.loc 1 399 0 is_stmt 0 discriminator 1
	movq	$5, -48(%rbp)	#, len
	andq	$3, -64(%rbp)	#, uv
	jmp	.L86	#
.L89:
	.loc 1 404 0 is_stmt 1
	movq	-64(%rbp), %rax	# uv, tmp176
	andl	$2, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L90	#,
	.loc 1 404 0 is_stmt 0 discriminator 1
	movq	$6, -48(%rbp)	#, len
	andq	$1, -64(%rbp)	#, uv
	jmp	.L86	#
.L90:
	.loc 1 405 0 is_stmt 1
	movq	-64(%rbp), %rax	# uv, tmp177
	andl	$1, %eax	#, D.13288
	testq	%rax, %rax	# D.13288
	jne	.L91	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movq	$7, -48(%rbp)	#, len
	movq	$0, -64(%rbp)	#, uv
	jmp	.L86	#
.L91:
	.loc 1 406 0 is_stmt 1
	movq	$13, -48(%rbp)	#, len
	movq	$0, -64(%rbp)	#, uv
.L86:
	.loc 1 409 0
	cmpq	$0, -104(%rbp)	#, retlen
	je	.L92	#,
	.loc 1 410 0
	movq	-104(%rbp), %rax	# retlen, tmp178
	movq	-48(%rbp), %rdx	# len, tmp179
	movq	%rdx, (%rax)	# tmp179, *retlen_67(D)
.L92:
	.loc 1 412 0
	movq	-48(%rbp), %rax	# len, tmp180
	movq	%rax, -40(%rbp)	# tmp180, expectlen
	.loc 1 414 0
	movq	-96(%rbp), %rax	# curlen, tmp181
	cmpq	-40(%rbp), %rax	# expectlen, tmp181
	jae	.L93	#,
	.loc 1 415 0 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp182
	andl	$16, %eax	#, D.13285
	.loc 1 414 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L93	#,
	.loc 1 416 0
	movl	$5, -68(%rbp)	#, warning
	.loc 1 417 0
	jmp	.L76	#
.L93:
	.loc 1 420 0
	subq	$1, -48(%rbp)	#, len
	.loc 1 421 0
	addq	$1, -88(%rbp)	#, s
	.loc 1 422 0
	movq	-64(%rbp), %rax	# uv, tmp183
	movq	%rax, -56(%rbp)	# tmp183, ouv
	.loc 1 424 0
	jmp	.L94	#
.L99:
	.loc 1 425 0
	movq	-88(%rbp), %rax	# s, tmp184
	movzbl	(%rax), %eax	# *s_1, D.13279
	testb	%al, %al	# D.13286
	jns	.L95	#,
	.loc 1 425 0 is_stmt 0 discriminator 2
	movq	-88(%rbp), %rax	# s, tmp185
	movzbl	(%rax), %eax	# *s_1, D.13279
	cmpb	$-65, %al	#, D.13279
	jbe	.L96	#,
.L95:
	.loc 1 426 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp186
	andl	$4, %eax	#, D.13285
	.loc 1 425 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L96	#,
	.loc 1 427 0
	subq	$1, -88(%rbp)	#, s
	.loc 1 428 0
	movl	$3, -68(%rbp)	#, warning
	.loc 1 429 0
	jmp	.L76	#
.L96:
	.loc 1 432 0
	movq	-64(%rbp), %rax	# uv, tmp187
	salq	$6, %rax	#, D.13288
	movq	%rax, %rdx	# D.13288, D.13288
	movq	-88(%rbp), %rax	# s, tmp188
	movzbl	(%rax), %eax	# *s_1, D.13279
	movzbl	%al, %eax	# D.13279, D.13288
	andl	$63, %eax	#, D.13288
	orq	%rdx, %rax	# D.13288, tmp189
	movq	%rax, -64(%rbp)	# tmp189, uv
	.loc 1 433 0
	movq	-64(%rbp), %rax	# uv, tmp190
	cmpq	-56(%rbp), %rax	# ouv, tmp190
	ja	.L97	#,
	.loc 1 435 0
	movq	-64(%rbp), %rax	# uv, tmp191
	cmpq	-56(%rbp), %rax	# ouv, tmp191
	jne	.L98	#,
	.loc 1 436 0
	cmpq	$13, -40(%rbp)	#, expectlen
	je	.L97	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp192
	andl	$128, %eax	#, D.13285
	testl	%eax, %eax	# D.13285
	jne	.L97	#,
	.loc 1 437 0 is_stmt 1
	movl	$8, -68(%rbp)	#, warning
	.loc 1 438 0
	jmp	.L76	#
.L98:
	.loc 1 443 0
	movl	$6, -68(%rbp)	#, warning
	.loc 1 444 0
	jmp	.L76	#
.L97:
	.loc 1 447 0
	addq	$1, -88(%rbp)	#, s
	.loc 1 448 0
	movq	-64(%rbp), %rax	# uv, tmp193
	movq	%rax, -56(%rbp)	# tmp193, ouv
.L94:
	.loc 1 424 0 discriminator 1
	movq	-48(%rbp), %rax	# len, len.63
	leaq	-1(%rax), %rdx	#, tmp194
	movq	%rdx, -48(%rbp)	# tmp194, len
	testq	%rax, %rax	# len.63
	jne	.L99	#,
	.loc 1 451 0
	cmpq	$55295, -64(%rbp)	#, uv
	jbe	.L100	#,
	.loc 1 451 0 is_stmt 0 discriminator 1
	cmpq	$57343, -64(%rbp)	#, uv
	ja	.L100	#,
	.loc 1 452 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp195
	andl	$32, %eax	#, D.13285
	.loc 1 451 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L100	#,
	.loc 1 453 0
	movl	$7, -68(%rbp)	#, warning
	.loc 1 454 0
	jmp	.L76	#
.L100:
	.loc 1 455 0
	cmpq	$127, -64(%rbp)	#, uv
	jbe	.L101	#,
	.loc 1 455 0 is_stmt 0 discriminator 1
	cmpq	$2047, -64(%rbp)	#, uv
	jbe	.L102	#,
	.loc 1 455 0 discriminator 3
	cmpq	$65535, -64(%rbp)	#, uv
	jbe	.L103	#,
	.loc 1 455 0 discriminator 5
	cmpq	$2097151, -64(%rbp)	#, uv
	jbe	.L104	#,
	.loc 1 455 0 discriminator 7
	cmpq	$67108863, -64(%rbp)	#, uv
	jbe	.L105	#,
	.loc 1 455 0 discriminator 9
	cmpq	$2147483647, -64(%rbp)	#, uv
	jbe	.L106	#,
	.loc 1 455 0 discriminator 11
	movabsq	$68719476735, %rax	#, tmp196
	cmpq	%rax, -64(%rbp)	# tmp196, uv
	ja	.L107	#,
	.loc 1 455 0 discriminator 13
	movl	$7, %eax	#, iftmp.70
	jmp	.L114	#
.L107:
	.loc 1 455 0 discriminator 14
	movl	$13, %eax	#, iftmp.70
	jmp	.L114	#
.L106:
	.loc 1 455 0 discriminator 12
	movl	$6, %eax	#, iftmp.69
	jmp	.L114	#
.L105:
	.loc 1 455 0 discriminator 10
	movl	$5, %eax	#, iftmp.68
	jmp	.L114	#
.L104:
	.loc 1 455 0 discriminator 8
	movl	$4, %eax	#, iftmp.67
	jmp	.L114	#
.L103:
	.loc 1 455 0 discriminator 6
	movl	$3, %eax	#, iftmp.66
	jmp	.L114	#
.L102:
	.loc 1 455 0 discriminator 4
	movl	$2, %eax	#, iftmp.65
	jmp	.L114	#
.L101:
	.loc 1 455 0 discriminator 2
	movl	$1, %eax	#, iftmp.64
.L114:
	.loc 1 455 0 discriminator 15
	cmpq	-40(%rbp), %rax	# expectlen, iftmp.64
	jae	.L115	#,
	.loc 1 456 0 is_stmt 1 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp197
	andl	$128, %eax	#, D.13285
	.loc 1 455 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L115	#,
	.loc 1 457 0
	movl	$8, -68(%rbp)	#, warning
	.loc 1 458 0
	jmp	.L76	#
.L115:
	.loc 1 459 0
	cmpq	$65535, -64(%rbp)	#, uv
	jne	.L116	#,
	.loc 1 460 0 discriminator 1
	movl	-108(%rbp), %eax	# flags, tmp198
	andl	$64, %eax	#, D.13285
	.loc 1 459 0 discriminator 1
	testl	%eax, %eax	# D.13285
	jne	.L116	#,
	.loc 1 461 0
	movl	$9, -68(%rbp)	#, warning
	.loc 1 462 0
	jmp	.L76	#
.L116:
	.loc 1 465 0
	movq	-64(%rbp), %rax	# uv, D.13278
	jmp	.L79	#
.L76:
	.loc 1 469 0
	movl	-108(%rbp), %eax	# flags, tmp199
	andl	$512, %eax	#, D.13285
	testl	%eax, %eax	# D.13285
	je	.L117	#,
	.loc 1 470 0
	cmpq	$0, -104(%rbp)	#, retlen
	je	.L118	#,
	.loc 1 471 0
	movq	-104(%rbp), %rax	# retlen, tmp200
	movq	$-1, (%rax)	#, *retlen_67(D)
.L118:
	.loc 1 472 0
	movl	$0, %eax	#, D.13278
	jmp	.L79	#
.L117:
	.loc 1 475 0
	cmpb	$0, -69(%rbp)	#, dowarn
	je	.L119	#,
.LBB2:
	.loc 1 476 0
	movl	$0, %esi	#,
	movl	$.LC2, %edi	#,
	call	Perl_newSVpv	#
	movq	%rax, %rdi	# D.13280,
	call	Perl_sv_2mortal	#
	movq	%rax, -16(%rbp)	# tmp201, sv
	.loc 1 478 0
	cmpl	$9, -68(%rbp)	#, warning
	ja	.L120	#,
	movl	-68(%rbp), %eax	# warning, tmp202
	movq	.L122(,%rax,8), %rax	#, tmp203
	jmp	*%rax	# tmp203
	.section	.rodata
	.align 8
	.align 4
.L122:
	.quad	.L161
	.quad	.L123
	.quad	.L124
	.quad	.L125
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.quad	.L129
	.quad	.L130
	.quad	.L131
	.text
.L123:
	.loc 1 481 0
	movq	-16(%rbp), %rax	# sv, tmp204
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp204,
	call	Perl_sv_catpv	#
	.loc 1 482 0
	jmp	.L132	#
.L124:
	.loc 1 484 0
	movq	-64(%rbp), %rdx	# uv, tmp205
	movq	-16(%rbp), %rax	# sv, tmp206
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp206,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 485 0
	jmp	.L132	#
.L125:
	.loc 1 487 0
	movq	-88(%rbp), %rax	# s, tmp207
	cmpq	-32(%rbp), %rax	# s0, tmp207
	jne	.L133	#,
	.loc 1 489 0
	movq	-88(%rbp), %rax	# s, tmp208
	addq	$1, %rax	#, D.13287
	movzbl	(%rax), %eax	# *_154, D.13279
	.loc 1 488 0
	movzbl	%al, %edx	# D.13279, D.13288
	movq	-24(%rbp), %rcx	# startbyte, tmp209
	movq	-16(%rbp), %rax	# sv, tmp210
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp210,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 494 0
	jmp	.L132	#
.L133:
	.loc 1 492 0
	movq	-88(%rbp), %rdx	# s, s.72
	movq	-32(%rbp), %rax	# s0, s0.73
	subq	%rax, %rdx	# s0.73, D.13289
	movq	%rdx, %rax	# D.13289, D.13289
	.loc 1 491 0
	cmpq	$1, %rax	#, D.13289
	jle	.L135	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	movl	$.LC6, %eax	#, iftmp.71
	jmp	.L136	#
.L135:
	.loc 1 491 0 discriminator 2
	movl	$.LC7, %eax	#, iftmp.71
.L136:
	.loc 1 491 0 discriminator 3
	movq	-88(%rbp), %rcx	# s, s.74
	movq	-32(%rbp), %rdx	# s0, s0.75
	subq	%rdx, %rcx	# s0.75, D.13289
	movq	%rcx, %rsi	# D.13289, D.13289
	.loc 1 492 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rdx	# s, tmp211
	addq	$1, %rdx	#, D.13287
	movzbl	(%rdx), %edx	# *_165, D.13279
	.loc 1 491 0 discriminator 3
	movzbl	%dl, %edx	# D.13279, D.13288
	movq	-24(%rbp), %r8	# startbyte, tmp212
	movq	-16(%rbp), %rdi	# sv, tmp213
	movq	-40(%rbp), %rcx	# expectlen, tmp214
	movq	%rcx, (%rsp)	# tmp214,
	movq	%r8, %r9	# tmp212,
	movq	%rax, %r8	# iftmp.71,
	movq	%rsi, %rcx	# D.13289,
	movl	$.LC8, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 494 0 discriminator 3
	jmp	.L132	#
.L126:
	.loc 1 496 0
	movq	-64(%rbp), %rdx	# uv, tmp215
	movq	-16(%rbp), %rax	# sv, tmp216
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp216,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 497 0
	jmp	.L132	#
.L127:
	.loc 1 499 0
	cmpq	$1, -96(%rbp)	#, curlen
	jne	.L137	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movl	$.LC7, %eax	#, iftmp.76
	jmp	.L138	#
.L137:
	.loc 1 499 0 discriminator 2
	movl	$.LC6, %eax	#, iftmp.76
.L138:
	.loc 1 499 0 discriminator 3
	movq	-24(%rbp), %rsi	# startbyte, tmp217
	movq	-40(%rbp), %rcx	# expectlen, tmp218
	movq	-96(%rbp), %rdx	# curlen, tmp219
	movq	-16(%rbp), %rdi	# sv, tmp220
	movq	%rsi, %r9	# tmp217,
	movq	%rcx, %r8	# tmp218,
	movq	%rax, %rcx	# iftmp.76,
	movl	$.LC10, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 501 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# curlen, tmp221
	movq	%rax, -40(%rbp)	# tmp221, expectlen
	.loc 1 502 0 discriminator 3
	jmp	.L132	#
.L128:
	.loc 1 505 0
	movq	-88(%rbp), %rax	# s, tmp222
	movzbl	(%rax), %eax	# *s_2, D.13279
	.loc 1 504 0
	movzbl	%al, %ecx	# D.13279, D.13284
	movq	-24(%rbp), %rsi	# startbyte, tmp223
	movq	-56(%rbp), %rdx	# ouv, tmp224
	movq	-16(%rbp), %rax	# sv, tmp225
	movq	%rsi, %r8	# tmp223,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp225,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 506 0
	jmp	.L132	#
.L129:
	.loc 1 508 0
	movq	-64(%rbp), %rdx	# uv, tmp226
	movq	-16(%rbp), %rax	# sv, tmp227
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp227,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 509 0
	jmp	.L132	#
.L130:
	.loc 1 511 0
	cmpq	$127, -64(%rbp)	#, uv
	jbe	.L139	#,
	.loc 1 512 0
	cmpq	$2047, -64(%rbp)	#, uv
	jbe	.L140	#,
	.loc 1 512 0 is_stmt 0 discriminator 1
	cmpq	$65535, -64(%rbp)	#, uv
	jbe	.L141	#,
	cmpq	$2097151, -64(%rbp)	#, uv
	jbe	.L142	#,
	cmpq	$67108863, -64(%rbp)	#, uv
	jbe	.L143	#,
	cmpq	$2147483647, -64(%rbp)	#, uv
	jbe	.L144	#,
	movabsq	$68719476735, %rax	#, tmp228
	cmpq	%rax, -64(%rbp)	# tmp228, uv
	ja	.L145	#,
	movl	$7, %eax	#, iftmp.83
	jmp	.L151	#
.L145:
	.loc 1 512 0 discriminator 2
	movl	$13, %eax	#, iftmp.83
	jmp	.L151	#
.L144:
	movl	$6, %eax	#, iftmp.82
	jmp	.L151	#
.L143:
	movl	$5, %eax	#, iftmp.81
	jmp	.L151	#
.L142:
	movl	$4, %eax	#, iftmp.80
	jmp	.L151	#
.L141:
	movl	$3, %eax	#, iftmp.79
	jmp	.L151	#
.L140:
	movl	$2, %eax	#, iftmp.78
.L151:
	.loc 1 511 0 is_stmt 1 discriminator 6
	movl	%eax, %edx	# iftmp.78, iftmp.77
	jmp	.L152	#
.L139:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movl	$1, %edx	#, iftmp.77
.L152:
	.loc 1 511 0 discriminator 2
	cmpq	$1, -40(%rbp)	#, expectlen
	jne	.L153	#,
	.loc 1 511 0 discriminator 3
	movl	$.LC7, %eax	#, iftmp.84
	jmp	.L154	#
.L153:
	.loc 1 511 0 discriminator 4
	movl	$.LC6, %eax	#, iftmp.84
.L154:
	.loc 1 511 0 discriminator 5
	movq	-24(%rbp), %rcx	# startbyte, tmp229
	movq	-40(%rbp), %rsi	# expectlen, tmp230
	movq	-16(%rbp), %rdi	# sv, tmp231
	movq	%rcx, %r9	# tmp229,
	movl	%edx, %r8d	# iftmp.77,
	movq	%rax, %rcx	# iftmp.84,
	movq	%rsi, %rdx	# tmp230,
	movl	$.LC10, %esi	#,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 513 0 is_stmt 1 discriminator 5
	jmp	.L132	#
.L131:
	.loc 1 515 0
	movq	-64(%rbp), %rdx	# uv, tmp232
	movq	-16(%rbp), %rax	# sv, tmp233
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp233,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 516 0
	jmp	.L132	#
.L120:
	.loc 1 518 0
	movq	-16(%rbp), %rax	# sv, tmp234
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp234,
	call	Perl_sv_catpv	#
	.loc 1 519 0
	jmp	.L132	#
.L161:
	.loc 1 479 0
	nop
.L132:
	.loc 1 522 0
	cmpl	$0, -68(%rbp)	#, warning
	je	.L119	#,
.LBB3:
	.loc 1 523 0
	movq	-16(%rbp), %rax	# sv, tmp235
	movq	(%rax), %rax	# sv_153->sv_any, D.13281
	movq	(%rax), %rax	# MEM[(struct XPV *)_189].xpv_pv, tmp236
	movq	%rax, -8(%rbp)	# tmp236, s
	.loc 1 525 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.85
	testq	%rax, %rax	# PL_op.85
	je	.L155	#,
	.loc 1 527 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.87
	movzwl	32(%rax), %eax	# PL_op.87_192->op_type, D.13290
	.loc 1 526 0
	cmpw	$351, %ax	#, D.13290
	jne	.L156	#,
	.loc 1 527 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.88
	.loc 1 526 0
	movq	%rax, %rdi	# PL_op.88,
	call	Perl_custom_op_desc	#
	jmp	.L157	#
.L156:
	.loc 1 527 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.89
	movzwl	32(%rax), %eax	# PL_op.89_196->op_type, D.13290
	movzwl	%ax, %eax	# D.13290, D.13284
	.loc 1 526 0 discriminator 1
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.86
.L157:
	movq	-8(%rbp), %rdx	# s, tmp238
	movq	%rax, %rcx	# iftmp.86,
	movl	$.LC15, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L119	#
.L155:
	.loc 1 529 0
	movq	-8(%rbp), %rax	# s, tmp239
	movq	%rax, %rdx	# tmp239,
	movl	$.LC16, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L119:
.LBE3:
.LBE2:
	.loc 1 533 0
	cmpq	$0, -104(%rbp)	#, retlen
	je	.L158	#,
	.loc 1 534 0
	cmpq	$0, -40(%rbp)	#, expectlen
	je	.L159	#,
	.loc 1 534 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# expectlen, iftmp.90
	jmp	.L160	#
.L159:
	.loc 1 534 0 discriminator 2
	movq	-48(%rbp), %rax	# len, iftmp.90
.L160:
	.loc 1 534 0 discriminator 3
	movq	-104(%rbp), %rdx	# retlen, tmp240
	movq	%rax, (%rdx)	# iftmp.90, *retlen_67(D)
.L158:
	.loc 1 536 0 is_stmt 1
	movl	$0, %eax	#, D.13278
.L79:
	.loc 1 537 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Perl_utf8n_to_uvuni, .-Perl_utf8n_to_uvuni
	.globl	Perl_utf8_to_uvchr
	.type	Perl_utf8_to_uvchr, @function
Perl_utf8_to_uvchr:
.LFB8:
	.loc 1 554 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# retlen, retlen
	.loc 1 556 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.92
	movq	80(%rax), %rax	# PL_curcop.92_2->cop_warnings, D.13306
	.loc 1 555 0
	testq	%rax, %rax	# D.13306
	je	.L163	#,
	.loc 1 556 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.93
	movq	80(%rax), %rax	# PL_curcop.93_4->cop_warnings, D.13306
	cmpq	$32, %rax	#, D.13306
	je	.L163	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.94
	movq	80(%rax), %rax	# PL_curcop.94_6->cop_warnings, D.13306
	cmpq	$16, %rax	#, D.13306
	je	.L164	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.95
	movq	80(%rax), %rax	# PL_curcop.95_8->cop_warnings, D.13306
	movq	(%rax), %rax	# _9->sv_any, D.13307
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, D.13308
	addq	$11, %rax	#, D.13308
	movzbl	(%rax), %eax	# *_12, D.13309
	movsbl	%al, %eax	# D.13309, D.13310
	andl	$1, %eax	#, D.13310
	testl	%eax, %eax	# D.13310
	jne	.L164	#,
.L163:
	.loc 1 556 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.96
	movq	80(%rax), %rax	# PL_curcop.96_16->cop_warnings, D.13306
	testq	%rax, %rax	# D.13306
	jne	.L165	#,
	.loc 1 556 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.97
	movzbl	%al, %eax	# PL_dowarn.97, D.13310
	andl	$1, %eax	#, D.13310
	testl	%eax, %eax	# D.13310
	je	.L165	#,
.L164:
	.loc 1 555 0 is_stmt 1
	movl	$0, %eax	#, iftmp.91
	jmp	.L166	#
.L165:
	movl	$255, %eax	#, iftmp.91
.L166:
	.loc 1 555 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# retlen, tmp81
	movq	-8(%rbp), %rdi	# s, tmp82
	movl	%eax, %ecx	# iftmp.91,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	.loc 1 557 0 is_stmt 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Perl_utf8_to_uvchr, .-Perl_utf8_to_uvchr
	.globl	Perl_utf8_to_uvuni
	.type	Perl_utf8_to_uvuni, @function
Perl_utf8_to_uvuni:
.LFB9:
	.loc 1 577 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# retlen, retlen
	.loc 1 580 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.99
	movq	80(%rax), %rax	# PL_curcop.99_2->cop_warnings, D.13312
	.loc 1 579 0
	testq	%rax, %rax	# D.13312
	je	.L169	#,
	.loc 1 580 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.100
	movq	80(%rax), %rax	# PL_curcop.100_4->cop_warnings, D.13312
	cmpq	$32, %rax	#, D.13312
	je	.L169	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.101
	movq	80(%rax), %rax	# PL_curcop.101_6->cop_warnings, D.13312
	cmpq	$16, %rax	#, D.13312
	je	.L170	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.102
	movq	80(%rax), %rax	# PL_curcop.102_8->cop_warnings, D.13312
	movq	(%rax), %rax	# _9->sv_any, D.13313
	movq	(%rax), %rax	# MEM[(struct XPV *)_10].xpv_pv, D.13314
	addq	$11, %rax	#, D.13314
	movzbl	(%rax), %eax	# *_12, D.13315
	movsbl	%al, %eax	# D.13315, D.13316
	andl	$1, %eax	#, D.13316
	testl	%eax, %eax	# D.13316
	jne	.L170	#,
.L169:
	.loc 1 580 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.103
	movq	80(%rax), %rax	# PL_curcop.103_16->cop_warnings, D.13312
	testq	%rax, %rax	# D.13312
	jne	.L171	#,
	.loc 1 580 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.104
	movzbl	%al, %eax	# PL_dowarn.104, D.13316
	andl	$1, %eax	#, D.13316
	testl	%eax, %eax	# D.13316
	je	.L171	#,
.L170:
	.loc 1 579 0 is_stmt 1
	movl	$0, %eax	#, iftmp.98
	jmp	.L172	#
.L171:
	movl	$255, %eax	#, iftmp.98
.L172:
	.loc 1 579 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# retlen, tmp81
	movq	-8(%rbp), %rdi	# s, tmp82
	movl	%eax, %ecx	# iftmp.98,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	.loc 1 581 0 is_stmt 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Perl_utf8_to_uvuni, .-Perl_utf8_to_uvuni
	.globl	Perl_utf8_length
	.type	Perl_utf8_length, @function
Perl_utf8_length:
.LFB10:
	.loc 1 595 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# e, e
	.loc 1 596 0
	movq	$0, -8(%rbp)	#, len
	.loc 1 602 0
	movq	-32(%rbp), %rax	# e, tmp112
	cmpq	-24(%rbp), %rax	# s, tmp112
	jae	.L175	#,
	.loc 1 603 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.105
	movq	80(%rax), %rax	# PL_curcop.105_9->cop_warnings, D.13319
	testq	%rax, %rax	# D.13319
	je	.L176	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.106
	movq	80(%rax), %rax	# PL_curcop.106_11->cop_warnings, D.13319
	cmpq	$16, %rax	#, D.13319
	je	.L176	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.107
	movq	80(%rax), %rax	# PL_curcop.107_13->cop_warnings, D.13319
	cmpq	$32, %rax	#, D.13319
	je	.L177	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.108
	movq	80(%rax), %rax	# PL_curcop.108_15->cop_warnings, D.13319
	movq	(%rax), %rax	# _16->sv_any, D.13320
	movq	(%rax), %rax	# MEM[(struct XPV *)_17].xpv_pv, D.13321
	addq	$11, %rax	#, D.13321
	movzbl	(%rax), %eax	# *_19, D.13322
	movsbl	%al, %eax	# D.13322, D.13323
	andl	$1, %eax	#, D.13323
	testl	%eax, %eax	# D.13323
	je	.L177	#,
.L176:
	.loc 1 604 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.109
	testq	%rax, %rax	# PL_op.109
	je	.L178	#,
	.loc 1 606 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.111
	movzwl	32(%rax), %eax	# PL_op.111_24->op_type, D.13324
	.loc 1 605 0
	cmpw	$351, %ax	#, D.13324
	jne	.L179	#,
	.loc 1 606 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.112
	.loc 1 605 0
	movq	%rax, %rdi	# PL_op.112,
	call	Perl_custom_op_desc	#
	jmp	.L180	#
.L179:
	.loc 1 606 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.113
	movzwl	32(%rax), %eax	# PL_op.113_28->op_type, D.13324
	movzwl	%ax, %eax	# D.13324, D.13323
	.loc 1 605 0 discriminator 1
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.110
.L180:
	movq	%rax, %rcx	# iftmp.110,
	movl	$unees, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L177	#
.L178:
	.loc 1 608 0
	movl	$unees, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L177:
	.loc 1 610 0
	movl	$0, %eax	#, D.13318
	jmp	.L181	#
.L175:
	.loc 1 612 0
	jmp	.L182	#
.L189:
.LBB4:
	.loc 1 613 0
	movq	-24(%rbp), %rax	# s, tmp114
	movzbl	(%rax), %eax	# *s_1, D.13325
	movzbl	%al, %eax	# D.13325, D.13323
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, tmp116
	movb	%al, -9(%rbp)	# tmp116, t
	.loc 1 615 0
	movq	-32(%rbp), %rdx	# e, e.114
	movq	-24(%rbp), %rax	# s, s.115
	subq	%rax, %rdx	# s.115, D.13326
	movzbl	-9(%rbp), %eax	# t, D.13326
	cmpq	%rax, %rdx	# D.13326, D.13326
	jge	.L183	#,
	.loc 1 616 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.116
	movq	80(%rax), %rax	# PL_curcop.116_40->cop_warnings, D.13319
	testq	%rax, %rax	# D.13319
	je	.L184	#,
	.loc 1 616 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.117
	movq	80(%rax), %rax	# PL_curcop.117_42->cop_warnings, D.13319
	cmpq	$16, %rax	#, D.13319
	je	.L184	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.118
	movq	80(%rax), %rax	# PL_curcop.118_44->cop_warnings, D.13319
	cmpq	$32, %rax	#, D.13319
	je	.L185	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.119
	movq	80(%rax), %rax	# PL_curcop.119_46->cop_warnings, D.13319
	movq	(%rax), %rax	# _47->sv_any, D.13320
	movq	(%rax), %rax	# MEM[(struct XPV *)_48].xpv_pv, D.13321
	addq	$11, %rax	#, D.13321
	movzbl	(%rax), %eax	# *_50, D.13322
	movsbl	%al, %eax	# D.13322, D.13323
	andl	$1, %eax	#, D.13323
	testl	%eax, %eax	# D.13323
	je	.L185	#,
.L184:
	.loc 1 617 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.120
	testq	%rax, %rax	# PL_op.120
	je	.L186	#,
	.loc 1 619 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.122
	movzwl	32(%rax), %eax	# PL_op.122_55->op_type, D.13324
	.loc 1 618 0
	cmpw	$351, %ax	#, D.13324
	jne	.L187	#,
	.loc 1 619 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.123
	.loc 1 618 0
	movq	%rax, %rdi	# PL_op.123,
	call	Perl_custom_op_desc	#
	jmp	.L188	#
.L187:
	.loc 1 619 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.124
	movzwl	32(%rax), %eax	# PL_op.124_59->op_type, D.13324
	movzwl	%ax, %eax	# D.13324, D.13323
	.loc 1 618 0 discriminator 1
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.121
.L188:
	movq	%rax, %rdx	# iftmp.121,
	movl	$unees, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L185	#
.L186:
	.loc 1 621 0
	movl	$unees, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L185:
	.loc 1 623 0
	movq	-8(%rbp), %rax	# len, D.13318
	jmp	.L181	#
.L183:
	.loc 1 625 0
	movzbl	-9(%rbp), %eax	# t, D.13327
	addq	%rax, -24(%rbp)	# D.13327, s
	.loc 1 626 0
	addq	$1, -8(%rbp)	#, len
.L182:
.LBE4:
	.loc 1 612 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp118
	cmpq	-32(%rbp), %rax	# e, tmp118
	jb	.L189	#,
	.loc 1 629 0
	movq	-8(%rbp), %rax	# len, D.13318
.L181:
	.loc 1 630 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Perl_utf8_length, .-Perl_utf8_length
	.globl	Perl_utf8_distance
	.type	Perl_utf8_distance, @function
Perl_utf8_distance:
.LFB11:
	.loc 1 646 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 647 0
	movq	$0, -8(%rbp)	#, off
	.loc 1 653 0
	movq	-24(%rbp), %rax	# a, tmp119
	cmpq	-32(%rbp), %rax	# b, tmp119
	jae	.L191	#,
	.loc 1 654 0
	jmp	.L192	#
.L200:
.LBB5:
	.loc 1 655 0
	movq	-24(%rbp), %rax	# a, tmp120
	movzbl	(%rax), %eax	# *a_1, D.13329
	movzbl	%al, %eax	# D.13329, D.13330
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, tmp122
	movb	%al, -10(%rbp)	# tmp122, c
	.loc 1 657 0
	movq	-32(%rbp), %rdx	# b, b.125
	movq	-24(%rbp), %rax	# a, a.126
	subq	%rax, %rdx	# a.126, D.13331
	movzbl	-10(%rbp), %eax	# c, D.13331
	cmpq	%rax, %rdx	# D.13331, D.13331
	jge	.L193	#,
	.loc 1 658 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.127
	movq	80(%rax), %rax	# PL_curcop.127_19->cop_warnings, D.13332
	testq	%rax, %rax	# D.13332
	je	.L194	#,
	.loc 1 658 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.128
	movq	80(%rax), %rax	# PL_curcop.128_21->cop_warnings, D.13332
	cmpq	$16, %rax	#, D.13332
	je	.L194	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.129
	movq	80(%rax), %rax	# PL_curcop.129_23->cop_warnings, D.13332
	cmpq	$32, %rax	#, D.13332
	je	.L195	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.130
	movq	80(%rax), %rax	# PL_curcop.130_25->cop_warnings, D.13332
	movq	(%rax), %rax	# _26->sv_any, D.13333
	movq	(%rax), %rax	# MEM[(struct XPV *)_27].xpv_pv, D.13334
	addq	$11, %rax	#, D.13334
	movzbl	(%rax), %eax	# *_29, D.13335
	movsbl	%al, %eax	# D.13335, D.13330
	andl	$1, %eax	#, D.13330
	testl	%eax, %eax	# D.13330
	je	.L195	#,
.L194:
	.loc 1 659 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.131
	testq	%rax, %rax	# PL_op.131
	je	.L196	#,
	.loc 1 661 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.133
	movzwl	32(%rax), %eax	# PL_op.133_34->op_type, D.13336
	.loc 1 660 0
	cmpw	$351, %ax	#, D.13336
	jne	.L197	#,
	.loc 1 661 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.134
	.loc 1 660 0
	movq	%rax, %rdi	# PL_op.134,
	call	Perl_custom_op_desc	#
	jmp	.L198	#
.L197:
	.loc 1 661 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.135
	movzwl	32(%rax), %eax	# PL_op.135_38->op_type, D.13336
	movzwl	%ax, %eax	# D.13336, D.13330
	.loc 1 660 0 discriminator 1
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.132
.L198:
	movq	%rax, %rcx	# iftmp.132,
	movl	$unees, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L195	#
.L196:
	.loc 1 663 0
	movl	$unees, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L195:
	.loc 1 665 0
	movq	-8(%rbp), %rax	# off, D.13328
	jmp	.L199	#
.L193:
	.loc 1 667 0
	movzbl	-10(%rbp), %eax	# c, D.13337
	addq	%rax, -24(%rbp)	# D.13337, a
	.loc 1 668 0
	subq	$1, -8(%rbp)	#, off
.L192:
.LBE5:
	.loc 1 654 0 discriminator 1
	movq	-24(%rbp), %rax	# a, tmp124
	cmpq	-32(%rbp), %rax	# b, tmp124
	jb	.L200	#,
	jmp	.L201	#
.L191:
	.loc 1 672 0
	jmp	.L202	#
.L209:
.LBB6:
	.loc 1 673 0
	movq	-32(%rbp), %rax	# b, tmp125
	movzbl	(%rax), %eax	# *b_2, D.13329
	movzbl	%al, %eax	# D.13329, D.13330
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, tmp127
	movb	%al, -9(%rbp)	# tmp127, c
	.loc 1 675 0
	movq	-24(%rbp), %rdx	# a, a.136
	movq	-32(%rbp), %rax	# b, b.137
	subq	%rax, %rdx	# b.137, D.13331
	movzbl	-9(%rbp), %eax	# c, D.13331
	cmpq	%rax, %rdx	# D.13331, D.13331
	jge	.L203	#,
	.loc 1 676 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.138
	movq	80(%rax), %rax	# PL_curcop.138_53->cop_warnings, D.13332
	testq	%rax, %rax	# D.13332
	je	.L204	#,
	.loc 1 676 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.139
	movq	80(%rax), %rax	# PL_curcop.139_55->cop_warnings, D.13332
	cmpq	$16, %rax	#, D.13332
	je	.L204	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.140
	movq	80(%rax), %rax	# PL_curcop.140_57->cop_warnings, D.13332
	cmpq	$32, %rax	#, D.13332
	je	.L205	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.141
	movq	80(%rax), %rax	# PL_curcop.141_59->cop_warnings, D.13332
	movq	(%rax), %rax	# _60->sv_any, D.13333
	movq	(%rax), %rax	# MEM[(struct XPV *)_61].xpv_pv, D.13334
	addq	$11, %rax	#, D.13334
	movzbl	(%rax), %eax	# *_63, D.13335
	movsbl	%al, %eax	# D.13335, D.13330
	andl	$1, %eax	#, D.13330
	testl	%eax, %eax	# D.13330
	je	.L205	#,
.L204:
	.loc 1 677 0 is_stmt 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.142
	testq	%rax, %rax	# PL_op.142
	je	.L206	#,
	.loc 1 679 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.144
	movzwl	32(%rax), %eax	# PL_op.144_68->op_type, D.13336
	.loc 1 678 0
	cmpw	$351, %ax	#, D.13336
	jne	.L207	#,
	.loc 1 679 0
	movq	PL_op(%rip), %rax	# PL_op, PL_op.145
	.loc 1 678 0
	movq	%rax, %rdi	# PL_op.145,
	call	Perl_custom_op_desc	#
	jmp	.L208	#
.L207:
	.loc 1 679 0 discriminator 1
	movq	PL_op(%rip), %rax	# PL_op, PL_op.146
	movzwl	32(%rax), %eax	# PL_op.146_72->op_type, D.13336
	movzwl	%ax, %eax	# D.13336, D.13330
	.loc 1 678 0 discriminator 1
	cltq
	movq	PL_op_desc(,%rax,8), %rax	# PL_op_desc, iftmp.143
.L208:
	movq	%rax, %rcx	# iftmp.143,
	movl	$unees, %edx	#,
	movl	$.LC15, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
	jmp	.L205	#
.L206:
	.loc 1 681 0
	movl	$unees, %esi	#,
	movl	$44, %edi	#,
	movl	$0, %eax	#,
	call	Perl_warner	#
.L205:
	.loc 1 683 0
	movq	-8(%rbp), %rax	# off, D.13328
	jmp	.L199	#
.L203:
	.loc 1 685 0
	movzbl	-9(%rbp), %eax	# c, D.13337
	addq	%rax, -32(%rbp)	# D.13337, b
	.loc 1 686 0
	addq	$1, -8(%rbp)	#, off
.L202:
.LBE6:
	.loc 1 672 0 discriminator 1
	movq	-32(%rbp), %rax	# b, tmp129
	cmpq	-24(%rbp), %rax	# a, tmp129
	jb	.L209	#,
.L201:
	.loc 1 690 0
	movq	-8(%rbp), %rax	# off, D.13328
.L199:
	.loc 1 691 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Perl_utf8_distance, .-Perl_utf8_distance
	.globl	Perl_utf8_hop
	.type	Perl_utf8_hop, @function
Perl_utf8_hop:
.LFB12:
	.loc 1 708 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movl	%esi, -12(%rbp)	# off, off
	.loc 1 713 0
	cmpl	$0, -12(%rbp)	#, off
	js	.L211	#,
	.loc 1 714 0
	jmp	.L212	#
.L213:
	.loc 1 715 0
	movq	-8(%rbp), %rax	# s, tmp70
	movzbl	(%rax), %eax	# *s_1, D.13338
	movzbl	%al, %eax	# D.13338, D.13339
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13338
	movzbl	%al, %eax	# D.13338, D.13340
	addq	%rax, -8(%rbp)	# D.13340, s
.L212:
	.loc 1 714 0 discriminator 1
	movl	-12(%rbp), %eax	# off, off.147
	leal	-1(%rax), %edx	#, tmp72
	movl	%edx, -12(%rbp)	# tmp72, off
	testl	%eax, %eax	# off.147
	jne	.L213	#,
	jmp	.L214	#
.L211:
	.loc 1 718 0
	jmp	.L215	#
.L218:
	.loc 1 719 0
	subq	$1, -8(%rbp)	#, s
	.loc 1 720 0
	jmp	.L216	#
.L217:
	.loc 1 721 0
	subq	$1, -8(%rbp)	#, s
.L216:
	.loc 1 720 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp73
	movzbl	(%rax), %eax	# *s_2, D.13338
	testb	%al, %al	# D.13341
	jns	.L215	#,
	.loc 1 720 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp74
	movzbl	(%rax), %eax	# *s_2, D.13338
	cmpb	$-65, %al	#, D.13338
	jbe	.L217	#,
.L215:
	.loc 1 718 0 is_stmt 1 discriminator 1
	movl	-12(%rbp), %eax	# off, off.148
	leal	1(%rax), %edx	#, tmp75
	movl	%edx, -12(%rbp)	# tmp75, off
	testl	%eax, %eax	# off.148
	jne	.L218	#,
.L214:
	.loc 1 724 0
	movq	-8(%rbp), %rax	# s, D.13342
	.loc 1 725 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Perl_utf8_hop, .-Perl_utf8_hop
	.globl	Perl_utf8_to_bytes
	.type	Perl_utf8_to_bytes, @function
Perl_utf8_to_bytes:
.LFB13:
	.loc 1 740 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# s, s
	movq	%rsi, -80(%rbp)	# len, len
	.loc 1 743 0
	movq	-72(%rbp), %rax	# s, tmp76
	movq	%rax, -32(%rbp)	# tmp76, save
	.loc 1 746 0
	movq	-80(%rbp), %rax	# len, tmp77
	movq	(%rax), %rdx	# *len_7(D), D.13344
	movq	-72(%rbp), %rax	# s, tmp81
	addq	%rdx, %rax	# D.13344, tmp80
	movq	%rax, -24(%rbp)	# tmp80, send
	jmp	.L221	#
.L224:
.LBB7:
	.loc 1 747 0
	movq	-72(%rbp), %rax	# s, s.149
	leaq	1(%rax), %rdx	#, tmp82
	movq	%rdx, -72(%rbp)	# tmp82, s
	movzbl	(%rax), %eax	# *s.149_10, tmp83
	movb	%al, -49(%rbp)	# tmp83, c
	.loc 1 749 0
	movzbl	-49(%rbp), %eax	# c, c.150
	testb	%al, %al	# c.150
	jns	.L221	#,
	.loc 1 750 0 discriminator 1
	movzbl	-49(%rbp), %eax	# c, D.13345
	andl	$252, %eax	#, D.13345
	.loc 1 749 0 discriminator 1
	cmpl	$192, %eax	#, D.13345
	jne	.L222	#,
	.loc 1 750 0
	movq	-72(%rbp), %rax	# s, tmp84
	cmpq	-24(%rbp), %rax	# send, tmp84
	jae	.L222	#,
	.loc 1 751 0
	movq	-72(%rbp), %rax	# s, s.151
	leaq	1(%rax), %rdx	#, tmp85
	movq	%rdx, -72(%rbp)	# tmp85, s
	movzbl	(%rax), %eax	# *s.151_16, tmp86
	movb	%al, -49(%rbp)	# tmp86, c
	cmpb	$0, -49(%rbp)	#, c
	je	.L222	#,
	.loc 1 751 0 is_stmt 0 discriminator 1
	movzbl	-49(%rbp), %eax	# c, c.152
	testb	%al, %al	# c.152
	jns	.L222	#,
	cmpb	$-65, -49(%rbp)	#, c
	jbe	.L221	#,
.L222:
	.loc 1 752 0 is_stmt 1
	movq	-80(%rbp), %rax	# len, tmp87
	movq	$-1, (%rax)	#, *len_7(D)
	.loc 1 753 0
	movl	$0, %eax	#, D.13343
	jmp	.L223	#
.L221:
.LBE7:
	.loc 1 746 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp88
	cmpq	-24(%rbp), %rax	# send, tmp88
	jb	.L224	#,
	.loc 1 757 0
	movq	-32(%rbp), %rax	# save, tmp89
	movq	%rax, -72(%rbp)	# tmp89, s
	movq	-72(%rbp), %rax	# s, tmp90
	movq	%rax, -40(%rbp)	# tmp90, d
	.loc 1 758 0
	jmp	.L225	#
.L226:
.LBB8:
	.loc 1 760 0
	movq	-40(%rbp), %rbx	# d, d.153
	leaq	1(%rbx), %rax	#, tmp91
	movq	%rax, -40(%rbp)	# tmp91, d
	leaq	-48(%rbp), %rdx	#, tmp92
	movq	-72(%rbp), %rax	# s, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	Perl_utf8_to_uvchr	#
	movb	%al, (%rbx)	# D.13346, *d.153_23
	.loc 1 761 0
	movq	-48(%rbp), %rax	# ulen, ulen.154
	addq	%rax, -72(%rbp)	# ulen.154, s
.L225:
.LBE8:
	.loc 1 758 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp94
	cmpq	-24(%rbp), %rax	# send, tmp94
	jb	.L226	#,
	.loc 1 763 0
	movq	-40(%rbp), %rax	# d, tmp95
	movb	$0, (%rax)	#, *d_3
	.loc 1 764 0
	movq	-40(%rbp), %rdx	# d, d.155
	movq	-32(%rbp), %rax	# save, save.156
	subq	%rax, %rdx	# save.156, D.13347
	movq	%rdx, %rax	# D.13347, D.13347
	movq	%rax, %rdx	# D.13347, D.13344
	movq	-80(%rbp), %rax	# len, tmp96
	movq	%rdx, (%rax)	# D.13344, *len_7(D)
	.loc 1 765 0
	movq	-32(%rbp), %rax	# save, D.13343
.L223:
	.loc 1 766 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Perl_utf8_to_bytes, .-Perl_utf8_to_bytes
	.globl	Perl_bytes_from_utf8
	.type	Perl_bytes_from_utf8, @function
Perl_bytes_from_utf8:
.LFB14:
	.loc 1 783 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# len, len
	movq	%rdx, -56(%rbp)	# is_utf8, is_utf8
	.loc 1 785 0
	movq	-40(%rbp), %rax	# s, tmp92
	movq	%rax, -16(%rbp)	# tmp92, start
	.loc 1 787 0
	movl	$0, -28(%rbp)	#, count
	.loc 1 789 0
	movq	-56(%rbp), %rax	# is_utf8, tmp93
	movzbl	(%rax), %eax	# *is_utf8_11(D), D.13349
	testb	%al, %al	# D.13349
	jne	.L228	#,
	.loc 1 790 0
	movq	-16(%rbp), %rax	# start, D.13348
	jmp	.L229	#
.L228:
	.loc 1 793 0
	movq	-48(%rbp), %rax	# len, tmp94
	movq	(%rax), %rdx	# *len_14(D), D.13350
	movq	-40(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# D.13350, tmp97
	movq	%rax, -8(%rbp)	# tmp97, send
	jmp	.L230	#
.L232:
.LBB9:
	.loc 1 794 0
	movq	-40(%rbp), %rax	# s, s.157
	leaq	1(%rax), %rdx	#, tmp99
	movq	%rdx, -40(%rbp)	# tmp99, s
	movzbl	(%rax), %eax	# *s.157_17, tmp100
	movb	%al, -29(%rbp)	# tmp100, c
	.loc 1 795 0
	movzbl	-29(%rbp), %eax	# c, c.158
	testb	%al, %al	# c.158
	jns	.L230	#,
	.loc 1 796 0
	movzbl	-29(%rbp), %eax	# c, D.13351
	andl	$252, %eax	#, D.13351
	cmpl	$192, %eax	#, D.13351
	jne	.L231	#,
	.loc 1 796 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp101
	cmpq	-8(%rbp), %rax	# send, tmp101
	jae	.L231	#,
	.loc 1 797 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# s, s.159
	leaq	1(%rax), %rdx	#, tmp102
	movq	%rdx, -40(%rbp)	# tmp102, s
	movzbl	(%rax), %eax	# *s.159_23, tmp103
	movb	%al, -29(%rbp)	# tmp103, c
	.loc 1 796 0 discriminator 1
	cmpb	$0, -29(%rbp)	#, c
	je	.L231	#,
	.loc 1 797 0
	movzbl	-29(%rbp), %eax	# c, c.160
	testb	%al, %al	# c.160
	jns	.L231	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	cmpb	$-65, -29(%rbp)	#, c
	ja	.L231	#,
	.loc 1 798 0 is_stmt 1
	addl	$1, -28(%rbp)	#, count
	jmp	.L230	#
.L231:
	.loc 1 800 0
	movq	-16(%rbp), %rax	# start, D.13348
	jmp	.L229	#
.L230:
.LBE9:
	.loc 1 793 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp104
	cmpq	-8(%rbp), %rax	# send, tmp104
	jb	.L232	#,
	.loc 1 804 0
	movq	-56(%rbp), %rax	# is_utf8, tmp105
	movb	$0, (%rax)	#, *is_utf8_11(D)
	.loc 1 806 0
	movq	-48(%rbp), %rax	# len, tmp106
	movq	(%rax), %rdx	# *len_14(D), D.13350
	movl	-28(%rbp), %eax	# count, tmp107
	cltq
	subq	%rax, %rdx	# D.13350, D.13350
	movq	%rdx, %rax	# D.13350, D.13350
	addq	$1, %rax	#, D.13350
	movq	%rax, %rdi	# D.13350,
	call	Perl_safesysmalloc	#
	movq	%rax, -24(%rbp)	# tmp108, d
	movq	-48(%rbp), %rax	# len, tmp109
	movq	(%rax), %rdx	# *len_14(D), D.13350
	movl	-28(%rbp), %eax	# count, tmp110
	cltq
	subq	%rax, %rdx	# D.13350, D.13350
	movq	%rdx, %rax	# D.13350, D.13350
	leaq	1(%rax), %rdx	#, D.13350
	movq	-24(%rbp), %rax	# d, tmp111
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	memset	#
	.loc 1 807 0
	movq	-16(%rbp), %rax	# start, tmp112
	movq	%rax, -40(%rbp)	# tmp112, s
	movq	-24(%rbp), %rax	# d, tmp113
	movq	%rax, -16(%rbp)	# tmp113, start
	.loc 1 808 0
	jmp	.L233	#
.L235:
.LBB10:
	.loc 1 809 0
	movq	-40(%rbp), %rax	# s, s.161
	leaq	1(%rax), %rdx	#, tmp114
	movq	%rdx, -40(%rbp)	# tmp114, s
	movzbl	(%rax), %eax	# *s.161_40, tmp115
	movb	%al, -30(%rbp)	# tmp115, c
	.loc 1 810 0
	movzbl	-30(%rbp), %eax	# c, c.162
	testb	%al, %al	# c.162
	jns	.L234	#,
	.loc 1 812 0
	movzbl	-30(%rbp), %eax	# c, D.13351
	sall	$6, %eax	#, D.13351
	movl	%eax, %ecx	# D.13351, D.13352
	movq	-40(%rbp), %rax	# s, s.163
	leaq	1(%rax), %rdx	#, tmp116
	movq	%rdx, -40(%rbp)	# tmp116, s
	movzbl	(%rax), %eax	# *s.163_47, D.13353
	andl	$63, %eax	#, D.13352
	orl	%ecx, %eax	# D.13352, D.13352
	movb	%al, -30(%rbp)	# D.13352, c
.L234:
	.loc 1 815 0
	movq	-24(%rbp), %rax	# d, d.164
	leaq	1(%rax), %rdx	#, tmp117
	movq	%rdx, -24(%rbp)	# tmp117, d
	movzbl	-30(%rbp), %edx	# c, tmp118
	movb	%dl, (%rax)	# tmp118, *d.164_55
.L233:
.LBE10:
	.loc 1 808 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp119
	cmpq	-8(%rbp), %rax	# send, tmp119
	jb	.L235	#,
	.loc 1 817 0
	movq	-24(%rbp), %rax	# d, tmp120
	movb	$0, (%rax)	#, *d_4
	.loc 1 818 0
	movq	-24(%rbp), %rdx	# d, d.165
	movq	-16(%rbp), %rax	# start, start.166
	subq	%rax, %rdx	# start.166, D.13354
	movq	%rdx, %rax	# D.13354, D.13354
	movq	%rax, %rdx	# D.13354, D.13350
	movq	-48(%rbp), %rax	# len, tmp121
	movq	%rdx, (%rax)	# D.13350, *len_14(D)
	.loc 1 819 0
	movq	-16(%rbp), %rax	# start, D.13348
.L229:
	.loc 1 820 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	Perl_bytes_from_utf8, .-Perl_bytes_from_utf8
	.globl	Perl_bytes_to_utf8
	.type	Perl_bytes_to_utf8, @function
Perl_bytes_to_utf8:
.LFB15:
	.loc 1 837 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# len, len
	.loc 1 841 0
	movq	-48(%rbp), %rax	# len, tmp87
	movq	(%rax), %rdx	# *len_3(D), D.13355
	movq	-40(%rbp), %rax	# s, tmp91
	addq	%rdx, %rax	# D.13355, tmp90
	movq	%rax, -24(%rbp)	# tmp90, send
	.loc 1 843 0
	movq	-48(%rbp), %rax	# len, tmp92
	movq	(%rax), %rax	# *len_3(D), D.13355
	addq	%rax, %rax	# D.13355
	addq	$1, %rax	#, D.13355
	movq	%rax, %rdi	# D.13355,
	call	Perl_safesysmalloc	#
	movq	%rax, -32(%rbp)	# tmp93, d
	movq	-48(%rbp), %rax	# len, tmp94
	movq	(%rax), %rax	# *len_3(D), D.13355
	addq	%rax, %rax	# D.13355
	leaq	1(%rax), %rdx	#, D.13355
	movq	-32(%rbp), %rax	# d, tmp95
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	memset	#
	.loc 1 844 0
	movq	-32(%rbp), %rax	# d, tmp96
	movq	%rax, -16(%rbp)	# tmp96, dst
	.loc 1 846 0
	jmp	.L237	#
.L239:
.LBB11:
	.loc 1 847 0
	movq	-40(%rbp), %rax	# s, s.167
	leaq	1(%rax), %rdx	#, tmp97
	movq	%rdx, -40(%rbp)	# tmp97, s
	movzbl	(%rax), %eax	# *s.167_15, D.13356
	movzbl	%al, %eax	# D.13356, tmp98
	movq	%rax, -8(%rbp)	# tmp98, uv
	.loc 1 848 0
	cmpq	$127, -8(%rbp)	#, uv
	ja	.L238	#,
	.loc 1 849 0
	movq	-32(%rbp), %rax	# d, d.168
	leaq	1(%rax), %rdx	#, tmp99
	movq	%rdx, -32(%rbp)	# tmp99, d
	movq	-8(%rbp), %rdx	# uv, tmp100
	movb	%dl, (%rax)	# D.13356, *d.168_19
	jmp	.L237	#
.L238:
	.loc 1 851 0
	movq	-32(%rbp), %rax	# d, d.169
	leaq	1(%rax), %rdx	#, tmp101
	movq	%rdx, -32(%rbp)	# tmp101, d
	movq	-8(%rbp), %rdx	# uv, tmp102
	shrb	$6, %dl	#, D.13356
	orl	$-64, %edx	#, D.13357
	movb	%dl, (%rax)	# D.13356, *d.169_22
	.loc 1 852 0
	movq	-32(%rbp), %rax	# d, d.170
	leaq	1(%rax), %rdx	#, tmp103
	movq	%rdx, -32(%rbp)	# tmp103, d
	movq	-8(%rbp), %rdx	# uv, tmp104
	andl	$63, %edx	#, D.13357
	orl	$-128, %edx	#, D.13357
	movb	%dl, (%rax)	# D.13356, *d.170_29
.L237:
.LBE11:
	.loc 1 846 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp105
	cmpq	-24(%rbp), %rax	# send, tmp105
	jb	.L239	#,
	.loc 1 855 0
	movq	-32(%rbp), %rax	# d, tmp106
	movb	$0, (%rax)	#, *d_2
	.loc 1 856 0
	movq	-32(%rbp), %rdx	# d, d.171
	movq	-16(%rbp), %rax	# dst, dst.172
	subq	%rax, %rdx	# dst.172, D.13358
	movq	%rdx, %rax	# D.13358, D.13358
	movq	%rax, %rdx	# D.13358, D.13355
	movq	-48(%rbp), %rax	# len, tmp107
	movq	%rdx, (%rax)	# D.13355, *len_3(D)
	.loc 1 857 0
	movq	-16(%rbp), %rax	# dst, D.13359
	.loc 1 858 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Perl_bytes_to_utf8, .-Perl_bytes_to_utf8
	.section	.rodata
	.align 8
.LC17:
	.string	"panic: utf16_to_utf8: odd bytelen %lu"
.LC18:
	.string	"Malformed UTF-16 surrogate"
	.text
	.globl	Perl_utf16_to_utf8
	.type	Perl_utf16_to_utf8, @function
Perl_utf16_to_utf8:
.LFB16:
	.loc 1 868 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	movq	%rsi, -48(%rbp)	# d, d
	movl	%edx, -52(%rbp)	# bytelen, bytelen
	movq	%rcx, -64(%rbp)	# newlen, newlen
	.loc 1 870 0
	movq	-48(%rbp), %rax	# d, tmp127
	movq	%rax, -24(%rbp)	# tmp127, dstart
	.loc 1 872 0
	cmpl	$1, -52(%rbp)	#, bytelen
	jne	.L242	#,
	.loc 1 872 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp128
	movzbl	(%rax), %eax	# *p_9(D), D.13361
	testb	%al, %al	# D.13361
	jne	.L242	#,
	.loc 1 873 0 is_stmt 1
	movq	-48(%rbp), %rax	# d, tmp129
	movb	$0, (%rax)	#, *d_6(D)
	.loc 1 874 0
	movq	-64(%rbp), %rax	# newlen, tmp130
	movl	$1, (%rax)	#, *newlen_11(D)
	.loc 1 875 0
	movq	-48(%rbp), %rax	# d, D.13360
	jmp	.L243	#
.L242:
	.loc 1 878 0
	movl	-52(%rbp), %eax	# bytelen, tmp131
	andl	$1, %eax	#, D.13362
	testl	%eax, %eax	# D.13362
	je	.L244	#,
	.loc 1 879 0
	movl	-52(%rbp), %eax	# bytelen, tmp132
	cltq
	movq	%rax, %rsi	# D.13363,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L244:
	.loc 1 881 0
	movl	-52(%rbp), %eax	# bytelen, tmp133
	movslq	%eax, %rdx	# tmp133, D.13364
	movq	-40(%rbp), %rax	# p, tmp137
	addq	%rdx, %rax	# D.13364, tmp136
	movq	%rax, -16(%rbp)	# tmp136, pend
	.loc 1 883 0
	jmp	.L245	#
.L252:
.LBB12:
	.loc 1 884 0
	movq	-40(%rbp), %rax	# p, tmp138
	movzbl	(%rax), %eax	# *p_2, D.13361
	movzbl	%al, %eax	# D.13361, D.13362
	sall	$8, %eax	#, D.13362
	movl	%eax, %edx	# D.13362, D.13362
	movq	-40(%rbp), %rax	# p, tmp139
	addq	$1, %rax	#, D.13360
	movzbl	(%rax), %eax	# *_20, D.13361
	movzbl	%al, %eax	# D.13361, D.13362
	addl	%edx, %eax	# D.13362, D.13362
	cltq
	movq	%rax, -32(%rbp)	# tmp140, uv
	.loc 1 885 0
	addq	$2, -40(%rbp)	#, p
	.loc 1 886 0
	cmpq	$127, -32(%rbp)	#, uv
	ja	.L246	#,
	.loc 1 887 0
	movq	-48(%rbp), %rax	# d, d.173
	leaq	1(%rax), %rdx	#, tmp141
	movq	%rdx, -48(%rbp)	# tmp141, d
	movq	-32(%rbp), %rdx	# uv, tmp142
	movb	%dl, (%rax)	# D.13361, *d.173_26
	.loc 1 888 0
	jmp	.L245	#
.L246:
	.loc 1 890 0
	cmpq	$2047, -32(%rbp)	#, uv
	ja	.L247	#,
	.loc 1 891 0
	movq	-48(%rbp), %rax	# d, d.174
	leaq	1(%rax), %rdx	#, tmp143
	movq	%rdx, -48(%rbp)	# tmp143, d
	movq	-32(%rbp), %rdx	# uv, tmp144
	shrq	$6, %rdx	#, D.13363
	orl	$-64, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.174_29
	.loc 1 892 0
	movq	-48(%rbp), %rax	# d, d.175
	leaq	1(%rax), %rdx	#, tmp145
	movq	%rdx, -48(%rbp)	# tmp145, d
	movq	-32(%rbp), %rdx	# uv, tmp146
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.175_34
	.loc 1 893 0
	jmp	.L245	#
.L247:
	.loc 1 895 0
	cmpq	$55295, -32(%rbp)	#, uv
	jbe	.L248	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	cmpq	$56318, -32(%rbp)	#, uv
	ja	.L248	#,
.LBB13:
	.loc 1 896 0 is_stmt 1
	movq	-40(%rbp), %rax	# p, tmp147
	movzbl	(%rax), %eax	# *p_25, D.13361
	movzbl	%al, %eax	# D.13361, D.13362
	sall	$8, %eax	#, D.13362
	movl	%eax, %edx	# D.13362, D.13362
	movq	-40(%rbp), %rax	# p, tmp148
	addq	$1, %rax	#, D.13360
	movzbl	(%rax), %eax	# *_42, D.13361
	movzbl	%al, %eax	# D.13361, D.13362
	addl	%edx, %eax	# D.13362, D.13362
	cltq
	movq	%rax, -8(%rbp)	# tmp149, low
	.loc 1 897 0
	addq	$2, -40(%rbp)	#, p
	.loc 1 898 0
	cmpq	$56319, -8(%rbp)	#, low
	jbe	.L249	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	cmpq	$57342, -8(%rbp)	#, low
	jbe	.L250	#,
.L249:
	.loc 1 899 0 is_stmt 1
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L250:
	.loc 1 900 0
	movq	-32(%rbp), %rax	# uv, tmp150
	subq	$55296, %rax	#, D.13363
	salq	$10, %rax	#, D.13363
	movq	%rax, %rdx	# D.13363, D.13363
	movq	-8(%rbp), %rax	# low, tmp151
	addq	%rdx, %rax	# D.13363, D.13363
	addq	$9216, %rax	#, tmp152
	movq	%rax, -32(%rbp)	# tmp152, uv
.L248:
.LBE13:
	.loc 1 902 0
	cmpq	$65535, -32(%rbp)	#, uv
	ja	.L251	#,
	.loc 1 903 0
	movq	-48(%rbp), %rax	# d, d.176
	leaq	1(%rax), %rdx	#, tmp153
	movq	%rdx, -48(%rbp)	# tmp153, d
	movq	-32(%rbp), %rdx	# uv, tmp154
	shrq	$12, %rdx	#, D.13363
	orl	$-32, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.176_52
	.loc 1 904 0
	movq	-48(%rbp), %rax	# d, d.177
	leaq	1(%rax), %rdx	#, tmp155
	movq	%rdx, -48(%rbp)	# tmp155, d
	movq	-32(%rbp), %rdx	# uv, tmp156
	shrq	$6, %rdx	#, D.13363
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.177_57
	.loc 1 905 0
	movq	-48(%rbp), %rax	# d, d.178
	leaq	1(%rax), %rdx	#, tmp157
	movq	%rdx, -48(%rbp)	# tmp157, d
	movq	-32(%rbp), %rdx	# uv, tmp158
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.178_63
	.loc 1 906 0
	jmp	.L245	#
.L251:
	.loc 1 909 0
	movq	-48(%rbp), %rax	# d, d.179
	leaq	1(%rax), %rdx	#, tmp159
	movq	%rdx, -48(%rbp)	# tmp159, d
	movq	-32(%rbp), %rdx	# uv, tmp160
	shrq	$18, %rdx	#, D.13363
	orl	$-16, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.179_68
	.loc 1 910 0
	movq	-48(%rbp), %rax	# d, d.180
	leaq	1(%rax), %rdx	#, tmp161
	movq	%rdx, -48(%rbp)	# tmp161, d
	movq	-32(%rbp), %rdx	# uv, tmp162
	shrq	$12, %rdx	#, D.13363
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.180_73
	.loc 1 911 0
	movq	-48(%rbp), %rax	# d, d.181
	leaq	1(%rax), %rdx	#, tmp163
	movq	%rdx, -48(%rbp)	# tmp163, d
	movq	-32(%rbp), %rdx	# uv, tmp164
	shrq	$6, %rdx	#, D.13363
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.181_79
	.loc 1 912 0
	movq	-48(%rbp), %rax	# d, d.182
	leaq	1(%rax), %rdx	#, tmp165
	movq	%rdx, -48(%rbp)	# tmp165, d
	movq	-32(%rbp), %rdx	# uv, tmp166
	andl	$63, %edx	#, D.13361
	orl	$-128, %edx	#, D.13361
	movb	%dl, (%rax)	# D.13361, *d.182_85
	.loc 1 913 0
	nop
.L245:
.LBE12:
	.loc 1 883 0 discriminator 1
	movq	-40(%rbp), %rax	# p, tmp167
	cmpq	-16(%rbp), %rax	# pend, tmp167
	jb	.L252	#,
	.loc 1 916 0
	movq	-48(%rbp), %rdx	# d, d.183
	movq	-24(%rbp), %rax	# dstart, dstart.184
	subq	%rax, %rdx	# dstart.184, D.13365
	movq	%rdx, %rax	# D.13365, D.13365
	movl	%eax, %edx	# D.13365, D.13362
	movq	-64(%rbp), %rax	# newlen, tmp168
	movl	%edx, (%rax)	# D.13362, *newlen_11(D)
	.loc 1 917 0
	movq	-48(%rbp), %rax	# d, D.13360
.L243:
	.loc 1 918 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Perl_utf16_to_utf8, .-Perl_utf16_to_utf8
	.globl	Perl_utf16_to_utf8_reversed
	.type	Perl_utf16_to_utf8_reversed, @function
Perl_utf16_to_utf8_reversed:
.LFB17:
	.loc 1 924 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# p, p
	movq	%rsi, -48(%rbp)	# d, d
	movl	%edx, -52(%rbp)	# bytelen, bytelen
	movq	%rcx, -64(%rbp)	# newlen, newlen
	.loc 1 925 0
	movq	-40(%rbp), %rax	# p, tmp64
	movq	%rax, -16(%rbp)	# tmp64, s
	.loc 1 926 0
	movl	-52(%rbp), %eax	# bytelen, tmp65
	movslq	%eax, %rdx	# tmp65, D.13368
	movq	-16(%rbp), %rax	# s, tmp69
	addq	%rdx, %rax	# D.13368, tmp68
	movq	%rax, -8(%rbp)	# tmp68, send
	.loc 1 927 0
	jmp	.L254	#
.L255:
.LBB14:
	.loc 1 928 0
	movq	-16(%rbp), %rax	# s, tmp70
	movzbl	(%rax), %eax	# *s_1, tmp71
	movb	%al, -17(%rbp)	# tmp71, tmp
	.loc 1 929 0
	movq	-16(%rbp), %rax	# s, tmp72
	movzbl	1(%rax), %edx	# MEM[(U8 *)s_1 + 1B], D.13369
	movq	-16(%rbp), %rax	# s, tmp73
	movb	%dl, (%rax)	# D.13369, *s_1
	.loc 1 930 0
	movq	-16(%rbp), %rax	# s, tmp74
	leaq	1(%rax), %rdx	#, D.13370
	movzbl	-17(%rbp), %eax	# tmp, tmp75
	movb	%al, (%rdx)	# tmp75, *_9
	.loc 1 931 0
	addq	$2, -16(%rbp)	#, s
.L254:
.LBE14:
	.loc 1 927 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp76
	cmpq	-8(%rbp), %rax	# send, tmp76
	jb	.L255	#,
	.loc 1 933 0
	movq	-64(%rbp), %rcx	# newlen, tmp77
	movl	-52(%rbp), %edx	# bytelen, tmp78
	movq	-48(%rbp), %rsi	# d, tmp79
	movq	-40(%rbp), %rax	# p, tmp80
	movq	%rax, %rdi	# tmp80,
	call	Perl_utf16_to_utf8	#
	.loc 1 934 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Perl_utf16_to_utf8_reversed, .-Perl_utf16_to_utf8_reversed
	.globl	Perl_is_uni_alnum
	.type	Perl_is_uni_alnum, @function
Perl_is_uni_alnum:
.LFB18:
	.loc 1 940 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 940 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13372
	xorl	%eax, %eax	# tmp65
	.loc 1 942 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 943 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_alnum	#
	.loc 1 944 0
	movq	-8(%rbp), %rcx	# D.13372, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L259	#,
	call	__stack_chk_fail	#
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	Perl_is_uni_alnum, .-Perl_is_uni_alnum
	.globl	Perl_is_uni_alnumc
	.type	Perl_is_uni_alnumc, @function
Perl_is_uni_alnumc:
.LFB19:
	.loc 1 948 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 948 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13376
	xorl	%eax, %eax	# tmp65
	.loc 1 950 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 951 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_alnumc	#
	.loc 1 952 0
	movq	-8(%rbp), %rcx	# D.13376, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L262	#,
	call	__stack_chk_fail	#
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	Perl_is_uni_alnumc, .-Perl_is_uni_alnumc
	.globl	Perl_is_uni_idfirst
	.type	Perl_is_uni_idfirst, @function
Perl_is_uni_idfirst:
.LFB20:
	.loc 1 956 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 956 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13378
	xorl	%eax, %eax	# tmp65
	.loc 1 958 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 959 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_idfirst	#
	.loc 1 960 0
	movq	-8(%rbp), %rcx	# D.13378, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L265	#,
	call	__stack_chk_fail	#
.L265:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	Perl_is_uni_idfirst, .-Perl_is_uni_idfirst
	.globl	Perl_is_uni_alpha
	.type	Perl_is_uni_alpha, @function
Perl_is_uni_alpha:
.LFB21:
	.loc 1 964 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 964 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13380
	xorl	%eax, %eax	# tmp65
	.loc 1 966 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 967 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_alpha	#
	.loc 1 968 0
	movq	-8(%rbp), %rcx	# D.13380, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L268	#,
	call	__stack_chk_fail	#
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	Perl_is_uni_alpha, .-Perl_is_uni_alpha
	.globl	Perl_is_uni_ascii
	.type	Perl_is_uni_ascii, @function
Perl_is_uni_ascii:
.LFB22:
	.loc 1 972 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 972 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13382
	xorl	%eax, %eax	# tmp65
	.loc 1 974 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 975 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_ascii	#
	.loc 1 976 0
	movq	-8(%rbp), %rcx	# D.13382, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L271	#,
	call	__stack_chk_fail	#
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	Perl_is_uni_ascii, .-Perl_is_uni_ascii
	.globl	Perl_is_uni_space
	.type	Perl_is_uni_space, @function
Perl_is_uni_space:
.LFB23:
	.loc 1 980 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 980 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13384
	xorl	%eax, %eax	# tmp65
	.loc 1 982 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 983 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_space	#
	.loc 1 984 0
	movq	-8(%rbp), %rcx	# D.13384, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L274	#,
	call	__stack_chk_fail	#
.L274:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	Perl_is_uni_space, .-Perl_is_uni_space
	.globl	Perl_is_uni_digit
	.type	Perl_is_uni_digit, @function
Perl_is_uni_digit:
.LFB24:
	.loc 1 988 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 988 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13386
	xorl	%eax, %eax	# tmp65
	.loc 1 990 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 991 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_digit	#
	.loc 1 992 0
	movq	-8(%rbp), %rcx	# D.13386, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L277	#,
	call	__stack_chk_fail	#
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	Perl_is_uni_digit, .-Perl_is_uni_digit
	.globl	Perl_is_uni_upper
	.type	Perl_is_uni_upper, @function
Perl_is_uni_upper:
.LFB25:
	.loc 1 996 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 996 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13388
	xorl	%eax, %eax	# tmp65
	.loc 1 998 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 999 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_upper	#
	.loc 1 1000 0
	movq	-8(%rbp), %rcx	# D.13388, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L280	#,
	call	__stack_chk_fail	#
.L280:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	Perl_is_uni_upper, .-Perl_is_uni_upper
	.globl	Perl_is_uni_lower
	.type	Perl_is_uni_lower, @function
Perl_is_uni_lower:
.LFB26:
	.loc 1 1004 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 1004 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13390
	xorl	%eax, %eax	# tmp65
	.loc 1 1006 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1007 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_lower	#
	.loc 1 1008 0
	movq	-8(%rbp), %rcx	# D.13390, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L283	#,
	call	__stack_chk_fail	#
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	Perl_is_uni_lower, .-Perl_is_uni_lower
	.globl	Perl_is_uni_cntrl
	.type	Perl_is_uni_cntrl, @function
Perl_is_uni_cntrl:
.LFB27:
	.loc 1 1012 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 1012 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13392
	xorl	%eax, %eax	# tmp65
	.loc 1 1014 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1015 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_cntrl	#
	.loc 1 1016 0
	movq	-8(%rbp), %rcx	# D.13392, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L286	#,
	call	__stack_chk_fail	#
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	Perl_is_uni_cntrl, .-Perl_is_uni_cntrl
	.globl	Perl_is_uni_graph
	.type	Perl_is_uni_graph, @function
Perl_is_uni_graph:
.LFB28:
	.loc 1 1020 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 1020 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13394
	xorl	%eax, %eax	# tmp65
	.loc 1 1022 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1023 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_graph	#
	.loc 1 1024 0
	movq	-8(%rbp), %rcx	# D.13394, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L289	#,
	call	__stack_chk_fail	#
.L289:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	Perl_is_uni_graph, .-Perl_is_uni_graph
	.globl	Perl_is_uni_print
	.type	Perl_is_uni_print, @function
Perl_is_uni_print:
.LFB29:
	.loc 1 1028 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 1028 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13396
	xorl	%eax, %eax	# tmp65
	.loc 1 1030 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1031 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_print	#
	.loc 1 1032 0
	movq	-8(%rbp), %rcx	# D.13396, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L292	#,
	call	__stack_chk_fail	#
.L292:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	Perl_is_uni_print, .-Perl_is_uni_print
	.globl	Perl_is_uni_punct
	.type	Perl_is_uni_punct, @function
Perl_is_uni_punct:
.LFB30:
	.loc 1 1036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# c, c
	.loc 1 1036 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13398
	xorl	%eax, %eax	# tmp65
	.loc 1 1038 0
	movq	-40(%rbp), %rdx	# c, tmp61
	leaq	-32(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1039 0
	leaq	-32(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_punct	#
	.loc 1 1040 0
	movq	-8(%rbp), %rcx	# D.13398, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L295	#,
	call	__stack_chk_fail	#
.L295:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	Perl_is_uni_punct, .-Perl_is_uni_punct
	.globl	Perl_is_uni_xdigit
	.type	Perl_is_uni_xdigit, @function
Perl_is_uni_xdigit:
.LFB31:
	.loc 1 1044 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# c, c
	.loc 1 1044 0
	movq	%fs:40, %rax	#, tmp65
	movq	%rax, -8(%rbp)	# tmp65, D.13400
	xorl	%eax, %eax	# tmp65
	.loc 1 1046 0
	movq	-24(%rbp), %rdx	# c, tmp61
	leaq	-16(%rbp), %rax	#, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1047 0
	leaq	-16(%rbp), %rax	#, tmp63
	movq	%rax, %rdi	# tmp63,
	call	Perl_is_utf8_xdigit	#
	.loc 1 1048 0
	movq	-8(%rbp), %rcx	# D.13400, tmp66
	xorq	%fs:40, %rcx	#, tmp66
	je	.L298	#,
	call	__stack_chk_fail	#
.L298:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	Perl_is_uni_xdigit, .-Perl_is_uni_xdigit
	.globl	Perl_to_uni_upper
	.type	Perl_to_uni_upper, @function
Perl_to_uni_upper:
.LFB32:
	.loc 1 1052 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# p, p
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1053 0
	movq	-8(%rbp), %rdx	# c, tmp61
	movq	-16(%rbp), %rax	# p, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1054 0
	movq	-24(%rbp), %rdx	# lenp, tmp63
	movq	-16(%rbp), %rcx	# p, tmp64
	movq	-16(%rbp), %rax	# p, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_to_utf8_upper	#
	.loc 1 1055 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	Perl_to_uni_upper, .-Perl_to_uni_upper
	.globl	Perl_to_uni_title
	.type	Perl_to_uni_title, @function
Perl_to_uni_title:
.LFB33:
	.loc 1 1059 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# p, p
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1060 0
	movq	-8(%rbp), %rdx	# c, tmp61
	movq	-16(%rbp), %rax	# p, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1061 0
	movq	-24(%rbp), %rdx	# lenp, tmp63
	movq	-16(%rbp), %rcx	# p, tmp64
	movq	-16(%rbp), %rax	# p, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_to_utf8_title	#
	.loc 1 1062 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	Perl_to_uni_title, .-Perl_to_uni_title
	.globl	Perl_to_uni_lower
	.type	Perl_to_uni_lower, @function
Perl_to_uni_lower:
.LFB34:
	.loc 1 1066 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# p, p
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1067 0
	movq	-8(%rbp), %rdx	# c, tmp61
	movq	-16(%rbp), %rax	# p, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1068 0
	movq	-24(%rbp), %rdx	# lenp, tmp63
	movq	-16(%rbp), %rcx	# p, tmp64
	movq	-16(%rbp), %rax	# p, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_to_utf8_lower	#
	.loc 1 1069 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	Perl_to_uni_lower, .-Perl_to_uni_lower
	.globl	Perl_to_uni_fold
	.type	Perl_to_uni_fold, @function
Perl_to_uni_fold:
.LFB35:
	.loc 1 1073 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	movq	%rsi, -16(%rbp)	# p, p
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1074 0
	movq	-8(%rbp), %rdx	# c, tmp61
	movq	-16(%rbp), %rax	# p, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1075 0
	movq	-24(%rbp), %rdx	# lenp, tmp63
	movq	-16(%rbp), %rcx	# p, tmp64
	movq	-16(%rbp), %rax	# p, tmp65
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	Perl_to_utf8_fold	#
	.loc 1 1076 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	Perl_to_uni_fold, .-Perl_to_uni_fold
	.globl	Perl_is_uni_alnum_lc
	.type	Perl_is_uni_alnum_lc, @function
Perl_is_uni_alnum_lc:
.LFB36:
	.loc 1 1082 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1083 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_alnum	#
	.loc 1 1084 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	Perl_is_uni_alnum_lc, .-Perl_is_uni_alnum_lc
	.globl	Perl_is_uni_alnumc_lc
	.type	Perl_is_uni_alnumc_lc, @function
Perl_is_uni_alnumc_lc:
.LFB37:
	.loc 1 1088 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1089 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_alnumc	#
	.loc 1 1090 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	Perl_is_uni_alnumc_lc, .-Perl_is_uni_alnumc_lc
	.globl	Perl_is_uni_idfirst_lc
	.type	Perl_is_uni_idfirst_lc, @function
Perl_is_uni_idfirst_lc:
.LFB38:
	.loc 1 1094 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1095 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_idfirst	#
	.loc 1 1096 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	Perl_is_uni_idfirst_lc, .-Perl_is_uni_idfirst_lc
	.globl	Perl_is_uni_alpha_lc
	.type	Perl_is_uni_alpha_lc, @function
Perl_is_uni_alpha_lc:
.LFB39:
	.loc 1 1100 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1101 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_alpha	#
	.loc 1 1102 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	Perl_is_uni_alpha_lc, .-Perl_is_uni_alpha_lc
	.globl	Perl_is_uni_ascii_lc
	.type	Perl_is_uni_ascii_lc, @function
Perl_is_uni_ascii_lc:
.LFB40:
	.loc 1 1106 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1107 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_ascii	#
	.loc 1 1108 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Perl_is_uni_ascii_lc, .-Perl_is_uni_ascii_lc
	.globl	Perl_is_uni_space_lc
	.type	Perl_is_uni_space_lc, @function
Perl_is_uni_space_lc:
.LFB41:
	.loc 1 1112 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1113 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_space	#
	.loc 1 1114 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	Perl_is_uni_space_lc, .-Perl_is_uni_space_lc
	.globl	Perl_is_uni_digit_lc
	.type	Perl_is_uni_digit_lc, @function
Perl_is_uni_digit_lc:
.LFB42:
	.loc 1 1118 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1119 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_digit	#
	.loc 1 1120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	Perl_is_uni_digit_lc, .-Perl_is_uni_digit_lc
	.globl	Perl_is_uni_upper_lc
	.type	Perl_is_uni_upper_lc, @function
Perl_is_uni_upper_lc:
.LFB43:
	.loc 1 1124 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1125 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_upper	#
	.loc 1 1126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	Perl_is_uni_upper_lc, .-Perl_is_uni_upper_lc
	.globl	Perl_is_uni_lower_lc
	.type	Perl_is_uni_lower_lc, @function
Perl_is_uni_lower_lc:
.LFB44:
	.loc 1 1130 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1131 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_lower	#
	.loc 1 1132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	Perl_is_uni_lower_lc, .-Perl_is_uni_lower_lc
	.globl	Perl_is_uni_cntrl_lc
	.type	Perl_is_uni_cntrl_lc, @function
Perl_is_uni_cntrl_lc:
.LFB45:
	.loc 1 1136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1137 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_cntrl	#
	.loc 1 1138 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	Perl_is_uni_cntrl_lc, .-Perl_is_uni_cntrl_lc
	.globl	Perl_is_uni_graph_lc
	.type	Perl_is_uni_graph_lc, @function
Perl_is_uni_graph_lc:
.LFB46:
	.loc 1 1142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1143 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_graph	#
	.loc 1 1144 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	Perl_is_uni_graph_lc, .-Perl_is_uni_graph_lc
	.globl	Perl_is_uni_print_lc
	.type	Perl_is_uni_print_lc, @function
Perl_is_uni_print_lc:
.LFB47:
	.loc 1 1148 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1149 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_print	#
	.loc 1 1150 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	Perl_is_uni_print_lc, .-Perl_is_uni_print_lc
	.globl	Perl_is_uni_punct_lc
	.type	Perl_is_uni_punct_lc, @function
Perl_is_uni_punct_lc:
.LFB48:
	.loc 1 1154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1155 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_punct	#
	.loc 1 1156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	Perl_is_uni_punct_lc, .-Perl_is_uni_punct_lc
	.globl	Perl_is_uni_xdigit_lc
	.type	Perl_is_uni_xdigit_lc, @function
Perl_is_uni_xdigit_lc:
.LFB49:
	.loc 1 1160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# c, c
	.loc 1 1161 0
	movq	-8(%rbp), %rax	# c, tmp61
	movq	%rax, %rdi	# tmp61,
	call	Perl_is_uni_xdigit	#
	.loc 1 1162 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	Perl_is_uni_xdigit_lc, .-Perl_is_uni_xdigit_lc
	.globl	Perl_to_uni_upper_lc
	.type	Perl_to_uni_upper_lc, @function
Perl_to_uni_upper_lc:
.LFB50:
	.loc 1 1166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# c, c
	.loc 1 1166 0
	movq	%fs:40, %rax	#, tmp66
	movq	%rax, -24(%rbp)	# tmp66, D.13421
	xorl	%eax, %eax	# tmp66
	.loc 1 1171 0
	movl	-52(%rbp), %eax	# c, D.13419
	leaq	-40(%rbp), %rdx	#, tmp63
	leaq	-32(%rbp), %rcx	#, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# D.13419,
	call	Perl_to_uni_upper	#
	.loc 1 1172 0
	movq	-24(%rbp), %rbx	# D.13421, tmp67
	xorq	%fs:40, %rbx	#, tmp67
	je	.L337	#,
	call	__stack_chk_fail	#
.L337:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	Perl_to_uni_upper_lc, .-Perl_to_uni_upper_lc
	.globl	Perl_to_uni_title_lc
	.type	Perl_to_uni_title_lc, @function
Perl_to_uni_title_lc:
.LFB51:
	.loc 1 1176 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# c, c
	.loc 1 1176 0
	movq	%fs:40, %rax	#, tmp66
	movq	%rax, -24(%rbp)	# tmp66, D.13424
	xorl	%eax, %eax	# tmp66
	.loc 1 1181 0
	movl	-52(%rbp), %eax	# c, D.13422
	leaq	-40(%rbp), %rdx	#, tmp63
	leaq	-32(%rbp), %rcx	#, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# D.13422,
	call	Perl_to_uni_title	#
	.loc 1 1182 0
	movq	-24(%rbp), %rbx	# D.13424, tmp67
	xorq	%fs:40, %rbx	#, tmp67
	je	.L340	#,
	call	__stack_chk_fail	#
.L340:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	Perl_to_uni_title_lc, .-Perl_to_uni_title_lc
	.globl	Perl_to_uni_lower_lc
	.type	Perl_to_uni_lower_lc, @function
Perl_to_uni_lower_lc:
.LFB52:
	.loc 1 1186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)	# c, c
	.loc 1 1186 0
	movq	%fs:40, %rax	#, tmp66
	movq	%rax, -24(%rbp)	# tmp66, D.13427
	xorl	%eax, %eax	# tmp66
	.loc 1 1191 0
	movl	-52(%rbp), %eax	# c, D.13425
	leaq	-40(%rbp), %rdx	#, tmp63
	leaq	-32(%rbp), %rcx	#, tmp64
	movq	%rcx, %rsi	# tmp64,
	movq	%rax, %rdi	# D.13425,
	call	Perl_to_uni_lower	#
	.loc 1 1192 0
	movq	-24(%rbp), %rbx	# D.13427, tmp67
	xorq	%fs:40, %rbx	#, tmp67
	je	.L343	#,
	call	__stack_chk_fail	#
.L343:
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	Perl_to_uni_lower_lc, .-Perl_to_uni_lower_lc
	.section	.rodata
.LC19:
	.string	"IsWord"
.LC20:
	.string	"utf8"
	.text
	.globl	Perl_is_utf8_alnum
	.type	Perl_is_utf8_alnum, @function
Perl_is_utf8_alnum:
.LFB53:
	.loc 1 1196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1197 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13429
	jne	.L345	#,
	.loc 1 1198 0
	movl	$0, %eax	#, D.13428
	jmp	.L346	#
.L345:
	.loc 1 1199 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.185
	testq	%rax, %rax	# PL_utf8_alnum.185
	jne	.L347	#,
	.loc 1 1203 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC19, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_alnum(%rip)	# PL_utf8_alnum.186, PL_utf8_alnum
.L347:
	.loc 1 1204 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.187
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_alnum.187,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13429
	setne	%al	#, D.13430
.L346:
	.loc 1 1212 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	Perl_is_utf8_alnum, .-Perl_is_utf8_alnum
	.section	.rodata
.LC21:
	.string	"IsAlnumC"
	.text
	.globl	Perl_is_utf8_alnumc
	.type	Perl_is_utf8_alnumc, @function
Perl_is_utf8_alnumc:
.LFB54:
	.loc 1 1216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1217 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13434
	jne	.L349	#,
	.loc 1 1218 0
	movl	$0, %eax	#, D.13433
	jmp	.L350	#
.L349:
	.loc 1 1219 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.188
	testq	%rax, %rax	# PL_utf8_alnum.188
	jne	.L351	#,
	.loc 1 1220 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC21, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_alnum(%rip)	# PL_utf8_alnum.189, PL_utf8_alnum
.L351:
	.loc 1 1221 0
	movq	PL_utf8_alnum(%rip), %rax	# PL_utf8_alnum, PL_utf8_alnum.190
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_alnum.190,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13434
	setne	%al	#, D.13435
.L350:
	.loc 1 1229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	Perl_is_utf8_alnumc, .-Perl_is_utf8_alnumc
	.section	.rodata
.LC22:
	.string	"IdStart"
	.text
	.globl	Perl_is_utf8_idfirst
	.type	Perl_is_utf8_idfirst, @function
Perl_is_utf8_idfirst:
.LFB55:
	.loc 1 1233 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1234 0
	movq	-8(%rbp), %rax	# p, tmp68
	movzbl	(%rax), %eax	# *p_2(D), D.13438
	cmpb	$95, %al	#, D.13438
	jne	.L353	#,
	.loc 1 1235 0
	movl	$1, %eax	#, D.13437
	jmp	.L354	#
.L353:
	.loc 1 1236 0
	movq	-8(%rbp), %rax	# p, tmp69
	movq	%rax, %rdi	# tmp69,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13439
	jne	.L355	#,
	.loc 1 1237 0
	movl	$0, %eax	#, D.13437
	jmp	.L354	#
.L355:
	.loc 1 1238 0
	movq	PL_utf8_idstart(%rip), %rax	# PL_utf8_idstart, PL_utf8_idstart.191
	testq	%rax, %rax	# PL_utf8_idstart.191
	jne	.L356	#,
	.loc 1 1239 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC22, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_idstart(%rip)	# PL_utf8_idstart.192, PL_utf8_idstart
.L356:
	.loc 1 1240 0
	movq	PL_utf8_idstart(%rip), %rax	# PL_utf8_idstart, PL_utf8_idstart.193
	movq	-8(%rbp), %rcx	# p, tmp70
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp70,
	movq	%rax, %rdi	# PL_utf8_idstart.193,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13439
	setne	%al	#, D.13440
.L354:
	.loc 1 1241 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	Perl_is_utf8_idfirst, .-Perl_is_utf8_idfirst
	.section	.rodata
.LC23:
	.string	"IdContinue"
	.text
	.globl	Perl_is_utf8_idcont
	.type	Perl_is_utf8_idcont, @function
Perl_is_utf8_idcont:
.LFB56:
	.loc 1 1245 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1246 0
	movq	-8(%rbp), %rax	# p, tmp68
	movzbl	(%rax), %eax	# *p_2(D), D.13443
	cmpb	$95, %al	#, D.13443
	jne	.L358	#,
	.loc 1 1247 0
	movl	$1, %eax	#, D.13442
	jmp	.L359	#
.L358:
	.loc 1 1248 0
	movq	-8(%rbp), %rax	# p, tmp69
	movq	%rax, %rdi	# tmp69,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13444
	jne	.L360	#,
	.loc 1 1249 0
	movl	$0, %eax	#, D.13442
	jmp	.L359	#
.L360:
	.loc 1 1250 0
	movq	PL_utf8_idcont(%rip), %rax	# PL_utf8_idcont, PL_utf8_idcont.194
	testq	%rax, %rax	# PL_utf8_idcont.194
	jne	.L361	#,
	.loc 1 1251 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC23, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_idcont(%rip)	# PL_utf8_idcont.195, PL_utf8_idcont
.L361:
	.loc 1 1252 0
	movq	PL_utf8_idcont(%rip), %rax	# PL_utf8_idcont, PL_utf8_idcont.196
	movq	-8(%rbp), %rcx	# p, tmp70
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp70,
	movq	%rax, %rdi	# PL_utf8_idcont.196,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13444
	setne	%al	#, D.13445
.L359:
	.loc 1 1253 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	Perl_is_utf8_idcont, .-Perl_is_utf8_idcont
	.section	.rodata
.LC24:
	.string	"IsAlpha"
	.text
	.globl	Perl_is_utf8_alpha
	.type	Perl_is_utf8_alpha, @function
Perl_is_utf8_alpha:
.LFB57:
	.loc 1 1257 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1258 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13448
	jne	.L363	#,
	.loc 1 1259 0
	movl	$0, %eax	#, D.13447
	jmp	.L364	#
.L363:
	.loc 1 1260 0
	movq	PL_utf8_alpha(%rip), %rax	# PL_utf8_alpha, PL_utf8_alpha.197
	testq	%rax, %rax	# PL_utf8_alpha.197
	jne	.L365	#,
	.loc 1 1261 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC24, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_alpha(%rip)	# PL_utf8_alpha.198, PL_utf8_alpha
.L365:
	.loc 1 1262 0
	movq	PL_utf8_alpha(%rip), %rax	# PL_utf8_alpha, PL_utf8_alpha.199
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_alpha.199,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13448
	setne	%al	#, D.13449
.L364:
	.loc 1 1263 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	Perl_is_utf8_alpha, .-Perl_is_utf8_alpha
	.section	.rodata
.LC25:
	.string	"IsAscii"
	.text
	.globl	Perl_is_utf8_ascii
	.type	Perl_is_utf8_ascii, @function
Perl_is_utf8_ascii:
.LFB58:
	.loc 1 1267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1268 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13452
	jne	.L367	#,
	.loc 1 1269 0
	movl	$0, %eax	#, D.13451
	jmp	.L368	#
.L367:
	.loc 1 1270 0
	movq	PL_utf8_ascii(%rip), %rax	# PL_utf8_ascii, PL_utf8_ascii.200
	testq	%rax, %rax	# PL_utf8_ascii.200
	jne	.L369	#,
	.loc 1 1271 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC25, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_ascii(%rip)	# PL_utf8_ascii.201, PL_utf8_ascii
.L369:
	.loc 1 1272 0
	movq	PL_utf8_ascii(%rip), %rax	# PL_utf8_ascii, PL_utf8_ascii.202
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_ascii.202,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13452
	setne	%al	#, D.13453
.L368:
	.loc 1 1273 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	Perl_is_utf8_ascii, .-Perl_is_utf8_ascii
	.section	.rodata
.LC26:
	.string	"IsSpacePerl"
	.text
	.globl	Perl_is_utf8_space
	.type	Perl_is_utf8_space, @function
Perl_is_utf8_space:
.LFB59:
	.loc 1 1277 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1278 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13456
	jne	.L371	#,
	.loc 1 1279 0
	movl	$0, %eax	#, D.13455
	jmp	.L372	#
.L371:
	.loc 1 1280 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.203
	testq	%rax, %rax	# PL_utf8_space.203
	jne	.L373	#,
	.loc 1 1281 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC26, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_space(%rip)	# PL_utf8_space.204, PL_utf8_space
.L373:
	.loc 1 1282 0
	movq	PL_utf8_space(%rip), %rax	# PL_utf8_space, PL_utf8_space.205
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_space.205,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13456
	setne	%al	#, D.13457
.L372:
	.loc 1 1283 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	Perl_is_utf8_space, .-Perl_is_utf8_space
	.section	.rodata
.LC27:
	.string	"IsDigit"
	.text
	.globl	Perl_is_utf8_digit
	.type	Perl_is_utf8_digit, @function
Perl_is_utf8_digit:
.LFB60:
	.loc 1 1287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1288 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13460
	jne	.L375	#,
	.loc 1 1289 0
	movl	$0, %eax	#, D.13459
	jmp	.L376	#
.L375:
	.loc 1 1290 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.206
	testq	%rax, %rax	# PL_utf8_digit.206
	jne	.L377	#,
	.loc 1 1291 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC27, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_digit(%rip)	# PL_utf8_digit.207, PL_utf8_digit
.L377:
	.loc 1 1292 0
	movq	PL_utf8_digit(%rip), %rax	# PL_utf8_digit, PL_utf8_digit.208
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_digit.208,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13460
	setne	%al	#, D.13461
.L376:
	.loc 1 1293 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	Perl_is_utf8_digit, .-Perl_is_utf8_digit
	.section	.rodata
.LC28:
	.string	"IsUppercase"
	.text
	.globl	Perl_is_utf8_upper
	.type	Perl_is_utf8_upper, @function
Perl_is_utf8_upper:
.LFB61:
	.loc 1 1297 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1298 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13464
	jne	.L379	#,
	.loc 1 1299 0
	movl	$0, %eax	#, D.13463
	jmp	.L380	#
.L379:
	.loc 1 1300 0
	movq	PL_utf8_upper(%rip), %rax	# PL_utf8_upper, PL_utf8_upper.209
	testq	%rax, %rax	# PL_utf8_upper.209
	jne	.L381	#,
	.loc 1 1301 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC28, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_upper(%rip)	# PL_utf8_upper.210, PL_utf8_upper
.L381:
	.loc 1 1302 0
	movq	PL_utf8_upper(%rip), %rax	# PL_utf8_upper, PL_utf8_upper.211
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_upper.211,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13464
	setne	%al	#, D.13465
.L380:
	.loc 1 1303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	Perl_is_utf8_upper, .-Perl_is_utf8_upper
	.section	.rodata
.LC29:
	.string	"IsLowercase"
	.text
	.globl	Perl_is_utf8_lower
	.type	Perl_is_utf8_lower, @function
Perl_is_utf8_lower:
.LFB62:
	.loc 1 1307 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1308 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13468
	jne	.L383	#,
	.loc 1 1309 0
	movl	$0, %eax	#, D.13467
	jmp	.L384	#
.L383:
	.loc 1 1310 0
	movq	PL_utf8_lower(%rip), %rax	# PL_utf8_lower, PL_utf8_lower.212
	testq	%rax, %rax	# PL_utf8_lower.212
	jne	.L385	#,
	.loc 1 1311 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC29, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_lower(%rip)	# PL_utf8_lower.213, PL_utf8_lower
.L385:
	.loc 1 1312 0
	movq	PL_utf8_lower(%rip), %rax	# PL_utf8_lower, PL_utf8_lower.214
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_lower.214,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13468
	setne	%al	#, D.13469
.L384:
	.loc 1 1313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	Perl_is_utf8_lower, .-Perl_is_utf8_lower
	.section	.rodata
.LC30:
	.string	"IsCntrl"
	.text
	.globl	Perl_is_utf8_cntrl
	.type	Perl_is_utf8_cntrl, @function
Perl_is_utf8_cntrl:
.LFB63:
	.loc 1 1317 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1318 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13472
	jne	.L387	#,
	.loc 1 1319 0
	movl	$0, %eax	#, D.13471
	jmp	.L388	#
.L387:
	.loc 1 1320 0
	movq	PL_utf8_cntrl(%rip), %rax	# PL_utf8_cntrl, PL_utf8_cntrl.215
	testq	%rax, %rax	# PL_utf8_cntrl.215
	jne	.L389	#,
	.loc 1 1321 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC30, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_cntrl(%rip)	# PL_utf8_cntrl.216, PL_utf8_cntrl
.L389:
	.loc 1 1322 0
	movq	PL_utf8_cntrl(%rip), %rax	# PL_utf8_cntrl, PL_utf8_cntrl.217
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_cntrl.217,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13472
	setne	%al	#, D.13473
.L388:
	.loc 1 1323 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	Perl_is_utf8_cntrl, .-Perl_is_utf8_cntrl
	.section	.rodata
.LC31:
	.string	"IsGraph"
	.text
	.globl	Perl_is_utf8_graph
	.type	Perl_is_utf8_graph, @function
Perl_is_utf8_graph:
.LFB64:
	.loc 1 1327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1328 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13476
	jne	.L391	#,
	.loc 1 1329 0
	movl	$0, %eax	#, D.13475
	jmp	.L392	#
.L391:
	.loc 1 1330 0
	movq	PL_utf8_graph(%rip), %rax	# PL_utf8_graph, PL_utf8_graph.218
	testq	%rax, %rax	# PL_utf8_graph.218
	jne	.L393	#,
	.loc 1 1331 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC31, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_graph(%rip)	# PL_utf8_graph.219, PL_utf8_graph
.L393:
	.loc 1 1332 0
	movq	PL_utf8_graph(%rip), %rax	# PL_utf8_graph, PL_utf8_graph.220
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_graph.220,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13476
	setne	%al	#, D.13477
.L392:
	.loc 1 1333 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	Perl_is_utf8_graph, .-Perl_is_utf8_graph
	.section	.rodata
.LC32:
	.string	"IsPrint"
	.text
	.globl	Perl_is_utf8_print
	.type	Perl_is_utf8_print, @function
Perl_is_utf8_print:
.LFB65:
	.loc 1 1337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1338 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13480
	jne	.L395	#,
	.loc 1 1339 0
	movl	$0, %eax	#, D.13479
	jmp	.L396	#
.L395:
	.loc 1 1340 0
	movq	PL_utf8_print(%rip), %rax	# PL_utf8_print, PL_utf8_print.221
	testq	%rax, %rax	# PL_utf8_print.221
	jne	.L397	#,
	.loc 1 1341 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC32, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_print(%rip)	# PL_utf8_print.222, PL_utf8_print
.L397:
	.loc 1 1342 0
	movq	PL_utf8_print(%rip), %rax	# PL_utf8_print, PL_utf8_print.223
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_print.223,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13480
	setne	%al	#, D.13481
.L396:
	.loc 1 1343 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	Perl_is_utf8_print, .-Perl_is_utf8_print
	.section	.rodata
.LC33:
	.string	"IsPunct"
	.text
	.globl	Perl_is_utf8_punct
	.type	Perl_is_utf8_punct, @function
Perl_is_utf8_punct:
.LFB66:
	.loc 1 1347 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1348 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13484
	jne	.L399	#,
	.loc 1 1349 0
	movl	$0, %eax	#, D.13483
	jmp	.L400	#
.L399:
	.loc 1 1350 0
	movq	PL_utf8_punct(%rip), %rax	# PL_utf8_punct, PL_utf8_punct.224
	testq	%rax, %rax	# PL_utf8_punct.224
	jne	.L401	#,
	.loc 1 1351 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC33, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_punct(%rip)	# PL_utf8_punct.225, PL_utf8_punct
.L401:
	.loc 1 1352 0
	movq	PL_utf8_punct(%rip), %rax	# PL_utf8_punct, PL_utf8_punct.226
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_punct.226,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13484
	setne	%al	#, D.13485
.L400:
	.loc 1 1353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	Perl_is_utf8_punct, .-Perl_is_utf8_punct
	.section	.rodata
.LC34:
	.string	"IsXDigit"
	.text
	.globl	Perl_is_utf8_xdigit
	.type	Perl_is_utf8_xdigit, @function
Perl_is_utf8_xdigit:
.LFB67:
	.loc 1 1357 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1358 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13488
	jne	.L403	#,
	.loc 1 1359 0
	movl	$0, %eax	#, D.13487
	jmp	.L404	#
.L403:
	.loc 1 1360 0
	movq	PL_utf8_xdigit(%rip), %rax	# PL_utf8_xdigit, PL_utf8_xdigit.227
	testq	%rax, %rax	# PL_utf8_xdigit.227
	jne	.L405	#,
	.loc 1 1361 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC34, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_xdigit(%rip)	# PL_utf8_xdigit.228, PL_utf8_xdigit
.L405:
	.loc 1 1362 0
	movq	PL_utf8_xdigit(%rip), %rax	# PL_utf8_xdigit, PL_utf8_xdigit.229
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_xdigit.229,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13488
	setne	%al	#, D.13489
.L404:
	.loc 1 1363 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	Perl_is_utf8_xdigit, .-Perl_is_utf8_xdigit
	.section	.rodata
.LC35:
	.string	"IsM"
	.text
	.globl	Perl_is_utf8_mark
	.type	Perl_is_utf8_mark, @function
Perl_is_utf8_mark:
.LFB68:
	.loc 1 1367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 1368 0
	movq	-8(%rbp), %rax	# p, tmp67
	movq	%rax, %rdi	# tmp67,
	call	Perl_is_utf8_char	#
	testq	%rax, %rax	# D.13492
	jne	.L407	#,
	.loc 1 1369 0
	movl	$0, %eax	#, D.13491
	jmp	.L408	#
.L407:
	.loc 1 1370 0
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.230
	testq	%rax, %rax	# PL_utf8_mark.230
	jne	.L409	#,
	.loc 1 1371 0
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movl	$.LC35, %esi	#,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	%rax, PL_utf8_mark(%rip)	# PL_utf8_mark.231, PL_utf8_mark
.L409:
	.loc 1 1372 0
	movq	PL_utf8_mark(%rip), %rax	# PL_utf8_mark, PL_utf8_mark.232
	movq	-8(%rbp), %rcx	# p, tmp68
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# PL_utf8_mark.232,
	call	Perl_swash_fetch	#
	testq	%rax, %rax	# D.13492
	setne	%al	#, D.13493
.L408:
	.loc 1 1373 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	Perl_is_utf8_mark, .-Perl_is_utf8_mark
	.globl	Perl_to_utf8_case
	.type	Perl_to_utf8_case, @function
Perl_to_utf8_case:
.LFB69:
	.loc 1 1402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# p, p
	movq	%rsi, -112(%rbp)	# ustrp, ustrp
	movq	%rdx, -120(%rbp)	# lenp, lenp
	movq	%rcx, -128(%rbp)	# swashp, swashp
	movq	%r8, -136(%rbp)	# normal, normal
	movq	%r9, -144(%rbp)	# special, special
	.loc 1 1402 0
	movq	%fs:40, %rax	#, tmp143
	movq	%rax, -24(%rbp)	# tmp143, D.13503
	xorl	%eax, %eax	# tmp143
	.loc 1 1405 0
	movq	$0, -96(%rbp)	#, len
	.loc 1 1407 0
	movq	-104(%rbp), %rax	# p, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -88(%rbp)	# tmp108, uv0
	.loc 1 1411 0
	movq	-88(%rbp), %rax	# uv0, tmp109
	movq	%rax, -80(%rbp)	# tmp109, uv1
	.loc 1 1412 0
	movq	-80(%rbp), %rdx	# uv1, tmp110
	leaq	-32(%rbp), %rax	#, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	Perl_uvuni_to_utf8	#
	.loc 1 1414 0
	movq	-128(%rbp), %rax	# swashp, tmp112
	movq	(%rax), %rax	# *swashp_13(D), D.13495
	testq	%rax, %rax	# D.13495
	jne	.L411	#,
	.loc 1 1415 0
	movq	-136(%rbp), %rax	# normal, tmp113
	movl	$0, %r8d	#,
	movl	$4, %ecx	#,
	movl	$PL_sv_undef, %edx	#,
	movq	%rax, %rsi	# tmp113,
	movl	$.LC20, %edi	#,
	call	Perl_swash_init	#
	movq	-128(%rbp), %rdx	# swashp, tmp114
	movq	%rax, (%rdx)	# D.13495, *swashp_13(D)
.L411:
	.loc 1 1418 0
	cmpq	$0, -144(%rbp)	#, special
	je	.L412	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	cmpq	$223, -80(%rbp)	#, uv1
	je	.L413	#,
	cmpq	$255, -80(%rbp)	#, uv1
	jbe	.L412	#,
.L413:
.LBB15:
	.loc 1 1424 0 is_stmt 1
	movq	-144(%rbp), %rax	# special, tmp115
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	Perl_get_hv	#
	movq	%rax, -72(%rbp)	# tmp116, hv
	cmpq	$0, -72(%rbp)	#, hv
	je	.L412	#,
	.loc 1 1425 0
	cmpq	$127, -80(%rbp)	#, uv1
	jbe	.L414	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	cmpq	$2047, -80(%rbp)	#, uv1
	jbe	.L415	#,
	cmpq	$65535, -80(%rbp)	#, uv1
	jbe	.L416	#,
	cmpq	$2097151, -80(%rbp)	#, uv1
	jbe	.L417	#,
	cmpq	$67108863, -80(%rbp)	#, uv1
	jbe	.L418	#,
	cmpq	$2147483647, -80(%rbp)	#, uv1
	jbe	.L419	#,
	movabsq	$68719476735, %rax	#, tmp117
	cmpq	%rax, -80(%rbp)	# tmp117, uv1
	ja	.L420	#,
	movl	$7, %eax	#, iftmp.239
	jmp	.L427	#
.L420:
	.loc 1 1425 0 discriminator 2
	movl	$13, %eax	#, iftmp.239
	jmp	.L427	#
.L419:
	movl	$6, %eax	#, iftmp.238
	jmp	.L427	#
.L418:
	movl	$5, %eax	#, iftmp.237
	jmp	.L427	#
.L417:
	movl	$4, %eax	#, iftmp.236
	jmp	.L427	#
.L416:
	movl	$3, %eax	#, iftmp.235
	jmp	.L427	#
.L415:
	movl	$2, %eax	#, iftmp.234
	jmp	.L427	#
.L414:
	movl	$1, %eax	#, iftmp.233
.L427:
	.loc 1 1424 0 is_stmt 1
	leaq	-32(%rbp), %rsi	#, tmp118
	movq	-72(%rbp), %rdi	# hv, tmp119
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.233,
	call	Perl_hv_fetch	#
	movq	%rax, -64(%rbp)	# tmp120, svp
	cmpq	$0, -64(%rbp)	#, svp
	je	.L412	#,
	.loc 1 1426 0
	movq	-64(%rbp), %rax	# svp, tmp121
	movq	(%rax), %rax	# *svp_33, D.13495
	.loc 1 1425 0
	testq	%rax, %rax	# D.13495
	je	.L412	#,
.LBB16:
	.loc 1 1429 0
	movq	-64(%rbp), %rax	# svp, tmp122
	movq	(%rax), %rax	# *svp_33, D.13495
	movl	12(%rax), %eax	# _35->sv_flags, D.13496
	andl	$262144, %eax	#, D.13496
	testl	%eax, %eax	# D.13496
	je	.L428	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# svp, tmp123
	movq	(%rax), %rax	# *svp_33, D.13495
	movq	(%rax), %rax	# _38->sv_any, D.13497
	movq	8(%rax), %rax	# MEM[(struct XPV *)_39].xpv_cur, len.241
	movq	%rax, -96(%rbp)	# len.241, len
	movq	-64(%rbp), %rax	# svp, tmp124
	movq	(%rax), %rax	# *svp_33, D.13495
	movq	(%rax), %rax	# _41->sv_any, D.13497
	movq	(%rax), %rax	# MEM[(struct XPV *)_42].xpv_pv, iftmp.240
	jmp	.L429	#
.L428:
	.loc 1 1429 0 discriminator 2
	movq	-64(%rbp), %rax	# svp, tmp125
	movq	(%rax), %rax	# *svp_33, D.13495
	leaq	-96(%rbp), %rcx	#, tmp126
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp126,
	movq	%rax, %rdi	# D.13495,
	call	Perl_sv_2pv_flags	#
.L429:
	.loc 1 1429 0 discriminator 3
	movq	%rax, -56(%rbp)	# iftmp.240, s
	.loc 1 1430 0 is_stmt 1 discriminator 3
	movq	-96(%rbp), %rax	# len, len.242
	cmpq	$1, %rax	#, len.242
	jne	.L430	#,
	.loc 1 1431 0
	movq	-56(%rbp), %rax	# s, tmp127
	movzbl	(%rax), %eax	# MEM[(U8 *)s_46], D.13498
	movzbl	%al, %edx	# D.13498, D.13499
	movq	-112(%rbp), %rax	# ustrp, tmp128
	movq	%rdx, %rsi	# D.13499,
	movq	%rax, %rdi	# tmp128,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %rdx	# D.13500, D.13501
	movq	-112(%rbp), %rax	# ustrp, ustrp.243
	subq	%rax, %rdx	# ustrp.243, D.13501
	movq	%rdx, %rax	# D.13501, D.13501
	movq	%rax, -96(%rbp)	# len.244, len
	jmp	.L412	#
.L430:
	.loc 1 1462 0
	movq	-96(%rbp), %rdx	# len, len.245
	movq	-56(%rbp), %rcx	# s, tmp129
	movq	-112(%rbp), %rax	# ustrp, tmp130
	movq	%rcx, %rsi	# tmp129,
	movq	%rax, %rdi	# tmp130,
	call	memcpy	#
.L412:
.LBE16:
.LBE15:
	.loc 1 1468 0
	movq	-96(%rbp), %rax	# len, len.246
	testq	%rax, %rax	# len.246
	jne	.L431	#,
	.loc 1 1468 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# swashp, tmp131
	movq	(%rax), %rax	# *swashp_13(D), D.13495
	testq	%rax, %rax	# D.13495
	je	.L431	#,
.LBB17:
	.loc 1 1469 0 is_stmt 1
	movq	-128(%rbp), %rax	# swashp, tmp132
	movq	(%rax), %rax	# *swashp_13(D), D.13495
	leaq	-32(%rbp), %rcx	#, tmp133
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# D.13495,
	call	Perl_swash_fetch	#
	movq	%rax, -48(%rbp)	# tmp134, uv2
	.loc 1 1471 0
	cmpq	$0, -48(%rbp)	#, uv2
	je	.L431	#,
.LBB18:
	.loc 1 1473 0
	movq	-48(%rbp), %rax	# uv2, tmp135
	movq	%rax, -40(%rbp)	# tmp135, uv3
	.loc 1 1475 0
	movq	-40(%rbp), %rdx	# uv3, tmp136
	movq	-112(%rbp), %rax	# ustrp, tmp137
	movq	%rdx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp137,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %rdx	# D.13500, D.13501
	movq	-112(%rbp), %rax	# ustrp, ustrp.247
	subq	%rax, %rdx	# ustrp.247, D.13501
	movq	%rdx, %rax	# D.13501, D.13501
	movq	%rax, -96(%rbp)	# len.248, len
.L431:
.LBE18:
.LBE17:
	.loc 1 1479 0
	movq	-96(%rbp), %rax	# len, len.249
	testq	%rax, %rax	# len.249
	jne	.L432	#,
	.loc 1 1480 0
	movq	-88(%rbp), %rdx	# uv0, tmp138
	movq	-112(%rbp), %rax	# ustrp, tmp139
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	Perl_uvuni_to_utf8	#
	movq	%rax, %rdx	# D.13500, D.13501
	movq	-112(%rbp), %rax	# ustrp, ustrp.250
	subq	%rax, %rdx	# ustrp.250, D.13501
	movq	%rdx, %rax	# D.13501, D.13501
	movq	%rax, -96(%rbp)	# len.251, len
.L432:
	.loc 1 1482 0
	cmpq	$0, -120(%rbp)	#, lenp
	je	.L433	#,
	.loc 1 1483 0
	movq	-96(%rbp), %rdx	# len, len.252
	movq	-120(%rbp), %rax	# lenp, tmp140
	movq	%rdx, (%rax)	# len.252, *lenp_73(D)
.L433:
	.loc 1 1485 0
	movq	-96(%rbp), %rax	# len, len.254
	testq	%rax, %rax	# len.254
	je	.L434	#,
	.loc 1 1485 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# ustrp, tmp141
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	Perl_utf8_to_uvchr	#
	jmp	.L435	#
.L434:
	.loc 1 1485 0 discriminator 2
	movl	$0, %eax	#, iftmp.253
.L435:
	.loc 1 1486 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rbx	# D.13503, tmp144
	xorq	%fs:40, %rbx	#, tmp144
	je	.L437	#,
	.loc 1 1486 0 is_stmt 0
	call	__stack_chk_fail	#
.L437:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	Perl_to_utf8_case, .-Perl_to_utf8_case
	.section	.rodata
.LC36:
	.string	"utf8::ToSpecUpper"
.LC37:
	.string	"ToUpper"
	.text
	.globl	Perl_to_utf8_upper
	.type	Perl_to_utf8_upper, @function
Perl_to_utf8_upper:
.LFB70:
	.loc 1 1503 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	movq	%rsi, -16(%rbp)	# ustrp, ustrp
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1504 0
	movq	-24(%rbp), %rdx	# lenp, tmp61
	movq	-16(%rbp), %rsi	# ustrp, tmp62
	movq	-8(%rbp), %rax	# p, tmp63
	movl	$.LC36, %r9d	#,
	movl	$.LC37, %r8d	#,
	movl	$PL_utf8_toupper, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_to_utf8_case	#
	.loc 1 1506 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	Perl_to_utf8_upper, .-Perl_to_utf8_upper
	.section	.rodata
.LC38:
	.string	"utf8::ToSpecTitle"
.LC39:
	.string	"ToTitle"
	.text
	.globl	Perl_to_utf8_title
	.type	Perl_to_utf8_title, @function
Perl_to_utf8_title:
.LFB71:
	.loc 1 1523 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	movq	%rsi, -16(%rbp)	# ustrp, ustrp
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1524 0
	movq	-24(%rbp), %rdx	# lenp, tmp61
	movq	-16(%rbp), %rsi	# ustrp, tmp62
	movq	-8(%rbp), %rax	# p, tmp63
	movl	$.LC38, %r9d	#,
	movl	$.LC39, %r8d	#,
	movl	$PL_utf8_totitle, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_to_utf8_case	#
	.loc 1 1526 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	Perl_to_utf8_title, .-Perl_to_utf8_title
	.section	.rodata
.LC40:
	.string	"utf8::ToSpecLower"
.LC41:
	.string	"ToLower"
	.text
	.globl	Perl_to_utf8_lower
	.type	Perl_to_utf8_lower, @function
Perl_to_utf8_lower:
.LFB72:
	.loc 1 1543 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	movq	%rsi, -16(%rbp)	# ustrp, ustrp
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1544 0
	movq	-24(%rbp), %rdx	# lenp, tmp61
	movq	-16(%rbp), %rsi	# ustrp, tmp62
	movq	-8(%rbp), %rax	# p, tmp63
	movl	$.LC40, %r9d	#,
	movl	$.LC41, %r8d	#,
	movl	$PL_utf8_tolower, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_to_utf8_case	#
	.loc 1 1546 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	Perl_to_utf8_lower, .-Perl_to_utf8_lower
	.section	.rodata
.LC42:
	.string	"utf8::ToSpecFold"
.LC43:
	.string	"ToFold"
	.text
	.globl	Perl_to_utf8_fold
	.type	Perl_to_utf8_fold, @function
Perl_to_utf8_fold:
.LFB73:
	.loc 1 1564 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	movq	%rsi, -16(%rbp)	# ustrp, ustrp
	movq	%rdx, -24(%rbp)	# lenp, lenp
	.loc 1 1565 0
	movq	-24(%rbp), %rdx	# lenp, tmp61
	movq	-16(%rbp), %rsi	# ustrp, tmp62
	movq	-8(%rbp), %rax	# p, tmp63
	movl	$.LC42, %r9d	#,
	movl	$.LC43, %r8d	#,
	movl	$PL_utf8_tofold, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	Perl_to_utf8_case	#
	.loc 1 1567 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	Perl_to_utf8_fold, .-Perl_to_utf8_fold
	.section	.rodata
.LC44:
	.string	"SWASHNEW"
.LC46:
	.string	"panic: POPSTACK\n"
	.align 8
.LC47:
	.string	"Can't find Unicode property definition \"%_\""
	.align 8
.LC48:
	.string	"SWASHNEW didn't return an HV ref"
	.text
	.globl	Perl_swash_init
	.type	Perl_swash_init, @function
Perl_swash_init:
.LFB74:
	.loc 1 1573 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# pkg, pkg
	movq	%rsi, -112(%rbp)	# name, name
	movq	%rdx, -120(%rbp)	# listsv, listsv
	movl	%ecx, -124(%rbp)	# minbits, minbits
	movl	%r8d, -128(%rbp)	# none, none
	.loc 1 1575 0
	call	Perl_sv_newmortal	#
	movq	%rax, -72(%rbp)	# tmp327, tokenbufsv
	.loc 1 1576 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1577 0
	movq	-104(%rbp), %rax	# pkg, tmp328
	movq	%rax, %rdi	# tmp328,
	call	strlen	#
	movq	%rax, -64(%rbp)	# tmp329, pkg_len
	.loc 1 1578 0
	movq	-112(%rbp), %rax	# name, tmp330
	movq	%rax, %rdi	# tmp330,
	call	strlen	#
	movq	%rax, -56(%rbp)	# tmp331, name_len
	.loc 1 1579 0
	movq	-64(%rbp), %rax	# pkg_len, tmp332
	movl	%eax, %ecx	# tmp332, D.13516
	movq	-104(%rbp), %rax	# pkg, tmp333
	movl	$0, %edx	#,
	movl	%ecx, %esi	# D.13516,
	movq	%rax, %rdi	# tmp333,
	call	Perl_gv_stashpvn	#
	movq	%rax, -48(%rbp)	# tmp334, stash
.LBB19:
	.loc 1 1582 0
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.255
	movq	40(%rax), %rax	# PL_curstackinfo.255_24->si_next, tmp335
	movq	%rax, -80(%rbp)	# tmp335, next
	cmpq	$0, -80(%rbp)	#, next
	jne	.L447	#,
	.loc 1 1582 0 is_stmt 0 discriminator 1
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -80(%rbp)	# tmp336, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.256
	movq	-80(%rbp), %rax	# next, tmp337
	movq	%rdx, 32(%rax)	# PL_curstackinfo.256, next_26->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.257
	movq	-80(%rbp), %rdx	# next, tmp338
	movq	%rdx, 40(%rax)	# tmp338, PL_curstackinfo.257_28->si_next
.L447:
	.loc 1 1582 0 discriminator 2
	movq	-80(%rbp), %rax	# next, tmp339
	movl	$2, 24(%rax)	#, next_3->si_type
	movq	-80(%rbp), %rax	# next, tmp340
	movl	$-1, 16(%rax)	#, next_3->si_cxix
	movq	-80(%rbp), %rax	# next, tmp341
	movq	(%rax), %rax	# next_3->si_stack, D.13517
	movq	(%rax), %rax	# _29->sv_any, D.13518
	movq	$0, 8(%rax)	#, _30->xav_fill
.LBB20:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.258
	movq	(%rax), %rax	# PL_curstack.258_31->sv_any, D.13518
	movq	%rbx, %rcx	# sp, sp.259
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.260
	subq	%rdx, %rcx	# PL_stack_base.261, D.13519
	movq	%rcx, %rdx	# D.13519, D.13519
	sarq	$3, %rdx	#, tmp342
	movq	%rdx, 8(%rax)	# D.13519, _32->xav_fill
	movq	-80(%rbp), %rax	# next, tmp343
	movq	(%rax), %rax	# next_3->si_stack, D.13517
	movq	(%rax), %rax	# _38->sv_any, D.13518
	movq	(%rax), %rax	# _39->xav_array, PL_stack_base.262
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.262, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.263
	movq	-80(%rbp), %rax	# next, tmp344
	movq	(%rax), %rax	# next_3->si_stack, D.13517
	movq	(%rax), %rax	# _42->sv_any, D.13518
	movq	16(%rax), %rax	# _43->xav_max, D.13519
	salq	$3, %rax	#, D.13520
	addq	%rdx, %rax	# PL_stack_base.263, PL_stack_max.264
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.264, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.265
	movq	-80(%rbp), %rax	# next, tmp345
	movq	(%rax), %rax	# next_3->si_stack, D.13517
	movq	(%rax), %rax	# _49->sv_any, D.13518
	movq	8(%rax), %rax	# _50->xav_fill, D.13519
	salq	$3, %rax	#, D.13520
	addq	%rdx, %rax	# PL_stack_base.265, PL_stack_sp.266
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.266, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-80(%rbp), %rax	# next, tmp346
	movq	(%rax), %rax	# next_3->si_stack, PL_curstack.267
	movq	%rax, PL_curstack(%rip)	# PL_curstack.267, PL_curstack
.LBE20:
	movq	-80(%rbp), %rax	# next, tmp347
	movq	%rax, PL_curstackinfo(%rip)	# tmp347, PL_curstackinfo
.LBE19:
	.loc 1 1583 0 is_stmt 1 discriminator 2
	call	Perl_push_scope	#
	.loc 1 1584 0 discriminator 2
	movl	$PL_hints, %edi	#,
	call	Perl_save_I32	#
	.loc 1 1585 0 discriminator 2
	movl	$0, PL_hints(%rip)	#, PL_hints
	.loc 1 1586 0 discriminator 2
	call	Perl_save_re_context	#
	.loc 1 1587 0 discriminator 2
	movq	-48(%rbp), %rax	# stash, tmp348
	movl	$-1, %ecx	#,
	movl	$8, %edx	#,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp348,
	call	Perl_gv_fetchmeth	#
	testq	%rax, %rax	# D.13521
	jne	.L448	#,
	.loc 1 1588 0
	call	Perl_push_scope	#
	.loc 1 1589 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.268
	movq	(%rax), %rax	# PL_errgv.268_59->sv_any, D.13522
	movq	56(%rax), %rax	# _60->xgv_gp, D.13523
	movq	(%rax), %rax	# _61->gp_sv, D.13524
	movq	%rax, %rdi	# D.13524,
	call	Perl_newSVsv	#
	movq	%rax, -40(%rbp)	# tmp349, errsv_save
	.loc 1 1590 0
	movq	-64(%rbp), %rdx	# pkg_len, tmp350
	movq	-104(%rbp), %rax	# pkg, tmp351
	movq	%rdx, %rsi	# tmp350,
	movq	%rax, %rdi	# tmp351,
	call	Perl_newSVpvn	#
	movl	$0, %edx	#,
	movq	%rax, %rsi	# D.13524,
	movl	$2, %edi	#,
	movl	$0, %eax	#,
	call	Perl_load_module	#
	.loc 1 1592 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.270
	movq	(%rax), %rax	# PL_errgv.270_65->sv_any, D.13522
	movq	56(%rax), %rax	# _66->xgv_gp, D.13523
	movq	(%rax), %rax	# _67->gp_sv, D.13524
	testq	%rax, %rax	# D.13524
	je	.L449	#,
	.loc 1 1592 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.272
	movq	(%rax), %rax	# PL_errgv.272_69->sv_any, D.13522
	movq	56(%rax), %rax	# _70->xgv_gp, D.13523
	movq	(%rax), %rax	# _71->gp_sv, D.13524
	movl	12(%rax), %eax	# _72->sv_flags, D.13516
	andl	$262144, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L450	#,
	.loc 1 1592 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.274
	movq	(%rax), %rax	# PL_errgv.274_75->sv_any, D.13522
	movq	56(%rax), %rax	# _76->xgv_gp, D.13523
	movq	(%rax), %rax	# _77->gp_sv, D.13524
	movq	(%rax), %rax	# _78->sv_any, PL_Xpv.275
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.275, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.276
	testq	%rax, %rax	# PL_Xpv.276
	je	.L451	#,
	.loc 1 1592 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.277
	movq	8(%rax), %rax	# PL_Xpv.277_81->xpv_cur, D.13520
	cmpq	$1, %rax	#, D.13520
	ja	.L452	#,
	.loc 1 1592 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.278
	movq	8(%rax), %rax	# PL_Xpv.278_83->xpv_cur, D.13520
	testq	%rax, %rax	# D.13520
	je	.L451	#,
	.loc 1 1592 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.279
	movq	(%rax), %rax	# PL_Xpv.279_85->xpv_pv, D.13525
	movzbl	(%rax), %eax	# *_86, D.13526
	cmpb	$48, %al	#, D.13526
	jne	.L452	#,
.L451:
	.loc 1 1592 0 discriminator 5
	movl	$1, %eax	#, iftmp.273
	jmp	.L453	#
.L452:
	.loc 1 1592 0 discriminator 8
	movl	$0, %eax	#, iftmp.273
.L453:
	.loc 1 1592 0 discriminator 9
	andl	$1, %eax	#, iftmp.271
	jmp	.L459	#
.L450:
	.loc 1 1592 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.281
	movq	(%rax), %rax	# PL_errgv.281_91->sv_any, D.13522
	movq	56(%rax), %rax	# _92->xgv_gp, D.13523
	movq	(%rax), %rax	# _93->gp_sv, D.13524
	movl	12(%rax), %eax	# _94->sv_flags, D.13516
	andl	$65536, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L455	#,
	.loc 1 1592 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.282
	movq	(%rax), %rax	# PL_errgv.282_97->sv_any, D.13522
	movq	56(%rax), %rax	# _98->xgv_gp, D.13523
	movq	(%rax), %rax	# _99->gp_sv, D.13524
	movq	(%rax), %rax	# _100->sv_any, D.13527
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_101].xiv_iv, D.13519
	testq	%rax, %rax	# D.13519
	sete	%al	#, iftmp.280
	jmp	.L459	#
.L455:
	.loc 1 1592 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.284
	movq	(%rax), %rax	# PL_errgv.284_104->sv_any, D.13522
	movq	56(%rax), %rax	# _105->xgv_gp, D.13523
	movq	(%rax), %rax	# _106->gp_sv, D.13524
	movl	12(%rax), %eax	# _107->sv_flags, D.13516
	andl	$131072, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L457	#,
	.loc 1 1592 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.285
	movq	(%rax), %rax	# PL_errgv.285_110->sv_any, D.13522
	movq	56(%rax), %rax	# _111->xgv_gp, D.13523
	movq	(%rax), %rax	# _112->gp_sv, D.13524
	movq	(%rax), %rax	# _113->sv_any, D.13527
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_114].xnv_nv, D.13528
	xorpd	%xmm1, %xmm1	# tmp353
	ucomisd	%xmm1, %xmm0	# tmp353, D.13528
	setnp	%dl	#, tmp352
	movl	$0, %eax	#, tmp355
	xorpd	%xmm1, %xmm1	# tmp354
	ucomisd	%xmm1, %xmm0	# tmp354, D.13528
	cmove	%edx, %eax	# tmp352,, iftmp.283
	jmp	.L459	#
.L457:
	.loc 1 1592 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.286
	movq	(%rax), %rax	# PL_errgv.286_117->sv_any, D.13522
	movq	56(%rax), %rax	# _118->xgv_gp, D.13523
	movq	(%rax), %rax	# _119->gp_sv, D.13524
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13526
	sete	%al	#, iftmp.283
	jmp	.L459	#
.L449:
	.loc 1 1592 0 discriminator 2
	movl	$1, %eax	#, iftmp.269
.L459:
	.loc 1 1592 0 discriminator 16
	testb	%al, %al	# iftmp.269
	je	.L460	#,
	.loc 1 1593 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.287
	movq	(%rax), %rax	# PL_errgv.287_127->sv_any, D.13522
	movq	56(%rax), %rax	# _128->xgv_gp, D.13523
	movq	(%rax), %rax	# _129->gp_sv, D.13524
	movq	-40(%rbp), %rcx	# errsv_save, tmp356
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp356,
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_setsv_flags	#
.L460:
	.loc 1 1594 0
	movq	-40(%rbp), %rax	# errsv_save, tmp357
	movq	%rax, %rdi	# tmp357,
	call	Perl_sv_free	#
	.loc 1 1595 0
	call	Perl_pop_scope	#
.L448:
	.loc 1 1597 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
.LBB21:
	.loc 1 1598 0
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.288
	addq	$4, %rax	#, PL_markstack_ptr.289
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.289, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.290
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.291
	cmpq	%rax, %rdx	# PL_markstack_max.291, PL_markstack_ptr.290
	jne	.L461	#,
	.loc 1 1598 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L461:
	.loc 1 1598 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.292
	movq	%rbx, %rcx	# sp, sp.293
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.294
	subq	%rdx, %rcx	# PL_stack_base.295, D.13519
	movq	%rcx, %rdx	# D.13519, D.13519
	sarq	$3, %rdx	#, tmp358
	movl	%edx, (%rax)	# D.13529, *PL_markstack_ptr.292_136
.LBE21:
	.loc 1 1599 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.296
	movq	%rax, %rdx	# PL_stack_max.296, PL_stack_max.297
	movq	%rbx, %rax	# sp, sp.298
	subq	%rax, %rdx	# sp.298, D.13519
	movq	%rdx, %rax	# D.13519, D.13519
	cmpq	$39, %rax	#, D.13519
	jg	.L462	#,
	.loc 1 1599 0 is_stmt 0 discriminator 1
	movl	$5, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L462:
	.loc 1 1600 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-64(%rbp), %rdx	# pkg_len, tmp359
	movq	-104(%rbp), %rax	# pkg, tmp360
	movq	%rdx, %rsi	# tmp359,
	movq	%rax, %rdi	# tmp360,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13524, *sp_149
	.loc 1 1601 0
	addq	$8, %rbx	#, sp
	movq	-56(%rbp), %rdx	# name_len, tmp361
	movq	-112(%rbp), %rax	# name, tmp362
	movq	%rdx, %rsi	# tmp361,
	movq	%rax, %rdi	# tmp362,
	call	Perl_newSVpvn	#
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13524, *sp_152
	.loc 1 1602 0
	addq	$8, %rbx	#, sp
	movq	-120(%rbp), %rax	# listsv, tmp363
	movq	%rax, (%rbx)	# tmp363, *sp_155
	.loc 1 1603 0
	addq	$8, %rbx	#, sp
	movl	-124(%rbp), %eax	# minbits, tmp364
	cltq
	movq	%rax, %rdi	# D.13519,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13524, *sp_157
	.loc 1 1604 0
	addq	$8, %rbx	#, sp
	movl	-128(%rbp), %eax	# none, tmp365
	cltq
	movq	%rax, %rdi	# D.13519,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13524, *sp_162
	.loc 1 1605 0
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1606 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.299
	cmpq	$PL_compiling, %rax	#, PL_curcop.299
	jne	.L463	#,
	.loc 1 1608 0
	movl	$PL_in_my, %edi	#,
	call	Perl_save_I32	#
	.loc 1 1609 0
	movl	$0, PL_in_my(%rip)	#, PL_in_my
	.loc 1 1610 0
	movq	-72(%rbp), %rax	# tokenbufsv, tmp366
	movl	$PL_tokenbuf, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	Perl_sv_setpv	#
.L463:
	.loc 1 1612 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.300
	movq	(%rax), %rax	# PL_errgv.300_168->sv_any, D.13522
	movq	56(%rax), %rax	# _169->xgv_gp, D.13523
	movq	(%rax), %rax	# _170->gp_sv, D.13524
	movq	%rax, %rdi	# D.13524,
	call	Perl_newSVsv	#
	movq	%rax, -40(%rbp)	# tmp367, errsv_save
	.loc 1 1613 0
	movl	$0, %esi	#,
	movl	$.LC44, %edi	#,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.13529
	je	.L464	#,
	.loc 1 1614 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.301
	leaq	-8(%rax), %rdx	#, PL_stack_sp.303
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.303, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.302_175, D.13524
	movq	%rax, %rdi	# D.13524,
	call	Perl_newSVsv	#
	movq	%rax, -88(%rbp)	# tmp368, retval
	jmp	.L465	#
.L464:
	.loc 1 1616 0
	movq	$PL_sv_undef, -88(%rbp)	#, retval
.L465:
	.loc 1 1617 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.305
	movq	(%rax), %rax	# PL_errgv.305_180->sv_any, D.13522
	movq	56(%rax), %rax	# _181->xgv_gp, D.13523
	movq	(%rax), %rax	# _182->gp_sv, D.13524
	testq	%rax, %rax	# D.13524
	je	.L466	#,
	.loc 1 1617 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.307
	movq	(%rax), %rax	# PL_errgv.307_184->sv_any, D.13522
	movq	56(%rax), %rax	# _185->xgv_gp, D.13523
	movq	(%rax), %rax	# _186->gp_sv, D.13524
	movl	12(%rax), %eax	# _187->sv_flags, D.13516
	andl	$262144, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L467	#,
	.loc 1 1617 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.309
	movq	(%rax), %rax	# PL_errgv.309_190->sv_any, D.13522
	movq	56(%rax), %rax	# _191->xgv_gp, D.13523
	movq	(%rax), %rax	# _192->gp_sv, D.13524
	movq	(%rax), %rax	# _193->sv_any, PL_Xpv.310
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.310, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.311
	testq	%rax, %rax	# PL_Xpv.311
	je	.L468	#,
	.loc 1 1617 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.312
	movq	8(%rax), %rax	# PL_Xpv.312_196->xpv_cur, D.13520
	cmpq	$1, %rax	#, D.13520
	ja	.L469	#,
	.loc 1 1617 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.313
	movq	8(%rax), %rax	# PL_Xpv.313_198->xpv_cur, D.13520
	testq	%rax, %rax	# D.13520
	je	.L468	#,
	.loc 1 1617 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.314
	movq	(%rax), %rax	# PL_Xpv.314_200->xpv_pv, D.13525
	movzbl	(%rax), %eax	# *_201, D.13526
	cmpb	$48, %al	#, D.13526
	jne	.L469	#,
.L468:
	.loc 1 1617 0 discriminator 5
	movl	$1, %eax	#, iftmp.308
	jmp	.L470	#
.L469:
	.loc 1 1617 0 discriminator 8
	movl	$0, %eax	#, iftmp.308
.L470:
	.loc 1 1617 0 discriminator 9
	andl	$1, %eax	#, iftmp.306
	jmp	.L476	#
.L467:
	.loc 1 1617 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.316
	movq	(%rax), %rax	# PL_errgv.316_206->sv_any, D.13522
	movq	56(%rax), %rax	# _207->xgv_gp, D.13523
	movq	(%rax), %rax	# _208->gp_sv, D.13524
	movl	12(%rax), %eax	# _209->sv_flags, D.13516
	andl	$65536, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L472	#,
	.loc 1 1617 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.317
	movq	(%rax), %rax	# PL_errgv.317_212->sv_any, D.13522
	movq	56(%rax), %rax	# _213->xgv_gp, D.13523
	movq	(%rax), %rax	# _214->gp_sv, D.13524
	movq	(%rax), %rax	# _215->sv_any, D.13527
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_216].xiv_iv, D.13519
	testq	%rax, %rax	# D.13519
	sete	%al	#, iftmp.315
	jmp	.L476	#
.L472:
	.loc 1 1617 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.319
	movq	(%rax), %rax	# PL_errgv.319_219->sv_any, D.13522
	movq	56(%rax), %rax	# _220->xgv_gp, D.13523
	movq	(%rax), %rax	# _221->gp_sv, D.13524
	movl	12(%rax), %eax	# _222->sv_flags, D.13516
	andl	$131072, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L474	#,
	.loc 1 1617 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.320
	movq	(%rax), %rax	# PL_errgv.320_225->sv_any, D.13522
	movq	56(%rax), %rax	# _226->xgv_gp, D.13523
	movq	(%rax), %rax	# _227->gp_sv, D.13524
	movq	(%rax), %rax	# _228->sv_any, D.13527
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_229].xnv_nv, D.13528
	xorpd	%xmm1, %xmm1	# tmp370
	ucomisd	%xmm1, %xmm0	# tmp370, D.13528
	setnp	%dl	#, tmp369
	movl	$0, %eax	#, tmp372
	xorpd	%xmm1, %xmm1	# tmp371
	ucomisd	%xmm1, %xmm0	# tmp371, D.13528
	cmove	%edx, %eax	# tmp369,, iftmp.318
	jmp	.L476	#
.L474:
	.loc 1 1617 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.321
	movq	(%rax), %rax	# PL_errgv.321_232->sv_any, D.13522
	movq	56(%rax), %rax	# _233->xgv_gp, D.13523
	movq	(%rax), %rax	# _234->gp_sv, D.13524
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13526
	sete	%al	#, iftmp.318
	jmp	.L476	#
.L466:
	.loc 1 1617 0 discriminator 2
	movl	$1, %eax	#, iftmp.304
.L476:
	.loc 1 1617 0 discriminator 16
	testb	%al, %al	# iftmp.304
	je	.L477	#,
	.loc 1 1618 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.322
	movq	(%rax), %rax	# PL_errgv.322_242->sv_any, D.13522
	movq	56(%rax), %rax	# _243->xgv_gp, D.13523
	movq	(%rax), %rax	# _244->gp_sv, D.13524
	movq	-40(%rbp), %rcx	# errsv_save, tmp373
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp373,
	movq	%rax, %rdi	# D.13524,
	call	Perl_sv_setsv_flags	#
.L477:
	.loc 1 1619 0
	movq	-40(%rbp), %rax	# errsv_save, tmp374
	movq	%rax, %rdi	# tmp374,
	call	Perl_sv_free	#
	.loc 1 1620 0
	call	Perl_pop_scope	#
.LBB22:
	.loc 1 1621 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.323
	movq	32(%rax), %rax	# PL_curstackinfo.323_247->si_prev, tmp375
	movq	%rax, -32(%rbp)	# tmp375, prev
	cmpq	$0, -32(%rbp)	#, prev
	jne	.L478	#,
	.loc 1 1621 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.325
	testq	%rax, %rax	# PL_stderrgv.325
	je	.L479	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.326
	movl	12(%rax), %eax	# PL_stderrgv.326_250->sv_flags, D.13516
	movzbl	%al, %eax	# D.13516, D.13516
	cmpl	$13, %eax	#, D.13516
	jne	.L479	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.327
	movq	(%rax), %rax	# PL_stderrgv.327_253->sv_any, D.13522
	movq	56(%rax), %rax	# _254->xgv_gp, D.13523
	movq	16(%rax), %rax	# _255->gp_io, D.13531
	testq	%rax, %rax	# D.13531
	je	.L479	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.328
	movq	(%rax), %rax	# PL_stderrgv.328_257->sv_any, D.13522
	movq	56(%rax), %rax	# _258->xgv_gp, D.13523
	movq	16(%rax), %rax	# _259->gp_io, D.13531
	movq	(%rax), %rax	# _260->sv_any, D.13532
	movq	64(%rax), %rax	# _261->xio_ofp, D.13533
	testq	%rax, %rax	# D.13533
	je	.L479	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.329
	movq	(%rax), %rax	# PL_stderrgv.329_263->sv_any, D.13522
	movq	56(%rax), %rax	# _264->xgv_gp, D.13523
	movq	16(%rax), %rax	# _265->gp_io, D.13531
	movq	(%rax), %rax	# _266->sv_any, D.13532
	movq	64(%rax), %rax	# _267->xio_ofp, iftmp.324
	jmp	.L480	#
.L479:
	.loc 1 1621 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L480:
	.loc 1 1621 0 discriminator 3
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# iftmp.324,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L478:
.LBB23:
	.loc 1 1621 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.330
	movq	(%rax), %rax	# PL_curstack.330_270->sv_any, D.13518
	movq	%rbx, %rcx	# sp, sp.331
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.332
	subq	%rdx, %rcx	# PL_stack_base.333, D.13519
	movq	%rcx, %rdx	# D.13519, D.13519
	sarq	$3, %rdx	#, tmp376
	movq	%rdx, 8(%rax)	# D.13519, _271->xav_fill
	movq	-32(%rbp), %rax	# prev, tmp377
	movq	(%rax), %rax	# prev_248->si_stack, D.13517
	movq	(%rax), %rax	# _277->sv_any, D.13518
	movq	(%rax), %rax	# _278->xav_array, PL_stack_base.334
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.334, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.335
	movq	-32(%rbp), %rax	# prev, tmp378
	movq	(%rax), %rax	# prev_248->si_stack, D.13517
	movq	(%rax), %rax	# _281->sv_any, D.13518
	movq	16(%rax), %rax	# _282->xav_max, D.13519
	salq	$3, %rax	#, D.13520
	addq	%rdx, %rax	# PL_stack_base.335, PL_stack_max.336
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.336, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.337
	movq	-32(%rbp), %rax	# prev, tmp379
	movq	(%rax), %rax	# prev_248->si_stack, D.13517
	movq	(%rax), %rax	# _288->sv_any, D.13518
	movq	8(%rax), %rax	# _289->xav_fill, D.13519
	salq	$3, %rax	#, D.13520
	addq	%rdx, %rax	# PL_stack_base.337, PL_stack_sp.338
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.338, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-32(%rbp), %rax	# prev, tmp380
	movq	(%rax), %rax	# prev_248->si_stack, PL_curstack.339
	movq	%rax, PL_curstack(%rip)	# PL_curstack.339, PL_curstack
.LBE23:
	movq	-32(%rbp), %rax	# prev, tmp381
	movq	%rax, PL_curstackinfo(%rip)	# tmp381, PL_curstackinfo
.LBE22:
	.loc 1 1622 0 is_stmt 1 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.340
	cmpq	$PL_compiling, %rax	#, PL_curcop.340
	jne	.L481	#,
.LBB24:
	.loc 1 1624 0
	movq	-72(%rbp), %rax	# tokenbufsv, tmp382
	movl	12(%rax), %eax	# tokenbufsv_16->sv_flags, D.13516
	andl	$262144, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L482	#,
	.loc 1 1624 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# tokenbufsv, tmp383
	movq	(%rax), %rax	# tokenbufsv_16->sv_any, D.13527
	movq	8(%rax), %rax	# MEM[(struct XPV *)_301].xpv_cur, len.342
	movq	%rax, -96(%rbp)	# len.342, len
	movq	-72(%rbp), %rax	# tokenbufsv, tmp384
	movq	(%rax), %rax	# tokenbufsv_16->sv_any, D.13527
	movq	(%rax), %rax	# MEM[(struct XPV *)_303].xpv_pv, iftmp.341
	jmp	.L483	#
.L482:
	.loc 1 1624 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp385
	movq	-72(%rbp), %rax	# tokenbufsv, tmp386
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp385,
	movq	%rax, %rdi	# tmp386,
	call	Perl_sv_2pv_flags	#
.L483:
	.loc 1 1624 0 discriminator 1
	movq	%rax, -24(%rbp)	# iftmp.341, pv
	.loc 1 1626 0 is_stmt 1 discriminator 1
	movq	-96(%rbp), %rax	# len, len.343
	leaq	1(%rax), %rdx	#, D.13520
	movq	-24(%rbp), %rax	# pv, tmp387
	movq	%rax, %rsi	# tmp387,
	movl	$PL_tokenbuf, %edi	#,
	call	memcpy	#
	.loc 1 1627 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.344
	movl	PL_hints(%rip), %edx	# PL_hints, PL_hints.345
	movb	%dl, 37(%rax)	# D.13535, PL_curcop.344_309->op_private
.L481:
.LBE24:
	.loc 1 1629 0
	movq	-88(%rbp), %rax	# retval, tmp388
	movl	12(%rax), %eax	# retval_1->sv_flags, D.13516
	andl	$524288, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L484	#,
	.loc 1 1629 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# retval, tmp389
	movq	(%rax), %rax	# retval_1->sv_any, D.13527
	movq	(%rax), %rax	# MEM[(struct XRV *)_314].xrv_rv, D.13524
	movl	12(%rax), %eax	# _315->sv_flags, D.13516
	movzbl	%al, %eax	# D.13516, D.13516
	cmpl	$11, %eax	#, D.13516
	je	.L485	#,
.L484:
	.loc 1 1630 0 is_stmt 1
	movq	-88(%rbp), %rax	# retval, tmp390
	movl	12(%rax), %eax	# retval_1->sv_flags, D.13516
	andl	$262144, %eax	#, D.13516
	testl	%eax, %eax	# D.13516
	je	.L486	#,
	.loc 1 1631 0
	movq	-88(%rbp), %rax	# retval, tmp391
	movq	%rax, %rsi	# tmp391,
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L486:
	.loc 1 1633 0
	movl	$.LC48, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L485:
	.loc 1 1635 0
	movq	-88(%rbp), %rax	# retval, D.13524
	.loc 1 1636 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	Perl_swash_init, .-Perl_swash_init
	.section	.rodata
.LC49:
	.string	"SWASHGET"
	.align 8
.LC50:
	.string	"SWASHGET didn't return result of proper length"
.LC51:
	.string	"panic: swash_fetch"
	.text
	.globl	Perl_swash_fetch
	.type	Perl_swash_fetch, @function
Perl_swash_fetch:
.LFB75:
	.loc 1 1646 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# sv, sv
	movq	%rsi, -144(%rbp)	# ptr, ptr
	movl	%edx, %eax	# do_utf8, tmp375
	movb	%al, -148(%rbp)	# tmp375, do_utf8
	.loc 1 1647 0
	movq	-136(%rbp), %rax	# sv, tmp376
	movq	(%rax), %rax	# sv_22(D)->sv_any, D.13541
	movq	(%rax), %rax	# MEM[(struct XRV *)_23].xrv_rv, tmp377
	movq	%rax, -64(%rbp)	# tmp377, hv
	.loc 1 1652 0
	movq	$0, -88(%rbp)	#, tmps
	.loc 1 1656 0
	movq	-144(%rbp), %rax	# ptr, tmp378
	movzbl	(%rax), %eax	# *ptr_26(D), D.13542
	movzbl	%al, %eax	# D.13542, tmp379
	movq	%rax, -56(%rbp)	# tmp379, c
	.loc 1 1658 0
	cmpb	$0, -148(%rbp)	#, do_utf8
	jne	.L489	#,
	.loc 1 1658 0 is_stmt 0 discriminator 1
	cmpq	$127, -56(%rbp)	#, c
	jbe	.L489	#,
	.loc 1 1659 0 is_stmt 1
	movq	-56(%rbp), %rax	# c, tmp380
	shrb	$6, %al	#, D.13542
	orl	$-64, %eax	#, D.13543
	movb	%al, -128(%rbp)	# D.13542, tmputf8
	.loc 1 1660 0
	movq	-56(%rbp), %rax	# c, tmp381
	andl	$63, %eax	#, D.13543
	orl	$-128, %eax	#, D.13543
	movb	%al, -127(%rbp)	# D.13542, tmputf8
	.loc 1 1661 0
	leaq	-128(%rbp), %rax	#, tmp382
	movq	%rax, -144(%rbp)	# tmp382, ptr
.L489:
	.loc 1 1668 0
	movq	-144(%rbp), %rax	# ptr, tmp383
	movzbl	(%rax), %eax	# *ptr_1, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	subl	$1, %eax	#, D.13544
	movl	%eax, -112(%rbp)	# D.13544, klen
	.loc 1 1669 0
	movl	-112(%rbp), %edx	# klen, D.13545
	movq	-144(%rbp), %rax	# ptr, tmp385
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_47, D.13542
	movzbl	%al, %eax	# D.13542, tmp386
	movl	%eax, -116(%rbp)	# tmp386, off
	.loc 1 1671 0
	cmpl	$0, -112(%rbp)	#, klen
	jne	.L490	#,
	.loc 1 1676 0
	movq	$128, -96(%rbp)	#, needents
	.loc 1 1677 0
	movl	-112(%rbp), %edx	# klen, D.13545
	movq	-144(%rbp), %rax	# ptr, tmp387
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_52, D.13542
	movzbl	%al, %eax	# D.13542, tmp388
	movl	%eax, -116(%rbp)	# tmp388, off
	jmp	.L491	#
.L490:
	.loc 1 1682 0
	movq	$64, -96(%rbp)	#, needents
	.loc 1 1683 0
	movl	-112(%rbp), %edx	# klen, D.13545
	movq	-144(%rbp), %rax	# ptr, tmp389
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_57, D.13542
	movzbl	%al, %eax	# D.13542, D.13547
	andl	$63, %eax	#, tmp390
	movl	%eax, -116(%rbp)	# tmp390, off
.L491:
	.loc 1 1695 0
	movq	PL_last_swash_hv(%rip), %rax	# PL_last_swash_hv, PL_last_swash_hv.346
	cmpq	%rax, -64(%rbp)	# PL_last_swash_hv.346, hv
	jne	.L492	#,
	.loc 1 1696 0 discriminator 1
	movl	PL_last_swash_klen(%rip), %eax	# PL_last_swash_klen, PL_last_swash_klen.347
	.loc 1 1695 0 discriminator 1
	cmpl	%eax, -112(%rbp)	# PL_last_swash_klen.347, klen
	jne	.L492	#,
	.loc 1 1696 0
	cmpl	$0, -112(%rbp)	#, klen
	je	.L493	#,
	.loc 1 1697 0
	movl	-112(%rbp), %edx	# klen, D.13548
	movq	-144(%rbp), %rax	# ptr, tmp391
	movl	$PL_last_swash_key, %esi	#,
	movq	%rax, %rdi	# tmp391,
	call	memcmp	#
	testl	%eax, %eax	# D.13544
	jne	.L492	#,
.L493:
	.loc 1 1699 0
	movq	PL_last_swash_tmps(%rip), %rax	# PL_last_swash_tmps, tmp392
	movq	%rax, -88(%rbp)	# tmp392, tmps
	.loc 1 1700 0
	movq	PL_last_swash_slen(%rip), %rax	# PL_last_swash_slen, PL_last_swash_slen.348
	movq	%rax, -104(%rbp)	# PL_last_swash_slen.348, slen
	jmp	.L494	#
.L492:
.LBB25:
	.loc 1 1704 0
	movl	-112(%rbp), %edx	# klen, klen.349
	movq	-144(%rbp), %rsi	# ptr, tmp393
	movq	-64(%rbp), %rax	# hv, tmp394
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp394,
	call	Perl_hv_fetch	#
	movq	%rax, -48(%rbp)	# tmp395, svp
	.loc 1 1707 0
	cmpq	$0, -48(%rbp)	#, svp
	je	.L495	#,
	.loc 1 1707 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# svp, tmp396
	movq	(%rax), %rax	# *svp_68, D.13549
	movl	12(%rax), %eax	# _69->sv_flags, D.13547
	andl	$262144, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L495	#,
	movq	-48(%rbp), %rax	# svp, tmp397
	movq	(%rax), %rax	# *svp_68, D.13549
	movl	12(%rax), %eax	# _72->sv_flags, D.13547
	andl	$262144, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L496	#,
	movq	-48(%rbp), %rax	# svp, tmp398
	movq	(%rax), %rax	# *svp_68, D.13549
	movq	(%rax), %rax	# _75->sv_any, D.13541
	movq	8(%rax), %rax	# MEM[(struct XPV *)_76].xpv_cur, slen.351
	movq	%rax, -104(%rbp)	# slen.351, slen
	movq	-48(%rbp), %rax	# svp, tmp399
	movq	(%rax), %rax	# *svp_68, D.13549
	movq	(%rax), %rax	# _78->sv_any, D.13541
	movq	(%rax), %rax	# MEM[(struct XPV *)_79].xpv_pv, iftmp.350
	jmp	.L497	#
.L496:
	.loc 1 1707 0 discriminator 2
	movq	-48(%rbp), %rax	# svp, tmp400
	movq	(%rax), %rax	# *svp_68, D.13549
	leaq	-104(%rbp), %rcx	#, tmp401
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp401,
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_2pv_flags	#
.L497:
	.loc 1 1707 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.350, tmps
	cmpq	$0, -88(%rbp)	#, tmps
	jne	.L498	#,
.L495:
.LBB26:
	.loc 1 1708 0 is_stmt 1
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	.loc 1 1713 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.353
	movq	80(%rax), %rax	# PL_curcop.353_85->cop_warnings, D.13549
	.loc 1 1712 0
	testq	%rax, %rax	# D.13549
	je	.L499	#,
	.loc 1 1713 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.354
	movq	80(%rax), %rax	# PL_curcop.354_87->cop_warnings, D.13549
	cmpq	$32, %rax	#, D.13549
	je	.L499	#,
	.loc 1 1713 0 is_stmt 0 discriminator 1
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.355
	movq	80(%rax), %rax	# PL_curcop.355_89->cop_warnings, D.13549
	cmpq	$16, %rax	#, D.13549
	je	.L500	#,
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.356
	movq	80(%rax), %rax	# PL_curcop.356_91->cop_warnings, D.13549
	movq	(%rax), %rax	# _92->sv_any, D.13541
	movq	(%rax), %rax	# MEM[(struct XPV *)_93].xpv_pv, D.13550
	addq	$11, %rax	#, D.13550
	movzbl	(%rax), %eax	# *_95, D.13551
	movsbl	%al, %eax	# D.13551, D.13544
	andl	$1, %eax	#, D.13544
	testl	%eax, %eax	# D.13544
	jne	.L500	#,
.L499:
	.loc 1 1713 0 discriminator 2
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.357
	movq	80(%rax), %rax	# PL_curcop.357_99->cop_warnings, D.13549
	testq	%rax, %rax	# D.13549
	jne	.L501	#,
	.loc 1 1713 0 discriminator 1
	movzbl	PL_dowarn(%rip), %eax	# PL_dowarn, PL_dowarn.358
	movzbl	%al, %eax	# PL_dowarn.358, D.13544
	andl	$1, %eax	#, D.13544
	testl	%eax, %eax	# D.13544
	je	.L501	#,
.L500:
	.loc 1 1712 0 is_stmt 1
	movl	$0, %eax	#, iftmp.352
	jmp	.L502	#
.L501:
	movl	$255, %eax	#, iftmp.352
.L502:
	.loc 1 1712 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rdi	# ptr, tmp402
	movl	%eax, %ecx	# iftmp.352,
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -40(%rbp)	# tmp403, code_point
	.loc 1 1716 0 is_stmt 1 discriminator 1
	call	Perl_push_scope	#
	.loc 1 1717 0 discriminator 1
	movl	$PL_tmps_floor, %edi	#,
	call	Perl_save_int	#
	movl	PL_tmps_ix(%rip), %eax	# PL_tmps_ix, PL_tmps_ix.359
	movl	%eax, PL_tmps_floor(%rip)	# PL_tmps_ix.359, PL_tmps_floor
	.loc 1 1718 0 discriminator 1
	call	Perl_save_re_context	#
.LBB27:
	.loc 1 1719 0 discriminator 1
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.360
	movq	40(%rax), %rax	# PL_curstackinfo.360_108->si_next, tmp404
	movq	%rax, -72(%rbp)	# tmp404, next
	cmpq	$0, -72(%rbp)	#, next
	jne	.L503	#,
	movl	$13, %esi	#,
	movl	$32, %edi	#,
	call	Perl_new_stackinfo	#
	movq	%rax, -72(%rbp)	# tmp405, next
	movq	PL_curstackinfo(%rip), %rdx	# PL_curstackinfo, PL_curstackinfo.361
	movq	-72(%rbp), %rax	# next, tmp406
	movq	%rdx, 32(%rax)	# PL_curstackinfo.361, next_110->si_prev
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.362
	movq	-72(%rbp), %rdx	# next, tmp407
	movq	%rdx, 40(%rax)	# tmp407, PL_curstackinfo.362_112->si_next
.L503:
	.loc 1 1719 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# next, tmp408
	movl	$2, 24(%rax)	#, next_10->si_type
	movq	-72(%rbp), %rax	# next, tmp409
	movl	$-1, 16(%rax)	#, next_10->si_cxix
	movq	-72(%rbp), %rax	# next, tmp410
	movq	(%rax), %rax	# next_10->si_stack, D.13552
	movq	(%rax), %rax	# _113->sv_any, D.13553
	movq	$0, 8(%rax)	#, _114->xav_fill
.LBB28:
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.363
	movq	(%rax), %rax	# PL_curstack.363_115->sv_any, D.13553
	movq	%rbx, %rcx	# sp, sp.364
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.365
	subq	%rdx, %rcx	# PL_stack_base.366, D.13554
	movq	%rcx, %rdx	# D.13554, D.13554
	sarq	$3, %rdx	#, tmp411
	movq	%rdx, 8(%rax)	# D.13554, _116->xav_fill
	movq	-72(%rbp), %rax	# next, tmp412
	movq	(%rax), %rax	# next_10->si_stack, D.13552
	movq	(%rax), %rax	# _122->sv_any, D.13553
	movq	(%rax), %rax	# _123->xav_array, PL_stack_base.367
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.367, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.368
	movq	-72(%rbp), %rax	# next, tmp413
	movq	(%rax), %rax	# next_10->si_stack, D.13552
	movq	(%rax), %rax	# _126->sv_any, D.13553
	movq	16(%rax), %rax	# _127->xav_max, D.13554
	salq	$3, %rax	#, D.13548
	addq	%rdx, %rax	# PL_stack_base.368, PL_stack_max.369
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.369, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.370
	movq	-72(%rbp), %rax	# next, tmp414
	movq	(%rax), %rax	# next_10->si_stack, D.13552
	movq	(%rax), %rax	# _133->sv_any, D.13553
	movq	8(%rax), %rax	# _134->xav_fill, D.13554
	salq	$3, %rax	#, D.13548
	addq	%rdx, %rax	# PL_stack_base.370, PL_stack_sp.371
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.371, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-72(%rbp), %rax	# next, tmp415
	movq	(%rax), %rax	# next_10->si_stack, PL_curstack.372
	movq	%rax, PL_curstack(%rip)	# PL_curstack.372, PL_curstack
.LBE28:
	movq	-72(%rbp), %rax	# next, tmp416
	movq	%rax, PL_curstackinfo(%rip)	# tmp416, PL_curstackinfo
.LBE27:
.LBB29:
	.loc 1 1720 0 is_stmt 1 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.373
	addq	$4, %rax	#, PL_markstack_ptr.374
	movq	%rax, PL_markstack_ptr(%rip)	# PL_markstack_ptr.374, PL_markstack_ptr
	movq	PL_markstack_ptr(%rip), %rdx	# PL_markstack_ptr, PL_markstack_ptr.375
	movq	PL_markstack_max(%rip), %rax	# PL_markstack_max, PL_markstack_max.376
	cmpq	%rax, %rdx	# PL_markstack_max.376, PL_markstack_ptr.375
	jne	.L504	#,
	.loc 1 1720 0 is_stmt 0 discriminator 1
	call	Perl_markstack_grow	#
.L504:
	.loc 1 1720 0 discriminator 2
	movq	PL_markstack_ptr(%rip), %rax	# PL_markstack_ptr, PL_markstack_ptr.377
	movq	%rbx, %rcx	# sp, sp.378
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.379
	subq	%rdx, %rcx	# PL_stack_base.380, D.13554
	movq	%rcx, %rdx	# D.13554, D.13554
	sarq	$3, %rdx	#, tmp417
	movl	%edx, (%rax)	# D.13544, *PL_markstack_ptr.377_146
.LBE29:
	.loc 1 1721 0 is_stmt 1 discriminator 2
	movq	PL_stack_max(%rip), %rax	# PL_stack_max, PL_stack_max.381
	movq	%rax, %rdx	# PL_stack_max.381, PL_stack_max.382
	movq	%rbx, %rax	# sp, sp.383
	subq	%rax, %rdx	# sp.383, D.13554
	movq	%rdx, %rax	# D.13554, D.13554
	cmpq	$23, %rax	#, D.13554
	jg	.L505	#,
	.loc 1 1721 0 is_stmt 0 discriminator 1
	movl	$3, %edx	#,
	movq	%rbx, %rsi	# sp,
	movq	%rbx, %rdi	# sp,
	call	Perl_stack_grow	#
	movq	%rax, %rbx	#, sp
.L505:
	.loc 1 1722 0 is_stmt 1
	addq	$8, %rbx	#, sp
	movq	-136(%rbp), %rax	# sv, tmp418
	movq	%rax, (%rbx)	# tmp418, *sp_159
	.loc 1 1724 0
	addq	$8, %rbx	#, sp
	cmpl	$0, -112(%rbp)	#, klen
	je	.L506	#,
	.loc 1 1724 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# needents, tmp419
	negq	%rax	# D.13548
	andq	-40(%rbp), %rax	# code_point, D.13548
	jmp	.L507	#
.L506:
	.loc 1 1724 0 discriminator 2
	movl	$0, %eax	#, iftmp.384
.L507:
	.loc 1 1724 0 discriminator 3
	movq	%rax, %rdi	# iftmp.384,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13549, *sp_160
	.loc 1 1726 0 is_stmt 1 discriminator 3
	addq	$8, %rbx	#, sp
	movq	-96(%rbp), %rax	# needents, needents.385
	movq	%rax, %rdi	# needents.385,
	call	Perl_newSViv	#
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_2mortal	#
	movq	%rax, (%rbx)	# D.13549, *sp_167
	.loc 1 1727 0 discriminator 3
	movq	%rbx, PL_stack_sp(%rip)	# sp, PL_stack_sp
	.loc 1 1728 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.386
	movq	(%rax), %rax	# PL_errgv.386_171->sv_any, D.13556
	movq	56(%rax), %rax	# _172->xgv_gp, D.13557
	movq	(%rax), %rax	# _173->gp_sv, D.13549
	movq	%rax, %rdi	# D.13549,
	call	Perl_newSVsv	#
	movq	%rax, -32(%rbp)	# tmp420, errsv_save
	.loc 1 1729 0 discriminator 3
	movl	$0, %esi	#,
	movl	$.LC49, %edi	#,
	call	Perl_call_method	#
	testl	%eax, %eax	# D.13544
	je	.L508	#,
	.loc 1 1730 0
	movq	PL_stack_sp(%rip), %rax	# PL_stack_sp, PL_stack_sp.387
	leaq	-8(%rax), %rdx	#, PL_stack_sp.389
	movq	%rdx, PL_stack_sp(%rip)	# PL_stack_sp.389, PL_stack_sp
	movq	(%rax), %rax	# *PL_stack_sp.388_178, D.13549
	movq	%rax, %rdi	# D.13549,
	call	Perl_newSVsv	#
	movq	%rax, -80(%rbp)	# tmp421, retval
	jmp	.L509	#
.L508:
	.loc 1 1732 0
	movq	$PL_sv_undef, -80(%rbp)	#, retval
.L509:
	.loc 1 1733 0
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.391
	movq	(%rax), %rax	# PL_errgv.391_183->sv_any, D.13556
	movq	56(%rax), %rax	# _184->xgv_gp, D.13557
	movq	(%rax), %rax	# _185->gp_sv, D.13549
	testq	%rax, %rax	# D.13549
	je	.L510	#,
	.loc 1 1733 0 is_stmt 0 discriminator 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.393
	movq	(%rax), %rax	# PL_errgv.393_187->sv_any, D.13556
	movq	56(%rax), %rax	# _188->xgv_gp, D.13557
	movq	(%rax), %rax	# _189->gp_sv, D.13549
	movl	12(%rax), %eax	# _190->sv_flags, D.13547
	andl	$262144, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L511	#,
	.loc 1 1733 0 discriminator 3
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.395
	movq	(%rax), %rax	# PL_errgv.395_193->sv_any, D.13556
	movq	56(%rax), %rax	# _194->xgv_gp, D.13557
	movq	(%rax), %rax	# _195->gp_sv, D.13549
	movq	(%rax), %rax	# _196->sv_any, PL_Xpv.396
	movq	%rax, PL_Xpv(%rip)	# PL_Xpv.396, PL_Xpv
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.397
	testq	%rax, %rax	# PL_Xpv.397
	je	.L512	#,
	.loc 1 1733 0 discriminator 6
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.398
	movq	8(%rax), %rax	# PL_Xpv.398_199->xpv_cur, D.13548
	cmpq	$1, %rax	#, D.13548
	ja	.L513	#,
	.loc 1 1733 0 discriminator 7
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.399
	movq	8(%rax), %rax	# PL_Xpv.399_201->xpv_cur, D.13548
	testq	%rax, %rax	# D.13548
	je	.L512	#,
	.loc 1 1733 0 discriminator 1
	movq	PL_Xpv(%rip), %rax	# PL_Xpv, PL_Xpv.400
	movq	(%rax), %rax	# PL_Xpv.400_203->xpv_pv, D.13550
	movzbl	(%rax), %eax	# *_204, D.13551
	cmpb	$48, %al	#, D.13551
	jne	.L513	#,
.L512:
	.loc 1 1733 0 discriminator 5
	movl	$1, %eax	#, iftmp.394
	jmp	.L514	#
.L513:
	.loc 1 1733 0 discriminator 8
	movl	$0, %eax	#, iftmp.394
.L514:
	.loc 1 1733 0 discriminator 9
	andl	$1, %eax	#, iftmp.392
	jmp	.L520	#
.L511:
	.loc 1 1733 0 discriminator 4
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.402
	movq	(%rax), %rax	# PL_errgv.402_209->sv_any, D.13556
	movq	56(%rax), %rax	# _210->xgv_gp, D.13557
	movq	(%rax), %rax	# _211->gp_sv, D.13549
	movl	12(%rax), %eax	# _212->sv_flags, D.13547
	andl	$65536, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L516	#,
	.loc 1 1733 0 discriminator 10
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.403
	movq	(%rax), %rax	# PL_errgv.403_215->sv_any, D.13556
	movq	56(%rax), %rax	# _216->xgv_gp, D.13557
	movq	(%rax), %rax	# _217->gp_sv, D.13549
	movq	(%rax), %rax	# _218->sv_any, D.13541
	movq	24(%rax), %rax	# MEM[(struct XPVIV *)_219].xiv_iv, D.13554
	testq	%rax, %rax	# D.13554
	sete	%al	#, iftmp.401
	jmp	.L520	#
.L516:
	.loc 1 1733 0 discriminator 11
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.405
	movq	(%rax), %rax	# PL_errgv.405_222->sv_any, D.13556
	movq	56(%rax), %rax	# _223->xgv_gp, D.13557
	movq	(%rax), %rax	# _224->gp_sv, D.13549
	movl	12(%rax), %eax	# _225->sv_flags, D.13547
	andl	$131072, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L518	#,
	.loc 1 1733 0 discriminator 12
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.406
	movq	(%rax), %rax	# PL_errgv.406_228->sv_any, D.13556
	movq	56(%rax), %rax	# _229->xgv_gp, D.13557
	movq	(%rax), %rax	# _230->gp_sv, D.13549
	movq	(%rax), %rax	# _231->sv_any, D.13541
	movsd	32(%rax), %xmm0	# MEM[(struct XPVNV *)_232].xnv_nv, D.13558
	xorpd	%xmm1, %xmm1	# tmp423
	ucomisd	%xmm1, %xmm0	# tmp423, D.13558
	setnp	%dl	#, tmp422
	movl	$0, %eax	#, tmp425
	xorpd	%xmm1, %xmm1	# tmp424
	ucomisd	%xmm1, %xmm0	# tmp424, D.13558
	cmove	%edx, %eax	# tmp422,, iftmp.404
	jmp	.L520	#
.L518:
	.loc 1 1733 0 discriminator 13
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.407
	movq	(%rax), %rax	# PL_errgv.407_235->sv_any, D.13556
	movq	56(%rax), %rax	# _236->xgv_gp, D.13557
	movq	(%rax), %rax	# _237->gp_sv, D.13549
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_2bool	#
	testb	%al, %al	# D.13551
	sete	%al	#, iftmp.404
	jmp	.L520	#
.L510:
	.loc 1 1733 0 discriminator 2
	movl	$1, %eax	#, iftmp.390
.L520:
	.loc 1 1733 0 discriminator 16
	testb	%al, %al	# iftmp.390
	je	.L521	#,
	.loc 1 1734 0 is_stmt 1
	movq	PL_errgv(%rip), %rax	# PL_errgv, PL_errgv.408
	movq	(%rax), %rax	# PL_errgv.408_245->sv_any, D.13556
	movq	56(%rax), %rax	# _246->xgv_gp, D.13557
	movq	(%rax), %rax	# _247->gp_sv, D.13549
	movq	-32(%rbp), %rcx	# errsv_save, tmp426
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp426,
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_setsv_flags	#
.L521:
	.loc 1 1735 0
	movq	-32(%rbp), %rax	# errsv_save, tmp427
	movq	%rax, %rdi	# tmp427,
	call	Perl_sv_free	#
.LBB30:
	.loc 1 1736 0
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	PL_curstackinfo(%rip), %rax	# PL_curstackinfo, PL_curstackinfo.409
	movq	32(%rax), %rax	# PL_curstackinfo.409_250->si_prev, tmp428
	movq	%rax, -24(%rbp)	# tmp428, prev
	cmpq	$0, -24(%rbp)	#, prev
	jne	.L522	#,
	.loc 1 1736 0 is_stmt 0 discriminator 1
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.411
	testq	%rax, %rax	# PL_stderrgv.411
	je	.L523	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.412
	movl	12(%rax), %eax	# PL_stderrgv.412_253->sv_flags, D.13547
	movzbl	%al, %eax	# D.13547, D.13547
	cmpl	$13, %eax	#, D.13547
	jne	.L523	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.413
	movq	(%rax), %rax	# PL_stderrgv.413_256->sv_any, D.13556
	movq	56(%rax), %rax	# _257->xgv_gp, D.13557
	movq	16(%rax), %rax	# _258->gp_io, D.13559
	testq	%rax, %rax	# D.13559
	je	.L523	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.414
	movq	(%rax), %rax	# PL_stderrgv.414_260->sv_any, D.13556
	movq	56(%rax), %rax	# _261->xgv_gp, D.13557
	movq	16(%rax), %rax	# _262->gp_io, D.13559
	movq	(%rax), %rax	# _263->sv_any, D.13560
	movq	64(%rax), %rax	# _264->xio_ofp, D.13561
	testq	%rax, %rax	# D.13561
	je	.L523	#,
	movq	PL_stderrgv(%rip), %rax	# PL_stderrgv, PL_stderrgv.415
	movq	(%rax), %rax	# PL_stderrgv.415_266->sv_any, D.13556
	movq	56(%rax), %rax	# _267->xgv_gp, D.13557
	movq	16(%rax), %rax	# _268->gp_io, D.13559
	movq	(%rax), %rax	# _269->sv_any, D.13560
	movq	64(%rax), %rax	# _270->xio_ofp, iftmp.410
	jmp	.L524	#
.L523:
	.loc 1 1736 0 discriminator 2
	call	Perl_PerlIO_stderr	#
.L524:
	.loc 1 1736 0 discriminator 3
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# iftmp.410,
	movl	$0, %eax	#,
	call	PerlIO_printf	#
	movl	$1, %edi	#,
	call	Perl_my_exit	#
.L522:
.LBB31:
	.loc 1 1736 0 discriminator 2
	movq	PL_curstack(%rip), %rax	# PL_curstack, PL_curstack.416
	movq	(%rax), %rax	# PL_curstack.416_273->sv_any, D.13553
	movq	%rbx, %rcx	# sp, sp.417
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.418
	subq	%rdx, %rcx	# PL_stack_base.419, D.13554
	movq	%rcx, %rdx	# D.13554, D.13554
	sarq	$3, %rdx	#, tmp429
	movq	%rdx, 8(%rax)	# D.13554, _274->xav_fill
	movq	-24(%rbp), %rax	# prev, tmp430
	movq	(%rax), %rax	# prev_251->si_stack, D.13552
	movq	(%rax), %rax	# _280->sv_any, D.13553
	movq	(%rax), %rax	# _281->xav_array, PL_stack_base.420
	movq	%rax, PL_stack_base(%rip)	# PL_stack_base.420, PL_stack_base
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.421
	movq	-24(%rbp), %rax	# prev, tmp431
	movq	(%rax), %rax	# prev_251->si_stack, D.13552
	movq	(%rax), %rax	# _284->sv_any, D.13553
	movq	16(%rax), %rax	# _285->xav_max, D.13554
	salq	$3, %rax	#, D.13548
	addq	%rdx, %rax	# PL_stack_base.421, PL_stack_max.422
	movq	%rax, PL_stack_max(%rip)	# PL_stack_max.422, PL_stack_max
	movq	PL_stack_base(%rip), %rdx	# PL_stack_base, PL_stack_base.423
	movq	-24(%rbp), %rax	# prev, tmp432
	movq	(%rax), %rax	# prev_251->si_stack, D.13552
	movq	(%rax), %rax	# _291->sv_any, D.13553
	movq	8(%rax), %rax	# _292->xav_fill, D.13554
	salq	$3, %rax	#, D.13548
	addq	%rdx, %rax	# PL_stack_base.423, PL_stack_sp.424
	movq	%rax, PL_stack_sp(%rip)	# PL_stack_sp.424, PL_stack_sp
	movq	PL_stack_sp(%rip), %rbx	# PL_stack_sp, sp
	movq	-24(%rbp), %rax	# prev, tmp433
	movq	(%rax), %rax	# prev_251->si_stack, PL_curstack.425
	movq	%rax, PL_curstack(%rip)	# PL_curstack.425, PL_curstack
.LBE31:
	movq	-24(%rbp), %rax	# prev, tmp434
	movq	%rax, PL_curstackinfo(%rip)	# tmp434, PL_curstackinfo
.LBE30:
	.loc 1 1737 0 is_stmt 1 discriminator 2
	movl	PL_tmps_ix(%rip), %edx	# PL_tmps_ix, PL_tmps_ix.426
	movl	PL_tmps_floor(%rip), %eax	# PL_tmps_floor, PL_tmps_floor.427
	cmpl	%eax, %edx	# PL_tmps_floor.427, PL_tmps_ix.426
	jle	.L525	#,
	.loc 1 1737 0 is_stmt 0 discriminator 1
	call	Perl_free_tmps	#
.L525:
	.loc 1 1738 0 is_stmt 1
	call	Perl_pop_scope	#
	.loc 1 1739 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.428
	cmpq	$PL_compiling, %rax	#, PL_curcop.428
	jne	.L526	#,
	.loc 1 1740 0
	movq	PL_curcop(%rip), %rax	# PL_curcop, PL_curcop.429
	movl	PL_hints(%rip), %edx	# PL_hints, PL_hints.430
	movb	%dl, 37(%rax)	# D.13542, PL_curcop.429_304->op_private
.L526:
	.loc 1 1742 0
	movl	-112(%rbp), %edx	# klen, klen.431
	movq	-80(%rbp), %rcx	# retval, tmp435
	movq	-144(%rbp), %rsi	# ptr, tmp436
	movq	-64(%rbp), %rax	# hv, tmp437
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp437,
	call	Perl_hv_store	#
	movq	%rax, -48(%rbp)	# tmp438, svp
	.loc 1 1744 0
	cmpq	$0, -48(%rbp)	#, svp
	je	.L527	#,
	.loc 1 1744 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# svp, tmp439
	movq	(%rax), %rax	# *svp_308, D.13549
	movl	12(%rax), %eax	# _309->sv_flags, D.13547
	andl	$262144, %eax	#, D.13547
	testl	%eax, %eax	# D.13547
	je	.L528	#,
	movq	-48(%rbp), %rax	# svp, tmp440
	movq	(%rax), %rax	# *svp_308, D.13549
	movq	(%rax), %rax	# _312->sv_any, D.13541
	movq	8(%rax), %rax	# MEM[(struct XPV *)_313].xpv_cur, slen.433
	movq	%rax, -104(%rbp)	# slen.433, slen
	movq	-48(%rbp), %rax	# svp, tmp441
	movq	(%rax), %rax	# *svp_308, D.13549
	movq	(%rax), %rax	# _315->sv_any, D.13541
	movq	(%rax), %rax	# MEM[(struct XPV *)_316].xpv_pv, iftmp.432
	jmp	.L529	#
.L528:
	.loc 1 1744 0 discriminator 2
	movq	-48(%rbp), %rax	# svp, tmp442
	movq	(%rax), %rax	# *svp_308, D.13549
	leaq	-104(%rbp), %rcx	#, tmp443
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp443,
	movq	%rax, %rdi	# D.13549,
	call	Perl_sv_2pv_flags	#
.L529:
	.loc 1 1744 0 discriminator 3
	movq	%rax, -88(%rbp)	# iftmp.432, tmps
	cmpq	$0, -88(%rbp)	#, tmps
	je	.L527	#,
	.loc 1 1744 0 discriminator 1
	movq	-104(%rbp), %rax	# slen, slen.434
	salq	$3, %rax	#, D.13548
	cmpq	-96(%rbp), %rax	# needents, D.13548
	jae	.L498	#,
.L527:
	.loc 1 1745 0 is_stmt 1
	movl	$.LC50, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
.L498:
.LBE26:
	.loc 1 1748 0
	movq	-64(%rbp), %rax	# hv, tmp444
	movq	%rax, PL_last_swash_hv(%rip)	# tmp444, PL_last_swash_hv
	.loc 1 1749 0
	movl	-112(%rbp), %eax	# klen, tmp445
	movl	%eax, PL_last_swash_klen(%rip)	# tmp445, PL_last_swash_klen
	.loc 1 1750 0
	movq	-88(%rbp), %rax	# tmps, tmp446
	movq	%rax, PL_last_swash_tmps(%rip)	# tmp446, PL_last_swash_tmps
	.loc 1 1751 0
	movq	-104(%rbp), %rax	# slen, slen.435
	movq	%rax, PL_last_swash_slen(%rip)	# slen.435, PL_last_swash_slen
	.loc 1 1752 0
	cmpl	$0, -112(%rbp)	#, klen
	je	.L494	#,
	.loc 1 1753 0
	movl	-112(%rbp), %edx	# klen, D.13548
	movq	-144(%rbp), %rax	# ptr, tmp447
	movq	%rax, %rsi	# tmp447,
	movl	$PL_last_swash_key, %edi	#,
	call	memcpy	#
.L494:
.LBE25:
	.loc 1 1756 0
	movq	-104(%rbp), %rax	# slen, slen.436
	salq	$3, %rax	#, D.13548
	movl	$0, %edx	#, tmp449
	divq	-96(%rbp)	# needents
	cmpl	$8, %eax	#, D.13544
	je	.L531	#,
	cmpl	$8, %eax	#, D.13544
	jg	.L532	#,
	cmpl	$1, %eax	#, D.13544
	je	.L533	#,
	jmp	.L530	#
.L532:
	cmpl	$16, %eax	#, D.13544
	je	.L534	#,
	cmpl	$32, %eax	#, D.13544
	je	.L535	#,
	jmp	.L530	#
.L533:
	.loc 1 1758 0
	movl	-116(%rbp), %eax	# off, off.437
	andl	$7, %eax	#, D.13544
	movl	$1, %edx	#, tmp450
	movl	%eax, %ecx	# D.13544, tmp469
	sall	%cl, %edx	# tmp469, D.13544
	movl	%edx, %eax	# D.13544, D.13544
	movl	%eax, -108(%rbp)	# D.13544, bit
	.loc 1 1759 0
	shrl	$3, -116(%rbp)	#, off
	.loc 1 1760 0
	movl	-116(%rbp), %edx	# off, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp451
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_335, D.13542
	movzbl	%al, %eax	# D.13542, D.13547
	andl	-108(%rbp), %eax	# bit, D.13547
	testl	%eax, %eax	# D.13547
	setne	%al	#, D.13563
	movzbl	%al, %eax	# D.13563, D.13540
	jmp	.L537	#
.L531:
	.loc 1 1762 0
	movl	-116(%rbp), %edx	# off, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp452
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_342, D.13542
	movzbl	%al, %eax	# D.13542, D.13540
	jmp	.L537	#
.L534:
	.loc 1 1764 0
	sall	-116(%rbp)	# off
	.loc 1 1765 0
	movl	-116(%rbp), %edx	# off, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp453
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_347, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	sall	$8, %eax	#, D.13544
	movl	%eax, %ecx	# D.13544, D.13544
	movl	-116(%rbp), %eax	# off, tmp454
	addl	$1, %eax	#, D.13547
	movl	%eax, %edx	# D.13547, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp455
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_353, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	addl	%ecx, %eax	# D.13544, D.13544
	cltq
	jmp	.L537	#
.L535:
	.loc 1 1767 0
	sall	$2, -116(%rbp)	#, off
	.loc 1 1768 0
	movl	-116(%rbp), %edx	# off, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp456
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_360, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	sall	$24, %eax	#, D.13544
	movl	%eax, %ecx	# D.13544, D.13544
	movl	-116(%rbp), %eax	# off, tmp457
	addl	$1, %eax	#, D.13547
	movl	%eax, %edx	# D.13547, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp458
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_366, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	sall	$16, %eax	#, D.13544
	addl	%eax, %ecx	# D.13544, D.13544
	movl	-116(%rbp), %eax	# off, tmp459
	addl	$2, %eax	#, D.13547
	movl	%eax, %edx	# D.13547, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp460
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_373, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	sall	$8, %eax	#, D.13544
	addl	%eax, %ecx	# D.13544, D.13544
	movl	-116(%rbp), %eax	# off, tmp461
	addl	$3, %eax	#, D.13547
	movl	%eax, %edx	# D.13547, D.13545
	movq	-88(%rbp), %rax	# tmps, tmp462
	addq	%rdx, %rax	# D.13545, D.13546
	movzbl	(%rax), %eax	# *_380, D.13542
	movzbl	%al, %eax	# D.13542, D.13544
	addl	%ecx, %eax	# D.13544, D.13544
	cltq
	jmp	.L537	#
.L530:
	.loc 1 1770 0
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	Perl_croak	#
	.loc 1 1771 0
	movl	$0, %eax	#, D.13540
.L537:
	.loc 1 1772 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	Perl_swash_fetch, .-Perl_swash_fetch
	.globl	Perl_uvchr_to_utf8
	.type	Perl_uvchr_to_utf8, @function
Perl_uvchr_to_utf8:
.LFB76:
	.loc 1 1798 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# uv, uv
	.loc 1 1799 0
	movq	-16(%rbp), %rcx	# uv, tmp61
	movq	-8(%rbp), %rax	# d, tmp62
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	Perl_uvuni_to_utf8_flags	#
	.loc 1 1800 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	Perl_uvchr_to_utf8, .-Perl_uvchr_to_utf8
	.globl	Perl_uvchr_to_utf8_flags
	.type	Perl_uvchr_to_utf8_flags, @function
Perl_uvchr_to_utf8_flags:
.LFB77:
	.loc 1 1804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# d, d
	movq	%rsi, -16(%rbp)	# uv, uv
	movq	%rdx, -24(%rbp)	# flags, flags
	.loc 1 1805 0
	movq	-24(%rbp), %rdx	# flags, tmp61
	movq	-16(%rbp), %rcx	# uv, tmp62
	movq	-8(%rbp), %rax	# d, tmp63
	movq	%rcx, %rsi	# tmp62,
	movq	%rax, %rdi	# tmp63,
	call	Perl_uvuni_to_utf8_flags	#
	.loc 1 1806 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	Perl_uvchr_to_utf8_flags, .-Perl_uvchr_to_utf8_flags
	.globl	Perl_utf8n_to_uvchr
	.type	Perl_utf8n_to_uvchr, @function
Perl_utf8n_to_uvchr:
.LFB78:
	.loc 1 1825 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	movq	%rsi, -32(%rbp)	# curlen, curlen
	movq	%rdx, -40(%rbp)	# retlen, retlen
	movl	%ecx, -44(%rbp)	# flags, flags
	.loc 1 1826 0
	movl	-44(%rbp), %ecx	# flags, tmp61
	movq	-40(%rbp), %rdx	# retlen, tmp62
	movq	-32(%rbp), %rsi	# curlen, tmp63
	movq	-24(%rbp), %rax	# s, tmp64
	movq	%rax, %rdi	# tmp64,
	call	Perl_utf8n_to_uvuni	#
	movq	%rax, -8(%rbp)	# tmp65, uv
	.loc 1 1827 0
	movq	-8(%rbp), %rax	# uv, D.13571
	.loc 1 1828 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	Perl_utf8n_to_uvchr, .-Perl_utf8n_to_uvchr
	.section	.rodata
.LC52:
	.string	"\\%c"
.LC53:
	.string	"%c"
.LC54:
	.string	"\\x{%lx}"
.LC55:
	.string	"..."
	.text
	.globl	Perl_pv_uni_display
	.type	Perl_pv_uni_display, @function
Perl_pv_uni_display:
.LFB79:
	.loc 1 1849 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# dsv, dsv
	movq	%rsi, -48(%rbp)	# spv, spv
	movq	%rdx, -56(%rbp)	# len, len
	movq	%rcx, -64(%rbp)	# pvlim, pvlim
	movq	%r8, -72(%rbp)	# flags, flags
	.loc 1 1850 0
	movl	$0, -28(%rbp)	#, truncated
	.loc 1 1853 0
	movq	-40(%rbp), %rax	# dsv, tmp73
	movl	$0, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	Perl_sv_setpvn	#
	.loc 1 1854 0
	movq	-48(%rbp), %rax	# spv, tmp74
	movq	%rax, -24(%rbp)	# tmp74, s
	movq	-56(%rbp), %rax	# len, tmp79
	movq	-24(%rbp), %rdx	# s, tmp80
	addq	%rdx, %rax	# tmp80, tmp78
	movq	%rax, -16(%rbp)	# tmp78, e
	jmp	.L545	#
.L562:
.LBB32:
	.loc 1 1859 0
	movb	$0, -30(%rbp)	#, ok
	.loc 1 1861 0
	cmpq	$0, -64(%rbp)	#, pvlim
	je	.L546	#,
	.loc 1 1861 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# dsv, tmp81
	movq	(%rax), %rax	# dsv_7(D)->sv_any, D.13572
	movq	8(%rax), %rax	# MEM[(struct XPV *)_14].xpv_cur, D.13573
	cmpq	-64(%rbp), %rax	# pvlim, D.13573
	jb	.L546	#,
	.loc 1 1862 0 is_stmt 1
	addl	$1, -28(%rbp)	#, truncated
	.loc 1 1863 0
	jmp	.L547	#
.L546:
	.loc 1 1865 0
	movq	-24(%rbp), %rax	# s, tmp82
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	Perl_utf8_to_uvchr	#
	movq	%rax, -8(%rbp)	# tmp83, u
	.loc 1 1866 0
	cmpq	$255, -8(%rbp)	#, u
	ja	.L548	#,
.LBB33:
	.loc 1 1867 0
	movq	-8(%rbp), %rax	# u, tmp84
	movb	%al, -29(%rbp)	# tmp84, c
	.loc 1 1868 0
	cmpb	$0, -30(%rbp)	#, ok
	jne	.L549	#,
	.loc 1 1868 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# flags, tmp85
	andl	$2, %eax	#, D.13573
	testq	%rax, %rax	# D.13573
	je	.L549	#,
	.loc 1 1869 0 is_stmt 1
	movzbl	-29(%rbp), %eax	# c, D.13574
	cmpl	$10, %eax	#, D.13574
	je	.L551	#,
	cmpl	$10, %eax	#, D.13574
	jg	.L552	#,
	cmpl	$7, %eax	#, D.13574
	je	.L553	#,
	cmpl	$9, %eax	#, D.13574
	je	.L554	#,
	.loc 1 1882 0
	jmp	.L558	#
.L552:
	.loc 1 1869 0
	cmpl	$13, %eax	#, D.13574
	je	.L555	#,
	cmpl	$92, %eax	#, D.13574
	je	.L556	#,
	cmpl	$12, %eax	#, D.13574
	je	.L557	#,
	.loc 1 1882 0
	jmp	.L558	#
.L551:
	.loc 1 1871 0
	movb	$110, -30(%rbp)	#, ok
	jmp	.L558	#
.L555:
	.loc 1 1873 0
	movb	$114, -30(%rbp)	#, ok
	jmp	.L558	#
.L554:
	.loc 1 1875 0
	movb	$116, -30(%rbp)	#, ok
	jmp	.L558	#
.L557:
	.loc 1 1877 0
	movb	$102, -30(%rbp)	#, ok
	jmp	.L558	#
.L553:
	.loc 1 1879 0
	movb	$97, -30(%rbp)	#, ok
	jmp	.L558	#
.L556:
	.loc 1 1881 0
	movb	$92, -30(%rbp)	#, ok
	nop
.L558:
	.loc 1 1884 0
	cmpb	$0, -30(%rbp)	#, ok
	je	.L549	#,
	.loc 1 1885 0
	movsbl	-30(%rbp), %edx	# ok, D.13574
	movq	-40(%rbp), %rax	# dsv, tmp86
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L549:
	.loc 1 1889 0
	cmpb	$0, -30(%rbp)	#, ok
	jne	.L548	#,
	.loc 1 1889 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# flags, tmp87
	andl	$1, %eax	#, D.13573
	testq	%rax, %rax	# D.13573
	je	.L548	#,
	cmpb	$32, -29(%rbp)	#, c
	jbe	.L559	#,
	cmpb	$126, -29(%rbp)	#, c
	jbe	.L560	#,
.L559:
	.loc 1 1889 0 discriminator 2
	cmpb	$32, -29(%rbp)	#, c
	jne	.L548	#,
.L560:
	.loc 1 1890 0 is_stmt 1
	movzbl	-29(%rbp), %edx	# c, D.13574
	movq	-40(%rbp), %rax	# dsv, tmp88
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp88,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
	.loc 1 1891 0
	movb	$1, -30(%rbp)	#, ok
.L548:
.LBE33:
	.loc 1 1894 0
	cmpb	$0, -30(%rbp)	#, ok
	jne	.L561	#,
	.loc 1 1895 0
	movq	-8(%rbp), %rdx	# u, tmp89
	movq	-40(%rbp), %rax	# dsv, tmp90
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	Perl_sv_catpvf	#
.L561:
.LBE32:
	.loc 1 1854 0
	movq	-24(%rbp), %rax	# s, tmp91
	movzbl	(%rax), %eax	# MEM[(U8 *)s_2], D.13575
	movzbl	%al, %eax	# D.13575, D.13574
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13575
	movzbl	%al, %eax	# D.13575, D.13576
	addq	%rax, -24(%rbp)	# D.13576, s
.L545:
	.loc 1 1854 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp93
	cmpq	-16(%rbp), %rax	# e, tmp93
	jb	.L562	#,
.L547:
	.loc 1 1897 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, truncated
	je	.L563	#,
	.loc 1 1898 0
	movq	-40(%rbp), %rax	# dsv, tmp94
	movl	$2, %ecx	#,
	movl	$3, %edx	#,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	Perl_sv_catpvn_flags	#
.L563:
	.loc 1 1900 0
	movq	-40(%rbp), %rax	# dsv, tmp95
	movq	(%rax), %rax	# dsv_7(D)->sv_any, D.13572
	movq	(%rax), %rax	# MEM[(struct XPV *)_37].xpv_pv, D.13577
	.loc 1 1901 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	Perl_pv_uni_display, .-Perl_pv_uni_display
	.globl	Perl_sv_uni_display
	.type	Perl_sv_uni_display, @function
Perl_sv_uni_display:
.LFB80:
	.loc 1 1917 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# dsv, dsv
	movq	%rsi, -16(%rbp)	# ssv, ssv
	movq	%rdx, -24(%rbp)	# pvlim, pvlim
	movq	%rcx, -32(%rbp)	# flags, flags
	.loc 1 1918 0
	movq	-16(%rbp), %rax	# ssv, tmp65
	movq	(%rax), %rax	# ssv_1(D)->sv_any, D.13583
	movq	8(%rax), %rdx	# MEM[(struct XPV *)_2].xpv_cur, D.13584
	movq	-16(%rbp), %rax	# ssv, tmp66
	movq	(%rax), %rax	# ssv_1(D)->sv_any, D.13583
	movq	(%rax), %rsi	# MEM[(struct XPV *)_4].xpv_pv, D.13585
	movq	-32(%rbp), %rdi	# flags, tmp67
	movq	-24(%rbp), %rcx	# pvlim, tmp68
	movq	-8(%rbp), %rax	# dsv, tmp69
	movq	%rdi, %r8	# tmp67,
	movq	%rax, %rdi	# tmp69,
	call	Perl_pv_uni_display	#
	.loc 1 1920 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	Perl_sv_uni_display, .-Perl_sv_uni_display
	.globl	Perl_ibcmp_utf8
	.type	Perl_ibcmp_utf8, @function
Perl_ibcmp_utf8:
.LFB81:
	.loc 1 1949 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -152(%rbp)	# s1, s1
	movq	%rsi, -160(%rbp)	# pe1, pe1
	movq	%rdx, %rax	# l1, l1
	movq	%r8, -176(%rbp)	# s2, s2
	movq	%r9, -184(%rbp)	# pe2, pe2
	movq	16(%rbp), %rdx	# l2, l2
	movl	24(%rbp), %esi	# u2, tmp124
	movb	%cl, -164(%rbp)	# tmp122, u1
	movb	%sil, -168(%rbp)	# tmp124, u2
	.loc 1 1949 0
	movq	%fs:40, %rdi	#, tmp154
	movq	%rdi, -56(%rbp)	# tmp154, D.13593
	xorl	%edi, %edi	# tmp154
	.loc 1 1950 0
	movq	-152(%rbp), %r13	# s1, p1
	.loc 1 1951 0
	movq	-176(%rbp), %r12	# s2, p2
	.loc 1 1952 0
	movq	$0, -200(%rbp)	#, %sfp
	movq	$0, -192(%rbp)	#, %sfp
	movl	$0, %ebx	#, q1
	.loc 1 1953 0
	movq	$0, -208(%rbp)	#, %sfp
	movl	$0, %r15d	#, f2
	movl	$0, %r14d	#, q2
	.loc 1 1954 0
	movq	$0, -96(%rbp)	#, n1
	movq	$0, -88(%rbp)	#, n2
	.loc 1 1961 0
	cmpq	$0, -160(%rbp)	#, pe1
	je	.L568	#,
	.loc 1 1962 0
	movq	-160(%rbp), %rcx	# pe1, tmp125
	movq	(%rcx), %rdi	# MEM[(U8 * *)pe1_36(D)], e1
	movq	%rdi, -200(%rbp)	# e1, %sfp
.L568:
	.loc 1 1963 0
	cmpq	$0, -200(%rbp)	#, %sfp
	je	.L569	#,
	.loc 1 1963 0 is_stmt 0 discriminator 1
	testq	%rax, %rax	# l1
	je	.L570	#,
	movq	-200(%rbp), %rsi	# %sfp, e1.438
	movq	-152(%rbp), %rcx	# s1, s1.439
	subq	%rcx, %rsi	# s1.439, D.13587
	movq	%rsi, %rcx	# D.13587, D.13587
	cmpq	%rax, %rcx	# l1, D.13588
	jbe	.L570	#,
.L569:
	.loc 1 1964 0 is_stmt 1
	movq	-152(%rbp), %rcx	# s1, tmp126
	addq	%rcx, %rax	# tmp126, f1
	movq	%rax, -192(%rbp)	# f1, %sfp
.L570:
	.loc 1 1965 0
	cmpq	$0, -184(%rbp)	#, pe2
	je	.L571	#,
	.loc 1 1966 0
	movq	-184(%rbp), %rax	# pe2, tmp127
	movq	(%rax), %rax	# MEM[(U8 * *)pe2_44(D)], e2
	movq	%rax, -208(%rbp)	# e2, %sfp
.L571:
	.loc 1 1967 0
	cmpq	$0, -208(%rbp)	#, %sfp
	je	.L572	#,
	.loc 1 1967 0 is_stmt 0 discriminator 1
	testq	%rdx, %rdx	# l2
	je	.L573	#,
	movq	-208(%rbp), %rcx	# %sfp, e2.440
	movq	-176(%rbp), %rax	# s2, s2.441
	subq	%rax, %rcx	# s2.441, D.13587
	movq	%rcx, %rax	# D.13587, D.13587
	cmpq	%rdx, %rax	# l2, D.13588
	jbe	.L573	#,
.L572:
	.loc 1 1968 0 is_stmt 1
	movq	-176(%rbp), %rax	# s2, tmp128
	leaq	(%rdx,%rax), %r15	#, f2
.L573:
	.loc 1 1970 0
	cmpq	$0, -200(%rbp)	#, %sfp
	jne	.L574	#,
	.loc 1 1970 0 is_stmt 0 discriminator 1
	cmpq	$0, -192(%rbp)	#, %sfp
	je	.L575	#,
.L574:
	.loc 1 1970 0 discriminator 2
	cmpq	$0, -208(%rbp)	#, %sfp
	jne	.L576	#,
	.loc 1 1970 0 discriminator 1
	testq	%r15, %r15	# f2
	je	.L575	#,
.L576:
	.loc 1 1970 0 discriminator 2
	cmpq	$0, -192(%rbp)	#, %sfp
	jne	.L577	#,
	.loc 1 1970 0 discriminator 1
	testq	%r15, %r15	# f2
	jne	.L577	#,
.L575:
	.loc 1 1971 0 is_stmt 1
	movl	$1, %eax	#, D.13586
	jmp	.L610	#
.L577:
	.loc 1 1973 0
	cmpb	$0, -164(%rbp)	#, u1
	je	.L579	#,
	.loc 1 1973 0 is_stmt 0 discriminator 1
	cmpb	$0, -168(%rbp)	#, u2
	jne	.L580	#,
.L579:
	.loc 1 1974 0 is_stmt 1
	movb	$0, -127(%rbp)	#, natbuf
	.loc 1 1976 0
	jmp	.L581	#
.L580:
	jmp	.L581	#
.L603:
	.loc 1 1980 0
	cmpq	$0, -96(%rbp)	#, n1
	jne	.L582	#,
	.loc 1 1981 0
	cmpb	$0, -164(%rbp)	#, u1
	je	.L583	#,
	.loc 1 1982 0
	leaq	-112(%rbp), %rdx	#, tmp129
	leaq	-80(%rbp), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	movq	%r13, %rdi	# p1,
	call	Perl_to_utf8_fold	#
	jmp	.L584	#
.L583:
	.loc 1 1984 0
	movzbl	0(%r13), %eax	# *p1_2, D.13589
	movb	%al, -128(%rbp)	# D.13589, natbuf
	.loc 1 1985 0
	leaq	-112(%rbp), %rdx	#, tmp131
	leaq	-80(%rbp), %rcx	#, tmp132
	leaq	-128(%rbp), %rax	#, tmp133
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	Perl_to_utf8_fold	#
.L584:
	.loc 1 1987 0
	leaq	-80(%rbp), %rbx	#, q1
	.loc 1 1988 0
	movq	-112(%rbp), %rax	# foldlen1, tmp134
	movq	%rax, -96(%rbp)	# tmp134, n1
.L582:
	.loc 1 1990 0
	cmpq	$0, -88(%rbp)	#, n2
	jne	.L585	#,
	.loc 1 1991 0
	cmpb	$0, -168(%rbp)	#, u2
	je	.L586	#,
	.loc 1 1992 0
	leaq	-104(%rbp), %rdx	#, tmp135
	leaq	-64(%rbp), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	movq	%r12, %rdi	# p2,
	call	Perl_to_utf8_fold	#
	jmp	.L587	#
.L586:
	.loc 1 1994 0
	movzbl	(%r12), %eax	# *p2_3, D.13589
	movb	%al, -128(%rbp)	# D.13589, natbuf
	.loc 1 1995 0
	leaq	-104(%rbp), %rdx	#, tmp137
	leaq	-64(%rbp), %rcx	#, tmp138
	leaq	-128(%rbp), %rax	#, tmp139
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	Perl_to_utf8_fold	#
.L587:
	.loc 1 1997 0
	leaq	-64(%rbp), %r14	#, q2
	.loc 1 1998 0
	movq	-104(%rbp), %rax	# foldlen2, tmp140
	movq	%rax, -88(%rbp)	# tmp140, n2
	.loc 1 2000 0
	jmp	.L588	#
.L585:
	jmp	.L588	#
.L593:
	.loc 1 2001 0
	movzbl	(%rbx), %eax	# *q1_7, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %edx	# PL_utf8skip, D.13589
	movzbl	(%r14), %eax	# *q2_12, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	cmpb	%al, %dl	# D.13589, D.13589
	jne	.L589	#,
	.loc 1 2002 0 discriminator 1
	movzbl	(%rbx), %eax	# *q1_7, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	.loc 1 2001 0 discriminator 1
	cmpb	$1, %al	#, D.13589
	jne	.L590	#,
	.loc 1 2002 0
	movzbl	(%rbx), %edx	# *q1_7, D.13589
	movzbl	(%r14), %eax	# *q2_12, D.13589
	cmpb	%al, %dl	# D.13589, D.13589
	jne	.L589	#,
.L590:
	.loc 1 2003 0 discriminator 1
	movzbl	(%rbx), %eax	# *q1_7, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, D.13588
	movq	%rax, %rdx	# D.13588,
	movq	%r14, %rsi	# q2,
	movq	%rbx, %rdi	# q1,
	call	memcmp	#
	.loc 1 2002 0 discriminator 1
	testl	%eax, %eax	# D.13590
	je	.L591	#,
.L589:
	.loc 1 2004 0
	movl	$1, %eax	#, D.13586
	jmp	.L610	#
.L591:
	.loc 1 2005 0
	movzbl	(%rbx), %eax	# *q1_7, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, D.13588
	subq	%rax, -96(%rbp)	# D.13588, n1
	.loc 1 2006 0
	movzbl	(%rbx), %eax	# *q1_7, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, D.13591
	addq	%rax, %rbx	# D.13591, q1
	.loc 1 2007 0
	movzbl	(%r14), %eax	# *q2_12, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, D.13588
	subq	%rax, -88(%rbp)	# D.13588, n2
	.loc 1 2008 0
	movzbl	(%r14), %eax	# *q2_12, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, D.13591
	addq	%rax, %r14	# D.13591, q2
.L588:
	.loc 1 2000 0 discriminator 1
	cmpq	$0, -96(%rbp)	#, n1
	je	.L592	#,
	.loc 1 2000 0 is_stmt 0 discriminator 2
	cmpq	$0, -88(%rbp)	#, n2
	jne	.L593	#,
.L592:
	.loc 1 2010 0 is_stmt 1
	cmpq	$0, -96(%rbp)	#, n1
	jne	.L594	#,
	.loc 1 2011 0
	cmpb	$0, -164(%rbp)	#, u1
	je	.L595	#,
	.loc 1 2011 0 is_stmt 0 discriminator 1
	movzbl	0(%r13), %eax	# *p1_2, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, iftmp.442
	jmp	.L596	#
.L595:
	.loc 1 2011 0 discriminator 2
	movl	$1, %eax	#, iftmp.442
.L596:
	.loc 1 2011 0 discriminator 3
	addq	%rax, %r13	# iftmp.442, p1
.L594:
	.loc 1 2012 0 is_stmt 1
	cmpq	$0, -88(%rbp)	#, n2
	jne	.L581	#,
	.loc 1 2013 0
	cmpb	$0, -168(%rbp)	#, u2
	je	.L597	#,
	.loc 1 2013 0 is_stmt 0 discriminator 1
	movzbl	(%r12), %eax	# *p2_3, D.13589
	movzbl	%al, %eax	# D.13589, D.13590
	cltq
	movzbl	PL_utf8skip(%rax), %eax	# PL_utf8skip, D.13589
	movzbl	%al, %eax	# D.13589, iftmp.443
	jmp	.L598	#
.L597:
	.loc 1 2013 0 discriminator 2
	movl	$1, %eax	#, iftmp.443
.L598:
	.loc 1 2013 0 discriminator 3
	addq	%rax, %r12	# iftmp.443, p2
.L581:
	.loc 1 1976 0 is_stmt 1 discriminator 1
	cmpq	$0, -200(%rbp)	#, %sfp
	je	.L599	#,
	.loc 1 1976 0 is_stmt 0 discriminator 3
	cmpq	-200(%rbp), %r13	# %sfp, p1
	jae	.L600	#,
.L599:
	.loc 1 1976 0 discriminator 2
	cmpq	$0, -192(%rbp)	#, %sfp
	je	.L601	#,
	.loc 1 1977 0 is_stmt 1
	cmpq	-192(%rbp), %r13	# %sfp, p1
	jae	.L600	#,
.L601:
	.loc 1 1977 0 is_stmt 0 discriminator 1
	cmpq	$0, -208(%rbp)	#, %sfp
	je	.L602	#,
	.loc 1 1978 0 is_stmt 1
	cmpq	-208(%rbp), %r12	# %sfp, p2
	jae	.L600	#,
.L602:
	.loc 1 1978 0 is_stmt 0 discriminator 1
	testq	%r15, %r15	# f2
	je	.L603	#,
	.loc 1 1979 0 is_stmt 1
	cmpq	%r15, %r12	# f2, p2
	jb	.L603	#,
.L600:
	.loc 1 2019 0
	cmpq	$0, -192(%rbp)	#, %sfp
	je	.L604	#,
	.loc 1 2019 0 is_stmt 0 discriminator 2
	cmpq	-192(%rbp), %r13	# %sfp, p1
	jne	.L605	#,
.L604:
	.loc 1 2019 0 discriminator 1
	testq	%r15, %r15	# f2
	je	.L606	#,
	.loc 1 2019 0 discriminator 4
	cmpq	%r15, %r12	# f2, p2
	jne	.L605	#,
.L606:
	.loc 1 2019 0 discriminator 3
	movl	$1, %eax	#, iftmp.444
	jmp	.L607	#
.L605:
	.loc 1 2019 0 discriminator 1
	movl	$0, %eax	#, iftmp.444
.L607:
	.loc 1 2019 0 discriminator 5
	movb	%al, -129(%rbp)	# iftmp.444, match
	.loc 1 2021 0 is_stmt 1 discriminator 5
	cmpb	$0, -129(%rbp)	#, match
	je	.L608	#,
	.loc 1 2022 0
	cmpq	$0, -160(%rbp)	#, pe1
	je	.L609	#,
	.loc 1 2023 0
	movq	-160(%rbp), %rax	# pe1, tmp151
	movq	%r13, (%rax)	# p1, *pe1_36(D)
.L609:
	.loc 1 2024 0
	cmpq	$0, -184(%rbp)	#, pe2
	je	.L608	#,
	.loc 1 2025 0
	movq	-184(%rbp), %rax	# pe2, tmp152
	movq	%r12, (%rax)	# p2, *pe2_44(D)
.L608:
	.loc 1 2028 0
	cmpb	$0, -129(%rbp)	#, match
	sete	%al	#, D.13592
	movzbl	%al, %eax	# D.13592, D.13586
.L610:
	.loc 1 2029 0
	movq	-56(%rbp), %rdi	# D.13593, tmp155
	xorq	%fs:40, %rdi	#, tmp155
	je	.L611	#,
	call	__stack_chk_fail	#
.L611:
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	Perl_ibcmp_utf8, .-Perl_ibcmp_utf8
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 5 "/usr/include/dirent.h"
	.file 6 "perl.h"
	.file 7 "op.h"
	.file 8 "cop.h"
	.file 9 "sv.h"
	.file 10 "regexp.h"
	.file 11 "gv.h"
	.file 12 "mg.h"
	.file 13 "av.h"
	.file 14 "hv.h"
	.file 15 "cv.h"
	.file 16 "handy.h"
	.file 17 "perlio.h"
	.file 18 "pad.h"
	.file 19 "utf8.h"
	.file 20 "opcode.h"
	.file 21 "intrpvar.h"
	.file 22 "thrdvar.h"
	.file 23 "opnames.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e75
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF885
	.byte	0x1
	.long	.LASF886
	.long	.LASF887
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
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xb5
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x7f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x6d
	.long	0x6e
	.uleb128 0x5
	.long	.LASF11
	.byte	0x4
	.byte	0xd4
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	0x7f
	.uleb128 0x8
	.long	0x7f
	.long	0xc5
	.uleb128 0x9
	.long	0x65
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.string	"DIR"
	.byte	0x5
	.byte	0x80
	.long	0xd0
	.uleb128 0xb
	.long	.LASF197
	.uleb128 0xc
	.string	"IV"
	.byte	0x6
	.value	0x52b
	.long	0x5e
	.uleb128 0xc
	.string	"UV"
	.byte	0x6
	.value	0x52c
	.long	0x42
	.uleb128 0xc
	.string	"NV"
	.byte	0x6
	.value	0x5f3
	.long	0xf6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF14
	.uleb128 0xd
	.long	.LASF15
	.byte	0x6
	.value	0x7d3
	.long	0x91
	.uleb128 0xc
	.string	"OP"
	.byte	0x6
	.value	0x7d5
	.long	0x114
	.uleb128 0xe
	.string	"op"
	.byte	0x28
	.byte	0x7
	.byte	0xe2
	.long	0x180
	.uleb128 0xf
	.long	.LASF16
	.byte	0x7
	.byte	0xe3
	.long	0xf64
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x7
	.byte	0xe3
	.long	0xf64
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x7
	.byte	0xe3
	.long	0x1967
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x7
	.byte	0xe3
	.long	0xfdd
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x7
	.byte	0xe3
	.long	0xdd6
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.byte	0xe3
	.long	0xdd6
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.byte	0xe3
	.long	0xdcc
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x7
	.byte	0xe3
	.long	0xdcc
	.byte	0x25
	.byte	0
	.uleb128 0xc
	.string	"COP"
	.byte	0x6
	.value	0x7d6
	.long	0x18c
	.uleb128 0xe
	.string	"cop"
	.byte	0x60
	.byte	0x8
	.byte	0x10
	.long	0x259
	.uleb128 0xf
	.long	.LASF16
	.byte	0x8
	.byte	0x11
	.long	0xf64
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x8
	.byte	0x11
	.long	0xf64
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x8
	.byte	0x11
	.long	0x1967
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x8
	.byte	0x11
	.long	0xfdd
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x8
	.byte	0x11
	.long	0xdd6
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x8
	.byte	0x11
	.long	0xdd6
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x8
	.byte	0x11
	.long	0xdcc
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x8
	.byte	0x11
	.long	0xdcc
	.byte	0x25
	.uleb128 0xf
	.long	.LASF24
	.byte	0x8
	.byte	0x12
	.long	0x79
	.byte	0x28
	.uleb128 0xf
	.long	.LASF25
	.byte	0x8
	.byte	0x17
	.long	0xf4c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF26
	.byte	0x8
	.byte	0x18
	.long	0xf81
	.byte	0x38
	.uleb128 0xf
	.long	.LASF27
	.byte	0x8
	.byte	0x1a
	.long	0xdec
	.byte	0x40
	.uleb128 0xf
	.long	.LASF28
	.byte	0x8
	.byte	0x1b
	.long	0xde1
	.byte	0x44
	.uleb128 0xf
	.long	.LASF29
	.byte	0x8
	.byte	0x1c
	.long	0xdf7
	.byte	0x48
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.byte	0x1d
	.long	0xe14
	.byte	0x50
	.uleb128 0xf
	.long	.LASF31
	.byte	0x8
	.byte	0x1e
	.long	0xe14
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x6
	.value	0x7db
	.long	0x265
	.uleb128 0x10
	.long	.LASF33
	.byte	0x70
	.byte	0x7
	.byte	0xfd
	.long	0x353
	.uleb128 0xf
	.long	.LASF16
	.byte	0x7
	.byte	0xfe
	.long	0xf64
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x7
	.byte	0xfe
	.long	0xf64
	.byte	0x8
	.uleb128 0xf
	.long	.LASF18
	.byte	0x7
	.byte	0xfe
	.long	0x1967
	.byte	0x10
	.uleb128 0xf
	.long	.LASF19
	.byte	0x7
	.byte	0xfe
	.long	0xfdd
	.byte	0x18
	.uleb128 0xf
	.long	.LASF20
	.byte	0x7
	.byte	0xfe
	.long	0xdd6
	.byte	0x20
	.uleb128 0xf
	.long	.LASF21
	.byte	0x7
	.byte	0xfe
	.long	0xdd6
	.byte	0x22
	.uleb128 0xf
	.long	.LASF22
	.byte	0x7
	.byte	0xfe
	.long	0xdcc
	.byte	0x24
	.uleb128 0xf
	.long	.LASF23
	.byte	0x7
	.byte	0xfe
	.long	0xdcc
	.byte	0x25
	.uleb128 0xf
	.long	.LASF34
	.byte	0x7
	.byte	0xff
	.long	0xf64
	.byte	0x28
	.uleb128 0x11
	.long	.LASF35
	.byte	0x7
	.value	0x100
	.long	0xf64
	.byte	0x30
	.uleb128 0x11
	.long	.LASF36
	.byte	0x7
	.value	0x101
	.long	0xf64
	.byte	0x38
	.uleb128 0x11
	.long	.LASF37
	.byte	0x7
	.value	0x102
	.long	0xf64
	.byte	0x40
	.uleb128 0x11
	.long	.LASF38
	.byte	0x7
	.value	0x103
	.long	0x196d
	.byte	0x48
	.uleb128 0x11
	.long	.LASF39
	.byte	0x7
	.value	0x107
	.long	0x1973
	.byte	0x50
	.uleb128 0x11
	.long	.LASF40
	.byte	0x7
	.value	0x109
	.long	0xdec
	.byte	0x58
	.uleb128 0x11
	.long	.LASF41
	.byte	0x7
	.value	0x10a
	.long	0xdec
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF42
	.byte	0x7
	.value	0x10b
	.long	0xdcc
	.byte	0x60
	.uleb128 0x11
	.long	.LASF43
	.byte	0x7
	.value	0x10f
	.long	0xf4c
	.byte	0x68
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.value	0x7e1
	.long	0x35f
	.uleb128 0x12
	.long	.LASF45
	.byte	0x1
	.byte	0x6
	.value	0xea7
	.long	0x37a
	.uleb128 0x11
	.long	.LASF46
	.byte	0x6
	.value	0xea8
	.long	0x7f
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"SV"
	.byte	0x6
	.value	0x7ea
	.long	0x385
	.uleb128 0xe
	.string	"sv"
	.byte	0x10
	.byte	0x9
	.byte	0x43
	.long	0x3b5
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x44
	.long	0x6c
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x45
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x46
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"AV"
	.byte	0x6
	.value	0x7eb
	.long	0x3c0
	.uleb128 0xe
	.string	"av"
	.byte	0x10
	.byte	0x9
	.byte	0x55
	.long	0x3f0
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x56
	.long	0xf34
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x57
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x58
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"HV"
	.byte	0x6
	.value	0x7ec
	.long	0x3fb
	.uleb128 0xe
	.string	"hv"
	.byte	0x10
	.byte	0x9
	.byte	0x5b
	.long	0x42b
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x5c
	.long	0xf3a
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x5d
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x5e
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.string	"CV"
	.byte	0x6
	.value	0x7ed
	.long	0x436
	.uleb128 0xe
	.string	"cv"
	.byte	0x10
	.byte	0x9
	.byte	0x4f
	.long	0x466
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x50
	.long	0xf2e
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x51
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x52
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x6
	.value	0x7ee
	.long	0x472
	.uleb128 0x10
	.long	.LASF51
	.byte	0x68
	.byte	0xa
	.byte	0x1f
	.long	0x54b
	.uleb128 0xf
	.long	.LASF52
	.byte	0xa
	.byte	0x20
	.long	0xe87
	.byte	0
	.uleb128 0xf
	.long	.LASF53
	.byte	0xa
	.byte	0x21
	.long	0xe87
	.byte	0x8
	.uleb128 0xf
	.long	.LASF54
	.byte	0xa
	.byte	0x22
	.long	0xe8d
	.byte	0x10
	.uleb128 0xf
	.long	.LASF55
	.byte	0xa
	.byte	0x23
	.long	0xe98
	.byte	0x18
	.uleb128 0xf
	.long	.LASF56
	.byte	0xa
	.byte	0x24
	.long	0x79
	.byte	0x20
	.uleb128 0xf
	.long	.LASF57
	.byte	0xa
	.byte	0x25
	.long	0xea3
	.byte	0x28
	.uleb128 0xf
	.long	.LASF58
	.byte	0xa
	.byte	0x26
	.long	0x79
	.byte	0x30
	.uleb128 0xf
	.long	.LASF59
	.byte	0xa
	.byte	0x28
	.long	0xea9
	.byte	0x38
	.uleb128 0xf
	.long	.LASF60
	.byte	0xa
	.byte	0x29
	.long	0xde1
	.byte	0x40
	.uleb128 0xf
	.long	.LASF61
	.byte	0xa
	.byte	0x2a
	.long	0xde1
	.byte	0x44
	.uleb128 0xf
	.long	.LASF62
	.byte	0xa
	.byte	0x2b
	.long	0xde1
	.byte	0x48
	.uleb128 0xf
	.long	.LASF63
	.byte	0xa
	.byte	0x2c
	.long	0xde1
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF64
	.byte	0xa
	.byte	0x2d
	.long	0xdec
	.byte	0x50
	.uleb128 0xf
	.long	.LASF65
	.byte	0xa
	.byte	0x2e
	.long	0xdec
	.byte	0x54
	.uleb128 0xf
	.long	.LASF66
	.byte	0xa
	.byte	0x2f
	.long	0xdec
	.byte	0x58
	.uleb128 0xf
	.long	.LASF67
	.byte	0xa
	.byte	0x30
	.long	0xdec
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF68
	.byte	0xa
	.byte	0x32
	.long	0xeaf
	.byte	0x60
	.byte	0
	.uleb128 0xc
	.string	"GP"
	.byte	0x6
	.value	0x7ef
	.long	0x556
	.uleb128 0xe
	.string	"gp"
	.byte	0x58
	.byte	0xb
	.byte	0xb
	.long	0x5f2
	.uleb128 0xf
	.long	.LASF69
	.byte	0xb
	.byte	0xc
	.long	0xe14
	.byte	0
	.uleb128 0xf
	.long	.LASF70
	.byte	0xb
	.byte	0xd
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF71
	.byte	0xb
	.byte	0xe
	.long	0xfc1
	.byte	0x10
	.uleb128 0xf
	.long	.LASF72
	.byte	0xb
	.byte	0xf
	.long	0xf75
	.byte	0x18
	.uleb128 0xf
	.long	.LASF73
	.byte	0xb
	.byte	0x10
	.long	0xf87
	.byte	0x20
	.uleb128 0xf
	.long	.LASF74
	.byte	0xb
	.byte	0x11
	.long	0xf4c
	.byte	0x28
	.uleb128 0xf
	.long	.LASF75
	.byte	0xb
	.byte	0x12
	.long	0xf81
	.byte	0x30
	.uleb128 0xf
	.long	.LASF76
	.byte	0xb
	.byte	0x13
	.long	0xf75
	.byte	0x38
	.uleb128 0xf
	.long	.LASF77
	.byte	0xb
	.byte	0x14
	.long	0xdec
	.byte	0x40
	.uleb128 0xf
	.long	.LASF78
	.byte	0xb
	.byte	0x15
	.long	0xdec
	.byte	0x44
	.uleb128 0xf
	.long	.LASF79
	.byte	0xb
	.byte	0x16
	.long	0xdf7
	.byte	0x48
	.uleb128 0xf
	.long	.LASF80
	.byte	0xb
	.byte	0x17
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xc
	.string	"GV"
	.byte	0x6
	.value	0x7f0
	.long	0x5fd
	.uleb128 0xe
	.string	"gv"
	.byte	0x10
	.byte	0x9
	.byte	0x49
	.long	0x62d
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x4a
	.long	0xf28
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x4b
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x4c
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.string	"io"
	.byte	0x10
	.byte	0x9
	.byte	0x61
	.long	0x65d
	.uleb128 0xf
	.long	.LASF47
	.byte	0x9
	.byte	0x62
	.long	0xf40
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x9
	.byte	0x63
	.long	0xdec
	.byte	0x8
	.uleb128 0xf
	.long	.LASF49
	.byte	0x9
	.byte	0x64
	.long	0xdec
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF81
	.byte	0x6
	.value	0x7f2
	.long	0x669
	.uleb128 0x12
	.long	.LASF82
	.byte	0x90
	.byte	0x8
	.value	0x1a2
	.long	0x691
	.uleb128 0x11
	.long	.LASF83
	.byte	0x8
	.value	0x1a3
	.long	0xdec
	.byte	0
	.uleb128 0x11
	.long	.LASF84
	.byte	0x8
	.value	0x1a7
	.long	0x1bda
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF85
	.byte	0x88
	.byte	0x8
	.value	0x130
	.long	0x707
	.uleb128 0x11
	.long	.LASF86
	.byte	0x8
	.value	0x131
	.long	0xde1
	.byte	0
	.uleb128 0x11
	.long	.LASF87
	.byte	0x8
	.value	0x132
	.long	0x1b10
	.byte	0x8
	.uleb128 0x11
	.long	.LASF88
	.byte	0x8
	.value	0x133
	.long	0xde1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF89
	.byte	0x8
	.value	0x134
	.long	0xde1
	.byte	0x14
	.uleb128 0x11
	.long	.LASF90
	.byte	0x8
	.value	0x135
	.long	0xde1
	.byte	0x18
	.uleb128 0x11
	.long	.LASF91
	.byte	0x8
	.value	0x136
	.long	0x196d
	.byte	0x20
	.uleb128 0x11
	.long	.LASF92
	.byte	0x8
	.value	0x137
	.long	0xdcc
	.byte	0x28
	.uleb128 0x11
	.long	.LASF93
	.byte	0x8
	.value	0x13d
	.long	0x1ae2
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF94
	.byte	0x6
	.value	0x7f5
	.long	0x713
	.uleb128 0x10
	.long	.LASF95
	.byte	0x30
	.byte	0xc
	.byte	0x1a
	.long	0x780
	.uleb128 0xf
	.long	.LASF96
	.byte	0xc
	.byte	0x1b
	.long	0xf46
	.byte	0
	.uleb128 0xf
	.long	.LASF97
	.byte	0xc
	.byte	0x1c
	.long	0x1d89
	.byte	0x8
	.uleb128 0xf
	.long	.LASF98
	.byte	0xc
	.byte	0x1d
	.long	0xdd6
	.byte	0x10
	.uleb128 0xf
	.long	.LASF99
	.byte	0xc
	.byte	0x1e
	.long	0x7f
	.byte	0x12
	.uleb128 0xf
	.long	.LASF100
	.byte	0xc
	.byte	0x1f
	.long	0xdcc
	.byte	0x13
	.uleb128 0xf
	.long	.LASF101
	.byte	0xc
	.byte	0x20
	.long	0xe14
	.byte	0x18
	.uleb128 0xf
	.long	.LASF102
	.byte	0xc
	.byte	0x21
	.long	0x79
	.byte	0x20
	.uleb128 0xf
	.long	.LASF103
	.byte	0xc
	.byte	0x22
	.long	0xde1
	.byte	0x28
	.byte	0
	.uleb128 0xc
	.string	"XRV"
	.byte	0x6
	.value	0x7f6
	.long	0x78c
	.uleb128 0xe
	.string	"xrv"
	.byte	0x8
	.byte	0x9
	.byte	0xf5
	.long	0x7a5
	.uleb128 0xf
	.long	.LASF104
	.byte	0x9
	.byte	0xf6
	.long	0xe14
	.byte	0
	.byte	0
	.uleb128 0xc
	.string	"XPV"
	.byte	0x6
	.value	0x7f7
	.long	0x7b1
	.uleb128 0xe
	.string	"xpv"
	.byte	0x18
	.byte	0x9
	.byte	0xf9
	.long	0x7e2
	.uleb128 0xf
	.long	.LASF105
	.byte	0x9
	.byte	0xfa
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0x9
	.byte	0xfb
	.long	0xfd
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0x9
	.byte	0xfc
	.long	0xfd
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF108
	.byte	0x6
	.value	0x7f8
	.long	0x7ee
	.uleb128 0x10
	.long	.LASF109
	.byte	0x20
	.byte	0x9
	.byte	0xff
	.long	0x82f
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.value	0x100
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0x9
	.value	0x101
	.long	0xfd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x9
	.value	0x102
	.long	0xfd
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x103
	.long	0xd5
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	.LASF111
	.byte	0x6
	.value	0x7fa
	.long	0x83b
	.uleb128 0x12
	.long	.LASF112
	.byte	0x28
	.byte	0x9
	.value	0x10d
	.long	0x88a
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.value	0x10e
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0x9
	.value	0x10f
	.long	0xfd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x9
	.value	0x110
	.long	0xfd
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x111
	.long	0xd5
	.byte	0x18
	.uleb128 0x11
	.long	.LASF113
	.byte	0x9
	.value	0x112
	.long	0xeb
	.byte	0x20
	.byte	0
	.uleb128 0xd
	.long	.LASF114
	.byte	0x6
	.value	0x7fd
	.long	0x896
	.uleb128 0x10
	.long	.LASF115
	.byte	0x50
	.byte	0xd
	.byte	0xb
	.long	0x91b
	.uleb128 0xf
	.long	.LASF116
	.byte	0xd
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF117
	.byte	0xd
	.byte	0xd
	.long	0x86
	.byte	0x8
	.uleb128 0xf
	.long	.LASF118
	.byte	0xd
	.byte	0xe
	.long	0x86
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0xd
	.byte	0xf
	.long	0xd5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0xd
	.byte	0x10
	.long	0xeb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF120
	.byte	0xd
	.byte	0x11
	.long	0xf46
	.byte	0x28
	.uleb128 0xf
	.long	.LASF121
	.byte	0xd
	.byte	0x12
	.long	0xf4c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF122
	.byte	0xd
	.byte	0x14
	.long	0x1adc
	.byte	0x38
	.uleb128 0xf
	.long	.LASF123
	.byte	0xd
	.byte	0x15
	.long	0xe14
	.byte	0x40
	.uleb128 0xf
	.long	.LASF124
	.byte	0xd
	.byte	0x16
	.long	0xdcc
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.long	.LASF125
	.byte	0x6
	.value	0x7fe
	.long	0x927
	.uleb128 0x10
	.long	.LASF126
	.byte	0x58
	.byte	0xe
	.byte	0x22
	.long	0x9b8
	.uleb128 0xf
	.long	.LASF127
	.byte	0xe
	.byte	0x23
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF128
	.byte	0xe
	.byte	0x24
	.long	0xfd
	.byte	0x8
	.uleb128 0xf
	.long	.LASF129
	.byte	0xe
	.byte	0x25
	.long	0xfd
	.byte	0x10
	.uleb128 0xf
	.long	.LASF130
	.byte	0xe
	.byte	0x26
	.long	0xd5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0xe
	.byte	0x27
	.long	0xeb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF120
	.byte	0xe
	.byte	0x29
	.long	0xf46
	.byte	0x28
	.uleb128 0xf
	.long	.LASF121
	.byte	0xe
	.byte	0x2a
	.long	0xf4c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF131
	.byte	0xe
	.byte	0x2c
	.long	0xde1
	.byte	0x38
	.uleb128 0xf
	.long	.LASF132
	.byte	0xe
	.byte	0x2d
	.long	0x1d00
	.byte	0x40
	.uleb128 0xf
	.long	.LASF133
	.byte	0xe
	.byte	0x2e
	.long	0x196d
	.byte	0x48
	.uleb128 0xf
	.long	.LASF134
	.byte	0xe
	.byte	0x2f
	.long	0x79
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.long	.LASF135
	.byte	0x6
	.value	0x7ff
	.long	0x9c4
	.uleb128 0x12
	.long	.LASF136
	.byte	0x60
	.byte	0x9
	.value	0x130
	.long	0xa6e
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.value	0x131
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0x9
	.value	0x132
	.long	0xfd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x9
	.value	0x133
	.long	0xfd
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x134
	.long	0xd5
	.byte	0x18
	.uleb128 0x11
	.long	.LASF113
	.byte	0x9
	.value	0x135
	.long	0xeb
	.byte	0x20
	.uleb128 0x11
	.long	.LASF120
	.byte	0x9
	.value	0x136
	.long	0xf46
	.byte	0x28
	.uleb128 0x11
	.long	.LASF121
	.byte	0x9
	.value	0x137
	.long	0xf4c
	.byte	0x30
	.uleb128 0x11
	.long	.LASF137
	.byte	0x9
	.value	0x139
	.long	0xf52
	.byte	0x38
	.uleb128 0x11
	.long	.LASF138
	.byte	0x9
	.value	0x13a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF139
	.byte	0x9
	.value	0x13b
	.long	0xfd
	.byte	0x48
	.uleb128 0x11
	.long	.LASF140
	.byte	0x9
	.value	0x13c
	.long	0xf4c
	.byte	0x50
	.uleb128 0x11
	.long	.LASF141
	.byte	0x9
	.value	0x13d
	.long	0xdcc
	.byte	0x58
	.byte	0
	.uleb128 0xd
	.long	.LASF142
	.byte	0x6
	.value	0x800
	.long	0xa7a
	.uleb128 0x10
	.long	.LASF143
	.byte	0x90
	.byte	0xf
	.byte	0xe
	.long	0xb6b
	.uleb128 0xf
	.long	.LASF105
	.byte	0xf
	.byte	0xf
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF106
	.byte	0xf
	.byte	0x10
	.long	0xfd
	.byte	0x8
	.uleb128 0xf
	.long	.LASF107
	.byte	0xf
	.byte	0x11
	.long	0xfd
	.byte	0x10
	.uleb128 0xf
	.long	.LASF119
	.byte	0xf
	.byte	0x12
	.long	0xd5
	.byte	0x18
	.uleb128 0xf
	.long	.LASF113
	.byte	0xf
	.byte	0x13
	.long	0xeb
	.byte	0x20
	.uleb128 0xf
	.long	.LASF120
	.byte	0xf
	.byte	0x14
	.long	0xf46
	.byte	0x28
	.uleb128 0xf
	.long	.LASF121
	.byte	0xf
	.byte	0x15
	.long	0xf4c
	.byte	0x30
	.uleb128 0xf
	.long	.LASF144
	.byte	0xf
	.byte	0x17
	.long	0xf4c
	.byte	0x38
	.uleb128 0xf
	.long	.LASF145
	.byte	0xf
	.byte	0x18
	.long	0xf64
	.byte	0x40
	.uleb128 0xf
	.long	.LASF146
	.byte	0xf
	.byte	0x19
	.long	0xf64
	.byte	0x48
	.uleb128 0xf
	.long	.LASF147
	.byte	0xf
	.byte	0x1a
	.long	0xf7b
	.byte	0x50
	.uleb128 0xf
	.long	.LASF148
	.byte	0xf
	.byte	0x1b
	.long	0xd1d
	.byte	0x58
	.uleb128 0xf
	.long	.LASF149
	.byte	0xf
	.byte	0x1c
	.long	0xf81
	.byte	0x60
	.uleb128 0xf
	.long	.LASF150
	.byte	0xf
	.byte	0x1d
	.long	0x79
	.byte	0x68
	.uleb128 0xf
	.long	.LASF151
	.byte	0xf
	.byte	0x1e
	.long	0x5e
	.byte	0x70
	.uleb128 0xf
	.long	.LASF152
	.byte	0xf
	.byte	0x1f
	.long	0xfe8
	.byte	0x78
	.uleb128 0xf
	.long	.LASF153
	.byte	0xf
	.byte	0x20
	.long	0xf75
	.byte	0x80
	.uleb128 0xf
	.long	.LASF154
	.byte	0xf
	.byte	0x25
	.long	0xf58
	.byte	0x88
	.uleb128 0xf
	.long	.LASF155
	.byte	0xf
	.byte	0x26
	.long	0xdec
	.byte	0x8c
	.byte	0
	.uleb128 0xd
	.long	.LASF156
	.byte	0x6
	.value	0x803
	.long	0xb77
	.uleb128 0x12
	.long	.LASF157
	.byte	0xa8
	.byte	0x9
	.value	0x170
	.long	0xcb0
	.uleb128 0x11
	.long	.LASF105
	.byte	0x9
	.value	0x171
	.long	0x79
	.byte	0
	.uleb128 0x11
	.long	.LASF106
	.byte	0x9
	.value	0x172
	.long	0xfd
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x9
	.value	0x173
	.long	0xfd
	.byte	0x10
	.uleb128 0x11
	.long	.LASF110
	.byte	0x9
	.value	0x174
	.long	0xd5
	.byte	0x18
	.uleb128 0x11
	.long	.LASF113
	.byte	0x9
	.value	0x175
	.long	0xeb
	.byte	0x20
	.uleb128 0x11
	.long	.LASF120
	.byte	0x9
	.value	0x176
	.long	0xf46
	.byte	0x28
	.uleb128 0x11
	.long	.LASF121
	.byte	0x9
	.value	0x177
	.long	0xf4c
	.byte	0x30
	.uleb128 0x11
	.long	.LASF158
	.byte	0x9
	.value	0x179
	.long	0xfb5
	.byte	0x38
	.uleb128 0x11
	.long	.LASF159
	.byte	0x9
	.value	0x17a
	.long	0xfb5
	.byte	0x40
	.uleb128 0x11
	.long	.LASF160
	.byte	0x9
	.value	0x187
	.long	0xf8d
	.byte	0x48
	.uleb128 0x11
	.long	.LASF161
	.byte	0x9
	.value	0x188
	.long	0xd5
	.byte	0x50
	.uleb128 0x11
	.long	.LASF162
	.byte	0x9
	.value	0x189
	.long	0xd5
	.byte	0x58
	.uleb128 0x11
	.long	.LASF163
	.byte	0x9
	.value	0x18a
	.long	0xd5
	.byte	0x60
	.uleb128 0x11
	.long	.LASF164
	.byte	0x9
	.value	0x18b
	.long	0xd5
	.byte	0x68
	.uleb128 0x11
	.long	.LASF165
	.byte	0x9
	.value	0x18c
	.long	0x79
	.byte	0x70
	.uleb128 0x11
	.long	.LASF166
	.byte	0x9
	.value	0x18d
	.long	0xf81
	.byte	0x78
	.uleb128 0x11
	.long	.LASF167
	.byte	0x9
	.value	0x18e
	.long	0x79
	.byte	0x80
	.uleb128 0x11
	.long	.LASF168
	.byte	0x9
	.value	0x18f
	.long	0xf81
	.byte	0x88
	.uleb128 0x11
	.long	.LASF169
	.byte	0x9
	.value	0x190
	.long	0x79
	.byte	0x90
	.uleb128 0x11
	.long	.LASF170
	.byte	0x9
	.value	0x191
	.long	0xf81
	.byte	0x98
	.uleb128 0x11
	.long	.LASF171
	.byte	0x9
	.value	0x192
	.long	0x50
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF172
	.byte	0x9
	.value	0x193
	.long	0x7f
	.byte	0xa2
	.uleb128 0x11
	.long	.LASF173
	.byte	0x9
	.value	0x194
	.long	0x7f
	.byte	0xa3
	.byte	0
	.uleb128 0xd
	.long	.LASF174
	.byte	0x6
	.value	0x804
	.long	0xcbc
	.uleb128 0x10
	.long	.LASF175
	.byte	0x38
	.byte	0xc
	.byte	0xe
	.long	0xd1d
	.uleb128 0xf
	.long	.LASF176
	.byte	0xc
	.byte	0xf
	.long	0x1d20
	.byte	0
	.uleb128 0xf
	.long	.LASF177
	.byte	0xc
	.byte	0x10
	.long	0x1d20
	.byte	0x8
	.uleb128 0xf
	.long	.LASF178
	.byte	0xc
	.byte	0x11
	.long	0x1d3a
	.byte	0x10
	.uleb128 0xf
	.long	.LASF179
	.byte	0xc
	.byte	0x12
	.long	0x1d20
	.byte	0x18
	.uleb128 0xf
	.long	.LASF180
	.byte	0xc
	.byte	0x13
	.long	0x1d20
	.byte	0x20
	.uleb128 0xf
	.long	.LASF181
	.byte	0xc
	.byte	0x14
	.long	0x1d63
	.byte	0x28
	.uleb128 0xf
	.long	.LASF182
	.byte	0xc
	.byte	0x16
	.long	0x1d83
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.string	"ANY"
	.byte	0x6
	.value	0x805
	.long	0xd29
	.uleb128 0x13
	.string	"any"
	.byte	0x8
	.byte	0x6
	.value	0x9f1
	.long	0xd8b
	.uleb128 0x14
	.long	.LASF183
	.byte	0x6
	.value	0x9f2
	.long	0x6c
	.uleb128 0x14
	.long	.LASF184
	.byte	0x6
	.value	0x9f3
	.long	0xde1
	.uleb128 0x14
	.long	.LASF185
	.byte	0x6
	.value	0x9f4
	.long	0xd5
	.uleb128 0x14
	.long	.LASF186
	.byte	0x6
	.value	0x9f5
	.long	0x5e
	.uleb128 0x14
	.long	.LASF187
	.byte	0x6
	.value	0x9f6
	.long	0x7f
	.uleb128 0x14
	.long	.LASF188
	.byte	0x6
	.value	0x9f7
	.long	0xe0e
	.uleb128 0x14
	.long	.LASF189
	.byte	0x6
	.value	0x9f8
	.long	0xe0e
	.byte	0
	.uleb128 0xd
	.long	.LASF190
	.byte	0x6
	.value	0x808
	.long	0xd97
	.uleb128 0x12
	.long	.LASF191
	.byte	0x18
	.byte	0x9
	.value	0x4ed
	.long	0xdcc
	.uleb128 0x11
	.long	.LASF192
	.byte	0x9
	.value	0x4ee
	.long	0xf87
	.byte	0
	.uleb128 0x11
	.long	.LASF193
	.byte	0x9
	.value	0x4ef
	.long	0xe0
	.byte	0x8
	.uleb128 0x11
	.long	.LASF194
	.byte	0x9
	.value	0x4f0
	.long	0xfbb
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"U8"
	.byte	0x10
	.byte	0x85
	.long	0x2d
	.uleb128 0xa
	.string	"U16"
	.byte	0x10
	.byte	0x87
	.long	0x34
	.uleb128 0xa
	.string	"I32"
	.byte	0x10
	.byte	0x88
	.long	0x57
	.uleb128 0xa
	.string	"U32"
	.byte	0x10
	.byte	0x89
	.long	0x3b
	.uleb128 0xd
	.long	.LASF195
	.byte	0x10
	.value	0x209
	.long	0xdec
	.uleb128 0x15
	.long	0xe0e
	.uleb128 0x16
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe03
	.uleb128 0x6
	.byte	0x8
	.long	0x37a
	.uleb128 0x8
	.long	0x7f
	.long	0xe2a
	.uleb128 0x9
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF196
	.byte	0x11
	.byte	0x63
	.long	0xe35
	.uleb128 0xb
	.long	.LASF198
	.uleb128 0x5
	.long	.LASF199
	.byte	0x11
	.byte	0x65
	.long	0xe45
	.uleb128 0x6
	.byte	0x8
	.long	0xe2a
	.uleb128 0x10
	.long	.LASF200
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0xe7c
	.uleb128 0xf
	.long	.LASF193
	.byte	0xa
	.byte	0x14
	.long	0xdcc
	.byte	0
	.uleb128 0xf
	.long	.LASF201
	.byte	0xa
	.byte	0x15
	.long	0xdcc
	.byte	0x1
	.uleb128 0xf
	.long	.LASF202
	.byte	0xa
	.byte	0x16
	.long	0xdd6
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF200
	.byte	0xa
	.byte	0x19
	.long	0xe4b
	.uleb128 0x6
	.byte	0x8
	.long	0xde1
	.uleb128 0x6
	.byte	0x8
	.long	0xe7c
	.uleb128 0xb
	.long	.LASF203
	.uleb128 0x6
	.byte	0x8
	.long	0xe93
	.uleb128 0xb
	.long	.LASF204
	.uleb128 0x6
	.byte	0x8
	.long	0xe9e
	.uleb128 0x6
	.byte	0x8
	.long	0xdec
	.uleb128 0x8
	.long	0xe7c
	.long	0xebf
	.uleb128 0x9
	.long	0x65
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x9
	.byte	0x2e
	.long	0xf28
	.uleb128 0x18
	.long	.LASF205
	.sleb128 0
	.uleb128 0x18
	.long	.LASF206
	.sleb128 1
	.uleb128 0x18
	.long	.LASF207
	.sleb128 2
	.uleb128 0x18
	.long	.LASF208
	.sleb128 3
	.uleb128 0x18
	.long	.LASF209
	.sleb128 4
	.uleb128 0x18
	.long	.LASF210
	.sleb128 5
	.uleb128 0x18
	.long	.LASF211
	.sleb128 6
	.uleb128 0x18
	.long	.LASF212
	.sleb128 7
	.uleb128 0x18
	.long	.LASF213
	.sleb128 8
	.uleb128 0x18
	.long	.LASF214
	.sleb128 9
	.uleb128 0x18
	.long	.LASF215
	.sleb128 10
	.uleb128 0x18
	.long	.LASF216
	.sleb128 11
	.uleb128 0x18
	.long	.LASF217
	.sleb128 12
	.uleb128 0x18
	.long	.LASF218
	.sleb128 13
	.uleb128 0x18
	.long	.LASF219
	.sleb128 14
	.uleb128 0x18
	.long	.LASF220
	.sleb128 15
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9b8
	.uleb128 0x6
	.byte	0x8
	.long	0xa6e
	.uleb128 0x6
	.byte	0x8
	.long	0x88a
	.uleb128 0x6
	.byte	0x8
	.long	0x91b
	.uleb128 0x6
	.byte	0x8
	.long	0xb6b
	.uleb128 0x6
	.byte	0x8
	.long	0x707
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x6
	.byte	0x8
	.long	0x54b
	.uleb128 0xd
	.long	.LASF221
	.byte	0x9
	.value	0x150
	.long	0xdd6
	.uleb128 0x6
	.byte	0x8
	.long	0x109
	.uleb128 0x15
	.long	0xf75
	.uleb128 0x16
	.long	0xf75
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42b
	.uleb128 0x6
	.byte	0x8
	.long	0xf6a
	.uleb128 0x6
	.byte	0x8
	.long	0x5f2
	.uleb128 0x6
	.byte	0x8
	.long	0x3b5
	.uleb128 0x19
	.byte	0x8
	.byte	0x9
	.value	0x184
	.long	0xfaf
	.uleb128 0x14
	.long	.LASF222
	.byte	0x9
	.value	0x185
	.long	0xfaf
	.uleb128 0x14
	.long	.LASF223
	.byte	0x9
	.value	0x186
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc5
	.uleb128 0x6
	.byte	0x8
	.long	0xe3a
	.uleb128 0x6
	.byte	0x8
	.long	0x353
	.uleb128 0x6
	.byte	0x8
	.long	0x62d
	.uleb128 0x5
	.long	.LASF224
	.byte	0x12
	.byte	0x13
	.long	0x3b5
	.uleb128 0xa
	.string	"PAD"
	.byte	0x12
	.byte	0x14
	.long	0x3b5
	.uleb128 0x5
	.long	.LASF225
	.byte	0x12
	.byte	0x1d
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xfc7
	.uleb128 0x1a
	.long	.LASF888
	.byte	0x4
	.byte	0x17
	.byte	0xf
	.long	0x1962
	.uleb128 0x18
	.long	.LASF226
	.sleb128 0
	.uleb128 0x18
	.long	.LASF227
	.sleb128 1
	.uleb128 0x18
	.long	.LASF228
	.sleb128 2
	.uleb128 0x18
	.long	.LASF229
	.sleb128 3
	.uleb128 0x18
	.long	.LASF230
	.sleb128 4
	.uleb128 0x18
	.long	.LASF231
	.sleb128 5
	.uleb128 0x18
	.long	.LASF232
	.sleb128 6
	.uleb128 0x18
	.long	.LASF233
	.sleb128 7
	.uleb128 0x18
	.long	.LASF234
	.sleb128 8
	.uleb128 0x18
	.long	.LASF235
	.sleb128 9
	.uleb128 0x18
	.long	.LASF236
	.sleb128 10
	.uleb128 0x18
	.long	.LASF237
	.sleb128 11
	.uleb128 0x18
	.long	.LASF238
	.sleb128 12
	.uleb128 0x18
	.long	.LASF239
	.sleb128 13
	.uleb128 0x18
	.long	.LASF240
	.sleb128 14
	.uleb128 0x18
	.long	.LASF241
	.sleb128 15
	.uleb128 0x18
	.long	.LASF242
	.sleb128 16
	.uleb128 0x18
	.long	.LASF243
	.sleb128 17
	.uleb128 0x18
	.long	.LASF244
	.sleb128 18
	.uleb128 0x18
	.long	.LASF245
	.sleb128 19
	.uleb128 0x18
	.long	.LASF246
	.sleb128 20
	.uleb128 0x18
	.long	.LASF247
	.sleb128 21
	.uleb128 0x18
	.long	.LASF248
	.sleb128 22
	.uleb128 0x18
	.long	.LASF249
	.sleb128 23
	.uleb128 0x18
	.long	.LASF250
	.sleb128 24
	.uleb128 0x18
	.long	.LASF251
	.sleb128 25
	.uleb128 0x18
	.long	.LASF252
	.sleb128 26
	.uleb128 0x18
	.long	.LASF253
	.sleb128 27
	.uleb128 0x18
	.long	.LASF254
	.sleb128 28
	.uleb128 0x18
	.long	.LASF255
	.sleb128 29
	.uleb128 0x18
	.long	.LASF256
	.sleb128 30
	.uleb128 0x18
	.long	.LASF257
	.sleb128 31
	.uleb128 0x18
	.long	.LASF258
	.sleb128 32
	.uleb128 0x18
	.long	.LASF259
	.sleb128 33
	.uleb128 0x18
	.long	.LASF260
	.sleb128 34
	.uleb128 0x18
	.long	.LASF261
	.sleb128 35
	.uleb128 0x18
	.long	.LASF262
	.sleb128 36
	.uleb128 0x18
	.long	.LASF263
	.sleb128 37
	.uleb128 0x18
	.long	.LASF264
	.sleb128 38
	.uleb128 0x18
	.long	.LASF265
	.sleb128 39
	.uleb128 0x18
	.long	.LASF266
	.sleb128 40
	.uleb128 0x18
	.long	.LASF267
	.sleb128 41
	.uleb128 0x18
	.long	.LASF268
	.sleb128 42
	.uleb128 0x18
	.long	.LASF269
	.sleb128 43
	.uleb128 0x18
	.long	.LASF270
	.sleb128 44
	.uleb128 0x18
	.long	.LASF271
	.sleb128 45
	.uleb128 0x18
	.long	.LASF272
	.sleb128 46
	.uleb128 0x18
	.long	.LASF273
	.sleb128 47
	.uleb128 0x18
	.long	.LASF274
	.sleb128 48
	.uleb128 0x18
	.long	.LASF275
	.sleb128 49
	.uleb128 0x18
	.long	.LASF276
	.sleb128 50
	.uleb128 0x18
	.long	.LASF277
	.sleb128 51
	.uleb128 0x18
	.long	.LASF278
	.sleb128 52
	.uleb128 0x18
	.long	.LASF279
	.sleb128 53
	.uleb128 0x18
	.long	.LASF280
	.sleb128 54
	.uleb128 0x18
	.long	.LASF281
	.sleb128 55
	.uleb128 0x18
	.long	.LASF282
	.sleb128 56
	.uleb128 0x18
	.long	.LASF283
	.sleb128 57
	.uleb128 0x18
	.long	.LASF284
	.sleb128 58
	.uleb128 0x18
	.long	.LASF285
	.sleb128 59
	.uleb128 0x18
	.long	.LASF286
	.sleb128 60
	.uleb128 0x18
	.long	.LASF287
	.sleb128 61
	.uleb128 0x18
	.long	.LASF288
	.sleb128 62
	.uleb128 0x18
	.long	.LASF289
	.sleb128 63
	.uleb128 0x18
	.long	.LASF290
	.sleb128 64
	.uleb128 0x18
	.long	.LASF291
	.sleb128 65
	.uleb128 0x18
	.long	.LASF292
	.sleb128 66
	.uleb128 0x18
	.long	.LASF293
	.sleb128 67
	.uleb128 0x18
	.long	.LASF294
	.sleb128 68
	.uleb128 0x18
	.long	.LASF295
	.sleb128 69
	.uleb128 0x18
	.long	.LASF296
	.sleb128 70
	.uleb128 0x18
	.long	.LASF297
	.sleb128 71
	.uleb128 0x18
	.long	.LASF298
	.sleb128 72
	.uleb128 0x18
	.long	.LASF299
	.sleb128 73
	.uleb128 0x18
	.long	.LASF300
	.sleb128 74
	.uleb128 0x18
	.long	.LASF301
	.sleb128 75
	.uleb128 0x18
	.long	.LASF302
	.sleb128 76
	.uleb128 0x18
	.long	.LASF303
	.sleb128 77
	.uleb128 0x18
	.long	.LASF304
	.sleb128 78
	.uleb128 0x18
	.long	.LASF305
	.sleb128 79
	.uleb128 0x18
	.long	.LASF306
	.sleb128 80
	.uleb128 0x18
	.long	.LASF307
	.sleb128 81
	.uleb128 0x18
	.long	.LASF308
	.sleb128 82
	.uleb128 0x18
	.long	.LASF309
	.sleb128 83
	.uleb128 0x18
	.long	.LASF310
	.sleb128 84
	.uleb128 0x18
	.long	.LASF311
	.sleb128 85
	.uleb128 0x18
	.long	.LASF312
	.sleb128 86
	.uleb128 0x18
	.long	.LASF313
	.sleb128 87
	.uleb128 0x18
	.long	.LASF314
	.sleb128 88
	.uleb128 0x18
	.long	.LASF315
	.sleb128 89
	.uleb128 0x18
	.long	.LASF316
	.sleb128 90
	.uleb128 0x18
	.long	.LASF317
	.sleb128 91
	.uleb128 0x18
	.long	.LASF318
	.sleb128 92
	.uleb128 0x18
	.long	.LASF319
	.sleb128 93
	.uleb128 0x18
	.long	.LASF320
	.sleb128 94
	.uleb128 0x18
	.long	.LASF321
	.sleb128 95
	.uleb128 0x18
	.long	.LASF322
	.sleb128 96
	.uleb128 0x18
	.long	.LASF323
	.sleb128 97
	.uleb128 0x18
	.long	.LASF324
	.sleb128 98
	.uleb128 0x18
	.long	.LASF325
	.sleb128 99
	.uleb128 0x18
	.long	.LASF326
	.sleb128 100
	.uleb128 0x18
	.long	.LASF327
	.sleb128 101
	.uleb128 0x18
	.long	.LASF328
	.sleb128 102
	.uleb128 0x18
	.long	.LASF329
	.sleb128 103
	.uleb128 0x18
	.long	.LASF330
	.sleb128 104
	.uleb128 0x18
	.long	.LASF331
	.sleb128 105
	.uleb128 0x18
	.long	.LASF332
	.sleb128 106
	.uleb128 0x18
	.long	.LASF333
	.sleb128 107
	.uleb128 0x18
	.long	.LASF334
	.sleb128 108
	.uleb128 0x18
	.long	.LASF335
	.sleb128 109
	.uleb128 0x18
	.long	.LASF336
	.sleb128 110
	.uleb128 0x18
	.long	.LASF337
	.sleb128 111
	.uleb128 0x18
	.long	.LASF338
	.sleb128 112
	.uleb128 0x18
	.long	.LASF339
	.sleb128 113
	.uleb128 0x18
	.long	.LASF340
	.sleb128 114
	.uleb128 0x18
	.long	.LASF341
	.sleb128 115
	.uleb128 0x18
	.long	.LASF342
	.sleb128 116
	.uleb128 0x18
	.long	.LASF343
	.sleb128 117
	.uleb128 0x18
	.long	.LASF344
	.sleb128 118
	.uleb128 0x18
	.long	.LASF345
	.sleb128 119
	.uleb128 0x18
	.long	.LASF346
	.sleb128 120
	.uleb128 0x18
	.long	.LASF347
	.sleb128 121
	.uleb128 0x18
	.long	.LASF348
	.sleb128 122
	.uleb128 0x18
	.long	.LASF349
	.sleb128 123
	.uleb128 0x18
	.long	.LASF350
	.sleb128 124
	.uleb128 0x18
	.long	.LASF351
	.sleb128 125
	.uleb128 0x18
	.long	.LASF352
	.sleb128 126
	.uleb128 0x18
	.long	.LASF353
	.sleb128 127
	.uleb128 0x18
	.long	.LASF354
	.sleb128 128
	.uleb128 0x18
	.long	.LASF355
	.sleb128 129
	.uleb128 0x18
	.long	.LASF356
	.sleb128 130
	.uleb128 0x18
	.long	.LASF357
	.sleb128 131
	.uleb128 0x18
	.long	.LASF358
	.sleb128 132
	.uleb128 0x18
	.long	.LASF359
	.sleb128 133
	.uleb128 0x18
	.long	.LASF360
	.sleb128 134
	.uleb128 0x18
	.long	.LASF361
	.sleb128 135
	.uleb128 0x18
	.long	.LASF362
	.sleb128 136
	.uleb128 0x18
	.long	.LASF363
	.sleb128 137
	.uleb128 0x18
	.long	.LASF364
	.sleb128 138
	.uleb128 0x18
	.long	.LASF365
	.sleb128 139
	.uleb128 0x18
	.long	.LASF366
	.sleb128 140
	.uleb128 0x18
	.long	.LASF367
	.sleb128 141
	.uleb128 0x18
	.long	.LASF368
	.sleb128 142
	.uleb128 0x18
	.long	.LASF369
	.sleb128 143
	.uleb128 0x18
	.long	.LASF370
	.sleb128 144
	.uleb128 0x18
	.long	.LASF371
	.sleb128 145
	.uleb128 0x18
	.long	.LASF372
	.sleb128 146
	.uleb128 0x18
	.long	.LASF373
	.sleb128 147
	.uleb128 0x18
	.long	.LASF374
	.sleb128 148
	.uleb128 0x18
	.long	.LASF375
	.sleb128 149
	.uleb128 0x18
	.long	.LASF376
	.sleb128 150
	.uleb128 0x18
	.long	.LASF377
	.sleb128 151
	.uleb128 0x18
	.long	.LASF378
	.sleb128 152
	.uleb128 0x18
	.long	.LASF379
	.sleb128 153
	.uleb128 0x18
	.long	.LASF380
	.sleb128 154
	.uleb128 0x18
	.long	.LASF381
	.sleb128 155
	.uleb128 0x18
	.long	.LASF382
	.sleb128 156
	.uleb128 0x18
	.long	.LASF383
	.sleb128 157
	.uleb128 0x18
	.long	.LASF384
	.sleb128 158
	.uleb128 0x18
	.long	.LASF385
	.sleb128 159
	.uleb128 0x18
	.long	.LASF386
	.sleb128 160
	.uleb128 0x18
	.long	.LASF387
	.sleb128 161
	.uleb128 0x18
	.long	.LASF388
	.sleb128 162
	.uleb128 0x18
	.long	.LASF389
	.sleb128 163
	.uleb128 0x18
	.long	.LASF390
	.sleb128 164
	.uleb128 0x18
	.long	.LASF391
	.sleb128 165
	.uleb128 0x18
	.long	.LASF392
	.sleb128 166
	.uleb128 0x18
	.long	.LASF393
	.sleb128 167
	.uleb128 0x18
	.long	.LASF394
	.sleb128 168
	.uleb128 0x18
	.long	.LASF395
	.sleb128 169
	.uleb128 0x18
	.long	.LASF396
	.sleb128 170
	.uleb128 0x18
	.long	.LASF397
	.sleb128 171
	.uleb128 0x18
	.long	.LASF398
	.sleb128 172
	.uleb128 0x18
	.long	.LASF399
	.sleb128 173
	.uleb128 0x18
	.long	.LASF400
	.sleb128 174
	.uleb128 0x18
	.long	.LASF401
	.sleb128 175
	.uleb128 0x18
	.long	.LASF402
	.sleb128 176
	.uleb128 0x18
	.long	.LASF403
	.sleb128 177
	.uleb128 0x18
	.long	.LASF404
	.sleb128 178
	.uleb128 0x18
	.long	.LASF405
	.sleb128 179
	.uleb128 0x18
	.long	.LASF406
	.sleb128 180
	.uleb128 0x18
	.long	.LASF407
	.sleb128 181
	.uleb128 0x18
	.long	.LASF408
	.sleb128 182
	.uleb128 0x18
	.long	.LASF409
	.sleb128 183
	.uleb128 0x18
	.long	.LASF410
	.sleb128 184
	.uleb128 0x18
	.long	.LASF411
	.sleb128 185
	.uleb128 0x18
	.long	.LASF412
	.sleb128 186
	.uleb128 0x18
	.long	.LASF413
	.sleb128 187
	.uleb128 0x18
	.long	.LASF414
	.sleb128 188
	.uleb128 0x18
	.long	.LASF415
	.sleb128 189
	.uleb128 0x18
	.long	.LASF416
	.sleb128 190
	.uleb128 0x18
	.long	.LASF417
	.sleb128 191
	.uleb128 0x18
	.long	.LASF418
	.sleb128 192
	.uleb128 0x18
	.long	.LASF419
	.sleb128 193
	.uleb128 0x18
	.long	.LASF420
	.sleb128 194
	.uleb128 0x18
	.long	.LASF421
	.sleb128 195
	.uleb128 0x18
	.long	.LASF422
	.sleb128 196
	.uleb128 0x18
	.long	.LASF423
	.sleb128 197
	.uleb128 0x18
	.long	.LASF424
	.sleb128 198
	.uleb128 0x18
	.long	.LASF425
	.sleb128 199
	.uleb128 0x18
	.long	.LASF426
	.sleb128 200
	.uleb128 0x18
	.long	.LASF427
	.sleb128 201
	.uleb128 0x18
	.long	.LASF428
	.sleb128 202
	.uleb128 0x18
	.long	.LASF429
	.sleb128 203
	.uleb128 0x18
	.long	.LASF430
	.sleb128 204
	.uleb128 0x18
	.long	.LASF431
	.sleb128 205
	.uleb128 0x18
	.long	.LASF432
	.sleb128 206
	.uleb128 0x18
	.long	.LASF433
	.sleb128 207
	.uleb128 0x18
	.long	.LASF434
	.sleb128 208
	.uleb128 0x18
	.long	.LASF435
	.sleb128 209
	.uleb128 0x18
	.long	.LASF436
	.sleb128 210
	.uleb128 0x18
	.long	.LASF437
	.sleb128 211
	.uleb128 0x18
	.long	.LASF438
	.sleb128 212
	.uleb128 0x18
	.long	.LASF439
	.sleb128 213
	.uleb128 0x18
	.long	.LASF440
	.sleb128 214
	.uleb128 0x18
	.long	.LASF441
	.sleb128 215
	.uleb128 0x18
	.long	.LASF442
	.sleb128 216
	.uleb128 0x18
	.long	.LASF443
	.sleb128 217
	.uleb128 0x18
	.long	.LASF444
	.sleb128 218
	.uleb128 0x18
	.long	.LASF445
	.sleb128 219
	.uleb128 0x18
	.long	.LASF446
	.sleb128 220
	.uleb128 0x18
	.long	.LASF447
	.sleb128 221
	.uleb128 0x18
	.long	.LASF448
	.sleb128 222
	.uleb128 0x18
	.long	.LASF449
	.sleb128 223
	.uleb128 0x18
	.long	.LASF450
	.sleb128 224
	.uleb128 0x18
	.long	.LASF451
	.sleb128 225
	.uleb128 0x18
	.long	.LASF452
	.sleb128 226
	.uleb128 0x18
	.long	.LASF453
	.sleb128 227
	.uleb128 0x18
	.long	.LASF454
	.sleb128 228
	.uleb128 0x18
	.long	.LASF455
	.sleb128 229
	.uleb128 0x18
	.long	.LASF456
	.sleb128 230
	.uleb128 0x18
	.long	.LASF457
	.sleb128 231
	.uleb128 0x18
	.long	.LASF458
	.sleb128 232
	.uleb128 0x18
	.long	.LASF459
	.sleb128 233
	.uleb128 0x18
	.long	.LASF460
	.sleb128 234
	.uleb128 0x18
	.long	.LASF461
	.sleb128 235
	.uleb128 0x18
	.long	.LASF462
	.sleb128 236
	.uleb128 0x18
	.long	.LASF463
	.sleb128 237
	.uleb128 0x18
	.long	.LASF464
	.sleb128 238
	.uleb128 0x18
	.long	.LASF465
	.sleb128 239
	.uleb128 0x18
	.long	.LASF466
	.sleb128 240
	.uleb128 0x18
	.long	.LASF467
	.sleb128 241
	.uleb128 0x18
	.long	.LASF468
	.sleb128 242
	.uleb128 0x18
	.long	.LASF469
	.sleb128 243
	.uleb128 0x18
	.long	.LASF470
	.sleb128 244
	.uleb128 0x18
	.long	.LASF471
	.sleb128 245
	.uleb128 0x18
	.long	.LASF472
	.sleb128 246
	.uleb128 0x18
	.long	.LASF473
	.sleb128 247
	.uleb128 0x18
	.long	.LASF474
	.sleb128 248
	.uleb128 0x18
	.long	.LASF475
	.sleb128 249
	.uleb128 0x18
	.long	.LASF476
	.sleb128 250
	.uleb128 0x18
	.long	.LASF477
	.sleb128 251
	.uleb128 0x18
	.long	.LASF478
	.sleb128 252
	.uleb128 0x18
	.long	.LASF479
	.sleb128 253
	.uleb128 0x18
	.long	.LASF480
	.sleb128 254
	.uleb128 0x18
	.long	.LASF481
	.sleb128 255
	.uleb128 0x18
	.long	.LASF482
	.sleb128 256
	.uleb128 0x18
	.long	.LASF483
	.sleb128 257
	.uleb128 0x18
	.long	.LASF484
	.sleb128 258
	.uleb128 0x18
	.long	.LASF485
	.sleb128 259
	.uleb128 0x18
	.long	.LASF486
	.sleb128 260
	.uleb128 0x18
	.long	.LASF487
	.sleb128 261
	.uleb128 0x18
	.long	.LASF488
	.sleb128 262
	.uleb128 0x18
	.long	.LASF489
	.sleb128 263
	.uleb128 0x18
	.long	.LASF490
	.sleb128 264
	.uleb128 0x18
	.long	.LASF491
	.sleb128 265
	.uleb128 0x18
	.long	.LASF492
	.sleb128 266
	.uleb128 0x18
	.long	.LASF493
	.sleb128 267
	.uleb128 0x18
	.long	.LASF494
	.sleb128 268
	.uleb128 0x18
	.long	.LASF495
	.sleb128 269
	.uleb128 0x18
	.long	.LASF496
	.sleb128 270
	.uleb128 0x18
	.long	.LASF497
	.sleb128 271
	.uleb128 0x18
	.long	.LASF498
	.sleb128 272
	.uleb128 0x18
	.long	.LASF499
	.sleb128 273
	.uleb128 0x18
	.long	.LASF500
	.sleb128 274
	.uleb128 0x18
	.long	.LASF501
	.sleb128 275
	.uleb128 0x18
	.long	.LASF502
	.sleb128 276
	.uleb128 0x18
	.long	.LASF503
	.sleb128 277
	.uleb128 0x18
	.long	.LASF504
	.sleb128 278
	.uleb128 0x18
	.long	.LASF505
	.sleb128 279
	.uleb128 0x18
	.long	.LASF506
	.sleb128 280
	.uleb128 0x18
	.long	.LASF507
	.sleb128 281
	.uleb128 0x18
	.long	.LASF508
	.sleb128 282
	.uleb128 0x18
	.long	.LASF509
	.sleb128 283
	.uleb128 0x18
	.long	.LASF510
	.sleb128 284
	.uleb128 0x18
	.long	.LASF511
	.sleb128 285
	.uleb128 0x18
	.long	.LASF512
	.sleb128 286
	.uleb128 0x18
	.long	.LASF513
	.sleb128 287
	.uleb128 0x18
	.long	.LASF514
	.sleb128 288
	.uleb128 0x18
	.long	.LASF515
	.sleb128 289
	.uleb128 0x18
	.long	.LASF516
	.sleb128 290
	.uleb128 0x18
	.long	.LASF517
	.sleb128 291
	.uleb128 0x18
	.long	.LASF518
	.sleb128 292
	.uleb128 0x18
	.long	.LASF519
	.sleb128 293
	.uleb128 0x18
	.long	.LASF520
	.sleb128 294
	.uleb128 0x18
	.long	.LASF521
	.sleb128 295
	.uleb128 0x18
	.long	.LASF522
	.sleb128 296
	.uleb128 0x18
	.long	.LASF523
	.sleb128 297
	.uleb128 0x18
	.long	.LASF524
	.sleb128 298
	.uleb128 0x18
	.long	.LASF525
	.sleb128 299
	.uleb128 0x18
	.long	.LASF526
	.sleb128 300
	.uleb128 0x18
	.long	.LASF527
	.sleb128 301
	.uleb128 0x18
	.long	.LASF528
	.sleb128 302
	.uleb128 0x18
	.long	.LASF529
	.sleb128 303
	.uleb128 0x18
	.long	.LASF530
	.sleb128 304
	.uleb128 0x18
	.long	.LASF531
	.sleb128 305
	.uleb128 0x18
	.long	.LASF532
	.sleb128 306
	.uleb128 0x18
	.long	.LASF533
	.sleb128 307
	.uleb128 0x18
	.long	.LASF534
	.sleb128 308
	.uleb128 0x18
	.long	.LASF535
	.sleb128 309
	.uleb128 0x18
	.long	.LASF536
	.sleb128 310
	.uleb128 0x18
	.long	.LASF537
	.sleb128 311
	.uleb128 0x18
	.long	.LASF538
	.sleb128 312
	.uleb128 0x18
	.long	.LASF539
	.sleb128 313
	.uleb128 0x18
	.long	.LASF540
	.sleb128 314
	.uleb128 0x18
	.long	.LASF541
	.sleb128 315
	.uleb128 0x18
	.long	.LASF542
	.sleb128 316
	.uleb128 0x18
	.long	.LASF543
	.sleb128 317
	.uleb128 0x18
	.long	.LASF544
	.sleb128 318
	.uleb128 0x18
	.long	.LASF545
	.sleb128 319
	.uleb128 0x18
	.long	.LASF546
	.sleb128 320
	.uleb128 0x18
	.long	.LASF547
	.sleb128 321
	.uleb128 0x18
	.long	.LASF548
	.sleb128 322
	.uleb128 0x18
	.long	.LASF549
	.sleb128 323
	.uleb128 0x18
	.long	.LASF550
	.sleb128 324
	.uleb128 0x18
	.long	.LASF551
	.sleb128 325
	.uleb128 0x18
	.long	.LASF552
	.sleb128 326
	.uleb128 0x18
	.long	.LASF553
	.sleb128 327
	.uleb128 0x18
	.long	.LASF554
	.sleb128 328
	.uleb128 0x18
	.long	.LASF555
	.sleb128 329
	.uleb128 0x18
	.long	.LASF556
	.sleb128 330
	.uleb128 0x18
	.long	.LASF557
	.sleb128 331
	.uleb128 0x18
	.long	.LASF558
	.sleb128 332
	.uleb128 0x18
	.long	.LASF559
	.sleb128 333
	.uleb128 0x18
	.long	.LASF560
	.sleb128 334
	.uleb128 0x18
	.long	.LASF561
	.sleb128 335
	.uleb128 0x18
	.long	.LASF562
	.sleb128 336
	.uleb128 0x18
	.long	.LASF563
	.sleb128 337
	.uleb128 0x18
	.long	.LASF564
	.sleb128 338
	.uleb128 0x18
	.long	.LASF565
	.sleb128 339
	.uleb128 0x18
	.long	.LASF566
	.sleb128 340
	.uleb128 0x18
	.long	.LASF567
	.sleb128 341
	.uleb128 0x18
	.long	.LASF568
	.sleb128 342
	.uleb128 0x18
	.long	.LASF569
	.sleb128 343
	.uleb128 0x18
	.long	.LASF570
	.sleb128 344
	.uleb128 0x18
	.long	.LASF571
	.sleb128 345
	.uleb128 0x18
	.long	.LASF572
	.sleb128 346
	.uleb128 0x18
	.long	.LASF573
	.sleb128 347
	.uleb128 0x18
	.long	.LASF574
	.sleb128 348
	.uleb128 0x18
	.long	.LASF575
	.sleb128 349
	.uleb128 0x18
	.long	.LASF576
	.sleb128 350
	.uleb128 0x18
	.long	.LASF577
	.sleb128 351
	.uleb128 0x18
	.long	.LASF578
	.sleb128 352
	.byte	0
	.uleb128 0x1b
	.long	0xf64
	.uleb128 0x6
	.byte	0x8
	.long	0x1962
	.uleb128 0x6
	.byte	0x8
	.long	0x259
	.uleb128 0x6
	.byte	0x8
	.long	0x466
	.uleb128 0x10
	.long	.LASF579
	.byte	0x40
	.byte	0x8
	.byte	0x70
	.long	0x19f0
	.uleb128 0x1c
	.string	"cv"
	.byte	0x8
	.byte	0x71
	.long	0xf75
	.byte	0
	.uleb128 0x1c
	.string	"gv"
	.byte	0x8
	.byte	0x72
	.long	0xf81
	.byte	0x8
	.uleb128 0xf
	.long	.LASF580
	.byte	0x8
	.byte	0x73
	.long	0xf81
	.byte	0x10
	.uleb128 0xf
	.long	.LASF581
	.byte	0x8
	.byte	0x75
	.long	0xf87
	.byte	0x18
	.uleb128 0xf
	.long	.LASF582
	.byte	0x8
	.byte	0x77
	.long	0xf87
	.byte	0x20
	.uleb128 0xf
	.long	.LASF583
	.byte	0x8
	.byte	0x78
	.long	0x5e
	.byte	0x28
	.uleb128 0xf
	.long	.LASF584
	.byte	0x8
	.byte	0x79
	.long	0xdcc
	.byte	0x30
	.uleb128 0xf
	.long	.LASF585
	.byte	0x8
	.byte	0x7a
	.long	0xdcc
	.byte	0x31
	.uleb128 0xf
	.long	.LASF586
	.byte	0x8
	.byte	0x7b
	.long	0x19f0
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd2
	.uleb128 0x10
	.long	.LASF587
	.byte	0x28
	.byte	0x8
	.byte	0xd3
	.long	0x1a4a
	.uleb128 0xf
	.long	.LASF588
	.byte	0x8
	.byte	0xd4
	.long	0xde1
	.byte	0
	.uleb128 0xf
	.long	.LASF589
	.byte	0x8
	.byte	0xd5
	.long	0xde1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF590
	.byte	0x8
	.byte	0xd6
	.long	0xe14
	.byte	0x8
	.uleb128 0xf
	.long	.LASF591
	.byte	0x8
	.byte	0xd7
	.long	0xf64
	.byte	0x10
	.uleb128 0xf
	.long	.LASF592
	.byte	0x8
	.byte	0xd8
	.long	0xe14
	.byte	0x18
	.uleb128 0x1c
	.string	"cv"
	.byte	0x8
	.byte	0xd9
	.long	0xf75
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF593
	.byte	0x58
	.byte	0x8
	.byte	0xf0
	.long	0x1adc
	.uleb128 0xf
	.long	.LASF594
	.byte	0x8
	.byte	0xf1
	.long	0x79
	.byte	0
	.uleb128 0xf
	.long	.LASF595
	.byte	0x8
	.byte	0xf2
	.long	0xde1
	.byte	0x8
	.uleb128 0xf
	.long	.LASF596
	.byte	0x8
	.byte	0xf3
	.long	0xf64
	.byte	0x10
	.uleb128 0xf
	.long	.LASF597
	.byte	0x8
	.byte	0xf4
	.long	0xf64
	.byte	0x18
	.uleb128 0xf
	.long	.LASF598
	.byte	0x8
	.byte	0xf5
	.long	0xf64
	.byte	0x20
	.uleb128 0xf
	.long	.LASF599
	.byte	0x8
	.byte	0xfa
	.long	0x1adc
	.byte	0x28
	.uleb128 0xf
	.long	.LASF600
	.byte	0x8
	.byte	0xfc
	.long	0xe14
	.byte	0x30
	.uleb128 0xf
	.long	.LASF601
	.byte	0x8
	.byte	0xfd
	.long	0xe14
	.byte	0x38
	.uleb128 0xf
	.long	.LASF602
	.byte	0x8
	.byte	0xfe
	.long	0xf87
	.byte	0x40
	.uleb128 0xf
	.long	.LASF603
	.byte	0x8
	.byte	0xff
	.long	0xd5
	.byte	0x48
	.uleb128 0x11
	.long	.LASF604
	.byte	0x8
	.value	0x100
	.long	0xd5
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe14
	.uleb128 0x19
	.byte	0x58
	.byte	0x8
	.value	0x139
	.long	0x1b10
	.uleb128 0x14
	.long	.LASF605
	.byte	0x8
	.value	0x13a
	.long	0x1979
	.uleb128 0x14
	.long	.LASF606
	.byte	0x8
	.value	0x13b
	.long	0x19f6
	.uleb128 0x14
	.long	.LASF607
	.byte	0x8
	.value	0x13c
	.long	0x1a4a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x180
	.uleb128 0x12
	.long	.LASF608
	.byte	0x58
	.byte	0x8
	.value	0x16e
	.long	0x1bda
	.uleb128 0x11
	.long	.LASF609
	.byte	0x8
	.value	0x16f
	.long	0xde1
	.byte	0
	.uleb128 0x11
	.long	.LASF610
	.byte	0x8
	.value	0x170
	.long	0xde1
	.byte	0x4
	.uleb128 0x11
	.long	.LASF611
	.byte	0x8
	.value	0x171
	.long	0xde1
	.byte	0x8
	.uleb128 0x11
	.long	.LASF612
	.byte	0x8
	.value	0x172
	.long	0xde1
	.byte	0xc
	.uleb128 0x11
	.long	.LASF613
	.byte	0x8
	.value	0x173
	.long	0x7f
	.byte	0x10
	.uleb128 0x11
	.long	.LASF614
	.byte	0x8
	.value	0x174
	.long	0x7f
	.byte	0x11
	.uleb128 0x11
	.long	.LASF615
	.byte	0x8
	.value	0x175
	.long	0x79
	.byte	0x18
	.uleb128 0x11
	.long	.LASF616
	.byte	0x8
	.value	0x176
	.long	0xe14
	.byte	0x20
	.uleb128 0x11
	.long	.LASF617
	.byte	0x8
	.value	0x177
	.long	0xe14
	.byte	0x28
	.uleb128 0x11
	.long	.LASF618
	.byte	0x8
	.value	0x178
	.long	0x79
	.byte	0x30
	.uleb128 0x11
	.long	.LASF619
	.byte	0x8
	.value	0x179
	.long	0x79
	.byte	0x38
	.uleb128 0x11
	.long	.LASF620
	.byte	0x8
	.value	0x17a
	.long	0x79
	.byte	0x40
	.uleb128 0x11
	.long	.LASF621
	.byte	0x8
	.value	0x17b
	.long	0x6c
	.byte	0x48
	.uleb128 0x11
	.long	.LASF622
	.byte	0x8
	.value	0x17c
	.long	0x1973
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x88
	.byte	0x8
	.value	0x1a4
	.long	0x1bfc
	.uleb128 0x14
	.long	.LASF623
	.byte	0x8
	.value	0x1a5
	.long	0x691
	.uleb128 0x14
	.long	.LASF624
	.byte	0x8
	.value	0x1a6
	.long	0x1b16
	.byte	0
	.uleb128 0x12
	.long	.LASF625
	.byte	0x38
	.byte	0x8
	.value	0x20c
	.long	0x1c72
	.uleb128 0x11
	.long	.LASF626
	.byte	0x8
	.value	0x20d
	.long	0xf87
	.byte	0
	.uleb128 0x11
	.long	.LASF627
	.byte	0x8
	.value	0x20e
	.long	0x1c72
	.byte	0x8
	.uleb128 0x11
	.long	.LASF628
	.byte	0x8
	.value	0x20f
	.long	0xde1
	.byte	0x10
	.uleb128 0x11
	.long	.LASF629
	.byte	0x8
	.value	0x210
	.long	0xde1
	.byte	0x14
	.uleb128 0x11
	.long	.LASF630
	.byte	0x8
	.value	0x211
	.long	0xde1
	.byte	0x18
	.uleb128 0x11
	.long	.LASF631
	.byte	0x8
	.value	0x212
	.long	0x1c78
	.byte	0x20
	.uleb128 0x11
	.long	.LASF632
	.byte	0x8
	.value	0x213
	.long	0x1c78
	.byte	0x28
	.uleb128 0x11
	.long	.LASF633
	.byte	0x8
	.value	0x214
	.long	0xde1
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x65d
	.uleb128 0x6
	.byte	0x8
	.long	0x1bfc
	.uleb128 0xd
	.long	.LASF634
	.byte	0x8
	.value	0x219
	.long	0x1bfc
	.uleb128 0xa
	.string	"HE"
	.byte	0xe
	.byte	0xc
	.long	0x1c94
	.uleb128 0xe
	.string	"he"
	.byte	0x18
	.byte	0xe
	.byte	0x10
	.long	0x1cc4
	.uleb128 0xf
	.long	.LASF635
	.byte	0xe
	.byte	0x11
	.long	0x1d00
	.byte	0
	.uleb128 0xf
	.long	.LASF636
	.byte	0xe
	.byte	0x12
	.long	0x1d06
	.byte	0x8
	.uleb128 0xf
	.long	.LASF637
	.byte	0xe
	.byte	0x13
	.long	0xe14
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.string	"HEK"
	.byte	0xe
	.byte	0xd
	.long	0x1ccf
	.uleb128 0xe
	.string	"hek"
	.byte	0xc
	.byte	0xe
	.byte	0x17
	.long	0x1d00
	.uleb128 0xf
	.long	.LASF638
	.byte	0xe
	.byte	0x18
	.long	0xdec
	.byte	0
	.uleb128 0xf
	.long	.LASF639
	.byte	0xe
	.byte	0x19
	.long	0xde1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF640
	.byte	0xe
	.byte	0x1a
	.long	0xe1a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1c8a
	.uleb128 0x6
	.byte	0x8
	.long	0x1cc4
	.uleb128 0x1d
	.long	0x57
	.long	0x1d20
	.uleb128 0x16
	.long	0xe14
	.uleb128 0x16
	.long	0xf46
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1d0c
	.uleb128 0x1d
	.long	0xdec
	.long	0x1d3a
	.uleb128 0x16
	.long	0xe14
	.uleb128 0x16
	.long	0xf46
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1d26
	.uleb128 0x1d
	.long	0x57
	.long	0x1d63
	.uleb128 0x16
	.long	0xe14
	.uleb128 0x16
	.long	0xf46
	.uleb128 0x16
	.long	0xe14
	.uleb128 0x16
	.long	0xaa
	.uleb128 0x16
	.long	0x57
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1d40
	.uleb128 0x1d
	.long	0x57
	.long	0x1d7d
	.uleb128 0x16
	.long	0xf46
	.uleb128 0x16
	.long	0x1d7d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd8b
	.uleb128 0x6
	.byte	0x8
	.long	0x1d69
	.uleb128 0x6
	.byte	0x8
	.long	0xcb0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF641
	.uleb128 0x1e
	.byte	0x4
	.byte	0x6
	.value	0xfb1
	.long	0x1f35
	.uleb128 0x18
	.long	.LASF642
	.sleb128 0
	.uleb128 0x18
	.long	.LASF643
	.sleb128 1
	.uleb128 0x18
	.long	.LASF644
	.sleb128 2
	.uleb128 0x18
	.long	.LASF645
	.sleb128 3
	.uleb128 0x18
	.long	.LASF646
	.sleb128 4
	.uleb128 0x18
	.long	.LASF647
	.sleb128 5
	.uleb128 0x18
	.long	.LASF648
	.sleb128 6
	.uleb128 0x18
	.long	.LASF649
	.sleb128 7
	.uleb128 0x18
	.long	.LASF650
	.sleb128 8
	.uleb128 0x18
	.long	.LASF651
	.sleb128 9
	.uleb128 0x18
	.long	.LASF652
	.sleb128 10
	.uleb128 0x18
	.long	.LASF653
	.sleb128 11
	.uleb128 0x18
	.long	.LASF654
	.sleb128 12
	.uleb128 0x18
	.long	.LASF655
	.sleb128 13
	.uleb128 0x18
	.long	.LASF656
	.sleb128 14
	.uleb128 0x18
	.long	.LASF657
	.sleb128 15
	.uleb128 0x18
	.long	.LASF658
	.sleb128 16
	.uleb128 0x18
	.long	.LASF659
	.sleb128 17
	.uleb128 0x18
	.long	.LASF660
	.sleb128 18
	.uleb128 0x18
	.long	.LASF661
	.sleb128 19
	.uleb128 0x18
	.long	.LASF662
	.sleb128 20
	.uleb128 0x18
	.long	.LASF663
	.sleb128 21
	.uleb128 0x18
	.long	.LASF664
	.sleb128 22
	.uleb128 0x18
	.long	.LASF665
	.sleb128 23
	.uleb128 0x18
	.long	.LASF666
	.sleb128 24
	.uleb128 0x18
	.long	.LASF667
	.sleb128 25
	.uleb128 0x18
	.long	.LASF668
	.sleb128 26
	.uleb128 0x18
	.long	.LASF669
	.sleb128 27
	.uleb128 0x18
	.long	.LASF670
	.sleb128 28
	.uleb128 0x18
	.long	.LASF671
	.sleb128 29
	.uleb128 0x18
	.long	.LASF672
	.sleb128 30
	.uleb128 0x18
	.long	.LASF673
	.sleb128 31
	.uleb128 0x18
	.long	.LASF674
	.sleb128 32
	.uleb128 0x18
	.long	.LASF675
	.sleb128 33
	.uleb128 0x18
	.long	.LASF676
	.sleb128 34
	.uleb128 0x18
	.long	.LASF677
	.sleb128 35
	.uleb128 0x18
	.long	.LASF678
	.sleb128 36
	.uleb128 0x18
	.long	.LASF679
	.sleb128 37
	.uleb128 0x18
	.long	.LASF680
	.sleb128 38
	.uleb128 0x18
	.long	.LASF681
	.sleb128 39
	.uleb128 0x18
	.long	.LASF682
	.sleb128 40
	.uleb128 0x18
	.long	.LASF683
	.sleb128 41
	.uleb128 0x18
	.long	.LASF684
	.sleb128 42
	.uleb128 0x18
	.long	.LASF685
	.sleb128 43
	.uleb128 0x18
	.long	.LASF686
	.sleb128 44
	.uleb128 0x18
	.long	.LASF687
	.sleb128 45
	.uleb128 0x18
	.long	.LASF688
	.sleb128 46
	.uleb128 0x18
	.long	.LASF689
	.sleb128 47
	.uleb128 0x18
	.long	.LASF690
	.sleb128 48
	.uleb128 0x18
	.long	.LASF691
	.sleb128 49
	.uleb128 0x18
	.long	.LASF692
	.sleb128 50
	.uleb128 0x18
	.long	.LASF693
	.sleb128 51
	.uleb128 0x18
	.long	.LASF694
	.sleb128 52
	.uleb128 0x18
	.long	.LASF695
	.sleb128 53
	.uleb128 0x18
	.long	.LASF696
	.sleb128 54
	.uleb128 0x18
	.long	.LASF697
	.sleb128 55
	.uleb128 0x18
	.long	.LASF698
	.sleb128 56
	.uleb128 0x18
	.long	.LASF699
	.sleb128 57
	.uleb128 0x18
	.long	.LASF700
	.sleb128 58
	.uleb128 0x18
	.long	.LASF701
	.sleb128 59
	.uleb128 0x18
	.long	.LASF702
	.sleb128 60
	.uleb128 0x18
	.long	.LASF703
	.sleb128 61
	.uleb128 0x18
	.long	.LASF704
	.sleb128 62
	.uleb128 0x18
	.long	.LASF705
	.sleb128 63
	.uleb128 0x18
	.long	.LASF706
	.sleb128 64
	.uleb128 0x18
	.long	.LASF707
	.sleb128 65
	.uleb128 0x18
	.long	.LASF708
	.sleb128 66
	.byte	0
	.uleb128 0x1f
	.long	.LASF709
	.byte	0x1
	.byte	0x40
	.long	0x1f7e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7e
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.byte	0x40
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"uv"
	.byte	0x1
	.byte	0x40
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF193
	.byte	0x1
	.byte	0x40
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdcc
	.uleb128 0x1f
	.long	.LASF710
	.byte	0x1
	.byte	0xaa
	.long	0x1f7e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fbf
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.byte	0xaa
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.string	"uv"
	.byte	0x1
	.byte	0xaa
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF711
	.byte	0x1
	.byte	0xba
	.long	0xfd
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2031
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xba
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"u"
	.byte	0x1
	.byte	0xbc
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x24
	.long	.LASF712
	.byte	0x1
	.byte	0xbd
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0xbd
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"uv"
	.byte	0x1
	.byte	0xbe
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"ouv"
	.byte	0x1
	.byte	0xbe
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1f
	.long	.LASF713
	.byte	0x1
	.byte	0xec
	.long	0x7f
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2093
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.byte	0xec
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0xec
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0xee
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF714
	.byte	0x1
	.byte	0xef
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.byte	0xf0
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF715
	.byte	0x1
	.value	0x114
	.long	0x7f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2109
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x114
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x114
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x114
	.long	0x2109
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.value	0x116
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x117
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x118
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f7e
	.uleb128 0x25
	.long	.LASF716
	.byte	0x1
	.value	0x154
	.long	0xe0
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2239
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x154
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF717
	.byte	0x1
	.value	0x154
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF718
	.byte	0x1
	.value	0x154
	.long	0x2239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF193
	.byte	0x1
	.value	0x154
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x27
	.string	"s0"
	.byte	0x1
	.value	0x156
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"uv"
	.byte	0x1
	.value	0x157
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"ouv"
	.byte	0x1
	.value	0x157
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x158
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF719
	.byte	0x1
	.value	0x159
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x28
	.long	.LASF720
	.byte	0x1
	.value	0x15a
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF721
	.byte	0x1
	.value	0x15b
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF722
	.byte	0x1
	.value	0x15c
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.long	.LASF889
	.byte	0x1
	.value	0x1d3
	.quad	.L76
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x27
	.string	"sv"
	.byte	0x1
	.value	0x1dc
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x20b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfd
	.uleb128 0x25
	.long	.LASF723
	.byte	0x1
	.value	0x229
	.long	0xe0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x227e
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x229
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF718
	.byte	0x1
	.value	0x229
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF724
	.byte	0x1
	.value	0x240
	.long	0xe0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x22bd
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x240
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF718
	.byte	0x1
	.value	0x240
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF725
	.byte	0x1
	.value	0x252
	.long	0xfd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2328
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x252
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.value	0x252
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x254
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x27
	.string	"t"
	.byte	0x1
	.value	0x265
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF726
	.byte	0x1
	.value	0x285
	.long	0xd5
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x23b6
	.uleb128 0x26
	.string	"a"
	.byte	0x1
	.value	0x285
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"b"
	.byte	0x1
	.value	0x285
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"off"
	.byte	0x1
	.value	0x287
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2396
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x28f
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x2a1
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF727
	.byte	0x1
	.value	0x2c3
	.long	0x1f7e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f5
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2c3
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"off"
	.byte	0x1
	.value	0x2c3
	.long	0xde1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x25
	.long	.LASF728
	.byte	0x1
	.value	0x2e3
	.long	0x1f7e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x24a6
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x2e3
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x2e3
	.long	0x2239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x2e5
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"d"
	.byte	0x1
	.value	0x2e6
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF729
	.byte	0x1
	.value	0x2e7
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x2484
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x2eb
	.long	0xdcc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0x2b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF730
	.byte	0x1
	.value	0x2f7
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF731
	.byte	0x1
	.value	0x30e
	.long	0x1f7e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2571
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x30e
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x30e
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF732
	.byte	0x1
	.value	0x30e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.string	"d"
	.byte	0x1
	.value	0x310
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF733
	.byte	0x1
	.value	0x311
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x312
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF734
	.byte	0x1
	.value	0x313
	.long	0xde1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x2551
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x31a
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x329
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF735
	.byte	0x1
	.value	0x344
	.long	0x1f7e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x25fb
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x344
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x344
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x346
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"d"
	.byte	0x1
	.value	0x347
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x348
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x27
	.string	"uv"
	.byte	0x1
	.value	0x34f
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF736
	.byte	0x1
	.value	0x363
	.long	0x1f7e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b7
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x363
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.value	0x363
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF737
	.byte	0x1
	.value	0x363
	.long	0xde1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF738
	.byte	0x1
	.value	0x363
	.long	0xe87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF739
	.byte	0x1
	.value	0x365
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF740
	.byte	0x1
	.value	0x366
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x27
	.string	"uv"
	.byte	0x1
	.value	0x374
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2b
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x27
	.string	"low"
	.byte	0x1
	.value	0x380
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF741
	.byte	0x1
	.value	0x39b
	.long	0x1f7e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2751
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x39b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.value	0x39b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF737
	.byte	0x1
	.value	0x39b
	.long	0xde1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF738
	.byte	0x1
	.value	0x39b
	.long	0xe87
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x39d
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF714
	.byte	0x1
	.value	0x39e
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2b
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.value	0x3a0
	.long	0xdcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF742
	.byte	0x1
	.value	0x3ab
	.long	0x7f
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2790
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3ab
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3ad
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	0xdcc
	.long	0x27a0
	.uleb128 0x9
	.long	0x65
	.byte	0xd
	.byte	0
	.uleb128 0x25
	.long	.LASF744
	.byte	0x1
	.value	0x3b3
	.long	0x7f
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x27df
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3b3
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3b5
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF745
	.byte	0x1
	.value	0x3bb
	.long	0x7f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x281e
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3bb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3bd
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF746
	.byte	0x1
	.value	0x3c3
	.long	0x7f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x285d
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3c3
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3c5
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF747
	.byte	0x1
	.value	0x3cb
	.long	0x7f
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x289c
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3cb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3cd
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF748
	.byte	0x1
	.value	0x3d3
	.long	0x7f
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x28db
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3d3
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3d5
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF749
	.byte	0x1
	.value	0x3db
	.long	0x7f
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x291a
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3db
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3dd
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF750
	.byte	0x1
	.value	0x3e3
	.long	0x7f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2959
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3e3
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3e5
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF751
	.byte	0x1
	.value	0x3eb
	.long	0x7f
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x2998
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3eb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3ed
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF752
	.byte	0x1
	.value	0x3f3
	.long	0x7f
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d7
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3f3
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3f5
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF753
	.byte	0x1
	.value	0x3fb
	.long	0x7f
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a16
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x3fb
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x3fd
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF754
	.byte	0x1
	.value	0x403
	.long	0x7f
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a55
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x403
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x405
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF755
	.byte	0x1
	.value	0x40b
	.long	0x7f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a94
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x40b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x40d
	.long	0x2790
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF756
	.byte	0x1
	.value	0x413
	.long	0x7f
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x413
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x415
	.long	0x2ad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	0xdcc
	.long	0x2ae3
	.uleb128 0x9
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.long	.LASF757
	.byte	0x1
	.value	0x41b
	.long	0xe0
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b2f
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x41b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x41b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x41b
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF759
	.byte	0x1
	.value	0x422
	.long	0xe0
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7b
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x422
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x422
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x422
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF760
	.byte	0x1
	.value	0x429
	.long	0xe0
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc7
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x429
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x429
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x429
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF761
	.byte	0x1
	.value	0x430
	.long	0xe0
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c13
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x430
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x430
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x430
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.value	0x439
	.long	0x7f
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c43
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x439
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF763
	.byte	0x1
	.value	0x43f
	.long	0x7f
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c73
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x43f
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF764
	.byte	0x1
	.value	0x445
	.long	0x7f
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x445
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF765
	.byte	0x1
	.value	0x44b
	.long	0x7f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x44b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF766
	.byte	0x1
	.value	0x451
	.long	0x7f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d03
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x451
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF767
	.byte	0x1
	.value	0x457
	.long	0x7f
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d33
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x457
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF768
	.byte	0x1
	.value	0x45d
	.long	0x7f
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d63
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x45d
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF769
	.byte	0x1
	.value	0x463
	.long	0x7f
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d93
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x463
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF770
	.byte	0x1
	.value	0x469
	.long	0x7f
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dc3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x469
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF771
	.byte	0x1
	.value	0x46f
	.long	0x7f
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x46f
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF772
	.byte	0x1
	.value	0x475
	.long	0x7f
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e23
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x475
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF773
	.byte	0x1
	.value	0x47b
	.long	0x7f
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e53
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x47b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF774
	.byte	0x1
	.value	0x481
	.long	0x7f
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e83
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x481
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF775
	.byte	0x1
	.value	0x487
	.long	0x7f
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2eb3
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x487
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF776
	.byte	0x1
	.value	0x48d
	.long	0xdec
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f02
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x48d
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x491
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x492
	.long	0x2ad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF777
	.byte	0x1
	.value	0x497
	.long	0xdec
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f51
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x497
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x49b
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x49c
	.long	0x2ad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF778
	.byte	0x1
	.value	0x4a1
	.long	0xdec
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fa0
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x4a1
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x4a5
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x4a6
	.long	0x2ad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF779
	.byte	0x1
	.value	0x4ab
	.long	0x7f
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4ab
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF780
	.byte	0x1
	.value	0x4bf
	.long	0x7f
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3000
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4bf
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF781
	.byte	0x1
	.value	0x4d0
	.long	0x7f
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3030
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4d0
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF782
	.byte	0x1
	.value	0x4dc
	.long	0x7f
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3060
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4dc
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF783
	.byte	0x1
	.value	0x4e8
	.long	0x7f
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x3090
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4e8
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF784
	.byte	0x1
	.value	0x4f2
	.long	0x7f
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x30c0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4f2
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF785
	.byte	0x1
	.value	0x4fc
	.long	0x7f
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x30f0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4fc
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF786
	.byte	0x1
	.value	0x506
	.long	0x7f
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3120
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x506
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF787
	.byte	0x1
	.value	0x510
	.long	0x7f
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x3150
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x510
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF788
	.byte	0x1
	.value	0x51a
	.long	0x7f
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x3180
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x51a
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF789
	.byte	0x1
	.value	0x524
	.long	0x7f
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x31b0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x524
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF790
	.byte	0x1
	.value	0x52e
	.long	0x7f
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x31e0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x52e
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF791
	.byte	0x1
	.value	0x538
	.long	0x7f
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x3210
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x538
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF792
	.byte	0x1
	.value	0x542
	.long	0x7f
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3240
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x542
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF793
	.byte	0x1
	.value	0x54c
	.long	0x7f
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x3270
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x54c
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF794
	.byte	0x1
	.value	0x556
	.long	0x7f
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x32a0
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x556
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF795
	.byte	0x1
	.value	0x579
	.long	0xe0
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x33f7
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x579
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x579
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x579
	.long	0x2239
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF797
	.byte	0x1
	.value	0x579
	.long	0x1adc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.long	.LASF798
	.byte	0x1
	.value	0x579
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x29
	.long	.LASF799
	.byte	0x1
	.value	0x579
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.string	"uv0"
	.byte	0x1
	.value	0x57b
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"uv1"
	.byte	0x1
	.value	0x57b
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF743
	.byte	0x1
	.value	0x57c
	.long	0x2ad3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x57d
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0x33b4
	.uleb128 0x27
	.string	"hv"
	.byte	0x1
	.value	0x58d
	.long	0xf4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x58e
	.long	0x1adc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x593
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x27
	.string	"uv2"
	.byte	0x1
	.value	0x5bd
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x27
	.string	"uv3"
	.byte	0x1
	.value	0x5c1
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF800
	.byte	0x1
	.value	0x5de
	.long	0xe0
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3445
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x5de
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x5de
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x5de
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF801
	.byte	0x1
	.value	0x5f2
	.long	0xe0
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x3493
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x5f2
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x5f2
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x5f2
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF802
	.byte	0x1
	.value	0x606
	.long	0xe0
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e1
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x606
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x606
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x606
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF803
	.byte	0x1
	.value	0x61b
	.long	0xe0
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x352f
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x61b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF796
	.byte	0x1
	.value	0x61b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x61b
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF804
	.byte	0x1
	.value	0x624
	.long	0xe14
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x3695
	.uleb128 0x26
	.string	"pkg"
	.byte	0x1
	.value	0x624
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF805
	.byte	0x1
	.value	0x624
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF806
	.byte	0x1
	.value	0x624
	.long	0xe14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF807
	.byte	0x1
	.value	0x624
	.long	0xde1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x29
	.long	.LASF808
	.byte	0x1
	.value	0x624
	.long	0xde1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF809
	.byte	0x1
	.value	0x626
	.long	0xe14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF810
	.byte	0x1
	.value	0x627
	.long	0xe14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x628
	.long	0x1adc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF811
	.byte	0x1
	.value	0x629
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF812
	.byte	0x1
	.value	0x62a
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF813
	.byte	0x1
	.value	0x62b
	.long	0xf4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF814
	.byte	0x1
	.value	0x62c
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x3632
	.uleb128 0x28
	.long	.LASF815
	.byte	0x1
	.value	0x62e
	.long	0x3695
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2c
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x3664
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x655
	.long	0x1adc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF816
	.byte	0x1
	.value	0x655
	.long	0x3695
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.value	0x657
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"pv"
	.byte	0x1
	.value	0x658
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1c7e
	.uleb128 0x25
	.long	.LASF817
	.byte	0x1
	.value	0x66d
	.long	0xe0
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x383c
	.uleb128 0x26
	.string	"sv"
	.byte	0x1
	.value	0x66d
	.long	0xe14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.string	"ptr"
	.byte	0x1
	.value	0x66d
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x29
	.long	.LASF818
	.byte	0x1
	.value	0x66d
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x27
	.string	"hv"
	.byte	0x1
	.value	0x66f
	.long	0xf4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF819
	.byte	0x1
	.value	0x670
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x27
	.string	"off"
	.byte	0x1
	.value	0x671
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x28
	.long	.LASF712
	.byte	0x1
	.value	0x672
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF820
	.byte	0x1
	.value	0x673
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF821
	.byte	0x1
	.value	0x674
	.long	0x1f7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.string	"bit"
	.byte	0x1
	.value	0x675
	.long	0xdec
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.long	.LASF809
	.byte	0x1
	.value	0x676
	.long	0xe14
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF822
	.byte	0x1
	.value	0x677
	.long	0x383c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x678
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2b
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x27
	.string	"svp"
	.byte	0x1
	.value	0x6a8
	.long	0x1adc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x6ac
	.long	0x1adc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF823
	.byte	0x1
	.value	0x6b0
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF814
	.byte	0x1
	.value	0x6b3
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x380b
	.uleb128 0x28
	.long	.LASF815
	.byte	0x1
	.value	0x6b7
	.long	0x3695
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x2b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x27
	.string	"sp"
	.byte	0x1
	.value	0x6c8
	.long	0x1adc
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x28
	.long	.LASF816
	.byte	0x1
	.value	0x6c8
	.long	0x3695
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xdcc
	.long	0x384c
	.uleb128 0x9
	.long	0x65
	.byte	0x1
	.byte	0
	.uleb128 0x25
	.long	.LASF824
	.byte	0x1
	.value	0x705
	.long	0x1f7e
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x388a
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.value	0x705
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"uv"
	.byte	0x1
	.value	0x705
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x25
	.long	.LASF825
	.byte	0x1
	.value	0x70b
	.long	0x1f7e
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x38d7
	.uleb128 0x26
	.string	"d"
	.byte	0x1
	.value	0x70b
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"uv"
	.byte	0x1
	.value	0x70b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF193
	.byte	0x1
	.value	0x70b
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x25
	.long	.LASF826
	.byte	0x1
	.value	0x720
	.long	0xe0
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x3942
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x720
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF717
	.byte	0x1
	.value	0x720
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF718
	.byte	0x1
	.value	0x720
	.long	0x2239
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF193
	.byte	0x1
	.value	0x720
	.long	0xdec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x27
	.string	"uv"
	.byte	0x1
	.value	0x722
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF827
	.byte	0x1
	.value	0x738
	.long	0x79
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a28
	.uleb128 0x26
	.string	"dsv"
	.byte	0x1
	.value	0x738
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"spv"
	.byte	0x1
	.value	0x738
	.long	0x1f7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0x738
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF828
	.byte	0x1
	.value	0x738
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF193
	.byte	0x1
	.value	0x738
	.long	0xe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF829
	.byte	0x1
	.value	0x73a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.string	"s"
	.byte	0x1
	.value	0x73b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.string	"e"
	.byte	0x1
	.value	0x73b
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x27
	.string	"u"
	.byte	0x1
	.value	0x73f
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.string	"ok"
	.byte	0x1
	.value	0x743
	.long	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.uleb128 0x2b
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x27
	.string	"c"
	.byte	0x1
	.value	0x74b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF830
	.byte	0x1
	.value	0x77c
	.long	0x79
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a87
	.uleb128 0x26
	.string	"dsv"
	.byte	0x1
	.value	0x77c
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.string	"ssv"
	.byte	0x1
	.value	0x77c
	.long	0xe14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF828
	.byte	0x1
	.value	0x77c
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF193
	.byte	0x1
	.value	0x77c
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x25
	.long	.LASF831
	.byte	0x1
	.value	0x79c
	.long	0xde1
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c00
	.uleb128 0x26
	.string	"s1"
	.byte	0x1
	.value	0x79c
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.string	"pe1"
	.byte	0x1
	.value	0x79c
	.long	0x3c00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.string	"l1"
	.byte	0x1
	.value	0x79c
	.long	0xe0
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.string	"u1"
	.byte	0x1
	.value	0x79c
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x26
	.string	"s2"
	.byte	0x1
	.value	0x79c
	.long	0xaa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.string	"pe2"
	.byte	0x1
	.value	0x79c
	.long	0x3c00
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.string	"l2"
	.byte	0x1
	.value	0x79c
	.long	0xe0
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x26
	.string	"u2"
	.byte	0x1
	.value	0x79c
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x27
	.string	"p1"
	.byte	0x1
	.value	0x79e
	.long	0x1f7e
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x27
	.string	"p2"
	.byte	0x1
	.value	0x79f
	.long	0x1f7e
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2e
	.string	"e1"
	.byte	0x1
	.value	0x7a0
	.long	0x1f7e
	.uleb128 0x2e
	.string	"f1"
	.byte	0x1
	.value	0x7a0
	.long	0x1f7e
	.uleb128 0x27
	.string	"q1"
	.byte	0x1
	.value	0x7a0
	.long	0x1f7e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2e
	.string	"e2"
	.byte	0x1
	.value	0x7a1
	.long	0x1f7e
	.uleb128 0x27
	.string	"f2"
	.byte	0x1
	.value	0x7a1
	.long	0x1f7e
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x27
	.string	"q2"
	.byte	0x1
	.value	0x7a1
	.long	0x1f7e
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x27
	.string	"n1"
	.byte	0x1
	.value	0x7a2
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x27
	.string	"n2"
	.byte	0x1
	.value	0x7a2
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF832
	.byte	0x1
	.value	0x7a3
	.long	0x2ad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF833
	.byte	0x1
	.value	0x7a4
	.long	0x2ad3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF834
	.byte	0x1
	.value	0x7a5
	.long	0x383c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF835
	.byte	0x1
	.value	0x7a6
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF836
	.byte	0x1
	.value	0x7a6
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF837
	.byte	0x1
	.value	0x7a7
	.long	0x7f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -145
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x79
	.uleb128 0x8
	.long	0x7f
	.long	0x3c16
	.uleb128 0x9
	.long	0x65
	.byte	0x34
	.byte	0
	.uleb128 0x24
	.long	.LASF838
	.byte	0x1
	.byte	0x1c
	.long	0x3c06
	.uleb128 0x9
	.byte	0x3
	.quad	unees
	.uleb128 0x8
	.long	0x2d
	.long	0x3c36
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	.LASF839
	.byte	0x13
	.byte	0x29
	.long	0x3c41
	.uleb128 0x7
	.long	0x3c2b
	.uleb128 0x8
	.long	0x79
	.long	0x3c51
	.uleb128 0x2f
	.byte	0
	.uleb128 0x31
	.long	.LASF840
	.byte	0x14
	.value	0x185
	.long	0x3c46
	.uleb128 0x30
	.long	.LASF841
	.byte	0x15
	.byte	0x34
	.long	0xdcc
	.uleb128 0x30
	.long	.LASF842
	.byte	0x15
	.byte	0x51
	.long	0xf81
	.uleb128 0x30
	.long	.LASF843
	.byte	0x15
	.byte	0x5d
	.long	0xf81
	.uleb128 0x30
	.long	.LASF844
	.byte	0x15
	.byte	0xcf
	.long	0x180
	.uleb128 0x31
	.long	.LASF845
	.byte	0x15
	.value	0x114
	.long	0xb5
	.uleb128 0x31
	.long	.LASF846
	.byte	0x15
	.value	0x125
	.long	0x37a
	.uleb128 0x31
	.long	.LASF847
	.byte	0x15
	.value	0x15c
	.long	0xde1
	.uleb128 0x31
	.long	.LASF848
	.byte	0x15
	.value	0x162
	.long	0xdec
	.uleb128 0x31
	.long	.LASF849
	.byte	0x15
	.value	0x17e
	.long	0xe14
	.uleb128 0x31
	.long	.LASF850
	.byte	0x15
	.value	0x180
	.long	0xe14
	.uleb128 0x31
	.long	.LASF851
	.byte	0x15
	.value	0x181
	.long	0xe14
	.uleb128 0x31
	.long	.LASF852
	.byte	0x15
	.value	0x182
	.long	0xe14
	.uleb128 0x31
	.long	.LASF853
	.byte	0x15
	.value	0x183
	.long	0xe14
	.uleb128 0x31
	.long	.LASF854
	.byte	0x15
	.value	0x184
	.long	0xe14
	.uleb128 0x31
	.long	.LASF855
	.byte	0x15
	.value	0x185
	.long	0xe14
	.uleb128 0x31
	.long	.LASF856
	.byte	0x15
	.value	0x186
	.long	0xe14
	.uleb128 0x31
	.long	.LASF857
	.byte	0x15
	.value	0x187
	.long	0xe14
	.uleb128 0x31
	.long	.LASF858
	.byte	0x15
	.value	0x188
	.long	0xe14
	.uleb128 0x31
	.long	.LASF859
	.byte	0x15
	.value	0x189
	.long	0xe14
	.uleb128 0x31
	.long	.LASF860
	.byte	0x15
	.value	0x18a
	.long	0xe14
	.uleb128 0x31
	.long	.LASF861
	.byte	0x15
	.value	0x18b
	.long	0xe14
	.uleb128 0x31
	.long	.LASF862
	.byte	0x15
	.value	0x18c
	.long	0xe14
	.uleb128 0x31
	.long	.LASF863
	.byte	0x15
	.value	0x18d
	.long	0xe14
	.uleb128 0x31
	.long	.LASF864
	.byte	0x15
	.value	0x18e
	.long	0xe14
	.uleb128 0x31
	.long	.LASF865
	.byte	0x15
	.value	0x18f
	.long	0xe14
	.uleb128 0x31
	.long	.LASF866
	.byte	0x15
	.value	0x190
	.long	0xf4c
	.uleb128 0x31
	.long	.LASF867
	.byte	0x15
	.value	0x191
	.long	0xdec
	.uleb128 0x8
	.long	0xdcc
	.long	0x3dad
	.uleb128 0x9
	.long	0x65
	.byte	0x9
	.byte	0
	.uleb128 0x31
	.long	.LASF868
	.byte	0x15
	.value	0x192
	.long	0x3d9d
	.uleb128 0x31
	.long	.LASF869
	.byte	0x15
	.value	0x193
	.long	0x1f7e
	.uleb128 0x31
	.long	.LASF870
	.byte	0x15
	.value	0x194
	.long	0xfd
	.uleb128 0x31
	.long	.LASF871
	.byte	0x15
	.value	0x20d
	.long	0xe14
	.uleb128 0x31
	.long	.LASF872
	.byte	0x15
	.value	0x20e
	.long	0xe14
	.uleb128 0x30
	.long	.LASF873
	.byte	0x16
	.byte	0x22
	.long	0x1adc
	.uleb128 0x30
	.long	.LASF874
	.byte	0x16
	.byte	0x26
	.long	0xf64
	.uleb128 0x30
	.long	.LASF875
	.byte	0x16
	.byte	0x2a
	.long	0x1adc
	.uleb128 0x30
	.long	.LASF876
	.byte	0x16
	.byte	0x2b
	.long	0x1adc
	.uleb128 0x30
	.long	.LASF877
	.byte	0x16
	.byte	0x37
	.long	0xde1
	.uleb128 0x30
	.long	.LASF878
	.byte	0x16
	.byte	0x38
	.long	0xde1
	.uleb128 0x30
	.long	.LASF879
	.byte	0x16
	.byte	0x3c
	.long	0xe87
	.uleb128 0x30
	.long	.LASF880
	.byte	0x16
	.byte	0x3d
	.long	0xe87
	.uleb128 0x30
	.long	.LASF881
	.byte	0x16
	.byte	0x44
	.long	0x3e4c
	.uleb128 0x6
	.byte	0x8
	.long	0x7a5
	.uleb128 0x30
	.long	.LASF882
	.byte	0x16
	.byte	0x81
	.long	0x3e5d
	.uleb128 0x32
	.long	0x1b10
	.uleb128 0x30
	.long	.LASF883
	.byte	0x16
	.byte	0x87
	.long	0xf87
	.uleb128 0x30
	.long	.LASF884
	.byte	0x16
	.byte	0x88
	.long	0x3695
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x4
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
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x35
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
.LASF844:
	.string	"PL_compiling"
.LASF560:
	.string	"OP_ESERVENT"
.LASF485:
	.string	"OP_FTSVTX"
.LASF56:
	.string	"precomp"
.LASF438:
	.string	"OP_SYSREAD"
.LASF88:
	.string	"blku_oldretsp"
.LASF455:
	.string	"OP_SHUTDOWN"
.LASF695:
	.string	"repeat_ass_amg"
.LASF663:
	.string	"rshift_ass_amg"
.LASF531:
	.string	"OP_MSGRCV"
.LASF631:
	.string	"si_prev"
.LASF573:
	.string	"OP_LOCK"
.LASF578:
	.string	"OP_max"
.LASF16:
	.string	"op_next"
.LASF223:
	.string	"xiou_any"
.LASF489:
	.string	"OP_CHDIR"
.LASF403:
	.string	"OP_ENTER"
.LASF855:
	.string	"PL_utf8_digit"
.LASF254:
	.string	"OP_REGCMAYBE"
.LASF736:
	.string	"Perl_utf16_to_utf8"
.LASF85:
	.string	"block"
.LASF384:
	.string	"OP_FLOP"
.LASF422:
	.string	"OP_BINMODE"
.LASF136:
	.string	"xpvgv"
.LASF158:
	.string	"xio_ifp"
.LASF314:
	.string	"OP_SEQ"
.LASF31:
	.string	"cop_io"
.LASF625:
	.string	"stackinfo"
.LASF665:
	.string	"band_ass_amg"
.LASF672:
	.string	"gt_amg"
.LASF476:
	.string	"OP_FTSOCK"
.LASF130:
	.string	"xhv_keys"
.LASF821:
	.string	"tmps"
.LASF173:
	.string	"xio_flags"
.LASF552:
	.string	"OP_GSERVENT"
.LASF177:
	.string	"svt_set"
.LASF126:
	.string	"xpvhv"
.LASF697:
	.string	"concat_ass_amg"
.LASF826:
	.string	"Perl_utf8n_to_uvchr"
.LASF824:
	.string	"Perl_uvchr_to_utf8"
.LASF887:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/400.perlbench/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF807:
	.string	"minbits"
.LASF443:
	.string	"OP_TELL"
.LASF729:
	.string	"save"
.LASF515:
	.string	"OP_SETPGRP"
.LASF784:
	.string	"Perl_is_utf8_ascii"
.LASF470:
	.string	"OP_FTROWNED"
.LASF738:
	.string	"newlen"
.LASF74:
	.string	"gp_hv"
.LASF157:
	.string	"xpvio"
.LASF459:
	.string	"OP_GETPEERNAME"
.LASF313:
	.string	"OP_SGE"
.LASF109:
	.string	"xpviv"
.LASF689:
	.string	"cos_amg"
.LASF617:
	.string	"sbu_targ"
.LASF395:
	.string	"OP_CALLER"
.LASF453:
	.string	"OP_LISTEN"
.LASF311:
	.string	"OP_SGT"
.LASF771:
	.string	"Perl_is_uni_cntrl_lc"
.LASF787:
	.string	"Perl_is_utf8_upper"
.LASF525:
	.string	"OP_SHMCTL"
.LASF815:
	.string	"next"
.LASF717:
	.string	"curlen"
.LASF283:
	.string	"OP_DIVIDE"
.LASF145:
	.string	"xcv_start"
.LASF71:
	.string	"gp_io"
.LASF75:
	.string	"gp_egv"
.LASF609:
	.string	"sbu_iters"
.LASF328:
	.string	"OP_SRAND"
.LASF638:
	.string	"hek_hash"
.LASF711:
	.string	"Perl_is_utf8_char"
.LASF676:
	.string	"ncmp_amg"
.LASF759:
	.string	"Perl_to_uni_title"
.LASF29:
	.string	"cop_line"
.LASF144:
	.string	"xcv_stash"
.LASF294:
	.string	"OP_LEFT_SHIFT"
.LASF865:
	.string	"PL_utf8_tofold"
.LASF761:
	.string	"Perl_to_uni_fold"
.LASF561:
	.string	"OP_GPWNAM"
.LASF692:
	.string	"log_amg"
.LASF149:
	.string	"xcv_gv"
.LASF424:
	.string	"OP_UNTIE"
.LASF325:
	.string	"OP_SIN"
.LASF632:
	.string	"si_next"
.LASF512:
	.string	"OP_KILL"
.LASF106:
	.string	"xpv_cur"
.LASF763:
	.string	"Perl_is_uni_alnumc_lc"
.LASF840:
	.string	"PL_op_desc"
.LASF252:
	.string	"OP_READLINE"
.LASF265:
	.string	"OP_SCHOP"
.LASF99:
	.string	"mg_type"
.LASF498:
	.string	"OP_READLINK"
.LASF389:
	.string	"OP_ANDASSIGN"
.LASF675:
	.string	"ne_amg"
.LASF105:
	.string	"xpv_pv"
.LASF888:
	.string	"opcode"
.LASF391:
	.string	"OP_METHOD"
.LASF851:
	.string	"PL_utf8_alpha"
.LASF746:
	.string	"Perl_is_uni_alpha"
.LASF268:
	.string	"OP_DEFINED"
.LASF616:
	.string	"sbu_dstr"
.LASF674:
	.string	"eq_amg"
.LASF506:
	.string	"OP_CLOSEDIR"
.LASF533:
	.string	"OP_SEMCTL"
.LASF409:
	.string	"OP_LEAVELOOP"
.LASF500:
	.string	"OP_RMDIR"
.LASF439:
	.string	"OP_SYSWRITE"
.LASF221:
	.string	"cv_flags_t"
.LASF79:
	.string	"gp_line"
.LASF570:
	.string	"OP_EGRENT"
.LASF770:
	.string	"Perl_is_uni_lower_lc"
.LASF608:
	.string	"subst"
.LASF858:
	.string	"PL_utf8_print"
.LASF163:
	.string	"xio_page_len"
.LASF267:
	.string	"OP_SCHOMP"
.LASF754:
	.string	"Perl_is_uni_print"
.LASF795:
	.string	"Perl_to_utf8_case"
.LASF735:
	.string	"Perl_bytes_to_utf8"
.LASF671:
	.string	"le_amg"
.LASF849:
	.string	"PL_utf8_alnum"
.LASF433:
	.string	"OP_LEAVEWRITE"
.LASF312:
	.string	"OP_SLE"
.LASF112:
	.string	"xpvnv"
.LASF137:
	.string	"xgv_gp"
.LASF862:
	.string	"PL_utf8_toupper"
.LASF432:
	.string	"OP_ENTERWRITE"
.LASF310:
	.string	"OP_SLT"
.LASF366:
	.string	"OP_JOIN"
.LASF98:
	.string	"mg_private"
.LASF266:
	.string	"OP_CHOMP"
.LASF701:
	.string	"to_av_amg"
.LASF615:
	.string	"sbu_orig"
.LASF359:
	.string	"OP_EXISTS"
.LASF831:
	.string	"Perl_ibcmp_utf8"
.LASF852:
	.string	"PL_utf8_space"
.LASF123:
	.string	"xav_arylen"
.LASF68:
	.string	"program"
.LASF146:
	.string	"xcv_root"
.LASF588:
	.string	"old_in_eval"
.LASF636:
	.string	"hent_hek"
.LASF97:
	.string	"mg_virtual"
.LASF408:
	.string	"OP_ENTERLOOP"
.LASF227:
	.string	"OP_STUB"
.LASF691:
	.string	"exp_amg"
.LASF832:
	.string	"foldbuf1"
.LASF698:
	.string	"copy_amg"
.LASF833:
	.string	"foldbuf2"
.LASF27:
	.string	"cop_seq"
.LASF418:
	.string	"OP_CLOSE"
.LASF870:
	.string	"PL_last_swash_slen"
.LASF315:
	.string	"OP_SNE"
.LASF49:
	.string	"sv_flags"
.LASF797:
	.string	"swashp"
.LASF664:
	.string	"band_amg"
.LASF522:
	.string	"OP_ALARM"
.LASF303:
	.string	"OP_I_GE"
.LASF646:
	.string	"string_amg"
.LASF777:
	.string	"Perl_to_uni_title_lc"
.LASF299:
	.string	"OP_I_GT"
.LASF46:
	.string	"broiled"
.LASF168:
	.string	"xio_fmt_gv"
.LASF839:
	.string	"PL_utf8skip"
.LASF423:
	.string	"OP_TIE"
.LASF256:
	.string	"OP_REGCOMP"
.LASF78:
	.string	"gp_flags"
.LASF84:
	.string	"cx_u"
.LASF264:
	.string	"OP_CHOP"
.LASF70:
	.string	"gp_refcnt"
.LASF599:
	.string	"itervar"
.LASF64:
	.string	"nparens"
.LASF802:
	.string	"Perl_to_utf8_lower"
.LASF538:
	.string	"OP_LEAVEEVAL"
.LASF201:
	.string	"type"
.LASF427:
	.string	"OP_DBMCLOSE"
.LASF281:
	.string	"OP_MULTIPLY"
.LASF390:
	.string	"OP_ORASSIGN"
.LASF80:
	.string	"gp_file"
.LASF456:
	.string	"OP_GSOCKOPT"
.LASF162:
	.string	"xio_page"
.LASF554:
	.string	"OP_SNETENT"
.LASF396:
	.string	"OP_WARN"
.LASF524:
	.string	"OP_SHMGET"
.LASF332:
	.string	"OP_INT"
.LASF769:
	.string	"Perl_is_uni_upper_lc"
.LASF834:
	.string	"natbuf"
.LASF546:
	.string	"OP_GNETENT"
.LASF513:
	.string	"OP_GETPPID"
.LASF780:
	.string	"Perl_is_utf8_alnumc"
.LASF336:
	.string	"OP_LENGTH"
.LASF257:
	.string	"OP_MATCH"
.LASF152:
	.string	"xcv_padlist"
.LASF481:
	.string	"OP_FTPIPE"
.LASF410:
	.string	"OP_RETURN"
.LASF762:
	.string	"Perl_is_uni_alnum_lc"
.LASF607:
	.string	"blku_loop"
.LASF709:
	.string	"Perl_uvuni_to_utf8_flags"
.LASF645:
	.string	"nomethod_amg"
.LASF320:
	.string	"OP_NEGATE"
.LASF69:
	.string	"gp_sv"
.LASF0:
	.string	"unsigned char"
.LASF377:
	.string	"OP_REVERSE"
.LASF559:
	.string	"OP_EPROTOENT"
.LASF335:
	.string	"OP_ABS"
.LASF199:
	.string	"PerlIO"
.LASF618:
	.string	"sbu_s"
.LASF730:
	.string	"ulen"
.LASF760:
	.string	"Perl_to_uni_lower"
.LASF549:
	.string	"OP_GPROTOENT"
.LASF641:
	.string	"float"
.LASF600:
	.string	"itersave"
.LASF850:
	.string	"PL_utf8_ascii"
.LASF745:
	.string	"Perl_is_uni_idfirst"
.LASF747:
	.string	"Perl_is_uni_ascii"
.LASF47:
	.string	"sv_any"
.LASF370:
	.string	"OP_ANONHASH"
.LASF301:
	.string	"OP_I_LE"
.LASF820:
	.string	"needents"
.LASF569:
	.string	"OP_SGRENT"
.LASF853:
	.string	"PL_utf8_cntrl"
.LASF587:
	.string	"block_eval"
.LASF297:
	.string	"OP_I_LT"
.LASF678:
	.string	"slt_amg"
.LASF388:
	.string	"OP_COND_EXPR"
.LASF482:
	.string	"OP_FTLINK"
.LASF67:
	.string	"reganch"
.LASF192:
	.string	"stashes"
.LASF856:
	.string	"PL_utf8_upper"
.LASF750:
	.string	"Perl_is_uni_upper"
.LASF416:
	.string	"OP_EXIT"
.LASF53:
	.string	"endp"
.LASF288:
	.string	"OP_ADD"
.LASF532:
	.string	"OP_SEMGET"
.LASF259:
	.string	"OP_SUBST"
.LASF748:
	.string	"Perl_is_uni_space"
.LASF382:
	.string	"OP_RANGE"
.LASF228:
	.string	"OP_SCALAR"
.LASF757:
	.string	"Perl_to_uni_upper"
.LASF555:
	.string	"OP_SPROTOENT"
.LASF530:
	.string	"OP_MSGSND"
.LASF712:
	.string	"slen"
.LASF355:
	.string	"OP_EACH"
.LASF527:
	.string	"OP_SHMWRITE"
.LASF356:
	.string	"OP_VALUES"
.LASF378:
	.string	"OP_GREPSTART"
.LASF11:
	.string	"size_t"
.LASF245:
	.string	"OP_PROTOTYPE"
.LASF307:
	.string	"OP_I_NE"
.LASF250:
	.string	"OP_BACKTICK"
.LASF767:
	.string	"Perl_is_uni_space_lc"
.LASF218:
	.string	"SVt_PVGV"
.LASF606:
	.string	"blku_eval"
.LASF804:
	.string	"Perl_swash_init"
.LASF60:
	.string	"sublen"
.LASF404:
	.string	"OP_LEAVE"
.LASF117:
	.string	"xav_fill"
.LASF490:
	.string	"OP_CHOWN"
.LASF644:
	.string	"bool__amg"
.LASF597:
	.string	"next_op"
.LASF464:
	.string	"OP_FTREXEC"
.LASF96:
	.string	"mg_moremagic"
.LASF495:
	.string	"OP_RENAME"
.LASF620:
	.string	"sbu_strend"
.LASF28:
	.string	"cop_arybase"
.LASF867:
	.string	"PL_last_swash_klen"
.LASF879:
	.string	"PL_markstack_ptr"
.LASF338:
	.string	"OP_VEC"
.LASF629:
	.string	"si_cxmax"
.LASF431:
	.string	"OP_READ"
.LASF399:
	.string	"OP_LINESEQ"
.LASF102:
	.string	"mg_ptr"
.LASF425:
	.string	"OP_TIED"
.LASF276:
	.string	"OP_POSTINC"
.LASF604:
	.string	"itermax"
.LASF363:
	.string	"OP_UNPACK"
.LASF812:
	.string	"name_len"
.LASF520:
	.string	"OP_LOCALTIME"
.LASF171:
	.string	"xio_subprocess"
.LASF724:
	.string	"Perl_utf8_to_uvuni"
.LASF479:
	.string	"OP_FTFILE"
.LASF58:
	.string	"subbeg"
.LASF52:
	.string	"startp"
.LASF702:
	.string	"to_hv_amg"
.LASF799:
	.string	"special"
.LASF765:
	.string	"Perl_is_uni_alpha_lc"
.LASF566:
	.string	"OP_GGRNAM"
.LASF885:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF290:
	.string	"OP_SUBTRACT"
.LASF466:
	.string	"OP_FTEWRITE"
.LASF703:
	.string	"to_gv_amg"
.LASF794:
	.string	"Perl_is_utf8_mark"
.LASF492:
	.string	"OP_UNLINK"
.LASF51:
	.string	"regexp"
.LASF575:
	.string	"OP_SETSTATE"
.LASF412:
	.string	"OP_NEXT"
.LASF447:
	.string	"OP_IOCTL"
.LASF50:
	.string	"REGEXP"
.LASF722:
	.string	"warning"
.LASF48:
	.string	"sv_refcnt"
.LASF407:
	.string	"OP_ITER"
.LASF484:
	.string	"OP_FTSGID"
.LASF239:
	.string	"OP_PUSHRE"
.LASF237:
	.string	"OP_PADHV"
.LASF507:
	.string	"OP_FORK"
.LASF178:
	.string	"svt_len"
.LASF889:
	.string	"malformed"
.LASF715:
	.string	"Perl_is_utf8_string_loc"
.LASF708:
	.string	"max_amg_code"
.LASF202:
	.string	"next_off"
.LASF401:
	.string	"OP_DBSTATE"
.LASF22:
	.string	"op_flags"
.LASF790:
	.string	"Perl_is_utf8_graph"
.LASF30:
	.string	"cop_warnings"
.LASF634:
	.string	"PERL_SI"
.LASF55:
	.string	"substrs"
.LASF562:
	.string	"OP_GPWUID"
.LASF595:
	.string	"resetsp"
.LASF822:
	.string	"tmputf8"
.LASF270:
	.string	"OP_STUDY"
.LASF337:
	.string	"OP_SUBSTR"
.LASF90:
	.string	"blku_oldscopesp"
.LASF215:
	.string	"SVt_PVAV"
.LASF543:
	.string	"OP_GHOSTENT"
.LASF628:
	.string	"si_cxix"
.LASF127:
	.string	"xhv_array"
.LASF545:
	.string	"OP_GNBYADDR"
.LASF659:
	.string	"pow_ass_amg"
.LASF825:
	.string	"Perl_uvchr_to_utf8_flags"
.LASF727:
	.string	"Perl_utf8_hop"
.LASF59:
	.string	"offsets"
.LASF682:
	.string	"seq_amg"
.LASF371:
	.string	"OP_SPLICE"
.LASF873:
	.string	"PL_stack_sp"
.LASF776:
	.string	"Perl_to_uni_upper_lc"
.LASF316:
	.string	"OP_SCMP"
.LASF503:
	.string	"OP_TELLDIR"
.LASF169:
	.string	"xio_bottom_name"
.LASF886:
	.string	"utf8.c"
.LASF317:
	.string	"OP_BIT_AND"
.LASF213:
	.string	"SVt_PVBM"
.LASF716:
	.string	"Perl_utf8n_to_uvuni"
.LASF642:
	.string	"fallback_amg"
.LASF846:
	.string	"PL_sv_undef"
.LASF766:
	.string	"Perl_is_uni_ascii_lc"
.LASF94:
	.string	"MAGIC"
.LASF24:
	.string	"cop_label"
.LASF100:
	.string	"mg_flags"
.LASF592:
	.string	"cur_text"
.LASF114:
	.string	"XPVAV"
.LASF774:
	.string	"Perl_is_uni_punct_lc"
.LASF217:
	.string	"SVt_PVCV"
.LASF273:
	.string	"OP_I_PREINC"
.LASF63:
	.string	"prelen"
.LASF882:
	.string	"PL_curcop"
.LASF379:
	.string	"OP_GREPWHILE"
.LASF413:
	.string	"OP_REDO"
.LASF19:
	.string	"op_targ"
.LASF272:
	.string	"OP_PREINC"
.LASF170:
	.string	"xio_bottom_gv"
.LASF842:
	.string	"PL_stderrgv"
.LASF269:
	.string	"OP_UNDEF"
.LASF322:
	.string	"OP_NOT"
.LASF420:
	.string	"OP_FILENO"
.LASF89:
	.string	"blku_oldmarksp"
.LASF385:
	.string	"OP_AND"
.LASF537:
	.string	"OP_ENTEREVAL"
.LASF713:
	.string	"Perl_is_utf8_string"
.LASF65:
	.string	"lastparen"
.LASF667:
	.string	"bor_ass_amg"
.LASF788:
	.string	"Perl_is_utf8_lower"
.LASF142:
	.string	"XPVCV"
.LASF602:
	.string	"iterary"
.LASF319:
	.string	"OP_BIT_OR"
.LASF454:
	.string	"OP_ACCEPT"
.LASF838:
	.string	"unees"
.LASF426:
	.string	"OP_DBMOPEN"
.LASF571:
	.string	"OP_GETLOGIN"
.LASF9:
	.string	"__ssize_t"
.LASF204:
	.string	"reg_data"
.LASF167:
	.string	"xio_fmt_name"
.LASF637:
	.string	"hent_val"
.LASF402:
	.string	"OP_UNSTACK"
.LASF113:
	.string	"xnv_nv"
.LASF635:
	.string	"hent_next"
.LASF444:
	.string	"OP_SEEK"
.LASF662:
	.string	"rshift_amg"
.LASF180:
	.string	"svt_free"
.LASF42:
	.string	"op_pmdynflags"
.LASF705:
	.string	"iter_amg"
.LASF680:
	.string	"sgt_amg"
.LASF719:
	.string	"dowarn"
.LASF219:
	.string	"SVt_PVFM"
.LASF374:
	.string	"OP_SHIFT"
.LASF843:
	.string	"PL_errgv"
.LASF400:
	.string	"OP_NEXTSTATE"
.LASF191:
	.string	"clone_params"
.LASF848:
	.string	"PL_hints"
.LASF568:
	.string	"OP_GGRENT"
.LASF669:
	.string	"bxor_ass_amg"
.LASF309:
	.string	"OP_I_NCMP"
.LASF287:
	.string	"OP_REPEAT"
.LASF347:
	.string	"OP_LCFIRST"
.LASF829:
	.string	"truncated"
.LASF486:
	.string	"OP_FTTTY"
.LASF292:
	.string	"OP_CONCAT"
.LASF435:
	.string	"OP_PRINT"
.LASF619:
	.string	"sbu_m"
.LASF153:
	.string	"xcv_outside"
.LASF224:
	.string	"PADLIST"
.LASF189:
	.string	"any_dxptr"
.LASF778:
	.string	"Perl_to_uni_lower_lc"
.LASF731:
	.string	"Perl_bytes_from_utf8"
.LASF878:
	.string	"PL_tmps_floor"
.LASF375:
	.string	"OP_UNSHIFT"
.LASF141:
	.string	"xgv_flags"
.LASF95:
	.string	"magic"
.LASF518:
	.string	"OP_TIME"
.LASF467:
	.string	"OP_FTEEXEC"
.LASF564:
	.string	"OP_SPWENT"
.LASF469:
	.string	"OP_FTEOWNED"
.LASF284:
	.string	"OP_I_DIVIDE"
.LASF305:
	.string	"OP_I_EQ"
.LASF723:
	.string	"Perl_utf8_to_uvchr"
.LASF741:
	.string	"Perl_utf16_to_utf8_reversed"
.LASF216:
	.string	"SVt_PVHV"
.LASF205:
	.string	"SVt_NULL"
.LASF768:
	.string	"Perl_is_uni_digit_lc"
.LASF811:
	.string	"pkg_len"
.LASF535:
	.string	"OP_REQUIRE"
.LASF175:
	.string	"mgvtbl"
.LASF251:
	.string	"OP_GLOB"
.LASF504:
	.string	"OP_SEEKDIR"
.LASF135:
	.string	"XPVGV"
.LASF434:
	.string	"OP_PRTF"
.LASF622:
	.string	"sbu_rx"
.LASF174:
	.string	"MGVTBL"
.LASF544:
	.string	"OP_GNBYNAME"
.LASF624:
	.string	"cx_subst"
.LASF623:
	.string	"cx_blk"
.LASF220:
	.string	"SVt_PVIO"
.LASF210:
	.string	"SVt_PVIV"
.LASF330:
	.string	"OP_LOG"
.LASF61:
	.string	"refcnt"
.LASF277:
	.string	"OP_I_POSTINC"
.LASF704:
	.string	"to_cv_amg"
.LASF614:
	.string	"sbu_rxtainted"
.LASF864:
	.string	"PL_utf8_tolower"
.LASF496:
	.string	"OP_LINK"
.LASF380:
	.string	"OP_MAPSTART"
.LASF673:
	.string	"ge_amg"
.LASF125:
	.string	"XPVHV"
.LASF7:
	.string	"sizetype"
.LASF304:
	.string	"OP_EQ"
.LASF231:
	.string	"OP_CONST"
.LASF38:
	.string	"op_pmnext"
.LASF516:
	.string	"OP_GETPRIORITY"
.LASF452:
	.string	"OP_CONNECT"
.LASF147:
	.string	"xcv_xsub"
.LASF519:
	.string	"OP_TMS"
.LASF584:
	.string	"hasargs"
.LASF394:
	.string	"OP_LEAVESUBLV"
.LASF458:
	.string	"OP_GETSOCKNAME"
.LASF23:
	.string	"op_private"
.LASF234:
	.string	"OP_GELEM"
.LASF344:
	.string	"OP_CHR"
.LASF687:
	.string	"dec_amg"
.LASF183:
	.string	"any_ptr"
.LASF1:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF875:
	.string	"PL_stack_base"
.LASF293:
	.string	"OP_STRINGIFY"
.LASF511:
	.string	"OP_EXEC"
.LASF291:
	.string	"OP_I_SUBTRACT"
.LASF156:
	.string	"XPVIO"
.LASF733:
	.string	"start"
.LASF772:
	.string	"Perl_is_uni_graph_lc"
.LASF108:
	.string	"XPVIV"
.LASF122:
	.string	"xav_alloc"
.LASF232:
	.string	"OP_GVSV"
.LASF612:
	.string	"sbu_oldsave"
.LASF129:
	.string	"xhv_max"
.LASF62:
	.string	"minlen"
.LASF263:
	.string	"OP_AASSIGN"
.LASF764:
	.string	"Perl_is_uni_idfirst_lc"
.LASF734:
	.string	"count"
.LASF437:
	.string	"OP_SYSSEEK"
.LASF121:
	.string	"xmg_stash"
.LASF534:
	.string	"OP_SEMOP"
.LASF611:
	.string	"sbu_rflags"
.LASF813:
	.string	"stash"
.LASF54:
	.string	"regstclass"
.LASF302:
	.string	"OP_GE"
.LASF132:
	.string	"xhv_eiter"
.LASF368:
	.string	"OP_LSLICE"
.LASF298:
	.string	"OP_GT"
.LASF233:
	.string	"OP_GV"
.LASF786:
	.string	"Perl_is_utf8_digit"
.LASF460:
	.string	"OP_LSTAT"
.LASF429:
	.string	"OP_SELECT"
.LASF523:
	.string	"OP_SLEEP"
.LASF830:
	.string	"Perl_sv_uni_display"
.LASF214:
	.string	"SVt_PVLV"
.LASF203:
	.string	"reg_substr_data"
.LASF679:
	.string	"sle_amg"
.LASF585:
	.string	"lval"
.LASF581:
	.string	"savearray"
.LASF601:
	.string	"iterlval"
.LASF648:
	.string	"add_amg"
.LASF230:
	.string	"OP_WANTARRAY"
.LASF876:
	.string	"PL_stack_max"
.LASF854:
	.string	"PL_utf8_graph"
.LASF295:
	.string	"OP_RIGHT_SHIFT"
.LASF753:
	.string	"Perl_is_uni_graph"
.LASF726:
	.string	"Perl_utf8_distance"
.LASF550:
	.string	"OP_GSBYNAME"
.LASF93:
	.string	"blk_u"
.LASF212:
	.string	"SVt_PVMG"
.LASF119:
	.string	"xof_off"
.LASF517:
	.string	"OP_SETPRIORITY"
.LASF651:
	.string	"subtr_ass_amg"
.LASF567:
	.string	"OP_GGRGID"
.LASF139:
	.string	"xgv_namelen"
.LASF35:
	.string	"op_last"
.LASF236:
	.string	"OP_PADAV"
.LASF197:
	.string	"__dirstream"
.LASF364:
	.string	"OP_PACK"
.LASF186:
	.string	"any_long"
.LASF728:
	.string	"Perl_utf8_to_bytes"
.LASF417:
	.string	"OP_OPEN"
.LASF872:
	.string	"PL_utf8_idcont"
.LASF877:
	.string	"PL_tmps_ix"
.LASF21:
	.string	"op_seq"
.LASF684:
	.string	"not_amg"
.LASF883:
	.string	"PL_curstack"
.LASF548:
	.string	"OP_GPBYNUMBER"
.LASF789:
	.string	"Perl_is_utf8_cntrl"
.LASF211:
	.string	"SVt_PVNV"
.LASF32:
	.string	"PMOP"
.LASF860:
	.string	"PL_utf8_xdigit"
.LASF351:
	.string	"OP_RV2AV"
.LASF499:
	.string	"OP_MKDIR"
.LASF440:
	.string	"OP_SEND"
.LASF478:
	.string	"OP_FTBLK"
.LASF66:
	.string	"lastcloseparen"
.LASF643:
	.string	"abs_amg"
.LASF491:
	.string	"OP_CHROOT"
.LASF874:
	.string	"PL_op"
.LASF172:
	.string	"xio_type"
.LASF465:
	.string	"OP_FTEREAD"
.LASF6:
	.string	"long int"
.LASF782:
	.string	"Perl_is_utf8_idcont"
.LASF179:
	.string	"svt_clear"
.LASF159:
	.string	"xio_ofp"
.LASF140:
	.string	"xgv_stash"
.LASF334:
	.string	"OP_OCT"
.LASF589:
	.string	"old_op_type"
.LASF289:
	.string	"OP_I_ADD"
.LASF36:
	.string	"op_pmreplroot"
.LASF151:
	.string	"xcv_depth"
.LASF77:
	.string	"gp_cvgen"
.LASF111:
	.string	"XPVNV"
.LASF131:
	.string	"xhv_riter"
.LASF92:
	.string	"blku_gimme"
.LASF594:
	.string	"label"
.LASF847:
	.string	"PL_in_my"
.LASF243:
	.string	"OP_RV2CV"
.LASF82:
	.string	"context"
.LASF580:
	.string	"dfoutgv"
.LASF677:
	.string	"scmp_amg"
.LASF477:
	.string	"OP_FTCHR"
.LASF376:
	.string	"OP_SORT"
.LASF349:
	.string	"OP_LC"
.LASF300:
	.string	"OP_LE"
.LASF551:
	.string	"OP_GSBYPORT"
.LASF37:
	.string	"op_pmreplstart"
.LASF577:
	.string	"OP_CUSTOM"
.LASF296:
	.string	"OP_LT"
.LASF318:
	.string	"OP_BIT_XOR"
.LASF397:
	.string	"OP_DIE"
.LASF260:
	.string	"OP_SUBSTCONT"
.LASF751:
	.string	"Perl_is_uni_lower"
.LASF206:
	.string	"SVt_IV"
.LASF282:
	.string	"OP_I_MULTIPLY"
.LASF200:
	.string	"regnode"
.LASF652:
	.string	"mult_amg"
.LASF326:
	.string	"OP_COS"
.LASF837:
	.string	"match"
.LASF17:
	.string	"op_sibling"
.LASF160:
	.string	"xio_dirpu"
.LASF732:
	.string	"is_utf8"
.LASF740:
	.string	"dstart"
.LASF185:
	.string	"any_iv"
.LASF353:
	.string	"OP_AELEM"
.LASF133:
	.string	"xhv_pmroot"
.LASF661:
	.string	"lshift_ass_amg"
.LASF323:
	.string	"OP_COMPLEMENT"
.LASF398:
	.string	"OP_RESET"
.LASF3:
	.string	"long unsigned int"
.LASF33:
	.string	"pmop"
.LASF475:
	.string	"OP_FTCTIME"
.LASF381:
	.string	"OP_MAPWHILE"
.LASF801:
	.string	"Perl_to_utf8_title"
.LASF473:
	.string	"OP_FTMTIME"
.LASF365:
	.string	"OP_SPLIT"
.LASF613:
	.string	"sbu_once"
.LASF321:
	.string	"OP_I_NEGATE"
.LASF502:
	.string	"OP_READDIR"
.LASF706:
	.string	"int_amg"
.LASF44:
	.string	"PerlInterpreter"
.LASF647:
	.string	"numer_amg"
.LASF656:
	.string	"modulo_amg"
.LASF306:
	.string	"OP_NE"
.LASF693:
	.string	"sqrt_amg"
.LASF696:
	.string	"concat_amg"
.LASF542:
	.string	"OP_GHBYADDR"
.LASF649:
	.string	"add_ass_amg"
.LASF8:
	.string	"char"
.LASF387:
	.string	"OP_XOR"
.LASF462:
	.string	"OP_FTRREAD"
.LASF582:
	.string	"argarray"
.LASF668:
	.string	"bxor_amg"
.LASF165:
	.string	"xio_top_name"
.LASF510:
	.string	"OP_SYSTEM"
.LASF792:
	.string	"Perl_is_utf8_punct"
.LASF861:
	.string	"PL_utf8_mark"
.LASF103:
	.string	"mg_len"
.LASF436:
	.string	"OP_SYSOPEN"
.LASF222:
	.string	"xiou_dirp"
.LASF138:
	.string	"xgv_name"
.LASF253:
	.string	"OP_RCATLINE"
.LASF386:
	.string	"OP_OR"
.LASF739:
	.string	"pend"
.LASF278:
	.string	"OP_POSTDEC"
.LASF655:
	.string	"div_ass_amg"
.LASF579:
	.string	"block_sub"
.LASF446:
	.string	"OP_FCNTL"
.LASF471:
	.string	"OP_FTZERO"
.LASF240:
	.string	"OP_RV2GV"
.LASF367:
	.string	"OP_LIST"
.LASF868:
	.string	"PL_last_swash_key"
.LASF161:
	.string	"xio_lines"
.LASF468:
	.string	"OP_FTIS"
.LASF756:
	.string	"Perl_is_uni_xdigit"
.LASF627:
	.string	"si_cxstack"
.LASF226:
	.string	"OP_NULL"
.LASF107:
	.string	"xpv_len"
.LASF20:
	.string	"op_type"
.LASF360:
	.string	"OP_RV2HV"
.LASF721:
	.string	"expectlen"
.LASF15:
	.string	"STRLEN"
.LASF880:
	.string	"PL_markstack_max"
.LASF483:
	.string	"OP_FTSUID"
.LASF823:
	.string	"code_point"
.LASF258:
	.string	"OP_QR"
.LASF342:
	.string	"OP_FORMLINE"
.LASF590:
	.string	"old_namesv"
.LASF509:
	.string	"OP_WAITPID"
.LASF207:
	.string	"SVt_NV"
.LASF339:
	.string	"OP_INDEX"
.LASF775:
	.string	"Perl_is_uni_xdigit_lc"
.LASF327:
	.string	"OP_RAND"
.LASF340:
	.string	"OP_RINDEX"
.LASF640:
	.string	"hek_key"
.LASF557:
	.string	"OP_EHOSTENT"
.LASF286:
	.string	"OP_I_MODULO"
.LASF707:
	.string	"DESTROY_amg"
.LASF150:
	.string	"xcv_file"
.LASF720:
	.string	"startbyte"
.LASF194:
	.string	"proto_perl"
.LASF591:
	.string	"old_eval_root"
.LASF362:
	.string	"OP_HSLICE"
.LASF285:
	.string	"OP_MODULO"
.LASF526:
	.string	"OP_SHMREAD"
.LASF480:
	.string	"OP_FTDIR"
.LASF714:
	.string	"send"
.LASF556:
	.string	"OP_SSERVENT"
.LASF688:
	.string	"atan2_amg"
.LASF225:
	.string	"PADOFFSET"
.LASF40:
	.string	"op_pmflags"
.LASF657:
	.string	"modulo_ass_amg"
.LASF605:
	.string	"blku_sub"
.LASF45:
	.string	"interpreter"
.LASF91:
	.string	"blku_oldpm"
.LASF749:
	.string	"Perl_is_uni_digit"
.LASF681:
	.string	"sge_amg"
.LASF34:
	.string	"op_first"
.LASF14:
	.string	"double"
.LASF818:
	.string	"do_utf8"
.LASF41:
	.string	"op_pmpermflags"
.LASF104:
	.string	"xrv_rv"
.LASF118:
	.string	"xav_max"
.LASF810:
	.string	"tokenbufsv"
.LASF10:
	.string	"ssize_t"
.LASF18:
	.string	"op_ppaddr"
.LASF574:
	.string	"OP_THREADSV"
.LASF685:
	.string	"compl_amg"
.LASF184:
	.string	"any_i32"
.LASF817:
	.string	"Perl_swash_fetch"
.LASF686:
	.string	"inc_amg"
.LASF699:
	.string	"neg_amg"
.LASF209:
	.string	"SVt_PV"
.LASF26:
	.string	"cop_filegv"
.LASF187:
	.string	"any_bool"
.LASF372:
	.string	"OP_PUSH"
.LASF348:
	.string	"OP_UC"
.LASF155:
	.string	"xcv_outside_seq"
.LASF742:
	.string	"Perl_is_uni_alnum"
.LASF275:
	.string	"OP_I_PREDEC"
.LASF57:
	.string	"data"
.LASF451:
	.string	"OP_BIND"
.LASF558:
	.string	"OP_ENETENT"
.LASF505:
	.string	"OP_REWINDDIR"
.LASF630:
	.string	"si_type"
.LASF116:
	.string	"xav_array"
.LASF208:
	.string	"SVt_RV"
.LASF841:
	.string	"PL_dowarn"
.LASF190:
	.string	"CLONE_PARAMS"
.LASF405:
	.string	"OP_SCOPE"
.LASF541:
	.string	"OP_GHBYNAME"
.LASF274:
	.string	"OP_PREDEC"
.LASF81:
	.string	"PERL_CONTEXT"
.LASF866:
	.string	"PL_last_swash_hv"
.LASF128:
	.string	"xhv_fill"
.LASF110:
	.string	"xiv_iv"
.LASF798:
	.string	"normal"
.LASF86:
	.string	"blku_oldsp"
.LASF660:
	.string	"lshift_amg"
.LASF508:
	.string	"OP_WAIT"
.LASF414:
	.string	"OP_DUMP"
.LASF694:
	.string	"repeat_amg"
.LASF262:
	.string	"OP_SASSIGN"
.LASF800:
	.string	"Perl_to_utf8_upper"
.LASF653:
	.string	"mult_ass_amg"
.LASF596:
	.string	"redo_op"
.LASF352:
	.string	"OP_AELEMFAST"
.LASF803:
	.string	"Perl_to_utf8_fold"
.LASF639:
	.string	"hek_len"
.LASF346:
	.string	"OP_UCFIRST"
.LASF497:
	.string	"OP_SYMLINK"
.LASF331:
	.string	"OP_SQRT"
.LASF743:
	.string	"tmpbuf"
.LASF529:
	.string	"OP_MSGCTL"
.LASF472:
	.string	"OP_FTSIZE"
.LASF12:
	.string	"long long unsigned int"
.LASF670:
	.string	"lt_amg"
.LASF442:
	.string	"OP_EOF"
.LASF598:
	.string	"last_op"
.LASF871:
	.string	"PL_utf8_idstart"
.LASF488:
	.string	"OP_FTBINARY"
.LASF461:
	.string	"OP_STAT"
.LASF361:
	.string	"OP_HELEM"
.LASF238:
	.string	"OP_PADANY"
.LASF242:
	.string	"OP_AV2ARYLEN"
.LASF448:
	.string	"OP_FLOCK"
.LASF343:
	.string	"OP_ORD"
.LASF182:
	.string	"svt_dup"
.LASF633:
	.string	"si_markoff"
.LASF229:
	.string	"OP_PUSHMARK"
.LASF828:
	.string	"pvlim"
.LASF536:
	.string	"OP_DOFILE"
.LASF166:
	.string	"xio_top_gv"
.LASF654:
	.string	"div_amg"
.LASF358:
	.string	"OP_DELETE"
.LASF808:
	.string	"none"
.LASF650:
	.string	"subtr_amg"
.LASF621:
	.string	"sbu_rxres"
.LASF884:
	.string	"PL_curstackinfo"
.LASF393:
	.string	"OP_LEAVESUB"
.LASF725:
	.string	"Perl_utf8_length"
.LASF235:
	.string	"OP_PADSV"
.LASF247:
	.string	"OP_SREFGEN"
.LASF415:
	.string	"OP_GOTO"
.LASF805:
	.string	"name"
.LASF43:
	.string	"op_pmstash"
.LASF793:
	.string	"Perl_is_utf8_xdigit"
.LASF176:
	.string	"svt_get"
.LASF710:
	.string	"Perl_uvuni_to_utf8"
.LASF72:
	.string	"gp_form"
.LASF859:
	.string	"PL_utf8_punct"
.LASF279:
	.string	"OP_I_POSTDEC"
.LASF755:
	.string	"Perl_is_uni_punct"
.LASF857:
	.string	"PL_utf8_lower"
.LASF809:
	.string	"retval"
.LASF241:
	.string	"OP_RV2SV"
.LASF87:
	.string	"blku_oldcop"
.LASF25:
	.string	"cop_stash"
.LASF249:
	.string	"OP_BLESS"
.LASF521:
	.string	"OP_GMTIME"
.LASF13:
	.string	"long long int"
.LASF195:
	.string	"line_t"
.LASF134:
	.string	"xhv_name"
.LASF487:
	.string	"OP_FTTEXT"
.LASF626:
	.string	"si_stack"
.LASF474:
	.string	"OP_FTATIME"
.LASF181:
	.string	"svt_copy"
.LASF373:
	.string	"OP_POP"
.LASF271:
	.string	"OP_POS"
.LASF280:
	.string	"OP_POW"
.LASF406:
	.string	"OP_ENTERITER"
.LASF246:
	.string	"OP_REFGEN"
.LASF845:
	.string	"PL_tokenbuf"
.LASF430:
	.string	"OP_GETC"
.LASF463:
	.string	"OP_FTRWRITE"
.LASF457:
	.string	"OP_SSOCKOPT"
.LASF83:
	.string	"cx_type"
.LASF124:
	.string	"xav_flags"
.LASF783:
	.string	"Perl_is_utf8_alpha"
.LASF563:
	.string	"OP_GPWENT"
.LASF752:
	.string	"Perl_is_uni_cntrl"
.LASF603:
	.string	"iterix"
.LASF553:
	.string	"OP_SHOSTENT"
.LASF411:
	.string	"OP_LAST"
.LASF120:
	.string	"xmg_magic"
.LASF357:
	.string	"OP_KEYS"
.LASF781:
	.string	"Perl_is_utf8_idfirst"
.LASF101:
	.string	"mg_obj"
.LASF816:
	.string	"prev"
.LASF540:
	.string	"OP_LEAVETRY"
.LASF188:
	.string	"any_dptr"
.LASF383:
	.string	"OP_FLIP"
.LASF700:
	.string	"to_sv_amg"
.LASF501:
	.string	"OP_OPEN_DIR"
.LASF115:
	.string	"xpvav"
.LASF39:
	.string	"op_pmregexp"
.LASF248:
	.string	"OP_REF"
.LASF450:
	.string	"OP_SOCKPAIR"
.LASF791:
	.string	"Perl_is_utf8_print"
.LASF869:
	.string	"PL_last_swash_tmps"
.LASF547:
	.string	"OP_GPBYNAME"
.LASF148:
	.string	"xcv_xsubany"
.LASF758:
	.string	"lenp"
.LASF835:
	.string	"foldlen1"
.LASF836:
	.string	"foldlen2"
.LASF779:
	.string	"Perl_is_utf8_alnum"
.LASF421:
	.string	"OP_UMASK"
.LASF164:
	.string	"xio_lines_left"
.LASF441:
	.string	"OP_RECV"
.LASF73:
	.string	"gp_av"
.LASF445:
	.string	"OP_TRUNCATE"
.LASF419:
	.string	"OP_PIPE_OP"
.LASF827:
	.string	"Perl_pv_uni_display"
.LASF565:
	.string	"OP_EPWENT"
.LASF814:
	.string	"errsv_save"
.LASF785:
	.string	"Perl_is_utf8_space"
.LASF863:
	.string	"PL_utf8_totitle"
.LASF593:
	.string	"block_loop"
.LASF244:
	.string	"OP_ANONCODE"
.LASF658:
	.string	"pow_amg"
.LASF261:
	.string	"OP_TRANS"
.LASF737:
	.string	"bytelen"
.LASF572:
	.string	"OP_SYSCALL"
.LASF881:
	.string	"PL_Xpv"
.LASF154:
	.string	"xcv_flags"
.LASF576:
	.string	"OP_METHOD_NAMED"
.LASF2:
	.string	"unsigned int"
.LASF610:
	.string	"sbu_maxiters"
.LASF143:
	.string	"xpvcv"
.LASF324:
	.string	"OP_ATAN2"
.LASF773:
	.string	"Perl_is_uni_print_lc"
.LASF369:
	.string	"OP_ANONLIST"
.LASF449:
	.string	"OP_SOCKET"
.LASF354:
	.string	"OP_ASLICE"
.LASF333:
	.string	"OP_HEX"
.LASF586:
	.string	"oldcomppad"
.LASF198:
	.string	"_PerlIO"
.LASF796:
	.string	"ustrp"
.LASF428:
	.string	"OP_SSELECT"
.LASF666:
	.string	"bor_amg"
.LASF744:
	.string	"Perl_is_uni_alnumc"
.LASF683:
	.string	"sne_amg"
.LASF528:
	.string	"OP_MSGGET"
.LASF5:
	.string	"short int"
.LASF76:
	.string	"gp_cv"
.LASF806:
	.string	"listsv"
.LASF350:
	.string	"OP_QUOTEMETA"
.LASF514:
	.string	"OP_GETPGRP"
.LASF583:
	.string	"olddepth"
.LASF308:
	.string	"OP_NCMP"
.LASF539:
	.string	"OP_ENTERTRY"
.LASF493:
	.string	"OP_CHMOD"
.LASF819:
	.string	"klen"
.LASF329:
	.string	"OP_EXP"
.LASF345:
	.string	"OP_CRYPT"
.LASF718:
	.string	"retlen"
.LASF494:
	.string	"OP_UTIME"
.LASF690:
	.string	"sin_amg"
.LASF196:
	.string	"PerlIOl"
.LASF392:
	.string	"OP_ENTERSUB"
.LASF193:
	.string	"flags"
.LASF341:
	.string	"OP_SPRINTF"
.LASF255:
	.string	"OP_REGCRESET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
