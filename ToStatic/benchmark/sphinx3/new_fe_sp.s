	.file	"new_fe_sp.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# new_fe_sp.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 8
.LC0:
	.string	"memory alloc failed in fe_build_mel_filters()\n...exiting\n"
	.text
	.globl	fe_build_melfilters
	.type	fe_build_melfilters, @function
fe_build_melfilters:
.LFB2:
	.file 1 "new_fe_sp.c"
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# MEL_FB, MEL_FB
	.loc 1 69 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp211
	movl	12(%rax), %ecx	# MEL_FB_18(D)->fft_size, D.6085
	movq	-104(%rbp), %rax	# MEL_FB, tmp212
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	movl	$4, %edx	#,
	movl	%ecx, %esi	# D.6085,
	movl	%eax, %edi	# D.6085,
	call	fe_create_2d	#
	movq	-104(%rbp), %rdx	# MEL_FB, tmp213
	movq	%rax, 24(%rdx)	# D.6086, MEL_FB_18(D)->filter_coeffs
	.loc 1 70 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp214
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6087,
	call	calloc	#
	movq	%rax, %rdx	# tmp215, D.6088
	movq	-104(%rbp), %rax	# MEL_FB, tmp216
	movq	%rdx, 40(%rax)	# D.6088, MEL_FB_18(D)->left_apex
	.loc 1 71 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp217
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6087,
	call	calloc	#
	movq	%rax, %rdx	# tmp218, D.6088
	movq	-104(%rbp), %rax	# MEL_FB, tmp219
	movq	%rdx, 48(%rax)	# D.6088, MEL_FB_18(D)->width
	.loc 1 73 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp220
	movl	56(%rax), %eax	# MEL_FB_18(D)->doublewide, D.6085
	cmpl	$1, %eax	#, D.6085
	jne	.L2	#,
	.loc 1 74 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp221
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	addl	$4, %eax	#, D.6085
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6087,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp222, filt_edge
	jmp	.L3	#
.L2:
	.loc 1 76 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp223
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	addl	$2, %eax	#, D.6085
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6087,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp224, filt_edge
.L3:
	.loc 1 78 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp225
	movq	24(%rax), %rax	# MEL_FB_18(D)->filter_coeffs, D.6089
	testq	%rax, %rax	# D.6089
	je	.L4	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# MEL_FB, tmp226
	movq	40(%rax), %rax	# MEL_FB_18(D)->left_apex, D.6090
	testq	%rax, %rax	# D.6090
	je	.L4	#,
	movq	-104(%rbp), %rax	# MEL_FB, tmp227
	movq	48(%rax), %rax	# MEL_FB_18(D)->width, D.6091
	testq	%rax, %rax	# D.6091
	je	.L4	#,
	cmpq	$0, -24(%rbp)	#, filt_edge
	jne	.L5	#,
.L4:
	.loc 1 79 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$57, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 80 0
	movl	$0, %edi	#,
	call	exit	#
.L5:
	.loc 1 83 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp228
	movss	(%rax), %xmm1	# MEL_FB_18(D)->sampling_rate, D.6092
	movq	-104(%rbp), %rax	# MEL_FB, tmp229
	movl	12(%rax), %eax	# MEL_FB_18(D)->fft_size, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	divss	%xmm0, %xmm1	# D.6092, tmp230
	movaps	%xmm1, %xmm0	# tmp230, tmp230
	movss	%xmm0, -52(%rbp)	# tmp230, dfreq
	.loc 1 85 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp231
	movl	20(%rax), %eax	# MEL_FB_18(D)->upper_filt_freq, D.6092
	movl	%eax, -108(%rbp)	# D.6092, %sfp
	movss	-108(%rbp), %xmm0	# %sfp,
	call	fe_mel	#
	movss	%xmm0, -108(%rbp)	#, %sfp
	movl	-108(%rbp), %eax	# %sfp, tmp232
	movl	%eax, -48(%rbp)	# tmp232, melmax
	.loc 1 86 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp233
	movl	16(%rax), %eax	# MEL_FB_18(D)->lower_filt_freq, D.6092
	movl	%eax, -108(%rbp)	# D.6092, %sfp
	movss	-108(%rbp), %xmm0	# %sfp,
	call	fe_mel	#
	movss	%xmm0, -108(%rbp)	#, %sfp
	movl	-108(%rbp), %eax	# %sfp, tmp234
	movl	%eax, -44(%rbp)	# tmp234, melmin
	.loc 1 87 0
	movss	-48(%rbp), %xmm0	# melmax, tmp235
	subss	-44(%rbp), %xmm0	# melmin, D.6092
	movq	-104(%rbp), %rax	# MEL_FB, tmp236
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	addl	$1, %eax	#, D.6085
	cvtsi2ss	%eax, %xmm1	# D.6085, D.6092
	divss	%xmm1, %xmm0	# D.6092, tmp237
	movss	%xmm0, -40(%rbp)	# tmp237, dmelbw
	.loc 1 89 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp238
	movl	56(%rax), %eax	# MEL_FB_18(D)->doublewide, D.6085
	cmpl	$1, %eax	#, D.6085
	jne	.L6	#,
	.loc 1 90 0
	movl	$0, -84(%rbp)	#, i
	jmp	.L7	#
.L8:
	.loc 1 91 0 discriminator 2
	movl	-84(%rbp), %eax	# i, tmp239
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6087
	movq	-24(%rbp), %rax	# filt_edge, tmp240
	leaq	(%rdx,%rax), %rbx	#, D.6090
	cvtsi2ss	-84(%rbp), %xmm0	# i, D.6092
	mulss	-40(%rbp), %xmm0	# dmelbw, D.6092
	addss	-44(%rbp), %xmm0	# melmin, D.6092
	call	fe_melinv	#
	movss	%xmm0, -108(%rbp)	#, %sfp
	movl	-108(%rbp), %eax	# %sfp, D.6092
	movl	%eax, (%rbx)	# D.6092, *_59
	.loc 1 90 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L7:
	.loc 1 90 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# MEL_FB, tmp241
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	addl	$3, %eax	#, D.6085
	cmpl	-84(%rbp), %eax	# i, D.6085
	jge	.L8	#,
	jmp	.L9	#
.L6:
	.loc 1 95 0 is_stmt 1
	movl	$0, -84(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 96 0 discriminator 2
	movl	-84(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6087
	movq	-24(%rbp), %rax	# filt_edge, tmp243
	leaq	(%rdx,%rax), %rbx	#, D.6090
	cvtsi2ss	-84(%rbp), %xmm0	# i, D.6092
	mulss	-40(%rbp), %xmm0	# dmelbw, D.6092
	addss	-44(%rbp), %xmm0	# melmin, D.6092
	call	fe_melinv	#
	movss	%xmm0, -108(%rbp)	#, %sfp
	movl	-108(%rbp), %eax	# %sfp, D.6092
	movl	%eax, (%rbx)	# D.6092, *_70
	.loc 1 95 0 discriminator 2
	addl	$1, -84(%rbp)	#, i
.L10:
	.loc 1 95 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# MEL_FB, tmp244
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	addl	$1, %eax	#, D.6085
	cmpl	-84(%rbp), %eax	# i, D.6085
	jge	.L11	#,
.L9:
	.loc 1 102 0 is_stmt 1
	movl	$0, -80(%rbp)	#, whichfilt
	jmp	.L12	#
.L25:
	.loc 1 105 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp245
	movl	56(%rax), %eax	# MEL_FB_18(D)->doublewide, D.6085
	cmpl	$1, %eax	#, D.6085
	jne	.L13	#,
	.loc 1 106 0
	movl	-80(%rbp), %eax	# whichfilt, tmp246
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6087
	movq	-24(%rbp), %rax	# filt_edge, tmp247
	addq	%rdx, %rax	# D.6087, D.6090
	movss	(%rax), %xmm0	# *_83, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp248
	addsd	%xmm1, %xmm0	# tmp248, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp249
	movss	%xmm0, -76(%rbp)	# tmp249, leftfr
	.loc 1 107 0
	movl	-80(%rbp), %eax	# whichfilt, tmp250
	cltq
	addq	$2, %rax	#, D.6094
	leaq	0(,%rax,4), %rdx	#, D.6094
	movq	-24(%rbp), %rax	# filt_edge, tmp251
	addq	%rdx, %rax	# D.6094, D.6090
	movss	(%rax), %xmm0	# *_94, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp252
	addsd	%xmm1, %xmm0	# tmp252, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp253
	movss	%xmm0, -72(%rbp)	# tmp253, centerfr
	.loc 1 108 0
	movl	-80(%rbp), %eax	# whichfilt, tmp254
	cltq
	addq	$4, %rax	#, D.6094
	leaq	0(,%rax,4), %rdx	#, D.6094
	movq	-24(%rbp), %rax	# filt_edge, tmp255
	addq	%rdx, %rax	# D.6094, D.6090
	movss	(%rax), %xmm0	# *_105, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp256
	addsd	%xmm1, %xmm0	# tmp256, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp257
	movss	%xmm0, -68(%rbp)	# tmp257, rightfr
	jmp	.L14	#
.L13:
	.loc 1 110 0
	movl	-80(%rbp), %eax	# whichfilt, tmp258
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6087
	movq	-24(%rbp), %rax	# filt_edge, tmp259
	addq	%rdx, %rax	# D.6087, D.6090
	movss	(%rax), %xmm0	# *_115, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp260
	addsd	%xmm1, %xmm0	# tmp260, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp261
	movss	%xmm0, -76(%rbp)	# tmp261, leftfr
	.loc 1 111 0
	movl	-80(%rbp), %eax	# whichfilt, tmp262
	cltq
	addq	$1, %rax	#, D.6094
	leaq	0(,%rax,4), %rdx	#, D.6094
	movq	-24(%rbp), %rax	# filt_edge, tmp263
	addq	%rdx, %rax	# D.6094, D.6090
	movss	(%rax), %xmm0	# *_126, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp264
	addsd	%xmm1, %xmm0	# tmp264, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp265
	movss	%xmm0, -72(%rbp)	# tmp265, centerfr
	.loc 1 112 0
	movl	-80(%rbp), %eax	# whichfilt, tmp266
	cltq
	addq	$2, %rax	#, D.6094
	leaq	0(,%rax,4), %rdx	#, D.6094
	movq	-24(%rbp), %rax	# filt_edge, tmp267
	addq	%rdx, %rax	# D.6094, D.6090
	movss	(%rax), %xmm0	# *_137, D.6092
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp268
	addsd	%xmm1, %xmm0	# tmp268, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, D.6085
	cvtsi2ss	%eax, %xmm0	# D.6085, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp269
	movss	%xmm0, -68(%rbp)	# tmp269, rightfr
.L14:
	.loc 1 117 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp270
	movq	40(%rax), %rax	# MEL_FB_18(D)->left_apex, D.6090
	movl	-80(%rbp), %edx	# whichfilt, tmp271
	movslq	%edx, %rdx	# tmp271, D.6087
	salq	$2, %rdx	#, D.6087
	addq	%rax, %rdx	# D.6090, D.6090
	movl	-76(%rbp), %eax	# leftfr, tmp272
	movl	%eax, (%rdx)	# tmp272, *_148
	.loc 1 119 0
	movss	-68(%rbp), %xmm0	# rightfr, tmp274
	subss	-76(%rbp), %xmm0	# leftfr, tmp273
	movss	%xmm0, -36(%rbp)	# tmp273, fwidth
	.loc 1 122 0
	movss	.LC2(%rip), %xmm0	#, tmp276
	divss	-36(%rbp), %xmm0	# fwidth, tmp275
	movss	%xmm0, -32(%rbp)	# tmp275, height
	.loc 1 123 0
	movss	-72(%rbp), %xmm0	# centerfr, tmp277
	ucomiss	-76(%rbp), %xmm0	# leftfr, tmp277
	jp	.L27	#,
	movss	-72(%rbp), %xmm0	# centerfr, tmp278
	ucomiss	-76(%rbp), %xmm0	# leftfr, tmp278
	je	.L15	#,
.L27:
	.loc 1 124 0
	movss	-72(%rbp), %xmm0	# centerfr, tmp279
	subss	-76(%rbp), %xmm0	# leftfr, D.6092
	movss	-32(%rbp), %xmm1	# height, tmp281
	divss	%xmm0, %xmm1	# D.6092, tmp280
	movaps	%xmm1, %xmm0	# tmp280, tmp280
	movss	%xmm0, -60(%rbp)	# tmp280, leftslope
.L15:
	.loc 1 126 0
	movss	-72(%rbp), %xmm0	# centerfr, tmp282
	ucomiss	-68(%rbp), %xmm0	# rightfr, tmp282
	jp	.L28	#,
	movss	-72(%rbp), %xmm0	# centerfr, tmp283
	ucomiss	-68(%rbp), %xmm0	# rightfr, tmp283
	je	.L17	#,
.L28:
	.loc 1 127 0
	movss	-72(%rbp), %xmm0	# centerfr, tmp284
	subss	-68(%rbp), %xmm0	# rightfr, D.6092
	movss	-32(%rbp), %xmm1	# height, tmp286
	divss	%xmm0, %xmm1	# D.6092, tmp285
	movaps	%xmm1, %xmm0	# tmp285, tmp285
	movss	%xmm0, -56(%rbp)	# tmp285, rightslope
.L17:
	.loc 1 131 0
	movss	-76(%rbp), %xmm0	# leftfr, tmp287
	divss	-52(%rbp), %xmm0	# dfreq, D.6092
	unpcklps	%xmm0, %xmm0	# D.6092, D.6092
	cvtps2pd	%xmm0, %xmm0	# D.6092, D.6093
	movsd	.LC1(%rip), %xmm1	#, tmp288
	addsd	%xmm1, %xmm0	# tmp288, D.6093
	cvttsd2si	%xmm0, %eax	# D.6093, tmp289
	movl	%eax, -28(%rbp)	# tmp289, start_pt
	.loc 1 132 0
	cvtsi2ss	-28(%rbp), %xmm0	# start_pt, D.6092
	mulss	-52(%rbp), %xmm0	# dfreq, tmp290
	movss	%xmm0, -64(%rbp)	# tmp290, freq
	.loc 1 133 0
	movl	$0, -84(%rbp)	#, i
	.loc 1 135 0
	jmp	.L19	#
.L20:
	.loc 1 136 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp291
	movq	24(%rax), %rax	# MEL_FB_18(D)->filter_coeffs, D.6089
	movl	-80(%rbp), %edx	# whichfilt, tmp292
	movslq	%edx, %rdx	# tmp292, D.6087
	salq	$3, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6089
	movq	(%rax), %rax	# *_165, D.6090
	movl	-84(%rbp), %edx	# i, tmp293
	movslq	%edx, %rdx	# tmp293, D.6087
	salq	$2, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6090
	movss	-64(%rbp), %xmm0	# freq, tmp294
	subss	-76(%rbp), %xmm0	# leftfr, D.6092
	mulss	-60(%rbp), %xmm0	# leftslope, D.6092
	movss	%xmm0, (%rax)	# D.6092, *_169
	.loc 1 138 0
	movss	-64(%rbp), %xmm0	# freq, tmp296
	addss	-52(%rbp), %xmm0	# dfreq, tmp295
	movss	%xmm0, -64(%rbp)	# tmp295, freq
	.loc 1 139 0
	addl	$1, -84(%rbp)	#, i
.L19:
	.loc 1 135 0 discriminator 1
	movss	-72(%rbp), %xmm0	# centerfr, tmp297
	ucomiss	-64(%rbp), %xmm0	# freq, tmp297
	ja	.L20	#,
	.loc 1 143 0
	movss	-64(%rbp), %xmm0	# freq, tmp298
	ucomiss	-72(%rbp), %xmm0	# centerfr, tmp298
	jp	.L23	#,
	movss	-64(%rbp), %xmm0	# freq, tmp299
	ucomiss	-72(%rbp), %xmm0	# centerfr, tmp299
	je	.L29	#,
	.loc 1 148 0
	jmp	.L23	#
.L29:
	.loc 1 144 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp300
	movq	24(%rax), %rax	# MEL_FB_18(D)->filter_coeffs, D.6089
	movl	-80(%rbp), %edx	# whichfilt, tmp301
	movslq	%edx, %rdx	# tmp301, D.6087
	salq	$3, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6089
	movq	(%rax), %rax	# *_177, D.6090
	movl	-84(%rbp), %edx	# i, tmp302
	movslq	%edx, %rdx	# tmp302, D.6087
	salq	$2, %rdx	#, D.6087
	addq	%rax, %rdx	# D.6090, D.6090
	movl	-32(%rbp), %eax	# height, tmp303
	movl	%eax, (%rdx)	# tmp303, *_181
	.loc 1 145 0
	movss	-64(%rbp), %xmm0	# freq, tmp305
	addss	-52(%rbp), %xmm0	# dfreq, tmp304
	movss	%xmm0, -64(%rbp)	# tmp304, freq
	.loc 1 146 0
	addl	$1, -84(%rbp)	#, i
	.loc 1 148 0
	jmp	.L23	#
.L24:
	.loc 1 149 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp306
	movq	24(%rax), %rax	# MEL_FB_18(D)->filter_coeffs, D.6089
	movl	-80(%rbp), %edx	# whichfilt, tmp307
	movslq	%edx, %rdx	# tmp307, D.6087
	salq	$3, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6089
	movq	(%rax), %rax	# *_187, D.6090
	movl	-84(%rbp), %edx	# i, tmp308
	movslq	%edx, %rdx	# tmp308, D.6087
	salq	$2, %rdx	#, D.6087
	addq	%rdx, %rax	# D.6087, D.6090
	movss	-64(%rbp), %xmm0	# freq, tmp309
	subss	-68(%rbp), %xmm0	# rightfr, D.6092
	mulss	-56(%rbp), %xmm0	# rightslope, D.6092
	movss	%xmm0, (%rax)	# D.6092, *_191
	.loc 1 151 0
	movss	-64(%rbp), %xmm0	# freq, tmp311
	addss	-52(%rbp), %xmm0	# dfreq, tmp310
	movss	%xmm0, -64(%rbp)	# tmp310, freq
	.loc 1 152 0
	addl	$1, -84(%rbp)	#, i
.L23:
	.loc 1 148 0 discriminator 1
	movss	-68(%rbp), %xmm0	# rightfr, tmp312
	ucomiss	-64(%rbp), %xmm0	# freq, tmp312
	ja	.L24	#,
	.loc 1 155 0
	movq	-104(%rbp), %rax	# MEL_FB, tmp313
	movq	48(%rax), %rax	# MEL_FB_18(D)->width, D.6091
	movl	-80(%rbp), %edx	# whichfilt, tmp314
	movslq	%edx, %rdx	# tmp314, D.6087
	salq	$2, %rdx	#, D.6087
	addq	%rax, %rdx	# D.6091, D.6091
	movl	-84(%rbp), %eax	# i, tmp315
	movl	%eax, (%rdx)	# tmp315, *_199
	.loc 1 102 0
	addl	$1, -80(%rbp)	#, whichfilt
.L12:
	.loc 1 102 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# MEL_FB, tmp316
	movl	8(%rax), %eax	# MEL_FB_18(D)->num_filters, D.6085
	cmpl	-80(%rbp), %eax	# whichfilt, D.6085
	jg	.L25	#,
	.loc 1 158 0 is_stmt 1
	movq	-24(%rbp), %rax	# filt_edge, tmp317
	movq	%rax, %rdi	# tmp317,
	call	free	#
	.loc 1 159 0
	movl	$0, %eax	#, D.6085
	.loc 1 160 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fe_build_melfilters, .-fe_build_melfilters
	.section	.rodata
	.align 8
.LC3:
	.string	"memory alloc failed in fe_compute_melcosine()\n...exiting\n"
	.text
	.globl	fe_compute_melcosine
	.type	fe_compute_melcosine, @function
fe_compute_melcosine:
.LFB3:
	.loc 1 163 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# MEL_FB, MEL_FB
	.loc 1 170 0
	movq	-56(%rbp), %rax	# MEL_FB, tmp85
	movl	8(%rax), %eax	# MEL_FB_3(D)->num_filters, D.6097
	cvtsi2sd	%eax, %xmm0	# D.6097, D.6098
	addsd	%xmm0, %xmm0	# D.6098, tmp86
	movsd	%xmm0, -32(%rbp)	# tmp86, period
	.loc 1 172 0
	movq	-56(%rbp), %rax	# MEL_FB, tmp87
	movl	8(%rax), %ecx	# MEL_FB_3(D)->num_filters, D.6097
	movq	-56(%rbp), %rax	# MEL_FB, tmp88
	movl	4(%rax), %eax	# MEL_FB_3(D)->num_cepstra, D.6097
	movl	$4, %edx	#,
	movl	%ecx, %esi	# D.6097,
	movl	%eax, %edi	# D.6097,
	call	fe_create_2d	#
	movq	-56(%rbp), %rdx	# MEL_FB, tmp89
	movq	%rax, 32(%rdx)	# D.6099, MEL_FB_3(D)->mel_cosine
	movq	-56(%rbp), %rax	# MEL_FB, tmp90
	movq	32(%rax), %rax	# MEL_FB_3(D)->mel_cosine, D.6100
	testq	%rax, %rax	# D.6100
	jne	.L31	#,
	.loc 1 174 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rax, %rcx	# stderr.1,
	movl	$57, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 175 0
	movl	$0, %edi	#,
	call	exit	#
.L31:
	.loc 1 179 0
	movl	$0, -40(%rbp)	#, i
	jmp	.L32	#
.L35:
	.loc 1 180 0
	cvtsi2sd	-40(%rbp), %xmm0	# i, D.6098
	movsd	.LC4(%rip), %xmm1	#, tmp91
	mulsd	%xmm1, %xmm0	# tmp91, D.6098
	divsd	-32(%rbp), %xmm0	# period, tmp92
	movsd	%xmm0, -24(%rbp)	# tmp92, freq
	.loc 1 181 0
	movl	$0, -36(%rbp)	#, j
	jmp	.L33	#
.L34:
	.loc 1 182 0 discriminator 2
	movq	-56(%rbp), %rax	# MEL_FB, tmp93
	movq	32(%rax), %rax	# MEL_FB_3(D)->mel_cosine, D.6100
	movl	-40(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, D.6101
	salq	$3, %rdx	#, D.6101
	addq	%rdx, %rax	# D.6101, D.6100
	movq	(%rax), %rax	# *_22, D.6102
	movl	-36(%rbp), %edx	# j, tmp95
	movslq	%edx, %rdx	# tmp95, D.6101
	salq	$2, %rdx	#, D.6101
	leaq	(%rax,%rdx), %rbx	#, D.6102
	cvtsi2sd	-36(%rbp), %xmm0	# j, D.6098
	movsd	.LC1(%rip), %xmm1	#, tmp96
	addsd	%xmm1, %xmm0	# tmp96, D.6098
	mulsd	-24(%rbp), %xmm0	# freq, D.6098
	call	cos	#
	unpcklpd	%xmm0, %xmm0	# D.6098
	cvtpd2ps	%xmm0, %xmm0	# D.6098, D.6103
	movss	%xmm0, (%rbx)	# D.6103, *_26
	.loc 1 181 0 discriminator 2
	addl	$1, -36(%rbp)	#, j
.L33:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# MEL_FB, tmp97
	movl	8(%rax), %eax	# MEL_FB_3(D)->num_filters, D.6097
	cmpl	-36(%rbp), %eax	# j, D.6097
	jg	.L34	#,
	.loc 1 179 0 is_stmt 1
	addl	$1, -40(%rbp)	#, i
.L32:
	.loc 1 179 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# MEL_FB, tmp98
	movl	4(%rax), %eax	# MEL_FB_3(D)->num_cepstra, D.6097
	cmpl	-40(%rbp), %eax	# i, D.6097
	jg	.L35	#,
	.loc 1 185 0 is_stmt 1
	movl	$0, %eax	#, D.6097
	.loc 1 187 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fe_compute_melcosine, .-fe_compute_melcosine
	.globl	fe_mel
	.type	fe_mel, @function
fe_mel:
.LFB4:
	.loc 1 191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	.loc 1 192 0
	movss	-4(%rbp), %xmm0	# x, D.6105
	cvtps2pd	%xmm0, %xmm0	# D.6105, D.6105
	movsd	.LC5(%rip), %xmm1	#, tmp66
	divsd	%xmm1, %xmm0	# tmp66, D.6105
	movsd	.LC6(%rip), %xmm1	#, tmp67
	addsd	%xmm1, %xmm0	# tmp67, D.6105
	call	log10	#
	unpcklpd	%xmm0, %xmm0	# D.6105
	cvtpd2ps	%xmm0, %xmm0	# D.6105, D.6106
	movss	.LC7(%rip), %xmm1	#, tmp68
	mulss	%xmm1, %xmm0	# tmp68, D.6106
	movss	%xmm0, -8(%rbp)	# D.6106, %sfp
	movl	-8(%rbp), %eax	# %sfp, <retval>
	.loc 1 193 0
	movl	%eax, -8(%rbp)	# <retval>, %sfp
	movss	-8(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fe_mel, .-fe_mel
	.globl	fe_melinv
	.type	fe_melinv, @function
fe_melinv:
.LFB5:
	.loc 1 196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# x, x
	.loc 1 197 0
	movss	-4(%rbp), %xmm0	# x, D.6107
	cvtps2pd	%xmm0, %xmm0	# D.6107, D.6107
	movsd	.LC8(%rip), %xmm1	#, tmp68
	divsd	%xmm1, %xmm0	# tmp68, D.6107
	movabsq	$4621819117588971520, %rax	#, tmp69
	movapd	%xmm0, %xmm1	# D.6107,
	movq	%rax, -16(%rbp)	# tmp69, %sfp
	movsd	-16(%rbp), %xmm0	# %sfp,
	call	pow	#
	unpcklpd	%xmm0, %xmm0	# D.6107
	cvtpd2ps	%xmm0, %xmm0	# D.6107, D.6108
	unpcklps	%xmm0, %xmm0	# D.6108, D.6108
	cvtps2pd	%xmm0, %xmm0	# D.6108, D.6107
	movsd	.LC6(%rip), %xmm1	#, tmp70
	subsd	%xmm1, %xmm0	# tmp70, D.6107
	movsd	.LC5(%rip), %xmm1	#, tmp71
	mulsd	%xmm1, %xmm0	# tmp71, D.6107
	unpcklpd	%xmm0, %xmm0	# D.6107
	cvtpd2ps	%xmm0, %xmm0	# D.6107, D.6108
	movss	%xmm0, -16(%rbp)	# D.6108, %sfp
	movl	-16(%rbp), %eax	# %sfp, <retval>
	.loc 1 198 0
	movl	%eax, -16(%rbp)	# <retval>, %sfp
	movss	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fe_melinv, .-fe_melinv
	.globl	fe_pre_emphasis
	.type	fe_pre_emphasis, @function
fe_pre_emphasis:
.LFB6:
	.loc 1 203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# in, in
	movq	%rsi, -32(%rbp)	# out, out
	movl	%edx, -36(%rbp)	# len, len
	movss	%xmm0, -40(%rbp)	# factor, factor
	movl	%ecx, %eax	# prior, tmp82
	movw	%ax, -44(%rbp)	# tmp82, prior
	.loc 1 206 0
	movq	-24(%rbp), %rax	# in, tmp83
	movzwl	(%rax), %eax	# *in_2(D), D.6109
	cwtl
	cvtsi2sd	%eax, %xmm0	# tmp84, D.6110
	movss	-40(%rbp), %xmm2	# factor, D.6110
	cvtps2pd	%xmm2, %xmm2	# D.6110, D.6110
	movswl	-44(%rbp), %eax	# prior, tmp85
	cvtsi2sd	%eax, %xmm1	# tmp85, D.6110
	mulsd	%xmm2, %xmm1	# D.6110, D.6110
	subsd	%xmm1, %xmm0	# D.6110, D.6110
	movq	-32(%rbp), %rax	# out, tmp86
	movsd	%xmm0, (%rax)	# D.6110, *out_11(D)
	.loc 1 207 0
	movl	$1, -4(%rbp)	#, i
	jmp	.L42	#
.L43:
	.loc 1 208 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6111
	movq	-32(%rbp), %rax	# out, tmp88
	addq	%rax, %rdx	# tmp88, D.6112
	movl	-4(%rbp), %eax	# i, tmp89
	cltq
	leaq	(%rax,%rax), %rcx	#, D.6111
	movq	-24(%rbp), %rax	# in, tmp90
	addq	%rcx, %rax	# D.6111, D.6113
	movzwl	(%rax), %eax	# *_19, D.6109
	cwtl
	cvtsi2sd	%eax, %xmm0	# tmp91, D.6110
	movss	-40(%rbp), %xmm2	# factor, D.6110
	cvtps2pd	%xmm2, %xmm2	# D.6110, D.6110
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	addq	%rax, %rax	# D.6111
	leaq	-2(%rax), %rcx	#, D.6114
	movq	-24(%rbp), %rax	# in, tmp93
	addq	%rcx, %rax	# D.6114, D.6113
	movzwl	(%rax), %eax	# *_26, D.6109
	cwtl
	cvtsi2sd	%eax, %xmm1	# tmp94, D.6110
	mulsd	%xmm2, %xmm1	# D.6110, D.6110
	subsd	%xmm1, %xmm0	# D.6110, D.6110
	movsd	%xmm0, (%rdx)	# D.6110, *_16
	.loc 1 207 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L42:
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp95
	cmpl	-36(%rbp), %eax	# len, tmp95
	jl	.L43	#,
	.loc 1 211 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fe_pre_emphasis, .-fe_pre_emphasis
	.globl	fe_short_to_double
	.type	fe_short_to_double, @function
fe_short_to_double:
.LFB7:
	.loc 1 214 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# in, in
	movq	%rsi, -32(%rbp)	# out, out
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 217 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L45	#
.L46:
	.loc 1 218 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6115
	movq	-32(%rbp), %rax	# out, tmp68
	addq	%rax, %rdx	# tmp68, D.6116
	movl	-4(%rbp), %eax	# i, tmp69
	cltq
	leaq	(%rax,%rax), %rcx	#, D.6115
	movq	-24(%rbp), %rax	# in, tmp70
	addq	%rcx, %rax	# D.6115, D.6117
	movzwl	(%rax), %eax	# *_11, D.6118
	cwtl
	cvtsi2sd	%eax, %xmm0	# tmp71, D.6119
	movsd	%xmm0, (%rdx)	# D.6119, *_7
	.loc 1 217 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L45:
	.loc 1 217 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp72
	cmpl	-36(%rbp), %eax	# len, tmp72
	jl	.L46	#,
	.loc 1 219 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fe_short_to_double, .-fe_short_to_double
	.globl	fe_create_hamming
	.type	fe_create_hamming, @function
fe_create_hamming:
.LFB8:
	.loc 1 223 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# in, in
	movl	%esi, -44(%rbp)	# in_len, in_len
	.loc 1 226 0
	cmpl	$1, -44(%rbp)	#, in_len
	jle	.L48	#,
	.loc 1 227 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 228 0 discriminator 2
	movl	-20(%rbp), %eax	# i, tmp70
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6120
	movq	-40(%rbp), %rax	# in, tmp71
	leaq	(%rdx,%rax), %rbx	#, D.6121
	cvtsi2sd	-20(%rbp), %xmm0	# i, D.6122
	movsd	.LC4(%rip), %xmm1	#, tmp72
	mulsd	%xmm1, %xmm0	# tmp72, D.6122
	cvtsi2sd	-44(%rbp), %xmm1	# in_len, D.6122
	movsd	.LC6(%rip), %xmm2	#, tmp73
	subsd	%xmm2, %xmm1	# tmp73, D.6122
	divsd	%xmm1, %xmm0	# D.6122, D.6122
	call	cos	#
	movsd	.LC10(%rip), %xmm1	#, tmp74
	mulsd	%xmm1, %xmm0	# tmp74, D.6122
	movsd	.LC11(%rip), %xmm1	#, tmp75
	subsd	%xmm0, %xmm1	# D.6122, D.6122
	movapd	%xmm1, %xmm0	# D.6122, D.6122
	movsd	%xmm0, (%rbx)	# D.6122, *_7
	.loc 1 227 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L49:
	.loc 1 227 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp76
	cmpl	-44(%rbp), %eax	# in_len, tmp76
	jl	.L50	#,
.L48:
	.loc 1 230 0 is_stmt 1
	nop
	.loc 1 232 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fe_create_hamming, .-fe_create_hamming
	.globl	fe_hamming_window
	.type	fe_hamming_window, @function
fe_hamming_window:
.LFB9:
	.loc 1 236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# in, in
	movq	%rsi, -32(%rbp)	# window, window
	movl	%edx, -36(%rbp)	# in_len, in_len
	.loc 1 239 0
	cmpl	$1, -36(%rbp)	#, in_len
	jle	.L53	#,
	.loc 1 240 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L54	#
.L55:
	.loc 1 241 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp71
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6123
	movq	-24(%rbp), %rax	# in, tmp72
	addq	%rdx, %rax	# D.6123, D.6124
	movl	-4(%rbp), %edx	# i, tmp73
	movslq	%edx, %rdx	# tmp73, D.6123
	leaq	0(,%rdx,8), %rcx	#, D.6123
	movq	-24(%rbp), %rdx	# in, tmp74
	addq	%rcx, %rdx	# D.6123, D.6124
	movsd	(%rdx), %xmm1	# *_10, D.6125
	movl	-4(%rbp), %edx	# i, tmp75
	movslq	%edx, %rdx	# tmp75, D.6123
	leaq	0(,%rdx,8), %rcx	#, D.6123
	movq	-32(%rbp), %rdx	# window, tmp76
	addq	%rcx, %rdx	# D.6123, D.6124
	movsd	(%rdx), %xmm0	# *_15, D.6125
	mulsd	%xmm1, %xmm0	# D.6125, D.6125
	movsd	%xmm0, (%rax)	# D.6125, *_7
	.loc 1 240 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L54:
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp77
	cmpl	-36(%rbp), %eax	# in_len, tmp77
	jl	.L55	#,
.L53:
	.loc 1 243 0 is_stmt 1
	nop
	.loc 1 245 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fe_hamming_window, .-fe_hamming_window
	.section	.rodata
	.align 8
.LC12:
	.string	"memory alloc failed in fe_frame_to_fea()\n...exiting\n"
	.align 8
.LC13:
	.string	"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\n"
	.text
	.globl	fe_frame_to_fea
	.type	fe_frame_to_fea, @function
fe_frame_to_fea:
.LFB10:
	.loc 1 249 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# FE, FE
	movq	%rsi, -32(%rbp)	# in, in
	movq	%rdx, -40(%rbp)	# fea, fea
	.loc 1 253 0
	movq	-24(%rbp), %rax	# FE, tmp69
	movl	24(%rax), %eax	# FE_1(D)->FB_TYPE, D.6126
	cmpl	$1, %eax	#, D.6126
	jne	.L58	#,
	.loc 1 254 0
	movq	-24(%rbp), %rax	# FE, tmp70
	movl	20(%rax), %eax	# FE_1(D)->FFT_SIZE, D.6126
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6127,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp71, spec
	.loc 1 255 0
	movq	-24(%rbp), %rax	# FE, tmp72
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.6128
	movl	8(%rax), %eax	# _6->num_filters, D.6126
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6127,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp73, mfspec
	.loc 1 257 0
	cmpq	$0, -16(%rbp)	#, spec
	je	.L59	#,
	.loc 1 257 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, mfspec
	jne	.L60	#,
.L59:
	.loc 1 258 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	%rax, %rcx	# stderr.2,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 259 0
	movl	$0, %edi	#,
	call	exit	#
.L60:
	.loc 1 262 0
	movq	-24(%rbp), %rax	# FE, tmp74
	movl	20(%rax), %ecx	# FE_1(D)->FFT_SIZE, D.6126
	movq	-24(%rbp), %rax	# FE, tmp75
	movl	16(%rax), %esi	# FE_1(D)->FRAME_SIZE, D.6126
	movq	-16(%rbp), %rdx	# spec, tmp76
	movq	-32(%rbp), %rax	# in, tmp77
	movq	%rax, %rdi	# tmp77,
	call	fe_spec_magnitude	#
	.loc 1 263 0
	movq	-8(%rbp), %rdx	# mfspec, tmp78
	movq	-16(%rbp), %rcx	# spec, tmp79
	movq	-24(%rbp), %rax	# FE, tmp80
	movq	%rcx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	fe_mel_spec	#
	.loc 1 264 0
	movq	-40(%rbp), %rdx	# fea, tmp81
	movq	-8(%rbp), %rcx	# mfspec, tmp82
	movq	-24(%rbp), %rax	# FE, tmp83
	movq	%rcx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	fe_mel_cep	#
	.loc 1 266 0
	movq	-16(%rbp), %rax	# spec, tmp84
	movq	%rax, %rdi	# tmp84,
	call	free	#
	.loc 1 267 0
	movq	-8(%rbp), %rax	# mfspec, tmp85
	movq	%rax, %rdi	# tmp85,
	call	free	#
	jmp	.L62	#
.L58:
	.loc 1 270 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	%rax, %rcx	# stderr.3,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC13, %edi	#,
	call	fwrite	#
	.loc 1 271 0
	movl	$0, %edi	#,
	call	exit	#
.L62:
	.loc 1 274 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	fe_frame_to_fea, .-fe_frame_to_fea
	.section	.rodata
	.align 8
.LC14:
	.string	"memory alloc failed in fe_spec_magnitude()\n...exiting\n"
	.text
	.globl	fe_spec_magnitude
	.type	fe_spec_magnitude, @function
fe_spec_magnitude:
.LFB11:
	.loc 1 279 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# data, data
	movl	%esi, -44(%rbp)	# data_len, data_len
	movq	%rdx, -56(%rbp)	# spec, spec
	movl	%ecx, -48(%rbp)	# fftsize, fftsize
	.loc 1 284 0
	movl	-48(%rbp), %eax	# fftsize, tmp131
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6131,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp132, FFT
	.loc 1 285 0
	movl	-48(%rbp), %eax	# fftsize, tmp133
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6131,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp134, IN
	.loc 1 287 0
	cmpq	$0, -16(%rbp)	#, FFT
	je	.L64	#,
	.loc 1 287 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, IN
	jne	.L65	#,
.L64:
	.loc 1 288 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rcx	# stderr.4,
	movl	$54, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	.loc 1 289 0
	movl	$0, %edi	#,
	call	exit	#
.L65:
	.loc 1 292 0
	movl	-44(%rbp), %eax	# data_len, tmp135
	cmpl	-48(%rbp), %eax	# fftsize, tmp135
	jle	.L66	#,
	.loc 1 295 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L67	#
.L68:
	.loc 1 296 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp136
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp137
	addq	%rax, %rdx	# tmp137, D.6132
	movl	-24(%rbp), %eax	# j, tmp138
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6131
	movq	-40(%rbp), %rax	# data, tmp139
	addq	%rcx, %rax	# D.6131, D.6133
	movq	(%rax), %rax	# *_20, D.6134
	movq	%rax, (%rdx)	# D.6134, _16->r
	.loc 1 297 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp140
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp141
	addq	%rax, %rdx	# tmp141, D.6132
	movl	$0, %eax	#, tmp142
	movq	%rax, 8(%rdx)	# tmp142, _24->i
	.loc 1 295 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L67:
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp143
	cmpl	-48(%rbp), %eax	# fftsize, tmp143
	jl	.L68	#,
	.loc 1 299 0 is_stmt 1
	movl	$0, -20(%rbp)	#, wrap
	jmp	.L69	#
.L70:
	.loc 1 300 0 discriminator 2
	movl	-20(%rbp), %eax	# wrap, tmp144
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp145
	addq	%rdx, %rax	# D.6131, D.6132
	movl	-20(%rbp), %edx	# wrap, tmp146
	movslq	%edx, %rdx	# tmp146, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-8(%rbp), %rdx	# IN, tmp147
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	(%rdx), %xmm1	# _32->r, D.6134
	movl	-24(%rbp), %edx	# j, tmp148
	movslq	%edx, %rdx	# tmp148, D.6131
	leaq	0(,%rdx,8), %rcx	#, D.6131
	movq	-40(%rbp), %rdx	# data, tmp149
	addq	%rcx, %rdx	# D.6131, D.6133
	movsd	(%rdx), %xmm0	# *_36, D.6134
	addsd	%xmm1, %xmm0	# D.6134, D.6134
	movsd	%xmm0, (%rax)	# D.6134, _29->r
	.loc 1 301 0 discriminator 2
	movl	-20(%rbp), %eax	# wrap, tmp150
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp151
	addq	%rdx, %rax	# D.6131, D.6132
	movl	-20(%rbp), %edx	# wrap, tmp152
	movslq	%edx, %rdx	# tmp152, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-8(%rbp), %rdx	# IN, tmp153
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	8(%rdx), %xmm1	# _44->i, D.6134
	xorpd	%xmm0, %xmm0	# tmp154
	addsd	%xmm1, %xmm0	# D.6134, D.6134
	movsd	%xmm0, 8(%rax)	# D.6134, _41->i
	.loc 1 299 0 discriminator 2
	addl	$1, -20(%rbp)	#, wrap
	addl	$1, -24(%rbp)	#, j
.L69:
	.loc 1 299 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp155
	cmpl	-44(%rbp), %eax	# data_len, tmp155
	jl	.L70	#,
	jmp	.L71	#
.L66:
	.loc 1 306 0 is_stmt 1
	movl	$0, -24(%rbp)	#, j
	jmp	.L72	#
.L73:
	.loc 1 307 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp156
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp157
	addq	%rax, %rdx	# tmp157, D.6132
	movl	-24(%rbp), %eax	# j, tmp158
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6131
	movq	-40(%rbp), %rax	# data, tmp159
	addq	%rcx, %rax	# D.6131, D.6133
	movq	(%rax), %rax	# *_55, D.6134
	movq	%rax, (%rdx)	# D.6134, _52->r
	.loc 1 308 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp160
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp161
	addq	%rax, %rdx	# tmp161, D.6132
	movl	$0, %eax	#, tmp162
	movq	%rax, 8(%rdx)	# tmp162, _59->i
	.loc 1 306 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L72:
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp163
	cmpl	-44(%rbp), %eax	# data_len, tmp163
	jl	.L73	#,
	.loc 1 310 0 is_stmt 1
	jmp	.L74	#
.L75:
	.loc 1 311 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp164
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp165
	addq	%rax, %rdx	# tmp165, D.6132
	movl	$0, %eax	#, tmp166
	movq	%rax, (%rdx)	# tmp166, _63->r
	.loc 1 312 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp167
	cltq
	salq	$4, %rax	#, D.6131
	movq	%rax, %rdx	# D.6131, D.6131
	movq	-8(%rbp), %rax	# IN, tmp168
	addq	%rax, %rdx	# tmp168, D.6132
	movl	$0, %eax	#, tmp169
	movq	%rax, 8(%rdx)	# tmp169, _66->i
	.loc 1 310 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L74:
	.loc 1 310 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp170
	cmpl	-48(%rbp), %eax	# fftsize, tmp170
	jl	.L75	#,
.L71:
	.loc 1 317 0 is_stmt 1
	movl	-48(%rbp), %edx	# fftsize, tmp171
	movq	-16(%rbp), %rsi	# FFT, tmp172
	movq	-8(%rbp), %rax	# IN, tmp173
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp173,
	call	fe_fft	#
	.loc 1 319 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L76	#
.L77:
	.loc 1 321 0 discriminator 2
	movl	-24(%rbp), %eax	# j, tmp174
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6131
	movq	-56(%rbp), %rax	# spec, tmp175
	addq	%rdx, %rax	# D.6131, D.6133
	movl	-24(%rbp), %edx	# j, tmp176
	movslq	%edx, %rdx	# tmp176, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-16(%rbp), %rdx	# FFT, tmp177
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	(%rdx), %xmm1	# _76->r, D.6134
	movl	-24(%rbp), %edx	# j, tmp178
	movslq	%edx, %rdx	# tmp178, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-16(%rbp), %rdx	# FFT, tmp179
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	(%rdx), %xmm0	# _80->r, D.6134
	mulsd	%xmm0, %xmm1	# D.6134, D.6134
	movl	-24(%rbp), %edx	# j, tmp180
	movslq	%edx, %rdx	# tmp180, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-16(%rbp), %rdx	# FFT, tmp181
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	8(%rdx), %xmm2	# _85->i, D.6134
	movl	-24(%rbp), %edx	# j, tmp182
	movslq	%edx, %rdx	# tmp182, D.6131
	movq	%rdx, %rcx	# D.6131, D.6131
	salq	$4, %rcx	#, D.6131
	movq	-16(%rbp), %rdx	# FFT, tmp183
	addq	%rcx, %rdx	# D.6131, D.6132
	movsd	8(%rdx), %xmm0	# _89->i, D.6134
	mulsd	%xmm2, %xmm0	# D.6134, D.6134
	addsd	%xmm1, %xmm0	# D.6134, D.6134
	movsd	%xmm0, (%rax)	# D.6134, *_73
	.loc 1 319 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L76:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# fftsize, tmp184
	movl	%eax, %edx	# tmp184, tmp185
	shrl	$31, %edx	#, tmp185
	addl	%edx, %eax	# tmp185, tmp186
	sarl	%eax	# tmp187
	cmpl	-24(%rbp), %eax	# j, D.6135
	jge	.L77	#,
	.loc 1 324 0 is_stmt 1
	movq	-16(%rbp), %rax	# FFT, tmp188
	movq	%rax, %rdi	# tmp188,
	call	free	#
	.loc 1 325 0
	movq	-8(%rbp), %rax	# IN, tmp189
	movq	%rax, %rdi	# tmp189,
	call	free	#
	.loc 1 326 0
	nop
	.loc 1 327 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fe_spec_magnitude, .-fe_spec_magnitude
	.globl	fe_mel_spec
	.type	fe_mel_spec, @function
fe_mel_spec:
.LFB12:
	.loc 1 330 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# FE, FE
	movq	%rsi, -32(%rbp)	# spec, spec
	movq	%rdx, -40(%rbp)	# mfspec, mfspec
	.loc 1 334 0
	movq	-24(%rbp), %rax	# FE, tmp107
	movss	(%rax), %xmm1	# FE_3(D)->SAMPLING_RATE, D.6137
	movq	-24(%rbp), %rax	# FE, tmp108
	movl	20(%rax), %eax	# FE_3(D)->FFT_SIZE, D.6138
	cvtsi2ss	%eax, %xmm0	# D.6138, D.6137
	divss	%xmm0, %xmm1	# D.6137, tmp109
	movaps	%xmm1, %xmm0	# tmp109, tmp109
	movss	%xmm0, -8(%rbp)	# tmp109, dfreq
	.loc 1 336 0
	movl	$0, -16(%rbp)	#, whichfilt
	jmp	.L80	#
.L83:
	.loc 1 340 0
	movq	-24(%rbp), %rax	# FE, tmp110
	movq	56(%rax), %rax	# FE_3(D)->MEL_FB, D.6139
	movq	40(%rax), %rax	# _11->left_apex, D.6140
	movl	-16(%rbp), %edx	# whichfilt, tmp111
	movslq	%edx, %rdx	# tmp111, D.6141
	salq	$2, %rdx	#, D.6141
	addq	%rdx, %rax	# D.6141, D.6140
	movss	(%rax), %xmm0	# *_15, D.6137
	divss	-8(%rbp), %xmm0	# dfreq, D.6137
	unpcklps	%xmm0, %xmm0	# D.6137, D.6137
	cvtps2pd	%xmm0, %xmm0	# D.6137, D.6142
	movsd	.LC1(%rip), %xmm1	#, tmp112
	addsd	%xmm1, %xmm0	# tmp112, D.6142
	cvttsd2si	%xmm0, %eax	# D.6142, tmp113
	movl	%eax, -4(%rbp)	# tmp113, start
	.loc 1 341 0
	movl	-16(%rbp), %eax	# whichfilt, tmp114
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6141
	movq	-40(%rbp), %rax	# mfspec, tmp115
	addq	%rax, %rdx	# tmp115, D.6143
	movl	$0, %eax	#, tmp116
	movq	%rax, (%rdx)	# tmp116, *_24
	.loc 1 342 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L81	#
.L82:
	.loc 1 343 0 discriminator 2
	movl	-16(%rbp), %eax	# whichfilt, tmp117
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6141
	movq	-40(%rbp), %rax	# mfspec, tmp118
	addq	%rax, %rdx	# tmp118, D.6143
	movl	-16(%rbp), %eax	# whichfilt, tmp119
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6141
	movq	-40(%rbp), %rax	# mfspec, tmp120
	addq	%rcx, %rax	# D.6141, D.6143
	movsd	(%rax), %xmm1	# *_37, D.6142
	.loc 1 344 0 discriminator 2
	movq	-24(%rbp), %rax	# FE, tmp121
	movq	56(%rax), %rax	# FE_3(D)->MEL_FB, D.6139
	movq	24(%rax), %rax	# _39->filter_coeffs, D.6145
	movl	-16(%rbp), %ecx	# whichfilt, tmp122
	movslq	%ecx, %rcx	# tmp122, D.6141
	salq	$3, %rcx	#, D.6141
	addq	%rcx, %rax	# D.6141, D.6145
	movq	(%rax), %rax	# *_43, D.6140
	movl	-12(%rbp), %ecx	# i, tmp123
	movslq	%ecx, %rcx	# tmp123, D.6141
	salq	$2, %rcx	#, D.6141
	addq	%rcx, %rax	# D.6141, D.6140
	movss	(%rax), %xmm0	# *_47, D.6137
	unpcklps	%xmm0, %xmm0	# D.6137, D.6137
	cvtps2pd	%xmm0, %xmm0	# D.6137, D.6142
	movl	-12(%rbp), %eax	# i, tmp124
	movl	-4(%rbp), %ecx	# start, tmp125
	addl	%ecx, %eax	# tmp125, D.6138
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6141
	movq	-32(%rbp), %rax	# spec, tmp126
	addq	%rcx, %rax	# D.6141, D.6143
	movsd	(%rax), %xmm2	# *_54, D.6142
	mulsd	%xmm2, %xmm0	# D.6142, D.6142
	.loc 1 343 0 discriminator 2
	addsd	%xmm1, %xmm0	# D.6142, D.6142
	movsd	%xmm0, (%rdx)	# D.6142, *_34
	.loc 1 342 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L81:
	.loc 1 342 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# FE, tmp127
	movq	56(%rax), %rax	# FE_3(D)->MEL_FB, D.6139
	movq	48(%rax), %rax	# _26->width, D.6144
	movl	-16(%rbp), %edx	# whichfilt, tmp128
	movslq	%edx, %rdx	# tmp128, D.6141
	salq	$2, %rdx	#, D.6141
	addq	%rdx, %rax	# D.6141, D.6144
	movl	(%rax), %eax	# *_30, D.6138
	cmpl	-12(%rbp), %eax	# i, D.6138
	jg	.L82	#,
	.loc 1 336 0 is_stmt 1
	addl	$1, -16(%rbp)	#, whichfilt
.L80:
	.loc 1 336 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# FE, tmp129
	movq	56(%rax), %rax	# FE_3(D)->MEL_FB, D.6139
	movl	8(%rax), %eax	# _9->num_filters, D.6138
	cmpl	-16(%rbp), %eax	# whichfilt, D.6138
	jg	.L83	#,
	.loc 1 347 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	fe_mel_spec, .-fe_mel_spec
	.globl	fe_mel_cep
	.type	fe_mel_cep, @function
fe_mel_cep:
.LFB13:
	.loc 1 353 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# FE, FE
	movq	%rsi, -48(%rbp)	# mfspec, mfspec
	movq	%rdx, -56(%rbp)	# mfcep, mfcep
	.loc 1 358 0
	movq	-40(%rbp), %rax	# FE, tmp119
	movq	56(%rax), %rax	# FE_5(D)->MEL_FB, D.6146
	movl	8(%rax), %eax	# _6->num_filters, tmp120
	movl	%eax, -20(%rbp)	# tmp120, period
	.loc 1 360 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L85	#
.L89:
	.loc 1 362 0
	movl	-32(%rbp), %eax	# i, tmp121
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-48(%rbp), %rax	# mfspec, tmp122
	addq	%rdx, %rax	# D.6148, D.6149
	movsd	(%rax), %xmm0	# *_14, D.6150
	xorpd	%xmm1, %xmm1	# tmp123
	ucomisd	%xmm1, %xmm0	# tmp123, D.6150
	jbe	.L98	#,
	.loc 1 363 0
	movl	-32(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-48(%rbp), %rax	# mfspec, tmp125
	leaq	(%rdx,%rax), %rbx	#, D.6149
	movl	-32(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-48(%rbp), %rax	# mfspec, tmp127
	addq	%rdx, %rax	# D.6148, D.6149
	movq	(%rax), %rax	# *_21, D.6150
	movq	%rax, -64(%rbp)	# D.6150, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	log	#
	movsd	%xmm0, -64(%rbp)	#, %sfp
	movq	-64(%rbp), %rax	# %sfp, D.6150
	movq	%rax, (%rbx)	# D.6150, *_18
	jmp	.L88	#
.L98:
	.loc 1 365 0
	movl	-32(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-48(%rbp), %rax	# mfspec, tmp129
	addq	%rax, %rdx	# tmp129, D.6149
	movabsq	$-4541763675970600960, %rax	#, tmp130
	movq	%rax, (%rdx)	# tmp130, *_26
.L88:
	.loc 1 360 0
	addl	$1, -32(%rbp)	#, i
.L85:
	.loc 1 360 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# FE, tmp131
	movq	56(%rax), %rax	# FE_5(D)->MEL_FB, D.6146
	movl	8(%rax), %eax	# _9->num_filters, D.6147
	cmpl	-32(%rbp), %eax	# i, D.6147
	jg	.L89	#,
	.loc 1 369 0 is_stmt 1
	movl	$0, -32(%rbp)	#, i
	jmp	.L90	#
.L95:
	.loc 1 370 0
	movl	-32(%rbp), %eax	# i, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-56(%rbp), %rax	# mfcep, tmp133
	addq	%rax, %rdx	# tmp133, D.6149
	movl	$0, %eax	#, tmp134
	movq	%rax, (%rdx)	# tmp134, *_33
	.loc 1 371 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L91	#
.L94:
	.loc 1 372 0
	cmpl	$0, -28(%rbp)	#, j
	jne	.L92	#,
	.loc 1 373 0
	movl	.LC17(%rip), %eax	#, tmp135
	movl	%eax, -24(%rbp)	# tmp135, beta
	jmp	.L93	#
.L92:
	.loc 1 375 0
	movl	.LC18(%rip), %eax	#, tmp136
	movl	%eax, -24(%rbp)	# tmp136, beta
.L93:
	.loc 1 376 0
	movl	-32(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-56(%rbp), %rax	# mfcep, tmp138
	addq	%rax, %rdx	# tmp138, D.6149
	movl	-32(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6148
	movq	-56(%rbp), %rax	# mfcep, tmp140
	addq	%rcx, %rax	# D.6148, D.6149
	movsd	(%rax), %xmm2	# *_44, D.6150
	movss	-24(%rbp), %xmm0	# beta, D.6150
	cvtps2pd	%xmm0, %xmm0	# D.6150, D.6150
	movl	-28(%rbp), %eax	# j, tmp141
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6148
	movq	-48(%rbp), %rax	# mfspec, tmp142
	addq	%rcx, %rax	# D.6148, D.6149
	movsd	(%rax), %xmm1	# *_49, D.6150
	mulsd	%xmm0, %xmm1	# D.6150, D.6150
	movq	-40(%rbp), %rax	# FE, tmp143
	movq	56(%rax), %rax	# FE_5(D)->MEL_FB, D.6146
	movq	32(%rax), %rax	# _52->mel_cosine, D.6151
	movl	-32(%rbp), %ecx	# i, tmp144
	movslq	%ecx, %rcx	# tmp144, D.6148
	salq	$3, %rcx	#, D.6148
	addq	%rcx, %rax	# D.6148, D.6151
	movq	(%rax), %rax	# *_56, D.6152
	movl	-28(%rbp), %ecx	# j, tmp145
	movslq	%ecx, %rcx	# tmp145, D.6148
	salq	$2, %rcx	#, D.6148
	addq	%rcx, %rax	# D.6148, D.6152
	movss	(%rax), %xmm0	# *_60, D.6153
	unpcklps	%xmm0, %xmm0	# D.6153, D.6153
	cvtps2pd	%xmm0, %xmm0	# D.6153, D.6150
	mulsd	%xmm1, %xmm0	# D.6150, D.6150
	addsd	%xmm2, %xmm0	# D.6150, D.6150
	movsd	%xmm0, (%rdx)	# D.6150, *_41
	.loc 1 371 0
	addl	$1, -28(%rbp)	#, j
.L91:
	.loc 1 371 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# FE, tmp146
	movq	56(%rax), %rax	# FE_5(D)->MEL_FB, D.6146
	movl	8(%rax), %eax	# _35->num_filters, D.6147
	cmpl	-28(%rbp), %eax	# j, D.6147
	jg	.L94	#,
	.loc 1 378 0 is_stmt 1
	movl	-32(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6148
	movq	-56(%rbp), %rax	# mfcep, tmp148
	addq	%rdx, %rax	# D.6148, D.6149
	movl	-32(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.6148
	leaq	0(,%rdx,8), %rcx	#, D.6148
	movq	-56(%rbp), %rdx	# mfcep, tmp150
	addq	%rcx, %rdx	# D.6148, D.6149
	movsd	(%rdx), %xmm1	# *_71, D.6150
	cvtsi2ss	-20(%rbp), %xmm0	# period, D.6153
	unpcklps	%xmm0, %xmm0	# D.6153, D.6153
	cvtps2pd	%xmm0, %xmm0	# D.6153, D.6150
	divsd	%xmm0, %xmm1	# D.6150, D.6150
	movapd	%xmm1, %xmm0	# D.6150, D.6150
	movsd	%xmm0, (%rax)	# D.6150, *_68
	.loc 1 369 0
	addl	$1, -32(%rbp)	#, i
.L90:
	.loc 1 369 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# FE, tmp151
	movl	28(%rax), %eax	# FE_5(D)->NUM_CEPSTRA, D.6147
	cmpl	-32(%rbp), %eax	# i, D.6147
	jg	.L95	#,
	.loc 1 380 0 is_stmt 1
	nop
	.loc 1 381 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	fe_mel_cep, .-fe_mel_cep
	.section	.rodata
	.align 8
.LC19:
	.string	"fft: N must be a power of 2 (is %d)\n"
	.align 8
.LC20:
	.string	"fft: invert must be either +1 or -1 (is %d)\n"
	.text
	.globl	fe_fft
	.type	fe_fft, @function
fe_fft:
.LFB14:
	.loc 1 384 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# in, in
	movq	%rsi, -80(%rbp)	# out, out
	movl	%edx, -84(%rbp)	# N, N
	movl	%ecx, -88(%rbp)	# invert, invert
	.loc 1 404 0
	movl	-84(%rbp), %eax	# N, tmp214
	movl	%eax, k.5209(%rip)	# tmp214, k
	movl	$0, lgN.5210(%rip)	#, lgN
	jmp	.L100	#
.L104:
	.loc 1 406 0
	movl	k.5209(%rip), %eax	# k, k.5
	andl	$1, %eax	#, D.6155
	testl	%eax, %eax	# D.6155
	jne	.L101	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	cmpl	$0, -84(%rbp)	#, N
	jns	.L102	#,
.L101:
	.loc 1 408 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.7
	movl	-84(%rbp), %edx	# N, tmp215
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# stderr.7,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 409 0
	movl	$-1, %eax	#, D.6154
	jmp	.L103	#
.L102:
	.loc 1 404 0
	movl	k.5209(%rip), %eax	# k, k.8
	movl	%eax, %edx	# k.8, tmp216
	shrl	$31, %edx	#, tmp216
	addl	%edx, %eax	# tmp216, tmp217
	sarl	%eax	# tmp218
	movl	%eax, k.5209(%rip)	# k.9, k
	movl	lgN.5210(%rip), %eax	# lgN, lgN.10
	addl	$1, %eax	#, lgN.11
	movl	%eax, lgN.5210(%rip)	# lgN.11, lgN
.L100:
	.loc 1 404 0 is_stmt 0 discriminator 1
	movl	k.5209(%rip), %eax	# k, k.12
	cmpl	$1, %eax	#, k.12
	jg	.L104	#,
	.loc 1 414 0 is_stmt 1
	cmpl	$1, -88(%rbp)	#, invert
	jne	.L105	#,
	.loc 1 415 0
	movabsq	$4607182418800017408, %rax	#, tmp219
	movq	%rax, div.5223(%rip)	# tmp219, div
	jmp	.L106	#
.L105:
	.loc 1 416 0
	cmpl	$-1, -88(%rbp)	#, invert
	jne	.L107	#,
	.loc 1 417 0
	cvtsi2sd	-84(%rbp), %xmm0	# N, div.13
	movsd	%xmm0, div.5223(%rip)	# div.13, div
	jmp	.L106	#
.L107:
	.loc 1 420 0
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movl	-88(%rbp), %edx	# invert, tmp220
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# stderr.14,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 421 0
	movl	$-1, %eax	#, D.6154
	jmp	.L103	#
.L106:
	.loc 1 425 0
	movl	-84(%rbp), %eax	# N, tmp221
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6156,
	call	calloc	#
	movq	%rax, buffer.5220(%rip)	# buffer.15, buffer
	.loc 1 426 0
	movl	lgN.5210(%rip), %eax	# lgN, lgN.16
	andl	$1, %eax	#, D.6155
	testl	%eax, %eax	# D.6155
	jne	.L108	#,
	.loc 1 428 0
	movq	-80(%rbp), %rax	# out, tmp223
	movq	%rax, from.5217(%rip)	# tmp223, from
	.loc 1 429 0
	movq	buffer.5220(%rip), %rax	# buffer, buffer.18
	movq	%rax, to.5218(%rip)	# buffer.18, to
	jmp	.L109	#
.L108:
	.loc 1 433 0
	movq	-80(%rbp), %rax	# out, tmp224
	movq	%rax, to.5218(%rip)	# tmp224, to
	.loc 1 434 0
	movq	buffer.5220(%rip), %rax	# buffer, buffer.19
	movq	%rax, from.5217(%rip)	# buffer.19, from
.L109:
	.loc 1 438 0
	movl	$0, s.5208(%rip)	#, s
	jmp	.L110	#
.L111:
	.loc 1 440 0 discriminator 2
	movq	from.5217(%rip), %rax	# from, from.20
	movl	s.5208(%rip), %edx	# s, s.21
	movslq	%edx, %rdx	# s.21, D.6156
	salq	$4, %rdx	#, D.6156
	addq	%rdx, %rax	# D.6156, D.6157
	movl	s.5208(%rip), %edx	# s, s.22
	movslq	%edx, %rdx	# s.22, D.6156
	movq	%rdx, %rcx	# D.6156, D.6156
	salq	$4, %rcx	#, D.6156
	movq	-72(%rbp), %rdx	# in, tmp225
	addq	%rcx, %rdx	# D.6156, D.6157
	movsd	(%rdx), %xmm0	# _40->r, D.6158
	movsd	div.5223(%rip), %xmm1	# div, div.23
	divsd	%xmm1, %xmm0	# div.23, D.6158
	movsd	%xmm0, (%rax)	# D.6158, _35->r
	.loc 1 441 0 discriminator 2
	movq	from.5217(%rip), %rax	# from, from.24
	movl	s.5208(%rip), %edx	# s, s.25
	movslq	%edx, %rdx	# s.25, D.6156
	salq	$4, %rdx	#, D.6156
	addq	%rdx, %rax	# D.6156, D.6157
	movl	s.5208(%rip), %edx	# s, s.26
	movslq	%edx, %rdx	# s.26, D.6156
	movq	%rdx, %rcx	# D.6156, D.6156
	salq	$4, %rcx	#, D.6156
	movq	-72(%rbp), %rdx	# in, tmp226
	addq	%rcx, %rdx	# D.6156, D.6157
	movsd	8(%rdx), %xmm0	# _52->i, D.6158
	movsd	div.5223(%rip), %xmm1	# div, div.27
	divsd	%xmm1, %xmm0	# div.27, D.6158
	movsd	%xmm0, 8(%rax)	# D.6158, _48->i
	.loc 1 438 0 discriminator 2
	movl	s.5208(%rip), %eax	# s, s.28
	addl	$1, %eax	#, s.29
	movl	%eax, s.5208(%rip)	# s.29, s
.L110:
	.loc 1 438 0 is_stmt 0 discriminator 1
	movl	s.5208(%rip), %eax	# s, s.30
	cmpl	-84(%rbp), %eax	# N, s.30
	jl	.L111	#,
	.loc 1 446 0 is_stmt 1
	movl	-84(%rbp), %eax	# N, tmp227
	movl	%eax, %edx	# tmp227, tmp228
	shrl	$31, %edx	#, tmp228
	addl	%edx, %eax	# tmp228, tmp229
	sarl	%eax	# tmp230
	cltq
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.6156,
	call	calloc	#
	movq	%rax, w.5216(%rip)	# w.31, w
	.loc 1 447 0
	movl	$0, k.5209(%rip)	#, k
	jmp	.L112	#
.L113:
	.loc 1 449 0 discriminator 2
	cvtsi2sd	-88(%rbp), %xmm0	# invert, D.6158
	movsd	.LC21(%rip), %xmm1	#, tmp232
	mulsd	%xmm0, %xmm1	# D.6158, D.6158
	movl	k.5209(%rip), %eax	# k, k.32
	cvtsi2sd	%eax, %xmm0	# k.32, D.6158
	mulsd	%xmm1, %xmm0	# D.6158, D.6158
	cvtsi2sd	-84(%rbp), %xmm1	# N, D.6158
	divsd	%xmm1, %xmm0	# D.6158, x.33
	movsd	%xmm0, x.5224(%rip)	# x.33, x
	.loc 1 450 0 discriminator 2
	movq	w.5216(%rip), %rax	# w, w.34
	movl	k.5209(%rip), %edx	# k, k.35
	movslq	%edx, %rdx	# k.35, D.6156
	salq	$4, %rdx	#, D.6156
	leaq	(%rax,%rdx), %rbx	#, D.6157
	movq	x.5224(%rip), %rax	# x, x.36
	movq	%rax, -96(%rbp)	# x.36, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	cos	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, D.6158
	movq	%rax, (%rbx)	# D.6158, _74->r
	.loc 1 451 0 discriminator 2
	movq	w.5216(%rip), %rax	# w, w.37
	movl	k.5209(%rip), %edx	# k, k.38
	movslq	%edx, %rdx	# k.38, D.6156
	salq	$4, %rdx	#, D.6156
	leaq	(%rax,%rdx), %rbx	#, D.6157
	movq	x.5224(%rip), %rax	# x, x.39
	movq	%rax, -96(%rbp)	# x.39, %sfp
	movsd	-96(%rbp), %xmm0	# %sfp,
	call	sin	#
	movsd	%xmm0, -96(%rbp)	#, %sfp
	movq	-96(%rbp), %rax	# %sfp, D.6158
	movq	%rax, 8(%rbx)	# D.6158, _81->i
	.loc 1 447 0 discriminator 2
	movl	k.5209(%rip), %eax	# k, k.40
	addl	$1, %eax	#, k.41
	movl	%eax, k.5209(%rip)	# k.41, k
.L112:
	.loc 1 447 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# N, tmp233
	movl	%eax, %edx	# tmp233, tmp234
	shrl	$31, %edx	#, tmp234
	addl	%edx, %eax	# tmp234, tmp235
	sarl	%eax	# tmp236
	movl	%eax, %edx	# tmp236, D.6154
	movl	k.5209(%rip), %eax	# k, k.42
	cmpl	%eax, %edx	# k.42, D.6154
	jg	.L113	#,
	.loc 1 453 0 is_stmt 1
	movq	w.5216(%rip), %rdx	# w, w.43
	movl	-84(%rbp), %eax	# N, tmp237
	movl	%eax, %ecx	# tmp237, tmp238
	shrl	$31, %ecx	#, tmp238
	addl	%ecx, %eax	# tmp238, tmp239
	sarl	%eax	# tmp240
	cltq
	salq	$4, %rax	#, D.6156
	addq	%rdx, %rax	# w.43, wEnd.44
	movq	%rax, wEnd.5222(%rip)	# wEnd.44, wEnd
	.loc 1 456 0
	movl	-84(%rbp), %eax	# N, tmp241
	movl	%eax, %edx	# tmp241, tmp242
	shrl	$31, %edx	#, tmp242
	addl	%edx, %eax	# tmp242, tmp243
	sarl	%eax	# tmp244
	movl	%eax, k.5209(%rip)	# k.45, k
	jmp	.L114	#
.L119:
	.loc 1 458 0
	movl	$0, s.5208(%rip)	#, s
	jmp	.L115	#
.L118:
	.loc 1 461 0
	movq	from.5217(%rip), %rax	# from, from.46
	movl	s.5208(%rip), %edx	# s, s.47
	movslq	%edx, %rdx	# s.47, D.6156
	salq	$4, %rdx	#, D.6156
	addq	%rdx, %rax	# D.6156, tmp245
	movq	%rax, -56(%rbp)	# tmp245, f1
	movq	from.5217(%rip), %rax	# from, from.48
	movl	s.5208(%rip), %ecx	# s, s.49
	movl	k.5209(%rip), %edx	# k, k.50
	addl	%ecx, %edx	# s.49, D.6154
	movslq	%edx, %rdx	# D.6154, D.6156
	salq	$4, %rdx	#, D.6156
	addq	%rdx, %rax	# D.6156, tmp246
	movq	%rax, -48(%rbp)	# tmp246, f2
	.loc 1 462 0
	movq	to.5218(%rip), %rax	# to, to.51
	movl	s.5208(%rip), %edx	# s, s.52
	movslq	%edx, %rdx	# s.52, D.6156
	salq	$4, %rdx	#, D.6156
	addq	%rdx, %rax	# D.6156, tmp247
	movq	%rax, -40(%rbp)	# tmp247, t1
	movq	to.5218(%rip), %rdx	# to, to.53
	movl	-84(%rbp), %eax	# N, tmp248
	movl	%eax, %ecx	# tmp248, tmp249
	shrl	$31, %ecx	#, tmp249
	addl	%ecx, %eax	# tmp249, tmp250
	sarl	%eax	# tmp251
	movl	%eax, %ecx	# tmp251, D.6154
	movl	s.5208(%rip), %eax	# s, s.54
	addl	%ecx, %eax	# D.6154, D.6154
	cltq
	salq	$4, %rax	#, D.6156
	addq	%rdx, %rax	# to.53, tmp252
	movq	%rax, -32(%rbp)	# tmp252, t2
	.loc 1 463 0
	movq	w.5216(%rip), %rax	# w, tmp253
	movq	%rax, -24(%rbp)	# tmp253, ww
	.loc 1 465 0
	jmp	.L116	#
.L117:
	.loc 1 468 0
	movq	-48(%rbp), %rax	# f2, tmp254
	movsd	(%rax), %xmm1	# f2_2->r, D.6158
	movq	-24(%rbp), %rax	# ww, tmp255
	movsd	(%rax), %xmm0	# ww_5->r, D.6158
	mulsd	%xmm1, %xmm0	# D.6158, D.6158
	movq	-48(%rbp), %rax	# f2, tmp256
	movsd	8(%rax), %xmm2	# f2_2->i, D.6158
	movq	-24(%rbp), %rax	# ww, tmp257
	movsd	8(%rax), %xmm1	# ww_5->i, D.6158
	mulsd	%xmm2, %xmm1	# D.6158, D.6158
	subsd	%xmm1, %xmm0	# D.6158, D.6158
	movsd	%xmm0, wwf2.5219(%rip)	# D.6158, wwf2.r
	.loc 1 469 0
	movq	-48(%rbp), %rax	# f2, tmp258
	movsd	(%rax), %xmm1	# f2_2->r, D.6158
	movq	-24(%rbp), %rax	# ww, tmp259
	movsd	8(%rax), %xmm0	# ww_5->i, D.6158
	mulsd	%xmm0, %xmm1	# D.6158, D.6158
	movq	-48(%rbp), %rax	# f2, tmp260
	movsd	8(%rax), %xmm2	# f2_2->i, D.6158
	movq	-24(%rbp), %rax	# ww, tmp261
	movsd	(%rax), %xmm0	# ww_5->r, D.6158
	mulsd	%xmm2, %xmm0	# D.6158, D.6158
	addsd	%xmm1, %xmm0	# D.6158, D.6158
	movsd	%xmm0, wwf2.5219+8(%rip)	# D.6158, wwf2.i
	.loc 1 471 0
	movq	-56(%rbp), %rax	# f1, tmp262
	movsd	(%rax), %xmm1	# f1_1->r, D.6158
	movsd	wwf2.5219(%rip), %xmm0	# wwf2.r, D.6158
	addsd	%xmm1, %xmm0	# D.6158, D.6158
	movq	-40(%rbp), %rax	# t1, tmp263
	movsd	%xmm0, (%rax)	# D.6158, t1_3->r
	.loc 1 472 0
	movq	-56(%rbp), %rax	# f1, tmp264
	movsd	8(%rax), %xmm1	# f1_1->i, D.6158
	movsd	wwf2.5219+8(%rip), %xmm0	# wwf2.i, D.6158
	addsd	%xmm1, %xmm0	# D.6158, D.6158
	movq	-40(%rbp), %rax	# t1, tmp265
	movsd	%xmm0, 8(%rax)	# D.6158, t1_3->i
	.loc 1 474 0
	movq	-56(%rbp), %rax	# f1, tmp266
	movsd	(%rax), %xmm0	# f1_1->r, D.6158
	movsd	wwf2.5219(%rip), %xmm1	# wwf2.r, D.6158
	subsd	%xmm1, %xmm0	# D.6158, D.6158
	movq	-32(%rbp), %rax	# t2, tmp267
	movsd	%xmm0, (%rax)	# D.6158, t2_4->r
	.loc 1 475 0
	movq	-56(%rbp), %rax	# f1, tmp268
	movsd	8(%rax), %xmm0	# f1_1->i, D.6158
	movsd	wwf2.5219+8(%rip), %xmm1	# wwf2.i, D.6158
	subsd	%xmm1, %xmm0	# D.6158, D.6158
	movq	-32(%rbp), %rax	# t2, tmp269
	movsd	%xmm0, 8(%rax)	# D.6158, t2_4->i
	.loc 1 477 0
	movl	k.5209(%rip), %eax	# k, k.55
	cltq
	salq	$5, %rax	#, D.6156
	addq	%rax, -56(%rbp)	# D.6156, f1
	movl	k.5209(%rip), %eax	# k, k.56
	cltq
	salq	$5, %rax	#, D.6156
	addq	%rax, -48(%rbp)	# D.6156, f2
	.loc 1 478 0
	movl	k.5209(%rip), %eax	# k, k.57
	cltq
	salq	$4, %rax	#, D.6156
	addq	%rax, -40(%rbp)	# D.6156, t1
	movl	k.5209(%rip), %eax	# k, k.58
	cltq
	salq	$4, %rax	#, D.6156
	addq	%rax, -32(%rbp)	# D.6156, t2
	.loc 1 479 0
	movl	k.5209(%rip), %eax	# k, k.59
	cltq
	salq	$4, %rax	#, D.6156
	addq	%rax, -24(%rbp)	# D.6156, ww
.L116:
	.loc 1 465 0 discriminator 1
	movq	wEnd.5222(%rip), %rax	# wEnd, wEnd.60
	cmpq	%rax, -24(%rbp)	# wEnd.60, ww
	jb	.L117	#,
	.loc 1 458 0
	movl	s.5208(%rip), %eax	# s, s.61
	addl	$1, %eax	#, s.62
	movl	%eax, s.5208(%rip)	# s.62, s
.L115:
	.loc 1 458 0 is_stmt 0 discriminator 1
	movl	s.5208(%rip), %edx	# s, s.63
	movl	k.5209(%rip), %eax	# k, k.64
	cmpl	%eax, %edx	# k.64, s.63
	jl	.L118	#,
	.loc 1 482 0 is_stmt 1
	movq	from.5217(%rip), %rax	# from, from.65
	movq	%rax, exch.5221(%rip)	# from.65, exch
	movq	to.5218(%rip), %rax	# to, to.66
	movq	%rax, from.5217(%rip)	# to.66, from
	movq	exch.5221(%rip), %rax	# exch, exch.67
	movq	%rax, to.5218(%rip)	# exch.67, to
	.loc 1 456 0
	movl	k.5209(%rip), %eax	# k, k.68
	movl	%eax, %edx	# k.68, tmp270
	shrl	$31, %edx	#, tmp270
	addl	%edx, %eax	# tmp270, tmp271
	sarl	%eax	# tmp272
	movl	%eax, k.5209(%rip)	# k.69, k
.L114:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movl	k.5209(%rip), %eax	# k, k.70
	testl	%eax, %eax	# k.70
	jg	.L119	#,
	.loc 1 484 0 is_stmt 1
	movq	buffer.5220(%rip), %rax	# buffer, buffer.71
	movq	%rax, %rdi	# buffer.71,
	call	free	#
	.loc 1 485 0
	movq	w.5216(%rip), %rax	# w, w.72
	movq	%rax, %rdi	# w.72,
	call	free	#
	.loc 1 486 0
	movl	$0, %eax	#, D.6154
.L103:
	.loc 1 487 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	fe_fft, .-fe_fft
	.section	.rodata
.LC22:
	.string	"fe_create_2d failed\n"
	.text
	.globl	fe_create_2d
	.type	fe_create_2d, @function
fe_create_2d:
.LFB15:
	.loc 1 492 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# d1, d1
	movl	%esi, -40(%rbp)	# d2, d2
	movl	%edx, -44(%rbp)	# elem_size, elem_size
	.loc 1 496 0
	movl	-44(%rbp), %eax	# elem_size, tmp73
	movslq	%eax, %rdx	# tmp73, D.6162
	movl	-36(%rbp), %eax	# d1, tmp74
	imull	-40(%rbp), %eax	# d2, D.6163
	cltq
	movq	%rdx, %rsi	# D.6162,
	movq	%rax, %rdi	# D.6162,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp75, store
	.loc 1 498 0
	cmpq	$0, -16(%rbp)	#, store
	jne	.L121	#,
	.loc 1 499 0
	movq	stderr(%rip), %rax	# stderr, stderr.73
	movq	%rax, %rcx	# stderr.73,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
	.loc 1 500 0
	movl	$0, %eax	#, D.6161
	jmp	.L122	#
.L121:
	.loc 1 503 0
	movl	-36(%rbp), %eax	# d1, tmp76
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6162,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp77, out
	.loc 1 505 0
	cmpq	$0, -8(%rbp)	#, out
	jne	.L123	#,
	.loc 1 506 0
	movq	stderr(%rip), %rax	# stderr, stderr.74
	movq	%rax, %rcx	# stderr.74,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
	.loc 1 507 0
	movq	-16(%rbp), %rax	# store, tmp78
	movq	%rax, %rdi	# tmp78,
	call	free	#
	.loc 1 508 0
	movl	$0, %eax	#, D.6161
	jmp	.L122	#
.L123:
	.loc 1 511 0
	movl	$0, -24(%rbp)	#, i
	movl	$0, -20(%rbp)	#, j
	jmp	.L124	#
.L125:
	.loc 1 512 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp79
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6162
	movq	-8(%rbp), %rax	# out, tmp80
	addq	%rax, %rdx	# tmp80, D.6161
	movl	-20(%rbp), %eax	# j, tmp81
	imull	-44(%rbp), %eax	# elem_size, D.6163
	movslq	%eax, %rcx	# D.6163, D.6164
	movq	-16(%rbp), %rax	# store, tmp82
	addq	%rcx, %rax	# D.6164, D.6165
	movq	%rax, (%rdx)	# D.6165, *_21
	.loc 1 511 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
	movl	-40(%rbp), %eax	# d2, tmp83
	addl	%eax, -20(%rbp)	# tmp83, j
.L124:
	.loc 1 511 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp84
	cmpl	-36(%rbp), %eax	# d1, tmp84
	jl	.L125	#,
	.loc 1 515 0 is_stmt 1
	movq	-8(%rbp), %rax	# out, D.6161
.L122:
	.loc 1 516 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	fe_create_2d, .-fe_create_2d
	.globl	fe_free_2d
	.type	fe_free_2d, @function
fe_free_2d:
.LFB16:
	.loc 1 519 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# arr, arr
	.loc 1 520 0
	cmpq	$0, -8(%rbp)	#, arr
	je	.L126	#,
	.loc 1 521 0
	movq	-8(%rbp), %rax	# arr, tmp60
	movq	(%rax), %rax	# *arr_1(D), D.6167
	movq	%rax, %rdi	# D.6167,
	call	free	#
	.loc 1 522 0
	movq	-8(%rbp), %rax	# arr, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
.L126:
	.loc 1 525 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fe_free_2d, .-fe_free_2d
	.globl	fe_parse_general_params
	.type	fe_parse_general_params, @function
fe_parse_general_params:
.LFB17:
	.loc 1 528 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# P, P
	movq	%rsi, -16(%rbp)	# FE, FE
	.loc 1 530 0
	movq	-8(%rbp), %rax	# P, tmp73
	movss	(%rax), %xmm0	# P_1(D)->SAMPLING_RATE, D.6168
	xorps	%xmm1, %xmm1	# tmp74
	ucomiss	%xmm1, %xmm0	# tmp74, D.6168
	jp	.L146	#,
	xorps	%xmm1, %xmm1	# tmp75
	ucomiss	%xmm1, %xmm0	# tmp75, D.6168
	je	.L149	#,
.L146:
	.loc 1 531 0
	movq	-8(%rbp), %rax	# P, tmp76
	movl	(%rax), %eax	# P_1(D)->SAMPLING_RATE, D.6168
	movq	-16(%rbp), %rdx	# FE, tmp77
	movl	%eax, (%rdx)	# D.6168, FE_4(D)->SAMPLING_RATE
	jmp	.L131	#
.L149:
	.loc 1 533 0
	movq	-16(%rbp), %rdx	# FE, tmp78
	movl	.LC24(%rip), %eax	#, tmp79
	movl	%eax, (%rdx)	# tmp79, FE_4(D)->SAMPLING_RATE
.L131:
	.loc 1 535 0
	movq	-8(%rbp), %rax	# P, tmp80
	movl	4(%rax), %eax	# P_1(D)->FRAME_RATE, D.6169
	testl	%eax, %eax	# D.6169
	je	.L132	#,
	.loc 1 536 0
	movq	-8(%rbp), %rax	# P, tmp81
	movl	4(%rax), %edx	# P_1(D)->FRAME_RATE, D.6169
	movq	-16(%rbp), %rax	# FE, tmp82
	movl	%edx, 4(%rax)	# D.6169, FE_4(D)->FRAME_RATE
	jmp	.L133	#
.L132:
	.loc 1 538 0
	movq	-16(%rbp), %rax	# FE, tmp83
	movl	$100, 4(%rax)	#, FE_4(D)->FRAME_RATE
.L133:
	.loc 1 540 0
	movq	-8(%rbp), %rax	# P, tmp84
	movss	8(%rax), %xmm0	# P_1(D)->WINDOW_LENGTH, D.6168
	xorps	%xmm1, %xmm1	# tmp85
	ucomiss	%xmm1, %xmm0	# tmp85, D.6168
	jp	.L147	#,
	xorps	%xmm1, %xmm1	# tmp86
	ucomiss	%xmm1, %xmm0	# tmp86, D.6168
	je	.L150	#,
.L147:
	.loc 1 541 0
	movq	-8(%rbp), %rax	# P, tmp87
	movl	8(%rax), %eax	# P_1(D)->WINDOW_LENGTH, D.6168
	movq	-16(%rbp), %rdx	# FE, tmp88
	movl	%eax, 12(%rdx)	# D.6168, FE_4(D)->WINDOW_LENGTH
	jmp	.L136	#
.L150:
	.loc 1 543 0
	movq	-16(%rbp), %rdx	# FE, tmp89
	movl	.LC25(%rip), %eax	#, tmp90
	movl	%eax, 12(%rdx)	# tmp90, FE_4(D)->WINDOW_LENGTH
.L136:
	.loc 1 545 0
	movq	-8(%rbp), %rax	# P, tmp91
	movl	12(%rax), %eax	# P_1(D)->FB_TYPE, D.6169
	testl	%eax, %eax	# D.6169
	je	.L137	#,
	.loc 1 546 0
	movq	-8(%rbp), %rax	# P, tmp92
	movl	12(%rax), %edx	# P_1(D)->FB_TYPE, D.6169
	movq	-16(%rbp), %rax	# FE, tmp93
	movl	%edx, 24(%rax)	# D.6169, FE_4(D)->FB_TYPE
	jmp	.L138	#
.L137:
	.loc 1 548 0
	movq	-16(%rbp), %rax	# FE, tmp94
	movl	$1, 24(%rax)	#, FE_4(D)->FB_TYPE
.L138:
	.loc 1 550 0
	movq	-8(%rbp), %rax	# P, tmp95
	movss	36(%rax), %xmm0	# P_1(D)->PRE_EMPHASIS_ALPHA, D.6168
	xorps	%xmm1, %xmm1	# tmp96
	ucomiss	%xmm1, %xmm0	# tmp96, D.6168
	jp	.L148	#,
	xorps	%xmm1, %xmm1	# tmp97
	ucomiss	%xmm1, %xmm0	# tmp97, D.6168
	je	.L151	#,
.L148:
	.loc 1 551 0
	movq	-8(%rbp), %rax	# P, tmp98
	movl	36(%rax), %eax	# P_1(D)->PRE_EMPHASIS_ALPHA, D.6168
	movq	-16(%rbp), %rdx	# FE, tmp99
	movl	%eax, 32(%rdx)	# D.6168, FE_4(D)->PRE_EMPHASIS_ALPHA
	jmp	.L141	#
.L151:
	.loc 1 553 0
	movq	-16(%rbp), %rdx	# FE, tmp100
	movl	.LC26(%rip), %eax	#, tmp101
	movl	%eax, 32(%rdx)	# tmp101, FE_4(D)->PRE_EMPHASIS_ALPHA
.L141:
	.loc 1 555 0
	movq	-8(%rbp), %rax	# P, tmp102
	movl	16(%rax), %eax	# P_1(D)->NUM_CEPSTRA, D.6169
	testl	%eax, %eax	# D.6169
	je	.L142	#,
	.loc 1 556 0
	movq	-8(%rbp), %rax	# P, tmp103
	movl	16(%rax), %edx	# P_1(D)->NUM_CEPSTRA, D.6169
	movq	-16(%rbp), %rax	# FE, tmp104
	movl	%edx, 28(%rax)	# D.6169, FE_4(D)->NUM_CEPSTRA
	jmp	.L143	#
.L142:
	.loc 1 558 0
	movq	-16(%rbp), %rax	# FE, tmp105
	movl	$13, 28(%rax)	#, FE_4(D)->NUM_CEPSTRA
.L143:
	.loc 1 560 0
	movq	-8(%rbp), %rax	# P, tmp106
	movl	24(%rax), %eax	# P_1(D)->FFT_SIZE, D.6169
	testl	%eax, %eax	# D.6169
	je	.L144	#,
	.loc 1 561 0
	movq	-8(%rbp), %rax	# P, tmp107
	movl	24(%rax), %edx	# P_1(D)->FFT_SIZE, D.6169
	movq	-16(%rbp), %rax	# FE, tmp108
	movl	%edx, 20(%rax)	# D.6169, FE_4(D)->FFT_SIZE
	jmp	.L128	#
.L144:
	.loc 1 563 0
	movq	-16(%rbp), %rax	# FE, tmp109
	movl	$256, 20(%rax)	#, FE_4(D)->FFT_SIZE
.L128:
	.loc 1 565 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	fe_parse_general_params, .-fe_parse_general_params
	.section	.rodata
	.align 8
.LC28:
	.string	"Please define the number of MEL filters needed\n"
	.align 8
.LC29:
	.string	"Modify include/new_fe.h and new_fe_sp.c\n"
	.align 8
.LC32:
	.string	"Please define the upper filt frequency needed\n"
	.align 8
.LC35:
	.string	"Please define the lower filt frequency needed\n"
	.text
	.globl	fe_parse_melfb_params
	.type	fe_parse_melfb_params, @function
fe_parse_melfb_params:
.LFB18:
	.loc 1 568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# P, P
	movq	%rsi, -16(%rbp)	# MEL, MEL
	.loc 1 569 0
	movq	-8(%rbp), %rax	# P, tmp89
	movss	(%rax), %xmm0	# P_1(D)->SAMPLING_RATE, D.6170
	xorps	%xmm1, %xmm1	# tmp90
	ucomiss	%xmm1, %xmm0	# tmp90, D.6170
	jp	.L186	#,
	xorps	%xmm1, %xmm1	# tmp91
	ucomiss	%xmm1, %xmm0	# tmp91, D.6170
	je	.L197	#,
.L186:
	.loc 1 570 0
	movq	-8(%rbp), %rax	# P, tmp92
	movl	(%rax), %eax	# P_1(D)->SAMPLING_RATE, D.6170
	movq	-16(%rbp), %rdx	# MEL, tmp93
	movl	%eax, (%rdx)	# D.6170, MEL_4(D)->sampling_rate
	jmp	.L155	#
.L197:
	.loc 1 572 0
	movq	-16(%rbp), %rdx	# MEL, tmp94
	movl	.LC24(%rip), %eax	#, tmp95
	movl	%eax, (%rdx)	# tmp95, MEL_4(D)->sampling_rate
.L155:
	.loc 1 574 0
	movq	-8(%rbp), %rax	# P, tmp96
	movl	24(%rax), %eax	# P_1(D)->FFT_SIZE, D.6171
	testl	%eax, %eax	# D.6171
	je	.L156	#,
	.loc 1 575 0
	movq	-8(%rbp), %rax	# P, tmp97
	movl	24(%rax), %edx	# P_1(D)->FFT_SIZE, D.6171
	movq	-16(%rbp), %rax	# MEL, tmp98
	movl	%edx, 12(%rax)	# D.6171, MEL_4(D)->fft_size
	jmp	.L157	#
.L156:
	.loc 1 577 0
	movq	-16(%rbp), %rax	# MEL, tmp99
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jp	.L158	#,
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jne	.L158	#,
	.loc 1 578 0
	movq	-16(%rbp), %rax	# MEL, tmp100
	movl	$512, 12(%rax)	#, MEL_4(D)->fft_size
.L158:
	.loc 1 579 0
	movq	-16(%rbp), %rax	# MEL, tmp101
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jp	.L160	#,
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jne	.L160	#,
	.loc 1 580 0
	movq	-16(%rbp), %rax	# MEL, tmp102
	movl	$256, 12(%rax)	#, MEL_4(D)->fft_size
	jmp	.L157	#
.L160:
	.loc 1 582 0
	movq	-16(%rbp), %rax	# MEL, tmp103
	movl	$256, 12(%rax)	#, MEL_4(D)->fft_size
.L157:
	.loc 1 585 0
	movq	-8(%rbp), %rax	# P, tmp104
	movl	16(%rax), %eax	# P_1(D)->NUM_CEPSTRA, D.6171
	testl	%eax, %eax	# D.6171
	je	.L162	#,
	.loc 1 586 0
	movq	-8(%rbp), %rax	# P, tmp105
	movl	16(%rax), %edx	# P_1(D)->NUM_CEPSTRA, D.6171
	movq	-16(%rbp), %rax	# MEL, tmp106
	movl	%edx, 4(%rax)	# D.6171, MEL_4(D)->num_cepstra
	jmp	.L163	#
.L162:
	.loc 1 588 0
	movq	-16(%rbp), %rax	# MEL, tmp107
	movl	$13, 4(%rax)	#, MEL_4(D)->num_cepstra
.L163:
	.loc 1 590 0
	movq	-8(%rbp), %rax	# P, tmp108
	movl	20(%rax), %eax	# P_1(D)->NUM_FILTERS, D.6171
	testl	%eax, %eax	# D.6171
	je	.L164	#,
	.loc 1 591 0
	movq	-8(%rbp), %rax	# P, tmp109
	movl	20(%rax), %edx	# P_1(D)->NUM_FILTERS, D.6171
	movq	-16(%rbp), %rax	# MEL, tmp110
	movl	%edx, 8(%rax)	# D.6171, MEL_4(D)->num_filters
	jmp	.L165	#
.L164:
	.loc 1 593 0
	movq	-16(%rbp), %rax	# MEL, tmp111
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jp	.L166	#,
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jne	.L166	#,
	.loc 1 594 0
	movq	-16(%rbp), %rax	# MEL, tmp112
	movl	$40, 8(%rax)	#, MEL_4(D)->num_filters
	jmp	.L165	#
.L166:
	.loc 1 595 0
	movq	-16(%rbp), %rax	# MEL, tmp113
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jp	.L168	#,
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jne	.L168	#,
	.loc 1 596 0
	movq	-16(%rbp), %rax	# MEL, tmp114
	movl	$31, 8(%rax)	#, MEL_4(D)->num_filters
	jmp	.L165	#
.L168:
	.loc 1 598 0
	movq	stderr(%rip), %rax	# stderr, stderr.75
	movq	%rax, %rcx	# stderr.75,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
	.loc 1 599 0
	movq	stderr(%rip), %rax	# stderr, stderr.76
	movq	%rax, %rcx	# stderr.76,
	movl	$40, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 600 0
	movq	stderr(%rip), %rax	# stderr, stderr.77
	movq	%rax, %rdi	# stderr.77,
	call	fflush	#
	movl	$0, %edi	#,
	call	exit	#
.L165:
	.loc 1 604 0
	movq	-8(%rbp), %rax	# P, tmp115
	movss	32(%rax), %xmm0	# P_1(D)->UPPER_FILT_FREQ, D.6170
	xorps	%xmm1, %xmm1	# tmp116
	ucomiss	%xmm1, %xmm0	# tmp116, D.6170
	jp	.L191	#,
	xorps	%xmm1, %xmm1	# tmp117
	ucomiss	%xmm1, %xmm0	# tmp117, D.6170
	je	.L198	#,
.L191:
	.loc 1 605 0
	movq	-8(%rbp), %rax	# P, tmp118
	movl	32(%rax), %eax	# P_1(D)->UPPER_FILT_FREQ, D.6170
	movq	-16(%rbp), %rdx	# MEL, tmp119
	movl	%eax, 20(%rdx)	# D.6170, MEL_4(D)->upper_filt_freq
	jmp	.L172	#
.L198:
	.loc 1 607 0
	movq	-16(%rbp), %rax	# MEL, tmp120
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jp	.L173	#,
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jne	.L173	#,
	.loc 1 608 0
	movq	-16(%rbp), %rdx	# MEL, tmp121
	movl	.LC30(%rip), %eax	#, tmp122
	movl	%eax, 20(%rdx)	# tmp122, MEL_4(D)->upper_filt_freq
	jmp	.L172	#
.L173:
	.loc 1 609 0
	movq	-16(%rbp), %rax	# MEL, tmp123
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jp	.L175	#,
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jne	.L175	#,
	.loc 1 610 0
	movq	-16(%rbp), %rdx	# MEL, tmp124
	movl	.LC31(%rip), %eax	#, tmp125
	movl	%eax, 20(%rdx)	# tmp125, MEL_4(D)->upper_filt_freq
	jmp	.L172	#
.L175:
	.loc 1 612 0
	movq	stderr(%rip), %rax	# stderr, stderr.78
	movq	%rax, %rcx	# stderr.78,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC32, %edi	#,
	call	fwrite	#
	.loc 1 613 0
	movq	stderr(%rip), %rax	# stderr, stderr.79
	movq	%rax, %rcx	# stderr.79,
	movl	$40, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 614 0
	movq	stderr(%rip), %rax	# stderr, stderr.80
	movq	%rax, %rdi	# stderr.80,
	call	fflush	#
	movl	$0, %edi	#,
	call	exit	#
.L172:
	.loc 1 619 0
	movq	-8(%rbp), %rax	# P, tmp126
	movss	28(%rax), %xmm0	# P_1(D)->LOWER_FILT_FREQ, D.6170
	xorps	%xmm1, %xmm1	# tmp127
	ucomiss	%xmm1, %xmm0	# tmp127, D.6170
	jp	.L194	#,
	xorps	%xmm1, %xmm1	# tmp128
	ucomiss	%xmm1, %xmm0	# tmp128, D.6170
	je	.L199	#,
.L194:
	.loc 1 620 0
	movq	-8(%rbp), %rax	# P, tmp129
	movl	28(%rax), %eax	# P_1(D)->LOWER_FILT_FREQ, D.6170
	movq	-16(%rbp), %rdx	# MEL, tmp130
	movl	%eax, 16(%rdx)	# D.6170, MEL_4(D)->lower_filt_freq
	jmp	.L179	#
.L199:
	.loc 1 622 0
	movq	-16(%rbp), %rax	# MEL, tmp131
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jp	.L180	#,
	ucomiss	.LC24(%rip), %xmm0	#, D.6170
	jne	.L180	#,
	.loc 1 623 0
	movq	-16(%rbp), %rdx	# MEL, tmp132
	movl	.LC33(%rip), %eax	#, tmp133
	movl	%eax, 16(%rdx)	# tmp133, MEL_4(D)->lower_filt_freq
	jmp	.L179	#
.L180:
	.loc 1 624 0
	movq	-16(%rbp), %rax	# MEL, tmp134
	movss	(%rax), %xmm0	# MEL_4(D)->sampling_rate, D.6170
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jp	.L182	#,
	ucomiss	.LC27(%rip), %xmm0	#, D.6170
	jne	.L182	#,
	.loc 1 625 0
	movq	-16(%rbp), %rdx	# MEL, tmp135
	movl	.LC34(%rip), %eax	#, tmp136
	movl	%eax, 16(%rdx)	# tmp136, MEL_4(D)->lower_filt_freq
	jmp	.L179	#
.L182:
	.loc 1 627 0
	movq	stderr(%rip), %rax	# stderr, stderr.81
	movq	%rax, %rcx	# stderr.81,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC35, %edi	#,
	call	fwrite	#
	.loc 1 628 0
	movq	stderr(%rip), %rax	# stderr, stderr.82
	movq	%rax, %rcx	# stderr.82,
	movl	$40, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
	.loc 1 629 0
	movq	stderr(%rip), %rax	# stderr, stderr.83
	movq	%rax, %rdi	# stderr.83,
	call	fflush	#
	movl	$0, %edi	#,
	call	exit	#
.L179:
	.loc 1 633 0
	movq	-8(%rbp), %rax	# P, tmp137
	movl	116(%rax), %eax	# P_1(D)->doublebw, D.6171
	cmpl	$1, %eax	#, D.6171
	jne	.L184	#,
	.loc 1 634 0
	movq	-16(%rbp), %rax	# MEL, tmp138
	movl	$1, 56(%rax)	#, MEL_4(D)->doublewide
	jmp	.L152	#
.L184:
	.loc 1 636 0
	movq	-16(%rbp), %rax	# MEL, tmp139
	movl	$0, 56(%rax)	#, MEL_4(D)->doublewide
.L152:
	.loc 1 638 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	fe_parse_melfb_params, .-fe_parse_melfb_params
	.section	.rodata
.LC36:
	.string	"Current FE Parameters:\n"
	.align 8
.LC37:
	.string	"\tSampling Rate:             %f\n"
	.align 8
.LC38:
	.string	"\tFrame Size:                %d\n"
	.align 8
.LC39:
	.string	"\tFrame Shift:               %d\n"
	.align 8
.LC40:
	.string	"\tFFT Size:                  %d\n"
	.align 8
.LC41:
	.string	"\tNumber of Overflow Samps:  %d\n"
	.align 8
.LC42:
	.string	"\tStart Utt Status:          %d\n"
	.text
	.globl	fe_print_current
	.type	fe_print_current, @function
fe_print_current:
.LFB19:
	.loc 1 641 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# FE, FE
	.loc 1 642 0
	movq	stderr(%rip), %rax	# stderr, stderr.84
	movq	%rax, %rcx	# stderr.84,
	movl	$23, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC36, %edi	#,
	call	fwrite	#
	.loc 1 643 0
	movq	-8(%rbp), %rax	# FE, tmp73
	movss	(%rax), %xmm0	# FE_2(D)->SAMPLING_RATE, D.6176
	unpcklps	%xmm0, %xmm0	# D.6176, D.6176
	cvtps2pd	%xmm0, %xmm0	# D.6176, D.6177
	movq	stderr(%rip), %rax	# stderr, stderr.85
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# stderr.85,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 644 0
	movq	-8(%rbp), %rax	# FE, tmp74
	movl	16(%rax), %edx	# FE_2(D)->FRAME_SIZE, D.6178
	movq	stderr(%rip), %rax	# stderr, stderr.86
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# stderr.86,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 645 0
	movq	-8(%rbp), %rax	# FE, tmp75
	movl	8(%rax), %edx	# FE_2(D)->FRAME_SHIFT, D.6178
	movq	stderr(%rip), %rax	# stderr, stderr.87
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# stderr.87,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 646 0
	movq	-8(%rbp), %rax	# FE, tmp76
	movl	20(%rax), %edx	# FE_2(D)->FFT_SIZE, D.6178
	movq	stderr(%rip), %rax	# stderr, stderr.88
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# stderr.88,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 647 0
	movq	-8(%rbp), %rax	# FE, tmp77
	movl	48(%rax), %edx	# FE_2(D)->NUM_OVERFLOW_SAMPS, D.6178
	movq	stderr(%rip), %rax	# stderr, stderr.89
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# stderr.89,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 648 0
	movq	-8(%rbp), %rax	# FE, tmp78
	movl	64(%rax), %edx	# FE_2(D)->START_FLAG, D.6178
	movq	stderr(%rip), %rax	# stderr, stderr.90
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# stderr.90,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 649 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	fe_print_current, .-fe_print_current
	.local	k.5209
	.comm	k.5209,4,4
	.local	lgN.5210
	.comm	lgN.5210,4,4
	.local	div.5223
	.comm	div.5223,8,8
	.local	buffer.5220
	.comm	buffer.5220,8,8
	.local	from.5217
	.comm	from.5217,8,8
	.local	to.5218
	.comm	to.5218,8,8
	.local	s.5208
	.comm	s.5208,4,4
	.local	w.5216
	.comm	w.5216,8,8
	.local	x.5224
	.comm	x.5224,8,8
	.local	wEnd.5222
	.comm	wEnd.5222,8,8
	.local	wwf2.5219
	.comm	wwf2.5219,16,16
	.local	exch.5221
	.comm	exch.5221,8,8
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 4
.LC2:
	.long	1073741824
	.align 8
.LC4:
	.long	1413754136
	.long	1075388923
	.align 8
.LC5:
	.long	0
	.long	1082515456
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 4
.LC7:
	.long	1159868416
	.align 8
.LC8:
	.long	0
	.long	1084507648
	.align 8
.LC10:
	.long	3607772529
	.long	1071476899
	.align 8
.LC11:
	.long	343597384
	.long	1071728558
	.align 4
.LC17:
	.long	1056964608
	.align 4
.LC18:
	.long	1065353216
	.align 8
.LC21:
	.long	1413754136
	.long	-1072094725
	.align 4
.LC24:
	.long	1182400512
	.align 4
.LC25:
	.long	1020376855
	.align 4
.LC26:
	.long	1064849900
	.align 4
.LC27:
	.long	1174011904
	.align 4
.LC30:
	.long	1171667963
	.align 4
.LC31:
	.long	1163575296
	.align 4
.LC33:
	.long	1124422998
	.align 4
.LC34:
	.long	1128792064
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "./libutil/prim_type.h"
	.file 6 "new_fe.h"
	.file 7 "new_fe_sp.h"
	.file 8 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xded
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF154
	.byte	0x1
	.long	.LASF155
	.long	.LASF156
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
	.long	.LASF157
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
	.byte	0x4
	.byte	0x4
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x45
	.long	0x287
	.uleb128 0xd
	.byte	0x78
	.byte	0x6
	.byte	0x29
	.long	0x3e1
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x2b
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x2c
	.long	0x287
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x2d
	.long	0x2a3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x2e
	.long	0x2a3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x2f
	.long	0x2a3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x30
	.long	0x2a3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x31
	.long	0x287
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x32
	.long	0x287
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x33
	.long	0x287
	.byte	0x24
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x35
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x36
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x37
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x38
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x39
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x3a
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0x3b
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x3c
	.long	0x2a3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x3d
	.long	0x2a3
	.byte	0x64
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x3e
	.long	0x2a3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x3f
	.long	0x2a3
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x40
	.long	0x2a3
	.byte	0x70
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x41
	.long	0x2a3
	.byte	0x74
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x6
	.byte	0x45
	.long	0x2c4
	.uleb128 0xd
	.byte	0x40
	.byte	0x6
	.byte	0x48
	.long	0x479
	.uleb128 0x8
	.long	.LASF77
	.byte	0x6
	.byte	0x49
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x6
	.byte	0x4a
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF79
	.byte	0x6
	.byte	0x4b
	.long	0x2a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF80
	.byte	0x6
	.byte	0x4c
	.long	0x2a3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF81
	.byte	0x6
	.byte	0x4d
	.long	0x287
	.byte	0x10
	.uleb128 0x8
	.long	.LASF82
	.byte	0x6
	.byte	0x4e
	.long	0x287
	.byte	0x14
	.uleb128 0x8
	.long	.LASF83
	.byte	0x6
	.byte	0x4f
	.long	0x479
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0x6
	.byte	0x50
	.long	0x479
	.byte	0x20
	.uleb128 0x8
	.long	.LASF85
	.byte	0x6
	.byte	0x51
	.long	0x47f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF86
	.byte	0x6
	.byte	0x52
	.long	0x485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF87
	.byte	0x6
	.byte	0x53
	.long	0x2a3
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x47f
	.uleb128 0x6
	.byte	0x8
	.long	0x287
	.uleb128 0x6
	.byte	0x8
	.long	0x2a3
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6
	.byte	0x54
	.long	0x3ec
	.uleb128 0xd
	.byte	0x50
	.byte	0x6
	.byte	0x57
	.long	0x553
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x58
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x59
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x6
	.byte	0x5a
	.long	0x2a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x5b
	.long	0x287
	.byte	0xc
	.uleb128 0x8
	.long	.LASF90
	.byte	0x6
	.byte	0x5c
	.long	0x2a3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x5d
	.long	0x2a3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x5e
	.long	0x2a3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x5f
	.long	0x2a3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x60
	.long	0x287
	.byte	0x20
	.uleb128 0x8
	.long	.LASF91
	.byte	0x6
	.byte	0x61
	.long	0x553
	.byte	0x28
	.uleb128 0x8
	.long	.LASF92
	.byte	0x6
	.byte	0x62
	.long	0x2a3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF93
	.byte	0x6
	.byte	0x63
	.long	0x559
	.byte	0x38
	.uleb128 0x8
	.long	.LASF94
	.byte	0x6
	.byte	0x64
	.long	0x2a3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF95
	.byte	0x6
	.byte	0x65
	.long	0x2ae
	.byte	0x44
	.uleb128 0x8
	.long	.LASF96
	.byte	0x6
	.byte	0x66
	.long	0x55f
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x6
	.byte	0x8
	.long	0x48b
	.uleb128 0x6
	.byte	0x8
	.long	0x28e
	.uleb128 0x2
	.long	.LASF97
	.byte	0x6
	.byte	0x68
	.long	0x496
	.uleb128 0xd
	.byte	0x10
	.byte	0x7
	.byte	0x2d
	.long	0x58d
	.uleb128 0xe
	.string	"r"
	.byte	0x7
	.byte	0x2d
	.long	0x28e
	.byte	0
	.uleb128 0xe
	.string	"i"
	.byte	0x7
	.byte	0x2d
	.long	0x28e
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF98
	.byte	0x7
	.byte	0x2d
	.long	0x570
	.uleb128 0xf
	.long	.LASF114
	.byte	0x1
	.byte	0x3e
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x1
	.byte	0x3e
	.long	0x559
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.byte	0x40
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1
	.byte	0x40
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF101
	.byte	0x1
	.byte	0x41
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x12
	.long	.LASF102
	.byte	0x1
	.byte	0x41
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.long	.LASF103
	.byte	0x1
	.byte	0x41
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.long	.LASF104
	.byte	0x1
	.byte	0x41
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.long	.LASF105
	.byte	0x1
	.byte	0x41
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF106
	.byte	0x1
	.byte	0x41
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF107
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.long	.LASF108
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.byte	0x42
	.long	0x287
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xf
	.long	.LASF115
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x715
	.uleb128 0x10
	.long	.LASF93
	.byte	0x1
	.byte	0xa2
	.long	0x559
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.long	.LASF116
	.byte	0x1
	.byte	0xa7
	.long	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.byte	0xa7
	.long	0x28e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0xa8
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xf
	.long	.LASF117
	.byte	0x1
	.byte	0xbe
	.long	0x287
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x743
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0xbe
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF118
	.byte	0x1
	.byte	0xc3
	.long	0x287
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x771
	.uleb128 0x13
	.string	"x"
	.byte	0x1
	.byte	0xc3
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF121
	.byte	0x1
	.byte	0xc9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e0
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0xc9
	.long	0x553
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"out"
	.byte	0x1
	.byte	0xc9
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x10
	.long	.LASF119
	.byte	0x1
	.byte	0xca
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF120
	.byte	0x1
	.byte	0xca
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xcc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF122
	.byte	0x1
	.byte	0xd5
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x833
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0xd5
	.long	0x553
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"out"
	.byte	0x1
	.byte	0xd5
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0xd5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF123
	.byte	0x1
	.byte	0xde
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x878
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0xde
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF124
	.byte	0x1
	.byte	0xde
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xe0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x14
	.long	.LASF125
	.byte	0x1
	.byte	0xeb
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cb
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0xeb
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF126
	.byte	0x1
	.byte	0xeb
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.long	.LASF124
	.byte	0x1
	.byte	0xeb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xed
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF127
	.byte	0x1
	.byte	0xf8
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x92d
	.uleb128 0x13
	.string	"FE"
	.byte	0x1
	.byte	0xf8
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0xf8
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"fea"
	.byte	0x1
	.byte	0xf8
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF128
	.byte	0x1
	.byte	0xfa
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF129
	.byte	0x1
	.byte	0xfa
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x16
	.long	.LASF130
	.byte	0x1
	.value	0x116
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c8
	.uleb128 0x17
	.long	.LASF131
	.byte	0x1
	.value	0x116
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF132
	.byte	0x1
	.value	0x116
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.long	.LASF128
	.byte	0x1
	.value	0x116
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF133
	.byte	0x1
	.value	0x116
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x118
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF134
	.byte	0x1
	.value	0x118
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"FFT"
	.byte	0x1
	.value	0x119
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"IN"
	.byte	0x1
	.value	0x119
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58d
	.uleb128 0x1a
	.long	.LASF135
	.byte	0x1
	.value	0x149
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa53
	.uleb128 0x1b
	.string	"FE"
	.byte	0x1
	.value	0x149
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF128
	.byte	0x1
	.value	0x149
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.value	0x149
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.value	0x14b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.value	0x14b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x14b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.value	0x14c
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	.LASF137
	.byte	0x1
	.value	0x160
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xad7
	.uleb128 0x1b
	.string	"FE"
	.byte	0x1
	.value	0x160
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.value	0x160
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.long	.LASF138
	.byte	0x1
	.value	0x160
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x162
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x162
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.value	0x163
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.value	0x164
	.long	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x1
	.value	0x17f
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7d
	.uleb128 0x1b
	.string	"in"
	.byte	0x1
	.value	0x17f
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.string	"out"
	.byte	0x1
	.value	0x17f
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"N"
	.byte	0x1
	.value	0x17f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.long	.LASF141
	.byte	0x1
	.value	0x17f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.value	0x182
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	s.5208
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x182
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	k.5209
	.uleb128 0x18
	.string	"lgN"
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	lgN.5210
	.uleb128 0x18
	.string	"f1"
	.byte	0x1
	.value	0x185
	.long	0x9c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"f2"
	.byte	0x1
	.value	0x185
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"t1"
	.byte	0x1
	.value	0x186
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"t2"
	.byte	0x1
	.value	0x186
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"ww"
	.byte	0x1
	.value	0x187
	.long	0x9c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x189
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	w.5216
	.uleb128 0x19
	.long	.LASF142
	.byte	0x1
	.value	0x189
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	from.5217
	.uleb128 0x18
	.string	"to"
	.byte	0x1
	.value	0x189
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	to.5218
	.uleb128 0x19
	.long	.LASF143
	.byte	0x1
	.value	0x18a
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	wwf2.5219
	.uleb128 0x19
	.long	.LASF144
	.byte	0x1
	.value	0x18b
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	buffer.5220
	.uleb128 0x19
	.long	.LASF145
	.byte	0x1
	.value	0x18c
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	exch.5221
	.uleb128 0x19
	.long	.LASF146
	.byte	0x1
	.value	0x18d
	.long	0x9c8
	.uleb128 0x9
	.byte	0x3
	.quad	wEnd.5222
	.uleb128 0x18
	.string	"div"
	.byte	0x1
	.value	0x18f
	.long	0x28e
	.uleb128 0x9
	.byte	0x3
	.quad	div.5223
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x190
	.long	0x28e
	.uleb128 0x9
	.byte	0x3
	.quad	x.5224
	.byte	0
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x1
	.value	0x1eb
	.long	0xd03
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xd03
	.uleb128 0x1b
	.string	"d1"
	.byte	0x1
	.value	0x1eb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.string	"d2"
	.byte	0x1
	.value	0x1eb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF148
	.byte	0x1
	.value	0x1eb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.long	.LASF149
	.byte	0x1
	.value	0x1ed
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"out"
	.byte	0x1
	.value	0x1ee
	.long	0xd03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1ef
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x1ef
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x16
	.long	.LASF150
	.byte	0x1
	.value	0x206
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xd37
	.uleb128 0x1b
	.string	"arr"
	.byte	0x1
	.value	0x206
	.long	0xd37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8d
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.value	0x20f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xd77
	.uleb128 0x1b
	.string	"P"
	.byte	0x1
	.value	0x20f
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"FE"
	.byte	0x1
	.value	0x20f
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3e1
	.uleb128 0x16
	.long	.LASF152
	.byte	0x1
	.value	0x237
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb8
	.uleb128 0x1b
	.string	"P"
	.byte	0x1
	.value	0x237
	.long	0xd77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.string	"MEL"
	.byte	0x1
	.value	0x237
	.long	0x559
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.long	.LASF153
	.byte	0x1
	.value	0x280
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xde5
	.uleb128 0x1b
	.string	"FE"
	.byte	0x1
	.value	0x280
	.long	0x92d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x8
	.byte	0xaa
	.long	0x25b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
.LASF13:
	.string	"_IO_read_ptr"
.LASF117:
	.string	"fe_mel"
.LASF99:
	.string	"whichfilt"
.LASF7:
	.string	"size_t"
.LASF85:
	.string	"left_apex"
.LASF31:
	.string	"_shortbuf"
.LASF134:
	.string	"wrap"
.LASF138:
	.string	"mfcep"
.LASF95:
	.string	"PRIOR"
.LASF137:
	.string	"fe_mel_cep"
.LASF102:
	.string	"centerfr"
.LASF71:
	.string	"is_batch"
.LASF19:
	.string	"_IO_buf_base"
.LASF49:
	.string	"long long unsigned int"
.LASF118:
	.string	"fe_melinv"
.LASF22:
	.string	"_IO_backup_base"
.LASF82:
	.string	"upper_filt_freq"
.LASF130:
	.string	"fe_spec_magnitude"
.LASF119:
	.string	"factor"
.LASF48:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF110:
	.string	"freq"
.LASF58:
	.string	"NUM_FILTERS"
.LASF64:
	.string	"cepfile"
.LASF50:
	.string	"int32"
.LASF26:
	.string	"_fileno"
.LASF150:
	.string	"fe_free_2d"
.LASF14:
	.string	"_IO_read_end"
.LASF90:
	.string	"FRAME_SIZE"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF81:
	.string	"lower_filt_freq"
.LASF29:
	.string	"_cur_column"
.LASF148:
	.string	"elem_size"
.LASF123:
	.string	"fe_create_hamming"
.LASF47:
	.string	"double"
.LASF17:
	.string	"_IO_write_ptr"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF153:
	.string	"fe_print_current"
.LASF113:
	.string	"rightslope"
.LASF106:
	.string	"filt_edge"
.LASF53:
	.string	"SAMPLING_RATE"
.LASF59:
	.string	"FFT_SIZE"
.LASF72:
	.string	"is_single"
.LASF87:
	.string	"doublewide"
.LASF42:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF156:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF52:
	.string	"float32"
.LASF73:
	.string	"blocksize"
.LASF147:
	.string	"fe_create_2d"
.LASF129:
	.string	"mfspec"
.LASF103:
	.string	"rightfr"
.LASF0:
	.string	"long unsigned int"
.LASF128:
	.string	"spec"
.LASF120:
	.string	"prior"
.LASF125:
	.string	"fe_hamming_window"
.LASF44:
	.string	"_sbuf"
.LASF140:
	.string	"fe_fft"
.LASF88:
	.string	"melfb_t"
.LASF131:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF57:
	.string	"NUM_CEPSTRA"
.LASF127:
	.string	"fe_frame_to_fea"
.LASF89:
	.string	"FRAME_SHIFT"
.LASF122:
	.string	"fe_short_to_double"
.LASF21:
	.string	"_IO_save_base"
.LASF75:
	.string	"doublebw"
.LASF92:
	.string	"NUM_OVERFLOW_SAMPS"
.LASF112:
	.string	"leftslope"
.LASF126:
	.string	"window"
.LASF32:
	.string	"_lock"
.LASF151:
	.string	"fe_parse_general_params"
.LASF69:
	.string	"cepext"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF142:
	.string	"from"
.LASF101:
	.string	"leftfr"
.LASF84:
	.string	"mel_cosine"
.LASF91:
	.string	"OVERFLOW_SAMPS"
.LASF56:
	.string	"FB_TYPE"
.LASF80:
	.string	"fft_size"
.LASF10:
	.string	"sizetype"
.LASF155:
	.string	"new_fe_sp.c"
.LASF114:
	.string	"fe_build_melfilters"
.LASF61:
	.string	"UPPER_FILT_FREQ"
.LASF68:
	.string	"wavext"
.LASF124:
	.string	"in_len"
.LASF18:
	.string	"_IO_write_end"
.LASF107:
	.string	"melmax"
.LASF143:
	.string	"wwf2"
.LASF157:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF152:
	.string	"fe_parse_melfb_params"
.LASF108:
	.string	"melmin"
.LASF158:
	.string	"stderr"
.LASF46:
	.string	"float"
.LASF79:
	.string	"num_filters"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF60:
	.string	"LOWER_FILT_FREQ"
.LASF83:
	.string	"filter_coeffs"
.LASF1:
	.string	"unsigned char"
.LASF67:
	.string	"cepdir"
.LASF109:
	.string	"dmelbw"
.LASF105:
	.string	"height"
.LASF20:
	.string	"_IO_buf_end"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF40:
	.string	"_unused2"
.LASF86:
	.string	"width"
.LASF132:
	.string	"data_len"
.LASF97:
	.string	"fe_t"
.LASF66:
	.string	"wavdir"
.LASF149:
	.string	"store"
.LASF8:
	.string	"__off_t"
.LASF63:
	.string	"wavfile"
.LASF94:
	.string	"START_FLAG"
.LASF133:
	.string	"fftsize"
.LASF11:
	.string	"char"
.LASF115:
	.string	"fe_compute_melcosine"
.LASF76:
	.string	"param_t"
.LASF74:
	.string	"verbose"
.LASF144:
	.string	"buffer"
.LASF96:
	.string	"HAMMING_WINDOW"
.LASF116:
	.string	"period"
.LASF43:
	.string	"_next"
.LASF62:
	.string	"PRE_EMPHASIS_ALPHA"
.LASF9:
	.string	"__off64_t"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF104:
	.string	"fwidth"
.LASF78:
	.string	"num_cepstra"
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
.LASF70:
	.string	"input_format"
.LASF146:
	.string	"wEnd"
.LASF98:
	.string	"complex"
.LASF139:
	.string	"beta"
.LASF145:
	.string	"exch"
.LASF93:
	.string	"MEL_FB"
.LASF154:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF100:
	.string	"start_pt"
.LASF51:
	.string	"int16"
.LASF55:
	.string	"WINDOW_LENGTH"
.LASF30:
	.string	"_vtable_offset"
.LASF54:
	.string	"FRAME_RATE"
.LASF136:
	.string	"start"
.LASF121:
	.string	"fe_pre_emphasis"
.LASF16:
	.string	"_IO_write_base"
.LASF111:
	.string	"dfreq"
.LASF135:
	.string	"fe_mel_spec"
.LASF141:
	.string	"invert"
.LASF65:
	.string	"ctlfile"
.LASF77:
	.string	"sampling_rate"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
