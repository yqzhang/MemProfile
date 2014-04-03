	.file	"shuffle.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 shuffle.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	StrShuffle
	.type	StrShuffle, @function
StrShuffle:
.LFB2:
	.file 1 "shuffle.c"
	.loc 1 60 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 65 0
	movq	-24(%rbp), %rax	# s1, tmp76
	cmpq	-32(%rbp), %rax	# s2, tmp76
	je	.L2	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# s2, tmp77
	movq	-24(%rbp), %rax	# s1, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	strcpy	#
.L2:
	.loc 1 66 0 is_stmt 1
	movq	-24(%rbp), %rax	# s1, tmp79
	movq	%rax, %rdi	# tmp79,
	call	strlen	#
	movl	%eax, -8(%rbp)	# D.6716, len
	jmp	.L3	#
.L4:
	.loc 1 68 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-8(%rbp), %xmm1	# len, D.6717
	mulsd	%xmm1, %xmm0	# D.6717, D.6717
	cvttsd2si	%xmm0, %eax	# D.6717, tmp80
	movl	%eax, -4(%rbp)	# tmp80, pos
	.loc 1 69 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp81
	movslq	%eax, %rdx	# tmp81, D.6718
	movq	-24(%rbp), %rax	# s1, tmp82
	addq	%rdx, %rax	# D.6718, D.6719
	movzbl	(%rax), %eax	# *_11, tmp83
	movb	%al, -9(%rbp)	# tmp83, c
	.loc 1 70 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp84
	movslq	%eax, %rdx	# tmp84, D.6718
	movq	-24(%rbp), %rax	# s1, tmp85
	addq	%rax, %rdx	# tmp85, D.6719
	movl	-8(%rbp), %eax	# len, tmp86
	cltq
	leaq	-1(%rax), %rcx	#, D.6718
	movq	-24(%rbp), %rax	# s1, tmp87
	addq	%rcx, %rax	# D.6718, D.6719
	movzbl	(%rax), %eax	# *_17, D.6720
	movb	%al, (%rdx)	# D.6720, *_14
	.loc 1 71 0 discriminator 2
	movl	-8(%rbp), %eax	# len, tmp88
	cltq
	leaq	-1(%rax), %rdx	#, D.6718
	movq	-24(%rbp), %rax	# s1, tmp89
	addq	%rax, %rdx	# tmp89, D.6719
	movzbl	-9(%rbp), %eax	# c, tmp90
	movb	%al, (%rdx)	# tmp90, *_21
	.loc 1 66 0 discriminator 2
	subl	$1, -8(%rbp)	#, len
.L3:
	.loc 1 66 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, len
	jg	.L4	#,
	.loc 1 73 0 is_stmt 1
	movl	$1, %eax	#, D.6721
	.loc 1 74 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	StrShuffle, .-StrShuffle
	.section	.rodata
.LC0:
	.string	"shuffle.c"
.LC1:
	.string	"hey, you didn't end on s_f."
.LC2:
	.string	"hey, pos (%d) != len (%d)."
	.text
	.globl	StrDPShuffle
	.type	StrDPShuffle, @function
StrDPShuffle:
.LFB3:
	.loc 1 101 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)	# s1, s1
	movq	%rsi, -144(%rbp)	# s2, s2
	.loc 1 101 0
	movq	%fs:40, %rax	#, tmp380
	movq	%rax, -24(%rbp)	# tmp380, D.6735
	xorl	%eax, %eax	# tmp380
	.loc 1 116 0
	movq	-144(%rbp), %rax	# s2, tmp265
	movq	%rax, %rdi	# tmp265,
	call	strlen	#
	movl	%eax, -96(%rbp)	# D.6723, len
	.loc 1 117 0
	movl	$0, -116(%rbp)	#, pos
	jmp	.L7	#
.L10:
	.loc 1 118 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_23, D.6725
	movl	-116(%rbp), %edx	# pos, tmp266
	movslq	%edx, %rcx	# tmp266, D.6726
	movq	-144(%rbp), %rdx	# s2, tmp267
	addq	%rcx, %rdx	# D.6726, D.6727
	movzbl	(%rdx), %edx	# *_26, D.6728
	movsbq	%dl, %rdx	# D.6728, D.6723
	addq	%rdx, %rdx	# D.6723
	addq	%rdx, %rax	# D.6723, D.6725
	movzwl	(%rax), %eax	# *_30, D.6729
	movzwl	%ax, %eax	# D.6729, D.6722
	andl	$1024, %eax	#, D.6722
	testl	%eax, %eax	# D.6722
	jne	.L8	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6722
	jmp	.L45	#
.L8:
	.loc 1 117 0 is_stmt 1
	addl	$1, -116(%rbp)	#, pos
.L7:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# pos, tmp268
	cmpl	-96(%rbp), %eax	# len, tmp268
	jl	.L10	#,
	.loc 1 127 0 is_stmt 1
	movl	$208, %edx	#,
	movl	$127, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -88(%rbp)	# tmp269, E
	.loc 1 128 0
	movl	$104, %edx	#,
	movl	$128, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -80(%rbp)	# tmp270, nE
	.loc 1 129 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L11	#
.L12:
	.loc 1 131 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp271
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp272
	leaq	(%rdx,%rax), %rbx	#, D.6730
	movl	-96(%rbp), %eax	# len, tmp273
	subl	$1, %eax	#, D.6722
	cltq
	movq	%rax, %rdx	# D.6723,
	movl	$131, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6731, *_41
	.loc 1 132 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp274
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp275
	addq	%rdx, %rax	# D.6723, D.6732
	movl	$0, (%rax)	#, *_47
	.loc 1 129 0 discriminator 2
	addl	$1, -112(%rbp)	#, x
.L11:
	.loc 1 129 0 is_stmt 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L12	#,
	.loc 1 135 0 is_stmt 1
	movq	-144(%rbp), %rax	# s2, tmp276
	movzbl	(%rax), %eax	# *s2_19(D), D.6728
	movsbl	%al, %eax	# D.6728, D.6722
	movl	%eax, %edi	# D.6722,
	call	toupper	#
	subl	$65, %eax	#, tmp277
	movl	%eax, -112(%rbp)	# tmp277, x
	.loc 1 136 0
	movl	$1, -116(%rbp)	#, pos
	jmp	.L13	#
.L14:
	.loc 1 138 0 discriminator 2
	movl	-116(%rbp), %eax	# pos, tmp278
	movslq	%eax, %rdx	# tmp278, D.6726
	movq	-144(%rbp), %rax	# s2, tmp279
	addq	%rdx, %rax	# D.6726, D.6727
	movzbl	(%rax), %eax	# *_55, D.6728
	movsbl	%al, %eax	# D.6728, D.6722
	movl	%eax, %edi	# D.6722,
	call	toupper	#
	subl	$65, %eax	#, tmp280
	movl	%eax, -92(%rbp)	# tmp280, y
	.loc 1 139 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp281
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp282
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_62, D.6727
	movl	-112(%rbp), %eax	# x, tmp283
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp284
	addq	%rcx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_66, D.6722
	cltq
	addq	%rax, %rdx	# D.6726, D.6727
	movl	-92(%rbp), %eax	# y, tmp285
	movb	%al, (%rdx)	# D.6728, *_69
	.loc 1 140 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp286
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp287
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %edx	# *_73, D.6722
	addl	$1, %edx	#, D.6722
	movl	%edx, (%rax)	# D.6722, *_73
	.loc 1 141 0 discriminator 2
	movl	-92(%rbp), %eax	# y, tmp288
	movl	%eax, -112(%rbp)	# tmp288, x
	.loc 1 136 0 discriminator 2
	addl	$1, -116(%rbp)	#, pos
.L13:
	.loc 1 136 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# pos, tmp289
	cmpl	-96(%rbp), %eax	# len, tmp289
	jl	.L14	#,
	.loc 1 146 0 is_stmt 1
	movl	-96(%rbp), %eax	# len, tmp290
	cltq
	leaq	-1(%rax), %rdx	#, D.6726
	movq	-144(%rbp), %rax	# s2, tmp291
	addq	%rdx, %rax	# D.6726, D.6727
	movzbl	(%rax), %eax	# *_80, D.6728
	movsbl	%al, %eax	# D.6728, D.6722
	movl	%eax, %edi	# D.6722,
	call	toupper	#
	subl	$65, %eax	#, D.6733
	movb	%al, -117(%rbp)	# D.6733, sf
	.loc 1 147 0
	movl	$0, -100(%rbp)	#, is_eulerian
	.loc 1 148 0
	jmp	.L15	#
.L33:
	.loc 1 157 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L16	#
.L20:
	.loc 1 159 0
	movl	-112(%rbp), %eax	# x, tmp292
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp293
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_91, D.6722
	testl	%eax, %eax	# D.6722
	je	.L17	#,
	.loc 1 159 0 is_stmt 0 discriminator 2
	movsbl	-117(%rbp), %eax	# sf, D.6722
	cmpl	-112(%rbp), %eax	# x, D.6722
	jne	.L18	#,
.L17:
	.loc 1 159 0 discriminator 1
	jmp	.L19	#
.L18:
	.loc 1 161 0 is_stmt 1
	call	sre_random	#
	movl	-112(%rbp), %eax	# x, tmp294
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp295
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_97, D.6722
	cvtsi2sd	%eax, %xmm1	# D.6722, D.6734
	mulsd	%xmm1, %xmm0	# D.6734, D.6734
	cvttsd2si	%xmm0, %eax	# D.6734, tmp296
	movl	%eax, -116(%rbp)	# tmp296, pos
	.loc 1 162 0
	movl	-112(%rbp), %eax	# x, tmp297
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp298
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_104, D.6727
	movl	-116(%rbp), %eax	# pos, tmp299
	cltq
	addq	%rdx, %rax	# D.6727, D.6727
	movzbl	(%rax), %eax	# *_107, D.6728
	movsbl	%al, %eax	# D.6728, tmp300
	movl	%eax, -92(%rbp)	# tmp300, y
	.loc 1 163 0
	movl	-112(%rbp), %eax	# x, tmp301
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp302
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_112, D.6727
	movl	-116(%rbp), %eax	# pos, tmp303
	cltq
	addq	%rax, %rdx	# D.6726, D.6727
	movl	-112(%rbp), %eax	# x, tmp304
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp305
	addq	%rcx, %rax	# D.6723, D.6730
	movq	(%rax), %rax	# *_118, D.6727
	movl	-112(%rbp), %ecx	# x, tmp306
	movslq	%ecx, %rcx	# tmp306, D.6723
	leaq	0(,%rcx,4), %rsi	#, D.6723
	movq	-80(%rbp), %rcx	# nE, tmp307
	addq	%rsi, %rcx	# D.6723, D.6732
	movl	(%rcx), %ecx	# *_122, D.6722
	movslq	%ecx, %rcx	# D.6722, D.6726
	subq	$1, %rcx	#, D.6726
	addq	%rcx, %rax	# D.6726, D.6727
	movzbl	(%rax), %eax	# *_126, D.6728
	movb	%al, (%rdx)	# D.6728, *_115
	.loc 1 164 0
	movl	-112(%rbp), %eax	# x, tmp308
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp309
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rax	# *_130, D.6727
	movl	-112(%rbp), %edx	# x, tmp310
	movslq	%edx, %rdx	# tmp310, D.6723
	leaq	0(,%rdx,4), %rcx	#, D.6723
	movq	-80(%rbp), %rdx	# nE, tmp311
	addq	%rcx, %rdx	# D.6723, D.6732
	movl	(%rdx), %edx	# *_134, D.6722
	movslq	%edx, %rdx	# D.6722, D.6726
	subq	$1, %rdx	#, D.6726
	addq	%rax, %rdx	# D.6727, D.6727
	movl	-92(%rbp), %eax	# y, tmp312
	movb	%al, (%rdx)	# D.6728, *_138
.L19:
	.loc 1 157 0
	addl	$1, -112(%rbp)	#, x
.L16:
	.loc 1 157 0 is_stmt 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L20	#,
	.loc 1 176 0 is_stmt 1
	movl	$0, -112(%rbp)	#, x
	jmp	.L21	#
.L22:
	.loc 1 176 0 is_stmt 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp314
	cltq
	movb	$0, -64(%rbp,%rax)	#, Z
	addl	$1, -112(%rbp)	#, x
.L21:
	.loc 1 176 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L22	#,
	.loc 1 177 0 is_stmt 1
	movl	$1, -104(%rbp)	#, keep_connecting
	movsbl	-117(%rbp), %eax	# sf, D.6722
	cltq
	movb	$1, -64(%rbp,%rax)	#, Z
	.loc 1 179 0
	jmp	.L23	#
.L27:
	.loc 1 180 0
	movl	$0, -104(%rbp)	#, keep_connecting
	.loc 1 181 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L24	#
.L26:
	.loc 1 183 0
	movl	-112(%rbp), %eax	# x, tmp316
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp317
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rax	# *_149, D.6727
	movl	-112(%rbp), %edx	# x, tmp318
	movslq	%edx, %rdx	# tmp318, D.6723
	leaq	0(,%rdx,4), %rcx	#, D.6723
	movq	-80(%rbp), %rdx	# nE, tmp319
	addq	%rcx, %rdx	# D.6723, D.6732
	movl	(%rdx), %edx	# *_153, D.6722
	movslq	%edx, %rdx	# D.6722, D.6726
	subq	$1, %rdx	#, D.6726
	addq	%rdx, %rax	# D.6726, D.6727
	movzbl	(%rax), %eax	# *_157, D.6728
	movsbl	%al, %eax	# D.6728, tmp320
	movl	%eax, -92(%rbp)	# tmp320, y
	.loc 1 184 0
	movl	-112(%rbp), %eax	# x, tmp322
	cltq
	movzbl	-64(%rbp,%rax), %eax	# Z, D.6728
	testb	%al, %al	# D.6728
	jne	.L25	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# y, tmp324
	cltq
	movzbl	-64(%rbp,%rax), %eax	# Z, D.6728
	cmpb	$1, %al	#, D.6728
	jne	.L25	#,
	.loc 1 186 0 is_stmt 1
	movl	-112(%rbp), %eax	# x, tmp326
	cltq
	movb	$1, -64(%rbp,%rax)	#, Z
	.loc 1 187 0
	movl	$1, -104(%rbp)	#, keep_connecting
.L25:
	.loc 1 181 0
	addl	$1, -112(%rbp)	#, x
.L24:
	.loc 1 181 0 is_stmt 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L26	#,
.L23:
	.loc 1 179 0 is_stmt 1 discriminator 1
	cmpl	$0, -104(%rbp)	#, keep_connecting
	jne	.L27	#,
	.loc 1 196 0
	movl	$1, -100(%rbp)	#, is_eulerian
	.loc 1 197 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L28	#
.L32:
	.loc 1 199 0
	movl	-112(%rbp), %eax	# x, tmp327
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp328
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_168, D.6722
	testl	%eax, %eax	# D.6722
	je	.L29	#,
	.loc 1 199 0 is_stmt 0 discriminator 2
	movsbl	-117(%rbp), %eax	# sf, D.6722
	cmpl	-112(%rbp), %eax	# x, D.6722
	jne	.L30	#,
.L29:
	.loc 1 199 0 discriminator 1
	jmp	.L31	#
.L30:
	.loc 1 200 0 is_stmt 1
	movl	-112(%rbp), %eax	# x, tmp330
	cltq
	movzbl	-64(%rbp,%rax), %eax	# Z, D.6728
	testb	%al, %al	# D.6728
	jne	.L31	#,
	.loc 1 201 0
	movl	$0, -100(%rbp)	#, is_eulerian
	.loc 1 202 0
	jmp	.L15	#
.L31:
	.loc 1 197 0
	addl	$1, -112(%rbp)	#, x
.L28:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L32	#,
.L15:
	.loc 1 148 0 is_stmt 1 discriminator 1
	cmpl	$0, -100(%rbp)	#, is_eulerian
	je	.L33	#,
	.loc 1 224 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L34	#
.L37:
	.loc 1 225 0
	movl	-112(%rbp), %eax	# x, tmp331
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp332
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_177, D.6722
	subl	$1, %eax	#, tmp333
	movl	%eax, -108(%rbp)	# tmp333, n
	jmp	.L35	#
.L36:
	.loc 1 227 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-108(%rbp), %xmm1	# n, D.6734
	mulsd	%xmm1, %xmm0	# D.6734, D.6734
	cvttsd2si	%xmm0, %eax	# D.6734, tmp334
	movl	%eax, -116(%rbp)	# tmp334, pos
	.loc 1 228 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp335
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp336
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_186, D.6727
	movl	-116(%rbp), %eax	# pos, tmp337
	cltq
	addq	%rdx, %rax	# D.6727, D.6727
	movzbl	(%rax), %eax	# *_189, D.6728
	movsbl	%al, %eax	# D.6728, tmp338
	movl	%eax, -92(%rbp)	# tmp338, y
	.loc 1 229 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp339
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp340
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_194, D.6727
	movl	-116(%rbp), %eax	# pos, tmp341
	cltq
	addq	%rax, %rdx	# D.6726, D.6727
	movl	-112(%rbp), %eax	# x, tmp342
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp343
	addq	%rcx, %rax	# D.6723, D.6730
	movq	(%rax), %rax	# *_200, D.6727
	movl	-108(%rbp), %ecx	# n, tmp344
	movslq	%ecx, %rcx	# tmp344, D.6726
	subq	$1, %rcx	#, D.6726
	addq	%rcx, %rax	# D.6726, D.6727
	movzbl	(%rax), %eax	# *_204, D.6728
	movb	%al, (%rdx)	# D.6728, *_197
	.loc 1 230 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp345
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp346
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rax	# *_208, D.6727
	movl	-108(%rbp), %edx	# n, tmp347
	movslq	%edx, %rdx	# tmp347, D.6726
	subq	$1, %rdx	#, D.6726
	addq	%rax, %rdx	# D.6727, D.6727
	movl	-92(%rbp), %eax	# y, tmp348
	movb	%al, (%rdx)	# D.6728, *_212
	.loc 1 225 0 discriminator 2
	subl	$1, -108(%rbp)	#, n
.L35:
	.loc 1 225 0 is_stmt 0 discriminator 1
	cmpl	$1, -108(%rbp)	#, n
	jg	.L36	#,
	.loc 1 224 0 is_stmt 1
	addl	$1, -112(%rbp)	#, x
.L34:
	.loc 1 224 0 is_stmt 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L37	#,
	.loc 1 240 0 is_stmt 1
	movl	$104, %edx	#,
	movl	$240, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -72(%rbp)	# tmp349, iE
	.loc 1 241 0
	movl	$0, -112(%rbp)	#, x
	jmp	.L38	#
.L39:
	.loc 1 241 0 is_stmt 0 discriminator 2
	movl	-112(%rbp), %eax	# x, tmp350
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-72(%rbp), %rax	# iE, tmp351
	addq	%rdx, %rax	# D.6723, D.6732
	movl	$0, (%rax)	#, *_220
	addl	$1, -112(%rbp)	#, x
.L38:
	.loc 1 241 0 discriminator 1
	cmpl	$25, -112(%rbp)	#, x
	jle	.L39	#,
	.loc 1 243 0 is_stmt 1
	movl	$0, -116(%rbp)	#, pos
	.loc 1 244 0
	movq	-144(%rbp), %rax	# s2, tmp352
	movzbl	(%rax), %eax	# *s2_19(D), D.6728
	movsbl	%al, %eax	# D.6728, D.6722
	movl	%eax, %edi	# D.6722,
	call	toupper	#
	subl	$65, %eax	#, tmp353
	movl	%eax, -112(%rbp)	# tmp353, x
.L42:
	.loc 1 247 0
	movl	-116(%rbp), %eax	# pos, pos.0
	leal	1(%rax), %edx	#, tmp354
	movl	%edx, -116(%rbp)	# tmp354, pos
	movslq	%eax, %rdx	# pos.0, D.6726
	movq	-136(%rbp), %rax	# s1, tmp355
	addq	%rax, %rdx	# tmp355, D.6727
	movl	-112(%rbp), %eax	# x, tmp356
	addl	$65, %eax	#, D.6733
	movb	%al, (%rdx)	# D.6728, *_231
	.loc 1 249 0
	movl	-112(%rbp), %eax	# x, tmp357
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6723
	movq	-88(%rbp), %rax	# E, tmp358
	addq	%rdx, %rax	# D.6723, D.6730
	movq	(%rax), %rdx	# *_237, D.6727
	movl	-112(%rbp), %eax	# x, tmp359
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6723
	movq	-72(%rbp), %rax	# iE, tmp360
	addq	%rcx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_241, D.6722
	cltq
	addq	%rdx, %rax	# D.6727, D.6727
	movzbl	(%rax), %eax	# *_244, D.6728
	movsbl	%al, %eax	# D.6728, tmp361
	movl	%eax, -92(%rbp)	# tmp361, y
	.loc 1 250 0
	movl	-112(%rbp), %eax	# x, tmp362
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-72(%rbp), %rax	# iE, tmp363
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %edx	# *_249, D.6722
	addl	$1, %edx	#, D.6722
	movl	%edx, (%rax)	# D.6722, *_249
	.loc 1 252 0
	movl	-92(%rbp), %eax	# y, tmp364
	movl	%eax, -112(%rbp)	# tmp364, x
	.loc 1 254 0
	movl	-112(%rbp), %eax	# x, tmp365
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6723
	movq	-72(%rbp), %rax	# iE, tmp366
	addq	%rdx, %rax	# D.6723, D.6732
	movl	(%rax), %edx	# *_255, D.6722
	movl	-112(%rbp), %eax	# x, tmp367
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6723
	movq	-80(%rbp), %rax	# nE, tmp368
	addq	%rcx, %rax	# D.6723, D.6732
	movl	(%rax), %eax	# *_259, D.6722
	cmpl	%eax, %edx	# D.6722, D.6722
	jne	.L40	#,
	.loc 1 255 0
	nop
	.loc 1 257 0
	movl	-116(%rbp), %eax	# pos, pos.1
	leal	1(%rax), %edx	#, tmp369
	movl	%edx, -116(%rbp)	# tmp369, pos
	movslq	%eax, %rdx	# pos.1, D.6726
	movq	-136(%rbp), %rax	# s1, tmp370
	addq	%rax, %rdx	# tmp370, D.6727
	movzbl	-117(%rbp), %eax	# sf, sf.2
	addl	$65, %eax	#, D.6733
	movb	%al, (%rdx)	# D.6728, *_264
	.loc 1 258 0
	movl	-116(%rbp), %eax	# pos, tmp371
	movslq	%eax, %rdx	# tmp371, D.6726
	movq	-136(%rbp), %rax	# s1, tmp372
	addq	%rdx, %rax	# D.6726, D.6727
	movb	$0, (%rax)	#, *_269
	.loc 1 262 0
	movsbl	-117(%rbp), %eax	# sf, D.6722
	cmpl	-112(%rbp), %eax	# x, D.6722
	je	.L43	#,
	jmp	.L47	#
.L40:
	.loc 1 256 0
	jmp	.L42	#
.L47:
	.loc 1 262 0 discriminator 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L43:
	.loc 1 263 0
	movl	-116(%rbp), %eax	# pos, tmp373
	cmpl	-96(%rbp), %eax	# len, tmp373
	je	.L44	#,
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %edx	# len, tmp374
	movl	-116(%rbp), %eax	# pos, tmp375
	movl	%eax, %esi	# tmp375,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L44:
	.loc 1 267 0 is_stmt 1
	movq	-88(%rbp), %rax	# E, tmp376
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp376,
	call	Free2DArray	#
	.loc 1 268 0
	movq	-80(%rbp), %rax	# nE, tmp377
	movq	%rax, %rdi	# tmp377,
	call	free	#
	.loc 1 269 0
	movq	-72(%rbp), %rax	# iE, tmp378
	movq	%rax, %rdi	# tmp378,
	call	free	#
	.loc 1 270 0
	movl	$1, %eax	#, D.6722
.L45:
	.loc 1 271 0
	movq	-24(%rbp), %rbx	# D.6735, tmp381
	xorq	%fs:40, %rbx	#, tmp381
	je	.L46	#,
	call	__stack_chk_fail	#
.L46:
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	StrDPShuffle, .-StrDPShuffle
	.globl	StrMarkov0
	.type	StrMarkov0, @function
StrMarkov0:
.LFB4:
	.loc 1 291 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)	# s1, s1
	movq	%rsi, -160(%rbp)	# s2, s2
	.loc 1 298 0
	movq	-160(%rbp), %rax	# s2, tmp95
	movq	%rax, %rdi	# tmp95,
	call	strlen	#
	movl	%eax, -132(%rbp)	# D.6742, len
	.loc 1 299 0
	movl	$0, -136(%rbp)	#, pos
	jmp	.L49	#
.L52:
	.loc 1 300 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_9, D.6744
	movl	-136(%rbp), %edx	# pos, tmp96
	movslq	%edx, %rcx	# tmp96, D.6745
	movq	-160(%rbp), %rdx	# s2, tmp97
	addq	%rcx, %rdx	# D.6745, D.6746
	movzbl	(%rdx), %edx	# *_12, D.6747
	movsbq	%dl, %rdx	# D.6747, D.6742
	addq	%rdx, %rdx	# D.6742
	addq	%rdx, %rax	# D.6742, D.6744
	movzwl	(%rax), %eax	# *_16, D.6748
	movzwl	%ax, %eax	# D.6748, D.6741
	andl	$1024, %eax	#, D.6741
	testl	%eax, %eax	# D.6741
	jne	.L50	#,
	.loc 1 300 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6741
	jmp	.L57	#
.L50:
	.loc 1 299 0 is_stmt 1
	addl	$1, -136(%rbp)	#, pos
.L49:
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# pos, tmp98
	cmpl	-132(%rbp), %eax	# len, tmp98
	jl	.L52	#,
	.loc 1 304 0 is_stmt 1
	leaq	-128(%rbp), %rax	#, tmp99
	xorps	%xmm0, %xmm0	#
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	FSet	#
	.loc 1 305 0
	movl	$0, -136(%rbp)	#, pos
	jmp	.L53	#
.L54:
	.loc 1 306 0 discriminator 2
	movl	-136(%rbp), %eax	# pos, tmp100
	movslq	%eax, %rdx	# tmp100, D.6745
	movq	-160(%rbp), %rax	# s2, tmp101
	addq	%rdx, %rax	# D.6745, D.6746
	movzbl	(%rax), %eax	# *_24, D.6747
	movsbl	%al, %eax	# D.6747, D.6741
	movl	%eax, %edi	# D.6741,
	call	toupper	#
	leal	-65(%rax), %ebx	#, D.6741
	movl	-136(%rbp), %eax	# pos, tmp102
	movslq	%eax, %rdx	# tmp102, D.6745
	movq	-160(%rbp), %rax	# s2, tmp103
	addq	%rdx, %rax	# D.6745, D.6746
	movzbl	(%rax), %eax	# *_30, D.6747
	movsbl	%al, %eax	# D.6747, D.6741
	movl	%eax, %edi	# D.6741,
	call	toupper	#
	subl	$65, %eax	#, D.6741
	cltq
	movss	-128(%rbp,%rax,4), %xmm1	# p, D.6749
	movss	.LC4(%rip), %xmm0	#, tmp105
	addss	%xmm1, %xmm0	# D.6749, D.6749
	movslq	%ebx, %rax	# D.6741, tmp106
	movss	%xmm0, -128(%rbp,%rax,4)	# D.6749, p
	.loc 1 305 0 discriminator 2
	addl	$1, -136(%rbp)	#, pos
.L53:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# pos, tmp107
	cmpl	-132(%rbp), %eax	# len, tmp107
	jl	.L54	#,
	.loc 1 307 0 is_stmt 1
	leaq	-128(%rbp), %rax	#, tmp108
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	FNorm	#
	.loc 1 311 0
	movl	$0, -136(%rbp)	#, pos
	jmp	.L55	#
.L56:
	.loc 1 312 0 discriminator 2
	movl	-136(%rbp), %eax	# pos, tmp109
	movslq	%eax, %rdx	# tmp109, D.6745
	movq	-152(%rbp), %rax	# s1, tmp110
	leaq	(%rdx,%rax), %rbx	#, D.6746
	leaq	-128(%rbp), %rax	#, tmp111
	movl	$26, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	FChoose	#
	addl	$65, %eax	#, D.6750
	movb	%al, (%rbx)	# D.6747, *_41
	.loc 1 311 0 discriminator 2
	addl	$1, -136(%rbp)	#, pos
.L55:
	.loc 1 311 0 is_stmt 0 discriminator 1
	movl	-136(%rbp), %eax	# pos, tmp112
	cmpl	-132(%rbp), %eax	# len, tmp112
	jl	.L56	#,
	.loc 1 313 0 is_stmt 1
	movl	-136(%rbp), %eax	# pos, tmp113
	movslq	%eax, %rdx	# tmp113, D.6745
	movq	-152(%rbp), %rax	# s1, tmp114
	addq	%rdx, %rax	# D.6745, D.6746
	movb	$0, (%rax)	#, *_48
	.loc 1 315 0
	movl	$1, %eax	#, D.6741
.L57:
	.loc 1 316 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	StrMarkov0, .-StrMarkov0
	.globl	StrMarkov1
	.type	StrMarkov1, @function
StrMarkov1:
.LFB5:
	.loc 1 336 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$2752, %rsp	#,
	movq	%rdi, -2744(%rbp)	# s1, s1
	movq	%rsi, -2752(%rbp)	# s2, s2
	.loc 1 345 0
	movq	-2752(%rbp), %rax	# s2, tmp96
	movq	%rax, %rdi	# tmp96,
	call	strlen	#
	movl	%eax, -2716(%rbp)	# D.6752, len
	.loc 1 346 0
	movl	$0, -2724(%rbp)	#, pos
	jmp	.L59	#
.L62:
	.loc 1 347 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_13, D.6754
	movl	-2724(%rbp), %edx	# pos, tmp97
	movslq	%edx, %rcx	# tmp97, D.6755
	movq	-2752(%rbp), %rdx	# s2, tmp98
	addq	%rcx, %rdx	# D.6755, D.6756
	movzbl	(%rdx), %edx	# *_16, D.6757
	movsbq	%dl, %rdx	# D.6757, D.6752
	addq	%rdx, %rdx	# D.6752
	addq	%rdx, %rax	# D.6752, D.6754
	movzwl	(%rax), %eax	# *_20, D.6758
	movzwl	%ax, %eax	# D.6758, D.6751
	andl	$1024, %eax	#, D.6751
	testl	%eax, %eax	# D.6751
	jne	.L60	#,
	.loc 1 347 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6751
	jmp	.L71	#
.L60:
	.loc 1 346 0 is_stmt 1
	addl	$1, -2724(%rbp)	#, pos
.L59:
	.loc 1 346 0 is_stmt 0 discriminator 1
	movl	-2724(%rbp), %eax	# pos, tmp99
	cmpl	-2716(%rbp), %eax	# len, tmp99
	jl	.L62	#,
	.loc 1 351 0 is_stmt 1
	movl	$0, -2720(%rbp)	#, x
	jmp	.L63	#
.L64:
	.loc 1 351 0 is_stmt 0 discriminator 2
	leaq	-2704(%rbp), %rcx	#, tmp100
	movl	-2720(%rbp), %eax	# x, tmp102
	movslq	%eax, %rdx	# tmp102, tmp101
	movq	%rdx, %rax	# tmp101, tmp103
	addq	%rax, %rax	# tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# tmp101, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# tmp100, D.6759
	xorps	%xmm0, %xmm0	#
	movl	$26, %esi	#,
	movq	%rax, %rdi	# D.6759,
	call	FSet	#
	addl	$1, -2720(%rbp)	#, x
.L63:
	.loc 1 351 0 discriminator 1
	cmpl	$25, -2720(%rbp)	#, x
	jle	.L64	#,
	.loc 1 353 0 is_stmt 1
	movq	-2752(%rbp), %rax	# s2, tmp105
	movzbl	(%rax), %eax	# *s2_9(D), D.6757
	movsbl	%al, %eax	# D.6757, D.6751
	movl	%eax, %edi	# D.6751,
	call	toupper	#
	subl	$65, %eax	#, tmp106
	movl	%eax, -2720(%rbp)	# tmp106, x
	movl	-2720(%rbp), %eax	# x, tmp107
	movl	%eax, -2712(%rbp)	# tmp107, i
	.loc 1 354 0
	movl	$1, -2724(%rbp)	#, pos
	jmp	.L65	#
.L66:
	.loc 1 356 0 discriminator 2
	movl	-2724(%rbp), %eax	# pos, tmp108
	movslq	%eax, %rdx	# tmp108, D.6755
	movq	-2752(%rbp), %rax	# s2, tmp109
	addq	%rdx, %rax	# D.6755, D.6756
	movzbl	(%rax), %eax	# *_36, D.6757
	movsbl	%al, %eax	# D.6757, D.6751
	movl	%eax, %edi	# D.6751,
	call	toupper	#
	subl	$65, %eax	#, tmp110
	movl	%eax, -2708(%rbp)	# tmp110, y
	.loc 1 357 0 discriminator 2
	movl	-2708(%rbp), %eax	# y, tmp112
	movslq	%eax, %rcx	# tmp112, tmp111
	movl	-2720(%rbp), %eax	# x, tmp114
	movslq	%eax, %rdx	# tmp114, tmp113
	movq	%rdx, %rax	# tmp113, tmp115
	addq	%rax, %rax	# tmp115
	addq	%rdx, %rax	# tmp113, tmp115
	salq	$2, %rax	#, tmp115
	addq	%rdx, %rax	# tmp113, tmp115
	addq	%rax, %rax	# tmp116
	addq	%rcx, %rax	# tmp111, tmp117
	movss	-2704(%rbp,%rax,4), %xmm1	# p, D.6760
	movss	.LC4(%rip), %xmm0	#, tmp118
	addss	%xmm1, %xmm0	# D.6760, D.6760
	movl	-2708(%rbp), %eax	# y, tmp120
	movslq	%eax, %rcx	# tmp120, tmp119
	movl	-2720(%rbp), %eax	# x, tmp122
	movslq	%eax, %rdx	# tmp122, tmp121
	movq	%rdx, %rax	# tmp121, tmp123
	addq	%rax, %rax	# tmp123
	addq	%rdx, %rax	# tmp121, tmp123
	salq	$2, %rax	#, tmp123
	addq	%rdx, %rax	# tmp121, tmp123
	addq	%rax, %rax	# tmp124
	addq	%rcx, %rax	# tmp119, tmp125
	movss	%xmm0, -2704(%rbp,%rax,4)	# D.6760, p
	.loc 1 358 0 discriminator 2
	movl	-2708(%rbp), %eax	# y, tmp126
	movl	%eax, -2720(%rbp)	# tmp126, x
	.loc 1 354 0 discriminator 2
	addl	$1, -2724(%rbp)	#, pos
.L65:
	.loc 1 354 0 is_stmt 0 discriminator 1
	movl	-2724(%rbp), %eax	# pos, tmp127
	cmpl	-2716(%rbp), %eax	# len, tmp127
	jl	.L66	#,
	.loc 1 360 0 is_stmt 1
	movl	$0, -2720(%rbp)	#, x
	jmp	.L67	#
.L68:
	.loc 1 361 0 discriminator 2
	leaq	-2704(%rbp), %rcx	#, tmp128
	movl	-2720(%rbp), %eax	# x, tmp130
	movslq	%eax, %rdx	# tmp130, tmp129
	movq	%rdx, %rax	# tmp129, tmp131
	addq	%rax, %rax	# tmp131
	addq	%rdx, %rax	# tmp129, tmp131
	salq	$2, %rax	#, tmp131
	addq	%rdx, %rax	# tmp129, tmp131
	salq	$3, %rax	#, tmp132
	addq	%rcx, %rax	# tmp128, D.6759
	movl	$26, %esi	#,
	movq	%rax, %rdi	# D.6759,
	call	FNorm	#
	.loc 1 360 0 discriminator 2
	addl	$1, -2720(%rbp)	#, x
.L67:
	.loc 1 360 0 is_stmt 0 discriminator 1
	cmpl	$25, -2720(%rbp)	#, x
	jle	.L68	#,
	.loc 1 365 0 is_stmt 1
	movl	-2712(%rbp), %eax	# i, tmp133
	movl	%eax, -2720(%rbp)	# tmp133, x
	.loc 1 366 0
	movl	-2720(%rbp), %eax	# x, tmp134
	addl	$65, %eax	#, D.6761
	movl	%eax, %edx	# D.6761, D.6757
	movq	-2744(%rbp), %rax	# s1, tmp135
	movb	%dl, (%rax)	# D.6757, *s1_52(D)
	.loc 1 367 0
	movl	$1, -2724(%rbp)	#, pos
	jmp	.L69	#
.L70:
	.loc 1 369 0 discriminator 2
	leaq	-2704(%rbp), %rcx	#, tmp136
	movl	-2720(%rbp), %eax	# x, tmp138
	movslq	%eax, %rdx	# tmp138, tmp137
	movq	%rdx, %rax	# tmp137, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# tmp137, tmp139
	salq	$2, %rax	#, tmp139
	addq	%rdx, %rax	# tmp137, tmp139
	salq	$3, %rax	#, tmp140
	addq	%rcx, %rax	# tmp136, D.6759
	movl	$26, %esi	#,
	movq	%rax, %rdi	# D.6759,
	call	FChoose	#
	movl	%eax, -2708(%rbp)	# tmp141, y
	.loc 1 370 0 discriminator 2
	movl	-2724(%rbp), %eax	# pos, tmp142
	movslq	%eax, %rdx	# tmp142, D.6755
	movq	-2744(%rbp), %rax	# s1, tmp143
	addq	%rax, %rdx	# tmp143, D.6756
	movl	-2708(%rbp), %eax	# y, tmp144
	addl	$65, %eax	#, D.6761
	movb	%al, (%rdx)	# D.6757, *_57
	.loc 1 371 0 discriminator 2
	movl	-2708(%rbp), %eax	# y, tmp145
	movl	%eax, -2720(%rbp)	# tmp145, x
	.loc 1 367 0 discriminator 2
	addl	$1, -2724(%rbp)	#, pos
.L69:
	.loc 1 367 0 is_stmt 0 discriminator 1
	movl	-2724(%rbp), %eax	# pos, tmp146
	cmpl	-2716(%rbp), %eax	# len, tmp146
	jl	.L70	#,
	.loc 1 373 0 is_stmt 1
	movl	-2724(%rbp), %eax	# pos, tmp147
	movslq	%eax, %rdx	# tmp147, D.6755
	movq	-2744(%rbp), %rax	# s1, tmp148
	addq	%rdx, %rax	# D.6755, D.6756
	movb	$0, (%rax)	#, *_64
	.loc 1 375 0
	movl	$1, %eax	#, D.6751
.L71:
	.loc 1 376 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	StrMarkov1, .-StrMarkov1
	.globl	StrReverse
	.type	StrReverse, @function
StrReverse:
.LFB6:
	.loc 1 393 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s1, s1
	movq	%rsi, -32(%rbp)	# s2, s2
	.loc 1 398 0
	movq	-32(%rbp), %rax	# s2, tmp85
	movq	%rax, %rdi	# tmp85,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.6762, len
	.loc 1 399 0
	movl	$0, -8(%rbp)	#, pos
	jmp	.L73	#
.L74:
	.loc 1 401 0 discriminator 2
	movl	-8(%rbp), %eax	# pos, tmp86
	movl	-4(%rbp), %edx	# len, tmp87
	subl	%eax, %edx	# tmp86, D.6763
	movl	%edx, %eax	# D.6763, D.6763
	cltq
	leaq	-1(%rax), %rdx	#, D.6764
	movq	-32(%rbp), %rax	# s2, tmp88
	addq	%rdx, %rax	# D.6764, D.6765
	movzbl	(%rax), %eax	# *_10, tmp89
	movb	%al, -9(%rbp)	# tmp89, c
	.loc 1 402 0 discriminator 2
	movl	-8(%rbp), %eax	# pos, tmp90
	movl	-4(%rbp), %edx	# len, tmp91
	subl	%eax, %edx	# tmp90, D.6763
	movl	%edx, %eax	# D.6763, D.6763
	cltq
	leaq	-1(%rax), %rdx	#, D.6764
	movq	-24(%rbp), %rax	# s1, tmp92
	addq	%rax, %rdx	# tmp92, D.6765
	movl	-8(%rbp), %eax	# pos, tmp93
	movslq	%eax, %rcx	# tmp93, D.6764
	movq	-32(%rbp), %rax	# s2, tmp94
	addq	%rcx, %rax	# D.6764, D.6765
	movzbl	(%rax), %eax	# *_18, D.6766
	movb	%al, (%rdx)	# D.6766, *_16
	.loc 1 403 0 discriminator 2
	movl	-8(%rbp), %eax	# pos, tmp95
	movslq	%eax, %rdx	# tmp95, D.6764
	movq	-24(%rbp), %rax	# s1, tmp96
	addq	%rax, %rdx	# tmp96, D.6765
	movzbl	-9(%rbp), %eax	# c, tmp97
	movb	%al, (%rdx)	# tmp97, *_21
	.loc 1 399 0 discriminator 2
	addl	$1, -8(%rbp)	#, pos
.L73:
	.loc 1 399 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# len, tmp98
	movl	%eax, %edx	# tmp98, tmp99
	shrl	$31, %edx	#, tmp99
	addl	%edx, %eax	# tmp99, tmp100
	sarl	%eax	# tmp101
	cmpl	-8(%rbp), %eax	# pos, D.6763
	jg	.L74	#,
	.loc 1 405 0 is_stmt 1
	movl	-4(%rbp), %eax	# len, len.3
	andl	$1, %eax	#, D.6767
	testl	%eax, %eax	# D.6767
	je	.L75	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# pos, tmp102
	movslq	%eax, %rdx	# tmp102, D.6764
	movq	-24(%rbp), %rax	# s1, tmp103
	addq	%rax, %rdx	# tmp103, D.6765
	movl	-8(%rbp), %eax	# pos, tmp104
	movslq	%eax, %rcx	# tmp104, D.6764
	movq	-32(%rbp), %rax	# s2, tmp105
	addq	%rcx, %rax	# D.6764, D.6765
	movzbl	(%rax), %eax	# *_28, D.6766
	movb	%al, (%rdx)	# D.6766, *_26
.L75:
	.loc 1 406 0 is_stmt 1
	movl	-4(%rbp), %eax	# len, tmp106
	movslq	%eax, %rdx	# tmp106, D.6764
	movq	-24(%rbp), %rax	# s1, tmp107
	addq	%rdx, %rax	# D.6764, D.6765
	movb	$0, (%rax)	#, *_31
	.loc 1 407 0
	movl	$1, %eax	#, D.6763
	.loc 1 408 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	StrReverse, .-StrReverse
	.globl	StrRegionalShuffle
	.type	StrRegionalShuffle, @function
StrRegionalShuffle:
.LFB7:
	.loc 1 425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# s1, s1
	movq	%rsi, -48(%rbp)	# s2, s2
	movl	%edx, -52(%rbp)	# w, w
	.loc 1 431 0
	movq	-40(%rbp), %rax	# s1, tmp79
	cmpq	-48(%rbp), %rax	# s2, tmp79
	je	.L78	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rdx	# s2, tmp80
	movq	-40(%rbp), %rax	# s1, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	strcpy	#
.L78:
	.loc 1 432 0 is_stmt 1
	movq	-40(%rbp), %rax	# s1, tmp82
	movq	%rax, %rdi	# tmp82,
	call	strlen	#
	movl	%eax, -8(%rbp)	# D.6768, len
	.loc 1 434 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L79	#
.L82:
	.loc 1 435 0
	movl	-52(%rbp), %eax	# w, tmp83
	movl	-16(%rbp), %edx	# i, tmp84
	addl	%edx, %eax	# tmp84, D.6769
	leal	-1(%rax), %edx	#, D.6769
	movl	-8(%rbp), %eax	# len, tmp85
	subl	$1, %eax	#, D.6769
	cmpl	%eax, %edx	# D.6769, D.6769
	cmovle	%edx, %eax	# D.6769,, tmp86
	movl	%eax, -12(%rbp)	# tmp86, j
	jmp	.L80	#
.L81:
	.loc 1 437 0 discriminator 2
	call	sre_random	#
	movl	-16(%rbp), %eax	# i, tmp87
	movl	-12(%rbp), %edx	# j, tmp88
	subl	%eax, %edx	# tmp87, D.6769
	movl	%edx, %eax	# D.6769, D.6769
	cvtsi2sd	%eax, %xmm1	# D.6769, D.6770
	mulsd	%xmm1, %xmm0	# D.6770, D.6770
	cvttsd2si	%xmm0, %edx	# D.6770, D.6769
	movl	-16(%rbp), %eax	# i, tmp92
	addl	%edx, %eax	# D.6769, tmp91
	movl	%eax, -4(%rbp)	# tmp91, pos
	.loc 1 438 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp93
	movslq	%eax, %rdx	# tmp93, D.6771
	movq	-40(%rbp), %rax	# s1, tmp94
	addq	%rdx, %rax	# D.6771, D.6772
	movzbl	(%rax), %eax	# *_20, tmp95
	movb	%al, -17(%rbp)	# tmp95, c
	.loc 1 439 0 discriminator 2
	movl	-4(%rbp), %eax	# pos, tmp96
	movslq	%eax, %rdx	# tmp96, D.6771
	movq	-40(%rbp), %rax	# s1, tmp97
	addq	%rax, %rdx	# tmp97, D.6772
	movl	-12(%rbp), %eax	# j, tmp98
	movslq	%eax, %rcx	# tmp98, D.6771
	movq	-40(%rbp), %rax	# s1, tmp99
	addq	%rcx, %rax	# D.6771, D.6772
	movzbl	(%rax), %eax	# *_25, D.6773
	movb	%al, (%rdx)	# D.6773, *_23
	.loc 1 440 0 discriminator 2
	movl	-12(%rbp), %eax	# j, tmp100
	movslq	%eax, %rdx	# tmp100, D.6771
	movq	-40(%rbp), %rax	# s1, tmp101
	addq	%rax, %rdx	# tmp101, D.6772
	movzbl	-17(%rbp), %eax	# c, tmp102
	movb	%al, (%rdx)	# tmp102, *_28
	.loc 1 435 0 discriminator 2
	subl	$1, -12(%rbp)	#, j
.L80:
	.loc 1 435 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp103
	cmpl	-16(%rbp), %eax	# i, tmp103
	jg	.L81	#,
	.loc 1 434 0 is_stmt 1
	movl	-52(%rbp), %eax	# w, tmp104
	addl	%eax, -16(%rbp)	# tmp104, i
.L79:
	.loc 1 434 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp105
	cmpl	-8(%rbp), %eax	# len, tmp105
	jl	.L82	#,
	.loc 1 442 0 is_stmt 1
	movl	$1, %eax	#, D.6769
	.loc 1 443 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	StrRegionalShuffle, .-StrRegionalShuffle
	.globl	AlignmentShuffle
	.type	AlignmentShuffle, @function
AlignmentShuffle:
.LFB8:
	.loc 1 464 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ali1, ali1
	movq	%rsi, -32(%rbp)	# ali2, ali2
	movl	%edx, -36(%rbp)	# nseq, nseq
	movl	%ecx, -40(%rbp)	# alen, alen
	.loc 1 469 0
	movq	-24(%rbp), %rax	# ali1, tmp105
	cmpq	-32(%rbp), %rax	# ali2, tmp105
	je	.L85	#,
	.loc 1 471 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L86	#
.L87:
	.loc 1 471 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp106
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6774
	movq	-32(%rbp), %rax	# ali2, tmp107
	addq	%rdx, %rax	# D.6774, D.6775
	movq	(%rax), %rdx	# *_11, D.6776
	movl	-8(%rbp), %eax	# i, tmp108
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp109
	addq	%rcx, %rax	# D.6774, D.6775
	movq	(%rax), %rax	# *_15, D.6776
	movq	%rdx, %rsi	# D.6776,
	movq	%rax, %rdi	# D.6776,
	call	strcpy	#
	addl	$1, -8(%rbp)	#, i
.L86:
	.loc 1 471 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp110
	cmpl	-36(%rbp), %eax	# nseq, tmp110
	jl	.L87	#,
.L85:
	.loc 1 474 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L88	#
.L89:
	.loc 1 475 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp112
	addq	%rdx, %rax	# D.6774, D.6775
	movq	(%rax), %rdx	# *_21, D.6776
	movl	-40(%rbp), %eax	# alen, tmp113
	cltq
	addq	%rdx, %rax	# D.6776, D.6776
	movb	$0, (%rax)	#, *_25
	.loc 1 474 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L88:
	.loc 1 474 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp114
	cmpl	-36(%rbp), %eax	# nseq, tmp114
	jl	.L89	#,
	.loc 1 477 0 is_stmt 1
	jmp	.L90	#
.L93:
	.loc 1 479 0
	call	sre_random	#
	cvtsi2sd	-40(%rbp), %xmm1	# alen, D.6778
	mulsd	%xmm1, %xmm0	# D.6778, D.6778
	cvttsd2si	%xmm0, %eax	# D.6778, tmp115
	movl	%eax, -4(%rbp)	# tmp115, pos
	.loc 1 480 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L91	#
.L92:
	.loc 1 482 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp117
	addq	%rdx, %rax	# D.6774, D.6775
	movq	(%rax), %rdx	# *_34, D.6776
	movl	-4(%rbp), %eax	# pos, tmp118
	cltq
	addq	%rdx, %rax	# D.6776, D.6776
	movzbl	(%rax), %eax	# *_37, tmp119
	movb	%al, -9(%rbp)	# tmp119, c
	.loc 1 483 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp121
	addq	%rdx, %rax	# D.6774, D.6775
	movq	(%rax), %rdx	# *_41, D.6776
	movl	-4(%rbp), %eax	# pos, tmp122
	cltq
	addq	%rax, %rdx	# D.6777, D.6776
	movl	-8(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp124
	addq	%rcx, %rax	# D.6774, D.6775
	movq	(%rax), %rax	# *_47, D.6776
	movl	-40(%rbp), %ecx	# alen, tmp125
	movslq	%ecx, %rcx	# tmp125, D.6777
	subq	$1, %rcx	#, D.6777
	addq	%rcx, %rax	# D.6777, D.6776
	movzbl	(%rax), %eax	# *_51, D.6779
	movb	%al, (%rdx)	# D.6779, *_44
	.loc 1 484 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6774
	movq	-24(%rbp), %rax	# ali1, tmp127
	addq	%rdx, %rax	# D.6774, D.6775
	movq	(%rax), %rax	# *_55, D.6776
	movl	-40(%rbp), %edx	# alen, tmp128
	movslq	%edx, %rdx	# tmp128, D.6777
	subq	$1, %rdx	#, D.6777
	addq	%rax, %rdx	# D.6776, D.6776
	movzbl	-9(%rbp), %eax	# c, tmp129
	movb	%al, (%rdx)	# tmp129, *_59
	.loc 1 480 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L91:
	.loc 1 480 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp130
	cmpl	-36(%rbp), %eax	# nseq, tmp130
	jl	.L92	#,
	.loc 1 477 0 is_stmt 1
	subl	$1, -40(%rbp)	#, alen
.L90:
	.loc 1 477 0 is_stmt 0 discriminator 1
	cmpl	$1, -40(%rbp)	#, alen
	jg	.L93	#,
	.loc 1 488 0 is_stmt 1
	movl	$1, %eax	#, D.6780
	.loc 1 489 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	AlignmentShuffle, .-AlignmentShuffle
	.globl	AlignmentBootstrap
	.type	AlignmentBootstrap, @function
AlignmentBootstrap:
.LFB9:
	.loc 1 513 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# ali1, ali1
	movq	%rsi, -32(%rbp)	# ali2, ali2
	movl	%edx, -36(%rbp)	# nseq, nseq
	movl	%ecx, -40(%rbp)	# alen, alen
	.loc 1 518 0
	movl	$0, -12(%rbp)	#, pos
	jmp	.L96	#
.L99:
	.loc 1 520 0
	call	sre_random	#
	cvtsi2sd	-40(%rbp), %xmm1	# alen, D.6781
	mulsd	%xmm1, %xmm0	# D.6781, D.6781
	cvttsd2si	%xmm0, %eax	# D.6781, tmp83
	movl	%eax, -4(%rbp)	# tmp83, col
	.loc 1 521 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L97	#
.L98:
	.loc 1 522 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp84
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6782
	movq	-24(%rbp), %rax	# ali1, tmp85
	addq	%rdx, %rax	# D.6782, D.6783
	movq	(%rax), %rdx	# *_15, D.6784
	movl	-12(%rbp), %eax	# pos, tmp86
	cltq
	addq	%rax, %rdx	# D.6785, D.6784
	movl	-8(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6782
	movq	-32(%rbp), %rax	# ali2, tmp88
	addq	%rcx, %rax	# D.6782, D.6783
	movq	(%rax), %rcx	# *_22, D.6784
	movl	-4(%rbp), %eax	# col, tmp89
	cltq
	addq	%rcx, %rax	# D.6784, D.6784
	movzbl	(%rax), %eax	# *_25, D.6786
	movb	%al, (%rdx)	# D.6786, *_18
	.loc 1 521 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L97:
	.loc 1 521 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp90
	cmpl	-36(%rbp), %eax	# nseq, tmp90
	jl	.L98	#,
	.loc 1 518 0 is_stmt 1
	addl	$1, -12(%rbp)	#, pos
.L96:
	.loc 1 518 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# pos, tmp91
	cmpl	-40(%rbp), %eax	# alen, tmp91
	jl	.L99	#,
	.loc 1 524 0 is_stmt 1
	movl	$0, -8(%rbp)	#, i
	jmp	.L100	#
.L101:
	.loc 1 525 0 discriminator 2
	movl	-8(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6782
	movq	-24(%rbp), %rax	# ali1, tmp93
	addq	%rdx, %rax	# D.6782, D.6783
	movq	(%rax), %rdx	# *_32, D.6784
	movl	-40(%rbp), %eax	# alen, tmp94
	cltq
	addq	%rdx, %rax	# D.6784, D.6784
	movb	$0, (%rax)	#, *_35
	.loc 1 524 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L100:
	.loc 1 524 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp95
	cmpl	-36(%rbp), %eax	# nseq, tmp95
	jl	.L101	#,
	.loc 1 527 0 is_stmt 1
	movl	$1, %eax	#, D.6787
	.loc 1 528 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	AlignmentBootstrap, .-AlignmentBootstrap
	.globl	QRNAShuffle
	.type	QRNAShuffle, @function
QRNAShuffle:
.LFB10:
	.loc 1 556 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# xs, xs
	movq	%rsi, -80(%rbp)	# ys, ys
	movq	%rdx, -88(%rbp)	# x, x
	movq	%rcx, -96(%rbp)	# y, y
	.loc 1 564 0
	movq	-72(%rbp), %rax	# xs, tmp387
	cmpq	-88(%rbp), %rax	# x, tmp387
	je	.L104	#,
	.loc 1 564 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rdx	# x, tmp388
	movq	-72(%rbp), %rax	# xs, tmp389
	movq	%rdx, %rsi	# tmp388,
	movq	%rax, %rdi	# tmp389,
	call	strcpy	#
.L104:
	.loc 1 565 0 is_stmt 1
	movq	-80(%rbp), %rax	# ys, tmp390
	cmpq	-96(%rbp), %rax	# y, tmp390
	je	.L105	#,
	.loc 1 565 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rdx	# y, tmp391
	movq	-80(%rbp), %rax	# ys, tmp392
	movq	%rdx, %rsi	# tmp391,
	movq	%rax, %rdi	# tmp392,
	call	strcpy	#
.L105:
	.loc 1 571 0 is_stmt 1
	movq	-88(%rbp), %rax	# x, tmp393
	movq	%rax, %rdi	# tmp393,
	call	strlen	#
	movl	%eax, -36(%rbp)	# D.6788, L
	.loc 1 572 0
	movl	-36(%rbp), %eax	# L, tmp394
	cltq
	salq	$2, %rax	#, D.6788
	movq	%rax, %rdx	# D.6788,
	movl	$572, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp395, xycol
	.loc 1 573 0
	movl	-36(%rbp), %eax	# L, tmp396
	cltq
	salq	$2, %rax	#, D.6788
	movq	%rax, %rdx	# D.6788,
	movl	$573, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp397, xcol
	.loc 1 574 0
	movl	-36(%rbp), %eax	# L, tmp398
	cltq
	salq	$2, %rax	#, D.6788
	movq	%rax, %rdx	# D.6788,
	movl	$574, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp399, ycol
	.loc 1 575 0
	movl	$0, -44(%rbp)	#, ny
	movl	-44(%rbp), %eax	# ny, tmp400
	movl	%eax, -48(%rbp)	# tmp400, nx
	movl	-48(%rbp), %eax	# nx, tmp401
	movl	%eax, -52(%rbp)	# tmp401, nxy
	.loc 1 577 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L106	#
.L115:
	.loc 1 579 0
	movl	-40(%rbp), %eax	# i, tmp402
	movslq	%eax, %rdx	# tmp402, D.6789
	movq	-88(%rbp), %rax	# x, tmp403
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_31, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L107	#,
	.loc 1 579 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp404
	movslq	%eax, %rdx	# tmp404, D.6789
	movq	-88(%rbp), %rax	# x, tmp405
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_34, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L107	#,
	.loc 1 579 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp406
	movslq	%eax, %rdx	# tmp406, D.6789
	movq	-88(%rbp), %rax	# x, tmp407
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_37, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L107	#,
	movl	-40(%rbp), %eax	# i, tmp408
	movslq	%eax, %rdx	# tmp408, D.6789
	movq	-88(%rbp), %rax	# x, tmp409
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_40, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L107	#,
	movl	-40(%rbp), %eax	# i, tmp410
	movslq	%eax, %rdx	# tmp410, D.6789
	movq	-88(%rbp), %rax	# x, tmp411
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_43, D.6791
	cmpb	$126, %al	#, D.6791
	jne	.L108	#,
.L107:
	movl	-40(%rbp), %eax	# i, tmp412
	movslq	%eax, %rdx	# tmp412, D.6789
	movq	-96(%rbp), %rax	# y, tmp413
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_46, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L109	#,
	.loc 1 579 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp414
	movslq	%eax, %rdx	# tmp414, D.6789
	movq	-96(%rbp), %rax	# y, tmp415
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_49, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L109	#,
	.loc 1 579 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp416
	movslq	%eax, %rdx	# tmp416, D.6789
	movq	-96(%rbp), %rax	# y, tmp417
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_52, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L109	#,
	movl	-40(%rbp), %eax	# i, tmp418
	movslq	%eax, %rdx	# tmp418, D.6789
	movq	-96(%rbp), %rax	# y, tmp419
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_55, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L109	#,
	movl	-40(%rbp), %eax	# i, tmp420
	movslq	%eax, %rdx	# tmp420, D.6789
	movq	-96(%rbp), %rax	# y, tmp421
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_58, D.6791
	cmpb	$126, %al	#, D.6791
	jne	.L108	#,
.L109:
	jmp	.L110	#
.L108:
	.loc 1 580 0 is_stmt 1
	movl	-40(%rbp), %eax	# i, tmp422
	movslq	%eax, %rdx	# tmp422, D.6789
	movq	-88(%rbp), %rax	# x, tmp423
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_61, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L111	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp424
	movslq	%eax, %rdx	# tmp424, D.6789
	movq	-88(%rbp), %rax	# x, tmp425
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_64, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp426
	movslq	%eax, %rdx	# tmp426, D.6789
	movq	-88(%rbp), %rax	# x, tmp427
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_67, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp428
	movslq	%eax, %rdx	# tmp428, D.6789
	movq	-88(%rbp), %rax	# x, tmp429
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_70, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp430
	movslq	%eax, %rdx	# tmp430, D.6789
	movq	-88(%rbp), %rax	# x, tmp431
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_73, D.6791
	cmpb	$126, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp432
	movslq	%eax, %rdx	# tmp432, D.6789
	movq	-96(%rbp), %rax	# y, tmp433
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_76, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp434
	movslq	%eax, %rdx	# tmp434, D.6789
	movq	-96(%rbp), %rax	# y, tmp435
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_79, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp436
	movslq	%eax, %rdx	# tmp436, D.6789
	movq	-96(%rbp), %rax	# y, tmp437
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_82, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp438
	movslq	%eax, %rdx	# tmp438, D.6789
	movq	-96(%rbp), %rax	# y, tmp439
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_85, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L111	#,
	movl	-40(%rbp), %eax	# i, tmp440
	movslq	%eax, %rdx	# tmp440, D.6789
	movq	-96(%rbp), %rax	# y, tmp441
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_88, D.6791
	cmpb	$126, %al	#, D.6791
	je	.L111	#,
	movl	-52(%rbp), %eax	# nxy, tmp442
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp443
	addq	%rax, %rdx	# tmp443, D.6792
	movl	-40(%rbp), %eax	# i, tmp444
	movl	%eax, (%rdx)	# tmp444, *_92
	addl	$1, -52(%rbp)	#, nxy
	jmp	.L110	#
.L111:
	.loc 1 581 0 is_stmt 1
	movl	-40(%rbp), %eax	# i, tmp445
	movslq	%eax, %rdx	# tmp445, D.6789
	movq	-88(%rbp), %rax	# x, tmp446
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_95, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L112	#,
	.loc 1 581 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp447
	movslq	%eax, %rdx	# tmp447, D.6789
	movq	-88(%rbp), %rax	# x, tmp448
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_98, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L112	#,
	.loc 1 581 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp449
	movslq	%eax, %rdx	# tmp449, D.6789
	movq	-88(%rbp), %rax	# x, tmp450
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_101, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L112	#,
	movl	-40(%rbp), %eax	# i, tmp451
	movslq	%eax, %rdx	# tmp451, D.6789
	movq	-88(%rbp), %rax	# x, tmp452
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_104, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L112	#,
	movl	-40(%rbp), %eax	# i, tmp453
	movslq	%eax, %rdx	# tmp453, D.6789
	movq	-88(%rbp), %rax	# x, tmp454
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_107, D.6791
	cmpb	$126, %al	#, D.6791
	jne	.L113	#,
.L112:
	movl	-44(%rbp), %eax	# ny, tmp455
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp456
	addq	%rax, %rdx	# tmp456, D.6792
	movl	-40(%rbp), %eax	# i, tmp457
	movl	%eax, (%rdx)	# tmp457, *_130
	addl	$1, -44(%rbp)	#, ny
	jmp	.L110	#
.L113:
	.loc 1 582 0 is_stmt 1
	movl	-40(%rbp), %eax	# i, tmp458
	movslq	%eax, %rdx	# tmp458, D.6789
	movq	-96(%rbp), %rax	# y, tmp459
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_110, D.6791
	cmpb	$32, %al	#, D.6791
	je	.L114	#,
	.loc 1 582 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax	# i, tmp460
	movslq	%eax, %rdx	# tmp460, D.6789
	movq	-96(%rbp), %rax	# y, tmp461
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_113, D.6791
	cmpb	$46, %al	#, D.6791
	je	.L114	#,
	.loc 1 582 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp462
	movslq	%eax, %rdx	# tmp462, D.6789
	movq	-96(%rbp), %rax	# y, tmp463
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_116, D.6791
	cmpb	$95, %al	#, D.6791
	je	.L114	#,
	movl	-40(%rbp), %eax	# i, tmp464
	movslq	%eax, %rdx	# tmp464, D.6789
	movq	-96(%rbp), %rax	# y, tmp465
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_119, D.6791
	cmpb	$45, %al	#, D.6791
	je	.L114	#,
	movl	-40(%rbp), %eax	# i, tmp466
	movslq	%eax, %rdx	# tmp466, D.6789
	movq	-96(%rbp), %rax	# y, tmp467
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_122, D.6791
	cmpb	$126, %al	#, D.6791
	jne	.L110	#,
.L114:
	movl	-48(%rbp), %eax	# nx, tmp468
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp469
	addq	%rax, %rdx	# tmp469, D.6792
	movl	-40(%rbp), %eax	# i, tmp470
	movl	%eax, (%rdx)	# tmp470, *_126
	addl	$1, -48(%rbp)	#, nx
.L110:
	.loc 1 577 0 is_stmt 1
	addl	$1, -40(%rbp)	#, i
.L106:
	.loc 1 577 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# i, tmp471
	cmpl	-36(%rbp), %eax	# L, tmp471
	jl	.L115	#,
	.loc 1 588 0 is_stmt 1
	jmp	.L116	#
.L117:
	.loc 1 589 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-52(%rbp), %xmm1	# nxy, D.6793
	mulsd	%xmm1, %xmm0	# D.6793, D.6793
	cvttsd2si	%xmm0, %eax	# D.6793, tmp472
	movl	%eax, -32(%rbp)	# tmp472, pos
	.loc 1 590 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp473
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp474
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_139, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp475
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_142, tmp476
	movb	%al, -54(%rbp)	# tmp476, xsym
	movl	-32(%rbp), %eax	# pos, tmp477
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp478
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_146, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp479
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_149, tmp480
	movb	%al, -53(%rbp)	# tmp480, ysym
	movl	-32(%rbp), %eax	# pos, tmp481
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp482
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_153, tmp483
	movl	%eax, -28(%rbp)	# tmp483, c
	.loc 1 591 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp484
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp485
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_157, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp486
	addq	%rax, %rdx	# tmp486, D.6790
	movl	-52(%rbp), %eax	# nxy, tmp487
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp488
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_164, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp489
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_167, D.6791
	movb	%al, (%rdx)	# D.6791, *_160
	movl	-32(%rbp), %eax	# pos, tmp490
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp491
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_171, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp492
	addq	%rax, %rdx	# tmp492, D.6790
	movl	-52(%rbp), %eax	# nxy, tmp493
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp494
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_178, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp495
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_181, D.6791
	movb	%al, (%rdx)	# D.6791, *_174
	movl	-32(%rbp), %eax	# pos, tmp496
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp497
	addq	%rax, %rdx	# tmp497, D.6792
	movl	-52(%rbp), %eax	# nxy, tmp498
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp499
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_189, D.6794
	movl	%eax, (%rdx)	# D.6794, *_185
	.loc 1 592 0 discriminator 2
	movl	-52(%rbp), %eax	# nxy, tmp500
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp501
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_194, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp502
	addq	%rax, %rdx	# tmp502, D.6790
	movzbl	-54(%rbp), %eax	# xsym, tmp503
	movb	%al, (%rdx)	# tmp503, *_197
	movl	-52(%rbp), %eax	# nxy, tmp504
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp505
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_201, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp506
	addq	%rax, %rdx	# tmp506, D.6790
	movzbl	-53(%rbp), %eax	# ysym, tmp507
	movb	%al, (%rdx)	# tmp507, *_204
	movl	-32(%rbp), %eax	# pos, tmp508
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-24(%rbp), %rax	# xycol, tmp509
	addq	%rax, %rdx	# tmp509, D.6792
	movl	-52(%rbp), %eax	# nxy, tmp510
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-24(%rbp), %rax	# xycol, tmp511
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_211, D.6794
	movl	%eax, (%rdx)	# D.6794, *_207
	.loc 1 588 0 discriminator 2
	subl	$1, -52(%rbp)	#, nxy
.L116:
	.loc 1 588 0 is_stmt 0 discriminator 1
	cmpl	$1, -52(%rbp)	#, nxy
	jg	.L117	#,
	.loc 1 594 0 is_stmt 1
	jmp	.L118	#
.L119:
	.loc 1 595 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-48(%rbp), %xmm1	# nx, D.6793
	mulsd	%xmm1, %xmm0	# D.6793, D.6793
	cvttsd2si	%xmm0, %eax	# D.6793, tmp512
	movl	%eax, -32(%rbp)	# tmp512, pos
	.loc 1 596 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp513
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp514
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_220, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp515
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_223, tmp516
	movb	%al, -54(%rbp)	# tmp516, xsym
	movl	-32(%rbp), %eax	# pos, tmp517
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp518
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_227, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp519
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_230, tmp520
	movb	%al, -53(%rbp)	# tmp520, ysym
	movl	-32(%rbp), %eax	# pos, tmp521
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp522
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_234, tmp523
	movl	%eax, -28(%rbp)	# tmp523, c
	.loc 1 597 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp524
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp525
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_238, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp526
	addq	%rax, %rdx	# tmp526, D.6790
	movl	-48(%rbp), %eax	# nx, tmp527
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp528
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_245, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp529
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_248, D.6791
	movb	%al, (%rdx)	# D.6791, *_241
	movl	-32(%rbp), %eax	# pos, tmp530
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp531
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_252, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp532
	addq	%rax, %rdx	# tmp532, D.6790
	movl	-48(%rbp), %eax	# nx, tmp533
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp534
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_259, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp535
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_262, D.6791
	movb	%al, (%rdx)	# D.6791, *_255
	movl	-32(%rbp), %eax	# pos, tmp536
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-16(%rbp), %rax	# xcol, tmp537
	addq	%rax, %rdx	# tmp537, D.6792
	movl	-48(%rbp), %eax	# nx, tmp538
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp539
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_270, D.6794
	movl	%eax, (%rdx)	# D.6794, *_266
	.loc 1 598 0 discriminator 2
	movl	-48(%rbp), %eax	# nx, tmp540
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp541
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_275, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp542
	addq	%rax, %rdx	# tmp542, D.6790
	movzbl	-54(%rbp), %eax	# xsym, tmp543
	movb	%al, (%rdx)	# tmp543, *_278
	movl	-48(%rbp), %eax	# nx, tmp544
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp545
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_282, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp546
	addq	%rax, %rdx	# tmp546, D.6790
	movzbl	-53(%rbp), %eax	# ysym, tmp547
	movb	%al, (%rdx)	# tmp547, *_285
	movl	-48(%rbp), %eax	# nx, tmp548
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-16(%rbp), %rax	# xcol, tmp549
	addq	%rax, %rdx	# tmp549, D.6792
	movl	-28(%rbp), %eax	# c, tmp550
	movl	%eax, (%rdx)	# tmp550, *_289
	.loc 1 594 0 discriminator 2
	subl	$1, -48(%rbp)	#, nx
.L118:
	.loc 1 594 0 is_stmt 0 discriminator 1
	cmpl	$1, -48(%rbp)	#, nx
	jg	.L119	#,
	.loc 1 600 0 is_stmt 1
	jmp	.L120	#
.L121:
	.loc 1 601 0 discriminator 2
	call	sre_random	#
	cvtsi2sd	-44(%rbp), %xmm1	# ny, D.6793
	mulsd	%xmm1, %xmm0	# D.6793, D.6793
	cvttsd2si	%xmm0, %eax	# D.6793, tmp551
	movl	%eax, -32(%rbp)	# tmp551, pos
	.loc 1 602 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp552
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp553
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_297, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp554
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_300, tmp555
	movb	%al, -54(%rbp)	# tmp555, xsym
	movl	-32(%rbp), %eax	# pos, tmp556
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp557
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_304, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp558
	addq	%rdx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_307, tmp559
	movb	%al, -53(%rbp)	# tmp559, ysym
	movl	-32(%rbp), %eax	# pos, tmp560
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp561
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_311, tmp562
	movl	%eax, -28(%rbp)	# tmp562, c
	.loc 1 603 0 discriminator 2
	movl	-32(%rbp), %eax	# pos, tmp563
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp564
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_315, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp565
	addq	%rax, %rdx	# tmp565, D.6790
	movl	-44(%rbp), %eax	# ny, tmp566
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp567
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_322, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp568
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_325, D.6791
	movb	%al, (%rdx)	# D.6791, *_318
	movl	-32(%rbp), %eax	# pos, tmp569
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp570
	addq	%rdx, %rax	# D.6788, D.6792
	movl	(%rax), %eax	# *_329, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp571
	addq	%rax, %rdx	# tmp571, D.6790
	movl	-44(%rbp), %eax	# ny, tmp572
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp573
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_336, D.6794
	movslq	%eax, %rcx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp574
	addq	%rcx, %rax	# D.6789, D.6790
	movzbl	(%rax), %eax	# *_339, D.6791
	movb	%al, (%rdx)	# D.6791, *_332
	movl	-32(%rbp), %eax	# pos, tmp575
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6788
	movq	-8(%rbp), %rax	# ycol, tmp576
	addq	%rax, %rdx	# tmp576, D.6792
	movl	-44(%rbp), %eax	# ny, tmp577
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rcx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp578
	addq	%rcx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_347, D.6794
	movl	%eax, (%rdx)	# D.6794, *_343
	.loc 1 604 0 discriminator 2
	movl	-44(%rbp), %eax	# ny, tmp579
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp580
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_352, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-72(%rbp), %rax	# xs, tmp581
	addq	%rax, %rdx	# tmp581, D.6790
	movzbl	-54(%rbp), %eax	# xsym, tmp582
	movb	%al, (%rdx)	# tmp582, *_355
	movl	-44(%rbp), %eax	# ny, tmp583
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp584
	addq	%rdx, %rax	# D.6789, D.6792
	movl	(%rax), %eax	# *_359, D.6794
	movslq	%eax, %rdx	# D.6794, D.6789
	movq	-80(%rbp), %rax	# ys, tmp585
	addq	%rax, %rdx	# tmp585, D.6790
	movzbl	-53(%rbp), %eax	# ysym, tmp586
	movb	%al, (%rdx)	# tmp586, *_362
	movl	-44(%rbp), %eax	# ny, tmp587
	cltq
	salq	$2, %rax	#, D.6788
	leaq	-4(%rax), %rdx	#, D.6789
	movq	-8(%rbp), %rax	# ycol, tmp588
	addq	%rax, %rdx	# tmp588, D.6792
	movl	-28(%rbp), %eax	# c, tmp589
	movl	%eax, (%rdx)	# tmp589, *_366
	.loc 1 600 0 discriminator 2
	subl	$1, -44(%rbp)	#, ny
.L120:
	.loc 1 600 0 is_stmt 0 discriminator 1
	cmpl	$1, -44(%rbp)	#, ny
	jg	.L121	#,
	.loc 1 607 0 is_stmt 1
	movq	-24(%rbp), %rax	# xycol, tmp590
	movq	%rax, %rdi	# tmp590,
	call	free	#
	movq	-16(%rbp), %rax	# xcol, tmp591
	movq	%rax, %rdi	# tmp591,
	call	free	#
	movq	-8(%rbp), %rax	# ycol, tmp592
	movq	%rax, %rdi	# tmp592,
	call	free	#
	.loc 1 608 0
	movl	$1, %eax	#, D.6794
	.loc 1 609 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	QRNAShuffle, .-QRNAShuffle
	.section	.rodata
	.align 4
.LC4:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x697
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF44
	.byte	0x1
	.long	.LASF45
	.long	.LASF46
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x49
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x30
	.long	0xd5
	.uleb128 0x6
	.long	.LASF9
	.sleb128 256
	.uleb128 0x6
	.long	.LASF10
	.sleb128 512
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1024
	.uleb128 0x6
	.long	.LASF12
	.sleb128 2048
	.uleb128 0x6
	.long	.LASF13
	.sleb128 4096
	.uleb128 0x6
	.long	.LASF14
	.sleb128 8192
	.uleb128 0x6
	.long	.LASF15
	.sleb128 16384
	.uleb128 0x6
	.long	.LASF16
	.sleb128 32768
	.uleb128 0x6
	.long	.LASF17
	.sleb128 1
	.uleb128 0x6
	.long	.LASF18
	.sleb128 2
	.uleb128 0x6
	.long	.LASF19
	.sleb128 4
	.uleb128 0x6
	.long	.LASF20
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF21
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF22
	.uleb128 0x4
	.byte	0x8
	.long	0x42
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF23
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x4
	.byte	0x8
	.long	0x73
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x3b
	.long	0x42
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x161
	.uleb128 0x8
	.string	"s1"
	.byte	0x1
	.byte	0x3b
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.string	"s2"
	.byte	0x1
	.byte	0x3b
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x3d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"pos"
	.byte	0x1
	.byte	0x3e
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x3f
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x64
	.long	0x42
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x246
	.uleb128 0x8
	.string	"s1"
	.byte	0x1
	.byte	0x64
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x8
	.string	"s2"
	.byte	0x1
	.byte	0x64
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x66
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x9
	.string	"pos"
	.byte	0x1
	.byte	0x67
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x68
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x9
	.string	"y"
	.byte	0x1
	.byte	0x68
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x9
	.string	"E"
	.byte	0x1
	.byte	0x69
	.long	0xf7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x9
	.string	"nE"
	.byte	0x1
	.byte	0x6a
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x9
	.string	"iE"
	.byte	0x1
	.byte	0x6b
	.long	0xe3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x6c
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x9
	.string	"sf"
	.byte	0x1
	.byte	0x6d
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -133
	.uleb128 0x9
	.string	"Z"
	.byte	0x1
	.byte	0x6e
	.long	0x246
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x6f
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x70
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0xb
	.long	0x49
	.long	0x256
	.uleb128 0xc
	.long	0x34
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0x122
	.long	0x42
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c5
	.uleb128 0xe
	.string	"s1"
	.byte	0x1
	.value	0x122
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0xe
	.string	"s2"
	.byte	0x1
	.value	0x122
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x124
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x125
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.value	0x126
	.long	0x2c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0xb
	.long	0xd5
	.long	0x2d5
	.uleb128 0xc
	.long	0x34
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.long	.LASF30
	.byte	0x1
	.value	0x14f
	.long	0x42
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x36e
	.uleb128 0xe
	.string	"s1"
	.byte	0x1
	.value	0x14f
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2760
	.uleb128 0xe
	.string	"s2"
	.byte	0x1
	.value	0x14f
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2768
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x151
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2732
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x152
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2740
	.uleb128 0xf
	.string	"x"
	.byte	0x1
	.value	0x153
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2736
	.uleb128 0xf
	.string	"y"
	.byte	0x1
	.value	0x153
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2724
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x154
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2728
	.uleb128 0xf
	.string	"p"
	.byte	0x1
	.value	0x155
	.long	0x36e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2720
	.byte	0
	.uleb128 0xb
	.long	0xd5
	.long	0x384
	.uleb128 0xc
	.long	0x34
	.byte	0x19
	.uleb128 0xc
	.long	0x34
	.byte	0x19
	.byte	0
	.uleb128 0xd
	.long	.LASF31
	.byte	0x1
	.value	0x188
	.long	0x42
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ee
	.uleb128 0xe
	.string	"s1"
	.byte	0x1
	.value	0x188
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"s2"
	.byte	0x1
	.value	0x188
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x18a
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x18b
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.value	0x18c
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.value	0x1a8
	.long	0x42
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0xe
	.string	"s1"
	.byte	0x1
	.value	0x1a8
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.string	"s2"
	.byte	0x1
	.value	0x1a8
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.value	0x1a8
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x1aa
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.value	0x1ab
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x1ac
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x1ad
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xf
	.string	"j"
	.byte	0x1
	.value	0x1ad
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x1
	.value	0x1cf
	.long	0x42
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x508
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.value	0x1cf
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.value	0x1cf
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.value	0x1cf
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x1cf
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x1d1
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x1d2
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.value	0x1d3
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0x200
	.long	0x42
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.value	0x200
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.value	0x200
	.long	0xf7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.value	0x200
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0x200
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x202
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xf
	.string	"col"
	.byte	0x1
	.value	0x203
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x204
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0x22b
	.long	0x42
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"xs"
	.byte	0x1
	.value	0x22b
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xe
	.string	"ys"
	.byte	0x1
	.value	0x22b
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.string	"x"
	.byte	0x1
	.value	0x22b
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xe
	.string	"y"
	.byte	0x1
	.value	0x22b
	.long	0x73
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xf
	.string	"L"
	.byte	0x1
	.value	0x22d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.value	0x22e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.value	0x22e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.value	0x22e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"nxy"
	.byte	0x1
	.value	0x22f
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.string	"nx"
	.byte	0x1
	.value	0x22f
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xf
	.string	"ny"
	.byte	0x1
	.value	0x22f
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.value	0x230
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.value	0x231
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xf
	.string	"c"
	.byte	0x1
	.value	0x231
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF42
	.byte	0x1
	.value	0x232
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x12
	.long	.LASF43
	.byte	0x1
	.value	0x232
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
.LASF33:
	.string	"AlignmentShuffle"
.LASF14:
	.string	"_ISspace"
.LASF32:
	.string	"StrRegionalShuffle"
.LASF30:
	.string	"StrMarkov1"
.LASF44:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF19:
	.string	"_ISpunct"
.LASF36:
	.string	"nseq"
.LASF17:
	.string	"_ISblank"
.LASF16:
	.string	"_ISgraph"
.LASF1:
	.string	"sizetype"
.LASF41:
	.string	"ycol"
.LASF31:
	.string	"StrReverse"
.LASF28:
	.string	"is_eulerian"
.LASF12:
	.string	"_ISdigit"
.LASF7:
	.string	"short int"
.LASF20:
	.string	"_ISalnum"
.LASF21:
	.string	"float"
.LASF46:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF23:
	.string	"long long int"
.LASF40:
	.string	"xcol"
.LASF8:
	.string	"long int"
.LASF18:
	.string	"_IScntrl"
.LASF4:
	.string	"unsigned char"
.LASF38:
	.string	"AlignmentBootstrap"
.LASF45:
	.string	"shuffle.c"
.LASF6:
	.string	"signed char"
.LASF24:
	.string	"long long unsigned int"
.LASF34:
	.string	"ali1"
.LASF35:
	.string	"ali2"
.LASF5:
	.string	"unsigned int"
.LASF11:
	.string	"_ISalpha"
.LASF29:
	.string	"StrMarkov0"
.LASF39:
	.string	"xycol"
.LASF47:
	.string	"QRNAShuffle"
.LASF3:
	.string	"char"
.LASF10:
	.string	"_ISlower"
.LASF2:
	.string	"short unsigned int"
.LASF13:
	.string	"_ISxdigit"
.LASF42:
	.string	"xsym"
.LASF37:
	.string	"alen"
.LASF25:
	.string	"StrShuffle"
.LASF0:
	.string	"long unsigned int"
.LASF22:
	.string	"double"
.LASF15:
	.string	"_ISprint"
.LASF26:
	.string	"StrDPShuffle"
.LASF9:
	.string	"_ISupper"
.LASF27:
	.string	"keep_connecting"
.LASF43:
	.string	"ysym"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
