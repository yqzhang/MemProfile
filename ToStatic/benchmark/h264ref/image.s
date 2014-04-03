	.file	"image.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 image.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	last_P_no,8,8
	.comm	last_P_no_frm,8,8
	.comm	last_P_no_fld,8,8
	.comm	enc_picture,8,8
	.comm	enc_frame_picture,8,8
	.comm	enc_frame_picture2,8,8
	.comm	enc_frame_picture3,8,8
	.comm	enc_top_picture,8,8
	.comm	enc_bottom_picture,8,8
	.globl	ONE_FOURTH_TAP
	.section	.rodata
	.align 16
	.type	ONE_FOURTH_TAP, @object
	.size	ONE_FOURTH_TAP, 24
ONE_FOURTH_TAP:
	.long	20
	.long	20
	.long	-5
	.long	-4
	.long	1
	.long	0
	.text
	.globl	MbAffPostProc
	.type	MbAffPostProc, @function
MbAffPostProc:
.LFB2:
	.file 1 "image.c"
	.loc 1 123 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1080, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 126 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.0
	movq	6424(%rax), %rax	# enc_picture.0_16->imgY, tmp232
	movq	%rax, -1056(%rbp)	# tmp232, imgY
	.loc 1 127 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1
	movq	6464(%rax), %rax	# enc_picture.1_18->imgUV, tmp233
	movq	%rax, -1048(%rbp)	# tmp233, imgUV
	.loc 1 130 0
	movq	img(%rip), %rax	# img, img.2
	movl	72700(%rax), %eax	# img.2_20->yuv_format, D.12971
	testl	%eax, %eax	# D.12971
	je	.L2	#,
	.loc 1 132 0
	movl	$0, -1072(%rbp)	#, i
	jmp	.L3	#
.L23:
	.loc 1 134 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.3
	movq	6472(%rax), %rdx	# enc_picture.3_26->mb_field, D.12973
	movl	-1072(%rbp), %eax	# i, tmp234
	cltq
	addq	%rdx, %rax	# D.12973, D.12973
	movzbl	(%rax), %eax	# *_29, D.12975
	testb	%al, %al	# D.12975
	je	.L4	#,
	.loc 1 136 0
	leaq	-1076(%rbp), %rdx	#, tmp235
	leaq	-1080(%rbp), %rcx	#, tmp236
	movl	-1072(%rbp), %eax	# i, tmp237
	movq	%rcx, %rsi	# tmp236,
	movl	%eax, %edi	# tmp237,
	call	get_mb_pos	#
	.loc 1 137 0
	movl	$0, -1064(%rbp)	#, y
	jmp	.L5	#
.L8:
	.loc 1 138 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L6	#
.L7:
	.loc 1 139 0 discriminator 2
	movl	-1076(%rbp), %edx	# y0, y0.4
	movl	-1064(%rbp), %eax	# y, tmp238
	addl	%edx, %eax	# y0.4, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp239
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_37, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.5
	movl	-1068(%rbp), %edx	# x, tmp240
	addl	%ecx, %edx	# x0.5, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rdx, %rax	# D.12976, D.12978
	movzwl	(%rax), %eax	# *_43, D.12979
	movl	-1064(%rbp), %edx	# y, tmp242
	movslq	%edx, %rdx	# tmp242, tmp241
	movl	-1068(%rbp), %ecx	# x, tmp244
	movslq	%ecx, %rcx	# tmp244, tmp243
	salq	$5, %rcx	#, tmp245
	addq	%rcx, %rdx	# tmp245, tmp246
	movw	%ax, -1040(%rbp,%rdx,2)	# D.12979, temp
	.loc 1 138 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L6:
	.loc 1 138 0 is_stmt 0 discriminator 1
	cmpl	$15, -1068(%rbp)	#, x
	jle	.L7	#,
	.loc 1 137 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L5:
	.loc 1 137 0 is_stmt 0 discriminator 1
	cmpl	$31, -1064(%rbp)	#, y
	jle	.L8	#,
	.loc 1 141 0 is_stmt 1
	movl	$0, -1064(%rbp)	#, y
	jmp	.L9	#
.L12:
	.loc 1 142 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L10	#
.L11:
	.loc 1 144 0 discriminator 2
	movl	-1064(%rbp), %eax	# y, tmp247
	leal	(%rax,%rax), %edx	#, D.12971
	movl	-1076(%rbp), %eax	# y0, y0.6
	addl	%edx, %eax	# D.12971, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp248
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_54, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.7
	movl	-1068(%rbp), %edx	# x, tmp249
	addl	%ecx, %edx	# x0.7, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movl	-1064(%rbp), %eax	# y, tmp251
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp253
	movslq	%ecx, %rcx	# tmp253, tmp252
	salq	$5, %rcx	#, tmp254
	addq	%rcx, %rax	# tmp254, tmp255
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_60
	.loc 1 145 0 discriminator 2
	movl	-1064(%rbp), %eax	# y, tmp256
	addl	%eax, %eax	# D.12971
	leal	1(%rax), %edx	#, D.12971
	movl	-1076(%rbp), %eax	# y0, y0.8
	addl	%edx, %eax	# D.12971, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp257
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_68, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.9
	movl	-1068(%rbp), %edx	# x, tmp258
	addl	%ecx, %edx	# x0.9, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movl	-1064(%rbp), %eax	# y, tmp259
	addl	$16, %eax	#, D.12971
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp262
	movslq	%ecx, %rcx	# tmp262, tmp261
	salq	$5, %rcx	#, tmp263
	addq	%rcx, %rax	# tmp263, tmp264
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_74
	.loc 1 142 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L10:
	.loc 1 142 0 is_stmt 0 discriminator 1
	cmpl	$15, -1068(%rbp)	#, x
	jle	.L11	#,
	.loc 1 141 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L9:
	.loc 1 141 0 is_stmt 0 discriminator 1
	cmpl	$15, -1064(%rbp)	#, y
	jle	.L12	#,
	.loc 1 148 0 is_stmt 1
	movl	-1080(%rbp), %ecx	# x0, x0.10
	movq	img(%rip), %rax	# img, img.11
	movl	72708(%rax), %ebx	# img.11_80->mb_cr_size_x, D.12971
	movl	$16, %eax	#, tmp267
	cltd
	idivl	%ebx	# D.12971
	movl	%eax, %esi	# tmp265, D.12971
	movl	%ecx, %eax	# x0.10, tmp268
	cltd
	idivl	%esi	# D.12971
	movl	%eax, -1080(%rbp)	# x0.12, x0
	.loc 1 149 0
	movl	-1076(%rbp), %ecx	# y0, y0.13
	movq	img(%rip), %rax	# img, img.14
	movl	72712(%rax), %edi	# img.14_85->mb_cr_size_y, D.12971
	movl	$16, %eax	#, tmp272
	cltd
	idivl	%edi	# D.12971
	movl	%eax, %ebx	# tmp270, D.12971
	movl	%ecx, %eax	# y0.13, tmp273
	cltd
	idivl	%ebx	# D.12971
	movl	%eax, -1076(%rbp)	# y0.15, y0
	.loc 1 151 0
	movl	$0, -1060(%rbp)	#, uv
	jmp	.L13	#
.L22:
	.loc 1 153 0
	movl	$0, -1064(%rbp)	#, y
	jmp	.L14	#
.L17:
	.loc 1 154 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L15	#
.L16:
	.loc 1 155 0 discriminator 2
	movl	-1060(%rbp), %eax	# uv, tmp275
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1048(%rbp), %rax	# imgUV, tmp276
	addq	%rdx, %rax	# D.12976, D.12980
	movq	(%rax), %rax	# *_99, D.12977
	movl	-1076(%rbp), %ecx	# y0, y0.16
	movl	-1064(%rbp), %edx	# y, tmp277
	addl	%ecx, %edx	# y0.16, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	salq	$3, %rdx	#, D.12976
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_105, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.17
	movl	-1068(%rbp), %edx	# x, tmp278
	addl	%ecx, %edx	# x0.17, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rdx, %rax	# D.12976, D.12978
	movzwl	(%rax), %eax	# *_111, D.12979
	movl	-1064(%rbp), %edx	# y, tmp280
	movslq	%edx, %rdx	# tmp280, tmp279
	movl	-1068(%rbp), %ecx	# x, tmp282
	movslq	%ecx, %rcx	# tmp282, tmp281
	salq	$5, %rcx	#, tmp283
	addq	%rcx, %rdx	# tmp283, tmp284
	movw	%ax, -1040(%rbp,%rdx,2)	# D.12979, temp
	.loc 1 154 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L15:
	.loc 1 154 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.18
	movl	72708(%rax), %eax	# img.18_95->mb_cr_size_x, D.12971
	cmpl	-1068(%rbp), %eax	# x, D.12971
	jg	.L16	#,
	.loc 1 153 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L14:
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.19
	movl	72712(%rax), %eax	# img.19_91->mb_cr_size_y, D.12971
	addl	%eax, %eax	# D.12971
	cmpl	-1064(%rbp), %eax	# y, D.12971
	jg	.L17	#,
	.loc 1 157 0 is_stmt 1
	movl	$0, -1064(%rbp)	#, y
	jmp	.L18	#
.L21:
	.loc 1 158 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L19	#
.L20:
	.loc 1 160 0 discriminator 2
	movl	-1060(%rbp), %eax	# uv, tmp285
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1048(%rbp), %rax	# imgUV, tmp286
	addq	%rdx, %rax	# D.12976, D.12980
	movq	(%rax), %rax	# *_123, D.12977
	movl	-1064(%rbp), %edx	# y, tmp287
	leal	(%rdx,%rdx), %ecx	#, D.12971
	movl	-1076(%rbp), %edx	# y0, y0.20
	addl	%ecx, %edx	# D.12971, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	salq	$3, %rdx	#, D.12976
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_130, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.21
	movl	-1068(%rbp), %edx	# x, tmp288
	addl	%ecx, %edx	# x0.21, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movl	-1064(%rbp), %eax	# y, tmp290
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp292
	movslq	%ecx, %rcx	# tmp292, tmp291
	salq	$5, %rcx	#, tmp293
	addq	%rcx, %rax	# tmp293, tmp294
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_136
	.loc 1 161 0 discriminator 2
	movl	-1060(%rbp), %eax	# uv, tmp295
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1048(%rbp), %rax	# imgUV, tmp296
	addq	%rdx, %rax	# D.12976, D.12980
	movq	(%rax), %rax	# *_140, D.12977
	movl	-1064(%rbp), %edx	# y, tmp297
	addl	%edx, %edx	# D.12971
	leal	1(%rdx), %ecx	#, D.12971
	movl	-1076(%rbp), %edx	# y0, y0.22
	addl	%ecx, %edx	# D.12971, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	salq	$3, %rdx	#, D.12976
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_148, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.23
	movl	-1068(%rbp), %edx	# x, tmp298
	addl	%ecx, %edx	# x0.23, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movq	img(%rip), %rax	# img, img.24
	movl	72712(%rax), %ecx	# img.24_155->mb_cr_size_y, D.12971
	movl	-1064(%rbp), %eax	# y, tmp299
	addl	%ecx, %eax	# D.12971, D.12971
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp302
	movslq	%ecx, %rcx	# tmp302, tmp301
	salq	$5, %rcx	#, tmp303
	addq	%rcx, %rax	# tmp303, tmp304
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_154
	.loc 1 158 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L19:
	.loc 1 158 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.25
	movl	72708(%rax), %eax	# img.25_119->mb_cr_size_x, D.12971
	cmpl	-1068(%rbp), %eax	# x, D.12971
	jg	.L20	#,
	.loc 1 157 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L18:
	.loc 1 157 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.26
	movl	72712(%rax), %eax	# img.26_116->mb_cr_size_y, D.12971
	cmpl	-1064(%rbp), %eax	# y, D.12971
	jg	.L21	#,
	.loc 1 151 0 is_stmt 1
	addl	$1, -1060(%rbp)	#, uv
.L13:
	.loc 1 151 0 is_stmt 0 discriminator 1
	cmpl	$1, -1060(%rbp)	#, uv
	jle	.L22	#,
.L4:
	.loc 1 132 0 is_stmt 1
	addl	$2, -1072(%rbp)	#, i
.L3:
	.loc 1 132 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.27
	movl	72484(%rax), %eax	# img.27_23->PicSizeInMbs, D.12972
	cmpl	-1072(%rbp), %eax	# i, D.12971
	jg	.L23	#,
	jmp	.L1	#
.L2:
	.loc 1 169 0 is_stmt 1
	movl	$0, -1072(%rbp)	#, i
	jmp	.L25	#
.L35:
	.loc 1 171 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.28
	movq	6472(%rax), %rdx	# enc_picture.28_167->mb_field, D.12973
	movl	-1072(%rbp), %eax	# i, tmp305
	cltq
	addq	%rdx, %rax	# D.12973, D.12973
	movzbl	(%rax), %eax	# *_170, D.12975
	testb	%al, %al	# D.12975
	je	.L26	#,
	.loc 1 173 0
	leaq	-1076(%rbp), %rdx	#, tmp306
	leaq	-1080(%rbp), %rcx	#, tmp307
	movl	-1072(%rbp), %eax	# i, tmp308
	movq	%rcx, %rsi	# tmp307,
	movl	%eax, %edi	# tmp308,
	call	get_mb_pos	#
	.loc 1 174 0
	movl	$0, -1064(%rbp)	#, y
	jmp	.L27	#
.L30:
	.loc 1 175 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L28	#
.L29:
	.loc 1 176 0 discriminator 2
	movl	-1076(%rbp), %edx	# y0, y0.29
	movl	-1064(%rbp), %eax	# y, tmp309
	addl	%edx, %eax	# y0.29, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp310
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_178, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.30
	movl	-1068(%rbp), %edx	# x, tmp311
	addl	%ecx, %edx	# x0.30, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rdx, %rax	# D.12976, D.12978
	movzwl	(%rax), %eax	# *_184, D.12979
	movl	-1064(%rbp), %edx	# y, tmp313
	movslq	%edx, %rdx	# tmp313, tmp312
	movl	-1068(%rbp), %ecx	# x, tmp315
	movslq	%ecx, %rcx	# tmp315, tmp314
	salq	$5, %rcx	#, tmp316
	addq	%rcx, %rdx	# tmp316, tmp317
	movw	%ax, -1040(%rbp,%rdx,2)	# D.12979, temp
	.loc 1 175 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L28:
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpl	$15, -1068(%rbp)	#, x
	jle	.L29	#,
	.loc 1 174 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L27:
	.loc 1 174 0 is_stmt 0 discriminator 1
	cmpl	$31, -1064(%rbp)	#, y
	jle	.L30	#,
	.loc 1 178 0 is_stmt 1
	movl	$0, -1064(%rbp)	#, y
	jmp	.L31	#
.L34:
	.loc 1 179 0
	movl	$0, -1068(%rbp)	#, x
	jmp	.L32	#
.L33:
	.loc 1 181 0 discriminator 2
	movl	-1064(%rbp), %eax	# y, tmp318
	leal	(%rax,%rax), %edx	#, D.12971
	movl	-1076(%rbp), %eax	# y0, y0.31
	addl	%edx, %eax	# D.12971, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp319
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_195, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.32
	movl	-1068(%rbp), %edx	# x, tmp320
	addl	%ecx, %edx	# x0.32, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movl	-1064(%rbp), %eax	# y, tmp322
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp324
	movslq	%ecx, %rcx	# tmp324, tmp323
	salq	$5, %rcx	#, tmp325
	addq	%rcx, %rax	# tmp325, tmp326
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_201
	.loc 1 182 0 discriminator 2
	movl	-1064(%rbp), %eax	# y, tmp327
	addl	%eax, %eax	# D.12971
	leal	1(%rax), %edx	#, D.12971
	movl	-1076(%rbp), %eax	# y0, y0.33
	addl	%edx, %eax	# D.12971, D.12971
	cltq
	leaq	0(,%rax,8), %rdx	#, D.12976
	movq	-1056(%rbp), %rax	# imgY, tmp328
	addq	%rdx, %rax	# D.12976, D.12977
	movq	(%rax), %rax	# *_209, D.12978
	movl	-1080(%rbp), %ecx	# x0, x0.34
	movl	-1068(%rbp), %edx	# x, tmp329
	addl	%ecx, %edx	# x0.34, D.12971
	movslq	%edx, %rdx	# D.12971, D.12976
	addq	%rdx, %rdx	# D.12976
	addq	%rax, %rdx	# D.12978, D.12978
	movl	-1064(%rbp), %eax	# y, tmp330
	addl	$16, %eax	#, D.12971
	cltq
	movl	-1068(%rbp), %ecx	# x, tmp333
	movslq	%ecx, %rcx	# tmp333, tmp332
	salq	$5, %rcx	#, tmp334
	addq	%rcx, %rax	# tmp334, tmp335
	movzwl	-1040(%rbp,%rax,2), %eax	# temp, D.12979
	movw	%ax, (%rdx)	# D.12979, *_215
	.loc 1 179 0 discriminator 2
	addl	$1, -1068(%rbp)	#, x
.L32:
	.loc 1 179 0 is_stmt 0 discriminator 1
	cmpl	$15, -1068(%rbp)	#, x
	jle	.L33	#,
	.loc 1 178 0 is_stmt 1
	addl	$1, -1064(%rbp)	#, y
.L31:
	.loc 1 178 0 is_stmt 0 discriminator 1
	cmpl	$15, -1064(%rbp)	#, y
	jle	.L34	#,
.L26:
	.loc 1 169 0 is_stmt 1
	addl	$2, -1072(%rbp)	#, i
.L25:
	.loc 1 169 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.35
	movl	72484(%rax), %eax	# img.35_164->PicSizeInMbs, D.12972
	cmpl	-1072(%rbp), %eax	# i, D.12971
	jg	.L35	#,
.L1:
	.loc 1 187 0 is_stmt 1
	addq	$1080, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	MbAffPostProc, .-MbAffPostProc
	.globl	code_a_picture
	.type	code_a_picture, @function
code_a_picture:
.LFB3:
	.loc 1 201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pic, pic
	.loc 1 202 0
	movl	$0, -12(%rbp)	#, NumberOfCodedMBs
	.loc 1 203 0
	movl	$0, -8(%rbp)	#, SliceGroup
	.loc 1 206 0
	movq	img(%rip), %rax	# img, img.36
	movq	-24(%rbp), %rdx	# pic, tmp116
	movq	%rdx, 14152(%rax)	# tmp116, img.36_8->currentPicture
	.loc 1 208 0
	movq	img(%rip), %rax	# img, img.37
	movq	14152(%rax), %rdx	# img.37_10->currentPicture, D.12981
	movq	img(%rip), %rax	# img, img.39
	movl	(%rax), %ecx	# img.39_12->number, D.12982
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.40
	cmpl	%eax, %ecx	# start_frame_no_in_this_IGOP.40, D.12982
	jne	.L37	#,
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.41
	movl	28(%rax), %eax	# img.41_15->structure, D.12982
	cmpl	$2, %eax	#, D.12982
	jne	.L38	#,
.L37:
	.loc 1 208 0 discriminator 2
	movq	input(%rip), %rax	# input, input.42
	movl	1228(%rax), %eax	# input.42_17->idr_enable, D.12982
	testl	%eax, %eax	# D.12982
	je	.L39	#,
	.loc 1 208 0 discriminator 3
	movq	img(%rip), %rax	# img, img.43
	movl	24(%rax), %eax	# img.43_19->type, D.12982
	cmpl	$2, %eax	#, D.12982
	je	.L40	#,
	.loc 1 208 0 discriminator 2
	movq	img(%rip), %rax	# img, img.44
	movl	24(%rax), %eax	# img.44_21->type, D.12982
	cmpl	$3, %eax	#, D.12982
	je	.L40	#,
	.loc 1 208 0 discriminator 1
	movq	img(%rip), %rax	# img, img.45
	movl	24(%rax), %eax	# img.45_23->type, D.12982
	cmpl	$4, %eax	#, D.12982
	jne	.L39	#,
.L40:
	movq	img(%rip), %rax	# img, img.46
	movl	28(%rax), %eax	# img.46_25->structure, D.12982
	cmpl	$2, %eax	#, D.12982
	je	.L39	#,
.L38:
	movl	$1, %eax	#, iftmp.38
	jmp	.L41	#
.L39:
	.loc 1 208 0 discriminator 4
	movl	$0, %eax	#, iftmp.38
.L41:
	.loc 1 208 0 discriminator 5
	movl	%eax, 4(%rdx)	# iftmp.38, _11->idr_flag
	.loc 1 210 0 is_stmt 1 discriminator 5
	movq	-24(%rbp), %rax	# pic, tmp117
	movl	$0, (%rax)	#, pic_9(D)->no_slices
	.loc 1 211 0 discriminator 5
	movq	-24(%rbp), %rdx	# pic, tmp118
	movl	.LC0(%rip), %eax	#, tmp119
	movl	%eax, 812(%rdx)	# tmp119, pic_9(D)->distortion_y
	movq	-24(%rbp), %rax	# pic, tmp120
	movl	812(%rax), %eax	# pic_9(D)->distortion_y, D.12983
	movq	-24(%rbp), %rdx	# pic, tmp121
	movl	%eax, 820(%rdx)	# D.12983, pic_9(D)->distortion_v
	movq	-24(%rbp), %rax	# pic, tmp122
	movl	820(%rax), %eax	# pic_9(D)->distortion_v, D.12983
	movq	-24(%rbp), %rdx	# pic, tmp123
	movl	%eax, 816(%rdx)	# D.12983, pic_9(D)->distortion_u
	.loc 1 213 0 discriminator 5
	movl	$0, %eax	#,
	call	RandomIntraNewPicture	#
	.loc 1 217 0 discriminator 5
	movq	img(%rip), %rax	# img, img.47
	movl	$1, 72652(%rax)	#, img.47_31->slice_group_change_cycle
	.loc 1 218 0 discriminator 5
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.48
	movq	active_pps(%rip), %rcx	# active_pps, active_pps.49
	movq	img(%rip), %rax	# img, img.50
	movq	%rcx, %rsi	# active_pps.49,
	movq	%rax, %rdi	# img.50,
	call	FmoInit	#
	.loc 1 219 0 discriminator 5
	movl	$0, %eax	#,
	call	FmoStartPicture	#
	.loc 1 221 0 discriminator 5
	movl	$0, %eax	#,
	call	CalculateQuantParam	#
	.loc 1 222 0 discriminator 5
	movl	$0, %eax	#,
	call	CalculateOffsetParam	#
	.loc 1 224 0 discriminator 5
	movq	input(%rip), %rax	# input, input.51
	movl	3220(%rax), %eax	# input.51_35->AllowTransform8x8, D.12982
	testl	%eax, %eax	# D.12982
	je	.L42	#,
	.loc 1 226 0
	movl	$0, %eax	#,
	call	CalculateQuant8Param	#
	.loc 1 227 0
	movl	$0, %eax	#,
	call	CalculateOffset8Param	#
	.loc 1 230 0
	jmp	.L43	#
.L42:
	jmp	.L43	#
.L46:
	.loc 1 233 0
	jmp	.L44	#
.L45:
	.loc 1 236 0
	movq	-24(%rbp), %rdx	# pic, tmp124
	movl	-8(%rbp), %eax	# SliceGroup, tmp125
	movq	%rdx, %rsi	# tmp124,
	movl	%eax, %edi	# tmp125,
	call	encode_one_slice	#
	addl	%eax, -12(%rbp)	# D.12982, NumberOfCodedMBs
	.loc 1 237 0
	movq	img(%rip), %rax	# img, img.52
	movl	12(%rax), %eax	# img.52_42->current_mb_nr, D.12982
	movl	%eax, %edi	# D.12982,
	call	FmoSetLastMacroblockInSlice	#
	.loc 1 239 0
	movq	img(%rip), %rax	# img, img.53
	movl	20(%rax), %edx	# img.53_44->current_slice_nr, D.12982
	addl	$1, %edx	#, D.12982
	movl	%edx, 20(%rax)	# D.12982, img.53_44->current_slice_nr
	.loc 1 240 0
	movq	stats(%rip), %rax	# stats, stats.54
	movl	$0, 24(%rax)	#, stats.54_47->bit_slice
.L44:
	.loc 1 233 0 discriminator 1
	movl	-8(%rbp), %eax	# SliceGroup, tmp126
	movl	%eax, %edi	# tmp126,
	call	FmoSliceGroupCompletelyCoded	#
	testl	%eax, %eax	# D.12982
	je	.L45	#,
	.loc 1 243 0
	addl	$1, -8(%rbp)	#, SliceGroup
.L43:
	.loc 1 230 0 discriminator 1
	movq	img(%rip), %rax	# img, img.55
	movl	16(%rax), %eax	# img.55_37->total_number_mb, D.12982
	cmpl	-12(%rbp), %eax	# NumberOfCodedMBs, D.12982
	jg	.L46	#,
	.loc 1 245 0
	movl	$0, %eax	#,
	call	FmoEndPicture	#
	.loc 1 247 0
	movq	input(%rip), %rax	# input, input.56
	movl	2464(%rax), %eax	# input.56_49->rdopt, D.12982
	cmpl	$2, %eax	#, D.12982
	jne	.L47	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.57
	movl	24(%rax), %eax	# img.57_51->type, D.12982
	cmpl	$1, %eax	#, D.12982
	je	.L47	#,
	.loc 1 248 0 is_stmt 1
	movl	$0, -4(%rbp)	#, j
	jmp	.L48	#
.L49:
	.loc 1 249 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.58
	movq	24(%rax), %rax	# decs.58_56->decY_best, D.12984
	movl	-4(%rbp), %edx	# j, tmp127
	movslq	%edx, %rdx	# tmp127, D.12985
	salq	$3, %rdx	#, D.12985
	addq	%rdx, %rax	# D.12985, D.12984
	movq	(%rax), %rcx	# *_60, D.12986
	movq	img(%rip), %rax	# img, img.59
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.12986,
	movq	%rax, %rdi	# img.59,
	call	DeblockFrame	#
	.loc 1 248 0 discriminator 2
	addl	$1, -4(%rbp)	#, j
.L48:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.60
	movl	2904(%rax), %eax	# input.60_54->NoOfDecoders, D.12982
	cmpl	-4(%rbp), %eax	# j, D.12982
	jg	.L49	#,
.L47:
	.loc 1 251 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.61
	movq	6464(%rax), %rdx	# enc_picture.61_64->imgUV, D.12984
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.62
	movq	6424(%rax), %rcx	# enc_picture.62_66->imgY, D.12986
	movq	img(%rip), %rax	# img, img.63
	movq	%rcx, %rsi	# D.12986,
	movq	%rax, %rdi	# img.63,
	call	DeblockFrame	#
	.loc 1 253 0
	movq	img(%rip), %rax	# img, img.64
	movl	72400(%rax), %eax	# img.64_69->MbaffFrameFlag, D.12982
	testl	%eax, %eax	# D.12982
	je	.L36	#,
	.loc 1 254 0
	movl	$0, %eax	#,
	call	MbAffPostProc	#
.L36:
	.loc 1 256 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	code_a_picture, .-code_a_picture
	.section	.rodata
	.align 8
.LC1:
	.string	"POC type 2 cannot be applied for the coding pattern where the encoding /decoding order of pictures are different from the output order.\n"
	.text
	.globl	encode_one_frame
	.type	encode_one_frame, @function
encode_one_frame:
.LFB4:
	.loc 1 267 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 289 0
	movl	$0, -116(%rbp)	#, bits_frm
	movl	$0, -112(%rbp)	#, bits_fld
	.loc 1 290 0
	movl	.LC0(%rip), %eax	#, tmp399
	movl	%eax, -108(%rbp)	# tmp399, dis_frm
	movl	.LC0(%rip), %eax	#, tmp400
	movl	%eax, -104(%rbp)	# tmp400, dis_frm_y
	movl	.LC0(%rip), %eax	#, tmp401
	movl	%eax, -100(%rbp)	# tmp401, dis_frm_u
	movl	.LC0(%rip), %eax	#, tmp402
	movl	%eax, -96(%rbp)	# tmp402, dis_frm_v
	.loc 1 291 0
	movl	.LC0(%rip), %eax	#, tmp403
	movl	%eax, -92(%rbp)	# tmp403, dis_fld
	movl	.LC0(%rip), %eax	#, tmp404
	movl	%eax, -88(%rbp)	# tmp404, dis_fld_y
	movl	.LC0(%rip), %eax	#, tmp405
	movl	%eax, -84(%rbp)	# tmp405, dis_fld_u
	movl	.LC0(%rip), %eax	#, tmp406
	movl	%eax, -80(%rbp)	# tmp406, dis_fld_v
	.loc 1 294 0
	movl	$0, -120(%rbp)	#, bits
	.loc 1 296 0
	movl	$0, me_time(%rip)	#, me_time
	.loc 1 297 0
	movq	img(%rip), %rax	# img, img.65
	movl	$0, 71804(%rax)	#, img.65_16->rd_pass
	.loc 1 298 0
	movq	$0, enc_frame_picture(%rip)	#, enc_frame_picture
	.loc 1 299 0
	movq	$0, enc_frame_picture2(%rip)	#, enc_frame_picture2
	.loc 1 300 0
	movq	$0, enc_frame_picture3(%rip)	#, enc_frame_picture3
	.loc 1 303 0
	movq	$0, -48(%rbp)	#, tstruct1.time
	.loc 1 304 0
	movw	$0, -40(%rbp)	#, tstruct1.millitm
	.loc 1 305 0
	movw	$0, -38(%rbp)	#, tstruct1.timezone
	.loc 1 306 0
	movw	$0, -36(%rbp)	#, tstruct1.dstflag
	.loc 1 307 0
	movq	$0, -64(%rbp)	#, ltime1
	.loc 1 318 0
	movq	img(%rip), %rax	# img, img.66
	movl	$0, 72624(%rax)	#, img.66_18->write_macroblock
	.loc 1 331 0
	movq	input(%rip), %rax	# input, input.67
	movl	56(%rax), %eax	# input.67_19->ResendPPS, D.12987
	testl	%eax, %eax	# D.12987
	je	.L52	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.68
	movl	(%rax), %eax	# img.68_21->number, D.12987
	testl	%eax, %eax	# D.12987
	je	.L52	#,
	.loc 1 333 0 is_stmt 1
	movq	stats(%rip), %rbx	# stats, stats.69
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	write_PPS	#
	movl	%eax, 1492(%rbx)	# D.12987, stats.69_23->bit_ctr_parametersets_n
	.loc 1 335 0
	movq	stats(%rip), %rax	# stats, stats.70
	movq	stats(%rip), %rdx	# stats, stats.71
	movl	1488(%rdx), %ecx	# stats.71_26->bit_ctr_parametersets, D.12987
	movq	stats(%rip), %rdx	# stats, stats.72
	movl	1492(%rdx), %edx	# stats.72_28->bit_ctr_parametersets_n, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 1488(%rax)	# D.12987, stats.70_25->bit_ctr_parametersets
.L52:
	.loc 1 338 0
	movl	$0, %eax	#,
	call	put_buffer_frame	#
	.loc 1 340 0
	movl	$0, %eax	#,
	call	init_frame	#
	.loc 1 341 0
	movl	$0, %eax	#,
	call	CalculateFrameNumber	#
	movl	%eax, -76(%rbp)	# tmp407, FrameNumberInFile
	.loc 1 344 0
	movq	input(%rip), %rax	# input, input.73
	.loc 1 343 0
	movl	3304(%rax), %r8d	# input.73_32->img_height_cr, D.12987
	.loc 1 344 0
	movq	input(%rip), %rax	# input, input.74
	.loc 1 343 0
	movl	3308(%rax), %edi	# input.74_34->img_width_cr, D.12987
	.loc 1 344 0
	movq	input(%rip), %rax	# input, input.75
	.loc 1 343 0
	movl	68(%rax), %ecx	# input.75_36->img_height, D.12987
	.loc 1 344 0
	movq	input(%rip), %rax	# input, input.76
	.loc 1 343 0
	movl	64(%rax), %edx	# input.76_38->img_width, D.12987
	movq	input(%rip), %rax	# input, input.77
	movl	220(%rax), %esi	# input.77_40->infile_header, D.12987
	movl	-76(%rbp), %eax	# FrameNumberInFile, tmp408
	movl	%r8d, %r9d	# D.12987,
	movl	%edi, %r8d	# D.12987,
	movl	%eax, %edi	# tmp408,
	call	ReadOneFrame	#
	.loc 1 347 0
	movq	img(%rip), %rax	# img, img.78
	.loc 1 346 0
	movl	64(%rax), %r8d	# img.78_42->height_cr, D.12987
	.loc 1 347 0
	movq	img(%rip), %rax	# img, img.79
	.loc 1 346 0
	movl	56(%rax), %edi	# img.79_44->width_cr, D.12987
	.loc 1 347 0
	movq	input(%rip), %rax	# input, input.80
	.loc 1 346 0
	movl	3304(%rax), %r9d	# input.80_46->img_height_cr, D.12987
	.loc 1 347 0
	movq	input(%rip), %rax	# input, input.81
	.loc 1 346 0
	movl	3308(%rax), %r10d	# input.81_48->img_width_cr, D.12987
	movq	img(%rip), %rax	# img, img.82
	movl	60(%rax), %ecx	# img.82_50->height, D.12987
	movq	img(%rip), %rax	# img, img.83
	movl	52(%rax), %edx	# img.83_52->width, D.12987
	movq	input(%rip), %rax	# input, input.84
	movl	68(%rax), %esi	# input.84_54->img_height, D.12987
	movq	input(%rip), %rax	# input, input.85
	movl	64(%rax), %eax	# input.85_56->img_width, D.12987
	movl	%r8d, 8(%rsp)	# D.12987,
	movl	%edi, (%rsp)	# D.12987,
	movl	%r10d, %r8d	# D.12987,
	movl	%eax, %edi	# D.12987,
	call	PaddAutoCropBorders	#
	.loc 1 350 0
	movq	img(%rip), %rax	# img, img.86
	movq	input(%rip), %rdx	# input, input.87
	movl	1248(%rdx), %edx	# input.87_59->direct_spatial_mv_pred_flag, D.12987
	movl	%edx, 71996(%rax)	# D.12987, img.86_58->direct_spatial_mv_pred_flag
	.loc 1 351 0
	movq	img(%rip), %rax	# img, img.88
	movq	input(%rip), %rdx	# input, input.89
	movl	2928(%rdx), %edx	# input.89_62->LFDisableIdc, D.12987
	movl	%edx, 71984(%rax)	# D.12987, img.88_61->LFDisableIdc
	.loc 1 352 0
	movq	img(%rip), %rax	# img, img.90
	movq	input(%rip), %rdx	# input, input.91
	movl	2932(%rdx), %edx	# input.91_65->LFAlphaC0Offset, D.12987
	movl	%edx, 71988(%rax)	# D.12987, img.90_64->LFAlphaC0Offset
	.loc 1 353 0
	movq	img(%rip), %rax	# img, img.92
	movq	input(%rip), %rdx	# input, input.93
	movl	2936(%rdx), %edx	# input.93_68->LFBetaOffset, D.12987
	movl	%edx, 71992(%rax)	# D.12987, img.92_67->LFBetaOffset
	.loc 1 357 0
	movq	img(%rip), %rax	# img, img.94
	movl	24(%rax), %eax	# img.94_70->type, D.12987
	cmpl	$1, %eax	#, D.12987
	jne	.L53	#,
	.loc 1 358 0
	movl	Bframe_ctr(%rip), %eax	# Bframe_ctr, Bframe_ctr.95
	addl	$1, %eax	#, Bframe_ctr.96
	movl	%eax, Bframe_ctr(%rip)	# Bframe_ctr.96, Bframe_ctr
	jmp	.L54	#
.L53:
	.loc 1 359 0
	movq	img(%rip), %rax	# img, img.97
	movl	24(%rax), %eax	# img.97_74->type, D.12987
	cmpl	$2, %eax	#, D.12987
	jne	.L55	#,
	.loc 1 360 0
	movl	Iframe_ctr(%rip), %eax	# Iframe_ctr, Iframe_ctr.98
	addl	$1, %eax	#, Iframe_ctr.99
	movl	%eax, Iframe_ctr(%rip)	# Iframe_ctr.99, Iframe_ctr
	jmp	.L54	#
.L55:
	.loc 1 362 0
	movl	Pframe_ctr(%rip), %eax	# Pframe_ctr, Pframe_ctr.100
	addl	$1, %eax	#, Pframe_ctr.101
	movl	%eax, Pframe_ctr(%rip)	# Pframe_ctr.101, Pframe_ctr
.L54:
	.loc 1 364 0
	movq	input(%rip), %rax	# input, input.102
	movl	2880(%rax), %eax	# input.102_80->PicInterlace, D.12987
	cmpl	$1, %eax	#, D.12987
	jne	.L56	#,
	.loc 1 367 0
	movq	img(%rip), %rax	# img, img.103
	movl	$1, 72600(%rax)	#, img.103_82->FieldControl
	.loc 1 369 0
	movq	img(%rip), %rax	# img, img.104
	movl	$1, 72444(%rax)	#, img.104_83->field_picture
	.loc 1 370 0
	movq	bottom_pic(%rip), %rdx	# bottom_pic, bottom_pic.105
	movq	top_pic(%rip), %rax	# top_pic, top_pic.106
	movq	%rdx, %rsi	# bottom_pic.105,
	movq	%rax, %rdi	# top_pic.106,
	call	field_picture	#
	.loc 1 371 0
	movq	img(%rip), %rax	# img, img.107
	movl	$1, 71800(%rax)	#, img.107_86->fld_flag
	jmp	.L57	#
.L56:
	.loc 1 376 0
	movq	img(%rip), %rax	# img, img.108
	movl	$0, 72600(%rax)	#, img.108_87->FieldControl
	.loc 1 379 0
	movq	input(%rip), %rax	# input, input.109
	movl	2884(%rax), %eax	# input.109_88->MbInterlace, D.12987
	testl	%eax, %eax	# D.12987
	je	.L58	#,
	.loc 1 380 0
	movl	$1, mb_adaptive(%rip)	#, mb_adaptive
.L58:
	.loc 1 382 0
	movq	img(%rip), %rax	# img, img.110
	movl	$0, 72444(%rax)	#, img.110_90->field_picture
	.loc 1 385 0
	movq	input(%rip), %rax	# input, input.111
	movl	3236(%rax), %eax	# input.111_91->RCEnable, D.12987
	testl	%eax, %eax	# D.12987
	je	.L59	#,
	.loc 1 389 0
	movq	input(%rip), %rax	# input, input.112
	movl	2884(%rax), %eax	# input.112_93->MbInterlace, D.12987
	testl	%eax, %eax	# D.12987
	je	.L60	#,
	.loc 1 389 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.113
	movl	3248(%rax), %edx	# input.113_95->basicunit, D.12987
	movq	img(%rip), %rax	# img, img.114
	movl	72608(%rax), %eax	# img.114_97->Frame_Total_Number_MB, D.12987
	cmpl	%eax, %edx	# D.12987, D.12987
	jge	.L60	#,
	.loc 1 390 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.115
	movl	24(%rax), %eax	# img.115_99->type, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L60	#,
	.loc 1 390 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.116
	movl	72612(%rax), %eax	# img.116_101->IFLAG, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L60	#,
	.loc 1 391 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.117
	movq	input(%rip), %rdx	# input, input.118
	movl	3248(%rdx), %edx	# input.118_104->basicunit, D.12987
	addl	%edx, %edx	# D.12987
	movl	%edx, 72620(%rax)	# D.12987, img.117_103->BasicUnit
	jmp	.L61	#
.L60:
	.loc 1 393 0
	movq	img(%rip), %rax	# img, img.119
	movq	input(%rip), %rdx	# input, input.120
	movl	3248(%rdx), %edx	# input.120_108->basicunit, D.12987
	movl	%edx, 72620(%rax)	# D.12987, img.119_107->BasicUnit
.L61:
	.loc 1 395 0
	movl	$1, %edx	#,
	movl	$0, %esi	#,
	movl	$1, %edi	#,
	call	rc_init_pict	#
	.loc 1 396 0
	movq	img(%rip), %rbx	# img, img.121
	movl	$0, %edi	#,
	call	updateQuantizationParameter	#
	movl	%eax, 40(%rbx)	# D.12987, img.121_110->qp
	.loc 1 399 0
	movq	img(%rip), %rax	# img, img.122
	movl	24(%rax), %eax	# img.122_112->type, tmp409
	movl	%eax, -72(%rbp)	# tmp409, pic_type
	.loc 1 400 0
	movl	$0, QP(%rip)	#, QP
.L59:
	.loc 1 403 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.123
	movl	1148(%rax), %eax	# active_sps.123_114->frame_mbs_only_flag, D.12988
	testl	%eax, %eax	# D.12988
	je	.L62	#,
	.loc 1 404 0
	movq	img(%rip), %rax	# img, img.124
	movl	$0, 72596(%rax)	#, img.124_116->TopFieldFlag
.L62:
	.loc 1 406 0
	movq	input(%rip), %rax	# input, input.125
	movl	60(%rax), %eax	# input.125_117->GenerateMultiplePPS, D.12987
	testl	%eax, %eax	# D.12987
	je	.L63	#,
	.loc 1 407 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
.L63:
	.loc 1 409 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.126
	movl	$0, %esi	#,
	movq	%rax, %rdi	# frame_pic.126,
	call	frame_picture	#
	.loc 1 411 0
	movq	input(%rip), %rax	# input, input.127
	movl	1300(%rax), %eax	# input.127_120->RDPictureIntra, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L64	#,
	.loc 1 411 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.128
	movl	24(%rax), %eax	# img.128_122->type, D.12987
	cmpl	$2, %eax	#, D.12987
	je	.L65	#,
.L64:
	.loc 1 411 0 discriminator 1
	movq	input(%rip), %rax	# input, input.129
	movl	1296(%rax), %eax	# input.129_124->RDPictureDecision, D.12987
	testl	%eax, %eax	# D.12987
	je	.L65	#,
	.loc 1 413 0 is_stmt 1
	movl	$0, %eax	#,
	call	rdPictureCoding	#
.L65:
	.loc 1 417 0
	movq	input(%rip), %rax	# input, input.130
	movl	2884(%rax), %eax	# input.130_126->MbInterlace, D.12987
	testl	%eax, %eax	# D.12987
	je	.L66	#,
	.loc 1 418 0
	movl	$0, mb_adaptive(%rip)	#, mb_adaptive
.L66:
	.loc 1 420 0
	movq	input(%rip), %rax	# input, input.131
	movl	2880(%rax), %eax	# input.131_128->PicInterlace, D.12987
	cmpl	$2, %eax	#, D.12987
	jne	.L67	#,
	.loc 1 423 0
	movq	img(%rip), %rax	# img, img.132
	movl	$1, 72600(%rax)	#, img.132_130->FieldControl
	.loc 1 424 0
	movq	img(%rip), %rax	# img, img.133
	movl	$0, 72624(%rax)	#, img.133_131->write_macroblock
	.loc 1 425 0
	movq	img(%rip), %rax	# img, img.134
	movl	$0, 72628(%rax)	#, img.134_132->bot_MB
	.loc 1 427 0
	movq	img(%rip), %rax	# img, img.135
	movl	$1, 72444(%rax)	#, img.135_133->field_picture
	.loc 1 428 0
	movq	bottom_pic(%rip), %rdx	# bottom_pic, bottom_pic.136
	movq	top_pic(%rip), %rax	# top_pic, top_pic.137
	movq	%rdx, %rsi	# bottom_pic.136,
	movq	%rax, %rdi	# top_pic.137,
	call	field_picture	#
	.loc 1 432 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.138
	movss	812(%rax), %xmm1	# top_pic.138_136->distortion_y, D.12989
	movq	top_pic(%rip), %rax	# top_pic, top_pic.139
	movss	816(%rax), %xmm0	# top_pic.139_138->distortion_u, D.12989
	addss	%xmm1, %xmm0	# D.12989, D.12989
	movq	top_pic(%rip), %rax	# top_pic, top_pic.140
	movss	820(%rax), %xmm1	# top_pic.140_141->distortion_v, D.12989
	addss	%xmm1, %xmm0	# D.12989, tmp410
	movss	%xmm0, -92(%rbp)	# tmp410, dis_fld
	.loc 1 433 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.141
	movss	812(%rax), %xmm1	# frame_pic.141_144->distortion_y, D.12989
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.142
	movss	816(%rax), %xmm0	# frame_pic.142_146->distortion_u, D.12989
	addss	%xmm1, %xmm0	# D.12989, D.12989
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.143
	movss	820(%rax), %xmm1	# frame_pic.143_149->distortion_v, D.12989
	addss	%xmm1, %xmm0	# D.12989, tmp411
	movss	%xmm0, -108(%rbp)	# tmp411, dis_frm
	.loc 1 435 0
	movq	img(%rip), %rbx	# img, img.144
	movq	bottom_pic(%rip), %rdx	# bottom_pic, bottom_pic.145
	movq	top_pic(%rip), %rcx	# top_pic, top_pic.146
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.147
	movq	%rcx, %rsi	# top_pic.146,
	movq	%rax, %rdi	# frame_pic.147,
	call	picture_structure_decision	#
	movl	%eax, 71800(%rbx)	# D.12990, img.144_152->fld_flag
	.loc 1 436 0
	movq	img(%rip), %rax	# img, img.148
	movl	71800(%rax), %eax	# img.148_158->fld_flag, D.12990
	movl	%eax, %edi	# D.12987,
	call	update_field_frame_contexts	#
	.loc 1 439 0
	movq	img(%rip), %rax	# img, img.149
	movl	71800(%rax), %eax	# img.149_161->fld_flag, D.12990
	testl	%eax, %eax	# D.12990
	jne	.L68	#,
	.loc 1 440 0
	movq	img(%rip), %rax	# img, img.150
	movl	$1, 72604(%rax)	#, img.150_163->FieldFrame
	jmp	.L57	#
.L68:
	.loc 1 443 0
	movq	img(%rip), %rax	# img, img.151
	movl	$0, 72604(%rax)	#, img.151_164->FieldFrame
	jmp	.L57	#
.L67:
	.loc 1 447 0
	movq	img(%rip), %rax	# img, img.152
	movl	$0, 71800(%rax)	#, img.152_165->fld_flag
.L57:
	.loc 1 450 0
	movq	img(%rip), %rax	# img, img.153
	movl	71800(%rax), %eax	# img.153_166->fld_flag, D.12990
	testl	%eax, %eax	# D.12990
	je	.L70	#,
	.loc 1 451 0
	movq	stats(%rip), %rax	# stats, stats.154
	movq	stats(%rip), %rdx	# stats, stats.155
	movl	28(%rdx), %ecx	# stats.155_169->bit_ctr_emulationprevention, D.12987
	movq	stats(%rip), %rdx	# stats, stats.156
	movl	1472(%rdx), %edx	# stats.156_171->em_prev_bits_fld, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 28(%rax)	# D.12987, stats.154_168->bit_ctr_emulationprevention
	jmp	.L71	#
.L70:
	.loc 1 453 0
	movq	stats(%rip), %rax	# stats, stats.157
	movq	stats(%rip), %rdx	# stats, stats.158
	movl	28(%rdx), %ecx	# stats.158_175->bit_ctr_emulationprevention, D.12987
	movq	stats(%rip), %rdx	# stats, stats.159
	movl	1468(%rdx), %edx	# stats.159_177->em_prev_bits_frm, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 28(%rax)	# D.12987, stats.157_174->bit_ctr_emulationprevention
.L71:
	.loc 1 455 0
	movq	img(%rip), %rax	# img, img.160
	movl	24(%rax), %eax	# img.160_180->type, D.12987
	cmpl	$1, %eax	#, D.12987
	je	.L72	#,
	.loc 1 457 0
	movq	img(%rip), %rax	# img, img.161
	movq	img(%rip), %rdx	# img, img.162
	movl	71800(%rdx), %edx	# img.162_183->fld_flag, D.12990
	movl	%edx, 71872(%rax)	# D.12987, img.161_182->pstruct_next_P
.L72:
	.loc 1 463 0
	movq	img(%rip), %rax	# img, img.163
	movl	71800(%rax), %eax	# img.163_186->fld_flag, D.12990
	testl	%eax, %eax	# D.12990
	je	.L73	#,
	.loc 1 465 0
	movl	-80(%rbp), %ecx	# dis_fld_v, tmp412
	movl	-84(%rbp), %edx	# dis_fld_u, tmp413
	movl	-88(%rbp), %eax	# dis_fld_y, tmp414
	movl	-112(%rbp), %esi	# bits_fld, tmp415
	movl	%ecx, -132(%rbp)	# tmp412, %sfp
	movss	-132(%rbp), %xmm2	# %sfp,
	movl	%edx, -132(%rbp)	# tmp413, %sfp
	movss	-132(%rbp), %xmm1	# %sfp,
	movl	%eax, -132(%rbp)	# tmp414, %sfp
	movss	-132(%rbp), %xmm0	# %sfp,
	movl	%esi, %edi	# tmp415,
	call	field_mode_buffer	#
	.loc 1 466 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.164
	movq	%rax, %rdi	# top_pic.164,
	call	writeout_picture	#
	.loc 1 467 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.165
	movq	%rax, %rdi	# bottom_pic.165,
	call	writeout_picture	#
	jmp	.L74	#
.L73:
	.loc 1 471 0
	movl	-96(%rbp), %ecx	# dis_frm_v, tmp416
	movl	-100(%rbp), %edx	# dis_frm_u, tmp417
	movl	-104(%rbp), %eax	# dis_frm_y, tmp418
	movl	-116(%rbp), %esi	# bits_frm, tmp419
	movl	%ecx, -132(%rbp)	# tmp416, %sfp
	movss	-132(%rbp), %xmm2	# %sfp,
	movl	%edx, -132(%rbp)	# tmp417, %sfp
	movss	-132(%rbp), %xmm1	# %sfp,
	movl	%eax, -132(%rbp)	# tmp418, %sfp
	movss	-132(%rbp), %xmm0	# %sfp,
	movl	%esi, %edi	# tmp419,
	call	frame_mode_buffer	#
	.loc 1 473 0
	movq	input(%rip), %rax	# input, input.166
	movl	1296(%rax), %eax	# input.166_190->RDPictureDecision, D.12987
	testl	%eax, %eax	# D.12987
	je	.L75	#,
	.loc 1 473 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.167
	movl	71804(%rax), %eax	# img.167_192->rd_pass, D.12990
	cmpl	$2, %eax	#, D.12990
	jne	.L75	#,
	.loc 1 474 0 is_stmt 1
	movq	frame_pic3(%rip), %rax	# frame_pic3, frame_pic3.168
	movq	%rax, %rdi	# frame_pic3.168,
	call	writeout_picture	#
	jmp	.L74	#
.L75:
	.loc 1 475 0
	movq	input(%rip), %rax	# input, input.169
	movl	1296(%rax), %eax	# input.169_195->RDPictureDecision, D.12987
	testl	%eax, %eax	# D.12987
	je	.L76	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.170
	movl	71804(%rax), %eax	# img.170_197->rd_pass, D.12990
	cmpl	$1, %eax	#, D.12990
	jne	.L76	#,
	.loc 1 476 0 is_stmt 1
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.171
	movq	%rax, %rdi	# frame_pic2.171,
	call	writeout_picture	#
	jmp	.L74	#
.L76:
	.loc 1 478 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.172
	movq	%rax, %rdi	# frame_pic.172,
	call	writeout_picture	#
.L74:
	.loc 1 481 0
	movq	frame_pic3(%rip), %rax	# frame_pic3, frame_pic3.173
	testq	%rax, %rax	# frame_pic3.173
	je	.L77	#,
	.loc 1 482 0
	movq	frame_pic3(%rip), %rax	# frame_pic3, frame_pic3.174
	movq	%rax, %rdi	# frame_pic3.174,
	call	free_slice_list	#
.L77:
	.loc 1 483 0
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.175
	testq	%rax, %rax	# frame_pic2.175
	je	.L78	#,
	.loc 1 484 0
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.176
	movq	%rax, %rdi	# frame_pic2.176,
	call	free_slice_list	#
.L78:
	.loc 1 485 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.177
	testq	%rax, %rax	# frame_pic.177
	je	.L79	#,
	.loc 1 486 0
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.178
	movq	%rax, %rdi	# frame_pic.178,
	call	free_slice_list	#
.L79:
	.loc 1 487 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.179
	testq	%rax, %rax	# top_pic.179
	je	.L80	#,
	.loc 1 488 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.180
	movq	%rax, %rdi	# top_pic.180,
	call	free_slice_list	#
.L80:
	.loc 1 489 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.181
	testq	%rax, %rax	# bottom_pic.181
	je	.L81	#,
	.loc 1 490 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.182
	movq	%rax, %rdi	# bottom_pic.182,
	call	free_slice_list	#
.L81:
	.loc 1 502 0
	movq	input(%rip), %rax	# input, input.183
	movl	3236(%rax), %eax	# input.183_211->RCEnable, D.12987
	testl	%eax, %eax	# D.12987
	je	.L82	#,
	.loc 1 504 0
	movq	stats(%rip), %rax	# stats, stats.184
	movl	16(%rax), %edx	# stats.184_213->bit_ctr, D.12987
	movq	stats(%rip), %rax	# stats, stats.185
	movl	20(%rax), %eax	# stats.185_215->bit_ctr_n, D.12987
	subl	%eax, %edx	# D.12987, tmp420
	movl	%edx, %eax	# tmp420, tmp420
	movl	%eax, -120(%rbp)	# tmp420, bits
	.loc 1 505 0
	movl	-120(%rbp), %eax	# bits, tmp421
	movl	%eax, %edi	# tmp421,
	call	rc_update_pict_frame	#
.L82:
	.loc 1 520 0
	movl	$0, %eax	#,
	call	find_snr	#
	.loc 1 523 0
	movq	$0, -56(%rbp)	#, ltime2
	.loc 1 524 0
	movq	$0, -32(%rbp)	#, tstruct2.time
	.loc 1 525 0
	movw	$0, -24(%rbp)	#, tstruct2.millitm
	.loc 1 526 0
	movw	$0, -22(%rbp)	#, tstruct2.timezone
	.loc 1 527 0
	movw	$0, -20(%rbp)	#, tstruct2.dstflag
	.loc 1 537 0
	movq	-56(%rbp), %rax	# ltime2, tmp422
	imull	$1000, %eax, %edx	#, D.12991, D.12991
	movzwl	-24(%rbp), %eax	# tstruct2.millitm, D.12992
	movzwl	%ax, %eax	# D.12992, D.12991
	leal	(%rdx,%rax), %ecx	#, D.12991
	movq	-64(%rbp), %rax	# ltime1, tmp423
	imull	$-1000, %eax, %edx	#, D.12991, D.12991
	movzwl	-40(%rbp), %eax	# tstruct1.millitm, D.12992
	movzwl	%ax, %eax	# D.12992, D.12991
	subl	%eax, %edx	# D.12991, D.12991
	movl	%edx, %eax	# D.12991, D.12991
	addl	%ecx, %eax	# D.12991, D.12991
	movl	%eax, -68(%rbp)	# D.12991, tmp_time
	.loc 1 538 0
	movl	tot_time(%rip), %edx	# tot_time, tot_time.186
	movl	-68(%rbp), %eax	# tmp_time, tmp424
	addl	%edx, %eax	# tot_time.186, tot_time.187
	movl	%eax, tot_time(%rip)	# tot_time.187, tot_time
	.loc 1 540 0
	movq	input(%rip), %rax	# input, input.188
	movl	2880(%rax), %eax	# input.188_233->PicInterlace, D.12987
	cmpl	$2, %eax	#, D.12987
	jne	.L83	#,
	.loc 1 542 0
	movq	img(%rip), %rax	# img, img.189
	movl	71800(%rax), %eax	# img.189_235->fld_flag, D.12990
	testl	%eax, %eax	# D.12990
	je	.L84	#,
	.loc 1 545 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.190
	movq	%rax, %rdi	# enc_bottom_picture.190,
	call	store_picture_in_dpb	#
	.loc 1 546 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.191
	movq	%rax, %rdi	# enc_frame_picture.191,
	call	free_storable_picture	#
	jmp	.L86	#
.L84:
	.loc 1 551 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.192
	movq	%rax, %rdi	# enc_frame_picture.192,
	call	replace_top_pic_with_frame	#
	.loc 1 552 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.193
	movq	%rax, %rdi	# enc_bottom_picture.193,
	call	free_storable_picture	#
	jmp	.L86	#
.L83:
	.loc 1 557 0
	movq	img(%rip), %rax	# img, img.194
	movl	71800(%rax), %eax	# img.194_241->fld_flag, D.12990
	testl	%eax, %eax	# D.12990
	je	.L87	#,
	.loc 1 559 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.195
	movq	%rax, %rdi	# enc_bottom_picture.195,
	call	store_picture_in_dpb	#
	jmp	.L86	#
.L87:
	.loc 1 563 0
	movq	img(%rip), %rax	# img, img.196
	movl	71804(%rax), %eax	# img.196_244->rd_pass, D.12990
	cmpl	$2, %eax	#, D.12990
	jne	.L88	#,
	.loc 1 565 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.197
	movq	%rax, %rdi	# enc_frame_picture3.197,
	call	store_picture_in_dpb	#
	.loc 1 566 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.198
	movq	%rax, %rdi	# enc_frame_picture.198,
	call	free_storable_picture	#
	.loc 1 567 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.199
	movq	%rax, %rdi	# enc_frame_picture2.199,
	call	free_storable_picture	#
	jmp	.L86	#
.L88:
	.loc 1 569 0
	movq	img(%rip), %rax	# img, img.200
	movl	71804(%rax), %eax	# img.200_249->rd_pass, D.12990
	cmpl	$1, %eax	#, D.12990
	jne	.L89	#,
	.loc 1 571 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.201
	movq	%rax, %rdi	# enc_frame_picture2.201,
	call	store_picture_in_dpb	#
	.loc 1 572 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.202
	movq	%rax, %rdi	# enc_frame_picture.202,
	call	free_storable_picture	#
	.loc 1 573 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.203
	movq	%rax, %rdi	# enc_frame_picture3.203,
	call	free_storable_picture	#
	jmp	.L86	#
.L89:
	.loc 1 577 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.204
	movq	%rax, %rdi	# enc_frame_picture.204,
	call	store_picture_in_dpb	#
	.loc 1 578 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.205
	movq	%rax, %rdi	# enc_frame_picture2.205,
	call	free_storable_picture	#
	.loc 1 579 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.206
	movq	%rax, %rdi	# enc_frame_picture3.206,
	call	free_storable_picture	#
.L86:
	.loc 1 587 0
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.207
	movq	stats(%rip), %rdx	# stats, stats.208
	movl	16(%rdx), %ecx	# stats.208_258->bit_ctr, D.12987
	movq	stats(%rip), %rdx	# stats, stats.209
	movl	20(%rdx), %edx	# stats.209_260->bit_ctr_n, D.12987
	subl	%edx, %ecx	# D.12987, D.12987
	movl	%ecx, %edx	# D.12987, D.12987
	movslq	%edx, %rdx	# D.12987, D.12993
	movq	%rdx, Bit_Buffer(,%rax,8)	# D.12993, Bit_Buffer
	.loc 1 588 0
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.210
	addq	$1, %rax	#, total_frame_buffer.211
	movq	%rax, total_frame_buffer(%rip)	# total_frame_buffer.211, total_frame_buffer
	.loc 1 593 0
	movq	img(%rip), %rax	# img, img.212
	movl	72404(%rax), %eax	# img.212_266->pic_order_cnt_type, D.12990
	cmpl	$2, %eax	#, D.12990
	jne	.L90	#,
	.loc 1 595 0
	movq	img(%rip), %rax	# img, img.213
	movl	72496(%rax), %eax	# img.213_268->nal_reference_idc, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L91	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movl	consecutive_non_reference_pictures.6834(%rip), %eax	# consecutive_non_reference_pictures, consecutive_non_reference_pictures.214
	addl	$1, %eax	#, consecutive_non_reference_pictures.215
	movl	%eax, consecutive_non_reference_pictures.6834(%rip)	# consecutive_non_reference_pictures.215, consecutive_non_reference_pictures
	jmp	.L92	#
.L91:
	.loc 1 596 0 is_stmt 1
	movl	$0, consecutive_non_reference_pictures.6834(%rip)	#, consecutive_non_reference_pictures
.L92:
	.loc 1 598 0
	movl	frame_no(%rip), %edx	# frame_no, frame_no.216
	movl	prev_frame_no.6833(%rip), %eax	# prev_frame_no, prev_frame_no.217
	cmpl	%eax, %edx	# prev_frame_no.217, frame_no.216
	jl	.L93	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movl	consecutive_non_reference_pictures.6834(%rip), %eax	# consecutive_non_reference_pictures, consecutive_non_reference_pictures.218
	cmpl	$1, %eax	#, consecutive_non_reference_pictures.218
	jle	.L94	#,
.L93:
	.loc 1 599 0 is_stmt 1
	movl	$-1, %esi	#,
	movl	$.LC1, %edi	#,
	call	error	#
.L94:
	.loc 1 600 0
	movl	frame_no(%rip), %eax	# frame_no, frame_no.219
	movl	%eax, prev_frame_no.6833(%rip)	# frame_no.219, prev_frame_no
.L90:
	.loc 1 603 0
	movq	stats(%rip), %rax	# stats, stats.220
	movl	1492(%rax), %eax	# stats.220_276->bit_ctr_parametersets_n, D.12987
	testl	%eax, %eax	# D.12987
	je	.L95	#,
	.loc 1 604 0
	movl	me_time(%rip), %edx	# me_time, me_time.221
	movl	-68(%rbp), %eax	# tmp_time, tmp425
	movl	%edx, %esi	# me_time.221,
	movl	%eax, %edi	# tmp425,
	call	ReportNALNonVLCBits	#
.L95:
	.loc 1 606 0
	movq	img(%rip), %rax	# img, img.222
	movl	(%rax), %edx	# img.222_279->number, D.12987
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.223
	cmpl	%eax, %edx	# start_frame_no_in_this_IGOP.223, D.12987
	jne	.L96	#,
	.loc 1 607 0
	movl	me_time(%rip), %edx	# me_time, me_time.224
	movl	-68(%rbp), %eax	# tmp_time, tmp426
	movl	%edx, %esi	# me_time.224,
	movl	%eax, %edi	# tmp426,
	call	ReportFirstframe	#
	jmp	.L97	#
.L96:
	.loc 1 612 0
	movq	input(%rip), %rax	# input, input.225
	movl	3236(%rax), %eax	# input.225_283->RCEnable, D.12987
	testl	%eax, %eax	# D.12987
	je	.L98	#,
	.loc 1 614 0
	movq	input(%rip), %rax	# input, input.226
	movl	2880(%rax), %eax	# input.226_285->PicInterlace, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L99	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.227
	movl	2884(%rax), %eax	# input.227_287->MbInterlace, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L99	#,
	.loc 1 615 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.228
	movl	16(%rax), %edx	# stats.228_289->bit_ctr, D.12987
	movq	stats(%rip), %rax	# stats, stats.229
	movl	20(%rax), %eax	# stats.229_291->bit_ctr_n, D.12987
	subl	%eax, %edx	# D.12987, tmp427
	movl	%edx, %eax	# tmp427, tmp427
	movl	%eax, -120(%rbp)	# tmp427, bits
	jmp	.L98	#
.L99:
	.loc 1 618 0
	movq	stats(%rip), %rax	# stats, stats.230
	movl	16(%rax), %edx	# stats.230_294->bit_ctr, D.12987
	movl	Pprev_bits(%rip), %eax	# Pprev_bits, Pprev_bits.231
	subl	%eax, %edx	# Pprev_bits.231, tmp428
	movl	%edx, %eax	# tmp428, tmp428
	movl	%eax, -120(%rbp)	# tmp428, bits
	.loc 1 619 0
	movq	stats(%rip), %rax	# stats, stats.232
	movl	16(%rax), %eax	# stats.232_298->bit_ctr, Pprev_bits.233
	movl	%eax, Pprev_bits(%rip)	# Pprev_bits.233, Pprev_bits
.L98:
	.loc 1 623 0
	movq	img(%rip), %rax	# img, img.234
	movl	24(%rax), %eax	# img.234_300->type, D.12987
	cmpl	$2, %eax	#, D.12987
	je	.L101	#,
	cmpl	$3, %eax	#, D.12987
	je	.L102	#,
	cmpl	$1, %eax	#, D.12987
	je	.L103	#,
	jmp	.L111	#
.L101:
	.loc 1 626 0
	movq	stats(%rip), %rax	# stats, stats.235
	movq	stats(%rip), %rdx	# stats, stats.236
	movl	704(%rdx), %ecx	# stats.236_303->bit_ctr_I, D.12987
	movq	stats(%rip), %rdx	# stats, stats.237
	movl	16(%rdx), %esi	# stats.237_305->bit_ctr, D.12987
	movq	stats(%rip), %rdx	# stats, stats.238
	movl	20(%rdx), %edx	# stats.238_307->bit_ctr_n, D.12987
	subl	%edx, %esi	# D.12987, D.12987
	movl	%esi, %edx	# D.12987, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 704(%rax)	# D.12987, stats.235_302->bit_ctr_I
	.loc 1 627 0
	movl	me_time(%rip), %edx	# me_time, me_time.239
	movl	-68(%rbp), %eax	# tmp_time, tmp429
	movl	%edx, %esi	# me_time.239,
	movl	%eax, %edi	# tmp429,
	call	ReportIntra	#
	.loc 1 628 0
	jmp	.L97	#
.L102:
	.loc 1 630 0
	movq	stats(%rip), %rax	# stats, stats.240
	movq	stats(%rip), %rdx	# stats, stats.241
	movl	708(%rdx), %ecx	# stats.241_313->bit_ctr_P, D.12987
	movq	stats(%rip), %rdx	# stats, stats.242
	movl	16(%rdx), %esi	# stats.242_315->bit_ctr, D.12987
	movq	stats(%rip), %rdx	# stats, stats.243
	movl	20(%rdx), %edx	# stats.243_317->bit_ctr_n, D.12987
	subl	%edx, %esi	# D.12987, D.12987
	movl	%esi, %edx	# D.12987, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 708(%rax)	# D.12987, stats.240_312->bit_ctr_P
	.loc 1 631 0
	movl	me_time(%rip), %edx	# me_time, me_time.244
	movl	-68(%rbp), %eax	# tmp_time, tmp430
	movl	%edx, %esi	# me_time.244,
	movl	%eax, %edi	# tmp430,
	call	ReportSP	#
	.loc 1 632 0
	jmp	.L97	#
.L103:
	.loc 1 634 0
	movq	stats(%rip), %rax	# stats, stats.245
	movq	stats(%rip), %rdx	# stats, stats.246
	movl	712(%rdx), %ecx	# stats.246_323->bit_ctr_B, D.12987
	movq	stats(%rip), %rdx	# stats, stats.247
	movl	16(%rdx), %esi	# stats.247_325->bit_ctr, D.12987
	movq	stats(%rip), %rdx	# stats, stats.248
	movl	20(%rdx), %edx	# stats.248_327->bit_ctr_n, D.12987
	subl	%edx, %esi	# D.12987, D.12987
	movl	%esi, %edx	# D.12987, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 712(%rax)	# D.12987, stats.245_322->bit_ctr_B
	.loc 1 635 0
	movq	img(%rip), %rax	# img, img.249
	movl	72496(%rax), %eax	# img.249_331->nal_reference_idc, D.12987
	testl	%eax, %eax	# D.12987
	jle	.L104	#,
	.loc 1 636 0
	movl	me_time(%rip), %edx	# me_time, me_time.250
	movl	-68(%rbp), %eax	# tmp_time, tmp431
	movl	%edx, %esi	# me_time.250,
	movl	%eax, %edi	# tmp431,
	call	ReportRB	#
	.loc 1 640 0
	jmp	.L97	#
.L104:
	.loc 1 638 0
	movl	me_time(%rip), %edx	# me_time, me_time.251
	movl	-68(%rbp), %eax	# tmp_time, tmp432
	movl	%edx, %esi	# me_time.251,
	movl	%eax, %edi	# tmp432,
	call	ReportB	#
	.loc 1 640 0
	jmp	.L97	#
.L111:
	.loc 1 642 0
	movq	stats(%rip), %rax	# stats, stats.252
	movq	stats(%rip), %rdx	# stats, stats.253
	movl	708(%rdx), %ecx	# stats.253_336->bit_ctr_P, D.12987
	movq	stats(%rip), %rdx	# stats, stats.254
	movl	16(%rdx), %esi	# stats.254_338->bit_ctr, D.12987
	movq	stats(%rip), %rdx	# stats, stats.255
	movl	20(%rdx), %edx	# stats.255_340->bit_ctr_n, D.12987
	subl	%edx, %esi	# D.12987, D.12987
	movl	%esi, %edx	# D.12987, D.12987
	addl	%ecx, %edx	# D.12987, D.12987
	movl	%edx, 708(%rax)	# D.12987, stats.252_335->bit_ctr_P
	.loc 1 643 0
	movl	me_time(%rip), %edx	# me_time, me_time.256
	movl	-68(%rbp), %eax	# tmp_time, tmp433
	movl	%edx, %esi	# me_time.256,
	movl	%eax, %edi	# tmp433,
	call	ReportP	#
.L97:
	.loc 1 647 0
	movq	stats(%rip), %rax	# stats, stats.257
	movq	stats(%rip), %rdx	# stats, stats.258
	movl	16(%rdx), %edx	# stats.258_346->bit_ctr, D.12987
	movl	%edx, 20(%rax)	# D.12987, stats.257_345->bit_ctr_n
	.loc 1 650 0
	movq	input(%rip), %rax	# input, input.259
	movl	3236(%rax), %eax	# input.259_348->RCEnable, D.12987
	testl	%eax, %eax	# D.12987
	je	.L106	#,
	.loc 1 652 0
	movl	-120(%rbp), %eax	# bits, tmp434
	movl	%eax, %edi	# tmp434,
	call	rc_update_pict	#
	.loc 1 654 0
	movq	img(%rip), %rax	# img, img.260
	movl	24(%rax), %eax	# img.260_350->type, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L107	#,
	.loc 1 654 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.261
	movl	1148(%rax), %eax	# active_sps.261_352->frame_mbs_only_flag, D.12988
	testl	%eax, %eax	# D.12988
	je	.L107	#,
	.loc 1 655 0 is_stmt 1
	movl	$0, %eax	#,
	call	updateRCModel	#
	jmp	.L106	#
.L107:
	.loc 1 656 0
	movq	img(%rip), %rax	# img, img.262
	movl	24(%rax), %eax	# img.262_354->type, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L106	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.263
	movl	1148(%rax), %eax	# active_sps.263_356->frame_mbs_only_flag, D.12988
	testl	%eax, %eax	# D.12988
	jne	.L106	#,
	.loc 1 657 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.264
	movl	72612(%rax), %eax	# img.264_358->IFLAG, D.12987
	testl	%eax, %eax	# D.12987
	jne	.L106	#,
	.loc 1 658 0
	movl	$0, %eax	#,
	call	updateRCModel	#
.L106:
	.loc 1 661 0
	movq	stats(%rip), %rax	# stats, stats.265
	movl	$0, 1492(%rax)	#, stats.265_360->bit_ctr_parametersets_n
	.loc 1 663 0
	movq	img(%rip), %rax	# img, img.266
	movl	(%rax), %edx	# img.266_361->number, D.12987
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.267
	cmpl	%eax, %edx	# start_frame_no_in_this_IGOP.267, D.12987
	jne	.L108	#,
	.loc 1 664 0
	movl	$0, %eax	#, D.12987
	jmp	.L110	#
.L108:
	.loc 1 666 0
	movl	$1, %eax	#, D.12987
.L110:
	.loc 1 667 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	encode_one_frame, .-encode_one_frame
	.type	writeout_picture, @function
writeout_picture:
.LFB5:
	.loc 1 681 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pic, pic
	.loc 1 686 0
	movq	img(%rip), %rax	# img, img.268
	movq	-40(%rbp), %rdx	# pic, tmp73
	movq	%rdx, 14152(%rax)	# tmp73, img.268_3->currentPicture
	.loc 1 688 0
	movl	$0, -20(%rbp)	#, slice
	jmp	.L113	#
.L116:
	.loc 1 690 0
	movq	-40(%rbp), %rax	# pic, tmp74
	movl	-20(%rbp), %edx	# slice, tmp76
	movslq	%edx, %rdx	# tmp76, tmp75
	movq	8(%rax,%rdx,8), %rax	# pic_4(D)->slices, tmp77
	movq	%rax, -16(%rbp)	# tmp77, currSlice
	.loc 1 691 0
	movl	$0, -24(%rbp)	#, partition
	jmp	.L114	#
.L115:
	.loc 1 693 0 discriminator 2
	movq	-16(%rbp), %rax	# currSlice, tmp78
	movq	24(%rax), %rdx	# currSlice_7->partArr, D.12997
	movl	-24(%rbp), %eax	# partition, tmp79
	cltq
	salq	$3, %rax	#, tmp81
	movq	%rax, %rcx	# tmp80, tmp82
	salq	$4, %rcx	#, tmp82
	subq	%rax, %rcx	# tmp80, D.12998
	movq	%rcx, %rax	# D.12998, D.12998
	addq	%rdx, %rax	# D.12997, D.12997
	movq	(%rax), %rax	# _13->bitstream, tmp83
	movq	%rax, -8(%rbp)	# tmp83, currStream
	.loc 1 696 0 discriminator 2
	movq	-16(%rbp), %rax	# currSlice, tmp84
	movq	24(%rax), %rdx	# currSlice_7->partArr, D.12997
	movl	-24(%rbp), %eax	# partition, tmp85
	cltq
	salq	$3, %rax	#, tmp87
	movq	%rax, %rcx	# tmp86, tmp88
	salq	$4, %rcx	#, tmp88
	subq	%rax, %rcx	# tmp86, D.12998
	movq	%rcx, %rax	# D.12998, D.12998
	addq	%rdx, %rax	# D.12997, D.12997
	movq	(%rax), %rax	# _18->bitstream, D.12999
	movl	-24(%rbp), %edx	# partition, tmp89
	movl	%edx, %esi	# tmp89,
	movq	%rax, %rdi	# D.12999,
	call	writeUnit	#
	.loc 1 691 0 discriminator 2
	addl	$1, -24(%rbp)	#, partition
.L114:
	.loc 1 691 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# currSlice, tmp90
	movl	16(%rax), %eax	# currSlice_7->max_part_nr, D.12996
	cmpl	-24(%rbp), %eax	# partition, D.12996
	jg	.L115	#,
	.loc 1 688 0 is_stmt 1
	addl	$1, -20(%rbp)	#, slice
.L113:
	.loc 1 688 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# pic, tmp91
	movl	(%rax), %eax	# pic_4(D)->no_slices, D.12996
	cmpl	-20(%rbp), %eax	# slice, D.12996
	jg	.L116	#,
	.loc 1 700 0 is_stmt 1
	movl	$0, %eax	#, D.12996
	.loc 1 701 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	writeout_picture, .-writeout_picture
	.globl	copy_params
	.type	copy_params, @function
copy_params:
.LFB6:
	.loc 1 705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 706 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.269
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.270
	movl	1148(%rdx), %edx	# active_sps.270_2->frame_mbs_only_flag, D.13000
	movl	%edx, 6556(%rax)	# D.13001, enc_picture.269_1->frame_mbs_only_flag
	.loc 1 707 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.271
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.272
	movl	1160(%rdx), %edx	# active_sps.272_6->frame_cropping_flag, D.13000
	movl	%edx, 6560(%rax)	# D.13001, enc_picture.271_5->frame_cropping_flag
	.loc 1 708 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.273
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.274
	movl	32(%rdx), %edx	# active_sps.274_10->chroma_format_idc, D.13002
	movl	%edx, 6552(%rax)	# D.13001, enc_picture.273_9->chroma_format_idc
	.loc 1 710 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.275
	movl	1160(%rax), %eax	# active_sps.275_13->frame_cropping_flag, D.13000
	testl	%eax, %eax	# D.13000
	je	.L119	#,
	.loc 1 712 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.276
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.277
	movl	1164(%rdx), %edx	# active_sps.277_16->frame_cropping_rect_left_offset, D.13002
	movl	%edx, 6564(%rax)	# D.13001, enc_picture.276_15->frame_cropping_rect_left_offset
	.loc 1 713 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.278
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.279
	movl	1168(%rdx), %edx	# active_sps.279_20->frame_cropping_rect_right_offset, D.13002
	movl	%edx, 6568(%rax)	# D.13001, enc_picture.278_19->frame_cropping_rect_right_offset
	.loc 1 714 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.280
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.281
	movl	1172(%rdx), %edx	# active_sps.281_24->frame_cropping_rect_top_offset, D.13002
	movl	%edx, 6572(%rax)	# D.13001, enc_picture.280_23->frame_cropping_rect_top_offset
	.loc 1 715 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.282
	movq	active_sps(%rip), %rdx	# active_sps, active_sps.283
	movl	1176(%rdx), %edx	# active_sps.283_28->frame_cropping_rect_bottom_offset, D.13002
	movl	%edx, 6576(%rax)	# D.13001, enc_picture.282_27->frame_cropping_rect_bottom_offset
	jmp	.L118	#
.L119:
	.loc 1 719 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.284
	movl	$0, 6564(%rax)	#, enc_picture.284_31->frame_cropping_rect_left_offset
	.loc 1 720 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.285
	movl	$0, 6568(%rax)	#, enc_picture.285_32->frame_cropping_rect_right_offset
	.loc 1 721 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.286
	movl	$0, 6572(%rax)	#, enc_picture.286_33->frame_cropping_rect_top_offset
	.loc 1 722 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.287
	movl	$0, 6576(%rax)	#, enc_picture.287_34->frame_cropping_rect_bottom_offset
.L118:
	.loc 1 724 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	copy_params, .-copy_params
	.globl	frame_picture
	.type	frame_picture, @function
frame_picture:
.LFB7:
	.loc 1 733 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# frame, frame
	movl	%esi, -12(%rbp)	# rd_pass, rd_pass
	.loc 1 735 0
	movq	img(%rip), %rax	# img, img.288
	movl	$0, 28(%rax)	#, img.288_1->structure
	.loc 1 736 0
	movq	img(%rip), %rax	# img, img.289
	movq	img(%rip), %rdx	# img, img.290
	movl	72488(%rdx), %edx	# img.290_3->FrameSizeInMbs, D.13003
	movl	%edx, 72484(%rax)	# D.13003, img.289_2->PicSizeInMbs
	.loc 1 738 0
	cmpl	$2, -12(%rbp)	#, rd_pass
	jne	.L122	#,
	.loc 1 740 0
	movq	img(%rip), %rax	# img, img.291
	movl	64(%rax), %edi	# img.291_6->height_cr, D.13004
	movq	img(%rip), %rax	# img, img.292
	movl	56(%rax), %ecx	# img.292_8->width_cr, D.13004
	movq	img(%rip), %rax	# img, img.293
	movl	60(%rax), %edx	# img.293_10->height, D.13004
	movq	img(%rip), %rax	# img, img.294
	movl	52(%rax), %esi	# img.294_12->width, D.13004
	movq	img(%rip), %rax	# img, img.295
	movl	28(%rax), %eax	# img.295_14->structure, D.13004
	movl	%edi, %r8d	# D.13004,
	movl	%eax, %edi	# D.13005,
	call	alloc_storable_picture	#
	movq	%rax, enc_frame_picture3(%rip)	# enc_frame_picture3.296, enc_frame_picture3
	.loc 1 741 0
	movq	img(%rip), %rdx	# img, img.297
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.298
	movq	img(%rip), %rcx	# img, img.299
	movl	72456(%rcx), %ecx	# img.299_20->framepoc, D.13004
	movl	%ecx, 4(%rax)	# D.13004, enc_frame_picture3.298_19->poc
	movl	4(%rax), %eax	# enc_frame_picture3.298_19->poc, D.13004
	movl	%eax, 72460(%rdx)	# D.13004, img.297_18->ThisPOC
	.loc 1 742 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.300
	movq	img(%rip), %rdx	# img, img.301
	movl	72448(%rdx), %edx	# img.301_24->toppoc, D.13004
	movl	%edx, 8(%rax)	# D.13004, enc_frame_picture3.300_23->top_poc
	.loc 1 743 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.302
	movq	img(%rip), %rdx	# img, img.303
	movl	72452(%rdx), %edx	# img.303_27->bottompoc, D.13004
	movl	%edx, 12(%rax)	# D.13004, enc_frame_picture3.302_26->bottom_poc
	.loc 1 745 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.304
	movq	img(%rip), %rdx	# img, img.305
	movl	72456(%rdx), %edx	# img.305_30->framepoc, D.13004
	movl	%edx, 16(%rax)	# D.13004, enc_frame_picture3.304_29->frame_poc
	.loc 1 747 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.306
	movq	img(%rip), %rdx	# img, img.307
	movl	72464(%rdx), %edx	# img.307_33->frame_num, D.13003
	movl	%edx, 6364(%rax)	# D.13004, enc_frame_picture3.306_32->pic_num
	.loc 1 748 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.308
	movq	img(%rip), %rdx	# img, img.309
	movl	72464(%rdx), %edx	# img.309_37->frame_num, D.13003
	movl	%edx, 6360(%rax)	# D.13003, enc_frame_picture3.308_36->frame_num
	.loc 1 749 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.310
	movl	$1, 6412(%rax)	#, enc_frame_picture3.310_39->coded_frame
	.loc 1 751 0
	movq	enc_frame_picture3(%rip), %rdx	# enc_frame_picture3, enc_frame_picture3.311
	movq	img(%rip), %rax	# img, img.312
	movq	input(%rip), %rcx	# input, input.313
	movl	2884(%rcx), %ecx	# input.313_42->MbInterlace, D.13004
	testl	%ecx, %ecx	# D.13004
	setne	%cl	#, D.13006
	movzbl	%cl, %ecx	# D.13006, D.13004
	movl	%ecx, 72400(%rax)	# D.13004, img.312_41->MbaffFrameFlag
	movl	72400(%rax), %eax	# img.312_41->MbaffFrameFlag, D.13004
	movl	%eax, 6416(%rdx)	# D.13004, enc_frame_picture3.311_40->MbaffFrameFlag
	.loc 1 753 0
	movq	enc_frame_picture3(%rip), %rax	# enc_frame_picture3, enc_frame_picture3.314
	movq	%rax, enc_picture(%rip)	# enc_frame_picture3.314, enc_picture
	.loc 1 754 0
	movl	$0, %eax	#,
	call	copy_params	#
	jmp	.L123	#
.L122:
	.loc 1 756 0
	cmpl	$1, -12(%rbp)	#, rd_pass
	jne	.L124	#,
	.loc 1 758 0
	movq	img(%rip), %rax	# img, img.315
	movl	64(%rax), %edi	# img.315_48->height_cr, D.13004
	movq	img(%rip), %rax	# img, img.316
	movl	56(%rax), %ecx	# img.316_50->width_cr, D.13004
	movq	img(%rip), %rax	# img, img.317
	movl	60(%rax), %edx	# img.317_52->height, D.13004
	movq	img(%rip), %rax	# img, img.318
	movl	52(%rax), %esi	# img.318_54->width, D.13004
	movq	img(%rip), %rax	# img, img.319
	movl	28(%rax), %eax	# img.319_56->structure, D.13004
	movl	%edi, %r8d	# D.13004,
	movl	%eax, %edi	# D.13005,
	call	alloc_storable_picture	#
	movq	%rax, enc_frame_picture2(%rip)	# enc_frame_picture2.320, enc_frame_picture2
	.loc 1 759 0
	movq	img(%rip), %rdx	# img, img.321
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.322
	movq	img(%rip), %rcx	# img, img.323
	movl	72456(%rcx), %ecx	# img.323_62->framepoc, D.13004
	movl	%ecx, 4(%rax)	# D.13004, enc_frame_picture2.322_61->poc
	movl	4(%rax), %eax	# enc_frame_picture2.322_61->poc, D.13004
	movl	%eax, 72460(%rdx)	# D.13004, img.321_60->ThisPOC
	.loc 1 760 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.324
	movq	img(%rip), %rdx	# img, img.325
	movl	72448(%rdx), %edx	# img.325_66->toppoc, D.13004
	movl	%edx, 8(%rax)	# D.13004, enc_frame_picture2.324_65->top_poc
	.loc 1 761 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.326
	movq	img(%rip), %rdx	# img, img.327
	movl	72452(%rdx), %edx	# img.327_69->bottompoc, D.13004
	movl	%edx, 12(%rax)	# D.13004, enc_frame_picture2.326_68->bottom_poc
	.loc 1 763 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.328
	movq	img(%rip), %rdx	# img, img.329
	movl	72456(%rdx), %edx	# img.329_72->framepoc, D.13004
	movl	%edx, 16(%rax)	# D.13004, enc_frame_picture2.328_71->frame_poc
	.loc 1 765 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.330
	movq	img(%rip), %rdx	# img, img.331
	movl	72464(%rdx), %edx	# img.331_75->frame_num, D.13003
	movl	%edx, 6364(%rax)	# D.13004, enc_frame_picture2.330_74->pic_num
	.loc 1 766 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.332
	movq	img(%rip), %rdx	# img, img.333
	movl	72464(%rdx), %edx	# img.333_79->frame_num, D.13003
	movl	%edx, 6360(%rax)	# D.13003, enc_frame_picture2.332_78->frame_num
	.loc 1 767 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.334
	movl	$1, 6412(%rax)	#, enc_frame_picture2.334_81->coded_frame
	.loc 1 769 0
	movq	enc_frame_picture2(%rip), %rdx	# enc_frame_picture2, enc_frame_picture2.335
	movq	img(%rip), %rax	# img, img.336
	movq	input(%rip), %rcx	# input, input.337
	movl	2884(%rcx), %ecx	# input.337_84->MbInterlace, D.13004
	testl	%ecx, %ecx	# D.13004
	setne	%cl	#, D.13006
	movzbl	%cl, %ecx	# D.13006, D.13004
	movl	%ecx, 72400(%rax)	# D.13004, img.336_83->MbaffFrameFlag
	movl	72400(%rax), %eax	# img.336_83->MbaffFrameFlag, D.13004
	movl	%eax, 6416(%rdx)	# D.13004, enc_frame_picture2.335_82->MbaffFrameFlag
	.loc 1 771 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.338
	movq	%rax, enc_picture(%rip)	# enc_frame_picture2.338, enc_picture
	.loc 1 772 0
	movl	$0, %eax	#,
	call	copy_params	#
	jmp	.L123	#
.L124:
	.loc 1 776 0
	movq	img(%rip), %rax	# img, img.339
	movl	64(%rax), %edi	# img.339_90->height_cr, D.13004
	movq	img(%rip), %rax	# img, img.340
	movl	56(%rax), %ecx	# img.340_92->width_cr, D.13004
	movq	img(%rip), %rax	# img, img.341
	movl	60(%rax), %edx	# img.341_94->height, D.13004
	movq	img(%rip), %rax	# img, img.342
	movl	52(%rax), %esi	# img.342_96->width, D.13004
	movq	img(%rip), %rax	# img, img.343
	movl	28(%rax), %eax	# img.343_98->structure, D.13004
	movl	%edi, %r8d	# D.13004,
	movl	%eax, %edi	# D.13005,
	call	alloc_storable_picture	#
	movq	%rax, enc_frame_picture(%rip)	# enc_frame_picture.344, enc_frame_picture
	.loc 1 777 0
	movq	img(%rip), %rdx	# img, img.345
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.346
	movq	img(%rip), %rcx	# img, img.347
	movl	72456(%rcx), %ecx	# img.347_104->framepoc, D.13004
	movl	%ecx, 4(%rax)	# D.13004, enc_frame_picture.346_103->poc
	movl	4(%rax), %eax	# enc_frame_picture.346_103->poc, D.13004
	movl	%eax, 72460(%rdx)	# D.13004, img.345_102->ThisPOC
	.loc 1 778 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.348
	movq	img(%rip), %rdx	# img, img.349
	movl	72448(%rdx), %edx	# img.349_108->toppoc, D.13004
	movl	%edx, 8(%rax)	# D.13004, enc_frame_picture.348_107->top_poc
	.loc 1 779 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.350
	movq	img(%rip), %rdx	# img, img.351
	movl	72452(%rdx), %edx	# img.351_111->bottompoc, D.13004
	movl	%edx, 12(%rax)	# D.13004, enc_frame_picture.350_110->bottom_poc
	.loc 1 781 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.352
	movq	img(%rip), %rdx	# img, img.353
	movl	72456(%rdx), %edx	# img.353_114->framepoc, D.13004
	movl	%edx, 16(%rax)	# D.13004, enc_frame_picture.352_113->frame_poc
	.loc 1 783 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.354
	movq	img(%rip), %rdx	# img, img.355
	movl	72464(%rdx), %edx	# img.355_117->frame_num, D.13003
	movl	%edx, 6364(%rax)	# D.13004, enc_frame_picture.354_116->pic_num
	.loc 1 784 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.356
	movq	img(%rip), %rdx	# img, img.357
	movl	72464(%rdx), %edx	# img.357_121->frame_num, D.13003
	movl	%edx, 6360(%rax)	# D.13003, enc_frame_picture.356_120->frame_num
	.loc 1 785 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.358
	movl	$1, 6412(%rax)	#, enc_frame_picture.358_123->coded_frame
	.loc 1 787 0
	movq	enc_frame_picture(%rip), %rdx	# enc_frame_picture, enc_frame_picture.359
	movq	img(%rip), %rax	# img, img.360
	movq	input(%rip), %rcx	# input, input.361
	movl	2884(%rcx), %ecx	# input.361_126->MbInterlace, D.13004
	testl	%ecx, %ecx	# D.13004
	setne	%cl	#, D.13006
	movzbl	%cl, %ecx	# D.13006, D.13004
	movl	%ecx, 72400(%rax)	# D.13004, img.360_125->MbaffFrameFlag
	movl	72400(%rax), %eax	# img.360_125->MbaffFrameFlag, D.13004
	movl	%eax, 6416(%rdx)	# D.13004, enc_frame_picture.359_124->MbaffFrameFlag
	.loc 1 789 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.362
	movq	%rax, enc_picture(%rip)	# enc_frame_picture.362, enc_picture
	.loc 1 790 0
	movl	$0, %eax	#,
	call	copy_params	#
.L123:
	.loc 1 794 0
	movq	stats(%rip), %rax	# stats, stats.363
	movl	$0, 1468(%rax)	#, stats.363_132->em_prev_bits_frm
	.loc 1 795 0
	movq	stats(%rip), %rax	# stats, stats.364
	movq	stats(%rip), %rdx	# stats, stats.365
	addq	$1468, %rdx	#, D.13007
	movq	%rdx, 1480(%rax)	# D.13007, stats.364_133->em_prev_bits
	.loc 1 797 0
	movq	img(%rip), %rax	# img, img.366
	movl	$0, 71800(%rax)	#, img.366_136->fld_flag
	.loc 1 798 0
	movq	-8(%rbp), %rax	# frame, tmp210
	movq	%rax, %rdi	# tmp210,
	call	code_a_picture	#
	.loc 1 800 0
	movq	img(%rip), %rax	# img, img.367
	movq	14160(%rax), %rax	# img.367_138->currentSlice, D.13008
	movq	24(%rax), %rax	# _139->partArr, D.13009
	movq	(%rax), %rax	# _140->bitstream, D.13010
	movl	(%rax), %eax	# _141->byte_pos, D.13004
	leal	0(,%rax,8), %edx	#, D.13004
	movq	-8(%rbp), %rax	# frame, tmp211
	movl	%edx, 808(%rax)	# D.13004, frame_137(D)->bits_per_picture
	.loc 1 802 0
	movq	img(%rip), %rax	# img, img.368
	movl	28(%rax), %eax	# img.368_144->structure, D.13004
	testl	%eax, %eax	# D.13004
	jne	.L121	#,
	.loc 1 804 0
	movq	img(%rip), %rdx	# img, img.369
	movq	snr(%rip), %rax	# snr, snr.370
	movq	%rdx, %rsi	# img.369,
	movq	%rax, %rdi	# snr.370,
	movl	$0, %eax	#,
	call	find_distortion	#
	.loc 1 805 0
	movq	snr(%rip), %rax	# snr, snr.371
	movl	(%rax), %eax	# snr.371_148->snr_y, D.13011
	movq	-8(%rbp), %rdx	# frame, tmp212
	movl	%eax, 812(%rdx)	# D.13011, frame_137(D)->distortion_y
	.loc 1 806 0
	movq	snr(%rip), %rax	# snr, snr.372
	movl	4(%rax), %eax	# snr.372_150->snr_u, D.13011
	movq	-8(%rbp), %rdx	# frame, tmp213
	movl	%eax, 816(%rdx)	# D.13011, frame_137(D)->distortion_u
	.loc 1 807 0
	movq	snr(%rip), %rax	# snr, snr.373
	movl	8(%rax), %eax	# snr.373_152->snr_v, D.13011
	movq	-8(%rbp), %rdx	# frame, tmp214
	movl	%eax, 820(%rdx)	# D.13011, frame_137(D)->distortion_v
.L121:
	.loc 1 809 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	frame_picture, .-frame_picture
	.globl	field_picture
	.type	field_picture, @function
field_picture:
.LFB8:
	.loc 1 819 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# top, top
	movq	%rsi, -48(%rbp)	# bottom, bottom
	.loc 1 825 0
	movq	img(%rip), %rax	# img, img.374
	movl	24(%rax), %eax	# img.374_1->type, tmp211
	movl	%eax, -24(%rbp)	# tmp211, old_pic_type
	.loc 1 827 0
	movq	stats(%rip), %rax	# stats, stats.375
	movl	$0, 1472(%rax)	#, stats.375_3->em_prev_bits_fld
	.loc 1 828 0
	movq	stats(%rip), %rax	# stats, stats.376
	movq	stats(%rip), %rdx	# stats, stats.377
	addq	$1472, %rdx	#, D.13012
	movq	%rdx, 1480(%rax)	# D.13012, stats.376_4->em_prev_bits
	.loc 1 829 0
	movq	img(%rip), %rax	# img, img.378
	movq	img(%rip), %rdx	# img, img.379
	movl	(%rdx), %edx	# img.379_8->number, D.13013
	addl	%edx, %edx	# D.13013
	movl	%edx, (%rax)	# D.13013, img.378_7->number
	.loc 1 830 0
	movq	img(%rip), %rax	# img, img.380
	movq	img(%rip), %rdx	# img, img.381
	movl	72376(%rdx), %edx	# img.381_12->buf_cycle, D.13013
	addl	%edx, %edx	# D.13013
	movl	%edx, 72376(%rax)	# D.13013, img.380_11->buf_cycle
	.loc 1 831 0
	movq	img(%rip), %rdx	# img, img.382
	movq	input(%rip), %rax	# input, input.383
	movl	68(%rax), %ecx	# input.383_16->img_height, D.13013
	movq	img(%rip), %rax	# img, img.384
	movl	72732(%rax), %eax	# img.384_18->auto_crop_bottom, D.13013
	addl	%ecx, %eax	# D.13013, D.13013
	movl	%eax, %ecx	# D.13013, tmp212
	shrl	$31, %ecx	#, tmp212
	addl	%ecx, %eax	# tmp212, tmp213
	sarl	%eax	# tmp214
	movl	%eax, 60(%rdx)	# D.13013, img.382_15->height
	.loc 1 832 0
	movq	img(%rip), %rdx	# img, img.385
	movq	img(%rip), %rax	# img, img.386
	movl	68(%rax), %eax	# img.386_23->height_cr_frame, D.13013
	movl	%eax, %ecx	# D.13013, tmp215
	shrl	$31, %ecx	#, tmp215
	addl	%ecx, %eax	# tmp215, tmp216
	sarl	%eax	# tmp217
	movl	%eax, 64(%rdx)	# D.13013, img.385_22->height_cr
	.loc 1 833 0
	movq	img(%rip), %rax	# img, img.387
	movl	$1, 71800(%rax)	#, img.387_26->fld_flag
	.loc 1 834 0
	movq	img(%rip), %rax	# img, img.388
	movq	img(%rip), %rdx	# img, img.389
	movl	72488(%rdx), %edx	# img.389_28->FrameSizeInMbs, D.13014
	shrl	%edx	# D.13014
	movl	%edx, 72484(%rax)	# D.13014, img.388_27->PicSizeInMbs
	.loc 1 838 0
	movq	img(%rip), %rax	# img, img.390
	movl	64(%rax), %edi	# img.390_31->height_cr, D.13013
	movq	img(%rip), %rax	# img, img.391
	movl	56(%rax), %ecx	# img.391_33->width_cr, D.13013
	movq	img(%rip), %rax	# img, img.392
	movl	60(%rax), %edx	# img.392_35->height, D.13013
	movq	img(%rip), %rax	# img, img.393
	movl	52(%rax), %esi	# img.393_37->width, D.13013
	movq	img(%rip), %rax	# img, img.394
	movl	28(%rax), %eax	# img.394_39->structure, D.13013
	movl	%edi, %r8d	# D.13013,
	movl	%eax, %edi	# D.13015,
	call	alloc_storable_picture	#
	movq	%rax, enc_top_picture(%rip)	# enc_top_picture.395, enc_top_picture
	.loc 1 839 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.396
	movq	img(%rip), %rdx	# img, img.397
	movl	72448(%rdx), %edx	# img.397_44->toppoc, D.13013
	movl	%edx, 4(%rax)	# D.13013, enc_top_picture.396_43->poc
	.loc 1 840 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.398
	movq	img(%rip), %rdx	# img, img.399
	movl	72448(%rdx), %edx	# img.399_47->toppoc, D.13013
	movl	%edx, 16(%rax)	# D.13013, enc_top_picture.398_46->frame_poc
	.loc 1 841 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.400
	movq	img(%rip), %rdx	# img, img.401
	movl	72464(%rdx), %edx	# img.401_50->frame_num, D.13014
	movl	%edx, 6364(%rax)	# D.13013, enc_top_picture.400_49->pic_num
	.loc 1 842 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.402
	movq	img(%rip), %rdx	# img, img.403
	movl	72464(%rdx), %edx	# img.403_54->frame_num, D.13014
	movl	%edx, 6360(%rax)	# D.13014, enc_top_picture.402_53->frame_num
	.loc 1 843 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.404
	movl	$0, 6412(%rax)	#, enc_top_picture.404_56->coded_frame
	.loc 1 844 0
	movq	enc_top_picture(%rip), %rdx	# enc_top_picture, enc_top_picture.405
	movq	img(%rip), %rax	# img, img.406
	movl	$0, 72400(%rax)	#, img.406_58->MbaffFrameFlag
	movl	72400(%rax), %eax	# img.406_58->MbaffFrameFlag, D.13013
	movl	%eax, 6416(%rdx)	# D.13013, enc_top_picture.405_57->MbaffFrameFlag
	.loc 1 845 0
	movq	img(%rip), %rax	# img, img.407
	movq	img(%rip), %rdx	# img, img.408
	movl	72448(%rdx), %edx	# img.408_61->toppoc, D.13013
	movl	%edx, 72460(%rax)	# D.13013, img.407_60->ThisPOC
	.loc 1 847 0
	movq	img(%rip), %rax	# img, img.409
	movl	$1, 28(%rax)	#, img.409_63->structure
	.loc 1 848 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.410
	movq	%rax, enc_picture(%rip)	# enc_top_picture.410, enc_picture
	.loc 1 849 0
	movl	$0, %eax	#,
	call	copy_params	#
	.loc 1 851 0
	movl	$0, %eax	#,
	call	put_buffer_top	#
	.loc 1 852 0
	movl	$0, %eax	#,
	call	init_field	#
	.loc 1 853 0
	movq	img(%rip), %rax	# img, img.411
	movl	24(%rax), %eax	# img.411_65->type, D.13013
	cmpl	$1, %eax	#, D.13013
	jne	.L127	#,
	.loc 1 854 0
	movl	nextP_tr_fld(%rip), %eax	# nextP_tr_fld, nextP_tr_fld.412
	subl	$1, %eax	#, nextP_tr_fld.413
	movl	%eax, nextP_tr_fld(%rip)	# nextP_tr_fld.413, nextP_tr_fld
.L127:
	.loc 1 857 0
	movq	img(%rip), %rax	# img, img.414
	movl	$1, 71800(%rax)	#, img.414_69->fld_flag
	.loc 1 861 0
	movq	input(%rip), %rax	# input, input.415
	movl	3236(%rax), %eax	# input.415_70->RCEnable, D.13013
	testl	%eax, %eax	# D.13013
	je	.L128	#,
	.loc 1 863 0
	movq	img(%rip), %rax	# img, img.416
	movq	input(%rip), %rdx	# input, input.417
	movl	3248(%rdx), %edx	# input.417_73->basicunit, D.13013
	movl	%edx, 72620(%rax)	# D.13013, img.416_72->BasicUnit
	.loc 1 865 0
	movq	input(%rip), %rax	# input, input.418
	movl	2880(%rax), %eax	# input.418_75->PicInterlace, D.13013
	cmpl	$1, %eax	#, D.13013
	jne	.L129	#,
	.loc 1 866 0
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	rc_init_pict	#
	jmp	.L130	#
.L129:
	.loc 1 868 0
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movl	$0, %edi	#,
	call	rc_init_pict	#
.L130:
	.loc 1 870 0
	movq	img(%rip), %rbx	# img, img.419
	movl	$1, %edi	#,
	call	updateQuantizationParameter	#
	movl	%eax, 40(%rbx)	# D.13013, img.419_77->qp
.L128:
	.loc 1 872 0
	movq	img(%rip), %rax	# img, img.420
	movl	$1, 72596(%rax)	#, img.420_79->TopFieldFlag
	.loc 1 874 0
	movq	top_pic(%rip), %rax	# top_pic, top_pic.421
	movq	%rax, %rdi	# top_pic.421,
	call	code_a_picture	#
	.loc 1 875 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.422
	movl	$1, (%rax)	#, enc_picture.422_81->structure
	.loc 1 877 0
	movq	enc_top_picture(%rip), %rax	# enc_top_picture, enc_top_picture.423
	movq	%rax, %rdi	# enc_top_picture.423,
	call	store_picture_in_dpb	#
	.loc 1 879 0
	movq	img(%rip), %rax	# img, img.424
	movq	14160(%rax), %rax	# img.424_83->currentSlice, D.13016
	movq	24(%rax), %rax	# _84->partArr, D.13017
	movq	(%rax), %rax	# _85->bitstream, D.13018
	movl	(%rax), %eax	# _86->byte_pos, D.13013
	leal	0(,%rax,8), %edx	#, D.13013
	movq	-40(%rbp), %rax	# top, tmp218
	movl	%edx, 808(%rax)	# D.13013, top_89(D)->bits_per_picture
	.loc 1 882 0
	movq	-40(%rbp), %rax	# top, tmp219
	movl	808(%rax), %eax	# top_89(D)->bits_per_picture, tmp220
	movl	%eax, -20(%rbp)	# tmp220, TopFieldBits
	.loc 1 886 0
	movq	img(%rip), %rax	# img, img.425
	movl	64(%rax), %edi	# img.425_91->height_cr, D.13013
	movq	img(%rip), %rax	# img, img.426
	movl	56(%rax), %ecx	# img.426_93->width_cr, D.13013
	movq	img(%rip), %rax	# img, img.427
	movl	60(%rax), %edx	# img.427_95->height, D.13013
	movq	img(%rip), %rax	# img, img.428
	movl	52(%rax), %esi	# img.428_97->width, D.13013
	movq	img(%rip), %rax	# img, img.429
	movl	28(%rax), %eax	# img.429_99->structure, D.13013
	movl	%edi, %r8d	# D.13013,
	movl	%eax, %edi	# D.13015,
	call	alloc_storable_picture	#
	movq	%rax, enc_bottom_picture(%rip)	# enc_bottom_picture.430, enc_bottom_picture
	.loc 1 887 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.431
	movq	img(%rip), %rdx	# img, img.432
	movl	72452(%rdx), %edx	# img.432_104->bottompoc, D.13013
	movl	%edx, 4(%rax)	# D.13013, enc_bottom_picture.431_103->poc
	.loc 1 888 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.433
	movq	img(%rip), %rdx	# img, img.434
	movl	72452(%rdx), %edx	# img.434_107->bottompoc, D.13013
	movl	%edx, 16(%rax)	# D.13013, enc_bottom_picture.433_106->frame_poc
	.loc 1 889 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.435
	movq	img(%rip), %rdx	# img, img.436
	movl	72464(%rdx), %edx	# img.436_110->frame_num, D.13014
	movl	%edx, 6364(%rax)	# D.13013, enc_bottom_picture.435_109->pic_num
	.loc 1 890 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.437
	movq	img(%rip), %rdx	# img, img.438
	movl	72464(%rdx), %edx	# img.438_114->frame_num, D.13014
	movl	%edx, 6360(%rax)	# D.13014, enc_bottom_picture.437_113->frame_num
	.loc 1 891 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.439
	movl	$0, 6412(%rax)	#, enc_bottom_picture.439_116->coded_frame
	.loc 1 892 0
	movq	enc_bottom_picture(%rip), %rdx	# enc_bottom_picture, enc_bottom_picture.440
	movq	img(%rip), %rax	# img, img.441
	movl	$0, 72400(%rax)	#, img.441_118->MbaffFrameFlag
	movl	72400(%rax), %eax	# img.441_118->MbaffFrameFlag, D.13013
	movl	%eax, 6416(%rdx)	# D.13013, enc_bottom_picture.440_117->MbaffFrameFlag
	.loc 1 893 0
	movq	img(%rip), %rax	# img, img.442
	movq	img(%rip), %rdx	# img, img.443
	movl	72452(%rdx), %edx	# img.443_121->bottompoc, D.13013
	movl	%edx, 72460(%rax)	# D.13013, img.442_120->ThisPOC
	.loc 1 894 0
	movq	img(%rip), %rax	# img, img.444
	movl	$2, 28(%rax)	#, img.444_123->structure
	.loc 1 895 0
	movq	enc_bottom_picture(%rip), %rax	# enc_bottom_picture, enc_bottom_picture.445
	movq	%rax, enc_picture(%rip)	# enc_bottom_picture.445, enc_picture
	.loc 1 896 0
	movl	$0, %eax	#,
	call	copy_params	#
	.loc 1 897 0
	movl	$0, %eax	#,
	call	put_buffer_bot	#
	.loc 1 898 0
	movq	img(%rip), %rax	# img, img.446
	movl	(%rax), %edx	# img.446_125->number, D.13013
	addl	$1, %edx	#, D.13013
	movl	%edx, (%rax)	# D.13013, img.446_125->number
	.loc 1 900 0
	movl	$0, %eax	#,
	call	init_field	#
	.loc 1 902 0
	movq	img(%rip), %rax	# img, img.447
	movl	24(%rax), %eax	# img.447_128->type, D.13013
	cmpl	$1, %eax	#, D.13013
	jne	.L131	#,
	.loc 1 903 0
	movl	nextP_tr_fld(%rip), %eax	# nextP_tr_fld, nextP_tr_fld.448
	addl	$1, %eax	#, nextP_tr_fld.449
	movl	%eax, nextP_tr_fld(%rip)	# nextP_tr_fld.449, nextP_tr_fld
.L131:
	.loc 1 905 0
	movq	img(%rip), %rax	# img, img.450
	movl	24(%rax), %eax	# img.450_132->type, D.13013
	cmpl	$2, %eax	#, D.13013
	jne	.L132	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.451
	movl	2888(%rax), %eax	# input.451_134->IntraBottom, D.13013
	cmpl	$1, %eax	#, D.13013
	je	.L132	#,
	.loc 1 906 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.452
	movl	$0, 24(%rax)	#, img.452_136->type
.L132:
	.loc 1 908 0
	movq	img(%rip), %rax	# img, img.453
	movl	$1, 71800(%rax)	#, img.453_137->fld_flag
	.loc 1 912 0
	movq	input(%rip), %rax	# input, input.454
	movl	3236(%rax), %eax	# input.454_138->RCEnable, D.13013
	testl	%eax, %eax	# D.13013
	je	.L133	#,
	.loc 1 912 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# TopFieldBits, tmp221
	movl	%eax, %edi	# tmp221,
	call	setbitscount	#
.L133:
	.loc 1 913 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.455
	movl	3236(%rax), %eax	# input.455_140->RCEnable, D.13013
	testl	%eax, %eax	# D.13013
	je	.L134	#,
	.loc 1 915 0
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	rc_init_pict	#
	.loc 1 916 0
	movq	img(%rip), %rbx	# img, img.456
	movl	$0, %edi	#,
	call	updateQuantizationParameter	#
	movl	%eax, 40(%rbx)	# D.13013, img.456_142->qp
.L134:
	.loc 1 918 0
	movq	img(%rip), %rax	# img, img.457
	movl	$0, 72596(%rax)	#, img.457_144->TopFieldFlag
	.loc 1 920 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.458
	movl	$2, (%rax)	#, enc_picture.458_145->structure
	.loc 1 921 0
	movq	bottom_pic(%rip), %rax	# bottom_pic, bottom_pic.459
	movq	%rax, %rdi	# bottom_pic.459,
	call	code_a_picture	#
	.loc 1 923 0
	movq	img(%rip), %rax	# img, img.460
	movq	14160(%rax), %rax	# img.460_147->currentSlice, D.13016
	movq	24(%rax), %rax	# _148->partArr, D.13017
	movq	(%rax), %rax	# _149->bitstream, D.13018
	movl	(%rax), %eax	# _150->byte_pos, D.13013
	leal	0(,%rax,8), %edx	#, D.13013
	movq	-48(%rbp), %rax	# bottom, tmp222
	movl	%edx, 808(%rax)	# D.13013, bottom_153(D)->bits_per_picture
	.loc 1 927 0
	movq	-40(%rbp), %rax	# top, tmp223
	leaq	820(%rax), %rdx	#, D.13019
	movq	-40(%rbp), %rax	# top, tmp224
	leaq	816(%rax), %rcx	#, D.13019
	movq	-40(%rbp), %rax	# top, tmp225
	addq	$812, %rax	#, D.13019
	movq	%rcx, %rsi	# D.13019,
	movq	%rax, %rdi	# D.13019,
	call	distortion_fld	#
	.loc 1 929 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	field_picture, .-field_picture
	.type	distortion_fld, @function
distortion_fld:
.LFB9:
	.loc 1 939 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# dis_fld_y, dis_fld_y
	movq	%rsi, -16(%rbp)	# dis_fld_u, dis_fld_u
	movq	%rdx, -24(%rbp)	# dis_fld_v, dis_fld_v
	.loc 1 941 0
	movq	img(%rip), %rdx	# img, img.461
	movq	img(%rip), %rax	# img, img.462
	movl	(%rax), %eax	# img.462_2->number, D.13020
	movl	%eax, %ecx	# D.13020, tmp93
	shrl	$31, %ecx	#, tmp93
	addl	%ecx, %eax	# tmp93, tmp94
	sarl	%eax	# tmp95
	movl	%eax, (%rdx)	# D.13020, img.461_1->number
	.loc 1 942 0
	movq	img(%rip), %rdx	# img, img.463
	movq	img(%rip), %rax	# img, img.464
	movl	72376(%rax), %eax	# img.464_6->buf_cycle, D.13020
	movl	%eax, %ecx	# D.13020, tmp96
	shrl	$31, %ecx	#, tmp96
	addl	%ecx, %eax	# tmp96, tmp97
	sarl	%eax	# tmp98
	movl	%eax, 72376(%rdx)	# D.13020, img.463_5->buf_cycle
	.loc 1 943 0
	movq	img(%rip), %rax	# img, img.465
	movq	input(%rip), %rdx	# input, input.466
	movl	68(%rdx), %ecx	# input.466_10->img_height, D.13020
	movq	img(%rip), %rdx	# img, img.467
	movl	72732(%rdx), %edx	# img.467_12->auto_crop_bottom, D.13020
	addl	%ecx, %edx	# D.13020, D.13020
	movl	%edx, 60(%rax)	# D.13020, img.465_9->height
	.loc 1 944 0
	movq	img(%rip), %rax	# img, img.468
	movq	img(%rip), %rdx	# img, img.469
	movl	68(%rdx), %edx	# img.469_16->height_cr_frame, D.13020
	movl	%edx, 64(%rax)	# D.13020, img.468_15->height_cr
	.loc 1 945 0
	movq	img(%rip), %rdx	# img, img.470
	.loc 1 946 0
	movq	img(%rip), %rax	# img, img.471
	movl	52(%rax), %ecx	# img.471_19->width, D.13020
	movq	img(%rip), %rax	# img, img.472
	movl	60(%rax), %eax	# img.472_21->height, D.13020
	imull	%ecx, %eax	# D.13020, D.13020
	leal	255(%rax), %ecx	#, tmp100
	testl	%eax, %eax	# tmp99
	cmovs	%ecx, %eax	# tmp100,, tmp99
	sarl	$8, %eax	#, tmp101
	.loc 1 945 0
	movl	%eax, 16(%rdx)	# D.13020, img.470_18->total_number_mb
	.loc 1 948 0
	movl	$0, %eax	#,
	call	combine_field	#
	.loc 1 950 0
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.473
	movq	%rax, imgY_org(%rip)	# imgY_org_frm.473, imgY_org
	.loc 1 951 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.474
	movq	%rax, imgUV_org(%rip)	# imgUV_org_frm.474, imgUV_org
	.loc 1 953 0
	movq	img(%rip), %rdx	# img, img.475
	movq	snr(%rip), %rax	# snr, snr.476
	movq	%rdx, %rsi	# img.475,
	movq	%rax, %rdi	# snr.476,
	movl	$0, %eax	#,
	call	find_distortion	#
	.loc 1 955 0
	movq	snr(%rip), %rax	# snr, snr.477
	movl	(%rax), %eax	# snr.477_29->snr_y, D.13021
	movq	-8(%rbp), %rdx	# dis_fld_y, tmp102
	movl	%eax, (%rdx)	# D.13021, *dis_fld_y_31(D)
	.loc 1 956 0
	movq	snr(%rip), %rax	# snr, snr.478
	movl	4(%rax), %eax	# snr.478_32->snr_u, D.13021
	movq	-16(%rbp), %rdx	# dis_fld_u, tmp103
	movl	%eax, (%rdx)	# D.13021, *dis_fld_u_34(D)
	.loc 1 957 0
	movq	snr(%rip), %rax	# snr, snr.479
	movl	8(%rax), %eax	# snr.479_35->snr_v, D.13021
	movq	-24(%rbp), %rdx	# dis_fld_v, tmp104
	movl	%eax, (%rdx)	# D.13021, *dis_fld_v_37(D)
	.loc 1 958 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	distortion_fld, .-distortion_fld
	.type	picture_structure_decision, @function
picture_structure_decision:
.LFB10:
	.loc 1 968 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# frame, frame
	movq	%rsi, -48(%rbp)	# top, top
	movq	%rdx, -56(%rbp)	# bot, bot
	.loc 1 970 0
	movq	img(%rip), %rax	# img, img.480
	movl	24(%rax), %eax	# img.480_2->type, D.13022
	cmpl	$1, %eax	#, D.13022
	sete	%al	#, D.13023
	movzbl	%al, %eax	# D.13023, tmp86
	movl	%eax, -28(%rbp)	# tmp86, bframe
	.loc 1 974 0
	movq	img(%rip), %rax	# img, img.481
	movl	72676(%rax), %eax	# img.481_6->bitdepth_lambda_scale, D.13022
	cvtsi2sd	%eax, %xmm1	# D.13022, D.13024
	movq	img(%rip), %rax	# img, img.482
	movl	40(%rax), %eax	# img.482_9->qp, D.13022
	subl	$12, %eax	#, D.13022
	cvtsi2sd	%eax, %xmm0	# D.13022, D.13024
	movsd	.LC2(%rip), %xmm2	#, tmp87
	divsd	%xmm2, %xmm0	# tmp87, D.13024
	addsd	%xmm1, %xmm0	# D.13024, D.13024
	movabsq	$4611686018427387904, %rax	#, tmp88
	movapd	%xmm0, %xmm1	# D.13024,
	movq	%rax, -64(%rbp)	# tmp88, %sfp
	movsd	-64(%rbp), %xmm0	# %sfp,
	call	pow	#
	movsd	.LC4(%rip), %xmm1	#, tmp89
	mulsd	%xmm1, %xmm0	# tmp89, D.13024
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L137	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movabsq	$4616189618054758400, %rax	#, iftmp.483
	jmp	.L138	#
.L137:
	.loc 1 974 0 discriminator 2
	movabsq	$4607182418800017408, %rax	#, iftmp.483
.L138:
	.loc 1 974 0 discriminator 3
	movq	%rax, -64(%rbp)	# iftmp.483, %sfp
	movsd	-64(%rbp), %xmm3	# %sfp, iftmp.483
	mulsd	%xmm3, %xmm0	# iftmp.483, tmp90
	movsd	%xmm0, -8(%rbp)	# tmp90, lambda_picture
	.loc 1 976 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# frame, tmp91
	movss	812(%rax), %xmm1	# frame_20(D)->distortion_y, D.13025
	movq	-40(%rbp), %rax	# frame, tmp92
	movss	816(%rax), %xmm0	# frame_20(D)->distortion_u, D.13025
	addss	%xmm1, %xmm0	# D.13025, D.13025
	movq	-40(%rbp), %rax	# frame, tmp93
	movss	820(%rax), %xmm1	# frame_20(D)->distortion_v, D.13025
	addss	%xmm1, %xmm0	# D.13025, tmp94
	movss	%xmm0, -24(%rbp)	# tmp94, snr_frame
	.loc 1 978 0 discriminator 3
	movq	-48(%rbp), %rax	# top, tmp95
	movss	812(%rax), %xmm1	# top_26(D)->distortion_y, D.13025
	movq	-48(%rbp), %rax	# top, tmp96
	movss	816(%rax), %xmm0	# top_26(D)->distortion_u, D.13025
	addss	%xmm1, %xmm0	# D.13025, D.13025
	movq	-48(%rbp), %rax	# top, tmp97
	movss	820(%rax), %xmm1	# top_26(D)->distortion_v, D.13025
	addss	%xmm1, %xmm0	# D.13025, tmp98
	movss	%xmm0, -20(%rbp)	# tmp98, snr_field
	.loc 1 979 0 discriminator 3
	movq	-48(%rbp), %rax	# top, tmp99
	movl	808(%rax), %edx	# top_26(D)->bits_per_picture, D.13022
	movq	-56(%rbp), %rax	# bot, tmp100
	movl	808(%rax), %eax	# bot_33(D)->bits_per_picture, D.13022
	addl	%edx, %eax	# D.13022, tmp101
	movl	%eax, -16(%rbp)	# tmp101, bit_field
	.loc 1 980 0 discriminator 3
	movq	-40(%rbp), %rax	# frame, tmp102
	movl	808(%rax), %eax	# frame_20(D)->bits_per_picture, tmp103
	movl	%eax, -12(%rbp)	# tmp103, bit_frame
	.loc 1 982 0 discriminator 3
	movq	-8(%rbp), %rcx	# lambda_picture, tmp104
	movl	-12(%rbp), %esi	# bit_frame, tmp105
	movl	-16(%rbp), %edi	# bit_field, tmp106
	movl	-20(%rbp), %edx	# snr_field, tmp107
	movl	-24(%rbp), %eax	# snr_frame, tmp108
	movq	%rcx, -64(%rbp)	# tmp104, %sfp
	movsd	-64(%rbp), %xmm2	# %sfp,
	movl	%edx, -64(%rbp)	# tmp107, %sfp
	movss	-64(%rbp), %xmm1	# %sfp,
	movl	%eax, -64(%rbp)	# tmp108, %sfp
	movss	-64(%rbp), %xmm0	# %sfp,
	call	decide_fld_frame	#
	.loc 1 983 0 discriminator 3
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	picture_structure_decision, .-picture_structure_decision
	.type	field_mode_buffer, @function
field_mode_buffer:
.LFB11:
	.loc 1 993 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# bit_field, bit_field
	movss	%xmm0, -8(%rbp)	# snr_field_y, snr_field_y
	movss	%xmm1, -12(%rbp)	# snr_field_u, snr_field_u
	movss	%xmm2, -16(%rbp)	# snr_field_v, snr_field_v
	.loc 1 994 0
	movl	$0, %eax	#,
	call	put_buffer_frame	#
	.loc 1 996 0
	movq	snr(%rip), %rdx	# snr, snr.484
	movl	-8(%rbp), %eax	# snr_field_y, tmp62
	movl	%eax, (%rdx)	# tmp62, snr.484_1->snr_y
	.loc 1 997 0
	movq	snr(%rip), %rdx	# snr, snr.485
	movl	-12(%rbp), %eax	# snr_field_u, tmp63
	movl	%eax, 4(%rdx)	# tmp63, snr.485_3->snr_u
	.loc 1 998 0
	movq	snr(%rip), %rdx	# snr, snr.486
	movl	-16(%rbp), %eax	# snr_field_v, tmp64
	movl	%eax, 8(%rdx)	# tmp64, snr.486_5->snr_v
	.loc 1 999 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	field_mode_buffer, .-field_mode_buffer
	.type	frame_mode_buffer, @function
frame_mode_buffer:
.LFB12:
	.loc 1 1009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# bit_frame, bit_frame
	movss	%xmm0, -8(%rbp)	# snr_frame_y, snr_frame_y
	movss	%xmm1, -12(%rbp)	# snr_frame_u, snr_frame_u
	movss	%xmm2, -16(%rbp)	# snr_frame_v, snr_frame_v
	.loc 1 1010 0
	movl	$0, %eax	#,
	call	put_buffer_frame	#
	.loc 1 1012 0
	movq	input(%rip), %rax	# input, input.487
	movl	2880(%rax), %eax	# input.487_1->PicInterlace, D.13026
	testl	%eax, %eax	# D.13026
	jne	.L142	#,
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.488
	movl	2884(%rax), %eax	# input.488_3->MbInterlace, D.13026
	testl	%eax, %eax	# D.13026
	je	.L141	#,
.L142:
	.loc 1 1014 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.489
	movq	img(%rip), %rax	# img, img.490
	movl	60(%rax), %eax	# img.490_6->height, D.13026
	movl	%eax, %ecx	# D.13026, tmp101
	shrl	$31, %ecx	#, tmp101
	addl	%ecx, %eax	# tmp101, tmp102
	sarl	%eax	# tmp103
	movl	%eax, 60(%rdx)	# D.13026, img.489_5->height
	.loc 1 1015 0
	movq	img(%rip), %rdx	# img, img.491
	movq	img(%rip), %rax	# img, img.492
	movl	64(%rax), %eax	# img.492_10->height_cr, D.13026
	movl	%eax, %ecx	# D.13026, tmp104
	shrl	$31, %ecx	#, tmp104
	addl	%ecx, %eax	# tmp104, tmp105
	sarl	%eax	# tmp106
	movl	%eax, 64(%rdx)	# D.13026, img.491_9->height_cr
	.loc 1 1016 0
	movq	img(%rip), %rax	# img, img.493
	movq	img(%rip), %rdx	# img, img.494
	movl	(%rdx), %edx	# img.494_14->number, D.13026
	addl	%edx, %edx	# D.13026
	movl	%edx, (%rax)	# D.13026, img.493_13->number
	.loc 1 1018 0
	movl	$0, %eax	#,
	call	put_buffer_top	#
	.loc 1 1020 0
	movq	img(%rip), %rax	# img, img.495
	movl	(%rax), %edx	# img.495_17->number, D.13026
	addl	$1, %edx	#, D.13026
	movl	%edx, (%rax)	# D.13026, img.495_17->number
	.loc 1 1021 0
	movl	$0, %eax	#,
	call	put_buffer_bot	#
	.loc 1 1023 0
	movq	img(%rip), %rdx	# img, img.496
	movq	img(%rip), %rax	# img, img.497
	movl	(%rax), %eax	# img.497_21->number, D.13026
	movl	%eax, %ecx	# D.13026, tmp107
	shrl	$31, %ecx	#, tmp107
	addl	%ecx, %eax	# tmp107, tmp108
	sarl	%eax	# tmp109
	movl	%eax, (%rdx)	# D.13026, img.496_20->number
	.loc 1 1024 0
	movq	img(%rip), %rax	# img, img.498
	movq	input(%rip), %rdx	# input, input.499
	movl	68(%rdx), %ecx	# input.499_25->img_height, D.13026
	movq	img(%rip), %rdx	# img, img.500
	movl	72732(%rdx), %edx	# img.500_27->auto_crop_bottom, D.13026
	addl	%ecx, %edx	# D.13026, D.13026
	movl	%edx, 60(%rax)	# D.13026, img.498_24->height
	.loc 1 1025 0
	movq	img(%rip), %rax	# img, img.501
	movq	img(%rip), %rdx	# img, img.502
	movl	68(%rdx), %edx	# img.502_31->height_cr_frame, D.13026
	movl	%edx, 64(%rax)	# D.13026, img.501_30->height_cr
	.loc 1 1026 0
	movq	img(%rip), %rdx	# img, img.503
	.loc 1 1027 0
	movq	img(%rip), %rax	# img, img.504
	movl	52(%rax), %ecx	# img.504_34->width, D.13026
	movq	img(%rip), %rax	# img, img.505
	movl	60(%rax), %eax	# img.505_36->height, D.13026
	imull	%ecx, %eax	# D.13026, D.13026
	leal	255(%rax), %ecx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%ecx, %eax	# tmp111,, tmp110
	sarl	$8, %eax	#, tmp112
	.loc 1 1026 0
	movl	%eax, 16(%rdx)	# D.13026, img.503_33->total_number_mb
	.loc 1 1029 0
	movq	snr(%rip), %rdx	# snr, snr.506
	movl	-8(%rbp), %eax	# snr_frame_y, tmp113
	movl	%eax, (%rdx)	# tmp113, snr.506_40->snr_y
	.loc 1 1030 0
	movq	snr(%rip), %rdx	# snr, snr.507
	movl	-12(%rbp), %eax	# snr_frame_u, tmp114
	movl	%eax, 4(%rdx)	# tmp114, snr.507_42->snr_u
	.loc 1 1031 0
	movq	snr(%rip), %rdx	# snr, snr.508
	movl	-16(%rbp), %eax	# snr_frame_v, tmp115
	movl	%eax, 8(%rdx)	# tmp115, snr.508_44->snr_v
	.loc 1 1032 0
	movl	$0, %eax	#,
	call	put_buffer_frame	#
.L141:
	.loc 1 1035 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	frame_mode_buffer, .-frame_mode_buffer
	.type	init_dec_ref_pic_marking_buffer, @function
init_dec_ref_pic_marking_buffer:
.LFB13:
	.loc 1 1045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1046 0
	movq	img(%rip), %rax	# img, img.509
	movq	$0, 72512(%rax)	#, img.509_1->dec_ref_pic_marking_buffer
	.loc 1 1047 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	init_dec_ref_pic_marking_buffer, .-init_dec_ref_pic_marking_buffer
	.type	init_frame, @function
init_frame:
.LFB14:
	.loc 1 1057 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1061 0
	movq	last_P_no_frm(%rip), %rax	# last_P_no_frm, last_P_no_frm.510
	movq	%rax, last_P_no(%rip)	# last_P_no_frm.510, last_P_no
	.loc 1 1063 0
	movq	img(%rip), %rax	# img, img.511
	movl	$0, 12(%rax)	#, img.511_7->current_mb_nr
	.loc 1 1064 0
	movq	img(%rip), %rax	# img, img.512
	movl	$0, 20(%rax)	#, img.512_8->current_slice_nr
	.loc 1 1065 0
	movq	stats(%rip), %rax	# stats, stats.513
	movl	$0, 24(%rax)	#, stats.513_9->bit_slice
	.loc 1 1067 0
	movq	img(%rip), %rdx	# img, img.514
	movq	img(%rip), %rax	# img, img.515
	movl	$0, 136(%rax)	#, img.515_11->mb_x
	movl	136(%rax), %eax	# img.515_11->mb_x, D.13027
	movl	%eax, 140(%rdx)	# D.13027, img.514_10->mb_y
	.loc 1 1068 0
	movq	img(%rip), %rcx	# img, img.516
	movq	img(%rip), %rax	# img, img.517
	movq	img(%rip), %rdx	# img, img.518
	movl	$0, 164(%rdx)	#, img.518_15->pix_c_y
	movl	164(%rdx), %edx	# img.518_15->pix_c_y, D.13027
	movl	%edx, 156(%rax)	# D.13027, img.517_14->pix_y
	movl	156(%rax), %eax	# img.517_14->pix_y, D.13027
	movl	%eax, 148(%rcx)	# D.13027, img.516_13->block_y
	.loc 1 1069 0
	movq	img(%rip), %rsi	# img, img.519
	movq	img(%rip), %rax	# img, img.520
	movq	img(%rip), %rdx	# img, img.521
	movq	img(%rip), %rcx	# img, img.522
	movl	$0, 160(%rcx)	#, img.522_21->pix_c_x
	movl	160(%rcx), %ecx	# img.522_21->pix_c_x, D.13027
	movl	%ecx, 96(%rdx)	# D.13027, img.521_20->block_c_x
	movl	96(%rdx), %edx	# img.521_20->block_c_x, D.13027
	movl	%edx, 152(%rax)	# D.13027, img.520_19->pix_x
	movl	152(%rax), %eax	# img.520_19->pix_x, D.13027
	movl	%eax, 144(%rsi)	# D.13027, img.519_18->block_x
	.loc 1 1074 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L146	#
.L147:
	.loc 1 1075 0 discriminator 2
	movq	img(%rip), %rax	# img, img.523
	movq	14168(%rax), %rdx	# img.523_33->mb_data, D.13028
	movl	-28(%rbp), %eax	# i, tmp340
	cltq
	imulq	$632, %rax, %rax	#, D.13029, D.13029
	addq	%rdx, %rax	# D.13028, D.13028
	movl	$-1, 4(%rax)	#, _37->slice_nr
	.loc 1 1074 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L146:
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.524
	movl	52(%rax), %eax	# img.524_26->width, D.13027
	leal	15(%rax), %edx	#, tmp342
	testl	%eax, %eax	# tmp341
	cmovs	%edx, %eax	# tmp342,, tmp341
	sarl	$4, %eax	#, tmp343
	movl	%eax, %edx	# tmp343, D.13027
	movq	img(%rip), %rax	# img, img.525
	movl	60(%rax), %eax	# img.525_29->height, D.13027
	leal	15(%rax), %ecx	#, tmp345
	testl	%eax, %eax	# tmp344
	cmovs	%ecx, %eax	# tmp345,, tmp344
	sarl	$4, %eax	#, tmp346
	imull	%edx, %eax	# D.13027, D.13027
	cmpl	-28(%rbp), %eax	# i, D.13027
	jg	.L147	#,
	.loc 1 1078 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.526
	movl	71908(%rax), %eax	# img.526_39->b_frame_to_code, D.13027
	testl	%eax, %eax	# D.13027
	jne	.L148	#,
	.loc 1 1080 0
	movq	img(%rip), %rax	# img, img.527
	movq	img(%rip), %rdx	# img, img.528
	movl	(%rdx), %ecx	# img.528_42->number, D.13027
	movl	start_frame_no_in_this_IGOP(%rip), %edx	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.529
	subl	%edx, %ecx	# start_frame_no_in_this_IGOP.529, D.13027
	movq	input(%rip), %rdx	# input, input.530
	movl	20(%rdx), %edx	# input.530_46->jumpd, D.13027
	addl	$1, %edx	#, D.13027
	imull	%edx, %ecx	# D.13027, D.13027
	movl	start_tr_in_this_IGOP(%rip), %edx	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.531
	addl	%ecx, %edx	# D.13027, D.13027
	movl	%edx, 71792(%rax)	# D.13027, img.527_41->tr
	.loc 1 1082 0
	movq	img(%rip), %rax	# img, img.532
	movq	img(%rip), %rdx	# img, img.533
	movl	71876(%rdx), %edx	# img.533_53->imgtr_next_P_frm, D.13027
	movl	%edx, 71880(%rax)	# D.13027, img.532_52->imgtr_last_P_frm
	.loc 1 1083 0
	movq	img(%rip), %rax	# img, img.534
	movq	img(%rip), %rdx	# img, img.535
	movl	71792(%rdx), %edx	# img.535_56->tr, D.13027
	movl	%edx, 71876(%rax)	# D.13027, img.534_55->imgtr_next_P_frm
	.loc 1 1086 0
	movq	input(%rip), %rax	# input, input.536
	movl	2440(%rax), %eax	# input.536_58->last_frame, D.13027
	testl	%eax, %eax	# D.13027
	je	.L149	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.537
	movl	(%rax), %eax	# img.537_60->number, D.13027
	leal	1(%rax), %edx	#, D.13027
	movq	input(%rip), %rax	# input, input.538
	movl	8(%rax), %eax	# input.538_63->no_frames, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jne	.L149	#,
	.loc 1 1087 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.539
	movq	input(%rip), %rdx	# input, input.540
	movl	2440(%rdx), %edx	# input.540_66->last_frame, D.13027
	movl	%edx, 71792(%rax)	# D.13027, img.539_65->tr
.L149:
	.loc 1 1090 0
	movq	img(%rip), %rax	# img, img.541
	movl	(%rax), %edx	# img.541_68->number, D.13027
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.542
	cmpl	%eax, %edx	# start_frame_no_in_this_IGOP.542, D.13027
	je	.L150	#,
	.loc 1 1090 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.543
	movl	1236(%rax), %eax	# input.543_71->successive_Bframe, D.13027
	testl	%eax, %eax	# D.13027
	je	.L150	#,
	.loc 1 1091 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.544
	movl	71792(%rax), %eax	# img.544_73->tr, nextP_tr_frm.545
	movl	%eax, nextP_tr_frm(%rip)	# nextP_tr_frm.545, nextP_tr_frm
.L150:
	.loc 1 1094 0
	movq	input(%rip), %rax	# input, input.546
	movl	3236(%rax), %eax	# input.546_75->RCEnable, D.13027
	testl	%eax, %eax	# D.13027
	jne	.L151	#,
	.loc 1 1096 0
	movq	img(%rip), %rax	# img, img.547
	movl	24(%rax), %eax	# img.547_77->type, D.13027
	cmpl	$2, %eax	#, D.13027
	jne	.L152	#,
	.loc 1 1098 0
	movq	input(%rip), %rax	# input, input.548
	movl	2452(%rax), %eax	# input.548_79->qp2start, D.13027
	testl	%eax, %eax	# D.13027
	jle	.L153	#,
	.loc 1 1098 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.549
	movl	71792(%rax), %edx	# img.549_81->tr, D.13027
	movq	input(%rip), %rax	# input, input.550
	movl	2452(%rax), %eax	# input.550_83->qp2start, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jl	.L153	#,
	.loc 1 1099 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.551
	movq	input(%rip), %rdx	# input, input.552
	movl	2456(%rdx), %edx	# input.552_86->qp02, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.551_85->qp
	jmp	.L151	#
.L153:
	.loc 1 1102 0
	movq	img(%rip), %rax	# img, img.553
	movq	input(%rip), %rdx	# input, input.554
	movl	12(%rdx), %edx	# input.554_89->qp0, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.553_88->qp
	jmp	.L151	#
.L152:
	.loc 1 1106 0
	movq	input(%rip), %rax	# input, input.555
	movl	2452(%rax), %eax	# input.555_91->qp2start, D.13027
	testl	%eax, %eax	# D.13027
	jle	.L155	#,
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.556
	movl	71792(%rax), %edx	# img.556_93->tr, D.13027
	movq	input(%rip), %rax	# input, input.557
	movl	2452(%rax), %eax	# input.557_95->qp2start, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jl	.L155	#,
	.loc 1 1107 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.558
	movq	input(%rip), %rdx	# input, input.559
	movl	2444(%rdx), %edx	# input.559_98->qpN2, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.558_97->qp
	jmp	.L156	#
.L155:
	.loc 1 1110 0
	movq	img(%rip), %rax	# img, img.560
	movq	input(%rip), %rdx	# input, input.561
	movl	16(%rdx), %edx	# input.561_101->qpN, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.560_100->qp
.L156:
	.loc 1 1112 0
	movq	img(%rip), %rax	# img, img.562
	movl	24(%rax), %eax	# img.562_103->type, D.13027
	cmpl	$3, %eax	#, D.13027
	jne	.L151	#,
	.loc 1 1114 0
	movq	img(%rip), %rax	# img, img.563
	movq	input(%rip), %rdx	# input, input.564
	movl	1276(%rdx), %edx	# input.564_106->qpsp, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.563_105->qp
	.loc 1 1115 0
	movq	img(%rip), %rax	# img, img.565
	movq	input(%rip), %rdx	# input, input.566
	movl	1280(%rdx), %edx	# input.566_109->qpsp_pred, D.13027
	movl	%edx, 44(%rax)	# D.13027, img.565_108->qpsp
.L151:
	.loc 1 1120 0
	movq	img(%rip), %rax	# img, img.567
	movq	img(%rip), %rdx	# img, img.568
	movl	88(%rdx), %edx	# img.568_112->mb_y_upd, D.13027
	movl	%edx, 92(%rax)	# D.13027, img.567_111->mb_y_intra
	.loc 1 1122 0
	movq	input(%rip), %rax	# input, input.569
	movl	76(%rax), %eax	# input.569_114->intra_upd, D.13027
	testl	%eax, %eax	# D.13027
	jle	.L158	#,
	.loc 1 1124 0
	movq	img(%rip), %rcx	# img, img.570
	movq	img(%rip), %rax	# img, img.571
	movl	(%rax), %edx	# img.571_117->number, D.13027
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.572
	movl	%edx, %esi	# D.13027, D.13027
	subl	%eax, %esi	# start_frame_no_in_this_IGOP.572, D.13027
	movq	input(%rip), %rax	# input, input.573
	movl	76(%rax), %ebx	# input.573_121->intra_upd, D.13027
	movl	%esi, %eax	# D.13027, tmp347
	cltd
	idivl	%ebx	# D.13027
	movl	%eax, %edx	# tmp347, D.13027
	movq	img(%rip), %rax	# img, img.574
	movl	60(%rax), %eax	# img.574_124->height, D.13027
	leal	15(%rax), %esi	#, tmp350
	testl	%eax, %eax	# tmp349
	cmovs	%esi, %eax	# tmp350,, tmp349
	sarl	$4, %eax	#, tmp351
	movl	%eax, %esi	# tmp351, D.13027
	movl	%edx, %eax	# D.13027, tmp353
	cltd
	idivl	%esi	# D.13027
	movl	%edx, %eax	# tmp352, D.13027
	movl	%eax, 88(%rcx)	# D.13027, img.570_116->mb_y_upd
	jmp	.L158	#
.L148:
	.loc 1 1129 0
	movq	img(%rip), %rax	# img, img.575
	movq	input(%rip), %rdx	# input, input.576
	movl	20(%rdx), %edx	# input.576_129->jumpd, D.13027
	addl	$1, %edx	#, D.13027
	movl	%edx, 71904(%rax)	# D.13027, img.575_128->p_interval
	.loc 1 1130 0
	movq	img(%rip), %rax	# img, img.577
	movl	(%rax), %edx	# img.577_132->number, D.13027
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.578
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.578, D.13027
	movl	%edx, %eax	# D.13027, D.13027
	leal	-1(%rax), %edx	#, D.13027
	movq	img(%rip), %rax	# img, img.579
	movl	71904(%rax), %eax	# img.579_137->p_interval, D.13027
	imull	%eax, %edx	# D.13027, D.13027
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.580
	addl	%edx, %eax	# D.13027, tmp354
	movl	%eax, -20(%rbp)	# tmp354, prevP_no
	.loc 1 1131 0
	movq	img(%rip), %rax	# img, img.581
	movl	(%rax), %edx	# img.581_142->number, D.13027
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.582
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.582, D.13027
	movq	img(%rip), %rax	# img, img.583
	movl	71904(%rax), %eax	# img.583_146->p_interval, D.13027
	imull	%eax, %edx	# D.13027, D.13027
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.584
	addl	%edx, %eax	# D.13027, tmp355
	movl	%eax, -24(%rbp)	# tmp355, nextP_no
	.loc 1 1134 0
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.585
	movl	-20(%rbp), %edx	# prevP_no, tmp356
	movl	%edx, (%rax)	# tmp356, *last_P_no.585_151
	.loc 1 1135 0
	movl	$1, -28(%rbp)	#, i
	jmp	.L159	#
.L160:
	.loc 1 1136 0 discriminator 2
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.586
	movl	-28(%rbp), %edx	# i, tmp357
	movslq	%edx, %rdx	# tmp357, D.13029
	salq	$2, %rdx	#, D.13029
	addq	%rax, %rdx	# last_P_no.586, D.13030
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.587
	movl	-28(%rbp), %ecx	# i, tmp358
	movslq	%ecx, %rcx	# tmp358, D.13029
	salq	$2, %rcx	#, D.13029
	subq	$4, %rcx	#, D.13031
	addq	%rcx, %rax	# D.13031, D.13030
	movl	(%rax), %ecx	# *_163, D.13027
	movq	img(%rip), %rax	# img, img.588
	movl	71904(%rax), %eax	# img.588_165->p_interval, D.13027
	subl	%eax, %ecx	# D.13027, D.13027
	movl	%ecx, %eax	# D.13027, D.13027
	movl	%eax, (%rdx)	# D.13027, *_158
	.loc 1 1135 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L159:
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.589
	movl	72376(%rax), %eax	# img.589_153->buf_cycle, D.13027
	cmpl	-28(%rbp), %eax	# i, D.13027
	jg	.L160	#,
	.loc 1 1138 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.590
	movl	2440(%rax), %eax	# input.590_169->last_frame, D.13027
	testl	%eax, %eax	# D.13027
	je	.L161	#,
	.loc 1 1138 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.591
	movl	(%rax), %eax	# img.591_171->number, D.13027
	leal	1(%rax), %edx	#, D.13027
	movq	input(%rip), %rax	# input, input.592
	movl	8(%rax), %eax	# input.592_174->no_frames, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jne	.L161	#,
	.loc 1 1140 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.593
	movl	2440(%rax), %eax	# input.593_176->last_frame, tmp359
	movl	%eax, -24(%rbp)	# tmp359, nextP_no
	.loc 1 1141 0
	movq	img(%rip), %rax	# img, img.594
	movl	-20(%rbp), %edx	# prevP_no, tmp360
	movl	-24(%rbp), %ecx	# nextP_no, tmp361
	subl	%edx, %ecx	# tmp360, D.13027
	movl	%ecx, %edx	# D.13027, D.13027
	movl	%edx, 71904(%rax)	# D.13027, img.594_178->p_interval
.L161:
	.loc 1 1145 0
	movq	img(%rip), %rax	# img, img.595
	.loc 1 1146 0
	movq	input(%rip), %rdx	# input, input.596
	movl	20(%rdx), %edx	# input.596_181->jumpd, D.13027
	addl	$1, %edx	#, D.13027
	cvtsi2sd	%edx, %xmm0	# D.13027, D.13032
	movq	input(%rip), %rdx	# input, input.597
	movl	1236(%rdx), %edx	# input.597_185->successive_Bframe, D.13027
	cvtsi2sd	%edx, %xmm1	# D.13027, D.13032
	movsd	.LC6(%rip), %xmm2	#, tmp362
	addsd	%xmm2, %xmm1	# tmp362, D.13032
	divsd	%xmm1, %xmm0	# D.13032, D.13032
	.loc 1 1145 0
	movsd	%xmm0, 71896(%rax)	# D.13032, img.595_180->b_interval
	.loc 1 1148 0
	movq	input(%rip), %rax	# input, input.598
	movl	1320(%rax), %eax	# input.598_190->PyramidCoding, D.13027
	cmpl	$3, %eax	#, D.13027
	jne	.L162	#,
	.loc 1 1149 0
	movq	img(%rip), %rdx	# img, img.599
	movabsq	$4607182418800017408, %rax	#, tmp363
	movq	%rax, 71896(%rdx)	# tmp363, img.599_192->b_interval
.L162:
	.loc 1 1151 0
	movq	input(%rip), %rax	# input, input.600
	movl	1320(%rax), %eax	# input.600_193->PyramidCoding, D.13027
	testl	%eax, %eax	# D.13027
	je	.L163	#,
	.loc 1 1152 0
	movq	img(%rip), %rcx	# img, img.601
	movq	img(%rip), %rax	# img, img.602
	movsd	71896(%rax), %xmm1	# img.602_196->b_interval, D.13032
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.603
	movq	img(%rip), %rax	# img, img.604
	movl	71908(%rax), %eax	# img.604_199->b_frame_to_code, D.13027
	movslq	%eax, %rdx	# D.13027, D.13029
	movq	%rdx, %rax	# D.13029, tmp364
	addq	%rax, %rax	# tmp364
	addq	%rdx, %rax	# D.13029, tmp364
	salq	$3, %rax	#, tmp365
	subq	$24, %rax	#, D.13031
	addq	%rsi, %rax	# gop_structure.603, D.13033
	movl	4(%rax), %eax	# _204->display_no, D.13027
	addl	$1, %eax	#, D.13027
	cvtsi2sd	%eax, %xmm0	# D.13027, D.13032
	mulsd	%xmm1, %xmm0	# D.13032, D.13032
	cvttsd2si	%xmm0, %edx	# D.13032, D.13027
	movl	-20(%rbp), %eax	# prevP_no, tmp366
	addl	%edx, %eax	# D.13027, D.13027
	movl	%eax, 71792(%rcx)	# D.13027, img.601_195->tr
	jmp	.L164	#
.L163:
	.loc 1 1154 0
	movq	img(%rip), %rax	# img, img.605
	movq	img(%rip), %rdx	# img, img.606
	movsd	71896(%rdx), %xmm1	# img.606_212->b_interval, D.13032
	movq	img(%rip), %rdx	# img, img.607
	movl	71908(%rdx), %edx	# img.607_214->b_frame_to_code, D.13027
	cvtsi2sd	%edx, %xmm0	# D.13027, D.13032
	mulsd	%xmm1, %xmm0	# D.13032, D.13032
	cvttsd2si	%xmm0, %ecx	# D.13032, D.13027
	movl	-20(%rbp), %edx	# prevP_no, tmp367
	addl	%ecx, %edx	# D.13027, D.13027
	movl	%edx, 71792(%rax)	# D.13027, img.605_211->tr
.L164:
	.loc 1 1157 0
	movq	img(%rip), %rax	# img, img.608
	movl	71792(%rax), %eax	# img.608_220->tr, D.13027
	cmpl	-24(%rbp), %eax	# nextP_no, D.13027
	jl	.L165	#,
	.loc 1 1158 0
	movq	img(%rip), %rax	# img, img.609
	movl	-24(%rbp), %edx	# nextP_no, tmp368
	subl	$1, %edx	#, D.13027
	movl	%edx, 71792(%rax)	# D.13027, img.609_222->tr
.L165:
	.loc 1 1160 0
	movq	input(%rip), %rax	# input, input.610
	movl	3236(%rax), %eax	# input.610_224->RCEnable, D.13027
	testl	%eax, %eax	# D.13027
	jne	.L166	#,
	.loc 1 1160 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.611
	movl	1320(%rax), %eax	# input.611_226->PyramidCoding, D.13027
	cmpl	$3, %eax	#, D.13027
	je	.L166	#,
	.loc 1 1163 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.612
	movl	2452(%rax), %eax	# input.612_228->qp2start, D.13027
	testl	%eax, %eax	# D.13027
	jle	.L167	#,
	.loc 1 1163 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.613
	movl	71792(%rax), %edx	# img.613_230->tr, D.13027
	movq	input(%rip), %rax	# input, input.614
	movl	2452(%rax), %eax	# input.614_232->qp2start, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jl	.L167	#,
	.loc 1 1165 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.615
	movq	input(%rip), %rdx	# input, input.616
	movl	2448(%rdx), %edx	# input.616_235->qpB2, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.615_234->qp
	jmp	.L168	#
.L167:
	.loc 1 1170 0
	movq	img(%rip), %rax	# img, img.617
	movq	input(%rip), %rdx	# input, input.618
	movl	1240(%rdx), %edx	# input.618_238->qpB, D.13027
	movl	%edx, 40(%rax)	# D.13027, img.617_237->qp
.L168:
	.loc 1 1173 0
	movq	img(%rip), %rax	# img, img.619
	movl	72496(%rax), %eax	# img.619_240->nal_reference_idc, D.13027
	testl	%eax, %eax	# D.13027
	je	.L169	#,
	.loc 1 1176 0
	movq	input(%rip), %rax	# input, input.620
	movl	2452(%rax), %eax	# input.620_242->qp2start, D.13027
	testl	%eax, %eax	# D.13027
	jle	.L170	#,
	.loc 1 1176 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.621
	movl	71792(%rax), %edx	# img.621_244->tr, D.13027
	movq	input(%rip), %rax	# input, input.622
	movl	2452(%rax), %eax	# input.622_246->qp2start, D.13027
	cmpl	%eax, %edx	# D.13027, D.13027
	jl	.L170	#,
	.loc 1 1178 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.623
	movq	input(%rip), %rax	# input, input.625
	movl	2448(%rax), %ecx	# input.625_249->qpB2, D.13027
	movq	input(%rip), %rax	# input, input.626
	movl	2460(%rax), %eax	# input.626_251->qpBRS2Offset, D.13027
	addl	%ecx, %eax	# D.13027, D.13027
	testl	%eax, %eax	# D.13027
	js	.L171	#,
	.loc 1 1178 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.627
	movl	2448(%rax), %ecx	# input.627_254->qpB2, D.13027
	movq	input(%rip), %rax	# input, input.628
	movl	2460(%rax), %eax	# input.628_256->qpBRS2Offset, D.13027
	addl	%ecx, %eax	# D.13027, D.13027
	movl	$51, %ecx	#, tmp369
	cmpl	$51, %eax	#, D.13027
	cmovg	%ecx, %eax	# D.13027,, tmp369, iftmp.624
	jmp	.L172	#
.L171:
	.loc 1 1178 0 discriminator 2
	movl	$0, %eax	#, iftmp.624
.L172:
	.loc 1 1178 0 discriminator 3
	movl	%eax, 40(%rdx)	# iftmp.624, img.623_248->qp
	jmp	.L169	#
.L170:
	.loc 1 1183 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.629
	movq	input(%rip), %rax	# input, input.631
	movl	1240(%rax), %ecx	# input.631_262->qpB, D.13027
	movq	input(%rip), %rax	# input, input.632
	movl	1244(%rax), %eax	# input.632_264->qpBRSOffset, D.13027
	addl	%ecx, %eax	# D.13027, D.13027
	testl	%eax, %eax	# D.13027
	js	.L173	#,
	.loc 1 1183 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.633
	movl	1240(%rax), %ecx	# input.633_267->qpB, D.13027
	movq	input(%rip), %rax	# input, input.634
	movl	1244(%rax), %eax	# input.634_269->qpBRSOffset, D.13027
	addl	%ecx, %eax	# D.13027, D.13027
	movl	$51, %ecx	#, tmp370
	cmpl	$51, %eax	#, D.13027
	cmovg	%ecx, %eax	# D.13027,, tmp370, iftmp.630
	jmp	.L174	#
.L173:
	.loc 1 1183 0 discriminator 2
	movl	$0, %eax	#, iftmp.630
.L174:
	.loc 1 1183 0 discriminator 3
	movl	%eax, 40(%rdx)	# iftmp.630, img.629_261->qp
	.loc 1 1173 0 is_stmt 1 discriminator 3
	jmp	.L158	#
.L169:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	jmp	.L158	#
.L166:
	.loc 1 1187 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.635
	movl	1320(%rax), %eax	# input.635_274->PyramidCoding, D.13027
	cmpl	$3, %eax	#, D.13027
	jne	.L158	#,
	.loc 1 1189 0
	movq	img(%rip), %rcx	# img, img.636
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.637
	movq	img(%rip), %rax	# img, img.638
	movl	71908(%rax), %eax	# img.638_278->b_frame_to_code, D.13027
	movslq	%eax, %rdx	# D.13027, D.13029
	movq	%rdx, %rax	# D.13029, tmp371
	addq	%rax, %rax	# tmp371
	addq	%rdx, %rax	# D.13029, tmp371
	salq	$3, %rax	#, tmp372
	subq	$24, %rax	#, D.13031
	addq	%rsi, %rax	# gop_structure.637, D.13033
	movl	12(%rax), %eax	# _283->slice_qp, D.13027
	movl	%eax, 40(%rcx)	# D.13027, img.636_276->qp
.L158:
	.loc 1 1195 0
	movq	img(%rip), %rax	# img, img.639
	movl	72384(%rax), %eax	# img.639_285->layer, D.13027
	movl	%eax, %edi	# D.13027,
	call	UpdateSubseqInfo	#
	.loc 1 1196 0
	movl	$-1, %ecx	#,
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	UpdateSceneInformation	#
	.loc 1 1201 0
	movq	img(%rip), %rdx	# img, img.640
	movq	img(%rip), %rax	# img, img.641
	movl	52(%rax), %ecx	# img.641_288->width, D.13027
	movq	img(%rip), %rax	# img, img.642
	movl	60(%rax), %eax	# img.642_290->height, D.13027
	imull	%ecx, %eax	# D.13027, D.13027
	leal	255(%rax), %ecx	#, tmp374
	testl	%eax, %eax	# tmp373
	cmovs	%ecx, %eax	# tmp374,, tmp373
	sarl	$8, %eax	#, tmp375
	movl	%eax, 16(%rdx)	# D.13027, img.640_287->total_number_mb
	.loc 1 1203 0
	movq	img(%rip), %rax	# img, img.643
	movl	$0, 72504(%rax)	#, img.643_294->no_output_of_prior_pics_flag
	.loc 1 1204 0
	movq	img(%rip), %rax	# img, img.644
	movl	$0, 72508(%rax)	#, img.644_295->long_term_reference_flag
	.loc 1 1206 0
	movl	$0, %eax	#,
	call	init_dec_ref_pic_marking_buffer	#
	.loc 1 1207 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	init_frame, .-init_frame
	.type	init_field, @function
init_field:
.LFB15:
	.loc 1 1216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1220 0
	movq	last_P_no_fld(%rip), %rax	# last_P_no_fld, last_P_no_fld.645
	movq	%rax, last_P_no(%rip)	# last_P_no_fld.645, last_P_no
	.loc 1 1222 0
	movq	img(%rip), %rax	# img, img.646
	movl	$0, 12(%rax)	#, img.646_7->current_mb_nr
	.loc 1 1223 0
	movq	img(%rip), %rax	# img, img.647
	movl	$0, 20(%rax)	#, img.647_8->current_slice_nr
	.loc 1 1224 0
	movq	stats(%rip), %rax	# stats, stats.648
	movl	$0, 24(%rax)	#, stats.648_9->bit_slice
	.loc 1 1226 0
	movq	input(%rip), %rax	# input, input.649
	movq	input(%rip), %rdx	# input, input.650
	movl	20(%rdx), %edx	# input.650_11->jumpd, D.13034
	addl	%edx, %edx	# D.13034
	movl	%edx, 20(%rax)	# D.13034, input.649_10->jumpd
	.loc 1 1227 0
	movq	input(%rip), %rax	# input, input.651
	movq	input(%rip), %rdx	# input, input.652
	movl	1236(%rdx), %edx	# input.652_15->successive_Bframe, D.13034
	addl	%edx, %edx	# D.13034
	movl	%edx, 1236(%rax)	# D.13034, input.651_14->successive_Bframe
	.loc 1 1228 0
	movq	img(%rip), %rdx	# img, img.653
	movq	img(%rip), %rax	# img, img.654
	movl	(%rax), %eax	# img.654_19->number, D.13034
	movl	%eax, %ecx	# D.13034, tmp409
	shrl	$31, %ecx	#, tmp409
	addl	%ecx, %eax	# tmp409, tmp410
	sarl	%eax	# tmp411
	movl	%eax, (%rdx)	# D.13034, img.653_18->number
	.loc 1 1229 0
	movq	img(%rip), %rdx	# img, img.655
	movq	img(%rip), %rax	# img, img.656
	movl	72376(%rax), %eax	# img.656_23->buf_cycle, D.13034
	movl	%eax, %ecx	# D.13034, tmp412
	shrl	$31, %ecx	#, tmp412
	addl	%ecx, %eax	# tmp412, tmp413
	sarl	%eax	# tmp414
	movl	%eax, 72376(%rdx)	# D.13034, img.655_22->buf_cycle
	.loc 1 1231 0
	movq	img(%rip), %rdx	# img, img.657
	movq	img(%rip), %rax	# img, img.658
	movl	$0, 136(%rax)	#, img.658_27->mb_x
	movl	136(%rax), %eax	# img.658_27->mb_x, D.13034
	movl	%eax, 140(%rdx)	# D.13034, img.657_26->mb_y
	.loc 1 1232 0
	movq	img(%rip), %rcx	# img, img.659
	movq	img(%rip), %rax	# img, img.660
	movq	img(%rip), %rdx	# img, img.661
	movl	$0, 164(%rdx)	#, img.661_31->pix_c_y
	movl	164(%rdx), %edx	# img.661_31->pix_c_y, D.13034
	movl	%edx, 156(%rax)	# D.13034, img.660_30->pix_y
	movl	156(%rax), %eax	# img.660_30->pix_y, D.13034
	movl	%eax, 148(%rcx)	# D.13034, img.659_29->block_y
	.loc 1 1233 0
	movq	img(%rip), %rsi	# img, img.662
	movq	img(%rip), %rax	# img, img.663
	movq	img(%rip), %rdx	# img, img.664
	movq	img(%rip), %rcx	# img, img.665
	movl	$0, 160(%rcx)	#, img.665_37->pix_c_x
	movl	160(%rcx), %ecx	# img.665_37->pix_c_x, D.13034
	movl	%ecx, 96(%rdx)	# D.13034, img.664_36->block_c_x
	movl	96(%rdx), %edx	# img.664_36->block_c_x, D.13034
	movl	%edx, 152(%rax)	# D.13034, img.663_35->pix_x
	movl	152(%rax), %eax	# img.663_35->pix_x, D.13034
	movl	%eax, 144(%rsi)	# D.13034, img.662_34->block_x
	.loc 1 1235 0
	movq	img(%rip), %rax	# img, img.666
	movl	71908(%rax), %eax	# img.666_41->b_frame_to_code, D.13034
	testl	%eax, %eax	# D.13034
	jne	.L176	#,
	.loc 1 1238 0
	movq	img(%rip), %rax	# img, img.667
	movq	img(%rip), %rdx	# img, img.668
	movl	(%rdx), %ecx	# img.668_44->number, D.13034
	movq	input(%rip), %rdx	# input, input.669
	movl	20(%rdx), %edx	# input.669_46->jumpd, D.13034
	addl	$2, %edx	#, D.13034
	imull	%edx, %ecx	# D.13034, D.13034
	movq	img(%rip), %rdx	# img, img.670
	movl	71796(%rdx), %edx	# img.670_50->fld_type, D.13034
	addl	%ecx, %edx	# D.13034, D.13034
	movl	%edx, 71792(%rax)	# D.13034, img.667_43->tr
	.loc 1 1240 0
	movq	img(%rip), %rax	# img, img.671
	movl	71796(%rax), %eax	# img.671_53->fld_type, D.13034
	testl	%eax, %eax	# D.13034
	jne	.L177	#,
	.loc 1 1242 0
	movq	img(%rip), %rax	# img, img.672
	movq	img(%rip), %rdx	# img, img.673
	movl	71884(%rdx), %edx	# img.673_56->imgtr_next_P_fld, D.13034
	movl	%edx, 71888(%rax)	# D.13034, img.672_55->imgtr_last_P_fld
	.loc 1 1243 0
	movq	img(%rip), %rax	# img, img.674
	movq	img(%rip), %rdx	# img, img.675
	movl	71792(%rdx), %edx	# img.675_59->tr, D.13034
	movl	%edx, 71884(%rax)	# D.13034, img.674_58->imgtr_next_P_fld
.L177:
	.loc 1 1247 0
	movq	input(%rip), %rax	# input, input.676
	movl	2440(%rax), %eax	# input.676_61->last_frame, D.13034
	testl	%eax, %eax	# D.13034
	je	.L178	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.677
	movl	(%rax), %eax	# img.677_63->number, D.13034
	leal	1(%rax), %edx	#, D.13034
	movq	input(%rip), %rax	# input, input.678
	movl	8(%rax), %eax	# input.678_66->no_frames, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jne	.L178	#,
	.loc 1 1248 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.679
	movq	input(%rip), %rdx	# input, input.680
	movl	2440(%rdx), %edx	# input.680_69->last_frame, D.13034
	movl	%edx, 71792(%rax)	# D.13034, img.679_68->tr
.L178:
	.loc 1 1250 0
	movq	img(%rip), %rax	# img, img.681
	movl	(%rax), %eax	# img.681_71->number, D.13034
	testl	%eax, %eax	# D.13034
	je	.L179	#,
	.loc 1 1250 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.682
	movl	1236(%rax), %eax	# input.682_73->successive_Bframe, D.13034
	testl	%eax, %eax	# D.13034
	je	.L179	#,
	.loc 1 1251 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.683
	movl	71792(%rax), %eax	# img.683_75->tr, nextP_tr_fld.684
	movl	%eax, nextP_tr_fld(%rip)	# nextP_tr_fld.684, nextP_tr_fld
.L179:
	.loc 1 1254 0
	movq	input(%rip), %rax	# input, input.685
	movl	3236(%rax), %eax	# input.685_77->RCEnable, D.13034
	testl	%eax, %eax	# D.13034
	jne	.L180	#,
	.loc 1 1256 0
	movq	img(%rip), %rax	# img, img.686
	movl	24(%rax), %eax	# img.686_79->type, D.13034
	cmpl	$2, %eax	#, D.13034
	jne	.L181	#,
	.loc 1 1259 0
	movq	input(%rip), %rax	# input, input.687
	movl	2452(%rax), %eax	# input.687_81->qp2start, D.13034
	testl	%eax, %eax	# D.13034
	jle	.L182	#,
	.loc 1 1259 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.688
	movl	71792(%rax), %edx	# img.688_83->tr, D.13034
	movq	input(%rip), %rax	# input, input.689
	movl	2452(%rax), %eax	# input.689_85->qp2start, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jl	.L182	#,
	.loc 1 1260 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.690
	movq	input(%rip), %rdx	# input, input.691
	movl	2456(%rdx), %edx	# input.691_88->qp02, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.690_87->qp
	jmp	.L180	#
.L182:
	.loc 1 1263 0
	movq	img(%rip), %rax	# img, img.692
	movq	input(%rip), %rdx	# input, input.693
	movl	12(%rdx), %edx	# input.693_91->qp0, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.692_90->qp
	jmp	.L180	#
.L181:
	.loc 1 1268 0
	movq	input(%rip), %rax	# input, input.694
	movl	2452(%rax), %eax	# input.694_93->qp2start, D.13034
	testl	%eax, %eax	# D.13034
	jle	.L184	#,
	.loc 1 1268 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.695
	movl	71792(%rax), %edx	# img.695_95->tr, D.13034
	movq	input(%rip), %rax	# input, input.696
	movl	2452(%rax), %eax	# input.696_97->qp2start, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jl	.L184	#,
	.loc 1 1269 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.697
	movq	input(%rip), %rdx	# input, input.698
	movl	2444(%rdx), %edx	# input.698_100->qpN2, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.697_99->qp
	jmp	.L185	#
.L184:
	.loc 1 1272 0
	movq	img(%rip), %rax	# img, img.699
	movq	input(%rip), %rdx	# input, input.700
	movl	16(%rdx), %edx	# input.700_103->qpN, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.699_102->qp
.L185:
	.loc 1 1273 0
	movq	img(%rip), %rax	# img, img.701
	movl	24(%rax), %eax	# img.701_105->type, D.13034
	cmpl	$3, %eax	#, D.13034
	jne	.L180	#,
	.loc 1 1275 0
	movq	img(%rip), %rax	# img, img.702
	movq	input(%rip), %rdx	# input, input.703
	movl	1276(%rdx), %edx	# input.703_108->qpsp, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.702_107->qp
	.loc 1 1276 0
	movq	img(%rip), %rax	# img, img.704
	movq	input(%rip), %rdx	# input, input.705
	movl	1280(%rdx), %edx	# input.705_111->qpsp_pred, D.13034
	movl	%edx, 44(%rax)	# D.13034, img.704_110->qpsp
.L180:
	.loc 1 1281 0
	movq	img(%rip), %rax	# img, img.706
	movq	img(%rip), %rdx	# img, img.707
	movl	88(%rdx), %edx	# img.707_114->mb_y_upd, D.13034
	movl	%edx, 92(%rax)	# D.13034, img.706_113->mb_y_intra
	.loc 1 1283 0
	movq	input(%rip), %rax	# input, input.708
	movl	76(%rax), %eax	# input.708_116->intra_upd, D.13034
	testl	%eax, %eax	# D.13034
	jle	.L187	#,
	.loc 1 1285 0
	movq	img(%rip), %rcx	# img, img.709
	.loc 1 1286 0
	movq	img(%rip), %rax	# img, img.710
	movl	(%rax), %eax	# img.710_119->number, D.13034
	movq	input(%rip), %rdx	# input, input.711
	movl	76(%rdx), %edi	# input.711_121->intra_upd, D.13034
	cltd
	idivl	%edi	# D.13034
	movl	%eax, %edx	# tmp415, D.13034
	movq	img(%rip), %rax	# img, img.712
	movl	52(%rax), %eax	# img.712_124->width, D.13034
	leal	15(%rax), %esi	#, tmp418
	testl	%eax, %eax	# tmp417
	cmovs	%esi, %eax	# tmp418,, tmp417
	sarl	$4, %eax	#, tmp419
	movl	%eax, %esi	# tmp419, D.13034
	movl	%edx, %eax	# D.13034, tmp421
	cltd
	idivl	%esi	# D.13034
	movl	%edx, %eax	# tmp420, D.13034
	.loc 1 1285 0
	movl	%eax, 88(%rcx)	# D.13034, img.709_118->mb_y_upd
	jmp	.L187	#
.L176:
	.loc 1 1291 0
	movq	img(%rip), %rax	# img, img.713
	movq	input(%rip), %rdx	# input, input.714
	movl	20(%rdx), %edx	# input.714_129->jumpd, D.13034
	addl	$2, %edx	#, D.13034
	movl	%edx, 71904(%rax)	# D.13034, img.713_128->p_interval
	.loc 1 1292 0
	movq	img(%rip), %rax	# img, img.715
	movl	(%rax), %eax	# img.715_132->number, D.13034
	leal	-1(%rax), %edx	#, D.13034
	movq	img(%rip), %rax	# img, img.716
	movl	71904(%rax), %eax	# img.716_135->p_interval, D.13034
	imull	%eax, %edx	# D.13034, D.13034
	movq	img(%rip), %rax	# img, img.717
	movl	71796(%rax), %eax	# img.717_138->fld_type, D.13034
	addl	%edx, %eax	# D.13034, tmp422
	movl	%eax, -4(%rbp)	# tmp422, prevP_no
	.loc 1 1293 0
	movq	img(%rip), %rax	# img, img.718
	movl	(%rax), %edx	# img.718_141->number, D.13034
	movq	img(%rip), %rax	# img, img.719
	movl	71904(%rax), %eax	# img.719_143->p_interval, D.13034
	imull	%eax, %edx	# D.13034, D.13034
	movq	img(%rip), %rax	# img, img.720
	movl	71796(%rax), %eax	# img.720_146->fld_type, D.13034
	addl	%edx, %eax	# D.13034, tmp423
	movl	%eax, -8(%rbp)	# tmp423, nextP_no
	.loc 1 1295 0
	movq	img(%rip), %rax	# img, img.721
	movl	71796(%rax), %eax	# img.721_149->fld_type, D.13034
	testl	%eax, %eax	# D.13034
	jne	.L188	#,
	.loc 1 1297 0
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.722
	movl	-4(%rbp), %edx	# prevP_no, tmp424
	addl	$1, %edx	#, D.13034
	movl	%edx, (%rax)	# D.13034, *last_P_no.722_151
	.loc 1 1298 0
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.723
	leaq	4(%rax), %rdx	#, D.13035
	movl	-4(%rbp), %eax	# prevP_no, tmp425
	movl	%eax, (%rdx)	# tmp425, *_154
	.loc 1 1299 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L189	#
.L190:
	.loc 1 1301 0 discriminator 2
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.724
	movl	-12(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, D.13036
	salq	$3, %rdx	#, D.13036
	addq	%rax, %rdx	# last_P_no.724, D.13035
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.725
	movl	-12(%rbp), %ecx	# i, tmp427
	movslq	%ecx, %rcx	# tmp427, D.13036
	salq	$3, %rcx	#, D.13036
	subq	$8, %rcx	#, D.13037
	addq	%rcx, %rax	# D.13037, D.13035
	movl	(%rax), %ecx	# *_166, D.13034
	movq	img(%rip), %rax	# img, img.726
	movl	71904(%rax), %eax	# img.726_168->p_interval, D.13034
	subl	%eax, %ecx	# D.13034, D.13034
	movl	%ecx, %eax	# D.13034, D.13034
	movl	%eax, (%rdx)	# D.13034, *_161
	.loc 1 1302 0 discriminator 2
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.727
	movl	-12(%rbp), %edx	# i, tmp428
	movslq	%edx, %rdx	# tmp428, D.13037
	salq	$3, %rdx	#, D.13037
	addq	$4, %rdx	#, D.13037
	addq	%rax, %rdx	# last_P_no.727, D.13035
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.728
	movl	-12(%rbp), %ecx	# i, tmp429
	movslq	%ecx, %rcx	# tmp429, D.13036
	salq	$3, %rcx	#, D.13036
	subq	$4, %rcx	#, D.13037
	addq	%rcx, %rax	# D.13037, D.13035
	movl	(%rax), %ecx	# *_180, D.13034
	movq	img(%rip), %rax	# img, img.729
	movl	71904(%rax), %eax	# img.729_182->p_interval, D.13034
	subl	%eax, %ecx	# D.13034, D.13034
	movl	%ecx, %eax	# D.13034, D.13034
	movl	%eax, (%rdx)	# D.13034, *_175
	.loc 1 1299 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L189:
	.loc 1 1299 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.730
	movl	72376(%rax), %eax	# img.730_156->buf_cycle, D.13034
	cmpl	-12(%rbp), %eax	# i, D.13034
	jge	.L190	#,
	jmp	.L191	#
.L188:
	.loc 1 1307 0 is_stmt 1
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.731
	movl	-8(%rbp), %edx	# nextP_no, tmp430
	subl	$1, %edx	#, D.13034
	movl	%edx, (%rax)	# D.13034, *last_P_no.731_186
	.loc 1 1308 0
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.732
	leaq	4(%rax), %rdx	#, D.13035
	movl	-4(%rbp), %eax	# prevP_no, tmp431
	movl	%eax, (%rdx)	# tmp431, *_189
	.loc 1 1309 0
	movl	$1, -12(%rbp)	#, i
	jmp	.L192	#
.L193:
	.loc 1 1311 0 discriminator 2
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.733
	movl	-12(%rbp), %edx	# i, tmp432
	movslq	%edx, %rdx	# tmp432, D.13036
	salq	$3, %rdx	#, D.13036
	addq	%rax, %rdx	# last_P_no.733, D.13035
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.734
	movl	-12(%rbp), %ecx	# i, tmp433
	movslq	%ecx, %rcx	# tmp433, D.13036
	salq	$3, %rcx	#, D.13036
	subq	$8, %rcx	#, D.13037
	addq	%rcx, %rax	# D.13037, D.13035
	movl	(%rax), %ecx	# *_201, D.13034
	movq	img(%rip), %rax	# img, img.735
	movl	71904(%rax), %eax	# img.735_203->p_interval, D.13034
	subl	%eax, %ecx	# D.13034, D.13034
	movl	%ecx, %eax	# D.13034, D.13034
	movl	%eax, (%rdx)	# D.13034, *_196
	.loc 1 1312 0 discriminator 2
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.736
	movl	-12(%rbp), %edx	# i, tmp434
	movslq	%edx, %rdx	# tmp434, D.13037
	salq	$3, %rdx	#, D.13037
	addq	$4, %rdx	#, D.13037
	addq	%rax, %rdx	# last_P_no.736, D.13035
	movq	last_P_no(%rip), %rax	# last_P_no, last_P_no.737
	movl	-12(%rbp), %ecx	# i, tmp435
	movslq	%ecx, %rcx	# tmp435, D.13036
	salq	$3, %rcx	#, D.13036
	subq	$4, %rcx	#, D.13037
	addq	%rcx, %rax	# D.13037, D.13035
	movl	(%rax), %ecx	# *_215, D.13034
	movq	img(%rip), %rax	# img, img.738
	movl	71904(%rax), %eax	# img.738_217->p_interval, D.13034
	subl	%eax, %ecx	# D.13034, D.13034
	movl	%ecx, %eax	# D.13034, D.13034
	movl	%eax, (%rdx)	# D.13034, *_210
	.loc 1 1309 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L192:
	.loc 1 1309 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.739
	movl	72376(%rax), %eax	# img.739_191->buf_cycle, D.13034
	cmpl	-12(%rbp), %eax	# i, D.13034
	jge	.L193	#,
.L191:
	.loc 1 1316 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.740
	movl	2440(%rax), %eax	# input.740_221->last_frame, D.13034
	testl	%eax, %eax	# D.13034
	je	.L194	#,
	.loc 1 1316 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.741
	movl	(%rax), %eax	# img.741_223->number, D.13034
	leal	1(%rax), %edx	#, D.13034
	movq	input(%rip), %rax	# input, input.742
	movl	8(%rax), %eax	# input.742_226->no_frames, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jne	.L194	#,
	.loc 1 1318 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.743
	movl	2440(%rax), %eax	# input.743_228->last_frame, tmp436
	movl	%eax, -8(%rbp)	# tmp436, nextP_no
	.loc 1 1319 0
	movq	img(%rip), %rax	# img, img.744
	movl	-4(%rbp), %edx	# prevP_no, tmp437
	movl	-8(%rbp), %ecx	# nextP_no, tmp438
	subl	%edx, %ecx	# tmp437, D.13034
	movl	%ecx, %edx	# D.13034, D.13034
	movl	%edx, 71904(%rax)	# D.13034, img.744_230->p_interval
.L194:
	.loc 1 1322 0
	movq	img(%rip), %rax	# img, img.745
	.loc 1 1323 0
	movq	input(%rip), %rdx	# input, input.746
	movl	20(%rdx), %edx	# input.746_233->jumpd, D.13034
	addl	$1, %edx	#, D.13034
	cvtsi2sd	%edx, %xmm0	# D.13034, D.13038
	movq	input(%rip), %rdx	# input, input.747
	movl	1236(%rdx), %edx	# input.747_237->successive_Bframe, D.13034
	cvtsi2sd	%edx, %xmm1	# D.13034, D.13038
	movsd	.LC6(%rip), %xmm2	#, tmp439
	addsd	%xmm2, %xmm1	# tmp439, D.13038
	divsd	%xmm1, %xmm0	# D.13038, D.13038
	.loc 1 1322 0
	movsd	%xmm0, 71896(%rax)	# D.13038, img.745_232->b_interval
	.loc 1 1325 0
	movq	input(%rip), %rax	# input, input.748
	movl	1320(%rax), %eax	# input.748_242->PyramidCoding, D.13034
	cmpl	$3, %eax	#, D.13034
	jne	.L195	#,
	.loc 1 1326 0
	movq	img(%rip), %rdx	# img, img.749
	movabsq	$4607182418800017408, %rax	#, tmp440
	movq	%rax, 71896(%rdx)	# tmp440, img.749_244->b_interval
.L195:
	.loc 1 1328 0
	movq	input(%rip), %rax	# input, input.750
	movl	1320(%rax), %eax	# input.750_245->PyramidCoding, D.13034
	testl	%eax, %eax	# D.13034
	je	.L196	#,
	.loc 1 1329 0
	movq	img(%rip), %rcx	# img, img.751
	movq	img(%rip), %rax	# img, img.752
	movsd	71896(%rax), %xmm1	# img.752_248->b_interval, D.13038
	movsd	.LC6(%rip), %xmm0	#, tmp441
	addsd	%xmm0, %xmm1	# tmp441, D.13038
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.753
	movq	img(%rip), %rax	# img, img.754
	movl	71908(%rax), %eax	# img.754_252->b_frame_to_code, D.13034
	movslq	%eax, %rdx	# D.13034, D.13036
	movq	%rdx, %rax	# D.13036, tmp442
	addq	%rax, %rax	# tmp442
	addq	%rdx, %rax	# D.13036, tmp442
	salq	$3, %rax	#, tmp443
	subq	$24, %rax	#, D.13037
	addq	%rsi, %rax	# gop_structure.753, D.13039
	movl	4(%rax), %eax	# _257->display_no, D.13034
	addl	$1, %eax	#, D.13034
	cvtsi2sd	%eax, %xmm0	# D.13034, D.13038
	mulsd	%xmm1, %xmm0	# D.13038, D.13038
	cvttsd2si	%xmm0, %edx	# D.13038, D.13034
	movl	-4(%rbp), %eax	# prevP_no, tmp444
	addl	%edx, %eax	# D.13034, D.13034
	movl	%eax, 71792(%rcx)	# D.13034, img.751_247->tr
	jmp	.L197	#
.L196:
	.loc 1 1331 0
	movq	img(%rip), %rax	# img, img.755
	movq	img(%rip), %rdx	# img, img.756
	movsd	71896(%rdx), %xmm1	# img.756_265->b_interval, D.13038
	movsd	.LC6(%rip), %xmm0	#, tmp445
	addsd	%xmm0, %xmm1	# tmp445, D.13038
	movq	img(%rip), %rdx	# img, img.757
	movl	71908(%rdx), %edx	# img.757_268->b_frame_to_code, D.13034
	cvtsi2sd	%edx, %xmm0	# D.13034, D.13038
	mulsd	%xmm1, %xmm0	# D.13038, D.13038
	cvttsd2si	%xmm0, %ecx	# D.13038, D.13034
	movl	-4(%rbp), %edx	# prevP_no, tmp446
	addl	%ecx, %edx	# D.13034, D.13034
	movl	%edx, 71792(%rax)	# D.13034, img.755_264->tr
.L197:
	.loc 1 1334 0
	movq	img(%rip), %rax	# img, img.758
	movl	71792(%rax), %eax	# img.758_274->tr, D.13034
	cmpl	-8(%rbp), %eax	# nextP_no, D.13034
	jl	.L198	#,
	.loc 1 1335 0
	movq	img(%rip), %rax	# img, img.759
	movl	-8(%rbp), %edx	# nextP_no, tmp447
	subl	$1, %edx	#, D.13034
	movl	%edx, 71792(%rax)	# D.13034, img.759_276->tr
.L198:
	.loc 1 1337 0
	movq	input(%rip), %rax	# input, input.760
	movl	3236(%rax), %eax	# input.760_278->RCEnable, D.13034
	testl	%eax, %eax	# D.13034
	jne	.L199	#,
	.loc 1 1337 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.761
	movl	1320(%rax), %eax	# input.761_280->PyramidCoding, D.13034
	cmpl	$3, %eax	#, D.13034
	je	.L199	#,
	.loc 1 1340 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.762
	movl	2452(%rax), %eax	# input.762_282->qp2start, D.13034
	testl	%eax, %eax	# D.13034
	jle	.L200	#,
	.loc 1 1340 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.763
	movl	71792(%rax), %edx	# img.763_284->tr, D.13034
	movq	input(%rip), %rax	# input, input.764
	movl	2452(%rax), %eax	# input.764_286->qp2start, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jl	.L200	#,
	.loc 1 1341 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.765
	movq	input(%rip), %rdx	# input, input.766
	movl	2448(%rdx), %edx	# input.766_289->qpB2, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.765_288->qp
	jmp	.L201	#
.L200:
	.loc 1 1344 0
	movq	img(%rip), %rax	# img, img.767
	movq	input(%rip), %rdx	# input, input.768
	movl	1240(%rdx), %edx	# input.768_292->qpB, D.13034
	movl	%edx, 40(%rax)	# D.13034, img.767_291->qp
.L201:
	.loc 1 1345 0
	movq	img(%rip), %rax	# img, img.769
	movl	72496(%rax), %eax	# img.769_294->nal_reference_idc, D.13034
	testl	%eax, %eax	# D.13034
	je	.L202	#,
	.loc 1 1348 0
	movq	input(%rip), %rax	# input, input.770
	movl	2452(%rax), %eax	# input.770_296->qp2start, D.13034
	testl	%eax, %eax	# D.13034
	jle	.L203	#,
	.loc 1 1348 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.771
	movl	71792(%rax), %edx	# img.771_298->tr, D.13034
	movq	input(%rip), %rax	# input, input.772
	movl	2452(%rax), %eax	# input.772_300->qp2start, D.13034
	cmpl	%eax, %edx	# D.13034, D.13034
	jl	.L203	#,
	.loc 1 1349 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.773
	movq	input(%rip), %rax	# input, input.775
	movl	2448(%rax), %ecx	# input.775_303->qpB2, D.13034
	movq	input(%rip), %rax	# input, input.776
	movl	2460(%rax), %eax	# input.776_305->qpBRS2Offset, D.13034
	addl	%ecx, %eax	# D.13034, D.13034
	testl	%eax, %eax	# D.13034
	js	.L204	#,
	.loc 1 1349 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.777
	movl	2448(%rax), %ecx	# input.777_308->qpB2, D.13034
	movq	input(%rip), %rax	# input, input.778
	movl	2460(%rax), %eax	# input.778_310->qpBRS2Offset, D.13034
	addl	%ecx, %eax	# D.13034, D.13034
	movl	$51, %ecx	#, tmp448
	cmpl	$51, %eax	#, D.13034
	cmovg	%ecx, %eax	# D.13034,, tmp448, iftmp.774
	jmp	.L205	#
.L204:
	.loc 1 1349 0 discriminator 2
	movl	$0, %eax	#, iftmp.774
.L205:
	.loc 1 1349 0 discriminator 3
	movl	%eax, 40(%rdx)	# iftmp.774, img.773_302->qp
	jmp	.L202	#
.L203:
	.loc 1 1352 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.779
	movq	input(%rip), %rax	# input, input.781
	movl	1240(%rax), %ecx	# input.781_316->qpB, D.13034
	movq	input(%rip), %rax	# input, input.782
	movl	1244(%rax), %eax	# input.782_318->qpBRSOffset, D.13034
	addl	%ecx, %eax	# D.13034, D.13034
	testl	%eax, %eax	# D.13034
	js	.L206	#,
	.loc 1 1352 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.783
	movl	1240(%rax), %ecx	# input.783_321->qpB, D.13034
	movq	input(%rip), %rax	# input, input.784
	movl	1244(%rax), %eax	# input.784_323->qpBRSOffset, D.13034
	addl	%ecx, %eax	# D.13034, D.13034
	movl	$51, %ecx	#, tmp449
	cmpl	$51, %eax	#, D.13034
	cmovg	%ecx, %eax	# D.13034,, tmp449, iftmp.780
	jmp	.L207	#
.L206:
	.loc 1 1352 0 discriminator 2
	movl	$0, %eax	#, iftmp.780
.L207:
	.loc 1 1352 0 discriminator 3
	movl	%eax, 40(%rdx)	# iftmp.780, img.779_315->qp
	.loc 1 1345 0 is_stmt 1 discriminator 3
	jmp	.L187	#
.L202:
	.loc 1 1345 0 is_stmt 0 discriminator 1
	jmp	.L187	#
.L199:
	.loc 1 1356 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.785
	movl	1320(%rax), %eax	# input.785_328->PyramidCoding, D.13034
	cmpl	$3, %eax	#, D.13034
	jne	.L187	#,
	.loc 1 1358 0
	movq	img(%rip), %rcx	# img, img.786
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.787
	movq	img(%rip), %rax	# img, img.788
	movl	71908(%rax), %eax	# img.788_332->b_frame_to_code, D.13034
	movslq	%eax, %rdx	# D.13034, D.13036
	movq	%rdx, %rax	# D.13036, tmp450
	addq	%rax, %rax	# tmp450
	addq	%rdx, %rax	# D.13036, tmp450
	salq	$3, %rax	#, tmp451
	subq	$24, %rax	#, D.13037
	addq	%rsi, %rax	# gop_structure.787, D.13039
	movl	12(%rax), %eax	# _337->slice_qp, D.13034
	movl	%eax, 40(%rcx)	# D.13034, img.786_330->qp
.L187:
	.loc 1 1363 0
	movq	input(%rip), %rdx	# input, input.789
	movq	input(%rip), %rax	# input, input.790
	movl	20(%rax), %eax	# input.790_340->jumpd, D.13034
	movl	%eax, %ecx	# D.13034, tmp452
	shrl	$31, %ecx	#, tmp452
	addl	%ecx, %eax	# tmp452, tmp453
	sarl	%eax	# tmp454
	movl	%eax, 20(%rdx)	# D.13034, input.789_339->jumpd
	.loc 1 1364 0
	movq	input(%rip), %rdx	# input, input.791
	movq	input(%rip), %rax	# input, input.792
	movl	1236(%rax), %eax	# input.792_344->successive_Bframe, D.13034
	movl	%eax, %ecx	# D.13034, tmp455
	shrl	$31, %ecx	#, tmp455
	addl	%ecx, %eax	# tmp455, tmp456
	sarl	%eax	# tmp457
	movl	%eax, 1236(%rdx)	# D.13034, input.791_343->successive_Bframe
	.loc 1 1365 0
	movq	img(%rip), %rax	# img, img.793
	movq	img(%rip), %rdx	# img, img.794
	movl	72376(%rdx), %edx	# img.794_348->buf_cycle, D.13034
	addl	%edx, %edx	# D.13034
	movl	%edx, 72376(%rax)	# D.13034, img.793_347->buf_cycle
	.loc 1 1366 0
	movq	img(%rip), %rax	# img, img.795
	movq	img(%rip), %rdx	# img, img.796
	movl	(%rdx), %edx	# img.796_352->number, D.13034
	leal	(%rdx,%rdx), %ecx	#, D.13034
	movq	img(%rip), %rdx	# img, img.797
	movl	71796(%rdx), %edx	# img.797_355->fld_type, D.13034
	addl	%ecx, %edx	# D.13034, D.13034
	movl	%edx, (%rax)	# D.13034, img.795_351->number
	.loc 1 1367 0
	movq	img(%rip), %rdx	# img, img.798
	movq	img(%rip), %rax	# img, img.799
	movl	52(%rax), %ecx	# img.799_359->width, D.13034
	movq	img(%rip), %rax	# img, img.800
	movl	60(%rax), %eax	# img.800_361->height, D.13034
	imull	%ecx, %eax	# D.13034, D.13034
	leal	255(%rax), %ecx	#, tmp459
	testl	%eax, %eax	# tmp458
	cmovs	%ecx, %eax	# tmp459,, tmp458
	sarl	$8, %eax	#, tmp460
	movl	%eax, 16(%rdx)	# D.13034, img.798_358->total_number_mb
	.loc 1 1368 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	init_field, .-init_field
	.type	GenerateFullPelRepresentation, @function
GenerateFullPelRepresentation:
.LFB16:
	.loc 1 1385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# Fourthpel, Fourthpel
	movq	%rsi, -32(%rbp)	# Fullpel, Fullpel
	movl	%edx, -36(%rbp)	# xsize, xsize
	movl	%ecx, -40(%rbp)	# ysize, ysize
	.loc 1 1388 0
	movl	$0, -4(%rbp)	#, y
	jmp	.L209	#
.L212:
	.loc 1 1389 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L210	#
.L211:
	.loc 1 1390 0 discriminator 2
	movl	-8(%rbp), %eax	# x, tmp63
	leal	0(,%rax,4), %edi	#, D.13040
	movl	-4(%rbp), %eax	# y, tmp64
	leal	0(,%rax,4), %esi	#, D.13040
	movl	-36(%rbp), %ecx	# xsize, tmp65
	movl	-40(%rbp), %edx	# ysize, tmp66
	movq	-24(%rbp), %rax	# Fourthpel, tmp67
	movl	%ecx, %r8d	# tmp65,
	movl	%edx, %ecx	# tmp66,
	movl	%edi, %edx	# D.13040,
	movq	%rax, %rdi	# tmp67,
	call	FastPelY_14	#
	movzwl	%ax, %ecx	# D.13041, D.13040
	movl	-36(%rbp), %edi	# xsize, tmp68
	movl	-8(%rbp), %edx	# x, tmp69
	movl	-4(%rbp), %esi	# y, tmp70
	movq	-32(%rbp), %rax	# Fullpel, tmp71
	movl	%edi, %r8d	# tmp68,
	movq	%rax, %rdi	# tmp71,
	call	PutPel_11	#
	.loc 1 1389 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L210:
	.loc 1 1389 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp72
	cmpl	-36(%rbp), %eax	# xsize, tmp72
	jl	.L211	#,
	.loc 1 1388 0 is_stmt 1
	addl	$1, -4(%rbp)	#, y
.L209:
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# y, tmp73
	cmpl	-40(%rbp), %eax	# ysize, tmp73
	jl	.L212	#,
	.loc 1 1391 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	GenerateFullPelRepresentation, .-GenerateFullPelRepresentation
	.section	.rodata
	.align 8
.LC7:
	.string	"alloc_storable_picture: s->imgY_11"
	.align 8
.LC8:
	.string	"alloc_storable_picture: s->imgY_11_w"
	.text
	.globl	UnifiedOneForthPix
	.type	UnifiedOneForthPix, @function
UnifiedOneForthPix:
.LFB17:
	.loc 1 1407 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$80, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)	# s, s
	.loc 1 1414 0
	movq	-88(%rbp), %rax	# s, tmp703
	movq	6424(%rax), %rax	# s_25(D)->imgY, tmp704
	movq	%rax, -40(%rbp)	# tmp704, imgY
	.loc 1 1416 0
	movq	-88(%rbp), %rax	# s, tmp705
	movl	6392(%rax), %eax	# s_25(D)->size_x, tmp706
	movl	%eax, -72(%rbp)	# tmp706, img_width
	.loc 1 1417 0
	movq	-88(%rbp), %rax	# s, tmp707
	movl	6396(%rax), %eax	# s_25(D)->size_y, tmp708
	movl	%eax, -68(%rbp)	# tmp708, img_height
	.loc 1 1420 0
	movq	-88(%rbp), %rax	# s, tmp709
	movq	6448(%rax), %rax	# s_25(D)->imgY_ups, D.13042
	testq	%rax, %rax	# D.13042
	jne	.L214	#,
	.loc 1 1420 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp710
	movq	6432(%rax), %rax	# s_25(D)->imgY_11, D.13043
	testq	%rax, %rax	# D.13043
	je	.L215	#,
.L214:
	.loc 1 1421 0 is_stmt 1
	jmp	.L213	#
.L215:
	.loc 1 1423 0
	movq	-88(%rbp), %rax	# s, tmp711
	movl	6392(%rax), %edx	# s_25(D)->size_x, D.13044
	movq	-88(%rbp), %rax	# s, tmp712
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	imull	%edx, %eax	# D.13044, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	movq	%rax, %rdi	# D.13045,
	call	malloc	#
	movq	%rax, %rdx	# tmp713, D.13046
	movq	-88(%rbp), %rax	# s, tmp714
	movq	%rdx, 6432(%rax)	# D.13046, s_25(D)->imgY_11
	.loc 1 1424 0
	movq	-88(%rbp), %rax	# s, tmp715
	movq	6432(%rax), %rax	# s_25(D)->imgY_11, D.13043
	testq	%rax, %rax	# D.13043
	jne	.L217	#,
	.loc 1 1425 0
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L217:
	.loc 1 1427 0
	movq	-88(%rbp), %rax	# s, tmp716
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	addl	$8, %eax	#, D.13044
	leal	0(,%rax,4), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp717
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$8, %eax	#, D.13044
	leal	0(,%rax,4), %ecx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp718
	addq	$6448, %rax	#, D.13047
	movl	%ecx, %esi	# D.13044,
	movq	%rax, %rdi	# D.13047,
	call	get_mem2Dpel	#
	.loc 1 1429 0
	movq	input(%rip), %rax	# input, input.801
	movl	1284(%rax), %eax	# input.801_45->WeightedPrediction, D.13044
	testl	%eax, %eax	# D.13044
	jne	.L218	#,
	.loc 1 1429 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.802
	movl	1288(%rax), %eax	# input.802_47->WeightedBiprediction, D.13044
	testl	%eax, %eax	# D.13044
	jne	.L218	#,
	movq	input(%rip), %rax	# input, input.803
	movl	60(%rax), %eax	# input.803_49->GenerateMultiplePPS, D.13044
	testl	%eax, %eax	# D.13044
	je	.L219	#,
.L218:
	.loc 1 1431 0 is_stmt 1
	movq	-88(%rbp), %rax	# s, tmp719
	movl	6392(%rax), %edx	# s_25(D)->size_x, D.13044
	movq	-88(%rbp), %rax	# s, tmp720
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	imull	%edx, %eax	# D.13044, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	movq	%rax, %rdi	# D.13045,
	call	malloc	#
	movq	%rax, %rdx	# tmp721, D.13046
	movq	-88(%rbp), %rax	# s, tmp722
	movq	%rdx, 6440(%rax)	# D.13046, s_25(D)->imgY_11_w
	.loc 1 1432 0
	movq	-88(%rbp), %rax	# s, tmp723
	movq	6440(%rax), %rax	# s_25(D)->imgY_11_w, D.13043
	testq	%rax, %rax	# D.13043
	jne	.L220	#,
	.loc 1 1433 0
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L220:
	.loc 1 1434 0
	movq	-88(%rbp), %rax	# s, tmp724
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	addl	$8, %eax	#, D.13044
	leal	0(,%rax,4), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp725
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$8, %eax	#, D.13044
	leal	0(,%rax,4), %ecx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp726
	addq	$6456, %rax	#, D.13047
	movl	%ecx, %esi	# D.13044,
	movq	%rax, %rdi	# D.13047,
	call	get_mem2Dpel	#
.L219:
	.loc 1 1436 0
	movq	-88(%rbp), %rax	# s, tmp727
	movq	6448(%rax), %rax	# s_25(D)->imgY_ups, tmp728
	movq	%rax, -32(%rbp)	# tmp728, out4Y
	.loc 1 1437 0
	movq	-88(%rbp), %rax	# s, tmp729
	movq	6432(%rax), %rax	# s_25(D)->imgY_11, tmp730
	movq	%rax, -24(%rbp)	# tmp730, ref11
	.loc 1 1439 0
	movl	$-4, -76(%rbp)	#, j
	jmp	.L221	#
.L224:
	.loc 1 1441 0
	movl	$-4, -80(%rbp)	#, i
	jmp	.L222	#
.L223:
	.loc 1 1443 0 discriminator 2
	movq	-88(%rbp), %rax	# s, tmp731
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	leal	-1(%rax), %edx	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp732
	cmpl	%eax, %edx	# tmp732, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp734
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp734, tmp733
	movl	%eax, -64(%rbp)	# tmp733, jj
	.loc 1 1445 0 discriminator 2
	movl	$20, %ecx	#, D.13044
	.loc 1 1446 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp735
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp736
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rsi	# *_80, D.13043
	movq	-88(%rbp), %rax	# s, tmp737
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	leal	-1(%rax), %edx	#, D.13044
	movl	-80(%rbp), %eax	# i, tmp738
	cmpl	%eax, %edx	# tmp738, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp739
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp739, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rsi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_88, D.13048
	movzwl	%ax, %esi	# D.13048, D.13044
	.loc 1 1447 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp740
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp741
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rdi	# *_93, D.13043
	movl	-80(%rbp), %eax	# i, tmp742
	leal	1(%rax), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp743
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	subl	$1, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp744
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp744, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rdi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_102, D.13048
	.loc 1 1446 0 discriminator 2
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%esi, %eax	# D.13044, D.13044
	.loc 1 1445 0 discriminator 2
	imull	%eax, %ecx	# D.13044, D.13044
	.loc 1 1448 0 discriminator 2
	movl	$-5, %esi	#, D.13044
	.loc 1 1449 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp745
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp746
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rdi	# *_110, D.13043
	movl	-80(%rbp), %eax	# i, tmp747
	leal	-1(%rax), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp748
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	subl	$1, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp749
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp749, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rdi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_119, D.13048
	movzwl	%ax, %edi	# D.13048, D.13044
	.loc 1 1450 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp750
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp751
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %r8	# *_124, D.13043
	movl	-80(%rbp), %eax	# i, tmp752
	leal	2(%rax), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp753
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	subl	$1, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp754
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp754, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%r8, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_133, D.13048
	.loc 1 1449 0 discriminator 2
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%edi, %eax	# D.13044, D.13044
	.loc 1 1448 0 discriminator 2
	imull	%esi, %eax	# D.13044, D.13044
	.loc 1 1447 0 discriminator 2
	leal	(%rcx,%rax), %r8d	#, D.13044
	.loc 1 1451 0 discriminator 2
	movl	$1, %ecx	#, D.13044
	.loc 1 1452 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp755
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp756
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rsi	# *_142, D.13043
	movl	-80(%rbp), %eax	# i, tmp757
	leal	-2(%rax), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp758
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	subl	$1, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp759
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp759, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rsi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_151, D.13048
	movzwl	%ax, %esi	# D.13048, D.13044
	.loc 1 1453 0 discriminator 2
	movl	-64(%rbp), %eax	# jj, tmp760
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp761
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rdi	# *_156, D.13043
	movl	-80(%rbp), %eax	# i, tmp762
	leal	3(%rax), %edx	#, D.13044
	movq	-88(%rbp), %rax	# s, tmp763
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	subl	$1, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp764
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp764, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rdi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_165, D.13048
	.loc 1 1452 0 discriminator 2
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%esi, %eax	# D.13044, D.13044
	.loc 1 1451 0 discriminator 2
	imull	%ecx, %eax	# D.13044, D.13044
	.loc 1 1444 0 discriminator 2
	addl	%r8d, %eax	# D.13044, tmp765
	movl	%eax, -60(%rbp)	# tmp765, is
	.loc 1 1454 0 discriminator 2
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.804
	movl	-76(%rbp), %edx	# j, tmp766
	movslq	%edx, %rdx	# tmp766, D.13049
	addq	$4, %rdx	#, D.13049
	salq	$3, %rdx	#, D.13049
	addq	%rdx, %rax	# D.13049, D.13050
	movq	(%rax), %rax	# *_175, D.13051
	movl	-80(%rbp), %edx	# i, tmp767
	addl	$4, %edx	#, D.13044
	movslq	%edx, %rdx	# D.13044, D.13045
	salq	$3, %rdx	#, D.13045
	leaq	(%rax,%rdx), %rcx	#, D.13051
	movl	-64(%rbp), %eax	# jj, tmp768
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13045
	movq	-40(%rbp), %rax	# imgY, tmp769
	addq	%rdx, %rax	# D.13045, D.13042
	movq	(%rax), %rsi	# *_183, D.13043
	movq	-88(%rbp), %rax	# s, tmp770
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	leal	-1(%rax), %edx	#, D.13044
	movl	-80(%rbp), %eax	# i, tmp771
	cmpl	%eax, %edx	# tmp771, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	movl	$0, %edx	#, tmp772
	testl	%eax, %eax	# D.13044
	cmovs	%edx, %eax	# D.13044,, tmp772, D.13044
	cltq
	addq	%rax, %rax	# D.13045
	addq	%rsi, %rax	# D.13043, D.13043
	movzwl	(%rax), %eax	# *_191, D.13048
	movzwl	%ax, %eax	# D.13048, D.13044
	sall	$10, %eax	#, D.13044
	movl	%eax, (%rcx)	# D.13044, *_180
	.loc 1 1455 0 discriminator 2
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.805
	movl	-76(%rbp), %edx	# j, tmp773
	movslq	%edx, %rdx	# tmp773, D.13049
	addq	$4, %rdx	#, D.13049
	salq	$3, %rdx	#, D.13049
	addq	%rdx, %rax	# D.13049, D.13050
	movq	(%rax), %rax	# *_199, D.13051
	movl	-80(%rbp), %edx	# i, tmp774
	addl	$4, %edx	#, D.13044
	movslq	%edx, %rdx	# D.13044, D.13049
	salq	$3, %rdx	#, D.13049
	addq	$4, %rdx	#, D.13049
	addq	%rdx, %rax	# D.13049, D.13051
	movl	-60(%rbp), %edx	# is, tmp775
	sall	$5, %edx	#, D.13044
	movl	%edx, (%rax)	# D.13044, *_205
	.loc 1 1441 0 discriminator 2
	addl	$1, -80(%rbp)	#, i
.L222:
	.loc 1 1441 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp776
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	addl	$4, %eax	#, D.13044
	cmpl	-80(%rbp), %eax	# i, D.13044
	jg	.L223	#,
	.loc 1 1439 0 is_stmt 1
	addl	$1, -76(%rbp)	#, j
.L221:
	.loc 1 1439 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp777
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$4, %eax	#, D.13044
	cmpl	-76(%rbp), %eax	# j, D.13044
	jg	.L224	#,
	.loc 1 1459 0 is_stmt 1
	movl	$0, -80(%rbp)	#, i
	jmp	.L225	#
.L236:
	.loc 1 1461 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L226	#
.L235:
	.loc 1 1463 0
	movl	-76(%rbp), %eax	# j, tmp781
	sall	$2, %eax	#, tmp780
	movl	%eax, -56(%rbp)	# tmp780, j4
	.loc 1 1464 0
	movq	-88(%rbp), %rax	# s, tmp782
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$7, %eax	#, tmp783
	movl	%eax, -52(%rbp)	# tmp783, maxy
	.loc 1 1467 0
	movl	$20, %ecx	#, D.13044
	.loc 1 1468 0
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.806
	movl	-76(%rbp), %edx	# j, tmp784
	movslq	%edx, %rdx	# tmp784, D.13045
	salq	$3, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13050
	movq	(%rax), %rax	# *_223, D.13051
	movl	-80(%rbp), %edx	# i, tmp785
	movslq	%edx, %rdx	# tmp785, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %esi	# *_227, D.13044
	movq	img4Y_tmp(%rip), %rdi	# img4Y_tmp, img4Y_tmp.807
	movl	-76(%rbp), %eax	# j, tmp786
	leal	1(%rax), %edx	#, D.13044
	movl	-52(%rbp), %eax	# maxy, tmp787
	cmpl	%eax, %edx	# tmp787, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	cltq
	salq	$3, %rax	#, D.13045
	addq	%rdi, %rax	# img4Y_tmp.807, D.13050
	movq	(%rax), %rax	# *_234, D.13051
	movl	-80(%rbp), %edx	# i, tmp788
	movslq	%edx, %rdx	# tmp788, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_238, D.13044
	addl	%esi, %eax	# D.13044, D.13044
	.loc 1 1467 0
	imull	%eax, %ecx	# D.13044, D.13044
	.loc 1 1469 0
	movl	$-5, %esi	#, D.13044
	movq	img4Y_tmp(%rip), %rdx	# img4Y_tmp, img4Y_tmp.808
	movl	-76(%rbp), %eax	# j, tmp789
	subl	$1, %eax	#, D.13044
	movl	$0, %edi	#, tmp790
	testl	%eax, %eax	# D.13044
	cmovs	%edi, %eax	# D.13044,, tmp790, D.13044
	cltq
	salq	$3, %rax	#, D.13045
	addq	%rdx, %rax	# img4Y_tmp.808, D.13050
	movq	(%rax), %rax	# *_248, D.13051
	movl	-80(%rbp), %edx	# i, tmp791
	movslq	%edx, %rdx	# tmp791, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %edi	# *_252, D.13044
	.loc 1 1470 0
	movq	img4Y_tmp(%rip), %r8	# img4Y_tmp, img4Y_tmp.809
	movl	-76(%rbp), %eax	# j, tmp792
	leal	2(%rax), %edx	#, D.13044
	movl	-52(%rbp), %eax	# maxy, tmp793
	cmpl	%eax, %edx	# tmp793, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	cltq
	salq	$3, %rax	#, D.13045
	addq	%r8, %rax	# img4Y_tmp.809, D.13050
	movq	(%rax), %rax	# *_259, D.13051
	movl	-80(%rbp), %edx	# i, tmp794
	movslq	%edx, %rdx	# tmp794, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_263, D.13044
	.loc 1 1469 0
	addl	%edi, %eax	# D.13044, D.13044
	imull	%esi, %eax	# D.13044, D.13044
	.loc 1 1468 0
	leal	(%rcx,%rax), %r8d	#, D.13044
	.loc 1 1471 0
	movl	$1, %ecx	#, D.13044
	movq	img4Y_tmp(%rip), %rdx	# img4Y_tmp, img4Y_tmp.810
	movl	-76(%rbp), %eax	# j, tmp795
	subl	$2, %eax	#, D.13044
	movl	$0, %esi	#, tmp796
	testl	%eax, %eax	# D.13044
	cmovs	%esi, %eax	# D.13044,, tmp796, D.13044
	cltq
	salq	$3, %rax	#, D.13045
	addq	%rdx, %rax	# img4Y_tmp.810, D.13050
	movq	(%rax), %rax	# *_274, D.13051
	movl	-80(%rbp), %edx	# i, tmp797
	movslq	%edx, %rdx	# tmp797, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %esi	# *_278, D.13044
	.loc 1 1472 0
	movq	img4Y_tmp(%rip), %rdi	# img4Y_tmp, img4Y_tmp.811
	movl	-76(%rbp), %eax	# j, tmp798
	leal	3(%rax), %edx	#, D.13044
	movl	-52(%rbp), %eax	# maxy, tmp799
	cmpl	%eax, %edx	# tmp799, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	cltq
	salq	$3, %rax	#, D.13045
	addq	%rdi, %rax	# img4Y_tmp.811, D.13050
	movq	(%rax), %rax	# *_285, D.13051
	movl	-80(%rbp), %edx	# i, tmp800
	movslq	%edx, %rdx	# tmp800, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_289, D.13044
	.loc 1 1471 0
	addl	%esi, %eax	# D.13044, D.13044
	imull	%ecx, %eax	# D.13044, D.13044
	.loc 1 1470 0
	addl	%r8d, %eax	# D.13044, D.13044
	.loc 1 1466 0
	leal	31(%rax), %edx	#, tmp802
	testl	%eax, %eax	# tmp801
	cmovs	%edx, %eax	# tmp802,, tmp801
	sarl	$5, %eax	#, tmp803
	movl	%eax, -60(%rbp)	# tmp803, is
	.loc 1 1475 0
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.813
	movl	-76(%rbp), %edx	# j, tmp804
	movslq	%edx, %rdx	# tmp804, D.13045
	salq	$3, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13050
	movq	(%rax), %rax	# *_298, D.13051
	movl	-80(%rbp), %edx	# i, tmp805
	movslq	%edx, %rdx	# tmp805, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_302, D.13044
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %edx	#, tmp807
	testl	%eax, %eax	# tmp806
	cmovs	%edx, %eax	# tmp807,, tmp806
	sarl	$10, %eax	#, tmp808
	movl	%eax, %edx	# tmp808, D.13044
	movq	img(%rip), %rax	# img, img.814
	movl	72684(%rax), %eax	# img.814_306->max_imgpel_value, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	.loc 1 1474 0
	testl	%eax, %eax	# D.13044
	js	.L227	#,
	.loc 1 1475 0 discriminator 1
	movq	img(%rip), %rax	# img, img.816
	movl	72684(%rax), %edx	# img.816_309->max_imgpel_value, D.13044
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.817
	movl	-76(%rbp), %ecx	# j, tmp809
	movslq	%ecx, %rcx	# tmp809, D.13045
	salq	$3, %rcx	#, D.13045
	addq	%rcx, %rax	# D.13045, D.13050
	movq	(%rax), %rax	# *_314, D.13051
	movl	-80(%rbp), %ecx	# i, tmp810
	movslq	%ecx, %rcx	# tmp810, D.13045
	salq	$2, %rcx	#, D.13045
	addq	%rcx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_318, D.13044
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %ecx	#, tmp812
	testl	%eax, %eax	# tmp811
	cmovs	%ecx, %eax	# tmp812,, tmp811
	sarl	$10, %eax	#, tmp813
	.loc 1 1474 0 discriminator 1
	cmpl	%eax, %edx	# D.13044, D.13044
	jge	.L228	#,
	.loc 1 1475 0
	movq	img(%rip), %rax	# img, img.818
	movl	72684(%rax), %eax	# img.818_322->max_imgpel_value, D.13044
	.loc 1 1474 0
	movzwl	%ax, %eax	# D.13048, iftmp.815
	jmp	.L230	#
.L228:
	.loc 1 1475 0 discriminator 3
	movq	img4Y_tmp(%rip), %rax	# img4Y_tmp, img4Y_tmp.819
	movl	-76(%rbp), %edx	# j, tmp814
	movslq	%edx, %rdx	# tmp814, D.13045
	salq	$3, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13050
	movq	(%rax), %rax	# *_329, D.13051
	movl	-80(%rbp), %edx	# i, tmp815
	movslq	%edx, %rdx	# tmp815, D.13045
	salq	$2, %rdx	#, D.13045
	addq	%rdx, %rax	# D.13045, D.13051
	movl	(%rax), %eax	# *_333, D.13044
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %edx	#, tmp817
	testl	%eax, %eax	# tmp816
	cmovs	%edx, %eax	# tmp817,, tmp816
	sarl	$10, %eax	#, tmp818
	.loc 1 1474 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.815
	jmp	.L230	#
.L227:
	.loc 1 1474 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.812
.L230:
	.loc 1 1474 0 discriminator 4
	movl	-80(%rbp), %edx	# i, tmp819
	subl	$8, %edx	#, D.13044
	addl	%edx, %edx	# D.13044
	movl	-76(%rbp), %ecx	# j, tmp820
	subl	$4, %ecx	#, D.13044
	leal	0(,%rcx,4), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp821
	movl	%eax, %ecx	# iftmp.812,
	call	PutPel_14	#
	.loc 1 1478 0 is_stmt 1 discriminator 4
	movl	-60(%rbp), %eax	# is, tmp822
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %edx	#, tmp824
	testl	%eax, %eax	# tmp823
	cmovs	%edx, %eax	# tmp824,, tmp823
	sarl	$10, %eax	#, tmp825
	movl	%eax, %edx	# tmp825, D.13044
	movq	img(%rip), %rax	# img, img.821
	movl	72684(%rax), %eax	# img.821_347->max_imgpel_value, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	.loc 1 1477 0 discriminator 4
	testl	%eax, %eax	# D.13044
	js	.L231	#,
	.loc 1 1478 0 discriminator 1
	movq	img(%rip), %rax	# img, img.823
	movl	72684(%rax), %edx	# img.823_350->max_imgpel_value, D.13044
	movl	-60(%rbp), %eax	# is, tmp826
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %ecx	#, tmp828
	testl	%eax, %eax	# tmp827
	cmovs	%ecx, %eax	# tmp828,, tmp827
	sarl	$10, %eax	#, tmp829
	.loc 1 1477 0 discriminator 1
	cmpl	%eax, %edx	# D.13044, D.13044
	jge	.L232	#,
	.loc 1 1478 0
	movq	img(%rip), %rax	# img, img.824
	movl	72684(%rax), %eax	# img.824_354->max_imgpel_value, D.13044
	.loc 1 1477 0
	movzwl	%ax, %eax	# D.13048, iftmp.822
	jmp	.L234	#
.L232:
	.loc 1 1478 0 discriminator 3
	movl	-60(%rbp), %eax	# is, tmp830
	addl	$512, %eax	#, D.13044
	leal	1023(%rax), %edx	#, tmp832
	testl	%eax, %eax	# tmp831
	cmovs	%edx, %eax	# tmp832,, tmp831
	sarl	$10, %eax	#, tmp833
	.loc 1 1477 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.822
	jmp	.L234	#
.L231:
	.loc 1 1477 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.820
.L234:
	.loc 1 1477 0 discriminator 4
	movl	-80(%rbp), %edx	# i, tmp834
	subl	$8, %edx	#, D.13044
	addl	%edx, %edx	# D.13044
	movl	-76(%rbp), %ecx	# j, tmp835
	subl	$4, %ecx	#, D.13044
	sall	$2, %ecx	#, D.13044
	leal	2(%rcx), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp836
	movl	%eax, %ecx	# iftmp.820,
	call	PutPel_14	#
	.loc 1 1461 0 is_stmt 1 discriminator 4
	addl	$1, -76(%rbp)	#, j
.L226:
	.loc 1 1461 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp837
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$8, %eax	#, D.13044
	cmpl	-76(%rbp), %eax	# j, D.13044
	jg	.L235	#,
	.loc 1 1459 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
.L225:
	.loc 1 1459 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# s, tmp838
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	addl	$8, %eax	#, D.13044
	addl	%eax, %eax	# D.13044
	cmpl	-80(%rbp), %eax	# i, D.13044
	jg	.L236	#,
	.loc 1 1485 0 is_stmt 1
	movq	-88(%rbp), %rax	# s, tmp839
	movl	6392(%rax), %eax	# s_25(D)->size_x, D.13044
	addl	$7, %eax	#, D.13044
	sall	$2, %eax	#, tmp840
	movl	%eax, -48(%rbp)	# tmp840, ie2
	.loc 1 1486 0
	movq	-88(%rbp), %rax	# s, tmp841
	movl	6396(%rax), %eax	# s_25(D)->size_y, D.13044
	addl	$7, %eax	#, D.13044
	sall	$2, %eax	#, tmp842
	movl	%eax, -44(%rbp)	# tmp842, je2
	.loc 1 1488 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L237	#
.L246:
	.loc 1 1489 0
	movl	$0, -80(%rbp)	#, i
	jmp	.L238	#
.L245:
	.loc 1 1493 0
	movq	img(%rip), %rax	# img, img.827
	movl	72684(%rax), %ebx	# img.827_381->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp843
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp844
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp845
	movl	-68(%rbp), %edx	# img_height, tmp846
	movq	-32(%rbp), %rax	# out4Y, tmp847
	movl	%ecx, %r8d	# tmp845,
	movl	%edx, %ecx	# tmp846,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp847,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp848
	leal	2(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp849
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp850
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp851
	movl	-68(%rbp), %edx	# img_height, tmp852
	movq	-32(%rbp), %rax	# out4Y, tmp853
	movl	%ecx, %r8d	# tmp851,
	movl	%edx, %ecx	# tmp852,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp853,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp854
	shrl	$31, %edx	#, tmp854
	addl	%edx, %eax	# tmp854, tmp855
	sarl	%eax	# tmp856
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L239	#,
	.loc 1 1493 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.828
	movl	72684(%rax), %eax	# img.828_397->max_imgpel_value, D.13044
	notl	%eax	# tmp857
	shrl	$31, %eax	#, tmp858
	jmp	.L240	#
.L239:
	.loc 1 1493 0 discriminator 2
	movl	-80(%rbp), %eax	# i, tmp859
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp860
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp861
	movl	-68(%rbp), %edx	# img_height, tmp862
	movq	-32(%rbp), %rax	# out4Y, tmp863
	movl	%ecx, %r8d	# tmp861,
	movl	%edx, %ecx	# tmp862,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp863,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp864
	leal	2(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp865
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp866
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp867
	movl	-68(%rbp), %edx	# img_height, tmp868
	movq	-32(%rbp), %rax	# out4Y, tmp869
	movl	%ecx, %r8d	# tmp867,
	movl	%edx, %ecx	# tmp868,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp869,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	cmpl	$-1, %eax	#, D.13044
	setge	%al	#, iftmp.826
.L240:
	.loc 1 1492 0 is_stmt 1
	testb	%al, %al	# iftmp.826
	je	.L241	#,
	.loc 1 1493 0 discriminator 1
	movq	img(%rip), %rax	# img, img.830
	movl	72684(%rax), %ebx	# img.830_414->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp870
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp871
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp872
	movl	-68(%rbp), %edx	# img_height, tmp873
	movq	-32(%rbp), %rax	# out4Y, tmp874
	movl	%ecx, %r8d	# tmp872,
	movl	%edx, %ecx	# tmp873,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp874,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp875
	leal	2(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp876
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp877
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp878
	movl	-68(%rbp), %edx	# img_height, tmp879
	movq	-32(%rbp), %rax	# out4Y, tmp880
	movl	%ecx, %r8d	# tmp878,
	movl	%edx, %ecx	# tmp879,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp880,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp881
	shrl	$31, %edx	#, tmp881
	addl	%edx, %eax	# tmp881, tmp882
	sarl	%eax	# tmp883
	.loc 1 1492 0 discriminator 1
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L242	#,
	.loc 1 1493 0
	movq	img(%rip), %rax	# img, img.831
	movl	72684(%rax), %eax	# img.831_430->max_imgpel_value, D.13044
	.loc 1 1492 0
	movzwl	%ax, %eax	# D.13048, iftmp.829
	jmp	.L244	#
.L242:
	.loc 1 1493 0 discriminator 3
	movl	-80(%rbp), %eax	# i, tmp884
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp885
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp886
	movl	-68(%rbp), %edx	# img_height, tmp887
	movq	-32(%rbp), %rax	# out4Y, tmp888
	movl	%ecx, %r8d	# tmp886,
	movl	%edx, %ecx	# tmp887,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp888,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp889
	leal	2(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp890
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp891
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp892
	movl	-68(%rbp), %edx	# img_height, tmp893
	movq	-32(%rbp), %rax	# out4Y, tmp894
	movl	%ecx, %r8d	# tmp892,
	movl	%edx, %ecx	# tmp893,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp894,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp895
	shrl	$31, %edx	#, tmp895
	addl	%edx, %eax	# tmp895, tmp896
	sarl	%eax	# tmp897
	.loc 1 1492 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.829
	jmp	.L244	#
.L241:
	.loc 1 1492 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.825
.L244:
	.loc 1 1492 0 discriminator 4
	movl	-80(%rbp), %edx	# i, tmp898
	subl	$15, %edx	#, D.13044
	movl	-76(%rbp), %ecx	# j, tmp899
	leal	-16(%rcx), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp900
	movl	%eax, %ecx	# iftmp.825,
	call	PutPel_14	#
	.loc 1 1489 0 is_stmt 1 discriminator 4
	addl	$2, -80(%rbp)	#, i
.L238:
	.loc 1 1489 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# ie2, tmp901
	addl	$3, %eax	#, D.13044
	cmpl	-80(%rbp), %eax	# i, D.13044
	jg	.L245	#,
	.loc 1 1488 0 is_stmt 1
	addl	$2, -76(%rbp)	#, j
.L237:
	.loc 1 1488 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# je2, tmp902
	addl	$4, %eax	#, D.13044
	cmpl	-76(%rbp), %eax	# j, D.13044
	jg	.L246	#,
	.loc 1 1497 0 is_stmt 1
	movl	$0, -80(%rbp)	#, i
	jmp	.L247	#
.L273:
	.loc 1 1499 0
	movl	$0, -76(%rbp)	#, j
	jmp	.L248	#
.L272:
	.loc 1 1501 0
	movl	-80(%rbp), %eax	# i, i.832
	andl	$1, %eax	#, D.13052
	testl	%eax, %eax	# D.13052
	jne	.L249	#,
	.loc 1 1505 0
	movq	img(%rip), %rax	# img, img.835
	movl	72684(%rax), %ebx	# img.835_462->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp903
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp904
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp905
	movl	-68(%rbp), %edx	# img_height, tmp906
	movq	-32(%rbp), %rax	# out4Y, tmp907
	movl	%ecx, %r8d	# tmp905,
	movl	%edx, %ecx	# tmp906,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp907,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp908
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp909
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp910
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp911
	movl	-68(%rbp), %edx	# img_height, tmp912
	movq	-32(%rbp), %rax	# out4Y, tmp913
	movl	%ecx, %r8d	# tmp911,
	movl	%edx, %ecx	# tmp912,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp913,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp914
	shrl	$31, %edx	#, tmp914
	addl	%edx, %eax	# tmp914, tmp915
	sarl	%eax	# tmp916
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L250	#,
	.loc 1 1505 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.836
	movl	72684(%rax), %eax	# img.836_478->max_imgpel_value, D.13044
	notl	%eax	# tmp917
	shrl	$31, %eax	#, tmp918
	jmp	.L251	#
.L250:
	.loc 1 1505 0 discriminator 2
	movl	-80(%rbp), %eax	# i, tmp919
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp920
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp921
	movl	-68(%rbp), %edx	# img_height, tmp922
	movq	-32(%rbp), %rax	# out4Y, tmp923
	movl	%ecx, %r8d	# tmp921,
	movl	%edx, %ecx	# tmp922,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp923,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp924
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp925
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp926
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp927
	movl	-68(%rbp), %edx	# img_height, tmp928
	movq	-32(%rbp), %rax	# out4Y, tmp929
	movl	%ecx, %r8d	# tmp927,
	movl	%edx, %ecx	# tmp928,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp929,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	cmpl	$-1, %eax	#, D.13044
	setge	%al	#, iftmp.834
.L251:
	.loc 1 1504 0 is_stmt 1
	testb	%al, %al	# iftmp.834
	je	.L252	#,
	.loc 1 1505 0 discriminator 1
	movq	img(%rip), %rax	# img, img.838
	movl	72684(%rax), %ebx	# img.838_495->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp930
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp931
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp932
	movl	-68(%rbp), %edx	# img_height, tmp933
	movq	-32(%rbp), %rax	# out4Y, tmp934
	movl	%ecx, %r8d	# tmp932,
	movl	%edx, %ecx	# tmp933,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp934,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp935
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp936
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp937
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp938
	movl	-68(%rbp), %edx	# img_height, tmp939
	movq	-32(%rbp), %rax	# out4Y, tmp940
	movl	%ecx, %r8d	# tmp938,
	movl	%edx, %ecx	# tmp939,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp940,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp941
	shrl	$31, %edx	#, tmp941
	addl	%edx, %eax	# tmp941, tmp942
	sarl	%eax	# tmp943
	.loc 1 1504 0 discriminator 1
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L253	#,
	.loc 1 1505 0
	movq	img(%rip), %rax	# img, img.839
	movl	72684(%rax), %eax	# img.839_511->max_imgpel_value, D.13044
	.loc 1 1504 0
	movzwl	%ax, %eax	# D.13048, iftmp.837
	jmp	.L255	#
.L253:
	.loc 1 1505 0 discriminator 3
	movl	-80(%rbp), %eax	# i, tmp944
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp945
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp946
	movl	-68(%rbp), %edx	# img_height, tmp947
	movq	-32(%rbp), %rax	# out4Y, tmp948
	movl	%ecx, %r8d	# tmp946,
	movl	%edx, %ecx	# tmp947,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp948,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp949
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp950
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp951
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp952
	movl	-68(%rbp), %edx	# img_height, tmp953
	movq	-32(%rbp), %rax	# out4Y, tmp954
	movl	%ecx, %r8d	# tmp952,
	movl	%edx, %ecx	# tmp953,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp954,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp955
	shrl	$31, %edx	#, tmp955
	addl	%edx, %eax	# tmp955, tmp956
	sarl	%eax	# tmp957
	.loc 1 1504 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.837
	jmp	.L255	#
.L252:
	.loc 1 1504 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.833
.L255:
	.loc 1 1504 0 discriminator 5
	movl	-80(%rbp), %edx	# i, tmp958
	subl	$16, %edx	#, D.13044
	movl	-76(%rbp), %ecx	# j, tmp959
	leal	-15(%rcx), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp960
	movl	%eax, %ecx	# iftmp.833,
	call	PutPel_14	#
	jmp	.L256	#
.L249:
	.loc 1 1509 0 is_stmt 1
	movl	-76(%rbp), %eax	# j, j.840
	andl	$3, %eax	#, D.13052
	testl	%eax, %eax	# D.13052
	jne	.L257	#,
	.loc 1 1509 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp961
	cltd
	shrl	$30, %edx	#, tmp963
	addl	%edx, %eax	# tmp963, tmp964
	andl	$3, %eax	#, tmp965
	subl	%edx, %eax	# tmp963, tmp966
	cmpl	$1, %eax	#, D.13044
	je	.L258	#,
.L257:
	.loc 1 1509 0 discriminator 2
	movl	-76(%rbp), %eax	# j, tmp967
	cltd
	shrl	$30, %edx	#, tmp969
	addl	%edx, %eax	# tmp969, tmp970
	andl	$3, %eax	#, tmp971
	subl	%edx, %eax	# tmp969, tmp972
	cmpl	$2, %eax	#, D.13044
	jne	.L259	#,
	.loc 1 1509 0 discriminator 1
	movl	-80(%rbp), %eax	# i, tmp973
	cltd
	shrl	$30, %edx	#, tmp975
	addl	%edx, %eax	# tmp975, tmp976
	andl	$3, %eax	#, tmp977
	subl	%edx, %eax	# tmp975, tmp978
	cmpl	$3, %eax	#, D.13044
	jne	.L259	#,
.L258:
	.loc 1 1513 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.843
	movl	72684(%rax), %ebx	# img.843_625->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp979
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp980
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp981
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp982
	movl	-68(%rbp), %edx	# img_height, tmp983
	movq	-32(%rbp), %rax	# out4Y, tmp984
	movl	%ecx, %r8d	# tmp982,
	movl	%edx, %ecx	# tmp983,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp984,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp985
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp986
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp987
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp988
	movl	-68(%rbp), %edx	# img_height, tmp989
	movq	-32(%rbp), %rax	# out4Y, tmp990
	movl	%ecx, %r8d	# tmp988,
	movl	%edx, %ecx	# tmp989,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp990,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp991
	shrl	$31, %edx	#, tmp991
	addl	%edx, %eax	# tmp991, tmp992
	sarl	%eax	# tmp993
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L260	#,
	.loc 1 1513 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.844
	movl	72684(%rax), %eax	# img.844_644->max_imgpel_value, D.13044
	notl	%eax	# tmp994
	shrl	$31, %eax	#, tmp995
	jmp	.L261	#
.L260:
	.loc 1 1513 0 discriminator 2
	movl	-80(%rbp), %eax	# i, tmp996
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp997
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp998
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp999
	movl	-68(%rbp), %edx	# img_height, tmp1000
	movq	-32(%rbp), %rax	# out4Y, tmp1001
	movl	%ecx, %r8d	# tmp999,
	movl	%edx, %ecx	# tmp1000,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1001,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1002
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1003
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1004
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1005
	movl	-68(%rbp), %edx	# img_height, tmp1006
	movq	-32(%rbp), %rax	# out4Y, tmp1007
	movl	%ecx, %r8d	# tmp1005,
	movl	%edx, %ecx	# tmp1006,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1007,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	cmpl	$-1, %eax	#, D.13044
	setge	%al	#, iftmp.842
.L261:
	.loc 1 1512 0 is_stmt 1
	testb	%al, %al	# iftmp.842
	je	.L262	#,
	.loc 1 1513 0 discriminator 1
	movq	img(%rip), %rax	# img, img.846
	movl	72684(%rax), %ebx	# img.846_664->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp1008
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1009
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1010
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1011
	movl	-68(%rbp), %edx	# img_height, tmp1012
	movq	-32(%rbp), %rax	# out4Y, tmp1013
	movl	%ecx, %r8d	# tmp1011,
	movl	%edx, %ecx	# tmp1012,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1013,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1014
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1015
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1016
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1017
	movl	-68(%rbp), %edx	# img_height, tmp1018
	movq	-32(%rbp), %rax	# out4Y, tmp1019
	movl	%ecx, %r8d	# tmp1017,
	movl	%edx, %ecx	# tmp1018,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1019,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp1020
	shrl	$31, %edx	#, tmp1020
	addl	%edx, %eax	# tmp1020, tmp1021
	sarl	%eax	# tmp1022
	.loc 1 1512 0 discriminator 1
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L263	#,
	.loc 1 1513 0
	movq	img(%rip), %rax	# img, img.847
	movl	72684(%rax), %eax	# img.847_683->max_imgpel_value, D.13044
	.loc 1 1512 0
	movzwl	%ax, %eax	# D.13048, iftmp.845
	jmp	.L265	#
.L263:
	.loc 1 1513 0 discriminator 3
	movl	-80(%rbp), %eax	# i, tmp1023
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1024
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1025
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1026
	movl	-68(%rbp), %edx	# img_height, tmp1027
	movq	-32(%rbp), %rax	# out4Y, tmp1028
	movl	%ecx, %r8d	# tmp1026,
	movl	%edx, %ecx	# tmp1027,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1028,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1029
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1030
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1031
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1032
	movl	-68(%rbp), %edx	# img_height, tmp1033
	movq	-32(%rbp), %rax	# out4Y, tmp1034
	movl	%ecx, %r8d	# tmp1032,
	movl	%edx, %ecx	# tmp1033,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1034,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp1035
	shrl	$31, %edx	#, tmp1035
	addl	%edx, %eax	# tmp1035, tmp1036
	sarl	%eax	# tmp1037
	.loc 1 1512 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.845
	jmp	.L265	#
.L262:
	.loc 1 1512 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.841
.L265:
	.loc 1 1512 0 discriminator 4
	movl	-80(%rbp), %edx	# i, tmp1038
	subl	$16, %edx	#, D.13044
	movl	-76(%rbp), %ecx	# j, tmp1039
	leal	-15(%rcx), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp1040
	movl	%eax, %ecx	# iftmp.841,
	call	PutPel_14	#
	jmp	.L256	#
.L259:
	.loc 1 1521 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.850
	movl	72684(%rax), %ebx	# img.850_540->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp1041
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1042
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1043
	movl	-68(%rbp), %edx	# img_height, tmp1044
	movq	-32(%rbp), %rax	# out4Y, tmp1045
	movl	%ecx, %r8d	# tmp1043,
	movl	%edx, %ecx	# tmp1044,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1045,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1046
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1047
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1048
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1049
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1050
	movl	-68(%rbp), %edx	# img_height, tmp1051
	movq	-32(%rbp), %rax	# out4Y, tmp1052
	movl	%ecx, %r8d	# tmp1050,
	movl	%edx, %ecx	# tmp1051,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1052,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp1053
	shrl	$31, %edx	#, tmp1053
	addl	%edx, %eax	# tmp1053, tmp1054
	sarl	%eax	# tmp1055
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L266	#,
	.loc 1 1521 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.851
	movl	72684(%rax), %eax	# img.851_559->max_imgpel_value, D.13044
	notl	%eax	# tmp1056
	shrl	$31, %eax	#, tmp1057
	jmp	.L267	#
.L266:
	.loc 1 1521 0 discriminator 2
	movl	-80(%rbp), %eax	# i, tmp1058
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1059
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1060
	movl	-68(%rbp), %edx	# img_height, tmp1061
	movq	-32(%rbp), %rax	# out4Y, tmp1062
	movl	%ecx, %r8d	# tmp1060,
	movl	%edx, %ecx	# tmp1061,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1062,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1063
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1064
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1065
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1066
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1067
	movl	-68(%rbp), %edx	# img_height, tmp1068
	movq	-32(%rbp), %rax	# out4Y, tmp1069
	movl	%ecx, %r8d	# tmp1067,
	movl	%edx, %ecx	# tmp1068,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1069,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	cmpl	$-1, %eax	#, D.13044
	setge	%al	#, iftmp.849
.L267:
	.loc 1 1520 0 is_stmt 1
	testb	%al, %al	# iftmp.849
	je	.L268	#,
	.loc 1 1521 0 discriminator 1
	movq	img(%rip), %rax	# img, img.853
	movl	72684(%rax), %ebx	# img.853_579->max_imgpel_value, D.13044
	movl	-80(%rbp), %eax	# i, tmp1070
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1071
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1072
	movl	-68(%rbp), %edx	# img_height, tmp1073
	movq	-32(%rbp), %rax	# out4Y, tmp1074
	movl	%ecx, %r8d	# tmp1072,
	movl	%edx, %ecx	# tmp1073,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1074,
	call	FastPelY_14	#
	movzwl	%ax, %r12d	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1075
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1076
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1077
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1078
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1079
	movl	-68(%rbp), %edx	# img_height, tmp1080
	movq	-32(%rbp), %rax	# out4Y, tmp1081
	movl	%ecx, %r8d	# tmp1079,
	movl	%edx, %ecx	# tmp1080,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1081,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%r12d, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp1082
	shrl	$31, %edx	#, tmp1082
	addl	%edx, %eax	# tmp1082, tmp1083
	sarl	%eax	# tmp1084
	.loc 1 1520 0 discriminator 1
	cmpl	%eax, %ebx	# D.13044, D.13044
	jge	.L269	#,
	.loc 1 1521 0
	movq	img(%rip), %rax	# img, img.854
	movl	72684(%rax), %eax	# img.854_598->max_imgpel_value, D.13044
	.loc 1 1520 0
	movzwl	%ax, %eax	# D.13048, iftmp.852
	jmp	.L271	#
.L269:
	.loc 1 1521 0 discriminator 3
	movl	-80(%rbp), %eax	# i, tmp1085
	leal	-17(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1086
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1087
	movl	-68(%rbp), %edx	# img_height, tmp1088
	movq	-32(%rbp), %rax	# out4Y, tmp1089
	movl	%ecx, %r8d	# tmp1087,
	movl	%edx, %ecx	# tmp1088,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1089,
	call	FastPelY_14	#
	movzwl	%ax, %ebx	# D.13048, D.13044
	movl	-80(%rbp), %eax	# i, tmp1090
	leal	1(%rax), %edx	#, D.13044
	movl	-48(%rbp), %eax	# ie2, tmp1091
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %edi	#, D.13044
	movl	-76(%rbp), %eax	# j, tmp1092
	leal	2(%rax), %edx	#, D.13044
	movl	-44(%rbp), %eax	# je2, tmp1093
	addl	$2, %eax	#, D.13044
	cmpl	%eax, %edx	# D.13044, D.13044
	cmovle	%edx, %eax	# D.13044,, D.13044
	leal	-16(%rax), %esi	#, D.13044
	movl	-72(%rbp), %ecx	# img_width, tmp1094
	movl	-68(%rbp), %edx	# img_height, tmp1095
	movq	-32(%rbp), %rax	# out4Y, tmp1096
	movl	%ecx, %r8d	# tmp1094,
	movl	%edx, %ecx	# tmp1095,
	movl	%edi, %edx	# D.13044,
	movq	%rax, %rdi	# tmp1096,
	call	FastPelY_14	#
	movzwl	%ax, %eax	# D.13048, D.13044
	addl	%ebx, %eax	# D.13044, D.13044
	addl	$1, %eax	#, D.13044
	movl	%eax, %edx	# D.13044, tmp1097
	shrl	$31, %edx	#, tmp1097
	addl	%edx, %eax	# tmp1097, tmp1098
	sarl	%eax	# tmp1099
	.loc 1 1520 0 discriminator 3
	movzwl	%ax, %eax	# D.13048, iftmp.852
	jmp	.L271	#
.L268:
	.loc 1 1520 0 is_stmt 0 discriminator 2
	movl	$0, %eax	#, iftmp.848
.L271:
	.loc 1 1520 0 discriminator 4
	movl	-80(%rbp), %edx	# i, tmp1100
	subl	$16, %edx	#, D.13044
	movl	-76(%rbp), %ecx	# j, tmp1101
	leal	-15(%rcx), %esi	#, D.13044
	movq	-32(%rbp), %rdi	# out4Y, tmp1102
	movl	%eax, %ecx	# iftmp.848,
	call	PutPel_14	#
.L256:
	.loc 1 1499 0 is_stmt 1
	addl	$2, -76(%rbp)	#, j
.L248:
	.loc 1 1499 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# je2, tmp1103
	addl	$3, %eax	#, D.13044
	cmpl	-76(%rbp), %eax	# j, D.13044
	jg	.L272	#,
	.loc 1 1497 0 is_stmt 1
	addl	$1, -80(%rbp)	#, i
.L247:
	.loc 1 1497 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# ie2, tmp1104
	addl	$4, %eax	#, D.13044
	cmpl	-80(%rbp), %eax	# i, D.13044
	jg	.L273	#,
	.loc 1 1537 0 is_stmt 1
	movq	-88(%rbp), %rax	# s, tmp1105
	movl	6396(%rax), %ecx	# s_25(D)->size_y, D.13044
	movq	-88(%rbp), %rax	# s, tmp1106
	movl	6392(%rax), %edx	# s_25(D)->size_x, D.13044
	movq	-24(%rbp), %rsi	# ref11, tmp1107
	movq	-32(%rbp), %rax	# out4Y, tmp1108
	movq	%rax, %rdi	# tmp1108,
	call	GenerateFullPelRepresentation	#
.L213:
	.loc 1 1539 0
	addq	$80, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	UnifiedOneForthPix, .-UnifiedOneForthPix
	.type	find_snr, @function
find_snr:
.LFB18:
	.loc 1 1549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 1551 0
	movq	$0, -40(%rbp)	#, diff_y
	movq	$0, -32(%rbp)	#, diff_u
	movq	$0, -24(%rbp)	#, diff_v
	.loc 1 1554 0
	movq	img(%rip), %rax	# img, img.855
	movl	72684(%rax), %edx	# img.855_30->max_imgpel_value, D.13055
	movq	img(%rip), %rax	# img, img.856
	movl	72684(%rax), %eax	# img.856_32->max_imgpel_value, D.13055
	imull	%edx, %eax	# D.13055, D.13055
	movl	%eax, -56(%rbp)	# D.13055, max_pix_value_sqd
	.loc 1 1555 0
	movq	img(%rip), %rax	# img, img.857
	movl	72688(%rax), %edx	# img.857_36->max_imgpel_value_uv, D.13055
	movq	img(%rip), %rax	# img, img.858
	movl	72688(%rax), %eax	# img.858_38->max_imgpel_value_uv, D.13055
	imull	%edx, %eax	# D.13055, D.13055
	movl	%eax, -52(%rbp)	# D.13055, max_pix_value_sqd_uv
	.loc 1 1560 0
	movq	input(%rip), %rax	# input, input.859
	movl	68(%rax), %edx	# input.859_42->img_height, D.13055
	movq	input(%rip), %rax	# input, input.860
	movl	64(%rax), %eax	# input.860_44->img_width, D.13055
	imull	%edx, %eax	# D.13055, tmp525
	movl	%eax, -48(%rbp)	# tmp525, impix
	.loc 1 1561 0
	movq	input(%rip), %rax	# input, input.861
	movl	3304(%rax), %edx	# input.861_47->img_height_cr, D.13055
	movq	input(%rip), %rax	# input, input.862
	movl	3308(%rax), %eax	# input.862_49->img_width_cr, D.13055
	imull	%edx, %eax	# D.13055, tmp526
	movl	%eax, -44(%rbp)	# tmp526, impix_cr
	.loc 1 1563 0
	movq	img(%rip), %rax	# img, img.863
	movl	71800(%rax), %eax	# img.863_52->fld_flag, D.13056
	testl	%eax, %eax	# D.13056
	je	.L275	#,
	.loc 1 1566 0
	movq	$0, -40(%rbp)	#, diff_y
	.loc 1 1567 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L276	#
.L279:
	.loc 1 1569 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L277	#
.L278:
	.loc 1 1571 0 discriminator 2
	movq	img(%rip), %rax	# img, img.864
	movq	71776(%rax), %rax	# img.864_61->quad, D.13057
	movq	imgY_org(%rip), %rdx	# imgY_org, imgY_org.865
	movl	-60(%rbp), %ecx	# j, tmp527
	movslq	%ecx, %rcx	# tmp527, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rdx	# D.13058, D.13059
	movq	(%rdx), %rdx	# *_66, D.13060
	movl	-64(%rbp), %ecx	# i, tmp528
	movslq	%ecx, %rcx	# tmp528, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rdx	# D.13058, D.13060
	movzwl	(%rdx), %edx	# *_70, D.13061
	movzwl	%dx, %ecx	# D.13061, D.13055
	movq	imgY_com(%rip), %rdx	# imgY_com, imgY_com.866
	movl	-60(%rbp), %esi	# j, tmp529
	movslq	%esi, %rsi	# tmp529, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rdx	# D.13058, D.13059
	movq	(%rdx), %rdx	# *_76, D.13060
	movl	-64(%rbp), %esi	# i, tmp530
	movslq	%esi, %rsi	# tmp530, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rdx	# D.13058, D.13060
	movzwl	(%rdx), %edx	# *_80, D.13061
	movzwl	%dx, %edx	# D.13061, D.13055
	subl	%edx, %ecx	# D.13055, D.13055
	movl	%ecx, %edx	# D.13055, D.13055
	movslq	%edx, %rdx	# D.13055, D.13058
	salq	$2, %rdx	#, D.13058
	addq	%rdx, %rax	# D.13058, D.13057
	movl	(%rax), %eax	# *_86, D.13055
	cltq
	addq	%rax, -40(%rbp)	# D.13062, diff_y
	.loc 1 1569 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L277:
	.loc 1 1569 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.867
	movl	68(%rax), %eax	# input.867_59->img_height, D.13055
	cmpl	-60(%rbp), %eax	# j, D.13055
	jg	.L278	#,
	.loc 1 1567 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L276:
	.loc 1 1567 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.868
	movl	64(%rax), %eax	# input.868_56->img_width, D.13055
	cmpl	-64(%rbp), %eax	# i, D.13055
	jg	.L279	#,
	.loc 1 1575 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.869
	movl	72700(%rax), %eax	# img.869_92->yuv_format, D.13055
	testl	%eax, %eax	# D.13055
	je	.L280	#,
	.loc 1 1578 0
	movq	$0, -32(%rbp)	#, diff_u
	.loc 1 1579 0
	movq	$0, -24(%rbp)	#, diff_v
	.loc 1 1581 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L281	#
.L284:
	.loc 1 1583 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L282	#
.L283:
	.loc 1 1585 0 discriminator 2
	movq	img(%rip), %rax	# img, img.870
	movq	71776(%rax), %rdx	# img.870_102->quad, D.13057
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.871
	movq	(%rax), %rax	# *imgUV_org.871_104, D.13059
	movl	-60(%rbp), %ecx	# j, tmp531
	movslq	%ecx, %rcx	# tmp531, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_108, D.13060
	movl	-64(%rbp), %ecx	# i, tmp532
	movslq	%ecx, %rcx	# tmp532, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_112, D.13061
	movzwl	%ax, %ecx	# D.13061, D.13055
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.872
	movq	(%rax), %rax	# *imgUV_com.872_115, D.13059
	movl	-60(%rbp), %esi	# j, tmp533
	movslq	%esi, %rsi	# tmp533, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_119, D.13060
	movl	-64(%rbp), %esi	# i, tmp534
	movslq	%esi, %rsi	# tmp534, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_123, D.13061
	movzwl	%ax, %eax	# D.13061, D.13055
	subl	%eax, %ecx	# D.13055, D.13055
	movl	%ecx, %eax	# D.13055, D.13055
	cltq
	salq	$2, %rax	#, D.13058
	addq	%rdx, %rax	# D.13057, D.13057
	movl	(%rax), %eax	# *_129, D.13055
	cltq
	addq	%rax, -32(%rbp)	# D.13062, diff_u
	.loc 1 1586 0 discriminator 2
	movq	img(%rip), %rax	# img, img.873
	movq	71776(%rax), %rax	# img.873_133->quad, D.13057
	movq	imgUV_org(%rip), %rdx	# imgUV_org, imgUV_org.874
	addq	$8, %rdx	#, D.13063
	movq	(%rdx), %rdx	# *_136, D.13059
	movl	-60(%rbp), %ecx	# j, tmp535
	movslq	%ecx, %rcx	# tmp535, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rdx	# D.13058, D.13059
	movq	(%rdx), %rdx	# *_140, D.13060
	movl	-64(%rbp), %ecx	# i, tmp536
	movslq	%ecx, %rcx	# tmp536, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rdx	# D.13058, D.13060
	movzwl	(%rdx), %edx	# *_144, D.13061
	movzwl	%dx, %ecx	# D.13061, D.13055
	movq	imgUV_com(%rip), %rdx	# imgUV_com, imgUV_com.875
	addq	$8, %rdx	#, D.13063
	movq	(%rdx), %rdx	# *_148, D.13059
	movl	-60(%rbp), %esi	# j, tmp537
	movslq	%esi, %rsi	# tmp537, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rdx	# D.13058, D.13059
	movq	(%rdx), %rdx	# *_152, D.13060
	movl	-64(%rbp), %esi	# i, tmp538
	movslq	%esi, %rsi	# tmp538, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rdx	# D.13058, D.13060
	movzwl	(%rdx), %edx	# *_156, D.13061
	movzwl	%dx, %edx	# D.13061, D.13055
	subl	%edx, %ecx	# D.13055, D.13055
	movl	%ecx, %edx	# D.13055, D.13055
	movslq	%edx, %rdx	# D.13055, D.13058
	salq	$2, %rdx	#, D.13058
	addq	%rdx, %rax	# D.13058, D.13057
	movl	(%rax), %eax	# *_162, D.13055
	cltq
	addq	%rax, -24(%rbp)	# D.13062, diff_v
	.loc 1 1583 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L282:
	.loc 1 1583 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.876
	movl	3304(%rax), %eax	# input.876_100->img_height_cr, D.13055
	cmpl	-60(%rbp), %eax	# j, D.13055
	jg	.L283	#,
	.loc 1 1581 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L281:
	.loc 1 1581 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.877
	movl	3308(%rax), %eax	# input.877_97->img_width_cr, D.13055
	cmpl	-64(%rbp), %eax	# i, D.13055
	jg	.L284	#,
	jmp	.L280	#
.L275:
	.loc 1 1593 0 is_stmt 1
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.878
	movq	%rax, imgY_org(%rip)	# imgY_org_frm.878, imgY_org
	.loc 1 1594 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.879
	movq	%rax, imgUV_org(%rip)	# imgUV_org_frm.879, imgUV_org
	.loc 1 1596 0
	movq	input(%rip), %rax	# input, input.880
	movl	2880(%rax), %eax	# input.880_170->PicInterlace, D.13055
	cmpl	$2, %eax	#, D.13055
	jne	.L285	#,
	.loc 1 1598 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.881
	movq	%rax, enc_picture(%rip)	# enc_frame_picture.881, enc_picture
.L285:
	.loc 1 1601 0
	movq	$0, -40(%rbp)	#, diff_y
	.loc 1 1602 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L286	#
.L289:
	.loc 1 1604 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L287	#
.L288:
	.loc 1 1606 0 discriminator 2
	movq	img(%rip), %rax	# img, img.882
	movq	71776(%rax), %rdx	# img.882_180->quad, D.13057
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.883
	movl	-60(%rbp), %ecx	# j, tmp539
	movslq	%ecx, %rcx	# tmp539, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_185, D.13060
	movl	-64(%rbp), %ecx	# i, tmp540
	movslq	%ecx, %rcx	# tmp540, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_189, D.13061
	movzwl	%ax, %ecx	# D.13061, D.13055
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.884
	movq	6424(%rax), %rax	# enc_picture.884_192->imgY, D.13059
	movl	-60(%rbp), %esi	# j, tmp541
	movslq	%esi, %rsi	# tmp541, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_196, D.13060
	movl	-64(%rbp), %esi	# i, tmp542
	movslq	%esi, %rsi	# tmp542, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_200, D.13061
	movzwl	%ax, %eax	# D.13061, D.13055
	subl	%eax, %ecx	# D.13055, D.13055
	movl	%ecx, %eax	# D.13055, D.13055
	cltq
	salq	$2, %rax	#, D.13058
	addq	%rdx, %rax	# D.13057, D.13057
	movl	(%rax), %eax	# *_206, D.13055
	cltq
	addq	%rax, -40(%rbp)	# D.13062, diff_y
	.loc 1 1604 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L287:
	.loc 1 1604 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.885
	movl	68(%rax), %eax	# input.885_178->img_height, D.13055
	cmpl	-60(%rbp), %eax	# j, D.13055
	jg	.L288	#,
	.loc 1 1602 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L286:
	.loc 1 1602 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.886
	movl	64(%rax), %eax	# input.886_175->img_width, D.13055
	cmpl	-64(%rbp), %eax	# i, D.13055
	jg	.L289	#,
	.loc 1 1610 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.887
	movl	72700(%rax), %eax	# img.887_212->yuv_format, D.13055
	testl	%eax, %eax	# D.13055
	je	.L280	#,
	.loc 1 1613 0
	movq	$0, -32(%rbp)	#, diff_u
	.loc 1 1614 0
	movq	$0, -24(%rbp)	#, diff_v
	.loc 1 1616 0
	movl	$0, -64(%rbp)	#, i
	jmp	.L290	#
.L293:
	.loc 1 1618 0
	movl	$0, -60(%rbp)	#, j
	jmp	.L291	#
.L292:
	.loc 1 1620 0 discriminator 2
	movq	img(%rip), %rax	# img, img.888
	movq	71776(%rax), %rdx	# img.888_222->quad, D.13057
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.889
	movq	(%rax), %rax	# *imgUV_org.889_224, D.13059
	movl	-60(%rbp), %ecx	# j, tmp543
	movslq	%ecx, %rcx	# tmp543, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_228, D.13060
	movl	-64(%rbp), %ecx	# i, tmp544
	movslq	%ecx, %rcx	# tmp544, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_232, D.13061
	movzwl	%ax, %ecx	# D.13061, D.13055
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.890
	movq	6464(%rax), %rax	# enc_picture.890_235->imgUV, D.13063
	movq	(%rax), %rax	# *_236, D.13059
	movl	-60(%rbp), %esi	# j, tmp545
	movslq	%esi, %rsi	# tmp545, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_240, D.13060
	movl	-64(%rbp), %esi	# i, tmp546
	movslq	%esi, %rsi	# tmp546, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_244, D.13061
	movzwl	%ax, %eax	# D.13061, D.13055
	subl	%eax, %ecx	# D.13055, D.13055
	movl	%ecx, %eax	# D.13055, D.13055
	cltq
	salq	$2, %rax	#, D.13058
	addq	%rdx, %rax	# D.13057, D.13057
	movl	(%rax), %eax	# *_250, D.13055
	cltq
	addq	%rax, -32(%rbp)	# D.13062, diff_u
	.loc 1 1621 0 discriminator 2
	movq	img(%rip), %rax	# img, img.891
	movq	71776(%rax), %rdx	# img.891_254->quad, D.13057
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.892
	addq	$8, %rax	#, D.13063
	movq	(%rax), %rax	# *_257, D.13059
	movl	-60(%rbp), %ecx	# j, tmp547
	movslq	%ecx, %rcx	# tmp547, D.13058
	salq	$3, %rcx	#, D.13058
	addq	%rcx, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_261, D.13060
	movl	-64(%rbp), %ecx	# i, tmp548
	movslq	%ecx, %rcx	# tmp548, D.13058
	addq	%rcx, %rcx	# D.13058
	addq	%rcx, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_265, D.13061
	movzwl	%ax, %ecx	# D.13061, D.13055
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.893
	movq	6464(%rax), %rax	# enc_picture.893_268->imgUV, D.13063
	addq	$8, %rax	#, D.13063
	movq	(%rax), %rax	# *_270, D.13059
	movl	-60(%rbp), %esi	# j, tmp549
	movslq	%esi, %rsi	# tmp549, D.13058
	salq	$3, %rsi	#, D.13058
	addq	%rsi, %rax	# D.13058, D.13059
	movq	(%rax), %rax	# *_274, D.13060
	movl	-64(%rbp), %esi	# i, tmp550
	movslq	%esi, %rsi	# tmp550, D.13058
	addq	%rsi, %rsi	# D.13058
	addq	%rsi, %rax	# D.13058, D.13060
	movzwl	(%rax), %eax	# *_278, D.13061
	movzwl	%ax, %eax	# D.13061, D.13055
	subl	%eax, %ecx	# D.13055, D.13055
	movl	%ecx, %eax	# D.13055, D.13055
	cltq
	salq	$2, %rax	#, D.13058
	addq	%rdx, %rax	# D.13057, D.13057
	movl	(%rax), %eax	# *_284, D.13055
	cltq
	addq	%rax, -24(%rbp)	# D.13062, diff_v
	.loc 1 1618 0 discriminator 2
	addl	$1, -60(%rbp)	#, j
.L291:
	.loc 1 1618 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.894
	movl	3304(%rax), %eax	# input.894_220->img_height_cr, D.13055
	cmpl	-60(%rbp), %eax	# j, D.13055
	jg	.L292	#,
	.loc 1 1616 0 is_stmt 1
	addl	$1, -64(%rbp)	#, i
.L290:
	.loc 1 1616 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.895
	movl	3308(%rax), %eax	# input.895_217->img_width_cr, D.13055
	cmpl	-64(%rbp), %eax	# i, D.13055
	jg	.L293	#,
.L280:
	.loc 1 1628 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, diff_y
	jne	.L294	#,
	.loc 1 1629 0
	movq	$1, -40(%rbp)	#, diff_y
.L294:
	.loc 1 1630 0
	cmpq	$0, -32(%rbp)	#, diff_u
	jne	.L295	#,
	.loc 1 1631 0
	movq	$1, -32(%rbp)	#, diff_u
.L295:
	.loc 1 1632 0
	cmpq	$0, -24(%rbp)	#, diff_v
	jne	.L296	#,
	.loc 1 1633 0
	movq	$1, -24(%rbp)	#, diff_v
.L296:
	.loc 1 1637 0
	cmpq	$0, -40(%rbp)	#, diff_y
	je	.L297	#,
	.loc 1 1639 0
	movq	snr(%rip), %rbx	# snr, snr.896
	movl	-56(%rbp), %eax	# max_pix_value_sqd, tmp551
	testq	%rax, %rax	# tmp551
	js	.L298	#,
	cvtsi2sdq	%rax, %xmm0	# tmp551, D.13064
	jmp	.L299	#
.L298:
	movq	%rax, %rdx	# tmp551, tmp553
	shrq	%rdx	# tmp553
	andl	$1, %eax	#, tmp554
	orq	%rax, %rdx	# tmp554, tmp553
	cvtsi2sdq	%rdx, %xmm0	# tmp553, tmp552
	addsd	%xmm0, %xmm0	# tmp552, D.13064
.L299:
	cvtsi2sd	-48(%rbp), %xmm1	# impix, D.13064
	cvtsi2sdq	-40(%rbp), %xmm2	# diff_y, D.13064
	divsd	%xmm2, %xmm1	# D.13064, D.13064
	mulsd	%xmm1, %xmm0	# D.13064, D.13064
	call	log10	#
	movsd	.LC9(%rip), %xmm1	#, tmp555
	mulsd	%xmm1, %xmm0	# tmp555, D.13064
	unpcklpd	%xmm0, %xmm0	# D.13064
	cvtpd2ps	%xmm0, %xmm0	# D.13064, D.13065
	movss	%xmm0, (%rbx)	# D.13065, snr.896_293->snr_y
	.loc 1 1640 0
	movq	img(%rip), %rax	# img, img.897
	movl	72700(%rax), %eax	# img.897_302->yuv_format, D.13055
	testl	%eax, %eax	# D.13055
	je	.L300	#,
	.loc 1 1642 0
	movq	snr(%rip), %rbx	# snr, snr.898
	movl	-52(%rbp), %eax	# max_pix_value_sqd_uv, tmp556
	testq	%rax, %rax	# tmp556
	js	.L301	#,
	cvtsi2sdq	%rax, %xmm0	# tmp556, D.13064
	jmp	.L302	#
.L301:
	movq	%rax, %rdx	# tmp556, tmp558
	shrq	%rdx	# tmp558
	andl	$1, %eax	#, tmp559
	orq	%rax, %rdx	# tmp559, tmp558
	cvtsi2sdq	%rdx, %xmm0	# tmp558, tmp557
	addsd	%xmm0, %xmm0	# tmp557, D.13064
.L302:
	cvtsi2sd	-44(%rbp), %xmm1	# impix_cr, D.13064
	cvtsi2sdq	-32(%rbp), %xmm2	# diff_u, D.13064
	divsd	%xmm2, %xmm1	# D.13064, D.13064
	mulsd	%xmm1, %xmm0	# D.13064, D.13064
	call	log10	#
	movsd	.LC9(%rip), %xmm1	#, tmp560
	mulsd	%xmm1, %xmm0	# tmp560, D.13064
	unpcklpd	%xmm0, %xmm0	# D.13064
	cvtpd2ps	%xmm0, %xmm0	# D.13064, D.13065
	movss	%xmm0, 4(%rbx)	# D.13065, snr.898_304->snr_u
	.loc 1 1643 0
	movq	snr(%rip), %rbx	# snr, snr.899
	movl	-52(%rbp), %eax	# max_pix_value_sqd_uv, tmp561
	testq	%rax, %rax	# tmp561
	js	.L303	#,
	cvtsi2sdq	%rax, %xmm0	# tmp561, D.13064
	jmp	.L304	#
.L303:
	movq	%rax, %rdx	# tmp561, tmp563
	shrq	%rdx	# tmp563
	andl	$1, %eax	#, tmp564
	orq	%rax, %rdx	# tmp564, tmp563
	cvtsi2sdq	%rdx, %xmm0	# tmp563, tmp562
	addsd	%xmm0, %xmm0	# tmp562, D.13064
.L304:
	cvtsi2sd	-44(%rbp), %xmm1	# impix_cr, D.13064
	cvtsi2sdq	-24(%rbp), %xmm2	# diff_v, D.13064
	divsd	%xmm2, %xmm1	# D.13064, D.13064
	mulsd	%xmm1, %xmm0	# D.13064, D.13064
	call	log10	#
	movsd	.LC9(%rip), %xmm1	#, tmp565
	mulsd	%xmm1, %xmm0	# tmp565, D.13064
	unpcklpd	%xmm0, %xmm0	# D.13064
	cvtpd2ps	%xmm0, %xmm0	# D.13064, D.13065
	movss	%xmm0, 8(%rbx)	# D.13065, snr.899_313->snr_v
	jmp	.L297	#
.L300:
	.loc 1 1647 0
	movq	snr(%rip), %rdx	# snr, snr.900
	movl	.LC0(%rip), %eax	#, tmp566
	movl	%eax, 4(%rdx)	# tmp566, snr.900_322->snr_u
	.loc 1 1648 0
	movq	snr(%rip), %rdx	# snr, snr.901
	movl	.LC0(%rip), %eax	#, tmp567
	movl	%eax, 8(%rdx)	# tmp567, snr.901_323->snr_v
.L297:
	.loc 1 1653 0
	movq	img(%rip), %rax	# img, img.902
	movl	(%rax), %eax	# img.902_324->number, D.13055
	testl	%eax, %eax	# D.13055
	jne	.L305	#,
	.loc 1 1655 0
	movq	snr(%rip), %rdx	# snr, snr.903
	movq	snr(%rip), %rax	# snr, snr.904
	movl	(%rax), %eax	# snr.904_327->snr_y, D.13065
	movl	%eax, 12(%rdx)	# D.13065, snr.903_326->snr_y1
	.loc 1 1656 0
	movq	snr(%rip), %rdx	# snr, snr.905
	movq	snr(%rip), %rax	# snr, snr.906
	movl	4(%rax), %eax	# snr.906_330->snr_u, D.13065
	movl	%eax, 16(%rdx)	# D.13065, snr.905_329->snr_u1
	.loc 1 1657 0
	movq	snr(%rip), %rdx	# snr, snr.907
	movq	snr(%rip), %rax	# snr, snr.908
	movl	8(%rax), %eax	# snr.908_333->snr_v, D.13065
	movl	%eax, 20(%rdx)	# D.13065, snr.907_332->snr_v1
	.loc 1 1658 0
	movq	snr(%rip), %rdx	# snr, snr.909
	movq	snr(%rip), %rax	# snr, snr.910
	movl	12(%rax), %eax	# snr.910_336->snr_y1, D.13065
	movl	%eax, 60(%rdx)	# D.13065, snr.909_335->snr_ya
	.loc 1 1659 0
	movq	snr(%rip), %rdx	# snr, snr.911
	movq	snr(%rip), %rax	# snr, snr.912
	movl	16(%rax), %eax	# snr.912_339->snr_u1, D.13065
	movl	%eax, 64(%rdx)	# D.13065, snr.911_338->snr_ua
	.loc 1 1660 0
	movq	snr(%rip), %rdx	# snr, snr.913
	movq	snr(%rip), %rax	# snr, snr.914
	movl	20(%rax), %eax	# snr.914_342->snr_v1, D.13065
	movl	%eax, 68(%rdx)	# D.13065, snr.913_341->snr_va
	.loc 1 1661 0
	movq	snr(%rip), %rdx	# snr, snr.915
	movl	.LC0(%rip), %eax	#, tmp568
	movl	%eax, 32(%rdx)	# tmp568, snr.915_344->snr_yt
	.loc 1 1662 0
	movq	snr(%rip), %rdx	# snr, snr.916
	movl	.LC0(%rip), %eax	#, tmp569
	movl	%eax, 44(%rdx)	# tmp569, snr.916_345->snr_ut
	.loc 1 1663 0
	movq	snr(%rip), %rdx	# snr, snr.917
	movl	.LC0(%rip), %eax	#, tmp570
	movl	%eax, 56(%rdx)	# tmp570, snr.917_346->snr_vt
	.loc 1 1664 0
	movq	snr(%rip), %rdx	# snr, snr.918
	movl	.LC0(%rip), %eax	#, tmp571
	movl	%eax, 24(%rdx)	# tmp571, snr.918_347->snr_yt
	.loc 1 1665 0
	movq	snr(%rip), %rdx	# snr, snr.919
	movl	.LC0(%rip), %eax	#, tmp572
	movl	%eax, 36(%rdx)	# tmp572, snr.919_348->snr_ut
	.loc 1 1666 0
	movq	snr(%rip), %rdx	# snr, snr.920
	movl	.LC0(%rip), %eax	#, tmp573
	movl	%eax, 48(%rdx)	# tmp573, snr.920_349->snr_vt
	.loc 1 1667 0
	movq	snr(%rip), %rdx	# snr, snr.921
	movl	.LC0(%rip), %eax	#, tmp574
	movl	%eax, 28(%rdx)	# tmp574, snr.921_350->snr_yt
	.loc 1 1668 0
	movq	snr(%rip), %rdx	# snr, snr.922
	movl	.LC0(%rip), %eax	#, tmp575
	movl	%eax, 40(%rdx)	# tmp575, snr.922_351->snr_ut
	.loc 1 1669 0
	movq	snr(%rip), %rdx	# snr, snr.923
	movl	.LC0(%rip), %eax	#, tmp576
	movl	%eax, 52(%rdx)	# tmp576, snr.923_352->snr_vt
	jmp	.L306	#
.L305:
	.loc 1 1674 0
	movq	snr(%rip), %rax	# snr, snr.924
	movq	snr(%rip), %rdx	# snr, snr.925
	movss	60(%rdx), %xmm1	# snr.925_354->snr_ya, D.13065
	movq	img(%rip), %rdx	# img, img.926
	movl	(%rdx), %ecx	# img.926_356->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.927
	addl	%ecx, %edx	# D.13055, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.928
	movss	(%rdx), %xmm1	# snr.928_362->snr_y, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movq	img(%rip), %rdx	# img, img.929
	movl	(%rdx), %ecx	# img.929_365->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.930
	addl	%ecx, %edx	# D.13055, D.13055
	addl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm1	# D.13055, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 60(%rax)	# D.13065, snr.924_353->snr_ya
	.loc 1 1675 0
	movq	snr(%rip), %rax	# snr, snr.931
	movq	snr(%rip), %rdx	# snr, snr.932
	movss	64(%rdx), %xmm1	# snr.932_373->snr_ua, D.13065
	movq	img(%rip), %rdx	# img, img.933
	movl	(%rdx), %ecx	# img.933_375->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.934
	addl	%ecx, %edx	# D.13055, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.935
	movss	4(%rdx), %xmm1	# snr.935_381->snr_u, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movq	img(%rip), %rdx	# img, img.936
	movl	(%rdx), %ecx	# img.936_384->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.937
	addl	%ecx, %edx	# D.13055, D.13055
	addl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm1	# D.13055, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 64(%rax)	# D.13065, snr.931_372->snr_ua
	.loc 1 1676 0
	movq	snr(%rip), %rax	# snr, snr.938
	movq	snr(%rip), %rdx	# snr, snr.939
	movss	68(%rdx), %xmm1	# snr.939_392->snr_va, D.13065
	movq	img(%rip), %rdx	# img, img.940
	movl	(%rdx), %ecx	# img.940_394->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.941
	addl	%ecx, %edx	# D.13055, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.942
	movss	8(%rdx), %xmm1	# snr.942_400->snr_v, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movq	img(%rip), %rdx	# img, img.943
	movl	(%rdx), %ecx	# img.943_403->number, D.13055
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.944
	addl	%ecx, %edx	# D.13055, D.13055
	addl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm1	# D.13055, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 68(%rax)	# D.13065, snr.938_391->snr_va
.L306:
	.loc 1 1679 0
	movq	img(%rip), %rax	# img, img.945
	movl	24(%rax), %eax	# img.945_410->type, D.13055
	cmpl	$2, %eax	#, D.13055
	jne	.L307	#,
	.loc 1 1681 0
	movq	snr(%rip), %rax	# snr, snr.946
	movq	snr(%rip), %rdx	# snr, snr.947
	movss	32(%rdx), %xmm1	# snr.947_413->snr_yt, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.948
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.949
	movss	(%rdx), %xmm1	# snr.949_419->snr_y, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.950
	cvtsi2ss	%edx, %xmm1	# Iframe_ctr.950, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 32(%rax)	# D.13065, snr.946_412->snr_yt
	.loc 1 1682 0
	movq	snr(%rip), %rax	# snr, snr.951
	movq	snr(%rip), %rdx	# snr, snr.952
	movss	44(%rdx), %xmm1	# snr.952_426->snr_ut, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.953
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.954
	movss	4(%rdx), %xmm1	# snr.954_432->snr_u, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.955
	cvtsi2ss	%edx, %xmm1	# Iframe_ctr.955, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 44(%rax)	# D.13065, snr.951_425->snr_ut
	.loc 1 1683 0
	movq	snr(%rip), %rax	# snr, snr.956
	movq	snr(%rip), %rdx	# snr, snr.957
	movss	56(%rdx), %xmm1	# snr.957_439->snr_vt, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.958
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.959
	movss	8(%rdx), %xmm1	# snr.959_445->snr_v, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Iframe_ctr(%rip), %edx	# Iframe_ctr, Iframe_ctr.960
	cvtsi2ss	%edx, %xmm1	# Iframe_ctr.960, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 56(%rax)	# D.13065, snr.956_438->snr_vt
	jmp	.L274	#
.L307:
	.loc 1 1685 0
	movq	img(%rip), %rax	# img, img.961
	movl	24(%rax), %eax	# img.961_451->type, D.13055
	cmpl	$1, %eax	#, D.13055
	jne	.L309	#,
	.loc 1 1687 0
	movq	snr(%rip), %rax	# snr, snr.962
	movq	snr(%rip), %rdx	# snr, snr.963
	movss	28(%rdx), %xmm1	# snr.963_454->snr_yt, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.964
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.965
	movss	(%rdx), %xmm1	# snr.965_460->snr_y, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.966
	cvtsi2ss	%edx, %xmm1	# Bframe_ctr.966, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 28(%rax)	# D.13065, snr.962_453->snr_yt
	.loc 1 1688 0
	movq	snr(%rip), %rax	# snr, snr.967
	movq	snr(%rip), %rdx	# snr, snr.968
	movss	40(%rdx), %xmm1	# snr.968_467->snr_ut, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.969
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.970
	movss	4(%rdx), %xmm1	# snr.970_473->snr_u, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.971
	cvtsi2ss	%edx, %xmm1	# Bframe_ctr.971, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 40(%rax)	# D.13065, snr.967_466->snr_ut
	.loc 1 1689 0
	movq	snr(%rip), %rax	# snr, snr.972
	movq	snr(%rip), %rdx	# snr, snr.973
	movss	52(%rdx), %xmm1	# snr.973_480->snr_vt, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.974
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.975
	movss	8(%rdx), %xmm1	# snr.975_486->snr_v, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Bframe_ctr(%rip), %edx	# Bframe_ctr, Bframe_ctr.976
	cvtsi2ss	%edx, %xmm1	# Bframe_ctr.976, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 52(%rax)	# D.13065, snr.972_479->snr_vt
	jmp	.L274	#
.L309:
	.loc 1 1693 0
	movq	snr(%rip), %rax	# snr, snr.977
	movq	snr(%rip), %rdx	# snr, snr.978
	movss	24(%rdx), %xmm1	# snr.978_493->snr_yt, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.979
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.980
	movss	(%rdx), %xmm1	# snr.980_499->snr_y, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.981
	cvtsi2ss	%edx, %xmm1	# Pframe_ctr.981, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 24(%rax)	# D.13065, snr.977_492->snr_yt
	.loc 1 1694 0
	movq	snr(%rip), %rax	# snr, snr.982
	movq	snr(%rip), %rdx	# snr, snr.983
	movss	36(%rdx), %xmm1	# snr.983_506->snr_ut, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.984
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.985
	movss	4(%rdx), %xmm1	# snr.985_512->snr_u, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.986
	cvtsi2ss	%edx, %xmm1	# Pframe_ctr.986, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 36(%rax)	# D.13065, snr.982_505->snr_ut
	.loc 1 1695 0
	movq	snr(%rip), %rax	# snr, snr.987
	movq	snr(%rip), %rdx	# snr, snr.988
	movss	48(%rdx), %xmm1	# snr.988_519->snr_vt, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.989
	subl	$1, %edx	#, D.13055
	cvtsi2ss	%edx, %xmm0	# D.13055, D.13065
	mulss	%xmm1, %xmm0	# D.13065, D.13065
	movq	snr(%rip), %rdx	# snr, snr.990
	movss	8(%rdx), %xmm1	# snr.990_525->snr_v, D.13065
	addss	%xmm1, %xmm0	# D.13065, D.13065
	movl	Pframe_ctr(%rip), %edx	# Pframe_ctr, Pframe_ctr.991
	cvtsi2ss	%edx, %xmm1	# Pframe_ctr.991, D.13065
	divss	%xmm1, %xmm0	# D.13065, D.13065
	movss	%xmm0, 48(%rax)	# D.13065, snr.987_518->snr_vt
.L274:
	.loc 1 1698 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	find_snr, .-find_snr
	.type	find_distortion, @function
find_distortion:
.LFB19:
	.loc 1 1707 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1715 0
	movq	input(%rip), %rax	# input, input.992
	movl	68(%rax), %edx	# input.992_24->img_height, D.13066
	movq	input(%rip), %rax	# input, input.993
	movl	64(%rax), %eax	# input.993_26->img_width, D.13066
	imull	%edx, %eax	# D.13066, tmp282
	movl	%eax, -28(%rbp)	# tmp282, impix
	.loc 1 1717 0
	movq	img(%rip), %rax	# img, img.994
	movl	28(%rax), %eax	# img.994_29->structure, D.13066
	testl	%eax, %eax	# D.13066
	je	.L311	#,
	.loc 1 1720 0
	movq	$0, -24(%rbp)	#, diff_y
	.loc 1 1721 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L312	#
.L315:
	.loc 1 1723 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L313	#
.L314:
	.loc 1 1725 0 discriminator 2
	movq	img(%rip), %rax	# img, img.995
	movq	71776(%rax), %rcx	# img.995_38->quad, D.13067
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.996
	movl	-32(%rbp), %edx	# j, tmp283
	movslq	%edx, %rdx	# tmp283, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_43, D.13070
	movl	-36(%rbp), %edx	# i, tmp284
	movslq	%edx, %rdx	# tmp284, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_47, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	imgY_com(%rip), %rax	# imgY_com, imgY_com.997
	movl	-32(%rbp), %esi	# j, tmp285
	movslq	%esi, %rsi	# tmp285, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_53, D.13070
	movl	-36(%rbp), %esi	# i, tmp286
	movslq	%esi, %rsi	# tmp286, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_57, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp287, D.13066
	subl	%edx, %eax	# tmp287, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_64, D.13066
	cltq
	addq	%rax, -24(%rbp)	# D.13072, diff_y
	.loc 1 1723 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L313:
	.loc 1 1723 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.998
	movl	68(%rax), %eax	# input.998_36->img_height, D.13066
	cmpl	-32(%rbp), %eax	# j, D.13066
	jg	.L314	#,
	.loc 1 1721 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L312:
	.loc 1 1721 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.999
	movl	64(%rax), %eax	# input.999_33->img_width, D.13066
	cmpl	-36(%rbp), %eax	# i, D.13066
	jg	.L315	#,
	.loc 1 1729 0 is_stmt 1
	movq	$0, -16(%rbp)	#, diff_u
	.loc 1 1730 0
	movq	$0, -8(%rbp)	#, diff_v
	.loc 1 1732 0
	movq	img(%rip), %rax	# img, img.1000
	movl	72700(%rax), %eax	# img.1000_72->yuv_format, D.13066
	testl	%eax, %eax	# D.13066
	je	.L316	#,
	.loc 1 1735 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L317	#
.L320:
	.loc 1 1737 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L318	#
.L319:
	.loc 1 1739 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1001
	movq	71776(%rax), %rcx	# img.1001_80->quad, D.13067
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.1002
	movq	(%rax), %rax	# *imgUV_org.1002_82, D.13069
	movl	-32(%rbp), %edx	# j, tmp288
	movslq	%edx, %rdx	# tmp288, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_86, D.13070
	movl	-36(%rbp), %edx	# i, tmp289
	movslq	%edx, %rdx	# tmp289, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_90, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.1003
	movq	(%rax), %rax	# *imgUV_com.1003_93, D.13069
	movl	-32(%rbp), %esi	# j, tmp290
	movslq	%esi, %rsi	# tmp290, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_97, D.13070
	movl	-36(%rbp), %esi	# i, tmp291
	movslq	%esi, %rsi	# tmp291, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_101, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp292, D.13066
	subl	%edx, %eax	# tmp292, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_108, D.13066
	cltq
	addq	%rax, -16(%rbp)	# D.13072, diff_u
	.loc 1 1740 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1004
	movq	71776(%rax), %rcx	# img.1004_112->quad, D.13067
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.1005
	addq	$8, %rax	#, D.13073
	movq	(%rax), %rax	# *_115, D.13069
	movl	-32(%rbp), %edx	# j, tmp293
	movslq	%edx, %rdx	# tmp293, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_119, D.13070
	movl	-36(%rbp), %edx	# i, tmp294
	movslq	%edx, %rdx	# tmp294, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_123, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	imgUV_com(%rip), %rax	# imgUV_com, imgUV_com.1006
	addq	$8, %rax	#, D.13073
	movq	(%rax), %rax	# *_127, D.13069
	movl	-32(%rbp), %esi	# j, tmp295
	movslq	%esi, %rsi	# tmp295, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_131, D.13070
	movl	-36(%rbp), %esi	# i, tmp296
	movslq	%esi, %rsi	# tmp296, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_135, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp297, D.13066
	subl	%edx, %eax	# tmp297, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_142, D.13066
	cltq
	addq	%rax, -8(%rbp)	# D.13072, diff_v
	.loc 1 1737 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L318:
	.loc 1 1737 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1007
	movl	3304(%rax), %eax	# input.1007_78->img_height_cr, D.13066
	cmpl	-32(%rbp), %eax	# j, D.13066
	jg	.L319	#,
	.loc 1 1735 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L317:
	.loc 1 1735 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1008
	movl	3308(%rax), %eax	# input.1008_75->img_width_cr, D.13066
	cmpl	-36(%rbp), %eax	# i, D.13066
	jg	.L320	#,
	jmp	.L316	#
.L311:
	.loc 1 1747 0 is_stmt 1
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1009
	movq	%rax, imgY_org(%rip)	# imgY_org_frm.1009, imgY_org
	.loc 1 1748 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1010
	movq	%rax, imgUV_org(%rip)	# imgUV_org_frm.1010, imgUV_org
	.loc 1 1750 0
	movq	$0, -24(%rbp)	#, diff_y
	.loc 1 1751 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L321	#
.L324:
	.loc 1 1753 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L322	#
.L323:
	.loc 1 1755 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1011
	movq	71776(%rax), %rcx	# img.1011_157->quad, D.13067
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.1012
	movl	-32(%rbp), %edx	# j, tmp298
	movslq	%edx, %rdx	# tmp298, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_162, D.13070
	movl	-36(%rbp), %edx	# i, tmp299
	movslq	%edx, %rdx	# tmp299, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_166, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1013
	movq	6424(%rax), %rax	# enc_picture.1013_169->imgY, D.13069
	movl	-32(%rbp), %esi	# j, tmp300
	movslq	%esi, %rsi	# tmp300, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_173, D.13070
	movl	-36(%rbp), %esi	# i, tmp301
	movslq	%esi, %rsi	# tmp301, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_177, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp302, D.13066
	subl	%edx, %eax	# tmp302, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_184, D.13066
	cltq
	addq	%rax, -24(%rbp)	# D.13072, diff_y
	.loc 1 1753 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L322:
	.loc 1 1753 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1014
	movl	68(%rax), %eax	# input.1014_155->img_height, D.13066
	cmpl	-32(%rbp), %eax	# j, D.13066
	jg	.L323	#,
	.loc 1 1751 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L321:
	.loc 1 1751 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1015
	movl	64(%rax), %eax	# input.1015_152->img_width, D.13066
	cmpl	-36(%rbp), %eax	# i, D.13066
	jg	.L324	#,
	.loc 1 1759 0 is_stmt 1
	movq	$0, -16(%rbp)	#, diff_u
	.loc 1 1760 0
	movq	$0, -8(%rbp)	#, diff_v
	.loc 1 1762 0
	movq	img(%rip), %rax	# img, img.1016
	movl	72700(%rax), %eax	# img.1016_192->yuv_format, D.13066
	testl	%eax, %eax	# D.13066
	je	.L316	#,
	.loc 1 1765 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L325	#
.L328:
	.loc 1 1767 0
	movl	$0, -32(%rbp)	#, j
	jmp	.L326	#
.L327:
	.loc 1 1769 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1017
	movq	71776(%rax), %rcx	# img.1017_200->quad, D.13067
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.1018
	movq	(%rax), %rax	# *imgUV_org.1018_202, D.13069
	movl	-32(%rbp), %edx	# j, tmp303
	movslq	%edx, %rdx	# tmp303, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_206, D.13070
	movl	-36(%rbp), %edx	# i, tmp304
	movslq	%edx, %rdx	# tmp304, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_210, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1019
	movq	6464(%rax), %rax	# enc_picture.1019_213->imgUV, D.13073
	movq	(%rax), %rax	# *_214, D.13069
	movl	-32(%rbp), %esi	# j, tmp305
	movslq	%esi, %rsi	# tmp305, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_218, D.13070
	movl	-36(%rbp), %esi	# i, tmp306
	movslq	%esi, %rsi	# tmp306, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_222, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp307, D.13066
	subl	%edx, %eax	# tmp307, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_229, D.13066
	cltq
	addq	%rax, -16(%rbp)	# D.13072, diff_u
	.loc 1 1770 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1020
	movq	71776(%rax), %rcx	# img.1020_233->quad, D.13067
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.1021
	addq	$8, %rax	#, D.13073
	movq	(%rax), %rax	# *_236, D.13069
	movl	-32(%rbp), %edx	# j, tmp308
	movslq	%edx, %rdx	# tmp308, D.13068
	salq	$3, %rdx	#, D.13068
	addq	%rdx, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_240, D.13070
	movl	-36(%rbp), %edx	# i, tmp309
	movslq	%edx, %rdx	# tmp309, D.13068
	addq	%rdx, %rdx	# D.13068
	addq	%rdx, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_244, D.13071
	movzwl	%ax, %edx	# D.13071, D.13066
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1022
	movq	6464(%rax), %rax	# enc_picture.1022_247->imgUV, D.13073
	addq	$8, %rax	#, D.13073
	movq	(%rax), %rax	# *_249, D.13069
	movl	-32(%rbp), %esi	# j, tmp310
	movslq	%esi, %rsi	# tmp310, D.13068
	salq	$3, %rsi	#, D.13068
	addq	%rsi, %rax	# D.13068, D.13069
	movq	(%rax), %rax	# *_253, D.13070
	movl	-36(%rbp), %esi	# i, tmp311
	movslq	%esi, %rsi	# tmp311, D.13068
	addq	%rsi, %rsi	# D.13068
	addq	%rsi, %rax	# D.13068, D.13070
	movzwl	(%rax), %eax	# *_257, D.13071
	movzwl	%ax, %eax	# D.13071, D.13066
	subl	%eax, %edx	# D.13066, D.13066
	movl	%edx, %eax	# D.13066, D.13066
	cltd
	xorl	%edx, %eax	# tmp312, D.13066
	subl	%edx, %eax	# tmp312, D.13066
	cltq
	salq	$2, %rax	#, D.13068
	addq	%rcx, %rax	# D.13067, D.13067
	movl	(%rax), %eax	# *_264, D.13066
	cltq
	addq	%rax, -8(%rbp)	# D.13072, diff_v
	.loc 1 1767 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L326:
	.loc 1 1767 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1023
	movl	3304(%rax), %eax	# input.1023_198->img_height_cr, D.13066
	cmpl	-32(%rbp), %eax	# j, D.13066
	jg	.L327	#,
	.loc 1 1765 0 is_stmt 1
	addl	$1, -36(%rbp)	#, i
.L325:
	.loc 1 1765 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1024
	movl	3308(%rax), %eax	# input.1024_195->img_width_cr, D.13066
	cmpl	-36(%rbp), %eax	# i, D.13066
	jg	.L328	#,
.L316:
	.loc 1 1776 0 is_stmt 1
	movq	snr(%rip), %rax	# snr, snr.1025
	cvtsi2ssq	-24(%rbp), %xmm0	# diff_y, D.13074
	movss	%xmm0, (%rax)	# D.13074, snr.1025_270->snr_y
	.loc 1 1777 0
	movq	snr(%rip), %rax	# snr, snr.1026
	cvtsi2ssq	-16(%rbp), %xmm0	# diff_u, D.13074
	movss	%xmm0, 4(%rax)	# D.13074, snr.1026_272->snr_u
	.loc 1 1778 0
	movq	snr(%rip), %rax	# snr, snr.1027
	cvtsi2ssq	-8(%rbp), %xmm0	# diff_v, D.13074
	movss	%xmm0, 8(%rax)	# D.13074, snr.1027_274->snr_v
	.loc 1 1779 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	find_distortion, .-find_distortion
	.globl	dummy_slice_too_big
	.type	dummy_slice_too_big, @function
dummy_slice_too_big:
.LFB20:
	.loc 1 1789 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# bits_slice, bits_slice
	.loc 1 1790 0
	movl	$0, %eax	#, D.13075
	.loc 1 1791 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	dummy_slice_too_big, .-dummy_slice_too_big
	.globl	copy_rdopt_data
	.type	copy_rdopt_data, @function
copy_rdopt_data:
.LFB21:
	.loc 1 1800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# bot_block, bot_block
	.loc 1 1801 0
	movq	img(%rip), %rax	# img, img.1028
	movl	12(%rax), %eax	# img.1028_33->current_mb_nr, tmp736
	movl	%eax, -32(%rbp)	# tmp736, mb_nr
	.loc 1 1802 0
	movq	img(%rip), %rax	# img, img.1029
	movq	14168(%rax), %rdx	# img.1029_35->mb_data, D.13076
	movl	-32(%rbp), %eax	# mb_nr, tmp737
	cltq
	imulq	$632, %rax, %rax	#, D.13077, D.13077
	addq	%rdx, %rax	# D.13076, tmp738
	movq	%rax, -8(%rbp)	# tmp738, currMB
	.loc 1 1805 0
	movq	img(%rip), %rax	# img, img.1030
	movl	24(%rax), %eax	# img.1030_40->type, D.13078
	cmpl	$1, %eax	#, D.13078
	sete	%al	#, D.13079
	movzbl	%al, %eax	# D.13079, tmp739
	movl	%eax, -28(%rbp)	# tmp739, bframe
	.loc 1 1809 0
	movq	img(%rip), %rax	# img, img.1032
	movl	72400(%rax), %eax	# img.1032_44->MbaffFrameFlag, D.13078
	testl	%eax, %eax	# D.13078
	je	.L332	#,
	.loc 1 1809 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp740
	movl	532(%rax), %eax	# currMB_39->mb_field, D.13078
	testl	%eax, %eax	# D.13078
	je	.L332	#,
	movq	img(%rip), %rax	# img, img.1034
	movl	12(%rax), %eax	# img.1034_47->current_mb_nr, D.13078
	andl	$1, %eax	#, D.13080
	testl	%eax, %eax	# D.13080
	je	.L333	#,
	movl	$4, %eax	#, iftmp.1033
	jmp	.L334	#
.L333:
	.loc 1 1809 0 discriminator 2
	movl	$2, %eax	#, iftmp.1033
.L334:
	.loc 1 1809 0 discriminator 3
	jmp	.L335	#
.L332:
	.loc 1 1809 0 discriminator 2
	movl	$0, %eax	#, iftmp.1031
.L335:
	.loc 1 1809 0 discriminator 3
	movl	%eax, -24(%rbp)	# iftmp.1031, list_offset
	.loc 1 1811 0 is_stmt 1 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1035
	movl	3224(%rax), %eax	# rdopt.1035_56->mode, tmp741
	movl	%eax, -20(%rbp)	# tmp741, mode
	.loc 1 1812 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1036
	movl	3096(%rax), %edx	# rdopt.1036_58->mb_type, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp742
	movl	%edx, 72(%rax)	# D.13078, currMB_39->mb_type
	.loc 1 1813 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1037
	movl	3208(%rax), %edx	# rdopt.1037_60->cbp, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp743
	movl	%edx, 460(%rax)	# D.13078, currMB_39->cbp
	.loc 1 1814 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1038
	movq	3216(%rax), %rdx	# rdopt.1038_62->cbp_blk, D.13081
	movq	-8(%rbp), %rax	# currMB, tmp744
	movq	%rdx, 464(%rax)	# D.13081, currMB_39->cbp_blk
	.loc 1 1816 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1039
	movl	3100(%rax), %edx	# rdopt.1039_64->bi_pred_me, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp745
	movl	%edx, 580(%rax)	# D.13078, currMB_39->bi_pred_me
	.loc 1 1818 0 discriminator 3
	movq	img(%rip), %rax	# img, img.1040
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1041
	movl	3328(%rdx), %edx	# rdopt.1041_67->i16offset, D.13078
	movl	%edx, 72380(%rax)	# D.13078, img.1040_66->i16offset
	.loc 1 1820 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1042
	movl	3348(%rax), %edx	# rdopt.1042_69->prev_qp, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp746
	movl	%edx, 592(%rax)	# D.13078, currMB_39->prev_qp
	.loc 1 1821 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1043
	movl	3352(%rax), %edx	# rdopt.1043_71->prev_delta_qp, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp747
	movl	%edx, 596(%rax)	# D.13078, currMB_39->prev_delta_qp
	.loc 1 1822 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1044
	movl	3344(%rax), %edx	# rdopt.1044_73->qp, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp748
	movl	%edx, 12(%rax)	# D.13078, currMB_39->qp
	.loc 1 1824 0 discriminator 3
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1045
	movl	3332(%rax), %edx	# rdopt.1045_75->c_ipred_mode, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp749
	movl	%edx, 524(%rax)	# D.13078, currMB_39->c_ipred_mode
	.loc 1 1826 0 discriminator 3
	movl	$0, -48(%rbp)	#, i
	jmp	.L336	#
.L343:
	.loc 1 1827 0
	movl	$0, -44(%rbp)	#, j
	jmp	.L337	#
.L342:
	.loc 1 1828 0
	movl	$0, -40(%rbp)	#, k
	jmp	.L338	#
.L341:
	.loc 1 1829 0
	movl	$0, -36(%rbp)	#, l
	jmp	.L339	#
.L340:
	.loc 1 1830 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1046
	movq	14136(%rax), %rax	# img.1046_84->cofAC, D.13082
	movl	-48(%rbp), %edx	# i, tmp750
	movslq	%edx, %rdx	# tmp750, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13082
	movq	(%rax), %rax	# *_88, D.13083
	movl	-44(%rbp), %edx	# j, tmp751
	movslq	%edx, %rdx	# tmp751, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13083
	movq	(%rax), %rax	# *_92, D.13084
	movl	-40(%rbp), %edx	# k, tmp752
	movslq	%edx, %rdx	# tmp752, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_96, D.13085
	movl	-36(%rbp), %edx	# l, tmp753
	movslq	%edx, %rdx	# tmp753, D.13077
	salq	$2, %rdx	#, D.13077
	addq	%rax, %rdx	# D.13085, D.13085
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1047
	movq	3080(%rax), %rax	# rdopt.1047_101->cofAC, D.13082
	movl	-48(%rbp), %ecx	# i, tmp754
	movslq	%ecx, %rcx	# tmp754, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13082
	movq	(%rax), %rax	# *_105, D.13083
	movl	-44(%rbp), %ecx	# j, tmp755
	movslq	%ecx, %rcx	# tmp755, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13083
	movq	(%rax), %rax	# *_109, D.13084
	movl	-40(%rbp), %ecx	# k, tmp756
	movslq	%ecx, %rcx	# tmp756, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_113, D.13085
	movl	-36(%rbp), %ecx	# l, tmp757
	movslq	%ecx, %rcx	# tmp757, D.13077
	salq	$2, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13085
	movl	(%rax), %eax	# *_117, D.13078
	movl	%eax, (%rdx)	# D.13078, *_100
	.loc 1 1829 0 discriminator 2
	addl	$1, -36(%rbp)	#, l
.L339:
	.loc 1 1829 0 is_stmt 0 discriminator 1
	cmpl	$64, -36(%rbp)	#, l
	jle	.L340	#,
	.loc 1 1828 0 is_stmt 1
	addl	$1, -40(%rbp)	#, k
.L338:
	.loc 1 1828 0 is_stmt 0 discriminator 1
	cmpl	$1, -40(%rbp)	#, k
	jle	.L341	#,
	.loc 1 1827 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L337:
	.loc 1 1827 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, j
	jle	.L342	#,
	.loc 1 1826 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L336:
	.loc 1 1826 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1048
	movl	72692(%rax), %eax	# img.1048_78->num_blk8x8_uv, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-48(%rbp), %eax	# i, D.13078
	jg	.L343	#,
	.loc 1 1832 0 is_stmt 1
	movl	$0, -48(%rbp)	#, i
	jmp	.L344	#
.L349:
	.loc 1 1833 0
	movl	$0, -40(%rbp)	#, k
	jmp	.L345	#
.L348:
	.loc 1 1834 0
	movl	$0, -36(%rbp)	#, l
	jmp	.L346	#
.L347:
	.loc 1 1835 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1049
	movq	14144(%rax), %rax	# img.1049_126->cofDC, D.13083
	movl	-48(%rbp), %edx	# i, tmp758
	movslq	%edx, %rdx	# tmp758, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13083
	movq	(%rax), %rax	# *_130, D.13084
	movl	-40(%rbp), %edx	# k, tmp759
	movslq	%edx, %rdx	# tmp759, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_134, D.13085
	movl	-36(%rbp), %edx	# l, tmp760
	movslq	%edx, %rdx	# tmp760, D.13077
	salq	$2, %rdx	#, D.13077
	addq	%rax, %rdx	# D.13085, D.13085
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1050
	movq	3088(%rax), %rax	# rdopt.1050_139->cofDC, D.13083
	movl	-48(%rbp), %ecx	# i, tmp761
	movslq	%ecx, %rcx	# tmp761, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13083
	movq	(%rax), %rax	# *_143, D.13084
	movl	-40(%rbp), %ecx	# k, tmp762
	movslq	%ecx, %rcx	# tmp762, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_147, D.13085
	movl	-36(%rbp), %ecx	# l, tmp763
	movslq	%ecx, %rcx	# tmp763, D.13077
	salq	$2, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13085
	movl	(%rax), %eax	# *_151, D.13078
	movl	%eax, (%rdx)	# D.13078, *_138
	.loc 1 1834 0 discriminator 2
	addl	$1, -36(%rbp)	#, l
.L346:
	.loc 1 1834 0 is_stmt 0 discriminator 1
	cmpl	$17, -36(%rbp)	#, l
	jle	.L347	#,
	.loc 1 1833 0 is_stmt 1
	addl	$1, -40(%rbp)	#, k
.L345:
	.loc 1 1833 0 is_stmt 0 discriminator 1
	cmpl	$1, -40(%rbp)	#, k
	jle	.L348	#,
	.loc 1 1832 0 is_stmt 1
	addl	$1, -48(%rbp)	#, i
.L344:
	.loc 1 1832 0 is_stmt 0 discriminator 1
	cmpl	$2, -48(%rbp)	#, i
	jle	.L349	#,
	.loc 1 1837 0 is_stmt 1
	movl	$0, -44(%rbp)	#, j
	jmp	.L350	#
.L354:
	.loc 1 1838 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L351	#
.L353:
	.loc 1 1840 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1051
	movq	6480(%rax), %rax	# enc_picture.1051_158->ref_idx, D.13086
	movq	(%rax), %rdx	# *_159, D.13087
	movq	img(%rip), %rax	# img, img.1052
	movl	144(%rax), %ecx	# img.1052_161->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp764
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rdx	# *_166, D.13088
	movq	img(%rip), %rax	# img, img.1053
	movl	148(%rax), %ecx	# img.1053_168->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp765
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rax, %rdx	# D.13077, D.13088
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1054
	movl	-48(%rbp), %ecx	# i, tmp767
	movslq	%ecx, %rcx	# tmp767, tmp766
	movl	-44(%rbp), %esi	# j, tmp769
	movslq	%esi, %rsi	# tmp769, tmp768
	salq	$2, %rsi	#, tmp770
	addq	%rsi, %rcx	# tmp770, tmp771
	addq	$1632, %rcx	#, tmp772
	movzwl	(%rax,%rcx,2), %eax	# rdopt.1054_174->refar, D.13089
	movw	%ax, (%rdx)	# D.13089, *_173
	.loc 1 1841 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1055
	movq	6488(%rax), %rax	# enc_picture.1055_176->ref_pic_id, D.13090
	movq	(%rax), %rdx	# *_177, D.13091
	movq	img(%rip), %rax	# img, img.1056
	movl	144(%rax), %ecx	# img.1056_179->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp773
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13091, D.13091
	movq	(%rax), %rdx	# *_184, D.13092
	movq	img(%rip), %rax	# img, img.1057
	movl	148(%rax), %ecx	# img.1057_186->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp774
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	leaq	(%rdx,%rax), %rsi	#, D.13092
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.1058
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1059
	movq	6480(%rax), %rax	# enc_picture.1059_193->ref_idx, D.13086
	movq	(%rax), %rdx	# *_194, D.13087
	movq	img(%rip), %rax	# img, img.1060
	movl	144(%rax), %edi	# img.1060_196->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp775
	addl	%edi, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rdx	# *_201, D.13088
	movq	img(%rip), %rax	# img, img.1061
	movl	148(%rax), %edi	# img.1061_203->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp776
	addl	%edi, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rdx, %rax	# D.13088, D.13088
	movzwl	(%rax), %eax	# *_208, D.13089
	cwtl
	movslq	%eax, %rdi	# D.13078, tmp777
	movl	-24(%rbp), %eax	# list_offset, tmp779
	movslq	%eax, %rdx	# tmp779, tmp778
	movq	%rdx, %rax	# tmp778, tmp780
	salq	$5, %rax	#, tmp781
	addq	%rdx, %rax	# tmp778, tmp780
	addq	%rdi, %rax	# tmp777, tmp782
	addq	$2, %rax	#, tmp783
	movq	8(%rcx,%rax,8), %rax	# enc_picture.1058_192->ref_pic_num, D.13081
	movq	%rax, (%rsi)	# D.13081, *_191
	.loc 1 1842 0
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L352	#,
	.loc 1 1844 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1062
	movq	6480(%rax), %rax	# enc_picture.1062_212->ref_idx, D.13086
	addq	$8, %rax	#, D.13086
	movq	(%rax), %rdx	# *_214, D.13087
	movq	img(%rip), %rax	# img, img.1063
	movl	144(%rax), %ecx	# img.1063_216->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp784
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rdx	# *_221, D.13088
	movq	img(%rip), %rax	# img, img.1064
	movl	148(%rax), %ecx	# img.1064_223->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp785
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rax, %rdx	# D.13077, D.13088
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1065
	movl	-48(%rbp), %ecx	# i, tmp787
	movslq	%ecx, %rcx	# tmp787, tmp786
	movl	-44(%rbp), %esi	# j, tmp789
	movslq	%esi, %rsi	# tmp789, tmp788
	salq	$2, %rsi	#, tmp790
	addq	%rsi, %rcx	# tmp790, tmp791
	addq	$1648, %rcx	#, tmp792
	movzwl	(%rax,%rcx,2), %eax	# rdopt.1065_229->refar, D.13089
	movw	%ax, (%rdx)	# D.13089, *_228
	.loc 1 1845 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1066
	movq	6488(%rax), %rax	# enc_picture.1066_231->ref_pic_id, D.13090
	addq	$8, %rax	#, D.13090
	movq	(%rax), %rdx	# *_233, D.13091
	movq	img(%rip), %rax	# img, img.1067
	movl	144(%rax), %ecx	# img.1067_235->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp793
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13091, D.13091
	movq	(%rax), %rdx	# *_240, D.13092
	movq	img(%rip), %rax	# img, img.1068
	movl	148(%rax), %ecx	# img.1068_242->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp794
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	leaq	(%rdx,%rax), %rsi	#, D.13092
	movq	enc_picture(%rip), %rcx	# enc_picture, enc_picture.1069
	movl	-24(%rbp), %eax	# list_offset, tmp795
	leal	1(%rax), %r8d	#, D.13078
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1070
	movq	6480(%rax), %rax	# enc_picture.1070_250->ref_idx, D.13086
	addq	$8, %rax	#, D.13086
	movq	(%rax), %rdx	# *_252, D.13087
	movq	img(%rip), %rax	# img, img.1071
	movl	144(%rax), %edi	# img.1071_254->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp796
	addl	%edi, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rdx	# *_259, D.13088
	movq	img(%rip), %rax	# img, img.1072
	movl	148(%rax), %edi	# img.1072_261->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp797
	addl	%edi, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rdx, %rax	# D.13088, D.13088
	movzwl	(%rax), %eax	# *_266, D.13089
	cwtl
	movslq	%eax, %rdi	# D.13078, tmp798
	movslq	%r8d, %rdx	# D.13078, tmp799
	movq	%rdx, %rax	# tmp799, tmp800
	salq	$5, %rax	#, tmp801
	addq	%rdx, %rax	# tmp799, tmp800
	addq	%rdi, %rax	# tmp798, tmp802
	addq	$2, %rax	#, tmp803
	movq	8(%rcx,%rax,8), %rax	# enc_picture.1069_248->ref_pic_num, D.13081
	movq	%rax, (%rsi)	# D.13081, *_247
.L352:
	.loc 1 1838 0
	addl	$1, -48(%rbp)	#, i
.L351:
	.loc 1 1838 0 is_stmt 0 discriminator 1
	cmpl	$3, -48(%rbp)	#, i
	jle	.L353	#,
	.loc 1 1837 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L350:
	.loc 1 1837 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, j
	jle	.L354	#,
	.loc 1 1850 0 is_stmt 1
	movl	$0, -44(%rbp)	#, j
	jmp	.L355	#
.L358:
	.loc 1 1851 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L356	#
.L357:
	.loc 1 1853 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1073
	movq	6424(%rax), %rdx	# enc_picture.1073_274->imgY, D.13093
	movq	img(%rip), %rax	# img, img.1074
	movl	156(%rax), %ecx	# img.1074_276->pix_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp804
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13093, D.13093
	movq	(%rax), %rdx	# *_281, D.13094
	movq	img(%rip), %rax	# img, img.1075
	movl	152(%rax), %ecx	# img.1075_283->pix_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp805
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rax, %rdx	# D.13077, D.13094
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1076
	movl	-48(%rbp), %ecx	# i, tmp807
	movslq	%ecx, %rcx	# tmp807, tmp806
	movl	-44(%rbp), %esi	# j, tmp809
	movslq	%esi, %rsi	# tmp809, tmp808
	salq	$4, %rsi	#, tmp810
	addq	%rsi, %rcx	# tmp810, tmp811
	movl	8(%rax,%rcx,4), %eax	# rdopt.1076_289->rec_mbY, D.13078
	movw	%ax, (%rdx)	# D.13095, *_288
	.loc 1 1851 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L356:
	.loc 1 1851 0 is_stmt 0 discriminator 1
	cmpl	$15, -48(%rbp)	#, i
	jle	.L357	#,
	.loc 1 1850 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L355:
	.loc 1 1850 0 is_stmt 0 discriminator 1
	cmpl	$15, -44(%rbp)	#, j
	jle	.L358	#,
	.loc 1 1857 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1077
	movl	72700(%rax), %eax	# img.1077_294->yuv_format, D.13078
	testl	%eax, %eax	# D.13078
	je	.L359	#,
	.loc 1 1859 0
	movl	$0, -44(%rbp)	#, j
	jmp	.L360	#
.L363:
	.loc 1 1860 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L361	#
.L362:
	.loc 1 1862 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1078
	movq	6464(%rax), %rax	# enc_picture.1078_302->imgUV, D.13096
	movq	(%rax), %rdx	# *_303, D.13093
	movq	img(%rip), %rax	# img, img.1079
	movl	164(%rax), %ecx	# img.1079_305->pix_c_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp812
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13093, D.13093
	movq	(%rax), %rdx	# *_310, D.13094
	movq	img(%rip), %rax	# img, img.1080
	movl	160(%rax), %ecx	# img.1080_312->pix_c_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp813
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rax, %rdx	# D.13077, D.13094
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1081
	movl	-48(%rbp), %ecx	# i, tmp815
	movslq	%ecx, %rcx	# tmp815, tmp814
	movl	-44(%rbp), %esi	# j, tmp817
	movslq	%esi, %rsi	# tmp817, tmp816
	salq	$4, %rsi	#, tmp818
	addq	%rsi, %rcx	# tmp818, tmp819
	addq	$256, %rcx	#, tmp820
	movl	8(%rax,%rcx,4), %eax	# rdopt.1081_318->rec_mbU, D.13078
	movw	%ax, (%rdx)	# D.13095, *_317
	.loc 1 1863 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1082
	movq	6464(%rax), %rax	# enc_picture.1082_321->imgUV, D.13096
	addq	$8, %rax	#, D.13096
	movq	(%rax), %rdx	# *_323, D.13093
	movq	img(%rip), %rax	# img, img.1083
	movl	164(%rax), %ecx	# img.1083_325->pix_c_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp821
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13093, D.13093
	movq	(%rax), %rdx	# *_330, D.13094
	movq	img(%rip), %rax	# img, img.1084
	movl	160(%rax), %ecx	# img.1084_332->pix_c_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp822
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	addq	%rax, %rax	# D.13077
	addq	%rax, %rdx	# D.13077, D.13094
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1085
	movl	-48(%rbp), %ecx	# i, tmp824
	movslq	%ecx, %rcx	# tmp824, tmp823
	movl	-44(%rbp), %esi	# j, tmp826
	movslq	%esi, %rsi	# tmp826, tmp825
	salq	$4, %rsi	#, tmp827
	addq	%rsi, %rcx	# tmp827, tmp828
	addq	$512, %rcx	#, tmp829
	movl	8(%rax,%rcx,4), %eax	# rdopt.1085_338->rec_mbV, D.13078
	movw	%ax, (%rdx)	# D.13095, *_337
	.loc 1 1860 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L361:
	.loc 1 1860 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1086
	movl	72708(%rax), %eax	# img.1086_300->mb_cr_size_x, D.13078
	cmpl	-48(%rbp), %eax	# i, D.13078
	jg	.L362	#,
	.loc 1 1859 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L360:
	.loc 1 1859 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1087
	movl	72712(%rax), %eax	# img.1087_297->mb_cr_size_y, D.13078
	cmpl	-44(%rbp), %eax	# j, D.13078
	jg	.L363	#,
.L359:
	.loc 1 1867 0 is_stmt 1
	movl	$0, -48(%rbp)	#, i
	jmp	.L364	#
.L365:
	.loc 1 1869 0 discriminator 2
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1088
	movl	-48(%rbp), %edx	# i, tmp831
	movslq	%edx, %rdx	# tmp831, tmp830
	addq	$776, %rdx	#, tmp832
	movl	(%rax,%rdx,4), %edx	# rdopt.1088_344->b8mode, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp833
	movl	-48(%rbp), %ecx	# i, tmp835
	movslq	%ecx, %rcx	# tmp835, tmp834
	addq	$116, %rcx	#, tmp836
	movl	%edx, 8(%rax,%rcx,4)	# D.13078, currMB_39->b8mode
	.loc 1 1870 0 discriminator 2
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1089
	movl	-48(%rbp), %edx	# i, tmp838
	movslq	%edx, %rdx	# tmp838, tmp837
	addq	$780, %rdx	#, tmp839
	movl	(%rax,%rdx,4), %edx	# rdopt.1089_346->b8pdir, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp840
	movl	-48(%rbp), %ecx	# i, tmp842
	movslq	%ecx, %rcx	# tmp842, tmp841
	addq	$120, %rcx	#, tmp843
	movl	%edx, 8(%rax,%rcx,4)	# D.13078, currMB_39->b8pdir
	.loc 1 1867 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L364:
	.loc 1 1867 0 is_stmt 0 discriminator 1
	cmpl	$3, -48(%rbp)	#, i
	jle	.L365	#,
	.loc 1 1873 0 is_stmt 1
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1090
	movl	3336(%rax), %edx	# rdopt.1090_349->luma_transform_size_8x8_flag, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp844
	movl	%edx, 572(%rax)	# D.13078, currMB_39->luma_transform_size_8x8_flag
	.loc 1 1877 0
	cmpl	$8, -20(%rbp)	#, mode
	jne	.L366	#,
	.loc 1 1879 0
	movl	$0, -40(%rbp)	#, k
	movq	img(%rip), %rax	# img, img.1091
	movl	148(%rax), %eax	# img.1091_352->block_y, tmp845
	movl	%eax, -44(%rbp)	# tmp845, j
	jmp	.L367	#
.L370:
	.loc 1 1880 0
	movq	img(%rip), %rax	# img, img.1092
	movl	144(%rax), %eax	# img.1092_357->block_x, tmp846
	movl	%eax, -48(%rbp)	# tmp846, i
	jmp	.L368	#
.L369:
	.loc 1 1882 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1093
	movq	104(%rax), %rax	# img.1093_362->ipredmode, D.13084
	movl	-48(%rbp), %edx	# i, tmp847
	movslq	%edx, %rdx	# tmp847, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_366, D.13085
	movl	-44(%rbp), %edx	# j, tmp848
	movslq	%edx, %rdx	# tmp848, D.13077
	salq	$2, %rdx	#, D.13077
	addq	%rax, %rdx	# D.13085, D.13085
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1094
	movq	3136(%rax), %rax	# rdopt.1094_371->ipredmode, D.13084
	movl	-48(%rbp), %ecx	# i, tmp849
	movslq	%ecx, %rcx	# tmp849, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_375, D.13085
	movl	-44(%rbp), %ecx	# j, tmp850
	movslq	%ecx, %rcx	# tmp850, D.13077
	salq	$2, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13085
	movl	(%rax), %eax	# *_379, D.13078
	movl	%eax, (%rdx)	# D.13078, *_370
	.loc 1 1883 0 discriminator 2
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1095
	movl	-40(%rbp), %edx	# k, tmp852
	movslq	%edx, %rdx	# tmp852, tmp851
	addq	$784, %rdx	#, tmp853
	movl	8(%rax,%rdx,4), %edx	# rdopt.1095_381->intra_pred_modes, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp854
	movl	-40(%rbp), %ecx	# k, tmp856
	movslq	%ecx, %rcx	# tmp856, tmp855
	addq	$80, %rcx	#, tmp857
	movl	%edx, 12(%rax,%rcx,4)	# D.13078, currMB_39->intra_pred_modes
	.loc 1 1880 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
	addl	$1, -40(%rbp)	#, k
.L368:
	.loc 1 1880 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1096
	movl	144(%rax), %eax	# img.1096_359->block_x, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-48(%rbp), %eax	# i, D.13078
	jg	.L369	#,
	.loc 1 1879 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L367:
	.loc 1 1879 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1097
	movl	148(%rax), %eax	# img.1097_354->block_y, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-44(%rbp), %eax	# j, D.13078
	jg	.L370	#,
	jmp	.L371	#
.L366:
	.loc 1 1886 0 is_stmt 1
	cmpl	$9, -20(%rbp)	#, mode
	je	.L372	#,
	.loc 1 1886 0 is_stmt 0 discriminator 1
	cmpl	$13, -20(%rbp)	#, mode
	je	.L372	#,
	.loc 1 1888 0 is_stmt 1
	movl	$0, -40(%rbp)	#, k
	movq	img(%rip), %rax	# img, img.1098
	movl	148(%rax), %eax	# img.1098_387->block_y, tmp858
	movl	%eax, -44(%rbp)	# tmp858, j
	jmp	.L373	#
.L376:
	.loc 1 1889 0
	movq	img(%rip), %rax	# img, img.1099
	movl	144(%rax), %eax	# img.1099_392->block_x, tmp859
	movl	%eax, -48(%rbp)	# tmp859, i
	jmp	.L374	#
.L375:
	.loc 1 1891 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1100
	movq	104(%rax), %rax	# img.1100_397->ipredmode, D.13084
	movl	-48(%rbp), %edx	# i, tmp860
	movslq	%edx, %rdx	# tmp860, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_401, D.13085
	movl	-44(%rbp), %edx	# j, tmp861
	movslq	%edx, %rdx	# tmp861, D.13077
	salq	$2, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13085
	movl	$2, (%rax)	#, *_405
	.loc 1 1892 0 discriminator 2
	movq	-8(%rbp), %rax	# currMB, tmp862
	movl	-40(%rbp), %edx	# k, tmp864
	movslq	%edx, %rdx	# tmp864, tmp863
	addq	$80, %rdx	#, tmp865
	movl	$2, 12(%rax,%rdx,4)	#, currMB_39->intra_pred_modes
	.loc 1 1889 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
	addl	$1, -40(%rbp)	#, k
.L374:
	.loc 1 1889 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1101
	movl	144(%rax), %eax	# img.1101_394->block_x, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-48(%rbp), %eax	# i, D.13078
	jg	.L375	#,
	.loc 1 1888 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L373:
	.loc 1 1888 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1102
	movl	148(%rax), %eax	# img.1102_389->block_y, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-44(%rbp), %eax	# j, D.13078
	jg	.L376	#,
	.loc 1 1886 0 is_stmt 1
	jmp	.L371	#
.L372:
	.loc 1 1895 0
	cmpl	$9, -20(%rbp)	#, mode
	je	.L377	#,
	.loc 1 1895 0 is_stmt 0 discriminator 1
	cmpl	$13, -20(%rbp)	#, mode
	jne	.L371	#,
.L377:
	.loc 1 1897 0 is_stmt 1
	movl	$0, -40(%rbp)	#, k
	movq	img(%rip), %rax	# img, img.1103
	movl	148(%rax), %eax	# img.1103_410->block_y, tmp866
	movl	%eax, -44(%rbp)	# tmp866, j
	jmp	.L378	#
.L381:
	.loc 1 1898 0
	movq	img(%rip), %rax	# img, img.1104
	movl	144(%rax), %eax	# img.1104_415->block_x, tmp867
	movl	%eax, -48(%rbp)	# tmp867, i
	jmp	.L379	#
.L380:
	.loc 1 1900 0 discriminator 2
	movq	img(%rip), %rax	# img, img.1105
	movq	104(%rax), %rax	# img.1105_420->ipredmode, D.13084
	movl	-48(%rbp), %edx	# i, tmp868
	movslq	%edx, %rdx	# tmp868, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rdx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_424, D.13085
	movl	-44(%rbp), %edx	# j, tmp869
	movslq	%edx, %rdx	# tmp869, D.13077
	salq	$2, %rdx	#, D.13077
	addq	%rax, %rdx	# D.13085, D.13085
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1106
	movq	3136(%rax), %rax	# rdopt.1106_429->ipredmode, D.13084
	movl	-48(%rbp), %ecx	# i, tmp870
	movslq	%ecx, %rcx	# tmp870, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13084
	movq	(%rax), %rax	# *_433, D.13085
	movl	-44(%rbp), %ecx	# j, tmp871
	movslq	%ecx, %rcx	# tmp871, D.13077
	salq	$2, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13085
	movl	(%rax), %eax	# *_437, D.13078
	movl	%eax, (%rdx)	# D.13078, *_428
	.loc 1 1901 0 discriminator 2
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1107
	movl	-40(%rbp), %edx	# k, tmp873
	movslq	%edx, %rdx	# tmp873, tmp872
	addq	$784, %rdx	#, tmp874
	movl	8(%rax,%rdx,4), %edx	# rdopt.1107_439->intra_pred_modes, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp875
	movl	-40(%rbp), %ecx	# k, tmp877
	movslq	%ecx, %rcx	# tmp877, tmp876
	addq	$80, %rcx	#, tmp878
	movl	%edx, 12(%rax,%rcx,4)	# D.13078, currMB_39->intra_pred_modes
	.loc 1 1898 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
	addl	$1, -40(%rbp)	#, k
.L379:
	.loc 1 1898 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1108
	movl	144(%rax), %eax	# img.1108_417->block_x, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-48(%rbp), %eax	# i, D.13078
	jg	.L380	#,
	.loc 1 1897 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L378:
	.loc 1 1897 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1109
	movl	148(%rax), %eax	# img.1109_412->block_y, D.13078
	addl	$4, %eax	#, D.13078
	cmpl	-44(%rbp), %eax	# j, D.13078
	jg	.L381	#,
.L371:
	.loc 1 1907 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1110
	movl	72400(%rax), %eax	# img.1110_444->MbaffFrameFlag, D.13078
	testl	%eax, %eax	# D.13078
	je	.L331	#,
	.loc 1 1910 0
	movl	$0, %eax	#,
	call	copy_motion_vectors_MB	#
	.loc 1 1913 0
	movq	-8(%rbp), %rax	# currMB, tmp879
	movl	72(%rax), %eax	# currMB_39->mb_type, D.13078
	cmpl	$9, %eax	#, D.13078
	je	.L383	#,
	.loc 1 1913 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# currMB, tmp880
	movl	72(%rax), %eax	# currMB_39->mb_type, D.13078
	cmpl	$10, %eax	#, D.13078
	je	.L383	#,
	movq	-8(%rbp), %rax	# currMB, tmp881
	movl	72(%rax), %eax	# currMB_39->mb_type, D.13078
	cmpl	$13, %eax	#, D.13078
	je	.L383	#,
	.loc 1 1915 0 is_stmt 1
	movl	$0, -44(%rbp)	#, j
	jmp	.L384	#
.L391:
	.loc 1 1916 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L385	#
.L390:
	.loc 1 1918 0
	movl	-48(%rbp), %eax	# i, tmp882
	movl	%eax, %edx	# tmp882, tmp883
	shrl	$31, %edx	#, tmp883
	addl	%edx, %eax	# tmp883, tmp884
	sarl	%eax	# tmp885
	movl	%eax, %edx	# tmp885, D.13078
	movl	-44(%rbp), %eax	# j, tmp886
	movl	%eax, %ecx	# tmp886, tmp887
	shrl	$31, %ecx	#, tmp887
	addl	%ecx, %eax	# tmp887, tmp888
	sarl	%eax	# tmp889
	addl	%eax, %eax	# D.13078
	addl	%eax, %edx	# D.13078, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp890
	movslq	%edx, %rdx	# D.13078, tmp891
	addq	$116, %rdx	#, tmp892
	movl	8(%rax,%rdx,4), %eax	# currMB_39->b8mode, tmp893
	movl	%eax, -16(%rbp)	# tmp893, b8mode
	.loc 1 1919 0
	movl	-48(%rbp), %eax	# i, tmp894
	movl	%eax, %edx	# tmp894, tmp895
	shrl	$31, %edx	#, tmp895
	addl	%edx, %eax	# tmp895, tmp896
	sarl	%eax	# tmp897
	movl	%eax, %edx	# tmp897, D.13078
	movl	-44(%rbp), %eax	# j, tmp898
	movl	%eax, %ecx	# tmp898, tmp899
	shrl	$31, %ecx	#, tmp899
	addl	%ecx, %eax	# tmp899, tmp900
	sarl	%eax	# tmp901
	addl	%eax, %eax	# D.13078
	addl	%eax, %edx	# D.13078, D.13078
	movq	-8(%rbp), %rax	# currMB, tmp902
	movslq	%edx, %rdx	# D.13078, tmp903
	addq	$120, %rdx	#, tmp904
	movl	8(%rax,%rdx,4), %eax	# currMB_39->b8pdir, tmp905
	movl	%eax, -12(%rbp)	# tmp905, b8pdir
	.loc 1 1921 0
	cmpl	$1, -12(%rbp)	#, b8pdir
	je	.L386	#,
	.loc 1 1923 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1111
	movq	6504(%rax), %rax	# enc_picture.1111_461->mv, D.13097
	movq	(%rax), %rdx	# *_462, D.13086
	movq	img(%rip), %rax	# img, img.1112
	movl	144(%rax), %ecx	# img.1112_464->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp906
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_469, D.13087
	movq	img(%rip), %rax	# img, img.1113
	movl	148(%rax), %ecx	# img.1113_471->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp907
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_476, D.13088
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1114
	movq	3240(%rdx), %rdx	# rdopt.1114_478->all_mv, D.13098
	movl	-48(%rbp), %ecx	# i, tmp908
	movslq	%ecx, %rcx	# tmp908, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13098
	movq	(%rdx), %rdx	# *_482, D.13099
	movl	-44(%rbp), %ecx	# j, tmp909
	movslq	%ecx, %rcx	# tmp909, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13099
	movq	(%rdx), %rdx	# *_486, D.13097
	movq	(%rdx), %rcx	# *_487, D.13086
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1115
	movl	-48(%rbp), %esi	# i, tmp911
	movslq	%esi, %rsi	# tmp911, tmp910
	movl	-44(%rbp), %edi	# j, tmp913
	movslq	%edi, %rdi	# tmp913, tmp912
	salq	$2, %rdi	#, tmp914
	addq	%rdi, %rsi	# tmp914, tmp915
	addq	$1632, %rsi	#, tmp916
	movzwl	(%rdx,%rsi,2), %edx	# rdopt.1115_489->refar, D.13089
	movswq	%dx, %rdx	# D.13089, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rcx, %rdx	# D.13086, D.13086
	movq	(%rdx), %rdx	# *_493, D.13087
	movl	-16(%rbp), %ecx	# b8mode, tmp917
	movslq	%ecx, %rcx	# tmp917, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13087
	movq	(%rdx), %rdx	# *_497, D.13088
	movzwl	(%rdx), %edx	# *_498, D.13089
	movw	%dx, (%rax)	# D.13089, *_477
	.loc 1 1924 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1116
	movq	6504(%rax), %rax	# enc_picture.1116_500->mv, D.13097
	movq	(%rax), %rdx	# *_501, D.13086
	movq	img(%rip), %rax	# img, img.1117
	movl	144(%rax), %ecx	# img.1117_503->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp918
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_508, D.13087
	movq	img(%rip), %rax	# img, img.1118
	movl	148(%rax), %ecx	# img.1118_510->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp919
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_515, D.13088
	leaq	2(%rax), %rdx	#, D.13088
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1119
	movq	3240(%rax), %rax	# rdopt.1119_518->all_mv, D.13098
	movl	-48(%rbp), %ecx	# i, tmp920
	movslq	%ecx, %rcx	# tmp920, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13098
	movq	(%rax), %rax	# *_522, D.13099
	movl	-44(%rbp), %ecx	# j, tmp921
	movslq	%ecx, %rcx	# tmp921, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13099
	movq	(%rax), %rax	# *_526, D.13097
	movq	(%rax), %rcx	# *_527, D.13086
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1120
	movl	-48(%rbp), %esi	# i, tmp923
	movslq	%esi, %rsi	# tmp923, tmp922
	movl	-44(%rbp), %edi	# j, tmp925
	movslq	%edi, %rdi	# tmp925, tmp924
	salq	$2, %rdi	#, tmp926
	addq	%rdi, %rsi	# tmp926, tmp927
	addq	$1632, %rsi	#, tmp928
	movzwl	(%rax,%rsi,2), %eax	# rdopt.1120_529->refar, D.13089
	movswq	%ax, %rax	# D.13089, D.13077
	salq	$3, %rax	#, D.13077
	addq	%rcx, %rax	# D.13086, D.13086
	movq	(%rax), %rax	# *_533, D.13087
	movl	-16(%rbp), %ecx	# b8mode, tmp929
	movslq	%ecx, %rcx	# tmp929, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13087
	movq	(%rax), %rax	# *_537, D.13088
	movzwl	2(%rax), %eax	# MEM[(short int *)_538 + 2B], D.13089
	movw	%ax, (%rdx)	# D.13089, *_517
	jmp	.L387	#
.L386:
	.loc 1 1928 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1121
	movq	6504(%rax), %rax	# enc_picture.1121_540->mv, D.13097
	movq	(%rax), %rdx	# *_541, D.13086
	movq	img(%rip), %rax	# img, img.1122
	movl	144(%rax), %ecx	# img.1122_543->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp930
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_548, D.13087
	movq	img(%rip), %rax	# img, img.1123
	movl	148(%rax), %ecx	# img.1123_550->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp931
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_555, D.13088
	movw	$0, (%rax)	#, *_556
	.loc 1 1929 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1124
	movq	6504(%rax), %rax	# enc_picture.1124_557->mv, D.13097
	movq	(%rax), %rdx	# *_558, D.13086
	movq	img(%rip), %rax	# img, img.1125
	movl	144(%rax), %ecx	# img.1125_560->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp932
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_565, D.13087
	movq	img(%rip), %rax	# img, img.1126
	movl	148(%rax), %ecx	# img.1126_567->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp933
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_572, D.13088
	addq	$2, %rax	#, D.13088
	movw	$0, (%rax)	#, *_574
.L387:
	.loc 1 1931 0
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L388	#,
	.loc 1 1933 0
	cmpl	$0, -12(%rbp)	#, b8pdir
	je	.L389	#,
	.loc 1 1935 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1127
	movq	6504(%rax), %rax	# enc_picture.1127_575->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_577, D.13086
	movq	img(%rip), %rax	# img, img.1128
	movl	144(%rax), %ecx	# img.1128_579->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp934
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_584, D.13087
	movq	img(%rip), %rax	# img, img.1129
	movl	148(%rax), %ecx	# img.1129_586->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp935
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_591, D.13088
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1130
	movq	3240(%rdx), %rdx	# rdopt.1130_593->all_mv, D.13098
	movl	-48(%rbp), %ecx	# i, tmp936
	movslq	%ecx, %rcx	# tmp936, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13098
	movq	(%rdx), %rdx	# *_597, D.13099
	movl	-44(%rbp), %ecx	# j, tmp937
	movslq	%ecx, %rcx	# tmp937, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13099
	movq	(%rdx), %rdx	# *_601, D.13097
	addq	$8, %rdx	#, D.13097
	movq	(%rdx), %rcx	# *_603, D.13086
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1131
	movl	-48(%rbp), %esi	# i, tmp939
	movslq	%esi, %rsi	# tmp939, tmp938
	movl	-44(%rbp), %edi	# j, tmp941
	movslq	%edi, %rdi	# tmp941, tmp940
	salq	$2, %rdi	#, tmp942
	addq	%rdi, %rsi	# tmp942, tmp943
	addq	$1648, %rsi	#, tmp944
	movzwl	(%rdx,%rsi,2), %edx	# rdopt.1131_605->refar, D.13089
	movswq	%dx, %rdx	# D.13089, D.13077
	salq	$3, %rdx	#, D.13077
	addq	%rcx, %rdx	# D.13086, D.13086
	movq	(%rdx), %rdx	# *_609, D.13087
	movl	-16(%rbp), %ecx	# b8mode, tmp945
	movslq	%ecx, %rcx	# tmp945, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rdx	# D.13077, D.13087
	movq	(%rdx), %rdx	# *_613, D.13088
	movzwl	(%rdx), %edx	# *_614, D.13089
	movw	%dx, (%rax)	# D.13089, *_592
	.loc 1 1936 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1132
	movq	6504(%rax), %rax	# enc_picture.1132_616->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_618, D.13086
	movq	img(%rip), %rax	# img, img.1133
	movl	144(%rax), %ecx	# img.1133_620->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp946
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_625, D.13087
	movq	img(%rip), %rax	# img, img.1134
	movl	148(%rax), %ecx	# img.1134_627->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp947
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_632, D.13088
	leaq	2(%rax), %rdx	#, D.13088
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1135
	movq	3240(%rax), %rax	# rdopt.1135_635->all_mv, D.13098
	movl	-48(%rbp), %ecx	# i, tmp948
	movslq	%ecx, %rcx	# tmp948, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13098
	movq	(%rax), %rax	# *_639, D.13099
	movl	-44(%rbp), %ecx	# j, tmp949
	movslq	%ecx, %rcx	# tmp949, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13099
	movq	(%rax), %rax	# *_643, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rcx	# *_645, D.13086
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1136
	movl	-48(%rbp), %esi	# i, tmp951
	movslq	%esi, %rsi	# tmp951, tmp950
	movl	-44(%rbp), %edi	# j, tmp953
	movslq	%edi, %rdi	# tmp953, tmp952
	salq	$2, %rdi	#, tmp954
	addq	%rdi, %rsi	# tmp954, tmp955
	addq	$1648, %rsi	#, tmp956
	movzwl	(%rax,%rsi,2), %eax	# rdopt.1136_647->refar, D.13089
	movswq	%ax, %rax	# D.13089, D.13077
	salq	$3, %rax	#, D.13077
	addq	%rcx, %rax	# D.13086, D.13086
	movq	(%rax), %rax	# *_651, D.13087
	movl	-16(%rbp), %ecx	# b8mode, tmp957
	movslq	%ecx, %rcx	# tmp957, D.13077
	salq	$3, %rcx	#, D.13077
	addq	%rcx, %rax	# D.13077, D.13087
	movq	(%rax), %rax	# *_655, D.13088
	movzwl	2(%rax), %eax	# MEM[(short int *)_656 + 2B], D.13089
	movw	%ax, (%rdx)	# D.13089, *_634
	jmp	.L388	#
.L389:
	.loc 1 1940 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1137
	movq	6504(%rax), %rax	# enc_picture.1137_658->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_660, D.13086
	movq	img(%rip), %rax	# img, img.1138
	movl	144(%rax), %ecx	# img.1138_662->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp958
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_667, D.13087
	movq	img(%rip), %rax	# img, img.1139
	movl	148(%rax), %ecx	# img.1139_669->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp959
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_674, D.13088
	movw	$0, (%rax)	#, *_675
	.loc 1 1941 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1140
	movq	6504(%rax), %rax	# enc_picture.1140_676->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_678, D.13086
	movq	img(%rip), %rax	# img, img.1141
	movl	144(%rax), %ecx	# img.1141_680->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp960
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_685, D.13087
	movq	img(%rip), %rax	# img, img.1142
	movl	148(%rax), %ecx	# img.1142_687->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp961
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_692, D.13088
	addq	$2, %rax	#, D.13088
	movw	$0, (%rax)	#, *_694
.L388:
	.loc 1 1916 0
	addl	$1, -48(%rbp)	#, i
.L385:
	.loc 1 1916 0 is_stmt 0 discriminator 1
	cmpl	$3, -48(%rbp)	#, i
	jle	.L390	#,
	.loc 1 1915 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L384:
	.loc 1 1915 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, j
	jle	.L391	#,
	.loc 1 1913 0 is_stmt 1
	jmp	.L331	#
.L383:
	.loc 1 1948 0
	movl	$0, -44(%rbp)	#, j
	jmp	.L392	#
.L396:
	.loc 1 1949 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L393	#
.L395:
	.loc 1 1951 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1143
	movq	6504(%rax), %rax	# enc_picture.1143_699->mv, D.13097
	movq	(%rax), %rdx	# *_700, D.13086
	movq	img(%rip), %rax	# img, img.1144
	movl	144(%rax), %ecx	# img.1144_702->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp962
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_707, D.13087
	movq	img(%rip), %rax	# img, img.1145
	movl	148(%rax), %ecx	# img.1145_709->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp963
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_714, D.13088
	movw	$0, (%rax)	#, *_715
	.loc 1 1952 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1146
	movq	6504(%rax), %rax	# enc_picture.1146_716->mv, D.13097
	movq	(%rax), %rdx	# *_717, D.13086
	movq	img(%rip), %rax	# img, img.1147
	movl	144(%rax), %ecx	# img.1147_719->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp964
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_724, D.13087
	movq	img(%rip), %rax	# img, img.1148
	movl	148(%rax), %ecx	# img.1148_726->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp965
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_731, D.13088
	addq	$2, %rax	#, D.13088
	movw	$0, (%rax)	#, *_733
	.loc 1 1954 0
	cmpl	$0, -28(%rbp)	#, bframe
	je	.L394	#,
	.loc 1 1956 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1149
	movq	6504(%rax), %rax	# enc_picture.1149_734->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_736, D.13086
	movq	img(%rip), %rax	# img, img.1150
	movl	144(%rax), %ecx	# img.1150_738->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp966
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_743, D.13087
	movq	img(%rip), %rax	# img, img.1151
	movl	148(%rax), %ecx	# img.1151_745->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp967
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_750, D.13088
	movw	$0, (%rax)	#, *_751
	.loc 1 1957 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.1152
	movq	6504(%rax), %rax	# enc_picture.1152_752->mv, D.13097
	addq	$8, %rax	#, D.13097
	movq	(%rax), %rdx	# *_754, D.13086
	movq	img(%rip), %rax	# img, img.1153
	movl	144(%rax), %ecx	# img.1153_756->block_x, D.13078
	movl	-48(%rbp), %eax	# i, tmp968
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13086, D.13086
	movq	(%rax), %rdx	# *_761, D.13087
	movq	img(%rip), %rax	# img, img.1154
	movl	148(%rax), %ecx	# img.1154_763->block_y, D.13078
	movl	-44(%rbp), %eax	# j, tmp969
	addl	%ecx, %eax	# D.13078, D.13078
	cltq
	salq	$3, %rax	#, D.13077
	addq	%rdx, %rax	# D.13087, D.13087
	movq	(%rax), %rax	# *_768, D.13088
	addq	$2, %rax	#, D.13088
	movw	$0, (%rax)	#, *_770
.L394:
	.loc 1 1949 0
	addl	$1, -48(%rbp)	#, i
.L393:
	.loc 1 1949 0 is_stmt 0 discriminator 1
	cmpl	$3, -48(%rbp)	#, i
	jle	.L395	#,
	.loc 1 1948 0 is_stmt 1
	addl	$1, -44(%rbp)	#, j
.L392:
	.loc 1 1948 0 is_stmt 0 discriminator 1
	cmpl	$3, -44(%rbp)	#, j
	jle	.L396	#,
.L331:
	.loc 1 1963 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	copy_rdopt_data, .-copy_rdopt_data
	.type	copy_motion_vectors_MB, @function
copy_motion_vectors_MB:
.LFB22:
	.loc 1 1966 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1969 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L398	#
.L406:
	.loc 1 1971 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L399	#
.L405:
	.loc 1 1973 0
	movl	$0, -8(%rbp)	#, k
	jmp	.L400	#
.L404:
	.loc 1 1975 0
	movl	$0, -4(%rbp)	#, l
	jmp	.L401	#
.L403:
	.loc 1 1977 0
	movq	img(%rip), %rax	# img, img.1155
	movq	71928(%rax), %rax	# img.1155_11->all_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp713
	movslq	%edx, %rdx	# tmp713, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_15, D.13103
	movl	-12(%rbp), %edx	# j, tmp714
	movslq	%edx, %rdx	# tmp714, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_19, D.13104
	movq	(%rax), %rax	# *_20, D.13105
	movl	-8(%rbp), %edx	# k, tmp715
	movslq	%edx, %rdx	# tmp715, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_24, D.13106
	movl	-4(%rbp), %edx	# l, tmp716
	movslq	%edx, %rdx	# tmp716, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_28, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1156
	movq	3240(%rdx), %rdx	# rdopt.1156_30->all_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp717
	movslq	%ecx, %rcx	# tmp717, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_34, D.13103
	movl	-12(%rbp), %ecx	# j, tmp718
	movslq	%ecx, %rcx	# tmp718, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_38, D.13104
	movq	(%rdx), %rdx	# *_39, D.13105
	movl	-8(%rbp), %ecx	# k, tmp719
	movslq	%ecx, %rcx	# tmp719, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_43, D.13106
	movl	-4(%rbp), %ecx	# l, tmp720
	movslq	%ecx, %rcx	# tmp720, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_47, D.13107
	movzwl	(%rdx), %edx	# *_48, D.13108
	movw	%dx, (%rax)	# D.13108, *_29
	.loc 1 1978 0
	movq	img(%rip), %rax	# img, img.1157
	movq	71928(%rax), %rax	# img.1157_50->all_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp721
	movslq	%edx, %rdx	# tmp721, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_54, D.13103
	movl	-12(%rbp), %edx	# j, tmp722
	movslq	%edx, %rdx	# tmp722, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_58, D.13104
	movq	(%rax), %rax	# *_59, D.13105
	movl	-8(%rbp), %edx	# k, tmp723
	movslq	%edx, %rdx	# tmp723, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_63, D.13106
	movl	-4(%rbp), %edx	# l, tmp724
	movslq	%edx, %rdx	# tmp724, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_67, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1158
	movq	3240(%rax), %rax	# rdopt.1158_70->all_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp725
	movslq	%ecx, %rcx	# tmp725, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_74, D.13103
	movl	-12(%rbp), %ecx	# j, tmp726
	movslq	%ecx, %rcx	# tmp726, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_78, D.13104
	movq	(%rax), %rax	# *_79, D.13105
	movl	-8(%rbp), %ecx	# k, tmp727
	movslq	%ecx, %rcx	# tmp727, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_83, D.13106
	movl	-4(%rbp), %ecx	# l, tmp728
	movslq	%ecx, %rcx	# tmp728, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_87, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_88 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_69
	.loc 1 1980 0
	movq	img(%rip), %rax	# img, img.1159
	movq	71928(%rax), %rax	# img.1159_90->all_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp729
	movslq	%edx, %rdx	# tmp729, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_94, D.13103
	movl	-12(%rbp), %edx	# j, tmp730
	movslq	%edx, %rdx	# tmp730, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_98, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_100, D.13105
	movl	-8(%rbp), %edx	# k, tmp731
	movslq	%edx, %rdx	# tmp731, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_104, D.13106
	movl	-4(%rbp), %edx	# l, tmp732
	movslq	%edx, %rdx	# tmp732, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_108, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1160
	movq	3240(%rdx), %rdx	# rdopt.1160_110->all_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp733
	movslq	%ecx, %rcx	# tmp733, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_114, D.13103
	movl	-12(%rbp), %ecx	# j, tmp734
	movslq	%ecx, %rcx	# tmp734, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_118, D.13104
	addq	$8, %rdx	#, D.13104
	movq	(%rdx), %rdx	# *_120, D.13105
	movl	-8(%rbp), %ecx	# k, tmp735
	movslq	%ecx, %rcx	# tmp735, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_124, D.13106
	movl	-4(%rbp), %ecx	# l, tmp736
	movslq	%ecx, %rcx	# tmp736, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_128, D.13107
	movzwl	(%rdx), %edx	# *_129, D.13108
	movw	%dx, (%rax)	# D.13108, *_109
	.loc 1 1981 0
	movq	img(%rip), %rax	# img, img.1161
	movq	71928(%rax), %rax	# img.1161_131->all_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp737
	movslq	%edx, %rdx	# tmp737, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_135, D.13103
	movl	-12(%rbp), %edx	# j, tmp738
	movslq	%edx, %rdx	# tmp738, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_139, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_141, D.13105
	movl	-8(%rbp), %edx	# k, tmp739
	movslq	%edx, %rdx	# tmp739, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_145, D.13106
	movl	-4(%rbp), %edx	# l, tmp740
	movslq	%edx, %rdx	# tmp740, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_149, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1162
	movq	3240(%rax), %rax	# rdopt.1162_152->all_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp741
	movslq	%ecx, %rcx	# tmp741, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_156, D.13103
	movl	-12(%rbp), %ecx	# j, tmp742
	movslq	%ecx, %rcx	# tmp742, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_160, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_162, D.13105
	movl	-8(%rbp), %ecx	# k, tmp743
	movslq	%ecx, %rcx	# tmp743, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_166, D.13106
	movl	-4(%rbp), %ecx	# l, tmp744
	movslq	%ecx, %rcx	# tmp744, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_170, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_171 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_151
	.loc 1 1984 0
	movq	input(%rip), %rax	# input, input.1163
	movl	1256(%rax), %eax	# input.1163_173->BiPredMotionEstimation, D.13100
	testl	%eax, %eax	# D.13100
	je	.L402	#,
	.loc 1 1984 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, k
	jne	.L402	#,
	movq	img(%rip), %rax	# img, img.1164
	movl	24(%rax), %eax	# img.1164_175->type, D.13100
	cmpl	$1, %eax	#, D.13100
	jne	.L402	#,
	.loc 1 1986 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1165
	movq	71936(%rax), %rax	# img.1165_177->bipred_mv1, D.13101
	movl	-16(%rbp), %edx	# i, tmp745
	movslq	%edx, %rdx	# tmp745, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_181, D.13103
	movl	-12(%rbp), %edx	# j, tmp746
	movslq	%edx, %rdx	# tmp746, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_185, D.13104
	movq	(%rax), %rax	# *_186, D.13105
	movl	-8(%rbp), %edx	# k, tmp747
	movslq	%edx, %rdx	# tmp747, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_190, D.13106
	movl	-4(%rbp), %edx	# l, tmp748
	movslq	%edx, %rdx	# tmp748, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_194, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1166
	movq	3248(%rdx), %rdx	# rdopt.1166_196->bipred_mv1, D.13101
	movl	-16(%rbp), %ecx	# i, tmp749
	movslq	%ecx, %rcx	# tmp749, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_200, D.13103
	movl	-12(%rbp), %ecx	# j, tmp750
	movslq	%ecx, %rcx	# tmp750, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_204, D.13104
	movq	(%rdx), %rdx	# *_205, D.13105
	movl	-8(%rbp), %ecx	# k, tmp751
	movslq	%ecx, %rcx	# tmp751, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_209, D.13106
	movl	-4(%rbp), %ecx	# l, tmp752
	movslq	%ecx, %rcx	# tmp752, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_213, D.13107
	movzwl	(%rdx), %edx	# *_214, D.13108
	movw	%dx, (%rax)	# D.13108, *_195
	.loc 1 1987 0
	movq	img(%rip), %rax	# img, img.1167
	movq	71936(%rax), %rax	# img.1167_216->bipred_mv1, D.13101
	movl	-16(%rbp), %edx	# i, tmp753
	movslq	%edx, %rdx	# tmp753, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_220, D.13103
	movl	-12(%rbp), %edx	# j, tmp754
	movslq	%edx, %rdx	# tmp754, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_224, D.13104
	movq	(%rax), %rax	# *_225, D.13105
	movl	-8(%rbp), %edx	# k, tmp755
	movslq	%edx, %rdx	# tmp755, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_229, D.13106
	movl	-4(%rbp), %edx	# l, tmp756
	movslq	%edx, %rdx	# tmp756, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_233, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1168
	movq	3248(%rax), %rax	# rdopt.1168_236->bipred_mv1, D.13101
	movl	-16(%rbp), %ecx	# i, tmp757
	movslq	%ecx, %rcx	# tmp757, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_240, D.13103
	movl	-12(%rbp), %ecx	# j, tmp758
	movslq	%ecx, %rcx	# tmp758, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_244, D.13104
	movq	(%rax), %rax	# *_245, D.13105
	movl	-8(%rbp), %ecx	# k, tmp759
	movslq	%ecx, %rcx	# tmp759, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_249, D.13106
	movl	-4(%rbp), %ecx	# l, tmp760
	movslq	%ecx, %rcx	# tmp760, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_253, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_254 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_235
	.loc 1 1989 0
	movq	img(%rip), %rax	# img, img.1169
	movq	71936(%rax), %rax	# img.1169_256->bipred_mv1, D.13101
	movl	-16(%rbp), %edx	# i, tmp761
	movslq	%edx, %rdx	# tmp761, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_260, D.13103
	movl	-12(%rbp), %edx	# j, tmp762
	movslq	%edx, %rdx	# tmp762, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_264, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_266, D.13105
	movl	-8(%rbp), %edx	# k, tmp763
	movslq	%edx, %rdx	# tmp763, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_270, D.13106
	movl	-4(%rbp), %edx	# l, tmp764
	movslq	%edx, %rdx	# tmp764, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_274, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1170
	movq	3248(%rdx), %rdx	# rdopt.1170_276->bipred_mv1, D.13101
	movl	-16(%rbp), %ecx	# i, tmp765
	movslq	%ecx, %rcx	# tmp765, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_280, D.13103
	movl	-12(%rbp), %ecx	# j, tmp766
	movslq	%ecx, %rcx	# tmp766, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_284, D.13104
	addq	$8, %rdx	#, D.13104
	movq	(%rdx), %rdx	# *_286, D.13105
	movl	-8(%rbp), %ecx	# k, tmp767
	movslq	%ecx, %rcx	# tmp767, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_290, D.13106
	movl	-4(%rbp), %ecx	# l, tmp768
	movslq	%ecx, %rcx	# tmp768, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_294, D.13107
	movzwl	(%rdx), %edx	# *_295, D.13108
	movw	%dx, (%rax)	# D.13108, *_275
	.loc 1 1990 0
	movq	img(%rip), %rax	# img, img.1171
	movq	71936(%rax), %rax	# img.1171_297->bipred_mv1, D.13101
	movl	-16(%rbp), %edx	# i, tmp769
	movslq	%edx, %rdx	# tmp769, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_301, D.13103
	movl	-12(%rbp), %edx	# j, tmp770
	movslq	%edx, %rdx	# tmp770, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_305, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_307, D.13105
	movl	-8(%rbp), %edx	# k, tmp771
	movslq	%edx, %rdx	# tmp771, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_311, D.13106
	movl	-4(%rbp), %edx	# l, tmp772
	movslq	%edx, %rdx	# tmp772, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_315, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1172
	movq	3248(%rax), %rax	# rdopt.1172_318->bipred_mv1, D.13101
	movl	-16(%rbp), %ecx	# i, tmp773
	movslq	%ecx, %rcx	# tmp773, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_322, D.13103
	movl	-12(%rbp), %ecx	# j, tmp774
	movslq	%ecx, %rcx	# tmp774, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_326, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_328, D.13105
	movl	-8(%rbp), %ecx	# k, tmp775
	movslq	%ecx, %rcx	# tmp775, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_332, D.13106
	movl	-4(%rbp), %ecx	# l, tmp776
	movslq	%ecx, %rcx	# tmp776, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_336, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_337 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_317
	.loc 1 1992 0
	movq	img(%rip), %rax	# img, img.1173
	movq	71944(%rax), %rax	# img.1173_339->bipred_mv2, D.13101
	movl	-16(%rbp), %edx	# i, tmp777
	movslq	%edx, %rdx	# tmp777, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_343, D.13103
	movl	-12(%rbp), %edx	# j, tmp778
	movslq	%edx, %rdx	# tmp778, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_347, D.13104
	movq	(%rax), %rax	# *_348, D.13105
	movl	-8(%rbp), %edx	# k, tmp779
	movslq	%edx, %rdx	# tmp779, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_352, D.13106
	movl	-4(%rbp), %edx	# l, tmp780
	movslq	%edx, %rdx	# tmp780, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_356, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1174
	movq	3256(%rdx), %rdx	# rdopt.1174_358->bipred_mv2, D.13101
	movl	-16(%rbp), %ecx	# i, tmp781
	movslq	%ecx, %rcx	# tmp781, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_362, D.13103
	movl	-12(%rbp), %ecx	# j, tmp782
	movslq	%ecx, %rcx	# tmp782, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_366, D.13104
	movq	(%rdx), %rdx	# *_367, D.13105
	movl	-8(%rbp), %ecx	# k, tmp783
	movslq	%ecx, %rcx	# tmp783, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_371, D.13106
	movl	-4(%rbp), %ecx	# l, tmp784
	movslq	%ecx, %rcx	# tmp784, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_375, D.13107
	movzwl	(%rdx), %edx	# *_376, D.13108
	movw	%dx, (%rax)	# D.13108, *_357
	.loc 1 1993 0
	movq	img(%rip), %rax	# img, img.1175
	movq	71944(%rax), %rax	# img.1175_378->bipred_mv2, D.13101
	movl	-16(%rbp), %edx	# i, tmp785
	movslq	%edx, %rdx	# tmp785, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_382, D.13103
	movl	-12(%rbp), %edx	# j, tmp786
	movslq	%edx, %rdx	# tmp786, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_386, D.13104
	movq	(%rax), %rax	# *_387, D.13105
	movl	-8(%rbp), %edx	# k, tmp787
	movslq	%edx, %rdx	# tmp787, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_391, D.13106
	movl	-4(%rbp), %edx	# l, tmp788
	movslq	%edx, %rdx	# tmp788, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_395, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1176
	movq	3256(%rax), %rax	# rdopt.1176_398->bipred_mv2, D.13101
	movl	-16(%rbp), %ecx	# i, tmp789
	movslq	%ecx, %rcx	# tmp789, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_402, D.13103
	movl	-12(%rbp), %ecx	# j, tmp790
	movslq	%ecx, %rcx	# tmp790, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_406, D.13104
	movq	(%rax), %rax	# *_407, D.13105
	movl	-8(%rbp), %ecx	# k, tmp791
	movslq	%ecx, %rcx	# tmp791, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_411, D.13106
	movl	-4(%rbp), %ecx	# l, tmp792
	movslq	%ecx, %rcx	# tmp792, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_415, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_416 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_397
	.loc 1 1994 0
	movq	img(%rip), %rax	# img, img.1177
	movq	71944(%rax), %rax	# img.1177_418->bipred_mv2, D.13101
	movl	-16(%rbp), %edx	# i, tmp793
	movslq	%edx, %rdx	# tmp793, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_422, D.13103
	movl	-12(%rbp), %edx	# j, tmp794
	movslq	%edx, %rdx	# tmp794, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_426, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_428, D.13105
	movl	-8(%rbp), %edx	# k, tmp795
	movslq	%edx, %rdx	# tmp795, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_432, D.13106
	movl	-4(%rbp), %edx	# l, tmp796
	movslq	%edx, %rdx	# tmp796, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_436, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1178
	movq	3256(%rdx), %rdx	# rdopt.1178_438->bipred_mv2, D.13101
	movl	-16(%rbp), %ecx	# i, tmp797
	movslq	%ecx, %rcx	# tmp797, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_442, D.13103
	movl	-12(%rbp), %ecx	# j, tmp798
	movslq	%ecx, %rcx	# tmp798, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_446, D.13104
	addq	$8, %rdx	#, D.13104
	movq	(%rdx), %rdx	# *_448, D.13105
	movl	-8(%rbp), %ecx	# k, tmp799
	movslq	%ecx, %rcx	# tmp799, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_452, D.13106
	movl	-4(%rbp), %ecx	# l, tmp800
	movslq	%ecx, %rcx	# tmp800, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_456, D.13107
	movzwl	(%rdx), %edx	# *_457, D.13108
	movw	%dx, (%rax)	# D.13108, *_437
	.loc 1 1995 0
	movq	img(%rip), %rax	# img, img.1179
	movq	71944(%rax), %rax	# img.1179_459->bipred_mv2, D.13101
	movl	-16(%rbp), %edx	# i, tmp801
	movslq	%edx, %rdx	# tmp801, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_463, D.13103
	movl	-12(%rbp), %edx	# j, tmp802
	movslq	%edx, %rdx	# tmp802, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_467, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_469, D.13105
	movl	-8(%rbp), %edx	# k, tmp803
	movslq	%edx, %rdx	# tmp803, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_473, D.13106
	movl	-4(%rbp), %edx	# l, tmp804
	movslq	%edx, %rdx	# tmp804, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_477, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1180
	movq	3256(%rax), %rax	# rdopt.1180_480->bipred_mv2, D.13101
	movl	-16(%rbp), %ecx	# i, tmp805
	movslq	%ecx, %rcx	# tmp805, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_484, D.13103
	movl	-12(%rbp), %ecx	# j, tmp806
	movslq	%ecx, %rcx	# tmp806, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_488, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_490, D.13105
	movl	-8(%rbp), %ecx	# k, tmp807
	movslq	%ecx, %rcx	# tmp807, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_494, D.13106
	movl	-4(%rbp), %ecx	# l, tmp808
	movslq	%ecx, %rcx	# tmp808, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_498, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_499 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_479
.L402:
	.loc 1 1999 0
	movq	img(%rip), %rax	# img, img.1181
	movq	71920(%rax), %rax	# img.1181_501->pred_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp809
	movslq	%edx, %rdx	# tmp809, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_505, D.13103
	movl	-12(%rbp), %edx	# j, tmp810
	movslq	%edx, %rdx	# tmp810, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_509, D.13104
	movq	(%rax), %rax	# *_510, D.13105
	movl	-8(%rbp), %edx	# k, tmp811
	movslq	%edx, %rdx	# tmp811, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_514, D.13106
	movl	-4(%rbp), %edx	# l, tmp812
	movslq	%edx, %rdx	# tmp812, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_518, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1182
	movq	3232(%rdx), %rdx	# rdopt.1182_520->pred_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp813
	movslq	%ecx, %rcx	# tmp813, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_524, D.13103
	movl	-12(%rbp), %ecx	# j, tmp814
	movslq	%ecx, %rcx	# tmp814, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_528, D.13104
	movq	(%rdx), %rdx	# *_529, D.13105
	movl	-8(%rbp), %ecx	# k, tmp815
	movslq	%ecx, %rcx	# tmp815, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_533, D.13106
	movl	-4(%rbp), %ecx	# l, tmp816
	movslq	%ecx, %rcx	# tmp816, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_537, D.13107
	movzwl	(%rdx), %edx	# *_538, D.13108
	movw	%dx, (%rax)	# D.13108, *_519
	.loc 1 2000 0
	movq	img(%rip), %rax	# img, img.1183
	movq	71920(%rax), %rax	# img.1183_540->pred_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp817
	movslq	%edx, %rdx	# tmp817, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_544, D.13103
	movl	-12(%rbp), %edx	# j, tmp818
	movslq	%edx, %rdx	# tmp818, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_548, D.13104
	movq	(%rax), %rax	# *_549, D.13105
	movl	-8(%rbp), %edx	# k, tmp819
	movslq	%edx, %rdx	# tmp819, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_553, D.13106
	movl	-4(%rbp), %edx	# l, tmp820
	movslq	%edx, %rdx	# tmp820, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_557, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1184
	movq	3232(%rax), %rax	# rdopt.1184_560->pred_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp821
	movslq	%ecx, %rcx	# tmp821, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_564, D.13103
	movl	-12(%rbp), %ecx	# j, tmp822
	movslq	%ecx, %rcx	# tmp822, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_568, D.13104
	movq	(%rax), %rax	# *_569, D.13105
	movl	-8(%rbp), %ecx	# k, tmp823
	movslq	%ecx, %rcx	# tmp823, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_573, D.13106
	movl	-4(%rbp), %ecx	# l, tmp824
	movslq	%ecx, %rcx	# tmp824, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_577, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_578 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_559
	.loc 1 2002 0
	movq	img(%rip), %rax	# img, img.1185
	movq	71920(%rax), %rax	# img.1185_580->pred_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp825
	movslq	%edx, %rdx	# tmp825, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_584, D.13103
	movl	-12(%rbp), %edx	# j, tmp826
	movslq	%edx, %rdx	# tmp826, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_588, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_590, D.13105
	movl	-8(%rbp), %edx	# k, tmp827
	movslq	%edx, %rdx	# tmp827, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_594, D.13106
	movl	-4(%rbp), %edx	# l, tmp828
	movslq	%edx, %rdx	# tmp828, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_598, D.13107
	movq	rdopt(%rip), %rdx	# rdopt, rdopt.1186
	movq	3232(%rdx), %rdx	# rdopt.1186_600->pred_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp829
	movslq	%ecx, %rcx	# tmp829, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13101
	movq	(%rdx), %rdx	# *_604, D.13103
	movl	-12(%rbp), %ecx	# j, tmp830
	movslq	%ecx, %rcx	# tmp830, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13103
	movq	(%rdx), %rdx	# *_608, D.13104
	addq	$8, %rdx	#, D.13104
	movq	(%rdx), %rdx	# *_610, D.13105
	movl	-8(%rbp), %ecx	# k, tmp831
	movslq	%ecx, %rcx	# tmp831, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13105
	movq	(%rdx), %rdx	# *_614, D.13106
	movl	-4(%rbp), %ecx	# l, tmp832
	movslq	%ecx, %rcx	# tmp832, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rdx	# D.13102, D.13106
	movq	(%rdx), %rdx	# *_618, D.13107
	movzwl	(%rdx), %edx	# *_619, D.13108
	movw	%dx, (%rax)	# D.13108, *_599
	.loc 1 2003 0
	movq	img(%rip), %rax	# img, img.1187
	movq	71920(%rax), %rax	# img.1187_621->pred_mv, D.13101
	movl	-16(%rbp), %edx	# i, tmp833
	movslq	%edx, %rdx	# tmp833, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_625, D.13103
	movl	-12(%rbp), %edx	# j, tmp834
	movslq	%edx, %rdx	# tmp834, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_629, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_631, D.13105
	movl	-8(%rbp), %edx	# k, tmp835
	movslq	%edx, %rdx	# tmp835, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_635, D.13106
	movl	-4(%rbp), %edx	# l, tmp836
	movslq	%edx, %rdx	# tmp836, D.13102
	salq	$3, %rdx	#, D.13102
	addq	%rdx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_639, D.13107
	leaq	2(%rax), %rdx	#, D.13107
	movq	rdopt(%rip), %rax	# rdopt, rdopt.1188
	movq	3232(%rax), %rax	# rdopt.1188_642->pred_mv, D.13101
	movl	-16(%rbp), %ecx	# i, tmp837
	movslq	%ecx, %rcx	# tmp837, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13101
	movq	(%rax), %rax	# *_646, D.13103
	movl	-12(%rbp), %ecx	# j, tmp838
	movslq	%ecx, %rcx	# tmp838, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13103
	movq	(%rax), %rax	# *_650, D.13104
	addq	$8, %rax	#, D.13104
	movq	(%rax), %rax	# *_652, D.13105
	movl	-8(%rbp), %ecx	# k, tmp839
	movslq	%ecx, %rcx	# tmp839, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13105
	movq	(%rax), %rax	# *_656, D.13106
	movl	-4(%rbp), %ecx	# l, tmp840
	movslq	%ecx, %rcx	# tmp840, D.13102
	salq	$3, %rcx	#, D.13102
	addq	%rcx, %rax	# D.13102, D.13106
	movq	(%rax), %rax	# *_660, D.13107
	movzwl	2(%rax), %eax	# MEM[(short int *)_661 + 2B], D.13108
	movw	%ax, (%rdx)	# D.13108, *_641
	.loc 1 1975 0
	addl	$1, -4(%rbp)	#, l
.L401:
	.loc 1 1975 0 is_stmt 0 discriminator 1
	cmpl	$8, -4(%rbp)	#, l
	jle	.L403	#,
	.loc 1 1973 0 is_stmt 1
	addl	$1, -8(%rbp)	#, k
.L400:
	.loc 1 1973 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1189
	movl	36(%rax), %eax	# img.1189_8->max_num_references, D.13100
	cmpl	-8(%rbp), %eax	# k, D.13100
	jg	.L404	#,
	.loc 1 1971 0 is_stmt 1
	addl	$1, -12(%rbp)	#, j
.L399:
	.loc 1 1971 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, j
	jle	.L405	#,
	.loc 1 1969 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L398:
	.loc 1 1969 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)	#, i
	jle	.L406	#,
	.loc 1 2009 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	copy_motion_vectors_MB, .-copy_motion_vectors_MB
	.section	.rodata
.LC10:
	.string	"%04d(NVB)%8d \n"
	.text
	.type	ReportNALNonVLCBits, @function
ReportNALNonVLCBits:
.LFB23:
	.loc 1 2013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2015 0
	movq	stats(%rip), %rax	# stats, stats.1190
	movl	1492(%rax), %edx	# stats.1190_1->bit_ctr_parametersets_n, D.13109
	movl	frame_no(%rip), %eax	# frame_no, frame_no.1191
	movl	%eax, %esi	# frame_no.1191,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2017 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ReportNALNonVLCBits, .-ReportNALNonVLCBits
	.section	.rodata
.LC11:
	.string	"FLD"
.LC12:
	.string	"FRM"
	.align 8
.LC13:
	.string	"%04d(IDR)%8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\n"
	.text
	.type	ReportFirstframe, @function
ReportFirstframe:
.LFB24:
	.loc 1 2019 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# tmp_time, tmp_time
	movl	%esi, -24(%rbp)	# me_time, me_time
	.loc 1 2022 0
	movl	intras(%rip), %edx	# intras, intras.1192
	.loc 1 2025 0
	movq	img(%rip), %rax	# img, img.1194
	movl	71800(%rax), %eax	# img.1194_3->fld_flag, D.13111
	.loc 1 2022 0
	testl	%eax, %eax	# D.13111
	je	.L409	#,
	.loc 1 2022 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1193
	jmp	.L410	#
.L409:
	.loc 1 2022 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1193
.L410:
	.loc 1 2024 0 is_stmt 1
	movq	snr(%rip), %rcx	# snr, snr.1195
	movss	8(%rcx), %xmm0	# snr.1195_7->snr_v, D.13112
	.loc 1 2022 0
	unpcklps	%xmm0, %xmm0	# D.13112, D.13112
	cvtps2pd	%xmm0, %xmm2	# D.13112, D.13113
	.loc 1 2024 0
	movq	snr(%rip), %rcx	# snr, snr.1196
	movss	4(%rcx), %xmm0	# snr.1196_10->snr_u, D.13112
	.loc 1 2022 0
	unpcklps	%xmm0, %xmm0	# D.13112, D.13112
	cvtps2pd	%xmm0, %xmm1	# D.13112, D.13113
	.loc 1 2024 0
	movq	snr(%rip), %rcx	# snr, snr.1197
	movss	(%rcx), %xmm0	# snr.1197_13->snr_y, D.13112
	.loc 1 2022 0
	unpcklps	%xmm0, %xmm0	# D.13112, D.13112
	cvtps2pd	%xmm0, %xmm0	# D.13112, D.13113
	.loc 1 2024 0
	movq	img(%rip), %rcx	# img, img.1198
	.loc 1 2022 0
	movl	40(%rcx), %r8d	# img.1198_16->qp, D.13114
	.loc 1 2023 0
	movq	stats(%rip), %rcx	# stats, stats.1199
	movl	16(%rcx), %esi	# stats.1199_18->bit_ctr, D.13114
	movq	stats(%rip), %rcx	# stats, stats.1200
	movl	20(%rcx), %ecx	# stats.1200_20->bit_ctr_n, D.13114
	.loc 1 2022 0
	movl	%esi, %edi	# D.13114, D.13114
	subl	%ecx, %edi	# D.13114, D.13114
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1201
	movl	-20(%rbp), %ecx	# tmp_time, tmp99
	movl	%edx, 16(%rsp)	# intras.1192,
	movq	%rax, 8(%rsp)	# iftmp.1193,
	movl	-24(%rbp), %eax	# me_time, tmp100
	movl	%eax, (%rsp)	# tmp100,
	movl	%ecx, %r9d	# tmp99,
	movl	$0, %ecx	#,
	movl	%edi, %edx	# D.13114,
	movl	$.LC13, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 2028 0
	movq	input(%rip), %rax	# input, input.1202
	movl	3236(%rax), %eax	# input.1202_26->RCEnable, D.13114
	testl	%eax, %eax	# D.13114
	je	.L411	#,
	.loc 1 2030 0
	movq	input(%rip), %rax	# input, input.1203
	movl	2880(%rax), %eax	# input.1203_28->PicInterlace, D.13114
	testl	%eax, %eax	# D.13114
	jne	.L412	#,
	.loc 1 2030 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1204
	movl	2884(%rax), %eax	# input.1204_30->MbInterlace, D.13114
	testl	%eax, %eax	# D.13114
	jne	.L412	#,
	.loc 1 2031 0 is_stmt 1
	movq	stats(%rip), %rax	# stats, stats.1205
	movl	16(%rax), %edx	# stats.1205_32->bit_ctr, D.13114
	movq	stats(%rip), %rax	# stats, stats.1206
	movl	20(%rax), %eax	# stats.1206_34->bit_ctr_n, D.13114
	subl	%eax, %edx	# D.13114, tmp101
	movl	%edx, %eax	# tmp101, tmp101
	movl	%eax, -4(%rbp)	# tmp101, bits
	jmp	.L411	#
.L412:
	.loc 1 2034 0
	movq	stats(%rip), %rax	# stats, stats.1207
	movl	16(%rax), %edx	# stats.1207_37->bit_ctr, D.13114
	movl	Iprev_bits(%rip), %eax	# Iprev_bits, Iprev_bits.1208
	subl	%eax, %edx	# Iprev_bits.1208, tmp102
	movl	%edx, %eax	# tmp102, tmp102
	movl	%eax, -4(%rbp)	# tmp102, bits
	.loc 1 2035 0
	movq	stats(%rip), %rax	# stats, stats.1209
	movl	16(%rax), %eax	# stats.1209_41->bit_ctr, Iprev_bits.1210
	movl	%eax, Iprev_bits(%rip)	# Iprev_bits.1210, Iprev_bits
.L411:
	.loc 1 2039 0
	movq	stats(%rip), %rax	# stats, stats.1211
	movq	stats(%rip), %rdx	# stats, stats.1212
	movl	16(%rdx), %edx	# stats.1212_44->bit_ctr, D.13114
	movl	%edx, 704(%rax)	# D.13114, stats.1211_43->bit_ctr_I
	.loc 1 2040 0
	movq	stats(%rip), %rax	# stats, stats.1213
	movl	$0, 16(%rax)	#, stats.1213_46->bit_ctr
	.loc 1 2041 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ReportFirstframe, .-ReportFirstframe
	.section	.rodata
	.align 8
.LC14:
	.string	"%04d(I)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\n"
	.text
	.type	ReportIntra, @function
ReportIntra:
.LFB25:
	.loc 1 2045 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2047 0
	movq	img(%rip), %rax	# img, img.1214
	movq	14152(%rax), %rax	# img.1214_3->currentPicture, D.13118
	movl	4(%rax), %eax	# _4->idr_flag, D.13119
	cmpl	$1, %eax	#, D.13119
	jne	.L414	#,
	.loc 1 2048 0
	movl	intras(%rip), %edx	# intras, intras.1215
	.loc 1 2051 0
	movq	img(%rip), %rax	# img, img.1217
	movl	71800(%rax), %eax	# img.1217_7->fld_flag, D.13120
	.loc 1 2048 0
	testl	%eax, %eax	# D.13120
	je	.L415	#,
	.loc 1 2048 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1216
	jmp	.L416	#
.L415:
	.loc 1 2048 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1216
.L416:
	.loc 1 2050 0 is_stmt 1 discriminator 1
	movq	snr(%rip), %rcx	# snr, snr.1218
	movss	8(%rcx), %xmm0	# snr.1218_11->snr_v, D.13121
	.loc 1 2048 0 discriminator 1
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm2	# D.13121, D.13122
	.loc 1 2050 0 discriminator 1
	movq	snr(%rip), %rcx	# snr, snr.1219
	movss	4(%rcx), %xmm0	# snr.1219_14->snr_u, D.13121
	.loc 1 2048 0 discriminator 1
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm1	# D.13121, D.13122
	.loc 1 2050 0 discriminator 1
	movq	snr(%rip), %rcx	# snr, snr.1220
	movss	(%rcx), %xmm0	# snr.1220_17->snr_y, D.13121
	.loc 1 2048 0 discriminator 1
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm0	# D.13121, D.13122
	.loc 1 2050 0 discriminator 1
	movq	img(%rip), %rcx	# img, img.1221
	.loc 1 2048 0 discriminator 1
	movl	40(%rcx), %r8d	# img.1221_20->qp, D.13119
	.loc 1 2049 0 discriminator 1
	movq	stats(%rip), %rcx	# stats, stats.1222
	movl	16(%rcx), %esi	# stats.1222_22->bit_ctr, D.13119
	movq	stats(%rip), %rcx	# stats, stats.1223
	movl	20(%rcx), %ecx	# stats.1223_24->bit_ctr_n, D.13119
	.loc 1 2048 0 discriminator 1
	movl	%esi, %edi	# D.13119, D.13119
	subl	%ecx, %edi	# D.13119, D.13119
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1224
	movl	-4(%rbp), %ecx	# tmp_time, tmp104
	movl	%edx, 16(%rsp)	# intras.1215,
	movq	%rax, 8(%rsp)	# iftmp.1216,
	movl	-8(%rbp), %eax	# me_time, tmp105
	movl	%eax, (%rsp)	# tmp105,
	movl	%ecx, %r9d	# tmp104,
	movl	$0, %ecx	#,
	movl	%edi, %edx	# D.13119,
	movl	$.LC13, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	jmp	.L413	#
.L414:
	.loc 1 2053 0
	movl	intras(%rip), %edx	# intras, intras.1225
	.loc 1 2056 0
	movq	img(%rip), %rax	# img, img.1227
	movl	71800(%rax), %eax	# img.1227_31->fld_flag, D.13120
	.loc 1 2053 0
	testl	%eax, %eax	# D.13120
	je	.L418	#,
	.loc 1 2053 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1226
	jmp	.L419	#
.L418:
	.loc 1 2053 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1226
.L419:
	.loc 1 2055 0 is_stmt 1 discriminator 3
	movq	snr(%rip), %rcx	# snr, snr.1228
	movss	8(%rcx), %xmm0	# snr.1228_35->snr_v, D.13121
	.loc 1 2053 0 discriminator 3
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm2	# D.13121, D.13122
	.loc 1 2055 0 discriminator 3
	movq	snr(%rip), %rcx	# snr, snr.1229
	movss	4(%rcx), %xmm0	# snr.1229_38->snr_u, D.13121
	.loc 1 2053 0 discriminator 3
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm1	# D.13121, D.13122
	.loc 1 2055 0 discriminator 3
	movq	snr(%rip), %rcx	# snr, snr.1230
	movss	(%rcx), %xmm0	# snr.1230_41->snr_y, D.13121
	.loc 1 2053 0 discriminator 3
	unpcklps	%xmm0, %xmm0	# D.13121, D.13121
	cvtps2pd	%xmm0, %xmm0	# D.13121, D.13122
	.loc 1 2055 0 discriminator 3
	movq	img(%rip), %rcx	# img, img.1231
	.loc 1 2053 0 discriminator 3
	movl	40(%rcx), %r8d	# img.1231_44->qp, D.13119
	.loc 1 2054 0 discriminator 3
	movq	stats(%rip), %rcx	# stats, stats.1232
	movl	16(%rcx), %esi	# stats.1232_46->bit_ctr, D.13119
	movq	stats(%rip), %rcx	# stats, stats.1233
	movl	20(%rcx), %ecx	# stats.1233_48->bit_ctr_n, D.13119
	.loc 1 2053 0 discriminator 3
	movl	%esi, %edi	# D.13119, D.13119
	subl	%ecx, %edi	# D.13119, D.13119
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1234
	movl	-4(%rbp), %ecx	# tmp_time, tmp106
	movl	%edx, 16(%rsp)	# intras.1225,
	movq	%rax, 8(%rsp)	# iftmp.1226,
	movl	-8(%rbp), %eax	# me_time, tmp107
	movl	%eax, (%rsp)	# tmp107,
	movl	%ecx, %r9d	# tmp106,
	movl	$0, %ecx	#,
	movl	%edi, %edx	# D.13119,
	movl	$.LC14, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
.L413:
	.loc 1 2058 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ReportIntra, .-ReportIntra
	.section	.rodata
	.align 8
.LC15:
	.string	"%04d(SP) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\n"
	.text
	.type	ReportSP, @function
ReportSP:
.LFB26:
	.loc 1 2061 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2062 0
	movl	intras(%rip), %ecx	# intras, intras.1235
	.loc 1 2065 0
	movq	img(%rip), %rax	# img, img.1237
	movl	71800(%rax), %eax	# img.1237_3->fld_flag, D.13124
	.loc 1 2062 0
	testl	%eax, %eax	# D.13124
	je	.L421	#,
	.loc 1 2062 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1236
	jmp	.L422	#
.L421:
	.loc 1 2062 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1236
.L422:
	.loc 1 2064 0 is_stmt 1
	movq	snr(%rip), %rdx	# snr, snr.1238
	movss	8(%rdx), %xmm0	# snr.1238_7->snr_v, D.13125
	.loc 1 2062 0
	unpcklps	%xmm0, %xmm0	# D.13125, D.13125
	cvtps2pd	%xmm0, %xmm2	# D.13125, D.13126
	.loc 1 2064 0
	movq	snr(%rip), %rdx	# snr, snr.1239
	movss	4(%rdx), %xmm0	# snr.1239_10->snr_u, D.13125
	.loc 1 2062 0
	unpcklps	%xmm0, %xmm0	# D.13125, D.13125
	cvtps2pd	%xmm0, %xmm1	# D.13125, D.13126
	.loc 1 2063 0
	movq	snr(%rip), %rdx	# snr, snr.1240
	movss	(%rdx), %xmm0	# snr.1240_13->snr_y, D.13125
	.loc 1 2062 0
	unpcklps	%xmm0, %xmm0	# D.13125, D.13125
	cvtps2pd	%xmm0, %xmm0	# D.13125, D.13126
	.loc 1 2063 0
	movq	img(%rip), %rdx	# img, img.1241
	.loc 1 2062 0
	movl	40(%rdx), %r8d	# img.1241_16->qp, D.13127
	.loc 1 2063 0
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.1242
	movl	192(%rdx), %edx	# active_pps.1242_18->weighted_pred_flag, D.13128
	movq	stats(%rip), %rsi	# stats, stats.1243
	movl	16(%rsi), %edi	# stats.1243_20->bit_ctr, D.13127
	movq	stats(%rip), %rsi	# stats, stats.1244
	movl	20(%rsi), %esi	# stats.1244_22->bit_ctr_n, D.13127
	.loc 1 2062 0
	subl	%esi, %edi	# D.13127, D.13127
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1245
	movl	-4(%rbp), %r9d	# tmp_time, tmp82
	movl	%ecx, 16(%rsp)	# intras.1235,
	movq	%rax, 8(%rsp)	# iftmp.1236,
	movl	-8(%rbp), %eax	# me_time, tmp83
	movl	%eax, (%rsp)	# tmp83,
	movl	%edx, %ecx	# D.13128,
	movl	%edi, %edx	# D.13127,
	movl	$.LC15, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 2066 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ReportSP, .-ReportSP
	.section	.rodata
	.align 8
.LC16:
	.string	"%04d(RB) %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\n"
	.text
	.type	ReportRB, @function
ReportRB:
.LFB27:
	.loc 1 2069 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2073 0
	movq	img(%rip), %rax	# img, img.1246
	.loc 1 2070 0
	movl	71996(%rax), %edi	# img.1246_2->direct_spatial_mv_pred_flag, D.13130
	movl	intras(%rip), %ecx	# intras, intras.1247
	.loc 1 2073 0
	movq	img(%rip), %rax	# img, img.1249
	movl	71800(%rax), %eax	# img.1249_5->fld_flag, D.13131
	.loc 1 2070 0
	testl	%eax, %eax	# D.13131
	je	.L424	#,
	.loc 1 2070 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1248
	jmp	.L425	#
.L424:
	.loc 1 2070 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1248
.L425:
	.loc 1 2072 0 is_stmt 1
	movq	snr(%rip), %rdx	# snr, snr.1250
	movss	8(%rdx), %xmm0	# snr.1250_9->snr_v, D.13132
	.loc 1 2070 0
	unpcklps	%xmm0, %xmm0	# D.13132, D.13132
	cvtps2pd	%xmm0, %xmm2	# D.13132, D.13133
	.loc 1 2072 0
	movq	snr(%rip), %rdx	# snr, snr.1251
	movss	4(%rdx), %xmm0	# snr.1251_12->snr_u, D.13132
	.loc 1 2070 0
	unpcklps	%xmm0, %xmm0	# D.13132, D.13132
	cvtps2pd	%xmm0, %xmm1	# D.13132, D.13133
	.loc 1 2071 0
	movq	snr(%rip), %rdx	# snr, snr.1252
	movss	(%rdx), %xmm0	# snr.1252_15->snr_y, D.13132
	.loc 1 2070 0
	unpcklps	%xmm0, %xmm0	# D.13132, D.13132
	cvtps2pd	%xmm0, %xmm0	# D.13132, D.13133
	.loc 1 2071 0
	movq	img(%rip), %rdx	# img, img.1253
	.loc 1 2070 0
	movl	40(%rdx), %r8d	# img.1253_18->qp, D.13130
	.loc 1 2071 0
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.1254
	.loc 1 2070 0
	movl	196(%rdx), %edx	# active_pps.1254_20->weighted_bipred_idc, D.13131
	.loc 1 2071 0
	movq	stats(%rip), %rsi	# stats, stats.1255
	movl	16(%rsi), %r9d	# stats.1255_22->bit_ctr, D.13130
	movq	stats(%rip), %rsi	# stats, stats.1256
	movl	20(%rsi), %esi	# stats.1256_24->bit_ctr_n, D.13130
	.loc 1 2070 0
	movl	%r9d, %r10d	# D.13130, D.13130
	subl	%esi, %r10d	# D.13130, D.13130
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1257
	movl	-4(%rbp), %r9d	# tmp_time, tmp84
	movl	%edi, 24(%rsp)	# D.13130,
	movl	%ecx, 16(%rsp)	# intras.1247,
	movq	%rax, 8(%rsp)	# iftmp.1248,
	movl	-8(%rbp), %eax	# me_time, tmp85
	movl	%eax, (%rsp)	# tmp85,
	movl	%edx, %ecx	# D.13131,
	movl	%r10d, %edx	# D.13130,
	movl	$.LC16, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 2074 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ReportRB, .-ReportRB
	.section	.rodata
	.align 8
.LC17:
	.string	"%04d(B)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d %1d\n"
	.text
	.type	ReportB, @function
ReportB:
.LFB28:
	.loc 1 2077 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2081 0
	movq	img(%rip), %rax	# img, img.1258
	.loc 1 2078 0
	movl	71996(%rax), %edi	# img.1258_2->direct_spatial_mv_pred_flag, D.13135
	movl	intras(%rip), %ecx	# intras, intras.1259
	.loc 1 2081 0
	movq	img(%rip), %rax	# img, img.1261
	movl	71800(%rax), %eax	# img.1261_5->fld_flag, D.13136
	.loc 1 2078 0
	testl	%eax, %eax	# D.13136
	je	.L427	#,
	.loc 1 2078 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1260
	jmp	.L428	#
.L427:
	.loc 1 2078 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1260
.L428:
	.loc 1 2080 0 is_stmt 1
	movq	snr(%rip), %rdx	# snr, snr.1262
	movss	8(%rdx), %xmm0	# snr.1262_9->snr_v, D.13137
	.loc 1 2078 0
	unpcklps	%xmm0, %xmm0	# D.13137, D.13137
	cvtps2pd	%xmm0, %xmm2	# D.13137, D.13138
	.loc 1 2080 0
	movq	snr(%rip), %rdx	# snr, snr.1263
	movss	4(%rdx), %xmm0	# snr.1263_12->snr_u, D.13137
	.loc 1 2078 0
	unpcklps	%xmm0, %xmm0	# D.13137, D.13137
	cvtps2pd	%xmm0, %xmm1	# D.13137, D.13138
	.loc 1 2080 0
	movq	snr(%rip), %rdx	# snr, snr.1264
	movss	(%rdx), %xmm0	# snr.1264_15->snr_y, D.13137
	.loc 1 2078 0
	unpcklps	%xmm0, %xmm0	# D.13137, D.13137
	cvtps2pd	%xmm0, %xmm0	# D.13137, D.13138
	.loc 1 2079 0
	movq	img(%rip), %rdx	# img, img.1265
	.loc 1 2078 0
	movl	40(%rdx), %r8d	# img.1265_18->qp, D.13135
	.loc 1 2079 0
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.1266
	.loc 1 2078 0
	movl	196(%rdx), %edx	# active_pps.1266_20->weighted_bipred_idc, D.13136
	.loc 1 2079 0
	movq	stats(%rip), %rsi	# stats, stats.1267
	movl	16(%rsi), %r9d	# stats.1267_22->bit_ctr, D.13135
	movq	stats(%rip), %rsi	# stats, stats.1268
	movl	20(%rsi), %esi	# stats.1268_24->bit_ctr_n, D.13135
	.loc 1 2078 0
	movl	%r9d, %r10d	# D.13135, D.13135
	subl	%esi, %r10d	# D.13135, D.13135
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1269
	movl	-4(%rbp), %r9d	# tmp_time, tmp84
	movl	%edi, 24(%rsp)	# D.13135,
	movl	%ecx, 16(%rsp)	# intras.1259,
	movq	%rax, 8(%rsp)	# iftmp.1260,
	movl	-8(%rbp), %eax	# me_time, tmp85
	movl	%eax, (%rsp)	# tmp85,
	movl	%edx, %ecx	# D.13136,
	movl	%r10d, %edx	# D.13135,
	movl	$.LC17, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 2082 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ReportB, .-ReportB
	.section	.rodata
	.align 8
.LC18:
	.string	"%04d(P)  %8d %1d %2d %7.3f %7.3f %7.3f  %7d   %5d     %3s   %3d\n"
	.text
	.type	ReportP, @function
ReportP:
.LFB29:
	.loc 1 2086 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# tmp_time, tmp_time
	movl	%esi, -8(%rbp)	# me_time, me_time
	.loc 1 2087 0
	movl	intras(%rip), %ecx	# intras, intras.1270
	.loc 1 2090 0
	movq	img(%rip), %rax	# img, img.1272
	movl	71800(%rax), %eax	# img.1272_3->fld_flag, D.13140
	.loc 1 2087 0
	testl	%eax, %eax	# D.13140
	je	.L430	#,
	.loc 1 2087 0 is_stmt 0 discriminator 1
	movl	$.LC11, %eax	#, iftmp.1271
	jmp	.L431	#
.L430:
	.loc 1 2087 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.1271
.L431:
	.loc 1 2089 0 is_stmt 1
	movq	snr(%rip), %rdx	# snr, snr.1273
	movss	8(%rdx), %xmm0	# snr.1273_7->snr_v, D.13141
	.loc 1 2087 0
	unpcklps	%xmm0, %xmm0	# D.13141, D.13141
	cvtps2pd	%xmm0, %xmm2	# D.13141, D.13142
	.loc 1 2089 0
	movq	snr(%rip), %rdx	# snr, snr.1274
	movss	4(%rdx), %xmm0	# snr.1274_10->snr_u, D.13141
	.loc 1 2087 0
	unpcklps	%xmm0, %xmm0	# D.13141, D.13141
	cvtps2pd	%xmm0, %xmm1	# D.13141, D.13142
	.loc 1 2088 0
	movq	snr(%rip), %rdx	# snr, snr.1275
	movss	(%rdx), %xmm0	# snr.1275_13->snr_y, D.13141
	.loc 1 2087 0
	unpcklps	%xmm0, %xmm0	# D.13141, D.13141
	cvtps2pd	%xmm0, %xmm0	# D.13141, D.13142
	.loc 1 2088 0
	movq	img(%rip), %rdx	# img, img.1276
	.loc 1 2087 0
	movl	40(%rdx), %r8d	# img.1276_16->qp, D.13143
	.loc 1 2088 0
	movq	active_pps(%rip), %rdx	# active_pps, active_pps.1277
	movl	192(%rdx), %edx	# active_pps.1277_18->weighted_pred_flag, D.13144
	movq	stats(%rip), %rsi	# stats, stats.1278
	movl	16(%rsi), %edi	# stats.1278_20->bit_ctr, D.13143
	movq	stats(%rip), %rsi	# stats, stats.1279
	movl	20(%rsi), %esi	# stats.1279_22->bit_ctr_n, D.13143
	.loc 1 2087 0
	subl	%esi, %edi	# D.13143, D.13143
	movl	frame_no(%rip), %esi	# frame_no, frame_no.1280
	movl	-4(%rbp), %r9d	# tmp_time, tmp82
	movl	%ecx, 16(%rsp)	# intras.1270,
	movq	%rax, 8(%rsp)	# iftmp.1271,
	movl	-8(%rbp), %eax	# me_time, tmp83
	movl	%eax, (%rsp)	# tmp83,
	movl	%edx, %ecx	# D.13144,
	movl	%edi, %edx	# D.13143,
	movl	$.LC18, %edi	#,
	movl	$3, %eax	#,
	call	printf	#
	.loc 1 2092 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	ReportP, .-ReportP
	.type	PaddAutoCropBorders, @function
PaddAutoCropBorders:
.LFB30:
	.loc 1 2120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# org_size_x, org_size_x
	movl	%esi, -24(%rbp)	# org_size_y, org_size_y
	movl	%edx, -28(%rbp)	# img_size_x, img_size_x
	movl	%ecx, -32(%rbp)	# img_size_y, img_size_y
	movl	%r8d, -36(%rbp)	# org_size_x_cr, org_size_x_cr
	movl	%r9d, -40(%rbp)	# org_size_y_cr, org_size_y_cr
	.loc 1 2124 0
	movl	$0, -4(%rbp)	#, y
	jmp	.L433	#
.L436:
	.loc 1 2125 0
	movl	-20(%rbp), %eax	# org_size_x, tmp181
	movl	%eax, -8(%rbp)	# tmp181, x
	jmp	.L434	#
.L435:
	.loc 1 2126 0 discriminator 2
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1281
	movl	-4(%rbp), %edx	# y, tmp182
	movslq	%edx, %rdx	# tmp182, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_17, D.13148
	movl	-8(%rbp), %edx	# x, tmp183
	movslq	%edx, %rdx	# tmp183, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1282
	movl	-4(%rbp), %ecx	# y, tmp184
	movslq	%ecx, %rcx	# tmp184, D.13146
	salq	$3, %rcx	#, D.13146
	addq	%rcx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_25, D.13148
	movl	-8(%rbp), %ecx	# x, tmp185
	movslq	%ecx, %rcx	# tmp185, D.13146
	addq	%rcx, %rcx	# D.13146
	subq	$2, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13148
	movzwl	(%rax), %eax	# *_30, D.13150
	movw	%ax, (%rdx)	# D.13150, *_21
	.loc 1 2125 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L434:
	.loc 1 2125 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp186
	cmpl	-28(%rbp), %eax	# img_size_x, tmp186
	jl	.L435	#,
	.loc 1 2124 0 is_stmt 1
	addl	$1, -4(%rbp)	#, y
.L433:
	.loc 1 2124 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# y, tmp187
	cmpl	-24(%rbp), %eax	# org_size_y, tmp187
	jl	.L436	#,
	.loc 1 2129 0 is_stmt 1
	movl	-24(%rbp), %eax	# org_size_y, tmp188
	movl	%eax, -4(%rbp)	# tmp188, y
	jmp	.L437	#
.L440:
	.loc 1 2130 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L438	#
.L439:
	.loc 1 2131 0 discriminator 2
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1283
	movl	-4(%rbp), %edx	# y, tmp189
	movslq	%edx, %rdx	# tmp189, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_40, D.13148
	movl	-8(%rbp), %edx	# x, tmp190
	movslq	%edx, %rdx	# tmp190, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1284
	movl	-4(%rbp), %ecx	# y, tmp191
	movslq	%ecx, %rcx	# tmp191, D.13146
	salq	$3, %rcx	#, D.13146
	subq	$8, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13147
	movq	(%rax), %rax	# *_49, D.13148
	movl	-8(%rbp), %ecx	# x, tmp192
	movslq	%ecx, %rcx	# tmp192, D.13146
	addq	%rcx, %rcx	# D.13146
	addq	%rcx, %rax	# D.13146, D.13148
	movzwl	(%rax), %eax	# *_53, D.13150
	movw	%ax, (%rdx)	# D.13150, *_44
	.loc 1 2130 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L438:
	.loc 1 2130 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp193
	cmpl	-28(%rbp), %eax	# img_size_x, tmp193
	jl	.L439	#,
	.loc 1 2129 0 is_stmt 1
	addl	$1, -4(%rbp)	#, y
.L437:
	.loc 1 2129 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# y, tmp194
	cmpl	-32(%rbp), %eax	# img_size_y, tmp194
	jl	.L440	#,
	.loc 1 2134 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1285
	movl	72700(%rax), %eax	# img.1285_57->yuv_format, D.13151
	testl	%eax, %eax	# D.13151
	je	.L432	#,
	.loc 1 2137 0
	movl	$0, -4(%rbp)	#, y
	jmp	.L442	#
.L445:
	.loc 1 2138 0
	movl	-36(%rbp), %eax	# org_size_x_cr, tmp195
	movl	%eax, -8(%rbp)	# tmp195, x
	jmp	.L443	#
.L444:
	.loc 1 2140 0 discriminator 2
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1286
	movq	(%rax), %rax	# *imgUV_org_frm.1286_64, D.13147
	movl	-4(%rbp), %edx	# y, tmp196
	movslq	%edx, %rdx	# tmp196, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_68, D.13148
	movl	-8(%rbp), %edx	# x, tmp197
	movslq	%edx, %rdx	# tmp197, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1287
	movq	(%rax), %rax	# *imgUV_org_frm.1287_73, D.13147
	movl	-4(%rbp), %ecx	# y, tmp198
	movslq	%ecx, %rcx	# tmp198, D.13146
	salq	$3, %rcx	#, D.13146
	addq	%rcx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_77, D.13148
	movl	-8(%rbp), %ecx	# x, tmp199
	movslq	%ecx, %rcx	# tmp199, D.13146
	addq	%rcx, %rcx	# D.13146
	subq	$2, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13148
	movzwl	(%rax), %eax	# *_82, D.13150
	movw	%ax, (%rdx)	# D.13150, *_72
	.loc 1 2141 0 discriminator 2
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1288
	addq	$8, %rax	#, D.13152
	movq	(%rax), %rax	# *_85, D.13147
	movl	-4(%rbp), %edx	# y, tmp200
	movslq	%edx, %rdx	# tmp200, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_89, D.13148
	movl	-8(%rbp), %edx	# x, tmp201
	movslq	%edx, %rdx	# tmp201, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1289
	addq	$8, %rax	#, D.13152
	movq	(%rax), %rax	# *_95, D.13147
	movl	-4(%rbp), %ecx	# y, tmp202
	movslq	%ecx, %rcx	# tmp202, D.13146
	salq	$3, %rcx	#, D.13146
	addq	%rcx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_99, D.13148
	movl	-8(%rbp), %ecx	# x, tmp203
	movslq	%ecx, %rcx	# tmp203, D.13146
	addq	%rcx, %rcx	# D.13146
	subq	$2, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13148
	movzwl	(%rax), %eax	# *_104, D.13150
	movw	%ax, (%rdx)	# D.13150, *_93
	.loc 1 2138 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L443:
	.loc 1 2138 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp204
	cmpl	16(%rbp), %eax	# img_size_x_cr, tmp204
	jl	.L444	#,
	.loc 1 2137 0 is_stmt 1
	addl	$1, -4(%rbp)	#, y
.L442:
	.loc 1 2137 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# y, tmp205
	cmpl	-40(%rbp), %eax	# org_size_y_cr, tmp205
	jl	.L445	#,
	.loc 1 2145 0 is_stmt 1
	movl	-40(%rbp), %eax	# org_size_y_cr, tmp206
	movl	%eax, -4(%rbp)	# tmp206, y
	jmp	.L446	#
.L449:
	.loc 1 2146 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L447	#
.L448:
	.loc 1 2148 0 discriminator 2
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1290
	movq	(%rax), %rax	# *imgUV_org_frm.1290_111, D.13147
	movl	-4(%rbp), %edx	# y, tmp207
	movslq	%edx, %rdx	# tmp207, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_115, D.13148
	movl	-8(%rbp), %edx	# x, tmp208
	movslq	%edx, %rdx	# tmp208, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1291
	movq	(%rax), %rax	# *imgUV_org_frm.1291_120, D.13147
	movl	-4(%rbp), %ecx	# y, tmp209
	movslq	%ecx, %rcx	# tmp209, D.13146
	salq	$3, %rcx	#, D.13146
	subq	$8, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13147
	movq	(%rax), %rax	# *_125, D.13148
	movl	-8(%rbp), %ecx	# x, tmp210
	movslq	%ecx, %rcx	# tmp210, D.13146
	addq	%rcx, %rcx	# D.13146
	addq	%rcx, %rax	# D.13146, D.13148
	movzwl	(%rax), %eax	# *_129, D.13150
	movw	%ax, (%rdx)	# D.13150, *_119
	.loc 1 2149 0 discriminator 2
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1292
	addq	$8, %rax	#, D.13152
	movq	(%rax), %rax	# *_132, D.13147
	movl	-4(%rbp), %edx	# y, tmp211
	movslq	%edx, %rdx	# tmp211, D.13146
	salq	$3, %rdx	#, D.13146
	addq	%rdx, %rax	# D.13146, D.13147
	movq	(%rax), %rax	# *_136, D.13148
	movl	-8(%rbp), %edx	# x, tmp212
	movslq	%edx, %rdx	# tmp212, D.13146
	addq	%rdx, %rdx	# D.13146
	addq	%rax, %rdx	# D.13148, D.13148
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1293
	addq	$8, %rax	#, D.13152
	movq	(%rax), %rax	# *_142, D.13147
	movl	-4(%rbp), %ecx	# y, tmp213
	movslq	%ecx, %rcx	# tmp213, D.13146
	salq	$3, %rcx	#, D.13146
	subq	$8, %rcx	#, D.13149
	addq	%rcx, %rax	# D.13149, D.13147
	movq	(%rax), %rax	# *_147, D.13148
	movl	-8(%rbp), %ecx	# x, tmp214
	movslq	%ecx, %rcx	# tmp214, D.13146
	addq	%rcx, %rcx	# D.13146
	addq	%rcx, %rax	# D.13146, D.13148
	movzwl	(%rax), %eax	# *_151, D.13150
	movw	%ax, (%rdx)	# D.13150, *_140
	.loc 1 2146 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L447:
	.loc 1 2146 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# x, tmp215
	cmpl	16(%rbp), %eax	# img_size_x_cr, tmp215
	jl	.L448	#,
	.loc 1 2145 0 is_stmt 1
	addl	$1, -4(%rbp)	#, y
.L446:
	.loc 1 2145 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# y, tmp216
	cmpl	24(%rbp), %eax	# img_size_y_cr, tmp216
	jl	.L449	#,
.L432:
	.loc 1 2152 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	PaddAutoCropBorders, .-PaddAutoCropBorders
	.type	CalculateFrameNumber, @function
CalculateFrameNumber:
.LFB31:
	.loc 1 2167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2168 0
	movq	img(%rip), %rax	# img, img.1294
	movl	71908(%rax), %eax	# img.1294_1->b_frame_to_code, D.13153
	testl	%eax, %eax	# D.13153
	je	.L451	#,
	.loc 1 2171 0
	movq	input(%rip), %rax	# input, input.1295
	movl	1320(%rax), %eax	# input.1295_3->PyramidCoding, D.13153
	testl	%eax, %eax	# D.13153
	je	.L452	#,
	.loc 1 2172 0
	movq	img(%rip), %rax	# img, img.1296
	movl	(%rax), %edx	# img.1296_5->number, D.13153
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.1297
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.1297, D.13153
	movl	%edx, %eax	# D.13153, D.13153
	leal	-1(%rax), %edx	#, D.13153
	movq	input(%rip), %rax	# input, input.1298
	movl	20(%rax), %eax	# input.1298_10->jumpd, D.13153
	addl	$1, %eax	#, D.13153
	imull	%eax, %edx	# D.13153, D.13153
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.1299
	leal	(%rdx,%rax), %esi	#, D.13153
	movq	img(%rip), %rax	# img, img.1300
	movsd	71896(%rax), %xmm1	# img.1300_16->b_interval, D.13154
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.1301
	movq	img(%rip), %rax	# img, img.1302
	movl	71908(%rax), %eax	# img.1302_19->b_frame_to_code, D.13153
	movslq	%eax, %rdx	# D.13153, D.13155
	movq	%rdx, %rax	# D.13155, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.13155, tmp129
	salq	$3, %rax	#, tmp130
	subq	$24, %rax	#, D.13156
	addq	%rcx, %rax	# gop_structure.1301, D.13157
	movl	4(%rax), %eax	# _24->display_no, D.13153
	addl	$1, %eax	#, D.13153
	cvtsi2sd	%eax, %xmm0	# D.13153, D.13154
	mulsd	%xmm1, %xmm0	# D.13154, D.13154
	cvttsd2si	%xmm0, %eax	# D.13154, D.13153
	addl	%esi, %eax	# D.13153, frame_no.1303
	movl	%eax, frame_no(%rip)	# frame_no.1303, frame_no
	jmp	.L454	#
.L452:
	.loc 1 2174 0
	movq	img(%rip), %rax	# img, img.1304
	movl	(%rax), %edx	# img.1304_31->number, D.13153
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.1305
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.1305, D.13153
	movl	%edx, %eax	# D.13153, D.13153
	leal	-1(%rax), %edx	#, D.13153
	movq	input(%rip), %rax	# input, input.1306
	movl	20(%rax), %eax	# input.1306_36->jumpd, D.13153
	addl	$1, %eax	#, D.13153
	imull	%eax, %edx	# D.13153, D.13153
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.1307
	addl	%eax, %edx	# start_tr_in_this_IGOP.1307, D.13153
	movq	img(%rip), %rax	# img, img.1308
	movsd	71896(%rax), %xmm1	# img.1308_42->b_interval, D.13154
	movq	img(%rip), %rax	# img, img.1309
	movl	71908(%rax), %eax	# img.1309_44->b_frame_to_code, D.13153
	cvtsi2sd	%eax, %xmm0	# D.13153, D.13154
	mulsd	%xmm1, %xmm0	# D.13154, D.13154
	cvttsd2si	%xmm0, %eax	# D.13154, D.13153
	addl	%edx, %eax	# D.13153, frame_no.1310
	movl	%eax, frame_no(%rip)	# frame_no.1310, frame_no
	jmp	.L454	#
.L451:
	.loc 1 2178 0
	movq	img(%rip), %rax	# img, img.1311
	movl	(%rax), %edx	# img.1311_50->number, D.13153
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.1312
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.1312, D.13153
	movq	input(%rip), %rax	# input, input.1313
	movl	20(%rax), %eax	# input.1313_54->jumpd, D.13153
	addl	$1, %eax	#, D.13153
	imull	%eax, %edx	# D.13153, D.13153
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.1314
	addl	%edx, %eax	# D.13153, frame_no.1315
	movl	%eax, frame_no(%rip)	# frame_no.1315, frame_no
	.loc 1 2180 0
	movq	input(%rip), %rax	# input, input.1316
	movl	2440(%rax), %eax	# input.1316_60->last_frame, D.13153
	testl	%eax, %eax	# D.13153
	je	.L454	#,
	.loc 1 2180 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.1317
	movl	(%rax), %eax	# img.1317_62->number, D.13153
	leal	1(%rax), %edx	#, D.13153
	movq	input(%rip), %rax	# input, input.1318
	movl	8(%rax), %eax	# input.1318_65->no_frames, D.13153
	cmpl	%eax, %edx	# D.13153, D.13153
	jne	.L454	#,
	.loc 1 2181 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.1319
	movl	2440(%rax), %eax	# input.1319_67->last_frame, frame_no.1320
	movl	%eax, frame_no(%rip)	# frame_no.1320, frame_no
.L454:
	.loc 1 2185 0
	movl	frame_no(%rip), %eax	# frame_no, D.13153
	.loc 1 2186 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	CalculateFrameNumber, .-CalculateFrameNumber
	.section	.rodata
	.align 8
.LC19:
	.string	"Source picture has higher bit depth than imgpel data type. Please recompile with larger data type for imgpel."
	.align 8
.LC20:
	.string	"reading only from formats of 8, 16 or 32 bit allowed on big endian architecture"
	.text
	.globl	buf2img
	.type	buf2img, @function
buf2img:
.LFB32:
	.loc 1 2202 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# imgX, imgX
	movq	%rsi, -48(%rbp)	# buf, buf
	movl	%edx, -52(%rbp)	# size_x, size_x
	movl	%ecx, -56(%rbp)	# size_y, size_y
	movl	%r8d, -60(%rbp)	# symbol_size_in_bytes, symbol_size_in_bytes
	.loc 1 2208 0
	movl	-60(%rbp), %eax	# symbol_size_in_bytes, symbol_size_in_bytes.1321
	cmpl	$2, %eax	#, symbol_size_in_bytes.1321
	jbe	.L481	#,
	.loc 1 2210 0
	movl	$500, %esi	#,
	movl	$.LC19, %edi	#,
	call	error	#
.L481:
	.loc 1 2222 0
	movl	$0, %eax	#,
	call	testEndian	#
	testl	%eax, %eax	# D.13158
	je	.L458	#,
	.loc 1 2225 0
	movl	-60(%rbp), %eax	# symbol_size_in_bytes, symbol_size_in_bytes
	cmpl	$2, %eax	#, symbol_size_in_bytes
	je	.L460	#,
	cmpl	$4, %eax	#, symbol_size_in_bytes
	je	.L461	#,
	cmpl	$1, %eax	#, symbol_size_in_bytes
	jne	.L459	#,
	.loc 1 2229 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L463	#
.L466:
	.loc 1 2230 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L464	#
.L465:
	.loc 1 2232 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp143
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13159
	movq	-40(%rbp), %rax	# imgX, tmp144
	addq	%rdx, %rax	# D.13159, D.13160
	movq	(%rax), %rax	# *_19, D.13161
	movl	-24(%rbp), %edx	# i, tmp145
	movslq	%edx, %rdx	# tmp145, D.13159
	addq	%rdx, %rdx	# D.13159
	addq	%rax, %rdx	# D.13161, D.13161
	movl	-20(%rbp), %eax	# j, tmp146
	imull	-52(%rbp), %eax	# size_x, D.13158
	movl	%eax, %ecx	# D.13158, D.13158
	movl	-24(%rbp), %eax	# i, tmp147
	addl	%ecx, %eax	# D.13158, D.13158
	movslq	%eax, %rcx	# D.13158, D.13162
	movq	-48(%rbp), %rax	# buf, tmp148
	addq	%rcx, %rax	# D.13162, D.13163
	movzbl	(%rax), %eax	# *_28, D.13164
	movzbl	%al, %eax	# D.13164, D.13165
	movw	%ax, (%rdx)	# D.13165, *_23
	.loc 1 2230 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L464:
	.loc 1 2230 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp149
	cmpl	-52(%rbp), %eax	# size_x, tmp149
	jl	.L465	#,
	.loc 1 2229 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L463:
	.loc 1 2229 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp150
	cmpl	-56(%rbp), %eax	# size_y, tmp150
	jl	.L466	#,
	.loc 1 2234 0 is_stmt 1
	jmp	.L467	#
.L460:
	.loc 1 2238 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L468	#
.L471:
	.loc 1 2239 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L469	#
.L470:
	.loc 1 2241 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp151
	imull	-52(%rbp), %eax	# size_x, D.13158
	movl	%eax, %edx	# D.13158, D.13158
	movl	-24(%rbp), %eax	# i, tmp152
	addl	%edx, %eax	# D.13158, D.13158
	addl	%eax, %eax	# D.13158
	movslq	%eax, %rdx	# D.13158, D.13162
	movq	-48(%rbp), %rax	# buf, tmp153
	addq	%rdx, %rax	# D.13162, D.13163
	movzwl	(%rax), %eax	# MEM[(char * {ref-all})_39], D.13165
	movw	%ax, -16(%rbp)	# D.13165, MEM[(char * {ref-all})&tmp16]
	.loc 1 2242 0 discriminator 2
	movzwl	-16(%rbp), %eax	# tmp16, tmp16.1322
	shrw	$8, %ax	#, D.13165
	movl	%eax, %edx	# D.13165, D.13166
	movzwl	-16(%rbp), %eax	# tmp16, tmp16.1323
	movzwl	%ax, %eax	# tmp16.1323, D.13158
	sall	$8, %eax	#, D.13158
	orl	%edx, %eax	# D.13166, D.13166
	movw	%ax, -26(%rbp)	# D.13166, ui16
	.loc 1 2243 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp154
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13159
	movq	-40(%rbp), %rax	# imgX, tmp155
	addq	%rdx, %rax	# D.13159, D.13160
	movq	(%rax), %rax	# *_52, D.13161
	movl	-24(%rbp), %edx	# i, tmp156
	movslq	%edx, %rdx	# tmp156, D.13159
	addq	%rdx, %rdx	# D.13159
	addq	%rax, %rdx	# D.13161, D.13161
	movzwl	-26(%rbp), %eax	# ui16, tmp157
	movw	%ax, (%rdx)	# tmp157, *_56
	.loc 1 2239 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L469:
	.loc 1 2239 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp158
	cmpl	-52(%rbp), %eax	# size_x, tmp158
	jl	.L470	#,
	.loc 1 2238 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L468:
	.loc 1 2238 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp159
	cmpl	-56(%rbp), %eax	# size_y, tmp159
	jl	.L471	#,
	.loc 1 2246 0 is_stmt 1
	jmp	.L467	#
.L461:
	.loc 1 2250 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L472	#
.L475:
	.loc 1 2251 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L473	#
.L474:
	.loc 1 2253 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp160
	imull	-52(%rbp), %eax	# size_x, D.13158
	movl	%eax, %edx	# D.13158, D.13158
	movl	-24(%rbp), %eax	# i, tmp161
	addl	%edx, %eax	# D.13158, D.13158
	sall	$2, %eax	#, D.13158
	movslq	%eax, %rdx	# D.13158, D.13162
	movq	-48(%rbp), %rax	# buf, tmp162
	leaq	(%rdx,%rax), %rcx	#, D.13163
	leaq	-16(%rbp), %rax	#, tmp163
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.13163,
	movq	%rax, %rdi	# tmp163,
	call	memcpy	#
	.loc 1 2254 0 discriminator 2
	movq	-16(%rbp), %rax	# tmp32, tmp32.1324
	andl	$65280, %eax	#, D.13159
	salq	$8, %rax	#, D.13159
	movq	%rax, %rdx	# D.13159, D.13159
	movq	-16(%rbp), %rax	# tmp32, tmp32.1325
	salq	$24, %rax	#, D.13159
	movl	%eax, %eax	# D.13159, D.13159
	orq	%rax, %rdx	# D.13159, D.13159
	movq	-16(%rbp), %rax	# tmp32, tmp32.1326
	andl	$16711680, %eax	#, D.13159
	shrq	$8, %rax	#, D.13159
	orq	%rax, %rdx	# D.13159, D.13159
	movq	-16(%rbp), %rax	# tmp32, tmp32.1327
	andl	$4278190080, %eax	#, D.13159
	shrq	$24, %rax	#, D.13159
	orq	%rdx, %rax	# D.13159, tmp164
	movq	%rax, -8(%rbp)	# tmp164, ui32
	.loc 1 2255 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13159
	movq	-40(%rbp), %rax	# imgX, tmp166
	addq	%rdx, %rax	# D.13159, D.13160
	movq	(%rax), %rax	# *_83, D.13161
	movl	-24(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.13159
	addq	%rdx, %rdx	# D.13159
	addq	%rax, %rdx	# D.13161, D.13161
	movq	-8(%rbp), %rax	# ui32, tmp168
	movw	%ax, (%rdx)	# D.13165, *_87
	.loc 1 2251 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L473:
	.loc 1 2251 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp169
	cmpl	-52(%rbp), %eax	# size_x, tmp169
	jl	.L474	#,
	.loc 1 2250 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L472:
	.loc 1 2250 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp170
	cmpl	-56(%rbp), %eax	# size_y, tmp170
	jl	.L475	#,
.L459:
	.loc 1 2260 0 is_stmt 1
	movl	$500, %esi	#,
	movl	$.LC20, %edi	#,
	call	error	#
	.loc 1 2261 0
	nop
.L467:
	jmp	.L456	#
.L458:
	.loc 1 2269 0
	movl	$0, -20(%rbp)	#, j
	jmp	.L477	#
.L480:
	.loc 1 2270 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L478	#
.L479:
	.loc 1 2272 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp171
	cltq
	leaq	0(,%rax,8), %rdx	#, D.13159
	movq	-40(%rbp), %rax	# imgX, tmp172
	addq	%rdx, %rax	# D.13159, D.13160
	movq	(%rax), %rax	# *_95, D.13161
	movl	-24(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, D.13159
	addq	%rdx, %rdx	# D.13159
	addq	%rdx, %rax	# D.13159, D.13161
	movw	$0, (%rax)	#, *_99
	.loc 1 2273 0 discriminator 2
	movl	-60(%rbp), %eax	# symbol_size_in_bytes, tmp174
	cltq
	movl	-20(%rbp), %edx	# j, tmp175
	movl	%edx, %ecx	# tmp175, D.13158
	imull	-52(%rbp), %ecx	# size_x, D.13158
	movl	-24(%rbp), %edx	# i, tmp176
	addl	%ecx, %edx	# D.13158, D.13158
	imull	-60(%rbp), %edx	# symbol_size_in_bytes, D.13158
	movslq	%edx, %rcx	# D.13158, D.13162
	movq	-48(%rbp), %rdx	# buf, tmp177
	leaq	(%rcx,%rdx), %rsi	#, D.13163
	movl	-20(%rbp), %edx	# j, tmp178
	movslq	%edx, %rdx	# tmp178, D.13159
	leaq	0(,%rdx,8), %rcx	#, D.13159
	movq	-40(%rbp), %rdx	# imgX, tmp179
	addq	%rcx, %rdx	# D.13159, D.13160
	movq	(%rdx), %rdx	# *_108, D.13161
	movl	-24(%rbp), %ecx	# i, tmp180
	movslq	%ecx, %rcx	# tmp180, D.13159
	addq	%rcx, %rcx	# D.13159
	addq	%rdx, %rcx	# D.13161, D.13161
	movq	%rax, %rdx	# D.13159,
	movq	%rcx, %rdi	# D.13161,
	call	memcpy	#
	.loc 1 2270 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L478:
	.loc 1 2270 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp181
	cmpl	-52(%rbp), %eax	# size_x, tmp181
	jl	.L479	#,
	.loc 1 2269 0 is_stmt 1
	addl	$1, -20(%rbp)	#, j
.L477:
	.loc 1 2269 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp182
	cmpl	-56(%rbp), %eax	# size_y, tmp182
	jl	.L480	#,
.L456:
	.loc 1 2277 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	buf2img, .-buf2img
	.section	.rodata
.LC21:
	.string	"ReadOneFrame: buf"
	.align 8
.LC22:
	.string	"ReadOneFrame: cannot fseek to (Header size) in p_in"
	.align 8
.LC23:
	.string	"ReadOneFrame: cannot advance file pointer in p_in beyond frame %d\n"
	.align 8
.LC24:
	.string	"ReadOneFrame: cannot read %d bytes from input file, unexpected EOF?, exiting"
	.align 8
.LC25:
	.string	"ReadOneFrame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8"
	.text
	.type	ReadOneFrame, @function
ReadOneFrame:
.LFB33:
	.loc 1 2300 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movl	%edi, -52(%rbp)	# FrameNoInFile, FrameNoInFile
	movl	%esi, -56(%rbp)	# HeaderSize, HeaderSize
	movl	%edx, -60(%rbp)	# xs, xs
	movl	%ecx, -64(%rbp)	# ys, ys
	movl	%r8d, -68(%rbp)	# xs_cr, xs_cr
	movl	%r9d, -72(%rbp)	# ys_cr, ys_cr
	.loc 1 2301 0
	movq	img(%rip), %rax	# img, img.1328
	movl	72656(%rax), %eax	# img.1328_2->pic_unit_size_on_disk, D.13170
	leal	7(%rax), %edx	#, tmp131
	testl	%eax, %eax	# tmp130
	cmovs	%edx, %eax	# tmp131,, tmp130
	sarl	$3, %eax	#, tmp132
	movl	%eax, -40(%rbp)	# D.13170, symbol_size_in_bytes
	.loc 1 2303 0
	movl	-60(%rbp), %eax	# xs, tmp134
	imull	-64(%rbp), %eax	# ys, tmp133
	movl	%eax, -36(%rbp)	# tmp133, imgsize_y
	.loc 1 2304 0
	movl	-68(%rbp), %eax	# xs_cr, tmp136
	imull	-72(%rbp), %eax	# ys_cr, tmp135
	movl	%eax, -32(%rbp)	# tmp135, imgsize_uv
	.loc 1 2306 0
	movl	-36(%rbp), %eax	# imgsize_y, imgsize_y.1329
	imull	-40(%rbp), %eax	# symbol_size_in_bytes, D.13171
	movl	%eax, -28(%rbp)	# D.13171, bytes_y
	.loc 1 2307 0
	movl	-32(%rbp), %eax	# imgsize_uv, imgsize_uv.1330
	imull	-40(%rbp), %eax	# symbol_size_in_bytes, D.13171
	movl	%eax, -24(%rbp)	# D.13171, bytes_uv
	.loc 1 2309 0
	movl	-24(%rbp), %eax	# bytes_uv, tmp137
	leal	(%rax,%rax), %edx	#, D.13170
	movl	-28(%rbp), %eax	# bytes_y, tmp138
	addl	%edx, %eax	# D.13170, D.13170
	cltq
	movq	%rax, -16(%rbp)	# tmp139, framesize_in_bytes
	.loc 1 2312 0
	movq	input(%rip), %rax	# input, input.1332
	movl	3312(%rax), %eax	# input.1332_21->rgb_input_flag, D.13170
	cmpl	$1, %eax	#, D.13170
	jne	.L483	#,
	.loc 1 2312 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1333
	movl	72(%rax), %eax	# input.1333_23->yuv_format, D.13170
	cmpl	$3, %eax	#, D.13170
	jne	.L483	#,
	.loc 1 2312 0 discriminator 3
	movl	$1, %eax	#, iftmp.1331
	jmp	.L484	#
.L483:
	.loc 1 2312 0 discriminator 2
	movl	$0, %eax	#, iftmp.1331
.L484:
	.loc 1 2312 0 discriminator 4
	movl	%eax, -20(%rbp)	# iftmp.1331, rgb_input
	.loc 1 2318 0 is_stmt 1 discriminator 4
	movl	-60(%rbp), %eax	# xs, tmp140
	imull	-64(%rbp), %eax	# ys, D.13170
	imull	-40(%rbp), %eax	# symbol_size_in_bytes, D.13171
	movl	%eax, %eax	# D.13171, D.13172
	movq	%rax, %rdi	# D.13172,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp141, buf
	cmpq	$0, -8(%rbp)	#, buf
	jne	.L485	#,
	.loc 1 2318 0 is_stmt 0 discriminator 1
	movl	$.LC21, %edi	#,
	call	no_mem_exit	#
.L485:
	.loc 1 2321 0 is_stmt 1
	movl	-56(%rbp), %eax	# HeaderSize, tmp142
	movslq	%eax, %rcx	# tmp142, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1334
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1334,
	call	lseek	#
	movl	-56(%rbp), %edx	# HeaderSize, tmp143
	movslq	%edx, %rdx	# tmp143, D.13173
	cmpq	%rdx, %rax	# D.13173, D.13173
	je	.L486	#,
	.loc 1 2323 0
	movl	$-1, %esi	#,
	movl	$.LC22, %edi	#,
	call	error	#
.L486:
	.loc 1 2327 0
	movq	input(%rip), %rax	# input, input.1335
	movl	1232(%rax), %eax	# input.1335_38->start_frame, D.13170
	cltq
	imulq	-16(%rbp), %rax	# framesize_in_bytes, D.13173
	movq	%rax, %rcx	# D.13173, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1336
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1336,
	call	lseek	#
	cmpq	$-1, %rax	#, D.13173
	jne	.L487	#,
	.loc 1 2329 0
	movq	input(%rip), %rax	# input, input.1337
	movl	1232(%rax), %eax	# input.1337_44->start_frame, D.13170
	movl	%eax, %ecx	# D.13170,
	movl	$.LC23, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 2330 0
	movl	$-1, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L487:
	.loc 1 2334 0
	movl	-52(%rbp), %eax	# FrameNoInFile, tmp144
	cltq
	imulq	-16(%rbp), %rax	# framesize_in_bytes, D.13173
	movq	%rax, %rcx	# D.13173, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1338
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1338,
	call	lseek	#
	cmpq	$-1, %rax	#, D.13173
	jne	.L488	#,
	.loc 1 2336 0
	movq	input(%rip), %rax	# input, input.1339
	movl	1232(%rax), %edx	# input.1339_51->start_frame, D.13170
	movl	-52(%rbp), %eax	# FrameNoInFile, tmp145
	addl	%edx, %eax	# D.13170, D.13170
	movl	%eax, %ecx	# D.13170,
	movl	$.LC23, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 2337 0
	movl	$-1, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L488:
	.loc 1 2342 0
	movq	img(%rip), %rax	# img, img.1340
	movl	72656(%rax), %eax	# img.1340_54->pic_unit_size_on_disk, D.13170
	andl	$7, %eax	#, D.13174
	testl	%eax, %eax	# D.13174
	jne	.L489	#,
	.loc 1 2344 0
	cmpl	$0, -20(%rbp)	#, rgb_input
	je	.L490	#,
	.loc 1 2345 0
	movq	-16(%rbp), %rcx	# framesize_in_bytes, tmp146
	movabsq	$6148914691236517206, %rdx	#, tmp148
	movq	%rcx, %rax	# tmp146, tmp177
	imulq	%rdx	# tmp148
	movq	%rcx, %rax	# tmp146, tmp149
	sarq	$63, %rax	#, tmp149
	movq	%rdx, %rcx	# tmp147, D.13173
	subq	%rax, %rcx	# tmp149, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1341
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1341,
	call	lseek	#
.L490:
	.loc 1 2347 0
	movl	-28(%rbp), %eax	# bytes_y, tmp150
	movslq	%eax, %rdx	# tmp150, D.13172
	movl	p_in(%rip), %eax	# p_in, p_in.1342
	movq	-8(%rbp), %rcx	# buf, tmp151
	movq	%rcx, %rsi	# tmp151,
	movl	%eax, %edi	# p_in.1342,
	call	read	#
	movl	-28(%rbp), %edx	# bytes_y, tmp152
	movslq	%edx, %rdx	# tmp152, D.13173
	cmpq	%rdx, %rax	# D.13173, D.13173
	je	.L491	#,
	.loc 1 2349 0
	movl	-28(%rbp), %eax	# bytes_y, tmp153
	movl	%eax, %esi	# tmp153,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2350 0
	movl	$0, %eax	#,
	call	report_stats_on_error	#
	.loc 1 2351 0
	movl	$-1, %edi	#,
	call	exit	#
.L491:
	.loc 1 2354 0
	movl	-40(%rbp), %edi	# symbol_size_in_bytes, symbol_size_in_bytes.1343
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1344
	movl	-64(%rbp), %ecx	# ys, tmp154
	movl	-60(%rbp), %edx	# xs, tmp155
	movq	-8(%rbp), %rsi	# buf, tmp156
	movl	%edi, %r8d	# symbol_size_in_bytes.1343,
	movq	%rax, %rdi	# imgY_org_frm.1344,
	call	buf2img	#
	.loc 1 2356 0
	movq	img(%rip), %rax	# img, img.1345
	movl	72700(%rax), %eax	# img.1345_66->yuv_format, D.13170
	testl	%eax, %eax	# D.13170
	je	.L496	#,
	.loc 1 2358 0
	movl	-24(%rbp), %eax	# bytes_uv, tmp157
	movslq	%eax, %rdx	# tmp157, D.13172
	movl	p_in(%rip), %eax	# p_in, p_in.1346
	movq	-8(%rbp), %rcx	# buf, tmp158
	movq	%rcx, %rsi	# tmp158,
	movl	%eax, %edi	# p_in.1346,
	call	read	#
	movl	-24(%rbp), %edx	# bytes_uv, tmp159
	movslq	%edx, %rdx	# tmp159, D.13173
	cmpq	%rdx, %rax	# D.13173, D.13173
	je	.L493	#,
	.loc 1 2360 0
	movl	-28(%rbp), %eax	# bytes_y, tmp160
	movl	%eax, %esi	# tmp160,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2361 0
	movl	$0, %eax	#,
	call	report_stats_on_error	#
	.loc 1 2362 0
	movl	$-1, %edi	#,
	call	exit	#
.L493:
	.loc 1 2364 0
	movl	-40(%rbp), %edi	# symbol_size_in_bytes, symbol_size_in_bytes.1347
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1348
	movq	(%rax), %rax	# *imgUV_org_frm.1348_73, D.13175
	movl	-72(%rbp), %ecx	# ys_cr, tmp161
	movl	-68(%rbp), %edx	# xs_cr, tmp162
	movq	-8(%rbp), %rsi	# buf, tmp163
	movl	%edi, %r8d	# symbol_size_in_bytes.1347,
	movq	%rax, %rdi	# D.13175,
	call	buf2img	#
	.loc 1 2366 0
	cmpl	$0, -20(%rbp)	#, rgb_input
	je	.L494	#,
	.loc 1 2367 0
	movq	-16(%rbp), %rax	# framesize_in_bytes, tmp164
	negq	%rax	# D.13173
	movq	%rax, %rcx	# D.13173, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1349
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1349,
	call	lseek	#
.L494:
	.loc 1 2369 0
	movl	-24(%rbp), %eax	# bytes_uv, tmp165
	movslq	%eax, %rdx	# tmp165, D.13172
	movl	p_in(%rip), %eax	# p_in, p_in.1350
	movq	-8(%rbp), %rcx	# buf, tmp166
	movq	%rcx, %rsi	# tmp166,
	movl	%eax, %edi	# p_in.1350,
	call	read	#
	movl	-24(%rbp), %edx	# bytes_uv, tmp167
	movslq	%edx, %rdx	# tmp167, D.13173
	cmpq	%rdx, %rax	# D.13173, D.13173
	je	.L495	#,
	.loc 1 2371 0
	movl	-28(%rbp), %eax	# bytes_y, tmp168
	movl	%eax, %esi	# tmp168,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2372 0
	movl	$0, %eax	#,
	call	report_stats_on_error	#
	.loc 1 2373 0
	movl	$-1, %edi	#,
	call	exit	#
.L495:
	.loc 1 2375 0
	movl	-40(%rbp), %edi	# symbol_size_in_bytes, symbol_size_in_bytes.1351
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1352
	addq	$8, %rax	#, D.13176
	movq	(%rax), %rax	# *_83, D.13175
	movl	-72(%rbp), %ecx	# ys_cr, tmp169
	movl	-68(%rbp), %edx	# xs_cr, tmp170
	movq	-8(%rbp), %rsi	# buf, tmp171
	movl	%edi, %r8d	# symbol_size_in_bytes.1351,
	movq	%rax, %rdi	# D.13175,
	call	buf2img	#
	.loc 1 2377 0
	cmpl	$0, -20(%rbp)	#, rgb_input
	je	.L496	#,
	.loc 1 2378 0
	movq	-16(%rbp), %rax	# framesize_in_bytes, tmp172
	leaq	(%rax,%rax), %rcx	#, D.13173
	movabsq	$6148914691236517206, %rdx	#, tmp174
	movq	%rcx, %rax	# D.13173, tmp178
	imulq	%rdx	# tmp174
	movq	%rcx, %rax	# D.13173, tmp175
	sarq	$63, %rax	#, tmp175
	movq	%rdx, %rcx	# tmp173, D.13173
	subq	%rax, %rcx	# tmp175, D.13173
	movl	p_in(%rip), %eax	# p_in, p_in.1353
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.13173,
	movl	%eax, %edi	# p_in.1353,
	call	lseek	#
	jmp	.L496	#
.L489:
	.loc 1 2383 0
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 2384 0
	movl	$-1, %edi	#,
	call	exit	#
.L496:
	.loc 1 2386 0
	movq	-8(%rbp), %rax	# buf, tmp176
	movq	%rax, %rdi	# tmp176,
	call	free	#
	.loc 1 2388 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ReadOneFrame, .-ReadOneFrame
	.type	put_buffer_frame, @function
put_buffer_frame:
.LFB34:
	.loc 1 2398 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2399 0
	movq	imgY_org_frm(%rip), %rax	# imgY_org_frm, imgY_org_frm.1354
	movq	%rax, imgY_org(%rip)	# imgY_org_frm.1354, imgY_org
	.loc 1 2400 0
	movq	imgUV_org_frm(%rip), %rax	# imgUV_org_frm, imgUV_org_frm.1355
	movq	%rax, imgUV_org(%rip)	# imgUV_org_frm.1355, imgUV_org
	.loc 1 2401 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	put_buffer_frame, .-put_buffer_frame
	.type	put_buffer_top, @function
put_buffer_top:
.LFB35:
	.loc 1 2410 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2411 0
	movq	img(%rip), %rax	# img, img.1356
	movl	$0, 71796(%rax)	#, img.1356_1->fld_type
	.loc 1 2413 0
	movq	imgY_org_top(%rip), %rax	# imgY_org_top, imgY_org_top.1357
	movq	%rax, imgY_org(%rip)	# imgY_org_top.1357, imgY_org
	.loc 1 2414 0
	movq	imgUV_org_top(%rip), %rax	# imgUV_org_top, imgUV_org_top.1358
	movq	%rax, imgUV_org(%rip)	# imgUV_org_top.1358, imgUV_org
	.loc 1 2415 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	put_buffer_top, .-put_buffer_top
	.type	put_buffer_bot, @function
put_buffer_bot:
.LFB36:
	.loc 1 2424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2425 0
	movq	img(%rip), %rax	# img, img.1359
	movl	$1, 71796(%rax)	#, img.1359_1->fld_type
	.loc 1 2427 0
	movq	imgY_org_bot(%rip), %rax	# imgY_org_bot, imgY_org_bot.1360
	movq	%rax, imgY_org(%rip)	# imgY_org_bot.1360, imgY_org
	.loc 1 2428 0
	movq	imgUV_org_bot(%rip), %rax	# imgUV_org_bot, imgUV_org_bot.1361
	movq	%rax, imgUV_org(%rip)	# imgUV_org_bot.1361, imgUV_org
	.loc 1 2429 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	put_buffer_bot, .-put_buffer_bot
	.type	writeUnit, @function
writeUnit:
.LFB37:
	.loc 1 2439 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# currStream, currStream
	movl	%esi, -44(%rbp)	# partition, partition
	.loc 1 2442 0
	movq	img(%rip), %rax	# img, img.1362
	movl	52(%rax), %edx	# img.1362_2->width, D.13182
	movq	img(%rip), %rax	# img, img.1363
	movl	60(%rax), %eax	# img.1363_4->height, D.13182
	imull	%edx, %eax	# D.13182, D.13182
	sall	$2, %eax	#, D.13182
	movl	%eax, %edi	# D.13182,
	movl	$0, %eax	#,
	call	AllocNALU	#
	movq	%rax, -24(%rbp)	# tmp98, nalu
	.loc 1 2443 0
	movq	img(%rip), %rax	# img, img.1365
	movl	12(%rax), %eax	# img.1365_9->current_mb_nr, D.13182
	testl	%eax, %eax	# D.13182
	jne	.L501	#,
	.loc 1 2443 0 is_stmt 0 discriminator 1
	movl	$5, %eax	#, iftmp.1364
	jmp	.L502	#
.L501:
	.loc 1 2443 0 discriminator 2
	movl	$4, %eax	#, iftmp.1364
.L502:
	.loc 1 2443 0 discriminator 3
	movq	-24(%rbp), %rdx	# nalu, tmp99
	movl	%eax, (%rdx)	# iftmp.1364, nalu_8->startcodeprefix_len
	.loc 1 2445 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# currStream, tmp100
	movl	(%rax), %eax	# currStream_13(D)->byte_pos, D.13182
	addl	$1, %eax	#, D.13182
	movl	%eax, %edx	# D.13182, D.13183
	movq	-24(%rbp), %rax	# nalu, tmp101
	movl	%edx, 4(%rax)	# D.13183, nalu_8->len
	.loc 1 2447 0 discriminator 3
	movq	-24(%rbp), %rax	# nalu, tmp102
	movl	4(%rax), %eax	# nalu_8->len, D.13183
	subl	$1, %eax	#, D.13183
	movl	%eax, %edx	# D.13183, D.13184
	movq	-40(%rbp), %rax	# currStream, tmp103
	movq	32(%rax), %rax	# currStream_13(D)->streamBuffer, D.13185
	movq	-24(%rbp), %rcx	# nalu, tmp104
	movq	24(%rcx), %rcx	# nalu_8->buf, D.13185
	addq	$1, %rcx	#, D.13185
	movq	%rax, %rsi	# D.13185,
	movq	%rcx, %rdi	# D.13185,
	call	memcpy	#
	.loc 1 2448 0 discriminator 3
	movq	img(%rip), %rax	# img, img.1366
	movq	14152(%rax), %rax	# img.1366_23->currentPicture, D.13186
	movl	4(%rax), %eax	# _24->idr_flag, D.13182
	testl	%eax, %eax	# D.13182
	je	.L503	#,
	.loc 1 2450 0
	movq	-24(%rbp), %rax	# nalu, tmp105
	movl	$5, 12(%rax)	#, nalu_8->nal_unit_type
	.loc 1 2451 0
	movq	-24(%rbp), %rax	# nalu, tmp106
	movl	$3, 16(%rax)	#, nalu_8->nal_reference_idc
	jmp	.L504	#
.L503:
	.loc 1 2453 0
	movq	img(%rip), %rax	# img, img.1367
	movl	24(%rax), %eax	# img.1367_26->type, D.13182
	cmpl	$1, %eax	#, D.13182
	jne	.L505	#,
	.loc 1 2456 0
	movq	input(%rip), %rax	# input, input.1368
	movl	2364(%rax), %eax	# input.1368_28->partition_mode, D.13182
	testl	%eax, %eax	# D.13182
	jne	.L506	#,
	.loc 1 2458 0
	movq	-24(%rbp), %rax	# nalu, tmp107
	movl	$1, 12(%rax)	#, nalu_8->nal_unit_type
	jmp	.L507	#
.L506:
	.loc 1 2462 0
	movl	-44(%rbp), %eax	# partition, tmp108
	leal	2(%rax), %edx	#, D.13182
	movq	-24(%rbp), %rax	# nalu, tmp109
	movl	%edx, 12(%rax)	# D.13182, nalu_8->nal_unit_type
.L507:
	.loc 1 2465 0
	movq	img(%rip), %rax	# img, img.1369
	movl	72496(%rax), %eax	# img.1369_32->nal_reference_idc, D.13182
	testl	%eax, %eax	# D.13182
	je	.L508	#,
	.loc 1 2467 0
	movq	-24(%rbp), %rax	# nalu, tmp110
	movl	$2, 16(%rax)	#, nalu_8->nal_reference_idc
	jmp	.L504	#
.L508:
	.loc 1 2471 0
	movq	-24(%rbp), %rax	# nalu, tmp111
	movl	$0, 16(%rax)	#, nalu_8->nal_reference_idc
	jmp	.L504	#
.L505:
	.loc 1 2477 0
	movq	input(%rip), %rax	# input, input.1370
	movl	2364(%rax), %eax	# input.1370_34->partition_mode, D.13182
	testl	%eax, %eax	# D.13182
	jne	.L510	#,
	.loc 1 2479 0
	movq	-24(%rbp), %rax	# nalu, tmp112
	movl	$1, 12(%rax)	#, nalu_8->nal_unit_type
	jmp	.L511	#
.L510:
	.loc 1 2483 0
	movl	-44(%rbp), %eax	# partition, tmp113
	leal	2(%rax), %edx	#, D.13182
	movq	-24(%rbp), %rax	# nalu, tmp114
	movl	%edx, 12(%rax)	# D.13182, nalu_8->nal_unit_type
.L511:
	.loc 1 2485 0
	movq	img(%rip), %rax	# img, img.1371
	movl	72496(%rax), %eax	# img.1371_37->nal_reference_idc, D.13182
	testl	%eax, %eax	# D.13182
	je	.L512	#,
	.loc 1 2487 0
	movq	-24(%rbp), %rax	# nalu, tmp115
	movl	$2, 16(%rax)	#, nalu_8->nal_reference_idc
	jmp	.L504	#
.L512:
	.loc 1 2491 0
	movq	-24(%rbp), %rax	# nalu, tmp116
	movl	$0, 16(%rax)	#, nalu_8->nal_reference_idc
.L504:
	.loc 1 2494 0
	movq	-24(%rbp), %rax	# nalu, tmp117
	movl	$0, 20(%rax)	#, nalu_8->forbidden_bit
	.loc 1 2495 0
	movq	stats(%rip), %rbx	# stats, stats.1372
	movq	stats(%rip), %rax	# stats, stats.1373
	movl	16(%rax), %r12d	# stats.1373_40->bit_ctr, D.13182
	movq	WriteNALU(%rip), %rax	# WriteNALU, WriteNALU.1374
	movq	-24(%rbp), %rdx	# nalu, tmp118
	movq	%rdx, %rdi	# tmp118,
	call	*%rax	# WriteNALU.1374
	addl	%r12d, %eax	# D.13182, D.13182
	movl	%eax, 16(%rbx)	# D.13182, stats.1372_39->bit_ctr
	.loc 1 2497 0
	movq	-24(%rbp), %rax	# nalu, tmp119
	movq	%rax, %rdi	# tmp119,
	call	FreeNALU	#
	.loc 1 2498 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	writeUnit, .-writeUnit
	.type	rdPictureCoding, @function
rdPictureCoding:
.LFB38:
	.loc 1 2509 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	.loc 1 2510 0
	movq	img(%rip), %rax	# img, img.1375
	movl	40(%rax), %eax	# img.1375_8->qp, tmp159
	movl	%eax, -36(%rbp)	# tmp159, second_qp
	movq	img(%rip), %rax	# img, img.1376
	movl	40(%rax), %eax	# img.1376_10->qp, tmp160
	movl	%eax, -32(%rbp)	# tmp160, rd_qp
	.loc 1 2511 0
	movl	intras(%rip), %eax	# intras, tmp161
	movl	%eax, -44(%rbp)	# tmp161, previntras
	.loc 1 2512 0
	movq	img(%rip), %rax	# img, img.1377
	movl	24(%rax), %eax	# img.1377_13->type, tmp162
	movl	%eax, -28(%rbp)	# tmp162, prevtype
	.loc 1 2513 0
	movl	$0, -40(%rbp)	#, skip_encode
	.loc 1 2517 0
	movq	img(%rip), %rax	# img, img.1378
	movl	24(%rax), %eax	# img.1378_16->type, D.13187
	cmpl	$2, %eax	#, D.13187
	je	.L514	#,
	.loc 1 2517 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1379
	movl	60(%rax), %eax	# input.1379_18->GenerateMultiplePPS, D.13187
	testl	%eax, %eax	# D.13187
	je	.L514	#,
	.loc 1 2519 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1380
	movl	24(%rax), %eax	# img.1380_20->type, D.13187
	testl	%eax, %eax	# D.13187
	jne	.L515	#,
	.loc 1 2521 0
	movl	$0, %edi	#,
	call	test_wp_P_slice	#
	cmpl	$1, %eax	#, D.13187
	jne	.L516	#,
	.loc 1 2523 0
	movq	$PicParSet+240, active_pps(%rip)	#, active_pps
	.loc 1 2519 0
	jmp	.L519	#
.L516:
	.loc 1 2527 0
	movq	input(%rip), %rax	# input, input.1381
	movl	1304(%rax), %eax	# input.1381_23->RDPSliceWeightOnly, tmp163
	movl	%eax, -40(%rbp)	# tmp163, skip_encode
	.loc 1 2528 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
	.loc 1 2529 0
	movq	img(%rip), %rax	# img, img.1382
	movq	img(%rip), %rdx	# img, img.1383
	movl	40(%rdx), %edx	# img.1383_26->qp, D.13187
	subl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1382_25->qp
	.loc 1 2519 0
	jmp	.L519	#
.L515:
	.loc 1 2534 0
	movq	$PicParSet+480, active_pps(%rip)	#, active_pps
	.loc 1 2519 0
	jmp	.L519	#
.L514:
	.loc 1 2539 0
	movq	img(%rip), %rax	# img, img.1384
	movq	img(%rip), %rdx	# img, img.1385
	movl	40(%rdx), %edx	# img.1385_30->qp, D.13187
	subl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1384_29->qp
.L519:
	.loc 1 2542 0
	movq	active_pps(%rip), %rax	# active_pps, tmp164
	movq	%rax, -24(%rbp)	# tmp164, sec_pps
	.loc 1 2543 0
	movq	img(%rip), %rax	# img, img.1386
	movl	40(%rax), %eax	# img.1386_34->qp, tmp165
	movl	%eax, -36(%rbp)	# tmp165, second_qp
	.loc 1 2545 0
	movq	img(%rip), %rax	# img, img.1387
	movl	$0, 72624(%rax)	#, img.1387_36->write_macroblock
	.loc 1 2547 0
	cmpl	$0, -40(%rbp)	#, skip_encode
	je	.L520	#,
	.loc 1 2549 0
	movq	img(%rip), %rax	# img, img.1388
	movl	$0, 71804(%rax)	#, img.1388_37->rd_pass
	.loc 1 2550 0
	movq	$0, enc_frame_picture2(%rip)	#, enc_frame_picture2
	jmp	.L521	#
.L520:
	.loc 1 2554 0
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.1389
	movl	$1, %esi	#,
	movq	%rax, %rdi	# frame_pic2.1389,
	call	frame_picture	#
	.loc 1 2555 0
	movq	img(%rip), %rbx	# img, img.1390
	movq	frame_pic2(%rip), %rcx	# frame_pic2, frame_pic2.1391
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.1392
	movl	-32(%rbp), %edx	# rd_qp, tmp166
	movq	%rcx, %rsi	# frame_pic2.1391,
	movq	%rax, %rdi	# frame_pic.1392,
	call	picture_coding_decision	#
	movl	%eax, 71804(%rbx)	# D.13188, img.1390_39->rd_pass
.L521:
	.loc 1 2558 0
	movq	img(%rip), %rax	# img, img.1393
	movl	71804(%rax), %eax	# img.1393_44->rd_pass, D.13188
	testl	%eax, %eax	# D.13188
	jne	.L522	#,
	.loc 1 2560 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.1394
	movq	%rax, enc_picture(%rip)	# enc_frame_picture.1394, enc_picture
	.loc 1 2561 0
	movq	img(%rip), %rax	# img, img.1395
	movl	24(%rax), %eax	# img.1395_47->type, D.13187
	cmpl	$2, %eax	#, D.13187
	je	.L523	#,
	.loc 1 2561 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1396
	movl	60(%rax), %eax	# input.1396_49->GenerateMultiplePPS, D.13187
	testl	%eax, %eax	# D.13187
	je	.L523	#,
	.loc 1 2563 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1397
	movl	-32(%rbp), %edx	# rd_qp, tmp167
	movl	%edx, 40(%rax)	# tmp167, img.1397_51->qp
	.loc 1 2564 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
	jmp	.L524	#
.L523:
	.loc 1 2568 0
	movq	img(%rip), %rax	# img, img.1398
	movl	-32(%rbp), %edx	# rd_qp, tmp168
	movl	%edx, 40(%rax)	# tmp168, img.1398_52->qp
.L524:
	.loc 1 2570 0
	movl	-44(%rbp), %eax	# previntras, tmp169
	movl	%eax, intras(%rip)	# tmp169, intras
	jmp	.L525	#
.L522:
	.loc 1 2575 0
	movl	intras(%rip), %eax	# intras, tmp170
	movl	%eax, -44(%rbp)	# tmp170, previntras
.L525:
	.loc 1 2580 0
	movq	img(%rip), %rax	# img, img.1399
	movl	24(%rax), %eax	# img.1399_54->type, D.13187
	cmpl	$2, %eax	#, D.13187
	je	.L526	#,
	.loc 1 2580 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1400
	movl	60(%rax), %eax	# input.1400_56->GenerateMultiplePPS, D.13187
	testl	%eax, %eax	# D.13187
	je	.L526	#,
	.loc 1 2582 0 is_stmt 1
	movl	$0, -40(%rbp)	#, skip_encode
	.loc 1 2583 0
	movq	img(%rip), %rax	# img, img.1401
	movl	-32(%rbp), %edx	# rd_qp, tmp171
	movl	%edx, 40(%rax)	# tmp171, img.1401_59->qp
	.loc 1 2584 0
	movq	img(%rip), %rax	# img, img.1402
	movl	24(%rax), %eax	# img.1402_60->type, D.13187
	testl	%eax, %eax	# D.13187
	jne	.L527	#,
	.loc 1 2586 0
	movl	$1, %edi	#,
	call	test_wp_P_slice	#
	cmpl	$1, %eax	#, D.13187
	jne	.L528	#,
	.loc 1 2588 0
	movq	$PicParSet+240, active_pps(%rip)	#, active_pps
	jmp	.L530	#
.L528:
	.loc 1 2592 0
	movq	input(%rip), %rax	# input, input.1403
	movl	1304(%rax), %eax	# input.1403_63->RDPSliceWeightOnly, tmp172
	movl	%eax, -40(%rbp)	# tmp172, skip_encode
	.loc 1 2593 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
	.loc 1 2594 0
	movq	img(%rip), %rax	# img, img.1404
	movq	img(%rip), %rdx	# img, img.1405
	movl	40(%rdx), %edx	# img.1405_66->qp, D.13187
	addl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1404_65->qp
	.loc 1 2584 0
	jmp	.L533	#
.L527:
	.loc 1 2599 0
	movl	$0, %edi	#,
	call	test_wp_B_slice	#
	cmpl	$1, %eax	#, D.13187
	jne	.L531	#,
	.loc 1 2601 0
	movq	$PicParSet+240, active_pps(%rip)	#, active_pps
	jmp	.L530	#
.L531:
	.loc 1 2605 0
	movq	input(%rip), %rax	# input, input.1406
	movl	1308(%rax), %eax	# input.1406_70->RDBSliceWeightOnly, tmp173
	movl	%eax, -40(%rbp)	# tmp173, skip_encode
	.loc 1 2607 0
	movq	img(%rip), %rax	# img, img.1407
	movl	72496(%rax), %eax	# img.1407_72->nal_reference_idc, D.13187
	testl	%eax, %eax	# D.13187
	je	.L532	#,
	.loc 1 2608 0
	movq	img(%rip), %rax	# img, img.1408
	movl	-32(%rbp), %edx	# rd_qp, tmp174
	subl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1408_74->qp
	jmp	.L530	#
.L532:
	.loc 1 2610 0
	movq	img(%rip), %rax	# img, img.1409
	movl	-32(%rbp), %edx	# rd_qp, tmp175
	addl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1409_76->qp
	.loc 1 2584 0
	jmp	.L533	#
.L530:
	jmp	.L533	#
.L526:
	.loc 1 2616 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
	.loc 1 2617 0
	movq	img(%rip), %rax	# img, img.1410
	movl	-32(%rbp), %edx	# rd_qp, tmp176
	addl	$1, %edx	#, D.13187
	movl	%edx, 40(%rax)	# D.13187, img.1410_78->qp
.L533:
	.loc 1 2620 0
	movq	img(%rip), %rax	# img, img.1411
	movl	24(%rax), %eax	# img.1411_80->type, D.13187
	testl	%eax, %eax	# D.13187
	jne	.L534	#,
	.loc 1 2620 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.1412
	movl	60(%rax), %eax	# input.1412_82->GenerateMultiplePPS, D.13187
	testl	%eax, %eax	# D.13187
	je	.L534	#,
	movl	intras(%rip), %eax	# intras, intras.1413
	imull	$100, %eax, %eax	#, intras.1413, D.13187
	movq	img(%rip), %rdx	# img, img.1414
	movl	72488(%rdx), %esi	# img.1414_87->FrameSizeInMbs, D.13188
	movl	$0, %edx	#, tmp178
	divl	%esi	# D.13188
	cmpl	$74, %eax	#, D.13188
	jbe	.L534	#,
	.loc 1 2622 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.1415
	movl	$2, 24(%rax)	#, img.1415_90->type
	.loc 1 2623 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
.L534:
	.loc 1 2626 0
	movq	img(%rip), %rax	# img, img.1416
	movl	$0, 72624(%rax)	#, img.1416_91->write_macroblock
	.loc 1 2628 0
	cmpl	$0, -40(%rbp)	#, skip_encode
	je	.L535	#,
	.loc 1 2630 0
	movq	$0, enc_frame_picture3(%rip)	#, enc_frame_picture3
	.loc 1 2631 0
	movq	img(%rip), %rax	# img, img.1417
	movl	-32(%rbp), %edx	# rd_qp, tmp179
	movl	%edx, 40(%rax)	# tmp179, img.1417_92->qp
	jmp	.L536	#
.L535:
	.loc 1 2635 0
	movq	frame_pic3(%rip), %rax	# frame_pic3, frame_pic3.1418
	movl	$2, %esi	#,
	movq	%rax, %rdi	# frame_pic3.1418,
	call	frame_picture	#
	.loc 1 2637 0
	movq	img(%rip), %rax	# img, img.1419
	movl	71804(%rax), %eax	# img.1419_94->rd_pass, D.13188
	testl	%eax, %eax	# D.13188
	jne	.L537	#,
	.loc 1 2638 0
	movq	img(%rip), %rbx	# img, img.1420
	movq	frame_pic3(%rip), %rcx	# frame_pic3, frame_pic3.1421
	movq	frame_pic(%rip), %rax	# frame_pic, frame_pic.1422
	movl	-32(%rbp), %edx	# rd_qp, tmp180
	movq	%rcx, %rsi	# frame_pic3.1421,
	movq	%rax, %rdi	# frame_pic.1422,
	call	picture_coding_decision	#
	addl	%eax, %eax	# D.13187
	movl	%eax, 71804(%rbx)	# D.13188, img.1420_96->rd_pass
	jmp	.L536	#
.L537:
	.loc 1 2640 0
	movq	img(%rip), %rbx	# img, img.1423
	movq	img(%rip), %rax	# img, img.1424
	movl	71804(%rax), %r12d	# img.1424_103->rd_pass, D.13188
	movq	frame_pic3(%rip), %rcx	# frame_pic3, frame_pic3.1425
	movq	frame_pic2(%rip), %rax	# frame_pic2, frame_pic2.1426
	movl	-32(%rbp), %edx	# rd_qp, tmp181
	movq	%rcx, %rsi	# frame_pic3.1425,
	movq	%rax, %rdi	# frame_pic2.1426,
	call	picture_coding_decision	#
	addl	%r12d, %eax	# D.13188, D.13188
	movl	%eax, 71804(%rbx)	# D.13188, img.1423_102->rd_pass
.L536:
	.loc 1 2644 0
	movq	img(%rip), %rax	# img, img.1427
	movl	71804(%rax), %eax	# img.1427_110->rd_pass, D.13188
	testl	%eax, %eax	# D.13188
	jne	.L538	#,
	.loc 1 2646 0
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.1428
	movq	%rax, enc_picture(%rip)	# enc_frame_picture.1428, enc_picture
	.loc 1 2647 0
	movq	img(%rip), %rax	# img, img.1429
	movl	-28(%rbp), %edx	# prevtype, tmp182
	movl	%edx, 24(%rax)	# tmp182, img.1429_113->type
	.loc 1 2648 0
	movq	$PicParSet, active_pps(%rip)	#, active_pps
	.loc 1 2649 0
	movq	img(%rip), %rax	# img, img.1430
	movl	-32(%rbp), %edx	# rd_qp, tmp183
	movl	%edx, 40(%rax)	# tmp183, img.1430_114->qp
	.loc 1 2650 0
	movl	-44(%rbp), %eax	# previntras, tmp184
	movl	%eax, intras(%rip)	# tmp184, intras
	jmp	.L513	#
.L538:
	.loc 1 2652 0
	movq	img(%rip), %rax	# img, img.1431
	movl	71804(%rax), %eax	# img.1431_115->rd_pass, D.13188
	cmpl	$1, %eax	#, D.13188
	jne	.L513	#,
	.loc 1 2654 0
	movq	enc_frame_picture2(%rip), %rax	# enc_frame_picture2, enc_frame_picture2.1432
	movq	%rax, enc_picture(%rip)	# enc_frame_picture2.1432, enc_picture
	.loc 1 2655 0
	movq	img(%rip), %rax	# img, img.1433
	movl	-28(%rbp), %edx	# prevtype, tmp185
	movl	%edx, 24(%rax)	# tmp185, img.1433_118->type
	.loc 1 2656 0
	movq	-24(%rbp), %rax	# sec_pps, tmp186
	movq	%rax, active_pps(%rip)	# tmp186, active_pps
	.loc 1 2657 0
	movq	img(%rip), %rax	# img, img.1434
	movl	-36(%rbp), %edx	# second_qp, tmp187
	movl	%edx, 40(%rax)	# tmp187, img.1434_119->qp
	.loc 1 2658 0
	movl	-44(%rbp), %eax	# previntras, tmp188
	movl	%eax, intras(%rip)	# tmp188, intras
.L513:
	.loc 1 2660 0
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	rdPictureCoding, .-rdPictureCoding
	.local	consecutive_non_reference_pictures.6834
	.comm	consecutive_non_reference_pictures.6834,4,4
	.local	prev_frame_no.6833
	.comm	prev_frame_no.6833,4,4
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	858993459
	.long	1072378675
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 8
.LC9:
	.long	0
	.long	1076101120
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/time.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/sys/timeb.h"
	.file 6 "defines.h"
	.file 7 "parsetcommon.h"
	.file 8 "global.h"
	.file 9 "mbuffer.h"
	.file 10 "nalucommon.h"
	.file 11 "nalu.h"
	.file 12 "ratectl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x412c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF865
	.byte	0x1
	.long	.LASF866
	.long	.LASF867
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	0x34
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x94
	.long	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x7
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x4b
	.long	0x7c
	.uleb128 0x6
	.long	.LASF12
	.byte	0x4
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x8
	.long	0x34
	.uleb128 0x9
	.long	.LASF194
	.byte	0x10
	.byte	0x5
	.byte	0x1f
	.long	0x108
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x21
	.long	0x9b
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x22
	.long	0x42
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x23
	.long	0x57
	.byte	0xa
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x24
	.long	0x57
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF20
	.byte	0x6
	.byte	0x1e
	.long	0x3b
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.byte	0x2a
	.long	0x128
	.uleb128 0xc
	.long	.LASF21
	.sleb128 0
	.uleb128 0xc
	.long	.LASF22
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x7
	.byte	0x2d
	.long	0x113
	.uleb128 0xd
	.value	0x19c
	.byte	0x7
	.byte	0x30
	.long	0x1ba
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x32
	.long	0x49
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x33
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x34
	.long	0x49
	.byte	0x8
	.uleb128 0xa
	.long	.LASF27
	.byte	0x7
	.byte	0x35
	.long	0x1ba
	.byte	0xc
	.uleb128 0xa
	.long	.LASF28
	.byte	0x7
	.byte	0x36
	.long	0x1ba
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF29
	.byte	0x7
	.byte	0x37
	.long	0x1ba
	.value	0x10c
	.uleb128 0xe
	.long	.LASF30
	.byte	0x7
	.byte	0x38
	.long	0x49
	.value	0x18c
	.uleb128 0xe
	.long	.LASF31
	.byte	0x7
	.byte	0x39
	.long	0x49
	.value	0x190
	.uleb128 0xe
	.long	.LASF32
	.byte	0x7
	.byte	0x3a
	.long	0x49
	.value	0x194
	.uleb128 0xe
	.long	.LASF33
	.byte	0x7
	.byte	0x3b
	.long	0x49
	.value	0x198
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x1ca
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x7
	.byte	0x3c
	.long	0x133
	.uleb128 0xd
	.value	0x3b4
	.byte	0x7
	.byte	0x3f
	.long	0x376
	.uleb128 0xa
	.long	.LASF35
	.byte	0x7
	.byte	0x41
	.long	0x128
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x7
	.byte	0x42
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF37
	.byte	0x7
	.byte	0x43
	.long	0x49
	.byte	0x8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x7
	.byte	0x44
	.long	0x49
	.byte	0xc
	.uleb128 0xa
	.long	.LASF39
	.byte	0x7
	.byte	0x45
	.long	0x128
	.byte	0x10
	.uleb128 0xa
	.long	.LASF40
	.byte	0x7
	.byte	0x46
	.long	0x128
	.byte	0x14
	.uleb128 0xa
	.long	.LASF41
	.byte	0x7
	.byte	0x47
	.long	0x128
	.byte	0x18
	.uleb128 0xa
	.long	.LASF42
	.byte	0x7
	.byte	0x48
	.long	0x49
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF43
	.byte	0x7
	.byte	0x49
	.long	0x128
	.byte	0x20
	.uleb128 0xa
	.long	.LASF44
	.byte	0x7
	.byte	0x4a
	.long	0x128
	.byte	0x24
	.uleb128 0xa
	.long	.LASF45
	.byte	0x7
	.byte	0x4b
	.long	0x49
	.byte	0x28
	.uleb128 0xa
	.long	.LASF46
	.byte	0x7
	.byte	0x4c
	.long	0x49
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF47
	.byte	0x7
	.byte	0x4d
	.long	0x49
	.byte	0x30
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x4e
	.long	0x128
	.byte	0x34
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x4f
	.long	0x49
	.byte	0x38
	.uleb128 0xa
	.long	.LASF50
	.byte	0x7
	.byte	0x50
	.long	0x49
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7
	.byte	0x51
	.long	0x128
	.byte	0x40
	.uleb128 0xa
	.long	.LASF52
	.byte	0x7
	.byte	0x52
	.long	0x49
	.byte	0x44
	.uleb128 0xa
	.long	.LASF53
	.byte	0x7
	.byte	0x53
	.long	0x49
	.byte	0x48
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x54
	.long	0x128
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.byte	0x55
	.long	0x128
	.byte	0x50
	.uleb128 0xa
	.long	.LASF56
	.byte	0x7
	.byte	0x56
	.long	0x1ca
	.byte	0x54
	.uleb128 0xe
	.long	.LASF57
	.byte	0x7
	.byte	0x57
	.long	0x128
	.value	0x1f0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x7
	.byte	0x58
	.long	0x1ca
	.value	0x1f4
	.uleb128 0xe
	.long	.LASF59
	.byte	0x7
	.byte	0x5a
	.long	0x128
	.value	0x390
	.uleb128 0xe
	.long	.LASF60
	.byte	0x7
	.byte	0x5b
	.long	0x128
	.value	0x394
	.uleb128 0xe
	.long	.LASF61
	.byte	0x7
	.byte	0x5c
	.long	0x128
	.value	0x398
	.uleb128 0xe
	.long	.LASF62
	.byte	0x7
	.byte	0x5d
	.long	0x49
	.value	0x39c
	.uleb128 0xe
	.long	.LASF63
	.byte	0x7
	.byte	0x5e
	.long	0x49
	.value	0x3a0
	.uleb128 0xe
	.long	.LASF64
	.byte	0x7
	.byte	0x5f
	.long	0x49
	.value	0x3a4
	.uleb128 0xe
	.long	.LASF65
	.byte	0x7
	.byte	0x60
	.long	0x49
	.value	0x3a8
	.uleb128 0xe
	.long	.LASF66
	.byte	0x7
	.byte	0x61
	.long	0x49
	.value	0x3ac
	.uleb128 0xe
	.long	.LASF67
	.byte	0x7
	.byte	0x62
	.long	0x49
	.value	0x3b0
	.byte	0
	.uleb128 0x6
	.long	.LASF68
	.byte	0x7
	.byte	0x63
	.long	0x1d5
	.uleb128 0xf
	.byte	0xf0
	.byte	0x7
	.byte	0x67
	.long	0x4f2
	.uleb128 0xa
	.long	.LASF69
	.byte	0x7
	.byte	0x69
	.long	0x128
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x7
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF71
	.byte	0x7
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0xa
	.long	.LASF72
	.byte	0x7
	.byte	0x6c
	.long	0x128
	.byte	0xc
	.uleb128 0xa
	.long	.LASF73
	.byte	0x7
	.byte	0x6e
	.long	0x128
	.byte	0x10
	.uleb128 0xa
	.long	.LASF74
	.byte	0x7
	.byte	0x6f
	.long	0x128
	.byte	0x14
	.uleb128 0xa
	.long	.LASF75
	.byte	0x7
	.byte	0x70
	.long	0x4f2
	.byte	0x18
	.uleb128 0xa
	.long	.LASF76
	.byte	0x7
	.byte	0x73
	.long	0x128
	.byte	0x38
	.uleb128 0xa
	.long	.LASF77
	.byte	0x7
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF78
	.byte	0x7
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0xa
	.long	.LASF79
	.byte	0x7
	.byte	0x77
	.long	0x502
	.byte	0x44
	.uleb128 0xa
	.long	.LASF80
	.byte	0x7
	.byte	0x79
	.long	0x502
	.byte	0x64
	.uleb128 0xa
	.long	.LASF81
	.byte	0x7
	.byte	0x7a
	.long	0x502
	.byte	0x84
	.uleb128 0xa
	.long	.LASF82
	.byte	0x7
	.byte	0x7c
	.long	0x128
	.byte	0xa4
	.uleb128 0xa
	.long	.LASF83
	.byte	0x7
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF84
	.byte	0x7
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0xa
	.long	.LASF85
	.byte	0x7
	.byte	0x80
	.long	0x512
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF86
	.byte	0x7
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF87
	.byte	0x7
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0xa
	.long	.LASF88
	.byte	0x7
	.byte	0x84
	.long	0x128
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF89
	.byte	0x7
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0xa
	.long	.LASF90
	.byte	0x7
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0xa
	.long	.LASF91
	.byte	0x7
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0xa
	.long	.LASF92
	.byte	0x7
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0xa
	.long	.LASF93
	.byte	0x7
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0xa
	.long	.LASF94
	.byte	0x7
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0xa
	.long	.LASF95
	.byte	0x7
	.byte	0x8d
	.long	0x128
	.byte	0xdc
	.uleb128 0xa
	.long	.LASF96
	.byte	0x7
	.byte	0x8e
	.long	0x128
	.byte	0xe0
	.uleb128 0xa
	.long	.LASF97
	.byte	0x7
	.byte	0x8f
	.long	0x128
	.byte	0xe4
	.uleb128 0xa
	.long	.LASF98
	.byte	0x7
	.byte	0x90
	.long	0x128
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x502
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x512
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x6
	.long	.LASF99
	.byte	0x7
	.byte	0x91
	.long	0x381
	.uleb128 0xd
	.value	0x854
	.byte	0x7
	.byte	0x95
	.long	0x6df
	.uleb128 0xa
	.long	.LASF69
	.byte	0x7
	.byte	0x97
	.long	0x128
	.byte	0
	.uleb128 0xa
	.long	.LASF100
	.byte	0x7
	.byte	0x99
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF101
	.byte	0x7
	.byte	0x9a
	.long	0x128
	.byte	0x8
	.uleb128 0xa
	.long	.LASF102
	.byte	0x7
	.byte	0x9b
	.long	0x128
	.byte	0xc
	.uleb128 0xa
	.long	.LASF103
	.byte	0x7
	.byte	0x9c
	.long	0x128
	.byte	0x10
	.uleb128 0xa
	.long	.LASF104
	.byte	0x7
	.byte	0x9d
	.long	0x128
	.byte	0x14
	.uleb128 0xa
	.long	.LASF105
	.byte	0x7
	.byte	0x9e
	.long	0x49
	.byte	0x18
	.uleb128 0xa
	.long	.LASF71
	.byte	0x7
	.byte	0x9f
	.long	0x49
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF106
	.byte	0x7
	.byte	0xa0
	.long	0x49
	.byte	0x20
	.uleb128 0xa
	.long	.LASF107
	.byte	0x7
	.byte	0xa2
	.long	0x128
	.byte	0x24
	.uleb128 0xa
	.long	.LASF108
	.byte	0x7
	.byte	0xa3
	.long	0x4f2
	.byte	0x28
	.uleb128 0xa
	.long	.LASF109
	.byte	0x7
	.byte	0xa5
	.long	0x49
	.byte	0x48
	.uleb128 0xa
	.long	.LASF110
	.byte	0x7
	.byte	0xa6
	.long	0x49
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF111
	.byte	0x7
	.byte	0xa7
	.long	0x49
	.byte	0x50
	.uleb128 0xa
	.long	.LASF112
	.byte	0x7
	.byte	0xa8
	.long	0x49
	.byte	0x54
	.uleb128 0xa
	.long	.LASF113
	.byte	0x7
	.byte	0xaa
	.long	0x49
	.byte	0x58
	.uleb128 0xa
	.long	.LASF114
	.byte	0x7
	.byte	0xac
	.long	0x128
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF115
	.byte	0x7
	.byte	0xad
	.long	0x34
	.byte	0x60
	.uleb128 0xa
	.long	.LASF116
	.byte	0x7
	.byte	0xae
	.long	0x34
	.byte	0x64
	.uleb128 0xa
	.long	.LASF117
	.byte	0x7
	.byte	0xaf
	.long	0x49
	.byte	0x68
	.uleb128 0xa
	.long	.LASF118
	.byte	0x7
	.byte	0xb1
	.long	0x6df
	.byte	0x6c
	.uleb128 0xe
	.long	.LASF119
	.byte	0x7
	.byte	0xb2
	.long	0x49
	.value	0x46c
	.uleb128 0xe
	.long	.LASF120
	.byte	0x7
	.byte	0xb3
	.long	0x128
	.value	0x470
	.uleb128 0xe
	.long	.LASF121
	.byte	0x7
	.byte	0xb4
	.long	0x49
	.value	0x474
	.uleb128 0xe
	.long	.LASF122
	.byte	0x7
	.byte	0xb5
	.long	0x49
	.value	0x478
	.uleb128 0xe
	.long	.LASF123
	.byte	0x7
	.byte	0xb6
	.long	0x128
	.value	0x47c
	.uleb128 0xe
	.long	.LASF124
	.byte	0x7
	.byte	0xb8
	.long	0x128
	.value	0x480
	.uleb128 0xe
	.long	.LASF125
	.byte	0x7
	.byte	0xb9
	.long	0x128
	.value	0x484
	.uleb128 0xe
	.long	.LASF126
	.byte	0x7
	.byte	0xba
	.long	0x128
	.value	0x488
	.uleb128 0xe
	.long	.LASF127
	.byte	0x7
	.byte	0xbb
	.long	0x49
	.value	0x48c
	.uleb128 0xe
	.long	.LASF128
	.byte	0x7
	.byte	0xbc
	.long	0x49
	.value	0x490
	.uleb128 0xe
	.long	.LASF129
	.byte	0x7
	.byte	0xbd
	.long	0x49
	.value	0x494
	.uleb128 0xe
	.long	.LASF130
	.byte	0x7
	.byte	0xbe
	.long	0x49
	.value	0x498
	.uleb128 0xe
	.long	.LASF131
	.byte	0x7
	.byte	0xbf
	.long	0x128
	.value	0x49c
	.uleb128 0xe
	.long	.LASF132
	.byte	0x7
	.byte	0xc0
	.long	0x376
	.value	0x4a0
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x6ef
	.uleb128 0x5
	.long	0x75
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.long	.LASF133
	.byte	0x7
	.byte	0xc1
	.long	0x523
	.uleb128 0x6
	.long	.LASF134
	.byte	0x8
	.byte	0x3e
	.long	0xa6
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x70
	.long	0x720
	.uleb128 0xc
	.long	.LASF135
	.sleb128 0
	.uleb128 0xc
	.long	.LASF136
	.sleb128 1
	.uleb128 0xc
	.long	.LASF137
	.sleb128 2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0x9b
	.long	0x75f
	.uleb128 0xc
	.long	.LASF138
	.sleb128 0
	.uleb128 0xc
	.long	.LASF139
	.sleb128 1
	.uleb128 0xc
	.long	.LASF140
	.sleb128 2
	.uleb128 0xc
	.long	.LASF141
	.sleb128 3
	.uleb128 0xc
	.long	.LASF142
	.sleb128 4
	.uleb128 0xc
	.long	.LASF143
	.sleb128 5
	.uleb128 0xc
	.long	.LASF144
	.sleb128 6
	.uleb128 0xc
	.long	.LASF145
	.sleb128 7
	.uleb128 0xc
	.long	.LASF146
	.sleb128 8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0xba
	.long	0x77a
	.uleb128 0xc
	.long	.LASF147
	.sleb128 0
	.uleb128 0xc
	.long	.LASF148
	.sleb128 1
	.uleb128 0xc
	.long	.LASF149
	.sleb128 2
	.byte	0
	.uleb128 0x6
	.long	.LASF150
	.byte	0x8
	.byte	0xbe
	.long	0x75f
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.byte	0xc1
	.long	0x7ac
	.uleb128 0xc
	.long	.LASF151
	.sleb128 0
	.uleb128 0xc
	.long	.LASF152
	.sleb128 1
	.uleb128 0xc
	.long	.LASF153
	.sleb128 2
	.uleb128 0xc
	.long	.LASF154
	.sleb128 3
	.uleb128 0xc
	.long	.LASF155
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.byte	0x68
	.byte	0x8
	.byte	0xcf
	.long	0x89c
	.uleb128 0xa
	.long	.LASF156
	.byte	0x8
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xa
	.long	.LASF157
	.byte	0x8
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF158
	.byte	0x8
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xa
	.long	.LASF159
	.byte	0x8
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xa
	.long	.LASF160
	.byte	0x8
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xa
	.long	.LASF161
	.byte	0x8
	.byte	0xd5
	.long	0x512
	.byte	0x18
	.uleb128 0xa
	.long	.LASF162
	.byte	0x8
	.byte	0xd6
	.long	0x8e
	.byte	0x20
	.uleb128 0xa
	.long	.LASF163
	.byte	0x8
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xa
	.long	.LASF164
	.byte	0x8
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF165
	.byte	0x8
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xa
	.long	.LASF166
	.byte	0x8
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xa
	.long	.LASF167
	.byte	0x8
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xa
	.long	.LASF168
	.byte	0x8
	.byte	0xdd
	.long	0x512
	.byte	0x40
	.uleb128 0xa
	.long	.LASF169
	.byte	0x8
	.byte	0xde
	.long	0x8e
	.byte	0x48
	.uleb128 0x10
	.string	"C"
	.byte	0x8
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0x10
	.string	"CS"
	.byte	0x8
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0x10
	.string	"E"
	.byte	0x8
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0x10
	.string	"ES"
	.byte	0x8
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0x10
	.string	"B"
	.byte	0x8
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0x10
	.string	"BS"
	.byte	0x8
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.long	.LASF170
	.byte	0x8
	.byte	0xe2
	.long	0x7ac
	.uleb128 0x6
	.long	.LASF171
	.byte	0x8
	.byte	0xe4
	.long	0x8b2
	.uleb128 0x7
	.byte	0x8
	.long	0x89c
	.uleb128 0xf
	.byte	0x10
	.byte	0x8
	.byte	0xe7
	.long	0x8e5
	.uleb128 0xa
	.long	.LASF172
	.byte	0x8
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0x10
	.string	"MPS"
	.byte	0x8
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xa
	.long	.LASF173
	.byte	0x8
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF174
	.byte	0x8
	.byte	0xee
	.long	0x8b8
	.uleb128 0x11
	.value	0x5e0
	.byte	0x8
	.value	0x102
	.long	0x95c
	.uleb128 0x12
	.long	.LASF175
	.byte	0x8
	.value	0x104
	.long	0x95c
	.byte	0
	.uleb128 0x13
	.long	.LASF176
	.byte	0x8
	.value	0x105
	.long	0x972
	.value	0x210
	.uleb128 0x13
	.long	.LASF177
	.byte	0x8
	.value	0x106
	.long	0x988
	.value	0x330
	.uleb128 0x13
	.long	.LASF178
	.byte	0x8
	.value	0x107
	.long	0x99e
	.value	0x470
	.uleb128 0x13
	.long	.LASF179
	.byte	0x8
	.value	0x108
	.long	0x9b4
	.value	0x530
	.uleb128 0x13
	.long	.LASF180
	.byte	0x8
	.value	0x109
	.long	0x9b4
	.value	0x570
	.uleb128 0x13
	.long	.LASF181
	.byte	0x8
	.value	0x10a
	.long	0x9c4
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x972
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x988
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x99e
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x9b4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x9c4
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0x9d4
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	.LASF182
	.byte	0x8
	.value	0x10c
	.long	0x8f0
	.uleb128 0x11
	.value	0x2f60
	.byte	0x8
	.value	0x119
	.long	0xa74
	.uleb128 0x12
	.long	.LASF183
	.byte	0x8
	.value	0x11b
	.long	0xa74
	.byte	0
	.uleb128 0x12
	.long	.LASF184
	.byte	0x8
	.value	0x11c
	.long	0x9b4
	.byte	0x20
	.uleb128 0x12
	.long	.LASF185
	.byte	0x8
	.value	0x11d
	.long	0xa84
	.byte	0x60
	.uleb128 0x13
	.long	.LASF186
	.byte	0x8
	.value	0x11e
	.long	0xa9a
	.value	0x120
	.uleb128 0x13
	.long	.LASF187
	.byte	0x8
	.value	0x11f
	.long	0xab0
	.value	0x3a0
	.uleb128 0x13
	.long	.LASF188
	.byte	0x8
	.value	0x120
	.long	0xab0
	.value	0xd00
	.uleb128 0x13
	.long	.LASF189
	.byte	0x8
	.value	0x121
	.long	0xac6
	.value	0x1660
	.uleb128 0x13
	.long	.LASF190
	.byte	0x8
	.value	0x122
	.long	0xac6
	.value	0x1980
	.uleb128 0x13
	.long	.LASF191
	.byte	0x8
	.value	0x123
	.long	0xab0
	.value	0x1ca0
	.uleb128 0x13
	.long	.LASF192
	.byte	0x8
	.value	0x124
	.long	0xab0
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0xa84
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0xa9a
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0xab0
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0xac6
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x8e5
	.long	0xadc
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.long	.LASF193
	.byte	0x8
	.value	0x125
	.long	0x9e0
	.uleb128 0x15
	.long	.LASF195
	.byte	0x10
	.byte	0x8
	.value	0x134
	.long	0xb1d
	.uleb128 0x12
	.long	.LASF196
	.byte	0x8
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF197
	.byte	0x8
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF198
	.byte	0x8
	.value	0x138
	.long	0xb1d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xae8
	.uleb128 0x14
	.long	.LASF199
	.byte	0x8
	.value	0x139
	.long	0xae8
	.uleb128 0x15
	.long	.LASF200
	.byte	0x20
	.byte	0x8
	.value	0x13c
	.long	0xb8b
	.uleb128 0x12
	.long	.LASF201
	.byte	0x8
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF202
	.byte	0x8
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF203
	.byte	0x8
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.long	.LASF204
	.byte	0x8
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF205
	.byte	0x8
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF198
	.byte	0x8
	.value	0x143
	.long	0xb8b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb2f
	.uleb128 0x14
	.long	.LASF206
	.byte	0x8
	.value	0x144
	.long	0xb2f
	.uleb128 0x15
	.long	.LASF207
	.byte	0x30
	.byte	0x8
	.value	0x147
	.long	0xc2b
	.uleb128 0x12
	.long	.LASF208
	.byte	0x8
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF209
	.byte	0x8
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF210
	.byte	0x8
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x16
	.string	"len"
	.byte	0x8
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x16
	.string	"inf"
	.byte	0x8
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF211
	.byte	0x8
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0x12
	.long	.LASF212
	.byte	0x8
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x16
	.string	"k"
	.byte	0x8
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF213
	.byte	0x8
	.value	0x158
	.long	0xc45
	.byte	0x20
	.uleb128 0x12
	.long	.LASF214
	.byte	0x8
	.value	0x15a
	.long	0xc61
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.long	0xc45
	.uleb128 0x18
	.long	0x34
	.uleb128 0x18
	.long	0x34
	.uleb128 0x18
	.long	0x8e
	.uleb128 0x18
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc2b
	.uleb128 0x17
	.long	0xc5b
	.uleb128 0x18
	.long	0xc5b
	.uleb128 0x18
	.long	0x8a7
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb9d
	.uleb128 0x7
	.byte	0x8
	.long	0xc4b
	.uleb128 0x14
	.long	.LASF215
	.byte	0x8
	.value	0x15c
	.long	0xb9d
	.uleb128 0x19
	.long	.LASF216
	.value	0x278
	.byte	0x8
	.value	0x15f
	.long	0xeed
	.uleb128 0x12
	.long	.LASF217
	.byte	0x8
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF218
	.byte	0x8
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF219
	.byte	0x8
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x16
	.string	"qp"
	.byte	0x8
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF220
	.byte	0x8
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF221
	.byte	0x8
	.value	0x166
	.long	0x4f2
	.byte	0x14
	.uleb128 0x12
	.long	.LASF222
	.byte	0x8
	.value	0x168
	.long	0xeed
	.byte	0x38
	.uleb128 0x12
	.long	.LASF223
	.byte	0x8
	.value	0x169
	.long	0xeed
	.byte	0x40
	.uleb128 0x12
	.long	.LASF224
	.byte	0x8
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x16
	.string	"mvd"
	.byte	0x8
	.value	0x16c
	.long	0xef3
	.byte	0x4c
	.uleb128 0x13
	.long	.LASF225
	.byte	0x8
	.value	0x16d
	.long	0xf15
	.value	0x14c
	.uleb128 0x13
	.long	.LASF226
	.byte	0x8
	.value	0x16e
	.long	0xf15
	.value	0x18c
	.uleb128 0x1a
	.string	"cbp"
	.byte	0x8
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x13
	.long	.LASF227
	.byte	0x8
	.value	0x170
	.long	0x6fa
	.value	0x1d0
	.uleb128 0x13
	.long	.LASF228
	.byte	0x8
	.value	0x171
	.long	0xf25
	.value	0x1d8
	.uleb128 0x13
	.long	.LASF229
	.byte	0x8
	.value	0x172
	.long	0xf25
	.value	0x1e8
	.uleb128 0x13
	.long	.LASF230
	.byte	0x8
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x13
	.long	.LASF231
	.byte	0x8
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x13
	.long	.LASF232
	.byte	0x8
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x13
	.long	.LASF233
	.byte	0x8
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x13
	.long	.LASF234
	.byte	0x8
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x13
	.long	.LASF235
	.byte	0x8
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x13
	.long	.LASF236
	.byte	0x8
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x13
	.long	.LASF237
	.byte	0x8
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x13
	.long	.LASF238
	.byte	0x8
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x13
	.long	.LASF239
	.byte	0x8
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x13
	.long	.LASF240
	.byte	0x8
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x13
	.long	.LASF241
	.byte	0x8
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x13
	.long	.LASF242
	.byte	0x8
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x13
	.long	.LASF243
	.byte	0x8
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x13
	.long	.LASF244
	.byte	0x8
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x13
	.long	.LASF245
	.byte	0x8
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x13
	.long	.LASF246
	.byte	0x8
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x13
	.long	.LASF247
	.byte	0x8
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x13
	.long	.LASF248
	.byte	0x8
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x13
	.long	.LASF249
	.byte	0x8
	.value	0x18a
	.long	0xbf
	.value	0x248
	.uleb128 0x13
	.long	.LASF250
	.byte	0x8
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x13
	.long	.LASF251
	.byte	0x8
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x13
	.long	.LASF252
	.byte	0x8
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x13
	.long	.LASF253
	.byte	0x8
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x13
	.long	.LASF254
	.byte	0x8
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x13
	.long	.LASF255
	.byte	0x8
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x13
	.long	.LASF256
	.byte	0x8
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x13
	.long	.LASF257
	.byte	0x8
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x13
	.long	.LASF258
	.byte	0x8
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc73
	.uleb128 0x4
	.long	0x34
	.long	0xf15
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xf25
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xf35
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF259
	.byte	0x8
	.value	0x196
	.long	0xc73
	.uleb128 0x1b
	.byte	0x30
	.byte	0x8
	.value	0x19b
	.long	0xfda
	.uleb128 0x12
	.long	.LASF260
	.byte	0x8
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF261
	.byte	0x8
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF262
	.byte	0x8
	.value	0x19f
	.long	0x108
	.byte	0x8
	.uleb128 0x12
	.long	.LASF263
	.byte	0x8
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF264
	.byte	0x8
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF265
	.byte	0x8
	.value	0x1a2
	.long	0x108
	.byte	0x14
	.uleb128 0x12
	.long	.LASF266
	.byte	0x8
	.value	0x1a4
	.long	0x108
	.byte	0x15
	.uleb128 0x12
	.long	.LASF267
	.byte	0x8
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.long	.LASF268
	.byte	0x8
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF269
	.byte	0x8
	.value	0x1a8
	.long	0x512
	.byte	0x20
	.uleb128 0x12
	.long	.LASF270
	.byte	0x8
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	.LASF271
	.byte	0x8
	.value	0x1ab
	.long	0xf41
	.uleb128 0x15
	.long	.LASF272
	.byte	0x78
	.byte	0x8
	.value	0x1ae
	.long	0x101b
	.uleb128 0x12
	.long	.LASF273
	.byte	0x8
	.value	0x1b1
	.long	0x101b
	.byte	0
	.uleb128 0x12
	.long	.LASF274
	.byte	0x8
	.value	0x1b2
	.long	0x89c
	.byte	0x8
	.uleb128 0x12
	.long	.LASF275
	.byte	0x8
	.value	0x1b4
	.long	0x1041
	.byte	0x70
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xfda
	.uleb128 0x1c
	.long	0x34
	.long	0x1035
	.uleb128 0x18
	.long	0x1035
	.uleb128 0x18
	.long	0x103b
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xc67
	.uleb128 0x7
	.byte	0x8
	.long	0xfe6
	.uleb128 0x7
	.byte	0x8
	.long	0x1021
	.uleb128 0x14
	.long	.LASF276
	.byte	0x8
	.value	0x1b8
	.long	0xfe6
	.uleb128 0x1b
	.byte	0x98
	.byte	0x8
	.value	0x1bb
	.long	0x1160
	.uleb128 0x12
	.long	.LASF277
	.byte	0x8
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x16
	.string	"qp"
	.byte	0x8
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF278
	.byte	0x8
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.long	.LASF279
	.byte	0x8
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF280
	.byte	0x8
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF281
	.byte	0x8
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0x12
	.long	.LASF282
	.byte	0x8
	.value	0x1c3
	.long	0x1160
	.byte	0x18
	.uleb128 0x12
	.long	.LASF283
	.byte	0x8
	.value	0x1c4
	.long	0x1166
	.byte	0x20
	.uleb128 0x12
	.long	.LASF284
	.byte	0x8
	.value	0x1c5
	.long	0x116c
	.byte	0x28
	.uleb128 0x12
	.long	.LASF285
	.byte	0x8
	.value	0x1c8
	.long	0x1172
	.byte	0x30
	.uleb128 0x12
	.long	.LASF286
	.byte	0x8
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0x12
	.long	.LASF287
	.byte	0x8
	.value	0x1cb
	.long	0x8e
	.byte	0x40
	.uleb128 0x12
	.long	.LASF288
	.byte	0x8
	.value	0x1cc
	.long	0x8e
	.byte	0x48
	.uleb128 0x12
	.long	.LASF289
	.byte	0x8
	.value	0x1cd
	.long	0x8e
	.byte	0x50
	.uleb128 0x12
	.long	.LASF290
	.byte	0x8
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0x12
	.long	.LASF291
	.byte	0x8
	.value	0x1cf
	.long	0x8e
	.byte	0x60
	.uleb128 0x12
	.long	.LASF292
	.byte	0x8
	.value	0x1d0
	.long	0x8e
	.byte	0x68
	.uleb128 0x12
	.long	.LASF293
	.byte	0x8
	.value	0x1d1
	.long	0x8e
	.byte	0x70
	.uleb128 0x12
	.long	.LASF294
	.byte	0x8
	.value	0x1d3
	.long	0x1187
	.byte	0x78
	.uleb128 0x12
	.long	.LASF295
	.byte	0x8
	.value	0x1d5
	.long	0x118d
	.byte	0x80
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1047
	.uleb128 0x7
	.byte	0x8
	.long	0x9d4
	.uleb128 0x7
	.byte	0x8
	.long	0xadc
	.uleb128 0x7
	.byte	0x8
	.long	0xb23
	.uleb128 0x1c
	.long	0x128
	.long	0x1187
	.uleb128 0x18
	.long	0x34
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1178
	.uleb128 0x4
	.long	0x34
	.long	0x11a3
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	.LASF296
	.byte	0x8
	.value	0x1d7
	.long	0x1053
	.uleb128 0x11
	.value	0x338
	.byte	0x8
	.value	0x1db
	.long	0x1219
	.uleb128 0x12
	.long	.LASF297
	.byte	0x8
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF298
	.byte	0x8
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF299
	.byte	0x8
	.value	0x1df
	.long	0x1219
	.byte	0x8
	.uleb128 0x13
	.long	.LASF300
	.byte	0x8
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x13
	.long	.LASF301
	.byte	0x8
	.value	0x1e1
	.long	0xb8
	.value	0x32c
	.uleb128 0x13
	.long	.LASF302
	.byte	0x8
	.value	0x1e2
	.long	0xb8
	.value	0x330
	.uleb128 0x13
	.long	.LASF303
	.byte	0x8
	.value	0x1e3
	.long	0xb8
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0x1229
	.long	0x1229
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x11a3
	.uleb128 0x14
	.long	.LASF304
	.byte	0x8
	.value	0x1e4
	.long	0x11af
	.uleb128 0x1b
	.byte	0x38
	.byte	0x8
	.value	0x276
	.long	0x12a0
	.uleb128 0x12
	.long	.LASF305
	.byte	0x8
	.value	0x278
	.long	0x12a0
	.byte	0
	.uleb128 0x12
	.long	.LASF306
	.byte	0x8
	.value	0x279
	.long	0x12a6
	.byte	0x8
	.uleb128 0x12
	.long	.LASF307
	.byte	0x8
	.value	0x27a
	.long	0x12b8
	.byte	0x10
	.uleb128 0x12
	.long	.LASF308
	.byte	0x8
	.value	0x27b
	.long	0x12a6
	.byte	0x18
	.uleb128 0x12
	.long	.LASF309
	.byte	0x8
	.value	0x27c
	.long	0x12ac
	.byte	0x20
	.uleb128 0x12
	.long	.LASF310
	.byte	0x8
	.value	0x27d
	.long	0x12be
	.byte	0x28
	.uleb128 0x12
	.long	.LASF311
	.byte	0x8
	.value	0x27e
	.long	0x12be
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x8e
	.uleb128 0x7
	.byte	0x8
	.long	0x12ac
	.uleb128 0x7
	.byte	0x8
	.long	0x12b2
	.uleb128 0x7
	.byte	0x8
	.long	0x42
	.uleb128 0x7
	.byte	0x8
	.long	0x12a6
	.uleb128 0x7
	.byte	0x8
	.long	0x512
	.uleb128 0x14
	.long	.LASF312
	.byte	0x8
	.value	0x27f
	.long	0x123b
	.uleb128 0x1b
	.byte	0x48
	.byte	0x8
	.value	0x283
	.long	0x1376
	.uleb128 0x12
	.long	.LASF313
	.byte	0x8
	.value	0x285
	.long	0xb8
	.byte	0
	.uleb128 0x12
	.long	.LASF314
	.byte	0x8
	.value	0x286
	.long	0xb8
	.byte	0x4
	.uleb128 0x12
	.long	.LASF315
	.byte	0x8
	.value	0x287
	.long	0xb8
	.byte	0x8
	.uleb128 0x12
	.long	.LASF316
	.byte	0x8
	.value	0x288
	.long	0xb8
	.byte	0xc
	.uleb128 0x12
	.long	.LASF317
	.byte	0x8
	.value	0x289
	.long	0xb8
	.byte	0x10
	.uleb128 0x12
	.long	.LASF318
	.byte	0x8
	.value	0x28a
	.long	0xb8
	.byte	0x14
	.uleb128 0x12
	.long	.LASF319
	.byte	0x8
	.value	0x28b
	.long	0x1376
	.byte	0x18
	.uleb128 0x12
	.long	.LASF320
	.byte	0x8
	.value	0x28c
	.long	0x1376
	.byte	0x24
	.uleb128 0x12
	.long	.LASF321
	.byte	0x8
	.value	0x28d
	.long	0x1376
	.byte	0x30
	.uleb128 0x12
	.long	.LASF322
	.byte	0x8
	.value	0x28e
	.long	0xb8
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF323
	.byte	0x8
	.value	0x28f
	.long	0xb8
	.byte	0x40
	.uleb128 0x12
	.long	.LASF324
	.byte	0x8
	.value	0x290
	.long	0xb8
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.long	0xb8
	.long	0x1386
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	.LASF325
	.byte	0x8
	.value	0x291
	.long	0x12d0
	.uleb128 0x11
	.value	0xe08
	.byte	0x8
	.value	0x295
	.long	0x1b9a
	.uleb128 0x12
	.long	.LASF326
	.byte	0x8
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF327
	.byte	0x8
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF328
	.byte	0x8
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x16
	.string	"qp0"
	.byte	0x8
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x16
	.string	"qpN"
	.byte	0x8
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF329
	.byte	0x8
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0x12
	.long	.LASF330
	.byte	0x8
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.long	.LASF331
	.byte	0x8
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF332
	.byte	0x8
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0x12
	.long	.LASF119
	.byte	0x8
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.long	.LASF333
	.byte	0x8
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0x12
	.long	.LASF334
	.byte	0x8
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF335
	.byte	0x8
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0x12
	.long	.LASF336
	.byte	0x8
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0x12
	.long	.LASF337
	.byte	0x8
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0x12
	.long	.LASF338
	.byte	0x8
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF339
	.byte	0x8
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0x12
	.long	.LASF340
	.byte	0x8
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0x12
	.long	.LASF341
	.byte	0x8
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.long	.LASF342
	.byte	0x8
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF343
	.byte	0x8
	.value	0x2b3
	.long	0x1b9a
	.byte	0x50
	.uleb128 0x12
	.long	.LASF344
	.byte	0x8
	.value	0x2b4
	.long	0x1b9a
	.byte	0x90
	.uleb128 0x12
	.long	.LASF345
	.byte	0x8
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0x12
	.long	.LASF346
	.byte	0x8
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0x12
	.long	.LASF347
	.byte	0x8
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0x12
	.long	.LASF348
	.byte	0x8
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0x12
	.long	.LASF349
	.byte	0x8
	.value	0x2b9
	.long	0x1bb0
	.byte	0xe0
	.uleb128 0x13
	.long	.LASF350
	.byte	0x8
	.value	0x2ba
	.long	0x1bb0
	.value	0x1a8
	.uleb128 0x13
	.long	.LASF351
	.byte	0x8
	.value	0x2bb
	.long	0x1bb0
	.value	0x270
	.uleb128 0x13
	.long	.LASF352
	.byte	0x8
	.value	0x2bc
	.long	0x1bb0
	.value	0x338
	.uleb128 0x13
	.long	.LASF353
	.byte	0x8
	.value	0x2bd
	.long	0x1bb0
	.value	0x400
	.uleb128 0x13
	.long	.LASF354
	.byte	0x8
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x13
	.long	.LASF355
	.byte	0x8
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x13
	.long	.LASF356
	.byte	0x8
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x13
	.long	.LASF357
	.byte	0x8
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x1a
	.string	"qpB"
	.byte	0x8
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x13
	.long	.LASF358
	.byte	0x8
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x13
	.long	.LASF359
	.byte	0x8
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x13
	.long	.LASF360
	.byte	0x8
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x13
	.long	.LASF361
	.byte	0x8
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x13
	.long	.LASF362
	.byte	0x8
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x13
	.long	.LASF363
	.byte	0x8
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x13
	.long	.LASF364
	.byte	0x8
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x13
	.long	.LASF365
	.byte	0x8
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x13
	.long	.LASF220
	.byte	0x8
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x13
	.long	.LASF366
	.byte	0x8
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x13
	.long	.LASF367
	.byte	0x8
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x13
	.long	.LASF368
	.byte	0x8
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x13
	.long	.LASF369
	.byte	0x8
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x13
	.long	.LASF370
	.byte	0x8
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x13
	.long	.LASF371
	.byte	0x8
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x13
	.long	.LASF372
	.byte	0x8
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x13
	.long	.LASF373
	.byte	0x8
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x13
	.long	.LASF374
	.byte	0x8
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x13
	.long	.LASF375
	.byte	0x8
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x13
	.long	.LASF376
	.byte	0x8
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x13
	.long	.LASF377
	.byte	0x8
	.value	0x2df
	.long	0x1bc0
	.value	0x52c
	.uleb128 0x13
	.long	.LASF378
	.byte	0x8
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x13
	.long	.LASF379
	.byte	0x8
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x13
	.long	.LASF380
	.byte	0x8
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x13
	.long	.LASF381
	.byte	0x8
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x13
	.long	.LASF382
	.byte	0x8
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x13
	.long	.LASF383
	.byte	0x8
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x13
	.long	.LASF384
	.byte	0x8
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x13
	.long	.LASF385
	.byte	0x8
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x13
	.long	.LASF386
	.byte	0x8
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x13
	.long	.LASF387
	.byte	0x8
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x13
	.long	.LASF388
	.byte	0x8
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x13
	.long	.LASF389
	.byte	0x8
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x13
	.long	.LASF390
	.byte	0x8
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x13
	.long	.LASF391
	.byte	0x8
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x13
	.long	.LASF392
	.byte	0x8
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x13
	.long	.LASF393
	.byte	0x8
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x13
	.long	.LASF394
	.byte	0x8
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x13
	.long	.LASF395
	.byte	0x8
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x13
	.long	.LASF396
	.byte	0x8
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x13
	.long	.LASF397
	.byte	0x8
	.value	0x2f7
	.long	0xbf
	.value	0x978
	.uleb128 0x13
	.long	.LASF92
	.byte	0x8
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x13
	.long	.LASF398
	.byte	0x8
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x13
	.long	.LASF399
	.byte	0x8
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x13
	.long	.LASF400
	.byte	0x8
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x13
	.long	.LASF401
	.byte	0x8
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x13
	.long	.LASF402
	.byte	0x8
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x13
	.long	.LASF403
	.byte	0x8
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x13
	.long	.LASF404
	.byte	0x8
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x13
	.long	.LASF405
	.byte	0x8
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x13
	.long	.LASF406
	.byte	0x8
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x13
	.long	.LASF407
	.byte	0x8
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x13
	.long	.LASF408
	.byte	0x8
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x13
	.long	.LASF409
	.byte	0x8
	.value	0x30a
	.long	0x1bb0
	.value	0x9b0
	.uleb128 0x13
	.long	.LASF410
	.byte	0x8
	.value	0x30b
	.long	0x1bb0
	.value	0xa78
	.uleb128 0x13
	.long	.LASF411
	.byte	0x8
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x13
	.long	.LASF412
	.byte	0x8
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x13
	.long	.LASF413
	.byte	0x8
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x13
	.long	.LASF414
	.byte	0x8
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x13
	.long	.LASF415
	.byte	0x8
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x13
	.long	.LASF416
	.byte	0x8
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x13
	.long	.LASF417
	.byte	0x8
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x13
	.long	.LASF418
	.byte	0x8
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x13
	.long	.LASF419
	.byte	0x8
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x13
	.long	.LASF420
	.byte	0x8
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x13
	.long	.LASF421
	.byte	0x8
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x13
	.long	.LASF422
	.byte	0x8
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x13
	.long	.LASF255
	.byte	0x8
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x13
	.long	.LASF256
	.byte	0x8
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x13
	.long	.LASF257
	.byte	0x8
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x13
	.long	.LASF423
	.byte	0x8
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x13
	.long	.LASF424
	.byte	0x8
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x13
	.long	.LASF425
	.byte	0x8
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x13
	.long	.LASF426
	.byte	0x8
	.value	0x327
	.long	0x1bb0
	.value	0xb88
	.uleb128 0x13
	.long	.LASF77
	.byte	0x8
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x13
	.long	.LASF78
	.byte	0x8
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x13
	.long	.LASF80
	.byte	0x8
	.value	0x32b
	.long	0x8e
	.value	0xc58
	.uleb128 0x13
	.long	.LASF81
	.byte	0x8
	.value	0x32c
	.long	0x8e
	.value	0xc60
	.uleb128 0x13
	.long	.LASF85
	.byte	0x8
	.value	0x32d
	.long	0x512
	.value	0xc68
	.uleb128 0x13
	.long	.LASF79
	.byte	0x8
	.value	0x32e
	.long	0x8e
	.value	0xc70
	.uleb128 0x13
	.long	.LASF82
	.byte	0x8
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x13
	.long	.LASF83
	.byte	0x8
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x13
	.long	.LASF427
	.byte	0x8
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x13
	.long	.LASF428
	.byte	0x8
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x13
	.long	.LASF112
	.byte	0x8
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x13
	.long	.LASF429
	.byte	0x8
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x13
	.long	.LASF430
	.byte	0x8
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x13
	.long	.LASF431
	.byte	0x8
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x13
	.long	.LASF432
	.byte	0x8
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x13
	.long	.LASF433
	.byte	0x8
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x13
	.long	.LASF434
	.byte	0x8
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x13
	.long	.LASF435
	.byte	0x8
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x13
	.long	.LASF436
	.byte	0x8
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x13
	.long	.LASF437
	.byte	0x8
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x13
	.long	.LASF438
	.byte	0x8
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x13
	.long	.LASF439
	.byte	0x8
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x13
	.long	.LASF440
	.byte	0x8
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x13
	.long	.LASF441
	.byte	0x8
	.value	0x346
	.long	0x4f2
	.value	0xcbc
	.uleb128 0x13
	.long	.LASF442
	.byte	0x8
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x13
	.long	.LASF443
	.byte	0x8
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x13
	.long	.LASF444
	.byte	0x8
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x13
	.long	.LASF445
	.byte	0x8
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x13
	.long	.LASF446
	.byte	0x8
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x13
	.long	.LASF447
	.byte	0x8
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x13
	.long	.LASF93
	.byte	0x8
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x13
	.long	.LASF94
	.byte	0x8
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x13
	.long	.LASF448
	.byte	0x8
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x13
	.long	.LASF449
	.byte	0x8
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x13
	.long	.LASF450
	.byte	0x8
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x13
	.long	.LASF451
	.byte	0x8
	.value	0x35c
	.long	0x1bd1
	.value	0xd08
	.uleb128 0x13
	.long	.LASF452
	.byte	0x8
	.value	0x35e
	.long	0x1bb0
	.value	0xd38
	.uleb128 0x13
	.long	.LASF453
	.byte	0x8
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1bb0
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x87
	.long	0x1bc0
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x87
	.long	0x1bd1
	.uleb128 0x1d
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xbf
	.long	0x1be1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	.LASF454
	.byte	0x8
	.value	0x361
	.long	0x1392
	.uleb128 0x1e
	.long	0x11c20
	.byte	0x8
	.value	0x364
	.long	0x25d2
	.uleb128 0x12
	.long	.LASF455
	.byte	0x8
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x16
	.string	"pn"
	.byte	0x8
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF456
	.byte	0x8
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.long	.LASF457
	.byte	0x8
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF458
	.byte	0x8
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF459
	.byte	0x8
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0x12
	.long	.LASF208
	.byte	0x8
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.long	.LASF460
	.byte	0x8
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF119
	.byte	0x8
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0x12
	.long	.LASF461
	.byte	0x8
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x16
	.string	"qp"
	.byte	0x8
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0x12
	.long	.LASF220
	.byte	0x8
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF462
	.byte	0x8
	.value	0x372
	.long	0xb8
	.byte	0x30
	.uleb128 0x12
	.long	.LASF463
	.byte	0x8
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0x12
	.long	.LASF464
	.byte	0x8
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0x12
	.long	.LASF465
	.byte	0x8
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0x12
	.long	.LASF466
	.byte	0x8
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0x12
	.long	.LASF467
	.byte	0x8
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0x12
	.long	.LASF468
	.byte	0x8
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.long	.LASF469
	.byte	0x8
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF470
	.byte	0x8
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0x12
	.long	.LASF471
	.byte	0x8
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0x12
	.long	.LASF472
	.byte	0x8
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0x12
	.long	.LASF473
	.byte	0x8
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF474
	.byte	0x8
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0x12
	.long	.LASF475
	.byte	0x8
	.value	0x37f
	.long	0x12a0
	.byte	0x68
	.uleb128 0x12
	.long	.LASF476
	.byte	0x8
	.value	0x380
	.long	0x12a0
	.byte	0x70
	.uleb128 0x12
	.long	.LASF477
	.byte	0x8
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0x12
	.long	.LASF478
	.byte	0x8
	.value	0x383
	.long	0x25d2
	.byte	0x80
	.uleb128 0x12
	.long	.LASF479
	.byte	0x8
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0x12
	.long	.LASF480
	.byte	0x8
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0x12
	.long	.LASF481
	.byte	0x8
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0x12
	.long	.LASF482
	.byte	0x8
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0x12
	.long	.LASF483
	.byte	0x8
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0x12
	.long	.LASF484
	.byte	0x8
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF485
	.byte	0x8
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF486
	.byte	0x8
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0x12
	.long	.LASF487
	.byte	0x8
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0x12
	.long	.LASF488
	.byte	0x8
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0x12
	.long	.LASF489
	.byte	0x8
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0x12
	.long	.LASF490
	.byte	0x8
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0x12
	.long	.LASF491
	.byte	0x8
	.value	0x395
	.long	0x25d8
	.byte	0xb8
	.uleb128 0x13
	.long	.LASF492
	.byte	0x8
	.value	0x397
	.long	0x25f4
	.value	0x12b8
	.uleb128 0x13
	.long	.LASF493
	.byte	0x8
	.value	0x398
	.long	0x2610
	.value	0x1cb8
	.uleb128 0x13
	.long	.LASF494
	.byte	0x8
	.value	0x399
	.long	0x262c
	.value	0x2138
	.uleb128 0x1a
	.string	"mpr"
	.byte	0x8
	.value	0x39a
	.long	0x264e
	.value	0x3138
	.uleb128 0x1a
	.string	"m7"
	.byte	0x8
	.value	0x39b
	.long	0x2664
	.value	0x3338
	.uleb128 0x13
	.long	.LASF495
	.byte	0x8
	.value	0x39d
	.long	0x267a
	.value	0x3738
	.uleb128 0x13
	.long	.LASF496
	.byte	0x8
	.value	0x39e
	.long	0x25d2
	.value	0x3740
	.uleb128 0x13
	.long	.LASF497
	.byte	0x8
	.value	0x3a0
	.long	0x2680
	.value	0x3748
	.uleb128 0x13
	.long	.LASF498
	.byte	0x8
	.value	0x3a1
	.long	0x1229
	.value	0x3750
	.uleb128 0x13
	.long	.LASF499
	.byte	0x8
	.value	0x3a2
	.long	0x2686
	.value	0x3758
	.uleb128 0x13
	.long	.LASF500
	.byte	0x8
	.value	0x3a3
	.long	0x268c
	.value	0x3760
	.uleb128 0x1f
	.long	.LASF501
	.byte	0x8
	.value	0x3a5
	.long	0x8e
	.long	0x11860
	.uleb128 0x1f
	.long	.LASF502
	.byte	0x8
	.value	0x3a6
	.long	0x8e
	.long	0x11868
	.uleb128 0x20
	.string	"tr"
	.byte	0x8
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1f
	.long	.LASF503
	.byte	0x8
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1f
	.long	.LASF504
	.byte	0x8
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1f
	.long	.LASF505
	.byte	0x8
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1f
	.long	.LASF506
	.byte	0x8
	.value	0x3ac
	.long	0x269d
	.long	0x11880
	.uleb128 0x1f
	.long	.LASF507
	.byte	0x8
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1f
	.long	.LASF508
	.byte	0x8
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1f
	.long	.LASF509
	.byte	0x8
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1f
	.long	.LASF510
	.byte	0x8
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1f
	.long	.LASF511
	.byte	0x8
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1f
	.long	.LASF512
	.byte	0x8
	.value	0x3b4
	.long	0xbf
	.long	0x118d8
	.uleb128 0x1f
	.long	.LASF513
	.byte	0x8
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1f
	.long	.LASF514
	.byte	0x8
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1f
	.long	.LASF515
	.byte	0x8
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x8
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x8
	.value	0x3ba
	.long	0x26b3
	.long	0x118f0
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x8
	.value	0x3bb
	.long	0x26b3
	.long	0x118f8
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x8
	.value	0x3bd
	.long	0x26b3
	.long	0x11900
	.uleb128 0x1f
	.long	.LASF520
	.byte	0x8
	.value	0x3be
	.long	0x26b3
	.long	0x11908
	.uleb128 0x1f
	.long	.LASF248
	.byte	0x8
	.value	0x3bf
	.long	0x26d7
	.long	0x11910
	.uleb128 0x1f
	.long	.LASF255
	.byte	0x8
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1f
	.long	.LASF256
	.byte	0x8
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1f
	.long	.LASF257
	.byte	0x8
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1f
	.long	.LASF359
	.byte	0x8
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1f
	.long	.LASF521
	.byte	0x8
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1f
	.long	.LASF522
	.byte	0x8
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1f
	.long	.LASF523
	.byte	0x8
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1f
	.long	.LASF524
	.byte	0x8
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1f
	.long	.LASF525
	.byte	0x8
	.value	0x3ce
	.long	0x26e7
	.long	0x11950
	.uleb128 0x1f
	.long	.LASF526
	.byte	0x8
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1f
	.long	.LASF527
	.byte	0x8
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1f
	.long	.LASF528
	.byte	0x8
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1f
	.long	.LASF529
	.byte	0x8
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1f
	.long	.LASF530
	.byte	0x8
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1f
	.long	.LASF531
	.byte	0x8
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1f
	.long	.LASF532
	.byte	0x8
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1f
	.long	.LASF112
	.byte	0x8
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x8
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1f
	.long	.LASF115
	.byte	0x8
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1f
	.long	.LASF116
	.byte	0x8
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1f
	.long	.LASF117
	.byte	0x8
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x8
	.value	0x3e4
	.long	0x26fd
	.long	0x11ae8
	.uleb128 0x1f
	.long	.LASF533
	.byte	0x8
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1f
	.long	.LASF534
	.byte	0x8
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1f
	.long	.LASF535
	.byte	0x8
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1f
	.long	.LASF536
	.byte	0x8
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1f
	.long	.LASF537
	.byte	0x8
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1f
	.long	.LASF538
	.byte	0x8
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x8
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1f
	.long	.LASF540
	.byte	0x8
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1f
	.long	.LASF541
	.byte	0x8
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1f
	.long	.LASF542
	.byte	0x8
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1f
	.long	.LASF543
	.byte	0x8
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1f
	.long	.LASF544
	.byte	0x8
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1f
	.long	.LASF545
	.byte	0x8
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1f
	.long	.LASF546
	.byte	0x8
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1f
	.long	.LASF547
	.byte	0x8
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x8
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1f
	.long	.LASF548
	.byte	0x8
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1f
	.long	.LASF549
	.byte	0x8
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1f
	.long	.LASF550
	.byte	0x8
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1f
	.long	.LASF551
	.byte	0x8
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1f
	.long	.LASF552
	.byte	0x8
	.value	0x409
	.long	0x270d
	.long	0x11b40
	.uleb128 0x1f
	.long	.LASF430
	.byte	0x8
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1f
	.long	.LASF553
	.byte	0x8
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1f
	.long	.LASF554
	.byte	0x8
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1f
	.long	.LASF555
	.byte	0x8
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1f
	.long	.LASF556
	.byte	0x8
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1f
	.long	.LASF557
	.byte	0x8
	.value	0x413
	.long	0xbf
	.long	0x11b60
	.uleb128 0x1f
	.long	.LASF558
	.byte	0x8
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1f
	.long	.LASF559
	.byte	0x8
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1f
	.long	.LASF560
	.byte	0x8
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1f
	.long	.LASF561
	.byte	0x8
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1f
	.long	.LASF562
	.byte	0x8
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1f
	.long	.LASF563
	.byte	0x8
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1f
	.long	.LASF564
	.byte	0x8
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1f
	.long	.LASF565
	.byte	0x8
	.value	0x41b
	.long	0x2713
	.long	0x11b88
	.uleb128 0x1f
	.long	.LASF566
	.byte	0x8
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1f
	.long	.LASF567
	.byte	0x8
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1f
	.long	.LASF568
	.byte	0x8
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1f
	.long	.LASF569
	.byte	0x8
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1f
	.long	.LASF570
	.byte	0x8
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1f
	.long	.LASF571
	.byte	0x8
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1f
	.long	.LASF572
	.byte	0x8
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1f
	.long	.LASF573
	.byte	0x8
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1f
	.long	.LASF574
	.byte	0x8
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1f
	.long	.LASF575
	.byte	0x8
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1f
	.long	.LASF576
	.byte	0x8
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1f
	.long	.LASF577
	.byte	0x8
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1f
	.long	.LASF578
	.byte	0x8
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1f
	.long	.LASF579
	.byte	0x8
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1f
	.long	.LASF580
	.byte	0x8
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1f
	.long	.LASF427
	.byte	0x8
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1f
	.long	.LASF581
	.byte	0x8
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1f
	.long	.LASF582
	.byte	0x8
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1f
	.long	.LASF583
	.byte	0x8
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1f
	.long	.LASF584
	.byte	0x8
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1f
	.long	.LASF585
	.byte	0x8
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1f
	.long	.LASF586
	.byte	0x8
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1f
	.long	.LASF587
	.byte	0x8
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1f
	.long	.LASF588
	.byte	0x8
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1f
	.long	.LASF589
	.byte	0x8
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1f
	.long	.LASF590
	.byte	0x8
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1f
	.long	.LASF591
	.byte	0x8
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1f
	.long	.LASF341
	.byte	0x8
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1f
	.long	.LASF592
	.byte	0x8
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1f
	.long	.LASF593
	.byte	0x8
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1f
	.long	.LASF594
	.byte	0x8
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1f
	.long	.LASF595
	.byte	0x8
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1f
	.long	.LASF449
	.byte	0x8
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1f
	.long	.LASF596
	.byte	0x8
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1f
	.long	.LASF597
	.byte	0x8
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x12a0
	.uleb128 0x4
	.long	0x42
	.long	0x25f4
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2610
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x262c
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x264e
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2664
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x267a
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x25d2
	.uleb128 0x7
	.byte	0x8
	.long	0x122f
	.uleb128 0x7
	.byte	0x8
	.long	0xf35
	.uleb128 0x4
	.long	0xc67
	.long	0x269d
	.uleb128 0x1d
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x26b3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x26b9
	.uleb128 0x7
	.byte	0x8
	.long	0x26bf
	.uleb128 0x7
	.byte	0x8
	.long	0x26c5
	.uleb128 0x7
	.byte	0x8
	.long	0x26cb
	.uleb128 0x7
	.byte	0x8
	.long	0x26d1
	.uleb128 0x7
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x26e7
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x26fd
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x270d
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb91
	.uleb128 0x7
	.byte	0x8
	.long	0xbf
	.uleb128 0x14
	.long	.LASF598
	.byte	0x8
	.value	0x449
	.long	0x1bed
	.uleb128 0x11
	.value	0x5d8
	.byte	0x8
	.value	0x44d
	.long	0x2902
	.uleb128 0x12
	.long	.LASF599
	.byte	0x8
	.value	0x44f
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF600
	.byte	0x8
	.value	0x450
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF601
	.byte	0x8
	.value	0x451
	.long	0xb8
	.byte	0x8
	.uleb128 0x12
	.long	.LASF602
	.byte	0x8
	.value	0x452
	.long	0xb8
	.byte	0xc
	.uleb128 0x12
	.long	.LASF603
	.byte	0x8
	.value	0x453
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF604
	.byte	0x8
	.value	0x454
	.long	0x34
	.byte	0x14
	.uleb128 0x12
	.long	.LASF605
	.byte	0x8
	.value	0x455
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.long	.LASF606
	.byte	0x8
	.value	0x456
	.long	0x34
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF607
	.byte	0x8
	.value	0x457
	.long	0x2902
	.byte	0x20
	.uleb128 0x12
	.long	.LASF608
	.byte	0x8
	.value	0x458
	.long	0x2918
	.byte	0x48
	.uleb128 0x13
	.long	.LASF609
	.byte	0x8
	.value	0x459
	.long	0x2918
	.value	0x174
	.uleb128 0x13
	.long	.LASF610
	.byte	0x8
	.value	0x45a
	.long	0xf25
	.value	0x2a0
	.uleb128 0x13
	.long	.LASF611
	.byte	0x8
	.value	0x45d
	.long	0x8e
	.value	0x2b0
	.uleb128 0x13
	.long	.LASF612
	.byte	0x8
	.value	0x45e
	.long	0x8e
	.value	0x2b8
	.uleb128 0x13
	.long	.LASF613
	.byte	0x8
	.value	0x45f
	.long	0x34
	.value	0x2c0
	.uleb128 0x13
	.long	.LASF614
	.byte	0x8
	.value	0x460
	.long	0x34
	.value	0x2c4
	.uleb128 0x13
	.long	.LASF615
	.byte	0x8
	.value	0x461
	.long	0x34
	.value	0x2c8
	.uleb128 0x13
	.long	.LASF616
	.byte	0x8
	.value	0x462
	.long	0xb8
	.value	0x2cc
	.uleb128 0x13
	.long	.LASF617
	.byte	0x8
	.value	0x463
	.long	0xb8
	.value	0x2d0
	.uleb128 0x13
	.long	.LASF618
	.byte	0x8
	.value	0x464
	.long	0xb8
	.value	0x2d4
	.uleb128 0x13
	.long	.LASF619
	.byte	0x8
	.value	0x466
	.long	0x2918
	.value	0x2d8
	.uleb128 0x13
	.long	.LASF620
	.byte	0x8
	.value	0x467
	.long	0x2918
	.value	0x404
	.uleb128 0x13
	.long	.LASF621
	.byte	0x8
	.value	0x468
	.long	0x292e
	.value	0x530
	.uleb128 0x13
	.long	.LASF622
	.byte	0x8
	.value	0x469
	.long	0x292e
	.value	0x544
	.uleb128 0x13
	.long	.LASF623
	.byte	0x8
	.value	0x46a
	.long	0x292e
	.value	0x558
	.uleb128 0x13
	.long	.LASF624
	.byte	0x8
	.value	0x46b
	.long	0x292e
	.value	0x56c
	.uleb128 0x13
	.long	.LASF625
	.byte	0x8
	.value	0x46c
	.long	0x292e
	.value	0x580
	.uleb128 0x13
	.long	.LASF626
	.byte	0x8
	.value	0x46d
	.long	0x292e
	.value	0x594
	.uleb128 0x13
	.long	.LASF627
	.byte	0x8
	.value	0x46e
	.long	0x292e
	.value	0x5a8
	.uleb128 0x13
	.long	.LASF628
	.byte	0x8
	.value	0x470
	.long	0x34
	.value	0x5bc
	.uleb128 0x13
	.long	.LASF629
	.byte	0x8
	.value	0x471
	.long	0x34
	.value	0x5c0
	.uleb128 0x13
	.long	.LASF630
	.byte	0x8
	.value	0x472
	.long	0x8e
	.value	0x5c8
	.uleb128 0x13
	.long	.LASF631
	.byte	0x8
	.value	0x473
	.long	0x34
	.value	0x5d0
	.uleb128 0x13
	.long	.LASF632
	.byte	0x8
	.value	0x474
	.long	0x34
	.value	0x5d4
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2918
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x292e
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x293e
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.long	.LASF633
	.byte	0x8
	.value	0x475
	.long	0x2725
	.uleb128 0x11
	.value	0xd20
	.byte	0x8
	.value	0x479
	.long	0x2acc
	.uleb128 0x12
	.long	.LASF634
	.byte	0x8
	.value	0x47b
	.long	0xbf
	.byte	0
	.uleb128 0x12
	.long	.LASF635
	.byte	0x8
	.value	0x47d
	.long	0x2664
	.byte	0x8
	.uleb128 0x13
	.long	.LASF636
	.byte	0x8
	.value	0x47e
	.long	0x2664
	.value	0x408
	.uleb128 0x13
	.long	.LASF637
	.byte	0x8
	.value	0x47e
	.long	0x2664
	.value	0x808
	.uleb128 0x13
	.long	.LASF495
	.byte	0x8
	.value	0x47f
	.long	0x267a
	.value	0xc08
	.uleb128 0x13
	.long	.LASF496
	.byte	0x8
	.value	0x480
	.long	0x25d2
	.value	0xc10
	.uleb128 0x13
	.long	.LASF224
	.byte	0x8
	.value	0x481
	.long	0x34
	.value	0xc18
	.uleb128 0x13
	.long	.LASF248
	.byte	0x8
	.value	0x483
	.long	0x34
	.value	0xc1c
	.uleb128 0x13
	.long	.LASF228
	.byte	0x8
	.value	0x485
	.long	0xf25
	.value	0xc20
	.uleb128 0x13
	.long	.LASF229
	.byte	0x8
	.value	0x485
	.long	0xf25
	.value	0xc30
	.uleb128 0x13
	.long	.LASF475
	.byte	0x8
	.value	0x486
	.long	0x12a0
	.value	0xc40
	.uleb128 0x13
	.long	.LASF225
	.byte	0x8
	.value	0x487
	.long	0xf15
	.value	0xc48
	.uleb128 0x1a
	.string	"cbp"
	.byte	0x8
	.value	0x488
	.long	0x34
	.value	0xc88
	.uleb128 0x13
	.long	.LASF227
	.byte	0x8
	.value	0x489
	.long	0x6fa
	.value	0xc90
	.uleb128 0x13
	.long	.LASF638
	.byte	0x8
	.value	0x48a
	.long	0x34
	.value	0xc98
	.uleb128 0x13
	.long	.LASF517
	.byte	0x8
	.value	0x48b
	.long	0x26b3
	.value	0xca0
	.uleb128 0x13
	.long	.LASF518
	.byte	0x8
	.value	0x48c
	.long	0x26b3
	.value	0xca8
	.uleb128 0x13
	.long	.LASF519
	.byte	0x8
	.value	0x48d
	.long	0x26b3
	.value	0xcb0
	.uleb128 0x13
	.long	.LASF520
	.byte	0x8
	.value	0x48e
	.long	0x26b3
	.value	0xcb8
	.uleb128 0x13
	.long	.LASF639
	.byte	0x8
	.value	0x48f
	.long	0x2acc
	.value	0xcc0
	.uleb128 0x13
	.long	.LASF527
	.byte	0x8
	.value	0x490
	.long	0x34
	.value	0xd00
	.uleb128 0x13
	.long	.LASF234
	.byte	0x8
	.value	0x491
	.long	0x34
	.value	0xd04
	.uleb128 0x13
	.long	.LASF246
	.byte	0x8
	.value	0x493
	.long	0x34
	.value	0xd08
	.uleb128 0x13
	.long	.LASF247
	.byte	0x8
	.value	0x494
	.long	0x34
	.value	0xd0c
	.uleb128 0x1a
	.string	"qp"
	.byte	0x8
	.value	0x496
	.long	0x34
	.value	0xd10
	.uleb128 0x13
	.long	.LASF250
	.byte	0x8
	.value	0x497
	.long	0x34
	.value	0xd14
	.uleb128 0x13
	.long	.LASF251
	.byte	0x8
	.value	0x498
	.long	0x34
	.value	0xd18
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x2ae8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.long	.LASF640
	.byte	0x8
	.value	0x499
	.long	0x294a
	.uleb128 0x1b
	.byte	0x18
	.byte	0x8
	.value	0x49e
	.long	0x2b4c
	.uleb128 0x12
	.long	.LASF641
	.byte	0x8
	.value	0x4a0
	.long	0x34
	.byte	0
	.uleb128 0x12
	.long	.LASF642
	.byte	0x8
	.value	0x4a1
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.long	.LASF643
	.byte	0x8
	.value	0x4a2
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.long	.LASF644
	.byte	0x8
	.value	0x4a3
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.long	.LASF645
	.byte	0x8
	.value	0x4a4
	.long	0x34
	.byte	0x10
	.uleb128 0x12
	.long	.LASF646
	.byte	0x8
	.value	0x4a5
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x14
	.long	.LASF647
	.byte	0x8
	.value	0x4a6
	.long	0x2af4
	.uleb128 0x21
	.long	.LASF648
	.value	0x19b8
	.byte	0x9
	.byte	0x15
	.long	0x2dce
	.uleb128 0xa
	.long	.LASF460
	.byte	0x9
	.byte	0x17
	.long	0x77a
	.byte	0
	.uleb128 0x10
	.string	"poc"
	.byte	0x9
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xa
	.long	.LASF649
	.byte	0x9
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xa
	.long	.LASF650
	.byte	0x9
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xa
	.long	.LASF651
	.byte	0x9
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xa
	.long	.LASF652
	.byte	0x9
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xa
	.long	.LASF653
	.byte	0x9
	.byte	0x1e
	.long	0x2dce
	.byte	0x18
	.uleb128 0xe
	.long	.LASF654
	.byte	0x9
	.byte	0x1f
	.long	0x2dce
	.value	0x648
	.uleb128 0xe
	.long	.LASF655
	.byte	0x9
	.byte	0x20
	.long	0x2dce
	.value	0xc78
	.uleb128 0xe
	.long	.LASF656
	.byte	0x9
	.byte	0x21
	.long	0x2dce
	.value	0x12a8
	.uleb128 0xe
	.long	.LASF541
	.byte	0x9
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0xe
	.long	.LASF657
	.byte	0x9
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0xe
	.long	.LASF203
	.byte	0x9
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0xe
	.long	.LASF204
	.byte	0x9
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0xe
	.long	.LASF658
	.byte	0x9
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0xe
	.long	.LASF659
	.byte	0x9
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0xe
	.long	.LASF660
	.byte	0x9
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0xe
	.long	.LASF661
	.byte	0x9
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0xe
	.long	.LASF662
	.byte	0x9
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0xe
	.long	.LASF663
	.byte	0x9
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0xe
	.long	.LASF664
	.byte	0x9
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0xe
	.long	.LASF665
	.byte	0x9
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0xe
	.long	.LASF666
	.byte	0x9
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0xe
	.long	.LASF667
	.byte	0x9
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0xe
	.long	.LASF532
	.byte	0x9
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0xe
	.long	.LASF668
	.byte	0x9
	.byte	0x31
	.long	0x12ac
	.value	0x1918
	.uleb128 0xe
	.long	.LASF669
	.byte	0x9
	.byte	0x32
	.long	0x12b2
	.value	0x1920
	.uleb128 0xe
	.long	.LASF670
	.byte	0x9
	.byte	0x33
	.long	0x12b2
	.value	0x1928
	.uleb128 0xe
	.long	.LASF671
	.byte	0x9
	.byte	0x34
	.long	0x12ac
	.value	0x1930
	.uleb128 0xe
	.long	.LASF672
	.byte	0x9
	.byte	0x35
	.long	0x12ac
	.value	0x1938
	.uleb128 0xe
	.long	.LASF673
	.byte	0x9
	.byte	0x36
	.long	0x12a6
	.value	0x1940
	.uleb128 0xe
	.long	.LASF236
	.byte	0x9
	.byte	0x38
	.long	0x512
	.value	0x1948
	.uleb128 0xe
	.long	.LASF674
	.byte	0x9
	.byte	0x3a
	.long	0x26c5
	.value	0x1950
	.uleb128 0xe
	.long	.LASF675
	.byte	0x9
	.byte	0x3c
	.long	0x2de4
	.value	0x1958
	.uleb128 0xe
	.long	.LASF676
	.byte	0x9
	.byte	0x3f
	.long	0x2de4
	.value	0x1960
	.uleb128 0x22
	.string	"mv"
	.byte	0x9
	.byte	0x42
	.long	0x26bf
	.value	0x1968
	.uleb128 0xe
	.long	.LASF677
	.byte	0x9
	.byte	0x44
	.long	0x12be
	.value	0x1970
	.uleb128 0xe
	.long	.LASF678
	.byte	0x9
	.byte	0x45
	.long	0x12be
	.value	0x1978
	.uleb128 0xe
	.long	.LASF524
	.byte	0x9
	.byte	0x47
	.long	0x2df6
	.value	0x1980
	.uleb128 0xe
	.long	.LASF679
	.byte	0x9
	.byte	0x48
	.long	0x2df6
	.value	0x1988
	.uleb128 0xe
	.long	.LASF680
	.byte	0x9
	.byte	0x49
	.long	0x2df6
	.value	0x1990
	.uleb128 0xe
	.long	.LASF106
	.byte	0x9
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0xe
	.long	.LASF123
	.byte	0x9
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0xe
	.long	.LASF126
	.byte	0x9
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0xe
	.long	.LASF127
	.byte	0x9
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0xe
	.long	.LASF128
	.byte	0x9
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0xe
	.long	.LASF129
	.byte	0x9
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0xe
	.long	.LASF130
	.byte	0x9
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x6fa
	.long	0x2de4
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2dea
	.uleb128 0x7
	.byte	0x8
	.long	0x2df0
	.uleb128 0x7
	.byte	0x8
	.long	0x6fa
	.uleb128 0x7
	.byte	0x8
	.long	0x2b58
	.uleb128 0x6
	.long	.LASF681
	.byte	0x9
	.byte	0x52
	.long	0x2b58
	.uleb128 0x7
	.byte	0x8
	.long	0x2dfc
	.uleb128 0xf
	.byte	0x20
	.byte	0xa
	.byte	0x28
	.long	0x2e6a
	.uleb128 0xa
	.long	.LASF682
	.byte	0xa
	.byte	0x2a
	.long	0x34
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0xa
	.byte	0x2b
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF683
	.byte	0xa
	.byte	0x2c
	.long	0x49
	.byte	0x8
	.uleb128 0xa
	.long	.LASF684
	.byte	0xa
	.byte	0x2d
	.long	0x34
	.byte	0xc
	.uleb128 0xa
	.long	.LASF548
	.byte	0xa
	.byte	0x2e
	.long	0x34
	.byte	0x10
	.uleb128 0xa
	.long	.LASF685
	.byte	0xa
	.byte	0x2f
	.long	0x34
	.byte	0x14
	.uleb128 0x10
	.string	"buf"
	.byte	0xa
	.byte	0x30
	.long	0x512
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF686
	.byte	0xa
	.byte	0x31
	.long	0x2e0d
	.uleb128 0x23
	.long	.LASF868
	.byte	0x1
	.byte	0x7a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f11
	.uleb128 0x24
	.long	.LASF687
	.byte	0x1
	.byte	0x7c
	.long	0x2f11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x24
	.long	.LASF668
	.byte	0x1
	.byte	0x7e
	.long	0x12ac
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x24
	.long	.LASF673
	.byte	0x1
	.byte	0x7f
	.long	0x12a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x25
	.string	"x0"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x25
	.string	"y0"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x25
	.string	"uv"
	.byte	0x1
	.byte	0x80
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2f27
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x26
	.long	.LASF690
	.byte	0x1
	.byte	0xc8
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f7b
	.uleb128 0x27
	.string	"pic"
	.byte	0x1
	.byte	0xc8
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF688
	.byte	0x1
	.byte	0xca
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF689
	.byte	0x1
	.byte	0xcb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.byte	0xcc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF691
	.byte	0x1
	.value	0x10a
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x3100
	.uleb128 0x29
	.long	.LASF692
	.byte	0x1
	.value	0x10c
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	prev_frame_no.6833
	.uleb128 0x29
	.long	.LASF693
	.byte	0x1
	.value	0x10d
	.long	0x34
	.uleb128 0x9
	.byte	0x3
	.quad	consecutive_non_reference_pictures.6834
	.uleb128 0x29
	.long	.LASF694
	.byte	0x1
	.value	0x10e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x1
	.value	0x111
	.long	0x3100
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x1
	.value	0x112
	.long	0x2d
	.uleb128 0x29
	.long	.LASF697
	.byte	0x1
	.value	0x115
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF698
	.byte	0x1
	.value	0x116
	.long	0x9b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF699
	.byte	0x1
	.value	0x11c
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF700
	.byte	0x1
	.value	0x11d
	.long	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF701
	.byte	0x1
	.value	0x120
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF702
	.byte	0x1
	.value	0x121
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x29
	.long	.LASF703
	.byte	0x1
	.value	0x121
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x29
	.long	.LASF704
	.byte	0x1
	.value	0x122
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x29
	.long	.LASF705
	.byte	0x1
	.value	0x122
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.long	.LASF706
	.byte	0x1
	.value	0x122
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x29
	.long	.LASF707
	.byte	0x1
	.value	0x122
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x29
	.long	.LASF708
	.byte	0x1
	.value	0x123
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x29
	.long	.LASF709
	.byte	0x1
	.value	0x123
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x29
	.long	.LASF710
	.byte	0x1
	.value	0x123
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF711
	.byte	0x1
	.value	0x123
	.long	0xb8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.long	.LASF712
	.byte	0x1
	.value	0x126
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF713
	.byte	0x1
	.value	0x126
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x4
	.long	0x5e
	.long	0x3111
	.uleb128 0x1d
	.long	0x75
	.value	0x270f
	.byte	0
	.uleb128 0x2b
	.long	.LASF722
	.byte	0x1
	.value	0x2a8
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x317f
	.uleb128 0x2c
	.string	"pic"
	.byte	0x1
	.value	0x2a8
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF714
	.byte	0x1
	.value	0x2aa
	.long	0x101b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF715
	.byte	0x1
	.value	0x2ab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF716
	.byte	0x1
	.value	0x2ab
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF717
	.byte	0x1
	.value	0x2ac
	.long	0x1229
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2d
	.long	.LASF869
	.byte	0x1
	.value	0x2c0
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF718
	.byte	0x1
	.value	0x2dc
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x31d6
	.uleb128 0x2f
	.long	.LASF680
	.byte	0x1
	.value	0x2dc
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF505
	.byte	0x1
	.value	0x2dc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2e
	.long	.LASF536
	.byte	0x1
	.value	0x332
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3231
	.uleb128 0x2c
	.string	"top"
	.byte	0x1
	.value	0x332
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF719
	.byte	0x1
	.value	0x332
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF720
	.byte	0x1
	.value	0x335
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF721
	.byte	0x1
	.value	0x336
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x30
	.long	.LASF730
	.byte	0x1
	.value	0x3aa
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x327d
	.uleb128 0x2f
	.long	.LASF709
	.byte	0x1
	.value	0x3aa
	.long	0x327d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF710
	.byte	0x1
	.value	0x3aa
	.long	0x327d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.long	.LASF711
	.byte	0x1
	.value	0x3aa
	.long	0x327d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xb8
	.uleb128 0x2b
	.long	.LASF723
	.byte	0x1
	.value	0x3c7
	.long	0x34
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x332e
	.uleb128 0x2f
	.long	.LASF680
	.byte	0x1
	.value	0x3c7
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"top"
	.byte	0x1
	.value	0x3c7
	.long	0x2680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.string	"bot"
	.byte	0x1
	.value	0x3c7
	.long	0x2680
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF724
	.byte	0x1
	.value	0x3c9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF725
	.byte	0x1
	.value	0x3ca
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF726
	.byte	0x1
	.value	0x3cb
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF727
	.byte	0x1
	.value	0x3cb
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF728
	.byte	0x1
	.value	0x3cc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF729
	.byte	0x1
	.value	0x3cc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF731
	.byte	0x1
	.value	0x3e0
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x3389
	.uleb128 0x2f
	.long	.LASF729
	.byte	0x1
	.value	0x3e0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF732
	.byte	0x1
	.value	0x3e0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF733
	.byte	0x1
	.value	0x3e0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF734
	.byte	0x1
	.value	0x3e0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF735
	.byte	0x1
	.value	0x3f0
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x33e4
	.uleb128 0x2f
	.long	.LASF728
	.byte	0x1
	.value	0x3f0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF736
	.byte	0x1
	.value	0x3f0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.long	.LASF737
	.byte	0x1
	.value	0x3f0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.long	.LASF738
	.byte	0x1
	.value	0x3f0
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF803
	.byte	0x1
	.value	0x414
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF741
	.byte	0x1
	.value	0x420
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3448
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x422
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF739
	.byte	0x1
	.value	0x423
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF740
	.byte	0x1
	.value	0x423
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF742
	.byte	0x1
	.value	0x4bf
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3492
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x4c1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF739
	.byte	0x1
	.value	0x4c2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.long	.LASF740
	.byte	0x1
	.value	0x4c2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF743
	.byte	0x1
	.value	0x566
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3507
	.uleb128 0x2f
	.long	.LASF744
	.byte	0x1
	.value	0x566
	.long	0x12ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF745
	.byte	0x1
	.value	0x567
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF746
	.byte	0x1
	.value	0x567
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF747
	.byte	0x1
	.value	0x568
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x56a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0x56a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF748
	.byte	0x1
	.value	0x57e
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f8
	.uleb128 0x2c
	.string	"s"
	.byte	0x1
	.value	0x57e
	.long	0x2e07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.string	"is"
	.byte	0x1
	.value	0x580
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x581
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x581
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x33
	.string	"j4"
	.byte	0x1
	.value	0x581
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.string	"ie2"
	.byte	0x1
	.value	0x582
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"je2"
	.byte	0x1
	.value	0x582
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"jj"
	.byte	0x1
	.value	0x582
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x29
	.long	.LASF749
	.byte	0x1
	.value	0x582
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF750
	.byte	0x1
	.value	0x584
	.long	0x12ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF751
	.byte	0x1
	.value	0x585
	.long	0x12b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF668
	.byte	0x1
	.value	0x586
	.long	0x12ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF339
	.byte	0x1
	.value	0x588
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF340
	.byte	0x1
	.value	0x589
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x32
	.long	.LASF752
	.byte	0x1
	.value	0x60c
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x369e
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x60e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x60e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.long	.LASF753
	.byte	0x1
	.value	0x60f
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF754
	.byte	0x1
	.value	0x60f
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF755
	.byte	0x1
	.value	0x60f
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF756
	.byte	0x1
	.value	0x610
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF757
	.byte	0x1
	.value	0x611
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF758
	.byte	0x1
	.value	0x612
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x29
	.long	.LASF759
	.byte	0x1
	.value	0x613
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x34
	.long	.LASF760
	.byte	0x1
	.value	0x6aa
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3713
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x6ac
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x6ac
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF753
	.byte	0x1
	.value	0x6ad
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF754
	.byte	0x1
	.value	0x6ad
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF755
	.byte	0x1
	.value	0x6ad
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF756
	.byte	0x1
	.value	0x6ae
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x35
	.long	.LASF870
	.byte	0x1
	.value	0x6fc
	.long	0x128
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3745
	.uleb128 0x2f
	.long	.LASF761
	.byte	0x1
	.value	0x6fc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF762
	.byte	0x1
	.value	0x707
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3811
	.uleb128 0x2f
	.long	.LASF763
	.byte	0x1
	.value	0x707
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x29
	.long	.LASF764
	.byte	0x1
	.value	0x709
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF765
	.byte	0x1
	.value	0x70a
	.long	0x2686
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x70b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x70b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.string	"k"
	.byte	0x1
	.value	0x70b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x70b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF725
	.byte	0x1
	.value	0x70d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF638
	.byte	0x1
	.value	0x70e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF228
	.byte	0x1
	.value	0x70f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0x70f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.long	.LASF766
	.byte	0x1
	.value	0x711
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x34
	.long	.LASF767
	.byte	0x1
	.value	0x7ad
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3864
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x7af
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x7af
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.string	"k"
	.byte	0x1
	.value	0x7af
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"l"
	.byte	0x1
	.value	0x7af
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF768
	.byte	0x1
	.value	0x7dc
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x38a1
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x7dc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x7dc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF770
	.byte	0x1
	.value	0x7e2
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x38ed
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x7e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x7e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF713
	.byte	0x1
	.value	0x7e5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x30
	.long	.LASF771
	.byte	0x1
	.value	0x7fc
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x392a
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x7fc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x7fc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF772
	.byte	0x1
	.value	0x80c
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3967
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x80c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x80c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF773
	.byte	0x1
	.value	0x814
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a4
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x814
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x814
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF774
	.byte	0x1
	.value	0x81c
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x39e1
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x81c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x81c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF775
	.byte	0x1
	.value	0x825
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a1e
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x825
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2f
	.long	.LASF769
	.byte	0x1
	.value	0x825
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x36
	.long	.LASF776
	.byte	0x1
	.value	0x846
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x3acf
	.uleb128 0x2f
	.long	.LASF777
	.byte	0x1
	.value	0x846
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF778
	.byte	0x1
	.value	0x846
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF779
	.byte	0x1
	.value	0x846
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF780
	.byte	0x1
	.value	0x846
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF781
	.byte	0x1
	.value	0x847
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.long	.LASF782
	.byte	0x1
	.value	0x847
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF783
	.byte	0x1
	.value	0x847
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF784
	.byte	0x1
	.value	0x847
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.string	"x"
	.byte	0x1
	.value	0x849
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.string	"y"
	.byte	0x1
	.value	0x849
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF871
	.byte	0x1
	.value	0x876
	.long	0x34
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.long	.LASF785
	.byte	0x1
	.value	0x899
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bb0
	.uleb128 0x2f
	.long	.LASF786
	.byte	0x1
	.value	0x899
	.long	0x12ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.value	0x899
	.long	0x3bb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF662
	.byte	0x1
	.value	0x899
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF663
	.byte	0x1
	.value	0x899
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF787
	.byte	0x1
	.value	0x899
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x89b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"j"
	.byte	0x1
	.value	0x89b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.long	.LASF788
	.byte	0x1
	.value	0x89d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF789
	.byte	0x1
	.value	0x89d
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x29
	.long	.LASF790
	.byte	0x1
	.value	0x89e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF791
	.byte	0x1
	.value	0x89e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x3b
	.uleb128 0x30
	.long	.LASF792
	.byte	0x1
	.value	0x8fb
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cab
	.uleb128 0x2f
	.long	.LASF793
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.long	.LASF794
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.string	"xs"
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2c
	.string	"ys"
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF795
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2f
	.long	.LASF796
	.byte	0x1
	.value	0x8fb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.long	.LASF787
	.byte	0x1
	.value	0x8fd
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF797
	.byte	0x1
	.value	0x8ff
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF798
	.byte	0x1
	.value	0x900
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF799
	.byte	0x1
	.value	0x902
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF800
	.byte	0x1
	.value	0x903
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.long	.LASF801
	.byte	0x1
	.value	0x905
	.long	0x3cab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x906
	.long	0x3bb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF802
	.byte	0x1
	.value	0x908
	.long	0x128
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.long	0x6fa
	.uleb128 0x31
	.long	.LASF804
	.byte	0x1
	.value	0x95d
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF805
	.byte	0x1
	.value	0x969
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x31
	.long	.LASF806
	.byte	0x1
	.value	0x977
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.long	.LASF807
	.byte	0x1
	.value	0x986
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d4a
	.uleb128 0x2f
	.long	.LASF714
	.byte	0x1
	.value	0x986
	.long	0x101b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF715
	.byte	0x1
	.value	0x986
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF808
	.byte	0x1
	.value	0x988
	.long	0x3d4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2e6a
	.uleb128 0x32
	.long	.LASF809
	.byte	0x1
	.value	0x9cc
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dc9
	.uleb128 0x29
	.long	.LASF810
	.byte	0x1
	.value	0x9ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x29
	.long	.LASF811
	.byte	0x1
	.value	0x9ce
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF812
	.byte	0x1
	.value	0x9cf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF813
	.byte	0x1
	.value	0x9d0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.long	.LASF814
	.byte	0x1
	.value	0x9d1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.long	.LASF815
	.byte	0x1
	.value	0x9d2
	.long	0x3dc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x518
	.uleb128 0x2a
	.long	.LASF816
	.byte	0x8
	.value	0x1e7
	.long	0x2680
	.uleb128 0x2a
	.long	.LASF817
	.byte	0x8
	.value	0x1e8
	.long	0x2680
	.uleb128 0x2a
	.long	.LASF818
	.byte	0x8
	.value	0x1e9
	.long	0x2680
	.uleb128 0x2a
	.long	.LASF819
	.byte	0x8
	.value	0x1ea
	.long	0x2680
	.uleb128 0x2a
	.long	.LASF820
	.byte	0x8
	.value	0x1eb
	.long	0x2680
	.uleb128 0x2a
	.long	.LASF821
	.byte	0x8
	.value	0x1ee
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF822
	.byte	0x8
	.value	0x1ef
	.long	0x12a6
	.uleb128 0x2a
	.long	.LASF823
	.byte	0x8
	.value	0x1f0
	.long	0x12a0
	.uleb128 0x2a
	.long	.LASF769
	.byte	0x8
	.value	0x1f5
	.long	0x34
	.uleb128 0x2a
	.long	.LASF824
	.byte	0x8
	.value	0x1f6
	.long	0x3dc9
	.uleb128 0x2a
	.long	.LASF825
	.byte	0x8
	.value	0x1f7
	.long	0x3e53
	.uleb128 0x7
	.byte	0x8
	.long	0x6ef
	.uleb128 0x2a
	.long	.LASF826
	.byte	0x8
	.value	0x1fb
	.long	0x34
	.uleb128 0x2a
	.long	.LASF827
	.byte	0x8
	.value	0x209
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF828
	.byte	0x8
	.value	0x20a
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF829
	.byte	0x8
	.value	0x20c
	.long	0x12a6
	.uleb128 0x2a
	.long	.LASF830
	.byte	0x8
	.value	0x20d
	.long	0x12a6
	.uleb128 0x2a
	.long	.LASF831
	.byte	0x8
	.value	0x20f
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF832
	.byte	0x8
	.value	0x210
	.long	0x12a6
	.uleb128 0x2a
	.long	.LASF833
	.byte	0x8
	.value	0x212
	.long	0x12ac
	.uleb128 0x2a
	.long	.LASF834
	.byte	0x8
	.value	0x213
	.long	0x12a6
	.uleb128 0x2a
	.long	.LASF835
	.byte	0x8
	.value	0x21b
	.long	0x34
	.uleb128 0x2a
	.long	.LASF836
	.byte	0x8
	.value	0x21d
	.long	0x34
	.uleb128 0x2a
	.long	.LASF837
	.byte	0x8
	.value	0x21d
	.long	0x34
	.uleb128 0x2a
	.long	.LASF838
	.byte	0x8
	.value	0x21d
	.long	0x34
	.uleb128 0x2a
	.long	.LASF839
	.byte	0x8
	.value	0x21e
	.long	0x34
	.uleb128 0x2a
	.long	.LASF840
	.byte	0x8
	.value	0x21e
	.long	0x34
	.uleb128 0x2a
	.long	.LASF841
	.byte	0x8
	.value	0x21e
	.long	0x34
	.uleb128 0x2a
	.long	.LASF842
	.byte	0x8
	.value	0x21f
	.long	0x34
	.uleb128 0x4
	.long	0x87
	.long	0x3f36
	.uleb128 0x1d
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x2a
	.long	.LASF843
	.byte	0x8
	.value	0x222
	.long	0x3f25
	.uleb128 0x2a
	.long	.LASF844
	.byte	0x8
	.value	0x280
	.long	0x3f4e
	.uleb128 0x7
	.byte	0x8
	.long	0x12c4
	.uleb128 0x38
	.string	"QP"
	.byte	0x8
	.value	0x4aa
	.long	0x34
	.uleb128 0x2a
	.long	.LASF845
	.byte	0x8
	.value	0x4ac
	.long	0x3f6b
	.uleb128 0x7
	.byte	0x8
	.long	0x2b4c
	.uleb128 0x2a
	.long	.LASF405
	.byte	0x8
	.value	0x4ad
	.long	0x3f7d
	.uleb128 0x7
	.byte	0x8
	.long	0x2ae8
	.uleb128 0x2a
	.long	.LASF846
	.byte	0x8
	.value	0x4b7
	.long	0x3f8f
	.uleb128 0x7
	.byte	0x8
	.long	0x1be1
	.uleb128 0x38
	.string	"img"
	.byte	0x8
	.value	0x4b8
	.long	0x3fa1
	.uleb128 0x7
	.byte	0x8
	.long	0x2719
	.uleb128 0x2a
	.long	.LASF847
	.byte	0x8
	.value	0x4b9
	.long	0x3fb3
	.uleb128 0x7
	.byte	0x8
	.long	0x293e
	.uleb128 0x38
	.string	"snr"
	.byte	0x8
	.value	0x4bb
	.long	0x3fc5
	.uleb128 0x7
	.byte	0x8
	.long	0x1386
	.uleb128 0x2a
	.long	.LASF848
	.byte	0x8
	.value	0x4c2
	.long	0x34
	.uleb128 0x2a
	.long	.LASF849
	.byte	0x8
	.value	0x5a4
	.long	0x34
	.uleb128 0x2a
	.long	.LASF850
	.byte	0x8
	.value	0x5a5
	.long	0x34
	.uleb128 0x1c
	.long	0x34
	.long	0x3ffe
	.uleb128 0x18
	.long	0x3d4a
	.byte	0
	.uleb128 0x39
	.long	.LASF851
	.byte	0xb
	.byte	0x1a
	.long	0x4009
	.uleb128 0x7
	.byte	0x8
	.long	0x3fef
	.uleb128 0x39
	.long	.LASF852
	.byte	0xc
	.byte	0xde
	.long	0x34
	.uleb128 0x39
	.long	.LASF853
	.byte	0xc
	.byte	0xdf
	.long	0x34
	.uleb128 0x4
	.long	0x518
	.long	0x4035
	.uleb128 0x5
	.long	0x75
	.byte	0xff
	.byte	0
	.uleb128 0x39
	.long	.LASF854
	.byte	0x1
	.byte	0x36
	.long	0x4025
	.uleb128 0x3a
	.long	.LASF855
	.byte	0x1
	.byte	0x58
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	last_P_no
	.uleb128 0x3a
	.long	.LASF856
	.byte	0x1
	.byte	0x59
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	last_P_no_frm
	.uleb128 0x3a
	.long	.LASF857
	.byte	0x1
	.byte	0x5a
	.long	0x8e
	.uleb128 0x9
	.byte	0x3
	.quad	last_P_no_fld
	.uleb128 0x3a
	.long	.LASF858
	.byte	0x1
	.byte	0x67
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_picture
	.uleb128 0x3a
	.long	.LASF859
	.byte	0x1
	.byte	0x68
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_frame_picture
	.uleb128 0x3a
	.long	.LASF860
	.byte	0x1
	.byte	0x69
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_frame_picture2
	.uleb128 0x3a
	.long	.LASF861
	.byte	0x1
	.byte	0x6a
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_frame_picture3
	.uleb128 0x3a
	.long	.LASF862
	.byte	0x1
	.byte	0x6b
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_top_picture
	.uleb128 0x3a
	.long	.LASF863
	.byte	0x1
	.byte	0x6c
	.long	0x2e07
	.uleb128 0x9
	.byte	0x3
	.quad	enc_bottom_picture
	.uleb128 0x3a
	.long	.LASF864
	.byte	0x1
	.byte	0x72
	.long	0x4112
	.uleb128 0x9
	.byte	0x3
	.quad	ONE_FOURTH_TAP
	.uleb128 0x8
	.long	0x118d
	.uleb128 0x2a
	.long	.LASF695
	.byte	0x1
	.value	0x111
	.long	0x3100
	.uleb128 0x2a
	.long	.LASF696
	.byte	0x1
	.value	0x112
	.long	0x2d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
.LASF150:
	.string	"PictureStructure"
.LASF527:
	.string	"i16offset"
.LASF710:
	.string	"dis_fld_u"
.LASF711:
	.string	"dis_fld_v"
.LASF327:
	.string	"LevelIDC"
.LASF709:
	.string	"dis_fld_y"
.LASF511:
	.string	"imgtr_last_P_fld"
.LASF567:
	.string	"TopFieldFlag"
.LASF816:
	.string	"top_pic"
.LASF320:
	.string	"snr_ut"
.LASF778:
	.string	"org_size_y"
.LASF381:
	.string	"of_mode"
.LASF757:
	.string	"impix_cr"
.LASF840:
	.string	"nextP_tr_fld"
.LASF387:
	.string	"InterSearch8x4"
.LASF660:
	.string	"is_output"
.LASF386:
	.string	"InterSearch8x8"
.LASF379:
	.string	"PocMemoryManagement"
.LASF456:
	.string	"nb_references"
.LASF787:
	.string	"symbol_size_in_bytes"
.LASF831:
	.string	"imgY_org_frm"
.LASF162:
	.string	"Ecodestrm_len"
.LASF181:
	.string	"transform_size_contexts"
.LASF434:
	.string	"DisplayEncParams"
.LASF391:
	.string	"Intra4x4ParDisable"
.LASF158:
	.string	"Ebuffer"
.LASF253:
	.string	"predict_qp"
.LASF822:
	.string	"imgUV_org"
.LASF412:
	.string	"MbInterlace"
.LASF859:
	.string	"enc_frame_picture"
.LASF56:
	.string	"nal_hrd_parameters"
.LASF728:
	.string	"bit_frame"
.LASF47:
	.string	"matrix_coefficients"
.LASF661:
	.string	"non_existing"
.LASF330:
	.string	"hadamard"
.LASF369:
	.string	"UseWeightedReferenceME"
.LASF689:
	.string	"SliceGroup"
.LASF59:
	.string	"low_delay_hrd_flag"
.LASF676:
	.string	"ref_id"
.LASF373:
	.string	"RDBSliceWeightOnly"
.LASF54:
	.string	"fixed_frame_rate_flag"
.LASF536:
	.string	"field_picture"
.LASF433:
	.string	"ReportFrameStats"
.LASF124:
	.string	"mb_adaptive_frame_field_flag"
.LASF656:
	.string	"bottom_ref_pic_num"
.LASF544:
	.string	"FrameHeightInMbs"
.LASF88:
	.string	"weighted_pred_flag"
.LASF262:
	.string	"byte_buf"
.LASF675:
	.string	"ref_pic_id"
.LASF182:
	.string	"MotionInfoContexts"
.LASF588:
	.string	"max_imgpel_value"
.LASF777:
	.string	"org_size_x"
.LASF338:
	.string	"GenerateMultiplePPS"
.LASF378:
	.string	"PyramidRefReorder"
.LASF847:
	.string	"stats"
.LASF11:
	.string	"time_t"
.LASF25:
	.string	"bit_rate_scale"
.LASF344:
	.string	"part_size"
.LASF813:
	.string	"prevtype"
.LASF645:
	.string	"pyramid_layer"
.LASF724:
	.string	"lambda_picture"
.LASF613:
	.string	"bit_ctr_I"
.LASF655:
	.string	"top_ref_pic_num"
.LASF156:
	.string	"Elow"
.LASF549:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF566:
	.string	"BasicUnitQP"
.LASF785:
	.string	"buf2img"
.LASF398:
	.string	"full_search"
.LASF612:
	.string	"bit_use_mode_Bframe"
.LASF263:
	.string	"stored_byte_pos"
.LASF441:
	.string	"ScalingListPresentFlag"
.LASF438:
	.string	"basicunit"
.LASF729:
	.string	"bit_field"
.LASF52:
	.string	"num_units_in_tick"
.LASF227:
	.string	"cbp_blk"
.LASF497:
	.string	"currentPicture"
.LASF137:
	.string	"ADAPTIVE_CODING"
.LASF465:
	.string	"height"
.LASF473:
	.string	"mb_y_intra"
.LASF602:
	.string	"bitrate"
.LASF432:
	.string	"LowPassForIntra8x8"
.LASF789:
	.string	"ui16"
.LASF325:
	.string	"SNRParameters"
.LASF692:
	.string	"prev_frame_no"
.LASF678:
	.string	"field_frame"
.LASF404:
	.string	"qpBRS2Offset"
.LASF683:
	.string	"max_size"
.LASF742:
	.string	"init_field"
.LASF409:
	.string	"LeakyBucketRateFile"
.LASF328:
	.string	"no_frames"
.LASF671:
	.string	"imgY_ups"
.LASF356:
	.string	"start_frame"
.LASF769:
	.string	"me_time"
.LASF649:
	.string	"top_poc"
.LASF48:
	.string	"chroma_location_info_present_flag"
.LASF509:
	.string	"imgtr_last_P_frm"
.LASF555:
	.string	"NumberofBasicUnitHeaderBits"
.LASF741:
	.string	"init_frame"
.LASF719:
	.string	"bottom"
.LASF22:
	.string	"TRUE"
.LASF420:
	.string	"NumFrameIn2ndIGOP"
.LASF841:
	.string	"nextP_tr_frm"
.LASF543:
	.string	"PicHeightInMapUnits"
.LASF76:
	.string	"pic_order_present_flag"
.LASF41:
	.string	"video_signal_type_present_flag"
.LASF300:
	.string	"bits_per_picture"
.LASF659:
	.string	"used_for_reference"
.LASF209:
	.string	"value1"
.LASF210:
	.string	"value2"
.LASF274:
	.string	"ee_cabac"
.LASF281:
	.string	"num_mb"
.LASF446:
	.string	"img_width_cr"
.LASF257:
	.string	"LFBetaOffset"
.LASF286:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF290:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF783:
	.string	"img_size_x_cr"
.LASF603:
	.string	"bit_ctr"
.LASF791:
	.string	"ui32"
.LASF592:
	.string	"lossless_qpprime_flag"
.LASF718:
	.string	"frame_picture"
.LASF116:
	.string	"offset_for_top_to_bottom_field"
.LASF264:
	.string	"stored_bits_to_go"
.LASF460:
	.string	"structure"
.LASF202:
	.string	"difference_of_pic_nums_minus1"
.LASF123:
	.string	"frame_mbs_only_flag"
.LASF506:
	.string	"direct_intraP_ref"
.LASF255:
	.string	"LFDisableIdc"
.LASF610:
	.string	"intra_chroma_mode"
.LASF213:
	.string	"mapping"
.LASF425:
	.string	"SPPercentageThreshold"
.LASF175:
	.string	"mb_type_contexts"
.LASF233:
	.string	"lf_beta_offset"
.LASF492:
	.string	"mprr_2"
.LASF493:
	.string	"mprr_3"
.LASF640:
	.string	"RD_DATA"
.LASF132:
	.string	"vui_seq_parameters"
.LASF125:
	.string	"direct_8x8_inference_flag"
.LASF245:
	.string	"all_blk_8x8"
.LASF385:
	.string	"InterSearch8x16"
.LASF835:
	.string	"intras"
.LASF99:
	.string	"pic_parameter_set_rbsp_t"
.LASF858:
	.string	"enc_picture"
.LASF786:
	.string	"imgX"
.LASF668:
	.string	"imgY"
.LASF20:
	.string	"byte"
.LASF494:
	.string	"mprr_c"
.LASF750:
	.string	"out4Y"
.LASF770:
	.string	"ReportFirstframe"
.LASF629:
	.string	"em_prev_bits_fld"
.LASF617:
	.string	"bitrate_P"
.LASF548:
	.string	"nal_reference_idc"
.LASF382:
	.string	"partition_mode"
.LASF853:
	.string	"Pprev_bits"
.LASF781:
	.string	"org_size_x_cr"
.LASF33:
	.string	"time_offset_length"
.LASF632:
	.string	"bit_ctr_parametersets_n"
.LASF529:
	.string	"old_layer"
.LASF832:
	.string	"imgUV_org_frm"
.LASF752:
	.string	"find_snr"
.LASF569:
	.string	"FieldFrame"
.LASF623:
	.string	"bit_use_header"
.LASF799:
	.string	"bytes_y"
.LASF466:
	.string	"height_cr"
.LASF521:
	.string	"num_ref_idx_l0_active"
.LASF475:
	.string	"ipredmode"
.LASF237:
	.string	"mbAddrA"
.LASF238:
	.string	"mbAddrB"
.LASF239:
	.string	"mbAddrC"
.LASF240:
	.string	"mbAddrD"
.LASF795:
	.string	"xs_cr"
.LASF217:
	.string	"currSEnr"
.LASF584:
	.string	"bitdepth_luma_qp_scale"
.LASF121:
	.string	"pic_width_in_mbs_minus1"
.LASF442:
	.string	"FMEnable"
.LASF276:
	.string	"DataPartition"
.LASF225:
	.string	"intra_pred_modes"
.LASF193:
	.string	"TextureInfoContexts"
.LASF79:
	.string	"run_length_minus1"
.LASF90:
	.string	"pic_init_qp_minus26"
.LASF372:
	.string	"RDPSliceWeightOnly"
.LASF639:
	.string	"refar"
.LASF581:
	.string	"pic_unit_size_on_disk"
.LASF208:
	.string	"type"
.LASF91:
	.string	"pic_init_qs_minus26"
.LASF749:
	.string	"maxy"
.LASF773:
	.string	"ReportRB"
.LASF522:
	.string	"num_ref_idx_l1_active"
.LASF589:
	.string	"max_imgpel_value_uv"
.LASF246:
	.string	"luma_transform_size_8x8_flag"
.LASF716:
	.string	"slice"
.LASF342:
	.string	"intra_upd"
.LASF545:
	.string	"PicHeightInMbs"
.LASF774:
	.string	"ReportB"
.LASF161:
	.string	"Ecodestrm"
.LASF359:
	.string	"direct_spatial_mv_pred_flag"
.LASF842:
	.string	"tot_time"
.LASF687:
	.string	"temp"
.LASF679:
	.string	"bottom_field"
.LASF819:
	.string	"frame_pic2"
.LASF714:
	.string	"currStream"
.LASF772:
	.string	"ReportSP"
.LASF443:
	.string	"BitDepthLuma"
.LASF288:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF292:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF458:
	.string	"total_number_mb"
.LASF593:
	.string	"mb_cr_size_x"
.LASF594:
	.string	"mb_cr_size_y"
.LASF855:
	.string	"last_P_no"
.LASF29:
	.string	"vbr_cbr_flag"
.LASF145:
	.string	"BITS_DELTA_QUANT_MB"
.LASF583:
	.string	"bitdepth_chroma"
.LASF275:
	.string	"writeSyntaxElement"
.LASF578:
	.string	"last_pic_bottom_field"
.LASF311:
	.string	"dec_mb_mode"
.LASF399:
	.string	"last_frame"
.LASF580:
	.string	"pre_frame_num"
.LASF670:
	.string	"imgY_11_w"
.LASF72:
	.string	"entropy_coding_mode_flag"
.LASF558:
	.string	"NumberofMBTextureBits"
.LASF377:
	.string	"ExplicitPyramidFormat"
.LASF67:
	.string	"max_dec_frame_buffering"
.LASF1:
	.string	"unsigned char"
.LASF476:
	.string	"ipredmode8x8"
.LASF501:
	.string	"quad"
.LASF690:
	.string	"code_a_picture"
.LASF542:
	.string	"PicWidthInMbs"
.LASF814:
	.string	"skip_encode"
.LASF17:
	.string	"millitm"
.LASF97:
	.string	"redundant_pic_cnt_present_flag"
.LASF14:
	.string	"float"
.LASF361:
	.string	"BiPredMotionEstimation"
.LASF215:
	.string	"SyntaxElement"
.LASF628:
	.string	"em_prev_bits_frm"
.LASF27:
	.string	"bit_rate_value"
.LASF519:
	.string	"bipred_mv1"
.LASF520:
	.string	"bipred_mv2"
.LASF107:
	.string	"seq_scaling_matrix_present_flag"
.LASF642:
	.string	"display_no"
.LASF163:
	.string	"ElowS"
.LASF436:
	.string	"bit_rate"
.LASF720:
	.string	"old_pic_type"
.LASF467:
	.string	"height_cr_frame"
.LASF284:
	.string	"tex_ctx"
.LASF223:
	.string	"mb_available_left"
.LASF459:
	.string	"current_slice_nr"
.LASF277:
	.string	"picture_id"
.LASF596:
	.string	"auto_crop_right"
.LASF599:
	.string	"quant0"
.LASF600:
	.string	"quant1"
.LASF383:
	.string	"InterSearch16x16"
.LASF143:
	.string	"BITS_COEFF_Y_MB"
.LASF455:
	.string	"number"
.LASF721:
	.string	"TopFieldBits"
.LASF764:
	.string	"mb_nr"
.LASF563:
	.string	"TotalQpforPPicture"
.LASF190:
	.string	"abs_contexts"
.LASF186:
	.string	"bcbp_contexts"
.LASF94:
	.string	"cr_qp_index_offset"
.LASF662:
	.string	"size_x"
.LASF111:
	.string	"log2_max_frame_num_minus4"
.LASF561:
	.string	"NumberofCodedPFrame"
.LASF221:
	.string	"bitcounter"
.LASF185:
	.string	"cbp_contexts"
.LASF641:
	.string	"slice_type"
.LASF657:
	.string	"pic_num"
.LASF817:
	.string	"bottom_pic"
.LASF811:
	.string	"rd_qp"
.LASF422:
	.string	"LFSendParameters"
.LASF224:
	.string	"mb_type"
.LASF839:
	.string	"frame_no"
.LASF638:
	.string	"mode"
.LASF272:
	.string	"datapartition"
.LASF229:
	.string	"b8pdir"
.LASF470:
	.string	"is_intra_block"
.LASF251:
	.string	"prev_delta_qp"
.LASF851:
	.string	"WriteNALU"
.LASF481:
	.string	"block_x"
.LASF482:
	.string	"block_y"
.LASF737:
	.string	"snr_frame_u"
.LASF738:
	.string	"snr_frame_v"
.LASF736:
	.string	"snr_frame_y"
.LASF195:
	.string	"RMPNIbuffer_s"
.LASF450:
	.string	"UseExplicitLambdaParams"
.LASF260:
	.string	"byte_pos"
.LASF247:
	.string	"NoMbPartLessThan8x8Flag"
.LASF776:
	.string	"PaddAutoCropBorders"
.LASF812:
	.string	"previntras"
.LASF98:
	.string	"vui_pic_parameters_flag"
.LASF393:
	.string	"Intra4x4DirDisable"
.LASF73:
	.string	"transform_8x8_mode_flag"
.LASF499:
	.string	"mb_data"
.LASF26:
	.string	"cpb_size_scale"
.LASF39:
	.string	"overscan_info_present_flag"
.LASF421:
	.string	"RandomIntraMBRefresh"
.LASF58:
	.string	"vcl_hrd_parameters"
.LASF502:
	.string	"intra_block"
.LASF833:
	.string	"imgY_com"
.LASF852:
	.string	"Iprev_bits"
.LASF535:
	.string	"delta_pic_order_cnt"
.LASF348:
	.string	"infile_header"
.LASF609:
	.string	"mode_use_transform_4x4"
.LASF688:
	.string	"NumberOfCodedMBs"
.LASF305:
	.string	"resY"
.LASF865:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF138:
	.string	"BITS_HEADER"
.LASF495:
	.string	"cofAC"
.LASF663:
	.string	"size_y"
.LASF85:
	.string	"slice_group_id"
.LASF362:
	.string	"BiPredMERefinements"
.LASF691:
	.string	"encode_one_frame"
.LASF864:
	.string	"ONE_FOURTH_TAP"
.LASF92:
	.string	"chroma_qp_index_offset"
.LASF197:
	.string	"Data"
.LASF568:
	.string	"FieldControl"
.LASF538:
	.string	"bottompoc"
.LASF304:
	.string	"Picture"
.LASF802:
	.string	"rgb_input"
.LASF677:
	.string	"moving_block"
.LASF827:
	.string	"imgY_org_top"
.LASF717:
	.string	"currSlice"
.LASF606:
	.string	"bit_ctr_emulationprevention"
.LASF248:
	.string	"bi_pred_me"
.LASF848:
	.string	"p_in"
.LASF24:
	.string	"cpb_cnt"
.LASF205:
	.string	"max_long_term_frame_idx_plus1"
.LASF234:
	.string	"c_ipred_mode"
.LASF526:
	.string	"buf_cycle"
.LASF686:
	.string	"NALU_t"
.LASF64:
	.string	"log2_max_mv_length_vertical"
.LASF326:
	.string	"ProfileIDC"
.LASF667:
	.string	"coded_frame"
.LASF214:
	.string	"writing"
.LASF364:
	.string	"BiPredMESubPel"
.LASF335:
	.string	"B_List1_refs"
.LASF93:
	.string	"cb_qp_index_offset"
.LASF866:
	.string	"image.c"
.LASF403:
	.string	"qp02"
.LASF534:
	.string	"delta_pic_order_cnt_bottom"
.LASF232:
	.string	"lf_alpha_c0_offset"
.LASF131:
	.string	"vui_parameters_present_flag"
.LASF307:
	.string	"decref"
.LASF664:
	.string	"size_x_cr"
.LASF410:
	.string	"LeakyBucketParamFile"
.LASF102:
	.string	"constrained_set1_flag"
.LASF49:
	.string	"chroma_location_frame"
.LASF708:
	.string	"dis_fld"
.LASF334:
	.string	"B_List0_refs"
.LASF35:
	.string	"aspect_ratio_info_present_flag"
.LASF83:
	.string	"slice_group_change_rate_minus1"
.LASF633:
	.string	"StatParameters"
.LASF751:
	.string	"ref11"
.LASF850:
	.string	"start_tr_in_this_IGOP"
.LASF650:
	.string	"bottom_poc"
.LASF127:
	.string	"frame_cropping_rect_left_offset"
.LASF693:
	.string	"consecutive_non_reference_pictures"
.LASF524:
	.string	"top_field"
.LASF496:
	.string	"cofDC"
.LASF552:
	.string	"dec_ref_pic_marking_buffer"
.LASF270:
	.string	"write_flag"
.LASF101:
	.string	"constrained_set0_flag"
.LASF823:
	.string	"img4Y_tmp"
.LASF489:
	.string	"opix_c_x"
.LASF490:
	.string	"opix_c_y"
.LASF191:
	.string	"fld_map_contexts"
.LASF45:
	.string	"colour_primaries"
.LASF77:
	.string	"num_slice_groups_minus1"
.LASF309:
	.string	"RefBlock"
.LASF712:
	.string	"pic_type"
.LASF513:
	.string	"p_interval"
.LASF800:
	.string	"bytes_uv"
.LASF135:
	.string	"FRAME_CODING"
.LASF820:
	.string	"frame_pic3"
.LASF849:
	.string	"start_frame_no_in_this_IGOP"
.LASF50:
	.string	"chroma_location_field"
.LASF684:
	.string	"nal_unit_type"
.LASF426:
	.string	"SliceGroupConfigFileName"
.LASF439:
	.string	"channel_type"
.LASF550:
	.string	"no_output_of_prior_pics_flag"
.LASF565:
	.string	"MADofMB"
.LASF203:
	.string	"long_term_pic_num"
.LASF37:
	.string	"sar_width"
.LASF61:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF500:
	.string	"MB_SyntaxElements"
.LASF587:
	.string	"dc_pred_value"
.LASF154:
	.string	"SP_SLICE"
.LASF682:
	.string	"startcodeprefix_len"
.LASF343:
	.string	"blc_size"
.LASF152:
	.string	"B_SLICE"
.LASF395:
	.string	"Intra16x16PlaneDisable"
.LASF140:
	.string	"BITS_MB_MODE"
.LASF868:
	.string	"MbAffPostProc"
.LASF179:
	.string	"delta_qp_contexts"
.LASF267:
	.string	"byte_pos_skip"
.LASF170:
	.string	"EncodingEnvironment"
.LASF310:
	.string	"status_map"
.LASF368:
	.string	"WeightedBiprediction"
.LASF725:
	.string	"bframe"
.LASF780:
	.string	"img_size_y"
.LASF485:
	.string	"pix_c_x"
.LASF70:
	.string	"pic_parameter_set_id"
.LASF280:
	.string	"max_part_nr"
.LASF113:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF347:
	.string	"UseConstrainedIntraPred"
.LASF869:
	.string	"copy_params"
.LASF619:
	.string	"mode_use"
.LASF540:
	.string	"ThisPOC"
.LASF477:
	.string	"cod_counter"
.LASF63:
	.string	"max_bits_per_mb_denom"
.LASF230:
	.string	"cbp_bits"
.LASF486:
	.string	"pix_c_y"
.LASF298:
	.string	"idr_flag"
.LASF615:
	.string	"bit_ctr_B"
.LASF243:
	.string	"mbAvailC"
.LASF468:
	.string	"subblock_x"
.LASF469:
	.string	"subblock_y"
.LASF614:
	.string	"bit_ctr_P"
.LASF685:
	.string	"forbidden_bit"
.LASF829:
	.string	"imgUV_org_top"
.LASF133:
	.string	"seq_parameter_set_rbsp_t"
.LASF117:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF604:
	.string	"bit_ctr_n"
.LASF579:
	.string	"last_has_mmco_5"
.LASF557:
	.string	"TotalMADBasicUnit"
.LASF169:
	.string	"Ecodestrm_lenS"
.LASF808:
	.string	"nalu"
.LASF611:
	.string	"mode_use_Bframe"
.LASF510:
	.string	"imgtr_next_P_fld"
.LASF144:
	.string	"BITS_COEFF_UV_MB"
.LASF761:
	.string	"bits_slice"
.LASF376:
	.string	"PyramidCoding"
.LASF704:
	.string	"dis_frm"
.LASF194:
	.string	"timeb"
.LASF765:
	.string	"currMB"
.LASF402:
	.string	"qp2start"
.LASF531:
	.string	"redundant_pic_cnt"
.LASF464:
	.string	"width_cr"
.LASF220:
	.string	"qpsp"
.LASF796:
	.string	"ys_cr"
.LASF870:
	.string	"dummy_slice_too_big"
.LASF295:
	.string	"field_ctx"
.LASF834:
	.string	"imgUV_com"
.LASF120:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF715:
	.string	"partition"
.LASF357:
	.string	"successive_Bframe"
.LASF622:
	.string	"bit_use_mb_type"
.LASF407:
	.string	"nobskip"
.LASF355:
	.string	"idr_enable"
.LASF148:
	.string	"TOP_FIELD"
.LASF575:
	.string	"bot_MB"
.LASF843:
	.string	"errortext"
.LASF119:
	.string	"num_ref_frames"
.LASF627:
	.string	"bit_use_delta_quant"
.LASF10:
	.string	"__time_t"
.LASF860:
	.string	"enc_frame_picture2"
.LASF810:
	.string	"second_qp"
.LASF28:
	.string	"cpb_size_value"
.LASF192:
	.string	"fld_last_contexts"
.LASF730:
	.string	"distortion_fld"
.LASF674:
	.string	"ref_idx"
.LASF826:
	.string	"mb_adaptive"
.LASF746:
	.string	"xsize"
.LASF282:
	.string	"partArr"
.LASF7:
	.string	"sizetype"
.LASF532:
	.string	"MbaffFrameFlag"
.LASF105:
	.string	"level_idc"
.LASF794:
	.string	"HeaderSize"
.LASF112:
	.string	"pic_order_cnt_type"
.LASF440:
	.string	"ScalingMatrixPresentFlag"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF249:
	.string	"actj"
.LASF430:
	.string	"model_number"
.LASF256:
	.string	"LFAlphaC0Offset"
.LASF115:
	.string	"offset_for_non_ref_pic"
.LASF384:
	.string	"InterSearch16x8"
.LASF821:
	.string	"imgY_org"
.LASF173:
	.string	"count"
.LASF462:
	.string	"framerate"
.LASF491:
	.string	"mprr"
.LASF34:
	.string	"hrd_parameters_t"
.LASF658:
	.string	"is_long_term"
.LASF804:
	.string	"put_buffer_frame"
.LASF31:
	.string	"cpb_removal_delay_length_minus1"
.LASF573:
	.string	"BasicUnit"
.LASF504:
	.string	"fld_flag"
.LASF397:
	.string	"FrameRate"
.LASF218:
	.string	"slice_nr"
.LASF160:
	.string	"Ebits_to_follow"
.LASF417:
	.string	"NoOfDecoders"
.LASF172:
	.string	"state"
.LASF411:
	.string	"PicInterlace"
.LASF454:
	.string	"InputParameters"
.LASF46:
	.string	"transfer_characteristics"
.LASF444:
	.string	"BitDepthChroma"
.LASF268:
	.string	"bits_to_go_skip"
.LASF437:
	.string	"SeinitialQP"
.LASF184:
	.string	"cipr_contexts"
.LASF846:
	.string	"input"
.LASF505:
	.string	"rd_pass"
.LASF559:
	.string	"NumberofMBHeaderBits"
.LASF142:
	.string	"BITS_CBP_MB"
.LASF577:
	.string	"DeblockCall"
.LASF457:
	.string	"current_mb_nr"
.LASF508:
	.string	"imgtr_next_P_frm"
.LASF654:
	.string	"frm_ref_pic_num"
.LASF828:
	.string	"imgY_org_bot"
.LASF200:
	.string	"DecRefPicMarking_s"
.LASF206:
	.string	"DecRefPicMarking_t"
.LASF572:
	.string	"NumberofCodedMacroBlocks"
.LASF62:
	.string	"max_bytes_per_pic_denom"
.LASF51:
	.string	"timing_info_present_flag"
.LASF406:
	.string	"disthres"
.LASF261:
	.string	"bits_to_go"
.LASF418:
	.string	"RestrictRef"
.LASF601:
	.string	"bitr"
.LASF713:
	.string	"bits"
.LASF16:
	.string	"time"
.LASF666:
	.string	"chroma_vector_adjustment"
.LASF784:
	.string	"img_size_y_cr"
.LASF405:
	.string	"rdopt"
.LASF807:
	.string	"writeUnit"
.LASF755:
	.string	"diff_v"
.LASF591:
	.string	"num_cdc_coeff"
.LASF6:
	.string	"long int"
.LASF258:
	.string	"skip_flag"
.LASF168:
	.string	"EcodestrmS"
.LASF289:
	.string	"long_term_pic_idx_l0"
.LASF293:
	.string	"long_term_pic_idx_l1"
.LASF389:
	.string	"InterSearch4x4"
.LASF95:
	.string	"deblocking_filter_control_present_flag"
.LASF388:
	.string	"InterSearch4x8"
.LASF479:
	.string	"mb_x"
.LASF607:
	.string	"b8_mode_0_use"
.LASF212:
	.string	"context"
.LASF626:
	.string	"bit_use_coeffC"
.LASF745:
	.string	"Fullpel"
.LASF533:
	.string	"pic_order_cnt_lsb"
.LASF235:
	.string	"IntraChromaPredModeFlag"
.LASF198:
	.string	"Next"
.LASF805:
	.string	"put_buffer_top"
.LASF564:
	.string	"NumberofPPicture"
.LASF625:
	.string	"bit_use_coeffY"
.LASF652:
	.string	"order_num"
.LASF396:
	.string	"ChromaIntraDisable"
.LASF672:
	.string	"imgY_ups_w"
.LASF226:
	.string	"intra_pred_modes8x8"
.LASF782:
	.string	"org_size_y_cr"
.LASF498:
	.string	"currentSlice"
.LASF871:
	.string	"CalculateFrameNumber"
.LASF19:
	.string	"dstflag"
.LASF427:
	.string	"slice_group_change_cycle"
.LASF681:
	.string	"StorablePicture"
.LASF149:
	.string	"BOTTOM_FIELD"
.LASF428:
	.string	"redundant_slice_flag"
.LASF157:
	.string	"Erange"
.LASF178:
	.string	"ref_no_contexts"
.LASF763:
	.string	"bot_block"
.LASF862:
	.string	"enc_top_picture"
.LASF768:
	.string	"ReportNALNonVLCBits"
.LASF818:
	.string	"frame_pic"
.LASF0:
	.string	"long unsigned int"
.LASF771:
	.string	"ReportIntra"
.LASF129:
	.string	"frame_cropping_rect_top_offset"
.LASF562:
	.string	"NumberofGOP"
.LASF541:
	.string	"frame_num"
.LASF472:
	.string	"mb_y_upd"
.LASF165:
	.string	"EbufferS"
.LASF164:
	.string	"ErangeS"
.LASF108:
	.string	"seq_scaling_list_present_flag"
.LASF297:
	.string	"no_slices"
.LASF815:
	.string	"sec_pps"
.LASF797:
	.string	"imgsize_y"
.LASF337:
	.string	"ResendPPS"
.LASF100:
	.string	"profile_idc"
.LASF294:
	.string	"slice_too_big"
.LASF516:
	.string	"bw_mb_mode"
.LASF423:
	.string	"SparePictureOption"
.LASF8:
	.string	"char"
.LASF697:
	.string	"ltime1"
.LASF698:
	.string	"ltime2"
.LASF651:
	.string	"frame_poc"
.LASF401:
	.string	"qpB2"
.LASF250:
	.string	"prev_qp"
.LASF308:
	.string	"decY_best"
.LASF523:
	.string	"field_mode"
.LASF452:
	.string	"QOffsetMatrixFile"
.LASF367:
	.string	"WeightedPrediction"
.LASF66:
	.string	"max_dec_frame_reordering"
.LASF394:
	.string	"Intra16x16ParDisable"
.LASF824:
	.string	"active_pps"
.LASF283:
	.string	"mot_ctx"
.LASF595:
	.string	"chroma_qp_offset"
.LASF673:
	.string	"imgUV"
.LASF32:
	.string	"dpb_output_delay_length_minus1"
.LASF130:
	.string	"frame_cropping_rect_bottom_offset"
.LASF40:
	.string	"overscan_appropriate_flag"
.LASF349:
	.string	"infile"
.LASF43:
	.string	"video_full_range_flag"
.LASF201:
	.string	"memory_management_control_operation"
.LASF340:
	.string	"img_height"
.LASF30:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF448:
	.string	"lossless_qpprime_y_zero_flag"
.LASF71:
	.string	"seq_parameter_set_id"
.LASF141:
	.string	"BITS_INTER_MB"
.LASF453:
	.string	"OffsetMatrixPresentFlag"
.LASF653:
	.string	"ref_pic_num"
.LASF57:
	.string	"vcl_hrd_parameters_present_flag"
.LASF574:
	.string	"write_macroblock"
.LASF857:
	.string	"last_P_no_fld"
.LASF643:
	.string	"reference_idc"
.LASF537:
	.string	"toppoc"
.LASF196:
	.string	"RMPNI"
.LASF554:
	.string	"NumberofTextureBits"
.LASF793:
	.string	"FrameNoInFile"
.LASF38:
	.string	"sar_height"
.LASF82:
	.string	"slice_group_change_direction_flag"
.LASF760:
	.string	"find_distortion"
.LASF696:
	.string	"total_frame_buffer"
.LASF187:
	.string	"map_contexts"
.LASF809:
	.string	"rdPictureCoding"
.LASF350:
	.string	"outfile"
.LASF332:
	.string	"search_range"
.LASF431:
	.string	"AllowTransform8x8"
.LASF702:
	.string	"bits_frm"
.LASF375:
	.string	"BRefPictures"
.LASF553:
	.string	"NumberofHeaderBits"
.LASF507:
	.string	"pstruct_next_P"
.LASF608:
	.string	"mode_use_transform_8x8"
.LASF830:
	.string	"imgUV_org_bot"
.LASF620:
	.string	"bit_use_mode"
.LASF176:
	.string	"b8_type_contexts"
.LASF514:
	.string	"b_frame_to_code"
.LASF560:
	.string	"NumberofCodedBFrame"
.LASF269:
	.string	"streamBuffer"
.LASF792:
	.string	"ReadOneFrame"
.LASF296:
	.string	"Slice"
.LASF87:
	.string	"num_ref_idx_l1_active_minus1"
.LASF12:
	.string	"int64_t"
.LASF525:
	.string	"mvscale"
.LASF216:
	.string	"macroblock"
.LASF744:
	.string	"Fourthpel"
.LASF366:
	.string	"qpsp_pred"
.LASF345:
	.string	"slice_mode"
.LASF701:
	.string	"tmp_time"
.LASF352:
	.string	"TraceFile"
.LASF766:
	.string	"list_offset"
.LASF582:
	.string	"bitdepth_luma"
.LASF231:
	.string	"lf_disable"
.LASF748:
	.string	"UnifiedOneForthPix"
.LASF435:
	.string	"RCEnable"
.LASF706:
	.string	"dis_frm_u"
.LASF707:
	.string	"dis_frm_v"
.LASF339:
	.string	"img_width"
.LASF705:
	.string	"dis_frm_y"
.LASF15:
	.string	"double"
.LASF512:
	.string	"b_interval"
.LASF726:
	.string	"snr_frame"
.LASF69:
	.string	"Valid"
.LASF287:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF291:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF285:
	.string	"rmpni_buffer"
.LASF483:
	.string	"pix_x"
.LASF484:
	.string	"pix_y"
.LASF735:
	.string	"frame_mode_buffer"
.LASF188:
	.string	"last_contexts"
.LASF312:
	.string	"Decoders"
.LASF189:
	.string	"one_contexts"
.LASF278:
	.string	"picture_type"
.LASF474:
	.string	"block_c_x"
.LASF801:
	.string	"framesize_in_bytes"
.LASF478:
	.string	"nz_coeff"
.LASF60:
	.string	"bitstream_restriction_flag"
.LASF159:
	.string	"Ebits_to_go"
.LASF360:
	.string	"directInferenceFlag"
.LASF44:
	.string	"colour_description_present_flag"
.LASF104:
	.string	"constrained_set3_flag"
.LASF183:
	.string	"ipr_contexts"
.LASF630:
	.string	"em_prev_bits"
.LASF727:
	.string	"snr_field"
.LASF863:
	.string	"enc_bottom_picture"
.LASF336:
	.string	"Log2MaxFrameNum"
.LASF487:
	.string	"opix_x"
.LASF488:
	.string	"opix_y"
.LASF23:
	.string	"Boolean"
.LASF775:
	.string	"ReportP"
.LASF733:
	.string	"snr_field_u"
.LASF734:
	.string	"snr_field_v"
.LASF445:
	.string	"img_height_cr"
.LASF732:
	.string	"snr_field_y"
.LASF429:
	.string	"context_init_method"
.LASF699:
	.string	"tstruct1"
.LASF700:
	.string	"tstruct2"
.LASF463:
	.string	"width"
.LASF461:
	.string	"max_num_references"
.LASF103:
	.string	"constrained_set2_flag"
.LASF503:
	.string	"fld_type"
.LASF374:
	.string	"SkipIntraInInterSlices"
.LASF408:
	.string	"NumberLeakyBuckets"
.LASF722:
	.string	"writeout_picture"
.LASF265:
	.string	"stored_byte_buf"
.LASF146:
	.string	"MAX_BITCOUNTER_MB"
.LASF317:
	.string	"snr_u1"
.LASF518:
	.string	"all_mv"
.LASF136:
	.string	"FIELD_CODING"
.LASF585:
	.string	"bitdepth_chroma_qp_scale"
.LASF605:
	.string	"bit_slice"
.LASF80:
	.string	"top_left"
.LASF754:
	.string	"diff_u"
.LASF302:
	.string	"distortion_u"
.LASF303:
	.string	"distortion_v"
.LASF323:
	.string	"snr_ua"
.LASF753:
	.string	"diff_y"
.LASF301:
	.string	"distortion_y"
.LASF703:
	.string	"bits_fld"
.LASF13:
	.string	"long long unsigned int"
.LASF318:
	.string	"snr_v1"
.LASF279:
	.string	"start_mb_nr"
.LASF228:
	.string	"b8mode"
.LASF96:
	.string	"constrained_intra_pred_flag"
.LASF167:
	.string	"Ebits_to_followS"
.LASF747:
	.string	"ysize"
.LASF180:
	.string	"mb_aff_contexts"
.LASF547:
	.string	"FrameSizeInMbs"
.LASF351:
	.string	"ReconFile"
.LASF743:
	.string	"GenerateFullPelRepresentation"
.LASF346:
	.string	"slice_argument"
.LASF353:
	.string	"QmatrixFile"
.LASF36:
	.string	"aspect_ratio_idc"
.LASF324:
	.string	"snr_va"
.LASF788:
	.string	"tmp16"
.LASF171:
	.string	"EncodingEnvironmentPtr"
.LASF845:
	.string	"gop_structure"
.LASF803:
	.string	"init_dec_ref_pic_marking_buffer"
.LASF122:
	.string	"pic_height_in_map_units_minus1"
.LASF321:
	.string	"snr_vt"
.LASF211:
	.string	"bitpattern"
.LASF759:
	.string	"max_pix_value_sqd_uv"
.LASF694:
	.string	"FrameNumberInFile"
.LASF151:
	.string	"P_SLICE"
.LASF528:
	.string	"layer"
.LASF419:
	.string	"NumFramesInELSubSeq"
.LASF21:
	.string	"FALSE"
.LASF447:
	.string	"rgb_input_flag"
.LASF631:
	.string	"bit_ctr_parametersets"
.LASF271:
	.string	"Bitstream"
.LASF128:
	.string	"frame_cropping_rect_right_offset"
.LASF424:
	.string	"SPDetectionThreshold"
.LASF695:
	.string	"Bit_Buffer"
.LASF259:
	.string	"Macroblock"
.LASF363:
	.string	"BiPredMESearchRange"
.LASF644:
	.string	"slice_qp"
.LASF838:
	.string	"Bframe_ctr"
.LASF53:
	.string	"time_scale"
.LASF400:
	.string	"qpN2"
.LASF570:
	.string	"Frame_Total_Number_MB"
.LASF18:
	.string	"timezone"
.LASF790:
	.string	"tmp32"
.LASF254:
	.string	"predict_error"
.LASF316:
	.string	"snr_y1"
.LASF530:
	.string	"NoResidueDirect"
.LASF392:
	.string	"Intra4x4DiagDisable"
.LASF354:
	.string	"intra_period"
.LASF480:
	.string	"mb_y"
.LASF166:
	.string	"Ebits_to_goS"
.LASF471:
	.string	"is_v_block"
.LASF329:
	.string	"jumpd"
.LASF139:
	.string	"BITS_TOTAL_MB"
.LASF648:
	.string	"storable_picture"
.LASF306:
	.string	"decY"
.LASF380:
	.string	"symbol_mode"
.LASF806:
	.string	"put_buffer_bot"
.LASF322:
	.string	"snr_ya"
.LASF147:
	.string	"FRAME"
.LASF252:
	.string	"prev_cbp"
.LASF624:
	.string	"tmp_bit_use_cbp"
.LASF756:
	.string	"impix"
.LASF9:
	.string	"long long int"
.LASF621:
	.string	"bit_use_stuffingBits"
.LASF844:
	.string	"decs"
.LASF319:
	.string	"snr_yt"
.LASF78:
	.string	"slice_group_map_type"
.LASF556:
	.string	"NumberofBasicUnitTextureBits"
.LASF414:
	.string	"LossRateA"
.LASF415:
	.string	"LossRateB"
.LASF416:
	.string	"LossRateC"
.LASF341:
	.string	"yuv_format"
.LASF551:
	.string	"long_term_reference_flag"
.LASF798:
	.string	"imgsize_uv"
.LASF358:
	.string	"qpBRSOffset"
.LASF646:
	.string	"pyramidPocDelta"
.LASF86:
	.string	"num_ref_idx_l0_active_minus1"
.LASF854:
	.string	"PicParSet"
.LASF89:
	.string	"weighted_bipred_idc"
.LASF134:
	.string	"int64"
.LASF571:
	.string	"IFLAG"
.LASF634:
	.string	"min_rdcost"
.LASF762:
	.string	"copy_rdopt_data"
.LASF598:
	.string	"ImageParameters"
.LASF236:
	.string	"mb_field"
.LASF758:
	.string	"max_pix_value_sqd"
.LASF413:
	.string	"IntraBottom"
.LASF68:
	.string	"vui_seq_parameters_t"
.LASF333:
	.string	"P_List0_refs"
.LASF636:
	.string	"rec_mbU"
.LASF637:
	.string	"rec_mbV"
.LASF635:
	.string	"rec_mbY"
.LASF586:
	.string	"bitdepth_lambda_scale"
.LASF204:
	.string	"long_term_frame_idx"
.LASF110:
	.string	"bit_depth_chroma_minus8"
.LASF177:
	.string	"mv_res_contexts"
.LASF618:
	.string	"bitrate_B"
.LASF616:
	.string	"bitrate_I"
.LASF517:
	.string	"pred_mv"
.LASF109:
	.string	"bit_depth_luma_minus8"
.LASF199:
	.string	"RMPNIbuffer_t"
.LASF65:
	.string	"log2_max_mv_length_horizontal"
.LASF546:
	.string	"PicSizeInMbs"
.LASF155:
	.string	"SI_SLICE"
.LASF739:
	.string	"prevP_no"
.LASF74:
	.string	"pic_scaling_matrix_present_flag"
.LASF740:
	.string	"nextP_no"
.LASF106:
	.string	"chroma_format_idc"
.LASF331:
	.string	"hadamardqpel"
.LASF647:
	.string	"GOP_DATA"
.LASF174:
	.string	"BiContextType"
.LASF153:
	.string	"I_SLICE"
.LASF273:
	.string	"bitstream"
.LASF451:
	.string	"LambdaWeight"
.LASF861:
	.string	"enc_frame_picture3"
.LASF731:
	.string	"field_mode_buffer"
.LASF837:
	.string	"Pframe_ctr"
.LASF55:
	.string	"nal_hrd_parameters_present_flag"
.LASF219:
	.string	"delta_qp"
.LASF42:
	.string	"video_format"
.LASF126:
	.string	"frame_cropping_flag"
.LASF241:
	.string	"mbAvailA"
.LASF242:
	.string	"mbAvailB"
.LASF222:
	.string	"mb_available_up"
.LASF244:
	.string	"mbAvailD"
.LASF515:
	.string	"fw_mb_mode"
.LASF449:
	.string	"residue_transform_flag"
.LASF856:
	.string	"last_P_no_frm"
.LASF539:
	.string	"framepoc"
.LASF118:
	.string	"offset_for_ref_frame"
.LASF3:
	.string	"unsigned int"
.LASF590:
	.string	"num_blk8x8_uv"
.LASF84:
	.string	"pic_size_in_map_units_minus1"
.LASF779:
	.string	"img_size_x"
.LASF669:
	.string	"imgY_11"
.LASF836:
	.string	"Iframe_ctr"
.LASF390:
	.string	"IntraDisableInterOnly"
.LASF114:
	.string	"delta_pic_order_always_zero_flag"
.LASF266:
	.string	"byte_buf_skip"
.LASF207:
	.string	"syntaxelement"
.LASF75:
	.string	"pic_scaling_list_present_flag"
.LASF5:
	.string	"short int"
.LASF767:
	.string	"copy_motion_vectors_MB"
.LASF867:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF665:
	.string	"size_y_cr"
.LASF723:
	.string	"picture_structure_decision"
.LASF314:
	.string	"snr_u"
.LASF315:
	.string	"snr_v"
.LASF680:
	.string	"frame"
.LASF313:
	.string	"snr_y"
.LASF825:
	.string	"active_sps"
.LASF597:
	.string	"auto_crop_bottom"
.LASF365:
	.string	"sp_periodicity"
.LASF371:
	.string	"RDPictureIntra"
.LASF576:
	.string	"write_macroblock_frame"
.LASF370:
	.string	"RDPictureDecision"
.LASF299:
	.string	"slices"
.LASF81:
	.string	"bottom_right"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
