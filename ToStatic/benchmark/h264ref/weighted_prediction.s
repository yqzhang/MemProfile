	.file	"weighted_prediction.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 weighted_prediction.c -mtune=generic -march=x86-64 -g
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
	.globl	estimate_weighting_factor_P_slice
	.type	estimate_weighting_factor_P_slice, @function
estimate_weighting_factor_P_slice:
.LFB2:
	.file 1 "weighted_prediction.c"
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$828, %rsp	#,
	movl	%edi, -948(%rbp)	# select_offset, select_offset
	.loc 1 32 0
	movl	$0, %eax	#, tmp319
	movq	%rax, -904(%rbp)	# tmp319, dc_org
	.loc 1 41 0
	movq	img(%rip), %rax	# img, img.1
	movl	72400(%rax), %eax	# img.1_23->MbaffFrameFlag, D.6160
	testl	%eax, %eax	# D.6160
	je	.L2	#,
	.loc 1 41 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.2
	movq	14168(%rax), %rdx	# img.2_25->mb_data, D.6161
	movq	img(%rip), %rax	# img, img.3
	movl	12(%rax), %eax	# img.3_27->current_mb_nr, D.6160
	cltq
	imulq	$632, %rax, %rax	#, D.6162, D.6162
	addq	%rdx, %rax	# D.6161, D.6161
	movl	532(%rax), %eax	# _31->mb_field, D.6160
	testl	%eax, %eax	# D.6160
	je	.L2	#,
	movq	img(%rip), %rax	# img, img.5
	movl	12(%rax), %eax	# img.5_33->current_mb_nr, D.6160
	andl	$1, %eax	#, D.6163
	testl	%eax, %eax	# D.6163
	je	.L3	#,
	movl	$4, %eax	#, iftmp.4
	jmp	.L4	#
.L3:
	.loc 1 41 0 discriminator 2
	movl	$2, %eax	#, iftmp.4
.L4:
	.loc 1 41 0 discriminator 3
	jmp	.L5	#
.L2:
	.loc 1 41 0 discriminator 2
	movl	$0, %eax	#, iftmp.0
.L5:
	.loc 1 41 0 discriminator 3
	movl	%eax, -908(%rbp)	# iftmp.0, list_offset
	.loc 1 48 0 is_stmt 1 discriminator 3
	movl	$5, luma_log_weight_denom(%rip)	#, luma_log_weight_denom
	.loc 1 49 0 discriminator 3
	movl	$5, chroma_log_weight_denom(%rip)	#, chroma_log_weight_denom
	.loc 1 50 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.6
	subl	$1, %eax	#, D.6160
	movl	$1, %edx	#, tmp320
	movl	%eax, %ecx	# D.6160, tmp646
	sall	%cl, %edx	# tmp646, wp_luma_round.7
	movl	%edx, %eax	# wp_luma_round.7, wp_luma_round.7
	movl	%eax, wp_luma_round(%rip)	# wp_luma_round.7, wp_luma_round
	.loc 1 51 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.8
	subl	$1, %eax	#, D.6160
	movl	$1, %edx	#, tmp321
	movl	%eax, %ecx	# D.6160, tmp648
	sall	%cl, %edx	# tmp648, wp_chroma_round.9
	movl	%edx, %eax	# wp_chroma_round.9, wp_chroma_round.9
	movl	%eax, wp_chroma_round(%rip)	# wp_chroma_round.9, wp_chroma_round
	.loc 1 52 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.10
	movl	$1, %edx	#, tmp322
	movl	%eax, %ecx	# luma_log_weight_denom.10, tmp650
	sall	%cl, %edx	# tmp650, D.6160
	movl	%edx, %eax	# D.6160, D.6160
	movl	%eax, -880(%rbp)	# D.6160, default_weight
	.loc 1 53 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.11
	movl	$1, %edx	#, tmp323
	movl	%eax, %ecx	# chroma_log_weight_denom.11, tmp652
	sall	%cl, %edx	# tmp652, D.6160
	movl	%edx, %eax	# D.6160, D.6160
	movl	%eax, -872(%rbp)	# D.6160, default_weight
	movl	-872(%rbp), %eax	# default_weight, D.6160
	movl	%eax, -876(%rbp)	# D.6160, default_weight
	.loc 1 56 0 discriminator 3
	movl	$0, -932(%rbp)	#, i
	jmp	.L6	#
.L11:
	.loc 1 58 0
	movl	$0, -928(%rbp)	#, j
	jmp	.L7	#
.L10:
	.loc 1 60 0
	movl	$0, -924(%rbp)	#, n
	jmp	.L8	#
.L9:
	.loc 1 62 0 discriminator 2
	movl	-924(%rbp), %eax	# n, tmp325
	cltq
	movl	-880(%rbp,%rax,4), %esi	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp327
	movslq	%eax, %rdi	# tmp327, tmp326
	movl	-932(%rbp), %eax	# i, tmp329
	movslq	%eax, %rdx	# tmp329, tmp328
	movl	-928(%rbp), %eax	# j, tmp331
	movslq	%eax, %rcx	# tmp331, tmp330
	movq	%rdx, %rax	# tmp328, tmp332
	addq	%rax, %rax	# tmp332
	addq	%rdx, %rax	# tmp328, tmp332
	movq	%rax, %rdx	# tmp332, tmp333
	salq	$4, %rdx	#, tmp333
	subq	%rax, %rdx	# tmp332, tmp333
	movq	%rcx, %rax	# tmp330, tmp334
	addq	%rax, %rax	# tmp334
	addq	%rcx, %rax	# tmp330, tmp334
	addq	%rdx, %rax	# tmp333, tmp335
	addq	%rdi, %rax	# tmp326, tmp336
	movl	%esi, -736(%rbp,%rax,4)	# D.6160, weight
	.loc 1 63 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.12
	movl	-932(%rbp), %edx	# i, tmp337
	movslq	%edx, %rdx	# tmp337, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6164
	movq	(%rax), %rax	# *_62, D.6165
	movl	-928(%rbp), %edx	# j, tmp338
	movslq	%edx, %rdx	# tmp338, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6165
	movq	(%rax), %rax	# *_66, D.6166
	movl	-924(%rbp), %edx	# n, tmp339
	movslq	%edx, %rdx	# tmp339, D.6162
	salq	$2, %rdx	#, D.6162
	addq	%rax, %rdx	# D.6166, D.6166
	movl	-924(%rbp), %eax	# n, tmp341
	cltq
	movl	-880(%rbp,%rax,4), %eax	# default_weight, D.6160
	movl	%eax, (%rdx)	# D.6160, *_70
	.loc 1 64 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.13
	movl	-932(%rbp), %edx	# i, tmp342
	movslq	%edx, %rdx	# tmp342, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6164
	movq	(%rax), %rax	# *_75, D.6165
	movl	-928(%rbp), %edx	# j, tmp343
	movslq	%edx, %rdx	# tmp343, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6165
	movq	(%rax), %rax	# *_79, D.6166
	movl	-924(%rbp), %edx	# n, tmp344
	movslq	%edx, %rdx	# tmp344, D.6162
	salq	$2, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6166
	movl	$0, (%rax)	#, *_83
	.loc 1 65 0 discriminator 2
	movl	-924(%rbp), %eax	# n, tmp346
	movslq	%eax, %rsi	# tmp346, tmp345
	movl	-932(%rbp), %eax	# i, tmp348
	movslq	%eax, %rdx	# tmp348, tmp347
	movl	-928(%rbp), %eax	# j, tmp350
	movslq	%eax, %rcx	# tmp350, tmp349
	movq	%rdx, %rax	# tmp347, tmp351
	addq	%rax, %rax	# tmp351
	addq	%rdx, %rax	# tmp347, tmp351
	movq	%rax, %rdx	# tmp351, tmp352
	salq	$4, %rdx	#, tmp352
	subq	%rax, %rdx	# tmp351, tmp352
	movq	%rcx, %rax	# tmp349, tmp353
	addq	%rax, %rax	# tmp353
	addq	%rcx, %rax	# tmp349, tmp353
	addq	%rdx, %rax	# tmp352, tmp354
	addq	%rsi, %rax	# tmp345, tmp355
	movl	$0, -368(%rbp,%rax,4)	#, offset
	.loc 1 60 0 discriminator 2
	addl	$1, -924(%rbp)	#, n
.L8:
	.loc 1 60 0 is_stmt 0 discriminator 1
	cmpl	$2, -924(%rbp)	#, n
	jle	.L9	#,
	.loc 1 58 0 is_stmt 1
	addl	$1, -928(%rbp)	#, j
.L7:
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	-932(%rbp), %eax	# i, tmp357
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6160
	cmpl	-928(%rbp), %eax	# j, D.6160
	jg	.L10	#,
	.loc 1 56 0 is_stmt 1
	addl	$1, -932(%rbp)	#, i
.L6:
	.loc 1 56 0 is_stmt 0 discriminator 1
	movl	-908(%rbp), %eax	# list_offset, tmp358
	addl	$2, %eax	#, D.6160
	cmpl	-932(%rbp), %eax	# i, D.6160
	jg	.L11	#,
	.loc 1 70 0 is_stmt 1
	movl	$0, -932(%rbp)	#, i
	jmp	.L12	#
.L15:
	.loc 1 72 0
	movl	$0, -928(%rbp)	#, j
	jmp	.L13	#
.L14:
	.loc 1 74 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.14
	movl	-932(%rbp), %edx	# i, tmp359
	movslq	%edx, %rdx	# tmp359, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6167
	movq	(%rax), %rax	# *_96, D.6168
	movl	-928(%rbp), %edx	# j, tmp360
	movslq	%edx, %rdx	# tmp360, D.6162
	addq	%rdx, %rdx	# D.6162
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_100, D.6169
	movzwl	%ax, %eax	# D.6169, tmp361
	cvtsi2sd	%eax, %xmm0	# tmp361, D.6170
	movsd	-904(%rbp), %xmm1	# dc_org, tmp363
	addsd	%xmm1, %xmm0	# tmp363, tmp362
	movsd	%xmm0, -904(%rbp)	# tmp362, dc_org
	.loc 1 72 0 discriminator 2
	addl	$1, -928(%rbp)	#, j
.L13:
	.loc 1 72 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.15
	movl	52(%rax), %eax	# img.15_91->width, D.6160
	cmpl	-928(%rbp), %eax	# j, D.6160
	jg	.L14	#,
	.loc 1 70 0 is_stmt 1
	addl	$1, -932(%rbp)	#, i
.L12:
	.loc 1 70 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.16
	movl	60(%rax), %eax	# img.16_88->height, D.6160
	cmpl	-932(%rbp), %eax	# i, D.6160
	jg	.L15	#,
	.loc 1 78 0 is_stmt 1
	movl	$0, -912(%rbp)	#, clist
	jmp	.L16	#
.L41:
	.loc 1 80 0
	movl	$0, -924(%rbp)	#, n
	jmp	.L17	#
.L40:
	.loc 1 82 0
	movl	-924(%rbp), %eax	# n, tmp365
	movslq	%eax, %rdx	# tmp365, tmp364
	movl	$0, %eax	#, tmp366
	movq	%rax, -864(%rbp,%rdx,8)	# tmp366, dc_ref
	.loc 1 84 0
	movl	-912(%rbp), %eax	# clist, tmp368
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6171
	movl	-924(%rbp), %edx	# n, tmp369
	movslq	%edx, %rdx	# tmp369, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6171
	movq	(%rax), %rax	# *_113, D.6172
	movq	6432(%rax), %rax	# _114->imgY_11, tmp370
	movq	%rax, -896(%rbp)	# tmp370, ref_pic
	.loc 1 85 0
	movl	-912(%rbp), %eax	# clist, tmp372
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6171
	movl	-924(%rbp), %edx	# n, tmp373
	movslq	%edx, %rdx	# tmp373, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6171
	movq	(%rax), %rax	# *_119, D.6172
	movq	6440(%rax), %rax	# _120->imgY_11_w, tmp374
	movq	%rax, -888(%rbp)	# tmp374, ref_pic_w
	.loc 1 88 0
	movl	$0, -932(%rbp)	#, i
	jmp	.L18	#
.L19:
	.loc 1 90 0 discriminator 2
	movl	-924(%rbp), %eax	# n, tmp376
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6170
	movl	-932(%rbp), %eax	# i, tmp377
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6162
	movq	-896(%rbp), %rax	# ref_pic, tmp378
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_131, D.6169
	movzwl	%ax, %eax	# D.6169, tmp379
	cvtsi2sd	%eax, %xmm0	# tmp379, D.6170
	addsd	%xmm1, %xmm0	# D.6170, D.6170
	movl	-924(%rbp), %eax	# n, tmp381
	cltq
	movsd	%xmm0, -864(%rbp,%rax,8)	# D.6170, dc_ref
	.loc 1 88 0 discriminator 2
	addl	$1, -932(%rbp)	#, i
.L18:
	.loc 1 88 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.17
	movl	60(%rax), %edx	# img.17_123->height, D.6160
	movq	img(%rip), %rax	# img, img.18
	movl	52(%rax), %eax	# img.18_125->width, D.6160
	imull	%edx, %eax	# D.6160, D.6160
	cmpl	-932(%rbp), %eax	# i, D.6160
	jg	.L19	#,
	.loc 1 93 0 is_stmt 1
	cvtsi2sd	-948(%rbp), %xmm0	# select_offset, D.6170
	xorpd	%xmm1, %xmm1	# tmp382
	ucomisd	%xmm1, %xmm0	# tmp382, D.6170
	jp	.L20	#,
	xorpd	%xmm1, %xmm1	# tmp383
	ucomisd	%xmm1, %xmm0	# tmp383, D.6170
	jne	.L20	#,
	.loc 1 95 0
	movl	-924(%rbp), %eax	# n, tmp385
	cltq
	movsd	-864(%rbp,%rax,8), %xmm0	# dc_ref, D.6170
	xorpd	%xmm1, %xmm1	# tmp386
	ucomisd	%xmm1, %xmm0	# tmp386, D.6170
	jp	.L49	#,
	xorpd	%xmm1, %xmm1	# tmp387
	ucomisd	%xmm1, %xmm0	# tmp387, D.6170
	je	.L50	#,
.L49:
	.loc 1 96 0
	movl	-880(%rbp), %eax	# default_weight, D.6160
	cvtsi2sd	%eax, %xmm0	# D.6160, D.6170
	mulsd	-904(%rbp), %xmm0	# dc_org, D.6170
	movl	-924(%rbp), %eax	# n, tmp389
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6170
	divsd	%xmm1, %xmm0	# D.6170, D.6170
	movsd	.LC1(%rip), %xmm1	#, tmp390
	addsd	%xmm1, %xmm0	# tmp390, D.6170
	cvttsd2si	%xmm0, %ecx	# D.6170, D.6160
	movl	-924(%rbp), %eax	# n, tmp392
	movslq	%eax, %rdx	# tmp392, tmp391
	movl	-912(%rbp), %eax	# clist, tmp394
	movslq	%eax, %rsi	# tmp394, tmp393
	movq	%rdx, %rax	# tmp391, tmp395
	addq	%rax, %rax	# tmp395
	addq	%rdx, %rax	# tmp391, tmp395
	salq	$2, %rax	#, tmp396
	imulq	$180, %rsi, %rdx	#, tmp393, tmp397
	addq	%rdx, %rax	# tmp397, tmp398
	addq	%rbp, %rax	#, tmp399
	subq	$736, %rax	#, tmp400
	movl	%ecx, (%rax)	# D.6160, weight
	jmp	.L24	#
.L50:
	.loc 1 98 0
	movl	-880(%rbp), %ecx	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp402
	movslq	%eax, %rdx	# tmp402, tmp401
	movl	-912(%rbp), %eax	# clist, tmp404
	movslq	%eax, %rsi	# tmp404, tmp403
	movq	%rdx, %rax	# tmp401, tmp405
	addq	%rax, %rax	# tmp405
	addq	%rdx, %rax	# tmp401, tmp405
	salq	$2, %rax	#, tmp406
	imulq	$180, %rsi, %rdx	#, tmp403, tmp407
	addq	%rdx, %rax	# tmp407, tmp408
	addq	%rbp, %rax	#, tmp409
	subq	$736, %rax	#, tmp410
	movl	%ecx, (%rax)	# D.6160, weight
.L24:
	.loc 1 99 0
	movl	-924(%rbp), %eax	# n, tmp412
	movslq	%eax, %rdx	# tmp412, tmp411
	movl	-912(%rbp), %eax	# clist, tmp414
	movslq	%eax, %rcx	# tmp414, tmp413
	movq	%rdx, %rax	# tmp411, tmp415
	addq	%rax, %rax	# tmp415
	addq	%rdx, %rax	# tmp411, tmp415
	salq	$2, %rax	#, tmp416
	imulq	$180, %rcx, %rdx	#, tmp413, tmp417
	addq	%rdx, %rax	# tmp417, tmp418
	addq	%rbp, %rax	#, tmp419
	subq	$736, %rax	#, tmp420
	movl	(%rax), %eax	# weight, D.6160
	cmpl	$-64, %eax	#, D.6160
	jl	.L25	#,
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	-924(%rbp), %eax	# n, tmp422
	movslq	%eax, %rdx	# tmp422, tmp421
	movl	-912(%rbp), %eax	# clist, tmp424
	movslq	%eax, %rcx	# tmp424, tmp423
	movq	%rdx, %rax	# tmp421, tmp425
	addq	%rax, %rax	# tmp425
	addq	%rdx, %rax	# tmp421, tmp425
	salq	$2, %rax	#, tmp426
	imulq	$180, %rcx, %rdx	#, tmp423, tmp427
	addq	%rdx, %rax	# tmp427, tmp428
	addq	%rbp, %rax	#, tmp429
	subq	$736, %rax	#, tmp430
	movl	(%rax), %eax	# weight, D.6160
	cmpl	$127, %eax	#, D.6160
	jle	.L27	#,
.L25:
	.loc 1 100 0 is_stmt 1
	movl	-880(%rbp), %ecx	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp432
	movslq	%eax, %rdx	# tmp432, tmp431
	movl	-912(%rbp), %eax	# clist, tmp434
	movslq	%eax, %rsi	# tmp434, tmp433
	movq	%rdx, %rax	# tmp431, tmp435
	addq	%rax, %rax	# tmp435
	addq	%rdx, %rax	# tmp431, tmp435
	salq	$2, %rax	#, tmp436
	imulq	$180, %rsi, %rdx	#, tmp433, tmp437
	addq	%rdx, %rax	# tmp437, tmp438
	addq	%rbp, %rax	#, tmp439
	subq	$736, %rax	#, tmp440
	movl	%ecx, (%rax)	# D.6160, weight
	jmp	.L27	#
.L20:
	.loc 1 104 0
	movl	-924(%rbp), %eax	# n, tmp442
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6170
	movsd	-904(%rbp), %xmm0	# dc_org, tmp443
	subsd	%xmm1, %xmm0	# D.6170, D.6170
	movq	img(%rip), %rax	# img, img.19
	movl	60(%rax), %edx	# img.19_152->height, D.6160
	movq	img(%rip), %rax	# img, img.20
	movl	52(%rax), %eax	# img.20_154->width, D.6160
	imull	%edx, %eax	# D.6160, D.6160
	cvtsi2sd	%eax, %xmm1	# D.6160, D.6170
	divsd	%xmm1, %xmm0	# D.6170, D.6170
	movsd	.LC1(%rip), %xmm1	#, tmp444
	addsd	%xmm1, %xmm0	# tmp444, D.6170
	cvttsd2si	%xmm0, %ecx	# D.6170, D.6160
	movl	-924(%rbp), %eax	# n, tmp446
	movslq	%eax, %rdx	# tmp446, tmp445
	movl	-912(%rbp), %eax	# clist, tmp448
	movslq	%eax, %rsi	# tmp448, tmp447
	movq	%rdx, %rax	# tmp445, tmp449
	addq	%rax, %rax	# tmp449
	addq	%rdx, %rax	# tmp445, tmp449
	salq	$2, %rax	#, tmp450
	imulq	$180, %rsi, %rdx	#, tmp447, tmp451
	addq	%rdx, %rax	# tmp451, tmp452
	addq	%rbp, %rax	#, tmp453
	subq	$368, %rax	#, tmp454
	movl	%ecx, (%rax)	# D.6160, offset
	.loc 1 105 0
	movl	-924(%rbp), %eax	# n, tmp456
	movslq	%eax, %rdx	# tmp456, tmp455
	movl	-912(%rbp), %eax	# clist, tmp458
	movslq	%eax, %rcx	# tmp458, tmp457
	movq	%rdx, %rax	# tmp455, tmp459
	addq	%rax, %rax	# tmp459
	addq	%rdx, %rax	# tmp455, tmp459
	salq	$2, %rax	#, tmp460
	imulq	$180, %rcx, %rdx	#, tmp457, tmp461
	addq	%rdx, %rax	# tmp461, tmp462
	addq	%rbp, %rax	#, tmp463
	subq	$368, %rax	#, tmp464
	movl	(%rax), %eax	# offset, D.6160
	cmpl	$-128, %eax	#, D.6160
	jl	.L28	#,
	.loc 1 105 0 is_stmt 0 discriminator 1
	movl	-924(%rbp), %eax	# n, tmp466
	movslq	%eax, %rdx	# tmp466, tmp465
	movl	-912(%rbp), %eax	# clist, tmp468
	movslq	%eax, %rcx	# tmp468, tmp467
	movq	%rdx, %rax	# tmp465, tmp469
	addq	%rax, %rax	# tmp469
	addq	%rdx, %rax	# tmp465, tmp469
	salq	$2, %rax	#, tmp470
	imulq	$180, %rcx, %rdx	#, tmp467, tmp471
	addq	%rdx, %rax	# tmp471, tmp472
	addq	%rbp, %rax	#, tmp473
	subq	$368, %rax	#, tmp474
	movl	(%rax), %eax	# offset, D.6160
	movl	$127, %edx	#, tmp475
	cmpl	$127, %eax	#, D.6160
	cmovle	%eax, %edx	# D.6160,, iftmp.21
	jmp	.L29	#
.L28:
	.loc 1 105 0 discriminator 2
	movl	$-128, %edx	#, iftmp.21
.L29:
	.loc 1 105 0 discriminator 3
	movl	-924(%rbp), %eax	# n, tmp477
	movslq	%eax, %rcx	# tmp477, tmp476
	movl	-912(%rbp), %eax	# clist, tmp479
	movslq	%eax, %rsi	# tmp479, tmp478
	movq	%rcx, %rax	# tmp476, tmp480
	addq	%rax, %rax	# tmp480
	addq	%rcx, %rax	# tmp476, tmp480
	salq	$2, %rax	#, tmp481
	imulq	$180, %rsi, %rcx	#, tmp478, tmp482
	addq	%rcx, %rax	# tmp482, tmp483
	addq	%rbp, %rax	#, tmp484
	subq	$368, %rax	#, tmp485
	movl	%edx, (%rax)	# iftmp.21, offset
	.loc 1 106 0 is_stmt 1 discriminator 3
	movl	-880(%rbp), %ecx	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp487
	movslq	%eax, %rdx	# tmp487, tmp486
	movl	-912(%rbp), %eax	# clist, tmp489
	movslq	%eax, %rsi	# tmp489, tmp488
	movq	%rdx, %rax	# tmp486, tmp490
	addq	%rax, %rax	# tmp490
	addq	%rdx, %rax	# tmp486, tmp490
	salq	$2, %rax	#, tmp491
	imulq	$180, %rsi, %rdx	#, tmp488, tmp492
	addq	%rdx, %rax	# tmp492, tmp493
	addq	%rbp, %rax	#, tmp494
	subq	$736, %rax	#, tmp495
	movl	%ecx, (%rax)	# D.6160, weight
.L27:
	.loc 1 111 0
	movl	-876(%rbp), %ecx	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp497
	movslq	%eax, %rdx	# tmp497, tmp496
	movl	-912(%rbp), %eax	# clist, tmp499
	movslq	%eax, %rsi	# tmp499, tmp498
	movq	%rdx, %rax	# tmp496, tmp500
	addq	%rax, %rax	# tmp500
	addq	%rdx, %rax	# tmp496, tmp500
	salq	$2, %rax	#, tmp501
	imulq	$180, %rsi, %rdx	#, tmp498, tmp502
	addq	%rdx, %rax	# tmp502, tmp503
	addq	%rbp, %rax	#, tmp504
	subq	$732, %rax	#, tmp505
	movl	%ecx, (%rax)	# D.6160, weight
	.loc 1 112 0
	movl	-872(%rbp), %ecx	# default_weight, D.6160
	movl	-924(%rbp), %eax	# n, tmp507
	movslq	%eax, %rdx	# tmp507, tmp506
	movl	-912(%rbp), %eax	# clist, tmp509
	movslq	%eax, %rsi	# tmp509, tmp508
	movq	%rdx, %rax	# tmp506, tmp510
	addq	%rax, %rax	# tmp510
	addq	%rdx, %rax	# tmp506, tmp510
	salq	$2, %rax	#, tmp511
	imulq	$180, %rsi, %rdx	#, tmp508, tmp512
	addq	%rdx, %rax	# tmp512, tmp513
	addq	%rbp, %rax	#, tmp514
	subq	$728, %rax	#, tmp515
	movl	%ecx, (%rax)	# D.6160, weight
	.loc 1 117 0
	movl	$0, -932(%rbp)	#, i
	jmp	.L30	#
.L33:
	.loc 1 119 0
	movl	-932(%rbp), %eax	# i, tmp516
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6162
	movq	-888(%rbp), %rax	# ref_pic_w, tmp517
	leaq	(%rdx,%rax), %rsi	#, D.6168
	movl	-932(%rbp), %eax	# i, tmp518
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6162
	movq	-896(%rbp), %rax	# ref_pic, tmp519
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_179, D.6169
	movzwl	%ax, %ecx	# D.6169, D.6160
	movl	-924(%rbp), %eax	# n, tmp521
	movslq	%eax, %rdx	# tmp521, tmp520
	movl	-912(%rbp), %eax	# clist, tmp523
	movslq	%eax, %rdi	# tmp523, tmp522
	movq	%rdx, %rax	# tmp520, tmp524
	addq	%rax, %rax	# tmp524
	addq	%rdx, %rax	# tmp520, tmp524
	salq	$2, %rax	#, tmp525
	imulq	$180, %rdi, %rdx	#, tmp522, tmp526
	addq	%rdx, %rax	# tmp526, tmp527
	addq	%rbp, %rax	#, tmp528
	subq	$736, %rax	#, tmp529
	movl	(%rax), %eax	# weight, D.6160
	imull	%eax, %ecx	# D.6160, D.6160
	movl	%ecx, %edx	# D.6160, D.6160
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.23
	addl	%eax, %edx	# wp_luma_round.23, D.6160
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.24
	movl	%edx, %edi	# D.6160, D.6160
	movl	%eax, %ecx	# luma_log_weight_denom.24, tmp657
	sarl	%cl, %edi	# tmp657, D.6160
	movl	-924(%rbp), %eax	# n, tmp531
	movslq	%eax, %rdx	# tmp531, tmp530
	movl	-912(%rbp), %eax	# clist, tmp533
	movslq	%eax, %rcx	# tmp533, tmp532
	movq	%rdx, %rax	# tmp530, tmp534
	addq	%rax, %rax	# tmp534
	addq	%rdx, %rax	# tmp530, tmp534
	salq	$2, %rax	#, tmp535
	imulq	$180, %rcx, %rdx	#, tmp532, tmp536
	addq	%rdx, %rax	# tmp536, tmp537
	addq	%rbp, %rax	#, tmp538
	subq	$368, %rax	#, tmp539
	movl	(%rax), %eax	# offset, D.6160
	addl	%edi, %eax	# D.6160, D.6160
	testl	%eax, %eax	# D.6160
	js	.L31	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	movl	-932(%rbp), %eax	# i, tmp540
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6162
	movq	-896(%rbp), %rax	# ref_pic, tmp541
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_192, D.6169
	movzwl	%ax, %ecx	# D.6169, D.6160
	movl	-924(%rbp), %eax	# n, tmp543
	movslq	%eax, %rdx	# tmp543, tmp542
	movl	-912(%rbp), %eax	# clist, tmp545
	movslq	%eax, %rdi	# tmp545, tmp544
	movq	%rdx, %rax	# tmp542, tmp546
	addq	%rax, %rax	# tmp546
	addq	%rdx, %rax	# tmp542, tmp546
	salq	$2, %rax	#, tmp547
	imulq	$180, %rdi, %rdx	#, tmp544, tmp548
	addq	%rdx, %rax	# tmp548, tmp549
	addq	%rbp, %rax	#, tmp550
	subq	$736, %rax	#, tmp551
	movl	(%rax), %eax	# weight, D.6160
	imull	%eax, %ecx	# D.6160, D.6160
	movl	%ecx, %edx	# D.6160, D.6160
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.25
	addl	%eax, %edx	# wp_luma_round.25, D.6160
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.26
	movl	%edx, %edi	# D.6160, D.6160
	movl	%eax, %ecx	# luma_log_weight_denom.26, tmp660
	sarl	%cl, %edi	# tmp660, D.6160
	movl	-924(%rbp), %eax	# n, tmp553
	movslq	%eax, %rdx	# tmp553, tmp552
	movl	-912(%rbp), %eax	# clist, tmp555
	movslq	%eax, %rcx	# tmp555, tmp554
	movq	%rdx, %rax	# tmp552, tmp556
	addq	%rax, %rax	# tmp556
	addq	%rdx, %rax	# tmp552, tmp556
	salq	$2, %rax	#, tmp557
	imulq	$180, %rcx, %rdx	#, tmp554, tmp558
	addq	%rdx, %rax	# tmp558, tmp559
	addq	%rbp, %rax	#, tmp560
	subq	$368, %rax	#, tmp561
	movl	(%rax), %eax	# offset, D.6160
	leal	(%rdi,%rax), %edx	#, D.6160
	movq	img(%rip), %rax	# img, img.27
	movl	72684(%rax), %eax	# img.27_203->max_imgpel_value, D.6160
	cmpl	%eax, %edx	# D.6160, D.6160
	cmovle	%edx, %eax	# D.6160,, D.6160
	jmp	.L32	#
.L31:
	.loc 1 119 0 discriminator 2
	movl	$0, %eax	#, iftmp.22
.L32:
	.loc 1 119 0 discriminator 3
	movw	%ax, (%rsi)	# iftmp.22, *_176
	.loc 1 117 0 is_stmt 1 discriminator 3
	addl	$1, -932(%rbp)	#, i
.L30:
	.loc 1 117 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.28
	movl	60(%rax), %edx	# img.28_169->height, D.6160
	movq	img(%rip), %rax	# img, img.29
	movl	52(%rax), %eax	# img.29_171->width, D.6160
	imull	%edx, %eax	# D.6160, D.6160
	cmpl	-932(%rbp), %eax	# i, D.6160
	jg	.L33	#,
	.loc 1 121 0 is_stmt 1
	movl	$0, -932(%rbp)	#, i
	jmp	.L34	#
.L39:
	.loc 1 123 0
	movl	$0, -928(%rbp)	#, j
	jmp	.L35	#
.L38:
	.loc 1 125 0
	movq	listX(%rip), %rax	# listX, D.6171
	movl	-924(%rbp), %edx	# n, tmp562
	movslq	%edx, %rdx	# tmp562, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6171
	movq	(%rax), %rax	# *_222, D.6172
	movq	6456(%rax), %rax	# _223->imgY_ups_w, D.6167
	movl	-932(%rbp), %edx	# i, tmp563
	movslq	%edx, %rdx	# tmp563, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6167
	movq	(%rax), %rax	# *_227, D.6168
	movl	-928(%rbp), %edx	# j, tmp564
	movslq	%edx, %rdx	# tmp564, D.6162
	addq	%rdx, %rdx	# D.6162
	leaq	(%rax,%rdx), %rsi	#, D.6168
	movq	listX(%rip), %rax	# listX, D.6171
	movl	-924(%rbp), %edx	# n, tmp565
	movslq	%edx, %rdx	# tmp565, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6171
	movq	(%rax), %rax	# *_235, D.6172
	movq	6448(%rax), %rax	# _236->imgY_ups, D.6167
	movl	-932(%rbp), %edx	# i, tmp566
	movslq	%edx, %rdx	# tmp566, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6167
	movq	(%rax), %rax	# *_240, D.6168
	movl	-928(%rbp), %edx	# j, tmp567
	movslq	%edx, %rdx	# tmp567, D.6162
	addq	%rdx, %rdx	# D.6162
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_244, D.6169
	movzwl	%ax, %ecx	# D.6169, D.6160
	movl	-924(%rbp), %eax	# n, tmp569
	movslq	%eax, %rdx	# tmp569, tmp568
	movl	-912(%rbp), %eax	# clist, tmp571
	movslq	%eax, %rdi	# tmp571, tmp570
	movq	%rdx, %rax	# tmp568, tmp572
	addq	%rax, %rax	# tmp572
	addq	%rdx, %rax	# tmp568, tmp572
	salq	$2, %rax	#, tmp573
	imulq	$180, %rdi, %rdx	#, tmp570, tmp574
	addq	%rdx, %rax	# tmp574, tmp575
	addq	%rbp, %rax	#, tmp576
	subq	$736, %rax	#, tmp577
	movl	(%rax), %eax	# weight, D.6160
	imull	%eax, %ecx	# D.6160, D.6160
	movl	%ecx, %edx	# D.6160, D.6160
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.31
	addl	%eax, %edx	# wp_luma_round.31, D.6160
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.32
	movl	%edx, %edi	# D.6160, D.6160
	movl	%eax, %ecx	# luma_log_weight_denom.32, tmp663
	sarl	%cl, %edi	# tmp663, D.6160
	movl	-924(%rbp), %eax	# n, tmp579
	movslq	%eax, %rdx	# tmp579, tmp578
	movl	-912(%rbp), %eax	# clist, tmp581
	movslq	%eax, %rcx	# tmp581, tmp580
	movq	%rdx, %rax	# tmp578, tmp582
	addq	%rax, %rax	# tmp582
	addq	%rdx, %rax	# tmp578, tmp582
	salq	$2, %rax	#, tmp583
	imulq	$180, %rcx, %rdx	#, tmp580, tmp584
	addq	%rdx, %rax	# tmp584, tmp585
	addq	%rbp, %rax	#, tmp586
	subq	$368, %rax	#, tmp587
	movl	(%rax), %eax	# offset, D.6160
	addl	%edi, %eax	# D.6160, D.6160
	testl	%eax, %eax	# D.6160
	js	.L36	#,
	.loc 1 125 0 is_stmt 0 discriminator 1
	movq	listX(%rip), %rax	# listX, D.6171
	movl	-924(%rbp), %edx	# n, tmp588
	movslq	%edx, %rdx	# tmp588, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6171
	movq	(%rax), %rax	# *_258, D.6172
	movq	6448(%rax), %rax	# _259->imgY_ups, D.6167
	movl	-932(%rbp), %edx	# i, tmp589
	movslq	%edx, %rdx	# tmp589, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6167
	movq	(%rax), %rax	# *_263, D.6168
	movl	-928(%rbp), %edx	# j, tmp590
	movslq	%edx, %rdx	# tmp590, D.6162
	addq	%rdx, %rdx	# D.6162
	addq	%rdx, %rax	# D.6162, D.6168
	movzwl	(%rax), %eax	# *_267, D.6169
	movzwl	%ax, %ecx	# D.6169, D.6160
	movl	-924(%rbp), %eax	# n, tmp592
	movslq	%eax, %rdx	# tmp592, tmp591
	movl	-912(%rbp), %eax	# clist, tmp594
	movslq	%eax, %rdi	# tmp594, tmp593
	movq	%rdx, %rax	# tmp591, tmp595
	addq	%rax, %rax	# tmp595
	addq	%rdx, %rax	# tmp591, tmp595
	salq	$2, %rax	#, tmp596
	imulq	$180, %rdi, %rdx	#, tmp593, tmp597
	addq	%rdx, %rax	# tmp597, tmp598
	addq	%rbp, %rax	#, tmp599
	subq	$736, %rax	#, tmp600
	movl	(%rax), %eax	# weight, D.6160
	imull	%eax, %ecx	# D.6160, D.6160
	movl	%ecx, %edx	# D.6160, D.6160
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.33
	addl	%eax, %edx	# wp_luma_round.33, D.6160
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.34
	movl	%edx, %edi	# D.6160, D.6160
	movl	%eax, %ecx	# luma_log_weight_denom.34, tmp666
	sarl	%cl, %edi	# tmp666, D.6160
	movl	-924(%rbp), %eax	# n, tmp602
	movslq	%eax, %rdx	# tmp602, tmp601
	movl	-912(%rbp), %eax	# clist, tmp604
	movslq	%eax, %rcx	# tmp604, tmp603
	movq	%rdx, %rax	# tmp601, tmp605
	addq	%rax, %rax	# tmp605
	addq	%rdx, %rax	# tmp601, tmp605
	salq	$2, %rax	#, tmp606
	imulq	$180, %rcx, %rdx	#, tmp603, tmp607
	addq	%rdx, %rax	# tmp607, tmp608
	addq	%rbp, %rax	#, tmp609
	subq	$368, %rax	#, tmp610
	movl	(%rax), %eax	# offset, D.6160
	leal	(%rdi,%rax), %edx	#, D.6160
	movq	img(%rip), %rax	# img, img.35
	movl	72684(%rax), %eax	# img.35_278->max_imgpel_value, D.6160
	cmpl	%eax, %edx	# D.6160, D.6160
	cmovle	%edx, %eax	# D.6160,, D.6160
	jmp	.L37	#
.L36:
	.loc 1 125 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L37:
	.loc 1 125 0 discriminator 3
	movw	%ax, (%rsi)	# iftmp.30, *_231
	.loc 1 123 0 is_stmt 1 discriminator 3
	addl	$1, -928(%rbp)	#, j
.L35:
	.loc 1 123 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.36
	movl	52(%rax), %eax	# img.36_215->width, D.6160
	addl	$8, %eax	#, D.6160
	sall	$2, %eax	#, D.6160
	cmpl	-928(%rbp), %eax	# j, D.6160
	jg	.L38	#,
	.loc 1 121 0 is_stmt 1
	addl	$1, -932(%rbp)	#, i
.L34:
	.loc 1 121 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.37
	movl	60(%rax), %eax	# img.37_210->height, D.6160
	addl	$8, %eax	#, D.6160
	sall	$2, %eax	#, D.6160
	cmpl	-932(%rbp), %eax	# i, D.6160
	jg	.L39	#,
	.loc 1 80 0 is_stmt 1
	addl	$1, -924(%rbp)	#, n
.L17:
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	-912(%rbp), %eax	# clist, tmp612
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6160
	cmpl	-924(%rbp), %eax	# n, D.6160
	jg	.L40	#,
	.loc 1 78 0 is_stmt 1
	addl	$1, -912(%rbp)	#, clist
.L16:
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	-908(%rbp), %eax	# list_offset, tmp613
	addl	$2, %eax	#, D.6160
	cmpl	-912(%rbp), %eax	# clist, D.6160
	jg	.L41	#,
	.loc 1 131 0 is_stmt 1
	movl	$0, -912(%rbp)	#, clist
	jmp	.L42	#
.L47:
	.loc 1 133 0
	movl	$0, -920(%rbp)	#, index
	jmp	.L43	#
.L46:
	.loc 1 135 0
	movl	$0, -916(%rbp)	#, comp
	jmp	.L44	#
.L45:
	.loc 1 137 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.38
	movl	-912(%rbp), %edx	# clist, tmp614
	movslq	%edx, %rdx	# tmp614, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6164
	movq	(%rax), %rax	# *_295, D.6165
	movl	-920(%rbp), %edx	# index, tmp615
	movslq	%edx, %rdx	# tmp615, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6165
	movq	(%rax), %rax	# *_299, D.6166
	movl	-916(%rbp), %edx	# comp, tmp616
	movslq	%edx, %rdx	# tmp616, D.6162
	salq	$2, %rdx	#, D.6162
	leaq	(%rax,%rdx), %rsi	#, D.6166
	movl	-916(%rbp), %eax	# comp, tmp618
	movslq	%eax, %rdi	# tmp618, tmp617
	movl	-912(%rbp), %eax	# clist, tmp620
	movslq	%eax, %rdx	# tmp620, tmp619
	movl	-920(%rbp), %eax	# index, tmp622
	movslq	%eax, %rcx	# tmp622, tmp621
	movq	%rdx, %rax	# tmp619, tmp623
	addq	%rax, %rax	# tmp623
	addq	%rdx, %rax	# tmp619, tmp623
	movq	%rax, %rdx	# tmp623, tmp624
	salq	$4, %rdx	#, tmp624
	subq	%rax, %rdx	# tmp623, tmp624
	movq	%rcx, %rax	# tmp621, tmp625
	addq	%rax, %rax	# tmp625
	addq	%rcx, %rax	# tmp621, tmp625
	addq	%rdx, %rax	# tmp624, tmp626
	addq	%rdi, %rax	# tmp617, tmp627
	movl	-736(%rbp,%rax,4), %eax	# weight, D.6160
	movl	%eax, (%rsi)	# D.6160, *_303
	.loc 1 138 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.39
	movl	-912(%rbp), %edx	# clist, tmp628
	movslq	%edx, %rdx	# tmp628, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6164
	movq	(%rax), %rax	# *_308, D.6165
	movl	-920(%rbp), %edx	# index, tmp629
	movslq	%edx, %rdx	# tmp629, D.6162
	salq	$3, %rdx	#, D.6162
	addq	%rdx, %rax	# D.6162, D.6165
	movq	(%rax), %rax	# *_312, D.6166
	movl	-916(%rbp), %edx	# comp, tmp630
	movslq	%edx, %rdx	# tmp630, D.6162
	salq	$2, %rdx	#, D.6162
	leaq	(%rax,%rdx), %rsi	#, D.6166
	movl	-916(%rbp), %eax	# comp, tmp632
	movslq	%eax, %rdi	# tmp632, tmp631
	movl	-912(%rbp), %eax	# clist, tmp634
	movslq	%eax, %rdx	# tmp634, tmp633
	movl	-920(%rbp), %eax	# index, tmp636
	movslq	%eax, %rcx	# tmp636, tmp635
	movq	%rdx, %rax	# tmp633, tmp637
	addq	%rax, %rax	# tmp637
	addq	%rdx, %rax	# tmp633, tmp637
	movq	%rax, %rdx	# tmp637, tmp638
	salq	$4, %rdx	#, tmp638
	subq	%rax, %rdx	# tmp637, tmp638
	movq	%rcx, %rax	# tmp635, tmp639
	addq	%rax, %rax	# tmp639
	addq	%rcx, %rax	# tmp635, tmp639
	addq	%rdx, %rax	# tmp638, tmp640
	addq	%rdi, %rax	# tmp631, tmp641
	movl	-368(%rbp,%rax,4), %eax	# offset, D.6160
	movl	%eax, (%rsi)	# D.6160, *_316
	.loc 1 135 0 discriminator 2
	addl	$1, -916(%rbp)	#, comp
.L44:
	.loc 1 135 0 is_stmt 0 discriminator 1
	cmpl	$2, -916(%rbp)	#, comp
	jle	.L45	#,
	.loc 1 133 0 is_stmt 1
	addl	$1, -920(%rbp)	#, index
.L43:
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	-912(%rbp), %eax	# clist, tmp643
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6160
	cmpl	-920(%rbp), %eax	# index, D.6160
	jg	.L46	#,
	.loc 1 131 0 is_stmt 1
	addl	$1, -912(%rbp)	#, clist
.L42:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-908(%rbp), %eax	# list_offset, tmp644
	addl	$2, %eax	#, D.6160
	cmpl	-912(%rbp), %eax	# clist, D.6160
	jg	.L47	#,
	.loc 1 144 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	estimate_weighting_factor_P_slice, .-estimate_weighting_factor_P_slice
	.globl	estimate_weighting_factor_B_slice
	.type	estimate_weighting_factor_B_slice, @function
estimate_weighting_factor_B_slice:
.LFB3:
	.loc 1 153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$35304, %rsp	#,
	.loc 1 157 0
	movl	$0, %eax	#, tmp682
	movq	%rax, -35352(%rbp)	# tmp682, dc_org
	.loc 1 167 0
	movq	img(%rip), %rax	# img, img.41
	movl	72400(%rax), %eax	# img.41_47->MbaffFrameFlag, D.6173
	testl	%eax, %eax	# D.6173
	je	.L52	#,
	.loc 1 167 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.42
	movq	14168(%rax), %rdx	# img.42_49->mb_data, D.6174
	movq	img(%rip), %rax	# img, img.43
	movl	12(%rax), %eax	# img.43_51->current_mb_nr, D.6173
	cltq
	imulq	$632, %rax, %rax	#, D.6175, D.6175
	addq	%rdx, %rax	# D.6174, D.6174
	movl	532(%rax), %eax	# _55->mb_field, D.6173
	testl	%eax, %eax	# D.6173
	je	.L52	#,
	movq	img(%rip), %rax	# img, img.45
	movl	12(%rax), %eax	# img.45_57->current_mb_nr, D.6173
	andl	$1, %eax	#, D.6176
	testl	%eax, %eax	# D.6176
	je	.L53	#,
	movl	$4, %eax	#, iftmp.44
	jmp	.L54	#
.L53:
	.loc 1 167 0 discriminator 2
	movl	$2, %eax	#, iftmp.44
.L54:
	.loc 1 167 0 discriminator 3
	jmp	.L55	#
.L52:
	.loc 1 167 0 discriminator 2
	movl	$0, %eax	#, iftmp.40
.L55:
	.loc 1 167 0 discriminator 3
	movl	%eax, -35380(%rbp)	# iftmp.40, list_offset
	.loc 1 175 0 is_stmt 1 discriminator 3
	movq	active_pps(%rip), %rax	# active_pps, active_pps.46
	movl	196(%rax), %eax	# active_pps.46_66->weighted_bipred_idc, D.6177
	cmpl	$2, %eax	#, D.6177
	jne	.L56	#,
	.loc 1 177 0
	movl	$5, luma_log_weight_denom(%rip)	#, luma_log_weight_denom
	.loc 1 178 0
	movl	$5, chroma_log_weight_denom(%rip)	#, chroma_log_weight_denom
	jmp	.L57	#
.L56:
	.loc 1 182 0
	movl	$6, luma_log_weight_denom(%rip)	#, luma_log_weight_denom
	.loc 1 183 0
	movl	$6, chroma_log_weight_denom(%rip)	#, chroma_log_weight_denom
.L57:
	.loc 1 186 0
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.47
	subl	$1, %eax	#, D.6173
	movl	$1, %edx	#, tmp683
	movl	%eax, %ecx	# D.6173, tmp1155
	sall	%cl, %edx	# tmp1155, wp_luma_round.48
	movl	%edx, %eax	# wp_luma_round.48, wp_luma_round.48
	movl	%eax, wp_luma_round(%rip)	# wp_luma_round.48, wp_luma_round
	.loc 1 187 0
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.49
	subl	$1, %eax	#, D.6173
	movl	$1, %edx	#, tmp684
	movl	%eax, %ecx	# D.6173, tmp1157
	sall	%cl, %edx	# tmp1157, wp_chroma_round.50
	movl	%edx, %eax	# wp_chroma_round.50, wp_chroma_round.50
	movl	%eax, wp_chroma_round(%rip)	# wp_chroma_round.50, wp_chroma_round
	.loc 1 188 0
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.51
	movl	$1, %edx	#, tmp685
	movl	%eax, %ecx	# luma_log_weight_denom.51, tmp1159
	sall	%cl, %edx	# tmp1159, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	movl	%eax, -35328(%rbp)	# D.6173, default_weight
	.loc 1 189 0
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.52
	movl	$1, %edx	#, tmp686
	movl	%eax, %ecx	# chroma_log_weight_denom.52, tmp1161
	sall	%cl, %edx	# tmp1161, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	movl	%eax, -35324(%rbp)	# D.6173, default_weight
	.loc 1 190 0
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.53
	movl	$1, %edx	#, tmp687
	movl	%eax, %ecx	# chroma_log_weight_denom.53, tmp1163
	sall	%cl, %edx	# tmp1163, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	movl	%eax, -35320(%rbp)	# D.6173, default_weight
	.loc 1 193 0
	movl	$0, -35412(%rbp)	#, i
	jmp	.L58	#
.L63:
	.loc 1 195 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L59	#
.L62:
	.loc 1 197 0
	movl	$0, -35404(%rbp)	#, n
	jmp	.L60	#
.L61:
	.loc 1 199 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.54
	movl	-35412(%rbp), %edx	# i, tmp688
	movslq	%edx, %rdx	# tmp688, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_88, D.6179
	movl	-35408(%rbp), %edx	# j, tmp689
	movslq	%edx, %rdx	# tmp689, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_92, D.6180
	movl	-35404(%rbp), %edx	# n, tmp690
	movslq	%edx, %rdx	# tmp690, D.6175
	salq	$2, %rdx	#, D.6175
	addq	%rax, %rdx	# D.6180, D.6180
	movl	-35404(%rbp), %eax	# n, tmp692
	cltq
	movl	-35328(%rbp,%rax,4), %eax	# default_weight, D.6173
	movl	%eax, (%rdx)	# D.6173, *_96
	.loc 1 200 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.55
	movl	-35412(%rbp), %edx	# i, tmp693
	movslq	%edx, %rdx	# tmp693, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_101, D.6179
	movl	-35408(%rbp), %edx	# j, tmp694
	movslq	%edx, %rdx	# tmp694, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_105, D.6180
	movl	-35404(%rbp), %edx	# n, tmp695
	movslq	%edx, %rdx	# tmp695, D.6175
	salq	$2, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6180
	movl	$0, (%rax)	#, *_109
	.loc 1 201 0 discriminator 2
	movl	-35404(%rbp), %eax	# n, tmp697
	movslq	%eax, %rsi	# tmp697, tmp696
	movl	-35412(%rbp), %eax	# i, tmp699
	movslq	%eax, %rdx	# tmp699, tmp698
	movl	-35408(%rbp), %eax	# j, tmp701
	movslq	%eax, %rcx	# tmp701, tmp700
	movq	%rdx, %rax	# tmp698, tmp702
	addq	%rax, %rax	# tmp702
	addq	%rdx, %rax	# tmp698, tmp702
	movq	%rax, %rdx	# tmp702, tmp703
	salq	$4, %rdx	#, tmp703
	subq	%rax, %rdx	# tmp702, tmp703
	movq	%rcx, %rax	# tmp700, tmp704
	addq	%rax, %rax	# tmp704
	addq	%rcx, %rax	# tmp700, tmp704
	addq	%rdx, %rax	# tmp703, tmp705
	addq	%rsi, %rax	# tmp696, tmp706
	movl	$0, -33504(%rbp,%rax,4)	#, offset
	.loc 1 202 0 discriminator 2
	movl	-35404(%rbp), %eax	# n, tmp708
	cltq
	movl	-35328(%rbp,%rax,4), %esi	# default_weight, D.6173
	movl	-35404(%rbp), %eax	# n, tmp710
	movslq	%eax, %rdi	# tmp710, tmp709
	movl	-35412(%rbp), %eax	# i, tmp712
	movslq	%eax, %rdx	# tmp712, tmp711
	movl	-35408(%rbp), %eax	# j, tmp714
	movslq	%eax, %rcx	# tmp714, tmp713
	movq	%rdx, %rax	# tmp711, tmp715
	addq	%rax, %rax	# tmp715
	addq	%rdx, %rax	# tmp711, tmp715
	movq	%rax, %rdx	# tmp715, tmp716
	salq	$4, %rdx	#, tmp716
	subq	%rax, %rdx	# tmp715, tmp716
	movq	%rcx, %rax	# tmp713, tmp717
	addq	%rax, %rax	# tmp717
	addq	%rcx, %rax	# tmp713, tmp717
	addq	%rdx, %rax	# tmp716, tmp718
	addq	%rdi, %rax	# tmp709, tmp719
	movl	%esi, -34592(%rbp,%rax,4)	# D.6173, weight
	.loc 1 197 0 discriminator 2
	addl	$1, -35404(%rbp)	#, n
.L60:
	.loc 1 197 0 is_stmt 0 discriminator 1
	cmpl	$2, -35404(%rbp)	#, n
	jle	.L61	#,
	.loc 1 195 0 is_stmt 1
	addl	$1, -35408(%rbp)	#, j
.L59:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	-35412(%rbp), %eax	# i, tmp721
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L62	#,
	.loc 1 193 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L58:
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	-35380(%rbp), %eax	# list_offset, tmp722
	addl	$2, %eax	#, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L63	#,
	.loc 1 207 0 is_stmt 1
	movl	$0, -35412(%rbp)	#, i
	jmp	.L64	#
.L79:
	.loc 1 209 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L65	#
.L78:
.LBB2:
	.loc 1 212 0
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %edx	# j, tmp723
	movslq	%edx, %rdx	# tmp723, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_121, D.6182
	movl	4(%rax), %edx	# _122->poc, D.6173
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp724
	movslq	%ecx, %rcx	# tmp724, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_127, D.6182
	movl	4(%rax), %eax	# _128->poc, D.6173
	subl	%eax, %edx	# D.6173, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	cmpl	$-128, %eax	#, D.6173
	jl	.L66	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %edx	# j, tmp725
	movslq	%edx, %rdx	# tmp725, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_134, D.6182
	movl	4(%rax), %edx	# _135->poc, D.6173
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp726
	movslq	%ecx, %rcx	# tmp726, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_140, D.6182
	movl	4(%rax), %eax	# _141->poc, D.6173
	subl	%eax, %edx	# D.6173, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	movl	$127, %edx	#, tmp727
	cmpl	$127, %eax	#, D.6173
	cmovg	%edx, %eax	# D.6173,, tmp727, iftmp.56
	jmp	.L67	#
.L66:
	.loc 1 212 0 discriminator 2
	movl	$-128, %eax	#, iftmp.56
.L67:
	.loc 1 212 0 discriminator 3
	movl	%eax, -35376(%rbp)	# iftmp.56, td
	.loc 1 213 0 is_stmt 1 discriminator 3
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.58
	movl	4(%rax), %edx	# enc_picture.58_147->poc, D.6173
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp728
	movslq	%ecx, %rcx	# tmp728, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_152, D.6182
	movl	4(%rax), %eax	# _153->poc, D.6173
	subl	%eax, %edx	# D.6173, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	cmpl	$-128, %eax	#, D.6173
	jl	.L68	#,
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.59
	movl	4(%rax), %edx	# enc_picture.59_156->poc, D.6173
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp729
	movslq	%ecx, %rcx	# tmp729, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_161, D.6182
	movl	4(%rax), %eax	# _162->poc, D.6173
	subl	%eax, %edx	# D.6173, D.6173
	movl	%edx, %eax	# D.6173, D.6173
	movl	$127, %edx	#, tmp730
	cmpl	$127, %eax	#, D.6173
	cmovg	%edx, %eax	# D.6173,, tmp730, iftmp.57
	jmp	.L69	#
.L68:
	.loc 1 213 0 discriminator 2
	movl	$-128, %eax	#, iftmp.57
.L69:
	.loc 1 213 0 discriminator 3
	movl	%eax, -35372(%rbp)	# iftmp.57, tb
	.loc 1 214 0 is_stmt 1 discriminator 3
	movl	$0, -35392(%rbp)	#, comp
	jmp	.L70	#
.L77:
	.loc 1 217 0
	cmpl	$0, -35376(%rbp)	#, td
	jne	.L71	#,
	.loc 1 219 0
	movl	-35392(%rbp), %eax	# comp, tmp732
	cltq
	movl	-35328(%rbp,%rax,4), %esi	# default_weight, D.6173
	movl	-35392(%rbp), %eax	# comp, tmp734
	movslq	%eax, %rdi	# tmp734, tmp733
	movl	-35412(%rbp), %eax	# i, tmp736
	movslq	%eax, %rdx	# tmp736, tmp735
	movl	-35408(%rbp), %eax	# j, tmp738
	movslq	%eax, %rcx	# tmp738, tmp737
	movq	%rdx, %rax	# tmp735, tmp739
	addq	%rax, %rax	# tmp739
	addq	%rdx, %rax	# tmp735, tmp739
	movq	%rax, %rdx	# tmp739, tmp740
	salq	$4, %rdx	#, tmp740
	subq	%rax, %rdx	# tmp739, tmp740
	movq	%rcx, %rax	# tmp737, tmp741
	addq	%rax, %rax	# tmp741
	addq	%rcx, %rax	# tmp737, tmp741
	addq	%rdx, %rax	# tmp740, tmp742
	addq	%rdi, %rax	# tmp733, tmp743
	addq	$675, %rax	#, tmp744
	movl	%esi, -32416(%rbp,%rax,4)	# D.6173, im_weight
	.loc 1 220 0
	movl	-35392(%rbp), %eax	# comp, tmp746
	cltq
	movl	-35328(%rbp,%rax,4), %esi	# default_weight, D.6173
	movl	-35392(%rbp), %eax	# comp, tmp748
	movslq	%eax, %rdi	# tmp748, tmp747
	movl	-35412(%rbp), %eax	# i, tmp750
	movslq	%eax, %rdx	# tmp750, tmp749
	movl	-35408(%rbp), %eax	# j, tmp752
	movslq	%eax, %rcx	# tmp752, tmp751
	movq	%rdx, %rax	# tmp749, tmp753
	addq	%rax, %rax	# tmp753
	addq	%rdx, %rax	# tmp749, tmp753
	movq	%rax, %rdx	# tmp753, tmp754
	salq	$4, %rdx	#, tmp754
	subq	%rax, %rdx	# tmp753, tmp754
	movq	%rcx, %rax	# tmp751, tmp755
	addq	%rax, %rax	# tmp755
	addq	%rcx, %rax	# tmp751, tmp755
	addq	%rdx, %rax	# tmp754, tmp756
	addq	%rdi, %rax	# tmp747, tmp757
	movl	%esi, -32416(%rbp,%rax,4)	# D.6173, im_weight
	.loc 1 221 0
	movl	-35392(%rbp), %eax	# comp, tmp759
	movslq	%eax, %rsi	# tmp759, tmp758
	movl	-35412(%rbp), %eax	# i, tmp761
	movslq	%eax, %rdx	# tmp761, tmp760
	movl	-35408(%rbp), %eax	# j, tmp763
	movslq	%eax, %rcx	# tmp763, tmp762
	movq	%rdx, %rax	# tmp760, tmp764
	addq	%rax, %rax	# tmp764
	addq	%rdx, %rax	# tmp760, tmp764
	movq	%rax, %rdx	# tmp764, tmp765
	salq	$4, %rdx	#, tmp765
	subq	%rax, %rdx	# tmp764, tmp765
	movq	%rcx, %rax	# tmp762, tmp766
	addq	%rax, %rax	# tmp766
	addq	%rcx, %rax	# tmp762, tmp766
	addq	%rdx, %rax	# tmp765, tmp767
	addq	%rsi, %rax	# tmp758, tmp768
	addq	$675, %rax	#, tmp769
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	.loc 1 222 0
	movl	-35392(%rbp), %eax	# comp, tmp771
	movslq	%eax, %rsi	# tmp771, tmp770
	movl	-35412(%rbp), %eax	# i, tmp773
	movslq	%eax, %rdx	# tmp773, tmp772
	movl	-35408(%rbp), %eax	# j, tmp775
	movslq	%eax, %rcx	# tmp775, tmp774
	movq	%rdx, %rax	# tmp772, tmp776
	addq	%rax, %rax	# tmp776
	addq	%rdx, %rax	# tmp772, tmp776
	movq	%rax, %rdx	# tmp776, tmp777
	salq	$4, %rdx	#, tmp777
	subq	%rax, %rdx	# tmp776, tmp777
	movq	%rcx, %rax	# tmp774, tmp778
	addq	%rax, %rax	# tmp778
	addq	%rcx, %rax	# tmp774, tmp778
	addq	%rdx, %rax	# tmp777, tmp779
	addq	%rsi, %rax	# tmp770, tmp780
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	jmp	.L72	#
.L71:
	.loc 1 226 0
	movl	-35376(%rbp), %eax	# td, tmp781
	movl	%eax, %edx	# tmp781, tmp782
	shrl	$31, %edx	#, tmp782
	addl	%edx, %eax	# tmp782, tmp783
	sarl	%eax	# tmp784
	cltd
	xorl	%edx, %eax	# tmp785, D.6173
	subl	%edx, %eax	# tmp785, D.6173
	addl	$16384, %eax	#, D.6173
	cltd
	idivl	-35376(%rbp)	# td
	movl	%eax, -35368(%rbp)	# tmp787, tx
	.loc 1 227 0
	movl	-35368(%rbp), %eax	# tx, tmp789
	imull	-35372(%rbp), %eax	# tb, D.6173
	addl	$32, %eax	#, D.6173
	sarl	$6, %eax	#, D.6173
	cmpl	$-1024, %eax	#, D.6173
	jl	.L73	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movl	-35368(%rbp), %eax	# tx, tmp790
	imull	-35372(%rbp), %eax	# tb, D.6173
	addl	$32, %eax	#, D.6173
	sarl	$6, %eax	#, D.6173
	movl	$1023, %edx	#, tmp791
	cmpl	$1023, %eax	#, D.6173
	cmovg	%edx, %eax	# D.6173,, tmp791, iftmp.60
	jmp	.L74	#
.L73:
	.loc 1 227 0 discriminator 2
	movl	$-1024, %eax	#, iftmp.60
.L74:
	.loc 1 227 0 discriminator 3
	movl	%eax, -35364(%rbp)	# iftmp.60, DistScaleFactor
	.loc 1 228 0 is_stmt 1 discriminator 3
	movl	-35364(%rbp), %eax	# DistScaleFactor, tmp792
	sarl	$2, %eax	#, D.6173
	movl	%eax, %esi	# D.6173, D.6173
	movl	-35392(%rbp), %eax	# comp, tmp794
	movslq	%eax, %rdi	# tmp794, tmp793
	movl	-35412(%rbp), %eax	# i, tmp796
	movslq	%eax, %rdx	# tmp796, tmp795
	movl	-35408(%rbp), %eax	# j, tmp798
	movslq	%eax, %rcx	# tmp798, tmp797
	movq	%rdx, %rax	# tmp795, tmp799
	addq	%rax, %rax	# tmp799
	addq	%rdx, %rax	# tmp795, tmp799
	movq	%rax, %rdx	# tmp799, tmp800
	salq	$4, %rdx	#, tmp800
	subq	%rax, %rdx	# tmp799, tmp800
	movq	%rcx, %rax	# tmp797, tmp801
	addq	%rax, %rax	# tmp801
	addq	%rcx, %rax	# tmp797, tmp801
	addq	%rdx, %rax	# tmp800, tmp802
	addq	%rdi, %rax	# tmp793, tmp803
	addq	$675, %rax	#, tmp804
	movl	%esi, -32416(%rbp,%rax,4)	# D.6173, im_weight
	.loc 1 229 0 discriminator 3
	movl	-35392(%rbp), %eax	# comp, tmp806
	movslq	%eax, %rsi	# tmp806, tmp805
	movl	-35412(%rbp), %eax	# i, tmp808
	movslq	%eax, %rdx	# tmp808, tmp807
	movl	-35408(%rbp), %eax	# j, tmp810
	movslq	%eax, %rcx	# tmp810, tmp809
	movq	%rdx, %rax	# tmp807, tmp811
	addq	%rax, %rax	# tmp811
	addq	%rdx, %rax	# tmp807, tmp811
	movq	%rax, %rdx	# tmp811, tmp812
	salq	$4, %rdx	#, tmp812
	subq	%rax, %rdx	# tmp811, tmp812
	movq	%rcx, %rax	# tmp809, tmp813
	addq	%rax, %rax	# tmp813
	addq	%rcx, %rax	# tmp809, tmp813
	addq	%rdx, %rax	# tmp812, tmp814
	addq	%rsi, %rax	# tmp805, tmp815
	addq	$675, %rax	#, tmp816
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6173
	cmpl	$-64, %eax	#, D.6173
	jl	.L75	#,
	.loc 1 229 0 is_stmt 0 discriminator 1
	movl	-35392(%rbp), %eax	# comp, tmp818
	movslq	%eax, %rsi	# tmp818, tmp817
	movl	-35412(%rbp), %eax	# i, tmp820
	movslq	%eax, %rdx	# tmp820, tmp819
	movl	-35408(%rbp), %eax	# j, tmp822
	movslq	%eax, %rcx	# tmp822, tmp821
	movq	%rdx, %rax	# tmp819, tmp823
	addq	%rax, %rax	# tmp823
	addq	%rdx, %rax	# tmp819, tmp823
	movq	%rax, %rdx	# tmp823, tmp824
	salq	$4, %rdx	#, tmp824
	subq	%rax, %rdx	# tmp823, tmp824
	movq	%rcx, %rax	# tmp821, tmp825
	addq	%rax, %rax	# tmp825
	addq	%rcx, %rax	# tmp821, tmp825
	addq	%rdx, %rax	# tmp824, tmp826
	addq	%rsi, %rax	# tmp817, tmp827
	addq	$675, %rax	#, tmp828
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6173
	cmpl	$128, %eax	#, D.6173
	jle	.L76	#,
.L75:
	.loc 1 230 0 is_stmt 1
	movl	-35392(%rbp), %eax	# comp, tmp830
	cltq
	movl	-35328(%rbp,%rax,4), %esi	# default_weight, D.6173
	movl	-35392(%rbp), %eax	# comp, tmp832
	movslq	%eax, %rdi	# tmp832, tmp831
	movl	-35412(%rbp), %eax	# i, tmp834
	movslq	%eax, %rdx	# tmp834, tmp833
	movl	-35408(%rbp), %eax	# j, tmp836
	movslq	%eax, %rcx	# tmp836, tmp835
	movq	%rdx, %rax	# tmp833, tmp837
	addq	%rax, %rax	# tmp837
	addq	%rdx, %rax	# tmp833, tmp837
	movq	%rax, %rdx	# tmp837, tmp838
	salq	$4, %rdx	#, tmp838
	subq	%rax, %rdx	# tmp837, tmp838
	movq	%rcx, %rax	# tmp835, tmp839
	addq	%rax, %rax	# tmp839
	addq	%rcx, %rax	# tmp835, tmp839
	addq	%rdx, %rax	# tmp838, tmp840
	addq	%rdi, %rax	# tmp831, tmp841
	addq	$675, %rax	#, tmp842
	movl	%esi, -32416(%rbp,%rax,4)	# D.6173, im_weight
.L76:
	.loc 1 231 0
	movl	-35392(%rbp), %eax	# comp, tmp844
	movslq	%eax, %rsi	# tmp844, tmp843
	movl	-35412(%rbp), %eax	# i, tmp846
	movslq	%eax, %rdx	# tmp846, tmp845
	movl	-35408(%rbp), %eax	# j, tmp848
	movslq	%eax, %rcx	# tmp848, tmp847
	movq	%rdx, %rax	# tmp845, tmp849
	addq	%rax, %rax	# tmp849
	addq	%rdx, %rax	# tmp845, tmp849
	movq	%rax, %rdx	# tmp849, tmp850
	salq	$4, %rdx	#, tmp850
	subq	%rax, %rdx	# tmp849, tmp850
	movq	%rcx, %rax	# tmp847, tmp851
	addq	%rax, %rax	# tmp851
	addq	%rcx, %rax	# tmp847, tmp851
	addq	%rdx, %rax	# tmp850, tmp852
	addq	%rsi, %rax	# tmp843, tmp853
	addq	$675, %rax	#, tmp854
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6173
	movl	$64, %edx	#, tmp855
	movl	%edx, %esi	# tmp855, D.6173
	subl	%eax, %esi	# D.6173, D.6173
	movl	-35392(%rbp), %eax	# comp, tmp857
	movslq	%eax, %rdi	# tmp857, tmp856
	movl	-35412(%rbp), %eax	# i, tmp859
	movslq	%eax, %rdx	# tmp859, tmp858
	movl	-35408(%rbp), %eax	# j, tmp861
	movslq	%eax, %rcx	# tmp861, tmp860
	movq	%rdx, %rax	# tmp858, tmp862
	addq	%rax, %rax	# tmp862
	addq	%rdx, %rax	# tmp858, tmp862
	movq	%rax, %rdx	# tmp862, tmp863
	salq	$4, %rdx	#, tmp863
	subq	%rax, %rdx	# tmp862, tmp863
	movq	%rcx, %rax	# tmp860, tmp864
	addq	%rax, %rax	# tmp864
	addq	%rcx, %rax	# tmp860, tmp864
	addq	%rdx, %rax	# tmp863, tmp865
	addq	%rdi, %rax	# tmp856, tmp866
	movl	%esi, -32416(%rbp,%rax,4)	# D.6173, im_weight
	.loc 1 232 0
	movl	-35392(%rbp), %eax	# comp, tmp868
	movslq	%eax, %rsi	# tmp868, tmp867
	movl	-35412(%rbp), %eax	# i, tmp870
	movslq	%eax, %rdx	# tmp870, tmp869
	movl	-35408(%rbp), %eax	# j, tmp872
	movslq	%eax, %rcx	# tmp872, tmp871
	movq	%rdx, %rax	# tmp869, tmp873
	addq	%rax, %rax	# tmp873
	addq	%rdx, %rax	# tmp869, tmp873
	movq	%rax, %rdx	# tmp873, tmp874
	salq	$4, %rdx	#, tmp874
	subq	%rax, %rdx	# tmp873, tmp874
	movq	%rcx, %rax	# tmp871, tmp875
	addq	%rax, %rax	# tmp875
	addq	%rcx, %rax	# tmp871, tmp875
	addq	%rdx, %rax	# tmp874, tmp876
	addq	%rsi, %rax	# tmp867, tmp877
	addq	$675, %rax	#, tmp878
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	.loc 1 233 0
	movl	-35392(%rbp), %eax	# comp, tmp880
	movslq	%eax, %rsi	# tmp880, tmp879
	movl	-35412(%rbp), %eax	# i, tmp882
	movslq	%eax, %rdx	# tmp882, tmp881
	movl	-35408(%rbp), %eax	# j, tmp884
	movslq	%eax, %rcx	# tmp884, tmp883
	movq	%rdx, %rax	# tmp881, tmp885
	addq	%rax, %rax	# tmp885
	addq	%rdx, %rax	# tmp881, tmp885
	movq	%rax, %rdx	# tmp885, tmp886
	salq	$4, %rdx	#, tmp886
	subq	%rax, %rdx	# tmp885, tmp886
	movq	%rcx, %rax	# tmp883, tmp887
	addq	%rax, %rax	# tmp887
	addq	%rcx, %rax	# tmp883, tmp887
	addq	%rdx, %rax	# tmp886, tmp888
	addq	%rsi, %rax	# tmp879, tmp889
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
.L72:
	.loc 1 214 0
	addl	$1, -35392(%rbp)	#, comp
.L70:
	.loc 1 214 0 is_stmt 0 discriminator 1
	cmpl	$2, -35392(%rbp)	#, comp
	jle	.L77	#,
.LBE2:
	.loc 1 209 0 is_stmt 1
	addl	$1, -35408(%rbp)	#, j
.L65:
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L78	#,
	.loc 1 207 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L64:
	.loc 1 207 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L79	#,
	.loc 1 245 0 is_stmt 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.61
	movl	196(%rax), %eax	# active_pps.61_193->weighted_bipred_idc, D.6177
	cmpl	$2, %eax	#, D.6177
	jne	.L80	#,
	.loc 1 248 0
	movl	$0, -35412(%rbp)	#, i
	jmp	.L81	#
.L88:
	.loc 1 250 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L82	#
.L87:
	.loc 1 252 0
	movl	$0, -35392(%rbp)	#, comp
	jmp	.L83	#
.L86:
	.loc 1 254 0
	cmpl	$0, -35392(%rbp)	#, comp
	jne	.L84	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, iftmp.62
	jmp	.L85	#
.L84:
	.loc 1 254 0 discriminator 2
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, iftmp.62
.L85:
	.loc 1 254 0 discriminator 3
	movl	%eax, -35360(%rbp)	# iftmp.62, log_weight_denom
	.loc 1 255 0 is_stmt 1 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.63
	addq	$8, %rax	#, D.6183
	movq	(%rax), %rax	# *_204, D.6178
	movl	-35412(%rbp), %edx	# i, tmp890
	movslq	%edx, %rdx	# tmp890, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_208, D.6179
	movl	-35408(%rbp), %edx	# j, tmp891
	movslq	%edx, %rdx	# tmp891, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_212, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp892
	movslq	%edx, %rdx	# tmp892, D.6175
	salq	$2, %rdx	#, D.6175
	leaq	(%rax,%rdx), %rsi	#, D.6180
	movl	-35392(%rbp), %eax	# comp, tmp894
	movslq	%eax, %rdi	# tmp894, tmp893
	movl	-35412(%rbp), %eax	# i, tmp896
	movslq	%eax, %rdx	# tmp896, tmp895
	movl	-35408(%rbp), %eax	# j, tmp898
	movslq	%eax, %rcx	# tmp898, tmp897
	movq	%rdx, %rax	# tmp895, tmp899
	addq	%rax, %rax	# tmp899
	addq	%rdx, %rax	# tmp895, tmp899
	movq	%rax, %rdx	# tmp899, tmp900
	salq	$4, %rdx	#, tmp900
	subq	%rax, %rdx	# tmp899, tmp900
	movq	%rcx, %rax	# tmp897, tmp901
	addq	%rax, %rax	# tmp901
	addq	%rcx, %rax	# tmp897, tmp901
	addq	%rdx, %rax	# tmp900, tmp902
	addq	%rdi, %rax	# tmp893, tmp903
	addq	$675, %rax	#, tmp904
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6173
	movl	%eax, (%rsi)	# D.6173, *_216
	.loc 1 256 0 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.64
	movq	(%rax), %rax	# *wbp_weight.64_218, D.6178
	movl	-35412(%rbp), %edx	# i, tmp905
	movslq	%edx, %rdx	# tmp905, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_222, D.6179
	movl	-35408(%rbp), %edx	# j, tmp906
	movslq	%edx, %rdx	# tmp906, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_226, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp907
	movslq	%edx, %rdx	# tmp907, D.6175
	salq	$2, %rdx	#, D.6175
	leaq	(%rax,%rdx), %rsi	#, D.6180
	movl	-35392(%rbp), %eax	# comp, tmp909
	movslq	%eax, %rdi	# tmp909, tmp908
	movl	-35412(%rbp), %eax	# i, tmp911
	movslq	%eax, %rdx	# tmp911, tmp910
	movl	-35408(%rbp), %eax	# j, tmp913
	movslq	%eax, %rcx	# tmp913, tmp912
	movq	%rdx, %rax	# tmp910, tmp914
	addq	%rax, %rax	# tmp914
	addq	%rdx, %rax	# tmp910, tmp914
	movq	%rax, %rdx	# tmp914, tmp915
	salq	$4, %rdx	#, tmp915
	subq	%rax, %rdx	# tmp914, tmp915
	movq	%rcx, %rax	# tmp912, tmp916
	addq	%rax, %rax	# tmp916
	addq	%rcx, %rax	# tmp912, tmp916
	addq	%rdx, %rax	# tmp915, tmp917
	addq	%rdi, %rax	# tmp908, tmp918
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6173
	movl	%eax, (%rsi)	# D.6173, *_230
	.loc 1 252 0 discriminator 3
	addl	$1, -35392(%rbp)	#, comp
.L83:
	.loc 1 252 0 is_stmt 0 discriminator 1
	cmpl	$2, -35392(%rbp)	#, comp
	jle	.L86	#,
	.loc 1 250 0 is_stmt 1
	addl	$1, -35408(%rbp)	#, j
.L82:
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L87	#,
	.loc 1 248 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L81:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L88	#,
	.loc 1 261 0 is_stmt 1
	movl	$0, -35388(%rbp)	#, clist
	jmp	.L89	#
.L92:
	.loc 1 263 0
	movl	$0, -35396(%rbp)	#, index
	jmp	.L90	#
.L91:
	.loc 1 265 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.65
	movl	-35388(%rbp), %edx	# clist, tmp919
	movslq	%edx, %rdx	# tmp919, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_242, D.6179
	movl	-35396(%rbp), %edx	# index, tmp920
	movslq	%edx, %rdx	# tmp920, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_246, D.6180
	movl	-35328(%rbp), %edx	# default_weight, D.6173
	movl	%edx, (%rax)	# D.6173, *_247
	.loc 1 266 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.66
	movl	-35388(%rbp), %edx	# clist, tmp921
	movslq	%edx, %rdx	# tmp921, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_252, D.6179
	movl	-35396(%rbp), %edx	# index, tmp922
	movslq	%edx, %rdx	# tmp922, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_256, D.6180
	leaq	4(%rax), %rdx	#, D.6180
	movl	-35324(%rbp), %eax	# default_weight, D.6173
	movl	%eax, (%rdx)	# D.6173, *_258
	.loc 1 267 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.67
	movl	-35388(%rbp), %edx	# clist, tmp923
	movslq	%edx, %rdx	# tmp923, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_263, D.6179
	movl	-35396(%rbp), %edx	# index, tmp924
	movslq	%edx, %rdx	# tmp924, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_267, D.6180
	leaq	8(%rax), %rdx	#, D.6180
	movl	-35320(%rbp), %eax	# default_weight, D.6173
	movl	%eax, (%rdx)	# D.6173, *_269
	.loc 1 268 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.68
	movl	-35388(%rbp), %edx	# clist, tmp925
	movslq	%edx, %rdx	# tmp925, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_274, D.6179
	movl	-35396(%rbp), %edx	# index, tmp926
	movslq	%edx, %rdx	# tmp926, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_278, D.6180
	movl	$0, (%rax)	#, *_279
	.loc 1 269 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.69
	movl	-35388(%rbp), %edx	# clist, tmp927
	movslq	%edx, %rdx	# tmp927, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_283, D.6179
	movl	-35396(%rbp), %edx	# index, tmp928
	movslq	%edx, %rdx	# tmp928, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_287, D.6180
	addq	$4, %rax	#, D.6180
	movl	$0, (%rax)	#, *_289
	.loc 1 270 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.70
	movl	-35388(%rbp), %edx	# clist, tmp929
	movslq	%edx, %rdx	# tmp929, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_293, D.6179
	movl	-35396(%rbp), %edx	# index, tmp930
	movslq	%edx, %rdx	# tmp930, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_297, D.6180
	addq	$8, %rax	#, D.6180
	movl	$0, (%rax)	#, *_299
	.loc 1 263 0 discriminator 2
	addl	$1, -35396(%rbp)	#, index
.L90:
	.loc 1 263 0 is_stmt 0 discriminator 1
	movl	-35388(%rbp), %eax	# clist, tmp932
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6173
	cmpl	-35396(%rbp), %eax	# index, D.6173
	jg	.L91	#,
	.loc 1 261 0 is_stmt 1
	addl	$1, -35388(%rbp)	#, clist
.L89:
	.loc 1 261 0 is_stmt 0 discriminator 1
	movl	-35380(%rbp), %eax	# list_offset, tmp933
	addl	$2, %eax	#, D.6173
	cmpl	-35388(%rbp), %eax	# clist, D.6173
	jg	.L92	#,
	.loc 1 273 0 is_stmt 1
	movl	$0, -35412(%rbp)	#, i
	jmp	.L93	#
.L102:
	.loc 1 275 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L94	#
.L101:
	.loc 1 278 0
	movl	$0, -35404(%rbp)	#, n
	jmp	.L95	#
.L96:
	.loc 1 280 0 discriminator 2
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %edx	# i, tmp934
	movslq	%edx, %rdx	# tmp934, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_315, D.6182
	movq	6440(%rax), %rax	# _316->imgY_11_w, D.6184
	movl	-35404(%rbp), %edx	# n, tmp935
	movslq	%edx, %rdx	# tmp935, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rax, %rdx	# D.6184, D.6184
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp936
	movslq	%ecx, %rcx	# tmp936, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_324, D.6182
	movq	6432(%rax), %rax	# _325->imgY_11, D.6184
	movl	-35404(%rbp), %ecx	# n, tmp937
	movslq	%ecx, %rcx	# tmp937, D.6175
	addq	%rcx, %rcx	# D.6175
	addq	%rcx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_329, D.6185
	movw	%ax, (%rdx)	# D.6185, *_320
	.loc 1 281 0 discriminator 2
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %edx	# j, tmp938
	movslq	%edx, %rdx	# tmp938, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_334, D.6182
	movq	6440(%rax), %rax	# _335->imgY_11_w, D.6184
	movl	-35404(%rbp), %edx	# n, tmp939
	movslq	%edx, %rdx	# tmp939, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rax, %rdx	# D.6184, D.6184
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %ecx	# j, tmp940
	movslq	%ecx, %rcx	# tmp940, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_343, D.6182
	movq	6432(%rax), %rax	# _344->imgY_11, D.6184
	movl	-35404(%rbp), %ecx	# n, tmp941
	movslq	%ecx, %rcx	# tmp941, D.6175
	addq	%rcx, %rcx	# D.6175
	addq	%rcx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_348, D.6185
	movw	%ax, (%rdx)	# D.6185, *_339
	.loc 1 278 0 discriminator 2
	addl	$1, -35404(%rbp)	#, n
.L95:
	.loc 1 278 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.71
	movl	60(%rax), %edx	# img.71_307->height, D.6173
	movq	img(%rip), %rax	# img, img.72
	movl	52(%rax), %eax	# img.72_309->width, D.6173
	imull	%edx, %eax	# D.6173, D.6173
	cmpl	-35404(%rbp), %eax	# n, D.6173
	jg	.L96	#,
	.loc 1 284 0 is_stmt 1
	movl	$0, -35404(%rbp)	#, n
	jmp	.L97	#
.L100:
	.loc 1 286 0
	movl	$0, -35400(%rbp)	#, l
	jmp	.L98	#
.L99:
	.loc 1 288 0 discriminator 2
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %edx	# i, tmp942
	movslq	%edx, %rdx	# tmp942, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_364, D.6182
	movq	6456(%rax), %rax	# _365->imgY_ups_w, D.6186
	movl	-35404(%rbp), %edx	# n, tmp943
	movslq	%edx, %rdx	# tmp943, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_369, D.6184
	movl	-35400(%rbp), %edx	# l, tmp944
	movslq	%edx, %rdx	# tmp944, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rax, %rdx	# D.6184, D.6184
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35412(%rbp), %ecx	# i, tmp945
	movslq	%ecx, %rcx	# tmp945, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_377, D.6182
	movq	6448(%rax), %rax	# _378->imgY_ups, D.6186
	movl	-35404(%rbp), %ecx	# n, tmp946
	movslq	%ecx, %rcx	# tmp946, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_382, D.6184
	movl	-35400(%rbp), %ecx	# l, tmp947
	movslq	%ecx, %rcx	# tmp947, D.6175
	addq	%rcx, %rcx	# D.6175
	addq	%rcx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_386, D.6185
	movw	%ax, (%rdx)	# D.6185, *_373
	.loc 1 289 0 discriminator 2
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %edx	# j, tmp948
	movslq	%edx, %rdx	# tmp948, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_391, D.6182
	movq	6456(%rax), %rax	# _392->imgY_ups_w, D.6186
	movl	-35404(%rbp), %edx	# n, tmp949
	movslq	%edx, %rdx	# tmp949, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_396, D.6184
	movl	-35400(%rbp), %edx	# l, tmp950
	movslq	%edx, %rdx	# tmp950, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rax, %rdx	# D.6184, D.6184
	movq	listX+8(%rip), %rax	# listX, D.6181
	movl	-35408(%rbp), %ecx	# j, tmp951
	movslq	%ecx, %rcx	# tmp951, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_404, D.6182
	movq	6448(%rax), %rax	# _405->imgY_ups, D.6186
	movl	-35404(%rbp), %ecx	# n, tmp952
	movslq	%ecx, %rcx	# tmp952, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_409, D.6184
	movl	-35400(%rbp), %ecx	# l, tmp953
	movslq	%ecx, %rcx	# tmp953, D.6175
	addq	%rcx, %rcx	# D.6175
	addq	%rcx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_413, D.6185
	movw	%ax, (%rdx)	# D.6185, *_400
	.loc 1 286 0 discriminator 2
	addl	$1, -35400(%rbp)	#, l
.L98:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.73
	movl	52(%rax), %eax	# img.73_357->width, D.6173
	addl	$8, %eax	#, D.6173
	sall	$2, %eax	#, D.6173
	cmpl	-35400(%rbp), %eax	# l, D.6173
	jg	.L99	#,
	.loc 1 284 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, n
.L97:
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.74
	movl	60(%rax), %eax	# img.74_352->height, D.6173
	addl	$8, %eax	#, D.6173
	sall	$2, %eax	#, D.6173
	cmpl	-35404(%rbp), %eax	# n, D.6173
	jg	.L100	#,
	.loc 1 275 0 is_stmt 1
	addl	$1, -35408(%rbp)	#, j
.L94:
	.loc 1 275 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L101	#,
	.loc 1 273 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L93:
	.loc 1 273 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L102	#,
	jmp	.L51	#
.L80:
	.loc 1 297 0 is_stmt 1
	movl	$0, -35412(%rbp)	#, i
	jmp	.L104	#
.L107:
	.loc 1 299 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L105	#
.L106:
	.loc 1 301 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.75
	movl	-35412(%rbp), %edx	# i, tmp954
	movslq	%edx, %rdx	# tmp954, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_428, D.6184
	movl	-35408(%rbp), %edx	# j, tmp955
	movslq	%edx, %rdx	# tmp955, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_432, D.6185
	movzwl	%ax, %eax	# D.6185, tmp956
	cvtsi2sd	%eax, %xmm0	# tmp956, D.6187
	movsd	-35352(%rbp), %xmm1	# dc_org, tmp958
	addsd	%xmm1, %xmm0	# tmp958, tmp957
	movsd	%xmm0, -35352(%rbp)	# tmp957, dc_org
	.loc 1 299 0 discriminator 2
	addl	$1, -35408(%rbp)	#, j
.L105:
	.loc 1 299 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.76
	movl	52(%rax), %eax	# img.76_423->width, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L106	#,
	.loc 1 297 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L104:
	.loc 1 297 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.77
	movl	60(%rax), %eax	# img.77_420->height, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L107	#,
	.loc 1 305 0 is_stmt 1
	movl	$0, -35388(%rbp)	#, clist
	jmp	.L108	#
.L128:
	.loc 1 307 0
	movl	$0, -35404(%rbp)	#, n
	jmp	.L109	#
.L127:
	.loc 1 309 0
	movl	-35404(%rbp), %eax	# n, tmp960
	movslq	%eax, %rcx	# tmp960, tmp959
	movl	-35388(%rbp), %eax	# clist, tmp962
	movslq	%eax, %rdx	# tmp962, tmp961
	movq	%rdx, %rax	# tmp961, tmp963
	salq	$4, %rax	#, tmp964
	subq	%rdx, %rax	# tmp961, tmp963
	leaq	(%rax,%rcx), %rdx	#, tmp965
	movl	$0, %eax	#, tmp966
	movq	%rax, -35312(%rbp,%rdx,8)	# tmp966, dc_ref
	.loc 1 311 0
	movl	-35388(%rbp), %eax	# clist, tmp968
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6181
	movl	-35404(%rbp), %edx	# n, tmp969
	movslq	%edx, %rdx	# tmp969, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_445, D.6182
	movq	6432(%rax), %rax	# _446->imgY_11, tmp970
	movq	%rax, -35344(%rbp)	# tmp970, ref_pic
	.loc 1 312 0
	movl	-35388(%rbp), %eax	# clist, tmp972
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6181
	movl	-35404(%rbp), %edx	# n, tmp973
	movslq	%edx, %rdx	# tmp973, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_451, D.6182
	movq	6440(%rax), %rax	# _452->imgY_11_w, tmp974
	movq	%rax, -35336(%rbp)	# tmp974, ref_pic_w
	.loc 1 315 0
	movl	$0, -35412(%rbp)	#, i
	jmp	.L110	#
.L111:
	.loc 1 317 0 discriminator 2
	movl	-35404(%rbp), %eax	# n, tmp976
	movslq	%eax, %rcx	# tmp976, tmp975
	movl	-35388(%rbp), %eax	# clist, tmp978
	movslq	%eax, %rdx	# tmp978, tmp977
	movq	%rdx, %rax	# tmp977, tmp979
	salq	$4, %rax	#, tmp980
	subq	%rdx, %rax	# tmp977, tmp979
	addq	%rcx, %rax	# tmp975, tmp981
	movsd	-35312(%rbp,%rax,8), %xmm1	# dc_ref, D.6187
	movl	-35412(%rbp), %eax	# i, tmp982
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6175
	movq	-35344(%rbp), %rax	# ref_pic, tmp983
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_463, D.6185
	movzwl	%ax, %eax	# D.6185, tmp984
	cvtsi2sd	%eax, %xmm0	# tmp984, D.6187
	addsd	%xmm1, %xmm0	# D.6187, D.6187
	movl	-35404(%rbp), %eax	# n, tmp986
	movslq	%eax, %rcx	# tmp986, tmp985
	movl	-35388(%rbp), %eax	# clist, tmp988
	movslq	%eax, %rdx	# tmp988, tmp987
	movq	%rdx, %rax	# tmp987, tmp989
	salq	$4, %rax	#, tmp990
	subq	%rdx, %rax	# tmp987, tmp989
	addq	%rcx, %rax	# tmp985, tmp991
	movsd	%xmm0, -35312(%rbp,%rax,8)	# D.6187, dc_ref
	.loc 1 315 0 discriminator 2
	addl	$1, -35412(%rbp)	#, i
.L110:
	.loc 1 315 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.78
	movl	60(%rax), %edx	# img.78_455->height, D.6173
	movq	img(%rip), %rax	# img, img.79
	movl	52(%rax), %eax	# img.79_457->width, D.6173
	imull	%edx, %eax	# D.6173, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L111	#,
	.loc 1 319 0 is_stmt 1
	movl	-35404(%rbp), %eax	# n, tmp993
	movslq	%eax, %rcx	# tmp993, tmp992
	movl	-35388(%rbp), %eax	# clist, tmp995
	movslq	%eax, %rdx	# tmp995, tmp994
	movq	%rdx, %rax	# tmp994, tmp996
	salq	$4, %rax	#, tmp997
	subq	%rdx, %rax	# tmp994, tmp996
	addq	%rcx, %rax	# tmp992, tmp998
	movsd	-35312(%rbp,%rax,8), %xmm0	# dc_ref, D.6187
	xorpd	%xmm1, %xmm1	# tmp999
	ucomisd	%xmm1, %xmm0	# tmp999, D.6187
	jp	.L149	#,
	xorpd	%xmm1, %xmm1	# tmp1000
	ucomisd	%xmm1, %xmm0	# tmp1000, D.6187
	je	.L150	#,
.L149:
	.loc 1 320 0
	movl	-35328(%rbp), %eax	# default_weight, D.6173
	cvtsi2sd	%eax, %xmm0	# D.6173, D.6187
	mulsd	-35352(%rbp), %xmm0	# dc_org, D.6187
	movl	-35404(%rbp), %eax	# n, tmp1002
	movslq	%eax, %rcx	# tmp1002, tmp1001
	movl	-35388(%rbp), %eax	# clist, tmp1004
	movslq	%eax, %rdx	# tmp1004, tmp1003
	movq	%rdx, %rax	# tmp1003, tmp1005
	salq	$4, %rax	#, tmp1006
	subq	%rdx, %rax	# tmp1003, tmp1005
	addq	%rcx, %rax	# tmp1001, tmp1007
	movsd	-35312(%rbp,%rax,8), %xmm1	# dc_ref, D.6187
	divsd	%xmm1, %xmm0	# D.6187, D.6187
	movsd	.LC1(%rip), %xmm1	#, tmp1008
	addsd	%xmm1, %xmm0	# tmp1008, D.6187
	cvttsd2si	%xmm0, %eax	# D.6187, tmp1009
	movl	%eax, -35384(%rbp)	# tmp1009, wf_weight
	jmp	.L114	#
.L150:
	.loc 1 322 0
	movl	-35328(%rbp), %eax	# default_weight, tmp1010
	movl	%eax, -35384(%rbp)	# tmp1010, wf_weight
.L114:
	.loc 1 323 0
	cmpl	$-64, -35384(%rbp)	#, wf_weight
	jl	.L115	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	cmpl	$127, -35384(%rbp)	#, wf_weight
	jle	.L116	#,
.L115:
	.loc 1 325 0 is_stmt 1
	movl	-35328(%rbp), %eax	# default_weight, tmp1011
	movl	%eax, -35384(%rbp)	# tmp1011, wf_weight
.L116:
	.loc 1 327 0
	movl	$0, -35356(%rbp)	#, wf_offset
	.loc 1 332 0
	movl	-35404(%rbp), %eax	# n, tmp1013
	movslq	%eax, %rdx	# tmp1013, tmp1012
	movl	-35388(%rbp), %eax	# clist, tmp1015
	movslq	%eax, %rcx	# tmp1015, tmp1014
	movq	%rdx, %rax	# tmp1012, tmp1016
	addq	%rax, %rax	# tmp1016
	addq	%rdx, %rax	# tmp1012, tmp1016
	salq	$2, %rax	#, tmp1017
	imulq	$180, %rcx, %rdx	#, tmp1014, tmp1018
	addq	%rdx, %rax	# tmp1018, tmp1019
	addq	%rbp, %rax	#, tmp1020
	leaq	-34592(%rax), %rdx	#, tmp1021
	movl	-35384(%rbp), %eax	# wf_weight, tmp1022
	movl	%eax, (%rdx)	# tmp1022, weight
	.loc 1 333 0
	movl	-35324(%rbp), %ecx	# default_weight, D.6173
	movl	-35404(%rbp), %eax	# n, tmp1024
	movslq	%eax, %rdx	# tmp1024, tmp1023
	movl	-35388(%rbp), %eax	# clist, tmp1026
	movslq	%eax, %rsi	# tmp1026, tmp1025
	movq	%rdx, %rax	# tmp1023, tmp1027
	addq	%rax, %rax	# tmp1027
	addq	%rdx, %rax	# tmp1023, tmp1027
	salq	$2, %rax	#, tmp1028
	imulq	$180, %rsi, %rdx	#, tmp1025, tmp1029
	addq	%rdx, %rax	# tmp1029, tmp1030
	addq	%rbp, %rax	#, tmp1031
	subq	$34588, %rax	#, tmp1032
	movl	%ecx, (%rax)	# D.6173, weight
	.loc 1 334 0
	movl	-35320(%rbp), %ecx	# default_weight, D.6173
	movl	-35404(%rbp), %eax	# n, tmp1034
	movslq	%eax, %rdx	# tmp1034, tmp1033
	movl	-35388(%rbp), %eax	# clist, tmp1036
	movslq	%eax, %rsi	# tmp1036, tmp1035
	movq	%rdx, %rax	# tmp1033, tmp1037
	addq	%rax, %rax	# tmp1037
	addq	%rdx, %rax	# tmp1033, tmp1037
	salq	$2, %rax	#, tmp1038
	imulq	$180, %rsi, %rdx	#, tmp1035, tmp1039
	addq	%rdx, %rax	# tmp1039, tmp1040
	addq	%rbp, %rax	#, tmp1041
	subq	$34584, %rax	#, tmp1042
	movl	%ecx, (%rax)	# D.6173, weight
	.loc 1 335 0
	movl	-35404(%rbp), %eax	# n, tmp1044
	movslq	%eax, %rdx	# tmp1044, tmp1043
	movl	-35388(%rbp), %eax	# clist, tmp1046
	movslq	%eax, %rcx	# tmp1046, tmp1045
	movq	%rdx, %rax	# tmp1043, tmp1047
	addq	%rax, %rax	# tmp1047
	addq	%rdx, %rax	# tmp1043, tmp1047
	salq	$2, %rax	#, tmp1048
	imulq	$180, %rcx, %rdx	#, tmp1045, tmp1049
	addq	%rdx, %rax	# tmp1049, tmp1050
	addq	%rbp, %rax	#, tmp1051
	subq	$33504, %rax	#, tmp1052
	movl	$0, (%rax)	#, offset
	.loc 1 336 0
	movl	-35404(%rbp), %eax	# n, tmp1054
	movslq	%eax, %rdx	# tmp1054, tmp1053
	movl	-35388(%rbp), %eax	# clist, tmp1056
	movslq	%eax, %rcx	# tmp1056, tmp1055
	movq	%rdx, %rax	# tmp1053, tmp1057
	addq	%rax, %rax	# tmp1057
	addq	%rdx, %rax	# tmp1053, tmp1057
	salq	$2, %rax	#, tmp1058
	imulq	$180, %rcx, %rdx	#, tmp1055, tmp1059
	addq	%rdx, %rax	# tmp1059, tmp1060
	addq	%rbp, %rax	#, tmp1061
	subq	$33500, %rax	#, tmp1062
	movl	$0, (%rax)	#, offset
	.loc 1 337 0
	movl	-35404(%rbp), %eax	# n, tmp1064
	movslq	%eax, %rdx	# tmp1064, tmp1063
	movl	-35388(%rbp), %eax	# clist, tmp1066
	movslq	%eax, %rcx	# tmp1066, tmp1065
	movq	%rdx, %rax	# tmp1063, tmp1067
	addq	%rax, %rax	# tmp1067
	addq	%rdx, %rax	# tmp1063, tmp1067
	salq	$2, %rax	#, tmp1068
	imulq	$180, %rcx, %rdx	#, tmp1065, tmp1069
	addq	%rdx, %rax	# tmp1069, tmp1070
	addq	%rbp, %rax	#, tmp1071
	subq	$33496, %rax	#, tmp1072
	movl	$0, (%rax)	#, offset
	.loc 1 341 0
	movl	$0, -35412(%rbp)	#, i
	jmp	.L117	#
.L120:
	.loc 1 343 0
	movl	-35412(%rbp), %eax	# i, tmp1073
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6175
	movq	-35336(%rbp), %rax	# ref_pic_w, tmp1074
	leaq	(%rdx,%rax), %rsi	#, D.6184
	movl	-35412(%rbp), %eax	# i, tmp1075
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6175
	movq	-35344(%rbp), %rax	# ref_pic, tmp1076
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_492, D.6185
	movzwl	%ax, %eax	# D.6185, D.6173
	imull	-35384(%rbp), %eax	# wf_weight, D.6173
	movl	%eax, %edx	# D.6173, D.6173
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.81
	addl	%eax, %edx	# wp_luma_round.81, D.6173
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.82
	movl	%eax, %ecx	# luma_log_weight_denom.82, tmp1188
	sarl	%cl, %edx	# tmp1188, D.6173
	movl	-35356(%rbp), %eax	# wf_offset, tmp1077
	addl	%edx, %eax	# D.6173, D.6173
	testl	%eax, %eax	# D.6173
	js	.L118	#,
	.loc 1 343 0 is_stmt 0 discriminator 1
	movl	-35412(%rbp), %eax	# i, tmp1078
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6175
	movq	-35344(%rbp), %rax	# ref_pic, tmp1079
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_503, D.6185
	movzwl	%ax, %eax	# D.6185, D.6173
	imull	-35384(%rbp), %eax	# wf_weight, D.6173
	movl	%eax, %edx	# D.6173, D.6173
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.83
	addl	%eax, %edx	# wp_luma_round.83, D.6173
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.84
	movl	%eax, %ecx	# luma_log_weight_denom.84, tmp1190
	sarl	%cl, %edx	# tmp1190, D.6173
	movl	-35356(%rbp), %eax	# wf_offset, tmp1080
	addl	%eax, %edx	# tmp1080, D.6173
	movq	img(%rip), %rax	# img, img.85
	movl	72684(%rax), %eax	# img.85_512->max_imgpel_value, D.6173
	cmpl	%eax, %edx	# D.6173, D.6173
	cmovle	%edx, %eax	# D.6173,, D.6173
	jmp	.L119	#
.L118:
	.loc 1 343 0 discriminator 2
	movl	$0, %eax	#, iftmp.80
.L119:
	.loc 1 343 0 discriminator 3
	movw	%ax, (%rsi)	# iftmp.80, *_489
	.loc 1 341 0 is_stmt 1 discriminator 3
	addl	$1, -35412(%rbp)	#, i
.L117:
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.86
	movl	60(%rax), %edx	# img.86_482->height, D.6173
	movq	img(%rip), %rax	# img, img.87
	movl	52(%rax), %eax	# img.87_484->width, D.6173
	imull	%edx, %eax	# D.6173, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L120	#,
	.loc 1 345 0 is_stmt 1
	movl	$0, -35412(%rbp)	#, i
	jmp	.L121	#
.L126:
	.loc 1 347 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L122	#
.L125:
	.loc 1 349 0
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35404(%rbp), %edx	# n, tmp1081
	movslq	%edx, %rdx	# tmp1081, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_531, D.6182
	movq	6456(%rax), %rax	# _532->imgY_ups_w, D.6186
	movl	-35412(%rbp), %edx	# i, tmp1082
	movslq	%edx, %rdx	# tmp1082, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_536, D.6184
	movl	-35408(%rbp), %edx	# j, tmp1083
	movslq	%edx, %rdx	# tmp1083, D.6175
	addq	%rdx, %rdx	# D.6175
	leaq	(%rax,%rdx), %rsi	#, D.6184
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35404(%rbp), %edx	# n, tmp1084
	movslq	%edx, %rdx	# tmp1084, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_544, D.6182
	movq	6448(%rax), %rax	# _545->imgY_ups, D.6186
	movl	-35412(%rbp), %edx	# i, tmp1085
	movslq	%edx, %rdx	# tmp1085, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_549, D.6184
	movl	-35408(%rbp), %edx	# j, tmp1086
	movslq	%edx, %rdx	# tmp1086, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_553, D.6185
	movzwl	%ax, %eax	# D.6185, D.6173
	imull	-35384(%rbp), %eax	# wf_weight, D.6173
	movl	%eax, %edx	# D.6173, D.6173
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.89
	addl	%eax, %edx	# wp_luma_round.89, D.6173
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.90
	movl	%eax, %ecx	# luma_log_weight_denom.90, tmp1192
	sarl	%cl, %edx	# tmp1192, D.6173
	movl	-35356(%rbp), %eax	# wf_offset, tmp1087
	addl	%edx, %eax	# D.6173, D.6173
	testl	%eax, %eax	# D.6173
	js	.L123	#,
	.loc 1 349 0 is_stmt 0 discriminator 1
	movq	listX(%rip), %rax	# listX, D.6181
	movl	-35404(%rbp), %edx	# n, tmp1088
	movslq	%edx, %rdx	# tmp1088, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6181
	movq	(%rax), %rax	# *_565, D.6182
	movq	6448(%rax), %rax	# _566->imgY_ups, D.6186
	movl	-35412(%rbp), %edx	# i, tmp1089
	movslq	%edx, %rdx	# tmp1089, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6186
	movq	(%rax), %rax	# *_570, D.6184
	movl	-35408(%rbp), %edx	# j, tmp1090
	movslq	%edx, %rdx	# tmp1090, D.6175
	addq	%rdx, %rdx	# D.6175
	addq	%rdx, %rax	# D.6175, D.6184
	movzwl	(%rax), %eax	# *_574, D.6185
	movzwl	%ax, %eax	# D.6185, D.6173
	imull	-35384(%rbp), %eax	# wf_weight, D.6173
	movl	%eax, %edx	# D.6173, D.6173
	movl	wp_luma_round(%rip), %eax	# wp_luma_round, wp_luma_round.91
	addl	%eax, %edx	# wp_luma_round.91, D.6173
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.92
	movl	%eax, %ecx	# luma_log_weight_denom.92, tmp1194
	sarl	%cl, %edx	# tmp1194, D.6173
	movl	-35356(%rbp), %eax	# wf_offset, tmp1091
	addl	%eax, %edx	# tmp1091, D.6173
	movq	img(%rip), %rax	# img, img.93
	movl	72684(%rax), %eax	# img.93_583->max_imgpel_value, D.6173
	cmpl	%eax, %edx	# D.6173, D.6173
	cmovle	%edx, %eax	# D.6173,, D.6173
	jmp	.L124	#
.L123:
	.loc 1 349 0 discriminator 2
	movl	$0, %eax	#, iftmp.88
.L124:
	.loc 1 349 0 discriminator 3
	movw	%ax, (%rsi)	# iftmp.88, *_540
	.loc 1 347 0 is_stmt 1 discriminator 3
	addl	$1, -35408(%rbp)	#, j
.L122:
	.loc 1 347 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.94
	movl	52(%rax), %eax	# img.94_524->width, D.6173
	addl	$8, %eax	#, D.6173
	sall	$2, %eax	#, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L125	#,
	.loc 1 345 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L121:
	.loc 1 345 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.95
	movl	60(%rax), %eax	# img.95_519->height, D.6173
	addl	$8, %eax	#, D.6173
	sall	$2, %eax	#, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L126	#,
	.loc 1 307 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, n
.L109:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movl	-35388(%rbp), %eax	# clist, tmp1093
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6173
	cmpl	-35404(%rbp), %eax	# n, D.6173
	jg	.L127	#,
	.loc 1 305 0 is_stmt 1
	addl	$1, -35388(%rbp)	#, clist
.L108:
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	-35380(%rbp), %eax	# list_offset, tmp1094
	addl	$2, %eax	#, D.6173
	cmpl	-35388(%rbp), %eax	# clist, D.6173
	jg	.L128	#,
	.loc 1 356 0 is_stmt 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.96
	movl	196(%rax), %eax	# active_pps.96_592->weighted_bipred_idc, D.6177
	cmpl	$1, %eax	#, D.6177
	jne	.L129	#,
	.loc 1 358 0
	movl	$0, -35388(%rbp)	#, clist
	jmp	.L130	#
.L135:
	.loc 1 360 0
	movl	$0, -35396(%rbp)	#, index
	jmp	.L131	#
.L134:
	.loc 1 362 0
	movl	$0, -35392(%rbp)	#, comp
	jmp	.L132	#
.L133:
	.loc 1 364 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.97
	movl	-35388(%rbp), %edx	# clist, tmp1095
	movslq	%edx, %rdx	# tmp1095, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_602, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1096
	movslq	%edx, %rdx	# tmp1096, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_606, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp1097
	movslq	%edx, %rdx	# tmp1097, D.6175
	salq	$2, %rdx	#, D.6175
	leaq	(%rax,%rdx), %rsi	#, D.6180
	movl	-35392(%rbp), %eax	# comp, tmp1099
	movslq	%eax, %rdi	# tmp1099, tmp1098
	movl	-35388(%rbp), %eax	# clist, tmp1101
	movslq	%eax, %rdx	# tmp1101, tmp1100
	movl	-35396(%rbp), %eax	# index, tmp1103
	movslq	%eax, %rcx	# tmp1103, tmp1102
	movq	%rdx, %rax	# tmp1100, tmp1104
	addq	%rax, %rax	# tmp1104
	addq	%rdx, %rax	# tmp1100, tmp1104
	movq	%rax, %rdx	# tmp1104, tmp1105
	salq	$4, %rdx	#, tmp1105
	subq	%rax, %rdx	# tmp1104, tmp1105
	movq	%rcx, %rax	# tmp1102, tmp1106
	addq	%rax, %rax	# tmp1106
	addq	%rcx, %rax	# tmp1102, tmp1106
	addq	%rdx, %rax	# tmp1105, tmp1107
	addq	%rdi, %rax	# tmp1098, tmp1108
	movl	-34592(%rbp,%rax,4), %eax	# weight, D.6173
	movl	%eax, (%rsi)	# D.6173, *_610
	.loc 1 365 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.98
	movl	-35388(%rbp), %edx	# clist, tmp1109
	movslq	%edx, %rdx	# tmp1109, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_615, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1110
	movslq	%edx, %rdx	# tmp1110, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_619, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp1111
	movslq	%edx, %rdx	# tmp1111, D.6175
	salq	$2, %rdx	#, D.6175
	leaq	(%rax,%rdx), %rsi	#, D.6180
	movl	-35392(%rbp), %eax	# comp, tmp1113
	movslq	%eax, %rdi	# tmp1113, tmp1112
	movl	-35388(%rbp), %eax	# clist, tmp1115
	movslq	%eax, %rdx	# tmp1115, tmp1114
	movl	-35396(%rbp), %eax	# index, tmp1117
	movslq	%eax, %rcx	# tmp1117, tmp1116
	movq	%rdx, %rax	# tmp1114, tmp1118
	addq	%rax, %rax	# tmp1118
	addq	%rdx, %rax	# tmp1114, tmp1118
	movq	%rax, %rdx	# tmp1118, tmp1119
	salq	$4, %rdx	#, tmp1119
	subq	%rax, %rdx	# tmp1118, tmp1119
	movq	%rcx, %rax	# tmp1116, tmp1120
	addq	%rax, %rax	# tmp1120
	addq	%rcx, %rax	# tmp1116, tmp1120
	addq	%rdx, %rax	# tmp1119, tmp1121
	addq	%rdi, %rax	# tmp1112, tmp1122
	movl	-33504(%rbp,%rax,4), %eax	# offset, D.6173
	movl	%eax, (%rsi)	# D.6173, *_623
	.loc 1 362 0 discriminator 2
	addl	$1, -35392(%rbp)	#, comp
.L132:
	.loc 1 362 0 is_stmt 0 discriminator 1
	cmpl	$2, -35392(%rbp)	#, comp
	jle	.L133	#,
	.loc 1 360 0 is_stmt 1
	addl	$1, -35396(%rbp)	#, index
.L131:
	.loc 1 360 0 is_stmt 0 discriminator 1
	movl	-35388(%rbp), %eax	# clist, tmp1124
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6173
	cmpl	-35396(%rbp), %eax	# index, D.6173
	jg	.L134	#,
	.loc 1 358 0 is_stmt 1
	addl	$1, -35388(%rbp)	#, clist
.L130:
	.loc 1 358 0 is_stmt 0 discriminator 1
	movl	-35380(%rbp), %eax	# list_offset, tmp1125
	addl	$2, %eax	#, D.6173
	cmpl	-35388(%rbp), %eax	# clist, D.6173
	jg	.L135	#,
	jmp	.L136	#
.L129:
	.loc 1 373 0 is_stmt 1
	movl	$0, -35388(%rbp)	#, clist
	jmp	.L137	#
.L140:
	.loc 1 375 0
	movl	$0, -35396(%rbp)	#, index
	jmp	.L138	#
.L139:
	.loc 1 377 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.99
	movl	-35388(%rbp), %edx	# clist, tmp1126
	movslq	%edx, %rdx	# tmp1126, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_635, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1127
	movslq	%edx, %rdx	# tmp1127, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_639, D.6180
	movl	luma_log_weight_denom(%rip), %edx	# luma_log_weight_denom, luma_log_weight_denom.100
	movl	$1, %esi	#, tmp1128
	movl	%edx, %ecx	# luma_log_weight_denom.100, tmp1198
	sall	%cl, %esi	# tmp1198, D.6173
	movl	%esi, %edx	# D.6173, D.6173
	movl	%edx, (%rax)	# D.6173, *_640
	.loc 1 378 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.101
	movl	-35388(%rbp), %edx	# clist, tmp1129
	movslq	%edx, %rdx	# tmp1129, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_646, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1130
	movslq	%edx, %rdx	# tmp1130, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_650, D.6180
	leaq	4(%rax), %rdx	#, D.6180
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.102
	movl	$1, %esi	#, tmp1131
	movl	%eax, %ecx	# chroma_log_weight_denom.102, tmp1200
	sall	%cl, %esi	# tmp1200, D.6173
	movl	%esi, %eax	# D.6173, D.6173
	movl	%eax, (%rdx)	# D.6173, *_652
	.loc 1 379 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.103
	movl	-35388(%rbp), %edx	# clist, tmp1132
	movslq	%edx, %rdx	# tmp1132, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_658, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1133
	movslq	%edx, %rdx	# tmp1133, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_662, D.6180
	leaq	8(%rax), %rdx	#, D.6180
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.104
	movl	$1, %esi	#, tmp1134
	movl	%eax, %ecx	# chroma_log_weight_denom.104, tmp1202
	sall	%cl, %esi	# tmp1202, D.6173
	movl	%esi, %eax	# D.6173, D.6173
	movl	%eax, (%rdx)	# D.6173, *_664
	.loc 1 380 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.105
	movl	-35388(%rbp), %edx	# clist, tmp1135
	movslq	%edx, %rdx	# tmp1135, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_670, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1136
	movslq	%edx, %rdx	# tmp1136, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_674, D.6180
	movl	$0, (%rax)	#, *_675
	.loc 1 381 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.106
	movl	-35388(%rbp), %edx	# clist, tmp1137
	movslq	%edx, %rdx	# tmp1137, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_679, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1138
	movslq	%edx, %rdx	# tmp1138, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_683, D.6180
	addq	$4, %rax	#, D.6180
	movl	$0, (%rax)	#, *_685
	.loc 1 382 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.107
	movl	-35388(%rbp), %edx	# clist, tmp1139
	movslq	%edx, %rdx	# tmp1139, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_689, D.6179
	movl	-35396(%rbp), %edx	# index, tmp1140
	movslq	%edx, %rdx	# tmp1140, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_693, D.6180
	addq	$8, %rax	#, D.6180
	movl	$0, (%rax)	#, *_695
	.loc 1 375 0 discriminator 2
	addl	$1, -35396(%rbp)	#, index
.L138:
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	-35388(%rbp), %eax	# clist, tmp1142
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6173
	cmpl	-35396(%rbp), %eax	# index, D.6173
	jg	.L139	#,
	.loc 1 373 0 is_stmt 1
	addl	$1, -35388(%rbp)	#, clist
.L137:
	.loc 1 373 0 is_stmt 0 discriminator 1
	movl	-35380(%rbp), %eax	# list_offset, tmp1143
	addl	$2, %eax	#, D.6173
	cmpl	-35388(%rbp), %eax	# clist, D.6173
	jg	.L140	#,
.L136:
	.loc 1 386 0 is_stmt 1
	movl	$0, -35412(%rbp)	#, i
	jmp	.L141	#
.L148:
	.loc 1 388 0
	movl	$0, -35408(%rbp)	#, j
	jmp	.L142	#
.L147:
	.loc 1 390 0
	movl	$0, -35392(%rbp)	#, comp
	jmp	.L143	#
.L146:
	.loc 1 392 0
	cmpl	$0, -35392(%rbp)	#, comp
	jne	.L144	#,
	.loc 1 392 0 is_stmt 0 discriminator 1
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, iftmp.108
	jmp	.L145	#
.L144:
	.loc 1 392 0 discriminator 2
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, iftmp.108
.L145:
	.loc 1 392 0 discriminator 3
	movl	%eax, -35360(%rbp)	# iftmp.108, log_weight_denom
	.loc 1 393 0 is_stmt 1 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.109
	movq	(%rax), %rax	# *wbp_weight.109_706, D.6178
	movl	-35412(%rbp), %edx	# i, tmp1144
	movslq	%edx, %rdx	# tmp1144, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_710, D.6179
	movl	-35408(%rbp), %edx	# j, tmp1145
	movslq	%edx, %rdx	# tmp1145, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_714, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp1146
	movslq	%edx, %rdx	# tmp1146, D.6175
	salq	$2, %rdx	#, D.6175
	addq	%rax, %rdx	# D.6180, D.6180
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.110
	movq	(%rax), %rax	# *wp_weight.110_719, D.6179
	movl	-35412(%rbp), %ecx	# i, tmp1147
	movslq	%ecx, %rcx	# tmp1147, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_723, D.6180
	movl	-35392(%rbp), %ecx	# comp, tmp1148
	movslq	%ecx, %rcx	# tmp1148, D.6175
	salq	$2, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6180
	movl	(%rax), %eax	# *_727, D.6173
	movl	%eax, (%rdx)	# D.6173, *_718
	.loc 1 394 0 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.111
	addq	$8, %rax	#, D.6183
	movq	(%rax), %rax	# *_730, D.6178
	movl	-35412(%rbp), %edx	# i, tmp1149
	movslq	%edx, %rdx	# tmp1149, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6178
	movq	(%rax), %rax	# *_734, D.6179
	movl	-35408(%rbp), %edx	# j, tmp1150
	movslq	%edx, %rdx	# tmp1150, D.6175
	salq	$3, %rdx	#, D.6175
	addq	%rdx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_738, D.6180
	movl	-35392(%rbp), %edx	# comp, tmp1151
	movslq	%edx, %rdx	# tmp1151, D.6175
	salq	$2, %rdx	#, D.6175
	addq	%rax, %rdx	# D.6180, D.6180
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.112
	addq	$8, %rax	#, D.6178
	movq	(%rax), %rax	# *_744, D.6179
	movl	-35408(%rbp), %ecx	# j, tmp1152
	movslq	%ecx, %rcx	# tmp1152, D.6175
	salq	$3, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6179
	movq	(%rax), %rax	# *_748, D.6180
	movl	-35392(%rbp), %ecx	# comp, tmp1153
	movslq	%ecx, %rcx	# tmp1153, D.6175
	salq	$2, %rcx	#, D.6175
	addq	%rcx, %rax	# D.6175, D.6180
	movl	(%rax), %eax	# *_752, D.6173
	movl	%eax, (%rdx)	# D.6173, *_742
	.loc 1 390 0 discriminator 3
	addl	$1, -35392(%rbp)	#, comp
.L143:
	.loc 1 390 0 is_stmt 0 discriminator 1
	cmpl	$2, -35392(%rbp)	#, comp
	jle	.L146	#,
	.loc 1 388 0 is_stmt 1
	addl	$1, -35408(%rbp)	#, j
.L142:
	.loc 1 388 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6173
	cmpl	-35408(%rbp), %eax	# j, D.6173
	jg	.L147	#,
	.loc 1 386 0 is_stmt 1
	addl	$1, -35412(%rbp)	#, i
.L141:
	.loc 1 386 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6173
	cmpl	-35412(%rbp), %eax	# i, D.6173
	jg	.L148	#,
.L51:
	.loc 1 404 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	estimate_weighting_factor_B_slice, .-estimate_weighting_factor_B_slice
	.globl	test_wp_P_slice
	.type	test_wp_P_slice, @function
test_wp_P_slice:
.LFB4:
	.loc 1 415 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$812, %rsp	#,
	movl	%edi, -932(%rbp)	# select_offset, select_offset
	.loc 1 418 0
	movl	$0, %eax	#, tmp176
	movq	%rax, -888(%rbp)	# tmp176, dc_org
	.loc 1 427 0
	movq	img(%rip), %rax	# img, img.114
	movl	72400(%rax), %eax	# img.114_23->MbaffFrameFlag, D.6188
	testl	%eax, %eax	# D.6188
	je	.L152	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.115
	movq	14168(%rax), %rdx	# img.115_25->mb_data, D.6189
	movq	img(%rip), %rax	# img, img.116
	movl	12(%rax), %eax	# img.116_27->current_mb_nr, D.6188
	cltq
	imulq	$632, %rax, %rax	#, D.6190, D.6190
	addq	%rdx, %rax	# D.6189, D.6189
	movl	532(%rax), %eax	# _31->mb_field, D.6188
	testl	%eax, %eax	# D.6188
	je	.L152	#,
	movq	img(%rip), %rax	# img, img.118
	movl	12(%rax), %eax	# img.118_33->current_mb_nr, D.6188
	andl	$1, %eax	#, D.6191
	testl	%eax, %eax	# D.6191
	je	.L153	#,
	movl	$4, %eax	#, iftmp.117
	jmp	.L154	#
.L153:
	.loc 1 427 0 discriminator 2
	movl	$2, %eax	#, iftmp.117
.L154:
	.loc 1 427 0 discriminator 3
	jmp	.L155	#
.L152:
	.loc 1 427 0 discriminator 2
	movl	$0, %eax	#, iftmp.113
.L155:
	.loc 1 427 0 discriminator 3
	movl	%eax, -900(%rbp)	# iftmp.113, list_offset
	.loc 1 431 0 is_stmt 1 discriminator 3
	movl	$0, -904(%rbp)	#, perform_wp
	.loc 1 434 0 discriminator 3
	movl	$5, luma_log_weight_denom(%rip)	#, luma_log_weight_denom
	.loc 1 435 0 discriminator 3
	movl	$5, chroma_log_weight_denom(%rip)	#, chroma_log_weight_denom
	.loc 1 436 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.119
	subl	$1, %eax	#, D.6188
	movl	$1, %edx	#, tmp177
	movl	%eax, %ecx	# D.6188, tmp405
	sall	%cl, %edx	# tmp405, wp_luma_round.120
	movl	%edx, %eax	# wp_luma_round.120, wp_luma_round.120
	movl	%eax, wp_luma_round(%rip)	# wp_luma_round.120, wp_luma_round
	.loc 1 437 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.121
	subl	$1, %eax	#, D.6188
	movl	$1, %edx	#, tmp178
	movl	%eax, %ecx	# D.6188, tmp407
	sall	%cl, %edx	# tmp407, wp_chroma_round.122
	movl	%edx, %eax	# wp_chroma_round.122, wp_chroma_round.122
	movl	%eax, wp_chroma_round(%rip)	# wp_chroma_round.122, wp_chroma_round
	.loc 1 438 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.123
	movl	$1, %edx	#, tmp179
	movl	%eax, %ecx	# luma_log_weight_denom.123, tmp409
	sall	%cl, %edx	# tmp409, tmp180
	movl	%edx, %eax	# tmp180, tmp180
	movl	%eax, -896(%rbp)	# tmp180, default_weight
	.loc 1 439 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.124
	movl	$1, %edx	#, tmp181
	movl	%eax, %ecx	# chroma_log_weight_denom.124, tmp411
	sall	%cl, %edx	# tmp411, tmp182
	movl	%edx, %eax	# tmp182, tmp182
	movl	%eax, -892(%rbp)	# tmp182, default_weight_chroma
	.loc 1 442 0 discriminator 3
	movl	$0, -928(%rbp)	#, i
	jmp	.L156	#
.L161:
	.loc 1 444 0
	movl	$0, -924(%rbp)	#, j
	jmp	.L157	#
.L160:
	.loc 1 446 0
	movl	$0, -920(%rbp)	#, n
	jmp	.L158	#
.L159:
	.loc 1 448 0 discriminator 2
	movl	-920(%rbp), %eax	# n, tmp184
	movslq	%eax, %rsi	# tmp184, tmp183
	movl	-928(%rbp), %eax	# i, tmp186
	movslq	%eax, %rdx	# tmp186, tmp185
	movl	-924(%rbp), %eax	# j, tmp188
	movslq	%eax, %rcx	# tmp188, tmp187
	movq	%rdx, %rax	# tmp185, tmp189
	addq	%rax, %rax	# tmp189
	addq	%rdx, %rax	# tmp185, tmp189
	movq	%rax, %rdx	# tmp189, tmp190
	salq	$4, %rdx	#, tmp190
	subq	%rax, %rdx	# tmp189, tmp190
	movq	%rcx, %rax	# tmp187, tmp191
	addq	%rax, %rax	# tmp191
	addq	%rcx, %rax	# tmp187, tmp191
	addq	%rdx, %rax	# tmp190, tmp192
	leaq	(%rax,%rsi), %rdx	#, tmp193
	movl	-896(%rbp), %eax	# default_weight, tmp194
	movl	%eax, -736(%rbp,%rdx,4)	# tmp194, weight
	.loc 1 449 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.125
	movl	-928(%rbp), %edx	# i, tmp195
	movslq	%edx, %rdx	# tmp195, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6192
	movq	(%rax), %rax	# *_61, D.6193
	movl	-924(%rbp), %edx	# j, tmp196
	movslq	%edx, %rdx	# tmp196, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6193
	movq	(%rax), %rax	# *_65, D.6194
	movl	-920(%rbp), %edx	# n, tmp197
	movslq	%edx, %rdx	# tmp197, D.6190
	salq	$2, %rdx	#, D.6190
	addq	%rax, %rdx	# D.6194, D.6194
	movl	-896(%rbp), %eax	# default_weight, tmp198
	movl	%eax, (%rdx)	# tmp198, *_69
	.loc 1 450 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.126
	movl	-928(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6192
	movq	(%rax), %rax	# *_73, D.6193
	movl	-924(%rbp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6193
	movq	(%rax), %rax	# *_77, D.6194
	movl	-920(%rbp), %edx	# n, tmp201
	movslq	%edx, %rdx	# tmp201, D.6190
	salq	$2, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6194
	movl	$0, (%rax)	#, *_81
	.loc 1 451 0 discriminator 2
	movl	-920(%rbp), %eax	# n, tmp203
	movslq	%eax, %rsi	# tmp203, tmp202
	movl	-928(%rbp), %eax	# i, tmp205
	movslq	%eax, %rdx	# tmp205, tmp204
	movl	-924(%rbp), %eax	# j, tmp207
	movslq	%eax, %rcx	# tmp207, tmp206
	movq	%rdx, %rax	# tmp204, tmp208
	addq	%rax, %rax	# tmp208
	addq	%rdx, %rax	# tmp204, tmp208
	movq	%rax, %rdx	# tmp208, tmp209
	salq	$4, %rdx	#, tmp209
	subq	%rax, %rdx	# tmp208, tmp209
	movq	%rcx, %rax	# tmp206, tmp210
	addq	%rax, %rax	# tmp210
	addq	%rcx, %rax	# tmp206, tmp210
	addq	%rdx, %rax	# tmp209, tmp211
	addq	%rsi, %rax	# tmp202, tmp212
	movl	$0, -368(%rbp,%rax,4)	#, offset
	.loc 1 446 0 discriminator 2
	addl	$1, -920(%rbp)	#, n
.L158:
	.loc 1 446 0 is_stmt 0 discriminator 1
	cmpl	$2, -920(%rbp)	#, n
	jle	.L159	#,
	.loc 1 444 0 is_stmt 1
	addl	$1, -924(%rbp)	#, j
.L157:
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	-928(%rbp), %eax	# i, tmp214
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6188
	cmpl	-924(%rbp), %eax	# j, D.6188
	jg	.L160	#,
	.loc 1 442 0 is_stmt 1
	addl	$1, -928(%rbp)	#, i
.L156:
	.loc 1 442 0 is_stmt 0 discriminator 1
	movl	-900(%rbp), %eax	# list_offset, tmp215
	addl	$2, %eax	#, D.6188
	cmpl	-928(%rbp), %eax	# i, D.6188
	jg	.L161	#,
	.loc 1 456 0 is_stmt 1
	movl	$0, -928(%rbp)	#, i
	jmp	.L162	#
.L165:
	.loc 1 458 0
	movl	$0, -924(%rbp)	#, j
	jmp	.L163	#
.L164:
	.loc 1 460 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.127
	movl	-928(%rbp), %edx	# i, tmp216
	movslq	%edx, %rdx	# tmp216, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6195
	movq	(%rax), %rax	# *_94, D.6196
	movl	-924(%rbp), %edx	# j, tmp217
	movslq	%edx, %rdx	# tmp217, D.6190
	addq	%rdx, %rdx	# D.6190
	addq	%rdx, %rax	# D.6190, D.6196
	movzwl	(%rax), %eax	# *_98, D.6197
	movzwl	%ax, %eax	# D.6197, tmp218
	cvtsi2sd	%eax, %xmm0	# tmp218, D.6198
	movsd	-888(%rbp), %xmm1	# dc_org, tmp220
	addsd	%xmm1, %xmm0	# tmp220, tmp219
	movsd	%xmm0, -888(%rbp)	# tmp219, dc_org
	.loc 1 458 0 discriminator 2
	addl	$1, -924(%rbp)	#, j
.L163:
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.128
	movl	52(%rax), %eax	# img.128_89->width, D.6188
	cmpl	-924(%rbp), %eax	# j, D.6188
	jg	.L164	#,
	.loc 1 456 0 is_stmt 1
	addl	$1, -928(%rbp)	#, i
.L162:
	.loc 1 456 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.129
	movl	60(%rax), %eax	# img.129_86->height, D.6188
	cmpl	-928(%rbp), %eax	# i, D.6188
	jg	.L165	#,
	.loc 1 464 0 is_stmt 1
	movl	$0, -908(%rbp)	#, clist
	jmp	.L166	#
.L180:
	.loc 1 466 0
	movl	$0, -920(%rbp)	#, n
	jmp	.L167	#
.L179:
	.loc 1 468 0
	movl	-920(%rbp), %eax	# n, tmp222
	movslq	%eax, %rdx	# tmp222, tmp221
	movl	$0, %eax	#, tmp223
	movq	%rax, -864(%rbp,%rdx,8)	# tmp223, dc_ref
	.loc 1 470 0
	movl	-908(%rbp), %eax	# clist, tmp225
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6199
	movl	-920(%rbp), %edx	# n, tmp226
	movslq	%edx, %rdx	# tmp226, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6199
	movq	(%rax), %rax	# *_111, D.6200
	movq	6432(%rax), %rax	# _112->imgY_11, tmp227
	movq	%rax, -880(%rbp)	# tmp227, ref_pic
	.loc 1 471 0
	movl	-908(%rbp), %eax	# clist, tmp229
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6199
	movl	-920(%rbp), %edx	# n, tmp230
	movslq	%edx, %rdx	# tmp230, D.6190
	salq	$3, %rdx	#, D.6190
	addq	%rdx, %rax	# D.6190, D.6199
	movq	(%rax), %rax	# *_117, D.6200
	movq	6440(%rax), %rax	# _118->imgY_11_w, tmp231
	movq	%rax, -872(%rbp)	# tmp231, ref_pic_w
	.loc 1 474 0
	movl	$0, -928(%rbp)	#, i
	jmp	.L168	#
.L169:
	.loc 1 476 0 discriminator 2
	movl	-920(%rbp), %eax	# n, tmp233
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6198
	movl	-928(%rbp), %eax	# i, tmp234
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6190
	movq	-880(%rbp), %rax	# ref_pic, tmp235
	addq	%rdx, %rax	# D.6190, D.6196
	movzwl	(%rax), %eax	# *_129, D.6197
	movzwl	%ax, %eax	# D.6197, tmp236
	cvtsi2sd	%eax, %xmm0	# tmp236, D.6198
	addsd	%xmm1, %xmm0	# D.6198, D.6198
	movl	-920(%rbp), %eax	# n, tmp238
	cltq
	movsd	%xmm0, -864(%rbp,%rax,8)	# D.6198, dc_ref
	.loc 1 474 0 discriminator 2
	addl	$1, -928(%rbp)	#, i
.L168:
	.loc 1 474 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.130
	movl	60(%rax), %edx	# img.130_121->height, D.6188
	movq	img(%rip), %rax	# img, img.131
	movl	52(%rax), %eax	# img.131_123->width, D.6188
	imull	%edx, %eax	# D.6188, D.6188
	cmpl	-928(%rbp), %eax	# i, D.6188
	jg	.L169	#,
	.loc 1 479 0 is_stmt 1
	cmpl	$0, -932(%rbp)	#, select_offset
	jne	.L170	#,
	.loc 1 481 0
	movl	-920(%rbp), %eax	# n, tmp240
	cltq
	movsd	-864(%rbp,%rax,8), %xmm0	# dc_ref, D.6198
	xorpd	%xmm1, %xmm1	# tmp241
	ucomisd	%xmm1, %xmm0	# tmp241, D.6198
	jp	.L195	#,
	xorpd	%xmm1, %xmm1	# tmp242
	ucomisd	%xmm1, %xmm0	# tmp242, D.6198
	je	.L196	#,
.L195:
	.loc 1 482 0
	cvtsi2sd	-896(%rbp), %xmm0	# default_weight, D.6198
	mulsd	-888(%rbp), %xmm0	# dc_org, D.6198
	movl	-920(%rbp), %eax	# n, tmp244
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6198
	divsd	%xmm1, %xmm0	# D.6198, D.6198
	movsd	.LC1(%rip), %xmm1	#, tmp245
	addsd	%xmm1, %xmm0	# tmp245, D.6198
	cvttsd2si	%xmm0, %ecx	# D.6198, D.6188
	movl	-920(%rbp), %eax	# n, tmp247
	movslq	%eax, %rdx	# tmp247, tmp246
	movl	-908(%rbp), %eax	# clist, tmp249
	movslq	%eax, %rsi	# tmp249, tmp248
	movq	%rdx, %rax	# tmp246, tmp250
	addq	%rax, %rax	# tmp250
	addq	%rdx, %rax	# tmp246, tmp250
	salq	$2, %rax	#, tmp251
	imulq	$180, %rsi, %rdx	#, tmp248, tmp252
	addq	%rdx, %rax	# tmp252, tmp253
	addq	%rbp, %rax	#, tmp254
	subq	$736, %rax	#, tmp255
	movl	%ecx, (%rax)	# D.6188, weight
	jmp	.L173	#
.L196:
	.loc 1 484 0
	movl	-920(%rbp), %eax	# n, tmp257
	movslq	%eax, %rdx	# tmp257, tmp256
	movl	-908(%rbp), %eax	# clist, tmp259
	movslq	%eax, %rcx	# tmp259, tmp258
	movq	%rdx, %rax	# tmp256, tmp260
	addq	%rax, %rax	# tmp260
	addq	%rdx, %rax	# tmp256, tmp260
	salq	$2, %rax	#, tmp261
	imulq	$180, %rcx, %rdx	#, tmp258, tmp262
	addq	%rdx, %rax	# tmp262, tmp263
	addq	%rbp, %rax	#, tmp264
	leaq	-736(%rax), %rdx	#, tmp265
	movl	-896(%rbp), %eax	# default_weight, tmp266
	movl	%eax, (%rdx)	# tmp266, weight
.L173:
	.loc 1 485 0
	movl	-920(%rbp), %eax	# n, tmp268
	movslq	%eax, %rdx	# tmp268, tmp267
	movl	-908(%rbp), %eax	# clist, tmp270
	movslq	%eax, %rcx	# tmp270, tmp269
	movq	%rdx, %rax	# tmp267, tmp271
	addq	%rax, %rax	# tmp271
	addq	%rdx, %rax	# tmp267, tmp271
	salq	$2, %rax	#, tmp272
	imulq	$180, %rcx, %rdx	#, tmp269, tmp273
	addq	%rdx, %rax	# tmp273, tmp274
	addq	%rbp, %rax	#, tmp275
	subq	$736, %rax	#, tmp276
	movl	(%rax), %eax	# weight, D.6188
	cmpl	$-64, %eax	#, D.6188
	jl	.L174	#,
	.loc 1 485 0 is_stmt 0 discriminator 1
	movl	-920(%rbp), %eax	# n, tmp278
	movslq	%eax, %rdx	# tmp278, tmp277
	movl	-908(%rbp), %eax	# clist, tmp280
	movslq	%eax, %rcx	# tmp280, tmp279
	movq	%rdx, %rax	# tmp277, tmp281
	addq	%rax, %rax	# tmp281
	addq	%rdx, %rax	# tmp277, tmp281
	salq	$2, %rax	#, tmp282
	imulq	$180, %rcx, %rdx	#, tmp279, tmp283
	addq	%rdx, %rax	# tmp283, tmp284
	addq	%rbp, %rax	#, tmp285
	subq	$736, %rax	#, tmp286
	movl	(%rax), %eax	# weight, D.6188
	cmpl	$127, %eax	#, D.6188
	jle	.L176	#,
.L174:
	.loc 1 486 0 is_stmt 1
	movl	-920(%rbp), %eax	# n, tmp288
	movslq	%eax, %rdx	# tmp288, tmp287
	movl	-908(%rbp), %eax	# clist, tmp290
	movslq	%eax, %rcx	# tmp290, tmp289
	movq	%rdx, %rax	# tmp287, tmp291
	addq	%rax, %rax	# tmp291
	addq	%rdx, %rax	# tmp287, tmp291
	salq	$2, %rax	#, tmp292
	imulq	$180, %rcx, %rdx	#, tmp289, tmp293
	addq	%rdx, %rax	# tmp293, tmp294
	addq	%rbp, %rax	#, tmp295
	subq	$736, %rax	#, tmp296
	movl	$32, (%rax)	#, weight
	jmp	.L176	#
.L170:
	.loc 1 490 0
	movl	-920(%rbp), %eax	# n, tmp298
	cltq
	movsd	-864(%rbp,%rax,8), %xmm1	# dc_ref, D.6198
	movsd	-888(%rbp), %xmm0	# dc_org, tmp299
	subsd	%xmm1, %xmm0	# D.6198, D.6198
	movq	img(%rip), %rax	# img, img.132
	movl	60(%rax), %edx	# img.132_146->height, D.6188
	movq	img(%rip), %rax	# img, img.133
	movl	52(%rax), %eax	# img.133_148->width, D.6188
	imull	%edx, %eax	# D.6188, D.6188
	cvtsi2sd	%eax, %xmm1	# D.6188, D.6198
	divsd	%xmm1, %xmm0	# D.6198, D.6198
	movsd	.LC1(%rip), %xmm1	#, tmp300
	addsd	%xmm1, %xmm0	# tmp300, D.6198
	cvttsd2si	%xmm0, %ecx	# D.6198, D.6188
	movl	-920(%rbp), %eax	# n, tmp302
	movslq	%eax, %rdx	# tmp302, tmp301
	movl	-908(%rbp), %eax	# clist, tmp304
	movslq	%eax, %rsi	# tmp304, tmp303
	movq	%rdx, %rax	# tmp301, tmp305
	addq	%rax, %rax	# tmp305
	addq	%rdx, %rax	# tmp301, tmp305
	salq	$2, %rax	#, tmp306
	imulq	$180, %rsi, %rdx	#, tmp303, tmp307
	addq	%rdx, %rax	# tmp307, tmp308
	addq	%rbp, %rax	#, tmp309
	subq	$368, %rax	#, tmp310
	movl	%ecx, (%rax)	# D.6188, offset
	.loc 1 492 0
	movl	-920(%rbp), %eax	# n, tmp312
	movslq	%eax, %rdx	# tmp312, tmp311
	movl	-908(%rbp), %eax	# clist, tmp314
	movslq	%eax, %rcx	# tmp314, tmp313
	movq	%rdx, %rax	# tmp311, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# tmp311, tmp315
	salq	$2, %rax	#, tmp316
	imulq	$180, %rcx, %rdx	#, tmp313, tmp317
	addq	%rdx, %rax	# tmp317, tmp318
	addq	%rbp, %rax	#, tmp319
	subq	$368, %rax	#, tmp320
	movl	(%rax), %eax	# offset, D.6188
	cmpl	$-128, %eax	#, D.6188
	jl	.L177	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movl	-920(%rbp), %eax	# n, tmp322
	movslq	%eax, %rdx	# tmp322, tmp321
	movl	-908(%rbp), %eax	# clist, tmp324
	movslq	%eax, %rcx	# tmp324, tmp323
	movq	%rdx, %rax	# tmp321, tmp325
	addq	%rax, %rax	# tmp325
	addq	%rdx, %rax	# tmp321, tmp325
	salq	$2, %rax	#, tmp326
	imulq	$180, %rcx, %rdx	#, tmp323, tmp327
	addq	%rdx, %rax	# tmp327, tmp328
	addq	%rbp, %rax	#, tmp329
	subq	$368, %rax	#, tmp330
	movl	(%rax), %eax	# offset, D.6188
	movl	$127, %edx	#, tmp331
	cmpl	$127, %eax	#, D.6188
	cmovle	%eax, %edx	# D.6188,, iftmp.134
	jmp	.L178	#
.L177:
	.loc 1 492 0 discriminator 2
	movl	$-128, %edx	#, iftmp.134
.L178:
	.loc 1 492 0 discriminator 3
	movl	-920(%rbp), %eax	# n, tmp333
	movslq	%eax, %rcx	# tmp333, tmp332
	movl	-908(%rbp), %eax	# clist, tmp335
	movslq	%eax, %rsi	# tmp335, tmp334
	movq	%rcx, %rax	# tmp332, tmp336
	addq	%rax, %rax	# tmp336
	addq	%rcx, %rax	# tmp332, tmp336
	salq	$2, %rax	#, tmp337
	imulq	$180, %rsi, %rcx	#, tmp334, tmp338
	addq	%rcx, %rax	# tmp338, tmp339
	addq	%rbp, %rax	#, tmp340
	subq	$368, %rax	#, tmp341
	movl	%edx, (%rax)	# iftmp.134, offset
	.loc 1 493 0 is_stmt 1 discriminator 3
	movl	-920(%rbp), %eax	# n, tmp343
	movslq	%eax, %rdx	# tmp343, tmp342
	movl	-908(%rbp), %eax	# clist, tmp345
	movslq	%eax, %rcx	# tmp345, tmp344
	movq	%rdx, %rax	# tmp342, tmp346
	addq	%rax, %rax	# tmp346
	addq	%rdx, %rax	# tmp342, tmp346
	salq	$2, %rax	#, tmp347
	imulq	$180, %rcx, %rdx	#, tmp344, tmp348
	addq	%rdx, %rax	# tmp348, tmp349
	addq	%rbp, %rax	#, tmp350
	leaq	-736(%rax), %rdx	#, tmp351
	movl	-896(%rbp), %eax	# default_weight, tmp352
	movl	%eax, (%rdx)	# tmp352, weight
.L176:
	.loc 1 498 0
	movl	-920(%rbp), %eax	# n, tmp354
	movslq	%eax, %rdx	# tmp354, tmp353
	movl	-908(%rbp), %eax	# clist, tmp356
	movslq	%eax, %rcx	# tmp356, tmp355
	movq	%rdx, %rax	# tmp353, tmp357
	addq	%rax, %rax	# tmp357
	addq	%rdx, %rax	# tmp353, tmp357
	salq	$2, %rax	#, tmp358
	imulq	$180, %rcx, %rdx	#, tmp355, tmp359
	addq	%rdx, %rax	# tmp359, tmp360
	addq	%rbp, %rax	#, tmp361
	leaq	-732(%rax), %rdx	#, tmp362
	movl	-892(%rbp), %eax	# default_weight_chroma, tmp363
	movl	%eax, (%rdx)	# tmp363, weight
	.loc 1 499 0
	movl	-920(%rbp), %eax	# n, tmp365
	movslq	%eax, %rdx	# tmp365, tmp364
	movl	-908(%rbp), %eax	# clist, tmp367
	movslq	%eax, %rcx	# tmp367, tmp366
	movq	%rdx, %rax	# tmp364, tmp368
	addq	%rax, %rax	# tmp368
	addq	%rdx, %rax	# tmp364, tmp368
	salq	$2, %rax	#, tmp369
	imulq	$180, %rcx, %rdx	#, tmp366, tmp370
	addq	%rdx, %rax	# tmp370, tmp371
	addq	%rbp, %rax	#, tmp372
	leaq	-728(%rax), %rdx	#, tmp373
	movl	-892(%rbp), %eax	# default_weight_chroma, tmp374
	movl	%eax, (%rdx)	# tmp374, weight
	.loc 1 466 0
	addl	$1, -920(%rbp)	#, n
.L167:
	.loc 1 466 0 is_stmt 0 discriminator 1
	movl	-908(%rbp), %eax	# clist, tmp376
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6188
	cmpl	-920(%rbp), %eax	# n, D.6188
	jg	.L179	#,
	.loc 1 464 0 is_stmt 1
	addl	$1, -908(%rbp)	#, clist
.L166:
	.loc 1 464 0 is_stmt 0 discriminator 1
	movl	-900(%rbp), %eax	# list_offset, tmp377
	addl	$2, %eax	#, D.6188
	cmpl	-908(%rbp), %eax	# clist, D.6188
	jg	.L180	#,
	.loc 1 504 0 is_stmt 1
	movl	$0, -908(%rbp)	#, clist
	jmp	.L181	#
.L193:
	.loc 1 506 0
	movl	$0, -916(%rbp)	#, index
	jmp	.L182	#
.L190:
	.loc 1 508 0
	movl	$0, -912(%rbp)	#, comp
	jmp	.L183	#
.L187:
	.loc 1 510 0
	movl	-912(%rbp), %eax	# comp, tmp379
	movslq	%eax, %rsi	# tmp379, tmp378
	movl	-908(%rbp), %eax	# clist, tmp381
	movslq	%eax, %rdx	# tmp381, tmp380
	movl	-916(%rbp), %eax	# index, tmp383
	movslq	%eax, %rcx	# tmp383, tmp382
	movq	%rdx, %rax	# tmp380, tmp384
	addq	%rax, %rax	# tmp384
	addq	%rdx, %rax	# tmp380, tmp384
	movq	%rax, %rdx	# tmp384, tmp385
	salq	$4, %rdx	#, tmp385
	subq	%rax, %rdx	# tmp384, tmp385
	movq	%rcx, %rax	# tmp382, tmp386
	addq	%rax, %rax	# tmp386
	addq	%rcx, %rax	# tmp382, tmp386
	addq	%rdx, %rax	# tmp385, tmp387
	addq	%rsi, %rax	# tmp378, tmp388
	movl	-736(%rbp,%rax,4), %eax	# weight, D.6188
	cmpl	-896(%rbp), %eax	# default_weight, D.6188
	jne	.L184	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movl	-912(%rbp), %eax	# comp, tmp390
	movslq	%eax, %rsi	# tmp390, tmp389
	movl	-908(%rbp), %eax	# clist, tmp392
	movslq	%eax, %rdx	# tmp392, tmp391
	movl	-916(%rbp), %eax	# index, tmp394
	movslq	%eax, %rcx	# tmp394, tmp393
	movq	%rdx, %rax	# tmp391, tmp395
	addq	%rax, %rax	# tmp395
	addq	%rdx, %rax	# tmp391, tmp395
	movq	%rax, %rdx	# tmp395, tmp396
	salq	$4, %rdx	#, tmp396
	subq	%rax, %rdx	# tmp395, tmp396
	movq	%rcx, %rax	# tmp393, tmp397
	addq	%rax, %rax	# tmp397
	addq	%rcx, %rax	# tmp393, tmp397
	addq	%rdx, %rax	# tmp396, tmp398
	addq	%rsi, %rax	# tmp389, tmp399
	movl	-368(%rbp,%rax,4), %eax	# offset, D.6188
	testl	%eax, %eax	# D.6188
	je	.L185	#,
.L184:
	.loc 1 512 0 is_stmt 1
	movl	$1, -904(%rbp)	#, perform_wp
	.loc 1 513 0
	jmp	.L186	#
.L185:
	.loc 1 508 0
	addl	$1, -912(%rbp)	#, comp
.L183:
	.loc 1 508 0 is_stmt 0 discriminator 1
	cmpl	$2, -912(%rbp)	#, comp
	jle	.L187	#,
.L186:
	.loc 1 516 0 is_stmt 1
	cmpl	$1, -904(%rbp)	#, perform_wp
	jne	.L188	#,
	.loc 1 516 0 is_stmt 0 discriminator 1
	jmp	.L189	#
.L188:
	.loc 1 506 0 is_stmt 1
	addl	$1, -916(%rbp)	#, index
.L182:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movl	-908(%rbp), %eax	# clist, tmp401
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6188
	cmpl	-916(%rbp), %eax	# index, D.6188
	jg	.L190	#,
.L189:
	.loc 1 518 0 is_stmt 1
	cmpl	$1, -904(%rbp)	#, perform_wp
	jne	.L191	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	jmp	.L192	#
.L191:
	.loc 1 504 0 is_stmt 1
	addl	$1, -908(%rbp)	#, clist
.L181:
	.loc 1 504 0 is_stmt 0 discriminator 1
	movl	-900(%rbp), %eax	# list_offset, tmp402
	addl	$2, %eax	#, D.6188
	cmpl	-908(%rbp), %eax	# clist, D.6188
	jg	.L193	#,
.L192:
	.loc 1 521 0 is_stmt 1
	movl	-904(%rbp), %eax	# perform_wp, D.6188
	.loc 1 522 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	test_wp_P_slice, .-test_wp_P_slice
	.globl	test_wp_B_slice
	.type	test_wp_B_slice, @function
test_wp_B_slice:
.LFB5:
	.loc 1 532 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$35292, %rsp	#,
	movl	%edi, -35412(%rbp)	# select_method, select_method
	.loc 1 536 0
	movl	$0, %eax	#, tmp491
	movq	%rax, -35336(%rbp)	# tmp491, dc_org
	.loc 1 547 0
	movq	img(%rip), %rax	# img, img.136
	movl	72400(%rax), %eax	# img.136_45->MbaffFrameFlag, D.6201
	testl	%eax, %eax	# D.6201
	je	.L198	#,
	.loc 1 547 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.137
	movq	14168(%rax), %rdx	# img.137_47->mb_data, D.6202
	movq	img(%rip), %rax	# img, img.138
	movl	12(%rax), %eax	# img.138_49->current_mb_nr, D.6201
	cltq
	imulq	$632, %rax, %rax	#, D.6203, D.6203
	addq	%rdx, %rax	# D.6202, D.6202
	movl	532(%rax), %eax	# _53->mb_field, D.6201
	testl	%eax, %eax	# D.6201
	je	.L198	#,
	movq	img(%rip), %rax	# img, img.140
	movl	12(%rax), %eax	# img.140_55->current_mb_nr, D.6201
	andl	$1, %eax	#, D.6204
	testl	%eax, %eax	# D.6204
	je	.L199	#,
	movl	$4, %eax	#, iftmp.139
	jmp	.L200	#
.L199:
	.loc 1 547 0 discriminator 2
	movl	$2, %eax	#, iftmp.139
.L200:
	.loc 1 547 0 discriminator 3
	jmp	.L201	#
.L198:
	.loc 1 547 0 discriminator 2
	movl	$0, %eax	#, iftmp.135
.L201:
	.loc 1 547 0 discriminator 3
	movl	%eax, -35372(%rbp)	# iftmp.135, list_offset
	.loc 1 554 0 is_stmt 1 discriminator 3
	movl	$0, -35376(%rbp)	#, perform_wp
	.loc 1 556 0 discriminator 3
	movl	$5, luma_log_weight_denom(%rip)	#, luma_log_weight_denom
	.loc 1 557 0 discriminator 3
	movl	$5, chroma_log_weight_denom(%rip)	#, chroma_log_weight_denom
	.loc 1 558 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.141
	subl	$1, %eax	#, D.6201
	movl	$1, %edx	#, tmp492
	movl	%eax, %ecx	# D.6201, tmp933
	sall	%cl, %edx	# tmp933, wp_luma_round.142
	movl	%edx, %eax	# wp_luma_round.142, wp_luma_round.142
	movl	%eax, wp_luma_round(%rip)	# wp_luma_round.142, wp_luma_round
	.loc 1 559 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.143
	subl	$1, %eax	#, D.6201
	movl	$1, %edx	#, tmp493
	movl	%eax, %ecx	# D.6201, tmp935
	sall	%cl, %edx	# tmp935, wp_chroma_round.144
	movl	%edx, %eax	# wp_chroma_round.144, wp_chroma_round.144
	movl	%eax, wp_chroma_round(%rip)	# wp_chroma_round.144, wp_chroma_round
	.loc 1 560 0 discriminator 3
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, luma_log_weight_denom.145
	movl	$1, %edx	#, tmp494
	movl	%eax, %ecx	# luma_log_weight_denom.145, tmp937
	sall	%cl, %edx	# tmp937, tmp495
	movl	%edx, %eax	# tmp495, tmp495
	movl	%eax, -35368(%rbp)	# tmp495, default_weight
	.loc 1 561 0 discriminator 3
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.146
	movl	$1, %edx	#, tmp496
	movl	%eax, %ecx	# chroma_log_weight_denom.146, tmp939
	sall	%cl, %edx	# tmp939, tmp497
	movl	%edx, %eax	# tmp497, tmp497
	movl	%eax, -35364(%rbp)	# tmp497, default_weight_chroma
	.loc 1 564 0 discriminator 3
	movl	$0, -35404(%rbp)	#, i
	jmp	.L202	#
.L207:
	.loc 1 566 0
	movl	$0, -35400(%rbp)	#, j
	jmp	.L203	#
.L206:
	.loc 1 568 0
	movl	$0, -35396(%rbp)	#, n
	jmp	.L204	#
.L205:
	.loc 1 570 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.147
	movl	-35404(%rbp), %edx	# i, tmp498
	movslq	%edx, %rdx	# tmp498, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_83, D.6206
	movl	-35400(%rbp), %edx	# j, tmp499
	movslq	%edx, %rdx	# tmp499, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_87, D.6207
	movl	-35396(%rbp), %edx	# n, tmp500
	movslq	%edx, %rdx	# tmp500, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rax, %rdx	# D.6207, D.6207
	movl	-35368(%rbp), %eax	# default_weight, tmp501
	movl	%eax, (%rdx)	# tmp501, *_91
	.loc 1 571 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.148
	movl	-35404(%rbp), %edx	# i, tmp502
	movslq	%edx, %rdx	# tmp502, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_95, D.6206
	movl	-35400(%rbp), %edx	# j, tmp503
	movslq	%edx, %rdx	# tmp503, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_99, D.6207
	movl	-35396(%rbp), %edx	# n, tmp504
	movslq	%edx, %rdx	# tmp504, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6207
	movl	$0, (%rax)	#, *_103
	.loc 1 572 0 discriminator 2
	movl	-35396(%rbp), %eax	# n, tmp506
	movslq	%eax, %rsi	# tmp506, tmp505
	movl	-35404(%rbp), %eax	# i, tmp508
	movslq	%eax, %rdx	# tmp508, tmp507
	movl	-35400(%rbp), %eax	# j, tmp510
	movslq	%eax, %rcx	# tmp510, tmp509
	movq	%rdx, %rax	# tmp507, tmp511
	addq	%rax, %rax	# tmp511
	addq	%rdx, %rax	# tmp507, tmp511
	movq	%rax, %rdx	# tmp511, tmp512
	salq	$4, %rdx	#, tmp512
	subq	%rax, %rdx	# tmp511, tmp512
	movq	%rcx, %rax	# tmp509, tmp513
	addq	%rax, %rax	# tmp513
	addq	%rcx, %rax	# tmp509, tmp513
	addq	%rdx, %rax	# tmp512, tmp514
	addq	%rsi, %rax	# tmp505, tmp515
	movl	$0, -33504(%rbp,%rax,4)	#, offset
	.loc 1 573 0 discriminator 2
	movl	-35396(%rbp), %eax	# n, tmp517
	movslq	%eax, %rsi	# tmp517, tmp516
	movl	-35404(%rbp), %eax	# i, tmp519
	movslq	%eax, %rdx	# tmp519, tmp518
	movl	-35400(%rbp), %eax	# j, tmp521
	movslq	%eax, %rcx	# tmp521, tmp520
	movq	%rdx, %rax	# tmp518, tmp522
	addq	%rax, %rax	# tmp522
	addq	%rdx, %rax	# tmp518, tmp522
	movq	%rax, %rdx	# tmp522, tmp523
	salq	$4, %rdx	#, tmp523
	subq	%rax, %rdx	# tmp522, tmp523
	movq	%rcx, %rax	# tmp520, tmp524
	addq	%rax, %rax	# tmp524
	addq	%rcx, %rax	# tmp520, tmp524
	addq	%rdx, %rax	# tmp523, tmp525
	leaq	(%rax,%rsi), %rdx	#, tmp526
	movl	-35368(%rbp), %eax	# default_weight, tmp527
	movl	%eax, -34592(%rbp,%rdx,4)	# tmp527, weight
	.loc 1 568 0 discriminator 2
	addl	$1, -35396(%rbp)	#, n
.L204:
	.loc 1 568 0 is_stmt 0 discriminator 1
	cmpl	$2, -35396(%rbp)	#, n
	jle	.L205	#,
	.loc 1 566 0 is_stmt 1
	addl	$1, -35400(%rbp)	#, j
.L203:
	.loc 1 566 0 is_stmt 0 discriminator 1
	movl	-35404(%rbp), %eax	# i, tmp529
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35400(%rbp), %eax	# j, D.6201
	jg	.L206	#,
	.loc 1 564 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, i
.L202:
	.loc 1 564 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp530
	addl	$2, %eax	#, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L207	#,
	.loc 1 578 0 is_stmt 1
	movl	$0, -35404(%rbp)	#, i
	jmp	.L208	#
.L223:
	.loc 1 580 0
	movl	$0, -35400(%rbp)	#, j
	jmp	.L209	#
.L222:
.LBB3:
	.loc 1 583 0
	movq	listX+8(%rip), %rax	# listX, D.6208
	movl	-35400(%rbp), %edx	# j, tmp531
	movslq	%edx, %rdx	# tmp531, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_114, D.6209
	movl	4(%rax), %edx	# _115->poc, D.6201
	movq	listX(%rip), %rax	# listX, D.6208
	movl	-35404(%rbp), %ecx	# i, tmp532
	movslq	%ecx, %rcx	# tmp532, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_120, D.6209
	movl	4(%rax), %eax	# _121->poc, D.6201
	subl	%eax, %edx	# D.6201, D.6201
	movl	%edx, %eax	# D.6201, D.6201
	cmpl	$-128, %eax	#, D.6201
	jl	.L210	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	movq	listX+8(%rip), %rax	# listX, D.6208
	movl	-35400(%rbp), %edx	# j, tmp533
	movslq	%edx, %rdx	# tmp533, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_127, D.6209
	movl	4(%rax), %edx	# _128->poc, D.6201
	movq	listX(%rip), %rax	# listX, D.6208
	movl	-35404(%rbp), %ecx	# i, tmp534
	movslq	%ecx, %rcx	# tmp534, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_133, D.6209
	movl	4(%rax), %eax	# _134->poc, D.6201
	subl	%eax, %edx	# D.6201, D.6201
	movl	%edx, %eax	# D.6201, D.6201
	movl	$127, %edx	#, tmp535
	cmpl	$127, %eax	#, D.6201
	cmovg	%edx, %eax	# D.6201,, tmp535, iftmp.149
	jmp	.L211	#
.L210:
	.loc 1 583 0 discriminator 2
	movl	$-128, %eax	#, iftmp.149
.L211:
	.loc 1 583 0 discriminator 3
	movl	%eax, -35360(%rbp)	# iftmp.149, td
	.loc 1 584 0 is_stmt 1 discriminator 3
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.151
	movl	4(%rax), %edx	# enc_picture.151_140->poc, D.6201
	movq	listX(%rip), %rax	# listX, D.6208
	movl	-35404(%rbp), %ecx	# i, tmp536
	movslq	%ecx, %rcx	# tmp536, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_145, D.6209
	movl	4(%rax), %eax	# _146->poc, D.6201
	subl	%eax, %edx	# D.6201, D.6201
	movl	%edx, %eax	# D.6201, D.6201
	cmpl	$-128, %eax	#, D.6201
	jl	.L212	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.152
	movl	4(%rax), %edx	# enc_picture.152_149->poc, D.6201
	movq	listX(%rip), %rax	# listX, D.6208
	movl	-35404(%rbp), %ecx	# i, tmp537
	movslq	%ecx, %rcx	# tmp537, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_154, D.6209
	movl	4(%rax), %eax	# _155->poc, D.6201
	subl	%eax, %edx	# D.6201, D.6201
	movl	%edx, %eax	# D.6201, D.6201
	movl	$127, %edx	#, tmp538
	cmpl	$127, %eax	#, D.6201
	cmovg	%edx, %eax	# D.6201,, tmp538, iftmp.150
	jmp	.L213	#
.L212:
	.loc 1 584 0 discriminator 2
	movl	$-128, %eax	#, iftmp.150
.L213:
	.loc 1 584 0 discriminator 3
	movl	%eax, -35356(%rbp)	# iftmp.150, tb
	.loc 1 585 0 is_stmt 1 discriminator 3
	movl	$0, -35388(%rbp)	#, comp
	jmp	.L214	#
.L221:
	.loc 1 588 0
	cmpl	$0, -35360(%rbp)	#, td
	jne	.L215	#,
	.loc 1 590 0
	movl	-35388(%rbp), %eax	# comp, tmp540
	movslq	%eax, %rsi	# tmp540, tmp539
	movl	-35404(%rbp), %eax	# i, tmp542
	movslq	%eax, %rdx	# tmp542, tmp541
	movl	-35400(%rbp), %eax	# j, tmp544
	movslq	%eax, %rcx	# tmp544, tmp543
	movq	%rdx, %rax	# tmp541, tmp545
	addq	%rax, %rax	# tmp545
	addq	%rdx, %rax	# tmp541, tmp545
	movq	%rax, %rdx	# tmp545, tmp546
	salq	$4, %rdx	#, tmp546
	subq	%rax, %rdx	# tmp545, tmp546
	movq	%rcx, %rax	# tmp543, tmp547
	addq	%rax, %rax	# tmp547
	addq	%rcx, %rax	# tmp543, tmp547
	addq	%rdx, %rax	# tmp546, tmp548
	addq	%rsi, %rax	# tmp539, tmp549
	addq	$675, %rax	#, tmp550
	movl	$32, -32416(%rbp,%rax,4)	#, im_weight
	.loc 1 591 0
	movl	-35388(%rbp), %eax	# comp, tmp552
	movslq	%eax, %rsi	# tmp552, tmp551
	movl	-35404(%rbp), %eax	# i, tmp554
	movslq	%eax, %rdx	# tmp554, tmp553
	movl	-35400(%rbp), %eax	# j, tmp556
	movslq	%eax, %rcx	# tmp556, tmp555
	movq	%rdx, %rax	# tmp553, tmp557
	addq	%rax, %rax	# tmp557
	addq	%rdx, %rax	# tmp553, tmp557
	movq	%rax, %rdx	# tmp557, tmp558
	salq	$4, %rdx	#, tmp558
	subq	%rax, %rdx	# tmp557, tmp558
	movq	%rcx, %rax	# tmp555, tmp559
	addq	%rax, %rax	# tmp559
	addq	%rcx, %rax	# tmp555, tmp559
	addq	%rdx, %rax	# tmp558, tmp560
	addq	%rsi, %rax	# tmp551, tmp561
	movl	$32, -32416(%rbp,%rax,4)	#, im_weight
	.loc 1 592 0
	movl	-35388(%rbp), %eax	# comp, tmp563
	movslq	%eax, %rsi	# tmp563, tmp562
	movl	-35404(%rbp), %eax	# i, tmp565
	movslq	%eax, %rdx	# tmp565, tmp564
	movl	-35400(%rbp), %eax	# j, tmp567
	movslq	%eax, %rcx	# tmp567, tmp566
	movq	%rdx, %rax	# tmp564, tmp568
	addq	%rax, %rax	# tmp568
	addq	%rdx, %rax	# tmp564, tmp568
	movq	%rax, %rdx	# tmp568, tmp569
	salq	$4, %rdx	#, tmp569
	subq	%rax, %rdx	# tmp568, tmp569
	movq	%rcx, %rax	# tmp566, tmp570
	addq	%rax, %rax	# tmp570
	addq	%rcx, %rax	# tmp566, tmp570
	addq	%rdx, %rax	# tmp569, tmp571
	addq	%rsi, %rax	# tmp562, tmp572
	addq	$675, %rax	#, tmp573
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	.loc 1 593 0
	movl	-35388(%rbp), %eax	# comp, tmp575
	movslq	%eax, %rsi	# tmp575, tmp574
	movl	-35404(%rbp), %eax	# i, tmp577
	movslq	%eax, %rdx	# tmp577, tmp576
	movl	-35400(%rbp), %eax	# j, tmp579
	movslq	%eax, %rcx	# tmp579, tmp578
	movq	%rdx, %rax	# tmp576, tmp580
	addq	%rax, %rax	# tmp580
	addq	%rdx, %rax	# tmp576, tmp580
	movq	%rax, %rdx	# tmp580, tmp581
	salq	$4, %rdx	#, tmp581
	subq	%rax, %rdx	# tmp580, tmp581
	movq	%rcx, %rax	# tmp578, tmp582
	addq	%rax, %rax	# tmp582
	addq	%rcx, %rax	# tmp578, tmp582
	addq	%rdx, %rax	# tmp581, tmp583
	addq	%rsi, %rax	# tmp574, tmp584
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	jmp	.L216	#
.L215:
	.loc 1 597 0
	movl	-35360(%rbp), %eax	# td, tmp585
	movl	%eax, %edx	# tmp585, tmp586
	shrl	$31, %edx	#, tmp586
	addl	%edx, %eax	# tmp586, tmp587
	sarl	%eax	# tmp588
	cltd
	xorl	%edx, %eax	# tmp589, D.6201
	subl	%edx, %eax	# tmp589, D.6201
	addl	$16384, %eax	#, D.6201
	cltd
	idivl	-35360(%rbp)	# td
	movl	%eax, -35352(%rbp)	# tmp591, tx
	.loc 1 598 0
	movl	-35352(%rbp), %eax	# tx, tmp593
	imull	-35356(%rbp), %eax	# tb, D.6201
	addl	$32, %eax	#, D.6201
	sarl	$6, %eax	#, D.6201
	cmpl	$-1024, %eax	#, D.6201
	jl	.L217	#,
	.loc 1 598 0 is_stmt 0 discriminator 1
	movl	-35352(%rbp), %eax	# tx, tmp594
	imull	-35356(%rbp), %eax	# tb, D.6201
	addl	$32, %eax	#, D.6201
	sarl	$6, %eax	#, D.6201
	movl	$1023, %edx	#, tmp595
	cmpl	$1023, %eax	#, D.6201
	cmovg	%edx, %eax	# D.6201,, tmp595, iftmp.153
	jmp	.L218	#
.L217:
	.loc 1 598 0 discriminator 2
	movl	$-1024, %eax	#, iftmp.153
.L218:
	.loc 1 598 0 discriminator 3
	movl	%eax, -35348(%rbp)	# iftmp.153, DistScaleFactor
	.loc 1 599 0 is_stmt 1 discriminator 3
	movl	-35348(%rbp), %eax	# DistScaleFactor, tmp596
	sarl	$2, %eax	#, D.6201
	movl	%eax, %esi	# D.6201, D.6201
	movl	-35388(%rbp), %eax	# comp, tmp598
	movslq	%eax, %rdi	# tmp598, tmp597
	movl	-35404(%rbp), %eax	# i, tmp600
	movslq	%eax, %rdx	# tmp600, tmp599
	movl	-35400(%rbp), %eax	# j, tmp602
	movslq	%eax, %rcx	# tmp602, tmp601
	movq	%rdx, %rax	# tmp599, tmp603
	addq	%rax, %rax	# tmp603
	addq	%rdx, %rax	# tmp599, tmp603
	movq	%rax, %rdx	# tmp603, tmp604
	salq	$4, %rdx	#, tmp604
	subq	%rax, %rdx	# tmp603, tmp604
	movq	%rcx, %rax	# tmp601, tmp605
	addq	%rax, %rax	# tmp605
	addq	%rcx, %rax	# tmp601, tmp605
	addq	%rdx, %rax	# tmp604, tmp606
	addq	%rdi, %rax	# tmp597, tmp607
	addq	$675, %rax	#, tmp608
	movl	%esi, -32416(%rbp,%rax,4)	# D.6201, im_weight
	.loc 1 600 0 discriminator 3
	movl	-35388(%rbp), %eax	# comp, tmp610
	movslq	%eax, %rsi	# tmp610, tmp609
	movl	-35404(%rbp), %eax	# i, tmp612
	movslq	%eax, %rdx	# tmp612, tmp611
	movl	-35400(%rbp), %eax	# j, tmp614
	movslq	%eax, %rcx	# tmp614, tmp613
	movq	%rdx, %rax	# tmp611, tmp615
	addq	%rax, %rax	# tmp615
	addq	%rdx, %rax	# tmp611, tmp615
	movq	%rax, %rdx	# tmp615, tmp616
	salq	$4, %rdx	#, tmp616
	subq	%rax, %rdx	# tmp615, tmp616
	movq	%rcx, %rax	# tmp613, tmp617
	addq	%rax, %rax	# tmp617
	addq	%rcx, %rax	# tmp613, tmp617
	addq	%rdx, %rax	# tmp616, tmp618
	addq	%rsi, %rax	# tmp609, tmp619
	addq	$675, %rax	#, tmp620
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6201
	cmpl	$-64, %eax	#, D.6201
	jl	.L219	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movl	-35388(%rbp), %eax	# comp, tmp622
	movslq	%eax, %rsi	# tmp622, tmp621
	movl	-35404(%rbp), %eax	# i, tmp624
	movslq	%eax, %rdx	# tmp624, tmp623
	movl	-35400(%rbp), %eax	# j, tmp626
	movslq	%eax, %rcx	# tmp626, tmp625
	movq	%rdx, %rax	# tmp623, tmp627
	addq	%rax, %rax	# tmp627
	addq	%rdx, %rax	# tmp623, tmp627
	movq	%rax, %rdx	# tmp627, tmp628
	salq	$4, %rdx	#, tmp628
	subq	%rax, %rdx	# tmp627, tmp628
	movq	%rcx, %rax	# tmp625, tmp629
	addq	%rax, %rax	# tmp629
	addq	%rcx, %rax	# tmp625, tmp629
	addq	%rdx, %rax	# tmp628, tmp630
	addq	%rsi, %rax	# tmp621, tmp631
	addq	$675, %rax	#, tmp632
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6201
	cmpl	$128, %eax	#, D.6201
	jle	.L220	#,
.L219:
	.loc 1 601 0 is_stmt 1
	movl	-35388(%rbp), %eax	# comp, tmp634
	movslq	%eax, %rsi	# tmp634, tmp633
	movl	-35404(%rbp), %eax	# i, tmp636
	movslq	%eax, %rdx	# tmp636, tmp635
	movl	-35400(%rbp), %eax	# j, tmp638
	movslq	%eax, %rcx	# tmp638, tmp637
	movq	%rdx, %rax	# tmp635, tmp639
	addq	%rax, %rax	# tmp639
	addq	%rdx, %rax	# tmp635, tmp639
	movq	%rax, %rdx	# tmp639, tmp640
	salq	$4, %rdx	#, tmp640
	subq	%rax, %rdx	# tmp639, tmp640
	movq	%rcx, %rax	# tmp637, tmp641
	addq	%rax, %rax	# tmp641
	addq	%rcx, %rax	# tmp637, tmp641
	addq	%rdx, %rax	# tmp640, tmp642
	addq	%rsi, %rax	# tmp633, tmp643
	addq	$675, %rax	#, tmp644
	movl	$32, -32416(%rbp,%rax,4)	#, im_weight
.L220:
	.loc 1 602 0
	movl	-35388(%rbp), %eax	# comp, tmp646
	movslq	%eax, %rsi	# tmp646, tmp645
	movl	-35404(%rbp), %eax	# i, tmp648
	movslq	%eax, %rdx	# tmp648, tmp647
	movl	-35400(%rbp), %eax	# j, tmp650
	movslq	%eax, %rcx	# tmp650, tmp649
	movq	%rdx, %rax	# tmp647, tmp651
	addq	%rax, %rax	# tmp651
	addq	%rdx, %rax	# tmp647, tmp651
	movq	%rax, %rdx	# tmp651, tmp652
	salq	$4, %rdx	#, tmp652
	subq	%rax, %rdx	# tmp651, tmp652
	movq	%rcx, %rax	# tmp649, tmp653
	addq	%rax, %rax	# tmp653
	addq	%rcx, %rax	# tmp649, tmp653
	addq	%rdx, %rax	# tmp652, tmp654
	addq	%rsi, %rax	# tmp645, tmp655
	addq	$675, %rax	#, tmp656
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6201
	movl	$64, %edx	#, tmp657
	movl	%edx, %esi	# tmp657, D.6201
	subl	%eax, %esi	# D.6201, D.6201
	movl	-35388(%rbp), %eax	# comp, tmp659
	movslq	%eax, %rdi	# tmp659, tmp658
	movl	-35404(%rbp), %eax	# i, tmp661
	movslq	%eax, %rdx	# tmp661, tmp660
	movl	-35400(%rbp), %eax	# j, tmp663
	movslq	%eax, %rcx	# tmp663, tmp662
	movq	%rdx, %rax	# tmp660, tmp664
	addq	%rax, %rax	# tmp664
	addq	%rdx, %rax	# tmp660, tmp664
	movq	%rax, %rdx	# tmp664, tmp665
	salq	$4, %rdx	#, tmp665
	subq	%rax, %rdx	# tmp664, tmp665
	movq	%rcx, %rax	# tmp662, tmp666
	addq	%rax, %rax	# tmp666
	addq	%rcx, %rax	# tmp662, tmp666
	addq	%rdx, %rax	# tmp665, tmp667
	addq	%rdi, %rax	# tmp658, tmp668
	movl	%esi, -32416(%rbp,%rax,4)	# D.6201, im_weight
	.loc 1 603 0
	movl	-35388(%rbp), %eax	# comp, tmp670
	movslq	%eax, %rsi	# tmp670, tmp669
	movl	-35404(%rbp), %eax	# i, tmp672
	movslq	%eax, %rdx	# tmp672, tmp671
	movl	-35400(%rbp), %eax	# j, tmp674
	movslq	%eax, %rcx	# tmp674, tmp673
	movq	%rdx, %rax	# tmp671, tmp675
	addq	%rax, %rax	# tmp675
	addq	%rdx, %rax	# tmp671, tmp675
	movq	%rax, %rdx	# tmp675, tmp676
	salq	$4, %rdx	#, tmp676
	subq	%rax, %rdx	# tmp675, tmp676
	movq	%rcx, %rax	# tmp673, tmp677
	addq	%rax, %rax	# tmp677
	addq	%rcx, %rax	# tmp673, tmp677
	addq	%rdx, %rax	# tmp676, tmp678
	addq	%rsi, %rax	# tmp669, tmp679
	addq	$675, %rax	#, tmp680
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
	.loc 1 604 0
	movl	-35388(%rbp), %eax	# comp, tmp682
	movslq	%eax, %rsi	# tmp682, tmp681
	movl	-35404(%rbp), %eax	# i, tmp684
	movslq	%eax, %rdx	# tmp684, tmp683
	movl	-35400(%rbp), %eax	# j, tmp686
	movslq	%eax, %rcx	# tmp686, tmp685
	movq	%rdx, %rax	# tmp683, tmp687
	addq	%rax, %rax	# tmp687
	addq	%rdx, %rax	# tmp683, tmp687
	movq	%rax, %rdx	# tmp687, tmp688
	salq	$4, %rdx	#, tmp688
	subq	%rax, %rdx	# tmp687, tmp688
	movq	%rcx, %rax	# tmp685, tmp689
	addq	%rax, %rax	# tmp689
	addq	%rcx, %rax	# tmp685, tmp689
	addq	%rdx, %rax	# tmp688, tmp690
	addq	%rsi, %rax	# tmp681, tmp691
	movl	$0, -16208(%rbp,%rax,4)	#, im_offset
.L216:
	.loc 1 585 0
	addl	$1, -35388(%rbp)	#, comp
.L214:
	.loc 1 585 0 is_stmt 0 discriminator 1
	cmpl	$2, -35388(%rbp)	#, comp
	jle	.L221	#,
.LBE3:
	.loc 1 580 0 is_stmt 1
	addl	$1, -35400(%rbp)	#, j
.L209:
	.loc 1 580 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6201
	cmpl	-35400(%rbp), %eax	# j, D.6201
	jg	.L222	#,
	.loc 1 578 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, i
.L208:
	.loc 1 578 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L223	#,
	.loc 1 616 0 is_stmt 1
	cmpl	$1, -35412(%rbp)	#, select_method
	jne	.L224	#,
	.loc 1 619 0
	movl	$0, -35404(%rbp)	#, i
	jmp	.L225	#
.L232:
	.loc 1 621 0
	movl	$0, -35400(%rbp)	#, j
	jmp	.L226	#
.L231:
	.loc 1 623 0
	movl	$0, -35388(%rbp)	#, comp
	jmp	.L227	#
.L230:
	.loc 1 625 0
	cmpl	$0, -35388(%rbp)	#, comp
	jne	.L228	#,
	.loc 1 625 0 is_stmt 0 discriminator 1
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, iftmp.154
	jmp	.L229	#
.L228:
	.loc 1 625 0 discriminator 2
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, iftmp.154
.L229:
	.loc 1 625 0 discriminator 3
	movl	%eax, -35344(%rbp)	# iftmp.154, log_weight_denom
	.loc 1 626 0 is_stmt 1 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.155
	addq	$8, %rax	#, D.6210
	movq	(%rax), %rax	# *_193, D.6205
	movl	-35404(%rbp), %edx	# i, tmp692
	movslq	%edx, %rdx	# tmp692, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_197, D.6206
	movl	-35400(%rbp), %edx	# j, tmp693
	movslq	%edx, %rdx	# tmp693, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_201, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp694
	movslq	%edx, %rdx	# tmp694, D.6203
	salq	$2, %rdx	#, D.6203
	leaq	(%rax,%rdx), %rsi	#, D.6207
	movl	-35388(%rbp), %eax	# comp, tmp696
	movslq	%eax, %rdi	# tmp696, tmp695
	movl	-35404(%rbp), %eax	# i, tmp698
	movslq	%eax, %rdx	# tmp698, tmp697
	movl	-35400(%rbp), %eax	# j, tmp700
	movslq	%eax, %rcx	# tmp700, tmp699
	movq	%rdx, %rax	# tmp697, tmp701
	addq	%rax, %rax	# tmp701
	addq	%rdx, %rax	# tmp697, tmp701
	movq	%rax, %rdx	# tmp701, tmp702
	salq	$4, %rdx	#, tmp702
	subq	%rax, %rdx	# tmp701, tmp702
	movq	%rcx, %rax	# tmp699, tmp703
	addq	%rax, %rax	# tmp703
	addq	%rcx, %rax	# tmp699, tmp703
	addq	%rdx, %rax	# tmp702, tmp704
	addq	%rdi, %rax	# tmp695, tmp705
	addq	$675, %rax	#, tmp706
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6201
	movl	%eax, (%rsi)	# D.6201, *_205
	.loc 1 627 0 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.156
	movq	(%rax), %rax	# *wbp_weight.156_207, D.6205
	movl	-35404(%rbp), %edx	# i, tmp707
	movslq	%edx, %rdx	# tmp707, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_211, D.6206
	movl	-35400(%rbp), %edx	# j, tmp708
	movslq	%edx, %rdx	# tmp708, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_215, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp709
	movslq	%edx, %rdx	# tmp709, D.6203
	salq	$2, %rdx	#, D.6203
	leaq	(%rax,%rdx), %rsi	#, D.6207
	movl	-35388(%rbp), %eax	# comp, tmp711
	movslq	%eax, %rdi	# tmp711, tmp710
	movl	-35404(%rbp), %eax	# i, tmp713
	movslq	%eax, %rdx	# tmp713, tmp712
	movl	-35400(%rbp), %eax	# j, tmp715
	movslq	%eax, %rcx	# tmp715, tmp714
	movq	%rdx, %rax	# tmp712, tmp716
	addq	%rax, %rax	# tmp716
	addq	%rdx, %rax	# tmp712, tmp716
	movq	%rax, %rdx	# tmp716, tmp717
	salq	$4, %rdx	#, tmp717
	subq	%rax, %rdx	# tmp716, tmp717
	movq	%rcx, %rax	# tmp714, tmp718
	addq	%rax, %rax	# tmp718
	addq	%rcx, %rax	# tmp714, tmp718
	addq	%rdx, %rax	# tmp717, tmp719
	addq	%rdi, %rax	# tmp710, tmp720
	movl	-32416(%rbp,%rax,4), %eax	# im_weight, D.6201
	movl	%eax, (%rsi)	# D.6201, *_219
	.loc 1 623 0 discriminator 3
	addl	$1, -35388(%rbp)	#, comp
.L227:
	.loc 1 623 0 is_stmt 0 discriminator 1
	cmpl	$2, -35388(%rbp)	#, comp
	jle	.L230	#,
	.loc 1 621 0 is_stmt 1
	addl	$1, -35400(%rbp)	#, j
.L226:
	.loc 1 621 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6201
	cmpl	-35400(%rbp), %eax	# j, D.6201
	jg	.L231	#,
	.loc 1 619 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, i
.L225:
	.loc 1 619 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L232	#,
	.loc 1 632 0 is_stmt 1
	movl	$0, -35384(%rbp)	#, clist
	jmp	.L233	#
.L236:
	.loc 1 634 0
	movl	$0, -35392(%rbp)	#, index
	jmp	.L234	#
.L235:
	.loc 1 636 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.157
	movl	-35384(%rbp), %edx	# clist, tmp721
	movslq	%edx, %rdx	# tmp721, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_231, D.6206
	movl	-35392(%rbp), %edx	# index, tmp722
	movslq	%edx, %rdx	# tmp722, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_235, D.6207
	movl	luma_log_weight_denom(%rip), %edx	# luma_log_weight_denom, luma_log_weight_denom.158
	movl	$1, %esi	#, tmp723
	movl	%edx, %ecx	# luma_log_weight_denom.158, tmp964
	sall	%cl, %esi	# tmp964, D.6201
	movl	%esi, %edx	# D.6201, D.6201
	movl	%edx, (%rax)	# D.6201, *_236
	.loc 1 637 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.159
	movl	-35384(%rbp), %edx	# clist, tmp724
	movslq	%edx, %rdx	# tmp724, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_242, D.6206
	movl	-35392(%rbp), %edx	# index, tmp725
	movslq	%edx, %rdx	# tmp725, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_246, D.6207
	leaq	4(%rax), %rdx	#, D.6207
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.160
	movl	$1, %esi	#, tmp726
	movl	%eax, %ecx	# chroma_log_weight_denom.160, tmp966
	sall	%cl, %esi	# tmp966, D.6201
	movl	%esi, %eax	# D.6201, D.6201
	movl	%eax, (%rdx)	# D.6201, *_248
	.loc 1 638 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.161
	movl	-35384(%rbp), %edx	# clist, tmp727
	movslq	%edx, %rdx	# tmp727, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_254, D.6206
	movl	-35392(%rbp), %edx	# index, tmp728
	movslq	%edx, %rdx	# tmp728, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_258, D.6207
	leaq	8(%rax), %rdx	#, D.6207
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.162
	movl	$1, %esi	#, tmp729
	movl	%eax, %ecx	# chroma_log_weight_denom.162, tmp968
	sall	%cl, %esi	# tmp968, D.6201
	movl	%esi, %eax	# D.6201, D.6201
	movl	%eax, (%rdx)	# D.6201, *_260
	.loc 1 639 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.163
	movl	-35384(%rbp), %edx	# clist, tmp730
	movslq	%edx, %rdx	# tmp730, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_266, D.6206
	movl	-35392(%rbp), %edx	# index, tmp731
	movslq	%edx, %rdx	# tmp731, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_270, D.6207
	movl	$0, (%rax)	#, *_271
	.loc 1 640 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.164
	movl	-35384(%rbp), %edx	# clist, tmp732
	movslq	%edx, %rdx	# tmp732, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_275, D.6206
	movl	-35392(%rbp), %edx	# index, tmp733
	movslq	%edx, %rdx	# tmp733, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_279, D.6207
	addq	$4, %rax	#, D.6207
	movl	$0, (%rax)	#, *_281
	.loc 1 641 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.165
	movl	-35384(%rbp), %edx	# clist, tmp734
	movslq	%edx, %rdx	# tmp734, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_285, D.6206
	movl	-35392(%rbp), %edx	# index, tmp735
	movslq	%edx, %rdx	# tmp735, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_289, D.6207
	addq	$8, %rax	#, D.6207
	movl	$0, (%rax)	#, *_291
	.loc 1 634 0 discriminator 2
	addl	$1, -35392(%rbp)	#, index
.L234:
	.loc 1 634 0 is_stmt 0 discriminator 1
	movl	-35384(%rbp), %eax	# clist, tmp737
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35392(%rbp), %eax	# index, D.6201
	jg	.L235	#,
	.loc 1 632 0 is_stmt 1
	addl	$1, -35384(%rbp)	#, clist
.L233:
	.loc 1 632 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp738
	addl	$2, %eax	#, D.6201
	cmpl	-35384(%rbp), %eax	# clist, D.6201
	jg	.L236	#,
	jmp	.L237	#
.L224:
	.loc 1 647 0 is_stmt 1
	movl	$0, -35404(%rbp)	#, i
	jmp	.L238	#
.L241:
	.loc 1 649 0
	movl	$0, -35400(%rbp)	#, j
	jmp	.L239	#
.L240:
	.loc 1 651 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.166
	movl	-35404(%rbp), %edx	# i, tmp739
	movslq	%edx, %rdx	# tmp739, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6211
	movq	(%rax), %rax	# *_303, D.6212
	movl	-35400(%rbp), %edx	# j, tmp740
	movslq	%edx, %rdx	# tmp740, D.6203
	addq	%rdx, %rdx	# D.6203
	addq	%rdx, %rax	# D.6203, D.6212
	movzwl	(%rax), %eax	# *_307, D.6213
	movzwl	%ax, %eax	# D.6213, tmp741
	cvtsi2sd	%eax, %xmm0	# tmp741, D.6214
	movsd	-35336(%rbp), %xmm1	# dc_org, tmp743
	addsd	%xmm1, %xmm0	# tmp743, tmp742
	movsd	%xmm0, -35336(%rbp)	# tmp742, dc_org
	.loc 1 649 0 discriminator 2
	addl	$1, -35400(%rbp)	#, j
.L239:
	.loc 1 649 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.167
	movl	52(%rax), %eax	# img.167_298->width, D.6201
	cmpl	-35400(%rbp), %eax	# j, D.6201
	jg	.L240	#,
	.loc 1 647 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, i
.L238:
	.loc 1 647 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.168
	movl	60(%rax), %eax	# img.168_295->height, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L241	#,
	.loc 1 655 0 is_stmt 1
	movl	$0, -35384(%rbp)	#, clist
	jmp	.L242	#
.L252:
	.loc 1 657 0
	movl	$0, -35396(%rbp)	#, n
	jmp	.L243	#
.L251:
	.loc 1 659 0
	movl	-35396(%rbp), %eax	# n, tmp745
	movslq	%eax, %rcx	# tmp745, tmp744
	movl	-35384(%rbp), %eax	# clist, tmp747
	movslq	%eax, %rdx	# tmp747, tmp746
	movq	%rdx, %rax	# tmp746, tmp748
	salq	$4, %rax	#, tmp749
	subq	%rdx, %rax	# tmp746, tmp748
	leaq	(%rax,%rcx), %rdx	#, tmp750
	movl	$0, %eax	#, tmp751
	movq	%rax, -35312(%rbp,%rdx,8)	# tmp751, dc_ref
	.loc 1 661 0
	movl	-35384(%rbp), %eax	# clist, tmp753
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6208
	movl	-35396(%rbp), %edx	# n, tmp754
	movslq	%edx, %rdx	# tmp754, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_320, D.6209
	movq	6432(%rax), %rax	# _321->imgY_11, tmp755
	movq	%rax, -35328(%rbp)	# tmp755, ref_pic
	.loc 1 662 0
	movl	-35384(%rbp), %eax	# clist, tmp757
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.6208
	movl	-35396(%rbp), %edx	# n, tmp758
	movslq	%edx, %rdx	# tmp758, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6208
	movq	(%rax), %rax	# *_326, D.6209
	movq	6440(%rax), %rax	# _327->imgY_11_w, tmp759
	movq	%rax, -35320(%rbp)	# tmp759, ref_pic_w
	.loc 1 665 0
	movl	$0, -35404(%rbp)	#, i
	jmp	.L244	#
.L245:
	.loc 1 667 0 discriminator 2
	movl	-35396(%rbp), %eax	# n, tmp761
	movslq	%eax, %rcx	# tmp761, tmp760
	movl	-35384(%rbp), %eax	# clist, tmp763
	movslq	%eax, %rdx	# tmp763, tmp762
	movq	%rdx, %rax	# tmp762, tmp764
	salq	$4, %rax	#, tmp765
	subq	%rdx, %rax	# tmp762, tmp764
	addq	%rcx, %rax	# tmp760, tmp766
	movsd	-35312(%rbp,%rax,8), %xmm1	# dc_ref, D.6214
	movl	-35404(%rbp), %eax	# i, tmp767
	cltq
	leaq	(%rax,%rax), %rdx	#, D.6203
	movq	-35328(%rbp), %rax	# ref_pic, tmp768
	addq	%rdx, %rax	# D.6203, D.6212
	movzwl	(%rax), %eax	# *_338, D.6213
	movzwl	%ax, %eax	# D.6213, tmp769
	cvtsi2sd	%eax, %xmm0	# tmp769, D.6214
	addsd	%xmm1, %xmm0	# D.6214, D.6214
	movl	-35396(%rbp), %eax	# n, tmp771
	movslq	%eax, %rcx	# tmp771, tmp770
	movl	-35384(%rbp), %eax	# clist, tmp773
	movslq	%eax, %rdx	# tmp773, tmp772
	movq	%rdx, %rax	# tmp772, tmp774
	salq	$4, %rax	#, tmp775
	subq	%rdx, %rax	# tmp772, tmp774
	addq	%rcx, %rax	# tmp770, tmp776
	movsd	%xmm0, -35312(%rbp,%rax,8)	# D.6214, dc_ref
	.loc 1 665 0 discriminator 2
	addl	$1, -35404(%rbp)	#, i
.L244:
	.loc 1 665 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.169
	movl	60(%rax), %edx	# img.169_330->height, D.6201
	movq	img(%rip), %rax	# img, img.170
	movl	52(%rax), %eax	# img.170_332->width, D.6201
	imull	%edx, %eax	# D.6201, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L245	#,
	.loc 1 669 0 is_stmt 1
	movl	-35396(%rbp), %eax	# n, tmp778
	movslq	%eax, %rcx	# tmp778, tmp777
	movl	-35384(%rbp), %eax	# clist, tmp780
	movslq	%eax, %rdx	# tmp780, tmp779
	movq	%rdx, %rax	# tmp779, tmp781
	salq	$4, %rax	#, tmp782
	subq	%rdx, %rax	# tmp779, tmp781
	addq	%rcx, %rax	# tmp777, tmp783
	movsd	-35312(%rbp,%rax,8), %xmm0	# dc_ref, D.6214
	xorpd	%xmm1, %xmm1	# tmp784
	ucomisd	%xmm1, %xmm0	# tmp784, D.6214
	jp	.L287	#,
	xorpd	%xmm1, %xmm1	# tmp785
	ucomisd	%xmm1, %xmm0	# tmp785, D.6214
	je	.L288	#,
.L287:
	.loc 1 670 0
	cvtsi2sd	-35368(%rbp), %xmm0	# default_weight, D.6214
	mulsd	-35336(%rbp), %xmm0	# dc_org, D.6214
	movl	-35396(%rbp), %eax	# n, tmp787
	movslq	%eax, %rcx	# tmp787, tmp786
	movl	-35384(%rbp), %eax	# clist, tmp789
	movslq	%eax, %rdx	# tmp789, tmp788
	movq	%rdx, %rax	# tmp788, tmp790
	salq	$4, %rax	#, tmp791
	subq	%rdx, %rax	# tmp788, tmp790
	addq	%rcx, %rax	# tmp786, tmp792
	movsd	-35312(%rbp,%rax,8), %xmm1	# dc_ref, D.6214
	divsd	%xmm1, %xmm0	# D.6214, D.6214
	movsd	.LC1(%rip), %xmm1	#, tmp793
	addsd	%xmm1, %xmm0	# tmp793, D.6214
	cvttsd2si	%xmm0, %eax	# D.6214, tmp794
	movl	%eax, -35380(%rbp)	# tmp794, wf_weight
	jmp	.L248	#
.L288:
	.loc 1 672 0
	movl	-35368(%rbp), %eax	# default_weight, tmp795
	movl	%eax, -35380(%rbp)	# tmp795, wf_weight
.L248:
	.loc 1 673 0
	cmpl	$-64, -35380(%rbp)	#, wf_weight
	jl	.L249	#,
	.loc 1 673 0 is_stmt 0 discriminator 1
	cmpl	$127, -35380(%rbp)	#, wf_weight
	jle	.L250	#,
.L249:
	.loc 1 675 0 is_stmt 1
	movl	-35368(%rbp), %eax	# default_weight, tmp796
	movl	%eax, -35380(%rbp)	# tmp796, wf_weight
.L250:
	.loc 1 677 0
	movl	$0, -35340(%rbp)	#, wf_offset
	.loc 1 680 0
	movl	-35396(%rbp), %eax	# n, tmp798
	movslq	%eax, %rdx	# tmp798, tmp797
	movl	-35384(%rbp), %eax	# clist, tmp800
	movslq	%eax, %rcx	# tmp800, tmp799
	movq	%rdx, %rax	# tmp797, tmp801
	addq	%rax, %rax	# tmp801
	addq	%rdx, %rax	# tmp797, tmp801
	salq	$2, %rax	#, tmp802
	imulq	$180, %rcx, %rdx	#, tmp799, tmp803
	addq	%rdx, %rax	# tmp803, tmp804
	addq	%rbp, %rax	#, tmp805
	leaq	-34592(%rax), %rdx	#, tmp806
	movl	-35380(%rbp), %eax	# wf_weight, tmp807
	movl	%eax, (%rdx)	# tmp807, weight
	.loc 1 681 0
	movl	-35396(%rbp), %eax	# n, tmp809
	movslq	%eax, %rdx	# tmp809, tmp808
	movl	-35384(%rbp), %eax	# clist, tmp811
	movslq	%eax, %rcx	# tmp811, tmp810
	movq	%rdx, %rax	# tmp808, tmp812
	addq	%rax, %rax	# tmp812
	addq	%rdx, %rax	# tmp808, tmp812
	salq	$2, %rax	#, tmp813
	imulq	$180, %rcx, %rdx	#, tmp810, tmp814
	addq	%rdx, %rax	# tmp814, tmp815
	addq	%rbp, %rax	#, tmp816
	leaq	-34588(%rax), %rdx	#, tmp817
	movl	-35364(%rbp), %eax	# default_weight_chroma, tmp818
	movl	%eax, (%rdx)	# tmp818, weight
	.loc 1 682 0
	movl	-35396(%rbp), %eax	# n, tmp820
	movslq	%eax, %rdx	# tmp820, tmp819
	movl	-35384(%rbp), %eax	# clist, tmp822
	movslq	%eax, %rcx	# tmp822, tmp821
	movq	%rdx, %rax	# tmp819, tmp823
	addq	%rax, %rax	# tmp823
	addq	%rdx, %rax	# tmp819, tmp823
	salq	$2, %rax	#, tmp824
	imulq	$180, %rcx, %rdx	#, tmp821, tmp825
	addq	%rdx, %rax	# tmp825, tmp826
	addq	%rbp, %rax	#, tmp827
	leaq	-34584(%rax), %rdx	#, tmp828
	movl	-35364(%rbp), %eax	# default_weight_chroma, tmp829
	movl	%eax, (%rdx)	# tmp829, weight
	.loc 1 683 0
	movl	-35396(%rbp), %eax	# n, tmp831
	movslq	%eax, %rdx	# tmp831, tmp830
	movl	-35384(%rbp), %eax	# clist, tmp833
	movslq	%eax, %rcx	# tmp833, tmp832
	movq	%rdx, %rax	# tmp830, tmp834
	addq	%rax, %rax	# tmp834
	addq	%rdx, %rax	# tmp830, tmp834
	salq	$2, %rax	#, tmp835
	imulq	$180, %rcx, %rdx	#, tmp832, tmp836
	addq	%rdx, %rax	# tmp836, tmp837
	addq	%rbp, %rax	#, tmp838
	subq	$33504, %rax	#, tmp839
	movl	$0, (%rax)	#, offset
	.loc 1 684 0
	movl	-35396(%rbp), %eax	# n, tmp841
	movslq	%eax, %rdx	# tmp841, tmp840
	movl	-35384(%rbp), %eax	# clist, tmp843
	movslq	%eax, %rcx	# tmp843, tmp842
	movq	%rdx, %rax	# tmp840, tmp844
	addq	%rax, %rax	# tmp844
	addq	%rdx, %rax	# tmp840, tmp844
	salq	$2, %rax	#, tmp845
	imulq	$180, %rcx, %rdx	#, tmp842, tmp846
	addq	%rdx, %rax	# tmp846, tmp847
	addq	%rbp, %rax	#, tmp848
	subq	$33500, %rax	#, tmp849
	movl	$0, (%rax)	#, offset
	.loc 1 685 0
	movl	-35396(%rbp), %eax	# n, tmp851
	movslq	%eax, %rdx	# tmp851, tmp850
	movl	-35384(%rbp), %eax	# clist, tmp853
	movslq	%eax, %rcx	# tmp853, tmp852
	movq	%rdx, %rax	# tmp850, tmp854
	addq	%rax, %rax	# tmp854
	addq	%rdx, %rax	# tmp850, tmp854
	salq	$2, %rax	#, tmp855
	imulq	$180, %rcx, %rdx	#, tmp852, tmp856
	addq	%rdx, %rax	# tmp856, tmp857
	addq	%rbp, %rax	#, tmp858
	subq	$33496, %rax	#, tmp859
	movl	$0, (%rax)	#, offset
	.loc 1 657 0
	addl	$1, -35396(%rbp)	#, n
.L243:
	.loc 1 657 0 is_stmt 0 discriminator 1
	movl	-35384(%rbp), %eax	# clist, tmp861
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35396(%rbp), %eax	# n, D.6201
	jg	.L251	#,
	.loc 1 655 0 is_stmt 1
	addl	$1, -35384(%rbp)	#, clist
.L242:
	.loc 1 655 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp862
	addl	$2, %eax	#, D.6201
	cmpl	-35384(%rbp), %eax	# clist, D.6201
	jg	.L252	#,
	.loc 1 690 0 is_stmt 1
	movq	active_pps(%rip), %rax	# active_pps, active_pps.171
	movl	196(%rax), %eax	# active_pps.171_355->weighted_bipred_idc, D.6215
	cmpl	$1, %eax	#, D.6215
	jne	.L253	#,
	.loc 1 692 0
	movl	$0, -35384(%rbp)	#, clist
	jmp	.L254	#
.L259:
	.loc 1 694 0
	movl	$0, -35392(%rbp)	#, index
	jmp	.L255	#
.L258:
	.loc 1 696 0
	movl	$0, -35388(%rbp)	#, comp
	jmp	.L256	#
.L257:
	.loc 1 698 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.172
	movl	-35384(%rbp), %edx	# clist, tmp863
	movslq	%edx, %rdx	# tmp863, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_365, D.6206
	movl	-35392(%rbp), %edx	# index, tmp864
	movslq	%edx, %rdx	# tmp864, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_369, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp865
	movslq	%edx, %rdx	# tmp865, D.6203
	salq	$2, %rdx	#, D.6203
	leaq	(%rax,%rdx), %rsi	#, D.6207
	movl	-35388(%rbp), %eax	# comp, tmp867
	movslq	%eax, %rdi	# tmp867, tmp866
	movl	-35384(%rbp), %eax	# clist, tmp869
	movslq	%eax, %rdx	# tmp869, tmp868
	movl	-35392(%rbp), %eax	# index, tmp871
	movslq	%eax, %rcx	# tmp871, tmp870
	movq	%rdx, %rax	# tmp868, tmp872
	addq	%rax, %rax	# tmp872
	addq	%rdx, %rax	# tmp868, tmp872
	movq	%rax, %rdx	# tmp872, tmp873
	salq	$4, %rdx	#, tmp873
	subq	%rax, %rdx	# tmp872, tmp873
	movq	%rcx, %rax	# tmp870, tmp874
	addq	%rax, %rax	# tmp874
	addq	%rcx, %rax	# tmp870, tmp874
	addq	%rdx, %rax	# tmp873, tmp875
	addq	%rdi, %rax	# tmp866, tmp876
	movl	-34592(%rbp,%rax,4), %eax	# weight, D.6201
	movl	%eax, (%rsi)	# D.6201, *_373
	.loc 1 699 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.173
	movl	-35384(%rbp), %edx	# clist, tmp877
	movslq	%edx, %rdx	# tmp877, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_378, D.6206
	movl	-35392(%rbp), %edx	# index, tmp878
	movslq	%edx, %rdx	# tmp878, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_382, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp879
	movslq	%edx, %rdx	# tmp879, D.6203
	salq	$2, %rdx	#, D.6203
	leaq	(%rax,%rdx), %rsi	#, D.6207
	movl	-35388(%rbp), %eax	# comp, tmp881
	movslq	%eax, %rdi	# tmp881, tmp880
	movl	-35384(%rbp), %eax	# clist, tmp883
	movslq	%eax, %rdx	# tmp883, tmp882
	movl	-35392(%rbp), %eax	# index, tmp885
	movslq	%eax, %rcx	# tmp885, tmp884
	movq	%rdx, %rax	# tmp882, tmp886
	addq	%rax, %rax	# tmp886
	addq	%rdx, %rax	# tmp882, tmp886
	movq	%rax, %rdx	# tmp886, tmp887
	salq	$4, %rdx	#, tmp887
	subq	%rax, %rdx	# tmp886, tmp887
	movq	%rcx, %rax	# tmp884, tmp888
	addq	%rax, %rax	# tmp888
	addq	%rcx, %rax	# tmp884, tmp888
	addq	%rdx, %rax	# tmp887, tmp889
	addq	%rdi, %rax	# tmp880, tmp890
	movl	-33504(%rbp,%rax,4), %eax	# offset, D.6201
	movl	%eax, (%rsi)	# D.6201, *_386
	.loc 1 696 0 discriminator 2
	addl	$1, -35388(%rbp)	#, comp
.L256:
	.loc 1 696 0 is_stmt 0 discriminator 1
	cmpl	$2, -35388(%rbp)	#, comp
	jle	.L257	#,
	.loc 1 694 0 is_stmt 1
	addl	$1, -35392(%rbp)	#, index
.L255:
	.loc 1 694 0 is_stmt 0 discriminator 1
	movl	-35384(%rbp), %eax	# clist, tmp892
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35392(%rbp), %eax	# index, D.6201
	jg	.L258	#,
	.loc 1 692 0 is_stmt 1
	addl	$1, -35384(%rbp)	#, clist
.L254:
	.loc 1 692 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp893
	addl	$2, %eax	#, D.6201
	cmpl	-35384(%rbp), %eax	# clist, D.6201
	jg	.L259	#,
	jmp	.L260	#
.L253:
	.loc 1 706 0 is_stmt 1
	movl	$0, -35384(%rbp)	#, clist
	jmp	.L261	#
.L264:
	.loc 1 708 0
	movl	$0, -35392(%rbp)	#, index
	jmp	.L262	#
.L263:
	.loc 1 710 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.174
	movl	-35384(%rbp), %edx	# clist, tmp894
	movslq	%edx, %rdx	# tmp894, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_398, D.6206
	movl	-35392(%rbp), %edx	# index, tmp895
	movslq	%edx, %rdx	# tmp895, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_402, D.6207
	movl	luma_log_weight_denom(%rip), %edx	# luma_log_weight_denom, luma_log_weight_denom.175
	movl	$1, %esi	#, tmp896
	movl	%edx, %ecx	# luma_log_weight_denom.175, tmp972
	sall	%cl, %esi	# tmp972, D.6201
	movl	%esi, %edx	# D.6201, D.6201
	movl	%edx, (%rax)	# D.6201, *_403
	.loc 1 711 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.176
	movl	-35384(%rbp), %edx	# clist, tmp897
	movslq	%edx, %rdx	# tmp897, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_409, D.6206
	movl	-35392(%rbp), %edx	# index, tmp898
	movslq	%edx, %rdx	# tmp898, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_413, D.6207
	leaq	4(%rax), %rdx	#, D.6207
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.177
	movl	$1, %esi	#, tmp899
	movl	%eax, %ecx	# chroma_log_weight_denom.177, tmp974
	sall	%cl, %esi	# tmp974, D.6201
	movl	%esi, %eax	# D.6201, D.6201
	movl	%eax, (%rdx)	# D.6201, *_415
	.loc 1 712 0 discriminator 2
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.178
	movl	-35384(%rbp), %edx	# clist, tmp900
	movslq	%edx, %rdx	# tmp900, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_421, D.6206
	movl	-35392(%rbp), %edx	# index, tmp901
	movslq	%edx, %rdx	# tmp901, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_425, D.6207
	leaq	8(%rax), %rdx	#, D.6207
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, chroma_log_weight_denom.179
	movl	$1, %esi	#, tmp902
	movl	%eax, %ecx	# chroma_log_weight_denom.179, tmp976
	sall	%cl, %esi	# tmp976, D.6201
	movl	%esi, %eax	# D.6201, D.6201
	movl	%eax, (%rdx)	# D.6201, *_427
	.loc 1 713 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.180
	movl	-35384(%rbp), %edx	# clist, tmp903
	movslq	%edx, %rdx	# tmp903, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_433, D.6206
	movl	-35392(%rbp), %edx	# index, tmp904
	movslq	%edx, %rdx	# tmp904, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_437, D.6207
	movl	$0, (%rax)	#, *_438
	.loc 1 714 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.181
	movl	-35384(%rbp), %edx	# clist, tmp905
	movslq	%edx, %rdx	# tmp905, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_442, D.6206
	movl	-35392(%rbp), %edx	# index, tmp906
	movslq	%edx, %rdx	# tmp906, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_446, D.6207
	addq	$4, %rax	#, D.6207
	movl	$0, (%rax)	#, *_448
	.loc 1 715 0 discriminator 2
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.182
	movl	-35384(%rbp), %edx	# clist, tmp907
	movslq	%edx, %rdx	# tmp907, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_452, D.6206
	movl	-35392(%rbp), %edx	# index, tmp908
	movslq	%edx, %rdx	# tmp908, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_456, D.6207
	addq	$8, %rax	#, D.6207
	movl	$0, (%rax)	#, *_458
	.loc 1 708 0 discriminator 2
	addl	$1, -35392(%rbp)	#, index
.L262:
	.loc 1 708 0 is_stmt 0 discriminator 1
	movl	-35384(%rbp), %eax	# clist, tmp910
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35392(%rbp), %eax	# index, D.6201
	jg	.L263	#,
	.loc 1 706 0 is_stmt 1
	addl	$1, -35384(%rbp)	#, clist
.L261:
	.loc 1 706 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp911
	addl	$2, %eax	#, D.6201
	cmpl	-35384(%rbp), %eax	# clist, D.6201
	jg	.L264	#,
.L260:
	.loc 1 719 0 is_stmt 1
	movl	$0, -35404(%rbp)	#, i
	jmp	.L265	#
.L272:
	.loc 1 721 0
	movl	$0, -35400(%rbp)	#, j
	jmp	.L266	#
.L271:
	.loc 1 723 0
	movl	$0, -35388(%rbp)	#, comp
	jmp	.L267	#
.L270:
	.loc 1 725 0
	cmpl	$0, -35388(%rbp)	#, comp
	jne	.L268	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	luma_log_weight_denom(%rip), %eax	# luma_log_weight_denom, iftmp.183
	jmp	.L269	#
.L268:
	.loc 1 725 0 discriminator 2
	movl	chroma_log_weight_denom(%rip), %eax	# chroma_log_weight_denom, iftmp.183
.L269:
	.loc 1 725 0 discriminator 3
	movl	%eax, -35344(%rbp)	# iftmp.183, log_weight_denom
	.loc 1 726 0 is_stmt 1 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.184
	movq	(%rax), %rax	# *wbp_weight.184_469, D.6205
	movl	-35404(%rbp), %edx	# i, tmp912
	movslq	%edx, %rdx	# tmp912, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_473, D.6206
	movl	-35400(%rbp), %edx	# j, tmp913
	movslq	%edx, %rdx	# tmp913, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_477, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp914
	movslq	%edx, %rdx	# tmp914, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rax, %rdx	# D.6207, D.6207
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.185
	movq	(%rax), %rax	# *wp_weight.185_482, D.6206
	movl	-35404(%rbp), %ecx	# i, tmp915
	movslq	%ecx, %rcx	# tmp915, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_486, D.6207
	movl	-35388(%rbp), %ecx	# comp, tmp916
	movslq	%ecx, %rcx	# tmp916, D.6203
	salq	$2, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6207
	movl	(%rax), %eax	# *_490, D.6201
	movl	%eax, (%rdx)	# D.6201, *_481
	.loc 1 727 0 discriminator 3
	movq	wbp_weight(%rip), %rax	# wbp_weight, wbp_weight.186
	addq	$8, %rax	#, D.6210
	movq	(%rax), %rax	# *_493, D.6205
	movl	-35404(%rbp), %edx	# i, tmp917
	movslq	%edx, %rdx	# tmp917, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_497, D.6206
	movl	-35400(%rbp), %edx	# j, tmp918
	movslq	%edx, %rdx	# tmp918, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_501, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp919
	movslq	%edx, %rdx	# tmp919, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rax, %rdx	# D.6207, D.6207
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.187
	addq	$8, %rax	#, D.6205
	movq	(%rax), %rax	# *_507, D.6206
	movl	-35400(%rbp), %ecx	# j, tmp920
	movslq	%ecx, %rcx	# tmp920, D.6203
	salq	$3, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_511, D.6207
	movl	-35388(%rbp), %ecx	# comp, tmp921
	movslq	%ecx, %rcx	# tmp921, D.6203
	salq	$2, %rcx	#, D.6203
	addq	%rcx, %rax	# D.6203, D.6207
	movl	(%rax), %eax	# *_515, D.6201
	movl	%eax, (%rdx)	# D.6201, *_505
	.loc 1 723 0 discriminator 3
	addl	$1, -35388(%rbp)	#, comp
.L267:
	.loc 1 723 0 is_stmt 0 discriminator 1
	cmpl	$2, -35388(%rbp)	#, comp
	jle	.L270	#,
	.loc 1 721 0 is_stmt 1
	addl	$1, -35400(%rbp)	#, j
.L266:
	.loc 1 721 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.6201
	cmpl	-35400(%rbp), %eax	# j, D.6201
	jg	.L271	#,
	.loc 1 719 0 is_stmt 1
	addl	$1, -35404(%rbp)	#, i
.L265:
	.loc 1 719 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.6201
	cmpl	-35404(%rbp), %eax	# i, D.6201
	jg	.L272	#,
.L237:
	.loc 1 738 0 is_stmt 1
	movl	$0, -35384(%rbp)	#, clist
	jmp	.L273	#
.L285:
	.loc 1 740 0
	movl	$0, -35392(%rbp)	#, index
	jmp	.L274	#
.L282:
	.loc 1 742 0
	movl	$0, -35388(%rbp)	#, comp
	jmp	.L275	#
.L279:
	.loc 1 744 0
	movq	wp_weight(%rip), %rax	# wp_weight, wp_weight.188
	movl	-35384(%rbp), %edx	# clist, tmp922
	movslq	%edx, %rdx	# tmp922, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_528, D.6206
	movl	-35392(%rbp), %edx	# index, tmp923
	movslq	%edx, %rdx	# tmp923, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_532, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp924
	movslq	%edx, %rdx	# tmp924, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6207
	movl	(%rax), %eax	# *_536, D.6201
	cmpl	-35368(%rbp), %eax	# default_weight, D.6201
	jne	.L276	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	movq	wp_offset(%rip), %rax	# wp_offset, wp_offset.189
	movl	-35384(%rbp), %edx	# clist, tmp925
	movslq	%edx, %rdx	# tmp925, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6205
	movq	(%rax), %rax	# *_541, D.6206
	movl	-35392(%rbp), %edx	# index, tmp926
	movslq	%edx, %rdx	# tmp926, D.6203
	salq	$3, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6206
	movq	(%rax), %rax	# *_545, D.6207
	movl	-35388(%rbp), %edx	# comp, tmp927
	movslq	%edx, %rdx	# tmp927, D.6203
	salq	$2, %rdx	#, D.6203
	addq	%rdx, %rax	# D.6203, D.6207
	movl	(%rax), %eax	# *_549, D.6201
	testl	%eax, %eax	# D.6201
	je	.L277	#,
.L276:
	.loc 1 746 0 is_stmt 1
	movl	$1, -35376(%rbp)	#, perform_wp
	.loc 1 747 0
	jmp	.L278	#
.L277:
	.loc 1 742 0
	addl	$1, -35388(%rbp)	#, comp
.L275:
	.loc 1 742 0 is_stmt 0 discriminator 1
	cmpl	$2, -35388(%rbp)	#, comp
	jle	.L279	#,
.L278:
	.loc 1 750 0 is_stmt 1
	cmpl	$1, -35376(%rbp)	#, perform_wp
	jne	.L280	#,
	.loc 1 750 0 is_stmt 0 discriminator 1
	jmp	.L281	#
.L280:
	.loc 1 740 0 is_stmt 1
	addl	$1, -35392(%rbp)	#, index
.L274:
	.loc 1 740 0 is_stmt 0 discriminator 1
	movl	-35384(%rbp), %eax	# clist, tmp929
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.6201
	cmpl	-35392(%rbp), %eax	# index, D.6201
	jg	.L282	#,
.L281:
	.loc 1 752 0 is_stmt 1
	cmpl	$1, -35376(%rbp)	#, perform_wp
	jne	.L283	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	jmp	.L284	#
.L283:
	.loc 1 738 0 is_stmt 1
	addl	$1, -35384(%rbp)	#, clist
.L273:
	.loc 1 738 0 is_stmt 0 discriminator 1
	movl	-35372(%rbp), %eax	# list_offset, tmp930
	addl	$2, %eax	#, D.6201
	cmpl	-35384(%rbp), %eax	# clist, D.6201
	jg	.L285	#,
.L284:
	.loc 1 755 0 is_stmt 1
	movl	-35376(%rbp), %eax	# perform_wp, D.6201
	.loc 1 756 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test_wp_B_slice, .-test_wp_B_slice
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1071644672
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
	.long	0x2251
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF434
	.byte	0x1
	.long	.LASF435
	.long	.LASF436
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
	.uleb128 0xa
	.byte	0xf0
	.byte	0x4
	.byte	0x67
	.long	0x23e
	.uleb128 0xb
	.long	.LASF16
	.byte	0x4
	.byte	0x69
	.long	0xc2
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0x6c
	.long	0xc2
	.byte	0xc
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0x6e
	.long	0xc2
	.byte	0x10
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.byte	0x6f
	.long	0xc2
	.byte	0x14
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x70
	.long	0x23e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x73
	.long	0xc2
	.byte	0x38
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x77
	.long	0x24e
	.byte	0x44
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.byte	0x79
	.long	0x24e
	.byte	0x64
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.byte	0x7a
	.long	0x24e
	.byte	0x84
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0x7c
	.long	0xc2
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.byte	0x80
	.long	0x25e
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0x84
	.long	0xc2
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF42
	.byte	0x4
	.byte	0x8d
	.long	0xc2
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.byte	0x8e
	.long	0xc2
	.byte	0xe0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x4
	.byte	0x8f
	.long	0xc2
	.byte	0xe4
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0x90
	.long	0xc2
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x24e
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x25e
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2
	.uleb128 0x7
	.long	.LASF46
	.byte	0x4
	.byte	0x91
	.long	0xcd
	.uleb128 0x7
	.long	.LASF47
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x295
	.uleb128 0x9
	.long	.LASF48
	.sleb128 0
	.uleb128 0x9
	.long	.LASF49
	.sleb128 1
	.uleb128 0x9
	.long	.LASF50
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF51
	.byte	0x5
	.byte	0xbe
	.long	0x27a
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x390
	.uleb128 0xb
	.long	.LASF52
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF55
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF56
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0xd5
	.long	0x25e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF60
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF61
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF64
	.byte	0x5
	.byte	0xdd
	.long	0x25e
	.byte	0x40
	.uleb128 0xb
	.long	.LASF65
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
	.long	.LASF66
	.byte	0x5
	.byte	0xe2
	.long	0x2a0
	.uleb128 0x7
	.long	.LASF67
	.byte	0x5
	.byte	0xe4
	.long	0x3a6
	.uleb128 0x6
	.byte	0x8
	.long	0x390
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x3d9
	.uleb128 0xb
	.long	.LASF68
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
	.long	.LASF69
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF70
	.byte	0x5
	.byte	0xee
	.long	0x3ac
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x450
	.uleb128 0xe
	.long	.LASF71
	.byte	0x5
	.value	0x104
	.long	0x450
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0x5
	.value	0x105
	.long	0x466
	.value	0x210
	.uleb128 0xf
	.long	.LASF73
	.byte	0x5
	.value	0x106
	.long	0x47c
	.value	0x330
	.uleb128 0xf
	.long	.LASF74
	.byte	0x5
	.value	0x107
	.long	0x492
	.value	0x470
	.uleb128 0xf
	.long	.LASF75
	.byte	0x5
	.value	0x108
	.long	0x4a8
	.value	0x530
	.uleb128 0xf
	.long	.LASF76
	.byte	0x5
	.value	0x109
	.long	0x4a8
	.value	0x570
	.uleb128 0xf
	.long	.LASF77
	.byte	0x5
	.value	0x10a
	.long	0x4b8
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x466
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x47c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x492
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x4a8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x4b8
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x4c8
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x5
	.value	0x10c
	.long	0x3e4
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x568
	.uleb128 0xe
	.long	.LASF79
	.byte	0x5
	.value	0x11b
	.long	0x568
	.byte	0
	.uleb128 0xe
	.long	.LASF80
	.byte	0x5
	.value	0x11c
	.long	0x4a8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x11d
	.long	0x578
	.byte	0x60
	.uleb128 0xf
	.long	.LASF82
	.byte	0x5
	.value	0x11e
	.long	0x58e
	.value	0x120
	.uleb128 0xf
	.long	.LASF83
	.byte	0x5
	.value	0x11f
	.long	0x5a4
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF84
	.byte	0x5
	.value	0x120
	.long	0x5a4
	.value	0xd00
	.uleb128 0xf
	.long	.LASF85
	.byte	0x5
	.value	0x121
	.long	0x5ba
	.value	0x1660
	.uleb128 0xf
	.long	.LASF86
	.byte	0x5
	.value	0x122
	.long	0x5ba
	.value	0x1980
	.uleb128 0xf
	.long	.LASF87
	.byte	0x5
	.value	0x123
	.long	0x5a4
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF88
	.byte	0x5
	.value	0x124
	.long	0x5a4
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x578
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x58e
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x5a4
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x5ba
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x3d9
	.long	0x5d0
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF89
	.byte	0x5
	.value	0x125
	.long	0x4d4
	.uleb128 0x11
	.long	.LASF94
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x611
	.uleb128 0xe
	.long	.LASF90
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF91
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x138
	.long	0x611
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5dc
	.uleb128 0x10
	.long	.LASF93
	.byte	0x5
	.value	0x139
	.long	0x5dc
	.uleb128 0x11
	.long	.LASF95
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x67f
	.uleb128 0xe
	.long	.LASF96
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF98
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF99
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF100
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x143
	.long	0x67f
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x623
	.uleb128 0x10
	.long	.LASF101
	.byte	0x5
	.value	0x144
	.long	0x623
	.uleb128 0x11
	.long	.LASF102
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x71f
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF105
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
	.long	.LASF106
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF107
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
	.long	.LASF108
	.byte	0x5
	.value	0x158
	.long	0x739
	.byte	0x20
	.uleb128 0xe
	.long	.LASF109
	.byte	0x5
	.value	0x15a
	.long	0x755
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x739
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
	.long	0x71f
	.uleb128 0x13
	.long	0x74f
	.uleb128 0x14
	.long	0x74f
	.uleb128 0x14
	.long	0x39b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x691
	.uleb128 0x6
	.byte	0x8
	.long	0x73f
	.uleb128 0x10
	.long	.LASF110
	.byte	0x5
	.value	0x15c
	.long	0x691
	.uleb128 0x15
	.long	.LASF111
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x9e1
	.uleb128 0xe
	.long	.LASF112
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF113
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF114
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
	.long	.LASF115
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF116
	.byte	0x5
	.value	0x166
	.long	0x23e
	.byte	0x14
	.uleb128 0xe
	.long	.LASF117
	.byte	0x5
	.value	0x168
	.long	0x9e1
	.byte	0x38
	.uleb128 0xe
	.long	.LASF118
	.byte	0x5
	.value	0x169
	.long	0x9e1
	.byte	0x40
	.uleb128 0xe
	.long	.LASF119
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x9e7
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x16d
	.long	0xa09
	.value	0x14c
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x16e
	.long	0xa09
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x170
	.long	0x26f
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x171
	.long	0xa19
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x172
	.long	0xa19
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF125
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF126
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF135
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF136
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF137
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF138
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF140
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF141
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF142
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF143
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF144
	.byte	0x5
	.value	0x18a
	.long	0xa29
	.value	0x248
	.uleb128 0xf
	.long	.LASF145
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF146
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF147
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF148
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF149
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF150
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF151
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF152
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF153
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x767
	.uleb128 0x4
	.long	0x34
	.long	0xa09
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
	.long	0xa19
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xa29
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF154
	.uleb128 0x10
	.long	.LASF155
	.byte	0x5
	.value	0x196
	.long	0x767
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xad5
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x19f
	.long	0xa2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF161
	.byte	0x5
	.value	0x1a2
	.long	0xa2
	.byte	0x14
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1a4
	.long	0xa2
	.byte	0x15
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF165
	.byte	0x5
	.value	0x1a8
	.long	0x25e
	.byte	0x20
	.uleb128 0xe
	.long	.LASF166
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF167
	.byte	0x5
	.value	0x1ab
	.long	0xa3c
	.uleb128 0x11
	.long	.LASF168
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xb16
	.uleb128 0xe
	.long	.LASF169
	.byte	0x5
	.value	0x1b1
	.long	0xb16
	.byte	0
	.uleb128 0xe
	.long	.LASF170
	.byte	0x5
	.value	0x1b2
	.long	0x390
	.byte	0x8
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x1b4
	.long	0xb3c
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xad5
	.uleb128 0x18
	.long	0x34
	.long	0xb30
	.uleb128 0x14
	.long	0xb30
	.uleb128 0x14
	.long	0xb36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x75b
	.uleb128 0x6
	.byte	0x8
	.long	0xae1
	.uleb128 0x6
	.byte	0x8
	.long	0xb1c
	.uleb128 0x10
	.long	.LASF172
	.byte	0x5
	.value	0x1b8
	.long	0xae1
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xc5b
	.uleb128 0xe
	.long	.LASF173
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
	.long	.LASF174
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1c3
	.long	0xc5b
	.byte	0x18
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1c4
	.long	0xc61
	.byte	0x20
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x1c5
	.long	0xc67
	.byte	0x28
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1c8
	.long	0xc6d
	.byte	0x30
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF185
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF186
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x1d3
	.long	0xc82
	.byte	0x78
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x1d5
	.long	0xc88
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb42
	.uleb128 0x6
	.byte	0x8
	.long	0x4c8
	.uleb128 0x6
	.byte	0x8
	.long	0x5d0
	.uleb128 0x6
	.byte	0x8
	.long	0x617
	.uleb128 0x18
	.long	0xc2
	.long	0xc82
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc73
	.uleb128 0x4
	.long	0x34
	.long	0xc9e
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF192
	.byte	0x5
	.value	0x1d7
	.long	0xb4e
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xd14
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x1df
	.long	0xd14
	.byte	0x8
	.uleb128 0xf
	.long	.LASF196
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF197
	.byte	0x5
	.value	0x1e1
	.long	0xd2a
	.value	0x32c
	.uleb128 0xf
	.long	.LASF198
	.byte	0x5
	.value	0x1e2
	.long	0xd2a
	.value	0x330
	.uleb128 0xf
	.long	.LASF199
	.byte	0x5
	.value	0x1e3
	.long	0xd2a
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xd24
	.long	0xd24
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc9e
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF200
	.uleb128 0x10
	.long	.LASF201
	.byte	0x5
	.value	0x1e4
	.long	0xcaa
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xd49
	.uleb128 0x6
	.byte	0x8
	.long	0xd4f
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x25e
	.uleb128 0x19
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1740
	.uleb128 0xe
	.long	.LASF202
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
	.long	.LASF203
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF209
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
	.long	.LASF115
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF210
	.byte	0x5
	.value	0x372
	.long	0xd2a
	.byte	0x30
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF213
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF214
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF215
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF216
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF217
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF218
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF221
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x37f
	.long	0xd3d
	.byte	0x68
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x380
	.long	0xd3d
	.byte	0x70
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x383
	.long	0x1740
	.byte	0x80
	.uleb128 0xe
	.long	.LASF227
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF228
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF229
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF230
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF231
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF232
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF233
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF234
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF235
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF236
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF237
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF238
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF239
	.byte	0x5
	.value	0x395
	.long	0x1746
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF240
	.byte	0x5
	.value	0x397
	.long	0x1762
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF241
	.byte	0x5
	.value	0x398
	.long	0x177e
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF242
	.byte	0x5
	.value	0x399
	.long	0x179a
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x17bc
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x17d2
	.value	0x3338
	.uleb128 0xf
	.long	.LASF243
	.byte	0x5
	.value	0x39d
	.long	0x17e8
	.value	0x3738
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x39e
	.long	0x1740
	.value	0x3740
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x3a0
	.long	0x17ee
	.value	0x3748
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x3a1
	.long	0xd24
	.value	0x3750
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x3a2
	.long	0x17f4
	.value	0x3758
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x3a3
	.long	0x17fa
	.value	0x3760
	.uleb128 0x1a
	.long	.LASF249
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1a
	.long	.LASF250
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1b
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1a
	.long	.LASF251
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1a
	.long	.LASF253
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1a
	.long	.LASF254
	.byte	0x5
	.value	0x3ac
	.long	0x180b
	.long	0x11880
	.uleb128 0x1a
	.long	.LASF255
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1a
	.long	.LASF257
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1a
	.long	.LASF258
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1a
	.long	.LASF259
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1a
	.long	.LASF260
	.byte	0x5
	.value	0x3b4
	.long	0xa29
	.long	0x118d8
	.uleb128 0x1a
	.long	.LASF261
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1a
	.long	.LASF262
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1a
	.long	.LASF263
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.value	0x3ba
	.long	0x1821
	.long	0x118f0
	.uleb128 0x1a
	.long	.LASF266
	.byte	0x5
	.value	0x3bb
	.long	0x1821
	.long	0x118f8
	.uleb128 0x1a
	.long	.LASF267
	.byte	0x5
	.value	0x3bd
	.long	0x1821
	.long	0x11900
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x5
	.value	0x3be
	.long	0x1821
	.long	0x11908
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x5
	.value	0x3bf
	.long	0x1845
	.long	0x11910
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x5
	.value	0x3ce
	.long	0x1855
	.long	0x11950
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1a
	.long	.LASF282
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x5
	.value	0x3e4
	.long	0x186b
	.long	0x11ae8
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1a
	.long	.LASF295
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1a
	.long	.LASF297
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1a
	.long	.LASF300
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1a
	.long	.LASF301
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1a
	.long	.LASF302
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1a
	.long	.LASF23
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1a
	.long	.LASF303
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1a
	.long	.LASF304
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1a
	.long	.LASF305
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1a
	.long	.LASF306
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1a
	.long	.LASF307
	.byte	0x5
	.value	0x409
	.long	0x187b
	.long	0x11b40
	.uleb128 0x1a
	.long	.LASF308
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1a
	.long	.LASF309
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1a
	.long	.LASF310
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1a
	.long	.LASF311
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1a
	.long	.LASF312
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1a
	.long	.LASF313
	.byte	0x5
	.value	0x413
	.long	0xa29
	.long	0x11b60
	.uleb128 0x1a
	.long	.LASF314
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x5
	.value	0x41b
	.long	0x1881
	.long	0x11b88
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1a
	.long	.LASF327
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1a
	.long	.LASF328
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1a
	.long	.LASF329
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1a
	.long	.LASF330
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1a
	.long	.LASF331
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1a
	.long	.LASF332
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1a
	.long	.LASF333
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1a
	.long	.LASF334
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1a
	.long	.LASF335
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1a
	.long	.LASF336
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1a
	.long	.LASF337
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1a
	.long	.LASF338
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1a
	.long	.LASF339
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1a
	.long	.LASF340
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1a
	.long	.LASF341
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1a
	.long	.LASF342
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1a
	.long	.LASF343
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1a
	.long	.LASF344
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1a
	.long	.LASF345
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1a
	.long	.LASF346
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1a
	.long	.LASF347
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1a
	.long	.LASF348
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1a
	.long	.LASF349
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1a
	.long	.LASF350
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1a
	.long	.LASF351
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1a
	.long	.LASF352
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1a
	.long	.LASF353
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1a
	.long	.LASF354
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1a
	.long	.LASF355
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1a
	.long	.LASF356
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd3d
	.uleb128 0x4
	.long	0x42
	.long	0x1762
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
	.long	0x177e
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
	.long	0x179a
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
	.long	0x17bc
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
	.long	0x17d2
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x17e8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1740
	.uleb128 0x6
	.byte	0x8
	.long	0xd31
	.uleb128 0x6
	.byte	0x8
	.long	0xa30
	.uleb128 0x4
	.long	0x75b
	.long	0x180b
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1821
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1827
	.uleb128 0x6
	.byte	0x8
	.long	0x182d
	.uleb128 0x6
	.byte	0x8
	.long	0x1833
	.uleb128 0x6
	.byte	0x8
	.long	0x1839
	.uleb128 0x6
	.byte	0x8
	.long	0x183f
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x1855
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x186b
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x187b
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x685
	.uleb128 0x6
	.byte	0x8
	.long	0xa29
	.uleb128 0x10
	.long	.LASF357
	.byte	0x5
	.value	0x449
	.long	0xd5b
	.uleb128 0x1d
	.long	.LASF358
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x1b09
	.uleb128 0xb
	.long	.LASF207
	.byte	0x6
	.byte	0x17
	.long	0x295
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF359
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF360
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF361
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF362
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF363
	.byte	0x6
	.byte	0x1e
	.long	0x1b09
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF364
	.byte	0x6
	.byte	0x1f
	.long	0x1b09
	.value	0x648
	.uleb128 0x1e
	.long	.LASF365
	.byte	0x6
	.byte	0x20
	.long	0x1b09
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF366
	.byte	0x6
	.byte	0x21
	.long	0x1b09
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF296
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF367
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF98
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF99
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF368
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF369
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF370
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF371
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF372
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF373
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF374
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF375
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF376
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF377
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF281
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF378
	.byte	0x6
	.byte	0x31
	.long	0xd49
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x6
	.byte	0x32
	.long	0xd4f
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF380
	.byte	0x6
	.byte	0x33
	.long	0xd4f
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF381
	.byte	0x6
	.byte	0x34
	.long	0xd49
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF382
	.byte	0x6
	.byte	0x35
	.long	0xd49
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF383
	.byte	0x6
	.byte	0x36
	.long	0xd43
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF131
	.byte	0x6
	.byte	0x38
	.long	0x25e
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF384
	.byte	0x6
	.byte	0x3a
	.long	0x1833
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF385
	.byte	0x6
	.byte	0x3c
	.long	0x1b1f
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF386
	.byte	0x6
	.byte	0x3f
	.long	0x1b1f
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x182d
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF387
	.byte	0x6
	.byte	0x44
	.long	0xd55
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF388
	.byte	0x6
	.byte	0x45
	.long	0xd55
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF273
	.byte	0x6
	.byte	0x47
	.long	0x1b31
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF389
	.byte	0x6
	.byte	0x48
	.long	0x1b31
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF390
	.byte	0x6
	.byte	0x49
	.long	0x1b31
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF391
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF392
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF393
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF394
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF395
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF396
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF397
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x26f
	.long	0x1b1f
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b25
	.uleb128 0x6
	.byte	0x8
	.long	0x1b2b
	.uleb128 0x6
	.byte	0x8
	.long	0x26f
	.uleb128 0x6
	.byte	0x8
	.long	0x1893
	.uleb128 0x7
	.long	.LASF398
	.byte	0x6
	.byte	0x52
	.long	0x1893
	.uleb128 0x6
	.byte	0x8
	.long	0x1b37
	.uleb128 0x20
	.long	.LASF437
	.byte	0x1
	.byte	0x1c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c41
	.uleb128 0x21
	.long	.LASF416
	.byte	0x1
	.byte	0x1c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -964
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -948
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x1e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x23
	.long	.LASF399
	.byte	0x1
	.byte	0x20
	.long	0xa29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x23
	.long	.LASF400
	.byte	0x1
	.byte	0x21
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x23
	.long	.LASF401
	.byte	0x1
	.byte	0x22
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.uleb128 0x23
	.long	.LASF402
	.byte	0x1
	.byte	0x23
	.long	0x1c41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x23
	.long	.LASF403
	.byte	0x1
	.byte	0x25
	.long	0xd4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x23
	.long	.LASF404
	.byte	0x1
	.byte	0x26
	.long	0xd4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x23
	.long	.LASF405
	.byte	0x1
	.byte	0x27
	.long	0x1c51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x23
	.long	.LASF406
	.byte	0x1
	.byte	0x29
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -924
	.uleb128 0x23
	.long	.LASF407
	.byte	0x1
	.byte	0x2a
	.long	0x1c61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x23
	.long	.LASF408
	.byte	0x1
	.byte	0x2b
	.long	0x1c61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x23
	.long	.LASF409
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.byte	0
	.uleb128 0x4
	.long	0xa29
	.long	0x1c51
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1c61
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1c7d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.long	.LASF438
	.byte	0x1
	.byte	0x98
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e22
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35428
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x9a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35424
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x9a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35420
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.byte	0x9a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35416
	.uleb128 0x22
	.string	"tx"
	.byte	0x1
	.byte	0x9c
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35384
	.uleb128 0x23
	.long	.LASF410
	.byte	0x1
	.byte	0x9c
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35380
	.uleb128 0x23
	.long	.LASF399
	.byte	0x1
	.byte	0x9d
	.long	0xa29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35368
	.uleb128 0x23
	.long	.LASF400
	.byte	0x1
	.byte	0x9e
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35412
	.uleb128 0x23
	.long	.LASF401
	.byte	0x1
	.byte	0x9f
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35408
	.uleb128 0x23
	.long	.LASF402
	.byte	0x1
	.byte	0xa0
	.long	0x1e22
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35328
	.uleb128 0x23
	.long	.LASF411
	.byte	0x1
	.byte	0xa2
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35376
	.uleb128 0x23
	.long	.LASF403
	.byte	0x1
	.byte	0xa4
	.long	0xd4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35360
	.uleb128 0x23
	.long	.LASF404
	.byte	0x1
	.byte	0xa5
	.long	0xd4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35352
	.uleb128 0x23
	.long	.LASF405
	.byte	0x1
	.byte	0xa6
	.long	0x1c51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35344
	.uleb128 0x23
	.long	.LASF406
	.byte	0x1
	.byte	0xa7
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35396
	.uleb128 0x23
	.long	.LASF407
	.byte	0x1
	.byte	0xa8
	.long	0x1e38
	.uleb128 0x4
	.byte	0x91
	.sleb128 -34608
	.uleb128 0x23
	.long	.LASF408
	.byte	0x1
	.byte	0xa9
	.long	0x1e38
	.uleb128 0x4
	.byte	0x91
	.sleb128 -33520
	.uleb128 0x23
	.long	.LASF412
	.byte	0x1
	.byte	0xaa
	.long	0x1e54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32432
	.uleb128 0x23
	.long	.LASF413
	.byte	0x1
	.byte	0xab
	.long	0x1e54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16224
	.uleb128 0x23
	.long	.LASF409
	.byte	0x1
	.byte	0xac
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35404
	.uleb128 0x23
	.long	.LASF414
	.byte	0x1
	.byte	0xad
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35400
	.uleb128 0x23
	.long	.LASF415
	.byte	0x1
	.byte	0xad
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35372
	.uleb128 0x25
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x22
	.string	"td"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35392
	.uleb128 0x22
	.string	"tb"
	.byte	0x1
	.byte	0xd3
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35388
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xa29
	.long	0x1e38
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1e54
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1e76
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.long	.LASF419
	.byte	0x1
	.value	0x19e
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fa3
	.uleb128 0x27
	.long	.LASF416
	.byte	0x1
	.value	0x19e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -948
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1a0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -944
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x1a0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -940
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x1a0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x1a2
	.long	0xa29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x29
	.long	.LASF400
	.byte	0x1
	.value	0x1a3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.value	0x1a4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x29
	.long	.LASF402
	.byte	0x1
	.value	0x1a5
	.long	0x1c41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x29
	.long	.LASF403
	.byte	0x1
	.value	0x1a7
	.long	0xd4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x29
	.long	.LASF404
	.byte	0x1
	.value	0x1a8
	.long	0xd4f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x29
	.long	.LASF405
	.byte	0x1
	.value	0x1a9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -912
	.uleb128 0x29
	.long	.LASF417
	.byte	0x1
	.value	0x1aa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -908
	.uleb128 0x29
	.long	.LASF406
	.byte	0x1
	.value	0x1ab
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -916
	.uleb128 0x29
	.long	.LASF407
	.byte	0x1
	.value	0x1ac
	.long	0x1c61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x29
	.long	.LASF408
	.byte	0x1
	.value	0x1ad
	.long	0x1c61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x1ae
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -924
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x1af
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.byte	0
	.uleb128 0x26
	.long	.LASF420
	.byte	0x1
	.value	0x213
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2189
	.uleb128 0x27
	.long	.LASF421
	.byte	0x1
	.value	0x213
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35428
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x215
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35420
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x215
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35416
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.value	0x215
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35412
	.uleb128 0x28
	.string	"tx"
	.byte	0x1
	.value	0x217
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35368
	.uleb128 0x29
	.long	.LASF410
	.byte	0x1
	.value	0x217
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35364
	.uleb128 0x29
	.long	.LASF399
	.byte	0x1
	.value	0x218
	.long	0xa29
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35352
	.uleb128 0x29
	.long	.LASF400
	.byte	0x1
	.value	0x219
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35408
	.uleb128 0x29
	.long	.LASF401
	.byte	0x1
	.value	0x21a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35404
	.uleb128 0x29
	.long	.LASF402
	.byte	0x1
	.value	0x21b
	.long	0x1e22
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35328
	.uleb128 0x29
	.long	.LASF411
	.byte	0x1
	.value	0x21d
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35360
	.uleb128 0x29
	.long	.LASF403
	.byte	0x1
	.value	0x21f
	.long	0xd4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35344
	.uleb128 0x29
	.long	.LASF404
	.byte	0x1
	.value	0x220
	.long	0xd4f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35336
	.uleb128 0x29
	.long	.LASF405
	.byte	0x1
	.value	0x221
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35384
	.uleb128 0x29
	.long	.LASF417
	.byte	0x1
	.value	0x222
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35380
	.uleb128 0x29
	.long	.LASF406
	.byte	0x1
	.value	0x223
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35388
	.uleb128 0x29
	.long	.LASF407
	.byte	0x1
	.value	0x224
	.long	0x1e38
	.uleb128 0x4
	.byte	0x91
	.sleb128 -34608
	.uleb128 0x29
	.long	.LASF408
	.byte	0x1
	.value	0x225
	.long	0x1e38
	.uleb128 0x4
	.byte	0x91
	.sleb128 -33520
	.uleb128 0x29
	.long	.LASF412
	.byte	0x1
	.value	0x226
	.long	0x1e54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -32432
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0x227
	.long	0x1e54
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16224
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x228
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35400
	.uleb128 0x29
	.long	.LASF414
	.byte	0x1
	.value	0x229
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35396
	.uleb128 0x29
	.long	.LASF415
	.byte	0x1
	.value	0x229
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35356
	.uleb128 0x29
	.long	.LASF418
	.byte	0x1
	.value	0x22a
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35392
	.uleb128 0x25
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x28
	.string	"td"
	.byte	0x1
	.value	0x246
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35376
	.uleb128 0x28
	.string	"tb"
	.byte	0x1
	.value	0x246
	.long	0x34
	.uleb128 0x4
	.byte	0x91
	.sleb128 -35372
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF422
	.byte	0x5
	.value	0x1ee
	.long	0xd49
	.uleb128 0x2a
	.long	.LASF423
	.byte	0x5
	.value	0x1f6
	.long	0x21a1
	.uleb128 0x6
	.byte	0x8
	.long	0x264
	.uleb128 0x2a
	.long	.LASF424
	.byte	0x5
	.value	0x200
	.long	0x1740
	.uleb128 0x2a
	.long	.LASF425
	.byte	0x5
	.value	0x201
	.long	0x1740
	.uleb128 0x2a
	.long	.LASF426
	.byte	0x5
	.value	0x202
	.long	0x17e8
	.uleb128 0x2a
	.long	.LASF427
	.byte	0x5
	.value	0x203
	.long	0x34
	.uleb128 0x2a
	.long	.LASF428
	.byte	0x5
	.value	0x204
	.long	0x34
	.uleb128 0x2a
	.long	.LASF429
	.byte	0x5
	.value	0x205
	.long	0x34
	.uleb128 0x2a
	.long	.LASF430
	.byte	0x5
	.value	0x206
	.long	0x34
	.uleb128 0x2b
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2207
	.uleb128 0x6
	.byte	0x8
	.long	0x1887
	.uleb128 0x4
	.long	0x221d
	.long	0x221d
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b42
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x6
	.byte	0xa0
	.long	0x220d
	.uleb128 0x4
	.long	0x34
	.long	0x223e
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x2c
	.long	.LASF432
	.byte	0x6
	.byte	0xa1
	.long	0x222e
	.uleb128 0x2c
	.long	.LASF433
	.byte	0x7
	.byte	0x13
	.long	0x1b42
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2117
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2c
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
.LASF341:
	.string	"bitdepth_luma_qp_scale"
.LASF344:
	.string	"dc_pred_value"
.LASF203:
	.string	"nb_references"
.LASF38:
	.string	"pic_init_qs_minus26"
.LASF342:
	.string	"bitdepth_chroma_qp_scale"
.LASF305:
	.string	"no_output_of_prior_pics_flag"
.LASF271:
	.string	"num_ref_idx_l1_active"
.LASF288:
	.string	"pic_order_cnt_lsb"
.LASF330:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF333:
	.string	"DeblockCall"
.LASF382:
	.string	"imgY_ups_w"
.LASF212:
	.string	"width_cr"
.LASF301:
	.string	"PicSizeInMbs"
.LASF248:
	.string	"MB_SyntaxElements"
.LASF380:
	.string	"imgY_11_w"
.LASF243:
	.string	"cofAC"
.LASF374:
	.string	"size_x_cr"
.LASF350:
	.string	"lossless_qpprime_flag"
.LASF258:
	.string	"imgtr_next_P_fld"
.LASF47:
	.string	"int64"
.LASF195:
	.string	"slices"
.LASF98:
	.string	"long_term_pic_num"
.LASF377:
	.string	"coded_frame"
.LASF224:
	.string	"ipredmode8x8"
.LASF228:
	.string	"mb_y"
.LASF307:
	.string	"dec_ref_pic_marking_buffer"
.LASF100:
	.string	"max_long_term_frame_idx_plus1"
.LASF42:
	.string	"deblocking_filter_control_present_flag"
.LASF415:
	.string	"wf_offset"
.LASF404:
	.string	"ref_pic_w"
.LASF273:
	.string	"top_field"
.LASF43:
	.string	"constrained_intra_pred_flag"
.LASF68:
	.string	"state"
.LASF82:
	.string	"bcbp_contexts"
.LASF102:
	.string	"syntaxelement"
.LASF399:
	.string	"dc_org"
.LASF416:
	.string	"select_offset"
.LASF103:
	.string	"type"
.LASF263:
	.string	"fw_mb_mode"
.LASF302:
	.string	"FrameSizeInMbs"
.LASF386:
	.string	"ref_id"
.LASF429:
	.string	"wp_luma_round"
.LASF150:
	.string	"LFDisableIdc"
.LASF376:
	.string	"chroma_vector_adjustment"
.LASF327:
	.string	"IFLAG"
.LASF164:
	.string	"bits_to_go_skip"
.LASF265:
	.string	"pred_mv"
.LASF347:
	.string	"num_blk8x8_uv"
.LASF181:
	.string	"rmpni_buffer"
.LASF131:
	.string	"mb_field"
.LASF99:
	.string	"long_term_frame_idx"
.LASF366:
	.string	"bottom_ref_pic_num"
.LASF223:
	.string	"ipredmode"
.LASF123:
	.string	"b8mode"
.LASF190:
	.string	"slice_too_big"
.LASF240:
	.string	"mprr_2"
.LASF241:
	.string	"mprr_3"
.LASF157:
	.string	"bits_to_go"
.LASF95:
	.string	"DecRefPicMarking_s"
.LASF101:
	.string	"DecRefPicMarking_t"
.LASF35:
	.string	"weighted_pred_flag"
.LASF331:
	.string	"bot_MB"
.LASF329:
	.string	"BasicUnit"
.LASF208:
	.string	"num_ref_frames"
.LASF64:
	.string	"EcodestrmS"
.LASF250:
	.string	"intra_block"
.LASF6:
	.string	"long int"
.LASF355:
	.string	"auto_crop_right"
.LASF367:
	.string	"pic_num"
.LASF405:
	.string	"default_weight"
.LASF242:
	.string	"mprr_c"
.LASF140:
	.string	"all_blk_8x8"
.LASF303:
	.string	"nal_reference_idc"
.LASF294:
	.string	"framepoc"
.LASF310:
	.string	"NumberofTextureBits"
.LASF238:
	.string	"opix_c_y"
.LASF369:
	.string	"used_for_reference"
.LASF332:
	.string	"write_macroblock_frame"
.LASF161:
	.string	"stored_byte_buf"
.LASF420:
	.string	"test_wp_B_slice"
.LASF298:
	.string	"PicHeightInMapUnits"
.LASF364:
	.string	"frm_ref_pic_num"
.LASF318:
	.string	"NumberofGOP"
.LASF339:
	.string	"bitdepth_luma"
.LASF237:
	.string	"opix_c_x"
.LASF54:
	.string	"Ebuffer"
.LASF53:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF210:
	.string	"framerate"
.LASF176:
	.string	"max_part_nr"
.LASF67:
	.string	"EncodingEnvironmentPtr"
.LASF283:
	.string	"delta_pic_order_always_zero_flag"
.LASF130:
	.string	"IntraChromaPredModeFlag"
.LASF107:
	.string	"context"
.LASF17:
	.string	"pic_parameter_set_id"
.LASF185:
	.string	"long_term_pic_idx_l0"
.LASF189:
	.string	"long_term_pic_idx_l1"
.LASF182:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF186:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF320:
	.string	"NumberofPPicture"
.LASF315:
	.string	"NumberofMBHeaderBits"
.LASF244:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF121:
	.string	"intra_pred_modes8x8"
.LASF22:
	.string	"pic_scaling_list_present_flag"
.LASF334:
	.string	"last_pic_bottom_field"
.LASF267:
	.string	"bipred_mv1"
.LASF268:
	.string	"bipred_mv2"
.LASF84:
	.string	"last_contexts"
.LASF129:
	.string	"c_ipred_mode"
.LASF26:
	.string	"run_length_minus1"
.LASF346:
	.string	"max_imgpel_value_uv"
.LASF183:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF187:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF184:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF188:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF158:
	.string	"byte_buf"
.LASF143:
	.string	"bi_pred_me"
.LASF402:
	.string	"dc_ref"
.LASF435:
	.string	"weighted_prediction.c"
.LASF114:
	.string	"delta_qp"
.LASF39:
	.string	"chroma_qp_index_offset"
.LASF209:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF222:
	.string	"block_c_x"
.LASF426:
	.string	"wbp_weight"
.LASF77:
	.string	"transform_size_contexts"
.LASF249:
	.string	"quad"
.LASF218:
	.string	"is_intra_block"
.LASF175:
	.string	"start_mb_nr"
.LASF431:
	.string	"listX"
.LASF371:
	.string	"non_existing"
.LASF117:
	.string	"mb_available_up"
.LASF290:
	.string	"delta_pic_order_cnt"
.LASF436:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF379:
	.string	"imgY_11"
.LASF309:
	.string	"NumberofHeaderBits"
.LASF414:
	.string	"wf_weight"
.LASF106:
	.string	"bitpattern"
.LASF432:
	.string	"listXsize"
.LASF76:
	.string	"mb_aff_contexts"
.LASF141:
	.string	"luma_transform_size_8x8_flag"
.LASF230:
	.string	"block_y"
.LASF245:
	.string	"currentPicture"
.LASF72:
	.string	"b8_type_contexts"
.LASF46:
	.string	"pic_parameter_set_rbsp_t"
.LASF28:
	.string	"bottom_right"
.LASF261:
	.string	"p_interval"
.LASF201:
	.string	"Picture"
.LASF259:
	.string	"imgtr_last_P_fld"
.LASF381:
	.string	"imgY_ups"
.LASF146:
	.string	"prev_delta_qp"
.LASF37:
	.string	"pic_init_qp_minus26"
.LASF219:
	.string	"is_v_block"
.LASF428:
	.string	"chroma_log_weight_denom"
.LASF221:
	.string	"mb_y_intra"
.LASF71:
	.string	"mb_type_contexts"
.LASF27:
	.string	"top_left"
.LASF165:
	.string	"streamBuffer"
.LASF62:
	.string	"Ebits_to_goS"
.LASF321:
	.string	"MADofMB"
.LASF270:
	.string	"num_ref_idx_l0_active"
.LASF308:
	.string	"model_number"
.LASF111:
	.string	"macroblock"
.LASF292:
	.string	"toppoc"
.LASF281:
	.string	"MbaffFrameFlag"
.LASF52:
	.string	"Elow"
.LASF235:
	.string	"opix_x"
.LASF236:
	.string	"opix_y"
.LASF359:
	.string	"top_poc"
.LASF174:
	.string	"picture_type"
.LASF353:
	.string	"chroma_qp_offset"
.LASF300:
	.string	"PicHeightInMbs"
.LASF400:
	.string	"index"
.LASF45:
	.string	"vui_pic_parameters_flag"
.LASF358:
	.string	"storable_picture"
.LASF66:
	.string	"EncodingEnvironment"
.LASF171:
	.string	"writeSyntaxElement"
.LASF0:
	.string	"long unsigned int"
.LASF80:
	.string	"cipr_contexts"
.LASF65:
	.string	"Ecodestrm_lenS"
.LASF425:
	.string	"wp_offset"
.LASF177:
	.string	"num_mb"
.LASF293:
	.string	"bottompoc"
.LASF274:
	.string	"mvscale"
.LASF255:
	.string	"pstruct_next_P"
.LASF127:
	.string	"lf_alpha_c0_offset"
.LASF356:
	.string	"auto_crop_bottom"
.LASF401:
	.string	"comp"
.LASF322:
	.string	"BasicUnitQP"
.LASF417:
	.string	"default_weight_chroma"
.LASF314:
	.string	"NumberofMBTextureBits"
.LASF125:
	.string	"cbp_bits"
.LASF361:
	.string	"frame_poc"
.LASF233:
	.string	"pix_c_x"
.LASF234:
	.string	"pix_c_y"
.LASF262:
	.string	"b_frame_to_code"
.LASF196:
	.string	"bits_per_picture"
.LASF220:
	.string	"mb_y_upd"
.LASF90:
	.string	"RMPNI"
.LASF50:
	.string	"BOTTOM_FIELD"
.LASF151:
	.string	"LFAlphaC0Offset"
.LASF128:
	.string	"lf_beta_offset"
.LASF97:
	.string	"difference_of_pic_nums_minus1"
.LASF419:
	.string	"test_wp_P_slice"
.LASF239:
	.string	"mprr"
.LASF378:
	.string	"imgY"
.LASF78:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF33:
	.string	"num_ref_idx_l0_active_minus1"
.LASF260:
	.string	"b_interval"
.LASF55:
	.string	"Ebits_to_go"
.LASF252:
	.string	"fld_flag"
.LASF254:
	.string	"direct_intraP_ref"
.LASF211:
	.string	"width"
.LASF16:
	.string	"Valid"
.LASF119:
	.string	"mb_type"
.LASF160:
	.string	"stored_bits_to_go"
.LASF352:
	.string	"mb_cr_size_y"
.LASF287:
	.string	"offset_for_ref_frame"
.LASF403:
	.string	"ref_pic"
.LASF113:
	.string	"slice_nr"
.LASF198:
	.string	"distortion_u"
.LASF199:
	.string	"distortion_v"
.LASF197:
	.string	"distortion_y"
.LASF163:
	.string	"byte_pos_skip"
.LASF152:
	.string	"LFBetaOffset"
.LASF154:
	.string	"double"
.LASF390:
	.string	"frame"
.LASF354:
	.string	"residue_transform_flag"
.LASF407:
	.string	"weight"
.LASF257:
	.string	"imgtr_last_P_frm"
.LASF422:
	.string	"imgY_org"
.LASF85:
	.string	"one_contexts"
.LASF375:
	.string	"size_y_cr"
.LASF115:
	.string	"qpsp"
.LASF200:
	.string	"float"
.LASF69:
	.string	"count"
.LASF147:
	.string	"prev_cbp"
.LASF70:
	.string	"BiContextType"
.LASF370:
	.string	"is_output"
.LASF253:
	.string	"rd_pass"
.LASF3:
	.string	"unsigned int"
.LASF86:
	.string	"abs_contexts"
.LASF56:
	.string	"Ebits_to_follow"
.LASF423:
	.string	"active_pps"
.LASF166:
	.string	"write_flag"
.LASF205:
	.string	"total_number_mb"
.LASF41:
	.string	"cr_qp_index_offset"
.LASF58:
	.string	"Ecodestrm_len"
.LASF180:
	.string	"tex_ctx"
.LASF319:
	.string	"TotalQpforPPicture"
.LASF118:
	.string	"mb_available_left"
.LASF94:
	.string	"RMPNIbuffer_s"
.LASF93:
	.string	"RMPNIbuffer_t"
.LASF337:
	.string	"slice_group_change_cycle"
.LASF89:
	.string	"TextureInfoContexts"
.LASF389:
	.string	"bottom_field"
.LASF363:
	.string	"ref_pic_num"
.LASF277:
	.string	"layer"
.LASF124:
	.string	"b8pdir"
.LASF193:
	.string	"no_slices"
.LASF285:
	.string	"offset_for_top_to_bottom_field"
.LASF397:
	.string	"frame_cropping_rect_bottom_offset"
.LASF408:
	.string	"offset"
.LASF256:
	.string	"imgtr_next_P_frm"
.LASF324:
	.string	"FieldControl"
.LASF316:
	.string	"NumberofCodedBFrame"
.LASF276:
	.string	"i16offset"
.LASF204:
	.string	"current_mb_nr"
.LASF231:
	.string	"pix_x"
.LASF232:
	.string	"pix_y"
.LASF434:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF351:
	.string	"mb_cr_size_x"
.LASF357:
	.string	"ImageParameters"
.LASF170:
	.string	"ee_cabac"
.LASF227:
	.string	"mb_x"
.LASF13:
	.string	"FALSE"
.LASF148:
	.string	"predict_qp"
.LASF388:
	.string	"field_frame"
.LASF412:
	.string	"im_weight"
.LASF272:
	.string	"field_mode"
.LASF229:
	.string	"block_x"
.LASF335:
	.string	"last_has_mmco_5"
.LASF282:
	.string	"pic_order_cnt_type"
.LASF88:
	.string	"fld_last_contexts"
.LASF284:
	.string	"offset_for_non_ref_pic"
.LASF44:
	.string	"redundant_pic_cnt_present_flag"
.LASF418:
	.string	"perform_wp"
.LASF153:
	.string	"skip_flag"
.LASF296:
	.string	"frame_num"
.LASF83:
	.string	"map_contexts"
.LASF96:
	.string	"memory_management_control_operation"
.LASF360:
	.string	"bottom_poc"
.LASF167:
	.string	"Bitstream"
.LASF279:
	.string	"NoResidueDirect"
.LASF328:
	.string	"NumberofCodedMacroBlocks"
.LASF19:
	.string	"entropy_coding_mode_flag"
.LASF173:
	.string	"picture_id"
.LASF392:
	.string	"frame_mbs_only_flag"
.LASF251:
	.string	"fld_type"
.LASF317:
	.string	"NumberofCodedPFrame"
.LASF34:
	.string	"num_ref_idx_l1_active_minus1"
.LASF10:
	.string	"long long unsigned int"
.LASF49:
	.string	"TOP_FIELD"
.LASF120:
	.string	"intra_pred_modes"
.LASF214:
	.string	"height_cr"
.LASF266:
	.string	"all_mv"
.LASF398:
	.string	"StorablePicture"
.LASF213:
	.string	"height"
.LASF207:
	.string	"structure"
.LASF191:
	.string	"field_ctx"
.LASF36:
	.string	"weighted_bipred_idc"
.LASF172:
	.string	"DataPartition"
.LASF247:
	.string	"mb_data"
.LASF396:
	.string	"frame_cropping_rect_top_offset"
.LASF312:
	.string	"NumberofBasicUnitTextureBits"
.LASF286:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF192:
	.string	"Slice"
.LASF168:
	.string	"datapartition"
.LASF63:
	.string	"Ebits_to_followS"
.LASF215:
	.string	"height_cr_frame"
.LASF326:
	.string	"Frame_Total_Number_MB"
.LASF104:
	.string	"value1"
.LASF105:
	.string	"value2"
.LASF394:
	.string	"frame_cropping_rect_left_offset"
.LASF169:
	.string	"bitstream"
.LASF413:
	.string	"im_offset"
.LASF291:
	.string	"field_picture"
.LASF365:
	.string	"top_ref_pic_num"
.LASF59:
	.string	"ElowS"
.LASF25:
	.string	"slice_group_map_type"
.LASF15:
	.string	"Boolean"
.LASF280:
	.string	"redundant_pic_cnt"
.LASF343:
	.string	"bitdepth_lambda_scale"
.LASF278:
	.string	"old_layer"
.LASF202:
	.string	"number"
.LASF391:
	.string	"chroma_format_idc"
.LASF409:
	.string	"clist"
.LASF345:
	.string	"max_imgpel_value"
.LASF297:
	.string	"PicWidthInMbs"
.LASF410:
	.string	"DistScaleFactor"
.LASF18:
	.string	"seq_parameter_set_id"
.LASF338:
	.string	"pic_unit_size_on_disk"
.LASF348:
	.string	"num_cdc_coeff"
.LASF155:
	.string	"Macroblock"
.LASF74:
	.string	"ref_no_contexts"
.LASF48:
	.string	"FRAME"
.LASF304:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF159:
	.string	"stored_byte_pos"
.LASF12:
	.string	"byte"
.LASF411:
	.string	"log_weight_denom"
.LASF92:
	.string	"Next"
.LASF91:
	.string	"Data"
.LASF323:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF362:
	.string	"order_num"
.LASF387:
	.string	"moving_block"
.LASF57:
	.string	"Ecodestrm"
.LASF349:
	.string	"yuv_format"
.LASF264:
	.string	"bw_mb_mode"
.LASF14:
	.string	"TRUE"
.LASF61:
	.string	"EbufferS"
.LASF295:
	.string	"ThisPOC"
.LASF313:
	.string	"TotalMADBasicUnit"
.LASF145:
	.string	"prev_qp"
.LASF438:
	.string	"estimate_weighting_factor_B_slice"
.LASF73:
	.string	"mv_res_contexts"
.LASF433:
	.string	"enc_picture"
.LASF144:
	.string	"actj"
.LASF24:
	.string	"num_slice_groups_minus1"
.LASF289:
	.string	"delta_pic_order_cnt_bottom"
.LASF275:
	.string	"buf_cycle"
.LASF225:
	.string	"cod_counter"
.LASF427:
	.string	"luma_log_weight_denom"
.LASF178:
	.string	"partArr"
.LASF156:
	.string	"byte_pos"
.LASF437:
	.string	"estimate_weighting_factor_P_slice"
.LASF79:
	.string	"ipr_contexts"
.LASF132:
	.string	"mbAddrA"
.LASF133:
	.string	"mbAddrB"
.LASF134:
	.string	"mbAddrC"
.LASF135:
	.string	"mbAddrD"
.LASF226:
	.string	"nz_coeff"
.LASF75:
	.string	"delta_qp_contexts"
.LASF311:
	.string	"NumberofBasicUnitHeaderBits"
.LASF110:
	.string	"SyntaxElement"
.LASF430:
	.string	"wp_chroma_round"
.LASF336:
	.string	"pre_frame_num"
.LASF23:
	.string	"pic_order_present_flag"
.LASF126:
	.string	"lf_disable"
.LASF372:
	.string	"size_x"
.LASF373:
	.string	"size_y"
.LASF194:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF325:
	.string	"FieldFrame"
.LASF395:
	.string	"frame_cropping_rect_right_offset"
.LASF149:
	.string	"predict_error"
.LASF206:
	.string	"current_slice_nr"
.LASF269:
	.string	"direct_spatial_mv_pred_flag"
.LASF340:
	.string	"bitdepth_chroma"
.LASF108:
	.string	"mapping"
.LASF384:
	.string	"ref_idx"
.LASF393:
	.string	"frame_cropping_flag"
.LASF383:
	.string	"imgUV"
.LASF30:
	.string	"slice_group_change_rate_minus1"
.LASF385:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF406:
	.string	"list_offset"
.LASF109:
	.string	"writing"
.LASF32:
	.string	"slice_group_id"
.LASF87:
	.string	"fld_map_contexts"
.LASF162:
	.string	"byte_buf_skip"
.LASF29:
	.string	"slice_group_change_direction_flag"
.LASF21:
	.string	"pic_scaling_matrix_present_flag"
.LASF306:
	.string	"long_term_reference_flag"
.LASF81:
	.string	"cbp_contexts"
.LASF40:
	.string	"cb_qp_index_offset"
.LASF179:
	.string	"mot_ctx"
.LASF31:
	.string	"pic_size_in_map_units_minus1"
.LASF142:
	.string	"NoMbPartLessThan8x8Flag"
.LASF216:
	.string	"subblock_x"
.LASF217:
	.string	"subblock_y"
.LASF368:
	.string	"is_long_term"
.LASF421:
	.string	"select_method"
.LASF20:
	.string	"transform_8x8_mode_flag"
.LASF112:
	.string	"currSEnr"
.LASF51:
	.string	"PictureStructure"
.LASF299:
	.string	"FrameHeightInMbs"
.LASF246:
	.string	"currentSlice"
.LASF116:
	.string	"bitcounter"
.LASF60:
	.string	"ErangeS"
.LASF136:
	.string	"mbAvailA"
.LASF137:
	.string	"mbAvailB"
.LASF138:
	.string	"mbAvailC"
.LASF139:
	.string	"mbAvailD"
.LASF122:
	.string	"cbp_blk"
.LASF424:
	.string	"wp_weight"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
