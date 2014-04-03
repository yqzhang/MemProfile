	.file	"readmin.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D WANT_STDC_PROTO -D SPEC_CPU_LP64 readmin.c -mtune=generic
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
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"%ld %ld"
.LC2:
	.string	"read_min(): not enough memory"
.LC3:
	.string	"%ld %ld %ld"
	.text
	.globl	read_min
	.type	read_min, @function
read_min:
.LFB2:
	.file 1 "readmin.c"
	.loc 1 34 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)	# net, net
	.loc 1 34 0
	movq	%fs:40, %rax	#, tmp443
	movq	%rax, -24(%rbp)	# tmp443, D.4903
	xorl	%eax, %eax	# tmp443
	.loc 1 35 0
	movq	$0, -256(%rbp)	#, in
	.loc 1 43 0
	movq	-312(%rbp), %rax	# net, D.4894
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.4894,
	call	fopen	#
	movq	%rax, -256(%rbp)	# tmp240, in
	cmpq	$0, -256(%rbp)	#, in
	jne	.L2	#,
	.loc 1 44 0
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L2:
	.loc 1 46 0
	movq	-256(%rbp), %rdx	# in, tmp241
	leaq	-240(%rbp), %rax	#, tmp242
	movl	$200, %esi	#,
	movq	%rax, %rdi	# tmp242,
	call	fgets	#
	.loc 1 47 0
	leaq	-288(%rbp), %rcx	#, tmp243
	leaq	-296(%rbp), %rdx	#, tmp244
	leaq	-240(%rbp), %rax	#, tmp245
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp245,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$2, %eax	#, D.4895
	je	.L4	#,
	.loc 1 48 0
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L4:
	.loc 1 51 0
	movq	-296(%rbp), %rdx	# t, t.0
	movq	-312(%rbp), %rax	# net, tmp246
	movq	%rdx, 408(%rax)	# t.0, net_9(D)->n_trips
	.loc 1 52 0
	movq	-288(%rbp), %rdx	# h, h.1
	movq	-312(%rbp), %rax	# net, tmp247
	movq	%rdx, 432(%rax)	# h.1, net_9(D)->m_org
	.loc 1 53 0
	movq	-296(%rbp), %rdx	# t, t.2
	movq	-296(%rbp), %rax	# t, t.3
	addq	%rdx, %rax	# t.2, D.4893
	leaq	1(%rax), %rdx	#, D.4893
	movq	-312(%rbp), %rax	# net, tmp248
	movq	%rdx, 400(%rax)	# D.4893, net_9(D)->n
	.loc 1 54 0
	movq	-296(%rbp), %rdx	# t, t.4
	movq	-296(%rbp), %rax	# t, t.5
	addq	%rax, %rdx	# t.5, D.4893
	movq	-296(%rbp), %rax	# t, t.6
	addq	%rax, %rdx	# t.6, D.4893
	movq	-288(%rbp), %rax	# h, h.7
	addq	%rax, %rdx	# h.7, D.4893
	movq	-312(%rbp), %rax	# net, tmp249
	movq	%rdx, 424(%rax)	# D.4893, net_9(D)->m
	.loc 1 56 0
	movq	-312(%rbp), %rax	# net, tmp250
	movq	408(%rax), %rax	# net_9(D)->n_trips, D.4893
	cmpq	$15000, %rax	#, D.4893
	jg	.L5	#,
	.loc 1 58 0
	movq	-312(%rbp), %rax	# net, tmp251
	movq	424(%rax), %rdx	# net_9(D)->m, D.4893
	movq	-312(%rbp), %rax	# net, tmp252
	movq	%rdx, 416(%rax)	# D.4893, net_9(D)->max_m
	.loc 1 59 0
	movq	-312(%rbp), %rax	# net, tmp253
	movq	$3000000, 456(%rax)	#, net_9(D)->max_new_m
	jmp	.L6	#
.L5:
	.loc 1 67 0
	movq	-312(%rbp), %rax	# net, tmp254
	movq	$27328512, 416(%rax)	#, net_9(D)->max_m
	.loc 1 71 0
	movq	-312(%rbp), %rax	# net, tmp255
	movq	$28900000, 456(%rax)	#, net_9(D)->max_new_m
.L6:
	.loc 1 74 0
	movq	-312(%rbp), %rax	# net, tmp256
	movq	416(%rax), %rdx	# net_9(D)->max_m, D.4893
	movq	-312(%rbp), %rax	# net, tmp257
	movq	424(%rax), %rax	# net_9(D)->m, D.4893
	subq	%rax, %rdx	# D.4893, D.4893
	movq	-312(%rbp), %rax	# net, tmp258
	movq	%rdx, 448(%rax)	# D.4893, net_9(D)->max_residual_new_m
	.loc 1 80 0
	movq	-312(%rbp), %rax	# net, tmp259
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	addq	$1, %rax	#, D.4893
	movl	$104, %esi	#,
	movq	%rax, %rdi	# D.4896,
	call	calloc	#
	movq	%rax, %rdx	# tmp260, D.4897
	movq	-312(%rbp), %rax	# net, tmp261
	movq	%rdx, 552(%rax)	# D.4897, net_9(D)->nodes
	.loc 1 81 0
	movq	-312(%rbp), %rax	# net, tmp262
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	movl	$64, %esi	#,
	movq	%rax, %rdi	# D.4896,
	call	calloc	#
	movq	%rax, %rdx	# tmp263, D.4897
	movq	-312(%rbp), %rax	# net, tmp264
	movq	%rdx, 584(%rax)	# D.4897, net_9(D)->dummy_arcs
	.loc 1 82 0
	movq	-312(%rbp), %rax	# net, tmp265
	movq	416(%rax), %rax	# net_9(D)->max_m, D.4893
	movl	$64, %esi	#,
	movq	%rax, %rdi	# D.4896,
	call	calloc	#
	movq	%rax, %rdx	# tmp266, D.4897
	movq	-312(%rbp), %rax	# net, tmp267
	movq	%rdx, 568(%rax)	# D.4897, net_9(D)->arcs
	.loc 1 84 0
	movq	-312(%rbp), %rax	# net, tmp268
	movq	552(%rax), %rax	# net_9(D)->nodes, D.4898
	testq	%rax, %rax	# D.4898
	je	.L7	#,
	.loc 1 84 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# net, tmp269
	movq	568(%rax), %rax	# net_9(D)->arcs, D.4899
	testq	%rax, %rax	# D.4899
	je	.L7	#,
	movq	-312(%rbp), %rax	# net, tmp270
	movq	584(%rax), %rax	# net_9(D)->dummy_arcs, D.4899
	testq	%rax, %rax	# D.4899
	jne	.L8	#,
.L7:
	.loc 1 86 0 is_stmt 1
	movl	$.LC2, %edi	#,
	call	puts	#
	.loc 1 87 0
	movq	-312(%rbp), %rax	# net, tmp271
	movq	%rax, %rdi	# tmp271,
	call	getfree	#
	.loc 1 88 0
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L8:
	.loc 1 108 0
	movq	-312(%rbp), %rax	# net, tmp272
	movq	552(%rax), %rcx	# net_9(D)->nodes, D.4898
	movq	-312(%rbp), %rax	# net, tmp273
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	leaq	1(%rax), %rdx	#, D.4900
	movq	%rdx, %rax	# D.4900, tmp274
	addq	%rax, %rax	# tmp274
	addq	%rdx, %rax	# D.4900, tmp274
	salq	$2, %rax	#, tmp274
	addq	%rdx, %rax	# D.4900, tmp274
	salq	$3, %rax	#, tmp275
	leaq	(%rcx,%rax), %rdx	#, D.4898
	movq	-312(%rbp), %rax	# net, tmp276
	movq	%rdx, 560(%rax)	# D.4898, net_9(D)->stop_nodes
	.loc 1 109 0
	movq	-312(%rbp), %rax	# net, tmp277
	movq	568(%rax), %rdx	# net_9(D)->arcs, D.4899
	movq	-312(%rbp), %rax	# net, tmp278
	movq	424(%rax), %rax	# net_9(D)->m, D.4893
	salq	$6, %rax	#, D.4896
	addq	%rax, %rdx	# D.4896, D.4899
	movq	-312(%rbp), %rax	# net, tmp279
	movq	%rdx, 576(%rax)	# D.4899, net_9(D)->stop_arcs
	.loc 1 110 0
	movq	-312(%rbp), %rax	# net, tmp280
	movq	584(%rax), %rdx	# net_9(D)->dummy_arcs, D.4899
	movq	-312(%rbp), %rax	# net, tmp281
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	salq	$6, %rax	#, D.4896
	addq	%rax, %rdx	# D.4896, D.4899
	movq	-312(%rbp), %rax	# net, tmp282
	movq	%rdx, 592(%rax)	# D.4899, net_9(D)->stop_dummy
	.loc 1 113 0
	movq	-312(%rbp), %rax	# net, tmp283
	movq	552(%rax), %rax	# net_9(D)->nodes, tmp284
	movq	%rax, -248(%rbp)	# tmp284, node
	.loc 1 114 0
	movq	-312(%rbp), %rax	# net, tmp285
	movq	568(%rax), %rax	# net_9(D)->arcs, tmp286
	movq	%rax, -264(%rbp)	# tmp286, arc
	.loc 1 116 0
	movq	$1, -272(%rbp)	#, i
	jmp	.L9	#
.L12:
	.loc 1 118 0
	movq	-256(%rbp), %rdx	# in, tmp287
	leaq	-240(%rbp), %rax	#, tmp288
	movl	$200, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	fgets	#
	.loc 1 120 0
	leaq	-288(%rbp), %rcx	#, tmp289
	leaq	-296(%rbp), %rdx	#, tmp290
	leaq	-240(%rbp), %rax	#, tmp291
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp291,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$2, %eax	#, D.4895
	jne	.L10	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movq	-296(%rbp), %rdx	# t, t.8
	movq	-288(%rbp), %rax	# h, h.9
	cmpq	%rax, %rdx	# h.9, t.8
	jle	.L11	#,
.L10:
	.loc 1 121 0 is_stmt 1
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L11:
	.loc 1 123 0
	movq	-272(%rbp), %rdx	# i, i.10
	movq	%rdx, %rax	# i.10, tmp292
	addq	%rax, %rax	# tmp292
	addq	%rdx, %rax	# i.10, tmp292
	salq	$2, %rax	#, tmp292
	addq	%rdx, %rax	# i.10, tmp292
	salq	$3, %rax	#, tmp293
	movq	%rax, %rdx	# tmp292, D.4896
	movq	-248(%rbp), %rax	# node, tmp294
	addq	%rax, %rdx	# tmp294, D.4901
	movq	-272(%rbp), %rax	# i, tmp295
	negl	%eax	# D.4902
	movl	%eax, 96(%rdx)	# D.4895, _71->number
	.loc 1 124 0
	movq	-272(%rbp), %rdx	# i, i.11
	movq	%rdx, %rax	# i.11, tmp296
	addq	%rax, %rax	# tmp296
	addq	%rdx, %rax	# i.11, tmp296
	salq	$2, %rax	#, tmp296
	addq	%rdx, %rax	# i.11, tmp296
	salq	$3, %rax	#, tmp297
	movq	%rax, %rdx	# tmp296, D.4896
	movq	-248(%rbp), %rax	# node, tmp298
	addq	%rdx, %rax	# D.4896, D.4901
	movq	$-1, 80(%rax)	#, _77->flow
	.loc 1 126 0
	movq	-312(%rbp), %rax	# net, tmp299
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-272(%rbp), %rax	# i, tmp300
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp301
	addq	%rax, %rax	# tmp301
	addq	%rdx, %rax	# D.4896, tmp301
	salq	$2, %rax	#, tmp301
	addq	%rdx, %rax	# D.4896, tmp301
	salq	$3, %rax	#, tmp302
	movq	%rax, %rdx	# tmp301, D.4896
	movq	-248(%rbp), %rax	# node, tmp303
	addq	%rax, %rdx	# tmp303, D.4901
	movq	-272(%rbp), %rax	# i, tmp304
	movl	%eax, 96(%rdx)	# D.4895, _82->number
	.loc 1 127 0
	movq	-312(%rbp), %rax	# net, tmp305
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-272(%rbp), %rax	# i, tmp306
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp307
	addq	%rax, %rax	# tmp307
	addq	%rdx, %rax	# D.4896, tmp307
	salq	$2, %rax	#, tmp307
	addq	%rdx, %rax	# D.4896, tmp307
	salq	$3, %rax	#, tmp308
	movq	%rax, %rdx	# tmp307, D.4896
	movq	-248(%rbp), %rax	# node, tmp309
	addq	%rdx, %rax	# D.4896, D.4901
	movq	$1, 80(%rax)	#, _88->flow
	.loc 1 129 0
	movq	-272(%rbp), %rdx	# i, i.12
	movq	%rdx, %rax	# i.12, tmp310
	addq	%rax, %rax	# tmp310
	addq	%rdx, %rax	# i.12, tmp310
	salq	$2, %rax	#, tmp310
	addq	%rdx, %rax	# i.12, tmp310
	salq	$3, %rax	#, tmp311
	movq	%rax, %rdx	# tmp310, D.4896
	movq	-248(%rbp), %rax	# node, tmp312
	addq	%rax, %rdx	# tmp312, D.4901
	movq	-296(%rbp), %rax	# t, t.13
	movl	%eax, 100(%rdx)	# D.4895, _91->time
	.loc 1 130 0
	movq	-312(%rbp), %rax	# net, tmp313
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-272(%rbp), %rax	# i, tmp314
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# D.4896, tmp315
	salq	$2, %rax	#, tmp315
	addq	%rdx, %rax	# D.4896, tmp315
	salq	$3, %rax	#, tmp316
	movq	%rax, %rdx	# tmp315, D.4896
	movq	-248(%rbp), %rax	# node, tmp317
	addq	%rax, %rdx	# tmp317, D.4901
	movq	-288(%rbp), %rax	# h, h.14
	movl	%eax, 100(%rdx)	# D.4895, _98->time
	.loc 1 132 0
	movq	-312(%rbp), %rax	# net, tmp318
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp319
	addq	%rax, %rax	# tmp319
	addq	%rdx, %rax	# D.4896, tmp319
	salq	$2, %rax	#, tmp319
	addq	%rdx, %rax	# D.4896, tmp319
	salq	$3, %rax	#, tmp320
	movq	%rax, %rdx	# tmp319, D.4896
	movq	-248(%rbp), %rax	# node, tmp321
	addq	%rax, %rdx	# tmp321, D.4898
	movq	-264(%rbp), %rax	# arc, tmp322
	movq	%rdx, 8(%rax)	# D.4898, arc_4->tail
	.loc 1 133 0
	movq	-272(%rbp), %rdx	# i, i.15
	movq	%rdx, %rax	# i.15, tmp323
	addq	%rax, %rax	# tmp323
	addq	%rdx, %rax	# i.15, tmp323
	salq	$2, %rax	#, tmp323
	addq	%rdx, %rax	# i.15, tmp323
	salq	$3, %rax	#, tmp324
	movq	%rax, %rdx	# tmp323, D.4896
	movq	-248(%rbp), %rax	# node, tmp325
	addq	%rax, %rdx	# tmp325, D.4898
	movq	-264(%rbp), %rax	# arc, tmp326
	movq	%rdx, 16(%rax)	# D.4898, arc_4->head
	.loc 1 134 0
	movq	-312(%rbp), %rax	# net, tmp327
	movq	528(%rax), %rax	# net_9(D)->bigM, D.4893
	leaq	15(%rax), %rdx	#, D.4893
	movq	-264(%rbp), %rax	# arc, tmp328
	movq	%rdx, (%rax)	# D.4893, arc_4->cost
	movq	-264(%rbp), %rax	# arc, tmp329
	movq	(%rax), %rdx	# arc_4->cost, D.4893
	movq	-264(%rbp), %rax	# arc, tmp330
	movq	%rdx, 56(%rax)	# D.4893, arc_4->org_cost
	.loc 1 135 0
	movq	-264(%rbp), %rax	# arc, tmp331
	movq	8(%rax), %rax	# arc_4->tail, D.4898
	movq	56(%rax), %rdx	# _111->firstout, D.4899
	movq	-264(%rbp), %rax	# arc, tmp332
	movq	%rdx, 32(%rax)	# D.4899, arc_4->nextout
	.loc 1 136 0
	movq	-264(%rbp), %rax	# arc, tmp333
	movq	8(%rax), %rax	# arc_4->tail, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp334
	movq	%rdx, 56(%rax)	# tmp334, _113->firstout
	.loc 1 137 0
	movq	-264(%rbp), %rax	# arc, tmp335
	movq	16(%rax), %rax	# arc_4->head, D.4898
	movq	64(%rax), %rdx	# _114->firstin, D.4899
	movq	-264(%rbp), %rax	# arc, tmp336
	movq	%rdx, 40(%rax)	# D.4899, arc_4->nextin
	.loc 1 138 0
	movq	-264(%rbp), %rax	# arc, tmp337
	movq	16(%rax), %rax	# arc_4->head, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp338
	movq	%rdx, 64(%rax)	# tmp338, _116->firstin
	.loc 1 139 0
	addq	$64, -264(%rbp)	#, arc
	.loc 1 141 0
	movq	-312(%rbp), %rax	# net, tmp339
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-272(%rbp), %rax	# i, tmp340
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp341
	addq	%rax, %rax	# tmp341
	addq	%rdx, %rax	# D.4896, tmp341
	salq	$2, %rax	#, tmp341
	addq	%rdx, %rax	# D.4896, tmp341
	salq	$3, %rax	#, tmp342
	movq	%rax, %rdx	# tmp341, D.4896
	movq	-248(%rbp), %rax	# node, tmp343
	addq	%rax, %rdx	# tmp343, D.4898
	movq	-264(%rbp), %rax	# arc, tmp344
	movq	%rdx, 8(%rax)	# D.4898, arc_117->tail
	.loc 1 142 0
	movq	-312(%rbp), %rax	# net, tmp345
	movq	400(%rax), %rax	# net_9(D)->n, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp346
	addq	%rax, %rax	# tmp346
	addq	%rdx, %rax	# D.4896, tmp346
	salq	$2, %rax	#, tmp346
	addq	%rdx, %rax	# D.4896, tmp346
	salq	$3, %rax	#, tmp347
	movq	%rax, %rdx	# tmp346, D.4896
	movq	-248(%rbp), %rax	# node, tmp348
	addq	%rax, %rdx	# tmp348, D.4898
	movq	-264(%rbp), %rax	# arc, tmp349
	movq	%rdx, 16(%rax)	# D.4898, arc_117->head
	.loc 1 143 0
	movq	-264(%rbp), %rax	# arc, tmp350
	movq	$15, (%rax)	#, arc_117->cost
	movq	-264(%rbp), %rax	# arc, tmp351
	movq	(%rax), %rdx	# arc_117->cost, D.4893
	movq	-264(%rbp), %rax	# arc, tmp352
	movq	%rdx, 56(%rax)	# D.4893, arc_117->org_cost
	.loc 1 144 0
	movq	-264(%rbp), %rax	# arc, tmp353
	movq	8(%rax), %rax	# arc_117->tail, D.4898
	movq	56(%rax), %rdx	# _128->firstout, D.4899
	movq	-264(%rbp), %rax	# arc, tmp354
	movq	%rdx, 32(%rax)	# D.4899, arc_117->nextout
	.loc 1 145 0
	movq	-264(%rbp), %rax	# arc, tmp355
	movq	8(%rax), %rax	# arc_117->tail, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp356
	movq	%rdx, 56(%rax)	# tmp356, _130->firstout
	.loc 1 146 0
	movq	-264(%rbp), %rax	# arc, tmp357
	movq	16(%rax), %rax	# arc_117->head, D.4898
	movq	64(%rax), %rdx	# _131->firstin, D.4899
	movq	-264(%rbp), %rax	# arc, tmp358
	movq	%rdx, 40(%rax)	# D.4899, arc_117->nextin
	.loc 1 147 0
	movq	-264(%rbp), %rax	# arc, tmp359
	movq	16(%rax), %rax	# arc_117->head, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp360
	movq	%rdx, 64(%rax)	# tmp360, _133->firstin
	.loc 1 148 0
	addq	$64, -264(%rbp)	#, arc
	.loc 1 150 0
	movq	-272(%rbp), %rdx	# i, i.16
	movq	%rdx, %rax	# i.16, tmp361
	addq	%rax, %rax	# tmp361
	addq	%rdx, %rax	# i.16, tmp361
	salq	$2, %rax	#, tmp361
	addq	%rdx, %rax	# i.16, tmp361
	salq	$3, %rax	#, tmp362
	movq	%rax, %rdx	# tmp361, D.4896
	movq	-248(%rbp), %rax	# node, tmp363
	addq	%rax, %rdx	# tmp363, D.4898
	movq	-264(%rbp), %rax	# arc, tmp364
	movq	%rdx, 8(%rax)	# D.4898, arc_134->tail
	.loc 1 151 0
	movq	-312(%rbp), %rax	# net, tmp365
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-272(%rbp), %rax	# i, tmp366
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp367
	addq	%rax, %rax	# tmp367
	addq	%rdx, %rax	# D.4896, tmp367
	salq	$2, %rax	#, tmp367
	addq	%rdx, %rax	# D.4896, tmp367
	salq	$3, %rax	#, tmp368
	movq	%rax, %rdx	# tmp367, D.4896
	movq	-248(%rbp), %rax	# node, tmp369
	addq	%rax, %rdx	# tmp369, D.4898
	movq	-264(%rbp), %rax	# arc, tmp370
	movq	%rdx, 16(%rax)	# D.4898, arc_134->head
	.loc 1 152 0
	movq	-312(%rbp), %rax	# net, tmp371
	movq	528(%rax), %rax	# net_9(D)->bigM, D.4893
	movl	$10000000, %edx	#, tmp372
	cmpq	$10000000, %rax	#, D.4893
	cmovl	%rdx, %rax	# D.4893,, tmp372, D.4893
	leaq	(%rax,%rax), %rdx	#, D.4893
	movq	-264(%rbp), %rax	# arc, tmp373
	movq	%rdx, (%rax)	# D.4893, arc_134->cost
	movq	-264(%rbp), %rax	# arc, tmp374
	movq	(%rax), %rdx	# arc_134->cost, D.4893
	movq	-264(%rbp), %rax	# arc, tmp375
	movq	%rdx, 56(%rax)	# D.4893, arc_134->org_cost
	.loc 1 153 0
	movq	-264(%rbp), %rax	# arc, tmp376
	movq	8(%rax), %rax	# arc_134->tail, D.4898
	movq	56(%rax), %rdx	# _147->firstout, D.4899
	movq	-264(%rbp), %rax	# arc, tmp377
	movq	%rdx, 32(%rax)	# D.4899, arc_134->nextout
	.loc 1 154 0
	movq	-264(%rbp), %rax	# arc, tmp378
	movq	8(%rax), %rax	# arc_134->tail, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp379
	movq	%rdx, 56(%rax)	# tmp379, _149->firstout
	.loc 1 155 0
	movq	-264(%rbp), %rax	# arc, tmp380
	movq	16(%rax), %rax	# arc_134->head, D.4898
	movq	64(%rax), %rdx	# _150->firstin, D.4899
	movq	-264(%rbp), %rax	# arc, tmp381
	movq	%rdx, 40(%rax)	# D.4899, arc_134->nextin
	.loc 1 156 0
	movq	-264(%rbp), %rax	# arc, tmp382
	movq	16(%rax), %rax	# arc_134->head, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp383
	movq	%rdx, 64(%rax)	# tmp383, _152->firstin
	.loc 1 157 0
	addq	$64, -264(%rbp)	#, arc
	.loc 1 116 0
	addq	$1, -272(%rbp)	#, i
.L9:
	.loc 1 116 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# net, tmp384
	movq	408(%rax), %rax	# net_9(D)->n_trips, D.4893
	cmpq	-272(%rbp), %rax	# i, D.4893
	jge	.L12	#,
	.loc 1 161 0 is_stmt 1
	movq	-312(%rbp), %rax	# net, tmp385
	movq	408(%rax), %rax	# net_9(D)->n_trips, D.4893
	addq	$1, %rax	#, D.4893
	cmpq	-272(%rbp), %rax	# i, D.4893
	je	.L13	#,
	.loc 1 162 0
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L13:
	.loc 1 165 0
	movq	$0, -272(%rbp)	#, i
	jmp	.L14	#
.L16:
	.loc 1 167 0
	movq	-256(%rbp), %rdx	# in, tmp386
	leaq	-240(%rbp), %rax	#, tmp387
	movl	$200, %esi	#,
	movq	%rax, %rdi	# tmp387,
	call	fgets	#
	.loc 1 169 0
	leaq	-280(%rbp), %rsi	#, tmp388
	leaq	-288(%rbp), %rcx	#, tmp389
	leaq	-296(%rbp), %rdx	#, tmp390
	leaq	-240(%rbp), %rax	#, tmp391
	movq	%rsi, %r8	# tmp388,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp391,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$3, %eax	#, D.4895
	je	.L15	#,
	.loc 1 170 0
	movq	$-1, %rax	#, D.4893
	jmp	.L22	#
.L15:
	.loc 1 172 0
	movq	-312(%rbp), %rax	# net, tmp392
	movq	408(%rax), %rdx	# net_9(D)->n_trips, D.4893
	movq	-296(%rbp), %rax	# t, t.17
	addq	%rdx, %rax	# D.4893, D.4893
	movq	%rax, %rdx	# D.4893, D.4896
	movq	%rdx, %rax	# D.4896, tmp393
	addq	%rax, %rax	# tmp393
	addq	%rdx, %rax	# D.4896, tmp393
	salq	$2, %rax	#, tmp393
	addq	%rdx, %rax	# D.4896, tmp393
	salq	$3, %rax	#, tmp394
	movq	%rax, %rdx	# tmp393, D.4896
	movq	-248(%rbp), %rax	# node, tmp395
	addq	%rax, %rdx	# tmp395, D.4898
	movq	-264(%rbp), %rax	# arc, tmp396
	movq	%rdx, 8(%rax)	# D.4898, arc_5->tail
	.loc 1 173 0
	movq	-288(%rbp), %rax	# h, h.18
	movq	%rax, %rdx	# h.18, h.19
	movq	%rdx, %rax	# h.19, tmp397
	addq	%rax, %rax	# tmp397
	addq	%rdx, %rax	# h.19, tmp397
	salq	$2, %rax	#, tmp397
	addq	%rdx, %rax	# h.19, tmp397
	salq	$3, %rax	#, tmp398
	movq	%rax, %rdx	# tmp397, D.4896
	movq	-248(%rbp), %rax	# node, tmp399
	addq	%rax, %rdx	# tmp399, D.4898
	movq	-264(%rbp), %rax	# arc, tmp400
	movq	%rdx, 16(%rax)	# D.4898, arc_5->head
	.loc 1 174 0
	movq	-280(%rbp), %rdx	# c, c.20
	movq	-264(%rbp), %rax	# arc, tmp401
	movq	%rdx, 56(%rax)	# c.20, arc_5->org_cost
	.loc 1 175 0
	movq	-280(%rbp), %rdx	# c, c.21
	movq	-264(%rbp), %rax	# arc, tmp402
	movq	%rdx, (%rax)	# c.21, arc_5->cost
	.loc 1 176 0
	movq	-264(%rbp), %rax	# arc, tmp403
	movq	8(%rax), %rax	# arc_5->tail, D.4898
	movq	56(%rax), %rdx	# _175->firstout, D.4899
	movq	-264(%rbp), %rax	# arc, tmp404
	movq	%rdx, 32(%rax)	# D.4899, arc_5->nextout
	.loc 1 177 0
	movq	-264(%rbp), %rax	# arc, tmp405
	movq	8(%rax), %rax	# arc_5->tail, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp406
	movq	%rdx, 56(%rax)	# tmp406, _177->firstout
	.loc 1 178 0
	movq	-264(%rbp), %rax	# arc, tmp407
	movq	16(%rax), %rax	# arc_5->head, D.4898
	movq	64(%rax), %rdx	# _178->firstin, D.4899
	movq	-264(%rbp), %rax	# arc, tmp408
	movq	%rdx, 40(%rax)	# D.4899, arc_5->nextin
	.loc 1 179 0
	movq	-264(%rbp), %rax	# arc, tmp409
	movq	16(%rax), %rax	# arc_5->head, D.4898
	movq	-264(%rbp), %rdx	# arc, tmp410
	movq	%rdx, 64(%rax)	# tmp410, _180->firstin
	.loc 1 165 0
	addq	$1, -272(%rbp)	#, i
	addq	$64, -264(%rbp)	#, arc
.L14:
	.loc 1 165 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# net, tmp411
	movq	432(%rax), %rax	# net_9(D)->m_org, D.4893
	cmpq	-272(%rbp), %rax	# i, D.4893
	jg	.L16	#,
	.loc 1 183 0 is_stmt 1
	movq	-312(%rbp), %rax	# net, tmp412
	movq	576(%rax), %rax	# net_9(D)->stop_arcs, D.4899
	cmpq	-264(%rbp), %rax	# arc, D.4899
	je	.L17	#,
	.loc 1 185 0
	movq	-312(%rbp), %rax	# net, tmp413
	movq	-264(%rbp), %rdx	# arc, tmp414
	movq	%rdx, 576(%rax)	# tmp414, net_9(D)->stop_arcs
	.loc 1 186 0
	movq	-312(%rbp), %rax	# net, tmp415
	movq	568(%rax), %rax	# net_9(D)->arcs, tmp416
	movq	%rax, -264(%rbp)	# tmp416, arc
	.loc 1 187 0
	movq	-312(%rbp), %rax	# net, tmp417
	movq	$0, 424(%rax)	#, net_9(D)->m
	jmp	.L18	#
.L19:
	.loc 1 188 0 discriminator 2
	movq	-312(%rbp), %rax	# net, tmp418
	movq	424(%rax), %rax	# net_9(D)->m, D.4893
	leaq	1(%rax), %rdx	#, D.4893
	movq	-312(%rbp), %rax	# net, tmp419
	movq	%rdx, 424(%rax)	# D.4893, net_9(D)->m
	.loc 1 187 0 discriminator 2
	addq	$64, -264(%rbp)	#, arc
.L18:
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# net, tmp420
	movq	576(%rax), %rax	# net_9(D)->stop_arcs, D.4899
	cmpq	-264(%rbp), %rax	# arc, D.4899
	ja	.L19	#,
	.loc 1 189 0 is_stmt 1
	movq	-312(%rbp), %rax	# net, tmp421
	movq	424(%rax), %rdx	# net_9(D)->m, D.4893
	movq	-312(%rbp), %rax	# net, tmp422
	movq	%rdx, 432(%rax)	# D.4893, net_9(D)->m_org
.L17:
	.loc 1 192 0
	movq	-256(%rbp), %rax	# in, tmp423
	movq	%rax, %rdi	# tmp423,
	call	fclose	#
	.loc 1 195 0
	movq	-312(%rbp), %rax	# net, tmp424
	movb	$0, 200(%rax)	#, net_9(D)->clustfile
	.loc 1 197 0
	movq	$1, -272(%rbp)	#, i
	jmp	.L20	#
.L21:
	.loc 1 199 0 discriminator 2
	movq	-312(%rbp), %rax	# net, tmp425
	movq	568(%rax), %rcx	# net_9(D)->arcs, D.4899
	movq	-272(%rbp), %rdx	# i, tmp426
	movq	%rdx, %rax	# tmp426, tmp427
	addq	%rax, %rax	# tmp427
	addq	%rdx, %rax	# tmp426, tmp427
	salq	$6, %rax	#, tmp428
	subq	$64, %rax	#, D.4900
	leaq	(%rcx,%rax), %rdx	#, D.4899
	.loc 1 200 0 discriminator 2
	movq	-312(%rbp), %rax	# net, tmp429
	movq	528(%rax), %rax	# net_9(D)->bigM, D.4893
	movl	$10000000, %ecx	#, tmp430
	cmpq	$10000000, %rax	#, D.4893
	cmovge	%rax, %rcx	# D.4893,, D.4893
	movl	$0, %eax	#, tmp431
	subq	%rcx, %rax	# D.4893, tmp431
	addq	%rax, %rax	# tmp432
	.loc 1 199 0 discriminator 2
	movq	%rax, (%rdx)	# D.4893, _196->cost
	.loc 1 201 0 discriminator 2
	movq	-312(%rbp), %rax	# net, tmp433
	movq	568(%rax), %rcx	# net_9(D)->arcs, D.4899
	movq	-272(%rbp), %rdx	# i, tmp434
	movq	%rdx, %rax	# tmp434, tmp435
	addq	%rax, %rax	# tmp435
	addq	%rdx, %rax	# tmp434, tmp435
	salq	$6, %rax	#, tmp436
	subq	$64, %rax	#, D.4900
	leaq	(%rcx,%rax), %rdx	#, D.4899
	.loc 1 202 0 discriminator 2
	movq	-312(%rbp), %rax	# net, tmp437
	movq	528(%rax), %rax	# net_9(D)->bigM, D.4893
	movl	$10000000, %ecx	#, tmp438
	cmpq	$10000000, %rax	#, D.4893
	cmovge	%rax, %rcx	# D.4893,, D.4893
	movl	$0, %eax	#, tmp439
	subq	%rcx, %rax	# D.4893, tmp439
	addq	%rax, %rax	# tmp440
	.loc 1 201 0 discriminator 2
	movq	%rax, 56(%rdx)	# D.4893, _204->org_cost
	.loc 1 197 0 discriminator 2
	addq	$1, -272(%rbp)	#, i
.L20:
	.loc 1 197 0 is_stmt 0 discriminator 1
	movq	-312(%rbp), %rax	# net, tmp441
	movq	408(%rax), %rax	# net_9(D)->n_trips, D.4893
	cmpq	-272(%rbp), %rax	# i, D.4893
	jge	.L21	#,
	.loc 1 206 0 is_stmt 1
	movl	$0, %eax	#, D.4893
.L22:
	.loc 1 207 0
	movq	-24(%rbp), %rbx	# D.4903, tmp444
	xorq	%fs:40, %rbx	#, tmp444
	je	.L23	#,
	call	__stack_chk_fail	#
.L23:
	addq	$312, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	read_min, .-read_min
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "defines.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x68c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF109
	.byte	0x1
	.long	.LASF110
	.long	.LASF111
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
	.long	.LASF112
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x44
	.long	0x69
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x45
	.long	0x69
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x63
	.long	0x2cf
	.uleb128 0x7
	.long	.LASF54
	.byte	0x68
	.byte	0x6
	.byte	0x6b
	.long	0x384
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x6d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x6e
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x6f
	.long	0x384
	.byte	0x10
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x70
	.long	0x384
	.byte	0x18
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x71
	.long	0x384
	.byte	0x20
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x72
	.long	0x384
	.byte	0x28
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x73
	.long	0x40d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x74
	.long	0x40d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x74
	.long	0x40d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x75
	.long	0x40d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x76
	.long	0x2ae
	.byte	0x50
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x77
	.long	0x69
	.byte	0x58
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x78
	.long	0x62
	.byte	0x60
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x79
	.long	0x62
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0x6
	.byte	0x64
	.long	0x38f
	.uleb128 0x6
	.byte	0x8
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF70
	.byte	0x6
	.byte	0x66
	.long	0x3a0
	.uleb128 0xd
	.string	"arc"
	.byte	0x40
	.byte	0x6
	.byte	0x7e
	.long	0x40d
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x81
	.long	0x384
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x81
	.long	0x384
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x82
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x83
	.long	0x40d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF76
	.byte	0x6
	.byte	0x83
	.long	0x40d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x84
	.long	0x2ae
	.byte	0x30
	.uleb128 0x8
	.long	.LASF77
	.byte	0x6
	.byte	0x85
	.long	0x2b9
	.byte	0x38
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.byte	0x67
	.long	0x418
	.uleb128 0x6
	.byte	0x8
	.long	0x3a0
	.uleb128 0xe
	.long	.LASF79
	.value	0x270
	.byte	0x6
	.byte	0x8a
	.long	0x5ac
	.uleb128 0x8
	.long	.LASF80
	.byte	0x6
	.byte	0x8c
	.long	0x5ac
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x6
	.byte	0x8d
	.long	0x5ac
	.byte	0xc8
	.uleb128 0xf
	.string	"n"
	.byte	0x6
	.byte	0x8e
	.long	0x69
	.value	0x190
	.uleb128 0x10
	.long	.LASF82
	.byte	0x6
	.byte	0x8e
	.long	0x69
	.value	0x198
	.uleb128 0x10
	.long	.LASF83
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1a0
	.uleb128 0xf
	.string	"m"
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF84
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x6
	.byte	0x8f
	.long	0x69
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF86
	.byte	0x6
	.byte	0x90
	.long	0x69
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF87
	.byte	0x6
	.byte	0x90
	.long	0x69
	.value	0x1c8
	.uleb128 0x10
	.long	.LASF88
	.byte	0x6
	.byte	0x92
	.long	0x69
	.value	0x1d0
	.uleb128 0x10
	.long	.LASF89
	.byte	0x6
	.byte	0x93
	.long	0x69
	.value	0x1d8
	.uleb128 0x10
	.long	.LASF90
	.byte	0x6
	.byte	0x94
	.long	0x69
	.value	0x1e0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x6
	.byte	0x95
	.long	0x69
	.value	0x1e8
	.uleb128 0xf
	.string	"eps"
	.byte	0x6
	.byte	0x96
	.long	0x69
	.value	0x1f0
	.uleb128 0x10
	.long	.LASF92
	.byte	0x6
	.byte	0x97
	.long	0x69
	.value	0x1f8
	.uleb128 0x10
	.long	.LASF93
	.byte	0x6
	.byte	0x98
	.long	0x69
	.value	0x200
	.uleb128 0x10
	.long	.LASF94
	.byte	0x6
	.byte	0x99
	.long	0x69
	.value	0x208
	.uleb128 0x10
	.long	.LASF95
	.byte	0x6
	.byte	0x9a
	.long	0x69
	.value	0x210
	.uleb128 0x10
	.long	.LASF96
	.byte	0x6
	.byte	0x9b
	.long	0x299
	.value	0x218
	.uleb128 0x10
	.long	.LASF97
	.byte	0x6
	.byte	0x9c
	.long	0x2b9
	.value	0x220
	.uleb128 0x10
	.long	.LASF98
	.byte	0x6
	.byte	0x9d
	.long	0x384
	.value	0x228
	.uleb128 0x10
	.long	.LASF99
	.byte	0x6
	.byte	0x9d
	.long	0x384
	.value	0x230
	.uleb128 0x10
	.long	.LASF100
	.byte	0x6
	.byte	0x9e
	.long	0x40d
	.value	0x238
	.uleb128 0x10
	.long	.LASF101
	.byte	0x6
	.byte	0x9e
	.long	0x40d
	.value	0x240
	.uleb128 0x10
	.long	.LASF102
	.byte	0x6
	.byte	0x9f
	.long	0x40d
	.value	0x248
	.uleb128 0x10
	.long	.LASF103
	.byte	0x6
	.byte	0x9f
	.long	0x40d
	.value	0x250
	.uleb128 0x10
	.long	.LASF104
	.byte	0x6
	.byte	0xa0
	.long	0x69
	.value	0x258
	.uleb128 0x10
	.long	.LASF105
	.byte	0x6
	.byte	0xa1
	.long	0x69
	.value	0x260
	.uleb128 0x10
	.long	.LASF106
	.byte	0x6
	.byte	0xa2
	.long	0x69
	.value	0x268
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x5bc
	.uleb128 0xc
	.long	0x86
	.byte	0xc7
	.byte	0
	.uleb128 0x2
	.long	.LASF107
	.byte	0x6
	.byte	0xa3
	.long	0x41e
	.uleb128 0x11
	.long	.LASF113
	.byte	0x1
	.byte	0x1d
	.long	0x69
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x667
	.uleb128 0x12
	.string	"net"
	.byte	0x1
	.byte	0x1d
	.long	0x667
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x13
	.string	"in"
	.byte	0x1
	.byte	0x23
	.long	0x66d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x14
	.long	.LASF108
	.byte	0x1
	.byte	0x24
	.long	0x673
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x13
	.string	"t"
	.byte	0x1
	.byte	0x25
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x13
	.string	"h"
	.byte	0x1
	.byte	0x25
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0x25
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x26
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x13
	.string	"arc"
	.byte	0x1
	.byte	0x27
	.long	0x683
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x14
	.long	.LASF54
	.byte	0x1
	.byte	0x28
	.long	0x689
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bc
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x683
	.uleb128 0xc
	.long	0x86
	.byte	0xc8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x395
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
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
	.uleb128 0xe
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
	.uleb128 0x14
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
.LASF81:
	.string	"clustfile"
.LASF102:
	.string	"dummy_arcs"
.LASF89:
	.string	"dual_unbounded"
.LASF99:
	.string	"stop_nodes"
.LASF113:
	.string	"read_min"
.LASF16:
	.string	"_IO_read_base"
.LASF95:
	.string	"bigM"
.LASF42:
	.string	"_IO_FILE"
.LASF60:
	.string	"sibling_prev"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF57:
	.string	"child"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF76:
	.string	"nextin"
.LASF61:
	.string	"basic_arc"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF59:
	.string	"sibling"
.LASF28:
	.string	"_flags2"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"double"
.LASF86:
	.string	"max_residual_new_m"
.LASF103:
	.string	"stop_dummy"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF73:
	.string	"head"
.LASF98:
	.string	"nodes"
.LASF106:
	.string	"checksum"
.LASF110:
	.string	"readmin.c"
.LASF52:
	.string	"cost_t"
.LASF41:
	.string	"_unused2"
.LASF47:
	.string	"float"
.LASF83:
	.string	"max_m"
.LASF64:
	.string	"arc_tmp"
.LASF49:
	.string	"long long int"
.LASF87:
	.string	"max_new_m"
.LASF85:
	.string	"m_impl"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF97:
	.string	"ignore_impl"
.LASF105:
	.string	"bound_exchanges"
.LASF30:
	.string	"_cur_column"
.LASF92:
	.string	"opt_tol"
.LASF46:
	.string	"_pos"
.LASF54:
	.string	"node"
.LASF29:
	.string	"_old_offset"
.LASF82:
	.string	"n_trips"
.LASF1:
	.string	"unsigned char"
.LASF90:
	.string	"perturbed"
.LASF108:
	.string	"instring"
.LASF100:
	.string	"arcs"
.LASF109:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF4:
	.string	"signed char"
.LASF96:
	.string	"optcost"
.LASF50:
	.string	"long long unsigned int"
.LASF79:
	.string	"network"
.LASF111:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/429.mcf/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF53:
	.string	"node_t"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF72:
	.string	"tail"
.LASF56:
	.string	"orientation"
.LASF17:
	.string	"_IO_write_base"
.LASF68:
	.string	"time"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF69:
	.string	"node_p"
.LASF11:
	.string	"char"
.LASF71:
	.string	"cost"
.LASF93:
	.string	"feas_tol"
.LASF94:
	.string	"pert_val"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF66:
	.string	"depth"
.LASF65:
	.string	"flow"
.LASF63:
	.string	"firstin"
.LASF101:
	.string	"stop_arcs"
.LASF2:
	.string	"short unsigned int"
.LASF62:
	.string	"firstout"
.LASF0:
	.string	"long unsigned int"
.LASF77:
	.string	"org_cost"
.LASF19:
	.string	"_IO_write_end"
.LASF55:
	.string	"potential"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF91:
	.string	"feasible"
.LASF26:
	.string	"_chain"
.LASF107:
	.string	"network_t"
.LASF51:
	.string	"flow_t"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF88:
	.string	"primal_unbounded"
.LASF104:
	.string	"iterations"
.LASF80:
	.string	"inputfile"
.LASF40:
	.string	"_mode"
.LASF58:
	.string	"pred"
.LASF31:
	.string	"_vtable_offset"
.LASF84:
	.string	"m_org"
.LASF22:
	.string	"_IO_save_base"
.LASF74:
	.string	"ident"
.LASF67:
	.string	"number"
.LASF12:
	.string	"FILE"
.LASF45:
	.string	"_sbuf"
.LASF78:
	.string	"arc_p"
.LASF70:
	.string	"arc_t"
.LASF112:
	.string	"_IO_lock_t"
.LASF75:
	.string	"nextout"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
