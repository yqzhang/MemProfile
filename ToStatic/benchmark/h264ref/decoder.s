	.file	"decoder.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 decoder.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	decode_one_b8block
	.type	decode_one_b8block, @function
decode_one_b8block:
.LFB2:
	.file 1 "decoder.c"
	.loc 1 38 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1248, %rsp	#,
	movl	%edi, -1220(%rbp)	# decoder, decoder
	movl	%esi, -1224(%rbp)	# mbmode, mbmode
	movl	%edx, -1228(%rbp)	# b8block, b8block
	movl	%ecx, -1232(%rbp)	# b8mode, b8mode
	movl	%r8d, -1236(%rbp)	# b8ref, b8ref
	.loc 1 40 0
	movq	img(%rip), %rax	# img, img.0
	movl	(%rax), %edx	# img.0_22->number, D.5894
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.1
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.1, D.5894
	movl	%edx, %eax	# D.5894, D.5894
	leal	-1(%rax), %edx	#, D.5894
	movq	img(%rip), %rax	# img, img.2
	movl	32(%rax), %ecx	# img.2_27->num_ref_frames, D.5894
	movl	%edx, %eax	# D.5894, tmp272
	cltd
	idivl	%ecx	# D.5894
	movl	%edx, -1196(%rbp)	# tmp271, ref_inx
	.loc 1 45 0
	movl	-1228(%rbp), %eax	# b8block, tmp273
	cltd
	shrl	$31, %edx	#, tmp275
	addl	%edx, %eax	# tmp275, tmp276
	andl	$1, %eax	#, tmp277
	subl	%edx, %eax	# tmp275, tmp278
	sall	$3, %eax	#, tmp279
	movl	%eax, -1192(%rbp)	# tmp279, i0
	movl	-1192(%rbp), %eax	# i0, tmp283
	addl	$8, %eax	#, tmp282
	movl	%eax, -1188(%rbp)	# tmp282, i1
	movl	-1192(%rbp), %eax	# i0, tmp287
	sarl	$2, %eax	#, tmp286
	movl	%eax, -1184(%rbp)	# tmp286, bx0
	movl	-1184(%rbp), %eax	# bx0, tmp291
	addl	$2, %eax	#, tmp290
	movl	%eax, -1180(%rbp)	# tmp290, bx1
	.loc 1 46 0
	movl	-1228(%rbp), %eax	# b8block, tmp292
	movl	%eax, %edx	# tmp292, tmp293
	shrl	$31, %edx	#, tmp293
	addl	%edx, %eax	# tmp293, tmp294
	sarl	%eax	# tmp295
	sall	$3, %eax	#, tmp296
	movl	%eax, -1176(%rbp)	# tmp296, j0
	movl	-1176(%rbp), %eax	# j0, tmp300
	addl	$8, %eax	#, tmp299
	movl	%eax, -1172(%rbp)	# tmp299, j1
	movl	-1176(%rbp), %eax	# j0, tmp304
	sarl	$2, %eax	#, tmp303
	movl	%eax, -1168(%rbp)	# tmp303, by0
	movl	-1168(%rbp), %eax	# by0, tmp308
	addl	$2, %eax	#, tmp307
	movl	%eax, -1164(%rbp)	# tmp307, by1
	.loc 1 48 0
	movq	img(%rip), %rax	# img, img.3
	movl	24(%rax), %eax	# img.3_41->type, D.5894
	cmpl	$2, %eax	#, D.5894
	jne	.L2	#,
	.loc 1 50 0
	movl	-1192(%rbp), %eax	# i0, tmp309
	movl	%eax, -1212(%rbp)	# tmp309, i
	jmp	.L3	#
.L6:
	.loc 1 51 0
	movl	-1176(%rbp), %eax	# j0, tmp310
	movl	%eax, -1208(%rbp)	# tmp310, j
	jmp	.L4	#
.L5:
	.loc 1 53 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.4
	movq	8(%rax), %rax	# decs.4_45->decY, D.5895
	movl	-1220(%rbp), %edx	# decoder, tmp311
	movslq	%edx, %rdx	# tmp311, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5895
	movq	(%rax), %rdx	# *_50, D.5897
	movq	img(%rip), %rax	# img, img.5
	movl	156(%rax), %ecx	# img.5_52->pix_y, D.5894
	movl	-1208(%rbp), %eax	# j, tmp312
	addl	%ecx, %eax	# D.5894, D.5894
	cltq
	salq	$3, %rax	#, D.5896
	addq	%rdx, %rax	# D.5897, D.5897
	movq	(%rax), %rdx	# *_57, D.5898
	movq	img(%rip), %rax	# img, img.6
	movl	152(%rax), %ecx	# img.6_59->pix_x, D.5894
	movl	-1212(%rbp), %eax	# i, tmp313
	addl	%ecx, %eax	# D.5894, D.5894
	cltq
	addq	%rax, %rax	# D.5896
	addq	%rax, %rdx	# D.5896, D.5898
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.7
	movq	6424(%rax), %rcx	# enc_picture.7_65->imgY, D.5897
	movq	img(%rip), %rax	# img, img.8
	movl	156(%rax), %esi	# img.8_67->pix_y, D.5894
	movl	-1208(%rbp), %eax	# j, tmp314
	addl	%esi, %eax	# D.5894, D.5894
	cltq
	salq	$3, %rax	#, D.5896
	addq	%rcx, %rax	# D.5897, D.5897
	movq	(%rax), %rcx	# *_72, D.5898
	movq	img(%rip), %rax	# img, img.9
	movl	152(%rax), %esi	# img.9_74->pix_x, D.5894
	movl	-1212(%rbp), %eax	# i, tmp315
	addl	%esi, %eax	# D.5894, D.5894
	cltq
	addq	%rax, %rax	# D.5896
	addq	%rcx, %rax	# D.5898, D.5898
	movzwl	(%rax), %eax	# *_79, D.5899
	movw	%ax, (%rdx)	# D.5899, *_64
	.loc 1 51 0 discriminator 2
	addl	$1, -1208(%rbp)	#, j
.L4:
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	-1208(%rbp), %eax	# j, tmp316
	cmpl	-1172(%rbp), %eax	# j1, tmp316
	jl	.L5	#,
	.loc 1 50 0 is_stmt 1
	addl	$1, -1212(%rbp)	#, i
.L3:
	.loc 1 50 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# i, tmp317
	cmpl	-1188(%rbp), %eax	# i1, tmp317
	jl	.L6	#,
	jmp	.L1	#
.L2:
	.loc 1 58 0 is_stmt 1
	cmpl	$0, -1224(%rbp)	#, mbmode
	jne	.L8	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.10
	movl	24(%rax), %eax	# img.10_84->type, D.5894
	testl	%eax, %eax	# D.5894
	je	.L9	#,
	movq	img(%rip), %rax	# img, img.11
	movl	24(%rax), %eax	# img.11_86->type, D.5894
	cmpl	$1, %eax	#, D.5894
	jne	.L8	#,
	movq	img(%rip), %rax	# img, img.12
	movl	72496(%rax), %eax	# img.12_88->nal_reference_idc, D.5894
	testl	%eax, %eax	# D.5894
	jle	.L8	#,
.L9:
	.loc 1 60 0 is_stmt 1
	movl	-1192(%rbp), %eax	# i0, tmp318
	movl	%eax, -1212(%rbp)	# tmp318, i
	jmp	.L10	#
.L13:
	.loc 1 61 0
	movl	-1176(%rbp), %eax	# j0, tmp319
	movl	%eax, -1208(%rbp)	# tmp319, j
	jmp	.L11	#
.L12:
	.loc 1 63 0 discriminator 2
	movl	-1212(%rbp), %eax	# i, tmp321
	cltq
	movl	-1208(%rbp), %edx	# j, tmp323
	movslq	%edx, %rdx	# tmp323, tmp322
	salq	$4, %rdx	#, tmp324
	addq	%rdx, %rax	# tmp324, tmp325
	movl	$0, -1024(%rbp,%rax,4)	#, resY_tmp
	.loc 1 61 0 discriminator 2
	addl	$1, -1208(%rbp)	#, j
.L11:
	.loc 1 61 0 is_stmt 0 discriminator 1
	movl	-1208(%rbp), %eax	# j, tmp326
	cmpl	-1172(%rbp), %eax	# j1, tmp326
	jl	.L12	#,
	.loc 1 60 0 is_stmt 1
	addl	$1, -1212(%rbp)	#, i
.L10:
	.loc 1 60 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# i, tmp327
	cmpl	-1188(%rbp), %eax	# i1, tmp327
	jl	.L13	#,
	.loc 1 65 0 is_stmt 1
	movl	-1168(%rbp), %eax	# by0, tmp328
	movl	%eax, -1200(%rbp)	# tmp328, by
	jmp	.L14	#
.L17:
	.loc 1 66 0
	movl	-1184(%rbp), %eax	# bx0, tmp329
	movl	%eax, -1204(%rbp)	# tmp329, bx
	jmp	.L15	#
.L16:
	.loc 1 68 0 discriminator 2
	movl	-1204(%rbp), %eax	# bx, tmp331
	cltq
	movl	-1200(%rbp), %edx	# by, tmp333
	movslq	%edx, %rdx	# tmp333, tmp332
	salq	$2, %rdx	#, tmp334
	addq	%rdx, %rax	# tmp334, tmp335
	addq	$16, %rax	#, tmp336
	movl	$0, -1152(%rbp,%rax,4)	#, mv
	movl	-1204(%rbp), %eax	# bx, tmp338
	cltq
	movl	-1200(%rbp), %edx	# by, tmp340
	movslq	%edx, %rdx	# tmp340, tmp339
	salq	$2, %rdx	#, tmp341
	addq	%rdx, %rax	# tmp341, tmp342
	addq	$16, %rax	#, tmp343
	movl	-1152(%rbp,%rax,4), %eax	# mv, D.5894
	movl	-1204(%rbp), %edx	# bx, tmp345
	movslq	%edx, %rdx	# tmp345, tmp344
	movl	-1200(%rbp), %ecx	# by, tmp347
	movslq	%ecx, %rcx	# tmp347, tmp346
	salq	$2, %rcx	#, tmp348
	addq	%rcx, %rdx	# tmp348, tmp349
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5894, mv
	.loc 1 66 0 discriminator 2
	addl	$1, -1204(%rbp)	#, bx
.L15:
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	-1204(%rbp), %eax	# bx, tmp350
	cmpl	-1180(%rbp), %eax	# bx1, tmp350
	jl	.L16	#,
	.loc 1 65 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, by
.L14:
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %eax	# by, tmp351
	cmpl	-1164(%rbp), %eax	# by1, tmp351
	jl	.L17	#,
	.loc 1 58 0 is_stmt 1
	jmp	.L18	#
.L8:
	.loc 1 73 0
	cmpl	$0, -1232(%rbp)	#, b8mode
	jle	.L19	#,
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpl	$7, -1232(%rbp)	#, b8mode
	jg	.L19	#,
	.loc 1 75 0 is_stmt 1
	movl	-1168(%rbp), %eax	# by0, tmp352
	movl	%eax, -1200(%rbp)	# tmp352, by
	jmp	.L20	#
.L23:
	.loc 1 76 0
	movl	-1184(%rbp), %eax	# bx0, tmp353
	movl	%eax, -1204(%rbp)	# tmp353, bx
	jmp	.L21	#
.L22:
	.loc 1 78 0 discriminator 2
	movq	img(%rip), %rax	# img, img.13
	movq	71928(%rax), %rax	# img.13_102->all_mv, D.5900
	movl	-1204(%rbp), %edx	# bx, tmp354
	movslq	%edx, %rdx	# tmp354, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5900
	movq	(%rax), %rax	# *_106, D.5901
	movl	-1200(%rbp), %edx	# by, tmp355
	movslq	%edx, %rdx	# tmp355, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5901
	movq	(%rax), %rax	# *_110, D.5902
	movq	(%rax), %rax	# *_111, D.5903
	movl	-1236(%rbp), %edx	# b8ref, tmp356
	movslq	%edx, %rdx	# tmp356, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5903
	movq	(%rax), %rax	# *_116, D.5904
	movl	-1232(%rbp), %edx	# b8mode, tmp357
	movslq	%edx, %rdx	# tmp357, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5904
	movq	(%rax), %rax	# *_120, D.5905
	movzwl	(%rax), %eax	# *_121, D.5906
	cwtl
	movl	-1204(%rbp), %edx	# bx, tmp359
	movslq	%edx, %rdx	# tmp359, tmp358
	movl	-1200(%rbp), %ecx	# by, tmp361
	movslq	%ecx, %rcx	# tmp361, tmp360
	salq	$2, %rcx	#, tmp362
	addq	%rcx, %rdx	# tmp362, tmp363
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5894, mv
	.loc 1 79 0 discriminator 2
	movq	img(%rip), %rax	# img, img.14
	movq	71928(%rax), %rax	# img.14_124->all_mv, D.5900
	movl	-1204(%rbp), %edx	# bx, tmp364
	movslq	%edx, %rdx	# tmp364, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5900
	movq	(%rax), %rax	# *_128, D.5901
	movl	-1200(%rbp), %edx	# by, tmp365
	movslq	%edx, %rdx	# tmp365, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5901
	movq	(%rax), %rax	# *_132, D.5902
	movq	(%rax), %rax	# *_133, D.5903
	movl	-1236(%rbp), %edx	# b8ref, tmp366
	movslq	%edx, %rdx	# tmp366, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5903
	movq	(%rax), %rax	# *_137, D.5904
	movl	-1232(%rbp), %edx	# b8mode, tmp367
	movslq	%edx, %rdx	# tmp367, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5904
	movq	(%rax), %rax	# *_141, D.5905
	addq	$2, %rax	#, D.5905
	movzwl	(%rax), %eax	# *_143, D.5906
	cwtl
	movl	-1204(%rbp), %edx	# bx, tmp369
	movslq	%edx, %rdx	# tmp369, tmp368
	movl	-1200(%rbp), %ecx	# by, tmp371
	movslq	%ecx, %rcx	# tmp371, tmp370
	salq	$2, %rcx	#, tmp372
	addq	%rcx, %rdx	# tmp372, tmp373
	addq	$16, %rdx	#, tmp374
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5894, mv
	.loc 1 76 0 discriminator 2
	addl	$1, -1204(%rbp)	#, bx
.L21:
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	-1204(%rbp), %eax	# bx, tmp375
	cmpl	-1180(%rbp), %eax	# bx1, tmp375
	jl	.L22	#,
	.loc 1 75 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, by
.L20:
	.loc 1 75 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %eax	# by, tmp376
	cmpl	-1164(%rbp), %eax	# by1, tmp376
	jl	.L23	#,
	.loc 1 73 0 is_stmt 1
	jmp	.L24	#
.L19:
	.loc 1 84 0
	movl	-1168(%rbp), %eax	# by0, tmp377
	movl	%eax, -1200(%rbp)	# tmp377, by
	jmp	.L25	#
.L28:
	.loc 1 85 0
	movl	-1184(%rbp), %eax	# bx0, tmp378
	movl	%eax, -1204(%rbp)	# tmp378, bx
	jmp	.L26	#
.L27:
	.loc 1 87 0 discriminator 2
	movl	-1204(%rbp), %eax	# bx, tmp380
	cltq
	movl	-1200(%rbp), %edx	# by, tmp382
	movslq	%edx, %rdx	# tmp382, tmp381
	salq	$2, %rdx	#, tmp383
	addq	%rdx, %rax	# tmp383, tmp384
	addq	$16, %rax	#, tmp385
	movl	$0, -1152(%rbp,%rax,4)	#, mv
	movl	-1204(%rbp), %eax	# bx, tmp387
	cltq
	movl	-1200(%rbp), %edx	# by, tmp389
	movslq	%edx, %rdx	# tmp389, tmp388
	salq	$2, %rdx	#, tmp390
	addq	%rdx, %rax	# tmp390, tmp391
	addq	$16, %rax	#, tmp392
	movl	-1152(%rbp,%rax,4), %eax	# mv, D.5894
	movl	-1204(%rbp), %edx	# bx, tmp394
	movslq	%edx, %rdx	# tmp394, tmp393
	movl	-1200(%rbp), %ecx	# by, tmp396
	movslq	%ecx, %rcx	# tmp396, tmp395
	salq	$2, %rcx	#, tmp397
	addq	%rcx, %rdx	# tmp397, tmp398
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5894, mv
	.loc 1 85 0 discriminator 2
	addl	$1, -1204(%rbp)	#, bx
.L26:
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	-1204(%rbp), %eax	# bx, tmp399
	cmpl	-1180(%rbp), %eax	# bx1, tmp399
	jl	.L27	#,
	.loc 1 84 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, by
.L25:
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %eax	# by, tmp400
	cmpl	-1164(%rbp), %eax	# by1, tmp400
	jl	.L28	#,
.L24:
	.loc 1 91 0 is_stmt 1
	movl	-1192(%rbp), %eax	# i0, tmp401
	movl	%eax, -1212(%rbp)	# tmp401, i
	jmp	.L29	#
.L32:
	.loc 1 92 0
	movl	-1176(%rbp), %eax	# j0, tmp402
	movl	%eax, -1208(%rbp)	# tmp402, j
	jmp	.L30	#
.L31:
	.loc 1 94 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.15
	movq	(%rax), %rax	# decs.15_155->resY, D.5907
	movl	-1208(%rbp), %edx	# j, tmp403
	movslq	%edx, %rdx	# tmp403, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5907
	movq	(%rax), %rax	# *_159, D.5908
	movl	-1212(%rbp), %edx	# i, tmp404
	movslq	%edx, %rdx	# tmp404, D.5896
	salq	$2, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5908
	movl	(%rax), %eax	# *_163, D.5894
	movl	-1212(%rbp), %edx	# i, tmp406
	movslq	%edx, %rdx	# tmp406, tmp405
	movl	-1208(%rbp), %ecx	# j, tmp408
	movslq	%ecx, %rcx	# tmp408, tmp407
	salq	$4, %rcx	#, tmp409
	addq	%rcx, %rdx	# tmp409, tmp410
	movl	%eax, -1024(%rbp,%rdx,4)	# D.5894, resY_tmp
	.loc 1 92 0 discriminator 2
	addl	$1, -1208(%rbp)	#, j
.L30:
	.loc 1 92 0 is_stmt 0 discriminator 1
	movl	-1208(%rbp), %eax	# j, tmp411
	cmpl	-1172(%rbp), %eax	# j1, tmp411
	jl	.L31	#,
	.loc 1 91 0 is_stmt 1
	addl	$1, -1212(%rbp)	#, i
.L29:
	.loc 1 91 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# i, tmp412
	cmpl	-1188(%rbp), %eax	# i1, tmp412
	jl	.L32	#,
.L18:
	.loc 1 99 0 is_stmt 1
	cmpl	$0, -1232(%rbp)	#, b8mode
	jle	.L33	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	cmpl	$7, -1232(%rbp)	#, b8mode
	jle	.L34	#,
.L33:
	.loc 1 99 0 discriminator 2
	cmpl	$0, -1224(%rbp)	#, mbmode
	jne	.L35	#,
	.loc 1 99 0 discriminator 1
	movq	img(%rip), %rax	# img, img.16
	movl	24(%rax), %eax	# img.16_167->type, D.5894
	testl	%eax, %eax	# D.5894
	je	.L34	#,
	movq	img(%rip), %rax	# img, img.17
	movl	24(%rax), %eax	# img.17_169->type, D.5894
	cmpl	$1, %eax	#, D.5894
	jne	.L35	#,
	movq	img(%rip), %rax	# img, img.18
	movl	72496(%rax), %eax	# img.18_171->nal_reference_idc, D.5894
	testl	%eax, %eax	# D.5894
	jle	.L35	#,
.L34:
	.loc 1 101 0 is_stmt 1
	movl	-1168(%rbp), %eax	# by0, tmp413
	movl	%eax, -1200(%rbp)	# tmp413, by
	jmp	.L36	#
.L44:
	.loc 1 102 0
	movl	-1184(%rbp), %eax	# bx0, tmp414
	movl	%eax, -1204(%rbp)	# tmp414, bx
	jmp	.L37	#
.L43:
	.loc 1 104 0
	movq	img(%rip), %rax	# img, img.19
	movl	144(%rax), %edx	# img.19_214->block_x, D.5894
	movl	-1204(%rbp), %eax	# bx, tmp418
	addl	%edx, %eax	# D.5894, tmp417
	movl	%eax, -1160(%rbp)	# tmp417, block_x
	.loc 1 105 0
	movq	img(%rip), %rax	# img, img.20
	movl	148(%rax), %edx	# img.20_217->block_y, D.5894
	movl	-1200(%rbp), %eax	# by, tmp422
	addl	%edx, %eax	# D.5894, tmp421
	movl	%eax, -1156(%rbp)	# tmp421, block_y
	.loc 1 106 0
	movq	img(%rip), %rax	# img, img.21
	movl	24(%rax), %eax	# img.21_220->type, D.5894
	cmpl	$1, %eax	#, D.5894
	jne	.L38	#,
	.loc 1 106 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rdx	# enc_picture, enc_picture.22
	movq	enc_frame_picture(%rip), %rax	# enc_frame_picture, enc_frame_picture.23
	cmpq	%rax, %rdx	# enc_frame_picture.23, enc_picture.22
	je	.L38	#,
	.loc 1 107 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.24
	movl	(%rax), %edx	# img.24_224->number, D.5894
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.25
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.25, D.5894
	movl	%edx, %eax	# D.5894, D.5894
	subl	-1236(%rbp), %eax	# b8ref, D.5894
	leal	-2(%rax), %edx	#, D.5894
	movq	img(%rip), %rax	# img, img.26
	movl	32(%rax), %ecx	# img.26_230->num_ref_frames, D.5894
	movl	%edx, %eax	# D.5894, tmp424
	cltd
	idivl	%ecx	# D.5894
	movl	%edx, -1196(%rbp)	# tmp423, ref_inx
.L38:
	.loc 1 113 0
	movq	decs(%rip), %rax	# decs, decs.27
	.loc 1 109 0
	movq	32(%rax), %r8	# decs.27_233->RefBlock, D.5897
	movl	-1204(%rbp), %eax	# bx, tmp426
	cltq
	movl	-1200(%rbp), %edx	# by, tmp428
	movslq	%edx, %rdx	# tmp428, tmp427
	salq	$2, %rdx	#, tmp429
	addq	%rdx, %rax	# tmp429, tmp430
	addq	$16, %rax	#, tmp431
	movl	-1152(%rbp,%rax,4), %edi	# mv, D.5894
	movl	-1204(%rbp), %eax	# bx, tmp433
	cltq
	movl	-1200(%rbp), %edx	# by, tmp435
	movslq	%edx, %rdx	# tmp435, tmp434
	salq	$2, %rdx	#, tmp436
	addq	%rdx, %rax	# tmp436, tmp437
	movl	-1152(%rbp,%rax,4), %ecx	# mv, D.5894
	movq	decs(%rip), %rax	# decs, decs.28
	movq	16(%rax), %rax	# decs.28_237->decref, D.5909
	movl	-1220(%rbp), %edx	# decoder, tmp438
	movslq	%edx, %rdx	# tmp438, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5909
	movq	(%rax), %rax	# *_241, D.5895
	movl	-1196(%rbp), %edx	# ref_inx, tmp439
	movslq	%edx, %rdx	# tmp439, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5895
	movq	(%rax), %rax	# *_245, D.5897
	movl	-1160(%rbp), %edx	# block_x, tmp440
	movl	-1156(%rbp), %esi	# block_y, tmp441
	movq	%r8, %r9	# D.5897,
	movl	%edi, %r8d	# D.5894,
	movq	%rax, %rdi	# D.5897,
	call	Get_Reference_Block	#
	.loc 1 114 0
	movl	$0, -1208(%rbp)	#, j
	jmp	.L39	#
.L42:
	.loc 1 115 0
	movl	$0, -1212(%rbp)	#, i
	jmp	.L40	#
.L41:
	.loc 1 123 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.29
	movq	8(%rax), %rax	# decs.29_249->decY, D.5895
	movl	-1220(%rbp), %edx	# decoder, tmp442
	movslq	%edx, %rdx	# tmp442, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5895
	movq	(%rax), %rax	# *_253, D.5897
	movl	-1156(%rbp), %edx	# block_y, tmp443
	leal	0(,%rdx,4), %ecx	#, D.5894
	movl	-1208(%rbp), %edx	# j, tmp444
	addl	%ecx, %edx	# D.5894, D.5894
	movslq	%edx, %rdx	# D.5894, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5897
	movq	(%rax), %rax	# *_259, D.5898
	movl	-1160(%rbp), %edx	# block_x, tmp445
	leal	0(,%rdx,4), %ecx	#, D.5894
	movl	-1212(%rbp), %edx	# i, tmp446
	addl	%ecx, %edx	# D.5894, D.5894
	movslq	%edx, %rdx	# D.5894, D.5896
	addq	%rdx, %rdx	# D.5896
	addq	%rax, %rdx	# D.5898, D.5898
	movl	-1200(%rbp), %eax	# by, tmp447
	leal	0(,%rax,4), %ecx	#, D.5894
	movl	-1208(%rbp), %eax	# j, tmp448
	addl	%eax, %ecx	# tmp448, D.5894
	movl	-1204(%rbp), %eax	# bx, tmp449
	leal	0(,%rax,4), %esi	#, D.5894
	movl	-1212(%rbp), %eax	# i, tmp450
	addl	%esi, %eax	# D.5894, D.5894
	cltq
	movslq	%ecx, %rcx	# D.5894, tmp452
	salq	$4, %rcx	#, tmp453
	addq	%rcx, %rax	# tmp453, tmp454
	movl	-1024(%rbp,%rax,4), %eax	# resY_tmp, D.5894
	movl	%eax, %ecx	# D.5894, D.5899
	movq	decs(%rip), %rax	# decs, decs.30
	movq	32(%rax), %rax	# decs.30_272->RefBlock, D.5897
	movl	-1208(%rbp), %esi	# j, tmp455
	movslq	%esi, %rsi	# tmp455, D.5896
	salq	$3, %rsi	#, D.5896
	addq	%rsi, %rax	# D.5896, D.5897
	movq	(%rax), %rax	# *_276, D.5898
	movl	-1212(%rbp), %esi	# i, tmp456
	movslq	%esi, %rsi	# tmp456, D.5896
	addq	%rsi, %rsi	# D.5896
	addq	%rsi, %rax	# D.5896, D.5898
	movzwl	(%rax), %eax	# *_280, D.5899
	addl	%ecx, %eax	# D.5899, D.5899
	movw	%ax, (%rdx)	# D.5899, *_265
	.loc 1 115 0 discriminator 2
	addl	$1, -1212(%rbp)	#, i
.L40:
	.loc 1 115 0 is_stmt 0 discriminator 1
	cmpl	$3, -1212(%rbp)	#, i
	jle	.L41	#,
	.loc 1 114 0 is_stmt 1
	addl	$1, -1208(%rbp)	#, j
.L39:
	.loc 1 114 0 is_stmt 0 discriminator 1
	cmpl	$3, -1208(%rbp)	#, j
	jle	.L42	#,
	.loc 1 102 0 is_stmt 1
	addl	$1, -1204(%rbp)	#, bx
.L37:
	.loc 1 102 0 is_stmt 0 discriminator 1
	movl	-1204(%rbp), %eax	# bx, tmp457
	cmpl	-1180(%rbp), %eax	# bx1, tmp457
	jl	.L43	#,
	.loc 1 101 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, by
.L36:
	.loc 1 101 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %eax	# by, tmp458
	cmpl	-1164(%rbp), %eax	# by1, tmp458
	jl	.L44	#,
	.loc 1 99 0 is_stmt 1
	jmp	.L1	#
.L35:
	.loc 1 130 0
	movl	-1192(%rbp), %eax	# i0, tmp459
	movl	%eax, -1212(%rbp)	# tmp459, i
	jmp	.L45	#
.L48:
	.loc 1 131 0
	movl	-1176(%rbp), %eax	# j0, tmp460
	movl	%eax, -1208(%rbp)	# tmp460, j
	jmp	.L46	#
.L47:
	.loc 1 133 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.31
	movq	8(%rax), %rax	# decs.31_175->decY, D.5895
	movl	-1220(%rbp), %edx	# decoder, tmp461
	movslq	%edx, %rdx	# tmp461, D.5896
	salq	$3, %rdx	#, D.5896
	addq	%rdx, %rax	# D.5896, D.5895
	movq	(%rax), %rdx	# *_179, D.5897
	movq	img(%rip), %rax	# img, img.32
	movl	156(%rax), %ecx	# img.32_181->pix_y, D.5894
	movl	-1208(%rbp), %eax	# j, tmp462
	addl	%ecx, %eax	# D.5894, D.5894
	cltq
	salq	$3, %rax	#, D.5896
	addq	%rdx, %rax	# D.5897, D.5897
	movq	(%rax), %rdx	# *_186, D.5898
	movq	img(%rip), %rax	# img, img.33
	movl	152(%rax), %ecx	# img.33_188->pix_x, D.5894
	movl	-1212(%rbp), %eax	# i, tmp463
	addl	%ecx, %eax	# D.5894, D.5894
	cltq
	addq	%rax, %rax	# D.5896
	addq	%rax, %rdx	# D.5896, D.5898
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.34
	movq	6424(%rax), %rcx	# enc_picture.34_194->imgY, D.5897
	movq	img(%rip), %rax	# img, img.35
	movl	156(%rax), %esi	# img.35_196->pix_y, D.5894
	movl	-1208(%rbp), %eax	# j, tmp464
	addl	%esi, %eax	# D.5894, D.5894
	cltq
	salq	$3, %rax	#, D.5896
	addq	%rcx, %rax	# D.5897, D.5897
	movq	(%rax), %rcx	# *_201, D.5898
	movq	img(%rip), %rax	# img, img.36
	movl	152(%rax), %esi	# img.36_203->pix_x, D.5894
	movl	-1212(%rbp), %eax	# i, tmp465
	addl	%esi, %eax	# D.5894, D.5894
	cltq
	addq	%rax, %rax	# D.5896
	addq	%rcx, %rax	# D.5898, D.5898
	movzwl	(%rax), %eax	# *_208, D.5899
	movw	%ax, (%rdx)	# D.5899, *_193
	.loc 1 131 0 discriminator 2
	addl	$1, -1208(%rbp)	#, j
.L46:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-1208(%rbp), %eax	# j, tmp466
	cmpl	-1172(%rbp), %eax	# j1, tmp466
	jl	.L47	#,
	.loc 1 130 0 is_stmt 1
	addl	$1, -1212(%rbp)	#, i
.L45:
	.loc 1 130 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# i, tmp467
	cmpl	-1188(%rbp), %eax	# i1, tmp467
	jl	.L48	#,
.L1:
	.loc 1 137 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	decode_one_b8block, .-decode_one_b8block
	.globl	decode_one_mb
	.type	decode_one_mb, @function
decode_one_mb:
.LFB3:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# decoder, decoder
	movq	%rsi, -16(%rbp)	# currMB, currMB
	.loc 1 154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	decode_one_mb, .-decode_one_mb
	.globl	Get_Reference_Block
	.type	Get_Reference_Block, @function
Get_Reference_Block:
.LFB4:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# imY, imY
	movl	%esi, -44(%rbp)	# block_y, block_y
	movl	%edx, -48(%rbp)	# block_x, block_x
	movl	%ecx, -52(%rbp)	# mvhor, mvhor
	movl	%r8d, -56(%rbp)	# mvver, mvver
	movq	%r9, -64(%rbp)	# out, out
	.loc 1 188 0
	movl	-44(%rbp), %eax	# block_y, tmp74
	sall	$4, %eax	#, D.5910
	movl	%eax, %edx	# D.5910, D.5910
	movl	-56(%rbp), %eax	# mvver, tmp78
	addl	%edx, %eax	# D.5910, tmp77
	movl	%eax, -24(%rbp)	# tmp77, y
	.loc 1 189 0
	movl	-48(%rbp), %eax	# block_x, tmp79
	sall	$4, %eax	#, D.5910
	movl	%eax, %edx	# D.5910, D.5910
	movl	-52(%rbp), %eax	# mvhor, tmp83
	addl	%edx, %eax	# D.5910, tmp82
	movl	%eax, -20(%rbp)	# tmp82, x
	.loc 1 191 0
	movl	$0, -28(%rbp)	#, j
	jmp	.L51	#
.L54:
	.loc 1 192 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L52	#
.L53:
	.loc 1 193 0 discriminator 2
	movl	-28(%rbp), %eax	# j, tmp84
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5911
	movq	-64(%rbp), %rax	# out, tmp85
	addq	%rdx, %rax	# D.5911, D.5912
	movq	(%rax), %rax	# *_16, D.5913
	movl	-32(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.5911
	addq	%rdx, %rdx	# D.5911
	leaq	(%rax,%rdx), %rbx	#, D.5913
	movl	-32(%rbp), %eax	# i, tmp87
	leal	0(,%rax,4), %edx	#, D.5910
	movl	-20(%rbp), %eax	# x, tmp88
	addl	%eax, %edx	# tmp88, D.5910
	movl	-28(%rbp), %eax	# j, tmp89
	leal	0(,%rax,4), %ecx	#, D.5910
	movl	-24(%rbp), %eax	# y, tmp90
	addl	%eax, %ecx	# tmp90, D.5910
	movq	-40(%rbp), %rax	# imY, tmp91
	movl	%ecx, %esi	# D.5910,
	movq	%rax, %rdi	# tmp91,
	call	Get_Reference_Pixel	#
	movzbl	%al, %eax	# D.5914, D.5915
	movw	%ax, (%rbx)	# D.5915, *_20
	.loc 1 192 0 discriminator 2
	addl	$1, -32(%rbp)	#, i
.L52:
	.loc 1 192 0 is_stmt 0 discriminator 1
	cmpl	$3, -32(%rbp)	#, i
	jle	.L53	#,
	.loc 1 191 0 is_stmt 1
	addl	$1, -28(%rbp)	#, j
.L51:
	.loc 1 191 0 is_stmt 0 discriminator 1
	cmpl	$3, -28(%rbp)	#, j
	jle	.L54	#,
	.loc 1 194 0 is_stmt 1
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Get_Reference_Block, .-Get_Reference_Block
	.globl	Get_Reference_Pixel
	.type	Get_Reference_Pixel, @function
Get_Reference_Pixel:
.LFB5:
	.loc 1 208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -88(%rbp)	# imY, imY
	movl	%esi, -92(%rbp)	# y_pos, y_pos
	movl	%edx, -96(%rbp)	# x_pos, x_pos
	.loc 1 214 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 225 0
	movl	-96(%rbp), %eax	# x_pos, tmp301
	andl	$3, %eax	#, tmp300
	movl	%eax, -64(%rbp)	# tmp300, dx
	.loc 1 226 0
	movl	-92(%rbp), %eax	# y_pos, tmp305
	andl	$3, %eax	#, tmp304
	movl	%eax, -60(%rbp)	# tmp304, dy
	.loc 1 227 0
	movl	-64(%rbp), %eax	# dx, tmp306
	movl	-96(%rbp), %edx	# x_pos, tmp307
	subl	%eax, %edx	# tmp306, D.5916
	movl	%edx, %eax	# D.5916, D.5916
	leal	3(%rax), %edx	#, tmp309
	testl	%eax, %eax	# tmp308
	cmovs	%edx, %eax	# tmp309,, tmp308
	sarl	$2, %eax	#, tmp310
	movl	%eax, -96(%rbp)	# tmp310, x_pos
	.loc 1 228 0
	movl	-60(%rbp), %eax	# dy, tmp311
	movl	-92(%rbp), %edx	# y_pos, tmp312
	subl	%eax, %edx	# tmp311, D.5916
	movl	%edx, %eax	# D.5916, D.5916
	leal	3(%rax), %edx	#, tmp314
	testl	%eax, %eax	# tmp313
	cmovs	%edx, %eax	# tmp314,, tmp313
	sarl	$2, %eax	#, tmp315
	movl	%eax, -92(%rbp)	# tmp315, y_pos
	.loc 1 229 0
	movq	img(%rip), %rax	# img, img.37
	movl	52(%rax), %eax	# img.37_35->width, D.5916
	subl	$1, %eax	#, tmp316
	movl	%eax, -56(%rbp)	# tmp316, maxold_x
	.loc 1 230 0
	movq	img(%rip), %rax	# img, img.38
	movl	60(%rax), %eax	# img.38_38->height, D.5916
	subl	$1, %eax	#, tmp317
	movl	%eax, -52(%rbp)	# tmp317, maxold_y
	.loc 1 232 0
	cmpl	$0, -64(%rbp)	#, dx
	jne	.L56	#,
	.loc 1 232 0 is_stmt 0 discriminator 1
	cmpl	$0, -60(%rbp)	#, dy
	jne	.L56	#,
	.loc 1 233 0 is_stmt 1
	movl	-52(%rbp), %eax	# maxold_y, tmp318
	cmpl	%eax, -92(%rbp)	# tmp318, y_pos
	cmovle	-92(%rbp), %eax	# y_pos,, D.5916
	movl	$0, %edx	#, tmp319
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp319, D.5916
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp320
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rdx	# *_46, D.5919
	movl	-56(%rbp), %eax	# maxold_x, tmp321
	cmpl	%eax, -96(%rbp)	# tmp321, x_pos
	cmovle	-96(%rbp), %eax	# x_pos,, D.5916
	movl	$0, %ecx	#, tmp322
	testl	%eax, %eax	# D.5916
	cmovs	%ecx, %eax	# D.5916,, tmp322, D.5916
	cltq
	addq	%rax, %rax	# D.5917
	addq	%rdx, %rax	# D.5919, D.5919
	movzwl	(%rax), %eax	# *_52, D.5920
	movzwl	%ax, %eax	# D.5920, tmp323
	movl	%eax, -68(%rbp)	# tmp323, result
	jmp	.L57	#
.L56:
	.loc 1 237 0
	cmpl	$0, -60(%rbp)	#, dy
	jne	.L58	#,
	.loc 1 239 0
	movl	-52(%rbp), %eax	# maxold_y, tmp324
	cmpl	%eax, -92(%rbp)	# tmp324, y_pos
	cmovle	-92(%rbp), %eax	# y_pos,, D.5916
	movl	$0, %edx	#, tmp326
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp326, tmp325
	movl	%eax, -48(%rbp)	# tmp325, pres_y
	.loc 1 240 0
	movl	$-2, -76(%rbp)	#, x
	jmp	.L59	#
.L60:
	.loc 1 241 0 discriminator 2
	movl	-76(%rbp), %eax	# x, tmp327
	movl	-96(%rbp), %edx	# x_pos, tmp328
	addl	%eax, %edx	# tmp327, D.5916
	movl	-56(%rbp), %eax	# maxold_x, tmp329
	cmpl	%eax, %edx	# tmp329, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp331
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp331, tmp330
	movl	%eax, -44(%rbp)	# tmp330, pres_x
	.loc 1 242 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp332
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp333
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_63, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp334
	movslq	%edx, %rdx	# tmp334, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_67, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-76(%rbp), %eax	# x, tmp335
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 240 0 discriminator 2
	addl	$1, -76(%rbp)	#, x
.L59:
	.loc 1 240 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, x
	jle	.L60	#,
	.loc 1 245 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp337
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp339
	testl	%eax, %eax	# tmp338
	cmovs	%edx, %eax	# tmp339,, tmp338
	sarl	$5, %eax	#, tmp340
	movl	%eax, %edx	# tmp340, D.5916
	movq	img(%rip), %rax	# img, img.39
	movl	72684(%rax), %eax	# img.39_77->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp342
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp342, tmp341
	movl	%eax, -68(%rbp)	# tmp341, result
	.loc 1 247 0
	cmpl	$1, -64(%rbp)	#, dx
	jne	.L61	#,
	.loc 1 248 0
	movl	-48(%rbp), %eax	# pres_y, tmp343
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp344
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rdx	# *_83, D.5919
	movl	-56(%rbp), %eax	# maxold_x, tmp345
	cmpl	%eax, -96(%rbp)	# tmp345, x_pos
	cmovle	-96(%rbp), %eax	# x_pos,, D.5916
	movl	$0, %ecx	#, tmp346
	testl	%eax, %eax	# D.5916
	cmovs	%ecx, %eax	# D.5916,, tmp346, D.5916
	cltq
	addq	%rax, %rax	# D.5917
	addq	%rdx, %rax	# D.5919, D.5919
	movzwl	(%rax), %eax	# *_89, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-68(%rbp), %eax	# result, tmp347
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp348
	shrl	$31, %edx	#, tmp348
	addl	%edx, %eax	# tmp348, tmp349
	sarl	%eax	# tmp350
	movl	%eax, -68(%rbp)	# tmp350, result
	jmp	.L57	#
.L61:
	.loc 1 250 0
	cmpl	$3, -64(%rbp)	#, dx
	jne	.L57	#,
	.loc 1 251 0
	movl	-48(%rbp), %eax	# pres_y, tmp351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp352
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rcx	# *_96, D.5919
	movl	-96(%rbp), %eax	# x_pos, tmp353
	leal	1(%rax), %edx	#, D.5916
	movl	-56(%rbp), %eax	# maxold_x, tmp354
	cmpl	%eax, %edx	# tmp354, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp355
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp355, D.5916
	cltq
	addq	%rax, %rax	# D.5917
	addq	%rcx, %rax	# D.5919, D.5919
	movzwl	(%rax), %eax	# *_103, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-68(%rbp), %eax	# result, tmp356
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp357
	shrl	$31, %edx	#, tmp357
	addl	%edx, %eax	# tmp357, tmp358
	sarl	%eax	# tmp359
	movl	%eax, -68(%rbp)	# tmp359, result
	jmp	.L57	#
.L58:
	.loc 1 254 0
	cmpl	$0, -64(%rbp)	#, dx
	jne	.L63	#,
	.loc 1 256 0
	movl	-56(%rbp), %eax	# maxold_x, tmp360
	cmpl	%eax, -96(%rbp)	# tmp360, x_pos
	cmovle	-96(%rbp), %eax	# x_pos,, D.5916
	movl	$0, %edx	#, tmp362
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp362, tmp361
	movl	%eax, -44(%rbp)	# tmp361, pres_x
	.loc 1 257 0
	movl	$-2, -72(%rbp)	#, y
	jmp	.L64	#
.L65:
	.loc 1 258 0 discriminator 2
	movl	-72(%rbp), %eax	# y, tmp363
	movl	-92(%rbp), %edx	# y_pos, tmp364
	addl	%eax, %edx	# tmp363, D.5916
	movl	-52(%rbp), %eax	# maxold_y, tmp365
	cmpl	%eax, %edx	# tmp365, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp367
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp367, tmp366
	movl	%eax, -48(%rbp)	# tmp366, pres_y
	.loc 1 259 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp368
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp369
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_116, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp370
	movslq	%edx, %rdx	# tmp370, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_120, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-72(%rbp), %eax	# y, tmp371
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 257 0 discriminator 2
	addl	$1, -72(%rbp)	#, y
.L64:
	.loc 1 257 0 is_stmt 0 discriminator 1
	cmpl	$3, -72(%rbp)	#, y
	jle	.L65	#,
	.loc 1 262 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp373
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp375
	testl	%eax, %eax	# tmp374
	cmovs	%edx, %eax	# tmp375,, tmp374
	sarl	$5, %eax	#, tmp376
	movl	%eax, %edx	# tmp376, D.5916
	movq	img(%rip), %rax	# img, img.40
	movl	72684(%rax), %eax	# img.40_130->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp378
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp378, tmp377
	movl	%eax, -68(%rbp)	# tmp377, result
	.loc 1 264 0
	cmpl	$1, -60(%rbp)	#, dy
	jne	.L66	#,
	.loc 1 265 0
	movl	-52(%rbp), %eax	# maxold_y, tmp379
	cmpl	%eax, -92(%rbp)	# tmp379, y_pos
	cmovle	-92(%rbp), %eax	# y_pos,, D.5916
	movl	$0, %edx	#, tmp380
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp380, D.5916
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp381
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_138, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp382
	movslq	%edx, %rdx	# tmp382, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_142, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-68(%rbp), %eax	# result, tmp383
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp384
	shrl	$31, %edx	#, tmp384
	addl	%edx, %eax	# tmp384, tmp385
	sarl	%eax	# tmp386
	movl	%eax, -68(%rbp)	# tmp386, result
	jmp	.L57	#
.L66:
	.loc 1 267 0
	cmpl	$3, -60(%rbp)	#, dy
	jne	.L57	#,
	.loc 1 268 0
	movl	-92(%rbp), %eax	# y_pos, tmp387
	leal	1(%rax), %edx	#, D.5916
	movl	-52(%rbp), %eax	# maxold_y, tmp388
	cmpl	%eax, %edx	# tmp388, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp389
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp389, D.5916
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp390
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_152, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp391
	movslq	%edx, %rdx	# tmp391, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_156, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-68(%rbp), %eax	# result, tmp392
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp393
	shrl	$31, %edx	#, tmp393
	addl	%edx, %eax	# tmp393, tmp394
	sarl	%eax	# tmp395
	movl	%eax, -68(%rbp)	# tmp395, result
	jmp	.L57	#
.L63:
	.loc 1 271 0
	cmpl	$2, -64(%rbp)	#, dx
	jne	.L68	#,
	.loc 1 273 0
	movl	$-2, -72(%rbp)	#, y
	jmp	.L69	#
.L72:
	.loc 1 274 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 275 0
	movl	-72(%rbp), %eax	# y, tmp396
	movl	-92(%rbp), %edx	# y_pos, tmp397
	addl	%eax, %edx	# tmp396, D.5916
	movl	-52(%rbp), %eax	# maxold_y, tmp398
	cmpl	%eax, %edx	# tmp398, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp400
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp400, tmp399
	movl	%eax, -48(%rbp)	# tmp399, pres_y
	.loc 1 276 0
	movl	$-2, -76(%rbp)	#, x
	jmp	.L70	#
.L71:
	.loc 1 277 0 discriminator 2
	movl	-76(%rbp), %eax	# x, tmp401
	movl	-96(%rbp), %edx	# x_pos, tmp402
	addl	%eax, %edx	# tmp401, D.5916
	movl	-56(%rbp), %eax	# maxold_x, tmp403
	cmpl	%eax, %edx	# tmp403, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp405
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp405, tmp404
	movl	%eax, -44(%rbp)	# tmp404, pres_x
	.loc 1 278 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp406
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp407
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_172, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp408
	movslq	%edx, %rdx	# tmp408, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_176, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-76(%rbp), %eax	# x, tmp409
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 276 0 discriminator 2
	addl	$1, -76(%rbp)	#, x
.L70:
	.loc 1 276 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, x
	jle	.L71	#,
	.loc 1 280 0 is_stmt 1
	movl	-72(%rbp), %eax	# y, tmp411
	addl	$2, %eax	#, D.5916
	cltq
	movl	-68(%rbp), %edx	# result, tmp413
	movl	%edx, -32(%rbp,%rax,4)	# tmp413, tmp_res
	.loc 1 273 0
	addl	$1, -72(%rbp)	#, y
.L69:
	.loc 1 273 0 is_stmt 0 discriminator 1
	cmpl	$3, -72(%rbp)	#, y
	jle	.L72	#,
	.loc 1 283 0 is_stmt 1
	movl	$0, -68(%rbp)	#, result
	.loc 1 284 0
	movl	$-2, -72(%rbp)	#, y
	jmp	.L73	#
.L74:
	.loc 1 285 0 discriminator 2
	movl	-72(%rbp), %eax	# y, tmp414
	addl	$2, %eax	#, D.5916
	cltq
	movl	-32(%rbp,%rax,4), %edx	# tmp_res, D.5916
	movl	-72(%rbp), %eax	# y, tmp416
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 284 0 discriminator 2
	addl	$1, -72(%rbp)	#, y
.L73:
	.loc 1 284 0 is_stmt 0 discriminator 1
	cmpl	$3, -72(%rbp)	#, y
	jle	.L74	#,
	.loc 1 288 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp418
	addl	$512, %eax	#, D.5916
	leal	1023(%rax), %edx	#, tmp420
	testl	%eax, %eax	# tmp419
	cmovs	%edx, %eax	# tmp420,, tmp419
	sarl	$10, %eax	#, tmp421
	movl	%eax, %edx	# tmp421, D.5916
	movq	img(%rip), %rax	# img, img.41
	movl	72684(%rax), %eax	# img.41_197->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp423
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp423, tmp422
	movl	%eax, -68(%rbp)	# tmp422, result
	.loc 1 290 0
	cmpl	$1, -60(%rbp)	#, dy
	jne	.L75	#,
	.loc 1 291 0
	movl	-24(%rbp), %eax	# tmp_res, D.5916
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp425
	testl	%eax, %eax	# tmp424
	cmovs	%edx, %eax	# tmp425,, tmp424
	sarl	$5, %eax	#, tmp426
	movl	%eax, %edx	# tmp426, D.5916
	movq	img(%rip), %rax	# img, img.42
	movl	72684(%rax), %eax	# img.42_204->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp427
	testl	%eax, %eax	# D.5916
	cmovns	%eax, %edx	# D.5916,, D.5916
	movl	-68(%rbp), %eax	# result, tmp428
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp429
	shrl	$31, %edx	#, tmp429
	addl	%edx, %eax	# tmp429, tmp430
	sarl	%eax	# tmp431
	movl	%eax, -68(%rbp)	# tmp431, result
	jmp	.L57	#
.L75:
	.loc 1 293 0
	cmpl	$3, -60(%rbp)	#, dy
	jne	.L57	#,
	.loc 1 294 0
	movl	-20(%rbp), %eax	# tmp_res, D.5916
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp433
	testl	%eax, %eax	# tmp432
	cmovs	%edx, %eax	# tmp433,, tmp432
	sarl	$5, %eax	#, tmp434
	movl	%eax, %edx	# tmp434, D.5916
	movq	img(%rip), %rax	# img, img.43
	movl	72684(%rax), %eax	# img.43_213->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp435
	testl	%eax, %eax	# D.5916
	cmovns	%eax, %edx	# D.5916,, D.5916
	movl	-68(%rbp), %eax	# result, tmp436
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp437
	shrl	$31, %edx	#, tmp437
	addl	%edx, %eax	# tmp437, tmp438
	sarl	%eax	# tmp439
	movl	%eax, -68(%rbp)	# tmp439, result
	jmp	.L57	#
.L68:
	.loc 1 297 0
	cmpl	$2, -60(%rbp)	#, dy
	jne	.L77	#,
	.loc 1 299 0
	movl	$-2, -76(%rbp)	#, x
	jmp	.L78	#
.L81:
	.loc 1 300 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 301 0
	movl	-76(%rbp), %eax	# x, tmp440
	movl	-96(%rbp), %edx	# x_pos, tmp441
	addl	%eax, %edx	# tmp440, D.5916
	movl	-56(%rbp), %eax	# maxold_x, tmp442
	cmpl	%eax, %edx	# tmp442, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp444
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp444, tmp443
	movl	%eax, -44(%rbp)	# tmp443, pres_x
	.loc 1 302 0
	movl	$-2, -72(%rbp)	#, y
	jmp	.L79	#
.L80:
	.loc 1 303 0 discriminator 2
	movl	-72(%rbp), %eax	# y, tmp445
	movl	-92(%rbp), %edx	# y_pos, tmp446
	addl	%eax, %edx	# tmp445, D.5916
	movl	-52(%rbp), %eax	# maxold_y, tmp447
	cmpl	%eax, %edx	# tmp447, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp449
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp449, tmp448
	movl	%eax, -48(%rbp)	# tmp448, pres_y
	.loc 1 304 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp450
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp451
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_230, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp452
	movslq	%edx, %rdx	# tmp452, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_234, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-72(%rbp), %eax	# y, tmp453
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 302 0 discriminator 2
	addl	$1, -72(%rbp)	#, y
.L79:
	.loc 1 302 0 is_stmt 0 discriminator 1
	cmpl	$3, -72(%rbp)	#, y
	jle	.L80	#,
	.loc 1 306 0 is_stmt 1
	movl	-76(%rbp), %eax	# x, tmp455
	addl	$2, %eax	#, D.5916
	cltq
	movl	-68(%rbp), %edx	# result, tmp457
	movl	%edx, -32(%rbp,%rax,4)	# tmp457, tmp_res
	.loc 1 299 0
	addl	$1, -76(%rbp)	#, x
.L78:
	.loc 1 299 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, x
	jle	.L81	#,
	.loc 1 309 0 is_stmt 1
	movl	$0, -68(%rbp)	#, result
	.loc 1 310 0
	movl	$-2, -76(%rbp)	#, x
	jmp	.L82	#
.L83:
	.loc 1 311 0 discriminator 2
	movl	-76(%rbp), %eax	# x, tmp458
	addl	$2, %eax	#, D.5916
	cltq
	movl	-32(%rbp,%rax,4), %edx	# tmp_res, D.5916
	movl	-76(%rbp), %eax	# x, tmp460
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 310 0 discriminator 2
	addl	$1, -76(%rbp)	#, x
.L82:
	.loc 1 310 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, x
	jle	.L83	#,
	.loc 1 314 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp462
	addl	$512, %eax	#, D.5916
	leal	1023(%rax), %edx	#, tmp464
	testl	%eax, %eax	# tmp463
	cmovs	%edx, %eax	# tmp464,, tmp463
	sarl	$10, %eax	#, tmp465
	movl	%eax, %edx	# tmp465, D.5916
	movq	img(%rip), %rax	# img, img.44
	movl	72684(%rax), %eax	# img.44_255->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp467
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp467, tmp466
	movl	%eax, -68(%rbp)	# tmp466, result
	.loc 1 316 0
	cmpl	$1, -64(%rbp)	#, dx
	jne	.L84	#,
	.loc 1 317 0
	movl	-24(%rbp), %eax	# tmp_res, D.5916
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp469
	testl	%eax, %eax	# tmp468
	cmovs	%edx, %eax	# tmp469,, tmp468
	sarl	$5, %eax	#, tmp470
	movl	%eax, %edx	# tmp470, D.5916
	movq	img(%rip), %rax	# img, img.45
	movl	72684(%rax), %eax	# img.45_262->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp471
	testl	%eax, %eax	# D.5916
	cmovns	%eax, %edx	# D.5916,, D.5916
	movl	-68(%rbp), %eax	# result, tmp472
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp473
	shrl	$31, %edx	#, tmp473
	addl	%edx, %eax	# tmp473, tmp474
	sarl	%eax	# tmp475
	movl	%eax, -68(%rbp)	# tmp475, result
	jmp	.L57	#
.L84:
	.loc 1 320 0
	movl	-20(%rbp), %eax	# tmp_res, D.5916
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp477
	testl	%eax, %eax	# tmp476
	cmovs	%edx, %eax	# tmp477,, tmp476
	sarl	$5, %eax	#, tmp478
	movl	%eax, %edx	# tmp478, D.5916
	movq	img(%rip), %rax	# img, img.46
	movl	72684(%rax), %eax	# img.46_271->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp479
	testl	%eax, %eax	# D.5916
	cmovns	%eax, %edx	# D.5916,, D.5916
	movl	-68(%rbp), %eax	# result, tmp480
	addl	%edx, %eax	# D.5916, D.5916
	movl	%eax, %edx	# D.5916, tmp481
	shrl	$31, %edx	#, tmp481
	addl	%edx, %eax	# tmp481, tmp482
	sarl	%eax	# tmp483
	movl	%eax, -68(%rbp)	# tmp483, result
	jmp	.L57	#
.L77:
	.loc 1 325 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 326 0
	cmpl	$1, -60(%rbp)	#, dy
	je	.L86	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# y_pos, tmp484
	addl	$1, %eax	#, iftmp.47
	jmp	.L87	#
.L86:
	.loc 1 326 0 discriminator 2
	movl	-92(%rbp), %eax	# y_pos, iftmp.47
.L87:
	.loc 1 326 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.47, pres_y
	.loc 1 327 0 is_stmt 1 discriminator 3
	movl	-52(%rbp), %eax	# maxold_y, tmp485
	cmpl	%eax, -48(%rbp)	# tmp485, pres_y
	cmovle	-48(%rbp), %eax	# pres_y,, D.5916
	movl	$0, %edx	#, tmp487
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp487, tmp486
	movl	%eax, -48(%rbp)	# tmp486, pres_y
	.loc 1 329 0 discriminator 3
	movl	$-2, -76(%rbp)	#, x
	jmp	.L88	#
.L89:
	.loc 1 330 0 discriminator 2
	movl	-76(%rbp), %eax	# x, tmp488
	movl	-96(%rbp), %edx	# x_pos, tmp489
	addl	%eax, %edx	# tmp488, D.5916
	movl	-56(%rbp), %eax	# maxold_x, tmp490
	cmpl	%eax, %edx	# tmp490, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp492
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp492, tmp491
	movl	%eax, -44(%rbp)	# tmp491, pres_x
	.loc 1 331 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp493
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp494
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_289, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp495
	movslq	%edx, %rdx	# tmp495, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_293, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-76(%rbp), %eax	# x, tmp496
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 329 0 discriminator 2
	addl	$1, -76(%rbp)	#, x
.L88:
	.loc 1 329 0 is_stmt 0 discriminator 1
	cmpl	$3, -76(%rbp)	#, x
	jle	.L89	#,
	.loc 1 334 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp498
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp500
	testl	%eax, %eax	# tmp499
	cmovs	%edx, %eax	# tmp500,, tmp499
	sarl	$5, %eax	#, tmp501
	movl	%eax, %edx	# tmp501, D.5916
	movq	img(%rip), %rax	# img, img.48
	movl	72684(%rax), %eax	# img.48_303->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp503
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp503, tmp502
	movl	%eax, -40(%rbp)	# tmp502, result1
	.loc 1 336 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 337 0
	cmpl	$1, -64(%rbp)	#, dx
	je	.L90	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# x_pos, tmp504
	addl	$1, %eax	#, iftmp.49
	jmp	.L91	#
.L90:
	.loc 1 337 0 discriminator 2
	movl	-96(%rbp), %eax	# x_pos, iftmp.49
.L91:
	.loc 1 337 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.49, pres_x
	.loc 1 338 0 is_stmt 1 discriminator 3
	movl	-56(%rbp), %eax	# maxold_x, tmp505
	cmpl	%eax, -44(%rbp)	# tmp505, pres_x
	cmovle	-44(%rbp), %eax	# pres_x,, D.5916
	movl	$0, %edx	#, tmp507
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp507, tmp506
	movl	%eax, -44(%rbp)	# tmp506, pres_x
	.loc 1 340 0 discriminator 3
	movl	$-2, -72(%rbp)	#, y
	jmp	.L92	#
.L93:
	.loc 1 341 0 discriminator 2
	movl	-72(%rbp), %eax	# y, tmp508
	movl	-92(%rbp), %edx	# y_pos, tmp509
	addl	%eax, %edx	# tmp508, D.5916
	movl	-52(%rbp), %eax	# maxold_y, tmp510
	cmpl	%eax, %edx	# tmp510, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp512
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp512, tmp511
	movl	%eax, -48(%rbp)	# tmp511, pres_y
	.loc 1 342 0 discriminator 2
	movl	-48(%rbp), %eax	# pres_y, tmp513
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5917
	movq	-88(%rbp), %rax	# imY, tmp514
	addq	%rdx, %rax	# D.5917, D.5918
	movq	(%rax), %rax	# *_319, D.5919
	movl	-44(%rbp), %edx	# pres_x, tmp515
	movslq	%edx, %rdx	# tmp515, D.5917
	addq	%rdx, %rdx	# D.5917
	addq	%rdx, %rax	# D.5917, D.5919
	movzwl	(%rax), %eax	# *_323, D.5920
	movzwl	%ax, %edx	# D.5920, D.5916
	movl	-72(%rbp), %eax	# y, tmp516
	addl	$2, %eax	#, D.5916
	cltq
	movl	COEF.4551(,%rax,4), %eax	# COEF, D.5916
	imull	%edx, %eax	# D.5916, D.5916
	addl	%eax, -68(%rbp)	# D.5916, result
	.loc 1 340 0 discriminator 2
	addl	$1, -72(%rbp)	#, y
.L92:
	.loc 1 340 0 is_stmt 0 discriminator 1
	cmpl	$3, -72(%rbp)	#, y
	jle	.L93	#,
	.loc 1 345 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, tmp518
	addl	$16, %eax	#, D.5916
	leal	31(%rax), %edx	#, tmp520
	testl	%eax, %eax	# tmp519
	cmovs	%edx, %eax	# tmp520,, tmp519
	sarl	$5, %eax	#, tmp521
	movl	%eax, %edx	# tmp521, D.5916
	movq	img(%rip), %rax	# img, img.50
	movl	72684(%rax), %eax	# img.50_333->max_imgpel_value, D.5916
	cmpl	%eax, %edx	# D.5916, D.5916
	cmovle	%edx, %eax	# D.5916,, D.5916
	movl	$0, %edx	#, tmp523
	testl	%eax, %eax	# D.5916
	cmovs	%edx, %eax	# D.5916,, tmp523, tmp522
	movl	%eax, -36(%rbp)	# tmp522, result2
	.loc 1 346 0
	movl	-36(%rbp), %eax	# result2, tmp524
	movl	-40(%rbp), %edx	# result1, tmp525
	addl	%edx, %eax	# tmp525, D.5916
	movl	%eax, %edx	# D.5916, tmp526
	shrl	$31, %edx	#, tmp526
	addl	%edx, %eax	# tmp526, tmp527
	sarl	%eax	# tmp528
	movl	%eax, -68(%rbp)	# tmp528, result
.L57:
	.loc 1 350 0
	movl	-68(%rbp), %eax	# result, tmp529
	.loc 1 351 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Get_Reference_Pixel, .-Get_Reference_Pixel
	.globl	UpdateDecoders
	.type	UpdateDecoders, @function
UpdateDecoders:
.LFB6:
	.loc 1 362 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 364 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L96	#
.L97:
	.loc 1 366 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.51
	movq	40(%rax), %rax	# decs.51_5->status_map, D.5923
	movq	%rax, %rdi	# D.5923,
	call	Build_Status_Map	#
	.loc 1 367 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.52
	movq	16(%rax), %rax	# decs.52_7->decref, D.5924
	movl	-4(%rbp), %edx	# k, tmp89
	movslq	%edx, %rdx	# tmp89, D.5925
	salq	$3, %rdx	#, D.5925
	addq	%rdx, %rax	# D.5925, D.5924
	movq	(%rax), %rdx	# *_11, D.5926
	movq	decs(%rip), %rax	# decs, decs.53
	movq	40(%rax), %rcx	# decs.53_13->status_map, D.5923
	movq	decs(%rip), %rax	# decs, decs.54
	movq	24(%rax), %rax	# decs.54_15->decY_best, D.5926
	movl	-4(%rbp), %esi	# k, tmp90
	movslq	%esi, %rsi	# tmp90, D.5925
	salq	$3, %rsi	#, D.5925
	addq	%rsi, %rax	# D.5925, D.5926
	movq	(%rax), %rax	# *_19, D.5927
	movq	%rcx, %rsi	# D.5923,
	movq	%rax, %rdi	# D.5927,
	call	Error_Concealment	#
	.loc 1 370 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.55
	movq	16(%rax), %rax	# decs.55_21->decref, D.5924
	movl	-4(%rbp), %edx	# k, tmp91
	movslq	%edx, %rdx	# tmp91, D.5925
	salq	$3, %rdx	#, D.5925
	addq	%rdx, %rax	# D.5925, D.5924
	movq	(%rax), %rdx	# *_25, D.5926
	movq	decs(%rip), %rax	# decs, decs.56
	movq	24(%rax), %rax	# decs.56_27->decY_best, D.5926
	movl	-4(%rbp), %ecx	# k, tmp92
	movslq	%ecx, %rcx	# tmp92, D.5925
	salq	$3, %rcx	#, D.5925
	addq	%rcx, %rax	# D.5925, D.5926
	movq	(%rax), %rax	# *_31, D.5927
	movq	%rdx, %rsi	# D.5926,
	movq	%rax, %rdi	# D.5927,
	call	DecOneForthPix	#
	.loc 1 364 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L96:
	.loc 1 364 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.57
	movl	2904(%rax), %eax	# input.57_3->NoOfDecoders, D.5922
	cmpl	-4(%rbp), %eax	# k, D.5922
	jg	.L97	#,
	.loc 1 372 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	UpdateDecoders, .-UpdateDecoders
	.globl	DecOneForthPix
	.type	DecOneForthPix, @function
DecOneForthPix:
.LFB7:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# dY, dY
	movq	%rsi, -32(%rbp)	# dref, dref
	.loc 1 388 0
	movq	img(%rip), %rax	# img, img.58
	movl	(%rax), %edx	# img.58_2->number, D.5928
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.59
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.59, D.5928
	movq	img(%rip), %rax	# img, img.60
	movl	72376(%rax), %ecx	# img.60_6->buf_cycle, D.5928
	movl	%edx, %eax	# D.5928, tmp84
	cltd
	idivl	%ecx	# D.5928
	movl	%edx, -4(%rbp)	# tmp83, ref
	.loc 1 390 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L99	#
.L100:
	.loc 1 391 0 discriminator 2
	movq	img(%rip), %rax	# img, img.61
	movl	52(%rax), %eax	# img.61_12->width, D.5928
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5929
	movl	-8(%rbp), %eax	# j, tmp85
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5929
	movq	-24(%rbp), %rax	# dY, tmp86
	addq	%rcx, %rax	# D.5929, D.5930
	movq	(%rax), %rcx	# *_19, D.5931
	movl	-4(%rbp), %eax	# ref, tmp87
	cltq
	leaq	0(,%rax,8), %rsi	#, D.5929
	movq	-32(%rbp), %rax	# dref, tmp88
	addq	%rsi, %rax	# D.5929, D.5932
	movq	(%rax), %rax	# *_24, D.5930
	movl	-8(%rbp), %esi	# j, tmp89
	movslq	%esi, %rsi	# tmp89, D.5929
	salq	$3, %rsi	#, D.5929
	addq	%rsi, %rax	# D.5929, D.5930
	movq	(%rax), %rax	# *_28, D.5931
	movq	%rcx, %rsi	# D.5931,
	movq	%rax, %rdi	# D.5931,
	call	memcpy	#
	.loc 1 390 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L99:
	.loc 1 390 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.62
	movl	60(%rax), %eax	# img.62_10->height, D.5928
	cmpl	-8(%rbp), %eax	# j, D.5928
	jg	.L100	#,
	.loc 1 392 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DecOneForthPix, .-DecOneForthPix
	.globl	compute_residue_b8block
	.type	compute_residue_b8block, @function
compute_residue_b8block:
.LFB8:
	.loc 1 401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# b8block, b8block
	movl	%esi, -40(%rbp)	# i16mode, i16mode
	.loc 1 403 0
	movl	-36(%rbp), %eax	# b8block, tmp121
	cltd
	shrl	$31, %edx	#, tmp123
	addl	%edx, %eax	# tmp123, tmp124
	andl	$1, %eax	#, tmp125
	subl	%edx, %eax	# tmp123, tmp126
	sall	$3, %eax	#, tmp127
	movl	%eax, -16(%rbp)	# tmp127, i0
	movl	-16(%rbp), %eax	# i0, tmp131
	addl	$8, %eax	#, tmp130
	movl	%eax, -12(%rbp)	# tmp130, i1
	.loc 1 404 0
	movl	-36(%rbp), %eax	# b8block, tmp132
	movl	%eax, %edx	# tmp132, tmp133
	shrl	$31, %edx	#, tmp133
	addl	%edx, %eax	# tmp133, tmp134
	sarl	%eax	# tmp135
	sall	$3, %eax	#, tmp136
	movl	%eax, -8(%rbp)	# tmp136, j0
	movl	-8(%rbp), %eax	# j0, tmp140
	addl	$8, %eax	#, tmp139
	movl	%eax, -4(%rbp)	# tmp139, j1
	.loc 1 406 0
	cmpl	$0, -40(%rbp)	#, i16mode
	js	.L102	#,
	.loc 1 408 0
	movl	-16(%rbp), %eax	# i0, tmp141
	movl	%eax, -24(%rbp)	# tmp141, i
	jmp	.L103	#
.L106:
	.loc 1 409 0
	movl	-8(%rbp), %eax	# j0, tmp142
	movl	%eax, -20(%rbp)	# tmp142, j
	jmp	.L104	#
.L105:
	.loc 1 411 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.63
	movq	(%rax), %rax	# decs.63_15->resY, D.5934
	movl	-20(%rbp), %edx	# j, tmp143
	movslq	%edx, %rdx	# tmp143, D.5935
	salq	$3, %rdx	#, D.5935
	addq	%rdx, %rax	# D.5935, D.5934
	movq	(%rax), %rax	# *_19, D.5936
	movl	-24(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, D.5935
	salq	$2, %rdx	#, D.5935
	addq	%rax, %rdx	# D.5936, D.5936
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.64
	movq	6424(%rax), %rcx	# enc_picture.64_24->imgY, D.5937
	movq	img(%rip), %rax	# img, img.65
	movl	156(%rax), %esi	# img.65_26->pix_y, D.5933
	movl	-20(%rbp), %eax	# j, tmp145
	addl	%esi, %eax	# D.5933, D.5933
	cltq
	salq	$3, %rax	#, D.5935
	addq	%rcx, %rax	# D.5937, D.5937
	movq	(%rax), %rcx	# *_31, D.5938
	movq	img(%rip), %rax	# img, img.66
	movl	152(%rax), %esi	# img.66_33->pix_x, D.5933
	movl	-24(%rbp), %eax	# i, tmp146
	addl	%esi, %eax	# D.5933, D.5933
	cltq
	addq	%rax, %rax	# D.5935
	addq	%rcx, %rax	# D.5938, D.5938
	movzwl	(%rax), %eax	# *_38, D.5939
	movzwl	%ax, %ecx	# D.5939, D.5933
	movq	img(%rip), %rax	# img, img.67
	movl	-24(%rbp), %esi	# i, tmp148
	movslq	%esi, %rsi	# tmp148, tmp147
	movl	-40(%rbp), %edi	# i16mode, tmp150
	movslq	%edi, %r8	# tmp150, tmp149
	movl	-20(%rbp), %edi	# j, tmp152
	movslq	%edi, %rdi	# tmp152, tmp151
	salq	$4, %r8	#, tmp153
	addq	%r8, %rdi	# tmp153, tmp154
	salq	$4, %rdi	#, tmp155
	addq	%rdi, %rsi	# tmp155, tmp156
	addq	$2392, %rsi	#, tmp157
	movzwl	8(%rax,%rsi,2), %eax	# img.67_41->mprr_2, D.5939
	movzwl	%ax, %eax	# D.5939, D.5933
	subl	%eax, %ecx	# D.5933, D.5933
	movl	%ecx, %eax	# D.5933, D.5933
	movl	%eax, (%rdx)	# D.5933, *_23
	.loc 1 409 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L104:
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp158
	cmpl	-4(%rbp), %eax	# j1, tmp158
	jl	.L105	#,
	.loc 1 408 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L103:
	.loc 1 408 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp159
	cmpl	-12(%rbp), %eax	# i1, tmp159
	jl	.L106	#,
	jmp	.L101	#
.L102:
	.loc 1 416 0 is_stmt 1
	movl	-16(%rbp), %eax	# i0, tmp160
	movl	%eax, -24(%rbp)	# tmp160, i
	jmp	.L108	#
.L111:
	.loc 1 417 0
	movl	-8(%rbp), %eax	# j0, tmp161
	movl	%eax, -20(%rbp)	# tmp161, j
	jmp	.L109	#
.L110:
	.loc 1 419 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.68
	movq	(%rax), %rax	# decs.68_49->resY, D.5934
	movl	-20(%rbp), %edx	# j, tmp162
	movslq	%edx, %rdx	# tmp162, D.5935
	salq	$3, %rdx	#, D.5935
	addq	%rdx, %rax	# D.5935, D.5934
	movq	(%rax), %rax	# *_53, D.5936
	movl	-24(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, D.5935
	salq	$2, %rdx	#, D.5935
	addq	%rax, %rdx	# D.5936, D.5936
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.69
	movq	6424(%rax), %rcx	# enc_picture.69_58->imgY, D.5937
	movq	img(%rip), %rax	# img, img.70
	movl	156(%rax), %esi	# img.70_60->pix_y, D.5933
	movl	-20(%rbp), %eax	# j, tmp164
	addl	%esi, %eax	# D.5933, D.5933
	cltq
	salq	$3, %rax	#, D.5935
	addq	%rcx, %rax	# D.5937, D.5937
	movq	(%rax), %rcx	# *_65, D.5938
	movq	img(%rip), %rax	# img, img.71
	movl	152(%rax), %esi	# img.71_67->pix_x, D.5933
	movl	-24(%rbp), %eax	# i, tmp165
	addl	%esi, %eax	# D.5933, D.5933
	cltq
	addq	%rax, %rax	# D.5935
	addq	%rcx, %rax	# D.5938, D.5938
	movzwl	(%rax), %eax	# *_72, D.5939
	movzwl	%ax, %ecx	# D.5939, D.5933
	movq	img(%rip), %rax	# img, img.72
	movl	-20(%rbp), %esi	# j, tmp167
	movslq	%esi, %rsi	# tmp167, tmp166
	movl	-24(%rbp), %edi	# i, tmp169
	movslq	%edi, %rdi	# tmp169, tmp168
	salq	$4, %rdi	#, tmp170
	addq	%rdi, %rsi	# tmp170, tmp171
	addq	$6296, %rsi	#, tmp172
	movzwl	8(%rax,%rsi,2), %eax	# img.72_75->mpr, D.5939
	movzwl	%ax, %eax	# D.5939, D.5933
	subl	%eax, %ecx	# D.5933, D.5933
	movl	%ecx, %eax	# D.5933, D.5933
	movl	%eax, (%rdx)	# D.5933, *_57
	.loc 1 417 0 discriminator 2
	addl	$1, -20(%rbp)	#, j
.L109:
	.loc 1 417 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# j, tmp173
	cmpl	-4(%rbp), %eax	# j1, tmp173
	jl	.L110	#,
	.loc 1 416 0 is_stmt 1
	addl	$1, -24(%rbp)	#, i
.L108:
	.loc 1 416 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp174
	cmpl	-12(%rbp), %eax	# i1, tmp174
	jl	.L111	#,
.L101:
	.loc 1 422 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compute_residue_b8block, .-compute_residue_b8block
	.globl	compute_residue_mb
	.type	compute_residue_mb, @function
compute_residue_mb:
.LFB9:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movl	%edi, -4(%rbp)	# i16mode, i16mode
	.loc 1 432 0
	movl	-4(%rbp), %eax	# i16mode, tmp59
	movl	%eax, %esi	# tmp59,
	movl	$0, %edi	#,
	call	compute_residue_b8block	#
	.loc 1 433 0
	movl	-4(%rbp), %eax	# i16mode, tmp60
	movl	%eax, %esi	# tmp60,
	movl	$1, %edi	#,
	call	compute_residue_b8block	#
	.loc 1 434 0
	movl	-4(%rbp), %eax	# i16mode, tmp61
	movl	%eax, %esi	# tmp61,
	movl	$2, %edi	#,
	call	compute_residue_b8block	#
	.loc 1 435 0
	movl	-4(%rbp), %eax	# i16mode, tmp62
	movl	%eax, %esi	# tmp62,
	movl	$3, %edi	#,
	call	compute_residue_b8block	#
	.loc 1 436 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	compute_residue_mb, .-compute_residue_mb
	.globl	Build_Status_Map
	.type	Build_Status_Map, @function
Build_Status_Map:
.LFB10:
	.loc 1 450 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s_map, s_map
	.loc 1 451 0
	movl	$-1, -20(%rbp)	#, slice
	movl	$0, -16(%rbp)	#, mb
	movl	$0, -12(%rbp)	#, packet_lost
	.loc 1 453 0
	movq	img(%rip), %rax	# img, img.73
	movl	60(%rax), %eax	# img.73_17->height, D.5940
	leal	15(%rax), %edx	#, tmp114
	testl	%eax, %eax	# tmp113
	cmovs	%edx, %eax	# tmp114,, tmp113
	sarl	$4, %eax	#, tmp115
	movl	%eax, -8(%rbp)	# tmp115, jj
	.loc 1 454 0
	movq	img(%rip), %rax	# img, img.74
	movl	52(%rax), %eax	# img.74_20->width, D.5940
	leal	15(%rax), %edx	#, tmp117
	testl	%eax, %eax	# tmp116
	cmovs	%edx, %eax	# tmp117,, tmp116
	sarl	$4, %eax	#, tmp118
	movl	%eax, -4(%rbp)	# tmp118, ii
	.loc 1 456 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L114	#
.L127:
	.loc 1 457 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L115	#
.L126:
	.loc 1 459 0
	movq	input(%rip), %rax	# input, input.75
	movl	208(%rax), %eax	# input.75_25->slice_mode, D.5940
	testl	%eax, %eax	# D.5940
	je	.L116	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.76
	movq	14168(%rax), %rdx	# img.76_27->mb_data, D.5941
	movl	-16(%rbp), %eax	# mb, tmp119
	cltq
	imulq	$632, %rax, %rax	#, D.5942, D.5942
	addq	%rdx, %rax	# D.5941, D.5941
	movl	4(%rax), %eax	# _31->slice_nr, D.5940
	cmpl	-20(%rbp), %eax	# slice, D.5940
	je	.L117	#,
.L116:
	.loc 1 461 0 is_stmt 1
	movl	$0, -12(%rbp)	#, packet_lost
	.loc 1 463 0
	call	spec_rand	#
	movsd	.LC0(%rip), %xmm1	#, tmp120
	mulsd	%xmm1, %xmm0	# tmp120, D.5943
	movsd	.LC0(%rip), %xmm1	#, tmp121
	divsd	%xmm1, %xmm0	# tmp121, D.5943
	movsd	.LC1(%rip), %xmm1	#, tmp122
	mulsd	%xmm0, %xmm1	# D.5943, D.5943
	movq	input(%rip), %rax	# input, input.77
	movl	2900(%rax), %eax	# input.77_38->LossRateC, D.5940
	cvtsi2sd	%eax, %xmm0	# D.5940, D.5943
	ucomisd	%xmm1, %xmm0	# D.5943, D.5943
	jbe	.L118	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	addl	$3, -12(%rbp)	#, packet_lost
.L118:
	.loc 1 464 0 is_stmt 1
	call	spec_rand	#
	movsd	.LC0(%rip), %xmm1	#, tmp123
	mulsd	%xmm1, %xmm0	# tmp123, D.5943
	movsd	.LC0(%rip), %xmm1	#, tmp124
	divsd	%xmm1, %xmm0	# tmp124, D.5943
	movsd	.LC1(%rip), %xmm1	#, tmp125
	mulsd	%xmm0, %xmm1	# D.5943, D.5943
	movq	input(%rip), %rax	# input, input.78
	movl	2896(%rax), %eax	# input.78_46->LossRateB, D.5940
	cvtsi2sd	%eax, %xmm0	# D.5940, D.5943
	ucomisd	%xmm1, %xmm0	# D.5943, D.5943
	jbe	.L120	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	addl	$2, -12(%rbp)	#, packet_lost
.L120:
	.loc 1 465 0 is_stmt 1
	call	spec_rand	#
	movsd	.LC0(%rip), %xmm1	#, tmp126
	mulsd	%xmm1, %xmm0	# tmp126, D.5943
	movsd	.LC0(%rip), %xmm1	#, tmp127
	divsd	%xmm1, %xmm0	# tmp127, D.5943
	movsd	.LC1(%rip), %xmm1	#, tmp128
	mulsd	%xmm0, %xmm1	# D.5943, D.5943
	movq	input(%rip), %rax	# input, input.79
	movl	2892(%rax), %eax	# input.79_54->LossRateA, D.5940
	cvtsi2sd	%eax, %xmm0	# D.5940, D.5943
	ucomisd	%xmm1, %xmm0	# D.5943, D.5943
	jbe	.L122	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movl	$1, -12(%rbp)	#, packet_lost
.L122:
	.loc 1 471 0 is_stmt 1
	addl	$1, -20(%rbp)	#, slice
.L117:
	.loc 1 473 0
	cmpl	$0, -12(%rbp)	#, packet_lost
	jne	.L124	#,
	.loc 1 475 0
	movl	-24(%rbp), %eax	# j, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5942
	movq	-40(%rbp), %rax	# s_map, tmp130
	addq	%rdx, %rax	# D.5942, D.5944
	movq	(%rax), %rdx	# *_62, D.5945
	movl	-28(%rbp), %eax	# i, tmp131
	cltq
	addq	%rdx, %rax	# D.5945, D.5945
	movb	$0, (%rax)	#, *_65
	jmp	.L125	#
.L124:
	.loc 1 479 0
	movl	-24(%rbp), %eax	# j, tmp132
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5942
	movq	-40(%rbp), %rax	# s_map, tmp133
	addq	%rdx, %rax	# D.5942, D.5944
	movq	(%rax), %rdx	# *_68, D.5945
	movl	-28(%rbp), %eax	# i, tmp134
	cltq
	addq	%rax, %rdx	# D.5946, D.5945
	movl	-12(%rbp), %eax	# packet_lost, tmp135
	movb	%al, (%rdx)	# D.5947, *_71
	.loc 1 480 0
	movq	input(%rip), %rax	# input, input.80
	movl	2364(%rax), %eax	# input.80_73->partition_mode, D.5940
	testl	%eax, %eax	# D.5940
	jne	.L125	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp136
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5942
	movq	-40(%rbp), %rax	# s_map, tmp137
	addq	%rdx, %rax	# D.5942, D.5944
	movq	(%rax), %rdx	# *_77, D.5945
	movl	-28(%rbp), %eax	# i, tmp138
	cltq
	addq	%rdx, %rax	# D.5945, D.5945
	movb	$1, (%rax)	#, *_80
.L125:
	.loc 1 482 0 is_stmt 1
	addl	$1, -16(%rbp)	#, mb
	.loc 1 457 0
	addl	$1, -28(%rbp)	#, i
.L115:
	.loc 1 457 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp139
	cmpl	-4(%rbp), %eax	# ii, tmp139
	jl	.L126	#,
	.loc 1 456 0 is_stmt 1
	addl	$1, -24(%rbp)	#, j
.L114:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp140
	cmpl	-8(%rbp), %eax	# jj, tmp140
	jl	.L127	#,
	.loc 1 484 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Build_Status_Map, .-Build_Status_Map
	.globl	Error_Concealment
	.type	Error_Concealment, @function
Error_Concealment:
.LFB11:
	.loc 1 501 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# inY, inY
	movq	%rsi, -32(%rbp)	# s_map, s_map
	movq	%rdx, -40(%rbp)	# refY, refY
	.loc 1 503 0
	movq	img(%rip), %rax	# img, img.81
	movl	60(%rax), %eax	# img.81_3->height, D.5948
	leal	15(%rax), %edx	#, tmp71
	testl	%eax, %eax	# tmp70
	cmovs	%edx, %eax	# tmp71,, tmp70
	sarl	$4, %eax	#, tmp72
	movl	%eax, -8(%rbp)	# tmp72, mb_h
	.loc 1 504 0
	movq	img(%rip), %rax	# img, img.82
	movl	52(%rax), %eax	# img.82_6->width, D.5948
	leal	15(%rax), %edx	#, tmp74
	testl	%eax, %eax	# tmp73
	cmovs	%edx, %eax	# tmp74,, tmp73
	sarl	$4, %eax	#, tmp75
	movl	%eax, -4(%rbp)	# tmp75, mb_w
	.loc 1 506 0
	movl	$0, -16(%rbp)	#, mb_y
	jmp	.L132	#
.L136:
	.loc 1 507 0
	movl	$0, -12(%rbp)	#, mb_x
	jmp	.L133	#
.L135:
	.loc 1 509 0
	movl	-16(%rbp), %eax	# mb_y, tmp76
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5949
	movq	-32(%rbp), %rax	# s_map, tmp77
	addq	%rdx, %rax	# D.5949, D.5950
	movq	(%rax), %rdx	# *_14, D.5951
	movl	-12(%rbp), %eax	# mb_x, tmp78
	cltq
	addq	%rdx, %rax	# D.5951, D.5951
	movzbl	(%rax), %eax	# *_17, D.5953
	testb	%al, %al	# D.5953
	je	.L134	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdi	# s_map, tmp79
	movq	-40(%rbp), %rcx	# refY, tmp80
	movl	-12(%rbp), %edx	# mb_x, tmp81
	movl	-16(%rbp), %esi	# mb_y, tmp82
	movq	-24(%rbp), %rax	# inY, tmp83
	movq	%rdi, %r8	# tmp79,
	movq	%rax, %rdi	# tmp83,
	call	Conceal_Error	#
.L134:
	.loc 1 507 0 is_stmt 1
	addl	$1, -12(%rbp)	#, mb_x
.L133:
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_x, tmp84
	cmpl	-4(%rbp), %eax	# mb_w, tmp84
	jl	.L135	#,
	.loc 1 506 0 is_stmt 1
	addl	$1, -16(%rbp)	#, mb_y
.L132:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# mb_y, tmp85
	cmpl	-8(%rbp), %eax	# mb_h, tmp85
	jl	.L136	#,
	.loc 1 511 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	Error_Concealment, .-Error_Concealment
	.globl	Conceal_Error
	.type	Conceal_Error, @function
Conceal_Error:
.LFB12:
	.loc 1 521 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1232, %rsp	#,
	movq	%rdi, -1208(%rbp)	# inY, inY
	movl	%esi, -1212(%rbp)	# mb_y, mb_y
	movl	%edx, -1216(%rbp)	# mb_x, mb_x
	movq	%rcx, -1224(%rbp)	# refY, refY
	movq	%r8, -1232(%rbp)	# s_map, s_map
	.loc 1 523 0
	movq	img(%rip), %rax	# img, img.83
	movl	(%rax), %edx	# img.83_37->number, D.5954
	movl	start_frame_no_in_this_IGOP(%rip), %eax	# start_frame_no_in_this_IGOP, start_frame_no_in_this_IGOP.84
	subl	%eax, %edx	# start_frame_no_in_this_IGOP.84, D.5954
	movl	%edx, %eax	# D.5954, D.5954
	leal	-1(%rax), %edx	#, D.5954
	movq	img(%rip), %rax	# img, img.85
	movl	32(%rax), %ecx	# img.85_42->num_ref_frames, D.5954
	movl	%edx, %eax	# D.5954, tmp395
	cltd
	idivl	%ecx	# D.5954
	movl	%edx, -1180(%rbp)	# tmp394, ref_inx
	.loc 1 524 0
	movl	-1212(%rbp), %eax	# mb_y, tmp399
	sall	$4, %eax	#, tmp398
	movl	%eax, -1176(%rbp)	# tmp398, pos_y
	movl	-1216(%rbp), %eax	# mb_x, tmp403
	sall	$4, %eax	#, tmp402
	movl	%eax, -1172(%rbp)	# tmp402, pos_x
	.loc 1 527 0
	movq	decs(%rip), %rax	# decs, decs.87
	movq	48(%rax), %rax	# decs.87_49->dec_mb_mode, D.5955
	movl	-1216(%rbp), %edx	# mb_x, tmp404
	movslq	%edx, %rdx	# tmp404, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5955
	movq	(%rax), %rdx	# *_53, D.5957
	movl	-1212(%rbp), %eax	# mb_y, tmp405
	cltq
	addq	%rdx, %rax	# D.5957, D.5957
	movzbl	(%rax), %eax	# *_56, D.5959
	testb	%al, %al	# D.5959
	jne	.L138	#,
	.loc 1 527 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.88
	movl	24(%rax), %eax	# img.88_58->type, D.5954
	testl	%eax, %eax	# D.5954
	je	.L139	#,
	.loc 1 527 0 discriminator 4
	movq	img(%rip), %rax	# img, img.89
	movl	24(%rax), %eax	# img.89_60->type, D.5954
	cmpl	$1, %eax	#, D.5954
	jne	.L138	#,
	.loc 1 527 0 discriminator 1
	movq	img(%rip), %rax	# img, img.90
	movl	72496(%rax), %eax	# img.90_62->nal_reference_idc, D.5954
	testl	%eax, %eax	# D.5954
	jle	.L138	#,
.L139:
	.loc 1 527 0 discriminator 3
	movl	$1, %eax	#, iftmp.86
	jmp	.L140	#
.L138:
	.loc 1 527 0 discriminator 2
	movl	$0, %eax	#, iftmp.86
.L140:
	.loc 1 527 0 discriminator 5
	movl	%eax, -1168(%rbp)	# iftmp.86, copy
	.loc 1 528 0 is_stmt 1 discriminator 5
	movq	decs(%rip), %rax	# decs, decs.92
	movq	48(%rax), %rax	# decs.92_67->dec_mb_mode, D.5955
	movl	-1216(%rbp), %edx	# mb_x, tmp406
	movslq	%edx, %rdx	# tmp406, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5955
	movq	(%rax), %rdx	# *_71, D.5957
	movl	-1212(%rbp), %eax	# mb_y, tmp407
	cltq
	addq	%rdx, %rax	# D.5957, D.5957
	movzbl	(%rax), %eax	# *_74, D.5959
	testb	%al, %al	# D.5959
	je	.L141	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movq	decs(%rip), %rax	# decs, decs.93
	movq	48(%rax), %rax	# decs.93_76->dec_mb_mode, D.5955
	movl	-1216(%rbp), %edx	# mb_x, tmp408
	movslq	%edx, %rdx	# tmp408, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5955
	movq	(%rax), %rdx	# *_80, D.5957
	movl	-1212(%rbp), %eax	# mb_y, tmp409
	cltq
	addq	%rdx, %rax	# D.5957, D.5957
	movzbl	(%rax), %eax	# *_83, D.5959
	cmpb	$3, %al	#, D.5959
	jbe	.L142	#,
.L141:
	.loc 1 528 0 discriminator 2
	movq	decs(%rip), %rax	# decs, decs.94
	movq	48(%rax), %rax	# decs.94_85->dec_mb_mode, D.5955
	movl	-1216(%rbp), %edx	# mb_x, tmp410
	movslq	%edx, %rdx	# tmp410, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5955
	movq	(%rax), %rdx	# *_89, D.5957
	movl	-1212(%rbp), %eax	# mb_y, tmp411
	cltq
	addq	%rdx, %rax	# D.5957, D.5957
	movzbl	(%rax), %eax	# *_92, D.5959
	cmpb	$8, %al	#, D.5959
	jne	.L143	#,
.L142:
	.loc 1 528 0 discriminator 1
	movq	img(%rip), %rax	# img, img.95
	movl	24(%rax), %eax	# img.95_94->type, D.5954
	testl	%eax, %eax	# D.5954
	je	.L144	#,
	.loc 1 528 0 discriminator 4
	movq	img(%rip), %rax	# img, img.96
	movl	24(%rax), %eax	# img.96_96->type, D.5954
	cmpl	$1, %eax	#, D.5954
	jne	.L143	#,
	.loc 1 528 0 discriminator 1
	movq	img(%rip), %rax	# img, img.97
	movl	72496(%rax), %eax	# img.97_98->nal_reference_idc, D.5954
	testl	%eax, %eax	# D.5954
	jle	.L143	#,
.L144:
	.loc 1 528 0 discriminator 3
	movl	$1, %eax	#, iftmp.91
	jmp	.L145	#
.L143:
	.loc 1 528 0 discriminator 1
	movl	$0, %eax	#, iftmp.91
.L145:
	.loc 1 528 0 discriminator 5
	movl	%eax, -1164(%rbp)	# iftmp.91, inter
	.loc 1 529 0 is_stmt 1 discriminator 5
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.98
	movq	6504(%rax), %rax	# enc_picture.98_103->mv, D.5960
	movq	(%rax), %rax	# *_104, tmp412
	movq	%rax, -1160(%rbp)	# tmp412, tmp_mv
	.loc 1 531 0 discriminator 5
	movl	-1212(%rbp), %eax	# mb_y, tmp413
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1232(%rbp), %rax	# s_map, tmp414
	addq	%rdx, %rax	# D.5956, D.5955
	movq	(%rax), %rdx	# *_109, D.5957
	movl	-1216(%rbp), %eax	# mb_x, tmp415
	cltq
	addq	%rdx, %rax	# D.5957, D.5957
	movzbl	(%rax), %eax	# *_112, D.5959
	movzbl	%al, %eax	# D.5959, D.5954
	cmpl	$2, %eax	#, D.5954
	je	.L147	#,
	cmpl	$2, %eax	#, D.5954
	jg	.L148	#,
	cmpl	$1, %eax	#, D.5954
	je	.L149	#,
	.loc 1 531 0 is_stmt 0
	jmp	.L137	#
.L148:
	.loc 1 531 0 discriminator 5
	cmpl	$3, %eax	#, D.5954
	je	.L150	#,
	cmpl	$5, %eax	#, D.5954
	je	.L151	#,
	.loc 1 531 0
	jmp	.L137	#
.L149:
	.loc 1 534 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.99
	movl	24(%rax), %eax	# img.99_115->type, D.5954
	cmpl	$2, %eax	#, D.5954
	je	.L152	#,
	.loc 1 536 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L153	#
.L156:
	.loc 1 537 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L154	#
.L155:
	.loc 1 538 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp416
	movl	-1176(%rbp), %edx	# pos_y, tmp417
	addl	%edx, %eax	# tmp417, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp418
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_123, D.5962
	movl	-1196(%rbp), %edx	# i, tmp419
	movl	-1172(%rbp), %ecx	# pos_x, tmp420
	addl	%ecx, %edx	# tmp420, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movl	-1180(%rbp), %eax	# ref_inx, tmp421
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp422
	addq	%rcx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_132, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp423
	movl	-1176(%rbp), %esi	# pos_y, tmp424
	addl	%esi, %ecx	# tmp424, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_137, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp425
	movl	-1172(%rbp), %esi	# pos_x, tmp426
	addl	%esi, %ecx	# tmp426, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_142, D.5964
	movw	%ax, (%rdx)	# D.5964, *_128
	.loc 1 537 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L154:
	.loc 1 537 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L155	#,
	.loc 1 536 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L153:
	.loc 1 536 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L156	#,
	.loc 1 546 0 is_stmt 1
	jmp	.L137	#
.L152:
	.loc 1 542 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L158	#
.L161:
	.loc 1 543 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L159	#
.L160:
	.loc 1 544 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp427
	movl	-1176(%rbp), %edx	# pos_y, tmp428
	addl	%edx, %eax	# tmp428, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp429
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_151, D.5962
	movl	-1196(%rbp), %edx	# i, tmp430
	movl	-1172(%rbp), %ecx	# pos_x, tmp431
	addl	%ecx, %edx	# tmp431, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rdx, %rax	# D.5956, D.5962
	movw	$127, (%rax)	#, *_156
	.loc 1 543 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L159:
	.loc 1 543 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L160	#,
	.loc 1 542 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L158:
	.loc 1 542 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L161	#,
	.loc 1 546 0 is_stmt 1
	jmp	.L137	#
.L151:
	.loc 1 550 0
	movl	$0, -1184(%rbp)	#, block_y
	jmp	.L162	#
.L167:
	.loc 1 551 0
	movl	$0, -1188(%rbp)	#, block_x
	jmp	.L163	#
.L166:
	.loc 1 552 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L164	#
.L165:
	.loc 1 553 0 discriminator 2
	movl	-1216(%rbp), %eax	# mb_x, tmp432
	leal	0(,%rax,4), %edx	#, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp433
	addl	%edx, %eax	# D.5954, D.5954
	cltq
	addq	$4, %rax	#, D.5958
	leaq	0(,%rax,8), %rdx	#, D.5958
	movq	-1160(%rbp), %rax	# tmp_mv, tmp434
	addq	%rdx, %rax	# D.5958, D.5965
	movq	(%rax), %rax	# *_167, D.5966
	movl	-1212(%rbp), %edx	# mb_y, tmp435
	leal	0(,%rdx,4), %ecx	#, D.5954
	movl	-1184(%rbp), %edx	# block_y, tmp436
	addl	%ecx, %edx	# D.5954, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5966
	movq	(%rax), %rax	# *_173, D.5967
	movl	-1196(%rbp), %edx	# i, tmp437
	movslq	%edx, %rdx	# tmp437, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rdx, %rax	# D.5956, D.5967
	movzwl	(%rax), %eax	# *_177, D.5968
	cwtl
	movl	-1188(%rbp), %edx	# block_x, tmp439
	movslq	%edx, %rdx	# tmp439, tmp438
	movl	-1196(%rbp), %ecx	# i, tmp441
	movslq	%ecx, %rsi	# tmp441, tmp440
	movl	-1184(%rbp), %ecx	# block_y, tmp443
	movslq	%ecx, %rcx	# tmp443, tmp442
	salq	$2, %rsi	#, tmp444
	addq	%rsi, %rcx	# tmp444, tmp445
	salq	$2, %rcx	#, tmp446
	addq	%rcx, %rdx	# tmp446, tmp447
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5954, mv
	.loc 1 552 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L164:
	.loc 1 552 0 is_stmt 0 discriminator 1
	cmpl	$1, -1196(%rbp)	#, i
	jle	.L165	#,
	.loc 1 551 0 is_stmt 1
	addl	$1, -1188(%rbp)	#, block_x
.L163:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpl	$3, -1188(%rbp)	#, block_x
	jle	.L166	#,
	.loc 1 550 0 is_stmt 1
	addl	$1, -1184(%rbp)	#, block_y
.L162:
	.loc 1 550 0 is_stmt 0 discriminator 1
	cmpl	$3, -1184(%rbp)	#, block_y
	jle	.L167	#,
	.loc 1 556 0 is_stmt 1
	movl	$0, -1196(%rbp)	#, i
	jmp	.L168	#
.L171:
	.loc 1 557 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L169	#
.L170:
	.loc 1 558 0 discriminator 2
	movl	-1196(%rbp), %eax	# i, tmp449
	cltq
	movl	-1192(%rbp), %edx	# j, tmp451
	movslq	%edx, %rdx	# tmp451, tmp450
	salq	$4, %rdx	#, tmp452
	addq	%rdx, %rax	# tmp452, tmp453
	movl	$0, -1024(%rbp,%rax,4)	#, resY
	.loc 1 557 0 discriminator 2
	addl	$1, -1192(%rbp)	#, j
.L169:
	.loc 1 557 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L170	#,
	.loc 1 556 0 is_stmt 1
	addl	$1, -1196(%rbp)	#, i
.L168:
	.loc 1 556 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L171	#,
	.loc 1 561 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.100
	movl	24(%rax), %eax	# img.100_187->type, D.5954
	cmpl	$2, %eax	#, D.5954
	je	.L172	#,
	.loc 1 564 0
	cmpl	$0, -1168(%rbp)	#, copy
	je	.L173	#,
	.loc 1 566 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L174	#
.L177:
	.loc 1 567 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L175	#
.L176:
	.loc 1 568 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp454
	movl	-1176(%rbp), %edx	# pos_y, tmp455
	addl	%edx, %eax	# tmp455, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp456
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_194, D.5962
	movl	-1196(%rbp), %edx	# i, tmp457
	movl	-1172(%rbp), %ecx	# pos_x, tmp458
	addl	%ecx, %edx	# tmp458, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movl	-1180(%rbp), %eax	# ref_inx, tmp459
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp460
	addq	%rcx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_202, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp461
	movl	-1176(%rbp), %esi	# pos_y, tmp462
	addl	%esi, %ecx	# tmp462, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_207, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp463
	movl	-1172(%rbp), %esi	# pos_x, tmp464
	addl	%esi, %ecx	# tmp464, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_212, D.5964
	movw	%ax, (%rdx)	# D.5964, *_199
	.loc 1 567 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L175:
	.loc 1 567 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L176	#,
	.loc 1 566 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L174:
	.loc 1 566 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L177	#,
	.loc 1 601 0 is_stmt 1
	jmp	.L137	#
.L173:
	.loc 1 571 0
	cmpl	$0, -1164(%rbp)	#, inter
	je	.L179	#,
	.loc 1 573 0
	movl	-1212(%rbp), %eax	# mb_y, tmp468
	sall	$2, %eax	#, tmp467
	movl	%eax, -1184(%rbp)	# tmp467, block_y
	jmp	.L180	#
.L187:
	.loc 1 574 0
	movl	-1216(%rbp), %eax	# mb_x, tmp472
	sall	$2, %eax	#, tmp471
	movl	%eax, -1188(%rbp)	# tmp471, block_x
	jmp	.L181	#
.L186:
	.loc 1 580 0
	movq	decs(%rip), %rax	# decs, decs.101
	.loc 1 576 0
	movq	32(%rax), %r8	# decs.101_222->RefBlock, D.5961
	.loc 1 579 0
	movl	-1212(%rbp), %edx	# mb_y, tmp473
	movl	$0, %eax	#, tmp474
	subl	%edx, %eax	# tmp473, tmp474
	sall	$2, %eax	#, tmp475
	movl	%eax, %edx	# tmp474, D.5954
	movl	-1184(%rbp), %eax	# block_y, tmp476
	leal	(%rdx,%rax), %ecx	#, D.5954
	movl	-1216(%rbp), %edx	# mb_x, tmp477
	movl	$0, %eax	#, tmp478
	subl	%edx, %eax	# tmp477, tmp478
	sall	$2, %eax	#, tmp479
	movl	%eax, %edx	# tmp478, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp480
	addl	%edx, %eax	# D.5954, D.5954
	.loc 1 576 0
	cltq
	movslq	%ecx, %rdx	# D.5954, tmp482
	salq	$2, %rdx	#, tmp483
	addq	%rdx, %rax	# tmp483, tmp484
	addq	$16, %rax	#, tmp485
	movl	-1152(%rbp,%rax,4), %edi	# mv, D.5954
	.loc 1 578 0
	movl	-1212(%rbp), %edx	# mb_y, tmp486
	movl	$0, %eax	#, tmp487
	subl	%edx, %eax	# tmp486, tmp487
	sall	$2, %eax	#, tmp488
	movl	%eax, %edx	# tmp487, D.5954
	movl	-1184(%rbp), %eax	# block_y, tmp489
	leal	(%rdx,%rax), %ecx	#, D.5954
	movl	-1216(%rbp), %edx	# mb_x, tmp490
	movl	$0, %eax	#, tmp491
	subl	%edx, %eax	# tmp490, tmp491
	sall	$2, %eax	#, tmp492
	movl	%eax, %edx	# tmp491, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp493
	addl	%edx, %eax	# D.5954, D.5954
	.loc 1 576 0
	cltq
	movslq	%ecx, %rdx	# D.5954, tmp495
	salq	$2, %rdx	#, tmp496
	addq	%rdx, %rax	# tmp496, tmp497
	movl	-1152(%rbp,%rax,4), %ecx	# mv, D.5954
	movl	-1180(%rbp), %eax	# ref_inx, tmp498
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp499
	addq	%rdx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_236, D.5961
	movl	-1188(%rbp), %edx	# block_x, tmp500
	movl	-1184(%rbp), %esi	# block_y, tmp501
	movq	%r8, %r9	# D.5961,
	movl	%edi, %r8d	# D.5954,
	movq	%rax, %rdi	# D.5961,
	call	Get_Reference_Block	#
	.loc 1 581 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L182	#
.L185:
	.loc 1 582 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L183	#
.L184:
	.loc 1 584 0 discriminator 2
	movl	-1184(%rbp), %eax	# block_y, tmp502
	leal	0(,%rax,4), %edx	#, D.5954
	movl	-1192(%rbp), %eax	# j, tmp503
	addl	%edx, %eax	# D.5954, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp504
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_244, D.5962
	movl	-1188(%rbp), %edx	# block_x, tmp505
	leal	0(,%rdx,4), %ecx	#, D.5954
	movl	-1196(%rbp), %edx	# i, tmp506
	addl	%ecx, %edx	# D.5954, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movq	decs(%rip), %rax	# decs, decs.102
	movq	32(%rax), %rax	# decs.102_251->RefBlock, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp507
	movslq	%ecx, %rcx	# tmp507, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_255, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp508
	movslq	%ecx, %rcx	# tmp508, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_259, D.5964
	movw	%ax, (%rdx)	# D.5964, *_250
	.loc 1 582 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L183:
	.loc 1 582 0 is_stmt 0 discriminator 1
	cmpl	$3, -1196(%rbp)	#, i
	jle	.L184	#,
	.loc 1 581 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L182:
	.loc 1 581 0 is_stmt 0 discriminator 1
	cmpl	$3, -1192(%rbp)	#, j
	jle	.L185	#,
	.loc 1 574 0 is_stmt 1
	addl	$1, -1188(%rbp)	#, block_x
.L181:
	.loc 1 574 0 is_stmt 0 discriminator 1
	movl	-1216(%rbp), %eax	# mb_x, tmp509
	addl	$1, %eax	#, D.5954
	sall	$2, %eax	#, D.5954
	cmpl	-1188(%rbp), %eax	# block_x, D.5954
	jg	.L186	#,
	.loc 1 573 0 is_stmt 1
	addl	$1, -1184(%rbp)	#, block_y
.L180:
	.loc 1 573 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# mb_y, tmp510
	addl	$1, %eax	#, D.5954
	sall	$2, %eax	#, D.5954
	cmpl	-1184(%rbp), %eax	# block_y, D.5954
	jg	.L187	#,
	.loc 1 601 0 is_stmt 1
	jmp	.L137	#
.L179:
	.loc 1 590 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L188	#
.L191:
	.loc 1 591 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L189	#
.L190:
	.loc 1 592 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp511
	movl	-1176(%rbp), %edx	# pos_y, tmp512
	addl	%edx, %eax	# tmp512, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp513
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_270, D.5962
	movl	-1196(%rbp), %edx	# i, tmp514
	movl	-1172(%rbp), %ecx	# pos_x, tmp515
	addl	%ecx, %edx	# tmp515, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movl	-1180(%rbp), %eax	# ref_inx, tmp516
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp517
	addq	%rcx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_278, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp518
	movl	-1176(%rbp), %esi	# pos_y, tmp519
	addl	%esi, %ecx	# tmp519, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_283, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp520
	movl	-1172(%rbp), %esi	# pos_x, tmp521
	addl	%esi, %ecx	# tmp521, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_288, D.5964
	movw	%ax, (%rdx)	# D.5964, *_275
	.loc 1 591 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L189:
	.loc 1 591 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L190	#,
	.loc 1 590 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L188:
	.loc 1 590 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L191	#,
	.loc 1 601 0 is_stmt 1
	jmp	.L137	#
.L172:
	.loc 1 597 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L192	#
.L195:
	.loc 1 598 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L193	#
.L194:
	.loc 1 599 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp522
	movl	-1176(%rbp), %edx	# pos_y, tmp523
	addl	%edx, %eax	# tmp523, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp524
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_297, D.5962
	movl	-1196(%rbp), %edx	# i, tmp525
	movl	-1172(%rbp), %ecx	# pos_x, tmp526
	addl	%ecx, %edx	# tmp526, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rdx, %rax	# D.5956, D.5962
	movw	$127, (%rax)	#, *_302
	.loc 1 598 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L193:
	.loc 1 598 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L194	#,
	.loc 1 597 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L192:
	.loc 1 597 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L195	#,
	.loc 1 601 0 is_stmt 1
	jmp	.L137	#
.L150:
	.loc 1 603 0
	movq	img(%rip), %rax	# img, img.103
	movl	24(%rax), %eax	# img.103_305->type, D.5954
	cmpl	$2, %eax	#, D.5954
	je	.L196	#,
	.loc 1 606 0
	movl	$0, -1184(%rbp)	#, block_y
	jmp	.L197	#
.L202:
	.loc 1 607 0
	movl	$0, -1188(%rbp)	#, block_x
	jmp	.L198	#
.L201:
	.loc 1 608 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L199	#
.L200:
	.loc 1 609 0 discriminator 2
	movl	-1216(%rbp), %eax	# mb_x, tmp527
	leal	0(,%rax,4), %edx	#, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp528
	addl	%edx, %eax	# D.5954, D.5954
	cltq
	addq	$4, %rax	#, D.5958
	leaq	0(,%rax,8), %rdx	#, D.5958
	movq	-1160(%rbp), %rax	# tmp_mv, tmp529
	addq	%rdx, %rax	# D.5958, D.5965
	movq	(%rax), %rax	# *_315, D.5966
	movl	-1212(%rbp), %edx	# mb_y, tmp530
	leal	0(,%rdx,4), %ecx	#, D.5954
	movl	-1184(%rbp), %edx	# block_y, tmp531
	addl	%ecx, %edx	# D.5954, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	salq	$3, %rdx	#, D.5956
	addq	%rdx, %rax	# D.5956, D.5966
	movq	(%rax), %rax	# *_321, D.5967
	movl	-1196(%rbp), %edx	# i, tmp532
	movslq	%edx, %rdx	# tmp532, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rdx, %rax	# D.5956, D.5967
	movzwl	(%rax), %eax	# *_325, D.5968
	cwtl
	movl	-1188(%rbp), %edx	# block_x, tmp534
	movslq	%edx, %rdx	# tmp534, tmp533
	movl	-1196(%rbp), %ecx	# i, tmp536
	movslq	%ecx, %rsi	# tmp536, tmp535
	movl	-1184(%rbp), %ecx	# block_y, tmp538
	movslq	%ecx, %rcx	# tmp538, tmp537
	salq	$2, %rsi	#, tmp539
	addq	%rsi, %rcx	# tmp539, tmp540
	salq	$2, %rcx	#, tmp541
	addq	%rcx, %rdx	# tmp541, tmp542
	movl	%eax, -1152(%rbp,%rdx,4)	# D.5954, mv
	.loc 1 608 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L199:
	.loc 1 608 0 is_stmt 0 discriminator 1
	cmpl	$1, -1196(%rbp)	#, i
	jle	.L200	#,
	.loc 1 607 0 is_stmt 1
	addl	$1, -1188(%rbp)	#, block_x
.L198:
	.loc 1 607 0 is_stmt 0 discriminator 1
	cmpl	$3, -1188(%rbp)	#, block_x
	jle	.L201	#,
	.loc 1 606 0 is_stmt 1
	addl	$1, -1184(%rbp)	#, block_y
.L197:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cmpl	$3, -1184(%rbp)	#, block_y
	jle	.L202	#,
	.loc 1 612 0 is_stmt 1
	movl	$0, -1196(%rbp)	#, i
	jmp	.L203	#
.L206:
	.loc 1 613 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L204	#
.L205:
	.loc 1 614 0 discriminator 2
	movl	-1196(%rbp), %eax	# i, tmp544
	cltq
	movl	-1192(%rbp), %edx	# j, tmp546
	movslq	%edx, %rdx	# tmp546, tmp545
	salq	$4, %rdx	#, tmp547
	addq	%rdx, %rax	# tmp547, tmp548
	movl	$0, -1024(%rbp,%rax,4)	#, resY
	.loc 1 613 0 discriminator 2
	addl	$1, -1192(%rbp)	#, j
.L204:
	.loc 1 613 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L205	#,
	.loc 1 612 0 is_stmt 1
	addl	$1, -1196(%rbp)	#, i
.L203:
	.loc 1 612 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L206	#,
	.loc 1 617 0 is_stmt 1
	cmpl	$0, -1168(%rbp)	#, copy
	je	.L207	#,
	.loc 1 619 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L208	#
.L211:
	.loc 1 620 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L209	#
.L210:
	.loc 1 621 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp549
	movl	-1176(%rbp), %edx	# pos_y, tmp550
	addl	%edx, %eax	# tmp550, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp551
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_340, D.5962
	movl	-1196(%rbp), %edx	# i, tmp552
	movl	-1172(%rbp), %ecx	# pos_x, tmp553
	addl	%ecx, %edx	# tmp553, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movl	-1180(%rbp), %eax	# ref_inx, tmp554
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp555
	addq	%rcx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_348, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp556
	movl	-1176(%rbp), %esi	# pos_y, tmp557
	addl	%esi, %ecx	# tmp557, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_353, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp558
	movl	-1172(%rbp), %esi	# pos_x, tmp559
	addl	%esi, %ecx	# tmp559, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_358, D.5964
	movw	%ax, (%rdx)	# D.5964, *_345
	.loc 1 620 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L209:
	.loc 1 620 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L210	#,
	.loc 1 619 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L208:
	.loc 1 619 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L211	#,
	.loc 1 642 0 is_stmt 1
	jmp	.L137	#
.L207:
	.loc 1 624 0
	cmpl	$0, -1164(%rbp)	#, inter
	je	.L196	#,
	.loc 1 626 0
	movl	-1212(%rbp), %eax	# mb_y, tmp563
	sall	$2, %eax	#, tmp562
	movl	%eax, -1184(%rbp)	# tmp562, block_y
	jmp	.L212	#
.L219:
	.loc 1 627 0
	movl	-1216(%rbp), %eax	# mb_x, tmp567
	sall	$2, %eax	#, tmp566
	movl	%eax, -1188(%rbp)	# tmp566, block_x
	jmp	.L213	#
.L218:
	.loc 1 633 0
	movq	decs(%rip), %rax	# decs, decs.104
	.loc 1 629 0
	movq	32(%rax), %r8	# decs.104_368->RefBlock, D.5961
	.loc 1 632 0
	movl	-1212(%rbp), %edx	# mb_y, tmp568
	movl	$0, %eax	#, tmp569
	subl	%edx, %eax	# tmp568, tmp569
	sall	$2, %eax	#, tmp570
	movl	%eax, %edx	# tmp569, D.5954
	movl	-1184(%rbp), %eax	# block_y, tmp571
	leal	(%rdx,%rax), %ecx	#, D.5954
	movl	-1216(%rbp), %edx	# mb_x, tmp572
	movl	$0, %eax	#, tmp573
	subl	%edx, %eax	# tmp572, tmp573
	sall	$2, %eax	#, tmp574
	movl	%eax, %edx	# tmp573, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp575
	addl	%edx, %eax	# D.5954, D.5954
	.loc 1 629 0
	cltq
	movslq	%ecx, %rdx	# D.5954, tmp577
	salq	$2, %rdx	#, tmp578
	addq	%rdx, %rax	# tmp578, tmp579
	addq	$16, %rax	#, tmp580
	movl	-1152(%rbp,%rax,4), %edi	# mv, D.5954
	.loc 1 631 0
	movl	-1212(%rbp), %edx	# mb_y, tmp581
	movl	$0, %eax	#, tmp582
	subl	%edx, %eax	# tmp581, tmp582
	sall	$2, %eax	#, tmp583
	movl	%eax, %edx	# tmp582, D.5954
	movl	-1184(%rbp), %eax	# block_y, tmp584
	leal	(%rdx,%rax), %ecx	#, D.5954
	movl	-1216(%rbp), %edx	# mb_x, tmp585
	movl	$0, %eax	#, tmp586
	subl	%edx, %eax	# tmp585, tmp586
	sall	$2, %eax	#, tmp587
	movl	%eax, %edx	# tmp586, D.5954
	movl	-1188(%rbp), %eax	# block_x, tmp588
	addl	%edx, %eax	# D.5954, D.5954
	.loc 1 629 0
	cltq
	movslq	%ecx, %rdx	# D.5954, tmp590
	salq	$2, %rdx	#, tmp591
	addq	%rdx, %rax	# tmp591, tmp592
	movl	-1152(%rbp,%rax,4), %ecx	# mv, D.5954
	movl	-1180(%rbp), %eax	# ref_inx, tmp593
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp594
	addq	%rdx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_382, D.5961
	movl	-1188(%rbp), %edx	# block_x, tmp595
	movl	-1184(%rbp), %esi	# block_y, tmp596
	movq	%r8, %r9	# D.5961,
	movl	%edi, %r8d	# D.5954,
	movq	%rax, %rdi	# D.5961,
	call	Get_Reference_Block	#
	.loc 1 634 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L214	#
.L217:
	.loc 1 635 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L215	#
.L216:
	.loc 1 637 0 discriminator 2
	movl	-1184(%rbp), %eax	# block_y, tmp597
	leal	0(,%rax,4), %edx	#, D.5954
	movl	-1192(%rbp), %eax	# j, tmp598
	addl	%edx, %eax	# D.5954, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp599
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_390, D.5962
	movl	-1188(%rbp), %edx	# block_x, tmp600
	leal	0(,%rdx,4), %ecx	#, D.5954
	movl	-1196(%rbp), %edx	# i, tmp601
	addl	%ecx, %edx	# D.5954, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movq	decs(%rip), %rax	# decs, decs.105
	movq	32(%rax), %rax	# decs.105_397->RefBlock, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp602
	movslq	%ecx, %rcx	# tmp602, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_401, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp603
	movslq	%ecx, %rcx	# tmp603, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_405, D.5964
	movw	%ax, (%rdx)	# D.5964, *_396
	.loc 1 635 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L215:
	.loc 1 635 0 is_stmt 0 discriminator 1
	cmpl	$3, -1196(%rbp)	#, i
	jle	.L216	#,
	.loc 1 634 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L214:
	.loc 1 634 0 is_stmt 0 discriminator 1
	cmpl	$3, -1192(%rbp)	#, j
	jle	.L217	#,
	.loc 1 627 0 is_stmt 1
	addl	$1, -1188(%rbp)	#, block_x
.L213:
	.loc 1 627 0 is_stmt 0 discriminator 1
	movl	-1216(%rbp), %eax	# mb_x, tmp604
	addl	$1, %eax	#, D.5954
	sall	$2, %eax	#, D.5954
	cmpl	-1188(%rbp), %eax	# block_x, D.5954
	jg	.L218	#,
	.loc 1 626 0 is_stmt 1
	addl	$1, -1184(%rbp)	#, block_y
.L212:
	.loc 1 626 0 is_stmt 0 discriminator 1
	movl	-1212(%rbp), %eax	# mb_y, tmp605
	addl	$1, %eax	#, D.5954
	sall	$2, %eax	#, D.5954
	cmpl	-1184(%rbp), %eax	# block_y, D.5954
	jg	.L219	#,
.L196:
	.loc 1 642 0 is_stmt 1
	jmp	.L137	#
.L147:
	.loc 1 644 0
	movq	img(%rip), %rax	# img, img.106
	movl	24(%rax), %eax	# img.106_411->type, D.5954
	cmpl	$2, %eax	#, D.5954
	je	.L220	#,
	.loc 1 646 0
	cmpl	$0, -1164(%rbp)	#, inter
	jne	.L221	#,
	.loc 1 648 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L222	#
.L225:
	.loc 1 649 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L223	#
.L224:
	.loc 1 650 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp606
	movl	-1176(%rbp), %edx	# pos_y, tmp607
	addl	%edx, %eax	# tmp607, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp608
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_418, D.5962
	movl	-1196(%rbp), %edx	# i, tmp609
	movl	-1172(%rbp), %ecx	# pos_x, tmp610
	addl	%ecx, %edx	# tmp610, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rax, %rdx	# D.5962, D.5962
	movl	-1180(%rbp), %eax	# ref_inx, tmp611
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5956
	movq	-1224(%rbp), %rax	# refY, tmp612
	addq	%rcx, %rax	# D.5956, D.5963
	movq	(%rax), %rax	# *_426, D.5961
	movl	-1192(%rbp), %ecx	# j, tmp613
	movl	-1176(%rbp), %esi	# pos_y, tmp614
	addl	%esi, %ecx	# tmp614, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	salq	$3, %rcx	#, D.5956
	addq	%rcx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_431, D.5962
	movl	-1196(%rbp), %ecx	# i, tmp615
	movl	-1172(%rbp), %esi	# pos_x, tmp616
	addl	%esi, %ecx	# tmp616, D.5954
	movslq	%ecx, %rcx	# D.5954, D.5956
	addq	%rcx, %rcx	# D.5956
	addq	%rcx, %rax	# D.5956, D.5962
	movzwl	(%rax), %eax	# *_436, D.5964
	movw	%ax, (%rdx)	# D.5964, *_423
	.loc 1 649 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L223:
	.loc 1 649 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L224	#,
	.loc 1 648 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L222:
	.loc 1 648 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L225	#,
	.loc 1 659 0 is_stmt 1
	jmp	.L137	#
.L220:
	.loc 1 655 0
	movl	$0, -1192(%rbp)	#, j
	jmp	.L226	#
.L229:
	.loc 1 656 0
	movl	$0, -1196(%rbp)	#, i
	jmp	.L227	#
.L228:
	.loc 1 657 0 discriminator 2
	movl	-1192(%rbp), %eax	# j, tmp617
	movl	-1176(%rbp), %edx	# pos_y, tmp618
	addl	%edx, %eax	# tmp618, D.5954
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5956
	movq	-1208(%rbp), %rax	# inY, tmp619
	addq	%rdx, %rax	# D.5956, D.5961
	movq	(%rax), %rax	# *_445, D.5962
	movl	-1196(%rbp), %edx	# i, tmp620
	movl	-1172(%rbp), %ecx	# pos_x, tmp621
	addl	%ecx, %edx	# tmp621, D.5954
	movslq	%edx, %rdx	# D.5954, D.5956
	addq	%rdx, %rdx	# D.5956
	addq	%rdx, %rax	# D.5956, D.5962
	movw	$127, (%rax)	#, *_450
	.loc 1 656 0 discriminator 2
	addl	$1, -1196(%rbp)	#, i
.L227:
	.loc 1 656 0 is_stmt 0 discriminator 1
	cmpl	$15, -1196(%rbp)	#, i
	jle	.L228	#,
	.loc 1 655 0 is_stmt 1
	addl	$1, -1192(%rbp)	#, j
.L226:
	.loc 1 655 0 is_stmt 0 discriminator 1
	cmpl	$15, -1192(%rbp)	#, j
	jle	.L229	#,
.L221:
	.loc 1 659 0 is_stmt 1
	nop
.L137:
	.loc 1 661 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	Conceal_Error, .-Conceal_Error
	.section	.rodata
	.align 16
	.type	COEF.4551, @object
	.size	COEF.4551, 24
COEF.4551:
	.long	1
	.long	-5
	.long	20
	.long	20
	.long	-5
	.long	1
	.align 8
.LC0:
	.long	4290772992
	.long	1105199103
	.align 8
.LC1:
	.long	0
	.long	1079574528
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a07
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF564
	.byte	0x1
	.long	.LASF565
	.long	.LASF566
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
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xc2
	.uleb128 0x9
	.long	.LASF13
	.sleb128 0
	.uleb128 0x9
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0x2d
	.long	0xad
	.uleb128 0x4
	.long	0x34
	.long	0xdd
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x109
	.uleb128 0x9
	.long	.LASF17
	.sleb128 0
	.uleb128 0x9
	.long	.LASF18
	.sleb128 1
	.uleb128 0x9
	.long	.LASF19
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x5
	.byte	0xbe
	.long	0xee
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x13b
	.uleb128 0x9
	.long	.LASF21
	.sleb128 0
	.uleb128 0x9
	.long	.LASF22
	.sleb128 1
	.uleb128 0x9
	.long	.LASF23
	.sleb128 2
	.uleb128 0x9
	.long	.LASF24
	.sleb128 3
	.uleb128 0x9
	.long	.LASF25
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x22b
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF29
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF30
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0xd5
	.long	0xdd
	.byte	0x18
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.byte	0xdd
	.long	0xdd
	.byte	0x40
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF40
	.byte	0x5
	.byte	0xe2
	.long	0x13b
	.uleb128 0x7
	.long	.LASF41
	.byte	0x5
	.byte	0xe4
	.long	0x241
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x274
	.uleb128 0xb
	.long	.LASF42
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF43
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF44
	.byte	0x5
	.byte	0xee
	.long	0x247
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x2eb
	.uleb128 0xe
	.long	.LASF45
	.byte	0x5
	.value	0x104
	.long	0x2eb
	.byte	0
	.uleb128 0xf
	.long	.LASF46
	.byte	0x5
	.value	0x105
	.long	0x301
	.value	0x210
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x106
	.long	0x317
	.value	0x330
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x107
	.long	0x32d
	.value	0x470
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x108
	.long	0x343
	.value	0x530
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.value	0x109
	.long	0x343
	.value	0x570
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.value	0x10a
	.long	0x353
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x301
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x317
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x32d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x343
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x353
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x363
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF52
	.byte	0x5
	.value	0x10c
	.long	0x27f
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x403
	.uleb128 0xe
	.long	.LASF53
	.byte	0x5
	.value	0x11b
	.long	0x403
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x5
	.value	0x11c
	.long	0x343
	.byte	0x20
	.uleb128 0xe
	.long	.LASF55
	.byte	0x5
	.value	0x11d
	.long	0x413
	.byte	0x60
	.uleb128 0xf
	.long	.LASF56
	.byte	0x5
	.value	0x11e
	.long	0x429
	.value	0x120
	.uleb128 0xf
	.long	.LASF57
	.byte	0x5
	.value	0x11f
	.long	0x43f
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF58
	.byte	0x5
	.value	0x120
	.long	0x43f
	.value	0xd00
	.uleb128 0xf
	.long	.LASF59
	.byte	0x5
	.value	0x121
	.long	0x455
	.value	0x1660
	.uleb128 0xf
	.long	.LASF60
	.byte	0x5
	.value	0x122
	.long	0x455
	.value	0x1980
	.uleb128 0xf
	.long	.LASF61
	.byte	0x5
	.value	0x123
	.long	0x43f
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF62
	.byte	0x5
	.value	0x124
	.long	0x43f
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x413
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x429
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x43f
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x455
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x274
	.long	0x46b
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x5
	.value	0x125
	.long	0x36f
	.uleb128 0x11
	.long	.LASF68
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x4ac
	.uleb128 0xe
	.long	.LASF64
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF65
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF66
	.byte	0x5
	.value	0x138
	.long	0x4ac
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x477
	.uleb128 0x10
	.long	.LASF67
	.byte	0x5
	.value	0x139
	.long	0x477
	.uleb128 0x11
	.long	.LASF69
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x51a
	.uleb128 0xe
	.long	.LASF70
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF73
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF74
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF66
	.byte	0x5
	.value	0x143
	.long	0x51a
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4be
	.uleb128 0x10
	.long	.LASF75
	.byte	0x5
	.value	0x144
	.long	0x4be
	.uleb128 0x11
	.long	.LASF76
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x5ba
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF79
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x158
	.long	0x5d4
	.byte	0x20
	.uleb128 0xe
	.long	.LASF83
	.byte	0x5
	.value	0x15a
	.long	0x5f0
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x5d4
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
	.long	0x5ba
	.uleb128 0x13
	.long	0x5ea
	.uleb128 0x14
	.long	0x5ea
	.uleb128 0x14
	.long	0x236
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x52c
	.uleb128 0x6
	.byte	0x8
	.long	0x5da
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.value	0x15c
	.long	0x52c
	.uleb128 0x15
	.long	.LASF85
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x87c
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF88
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF90
	.byte	0x5
	.value	0x166
	.long	0xcd
	.byte	0x14
	.uleb128 0xe
	.long	.LASF91
	.byte	0x5
	.value	0x168
	.long	0x87c
	.byte	0x38
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x169
	.long	0x87c
	.byte	0x40
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x882
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF94
	.byte	0x5
	.value	0x16d
	.long	0x8a4
	.value	0x14c
	.uleb128 0xf
	.long	.LASF95
	.byte	0x5
	.value	0x16e
	.long	0x8a4
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF96
	.byte	0x5
	.value	0x170
	.long	0xe3
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF97
	.byte	0x5
	.value	0x171
	.long	0x8b4
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF98
	.byte	0x5
	.value	0x172
	.long	0x8b4
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF99
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF100
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF102
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF103
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF104
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF105
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF106
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF107
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF117
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x18a
	.long	0x8c4
	.value	0x248
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x602
	.uleb128 0x4
	.long	0x34
	.long	0x8a4
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
	.long	0x8b4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x8c4
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF128
	.uleb128 0x10
	.long	.LASF129
	.byte	0x5
	.value	0x196
	.long	0x602
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x970
	.uleb128 0xe
	.long	.LASF130
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF131
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF132
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF133
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF134
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF135
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0xe
	.long	.LASF136
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0xe
	.long	.LASF137
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF138
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF139
	.byte	0x5
	.value	0x1a8
	.long	0xdd
	.byte	0x20
	.uleb128 0xe
	.long	.LASF140
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF141
	.byte	0x5
	.value	0x1ab
	.long	0x8d7
	.uleb128 0x11
	.long	.LASF142
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0x9b1
	.uleb128 0xe
	.long	.LASF143
	.byte	0x5
	.value	0x1b1
	.long	0x9b1
	.byte	0
	.uleb128 0xe
	.long	.LASF144
	.byte	0x5
	.value	0x1b2
	.long	0x22b
	.byte	0x8
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x1b4
	.long	0x9d7
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x970
	.uleb128 0x18
	.long	0x34
	.long	0x9cb
	.uleb128 0x14
	.long	0x9cb
	.uleb128 0x14
	.long	0x9d1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5f6
	.uleb128 0x6
	.byte	0x8
	.long	0x97c
	.uleb128 0x6
	.byte	0x8
	.long	0x9b7
	.uleb128 0x10
	.long	.LASF146
	.byte	0x5
	.value	0x1b8
	.long	0x97c
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xaf6
	.uleb128 0xe
	.long	.LASF147
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF151
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1c3
	.long	0xaf6
	.byte	0x18
	.uleb128 0xe
	.long	.LASF153
	.byte	0x5
	.value	0x1c4
	.long	0xafc
	.byte	0x20
	.uleb128 0xe
	.long	.LASF154
	.byte	0x5
	.value	0x1c5
	.long	0xb02
	.byte	0x28
	.uleb128 0xe
	.long	.LASF155
	.byte	0x5
	.value	0x1c8
	.long	0xb08
	.byte	0x30
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1d3
	.long	0xb1d
	.byte	0x78
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1d5
	.long	0xb23
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9dd
	.uleb128 0x6
	.byte	0x8
	.long	0x363
	.uleb128 0x6
	.byte	0x8
	.long	0x46b
	.uleb128 0x6
	.byte	0x8
	.long	0x4b2
	.uleb128 0x18
	.long	0xc2
	.long	0xb1d
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb0e
	.uleb128 0x4
	.long	0x34
	.long	0xb39
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF166
	.byte	0x5
	.value	0x1d7
	.long	0x9e9
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xbaf
	.uleb128 0xe
	.long	.LASF167
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF168
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1df
	.long	0xbaf
	.byte	0x8
	.uleb128 0xf
	.long	.LASF170
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF171
	.byte	0x5
	.value	0x1e1
	.long	0xbc5
	.value	0x32c
	.uleb128 0xf
	.long	.LASF172
	.byte	0x5
	.value	0x1e2
	.long	0xbc5
	.value	0x330
	.uleb128 0xf
	.long	.LASF173
	.byte	0x5
	.value	0x1e3
	.long	0xbc5
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xbbf
	.long	0xbbf
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb39
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF174
	.uleb128 0x10
	.long	.LASF175
	.byte	0x5
	.value	0x1e4
	.long	0xb45
	.uleb128 0x17
	.byte	0x38
	.byte	0x5
	.value	0x276
	.long	0xc3d
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x278
	.long	0xc3d
	.byte	0
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x279
	.long	0xc43
	.byte	0x8
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x27a
	.long	0xc55
	.byte	0x10
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x27b
	.long	0xc43
	.byte	0x18
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x27c
	.long	0xc49
	.byte	0x20
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x27d
	.long	0xc5b
	.byte	0x28
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x27e
	.long	0xc5b
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xc49
	.uleb128 0x6
	.byte	0x8
	.long	0xc4f
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xc43
	.uleb128 0x6
	.byte	0x8
	.long	0xdd
	.uleb128 0x10
	.long	.LASF183
	.byte	0x5
	.value	0x27f
	.long	0xbd8
	.uleb128 0xd
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1475
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF185
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF186
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x2b3
	.long	0x1475
	.byte	0x50
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x2b4
	.long	0x1475
	.byte	0x90
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x2b9
	.long	0x148b
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF209
	.byte	0x5
	.value	0x2ba
	.long	0x148b
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF210
	.byte	0x5
	.value	0x2bb
	.long	0x148b
	.value	0x270
	.uleb128 0xf
	.long	.LASF211
	.byte	0x5
	.value	0x2bc
	.long	0x148b
	.value	0x338
	.uleb128 0xf
	.long	.LASF212
	.byte	0x5
	.value	0x2bd
	.long	0x148b
	.value	0x400
	.uleb128 0xf
	.long	.LASF213
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF214
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF218
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF219
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF220
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF221
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF222
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF223
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF224
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF225
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF226
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF227
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x2df
	.long	0x149b
	.value	0x52c
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF238
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF239
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF240
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF241
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF242
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF243
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF249
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF250
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF251
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x2f7
	.long	0x8c4
	.value	0x978
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF261
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF262
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF263
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF264
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF265
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF266
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF267
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF268
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF269
	.byte	0x5
	.value	0x30a
	.long	0x148b
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF270
	.byte	0x5
	.value	0x30b
	.long	0x148b
	.value	0xa78
	.uleb128 0xf
	.long	.LASF271
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF272
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF273
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF274
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF275
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF276
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF277
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF278
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF279
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF280
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF281
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF282
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF283
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF284
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF285
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF286
	.byte	0x5
	.value	0x327
	.long	0x148b
	.value	0xb88
	.uleb128 0xf
	.long	.LASF287
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF288
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF289
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0xf
	.long	.LASF290
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0xf
	.long	.LASF291
	.byte	0x5
	.value	0x32d
	.long	0xdd
	.value	0xc68
	.uleb128 0xf
	.long	.LASF292
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0xf
	.long	.LASF293
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF294
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF295
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF296
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF297
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF298
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF299
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF300
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF301
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF302
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF303
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF304
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF305
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF306
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF307
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF308
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF309
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF310
	.byte	0x5
	.value	0x346
	.long	0xcd
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF311
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF312
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF313
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF314
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF315
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF316
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF317
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF318
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF319
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF320
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF321
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF322
	.byte	0x5
	.value	0x35c
	.long	0x14ac
	.value	0xd08
	.uleb128 0xf
	.long	.LASF323
	.byte	0x5
	.value	0x35e
	.long	0x148b
	.value	0xd38
	.uleb128 0xf
	.long	.LASF324
	.byte	0x5
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
	.long	0x8c4
	.long	0x14bc
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF325
	.byte	0x5
	.value	0x361
	.long	0xc6d
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1ead
	.uleb128 0xe
	.long	.LASF326
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF327
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF328
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF329
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF330
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF331
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF332
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF89
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF333
	.byte	0x5
	.value	0x372
	.long	0xbc5
	.byte	0x30
	.uleb128 0xe
	.long	.LASF334
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF335
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF336
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF337
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF338
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF339
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF340
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF341
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF342
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF343
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF344
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF345
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF346
	.byte	0x5
	.value	0x37f
	.long	0xc3d
	.byte	0x68
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.value	0x380
	.long	0xc3d
	.byte	0x70
	.uleb128 0xe
	.long	.LASF348
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF349
	.byte	0x5
	.value	0x383
	.long	0x1ead
	.byte	0x80
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF351
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF356
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF357
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF358
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF359
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF360
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF361
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF362
	.byte	0x5
	.value	0x395
	.long	0x1eb3
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF363
	.byte	0x5
	.value	0x397
	.long	0x1ecf
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF364
	.byte	0x5
	.value	0x398
	.long	0x1eeb
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF365
	.byte	0x5
	.value	0x399
	.long	0x1f07
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1f29
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x1f3f
	.value	0x3338
	.uleb128 0xf
	.long	.LASF366
	.byte	0x5
	.value	0x39d
	.long	0x1f55
	.value	0x3738
	.uleb128 0xf
	.long	.LASF367
	.byte	0x5
	.value	0x39e
	.long	0x1ead
	.value	0x3740
	.uleb128 0xf
	.long	.LASF368
	.byte	0x5
	.value	0x3a0
	.long	0x1f5b
	.value	0x3748
	.uleb128 0xf
	.long	.LASF369
	.byte	0x5
	.value	0x3a1
	.long	0xbbf
	.value	0x3750
	.uleb128 0xf
	.long	.LASF370
	.byte	0x5
	.value	0x3a2
	.long	0x1f61
	.value	0x3758
	.uleb128 0xf
	.long	.LASF371
	.byte	0x5
	.value	0x3a3
	.long	0x1f67
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF372
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF373
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF374
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF375
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF376
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF377
	.byte	0x5
	.value	0x3ac
	.long	0x1f78
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF378
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF379
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF380
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF381
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF382
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF383
	.byte	0x5
	.value	0x3b4
	.long	0x8c4
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF384
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF385
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF386
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF387
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF388
	.byte	0x5
	.value	0x3ba
	.long	0x1f8e
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF389
	.byte	0x5
	.value	0x3bb
	.long	0x1f8e
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF390
	.byte	0x5
	.value	0x3bd
	.long	0x1f8e
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF391
	.byte	0x5
	.value	0x3be
	.long	0x1f8e
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x5
	.value	0x3bf
	.long	0x1fb2
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF125
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF218
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF392
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF393
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF394
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF395
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x5
	.value	0x3ce
	.long	0x1fc2
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF297
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x5
	.value	0x3e4
	.long	0x1fd8
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x5
	.value	0x409
	.long	0x1fe8
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF299
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x5
	.value	0x413
	.long	0x8c4
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x5
	.value	0x41b
	.long	0x1fee
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF295
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF200
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF320
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc3d
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
	.long	0xbcc
	.uleb128 0x6
	.byte	0x8
	.long	0x8cb
	.uleb128 0x4
	.long	0x5f6
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
	.long	0x520
	.uleb128 0x6
	.byte	0x8
	.long	0x8c4
	.uleb128 0x10
	.long	.LASF475
	.byte	0x5
	.value	0x449
	.long	0x14c8
	.uleb128 0x1d
	.long	.LASF476
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x2276
	.uleb128 0xb
	.long	.LASF331
	.byte	0x6
	.byte	0x17
	.long	0x109
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF477
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF478
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF479
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF480
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF481
	.byte	0x6
	.byte	0x1e
	.long	0x2276
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF482
	.byte	0x6
	.byte	0x1f
	.long	0x2276
	.value	0x648
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x6
	.byte	0x20
	.long	0x2276
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF484
	.byte	0x6
	.byte	0x21
	.long	0x2276
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF72
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF73
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF403
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x6
	.byte	0x31
	.long	0xc49
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x6
	.byte	0x32
	.long	0xc4f
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x6
	.byte	0x33
	.long	0xc4f
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x6
	.byte	0x34
	.long	0xc49
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x6
	.byte	0x35
	.long	0xc49
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x6
	.byte	0x36
	.long	0xc43
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x6
	.byte	0x38
	.long	0xdd
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x6
	.byte	0x3a
	.long	0x1fa0
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x6
	.byte	0x3c
	.long	0x228c
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x6
	.byte	0x3f
	.long	0x228c
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x1f9a
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x6
	.byte	0x44
	.long	0xc5b
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x6
	.byte	0x45
	.long	0xc5b
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF395
	.byte	0x6
	.byte	0x47
	.long	0x229e
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x6
	.byte	0x48
	.long	0x229e
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x6
	.byte	0x49
	.long	0x229e
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0xe3
	.long	0x228c
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2292
	.uleb128 0x6
	.byte	0x8
	.long	0x2298
	.uleb128 0x6
	.byte	0x8
	.long	0xe3
	.uleb128 0x6
	.byte	0x8
	.long	0x2000
	.uleb128 0x7
	.long	.LASF516
	.byte	0x6
	.byte	0x52
	.long	0x2000
	.uleb128 0x6
	.byte	0x8
	.long	0x22a4
	.uleb128 0x20
	.long	.LASF523
	.byte	0x1
	.byte	0x25
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2412
	.uleb128 0x21
	.long	.LASF517
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1236
	.uleb128 0x21
	.long	.LASF518
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x21
	.long	.LASF519
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1244
	.uleb128 0x21
	.long	.LASF97
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x21
	.long	.LASF520
	.byte	0x1
	.byte	0x25
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1252
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1228
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x23
	.long	.LASF353
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1172
	.uleb128 0x23
	.long	.LASF352
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x22
	.string	"bx"
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1220
	.uleb128 0x22
	.string	"by"
	.byte	0x1
	.byte	0x27
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x23
	.long	.LASF521
	.byte	0x1
	.byte	0x28
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1212
	.uleb128 0x22
	.string	"mv"
	.byte	0x1
	.byte	0x2a
	.long	0x2412
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x23
	.long	.LASF522
	.byte	0x1
	.byte	0x2b
	.long	0x1f3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x22
	.string	"i0"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x22
	.string	"i1"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1204
	.uleb128 0x22
	.string	"bx0"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x22
	.string	"bx1"
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1196
	.uleb128 0x22
	.string	"j0"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x22
	.string	"j1"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1188
	.uleb128 0x22
	.string	"by0"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x22
	.string	"by1"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1180
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x242e
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
	.uleb128 0x24
	.long	.LASF524
	.byte	0x1
	.byte	0x92
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2468
	.uleb128 0x21
	.long	.LASF517
	.byte	0x1
	.byte	0x92
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x21
	.long	.LASF525
	.byte	0x1
	.byte	0x92
	.long	0x1f61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x20
	.long	.LASF526
	.byte	0x1
	.byte	0xb3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x250d
	.uleb128 0x25
	.string	"imY"
	.byte	0x1
	.byte	0xb3
	.long	0xc49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF353
	.byte	0x1
	.byte	0xb4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF352
	.byte	0x1
	.byte	0xb5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x21
	.long	.LASF527
	.byte	0x1
	.byte	0xb6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF528
	.byte	0x1
	.byte	0xb7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.byte	0xb8
	.long	0xc49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0xba
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.byte	0xcf
	.long	0xa2
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x261a
	.uleb128 0x25
	.string	"imY"
	.byte	0x1
	.byte	0xcf
	.long	0xc49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x21
	.long	.LASF529
	.byte	0x1
	.byte	0xcf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x21
	.long	.LASF530
	.byte	0x1
	.byte	0xcf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x22
	.string	"dx"
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x22
	.string	"x"
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x22
	.string	"dy"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF531
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.long	.LASF532
	.byte	0x1
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x23
	.long	.LASF533
	.byte	0x1
	.byte	0xd6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF534
	.byte	0x1
	.byte	0xd6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF535
	.byte	0x1
	.byte	0xd6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF536
	.byte	0x1
	.byte	0xd7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF537
	.byte	0x1
	.byte	0xd8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF538
	.byte	0x1
	.byte	0xda
	.long	0x261a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF539
	.byte	0x1
	.byte	0xdc
	.long	0x262a
	.uleb128 0x9
	.byte	0x3
	.quad	COEF.4551
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x262a
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x27
	.long	0x261a
	.uleb128 0x28
	.long	.LASF568
	.byte	0x1
	.value	0x169
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x265b
	.uleb128 0x29
	.string	"k"
	.byte	0x1
	.value	0x16b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF540
	.byte	0x1
	.value	0x182
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b3
	.uleb128 0x2b
	.string	"dY"
	.byte	0x1
	.value	0x182
	.long	0xc49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF541
	.byte	0x1
	.value	0x182
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x184
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"ref"
	.byte	0x1
	.value	0x184
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF542
	.byte	0x1
	.value	0x190
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2742
	.uleb128 0x2c
	.long	.LASF519
	.byte	0x1
	.value	0x190
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x190
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x192
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x192
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"i0"
	.byte	0x1
	.value	0x193
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"i1"
	.byte	0x1
	.value	0x193
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"j0"
	.byte	0x1
	.value	0x194
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"j1"
	.byte	0x1
	.value	0x194
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF544
	.byte	0x1
	.value	0x1ae
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2770
	.uleb128 0x2c
	.long	.LASF543
	.byte	0x1
	.value	0x1ae
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF545
	.byte	0x1
	.value	0x1c1
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2800
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x1c1
	.long	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF547
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"mb"
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"jj"
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"ii"
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.long	.LASF548
	.byte	0x1
	.value	0x1c3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF549
	.byte	0x1
	.value	0x1f4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2888
	.uleb128 0x2b
	.string	"inY"
	.byte	0x1
	.value	0x1f4
	.long	0xc49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x1f4
	.long	0xc5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF550
	.byte	0x1
	.value	0x1f4
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF351
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF350
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2e
	.long	.LASF551
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF552
	.byte	0x1
	.value	0x1f6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x208
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b2
	.uleb128 0x2b
	.string	"inY"
	.byte	0x1
	.value	0x208
	.long	0xc49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x2c
	.long	.LASF351
	.byte	0x1
	.value	0x208
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1228
	.uleb128 0x2c
	.long	.LASF350
	.byte	0x1
	.value	0x208
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x2c
	.long	.LASF550
	.byte	0x1
	.value	0x208
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x208
	.long	0xc5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x20a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1212
	.uleb128 0x29
	.string	"j"
	.byte	0x1
	.value	0x20a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x2e
	.long	.LASF352
	.byte	0x1
	.value	0x20a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1204
	.uleb128 0x2e
	.long	.LASF353
	.byte	0x1
	.value	0x20a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x2e
	.long	.LASF521
	.byte	0x1
	.value	0x20b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1196
	.uleb128 0x2e
	.long	.LASF554
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x2e
	.long	.LASF555
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1188
	.uleb128 0x29
	.string	"mv"
	.byte	0x1
	.value	0x20d
	.long	0x2412
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x2e
	.long	.LASF176
	.byte	0x1
	.value	0x20e
	.long	0x1f3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x2e
	.long	.LASF556
	.byte	0x1
	.value	0x20f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x2e
	.long	.LASF557
	.byte	0x1
	.value	0x210
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1180
	.uleb128 0x2e
	.long	.LASF558
	.byte	0x1
	.value	0x211
	.long	0x1fa0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.byte	0
	.uleb128 0x2f
	.long	.LASF559
	.byte	0x5
	.value	0x280
	.long	0x29be
	.uleb128 0x6
	.byte	0x8
	.long	0xc61
	.uleb128 0x2f
	.long	.LASF560
	.byte	0x5
	.value	0x4b7
	.long	0x29d0
	.uleb128 0x6
	.byte	0x8
	.long	0x14bc
	.uleb128 0x30
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x29e2
	.uleb128 0x6
	.byte	0x8
	.long	0x1ff4
	.uleb128 0x2f
	.long	.LASF561
	.byte	0x5
	.value	0x5a4
	.long	0x34
	.uleb128 0x31
	.long	.LASF562
	.byte	0x7
	.byte	0x13
	.long	0x22af
	.uleb128 0x31
	.long	.LASF563
	.byte	0x7
	.byte	0x14
	.long	0x22af
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
	.uleb128 0x25
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
.LASF461:
	.string	"bitdepth_luma_qp_scale"
.LASF308:
	.string	"channel_type"
.LASF327:
	.string	"nb_references"
.LASF516:
	.string	"StorablePicture"
.LASF462:
	.string	"bitdepth_chroma_qp_scale"
.LASF309:
	.string	"ScalingMatrixPresentFlag"
.LASF427:
	.string	"no_output_of_prior_pics_flag"
.LASF393:
	.string	"num_ref_idx_l1_active"
.LASF409:
	.string	"pic_order_cnt_lsb"
.LASF520:
	.string	"b8ref"
.LASF451:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF454:
	.string	"DeblockCall"
.LASF500:
	.string	"imgY_ups_w"
.LASF553:
	.string	"Conceal_Error"
.LASF335:
	.string	"width_cr"
.LASF422:
	.string	"PicSizeInMbs"
.LASF22:
	.string	"B_SLICE"
.LASF371:
	.string	"MB_SyntaxElements"
.LASF498:
	.string	"imgY_11_w"
.LASF366:
	.string	"cofAC"
.LASF522:
	.string	"resY_tmp"
.LASF492:
	.string	"size_x_cr"
.LASF469:
	.string	"lossless_qpprime_flag"
.LASF238:
	.string	"PocMemoryManagement"
.LASF381:
	.string	"imgtr_next_P_fld"
.LASF190:
	.string	"search_range"
.LASF396:
	.string	"mvscale"
.LASF16:
	.string	"int64"
.LASF517:
	.string	"decoder"
.LASF169:
	.string	"slices"
.LASF72:
	.string	"long_term_pic_num"
.LASF21:
	.string	"P_SLICE"
.LASF552:
	.string	"mb_w"
.LASF347:
	.string	"ipredmode8x8"
.LASF351:
	.string	"mb_y"
.LASF429:
	.string	"dec_ref_pic_marking_buffer"
.LASF207:
	.string	"infile_header"
.LASF258:
	.string	"full_search"
.LASF74:
	.string	"max_long_term_frame_idx_plus1"
.LASF470:
	.string	"mb_cr_size_x"
.LASF303:
	.string	"DisplayEncParams"
.LASF395:
	.string	"top_field"
.LASF42:
	.string	"state"
.LASF253:
	.string	"Intra16x16ParDisable"
.LASF56:
	.string	"bcbp_contexts"
.LASF76:
	.string	"syntaxelement"
.LASF216:
	.string	"successive_Bframe"
.LASF547:
	.string	"slice"
.LASF226:
	.string	"WeightedPrediction"
.LASF77:
	.string	"type"
.LASF386:
	.string	"fw_mb_mode"
.LASF423:
	.string	"FrameSizeInMbs"
.LASF189:
	.string	"hadamardqpel"
.LASF541:
	.string	"dref"
.LASF504:
	.string	"ref_id"
.LASF124:
	.string	"LFDisableIdc"
.LASF494:
	.string	"chroma_vector_adjustment"
.LASF219:
	.string	"directInferenceFlag"
.LASF138:
	.string	"bits_to_go_skip"
.LASF388:
	.string	"pred_mv"
.LASF298:
	.string	"context_init_method"
.LASF300:
	.string	"AllowTransform8x8"
.LASF467:
	.string	"num_blk8x8_uv"
.LASF205:
	.string	"slice_argument"
.LASF155:
	.string	"rmpni_buffer"
.LASF246:
	.string	"InterSearch8x4"
.LASF105:
	.string	"mb_field"
.LASF245:
	.string	"InterSearch8x8"
.LASF279:
	.string	"NumFramesInELSubSeq"
.LASF73:
	.string	"long_term_frame_idx"
.LASF484:
	.string	"bottom_ref_pic_num"
.LASF346:
	.string	"ipredmode"
.LASF232:
	.string	"RDBSliceWeightOnly"
.LASF539:
	.string	"COEF"
.LASF197:
	.string	"GenerateMultiplePPS"
.LASF97:
	.string	"b8mode"
.LASF318:
	.string	"cr_qp_index_offset"
.LASF164:
	.string	"slice_too_big"
.LASF363:
	.string	"mprr_2"
.LASF364:
	.string	"mprr_3"
.LASF131:
	.string	"bits_to_go"
.LASF69:
	.string	"DecRefPicMarking_s"
.LASF75:
	.string	"DecRefPicMarking_t"
.LASF534:
	.string	"result1"
.LASF452:
	.string	"bot_MB"
.LASF176:
	.string	"resY"
.LASF191:
	.string	"num_ref_frames"
.LASF38:
	.string	"EcodestrmS"
.LASF373:
	.string	"intra_block"
.LASF6:
	.string	"long int"
.LASF473:
	.string	"auto_crop_right"
.LASF485:
	.string	"pic_num"
.LASF365:
	.string	"mprr_c"
.LASF114:
	.string	"all_blk_8x8"
.LASF267:
	.string	"nobskip"
.LASF425:
	.string	"nal_reference_idc"
.LASF415:
	.string	"framepoc"
.LASF431:
	.string	"NumberofTextureBits"
.LASF361:
	.string	"opix_c_y"
.LASF548:
	.string	"packet_lost"
.LASF228:
	.string	"UseWeightedReferenceME"
.LASF487:
	.string	"used_for_reference"
.LASF281:
	.string	"RandomIntraMBRefresh"
.LASF453:
	.string	"write_macroblock_frame"
.LASF135:
	.string	"stored_byte_buf"
.LASF450:
	.string	"BasicUnit"
.LASF325:
	.string	"InputParameters"
.LASF282:
	.string	"LFSendParameters"
.LASF419:
	.string	"PicHeightInMapUnits"
.LASF482:
	.string	"frm_ref_pic_num"
.LASF439:
	.string	"NumberofGOP"
.LASF459:
	.string	"bitdepth_luma"
.LASF360:
	.string	"opix_c_x"
.LASF28:
	.string	"Ebuffer"
.LASF208:
	.string	"infile"
.LASF27:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF333:
	.string	"framerate"
.LASF150:
	.string	"max_part_nr"
.LASF41:
	.string	"EncodingEnvironmentPtr"
.LASF404:
	.string	"delta_pic_order_always_zero_flag"
.LASF350:
	.string	"mb_x"
.LASF568:
	.string	"UpdateDecoders"
.LASF104:
	.string	"IntraChromaPredModeFlag"
.LASF81:
	.string	"context"
.LASF159:
	.string	"long_term_pic_idx_l0"
.LASF163:
	.string	"long_term_pic_idx_l1"
.LASF156:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF160:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF441:
	.string	"NumberofPPicture"
.LASF436:
	.string	"NumberofMBHeaderBits"
.LASF367:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF95:
	.string	"intra_pred_modes8x8"
.LASF559:
	.string	"decs"
.LASF455:
	.string	"last_pic_bottom_field"
.LASF220:
	.string	"BiPredMotionEstimation"
.LASF390:
	.string	"bipred_mv1"
.LASF391:
	.string	"bipred_mv2"
.LASF58:
	.string	"last_contexts"
.LASF103:
	.string	"c_ipred_mode"
.LASF292:
	.string	"run_length_minus1"
.LASF466:
	.string	"max_imgpel_value_uv"
.LASF201:
	.string	"intra_upd"
.LASF533:
	.string	"result"
.LASF157:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF161:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF158:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF162:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF285:
	.string	"SPPercentageThreshold"
.LASF132:
	.string	"byte_buf"
.LASF184:
	.string	"ProfileIDC"
.LASF117:
	.string	"bi_pred_me"
.LASF561:
	.string	"start_frame_no_in_this_IGOP"
.LASF88:
	.string	"delta_qp"
.LASF525:
	.string	"currMB"
.LASF257:
	.string	"chroma_qp_index_offset"
.LASF546:
	.string	"s_map"
.LASF332:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF345:
	.string	"block_c_x"
.LASF521:
	.string	"ref_inx"
.LASF51:
	.string	"transform_size_contexts"
.LASF428:
	.string	"long_term_reference_flag"
.LASF195:
	.string	"Log2MaxFrameNum"
.LASF341:
	.string	"is_intra_block"
.LASF149:
	.string	"start_mb_nr"
.LASF304:
	.string	"RCEnable"
.LASF230:
	.string	"RDPictureIntra"
.LASF194:
	.string	"B_List1_refs"
.LASF217:
	.string	"qpBRSOffset"
.LASF489:
	.string	"non_existing"
.LASF283:
	.string	"SparePictureOption"
.LASF524:
	.string	"decode_one_mb"
.LASF260:
	.string	"qpN2"
.LASF213:
	.string	"intra_period"
.LASF91:
	.string	"mb_available_up"
.LASF411:
	.string	"delta_pic_order_cnt"
.LASF248:
	.string	"InterSearch4x4"
.LASF247:
	.string	"InterSearch4x8"
.LASF566:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF497:
	.string	"imgY_11"
.LASF430:
	.string	"NumberofHeaderBits"
.LASF263:
	.string	"qp02"
.LASF80:
	.string	"bitpattern"
.LASF25:
	.string	"SI_SLICE"
.LASF536:
	.string	"pres_x"
.LASF50:
	.string	"mb_aff_contexts"
.LASF115:
	.string	"luma_transform_size_8x8_flag"
.LASF310:
	.string	"ScalingListPresentFlag"
.LASF353:
	.string	"block_y"
.LASF233:
	.string	"SkipIntraInInterSlices"
.LASF557:
	.string	"inter"
.LASF368:
	.string	"currentPicture"
.LASF46:
	.string	"b8_type_contexts"
.LASF290:
	.string	"bottom_right"
.LASF227:
	.string	"WeightedBiprediction"
.LASF384:
	.string	"p_interval"
.LASF175:
	.string	"Picture"
.LASF478:
	.string	"bottom_poc"
.LASF382:
	.string	"imgtr_last_P_fld"
.LASF560:
	.string	"input"
.LASF270:
	.string	"LeakyBucketParamFile"
.LASF499:
	.string	"imgY_ups"
.LASF186:
	.string	"no_frames"
.LASF120:
	.string	"prev_delta_qp"
.LASF198:
	.string	"img_width"
.LASF237:
	.string	"PyramidRefReorder"
.LASF526:
	.string	"Get_Reference_Block"
.LASF342:
	.string	"is_v_block"
.LASF204:
	.string	"slice_mode"
.LASF242:
	.string	"InterSearch16x16"
.LASF344:
	.string	"mb_y_intra"
.LASF45:
	.string	"mb_type_contexts"
.LASF289:
	.string	"top_left"
.LASF518:
	.string	"mbmode"
.LASF139:
	.string	"streamBuffer"
.LASF36:
	.string	"Ebits_to_goS"
.LASF243:
	.string	"InterSearch16x8"
.LASF442:
	.string	"MADofMB"
.LASF392:
	.string	"num_ref_idx_l0_active"
.LASF299:
	.string	"model_number"
.LASF23:
	.string	"I_SLICE"
.LASF222:
	.string	"BiPredMESearchRange"
.LASF85:
	.string	"macroblock"
.LASF413:
	.string	"toppoc"
.LASF403:
	.string	"MbaffFrameFlag"
.LASF26:
	.string	"Elow"
.LASF358:
	.string	"opix_x"
.LASF307:
	.string	"basicunit"
.LASF477:
	.string	"top_poc"
.LASF271:
	.string	"PicInterlace"
.LASF148:
	.string	"picture_type"
.LASF472:
	.string	"chroma_qp_offset"
.LASF236:
	.string	"ExplicitPyramidFormat"
.LASF421:
	.string	"PicHeightInMbs"
.LASF319:
	.string	"lossless_qpprime_y_zero_flag"
.LASF476:
	.string	"storable_picture"
.LASF212:
	.string	"QmatrixFile"
.LASF229:
	.string	"RDPictureDecision"
.LASF529:
	.string	"y_pos"
.LASF40:
	.string	"EncodingEnvironment"
.LASF145:
	.string	"writeSyntaxElement"
.LASF185:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF54:
	.string	"cipr_contexts"
.LASF39:
	.string	"Ecodestrm_lenS"
.LASF305:
	.string	"bit_rate"
.LASF540:
	.string	"DecOneForthPix"
.LASF151:
	.string	"num_mb"
.LASF414:
	.string	"bottompoc"
.LASF196:
	.string	"ResendPPS"
.LASF251:
	.string	"Intra4x4DiagDisable"
.LASF378:
	.string	"pstruct_next_P"
.LASF554:
	.string	"pos_y"
.LASF101:
	.string	"lf_alpha_c0_offset"
.LASF474:
	.string	"auto_crop_bottom"
.LASF528:
	.string	"mvver"
.LASF211:
	.string	"TraceFile"
.LASF542:
	.string	"compute_residue_b8block"
.LASF206:
	.string	"UseConstrainedIntraPred"
.LASF443:
	.string	"BasicUnitQP"
.LASF435:
	.string	"NumberofMBTextureBits"
.LASF99:
	.string	"cbp_bits"
.LASF556:
	.string	"copy"
.LASF495:
	.string	"coded_frame"
.LASF479:
	.string	"frame_poc"
.LASF356:
	.string	"pix_c_x"
.LASF357:
	.string	"pix_c_y"
.LASF188:
	.string	"hadamard"
.LASF385:
	.string	"b_frame_to_code"
.LASF170:
	.string	"bits_per_picture"
.LASF343:
	.string	"mb_y_upd"
.LASF324:
	.string	"OffsetMatrixPresentFlag"
.LASF277:
	.string	"NoOfDecoders"
.LASF64:
	.string	"RMPNI"
.LASF19:
	.string	"BOTTOM_FIELD"
.LASF125:
	.string	"LFAlphaC0Offset"
.LASF102:
	.string	"lf_beta_offset"
.LASF71:
	.string	"difference_of_pic_nums_minus1"
.LASF280:
	.string	"NumFrameIn2ndIGOP"
.LASF412:
	.string	"field_picture"
.LASF214:
	.string	"idr_enable"
.LASF362:
	.string	"mprr"
.LASF215:
	.string	"start_frame"
.LASF496:
	.string	"imgY"
.LASF52:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF383:
	.string	"b_interval"
.LASF29:
	.string	"Ebits_to_go"
.LASF375:
	.string	"fld_flag"
.LASF377:
	.string	"direct_intraP_ref"
.LASF334:
	.string	"width"
.LASF93:
	.string	"mb_type"
.LASF134:
	.string	"stored_bits_to_go"
.LASF471:
	.string	"mb_cr_size_y"
.LASF408:
	.string	"offset_for_ref_frame"
.LASF87:
	.string	"slice_nr"
.LASF172:
	.string	"distortion_u"
.LASF173:
	.string	"distortion_v"
.LASF171:
	.string	"distortion_y"
.LASF137:
	.string	"byte_pos_skip"
.LASF126:
	.string	"LFBetaOffset"
.LASF128:
	.string	"double"
.LASF535:
	.string	"result2"
.LASF284:
	.string	"SPDetectionThreshold"
.LASF508:
	.string	"frame"
.LASF320:
	.string	"residue_transform_flag"
.LASF380:
	.string	"imgtr_last_P_frm"
.LASF565:
	.string	"decoder.c"
.LASF59:
	.string	"one_contexts"
.LASF493:
	.string	"size_y_cr"
.LASF272:
	.string	"MbInterlace"
.LASF567:
	.string	"Get_Reference_Pixel"
.LASF89:
	.string	"qpsp"
.LASF174:
	.string	"float"
.LASF531:
	.string	"maxold_x"
.LASF532:
	.string	"maxold_y"
.LASF302:
	.string	"ReportFrameStats"
.LASF235:
	.string	"PyramidCoding"
.LASF43:
	.string	"count"
.LASF121:
	.string	"prev_cbp"
.LASF239:
	.string	"symbol_mode"
.LASF44:
	.string	"BiContextType"
.LASF488:
	.string	"is_output"
.LASF376:
	.string	"rd_pass"
.LASF530:
	.string	"x_pos"
.LASF372:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF60:
	.string	"abs_contexts"
.LASF30:
	.string	"Ebits_to_follow"
.LASF140:
	.string	"write_flag"
.LASF329:
	.string	"total_number_mb"
.LASF210:
	.string	"ReconFile"
.LASF32:
	.string	"Ecodestrm_len"
.LASF154:
	.string	"tex_ctx"
.LASF224:
	.string	"sp_periodicity"
.LASF440:
	.string	"TotalQpforPPicture"
.LASF92:
	.string	"mb_available_left"
.LASF68:
	.string	"RMPNIbuffer_s"
.LASF67:
	.string	"RMPNIbuffer_t"
.LASF295:
	.string	"slice_group_change_cycle"
.LASF322:
	.string	"LambdaWeight"
.LASF63:
	.string	"TextureInfoContexts"
.LASF507:
	.string	"bottom_field"
.LASF328:
	.string	"current_mb_nr"
.LASF268:
	.string	"NumberLeakyBuckets"
.LASF481:
	.string	"ref_pic_num"
.LASF399:
	.string	"layer"
.LASF98:
	.string	"b8pdir"
.LASF167:
	.string	"no_slices"
.LASF406:
	.string	"offset_for_top_to_bottom_field"
.LASF255:
	.string	"ChromaIntraDisable"
.LASF379:
	.string	"imgtr_next_P_frm"
.LASF445:
	.string	"FieldControl"
.LASF437:
	.string	"NumberofCodedBFrame"
.LASF398:
	.string	"i16offset"
.LASF178:
	.string	"decref"
.LASF254:
	.string	"Intra16x16PlaneDisable"
.LASF225:
	.string	"qpsp_pred"
.LASF551:
	.string	"mb_h"
.LASF297:
	.string	"pic_order_cnt_type"
.LASF354:
	.string	"pix_x"
.LASF355:
	.string	"pix_y"
.LASF564:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF475:
	.string	"ImageParameters"
.LASF144:
	.string	"ee_cabac"
.LASF13:
	.string	"FALSE"
.LASF122:
	.string	"predict_qp"
.LASF179:
	.string	"decY_best"
.LASF555:
	.string	"pos_x"
.LASF394:
	.string	"field_mode"
.LASF250:
	.string	"Intra4x4ParDisable"
.LASF352:
	.string	"block_x"
.LASF269:
	.string	"LeakyBucketRateFile"
.LASF199:
	.string	"img_height"
.LASF203:
	.string	"part_size"
.LASF241:
	.string	"partition_mode"
.LASF456:
	.string	"last_has_mmco_5"
.LASF515:
	.string	"frame_cropping_rect_bottom_offset"
.LASF62:
	.string	"fld_last_contexts"
.LASF405:
	.string	"offset_for_non_ref_pic"
.LASF127:
	.string	"skip_flag"
.LASF417:
	.string	"frame_num"
.LASF57:
	.string	"map_contexts"
.LASF286:
	.string	"SliceGroupConfigFileName"
.LASF537:
	.string	"pres_y"
.LASF24:
	.string	"SP_SLICE"
.LASF70:
	.string	"memory_management_control_operation"
.LASF273:
	.string	"IntraBottom"
.LASF141:
	.string	"Bitstream"
.LASF323:
	.string	"QOffsetMatrixFile"
.LASF193:
	.string	"B_List0_refs"
.LASF401:
	.string	"NoResidueDirect"
.LASF449:
	.string	"NumberofCodedMacroBlocks"
.LASF544:
	.string	"compute_residue_mb"
.LASF181:
	.string	"status_map"
.LASF147:
	.string	"picture_id"
.LASF510:
	.string	"frame_mbs_only_flag"
.LASF177:
	.string	"decY"
.LASF374:
	.string	"fld_type"
.LASF543:
	.string	"i16mode"
.LASF438:
	.string	"NumberofCodedPFrame"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"TOP_FIELD"
.LASF221:
	.string	"BiPredMERefinements"
.LASF94:
	.string	"intra_pred_modes"
.LASF337:
	.string	"height_cr"
.LASF389:
	.string	"all_mv"
.LASF262:
	.string	"qp2start"
.LASF336:
	.string	"height"
.LASF331:
	.string	"structure"
.LASF165:
	.string	"field_ctx"
.LASF506:
	.string	"field_frame"
.LASF146:
	.string	"DataPartition"
.LASF550:
	.string	"refY"
.LASF370:
	.string	"mb_data"
.LASF514:
	.string	"frame_cropping_rect_top_offset"
.LASF306:
	.string	"SeinitialQP"
.LASF433:
	.string	"NumberofBasicUnitTextureBits"
.LASF407:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF166:
	.string	"Slice"
.LASF142:
	.string	"datapartition"
.LASF37:
	.string	"Ebits_to_followS"
.LASF338:
	.string	"height_cr_frame"
.LASF549:
	.string	"Error_Concealment"
.LASF447:
	.string	"Frame_Total_Number_MB"
.LASF78:
	.string	"value1"
.LASF79:
	.string	"value2"
.LASF512:
	.string	"frame_cropping_rect_left_offset"
.LASF316:
	.string	"rgb_input_flag"
.LASF143:
	.string	"bitstream"
.LASF192:
	.string	"P_List0_refs"
.LASF278:
	.string	"RestrictRef"
.LASF483:
	.string	"top_ref_pic_num"
.LASF33:
	.string	"ElowS"
.LASF288:
	.string	"slice_group_map_type"
.LASF15:
	.string	"Boolean"
.LASF240:
	.string	"of_mode"
.LASF463:
	.string	"bitdepth_lambda_scale"
.LASF266:
	.string	"disthres"
.LASF400:
	.string	"old_layer"
.LASF326:
	.string	"number"
.LASF509:
	.string	"chroma_format_idc"
.LASF264:
	.string	"qpBRS2Offset"
.LASF523:
	.string	"decode_one_b8block"
.LASF465:
	.string	"max_imgpel_value"
.LASF418:
	.string	"PicWidthInMbs"
.LASF274:
	.string	"LossRateA"
.LASF275:
	.string	"LossRateB"
.LASF276:
	.string	"LossRateC"
.LASF558:
	.string	"tmp_mv"
.LASF458:
	.string	"pic_unit_size_on_disk"
.LASF464:
	.string	"dc_pred_value"
.LASF468:
	.string	"num_cdc_coeff"
.LASF315:
	.string	"img_width_cr"
.LASF129:
	.string	"Macroblock"
.LASF48:
	.string	"ref_no_contexts"
.LASF202:
	.string	"blc_size"
.LASF17:
	.string	"FRAME"
.LASF426:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF133:
	.string	"stored_byte_pos"
.LASF12:
	.string	"byte"
.LASF66:
	.string	"Next"
.LASF234:
	.string	"BRefPictures"
.LASF65:
	.string	"Data"
.LASF444:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF480:
	.string	"order_num"
.LASF182:
	.string	"dec_mb_mode"
.LASF505:
	.string	"moving_block"
.LASF31:
	.string	"Ecodestrm"
.LASF359:
	.string	"opix_y"
.LASF200:
	.string	"yuv_format"
.LASF311:
	.string	"FMEnable"
.LASF402:
	.string	"redundant_pic_cnt"
.LASF387:
	.string	"bw_mb_mode"
.LASF296:
	.string	"redundant_slice_flag"
.LASF312:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF265:
	.string	"rdopt"
.LASF35:
	.string	"EbufferS"
.LASF416:
	.string	"ThisPOC"
.LASF434:
	.string	"TotalMADBasicUnit"
.LASF119:
	.string	"prev_qp"
.LASF249:
	.string	"IntraDisableInterOnly"
.LASF47:
	.string	"mv_res_contexts"
.LASF244:
	.string	"InterSearch8x16"
.LASF562:
	.string	"enc_picture"
.LASF118:
	.string	"actj"
.LASF287:
	.string	"num_slice_groups_minus1"
.LASF410:
	.string	"delta_pic_order_cnt_bottom"
.LASF397:
	.string	"buf_cycle"
.LASF348:
	.string	"cod_counter"
.LASF152:
	.string	"partArr"
.LASF130:
	.string	"byte_pos"
.LASF209:
	.string	"outfile"
.LASF53:
	.string	"ipr_contexts"
.LASF180:
	.string	"RefBlock"
.LASF106:
	.string	"mbAddrA"
.LASF107:
	.string	"mbAddrB"
.LASF108:
	.string	"mbAddrC"
.LASF109:
	.string	"mbAddrD"
.LASF301:
	.string	"LowPassForIntra8x8"
.LASF349:
	.string	"nz_coeff"
.LASF49:
	.string	"delta_qp_contexts"
.LASF563:
	.string	"enc_frame_picture"
.LASF252:
	.string	"Intra4x4DirDisable"
.LASF432:
	.string	"NumberofBasicUnitHeaderBits"
.LASF84:
	.string	"SyntaxElement"
.LASF261:
	.string	"qpB2"
.LASF313:
	.string	"BitDepthChroma"
.LASF448:
	.string	"IFLAG"
.LASF457:
	.string	"pre_frame_num"
.LASF538:
	.string	"tmp_res"
.LASF424:
	.string	"pic_order_present_flag"
.LASF100:
	.string	"lf_disable"
.LASF223:
	.string	"BiPredMESubPel"
.LASF490:
	.string	"size_x"
.LASF491:
	.string	"size_y"
.LASF168:
	.string	"idr_flag"
.LASF527:
	.string	"mvhor"
.LASF2:
	.string	"short unsigned int"
.LASF446:
	.string	"FieldFrame"
.LASF259:
	.string	"last_frame"
.LASF513:
	.string	"frame_cropping_rect_right_offset"
.LASF123:
	.string	"predict_error"
.LASF330:
	.string	"current_slice_nr"
.LASF218:
	.string	"direct_spatial_mv_pred_flag"
.LASF187:
	.string	"jumpd"
.LASF519:
	.string	"b8block"
.LASF460:
	.string	"bitdepth_chroma"
.LASF82:
	.string	"mapping"
.LASF502:
	.string	"ref_idx"
.LASF314:
	.string	"img_height_cr"
.LASF545:
	.string	"Build_Status_Map"
.LASF183:
	.string	"Decoders"
.LASF511:
	.string	"frame_cropping_flag"
.LASF501:
	.string	"imgUV"
.LASF294:
	.string	"slice_group_change_rate_minus1"
.LASF503:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF83:
	.string	"writing"
.LASF291:
	.string	"slice_group_id"
.LASF61:
	.string	"fld_map_contexts"
.LASF136:
	.string	"byte_buf_skip"
.LASF293:
	.string	"slice_group_change_direction_flag"
.LASF256:
	.string	"FrameRate"
.LASF231:
	.string	"RDPSliceWeightOnly"
.LASF55:
	.string	"cbp_contexts"
.LASF317:
	.string	"cb_qp_index_offset"
.LASF153:
	.string	"mot_ctx"
.LASF116:
	.string	"NoMbPartLessThan8x8Flag"
.LASF339:
	.string	"subblock_x"
.LASF340:
	.string	"subblock_y"
.LASF486:
	.string	"is_long_term"
.LASF321:
	.string	"UseExplicitLambdaParams"
.LASF86:
	.string	"currSEnr"
.LASF20:
	.string	"PictureStructure"
.LASF420:
	.string	"FrameHeightInMbs"
.LASF369:
	.string	"currentSlice"
.LASF90:
	.string	"bitcounter"
.LASF34:
	.string	"ErangeS"
.LASF110:
	.string	"mbAvailA"
.LASF111:
	.string	"mbAvailB"
.LASF112:
	.string	"mbAvailC"
.LASF113:
	.string	"mbAvailD"
.LASF96:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
