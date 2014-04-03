	.file	"explicit_gop.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 explicit_gop.c -mtune=generic -march=x86-64 -g
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
.LC0:
	.string	"create_pyramid:curGOPLevelfrm"
	.align 8
.LC1:
	.string	"create_pyramid:curGOPLeveldist"
	.text
	.globl	create_pyramid
	.type	create_pyramid, @function
create_pyramid:
.LFB2:
	.file 1 "explicit_gop.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	.loc 1 35 0
	movq	input(%rip), %rax	# input, input.0
	movl	1236(%rax), %eax	# input.0_11->successive_Bframe, D.5509
	movl	%eax, %edx	# D.5509, tmp269
	shrl	$31, %edx	#, tmp269
	addl	%edx, %eax	# tmp269, tmp270
	sarl	%eax	# tmp271
	movl	%eax, -24(%rbp)	# tmp271, centerB
	.loc 1 37 0
	movq	input(%rip), %rax	# input, input.1
	movl	1320(%rax), %eax	# input.1_14->PyramidCoding, D.5509
	cmpl	$1, %eax	#, D.5509
	jne	.L2	#,
	.loc 1 39 0
	movl	$0, -56(%rbp)	#, i
	jmp	.L3	#
.L6:
	.loc 1 41 0
	movl	-56(%rbp), %eax	# i, tmp272
	cmpl	-24(%rbp), %eax	# centerB, tmp272
	jge	.L4	#,
	.loc 1 43 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.2
	movl	-56(%rbp), %eax	# i, tmp273
	movslq	%eax, %rdx	# tmp273, D.5510
	movq	%rdx, %rax	# D.5510, tmp274
	addq	%rax, %rax	# tmp274
	addq	%rdx, %rax	# D.5510, tmp274
	salq	$3, %rax	#, tmp275
	addq	%rcx, %rax	# gop_structure.2, D.5511
	movl	$1, (%rax)	#, _22->slice_type
	.loc 1 44 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.3
	movl	-56(%rbp), %eax	# i, tmp276
	movslq	%eax, %rdx	# tmp276, D.5510
	movq	%rdx, %rax	# D.5510, tmp277
	addq	%rax, %rax	# tmp277
	addq	%rdx, %rax	# D.5510, tmp277
	salq	$3, %rax	#, tmp278
	addq	%rcx, %rax	# gop_structure.3, D.5511
	movl	-56(%rbp), %edx	# i, tmp279
	addl	%edx, %edx	# D.5509
	addl	$1, %edx	#, D.5509
	movl	%edx, 4(%rax)	# D.5509, _26->display_no
	.loc 1 45 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.4
	movl	-56(%rbp), %eax	# i, tmp280
	movslq	%eax, %rdx	# tmp280, D.5510
	movq	%rdx, %rax	# D.5510, tmp281
	addq	%rax, %rax	# tmp281
	addq	%rdx, %rax	# D.5510, tmp281
	salq	$3, %rax	#, tmp282
	addq	%rcx, %rax	# gop_structure.4, D.5511
	movl	$0, 16(%rax)	#, _32->pyramid_layer
	.loc 1 46 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.5
	movl	-56(%rbp), %eax	# i, tmp283
	movslq	%eax, %rdx	# tmp283, D.5510
	movq	%rdx, %rax	# D.5510, tmp284
	addq	%rax, %rax	# tmp284
	addq	%rdx, %rax	# D.5510, tmp284
	salq	$3, %rax	#, tmp285
	addq	%rcx, %rax	# gop_structure.5, D.5511
	movl	$2, 8(%rax)	#, _36->reference_idc
	jmp	.L5	#
.L4:
	.loc 1 50 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.6
	movl	-56(%rbp), %eax	# i, tmp286
	movslq	%eax, %rdx	# tmp286, D.5510
	movq	%rdx, %rax	# D.5510, tmp287
	addq	%rax, %rax	# tmp287
	addq	%rdx, %rax	# D.5510, tmp287
	salq	$3, %rax	#, tmp288
	addq	%rcx, %rax	# gop_structure.6, D.5511
	movl	$1, (%rax)	#, _40->slice_type
	.loc 1 51 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.7
	movl	-56(%rbp), %eax	# i, tmp289
	movslq	%eax, %rdx	# tmp289, D.5510
	movq	%rdx, %rax	# D.5510, tmp290
	addq	%rax, %rax	# tmp290
	addq	%rdx, %rax	# D.5510, tmp290
	salq	$3, %rax	#, tmp291
	addq	%rcx, %rax	# gop_structure.7, D.5511
	movl	-24(%rbp), %edx	# centerB, tmp292
	movl	-56(%rbp), %ecx	# i, tmp293
	subl	%edx, %ecx	# tmp292, D.5509
	movl	%ecx, %edx	# D.5509, D.5509
	addl	%edx, %edx	# D.5509
	movl	%edx, 4(%rax)	# D.5509, _44->display_no
	.loc 1 52 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.8
	movl	-56(%rbp), %eax	# i, tmp294
	movslq	%eax, %rdx	# tmp294, D.5510
	movq	%rdx, %rax	# D.5510, tmp295
	addq	%rax, %rax	# tmp295
	addq	%rdx, %rax	# D.5510, tmp295
	salq	$3, %rax	#, tmp296
	addq	%rcx, %rax	# gop_structure.8, D.5511
	movl	$1, 16(%rax)	#, _50->pyramid_layer
	.loc 1 53 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.9
	movl	-56(%rbp), %eax	# i, tmp297
	movslq	%eax, %rdx	# tmp297, D.5510
	movq	%rdx, %rax	# D.5510, tmp298
	addq	%rax, %rax	# tmp298
	addq	%rdx, %rax	# D.5510, tmp298
	salq	$3, %rax	#, tmp299
	addq	%rcx, %rax	# gop_structure.9, D.5511
	movl	$0, 8(%rax)	#, _54->reference_idc
.L5:
	.loc 1 39 0
	addl	$1, -56(%rbp)	#, i
.L3:
	.loc 1 39 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.10
	movl	1236(%rax), %eax	# input.10_17->successive_Bframe, D.5509
	cmpl	-56(%rbp), %eax	# i, D.5509
	jg	.L6	#,
	jmp	.L1	#
.L2:
.LBB2:
	.loc 1 61 0 is_stmt 1
	movl	$0, -48(%rbp)	#, GOPlevels
	.loc 1 62 0
	movq	input(%rip), %rax	# input, input.11
	movl	1236(%rax), %eax	# input.11_57->successive_Bframe, tmp300
	movl	%eax, -44(%rbp)	# tmp300, Bframes
	.loc 1 64 0
	movl	-48(%rbp), %eax	# GOPlevels, tmp301
	movl	%eax, -40(%rbp)	# tmp301, curlevel
	.loc 1 65 0
	movq	input(%rip), %rax	# input, input.12
	movl	1236(%rax), %eax	# input.12_60->successive_Bframe, tmp302
	movl	%eax, -36(%rbp)	# tmp302, prvlevelrefs
	.loc 1 66 0
	movq	input(%rip), %rax	# input, input.13
	movl	1236(%rax), %eax	# input.13_62->successive_Bframe, tmp303
	movl	%eax, -32(%rbp)	# tmp303, levelrefs
	.loc 1 69 0
	jmp	.L8	#
.L9:
	.loc 1 71 0
	movl	-44(%rbp), %eax	# Bframes, tmp305
	movl	%eax, %edx	# tmp305, tmp306
	shrl	$31, %edx	#, tmp306
	addl	%edx, %eax	# tmp306, tmp307
	sarl	%eax	# tmp308
	movl	%eax, -44(%rbp)	# tmp308, Bframes
	.loc 1 72 0
	addl	$1, -48(%rbp)	#, GOPlevels
.L8:
	.loc 1 69 0 discriminator 1
	cmpl	$2, -44(%rbp)	#, Bframes
	jg	.L9	#,
	.loc 1 75 0
	movl	-48(%rbp), %eax	# GOPlevels, tmp309
	movl	%eax, -40(%rbp)	# tmp309, curlevel
	.loc 1 76 0
	movl	-48(%rbp), %eax	# GOPlevels, tmp310
	addl	$1, %eax	#, D.5509
	cltq
	salq	$2, %rax	#, D.5510
	movq	%rax, %rdi	# D.5510,
	call	malloc	#
	movq	%rax, -16(%rbp)	# tmp311, curGOPLevelfrm
	cmpq	$0, -16(%rbp)	#, curGOPLevelfrm
	jne	.L10	#,
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	$.LC0, %edi	#,
	call	no_mem_exit	#
.L10:
	.loc 1 77 0 is_stmt 1
	movl	-48(%rbp), %eax	# GOPlevels, tmp312
	addl	$1, %eax	#, D.5509
	cltq
	salq	$2, %rax	#, D.5510
	movq	%rax, %rdi	# D.5510,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp313, curGOPLeveldist
	cmpq	$0, -8(%rbp)	#, curGOPLeveldist
	jne	.L11	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	$.LC1, %edi	#,
	call	no_mem_exit	#
.L11:
	.loc 1 79 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L12	#
.L13:
	.loc 1 81 0 discriminator 2
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.14
	movl	-28(%rbp), %eax	# i, tmp314
	movslq	%eax, %rdx	# tmp314, D.5510
	movq	%rdx, %rax	# D.5510, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# D.5510, tmp315
	salq	$3, %rax	#, tmp316
	addq	%rcx, %rax	# gop_structure.14, D.5511
	movl	$0, 4(%rax)	#, _81->display_no
	.loc 1 82 0 discriminator 2
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.15
	movl	-28(%rbp), %eax	# i, tmp317
	movslq	%eax, %rdx	# tmp317, D.5510
	movq	%rdx, %rax	# D.5510, tmp318
	addq	%rax, %rax	# tmp318
	addq	%rdx, %rax	# D.5510, tmp318
	salq	$3, %rax	#, tmp319
	addq	%rcx, %rax	# gop_structure.15, D.5511
	movl	$1, (%rax)	#, _85->slice_type
	.loc 1 79 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L12:
	.loc 1 79 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.16
	movl	1236(%rax), %eax	# input.16_76->successive_Bframe, D.5509
	cmpl	-28(%rbp), %eax	# i, D.5509
	jg	.L13	#,
	.loc 1 85 0 is_stmt 1
	jmp	.L14	#
.L15:
	.loc 1 87 0
	movl	-32(%rbp), %eax	# levelrefs, tmp321
	movl	%eax, %edx	# tmp321, tmp322
	shrl	$31, %edx	#, tmp322
	addl	%edx, %eax	# tmp322, tmp323
	sarl	%eax	# tmp324
	movl	%eax, -32(%rbp)	# tmp324, levelrefs
	.loc 1 88 0
	movl	-40(%rbp), %eax	# curlevel, tmp325
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5510
	movq	-16(%rbp), %rax	# curGOPLevelfrm, tmp326
	addq	%rdx, %rax	# D.5510, D.5512
	movl	-32(%rbp), %edx	# levelrefs, tmp327
	movl	-36(%rbp), %ecx	# prvlevelrefs, tmp328
	subl	%edx, %ecx	# tmp327, D.5509
	movl	%ecx, %edx	# D.5509, D.5509
	movl	%edx, (%rax)	# D.5509, *_90
	.loc 1 89 0
	movl	-40(%rbp), %eax	# curlevel, tmp329
	movl	-48(%rbp), %edx	# GOPlevels, tmp330
	subl	%eax, %edx	# tmp329, D.5509
	movl	%edx, %eax	# D.5509, D.5509
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5510
	movq	-8(%rbp), %rax	# curGOPLeveldist, tmp331
	leaq	(%rdx,%rax), %rcx	#, D.5512
	movl	-32(%rbp), %eax	# levelrefs, tmp332
	cltd
	shrl	$31, %edx	#, tmp334
	addl	%edx, %eax	# tmp334, tmp335
	andl	$1, %eax	#, tmp336
	subl	%edx, %eax	# tmp334, tmp337
	movl	%eax, %edx	# tmp337, D.5509
	movl	-32(%rbp), %eax	# levelrefs, tmp338
	addl	%edx, %eax	# D.5509, D.5509
	movl	%eax, (%rcx)	# D.5509, *_95
	.loc 1 91 0
	movl	-32(%rbp), %eax	# levelrefs, tmp339
	movl	%eax, -36(%rbp)	# tmp339, prvlevelrefs
	.loc 1 92 0
	subl	$1, -40(%rbp)	#, curlevel
.L14:
	.loc 1 85 0 discriminator 1
	cmpl	$2, -32(%rbp)	#, levelrefs
	jg	.L15	#,
	.loc 1 95 0
	movq	-16(%rbp), %rax	# curGOPLevelfrm, tmp340
	movl	-32(%rbp), %edx	# levelrefs, tmp341
	movl	%edx, (%rax)	# tmp341, *curGOPLevelfrm_70
	.loc 1 96 0
	movl	-48(%rbp), %eax	# GOPlevels, tmp342
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5510
	movq	-8(%rbp), %rax	# curGOPLeveldist, tmp343
	leaq	(%rdx,%rax), %rcx	#, D.5512
	movl	-32(%rbp), %eax	# levelrefs, tmp344
	cltd
	shrl	$31, %edx	#, tmp346
	addl	%edx, %eax	# tmp346, tmp347
	andl	$1, %eax	#, tmp348
	subl	%edx, %eax	# tmp346, tmp349
	movl	%eax, %edx	# tmp349, D.5509
	movl	-32(%rbp), %eax	# levelrefs, tmp350
	addl	%edx, %eax	# D.5509, D.5509
	movl	%eax, (%rcx)	# D.5509, *_102
	.loc 1 99 0
	movl	$0, -52(%rbp)	#, j
	jmp	.L16	#
.L17:
	.loc 1 101 0 discriminator 2
	movq	gop_structure(%rip), %rdx	# gop_structure, gop_structure.17
	movq	-8(%rbp), %rax	# curGOPLeveldist, tmp351
	movl	(%rax), %eax	# *curGOPLeveldist_74, D.5509
	leal	-1(%rax), %edi	#, D.5509
	movl	-52(%rbp), %eax	# j, tmp352
	leal	1(%rax), %ecx	#, D.5509
	movq	-8(%rbp), %rax	# curGOPLeveldist, tmp353
	movl	(%rax), %eax	# *curGOPLeveldist_74, D.5509
	imull	%ecx, %eax	# D.5509, D.5509
	leal	-1(%rax), %esi	#, D.5509
	movl	-48(%rbp), %eax	# GOPlevels, tmp354
	movq	%rdx, %rcx	# gop_structure.17,
	movl	%edi, %edx	# D.5509,
	movl	%eax, %edi	# tmp354,
	call	gop_pyramid	#
	.loc 1 99 0 discriminator 2
	addl	$1, -52(%rbp)	#, j
.L16:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# curGOPLevelfrm, tmp355
	movl	(%rax), %eax	# *curGOPLevelfrm_70, D.5509
	cmpl	-52(%rbp), %eax	# j, D.5509
	jg	.L17	#,
	.loc 1 106 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.18
	movl	1236(%rax), %eax	# input.18_115->successive_Bframe, tmp356
	movl	%eax, -52(%rbp)	# tmp356, j
	jmp	.L18	#
.L22:
	.loc 1 108 0
	movl	$1, -28(%rbp)	#, i
	jmp	.L19	#
.L21:
.LBB3:
	.loc 1 112 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.19
	movl	-28(%rbp), %eax	# i, tmp357
	movslq	%eax, %rdx	# tmp357, D.5510
	movq	%rdx, %rax	# D.5510, tmp358
	addq	%rax, %rax	# tmp358
	addq	%rdx, %rax	# D.5510, tmp358
	salq	$3, %rax	#, tmp359
	addq	%rcx, %rax	# gop_structure.19, D.5511
	movl	16(%rax), %ecx	# _121->pyramid_layer, D.5509
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.20
	movl	-28(%rbp), %eax	# i, tmp360
	movslq	%eax, %rdx	# tmp360, D.5510
	movq	%rdx, %rax	# D.5510, tmp361
	addq	%rax, %rax	# tmp361
	addq	%rdx, %rax	# D.5510, tmp361
	salq	$3, %rax	#, tmp362
	subq	$24, %rax	#, D.5513
	addq	%rsi, %rax	# gop_structure.20, D.5511
	movl	16(%rax), %eax	# _127->pyramid_layer, D.5509
	cmpl	%eax, %ecx	# D.5509, D.5509
	jle	.L20	#,
	.loc 1 114 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.21
	movl	-28(%rbp), %eax	# i, tmp363
	movslq	%eax, %rdx	# tmp363, D.5510
	movq	%rdx, %rax	# D.5510, tmp364
	addq	%rax, %rax	# tmp364
	addq	%rdx, %rax	# D.5510, tmp364
	salq	$3, %rax	#, tmp365
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.21, D.5511
	movl	4(%rax), %eax	# _133->display_no, tmp366
	movl	%eax, -20(%rbp)	# tmp366, tempnum
	.loc 1 115 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.22
	movl	-28(%rbp), %eax	# i, tmp367
	movslq	%eax, %rdx	# tmp367, D.5510
	movq	%rdx, %rax	# D.5510, tmp368
	addq	%rax, %rax	# tmp368
	addq	%rdx, %rax	# D.5510, tmp368
	salq	$3, %rax	#, tmp369
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.23
	movl	-28(%rbp), %eax	# i, tmp370
	movslq	%eax, %rdx	# tmp370, D.5510
	movq	%rdx, %rax	# D.5510, tmp371
	addq	%rax, %rax	# tmp371
	addq	%rdx, %rax	# D.5510, tmp371
	salq	$3, %rax	#, tmp372
	addq	%rsi, %rax	# gop_structure.23, D.5511
	movl	4(%rax), %eax	# _143->display_no, D.5509
	movl	%eax, 4(%rcx)	# D.5509, _139->display_no
	.loc 1 116 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.24
	movl	-28(%rbp), %eax	# i, tmp373
	movslq	%eax, %rdx	# tmp373, D.5510
	movq	%rdx, %rax	# D.5510, tmp374
	addq	%rax, %rax	# tmp374
	addq	%rdx, %rax	# D.5510, tmp374
	salq	$3, %rax	#, tmp375
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp376
	movl	%eax, 4(%rdx)	# tmp376, _148->display_no
	.loc 1 118 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.25
	movl	-28(%rbp), %eax	# i, tmp377
	movslq	%eax, %rdx	# tmp377, D.5510
	movq	%rdx, %rax	# D.5510, tmp378
	addq	%rax, %rax	# tmp378
	addq	%rdx, %rax	# D.5510, tmp378
	salq	$3, %rax	#, tmp379
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.25, D.5511
	movl	16(%rax), %eax	# _153->pyramid_layer, tmp380
	movl	%eax, -20(%rbp)	# tmp380, tempnum
	.loc 1 119 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.26
	movl	-28(%rbp), %eax	# i, tmp381
	movslq	%eax, %rdx	# tmp381, D.5510
	movq	%rdx, %rax	# D.5510, tmp382
	addq	%rax, %rax	# tmp382
	addq	%rdx, %rax	# D.5510, tmp382
	salq	$3, %rax	#, tmp383
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.27
	movl	-28(%rbp), %eax	# i, tmp384
	movslq	%eax, %rdx	# tmp384, D.5510
	movq	%rdx, %rax	# D.5510, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# D.5510, tmp385
	salq	$3, %rax	#, tmp386
	addq	%rsi, %rax	# gop_structure.27, D.5511
	movl	16(%rax), %eax	# _163->pyramid_layer, D.5509
	movl	%eax, 16(%rcx)	# D.5509, _159->pyramid_layer
	.loc 1 120 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.28
	movl	-28(%rbp), %eax	# i, tmp387
	movslq	%eax, %rdx	# tmp387, D.5510
	movq	%rdx, %rax	# D.5510, tmp388
	addq	%rax, %rax	# tmp388
	addq	%rdx, %rax	# D.5510, tmp388
	salq	$3, %rax	#, tmp389
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp390
	movl	%eax, 16(%rdx)	# tmp390, _168->pyramid_layer
	.loc 1 122 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.29
	movl	-28(%rbp), %eax	# i, tmp391
	movslq	%eax, %rdx	# tmp391, D.5510
	movq	%rdx, %rax	# D.5510, tmp392
	addq	%rax, %rax	# tmp392
	addq	%rdx, %rax	# D.5510, tmp392
	salq	$3, %rax	#, tmp393
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.29, D.5511
	movl	8(%rax), %eax	# _173->reference_idc, tmp394
	movl	%eax, -20(%rbp)	# tmp394, tempnum
	.loc 1 123 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.30
	movl	-28(%rbp), %eax	# i, tmp395
	movslq	%eax, %rdx	# tmp395, D.5510
	movq	%rdx, %rax	# D.5510, tmp396
	addq	%rax, %rax	# tmp396
	addq	%rdx, %rax	# D.5510, tmp396
	salq	$3, %rax	#, tmp397
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.31
	movl	-28(%rbp), %eax	# i, tmp398
	movslq	%eax, %rdx	# tmp398, D.5510
	movq	%rdx, %rax	# D.5510, tmp399
	addq	%rax, %rax	# tmp399
	addq	%rdx, %rax	# D.5510, tmp399
	salq	$3, %rax	#, tmp400
	addq	%rsi, %rax	# gop_structure.31, D.5511
	movl	8(%rax), %eax	# _183->reference_idc, D.5509
	movl	%eax, 8(%rcx)	# D.5509, _179->reference_idc
	.loc 1 124 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.32
	movl	-28(%rbp), %eax	# i, tmp401
	movslq	%eax, %rdx	# tmp401, D.5510
	movq	%rdx, %rax	# D.5510, tmp402
	addq	%rax, %rax	# tmp402
	addq	%rdx, %rax	# D.5510, tmp402
	salq	$3, %rax	#, tmp403
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp404
	movl	%eax, 8(%rdx)	# tmp404, _188->reference_idc
	.loc 1 126 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.33
	movl	-28(%rbp), %eax	# i, tmp405
	movslq	%eax, %rdx	# tmp405, D.5510
	movq	%rdx, %rax	# D.5510, tmp406
	addq	%rax, %rax	# tmp406
	addq	%rdx, %rax	# D.5510, tmp406
	salq	$3, %rax	#, tmp407
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.33, D.5511
	movl	(%rax), %eax	# _193->slice_type, tmp408
	movl	%eax, -20(%rbp)	# tmp408, tempnum
	.loc 1 127 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.34
	movl	-28(%rbp), %eax	# i, tmp409
	movslq	%eax, %rdx	# tmp409, D.5510
	movq	%rdx, %rax	# D.5510, tmp410
	addq	%rax, %rax	# tmp410
	addq	%rdx, %rax	# D.5510, tmp410
	salq	$3, %rax	#, tmp411
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.35
	movl	-28(%rbp), %eax	# i, tmp412
	movslq	%eax, %rdx	# tmp412, D.5510
	movq	%rdx, %rax	# D.5510, tmp413
	addq	%rax, %rax	# tmp413
	addq	%rdx, %rax	# D.5510, tmp413
	salq	$3, %rax	#, tmp414
	addq	%rsi, %rax	# gop_structure.35, D.5511
	movl	(%rax), %eax	# _203->slice_type, D.5509
	movl	%eax, (%rcx)	# D.5509, _199->slice_type
	.loc 1 128 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.36
	movl	-28(%rbp), %eax	# i, tmp415
	movslq	%eax, %rdx	# tmp415, D.5510
	movq	%rdx, %rax	# D.5510, tmp416
	addq	%rax, %rax	# tmp416
	addq	%rdx, %rax	# D.5510, tmp416
	salq	$3, %rax	#, tmp417
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp418
	movl	%eax, (%rdx)	# tmp418, _208->slice_type
	.loc 1 130 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.37
	movl	-28(%rbp), %eax	# i, tmp419
	movslq	%eax, %rdx	# tmp419, D.5510
	movq	%rdx, %rax	# D.5510, tmp420
	addq	%rax, %rax	# tmp420
	addq	%rdx, %rax	# D.5510, tmp420
	salq	$3, %rax	#, tmp421
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.37, D.5511
	movl	12(%rax), %eax	# _213->slice_qp, tmp422
	movl	%eax, -20(%rbp)	# tmp422, tempnum
	.loc 1 131 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.38
	movl	-28(%rbp), %eax	# i, tmp423
	movslq	%eax, %rdx	# tmp423, D.5510
	movq	%rdx, %rax	# D.5510, tmp424
	addq	%rax, %rax	# tmp424
	addq	%rdx, %rax	# D.5510, tmp424
	salq	$3, %rax	#, tmp425
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.39
	movl	-28(%rbp), %eax	# i, tmp426
	movslq	%eax, %rdx	# tmp426, D.5510
	movq	%rdx, %rax	# D.5510, tmp427
	addq	%rax, %rax	# tmp427
	addq	%rdx, %rax	# D.5510, tmp427
	salq	$3, %rax	#, tmp428
	addq	%rsi, %rax	# gop_structure.39, D.5511
	movl	12(%rax), %eax	# _223->slice_qp, D.5509
	movl	%eax, 12(%rcx)	# D.5509, _219->slice_qp
	.loc 1 132 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.40
	movl	-28(%rbp), %eax	# i, tmp429
	movslq	%eax, %rdx	# tmp429, D.5510
	movq	%rdx, %rax	# D.5510, tmp430
	addq	%rax, %rax	# tmp430
	addq	%rdx, %rax	# D.5510, tmp430
	salq	$3, %rax	#, tmp431
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp432
	movl	%eax, 12(%rdx)	# tmp432, _228->slice_qp
	.loc 1 134 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.41
	movl	-28(%rbp), %eax	# i, tmp433
	movslq	%eax, %rdx	# tmp433, D.5510
	movq	%rdx, %rax	# D.5510, tmp434
	addq	%rax, %rax	# tmp434
	addq	%rdx, %rax	# D.5510, tmp434
	salq	$3, %rax	#, tmp435
	subq	$24, %rax	#, D.5513
	addq	%rcx, %rax	# gop_structure.41, D.5511
	movl	20(%rax), %eax	# _233->pyramidPocDelta, tmp436
	movl	%eax, -20(%rbp)	# tmp436, tempnum
	.loc 1 135 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.42
	movl	-28(%rbp), %eax	# i, tmp437
	movslq	%eax, %rdx	# tmp437, D.5510
	movq	%rdx, %rax	# D.5510, tmp438
	addq	%rax, %rax	# tmp438
	addq	%rdx, %rax	# D.5510, tmp438
	salq	$3, %rax	#, tmp439
	subq	$24, %rax	#, D.5513
	addq	%rax, %rcx	# D.5513, D.5511
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.43
	movl	-28(%rbp), %eax	# i, tmp440
	movslq	%eax, %rdx	# tmp440, D.5510
	movq	%rdx, %rax	# D.5510, tmp441
	addq	%rax, %rax	# tmp441
	addq	%rdx, %rax	# D.5510, tmp441
	salq	$3, %rax	#, tmp442
	addq	%rsi, %rax	# gop_structure.43, D.5511
	movl	20(%rax), %eax	# _243->pyramidPocDelta, D.5509
	movl	%eax, 20(%rcx)	# D.5509, _239->pyramidPocDelta
	.loc 1 136 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.44
	movl	-28(%rbp), %eax	# i, tmp443
	movslq	%eax, %rdx	# tmp443, D.5510
	movq	%rdx, %rax	# D.5510, tmp444
	addq	%rax, %rax	# tmp444
	addq	%rdx, %rax	# D.5510, tmp444
	salq	$3, %rax	#, tmp445
	leaq	(%rcx,%rax), %rdx	#, D.5511
	movl	-20(%rbp), %eax	# tempnum, tmp446
	movl	%eax, 20(%rdx)	# tmp446, _248->pyramidPocDelta
.L20:
.LBE3:
	.loc 1 108 0
	addl	$1, -28(%rbp)	#, i
.L19:
	.loc 1 108 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp447
	cmpl	-52(%rbp), %eax	# j, tmp447
	jl	.L21	#,
	.loc 1 106 0 is_stmt 1
	subl	$1, -52(%rbp)	#, j
.L18:
	.loc 1 106 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, j
	jg	.L22	#,
.L1:
.LBE2:
	.loc 1 144 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_pyramid, .-create_pyramid
	.globl	gop_pyramid
	.type	gop_pyramid, @function
gop_pyramid:
.LFB3:
	.loc 1 154 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# level, level
	movl	%esi, -8(%rbp)	# frm_no, frm_no
	movl	%edx, -12(%rbp)	# frames, frames
	movq	%rcx, -24(%rbp)	# pyramid_structure, pyramid_structure
	.loc 1 156 0
	cmpl	$0, -4(%rbp)	#, level
	jne	.L24	#,
	.loc 1 158 0
	cmpl	$0, -8(%rbp)	#, frm_no
	js	.L23	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.45
	movl	1236(%rax), %eax	# input.45_3->successive_Bframe, D.5516
	cmpl	-8(%rbp), %eax	# frm_no, D.5516
	jle	.L23	#,
	movl	-8(%rbp), %eax	# frm_no, tmp103
	movslq	%eax, %rdx	# tmp103, D.5517
	movq	%rdx, %rax	# D.5517, tmp104
	addq	%rax, %rax	# tmp104
	addq	%rdx, %rax	# D.5517, tmp104
	salq	$3, %rax	#, tmp105
	movq	%rax, %rdx	# tmp104, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp106
	addq	%rdx, %rax	# D.5517, D.5518
	movl	4(%rax), %eax	# _8->display_no, D.5516
	testl	%eax, %eax	# D.5516
	jne	.L23	#,
	.loc 1 160 0 is_stmt 1
	movl	-8(%rbp), %eax	# frm_no, tmp107
	movslq	%eax, %rdx	# tmp107, D.5517
	movq	%rdx, %rax	# D.5517, tmp108
	addq	%rax, %rax	# tmp108
	addq	%rdx, %rax	# D.5517, tmp108
	salq	$3, %rax	#, tmp109
	movq	%rax, %rdx	# tmp108, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp110
	addq	%rdx, %rax	# D.5517, D.5518
	movl	$1, (%rax)	#, _12->slice_type
	.loc 1 161 0
	movl	-8(%rbp), %eax	# frm_no, tmp111
	movslq	%eax, %rdx	# tmp111, D.5517
	movq	%rdx, %rax	# D.5517, tmp112
	addq	%rax, %rax	# tmp112
	addq	%rdx, %rax	# D.5517, tmp112
	salq	$3, %rax	#, tmp113
	movq	%rax, %rdx	# tmp112, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp114
	addq	%rax, %rdx	# tmp114, D.5518
	movl	-8(%rbp), %eax	# frm_no, tmp115
	movl	%eax, 4(%rdx)	# tmp115, _15->display_no
	.loc 1 162 0
	movl	-8(%rbp), %eax	# frm_no, tmp116
	movslq	%eax, %rdx	# tmp116, D.5517
	movq	%rdx, %rax	# D.5517, tmp117
	addq	%rax, %rax	# tmp117
	addq	%rdx, %rax	# D.5517, tmp117
	salq	$3, %rax	#, tmp118
	movq	%rax, %rdx	# tmp117, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp119
	addq	%rdx, %rax	# D.5517, D.5518
	movl	$0, 16(%rax)	#, _18->pyramid_layer
	.loc 1 163 0
	movl	-8(%rbp), %eax	# frm_no, tmp120
	movslq	%eax, %rdx	# tmp120, D.5517
	movq	%rdx, %rax	# D.5517, tmp121
	addq	%rax, %rax	# tmp121
	addq	%rdx, %rax	# D.5517, tmp121
	salq	$3, %rax	#, tmp122
	movq	%rax, %rdx	# tmp121, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp123
	addq	%rdx, %rax	# D.5517, D.5518
	movl	$0, 8(%rax)	#, _21->reference_idc
	jmp	.L23	#
.L24:
	.loc 1 168 0
	cmpl	$0, -8(%rbp)	#, frm_no
	js	.L27	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.46
	movl	1236(%rax), %eax	# input.46_22->successive_Bframe, D.5516
	cmpl	-8(%rbp), %eax	# frm_no, D.5516
	jle	.L27	#,
	.loc 1 170 0 is_stmt 1
	movl	-8(%rbp), %eax	# frm_no, tmp124
	movslq	%eax, %rdx	# tmp124, D.5517
	movq	%rdx, %rax	# D.5517, tmp125
	addq	%rax, %rax	# tmp125
	addq	%rdx, %rax	# D.5517, tmp125
	salq	$3, %rax	#, tmp126
	movq	%rax, %rdx	# tmp125, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp127
	addq	%rdx, %rax	# D.5517, D.5518
	movl	$1, (%rax)	#, _26->slice_type
	.loc 1 171 0
	movl	-8(%rbp), %eax	# frm_no, tmp128
	movslq	%eax, %rdx	# tmp128, D.5517
	movq	%rdx, %rax	# D.5517, tmp129
	addq	%rax, %rax	# tmp129
	addq	%rdx, %rax	# D.5517, tmp129
	salq	$3, %rax	#, tmp130
	movq	%rax, %rdx	# tmp129, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp131
	addq	%rax, %rdx	# tmp131, D.5518
	movl	-8(%rbp), %eax	# frm_no, tmp132
	movl	%eax, 4(%rdx)	# tmp132, _29->display_no
	.loc 1 172 0
	movl	-8(%rbp), %eax	# frm_no, tmp133
	movslq	%eax, %rdx	# tmp133, D.5517
	movq	%rdx, %rax	# D.5517, tmp134
	addq	%rax, %rax	# tmp134
	addq	%rdx, %rax	# D.5517, tmp134
	salq	$3, %rax	#, tmp135
	movq	%rax, %rdx	# tmp134, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp136
	addq	%rax, %rdx	# tmp136, D.5518
	movl	-4(%rbp), %eax	# level, tmp137
	movl	%eax, 16(%rdx)	# tmp137, _32->pyramid_layer
	.loc 1 173 0
	movl	-8(%rbp), %eax	# frm_no, tmp138
	movslq	%eax, %rdx	# tmp138, D.5517
	movq	%rdx, %rax	# D.5517, tmp139
	addq	%rax, %rax	# tmp139
	addq	%rdx, %rax	# D.5517, tmp139
	salq	$3, %rax	#, tmp140
	movq	%rax, %rdx	# tmp139, D.5517
	movq	-24(%rbp), %rax	# pyramid_structure, tmp141
	addq	%rdx, %rax	# D.5517, D.5518
	movl	$2, 8(%rax)	#, _35->reference_idc
.L27:
	.loc 1 177 0
	movl	-12(%rbp), %eax	# frames, tmp142
	addl	$1, %eax	#, D.5516
	movl	%eax, %edx	# D.5516, tmp143
	shrl	$31, %edx	#, tmp143
	addl	%edx, %eax	# tmp143, tmp144
	sarl	%eax	# tmp145
	movl	%eax, %edx	# tmp145, D.5516
	movl	-12(%rbp), %eax	# frames, tmp146
	addl	$1, %eax	#, D.5516
	movl	%eax, %ecx	# D.5516, tmp147
	shrl	$31, %ecx	#, tmp147
	addl	%ecx, %eax	# tmp147, tmp148
	sarl	%eax	# tmp149
	movl	-8(%rbp), %ecx	# frm_no, tmp150
	movl	%ecx, %esi	# tmp150, D.5516
	subl	%eax, %esi	# D.5516, D.5516
	movl	-4(%rbp), %eax	# level, tmp151
	leal	-1(%rax), %edi	#, D.5516
	movq	-24(%rbp), %rax	# pyramid_structure, tmp152
	movq	%rax, %rcx	# tmp152,
	call	gop_pyramid	#
	.loc 1 178 0
	movl	-12(%rbp), %eax	# frames, tmp153
	addl	$1, %eax	#, D.5516
	movl	%eax, %edx	# D.5516, tmp154
	shrl	$31, %edx	#, tmp154
	addl	%edx, %eax	# tmp154, tmp155
	sarl	%eax	# tmp156
	movl	%eax, %edx	# tmp156, D.5516
	movl	-12(%rbp), %eax	# frames, tmp157
	addl	$1, %eax	#, D.5516
	movl	%eax, %ecx	# D.5516, tmp158
	shrl	$31, %ecx	#, tmp158
	addl	%ecx, %eax	# tmp158, tmp159
	sarl	%eax	# tmp160
	movl	%eax, %ecx	# tmp160, D.5516
	movl	-8(%rbp), %eax	# frm_no, tmp161
	leal	(%rcx,%rax), %esi	#, D.5516
	movl	-4(%rbp), %eax	# level, tmp162
	leal	-1(%rax), %edi	#, D.5516
	movq	-24(%rbp), %rax	# pyramid_structure, tmp163
	movq	%rax, %rcx	# tmp163,
	call	gop_pyramid	#
.L23:
	.loc 1 180 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	gop_pyramid, .-gop_pyramid
	.section	.rodata
	.align 8
.LC2:
	.string	"init_gop_structure: gop_structure"
	.text
	.globl	init_gop_structure
	.type	init_gop_structure, @function
init_gop_structure:
.LFB4:
	.loc 1 191 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 192 0
	movq	input(%rip), %rax	# input, input.48
	movl	1320(%rax), %eax	# input.48_2->PyramidCoding, D.5519
	cmpl	$3, %eax	#, D.5519
	je	.L29	#,
	.loc 1 192 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.49
	movl	1236(%rax), %eax	# input.49_4->successive_Bframe, iftmp.47
	jmp	.L30	#
.L29:
	.loc 1 192 0 discriminator 2
	movq	input(%rip), %rax	# input, input.50
	movl	20(%rax), %eax	# input.50_6->jumpd, iftmp.47
.L30:
	.loc 1 192 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.47, max_gopsize
	.loc 1 194 0 is_stmt 1 discriminator 3
	movl	$10, %eax	#, tmp68
	cmpl	$10, -4(%rbp)	#, max_gopsize
	cmovge	-4(%rbp), %eax	# max_gopsize,, D.5519
	cltq
	movl	$24, %esi	#,
	movq	%rax, %rdi	# D.5520,
	call	calloc	#
	movq	%rax, gop_structure(%rip)	# gop_structure.51, gop_structure
	.loc 1 195 0 discriminator 3
	movq	gop_structure(%rip), %rax	# gop_structure, gop_structure.52
	testq	%rax, %rax	# gop_structure.52
	jne	.L28	#,
	.loc 1 196 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L28:
	.loc 1 197 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_gop_structure, .-init_gop_structure
	.globl	clear_gop_structure
	.type	clear_gop_structure, @function
clear_gop_structure:
.LFB5:
	.loc 1 207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 208 0
	movq	gop_structure(%rip), %rax	# gop_structure, gop_structure.53
	testq	%rax, %rax	# gop_structure.53
	je	.L32	#,
	.loc 1 209 0
	movq	gop_structure(%rip), %rax	# gop_structure, gop_structure.54
	movq	%rax, %rdi	# gop_structure.54,
	call	free	#
.L32:
	.loc 1 210 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	clear_gop_structure, .-clear_gop_structure
	.section	.rodata
.LC3:
	.string	"%d"
	.align 8
.LC4:
	.string	"Invalid Frame Order value. Frame position needs to be in [0,%d] range."
	.align 8
.LC5:
	.string	"Frame Order value %d in frame %d already used for enhancement frame %d."
	.text
	.globl	interpret_gop_structure
	.type	interpret_gop_structure, @function
interpret_gop_structure:
.LFB6:
	.loc 1 220 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	.loc 1 222 0
	movq	input(%rip), %rax	# input, input.55
	addq	$1324, %rax	#, D.5522
	movq	%rax, %rdi	# D.5522,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.5523, nLength
	.loc 1 223 0
	movl	$0, -32(%rbp)	#, i
	.loc 1 224 0
	movl	$0, -24(%rbp)	#, slice_read
	movl	$0, -20(%rbp)	#, order_read
	movl	$0, -16(%rbp)	#, stored_read
	movl	$0, -12(%rbp)	#, qp_read
	.loc 1 225 0
	movl	$0, -8(%rbp)	#, coded_frame
	.loc 1 228 0
	cmpl	$0, -4(%rbp)	#, nLength
	jle	.L35	#,
	.loc 1 231 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L36	#
.L64:
	.loc 1 234 0
	cmpl	$0, -24(%rbp)	#, slice_read
	jne	.L37	#,
	.loc 1 236 0
	movq	input(%rip), %rdx	# input, input.56
	movl	-32(%rbp), %eax	# i, tmp170
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.56_28->ExplicitPyramidFormat, D.5524
	movsbl	%al, %eax	# D.5524, D.5525
	subl	$66, %eax	#, tmp171
	cmpl	$46, %eax	#, tmp171
	ja	.L38	#,
	movl	%eax, %eax	# tmp171, tmp172
	movq	.L40(,%rax,8), %rax	#, tmp173
	jmp	*%rax	# tmp173
	.section	.rodata
	.align 8
	.align 4
.L40:
	.quad	.L39
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L41
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L42
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L39
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L41
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L38
	.quad	.L42
	.text
.L42:
	.loc 1 240 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.57
	movl	-8(%rbp), %eax	# coded_frame, tmp174
	movslq	%eax, %rdx	# tmp174, D.5523
	movq	%rdx, %rax	# D.5523, tmp175
	addq	%rax, %rax	# tmp175
	addq	%rdx, %rax	# D.5523, tmp175
	salq	$3, %rax	#, tmp176
	addq	%rcx, %rax	# gop_structure.57, D.5526
	movl	$0, (%rax)	#, _34->slice_type
	.loc 1 241 0
	jmp	.L43	#
.L39:
	.loc 1 244 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.58
	movl	-8(%rbp), %eax	# coded_frame, tmp177
	movslq	%eax, %rdx	# tmp177, D.5523
	movq	%rdx, %rax	# D.5523, tmp178
	addq	%rax, %rax	# tmp178
	addq	%rdx, %rax	# D.5523, tmp178
	salq	$3, %rax	#, tmp179
	addq	%rcx, %rax	# gop_structure.58, D.5526
	movl	$1, (%rax)	#, _38->slice_type
	.loc 1 245 0
	jmp	.L43	#
.L41:
	.loc 1 248 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.59
	movl	-8(%rbp), %eax	# coded_frame, tmp180
	movslq	%eax, %rdx	# tmp180, D.5523
	movq	%rdx, %rax	# D.5523, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.5523, tmp181
	salq	$3, %rax	#, tmp182
	addq	%rcx, %rax	# gop_structure.59, D.5526
	movl	$2, (%rax)	#, _42->slice_type
	.loc 1 249 0
	jmp	.L43	#
.L38:
	.loc 1 251 0
	movabsq	$8742648396464614483, %rax	#, tmp225
	movq	%rax, errortext(%rip)	# tmp225, MEM[(void *)&errortext]
	movabsq	$7809653445419361648, %rax	#, tmp226
	movq	%rax, errortext+8(%rip)	# tmp226, MEM[(void *)&errortext]
	movabsq	$8666368716526609513, %rax	#, tmp227
	movq	%rax, errortext+16(%rip)	# tmp227, MEM[(void *)&errortext]
	movabsq	$8741614872714374256, %rax	#, tmp228
	movq	%rax, errortext+24(%rip)	# tmp228, MEM[(void *)&errortext]
	movabsq	$8245886839818117490, %rax	#, tmp229
	movq	%rax, errortext+32(%rip)	# tmp229, MEM[(void *)&errortext]
	movabsq	$7021781903232754029, %rax	#, tmp230
	movq	%rax, errortext+40(%rip)	# tmp230, MEM[(void *)&errortext]
	movabsq	$8314037902977805933, %rax	#, tmp231
	movq	%rax, errortext+48(%rip)	# tmp231, MEM[(void *)&errortext]
	movabsq	$2336070118915907685, %rax	#, tmp232
	movq	%rax, errortext+56(%rip)	# tmp232, MEM[(void *)&errortext]
	movabsq	$8247611994986671971, %rax	#, tmp233
	movq	%rax, errortext+64(%rip)	# tmp233, MEM[(void *)&errortext]
	movabsq	$7594793480294593633, %rax	#, tmp234
	movq	%rax, errortext+72(%rip)	# tmp234, MEM[(void *)&errortext]
	movl	$3040620, errortext+80(%rip)	#, MEM[(void *)&errortext]
	.loc 1 252 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 253 0
	nop
.L43:
	.loc 1 255 0
	movl	$1, -24(%rbp)	#, slice_read
	jmp	.L44	#
.L37:
	.loc 1 260 0
	cmpl	$0, -20(%rbp)	#, order_read
	jne	.L45	#,
	.loc 1 262 0
	call	__ctype_b_loc	#
	movq	(%rax), %rcx	# *_44, D.5528
	movq	input(%rip), %rdx	# input, input.60
	movl	-32(%rbp), %eax	# i, tmp184
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.60_46->ExplicitPyramidFormat, D.5524
	movsbq	%al, %rax	# D.5524, D.5523
	addq	%rax, %rax	# D.5523
	addq	%rcx, %rax	# D.5528, D.5528
	movzwl	(%rax), %eax	# *_51, D.5530
	movzwl	%ax, %eax	# D.5530, D.5525
	andl	$2048, %eax	#, D.5525
	testl	%eax, %eax	# D.5525
	je	.L46	#,
	.loc 1 264 0
	movq	input(%rip), %rax	# input, input.61
	movl	-32(%rbp), %edx	# i, tmp185
	movslq	%edx, %rdx	# tmp185, D.5529
	addq	$1312, %rdx	#, tmp186
	addq	%rdx, %rax	# tmp186, tmp187
	leaq	12(%rax), %rcx	#, D.5531
	leaq	-36(%rbp), %rax	#, tmp188
	movq	%rax, %rdx	# tmp188,
	movl	$.LC3, %esi	#,
	movq	%rcx, %rdi	# D.5531,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 265 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.62
	movl	-8(%rbp), %eax	# coded_frame, tmp189
	movslq	%eax, %rdx	# tmp189, D.5523
	movq	%rdx, %rax	# D.5523, tmp190
	addq	%rax, %rax	# tmp190
	addq	%rdx, %rax	# D.5523, tmp190
	salq	$3, %rax	#, tmp191
	leaq	(%rcx,%rax), %rdx	#, D.5526
	movl	-36(%rbp), %eax	# display_no, display_no.63
	movl	%eax, 4(%rdx)	# display_no.63, _61->display_no
	.loc 1 266 0
	movl	$1, -20(%rbp)	#, order_read
	.loc 1 267 0
	movl	-36(%rbp), %eax	# display_no, display_no.64
	testl	%eax, %eax	# display_no.64
	js	.L47	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.65
	movl	20(%rax), %edx	# input.65_65->jumpd, D.5525
	movl	-36(%rbp), %eax	# display_no, display_no.66
	cmpl	%eax, %edx	# display_no.66, D.5525
	jg	.L48	#,
.L47:
	.loc 1 269 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.67
	movl	20(%rax), %eax	# input.67_68->jumpd, D.5525
	subl	$1, %eax	#, D.5525
	movl	%eax, %ecx	# D.5525,
	movl	$.LC4, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 270 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L48:
	.loc 1 272 0
	movl	$0, -28(%rbp)	#, k
	jmp	.L49	#
.L51:
	.loc 1 274 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.68
	movl	-28(%rbp), %eax	# k, tmp192
	movslq	%eax, %rdx	# tmp192, D.5523
	movq	%rdx, %rax	# D.5523, tmp193
	addq	%rax, %rax	# tmp193
	addq	%rdx, %rax	# D.5523, tmp193
	salq	$3, %rax	#, tmp194
	addq	%rcx, %rax	# gop_structure.68, D.5526
	movl	4(%rax), %edx	# _75->display_no, D.5525
	movl	-36(%rbp), %eax	# display_no, display_no.69
	cmpl	%eax, %edx	# display_no.69, D.5525
	jne	.L50	#,
	.loc 1 276 0
	movl	-36(%rbp), %eax	# display_no, display_no.70
	movl	-28(%rbp), %ecx	# k, tmp195
	movl	-8(%rbp), %edx	# coded_frame, tmp196
	movl	%ecx, %r9d	# tmp195,
	movl	%edx, %r8d	# tmp196,
	movl	%eax, %ecx	# display_no.70,
	movl	$.LC5, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 277 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L50:
	.loc 1 272 0
	addl	$1, -28(%rbp)	#, k
.L49:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# k, tmp197
	cmpl	-8(%rbp), %eax	# coded_frame, tmp197
	jl	.L51	#,
	jmp	.L44	#
.L46:
	.loc 1 283 0 is_stmt 1
	movabsq	$8742648396464614483, %rax	#, tmp235
	movq	%rax, errortext(%rip)	# tmp235, MEM[(void *)&errortext]
	movabsq	$8314882298346497392, %rax	#, tmp236
	movq	%rax, errortext+8(%rip)	# tmp236, MEM[(void *)&errortext]
	movabsq	$7358993263248765984, %rax	#, tmp237
	movq	%rax, errortext+16(%rip)	# tmp237, MEM[(void *)&errortext]
	movabsq	$2334102070529649775, %rax	#, tmp238
	movq	%rax, errortext+24(%rip)	# tmp238, MEM[(void *)&errortext]
	movabsq	$7813872249439549794, %rax	#, tmp239
	movq	%rax, errortext+32(%rip)	# tmp239, MEM[(void *)&errortext]
	movabsq	$8243105135088138593, %rax	#, tmp240
	movq	%rax, errortext+40(%rip)	# tmp240, MEM[(void *)&errortext]
	movabsq	$7310293708389228590, %rax	#, tmp241
	movq	%rax, errortext+48(%rip)	# tmp241, MEM[(void *)&errortext]
	movabsq	$7142827083656880928, %rax	#, tmp242
	movq	%rax, errortext+56(%rip)	# tmp242, MEM[(void *)&errortext]
	movabsq	$7021803856034426479, %rax	#, tmp243
	movq	%rax, errortext+64(%rip)	# tmp243, MEM[(void *)&errortext]
	movabsq	$7811887318128617844, %rax	#, tmp244
	movq	%rax, errortext+72(%rip)	# tmp244, MEM[(void *)&errortext]
	movw	$11877, errortext+80(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+82(%rip)	#, MEM[(void *)&errortext]
	.loc 1 284 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L44	#
.L45:
	.loc 1 287 0
	cmpl	$1, -20(%rbp)	#, order_read
	jne	.L44	#,
	.loc 1 289 0
	cmpl	$0, -16(%rbp)	#, stored_read
	jne	.L53	#,
	.loc 1 289 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rcx	# *_80, D.5528
	movq	input(%rip), %rdx	# input, input.71
	movl	-32(%rbp), %eax	# i, tmp199
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.71_82->ExplicitPyramidFormat, D.5524
	movsbq	%al, %rax	# D.5524, D.5523
	addq	%rax, %rax	# D.5523
	addq	%rcx, %rax	# D.5528, D.5528
	movzwl	(%rax), %eax	# *_87, D.5530
	movzwl	%ax, %eax	# D.5530, D.5525
	andl	$2048, %eax	#, D.5525
	testl	%eax, %eax	# D.5525
	jne	.L53	#,
	.loc 1 291 0 is_stmt 1
	movq	input(%rip), %rdx	# input, input.72
	movl	-32(%rbp), %eax	# i, tmp201
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.72_91->ExplicitPyramidFormat, D.5524
	movsbl	%al, %eax	# D.5524, D.5525
	cmpl	$82, %eax	#, D.5525
	je	.L55	#,
	cmpl	$82, %eax	#, D.5525
	jg	.L56	#,
	cmpl	$69, %eax	#, D.5525
	je	.L57	#,
	jmp	.L54	#
.L56:
	cmpl	$101, %eax	#, D.5525
	je	.L57	#,
	cmpl	$114, %eax	#, D.5525
	je	.L55	#,
	jmp	.L54	#
.L57:
	.loc 1 295 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.73
	movl	-8(%rbp), %eax	# coded_frame, tmp202
	movslq	%eax, %rdx	# tmp202, D.5523
	movq	%rdx, %rax	# D.5523, tmp203
	addq	%rax, %rax	# tmp203
	addq	%rdx, %rax	# D.5523, tmp203
	salq	$3, %rax	#, tmp204
	addq	%rcx, %rax	# gop_structure.73, D.5526
	movl	$0, 8(%rax)	#, _97->reference_idc
	.loc 1 296 0
	jmp	.L58	#
.L55:
	.loc 1 299 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.74
	movl	-8(%rbp), %eax	# coded_frame, tmp205
	movslq	%eax, %rdx	# tmp205, D.5523
	movq	%rdx, %rax	# D.5523, tmp206
	addq	%rax, %rax	# tmp206
	addq	%rdx, %rax	# D.5523, tmp206
	salq	$3, %rax	#, tmp207
	addq	%rcx, %rax	# gop_structure.74, D.5526
	movl	$2, 8(%rax)	#, _101->reference_idc
	.loc 1 300 0
	jmp	.L58	#
.L54:
	.loc 1 302 0
	movabsq	$7164775599194924370, %rax	#, tmp245
	movq	%rax, errortext(%rip)	# tmp245, MEM[(void *)&errortext]
	movabsq	$7955925690007248741, %rax	#, tmp246
	movq	%rax, errortext+8(%rip)	# tmp246, MEM[(void *)&errortext]
	movabsq	$7955925832364220790, %rax	#, tmp247
	movq	%rax, errortext+16(%rip)	# tmp247, MEM[(void *)&errortext]
	movabsq	$7594029311141102880, %rax	#, tmp248
	movq	%rax, errortext+24(%rip)	# tmp248, MEM[(void *)&errortext]
	movabsq	$7235434541647220852, %rax	#, tmp249
	movq	%rax, errortext+32(%rip)	# tmp249, MEM[(void *)&errortext]
	movabsq	$8079585693299535686, %rax	#, tmp250
	movq	%rax, errortext+40(%rip)	# tmp250, MEM[(void *)&errortext]
	movabsq	$7804773538008756833, %rax	#, tmp251
	movq	%rax, errortext+48(%rip)	# tmp251, MEM[(void *)&errortext]
	movabsq	$7307199386200793445, %rax	#, tmp252
	movq	%rax, errortext+56(%rip)	# tmp252, MEM[(void *)&errortext]
	movabsq	$7594879246290414435, %rax	#, tmp253
	movq	%rax, errortext+64(%rip)	# tmp253, MEM[(void *)&errortext]
	movabsq	$7957695015158969703, %rax	#, tmp254
	movq	%rax, errortext+72(%rip)	# tmp254, MEM[(void *)&errortext]
	movl	$1818846752, errortext+80(%rip)	#, MEM[(void *)&errortext]
	movw	$11877, errortext+84(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+86(%rip)	#, MEM[(void *)&errortext]
	.loc 1 303 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 304 0
	nop
.L58:
	.loc 1 306 0
	movl	$1, -16(%rbp)	#, stored_read
	jmp	.L44	#
.L53:
	.loc 1 308 0
	cmpl	$1, -16(%rbp)	#, stored_read
	jne	.L59	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, qp_read
	jne	.L59	#,
	.loc 1 310 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rcx	# *_103, D.5528
	movq	input(%rip), %rdx	# input, input.75
	movl	-32(%rbp), %eax	# i, tmp209
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.75_105->ExplicitPyramidFormat, D.5524
	movsbq	%al, %rax	# D.5524, D.5523
	addq	%rax, %rax	# D.5523
	addq	%rcx, %rax	# D.5528, D.5528
	movzwl	(%rax), %eax	# *_110, D.5530
	movzwl	%ax, %eax	# D.5530, D.5525
	andl	$2048, %eax	#, D.5525
	testl	%eax, %eax	# D.5525
	je	.L60	#,
	.loc 1 312 0
	movq	input(%rip), %rax	# input, input.76
	movl	-32(%rbp), %edx	# i, tmp210
	movslq	%edx, %rdx	# tmp210, D.5529
	addq	$1312, %rdx	#, tmp211
	addq	%rdx, %rax	# tmp211, tmp212
	leaq	12(%rax), %rcx	#, D.5531
	leaq	-40(%rbp), %rax	#, tmp213
	movq	%rax, %rdx	# tmp213,
	movl	$.LC3, %esi	#,
	movq	%rcx, %rdi	# D.5531,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	.loc 1 313 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.77
	movl	-8(%rbp), %eax	# coded_frame, tmp214
	movslq	%eax, %rdx	# tmp214, D.5523
	movq	%rdx, %rax	# D.5523, tmp215
	addq	%rax, %rax	# tmp215
	addq	%rdx, %rax	# D.5523, tmp215
	salq	$3, %rax	#, tmp216
	leaq	(%rcx,%rax), %rdx	#, D.5526
	movl	-40(%rbp), %eax	# qp, qp.78
	movl	%eax, 12(%rdx)	# qp.78, _120->slice_qp
	.loc 1 314 0
	movl	$1, -12(%rbp)	#, qp_read
	.loc 1 315 0
	movl	-40(%rbp), %eax	# qp, qp.79
	testl	%eax, %eax	# qp.79
	js	.L61	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# qp, qp.80
	cmpl	$51, %eax	#, qp.80
	jle	.L63	#,
.L61:
	.loc 1 317 0 is_stmt 1
	movabsq	$2334106421097295433, %rax	#, tmp255
	movq	%rax, errortext(%rip)	# tmp255, MEM[(void *)&errortext]
	movabsq	$7310868735955325009, %rax	#, tmp256
	movq	%rax, errortext+8(%rip)	# tmp256, MEM[(void *)&errortext]
	movabsq	$7310293708389228590, %rax	#, tmp257
	movq	%rax, errortext+16(%rip)	# tmp257, MEM[(void *)&errortext]
	movabsq	$7142827083656880928, %rax	#, tmp258
	movq	%rax, errortext+24(%rip)	# tmp258, MEM[(void *)&errortext]
	movabsq	$7021803856034426479, %rax	#, tmp259
	movq	%rax, errortext+32(%rip)	# tmp259, MEM[(void *)&errortext]
	movabsq	$7811887318128617844, %rax	#, tmp260
	movq	%rax, errortext+40(%rip)	# tmp260, MEM[(void *)&errortext]
	movw	$11877, errortext+48(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+50(%rip)	#, MEM[(void *)&errortext]
	.loc 1 318 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 310 0
	jmp	.L44	#
.L60:
	.loc 1 323 0
	movabsq	$7164775599194924370, %rax	#, tmp261
	movq	%rax, errortext(%rip)	# tmp261, MEM[(void *)&errortext]
	movabsq	$7308814718549450597, %rax	#, tmp262
	movq	%rax, errortext+8(%rip)	# tmp262, MEM[(void *)&errortext]
	movabsq	$7070773959523001445, %rax	#, tmp263
	movq	%rax, errortext+16(%rip)	# tmp263, MEM[(void *)&errortext]
	movabsq	$8606216625909538917, %rax	#, tmp264
	movq	%rax, errortext+24(%rip)	# tmp264, MEM[(void *)&errortext]
	movabsq	$5787442701857219685, %rax	#, tmp265
	movq	%rax, errortext+32(%rip)	# tmp265, MEM[(void *)&errortext]
	movabsq	$7310293708389228590, %rax	#, tmp266
	movq	%rax, errortext+40(%rip)	# tmp266, MEM[(void *)&errortext]
	movabsq	$7142827083656880928, %rax	#, tmp267
	movq	%rax, errortext+48(%rip)	# tmp267, MEM[(void *)&errortext]
	movabsq	$7021803856034426479, %rax	#, tmp268
	movq	%rax, errortext+56(%rip)	# tmp268, MEM[(void *)&errortext]
	movabsq	$7811887318128617844, %rax	#, tmp269
	movq	%rax, errortext+64(%rip)	# tmp269, MEM[(void *)&errortext]
	movw	$11877, errortext+72(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+74(%rip)	#, MEM[(void *)&errortext]
	.loc 1 324 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	.loc 1 310 0
	jmp	.L44	#
.L63:
	jmp	.L44	#
.L59:
	.loc 1 327 0
	cmpl	$1, -16(%rbp)	#, stored_read
	jne	.L44	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	cmpl	$1, -12(%rbp)	#, qp_read
	jne	.L44	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rcx	# *_125, D.5528
	movq	input(%rip), %rdx	# input, input.81
	movl	-32(%rbp), %eax	# i, tmp219
	cltq
	movzbl	1324(%rdx,%rax), %eax	# input.81_127->ExplicitPyramidFormat, D.5524
	movsbq	%al, %rax	# D.5524, D.5523
	addq	%rax, %rax	# D.5523
	addq	%rcx, %rax	# D.5528, D.5528
	movzwl	(%rax), %eax	# *_132, D.5530
	movzwl	%ax, %eax	# D.5530, D.5525
	andl	$2048, %eax	#, D.5525
	testl	%eax, %eax	# D.5525
	jne	.L44	#,
	movl	-4(%rbp), %eax	# nLength, tmp220
	subl	$2, %eax	#, D.5525
	cmpl	-32(%rbp), %eax	# i, D.5525
	jle	.L44	#,
	.loc 1 329 0 is_stmt 1
	movl	$0, -16(%rbp)	#, stored_read
	.loc 1 330 0
	movl	$0, -12(%rbp)	#, qp_read
	.loc 1 331 0
	movl	$0, -20(%rbp)	#, order_read
	.loc 1 332 0
	movl	$0, -24(%rbp)	#, slice_read
	.loc 1 333 0
	subl	$1, -32(%rbp)	#, i
	.loc 1 334 0
	addl	$1, -8(%rbp)	#, coded_frame
	.loc 1 335 0
	movq	input(%rip), %rax	# input, input.82
	movl	20(%rax), %eax	# input.82_143->jumpd, D.5525
	cmpl	-8(%rbp), %eax	# coded_frame, D.5525
	jg	.L44	#,
	.loc 1 337 0
	movabsq	$8461736399739318100, %rax	#, tmp270
	movq	%rax, errortext(%rip)	# tmp270, MEM[(void *)&errortext]
	movabsq	$2334675641987064429, %rax	#, tmp271
	movq	%rax, errortext+8(%rip)	# tmp271, MEM[(void *)&errortext]
	movabsq	$7575181452701168230, %rax	#, tmp272
	movq	%rax, errortext+16(%rip)	# tmp272, MEM[(void *)&errortext]
	movabsq	$7164771158347554926, %rax	#, tmp273
	movq	%rax, errortext+24(%rip)	# tmp273, MEM[(void *)&errortext]
	movabsq	$5712570336783199589, %rax	#, tmp274
	movq	%rax, errortext+32(%rip)	# tmp274, MEM[(void *)&errortext]
	movabsq	$8367798494310572112, %rax	#, tmp275
	movq	%rax, errortext+40(%rip)	# tmp275, MEM[(void *)&errortext]
	movabsq	$8603394952487116911, %rax	#, tmp276
	movq	%rax, errortext+48(%rip)	# tmp276, MEM[(void *)&errortext]
	movabsq	$8170972774796391013, %rax	#, tmp277
	movq	%rax, errortext+56(%rip)	# tmp277, MEM[(void *)&errortext]
	movabsq	$5053161326460559733, %rax	#, tmp278
	movq	%rax, errortext+64(%rip)	# tmp278, MEM[(void *)&errortext]
	movabsq	$8100123410730672498, %rax	#, tmp279
	movq	%rax, errortext+72(%rip)	# tmp279, MEM[(void *)&errortext]
	movabsq	$8387230146345660448, %rax	#, tmp280
	movq	%rax, errortext+80(%rip)	# tmp280, MEM[(void *)&errortext]
	movl	$3043941, errortext+88(%rip)	#, MEM[(void *)&errortext]
	.loc 1 338 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L44:
	.loc 1 231 0
	addl	$1, -32(%rbp)	#, i
.L36:
	.loc 1 231 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp222
	cmpl	-4(%rbp), %eax	# nLength, tmp222
	jl	.L64	#,
	jmp	.L65	#
.L35:
	.loc 1 349 0 is_stmt 1
	movabsq	$8388345085396285509, %rax	#, tmp281
	movq	%rax, errortext(%rip)	# tmp281, MEM[(void *)&errortext]
	movabsq	$5072294998833264976, %rax	#, tmp282
	movq	%rax, errortext+8(%rip)	# tmp282, MEM[(void *)&errortext]
	movabsq	$8316213871139189359, %rax	#, tmp283
	movq	%rax, errortext+16(%rip)	# tmp283, MEM[(void *)&errortext]
	movabsq	$2318924399151768864, %rax	#, tmp284
	movq	%rax, errortext+24(%rip)	# tmp284, MEM[(void *)&errortext]
	movabsq	$7142820555239287888, %rax	#, tmp285
	movq	%rax, errortext+32(%rip)	# tmp285, MEM[(void *)&errortext]
	movabsq	$7957688057478735208, %rax	#, tmp286
	movq	%rax, errortext+40(%rip)	# tmp286, MEM[(void *)&errortext]
	movabsq	$7598805615504746854, %rax	#, tmp287
	movq	%rax, errortext+48(%rip)	# tmp287, MEM[(void *)&errortext]
	movabsq	$3343197498333228655, %rax	#, tmp288
	movq	%rax, errortext+56(%rip)	# tmp288, MEM[(void *)&errortext]
	movb	$0, errortext+64(%rip)	#, MEM[(void *)&errortext]
	.loc 1 350 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L65:
	.loc 1 353 0
	movq	input(%rip), %rax	# input, input.83
	movl	-8(%rbp), %edx	# coded_frame, tmp224
	addl	$1, %edx	#, D.5525
	movl	%edx, 1236(%rax)	# D.5525, input.83_146->successive_Bframe
	.loc 1 354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	interpret_gop_structure, .-interpret_gop_structure
	.globl	encode_enhancement_layer
	.type	encode_enhancement_layer, @function
encode_enhancement_layer:
.LFB7:
	.loc 1 364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 365 0
	movq	input(%rip), %rax	# input, input.84
	movl	1236(%rax), %eax	# input.84_1->successive_Bframe, D.5536
	testl	%eax, %eax	# D.5536
	je	.L67	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.85
	movl	(%rax), %edx	# img.85_3->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.86
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.86, D.5536
	movl	%edx, %eax	# D.5536, D.5536
	testl	%eax, %eax	# D.5536
	jle	.L67	#,
	.loc 1 367 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.87
	movl	$1, 24(%rax)	#, img.87_7->type
	.loc 1 369 0
	movq	input(%rip), %rax	# input, input.88
	movl	2912(%rax), %eax	# input.88_8->NumFramesInELSubSeq, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L68	#,
	.loc 1 370 0
	movq	img(%rip), %rax	# img, img.89
	movl	$0, 72384(%rax)	#, img.89_10->layer
	jmp	.L69	#
.L68:
	.loc 1 372 0
	movq	img(%rip), %rax	# img, img.90
	movl	$1, 72384(%rax)	#, img.90_11->layer
.L69:
	.loc 1 374 0
	movq	input(%rip), %rax	# input, input.91
	movl	1316(%rax), %eax	# input.91_12->BRefPictures, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L70	#,
	.loc 1 374 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.92
	movl	1320(%rax), %eax	# input.92_14->PyramidCoding, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L70	#,
	.loc 1 376 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.93
	movl	72464(%rax), %edx	# img.93_16->frame_num, D.5537
	addl	$1, %edx	#, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.93_16->frame_num
	.loc 1 377 0
	movq	img(%rip), %rax	# img, img.94
	movq	img(%rip), %rdx	# img, img.95
	movl	72464(%rdx), %esi	# img.95_20->frame_num, D.5537
	movl	log2_max_frame_num_minus4(%rip), %edx	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.96
	addl	$4, %edx	#, D.5537
	movl	$1, %edi	#, tmp384
	movl	%edx, %ecx	# D.5536, tmp407
	sall	%cl, %edi	# tmp407, D.5536
	movl	%edi, %edx	# D.5536, D.5536
	subl	$1, %edx	#, D.5536
	andl	%esi, %edx	# D.5537, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.94_19->frame_num
.L70:
	.loc 1 379 0
	movq	img(%rip), %rax	# img, img.97
	movl	$0, 72496(%rax)	#, img.97_29->nal_reference_idc
	.loc 1 382 0
	movq	input(%rip), %rax	# input, input.98
	movl	1320(%rax), %eax	# input.98_30->PyramidCoding, D.5536
	testl	%eax, %eax	# D.5536
	je	.L71	#,
	.loc 1 384 0
	movq	img(%rip), %rax	# img, img.99
	movl	$1, 71908(%rax)	#, img.99_32->b_frame_to_code
	jmp	.L72	#
.L82:
	.loc 1 387 0
	movq	img(%rip), %rax	# img, img.100
	movl	$0, 72496(%rax)	#, img.100_37->nal_reference_idc
	.loc 1 389 0
	movq	img(%rip), %rcx	# img, img.101
	movq	gop_structure(%rip), %rsi	# gop_structure, gop_structure.102
	movq	img(%rip), %rax	# img, img.103
	movl	71908(%rax), %eax	# img.103_40->b_frame_to_code, D.5536
	movslq	%eax, %rdx	# D.5536, D.5538
	movq	%rdx, %rax	# D.5538, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# D.5538, tmp385
	salq	$3, %rax	#, tmp386
	subq	$24, %rax	#, D.5539
	addq	%rsi, %rax	# gop_structure.102, D.5540
	movl	(%rax), %eax	# _45->slice_type, D.5536
	movl	%eax, 24(%rcx)	# D.5536, img.101_38->type
	.loc 1 391 0
	movq	gop_structure(%rip), %rcx	# gop_structure, gop_structure.104
	movq	img(%rip), %rax	# img, img.105
	movl	71908(%rax), %eax	# img.105_48->b_frame_to_code, D.5536
	movslq	%eax, %rdx	# D.5536, D.5538
	movq	%rdx, %rax	# D.5538, tmp387
	addq	%rax, %rax	# tmp387
	addq	%rdx, %rax	# D.5538, tmp387
	salq	$3, %rax	#, tmp388
	subq	$24, %rax	#, D.5539
	addq	%rcx, %rax	# gop_structure.104, D.5540
	movl	8(%rax), %eax	# _53->reference_idc, D.5536
	cmpl	$2, %eax	#, D.5536
	jne	.L73	#,
	.loc 1 393 0
	movq	img(%rip), %rax	# img, img.106
	movl	$1, 72496(%rax)	#, img.106_55->nal_reference_idc
	.loc 1 394 0
	movq	img(%rip), %rax	# img, img.107
	movl	72464(%rax), %edx	# img.107_56->frame_num, D.5537
	addl	$1, %edx	#, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.107_56->frame_num
	.loc 1 395 0
	movq	img(%rip), %rax	# img, img.108
	movq	img(%rip), %rdx	# img, img.109
	movl	72464(%rdx), %esi	# img.109_60->frame_num, D.5537
	movl	log2_max_frame_num_minus4(%rip), %edx	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.110
	addl	$4, %edx	#, D.5537
	movl	$1, %edi	#, tmp389
	movl	%edx, %ecx	# D.5536, tmp409
	sall	%cl, %edi	# tmp409, D.5536
	movl	%edi, %edx	# D.5536, D.5536
	subl	$1, %edx	#, D.5536
	andl	%esi, %edx	# D.5537, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.108_59->frame_num
.L73:
	.loc 1 398 0
	movq	img(%rip), %rax	# img, img.111
	.loc 1 399 0
	movq	input(%rip), %rdx	# input, input.112
	movl	20(%rdx), %edx	# input.112_70->jumpd, D.5536
	addl	$1, %edx	#, D.5536
	cvtsi2sd	%edx, %xmm0	# D.5536, D.5541
	movq	input(%rip), %rdx	# input, input.113
	movl	1236(%rdx), %edx	# input.113_74->successive_Bframe, D.5536
	cvtsi2sd	%edx, %xmm1	# D.5536, D.5541
	movsd	.LC6(%rip), %xmm2	#, tmp390
	addsd	%xmm2, %xmm1	# tmp390, D.5541
	divsd	%xmm1, %xmm0	# D.5541, D.5541
	.loc 1 398 0
	movsd	%xmm0, 71896(%rax)	# D.5541, img.111_69->b_interval
	.loc 1 401 0
	movq	input(%rip), %rax	# input, input.114
	movl	1320(%rax), %eax	# input.114_79->PyramidCoding, D.5536
	cmpl	$3, %eax	#, D.5536
	jne	.L74	#,
	.loc 1 402 0
	movq	img(%rip), %rdx	# img, img.115
	movabsq	$4607182418800017408, %rax	#, tmp391
	movq	%rax, 71896(%rdx)	# tmp391, img.115_81->b_interval
.L74:
	.loc 1 404 0
	movq	input(%rip), %rax	# input, input.116
	movl	1224(%rax), %eax	# input.116_82->intra_period, D.5536
	testl	%eax, %eax	# D.5536
	je	.L75	#,
	.loc 1 404 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.117
	movl	1228(%rax), %eax	# input.117_84->idr_enable, D.5536
	testl	%eax, %eax	# D.5536
	je	.L75	#,
	.loc 1 405 0 is_stmt 1
	movq	img(%rip), %rcx	# img, img.118
	movq	img(%rip), %rax	# img, img.119
	movl	(%rax), %edx	# img.119_87->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.120
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.120, D.5536
	movq	input(%rip), %rax	# input, input.121
	movl	1224(%rax), %esi	# input.121_91->intra_period, D.5536
	movl	%edx, %eax	# D.5536, tmp393
	cltd
	idivl	%esi	# D.5536
	movl	%edx, %eax	# tmp392, D.5536
	leal	-1(%rax), %edx	#, D.5536
	movq	input(%rip), %rax	# input, input.122
	movl	20(%rax), %eax	# input.122_95->jumpd, D.5536
	addl	$1, %eax	#, D.5536
	movl	%edx, %esi	# D.5536, D.5536
	imull	%eax, %esi	# D.5536, D.5536
	movq	img(%rip), %rax	# img, img.123
	movsd	71896(%rax), %xmm1	# img.123_99->b_interval, D.5541
	movq	gop_structure(%rip), %rdi	# gop_structure, gop_structure.124
	movq	img(%rip), %rax	# img, img.125
	movl	71908(%rax), %eax	# img.125_102->b_frame_to_code, D.5536
	movslq	%eax, %rdx	# D.5536, D.5538
	movq	%rdx, %rax	# D.5538, tmp394
	addq	%rax, %rax	# tmp394
	addq	%rdx, %rax	# D.5538, tmp394
	salq	$3, %rax	#, tmp395
	subq	$24, %rax	#, D.5539
	addq	%rdi, %rax	# gop_structure.124, D.5540
	movl	4(%rax), %eax	# _107->display_no, D.5536
	addl	$1, %eax	#, D.5536
	cvtsi2sd	%eax, %xmm0	# D.5536, D.5541
	mulsd	%xmm1, %xmm0	# D.5541, D.5541
	cvttsd2si	%xmm0, %eax	# D.5541, D.5536
	addl	%esi, %eax	# D.5536, D.5536
	addl	%eax, %eax	# D.5536
	movl	%eax, 72448(%rcx)	# D.5536, img.118_86->toppoc
	jmp	.L76	#
.L75:
	.loc 1 407 0
	movq	img(%rip), %rcx	# img, img.126
	movq	img(%rip), %rax	# img, img.127
	movl	(%rax), %edx	# img.127_116->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.128
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.128, D.5536
	movl	%edx, %eax	# D.5536, D.5536
	leal	-1(%rax), %edx	#, D.5536
	movq	input(%rip), %rax	# input, input.129
	movl	20(%rax), %eax	# input.129_121->jumpd, D.5536
	addl	$1, %eax	#, D.5536
	movl	%edx, %esi	# D.5536, D.5536
	imull	%eax, %esi	# D.5536, D.5536
	movq	img(%rip), %rax	# img, img.130
	movsd	71896(%rax), %xmm1	# img.130_125->b_interval, D.5541
	movq	gop_structure(%rip), %rdi	# gop_structure, gop_structure.131
	movq	img(%rip), %rax	# img, img.132
	movl	71908(%rax), %eax	# img.132_128->b_frame_to_code, D.5536
	movslq	%eax, %rdx	# D.5536, D.5538
	movq	%rdx, %rax	# D.5538, tmp396
	addq	%rax, %rax	# tmp396
	addq	%rdx, %rax	# D.5538, tmp396
	salq	$3, %rax	#, tmp397
	subq	$24, %rax	#, D.5539
	addq	%rdi, %rax	# gop_structure.131, D.5540
	movl	4(%rax), %eax	# _133->display_no, D.5536
	addl	$1, %eax	#, D.5536
	cvtsi2sd	%eax, %xmm0	# D.5536, D.5541
	mulsd	%xmm1, %xmm0	# D.5541, D.5541
	cvttsd2si	%xmm0, %eax	# D.5541, D.5536
	addl	%esi, %eax	# D.5536, D.5536
	addl	%eax, %eax	# D.5536
	movl	%eax, 72448(%rcx)	# D.5536, img.126_115->toppoc
.L76:
	.loc 1 409 0
	movq	img(%rip), %rax	# img, img.133
	movl	71908(%rax), %eax	# img.133_141->b_frame_to_code, D.5536
	cmpl	$1, %eax	#, D.5536
	jne	.L77	#,
	.loc 1 410 0
	movq	img(%rip), %rax	# img, img.134
	movq	img(%rip), %rdx	# img, img.135
	movl	72448(%rdx), %ecx	# img.135_144->toppoc, D.5536
	movq	img(%rip), %rdx	# img, img.136
	movl	(%rdx), %esi	# img.136_146->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %edx	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.137
	subl	%edx, %esi	# start_frame_no_in_this_IGOP.137, D.5536
	movq	input(%rip), %rdx	# input, input.138
	movl	20(%rdx), %edx	# input.138_150->jumpd, D.5536
	notl	%edx	# D.5536
	imull	%edx, %esi	# D.5536, D.5536
	movl	start_tr_in_this_IGOP(%rip), %edx	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.139
	subl	%edx, %esi	# start_tr_in_this_IGOP.139, D.5536
	movl	%esi, %edx	# D.5536, D.5536
	addl	%edx, %edx	# D.5536
	addl	%ecx, %edx	# D.5536, D.5536
	movl	%edx, 72436(%rax)	# D.5536, img.134_143->delta_pic_order_cnt
	jmp	.L78	#
.L77:
	.loc 1 412 0
	movq	img(%rip), %rcx	# img, img.140
	movq	img(%rip), %rax	# img, img.141
	movl	72448(%rax), %esi	# img.141_159->toppoc, D.5536
	movq	img(%rip), %rax	# img, img.142
	movl	(%rax), %edx	# img.142_161->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.143
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.143, D.5536
	movl	%edx, %eax	# D.5536, D.5536
	leal	-1(%rax), %edx	#, D.5536
	movq	input(%rip), %rax	# input, input.144
	movl	20(%rax), %eax	# input.144_166->jumpd, D.5536
	notl	%eax	# D.5536
	imull	%eax, %edx	# D.5536, D.5536
	movl	start_tr_in_this_IGOP(%rip), %eax	# start_tr_in_this_IGOP, start_tr_in_this_IGOP.145
	subl	%eax, %edx	# start_tr_in_this_IGOP.145, D.5536
	movl	%edx, %r8d	# D.5536, D.5536
	movq	img(%rip), %rax	# img, img.146
	movsd	71896(%rax), %xmm0	# img.146_172->b_interval, D.5541
	movapd	%xmm0, %xmm1	# D.5541, D.5541
	addsd	%xmm0, %xmm1	# D.5541, D.5541
	movq	gop_structure(%rip), %rdi	# gop_structure, gop_structure.147
	movq	img(%rip), %rax	# img, img.148
	movl	71908(%rax), %eax	# img.148_176->b_frame_to_code, D.5536
	movslq	%eax, %rdx	# D.5536, D.5538
	movq	%rdx, %rax	# D.5538, tmp398
	addq	%rax, %rax	# tmp398
	addq	%rdx, %rax	# D.5538, tmp398
	salq	$3, %rax	#, tmp399
	subq	$48, %rax	#, D.5539
	addq	%rdi, %rax	# gop_structure.147, D.5540
	movl	4(%rax), %eax	# _181->display_no, D.5536
	addl	$1, %eax	#, D.5536
	cvtsi2sd	%eax, %xmm0	# D.5536, D.5541
	mulsd	%xmm1, %xmm0	# D.5541, D.5541
	cvttsd2si	%xmm0, %eax	# D.5541, D.5536
	subl	%eax, %r8d	# D.5536, D.5536
	movl	%r8d, %eax	# D.5536, D.5536
	addl	%eax, %eax	# D.5536
	addl	%esi, %eax	# D.5536, D.5536
	movl	%eax, 72436(%rcx)	# D.5536, img.140_158->delta_pic_order_cnt
.L78:
	.loc 1 414 0
	movq	input(%rip), %rax	# input, input.149
	movl	2880(%rax), %eax	# input.149_190->PicInterlace, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L79	#,
	.loc 1 414 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.150
	movl	2884(%rax), %eax	# input.150_192->MbInterlace, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L79	#,
	.loc 1 415 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.151
	movq	img(%rip), %rdx	# img, img.152
	movl	72448(%rdx), %edx	# img.152_195->toppoc, D.5536
	movl	%edx, 72452(%rax)	# D.5536, img.151_194->bottompoc
	jmp	.L80	#
.L79:
	.loc 1 417 0
	movq	img(%rip), %rax	# img, img.153
	movq	img(%rip), %rdx	# img, img.154
	movl	72448(%rdx), %edx	# img.154_198->toppoc, D.5536
	addl	$1, %edx	#, D.5536
	movl	%edx, 72452(%rax)	# D.5536, img.153_197->bottompoc
.L80:
	.loc 1 419 0
	movq	img(%rip), %rcx	# img, img.155
	movq	img(%rip), %rax	# img, img.156
	movl	72452(%rax), %edx	# img.156_202->bottompoc, D.5536
	movq	img(%rip), %rax	# img, img.157
	movl	72448(%rax), %eax	# img.157_204->toppoc, D.5536
	cmpl	%eax, %edx	# D.5536, D.5536
	cmovle	%edx, %eax	# D.5536,, D.5536
	movl	%eax, 72456(%rcx)	# D.5536, img.155_201->framepoc
	.loc 1 421 0
	movq	img(%rip), %rax	# img, img.158
	movl	$0, 72440(%rax)	#, img.158_207->delta_pic_order_cnt
	.loc 1 423 0
	movl	$0, %eax	#,
	call	encode_one_frame	#
	.loc 1 424 0
	movq	input(%rip), %rax	# input, input.159
	movl	3228(%rax), %eax	# input.159_208->ReportFrameStats, D.5536
	testl	%eax, %eax	# D.5536
	je	.L81	#,
	.loc 1 425 0
	movl	$0, %eax	#,
	call	report_frame_statistic	#
.L81:
	.loc 1 384 0
	movq	img(%rip), %rax	# img, img.160
	movl	71908(%rax), %edx	# img.160_210->b_frame_to_code, D.5536
	addl	$1, %edx	#, D.5536
	movl	%edx, 71908(%rax)	# D.5536, img.160_210->b_frame_to_code
.L72:
	.loc 1 384 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.161
	movl	71908(%rax), %edx	# img.161_33->b_frame_to_code, D.5536
	movq	input(%rip), %rax	# input, input.162
	movl	1236(%rax), %eax	# input.162_35->successive_Bframe, D.5536
	cmpl	%eax, %edx	# D.5536, D.5536
	jle	.L82	#,
	.loc 1 427 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.163
	movl	$0, 71908(%rax)	#, img.163_213->b_frame_to_code
	jmp	.L67	#
.L71:
	.loc 1 431 0
	movq	img(%rip), %rax	# img, img.164
	movl	$1, 71908(%rax)	#, img.164_214->b_frame_to_code
	jmp	.L83	#
.L93:
	.loc 1 434 0
	movq	img(%rip), %rax	# img, img.165
	movl	$0, 72496(%rax)	#, img.165_219->nal_reference_idc
	.loc 1 435 0
	movq	input(%rip), %rax	# input, input.166
	movl	1316(%rax), %eax	# input.166_220->BRefPictures, D.5536
	cmpl	$1, %eax	#, D.5536
	jne	.L84	#,
	.loc 1 437 0
	movq	img(%rip), %rax	# img, img.167
	movl	$1, 72496(%rax)	#, img.167_222->nal_reference_idc
	.loc 1 438 0
	movq	img(%rip), %rax	# img, img.168
	movl	72464(%rax), %edx	# img.168_223->frame_num, D.5537
	addl	$1, %edx	#, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.168_223->frame_num
	.loc 1 439 0
	movq	img(%rip), %rax	# img, img.169
	movq	img(%rip), %rdx	# img, img.170
	movl	72464(%rdx), %esi	# img.170_227->frame_num, D.5537
	movl	log2_max_frame_num_minus4(%rip), %edx	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.171
	addl	$4, %edx	#, D.5537
	movl	$1, %edi	#, tmp400
	movl	%edx, %ecx	# D.5536, tmp420
	sall	%cl, %edi	# tmp420, D.5536
	movl	%edi, %edx	# D.5536, D.5536
	subl	$1, %edx	#, D.5536
	andl	%esi, %edx	# D.5537, D.5537
	movl	%edx, 72464(%rax)	# D.5537, img.169_226->frame_num
.L84:
	.loc 1 442 0
	movq	img(%rip), %rax	# img, img.172
	.loc 1 443 0
	movq	input(%rip), %rdx	# input, input.173
	movl	20(%rdx), %edx	# input.173_237->jumpd, D.5536
	addl	$1, %edx	#, D.5536
	cvtsi2sd	%edx, %xmm0	# D.5536, D.5541
	movq	input(%rip), %rdx	# input, input.174
	movl	1236(%rdx), %edx	# input.174_241->successive_Bframe, D.5536
	cvtsi2sd	%edx, %xmm1	# D.5536, D.5541
	movsd	.LC6(%rip), %xmm2	#, tmp401
	addsd	%xmm2, %xmm1	# tmp401, D.5541
	divsd	%xmm1, %xmm0	# D.5541, D.5541
	.loc 1 442 0
	movsd	%xmm0, 71896(%rax)	# D.5541, img.172_236->b_interval
	.loc 1 445 0
	movq	input(%rip), %rax	# input, input.175
	movl	1320(%rax), %eax	# input.175_246->PyramidCoding, D.5536
	cmpl	$3, %eax	#, D.5536
	jne	.L85	#,
	.loc 1 446 0
	movq	img(%rip), %rdx	# img, img.176
	movabsq	$4607182418800017408, %rax	#, tmp402
	movq	%rax, 71896(%rdx)	# tmp402, img.176_248->b_interval
.L85:
	.loc 1 448 0
	movq	input(%rip), %rax	# input, input.177
	movl	1224(%rax), %eax	# input.177_249->intra_period, D.5536
	testl	%eax, %eax	# D.5536
	je	.L86	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.178
	movl	1228(%rax), %eax	# input.178_251->idr_enable, D.5536
	testl	%eax, %eax	# D.5536
	je	.L86	#,
	.loc 1 449 0 is_stmt 1
	movq	img(%rip), %rcx	# img, img.179
	movq	img(%rip), %rax	# img, img.180
	movl	(%rax), %edx	# img.180_254->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.181
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.181, D.5536
	movq	input(%rip), %rax	# input, input.182
	movl	1224(%rax), %esi	# input.182_258->intra_period, D.5536
	movl	%edx, %eax	# D.5536, tmp404
	cltd
	idivl	%esi	# D.5536
	movl	%edx, %eax	# tmp403, D.5536
	leal	-1(%rax), %edx	#, D.5536
	movq	input(%rip), %rax	# input, input.183
	movl	20(%rax), %eax	# input.183_262->jumpd, D.5536
	addl	$1, %eax	#, D.5536
	imull	%eax, %edx	# D.5536, D.5536
	movq	img(%rip), %rax	# img, img.184
	movsd	71896(%rax), %xmm1	# img.184_266->b_interval, D.5541
	movq	img(%rip), %rax	# img, img.185
	movl	71908(%rax), %eax	# img.185_268->b_frame_to_code, D.5536
	cvtsi2sd	%eax, %xmm0	# D.5536, D.5541
	mulsd	%xmm1, %xmm0	# D.5541, D.5541
	cvttsd2si	%xmm0, %eax	# D.5541, D.5536
	addl	%edx, %eax	# D.5536, D.5536
	addl	%eax, %eax	# D.5536
	movl	%eax, 72448(%rcx)	# D.5536, img.179_253->toppoc
	jmp	.L87	#
.L86:
	.loc 1 451 0
	movq	img(%rip), %rax	# img, img.186
	movq	img(%rip), %rdx	# img, img.187
	movl	(%rdx), %ecx	# img.187_276->number, D.5536
	movl	start_frame_no_in_this_IGOP(%rip), %edx	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.188
	subl	%edx, %ecx	# start_frame_no_in_this_IGOP.188, D.5536
	movl	%ecx, %edx	# D.5536, D.5536
	leal	-1(%rdx), %ecx	#, D.5536
	movq	input(%rip), %rdx	# input, input.189
	movl	20(%rdx), %edx	# input.189_281->jumpd, D.5536
	addl	$1, %edx	#, D.5536
	imull	%edx, %ecx	# D.5536, D.5536
	movq	img(%rip), %rdx	# img, img.190
	movsd	71896(%rdx), %xmm1	# img.190_285->b_interval, D.5541
	movq	img(%rip), %rdx	# img, img.191
	movl	71908(%rdx), %edx	# img.191_287->b_frame_to_code, D.5536
	cvtsi2sd	%edx, %xmm0	# D.5536, D.5541
	mulsd	%xmm1, %xmm0	# D.5541, D.5541
	cvttsd2si	%xmm0, %edx	# D.5541, D.5536
	addl	%ecx, %edx	# D.5536, D.5536
	addl	%edx, %edx	# D.5536
	movl	%edx, 72448(%rax)	# D.5536, img.186_275->toppoc
.L87:
	.loc 1 453 0
	movq	input(%rip), %rax	# input, input.192
	movl	2880(%rax), %eax	# input.192_294->PicInterlace, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L88	#,
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.193
	movl	2884(%rax), %eax	# input.193_296->MbInterlace, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L88	#,
	.loc 1 454 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.194
	movq	img(%rip), %rdx	# img, img.195
	movl	72448(%rdx), %edx	# img.195_299->toppoc, D.5536
	movl	%edx, 72452(%rax)	# D.5536, img.194_298->bottompoc
	jmp	.L89	#
.L88:
	.loc 1 456 0
	movq	img(%rip), %rax	# img, img.196
	movq	img(%rip), %rdx	# img, img.197
	movl	72448(%rdx), %edx	# img.197_302->toppoc, D.5536
	addl	$1, %edx	#, D.5536
	movl	%edx, 72452(%rax)	# D.5536, img.196_301->bottompoc
.L89:
	.loc 1 458 0
	movq	img(%rip), %rcx	# img, img.198
	movq	img(%rip), %rax	# img, img.199
	movl	72452(%rax), %edx	# img.199_306->bottompoc, D.5536
	movq	img(%rip), %rax	# img, img.200
	movl	72448(%rax), %eax	# img.200_308->toppoc, D.5536
	cmpl	%eax, %edx	# D.5536, D.5536
	cmovle	%edx, %eax	# D.5536,, D.5536
	movl	%eax, 72456(%rcx)	# D.5536, img.198_305->framepoc
	.loc 1 461 0
	movq	input(%rip), %rax	# input, input.201
	movl	1316(%rax), %eax	# input.201_311->BRefPictures, D.5536
	testl	%eax, %eax	# D.5536
	jne	.L90	#,
	.loc 1 463 0
	movq	img(%rip), %rax	# img, img.202
	movq	img(%rip), %rdx	# img, img.203
	movl	71908(%rdx), %edx	# img.203_314->b_frame_to_code, D.5536
	subl	$1, %edx	#, D.5536
	addl	%edx, %edx	# D.5536
	movl	%edx, 72436(%rax)	# D.5536, img.202_313->delta_pic_order_cnt
	jmp	.L91	#
.L90:
	.loc 1 467 0
	movq	img(%rip), %rax	# img, img.204
	movl	$-2, 72436(%rax)	#, img.204_318->delta_pic_order_cnt
.L91:
	.loc 1 470 0
	movq	img(%rip), %rax	# img, img.205
	movl	$0, 72440(%rax)	#, img.205_319->delta_pic_order_cnt
	.loc 1 472 0
	movl	$0, %eax	#,
	call	encode_one_frame	#
	.loc 1 473 0
	movq	input(%rip), %rax	# input, input.206
	movl	3228(%rax), %eax	# input.206_320->ReportFrameStats, D.5536
	testl	%eax, %eax	# D.5536
	je	.L92	#,
	.loc 1 474 0
	movl	$0, %eax	#,
	call	report_frame_statistic	#
.L92:
	.loc 1 431 0
	movq	img(%rip), %rax	# img, img.207
	movl	71908(%rax), %edx	# img.207_322->b_frame_to_code, D.5536
	addl	$1, %edx	#, D.5536
	movl	%edx, 71908(%rax)	# D.5536, img.207_322->b_frame_to_code
.L83:
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.208
	movl	71908(%rax), %edx	# img.208_215->b_frame_to_code, D.5536
	movq	input(%rip), %rax	# input, input.209
	movl	1236(%rax), %eax	# input.209_217->successive_Bframe, D.5536
	cmpl	%eax, %edx	# D.5536, D.5536
	jle	.L93	#,
.L67:
	.loc 1 478 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.210
	movl	$0, 71908(%rax)	#, img.210_325->b_frame_to_code
	.loc 1 479 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	encode_enhancement_layer, .-encode_enhancement_layer
	.section	.rodata
	.align 8
.LC7:
	.string	"poc_based_ref_management: tmp_drpm"
	.align 8
.LC8:
	.string	"poc_based_ref_management: tmp_drpm2"
	.text
	.globl	poc_based_ref_management
	.type	poc_based_ref_management, @function
poc_based_ref_management:
.LFB8:
	.loc 1 483 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# current_pic_num, current_pic_num
	.loc 1 484 0
	movl	$0, -24(%rbp)	#, pic_num
	.loc 1 486 0
	movl	$2147483647, -20(%rbp)	#, min_poc
	.loc 1 489 0
	movq	img(%rip), %rax	# img, img.211
	movq	72512(%rax), %rax	# img.211_8->dec_ref_pic_marking_buffer, D.5542
	testq	%rax, %rax	# D.5542
	je	.L95	#,
	.loc 1 490 0
	jmp	.L94	#
.L95:
	.loc 1 492 0
	movl	dpb+32(%rip), %edx	# dpb.ref_frames_in_buffer, D.5543
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.5543
	addl	%edx, %eax	# D.5543, D.5543
	testl	%eax, %eax	# D.5543
	jne	.L97	#,
	.loc 1 493 0
	jmp	.L94	#
.L97:
	.loc 1 495 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L98	#
.L100:
	.loc 1 497 0
	movq	dpb(%rip), %rax	# dpb.fs, D.5544
	movl	-28(%rbp), %edx	# i, D.5545
	salq	$3, %rdx	#, D.5545
	addq	%rdx, %rax	# D.5545, D.5544
	movq	(%rax), %rax	# *_18, D.5546
	movl	4(%rax), %eax	# _19->is_reference, D.5547
	testl	%eax, %eax	# D.5547
	je	.L99	#,
	.loc 1 497 0 is_stmt 0 discriminator 1
	movq	dpb(%rip), %rax	# dpb.fs, D.5544
	movl	-28(%rbp), %edx	# i, D.5545
	salq	$3, %rdx	#, D.5545
	addq	%rdx, %rax	# D.5545, D.5544
	movq	(%rax), %rax	# *_24, D.5546
	movl	8(%rax), %eax	# _25->is_long_term, D.5547
	testl	%eax, %eax	# D.5547
	jne	.L99	#,
	movq	dpb(%rip), %rax	# dpb.fs, D.5544
	movl	-28(%rbp), %edx	# i, D.5545
	salq	$3, %rdx	#, D.5545
	addq	%rdx, %rax	# D.5545, D.5544
	movq	(%rax), %rax	# *_30, D.5546
	movl	36(%rax), %eax	# _31->poc, D.5547
	cmpl	-20(%rbp), %eax	# min_poc, D.5547
	jge	.L99	#,
	.loc 1 499 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.5544
	movl	-28(%rbp), %edx	# i, D.5545
	salq	$3, %rdx	#, D.5545
	addq	%rdx, %rax	# D.5545, D.5544
	movq	(%rax), %rax	# *_36, D.5546
	movq	40(%rax), %rax	# _37->frame, D.5548
	movl	4(%rax), %eax	# _38->poc, tmp101
	movl	%eax, -20(%rbp)	# tmp101, min_poc
	.loc 1 500 0
	movq	dpb(%rip), %rax	# dpb.fs, D.5544
	movl	-28(%rbp), %edx	# i, D.5545
	salq	$3, %rdx	#, D.5545
	addq	%rdx, %rax	# D.5545, D.5544
	movq	(%rax), %rax	# *_43, D.5546
	movq	40(%rax), %rax	# _44->frame, D.5548
	movl	6364(%rax), %eax	# _45->pic_num, D.5547
	movl	%eax, -24(%rbp)	# D.5547, pic_num
.L99:
	.loc 1 495 0
	addl	$1, -28(%rbp)	#, i
.L98:
	.loc 1 495 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.5543
	cmpl	-28(%rbp), %eax	# i, D.5543
	ja	.L100	#,
	.loc 1 504 0 is_stmt 1
	movl	$32, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp102, tmp_drpm
	cmpq	$0, -16(%rbp)	#, tmp_drpm
	jne	.L101	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L101:
	.loc 1 505 0 is_stmt 1
	movq	-16(%rbp), %rax	# tmp_drpm, tmp103
	movq	$0, 24(%rax)	#, tmp_drpm_49->Next
	.loc 1 507 0
	movq	-16(%rbp), %rax	# tmp_drpm, tmp104
	movl	$0, (%rax)	#, tmp_drpm_49->memory_management_control_operation
	.loc 1 509 0
	movl	$32, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp105, tmp_drpm2
	cmpq	$0, -8(%rbp)	#, tmp_drpm2
	jne	.L102	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L102:
	.loc 1 510 0 is_stmt 1
	movq	-8(%rbp), %rax	# tmp_drpm2, tmp106
	movq	-16(%rbp), %rdx	# tmp_drpm, tmp107
	movq	%rdx, 24(%rax)	# tmp107, tmp_drpm2_50->Next
	.loc 1 512 0
	movq	-8(%rbp), %rax	# tmp_drpm2, tmp108
	movl	$1, (%rax)	#, tmp_drpm2_50->memory_management_control_operation
	.loc 1 513 0
	movl	-36(%rbp), %eax	# current_pic_num, current_pic_num.212
	subl	-24(%rbp), %eax	# pic_num, D.5543
	subl	$1, %eax	#, D.5543
	movl	%eax, %edx	# D.5543, D.5547
	movq	-8(%rbp), %rax	# tmp_drpm2, tmp109
	movl	%edx, 4(%rax)	# D.5547, tmp_drpm2_50->difference_of_pic_nums_minus1
	.loc 1 514 0
	movq	img(%rip), %rax	# img, img.213
	movq	-8(%rbp), %rdx	# tmp_drpm2, tmp110
	movq	%rdx, 72512(%rax)	# tmp110, img.213_56->dec_ref_pic_marking_buffer
.L94:
	.loc 1 516 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	poc_based_ref_management, .-poc_based_ref_management
	.section	.rodata
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "/usr/include/ctype.h"
	.file 5 "parsetcommon.h"
	.file 6 "global.h"
	.file 7 "mbuffer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27aa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF586
	.byte	0x1
	.long	.LASF587
	.long	.LASF588
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x30
	.long	0xfe
	.uleb128 0x9
	.long	.LASF11
	.sleb128 256
	.uleb128 0x9
	.long	.LASF12
	.sleb128 512
	.uleb128 0x9
	.long	.LASF13
	.sleb128 1024
	.uleb128 0x9
	.long	.LASF14
	.sleb128 2048
	.uleb128 0x9
	.long	.LASF15
	.sleb128 4096
	.uleb128 0x9
	.long	.LASF16
	.sleb128 8192
	.uleb128 0x9
	.long	.LASF17
	.sleb128 16384
	.uleb128 0x9
	.long	.LASF18
	.sleb128 32768
	.uleb128 0x9
	.long	.LASF19
	.sleb128 1
	.uleb128 0x9
	.long	.LASF20
	.sleb128 2
	.uleb128 0x9
	.long	.LASF21
	.sleb128 4
	.uleb128 0x9
	.long	.LASF22
	.sleb128 8
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x2a
	.long	0x11e
	.uleb128 0x9
	.long	.LASF25
	.sleb128 0
	.uleb128 0x9
	.long	.LASF26
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x2d
	.long	0x109
	.uleb128 0x4
	.long	0x34
	.long	0x139
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfe
	.uleb128 0x7
	.long	.LASF28
	.byte	0x6
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0x70
	.long	0x165
	.uleb128 0x9
	.long	.LASF29
	.sleb128 0
	.uleb128 0x9
	.long	.LASF30
	.sleb128 1
	.uleb128 0x9
	.long	.LASF31
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0xba
	.long	0x180
	.uleb128 0x9
	.long	.LASF32
	.sleb128 0
	.uleb128 0x9
	.long	.LASF33
	.sleb128 1
	.uleb128 0x9
	.long	.LASF34
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF35
	.byte	0x6
	.byte	0xbe
	.long	0x165
	.uleb128 0x8
	.byte	0x4
	.byte	0x6
	.byte	0xc1
	.long	0x1b2
	.uleb128 0x9
	.long	.LASF36
	.sleb128 0
	.uleb128 0x9
	.long	.LASF37
	.sleb128 1
	.uleb128 0x9
	.long	.LASF38
	.sleb128 2
	.uleb128 0x9
	.long	.LASF39
	.sleb128 3
	.uleb128 0x9
	.long	.LASF40
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x6
	.byte	0xcf
	.long	0x2a2
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0xd5
	.long	0x139
	.byte	0x18
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF48
	.byte	0x6
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF51
	.byte	0x6
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF52
	.byte	0x6
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0xdd
	.long	0x139
	.byte	0x40
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x6
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x6
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x6
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x6
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x6
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x6
	.byte	0xe2
	.long	0x1b2
	.uleb128 0x7
	.long	.LASF56
	.byte	0x6
	.byte	0xe4
	.long	0x2b8
	.uleb128 0x6
	.byte	0x8
	.long	0x2a2
	.uleb128 0xa
	.byte	0x10
	.byte	0x6
	.byte	0xe7
	.long	0x2eb
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x6
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF58
	.byte	0x6
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x6
	.byte	0xee
	.long	0x2be
	.uleb128 0xd
	.value	0x5e0
	.byte	0x6
	.value	0x102
	.long	0x362
	.uleb128 0xe
	.long	.LASF60
	.byte	0x6
	.value	0x104
	.long	0x362
	.byte	0
	.uleb128 0xf
	.long	.LASF61
	.byte	0x6
	.value	0x105
	.long	0x378
	.value	0x210
	.uleb128 0xf
	.long	.LASF62
	.byte	0x6
	.value	0x106
	.long	0x38e
	.value	0x330
	.uleb128 0xf
	.long	.LASF63
	.byte	0x6
	.value	0x107
	.long	0x3a4
	.value	0x470
	.uleb128 0xf
	.long	.LASF64
	.byte	0x6
	.value	0x108
	.long	0x3ba
	.value	0x530
	.uleb128 0xf
	.long	.LASF65
	.byte	0x6
	.value	0x109
	.long	0x3ba
	.value	0x570
	.uleb128 0xf
	.long	.LASF66
	.byte	0x6
	.value	0x10a
	.long	0x3ca
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x378
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x38e
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x3a4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x3ba
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x3ca
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x3da
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x6
	.value	0x10c
	.long	0x2f6
	.uleb128 0xd
	.value	0x2f60
	.byte	0x6
	.value	0x119
	.long	0x47a
	.uleb128 0xe
	.long	.LASF68
	.byte	0x6
	.value	0x11b
	.long	0x47a
	.byte	0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x6
	.value	0x11c
	.long	0x3ba
	.byte	0x20
	.uleb128 0xe
	.long	.LASF70
	.byte	0x6
	.value	0x11d
	.long	0x48a
	.byte	0x60
	.uleb128 0xf
	.long	.LASF71
	.byte	0x6
	.value	0x11e
	.long	0x4a0
	.value	0x120
	.uleb128 0xf
	.long	.LASF72
	.byte	0x6
	.value	0x11f
	.long	0x4b6
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF73
	.byte	0x6
	.value	0x120
	.long	0x4b6
	.value	0xd00
	.uleb128 0xf
	.long	.LASF74
	.byte	0x6
	.value	0x121
	.long	0x4cc
	.value	0x1660
	.uleb128 0xf
	.long	.LASF75
	.byte	0x6
	.value	0x122
	.long	0x4cc
	.value	0x1980
	.uleb128 0xf
	.long	.LASF76
	.byte	0x6
	.value	0x123
	.long	0x4b6
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF77
	.byte	0x6
	.value	0x124
	.long	0x4b6
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x48a
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x4a0
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x4b6
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x4cc
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x2eb
	.long	0x4e2
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x6
	.value	0x125
	.long	0x3e6
	.uleb128 0x11
	.long	.LASF83
	.byte	0x10
	.byte	0x6
	.value	0x134
	.long	0x523
	.uleb128 0xe
	.long	.LASF79
	.byte	0x6
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF80
	.byte	0x6
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF81
	.byte	0x6
	.value	0x138
	.long	0x523
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ee
	.uleb128 0x10
	.long	.LASF82
	.byte	0x6
	.value	0x139
	.long	0x4ee
	.uleb128 0x11
	.long	.LASF84
	.byte	0x20
	.byte	0x6
	.value	0x13c
	.long	0x591
	.uleb128 0xe
	.long	.LASF85
	.byte	0x6
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x6
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF87
	.byte	0x6
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF88
	.byte	0x6
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF89
	.byte	0x6
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF81
	.byte	0x6
	.value	0x143
	.long	0x591
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x535
	.uleb128 0x10
	.long	.LASF90
	.byte	0x6
	.value	0x144
	.long	0x535
	.uleb128 0x11
	.long	.LASF91
	.byte	0x30
	.byte	0x6
	.value	0x147
	.long	0x631
	.uleb128 0xe
	.long	.LASF92
	.byte	0x6
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.byte	0x6
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF94
	.byte	0x6
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x6
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x6
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF95
	.byte	0x6
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF96
	.byte	0x6
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x6
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF97
	.byte	0x6
	.value	0x158
	.long	0x64b
	.byte	0x20
	.uleb128 0xe
	.long	.LASF98
	.byte	0x6
	.value	0x15a
	.long	0x667
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x64b
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x83
	.uleb128 0x14
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x631
	.uleb128 0x13
	.long	0x661
	.uleb128 0x14
	.long	0x661
	.uleb128 0x14
	.long	0x2ad
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a3
	.uleb128 0x6
	.byte	0x8
	.long	0x651
	.uleb128 0x10
	.long	.LASF99
	.byte	0x6
	.value	0x15c
	.long	0x5a3
	.uleb128 0x15
	.long	.LASF100
	.value	0x278
	.byte	0x6
	.value	0x15f
	.long	0x8f3
	.uleb128 0xe
	.long	.LASF101
	.byte	0x6
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF102
	.byte	0x6
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF103
	.byte	0x6
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x6
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF104
	.byte	0x6
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF105
	.byte	0x6
	.value	0x166
	.long	0x129
	.byte	0x14
	.uleb128 0xe
	.long	.LASF106
	.byte	0x6
	.value	0x168
	.long	0x8f3
	.byte	0x38
	.uleb128 0xe
	.long	.LASF107
	.byte	0x6
	.value	0x169
	.long	0x8f3
	.byte	0x40
	.uleb128 0xe
	.long	.LASF108
	.byte	0x6
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x6
	.value	0x16c
	.long	0x8f9
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF109
	.byte	0x6
	.value	0x16d
	.long	0x91b
	.value	0x14c
	.uleb128 0xf
	.long	.LASF110
	.byte	0x6
	.value	0x16e
	.long	0x91b
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x6
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF111
	.byte	0x6
	.value	0x170
	.long	0x13f
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF112
	.byte	0x6
	.value	0x171
	.long	0x92b
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF113
	.byte	0x6
	.value	0x172
	.long	0x92b
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF114
	.byte	0x6
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF115
	.byte	0x6
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF116
	.byte	0x6
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF117
	.byte	0x6
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF118
	.byte	0x6
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF119
	.byte	0x6
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF120
	.byte	0x6
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF121
	.byte	0x6
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF122
	.byte	0x6
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF123
	.byte	0x6
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF124
	.byte	0x6
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF125
	.byte	0x6
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF126
	.byte	0x6
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF127
	.byte	0x6
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF128
	.byte	0x6
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF129
	.byte	0x6
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF130
	.byte	0x6
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF131
	.byte	0x6
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF132
	.byte	0x6
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF133
	.byte	0x6
	.value	0x18a
	.long	0x93b
	.value	0x248
	.uleb128 0xf
	.long	.LASF134
	.byte	0x6
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF135
	.byte	0x6
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF136
	.byte	0x6
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF137
	.byte	0x6
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF138
	.byte	0x6
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF139
	.byte	0x6
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF140
	.byte	0x6
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF141
	.byte	0x6
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x6
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x679
	.uleb128 0x4
	.long	0x34
	.long	0x91b
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
	.long	0x92b
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x93b
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF143
	.uleb128 0x10
	.long	.LASF144
	.byte	0x6
	.value	0x196
	.long	0x679
	.uleb128 0x17
	.byte	0x30
	.byte	0x6
	.value	0x19b
	.long	0x9e7
	.uleb128 0xe
	.long	.LASF145
	.byte	0x6
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF146
	.byte	0x6
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF147
	.byte	0x6
	.value	0x19f
	.long	0xfe
	.byte	0x8
	.uleb128 0xe
	.long	.LASF148
	.byte	0x6
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF149
	.byte	0x6
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF150
	.byte	0x6
	.value	0x1a2
	.long	0xfe
	.byte	0x14
	.uleb128 0xe
	.long	.LASF151
	.byte	0x6
	.value	0x1a4
	.long	0xfe
	.byte	0x15
	.uleb128 0xe
	.long	.LASF152
	.byte	0x6
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF153
	.byte	0x6
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF154
	.byte	0x6
	.value	0x1a8
	.long	0x139
	.byte	0x20
	.uleb128 0xe
	.long	.LASF155
	.byte	0x6
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF156
	.byte	0x6
	.value	0x1ab
	.long	0x94e
	.uleb128 0x11
	.long	.LASF157
	.byte	0x78
	.byte	0x6
	.value	0x1ae
	.long	0xa28
	.uleb128 0xe
	.long	.LASF158
	.byte	0x6
	.value	0x1b1
	.long	0xa28
	.byte	0
	.uleb128 0xe
	.long	.LASF159
	.byte	0x6
	.value	0x1b2
	.long	0x2a2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF160
	.byte	0x6
	.value	0x1b4
	.long	0xa4e
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e7
	.uleb128 0x18
	.long	0x34
	.long	0xa42
	.uleb128 0x14
	.long	0xa42
	.uleb128 0x14
	.long	0xa48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x66d
	.uleb128 0x6
	.byte	0x8
	.long	0x9f3
	.uleb128 0x6
	.byte	0x8
	.long	0xa2e
	.uleb128 0x10
	.long	.LASF161
	.byte	0x6
	.value	0x1b8
	.long	0x9f3
	.uleb128 0x17
	.byte	0x98
	.byte	0x6
	.value	0x1bb
	.long	0xb6d
	.uleb128 0xe
	.long	.LASF162
	.byte	0x6
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x6
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF163
	.byte	0x6
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF164
	.byte	0x6
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF165
	.byte	0x6
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF166
	.byte	0x6
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF167
	.byte	0x6
	.value	0x1c3
	.long	0xb6d
	.byte	0x18
	.uleb128 0xe
	.long	.LASF168
	.byte	0x6
	.value	0x1c4
	.long	0xb73
	.byte	0x20
	.uleb128 0xe
	.long	.LASF169
	.byte	0x6
	.value	0x1c5
	.long	0xb79
	.byte	0x28
	.uleb128 0xe
	.long	.LASF170
	.byte	0x6
	.value	0x1c8
	.long	0xb7f
	.byte	0x30
	.uleb128 0xe
	.long	.LASF171
	.byte	0x6
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF172
	.byte	0x6
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF173
	.byte	0x6
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF174
	.byte	0x6
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF175
	.byte	0x6
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF176
	.byte	0x6
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF177
	.byte	0x6
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF178
	.byte	0x6
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF179
	.byte	0x6
	.value	0x1d3
	.long	0xb94
	.byte	0x78
	.uleb128 0xe
	.long	.LASF180
	.byte	0x6
	.value	0x1d5
	.long	0xb9a
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa54
	.uleb128 0x6
	.byte	0x8
	.long	0x3da
	.uleb128 0x6
	.byte	0x8
	.long	0x4e2
	.uleb128 0x6
	.byte	0x8
	.long	0x529
	.uleb128 0x18
	.long	0x11e
	.long	0xb94
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb85
	.uleb128 0x4
	.long	0x34
	.long	0xbb0
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF181
	.byte	0x6
	.value	0x1d7
	.long	0xa60
	.uleb128 0xd
	.value	0x338
	.byte	0x6
	.value	0x1db
	.long	0xc26
	.uleb128 0xe
	.long	.LASF182
	.byte	0x6
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF183
	.byte	0x6
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF184
	.byte	0x6
	.value	0x1df
	.long	0xc26
	.byte	0x8
	.uleb128 0xf
	.long	.LASF185
	.byte	0x6
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF186
	.byte	0x6
	.value	0x1e1
	.long	0xc3c
	.value	0x32c
	.uleb128 0xf
	.long	.LASF187
	.byte	0x6
	.value	0x1e2
	.long	0xc3c
	.value	0x330
	.uleb128 0xf
	.long	.LASF188
	.byte	0x6
	.value	0x1e3
	.long	0xc3c
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xc36
	.long	0xc36
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF189
	.uleb128 0x10
	.long	.LASF190
	.byte	0x6
	.value	0x1e4
	.long	0xbbc
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xc5b
	.uleb128 0x6
	.byte	0x8
	.long	0xc61
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x139
	.uleb128 0xd
	.value	0xe08
	.byte	0x6
	.value	0x295
	.long	0x1475
	.uleb128 0xe
	.long	.LASF191
	.byte	0x6
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF192
	.byte	0x6
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF193
	.byte	0x6
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x6
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x6
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF194
	.byte	0x6
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF195
	.byte	0x6
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF196
	.byte	0x6
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF197
	.byte	0x6
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF198
	.byte	0x6
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF199
	.byte	0x6
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF200
	.byte	0x6
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF201
	.byte	0x6
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF202
	.byte	0x6
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF203
	.byte	0x6
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF204
	.byte	0x6
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF205
	.byte	0x6
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF206
	.byte	0x6
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF207
	.byte	0x6
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF208
	.byte	0x6
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF209
	.byte	0x6
	.value	0x2b3
	.long	0x1475
	.byte	0x50
	.uleb128 0xe
	.long	.LASF210
	.byte	0x6
	.value	0x2b4
	.long	0x1475
	.byte	0x90
	.uleb128 0xe
	.long	.LASF211
	.byte	0x6
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF212
	.byte	0x6
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF213
	.byte	0x6
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF214
	.byte	0x6
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF215
	.byte	0x6
	.value	0x2b9
	.long	0x148b
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF216
	.byte	0x6
	.value	0x2ba
	.long	0x148b
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF217
	.byte	0x6
	.value	0x2bb
	.long	0x148b
	.value	0x270
	.uleb128 0xf
	.long	.LASF218
	.byte	0x6
	.value	0x2bc
	.long	0x148b
	.value	0x338
	.uleb128 0xf
	.long	.LASF219
	.byte	0x6
	.value	0x2bd
	.long	0x148b
	.value	0x400
	.uleb128 0xf
	.long	.LASF220
	.byte	0x6
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF221
	.byte	0x6
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF222
	.byte	0x6
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF223
	.byte	0x6
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x6
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF224
	.byte	0x6
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF225
	.byte	0x6
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF226
	.byte	0x6
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF227
	.byte	0x6
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF228
	.byte	0x6
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF229
	.byte	0x6
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF230
	.byte	0x6
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF231
	.byte	0x6
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF104
	.byte	0x6
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF232
	.byte	0x6
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF233
	.byte	0x6
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF234
	.byte	0x6
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF235
	.byte	0x6
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF236
	.byte	0x6
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF237
	.byte	0x6
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF238
	.byte	0x6
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF239
	.byte	0x6
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF240
	.byte	0x6
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF241
	.byte	0x6
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF242
	.byte	0x6
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF243
	.byte	0x6
	.value	0x2df
	.long	0x149b
	.value	0x52c
	.uleb128 0xf
	.long	.LASF244
	.byte	0x6
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF245
	.byte	0x6
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF246
	.byte	0x6
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF247
	.byte	0x6
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF248
	.byte	0x6
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF249
	.byte	0x6
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF250
	.byte	0x6
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF251
	.byte	0x6
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF252
	.byte	0x6
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF253
	.byte	0x6
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF254
	.byte	0x6
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF255
	.byte	0x6
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF256
	.byte	0x6
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF257
	.byte	0x6
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF258
	.byte	0x6
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF259
	.byte	0x6
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF260
	.byte	0x6
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF261
	.byte	0x6
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF262
	.byte	0x6
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF263
	.byte	0x6
	.value	0x2f7
	.long	0x93b
	.value	0x978
	.uleb128 0xf
	.long	.LASF264
	.byte	0x6
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF265
	.byte	0x6
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF266
	.byte	0x6
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF267
	.byte	0x6
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF268
	.byte	0x6
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF269
	.byte	0x6
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF270
	.byte	0x6
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF271
	.byte	0x6
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF272
	.byte	0x6
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF273
	.byte	0x6
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF274
	.byte	0x6
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF275
	.byte	0x6
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF276
	.byte	0x6
	.value	0x30a
	.long	0x148b
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF277
	.byte	0x6
	.value	0x30b
	.long	0x148b
	.value	0xa78
	.uleb128 0xf
	.long	.LASF278
	.byte	0x6
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF279
	.byte	0x6
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF280
	.byte	0x6
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF281
	.byte	0x6
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF282
	.byte	0x6
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF283
	.byte	0x6
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF284
	.byte	0x6
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF285
	.byte	0x6
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF286
	.byte	0x6
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF287
	.byte	0x6
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF288
	.byte	0x6
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF289
	.byte	0x6
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF139
	.byte	0x6
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF140
	.byte	0x6
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF141
	.byte	0x6
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF290
	.byte	0x6
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF291
	.byte	0x6
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF292
	.byte	0x6
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF293
	.byte	0x6
	.value	0x327
	.long	0x148b
	.value	0xb88
	.uleb128 0xf
	.long	.LASF294
	.byte	0x6
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF295
	.byte	0x6
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF296
	.byte	0x6
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0xf
	.long	.LASF297
	.byte	0x6
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0xf
	.long	.LASF298
	.byte	0x6
	.value	0x32d
	.long	0x139
	.value	0xc68
	.uleb128 0xf
	.long	.LASF299
	.byte	0x6
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0xf
	.long	.LASF300
	.byte	0x6
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF301
	.byte	0x6
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF302
	.byte	0x6
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF303
	.byte	0x6
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF304
	.byte	0x6
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF305
	.byte	0x6
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF306
	.byte	0x6
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF307
	.byte	0x6
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF308
	.byte	0x6
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF309
	.byte	0x6
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF310
	.byte	0x6
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF311
	.byte	0x6
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF312
	.byte	0x6
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF313
	.byte	0x6
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF314
	.byte	0x6
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF315
	.byte	0x6
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF316
	.byte	0x6
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF317
	.byte	0x6
	.value	0x346
	.long	0x129
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF318
	.byte	0x6
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF319
	.byte	0x6
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF320
	.byte	0x6
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF321
	.byte	0x6
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF322
	.byte	0x6
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF323
	.byte	0x6
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF324
	.byte	0x6
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF325
	.byte	0x6
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF326
	.byte	0x6
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF327
	.byte	0x6
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF328
	.byte	0x6
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF329
	.byte	0x6
	.value	0x35c
	.long	0x14ac
	.value	0xd08
	.uleb128 0xf
	.long	.LASF330
	.byte	0x6
	.value	0x35e
	.long	0x148b
	.value	0xd38
	.uleb128 0xf
	.long	.LASF331
	.byte	0x6
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x148b
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x149b
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x14ac
	.uleb128 0x19
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0x93b
	.long	0x14bc
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF332
	.byte	0x6
	.value	0x361
	.long	0xc6d
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x6
	.value	0x364
	.long	0x1ead
	.uleb128 0xe
	.long	.LASF333
	.byte	0x6
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x6
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF334
	.byte	0x6
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF335
	.byte	0x6
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF336
	.byte	0x6
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF337
	.byte	0x6
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF92
	.byte	0x6
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF338
	.byte	0x6
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF198
	.byte	0x6
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF339
	.byte	0x6
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x6
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF104
	.byte	0x6
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF340
	.byte	0x6
	.value	0x372
	.long	0xc3c
	.byte	0x30
	.uleb128 0xe
	.long	.LASF341
	.byte	0x6
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF342
	.byte	0x6
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF343
	.byte	0x6
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF344
	.byte	0x6
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF345
	.byte	0x6
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF346
	.byte	0x6
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF347
	.byte	0x6
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF348
	.byte	0x6
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF349
	.byte	0x6
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF350
	.byte	0x6
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF351
	.byte	0x6
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF352
	.byte	0x6
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF353
	.byte	0x6
	.value	0x37f
	.long	0xc4f
	.byte	0x68
	.uleb128 0xe
	.long	.LASF354
	.byte	0x6
	.value	0x380
	.long	0xc4f
	.byte	0x70
	.uleb128 0xe
	.long	.LASF355
	.byte	0x6
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF356
	.byte	0x6
	.value	0x383
	.long	0x1ead
	.byte	0x80
	.uleb128 0xe
	.long	.LASF357
	.byte	0x6
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF358
	.byte	0x6
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF359
	.byte	0x6
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF360
	.byte	0x6
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF361
	.byte	0x6
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF362
	.byte	0x6
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF363
	.byte	0x6
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF364
	.byte	0x6
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF365
	.byte	0x6
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF366
	.byte	0x6
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF367
	.byte	0x6
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF368
	.byte	0x6
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF369
	.byte	0x6
	.value	0x395
	.long	0x1eb3
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF370
	.byte	0x6
	.value	0x397
	.long	0x1ecf
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF371
	.byte	0x6
	.value	0x398
	.long	0x1eeb
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF372
	.byte	0x6
	.value	0x399
	.long	0x1f07
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x6
	.value	0x39a
	.long	0x1f29
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x6
	.value	0x39b
	.long	0x1f3f
	.value	0x3338
	.uleb128 0xf
	.long	.LASF373
	.byte	0x6
	.value	0x39d
	.long	0x1f55
	.value	0x3738
	.uleb128 0xf
	.long	.LASF374
	.byte	0x6
	.value	0x39e
	.long	0x1ead
	.value	0x3740
	.uleb128 0xf
	.long	.LASF375
	.byte	0x6
	.value	0x3a0
	.long	0x1f5b
	.value	0x3748
	.uleb128 0xf
	.long	.LASF376
	.byte	0x6
	.value	0x3a1
	.long	0xc36
	.value	0x3750
	.uleb128 0xf
	.long	.LASF377
	.byte	0x6
	.value	0x3a2
	.long	0x1f61
	.value	0x3758
	.uleb128 0xf
	.long	.LASF378
	.byte	0x6
	.value	0x3a3
	.long	0x1f67
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF379
	.byte	0x6
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF380
	.byte	0x6
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x6
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF381
	.byte	0x6
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF382
	.byte	0x6
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF383
	.byte	0x6
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF384
	.byte	0x6
	.value	0x3ac
	.long	0x1f78
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF385
	.byte	0x6
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF386
	.byte	0x6
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF387
	.byte	0x6
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF388
	.byte	0x6
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF389
	.byte	0x6
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x6
	.value	0x3b4
	.long	0x93b
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x6
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF392
	.byte	0x6
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x6
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x6
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF395
	.byte	0x6
	.value	0x3ba
	.long	0x1f8e
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x6
	.value	0x3bb
	.long	0x1f8e
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x6
	.value	0x3bd
	.long	0x1f8e
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x6
	.value	0x3be
	.long	0x1f8e
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x6
	.value	0x3bf
	.long	0x1fb2
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF139
	.byte	0x6
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x6
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x6
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF225
	.byte	0x6
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x6
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x6
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x6
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x6
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x6
	.value	0x3ce
	.long	0x1fc2
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x6
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x6
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x6
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x6
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x6
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x6
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x6
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF304
	.byte	0x6
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x6
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x6
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x6
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x6
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x6
	.value	0x3e4
	.long	0x1fd8
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x6
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x6
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x6
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x6
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x6
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x6
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x6
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x6
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x6
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x6
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x6
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x6
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x6
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x6
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x6
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x6
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x6
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x6
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x6
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x6
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x6
	.value	0x409
	.long	0x1fe8
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF306
	.byte	0x6
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x6
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x6
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x6
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x6
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x6
	.value	0x413
	.long	0x93b
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x6
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x6
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x6
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x6
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x6
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x6
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x6
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x6
	.value	0x41b
	.long	0x1fee
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x6
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x6
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x6
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x6
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x6
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x6
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x6
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x6
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x6
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x6
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x6
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x6
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x6
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x6
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x6
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF302
	.byte	0x6
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x6
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x6
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x6
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x6
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x6
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x6
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x6
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x6
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x6
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x6
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF475
	.byte	0x6
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF207
	.byte	0x6
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF476
	.byte	0x6
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x6
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF478
	.byte	0x6
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF479
	.byte	0x6
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF327
	.byte	0x6
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF480
	.byte	0x6
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF481
	.byte	0x6
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc4f
	.uleb128 0x4
	.long	0x42
	.long	0x1ecf
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
	.long	0x1eeb
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
	.long	0x1f07
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
	.long	0x1f29
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
	.long	0x1f3f
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f55
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1ead
	.uleb128 0x6
	.byte	0x8
	.long	0xc43
	.uleb128 0x6
	.byte	0x8
	.long	0x942
	.uleb128 0x4
	.long	0x66d
	.long	0x1f78
	.uleb128 0x19
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1f8e
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f94
	.uleb128 0x6
	.byte	0x8
	.long	0x1f9a
	.uleb128 0x6
	.byte	0x8
	.long	0x1fa0
	.uleb128 0x6
	.byte	0x8
	.long	0x1fa6
	.uleb128 0x6
	.byte	0x8
	.long	0x1fac
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1fc2
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1fd8
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1fe8
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x597
	.uleb128 0x6
	.byte	0x8
	.long	0x93b
	.uleb128 0x10
	.long	.LASF482
	.byte	0x6
	.value	0x449
	.long	0x14c8
	.uleb128 0x17
	.byte	0x18
	.byte	0x6
	.value	0x49e
	.long	0x2058
	.uleb128 0xe
	.long	.LASF483
	.byte	0x6
	.value	0x4a0
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF484
	.byte	0x6
	.value	0x4a1
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF485
	.byte	0x6
	.value	0x4a2
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF486
	.byte	0x6
	.value	0x4a3
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF487
	.byte	0x6
	.value	0x4a4
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF488
	.byte	0x6
	.value	0x4a5
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF489
	.byte	0x6
	.value	0x4a6
	.long	0x2000
	.uleb128 0x1d
	.long	.LASF490
	.value	0x19b8
	.byte	0x7
	.byte	0x15
	.long	0x22da
	.uleb128 0xb
	.long	.LASF338
	.byte	0x7
	.byte	0x17
	.long	0x180
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x7
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF491
	.byte	0x7
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF492
	.byte	0x7
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF493
	.byte	0x7
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF494
	.byte	0x7
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF495
	.byte	0x7
	.byte	0x1e
	.long	0x22da
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x7
	.byte	0x1f
	.long	0x22da
	.value	0x648
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x7
	.byte	0x20
	.long	0x22da
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x7
	.byte	0x21
	.long	0x22da
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x7
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x7
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x7
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x7
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x7
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x7
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x7
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x7
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x7
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x7
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x7
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x7
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x7
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x7
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF410
	.byte	0x7
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x7
	.byte	0x31
	.long	0xc5b
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x7
	.byte	0x32
	.long	0xc61
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x7
	.byte	0x33
	.long	0xc61
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x7
	.byte	0x34
	.long	0xc5b
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x7
	.byte	0x35
	.long	0xc5b
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x7
	.byte	0x36
	.long	0xc55
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF120
	.byte	0x7
	.byte	0x38
	.long	0x139
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x7
	.byte	0x3a
	.long	0x1fa0
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x7
	.byte	0x3c
	.long	0x22f0
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x7
	.byte	0x3f
	.long	0x22f0
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x7
	.byte	0x42
	.long	0x1f9a
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x7
	.byte	0x44
	.long	0xc67
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF520
	.byte	0x7
	.byte	0x45
	.long	0xc67
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF402
	.byte	0x7
	.byte	0x47
	.long	0x2302
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF521
	.byte	0x7
	.byte	0x48
	.long	0x2302
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF522
	.byte	0x7
	.byte	0x49
	.long	0x2302
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF523
	.byte	0x7
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x7
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF525
	.byte	0x7
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x7
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF527
	.byte	0x7
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF528
	.byte	0x7
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x7
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x13f
	.long	0x22f0
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f6
	.uleb128 0x6
	.byte	0x8
	.long	0x22fc
	.uleb128 0x6
	.byte	0x8
	.long	0x13f
	.uleb128 0x6
	.byte	0x8
	.long	0x2064
	.uleb128 0x7
	.long	.LASF530
	.byte	0x7
	.byte	0x52
	.long	0x2064
	.uleb128 0x20
	.long	.LASF531
	.byte	0x40
	.byte	0x7
	.byte	0x76
	.long	0x23bc
	.uleb128 0xb
	.long	.LASF532
	.byte	0x7
	.byte	0x78
	.long	0x34
	.byte	0
	.uleb128 0xb
	.long	.LASF533
	.byte	0x7
	.byte	0x79
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF500
	.byte	0x7
	.byte	0x7a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF534
	.byte	0x7
	.byte	0x7b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF535
	.byte	0x7
	.byte	0x7d
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF424
	.byte	0x7
	.byte	0x7f
	.long	0x49
	.byte	0x14
	.uleb128 0xb
	.long	.LASF536
	.byte	0x7
	.byte	0x80
	.long	0x34
	.byte	0x18
	.uleb128 0xb
	.long	.LASF88
	.byte	0x7
	.byte	0x81
	.long	0x34
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF502
	.byte	0x7
	.byte	0x82
	.long	0x34
	.byte	0x20
	.uleb128 0xc
	.string	"poc"
	.byte	0x7
	.byte	0x83
	.long	0x34
	.byte	0x24
	.uleb128 0xb
	.long	.LASF522
	.byte	0x7
	.byte	0x85
	.long	0x23bc
	.byte	0x28
	.uleb128 0xb
	.long	.LASF402
	.byte	0x7
	.byte	0x86
	.long	0x23bc
	.byte	0x30
	.uleb128 0xb
	.long	.LASF521
	.byte	0x7
	.byte	0x87
	.long	0x23bc
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2308
	.uleb128 0x7
	.long	.LASF537
	.byte	0x7
	.byte	0x89
	.long	0x2313
	.uleb128 0x20
	.long	.LASF538
	.byte	0x40
	.byte	0x7
	.byte	0x8d
	.long	0x245d
	.uleb128 0xc
	.string	"fs"
	.byte	0x7
	.byte	0x8f
	.long	0x245d
	.byte	0
	.uleb128 0xb
	.long	.LASF539
	.byte	0x7
	.byte	0x90
	.long	0x245d
	.byte	0x8
	.uleb128 0xb
	.long	.LASF540
	.byte	0x7
	.byte	0x91
	.long	0x245d
	.byte	0x10
	.uleb128 0xb
	.long	.LASF541
	.byte	0x7
	.byte	0x92
	.long	0x49
	.byte	0x18
	.uleb128 0xb
	.long	.LASF542
	.byte	0x7
	.byte	0x93
	.long	0x49
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF543
	.byte	0x7
	.byte	0x94
	.long	0x49
	.byte	0x20
	.uleb128 0xb
	.long	.LASF544
	.byte	0x7
	.byte	0x95
	.long	0x49
	.byte	0x24
	.uleb128 0xb
	.long	.LASF545
	.byte	0x7
	.byte	0x96
	.long	0x34
	.byte	0x28
	.uleb128 0xb
	.long	.LASF546
	.byte	0x7
	.byte	0x97
	.long	0x34
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF547
	.byte	0x7
	.byte	0x99
	.long	0x34
	.byte	0x30
	.uleb128 0xb
	.long	.LASF548
	.byte	0x7
	.byte	0x9b
	.long	0x2463
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2463
	.uleb128 0x6
	.byte	0x8
	.long	0x23c2
	.uleb128 0x7
	.long	.LASF549
	.byte	0x7
	.byte	0x9c
	.long	0x23cd
	.uleb128 0x21
	.long	.LASF563
	.byte	0x1
	.byte	0x20
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x255a
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x22
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF550
	.byte	0x1
	.byte	0x23
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.long	.LASF551
	.byte	0x1
	.byte	0x3d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF552
	.byte	0x1
	.byte	0x3e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF553
	.byte	0x1
	.byte	0x3f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF554
	.byte	0x1
	.byte	0x3f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF555
	.byte	0x1
	.byte	0x40
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF556
	.byte	0x1
	.byte	0x41
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF557
	.byte	0x1
	.byte	0x42
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x43
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x23
	.long	.LASF558
	.byte	0x1
	.byte	0x6e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF574
	.byte	0x1
	.byte	0x99
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x25b0
	.uleb128 0x26
	.long	.LASF559
	.byte	0x1
	.byte	0x99
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF560
	.byte	0x1
	.byte	0x99
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF561
	.byte	0x1
	.byte	0x99
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.long	.LASF562
	.byte	0x1
	.byte	0x99
	.long	0x25b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2058
	.uleb128 0x21
	.long	.LASF564
	.byte	0x1
	.byte	0xbe
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x25e2
	.uleb128 0x23
	.long	.LASF565
	.byte	0x1
	.byte	0xc0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF572
	.byte	0x1
	.byte	0xce
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF566
	.byte	0x1
	.byte	0xdb
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x26a0
	.uleb128 0x23
	.long	.LASF567
	.byte	0x1
	.byte	0xde
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.byte	0xdf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"qp"
	.byte	0x1
	.byte	0xdf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF484
	.byte	0x1
	.byte	0xdf
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF568
	.byte	0x1
	.byte	0xe0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF569
	.byte	0x1
	.byte	0xe0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF570
	.byte	0x1
	.byte	0xe0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF571
	.byte	0x1
	.byte	0xe0
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.long	.LASF509
	.byte	0x1
	.byte	0xe1
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF573
	.byte	0x1
	.value	0x16b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF575
	.byte	0x1
	.value	0x1e2
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2731
	.uleb128 0x2a
	.long	.LASF576
	.byte	0x1
	.value	0x1e2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.value	0x1e4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF499
	.byte	0x1
	.value	0x1e4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF577
	.byte	0x1
	.value	0x1e6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF578
	.byte	0x1
	.value	0x1e7
	.long	0x1fe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF579
	.byte	0x1
	.value	0x1e7
	.long	0x1fe8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF580
	.byte	0x6
	.value	0x1f2
	.long	0x49
	.uleb128 0x4
	.long	0x7c
	.long	0x274e
	.uleb128 0x19
	.long	0x75
	.value	0x12b
	.byte	0
	.uleb128 0x2d
	.long	.LASF581
	.byte	0x6
	.value	0x222
	.long	0x273d
	.uleb128 0x2d
	.long	.LASF582
	.byte	0x6
	.value	0x4ac
	.long	0x25b0
	.uleb128 0x2d
	.long	.LASF583
	.byte	0x6
	.value	0x4b7
	.long	0x2772
	.uleb128 0x6
	.byte	0x8
	.long	0x14bc
	.uleb128 0x2e
	.string	"img"
	.byte	0x6
	.value	0x4b8
	.long	0x2784
	.uleb128 0x6
	.byte	0x8
	.long	0x1ff4
	.uleb128 0x2d
	.long	.LASF584
	.byte	0x6
	.value	0x5a4
	.long	0x34
	.uleb128 0x2d
	.long	.LASF585
	.byte	0x6
	.value	0x5a5
	.long	0x34
	.uleb128 0x2f
	.string	"dpb"
	.byte	0x7
	.byte	0x9f
	.long	0x2469
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2f
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
.LASF468:
	.string	"bitdepth_luma_qp_scale"
.LASF557:
	.string	"levelrefs"
.LASF315:
	.string	"channel_type"
.LASF559:
	.string	"level"
.LASF334:
	.string	"nb_references"
.LASF29:
	.string	"FRAME_CODING"
.LASF530:
	.string	"StorablePicture"
.LASF469:
	.string	"bitdepth_chroma_qp_scale"
.LASF316:
	.string	"ScalingMatrixPresentFlag"
.LASF434:
	.string	"no_output_of_prior_pics_flag"
.LASF400:
	.string	"num_ref_idx_l1_active"
.LASF416:
	.string	"pic_order_cnt_lsb"
.LASF458:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF461:
	.string	"DeblockCall"
.LASF514:
	.string	"imgY_ups_w"
.LASF18:
	.string	"_ISgraph"
.LASF542:
	.string	"used_size"
.LASF342:
	.string	"width_cr"
.LASF429:
	.string	"PicSizeInMbs"
.LASF537:
	.string	"FrameStore"
.LASF37:
	.string	"B_SLICE"
.LASF546:
	.string	"max_long_term_pic_idx"
.LASF378:
	.string	"MB_SyntaxElements"
.LASF512:
	.string	"imgY_11_w"
.LASF373:
	.string	"cofAC"
.LASF506:
	.string	"size_x_cr"
.LASF476:
	.string	"lossless_qpprime_flag"
.LASF245:
	.string	"PocMemoryManagement"
.LASF388:
	.string	"imgtr_next_P_fld"
.LASF197:
	.string	"search_range"
.LASF403:
	.string	"mvscale"
.LASF28:
	.string	"int64"
.LASF184:
	.string	"slices"
.LASF87:
	.string	"long_term_pic_num"
.LASF36:
	.string	"P_SLICE"
.LASF354:
	.string	"ipredmode8x8"
.LASF358:
	.string	"mb_y"
.LASF436:
	.string	"dec_ref_pic_marking_buffer"
.LASF214:
	.string	"infile_header"
.LASF566:
	.string	"interpret_gop_structure"
.LASF265:
	.string	"full_search"
.LASF576:
	.string	"current_pic_num"
.LASF89:
	.string	"max_long_term_frame_idx_plus1"
.LASF477:
	.string	"mb_cr_size_x"
.LASF310:
	.string	"DisplayEncParams"
.LASF402:
	.string	"top_field"
.LASF486:
	.string	"slice_qp"
.LASF57:
	.string	"state"
.LASF260:
	.string	"Intra16x16ParDisable"
.LASF71:
	.string	"bcbp_contexts"
.LASF91:
	.string	"syntaxelement"
.LASF223:
	.string	"successive_Bframe"
.LASF233:
	.string	"WeightedPrediction"
.LASF92:
	.string	"type"
.LASF393:
	.string	"fw_mb_mode"
.LASF430:
	.string	"FrameSizeInMbs"
.LASF518:
	.string	"ref_id"
.LASF451:
	.string	"TopFieldFlag"
.LASF139:
	.string	"LFDisableIdc"
.LASF508:
	.string	"chroma_vector_adjustment"
.LASF226:
	.string	"directInferenceFlag"
.LASF153:
	.string	"bits_to_go_skip"
.LASF395:
	.string	"pred_mv"
.LASF305:
	.string	"context_init_method"
.LASF307:
	.string	"AllowTransform8x8"
.LASF474:
	.string	"num_blk8x8_uv"
.LASF558:
	.string	"tempnum"
.LASF212:
	.string	"slice_argument"
.LASF170:
	.string	"rmpni_buffer"
.LASF253:
	.string	"InterSearch8x4"
.LASF120:
	.string	"mb_field"
.LASF252:
	.string	"InterSearch8x8"
.LASF286:
	.string	"NumFramesInELSubSeq"
.LASF88:
	.string	"long_term_frame_idx"
.LASF577:
	.string	"min_poc"
.LASF498:
	.string	"bottom_ref_pic_num"
.LASF353:
	.string	"ipredmode"
.LASF239:
	.string	"RDBSliceWeightOnly"
.LASF204:
	.string	"GenerateMultiplePPS"
.LASF112:
	.string	"b8mode"
.LASF325:
	.string	"cr_qp_index_offset"
.LASF179:
	.string	"slice_too_big"
.LASF370:
	.string	"mprr_2"
.LASF371:
	.string	"mprr_3"
.LASF146:
	.string	"bits_to_go"
.LASF84:
	.string	"DecRefPicMarking_s"
.LASF90:
	.string	"DecRefPicMarking_t"
.LASF459:
	.string	"bot_MB"
.LASF533:
	.string	"is_reference"
.LASF457:
	.string	"BasicUnit"
.LASF198:
	.string	"num_ref_frames"
.LASF53:
	.string	"EcodestrmS"
.LASF380:
	.string	"intra_block"
.LASF6:
	.string	"long int"
.LASF480:
	.string	"auto_crop_right"
.LASF499:
	.string	"pic_num"
.LASF372:
	.string	"mprr_c"
.LASF129:
	.string	"all_blk_8x8"
.LASF274:
	.string	"nobskip"
.LASF432:
	.string	"nal_reference_idc"
.LASF422:
	.string	"framepoc"
.LASF578:
	.string	"tmp_drpm"
.LASF543:
	.string	"ref_frames_in_buffer"
.LASF438:
	.string	"NumberofTextureBits"
.LASF368:
	.string	"opix_c_y"
.LASF580:
	.string	"log2_max_frame_num_minus4"
.LASF235:
	.string	"UseWeightedReferenceME"
.LASF501:
	.string	"used_for_reference"
.LASF288:
	.string	"RandomIntraMBRefresh"
.LASF460:
	.string	"write_macroblock_frame"
.LASF150:
	.string	"stored_byte_buf"
.LASF17:
	.string	"_ISprint"
.LASF332:
	.string	"InputParameters"
.LASF289:
	.string	"LFSendParameters"
.LASF426:
	.string	"PicHeightInMapUnits"
.LASF496:
	.string	"frm_ref_pic_num"
.LASF552:
	.string	"Bframes"
.LASF446:
	.string	"NumberofGOP"
.LASF466:
	.string	"bitdepth_luma"
.LASF484:
	.string	"display_no"
.LASF367:
	.string	"opix_c_x"
.LASF43:
	.string	"Ebuffer"
.LASF215:
	.string	"infile"
.LASF42:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF340:
	.string	"framerate"
.LASF165:
	.string	"max_part_nr"
.LASF56:
	.string	"EncodingEnvironmentPtr"
.LASF411:
	.string	"delta_pic_order_always_zero_flag"
.LASF357:
	.string	"mb_x"
.LASF119:
	.string	"IntraChromaPredModeFlag"
.LASF485:
	.string	"reference_idc"
.LASF96:
	.string	"context"
.LASF174:
	.string	"long_term_pic_idx_l0"
.LASF178:
	.string	"long_term_pic_idx_l1"
.LASF171:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF175:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF448:
	.string	"NumberofPPicture"
.LASF443:
	.string	"NumberofMBHeaderBits"
.LASF374:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF110:
	.string	"intra_pred_modes8x8"
.LASF564:
	.string	"init_gop_structure"
.LASF31:
	.string	"ADAPTIVE_CODING"
.LASF462:
	.string	"last_pic_bottom_field"
.LASF227:
	.string	"BiPredMotionEstimation"
.LASF397:
	.string	"bipred_mv1"
.LASF398:
	.string	"bipred_mv2"
.LASF73:
	.string	"last_contexts"
.LASF118:
	.string	"c_ipred_mode"
.LASF299:
	.string	"run_length_minus1"
.LASF473:
	.string	"max_imgpel_value_uv"
.LASF208:
	.string	"intra_upd"
.LASF172:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF176:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF173:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF177:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF292:
	.string	"SPPercentageThreshold"
.LASF147:
	.string	"byte_buf"
.LASF191:
	.string	"ProfileIDC"
.LASF132:
	.string	"bi_pred_me"
.LASF584:
	.string	"start_frame_no_in_this_IGOP"
.LASF103:
	.string	"delta_qp"
.LASF573:
	.string	"encode_enhancement_layer"
.LASF264:
	.string	"chroma_qp_index_offset"
.LASF339:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF352:
	.string	"block_c_x"
.LASF66:
	.string	"transform_size_contexts"
.LASF435:
	.string	"long_term_reference_flag"
.LASF202:
	.string	"Log2MaxFrameNum"
.LASF348:
	.string	"is_intra_block"
.LASF164:
	.string	"start_mb_nr"
.LASF582:
	.string	"gop_structure"
.LASF311:
	.string	"RCEnable"
.LASF237:
	.string	"RDPictureIntra"
.LASF201:
	.string	"B_List1_refs"
.LASF224:
	.string	"qpBRSOffset"
.LASF503:
	.string	"non_existing"
.LASF290:
	.string	"SparePictureOption"
.LASF483:
	.string	"slice_type"
.LASF267:
	.string	"qpN2"
.LASF487:
	.string	"pyramid_layer"
.LASF220:
	.string	"intra_period"
.LASF106:
	.string	"mb_available_up"
.LASF418:
	.string	"delta_pic_order_cnt"
.LASF255:
	.string	"InterSearch4x4"
.LASF572:
	.string	"clear_gop_structure"
.LASF254:
	.string	"InterSearch4x8"
.LASF588:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF511:
	.string	"imgY_11"
.LASF437:
	.string	"NumberofHeaderBits"
.LASF270:
	.string	"qp02"
.LASF95:
	.string	"bitpattern"
.LASF40:
	.string	"SI_SLICE"
.LASF65:
	.string	"mb_aff_contexts"
.LASF130:
	.string	"luma_transform_size_8x8_flag"
.LASF317:
	.string	"ScalingListPresentFlag"
.LASF360:
	.string	"block_y"
.LASF240:
	.string	"SkipIntraInInterSlices"
.LASF375:
	.string	"currentPicture"
.LASF61:
	.string	"b8_type_contexts"
.LASF297:
	.string	"bottom_right"
.LASF234:
	.string	"WeightedBiprediction"
.LASF391:
	.string	"p_interval"
.LASF190:
	.string	"Picture"
.LASF492:
	.string	"bottom_poc"
.LASF389:
	.string	"imgtr_last_P_fld"
.LASF539:
	.string	"fs_ref"
.LASF583:
	.string	"input"
.LASF277:
	.string	"LeakyBucketParamFile"
.LASF513:
	.string	"imgY_ups"
.LASF193:
	.string	"no_frames"
.LASF135:
	.string	"prev_delta_qp"
.LASF21:
	.string	"_ISpunct"
.LASF205:
	.string	"img_width"
.LASF244:
	.string	"PyramidRefReorder"
.LASF349:
	.string	"is_v_block"
.LASF211:
	.string	"slice_mode"
.LASF249:
	.string	"InterSearch16x16"
.LASF351:
	.string	"mb_y_intra"
.LASF60:
	.string	"mb_type_contexts"
.LASF296:
	.string	"top_left"
.LASF154:
	.string	"streamBuffer"
.LASF51:
	.string	"Ebits_to_goS"
.LASF250:
	.string	"InterSearch16x8"
.LASF449:
	.string	"MADofMB"
.LASF575:
	.string	"poc_based_ref_management"
.LASF399:
	.string	"num_ref_idx_l0_active"
.LASF306:
	.string	"model_number"
.LASF38:
	.string	"I_SLICE"
.LASF229:
	.string	"BiPredMESearchRange"
.LASF100:
	.string	"macroblock"
.LASF420:
	.string	"toppoc"
.LASF410:
	.string	"MbaffFrameFlag"
.LASF41:
	.string	"Elow"
.LASF365:
	.string	"opix_x"
.LASF314:
	.string	"basicunit"
.LASF491:
	.string	"top_poc"
.LASF278:
	.string	"PicInterlace"
.LASF163:
	.string	"picture_type"
.LASF479:
	.string	"chroma_qp_offset"
.LASF243:
	.string	"ExplicitPyramidFormat"
.LASF428:
	.string	"PicHeightInMbs"
.LASF326:
	.string	"lossless_qpprime_y_zero_flag"
.LASF490:
	.string	"storable_picture"
.LASF219:
	.string	"QmatrixFile"
.LASF236:
	.string	"RDPictureDecision"
.LASF55:
	.string	"EncodingEnvironment"
.LASF160:
	.string	"writeSyntaxElement"
.LASF571:
	.string	"qp_read"
.LASF192:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF69:
	.string	"cipr_contexts"
.LASF343:
	.string	"height"
.LASF54:
	.string	"Ecodestrm_lenS"
.LASF312:
	.string	"bit_rate"
.LASF166:
	.string	"num_mb"
.LASF421:
	.string	"bottompoc"
.LASF203:
	.string	"ResendPPS"
.LASF258:
	.string	"Intra4x4DiagDisable"
.LASF385:
	.string	"pstruct_next_P"
.LASF116:
	.string	"lf_alpha_c0_offset"
.LASF481:
	.string	"auto_crop_bottom"
.LASF218:
	.string	"TraceFile"
.LASF213:
	.string	"UseConstrainedIntraPred"
.LASF450:
	.string	"BasicUnitQP"
.LASF442:
	.string	"NumberofMBTextureBits"
.LASF114:
	.string	"cbp_bits"
.LASF15:
	.string	"_ISxdigit"
.LASF509:
	.string	"coded_frame"
.LASF493:
	.string	"frame_poc"
.LASF363:
	.string	"pix_c_x"
.LASF364:
	.string	"pix_c_y"
.LASF195:
	.string	"hadamard"
.LASF392:
	.string	"b_frame_to_code"
.LASF185:
	.string	"bits_per_picture"
.LASF350:
	.string	"mb_y_upd"
.LASF331:
	.string	"OffsetMatrixPresentFlag"
.LASF284:
	.string	"NoOfDecoders"
.LASF79:
	.string	"RMPNI"
.LASF34:
	.string	"BOTTOM_FIELD"
.LASF140:
	.string	"LFAlphaC0Offset"
.LASF117:
	.string	"lf_beta_offset"
.LASF574:
	.string	"gop_pyramid"
.LASF86:
	.string	"difference_of_pic_nums_minus1"
.LASF547:
	.string	"init_done"
.LASF287:
	.string	"NumFrameIn2ndIGOP"
.LASF419:
	.string	"field_picture"
.LASF221:
	.string	"idr_enable"
.LASF369:
	.string	"mprr"
.LASF222:
	.string	"start_frame"
.LASF510:
	.string	"imgY"
.LASF67:
	.string	"MotionInfoContexts"
.LASF562:
	.string	"pyramid_structure"
.LASF554:
	.string	"curGOPLeveldist"
.LASF9:
	.string	"long long int"
.LASF561:
	.string	"frames"
.LASF390:
	.string	"b_interval"
.LASF44:
	.string	"Ebits_to_go"
.LASF382:
	.string	"fld_flag"
.LASF384:
	.string	"direct_intraP_ref"
.LASF341:
	.string	"width"
.LASF108:
	.string	"mb_type"
.LASF149:
	.string	"stored_bits_to_go"
.LASF478:
	.string	"mb_cr_size_y"
.LASF11:
	.string	"_ISupper"
.LASF415:
	.string	"offset_for_ref_frame"
.LASF102:
	.string	"slice_nr"
.LASF187:
	.string	"distortion_u"
.LASF188:
	.string	"distortion_v"
.LASF186:
	.string	"distortion_y"
.LASF152:
	.string	"byte_pos_skip"
.LASF141:
	.string	"LFBetaOffset"
.LASF143:
	.string	"double"
.LASF20:
	.string	"_IScntrl"
.LASF291:
	.string	"SPDetectionThreshold"
.LASF522:
	.string	"frame"
.LASF327:
	.string	"residue_transform_flag"
.LASF387:
	.string	"imgtr_last_P_frm"
.LASF74:
	.string	"one_contexts"
.LASF507:
	.string	"size_y_cr"
.LASF279:
	.string	"MbInterlace"
.LASF104:
	.string	"qpsp"
.LASF189:
	.string	"float"
.LASF309:
	.string	"ReportFrameStats"
.LASF242:
	.string	"PyramidCoding"
.LASF58:
	.string	"count"
.LASF136:
	.string	"prev_cbp"
.LASF246:
	.string	"symbol_mode"
.LASF59:
	.string	"BiContextType"
.LASF502:
	.string	"is_output"
.LASF383:
	.string	"rd_pass"
.LASF379:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF75:
	.string	"abs_contexts"
.LASF45:
	.string	"Ebits_to_follow"
.LASF155:
	.string	"write_flag"
.LASF336:
	.string	"total_number_mb"
.LASF551:
	.string	"GOPlevels"
.LASF217:
	.string	"ReconFile"
.LASF47:
	.string	"Ecodestrm_len"
.LASF169:
	.string	"tex_ctx"
.LASF231:
	.string	"sp_periodicity"
.LASF447:
	.string	"TotalQpforPPicture"
.LASF107:
	.string	"mb_available_left"
.LASF83:
	.string	"RMPNIbuffer_s"
.LASF82:
	.string	"RMPNIbuffer_t"
.LASF302:
	.string	"slice_group_change_cycle"
.LASF329:
	.string	"LambdaWeight"
.LASF78:
	.string	"TextureInfoContexts"
.LASF521:
	.string	"bottom_field"
.LASF555:
	.string	"curlevel"
.LASF335:
	.string	"current_mb_nr"
.LASF275:
	.string	"NumberLeakyBuckets"
.LASF495:
	.string	"ref_pic_num"
.LASF406:
	.string	"layer"
.LASF113:
	.string	"b8pdir"
.LASF182:
	.string	"no_slices"
.LASF548:
	.string	"last_picture"
.LASF413:
	.string	"offset_for_top_to_bottom_field"
.LASF262:
	.string	"ChromaIntraDisable"
.LASF386:
	.string	"imgtr_next_P_frm"
.LASF452:
	.string	"FieldControl"
.LASF444:
	.string	"NumberofCodedBFrame"
.LASF405:
	.string	"i16offset"
.LASF261:
	.string	"Intra16x16PlaneDisable"
.LASF232:
	.string	"qpsp_pred"
.LASF304:
	.string	"pic_order_cnt_type"
.LASF361:
	.string	"pix_x"
.LASF362:
	.string	"pix_y"
.LASF586:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF482:
	.string	"ImageParameters"
.LASF159:
	.string	"ee_cabac"
.LASF25:
	.string	"FALSE"
.LASF137:
	.string	"predict_qp"
.LASF30:
	.string	"FIELD_CODING"
.LASF196:
	.string	"hadamardqpel"
.LASF401:
	.string	"field_mode"
.LASF257:
	.string	"Intra4x4ParDisable"
.LASF359:
	.string	"block_x"
.LASF532:
	.string	"is_used"
.LASF276:
	.string	"LeakyBucketRateFile"
.LASF206:
	.string	"img_height"
.LASF556:
	.string	"prvlevelrefs"
.LASF210:
	.string	"part_size"
.LASF248:
	.string	"partition_mode"
.LASF463:
	.string	"last_has_mmco_5"
.LASF529:
	.string	"frame_cropping_rect_bottom_offset"
.LASF77:
	.string	"fld_last_contexts"
.LASF412:
	.string	"offset_for_non_ref_pic"
.LASF142:
	.string	"skip_flag"
.LASF424:
	.string	"frame_num"
.LASF72:
	.string	"map_contexts"
.LASF293:
	.string	"SliceGroupConfigFileName"
.LASF39:
	.string	"SP_SLICE"
.LASF85:
	.string	"memory_management_control_operation"
.LASF280:
	.string	"IntraBottom"
.LASF156:
	.string	"Bitstream"
.LASF330:
	.string	"QOffsetMatrixFile"
.LASF563:
	.string	"create_pyramid"
.LASF200:
	.string	"B_List0_refs"
.LASF408:
	.string	"NoResidueDirect"
.LASF545:
	.string	"last_output_poc"
.LASF456:
	.string	"NumberofCodedMacroBlocks"
.LASF13:
	.string	"_ISalpha"
.LASF162:
	.string	"picture_id"
.LASF524:
	.string	"frame_mbs_only_flag"
.LASF381:
	.string	"fld_type"
.LASF445:
	.string	"NumberofCodedPFrame"
.LASF541:
	.string	"size"
.LASF10:
	.string	"long long unsigned int"
.LASF33:
	.string	"TOP_FIELD"
.LASF228:
	.string	"BiPredMERefinements"
.LASF19:
	.string	"_ISblank"
.LASF344:
	.string	"height_cr"
.LASF396:
	.string	"all_mv"
.LASF269:
	.string	"qp2start"
.LASF22:
	.string	"_ISalnum"
.LASF338:
	.string	"structure"
.LASF180:
	.string	"field_ctx"
.LASF520:
	.string	"field_frame"
.LASF161:
	.string	"DataPartition"
.LASF377:
	.string	"mb_data"
.LASF528:
	.string	"frame_cropping_rect_top_offset"
.LASF313:
	.string	"SeinitialQP"
.LASF440:
	.string	"NumberofBasicUnitTextureBits"
.LASF414:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF16:
	.string	"_ISspace"
.LASF181:
	.string	"Slice"
.LASF157:
	.string	"datapartition"
.LASF52:
	.string	"Ebits_to_followS"
.LASF345:
	.string	"height_cr_frame"
.LASF560:
	.string	"frm_no"
.LASF454:
	.string	"Frame_Total_Number_MB"
.LASF570:
	.string	"stored_read"
.LASF93:
	.string	"value1"
.LASF94:
	.string	"value2"
.LASF109:
	.string	"intra_pred_modes"
.LASF526:
	.string	"frame_cropping_rect_left_offset"
.LASF323:
	.string	"rgb_input_flag"
.LASF158:
	.string	"bitstream"
.LASF199:
	.string	"P_List0_refs"
.LASF285:
	.string	"RestrictRef"
.LASF497:
	.string	"top_ref_pic_num"
.LASF565:
	.string	"max_gopsize"
.LASF48:
	.string	"ElowS"
.LASF535:
	.string	"is_non_existent"
.LASF295:
	.string	"slice_group_map_type"
.LASF27:
	.string	"Boolean"
.LASF247:
	.string	"of_mode"
.LASF470:
	.string	"bitdepth_lambda_scale"
.LASF273:
	.string	"disthres"
.LASF407:
	.string	"old_layer"
.LASF333:
	.string	"number"
.LASF523:
	.string	"chroma_format_idc"
.LASF271:
	.string	"qpBRS2Offset"
.LASF472:
	.string	"max_imgpel_value"
.LASF425:
	.string	"PicWidthInMbs"
.LASF281:
	.string	"LossRateA"
.LASF282:
	.string	"LossRateB"
.LASF283:
	.string	"LossRateC"
.LASF465:
	.string	"pic_unit_size_on_disk"
.LASF471:
	.string	"dc_pred_value"
.LASF475:
	.string	"num_cdc_coeff"
.LASF322:
	.string	"img_width_cr"
.LASF144:
	.string	"Macroblock"
.LASF63:
	.string	"ref_no_contexts"
.LASF209:
	.string	"blc_size"
.LASF32:
	.string	"FRAME"
.LASF433:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF148:
	.string	"stored_byte_pos"
.LASF24:
	.string	"byte"
.LASF12:
	.string	"_ISlower"
.LASF81:
	.string	"Next"
.LASF241:
	.string	"BRefPictures"
.LASF80:
	.string	"Data"
.LASF568:
	.string	"slice_read"
.LASF587:
	.string	"explicit_gop.c"
.LASF5:
	.string	"short int"
.LASF494:
	.string	"order_num"
.LASF519:
	.string	"moving_block"
.LASF46:
	.string	"Ecodestrm"
.LASF366:
	.string	"opix_y"
.LASF207:
	.string	"yuv_format"
.LASF318:
	.string	"FMEnable"
.LASF409:
	.string	"redundant_pic_cnt"
.LASF569:
	.string	"order_read"
.LASF394:
	.string	"bw_mb_mode"
.LASF488:
	.string	"pyramidPocDelta"
.LASF531:
	.string	"frame_store"
.LASF553:
	.string	"curGOPLevelfrm"
.LASF303:
	.string	"redundant_slice_flag"
.LASF581:
	.string	"errortext"
.LASF585:
	.string	"start_tr_in_this_IGOP"
.LASF319:
	.string	"BitDepthLuma"
.LASF26:
	.string	"TRUE"
.LASF489:
	.string	"GOP_DATA"
.LASF272:
	.string	"rdopt"
.LASF540:
	.string	"fs_ltref"
.LASF50:
	.string	"EbufferS"
.LASF549:
	.string	"DecodedPictureBuffer"
.LASF423:
	.string	"ThisPOC"
.LASF441:
	.string	"TotalMADBasicUnit"
.LASF134:
	.string	"prev_qp"
.LASF256:
	.string	"IntraDisableInterOnly"
.LASF62:
	.string	"mv_res_contexts"
.LASF251:
	.string	"InterSearch8x16"
.LASF550:
	.string	"centerB"
.LASF133:
	.string	"actj"
.LASF294:
	.string	"num_slice_groups_minus1"
.LASF417:
	.string	"delta_pic_order_cnt_bottom"
.LASF404:
	.string	"buf_cycle"
.LASF355:
	.string	"cod_counter"
.LASF538:
	.string	"decoded_picture_buffer"
.LASF167:
	.string	"partArr"
.LASF579:
	.string	"tmp_drpm2"
.LASF145:
	.string	"byte_pos"
.LASF216:
	.string	"outfile"
.LASF68:
	.string	"ipr_contexts"
.LASF121:
	.string	"mbAddrA"
.LASF122:
	.string	"mbAddrB"
.LASF123:
	.string	"mbAddrC"
.LASF124:
	.string	"mbAddrD"
.LASF308:
	.string	"LowPassForIntra8x8"
.LASF356:
	.string	"nz_coeff"
.LASF64:
	.string	"delta_qp_contexts"
.LASF536:
	.string	"frame_num_wrap"
.LASF259:
	.string	"Intra4x4DirDisable"
.LASF439:
	.string	"NumberofBasicUnitHeaderBits"
.LASF99:
	.string	"SyntaxElement"
.LASF268:
	.string	"qpB2"
.LASF320:
	.string	"BitDepthChroma"
.LASF455:
	.string	"IFLAG"
.LASF464:
	.string	"pre_frame_num"
.LASF431:
	.string	"pic_order_present_flag"
.LASF115:
	.string	"lf_disable"
.LASF230:
	.string	"BiPredMESubPel"
.LASF504:
	.string	"size_x"
.LASF544:
	.string	"ltref_frames_in_buffer"
.LASF505:
	.string	"size_y"
.LASF14:
	.string	"_ISdigit"
.LASF183:
	.string	"idr_flag"
.LASF534:
	.string	"is_orig_reference"
.LASF2:
	.string	"short unsigned int"
.LASF453:
	.string	"FieldFrame"
.LASF266:
	.string	"last_frame"
.LASF527:
	.string	"frame_cropping_rect_right_offset"
.LASF138:
	.string	"predict_error"
.LASF337:
	.string	"current_slice_nr"
.LASF225:
	.string	"direct_spatial_mv_pred_flag"
.LASF194:
	.string	"jumpd"
.LASF467:
	.string	"bitdepth_chroma"
.LASF97:
	.string	"mapping"
.LASF516:
	.string	"ref_idx"
.LASF321:
	.string	"img_height_cr"
.LASF525:
	.string	"frame_cropping_flag"
.LASF515:
	.string	"imgUV"
.LASF301:
	.string	"slice_group_change_rate_minus1"
.LASF517:
	.string	"ref_pic_id"
.LASF23:
	.string	"int64_t"
.LASF98:
	.string	"writing"
.LASF298:
	.string	"slice_group_id"
.LASF76:
	.string	"fld_map_contexts"
.LASF151:
	.string	"byte_buf_skip"
.LASF300:
	.string	"slice_group_change_direction_flag"
.LASF263:
	.string	"FrameRate"
.LASF238:
	.string	"RDPSliceWeightOnly"
.LASF70:
	.string	"cbp_contexts"
.LASF324:
	.string	"cb_qp_index_offset"
.LASF168:
	.string	"mot_ctx"
.LASF567:
	.string	"nLength"
.LASF131:
	.string	"NoMbPartLessThan8x8Flag"
.LASF346:
	.string	"subblock_x"
.LASF347:
	.string	"subblock_y"
.LASF500:
	.string	"is_long_term"
.LASF328:
	.string	"UseExplicitLambdaParams"
.LASF101:
	.string	"currSEnr"
.LASF35:
	.string	"PictureStructure"
.LASF427:
	.string	"FrameHeightInMbs"
.LASF376:
	.string	"currentSlice"
.LASF105:
	.string	"bitcounter"
.LASF49:
	.string	"ErangeS"
.LASF125:
	.string	"mbAvailA"
.LASF126:
	.string	"mbAvailB"
.LASF127:
	.string	"mbAvailC"
.LASF128:
	.string	"mbAvailD"
.LASF111:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
