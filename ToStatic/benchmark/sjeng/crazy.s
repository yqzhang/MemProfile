	.file	"crazy.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 crazy.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	holding,128,32
	.comm	num_holding,8,4
	.comm	realholdings,255,32
	.comm	userealholdings,4,4
	.comm	drop_piece,4,4
	.comm	white_hand_eval,4,4
	.comm	black_hand_eval,4,4
	.comm	hold_hash,4,4
	.globl	ProcessHoldings
	.type	ProcessHoldings, @function
ProcessHoldings:
.LFB2:
	.file 1 "crazy.c"
	.loc 1 33 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
	.loc 1 36 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 38 0
	movl	$128, %edx	#,
	movl	$0, %esi	#,
	movl	$holding, %edi	#,
	call	memset	#
	.loc 1 39 0
	movl	$-1056969216, hold_hash(%rip)	#, hold_hash
	.loc 1 41 0
	movl	$0, white_hand_eval(%rip)	#, white_hand_eval
	.loc 1 42 0
	movl	$0, black_hand_eval(%rip)	#, black_hand_eval
	.loc 1 43 0
	call	reset_ecache	#
	.loc 1 45 0
	movl	$0, num_holding(%rip)	#, num_holding
	.loc 1 46 0
	movl	$0, num_holding+4(%rip)	#, num_holding
	.loc 1 48 0
	movl	$0, -8(%rbp)	#, c
	jmp	.L2	#
.L45:
	.loc 1 50 0
	jmp	.L3	#
.L5:
	.loc 1 51 0
	movl	-4(%rbp), %eax	# i, tmp222
	movslq	%eax, %rdx	# tmp222, D.4327
	movq	-24(%rbp), %rax	# str, tmp223
	addq	%rdx, %rax	# D.4327, D.4328
	movzbl	(%rax), %eax	# *_29, D.4329
	testb	%al, %al	# D.4329
	jne	.L3	#,
	.loc 1 51 0 is_stmt 0 discriminator 1
	jmp	.L1	#
.L3:
	.loc 1 50 0 is_stmt 1 discriminator 1
	movl	-4(%rbp), %eax	# i, i.0
	leal	1(%rax), %edx	#, tmp224
	movl	%edx, -4(%rbp)	# tmp224, i
	movslq	%eax, %rdx	# i.0, D.4327
	movq	-24(%rbp), %rax	# str, tmp225
	addq	%rdx, %rax	# D.4327, D.4328
	movzbl	(%rax), %eax	# *_26, D.4329
	cmpb	$91, %al	#, D.4329
	jne	.L5	#,
	.loc 1 53 0
	jmp	.L6	#
.L44:
	.loc 1 54 0
	movl	-4(%rbp), %eax	# i, i.1
	leal	1(%rax), %edx	#, tmp226
	movl	%edx, -4(%rbp)	# tmp226, i
	movslq	%eax, %rdx	# i.1, D.4327
	movq	-24(%rbp), %rax	# str, tmp227
	addq	%rdx, %rax	# D.4327, D.4328
	movzbl	(%rax), %eax	# *_37, D.4329
	movsbl	%al, %eax	# D.4329, D.4330
	subl	$66, %eax	#, tmp228
	cmpl	$48, %eax	#, tmp228
	ja	.L56	#,
	movl	%eax, %eax	# tmp228, tmp229
	movq	.L9(,%rax,8), %rax	#, tmp230
	jmp	*%rax	# tmp230
	.section	.rodata
	.align 8
	.align 4
.L9:
	.quad	.L8
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L10
	.quad	.L56
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L8
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L56
	.quad	.L10
	.quad	.L56
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.text
.L11:
	.loc 1 57 0
	cmpl	$0, -8(%rbp)	#, c
	jne	.L14	#,
	.loc 1 57 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.2
	jmp	.L15	#
.L14:
	.loc 1 57 0 discriminator 2
	movl	$2, %eax	#, iftmp.2
.L15:
	.loc 1 57 0 discriminator 3
	movslq	%eax, %rdx	# iftmp.2, tmp231
	movl	-8(%rbp), %ecx	# c, tmp233
	movslq	%ecx, %rcx	# tmp233, tmp232
	salq	$4, %rcx	#, tmp234
	addq	%rcx, %rdx	# tmp234, tmp235
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	addl	$1, %edx	#, D.4330
	cltq
	movl	-8(%rbp), %ecx	# c, tmp238
	movslq	%ecx, %rcx	# tmp238, tmp237
	salq	$4, %rcx	#, tmp239
	addq	%rcx, %rax	# tmp239, tmp240
	movl	%edx, holding(,%rax,4)	# D.4330, holding
	.loc 1 58 0 is_stmt 1 discriminator 3
	movl	-8(%rbp), %eax	# c, tmp242
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4330
	leal	1(%rax), %edx	#, D.4330
	movl	-8(%rbp), %eax	# c, tmp244
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4330, num_holding
	.loc 1 59 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L16	#,
	.loc 1 59 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.3
	jmp	.L17	#
.L16:
	.loc 1 59 0 discriminator 2
	movl	$2, %eax	#, iftmp.3
.L17:
	.loc 1 59 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L18	#,
	.loc 1 59 0 discriminator 1
	movl	$1, %edx	#, iftmp.4
	jmp	.L19	#
.L18:
	.loc 1 59 0 discriminator 2
	movl	$2, %edx	#, iftmp.4
.L19:
	.loc 1 59 0 discriminator 3
	movslq	%edx, %rdx	# iftmp.4, tmp245
	movl	-8(%rbp), %ecx	# c, tmp247
	movslq	%ecx, %rcx	# tmp247, tmp246
	salq	$4, %rcx	#, tmp248
	addq	%rcx, %rdx	# tmp248, tmp249
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	movslq	%edx, %rcx	# D.4330, tmp250
	movslq	%eax, %rdx	# iftmp.3, tmp251
	movq	%rdx, %rax	# tmp251, tmp252
	salq	$3, %rax	#, tmp252
	addq	%rdx, %rax	# tmp251, tmp252
	salq	$4, %rax	#, tmp253
	addq	%rcx, %rax	# tmp250, tmp254
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.5
	xorl	%edx, %eax	# D.4331, hold_hash.6
	movl	%eax, hold_hash(%rip)	# hold_hash.6, hold_hash
	.loc 1 61 0 is_stmt 1 discriminator 3
	jmp	.L6	#
.L12:
	.loc 1 64 0
	cmpl	$0, -8(%rbp)	#, c
	jne	.L20	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.7
	jmp	.L21	#
.L20:
	.loc 1 64 0 discriminator 2
	movl	$10, %eax	#, iftmp.7
.L21:
	.loc 1 64 0 discriminator 3
	movslq	%eax, %rdx	# iftmp.7, tmp255
	movl	-8(%rbp), %ecx	# c, tmp257
	movslq	%ecx, %rcx	# tmp257, tmp256
	salq	$4, %rcx	#, tmp258
	addq	%rcx, %rdx	# tmp258, tmp259
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	addl	$1, %edx	#, D.4330
	cltq
	movl	-8(%rbp), %ecx	# c, tmp262
	movslq	%ecx, %rcx	# tmp262, tmp261
	salq	$4, %rcx	#, tmp263
	addq	%rcx, %rax	# tmp263, tmp264
	movl	%edx, holding(,%rax,4)	# D.4330, holding
	.loc 1 65 0 is_stmt 1 discriminator 3
	movl	-8(%rbp), %eax	# c, tmp266
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4330
	leal	1(%rax), %edx	#, D.4330
	movl	-8(%rbp), %eax	# c, tmp268
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4330, num_holding
	.loc 1 66 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L22	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.8
	jmp	.L23	#
.L22:
	.loc 1 66 0 discriminator 2
	movl	$10, %eax	#, iftmp.8
.L23:
	.loc 1 66 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L24	#,
	.loc 1 66 0 discriminator 1
	movl	$9, %edx	#, iftmp.9
	jmp	.L25	#
.L24:
	.loc 1 66 0 discriminator 2
	movl	$10, %edx	#, iftmp.9
.L25:
	.loc 1 66 0 discriminator 3
	movslq	%edx, %rdx	# iftmp.9, tmp269
	movl	-8(%rbp), %ecx	# c, tmp271
	movslq	%ecx, %rcx	# tmp271, tmp270
	salq	$4, %rcx	#, tmp272
	addq	%rcx, %rdx	# tmp272, tmp273
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	movslq	%edx, %rcx	# D.4330, tmp274
	movslq	%eax, %rdx	# iftmp.8, tmp275
	movq	%rdx, %rax	# tmp275, tmp276
	salq	$3, %rax	#, tmp276
	addq	%rdx, %rax	# tmp275, tmp276
	salq	$4, %rax	#, tmp277
	addq	%rcx, %rax	# tmp274, tmp278
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.10
	xorl	%edx, %eax	# D.4331, hold_hash.11
	movl	%eax, hold_hash(%rip)	# hold_hash.11, hold_hash
	.loc 1 68 0 is_stmt 1 discriminator 3
	jmp	.L6	#
.L13:
	.loc 1 71 0
	cmpl	$0, -8(%rbp)	#, c
	jne	.L26	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.12
	jmp	.L27	#
.L26:
	.loc 1 71 0 discriminator 2
	movl	$8, %eax	#, iftmp.12
.L27:
	.loc 1 71 0 discriminator 3
	movslq	%eax, %rdx	# iftmp.12, tmp279
	movl	-8(%rbp), %ecx	# c, tmp281
	movslq	%ecx, %rcx	# tmp281, tmp280
	salq	$4, %rcx	#, tmp282
	addq	%rcx, %rdx	# tmp282, tmp283
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	addl	$1, %edx	#, D.4330
	cltq
	movl	-8(%rbp), %ecx	# c, tmp286
	movslq	%ecx, %rcx	# tmp286, tmp285
	salq	$4, %rcx	#, tmp287
	addq	%rcx, %rax	# tmp287, tmp288
	movl	%edx, holding(,%rax,4)	# D.4330, holding
	.loc 1 72 0 is_stmt 1 discriminator 3
	movl	-8(%rbp), %eax	# c, tmp290
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4330
	leal	1(%rax), %edx	#, D.4330
	movl	-8(%rbp), %eax	# c, tmp292
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4330, num_holding
	.loc 1 73 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L28	#,
	.loc 1 73 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.13
	jmp	.L29	#
.L28:
	.loc 1 73 0 discriminator 2
	movl	$8, %eax	#, iftmp.13
.L29:
	.loc 1 73 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L30	#,
	.loc 1 73 0 discriminator 1
	movl	$7, %edx	#, iftmp.14
	jmp	.L31	#
.L30:
	.loc 1 73 0 discriminator 2
	movl	$8, %edx	#, iftmp.14
.L31:
	.loc 1 73 0 discriminator 3
	movslq	%edx, %rdx	# iftmp.14, tmp293
	movl	-8(%rbp), %ecx	# c, tmp295
	movslq	%ecx, %rcx	# tmp295, tmp294
	salq	$4, %rcx	#, tmp296
	addq	%rcx, %rdx	# tmp296, tmp297
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	movslq	%edx, %rcx	# D.4330, tmp298
	movslq	%eax, %rdx	# iftmp.13, tmp299
	movq	%rdx, %rax	# tmp299, tmp300
	salq	$3, %rax	#, tmp300
	addq	%rdx, %rax	# tmp299, tmp300
	salq	$4, %rax	#, tmp301
	addq	%rcx, %rax	# tmp298, tmp302
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.15
	xorl	%edx, %eax	# D.4331, hold_hash.16
	movl	%eax, hold_hash(%rip)	# hold_hash.16, hold_hash
	.loc 1 75 0 is_stmt 1 discriminator 3
	jmp	.L6	#
.L8:
	.loc 1 78 0
	cmpl	$0, -8(%rbp)	#, c
	jne	.L32	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.17
	jmp	.L33	#
.L32:
	.loc 1 78 0 discriminator 2
	movl	$12, %eax	#, iftmp.17
.L33:
	.loc 1 78 0 discriminator 3
	movslq	%eax, %rdx	# iftmp.17, tmp303
	movl	-8(%rbp), %ecx	# c, tmp305
	movslq	%ecx, %rcx	# tmp305, tmp304
	salq	$4, %rcx	#, tmp306
	addq	%rcx, %rdx	# tmp306, tmp307
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	addl	$1, %edx	#, D.4330
	cltq
	movl	-8(%rbp), %ecx	# c, tmp310
	movslq	%ecx, %rcx	# tmp310, tmp309
	salq	$4, %rcx	#, tmp311
	addq	%rcx, %rax	# tmp311, tmp312
	movl	%edx, holding(,%rax,4)	# D.4330, holding
	.loc 1 79 0 is_stmt 1 discriminator 3
	movl	-8(%rbp), %eax	# c, tmp314
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4330
	leal	1(%rax), %edx	#, D.4330
	movl	-8(%rbp), %eax	# c, tmp316
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4330, num_holding
	.loc 1 80 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L34	#,
	.loc 1 80 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.18
	jmp	.L35	#
.L34:
	.loc 1 80 0 discriminator 2
	movl	$12, %eax	#, iftmp.18
.L35:
	.loc 1 80 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L36	#,
	.loc 1 80 0 discriminator 1
	movl	$11, %edx	#, iftmp.19
	jmp	.L37	#
.L36:
	.loc 1 80 0 discriminator 2
	movl	$12, %edx	#, iftmp.19
.L37:
	.loc 1 80 0 discriminator 3
	movslq	%edx, %rdx	# iftmp.19, tmp317
	movl	-8(%rbp), %ecx	# c, tmp319
	movslq	%ecx, %rcx	# tmp319, tmp318
	salq	$4, %rcx	#, tmp320
	addq	%rcx, %rdx	# tmp320, tmp321
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	movslq	%edx, %rcx	# D.4330, tmp322
	movslq	%eax, %rdx	# iftmp.18, tmp323
	movq	%rdx, %rax	# tmp323, tmp324
	salq	$3, %rax	#, tmp324
	addq	%rdx, %rax	# tmp323, tmp324
	salq	$4, %rax	#, tmp325
	addq	%rcx, %rax	# tmp322, tmp326
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.20
	xorl	%edx, %eax	# D.4331, hold_hash.21
	movl	%eax, hold_hash(%rip)	# hold_hash.21, hold_hash
	.loc 1 82 0 is_stmt 1 discriminator 3
	jmp	.L6	#
.L10:
	.loc 1 85 0
	cmpl	$0, -8(%rbp)	#, c
	jne	.L38	#,
	.loc 1 85 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.22
	jmp	.L39	#
.L38:
	.loc 1 85 0 discriminator 2
	movl	$4, %eax	#, iftmp.22
.L39:
	.loc 1 85 0 discriminator 3
	movslq	%eax, %rdx	# iftmp.22, tmp327
	movl	-8(%rbp), %ecx	# c, tmp329
	movslq	%ecx, %rcx	# tmp329, tmp328
	salq	$4, %rcx	#, tmp330
	addq	%rcx, %rdx	# tmp330, tmp331
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	addl	$1, %edx	#, D.4330
	cltq
	movl	-8(%rbp), %ecx	# c, tmp334
	movslq	%ecx, %rcx	# tmp334, tmp333
	salq	$4, %rcx	#, tmp335
	addq	%rcx, %rax	# tmp335, tmp336
	movl	%edx, holding(,%rax,4)	# D.4330, holding
	.loc 1 86 0 is_stmt 1 discriminator 3
	movl	-8(%rbp), %eax	# c, tmp338
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4330
	leal	1(%rax), %edx	#, D.4330
	movl	-8(%rbp), %eax	# c, tmp340
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4330, num_holding
	.loc 1 87 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L40	#,
	.loc 1 87 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.23
	jmp	.L41	#
.L40:
	.loc 1 87 0 discriminator 2
	movl	$4, %eax	#, iftmp.23
.L41:
	.loc 1 87 0 discriminator 3
	cmpl	$0, -8(%rbp)	#, c
	jne	.L42	#,
	.loc 1 87 0 discriminator 1
	movl	$3, %edx	#, iftmp.24
	jmp	.L43	#
.L42:
	.loc 1 87 0 discriminator 2
	movl	$4, %edx	#, iftmp.24
.L43:
	.loc 1 87 0 discriminator 3
	movslq	%edx, %rdx	# iftmp.24, tmp341
	movl	-8(%rbp), %ecx	# c, tmp343
	movslq	%ecx, %rcx	# tmp343, tmp342
	salq	$4, %rcx	#, tmp344
	addq	%rcx, %rdx	# tmp344, tmp345
	movl	holding(,%rdx,4), %edx	# holding, D.4330
	movslq	%edx, %rcx	# D.4330, tmp346
	movslq	%eax, %rdx	# iftmp.23, tmp347
	movq	%rdx, %rax	# tmp347, tmp348
	salq	$3, %rax	#, tmp348
	addq	%rdx, %rax	# tmp347, tmp348
	salq	$4, %rax	#, tmp349
	addq	%rcx, %rax	# tmp346, tmp350
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.25
	xorl	%edx, %eax	# D.4331, hold_hash.26
	movl	%eax, hold_hash(%rip)	# hold_hash.26, hold_hash
	.loc 1 89 0 is_stmt 1 discriminator 3
	nop
.L6:
	.loc 1 53 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp351
	movslq	%eax, %rdx	# tmp351, D.4327
	movq	-24(%rbp), %rax	# str, tmp352
	addq	%rdx, %rax	# D.4327, D.4328
	movzbl	(%rax), %eax	# *_32, D.4329
	cmpb	$93, %al	#, D.4329
	jne	.L44	#,
	.loc 1 48 0
	addl	$1, -8(%rbp)	#, c
.L2:
	.loc 1 48 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, c
	jle	.L45	#,
	.loc 1 97 0 is_stmt 1
	movl	Variant(%rip), %eax	# Variant, Variant.27
	cmpl	$1, %eax	#, Variant.27
	jne	.L1	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	userealholdings(%rip), %eax	# userealholdings, userealholdings.28
	testl	%eax, %eax	# userealholdings.28
	jne	.L1	#,
	.loc 1 99 0 is_stmt 1
	movq	-24(%rbp), %rax	# str, tmp353
	movl	$200, %edx	#,
	movq	%rax, %rsi	# tmp353,
	movl	$realholdings, %edi	#,
	call	strncpy	#
	.loc 1 101 0
	movl	comp_color(%rip), %eax	# comp_color, comp_color.29
	cmpl	$1, %eax	#, comp_color.29
	jne	.L46	#,
	.loc 1 104 0
	movl	holding+72(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L47	#,
	.loc 1 106 0
	movl	holding+72(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+72(%rip)	# D.4330, holding
	.loc 1 107 0
	movl	num_holding+4(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding+4(%rip)	# D.4330, num_holding
	.loc 1 108 0
	movl	holding+72(%rip), %eax	# holding, D.4330
	cltq
	addq	$288, %rax	#, tmp355
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.30
	xorl	%edx, %eax	# D.4331, hold_hash.31
	movl	%eax, hold_hash(%rip)	# hold_hash.31, hold_hash
.L47:
	.loc 1 110 0
	movl	holding+112(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L48	#,
	.loc 1 112 0
	movl	holding+112(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+112(%rip)	# D.4330, holding
	.loc 1 113 0
	movl	num_holding+4(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding+4(%rip)	# D.4330, num_holding
	.loc 1 114 0
	movl	holding+112(%rip), %eax	# holding, D.4330
	cltq
	addq	$288, %rax	#, tmp357
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.32
	xorl	%edx, %eax	# D.4331, hold_hash.33
	movl	%eax, hold_hash(%rip)	# hold_hash.33, hold_hash
.L48:
	.loc 1 116 0
	movl	holding+80(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L49	#,
	.loc 1 118 0
	movl	holding+80(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+80(%rip)	# D.4330, holding
	.loc 1 119 0
	movl	num_holding+4(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding+4(%rip)	# D.4330, num_holding
	.loc 1 120 0
	movl	holding+80(%rip), %eax	# holding, D.4330
	cltq
	addq	$576, %rax	#, tmp359
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.34
	xorl	%edx, %eax	# D.4331, hold_hash.35
	movl	%eax, hold_hash(%rip)	# hold_hash.35, hold_hash
.L49:
	.loc 1 122 0
	movl	holding+96(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L50	#,
	.loc 1 124 0
	movl	holding+96(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+96(%rip)	# D.4330, holding
	.loc 1 125 0
	movl	num_holding+4(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding+4(%rip)	# D.4330, num_holding
	.loc 1 126 0
	movl	holding+96(%rip), %eax	# holding, D.4330
	cltq
	addq	$576, %rax	#, tmp361
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.36
	xorl	%edx, %eax	# D.4331, hold_hash.37
	movl	%eax, hold_hash(%rip)	# hold_hash.37, hold_hash
.L50:
	.loc 1 128 0
	movl	holding+104(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L1	#,
	.loc 1 130 0
	movl	holding+104(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+104(%rip)	# D.4330, holding
	.loc 1 131 0
	movl	num_holding+4(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding+4(%rip)	# D.4330, num_holding
	.loc 1 132 0
	movl	holding+104(%rip), %eax	# holding, D.4330
	cltq
	addq	$576, %rax	#, tmp363
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.38
	xorl	%edx, %eax	# D.4331, hold_hash.39
	movl	%eax, hold_hash(%rip)	# hold_hash.39, hold_hash
	jmp	.L1	#
.L46:
	.loc 1 138 0
	movl	holding+36(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L52	#,
	.loc 1 140 0
	movl	holding+36(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+36(%rip)	# D.4330, holding
	.loc 1 141 0
	movl	num_holding(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding(%rip)	# D.4330, num_holding
	.loc 1 142 0
	movl	holding+36(%rip), %eax	# holding, D.4330
	cltq
	addq	$1296, %rax	#, tmp365
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.40
	xorl	%edx, %eax	# D.4331, hold_hash.41
	movl	%eax, hold_hash(%rip)	# hold_hash.41, hold_hash
.L52:
	.loc 1 144 0
	movl	holding+28(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L53	#,
	.loc 1 146 0
	movl	holding+28(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+28(%rip)	# D.4330, holding
	.loc 1 147 0
	movl	num_holding(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding(%rip)	# D.4330, num_holding
	.loc 1 148 0
	movl	holding+28(%rip), %eax	# holding, D.4330
	cltq
	addq	$1296, %rax	#, tmp367
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.42
	xorl	%edx, %eax	# D.4331, hold_hash.43
	movl	%eax, hold_hash(%rip)	# hold_hash.43, hold_hash
.L53:
	.loc 1 150 0
	movl	holding+44(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L54	#,
	.loc 1 152 0
	movl	holding+44(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+44(%rip)	# D.4330, holding
	.loc 1 153 0
	movl	num_holding(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding(%rip)	# D.4330, num_holding
	.loc 1 154 0
	movl	holding+44(%rip), %eax	# holding, D.4330
	cltq
	addq	$1296, %rax	#, tmp369
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.44
	xorl	%edx, %eax	# D.4331, hold_hash.45
	movl	%eax, hold_hash(%rip)	# hold_hash.45, hold_hash
.L54:
	.loc 1 156 0
	movl	holding+12(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L55	#,
	.loc 1 158 0
	movl	holding+12(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+12(%rip)	# D.4330, holding
	.loc 1 159 0
	movl	num_holding(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding(%rip)	# D.4330, num_holding
	.loc 1 160 0
	movl	holding+12(%rip), %eax	# holding, D.4330
	cltq
	addq	$1296, %rax	#, tmp371
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.46
	xorl	%edx, %eax	# D.4331, hold_hash.47
	movl	%eax, hold_hash(%rip)	# hold_hash.47, hold_hash
.L55:
	.loc 1 162 0
	movl	holding+4(%rip), %eax	# holding, D.4330
	testl	%eax, %eax	# D.4330
	jne	.L1	#,
	.loc 1 164 0
	movl	holding+4(%rip), %eax	# holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, holding+4(%rip)	# D.4330, holding
	.loc 1 165 0
	movl	num_holding(%rip), %eax	# num_holding, D.4330
	addl	$1, %eax	#, D.4330
	movl	%eax, num_holding(%rip)	# D.4330, num_holding
	.loc 1 166 0
	movl	holding+4(%rip), %eax	# holding, D.4330
	cltq
	addq	$1296, %rax	#, tmp373
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4331
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.48
	xorl	%edx, %eax	# D.4331, hold_hash.49
	movl	%eax, hold_hash(%rip)	# hold_hash.49, hold_hash
	jmp	.L1	#
.L56:
	.loc 1 91 0
	nop
.L1:
	.loc 1 170 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ProcessHoldings, .-ProcessHoldings
	.globl	text_to_piece
	.type	text_to_piece, @function
text_to_piece:
.LFB3:
	.loc 1 173 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, %eax	# txt, tmp67
	movl	%esi, -8(%rbp)	# who, who
	movb	%al, -4(%rbp)	# tmp67, txt
	.loc 1 174 0
	movsbl	-4(%rbp), %eax	# txt, D.4332
	subl	$66, %eax	#, tmp68
	cmpl	$48, %eax	#, tmp68
	ja	.L58	#,
	movl	%eax, %eax	# tmp68, tmp69
	movq	.L60(,%rax,8), %rax	#, tmp70
	jmp	*%rax	# tmp70
	.section	.rodata
	.align 8
	.align 4
.L60:
	.quad	.L59
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L61
	.quad	.L58
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L59
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L58
	.quad	.L61
	.quad	.L58
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.text
.L62:
	.loc 1 178 0
	cmpl	$0, -8(%rbp)	#, who
	jne	.L65	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.50
	jmp	.L66	#
.L65:
	.loc 1 178 0 discriminator 2
	movl	$2, %eax	#, iftmp.50
.L66:
	.loc 1 178 0 discriminator 3
	jmp	.L67	#
.L59:
	.loc 1 181 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, who
	jne	.L68	#,
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	$11, %eax	#, iftmp.51
	jmp	.L69	#
.L68:
	.loc 1 181 0 discriminator 2
	movl	$12, %eax	#, iftmp.51
.L69:
	.loc 1 181 0 discriminator 3
	jmp	.L67	#
.L61:
	.loc 1 184 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, who
	jne	.L70	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, iftmp.52
	jmp	.L71	#
.L70:
	.loc 1 184 0 discriminator 2
	movl	$4, %eax	#, iftmp.52
.L71:
	.loc 1 184 0 discriminator 3
	jmp	.L67	#
.L64:
	.loc 1 187 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, who
	jne	.L72	#,
	.loc 1 187 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, iftmp.53
	jmp	.L73	#
.L72:
	.loc 1 187 0 discriminator 2
	movl	$8, %eax	#, iftmp.53
.L73:
	.loc 1 187 0 discriminator 3
	jmp	.L67	#
.L63:
	.loc 1 190 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, who
	jne	.L74	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, iftmp.54
	jmp	.L75	#
.L74:
	.loc 1 190 0 discriminator 2
	movl	$10, %eax	#, iftmp.54
.L75:
	.loc 1 190 0 discriminator 3
	jmp	.L67	#
.L58:
	.loc 1 193 0 is_stmt 1
	movl	$13, %eax	#, D.4332
.L67:
	.loc 1 194 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	text_to_piece, .-text_to_piece
	.globl	SwitchColor
	.type	SwitchColor, @function
SwitchColor:
.LFB4:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)	# piece, piece
	.loc 1 198 0
	movl	$0, -64(%rbp)	#, t
	movl	$2, -60(%rbp)	#, t
	movl	$1, -56(%rbp)	#, t
	movl	$4, -52(%rbp)	#, t
	movl	$3, -48(%rbp)	#, t
	movl	$0, -44(%rbp)	#, t
	movl	$0, -40(%rbp)	#, t
	movl	$8, -36(%rbp)	#, t
	movl	$7, -32(%rbp)	#, t
	movl	$10, -28(%rbp)	#, t
	movl	$9, -24(%rbp)	#, t
	movl	$12, -20(%rbp)	#, t
	movl	$11, -16(%rbp)	#, t
	.loc 1 202 0
	movl	-68(%rbp), %eax	# piece, tmp62
	cltq
	movl	-64(%rbp,%rax,4), %eax	# t, D.4333
	.loc 1 203 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SwitchColor, .-SwitchColor
	.globl	SwitchPromoted
	.type	SwitchPromoted, @function
SwitchPromoted:
.LFB5:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -68(%rbp)	# piece, piece
	.loc 1 207 0
	movl	$0, -64(%rbp)	#, t
	movl	$2, -60(%rbp)	#, t
	movl	$1, -56(%rbp)	#, t
	movl	$2, -52(%rbp)	#, t
	movl	$1, -48(%rbp)	#, t
	movl	$0, -44(%rbp)	#, t
	movl	$0, -40(%rbp)	#, t
	movl	$2, -36(%rbp)	#, t
	movl	$1, -32(%rbp)	#, t
	movl	$2, -28(%rbp)	#, t
	movl	$1, -24(%rbp)	#, t
	movl	$2, -20(%rbp)	#, t
	movl	$1, -16(%rbp)	#, t
	.loc 1 211 0
	movl	-68(%rbp), %eax	# piece, tmp62
	cltq
	movl	-64(%rbp,%rax,4), %eax	# t, D.4334
	.loc 1 212 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SwitchPromoted, .-SwitchPromoted
	.globl	addHolding
	.type	addHolding, @function
addHolding:
.LFB6:
	.loc 1 215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# what, what
	movl	%esi, -8(%rbp)	# who, who
	.loc 1 217 0
	movl	Variant(%rip), %eax	# Variant, Variant.55
	testl	%eax, %eax	# Variant.55
	jne	.L81	#,
	.loc 1 220 0
	movl	-4(%rbp), %eax	# what, tmp78
	cltq
	movl	-8(%rbp), %edx	# who, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	salq	$4, %rdx	#, tmp81
	addq	%rdx, %rax	# tmp81, tmp82
	movl	holding(,%rax,4), %eax	# holding, D.4335
	leal	1(%rax), %edx	#, D.4335
	movl	-4(%rbp), %eax	# what, tmp84
	cltq
	movl	-8(%rbp), %ecx	# who, tmp86
	movslq	%ecx, %rcx	# tmp86, tmp85
	salq	$4, %rcx	#, tmp87
	addq	%rcx, %rax	# tmp87, tmp88
	movl	%edx, holding(,%rax,4)	# D.4335, holding
	.loc 1 222 0
	movl	-8(%rbp), %eax	# who, tmp90
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4335
	leal	1(%rax), %edx	#, D.4335
	movl	-8(%rbp), %eax	# who, tmp92
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4335, num_holding
	.loc 1 224 0
	movl	-4(%rbp), %eax	# what, tmp94
	cltq
	movl	-8(%rbp), %edx	# who, tmp96
	movslq	%edx, %rdx	# tmp96, tmp95
	salq	$4, %rdx	#, tmp97
	addq	%rdx, %rax	# tmp97, tmp98
	movl	holding(,%rax,4), %eax	# holding, D.4335
	movslq	%eax, %rcx	# D.4335, tmp99
	movl	-4(%rbp), %eax	# what, tmp101
	movslq	%eax, %rdx	# tmp101, tmp100
	movq	%rdx, %rax	# tmp100, tmp102
	salq	$3, %rax	#, tmp102
	addq	%rdx, %rax	# tmp100, tmp102
	salq	$4, %rax	#, tmp103
	addq	%rcx, %rax	# tmp99, tmp104
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4336
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.56
	xorl	%edx, %eax	# D.4336, hold_hash.57
	movl	%eax, hold_hash(%rip)	# hold_hash.57, hold_hash
.L81:
	.loc 1 228 0
	cmpl	$0, -8(%rbp)	#, who
	jne	.L82	#,
	.loc 1 229 0
	movl	-4(%rbp), %eax	# what, tmp106
	cltq
	movl	hand_value(,%rax,4), %edx	# hand_value, D.4335
	movl	white_hand_eval(%rip), %eax	# white_hand_eval, white_hand_eval.58
	addl	%edx, %eax	# D.4335, white_hand_eval.59
	movl	%eax, white_hand_eval(%rip)	# white_hand_eval.59, white_hand_eval
	jmp	.L83	#
.L82:
	.loc 1 231 0
	movl	-4(%rbp), %eax	# what, tmp108
	cltq
	movl	hand_value(,%rax,4), %edx	# hand_value, D.4335
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.60
	addl	%edx, %eax	# D.4335, black_hand_eval.61
	movl	%eax, black_hand_eval(%rip)	# black_hand_eval.61, black_hand_eval
.L83:
	.loc 1 233 0
	movl	-4(%rbp), %eax	# what, tmp110
	cltq
	movl	material(,%rax,4), %edx	# material, D.4335
	movl	Material(%rip), %eax	# Material, Material.62
	addl	%edx, %eax	# D.4335, Material.63
	movl	%eax, Material(%rip)	# Material.63, Material
	.loc 1 235 0
	nop
	.loc 1 237 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	addHolding, .-addHolding
	.globl	removeHolding
	.type	removeHolding, @function
removeHolding:
.LFB7:
	.loc 1 240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# what, what
	movl	%esi, -8(%rbp)	# who, who
	.loc 1 242 0
	movl	Variant(%rip), %eax	# Variant, Variant.64
	testl	%eax, %eax	# Variant.64
	jne	.L86	#,
	.loc 1 248 0
	movl	-4(%rbp), %eax	# what, tmp78
	cltq
	movl	-8(%rbp), %edx	# who, tmp80
	movslq	%edx, %rdx	# tmp80, tmp79
	salq	$4, %rdx	#, tmp81
	addq	%rdx, %rax	# tmp81, tmp82
	movl	holding(,%rax,4), %eax	# holding, D.4337
	movslq	%eax, %rcx	# D.4337, tmp83
	movl	-4(%rbp), %eax	# what, tmp85
	movslq	%eax, %rdx	# tmp85, tmp84
	movq	%rdx, %rax	# tmp84, tmp86
	salq	$3, %rax	#, tmp86
	addq	%rdx, %rax	# tmp84, tmp86
	salq	$4, %rax	#, tmp87
	addq	%rcx, %rax	# tmp83, tmp88
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4338
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.65
	xorl	%edx, %eax	# D.4338, hold_hash.66
	movl	%eax, hold_hash(%rip)	# hold_hash.66, hold_hash
	.loc 1 250 0
	movl	-4(%rbp), %eax	# what, tmp90
	cltq
	movl	-8(%rbp), %edx	# who, tmp92
	movslq	%edx, %rdx	# tmp92, tmp91
	salq	$4, %rdx	#, tmp93
	addq	%rdx, %rax	# tmp93, tmp94
	movl	holding(,%rax,4), %eax	# holding, D.4337
	leal	-1(%rax), %edx	#, D.4337
	movl	-4(%rbp), %eax	# what, tmp96
	cltq
	movl	-8(%rbp), %ecx	# who, tmp98
	movslq	%ecx, %rcx	# tmp98, tmp97
	salq	$4, %rcx	#, tmp99
	addq	%rcx, %rax	# tmp99, tmp100
	movl	%edx, holding(,%rax,4)	# D.4337, holding
	.loc 1 252 0
	movl	-8(%rbp), %eax	# who, tmp102
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4337
	leal	-1(%rax), %edx	#, D.4337
	movl	-8(%rbp), %eax	# who, tmp104
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4337, num_holding
.L86:
	.loc 1 256 0
	cmpl	$0, -8(%rbp)	#, who
	jne	.L87	#,
	.loc 1 257 0
	movl	white_hand_eval(%rip), %edx	# white_hand_eval, white_hand_eval.67
	movl	-4(%rbp), %eax	# what, tmp106
	cltq
	movl	hand_value(,%rax,4), %eax	# hand_value, D.4337
	subl	%eax, %edx	# D.4337, white_hand_eval.68
	movl	%edx, %eax	# white_hand_eval.68, white_hand_eval.68
	movl	%eax, white_hand_eval(%rip)	# white_hand_eval.68, white_hand_eval
	jmp	.L88	#
.L87:
	.loc 1 259 0
	movl	black_hand_eval(%rip), %edx	# black_hand_eval, black_hand_eval.69
	movl	-4(%rbp), %eax	# what, tmp108
	cltq
	movl	hand_value(,%rax,4), %eax	# hand_value, D.4337
	subl	%eax, %edx	# D.4337, black_hand_eval.70
	movl	%edx, %eax	# black_hand_eval.70, black_hand_eval.70
	movl	%eax, black_hand_eval(%rip)	# black_hand_eval.70, black_hand_eval
.L88:
	.loc 1 261 0
	movl	Material(%rip), %edx	# Material, Material.71
	movl	-4(%rbp), %eax	# what, tmp110
	cltq
	movl	material(,%rax,4), %eax	# material, D.4337
	subl	%eax, %edx	# D.4337, Material.72
	movl	%edx, %eax	# Material.72, Material.72
	movl	%eax, Material(%rip)	# Material.72, Material
	.loc 1 263 0
	nop
	.loc 1 265 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	removeHolding, .-removeHolding
	.globl	DropaddHolding
	.type	DropaddHolding, @function
DropaddHolding:
.LFB8:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# what, what
	movl	%esi, -8(%rbp)	# who, who
	.loc 1 269 0
	movl	-4(%rbp), %eax	# what, tmp77
	cltq
	movl	-8(%rbp), %edx	# who, tmp79
	movslq	%edx, %rdx	# tmp79, tmp78
	salq	$4, %rdx	#, tmp80
	addq	%rdx, %rax	# tmp80, tmp81
	movl	holding(,%rax,4), %eax	# holding, D.4339
	leal	1(%rax), %edx	#, D.4339
	movl	-4(%rbp), %eax	# what, tmp83
	cltq
	movl	-8(%rbp), %ecx	# who, tmp85
	movslq	%ecx, %rcx	# tmp85, tmp84
	salq	$4, %rcx	#, tmp86
	addq	%rcx, %rax	# tmp86, tmp87
	movl	%edx, holding(,%rax,4)	# D.4339, holding
	.loc 1 271 0
	movl	-8(%rbp), %eax	# who, tmp89
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4339
	leal	1(%rax), %edx	#, D.4339
	movl	-8(%rbp), %eax	# who, tmp91
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4339, num_holding
	.loc 1 273 0
	movl	-4(%rbp), %eax	# what, tmp93
	cltq
	movl	-8(%rbp), %edx	# who, tmp95
	movslq	%edx, %rdx	# tmp95, tmp94
	salq	$4, %rdx	#, tmp96
	addq	%rdx, %rax	# tmp96, tmp97
	movl	holding(,%rax,4), %eax	# holding, D.4339
	movslq	%eax, %rcx	# D.4339, tmp98
	movl	-4(%rbp), %eax	# what, tmp100
	movslq	%eax, %rdx	# tmp100, tmp99
	movq	%rdx, %rax	# tmp99, tmp101
	salq	$3, %rax	#, tmp101
	addq	%rdx, %rax	# tmp99, tmp101
	salq	$4, %rax	#, tmp102
	addq	%rcx, %rax	# tmp98, tmp103
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4340
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.73
	xorl	%edx, %eax	# D.4340, hold_hash.74
	movl	%eax, hold_hash(%rip)	# hold_hash.74, hold_hash
	.loc 1 275 0
	cmpl	$0, -8(%rbp)	#, who
	jne	.L91	#,
	.loc 1 276 0
	movl	-4(%rbp), %eax	# what, tmp105
	cltq
	movl	hand_value(,%rax,4), %edx	# hand_value, D.4339
	movl	white_hand_eval(%rip), %eax	# white_hand_eval, white_hand_eval.75
	addl	%edx, %eax	# D.4339, white_hand_eval.76
	movl	%eax, white_hand_eval(%rip)	# white_hand_eval.76, white_hand_eval
	jmp	.L92	#
.L91:
	.loc 1 278 0
	movl	-4(%rbp), %eax	# what, tmp107
	cltq
	movl	hand_value(,%rax,4), %edx	# hand_value, D.4339
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.77
	addl	%edx, %eax	# D.4339, black_hand_eval.78
	movl	%eax, black_hand_eval(%rip)	# black_hand_eval.78, black_hand_eval
.L92:
	.loc 1 280 0
	movl	-4(%rbp), %eax	# what, tmp109
	cltq
	movl	material(,%rax,4), %edx	# material, D.4339
	movl	Material(%rip), %eax	# Material, Material.79
	addl	%edx, %eax	# D.4339, Material.80
	movl	%eax, Material(%rip)	# Material.80, Material
	.loc 1 282 0
	nop
	.loc 1 283 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	DropaddHolding, .-DropaddHolding
	.globl	DropremoveHolding
	.type	DropremoveHolding, @function
DropremoveHolding:
.LFB9:
	.loc 1 286 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# what, what
	movl	%esi, -8(%rbp)	# who, who
	.loc 1 291 0
	movl	-4(%rbp), %eax	# what, tmp77
	cltq
	movl	-8(%rbp), %edx	# who, tmp79
	movslq	%edx, %rdx	# tmp79, tmp78
	salq	$4, %rdx	#, tmp80
	addq	%rdx, %rax	# tmp80, tmp81
	movl	holding(,%rax,4), %eax	# holding, D.4341
	movslq	%eax, %rcx	# D.4341, tmp82
	movl	-4(%rbp), %eax	# what, tmp84
	movslq	%eax, %rdx	# tmp84, tmp83
	movq	%rdx, %rax	# tmp83, tmp85
	salq	$3, %rax	#, tmp85
	addq	%rdx, %rax	# tmp83, tmp85
	salq	$4, %rax	#, tmp86
	addq	%rcx, %rax	# tmp82, tmp87
	movl	zobrist(,%rax,4), %edx	# zobrist, D.4342
	movl	hold_hash(%rip), %eax	# hold_hash, hold_hash.81
	xorl	%edx, %eax	# D.4342, hold_hash.82
	movl	%eax, hold_hash(%rip)	# hold_hash.82, hold_hash
	.loc 1 293 0
	movl	-4(%rbp), %eax	# what, tmp89
	cltq
	movl	-8(%rbp), %edx	# who, tmp91
	movslq	%edx, %rdx	# tmp91, tmp90
	salq	$4, %rdx	#, tmp92
	addq	%rdx, %rax	# tmp92, tmp93
	movl	holding(,%rax,4), %eax	# holding, D.4341
	leal	-1(%rax), %edx	#, D.4341
	movl	-4(%rbp), %eax	# what, tmp95
	cltq
	movl	-8(%rbp), %ecx	# who, tmp97
	movslq	%ecx, %rcx	# tmp97, tmp96
	salq	$4, %rcx	#, tmp98
	addq	%rcx, %rax	# tmp98, tmp99
	movl	%edx, holding(,%rax,4)	# D.4341, holding
	.loc 1 295 0
	movl	-8(%rbp), %eax	# who, tmp101
	cltq
	movl	num_holding(,%rax,4), %eax	# num_holding, D.4341
	leal	-1(%rax), %edx	#, D.4341
	movl	-8(%rbp), %eax	# who, tmp103
	cltq
	movl	%edx, num_holding(,%rax,4)	# D.4341, num_holding
	.loc 1 297 0
	cmpl	$0, -8(%rbp)	#, who
	jne	.L95	#,
	.loc 1 298 0
	movl	white_hand_eval(%rip), %edx	# white_hand_eval, white_hand_eval.83
	movl	-4(%rbp), %eax	# what, tmp105
	cltq
	movl	hand_value(,%rax,4), %eax	# hand_value, D.4341
	subl	%eax, %edx	# D.4341, white_hand_eval.84
	movl	%edx, %eax	# white_hand_eval.84, white_hand_eval.84
	movl	%eax, white_hand_eval(%rip)	# white_hand_eval.84, white_hand_eval
	jmp	.L96	#
.L95:
	.loc 1 300 0
	movl	black_hand_eval(%rip), %edx	# black_hand_eval, black_hand_eval.85
	movl	-4(%rbp), %eax	# what, tmp107
	cltq
	movl	hand_value(,%rax,4), %eax	# hand_value, D.4341
	subl	%eax, %edx	# D.4341, black_hand_eval.86
	movl	%edx, %eax	# black_hand_eval.86, black_hand_eval.86
	movl	%eax, black_hand_eval(%rip)	# black_hand_eval.86, black_hand_eval
.L96:
	.loc 1 302 0
	movl	Material(%rip), %edx	# Material, Material.87
	movl	-4(%rbp), %eax	# what, tmp109
	cltq
	movl	material(,%rax,4), %eax	# material, D.4341
	subl	%eax, %edx	# D.4341, Material.88
	movl	%edx, %eax	# Material.88, Material.88
	movl	%eax, Material(%rip)	# Material.88, Material
	.loc 1 304 0
	nop
	.loc 1 305 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DropremoveHolding, .-DropremoveHolding
	.section	.rodata
	.align 8
.LC0:
	.string	"WP: %d WR: %d WB: %d WN: %d WQ: %d\n"
	.align 8
.LC1:
	.string	"BP: %d BR: %d BB: %d BN: %d BQ: %d\n"
	.text
	.globl	printHolding
	.type	printHolding, @function
printHolding:
.LFB10:
	.loc 1 308 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 310 0
	movl	holding+36(%rip), %edi	# holding, D.4343
	movl	holding+12(%rip), %esi	# holding, D.4343
	movl	holding+44(%rip), %ecx	# holding, D.4343
	movl	holding+28(%rip), %edx	# holding, D.4343
	movl	holding+4(%rip), %eax	# holding, D.4343
	movl	%edi, %r9d	# D.4343,
	movl	%esi, %r8d	# D.4343,
	movl	%eax, %esi	# D.4343,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 315 0
	movl	holding+104(%rip), %edi	# holding, D.4343
	movl	holding+80(%rip), %esi	# holding, D.4343
	movl	holding+112(%rip), %ecx	# holding, D.4343
	movl	holding+96(%rip), %edx	# holding, D.4343
	movl	holding+72(%rip), %eax	# holding, D.4343
	movl	%edi, %r9d	# D.4343,
	movl	%esi, %r8d	# D.4343,
	movl	%eax, %esi	# D.4343,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 320 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	printHolding, .-printHolding
.Letext0:
	.file 2 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3eb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF35
	.byte	0x1
	.long	.LASF36
	.long	.LASF37
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
	.uleb128 0x4
	.long	0x57
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
	.byte	0x8
	.long	0x82
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x20
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0x20
	.long	0x7c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x22
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.long	.LASF11
	.byte	0x1
	.byte	0xac
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x119
	.uleb128 0x8
	.string	"txt"
	.byte	0x1
	.byte	0xac
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"who"
	.byte	0x1
	.byte	0xac
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0xc4
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x157
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0xc4
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x9
	.string	"t"
	.byte	0x1
	.byte	0xc6
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x167
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0xcd
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5
	.uleb128 0xb
	.long	.LASF13
	.byte	0x1
	.byte	0xcd
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x9
	.string	"t"
	.byte	0x1
	.byte	0xcf
	.long	0x157
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.byte	0xd6
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1df
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0xd6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"who"
	.byte	0x1
	.byte	0xd6
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1
	.byte	0xef
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x219
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0xef
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.string	"who"
	.byte	0x1
	.byte	0xef
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.value	0x10b
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x256
	.uleb128 0xe
	.long	.LASF17
	.byte	0x1
	.value	0x10b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"who"
	.byte	0x1
	.value	0x10b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.value	0x11d
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x293
	.uleb128 0xe
	.long	.LASF17
	.byte	0x1
	.value	0x11d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.string	"who"
	.byte	0x1
	.value	0x11d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.value	0x133
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF21
	.byte	0x2
	.byte	0xe
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x2ce
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0xf
	.long	0x2b8
	.uleb128 0x9
	.byte	0x3
	.quad	holding
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.byte	0x10
	.long	0x65
	.uleb128 0x9
	.byte	0x3
	.quad	num_holding
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	white_hand_eval
	.uleb128 0x12
	.long	.LASF25
	.byte	0x1
	.byte	0x18
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	black_hand_eval
	.uleb128 0x4
	.long	0x57
	.long	0x32d
	.uleb128 0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF26
	.byte	0x2
	.byte	0x27
	.long	0x322
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	drop_piece
	.uleb128 0x4
	.long	0x3b
	.long	0x363
	.uleb128 0x5
	.long	0x75
	.byte	0xd
	.uleb128 0x5
	.long	0x75
	.byte	0x8f
	.byte	0
	.uleb128 0x11
	.long	.LASF28
	.byte	0x2
	.byte	0x37
	.long	0x34d
	.uleb128 0x12
	.long	.LASF29
	.byte	0x1
	.byte	0x1a
	.long	0x3b
	.uleb128 0x9
	.byte	0x3
	.quad	hold_hash
	.uleb128 0x11
	.long	.LASF30
	.byte	0x2
	.byte	0x4a
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x39e
	.uleb128 0x5
	.long	0x75
	.byte	0xd
	.byte	0
	.uleb128 0x11
	.long	.LASF31
	.byte	0x2
	.byte	0x4b
	.long	0x38e
	.uleb128 0x11
	.long	.LASF32
	.byte	0x2
	.byte	0x63
	.long	0x57
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	userealholdings
	.uleb128 0x4
	.long	0x82
	.long	0x3d9
	.uleb128 0x5
	.long	0x75
	.byte	0xfe
	.byte	0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x12
	.long	0x3c9
	.uleb128 0x9
	.byte	0x3
	.quad	realholdings
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
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
.LASF19:
	.string	"DropaddHolding"
.LASF26:
	.string	"hand_value"
.LASF25:
	.string	"black_hand_eval"
.LASF32:
	.string	"Variant"
.LASF28:
	.string	"zobrist"
.LASF16:
	.string	"addHolding"
.LASF33:
	.string	"userealholdings"
.LASF11:
	.string	"text_to_piece"
.LASF27:
	.string	"drop_piece"
.LASF22:
	.string	"holding"
.LASF0:
	.string	"unsigned char"
.LASF12:
	.string	"SwitchColor"
.LASF3:
	.string	"long unsigned int"
.LASF20:
	.string	"DropremoveHolding"
.LASF1:
	.string	"short unsigned int"
.LASF31:
	.string	"material"
.LASF23:
	.string	"num_holding"
.LASF30:
	.string	"Material"
.LASF17:
	.string	"what"
.LASF18:
	.string	"removeHolding"
.LASF36:
	.string	"crazy.c"
.LASF13:
	.string	"piece"
.LASF29:
	.string	"hold_hash"
.LASF2:
	.string	"unsigned int"
.LASF38:
	.string	"printHolding"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"comp_color"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF37:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF8:
	.string	"char"
.LASF34:
	.string	"realholdings"
.LASF35:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF24:
	.string	"white_hand_eval"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"SwitchPromoted"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"ProcessHoldings"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
